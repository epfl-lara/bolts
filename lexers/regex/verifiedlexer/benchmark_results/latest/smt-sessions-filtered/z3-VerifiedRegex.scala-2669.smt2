; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143606 () Bool)

(assert start!143606)

(declare-fun b!1548579 () Bool)

(declare-fun b_free!40899 () Bool)

(declare-fun b_next!41603 () Bool)

(assert (=> b!1548579 (= b_free!40899 (not b_next!41603))))

(declare-fun tp!451743 () Bool)

(declare-fun b_and!107989 () Bool)

(assert (=> b!1548579 (= tp!451743 b_and!107989)))

(declare-fun b!1548598 () Bool)

(declare-fun b_free!40901 () Bool)

(declare-fun b_next!41605 () Bool)

(assert (=> b!1548598 (= b_free!40901 (not b_next!41605))))

(declare-fun tp!451745 () Bool)

(declare-fun b_and!107991 () Bool)

(assert (=> b!1548598 (= tp!451745 b_and!107991)))

(declare-fun b!1548589 () Bool)

(declare-fun b_free!40903 () Bool)

(declare-fun b_next!41607 () Bool)

(assert (=> b!1548589 (= b_free!40903 (not b_next!41607))))

(declare-fun tp!451761 () Bool)

(declare-fun b_and!107993 () Bool)

(assert (=> b!1548589 (= tp!451761 b_and!107993)))

(declare-fun b!1548601 () Bool)

(declare-fun b_free!40905 () Bool)

(declare-fun b_next!41609 () Bool)

(assert (=> b!1548601 (= b_free!40905 (not b_next!41609))))

(declare-fun tp!451749 () Bool)

(declare-fun b_and!107995 () Bool)

(assert (=> b!1548601 (= tp!451749 b_and!107995)))

(declare-fun b_free!40907 () Bool)

(declare-fun b_next!41611 () Bool)

(assert (=> b!1548601 (= b_free!40907 (not b_next!41611))))

(declare-fun tp!451741 () Bool)

(declare-fun b_and!107997 () Bool)

(assert (=> b!1548601 (= tp!451741 b_and!107997)))

(declare-fun b!1548609 () Bool)

(declare-fun b_free!40909 () Bool)

(declare-fun b_next!41613 () Bool)

(assert (=> b!1548609 (= b_free!40909 (not b_next!41613))))

(declare-fun tp!451739 () Bool)

(declare-fun b_and!107999 () Bool)

(assert (=> b!1548609 (= tp!451739 b_and!107999)))

(declare-fun b!1548603 () Bool)

(declare-fun b_free!40911 () Bool)

(declare-fun b_next!41615 () Bool)

(assert (=> b!1548603 (= b_free!40911 (not b_next!41615))))

(declare-fun tp!451751 () Bool)

(declare-fun b_and!108001 () Bool)

(assert (=> b!1548603 (= tp!451751 b_and!108001)))

(declare-fun b!1548614 () Bool)

(declare-fun b_free!40913 () Bool)

(declare-fun b_next!41617 () Bool)

(assert (=> b!1548614 (= b_free!40913 (not b_next!41617))))

(declare-fun tp!451753 () Bool)

(declare-fun b_and!108003 () Bool)

(assert (=> b!1548614 (= tp!451753 b_and!108003)))

(declare-fun b!1548625 () Bool)

(declare-fun e!992617 () Bool)

(assert (=> b!1548625 (= e!992617 true)))

(declare-fun b!1548624 () Bool)

(declare-fun e!992616 () Bool)

(assert (=> b!1548624 (= e!992616 e!992617)))

(declare-fun b!1548585 () Bool)

(assert (=> b!1548585 e!992616))

(assert (= b!1548624 b!1548625))

(assert (= b!1548585 b!1548624))

(declare-fun order!9741 () Int)

(declare-datatypes ((List!16733 0))(
  ( (Nil!16665) (Cons!16665 (h!22066 (_ BitVec 16)) (t!141136 List!16733)) )
))
(declare-datatypes ((TokenValue!3011 0))(
  ( (FloatLiteralValue!6022 (text!21522 List!16733)) (TokenValueExt!3010 (__x!10924 Int)) (Broken!15055 (value!92871 List!16733)) (Object!3078) (End!3011) (Def!3011) (Underscore!3011) (Match!3011) (Else!3011) (Error!3011) (Case!3011) (If!3011) (Extends!3011) (Abstract!3011) (Class!3011) (Val!3011) (DelimiterValue!6022 (del!3071 List!16733)) (KeywordValue!3017 (value!92872 List!16733)) (CommentValue!6022 (value!92873 List!16733)) (WhitespaceValue!6022 (value!92874 List!16733)) (IndentationValue!3011 (value!92875 List!16733)) (String!19342) (Int32!3011) (Broken!15056 (value!92876 List!16733)) (Boolean!3012) (Unit!25972) (OperatorValue!3014 (op!3071 List!16733)) (IdentifierValue!6022 (value!92877 List!16733)) (IdentifierValue!6023 (value!92878 List!16733)) (WhitespaceValue!6023 (value!92879 List!16733)) (True!6022) (False!6022) (Broken!15057 (value!92880 List!16733)) (Broken!15058 (value!92881 List!16733)) (True!6023) (RightBrace!3011) (RightBracket!3011) (Colon!3011) (Null!3011) (Comma!3011) (LeftBracket!3011) (False!6023) (LeftBrace!3011) (ImaginaryLiteralValue!3011 (text!21523 List!16733)) (StringLiteralValue!9033 (value!92882 List!16733)) (EOFValue!3011 (value!92883 List!16733)) (IdentValue!3011 (value!92884 List!16733)) (DelimiterValue!6023 (value!92885 List!16733)) (DedentValue!3011 (value!92886 List!16733)) (NewLineValue!3011 (value!92887 List!16733)) (IntegerValue!9033 (value!92888 (_ BitVec 32)) (text!21524 List!16733)) (IntegerValue!9034 (value!92889 Int) (text!21525 List!16733)) (Times!3011) (Or!3011) (Equal!3011) (Minus!3011) (Broken!15059 (value!92890 List!16733)) (And!3011) (Div!3011) (LessEqual!3011) (Mod!3011) (Concat!7260) (Not!3011) (Plus!3011) (SpaceValue!3011 (value!92891 List!16733)) (IntegerValue!9035 (value!92892 Int) (text!21526 List!16733)) (StringLiteralValue!9034 (text!21527 List!16733)) (FloatLiteralValue!6023 (text!21528 List!16733)) (BytesLiteralValue!3011 (value!92893 List!16733)) (CommentValue!6023 (value!92894 List!16733)) (StringLiteralValue!9035 (value!92895 List!16733)) (ErrorTokenValue!3011 (msg!3072 List!16733)) )
))
(declare-datatypes ((C!8676 0))(
  ( (C!8677 (val!4910 Int)) )
))
(declare-datatypes ((List!16734 0))(
  ( (Nil!16666) (Cons!16666 (h!22067 C!8676) (t!141137 List!16734)) )
))
(declare-datatypes ((IArray!11083 0))(
  ( (IArray!11084 (innerList!5599 List!16734)) )
))
(declare-datatypes ((Conc!5539 0))(
  ( (Node!5539 (left!13580 Conc!5539) (right!13910 Conc!5539) (csize!11308 Int) (cheight!5750 Int)) (Leaf!8209 (xs!8339 IArray!11083) (csize!11309 Int)) (Empty!5539) )
))
(declare-datatypes ((BalanceConc!11020 0))(
  ( (BalanceConc!11021 (c!252175 Conc!5539)) )
))
(declare-datatypes ((Regex!4249 0))(
  ( (ElementMatch!4249 (c!252176 C!8676)) (Concat!7261 (regOne!9010 Regex!4249) (regTwo!9010 Regex!4249)) (EmptyExpr!4249) (Star!4249 (reg!4578 Regex!4249)) (EmptyLang!4249) (Union!4249 (regOne!9011 Regex!4249) (regTwo!9011 Regex!4249)) )
))
(declare-datatypes ((String!19343 0))(
  ( (String!19344 (value!92896 String)) )
))
(declare-datatypes ((TokenValueInjection!5682 0))(
  ( (TokenValueInjection!5683 (toValue!4284 Int) (toChars!4143 Int)) )
))
(declare-datatypes ((Rule!5642 0))(
  ( (Rule!5643 (regex!2921 Regex!4249) (tag!3185 String!19343) (isSeparator!2921 Bool) (transformation!2921 TokenValueInjection!5682)) )
))
(declare-fun rule!240 () Rule!5642)

(declare-fun lambda!65561 () Int)

(declare-fun order!9739 () Int)

(declare-fun dynLambda!7364 (Int Int) Int)

(declare-fun dynLambda!7365 (Int Int) Int)

(assert (=> b!1548625 (< (dynLambda!7364 order!9739 (toValue!4284 (transformation!2921 rule!240))) (dynLambda!7365 order!9741 lambda!65561))))

(declare-fun order!9743 () Int)

(declare-fun dynLambda!7366 (Int Int) Int)

(assert (=> b!1548625 (< (dynLambda!7366 order!9743 (toChars!4143 (transformation!2921 rule!240))) (dynLambda!7365 order!9741 lambda!65561))))

(declare-fun b!1548578 () Bool)

(declare-fun e!992580 () Bool)

(declare-fun e!992577 () Bool)

(assert (=> b!1548578 (= e!992580 e!992577)))

(declare-fun res!692395 () Bool)

(assert (=> b!1548578 (=> (not res!692395) (not e!992577))))

(declare-fun lt!536364 () List!16734)

(declare-fun totalInput!568 () BalanceConc!11020)

(declare-fun isSuffix!358 (List!16734 List!16734) Bool)

(declare-fun list!6465 (BalanceConc!11020) List!16734)

(assert (=> b!1548578 (= res!692395 (isSuffix!358 lt!536364 (list!6465 totalInput!568)))))

(declare-fun input!1676 () BalanceConc!11020)

(assert (=> b!1548578 (= lt!536364 (list!6465 input!1676))))

(declare-fun e!992596 () Bool)

(declare-fun tp!451747 () Bool)

(declare-fun tp!451740 () Bool)

(declare-fun e!992582 () Bool)

(declare-datatypes ((List!16735 0))(
  ( (Nil!16667) (Cons!16667 (h!22068 Regex!4249) (t!141138 List!16735)) )
))
(declare-datatypes ((Context!1534 0))(
  ( (Context!1535 (exprs!1267 List!16735)) )
))
(declare-datatypes ((tuple2!15952 0))(
  ( (tuple2!15953 (_1!9249 Context!1534) (_2!9249 C!8676)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15954 0))(
  ( (tuple2!15955 (_1!9250 tuple2!15952) (_2!9250 (InoxSet Context!1534))) )
))
(declare-datatypes ((List!16736 0))(
  ( (Nil!16668) (Cons!16668 (h!22069 tuple2!15954) (t!141139 List!16736)) )
))
(declare-datatypes ((array!5946 0))(
  ( (array!5947 (arr!2650 (Array (_ BitVec 32) List!16736)) (size!13468 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1670 0))(
  ( (HashableExt!1669 (__x!10925 Int)) )
))
(declare-datatypes ((array!5948 0))(
  ( (array!5949 (arr!2651 (Array (_ BitVec 32) (_ BitVec 64))) (size!13469 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3452 0))(
  ( (LongMapFixedSize!3453 (defaultEntry!2086 Int) (mask!4939 (_ BitVec 32)) (extraKeys!1973 (_ BitVec 32)) (zeroValue!1983 List!16736) (minValue!1983 List!16736) (_size!3533 (_ BitVec 32)) (_keys!2020 array!5948) (_values!2005 array!5946) (_vacant!1787 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6789 0))(
  ( (Cell!6790 (v!23487 LongMapFixedSize!3452)) )
))
(declare-datatypes ((MutLongMap!1726 0))(
  ( (LongMap!1726 (underlying!3661 Cell!6789)) (MutLongMapExt!1725 (__x!10926 Int)) )
))
(declare-datatypes ((Cell!6791 0))(
  ( (Cell!6792 (v!23488 MutLongMap!1726)) )
))
(declare-datatypes ((MutableMap!1670 0))(
  ( (MutableMapExt!1669 (__x!10927 Int)) (HashMap!1670 (underlying!3662 Cell!6791) (hashF!3589 Hashable!1670) (_size!3534 (_ BitVec 32)) (defaultValue!1830 Int)) )
))
(declare-datatypes ((CacheUp!1010 0))(
  ( (CacheUp!1011 (cache!2051 MutableMap!1670)) )
))
(declare-fun cacheUp!755 () CacheUp!1010)

(declare-fun array_inv!1906 (array!5948) Bool)

(declare-fun array_inv!1907 (array!5946) Bool)

(assert (=> b!1548579 (= e!992596 (and tp!451743 tp!451747 tp!451740 (array_inv!1906 (_keys!2020 (v!23487 (underlying!3661 (v!23488 (underlying!3662 (cache!2051 cacheUp!755))))))) (array_inv!1907 (_values!2005 (v!23487 (underlying!3661 (v!23488 (underlying!3662 (cache!2051 cacheUp!755))))))) e!992582))))

(declare-fun b!1548580 () Bool)

(declare-fun res!692389 () Bool)

(assert (=> b!1548580 (=> (not res!692389) (not e!992580))))

(declare-datatypes ((tuple3!1694 0))(
  ( (tuple3!1695 (_1!9251 (InoxSet Context!1534)) (_2!9251 Int) (_3!1273 Int)) )
))
(declare-datatypes ((tuple2!15956 0))(
  ( (tuple2!15957 (_1!9252 tuple3!1694) (_2!9252 Int)) )
))
(declare-datatypes ((List!16737 0))(
  ( (Nil!16669) (Cons!16669 (h!22070 tuple2!15956) (t!141140 List!16737)) )
))
(declare-datatypes ((array!5950 0))(
  ( (array!5951 (arr!2652 (Array (_ BitVec 32) List!16737)) (size!13470 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3454 0))(
  ( (LongMapFixedSize!3455 (defaultEntry!2087 Int) (mask!4940 (_ BitVec 32)) (extraKeys!1974 (_ BitVec 32)) (zeroValue!1984 List!16737) (minValue!1984 List!16737) (_size!3535 (_ BitVec 32)) (_keys!2021 array!5948) (_values!2006 array!5950) (_vacant!1788 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6793 0))(
  ( (Cell!6794 (v!23489 LongMapFixedSize!3454)) )
))
(declare-datatypes ((Hashable!1671 0))(
  ( (HashableExt!1670 (__x!10928 Int)) )
))
(declare-datatypes ((MutLongMap!1727 0))(
  ( (LongMap!1727 (underlying!3663 Cell!6793)) (MutLongMapExt!1726 (__x!10929 Int)) )
))
(declare-datatypes ((Cell!6795 0))(
  ( (Cell!6796 (v!23490 MutLongMap!1727)) )
))
(declare-datatypes ((MutableMap!1671 0))(
  ( (MutableMapExt!1670 (__x!10930 Int)) (HashMap!1671 (underlying!3664 Cell!6795) (hashF!3590 Hashable!1671) (_size!3536 (_ BitVec 32)) (defaultValue!1831 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!440 0))(
  ( (CacheFurthestNullable!441 (cache!2052 MutableMap!1671) (totalInput!2423 BalanceConc!11020)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!440)

(declare-fun valid!1390 (CacheFurthestNullable!440) Bool)

(assert (=> b!1548580 (= res!692389 (valid!1390 cacheFurthestNullable!103))))

(declare-fun b!1548581 () Bool)

(declare-fun e!992593 () Bool)

(declare-fun e!992585 () Bool)

(declare-fun e!992589 () Bool)

(declare-fun inv!21927 (BalanceConc!11020) Bool)

(assert (=> b!1548581 (= e!992589 (and e!992585 (inv!21927 (totalInput!2423 cacheFurthestNullable!103)) e!992593))))

(declare-fun b!1548582 () Bool)

(declare-fun e!992588 () Bool)

(declare-fun tp!451757 () Bool)

(declare-fun inv!21928 (Conc!5539) Bool)

(assert (=> b!1548582 (= e!992588 (and (inv!21928 (c!252175 totalInput!568)) tp!451757))))

(declare-fun b!1548583 () Bool)

(declare-fun e!992599 () Bool)

(declare-fun e!992592 () Bool)

(assert (=> b!1548583 (= e!992599 e!992592)))

(declare-fun res!692394 () Bool)

(assert (=> b!1548583 (=> res!692394 e!992592)))

(declare-fun lt!536365 () Bool)

(declare-fun lt!536370 () Bool)

(assert (=> b!1548583 (= res!692394 (or (not (= lt!536365 lt!536370)) (not lt!536365)))))

(declare-datatypes ((Token!5442 0))(
  ( (Token!5443 (value!92897 TokenValue!3011) (rule!4711 Rule!5642) (size!13471 Int) (originalCharacters!3752 List!16734)) )
))
(declare-datatypes ((tuple2!15958 0))(
  ( (tuple2!15959 (_1!9253 Token!5442) (_2!9253 List!16734)) )
))
(declare-datatypes ((Option!3005 0))(
  ( (None!3004) (Some!3004 (v!23491 tuple2!15958)) )
))
(declare-fun lt!536357 () Option!3005)

(declare-fun isDefined!2411 (Option!3005) Bool)

(assert (=> b!1548583 (= lt!536370 (isDefined!2411 lt!536357))))

(declare-fun lt!536355 () TokenValue!3011)

(declare-fun lt!536362 () List!16734)

(declare-fun lt!536368 () Int)

(declare-datatypes ((tuple3!1696 0))(
  ( (tuple3!1697 (_1!9254 Regex!4249) (_2!9254 Context!1534) (_3!1274 C!8676)) )
))
(declare-datatypes ((tuple2!15960 0))(
  ( (tuple2!15961 (_1!9255 tuple3!1696) (_2!9255 (InoxSet Context!1534))) )
))
(declare-datatypes ((List!16738 0))(
  ( (Nil!16670) (Cons!16670 (h!22071 tuple2!15960) (t!141141 List!16738)) )
))
(declare-datatypes ((array!5952 0))(
  ( (array!5953 (arr!2653 (Array (_ BitVec 32) List!16738)) (size!13472 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3456 0))(
  ( (LongMapFixedSize!3457 (defaultEntry!2088 Int) (mask!4941 (_ BitVec 32)) (extraKeys!1975 (_ BitVec 32)) (zeroValue!1985 List!16738) (minValue!1985 List!16738) (_size!3537 (_ BitVec 32)) (_keys!2022 array!5948) (_values!2007 array!5952) (_vacant!1789 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6797 0))(
  ( (Cell!6798 (v!23492 LongMapFixedSize!3456)) )
))
(declare-datatypes ((tuple2!15962 0))(
  ( (tuple2!15963 (_1!9256 BalanceConc!11020) (_2!9256 BalanceConc!11020)) )
))
(declare-datatypes ((MutLongMap!1728 0))(
  ( (LongMap!1728 (underlying!3665 Cell!6797)) (MutLongMapExt!1727 (__x!10931 Int)) )
))
(declare-datatypes ((Cell!6799 0))(
  ( (Cell!6800 (v!23493 MutLongMap!1728)) )
))
(declare-datatypes ((Hashable!1672 0))(
  ( (HashableExt!1671 (__x!10932 Int)) )
))
(declare-datatypes ((MutableMap!1672 0))(
  ( (MutableMapExt!1671 (__x!10933 Int)) (HashMap!1672 (underlying!3666 Cell!6799) (hashF!3591 Hashable!1672) (_size!3538 (_ BitVec 32)) (defaultValue!1832 Int)) )
))
(declare-datatypes ((CacheDown!1018 0))(
  ( (CacheDown!1019 (cache!2053 MutableMap!1672)) )
))
(declare-datatypes ((tuple4!852 0))(
  ( (tuple4!853 (_1!9257 tuple2!15962) (_2!9257 CacheUp!1010) (_3!1275 CacheDown!1018) (_4!426 CacheFurthestNullable!440)) )
))
(declare-fun lt!536367 () tuple4!852)

(declare-datatypes ((tuple2!15964 0))(
  ( (tuple2!15965 (_1!9258 Token!5442) (_2!9258 BalanceConc!11020)) )
))
(declare-datatypes ((Option!3006 0))(
  ( (None!3005) (Some!3005 (v!23494 tuple2!15964)) )
))
(declare-fun isDefined!2412 (Option!3006) Bool)

(assert (=> b!1548583 (= lt!536365 (isDefined!2412 (Some!3005 (tuple2!15965 (Token!5443 lt!536355 rule!240 lt!536368 lt!536362) (_2!9256 (_1!9257 lt!536367))))))))

(declare-datatypes ((LexerInterface!2564 0))(
  ( (LexerInterfaceExt!2561 (__x!10934 Int)) (Lexer!2562) )
))
(declare-fun thiss!16438 () LexerInterface!2564)

(declare-fun maxPrefixOneRule!688 (LexerInterface!2564 Rule!5642 List!16734) Option!3005)

(assert (=> b!1548583 (= lt!536357 (maxPrefixOneRule!688 thiss!16438 rule!240 lt!536364))))

(declare-fun size!13473 (BalanceConc!11020) Int)

(assert (=> b!1548583 (= lt!536368 (size!13473 (_1!9256 (_1!9257 lt!536367))))))

(declare-fun apply!4095 (TokenValueInjection!5682 BalanceConc!11020) TokenValue!3011)

(assert (=> b!1548583 (= lt!536355 (apply!4095 (transformation!2921 rule!240) (_1!9256 (_1!9257 lt!536367))))))

(declare-datatypes ((Unit!25973 0))(
  ( (Unit!25974) )
))
(declare-fun lt!536369 () Unit!25973)

(declare-fun lt!536360 () BalanceConc!11020)

(declare-fun ForallOf!196 (Int BalanceConc!11020) Unit!25973)

(assert (=> b!1548583 (= lt!536369 (ForallOf!196 lambda!65561 lt!536360))))

(declare-fun seqFromList!1759 (List!16734) BalanceConc!11020)

(assert (=> b!1548583 (= lt!536360 (seqFromList!1759 lt!536362))))

(assert (=> b!1548583 (= lt!536362 (list!6465 (_1!9256 (_1!9257 lt!536367))))))

(declare-fun lt!536363 () Unit!25973)

(assert (=> b!1548583 (= lt!536363 (ForallOf!196 lambda!65561 (_1!9256 (_1!9257 lt!536367))))))

(declare-fun b!1548584 () Bool)

(declare-fun e!992607 () Bool)

(assert (=> b!1548584 (= e!992607 (not e!992599))))

(declare-fun res!692392 () Bool)

(assert (=> b!1548584 (=> res!692392 e!992599)))

(declare-fun semiInverseModEq!1100 (Int Int) Bool)

(assert (=> b!1548584 (= res!692392 (not (semiInverseModEq!1100 (toChars!4143 (transformation!2921 rule!240)) (toValue!4284 (transformation!2921 rule!240)))))))

(declare-fun lt!536366 () Unit!25973)

(declare-fun lemmaInv!410 (TokenValueInjection!5682) Unit!25973)

(assert (=> b!1548584 (= lt!536366 (lemmaInv!410 (transformation!2921 rule!240)))))

(declare-fun e!992608 () Bool)

(assert (=> b!1548584 e!992608))

(declare-fun res!692388 () Bool)

(assert (=> b!1548584 (=> res!692388 e!992608)))

(declare-datatypes ((tuple2!15966 0))(
  ( (tuple2!15967 (_1!9259 List!16734) (_2!9259 List!16734)) )
))
(declare-fun lt!536354 () tuple2!15966)

(declare-fun isEmpty!10068 (List!16734) Bool)

(assert (=> b!1548584 (= res!692388 (isEmpty!10068 (_1!9259 lt!536354)))))

(declare-fun findLongestMatchInner!316 (Regex!4249 List!16734 Int List!16734 List!16734 Int) tuple2!15966)

(declare-fun size!13474 (List!16734) Int)

(assert (=> b!1548584 (= lt!536354 (findLongestMatchInner!316 (regex!2921 rule!240) Nil!16666 (size!13474 Nil!16666) lt!536364 lt!536364 (size!13474 lt!536364)))))

(declare-fun lt!536353 () Unit!25973)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!300 (Regex!4249 List!16734) Unit!25973)

(assert (=> b!1548584 (= lt!536353 (longestMatchIsAcceptedByMatchOrIsEmpty!300 (regex!2921 rule!240) lt!536364))))

(declare-fun res!692391 () Bool)

(assert (=> b!1548585 (=> res!692391 e!992599)))

(declare-fun Forall!596 (Int) Bool)

(assert (=> b!1548585 (= res!692391 (not (Forall!596 lambda!65561)))))

(declare-fun b!1548586 () Bool)

(declare-fun e!992581 () Bool)

(assert (=> b!1548586 (= e!992592 e!992581)))

(declare-fun res!692390 () Bool)

(assert (=> b!1548586 (=> res!692390 e!992581)))

(assert (=> b!1548586 (= res!692390 (not (= (apply!4095 (transformation!2921 rule!240) lt!536360) lt!536355)))))

(declare-fun lt!536361 () Unit!25973)

(declare-fun lemmaEqSameImage!140 (TokenValueInjection!5682 BalanceConc!11020 BalanceConc!11020) Unit!25973)

(assert (=> b!1548586 (= lt!536361 (lemmaEqSameImage!140 (transformation!2921 rule!240) (_1!9256 (_1!9257 lt!536367)) lt!536360))))

(declare-fun b!1548587 () Bool)

(declare-fun res!692386 () Bool)

(assert (=> b!1548587 (=> res!692386 e!992592)))

(assert (=> b!1548587 (= res!692386 (not (= (list!6465 lt!536360) lt!536362)))))

(declare-fun b!1548588 () Bool)

(declare-fun tp!451763 () Bool)

(assert (=> b!1548588 (= e!992593 (and (inv!21928 (c!252175 (totalInput!2423 cacheFurthestNullable!103))) tp!451763))))

(declare-fun tp!451744 () Bool)

(declare-fun tp!451755 () Bool)

(declare-fun e!992586 () Bool)

(declare-fun e!992604 () Bool)

(declare-fun array_inv!1908 (array!5950) Bool)

(assert (=> b!1548589 (= e!992586 (and tp!451761 tp!451755 tp!451744 (array_inv!1906 (_keys!2021 (v!23489 (underlying!3663 (v!23490 (underlying!3664 (cache!2052 cacheFurthestNullable!103))))))) (array_inv!1908 (_values!2006 (v!23489 (underlying!3663 (v!23490 (underlying!3664 (cache!2052 cacheFurthestNullable!103))))))) e!992604))))

(declare-fun b!1548590 () Bool)

(declare-fun e!992594 () Bool)

(declare-fun e!992591 () Bool)

(declare-fun lt!536359 () MutLongMap!1726)

(get-info :version)

(assert (=> b!1548590 (= e!992594 (and e!992591 ((_ is LongMap!1726) lt!536359)))))

(assert (=> b!1548590 (= lt!536359 (v!23488 (underlying!3662 (cache!2051 cacheUp!755))))))

(declare-fun b!1548591 () Bool)

(declare-fun res!692387 () Bool)

(assert (=> b!1548591 (=> (not res!692387) (not e!992580))))

(declare-fun cacheDown!768 () CacheDown!1018)

(declare-fun valid!1391 (CacheDown!1018) Bool)

(assert (=> b!1548591 (= res!692387 (valid!1391 cacheDown!768))))

(declare-fun b!1548592 () Bool)

(declare-fun res!692393 () Bool)

(assert (=> b!1548592 (=> (not res!692393) (not e!992577))))

(assert (=> b!1548592 (= res!692393 (= (totalInput!2423 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1548593 () Bool)

(declare-fun e!992602 () Bool)

(assert (=> b!1548593 (= e!992602 e!992596)))

(declare-fun b!1548594 () Bool)

(declare-fun matchR!1862 (Regex!4249 List!16734) Bool)

(assert (=> b!1548594 (= e!992608 (matchR!1862 (regex!2921 rule!240) (_1!9259 lt!536354)))))

(declare-fun b!1548595 () Bool)

(declare-fun res!692384 () Bool)

(assert (=> b!1548595 (=> (not res!692384) (not e!992580))))

(declare-fun ruleValid!668 (LexerInterface!2564 Rule!5642) Bool)

(assert (=> b!1548595 (= res!692384 (ruleValid!668 thiss!16438 rule!240))))

(declare-fun b!1548596 () Bool)

(declare-fun res!692382 () Bool)

(assert (=> b!1548596 (=> (not res!692382) (not e!992580))))

(declare-fun valid!1392 (CacheUp!1010) Bool)

(assert (=> b!1548596 (= res!692382 (valid!1392 cacheUp!755))))

(declare-fun b!1548597 () Bool)

(assert (=> b!1548597 (= e!992577 e!992607)))

(declare-fun res!692383 () Bool)

(assert (=> b!1548597 (=> (not res!692383) (not e!992607))))

(declare-fun isEmpty!10069 (BalanceConc!11020) Bool)

(assert (=> b!1548597 (= res!692383 (not (isEmpty!10069 (_1!9256 (_1!9257 lt!536367)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!32 (Regex!4249 BalanceConc!11020 BalanceConc!11020 CacheUp!1010 CacheDown!1018 CacheFurthestNullable!440) tuple4!852)

(assert (=> b!1548597 (= lt!536367 (findLongestMatchWithZipperSequenceV3Mem!32 (regex!2921 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun mapIsEmpty!8046 () Bool)

(declare-fun mapRes!8046 () Bool)

(assert (=> mapIsEmpty!8046 mapRes!8046))

(declare-fun e!992587 () Bool)

(assert (=> b!1548598 (= e!992585 (and e!992587 tp!451745))))

(declare-fun b!1548599 () Bool)

(declare-fun e!992579 () Bool)

(assert (=> b!1548599 (= e!992579 e!992586)))

(declare-fun mapNonEmpty!8046 () Bool)

(declare-fun mapRes!8047 () Bool)

(declare-fun tp!451738 () Bool)

(declare-fun tp!451764 () Bool)

(assert (=> mapNonEmpty!8046 (= mapRes!8047 (and tp!451738 tp!451764))))

(declare-fun mapKey!8046 () (_ BitVec 32))

(declare-fun mapValue!8048 () List!16737)

(declare-fun mapRest!8047 () (Array (_ BitVec 32) List!16737))

(assert (=> mapNonEmpty!8046 (= (arr!2652 (_values!2006 (v!23489 (underlying!3663 (v!23490 (underlying!3664 (cache!2052 cacheFurthestNullable!103))))))) (store mapRest!8047 mapKey!8046 mapValue!8048))))

(declare-fun e!992603 () Bool)

(declare-fun e!992610 () Bool)

(declare-fun tp!451759 () Bool)

(declare-fun b!1548600 () Bool)

(declare-fun inv!21924 (String!19343) Bool)

(declare-fun inv!21929 (TokenValueInjection!5682) Bool)

(assert (=> b!1548600 (= e!992603 (and tp!451759 (inv!21924 (tag!3185 rule!240)) (inv!21929 (transformation!2921 rule!240)) e!992610))))

(assert (=> b!1548601 (= e!992610 (and tp!451749 tp!451741))))

(declare-fun b!1548602 () Bool)

(declare-fun e!992601 () Bool)

(declare-fun e!992597 () Bool)

(assert (=> b!1548602 (= e!992601 e!992597)))

(declare-fun e!992605 () Bool)

(assert (=> b!1548603 (= e!992597 (and e!992605 tp!451751))))

(declare-fun b!1548604 () Bool)

(declare-fun lt!536371 () tuple2!15958)

(assert (=> b!1548604 (= e!992581 (or (not (= (value!92897 (_1!9253 lt!536371)) lt!536355)) (not (= (rule!4711 (_1!9253 lt!536371)) rule!240)) (not (= (size!13471 (_1!9253 lt!536371)) lt!536368)) lt!536370))))

(declare-fun get!4824 (Option!3005) tuple2!15958)

(assert (=> b!1548604 (= lt!536371 (get!4824 lt!536357))))

(declare-fun res!692385 () Bool)

(assert (=> start!143606 (=> (not res!692385) (not e!992580))))

(assert (=> start!143606 (= res!692385 ((_ is Lexer!2562) thiss!16438))))

(assert (=> start!143606 e!992580))

(assert (=> start!143606 (and (inv!21927 totalInput!568) e!992588)))

(declare-fun e!992584 () Bool)

(declare-fun inv!21930 (CacheUp!1010) Bool)

(assert (=> start!143606 (and (inv!21930 cacheUp!755) e!992584)))

(declare-fun inv!21931 (CacheFurthestNullable!440) Bool)

(assert (=> start!143606 (and (inv!21931 cacheFurthestNullable!103) e!992589)))

(declare-fun e!992583 () Bool)

(assert (=> start!143606 (and (inv!21927 input!1676) e!992583)))

(assert (=> start!143606 e!992603))

(declare-fun inv!21932 (CacheDown!1018) Bool)

(assert (=> start!143606 (and (inv!21932 cacheDown!768) e!992601)))

(assert (=> start!143606 true))

(declare-fun mapNonEmpty!8047 () Bool)

(declare-fun mapRes!8048 () Bool)

(declare-fun tp!451742 () Bool)

(declare-fun tp!451748 () Bool)

(assert (=> mapNonEmpty!8047 (= mapRes!8048 (and tp!451742 tp!451748))))

(declare-fun mapValue!8046 () List!16736)

(declare-fun mapKey!8048 () (_ BitVec 32))

(declare-fun mapRest!8048 () (Array (_ BitVec 32) List!16736))

(assert (=> mapNonEmpty!8047 (= (arr!2650 (_values!2005 (v!23487 (underlying!3661 (v!23488 (underlying!3662 (cache!2051 cacheUp!755))))))) (store mapRest!8048 mapKey!8048 mapValue!8046))))

(declare-fun mapIsEmpty!8047 () Bool)

(assert (=> mapIsEmpty!8047 mapRes!8047))

(declare-fun mapIsEmpty!8048 () Bool)

(assert (=> mapIsEmpty!8048 mapRes!8048))

(declare-fun b!1548605 () Bool)

(declare-fun e!992590 () Bool)

(declare-fun tp!451750 () Bool)

(assert (=> b!1548605 (= e!992590 (and tp!451750 mapRes!8046))))

(declare-fun condMapEmpty!8048 () Bool)

(declare-fun mapDefault!8048 () List!16738)

(assert (=> b!1548605 (= condMapEmpty!8048 (= (arr!2653 (_values!2007 (v!23492 (underlying!3665 (v!23493 (underlying!3666 (cache!2053 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16738)) mapDefault!8048)))))

(declare-fun b!1548606 () Bool)

(declare-fun e!992606 () Bool)

(declare-fun lt!536358 () MutLongMap!1728)

(assert (=> b!1548606 (= e!992605 (and e!992606 ((_ is LongMap!1728) lt!536358)))))

(assert (=> b!1548606 (= lt!536358 (v!23493 (underlying!3666 (cache!2053 cacheDown!768))))))

(declare-fun b!1548607 () Bool)

(declare-fun e!992576 () Bool)

(assert (=> b!1548607 (= e!992576 e!992579)))

(declare-fun b!1548608 () Bool)

(declare-fun lt!536356 () MutLongMap!1727)

(assert (=> b!1548608 (= e!992587 (and e!992576 ((_ is LongMap!1727) lt!536356)))))

(assert (=> b!1548608 (= lt!536356 (v!23490 (underlying!3664 (cache!2052 cacheFurthestNullable!103))))))

(declare-fun e!992609 () Bool)

(declare-fun tp!451760 () Bool)

(declare-fun tp!451752 () Bool)

(declare-fun array_inv!1909 (array!5952) Bool)

(assert (=> b!1548609 (= e!992609 (and tp!451739 tp!451752 tp!451760 (array_inv!1906 (_keys!2022 (v!23492 (underlying!3665 (v!23493 (underlying!3666 (cache!2053 cacheDown!768))))))) (array_inv!1909 (_values!2007 (v!23492 (underlying!3665 (v!23493 (underlying!3666 (cache!2053 cacheDown!768))))))) e!992590))))

(declare-fun b!1548610 () Bool)

(declare-fun tp!451754 () Bool)

(assert (=> b!1548610 (= e!992582 (and tp!451754 mapRes!8048))))

(declare-fun condMapEmpty!8046 () Bool)

(declare-fun mapDefault!8046 () List!16736)

(assert (=> b!1548610 (= condMapEmpty!8046 (= (arr!2650 (_values!2005 (v!23487 (underlying!3661 (v!23488 (underlying!3662 (cache!2051 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16736)) mapDefault!8046)))))

(declare-fun b!1548611 () Bool)

(declare-fun tp!451758 () Bool)

(assert (=> b!1548611 (= e!992604 (and tp!451758 mapRes!8047))))

(declare-fun condMapEmpty!8047 () Bool)

(declare-fun mapDefault!8047 () List!16737)

(assert (=> b!1548611 (= condMapEmpty!8047 (= (arr!2652 (_values!2006 (v!23489 (underlying!3663 (v!23490 (underlying!3664 (cache!2052 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16737)) mapDefault!8047)))))

(declare-fun b!1548612 () Bool)

(declare-fun e!992578 () Bool)

(assert (=> b!1548612 (= e!992584 e!992578)))

(declare-fun b!1548613 () Bool)

(declare-fun e!992611 () Bool)

(assert (=> b!1548613 (= e!992606 e!992611)))

(assert (=> b!1548614 (= e!992578 (and e!992594 tp!451753))))

(declare-fun b!1548615 () Bool)

(declare-fun tp!451756 () Bool)

(assert (=> b!1548615 (= e!992583 (and (inv!21928 (c!252175 input!1676)) tp!451756))))

(declare-fun b!1548616 () Bool)

(assert (=> b!1548616 (= e!992611 e!992609)))

(declare-fun b!1548617 () Bool)

(assert (=> b!1548617 (= e!992591 e!992602)))

(declare-fun mapNonEmpty!8048 () Bool)

(declare-fun tp!451746 () Bool)

(declare-fun tp!451762 () Bool)

(assert (=> mapNonEmpty!8048 (= mapRes!8046 (and tp!451746 tp!451762))))

(declare-fun mapKey!8047 () (_ BitVec 32))

(declare-fun mapValue!8047 () List!16738)

(declare-fun mapRest!8046 () (Array (_ BitVec 32) List!16738))

(assert (=> mapNonEmpty!8048 (= (arr!2653 (_values!2007 (v!23492 (underlying!3665 (v!23493 (underlying!3666 (cache!2053 cacheDown!768))))))) (store mapRest!8046 mapKey!8047 mapValue!8047))))

(assert (= (and start!143606 res!692385) b!1548595))

(assert (= (and b!1548595 res!692384) b!1548596))

(assert (= (and b!1548596 res!692382) b!1548591))

(assert (= (and b!1548591 res!692387) b!1548580))

(assert (= (and b!1548580 res!692389) b!1548578))

(assert (= (and b!1548578 res!692395) b!1548592))

(assert (= (and b!1548592 res!692393) b!1548597))

(assert (= (and b!1548597 res!692383) b!1548584))

(assert (= (and b!1548584 (not res!692388)) b!1548594))

(assert (= (and b!1548584 (not res!692392)) b!1548585))

(assert (= (and b!1548585 (not res!692391)) b!1548583))

(assert (= (and b!1548583 (not res!692394)) b!1548587))

(assert (= (and b!1548587 (not res!692386)) b!1548586))

(assert (= (and b!1548586 (not res!692390)) b!1548604))

(assert (= start!143606 b!1548582))

(assert (= (and b!1548610 condMapEmpty!8046) mapIsEmpty!8048))

(assert (= (and b!1548610 (not condMapEmpty!8046)) mapNonEmpty!8047))

(assert (= b!1548579 b!1548610))

(assert (= b!1548593 b!1548579))

(assert (= b!1548617 b!1548593))

(assert (= (and b!1548590 ((_ is LongMap!1726) (v!23488 (underlying!3662 (cache!2051 cacheUp!755))))) b!1548617))

(assert (= b!1548614 b!1548590))

(assert (= (and b!1548612 ((_ is HashMap!1670) (cache!2051 cacheUp!755))) b!1548614))

(assert (= start!143606 b!1548612))

(assert (= (and b!1548611 condMapEmpty!8047) mapIsEmpty!8047))

(assert (= (and b!1548611 (not condMapEmpty!8047)) mapNonEmpty!8046))

(assert (= b!1548589 b!1548611))

(assert (= b!1548599 b!1548589))

(assert (= b!1548607 b!1548599))

(assert (= (and b!1548608 ((_ is LongMap!1727) (v!23490 (underlying!3664 (cache!2052 cacheFurthestNullable!103))))) b!1548607))

(assert (= b!1548598 b!1548608))

(assert (= (and b!1548581 ((_ is HashMap!1671) (cache!2052 cacheFurthestNullable!103))) b!1548598))

(assert (= b!1548581 b!1548588))

(assert (= start!143606 b!1548581))

(assert (= start!143606 b!1548615))

(assert (= b!1548600 b!1548601))

(assert (= start!143606 b!1548600))

(assert (= (and b!1548605 condMapEmpty!8048) mapIsEmpty!8046))

(assert (= (and b!1548605 (not condMapEmpty!8048)) mapNonEmpty!8048))

(assert (= b!1548609 b!1548605))

(assert (= b!1548616 b!1548609))

(assert (= b!1548613 b!1548616))

(assert (= (and b!1548606 ((_ is LongMap!1728) (v!23493 (underlying!3666 (cache!2053 cacheDown!768))))) b!1548613))

(assert (= b!1548603 b!1548606))

(assert (= (and b!1548602 ((_ is HashMap!1672) (cache!2053 cacheDown!768))) b!1548603))

(assert (= start!143606 b!1548602))

(declare-fun m!1821715 () Bool)

(assert (=> b!1548586 m!1821715))

(declare-fun m!1821717 () Bool)

(assert (=> b!1548586 m!1821717))

(declare-fun m!1821719 () Bool)

(assert (=> b!1548594 m!1821719))

(declare-fun m!1821721 () Bool)

(assert (=> b!1548604 m!1821721))

(declare-fun m!1821723 () Bool)

(assert (=> b!1548615 m!1821723))

(declare-fun m!1821725 () Bool)

(assert (=> b!1548588 m!1821725))

(declare-fun m!1821727 () Bool)

(assert (=> b!1548600 m!1821727))

(declare-fun m!1821729 () Bool)

(assert (=> b!1548600 m!1821729))

(declare-fun m!1821731 () Bool)

(assert (=> mapNonEmpty!8046 m!1821731))

(declare-fun m!1821733 () Bool)

(assert (=> b!1548585 m!1821733))

(declare-fun m!1821735 () Bool)

(assert (=> b!1548582 m!1821735))

(declare-fun m!1821737 () Bool)

(assert (=> b!1548578 m!1821737))

(assert (=> b!1548578 m!1821737))

(declare-fun m!1821739 () Bool)

(assert (=> b!1548578 m!1821739))

(declare-fun m!1821741 () Bool)

(assert (=> b!1548578 m!1821741))

(declare-fun m!1821743 () Bool)

(assert (=> b!1548595 m!1821743))

(declare-fun m!1821745 () Bool)

(assert (=> b!1548609 m!1821745))

(declare-fun m!1821747 () Bool)

(assert (=> b!1548609 m!1821747))

(declare-fun m!1821749 () Bool)

(assert (=> b!1548591 m!1821749))

(declare-fun m!1821751 () Bool)

(assert (=> b!1548597 m!1821751))

(declare-fun m!1821753 () Bool)

(assert (=> b!1548597 m!1821753))

(declare-fun m!1821755 () Bool)

(assert (=> b!1548580 m!1821755))

(declare-fun m!1821757 () Bool)

(assert (=> b!1548584 m!1821757))

(declare-fun m!1821759 () Bool)

(assert (=> b!1548584 m!1821759))

(declare-fun m!1821761 () Bool)

(assert (=> b!1548584 m!1821761))

(declare-fun m!1821763 () Bool)

(assert (=> b!1548584 m!1821763))

(declare-fun m!1821765 () Bool)

(assert (=> b!1548584 m!1821765))

(assert (=> b!1548584 m!1821763))

(assert (=> b!1548584 m!1821757))

(declare-fun m!1821767 () Bool)

(assert (=> b!1548584 m!1821767))

(declare-fun m!1821769 () Bool)

(assert (=> b!1548584 m!1821769))

(declare-fun m!1821771 () Bool)

(assert (=> b!1548583 m!1821771))

(declare-fun m!1821773 () Bool)

(assert (=> b!1548583 m!1821773))

(declare-fun m!1821775 () Bool)

(assert (=> b!1548583 m!1821775))

(declare-fun m!1821777 () Bool)

(assert (=> b!1548583 m!1821777))

(declare-fun m!1821779 () Bool)

(assert (=> b!1548583 m!1821779))

(declare-fun m!1821781 () Bool)

(assert (=> b!1548583 m!1821781))

(declare-fun m!1821783 () Bool)

(assert (=> b!1548583 m!1821783))

(declare-fun m!1821785 () Bool)

(assert (=> b!1548583 m!1821785))

(declare-fun m!1821787 () Bool)

(assert (=> b!1548583 m!1821787))

(declare-fun m!1821789 () Bool)

(assert (=> mapNonEmpty!8047 m!1821789))

(declare-fun m!1821791 () Bool)

(assert (=> mapNonEmpty!8048 m!1821791))

(declare-fun m!1821793 () Bool)

(assert (=> b!1548581 m!1821793))

(declare-fun m!1821795 () Bool)

(assert (=> start!143606 m!1821795))

(declare-fun m!1821797 () Bool)

(assert (=> start!143606 m!1821797))

(declare-fun m!1821799 () Bool)

(assert (=> start!143606 m!1821799))

(declare-fun m!1821801 () Bool)

(assert (=> start!143606 m!1821801))

(declare-fun m!1821803 () Bool)

(assert (=> start!143606 m!1821803))

(declare-fun m!1821805 () Bool)

(assert (=> b!1548579 m!1821805))

(declare-fun m!1821807 () Bool)

(assert (=> b!1548579 m!1821807))

(declare-fun m!1821809 () Bool)

(assert (=> b!1548596 m!1821809))

(declare-fun m!1821811 () Bool)

(assert (=> b!1548587 m!1821811))

(declare-fun m!1821813 () Bool)

(assert (=> b!1548589 m!1821813))

(declare-fun m!1821815 () Bool)

(assert (=> b!1548589 m!1821815))

(check-sat (not b_next!41615) b_and!107997 (not b!1548611) (not b!1548597) (not b!1548584) (not b!1548580) (not start!143606) (not b!1548579) (not b_next!41613) b_and!107993 (not b!1548615) (not b!1548595) (not b!1548600) b_and!107989 (not b!1548609) (not b!1548594) (not b!1548586) (not b!1548585) (not b!1548591) (not b!1548583) b_and!108003 (not b_next!41609) (not b_next!41603) (not mapNonEmpty!8048) b_and!107991 (not b!1548581) (not b_next!41607) (not b!1548596) (not b!1548578) (not b!1548589) (not b!1548588) (not b!1548587) b_and!107995 (not mapNonEmpty!8046) (not b_next!41617) b_and!108001 (not b_next!41611) (not b_next!41605) (not mapNonEmpty!8047) (not b!1548582) b_and!107999 (not b!1548605) (not b!1548604) (not b!1548610))
(check-sat b_and!107989 (not b_next!41615) b_and!107997 b_and!108003 b_and!107995 (not b_next!41605) b_and!107999 (not b_next!41613) b_and!107993 (not b_next!41609) (not b_next!41603) b_and!107991 (not b_next!41607) (not b_next!41617) b_and!108001 (not b_next!41611))
