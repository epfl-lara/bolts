; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!142032 () Bool)

(assert start!142032)

(declare-fun b!1524884 () Bool)

(declare-fun b_free!39487 () Bool)

(declare-fun b_next!40191 () Bool)

(assert (=> b!1524884 (= b_free!39487 (not b_next!40191))))

(declare-fun tp!437795 () Bool)

(declare-fun b_and!105927 () Bool)

(assert (=> b!1524884 (= tp!437795 b_and!105927)))

(declare-fun b!1524909 () Bool)

(declare-fun b_free!39489 () Bool)

(declare-fun b_next!40193 () Bool)

(assert (=> b!1524909 (= b_free!39489 (not b_next!40193))))

(declare-fun tp!437770 () Bool)

(declare-fun b_and!105929 () Bool)

(assert (=> b!1524909 (= tp!437770 b_and!105929)))

(declare-fun b!1524898 () Bool)

(declare-fun b_free!39491 () Bool)

(declare-fun b_next!40195 () Bool)

(assert (=> b!1524898 (= b_free!39491 (not b_next!40195))))

(declare-fun tp!437780 () Bool)

(declare-fun b_and!105931 () Bool)

(assert (=> b!1524898 (= tp!437780 b_and!105931)))

(declare-fun b!1524912 () Bool)

(declare-fun b_free!39493 () Bool)

(declare-fun b_next!40197 () Bool)

(assert (=> b!1524912 (= b_free!39493 (not b_next!40197))))

(declare-fun tp!437771 () Bool)

(declare-fun b_and!105933 () Bool)

(assert (=> b!1524912 (= tp!437771 b_and!105933)))

(declare-fun b!1524882 () Bool)

(declare-fun b_free!39495 () Bool)

(declare-fun b_next!40199 () Bool)

(assert (=> b!1524882 (= b_free!39495 (not b_next!40199))))

(declare-fun tp!437777 () Bool)

(declare-fun b_and!105935 () Bool)

(assert (=> b!1524882 (= tp!437777 b_and!105935)))

(declare-fun b_free!39497 () Bool)

(declare-fun b_next!40201 () Bool)

(assert (=> b!1524882 (= b_free!39497 (not b_next!40201))))

(declare-fun tp!437791 () Bool)

(declare-fun b_and!105937 () Bool)

(assert (=> b!1524882 (= tp!437791 b_and!105937)))

(declare-fun b!1524878 () Bool)

(declare-fun b_free!39499 () Bool)

(declare-fun b_next!40203 () Bool)

(assert (=> b!1524878 (= b_free!39499 (not b_next!40203))))

(declare-fun tp!437776 () Bool)

(declare-fun b_and!105939 () Bool)

(assert (=> b!1524878 (= tp!437776 b_and!105939)))

(declare-fun b!1524902 () Bool)

(declare-fun b_free!39501 () Bool)

(declare-fun b_next!40205 () Bool)

(assert (=> b!1524902 (= b_free!39501 (not b_next!40205))))

(declare-fun tp!437790 () Bool)

(declare-fun b_and!105941 () Bool)

(assert (=> b!1524902 (= tp!437790 b_and!105941)))

(declare-fun b!1524877 () Bool)

(declare-fun res!684863 () Bool)

(declare-fun e!975003 () Bool)

(assert (=> b!1524877 (=> res!684863 e!975003)))

(declare-datatypes ((C!8516 0))(
  ( (C!8517 (val!4830 Int)) )
))
(declare-datatypes ((List!16218 0))(
  ( (Nil!16150) (Cons!16150 (h!21551 C!8516) (t!139960 List!16218)) )
))
(declare-fun lt!529885 () List!16218)

(declare-fun isEmpty!9967 (List!16218) Bool)

(assert (=> b!1524877 (= res!684863 (isEmpty!9967 lt!529885))))

(declare-datatypes ((Regex!4169 0))(
  ( (ElementMatch!4169 (c!249942 C!8516)) (Concat!7111 (regOne!8850 Regex!4169) (regTwo!8850 Regex!4169)) (EmptyExpr!4169) (Star!4169 (reg!4498 Regex!4169)) (EmptyLang!4169) (Union!4169 (regOne!8851 Regex!4169) (regTwo!8851 Regex!4169)) )
))
(declare-datatypes ((List!16219 0))(
  ( (Nil!16151) (Cons!16151 (h!21552 Regex!4169) (t!139961 List!16219)) )
))
(declare-datatypes ((Context!1374 0))(
  ( (Context!1375 (exprs!1187 List!16219)) )
))
(declare-datatypes ((tuple2!15080 0))(
  ( (tuple2!15081 (_1!8587 Context!1374) (_2!8587 C!8516)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15082 0))(
  ( (tuple2!15083 (_1!8588 tuple2!15080) (_2!8588 (InoxSet Context!1374))) )
))
(declare-datatypes ((List!16220 0))(
  ( (Nil!16152) (Cons!16152 (h!21553 tuple2!15082) (t!139962 List!16220)) )
))
(declare-datatypes ((array!5274 0))(
  ( (array!5275 (arr!2348 (Array (_ BitVec 32) (_ BitVec 64))) (size!13064 (_ BitVec 32))) )
))
(declare-datatypes ((array!5276 0))(
  ( (array!5277 (arr!2349 (Array (_ BitVec 32) List!16220)) (size!13065 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3008 0))(
  ( (LongMapFixedSize!3009 (defaultEntry!1864 Int) (mask!4677 (_ BitVec 32)) (extraKeys!1751 (_ BitVec 32)) (zeroValue!1761 List!16220) (minValue!1761 List!16220) (_size!3089 (_ BitVec 32)) (_keys!1798 array!5274) (_values!1783 array!5276) (_vacant!1565 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1448 0))(
  ( (HashableExt!1447 (__x!10129 Int)) )
))
(declare-datatypes ((Cell!5901 0))(
  ( (Cell!5902 (v!22964 LongMapFixedSize!3008)) )
))
(declare-datatypes ((MutLongMap!1504 0))(
  ( (LongMap!1504 (underlying!3217 Cell!5901)) (MutLongMapExt!1503 (__x!10130 Int)) )
))
(declare-datatypes ((Cell!5903 0))(
  ( (Cell!5904 (v!22965 MutLongMap!1504)) )
))
(declare-datatypes ((MutableMap!1448 0))(
  ( (MutableMapExt!1447 (__x!10131 Int)) (HashMap!1448 (underlying!3218 Cell!5903) (hashF!3367 Hashable!1448) (_size!3090 (_ BitVec 32)) (defaultValue!1608 Int)) )
))
(declare-datatypes ((CacheUp!866 0))(
  ( (CacheUp!867 (cache!1829 MutableMap!1448)) )
))
(declare-fun cacheUp!616 () CacheUp!866)

(declare-fun e!974988 () Bool)

(declare-fun e!975012 () Bool)

(declare-fun tp!437767 () Bool)

(declare-fun tp!437778 () Bool)

(declare-fun array_inv!1698 (array!5274) Bool)

(declare-fun array_inv!1699 (array!5276) Bool)

(assert (=> b!1524878 (= e!975012 (and tp!437776 tp!437767 tp!437778 (array_inv!1698 (_keys!1798 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616))))))) (array_inv!1699 (_values!1783 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616))))))) e!974988))))

(declare-fun b!1524879 () Bool)

(declare-fun res!684868 () Bool)

(declare-fun e!975018 () Bool)

(assert (=> b!1524879 (=> (not res!684868) (not e!975018))))

(declare-datatypes ((tuple3!1394 0))(
  ( (tuple3!1395 (_1!8589 (InoxSet Context!1374)) (_2!8589 Int) (_3!1047 Int)) )
))
(declare-datatypes ((tuple2!15084 0))(
  ( (tuple2!15085 (_1!8590 tuple3!1394) (_2!8590 Int)) )
))
(declare-datatypes ((List!16221 0))(
  ( (Nil!16153) (Cons!16153 (h!21554 tuple2!15084) (t!139963 List!16221)) )
))
(declare-datatypes ((array!5278 0))(
  ( (array!5279 (arr!2350 (Array (_ BitVec 32) List!16221)) (size!13066 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3010 0))(
  ( (LongMapFixedSize!3011 (defaultEntry!1865 Int) (mask!4678 (_ BitVec 32)) (extraKeys!1752 (_ BitVec 32)) (zeroValue!1762 List!16221) (minValue!1762 List!16221) (_size!3091 (_ BitVec 32)) (_keys!1799 array!5274) (_values!1784 array!5278) (_vacant!1566 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5905 0))(
  ( (Cell!5906 (v!22966 LongMapFixedSize!3010)) )
))
(declare-datatypes ((MutLongMap!1505 0))(
  ( (LongMap!1505 (underlying!3219 Cell!5905)) (MutLongMapExt!1504 (__x!10132 Int)) )
))
(declare-datatypes ((Cell!5907 0))(
  ( (Cell!5908 (v!22967 MutLongMap!1505)) )
))
(declare-datatypes ((Hashable!1449 0))(
  ( (HashableExt!1448 (__x!10133 Int)) )
))
(declare-datatypes ((MutableMap!1449 0))(
  ( (MutableMapExt!1448 (__x!10134 Int)) (HashMap!1449 (underlying!3220 Cell!5907) (hashF!3368 Hashable!1449) (_size!3092 (_ BitVec 32)) (defaultValue!1609 Int)) )
))
(declare-datatypes ((IArray!10917 0))(
  ( (IArray!10918 (innerList!5516 List!16218)) )
))
(declare-datatypes ((Conc!5456 0))(
  ( (Node!5456 (left!13393 Conc!5456) (right!13723 Conc!5456) (csize!11142 Int) (cheight!5667 Int)) (Leaf!8086 (xs!8247 IArray!10917) (csize!11143 Int)) (Empty!5456) )
))
(declare-datatypes ((BalanceConc!10854 0))(
  ( (BalanceConc!10855 (c!249943 Conc!5456)) )
))
(declare-datatypes ((CacheFurthestNullable!288 0))(
  ( (CacheFurthestNullable!289 (cache!1830 MutableMap!1449) (totalInput!2319 BalanceConc!10854)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!288)

(declare-fun valid!1215 (CacheFurthestNullable!288) Bool)

(assert (=> b!1524879 (= res!684868 (valid!1215 cacheFurthestNullable!64))))

(declare-fun b!1524880 () Bool)

(declare-fun res!684866 () Bool)

(assert (=> b!1524880 (=> res!684866 e!975003)))

(declare-datatypes ((List!16222 0))(
  ( (Nil!16154) (Cons!16154 (h!21555 (_ BitVec 16)) (t!139964 List!16222)) )
))
(declare-datatypes ((TokenValue!2942 0))(
  ( (FloatLiteralValue!5884 (text!21039 List!16222)) (TokenValueExt!2941 (__x!10135 Int)) (Broken!14710 (value!90919 List!16222)) (Object!3009) (End!2942) (Def!2942) (Underscore!2942) (Match!2942) (Else!2942) (Error!2942) (Case!2942) (If!2942) (Extends!2942) (Abstract!2942) (Class!2942) (Val!2942) (DelimiterValue!5884 (del!3002 List!16222)) (KeywordValue!2948 (value!90920 List!16222)) (CommentValue!5884 (value!90921 List!16222)) (WhitespaceValue!5884 (value!90922 List!16222)) (IndentationValue!2942 (value!90923 List!16222)) (String!18975) (Int32!2942) (Broken!14711 (value!90924 List!16222)) (Boolean!2943) (Unit!25778) (OperatorValue!2945 (op!3002 List!16222)) (IdentifierValue!5884 (value!90925 List!16222)) (IdentifierValue!5885 (value!90926 List!16222)) (WhitespaceValue!5885 (value!90927 List!16222)) (True!5884) (False!5884) (Broken!14712 (value!90928 List!16222)) (Broken!14713 (value!90929 List!16222)) (True!5885) (RightBrace!2942) (RightBracket!2942) (Colon!2942) (Null!2942) (Comma!2942) (LeftBracket!2942) (False!5885) (LeftBrace!2942) (ImaginaryLiteralValue!2942 (text!21040 List!16222)) (StringLiteralValue!8826 (value!90930 List!16222)) (EOFValue!2942 (value!90931 List!16222)) (IdentValue!2942 (value!90932 List!16222)) (DelimiterValue!5885 (value!90933 List!16222)) (DedentValue!2942 (value!90934 List!16222)) (NewLineValue!2942 (value!90935 List!16222)) (IntegerValue!8826 (value!90936 (_ BitVec 32)) (text!21041 List!16222)) (IntegerValue!8827 (value!90937 Int) (text!21042 List!16222)) (Times!2942) (Or!2942) (Equal!2942) (Minus!2942) (Broken!14714 (value!90938 List!16222)) (And!2942) (Div!2942) (LessEqual!2942) (Mod!2942) (Concat!7112) (Not!2942) (Plus!2942) (SpaceValue!2942 (value!90939 List!16222)) (IntegerValue!8828 (value!90940 Int) (text!21043 List!16222)) (StringLiteralValue!8827 (text!21044 List!16222)) (FloatLiteralValue!5885 (text!21045 List!16222)) (BytesLiteralValue!2942 (value!90941 List!16222)) (CommentValue!5885 (value!90942 List!16222)) (StringLiteralValue!8828 (value!90943 List!16222)) (ErrorTokenValue!2942 (msg!3003 List!16222)) )
))
(declare-datatypes ((String!18976 0))(
  ( (String!18977 (value!90944 String)) )
))
(declare-datatypes ((TokenValueInjection!5544 0))(
  ( (TokenValueInjection!5545 (toValue!4209 Int) (toChars!4068 Int)) )
))
(declare-datatypes ((Rule!5504 0))(
  ( (Rule!5505 (regex!2852 Regex!4169) (tag!3116 String!18976) (isSeparator!2852 Bool) (transformation!2852 TokenValueInjection!5544)) )
))
(declare-datatypes ((Token!5366 0))(
  ( (Token!5367 (value!90945 TokenValue!2942) (rule!4655 Rule!5504) (size!13067 Int) (originalCharacters!3714 List!16218)) )
))
(declare-datatypes ((List!16223 0))(
  ( (Nil!16155) (Cons!16155 (h!21556 Token!5366) (t!139965 List!16223)) )
))
(declare-fun lt!529896 () List!16223)

(declare-datatypes ((LexerInterface!2504 0))(
  ( (LexerInterfaceExt!2501 (__x!10136 Int)) (Lexer!2502) )
))
(declare-fun thiss!13241 () LexerInterface!2504)

(declare-fun lt!529904 () List!16218)

(declare-fun lt!529883 () List!16223)

(declare-fun lt!529900 () List!16218)

(declare-datatypes ((List!16224 0))(
  ( (Nil!16156) (Cons!16156 (h!21557 Rule!5504) (t!139966 List!16224)) )
))
(declare-fun rules!1640 () List!16224)

(declare-datatypes ((tuple2!15086 0))(
  ( (tuple2!15087 (_1!8591 List!16223) (_2!8591 List!16218)) )
))
(declare-fun lexList!752 (LexerInterface!2504 List!16224 List!16218) tuple2!15086)

(declare-fun ++!4381 (List!16223 List!16223) List!16223)

(assert (=> b!1524880 (= res!684866 (not (= (lexList!752 thiss!13241 rules!1640 lt!529904) (tuple2!15087 (++!4381 lt!529883 lt!529896) lt!529900))))))

(declare-fun b!1524881 () Bool)

(declare-fun e!975004 () Bool)

(declare-fun e!975010 () Bool)

(assert (=> b!1524881 (= e!975004 e!975010)))

(declare-fun e!975002 () Bool)

(assert (=> b!1524882 (= e!975002 (and tp!437777 tp!437791))))

(declare-fun b!1524883 () Bool)

(declare-fun res!684879 () Bool)

(declare-fun e!975007 () Bool)

(assert (=> b!1524883 (=> (not res!684879) (not e!975007))))

(declare-datatypes ((IArray!10919 0))(
  ( (IArray!10920 (innerList!5517 List!16223)) )
))
(declare-datatypes ((Conc!5457 0))(
  ( (Node!5457 (left!13394 Conc!5457) (right!13724 Conc!5457) (csize!11144 Int) (cheight!5668 Int)) (Leaf!8087 (xs!8248 IArray!10919) (csize!11145 Int)) (Empty!5457) )
))
(declare-datatypes ((BalanceConc!10856 0))(
  ( (BalanceConc!10857 (c!249944 Conc!5457)) )
))
(declare-datatypes ((tuple2!15088 0))(
  ( (tuple2!15089 (_1!8592 BalanceConc!10856) (_2!8592 BalanceConc!10854)) )
))
(declare-fun lt!529902 () tuple2!15088)

(declare-fun list!6378 (BalanceConc!10854) List!16218)

(assert (=> b!1524883 (= res!684879 (isEmpty!9967 (list!6378 (_2!8592 lt!529902))))))

(declare-fun e!975021 () Bool)

(declare-fun e!974984 () Bool)

(assert (=> b!1524884 (= e!975021 (and e!974984 tp!437795))))

(declare-fun b!1524885 () Bool)

(declare-fun e!975024 () Bool)

(assert (=> b!1524885 (= e!975024 e!975004)))

(declare-fun b!1524886 () Bool)

(declare-fun e!974989 () Bool)

(declare-fun input!1102 () BalanceConc!10854)

(declare-fun tp!437768 () Bool)

(declare-fun inv!21399 (Conc!5456) Bool)

(assert (=> b!1524886 (= e!974989 (and (inv!21399 (c!249943 input!1102)) tp!437768))))

(declare-fun b!1524887 () Bool)

(declare-fun res!684873 () Bool)

(declare-fun e!974995 () Bool)

(assert (=> b!1524887 (=> (not res!684873) (not e!974995))))

(declare-fun rulesInvariant!2276 (LexerInterface!2504 List!16224) Bool)

(assert (=> b!1524887 (= res!684873 (rulesInvariant!2276 thiss!13241 rules!1640))))

(declare-fun b!1524888 () Bool)

(declare-fun e!975016 () Bool)

(declare-fun e!975015 () Bool)

(declare-fun lt!529881 () MutLongMap!1504)

(get-info :version)

(assert (=> b!1524888 (= e!975016 (and e!975015 ((_ is LongMap!1504) lt!529881)))))

(assert (=> b!1524888 (= lt!529881 (v!22965 (underlying!3218 (cache!1829 cacheUp!616))))))

(declare-fun b!1524889 () Bool)

(declare-fun e!974997 () Bool)

(declare-fun e!974985 () Bool)

(declare-fun tp!437774 () Bool)

(assert (=> b!1524889 (= e!974997 (and e!974985 tp!437774))))

(declare-fun b!1524890 () Bool)

(declare-fun e!975006 () Bool)

(assert (=> b!1524890 (= e!975015 e!975006)))

(declare-fun b!1524891 () Bool)

(declare-fun e!975017 () Bool)

(declare-fun acc!392 () BalanceConc!10856)

(declare-fun tp!437783 () Bool)

(declare-fun inv!21400 (Conc!5457) Bool)

(assert (=> b!1524891 (= e!975017 (and (inv!21400 (c!249944 acc!392)) tp!437783))))

(declare-fun tp!437769 () Bool)

(declare-fun b!1524892 () Bool)

(declare-fun inv!21398 (String!18976) Bool)

(declare-fun inv!21401 (TokenValueInjection!5544) Bool)

(assert (=> b!1524892 (= e!974985 (and tp!437769 (inv!21398 (tag!3116 (h!21557 rules!1640))) (inv!21401 (transformation!2852 (h!21557 rules!1640))) e!975002))))

(declare-fun b!1524893 () Bool)

(declare-fun e!975019 () Bool)

(declare-fun e!974993 () Bool)

(assert (=> b!1524893 (= e!975019 e!974993)))

(declare-fun e!975011 () Bool)

(declare-fun b!1524894 () Bool)

(declare-fun e!975014 () Bool)

(declare-fun inv!21402 (BalanceConc!10854) Bool)

(assert (=> b!1524894 (= e!975014 (and e!975021 (inv!21402 (totalInput!2319 cacheFurthestNullable!64)) e!975011))))

(declare-fun b!1524895 () Bool)

(declare-fun lt!529906 () MutLongMap!1505)

(assert (=> b!1524895 (= e!974984 (and e!975024 ((_ is LongMap!1505) lt!529906)))))

(assert (=> b!1524895 (= lt!529906 (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64))))))

(declare-fun b!1524896 () Bool)

(declare-fun e!974987 () Bool)

(declare-fun e!974986 () Bool)

(assert (=> b!1524896 (= e!974987 e!974986)))

(declare-fun b!1524897 () Bool)

(declare-fun e!974991 () Bool)

(declare-fun e!974994 () Bool)

(declare-datatypes ((tuple3!1396 0))(
  ( (tuple3!1397 (_1!8593 Regex!4169) (_2!8593 Context!1374) (_3!1048 C!8516)) )
))
(declare-datatypes ((tuple2!15090 0))(
  ( (tuple2!15091 (_1!8594 tuple3!1396) (_2!8594 (InoxSet Context!1374))) )
))
(declare-datatypes ((List!16225 0))(
  ( (Nil!16157) (Cons!16157 (h!21558 tuple2!15090) (t!139967 List!16225)) )
))
(declare-datatypes ((array!5280 0))(
  ( (array!5281 (arr!2351 (Array (_ BitVec 32) List!16225)) (size!13068 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3012 0))(
  ( (LongMapFixedSize!3013 (defaultEntry!1866 Int) (mask!4679 (_ BitVec 32)) (extraKeys!1753 (_ BitVec 32)) (zeroValue!1763 List!16225) (minValue!1763 List!16225) (_size!3093 (_ BitVec 32)) (_keys!1800 array!5274) (_values!1785 array!5280) (_vacant!1567 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5909 0))(
  ( (Cell!5910 (v!22968 LongMapFixedSize!3012)) )
))
(declare-datatypes ((MutLongMap!1506 0))(
  ( (LongMap!1506 (underlying!3221 Cell!5909)) (MutLongMapExt!1505 (__x!10137 Int)) )
))
(declare-fun lt!529892 () MutLongMap!1506)

(assert (=> b!1524897 (= e!974991 (and e!974994 ((_ is LongMap!1506) lt!529892)))))

(declare-datatypes ((Cell!5911 0))(
  ( (Cell!5912 (v!22969 MutLongMap!1506)) )
))
(declare-datatypes ((Hashable!1450 0))(
  ( (HashableExt!1449 (__x!10138 Int)) )
))
(declare-datatypes ((MutableMap!1450 0))(
  ( (MutableMapExt!1449 (__x!10139 Int)) (HashMap!1450 (underlying!3222 Cell!5911) (hashF!3369 Hashable!1450) (_size!3094 (_ BitVec 32)) (defaultValue!1610 Int)) )
))
(declare-datatypes ((CacheDown!870 0))(
  ( (CacheDown!871 (cache!1831 MutableMap!1450)) )
))
(declare-fun cacheDown!629 () CacheDown!870)

(assert (=> b!1524897 (= lt!529892 (v!22969 (underlying!3222 (cache!1831 cacheDown!629))))))

(declare-fun e!975001 () Bool)

(declare-fun tp!437796 () Bool)

(declare-fun tp!437792 () Bool)

(declare-fun array_inv!1700 (array!5278) Bool)

(assert (=> b!1524898 (= e!975010 (and tp!437780 tp!437796 tp!437792 (array_inv!1698 (_keys!1799 (v!22966 (underlying!3219 (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64))))))) (array_inv!1700 (_values!1784 (v!22966 (underlying!3219 (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64))))))) e!975001))))

(declare-fun mapNonEmpty!7146 () Bool)

(declare-fun mapRes!7148 () Bool)

(declare-fun tp!437787 () Bool)

(declare-fun tp!437793 () Bool)

(assert (=> mapNonEmpty!7146 (= mapRes!7148 (and tp!437787 tp!437793))))

(declare-fun mapValue!7148 () List!16220)

(declare-fun mapRest!7146 () (Array (_ BitVec 32) List!16220))

(declare-fun mapKey!7148 () (_ BitVec 32))

(assert (=> mapNonEmpty!7146 (= (arr!2349 (_values!1783 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616))))))) (store mapRest!7146 mapKey!7148 mapValue!7148))))

(declare-fun b!1524899 () Bool)

(assert (=> b!1524899 (= e!975006 e!975012)))

(declare-fun b!1524900 () Bool)

(declare-fun res!684878 () Bool)

(assert (=> b!1524900 (=> (not res!684878) (not e!975018))))

(declare-fun valid!1216 (CacheUp!866) Bool)

(assert (=> b!1524900 (= res!684878 (valid!1216 cacheUp!616))))

(declare-fun b!1524901 () Bool)

(declare-fun e!975008 () tuple2!15088)

(declare-fun lt!529894 () tuple2!15088)

(declare-datatypes ((tuple2!15092 0))(
  ( (tuple2!15093 (_1!8595 Token!5366) (_2!8595 BalanceConc!10854)) )
))
(declare-datatypes ((Option!2941 0))(
  ( (None!2940) (Some!2940 (v!22970 tuple2!15092)) )
))
(declare-fun lt!529905 () Option!2941)

(declare-fun prepend!476 (BalanceConc!10856 Token!5366) BalanceConc!10856)

(assert (=> b!1524901 (= e!975008 (tuple2!15089 (prepend!476 (_1!8592 lt!529894) (_1!8595 (v!22970 lt!529905))) (_2!8592 lt!529894)))))

(declare-fun lexRec!338 (LexerInterface!2504 List!16224 BalanceConc!10854) tuple2!15088)

(assert (=> b!1524901 (= lt!529894 (lexRec!338 thiss!13241 rules!1640 (_2!8595 (v!22970 lt!529905))))))

(declare-fun e!975020 () Bool)

(declare-fun tp!437786 () Bool)

(declare-fun e!974990 () Bool)

(declare-fun tp!437784 () Bool)

(declare-fun array_inv!1701 (array!5280) Bool)

(assert (=> b!1524902 (= e!975020 (and tp!437790 tp!437784 tp!437786 (array_inv!1698 (_keys!1800 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629))))))) (array_inv!1701 (_values!1785 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629))))))) e!974990))))

(declare-fun mapNonEmpty!7147 () Bool)

(declare-fun mapRes!7147 () Bool)

(declare-fun tp!437785 () Bool)

(declare-fun tp!437781 () Bool)

(assert (=> mapNonEmpty!7147 (= mapRes!7147 (and tp!437785 tp!437781))))

(declare-fun mapRest!7147 () (Array (_ BitVec 32) List!16225))

(declare-fun mapValue!7146 () List!16225)

(declare-fun mapKey!7147 () (_ BitVec 32))

(assert (=> mapNonEmpty!7147 (= (arr!2351 (_values!1785 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629))))))) (store mapRest!7147 mapKey!7147 mapValue!7146))))

(declare-fun b!1524903 () Bool)

(declare-fun lt!529893 () List!16218)

(assert (=> b!1524903 (= e!975003 (= (lexList!752 thiss!13241 rules!1640 lt!529893) (tuple2!15087 lt!529896 lt!529900)))))

(declare-fun b!1524904 () Bool)

(declare-fun tp!437775 () Bool)

(assert (=> b!1524904 (= e!974990 (and tp!437775 mapRes!7147))))

(declare-fun condMapEmpty!7146 () Bool)

(declare-fun mapDefault!7146 () List!16225)

(assert (=> b!1524904 (= condMapEmpty!7146 (= (arr!2351 (_values!1785 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!16225)) mapDefault!7146)))))

(declare-fun b!1524905 () Bool)

(declare-fun res!684871 () Bool)

(assert (=> b!1524905 (=> (not res!684871) (not e!975018))))

(declare-fun valid!1217 (CacheDown!870) Bool)

(assert (=> b!1524905 (= res!684871 (valid!1217 cacheDown!629))))

(declare-fun b!1524906 () Bool)

(declare-fun tp!437773 () Bool)

(assert (=> b!1524906 (= e!974988 (and tp!437773 mapRes!7148))))

(declare-fun condMapEmpty!7148 () Bool)

(declare-fun mapDefault!7147 () List!16220)

(assert (=> b!1524906 (= condMapEmpty!7148 (= (arr!2349 (_values!1783 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!16220)) mapDefault!7147)))))

(declare-fun b!1524907 () Bool)

(declare-fun res!684872 () Bool)

(assert (=> b!1524907 (=> (not res!684872) (not e!975018))))

(declare-fun lt!529887 () tuple2!15088)

(declare-fun lt!529886 () tuple2!15088)

(assert (=> b!1524907 (= res!684872 (= (list!6378 (_2!8592 lt!529887)) (list!6378 (_2!8592 lt!529886))))))

(declare-fun b!1524908 () Bool)

(assert (=> b!1524908 (= e!975007 e!975018)))

(declare-fun res!684874 () Bool)

(assert (=> b!1524908 (=> (not res!684874) (not e!975018))))

(declare-fun list!6379 (BalanceConc!10856) List!16223)

(declare-fun ++!4382 (BalanceConc!10856 BalanceConc!10856) BalanceConc!10856)

(assert (=> b!1524908 (= res!684874 (= (list!6379 (_1!8592 lt!529887)) (list!6379 (++!4382 acc!392 (_1!8592 lt!529886)))))))

(assert (=> b!1524908 (= lt!529886 (lexRec!338 thiss!13241 rules!1640 input!1102))))

(declare-fun totalInput!458 () BalanceConc!10854)

(assert (=> b!1524908 (= lt!529887 (lexRec!338 thiss!13241 rules!1640 totalInput!458))))

(assert (=> b!1524909 (= e!974993 (and e!975016 tp!437770))))

(declare-fun mapIsEmpty!7146 () Bool)

(assert (=> mapIsEmpty!7146 mapRes!7148))

(declare-fun b!1524910 () Bool)

(declare-fun tp!437788 () Bool)

(declare-fun mapRes!7146 () Bool)

(assert (=> b!1524910 (= e!975001 (and tp!437788 mapRes!7146))))

(declare-fun condMapEmpty!7147 () Bool)

(declare-fun mapDefault!7148 () List!16221)

(assert (=> b!1524910 (= condMapEmpty!7147 (= (arr!2350 (_values!1784 (v!22966 (underlying!3219 (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!16221)) mapDefault!7148)))))

(declare-fun b!1524911 () Bool)

(declare-fun res!684877 () Bool)

(assert (=> b!1524911 (=> (not res!684877) (not e!974995))))

(declare-fun isEmpty!9968 (List!16224) Bool)

(assert (=> b!1524911 (= res!684877 (not (isEmpty!9968 rules!1640)))))

(assert (=> b!1524912 (= e!974986 (and e!974991 tp!437771))))

(declare-fun res!684875 () Bool)

(assert (=> start!142032 (=> (not res!684875) (not e!974995))))

(assert (=> start!142032 (= res!684875 ((_ is Lexer!2502) thiss!13241))))

(assert (=> start!142032 e!974995))

(declare-fun inv!21403 (BalanceConc!10856) Bool)

(assert (=> start!142032 (and (inv!21403 acc!392) e!975017)))

(declare-fun inv!21404 (CacheUp!866) Bool)

(assert (=> start!142032 (and (inv!21404 cacheUp!616) e!975019)))

(declare-fun inv!21405 (CacheDown!870) Bool)

(assert (=> start!142032 (and (inv!21405 cacheDown!629) e!974987)))

(assert (=> start!142032 (and (inv!21402 input!1102) e!974989)))

(declare-fun treated!70 () BalanceConc!10854)

(declare-fun e!975005 () Bool)

(assert (=> start!142032 (and (inv!21402 treated!70) e!975005)))

(assert (=> start!142032 true))

(assert (=> start!142032 e!974997))

(declare-fun inv!21406 (CacheFurthestNullable!288) Bool)

(assert (=> start!142032 (and (inv!21406 cacheFurthestNullable!64) e!975014)))

(declare-fun e!975000 () Bool)

(assert (=> start!142032 (and (inv!21402 totalInput!458) e!975000)))

(declare-fun b!1524913 () Bool)

(declare-fun e!974992 () Bool)

(assert (=> b!1524913 (= e!975018 (not e!974992))))

(declare-fun res!684867 () Bool)

(assert (=> b!1524913 (=> res!684867 e!974992)))

(declare-fun lt!529889 () List!16218)

(declare-fun lt!529888 () List!16218)

(declare-fun isSuffix!307 (List!16218 List!16218) Bool)

(assert (=> b!1524913 (= res!684867 (not (isSuffix!307 lt!529889 lt!529888)))))

(declare-fun lt!529907 () List!16218)

(assert (=> b!1524913 (isSuffix!307 lt!529889 lt!529907)))

(declare-datatypes ((Unit!25779 0))(
  ( (Unit!25780) )
))
(declare-fun lt!529884 () Unit!25779)

(declare-fun lt!529898 () List!16218)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!285 (List!16218 List!16218) Unit!25779)

(assert (=> b!1524913 (= lt!529884 (lemmaConcatTwoListThenFSndIsSuffix!285 lt!529898 lt!529889))))

(declare-fun mapIsEmpty!7147 () Bool)

(assert (=> mapIsEmpty!7147 mapRes!7146))

(declare-fun mapNonEmpty!7148 () Bool)

(declare-fun tp!437779 () Bool)

(declare-fun tp!437772 () Bool)

(assert (=> mapNonEmpty!7148 (= mapRes!7146 (and tp!437779 tp!437772))))

(declare-fun mapKey!7146 () (_ BitVec 32))

(declare-fun mapRest!7148 () (Array (_ BitVec 32) List!16221))

(declare-fun mapValue!7147 () List!16221)

(assert (=> mapNonEmpty!7148 (= (arr!2350 (_values!1784 (v!22966 (underlying!3219 (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64))))))) (store mapRest!7148 mapKey!7146 mapValue!7147))))

(declare-fun b!1524914 () Bool)

(declare-fun tp!437782 () Bool)

(assert (=> b!1524914 (= e!975011 (and (inv!21399 (c!249943 (totalInput!2319 cacheFurthestNullable!64))) tp!437782))))

(declare-fun b!1524915 () Bool)

(declare-fun e!975013 () Bool)

(assert (=> b!1524915 (= e!974994 e!975013)))

(declare-fun b!1524916 () Bool)

(assert (=> b!1524916 (= e!975008 (tuple2!15089 (BalanceConc!10857 Empty!5457) input!1102))))

(declare-fun b!1524917 () Bool)

(declare-fun e!975023 () Bool)

(assert (=> b!1524917 (= e!975023 e!975003)))

(declare-fun res!684876 () Bool)

(assert (=> b!1524917 (=> res!684876 e!975003)))

(declare-fun isEmpty!9969 (List!16223) Bool)

(assert (=> b!1524917 (= res!684876 (isEmpty!9969 lt!529883))))

(declare-fun lt!529899 () tuple2!15088)

(assert (=> b!1524917 (= lt!529900 (list!6378 (_2!8592 lt!529899)))))

(declare-datatypes ((tuple4!700 0))(
  ( (tuple4!701 (_1!8596 Option!2941) (_2!8596 CacheUp!866) (_3!1049 CacheDown!870) (_4!350 CacheFurthestNullable!288)) )
))
(declare-fun lt!529908 () tuple4!700)

(declare-fun append!513 (BalanceConc!10856 Token!5366) BalanceConc!10856)

(assert (=> b!1524917 (= lt!529883 (list!6379 (append!513 acc!392 (_1!8595 (v!22970 (_1!8596 lt!529908))))))))

(declare-fun lt!529890 () List!16223)

(declare-fun lt!529882 () List!16223)

(assert (=> b!1524917 (= (++!4381 (++!4381 lt!529890 lt!529882) lt!529896) (++!4381 lt!529890 (++!4381 lt!529882 lt!529896)))))

(declare-fun lt!529891 () Unit!25779)

(declare-fun lemmaConcatAssociativity!955 (List!16223 List!16223 List!16223) Unit!25779)

(assert (=> b!1524917 (= lt!529891 (lemmaConcatAssociativity!955 lt!529890 lt!529882 lt!529896))))

(assert (=> b!1524917 (= lt!529896 (list!6379 (_1!8592 lt!529899)))))

(assert (=> b!1524917 (= lt!529882 (Cons!16155 (_1!8595 (v!22970 (_1!8596 lt!529908))) Nil!16155))))

(assert (=> b!1524917 (= lt!529886 e!975008)))

(declare-fun c!249941 () Bool)

(assert (=> b!1524917 (= c!249941 ((_ is Some!2940) lt!529905))))

(declare-fun maxPrefixZipperSequence!595 (LexerInterface!2504 List!16224 BalanceConc!10854) Option!2941)

(assert (=> b!1524917 (= lt!529905 (maxPrefixZipperSequence!595 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!529903 () List!16218)

(declare-fun ++!4383 (List!16218 List!16218) List!16218)

(assert (=> b!1524917 (= lt!529904 (++!4383 lt!529898 lt!529903))))

(assert (=> b!1524917 (= lt!529904 (++!4383 lt!529885 lt!529893))))

(declare-fun lt!529897 () List!16218)

(assert (=> b!1524917 (= lt!529903 (++!4383 lt!529897 lt!529893))))

(assert (=> b!1524917 (= lt!529885 (++!4383 lt!529898 lt!529897))))

(declare-fun lt!529895 () Unit!25779)

(declare-fun lemmaConcatAssociativity!956 (List!16218 List!16218 List!16218) Unit!25779)

(assert (=> b!1524917 (= lt!529895 (lemmaConcatAssociativity!956 lt!529898 lt!529897 lt!529893))))

(assert (=> b!1524917 (= lt!529893 (list!6378 (_2!8595 (v!22970 (_1!8596 lt!529908)))))))

(declare-fun charsOf!1635 (Token!5366) BalanceConc!10854)

(assert (=> b!1524917 (= lt!529897 (list!6378 (charsOf!1635 (_1!8595 (v!22970 (_1!8596 lt!529908))))))))

(assert (=> b!1524917 (= lt!529899 (lexRec!338 thiss!13241 rules!1640 (_2!8595 (v!22970 (_1!8596 lt!529908)))))))

(declare-fun b!1524918 () Bool)

(declare-fun res!684865 () Bool)

(assert (=> b!1524918 (=> (not res!684865) (not e!975018))))

(assert (=> b!1524918 (= res!684865 (= (totalInput!2319 cacheFurthestNullable!64) totalInput!458))))

(declare-fun b!1524919 () Bool)

(declare-fun tp!437789 () Bool)

(assert (=> b!1524919 (= e!975005 (and (inv!21399 (c!249943 treated!70)) tp!437789))))

(declare-fun b!1524920 () Bool)

(declare-fun e!974998 () Bool)

(assert (=> b!1524920 (= e!974995 e!974998)))

(declare-fun res!684870 () Bool)

(assert (=> b!1524920 (=> (not res!684870) (not e!974998))))

(assert (=> b!1524920 (= res!684870 (= lt!529888 lt!529907))))

(assert (=> b!1524920 (= lt!529907 (++!4383 lt!529898 lt!529889))))

(assert (=> b!1524920 (= lt!529888 (list!6378 totalInput!458))))

(assert (=> b!1524920 (= lt!529889 (list!6378 input!1102))))

(assert (=> b!1524920 (= lt!529898 (list!6378 treated!70))))

(declare-fun mapIsEmpty!7148 () Bool)

(assert (=> mapIsEmpty!7148 mapRes!7147))

(declare-fun b!1524921 () Bool)

(declare-fun tp!437794 () Bool)

(assert (=> b!1524921 (= e!975000 (and (inv!21399 (c!249943 totalInput!458)) tp!437794))))

(declare-fun b!1524922 () Bool)

(assert (=> b!1524922 (= e!974992 e!975023)))

(declare-fun res!684864 () Bool)

(assert (=> b!1524922 (=> res!684864 e!975023)))

(assert (=> b!1524922 (= res!684864 (not ((_ is Some!2940) (_1!8596 lt!529908))))))

(declare-fun maxPrefixZipperSequenceV3Mem!31 (LexerInterface!2504 List!16224 BalanceConc!10854 BalanceConc!10854 CacheUp!866 CacheDown!870 CacheFurthestNullable!288) tuple4!700)

(assert (=> b!1524922 (= lt!529908 (maxPrefixZipperSequenceV3Mem!31 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1524923 () Bool)

(assert (=> b!1524923 (= e!974998 e!975007)))

(declare-fun res!684869 () Bool)

(assert (=> b!1524923 (=> (not res!684869) (not e!975007))))

(declare-fun lt!529901 () List!16223)

(assert (=> b!1524923 (= res!684869 (= lt!529901 lt!529890))))

(assert (=> b!1524923 (= lt!529890 (list!6379 acc!392))))

(assert (=> b!1524923 (= lt!529901 (list!6379 (_1!8592 lt!529902)))))

(assert (=> b!1524923 (= lt!529902 (lexRec!338 thiss!13241 rules!1640 treated!70))))

(declare-fun b!1524924 () Bool)

(assert (=> b!1524924 (= e!975013 e!975020)))

(assert (= (and start!142032 res!684875) b!1524911))

(assert (= (and b!1524911 res!684877) b!1524887))

(assert (= (and b!1524887 res!684873) b!1524920))

(assert (= (and b!1524920 res!684870) b!1524923))

(assert (= (and b!1524923 res!684869) b!1524883))

(assert (= (and b!1524883 res!684879) b!1524908))

(assert (= (and b!1524908 res!684874) b!1524907))

(assert (= (and b!1524907 res!684872) b!1524900))

(assert (= (and b!1524900 res!684878) b!1524905))

(assert (= (and b!1524905 res!684871) b!1524879))

(assert (= (and b!1524879 res!684868) b!1524918))

(assert (= (and b!1524918 res!684865) b!1524913))

(assert (= (and b!1524913 (not res!684867)) b!1524922))

(assert (= (and b!1524922 (not res!684864)) b!1524917))

(assert (= (and b!1524917 c!249941) b!1524901))

(assert (= (and b!1524917 (not c!249941)) b!1524916))

(assert (= (and b!1524917 (not res!684876)) b!1524877))

(assert (= (and b!1524877 (not res!684863)) b!1524880))

(assert (= (and b!1524880 (not res!684866)) b!1524903))

(assert (= start!142032 b!1524891))

(assert (= (and b!1524906 condMapEmpty!7148) mapIsEmpty!7146))

(assert (= (and b!1524906 (not condMapEmpty!7148)) mapNonEmpty!7146))

(assert (= b!1524878 b!1524906))

(assert (= b!1524899 b!1524878))

(assert (= b!1524890 b!1524899))

(assert (= (and b!1524888 ((_ is LongMap!1504) (v!22965 (underlying!3218 (cache!1829 cacheUp!616))))) b!1524890))

(assert (= b!1524909 b!1524888))

(assert (= (and b!1524893 ((_ is HashMap!1448) (cache!1829 cacheUp!616))) b!1524909))

(assert (= start!142032 b!1524893))

(assert (= (and b!1524904 condMapEmpty!7146) mapIsEmpty!7148))

(assert (= (and b!1524904 (not condMapEmpty!7146)) mapNonEmpty!7147))

(assert (= b!1524902 b!1524904))

(assert (= b!1524924 b!1524902))

(assert (= b!1524915 b!1524924))

(assert (= (and b!1524897 ((_ is LongMap!1506) (v!22969 (underlying!3222 (cache!1831 cacheDown!629))))) b!1524915))

(assert (= b!1524912 b!1524897))

(assert (= (and b!1524896 ((_ is HashMap!1450) (cache!1831 cacheDown!629))) b!1524912))

(assert (= start!142032 b!1524896))

(assert (= start!142032 b!1524886))

(assert (= start!142032 b!1524919))

(assert (= b!1524892 b!1524882))

(assert (= b!1524889 b!1524892))

(assert (= (and start!142032 ((_ is Cons!16156) rules!1640)) b!1524889))

(assert (= (and b!1524910 condMapEmpty!7147) mapIsEmpty!7147))

(assert (= (and b!1524910 (not condMapEmpty!7147)) mapNonEmpty!7148))

(assert (= b!1524898 b!1524910))

(assert (= b!1524881 b!1524898))

(assert (= b!1524885 b!1524881))

(assert (= (and b!1524895 ((_ is LongMap!1505) (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64))))) b!1524885))

(assert (= b!1524884 b!1524895))

(assert (= (and b!1524894 ((_ is HashMap!1449) (cache!1830 cacheFurthestNullable!64))) b!1524884))

(assert (= b!1524894 b!1524914))

(assert (= start!142032 b!1524894))

(assert (= start!142032 b!1524921))

(declare-fun m!1795196 () Bool)

(assert (=> b!1524911 m!1795196))

(declare-fun m!1795198 () Bool)

(assert (=> b!1524913 m!1795198))

(declare-fun m!1795200 () Bool)

(assert (=> b!1524913 m!1795200))

(declare-fun m!1795202 () Bool)

(assert (=> b!1524913 m!1795202))

(declare-fun m!1795204 () Bool)

(assert (=> mapNonEmpty!7147 m!1795204))

(declare-fun m!1795206 () Bool)

(assert (=> b!1524920 m!1795206))

(declare-fun m!1795208 () Bool)

(assert (=> b!1524920 m!1795208))

(declare-fun m!1795210 () Bool)

(assert (=> b!1524920 m!1795210))

(declare-fun m!1795212 () Bool)

(assert (=> b!1524920 m!1795212))

(declare-fun m!1795214 () Bool)

(assert (=> b!1524891 m!1795214))

(declare-fun m!1795216 () Bool)

(assert (=> b!1524914 m!1795216))

(declare-fun m!1795218 () Bool)

(assert (=> b!1524923 m!1795218))

(declare-fun m!1795220 () Bool)

(assert (=> b!1524923 m!1795220))

(declare-fun m!1795222 () Bool)

(assert (=> b!1524923 m!1795222))

(declare-fun m!1795224 () Bool)

(assert (=> b!1524894 m!1795224))

(declare-fun m!1795226 () Bool)

(assert (=> b!1524902 m!1795226))

(declare-fun m!1795228 () Bool)

(assert (=> b!1524902 m!1795228))

(declare-fun m!1795230 () Bool)

(assert (=> b!1524892 m!1795230))

(declare-fun m!1795232 () Bool)

(assert (=> b!1524892 m!1795232))

(declare-fun m!1795234 () Bool)

(assert (=> b!1524877 m!1795234))

(declare-fun m!1795236 () Bool)

(assert (=> b!1524879 m!1795236))

(declare-fun m!1795238 () Bool)

(assert (=> b!1524908 m!1795238))

(declare-fun m!1795240 () Bool)

(assert (=> b!1524908 m!1795240))

(declare-fun m!1795242 () Bool)

(assert (=> b!1524908 m!1795242))

(assert (=> b!1524908 m!1795238))

(declare-fun m!1795244 () Bool)

(assert (=> b!1524908 m!1795244))

(declare-fun m!1795246 () Bool)

(assert (=> b!1524908 m!1795246))

(declare-fun m!1795248 () Bool)

(assert (=> start!142032 m!1795248))

(declare-fun m!1795250 () Bool)

(assert (=> start!142032 m!1795250))

(declare-fun m!1795252 () Bool)

(assert (=> start!142032 m!1795252))

(declare-fun m!1795254 () Bool)

(assert (=> start!142032 m!1795254))

(declare-fun m!1795256 () Bool)

(assert (=> start!142032 m!1795256))

(declare-fun m!1795258 () Bool)

(assert (=> start!142032 m!1795258))

(declare-fun m!1795260 () Bool)

(assert (=> start!142032 m!1795260))

(declare-fun m!1795262 () Bool)

(assert (=> b!1524883 m!1795262))

(assert (=> b!1524883 m!1795262))

(declare-fun m!1795264 () Bool)

(assert (=> b!1524883 m!1795264))

(declare-fun m!1795266 () Bool)

(assert (=> b!1524922 m!1795266))

(declare-fun m!1795268 () Bool)

(assert (=> b!1524887 m!1795268))

(declare-fun m!1795270 () Bool)

(assert (=> b!1524880 m!1795270))

(declare-fun m!1795272 () Bool)

(assert (=> b!1524880 m!1795272))

(declare-fun m!1795274 () Bool)

(assert (=> mapNonEmpty!7148 m!1795274))

(declare-fun m!1795276 () Bool)

(assert (=> b!1524901 m!1795276))

(declare-fun m!1795278 () Bool)

(assert (=> b!1524901 m!1795278))

(declare-fun m!1795280 () Bool)

(assert (=> mapNonEmpty!7146 m!1795280))

(declare-fun m!1795282 () Bool)

(assert (=> b!1524886 m!1795282))

(declare-fun m!1795284 () Bool)

(assert (=> b!1524921 m!1795284))

(declare-fun m!1795286 () Bool)

(assert (=> b!1524917 m!1795286))

(declare-fun m!1795288 () Bool)

(assert (=> b!1524917 m!1795288))

(declare-fun m!1795290 () Bool)

(assert (=> b!1524917 m!1795290))

(declare-fun m!1795292 () Bool)

(assert (=> b!1524917 m!1795292))

(declare-fun m!1795294 () Bool)

(assert (=> b!1524917 m!1795294))

(declare-fun m!1795296 () Bool)

(assert (=> b!1524917 m!1795296))

(declare-fun m!1795298 () Bool)

(assert (=> b!1524917 m!1795298))

(declare-fun m!1795300 () Bool)

(assert (=> b!1524917 m!1795300))

(declare-fun m!1795302 () Bool)

(assert (=> b!1524917 m!1795302))

(assert (=> b!1524917 m!1795292))

(declare-fun m!1795304 () Bool)

(assert (=> b!1524917 m!1795304))

(declare-fun m!1795306 () Bool)

(assert (=> b!1524917 m!1795306))

(declare-fun m!1795308 () Bool)

(assert (=> b!1524917 m!1795308))

(assert (=> b!1524917 m!1795290))

(declare-fun m!1795310 () Bool)

(assert (=> b!1524917 m!1795310))

(declare-fun m!1795312 () Bool)

(assert (=> b!1524917 m!1795312))

(declare-fun m!1795314 () Bool)

(assert (=> b!1524917 m!1795314))

(assert (=> b!1524917 m!1795308))

(declare-fun m!1795316 () Bool)

(assert (=> b!1524917 m!1795316))

(assert (=> b!1524917 m!1795296))

(declare-fun m!1795318 () Bool)

(assert (=> b!1524917 m!1795318))

(declare-fun m!1795320 () Bool)

(assert (=> b!1524917 m!1795320))

(declare-fun m!1795322 () Bool)

(assert (=> b!1524917 m!1795322))

(declare-fun m!1795324 () Bool)

(assert (=> b!1524917 m!1795324))

(declare-fun m!1795326 () Bool)

(assert (=> b!1524919 m!1795326))

(declare-fun m!1795328 () Bool)

(assert (=> b!1524907 m!1795328))

(declare-fun m!1795330 () Bool)

(assert (=> b!1524907 m!1795330))

(declare-fun m!1795332 () Bool)

(assert (=> b!1524898 m!1795332))

(declare-fun m!1795334 () Bool)

(assert (=> b!1524898 m!1795334))

(declare-fun m!1795336 () Bool)

(assert (=> b!1524903 m!1795336))

(declare-fun m!1795338 () Bool)

(assert (=> b!1524878 m!1795338))

(declare-fun m!1795340 () Bool)

(assert (=> b!1524878 m!1795340))

(declare-fun m!1795342 () Bool)

(assert (=> b!1524905 m!1795342))

(declare-fun m!1795344 () Bool)

(assert (=> b!1524900 m!1795344))

(check-sat b_and!105935 (not b_next!40205) b_and!105927 (not b!1524905) (not b!1524889) (not b_next!40191) (not b!1524906) (not mapNonEmpty!7146) (not b!1524913) (not b!1524907) (not start!142032) (not b!1524914) b_and!105941 (not b!1524904) (not b!1524920) (not b!1524880) (not b!1524898) (not b!1524911) b_and!105931 (not b_next!40203) b_and!105937 (not b!1524901) (not b!1524886) (not b!1524892) (not b!1524894) (not b!1524908) (not b!1524891) (not b!1524917) (not b!1524902) (not b_next!40201) (not b!1524923) b_and!105933 (not b!1524900) (not b!1524879) (not b_next!40197) (not mapNonEmpty!7148) b_and!105939 (not b!1524887) (not b!1524877) (not b!1524883) (not b!1524910) (not b!1524922) (not b!1524903) (not b!1524878) (not b!1524919) (not b!1524921) (not b_next!40195) b_and!105929 (not mapNonEmpty!7147) (not b_next!40199) (not b_next!40193))
(check-sat b_and!105935 b_and!105941 (not b_next!40205) b_and!105931 b_and!105927 (not b_next!40201) b_and!105933 (not b_next!40191) (not b_next!40203) b_and!105937 b_and!105939 (not b_next!40197) (not b_next!40195) b_and!105929 (not b_next!40199) (not b_next!40193))
(get-model)

(declare-fun d!453420 () Bool)

(assert (=> d!453420 (= (array_inv!1698 (_keys!1799 (v!22966 (underlying!3219 (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64))))))) (bvsge (size!13064 (_keys!1799 (v!22966 (underlying!3219 (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1524898 d!453420))

(declare-fun d!453422 () Bool)

(assert (=> d!453422 (= (array_inv!1700 (_values!1784 (v!22966 (underlying!3219 (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64))))))) (bvsge (size!13066 (_values!1784 (v!22966 (underlying!3219 (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1524898 d!453422))

(declare-fun d!453424 () Bool)

(declare-fun c!249947 () Bool)

(assert (=> d!453424 (= c!249947 ((_ is Node!5456) (c!249943 (totalInput!2319 cacheFurthestNullable!64))))))

(declare-fun e!975029 () Bool)

(assert (=> d!453424 (= (inv!21399 (c!249943 (totalInput!2319 cacheFurthestNullable!64))) e!975029)))

(declare-fun b!1524931 () Bool)

(declare-fun inv!21407 (Conc!5456) Bool)

(assert (=> b!1524931 (= e!975029 (inv!21407 (c!249943 (totalInput!2319 cacheFurthestNullable!64))))))

(declare-fun b!1524932 () Bool)

(declare-fun e!975030 () Bool)

(assert (=> b!1524932 (= e!975029 e!975030)))

(declare-fun res!684884 () Bool)

(assert (=> b!1524932 (= res!684884 (not ((_ is Leaf!8086) (c!249943 (totalInput!2319 cacheFurthestNullable!64)))))))

(assert (=> b!1524932 (=> res!684884 e!975030)))

(declare-fun b!1524933 () Bool)

(declare-fun inv!21408 (Conc!5456) Bool)

(assert (=> b!1524933 (= e!975030 (inv!21408 (c!249943 (totalInput!2319 cacheFurthestNullable!64))))))

(assert (= (and d!453424 c!249947) b!1524931))

(assert (= (and d!453424 (not c!249947)) b!1524932))

(assert (= (and b!1524932 (not res!684884)) b!1524933))

(declare-fun m!1795346 () Bool)

(assert (=> b!1524931 m!1795346))

(declare-fun m!1795348 () Bool)

(assert (=> b!1524933 m!1795348))

(assert (=> b!1524914 d!453424))

(declare-fun b!1524943 () Bool)

(declare-fun e!975035 () List!16218)

(assert (=> b!1524943 (= e!975035 (Cons!16150 (h!21551 lt!529897) (++!4383 (t!139960 lt!529897) lt!529893)))))

(declare-fun lt!529911 () List!16218)

(declare-fun e!975036 () Bool)

(declare-fun b!1524945 () Bool)

(assert (=> b!1524945 (= e!975036 (or (not (= lt!529893 Nil!16150)) (= lt!529911 lt!529897)))))

(declare-fun b!1524944 () Bool)

(declare-fun res!684890 () Bool)

(assert (=> b!1524944 (=> (not res!684890) (not e!975036))))

(declare-fun size!13069 (List!16218) Int)

(assert (=> b!1524944 (= res!684890 (= (size!13069 lt!529911) (+ (size!13069 lt!529897) (size!13069 lt!529893))))))

(declare-fun d!453426 () Bool)

(assert (=> d!453426 e!975036))

(declare-fun res!684889 () Bool)

(assert (=> d!453426 (=> (not res!684889) (not e!975036))))

(declare-fun content!2326 (List!16218) (InoxSet C!8516))

(assert (=> d!453426 (= res!684889 (= (content!2326 lt!529911) ((_ map or) (content!2326 lt!529897) (content!2326 lt!529893))))))

(assert (=> d!453426 (= lt!529911 e!975035)))

(declare-fun c!249950 () Bool)

(assert (=> d!453426 (= c!249950 ((_ is Nil!16150) lt!529897))))

(assert (=> d!453426 (= (++!4383 lt!529897 lt!529893) lt!529911)))

(declare-fun b!1524942 () Bool)

(assert (=> b!1524942 (= e!975035 lt!529893)))

(assert (= (and d!453426 c!249950) b!1524942))

(assert (= (and d!453426 (not c!249950)) b!1524943))

(assert (= (and d!453426 res!684889) b!1524944))

(assert (= (and b!1524944 res!684890) b!1524945))

(declare-fun m!1795350 () Bool)

(assert (=> b!1524943 m!1795350))

(declare-fun m!1795352 () Bool)

(assert (=> b!1524944 m!1795352))

(declare-fun m!1795354 () Bool)

(assert (=> b!1524944 m!1795354))

(declare-fun m!1795356 () Bool)

(assert (=> b!1524944 m!1795356))

(declare-fun m!1795358 () Bool)

(assert (=> d!453426 m!1795358))

(declare-fun m!1795360 () Bool)

(assert (=> d!453426 m!1795360))

(declare-fun m!1795362 () Bool)

(assert (=> d!453426 m!1795362))

(assert (=> b!1524917 d!453426))

(declare-fun d!453428 () Bool)

(declare-fun list!6380 (Conc!5456) List!16218)

(assert (=> d!453428 (= (list!6378 (charsOf!1635 (_1!8595 (v!22970 (_1!8596 lt!529908))))) (list!6380 (c!249943 (charsOf!1635 (_1!8595 (v!22970 (_1!8596 lt!529908)))))))))

(declare-fun bs!374050 () Bool)

(assert (= bs!374050 d!453428))

(declare-fun m!1795364 () Bool)

(assert (=> bs!374050 m!1795364))

(assert (=> b!1524917 d!453428))

(declare-fun d!453430 () Bool)

(assert (=> d!453430 (= (++!4383 (++!4383 lt!529898 lt!529897) lt!529893) (++!4383 lt!529898 (++!4383 lt!529897 lt!529893)))))

(declare-fun lt!529914 () Unit!25779)

(declare-fun choose!9192 (List!16218 List!16218 List!16218) Unit!25779)

(assert (=> d!453430 (= lt!529914 (choose!9192 lt!529898 lt!529897 lt!529893))))

(assert (=> d!453430 (= (lemmaConcatAssociativity!956 lt!529898 lt!529897 lt!529893) lt!529914)))

(declare-fun bs!374051 () Bool)

(assert (= bs!374051 d!453430))

(declare-fun m!1795366 () Bool)

(assert (=> bs!374051 m!1795366))

(assert (=> bs!374051 m!1795320))

(declare-fun m!1795368 () Bool)

(assert (=> bs!374051 m!1795368))

(assert (=> bs!374051 m!1795320))

(assert (=> bs!374051 m!1795288))

(declare-fun m!1795370 () Bool)

(assert (=> bs!374051 m!1795370))

(assert (=> bs!374051 m!1795288))

(assert (=> b!1524917 d!453430))

(declare-fun d!453432 () Bool)

(declare-fun e!975039 () Bool)

(assert (=> d!453432 e!975039))

(declare-fun res!684893 () Bool)

(assert (=> d!453432 (=> (not res!684893) (not e!975039))))

(declare-fun isBalanced!1617 (Conc!5457) Bool)

(declare-fun append!514 (Conc!5457 Token!5366) Conc!5457)

(assert (=> d!453432 (= res!684893 (isBalanced!1617 (append!514 (c!249944 acc!392) (_1!8595 (v!22970 (_1!8596 lt!529908))))))))

(declare-fun lt!529917 () BalanceConc!10856)

(assert (=> d!453432 (= lt!529917 (BalanceConc!10857 (append!514 (c!249944 acc!392) (_1!8595 (v!22970 (_1!8596 lt!529908))))))))

(assert (=> d!453432 (= (append!513 acc!392 (_1!8595 (v!22970 (_1!8596 lt!529908)))) lt!529917)))

(declare-fun b!1524948 () Bool)

(declare-fun $colon+!111 (List!16223 Token!5366) List!16223)

(assert (=> b!1524948 (= e!975039 (= (list!6379 lt!529917) ($colon+!111 (list!6379 acc!392) (_1!8595 (v!22970 (_1!8596 lt!529908))))))))

(assert (= (and d!453432 res!684893) b!1524948))

(declare-fun m!1795372 () Bool)

(assert (=> d!453432 m!1795372))

(assert (=> d!453432 m!1795372))

(declare-fun m!1795374 () Bool)

(assert (=> d!453432 m!1795374))

(declare-fun m!1795376 () Bool)

(assert (=> b!1524948 m!1795376))

(assert (=> b!1524948 m!1795218))

(assert (=> b!1524948 m!1795218))

(declare-fun m!1795378 () Bool)

(assert (=> b!1524948 m!1795378))

(assert (=> b!1524917 d!453432))

(declare-fun d!453434 () Bool)

(assert (=> d!453434 (= (isEmpty!9969 lt!529883) ((_ is Nil!16155) lt!529883))))

(assert (=> b!1524917 d!453434))

(declare-fun d!453436 () Bool)

(declare-fun lt!529920 () BalanceConc!10854)

(assert (=> d!453436 (= (list!6378 lt!529920) (originalCharacters!3714 (_1!8595 (v!22970 (_1!8596 lt!529908)))))))

(declare-fun dynLambda!7253 (Int TokenValue!2942) BalanceConc!10854)

(assert (=> d!453436 (= lt!529920 (dynLambda!7253 (toChars!4068 (transformation!2852 (rule!4655 (_1!8595 (v!22970 (_1!8596 lt!529908)))))) (value!90945 (_1!8595 (v!22970 (_1!8596 lt!529908))))))))

(assert (=> d!453436 (= (charsOf!1635 (_1!8595 (v!22970 (_1!8596 lt!529908)))) lt!529920)))

(declare-fun b_lambda!47923 () Bool)

(assert (=> (not b_lambda!47923) (not d!453436)))

(declare-fun t!139969 () Bool)

(declare-fun tb!86633 () Bool)

(assert (=> (and b!1524882 (= (toChars!4068 (transformation!2852 (h!21557 rules!1640))) (toChars!4068 (transformation!2852 (rule!4655 (_1!8595 (v!22970 (_1!8596 lt!529908))))))) t!139969) tb!86633))

(declare-fun b!1524953 () Bool)

(declare-fun e!975042 () Bool)

(declare-fun tp!437799 () Bool)

(assert (=> b!1524953 (= e!975042 (and (inv!21399 (c!249943 (dynLambda!7253 (toChars!4068 (transformation!2852 (rule!4655 (_1!8595 (v!22970 (_1!8596 lt!529908)))))) (value!90945 (_1!8595 (v!22970 (_1!8596 lt!529908))))))) tp!437799))))

(declare-fun result!104254 () Bool)

(assert (=> tb!86633 (= result!104254 (and (inv!21402 (dynLambda!7253 (toChars!4068 (transformation!2852 (rule!4655 (_1!8595 (v!22970 (_1!8596 lt!529908)))))) (value!90945 (_1!8595 (v!22970 (_1!8596 lt!529908)))))) e!975042))))

(assert (= tb!86633 b!1524953))

(declare-fun m!1795380 () Bool)

(assert (=> b!1524953 m!1795380))

(declare-fun m!1795382 () Bool)

(assert (=> tb!86633 m!1795382))

(assert (=> d!453436 t!139969))

(declare-fun b_and!105943 () Bool)

(assert (= b_and!105937 (and (=> t!139969 result!104254) b_and!105943)))

(declare-fun m!1795384 () Bool)

(assert (=> d!453436 m!1795384))

(declare-fun m!1795386 () Bool)

(assert (=> d!453436 m!1795386))

(assert (=> b!1524917 d!453436))

(declare-fun b!1524955 () Bool)

(declare-fun e!975043 () List!16218)

(assert (=> b!1524955 (= e!975043 (Cons!16150 (h!21551 lt!529898) (++!4383 (t!139960 lt!529898) lt!529903)))))

(declare-fun e!975044 () Bool)

(declare-fun b!1524957 () Bool)

(declare-fun lt!529921 () List!16218)

(assert (=> b!1524957 (= e!975044 (or (not (= lt!529903 Nil!16150)) (= lt!529921 lt!529898)))))

(declare-fun b!1524956 () Bool)

(declare-fun res!684895 () Bool)

(assert (=> b!1524956 (=> (not res!684895) (not e!975044))))

(assert (=> b!1524956 (= res!684895 (= (size!13069 lt!529921) (+ (size!13069 lt!529898) (size!13069 lt!529903))))))

(declare-fun d!453438 () Bool)

(assert (=> d!453438 e!975044))

(declare-fun res!684894 () Bool)

(assert (=> d!453438 (=> (not res!684894) (not e!975044))))

(assert (=> d!453438 (= res!684894 (= (content!2326 lt!529921) ((_ map or) (content!2326 lt!529898) (content!2326 lt!529903))))))

(assert (=> d!453438 (= lt!529921 e!975043)))

(declare-fun c!249952 () Bool)

(assert (=> d!453438 (= c!249952 ((_ is Nil!16150) lt!529898))))

(assert (=> d!453438 (= (++!4383 lt!529898 lt!529903) lt!529921)))

(declare-fun b!1524954 () Bool)

(assert (=> b!1524954 (= e!975043 lt!529903)))

(assert (= (and d!453438 c!249952) b!1524954))

(assert (= (and d!453438 (not c!249952)) b!1524955))

(assert (= (and d!453438 res!684894) b!1524956))

(assert (= (and b!1524956 res!684895) b!1524957))

(declare-fun m!1795388 () Bool)

(assert (=> b!1524955 m!1795388))

(declare-fun m!1795390 () Bool)

(assert (=> b!1524956 m!1795390))

(declare-fun m!1795392 () Bool)

(assert (=> b!1524956 m!1795392))

(declare-fun m!1795394 () Bool)

(assert (=> b!1524956 m!1795394))

(declare-fun m!1795396 () Bool)

(assert (=> d!453438 m!1795396))

(declare-fun m!1795398 () Bool)

(assert (=> d!453438 m!1795398))

(declare-fun m!1795400 () Bool)

(assert (=> d!453438 m!1795400))

(assert (=> b!1524917 d!453438))

(declare-fun b!1524959 () Bool)

(declare-fun e!975045 () List!16218)

(assert (=> b!1524959 (= e!975045 (Cons!16150 (h!21551 lt!529885) (++!4383 (t!139960 lt!529885) lt!529893)))))

(declare-fun e!975046 () Bool)

(declare-fun lt!529922 () List!16218)

(declare-fun b!1524961 () Bool)

(assert (=> b!1524961 (= e!975046 (or (not (= lt!529893 Nil!16150)) (= lt!529922 lt!529885)))))

(declare-fun b!1524960 () Bool)

(declare-fun res!684897 () Bool)

(assert (=> b!1524960 (=> (not res!684897) (not e!975046))))

(assert (=> b!1524960 (= res!684897 (= (size!13069 lt!529922) (+ (size!13069 lt!529885) (size!13069 lt!529893))))))

(declare-fun d!453440 () Bool)

(assert (=> d!453440 e!975046))

(declare-fun res!684896 () Bool)

(assert (=> d!453440 (=> (not res!684896) (not e!975046))))

(assert (=> d!453440 (= res!684896 (= (content!2326 lt!529922) ((_ map or) (content!2326 lt!529885) (content!2326 lt!529893))))))

(assert (=> d!453440 (= lt!529922 e!975045)))

(declare-fun c!249953 () Bool)

(assert (=> d!453440 (= c!249953 ((_ is Nil!16150) lt!529885))))

(assert (=> d!453440 (= (++!4383 lt!529885 lt!529893) lt!529922)))

(declare-fun b!1524958 () Bool)

(assert (=> b!1524958 (= e!975045 lt!529893)))

(assert (= (and d!453440 c!249953) b!1524958))

(assert (= (and d!453440 (not c!249953)) b!1524959))

(assert (= (and d!453440 res!684896) b!1524960))

(assert (= (and b!1524960 res!684897) b!1524961))

(declare-fun m!1795402 () Bool)

(assert (=> b!1524959 m!1795402))

(declare-fun m!1795404 () Bool)

(assert (=> b!1524960 m!1795404))

(declare-fun m!1795406 () Bool)

(assert (=> b!1524960 m!1795406))

(assert (=> b!1524960 m!1795356))

(declare-fun m!1795408 () Bool)

(assert (=> d!453440 m!1795408))

(declare-fun m!1795410 () Bool)

(assert (=> d!453440 m!1795410))

(assert (=> d!453440 m!1795362))

(assert (=> b!1524917 d!453440))

(declare-fun b!1524963 () Bool)

(declare-fun e!975047 () List!16218)

(assert (=> b!1524963 (= e!975047 (Cons!16150 (h!21551 lt!529898) (++!4383 (t!139960 lt!529898) lt!529897)))))

(declare-fun lt!529923 () List!16218)

(declare-fun b!1524965 () Bool)

(declare-fun e!975048 () Bool)

(assert (=> b!1524965 (= e!975048 (or (not (= lt!529897 Nil!16150)) (= lt!529923 lt!529898)))))

(declare-fun b!1524964 () Bool)

(declare-fun res!684899 () Bool)

(assert (=> b!1524964 (=> (not res!684899) (not e!975048))))

(assert (=> b!1524964 (= res!684899 (= (size!13069 lt!529923) (+ (size!13069 lt!529898) (size!13069 lt!529897))))))

(declare-fun d!453442 () Bool)

(assert (=> d!453442 e!975048))

(declare-fun res!684898 () Bool)

(assert (=> d!453442 (=> (not res!684898) (not e!975048))))

(assert (=> d!453442 (= res!684898 (= (content!2326 lt!529923) ((_ map or) (content!2326 lt!529898) (content!2326 lt!529897))))))

(assert (=> d!453442 (= lt!529923 e!975047)))

(declare-fun c!249954 () Bool)

(assert (=> d!453442 (= c!249954 ((_ is Nil!16150) lt!529898))))

(assert (=> d!453442 (= (++!4383 lt!529898 lt!529897) lt!529923)))

(declare-fun b!1524962 () Bool)

(assert (=> b!1524962 (= e!975047 lt!529897)))

(assert (= (and d!453442 c!249954) b!1524962))

(assert (= (and d!453442 (not c!249954)) b!1524963))

(assert (= (and d!453442 res!684898) b!1524964))

(assert (= (and b!1524964 res!684899) b!1524965))

(declare-fun m!1795412 () Bool)

(assert (=> b!1524963 m!1795412))

(declare-fun m!1795414 () Bool)

(assert (=> b!1524964 m!1795414))

(assert (=> b!1524964 m!1795392))

(assert (=> b!1524964 m!1795354))

(declare-fun m!1795416 () Bool)

(assert (=> d!453442 m!1795416))

(assert (=> d!453442 m!1795398))

(assert (=> d!453442 m!1795360))

(assert (=> b!1524917 d!453442))

(declare-fun d!453444 () Bool)

(declare-fun e!975053 () Bool)

(assert (=> d!453444 e!975053))

(declare-fun res!684905 () Bool)

(assert (=> d!453444 (=> (not res!684905) (not e!975053))))

(declare-fun lt!529926 () List!16223)

(declare-fun content!2327 (List!16223) (InoxSet Token!5366))

(assert (=> d!453444 (= res!684905 (= (content!2327 lt!529926) ((_ map or) (content!2327 lt!529890) (content!2327 (++!4381 lt!529882 lt!529896)))))))

(declare-fun e!975054 () List!16223)

(assert (=> d!453444 (= lt!529926 e!975054)))

(declare-fun c!249957 () Bool)

(assert (=> d!453444 (= c!249957 ((_ is Nil!16155) lt!529890))))

(assert (=> d!453444 (= (++!4381 lt!529890 (++!4381 lt!529882 lt!529896)) lt!529926)))

(declare-fun b!1524976 () Bool)

(declare-fun res!684904 () Bool)

(assert (=> b!1524976 (=> (not res!684904) (not e!975053))))

(declare-fun size!13070 (List!16223) Int)

(assert (=> b!1524976 (= res!684904 (= (size!13070 lt!529926) (+ (size!13070 lt!529890) (size!13070 (++!4381 lt!529882 lt!529896)))))))

(declare-fun b!1524977 () Bool)

(assert (=> b!1524977 (= e!975053 (or (not (= (++!4381 lt!529882 lt!529896) Nil!16155)) (= lt!529926 lt!529890)))))

(declare-fun b!1524975 () Bool)

(assert (=> b!1524975 (= e!975054 (Cons!16155 (h!21556 lt!529890) (++!4381 (t!139965 lt!529890) (++!4381 lt!529882 lt!529896))))))

(declare-fun b!1524974 () Bool)

(assert (=> b!1524974 (= e!975054 (++!4381 lt!529882 lt!529896))))

(assert (= (and d!453444 c!249957) b!1524974))

(assert (= (and d!453444 (not c!249957)) b!1524975))

(assert (= (and d!453444 res!684905) b!1524976))

(assert (= (and b!1524976 res!684904) b!1524977))

(declare-fun m!1795418 () Bool)

(assert (=> d!453444 m!1795418))

(declare-fun m!1795420 () Bool)

(assert (=> d!453444 m!1795420))

(assert (=> d!453444 m!1795296))

(declare-fun m!1795422 () Bool)

(assert (=> d!453444 m!1795422))

(declare-fun m!1795424 () Bool)

(assert (=> b!1524976 m!1795424))

(declare-fun m!1795426 () Bool)

(assert (=> b!1524976 m!1795426))

(assert (=> b!1524976 m!1795296))

(declare-fun m!1795428 () Bool)

(assert (=> b!1524976 m!1795428))

(assert (=> b!1524975 m!1795296))

(declare-fun m!1795430 () Bool)

(assert (=> b!1524975 m!1795430))

(assert (=> b!1524917 d!453444))

(declare-fun d!453446 () Bool)

(declare-fun list!6381 (Conc!5457) List!16223)

(assert (=> d!453446 (= (list!6379 (_1!8592 lt!529899)) (list!6381 (c!249944 (_1!8592 lt!529899))))))

(declare-fun bs!374052 () Bool)

(assert (= bs!374052 d!453446))

(declare-fun m!1795432 () Bool)

(assert (=> bs!374052 m!1795432))

(assert (=> b!1524917 d!453446))

(declare-fun d!453448 () Bool)

(assert (=> d!453448 (= (list!6378 (_2!8592 lt!529899)) (list!6380 (c!249943 (_2!8592 lt!529899))))))

(declare-fun bs!374053 () Bool)

(assert (= bs!374053 d!453448))

(declare-fun m!1795434 () Bool)

(assert (=> bs!374053 m!1795434))

(assert (=> b!1524917 d!453448))

(declare-fun d!453450 () Bool)

(declare-fun e!975055 () Bool)

(assert (=> d!453450 e!975055))

(declare-fun res!684907 () Bool)

(assert (=> d!453450 (=> (not res!684907) (not e!975055))))

(declare-fun lt!529927 () List!16223)

(assert (=> d!453450 (= res!684907 (= (content!2327 lt!529927) ((_ map or) (content!2327 lt!529890) (content!2327 lt!529882))))))

(declare-fun e!975056 () List!16223)

(assert (=> d!453450 (= lt!529927 e!975056)))

(declare-fun c!249958 () Bool)

(assert (=> d!453450 (= c!249958 ((_ is Nil!16155) lt!529890))))

(assert (=> d!453450 (= (++!4381 lt!529890 lt!529882) lt!529927)))

(declare-fun b!1524980 () Bool)

(declare-fun res!684906 () Bool)

(assert (=> b!1524980 (=> (not res!684906) (not e!975055))))

(assert (=> b!1524980 (= res!684906 (= (size!13070 lt!529927) (+ (size!13070 lt!529890) (size!13070 lt!529882))))))

(declare-fun b!1524981 () Bool)

(assert (=> b!1524981 (= e!975055 (or (not (= lt!529882 Nil!16155)) (= lt!529927 lt!529890)))))

(declare-fun b!1524979 () Bool)

(assert (=> b!1524979 (= e!975056 (Cons!16155 (h!21556 lt!529890) (++!4381 (t!139965 lt!529890) lt!529882)))))

(declare-fun b!1524978 () Bool)

(assert (=> b!1524978 (= e!975056 lt!529882)))

(assert (= (and d!453450 c!249958) b!1524978))

(assert (= (and d!453450 (not c!249958)) b!1524979))

(assert (= (and d!453450 res!684907) b!1524980))

(assert (= (and b!1524980 res!684906) b!1524981))

(declare-fun m!1795436 () Bool)

(assert (=> d!453450 m!1795436))

(assert (=> d!453450 m!1795420))

(declare-fun m!1795438 () Bool)

(assert (=> d!453450 m!1795438))

(declare-fun m!1795440 () Bool)

(assert (=> b!1524980 m!1795440))

(assert (=> b!1524980 m!1795426))

(declare-fun m!1795442 () Bool)

(assert (=> b!1524980 m!1795442))

(declare-fun m!1795444 () Bool)

(assert (=> b!1524979 m!1795444))

(assert (=> b!1524917 d!453450))

(declare-fun d!453452 () Bool)

(declare-fun e!975068 () Bool)

(assert (=> d!453452 e!975068))

(declare-fun res!684915 () Bool)

(assert (=> d!453452 (=> (not res!684915) (not e!975068))))

(declare-fun e!975066 () Bool)

(assert (=> d!453452 (= res!684915 e!975066)))

(declare-fun c!249963 () Bool)

(declare-fun lt!529935 () tuple2!15088)

(declare-fun size!13071 (BalanceConc!10856) Int)

(assert (=> d!453452 (= c!249963 (> (size!13071 (_1!8592 lt!529935)) 0))))

(declare-fun e!975065 () tuple2!15088)

(assert (=> d!453452 (= lt!529935 e!975065)))

(declare-fun c!249964 () Bool)

(declare-fun lt!529934 () Option!2941)

(assert (=> d!453452 (= c!249964 ((_ is Some!2940) lt!529934))))

(assert (=> d!453452 (= lt!529934 (maxPrefixZipperSequence!595 thiss!13241 rules!1640 (_2!8595 (v!22970 (_1!8596 lt!529908)))))))

(assert (=> d!453452 (= (lexRec!338 thiss!13241 rules!1640 (_2!8595 (v!22970 (_1!8596 lt!529908)))) lt!529935)))

(declare-fun b!1524996 () Bool)

(assert (=> b!1524996 (= e!975068 (= (list!6378 (_2!8592 lt!529935)) (_2!8591 (lexList!752 thiss!13241 rules!1640 (list!6378 (_2!8595 (v!22970 (_1!8596 lt!529908))))))))))

(declare-fun b!1524997 () Bool)

(declare-fun e!975067 () Bool)

(declare-fun isEmpty!9970 (BalanceConc!10856) Bool)

(assert (=> b!1524997 (= e!975067 (not (isEmpty!9970 (_1!8592 lt!529935))))))

(declare-fun b!1524998 () Bool)

(declare-fun lt!529936 () tuple2!15088)

(assert (=> b!1524998 (= e!975065 (tuple2!15089 (prepend!476 (_1!8592 lt!529936) (_1!8595 (v!22970 lt!529934))) (_2!8592 lt!529936)))))

(assert (=> b!1524998 (= lt!529936 (lexRec!338 thiss!13241 rules!1640 (_2!8595 (v!22970 lt!529934))))))

(declare-fun b!1524999 () Bool)

(assert (=> b!1524999 (= e!975066 e!975067)))

(declare-fun res!684916 () Bool)

(declare-fun size!13072 (BalanceConc!10854) Int)

(assert (=> b!1524999 (= res!684916 (< (size!13072 (_2!8592 lt!529935)) (size!13072 (_2!8595 (v!22970 (_1!8596 lt!529908))))))))

(assert (=> b!1524999 (=> (not res!684916) (not e!975067))))

(declare-fun b!1525000 () Bool)

(assert (=> b!1525000 (= e!975065 (tuple2!15089 (BalanceConc!10857 Empty!5457) (_2!8595 (v!22970 (_1!8596 lt!529908)))))))

(declare-fun b!1525001 () Bool)

(declare-fun res!684914 () Bool)

(assert (=> b!1525001 (=> (not res!684914) (not e!975068))))

(assert (=> b!1525001 (= res!684914 (= (list!6379 (_1!8592 lt!529935)) (_1!8591 (lexList!752 thiss!13241 rules!1640 (list!6378 (_2!8595 (v!22970 (_1!8596 lt!529908))))))))))

(declare-fun b!1525002 () Bool)

(assert (=> b!1525002 (= e!975066 (= (list!6378 (_2!8592 lt!529935)) (list!6378 (_2!8595 (v!22970 (_1!8596 lt!529908))))))))

(assert (= (and d!453452 c!249964) b!1524998))

(assert (= (and d!453452 (not c!249964)) b!1525000))

(assert (= (and d!453452 c!249963) b!1524999))

(assert (= (and d!453452 (not c!249963)) b!1525002))

(assert (= (and b!1524999 res!684916) b!1524997))

(assert (= (and d!453452 res!684915) b!1525001))

(assert (= (and b!1525001 res!684914) b!1524996))

(declare-fun m!1795446 () Bool)

(assert (=> b!1525001 m!1795446))

(assert (=> b!1525001 m!1795324))

(assert (=> b!1525001 m!1795324))

(declare-fun m!1795448 () Bool)

(assert (=> b!1525001 m!1795448))

(declare-fun m!1795450 () Bool)

(assert (=> b!1524999 m!1795450))

(declare-fun m!1795452 () Bool)

(assert (=> b!1524999 m!1795452))

(declare-fun m!1795454 () Bool)

(assert (=> b!1524998 m!1795454))

(declare-fun m!1795456 () Bool)

(assert (=> b!1524998 m!1795456))

(declare-fun m!1795458 () Bool)

(assert (=> b!1524996 m!1795458))

(assert (=> b!1524996 m!1795324))

(assert (=> b!1524996 m!1795324))

(assert (=> b!1524996 m!1795448))

(declare-fun m!1795460 () Bool)

(assert (=> d!453452 m!1795460))

(declare-fun m!1795462 () Bool)

(assert (=> d!453452 m!1795462))

(assert (=> b!1525002 m!1795458))

(assert (=> b!1525002 m!1795324))

(declare-fun m!1795464 () Bool)

(assert (=> b!1524997 m!1795464))

(assert (=> b!1524917 d!453452))

(declare-fun d!453454 () Bool)

(assert (=> d!453454 (= (++!4381 (++!4381 lt!529890 lt!529882) lt!529896) (++!4381 lt!529890 (++!4381 lt!529882 lt!529896)))))

(declare-fun lt!529939 () Unit!25779)

(declare-fun choose!9193 (List!16223 List!16223 List!16223) Unit!25779)

(assert (=> d!453454 (= lt!529939 (choose!9193 lt!529890 lt!529882 lt!529896))))

(assert (=> d!453454 (= (lemmaConcatAssociativity!955 lt!529890 lt!529882 lt!529896) lt!529939)))

(declare-fun bs!374054 () Bool)

(assert (= bs!374054 d!453454))

(assert (=> bs!374054 m!1795292))

(assert (=> bs!374054 m!1795294))

(declare-fun m!1795466 () Bool)

(assert (=> bs!374054 m!1795466))

(assert (=> bs!374054 m!1795292))

(assert (=> bs!374054 m!1795296))

(assert (=> bs!374054 m!1795298))

(assert (=> bs!374054 m!1795296))

(assert (=> b!1524917 d!453454))

(declare-fun d!453456 () Bool)

(declare-fun e!975069 () Bool)

(assert (=> d!453456 e!975069))

(declare-fun res!684918 () Bool)

(assert (=> d!453456 (=> (not res!684918) (not e!975069))))

(declare-fun lt!529940 () List!16223)

(assert (=> d!453456 (= res!684918 (= (content!2327 lt!529940) ((_ map or) (content!2327 lt!529882) (content!2327 lt!529896))))))

(declare-fun e!975070 () List!16223)

(assert (=> d!453456 (= lt!529940 e!975070)))

(declare-fun c!249965 () Bool)

(assert (=> d!453456 (= c!249965 ((_ is Nil!16155) lt!529882))))

(assert (=> d!453456 (= (++!4381 lt!529882 lt!529896) lt!529940)))

(declare-fun b!1525005 () Bool)

(declare-fun res!684917 () Bool)

(assert (=> b!1525005 (=> (not res!684917) (not e!975069))))

(assert (=> b!1525005 (= res!684917 (= (size!13070 lt!529940) (+ (size!13070 lt!529882) (size!13070 lt!529896))))))

(declare-fun b!1525006 () Bool)

(assert (=> b!1525006 (= e!975069 (or (not (= lt!529896 Nil!16155)) (= lt!529940 lt!529882)))))

(declare-fun b!1525004 () Bool)

(assert (=> b!1525004 (= e!975070 (Cons!16155 (h!21556 lt!529882) (++!4381 (t!139965 lt!529882) lt!529896)))))

(declare-fun b!1525003 () Bool)

(assert (=> b!1525003 (= e!975070 lt!529896)))

(assert (= (and d!453456 c!249965) b!1525003))

(assert (= (and d!453456 (not c!249965)) b!1525004))

(assert (= (and d!453456 res!684918) b!1525005))

(assert (= (and b!1525005 res!684917) b!1525006))

(declare-fun m!1795468 () Bool)

(assert (=> d!453456 m!1795468))

(assert (=> d!453456 m!1795438))

(declare-fun m!1795470 () Bool)

(assert (=> d!453456 m!1795470))

(declare-fun m!1795472 () Bool)

(assert (=> b!1525005 m!1795472))

(assert (=> b!1525005 m!1795442))

(declare-fun m!1795474 () Bool)

(assert (=> b!1525005 m!1795474))

(declare-fun m!1795476 () Bool)

(assert (=> b!1525004 m!1795476))

(assert (=> b!1524917 d!453456))

(declare-fun b!1525023 () Bool)

(declare-fun e!975086 () Bool)

(declare-fun e!975087 () Bool)

(assert (=> b!1525023 (= e!975086 e!975087)))

(declare-fun res!684934 () Bool)

(assert (=> b!1525023 (=> (not res!684934) (not e!975087))))

(declare-fun lt!529955 () Option!2941)

(declare-fun get!4751 (Option!2941) tuple2!15092)

(declare-datatypes ((tuple2!15094 0))(
  ( (tuple2!15095 (_1!8597 Token!5366) (_2!8597 List!16218)) )
))
(declare-datatypes ((Option!2942 0))(
  ( (None!2941) (Some!2941 (v!22973 tuple2!15094)) )
))
(declare-fun get!4752 (Option!2942) tuple2!15094)

(declare-fun maxPrefixZipper!264 (LexerInterface!2504 List!16224 List!16218) Option!2942)

(assert (=> b!1525023 (= res!684934 (= (_1!8595 (get!4751 lt!529955)) (_1!8597 (get!4752 (maxPrefixZipper!264 thiss!13241 rules!1640 (list!6378 input!1102))))))))

(declare-fun d!453458 () Bool)

(declare-fun e!975088 () Bool)

(assert (=> d!453458 e!975088))

(declare-fun res!684931 () Bool)

(assert (=> d!453458 (=> (not res!684931) (not e!975088))))

(declare-fun isDefined!2363 (Option!2941) Bool)

(declare-fun isDefined!2364 (Option!2942) Bool)

(assert (=> d!453458 (= res!684931 (= (isDefined!2363 lt!529955) (isDefined!2364 (maxPrefixZipper!264 thiss!13241 rules!1640 (list!6378 input!1102)))))))

(declare-fun e!975085 () Option!2941)

(assert (=> d!453458 (= lt!529955 e!975085)))

(declare-fun c!249968 () Bool)

(assert (=> d!453458 (= c!249968 (and ((_ is Cons!16156) rules!1640) ((_ is Nil!16156) (t!139966 rules!1640))))))

(declare-fun lt!529961 () Unit!25779)

(declare-fun lt!529958 () Unit!25779)

(assert (=> d!453458 (= lt!529961 lt!529958)))

(declare-fun lt!529959 () List!16218)

(declare-fun lt!529960 () List!16218)

(declare-fun isPrefix!1223 (List!16218 List!16218) Bool)

(assert (=> d!453458 (isPrefix!1223 lt!529959 lt!529960)))

(declare-fun lemmaIsPrefixRefl!853 (List!16218 List!16218) Unit!25779)

(assert (=> d!453458 (= lt!529958 (lemmaIsPrefixRefl!853 lt!529959 lt!529960))))

(assert (=> d!453458 (= lt!529960 (list!6378 input!1102))))

(assert (=> d!453458 (= lt!529959 (list!6378 input!1102))))

(declare-fun rulesValidInductive!861 (LexerInterface!2504 List!16224) Bool)

(assert (=> d!453458 (rulesValidInductive!861 thiss!13241 rules!1640)))

(assert (=> d!453458 (= (maxPrefixZipperSequence!595 thiss!13241 rules!1640 input!1102) lt!529955)))

(declare-fun b!1525024 () Bool)

(declare-fun e!975084 () Bool)

(declare-fun maxPrefix!1213 (LexerInterface!2504 List!16224 List!16218) Option!2942)

(assert (=> b!1525024 (= e!975084 (= (list!6378 (_2!8595 (get!4751 lt!529955))) (_2!8597 (get!4752 (maxPrefix!1213 thiss!13241 rules!1640 (list!6378 input!1102))))))))

(declare-fun b!1525025 () Bool)

(declare-fun lt!529956 () Option!2941)

(declare-fun lt!529957 () Option!2941)

(assert (=> b!1525025 (= e!975085 (ite (and ((_ is None!2940) lt!529956) ((_ is None!2940) lt!529957)) None!2940 (ite ((_ is None!2940) lt!529957) lt!529956 (ite ((_ is None!2940) lt!529956) lt!529957 (ite (>= (size!13067 (_1!8595 (v!22970 lt!529956))) (size!13067 (_1!8595 (v!22970 lt!529957)))) lt!529956 lt!529957)))))))

(declare-fun call!100993 () Option!2941)

(assert (=> b!1525025 (= lt!529956 call!100993)))

(assert (=> b!1525025 (= lt!529957 (maxPrefixZipperSequence!595 thiss!13241 (t!139966 rules!1640) input!1102))))

(declare-fun b!1525026 () Bool)

(assert (=> b!1525026 (= e!975085 call!100993)))

(declare-fun b!1525027 () Bool)

(declare-fun e!975083 () Bool)

(assert (=> b!1525027 (= e!975083 e!975084)))

(declare-fun res!684933 () Bool)

(assert (=> b!1525027 (=> (not res!684933) (not e!975084))))

(assert (=> b!1525027 (= res!684933 (= (_1!8595 (get!4751 lt!529955)) (_1!8597 (get!4752 (maxPrefix!1213 thiss!13241 rules!1640 (list!6378 input!1102))))))))

(declare-fun bm!100988 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!283 (LexerInterface!2504 Rule!5504 BalanceConc!10854) Option!2941)

(assert (=> bm!100988 (= call!100993 (maxPrefixOneRuleZipperSequence!283 thiss!13241 (h!21557 rules!1640) input!1102))))

(declare-fun b!1525028 () Bool)

(declare-fun res!684936 () Bool)

(assert (=> b!1525028 (=> (not res!684936) (not e!975088))))

(assert (=> b!1525028 (= res!684936 e!975086)))

(declare-fun res!684935 () Bool)

(assert (=> b!1525028 (=> res!684935 e!975086)))

(assert (=> b!1525028 (= res!684935 (not (isDefined!2363 lt!529955)))))

(declare-fun b!1525029 () Bool)

(assert (=> b!1525029 (= e!975087 (= (list!6378 (_2!8595 (get!4751 lt!529955))) (_2!8597 (get!4752 (maxPrefixZipper!264 thiss!13241 rules!1640 (list!6378 input!1102))))))))

(declare-fun b!1525030 () Bool)

(assert (=> b!1525030 (= e!975088 e!975083)))

(declare-fun res!684932 () Bool)

(assert (=> b!1525030 (=> res!684932 e!975083)))

(assert (=> b!1525030 (= res!684932 (not (isDefined!2363 lt!529955)))))

(assert (= (and d!453458 c!249968) b!1525026))

(assert (= (and d!453458 (not c!249968)) b!1525025))

(assert (= (or b!1525026 b!1525025) bm!100988))

(assert (= (and d!453458 res!684931) b!1525028))

(assert (= (and b!1525028 (not res!684935)) b!1525023))

(assert (= (and b!1525023 res!684934) b!1525029))

(assert (= (and b!1525028 res!684936) b!1525030))

(assert (= (and b!1525030 (not res!684932)) b!1525027))

(assert (= (and b!1525027 res!684933) b!1525024))

(declare-fun m!1795478 () Bool)

(assert (=> bm!100988 m!1795478))

(declare-fun m!1795480 () Bool)

(assert (=> b!1525028 m!1795480))

(assert (=> d!453458 m!1795210))

(declare-fun m!1795482 () Bool)

(assert (=> d!453458 m!1795482))

(declare-fun m!1795484 () Bool)

(assert (=> d!453458 m!1795484))

(assert (=> d!453458 m!1795210))

(declare-fun m!1795486 () Bool)

(assert (=> d!453458 m!1795486))

(declare-fun m!1795488 () Bool)

(assert (=> d!453458 m!1795488))

(assert (=> d!453458 m!1795486))

(declare-fun m!1795490 () Bool)

(assert (=> d!453458 m!1795490))

(assert (=> d!453458 m!1795480))

(declare-fun m!1795492 () Bool)

(assert (=> b!1525023 m!1795492))

(assert (=> b!1525023 m!1795210))

(assert (=> b!1525023 m!1795210))

(assert (=> b!1525023 m!1795486))

(assert (=> b!1525023 m!1795486))

(declare-fun m!1795494 () Bool)

(assert (=> b!1525023 m!1795494))

(assert (=> b!1525030 m!1795480))

(assert (=> b!1525027 m!1795492))

(assert (=> b!1525027 m!1795210))

(assert (=> b!1525027 m!1795210))

(declare-fun m!1795496 () Bool)

(assert (=> b!1525027 m!1795496))

(assert (=> b!1525027 m!1795496))

(declare-fun m!1795498 () Bool)

(assert (=> b!1525027 m!1795498))

(assert (=> b!1525029 m!1795210))

(assert (=> b!1525029 m!1795210))

(assert (=> b!1525029 m!1795486))

(assert (=> b!1525029 m!1795492))

(assert (=> b!1525029 m!1795486))

(assert (=> b!1525029 m!1795494))

(declare-fun m!1795500 () Bool)

(assert (=> b!1525029 m!1795500))

(assert (=> b!1525024 m!1795500))

(assert (=> b!1525024 m!1795210))

(assert (=> b!1525024 m!1795210))

(assert (=> b!1525024 m!1795496))

(assert (=> b!1525024 m!1795496))

(assert (=> b!1525024 m!1795498))

(assert (=> b!1525024 m!1795492))

(declare-fun m!1795502 () Bool)

(assert (=> b!1525025 m!1795502))

(assert (=> b!1524917 d!453458))

(declare-fun d!453460 () Bool)

(assert (=> d!453460 (= (list!6378 (_2!8595 (v!22970 (_1!8596 lt!529908)))) (list!6380 (c!249943 (_2!8595 (v!22970 (_1!8596 lt!529908))))))))

(declare-fun bs!374055 () Bool)

(assert (= bs!374055 d!453460))

(declare-fun m!1795504 () Bool)

(assert (=> bs!374055 m!1795504))

(assert (=> b!1524917 d!453460))

(declare-fun d!453462 () Bool)

(assert (=> d!453462 (= (list!6379 (append!513 acc!392 (_1!8595 (v!22970 (_1!8596 lt!529908))))) (list!6381 (c!249944 (append!513 acc!392 (_1!8595 (v!22970 (_1!8596 lt!529908)))))))))

(declare-fun bs!374056 () Bool)

(assert (= bs!374056 d!453462))

(declare-fun m!1795506 () Bool)

(assert (=> bs!374056 m!1795506))

(assert (=> b!1524917 d!453462))

(declare-fun d!453464 () Bool)

(declare-fun e!975089 () Bool)

(assert (=> d!453464 e!975089))

(declare-fun res!684938 () Bool)

(assert (=> d!453464 (=> (not res!684938) (not e!975089))))

(declare-fun lt!529962 () List!16223)

(assert (=> d!453464 (= res!684938 (= (content!2327 lt!529962) ((_ map or) (content!2327 (++!4381 lt!529890 lt!529882)) (content!2327 lt!529896))))))

(declare-fun e!975090 () List!16223)

(assert (=> d!453464 (= lt!529962 e!975090)))

(declare-fun c!249969 () Bool)

(assert (=> d!453464 (= c!249969 ((_ is Nil!16155) (++!4381 lt!529890 lt!529882)))))

(assert (=> d!453464 (= (++!4381 (++!4381 lt!529890 lt!529882) lt!529896) lt!529962)))

(declare-fun b!1525033 () Bool)

(declare-fun res!684937 () Bool)

(assert (=> b!1525033 (=> (not res!684937) (not e!975089))))

(assert (=> b!1525033 (= res!684937 (= (size!13070 lt!529962) (+ (size!13070 (++!4381 lt!529890 lt!529882)) (size!13070 lt!529896))))))

(declare-fun b!1525034 () Bool)

(assert (=> b!1525034 (= e!975089 (or (not (= lt!529896 Nil!16155)) (= lt!529962 (++!4381 lt!529890 lt!529882))))))

(declare-fun b!1525032 () Bool)

(assert (=> b!1525032 (= e!975090 (Cons!16155 (h!21556 (++!4381 lt!529890 lt!529882)) (++!4381 (t!139965 (++!4381 lt!529890 lt!529882)) lt!529896)))))

(declare-fun b!1525031 () Bool)

(assert (=> b!1525031 (= e!975090 lt!529896)))

(assert (= (and d!453464 c!249969) b!1525031))

(assert (= (and d!453464 (not c!249969)) b!1525032))

(assert (= (and d!453464 res!684938) b!1525033))

(assert (= (and b!1525033 res!684937) b!1525034))

(declare-fun m!1795508 () Bool)

(assert (=> d!453464 m!1795508))

(assert (=> d!453464 m!1795292))

(declare-fun m!1795510 () Bool)

(assert (=> d!453464 m!1795510))

(assert (=> d!453464 m!1795470))

(declare-fun m!1795512 () Bool)

(assert (=> b!1525033 m!1795512))

(assert (=> b!1525033 m!1795292))

(declare-fun m!1795514 () Bool)

(assert (=> b!1525033 m!1795514))

(assert (=> b!1525033 m!1795474))

(declare-fun m!1795516 () Bool)

(assert (=> b!1525032 m!1795516))

(assert (=> b!1524917 d!453464))

(declare-fun d!453466 () Bool)

(declare-fun validCacheMapFurthestNullable!52 (MutableMap!1449 BalanceConc!10854) Bool)

(assert (=> d!453466 (= (valid!1215 cacheFurthestNullable!64) (validCacheMapFurthestNullable!52 (cache!1830 cacheFurthestNullable!64) (totalInput!2319 cacheFurthestNullable!64)))))

(declare-fun bs!374057 () Bool)

(assert (= bs!374057 d!453466))

(declare-fun m!1795518 () Bool)

(assert (=> bs!374057 m!1795518))

(assert (=> b!1524879 d!453466))

(declare-fun d!453468 () Bool)

(assert (=> d!453468 (= (array_inv!1698 (_keys!1798 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616))))))) (bvsge (size!13064 (_keys!1798 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1524878 d!453468))

(declare-fun d!453470 () Bool)

(assert (=> d!453470 (= (array_inv!1699 (_values!1783 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616))))))) (bvsge (size!13065 (_values!1783 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1524878 d!453470))

(declare-fun d!453472 () Bool)

(assert (=> d!453472 (= (isEmpty!9967 lt!529885) ((_ is Nil!16150) lt!529885))))

(assert (=> b!1524877 d!453472))

(declare-fun d!453474 () Bool)

(assert (=> d!453474 (= (array_inv!1698 (_keys!1800 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629))))))) (bvsge (size!13064 (_keys!1800 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1524902 d!453474))

(declare-fun d!453476 () Bool)

(assert (=> d!453476 (= (array_inv!1701 (_values!1785 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629))))))) (bvsge (size!13068 (_values!1785 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1524902 d!453476))

(declare-fun d!453478 () Bool)

(declare-fun c!249970 () Bool)

(assert (=> d!453478 (= c!249970 ((_ is Node!5456) (c!249943 treated!70)))))

(declare-fun e!975091 () Bool)

(assert (=> d!453478 (= (inv!21399 (c!249943 treated!70)) e!975091)))

(declare-fun b!1525035 () Bool)

(assert (=> b!1525035 (= e!975091 (inv!21407 (c!249943 treated!70)))))

(declare-fun b!1525036 () Bool)

(declare-fun e!975092 () Bool)

(assert (=> b!1525036 (= e!975091 e!975092)))

(declare-fun res!684939 () Bool)

(assert (=> b!1525036 (= res!684939 (not ((_ is Leaf!8086) (c!249943 treated!70))))))

(assert (=> b!1525036 (=> res!684939 e!975092)))

(declare-fun b!1525037 () Bool)

(assert (=> b!1525037 (= e!975092 (inv!21408 (c!249943 treated!70)))))

(assert (= (and d!453478 c!249970) b!1525035))

(assert (= (and d!453478 (not c!249970)) b!1525036))

(assert (= (and b!1525036 (not res!684939)) b!1525037))

(declare-fun m!1795520 () Bool)

(assert (=> b!1525035 m!1795520))

(declare-fun m!1795522 () Bool)

(assert (=> b!1525037 m!1795522))

(assert (=> b!1524919 d!453478))

(declare-fun d!453480 () Bool)

(declare-fun e!975095 () Bool)

(assert (=> d!453480 e!975095))

(declare-fun res!684942 () Bool)

(assert (=> d!453480 (=> (not res!684942) (not e!975095))))

(declare-fun prepend!477 (Conc!5457 Token!5366) Conc!5457)

(assert (=> d!453480 (= res!684942 (isBalanced!1617 (prepend!477 (c!249944 (_1!8592 lt!529894)) (_1!8595 (v!22970 lt!529905)))))))

(declare-fun lt!529965 () BalanceConc!10856)

(assert (=> d!453480 (= lt!529965 (BalanceConc!10857 (prepend!477 (c!249944 (_1!8592 lt!529894)) (_1!8595 (v!22970 lt!529905)))))))

(assert (=> d!453480 (= (prepend!476 (_1!8592 lt!529894) (_1!8595 (v!22970 lt!529905))) lt!529965)))

(declare-fun b!1525040 () Bool)

(assert (=> b!1525040 (= e!975095 (= (list!6379 lt!529965) (Cons!16155 (_1!8595 (v!22970 lt!529905)) (list!6379 (_1!8592 lt!529894)))))))

(assert (= (and d!453480 res!684942) b!1525040))

(declare-fun m!1795524 () Bool)

(assert (=> d!453480 m!1795524))

(assert (=> d!453480 m!1795524))

(declare-fun m!1795526 () Bool)

(assert (=> d!453480 m!1795526))

(declare-fun m!1795528 () Bool)

(assert (=> b!1525040 m!1795528))

(declare-fun m!1795530 () Bool)

(assert (=> b!1525040 m!1795530))

(assert (=> b!1524901 d!453480))

(declare-fun d!453482 () Bool)

(declare-fun e!975099 () Bool)

(assert (=> d!453482 e!975099))

(declare-fun res!684944 () Bool)

(assert (=> d!453482 (=> (not res!684944) (not e!975099))))

(declare-fun e!975097 () Bool)

(assert (=> d!453482 (= res!684944 e!975097)))

(declare-fun c!249972 () Bool)

(declare-fun lt!529967 () tuple2!15088)

(assert (=> d!453482 (= c!249972 (> (size!13071 (_1!8592 lt!529967)) 0))))

(declare-fun e!975096 () tuple2!15088)

(assert (=> d!453482 (= lt!529967 e!975096)))

(declare-fun c!249973 () Bool)

(declare-fun lt!529966 () Option!2941)

(assert (=> d!453482 (= c!249973 ((_ is Some!2940) lt!529966))))

(assert (=> d!453482 (= lt!529966 (maxPrefixZipperSequence!595 thiss!13241 rules!1640 (_2!8595 (v!22970 lt!529905))))))

(assert (=> d!453482 (= (lexRec!338 thiss!13241 rules!1640 (_2!8595 (v!22970 lt!529905))) lt!529967)))

(declare-fun b!1525041 () Bool)

(assert (=> b!1525041 (= e!975099 (= (list!6378 (_2!8592 lt!529967)) (_2!8591 (lexList!752 thiss!13241 rules!1640 (list!6378 (_2!8595 (v!22970 lt!529905)))))))))

(declare-fun b!1525042 () Bool)

(declare-fun e!975098 () Bool)

(assert (=> b!1525042 (= e!975098 (not (isEmpty!9970 (_1!8592 lt!529967))))))

(declare-fun b!1525043 () Bool)

(declare-fun lt!529968 () tuple2!15088)

(assert (=> b!1525043 (= e!975096 (tuple2!15089 (prepend!476 (_1!8592 lt!529968) (_1!8595 (v!22970 lt!529966))) (_2!8592 lt!529968)))))

(assert (=> b!1525043 (= lt!529968 (lexRec!338 thiss!13241 rules!1640 (_2!8595 (v!22970 lt!529966))))))

(declare-fun b!1525044 () Bool)

(assert (=> b!1525044 (= e!975097 e!975098)))

(declare-fun res!684945 () Bool)

(assert (=> b!1525044 (= res!684945 (< (size!13072 (_2!8592 lt!529967)) (size!13072 (_2!8595 (v!22970 lt!529905)))))))

(assert (=> b!1525044 (=> (not res!684945) (not e!975098))))

(declare-fun b!1525045 () Bool)

(assert (=> b!1525045 (= e!975096 (tuple2!15089 (BalanceConc!10857 Empty!5457) (_2!8595 (v!22970 lt!529905))))))

(declare-fun b!1525046 () Bool)

(declare-fun res!684943 () Bool)

(assert (=> b!1525046 (=> (not res!684943) (not e!975099))))

(assert (=> b!1525046 (= res!684943 (= (list!6379 (_1!8592 lt!529967)) (_1!8591 (lexList!752 thiss!13241 rules!1640 (list!6378 (_2!8595 (v!22970 lt!529905)))))))))

(declare-fun b!1525047 () Bool)

(assert (=> b!1525047 (= e!975097 (= (list!6378 (_2!8592 lt!529967)) (list!6378 (_2!8595 (v!22970 lt!529905)))))))

(assert (= (and d!453482 c!249973) b!1525043))

(assert (= (and d!453482 (not c!249973)) b!1525045))

(assert (= (and d!453482 c!249972) b!1525044))

(assert (= (and d!453482 (not c!249972)) b!1525047))

(assert (= (and b!1525044 res!684945) b!1525042))

(assert (= (and d!453482 res!684944) b!1525046))

(assert (= (and b!1525046 res!684943) b!1525041))

(declare-fun m!1795532 () Bool)

(assert (=> b!1525046 m!1795532))

(declare-fun m!1795534 () Bool)

(assert (=> b!1525046 m!1795534))

(assert (=> b!1525046 m!1795534))

(declare-fun m!1795536 () Bool)

(assert (=> b!1525046 m!1795536))

(declare-fun m!1795538 () Bool)

(assert (=> b!1525044 m!1795538))

(declare-fun m!1795540 () Bool)

(assert (=> b!1525044 m!1795540))

(declare-fun m!1795542 () Bool)

(assert (=> b!1525043 m!1795542))

(declare-fun m!1795544 () Bool)

(assert (=> b!1525043 m!1795544))

(declare-fun m!1795546 () Bool)

(assert (=> b!1525041 m!1795546))

(assert (=> b!1525041 m!1795534))

(assert (=> b!1525041 m!1795534))

(assert (=> b!1525041 m!1795536))

(declare-fun m!1795548 () Bool)

(assert (=> d!453482 m!1795548))

(declare-fun m!1795550 () Bool)

(assert (=> d!453482 m!1795550))

(assert (=> b!1525047 m!1795546))

(assert (=> b!1525047 m!1795534))

(declare-fun m!1795552 () Bool)

(assert (=> b!1525042 m!1795552))

(assert (=> b!1524901 d!453482))

(declare-fun b!1525058 () Bool)

(declare-fun e!975107 () Bool)

(declare-fun lt!529975 () tuple2!15086)

(assert (=> b!1525058 (= e!975107 (not (isEmpty!9969 (_1!8591 lt!529975))))))

(declare-fun b!1525059 () Bool)

(declare-fun e!975106 () Bool)

(assert (=> b!1525059 (= e!975106 (= (_2!8591 lt!529975) lt!529904))))

(declare-fun b!1525060 () Bool)

(assert (=> b!1525060 (= e!975106 e!975107)))

(declare-fun res!684948 () Bool)

(assert (=> b!1525060 (= res!684948 (< (size!13069 (_2!8591 lt!529975)) (size!13069 lt!529904)))))

(assert (=> b!1525060 (=> (not res!684948) (not e!975107))))

(declare-fun d!453484 () Bool)

(assert (=> d!453484 e!975106))

(declare-fun c!249978 () Bool)

(assert (=> d!453484 (= c!249978 (> (size!13070 (_1!8591 lt!529975)) 0))))

(declare-fun e!975108 () tuple2!15086)

(assert (=> d!453484 (= lt!529975 e!975108)))

(declare-fun c!249979 () Bool)

(declare-fun lt!529977 () Option!2942)

(assert (=> d!453484 (= c!249979 ((_ is Some!2941) lt!529977))))

(assert (=> d!453484 (= lt!529977 (maxPrefix!1213 thiss!13241 rules!1640 lt!529904))))

(assert (=> d!453484 (= (lexList!752 thiss!13241 rules!1640 lt!529904) lt!529975)))

(declare-fun b!1525061 () Bool)

(assert (=> b!1525061 (= e!975108 (tuple2!15087 Nil!16155 lt!529904))))

(declare-fun b!1525062 () Bool)

(declare-fun lt!529976 () tuple2!15086)

(assert (=> b!1525062 (= e!975108 (tuple2!15087 (Cons!16155 (_1!8597 (v!22973 lt!529977)) (_1!8591 lt!529976)) (_2!8591 lt!529976)))))

(assert (=> b!1525062 (= lt!529976 (lexList!752 thiss!13241 rules!1640 (_2!8597 (v!22973 lt!529977))))))

(assert (= (and d!453484 c!249979) b!1525062))

(assert (= (and d!453484 (not c!249979)) b!1525061))

(assert (= (and d!453484 c!249978) b!1525060))

(assert (= (and d!453484 (not c!249978)) b!1525059))

(assert (= (and b!1525060 res!684948) b!1525058))

(declare-fun m!1795554 () Bool)

(assert (=> b!1525058 m!1795554))

(declare-fun m!1795556 () Bool)

(assert (=> b!1525060 m!1795556))

(declare-fun m!1795558 () Bool)

(assert (=> b!1525060 m!1795558))

(declare-fun m!1795560 () Bool)

(assert (=> d!453484 m!1795560))

(declare-fun m!1795562 () Bool)

(assert (=> d!453484 m!1795562))

(declare-fun m!1795564 () Bool)

(assert (=> b!1525062 m!1795564))

(assert (=> b!1524880 d!453484))

(declare-fun d!453486 () Bool)

(declare-fun e!975109 () Bool)

(assert (=> d!453486 e!975109))

(declare-fun res!684950 () Bool)

(assert (=> d!453486 (=> (not res!684950) (not e!975109))))

(declare-fun lt!529978 () List!16223)

(assert (=> d!453486 (= res!684950 (= (content!2327 lt!529978) ((_ map or) (content!2327 lt!529883) (content!2327 lt!529896))))))

(declare-fun e!975110 () List!16223)

(assert (=> d!453486 (= lt!529978 e!975110)))

(declare-fun c!249980 () Bool)

(assert (=> d!453486 (= c!249980 ((_ is Nil!16155) lt!529883))))

(assert (=> d!453486 (= (++!4381 lt!529883 lt!529896) lt!529978)))

(declare-fun b!1525065 () Bool)

(declare-fun res!684949 () Bool)

(assert (=> b!1525065 (=> (not res!684949) (not e!975109))))

(assert (=> b!1525065 (= res!684949 (= (size!13070 lt!529978) (+ (size!13070 lt!529883) (size!13070 lt!529896))))))

(declare-fun b!1525066 () Bool)

(assert (=> b!1525066 (= e!975109 (or (not (= lt!529896 Nil!16155)) (= lt!529978 lt!529883)))))

(declare-fun b!1525064 () Bool)

(assert (=> b!1525064 (= e!975110 (Cons!16155 (h!21556 lt!529883) (++!4381 (t!139965 lt!529883) lt!529896)))))

(declare-fun b!1525063 () Bool)

(assert (=> b!1525063 (= e!975110 lt!529896)))

(assert (= (and d!453486 c!249980) b!1525063))

(assert (= (and d!453486 (not c!249980)) b!1525064))

(assert (= (and d!453486 res!684950) b!1525065))

(assert (= (and b!1525065 res!684949) b!1525066))

(declare-fun m!1795566 () Bool)

(assert (=> d!453486 m!1795566))

(declare-fun m!1795568 () Bool)

(assert (=> d!453486 m!1795568))

(assert (=> d!453486 m!1795470))

(declare-fun m!1795570 () Bool)

(assert (=> b!1525065 m!1795570))

(declare-fun m!1795572 () Bool)

(assert (=> b!1525065 m!1795572))

(assert (=> b!1525065 m!1795474))

(declare-fun m!1795574 () Bool)

(assert (=> b!1525064 m!1795574))

(assert (=> b!1524880 d!453486))

(declare-fun d!453488 () Bool)

(declare-fun validCacheMapUp!139 (MutableMap!1448) Bool)

(assert (=> d!453488 (= (valid!1216 cacheUp!616) (validCacheMapUp!139 (cache!1829 cacheUp!616)))))

(declare-fun bs!374058 () Bool)

(assert (= bs!374058 d!453488))

(declare-fun m!1795576 () Bool)

(assert (=> bs!374058 m!1795576))

(assert (=> b!1524900 d!453488))

(declare-fun d!453490 () Bool)

(declare-fun c!249981 () Bool)

(assert (=> d!453490 (= c!249981 ((_ is Node!5456) (c!249943 totalInput!458)))))

(declare-fun e!975111 () Bool)

(assert (=> d!453490 (= (inv!21399 (c!249943 totalInput!458)) e!975111)))

(declare-fun b!1525067 () Bool)

(assert (=> b!1525067 (= e!975111 (inv!21407 (c!249943 totalInput!458)))))

(declare-fun b!1525068 () Bool)

(declare-fun e!975112 () Bool)

(assert (=> b!1525068 (= e!975111 e!975112)))

(declare-fun res!684951 () Bool)

(assert (=> b!1525068 (= res!684951 (not ((_ is Leaf!8086) (c!249943 totalInput!458))))))

(assert (=> b!1525068 (=> res!684951 e!975112)))

(declare-fun b!1525069 () Bool)

(assert (=> b!1525069 (= e!975112 (inv!21408 (c!249943 totalInput!458)))))

(assert (= (and d!453490 c!249981) b!1525067))

(assert (= (and d!453490 (not c!249981)) b!1525068))

(assert (= (and b!1525068 (not res!684951)) b!1525069))

(declare-fun m!1795578 () Bool)

(assert (=> b!1525067 m!1795578))

(declare-fun m!1795580 () Bool)

(assert (=> b!1525069 m!1795580))

(assert (=> b!1524921 d!453490))

(declare-fun b!1525070 () Bool)

(declare-fun e!975114 () Bool)

(declare-fun lt!529979 () tuple2!15086)

(assert (=> b!1525070 (= e!975114 (not (isEmpty!9969 (_1!8591 lt!529979))))))

(declare-fun b!1525071 () Bool)

(declare-fun e!975113 () Bool)

(assert (=> b!1525071 (= e!975113 (= (_2!8591 lt!529979) lt!529893))))

(declare-fun b!1525072 () Bool)

(assert (=> b!1525072 (= e!975113 e!975114)))

(declare-fun res!684952 () Bool)

(assert (=> b!1525072 (= res!684952 (< (size!13069 (_2!8591 lt!529979)) (size!13069 lt!529893)))))

(assert (=> b!1525072 (=> (not res!684952) (not e!975114))))

(declare-fun d!453492 () Bool)

(assert (=> d!453492 e!975113))

(declare-fun c!249982 () Bool)

(assert (=> d!453492 (= c!249982 (> (size!13070 (_1!8591 lt!529979)) 0))))

(declare-fun e!975115 () tuple2!15086)

(assert (=> d!453492 (= lt!529979 e!975115)))

(declare-fun c!249983 () Bool)

(declare-fun lt!529981 () Option!2942)

(assert (=> d!453492 (= c!249983 ((_ is Some!2941) lt!529981))))

(assert (=> d!453492 (= lt!529981 (maxPrefix!1213 thiss!13241 rules!1640 lt!529893))))

(assert (=> d!453492 (= (lexList!752 thiss!13241 rules!1640 lt!529893) lt!529979)))

(declare-fun b!1525073 () Bool)

(assert (=> b!1525073 (= e!975115 (tuple2!15087 Nil!16155 lt!529893))))

(declare-fun b!1525074 () Bool)

(declare-fun lt!529980 () tuple2!15086)

(assert (=> b!1525074 (= e!975115 (tuple2!15087 (Cons!16155 (_1!8597 (v!22973 lt!529981)) (_1!8591 lt!529980)) (_2!8591 lt!529980)))))

(assert (=> b!1525074 (= lt!529980 (lexList!752 thiss!13241 rules!1640 (_2!8597 (v!22973 lt!529981))))))

(assert (= (and d!453492 c!249983) b!1525074))

(assert (= (and d!453492 (not c!249983)) b!1525073))

(assert (= (and d!453492 c!249982) b!1525072))

(assert (= (and d!453492 (not c!249982)) b!1525071))

(assert (= (and b!1525072 res!684952) b!1525070))

(declare-fun m!1795582 () Bool)

(assert (=> b!1525070 m!1795582))

(declare-fun m!1795584 () Bool)

(assert (=> b!1525072 m!1795584))

(assert (=> b!1525072 m!1795356))

(declare-fun m!1795586 () Bool)

(assert (=> d!453492 m!1795586))

(declare-fun m!1795588 () Bool)

(assert (=> d!453492 m!1795588))

(declare-fun m!1795590 () Bool)

(assert (=> b!1525074 m!1795590))

(assert (=> b!1524903 d!453492))

(declare-fun d!453494 () Bool)

(assert (=> d!453494 (= (isEmpty!9967 (list!6378 (_2!8592 lt!529902))) ((_ is Nil!16150) (list!6378 (_2!8592 lt!529902))))))

(assert (=> b!1524883 d!453494))

(declare-fun d!453496 () Bool)

(assert (=> d!453496 (= (list!6378 (_2!8592 lt!529902)) (list!6380 (c!249943 (_2!8592 lt!529902))))))

(declare-fun bs!374059 () Bool)

(assert (= bs!374059 d!453496))

(declare-fun m!1795592 () Bool)

(assert (=> bs!374059 m!1795592))

(assert (=> b!1524883 d!453496))

(declare-fun b!1525076 () Bool)

(declare-fun e!975116 () List!16218)

(assert (=> b!1525076 (= e!975116 (Cons!16150 (h!21551 lt!529898) (++!4383 (t!139960 lt!529898) lt!529889)))))

(declare-fun e!975117 () Bool)

(declare-fun lt!529982 () List!16218)

(declare-fun b!1525078 () Bool)

(assert (=> b!1525078 (= e!975117 (or (not (= lt!529889 Nil!16150)) (= lt!529982 lt!529898)))))

(declare-fun b!1525077 () Bool)

(declare-fun res!684954 () Bool)

(assert (=> b!1525077 (=> (not res!684954) (not e!975117))))

(assert (=> b!1525077 (= res!684954 (= (size!13069 lt!529982) (+ (size!13069 lt!529898) (size!13069 lt!529889))))))

(declare-fun d!453498 () Bool)

(assert (=> d!453498 e!975117))

(declare-fun res!684953 () Bool)

(assert (=> d!453498 (=> (not res!684953) (not e!975117))))

(assert (=> d!453498 (= res!684953 (= (content!2326 lt!529982) ((_ map or) (content!2326 lt!529898) (content!2326 lt!529889))))))

(assert (=> d!453498 (= lt!529982 e!975116)))

(declare-fun c!249984 () Bool)

(assert (=> d!453498 (= c!249984 ((_ is Nil!16150) lt!529898))))

(assert (=> d!453498 (= (++!4383 lt!529898 lt!529889) lt!529982)))

(declare-fun b!1525075 () Bool)

(assert (=> b!1525075 (= e!975116 lt!529889)))

(assert (= (and d!453498 c!249984) b!1525075))

(assert (= (and d!453498 (not c!249984)) b!1525076))

(assert (= (and d!453498 res!684953) b!1525077))

(assert (= (and b!1525077 res!684954) b!1525078))

(declare-fun m!1795594 () Bool)

(assert (=> b!1525076 m!1795594))

(declare-fun m!1795596 () Bool)

(assert (=> b!1525077 m!1795596))

(assert (=> b!1525077 m!1795392))

(declare-fun m!1795598 () Bool)

(assert (=> b!1525077 m!1795598))

(declare-fun m!1795600 () Bool)

(assert (=> d!453498 m!1795600))

(assert (=> d!453498 m!1795398))

(declare-fun m!1795602 () Bool)

(assert (=> d!453498 m!1795602))

(assert (=> b!1524920 d!453498))

(declare-fun d!453500 () Bool)

(assert (=> d!453500 (= (list!6378 totalInput!458) (list!6380 (c!249943 totalInput!458)))))

(declare-fun bs!374060 () Bool)

(assert (= bs!374060 d!453500))

(declare-fun m!1795604 () Bool)

(assert (=> bs!374060 m!1795604))

(assert (=> b!1524920 d!453500))

(declare-fun d!453502 () Bool)

(assert (=> d!453502 (= (list!6378 input!1102) (list!6380 (c!249943 input!1102)))))

(declare-fun bs!374061 () Bool)

(assert (= bs!374061 d!453502))

(declare-fun m!1795606 () Bool)

(assert (=> bs!374061 m!1795606))

(assert (=> b!1524920 d!453502))

(declare-fun d!453504 () Bool)

(assert (=> d!453504 (= (list!6378 treated!70) (list!6380 (c!249943 treated!70)))))

(declare-fun bs!374062 () Bool)

(assert (= bs!374062 d!453504))

(declare-fun m!1795608 () Bool)

(assert (=> bs!374062 m!1795608))

(assert (=> b!1524920 d!453504))

(declare-fun d!453506 () Bool)

(declare-fun res!684957 () Bool)

(declare-fun e!975120 () Bool)

(assert (=> d!453506 (=> (not res!684957) (not e!975120))))

(declare-fun rulesValid!1046 (LexerInterface!2504 List!16224) Bool)

(assert (=> d!453506 (= res!684957 (rulesValid!1046 thiss!13241 rules!1640))))

(assert (=> d!453506 (= (rulesInvariant!2276 thiss!13241 rules!1640) e!975120)))

(declare-fun b!1525081 () Bool)

(declare-datatypes ((List!16226 0))(
  ( (Nil!16158) (Cons!16158 (h!21559 String!18976) (t!139972 List!16226)) )
))
(declare-fun noDuplicateTag!1046 (LexerInterface!2504 List!16224 List!16226) Bool)

(assert (=> b!1525081 (= e!975120 (noDuplicateTag!1046 thiss!13241 rules!1640 Nil!16158))))

(assert (= (and d!453506 res!684957) b!1525081))

(declare-fun m!1795610 () Bool)

(assert (=> d!453506 m!1795610))

(declare-fun m!1795612 () Bool)

(assert (=> b!1525081 m!1795612))

(assert (=> b!1524887 d!453506))

(declare-fun d!453508 () Bool)

(assert (=> d!453508 (= (list!6379 acc!392) (list!6381 (c!249944 acc!392)))))

(declare-fun bs!374063 () Bool)

(assert (= bs!374063 d!453508))

(declare-fun m!1795614 () Bool)

(assert (=> bs!374063 m!1795614))

(assert (=> b!1524923 d!453508))

(declare-fun d!453510 () Bool)

(assert (=> d!453510 (= (list!6379 (_1!8592 lt!529902)) (list!6381 (c!249944 (_1!8592 lt!529902))))))

(declare-fun bs!374064 () Bool)

(assert (= bs!374064 d!453510))

(declare-fun m!1795616 () Bool)

(assert (=> bs!374064 m!1795616))

(assert (=> b!1524923 d!453510))

(declare-fun d!453512 () Bool)

(declare-fun e!975124 () Bool)

(assert (=> d!453512 e!975124))

(declare-fun res!684959 () Bool)

(assert (=> d!453512 (=> (not res!684959) (not e!975124))))

(declare-fun e!975122 () Bool)

(assert (=> d!453512 (= res!684959 e!975122)))

(declare-fun c!249985 () Bool)

(declare-fun lt!529984 () tuple2!15088)

(assert (=> d!453512 (= c!249985 (> (size!13071 (_1!8592 lt!529984)) 0))))

(declare-fun e!975121 () tuple2!15088)

(assert (=> d!453512 (= lt!529984 e!975121)))

(declare-fun c!249986 () Bool)

(declare-fun lt!529983 () Option!2941)

(assert (=> d!453512 (= c!249986 ((_ is Some!2940) lt!529983))))

(assert (=> d!453512 (= lt!529983 (maxPrefixZipperSequence!595 thiss!13241 rules!1640 treated!70))))

(assert (=> d!453512 (= (lexRec!338 thiss!13241 rules!1640 treated!70) lt!529984)))

(declare-fun b!1525082 () Bool)

(assert (=> b!1525082 (= e!975124 (= (list!6378 (_2!8592 lt!529984)) (_2!8591 (lexList!752 thiss!13241 rules!1640 (list!6378 treated!70)))))))

(declare-fun b!1525083 () Bool)

(declare-fun e!975123 () Bool)

(assert (=> b!1525083 (= e!975123 (not (isEmpty!9970 (_1!8592 lt!529984))))))

(declare-fun b!1525084 () Bool)

(declare-fun lt!529985 () tuple2!15088)

(assert (=> b!1525084 (= e!975121 (tuple2!15089 (prepend!476 (_1!8592 lt!529985) (_1!8595 (v!22970 lt!529983))) (_2!8592 lt!529985)))))

(assert (=> b!1525084 (= lt!529985 (lexRec!338 thiss!13241 rules!1640 (_2!8595 (v!22970 lt!529983))))))

(declare-fun b!1525085 () Bool)

(assert (=> b!1525085 (= e!975122 e!975123)))

(declare-fun res!684960 () Bool)

(assert (=> b!1525085 (= res!684960 (< (size!13072 (_2!8592 lt!529984)) (size!13072 treated!70)))))

(assert (=> b!1525085 (=> (not res!684960) (not e!975123))))

(declare-fun b!1525086 () Bool)

(assert (=> b!1525086 (= e!975121 (tuple2!15089 (BalanceConc!10857 Empty!5457) treated!70))))

(declare-fun b!1525087 () Bool)

(declare-fun res!684958 () Bool)

(assert (=> b!1525087 (=> (not res!684958) (not e!975124))))

(assert (=> b!1525087 (= res!684958 (= (list!6379 (_1!8592 lt!529984)) (_1!8591 (lexList!752 thiss!13241 rules!1640 (list!6378 treated!70)))))))

(declare-fun b!1525088 () Bool)

(assert (=> b!1525088 (= e!975122 (= (list!6378 (_2!8592 lt!529984)) (list!6378 treated!70)))))

(assert (= (and d!453512 c!249986) b!1525084))

(assert (= (and d!453512 (not c!249986)) b!1525086))

(assert (= (and d!453512 c!249985) b!1525085))

(assert (= (and d!453512 (not c!249985)) b!1525088))

(assert (= (and b!1525085 res!684960) b!1525083))

(assert (= (and d!453512 res!684959) b!1525087))

(assert (= (and b!1525087 res!684958) b!1525082))

(declare-fun m!1795618 () Bool)

(assert (=> b!1525087 m!1795618))

(assert (=> b!1525087 m!1795212))

(assert (=> b!1525087 m!1795212))

(declare-fun m!1795620 () Bool)

(assert (=> b!1525087 m!1795620))

(declare-fun m!1795622 () Bool)

(assert (=> b!1525085 m!1795622))

(declare-fun m!1795624 () Bool)

(assert (=> b!1525085 m!1795624))

(declare-fun m!1795626 () Bool)

(assert (=> b!1525084 m!1795626))

(declare-fun m!1795628 () Bool)

(assert (=> b!1525084 m!1795628))

(declare-fun m!1795630 () Bool)

(assert (=> b!1525082 m!1795630))

(assert (=> b!1525082 m!1795212))

(assert (=> b!1525082 m!1795212))

(assert (=> b!1525082 m!1795620))

(declare-fun m!1795632 () Bool)

(assert (=> d!453512 m!1795632))

(declare-fun m!1795634 () Bool)

(assert (=> d!453512 m!1795634))

(assert (=> b!1525088 m!1795630))

(assert (=> b!1525088 m!1795212))

(declare-fun m!1795636 () Bool)

(assert (=> b!1525083 m!1795636))

(assert (=> b!1524923 d!453512))

(declare-fun d!453514 () Bool)

(declare-fun c!249987 () Bool)

(assert (=> d!453514 (= c!249987 ((_ is Node!5456) (c!249943 input!1102)))))

(declare-fun e!975125 () Bool)

(assert (=> d!453514 (= (inv!21399 (c!249943 input!1102)) e!975125)))

(declare-fun b!1525089 () Bool)

(assert (=> b!1525089 (= e!975125 (inv!21407 (c!249943 input!1102)))))

(declare-fun b!1525090 () Bool)

(declare-fun e!975126 () Bool)

(assert (=> b!1525090 (= e!975125 e!975126)))

(declare-fun res!684961 () Bool)

(assert (=> b!1525090 (= res!684961 (not ((_ is Leaf!8086) (c!249943 input!1102))))))

(assert (=> b!1525090 (=> res!684961 e!975126)))

(declare-fun b!1525091 () Bool)

(assert (=> b!1525091 (= e!975126 (inv!21408 (c!249943 input!1102)))))

(assert (= (and d!453514 c!249987) b!1525089))

(assert (= (and d!453514 (not c!249987)) b!1525090))

(assert (= (and b!1525090 (not res!684961)) b!1525091))

(declare-fun m!1795638 () Bool)

(assert (=> b!1525089 m!1795638))

(declare-fun m!1795640 () Bool)

(assert (=> b!1525091 m!1795640))

(assert (=> b!1524886 d!453514))

(declare-fun d!453516 () Bool)

(declare-fun validCacheMapDown!139 (MutableMap!1450) Bool)

(assert (=> d!453516 (= (valid!1217 cacheDown!629) (validCacheMapDown!139 (cache!1831 cacheDown!629)))))

(declare-fun bs!374065 () Bool)

(assert (= bs!374065 d!453516))

(declare-fun m!1795642 () Bool)

(assert (=> bs!374065 m!1795642))

(assert (=> b!1524905 d!453516))

(declare-fun b!1525116 () Bool)

(declare-fun e!975144 () Bool)

(declare-fun e!975141 () Bool)

(assert (=> b!1525116 (= e!975144 e!975141)))

(declare-fun res!684982 () Bool)

(assert (=> b!1525116 (=> (not res!684982) (not e!975141))))

(declare-fun lt!530012 () tuple4!700)

(assert (=> b!1525116 (= res!684982 (= (_1!8595 (get!4751 (_1!8596 lt!530012))) (_1!8597 (get!4752 (maxPrefixZipper!264 thiss!13241 rules!1640 (list!6378 input!1102))))))))

(declare-fun b!1525117 () Bool)

(declare-fun res!684985 () Bool)

(declare-fun e!975140 () Bool)

(assert (=> b!1525117 (=> (not res!684985) (not e!975140))))

(assert (=> b!1525117 (= res!684985 (valid!1217 (_3!1049 lt!530012)))))

(declare-fun b!1525118 () Bool)

(declare-fun res!684986 () Bool)

(assert (=> b!1525118 (=> (not res!684986) (not e!975140))))

(assert (=> b!1525118 (= res!684986 (valid!1216 (_2!8596 lt!530012)))))

(declare-fun d!453518 () Bool)

(assert (=> d!453518 e!975140))

(declare-fun res!684989 () Bool)

(assert (=> d!453518 (=> (not res!684989) (not e!975140))))

(assert (=> d!453518 (= res!684989 (= (isDefined!2363 (_1!8596 lt!530012)) (isDefined!2364 (maxPrefixZipper!264 thiss!13241 rules!1640 (list!6378 input!1102)))))))

(declare-datatypes ((tuple4!702 0))(
  ( (tuple4!703 (_1!8598 Option!2941) (_2!8598 CacheUp!866) (_3!1050 CacheFurthestNullable!288) (_4!351 CacheDown!870)) )
))
(declare-fun lt!530011 () tuple4!702)

(assert (=> d!453518 (= lt!530012 (tuple4!701 (_1!8598 lt!530011) (_2!8598 lt!530011) (_4!351 lt!530011) (_3!1050 lt!530011)))))

(declare-fun e!975142 () tuple4!702)

(assert (=> d!453518 (= lt!530011 e!975142)))

(declare-fun c!249990 () Bool)

(assert (=> d!453518 (= c!249990 (and ((_ is Cons!16156) rules!1640) ((_ is Nil!16156) (t!139966 rules!1640))))))

(declare-fun lt!530010 () Unit!25779)

(declare-fun lt!530007 () Unit!25779)

(assert (=> d!453518 (= lt!530010 lt!530007)))

(declare-fun lt!530008 () List!16218)

(declare-fun lt!530005 () List!16218)

(assert (=> d!453518 (isPrefix!1223 lt!530008 lt!530005)))

(assert (=> d!453518 (= lt!530007 (lemmaIsPrefixRefl!853 lt!530008 lt!530005))))

(assert (=> d!453518 (= lt!530005 (list!6378 input!1102))))

(assert (=> d!453518 (= lt!530008 (list!6378 input!1102))))

(assert (=> d!453518 (rulesValidInductive!861 thiss!13241 rules!1640)))

(assert (=> d!453518 (= (maxPrefixZipperSequenceV3Mem!31 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64) lt!530012)))

(declare-fun bm!100991 () Bool)

(declare-fun call!100996 () tuple4!700)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!15 (LexerInterface!2504 Rule!5504 BalanceConc!10854 BalanceConc!10854 CacheUp!866 CacheDown!870 CacheFurthestNullable!288) tuple4!700)

(assert (=> bm!100991 (= call!100996 (maxPrefixOneRuleZipperSequenceV3Mem!15 thiss!13241 (h!21557 rules!1640) input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1525119 () Bool)

(declare-fun res!684983 () Bool)

(assert (=> b!1525119 (=> (not res!684983) (not e!975140))))

(assert (=> b!1525119 (= res!684983 (valid!1215 (_4!350 lt!530012)))))

(declare-fun b!1525120 () Bool)

(assert (=> b!1525120 (= e!975141 (= (list!6378 (_2!8595 (get!4751 (_1!8596 lt!530012)))) (_2!8597 (get!4752 (maxPrefixZipper!264 thiss!13241 rules!1640 (list!6378 input!1102))))))))

(declare-fun b!1525121 () Bool)

(assert (=> b!1525121 (= e!975140 (= (totalInput!2319 (_4!350 lt!530012)) totalInput!458))))

(declare-fun e!975143 () Bool)

(declare-fun b!1525122 () Bool)

(assert (=> b!1525122 (= e!975143 (= (list!6378 (_2!8595 (get!4751 (_1!8596 lt!530012)))) (_2!8597 (get!4752 (maxPrefix!1213 thiss!13241 rules!1640 (list!6378 input!1102))))))))

(declare-fun b!1525123 () Bool)

(declare-fun res!684990 () Bool)

(assert (=> b!1525123 (=> (not res!684990) (not e!975140))))

(assert (=> b!1525123 (= res!684990 e!975144)))

(declare-fun res!684991 () Bool)

(assert (=> b!1525123 (=> res!684991 e!975144)))

(assert (=> b!1525123 (= res!684991 (not (isDefined!2363 (_1!8596 lt!530012))))))

(declare-fun b!1525124 () Bool)

(declare-fun e!975139 () Bool)

(assert (=> b!1525124 (= e!975139 e!975143)))

(declare-fun res!684987 () Bool)

(assert (=> b!1525124 (=> (not res!684987) (not e!975143))))

(assert (=> b!1525124 (= res!684987 (= (_1!8595 (get!4751 (_1!8596 lt!530012))) (_1!8597 (get!4752 (maxPrefix!1213 thiss!13241 rules!1640 (list!6378 input!1102))))))))

(declare-fun b!1525125 () Bool)

(declare-fun lt!530004 () tuple4!700)

(declare-fun lt!530006 () tuple4!700)

(assert (=> b!1525125 (= e!975142 (tuple4!703 (ite (and ((_ is None!2940) (_1!8596 lt!530004)) ((_ is None!2940) (_1!8596 lt!530006))) None!2940 (ite ((_ is None!2940) (_1!8596 lt!530006)) (_1!8596 lt!530004) (ite ((_ is None!2940) (_1!8596 lt!530004)) (_1!8596 lt!530006) (ite (>= (size!13067 (_1!8595 (v!22970 (_1!8596 lt!530004)))) (size!13067 (_1!8595 (v!22970 (_1!8596 lt!530006))))) (_1!8596 lt!530004) (_1!8596 lt!530006))))) (_2!8596 lt!530006) (_4!350 lt!530006) (_3!1049 lt!530006)))))

(assert (=> b!1525125 (= lt!530004 call!100996)))

(assert (=> b!1525125 (= lt!530006 (maxPrefixZipperSequenceV3Mem!31 thiss!13241 (t!139966 rules!1640) input!1102 totalInput!458 (_2!8596 lt!530004) (_3!1049 lt!530004) (_4!350 lt!530004)))))

(declare-fun b!1525126 () Bool)

(declare-fun lt!530009 () tuple4!700)

(assert (=> b!1525126 (= e!975142 (tuple4!703 (_1!8596 lt!530009) (_2!8596 lt!530009) (_4!350 lt!530009) (_3!1049 lt!530009)))))

(assert (=> b!1525126 (= lt!530009 call!100996)))

(declare-fun b!1525127 () Bool)

(declare-fun res!684984 () Bool)

(assert (=> b!1525127 (=> (not res!684984) (not e!975140))))

(assert (=> b!1525127 (= res!684984 e!975139)))

(declare-fun res!684988 () Bool)

(assert (=> b!1525127 (=> res!684988 e!975139)))

(assert (=> b!1525127 (= res!684988 (not (isDefined!2363 (_1!8596 lt!530012))))))

(assert (= (and d!453518 c!249990) b!1525126))

(assert (= (and d!453518 (not c!249990)) b!1525125))

(assert (= (or b!1525126 b!1525125) bm!100991))

(assert (= (and d!453518 res!684989) b!1525123))

(assert (= (and b!1525123 (not res!684991)) b!1525116))

(assert (= (and b!1525116 res!684982) b!1525120))

(assert (= (and b!1525123 res!684990) b!1525127))

(assert (= (and b!1525127 (not res!684988)) b!1525124))

(assert (= (and b!1525124 res!684987) b!1525122))

(assert (= (and b!1525127 res!684984) b!1525118))

(assert (= (and b!1525118 res!684986) b!1525117))

(assert (= (and b!1525117 res!684985) b!1525119))

(assert (= (and b!1525119 res!684983) b!1525121))

(declare-fun m!1795644 () Bool)

(assert (=> b!1525116 m!1795644))

(assert (=> b!1525116 m!1795210))

(assert (=> b!1525116 m!1795210))

(assert (=> b!1525116 m!1795486))

(assert (=> b!1525116 m!1795486))

(assert (=> b!1525116 m!1795494))

(declare-fun m!1795646 () Bool)

(assert (=> b!1525119 m!1795646))

(assert (=> b!1525120 m!1795486))

(assert (=> b!1525120 m!1795494))

(assert (=> b!1525120 m!1795210))

(assert (=> b!1525120 m!1795644))

(assert (=> b!1525120 m!1795210))

(assert (=> b!1525120 m!1795486))

(declare-fun m!1795648 () Bool)

(assert (=> b!1525120 m!1795648))

(assert (=> b!1525122 m!1795496))

(assert (=> b!1525122 m!1795498))

(assert (=> b!1525122 m!1795210))

(assert (=> b!1525122 m!1795496))

(assert (=> b!1525122 m!1795210))

(assert (=> b!1525122 m!1795644))

(assert (=> b!1525122 m!1795648))

(declare-fun m!1795650 () Bool)

(assert (=> b!1525118 m!1795650))

(assert (=> b!1525124 m!1795644))

(assert (=> b!1525124 m!1795210))

(assert (=> b!1525124 m!1795210))

(assert (=> b!1525124 m!1795496))

(assert (=> b!1525124 m!1795496))

(assert (=> b!1525124 m!1795498))

(declare-fun m!1795652 () Bool)

(assert (=> bm!100991 m!1795652))

(declare-fun m!1795654 () Bool)

(assert (=> b!1525125 m!1795654))

(assert (=> d!453518 m!1795210))

(declare-fun m!1795656 () Bool)

(assert (=> d!453518 m!1795656))

(declare-fun m!1795658 () Bool)

(assert (=> d!453518 m!1795658))

(assert (=> d!453518 m!1795210))

(assert (=> d!453518 m!1795486))

(assert (=> d!453518 m!1795486))

(assert (=> d!453518 m!1795490))

(declare-fun m!1795660 () Bool)

(assert (=> d!453518 m!1795660))

(assert (=> d!453518 m!1795488))

(declare-fun m!1795662 () Bool)

(assert (=> b!1525117 m!1795662))

(assert (=> b!1525127 m!1795658))

(assert (=> b!1525123 m!1795658))

(assert (=> b!1524922 d!453518))

(declare-fun d!453520 () Bool)

(assert (=> d!453520 (= (list!6379 (_1!8592 lt!529887)) (list!6381 (c!249944 (_1!8592 lt!529887))))))

(declare-fun bs!374066 () Bool)

(assert (= bs!374066 d!453520))

(declare-fun m!1795664 () Bool)

(assert (=> bs!374066 m!1795664))

(assert (=> b!1524908 d!453520))

(declare-fun d!453522 () Bool)

(declare-fun e!975148 () Bool)

(assert (=> d!453522 e!975148))

(declare-fun res!684993 () Bool)

(assert (=> d!453522 (=> (not res!684993) (not e!975148))))

(declare-fun e!975146 () Bool)

(assert (=> d!453522 (= res!684993 e!975146)))

(declare-fun c!249991 () Bool)

(declare-fun lt!530014 () tuple2!15088)

(assert (=> d!453522 (= c!249991 (> (size!13071 (_1!8592 lt!530014)) 0))))

(declare-fun e!975145 () tuple2!15088)

(assert (=> d!453522 (= lt!530014 e!975145)))

(declare-fun c!249992 () Bool)

(declare-fun lt!530013 () Option!2941)

(assert (=> d!453522 (= c!249992 ((_ is Some!2940) lt!530013))))

(assert (=> d!453522 (= lt!530013 (maxPrefixZipperSequence!595 thiss!13241 rules!1640 totalInput!458))))

(assert (=> d!453522 (= (lexRec!338 thiss!13241 rules!1640 totalInput!458) lt!530014)))

(declare-fun b!1525128 () Bool)

(assert (=> b!1525128 (= e!975148 (= (list!6378 (_2!8592 lt!530014)) (_2!8591 (lexList!752 thiss!13241 rules!1640 (list!6378 totalInput!458)))))))

(declare-fun b!1525129 () Bool)

(declare-fun e!975147 () Bool)

(assert (=> b!1525129 (= e!975147 (not (isEmpty!9970 (_1!8592 lt!530014))))))

(declare-fun b!1525130 () Bool)

(declare-fun lt!530015 () tuple2!15088)

(assert (=> b!1525130 (= e!975145 (tuple2!15089 (prepend!476 (_1!8592 lt!530015) (_1!8595 (v!22970 lt!530013))) (_2!8592 lt!530015)))))

(assert (=> b!1525130 (= lt!530015 (lexRec!338 thiss!13241 rules!1640 (_2!8595 (v!22970 lt!530013))))))

(declare-fun b!1525131 () Bool)

(assert (=> b!1525131 (= e!975146 e!975147)))

(declare-fun res!684994 () Bool)

(assert (=> b!1525131 (= res!684994 (< (size!13072 (_2!8592 lt!530014)) (size!13072 totalInput!458)))))

(assert (=> b!1525131 (=> (not res!684994) (not e!975147))))

(declare-fun b!1525132 () Bool)

(assert (=> b!1525132 (= e!975145 (tuple2!15089 (BalanceConc!10857 Empty!5457) totalInput!458))))

(declare-fun b!1525133 () Bool)

(declare-fun res!684992 () Bool)

(assert (=> b!1525133 (=> (not res!684992) (not e!975148))))

(assert (=> b!1525133 (= res!684992 (= (list!6379 (_1!8592 lt!530014)) (_1!8591 (lexList!752 thiss!13241 rules!1640 (list!6378 totalInput!458)))))))

(declare-fun b!1525134 () Bool)

(assert (=> b!1525134 (= e!975146 (= (list!6378 (_2!8592 lt!530014)) (list!6378 totalInput!458)))))

(assert (= (and d!453522 c!249992) b!1525130))

(assert (= (and d!453522 (not c!249992)) b!1525132))

(assert (= (and d!453522 c!249991) b!1525131))

(assert (= (and d!453522 (not c!249991)) b!1525134))

(assert (= (and b!1525131 res!684994) b!1525129))

(assert (= (and d!453522 res!684993) b!1525133))

(assert (= (and b!1525133 res!684992) b!1525128))

(declare-fun m!1795666 () Bool)

(assert (=> b!1525133 m!1795666))

(assert (=> b!1525133 m!1795208))

(assert (=> b!1525133 m!1795208))

(declare-fun m!1795668 () Bool)

(assert (=> b!1525133 m!1795668))

(declare-fun m!1795670 () Bool)

(assert (=> b!1525131 m!1795670))

(declare-fun m!1795672 () Bool)

(assert (=> b!1525131 m!1795672))

(declare-fun m!1795674 () Bool)

(assert (=> b!1525130 m!1795674))

(declare-fun m!1795676 () Bool)

(assert (=> b!1525130 m!1795676))

(declare-fun m!1795678 () Bool)

(assert (=> b!1525128 m!1795678))

(assert (=> b!1525128 m!1795208))

(assert (=> b!1525128 m!1795208))

(assert (=> b!1525128 m!1795668))

(declare-fun m!1795680 () Bool)

(assert (=> d!453522 m!1795680))

(declare-fun m!1795682 () Bool)

(assert (=> d!453522 m!1795682))

(assert (=> b!1525134 m!1795678))

(assert (=> b!1525134 m!1795208))

(declare-fun m!1795684 () Bool)

(assert (=> b!1525129 m!1795684))

(assert (=> b!1524908 d!453522))

(declare-fun b!1525144 () Bool)

(declare-fun res!685005 () Bool)

(declare-fun e!975151 () Bool)

(assert (=> b!1525144 (=> (not res!685005) (not e!975151))))

(declare-fun height!819 (Conc!5457) Int)

(declare-fun ++!4384 (Conc!5457 Conc!5457) Conc!5457)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1525144 (= res!685005 (<= (height!819 (++!4384 (c!249944 acc!392) (c!249944 (_1!8592 lt!529886)))) (+ (max!0 (height!819 (c!249944 acc!392)) (height!819 (c!249944 (_1!8592 lt!529886)))) 1)))))

(declare-fun b!1525143 () Bool)

(declare-fun res!685006 () Bool)

(assert (=> b!1525143 (=> (not res!685006) (not e!975151))))

(assert (=> b!1525143 (= res!685006 (isBalanced!1617 (++!4384 (c!249944 acc!392) (c!249944 (_1!8592 lt!529886)))))))

(declare-fun b!1525145 () Bool)

(declare-fun res!685003 () Bool)

(assert (=> b!1525145 (=> (not res!685003) (not e!975151))))

(assert (=> b!1525145 (= res!685003 (>= (height!819 (++!4384 (c!249944 acc!392) (c!249944 (_1!8592 lt!529886)))) (max!0 (height!819 (c!249944 acc!392)) (height!819 (c!249944 (_1!8592 lt!529886))))))))

(declare-fun lt!530018 () BalanceConc!10856)

(declare-fun b!1525146 () Bool)

(assert (=> b!1525146 (= e!975151 (= (list!6379 lt!530018) (++!4381 (list!6379 acc!392) (list!6379 (_1!8592 lt!529886)))))))

(declare-fun d!453524 () Bool)

(assert (=> d!453524 e!975151))

(declare-fun res!685004 () Bool)

(assert (=> d!453524 (=> (not res!685004) (not e!975151))))

(declare-fun appendAssocInst!373 (Conc!5457 Conc!5457) Bool)

(assert (=> d!453524 (= res!685004 (appendAssocInst!373 (c!249944 acc!392) (c!249944 (_1!8592 lt!529886))))))

(assert (=> d!453524 (= lt!530018 (BalanceConc!10857 (++!4384 (c!249944 acc!392) (c!249944 (_1!8592 lt!529886)))))))

(assert (=> d!453524 (= (++!4382 acc!392 (_1!8592 lt!529886)) lt!530018)))

(assert (= (and d!453524 res!685004) b!1525143))

(assert (= (and b!1525143 res!685006) b!1525144))

(assert (= (and b!1525144 res!685005) b!1525145))

(assert (= (and b!1525145 res!685003) b!1525146))

(declare-fun m!1795686 () Bool)

(assert (=> b!1525143 m!1795686))

(assert (=> b!1525143 m!1795686))

(declare-fun m!1795688 () Bool)

(assert (=> b!1525143 m!1795688))

(declare-fun m!1795690 () Bool)

(assert (=> d!453524 m!1795690))

(assert (=> d!453524 m!1795686))

(declare-fun m!1795692 () Bool)

(assert (=> b!1525146 m!1795692))

(assert (=> b!1525146 m!1795218))

(declare-fun m!1795694 () Bool)

(assert (=> b!1525146 m!1795694))

(assert (=> b!1525146 m!1795218))

(assert (=> b!1525146 m!1795694))

(declare-fun m!1795696 () Bool)

(assert (=> b!1525146 m!1795696))

(assert (=> b!1525144 m!1795686))

(declare-fun m!1795698 () Bool)

(assert (=> b!1525144 m!1795698))

(declare-fun m!1795700 () Bool)

(assert (=> b!1525144 m!1795700))

(assert (=> b!1525144 m!1795698))

(assert (=> b!1525144 m!1795700))

(declare-fun m!1795702 () Bool)

(assert (=> b!1525144 m!1795702))

(assert (=> b!1525144 m!1795686))

(declare-fun m!1795704 () Bool)

(assert (=> b!1525144 m!1795704))

(assert (=> b!1525145 m!1795686))

(assert (=> b!1525145 m!1795698))

(assert (=> b!1525145 m!1795700))

(assert (=> b!1525145 m!1795698))

(assert (=> b!1525145 m!1795700))

(assert (=> b!1525145 m!1795702))

(assert (=> b!1525145 m!1795686))

(assert (=> b!1525145 m!1795704))

(assert (=> b!1524908 d!453524))

(declare-fun d!453526 () Bool)

(declare-fun e!975155 () Bool)

(assert (=> d!453526 e!975155))

(declare-fun res!685008 () Bool)

(assert (=> d!453526 (=> (not res!685008) (not e!975155))))

(declare-fun e!975153 () Bool)

(assert (=> d!453526 (= res!685008 e!975153)))

(declare-fun c!249996 () Bool)

(declare-fun lt!530020 () tuple2!15088)

(assert (=> d!453526 (= c!249996 (> (size!13071 (_1!8592 lt!530020)) 0))))

(declare-fun e!975152 () tuple2!15088)

(assert (=> d!453526 (= lt!530020 e!975152)))

(declare-fun c!249997 () Bool)

(declare-fun lt!530019 () Option!2941)

(assert (=> d!453526 (= c!249997 ((_ is Some!2940) lt!530019))))

(assert (=> d!453526 (= lt!530019 (maxPrefixZipperSequence!595 thiss!13241 rules!1640 input!1102))))

(assert (=> d!453526 (= (lexRec!338 thiss!13241 rules!1640 input!1102) lt!530020)))

(declare-fun b!1525147 () Bool)

(assert (=> b!1525147 (= e!975155 (= (list!6378 (_2!8592 lt!530020)) (_2!8591 (lexList!752 thiss!13241 rules!1640 (list!6378 input!1102)))))))

(declare-fun b!1525148 () Bool)

(declare-fun e!975154 () Bool)

(assert (=> b!1525148 (= e!975154 (not (isEmpty!9970 (_1!8592 lt!530020))))))

(declare-fun b!1525149 () Bool)

(declare-fun lt!530021 () tuple2!15088)

(assert (=> b!1525149 (= e!975152 (tuple2!15089 (prepend!476 (_1!8592 lt!530021) (_1!8595 (v!22970 lt!530019))) (_2!8592 lt!530021)))))

(assert (=> b!1525149 (= lt!530021 (lexRec!338 thiss!13241 rules!1640 (_2!8595 (v!22970 lt!530019))))))

(declare-fun b!1525150 () Bool)

(assert (=> b!1525150 (= e!975153 e!975154)))

(declare-fun res!685009 () Bool)

(assert (=> b!1525150 (= res!685009 (< (size!13072 (_2!8592 lt!530020)) (size!13072 input!1102)))))

(assert (=> b!1525150 (=> (not res!685009) (not e!975154))))

(declare-fun b!1525151 () Bool)

(assert (=> b!1525151 (= e!975152 (tuple2!15089 (BalanceConc!10857 Empty!5457) input!1102))))

(declare-fun b!1525152 () Bool)

(declare-fun res!685007 () Bool)

(assert (=> b!1525152 (=> (not res!685007) (not e!975155))))

(assert (=> b!1525152 (= res!685007 (= (list!6379 (_1!8592 lt!530020)) (_1!8591 (lexList!752 thiss!13241 rules!1640 (list!6378 input!1102)))))))

(declare-fun b!1525153 () Bool)

(assert (=> b!1525153 (= e!975153 (= (list!6378 (_2!8592 lt!530020)) (list!6378 input!1102)))))

(assert (= (and d!453526 c!249997) b!1525149))

(assert (= (and d!453526 (not c!249997)) b!1525151))

(assert (= (and d!453526 c!249996) b!1525150))

(assert (= (and d!453526 (not c!249996)) b!1525153))

(assert (= (and b!1525150 res!685009) b!1525148))

(assert (= (and d!453526 res!685008) b!1525152))

(assert (= (and b!1525152 res!685007) b!1525147))

(declare-fun m!1795706 () Bool)

(assert (=> b!1525152 m!1795706))

(assert (=> b!1525152 m!1795210))

(assert (=> b!1525152 m!1795210))

(declare-fun m!1795708 () Bool)

(assert (=> b!1525152 m!1795708))

(declare-fun m!1795710 () Bool)

(assert (=> b!1525150 m!1795710))

(declare-fun m!1795712 () Bool)

(assert (=> b!1525150 m!1795712))

(declare-fun m!1795714 () Bool)

(assert (=> b!1525149 m!1795714))

(declare-fun m!1795716 () Bool)

(assert (=> b!1525149 m!1795716))

(declare-fun m!1795718 () Bool)

(assert (=> b!1525147 m!1795718))

(assert (=> b!1525147 m!1795210))

(assert (=> b!1525147 m!1795210))

(assert (=> b!1525147 m!1795708))

(declare-fun m!1795720 () Bool)

(assert (=> d!453526 m!1795720))

(assert (=> d!453526 m!1795286))

(assert (=> b!1525153 m!1795718))

(assert (=> b!1525153 m!1795210))

(declare-fun m!1795722 () Bool)

(assert (=> b!1525148 m!1795722))

(assert (=> b!1524908 d!453526))

(declare-fun d!453528 () Bool)

(assert (=> d!453528 (= (list!6379 (++!4382 acc!392 (_1!8592 lt!529886))) (list!6381 (c!249944 (++!4382 acc!392 (_1!8592 lt!529886)))))))

(declare-fun bs!374067 () Bool)

(assert (= bs!374067 d!453528))

(declare-fun m!1795724 () Bool)

(assert (=> bs!374067 m!1795724))

(assert (=> b!1524908 d!453528))

(declare-fun d!453530 () Bool)

(assert (=> d!453530 (= (list!6378 (_2!8592 lt!529887)) (list!6380 (c!249943 (_2!8592 lt!529887))))))

(declare-fun bs!374068 () Bool)

(assert (= bs!374068 d!453530))

(declare-fun m!1795726 () Bool)

(assert (=> bs!374068 m!1795726))

(assert (=> b!1524907 d!453530))

(declare-fun d!453532 () Bool)

(assert (=> d!453532 (= (list!6378 (_2!8592 lt!529886)) (list!6380 (c!249943 (_2!8592 lt!529886))))))

(declare-fun bs!374069 () Bool)

(assert (= bs!374069 d!453532))

(declare-fun m!1795728 () Bool)

(assert (=> bs!374069 m!1795728))

(assert (=> b!1524907 d!453532))

(declare-fun d!453534 () Bool)

(assert (=> d!453534 (= (isEmpty!9968 rules!1640) ((_ is Nil!16156) rules!1640))))

(assert (=> b!1524911 d!453534))

(declare-fun d!453536 () Bool)

(assert (=> d!453536 (= (inv!21398 (tag!3116 (h!21557 rules!1640))) (= (mod (str.len (value!90944 (tag!3116 (h!21557 rules!1640)))) 2) 0))))

(assert (=> b!1524892 d!453536))

(declare-fun d!453538 () Bool)

(declare-fun res!685012 () Bool)

(declare-fun e!975158 () Bool)

(assert (=> d!453538 (=> (not res!685012) (not e!975158))))

(declare-fun semiInverseModEq!1075 (Int Int) Bool)

(assert (=> d!453538 (= res!685012 (semiInverseModEq!1075 (toChars!4068 (transformation!2852 (h!21557 rules!1640))) (toValue!4209 (transformation!2852 (h!21557 rules!1640)))))))

(assert (=> d!453538 (= (inv!21401 (transformation!2852 (h!21557 rules!1640))) e!975158)))

(declare-fun b!1525156 () Bool)

(declare-fun equivClasses!1034 (Int Int) Bool)

(assert (=> b!1525156 (= e!975158 (equivClasses!1034 (toChars!4068 (transformation!2852 (h!21557 rules!1640))) (toValue!4209 (transformation!2852 (h!21557 rules!1640)))))))

(assert (= (and d!453538 res!685012) b!1525156))

(declare-fun m!1795730 () Bool)

(assert (=> d!453538 m!1795730))

(declare-fun m!1795732 () Bool)

(assert (=> b!1525156 m!1795732))

(assert (=> b!1524892 d!453538))

(declare-fun d!453540 () Bool)

(declare-fun c!250000 () Bool)

(assert (=> d!453540 (= c!250000 ((_ is Node!5457) (c!249944 acc!392)))))

(declare-fun e!975163 () Bool)

(assert (=> d!453540 (= (inv!21400 (c!249944 acc!392)) e!975163)))

(declare-fun b!1525163 () Bool)

(declare-fun inv!21409 (Conc!5457) Bool)

(assert (=> b!1525163 (= e!975163 (inv!21409 (c!249944 acc!392)))))

(declare-fun b!1525164 () Bool)

(declare-fun e!975164 () Bool)

(assert (=> b!1525164 (= e!975163 e!975164)))

(declare-fun res!685015 () Bool)

(assert (=> b!1525164 (= res!685015 (not ((_ is Leaf!8087) (c!249944 acc!392))))))

(assert (=> b!1525164 (=> res!685015 e!975164)))

(declare-fun b!1525165 () Bool)

(declare-fun inv!21410 (Conc!5457) Bool)

(assert (=> b!1525165 (= e!975164 (inv!21410 (c!249944 acc!392)))))

(assert (= (and d!453540 c!250000) b!1525163))

(assert (= (and d!453540 (not c!250000)) b!1525164))

(assert (= (and b!1525164 (not res!685015)) b!1525165))

(declare-fun m!1795734 () Bool)

(assert (=> b!1525163 m!1795734))

(declare-fun m!1795736 () Bool)

(assert (=> b!1525165 m!1795736))

(assert (=> b!1524891 d!453540))

(declare-fun d!453542 () Bool)

(declare-fun e!975167 () Bool)

(assert (=> d!453542 e!975167))

(declare-fun res!685018 () Bool)

(assert (=> d!453542 (=> res!685018 e!975167)))

(declare-fun lt!530024 () Bool)

(assert (=> d!453542 (= res!685018 (not lt!530024))))

(declare-fun drop!763 (List!16218 Int) List!16218)

(assert (=> d!453542 (= lt!530024 (= lt!529889 (drop!763 lt!529888 (- (size!13069 lt!529888) (size!13069 lt!529889)))))))

(assert (=> d!453542 (= (isSuffix!307 lt!529889 lt!529888) lt!530024)))

(declare-fun b!1525168 () Bool)

(assert (=> b!1525168 (= e!975167 (>= (size!13069 lt!529888) (size!13069 lt!529889)))))

(assert (= (and d!453542 (not res!685018)) b!1525168))

(declare-fun m!1795738 () Bool)

(assert (=> d!453542 m!1795738))

(assert (=> d!453542 m!1795598))

(declare-fun m!1795740 () Bool)

(assert (=> d!453542 m!1795740))

(assert (=> b!1525168 m!1795738))

(assert (=> b!1525168 m!1795598))

(assert (=> b!1524913 d!453542))

(declare-fun d!453544 () Bool)

(declare-fun e!975168 () Bool)

(assert (=> d!453544 e!975168))

(declare-fun res!685019 () Bool)

(assert (=> d!453544 (=> res!685019 e!975168)))

(declare-fun lt!530025 () Bool)

(assert (=> d!453544 (= res!685019 (not lt!530025))))

(assert (=> d!453544 (= lt!530025 (= lt!529889 (drop!763 lt!529907 (- (size!13069 lt!529907) (size!13069 lt!529889)))))))

(assert (=> d!453544 (= (isSuffix!307 lt!529889 lt!529907) lt!530025)))

(declare-fun b!1525169 () Bool)

(assert (=> b!1525169 (= e!975168 (>= (size!13069 lt!529907) (size!13069 lt!529889)))))

(assert (= (and d!453544 (not res!685019)) b!1525169))

(declare-fun m!1795742 () Bool)

(assert (=> d!453544 m!1795742))

(assert (=> d!453544 m!1795598))

(declare-fun m!1795744 () Bool)

(assert (=> d!453544 m!1795744))

(assert (=> b!1525169 m!1795742))

(assert (=> b!1525169 m!1795598))

(assert (=> b!1524913 d!453544))

(declare-fun d!453546 () Bool)

(assert (=> d!453546 (isSuffix!307 lt!529889 (++!4383 lt!529898 lt!529889))))

(declare-fun lt!530028 () Unit!25779)

(declare-fun choose!9194 (List!16218 List!16218) Unit!25779)

(assert (=> d!453546 (= lt!530028 (choose!9194 lt!529898 lt!529889))))

(assert (=> d!453546 (= (lemmaConcatTwoListThenFSndIsSuffix!285 lt!529898 lt!529889) lt!530028)))

(declare-fun bs!374070 () Bool)

(assert (= bs!374070 d!453546))

(assert (=> bs!374070 m!1795206))

(assert (=> bs!374070 m!1795206))

(declare-fun m!1795746 () Bool)

(assert (=> bs!374070 m!1795746))

(declare-fun m!1795748 () Bool)

(assert (=> bs!374070 m!1795748))

(assert (=> b!1524913 d!453546))

(declare-fun d!453548 () Bool)

(declare-fun isBalanced!1618 (Conc!5456) Bool)

(assert (=> d!453548 (= (inv!21402 (totalInput!2319 cacheFurthestNullable!64)) (isBalanced!1618 (c!249943 (totalInput!2319 cacheFurthestNullable!64))))))

(declare-fun bs!374071 () Bool)

(assert (= bs!374071 d!453548))

(declare-fun m!1795750 () Bool)

(assert (=> bs!374071 m!1795750))

(assert (=> b!1524894 d!453548))

(declare-fun d!453550 () Bool)

(assert (=> d!453550 (= (inv!21402 treated!70) (isBalanced!1618 (c!249943 treated!70)))))

(declare-fun bs!374072 () Bool)

(assert (= bs!374072 d!453550))

(declare-fun m!1795752 () Bool)

(assert (=> bs!374072 m!1795752))

(assert (=> start!142032 d!453550))

(declare-fun d!453552 () Bool)

(assert (=> d!453552 (= (inv!21402 input!1102) (isBalanced!1618 (c!249943 input!1102)))))

(declare-fun bs!374073 () Bool)

(assert (= bs!374073 d!453552))

(declare-fun m!1795754 () Bool)

(assert (=> bs!374073 m!1795754))

(assert (=> start!142032 d!453552))

(declare-fun d!453554 () Bool)

(declare-fun res!685022 () Bool)

(declare-fun e!975171 () Bool)

(assert (=> d!453554 (=> (not res!685022) (not e!975171))))

(assert (=> d!453554 (= res!685022 ((_ is HashMap!1449) (cache!1830 cacheFurthestNullable!64)))))

(assert (=> d!453554 (= (inv!21406 cacheFurthestNullable!64) e!975171)))

(declare-fun b!1525172 () Bool)

(assert (=> b!1525172 (= e!975171 (validCacheMapFurthestNullable!52 (cache!1830 cacheFurthestNullable!64) (totalInput!2319 cacheFurthestNullable!64)))))

(assert (= (and d!453554 res!685022) b!1525172))

(assert (=> b!1525172 m!1795518))

(assert (=> start!142032 d!453554))

(declare-fun d!453556 () Bool)

(declare-fun res!685025 () Bool)

(declare-fun e!975174 () Bool)

(assert (=> d!453556 (=> (not res!685025) (not e!975174))))

(assert (=> d!453556 (= res!685025 ((_ is HashMap!1450) (cache!1831 cacheDown!629)))))

(assert (=> d!453556 (= (inv!21405 cacheDown!629) e!975174)))

(declare-fun b!1525175 () Bool)

(assert (=> b!1525175 (= e!975174 (validCacheMapDown!139 (cache!1831 cacheDown!629)))))

(assert (= (and d!453556 res!685025) b!1525175))

(assert (=> b!1525175 m!1795642))

(assert (=> start!142032 d!453556))

(declare-fun d!453558 () Bool)

(assert (=> d!453558 (= (inv!21402 totalInput!458) (isBalanced!1618 (c!249943 totalInput!458)))))

(declare-fun bs!374074 () Bool)

(assert (= bs!374074 d!453558))

(declare-fun m!1795756 () Bool)

(assert (=> bs!374074 m!1795756))

(assert (=> start!142032 d!453558))

(declare-fun d!453560 () Bool)

(assert (=> d!453560 (= (inv!21403 acc!392) (isBalanced!1617 (c!249944 acc!392)))))

(declare-fun bs!374075 () Bool)

(assert (= bs!374075 d!453560))

(declare-fun m!1795758 () Bool)

(assert (=> bs!374075 m!1795758))

(assert (=> start!142032 d!453560))

(declare-fun d!453562 () Bool)

(declare-fun res!685028 () Bool)

(declare-fun e!975177 () Bool)

(assert (=> d!453562 (=> (not res!685028) (not e!975177))))

(assert (=> d!453562 (= res!685028 ((_ is HashMap!1448) (cache!1829 cacheUp!616)))))

(assert (=> d!453562 (= (inv!21404 cacheUp!616) e!975177)))

(declare-fun b!1525178 () Bool)

(assert (=> b!1525178 (= e!975177 (validCacheMapUp!139 (cache!1829 cacheUp!616)))))

(assert (= (and d!453562 res!685028) b!1525178))

(assert (=> b!1525178 m!1795576))

(assert (=> start!142032 d!453562))

(declare-fun b!1525186 () Bool)

(declare-fun e!975183 () Bool)

(declare-fun tp!437808 () Bool)

(assert (=> b!1525186 (= e!975183 tp!437808)))

(declare-fun e!975182 () Bool)

(assert (=> b!1524898 (= tp!437796 e!975182)))

(declare-fun setIsEmpty!9572 () Bool)

(declare-fun setRes!9572 () Bool)

(assert (=> setIsEmpty!9572 setRes!9572))

(declare-fun b!1525185 () Bool)

(declare-fun tp!437806 () Bool)

(assert (=> b!1525185 (= e!975182 (and setRes!9572 tp!437806))))

(declare-fun condSetEmpty!9572 () Bool)

(assert (=> b!1525185 (= condSetEmpty!9572 (= (_1!8589 (_1!8590 (h!21554 (zeroValue!1762 (v!22966 (underlying!3219 (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64))))))))) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun setNonEmpty!9572 () Bool)

(declare-fun setElem!9572 () Context!1374)

(declare-fun tp!437807 () Bool)

(declare-fun inv!21411 (Context!1374) Bool)

(assert (=> setNonEmpty!9572 (= setRes!9572 (and tp!437807 (inv!21411 setElem!9572) e!975183))))

(declare-fun setRest!9572 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9572 (= (_1!8589 (_1!8590 (h!21554 (zeroValue!1762 (v!22966 (underlying!3219 (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9572 true) setRest!9572))))

(assert (= (and b!1525185 condSetEmpty!9572) setIsEmpty!9572))

(assert (= (and b!1525185 (not condSetEmpty!9572)) setNonEmpty!9572))

(assert (= setNonEmpty!9572 b!1525186))

(assert (= (and b!1524898 ((_ is Cons!16153) (zeroValue!1762 (v!22966 (underlying!3219 (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64)))))))) b!1525185))

(declare-fun m!1795760 () Bool)

(assert (=> setNonEmpty!9572 m!1795760))

(declare-fun b!1525188 () Bool)

(declare-fun e!975185 () Bool)

(declare-fun tp!437811 () Bool)

(assert (=> b!1525188 (= e!975185 tp!437811)))

(declare-fun e!975184 () Bool)

(assert (=> b!1524898 (= tp!437792 e!975184)))

(declare-fun setIsEmpty!9573 () Bool)

(declare-fun setRes!9573 () Bool)

(assert (=> setIsEmpty!9573 setRes!9573))

(declare-fun b!1525187 () Bool)

(declare-fun tp!437809 () Bool)

(assert (=> b!1525187 (= e!975184 (and setRes!9573 tp!437809))))

(declare-fun condSetEmpty!9573 () Bool)

(assert (=> b!1525187 (= condSetEmpty!9573 (= (_1!8589 (_1!8590 (h!21554 (minValue!1762 (v!22966 (underlying!3219 (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64))))))))) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun setElem!9573 () Context!1374)

(declare-fun setNonEmpty!9573 () Bool)

(declare-fun tp!437810 () Bool)

(assert (=> setNonEmpty!9573 (= setRes!9573 (and tp!437810 (inv!21411 setElem!9573) e!975185))))

(declare-fun setRest!9573 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9573 (= (_1!8589 (_1!8590 (h!21554 (minValue!1762 (v!22966 (underlying!3219 (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9573 true) setRest!9573))))

(assert (= (and b!1525187 condSetEmpty!9573) setIsEmpty!9573))

(assert (= (and b!1525187 (not condSetEmpty!9573)) setNonEmpty!9573))

(assert (= setNonEmpty!9573 b!1525188))

(assert (= (and b!1524898 ((_ is Cons!16153) (minValue!1762 (v!22966 (underlying!3219 (v!22967 (underlying!3220 (cache!1830 cacheFurthestNullable!64)))))))) b!1525187))

(declare-fun m!1795762 () Bool)

(assert (=> setNonEmpty!9573 m!1795762))

(declare-fun b!1525197 () Bool)

(declare-fun e!975190 () Bool)

(declare-fun tp!437819 () Bool)

(declare-fun tp!437820 () Bool)

(assert (=> b!1525197 (= e!975190 (and (inv!21399 (left!13393 (c!249943 (totalInput!2319 cacheFurthestNullable!64)))) tp!437819 (inv!21399 (right!13723 (c!249943 (totalInput!2319 cacheFurthestNullable!64)))) tp!437820))))

(declare-fun b!1525199 () Bool)

(declare-fun e!975191 () Bool)

(declare-fun tp!437818 () Bool)

(assert (=> b!1525199 (= e!975191 tp!437818)))

(declare-fun b!1525198 () Bool)

(declare-fun inv!21412 (IArray!10917) Bool)

(assert (=> b!1525198 (= e!975190 (and (inv!21412 (xs!8247 (c!249943 (totalInput!2319 cacheFurthestNullable!64)))) e!975191))))

(assert (=> b!1524914 (= tp!437782 (and (inv!21399 (c!249943 (totalInput!2319 cacheFurthestNullable!64))) e!975190))))

(assert (= (and b!1524914 ((_ is Node!5456) (c!249943 (totalInput!2319 cacheFurthestNullable!64)))) b!1525197))

(assert (= b!1525198 b!1525199))

(assert (= (and b!1524914 ((_ is Leaf!8086) (c!249943 (totalInput!2319 cacheFurthestNullable!64)))) b!1525198))

(declare-fun m!1795764 () Bool)

(assert (=> b!1525197 m!1795764))

(declare-fun m!1795766 () Bool)

(assert (=> b!1525197 m!1795766))

(declare-fun m!1795768 () Bool)

(assert (=> b!1525198 m!1795768))

(assert (=> b!1524914 m!1795216))

(declare-fun setIsEmpty!9576 () Bool)

(declare-fun setRes!9576 () Bool)

(assert (=> setIsEmpty!9576 setRes!9576))

(declare-fun e!975198 () Bool)

(assert (=> b!1524906 (= tp!437773 e!975198)))

(declare-fun tp!437831 () Bool)

(declare-fun b!1525208 () Bool)

(declare-fun tp_is_empty!7023 () Bool)

(declare-fun e!975199 () Bool)

(assert (=> b!1525208 (= e!975198 (and (inv!21411 (_1!8587 (_1!8588 (h!21553 mapDefault!7147)))) e!975199 tp_is_empty!7023 setRes!9576 tp!437831))))

(declare-fun condSetEmpty!9576 () Bool)

(assert (=> b!1525208 (= condSetEmpty!9576 (= (_2!8588 (h!21553 mapDefault!7147)) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun setElem!9576 () Context!1374)

(declare-fun setNonEmpty!9576 () Bool)

(declare-fun e!975200 () Bool)

(declare-fun tp!437829 () Bool)

(assert (=> setNonEmpty!9576 (= setRes!9576 (and tp!437829 (inv!21411 setElem!9576) e!975200))))

(declare-fun setRest!9576 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9576 (= (_2!8588 (h!21553 mapDefault!7147)) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9576 true) setRest!9576))))

(declare-fun b!1525209 () Bool)

(declare-fun tp!437832 () Bool)

(assert (=> b!1525209 (= e!975199 tp!437832)))

(declare-fun b!1525210 () Bool)

(declare-fun tp!437830 () Bool)

(assert (=> b!1525210 (= e!975200 tp!437830)))

(assert (= b!1525208 b!1525209))

(assert (= (and b!1525208 condSetEmpty!9576) setIsEmpty!9576))

(assert (= (and b!1525208 (not condSetEmpty!9576)) setNonEmpty!9576))

(assert (= setNonEmpty!9576 b!1525210))

(assert (= (and b!1524906 ((_ is Cons!16152) mapDefault!7147)) b!1525208))

(declare-fun m!1795770 () Bool)

(assert (=> b!1525208 m!1795770))

(declare-fun m!1795772 () Bool)

(assert (=> setNonEmpty!9576 m!1795772))

(declare-fun b!1525221 () Bool)

(declare-fun e!975212 () Bool)

(declare-fun setRes!9582 () Bool)

(declare-fun tp!437848 () Bool)

(assert (=> b!1525221 (= e!975212 (and setRes!9582 tp!437848))))

(declare-fun condSetEmpty!9582 () Bool)

(declare-fun mapValue!7151 () List!16221)

(assert (=> b!1525221 (= condSetEmpty!9582 (= (_1!8589 (_1!8590 (h!21554 mapValue!7151))) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun e!975211 () Bool)

(declare-fun tp!437851 () Bool)

(declare-fun setElem!9582 () Context!1374)

(declare-fun setNonEmpty!9581 () Bool)

(assert (=> setNonEmpty!9581 (= setRes!9582 (and tp!437851 (inv!21411 setElem!9582) e!975211))))

(declare-fun setRest!9581 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9581 (= (_1!8589 (_1!8590 (h!21554 mapValue!7151))) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9582 true) setRest!9581))))

(declare-fun setIsEmpty!9581 () Bool)

(assert (=> setIsEmpty!9581 setRes!9582))

(declare-fun mapNonEmpty!7151 () Bool)

(declare-fun mapRes!7151 () Bool)

(declare-fun tp!437853 () Bool)

(assert (=> mapNonEmpty!7151 (= mapRes!7151 (and tp!437853 e!975212))))

(declare-fun mapRest!7151 () (Array (_ BitVec 32) List!16221))

(declare-fun mapKey!7151 () (_ BitVec 32))

(assert (=> mapNonEmpty!7151 (= mapRest!7148 (store mapRest!7151 mapKey!7151 mapValue!7151))))

(declare-fun b!1525222 () Bool)

(declare-fun tp!437850 () Bool)

(assert (=> b!1525222 (= e!975211 tp!437850)))

(declare-fun b!1525223 () Bool)

(declare-fun e!975209 () Bool)

(declare-fun tp!437847 () Bool)

(assert (=> b!1525223 (= e!975209 tp!437847)))

(declare-fun mapIsEmpty!7151 () Bool)

(assert (=> mapIsEmpty!7151 mapRes!7151))

(declare-fun setElem!9581 () Context!1374)

(declare-fun setNonEmpty!9582 () Bool)

(declare-fun setRes!9581 () Bool)

(declare-fun tp!437852 () Bool)

(assert (=> setNonEmpty!9582 (= setRes!9581 (and tp!437852 (inv!21411 setElem!9581) e!975209))))

(declare-fun mapDefault!7151 () List!16221)

(declare-fun setRest!9582 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9582 (= (_1!8589 (_1!8590 (h!21554 mapDefault!7151))) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9581 true) setRest!9582))))

(declare-fun setIsEmpty!9582 () Bool)

(assert (=> setIsEmpty!9582 setRes!9581))

(declare-fun condMapEmpty!7151 () Bool)

(assert (=> mapNonEmpty!7148 (= condMapEmpty!7151 (= mapRest!7148 ((as const (Array (_ BitVec 32) List!16221)) mapDefault!7151)))))

(declare-fun e!975210 () Bool)

(assert (=> mapNonEmpty!7148 (= tp!437779 (and e!975210 mapRes!7151))))

(declare-fun b!1525224 () Bool)

(declare-fun tp!437849 () Bool)

(assert (=> b!1525224 (= e!975210 (and setRes!9581 tp!437849))))

(declare-fun condSetEmpty!9581 () Bool)

(assert (=> b!1525224 (= condSetEmpty!9581 (= (_1!8589 (_1!8590 (h!21554 mapDefault!7151))) ((as const (Array Context!1374 Bool)) false)))))

(assert (= (and mapNonEmpty!7148 condMapEmpty!7151) mapIsEmpty!7151))

(assert (= (and mapNonEmpty!7148 (not condMapEmpty!7151)) mapNonEmpty!7151))

(assert (= (and b!1525221 condSetEmpty!9582) setIsEmpty!9581))

(assert (= (and b!1525221 (not condSetEmpty!9582)) setNonEmpty!9581))

(assert (= setNonEmpty!9581 b!1525222))

(assert (= (and mapNonEmpty!7151 ((_ is Cons!16153) mapValue!7151)) b!1525221))

(assert (= (and b!1525224 condSetEmpty!9581) setIsEmpty!9582))

(assert (= (and b!1525224 (not condSetEmpty!9581)) setNonEmpty!9582))

(assert (= setNonEmpty!9582 b!1525223))

(assert (= (and mapNonEmpty!7148 ((_ is Cons!16153) mapDefault!7151)) b!1525224))

(declare-fun m!1795774 () Bool)

(assert (=> setNonEmpty!9581 m!1795774))

(declare-fun m!1795776 () Bool)

(assert (=> mapNonEmpty!7151 m!1795776))

(declare-fun m!1795778 () Bool)

(assert (=> setNonEmpty!9582 m!1795778))

(declare-fun b!1525226 () Bool)

(declare-fun e!975214 () Bool)

(declare-fun tp!437856 () Bool)

(assert (=> b!1525226 (= e!975214 tp!437856)))

(declare-fun e!975213 () Bool)

(assert (=> mapNonEmpty!7148 (= tp!437772 e!975213)))

(declare-fun setIsEmpty!9583 () Bool)

(declare-fun setRes!9583 () Bool)

(assert (=> setIsEmpty!9583 setRes!9583))

(declare-fun b!1525225 () Bool)

(declare-fun tp!437854 () Bool)

(assert (=> b!1525225 (= e!975213 (and setRes!9583 tp!437854))))

(declare-fun condSetEmpty!9583 () Bool)

(assert (=> b!1525225 (= condSetEmpty!9583 (= (_1!8589 (_1!8590 (h!21554 mapValue!7147))) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun setNonEmpty!9583 () Bool)

(declare-fun setElem!9583 () Context!1374)

(declare-fun tp!437855 () Bool)

(assert (=> setNonEmpty!9583 (= setRes!9583 (and tp!437855 (inv!21411 setElem!9583) e!975214))))

(declare-fun setRest!9583 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9583 (= (_1!8589 (_1!8590 (h!21554 mapValue!7147))) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9583 true) setRest!9583))))

(assert (= (and b!1525225 condSetEmpty!9583) setIsEmpty!9583))

(assert (= (and b!1525225 (not condSetEmpty!9583)) setNonEmpty!9583))

(assert (= setNonEmpty!9583 b!1525226))

(assert (= (and mapNonEmpty!7148 ((_ is Cons!16153) mapValue!7147)) b!1525225))

(declare-fun m!1795780 () Bool)

(assert (=> setNonEmpty!9583 m!1795780))

(declare-fun tp!437858 () Bool)

(declare-fun e!975215 () Bool)

(declare-fun tp!437859 () Bool)

(declare-fun b!1525227 () Bool)

(assert (=> b!1525227 (= e!975215 (and (inv!21399 (left!13393 (c!249943 input!1102))) tp!437858 (inv!21399 (right!13723 (c!249943 input!1102))) tp!437859))))

(declare-fun b!1525229 () Bool)

(declare-fun e!975216 () Bool)

(declare-fun tp!437857 () Bool)

(assert (=> b!1525229 (= e!975216 tp!437857)))

(declare-fun b!1525228 () Bool)

(assert (=> b!1525228 (= e!975215 (and (inv!21412 (xs!8247 (c!249943 input!1102))) e!975216))))

(assert (=> b!1524886 (= tp!437768 (and (inv!21399 (c!249943 input!1102)) e!975215))))

(assert (= (and b!1524886 ((_ is Node!5456) (c!249943 input!1102))) b!1525227))

(assert (= b!1525228 b!1525229))

(assert (= (and b!1524886 ((_ is Leaf!8086) (c!249943 input!1102))) b!1525228))

(declare-fun m!1795782 () Bool)

(assert (=> b!1525227 m!1795782))

(declare-fun m!1795784 () Bool)

(assert (=> b!1525227 m!1795784))

(declare-fun m!1795786 () Bool)

(assert (=> b!1525228 m!1795786))

(assert (=> b!1524886 m!1795282))

(declare-fun b!1525240 () Bool)

(declare-fun b_free!39503 () Bool)

(declare-fun b_next!40207 () Bool)

(assert (=> b!1525240 (= b_free!39503 (not b_next!40207))))

(declare-fun tp!437869 () Bool)

(declare-fun b_and!105945 () Bool)

(assert (=> b!1525240 (= tp!437869 b_and!105945)))

(declare-fun b_free!39505 () Bool)

(declare-fun b_next!40209 () Bool)

(assert (=> b!1525240 (= b_free!39505 (not b_next!40209))))

(declare-fun t!139971 () Bool)

(declare-fun tb!86635 () Bool)

(assert (=> (and b!1525240 (= (toChars!4068 (transformation!2852 (h!21557 (t!139966 rules!1640)))) (toChars!4068 (transformation!2852 (rule!4655 (_1!8595 (v!22970 (_1!8596 lt!529908))))))) t!139971) tb!86635))

(declare-fun result!104268 () Bool)

(assert (= result!104268 result!104254))

(assert (=> d!453436 t!139971))

(declare-fun b_and!105947 () Bool)

(declare-fun tp!437868 () Bool)

(assert (=> b!1525240 (= tp!437868 (and (=> t!139971 result!104268) b_and!105947))))

(declare-fun e!975227 () Bool)

(assert (=> b!1525240 (= e!975227 (and tp!437869 tp!437868))))

(declare-fun tp!437871 () Bool)

(declare-fun b!1525239 () Bool)

(declare-fun e!975228 () Bool)

(assert (=> b!1525239 (= e!975228 (and tp!437871 (inv!21398 (tag!3116 (h!21557 (t!139966 rules!1640)))) (inv!21401 (transformation!2852 (h!21557 (t!139966 rules!1640)))) e!975227))))

(declare-fun b!1525238 () Bool)

(declare-fun e!975225 () Bool)

(declare-fun tp!437870 () Bool)

(assert (=> b!1525238 (= e!975225 (and e!975228 tp!437870))))

(assert (=> b!1524889 (= tp!437774 e!975225)))

(assert (= b!1525239 b!1525240))

(assert (= b!1525238 b!1525239))

(assert (= (and b!1524889 ((_ is Cons!16156) (t!139966 rules!1640))) b!1525238))

(declare-fun m!1795788 () Bool)

(assert (=> b!1525239 m!1795788))

(declare-fun m!1795790 () Bool)

(assert (=> b!1525239 m!1795790))

(declare-fun setIsEmpty!9584 () Bool)

(declare-fun setRes!9584 () Bool)

(assert (=> setIsEmpty!9584 setRes!9584))

(declare-fun e!975229 () Bool)

(assert (=> b!1524878 (= tp!437767 e!975229)))

(declare-fun e!975230 () Bool)

(declare-fun tp!437874 () Bool)

(declare-fun b!1525241 () Bool)

(assert (=> b!1525241 (= e!975229 (and (inv!21411 (_1!8587 (_1!8588 (h!21553 (zeroValue!1761 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616)))))))))) e!975230 tp_is_empty!7023 setRes!9584 tp!437874))))

(declare-fun condSetEmpty!9584 () Bool)

(assert (=> b!1525241 (= condSetEmpty!9584 (= (_2!8588 (h!21553 (zeroValue!1761 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616)))))))) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun e!975231 () Bool)

(declare-fun tp!437872 () Bool)

(declare-fun setElem!9584 () Context!1374)

(declare-fun setNonEmpty!9584 () Bool)

(assert (=> setNonEmpty!9584 (= setRes!9584 (and tp!437872 (inv!21411 setElem!9584) e!975231))))

(declare-fun setRest!9584 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9584 (= (_2!8588 (h!21553 (zeroValue!1761 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9584 true) setRest!9584))))

(declare-fun b!1525242 () Bool)

(declare-fun tp!437875 () Bool)

(assert (=> b!1525242 (= e!975230 tp!437875)))

(declare-fun b!1525243 () Bool)

(declare-fun tp!437873 () Bool)

(assert (=> b!1525243 (= e!975231 tp!437873)))

(assert (= b!1525241 b!1525242))

(assert (= (and b!1525241 condSetEmpty!9584) setIsEmpty!9584))

(assert (= (and b!1525241 (not condSetEmpty!9584)) setNonEmpty!9584))

(assert (= setNonEmpty!9584 b!1525243))

(assert (= (and b!1524878 ((_ is Cons!16152) (zeroValue!1761 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616)))))))) b!1525241))

(declare-fun m!1795792 () Bool)

(assert (=> b!1525241 m!1795792))

(declare-fun m!1795794 () Bool)

(assert (=> setNonEmpty!9584 m!1795794))

(declare-fun setIsEmpty!9585 () Bool)

(declare-fun setRes!9585 () Bool)

(assert (=> setIsEmpty!9585 setRes!9585))

(declare-fun e!975232 () Bool)

(assert (=> b!1524878 (= tp!437778 e!975232)))

(declare-fun b!1525244 () Bool)

(declare-fun tp!437878 () Bool)

(declare-fun e!975233 () Bool)

(assert (=> b!1525244 (= e!975232 (and (inv!21411 (_1!8587 (_1!8588 (h!21553 (minValue!1761 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616)))))))))) e!975233 tp_is_empty!7023 setRes!9585 tp!437878))))

(declare-fun condSetEmpty!9585 () Bool)

(assert (=> b!1525244 (= condSetEmpty!9585 (= (_2!8588 (h!21553 (minValue!1761 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616)))))))) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun tp!437876 () Bool)

(declare-fun setElem!9585 () Context!1374)

(declare-fun setNonEmpty!9585 () Bool)

(declare-fun e!975234 () Bool)

(assert (=> setNonEmpty!9585 (= setRes!9585 (and tp!437876 (inv!21411 setElem!9585) e!975234))))

(declare-fun setRest!9585 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9585 (= (_2!8588 (h!21553 (minValue!1761 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9585 true) setRest!9585))))

(declare-fun b!1525245 () Bool)

(declare-fun tp!437879 () Bool)

(assert (=> b!1525245 (= e!975233 tp!437879)))

(declare-fun b!1525246 () Bool)

(declare-fun tp!437877 () Bool)

(assert (=> b!1525246 (= e!975234 tp!437877)))

(assert (= b!1525244 b!1525245))

(assert (= (and b!1525244 condSetEmpty!9585) setIsEmpty!9585))

(assert (= (and b!1525244 (not condSetEmpty!9585)) setNonEmpty!9585))

(assert (= setNonEmpty!9585 b!1525246))

(assert (= (and b!1524878 ((_ is Cons!16152) (minValue!1761 (v!22964 (underlying!3217 (v!22965 (underlying!3218 (cache!1829 cacheUp!616)))))))) b!1525244))

(declare-fun m!1795796 () Bool)

(assert (=> b!1525244 m!1795796))

(declare-fun m!1795798 () Bool)

(assert (=> setNonEmpty!9585 m!1795798))

(declare-fun setIsEmpty!9590 () Bool)

(declare-fun setRes!9590 () Bool)

(assert (=> setIsEmpty!9590 setRes!9590))

(declare-fun b!1525261 () Bool)

(declare-fun e!975247 () Bool)

(declare-fun tp!437900 () Bool)

(assert (=> b!1525261 (= e!975247 tp!437900)))

(declare-fun setIsEmpty!9591 () Bool)

(declare-fun setRes!9591 () Bool)

(assert (=> setIsEmpty!9591 setRes!9591))

(declare-fun b!1525262 () Bool)

(declare-fun e!975248 () Bool)

(declare-fun tp!437905 () Bool)

(assert (=> b!1525262 (= e!975248 tp!437905)))

(declare-fun setElem!9591 () Context!1374)

(declare-fun setNonEmpty!9590 () Bool)

(declare-fun tp!437899 () Bool)

(assert (=> setNonEmpty!9590 (= setRes!9591 (and tp!437899 (inv!21411 setElem!9591) e!975248))))

(declare-fun mapValue!7154 () List!16220)

(declare-fun setRest!9591 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9590 (= (_2!8588 (h!21553 mapValue!7154)) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9591 true) setRest!9591))))

(declare-fun b!1525263 () Bool)

(declare-fun e!975251 () Bool)

(declare-fun tp!437903 () Bool)

(assert (=> b!1525263 (= e!975251 tp!437903)))

(declare-fun mapDefault!7154 () List!16220)

(declare-fun tp!437901 () Bool)

(declare-fun b!1525264 () Bool)

(declare-fun e!975249 () Bool)

(assert (=> b!1525264 (= e!975249 (and (inv!21411 (_1!8587 (_1!8588 (h!21553 mapDefault!7154)))) e!975247 tp_is_empty!7023 setRes!9590 tp!437901))))

(declare-fun condSetEmpty!9590 () Bool)

(assert (=> b!1525264 (= condSetEmpty!9590 (= (_2!8588 (h!21553 mapDefault!7154)) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun e!975250 () Bool)

(declare-fun setNonEmpty!9591 () Bool)

(declare-fun tp!437904 () Bool)

(declare-fun setElem!9590 () Context!1374)

(assert (=> setNonEmpty!9591 (= setRes!9590 (and tp!437904 (inv!21411 setElem!9590) e!975250))))

(declare-fun setRest!9590 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9591 (= (_2!8588 (h!21553 mapDefault!7154)) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9590 true) setRest!9590))))

(declare-fun b!1525265 () Bool)

(declare-fun e!975252 () Bool)

(declare-fun tp!437902 () Bool)

(assert (=> b!1525265 (= e!975252 (and (inv!21411 (_1!8587 (_1!8588 (h!21553 mapValue!7154)))) e!975251 tp_is_empty!7023 setRes!9591 tp!437902))))

(declare-fun condSetEmpty!9591 () Bool)

(assert (=> b!1525265 (= condSetEmpty!9591 (= (_2!8588 (h!21553 mapValue!7154)) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun mapIsEmpty!7154 () Bool)

(declare-fun mapRes!7154 () Bool)

(assert (=> mapIsEmpty!7154 mapRes!7154))

(declare-fun condMapEmpty!7154 () Bool)

(assert (=> mapNonEmpty!7146 (= condMapEmpty!7154 (= mapRest!7146 ((as const (Array (_ BitVec 32) List!16220)) mapDefault!7154)))))

(assert (=> mapNonEmpty!7146 (= tp!437787 (and e!975249 mapRes!7154))))

(declare-fun mapNonEmpty!7154 () Bool)

(declare-fun tp!437906 () Bool)

(assert (=> mapNonEmpty!7154 (= mapRes!7154 (and tp!437906 e!975252))))

(declare-fun mapKey!7154 () (_ BitVec 32))

(declare-fun mapRest!7154 () (Array (_ BitVec 32) List!16220))

(assert (=> mapNonEmpty!7154 (= mapRest!7146 (store mapRest!7154 mapKey!7154 mapValue!7154))))

(declare-fun b!1525266 () Bool)

(declare-fun tp!437898 () Bool)

(assert (=> b!1525266 (= e!975250 tp!437898)))

(assert (= (and mapNonEmpty!7146 condMapEmpty!7154) mapIsEmpty!7154))

(assert (= (and mapNonEmpty!7146 (not condMapEmpty!7154)) mapNonEmpty!7154))

(assert (= b!1525265 b!1525263))

(assert (= (and b!1525265 condSetEmpty!9591) setIsEmpty!9591))

(assert (= (and b!1525265 (not condSetEmpty!9591)) setNonEmpty!9590))

(assert (= setNonEmpty!9590 b!1525262))

(assert (= (and mapNonEmpty!7154 ((_ is Cons!16152) mapValue!7154)) b!1525265))

(assert (= b!1525264 b!1525261))

(assert (= (and b!1525264 condSetEmpty!9590) setIsEmpty!9590))

(assert (= (and b!1525264 (not condSetEmpty!9590)) setNonEmpty!9591))

(assert (= setNonEmpty!9591 b!1525266))

(assert (= (and mapNonEmpty!7146 ((_ is Cons!16152) mapDefault!7154)) b!1525264))

(declare-fun m!1795800 () Bool)

(assert (=> mapNonEmpty!7154 m!1795800))

(declare-fun m!1795802 () Bool)

(assert (=> b!1525264 m!1795802))

(declare-fun m!1795804 () Bool)

(assert (=> setNonEmpty!9590 m!1795804))

(declare-fun m!1795806 () Bool)

(assert (=> b!1525265 m!1795806))

(declare-fun m!1795808 () Bool)

(assert (=> setNonEmpty!9591 m!1795808))

(declare-fun setIsEmpty!9592 () Bool)

(declare-fun setRes!9592 () Bool)

(assert (=> setIsEmpty!9592 setRes!9592))

(declare-fun e!975253 () Bool)

(assert (=> mapNonEmpty!7146 (= tp!437793 e!975253)))

(declare-fun e!975254 () Bool)

(declare-fun tp!437909 () Bool)

(declare-fun b!1525267 () Bool)

(assert (=> b!1525267 (= e!975253 (and (inv!21411 (_1!8587 (_1!8588 (h!21553 mapValue!7148)))) e!975254 tp_is_empty!7023 setRes!9592 tp!437909))))

(declare-fun condSetEmpty!9592 () Bool)

(assert (=> b!1525267 (= condSetEmpty!9592 (= (_2!8588 (h!21553 mapValue!7148)) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun setElem!9592 () Context!1374)

(declare-fun setNonEmpty!9592 () Bool)

(declare-fun e!975255 () Bool)

(declare-fun tp!437907 () Bool)

(assert (=> setNonEmpty!9592 (= setRes!9592 (and tp!437907 (inv!21411 setElem!9592) e!975255))))

(declare-fun setRest!9592 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9592 (= (_2!8588 (h!21553 mapValue!7148)) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9592 true) setRest!9592))))

(declare-fun b!1525268 () Bool)

(declare-fun tp!437910 () Bool)

(assert (=> b!1525268 (= e!975254 tp!437910)))

(declare-fun b!1525269 () Bool)

(declare-fun tp!437908 () Bool)

(assert (=> b!1525269 (= e!975255 tp!437908)))

(assert (= b!1525267 b!1525268))

(assert (= (and b!1525267 condSetEmpty!9592) setIsEmpty!9592))

(assert (= (and b!1525267 (not condSetEmpty!9592)) setNonEmpty!9592))

(assert (= setNonEmpty!9592 b!1525269))

(assert (= (and mapNonEmpty!7146 ((_ is Cons!16152) mapValue!7148)) b!1525267))

(declare-fun m!1795810 () Bool)

(assert (=> b!1525267 m!1795810))

(declare-fun m!1795812 () Bool)

(assert (=> setNonEmpty!9592 m!1795812))

(declare-fun b!1525278 () Bool)

(declare-fun e!975264 () Bool)

(declare-fun tp!437921 () Bool)

(assert (=> b!1525278 (= e!975264 tp!437921)))

(declare-fun e!975262 () Bool)

(assert (=> b!1524902 (= tp!437784 e!975262)))

(declare-fun setIsEmpty!9595 () Bool)

(declare-fun setRes!9595 () Bool)

(assert (=> setIsEmpty!9595 setRes!9595))

(declare-fun tp!437923 () Bool)

(declare-fun setElem!9595 () Context!1374)

(declare-fun setNonEmpty!9595 () Bool)

(assert (=> setNonEmpty!9595 (= setRes!9595 (and tp!437923 (inv!21411 setElem!9595) e!975264))))

(declare-fun setRest!9595 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9595 (= (_2!8594 (h!21558 (zeroValue!1763 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9595 true) setRest!9595))))

(declare-fun tp!437925 () Bool)

(declare-fun b!1525279 () Bool)

(declare-fun tp!437924 () Bool)

(declare-fun e!975263 () Bool)

(assert (=> b!1525279 (= e!975262 (and tp!437925 (inv!21411 (_2!8593 (_1!8594 (h!21558 (zeroValue!1763 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629)))))))))) e!975263 tp_is_empty!7023 setRes!9595 tp!437924))))

(declare-fun condSetEmpty!9595 () Bool)

(assert (=> b!1525279 (= condSetEmpty!9595 (= (_2!8594 (h!21558 (zeroValue!1763 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629)))))))) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun b!1525280 () Bool)

(declare-fun tp!437922 () Bool)

(assert (=> b!1525280 (= e!975263 tp!437922)))

(assert (= b!1525279 b!1525280))

(assert (= (and b!1525279 condSetEmpty!9595) setIsEmpty!9595))

(assert (= (and b!1525279 (not condSetEmpty!9595)) setNonEmpty!9595))

(assert (= setNonEmpty!9595 b!1525278))

(assert (= (and b!1524902 ((_ is Cons!16157) (zeroValue!1763 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629)))))))) b!1525279))

(declare-fun m!1795814 () Bool)

(assert (=> setNonEmpty!9595 m!1795814))

(declare-fun m!1795816 () Bool)

(assert (=> b!1525279 m!1795816))

(declare-fun b!1525281 () Bool)

(declare-fun e!975267 () Bool)

(declare-fun tp!437926 () Bool)

(assert (=> b!1525281 (= e!975267 tp!437926)))

(declare-fun e!975265 () Bool)

(assert (=> b!1524902 (= tp!437786 e!975265)))

(declare-fun setIsEmpty!9596 () Bool)

(declare-fun setRes!9596 () Bool)

(assert (=> setIsEmpty!9596 setRes!9596))

(declare-fun tp!437928 () Bool)

(declare-fun setElem!9596 () Context!1374)

(declare-fun setNonEmpty!9596 () Bool)

(assert (=> setNonEmpty!9596 (= setRes!9596 (and tp!437928 (inv!21411 setElem!9596) e!975267))))

(declare-fun setRest!9596 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9596 (= (_2!8594 (h!21558 (minValue!1763 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9596 true) setRest!9596))))

(declare-fun b!1525282 () Bool)

(declare-fun tp!437930 () Bool)

(declare-fun tp!437929 () Bool)

(declare-fun e!975266 () Bool)

(assert (=> b!1525282 (= e!975265 (and tp!437930 (inv!21411 (_2!8593 (_1!8594 (h!21558 (minValue!1763 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629)))))))))) e!975266 tp_is_empty!7023 setRes!9596 tp!437929))))

(declare-fun condSetEmpty!9596 () Bool)

(assert (=> b!1525282 (= condSetEmpty!9596 (= (_2!8594 (h!21558 (minValue!1763 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629)))))))) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun b!1525283 () Bool)

(declare-fun tp!437927 () Bool)

(assert (=> b!1525283 (= e!975266 tp!437927)))

(assert (= b!1525282 b!1525283))

(assert (= (and b!1525282 condSetEmpty!9596) setIsEmpty!9596))

(assert (= (and b!1525282 (not condSetEmpty!9596)) setNonEmpty!9596))

(assert (= setNonEmpty!9596 b!1525281))

(assert (= (and b!1524902 ((_ is Cons!16157) (minValue!1763 (v!22968 (underlying!3221 (v!22969 (underlying!3222 (cache!1831 cacheDown!629)))))))) b!1525282))

(declare-fun m!1795818 () Bool)

(assert (=> setNonEmpty!9596 m!1795818))

(declare-fun m!1795820 () Bool)

(assert (=> b!1525282 m!1795820))

(declare-fun tp!437932 () Bool)

(declare-fun tp!437933 () Bool)

(declare-fun b!1525284 () Bool)

(declare-fun e!975268 () Bool)

(assert (=> b!1525284 (= e!975268 (and (inv!21399 (left!13393 (c!249943 treated!70))) tp!437932 (inv!21399 (right!13723 (c!249943 treated!70))) tp!437933))))

(declare-fun b!1525286 () Bool)

(declare-fun e!975269 () Bool)

(declare-fun tp!437931 () Bool)

(assert (=> b!1525286 (= e!975269 tp!437931)))

(declare-fun b!1525285 () Bool)

(assert (=> b!1525285 (= e!975268 (and (inv!21412 (xs!8247 (c!249943 treated!70))) e!975269))))

(assert (=> b!1524919 (= tp!437789 (and (inv!21399 (c!249943 treated!70)) e!975268))))

(assert (= (and b!1524919 ((_ is Node!5456) (c!249943 treated!70))) b!1525284))

(assert (= b!1525285 b!1525286))

(assert (= (and b!1524919 ((_ is Leaf!8086) (c!249943 treated!70))) b!1525285))

(declare-fun m!1795822 () Bool)

(assert (=> b!1525284 m!1795822))

(declare-fun m!1795824 () Bool)

(assert (=> b!1525284 m!1795824))

(declare-fun m!1795826 () Bool)

(assert (=> b!1525285 m!1795826))

(assert (=> b!1524919 m!1795326))

(declare-fun b!1525300 () Bool)

(declare-fun e!975272 () Bool)

(declare-fun tp!437946 () Bool)

(declare-fun tp!437945 () Bool)

(assert (=> b!1525300 (= e!975272 (and tp!437946 tp!437945))))

(declare-fun b!1525299 () Bool)

(declare-fun tp!437947 () Bool)

(assert (=> b!1525299 (= e!975272 tp!437947)))

(assert (=> b!1524892 (= tp!437769 e!975272)))

(declare-fun b!1525297 () Bool)

(assert (=> b!1525297 (= e!975272 tp_is_empty!7023)))

(declare-fun b!1525298 () Bool)

(declare-fun tp!437944 () Bool)

(declare-fun tp!437948 () Bool)

(assert (=> b!1525298 (= e!975272 (and tp!437944 tp!437948))))

(assert (= (and b!1524892 ((_ is ElementMatch!4169) (regex!2852 (h!21557 rules!1640)))) b!1525297))

(assert (= (and b!1524892 ((_ is Concat!7111) (regex!2852 (h!21557 rules!1640)))) b!1525298))

(assert (= (and b!1524892 ((_ is Star!4169) (regex!2852 (h!21557 rules!1640)))) b!1525299))

(assert (= (and b!1524892 ((_ is Union!4169) (regex!2852 (h!21557 rules!1640)))) b!1525300))

(declare-fun b!1525302 () Bool)

(declare-fun e!975274 () Bool)

(declare-fun tp!437951 () Bool)

(assert (=> b!1525302 (= e!975274 tp!437951)))

(declare-fun e!975273 () Bool)

(assert (=> b!1524910 (= tp!437788 e!975273)))

(declare-fun setIsEmpty!9597 () Bool)

(declare-fun setRes!9597 () Bool)

(assert (=> setIsEmpty!9597 setRes!9597))

(declare-fun b!1525301 () Bool)

(declare-fun tp!437949 () Bool)

(assert (=> b!1525301 (= e!975273 (and setRes!9597 tp!437949))))

(declare-fun condSetEmpty!9597 () Bool)

(assert (=> b!1525301 (= condSetEmpty!9597 (= (_1!8589 (_1!8590 (h!21554 mapDefault!7148))) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun tp!437950 () Bool)

(declare-fun setElem!9597 () Context!1374)

(declare-fun setNonEmpty!9597 () Bool)

(assert (=> setNonEmpty!9597 (= setRes!9597 (and tp!437950 (inv!21411 setElem!9597) e!975274))))

(declare-fun setRest!9597 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9597 (= (_1!8589 (_1!8590 (h!21554 mapDefault!7148))) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9597 true) setRest!9597))))

(assert (= (and b!1525301 condSetEmpty!9597) setIsEmpty!9597))

(assert (= (and b!1525301 (not condSetEmpty!9597)) setNonEmpty!9597))

(assert (= setNonEmpty!9597 b!1525302))

(assert (= (and b!1524910 ((_ is Cons!16153) mapDefault!7148)) b!1525301))

(declare-fun m!1795828 () Bool)

(assert (=> setNonEmpty!9597 m!1795828))

(declare-fun tp!437959 () Bool)

(declare-fun e!975279 () Bool)

(declare-fun b!1525311 () Bool)

(declare-fun tp!437958 () Bool)

(assert (=> b!1525311 (= e!975279 (and (inv!21400 (left!13394 (c!249944 acc!392))) tp!437958 (inv!21400 (right!13724 (c!249944 acc!392))) tp!437959))))

(declare-fun b!1525313 () Bool)

(declare-fun e!975280 () Bool)

(declare-fun tp!437960 () Bool)

(assert (=> b!1525313 (= e!975280 tp!437960)))

(declare-fun b!1525312 () Bool)

(declare-fun inv!21413 (IArray!10919) Bool)

(assert (=> b!1525312 (= e!975279 (and (inv!21413 (xs!8248 (c!249944 acc!392))) e!975280))))

(assert (=> b!1524891 (= tp!437783 (and (inv!21400 (c!249944 acc!392)) e!975279))))

(assert (= (and b!1524891 ((_ is Node!5457) (c!249944 acc!392))) b!1525311))

(assert (= b!1525312 b!1525313))

(assert (= (and b!1524891 ((_ is Leaf!8087) (c!249944 acc!392))) b!1525312))

(declare-fun m!1795830 () Bool)

(assert (=> b!1525311 m!1795830))

(declare-fun m!1795832 () Bool)

(assert (=> b!1525311 m!1795832))

(declare-fun m!1795834 () Bool)

(assert (=> b!1525312 m!1795834))

(assert (=> b!1524891 m!1795214))

(declare-fun b!1525314 () Bool)

(declare-fun e!975283 () Bool)

(declare-fun tp!437961 () Bool)

(assert (=> b!1525314 (= e!975283 tp!437961)))

(declare-fun e!975281 () Bool)

(assert (=> b!1524904 (= tp!437775 e!975281)))

(declare-fun setIsEmpty!9598 () Bool)

(declare-fun setRes!9598 () Bool)

(assert (=> setIsEmpty!9598 setRes!9598))

(declare-fun setElem!9598 () Context!1374)

(declare-fun setNonEmpty!9598 () Bool)

(declare-fun tp!437963 () Bool)

(assert (=> setNonEmpty!9598 (= setRes!9598 (and tp!437963 (inv!21411 setElem!9598) e!975283))))

(declare-fun setRest!9598 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9598 (= (_2!8594 (h!21558 mapDefault!7146)) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9598 true) setRest!9598))))

(declare-fun tp!437964 () Bool)

(declare-fun b!1525315 () Bool)

(declare-fun e!975282 () Bool)

(declare-fun tp!437965 () Bool)

(assert (=> b!1525315 (= e!975281 (and tp!437965 (inv!21411 (_2!8593 (_1!8594 (h!21558 mapDefault!7146)))) e!975282 tp_is_empty!7023 setRes!9598 tp!437964))))

(declare-fun condSetEmpty!9598 () Bool)

(assert (=> b!1525315 (= condSetEmpty!9598 (= (_2!8594 (h!21558 mapDefault!7146)) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun b!1525316 () Bool)

(declare-fun tp!437962 () Bool)

(assert (=> b!1525316 (= e!975282 tp!437962)))

(assert (= b!1525315 b!1525316))

(assert (= (and b!1525315 condSetEmpty!9598) setIsEmpty!9598))

(assert (= (and b!1525315 (not condSetEmpty!9598)) setNonEmpty!9598))

(assert (= setNonEmpty!9598 b!1525314))

(assert (= (and b!1524904 ((_ is Cons!16157) mapDefault!7146)) b!1525315))

(declare-fun m!1795836 () Bool)

(assert (=> setNonEmpty!9598 m!1795836))

(declare-fun m!1795838 () Bool)

(assert (=> b!1525315 m!1795838))

(declare-fun tp!437967 () Bool)

(declare-fun tp!437968 () Bool)

(declare-fun e!975284 () Bool)

(declare-fun b!1525317 () Bool)

(assert (=> b!1525317 (= e!975284 (and (inv!21399 (left!13393 (c!249943 totalInput!458))) tp!437967 (inv!21399 (right!13723 (c!249943 totalInput!458))) tp!437968))))

(declare-fun b!1525319 () Bool)

(declare-fun e!975285 () Bool)

(declare-fun tp!437966 () Bool)

(assert (=> b!1525319 (= e!975285 tp!437966)))

(declare-fun b!1525318 () Bool)

(assert (=> b!1525318 (= e!975284 (and (inv!21412 (xs!8247 (c!249943 totalInput!458))) e!975285))))

(assert (=> b!1524921 (= tp!437794 (and (inv!21399 (c!249943 totalInput!458)) e!975284))))

(assert (= (and b!1524921 ((_ is Node!5456) (c!249943 totalInput!458))) b!1525317))

(assert (= b!1525318 b!1525319))

(assert (= (and b!1524921 ((_ is Leaf!8086) (c!249943 totalInput!458))) b!1525318))

(declare-fun m!1795840 () Bool)

(assert (=> b!1525317 m!1795840))

(declare-fun m!1795842 () Bool)

(assert (=> b!1525317 m!1795842))

(declare-fun m!1795844 () Bool)

(assert (=> b!1525318 m!1795844))

(assert (=> b!1524921 m!1795284))

(declare-fun mapIsEmpty!7157 () Bool)

(declare-fun mapRes!7157 () Bool)

(assert (=> mapIsEmpty!7157 mapRes!7157))

(declare-fun setIsEmpty!9603 () Bool)

(declare-fun setRes!9604 () Bool)

(assert (=> setIsEmpty!9603 setRes!9604))

(declare-fun b!1525334 () Bool)

(declare-fun tp!437991 () Bool)

(declare-fun tp!437999 () Bool)

(declare-fun mapDefault!7157 () List!16225)

(declare-fun e!975298 () Bool)

(declare-fun e!975302 () Bool)

(assert (=> b!1525334 (= e!975298 (and tp!437999 (inv!21411 (_2!8593 (_1!8594 (h!21558 mapDefault!7157)))) e!975302 tp_is_empty!7023 setRes!9604 tp!437991))))

(declare-fun condSetEmpty!9604 () Bool)

(assert (=> b!1525334 (= condSetEmpty!9604 (= (_2!8594 (h!21558 mapDefault!7157)) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun condMapEmpty!7157 () Bool)

(assert (=> mapNonEmpty!7147 (= condMapEmpty!7157 (= mapRest!7147 ((as const (Array (_ BitVec 32) List!16225)) mapDefault!7157)))))

(assert (=> mapNonEmpty!7147 (= tp!437785 (and e!975298 mapRes!7157))))

(declare-fun setIsEmpty!9604 () Bool)

(declare-fun setRes!9603 () Bool)

(assert (=> setIsEmpty!9604 setRes!9603))

(declare-fun b!1525335 () Bool)

(declare-fun tp!437996 () Bool)

(assert (=> b!1525335 (= e!975302 tp!437996)))

(declare-fun setNonEmpty!9603 () Bool)

(declare-fun setElem!9603 () Context!1374)

(declare-fun e!975301 () Bool)

(declare-fun tp!437992 () Bool)

(assert (=> setNonEmpty!9603 (= setRes!9603 (and tp!437992 (inv!21411 setElem!9603) e!975301))))

(declare-fun mapValue!7157 () List!16225)

(declare-fun setRest!9604 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9603 (= (_2!8594 (h!21558 mapValue!7157)) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9603 true) setRest!9604))))

(declare-fun tp!438001 () Bool)

(declare-fun e!975299 () Bool)

(declare-fun e!975300 () Bool)

(declare-fun b!1525336 () Bool)

(declare-fun tp!437997 () Bool)

(assert (=> b!1525336 (= e!975299 (and tp!437997 (inv!21411 (_2!8593 (_1!8594 (h!21558 mapValue!7157)))) e!975300 tp_is_empty!7023 setRes!9603 tp!438001))))

(declare-fun condSetEmpty!9603 () Bool)

(assert (=> b!1525336 (= condSetEmpty!9603 (= (_2!8594 (h!21558 mapValue!7157)) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun b!1525337 () Bool)

(declare-fun tp!437998 () Bool)

(assert (=> b!1525337 (= e!975301 tp!437998)))

(declare-fun b!1525338 () Bool)

(declare-fun e!975303 () Bool)

(declare-fun tp!437993 () Bool)

(assert (=> b!1525338 (= e!975303 tp!437993)))

(declare-fun setElem!9604 () Context!1374)

(declare-fun setNonEmpty!9604 () Bool)

(declare-fun tp!438000 () Bool)

(assert (=> setNonEmpty!9604 (= setRes!9604 (and tp!438000 (inv!21411 setElem!9604) e!975303))))

(declare-fun setRest!9603 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9604 (= (_2!8594 (h!21558 mapDefault!7157)) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9604 true) setRest!9603))))

(declare-fun b!1525339 () Bool)

(declare-fun tp!437994 () Bool)

(assert (=> b!1525339 (= e!975300 tp!437994)))

(declare-fun mapNonEmpty!7157 () Bool)

(declare-fun tp!437995 () Bool)

(assert (=> mapNonEmpty!7157 (= mapRes!7157 (and tp!437995 e!975299))))

(declare-fun mapRest!7157 () (Array (_ BitVec 32) List!16225))

(declare-fun mapKey!7157 () (_ BitVec 32))

(assert (=> mapNonEmpty!7157 (= mapRest!7147 (store mapRest!7157 mapKey!7157 mapValue!7157))))

(assert (= (and mapNonEmpty!7147 condMapEmpty!7157) mapIsEmpty!7157))

(assert (= (and mapNonEmpty!7147 (not condMapEmpty!7157)) mapNonEmpty!7157))

(assert (= b!1525336 b!1525339))

(assert (= (and b!1525336 condSetEmpty!9603) setIsEmpty!9604))

(assert (= (and b!1525336 (not condSetEmpty!9603)) setNonEmpty!9603))

(assert (= setNonEmpty!9603 b!1525337))

(assert (= (and mapNonEmpty!7157 ((_ is Cons!16157) mapValue!7157)) b!1525336))

(assert (= b!1525334 b!1525335))

(assert (= (and b!1525334 condSetEmpty!9604) setIsEmpty!9603))

(assert (= (and b!1525334 (not condSetEmpty!9604)) setNonEmpty!9604))

(assert (= setNonEmpty!9604 b!1525338))

(assert (= (and mapNonEmpty!7147 ((_ is Cons!16157) mapDefault!7157)) b!1525334))

(declare-fun m!1795846 () Bool)

(assert (=> setNonEmpty!9604 m!1795846))

(declare-fun m!1795848 () Bool)

(assert (=> setNonEmpty!9603 m!1795848))

(declare-fun m!1795850 () Bool)

(assert (=> b!1525334 m!1795850))

(declare-fun m!1795852 () Bool)

(assert (=> b!1525336 m!1795852))

(declare-fun m!1795854 () Bool)

(assert (=> mapNonEmpty!7157 m!1795854))

(declare-fun b!1525340 () Bool)

(declare-fun e!975306 () Bool)

(declare-fun tp!438002 () Bool)

(assert (=> b!1525340 (= e!975306 tp!438002)))

(declare-fun e!975304 () Bool)

(assert (=> mapNonEmpty!7147 (= tp!437781 e!975304)))

(declare-fun setIsEmpty!9605 () Bool)

(declare-fun setRes!9605 () Bool)

(assert (=> setIsEmpty!9605 setRes!9605))

(declare-fun setNonEmpty!9605 () Bool)

(declare-fun tp!438004 () Bool)

(declare-fun setElem!9605 () Context!1374)

(assert (=> setNonEmpty!9605 (= setRes!9605 (and tp!438004 (inv!21411 setElem!9605) e!975306))))

(declare-fun setRest!9605 () (InoxSet Context!1374))

(assert (=> setNonEmpty!9605 (= (_2!8594 (h!21558 mapValue!7146)) ((_ map or) (store ((as const (Array Context!1374 Bool)) false) setElem!9605 true) setRest!9605))))

(declare-fun tp!438006 () Bool)

(declare-fun e!975305 () Bool)

(declare-fun tp!438005 () Bool)

(declare-fun b!1525341 () Bool)

(assert (=> b!1525341 (= e!975304 (and tp!438006 (inv!21411 (_2!8593 (_1!8594 (h!21558 mapValue!7146)))) e!975305 tp_is_empty!7023 setRes!9605 tp!438005))))

(declare-fun condSetEmpty!9605 () Bool)

(assert (=> b!1525341 (= condSetEmpty!9605 (= (_2!8594 (h!21558 mapValue!7146)) ((as const (Array Context!1374 Bool)) false)))))

(declare-fun b!1525342 () Bool)

(declare-fun tp!438003 () Bool)

(assert (=> b!1525342 (= e!975305 tp!438003)))

(assert (= b!1525341 b!1525342))

(assert (= (and b!1525341 condSetEmpty!9605) setIsEmpty!9605))

(assert (= (and b!1525341 (not condSetEmpty!9605)) setNonEmpty!9605))

(assert (= setNonEmpty!9605 b!1525340))

(assert (= (and mapNonEmpty!7147 ((_ is Cons!16157) mapValue!7146)) b!1525341))

(declare-fun m!1795856 () Bool)

(assert (=> setNonEmpty!9605 m!1795856))

(declare-fun m!1795858 () Bool)

(assert (=> b!1525341 m!1795858))

(check-sat (not b!1524955) (not d!453510) (not b!1524998) (not d!453522) b_and!105935 (not b!1525067) (not b!1525245) (not b!1525081) b_and!105941 (not b!1524948) (not b!1525175) (not b!1525239) (not b!1525084) (not b!1525266) (not b!1525268) (not d!453426) (not d!453530) (not b!1525209) (not b!1525087) (not b_next!40205) (not b!1525299) (not b!1525283) (not b!1525267) (not b!1524975) (not d!453438) (not mapNonEmpty!7157) (not b!1525030) (not d!453458) (not b!1525091) (not b!1525336) (not b!1525302) (not setNonEmpty!9572) (not b!1525023) (not d!453462) (not setNonEmpty!9592) (not b!1525188) b_and!105931 (not d!453444) (not b!1524997) (not b!1525285) (not d!453528) (not d!453428) (not b!1525116) (not b!1525172) (not d!453482) (not b!1525062) (not setNonEmpty!9584) (not b!1525223) (not d!453504) (not b!1525238) (not b_next!40203) (not b!1525001) (not b!1525311) (not b!1525286) (not b!1525316) (not setNonEmpty!9604) (not b!1525185) (not b!1525089) (not bm!100988) (not b!1525199) (not b!1525040) (not b!1525312) (not b!1525035) (not b!1525261) (not b!1525278) (not b!1525225) (not d!453442) (not d!453456) (not d!453432) (not b!1525032) b_and!105927 (not setNonEmpty!9582) (not d!453500) (not d!453546) (not b!1525228) (not b!1525226) (not setNonEmpty!9585) (not b!1525300) (not b!1525118) (not b!1524886) (not d!453526) (not d!453506) (not b!1524960) (not mapNonEmpty!7154) (not setNonEmpty!9596) (not b!1525042) (not b!1525153) (not b!1525243) (not b!1525004) (not b!1524959) (not d!453520) (not b!1524891) (not b!1525269) (not b!1525317) (not b!1525163) (not d!453440) (not b!1525025) (not d!453452) (not b!1525145) (not b!1525337) (not b!1525131) (not b!1525033) (not bm!100991) (not b!1525186) (not b!1525279) (not b!1525129) (not setNonEmpty!9573) (not b!1525076) (not b!1525074) (not d!453518) (not b!1525125) (not b!1525224) (not b!1525263) (not b!1524980) (not b!1525127) (not b!1525120) (not d!453550) (not b!1524999) (not b_next!40201) (not b!1525284) (not b!1525143) (not b!1525165) (not b!1525024) b_and!105933 (not setNonEmpty!9595) (not b!1525088) (not b!1525341) b_and!105945 (not b!1525315) (not b!1525280) (not b!1525058) (not b_lambda!47923) (not b!1525070) (not d!453466) (not setNonEmpty!9603) (not b!1525149) (not b!1525338) (not b!1525178) (not b!1525147) (not d!453560) (not b!1525119) (not b!1525227) (not b!1525148) b_and!105939 (not b!1525169) (not d!453524) (not b!1525043) (not b!1524964) (not b!1525198) (not b!1525044) (not b_next!40197) (not setNonEmpty!9605) (not b!1525152) (not b!1525282) (not b!1525246) (not b!1525083) (not b!1525222) (not setNonEmpty!9583) (not b!1525340) (not d!453488) (not b!1525041) (not b!1525281) (not setNonEmpty!9581) (not d!453446) (not b!1525241) (not d!453548) (not setNonEmpty!9590) (not b!1525085) (not d!453544) (not b!1525229) (not b!1525144) (not b!1525301) (not b!1525130) (not b_next!40191) (not d!453492) (not b!1525208) (not d!453448) (not d!453508) (not setNonEmpty!9598) (not b!1525064) (not b!1525028) (not b!1525124) (not tb!86633) (not b!1525242) (not b!1524979) (not b!1525069) tp_is_empty!7023 (not b!1524963) (not b!1525197) (not b!1525244) (not b!1525002) (not b!1525265) (not b!1525314) (not b!1525005) (not b!1524996) (not d!453454) (not b!1525065) (not b_next!40207) (not d!453512) (not b!1525313) (not d!453538) (not b!1525134) (not b!1525122) (not b!1525318) (not b!1525146) (not b!1524919) (not d!453502) (not b!1524931) (not b!1525029) (not b!1524943) (not d!453464) (not d!453496) (not b!1525210) (not d!453516) (not b!1525319) (not b!1525262) (not b!1525123) (not b!1525221) (not b!1525117) (not b!1525334) (not b!1524976) (not b!1525156) (not d!453484) (not d!453460) (not d!453436) (not b!1524921) (not b!1524933) (not b_next!40195) b_and!105929 (not b!1525298) (not b!1525133) (not b!1525264) (not b!1524953) (not b_next!40199) (not b!1525339) (not b!1524956) (not b_next!40193) (not b!1525037) b_and!105947 (not b!1525082) (not d!453486) (not setNonEmpty!9591) (not b!1525335) (not d!453450) (not d!453558) (not d!453430) (not setNonEmpty!9597) (not b!1525187) (not b_next!40209) (not d!453498) b_and!105943 (not b!1525072) (not setNonEmpty!9576) (not b!1525060) (not d!453542) (not b!1525128) (not mapNonEmpty!7151) (not b!1525150) (not b!1525168) (not b!1524914) (not b!1524944) (not b!1525342) (not b!1525046) (not d!453552) (not b!1525027) (not d!453480) (not b!1525077) (not d!453532) (not b!1525047))
(check-sat b_and!105935 b_and!105941 (not b_next!40205) b_and!105931 (not b_next!40203) b_and!105927 (not b_next!40201) (not b_next!40191) (not b_next!40207) (not b_next!40209) b_and!105943 b_and!105933 b_and!105945 b_and!105939 (not b_next!40197) (not b_next!40195) b_and!105929 (not b_next!40199) (not b_next!40193) b_and!105947)
