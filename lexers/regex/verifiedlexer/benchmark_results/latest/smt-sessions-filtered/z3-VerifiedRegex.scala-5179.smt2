; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266518 () Bool)

(assert start!266518)

(declare-fun b!2749139 () Bool)

(declare-fun b_free!77649 () Bool)

(declare-fun b_next!78353 () Bool)

(assert (=> b!2749139 (= b_free!77649 (not b_next!78353))))

(declare-fun tp!867451 () Bool)

(declare-fun b_and!202381 () Bool)

(assert (=> b!2749139 (= tp!867451 b_and!202381)))

(declare-fun b!2749122 () Bool)

(declare-fun b_free!77651 () Bool)

(declare-fun b_next!78355 () Bool)

(assert (=> b!2749122 (= b_free!77651 (not b_next!78355))))

(declare-fun tp!867440 () Bool)

(declare-fun b_and!202383 () Bool)

(assert (=> b!2749122 (= tp!867440 b_and!202383)))

(declare-fun b_free!77653 () Bool)

(declare-fun b_next!78357 () Bool)

(assert (=> b!2749122 (= b_free!77653 (not b_next!78357))))

(declare-fun tp!867442 () Bool)

(declare-fun b_and!202385 () Bool)

(assert (=> b!2749122 (= tp!867442 b_and!202385)))

(declare-fun b!2749121 () Bool)

(declare-fun b_free!77655 () Bool)

(declare-fun b_next!78359 () Bool)

(assert (=> b!2749121 (= b_free!77655 (not b_next!78359))))

(declare-fun tp!867439 () Bool)

(declare-fun b_and!202387 () Bool)

(assert (=> b!2749121 (= tp!867439 b_and!202387)))

(declare-fun b!2749129 () Bool)

(declare-fun b_free!77657 () Bool)

(declare-fun b_next!78361 () Bool)

(assert (=> b!2749129 (= b_free!77657 (not b_next!78361))))

(declare-fun tp!867437 () Bool)

(declare-fun b_and!202389 () Bool)

(assert (=> b!2749129 (= tp!867437 b_and!202389)))

(declare-fun b!2749133 () Bool)

(declare-fun b_free!77659 () Bool)

(declare-fun b_next!78363 () Bool)

(assert (=> b!2749133 (= b_free!77659 (not b_next!78363))))

(declare-fun tp!867450 () Bool)

(declare-fun b_and!202391 () Bool)

(assert (=> b!2749133 (= tp!867450 b_and!202391)))

(declare-fun b!2749114 () Bool)

(declare-datatypes ((C!16204 0))(
  ( (C!16205 (val!10036 Int)) )
))
(declare-datatypes ((List!31842 0))(
  ( (Nil!31742) (Cons!31742 (h!37162 C!16204) (t!227942 List!31842)) )
))
(declare-datatypes ((IArray!19827 0))(
  ( (IArray!19828 (innerList!9971 List!31842)) )
))
(declare-datatypes ((Conc!9911 0))(
  ( (Node!9911 (left!24282 Conc!9911) (right!24612 Conc!9911) (csize!20052 Int) (cheight!10122 Int)) (Leaf!15091 (xs!13018 IArray!19827) (csize!20053 Int)) (Empty!9911) )
))
(declare-datatypes ((BalanceConc!19436 0))(
  ( (BalanceConc!19437 (c!445002 Conc!9911)) )
))
(declare-datatypes ((List!31843 0))(
  ( (Nil!31743) (Cons!31743 (h!37163 (_ BitVec 16)) (t!227943 List!31843)) )
))
(declare-datatypes ((TokenValue!5087 0))(
  ( (FloatLiteralValue!10174 (text!36054 List!31843)) (TokenValueExt!5086 (__x!20622 Int)) (Broken!25435 (value!156218 List!31843)) (Object!5186) (End!5087) (Def!5087) (Underscore!5087) (Match!5087) (Else!5087) (Error!5087) (Case!5087) (If!5087) (Extends!5087) (Abstract!5087) (Class!5087) (Val!5087) (DelimiterValue!10174 (del!5147 List!31843)) (KeywordValue!5093 (value!156219 List!31843)) (CommentValue!10174 (value!156220 List!31843)) (WhitespaceValue!10174 (value!156221 List!31843)) (IndentationValue!5087 (value!156222 List!31843)) (String!35346) (Int32!5087) (Broken!25436 (value!156223 List!31843)) (Boolean!5088) (Unit!45566) (OperatorValue!5090 (op!5147 List!31843)) (IdentifierValue!10174 (value!156224 List!31843)) (IdentifierValue!10175 (value!156225 List!31843)) (WhitespaceValue!10175 (value!156226 List!31843)) (True!10174) (False!10174) (Broken!25437 (value!156227 List!31843)) (Broken!25438 (value!156228 List!31843)) (True!10175) (RightBrace!5087) (RightBracket!5087) (Colon!5087) (Null!5087) (Comma!5087) (LeftBracket!5087) (False!10175) (LeftBrace!5087) (ImaginaryLiteralValue!5087 (text!36055 List!31843)) (StringLiteralValue!15261 (value!156229 List!31843)) (EOFValue!5087 (value!156230 List!31843)) (IdentValue!5087 (value!156231 List!31843)) (DelimiterValue!10175 (value!156232 List!31843)) (DedentValue!5087 (value!156233 List!31843)) (NewLineValue!5087 (value!156234 List!31843)) (IntegerValue!15261 (value!156235 (_ BitVec 32)) (text!36056 List!31843)) (IntegerValue!15262 (value!156236 Int) (text!36057 List!31843)) (Times!5087) (Or!5087) (Equal!5087) (Minus!5087) (Broken!25439 (value!156237 List!31843)) (And!5087) (Div!5087) (LessEqual!5087) (Mod!5087) (Concat!13110) (Not!5087) (Plus!5087) (SpaceValue!5087 (value!156238 List!31843)) (IntegerValue!15263 (value!156239 Int) (text!36058 List!31843)) (StringLiteralValue!15262 (text!36059 List!31843)) (FloatLiteralValue!10175 (text!36060 List!31843)) (BytesLiteralValue!5087 (value!156240 List!31843)) (CommentValue!10175 (value!156241 List!31843)) (StringLiteralValue!15263 (value!156242 List!31843)) (ErrorTokenValue!5087 (msg!5148 List!31843)) )
))
(declare-datatypes ((TokenValueInjection!9614 0))(
  ( (TokenValueInjection!9615 (toValue!6863 Int) (toChars!6722 Int)) )
))
(declare-datatypes ((Regex!8023 0))(
  ( (ElementMatch!8023 (c!445003 C!16204)) (Concat!13111 (regOne!16558 Regex!8023) (regTwo!16558 Regex!8023)) (EmptyExpr!8023) (Star!8023 (reg!8352 Regex!8023)) (EmptyLang!8023) (Union!8023 (regOne!16559 Regex!8023) (regTwo!16559 Regex!8023)) )
))
(declare-datatypes ((String!35347 0))(
  ( (String!35348 (value!156243 String)) )
))
(declare-datatypes ((Rule!9530 0))(
  ( (Rule!9531 (regex!4865 Regex!8023) (tag!5369 String!35347) (isSeparator!4865 Bool) (transformation!4865 TokenValueInjection!9614)) )
))
(declare-datatypes ((Token!9132 0))(
  ( (Token!9133 (value!156244 TokenValue!5087) (rule!7292 Rule!9530) (size!24505 Int) (originalCharacters!5597 List!31842)) )
))
(declare-datatypes ((tuple2!31636 0))(
  ( (tuple2!31637 (_1!18539 Token!9132) (_2!18539 BalanceConc!19436)) )
))
(declare-datatypes ((Option!6246 0))(
  ( (None!6245) (Some!6245 (v!33353 tuple2!31636)) )
))
(declare-fun e!1732727 () Option!6246)

(declare-fun rule!196 () Rule!9530)

(declare-datatypes ((List!31844 0))(
  ( (Nil!31744) (Cons!31744 (h!37164 Regex!8023) (t!227944 List!31844)) )
))
(declare-datatypes ((Context!4482 0))(
  ( (Context!4483 (exprs!2741 List!31844)) )
))
(declare-datatypes ((tuple3!4502 0))(
  ( (tuple3!4503 (_1!18540 Regex!8023) (_2!18540 Context!4482) (_3!2721 C!16204)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31638 0))(
  ( (tuple2!31639 (_1!18541 tuple3!4502) (_2!18541 (InoxSet Context!4482))) )
))
(declare-datatypes ((tuple2!31640 0))(
  ( (tuple2!31641 (_1!18542 Context!4482) (_2!18542 C!16204)) )
))
(declare-datatypes ((tuple2!31642 0))(
  ( (tuple2!31643 (_1!18543 tuple2!31640) (_2!18543 (InoxSet Context!4482))) )
))
(declare-datatypes ((List!31845 0))(
  ( (Nil!31745) (Cons!31745 (h!37165 tuple2!31642) (t!227945 List!31845)) )
))
(declare-datatypes ((array!13032 0))(
  ( (array!13033 (arr!5814 (Array (_ BitVec 32) List!31845)) (size!24506 (_ BitVec 32))) )
))
(declare-datatypes ((array!13034 0))(
  ( (array!13035 (arr!5815 (Array (_ BitVec 32) (_ BitVec 64))) (size!24507 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7316 0))(
  ( (LongMapFixedSize!7317 (defaultEntry!4043 Int) (mask!9406 (_ BitVec 32)) (extraKeys!3907 (_ BitVec 32)) (zeroValue!3917 List!31845) (minValue!3917 List!31845) (_size!7359 (_ BitVec 32)) (_keys!3958 array!13034) (_values!3939 array!13032) (_vacant!3719 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14441 0))(
  ( (Cell!14442 (v!33354 LongMapFixedSize!7316)) )
))
(declare-datatypes ((Hashable!3574 0))(
  ( (HashableExt!3573 (__x!20623 Int)) )
))
(declare-datatypes ((List!31846 0))(
  ( (Nil!31746) (Cons!31746 (h!37166 tuple2!31638) (t!227946 List!31846)) )
))
(declare-datatypes ((array!13036 0))(
  ( (array!13037 (arr!5816 (Array (_ BitVec 32) List!31846)) (size!24508 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7318 0))(
  ( (LongMapFixedSize!7319 (defaultEntry!4044 Int) (mask!9407 (_ BitVec 32)) (extraKeys!3908 (_ BitVec 32)) (zeroValue!3918 List!31846) (minValue!3918 List!31846) (_size!7360 (_ BitVec 32)) (_keys!3959 array!13034) (_values!3940 array!13036) (_vacant!3720 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14443 0))(
  ( (Cell!14444 (v!33355 LongMapFixedSize!7318)) )
))
(declare-datatypes ((MutLongMap!3658 0))(
  ( (LongMap!3658 (underlying!7519 Cell!14443)) (MutLongMapExt!3657 (__x!20624 Int)) )
))
(declare-datatypes ((Cell!14445 0))(
  ( (Cell!14446 (v!33356 MutLongMap!3658)) )
))
(declare-datatypes ((Hashable!3575 0))(
  ( (HashableExt!3574 (__x!20625 Int)) )
))
(declare-datatypes ((MutableMap!3564 0))(
  ( (MutableMapExt!3563 (__x!20626 Int)) (HashMap!3564 (underlying!7520 Cell!14445) (hashF!5606 Hashable!3575) (_size!7361 (_ BitVec 32)) (defaultValue!3735 Int)) )
))
(declare-datatypes ((CacheDown!2390 0))(
  ( (CacheDown!2391 (cache!3707 MutableMap!3564)) )
))
(declare-datatypes ((MutLongMap!3659 0))(
  ( (LongMap!3659 (underlying!7521 Cell!14441)) (MutLongMapExt!3658 (__x!20627 Int)) )
))
(declare-datatypes ((Cell!14447 0))(
  ( (Cell!14448 (v!33357 MutLongMap!3659)) )
))
(declare-datatypes ((tuple2!31644 0))(
  ( (tuple2!31645 (_1!18544 BalanceConc!19436) (_2!18544 BalanceConc!19436)) )
))
(declare-datatypes ((MutableMap!3565 0))(
  ( (MutableMapExt!3564 (__x!20628 Int)) (HashMap!3565 (underlying!7522 Cell!14447) (hashF!5607 Hashable!3574) (_size!7362 (_ BitVec 32)) (defaultValue!3736 Int)) )
))
(declare-datatypes ((CacheUp!2270 0))(
  ( (CacheUp!2271 (cache!3708 MutableMap!3565)) )
))
(declare-datatypes ((tuple3!4504 0))(
  ( (tuple3!4505 (_1!18545 tuple2!31644) (_2!18545 CacheUp!2270) (_3!2722 CacheDown!2390)) )
))
(declare-fun lt!972209 () tuple3!4504)

(declare-fun apply!7432 (TokenValueInjection!9614 BalanceConc!19436) TokenValue!5087)

(declare-fun size!24509 (BalanceConc!19436) Int)

(declare-fun list!12013 (BalanceConc!19436) List!31842)

(assert (=> b!2749114 (= e!1732727 (Some!6245 (tuple2!31637 (Token!9133 (apply!7432 (transformation!4865 rule!196) (_1!18544 (_1!18545 lt!972209))) rule!196 (size!24509 (_1!18544 (_1!18545 lt!972209))) (list!12013 (_1!18544 (_1!18545 lt!972209)))) (_2!18544 (_1!18545 lt!972209)))))))

(declare-fun lt!972214 () List!31842)

(declare-fun input!1561 () BalanceConc!19436)

(assert (=> b!2749114 (= lt!972214 (list!12013 input!1561))))

(declare-datatypes ((Unit!45567 0))(
  ( (Unit!45568) )
))
(declare-fun lt!972215 () Unit!45567)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!780 (Regex!8023 List!31842) Unit!45567)

(assert (=> b!2749114 (= lt!972215 (longestMatchIsAcceptedByMatchOrIsEmpty!780 (regex!4865 rule!196) lt!972214))))

(declare-datatypes ((tuple2!31646 0))(
  ( (tuple2!31647 (_1!18546 List!31842) (_2!18546 List!31842)) )
))
(declare-fun lt!972213 () tuple2!31646)

(declare-fun findLongestMatchInner!807 (Regex!8023 List!31842 Int List!31842 List!31842 Int) tuple2!31646)

(declare-fun size!24510 (List!31842) Int)

(assert (=> b!2749114 (= lt!972213 (findLongestMatchInner!807 (regex!4865 rule!196) Nil!31742 (size!24510 Nil!31742) lt!972214 lt!972214 (size!24510 lt!972214)))))

(declare-fun res!1153095 () Bool)

(declare-fun isEmpty!18060 (List!31842) Bool)

(assert (=> b!2749114 (= res!1153095 (isEmpty!18060 (_1!18546 lt!972213)))))

(declare-fun e!1732729 () Bool)

(assert (=> b!2749114 (=> res!1153095 e!1732729)))

(assert (=> b!2749114 e!1732729))

(declare-fun lt!972211 () Unit!45567)

(declare-fun lemmaSemiInverse!1147 (TokenValueInjection!9614 BalanceConc!19436) Unit!45567)

(assert (=> b!2749114 (= lt!972211 (lemmaSemiInverse!1147 (transformation!4865 rule!196) (_1!18544 (_1!18545 lt!972209))))))

(declare-fun b!2749115 () Bool)

(declare-fun e!1732708 () Bool)

(declare-fun e!1732713 () Bool)

(assert (=> b!2749115 (= e!1732708 e!1732713)))

(declare-fun b!2749116 () Bool)

(declare-fun e!1732722 () Bool)

(declare-fun e!1732705 () Bool)

(assert (=> b!2749116 (= e!1732722 e!1732705)))

(declare-fun b!2749117 () Bool)

(declare-fun e!1732718 () Bool)

(declare-fun e!1732706 () Bool)

(declare-fun lt!972210 () MutLongMap!3659)

(get-info :version)

(assert (=> b!2749117 (= e!1732718 (and e!1732706 ((_ is LongMap!3659) lt!972210)))))

(declare-fun cacheUp!717 () CacheUp!2270)

(assert (=> b!2749117 (= lt!972210 (v!33357 (underlying!7522 (cache!3708 cacheUp!717))))))

(declare-fun b!2749118 () Bool)

(declare-fun e!1732709 () Bool)

(declare-fun e!1732724 () Bool)

(assert (=> b!2749118 (= e!1732709 e!1732724)))

(declare-fun b!2749119 () Bool)

(declare-fun matchR!3660 (Regex!8023 List!31842) Bool)

(assert (=> b!2749119 (= e!1732729 (matchR!3660 (regex!4865 rule!196) (_1!18546 lt!972213)))))

(declare-fun b!2749120 () Bool)

(declare-fun e!1732723 () Bool)

(declare-fun e!1732712 () Bool)

(declare-fun lt!972212 () MutLongMap!3658)

(assert (=> b!2749120 (= e!1732723 (and e!1732712 ((_ is LongMap!3658) lt!972212)))))

(declare-fun cacheDown!730 () CacheDown!2390)

(assert (=> b!2749120 (= lt!972212 (v!33356 (underlying!7520 (cache!3707 cacheDown!730))))))

(declare-fun e!1732715 () Bool)

(declare-fun tp!867438 () Bool)

(declare-fun tp!867444 () Bool)

(declare-fun array_inv!4155 (array!13034) Bool)

(declare-fun array_inv!4156 (array!13036) Bool)

(assert (=> b!2749121 (= e!1732724 (and tp!867439 tp!867438 tp!867444 (array_inv!4155 (_keys!3959 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730))))))) (array_inv!4156 (_values!3940 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730))))))) e!1732715))))

(declare-fun e!1732725 () Bool)

(assert (=> b!2749122 (= e!1732725 (and tp!867440 tp!867442))))

(declare-fun b!2749124 () Bool)

(assert (=> b!2749124 (= e!1732712 e!1732709)))

(declare-fun b!2749125 () Bool)

(declare-fun e!1732728 () Bool)

(declare-fun e!1732717 () Bool)

(assert (=> b!2749125 (= e!1732728 e!1732717)))

(declare-fun b!2749126 () Bool)

(declare-fun res!1153093 () Bool)

(declare-fun e!1732719 () Bool)

(assert (=> b!2749126 (=> (not res!1153093) (not e!1732719))))

(declare-fun valid!2836 (CacheDown!2390) Bool)

(assert (=> b!2749126 (= res!1153093 (valid!2836 cacheDown!730))))

(declare-fun b!2749127 () Bool)

(declare-fun res!1153092 () Bool)

(assert (=> b!2749127 (=> (not res!1153092) (not e!1732719))))

(declare-datatypes ((LexerInterface!4456 0))(
  ( (LexerInterfaceExt!4453 (__x!20629 Int)) (Lexer!4454) )
))
(declare-fun thiss!16130 () LexerInterface!4456)

(declare-fun ruleValid!1601 (LexerInterface!4456 Rule!9530) Bool)

(assert (=> b!2749127 (= res!1153092 (ruleValid!1601 thiss!16130 rule!196))))

(declare-fun b!2749128 () Bool)

(declare-fun res!1153089 () Bool)

(assert (=> b!2749128 (=> (not res!1153089) (not e!1732719))))

(declare-fun valid!2837 (CacheUp!2270) Bool)

(assert (=> b!2749128 (= res!1153089 (valid!2837 cacheUp!717))))

(assert (=> b!2749129 (= e!1732705 (and e!1732718 tp!867437))))

(declare-fun b!2749130 () Bool)

(assert (=> b!2749130 (= e!1732727 None!6245)))

(declare-fun b!2749131 () Bool)

(declare-fun e!1732707 () Bool)

(declare-fun e!1732720 () Bool)

(assert (=> b!2749131 (= e!1732707 e!1732720)))

(declare-fun res!1153094 () Bool)

(assert (=> b!2749131 (=> res!1153094 e!1732720)))

(declare-fun maxPrefixOneRuleZipperSequence!504 (LexerInterface!4456 Rule!9530 BalanceConc!19436) Option!6246)

(assert (=> b!2749131 (= res!1153094 (not (= e!1732727 (maxPrefixOneRuleZipperSequence!504 thiss!16130 rule!196 input!1561))))))

(declare-fun c!445001 () Bool)

(declare-fun isEmpty!18061 (BalanceConc!19436) Bool)

(assert (=> b!2749131 (= c!445001 (isEmpty!18061 (_1!18544 (_1!18545 lt!972209))))))

(declare-fun mapNonEmpty!16681 () Bool)

(declare-fun mapRes!16681 () Bool)

(declare-fun tp!867448 () Bool)

(declare-fun tp!867441 () Bool)

(assert (=> mapNonEmpty!16681 (= mapRes!16681 (and tp!867448 tp!867441))))

(declare-fun mapKey!16682 () (_ BitVec 32))

(declare-fun mapValue!16681 () List!31845)

(declare-fun mapRest!16681 () (Array (_ BitVec 32) List!31845))

(assert (=> mapNonEmpty!16681 (= (arr!5814 (_values!3939 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717))))))) (store mapRest!16681 mapKey!16682 mapValue!16681))))

(declare-fun b!2749132 () Bool)

(declare-fun e!1732716 () Bool)

(declare-fun tp!867436 () Bool)

(assert (=> b!2749132 (= e!1732716 (and tp!867436 mapRes!16681))))

(declare-fun condMapEmpty!16682 () Bool)

(declare-fun mapDefault!16682 () List!31845)

(assert (=> b!2749132 (= condMapEmpty!16682 (= (arr!5814 (_values!3939 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717))))))) ((as const (Array (_ BitVec 32) List!31845)) mapDefault!16682)))))

(declare-fun tp!867435 () Bool)

(declare-fun tp!867447 () Bool)

(declare-fun array_inv!4157 (array!13032) Bool)

(assert (=> b!2749133 (= e!1732717 (and tp!867450 tp!867447 tp!867435 (array_inv!4155 (_keys!3958 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717))))))) (array_inv!4157 (_values!3939 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717))))))) e!1732716))))

(declare-fun b!2749134 () Bool)

(assert (=> b!2749134 (= e!1732706 e!1732728)))

(declare-fun mapIsEmpty!16681 () Bool)

(declare-fun mapRes!16682 () Bool)

(assert (=> mapIsEmpty!16681 mapRes!16682))

(declare-fun b!2749135 () Bool)

(assert (=> b!2749135 (= e!1732719 e!1732707)))

(declare-fun res!1153091 () Bool)

(assert (=> b!2749135 (=> (not res!1153091) (not e!1732707))))

(declare-fun findLongestMatchWithZipperSequence!198 (Regex!8023 BalanceConc!19436) tuple2!31644)

(assert (=> b!2749135 (= res!1153091 (= (tuple2!31645 (_1!18544 (_1!18545 lt!972209)) (_2!18544 (_1!18545 lt!972209))) (findLongestMatchWithZipperSequence!198 (regex!4865 rule!196) input!1561)))))

(declare-fun findLongestMatchWithZipperSequenceMem!19 (Regex!8023 BalanceConc!19436 CacheUp!2270 CacheDown!2390) tuple3!4504)

(assert (=> b!2749135 (= lt!972209 (findLongestMatchWithZipperSequenceMem!19 (regex!4865 rule!196) input!1561 cacheUp!717 cacheDown!730))))

(declare-fun b!2749136 () Bool)

(declare-fun tp!867434 () Bool)

(assert (=> b!2749136 (= e!1732715 (and tp!867434 mapRes!16682))))

(declare-fun condMapEmpty!16681 () Bool)

(declare-fun mapDefault!16681 () List!31846)

(assert (=> b!2749136 (= condMapEmpty!16681 (= (arr!5816 (_values!3940 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730))))))) ((as const (Array (_ BitVec 32) List!31846)) mapDefault!16681)))))

(declare-fun b!2749137 () Bool)

(assert (=> b!2749137 (= e!1732720 (not (valid!2836 (_3!2722 lt!972209))))))

(declare-fun mapNonEmpty!16682 () Bool)

(declare-fun tp!867449 () Bool)

(declare-fun tp!867445 () Bool)

(assert (=> mapNonEmpty!16682 (= mapRes!16682 (and tp!867449 tp!867445))))

(declare-fun mapValue!16682 () List!31846)

(declare-fun mapKey!16681 () (_ BitVec 32))

(declare-fun mapRest!16682 () (Array (_ BitVec 32) List!31846))

(assert (=> mapNonEmpty!16682 (= (arr!5816 (_values!3940 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730))))))) (store mapRest!16682 mapKey!16681 mapValue!16682))))

(declare-fun mapIsEmpty!16682 () Bool)

(assert (=> mapIsEmpty!16682 mapRes!16681))

(declare-fun tp!867443 () Bool)

(declare-fun e!1732714 () Bool)

(declare-fun b!2749138 () Bool)

(declare-fun inv!43113 (String!35347) Bool)

(declare-fun inv!43117 (TokenValueInjection!9614) Bool)

(assert (=> b!2749138 (= e!1732714 (and tp!867443 (inv!43113 (tag!5369 rule!196)) (inv!43117 (transformation!4865 rule!196)) e!1732725))))

(assert (=> b!2749139 (= e!1732713 (and e!1732723 tp!867451))))

(declare-fun b!2749140 () Bool)

(declare-fun e!1732721 () Bool)

(declare-fun tp!867446 () Bool)

(declare-fun inv!43118 (Conc!9911) Bool)

(assert (=> b!2749140 (= e!1732721 (and (inv!43118 (c!445002 input!1561)) tp!867446))))

(declare-fun b!2749123 () Bool)

(declare-fun res!1153090 () Bool)

(assert (=> b!2749123 (=> res!1153090 e!1732720)))

(assert (=> b!2749123 (= res!1153090 (not (valid!2837 (_2!18545 lt!972209))))))

(declare-fun res!1153088 () Bool)

(assert (=> start!266518 (=> (not res!1153088) (not e!1732719))))

(assert (=> start!266518 (= res!1153088 ((_ is Lexer!4454) thiss!16130))))

(assert (=> start!266518 e!1732719))

(declare-fun inv!43119 (BalanceConc!19436) Bool)

(assert (=> start!266518 (and (inv!43119 input!1561) e!1732721)))

(declare-fun inv!43120 (CacheUp!2270) Bool)

(assert (=> start!266518 (and (inv!43120 cacheUp!717) e!1732722)))

(assert (=> start!266518 true))

(declare-fun inv!43121 (CacheDown!2390) Bool)

(assert (=> start!266518 (and (inv!43121 cacheDown!730) e!1732708)))

(assert (=> start!266518 e!1732714))

(assert (= (and start!266518 res!1153088) b!2749127))

(assert (= (and b!2749127 res!1153092) b!2749128))

(assert (= (and b!2749128 res!1153089) b!2749126))

(assert (= (and b!2749126 res!1153093) b!2749135))

(assert (= (and b!2749135 res!1153091) b!2749131))

(assert (= (and b!2749131 c!445001) b!2749130))

(assert (= (and b!2749131 (not c!445001)) b!2749114))

(assert (= (and b!2749114 (not res!1153095)) b!2749119))

(assert (= (and b!2749131 (not res!1153094)) b!2749123))

(assert (= (and b!2749123 (not res!1153090)) b!2749137))

(assert (= start!266518 b!2749140))

(assert (= (and b!2749132 condMapEmpty!16682) mapIsEmpty!16682))

(assert (= (and b!2749132 (not condMapEmpty!16682)) mapNonEmpty!16681))

(assert (= b!2749133 b!2749132))

(assert (= b!2749125 b!2749133))

(assert (= b!2749134 b!2749125))

(assert (= (and b!2749117 ((_ is LongMap!3659) (v!33357 (underlying!7522 (cache!3708 cacheUp!717))))) b!2749134))

(assert (= b!2749129 b!2749117))

(assert (= (and b!2749116 ((_ is HashMap!3565) (cache!3708 cacheUp!717))) b!2749129))

(assert (= start!266518 b!2749116))

(assert (= (and b!2749136 condMapEmpty!16681) mapIsEmpty!16681))

(assert (= (and b!2749136 (not condMapEmpty!16681)) mapNonEmpty!16682))

(assert (= b!2749121 b!2749136))

(assert (= b!2749118 b!2749121))

(assert (= b!2749124 b!2749118))

(assert (= (and b!2749120 ((_ is LongMap!3658) (v!33356 (underlying!7520 (cache!3707 cacheDown!730))))) b!2749124))

(assert (= b!2749139 b!2749120))

(assert (= (and b!2749115 ((_ is HashMap!3564) (cache!3707 cacheDown!730))) b!2749139))

(assert (= start!266518 b!2749115))

(assert (= b!2749138 b!2749122))

(assert (= start!266518 b!2749138))

(declare-fun m!3164607 () Bool)

(assert (=> b!2749114 m!3164607))

(declare-fun m!3164609 () Bool)

(assert (=> b!2749114 m!3164609))

(declare-fun m!3164611 () Bool)

(assert (=> b!2749114 m!3164611))

(declare-fun m!3164613 () Bool)

(assert (=> b!2749114 m!3164613))

(declare-fun m!3164615 () Bool)

(assert (=> b!2749114 m!3164615))

(declare-fun m!3164617 () Bool)

(assert (=> b!2749114 m!3164617))

(assert (=> b!2749114 m!3164609))

(declare-fun m!3164619 () Bool)

(assert (=> b!2749114 m!3164619))

(declare-fun m!3164621 () Bool)

(assert (=> b!2749114 m!3164621))

(declare-fun m!3164623 () Bool)

(assert (=> b!2749114 m!3164623))

(assert (=> b!2749114 m!3164619))

(declare-fun m!3164625 () Bool)

(assert (=> b!2749114 m!3164625))

(declare-fun m!3164627 () Bool)

(assert (=> b!2749133 m!3164627))

(declare-fun m!3164629 () Bool)

(assert (=> b!2749133 m!3164629))

(declare-fun m!3164631 () Bool)

(assert (=> start!266518 m!3164631))

(declare-fun m!3164633 () Bool)

(assert (=> start!266518 m!3164633))

(declare-fun m!3164635 () Bool)

(assert (=> start!266518 m!3164635))

(declare-fun m!3164637 () Bool)

(assert (=> b!2749123 m!3164637))

(declare-fun m!3164639 () Bool)

(assert (=> mapNonEmpty!16682 m!3164639))

(declare-fun m!3164641 () Bool)

(assert (=> b!2749131 m!3164641))

(declare-fun m!3164643 () Bool)

(assert (=> b!2749131 m!3164643))

(declare-fun m!3164645 () Bool)

(assert (=> b!2749119 m!3164645))

(declare-fun m!3164647 () Bool)

(assert (=> b!2749137 m!3164647))

(declare-fun m!3164649 () Bool)

(assert (=> b!2749128 m!3164649))

(declare-fun m!3164651 () Bool)

(assert (=> b!2749121 m!3164651))

(declare-fun m!3164653 () Bool)

(assert (=> b!2749121 m!3164653))

(declare-fun m!3164655 () Bool)

(assert (=> b!2749135 m!3164655))

(declare-fun m!3164657 () Bool)

(assert (=> b!2749135 m!3164657))

(declare-fun m!3164659 () Bool)

(assert (=> b!2749126 m!3164659))

(declare-fun m!3164661 () Bool)

(assert (=> b!2749138 m!3164661))

(declare-fun m!3164663 () Bool)

(assert (=> b!2749138 m!3164663))

(declare-fun m!3164665 () Bool)

(assert (=> mapNonEmpty!16681 m!3164665))

(declare-fun m!3164667 () Bool)

(assert (=> b!2749140 m!3164667))

(declare-fun m!3164669 () Bool)

(assert (=> b!2749127 m!3164669))

(check-sat (not b!2749126) (not b!2749132) (not start!266518) b_and!202383 (not b!2749136) (not mapNonEmpty!16681) (not b!2749121) (not b!2749114) (not b!2749119) b_and!202387 b_and!202391 (not mapNonEmpty!16682) b_and!202381 (not b!2749131) (not b_next!78361) (not b_next!78353) (not b_next!78363) (not b_next!78357) (not b!2749127) (not b_next!78359) (not b!2749135) (not b!2749137) b_and!202389 (not b!2749138) (not b!2749128) (not b!2749140) b_and!202385 (not b_next!78355) (not b!2749133) (not b!2749123))
(check-sat b_and!202381 (not b_next!78361) b_and!202383 (not b_next!78357) b_and!202387 b_and!202391 (not b_next!78359) b_and!202389 (not b_next!78353) (not b_next!78363) b_and!202385 (not b_next!78355))
(get-model)

(declare-fun d!796356 () Bool)

(declare-fun lt!972218 () tuple2!31644)

(declare-fun findLongestMatch!717 (Regex!8023 List!31842) tuple2!31646)

(assert (=> d!796356 (= (tuple2!31647 (list!12013 (_1!18544 lt!972218)) (list!12013 (_2!18544 lt!972218))) (findLongestMatch!717 (regex!4865 rule!196) (list!12013 input!1561)))))

(declare-fun choose!16079 (Regex!8023 BalanceConc!19436) tuple2!31644)

(assert (=> d!796356 (= lt!972218 (choose!16079 (regex!4865 rule!196) input!1561))))

(declare-fun validRegex!3323 (Regex!8023) Bool)

(assert (=> d!796356 (validRegex!3323 (regex!4865 rule!196))))

(assert (=> d!796356 (= (findLongestMatchWithZipperSequence!198 (regex!4865 rule!196) input!1561) lt!972218)))

(declare-fun bs!490346 () Bool)

(assert (= bs!490346 d!796356))

(declare-fun m!3164671 () Bool)

(assert (=> bs!490346 m!3164671))

(declare-fun m!3164673 () Bool)

(assert (=> bs!490346 m!3164673))

(declare-fun m!3164675 () Bool)

(assert (=> bs!490346 m!3164675))

(declare-fun m!3164677 () Bool)

(assert (=> bs!490346 m!3164677))

(assert (=> bs!490346 m!3164611))

(assert (=> bs!490346 m!3164611))

(declare-fun m!3164679 () Bool)

(assert (=> bs!490346 m!3164679))

(assert (=> b!2749135 d!796356))

(declare-fun d!796358 () Bool)

(declare-fun e!1732732 () Bool)

(assert (=> d!796358 e!1732732))

(declare-fun res!1153102 () Bool)

(assert (=> d!796358 (=> (not res!1153102) (not e!1732732))))

(declare-fun lt!972221 () tuple3!4504)

(assert (=> d!796358 (= res!1153102 (= (_1!18545 lt!972221) (findLongestMatchWithZipperSequence!198 (regex!4865 rule!196) input!1561)))))

(declare-fun choose!16080 (Regex!8023 BalanceConc!19436 CacheUp!2270 CacheDown!2390) tuple3!4504)

(assert (=> d!796358 (= lt!972221 (choose!16080 (regex!4865 rule!196) input!1561 cacheUp!717 cacheDown!730))))

(assert (=> d!796358 (validRegex!3323 (regex!4865 rule!196))))

(assert (=> d!796358 (= (findLongestMatchWithZipperSequenceMem!19 (regex!4865 rule!196) input!1561 cacheUp!717 cacheDown!730) lt!972221)))

(declare-fun b!2749145 () Bool)

(declare-fun res!1153103 () Bool)

(assert (=> b!2749145 (=> (not res!1153103) (not e!1732732))))

(assert (=> b!2749145 (= res!1153103 (valid!2836 (_3!2722 lt!972221)))))

(declare-fun b!2749146 () Bool)

(assert (=> b!2749146 (= e!1732732 (valid!2837 (_2!18545 lt!972221)))))

(assert (= (and d!796358 res!1153102) b!2749145))

(assert (= (and b!2749145 res!1153103) b!2749146))

(assert (=> d!796358 m!3164655))

(declare-fun m!3164681 () Bool)

(assert (=> d!796358 m!3164681))

(assert (=> d!796358 m!3164671))

(declare-fun m!3164683 () Bool)

(assert (=> b!2749145 m!3164683))

(declare-fun m!3164685 () Bool)

(assert (=> b!2749146 m!3164685))

(assert (=> b!2749135 d!796358))

(declare-fun d!796360 () Bool)

(declare-fun isBalanced!3020 (Conc!9911) Bool)

(assert (=> d!796360 (= (inv!43119 input!1561) (isBalanced!3020 (c!445002 input!1561)))))

(declare-fun bs!490347 () Bool)

(assert (= bs!490347 d!796360))

(declare-fun m!3164687 () Bool)

(assert (=> bs!490347 m!3164687))

(assert (=> start!266518 d!796360))

(declare-fun d!796362 () Bool)

(declare-fun res!1153106 () Bool)

(declare-fun e!1732735 () Bool)

(assert (=> d!796362 (=> (not res!1153106) (not e!1732735))))

(assert (=> d!796362 (= res!1153106 ((_ is HashMap!3565) (cache!3708 cacheUp!717)))))

(assert (=> d!796362 (= (inv!43120 cacheUp!717) e!1732735)))

(declare-fun b!2749149 () Bool)

(declare-fun validCacheMapUp!347 (MutableMap!3565) Bool)

(assert (=> b!2749149 (= e!1732735 (validCacheMapUp!347 (cache!3708 cacheUp!717)))))

(assert (= (and d!796362 res!1153106) b!2749149))

(declare-fun m!3164689 () Bool)

(assert (=> b!2749149 m!3164689))

(assert (=> start!266518 d!796362))

(declare-fun d!796364 () Bool)

(declare-fun res!1153109 () Bool)

(declare-fun e!1732738 () Bool)

(assert (=> d!796364 (=> (not res!1153109) (not e!1732738))))

(assert (=> d!796364 (= res!1153109 ((_ is HashMap!3564) (cache!3707 cacheDown!730)))))

(assert (=> d!796364 (= (inv!43121 cacheDown!730) e!1732738)))

(declare-fun b!2749152 () Bool)

(declare-fun validCacheMapDown!378 (MutableMap!3564) Bool)

(assert (=> b!2749152 (= e!1732738 (validCacheMapDown!378 (cache!3707 cacheDown!730)))))

(assert (= (and d!796364 res!1153109) b!2749152))

(declare-fun m!3164691 () Bool)

(assert (=> b!2749152 m!3164691))

(assert (=> start!266518 d!796364))

(declare-fun d!796366 () Bool)

(assert (=> d!796366 (= (valid!2836 cacheDown!730) (validCacheMapDown!378 (cache!3707 cacheDown!730)))))

(declare-fun bs!490348 () Bool)

(assert (= bs!490348 d!796366))

(assert (=> bs!490348 m!3164691))

(assert (=> b!2749126 d!796366))

(declare-fun d!796368 () Bool)

(declare-fun lt!972224 () Int)

(assert (=> d!796368 (>= lt!972224 0)))

(declare-fun e!1732741 () Int)

(assert (=> d!796368 (= lt!972224 e!1732741)))

(declare-fun c!445006 () Bool)

(assert (=> d!796368 (= c!445006 ((_ is Nil!31742) Nil!31742))))

(assert (=> d!796368 (= (size!24510 Nil!31742) lt!972224)))

(declare-fun b!2749157 () Bool)

(assert (=> b!2749157 (= e!1732741 0)))

(declare-fun b!2749158 () Bool)

(assert (=> b!2749158 (= e!1732741 (+ 1 (size!24510 (t!227942 Nil!31742))))))

(assert (= (and d!796368 c!445006) b!2749157))

(assert (= (and d!796368 (not c!445006)) b!2749158))

(declare-fun m!3164693 () Bool)

(assert (=> b!2749158 m!3164693))

(assert (=> b!2749114 d!796368))

(declare-fun d!796370 () Bool)

(declare-fun list!12014 (Conc!9911) List!31842)

(assert (=> d!796370 (= (list!12013 (_1!18544 (_1!18545 lt!972209))) (list!12014 (c!445002 (_1!18544 (_1!18545 lt!972209)))))))

(declare-fun bs!490349 () Bool)

(assert (= bs!490349 d!796370))

(declare-fun m!3164695 () Bool)

(assert (=> bs!490349 m!3164695))

(assert (=> b!2749114 d!796370))

(declare-fun d!796372 () Bool)

(declare-fun lt!972225 () Int)

(assert (=> d!796372 (>= lt!972225 0)))

(declare-fun e!1732742 () Int)

(assert (=> d!796372 (= lt!972225 e!1732742)))

(declare-fun c!445007 () Bool)

(assert (=> d!796372 (= c!445007 ((_ is Nil!31742) lt!972214))))

(assert (=> d!796372 (= (size!24510 lt!972214) lt!972225)))

(declare-fun b!2749159 () Bool)

(assert (=> b!2749159 (= e!1732742 0)))

(declare-fun b!2749160 () Bool)

(assert (=> b!2749160 (= e!1732742 (+ 1 (size!24510 (t!227942 lt!972214))))))

(assert (= (and d!796372 c!445007) b!2749159))

(assert (= (and d!796372 (not c!445007)) b!2749160))

(declare-fun m!3164697 () Bool)

(assert (=> b!2749160 m!3164697))

(assert (=> b!2749114 d!796372))

(declare-fun b!2749165 () Bool)

(declare-fun e!1732745 () Bool)

(assert (=> b!2749165 (= e!1732745 true)))

(declare-fun d!796374 () Bool)

(assert (=> d!796374 e!1732745))

(assert (= d!796374 b!2749165))

(declare-fun order!17229 () Int)

(declare-fun order!17227 () Int)

(declare-fun lambda!100873 () Int)

(declare-fun dynLambda!13587 (Int Int) Int)

(declare-fun dynLambda!13588 (Int Int) Int)

(assert (=> b!2749165 (< (dynLambda!13587 order!17227 (toValue!6863 (transformation!4865 rule!196))) (dynLambda!13588 order!17229 lambda!100873))))

(declare-fun order!17231 () Int)

(declare-fun dynLambda!13589 (Int Int) Int)

(assert (=> b!2749165 (< (dynLambda!13589 order!17231 (toChars!6722 (transformation!4865 rule!196))) (dynLambda!13588 order!17229 lambda!100873))))

(declare-fun dynLambda!13590 (Int TokenValue!5087) BalanceConc!19436)

(declare-fun dynLambda!13591 (Int BalanceConc!19436) TokenValue!5087)

(assert (=> d!796374 (= (list!12013 (dynLambda!13590 (toChars!6722 (transformation!4865 rule!196)) (dynLambda!13591 (toValue!6863 (transformation!4865 rule!196)) (_1!18544 (_1!18545 lt!972209))))) (list!12013 (_1!18544 (_1!18545 lt!972209))))))

(declare-fun lt!972228 () Unit!45567)

(declare-fun ForallOf!542 (Int BalanceConc!19436) Unit!45567)

(assert (=> d!796374 (= lt!972228 (ForallOf!542 lambda!100873 (_1!18544 (_1!18545 lt!972209))))))

(assert (=> d!796374 (= (lemmaSemiInverse!1147 (transformation!4865 rule!196) (_1!18544 (_1!18545 lt!972209))) lt!972228)))

(declare-fun b_lambda!82937 () Bool)

(assert (=> (not b_lambda!82937) (not d!796374)))

(declare-fun t!227948 () Bool)

(declare-fun tb!152977 () Bool)

(assert (=> (and b!2749122 (= (toChars!6722 (transformation!4865 rule!196)) (toChars!6722 (transformation!4865 rule!196))) t!227948) tb!152977))

(declare-fun b!2749170 () Bool)

(declare-fun tp!867454 () Bool)

(declare-fun e!1732748 () Bool)

(assert (=> b!2749170 (= e!1732748 (and (inv!43118 (c!445002 (dynLambda!13590 (toChars!6722 (transformation!4865 rule!196)) (dynLambda!13591 (toValue!6863 (transformation!4865 rule!196)) (_1!18544 (_1!18545 lt!972209)))))) tp!867454))))

(declare-fun result!189174 () Bool)

(assert (=> tb!152977 (= result!189174 (and (inv!43119 (dynLambda!13590 (toChars!6722 (transformation!4865 rule!196)) (dynLambda!13591 (toValue!6863 (transformation!4865 rule!196)) (_1!18544 (_1!18545 lt!972209))))) e!1732748))))

(assert (= tb!152977 b!2749170))

(declare-fun m!3164699 () Bool)

(assert (=> b!2749170 m!3164699))

(declare-fun m!3164701 () Bool)

(assert (=> tb!152977 m!3164701))

(assert (=> d!796374 t!227948))

(declare-fun b_and!202393 () Bool)

(assert (= b_and!202385 (and (=> t!227948 result!189174) b_and!202393)))

(declare-fun b_lambda!82939 () Bool)

(assert (=> (not b_lambda!82939) (not d!796374)))

(declare-fun t!227950 () Bool)

(declare-fun tb!152979 () Bool)

(assert (=> (and b!2749122 (= (toValue!6863 (transformation!4865 rule!196)) (toValue!6863 (transformation!4865 rule!196))) t!227950) tb!152979))

(declare-fun result!189178 () Bool)

(declare-fun inv!21 (TokenValue!5087) Bool)

(assert (=> tb!152979 (= result!189178 (inv!21 (dynLambda!13591 (toValue!6863 (transformation!4865 rule!196)) (_1!18544 (_1!18545 lt!972209)))))))

(declare-fun m!3164703 () Bool)

(assert (=> tb!152979 m!3164703))

(assert (=> d!796374 t!227950))

(declare-fun b_and!202395 () Bool)

(assert (= b_and!202383 (and (=> t!227950 result!189178) b_and!202395)))

(assert (=> d!796374 m!3164617))

(declare-fun m!3164705 () Bool)

(assert (=> d!796374 m!3164705))

(declare-fun m!3164707 () Bool)

(assert (=> d!796374 m!3164707))

(assert (=> d!796374 m!3164705))

(declare-fun m!3164709 () Bool)

(assert (=> d!796374 m!3164709))

(assert (=> d!796374 m!3164707))

(declare-fun m!3164711 () Bool)

(assert (=> d!796374 m!3164711))

(assert (=> b!2749114 d!796374))

(declare-fun bm!177490 () Bool)

(declare-fun call!177495 () Regex!8023)

(declare-fun call!177499 () C!16204)

(declare-fun derivativeStep!2251 (Regex!8023 C!16204) Regex!8023)

(assert (=> bm!177490 (= call!177495 (derivativeStep!2251 (regex!4865 rule!196) call!177499))))

(declare-fun bm!177491 () Bool)

(declare-fun head!6119 (List!31842) C!16204)

(assert (=> bm!177491 (= call!177499 (head!6119 lt!972214))))

(declare-fun b!2749201 () Bool)

(declare-fun e!1732769 () Bool)

(declare-fun lt!972287 () tuple2!31646)

(assert (=> b!2749201 (= e!1732769 (>= (size!24510 (_1!18546 lt!972287)) (size!24510 Nil!31742)))))

(declare-fun b!2749202 () Bool)

(declare-fun e!1732771 () tuple2!31646)

(assert (=> b!2749202 (= e!1732771 (tuple2!31647 Nil!31742 lt!972214))))

(declare-fun b!2749203 () Bool)

(declare-fun e!1732773 () tuple2!31646)

(assert (=> b!2749203 (= e!1732773 (tuple2!31647 Nil!31742 lt!972214))))

(declare-fun bm!177492 () Bool)

(declare-fun call!177502 () Bool)

(declare-fun nullable!2613 (Regex!8023) Bool)

(assert (=> bm!177492 (= call!177502 (nullable!2613 (regex!4865 rule!196)))))

(declare-fun b!2749204 () Bool)

(declare-fun e!1732774 () Unit!45567)

(declare-fun Unit!45569 () Unit!45567)

(assert (=> b!2749204 (= e!1732774 Unit!45569)))

(declare-fun lt!972305 () Unit!45567)

(declare-fun call!177501 () Unit!45567)

(assert (=> b!2749204 (= lt!972305 call!177501)))

(declare-fun call!177500 () Bool)

(assert (=> b!2749204 call!177500))

(declare-fun lt!972311 () Unit!45567)

(assert (=> b!2749204 (= lt!972311 lt!972305)))

(declare-fun lt!972312 () Unit!45567)

(declare-fun call!177498 () Unit!45567)

(assert (=> b!2749204 (= lt!972312 call!177498)))

(assert (=> b!2749204 (= lt!972214 Nil!31742)))

(declare-fun lt!972296 () Unit!45567)

(assert (=> b!2749204 (= lt!972296 lt!972312)))

(assert (=> b!2749204 false))

(declare-fun bm!177493 () Bool)

(declare-fun lemmaIsPrefixRefl!1649 (List!31842 List!31842) Unit!45567)

(assert (=> bm!177493 (= call!177501 (lemmaIsPrefixRefl!1649 lt!972214 lt!972214))))

(declare-fun b!2749205 () Bool)

(declare-fun e!1732772 () tuple2!31646)

(assert (=> b!2749205 (= e!1732772 (tuple2!31647 Nil!31742 lt!972214))))

(declare-fun b!2749206 () Bool)

(assert (=> b!2749206 (= e!1732771 (tuple2!31647 Nil!31742 Nil!31742))))

(declare-fun b!2749207 () Bool)

(declare-fun c!445025 () Bool)

(assert (=> b!2749207 (= c!445025 call!177502)))

(declare-fun lt!972292 () Unit!45567)

(declare-fun lt!972289 () Unit!45567)

(assert (=> b!2749207 (= lt!972292 lt!972289)))

(assert (=> b!2749207 (= lt!972214 Nil!31742)))

(assert (=> b!2749207 (= lt!972289 call!177498)))

(declare-fun lt!972302 () Unit!45567)

(declare-fun lt!972293 () Unit!45567)

(assert (=> b!2749207 (= lt!972302 lt!972293)))

(assert (=> b!2749207 call!177500))

(assert (=> b!2749207 (= lt!972293 call!177501)))

(declare-fun e!1732775 () tuple2!31646)

(assert (=> b!2749207 (= e!1732775 e!1732771)))

(declare-fun bm!177494 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!430 (List!31842 List!31842 List!31842) Unit!45567)

(assert (=> bm!177494 (= call!177498 (lemmaIsPrefixSameLengthThenSameList!430 lt!972214 Nil!31742 lt!972214))))

(declare-fun b!2749208 () Bool)

(declare-fun e!1732770 () Bool)

(assert (=> b!2749208 (= e!1732770 e!1732769)))

(declare-fun res!1153115 () Bool)

(assert (=> b!2749208 (=> res!1153115 e!1732769)))

(assert (=> b!2749208 (= res!1153115 (isEmpty!18060 (_1!18546 lt!972287)))))

(declare-fun b!2749209 () Bool)

(assert (=> b!2749209 (= e!1732772 e!1732775)))

(declare-fun c!445026 () Bool)

(assert (=> b!2749209 (= c!445026 (= (size!24510 Nil!31742) (size!24510 lt!972214)))))

(declare-fun b!2749210 () Bool)

(declare-fun e!1732768 () tuple2!31646)

(assert (=> b!2749210 (= e!1732768 e!1732773)))

(declare-fun lt!972310 () tuple2!31646)

(declare-fun call!177497 () tuple2!31646)

(assert (=> b!2749210 (= lt!972310 call!177497)))

(declare-fun c!445024 () Bool)

(assert (=> b!2749210 (= c!445024 (isEmpty!18060 (_1!18546 lt!972310)))))

(declare-fun bm!177495 () Bool)

(declare-fun call!177496 () List!31842)

(declare-fun tail!4357 (List!31842) List!31842)

(assert (=> bm!177495 (= call!177496 (tail!4357 lt!972214))))

(declare-fun bm!177496 () Bool)

(declare-fun lt!972300 () List!31842)

(assert (=> bm!177496 (= call!177497 (findLongestMatchInner!807 call!177495 lt!972300 (+ (size!24510 Nil!31742) 1) call!177496 lt!972214 (size!24510 lt!972214)))))

(declare-fun b!2749211 () Bool)

(assert (=> b!2749211 (= e!1732773 lt!972310)))

(declare-fun bm!177497 () Bool)

(declare-fun isPrefix!2523 (List!31842 List!31842) Bool)

(assert (=> bm!177497 (= call!177500 (isPrefix!2523 lt!972214 lt!972214))))

(declare-fun b!2749212 () Bool)

(declare-fun Unit!45570 () Unit!45567)

(assert (=> b!2749212 (= e!1732774 Unit!45570)))

(declare-fun b!2749213 () Bool)

(assert (=> b!2749213 (= e!1732768 call!177497)))

(declare-fun d!796376 () Bool)

(assert (=> d!796376 e!1732770))

(declare-fun res!1153114 () Bool)

(assert (=> d!796376 (=> (not res!1153114) (not e!1732770))))

(declare-fun ++!7879 (List!31842 List!31842) List!31842)

(assert (=> d!796376 (= res!1153114 (= (++!7879 (_1!18546 lt!972287) (_2!18546 lt!972287)) lt!972214))))

(assert (=> d!796376 (= lt!972287 e!1732772)))

(declare-fun c!445023 () Bool)

(declare-fun lostCause!721 (Regex!8023) Bool)

(assert (=> d!796376 (= c!445023 (lostCause!721 (regex!4865 rule!196)))))

(declare-fun lt!972297 () Unit!45567)

(declare-fun Unit!45571 () Unit!45567)

(assert (=> d!796376 (= lt!972297 Unit!45571)))

(declare-fun getSuffix!1209 (List!31842 List!31842) List!31842)

(assert (=> d!796376 (= (getSuffix!1209 lt!972214 Nil!31742) lt!972214)))

(declare-fun lt!972291 () Unit!45567)

(declare-fun lt!972295 () Unit!45567)

(assert (=> d!796376 (= lt!972291 lt!972295)))

(declare-fun lt!972303 () List!31842)

(assert (=> d!796376 (= lt!972214 lt!972303)))

(declare-fun lemmaSamePrefixThenSameSuffix!1111 (List!31842 List!31842 List!31842 List!31842 List!31842) Unit!45567)

(assert (=> d!796376 (= lt!972295 (lemmaSamePrefixThenSameSuffix!1111 Nil!31742 lt!972214 Nil!31742 lt!972303 lt!972214))))

(assert (=> d!796376 (= lt!972303 (getSuffix!1209 lt!972214 Nil!31742))))

(declare-fun lt!972307 () Unit!45567)

(declare-fun lt!972308 () Unit!45567)

(assert (=> d!796376 (= lt!972307 lt!972308)))

(assert (=> d!796376 (isPrefix!2523 Nil!31742 (++!7879 Nil!31742 lt!972214))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1637 (List!31842 List!31842) Unit!45567)

(assert (=> d!796376 (= lt!972308 (lemmaConcatTwoListThenFirstIsPrefix!1637 Nil!31742 lt!972214))))

(assert (=> d!796376 (validRegex!3323 (regex!4865 rule!196))))

(assert (=> d!796376 (= (findLongestMatchInner!807 (regex!4865 rule!196) Nil!31742 (size!24510 Nil!31742) lt!972214 lt!972214 (size!24510 lt!972214)) lt!972287)))

(declare-fun b!2749214 () Bool)

(declare-fun c!445022 () Bool)

(assert (=> b!2749214 (= c!445022 call!177502)))

(declare-fun lt!972306 () Unit!45567)

(declare-fun lt!972304 () Unit!45567)

(assert (=> b!2749214 (= lt!972306 lt!972304)))

(declare-fun lt!972288 () C!16204)

(declare-fun lt!972294 () List!31842)

(assert (=> b!2749214 (= (++!7879 (++!7879 Nil!31742 (Cons!31742 lt!972288 Nil!31742)) lt!972294) lt!972214)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!840 (List!31842 C!16204 List!31842 List!31842) Unit!45567)

(assert (=> b!2749214 (= lt!972304 (lemmaMoveElementToOtherListKeepsConcatEq!840 Nil!31742 lt!972288 lt!972294 lt!972214))))

(assert (=> b!2749214 (= lt!972294 (tail!4357 lt!972214))))

(assert (=> b!2749214 (= lt!972288 (head!6119 lt!972214))))

(declare-fun lt!972301 () Unit!45567)

(declare-fun lt!972286 () Unit!45567)

(assert (=> b!2749214 (= lt!972301 lt!972286)))

(assert (=> b!2749214 (isPrefix!2523 (++!7879 Nil!31742 (Cons!31742 (head!6119 (getSuffix!1209 lt!972214 Nil!31742)) Nil!31742)) lt!972214)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!428 (List!31842 List!31842) Unit!45567)

(assert (=> b!2749214 (= lt!972286 (lemmaAddHeadSuffixToPrefixStillPrefix!428 Nil!31742 lt!972214))))

(declare-fun lt!972299 () Unit!45567)

(declare-fun lt!972285 () Unit!45567)

(assert (=> b!2749214 (= lt!972299 lt!972285)))

(assert (=> b!2749214 (= lt!972285 (lemmaAddHeadSuffixToPrefixStillPrefix!428 Nil!31742 lt!972214))))

(assert (=> b!2749214 (= lt!972300 (++!7879 Nil!31742 (Cons!31742 (head!6119 lt!972214) Nil!31742)))))

(declare-fun lt!972290 () Unit!45567)

(assert (=> b!2749214 (= lt!972290 e!1732774)))

(declare-fun c!445021 () Bool)

(assert (=> b!2749214 (= c!445021 (= (size!24510 Nil!31742) (size!24510 lt!972214)))))

(declare-fun lt!972298 () Unit!45567)

(declare-fun lt!972309 () Unit!45567)

(assert (=> b!2749214 (= lt!972298 lt!972309)))

(assert (=> b!2749214 (<= (size!24510 Nil!31742) (size!24510 lt!972214))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!231 (List!31842 List!31842) Unit!45567)

(assert (=> b!2749214 (= lt!972309 (lemmaIsPrefixThenSmallerEqSize!231 Nil!31742 lt!972214))))

(assert (=> b!2749214 (= e!1732775 e!1732768)))

(assert (= (and d!796376 c!445023) b!2749205))

(assert (= (and d!796376 (not c!445023)) b!2749209))

(assert (= (and b!2749209 c!445026) b!2749207))

(assert (= (and b!2749209 (not c!445026)) b!2749214))

(assert (= (and b!2749207 c!445025) b!2749206))

(assert (= (and b!2749207 (not c!445025)) b!2749202))

(assert (= (and b!2749214 c!445021) b!2749204))

(assert (= (and b!2749214 (not c!445021)) b!2749212))

(assert (= (and b!2749214 c!445022) b!2749210))

(assert (= (and b!2749214 (not c!445022)) b!2749213))

(assert (= (and b!2749210 c!445024) b!2749203))

(assert (= (and b!2749210 (not c!445024)) b!2749211))

(assert (= (or b!2749210 b!2749213) bm!177491))

(assert (= (or b!2749210 b!2749213) bm!177495))

(assert (= (or b!2749210 b!2749213) bm!177490))

(assert (= (or b!2749210 b!2749213) bm!177496))

(assert (= (or b!2749207 b!2749204) bm!177497))

(assert (= (or b!2749207 b!2749214) bm!177492))

(assert (= (or b!2749207 b!2749204) bm!177494))

(assert (= (or b!2749207 b!2749204) bm!177493))

(assert (= (and d!796376 res!1153114) b!2749208))

(assert (= (and b!2749208 (not res!1153115)) b!2749201))

(declare-fun m!3164713 () Bool)

(assert (=> b!2749214 m!3164713))

(declare-fun m!3164715 () Bool)

(assert (=> b!2749214 m!3164715))

(declare-fun m!3164717 () Bool)

(assert (=> b!2749214 m!3164717))

(declare-fun m!3164719 () Bool)

(assert (=> b!2749214 m!3164719))

(assert (=> b!2749214 m!3164619))

(declare-fun m!3164721 () Bool)

(assert (=> b!2749214 m!3164721))

(declare-fun m!3164723 () Bool)

(assert (=> b!2749214 m!3164723))

(declare-fun m!3164725 () Bool)

(assert (=> b!2749214 m!3164725))

(assert (=> b!2749214 m!3164713))

(declare-fun m!3164727 () Bool)

(assert (=> b!2749214 m!3164727))

(declare-fun m!3164729 () Bool)

(assert (=> b!2749214 m!3164729))

(assert (=> b!2749214 m!3164727))

(declare-fun m!3164731 () Bool)

(assert (=> b!2749214 m!3164731))

(declare-fun m!3164733 () Bool)

(assert (=> b!2749214 m!3164733))

(assert (=> b!2749214 m!3164609))

(assert (=> b!2749214 m!3164731))

(declare-fun m!3164735 () Bool)

(assert (=> b!2749214 m!3164735))

(declare-fun m!3164737 () Bool)

(assert (=> bm!177493 m!3164737))

(declare-fun m!3164739 () Bool)

(assert (=> bm!177497 m!3164739))

(declare-fun m!3164741 () Bool)

(assert (=> bm!177494 m!3164741))

(declare-fun m!3164743 () Bool)

(assert (=> b!2749208 m!3164743))

(assert (=> bm!177496 m!3164619))

(declare-fun m!3164745 () Bool)

(assert (=> bm!177496 m!3164745))

(assert (=> bm!177491 m!3164719))

(assert (=> bm!177495 m!3164735))

(declare-fun m!3164747 () Bool)

(assert (=> b!2749210 m!3164747))

(declare-fun m!3164749 () Bool)

(assert (=> d!796376 m!3164749))

(declare-fun m!3164751 () Bool)

(assert (=> d!796376 m!3164751))

(declare-fun m!3164753 () Bool)

(assert (=> d!796376 m!3164753))

(declare-fun m!3164755 () Bool)

(assert (=> d!796376 m!3164755))

(declare-fun m!3164757 () Bool)

(assert (=> d!796376 m!3164757))

(assert (=> d!796376 m!3164713))

(declare-fun m!3164759 () Bool)

(assert (=> d!796376 m!3164759))

(assert (=> d!796376 m!3164671))

(assert (=> d!796376 m!3164749))

(declare-fun m!3164761 () Bool)

(assert (=> bm!177490 m!3164761))

(declare-fun m!3164763 () Bool)

(assert (=> b!2749201 m!3164763))

(assert (=> b!2749201 m!3164609))

(declare-fun m!3164765 () Bool)

(assert (=> bm!177492 m!3164765))

(assert (=> b!2749114 d!796376))

(declare-fun d!796378 () Bool)

(assert (=> d!796378 (= (isEmpty!18060 (_1!18546 lt!972213)) ((_ is Nil!31742) (_1!18546 lt!972213)))))

(assert (=> b!2749114 d!796378))

(declare-fun d!796380 () Bool)

(declare-fun lt!972315 () Int)

(assert (=> d!796380 (= lt!972315 (size!24510 (list!12013 (_1!18544 (_1!18545 lt!972209)))))))

(declare-fun size!24511 (Conc!9911) Int)

(assert (=> d!796380 (= lt!972315 (size!24511 (c!445002 (_1!18544 (_1!18545 lt!972209)))))))

(assert (=> d!796380 (= (size!24509 (_1!18544 (_1!18545 lt!972209))) lt!972315)))

(declare-fun bs!490350 () Bool)

(assert (= bs!490350 d!796380))

(assert (=> bs!490350 m!3164617))

(assert (=> bs!490350 m!3164617))

(declare-fun m!3164767 () Bool)

(assert (=> bs!490350 m!3164767))

(declare-fun m!3164769 () Bool)

(assert (=> bs!490350 m!3164769))

(assert (=> b!2749114 d!796380))

(declare-fun d!796382 () Bool)

(assert (=> d!796382 (= (list!12013 input!1561) (list!12014 (c!445002 input!1561)))))

(declare-fun bs!490351 () Bool)

(assert (= bs!490351 d!796382))

(declare-fun m!3164771 () Bool)

(assert (=> bs!490351 m!3164771))

(assert (=> b!2749114 d!796382))

(declare-fun d!796384 () Bool)

(assert (=> d!796384 (= (apply!7432 (transformation!4865 rule!196) (_1!18544 (_1!18545 lt!972209))) (dynLambda!13591 (toValue!6863 (transformation!4865 rule!196)) (_1!18544 (_1!18545 lt!972209))))))

(declare-fun b_lambda!82941 () Bool)

(assert (=> (not b_lambda!82941) (not d!796384)))

(assert (=> d!796384 t!227950))

(declare-fun b_and!202397 () Bool)

(assert (= b_and!202395 (and (=> t!227950 result!189178) b_and!202397)))

(assert (=> d!796384 m!3164705))

(assert (=> b!2749114 d!796384))

(declare-fun d!796386 () Bool)

(declare-fun e!1732778 () Bool)

(assert (=> d!796386 e!1732778))

(declare-fun res!1153118 () Bool)

(assert (=> d!796386 (=> res!1153118 e!1732778)))

(assert (=> d!796386 (= res!1153118 (isEmpty!18060 (_1!18546 (findLongestMatchInner!807 (regex!4865 rule!196) Nil!31742 (size!24510 Nil!31742) lt!972214 lt!972214 (size!24510 lt!972214)))))))

(declare-fun lt!972318 () Unit!45567)

(declare-fun choose!16081 (Regex!8023 List!31842) Unit!45567)

(assert (=> d!796386 (= lt!972318 (choose!16081 (regex!4865 rule!196) lt!972214))))

(assert (=> d!796386 (validRegex!3323 (regex!4865 rule!196))))

(assert (=> d!796386 (= (longestMatchIsAcceptedByMatchOrIsEmpty!780 (regex!4865 rule!196) lt!972214) lt!972318)))

(declare-fun b!2749217 () Bool)

(assert (=> b!2749217 (= e!1732778 (matchR!3660 (regex!4865 rule!196) (_1!18546 (findLongestMatchInner!807 (regex!4865 rule!196) Nil!31742 (size!24510 Nil!31742) lt!972214 lt!972214 (size!24510 lt!972214)))))))

(assert (= (and d!796386 (not res!1153118)) b!2749217))

(declare-fun m!3164773 () Bool)

(assert (=> d!796386 m!3164773))

(assert (=> d!796386 m!3164609))

(assert (=> d!796386 m!3164619))

(assert (=> d!796386 m!3164621))

(assert (=> d!796386 m!3164619))

(assert (=> d!796386 m!3164609))

(assert (=> d!796386 m!3164671))

(declare-fun m!3164775 () Bool)

(assert (=> d!796386 m!3164775))

(assert (=> b!2749217 m!3164609))

(assert (=> b!2749217 m!3164619))

(assert (=> b!2749217 m!3164609))

(assert (=> b!2749217 m!3164619))

(assert (=> b!2749217 m!3164621))

(declare-fun m!3164777 () Bool)

(assert (=> b!2749217 m!3164777))

(assert (=> b!2749114 d!796386))

(declare-fun d!796388 () Bool)

(assert (=> d!796388 (= (valid!2837 (_2!18545 lt!972209)) (validCacheMapUp!347 (cache!3708 (_2!18545 lt!972209))))))

(declare-fun bs!490352 () Bool)

(assert (= bs!490352 d!796388))

(declare-fun m!3164779 () Bool)

(assert (=> bs!490352 m!3164779))

(assert (=> b!2749123 d!796388))

(declare-fun d!796390 () Bool)

(declare-fun c!445029 () Bool)

(assert (=> d!796390 (= c!445029 ((_ is Node!9911) (c!445002 input!1561)))))

(declare-fun e!1732783 () Bool)

(assert (=> d!796390 (= (inv!43118 (c!445002 input!1561)) e!1732783)))

(declare-fun b!2749224 () Bool)

(declare-fun inv!43122 (Conc!9911) Bool)

(assert (=> b!2749224 (= e!1732783 (inv!43122 (c!445002 input!1561)))))

(declare-fun b!2749225 () Bool)

(declare-fun e!1732784 () Bool)

(assert (=> b!2749225 (= e!1732783 e!1732784)))

(declare-fun res!1153121 () Bool)

(assert (=> b!2749225 (= res!1153121 (not ((_ is Leaf!15091) (c!445002 input!1561))))))

(assert (=> b!2749225 (=> res!1153121 e!1732784)))

(declare-fun b!2749226 () Bool)

(declare-fun inv!43123 (Conc!9911) Bool)

(assert (=> b!2749226 (= e!1732784 (inv!43123 (c!445002 input!1561)))))

(assert (= (and d!796390 c!445029) b!2749224))

(assert (= (and d!796390 (not c!445029)) b!2749225))

(assert (= (and b!2749225 (not res!1153121)) b!2749226))

(declare-fun m!3164781 () Bool)

(assert (=> b!2749224 m!3164781))

(declare-fun m!3164783 () Bool)

(assert (=> b!2749226 m!3164783))

(assert (=> b!2749140 d!796390))

(declare-fun d!796392 () Bool)

(assert (=> d!796392 (= (array_inv!4155 (_keys!3958 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717))))))) (bvsge (size!24507 (_keys!3958 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717))))))) #b00000000000000000000000000000000))))

(assert (=> b!2749133 d!796392))

(declare-fun d!796394 () Bool)

(assert (=> d!796394 (= (array_inv!4157 (_values!3939 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717))))))) (bvsge (size!24506 (_values!3939 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717))))))) #b00000000000000000000000000000000))))

(assert (=> b!2749133 d!796394))

(declare-fun bs!490353 () Bool)

(declare-fun b!2749244 () Bool)

(assert (= bs!490353 (and b!2749244 d!796374)))

(declare-fun lambda!100878 () Int)

(assert (=> bs!490353 (= lambda!100878 lambda!100873)))

(declare-fun b!2749252 () Bool)

(declare-fun e!1732805 () Bool)

(assert (=> b!2749252 (= e!1732805 true)))

(declare-fun b!2749251 () Bool)

(declare-fun e!1732804 () Bool)

(assert (=> b!2749251 (= e!1732804 e!1732805)))

(assert (=> b!2749244 e!1732804))

(assert (= b!2749251 b!2749252))

(assert (= b!2749244 b!2749251))

(assert (=> b!2749252 (< (dynLambda!13587 order!17227 (toValue!6863 (transformation!4865 rule!196))) (dynLambda!13588 order!17229 lambda!100878))))

(assert (=> b!2749252 (< (dynLambda!13589 order!17231 (toChars!6722 (transformation!4865 rule!196))) (dynLambda!13588 order!17229 lambda!100878))))

(declare-fun b!2749239 () Bool)

(declare-fun e!1732796 () Bool)

(declare-fun e!1732799 () Bool)

(assert (=> b!2749239 (= e!1732796 e!1732799)))

(declare-fun res!1153133 () Bool)

(assert (=> b!2749239 (=> (not res!1153133) (not e!1732799))))

(declare-fun lt!972347 () Option!6246)

(declare-fun get!9856 (Option!6246) tuple2!31636)

(declare-datatypes ((tuple2!31648 0))(
  ( (tuple2!31649 (_1!18547 Token!9132) (_2!18547 List!31842)) )
))
(declare-datatypes ((Option!6247 0))(
  ( (None!6246) (Some!6246 (v!33358 tuple2!31648)) )
))
(declare-fun get!9857 (Option!6247) tuple2!31648)

(declare-fun maxPrefixOneRule!1508 (LexerInterface!4456 Rule!9530 List!31842) Option!6247)

(assert (=> b!2749239 (= res!1153133 (= (_1!18539 (get!9856 lt!972347)) (_1!18547 (get!9857 (maxPrefixOneRule!1508 thiss!16130 rule!196 (list!12013 input!1561))))))))

(declare-fun b!2749240 () Bool)

(declare-fun e!1732797 () Bool)

(declare-fun lt!972340 () List!31842)

(assert (=> b!2749240 (= e!1732797 (matchR!3660 (regex!4865 rule!196) (_1!18546 (findLongestMatchInner!807 (regex!4865 rule!196) Nil!31742 (size!24510 Nil!31742) lt!972340 lt!972340 (size!24510 lt!972340)))))))

(declare-fun b!2749241 () Bool)

(assert (=> b!2749241 (= e!1732799 (= (list!12013 (_2!18539 (get!9856 lt!972347))) (_2!18547 (get!9857 (maxPrefixOneRule!1508 thiss!16130 rule!196 (list!12013 input!1561))))))))

(declare-fun b!2749242 () Bool)

(declare-fun e!1732798 () Option!6246)

(assert (=> b!2749242 (= e!1732798 None!6245)))

(declare-fun d!796396 () Bool)

(declare-fun e!1732795 () Bool)

(assert (=> d!796396 e!1732795))

(declare-fun res!1153130 () Bool)

(assert (=> d!796396 (=> (not res!1153130) (not e!1732795))))

(declare-fun isDefined!4933 (Option!6246) Bool)

(declare-fun isDefined!4934 (Option!6247) Bool)

(assert (=> d!796396 (= res!1153130 (= (isDefined!4933 lt!972347) (isDefined!4934 (maxPrefixOneRule!1508 thiss!16130 rule!196 (list!12013 input!1561)))))))

(assert (=> d!796396 (= lt!972347 e!1732798)))

(declare-fun c!445033 () Bool)

(declare-fun lt!972342 () tuple2!31644)

(assert (=> d!796396 (= c!445033 (isEmpty!18061 (_1!18544 lt!972342)))))

(assert (=> d!796396 (= lt!972342 (findLongestMatchWithZipperSequence!198 (regex!4865 rule!196) input!1561))))

(assert (=> d!796396 (ruleValid!1601 thiss!16130 rule!196)))

(assert (=> d!796396 (= (maxPrefixOneRuleZipperSequence!504 thiss!16130 rule!196 input!1561) lt!972347)))

(declare-fun b!2749243 () Bool)

(assert (=> b!2749243 (= e!1732795 e!1732796)))

(declare-fun res!1153132 () Bool)

(assert (=> b!2749243 (=> res!1153132 e!1732796)))

(assert (=> b!2749243 (= res!1153132 (not (isDefined!4933 lt!972347)))))

(assert (=> b!2749244 (= e!1732798 (Some!6245 (tuple2!31637 (Token!9133 (apply!7432 (transformation!4865 rule!196) (_1!18544 lt!972342)) rule!196 (size!24509 (_1!18544 lt!972342)) (list!12013 (_1!18544 lt!972342))) (_2!18544 lt!972342))))))

(assert (=> b!2749244 (= lt!972340 (list!12013 input!1561))))

(declare-fun lt!972341 () Unit!45567)

(assert (=> b!2749244 (= lt!972341 (longestMatchIsAcceptedByMatchOrIsEmpty!780 (regex!4865 rule!196) lt!972340))))

(declare-fun res!1153131 () Bool)

(assert (=> b!2749244 (= res!1153131 (isEmpty!18060 (_1!18546 (findLongestMatchInner!807 (regex!4865 rule!196) Nil!31742 (size!24510 Nil!31742) lt!972340 lt!972340 (size!24510 lt!972340)))))))

(assert (=> b!2749244 (=> res!1153131 e!1732797)))

(assert (=> b!2749244 e!1732797))

(declare-fun lt!972345 () Unit!45567)

(assert (=> b!2749244 (= lt!972345 lt!972341)))

(declare-fun lt!972339 () Unit!45567)

(declare-fun lemmaInv!837 (TokenValueInjection!9614) Unit!45567)

(assert (=> b!2749244 (= lt!972339 (lemmaInv!837 (transformation!4865 rule!196)))))

(declare-fun lt!972348 () Unit!45567)

(assert (=> b!2749244 (= lt!972348 (ForallOf!542 lambda!100878 (_1!18544 lt!972342)))))

(declare-fun lt!972343 () Unit!45567)

(declare-fun seqFromList!3227 (List!31842) BalanceConc!19436)

(assert (=> b!2749244 (= lt!972343 (ForallOf!542 lambda!100878 (seqFromList!3227 (list!12013 (_1!18544 lt!972342)))))))

(declare-fun lt!972344 () Option!6246)

(assert (=> b!2749244 (= lt!972344 (Some!6245 (tuple2!31637 (Token!9133 (apply!7432 (transformation!4865 rule!196) (_1!18544 lt!972342)) rule!196 (size!24509 (_1!18544 lt!972342)) (list!12013 (_1!18544 lt!972342))) (_2!18544 lt!972342))))))

(declare-fun lt!972346 () Unit!45567)

(declare-fun lemmaEqSameImage!743 (TokenValueInjection!9614 BalanceConc!19436 BalanceConc!19436) Unit!45567)

(assert (=> b!2749244 (= lt!972346 (lemmaEqSameImage!743 (transformation!4865 rule!196) (_1!18544 lt!972342) (seqFromList!3227 (list!12013 (_1!18544 lt!972342)))))))

(assert (= (and d!796396 c!445033) b!2749242))

(assert (= (and d!796396 (not c!445033)) b!2749244))

(assert (= (and b!2749244 (not res!1153131)) b!2749240))

(assert (= (and d!796396 res!1153130) b!2749243))

(assert (= (and b!2749243 (not res!1153132)) b!2749239))

(assert (= (and b!2749239 res!1153133) b!2749241))

(assert (=> b!2749240 m!3164609))

(declare-fun m!3164785 () Bool)

(assert (=> b!2749240 m!3164785))

(assert (=> b!2749240 m!3164609))

(assert (=> b!2749240 m!3164785))

(declare-fun m!3164787 () Bool)

(assert (=> b!2749240 m!3164787))

(declare-fun m!3164789 () Bool)

(assert (=> b!2749240 m!3164789))

(declare-fun m!3164791 () Bool)

(assert (=> b!2749239 m!3164791))

(assert (=> b!2749239 m!3164611))

(assert (=> b!2749239 m!3164611))

(declare-fun m!3164793 () Bool)

(assert (=> b!2749239 m!3164793))

(assert (=> b!2749239 m!3164793))

(declare-fun m!3164795 () Bool)

(assert (=> b!2749239 m!3164795))

(assert (=> d!796396 m!3164669))

(assert (=> d!796396 m!3164611))

(assert (=> d!796396 m!3164793))

(declare-fun m!3164797 () Bool)

(assert (=> d!796396 m!3164797))

(declare-fun m!3164799 () Bool)

(assert (=> d!796396 m!3164799))

(assert (=> d!796396 m!3164611))

(assert (=> d!796396 m!3164655))

(assert (=> d!796396 m!3164793))

(declare-fun m!3164801 () Bool)

(assert (=> d!796396 m!3164801))

(declare-fun m!3164803 () Bool)

(assert (=> b!2749241 m!3164803))

(assert (=> b!2749241 m!3164611))

(assert (=> b!2749241 m!3164793))

(assert (=> b!2749241 m!3164791))

(assert (=> b!2749241 m!3164611))

(assert (=> b!2749241 m!3164793))

(assert (=> b!2749241 m!3164795))

(declare-fun m!3164805 () Bool)

(assert (=> b!2749244 m!3164805))

(assert (=> b!2749244 m!3164609))

(assert (=> b!2749244 m!3164785))

(assert (=> b!2749244 m!3164787))

(assert (=> b!2749244 m!3164609))

(declare-fun m!3164807 () Bool)

(assert (=> b!2749244 m!3164807))

(declare-fun m!3164809 () Bool)

(assert (=> b!2749244 m!3164809))

(assert (=> b!2749244 m!3164807))

(declare-fun m!3164811 () Bool)

(assert (=> b!2749244 m!3164811))

(declare-fun m!3164813 () Bool)

(assert (=> b!2749244 m!3164813))

(declare-fun m!3164815 () Bool)

(assert (=> b!2749244 m!3164815))

(declare-fun m!3164817 () Bool)

(assert (=> b!2749244 m!3164817))

(assert (=> b!2749244 m!3164813))

(assert (=> b!2749244 m!3164807))

(declare-fun m!3164819 () Bool)

(assert (=> b!2749244 m!3164819))

(declare-fun m!3164821 () Bool)

(assert (=> b!2749244 m!3164821))

(assert (=> b!2749244 m!3164611))

(declare-fun m!3164823 () Bool)

(assert (=> b!2749244 m!3164823))

(assert (=> b!2749244 m!3164785))

(assert (=> b!2749243 m!3164797))

(assert (=> b!2749131 d!796396))

(declare-fun d!796398 () Bool)

(declare-fun lt!972351 () Bool)

(assert (=> d!796398 (= lt!972351 (isEmpty!18060 (list!12013 (_1!18544 (_1!18545 lt!972209)))))))

(declare-fun isEmpty!18062 (Conc!9911) Bool)

(assert (=> d!796398 (= lt!972351 (isEmpty!18062 (c!445002 (_1!18544 (_1!18545 lt!972209)))))))

(assert (=> d!796398 (= (isEmpty!18061 (_1!18544 (_1!18545 lt!972209))) lt!972351)))

(declare-fun bs!490354 () Bool)

(assert (= bs!490354 d!796398))

(assert (=> bs!490354 m!3164617))

(assert (=> bs!490354 m!3164617))

(declare-fun m!3164825 () Bool)

(assert (=> bs!490354 m!3164825))

(declare-fun m!3164827 () Bool)

(assert (=> bs!490354 m!3164827))

(assert (=> b!2749131 d!796398))

(declare-fun d!796400 () Bool)

(assert (=> d!796400 (= (array_inv!4155 (_keys!3959 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730))))))) (bvsge (size!24507 (_keys!3959 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730))))))) #b00000000000000000000000000000000))))

(assert (=> b!2749121 d!796400))

(declare-fun d!796402 () Bool)

(assert (=> d!796402 (= (array_inv!4156 (_values!3940 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730))))))) (bvsge (size!24508 (_values!3940 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730))))))) #b00000000000000000000000000000000))))

(assert (=> b!2749121 d!796402))

(declare-fun d!796404 () Bool)

(assert (=> d!796404 (= (inv!43113 (tag!5369 rule!196)) (= (mod (str.len (value!156243 (tag!5369 rule!196))) 2) 0))))

(assert (=> b!2749138 d!796404))

(declare-fun d!796406 () Bool)

(declare-fun res!1153136 () Bool)

(declare-fun e!1732808 () Bool)

(assert (=> d!796406 (=> (not res!1153136) (not e!1732808))))

(declare-fun semiInverseModEq!2009 (Int Int) Bool)

(assert (=> d!796406 (= res!1153136 (semiInverseModEq!2009 (toChars!6722 (transformation!4865 rule!196)) (toValue!6863 (transformation!4865 rule!196))))))

(assert (=> d!796406 (= (inv!43117 (transformation!4865 rule!196)) e!1732808)))

(declare-fun b!2749255 () Bool)

(declare-fun equivClasses!1910 (Int Int) Bool)

(assert (=> b!2749255 (= e!1732808 (equivClasses!1910 (toChars!6722 (transformation!4865 rule!196)) (toValue!6863 (transformation!4865 rule!196))))))

(assert (= (and d!796406 res!1153136) b!2749255))

(declare-fun m!3164829 () Bool)

(assert (=> d!796406 m!3164829))

(declare-fun m!3164831 () Bool)

(assert (=> b!2749255 m!3164831))

(assert (=> b!2749138 d!796406))

(declare-fun b!2749284 () Bool)

(declare-fun e!1732824 () Bool)

(declare-fun e!1732826 () Bool)

(assert (=> b!2749284 (= e!1732824 e!1732826)))

(declare-fun res!1153154 () Bool)

(assert (=> b!2749284 (=> (not res!1153154) (not e!1732826))))

(declare-fun lt!972354 () Bool)

(assert (=> b!2749284 (= res!1153154 (not lt!972354))))

(declare-fun b!2749285 () Bool)

(declare-fun res!1153157 () Bool)

(declare-fun e!1732827 () Bool)

(assert (=> b!2749285 (=> (not res!1153157) (not e!1732827))))

(assert (=> b!2749285 (= res!1153157 (isEmpty!18060 (tail!4357 (_1!18546 lt!972213))))))

(declare-fun d!796408 () Bool)

(declare-fun e!1732829 () Bool)

(assert (=> d!796408 e!1732829))

(declare-fun c!445041 () Bool)

(assert (=> d!796408 (= c!445041 ((_ is EmptyExpr!8023) (regex!4865 rule!196)))))

(declare-fun e!1732823 () Bool)

(assert (=> d!796408 (= lt!972354 e!1732823)))

(declare-fun c!445042 () Bool)

(assert (=> d!796408 (= c!445042 (isEmpty!18060 (_1!18546 lt!972213)))))

(assert (=> d!796408 (validRegex!3323 (regex!4865 rule!196))))

(assert (=> d!796408 (= (matchR!3660 (regex!4865 rule!196) (_1!18546 lt!972213)) lt!972354)))

(declare-fun bm!177500 () Bool)

(declare-fun call!177505 () Bool)

(assert (=> bm!177500 (= call!177505 (isEmpty!18060 (_1!18546 lt!972213)))))

(declare-fun b!2749286 () Bool)

(declare-fun e!1732825 () Bool)

(assert (=> b!2749286 (= e!1732825 (not (= (head!6119 (_1!18546 lt!972213)) (c!445003 (regex!4865 rule!196)))))))

(declare-fun b!2749287 () Bool)

(declare-fun e!1732828 () Bool)

(assert (=> b!2749287 (= e!1732829 e!1732828)))

(declare-fun c!445040 () Bool)

(assert (=> b!2749287 (= c!445040 ((_ is EmptyLang!8023) (regex!4865 rule!196)))))

(declare-fun b!2749288 () Bool)

(assert (=> b!2749288 (= e!1732827 (= (head!6119 (_1!18546 lt!972213)) (c!445003 (regex!4865 rule!196))))))

(declare-fun b!2749289 () Bool)

(declare-fun res!1153160 () Bool)

(assert (=> b!2749289 (=> res!1153160 e!1732825)))

(assert (=> b!2749289 (= res!1153160 (not (isEmpty!18060 (tail!4357 (_1!18546 lt!972213)))))))

(declare-fun b!2749290 () Bool)

(declare-fun res!1153153 () Bool)

(assert (=> b!2749290 (=> res!1153153 e!1732824)))

(assert (=> b!2749290 (= res!1153153 (not ((_ is ElementMatch!8023) (regex!4865 rule!196))))))

(assert (=> b!2749290 (= e!1732828 e!1732824)))

(declare-fun b!2749291 () Bool)

(declare-fun res!1153158 () Bool)

(assert (=> b!2749291 (=> (not res!1153158) (not e!1732827))))

(assert (=> b!2749291 (= res!1153158 (not call!177505))))

(declare-fun b!2749292 () Bool)

(assert (=> b!2749292 (= e!1732829 (= lt!972354 call!177505))))

(declare-fun b!2749293 () Bool)

(assert (=> b!2749293 (= e!1732823 (matchR!3660 (derivativeStep!2251 (regex!4865 rule!196) (head!6119 (_1!18546 lt!972213))) (tail!4357 (_1!18546 lt!972213))))))

(declare-fun b!2749294 () Bool)

(assert (=> b!2749294 (= e!1732828 (not lt!972354))))

(declare-fun b!2749295 () Bool)

(assert (=> b!2749295 (= e!1732826 e!1732825)))

(declare-fun res!1153159 () Bool)

(assert (=> b!2749295 (=> res!1153159 e!1732825)))

(assert (=> b!2749295 (= res!1153159 call!177505)))

(declare-fun b!2749296 () Bool)

(declare-fun res!1153156 () Bool)

(assert (=> b!2749296 (=> res!1153156 e!1732824)))

(assert (=> b!2749296 (= res!1153156 e!1732827)))

(declare-fun res!1153155 () Bool)

(assert (=> b!2749296 (=> (not res!1153155) (not e!1732827))))

(assert (=> b!2749296 (= res!1153155 lt!972354)))

(declare-fun b!2749297 () Bool)

(assert (=> b!2749297 (= e!1732823 (nullable!2613 (regex!4865 rule!196)))))

(assert (= (and d!796408 c!445042) b!2749297))

(assert (= (and d!796408 (not c!445042)) b!2749293))

(assert (= (and d!796408 c!445041) b!2749292))

(assert (= (and d!796408 (not c!445041)) b!2749287))

(assert (= (and b!2749287 c!445040) b!2749294))

(assert (= (and b!2749287 (not c!445040)) b!2749290))

(assert (= (and b!2749290 (not res!1153153)) b!2749296))

(assert (= (and b!2749296 res!1153155) b!2749291))

(assert (= (and b!2749291 res!1153158) b!2749285))

(assert (= (and b!2749285 res!1153157) b!2749288))

(assert (= (and b!2749296 (not res!1153156)) b!2749284))

(assert (= (and b!2749284 res!1153154) b!2749295))

(assert (= (and b!2749295 (not res!1153159)) b!2749289))

(assert (= (and b!2749289 (not res!1153160)) b!2749286))

(assert (= (or b!2749292 b!2749291 b!2749295) bm!177500))

(assert (=> b!2749297 m!3164765))

(assert (=> d!796408 m!3164623))

(assert (=> d!796408 m!3164671))

(assert (=> bm!177500 m!3164623))

(declare-fun m!3164833 () Bool)

(assert (=> b!2749286 m!3164833))

(assert (=> b!2749288 m!3164833))

(declare-fun m!3164835 () Bool)

(assert (=> b!2749285 m!3164835))

(assert (=> b!2749285 m!3164835))

(declare-fun m!3164837 () Bool)

(assert (=> b!2749285 m!3164837))

(assert (=> b!2749293 m!3164833))

(assert (=> b!2749293 m!3164833))

(declare-fun m!3164839 () Bool)

(assert (=> b!2749293 m!3164839))

(assert (=> b!2749293 m!3164835))

(assert (=> b!2749293 m!3164839))

(assert (=> b!2749293 m!3164835))

(declare-fun m!3164841 () Bool)

(assert (=> b!2749293 m!3164841))

(assert (=> b!2749289 m!3164835))

(assert (=> b!2749289 m!3164835))

(assert (=> b!2749289 m!3164837))

(assert (=> b!2749119 d!796408))

(declare-fun d!796410 () Bool)

(assert (=> d!796410 (= (valid!2836 (_3!2722 lt!972209)) (validCacheMapDown!378 (cache!3707 (_3!2722 lt!972209))))))

(declare-fun bs!490355 () Bool)

(assert (= bs!490355 d!796410))

(declare-fun m!3164843 () Bool)

(assert (=> bs!490355 m!3164843))

(assert (=> b!2749137 d!796410))

(declare-fun d!796412 () Bool)

(assert (=> d!796412 (= (valid!2837 cacheUp!717) (validCacheMapUp!347 (cache!3708 cacheUp!717)))))

(declare-fun bs!490356 () Bool)

(assert (= bs!490356 d!796412))

(assert (=> bs!490356 m!3164689))

(assert (=> b!2749128 d!796412))

(declare-fun d!796414 () Bool)

(declare-fun res!1153165 () Bool)

(declare-fun e!1732832 () Bool)

(assert (=> d!796414 (=> (not res!1153165) (not e!1732832))))

(assert (=> d!796414 (= res!1153165 (validRegex!3323 (regex!4865 rule!196)))))

(assert (=> d!796414 (= (ruleValid!1601 thiss!16130 rule!196) e!1732832)))

(declare-fun b!2749302 () Bool)

(declare-fun res!1153166 () Bool)

(assert (=> b!2749302 (=> (not res!1153166) (not e!1732832))))

(assert (=> b!2749302 (= res!1153166 (not (nullable!2613 (regex!4865 rule!196))))))

(declare-fun b!2749303 () Bool)

(assert (=> b!2749303 (= e!1732832 (not (= (tag!5369 rule!196) (String!35348 ""))))))

(assert (= (and d!796414 res!1153165) b!2749302))

(assert (= (and b!2749302 res!1153166) b!2749303))

(assert (=> d!796414 m!3164671))

(assert (=> b!2749302 m!3164765))

(assert (=> b!2749127 d!796414))

(declare-fun tp_is_empty!13949 () Bool)

(declare-fun e!1732839 () Bool)

(declare-fun tp!867465 () Bool)

(declare-fun setRes!21873 () Bool)

(declare-fun tp!867466 () Bool)

(declare-fun b!2749312 () Bool)

(declare-fun e!1732841 () Bool)

(declare-fun inv!43124 (Context!4482) Bool)

(assert (=> b!2749312 (= e!1732841 (and tp!867466 (inv!43124 (_2!18540 (_1!18541 (h!37166 (zeroValue!3918 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730)))))))))) e!1732839 tp_is_empty!13949 setRes!21873 tp!867465))))

(declare-fun condSetEmpty!21873 () Bool)

(assert (=> b!2749312 (= condSetEmpty!21873 (= (_2!18541 (h!37166 (zeroValue!3918 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730)))))))) ((as const (Array Context!4482 Bool)) false)))))

(assert (=> b!2749121 (= tp!867438 e!1732841)))

(declare-fun setIsEmpty!21873 () Bool)

(assert (=> setIsEmpty!21873 setRes!21873))

(declare-fun b!2749313 () Bool)

(declare-fun tp!867467 () Bool)

(assert (=> b!2749313 (= e!1732839 tp!867467)))

(declare-fun b!2749314 () Bool)

(declare-fun e!1732840 () Bool)

(declare-fun tp!867468 () Bool)

(assert (=> b!2749314 (= e!1732840 tp!867468)))

(declare-fun tp!867469 () Bool)

(declare-fun setNonEmpty!21873 () Bool)

(declare-fun setElem!21873 () Context!4482)

(assert (=> setNonEmpty!21873 (= setRes!21873 (and tp!867469 (inv!43124 setElem!21873) e!1732840))))

(declare-fun setRest!21873 () (InoxSet Context!4482))

(assert (=> setNonEmpty!21873 (= (_2!18541 (h!37166 (zeroValue!3918 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730)))))))) ((_ map or) (store ((as const (Array Context!4482 Bool)) false) setElem!21873 true) setRest!21873))))

(assert (= b!2749312 b!2749313))

(assert (= (and b!2749312 condSetEmpty!21873) setIsEmpty!21873))

(assert (= (and b!2749312 (not condSetEmpty!21873)) setNonEmpty!21873))

(assert (= setNonEmpty!21873 b!2749314))

(assert (= (and b!2749121 ((_ is Cons!31746) (zeroValue!3918 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730)))))))) b!2749312))

(declare-fun m!3164845 () Bool)

(assert (=> b!2749312 m!3164845))

(declare-fun m!3164847 () Bool)

(assert (=> setNonEmpty!21873 m!3164847))

(declare-fun e!1732842 () Bool)

(declare-fun b!2749315 () Bool)

(declare-fun tp!867470 () Bool)

(declare-fun setRes!21874 () Bool)

(declare-fun tp!867471 () Bool)

(declare-fun e!1732844 () Bool)

(assert (=> b!2749315 (= e!1732844 (and tp!867471 (inv!43124 (_2!18540 (_1!18541 (h!37166 (minValue!3918 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730)))))))))) e!1732842 tp_is_empty!13949 setRes!21874 tp!867470))))

(declare-fun condSetEmpty!21874 () Bool)

(assert (=> b!2749315 (= condSetEmpty!21874 (= (_2!18541 (h!37166 (minValue!3918 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730)))))))) ((as const (Array Context!4482 Bool)) false)))))

(assert (=> b!2749121 (= tp!867444 e!1732844)))

(declare-fun setIsEmpty!21874 () Bool)

(assert (=> setIsEmpty!21874 setRes!21874))

(declare-fun b!2749316 () Bool)

(declare-fun tp!867472 () Bool)

(assert (=> b!2749316 (= e!1732842 tp!867472)))

(declare-fun b!2749317 () Bool)

(declare-fun e!1732843 () Bool)

(declare-fun tp!867473 () Bool)

(assert (=> b!2749317 (= e!1732843 tp!867473)))

(declare-fun setNonEmpty!21874 () Bool)

(declare-fun tp!867474 () Bool)

(declare-fun setElem!21874 () Context!4482)

(assert (=> setNonEmpty!21874 (= setRes!21874 (and tp!867474 (inv!43124 setElem!21874) e!1732843))))

(declare-fun setRest!21874 () (InoxSet Context!4482))

(assert (=> setNonEmpty!21874 (= (_2!18541 (h!37166 (minValue!3918 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730)))))))) ((_ map or) (store ((as const (Array Context!4482 Bool)) false) setElem!21874 true) setRest!21874))))

(assert (= b!2749315 b!2749316))

(assert (= (and b!2749315 condSetEmpty!21874) setIsEmpty!21874))

(assert (= (and b!2749315 (not condSetEmpty!21874)) setNonEmpty!21874))

(assert (= setNonEmpty!21874 b!2749317))

(assert (= (and b!2749121 ((_ is Cons!31746) (minValue!3918 (v!33355 (underlying!7519 (v!33356 (underlying!7520 (cache!3707 cacheDown!730)))))))) b!2749315))

(declare-fun m!3164849 () Bool)

(assert (=> b!2749315 m!3164849))

(declare-fun m!3164851 () Bool)

(assert (=> setNonEmpty!21874 m!3164851))

(declare-fun b!2749331 () Bool)

(declare-fun e!1732847 () Bool)

(declare-fun tp!867488 () Bool)

(declare-fun tp!867489 () Bool)

(assert (=> b!2749331 (= e!1732847 (and tp!867488 tp!867489))))

(assert (=> b!2749138 (= tp!867443 e!1732847)))

(declare-fun b!2749329 () Bool)

(declare-fun tp!867486 () Bool)

(declare-fun tp!867487 () Bool)

(assert (=> b!2749329 (= e!1732847 (and tp!867486 tp!867487))))

(declare-fun b!2749330 () Bool)

(declare-fun tp!867485 () Bool)

(assert (=> b!2749330 (= e!1732847 tp!867485)))

(declare-fun b!2749328 () Bool)

(assert (=> b!2749328 (= e!1732847 tp_is_empty!13949)))

(assert (= (and b!2749138 ((_ is ElementMatch!8023) (regex!4865 rule!196))) b!2749328))

(assert (= (and b!2749138 ((_ is Concat!13111) (regex!4865 rule!196))) b!2749329))

(assert (= (and b!2749138 ((_ is Star!8023) (regex!4865 rule!196))) b!2749330))

(assert (= (and b!2749138 ((_ is Union!8023) (regex!4865 rule!196))) b!2749331))

(declare-fun setRes!21879 () Bool)

(declare-fun e!1732864 () Bool)

(declare-fun b!2749346 () Bool)

(declare-fun tp!867512 () Bool)

(declare-fun e!1732863 () Bool)

(declare-fun mapValue!16685 () List!31846)

(declare-fun tp!867518 () Bool)

(assert (=> b!2749346 (= e!1732863 (and tp!867512 (inv!43124 (_2!18540 (_1!18541 (h!37166 mapValue!16685)))) e!1732864 tp_is_empty!13949 setRes!21879 tp!867518))))

(declare-fun condSetEmpty!21879 () Bool)

(assert (=> b!2749346 (= condSetEmpty!21879 (= (_2!18541 (h!37166 mapValue!16685)) ((as const (Array Context!4482 Bool)) false)))))

(declare-fun mapIsEmpty!16685 () Bool)

(declare-fun mapRes!16685 () Bool)

(assert (=> mapIsEmpty!16685 mapRes!16685))

(declare-fun b!2749347 () Bool)

(declare-fun e!1732860 () Bool)

(declare-fun tp!867521 () Bool)

(assert (=> b!2749347 (= e!1732860 tp!867521)))

(declare-fun b!2749348 () Bool)

(declare-fun e!1732865 () Bool)

(declare-fun tp!867520 () Bool)

(assert (=> b!2749348 (= e!1732865 tp!867520)))

(declare-fun setIsEmpty!21879 () Bool)

(assert (=> setIsEmpty!21879 setRes!21879))

(declare-fun e!1732861 () Bool)

(declare-fun tp!867522 () Bool)

(declare-fun mapDefault!16685 () List!31846)

(declare-fun setRes!21880 () Bool)

(declare-fun b!2749349 () Bool)

(declare-fun tp!867517 () Bool)

(assert (=> b!2749349 (= e!1732861 (and tp!867522 (inv!43124 (_2!18540 (_1!18541 (h!37166 mapDefault!16685)))) e!1732860 tp_is_empty!13949 setRes!21880 tp!867517))))

(declare-fun condSetEmpty!21880 () Bool)

(assert (=> b!2749349 (= condSetEmpty!21880 (= (_2!18541 (h!37166 mapDefault!16685)) ((as const (Array Context!4482 Bool)) false)))))

(declare-fun mapNonEmpty!16685 () Bool)

(declare-fun tp!867514 () Bool)

(assert (=> mapNonEmpty!16685 (= mapRes!16685 (and tp!867514 e!1732863))))

(declare-fun mapRest!16685 () (Array (_ BitVec 32) List!31846))

(declare-fun mapKey!16685 () (_ BitVec 32))

(assert (=> mapNonEmpty!16685 (= mapRest!16682 (store mapRest!16685 mapKey!16685 mapValue!16685))))

(declare-fun e!1732862 () Bool)

(declare-fun setNonEmpty!21879 () Bool)

(declare-fun tp!867515 () Bool)

(declare-fun setElem!21880 () Context!4482)

(assert (=> setNonEmpty!21879 (= setRes!21879 (and tp!867515 (inv!43124 setElem!21880) e!1732862))))

(declare-fun setRest!21879 () (InoxSet Context!4482))

(assert (=> setNonEmpty!21879 (= (_2!18541 (h!37166 mapValue!16685)) ((_ map or) (store ((as const (Array Context!4482 Bool)) false) setElem!21880 true) setRest!21879))))

(declare-fun condMapEmpty!16685 () Bool)

(assert (=> mapNonEmpty!16682 (= condMapEmpty!16685 (= mapRest!16682 ((as const (Array (_ BitVec 32) List!31846)) mapDefault!16685)))))

(assert (=> mapNonEmpty!16682 (= tp!867449 (and e!1732861 mapRes!16685))))

(declare-fun b!2749350 () Bool)

(declare-fun tp!867516 () Bool)

(assert (=> b!2749350 (= e!1732862 tp!867516)))

(declare-fun b!2749351 () Bool)

(declare-fun tp!867519 () Bool)

(assert (=> b!2749351 (= e!1732864 tp!867519)))

(declare-fun setNonEmpty!21880 () Bool)

(declare-fun setElem!21879 () Context!4482)

(declare-fun tp!867513 () Bool)

(assert (=> setNonEmpty!21880 (= setRes!21880 (and tp!867513 (inv!43124 setElem!21879) e!1732865))))

(declare-fun setRest!21880 () (InoxSet Context!4482))

(assert (=> setNonEmpty!21880 (= (_2!18541 (h!37166 mapDefault!16685)) ((_ map or) (store ((as const (Array Context!4482 Bool)) false) setElem!21879 true) setRest!21880))))

(declare-fun setIsEmpty!21880 () Bool)

(assert (=> setIsEmpty!21880 setRes!21880))

(assert (= (and mapNonEmpty!16682 condMapEmpty!16685) mapIsEmpty!16685))

(assert (= (and mapNonEmpty!16682 (not condMapEmpty!16685)) mapNonEmpty!16685))

(assert (= b!2749346 b!2749351))

(assert (= (and b!2749346 condSetEmpty!21879) setIsEmpty!21879))

(assert (= (and b!2749346 (not condSetEmpty!21879)) setNonEmpty!21879))

(assert (= setNonEmpty!21879 b!2749350))

(assert (= (and mapNonEmpty!16685 ((_ is Cons!31746) mapValue!16685)) b!2749346))

(assert (= b!2749349 b!2749347))

(assert (= (and b!2749349 condSetEmpty!21880) setIsEmpty!21880))

(assert (= (and b!2749349 (not condSetEmpty!21880)) setNonEmpty!21880))

(assert (= setNonEmpty!21880 b!2749348))

(assert (= (and mapNonEmpty!16682 ((_ is Cons!31746) mapDefault!16685)) b!2749349))

(declare-fun m!3164853 () Bool)

(assert (=> b!2749349 m!3164853))

(declare-fun m!3164855 () Bool)

(assert (=> b!2749346 m!3164855))

(declare-fun m!3164857 () Bool)

(assert (=> mapNonEmpty!16685 m!3164857))

(declare-fun m!3164859 () Bool)

(assert (=> setNonEmpty!21880 m!3164859))

(declare-fun m!3164861 () Bool)

(assert (=> setNonEmpty!21879 m!3164861))

(declare-fun tp!867523 () Bool)

(declare-fun e!1732868 () Bool)

(declare-fun b!2749352 () Bool)

(declare-fun tp!867524 () Bool)

(declare-fun setRes!21881 () Bool)

(declare-fun e!1732866 () Bool)

(assert (=> b!2749352 (= e!1732868 (and tp!867524 (inv!43124 (_2!18540 (_1!18541 (h!37166 mapValue!16682)))) e!1732866 tp_is_empty!13949 setRes!21881 tp!867523))))

(declare-fun condSetEmpty!21881 () Bool)

(assert (=> b!2749352 (= condSetEmpty!21881 (= (_2!18541 (h!37166 mapValue!16682)) ((as const (Array Context!4482 Bool)) false)))))

(assert (=> mapNonEmpty!16682 (= tp!867445 e!1732868)))

(declare-fun setIsEmpty!21881 () Bool)

(assert (=> setIsEmpty!21881 setRes!21881))

(declare-fun b!2749353 () Bool)

(declare-fun tp!867525 () Bool)

(assert (=> b!2749353 (= e!1732866 tp!867525)))

(declare-fun b!2749354 () Bool)

(declare-fun e!1732867 () Bool)

(declare-fun tp!867526 () Bool)

(assert (=> b!2749354 (= e!1732867 tp!867526)))

(declare-fun setElem!21881 () Context!4482)

(declare-fun setNonEmpty!21881 () Bool)

(declare-fun tp!867527 () Bool)

(assert (=> setNonEmpty!21881 (= setRes!21881 (and tp!867527 (inv!43124 setElem!21881) e!1732867))))

(declare-fun setRest!21881 () (InoxSet Context!4482))

(assert (=> setNonEmpty!21881 (= (_2!18541 (h!37166 mapValue!16682)) ((_ map or) (store ((as const (Array Context!4482 Bool)) false) setElem!21881 true) setRest!21881))))

(assert (= b!2749352 b!2749353))

(assert (= (and b!2749352 condSetEmpty!21881) setIsEmpty!21881))

(assert (= (and b!2749352 (not condSetEmpty!21881)) setNonEmpty!21881))

(assert (= setNonEmpty!21881 b!2749354))

(assert (= (and mapNonEmpty!16682 ((_ is Cons!31746) mapValue!16682)) b!2749352))

(declare-fun m!3164863 () Bool)

(assert (=> b!2749352 m!3164863))

(declare-fun m!3164865 () Bool)

(assert (=> setNonEmpty!21881 m!3164865))

(declare-fun e!1732873 () Bool)

(declare-fun tp!867536 () Bool)

(declare-fun b!2749363 () Bool)

(declare-fun tp!867535 () Bool)

(assert (=> b!2749363 (= e!1732873 (and (inv!43118 (left!24282 (c!445002 input!1561))) tp!867535 (inv!43118 (right!24612 (c!445002 input!1561))) tp!867536))))

(declare-fun b!2749365 () Bool)

(declare-fun e!1732874 () Bool)

(declare-fun tp!867534 () Bool)

(assert (=> b!2749365 (= e!1732874 tp!867534)))

(declare-fun b!2749364 () Bool)

(declare-fun inv!43125 (IArray!19827) Bool)

(assert (=> b!2749364 (= e!1732873 (and (inv!43125 (xs!13018 (c!445002 input!1561))) e!1732874))))

(assert (=> b!2749140 (= tp!867446 (and (inv!43118 (c!445002 input!1561)) e!1732873))))

(assert (= (and b!2749140 ((_ is Node!9911) (c!445002 input!1561))) b!2749363))

(assert (= b!2749364 b!2749365))

(assert (= (and b!2749140 ((_ is Leaf!15091) (c!445002 input!1561))) b!2749364))

(declare-fun m!3164867 () Bool)

(assert (=> b!2749363 m!3164867))

(declare-fun m!3164869 () Bool)

(assert (=> b!2749363 m!3164869))

(declare-fun m!3164871 () Bool)

(assert (=> b!2749364 m!3164871))

(assert (=> b!2749140 m!3164667))

(declare-fun setElem!21884 () Context!4482)

(declare-fun e!1732883 () Bool)

(declare-fun tp!867548 () Bool)

(declare-fun setNonEmpty!21884 () Bool)

(declare-fun setRes!21884 () Bool)

(assert (=> setNonEmpty!21884 (= setRes!21884 (and tp!867548 (inv!43124 setElem!21884) e!1732883))))

(declare-fun setRest!21884 () (InoxSet Context!4482))

(assert (=> setNonEmpty!21884 (= (_2!18543 (h!37165 (zeroValue!3917 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717)))))))) ((_ map or) (store ((as const (Array Context!4482 Bool)) false) setElem!21884 true) setRest!21884))))

(declare-fun setIsEmpty!21884 () Bool)

(assert (=> setIsEmpty!21884 setRes!21884))

(declare-fun tp!867545 () Bool)

(declare-fun e!1732882 () Bool)

(declare-fun b!2749374 () Bool)

(declare-fun e!1732881 () Bool)

(assert (=> b!2749374 (= e!1732882 (and (inv!43124 (_1!18542 (_1!18543 (h!37165 (zeroValue!3917 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717)))))))))) e!1732881 tp_is_empty!13949 setRes!21884 tp!867545))))

(declare-fun condSetEmpty!21884 () Bool)

(assert (=> b!2749374 (= condSetEmpty!21884 (= (_2!18543 (h!37165 (zeroValue!3917 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717)))))))) ((as const (Array Context!4482 Bool)) false)))))

(declare-fun b!2749375 () Bool)

(declare-fun tp!867546 () Bool)

(assert (=> b!2749375 (= e!1732883 tp!867546)))

(assert (=> b!2749133 (= tp!867447 e!1732882)))

(declare-fun b!2749376 () Bool)

(declare-fun tp!867547 () Bool)

(assert (=> b!2749376 (= e!1732881 tp!867547)))

(assert (= b!2749374 b!2749376))

(assert (= (and b!2749374 condSetEmpty!21884) setIsEmpty!21884))

(assert (= (and b!2749374 (not condSetEmpty!21884)) setNonEmpty!21884))

(assert (= setNonEmpty!21884 b!2749375))

(assert (= (and b!2749133 ((_ is Cons!31745) (zeroValue!3917 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717)))))))) b!2749374))

(declare-fun m!3164873 () Bool)

(assert (=> setNonEmpty!21884 m!3164873))

(declare-fun m!3164875 () Bool)

(assert (=> b!2749374 m!3164875))

(declare-fun setElem!21885 () Context!4482)

(declare-fun tp!867552 () Bool)

(declare-fun setRes!21885 () Bool)

(declare-fun setNonEmpty!21885 () Bool)

(declare-fun e!1732886 () Bool)

(assert (=> setNonEmpty!21885 (= setRes!21885 (and tp!867552 (inv!43124 setElem!21885) e!1732886))))

(declare-fun setRest!21885 () (InoxSet Context!4482))

(assert (=> setNonEmpty!21885 (= (_2!18543 (h!37165 (minValue!3917 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717)))))))) ((_ map or) (store ((as const (Array Context!4482 Bool)) false) setElem!21885 true) setRest!21885))))

(declare-fun setIsEmpty!21885 () Bool)

(assert (=> setIsEmpty!21885 setRes!21885))

(declare-fun e!1732885 () Bool)

(declare-fun tp!867549 () Bool)

(declare-fun b!2749377 () Bool)

(declare-fun e!1732884 () Bool)

(assert (=> b!2749377 (= e!1732885 (and (inv!43124 (_1!18542 (_1!18543 (h!37165 (minValue!3917 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717)))))))))) e!1732884 tp_is_empty!13949 setRes!21885 tp!867549))))

(declare-fun condSetEmpty!21885 () Bool)

(assert (=> b!2749377 (= condSetEmpty!21885 (= (_2!18543 (h!37165 (minValue!3917 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717)))))))) ((as const (Array Context!4482 Bool)) false)))))

(declare-fun b!2749378 () Bool)

(declare-fun tp!867550 () Bool)

(assert (=> b!2749378 (= e!1732886 tp!867550)))

(assert (=> b!2749133 (= tp!867435 e!1732885)))

(declare-fun b!2749379 () Bool)

(declare-fun tp!867551 () Bool)

(assert (=> b!2749379 (= e!1732884 tp!867551)))

(assert (= b!2749377 b!2749379))

(assert (= (and b!2749377 condSetEmpty!21885) setIsEmpty!21885))

(assert (= (and b!2749377 (not condSetEmpty!21885)) setNonEmpty!21885))

(assert (= setNonEmpty!21885 b!2749378))

(assert (= (and b!2749133 ((_ is Cons!31745) (minValue!3917 (v!33354 (underlying!7521 (v!33357 (underlying!7522 (cache!3708 cacheUp!717)))))))) b!2749377))

(declare-fun m!3164877 () Bool)

(assert (=> setNonEmpty!21885 m!3164877))

(declare-fun m!3164879 () Bool)

(assert (=> b!2749377 m!3164879))

(declare-fun mapNonEmpty!16688 () Bool)

(declare-fun mapRes!16688 () Bool)

(declare-fun tp!867575 () Bool)

(declare-fun e!1732903 () Bool)

(assert (=> mapNonEmpty!16688 (= mapRes!16688 (and tp!867575 e!1732903))))

(declare-fun mapRest!16688 () (Array (_ BitVec 32) List!31845))

(declare-fun mapValue!16688 () List!31845)

(declare-fun mapKey!16688 () (_ BitVec 32))

(assert (=> mapNonEmpty!16688 (= mapRest!16681 (store mapRest!16688 mapKey!16688 mapValue!16688))))

(declare-fun setIsEmpty!21890 () Bool)

(declare-fun setRes!21890 () Bool)

(assert (=> setIsEmpty!21890 setRes!21890))

(declare-fun b!2749394 () Bool)

(declare-fun e!1732900 () Bool)

(declare-fun tp!867574 () Bool)

(assert (=> b!2749394 (= e!1732900 tp!867574)))

(declare-fun setNonEmpty!21890 () Bool)

(declare-fun e!1732902 () Bool)

(declare-fun tp!867572 () Bool)

(declare-fun setElem!21890 () Context!4482)

(assert (=> setNonEmpty!21890 (= setRes!21890 (and tp!867572 (inv!43124 setElem!21890) e!1732902))))

(declare-fun setRest!21890 () (InoxSet Context!4482))

(assert (=> setNonEmpty!21890 (= (_2!18543 (h!37165 mapValue!16688)) ((_ map or) (store ((as const (Array Context!4482 Bool)) false) setElem!21890 true) setRest!21890))))

(declare-fun e!1732899 () Bool)

(declare-fun e!1732904 () Bool)

(declare-fun setRes!21891 () Bool)

(declare-fun tp!867576 () Bool)

(declare-fun mapDefault!16688 () List!31845)

(declare-fun b!2749395 () Bool)

(assert (=> b!2749395 (= e!1732899 (and (inv!43124 (_1!18542 (_1!18543 (h!37165 mapDefault!16688)))) e!1732904 tp_is_empty!13949 setRes!21891 tp!867576))))

(declare-fun condSetEmpty!21891 () Bool)

(assert (=> b!2749395 (= condSetEmpty!21891 (= (_2!18543 (h!37165 mapDefault!16688)) ((as const (Array Context!4482 Bool)) false)))))

(declare-fun setElem!21891 () Context!4482)

(declare-fun setNonEmpty!21891 () Bool)

(declare-fun e!1732901 () Bool)

(declare-fun tp!867573 () Bool)

(assert (=> setNonEmpty!21891 (= setRes!21891 (and tp!867573 (inv!43124 setElem!21891) e!1732901))))

(declare-fun setRest!21891 () (InoxSet Context!4482))

(assert (=> setNonEmpty!21891 (= (_2!18543 (h!37165 mapDefault!16688)) ((_ map or) (store ((as const (Array Context!4482 Bool)) false) setElem!21891 true) setRest!21891))))

(declare-fun condMapEmpty!16688 () Bool)

(assert (=> mapNonEmpty!16681 (= condMapEmpty!16688 (= mapRest!16681 ((as const (Array (_ BitVec 32) List!31845)) mapDefault!16688)))))

(assert (=> mapNonEmpty!16681 (= tp!867448 (and e!1732899 mapRes!16688))))

(declare-fun b!2749396 () Bool)

(declare-fun tp!867577 () Bool)

(assert (=> b!2749396 (= e!1732901 tp!867577)))

(declare-fun setIsEmpty!21891 () Bool)

(assert (=> setIsEmpty!21891 setRes!21891))

(declare-fun tp!867578 () Bool)

(declare-fun b!2749397 () Bool)

(assert (=> b!2749397 (= e!1732903 (and (inv!43124 (_1!18542 (_1!18543 (h!37165 mapValue!16688)))) e!1732900 tp_is_empty!13949 setRes!21890 tp!867578))))

(declare-fun condSetEmpty!21890 () Bool)

(assert (=> b!2749397 (= condSetEmpty!21890 (= (_2!18543 (h!37165 mapValue!16688)) ((as const (Array Context!4482 Bool)) false)))))

(declare-fun b!2749398 () Bool)

(declare-fun tp!867579 () Bool)

(assert (=> b!2749398 (= e!1732902 tp!867579)))

(declare-fun mapIsEmpty!16688 () Bool)

(assert (=> mapIsEmpty!16688 mapRes!16688))

(declare-fun b!2749399 () Bool)

(declare-fun tp!867571 () Bool)

(assert (=> b!2749399 (= e!1732904 tp!867571)))

(assert (= (and mapNonEmpty!16681 condMapEmpty!16688) mapIsEmpty!16688))

(assert (= (and mapNonEmpty!16681 (not condMapEmpty!16688)) mapNonEmpty!16688))

(assert (= b!2749397 b!2749394))

(assert (= (and b!2749397 condSetEmpty!21890) setIsEmpty!21890))

(assert (= (and b!2749397 (not condSetEmpty!21890)) setNonEmpty!21890))

(assert (= setNonEmpty!21890 b!2749398))

(assert (= (and mapNonEmpty!16688 ((_ is Cons!31745) mapValue!16688)) b!2749397))

(assert (= b!2749395 b!2749399))

(assert (= (and b!2749395 condSetEmpty!21891) setIsEmpty!21891))

(assert (= (and b!2749395 (not condSetEmpty!21891)) setNonEmpty!21891))

(assert (= setNonEmpty!21891 b!2749396))

(assert (= (and mapNonEmpty!16681 ((_ is Cons!31745) mapDefault!16688)) b!2749395))

(declare-fun m!3164881 () Bool)

(assert (=> b!2749395 m!3164881))

(declare-fun m!3164883 () Bool)

(assert (=> setNonEmpty!21890 m!3164883))

(declare-fun m!3164885 () Bool)

(assert (=> mapNonEmpty!16688 m!3164885))

(declare-fun m!3164887 () Bool)

(assert (=> b!2749397 m!3164887))

(declare-fun m!3164889 () Bool)

(assert (=> setNonEmpty!21891 m!3164889))

(declare-fun e!1732907 () Bool)

(declare-fun tp!867583 () Bool)

(declare-fun setElem!21892 () Context!4482)

(declare-fun setRes!21892 () Bool)

(declare-fun setNonEmpty!21892 () Bool)

(assert (=> setNonEmpty!21892 (= setRes!21892 (and tp!867583 (inv!43124 setElem!21892) e!1732907))))

(declare-fun setRest!21892 () (InoxSet Context!4482))

(assert (=> setNonEmpty!21892 (= (_2!18543 (h!37165 mapValue!16681)) ((_ map or) (store ((as const (Array Context!4482 Bool)) false) setElem!21892 true) setRest!21892))))

(declare-fun setIsEmpty!21892 () Bool)

(assert (=> setIsEmpty!21892 setRes!21892))

(declare-fun e!1732906 () Bool)

(declare-fun e!1732905 () Bool)

(declare-fun tp!867580 () Bool)

(declare-fun b!2749400 () Bool)

(assert (=> b!2749400 (= e!1732906 (and (inv!43124 (_1!18542 (_1!18543 (h!37165 mapValue!16681)))) e!1732905 tp_is_empty!13949 setRes!21892 tp!867580))))

(declare-fun condSetEmpty!21892 () Bool)

(assert (=> b!2749400 (= condSetEmpty!21892 (= (_2!18543 (h!37165 mapValue!16681)) ((as const (Array Context!4482 Bool)) false)))))

(declare-fun b!2749401 () Bool)

(declare-fun tp!867581 () Bool)

(assert (=> b!2749401 (= e!1732907 tp!867581)))

(assert (=> mapNonEmpty!16681 (= tp!867441 e!1732906)))

(declare-fun b!2749402 () Bool)

(declare-fun tp!867582 () Bool)

(assert (=> b!2749402 (= e!1732905 tp!867582)))

(assert (= b!2749400 b!2749402))

(assert (= (and b!2749400 condSetEmpty!21892) setIsEmpty!21892))

(assert (= (and b!2749400 (not condSetEmpty!21892)) setNonEmpty!21892))

(assert (= setNonEmpty!21892 b!2749401))

(assert (= (and mapNonEmpty!16681 ((_ is Cons!31745) mapValue!16681)) b!2749400))

(declare-fun m!3164891 () Bool)

(assert (=> setNonEmpty!21892 m!3164891))

(declare-fun m!3164893 () Bool)

(assert (=> b!2749400 m!3164893))

(declare-fun e!1732910 () Bool)

(declare-fun setNonEmpty!21893 () Bool)

(declare-fun setRes!21893 () Bool)

(declare-fun tp!867587 () Bool)

(declare-fun setElem!21893 () Context!4482)

(assert (=> setNonEmpty!21893 (= setRes!21893 (and tp!867587 (inv!43124 setElem!21893) e!1732910))))

(declare-fun setRest!21893 () (InoxSet Context!4482))

(assert (=> setNonEmpty!21893 (= (_2!18543 (h!37165 mapDefault!16682)) ((_ map or) (store ((as const (Array Context!4482 Bool)) false) setElem!21893 true) setRest!21893))))

(declare-fun setIsEmpty!21893 () Bool)

(assert (=> setIsEmpty!21893 setRes!21893))

(declare-fun e!1732908 () Bool)

(declare-fun b!2749403 () Bool)

(declare-fun tp!867584 () Bool)

(declare-fun e!1732909 () Bool)

(assert (=> b!2749403 (= e!1732909 (and (inv!43124 (_1!18542 (_1!18543 (h!37165 mapDefault!16682)))) e!1732908 tp_is_empty!13949 setRes!21893 tp!867584))))

(declare-fun condSetEmpty!21893 () Bool)

(assert (=> b!2749403 (= condSetEmpty!21893 (= (_2!18543 (h!37165 mapDefault!16682)) ((as const (Array Context!4482 Bool)) false)))))

(declare-fun b!2749404 () Bool)

(declare-fun tp!867585 () Bool)

(assert (=> b!2749404 (= e!1732910 tp!867585)))

(assert (=> b!2749132 (= tp!867436 e!1732909)))

(declare-fun b!2749405 () Bool)

(declare-fun tp!867586 () Bool)

(assert (=> b!2749405 (= e!1732908 tp!867586)))

(assert (= b!2749403 b!2749405))

(assert (= (and b!2749403 condSetEmpty!21893) setIsEmpty!21893))

(assert (= (and b!2749403 (not condSetEmpty!21893)) setNonEmpty!21893))

(assert (= setNonEmpty!21893 b!2749404))

(assert (= (and b!2749132 ((_ is Cons!31745) mapDefault!16682)) b!2749403))

(declare-fun m!3164895 () Bool)

(assert (=> setNonEmpty!21893 m!3164895))

(declare-fun m!3164897 () Bool)

(assert (=> b!2749403 m!3164897))

(declare-fun b!2749406 () Bool)

(declare-fun e!1732911 () Bool)

(declare-fun tp!867589 () Bool)

(declare-fun e!1732913 () Bool)

(declare-fun setRes!21894 () Bool)

(declare-fun tp!867588 () Bool)

(assert (=> b!2749406 (= e!1732913 (and tp!867589 (inv!43124 (_2!18540 (_1!18541 (h!37166 mapDefault!16681)))) e!1732911 tp_is_empty!13949 setRes!21894 tp!867588))))

(declare-fun condSetEmpty!21894 () Bool)

(assert (=> b!2749406 (= condSetEmpty!21894 (= (_2!18541 (h!37166 mapDefault!16681)) ((as const (Array Context!4482 Bool)) false)))))

(assert (=> b!2749136 (= tp!867434 e!1732913)))

(declare-fun setIsEmpty!21894 () Bool)

(assert (=> setIsEmpty!21894 setRes!21894))

(declare-fun b!2749407 () Bool)

(declare-fun tp!867590 () Bool)

(assert (=> b!2749407 (= e!1732911 tp!867590)))

(declare-fun b!2749408 () Bool)

(declare-fun e!1732912 () Bool)

(declare-fun tp!867591 () Bool)

(assert (=> b!2749408 (= e!1732912 tp!867591)))

(declare-fun setElem!21894 () Context!4482)

(declare-fun tp!867592 () Bool)

(declare-fun setNonEmpty!21894 () Bool)

(assert (=> setNonEmpty!21894 (= setRes!21894 (and tp!867592 (inv!43124 setElem!21894) e!1732912))))

(declare-fun setRest!21894 () (InoxSet Context!4482))

(assert (=> setNonEmpty!21894 (= (_2!18541 (h!37166 mapDefault!16681)) ((_ map or) (store ((as const (Array Context!4482 Bool)) false) setElem!21894 true) setRest!21894))))

(assert (= b!2749406 b!2749407))

(assert (= (and b!2749406 condSetEmpty!21894) setIsEmpty!21894))

(assert (= (and b!2749406 (not condSetEmpty!21894)) setNonEmpty!21894))

(assert (= setNonEmpty!21894 b!2749408))

(assert (= (and b!2749136 ((_ is Cons!31746) mapDefault!16681)) b!2749406))

(declare-fun m!3164899 () Bool)

(assert (=> b!2749406 m!3164899))

(declare-fun m!3164901 () Bool)

(assert (=> setNonEmpty!21894 m!3164901))

(declare-fun b_lambda!82943 () Bool)

(assert (= b_lambda!82939 (or (and b!2749122 b_free!77651) b_lambda!82943)))

(declare-fun b_lambda!82945 () Bool)

(assert (= b_lambda!82941 (or (and b!2749122 b_free!77651) b_lambda!82945)))

(declare-fun b_lambda!82947 () Bool)

(assert (= b_lambda!82937 (or (and b!2749122 b_free!77653) b_lambda!82947)))

(check-sat (not b!2749331) (not bm!177493) (not d!796386) (not b!2749243) (not b!2749403) (not setNonEmpty!21892) (not b!2749145) (not b!2749404) (not setNonEmpty!21893) (not b!2749314) (not bm!177492) (not b!2749351) (not d!796398) (not bm!177491) (not d!796358) (not b!2749379) (not b!2749317) (not b!2749349) (not b!2749224) b_and!202381 (not b!2749315) (not d!796410) tp_is_empty!13949 (not b!2749398) (not setNonEmpty!21894) (not b!2749401) (not b!2749149) (not b_next!78361) (not d!796412) (not bm!177497) (not setNonEmpty!21891) (not d!796370) (not b!2749240) (not b!2749406) (not b_next!78353) (not setNonEmpty!21873) (not setNonEmpty!21890) (not b_next!78363) (not b!2749208) (not b!2749255) (not b!2749397) (not b!2749408) (not b!2749394) (not b!2749400) (not d!796380) (not b!2749407) (not setNonEmpty!21879) (not b!2749396) (not b!2749302) (not b_lambda!82943) (not tb!152977) (not b!2749354) (not b!2749286) (not b!2749378) (not d!796374) (not b!2749170) (not b!2749330) (not b!2749210) (not d!796388) (not b!2749312) (not b!2749152) (not b!2749374) (not b!2749217) (not b!2749365) (not b!2749293) (not b!2749399) (not b_lambda!82945) (not b!2749363) (not tb!152979) (not b!2749348) (not d!796406) (not b!2749347) (not b!2749316) (not b!2749244) (not b_next!78357) b_and!202397 (not d!796382) (not b_lambda!82947) (not setNonEmpty!21884) (not d!796414) (not setNonEmpty!21874) (not b!2749402) (not d!796396) (not bm!177495) (not b!2749376) b_and!202387 (not setNonEmpty!21880) (not bm!177496) (not bm!177494) (not b!2749364) (not d!796356) (not bm!177490) (not d!796360) b_and!202391 (not b_next!78359) (not b!2749375) (not b!2749201) (not d!796376) (not mapNonEmpty!16685) b_and!202393 (not b!2749313) (not b!2749285) (not setNonEmpty!21881) (not b!2749289) (not b!2749160) (not b!2749239) (not b!2749241) (not b!2749146) (not d!796366) b_and!202389 (not setNonEmpty!21885) (not b!2749329) (not b!2749377) (not b!2749226) (not d!796408) (not b!2749140) (not b!2749288) (not bm!177500) (not b!2749405) (not b_next!78355) (not b!2749214) (not b!2749158) (not b!2749297) (not b!2749346) (not b!2749395) (not b!2749353) (not b!2749352) (not b!2749350) (not mapNonEmpty!16688))
(check-sat b_and!202381 (not b_next!78361) b_and!202387 b_and!202391 (not b_next!78359) b_and!202393 b_and!202389 (not b_next!78355) (not b_next!78353) (not b_next!78363) (not b_next!78357) b_and!202397)
