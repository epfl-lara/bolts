; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143602 () Bool)

(assert start!143602)

(declare-fun b!1548351 () Bool)

(declare-fun b_free!40867 () Bool)

(declare-fun b_next!41571 () Bool)

(assert (=> b!1548351 (= b_free!40867 (not b_next!41571))))

(declare-fun tp!451591 () Bool)

(declare-fun b_and!107957 () Bool)

(assert (=> b!1548351 (= tp!451591 b_and!107957)))

(declare-fun b!1548323 () Bool)

(declare-fun b_free!40869 () Bool)

(declare-fun b_next!41573 () Bool)

(assert (=> b!1548323 (= b_free!40869 (not b_next!41573))))

(declare-fun tp!451581 () Bool)

(declare-fun b_and!107959 () Bool)

(assert (=> b!1548323 (= tp!451581 b_and!107959)))

(declare-fun b_free!40871 () Bool)

(declare-fun b_next!41575 () Bool)

(assert (=> b!1548323 (= b_free!40871 (not b_next!41575))))

(declare-fun tp!451599 () Bool)

(declare-fun b_and!107961 () Bool)

(assert (=> b!1548323 (= tp!451599 b_and!107961)))

(declare-fun b!1548359 () Bool)

(declare-fun b_free!40873 () Bool)

(declare-fun b_next!41577 () Bool)

(assert (=> b!1548359 (= b_free!40873 (not b_next!41577))))

(declare-fun tp!451588 () Bool)

(declare-fun b_and!107963 () Bool)

(assert (=> b!1548359 (= tp!451588 b_and!107963)))

(declare-fun b!1548328 () Bool)

(declare-fun b_free!40875 () Bool)

(declare-fun b_next!41579 () Bool)

(assert (=> b!1548328 (= b_free!40875 (not b_next!41579))))

(declare-fun tp!451590 () Bool)

(declare-fun b_and!107965 () Bool)

(assert (=> b!1548328 (= tp!451590 b_and!107965)))

(declare-fun b!1548325 () Bool)

(declare-fun b_free!40877 () Bool)

(declare-fun b_next!41581 () Bool)

(assert (=> b!1548325 (= b_free!40877 (not b_next!41581))))

(declare-fun tp!451601 () Bool)

(declare-fun b_and!107967 () Bool)

(assert (=> b!1548325 (= tp!451601 b_and!107967)))

(declare-fun b!1548341 () Bool)

(declare-fun b_free!40879 () Bool)

(declare-fun b_next!41583 () Bool)

(assert (=> b!1548341 (= b_free!40879 (not b_next!41583))))

(declare-fun tp!451577 () Bool)

(declare-fun b_and!107969 () Bool)

(assert (=> b!1548341 (= tp!451577 b_and!107969)))

(declare-fun b!1548327 () Bool)

(declare-fun b_free!40881 () Bool)

(declare-fun b_next!41585 () Bool)

(assert (=> b!1548327 (= b_free!40881 (not b_next!41585))))

(declare-fun tp!451580 () Bool)

(declare-fun b_and!107971 () Bool)

(assert (=> b!1548327 (= tp!451580 b_and!107971)))

(declare-fun b!1548369 () Bool)

(declare-fun e!992383 () Bool)

(assert (=> b!1548369 (= e!992383 true)))

(declare-fun b!1548368 () Bool)

(declare-fun e!992382 () Bool)

(assert (=> b!1548368 (= e!992382 e!992383)))

(declare-fun b!1548357 () Bool)

(assert (=> b!1548357 e!992382))

(assert (= b!1548368 b!1548369))

(assert (= b!1548357 b!1548368))

(declare-fun order!9729 () Int)

(declare-datatypes ((List!16723 0))(
  ( (Nil!16655) (Cons!16655 (h!22056 (_ BitVec 16)) (t!141126 List!16723)) )
))
(declare-datatypes ((TokenValue!3009 0))(
  ( (FloatLiteralValue!6018 (text!21508 List!16723)) (TokenValueExt!3008 (__x!10909 Int)) (Broken!15045 (value!92815 List!16723)) (Object!3076) (End!3009) (Def!3009) (Underscore!3009) (Match!3009) (Else!3009) (Error!3009) (Case!3009) (If!3009) (Extends!3009) (Abstract!3009) (Class!3009) (Val!3009) (DelimiterValue!6018 (del!3069 List!16723)) (KeywordValue!3015 (value!92816 List!16723)) (CommentValue!6018 (value!92817 List!16723)) (WhitespaceValue!6018 (value!92818 List!16723)) (IndentationValue!3009 (value!92819 List!16723)) (String!19332) (Int32!3009) (Broken!15046 (value!92820 List!16723)) (Boolean!3010) (Unit!25968) (OperatorValue!3012 (op!3069 List!16723)) (IdentifierValue!6018 (value!92821 List!16723)) (IdentifierValue!6019 (value!92822 List!16723)) (WhitespaceValue!6019 (value!92823 List!16723)) (True!6018) (False!6018) (Broken!15047 (value!92824 List!16723)) (Broken!15048 (value!92825 List!16723)) (True!6019) (RightBrace!3009) (RightBracket!3009) (Colon!3009) (Null!3009) (Comma!3009) (LeftBracket!3009) (False!6019) (LeftBrace!3009) (ImaginaryLiteralValue!3009 (text!21509 List!16723)) (StringLiteralValue!9027 (value!92826 List!16723)) (EOFValue!3009 (value!92827 List!16723)) (IdentValue!3009 (value!92828 List!16723)) (DelimiterValue!6019 (value!92829 List!16723)) (DedentValue!3009 (value!92830 List!16723)) (NewLineValue!3009 (value!92831 List!16723)) (IntegerValue!9027 (value!92832 (_ BitVec 32)) (text!21510 List!16723)) (IntegerValue!9028 (value!92833 Int) (text!21511 List!16723)) (Times!3009) (Or!3009) (Equal!3009) (Minus!3009) (Broken!15049 (value!92834 List!16723)) (And!3009) (Div!3009) (LessEqual!3009) (Mod!3009) (Concat!7256) (Not!3009) (Plus!3009) (SpaceValue!3009 (value!92835 List!16723)) (IntegerValue!9029 (value!92836 Int) (text!21512 List!16723)) (StringLiteralValue!9028 (text!21513 List!16723)) (FloatLiteralValue!6019 (text!21514 List!16723)) (BytesLiteralValue!3009 (value!92837 List!16723)) (CommentValue!6019 (value!92838 List!16723)) (StringLiteralValue!9029 (value!92839 List!16723)) (ErrorTokenValue!3009 (msg!3070 List!16723)) )
))
(declare-datatypes ((C!8672 0))(
  ( (C!8673 (val!4908 Int)) )
))
(declare-datatypes ((List!16724 0))(
  ( (Nil!16656) (Cons!16656 (h!22057 C!8672) (t!141127 List!16724)) )
))
(declare-datatypes ((IArray!11079 0))(
  ( (IArray!11080 (innerList!5597 List!16724)) )
))
(declare-datatypes ((Conc!5537 0))(
  ( (Node!5537 (left!13573 Conc!5537) (right!13903 Conc!5537) (csize!11304 Int) (cheight!5748 Int)) (Leaf!8206 (xs!8337 IArray!11079) (csize!11305 Int)) (Empty!5537) )
))
(declare-datatypes ((BalanceConc!11016 0))(
  ( (BalanceConc!11017 (c!252169 Conc!5537)) )
))
(declare-datatypes ((Regex!4247 0))(
  ( (ElementMatch!4247 (c!252170 C!8672)) (Concat!7257 (regOne!9006 Regex!4247) (regTwo!9006 Regex!4247)) (EmptyExpr!4247) (Star!4247 (reg!4576 Regex!4247)) (EmptyLang!4247) (Union!4247 (regOne!9007 Regex!4247) (regTwo!9007 Regex!4247)) )
))
(declare-datatypes ((String!19333 0))(
  ( (String!19334 (value!92840 String)) )
))
(declare-datatypes ((TokenValueInjection!5678 0))(
  ( (TokenValueInjection!5679 (toValue!4282 Int) (toChars!4141 Int)) )
))
(declare-datatypes ((Rule!5638 0))(
  ( (Rule!5639 (regex!2919 Regex!4247) (tag!3183 String!19333) (isSeparator!2919 Bool) (transformation!2919 TokenValueInjection!5678)) )
))
(declare-fun rule!240 () Rule!5638)

(declare-fun lambda!65547 () Int)

(declare-fun order!9727 () Int)

(declare-fun dynLambda!7358 (Int Int) Int)

(declare-fun dynLambda!7359 (Int Int) Int)

(assert (=> b!1548369 (< (dynLambda!7358 order!9727 (toValue!4282 (transformation!2919 rule!240))) (dynLambda!7359 order!9729 lambda!65547))))

(declare-fun order!9731 () Int)

(declare-fun dynLambda!7360 (Int Int) Int)

(assert (=> b!1548369 (< (dynLambda!7360 order!9731 (toChars!4141 (transformation!2919 rule!240))) (dynLambda!7359 order!9729 lambda!65547))))

(declare-fun b!1548322 () Bool)

(declare-fun e!992364 () Bool)

(declare-fun e!992344 () Bool)

(assert (=> b!1548322 (= e!992364 e!992344)))

(declare-fun e!992377 () Bool)

(assert (=> b!1548323 (= e!992377 (and tp!451581 tp!451599))))

(declare-fun b!1548324 () Bool)

(declare-fun e!992354 () Bool)

(declare-fun e!992352 () Bool)

(assert (=> b!1548324 (= e!992354 e!992352)))

(declare-fun e!992375 () Bool)

(declare-fun e!992341 () Bool)

(assert (=> b!1548325 (= e!992375 (and e!992341 tp!451601))))

(declare-fun b!1548326 () Bool)

(declare-fun res!692298 () Bool)

(declare-fun e!992349 () Bool)

(assert (=> b!1548326 (=> (not res!692298) (not e!992349))))

(declare-datatypes ((List!16725 0))(
  ( (Nil!16657) (Cons!16657 (h!22058 Regex!4247) (t!141128 List!16725)) )
))
(declare-datatypes ((Context!1530 0))(
  ( (Context!1531 (exprs!1265 List!16725)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1688 0))(
  ( (tuple3!1689 (_1!9235 (InoxSet Context!1530)) (_2!9235 Int) (_3!1269 Int)) )
))
(declare-datatypes ((tuple2!15932 0))(
  ( (tuple2!15933 (_1!9236 tuple3!1688) (_2!9236 Int)) )
))
(declare-datatypes ((List!16726 0))(
  ( (Nil!16658) (Cons!16658 (h!22059 tuple2!15932) (t!141129 List!16726)) )
))
(declare-datatypes ((array!5934 0))(
  ( (array!5935 (arr!2644 (Array (_ BitVec 32) List!16726)) (size!13459 (_ BitVec 32))) )
))
(declare-datatypes ((array!5936 0))(
  ( (array!5937 (arr!2645 (Array (_ BitVec 32) (_ BitVec 64))) (size!13460 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3444 0))(
  ( (LongMapFixedSize!3445 (defaultEntry!2082 Int) (mask!4934 (_ BitVec 32)) (extraKeys!1969 (_ BitVec 32)) (zeroValue!1979 List!16726) (minValue!1979 List!16726) (_size!3525 (_ BitVec 32)) (_keys!2016 array!5936) (_values!2001 array!5934) (_vacant!1783 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6773 0))(
  ( (Cell!6774 (v!23477 LongMapFixedSize!3444)) )
))
(declare-datatypes ((Hashable!1666 0))(
  ( (HashableExt!1665 (__x!10910 Int)) )
))
(declare-datatypes ((MutLongMap!1722 0))(
  ( (LongMap!1722 (underlying!3653 Cell!6773)) (MutLongMapExt!1721 (__x!10911 Int)) )
))
(declare-datatypes ((Cell!6775 0))(
  ( (Cell!6776 (v!23478 MutLongMap!1722)) )
))
(declare-datatypes ((MutableMap!1666 0))(
  ( (MutableMapExt!1665 (__x!10912 Int)) (HashMap!1666 (underlying!3654 Cell!6775) (hashF!3585 Hashable!1666) (_size!3526 (_ BitVec 32)) (defaultValue!1826 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!436 0))(
  ( (CacheFurthestNullable!437 (cache!2047 MutableMap!1666) (totalInput!2421 BalanceConc!11016)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!436)

(declare-fun totalInput!568 () BalanceConc!11016)

(assert (=> b!1548326 (= res!692298 (= (totalInput!2421 cacheFurthestNullable!103) totalInput!568))))

(declare-fun e!992350 () Bool)

(declare-fun e!992347 () Bool)

(assert (=> b!1548328 (= e!992350 (and e!992347 tp!451590))))

(declare-fun b!1548329 () Bool)

(declare-fun res!692309 () Bool)

(declare-fun e!992358 () Bool)

(assert (=> b!1548329 (=> (not res!692309) (not e!992358))))

(declare-datatypes ((LexerInterface!2563 0))(
  ( (LexerInterfaceExt!2560 (__x!10913 Int)) (Lexer!2561) )
))
(declare-fun thiss!16438 () LexerInterface!2563)

(declare-fun ruleValid!667 (LexerInterface!2563 Rule!5638) Bool)

(assert (=> b!1548329 (= res!692309 (ruleValid!667 thiss!16438 rule!240))))

(declare-fun b!1548330 () Bool)

(declare-fun e!992355 () Bool)

(declare-fun input!1676 () BalanceConc!11016)

(declare-fun tp!451585 () Bool)

(declare-fun inv!21916 (Conc!5537) Bool)

(assert (=> b!1548330 (= e!992355 (and (inv!21916 (c!252169 input!1676)) tp!451585))))

(declare-fun lt!536242 () TokenValue!3009)

(declare-fun e!992362 () Bool)

(declare-fun b!1548331 () Bool)

(declare-fun lt!536241 () Bool)

(declare-datatypes ((Token!5440 0))(
  ( (Token!5441 (value!92841 TokenValue!3009) (rule!4710 Rule!5638) (size!13461 Int) (originalCharacters!3751 List!16724)) )
))
(declare-datatypes ((tuple2!15934 0))(
  ( (tuple2!15935 (_1!9237 Token!5440) (_2!9237 List!16724)) )
))
(declare-fun lt!536239 () tuple2!15934)

(assert (=> b!1548331 (= e!992362 (or (not (= (value!92841 (_1!9237 lt!536239)) lt!536242)) (not (= (rule!4710 (_1!9237 lt!536239)) rule!240)) lt!536241))))

(declare-datatypes ((Option!3003 0))(
  ( (None!3002) (Some!3002 (v!23479 tuple2!15934)) )
))
(declare-fun lt!536244 () Option!3003)

(declare-fun get!4822 (Option!3003) tuple2!15934)

(assert (=> b!1548331 (= lt!536239 (get!4822 lt!536244))))

(declare-fun b!1548332 () Bool)

(declare-fun e!992363 () Bool)

(declare-fun tp!451579 () Bool)

(assert (=> b!1548332 (= e!992363 (and (inv!21916 (c!252169 totalInput!568)) tp!451579))))

(declare-fun b!1548333 () Bool)

(declare-fun res!692304 () Bool)

(assert (=> b!1548333 (=> (not res!692304) (not e!992358))))

(declare-datatypes ((tuple3!1690 0))(
  ( (tuple3!1691 (_1!9238 Regex!4247) (_2!9238 Context!1530) (_3!1270 C!8672)) )
))
(declare-datatypes ((tuple2!15936 0))(
  ( (tuple2!15937 (_1!9239 tuple3!1690) (_2!9239 (InoxSet Context!1530))) )
))
(declare-datatypes ((List!16727 0))(
  ( (Nil!16659) (Cons!16659 (h!22060 tuple2!15936) (t!141130 List!16727)) )
))
(declare-datatypes ((array!5938 0))(
  ( (array!5939 (arr!2646 (Array (_ BitVec 32) List!16727)) (size!13462 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3446 0))(
  ( (LongMapFixedSize!3447 (defaultEntry!2083 Int) (mask!4935 (_ BitVec 32)) (extraKeys!1970 (_ BitVec 32)) (zeroValue!1980 List!16727) (minValue!1980 List!16727) (_size!3527 (_ BitVec 32)) (_keys!2017 array!5936) (_values!2002 array!5938) (_vacant!1784 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6777 0))(
  ( (Cell!6778 (v!23480 LongMapFixedSize!3446)) )
))
(declare-datatypes ((MutLongMap!1723 0))(
  ( (LongMap!1723 (underlying!3655 Cell!6777)) (MutLongMapExt!1722 (__x!10914 Int)) )
))
(declare-datatypes ((Cell!6779 0))(
  ( (Cell!6780 (v!23481 MutLongMap!1723)) )
))
(declare-datatypes ((Hashable!1667 0))(
  ( (HashableExt!1666 (__x!10915 Int)) )
))
(declare-datatypes ((MutableMap!1667 0))(
  ( (MutableMapExt!1666 (__x!10916 Int)) (HashMap!1667 (underlying!3656 Cell!6779) (hashF!3586 Hashable!1667) (_size!3528 (_ BitVec 32)) (defaultValue!1827 Int)) )
))
(declare-datatypes ((CacheDown!1016 0))(
  ( (CacheDown!1017 (cache!2048 MutableMap!1667)) )
))
(declare-fun cacheDown!768 () CacheDown!1016)

(declare-fun valid!1387 (CacheDown!1016) Bool)

(assert (=> b!1548333 (= res!692304 (valid!1387 cacheDown!768))))

(declare-fun b!1548334 () Bool)

(declare-fun e!992368 () Bool)

(declare-fun e!992366 () Bool)

(assert (=> b!1548334 (= e!992368 e!992366)))

(declare-fun b!1548335 () Bool)

(declare-fun e!992353 () Bool)

(assert (=> b!1548335 (= e!992349 e!992353)))

(declare-fun res!692299 () Bool)

(assert (=> b!1548335 (=> (not res!692299) (not e!992353))))

(declare-datatypes ((tuple2!15938 0))(
  ( (tuple2!15939 (_1!9240 Context!1530) (_2!9240 C!8672)) )
))
(declare-datatypes ((tuple2!15940 0))(
  ( (tuple2!15941 (_1!9241 tuple2!15938) (_2!9241 (InoxSet Context!1530))) )
))
(declare-datatypes ((List!16728 0))(
  ( (Nil!16660) (Cons!16660 (h!22061 tuple2!15940) (t!141131 List!16728)) )
))
(declare-datatypes ((array!5940 0))(
  ( (array!5941 (arr!2647 (Array (_ BitVec 32) List!16728)) (size!13463 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3448 0))(
  ( (LongMapFixedSize!3449 (defaultEntry!2084 Int) (mask!4936 (_ BitVec 32)) (extraKeys!1971 (_ BitVec 32)) (zeroValue!1981 List!16728) (minValue!1981 List!16728) (_size!3529 (_ BitVec 32)) (_keys!2018 array!5936) (_values!2003 array!5940) (_vacant!1785 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6781 0))(
  ( (Cell!6782 (v!23482 LongMapFixedSize!3448)) )
))
(declare-datatypes ((MutLongMap!1724 0))(
  ( (LongMap!1724 (underlying!3657 Cell!6781)) (MutLongMapExt!1723 (__x!10917 Int)) )
))
(declare-datatypes ((Cell!6783 0))(
  ( (Cell!6784 (v!23483 MutLongMap!1724)) )
))
(declare-datatypes ((Hashable!1668 0))(
  ( (HashableExt!1667 (__x!10918 Int)) )
))
(declare-datatypes ((MutableMap!1668 0))(
  ( (MutableMapExt!1667 (__x!10919 Int)) (HashMap!1668 (underlying!3658 Cell!6783) (hashF!3587 Hashable!1668) (_size!3530 (_ BitVec 32)) (defaultValue!1828 Int)) )
))
(declare-datatypes ((CacheUp!1008 0))(
  ( (CacheUp!1009 (cache!2049 MutableMap!1668)) )
))
(declare-datatypes ((tuple2!15942 0))(
  ( (tuple2!15943 (_1!9242 BalanceConc!11016) (_2!9242 BalanceConc!11016)) )
))
(declare-datatypes ((tuple4!850 0))(
  ( (tuple4!851 (_1!9243 tuple2!15942) (_2!9243 CacheUp!1008) (_3!1271 CacheDown!1016) (_4!425 CacheFurthestNullable!436)) )
))
(declare-fun lt!536246 () tuple4!850)

(declare-fun isEmpty!10066 (BalanceConc!11016) Bool)

(assert (=> b!1548335 (= res!692299 (not (isEmpty!10066 (_1!9242 (_1!9243 lt!536246)))))))

(declare-fun cacheUp!755 () CacheUp!1008)

(declare-fun findLongestMatchWithZipperSequenceV3Mem!31 (Regex!4247 BalanceConc!11016 BalanceConc!11016 CacheUp!1008 CacheDown!1016 CacheFurthestNullable!436) tuple4!850)

(assert (=> b!1548335 (= lt!536246 (findLongestMatchWithZipperSequenceV3Mem!31 (regex!2919 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun b!1548336 () Bool)

(declare-fun e!992345 () Bool)

(declare-fun tp!451594 () Bool)

(declare-fun mapRes!8030 () Bool)

(assert (=> b!1548336 (= e!992345 (and tp!451594 mapRes!8030))))

(declare-fun condMapEmpty!8028 () Bool)

(declare-fun mapDefault!8029 () List!16728)

(assert (=> b!1548336 (= condMapEmpty!8028 (= (arr!2647 (_values!2003 (v!23482 (underlying!3657 (v!23483 (underlying!3658 (cache!2049 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16728)) mapDefault!8029)))))

(declare-fun b!1548337 () Bool)

(declare-fun e!992373 () Bool)

(declare-fun e!992342 () Bool)

(assert (=> b!1548337 (= e!992373 e!992342)))

(declare-fun res!692305 () Bool)

(assert (=> b!1548337 (=> res!692305 e!992342)))

(declare-fun lt!536252 () Bool)

(assert (=> b!1548337 (= res!692305 (or (not (= lt!536252 lt!536241)) (not lt!536252)))))

(declare-fun isDefined!2409 (Option!3003) Bool)

(assert (=> b!1548337 (= lt!536241 (isDefined!2409 lt!536244))))

(declare-fun lt!536249 () Int)

(declare-fun lt!536256 () List!16724)

(declare-datatypes ((tuple2!15944 0))(
  ( (tuple2!15945 (_1!9244 Token!5440) (_2!9244 BalanceConc!11016)) )
))
(declare-datatypes ((Option!3004 0))(
  ( (None!3003) (Some!3003 (v!23484 tuple2!15944)) )
))
(declare-fun isDefined!2410 (Option!3004) Bool)

(assert (=> b!1548337 (= lt!536252 (isDefined!2410 (Some!3003 (tuple2!15945 (Token!5441 lt!536242 rule!240 lt!536249 lt!536256) (_2!9242 (_1!9243 lt!536246))))))))

(declare-fun lt!536253 () List!16724)

(declare-fun maxPrefixOneRule!687 (LexerInterface!2563 Rule!5638 List!16724) Option!3003)

(assert (=> b!1548337 (= lt!536244 (maxPrefixOneRule!687 thiss!16438 rule!240 lt!536253))))

(declare-fun size!13464 (BalanceConc!11016) Int)

(assert (=> b!1548337 (= lt!536249 (size!13464 (_1!9242 (_1!9243 lt!536246))))))

(declare-fun apply!4094 (TokenValueInjection!5678 BalanceConc!11016) TokenValue!3009)

(assert (=> b!1548337 (= lt!536242 (apply!4094 (transformation!2919 rule!240) (_1!9242 (_1!9243 lt!536246))))))

(declare-datatypes ((Unit!25969 0))(
  ( (Unit!25970) )
))
(declare-fun lt!536245 () Unit!25969)

(declare-fun lt!536255 () BalanceConc!11016)

(declare-fun ForallOf!195 (Int BalanceConc!11016) Unit!25969)

(assert (=> b!1548337 (= lt!536245 (ForallOf!195 lambda!65547 lt!536255))))

(declare-fun seqFromList!1758 (List!16724) BalanceConc!11016)

(assert (=> b!1548337 (= lt!536255 (seqFromList!1758 lt!536256))))

(declare-fun list!6464 (BalanceConc!11016) List!16724)

(assert (=> b!1548337 (= lt!536256 (list!6464 (_1!9242 (_1!9243 lt!536246))))))

(declare-fun lt!536251 () Unit!25969)

(assert (=> b!1548337 (= lt!536251 (ForallOf!195 lambda!65547 (_1!9242 (_1!9243 lt!536246))))))

(declare-fun mapIsEmpty!8028 () Bool)

(declare-fun mapRes!8029 () Bool)

(assert (=> mapIsEmpty!8028 mapRes!8029))

(declare-fun b!1548338 () Bool)

(declare-fun e!992365 () Bool)

(declare-fun lt!536243 () MutLongMap!1724)

(get-info :version)

(assert (=> b!1548338 (= e!992365 (and e!992368 ((_ is LongMap!1724) lt!536243)))))

(assert (=> b!1548338 (= lt!536243 (v!23483 (underlying!3658 (cache!2049 cacheUp!755))))))

(declare-fun b!1548339 () Bool)

(declare-fun res!692302 () Bool)

(assert (=> b!1548339 (=> (not res!692302) (not e!992358))))

(declare-fun valid!1388 (CacheUp!1008) Bool)

(assert (=> b!1548339 (= res!692302 (valid!1388 cacheUp!755))))

(declare-fun b!1548340 () Bool)

(declare-fun e!992372 () Bool)

(declare-fun tp!451593 () Bool)

(declare-fun mapRes!8028 () Bool)

(assert (=> b!1548340 (= e!992372 (and tp!451593 mapRes!8028))))

(declare-fun condMapEmpty!8030 () Bool)

(declare-fun mapDefault!8028 () List!16726)

(assert (=> b!1548340 (= condMapEmpty!8030 (= (arr!2644 (_values!2001 (v!23477 (underlying!3653 (v!23478 (underlying!3654 (cache!2047 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16726)) mapDefault!8028)))))

(declare-fun e!992360 () Bool)

(declare-fun e!992361 () Bool)

(declare-fun tp!451598 () Bool)

(declare-fun tp!451583 () Bool)

(declare-fun array_inv!1900 (array!5936) Bool)

(declare-fun array_inv!1901 (array!5938) Bool)

(assert (=> b!1548341 (= e!992360 (and tp!451577 tp!451598 tp!451583 (array_inv!1900 (_keys!2017 (v!23480 (underlying!3655 (v!23481 (underlying!3656 (cache!2048 cacheDown!768))))))) (array_inv!1901 (_values!2002 (v!23480 (underlying!3655 (v!23481 (underlying!3656 (cache!2048 cacheDown!768))))))) e!992361))))

(declare-fun b!1548342 () Bool)

(declare-fun res!692308 () Bool)

(assert (=> b!1548342 (=> (not res!692308) (not e!992358))))

(declare-fun valid!1389 (CacheFurthestNullable!436) Bool)

(assert (=> b!1548342 (= res!692308 (valid!1389 cacheFurthestNullable!103))))

(declare-fun b!1548343 () Bool)

(assert (=> b!1548343 (= e!992353 (not e!992373))))

(declare-fun res!692301 () Bool)

(assert (=> b!1548343 (=> res!692301 e!992373)))

(declare-fun semiInverseModEq!1099 (Int Int) Bool)

(assert (=> b!1548343 (= res!692301 (not (semiInverseModEq!1099 (toChars!4141 (transformation!2919 rule!240)) (toValue!4282 (transformation!2919 rule!240)))))))

(declare-fun lt!536240 () Unit!25969)

(declare-fun lemmaInv!409 (TokenValueInjection!5678) Unit!25969)

(assert (=> b!1548343 (= lt!536240 (lemmaInv!409 (transformation!2919 rule!240)))))

(declare-fun e!992367 () Bool)

(assert (=> b!1548343 e!992367))

(declare-fun res!692300 () Bool)

(assert (=> b!1548343 (=> res!692300 e!992367)))

(declare-datatypes ((tuple2!15946 0))(
  ( (tuple2!15947 (_1!9245 List!16724) (_2!9245 List!16724)) )
))
(declare-fun lt!536257 () tuple2!15946)

(declare-fun isEmpty!10067 (List!16724) Bool)

(assert (=> b!1548343 (= res!692300 (isEmpty!10067 (_1!9245 lt!536257)))))

(declare-fun findLongestMatchInner!315 (Regex!4247 List!16724 Int List!16724 List!16724 Int) tuple2!15946)

(declare-fun size!13465 (List!16724) Int)

(assert (=> b!1548343 (= lt!536257 (findLongestMatchInner!315 (regex!2919 rule!240) Nil!16656 (size!13465 Nil!16656) lt!536253 lt!536253 (size!13465 lt!536253)))))

(declare-fun lt!536250 () Unit!25969)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!299 (Regex!4247 List!16724) Unit!25969)

(assert (=> b!1548343 (= lt!536250 (longestMatchIsAcceptedByMatchOrIsEmpty!299 (regex!2919 rule!240) lt!536253))))

(declare-fun mapIsEmpty!8029 () Bool)

(assert (=> mapIsEmpty!8029 mapRes!8030))

(declare-fun mapNonEmpty!8028 () Bool)

(declare-fun tp!451595 () Bool)

(declare-fun tp!451602 () Bool)

(assert (=> mapNonEmpty!8028 (= mapRes!8028 (and tp!451595 tp!451602))))

(declare-fun mapRest!8028 () (Array (_ BitVec 32) List!16726))

(declare-fun mapValue!8029 () List!16726)

(declare-fun mapKey!8028 () (_ BitVec 32))

(assert (=> mapNonEmpty!8028 (= (arr!2644 (_values!2001 (v!23477 (underlying!3653 (v!23478 (underlying!3654 (cache!2047 cacheFurthestNullable!103))))))) (store mapRest!8028 mapKey!8028 mapValue!8029))))

(declare-fun b!1548344 () Bool)

(declare-fun e!992359 () Bool)

(assert (=> b!1548344 (= e!992359 e!992354)))

(declare-fun mapIsEmpty!8030 () Bool)

(assert (=> mapIsEmpty!8030 mapRes!8028))

(declare-fun b!1548345 () Bool)

(assert (=> b!1548345 (= e!992358 e!992349)))

(declare-fun res!692307 () Bool)

(assert (=> b!1548345 (=> (not res!692307) (not e!992349))))

(declare-fun isSuffix!357 (List!16724 List!16724) Bool)

(assert (=> b!1548345 (= res!692307 (isSuffix!357 lt!536253 (list!6464 totalInput!568)))))

(assert (=> b!1548345 (= lt!536253 (list!6464 input!1676))))

(declare-fun mapNonEmpty!8029 () Bool)

(declare-fun tp!451589 () Bool)

(declare-fun tp!451592 () Bool)

(assert (=> mapNonEmpty!8029 (= mapRes!8029 (and tp!451589 tp!451592))))

(declare-fun mapRest!8029 () (Array (_ BitVec 32) List!16727))

(declare-fun mapKey!8030 () (_ BitVec 32))

(declare-fun mapValue!8028 () List!16727)

(assert (=> mapNonEmpty!8029 (= (arr!2646 (_values!2002 (v!23480 (underlying!3655 (v!23481 (underlying!3656 (cache!2048 cacheDown!768))))))) (store mapRest!8029 mapKey!8030 mapValue!8028))))

(declare-fun b!1548346 () Bool)

(declare-fun matchR!1860 (Regex!4247 List!16724) Bool)

(assert (=> b!1548346 (= e!992367 (matchR!1860 (regex!2919 rule!240) (_1!9245 lt!536257)))))

(declare-fun b!1548347 () Bool)

(declare-fun e!992376 () Bool)

(assert (=> b!1548347 (= e!992376 e!992375)))

(declare-fun b!1548348 () Bool)

(declare-fun e!992357 () Bool)

(declare-fun e!992343 () Bool)

(assert (=> b!1548348 (= e!992357 e!992343)))

(declare-fun b!1548349 () Bool)

(assert (=> b!1548349 (= e!992342 e!992362)))

(declare-fun res!692310 () Bool)

(assert (=> b!1548349 (=> res!692310 e!992362)))

(assert (=> b!1548349 (= res!692310 (not (= (apply!4094 (transformation!2919 rule!240) lt!536255) lt!536242)))))

(declare-fun lt!536254 () Unit!25969)

(declare-fun lemmaEqSameImage!139 (TokenValueInjection!5678 BalanceConc!11016 BalanceConc!11016) Unit!25969)

(assert (=> b!1548349 (= lt!536254 (lemmaEqSameImage!139 (transformation!2919 rule!240) (_1!9242 (_1!9243 lt!536246)) lt!536255))))

(declare-fun b!1548350 () Bool)

(declare-fun res!692306 () Bool)

(assert (=> b!1548350 (=> res!692306 e!992342)))

(assert (=> b!1548350 (= res!692306 (not (= (list!6464 lt!536255) lt!536256)))))

(declare-fun tp!451582 () Bool)

(declare-fun tp!451597 () Bool)

(declare-fun array_inv!1902 (array!5934) Bool)

(assert (=> b!1548351 (= e!992352 (and tp!451591 tp!451597 tp!451582 (array_inv!1900 (_keys!2016 (v!23477 (underlying!3653 (v!23478 (underlying!3654 (cache!2047 cacheFurthestNullable!103))))))) (array_inv!1902 (_values!2001 (v!23477 (underlying!3653 (v!23478 (underlying!3654 (cache!2047 cacheFurthestNullable!103))))))) e!992372))))

(assert (=> b!1548327 (= e!992343 (and e!992365 tp!451580))))

(declare-fun res!692311 () Bool)

(assert (=> start!143602 (=> (not res!692311) (not e!992358))))

(assert (=> start!143602 (= res!692311 ((_ is Lexer!2561) thiss!16438))))

(assert (=> start!143602 e!992358))

(declare-fun inv!21917 (BalanceConc!11016) Bool)

(assert (=> start!143602 (and (inv!21917 totalInput!568) e!992363)))

(declare-fun inv!21918 (CacheUp!1008) Bool)

(assert (=> start!143602 (and (inv!21918 cacheUp!755) e!992357)))

(declare-fun e!992351 () Bool)

(declare-fun inv!21919 (CacheFurthestNullable!436) Bool)

(assert (=> start!143602 (and (inv!21919 cacheFurthestNullable!103) e!992351)))

(assert (=> start!143602 (and (inv!21917 input!1676) e!992355)))

(declare-fun e!992348 () Bool)

(assert (=> start!143602 e!992348))

(declare-fun inv!21920 (CacheDown!1016) Bool)

(assert (=> start!143602 (and (inv!21920 cacheDown!768) e!992376)))

(assert (=> start!143602 true))

(declare-fun b!1548352 () Bool)

(declare-fun lt!536248 () MutLongMap!1723)

(assert (=> b!1548352 (= e!992341 (and e!992364 ((_ is LongMap!1723) lt!536248)))))

(assert (=> b!1548352 (= lt!536248 (v!23481 (underlying!3656 (cache!2048 cacheDown!768))))))

(declare-fun b!1548353 () Bool)

(declare-fun tp!451596 () Bool)

(assert (=> b!1548353 (= e!992361 (and tp!451596 mapRes!8029))))

(declare-fun condMapEmpty!8029 () Bool)

(declare-fun mapDefault!8030 () List!16727)

(assert (=> b!1548353 (= condMapEmpty!8029 (= (arr!2646 (_values!2002 (v!23480 (underlying!3655 (v!23481 (underlying!3656 (cache!2048 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16727)) mapDefault!8030)))))

(declare-fun b!1548354 () Bool)

(assert (=> b!1548354 (= e!992344 e!992360)))

(declare-fun tp!451576 () Bool)

(declare-fun b!1548355 () Bool)

(declare-fun inv!21915 (String!19333) Bool)

(declare-fun inv!21921 (TokenValueInjection!5678) Bool)

(assert (=> b!1548355 (= e!992348 (and tp!451576 (inv!21915 (tag!3183 rule!240)) (inv!21921 (transformation!2919 rule!240)) e!992377))))

(declare-fun b!1548356 () Bool)

(declare-fun e!992370 () Bool)

(declare-fun tp!451600 () Bool)

(assert (=> b!1548356 (= e!992370 (and (inv!21916 (c!252169 (totalInput!2421 cacheFurthestNullable!103))) tp!451600))))

(declare-fun mapNonEmpty!8030 () Bool)

(declare-fun tp!451584 () Bool)

(declare-fun tp!451587 () Bool)

(assert (=> mapNonEmpty!8030 (= mapRes!8030 (and tp!451584 tp!451587))))

(declare-fun mapRest!8030 () (Array (_ BitVec 32) List!16728))

(declare-fun mapValue!8030 () List!16728)

(declare-fun mapKey!8029 () (_ BitVec 32))

(assert (=> mapNonEmpty!8030 (= (arr!2647 (_values!2003 (v!23482 (underlying!3657 (v!23483 (underlying!3658 (cache!2049 cacheUp!755))))))) (store mapRest!8030 mapKey!8029 mapValue!8030))))

(declare-fun res!692303 () Bool)

(assert (=> b!1548357 (=> res!692303 e!992373)))

(declare-fun Forall!595 (Int) Bool)

(assert (=> b!1548357 (= res!692303 (not (Forall!595 lambda!65547)))))

(declare-fun b!1548358 () Bool)

(declare-fun lt!536247 () MutLongMap!1722)

(assert (=> b!1548358 (= e!992347 (and e!992359 ((_ is LongMap!1722) lt!536247)))))

(assert (=> b!1548358 (= lt!536247 (v!23478 (underlying!3654 (cache!2047 cacheFurthestNullable!103))))))

(declare-fun e!992346 () Bool)

(declare-fun tp!451586 () Bool)

(declare-fun tp!451578 () Bool)

(declare-fun array_inv!1903 (array!5940) Bool)

(assert (=> b!1548359 (= e!992346 (and tp!451588 tp!451586 tp!451578 (array_inv!1900 (_keys!2018 (v!23482 (underlying!3657 (v!23483 (underlying!3658 (cache!2049 cacheUp!755))))))) (array_inv!1903 (_values!2003 (v!23482 (underlying!3657 (v!23483 (underlying!3658 (cache!2049 cacheUp!755))))))) e!992345))))

(declare-fun b!1548360 () Bool)

(assert (=> b!1548360 (= e!992366 e!992346)))

(declare-fun b!1548361 () Bool)

(assert (=> b!1548361 (= e!992351 (and e!992350 (inv!21917 (totalInput!2421 cacheFurthestNullable!103)) e!992370))))

(assert (= (and start!143602 res!692311) b!1548329))

(assert (= (and b!1548329 res!692309) b!1548339))

(assert (= (and b!1548339 res!692302) b!1548333))

(assert (= (and b!1548333 res!692304) b!1548342))

(assert (= (and b!1548342 res!692308) b!1548345))

(assert (= (and b!1548345 res!692307) b!1548326))

(assert (= (and b!1548326 res!692298) b!1548335))

(assert (= (and b!1548335 res!692299) b!1548343))

(assert (= (and b!1548343 (not res!692300)) b!1548346))

(assert (= (and b!1548343 (not res!692301)) b!1548357))

(assert (= (and b!1548357 (not res!692303)) b!1548337))

(assert (= (and b!1548337 (not res!692305)) b!1548350))

(assert (= (and b!1548350 (not res!692306)) b!1548349))

(assert (= (and b!1548349 (not res!692310)) b!1548331))

(assert (= start!143602 b!1548332))

(assert (= (and b!1548336 condMapEmpty!8028) mapIsEmpty!8029))

(assert (= (and b!1548336 (not condMapEmpty!8028)) mapNonEmpty!8030))

(assert (= b!1548359 b!1548336))

(assert (= b!1548360 b!1548359))

(assert (= b!1548334 b!1548360))

(assert (= (and b!1548338 ((_ is LongMap!1724) (v!23483 (underlying!3658 (cache!2049 cacheUp!755))))) b!1548334))

(assert (= b!1548327 b!1548338))

(assert (= (and b!1548348 ((_ is HashMap!1668) (cache!2049 cacheUp!755))) b!1548327))

(assert (= start!143602 b!1548348))

(assert (= (and b!1548340 condMapEmpty!8030) mapIsEmpty!8030))

(assert (= (and b!1548340 (not condMapEmpty!8030)) mapNonEmpty!8028))

(assert (= b!1548351 b!1548340))

(assert (= b!1548324 b!1548351))

(assert (= b!1548344 b!1548324))

(assert (= (and b!1548358 ((_ is LongMap!1722) (v!23478 (underlying!3654 (cache!2047 cacheFurthestNullable!103))))) b!1548344))

(assert (= b!1548328 b!1548358))

(assert (= (and b!1548361 ((_ is HashMap!1666) (cache!2047 cacheFurthestNullable!103))) b!1548328))

(assert (= b!1548361 b!1548356))

(assert (= start!143602 b!1548361))

(assert (= start!143602 b!1548330))

(assert (= b!1548355 b!1548323))

(assert (= start!143602 b!1548355))

(assert (= (and b!1548353 condMapEmpty!8029) mapIsEmpty!8028))

(assert (= (and b!1548353 (not condMapEmpty!8029)) mapNonEmpty!8029))

(assert (= b!1548341 b!1548353))

(assert (= b!1548354 b!1548341))

(assert (= b!1548322 b!1548354))

(assert (= (and b!1548352 ((_ is LongMap!1723) (v!23481 (underlying!3656 (cache!2048 cacheDown!768))))) b!1548322))

(assert (= b!1548325 b!1548352))

(assert (= (and b!1548347 ((_ is HashMap!1667) (cache!2048 cacheDown!768))) b!1548325))

(assert (= start!143602 b!1548347))

(declare-fun m!1821511 () Bool)

(assert (=> b!1548359 m!1821511))

(declare-fun m!1821513 () Bool)

(assert (=> b!1548359 m!1821513))

(declare-fun m!1821515 () Bool)

(assert (=> mapNonEmpty!8029 m!1821515))

(declare-fun m!1821517 () Bool)

(assert (=> b!1548355 m!1821517))

(declare-fun m!1821519 () Bool)

(assert (=> b!1548355 m!1821519))

(declare-fun m!1821521 () Bool)

(assert (=> b!1548330 m!1821521))

(declare-fun m!1821523 () Bool)

(assert (=> start!143602 m!1821523))

(declare-fun m!1821525 () Bool)

(assert (=> start!143602 m!1821525))

(declare-fun m!1821527 () Bool)

(assert (=> start!143602 m!1821527))

(declare-fun m!1821529 () Bool)

(assert (=> start!143602 m!1821529))

(declare-fun m!1821531 () Bool)

(assert (=> start!143602 m!1821531))

(declare-fun m!1821533 () Bool)

(assert (=> b!1548356 m!1821533))

(declare-fun m!1821535 () Bool)

(assert (=> mapNonEmpty!8028 m!1821535))

(declare-fun m!1821537 () Bool)

(assert (=> b!1548341 m!1821537))

(declare-fun m!1821539 () Bool)

(assert (=> b!1548341 m!1821539))

(declare-fun m!1821541 () Bool)

(assert (=> b!1548357 m!1821541))

(declare-fun m!1821543 () Bool)

(assert (=> b!1548333 m!1821543))

(declare-fun m!1821545 () Bool)

(assert (=> b!1548332 m!1821545))

(declare-fun m!1821547 () Bool)

(assert (=> b!1548345 m!1821547))

(assert (=> b!1548345 m!1821547))

(declare-fun m!1821549 () Bool)

(assert (=> b!1548345 m!1821549))

(declare-fun m!1821551 () Bool)

(assert (=> b!1548345 m!1821551))

(declare-fun m!1821553 () Bool)

(assert (=> b!1548343 m!1821553))

(declare-fun m!1821555 () Bool)

(assert (=> b!1548343 m!1821555))

(declare-fun m!1821557 () Bool)

(assert (=> b!1548343 m!1821557))

(declare-fun m!1821559 () Bool)

(assert (=> b!1548343 m!1821559))

(declare-fun m!1821561 () Bool)

(assert (=> b!1548343 m!1821561))

(assert (=> b!1548343 m!1821559))

(assert (=> b!1548343 m!1821561))

(declare-fun m!1821563 () Bool)

(assert (=> b!1548343 m!1821563))

(declare-fun m!1821565 () Bool)

(assert (=> b!1548343 m!1821565))

(declare-fun m!1821567 () Bool)

(assert (=> b!1548337 m!1821567))

(declare-fun m!1821569 () Bool)

(assert (=> b!1548337 m!1821569))

(declare-fun m!1821571 () Bool)

(assert (=> b!1548337 m!1821571))

(declare-fun m!1821573 () Bool)

(assert (=> b!1548337 m!1821573))

(declare-fun m!1821575 () Bool)

(assert (=> b!1548337 m!1821575))

(declare-fun m!1821577 () Bool)

(assert (=> b!1548337 m!1821577))

(declare-fun m!1821579 () Bool)

(assert (=> b!1548337 m!1821579))

(declare-fun m!1821581 () Bool)

(assert (=> b!1548337 m!1821581))

(declare-fun m!1821583 () Bool)

(assert (=> b!1548337 m!1821583))

(declare-fun m!1821585 () Bool)

(assert (=> b!1548329 m!1821585))

(declare-fun m!1821587 () Bool)

(assert (=> b!1548351 m!1821587))

(declare-fun m!1821589 () Bool)

(assert (=> b!1548351 m!1821589))

(declare-fun m!1821591 () Bool)

(assert (=> b!1548350 m!1821591))

(declare-fun m!1821593 () Bool)

(assert (=> b!1548342 m!1821593))

(declare-fun m!1821595 () Bool)

(assert (=> b!1548335 m!1821595))

(declare-fun m!1821597 () Bool)

(assert (=> b!1548335 m!1821597))

(declare-fun m!1821599 () Bool)

(assert (=> b!1548339 m!1821599))

(declare-fun m!1821601 () Bool)

(assert (=> mapNonEmpty!8030 m!1821601))

(declare-fun m!1821603 () Bool)

(assert (=> b!1548331 m!1821603))

(declare-fun m!1821605 () Bool)

(assert (=> b!1548346 m!1821605))

(declare-fun m!1821607 () Bool)

(assert (=> b!1548349 m!1821607))

(declare-fun m!1821609 () Bool)

(assert (=> b!1548349 m!1821609))

(declare-fun m!1821611 () Bool)

(assert (=> b!1548361 m!1821611))

(check-sat (not mapNonEmpty!8028) (not b!1548330) (not start!143602) b_and!107957 (not b!1548356) (not b!1548333) (not b_next!41573) (not b_next!41575) b_and!107961 b_and!107967 (not b_next!41579) b_and!107959 (not b!1548350) (not b!1548329) (not b!1548342) (not b!1548336) (not b!1548337) (not b!1548335) (not b_next!41577) (not b!1548351) (not b!1548343) (not b!1548340) (not b_next!41583) (not b!1548359) (not b!1548355) (not b!1548357) (not b_next!41571) (not b_next!41585) (not b!1548331) (not b!1548361) (not b!1548341) b_and!107963 b_and!107965 b_and!107971 (not b!1548353) (not b!1548339) (not b!1548345) (not b!1548349) b_and!107969 (not mapNonEmpty!8029) (not b!1548332) (not b!1548346) (not b_next!41581) (not mapNonEmpty!8030))
(check-sat b_and!107957 (not b_next!41577) (not b_next!41573) (not b_next!41583) (not b_next!41575) b_and!107963 b_and!107961 b_and!107967 (not b_next!41579) b_and!107969 b_and!107959 (not b_next!41581) (not b_next!41571) (not b_next!41585) b_and!107965 b_and!107971)
