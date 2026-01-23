; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95580 () Bool)

(assert start!95580)

(declare-fun b!1107054 () Bool)

(declare-fun b_free!26833 () Bool)

(declare-fun b_next!26897 () Bool)

(assert (=> b!1107054 (= b_free!26833 (not b_next!26897))))

(declare-fun tp!328224 () Bool)

(declare-fun b_and!79153 () Bool)

(assert (=> b!1107054 (= tp!328224 b_and!79153)))

(declare-fun b!1107049 () Bool)

(declare-fun b_free!26835 () Bool)

(declare-fun b_next!26899 () Bool)

(assert (=> b!1107049 (= b_free!26835 (not b_next!26899))))

(declare-fun tp!328223 () Bool)

(declare-fun b_and!79155 () Bool)

(assert (=> b!1107049 (= tp!328223 b_and!79155)))

(declare-fun b!1107046 () Bool)

(declare-fun b_free!26837 () Bool)

(declare-fun b_next!26901 () Bool)

(assert (=> b!1107046 (= b_free!26837 (not b_next!26901))))

(declare-fun tp!328210 () Bool)

(declare-fun b_and!79157 () Bool)

(assert (=> b!1107046 (= tp!328210 b_and!79157)))

(declare-fun b!1107042 () Bool)

(declare-fun b_free!26839 () Bool)

(declare-fun b_next!26903 () Bool)

(assert (=> b!1107042 (= b_free!26839 (not b_next!26903))))

(declare-fun tp!328216 () Bool)

(declare-fun b_and!79159 () Bool)

(assert (=> b!1107042 (= tp!328216 b_and!79159)))

(declare-fun b!1107047 () Bool)

(declare-fun b_free!26841 () Bool)

(declare-fun b_next!26905 () Bool)

(assert (=> b!1107047 (= b_free!26841 (not b_next!26905))))

(declare-fun tp!328220 () Bool)

(declare-fun b_and!79161 () Bool)

(assert (=> b!1107047 (= tp!328220 b_and!79161)))

(declare-fun b_free!26843 () Bool)

(declare-fun b_next!26907 () Bool)

(assert (=> b!1107047 (= b_free!26843 (not b_next!26907))))

(declare-fun tp!328215 () Bool)

(declare-fun b_and!79163 () Bool)

(assert (=> b!1107047 (= tp!328215 b_and!79163)))

(declare-fun e!701868 () Bool)

(declare-fun e!701859 () Bool)

(assert (=> b!1107042 (= e!701868 (and e!701859 tp!328216))))

(declare-fun b!1107043 () Bool)

(declare-fun e!701852 () Bool)

(declare-fun e!701851 () Bool)

(assert (=> b!1107043 (= e!701852 e!701851)))

(declare-fun b!1107044 () Bool)

(declare-fun e!701869 () Bool)

(assert (=> b!1107044 (= e!701869 e!701852)))

(declare-fun b!1107045 () Bool)

(declare-fun e!701867 () Bool)

(declare-fun tp!328206 () Bool)

(declare-fun mapRes!6141 () Bool)

(assert (=> b!1107045 (= e!701867 (and tp!328206 mapRes!6141))))

(declare-fun condMapEmpty!6140 () Bool)

(declare-datatypes ((C!6660 0))(
  ( (C!6661 (val!3586 Int)) )
))
(declare-datatypes ((Regex!3135 0))(
  ( (ElementMatch!3135 (c!187951 C!6660)) (Concat!5066 (regOne!6782 Regex!3135) (regTwo!6782 Regex!3135)) (EmptyExpr!3135) (Star!3135 (reg!3464 Regex!3135)) (EmptyLang!3135) (Union!3135 (regOne!6783 Regex!3135) (regTwo!6783 Regex!3135)) )
))
(declare-datatypes ((List!10841 0))(
  ( (Nil!10817) (Cons!10817 (h!16218 Regex!3135) (t!105405 List!10841)) )
))
(declare-datatypes ((Context!1042 0))(
  ( (Context!1043 (exprs!1021 List!10841)) )
))
(declare-datatypes ((tuple3!1088 0))(
  ( (tuple3!1089 (_1!6768 Regex!3135) (_2!6768 Context!1042) (_3!835 C!6660)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!11866 0))(
  ( (tuple2!11867 (_1!6769 tuple3!1088) (_2!6769 (InoxSet Context!1042))) )
))
(declare-datatypes ((List!10842 0))(
  ( (Nil!10818) (Cons!10818 (h!16219 tuple2!11866) (t!105406 List!10842)) )
))
(declare-datatypes ((array!4489 0))(
  ( (array!4490 (arr!2002 (Array (_ BitVec 32) (_ BitVec 64))) (size!8401 (_ BitVec 32))) )
))
(declare-datatypes ((array!4491 0))(
  ( (array!4492 (arr!2003 (Array (_ BitVec 32) List!10842)) (size!8402 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2542 0))(
  ( (LongMapFixedSize!2543 (defaultEntry!1631 Int) (mask!3757 (_ BitVec 32)) (extraKeys!1518 (_ BitVec 32)) (zeroValue!1528 List!10842) (minValue!1528 List!10842) (_size!2651 (_ BitVec 32)) (_keys!1565 array!4489) (_values!1550 array!4491) (_vacant!1332 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5025 0))(
  ( (Cell!5026 (v!20033 LongMapFixedSize!2542)) )
))
(declare-datatypes ((MutLongMap!1271 0))(
  ( (LongMap!1271 (underlying!2735 Cell!5025)) (MutLongMapExt!1270 (__x!7548 Int)) )
))
(declare-datatypes ((Cell!5027 0))(
  ( (Cell!5028 (v!20034 MutLongMap!1271)) )
))
(declare-datatypes ((Hashable!1243 0))(
  ( (HashableExt!1242 (__x!7549 Int)) )
))
(declare-datatypes ((MutableMap!1243 0))(
  ( (MutableMapExt!1242 (__x!7550 Int)) (HashMap!1243 (underlying!2736 Cell!5027) (hashF!3162 Hashable!1243) (_size!2652 (_ BitVec 32)) (defaultValue!1403 Int)) )
))
(declare-datatypes ((CacheDown!716 0))(
  ( (CacheDown!717 (cache!1624 MutableMap!1243)) )
))
(declare-fun cacheDown!397 () CacheDown!716)

(declare-fun mapDefault!6141 () List!10842)

(assert (=> b!1107045 (= condMapEmpty!6140 (= (arr!2003 (_values!1550 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397))))))) ((as const (Array (_ BitVec 32) List!10842)) mapDefault!6141)))))

(declare-datatypes ((tuple2!11868 0))(
  ( (tuple2!11869 (_1!6770 Context!1042) (_2!6770 C!6660)) )
))
(declare-datatypes ((tuple2!11870 0))(
  ( (tuple2!11871 (_1!6771 tuple2!11868) (_2!6771 (InoxSet Context!1042))) )
))
(declare-datatypes ((List!10843 0))(
  ( (Nil!10819) (Cons!10819 (h!16220 tuple2!11870) (t!105407 List!10843)) )
))
(declare-datatypes ((Hashable!1244 0))(
  ( (HashableExt!1243 (__x!7551 Int)) )
))
(declare-datatypes ((array!4493 0))(
  ( (array!4494 (arr!2004 (Array (_ BitVec 32) List!10843)) (size!8403 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2544 0))(
  ( (LongMapFixedSize!2545 (defaultEntry!1632 Int) (mask!3758 (_ BitVec 32)) (extraKeys!1519 (_ BitVec 32)) (zeroValue!1529 List!10843) (minValue!1529 List!10843) (_size!2653 (_ BitVec 32)) (_keys!1566 array!4489) (_values!1551 array!4493) (_vacant!1333 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5029 0))(
  ( (Cell!5030 (v!20035 LongMapFixedSize!2544)) )
))
(declare-datatypes ((MutLongMap!1272 0))(
  ( (LongMap!1272 (underlying!2737 Cell!5029)) (MutLongMapExt!1271 (__x!7552 Int)) )
))
(declare-datatypes ((Cell!5031 0))(
  ( (Cell!5032 (v!20036 MutLongMap!1272)) )
))
(declare-datatypes ((MutableMap!1244 0))(
  ( (MutableMapExt!1243 (__x!7553 Int)) (HashMap!1244 (underlying!2738 Cell!5031) (hashF!3163 Hashable!1244) (_size!2654 (_ BitVec 32)) (defaultValue!1404 Int)) )
))
(declare-datatypes ((CacheUp!712 0))(
  ( (CacheUp!713 (cache!1625 MutableMap!1244)) )
))
(declare-fun cacheUp!384 () CacheUp!712)

(declare-fun tp!328208 () Bool)

(declare-fun e!701854 () Bool)

(declare-fun tp!328219 () Bool)

(declare-fun e!701864 () Bool)

(declare-fun array_inv!1442 (array!4489) Bool)

(declare-fun array_inv!1443 (array!4493) Bool)

(assert (=> b!1107046 (= e!701854 (and tp!328210 tp!328208 tp!328219 (array_inv!1442 (_keys!1566 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384))))))) (array_inv!1443 (_values!1551 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384))))))) e!701864))))

(declare-fun e!701865 () Bool)

(assert (=> b!1107047 (= e!701865 (and tp!328220 tp!328215))))

(declare-fun b!1107048 () Bool)

(declare-fun e!701856 () Bool)

(declare-datatypes ((List!10844 0))(
  ( (Nil!10820) (Cons!10820 (h!16221 (_ BitVec 16)) (t!105408 List!10844)) )
))
(declare-datatypes ((TokenValue!1931 0))(
  ( (FloatLiteralValue!3862 (text!13962 List!10844)) (TokenValueExt!1930 (__x!7554 Int)) (Broken!9655 (value!61123 List!10844)) (Object!1954) (End!1931) (Def!1931) (Underscore!1931) (Match!1931) (Else!1931) (Error!1931) (Case!1931) (If!1931) (Extends!1931) (Abstract!1931) (Class!1931) (Val!1931) (DelimiterValue!3862 (del!1991 List!10844)) (KeywordValue!1937 (value!61124 List!10844)) (CommentValue!3862 (value!61125 List!10844)) (WhitespaceValue!3862 (value!61126 List!10844)) (IndentationValue!1931 (value!61127 List!10844)) (String!13242) (Int32!1931) (Broken!9656 (value!61128 List!10844)) (Boolean!1932) (Unit!16463) (OperatorValue!1934 (op!1991 List!10844)) (IdentifierValue!3862 (value!61129 List!10844)) (IdentifierValue!3863 (value!61130 List!10844)) (WhitespaceValue!3863 (value!61131 List!10844)) (True!3862) (False!3862) (Broken!9657 (value!61132 List!10844)) (Broken!9658 (value!61133 List!10844)) (True!3863) (RightBrace!1931) (RightBracket!1931) (Colon!1931) (Null!1931) (Comma!1931) (LeftBracket!1931) (False!3863) (LeftBrace!1931) (ImaginaryLiteralValue!1931 (text!13963 List!10844)) (StringLiteralValue!5793 (value!61134 List!10844)) (EOFValue!1931 (value!61135 List!10844)) (IdentValue!1931 (value!61136 List!10844)) (DelimiterValue!3863 (value!61137 List!10844)) (DedentValue!1931 (value!61138 List!10844)) (NewLineValue!1931 (value!61139 List!10844)) (IntegerValue!5793 (value!61140 (_ BitVec 32)) (text!13964 List!10844)) (IntegerValue!5794 (value!61141 Int) (text!13965 List!10844)) (Times!1931) (Or!1931) (Equal!1931) (Minus!1931) (Broken!9659 (value!61142 List!10844)) (And!1931) (Div!1931) (LessEqual!1931) (Mod!1931) (Concat!5067) (Not!1931) (Plus!1931) (SpaceValue!1931 (value!61143 List!10844)) (IntegerValue!5795 (value!61144 Int) (text!13966 List!10844)) (StringLiteralValue!5794 (text!13967 List!10844)) (FloatLiteralValue!3863 (text!13968 List!10844)) (BytesLiteralValue!1931 (value!61145 List!10844)) (CommentValue!3863 (value!61146 List!10844)) (StringLiteralValue!5795 (value!61147 List!10844)) (ErrorTokenValue!1931 (msg!1992 List!10844)) )
))
(declare-datatypes ((List!10845 0))(
  ( (Nil!10821) (Cons!10821 (h!16222 C!6660) (t!105409 List!10845)) )
))
(declare-datatypes ((IArray!6845 0))(
  ( (IArray!6846 (innerList!3480 List!10845)) )
))
(declare-datatypes ((String!13243 0))(
  ( (String!13244 (value!61148 String)) )
))
(declare-datatypes ((Conc!3420 0))(
  ( (Node!3420 (left!9392 Conc!3420) (right!9722 Conc!3420) (csize!7070 Int) (cheight!3631 Int)) (Leaf!5363 (xs!6113 IArray!6845) (csize!7071 Int)) (Empty!3420) )
))
(declare-datatypes ((BalanceConc!6862 0))(
  ( (BalanceConc!6863 (c!187952 Conc!3420)) )
))
(declare-datatypes ((TokenValueInjection!3562 0))(
  ( (TokenValueInjection!3563 (toValue!2942 Int) (toChars!2801 Int)) )
))
(declare-datatypes ((Rule!3530 0))(
  ( (Rule!3531 (regex!1865 Regex!3135) (tag!2127 String!13243) (isSeparator!1865 Bool) (transformation!1865 TokenValueInjection!3562)) )
))
(declare-datatypes ((List!10846 0))(
  ( (Nil!10822) (Cons!10822 (h!16223 Rule!3530) (t!105410 List!10846)) )
))
(declare-fun rules!859 () List!10846)

(declare-datatypes ((Token!3392 0))(
  ( (Token!3393 (value!61149 TokenValue!1931) (rule!3286 Rule!3530) (size!8404 Int) (originalCharacters!2419 List!10845)) )
))
(declare-datatypes ((List!10847 0))(
  ( (Nil!10823) (Cons!10823 (h!16224 Token!3392) (t!105411 List!10847)) )
))
(declare-datatypes ((IArray!6847 0))(
  ( (IArray!6848 (innerList!3481 List!10847)) )
))
(declare-datatypes ((Conc!3421 0))(
  ( (Node!3421 (left!9393 Conc!3421) (right!9723 Conc!3421) (csize!7072 Int) (cheight!3632 Int)) (Leaf!5364 (xs!6114 IArray!6847) (csize!7073 Int)) (Empty!3421) )
))
(declare-datatypes ((BalanceConc!6864 0))(
  ( (BalanceConc!6865 (c!187953 Conc!3421)) )
))
(declare-fun tokens!304 () BalanceConc!6864)

(declare-datatypes ((PrintableTokens!436 0))(
  ( (PrintableTokens!437 (rules!9151 List!10846) (tokens!1421 BalanceConc!6864)) )
))
(declare-fun inv!13895 (PrintableTokens!436) Bool)

(assert (=> b!1107048 (= e!701856 (not (inv!13895 (PrintableTokens!437 rules!859 tokens!304))))))

(declare-fun e!701850 () Bool)

(declare-fun e!701866 () Bool)

(assert (=> b!1107049 (= e!701850 (and e!701866 tp!328223))))

(declare-fun b!1107050 () Bool)

(declare-fun e!701862 () Bool)

(assert (=> b!1107050 (= e!701862 e!701850)))

(declare-fun mapIsEmpty!6141 () Bool)

(declare-fun mapRes!6140 () Bool)

(assert (=> mapIsEmpty!6141 mapRes!6140))

(declare-fun b!1107051 () Bool)

(declare-fun e!701860 () Bool)

(declare-fun e!701855 () Bool)

(declare-fun tp!328209 () Bool)

(assert (=> b!1107051 (= e!701860 (and e!701855 tp!328209))))

(declare-fun b!1107052 () Bool)

(declare-fun tp!328218 () Bool)

(assert (=> b!1107052 (= e!701864 (and tp!328218 mapRes!6140))))

(declare-fun condMapEmpty!6141 () Bool)

(declare-fun mapDefault!6140 () List!10843)

(assert (=> b!1107052 (= condMapEmpty!6141 (= (arr!2004 (_values!1551 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384))))))) ((as const (Array (_ BitVec 32) List!10843)) mapDefault!6140)))))

(declare-fun b!1107053 () Bool)

(declare-fun e!701858 () Bool)

(declare-fun lt!376034 () MutLongMap!1272)

(get-info :version)

(assert (=> b!1107053 (= e!701859 (and e!701858 ((_ is LongMap!1272) lt!376034)))))

(assert (=> b!1107053 (= lt!376034 (v!20036 (underlying!2738 (cache!1625 cacheUp!384))))))

(declare-fun tp!328222 () Bool)

(declare-fun tp!328212 () Bool)

(declare-fun array_inv!1444 (array!4491) Bool)

(assert (=> b!1107054 (= e!701851 (and tp!328224 tp!328212 tp!328222 (array_inv!1442 (_keys!1565 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397))))))) (array_inv!1444 (_values!1550 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397))))))) e!701867))))

(declare-fun b!1107055 () Bool)

(declare-fun e!701849 () Bool)

(assert (=> b!1107055 (= e!701849 e!701854)))

(declare-fun b!1107056 () Bool)

(declare-fun res!490353 () Bool)

(assert (=> b!1107056 (=> (not res!490353) (not e!701856))))

(declare-datatypes ((LexerInterface!1577 0))(
  ( (LexerInterfaceExt!1574 (__x!7555 Int)) (Lexer!1575) )
))
(declare-fun rulesInvariant!1452 (LexerInterface!1577 List!10846) Bool)

(assert (=> b!1107056 (= res!490353 (rulesInvariant!1452 Lexer!1575 rules!859))))

(declare-fun b!1107057 () Bool)

(declare-fun res!490351 () Bool)

(assert (=> b!1107057 (=> (not res!490351) (not e!701856))))

(declare-datatypes ((tuple3!1090 0))(
  ( (tuple3!1091 (_1!6772 Bool) (_2!6772 CacheUp!712) (_3!836 CacheDown!716)) )
))
(declare-fun separableTokensMem!5 (LexerInterface!1577 BalanceConc!6864 List!10846 CacheUp!712 CacheDown!716) tuple3!1090)

(assert (=> b!1107057 (= res!490351 (_1!6772 (separableTokensMem!5 Lexer!1575 tokens!304 rules!859 cacheUp!384 cacheDown!397)))))

(declare-fun b!1107058 () Bool)

(declare-fun e!701870 () Bool)

(declare-fun tp!328217 () Bool)

(declare-fun inv!13896 (Conc!3421) Bool)

(assert (=> b!1107058 (= e!701870 (and (inv!13896 (c!187953 tokens!304)) tp!328217))))

(declare-fun mapNonEmpty!6140 () Bool)

(declare-fun tp!328211 () Bool)

(declare-fun tp!328213 () Bool)

(assert (=> mapNonEmpty!6140 (= mapRes!6141 (and tp!328211 tp!328213))))

(declare-fun mapKey!6141 () (_ BitVec 32))

(declare-fun mapRest!6141 () (Array (_ BitVec 32) List!10842))

(declare-fun mapValue!6140 () List!10842)

(assert (=> mapNonEmpty!6140 (= (arr!2003 (_values!1550 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397))))))) (store mapRest!6141 mapKey!6141 mapValue!6140))))

(declare-fun mapIsEmpty!6140 () Bool)

(assert (=> mapIsEmpty!6140 mapRes!6141))

(declare-fun res!490352 () Bool)

(assert (=> start!95580 (=> (not res!490352) (not e!701856))))

(declare-fun isEmpty!6732 (List!10846) Bool)

(assert (=> start!95580 (= res!490352 (not (isEmpty!6732 rules!859)))))

(assert (=> start!95580 e!701856))

(assert (=> start!95580 e!701860))

(declare-fun inv!13897 (BalanceConc!6864) Bool)

(assert (=> start!95580 (and (inv!13897 tokens!304) e!701870)))

(declare-fun e!701853 () Bool)

(declare-fun inv!13898 (CacheUp!712) Bool)

(assert (=> start!95580 (and (inv!13898 cacheUp!384) e!701853)))

(declare-fun inv!13899 (CacheDown!716) Bool)

(assert (=> start!95580 (and (inv!13899 cacheDown!397) e!701862)))

(declare-fun b!1107059 () Bool)

(declare-fun tp!328207 () Bool)

(declare-fun inv!13889 (String!13243) Bool)

(declare-fun inv!13900 (TokenValueInjection!3562) Bool)

(assert (=> b!1107059 (= e!701855 (and tp!328207 (inv!13889 (tag!2127 (h!16223 rules!859))) (inv!13900 (transformation!1865 (h!16223 rules!859))) e!701865))))

(declare-fun b!1107060 () Bool)

(assert (=> b!1107060 (= e!701858 e!701849)))

(declare-fun b!1107061 () Bool)

(declare-fun lt!376035 () MutLongMap!1271)

(assert (=> b!1107061 (= e!701866 (and e!701869 ((_ is LongMap!1271) lt!376035)))))

(assert (=> b!1107061 (= lt!376035 (v!20034 (underlying!2736 (cache!1624 cacheDown!397))))))

(declare-fun mapNonEmpty!6141 () Bool)

(declare-fun tp!328214 () Bool)

(declare-fun tp!328221 () Bool)

(assert (=> mapNonEmpty!6141 (= mapRes!6140 (and tp!328214 tp!328221))))

(declare-fun mapValue!6141 () List!10843)

(declare-fun mapKey!6140 () (_ BitVec 32))

(declare-fun mapRest!6140 () (Array (_ BitVec 32) List!10843))

(assert (=> mapNonEmpty!6141 (= (arr!2004 (_values!1551 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384))))))) (store mapRest!6140 mapKey!6140 mapValue!6141))))

(declare-fun b!1107062 () Bool)

(declare-fun res!490350 () Bool)

(assert (=> b!1107062 (=> (not res!490350) (not e!701856))))

(declare-fun rulesProduceEachTokenIndividually!620 (LexerInterface!1577 List!10846 BalanceConc!6864) Bool)

(assert (=> b!1107062 (= res!490350 (rulesProduceEachTokenIndividually!620 Lexer!1575 rules!859 tokens!304))))

(declare-fun b!1107063 () Bool)

(assert (=> b!1107063 (= e!701853 e!701868)))

(assert (= (and start!95580 res!490352) b!1107056))

(assert (= (and b!1107056 res!490353) b!1107062))

(assert (= (and b!1107062 res!490350) b!1107057))

(assert (= (and b!1107057 res!490351) b!1107048))

(assert (= b!1107059 b!1107047))

(assert (= b!1107051 b!1107059))

(assert (= (and start!95580 ((_ is Cons!10822) rules!859)) b!1107051))

(assert (= start!95580 b!1107058))

(assert (= (and b!1107052 condMapEmpty!6141) mapIsEmpty!6141))

(assert (= (and b!1107052 (not condMapEmpty!6141)) mapNonEmpty!6141))

(assert (= b!1107046 b!1107052))

(assert (= b!1107055 b!1107046))

(assert (= b!1107060 b!1107055))

(assert (= (and b!1107053 ((_ is LongMap!1272) (v!20036 (underlying!2738 (cache!1625 cacheUp!384))))) b!1107060))

(assert (= b!1107042 b!1107053))

(assert (= (and b!1107063 ((_ is HashMap!1244) (cache!1625 cacheUp!384))) b!1107042))

(assert (= start!95580 b!1107063))

(assert (= (and b!1107045 condMapEmpty!6140) mapIsEmpty!6140))

(assert (= (and b!1107045 (not condMapEmpty!6140)) mapNonEmpty!6140))

(assert (= b!1107054 b!1107045))

(assert (= b!1107043 b!1107054))

(assert (= b!1107044 b!1107043))

(assert (= (and b!1107061 ((_ is LongMap!1271) (v!20034 (underlying!2736 (cache!1624 cacheDown!397))))) b!1107044))

(assert (= b!1107049 b!1107061))

(assert (= (and b!1107050 ((_ is HashMap!1243) (cache!1624 cacheDown!397))) b!1107049))

(assert (= start!95580 b!1107050))

(declare-fun m!1264401 () Bool)

(assert (=> b!1107062 m!1264401))

(declare-fun m!1264403 () Bool)

(assert (=> b!1107057 m!1264403))

(declare-fun m!1264405 () Bool)

(assert (=> mapNonEmpty!6140 m!1264405))

(declare-fun m!1264407 () Bool)

(assert (=> b!1107059 m!1264407))

(declare-fun m!1264409 () Bool)

(assert (=> b!1107059 m!1264409))

(declare-fun m!1264411 () Bool)

(assert (=> start!95580 m!1264411))

(declare-fun m!1264413 () Bool)

(assert (=> start!95580 m!1264413))

(declare-fun m!1264415 () Bool)

(assert (=> start!95580 m!1264415))

(declare-fun m!1264417 () Bool)

(assert (=> start!95580 m!1264417))

(declare-fun m!1264419 () Bool)

(assert (=> b!1107056 m!1264419))

(declare-fun m!1264421 () Bool)

(assert (=> b!1107058 m!1264421))

(declare-fun m!1264423 () Bool)

(assert (=> b!1107046 m!1264423))

(declare-fun m!1264425 () Bool)

(assert (=> b!1107046 m!1264425))

(declare-fun m!1264427 () Bool)

(assert (=> b!1107048 m!1264427))

(declare-fun m!1264429 () Bool)

(assert (=> b!1107054 m!1264429))

(declare-fun m!1264431 () Bool)

(assert (=> b!1107054 m!1264431))

(declare-fun m!1264433 () Bool)

(assert (=> mapNonEmpty!6141 m!1264433))

(check-sat (not b!1107052) (not b!1107056) (not b_next!26907) (not mapNonEmpty!6141) (not b!1107048) (not b_next!26903) (not b!1107051) (not b!1107046) (not b!1107062) (not b!1107045) (not b!1107059) b_and!79153 (not b_next!26899) (not mapNonEmpty!6140) b_and!79159 (not b!1107058) b_and!79155 b_and!79161 (not b!1107057) b_and!79163 (not start!95580) (not b_next!26897) b_and!79157 (not b!1107054) (not b_next!26901) (not b_next!26905))
(check-sat (not b_next!26907) b_and!79163 (not b_next!26897) (not b_next!26903) b_and!79153 (not b_next!26899) b_and!79157 b_and!79159 b_and!79155 b_and!79161 (not b_next!26901) (not b_next!26905))
(get-model)

(declare-fun d!313411 () Bool)

(declare-fun lt!376040 () tuple3!1090)

(declare-fun separableTokens!55 (LexerInterface!1577 BalanceConc!6864 List!10846) Bool)

(assert (=> d!313411 (= (_1!6772 lt!376040) (separableTokens!55 Lexer!1575 tokens!304 rules!859))))

(declare-fun lt!376041 () tuple3!1090)

(assert (=> d!313411 (= lt!376040 (tuple3!1091 (_1!6772 lt!376041) (_2!6772 lt!376041) (_3!836 lt!376041)))))

(declare-fun tokensListTwoByTwoPredicateSeparableMem!3 (LexerInterface!1577 BalanceConc!6864 Int List!10846 CacheUp!712 CacheDown!716) tuple3!1090)

(assert (=> d!313411 (= lt!376041 (tokensListTwoByTwoPredicateSeparableMem!3 Lexer!1575 tokens!304 0 rules!859 cacheUp!384 cacheDown!397))))

(assert (=> d!313411 (not (isEmpty!6732 rules!859))))

(assert (=> d!313411 (= (separableTokensMem!5 Lexer!1575 tokens!304 rules!859 cacheUp!384 cacheDown!397) lt!376040)))

(declare-fun bs!260061 () Bool)

(assert (= bs!260061 d!313411))

(declare-fun m!1264435 () Bool)

(assert (=> bs!260061 m!1264435))

(declare-fun m!1264437 () Bool)

(assert (=> bs!260061 m!1264437))

(assert (=> bs!260061 m!1264411))

(assert (=> b!1107057 d!313411))

(declare-fun d!313413 () Bool)

(declare-fun res!490356 () Bool)

(declare-fun e!701873 () Bool)

(assert (=> d!313413 (=> (not res!490356) (not e!701873))))

(declare-fun rulesValid!638 (LexerInterface!1577 List!10846) Bool)

(assert (=> d!313413 (= res!490356 (rulesValid!638 Lexer!1575 rules!859))))

(assert (=> d!313413 (= (rulesInvariant!1452 Lexer!1575 rules!859) e!701873)))

(declare-fun b!1107066 () Bool)

(declare-datatypes ((List!10848 0))(
  ( (Nil!10824) (Cons!10824 (h!16225 String!13243) (t!105416 List!10848)) )
))
(declare-fun noDuplicateTag!638 (LexerInterface!1577 List!10846 List!10848) Bool)

(assert (=> b!1107066 (= e!701873 (noDuplicateTag!638 Lexer!1575 rules!859 Nil!10824))))

(assert (= (and d!313413 res!490356) b!1107066))

(declare-fun m!1264439 () Bool)

(assert (=> d!313413 m!1264439))

(declare-fun m!1264441 () Bool)

(assert (=> b!1107066 m!1264441))

(assert (=> b!1107056 d!313413))

(declare-fun d!313415 () Bool)

(assert (=> d!313415 (= (isEmpty!6732 rules!859) ((_ is Nil!10822) rules!859))))

(assert (=> start!95580 d!313415))

(declare-fun d!313417 () Bool)

(declare-fun isBalanced!938 (Conc!3421) Bool)

(assert (=> d!313417 (= (inv!13897 tokens!304) (isBalanced!938 (c!187953 tokens!304)))))

(declare-fun bs!260062 () Bool)

(assert (= bs!260062 d!313417))

(declare-fun m!1264443 () Bool)

(assert (=> bs!260062 m!1264443))

(assert (=> start!95580 d!313417))

(declare-fun d!313419 () Bool)

(declare-fun res!490359 () Bool)

(declare-fun e!701876 () Bool)

(assert (=> d!313419 (=> (not res!490359) (not e!701876))))

(assert (=> d!313419 (= res!490359 ((_ is HashMap!1244) (cache!1625 cacheUp!384)))))

(assert (=> d!313419 (= (inv!13898 cacheUp!384) e!701876)))

(declare-fun b!1107069 () Bool)

(declare-fun validCacheMapUp!115 (MutableMap!1244) Bool)

(assert (=> b!1107069 (= e!701876 (validCacheMapUp!115 (cache!1625 cacheUp!384)))))

(assert (= (and d!313419 res!490359) b!1107069))

(declare-fun m!1264445 () Bool)

(assert (=> b!1107069 m!1264445))

(assert (=> start!95580 d!313419))

(declare-fun d!313421 () Bool)

(declare-fun res!490362 () Bool)

(declare-fun e!701879 () Bool)

(assert (=> d!313421 (=> (not res!490362) (not e!701879))))

(assert (=> d!313421 (= res!490362 ((_ is HashMap!1243) (cache!1624 cacheDown!397)))))

(assert (=> d!313421 (= (inv!13899 cacheDown!397) e!701879)))

(declare-fun b!1107072 () Bool)

(declare-fun validCacheMapDown!115 (MutableMap!1243) Bool)

(assert (=> b!1107072 (= e!701879 (validCacheMapDown!115 (cache!1624 cacheDown!397)))))

(assert (= (and d!313421 res!490362) b!1107072))

(declare-fun m!1264447 () Bool)

(assert (=> b!1107072 m!1264447))

(assert (=> start!95580 d!313421))

(declare-fun d!313423 () Bool)

(assert (=> d!313423 (= (array_inv!1442 (_keys!1566 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384))))))) (bvsge (size!8401 (_keys!1566 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384))))))) #b00000000000000000000000000000000))))

(assert (=> b!1107046 d!313423))

(declare-fun d!313425 () Bool)

(assert (=> d!313425 (= (array_inv!1443 (_values!1551 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384))))))) (bvsge (size!8403 (_values!1551 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384))))))) #b00000000000000000000000000000000))))

(assert (=> b!1107046 d!313425))

(declare-fun d!313427 () Bool)

(assert (=> d!313427 (= (inv!13889 (tag!2127 (h!16223 rules!859))) (= (mod (str.len (value!61148 (tag!2127 (h!16223 rules!859)))) 2) 0))))

(assert (=> b!1107059 d!313427))

(declare-fun d!313429 () Bool)

(declare-fun res!490365 () Bool)

(declare-fun e!701882 () Bool)

(assert (=> d!313429 (=> (not res!490365) (not e!701882))))

(declare-fun semiInverseModEq!707 (Int Int) Bool)

(assert (=> d!313429 (= res!490365 (semiInverseModEq!707 (toChars!2801 (transformation!1865 (h!16223 rules!859))) (toValue!2942 (transformation!1865 (h!16223 rules!859)))))))

(assert (=> d!313429 (= (inv!13900 (transformation!1865 (h!16223 rules!859))) e!701882)))

(declare-fun b!1107075 () Bool)

(declare-fun equivClasses!674 (Int Int) Bool)

(assert (=> b!1107075 (= e!701882 (equivClasses!674 (toChars!2801 (transformation!1865 (h!16223 rules!859))) (toValue!2942 (transformation!1865 (h!16223 rules!859)))))))

(assert (= (and d!313429 res!490365) b!1107075))

(declare-fun m!1264449 () Bool)

(assert (=> d!313429 m!1264449))

(declare-fun m!1264451 () Bool)

(assert (=> b!1107075 m!1264451))

(assert (=> b!1107059 d!313429))

(declare-fun d!313431 () Bool)

(assert (=> d!313431 (= (array_inv!1442 (_keys!1565 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397))))))) (bvsge (size!8401 (_keys!1565 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397))))))) #b00000000000000000000000000000000))))

(assert (=> b!1107054 d!313431))

(declare-fun d!313433 () Bool)

(assert (=> d!313433 (= (array_inv!1444 (_values!1550 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397))))))) (bvsge (size!8402 (_values!1550 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397))))))) #b00000000000000000000000000000000))))

(assert (=> b!1107054 d!313433))

(declare-fun b!1107089 () Bool)

(declare-fun e!701894 () Bool)

(assert (=> b!1107089 (= e!701894 true)))

(declare-fun b!1107088 () Bool)

(declare-fun e!701893 () Bool)

(assert (=> b!1107088 (= e!701893 e!701894)))

(declare-fun b!1107087 () Bool)

(declare-fun e!701892 () Bool)

(assert (=> b!1107087 (= e!701892 e!701893)))

(declare-fun d!313435 () Bool)

(assert (=> d!313435 e!701892))

(assert (= b!1107088 b!1107089))

(assert (= b!1107087 b!1107088))

(assert (= (and d!313435 ((_ is Cons!10822) rules!859)) b!1107087))

(declare-fun order!6609 () Int)

(declare-fun lambda!44733 () Int)

(declare-fun order!6611 () Int)

(declare-fun dynLambda!4755 (Int Int) Int)

(declare-fun dynLambda!4756 (Int Int) Int)

(assert (=> b!1107089 (< (dynLambda!4755 order!6609 (toValue!2942 (transformation!1865 (h!16223 rules!859)))) (dynLambda!4756 order!6611 lambda!44733))))

(declare-fun order!6613 () Int)

(declare-fun dynLambda!4757 (Int Int) Int)

(assert (=> b!1107089 (< (dynLambda!4757 order!6613 (toChars!2801 (transformation!1865 (h!16223 rules!859)))) (dynLambda!4756 order!6611 lambda!44733))))

(assert (=> d!313435 true))

(declare-fun e!701885 () Bool)

(assert (=> d!313435 e!701885))

(declare-fun res!490368 () Bool)

(assert (=> d!313435 (=> (not res!490368) (not e!701885))))

(declare-fun lt!376044 () Bool)

(declare-fun forall!2541 (List!10847 Int) Bool)

(declare-fun list!3893 (BalanceConc!6864) List!10847)

(assert (=> d!313435 (= res!490368 (= lt!376044 (forall!2541 (list!3893 tokens!304) lambda!44733)))))

(declare-fun forall!2542 (BalanceConc!6864 Int) Bool)

(assert (=> d!313435 (= lt!376044 (forall!2542 tokens!304 lambda!44733))))

(assert (=> d!313435 (not (isEmpty!6732 rules!859))))

(assert (=> d!313435 (= (rulesProduceEachTokenIndividually!620 Lexer!1575 rules!859 tokens!304) lt!376044)))

(declare-fun b!1107078 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!459 (LexerInterface!1577 List!10846 List!10847) Bool)

(assert (=> b!1107078 (= e!701885 (= lt!376044 (rulesProduceEachTokenIndividuallyList!459 Lexer!1575 rules!859 (list!3893 tokens!304))))))

(assert (= (and d!313435 res!490368) b!1107078))

(declare-fun m!1264453 () Bool)

(assert (=> d!313435 m!1264453))

(assert (=> d!313435 m!1264453))

(declare-fun m!1264455 () Bool)

(assert (=> d!313435 m!1264455))

(declare-fun m!1264457 () Bool)

(assert (=> d!313435 m!1264457))

(assert (=> d!313435 m!1264411))

(assert (=> b!1107078 m!1264453))

(assert (=> b!1107078 m!1264453))

(declare-fun m!1264459 () Bool)

(assert (=> b!1107078 m!1264459))

(assert (=> b!1107062 d!313435))

(declare-fun d!313437 () Bool)

(declare-fun res!490375 () Bool)

(declare-fun e!701897 () Bool)

(assert (=> d!313437 (=> (not res!490375) (not e!701897))))

(assert (=> d!313437 (= res!490375 (not (isEmpty!6732 (rules!9151 (PrintableTokens!437 rules!859 tokens!304)))))))

(assert (=> d!313437 (= (inv!13895 (PrintableTokens!437 rules!859 tokens!304)) e!701897)))

(declare-fun b!1107098 () Bool)

(declare-fun res!490376 () Bool)

(assert (=> b!1107098 (=> (not res!490376) (not e!701897))))

(assert (=> b!1107098 (= res!490376 (rulesInvariant!1452 Lexer!1575 (rules!9151 (PrintableTokens!437 rules!859 tokens!304))))))

(declare-fun b!1107099 () Bool)

(declare-fun res!490377 () Bool)

(assert (=> b!1107099 (=> (not res!490377) (not e!701897))))

(assert (=> b!1107099 (= res!490377 (rulesProduceEachTokenIndividually!620 Lexer!1575 (rules!9151 (PrintableTokens!437 rules!859 tokens!304)) (tokens!1421 (PrintableTokens!437 rules!859 tokens!304))))))

(declare-fun b!1107100 () Bool)

(assert (=> b!1107100 (= e!701897 (separableTokens!55 Lexer!1575 (tokens!1421 (PrintableTokens!437 rules!859 tokens!304)) (rules!9151 (PrintableTokens!437 rules!859 tokens!304))))))

(assert (= (and d!313437 res!490375) b!1107098))

(assert (= (and b!1107098 res!490376) b!1107099))

(assert (= (and b!1107099 res!490377) b!1107100))

(declare-fun m!1264461 () Bool)

(assert (=> d!313437 m!1264461))

(declare-fun m!1264463 () Bool)

(assert (=> b!1107098 m!1264463))

(declare-fun m!1264465 () Bool)

(assert (=> b!1107099 m!1264465))

(declare-fun m!1264467 () Bool)

(assert (=> b!1107100 m!1264467))

(assert (=> b!1107048 d!313437))

(declare-fun d!313439 () Bool)

(declare-fun c!187956 () Bool)

(assert (=> d!313439 (= c!187956 ((_ is Node!3421) (c!187953 tokens!304)))))

(declare-fun e!701902 () Bool)

(assert (=> d!313439 (= (inv!13896 (c!187953 tokens!304)) e!701902)))

(declare-fun b!1107107 () Bool)

(declare-fun inv!13901 (Conc!3421) Bool)

(assert (=> b!1107107 (= e!701902 (inv!13901 (c!187953 tokens!304)))))

(declare-fun b!1107108 () Bool)

(declare-fun e!701903 () Bool)

(assert (=> b!1107108 (= e!701902 e!701903)))

(declare-fun res!490380 () Bool)

(assert (=> b!1107108 (= res!490380 (not ((_ is Leaf!5364) (c!187953 tokens!304))))))

(assert (=> b!1107108 (=> res!490380 e!701903)))

(declare-fun b!1107109 () Bool)

(declare-fun inv!13902 (Conc!3421) Bool)

(assert (=> b!1107109 (= e!701903 (inv!13902 (c!187953 tokens!304)))))

(assert (= (and d!313439 c!187956) b!1107107))

(assert (= (and d!313439 (not c!187956)) b!1107108))

(assert (= (and b!1107108 (not res!490380)) b!1107109))

(declare-fun m!1264469 () Bool)

(assert (=> b!1107107 m!1264469))

(declare-fun m!1264471 () Bool)

(assert (=> b!1107109 m!1264471))

(assert (=> b!1107058 d!313439))

(declare-fun setIsEmpty!7765 () Bool)

(declare-fun setRes!7765 () Bool)

(assert (=> setIsEmpty!7765 setRes!7765))

(declare-fun b!1107118 () Bool)

(declare-fun e!701911 () Bool)

(declare-fun tp!328234 () Bool)

(assert (=> b!1107118 (= e!701911 tp!328234)))

(declare-fun b!1107119 () Bool)

(declare-fun e!701910 () Bool)

(declare-fun tp!328233 () Bool)

(assert (=> b!1107119 (= e!701910 tp!328233)))

(declare-fun e!701912 () Bool)

(assert (=> b!1107052 (= tp!328218 e!701912)))

(declare-fun setElem!7765 () Context!1042)

(declare-fun setNonEmpty!7765 () Bool)

(declare-fun tp!328235 () Bool)

(declare-fun inv!13903 (Context!1042) Bool)

(assert (=> setNonEmpty!7765 (= setRes!7765 (and tp!328235 (inv!13903 setElem!7765) e!701911))))

(declare-fun setRest!7765 () (InoxSet Context!1042))

(assert (=> setNonEmpty!7765 (= (_2!6771 (h!16220 mapDefault!6140)) ((_ map or) (store ((as const (Array Context!1042 Bool)) false) setElem!7765 true) setRest!7765))))

(declare-fun b!1107120 () Bool)

(declare-fun tp!328236 () Bool)

(declare-fun tp_is_empty!5715 () Bool)

(assert (=> b!1107120 (= e!701912 (and (inv!13903 (_1!6770 (_1!6771 (h!16220 mapDefault!6140)))) e!701910 tp_is_empty!5715 setRes!7765 tp!328236))))

(declare-fun condSetEmpty!7765 () Bool)

(assert (=> b!1107120 (= condSetEmpty!7765 (= (_2!6771 (h!16220 mapDefault!6140)) ((as const (Array Context!1042 Bool)) false)))))

(assert (= b!1107120 b!1107119))

(assert (= (and b!1107120 condSetEmpty!7765) setIsEmpty!7765))

(assert (= (and b!1107120 (not condSetEmpty!7765)) setNonEmpty!7765))

(assert (= setNonEmpty!7765 b!1107118))

(assert (= (and b!1107052 ((_ is Cons!10819) mapDefault!6140)) b!1107120))

(declare-fun m!1264473 () Bool)

(assert (=> setNonEmpty!7765 m!1264473))

(declare-fun m!1264475 () Bool)

(assert (=> b!1107120 m!1264475))

(declare-fun b!1107131 () Bool)

(declare-fun b_free!26845 () Bool)

(declare-fun b_next!26909 () Bool)

(assert (=> b!1107131 (= b_free!26845 (not b_next!26909))))

(declare-fun tp!328247 () Bool)

(declare-fun b_and!79165 () Bool)

(assert (=> b!1107131 (= tp!328247 b_and!79165)))

(declare-fun b_free!26847 () Bool)

(declare-fun b_next!26911 () Bool)

(assert (=> b!1107131 (= b_free!26847 (not b_next!26911))))

(declare-fun tp!328245 () Bool)

(declare-fun b_and!79167 () Bool)

(assert (=> b!1107131 (= tp!328245 b_and!79167)))

(declare-fun e!701921 () Bool)

(assert (=> b!1107131 (= e!701921 (and tp!328247 tp!328245))))

(declare-fun tp!328248 () Bool)

(declare-fun e!701923 () Bool)

(declare-fun b!1107130 () Bool)

(assert (=> b!1107130 (= e!701923 (and tp!328248 (inv!13889 (tag!2127 (h!16223 (t!105410 rules!859)))) (inv!13900 (transformation!1865 (h!16223 (t!105410 rules!859)))) e!701921))))

(declare-fun b!1107129 () Bool)

(declare-fun e!701924 () Bool)

(declare-fun tp!328246 () Bool)

(assert (=> b!1107129 (= e!701924 (and e!701923 tp!328246))))

(assert (=> b!1107051 (= tp!328209 e!701924)))

(assert (= b!1107130 b!1107131))

(assert (= b!1107129 b!1107130))

(assert (= (and b!1107051 ((_ is Cons!10822) (t!105410 rules!859))) b!1107129))

(declare-fun m!1264477 () Bool)

(assert (=> b!1107130 m!1264477))

(declare-fun m!1264479 () Bool)

(assert (=> b!1107130 m!1264479))

(declare-fun setIsEmpty!7766 () Bool)

(declare-fun setRes!7766 () Bool)

(assert (=> setIsEmpty!7766 setRes!7766))

(declare-fun b!1107132 () Bool)

(declare-fun e!701926 () Bool)

(declare-fun tp!328250 () Bool)

(assert (=> b!1107132 (= e!701926 tp!328250)))

(declare-fun b!1107133 () Bool)

(declare-fun e!701925 () Bool)

(declare-fun tp!328249 () Bool)

(assert (=> b!1107133 (= e!701925 tp!328249)))

(declare-fun e!701927 () Bool)

(assert (=> b!1107046 (= tp!328208 e!701927)))

(declare-fun setNonEmpty!7766 () Bool)

(declare-fun tp!328251 () Bool)

(declare-fun setElem!7766 () Context!1042)

(assert (=> setNonEmpty!7766 (= setRes!7766 (and tp!328251 (inv!13903 setElem!7766) e!701926))))

(declare-fun setRest!7766 () (InoxSet Context!1042))

(assert (=> setNonEmpty!7766 (= (_2!6771 (h!16220 (zeroValue!1529 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384)))))))) ((_ map or) (store ((as const (Array Context!1042 Bool)) false) setElem!7766 true) setRest!7766))))

(declare-fun tp!328252 () Bool)

(declare-fun b!1107134 () Bool)

(assert (=> b!1107134 (= e!701927 (and (inv!13903 (_1!6770 (_1!6771 (h!16220 (zeroValue!1529 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384)))))))))) e!701925 tp_is_empty!5715 setRes!7766 tp!328252))))

(declare-fun condSetEmpty!7766 () Bool)

(assert (=> b!1107134 (= condSetEmpty!7766 (= (_2!6771 (h!16220 (zeroValue!1529 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384)))))))) ((as const (Array Context!1042 Bool)) false)))))

(assert (= b!1107134 b!1107133))

(assert (= (and b!1107134 condSetEmpty!7766) setIsEmpty!7766))

(assert (= (and b!1107134 (not condSetEmpty!7766)) setNonEmpty!7766))

(assert (= setNonEmpty!7766 b!1107132))

(assert (= (and b!1107046 ((_ is Cons!10819) (zeroValue!1529 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384)))))))) b!1107134))

(declare-fun m!1264481 () Bool)

(assert (=> setNonEmpty!7766 m!1264481))

(declare-fun m!1264483 () Bool)

(assert (=> b!1107134 m!1264483))

(declare-fun setIsEmpty!7767 () Bool)

(declare-fun setRes!7767 () Bool)

(assert (=> setIsEmpty!7767 setRes!7767))

(declare-fun b!1107135 () Bool)

(declare-fun e!701929 () Bool)

(declare-fun tp!328254 () Bool)

(assert (=> b!1107135 (= e!701929 tp!328254)))

(declare-fun b!1107136 () Bool)

(declare-fun e!701928 () Bool)

(declare-fun tp!328253 () Bool)

(assert (=> b!1107136 (= e!701928 tp!328253)))

(declare-fun e!701930 () Bool)

(assert (=> b!1107046 (= tp!328219 e!701930)))

(declare-fun setElem!7767 () Context!1042)

(declare-fun tp!328255 () Bool)

(declare-fun setNonEmpty!7767 () Bool)

(assert (=> setNonEmpty!7767 (= setRes!7767 (and tp!328255 (inv!13903 setElem!7767) e!701929))))

(declare-fun setRest!7767 () (InoxSet Context!1042))

(assert (=> setNonEmpty!7767 (= (_2!6771 (h!16220 (minValue!1529 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384)))))))) ((_ map or) (store ((as const (Array Context!1042 Bool)) false) setElem!7767 true) setRest!7767))))

(declare-fun tp!328256 () Bool)

(declare-fun b!1107137 () Bool)

(assert (=> b!1107137 (= e!701930 (and (inv!13903 (_1!6770 (_1!6771 (h!16220 (minValue!1529 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384)))))))))) e!701928 tp_is_empty!5715 setRes!7767 tp!328256))))

(declare-fun condSetEmpty!7767 () Bool)

(assert (=> b!1107137 (= condSetEmpty!7767 (= (_2!6771 (h!16220 (minValue!1529 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384)))))))) ((as const (Array Context!1042 Bool)) false)))))

(assert (= b!1107137 b!1107136))

(assert (= (and b!1107137 condSetEmpty!7767) setIsEmpty!7767))

(assert (= (and b!1107137 (not condSetEmpty!7767)) setNonEmpty!7767))

(assert (= setNonEmpty!7767 b!1107135))

(assert (= (and b!1107046 ((_ is Cons!10819) (minValue!1529 (v!20035 (underlying!2737 (v!20036 (underlying!2738 (cache!1625 cacheUp!384)))))))) b!1107137))

(declare-fun m!1264485 () Bool)

(assert (=> setNonEmpty!7767 m!1264485))

(declare-fun m!1264487 () Bool)

(assert (=> b!1107137 m!1264487))

(declare-fun b!1107149 () Bool)

(declare-fun e!701933 () Bool)

(declare-fun tp!328271 () Bool)

(declare-fun tp!328269 () Bool)

(assert (=> b!1107149 (= e!701933 (and tp!328271 tp!328269))))

(assert (=> b!1107059 (= tp!328207 e!701933)))

(declare-fun b!1107151 () Bool)

(declare-fun tp!328268 () Bool)

(declare-fun tp!328267 () Bool)

(assert (=> b!1107151 (= e!701933 (and tp!328268 tp!328267))))

(declare-fun b!1107148 () Bool)

(assert (=> b!1107148 (= e!701933 tp_is_empty!5715)))

(declare-fun b!1107150 () Bool)

(declare-fun tp!328270 () Bool)

(assert (=> b!1107150 (= e!701933 tp!328270)))

(assert (= (and b!1107059 ((_ is ElementMatch!3135) (regex!1865 (h!16223 rules!859)))) b!1107148))

(assert (= (and b!1107059 ((_ is Concat!5066) (regex!1865 (h!16223 rules!859)))) b!1107149))

(assert (= (and b!1107059 ((_ is Star!3135) (regex!1865 (h!16223 rules!859)))) b!1107150))

(assert (= (and b!1107059 ((_ is Union!3135) (regex!1865 (h!16223 rules!859)))) b!1107151))

(declare-fun b!1107160 () Bool)

(declare-fun e!701942 () Bool)

(declare-fun tp!328283 () Bool)

(assert (=> b!1107160 (= e!701942 tp!328283)))

(declare-fun setElem!7770 () Context!1042)

(declare-fun setRes!7770 () Bool)

(declare-fun setNonEmpty!7770 () Bool)

(declare-fun tp!328285 () Bool)

(assert (=> setNonEmpty!7770 (= setRes!7770 (and tp!328285 (inv!13903 setElem!7770) e!701942))))

(declare-fun setRest!7770 () (InoxSet Context!1042))

(assert (=> setNonEmpty!7770 (= (_2!6769 (h!16219 mapDefault!6141)) ((_ map or) (store ((as const (Array Context!1042 Bool)) false) setElem!7770 true) setRest!7770))))

(declare-fun b!1107161 () Bool)

(declare-fun e!701941 () Bool)

(declare-fun tp!328282 () Bool)

(assert (=> b!1107161 (= e!701941 tp!328282)))

(declare-fun e!701940 () Bool)

(assert (=> b!1107045 (= tp!328206 e!701940)))

(declare-fun setIsEmpty!7770 () Bool)

(assert (=> setIsEmpty!7770 setRes!7770))

(declare-fun b!1107162 () Bool)

(declare-fun tp!328286 () Bool)

(declare-fun tp!328284 () Bool)

(assert (=> b!1107162 (= e!701940 (and tp!328284 (inv!13903 (_2!6768 (_1!6769 (h!16219 mapDefault!6141)))) e!701941 tp_is_empty!5715 setRes!7770 tp!328286))))

(declare-fun condSetEmpty!7770 () Bool)

(assert (=> b!1107162 (= condSetEmpty!7770 (= (_2!6769 (h!16219 mapDefault!6141)) ((as const (Array Context!1042 Bool)) false)))))

(assert (= b!1107162 b!1107161))

(assert (= (and b!1107162 condSetEmpty!7770) setIsEmpty!7770))

(assert (= (and b!1107162 (not condSetEmpty!7770)) setNonEmpty!7770))

(assert (= setNonEmpty!7770 b!1107160))

(assert (= (and b!1107045 ((_ is Cons!10818) mapDefault!6141)) b!1107162))

(declare-fun m!1264489 () Bool)

(assert (=> setNonEmpty!7770 m!1264489))

(declare-fun m!1264491 () Bool)

(assert (=> b!1107162 m!1264491))

(declare-fun b!1107177 () Bool)

(declare-fun e!701958 () Bool)

(declare-fun tp!328310 () Bool)

(assert (=> b!1107177 (= e!701958 tp!328310)))

(declare-fun b!1107178 () Bool)

(declare-fun e!701956 () Bool)

(declare-fun tp!328315 () Bool)

(assert (=> b!1107178 (= e!701956 tp!328315)))

(declare-fun tp!328318 () Bool)

(declare-fun tp!328314 () Bool)

(declare-fun setRes!7776 () Bool)

(declare-fun b!1107179 () Bool)

(declare-fun mapValue!6144 () List!10842)

(declare-fun e!701955 () Bool)

(assert (=> b!1107179 (= e!701955 (and tp!328318 (inv!13903 (_2!6768 (_1!6769 (h!16219 mapValue!6144)))) e!701958 tp_is_empty!5715 setRes!7776 tp!328314))))

(declare-fun condSetEmpty!7776 () Bool)

(assert (=> b!1107179 (= condSetEmpty!7776 (= (_2!6769 (h!16219 mapValue!6144)) ((as const (Array Context!1042 Bool)) false)))))

(declare-fun setElem!7775 () Context!1042)

(declare-fun setNonEmpty!7775 () Bool)

(declare-fun tp!328313 () Bool)

(assert (=> setNonEmpty!7775 (= setRes!7776 (and tp!328313 (inv!13903 setElem!7775) e!701956))))

(declare-fun setRest!7775 () (InoxSet Context!1042))

(assert (=> setNonEmpty!7775 (= (_2!6769 (h!16219 mapValue!6144)) ((_ map or) (store ((as const (Array Context!1042 Bool)) false) setElem!7775 true) setRest!7775))))

(declare-fun b!1107180 () Bool)

(declare-fun e!701960 () Bool)

(declare-fun tp!328309 () Bool)

(assert (=> b!1107180 (= e!701960 tp!328309)))

(declare-fun b!1107181 () Bool)

(declare-fun mapDefault!6144 () List!10842)

(declare-fun tp!328316 () Bool)

(declare-fun setRes!7775 () Bool)

(declare-fun tp!328319 () Bool)

(declare-fun e!701957 () Bool)

(assert (=> b!1107181 (= e!701957 (and tp!328316 (inv!13903 (_2!6768 (_1!6769 (h!16219 mapDefault!6144)))) e!701960 tp_is_empty!5715 setRes!7775 tp!328319))))

(declare-fun condSetEmpty!7775 () Bool)

(assert (=> b!1107181 (= condSetEmpty!7775 (= (_2!6769 (h!16219 mapDefault!6144)) ((as const (Array Context!1042 Bool)) false)))))

(declare-fun setElem!7776 () Context!1042)

(declare-fun tp!328311 () Bool)

(declare-fun setNonEmpty!7776 () Bool)

(declare-fun e!701959 () Bool)

(assert (=> setNonEmpty!7776 (= setRes!7775 (and tp!328311 (inv!13903 setElem!7776) e!701959))))

(declare-fun setRest!7776 () (InoxSet Context!1042))

(assert (=> setNonEmpty!7776 (= (_2!6769 (h!16219 mapDefault!6144)) ((_ map or) (store ((as const (Array Context!1042 Bool)) false) setElem!7776 true) setRest!7776))))

(declare-fun b!1107182 () Bool)

(declare-fun tp!328317 () Bool)

(assert (=> b!1107182 (= e!701959 tp!328317)))

(declare-fun mapIsEmpty!6144 () Bool)

(declare-fun mapRes!6144 () Bool)

(assert (=> mapIsEmpty!6144 mapRes!6144))

(declare-fun setIsEmpty!7775 () Bool)

(assert (=> setIsEmpty!7775 setRes!7775))

(declare-fun setIsEmpty!7776 () Bool)

(assert (=> setIsEmpty!7776 setRes!7776))

(declare-fun mapNonEmpty!6144 () Bool)

(declare-fun tp!328312 () Bool)

(assert (=> mapNonEmpty!6144 (= mapRes!6144 (and tp!328312 e!701955))))

(declare-fun mapRest!6144 () (Array (_ BitVec 32) List!10842))

(declare-fun mapKey!6144 () (_ BitVec 32))

(assert (=> mapNonEmpty!6144 (= mapRest!6141 (store mapRest!6144 mapKey!6144 mapValue!6144))))

(declare-fun condMapEmpty!6144 () Bool)

(assert (=> mapNonEmpty!6140 (= condMapEmpty!6144 (= mapRest!6141 ((as const (Array (_ BitVec 32) List!10842)) mapDefault!6144)))))

(assert (=> mapNonEmpty!6140 (= tp!328211 (and e!701957 mapRes!6144))))

(assert (= (and mapNonEmpty!6140 condMapEmpty!6144) mapIsEmpty!6144))

(assert (= (and mapNonEmpty!6140 (not condMapEmpty!6144)) mapNonEmpty!6144))

(assert (= b!1107179 b!1107177))

(assert (= (and b!1107179 condSetEmpty!7776) setIsEmpty!7776))

(assert (= (and b!1107179 (not condSetEmpty!7776)) setNonEmpty!7775))

(assert (= setNonEmpty!7775 b!1107178))

(assert (= (and mapNonEmpty!6144 ((_ is Cons!10818) mapValue!6144)) b!1107179))

(assert (= b!1107181 b!1107180))

(assert (= (and b!1107181 condSetEmpty!7775) setIsEmpty!7775))

(assert (= (and b!1107181 (not condSetEmpty!7775)) setNonEmpty!7776))

(assert (= setNonEmpty!7776 b!1107182))

(assert (= (and mapNonEmpty!6140 ((_ is Cons!10818) mapDefault!6144)) b!1107181))

(declare-fun m!1264493 () Bool)

(assert (=> b!1107179 m!1264493))

(declare-fun m!1264495 () Bool)

(assert (=> b!1107181 m!1264495))

(declare-fun m!1264497 () Bool)

(assert (=> setNonEmpty!7776 m!1264497))

(declare-fun m!1264499 () Bool)

(assert (=> setNonEmpty!7775 m!1264499))

(declare-fun m!1264501 () Bool)

(assert (=> mapNonEmpty!6144 m!1264501))

(declare-fun b!1107183 () Bool)

(declare-fun e!701963 () Bool)

(declare-fun tp!328321 () Bool)

(assert (=> b!1107183 (= e!701963 tp!328321)))

(declare-fun setNonEmpty!7777 () Bool)

(declare-fun setRes!7777 () Bool)

(declare-fun setElem!7777 () Context!1042)

(declare-fun tp!328323 () Bool)

(assert (=> setNonEmpty!7777 (= setRes!7777 (and tp!328323 (inv!13903 setElem!7777) e!701963))))

(declare-fun setRest!7777 () (InoxSet Context!1042))

(assert (=> setNonEmpty!7777 (= (_2!6769 (h!16219 mapValue!6140)) ((_ map or) (store ((as const (Array Context!1042 Bool)) false) setElem!7777 true) setRest!7777))))

(declare-fun b!1107184 () Bool)

(declare-fun e!701962 () Bool)

(declare-fun tp!328320 () Bool)

(assert (=> b!1107184 (= e!701962 tp!328320)))

(declare-fun e!701961 () Bool)

(assert (=> mapNonEmpty!6140 (= tp!328213 e!701961)))

(declare-fun setIsEmpty!7777 () Bool)

(assert (=> setIsEmpty!7777 setRes!7777))

(declare-fun tp!328322 () Bool)

(declare-fun tp!328324 () Bool)

(declare-fun b!1107185 () Bool)

(assert (=> b!1107185 (= e!701961 (and tp!328322 (inv!13903 (_2!6768 (_1!6769 (h!16219 mapValue!6140)))) e!701962 tp_is_empty!5715 setRes!7777 tp!328324))))

(declare-fun condSetEmpty!7777 () Bool)

(assert (=> b!1107185 (= condSetEmpty!7777 (= (_2!6769 (h!16219 mapValue!6140)) ((as const (Array Context!1042 Bool)) false)))))

(assert (= b!1107185 b!1107184))

(assert (= (and b!1107185 condSetEmpty!7777) setIsEmpty!7777))

(assert (= (and b!1107185 (not condSetEmpty!7777)) setNonEmpty!7777))

(assert (= setNonEmpty!7777 b!1107183))

(assert (= (and mapNonEmpty!6140 ((_ is Cons!10818) mapValue!6140)) b!1107185))

(declare-fun m!1264503 () Bool)

(assert (=> setNonEmpty!7777 m!1264503))

(declare-fun m!1264505 () Bool)

(assert (=> b!1107185 m!1264505))

(declare-fun b!1107186 () Bool)

(declare-fun e!701966 () Bool)

(declare-fun tp!328326 () Bool)

(assert (=> b!1107186 (= e!701966 tp!328326)))

(declare-fun setRes!7778 () Bool)

(declare-fun setNonEmpty!7778 () Bool)

(declare-fun setElem!7778 () Context!1042)

(declare-fun tp!328328 () Bool)

(assert (=> setNonEmpty!7778 (= setRes!7778 (and tp!328328 (inv!13903 setElem!7778) e!701966))))

(declare-fun setRest!7778 () (InoxSet Context!1042))

(assert (=> setNonEmpty!7778 (= (_2!6769 (h!16219 (zeroValue!1528 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397)))))))) ((_ map or) (store ((as const (Array Context!1042 Bool)) false) setElem!7778 true) setRest!7778))))

(declare-fun b!1107187 () Bool)

(declare-fun e!701965 () Bool)

(declare-fun tp!328325 () Bool)

(assert (=> b!1107187 (= e!701965 tp!328325)))

(declare-fun e!701964 () Bool)

(assert (=> b!1107054 (= tp!328212 e!701964)))

(declare-fun setIsEmpty!7778 () Bool)

(assert (=> setIsEmpty!7778 setRes!7778))

(declare-fun tp!328327 () Bool)

(declare-fun b!1107188 () Bool)

(declare-fun tp!328329 () Bool)

(assert (=> b!1107188 (= e!701964 (and tp!328327 (inv!13903 (_2!6768 (_1!6769 (h!16219 (zeroValue!1528 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397)))))))))) e!701965 tp_is_empty!5715 setRes!7778 tp!328329))))

(declare-fun condSetEmpty!7778 () Bool)

(assert (=> b!1107188 (= condSetEmpty!7778 (= (_2!6769 (h!16219 (zeroValue!1528 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397)))))))) ((as const (Array Context!1042 Bool)) false)))))

(assert (= b!1107188 b!1107187))

(assert (= (and b!1107188 condSetEmpty!7778) setIsEmpty!7778))

(assert (= (and b!1107188 (not condSetEmpty!7778)) setNonEmpty!7778))

(assert (= setNonEmpty!7778 b!1107186))

(assert (= (and b!1107054 ((_ is Cons!10818) (zeroValue!1528 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397)))))))) b!1107188))

(declare-fun m!1264507 () Bool)

(assert (=> setNonEmpty!7778 m!1264507))

(declare-fun m!1264509 () Bool)

(assert (=> b!1107188 m!1264509))

(declare-fun b!1107189 () Bool)

(declare-fun e!701969 () Bool)

(declare-fun tp!328331 () Bool)

(assert (=> b!1107189 (= e!701969 tp!328331)))

(declare-fun setElem!7779 () Context!1042)

(declare-fun setRes!7779 () Bool)

(declare-fun setNonEmpty!7779 () Bool)

(declare-fun tp!328333 () Bool)

(assert (=> setNonEmpty!7779 (= setRes!7779 (and tp!328333 (inv!13903 setElem!7779) e!701969))))

(declare-fun setRest!7779 () (InoxSet Context!1042))

(assert (=> setNonEmpty!7779 (= (_2!6769 (h!16219 (minValue!1528 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397)))))))) ((_ map or) (store ((as const (Array Context!1042 Bool)) false) setElem!7779 true) setRest!7779))))

(declare-fun b!1107190 () Bool)

(declare-fun e!701968 () Bool)

(declare-fun tp!328330 () Bool)

(assert (=> b!1107190 (= e!701968 tp!328330)))

(declare-fun e!701967 () Bool)

(assert (=> b!1107054 (= tp!328222 e!701967)))

(declare-fun setIsEmpty!7779 () Bool)

(assert (=> setIsEmpty!7779 setRes!7779))

(declare-fun tp!328334 () Bool)

(declare-fun tp!328332 () Bool)

(declare-fun b!1107191 () Bool)

(assert (=> b!1107191 (= e!701967 (and tp!328332 (inv!13903 (_2!6768 (_1!6769 (h!16219 (minValue!1528 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397)))))))))) e!701968 tp_is_empty!5715 setRes!7779 tp!328334))))

(declare-fun condSetEmpty!7779 () Bool)

(assert (=> b!1107191 (= condSetEmpty!7779 (= (_2!6769 (h!16219 (minValue!1528 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397)))))))) ((as const (Array Context!1042 Bool)) false)))))

(assert (= b!1107191 b!1107190))

(assert (= (and b!1107191 condSetEmpty!7779) setIsEmpty!7779))

(assert (= (and b!1107191 (not condSetEmpty!7779)) setNonEmpty!7779))

(assert (= setNonEmpty!7779 b!1107189))

(assert (= (and b!1107054 ((_ is Cons!10818) (minValue!1528 (v!20033 (underlying!2735 (v!20034 (underlying!2736 (cache!1624 cacheDown!397)))))))) b!1107191))

(declare-fun m!1264511 () Bool)

(assert (=> setNonEmpty!7779 m!1264511))

(declare-fun m!1264513 () Bool)

(assert (=> b!1107191 m!1264513))

(declare-fun b!1107206 () Bool)

(declare-fun e!701986 () Bool)

(declare-fun tp!328353 () Bool)

(assert (=> b!1107206 (= e!701986 tp!328353)))

(declare-fun setIsEmpty!7784 () Bool)

(declare-fun setRes!7784 () Bool)

(assert (=> setIsEmpty!7784 setRes!7784))

(declare-fun setIsEmpty!7785 () Bool)

(declare-fun setRes!7785 () Bool)

(assert (=> setIsEmpty!7785 setRes!7785))

(declare-fun b!1107207 () Bool)

(declare-fun e!701983 () Bool)

(declare-fun tp!328357 () Bool)

(assert (=> b!1107207 (= e!701983 tp!328357)))

(declare-fun setElem!7785 () Context!1042)

(declare-fun setNonEmpty!7784 () Bool)

(declare-fun tp!328355 () Bool)

(assert (=> setNonEmpty!7784 (= setRes!7784 (and tp!328355 (inv!13903 setElem!7785) e!701983))))

(declare-fun mapValue!6147 () List!10843)

(declare-fun setRest!7784 () (InoxSet Context!1042))

(assert (=> setNonEmpty!7784 (= (_2!6771 (h!16220 mapValue!6147)) ((_ map or) (store ((as const (Array Context!1042 Bool)) false) setElem!7785 true) setRest!7784))))

(declare-fun b!1107208 () Bool)

(declare-fun e!701987 () Bool)

(declare-fun tp!328356 () Bool)

(assert (=> b!1107208 (= e!701987 tp!328356)))

(declare-fun b!1107209 () Bool)

(declare-fun e!701985 () Bool)

(declare-fun tp!328358 () Bool)

(assert (=> b!1107209 (= e!701985 tp!328358)))

(declare-fun b!1107210 () Bool)

(declare-fun mapDefault!6147 () List!10843)

(declare-fun tp!328360 () Bool)

(declare-fun e!701982 () Bool)

(assert (=> b!1107210 (= e!701982 (and (inv!13903 (_1!6770 (_1!6771 (h!16220 mapDefault!6147)))) e!701985 tp_is_empty!5715 setRes!7785 tp!328360))))

(declare-fun condSetEmpty!7785 () Bool)

(assert (=> b!1107210 (= condSetEmpty!7785 (= (_2!6771 (h!16220 mapDefault!6147)) ((as const (Array Context!1042 Bool)) false)))))

(declare-fun mapNonEmpty!6147 () Bool)

(declare-fun mapRes!6147 () Bool)

(declare-fun tp!328359 () Bool)

(declare-fun e!701984 () Bool)

(assert (=> mapNonEmpty!6147 (= mapRes!6147 (and tp!328359 e!701984))))

(declare-fun mapKey!6147 () (_ BitVec 32))

(declare-fun mapRest!6147 () (Array (_ BitVec 32) List!10843))

(assert (=> mapNonEmpty!6147 (= mapRest!6140 (store mapRest!6147 mapKey!6147 mapValue!6147))))

(declare-fun mapIsEmpty!6147 () Bool)

(assert (=> mapIsEmpty!6147 mapRes!6147))

(declare-fun condMapEmpty!6147 () Bool)

(assert (=> mapNonEmpty!6141 (= condMapEmpty!6147 (= mapRest!6140 ((as const (Array (_ BitVec 32) List!10843)) mapDefault!6147)))))

(assert (=> mapNonEmpty!6141 (= tp!328214 (and e!701982 mapRes!6147))))

(declare-fun setElem!7784 () Context!1042)

(declare-fun setNonEmpty!7785 () Bool)

(declare-fun tp!328354 () Bool)

(assert (=> setNonEmpty!7785 (= setRes!7785 (and tp!328354 (inv!13903 setElem!7784) e!701986))))

(declare-fun setRest!7785 () (InoxSet Context!1042))

(assert (=> setNonEmpty!7785 (= (_2!6771 (h!16220 mapDefault!6147)) ((_ map or) (store ((as const (Array Context!1042 Bool)) false) setElem!7784 true) setRest!7785))))

(declare-fun b!1107211 () Bool)

(declare-fun tp!328361 () Bool)

(assert (=> b!1107211 (= e!701984 (and (inv!13903 (_1!6770 (_1!6771 (h!16220 mapValue!6147)))) e!701987 tp_is_empty!5715 setRes!7784 tp!328361))))

(declare-fun condSetEmpty!7784 () Bool)

(assert (=> b!1107211 (= condSetEmpty!7784 (= (_2!6771 (h!16220 mapValue!6147)) ((as const (Array Context!1042 Bool)) false)))))

(assert (= (and mapNonEmpty!6141 condMapEmpty!6147) mapIsEmpty!6147))

(assert (= (and mapNonEmpty!6141 (not condMapEmpty!6147)) mapNonEmpty!6147))

(assert (= b!1107211 b!1107208))

(assert (= (and b!1107211 condSetEmpty!7784) setIsEmpty!7784))

(assert (= (and b!1107211 (not condSetEmpty!7784)) setNonEmpty!7784))

(assert (= setNonEmpty!7784 b!1107207))

(assert (= (and mapNonEmpty!6147 ((_ is Cons!10819) mapValue!6147)) b!1107211))

(assert (= b!1107210 b!1107209))

(assert (= (and b!1107210 condSetEmpty!7785) setIsEmpty!7785))

(assert (= (and b!1107210 (not condSetEmpty!7785)) setNonEmpty!7785))

(assert (= setNonEmpty!7785 b!1107206))

(assert (= (and mapNonEmpty!6141 ((_ is Cons!10819) mapDefault!6147)) b!1107210))

(declare-fun m!1264515 () Bool)

(assert (=> b!1107211 m!1264515))

(declare-fun m!1264517 () Bool)

(assert (=> setNonEmpty!7784 m!1264517))

(declare-fun m!1264519 () Bool)

(assert (=> b!1107210 m!1264519))

(declare-fun m!1264521 () Bool)

(assert (=> mapNonEmpty!6147 m!1264521))

(declare-fun m!1264523 () Bool)

(assert (=> setNonEmpty!7785 m!1264523))

(declare-fun setIsEmpty!7786 () Bool)

(declare-fun setRes!7786 () Bool)

(assert (=> setIsEmpty!7786 setRes!7786))

(declare-fun b!1107212 () Bool)

(declare-fun e!701989 () Bool)

(declare-fun tp!328363 () Bool)

(assert (=> b!1107212 (= e!701989 tp!328363)))

(declare-fun b!1107213 () Bool)

(declare-fun e!701988 () Bool)

(declare-fun tp!328362 () Bool)

(assert (=> b!1107213 (= e!701988 tp!328362)))

(declare-fun e!701990 () Bool)

(assert (=> mapNonEmpty!6141 (= tp!328221 e!701990)))

(declare-fun setElem!7786 () Context!1042)

(declare-fun setNonEmpty!7786 () Bool)

(declare-fun tp!328364 () Bool)

(assert (=> setNonEmpty!7786 (= setRes!7786 (and tp!328364 (inv!13903 setElem!7786) e!701989))))

(declare-fun setRest!7786 () (InoxSet Context!1042))

(assert (=> setNonEmpty!7786 (= (_2!6771 (h!16220 mapValue!6141)) ((_ map or) (store ((as const (Array Context!1042 Bool)) false) setElem!7786 true) setRest!7786))))

(declare-fun b!1107214 () Bool)

(declare-fun tp!328365 () Bool)

(assert (=> b!1107214 (= e!701990 (and (inv!13903 (_1!6770 (_1!6771 (h!16220 mapValue!6141)))) e!701988 tp_is_empty!5715 setRes!7786 tp!328365))))

(declare-fun condSetEmpty!7786 () Bool)

(assert (=> b!1107214 (= condSetEmpty!7786 (= (_2!6771 (h!16220 mapValue!6141)) ((as const (Array Context!1042 Bool)) false)))))

(assert (= b!1107214 b!1107213))

(assert (= (and b!1107214 condSetEmpty!7786) setIsEmpty!7786))

(assert (= (and b!1107214 (not condSetEmpty!7786)) setNonEmpty!7786))

(assert (= setNonEmpty!7786 b!1107212))

(assert (= (and mapNonEmpty!6141 ((_ is Cons!10819) mapValue!6141)) b!1107214))

(declare-fun m!1264525 () Bool)

(assert (=> setNonEmpty!7786 m!1264525))

(declare-fun m!1264527 () Bool)

(assert (=> b!1107214 m!1264527))

(declare-fun e!701995 () Bool)

(declare-fun b!1107223 () Bool)

(declare-fun tp!328372 () Bool)

(declare-fun tp!328374 () Bool)

(assert (=> b!1107223 (= e!701995 (and (inv!13896 (left!9393 (c!187953 tokens!304))) tp!328372 (inv!13896 (right!9723 (c!187953 tokens!304))) tp!328374))))

(declare-fun b!1107225 () Bool)

(declare-fun e!701996 () Bool)

(declare-fun tp!328373 () Bool)

(assert (=> b!1107225 (= e!701996 tp!328373)))

(declare-fun b!1107224 () Bool)

(declare-fun inv!13904 (IArray!6847) Bool)

(assert (=> b!1107224 (= e!701995 (and (inv!13904 (xs!6114 (c!187953 tokens!304))) e!701996))))

(assert (=> b!1107058 (= tp!328217 (and (inv!13896 (c!187953 tokens!304)) e!701995))))

(assert (= (and b!1107058 ((_ is Node!3421) (c!187953 tokens!304))) b!1107223))

(assert (= b!1107224 b!1107225))

(assert (= (and b!1107058 ((_ is Leaf!5364) (c!187953 tokens!304))) b!1107224))

(declare-fun m!1264529 () Bool)

(assert (=> b!1107223 m!1264529))

(declare-fun m!1264531 () Bool)

(assert (=> b!1107223 m!1264531))

(declare-fun m!1264533 () Bool)

(assert (=> b!1107224 m!1264533))

(assert (=> b!1107058 m!1264421))

(check-sat (not b!1107107) (not b!1107184) (not b!1107178) (not b_next!26899) (not b_next!26909) (not b!1107150) (not b!1107207) (not b!1107188) b_and!79165 (not b_next!26911) b_and!79167 (not b!1107187) b_and!79155 (not setNonEmpty!7779) (not b!1107162) b_and!79161 (not b!1107100) (not b!1107190) (not d!313417) (not b!1107189) (not d!313435) (not b!1107135) (not b_next!26907) (not b!1107151) (not b!1107069) b_and!79163 (not b!1107118) (not b!1107137) (not d!313411) (not b!1107075) (not b!1107130) (not setNonEmpty!7770) (not d!313413) (not b!1107109) (not b!1107129) (not b!1107182) (not b!1107211) (not setNonEmpty!7786) (not b!1107212) (not b!1107209) (not b!1107185) (not b_next!26897) (not setNonEmpty!7765) (not b!1107214) (not b!1107098) (not b_next!26903) (not b!1107161) (not setNonEmpty!7778) (not b!1107160) (not b!1107183) (not b!1107078) (not setNonEmpty!7766) (not b!1107149) (not b!1107223) (not b!1107133) (not b!1107191) (not b!1107134) (not b!1107132) (not b!1107208) (not b!1107179) (not setNonEmpty!7785) (not setNonEmpty!7777) (not d!313429) (not b!1107072) (not b!1107087) (not setNonEmpty!7784) (not mapNonEmpty!6147) (not mapNonEmpty!6144) (not b!1107181) (not b!1107206) (not b!1107180) (not b!1107120) (not b!1107066) b_and!79153 (not setNonEmpty!7776) b_and!79157 (not b!1107136) (not b!1107177) (not setNonEmpty!7767) (not b_next!26901) (not b_next!26905) (not setNonEmpty!7775) (not b!1107213) (not b!1107119) b_and!79159 (not b!1107099) (not b!1107210) (not b!1107225) tp_is_empty!5715 (not d!313437) (not b!1107186) (not b!1107224) (not b!1107058))
(check-sat b_and!79165 (not b_next!26907) b_and!79163 (not b_next!26897) (not b_next!26903) b_and!79153 (not b_next!26899) (not b_next!26909) b_and!79157 b_and!79159 (not b_next!26911) b_and!79167 b_and!79155 b_and!79161 (not b_next!26901) (not b_next!26905))
