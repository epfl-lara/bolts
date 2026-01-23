; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143614 () Bool)

(assert start!143614)

(declare-fun b!1549125 () Bool)

(declare-fun b_free!40963 () Bool)

(declare-fun b_next!41667 () Bool)

(assert (=> b!1549125 (= b_free!40963 (not b_next!41667))))

(declare-fun tp!452070 () Bool)

(declare-fun b_and!108053 () Bool)

(assert (=> b!1549125 (= tp!452070 b_and!108053)))

(declare-fun b!1549121 () Bool)

(declare-fun b_free!40965 () Bool)

(declare-fun b_next!41669 () Bool)

(assert (=> b!1549121 (= b_free!40965 (not b_next!41669))))

(declare-fun tp!452063 () Bool)

(declare-fun b_and!108055 () Bool)

(assert (=> b!1549121 (= tp!452063 b_and!108055)))

(declare-fun b!1549093 () Bool)

(declare-fun b_free!40967 () Bool)

(declare-fun b_next!41671 () Bool)

(assert (=> b!1549093 (= b_free!40967 (not b_next!41671))))

(declare-fun tp!452069 () Bool)

(declare-fun b_and!108057 () Bool)

(assert (=> b!1549093 (= tp!452069 b_and!108057)))

(declare-fun b_free!40969 () Bool)

(declare-fun b_next!41673 () Bool)

(assert (=> b!1549093 (= b_free!40969 (not b_next!41673))))

(declare-fun tp!452072 () Bool)

(declare-fun b_and!108059 () Bool)

(assert (=> b!1549093 (= tp!452072 b_and!108059)))

(declare-fun b!1549127 () Bool)

(declare-fun b_free!40971 () Bool)

(declare-fun b_next!41675 () Bool)

(assert (=> b!1549127 (= b_free!40971 (not b_next!41675))))

(declare-fun tp!452077 () Bool)

(declare-fun b_and!108061 () Bool)

(assert (=> b!1549127 (= tp!452077 b_and!108061)))

(declare-fun b!1549108 () Bool)

(declare-fun b_free!40973 () Bool)

(declare-fun b_next!41677 () Bool)

(assert (=> b!1549108 (= b_free!40973 (not b_next!41677))))

(declare-fun tp!452071 () Bool)

(declare-fun b_and!108063 () Bool)

(assert (=> b!1549108 (= tp!452071 b_and!108063)))

(declare-fun b!1549111 () Bool)

(declare-fun b_free!40975 () Bool)

(declare-fun b_next!41679 () Bool)

(assert (=> b!1549111 (= b_free!40975 (not b_next!41679))))

(declare-fun tp!452076 () Bool)

(declare-fun b_and!108065 () Bool)

(assert (=> b!1549111 (= tp!452076 b_and!108065)))

(declare-fun b!1549129 () Bool)

(declare-fun b_free!40977 () Bool)

(declare-fun b_next!41681 () Bool)

(assert (=> b!1549129 (= b_free!40977 (not b_next!41681))))

(declare-fun tp!452081 () Bool)

(declare-fun b_and!108067 () Bool)

(assert (=> b!1549129 (= tp!452081 b_and!108067)))

(declare-fun b!1549137 () Bool)

(declare-fun e!993085 () Bool)

(assert (=> b!1549137 (= e!993085 true)))

(declare-fun b!1549136 () Bool)

(declare-fun e!993084 () Bool)

(assert (=> b!1549136 (= e!993084 e!993085)))

(declare-fun b!1549116 () Bool)

(assert (=> b!1549116 e!993084))

(assert (= b!1549136 b!1549137))

(assert (= b!1549116 b!1549136))

(declare-fun order!9765 () Int)

(declare-datatypes ((List!16755 0))(
  ( (Nil!16687) (Cons!16687 (h!22088 (_ BitVec 16)) (t!141158 List!16755)) )
))
(declare-datatypes ((TokenValue!3015 0))(
  ( (FloatLiteralValue!6030 (text!21550 List!16755)) (TokenValueExt!3014 (__x!10961 Int)) (Broken!15075 (value!92984 List!16755)) (Object!3082) (End!3015) (Def!3015) (Underscore!3015) (Match!3015) (Else!3015) (Error!3015) (Case!3015) (If!3015) (Extends!3015) (Abstract!3015) (Class!3015) (Val!3015) (DelimiterValue!6030 (del!3075 List!16755)) (KeywordValue!3021 (value!92985 List!16755)) (CommentValue!6030 (value!92986 List!16755)) (WhitespaceValue!6030 (value!92987 List!16755)) (IndentationValue!3015 (value!92988 List!16755)) (String!19362) (Int32!3015) (Broken!15076 (value!92989 List!16755)) (Boolean!3016) (Unit!25982) (OperatorValue!3018 (op!3075 List!16755)) (IdentifierValue!6030 (value!92990 List!16755)) (IdentifierValue!6031 (value!92991 List!16755)) (WhitespaceValue!6031 (value!92992 List!16755)) (True!6030) (False!6030) (Broken!15077 (value!92993 List!16755)) (Broken!15078 (value!92994 List!16755)) (True!6031) (RightBrace!3015) (RightBracket!3015) (Colon!3015) (Null!3015) (Comma!3015) (LeftBracket!3015) (False!6031) (LeftBrace!3015) (ImaginaryLiteralValue!3015 (text!21551 List!16755)) (StringLiteralValue!9045 (value!92995 List!16755)) (EOFValue!3015 (value!92996 List!16755)) (IdentValue!3015 (value!92997 List!16755)) (DelimiterValue!6031 (value!92998 List!16755)) (DedentValue!3015 (value!92999 List!16755)) (NewLineValue!3015 (value!93000 List!16755)) (IntegerValue!9045 (value!93001 (_ BitVec 32)) (text!21552 List!16755)) (IntegerValue!9046 (value!93002 Int) (text!21553 List!16755)) (Times!3015) (Or!3015) (Equal!3015) (Minus!3015) (Broken!15079 (value!93003 List!16755)) (And!3015) (Div!3015) (LessEqual!3015) (Mod!3015) (Concat!7268) (Not!3015) (Plus!3015) (SpaceValue!3015 (value!93004 List!16755)) (IntegerValue!9047 (value!93005 Int) (text!21554 List!16755)) (StringLiteralValue!9046 (text!21555 List!16755)) (FloatLiteralValue!6031 (text!21556 List!16755)) (BytesLiteralValue!3015 (value!93006 List!16755)) (CommentValue!6031 (value!93007 List!16755)) (StringLiteralValue!9047 (value!93008 List!16755)) (ErrorTokenValue!3015 (msg!3076 List!16755)) )
))
(declare-datatypes ((C!8684 0))(
  ( (C!8685 (val!4914 Int)) )
))
(declare-datatypes ((List!16756 0))(
  ( (Nil!16688) (Cons!16688 (h!22089 C!8684) (t!141159 List!16756)) )
))
(declare-datatypes ((IArray!11091 0))(
  ( (IArray!11092 (innerList!5603 List!16756)) )
))
(declare-datatypes ((Conc!5543 0))(
  ( (Node!5543 (left!13594 Conc!5543) (right!13924 Conc!5543) (csize!11316 Int) (cheight!5754 Int)) (Leaf!8215 (xs!8343 IArray!11091) (csize!11317 Int)) (Empty!5543) )
))
(declare-datatypes ((BalanceConc!11028 0))(
  ( (BalanceConc!11029 (c!252187 Conc!5543)) )
))
(declare-datatypes ((Regex!4253 0))(
  ( (ElementMatch!4253 (c!252188 C!8684)) (Concat!7269 (regOne!9018 Regex!4253) (regTwo!9018 Regex!4253)) (EmptyExpr!4253) (Star!4253 (reg!4582 Regex!4253)) (EmptyLang!4253) (Union!4253 (regOne!9019 Regex!4253) (regTwo!9019 Regex!4253)) )
))
(declare-datatypes ((String!19363 0))(
  ( (String!19364 (value!93009 String)) )
))
(declare-datatypes ((TokenValueInjection!5690 0))(
  ( (TokenValueInjection!5691 (toValue!4288 Int) (toChars!4147 Int)) )
))
(declare-datatypes ((Rule!5650 0))(
  ( (Rule!5651 (regex!2925 Regex!4253) (tag!3189 String!19363) (isSeparator!2925 Bool) (transformation!2925 TokenValueInjection!5690)) )
))
(declare-fun rule!240 () Rule!5650)

(declare-fun order!9763 () Int)

(declare-fun lambda!65589 () Int)

(declare-fun dynLambda!7376 (Int Int) Int)

(declare-fun dynLambda!7377 (Int Int) Int)

(assert (=> b!1549137 (< (dynLambda!7376 order!9763 (toValue!4288 (transformation!2925 rule!240))) (dynLambda!7377 order!9765 lambda!65589))))

(declare-fun order!9767 () Int)

(declare-fun dynLambda!7378 (Int Int) Int)

(assert (=> b!1549137 (< (dynLambda!7378 order!9767 (toChars!4147 (transformation!2925 rule!240))) (dynLambda!7377 order!9765 lambda!65589))))

(declare-fun b!1549090 () Bool)

(declare-fun e!993058 () Bool)

(declare-fun input!1676 () BalanceConc!11028)

(declare-fun tp!452079 () Bool)

(declare-fun inv!21947 (Conc!5543) Bool)

(assert (=> b!1549090 (= e!993058 (and (inv!21947 (c!252187 input!1676)) tp!452079))))

(declare-fun b!1549091 () Bool)

(declare-fun e!993050 () Bool)

(declare-fun e!993056 () Bool)

(assert (=> b!1549091 (= e!993050 e!993056)))

(declare-fun b!1549092 () Bool)

(declare-fun e!993061 () Bool)

(declare-fun e!993069 () Bool)

(assert (=> b!1549092 (= e!993061 e!993069)))

(declare-fun e!993051 () Bool)

(assert (=> b!1549093 (= e!993051 (and tp!452069 tp!452072))))

(declare-fun res!692558 () Bool)

(declare-fun e!993076 () Bool)

(assert (=> start!143614 (=> (not res!692558) (not e!993076))))

(declare-datatypes ((LexerInterface!2567 0))(
  ( (LexerInterfaceExt!2564 (__x!10962 Int)) (Lexer!2565) )
))
(declare-fun thiss!16438 () LexerInterface!2567)

(get-info :version)

(assert (=> start!143614 (= res!692558 ((_ is Lexer!2565) thiss!16438))))

(assert (=> start!143614 e!993076))

(declare-fun totalInput!568 () BalanceConc!11028)

(declare-fun e!993046 () Bool)

(declare-fun inv!21948 (BalanceConc!11028) Bool)

(assert (=> start!143614 (and (inv!21948 totalInput!568) e!993046)))

(declare-datatypes ((List!16757 0))(
  ( (Nil!16689) (Cons!16689 (h!22090 Regex!4253) (t!141160 List!16757)) )
))
(declare-datatypes ((Context!1542 0))(
  ( (Context!1543 (exprs!1271 List!16757)) )
))
(declare-datatypes ((tuple2!16000 0))(
  ( (tuple2!16001 (_1!9283 Context!1542) (_2!9283 C!8684)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16002 0))(
  ( (tuple2!16003 (_1!9284 tuple2!16000) (_2!9284 (InoxSet Context!1542))) )
))
(declare-datatypes ((List!16758 0))(
  ( (Nil!16690) (Cons!16690 (h!22091 tuple2!16002) (t!141161 List!16758)) )
))
(declare-datatypes ((array!5974 0))(
  ( (array!5975 (arr!2664 (Array (_ BitVec 32) List!16758)) (size!13490 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1680 0))(
  ( (HashableExt!1679 (__x!10963 Int)) )
))
(declare-datatypes ((array!5976 0))(
  ( (array!5977 (arr!2665 (Array (_ BitVec 32) (_ BitVec 64))) (size!13491 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3472 0))(
  ( (LongMapFixedSize!3473 (defaultEntry!2096 Int) (mask!4951 (_ BitVec 32)) (extraKeys!1983 (_ BitVec 32)) (zeroValue!1993 List!16758) (minValue!1993 List!16758) (_size!3553 (_ BitVec 32)) (_keys!2030 array!5976) (_values!2015 array!5974) (_vacant!1797 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6829 0))(
  ( (Cell!6830 (v!23513 LongMapFixedSize!3472)) )
))
(declare-datatypes ((MutLongMap!1736 0))(
  ( (LongMap!1736 (underlying!3681 Cell!6829)) (MutLongMapExt!1735 (__x!10964 Int)) )
))
(declare-datatypes ((Cell!6831 0))(
  ( (Cell!6832 (v!23514 MutLongMap!1736)) )
))
(declare-datatypes ((MutableMap!1680 0))(
  ( (MutableMapExt!1679 (__x!10965 Int)) (HashMap!1680 (underlying!3682 Cell!6831) (hashF!3599 Hashable!1680) (_size!3554 (_ BitVec 32)) (defaultValue!1840 Int)) )
))
(declare-datatypes ((CacheUp!1016 0))(
  ( (CacheUp!1017 (cache!2061 MutableMap!1680)) )
))
(declare-fun cacheUp!755 () CacheUp!1016)

(declare-fun e!993067 () Bool)

(declare-fun inv!21949 (CacheUp!1016) Bool)

(assert (=> start!143614 (and (inv!21949 cacheUp!755) e!993067)))

(declare-datatypes ((tuple3!1708 0))(
  ( (tuple3!1709 (_1!9285 (InoxSet Context!1542)) (_2!9285 Int) (_3!1283 Int)) )
))
(declare-datatypes ((tuple2!16004 0))(
  ( (tuple2!16005 (_1!9286 tuple3!1708) (_2!9286 Int)) )
))
(declare-datatypes ((List!16759 0))(
  ( (Nil!16691) (Cons!16691 (h!22092 tuple2!16004) (t!141162 List!16759)) )
))
(declare-datatypes ((array!5978 0))(
  ( (array!5979 (arr!2666 (Array (_ BitVec 32) List!16759)) (size!13492 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3474 0))(
  ( (LongMapFixedSize!3475 (defaultEntry!2097 Int) (mask!4952 (_ BitVec 32)) (extraKeys!1984 (_ BitVec 32)) (zeroValue!1994 List!16759) (minValue!1994 List!16759) (_size!3555 (_ BitVec 32)) (_keys!2031 array!5976) (_values!2016 array!5978) (_vacant!1798 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6833 0))(
  ( (Cell!6834 (v!23515 LongMapFixedSize!3474)) )
))
(declare-datatypes ((Hashable!1681 0))(
  ( (HashableExt!1680 (__x!10966 Int)) )
))
(declare-datatypes ((MutLongMap!1737 0))(
  ( (LongMap!1737 (underlying!3683 Cell!6833)) (MutLongMapExt!1736 (__x!10967 Int)) )
))
(declare-datatypes ((Cell!6835 0))(
  ( (Cell!6836 (v!23516 MutLongMap!1737)) )
))
(declare-datatypes ((MutableMap!1681 0))(
  ( (MutableMapExt!1680 (__x!10968 Int)) (HashMap!1681 (underlying!3684 Cell!6835) (hashF!3600 Hashable!1681) (_size!3556 (_ BitVec 32)) (defaultValue!1841 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!446 0))(
  ( (CacheFurthestNullable!447 (cache!2062 MutableMap!1681) (totalInput!2426 BalanceConc!11028)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!446)

(declare-fun e!993072 () Bool)

(declare-fun inv!21950 (CacheFurthestNullable!446) Bool)

(assert (=> start!143614 (and (inv!21950 cacheFurthestNullable!103) e!993072)))

(assert (=> start!143614 (and (inv!21948 input!1676) e!993058)))

(declare-fun e!993053 () Bool)

(assert (=> start!143614 e!993053))

(declare-datatypes ((tuple3!1710 0))(
  ( (tuple3!1711 (_1!9287 Regex!4253) (_2!9287 Context!1542) (_3!1284 C!8684)) )
))
(declare-datatypes ((tuple2!16006 0))(
  ( (tuple2!16007 (_1!9288 tuple3!1710) (_2!9288 (InoxSet Context!1542))) )
))
(declare-datatypes ((List!16760 0))(
  ( (Nil!16692) (Cons!16692 (h!22093 tuple2!16006) (t!141163 List!16760)) )
))
(declare-datatypes ((array!5980 0))(
  ( (array!5981 (arr!2667 (Array (_ BitVec 32) List!16760)) (size!13493 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3476 0))(
  ( (LongMapFixedSize!3477 (defaultEntry!2098 Int) (mask!4953 (_ BitVec 32)) (extraKeys!1985 (_ BitVec 32)) (zeroValue!1995 List!16760) (minValue!1995 List!16760) (_size!3557 (_ BitVec 32)) (_keys!2032 array!5976) (_values!2017 array!5980) (_vacant!1799 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6837 0))(
  ( (Cell!6838 (v!23517 LongMapFixedSize!3476)) )
))
(declare-datatypes ((MutLongMap!1738 0))(
  ( (LongMap!1738 (underlying!3685 Cell!6837)) (MutLongMapExt!1737 (__x!10969 Int)) )
))
(declare-datatypes ((Cell!6839 0))(
  ( (Cell!6840 (v!23518 MutLongMap!1738)) )
))
(declare-datatypes ((Hashable!1682 0))(
  ( (HashableExt!1681 (__x!10970 Int)) )
))
(declare-datatypes ((MutableMap!1682 0))(
  ( (MutableMapExt!1681 (__x!10971 Int)) (HashMap!1682 (underlying!3686 Cell!6839) (hashF!3601 Hashable!1682) (_size!3558 (_ BitVec 32)) (defaultValue!1842 Int)) )
))
(declare-datatypes ((CacheDown!1026 0))(
  ( (CacheDown!1027 (cache!2063 MutableMap!1682)) )
))
(declare-fun cacheDown!768 () CacheDown!1026)

(declare-fun e!993047 () Bool)

(declare-fun inv!21951 (CacheDown!1026) Bool)

(assert (=> start!143614 (and (inv!21951 cacheDown!768) e!993047)))

(assert (=> start!143614 true))

(declare-fun b!1549094 () Bool)

(declare-fun res!692551 () Bool)

(declare-fun e!993066 () Bool)

(assert (=> b!1549094 (=> (not res!692551) (not e!993066))))

(assert (=> b!1549094 (= res!692551 (= (totalInput!2426 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1549095 () Bool)

(declare-fun res!692556 () Bool)

(declare-fun e!993057 () Bool)

(assert (=> b!1549095 (=> res!692556 e!993057)))

(declare-fun lt!536587 () BalanceConc!11028)

(declare-fun lt!536598 () List!16756)

(declare-fun list!6468 (BalanceConc!11028) List!16756)

(assert (=> b!1549095 (= res!692556 (not (= (list!6468 lt!536587) lt!536598)))))

(declare-fun b!1549096 () Bool)

(declare-fun res!692555 () Bool)

(assert (=> b!1549096 (=> (not res!692555) (not e!993076))))

(declare-fun valid!1397 (CacheUp!1016) Bool)

(assert (=> b!1549096 (= res!692555 (valid!1397 cacheUp!755))))

(declare-fun b!1549097 () Bool)

(declare-fun tp!452065 () Bool)

(assert (=> b!1549097 (= e!993046 (and (inv!21947 (c!252187 totalInput!568)) tp!452065))))

(declare-fun b!1549098 () Bool)

(declare-fun e!993075 () Bool)

(assert (=> b!1549098 (= e!993067 e!993075)))

(declare-fun mapIsEmpty!8082 () Bool)

(declare-fun mapRes!8084 () Bool)

(assert (=> mapIsEmpty!8082 mapRes!8084))

(declare-fun b!1549099 () Bool)

(declare-fun e!993052 () Bool)

(assert (=> b!1549099 (= e!993066 e!993052)))

(declare-fun res!692562 () Bool)

(assert (=> b!1549099 (=> (not res!692562) (not e!993052))))

(declare-datatypes ((tuple2!16008 0))(
  ( (tuple2!16009 (_1!9289 BalanceConc!11028) (_2!9289 BalanceConc!11028)) )
))
(declare-datatypes ((tuple4!858 0))(
  ( (tuple4!859 (_1!9290 tuple2!16008) (_2!9290 CacheUp!1016) (_3!1285 CacheDown!1026) (_4!429 CacheFurthestNullable!446)) )
))
(declare-fun lt!536592 () tuple4!858)

(declare-fun isEmpty!10072 (BalanceConc!11028) Bool)

(assert (=> b!1549099 (= res!692562 (not (isEmpty!10072 (_1!9289 (_1!9290 lt!536592)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!34 (Regex!4253 BalanceConc!11028 BalanceConc!11028 CacheUp!1016 CacheDown!1026 CacheFurthestNullable!446) tuple4!858)

(assert (=> b!1549099 (= lt!536592 (findLongestMatchWithZipperSequenceV3Mem!34 (regex!2925 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun b!1549100 () Bool)

(declare-fun e!993079 () Bool)

(assert (=> b!1549100 (= e!993079 e!993057)))

(declare-fun res!692553 () Bool)

(assert (=> b!1549100 (=> res!692553 e!993057)))

(declare-fun lt!536601 () Bool)

(declare-fun lt!536591 () Bool)

(assert (=> b!1549100 (= res!692553 (or (not (= lt!536601 lt!536591)) (not lt!536601)))))

(declare-datatypes ((Token!5448 0))(
  ( (Token!5449 (value!93010 TokenValue!3015) (rule!4714 Rule!5650) (size!13494 Int) (originalCharacters!3755 List!16756)) )
))
(declare-datatypes ((tuple2!16010 0))(
  ( (tuple2!16011 (_1!9291 Token!5448) (_2!9291 List!16756)) )
))
(declare-datatypes ((Option!3011 0))(
  ( (None!3010) (Some!3010 (v!23519 tuple2!16010)) )
))
(declare-fun lt!536594 () Option!3011)

(declare-fun isDefined!2417 (Option!3011) Bool)

(assert (=> b!1549100 (= lt!536591 (isDefined!2417 lt!536594))))

(declare-fun lt!536586 () Token!5448)

(declare-datatypes ((tuple2!16012 0))(
  ( (tuple2!16013 (_1!9292 Token!5448) (_2!9292 BalanceConc!11028)) )
))
(declare-datatypes ((Option!3012 0))(
  ( (None!3011) (Some!3011 (v!23520 tuple2!16012)) )
))
(declare-fun isDefined!2418 (Option!3012) Bool)

(assert (=> b!1549100 (= lt!536601 (isDefined!2418 (Some!3011 (tuple2!16013 lt!536586 (_2!9289 (_1!9290 lt!536592))))))))

(declare-fun lt!536604 () List!16756)

(declare-fun maxPrefixOneRule!691 (LexerInterface!2567 Rule!5650 List!16756) Option!3011)

(assert (=> b!1549100 (= lt!536594 (maxPrefixOneRule!691 thiss!16438 rule!240 lt!536604))))

(declare-fun lt!536600 () TokenValue!3015)

(declare-fun lt!536595 () Int)

(assert (=> b!1549100 (= lt!536586 (Token!5449 lt!536600 rule!240 lt!536595 lt!536598))))

(declare-fun size!13495 (BalanceConc!11028) Int)

(assert (=> b!1549100 (= lt!536595 (size!13495 (_1!9289 (_1!9290 lt!536592))))))

(declare-fun apply!4098 (TokenValueInjection!5690 BalanceConc!11028) TokenValue!3015)

(assert (=> b!1549100 (= lt!536600 (apply!4098 (transformation!2925 rule!240) (_1!9289 (_1!9290 lt!536592))))))

(declare-datatypes ((Unit!25983 0))(
  ( (Unit!25984) )
))
(declare-fun lt!536597 () Unit!25983)

(declare-fun ForallOf!199 (Int BalanceConc!11028) Unit!25983)

(assert (=> b!1549100 (= lt!536597 (ForallOf!199 lambda!65589 lt!536587))))

(declare-fun seqFromList!1762 (List!16756) BalanceConc!11028)

(assert (=> b!1549100 (= lt!536587 (seqFromList!1762 lt!536598))))

(assert (=> b!1549100 (= lt!536598 (list!6468 (_1!9289 (_1!9290 lt!536592))))))

(declare-fun lt!536602 () Unit!25983)

(assert (=> b!1549100 (= lt!536602 (ForallOf!199 lambda!65589 (_1!9289 (_1!9290 lt!536592))))))

(declare-fun b!1549101 () Bool)

(declare-fun e!993055 () Bool)

(assert (=> b!1549101 (= e!993047 e!993055)))

(declare-fun b!1549102 () Bool)

(assert (=> b!1549102 (= e!993052 (not e!993079))))

(declare-fun res!692552 () Bool)

(assert (=> b!1549102 (=> res!692552 e!993079)))

(declare-fun semiInverseModEq!1102 (Int Int) Bool)

(assert (=> b!1549102 (= res!692552 (not (semiInverseModEq!1102 (toChars!4147 (transformation!2925 rule!240)) (toValue!4288 (transformation!2925 rule!240)))))))

(declare-fun lt!536603 () Unit!25983)

(declare-fun lemmaInv!412 (TokenValueInjection!5690) Unit!25983)

(assert (=> b!1549102 (= lt!536603 (lemmaInv!412 (transformation!2925 rule!240)))))

(declare-fun e!993064 () Bool)

(assert (=> b!1549102 e!993064))

(declare-fun res!692561 () Bool)

(assert (=> b!1549102 (=> res!692561 e!993064)))

(declare-datatypes ((tuple2!16014 0))(
  ( (tuple2!16015 (_1!9293 List!16756) (_2!9293 List!16756)) )
))
(declare-fun lt!536605 () tuple2!16014)

(declare-fun isEmpty!10073 (List!16756) Bool)

(assert (=> b!1549102 (= res!692561 (isEmpty!10073 (_1!9293 lt!536605)))))

(declare-fun findLongestMatchInner!318 (Regex!4253 List!16756 Int List!16756 List!16756 Int) tuple2!16014)

(declare-fun size!13496 (List!16756) Int)

(assert (=> b!1549102 (= lt!536605 (findLongestMatchInner!318 (regex!2925 rule!240) Nil!16688 (size!13496 Nil!16688) lt!536604 lt!536604 (size!13496 lt!536604)))))

(declare-fun lt!536599 () Unit!25983)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!302 (Regex!4253 List!16756) Unit!25983)

(assert (=> b!1549102 (= lt!536599 (longestMatchIsAcceptedByMatchOrIsEmpty!302 (regex!2925 rule!240) lt!536604))))

(declare-fun b!1549103 () Bool)

(declare-fun e!993043 () Bool)

(declare-fun e!993063 () Bool)

(assert (=> b!1549103 (= e!993043 e!993063)))

(declare-fun mapIsEmpty!8083 () Bool)

(declare-fun mapRes!8083 () Bool)

(assert (=> mapIsEmpty!8083 mapRes!8083))

(declare-fun b!1549104 () Bool)

(declare-fun matchR!1864 (Regex!4253 List!16756) Bool)

(assert (=> b!1549104 (= e!993064 (matchR!1864 (regex!2925 rule!240) (_1!9293 lt!536605)))))

(declare-fun b!1549105 () Bool)

(declare-fun e!993073 () Bool)

(declare-fun tp!452066 () Bool)

(assert (=> b!1549105 (= e!993073 (and (inv!21947 (c!252187 (totalInput!2426 cacheFurthestNullable!103))) tp!452066))))

(declare-fun b!1549106 () Bool)

(assert (=> b!1549106 (= e!993076 e!993066)))

(declare-fun res!692559 () Bool)

(assert (=> b!1549106 (=> (not res!692559) (not e!993066))))

(declare-fun isSuffix!361 (List!16756 List!16756) Bool)

(assert (=> b!1549106 (= res!692559 (isSuffix!361 lt!536604 (list!6468 totalInput!568)))))

(assert (=> b!1549106 (= lt!536604 (list!6468 input!1676))))

(declare-fun b!1549107 () Bool)

(declare-fun e!993071 () Bool)

(declare-fun e!993059 () Bool)

(declare-fun lt!536588 () MutLongMap!1737)

(assert (=> b!1549107 (= e!993071 (and e!993059 ((_ is LongMap!1737) lt!536588)))))

(assert (=> b!1549107 (= lt!536588 (v!23516 (underlying!3684 (cache!2062 cacheFurthestNullable!103))))))

(declare-fun mapNonEmpty!8082 () Bool)

(declare-fun tp!452087 () Bool)

(declare-fun tp!452068 () Bool)

(assert (=> mapNonEmpty!8082 (= mapRes!8083 (and tp!452087 tp!452068))))

(declare-fun mapValue!8083 () List!16758)

(declare-fun mapKey!8083 () (_ BitVec 32))

(declare-fun mapRest!8082 () (Array (_ BitVec 32) List!16758))

(assert (=> mapNonEmpty!8082 (= (arr!2664 (_values!2015 (v!23513 (underlying!3681 (v!23514 (underlying!3682 (cache!2061 cacheUp!755))))))) (store mapRest!8082 mapKey!8083 mapValue!8083))))

(declare-fun mapIsEmpty!8084 () Bool)

(declare-fun mapRes!8082 () Bool)

(assert (=> mapIsEmpty!8084 mapRes!8082))

(declare-fun e!993045 () Bool)

(assert (=> b!1549108 (= e!993075 (and e!993045 tp!452071))))

(declare-fun b!1549109 () Bool)

(declare-fun e!993077 () Bool)

(declare-fun lt!536593 () MutLongMap!1738)

(assert (=> b!1549109 (= e!993077 (and e!993061 ((_ is LongMap!1738) lt!536593)))))

(assert (=> b!1549109 (= lt!536593 (v!23518 (underlying!3686 (cache!2063 cacheDown!768))))))

(declare-fun b!1549110 () Bool)

(declare-fun res!692557 () Bool)

(assert (=> b!1549110 (=> (not res!692557) (not e!993076))))

(declare-fun valid!1398 (CacheDown!1026) Bool)

(assert (=> b!1549110 (= res!692557 (valid!1398 cacheDown!768))))

(assert (=> b!1549111 (= e!993055 (and e!993077 tp!452076))))

(declare-fun b!1549112 () Bool)

(declare-fun e!993060 () Bool)

(declare-fun lt!536590 () MutLongMap!1736)

(assert (=> b!1549112 (= e!993045 (and e!993060 ((_ is LongMap!1736) lt!536590)))))

(assert (=> b!1549112 (= lt!536590 (v!23514 (underlying!3682 (cache!2061 cacheUp!755))))))

(declare-fun b!1549113 () Bool)

(assert (=> b!1549113 (= e!993059 e!993043)))

(declare-fun mapNonEmpty!8083 () Bool)

(declare-fun tp!452074 () Bool)

(declare-fun tp!452075 () Bool)

(assert (=> mapNonEmpty!8083 (= mapRes!8084 (and tp!452074 tp!452075))))

(declare-fun mapKey!8082 () (_ BitVec 32))

(declare-fun mapRest!8084 () (Array (_ BitVec 32) List!16759))

(declare-fun mapValue!8084 () List!16759)

(assert (=> mapNonEmpty!8083 (= (arr!2666 (_values!2016 (v!23515 (underlying!3683 (v!23516 (underlying!3684 (cache!2062 cacheFurthestNullable!103))))))) (store mapRest!8084 mapKey!8082 mapValue!8084))))

(declare-fun mapNonEmpty!8084 () Bool)

(declare-fun tp!452062 () Bool)

(declare-fun tp!452084 () Bool)

(assert (=> mapNonEmpty!8084 (= mapRes!8082 (and tp!452062 tp!452084))))

(declare-fun mapValue!8082 () List!16760)

(declare-fun mapKey!8084 () (_ BitVec 32))

(declare-fun mapRest!8083 () (Array (_ BitVec 32) List!16760))

(assert (=> mapNonEmpty!8084 (= (arr!2667 (_values!2017 (v!23517 (underlying!3685 (v!23518 (underlying!3686 (cache!2063 cacheDown!768))))))) (store mapRest!8083 mapKey!8084 mapValue!8082))))

(declare-fun lt!536596 () tuple2!16010)

(declare-fun b!1549114 () Bool)

(declare-fun e!993048 () Bool)

(assert (=> b!1549114 (= e!993048 (or (not (= (value!93010 (_1!9291 lt!536596)) lt!536600)) (not (= (rule!4714 (_1!9291 lt!536596)) rule!240)) (not (= (size!13494 (_1!9291 lt!536596)) lt!536595)) (not (= (originalCharacters!3755 (_1!9291 lt!536596)) lt!536598)) (not (= lt!536586 (_1!9291 lt!536596))) lt!536591))))

(declare-fun get!4828 (Option!3011) tuple2!16010)

(assert (=> b!1549114 (= lt!536596 (get!4828 lt!536594))))

(declare-fun b!1549115 () Bool)

(declare-fun res!692560 () Bool)

(assert (=> b!1549115 (=> (not res!692560) (not e!993076))))

(declare-fun ruleValid!670 (LexerInterface!2567 Rule!5650) Bool)

(assert (=> b!1549115 (= res!692560 (ruleValid!670 thiss!16438 rule!240))))

(declare-fun res!692550 () Bool)

(assert (=> b!1549116 (=> res!692550 e!993079)))

(declare-fun Forall!598 (Int) Bool)

(assert (=> b!1549116 (= res!692550 (not (Forall!598 lambda!65589)))))

(declare-fun b!1549117 () Bool)

(declare-fun e!993049 () Bool)

(assert (=> b!1549117 (= e!993069 e!993049)))

(declare-fun b!1549118 () Bool)

(declare-fun e!993074 () Bool)

(declare-fun tp!452064 () Bool)

(assert (=> b!1549118 (= e!993074 (and tp!452064 mapRes!8084))))

(declare-fun condMapEmpty!8084 () Bool)

(declare-fun mapDefault!8082 () List!16759)

(assert (=> b!1549118 (= condMapEmpty!8084 (= (arr!2666 (_values!2016 (v!23515 (underlying!3683 (v!23516 (underlying!3684 (cache!2062 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16759)) mapDefault!8082)))))

(declare-fun b!1549119 () Bool)

(declare-fun e!993078 () Bool)

(declare-fun tp!452082 () Bool)

(assert (=> b!1549119 (= e!993078 (and tp!452082 mapRes!8082))))

(declare-fun condMapEmpty!8082 () Bool)

(declare-fun mapDefault!8083 () List!16760)

(assert (=> b!1549119 (= condMapEmpty!8082 (= (arr!2667 (_values!2017 (v!23517 (underlying!3685 (v!23518 (underlying!3686 (cache!2063 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16760)) mapDefault!8083)))))

(declare-fun b!1549120 () Bool)

(assert (=> b!1549120 (= e!993060 e!993050)))

(declare-fun e!993054 () Bool)

(declare-fun tp!452067 () Bool)

(declare-fun tp!452088 () Bool)

(declare-fun array_inv!1914 (array!5976) Bool)

(declare-fun array_inv!1915 (array!5974) Bool)

(assert (=> b!1549121 (= e!993056 (and tp!452063 tp!452067 tp!452088 (array_inv!1914 (_keys!2030 (v!23513 (underlying!3681 (v!23514 (underlying!3682 (cache!2061 cacheUp!755))))))) (array_inv!1915 (_values!2015 (v!23513 (underlying!3681 (v!23514 (underlying!3682 (cache!2061 cacheUp!755))))))) e!993054))))

(declare-fun b!1549122 () Bool)

(declare-fun res!692554 () Bool)

(assert (=> b!1549122 (=> (not res!692554) (not e!993076))))

(declare-fun valid!1399 (CacheFurthestNullable!446) Bool)

(assert (=> b!1549122 (= res!692554 (valid!1399 cacheFurthestNullable!103))))

(declare-fun b!1549123 () Bool)

(declare-fun tp!452083 () Bool)

(assert (=> b!1549123 (= e!993054 (and tp!452083 mapRes!8083))))

(declare-fun condMapEmpty!8083 () Bool)

(declare-fun mapDefault!8084 () List!16758)

(assert (=> b!1549123 (= condMapEmpty!8083 (= (arr!2664 (_values!2015 (v!23513 (underlying!3681 (v!23514 (underlying!3682 (cache!2061 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16758)) mapDefault!8084)))))

(declare-fun b!1549124 () Bool)

(assert (=> b!1549124 (= e!993057 e!993048)))

(declare-fun res!692563 () Bool)

(assert (=> b!1549124 (=> res!692563 e!993048)))

(assert (=> b!1549124 (= res!692563 (not (= (apply!4098 (transformation!2925 rule!240) lt!536587) lt!536600)))))

(declare-fun lt!536589 () Unit!25983)

(declare-fun lemmaEqSameImage!142 (TokenValueInjection!5690 BalanceConc!11028 BalanceConc!11028) Unit!25983)

(assert (=> b!1549124 (= lt!536589 (lemmaEqSameImage!142 (transformation!2925 rule!240) (_1!9289 (_1!9290 lt!536592)) lt!536587))))

(declare-fun tp!452080 () Bool)

(declare-fun tp!452085 () Bool)

(declare-fun array_inv!1916 (array!5978) Bool)

(assert (=> b!1549125 (= e!993063 (and tp!452070 tp!452085 tp!452080 (array_inv!1914 (_keys!2031 (v!23515 (underlying!3683 (v!23516 (underlying!3684 (cache!2062 cacheFurthestNullable!103))))))) (array_inv!1916 (_values!2016 (v!23515 (underlying!3683 (v!23516 (underlying!3684 (cache!2062 cacheFurthestNullable!103))))))) e!993074))))

(declare-fun b!1549126 () Bool)

(declare-fun e!993065 () Bool)

(assert (=> b!1549126 (= e!993072 (and e!993065 (inv!21948 (totalInput!2426 cacheFurthestNullable!103)) e!993073))))

(declare-fun tp!452078 () Bool)

(declare-fun tp!452073 () Bool)

(declare-fun array_inv!1917 (array!5980) Bool)

(assert (=> b!1549127 (= e!993049 (and tp!452077 tp!452078 tp!452073 (array_inv!1914 (_keys!2032 (v!23517 (underlying!3685 (v!23518 (underlying!3686 (cache!2063 cacheDown!768))))))) (array_inv!1917 (_values!2017 (v!23517 (underlying!3685 (v!23518 (underlying!3686 (cache!2063 cacheDown!768))))))) e!993078))))

(declare-fun tp!452086 () Bool)

(declare-fun b!1549128 () Bool)

(declare-fun inv!21944 (String!19363) Bool)

(declare-fun inv!21952 (TokenValueInjection!5690) Bool)

(assert (=> b!1549128 (= e!993053 (and tp!452086 (inv!21944 (tag!3189 rule!240)) (inv!21952 (transformation!2925 rule!240)) e!993051))))

(assert (=> b!1549129 (= e!993065 (and e!993071 tp!452081))))

(assert (= (and start!143614 res!692558) b!1549115))

(assert (= (and b!1549115 res!692560) b!1549096))

(assert (= (and b!1549096 res!692555) b!1549110))

(assert (= (and b!1549110 res!692557) b!1549122))

(assert (= (and b!1549122 res!692554) b!1549106))

(assert (= (and b!1549106 res!692559) b!1549094))

(assert (= (and b!1549094 res!692551) b!1549099))

(assert (= (and b!1549099 res!692562) b!1549102))

(assert (= (and b!1549102 (not res!692561)) b!1549104))

(assert (= (and b!1549102 (not res!692552)) b!1549116))

(assert (= (and b!1549116 (not res!692550)) b!1549100))

(assert (= (and b!1549100 (not res!692553)) b!1549095))

(assert (= (and b!1549095 (not res!692556)) b!1549124))

(assert (= (and b!1549124 (not res!692563)) b!1549114))

(assert (= start!143614 b!1549097))

(assert (= (and b!1549123 condMapEmpty!8083) mapIsEmpty!8083))

(assert (= (and b!1549123 (not condMapEmpty!8083)) mapNonEmpty!8082))

(assert (= b!1549121 b!1549123))

(assert (= b!1549091 b!1549121))

(assert (= b!1549120 b!1549091))

(assert (= (and b!1549112 ((_ is LongMap!1736) (v!23514 (underlying!3682 (cache!2061 cacheUp!755))))) b!1549120))

(assert (= b!1549108 b!1549112))

(assert (= (and b!1549098 ((_ is HashMap!1680) (cache!2061 cacheUp!755))) b!1549108))

(assert (= start!143614 b!1549098))

(assert (= (and b!1549118 condMapEmpty!8084) mapIsEmpty!8082))

(assert (= (and b!1549118 (not condMapEmpty!8084)) mapNonEmpty!8083))

(assert (= b!1549125 b!1549118))

(assert (= b!1549103 b!1549125))

(assert (= b!1549113 b!1549103))

(assert (= (and b!1549107 ((_ is LongMap!1737) (v!23516 (underlying!3684 (cache!2062 cacheFurthestNullable!103))))) b!1549113))

(assert (= b!1549129 b!1549107))

(assert (= (and b!1549126 ((_ is HashMap!1681) (cache!2062 cacheFurthestNullable!103))) b!1549129))

(assert (= b!1549126 b!1549105))

(assert (= start!143614 b!1549126))

(assert (= start!143614 b!1549090))

(assert (= b!1549128 b!1549093))

(assert (= start!143614 b!1549128))

(assert (= (and b!1549119 condMapEmpty!8082) mapIsEmpty!8084))

(assert (= (and b!1549119 (not condMapEmpty!8082)) mapNonEmpty!8084))

(assert (= b!1549127 b!1549119))

(assert (= b!1549117 b!1549127))

(assert (= b!1549092 b!1549117))

(assert (= (and b!1549109 ((_ is LongMap!1738) (v!23518 (underlying!3686 (cache!2063 cacheDown!768))))) b!1549092))

(assert (= b!1549111 b!1549109))

(assert (= (and b!1549101 ((_ is HashMap!1682) (cache!2063 cacheDown!768))) b!1549111))

(assert (= start!143614 b!1549101))

(declare-fun m!1822123 () Bool)

(assert (=> mapNonEmpty!8084 m!1822123))

(declare-fun m!1822125 () Bool)

(assert (=> b!1549115 m!1822125))

(declare-fun m!1822127 () Bool)

(assert (=> b!1549122 m!1822127))

(declare-fun m!1822129 () Bool)

(assert (=> b!1549110 m!1822129))

(declare-fun m!1822131 () Bool)

(assert (=> mapNonEmpty!8083 m!1822131))

(declare-fun m!1822133 () Bool)

(assert (=> b!1549121 m!1822133))

(declare-fun m!1822135 () Bool)

(assert (=> b!1549121 m!1822135))

(declare-fun m!1822137 () Bool)

(assert (=> b!1549128 m!1822137))

(declare-fun m!1822139 () Bool)

(assert (=> b!1549128 m!1822139))

(declare-fun m!1822141 () Bool)

(assert (=> b!1549127 m!1822141))

(declare-fun m!1822143 () Bool)

(assert (=> b!1549127 m!1822143))

(declare-fun m!1822145 () Bool)

(assert (=> b!1549105 m!1822145))

(declare-fun m!1822147 () Bool)

(assert (=> b!1549100 m!1822147))

(declare-fun m!1822149 () Bool)

(assert (=> b!1549100 m!1822149))

(declare-fun m!1822151 () Bool)

(assert (=> b!1549100 m!1822151))

(declare-fun m!1822153 () Bool)

(assert (=> b!1549100 m!1822153))

(declare-fun m!1822155 () Bool)

(assert (=> b!1549100 m!1822155))

(declare-fun m!1822157 () Bool)

(assert (=> b!1549100 m!1822157))

(declare-fun m!1822159 () Bool)

(assert (=> b!1549100 m!1822159))

(declare-fun m!1822161 () Bool)

(assert (=> b!1549100 m!1822161))

(declare-fun m!1822163 () Bool)

(assert (=> b!1549100 m!1822163))

(declare-fun m!1822165 () Bool)

(assert (=> b!1549125 m!1822165))

(declare-fun m!1822167 () Bool)

(assert (=> b!1549125 m!1822167))

(declare-fun m!1822169 () Bool)

(assert (=> mapNonEmpty!8082 m!1822169))

(declare-fun m!1822171 () Bool)

(assert (=> b!1549126 m!1822171))

(declare-fun m!1822173 () Bool)

(assert (=> b!1549124 m!1822173))

(declare-fun m!1822175 () Bool)

(assert (=> b!1549124 m!1822175))

(declare-fun m!1822177 () Bool)

(assert (=> b!1549090 m!1822177))

(declare-fun m!1822179 () Bool)

(assert (=> start!143614 m!1822179))

(declare-fun m!1822181 () Bool)

(assert (=> start!143614 m!1822181))

(declare-fun m!1822183 () Bool)

(assert (=> start!143614 m!1822183))

(declare-fun m!1822185 () Bool)

(assert (=> start!143614 m!1822185))

(declare-fun m!1822187 () Bool)

(assert (=> start!143614 m!1822187))

(declare-fun m!1822189 () Bool)

(assert (=> b!1549095 m!1822189))

(declare-fun m!1822191 () Bool)

(assert (=> b!1549106 m!1822191))

(assert (=> b!1549106 m!1822191))

(declare-fun m!1822193 () Bool)

(assert (=> b!1549106 m!1822193))

(declare-fun m!1822195 () Bool)

(assert (=> b!1549106 m!1822195))

(declare-fun m!1822197 () Bool)

(assert (=> b!1549104 m!1822197))

(declare-fun m!1822199 () Bool)

(assert (=> b!1549099 m!1822199))

(declare-fun m!1822201 () Bool)

(assert (=> b!1549099 m!1822201))

(declare-fun m!1822203 () Bool)

(assert (=> b!1549096 m!1822203))

(declare-fun m!1822205 () Bool)

(assert (=> b!1549114 m!1822205))

(declare-fun m!1822207 () Bool)

(assert (=> b!1549116 m!1822207))

(declare-fun m!1822209 () Bool)

(assert (=> b!1549102 m!1822209))

(declare-fun m!1822211 () Bool)

(assert (=> b!1549102 m!1822211))

(declare-fun m!1822213 () Bool)

(assert (=> b!1549102 m!1822213))

(declare-fun m!1822215 () Bool)

(assert (=> b!1549102 m!1822215))

(declare-fun m!1822217 () Bool)

(assert (=> b!1549102 m!1822217))

(declare-fun m!1822219 () Bool)

(assert (=> b!1549102 m!1822219))

(declare-fun m!1822221 () Bool)

(assert (=> b!1549102 m!1822221))

(assert (=> b!1549102 m!1822217))

(assert (=> b!1549102 m!1822219))

(declare-fun m!1822223 () Bool)

(assert (=> b!1549097 m!1822223))

(check-sat (not b!1549126) (not b!1549105) (not b!1549118) (not b_next!41681) (not b!1549106) (not b!1549121) (not b!1549128) (not b!1549104) (not mapNonEmpty!8084) (not b_next!41673) (not b!1549114) b_and!108061 (not b!1549123) b_and!108065 (not b!1549110) (not b_next!41675) (not mapNonEmpty!8083) (not b_next!41679) (not b!1549095) (not start!143614) b_and!108053 b_and!108067 (not b!1549090) b_and!108057 (not b!1549099) b_and!108063 (not b!1549125) (not b!1549100) (not b!1549124) (not b!1549097) (not b!1549127) b_and!108055 (not mapNonEmpty!8082) (not b!1549115) (not b_next!41671) (not b!1549096) (not b_next!41677) (not b_next!41669) (not b_next!41667) (not b!1549119) (not b!1549116) (not b!1549102) b_and!108059 (not b!1549122))
(check-sat b_and!108061 b_and!108065 b_and!108067 (not b_next!41681) b_and!108055 (not b_next!41673) b_and!108059 (not b_next!41679) (not b_next!41675) b_and!108053 b_and!108057 b_and!108063 (not b_next!41671) (not b_next!41677) (not b_next!41669) (not b_next!41667))
