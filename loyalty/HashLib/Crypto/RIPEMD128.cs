﻿using System;
using System.Diagnostics;

namespace HashLib.Crypto
{
    internal class RIPEMD128 : MDBase
    {
        public RIPEMD128() 
            : base(4, 16)
        {
        }

        public override void Initialize()
        {
            m_state[0] = 0x67452301;
            m_state[1] = 0xefcdab89;
            m_state[2] = 0x98badcfe;
            m_state[3] = 0x10325476;

            base.Initialize();
        }

        protected override void TransformBlock(byte[] a_data, int a_index)
        {
            uint data0 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 0);
            uint data1 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 1);
            uint data2 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 2);
            uint data3 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 3);
            uint data4 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 4);
            uint data5 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 5);
            uint data6 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 6);
            uint data7 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 7);
            uint data8 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 8);
            uint data9 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 9);
            uint data10 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 10);
            uint data11 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 11);
            uint data12 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 12);
            uint data13 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 13);
            uint data14 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 14);
            uint data15 = Converters.ConvertBytesToUInt(a_data, a_index + 4 * 15);

            uint aa, bb, cc, dd;
            uint a = aa = m_state[0];
            uint b = bb = m_state[1];
            uint c = cc = m_state[2];
            uint d = dd = m_state[3];

            a += data0 + (b ^ c ^ d);
            a = (a << 11) | (a >> (32 - 11));
            d += data1 + (a ^ b ^ c);
            d = (d << 14) | (d >> (32 - 14));
            c += data2 + (d ^ a ^ b);
            c = (c << 15) | (c >> (32 - 15));
            b += data3 + (c ^ d ^ a);
            b = (b << 12) | (b >> (32 - 12));
            a += data4 + (b ^ c ^ d);
            a = (a << 5) | (a >> (32 - 5));
            d += data5 + (a ^ b ^ c);
            d = (d << 8) | (d >> (32 - 8));
            c += data6 + (d ^ a ^ b);
            c = (c << 7) | (c >> (32 - 7));
            b += data7 + (c ^ d ^ a);
            b = (b << 9) | (b >> (32 - 9));
            a += data8 + (b ^ c ^ d);
            a = (a << 11) | (a >> (32 - 11));
            d += data9 + (a ^ b ^ c);
            d = (d << 13) | (d >> (32 - 13));
            c += data10 + (d ^ a ^ b);
            c = (c << 14) | (c >> (32 - 14));
            b += data11 + (c ^ d ^ a);
            b = (b << 15) | (b >> (32 - 15));
            a += data12 + (b ^ c ^ d);
            a = (a << 6) | (a >> (32 - 6));
            d += data13 + (a ^ b ^ c);
            d = (d << 7) | (d >> (32 - 7));
            c += data14 + (d ^ a ^ b);
            c = (c << 9) | (c >> (32 - 9));
            b += data15 + (c ^ d ^ a);
            b = (b << 8) | (b >> (32 - 8));

            a += data7 + C2 + ((b & c) | (~b & d));
            a = (a << 7) | (a >> (32 - 7));
            d += data4 + C2 + ((a & b) | (~a & c));
            d = (d << 6) | (d >> (32 - 6));
            c += data13 + C2 + ((d & a) | (~d & b));
            c = (c << 8) | (c >> (32 - 8));
            b += data1 + C2 + ((c & d) | (~c & a));
            b = (b << 13) | (b >> (32 - 13));
            a += data10 + C2 + ((b & c) | (~b & d));
            a = (a << 11) | (a >> (32 - 11));
            d += data6 + C2 + ((a & b) | (~a & c));
            d = (d << 9) | (d >> (32 - 9));
            c += data15 + C2 + ((d & a) | (~d & b));
            c = (c << 7) | (c >> (32 - 7));
            b += data3 + C2 + ((c & d) | (~c & a));
            b = (b << 15) | (b >> (32 - 15));
            a += data12 + C2 + ((b & c) | (~b & d));
            a = (a << 7) | (a >> (32 - 7));
            d += data0 + C2 + ((a & b) | (~a & c));
            d = (d << 12) | (d >> (32 - 12));
            c += data9 + C2 + ((d & a) | (~d & b));
            c = (c << 15) | (c >> (32 - 15));
            b += data5 + C2 + ((c & d) | (~c & a));
            b = (b << 9) | (b >> (32 - 9));
            a += data2 + C2 + ((b & c) | (~b & d));
            a = (a << 11) | (a >> (32 - 11));
            d += data14 + C2 + ((a & b) | (~a & c));
            d = (d << 7) | (d >> (32 - 7));
            c += data11 + C2 + ((d & a) | (~d & b));
            c = (c << 13) | (c >> (32 - 13));
            b += data8 + C2 + ((c & d) | (~c & a));
            b = (b << 12) | (b >> (32 - 12));

            a += data3 + C4 + ((b | ~c) ^ d);
            a = (a << 11) | (a >> (32 - 11));
            d += data10 + C4 + ((a | ~b) ^ c);
            d = (d << 13) | (d >> (32 - 13));
            c += data14 + C4 + ((d | ~a) ^ b);
            c = (c << 6) | (c >> (32 - 6));
            b += data4 + C4 + ((c | ~d) ^ a);
            b = (b << 7) | (b >> (32 - 7));
            a += data9 + C4 + ((b | ~c) ^ d);
            a = (a << 14) | (a >> (32 - 14));
            d += data15 + C4 + ((a | ~b) ^ c);
            d = (d << 9) | (d >> (32 - 9));
            c += data8 + C4 + ((d | ~a) ^ b);
            c = (c << 13) | (c >> (32 - 13));
            b += data1 + C4 + ((c | ~d) ^ a);
            b = (b << 15) | (b >> (32 - 15));
            a += data2 + C4 + ((b | ~c) ^ d);
            a = (a << 14) | (a >> (32 - 14));
            d += data7 + C4 + ((a | ~b) ^ c);
            d = (d << 8) | (d >> (32 - 8));
            c += data0 + C4 + ((d | ~a) ^ b);
            c = (c << 13) | (c >> (32 - 13));
            b += data6 + C4 + ((c | ~d) ^ a);
            b = (b << 6) | (b >> (32 - 6));
            a += data13 + C4 + ((b | ~c) ^ d);
            a = (a << 5) | (a >> (32 - 5));
            d += data11 + C4 + ((a | ~b) ^ c);
            d = (d << 12) | (d >> (32 - 12));
            c += data5 + C4 + ((d | ~a) ^ b);
            c = (c << 7) | (c >> (32 - 7));
            b += data12 + C4 + ((c | ~d) ^ a);
            b = (b << 5) | (b >> (32 - 5));

            a += data1 + C6 + ((b & d) | (c & ~d));
            a = (a << 11) | (a >> (32 - 11));
            d += data9 + C6 + ((a & c) | (b & ~c));
            d  = (d  << 12) | (d >> (32 - 12));
            c += data11 + C6 + ((d & b) | (a & ~b));
            c  = (c  << 14) | (c >> (32 - 14));
            b += data10 + C6 + ((c & a) | (d & ~a));
            b  = (b  << 15) | (b >> (32 - 15));
            a += data0 + C6 + ((b & d) | (c & ~d));
            a  = (a  << 14) | (a >> (32 - 14));
            d += data8 + C6 + ((a & c) | (b & ~c));
            d  = (d  << 15) | (d >> (32 - 15));
            c += data12 + C6 + ((d & b) | (a & ~b));
            c  = (c  << 9) | (c >> (32 - 9));
            b += data4 + C6 + ((c & a) | (d & ~a));
            b  = (b  << 8) | (b >> (32 - 8));
            a += data13 + C6 + ((b & d) | (c & ~d));
            a  = (a  << 9) | (a >> (32 - 9));
            d += data3 + C6 + ((a & c) | (b & ~c));
            d  = (d  << 14) | (d >> (32 - 14));
            c += data7 + C6 + ((d & b) | (a & ~b));
            c  = (c  << 5) | (c >> (32 - 5));
            b += data15 + C6 + ((c & a) | (d & ~a));
            b  = (b  << 6) | (b >> (32 - 6));
            a += data14 + C6 + ((b & d) | (c & ~d));
            a  = (a  << 8) | (a >> (32 - 8));
            d += data5 + C6 + ((a & c) | (b & ~c));
            d  = (d  << 6) | (d >> (32 - 6));
            c += data6 + C6 + ((d & b) | (a & ~b));
            c  = (c  << 5) | (c >> (32 - 5));
            b += data2 + C6 + ((c & a) | (d & ~a));
            b  = (b  << 12) | (b >> (32 - 12));

            aa += data5 + C1 + ((bb & dd) | (cc & ~dd));
            aa = (aa << 8) | (aa >> (32 - 8));
            dd += data14 + C1 + ((aa & cc) | (bb & ~cc));
            dd = (dd << 9) | (dd >> (32 - 9));
            cc += data7 + C1 + ((dd & bb) | (aa & ~bb));
            cc = (cc << 9) | (cc >> (32 - 9));
            bb += data0 + C1 + ((cc & aa) | (dd & ~aa));
            bb = (bb << 11) | (bb >> (32 - 11));
            aa += data9 + C1 + ((bb & dd) | (cc & ~dd));
            aa  = (aa  << 13) | (aa >> (32 - 13));
            dd += data2 + C1 + ((aa & cc) | (bb & ~cc));
            dd  = (dd  << 15) | (dd >> (32 - 15));
            cc += data11 + C1 + ((dd & bb) | (aa & ~bb));
            cc  = (cc  << 15) | (cc >> (32 - 15));
            bb += data4 + C1 + ((cc & aa) | (dd & ~aa));
            bb  = (bb  << 5) | (bb >> (32 - 5));
            aa += data13 + C1 + ((bb & dd) | (cc & ~dd));
            aa  = (aa  << 7) | (aa >> (32 - 7));
            dd += data6 + C1 + ((aa & cc) | (bb & ~cc));
            dd  = (dd  << 7) | (dd >> (32 - 7));
            cc += data15 + C1 + ((dd & bb) | (aa & ~bb));
            cc  = (cc  << 8) | (cc >> (32 - 8));
            bb += data8 + C1 + ((cc & aa) | (dd & ~aa));
            bb  = (bb  << 11) | (bb >> (32 - 11));
            aa += data1 + C1 + ((bb & dd) | (cc & ~dd));
            aa  = (aa  << 14) | (aa >> (32 - 14));
            dd += data10 + C1 + ((aa & cc) | (bb & ~cc));
            dd  = (dd  << 14) | (dd >> (32 - 14));
            cc += data3 + C1 + ((dd & bb) | (aa & ~bb));
            cc  = (cc  << 12) | (cc >> (32 - 12));
            bb += data12 + C1 + ((cc & aa) | (dd & ~aa));
            bb  = (bb  << 6) | (bb >> (32 - 6));

            aa += data6 + C3 + ((bb | ~cc) ^ dd);
            aa = (aa << 9) | (aa >> (32 - 9));
            dd += data11 + C3 + ((aa | ~bb) ^ cc);
            dd = (dd << 13) | (dd >> (32 - 13));
            cc += data3 + C3 + ((dd | ~aa) ^ bb);
            cc = (cc << 15) | (cc >> (32 - 15));
            bb += data7 + C3 + ((cc | ~dd) ^ aa);
            bb = (bb << 7) | (bb >> (32 - 7));
            aa += data0 + C3 + ((bb | ~cc) ^ dd);
            aa = (aa << 12) | (aa >> (32 - 12));
            dd += data13 + C3 + ((aa | ~bb) ^ cc);
            dd = (dd << 8) | (dd >> (32 - 8));
            cc += data5 + C3 + ((dd | ~aa) ^ bb);
            cc = (cc << 9) | (cc >> (32 - 9));
            bb += data10 + C3 + ((cc | ~dd) ^ aa);
            bb = (bb << 11) | (bb >> (32 - 11));
            aa += data14 + C3 + ((bb | ~cc) ^ dd);
            aa = (aa << 7) | (aa >> (32 - 7));
            dd += data15 + C3 + ((aa | ~bb) ^ cc);
            dd = (dd << 7) | (dd >> (32 - 7));
            cc += data8 + C3 + ((dd | ~aa) ^ bb);
            cc = (cc << 12) | (cc >> (32 - 12));
            bb += data12 + C3 + ((cc | ~dd) ^ aa);
            bb = (bb << 7) | (bb >> (32 - 7));
            aa += data4 + C3 + ((bb | ~cc) ^ dd);
            aa = (aa << 6) | (aa >> (32 - 6));
            dd += data9 + C3 + ((aa | ~bb) ^ cc);
            dd = (dd << 15) | (dd >> (32 - 15));
            cc += data1 + C3 + ((dd | ~aa) ^ bb);
            cc = (cc << 13) | (cc >> (32 - 13));
            bb += data2 + C3 + ((cc | ~dd) ^ aa);
            bb = (bb << 11) | (bb >> (32 - 11));

            aa += data15 + C5 + ((bb & cc) | (~bb & dd));
            aa = (aa << 9) | (aa >> (32 - 9));
            dd += data5 + C5 + ((aa & bb) | (~aa & cc));
            dd = (dd << 7) | (dd >> (32 - 7));
            cc += data1 + C5 + ((dd & aa) | (~dd & bb));
            cc = (cc << 15) | (cc >> (32 - 15));
            bb += data3 + C5 + ((cc & dd) | (~cc & aa));
            bb = (bb << 11) | (bb >> (32 - 11));
            aa += data7 + C5 + ((bb & cc) | (~bb & dd));
            aa = (aa << 8) | (aa >> (32 - 8));
            dd += data14 + C5 + ((aa & bb) | (~aa & cc));
            dd = (dd << 6) | (dd >> (32 - 6));
            cc += data6 + C5 + ((dd & aa) | (~dd & bb));
            cc = (cc << 6) | (cc >> (32 - 6));
            bb += data9 + C5 + ((cc & dd) | (~cc & aa));
            bb = (bb << 14) | (bb >> (32 - 14));
            aa += data11 + C5 + ((bb & cc) | (~bb & dd));
            aa = (aa << 12) | (aa >> (32 - 12));
            dd += data8 + C5 + ((aa & bb) | (~aa & cc));
            dd = (dd << 13) | (dd >> (32 - 13));
            cc += data12 + C5 + ((dd & aa) | (~dd & bb));
            cc = (cc << 5) | (cc >> (32 - 5));
            bb += data2 + C5 + ((cc & dd) | (~cc & aa));
            bb = (bb << 14) | (bb >> (32 - 14));
            aa += data10 + C5 + ((bb & cc) | (~bb & dd));
            aa = (aa << 13) | (aa >> (32 - 13));
            dd += data0 + C5 + ((aa & bb) | (~aa & cc));
            dd = (dd << 13) | (dd >> (32 - 13));
            cc += data4 + C5 + ((dd & aa) | (~dd & bb));
            cc = (cc << 7) | (cc >> (32 - 7));
            bb += data13 + C5 + ((cc & dd) | (~cc & aa));
            bb = (bb << 5) | (bb >> (32 - 5));

            aa += data8 + (bb ^ cc ^ dd);
            aa = (aa << 15) | (aa >> (32 - 15));
            dd += data6 + (aa ^ bb ^ cc);
            dd = (dd << 5) | (dd >> (32 - 5));
            cc += data4 + (dd ^ aa ^ bb);
            cc = (cc << 8) | (cc >> (32 - 8));
            bb += data1 + (cc ^ dd ^ aa);
            bb = (bb << 11) | (bb >> (32 - 11));
            aa += data3 + (bb ^ cc ^ dd);
            aa = (aa << 14) | (aa >> (32 - 14));
            dd += data11 + (aa ^ bb ^ cc);
            dd = (dd << 14) | (dd >> (32 - 14));
            cc += data15 + (dd ^ aa ^ bb);
            cc = (cc << 6) | (cc >> (32 - 6));
            bb += data0 + (cc ^ dd ^ aa);
            bb = (bb << 14) | (bb >> (32 - 14));
            aa += data5 + (bb ^ cc ^ dd);
            aa = (aa << 6) | (aa >> (32 - 6));
            dd += data12 + (aa ^ bb ^ cc);
            dd = (dd << 9) | (dd >> (32 - 9));
            cc += data2 + (dd ^ aa ^ bb);
            cc = (cc << 12) | (cc >> (32 - 12));
            bb += data13 + (cc ^ dd ^ aa);
            bb = (bb << 9) | (bb >> (32 - 9));
            aa += data9 + (bb ^ cc ^ dd);
            aa = (aa << 12) | (aa >> (32 - 12));
            dd += data7 + (aa ^ bb ^ cc);
            dd = (dd << 5) | (dd >> (32 - 5));
            cc += data10 + (dd ^ aa ^ bb);
            cc = (cc << 15) | (cc >> (32 - 15));
            bb += data14 + (cc ^ dd ^ aa);
            bb = (bb << 8) | (bb >> (32 - 8));

            dd += c + m_state[1];
            m_state[1] = m_state[2] + d + aa;
            m_state[2] = m_state[3] + a + bb;
            m_state[3] = m_state[0] + b + cc;
            m_state[0] = dd;
        }
    }
}
