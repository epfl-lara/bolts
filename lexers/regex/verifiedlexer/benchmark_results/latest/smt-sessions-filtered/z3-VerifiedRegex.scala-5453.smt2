; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276888 () Bool)

(assert start!276888)

(declare-fun b!2844475 () Bool)

(declare-fun b_free!82593 () Bool)

(declare-fun b_next!83297 () Bool)

(assert (=> b!2844475 (= b_free!82593 (not b_next!83297))))

(declare-fun tp!911635 () Bool)

(declare-fun b_and!208811 () Bool)

(assert (=> b!2844475 (= tp!911635 b_and!208811)))

(declare-fun b!2844485 () Bool)

(declare-fun b_free!82595 () Bool)

(declare-fun b_next!83299 () Bool)

(assert (=> b!2844485 (= b_free!82595 (not b_next!83299))))

(declare-fun tp!911634 () Bool)

(declare-fun b_and!208813 () Bool)

(assert (=> b!2844485 (= tp!911634 b_and!208813)))

(declare-fun b!2844492 () Bool)

(declare-fun b_free!82597 () Bool)

(declare-fun b_next!83301 () Bool)

(assert (=> b!2844492 (= b_free!82597 (not b_next!83301))))

(declare-fun tp!911652 () Bool)

(declare-fun b_and!208815 () Bool)

(assert (=> b!2844492 (= tp!911652 b_and!208815)))

(declare-fun b_free!82599 () Bool)

(declare-fun b_next!83303 () Bool)

(assert (=> b!2844492 (= b_free!82599 (not b_next!83303))))

(declare-fun tp!911645 () Bool)

(declare-fun b_and!208817 () Bool)

(assert (=> b!2844492 (= tp!911645 b_and!208817)))

(declare-fun b!2844488 () Bool)

(declare-fun b_free!82601 () Bool)

(declare-fun b_next!83305 () Bool)

(assert (=> b!2844488 (= b_free!82601 (not b_next!83305))))

(declare-fun tp!911632 () Bool)

(declare-fun b_and!208819 () Bool)

(assert (=> b!2844488 (= tp!911632 b_and!208819)))

(declare-fun b_free!82603 () Bool)

(declare-fun b_next!83307 () Bool)

(assert (=> b!2844488 (= b_free!82603 (not b_next!83307))))

(declare-fun tp!911633 () Bool)

(declare-fun b_and!208821 () Bool)

(assert (=> b!2844488 (= tp!911633 b_and!208821)))

(declare-fun b!2844477 () Bool)

(declare-fun b_free!82605 () Bool)

(declare-fun b_next!83309 () Bool)

(assert (=> b!2844477 (= b_free!82605 (not b_next!83309))))

(declare-fun tp!911630 () Bool)

(declare-fun b_and!208823 () Bool)

(assert (=> b!2844477 (= tp!911630 b_and!208823)))

(declare-fun b_free!82607 () Bool)

(declare-fun b_next!83311 () Bool)

(assert (=> b!2844477 (= b_free!82607 (not b_next!83311))))

(declare-fun tp!911644 () Bool)

(declare-fun b_and!208825 () Bool)

(assert (=> b!2844477 (= tp!911644 b_and!208825)))

(declare-fun b!2844483 () Bool)

(declare-fun b_free!82609 () Bool)

(declare-fun b_next!83313 () Bool)

(assert (=> b!2844483 (= b_free!82609 (not b_next!83313))))

(declare-fun tp!911640 () Bool)

(declare-fun b_and!208827 () Bool)

(assert (=> b!2844483 (= tp!911640 b_and!208827)))

(declare-fun b!2844495 () Bool)

(declare-fun b_free!82611 () Bool)

(declare-fun b_next!83315 () Bool)

(assert (=> b!2844495 (= b_free!82611 (not b_next!83315))))

(declare-fun tp!911648 () Bool)

(declare-fun b_and!208829 () Bool)

(assert (=> b!2844495 (= tp!911648 b_and!208829)))

(declare-datatypes ((List!33834 0))(
  ( (Nil!33710) (Cons!33710 (h!39130 (_ BitVec 16)) (t!232829 List!33834)) )
))
(declare-datatypes ((TokenValue!5300 0))(
  ( (FloatLiteralValue!10600 (text!37545 List!33834)) (TokenValueExt!5299 (__x!22344 Int)) (Broken!26500 (value!162871 List!33834)) (Object!5423) (End!5300) (Def!5300) (Underscore!5300) (Match!5300) (Else!5300) (Error!5300) (Case!5300) (If!5300) (Extends!5300) (Abstract!5300) (Class!5300) (Val!5300) (DelimiterValue!10600 (del!5360 List!33834)) (KeywordValue!5306 (value!162872 List!33834)) (CommentValue!10600 (value!162873 List!33834)) (WhitespaceValue!10600 (value!162874 List!33834)) (IndentationValue!5300 (value!162875 List!33834)) (String!37065) (Int32!5300) (Broken!26501 (value!162876 List!33834)) (Boolean!5301) (Unit!47516) (OperatorValue!5303 (op!5360 List!33834)) (IdentifierValue!10600 (value!162877 List!33834)) (IdentifierValue!10601 (value!162878 List!33834)) (WhitespaceValue!10601 (value!162879 List!33834)) (True!10600) (False!10600) (Broken!26502 (value!162880 List!33834)) (Broken!26503 (value!162881 List!33834)) (True!10601) (RightBrace!5300) (RightBracket!5300) (Colon!5300) (Null!5300) (Comma!5300) (LeftBracket!5300) (False!10601) (LeftBrace!5300) (ImaginaryLiteralValue!5300 (text!37546 List!33834)) (StringLiteralValue!15900 (value!162882 List!33834)) (EOFValue!5300 (value!162883 List!33834)) (IdentValue!5300 (value!162884 List!33834)) (DelimiterValue!10601 (value!162885 List!33834)) (DedentValue!5300 (value!162886 List!33834)) (NewLineValue!5300 (value!162887 List!33834)) (IntegerValue!15900 (value!162888 (_ BitVec 32)) (text!37547 List!33834)) (IntegerValue!15901 (value!162889 Int) (text!37548 List!33834)) (Times!5300) (Or!5300) (Equal!5300) (Minus!5300) (Broken!26504 (value!162890 List!33834)) (And!5300) (Div!5300) (LessEqual!5300) (Mod!5300) (Concat!13761) (Not!5300) (Plus!5300) (SpaceValue!5300 (value!162891 List!33834)) (IntegerValue!15902 (value!162892 Int) (text!37549 List!33834)) (StringLiteralValue!15901 (text!37550 List!33834)) (FloatLiteralValue!10601 (text!37551 List!33834)) (BytesLiteralValue!5300 (value!162893 List!33834)) (CommentValue!10601 (value!162894 List!33834)) (StringLiteralValue!15902 (value!162895 List!33834)) (ErrorTokenValue!5300 (msg!5361 List!33834)) )
))
(declare-datatypes ((C!17104 0))(
  ( (C!17105 (val!10586 Int)) )
))
(declare-datatypes ((List!33835 0))(
  ( (Nil!33711) (Cons!33711 (h!39131 C!17104) (t!232830 List!33835)) )
))
(declare-datatypes ((IArray!20917 0))(
  ( (IArray!20918 (innerList!10516 List!33835)) )
))
(declare-datatypes ((Conc!10456 0))(
  ( (Node!10456 (left!25401 Conc!10456) (right!25731 Conc!10456) (csize!21142 Int) (cheight!10667 Int)) (Leaf!15910 (xs!13572 IArray!20917) (csize!21143 Int)) (Empty!10456) )
))
(declare-datatypes ((BalanceConc!20550 0))(
  ( (BalanceConc!20551 (c!459088 Conc!10456)) )
))
(declare-datatypes ((String!37066 0))(
  ( (String!37067 (value!162896 String)) )
))
(declare-datatypes ((Regex!8461 0))(
  ( (ElementMatch!8461 (c!459089 C!17104)) (Concat!13762 (regOne!17434 Regex!8461) (regTwo!17434 Regex!8461)) (EmptyExpr!8461) (Star!8461 (reg!8790 Regex!8461)) (EmptyLang!8461) (Union!8461 (regOne!17435 Regex!8461) (regTwo!17435 Regex!8461)) )
))
(declare-datatypes ((TokenValueInjection!10028 0))(
  ( (TokenValueInjection!10029 (toValue!7124 Int) (toChars!6983 Int)) )
))
(declare-datatypes ((Rule!9940 0))(
  ( (Rule!9941 (regex!5070 Regex!8461) (tag!5574 String!37066) (isSeparator!5070 Bool) (transformation!5070 TokenValueInjection!10028)) )
))
(declare-datatypes ((Token!9542 0))(
  ( (Token!9543 (value!162897 TokenValue!5300) (rule!7498 Rule!9940) (size!26188 Int) (originalCharacters!5802 List!33835)) )
))
(declare-fun t1!27 () Token!9542)

(declare-fun b!2844474 () Bool)

(declare-fun e!1802148 () Bool)

(declare-fun tp!911646 () Bool)

(declare-fun e!1802146 () Bool)

(declare-fun inv!45710 (String!37066) Bool)

(declare-fun inv!45715 (TokenValueInjection!10028) Bool)

(assert (=> b!2844474 (= e!1802146 (and tp!911646 (inv!45710 (tag!5574 (rule!7498 t1!27))) (inv!45715 (transformation!5070 (rule!7498 t1!27))) e!1802148))))

(declare-fun e!1802137 () Bool)

(declare-datatypes ((List!33836 0))(
  ( (Nil!33712) (Cons!33712 (h!39132 Regex!8461) (t!232831 List!33836)) )
))
(declare-datatypes ((Context!4978 0))(
  ( (Context!4979 (exprs!2989 List!33836)) )
))
(declare-datatypes ((tuple2!33584 0))(
  ( (tuple2!33585 (_1!19905 Context!4978) (_2!19905 C!17104)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33586 0))(
  ( (tuple2!33587 (_1!19906 tuple2!33584) (_2!19906 (InoxSet Context!4978))) )
))
(declare-datatypes ((List!33837 0))(
  ( (Nil!33713) (Cons!33713 (h!39133 tuple2!33586) (t!232832 List!33837)) )
))
(declare-datatypes ((array!14549 0))(
  ( (array!14550 (arr!6483 (Array (_ BitVec 32) (_ BitVec 64))) (size!26189 (_ BitVec 32))) )
))
(declare-datatypes ((array!14551 0))(
  ( (array!14552 (arr!6484 (Array (_ BitVec 32) List!33837)) (size!26190 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8186 0))(
  ( (LongMapFixedSize!8187 (defaultEntry!4478 Int) (mask!10115 (_ BitVec 32)) (extraKeys!4342 (_ BitVec 32)) (zeroValue!4352 List!33837) (minValue!4352 List!33837) (_size!8229 (_ BitVec 32)) (_keys!4393 array!14549) (_values!4374 array!14551) (_vacant!4154 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16181 0))(
  ( (Cell!16182 (v!34382 LongMapFixedSize!8186)) )
))
(declare-datatypes ((MutLongMap!4093 0))(
  ( (LongMap!4093 (underlying!8415 Cell!16181)) (MutLongMapExt!4092 (__x!22345 Int)) )
))
(declare-datatypes ((Cell!16183 0))(
  ( (Cell!16184 (v!34383 MutLongMap!4093)) )
))
(declare-datatypes ((Hashable!4009 0))(
  ( (HashableExt!4008 (__x!22346 Int)) )
))
(declare-datatypes ((MutableMap!3999 0))(
  ( (MutableMapExt!3998 (__x!22347 Int)) (HashMap!3999 (underlying!8416 Cell!16183) (hashF!6041 Hashable!4009) (_size!8230 (_ BitVec 32)) (defaultValue!4170 Int)) )
))
(declare-datatypes ((CacheUp!2696 0))(
  ( (CacheUp!2697 (cache!4134 MutableMap!3999)) )
))
(declare-fun cacheUp!434 () CacheUp!2696)

(declare-fun tp!911636 () Bool)

(declare-fun e!1802159 () Bool)

(declare-fun tp!911638 () Bool)

(declare-fun array_inv!4644 (array!14549) Bool)

(declare-fun array_inv!4645 (array!14551) Bool)

(assert (=> b!2844475 (= e!1802159 (and tp!911635 tp!911638 tp!911636 (array_inv!4644 (_keys!4393 (v!34382 (underlying!8415 (v!34383 (underlying!8416 (cache!4134 cacheUp!434))))))) (array_inv!4645 (_values!4374 (v!34382 (underlying!8415 (v!34383 (underlying!8416 (cache!4134 cacheUp!434))))))) e!1802137))))

(declare-fun b!2844476 () Bool)

(declare-fun res!1183213 () Bool)

(declare-fun e!1802132 () Bool)

(assert (=> b!2844476 (=> (not res!1183213) (not e!1802132))))

(declare-datatypes ((List!33838 0))(
  ( (Nil!33714) (Cons!33714 (h!39134 Rule!9940) (t!232833 List!33838)) )
))
(declare-fun rules!1139 () List!33838)

(declare-fun isEmpty!18562 (List!33838) Bool)

(assert (=> b!2844476 (= res!1183213 (not (isEmpty!18562 rules!1139)))))

(declare-fun e!1802130 () Bool)

(assert (=> b!2844477 (= e!1802130 (and tp!911630 tp!911644))))

(declare-fun b!2844478 () Bool)

(declare-fun e!1802140 () Bool)

(assert (=> b!2844478 (= e!1802140 e!1802159)))

(declare-fun b!2844479 () Bool)

(declare-fun e!1802151 () Bool)

(declare-fun e!1802145 () Bool)

(declare-fun tp!911641 () Bool)

(assert (=> b!2844479 (= e!1802151 (and e!1802145 tp!911641))))

(declare-fun b!2844480 () Bool)

(declare-fun e!1802157 () Bool)

(assert (=> b!2844480 (= e!1802157 false)))

(declare-datatypes ((tuple3!5286 0))(
  ( (tuple3!5287 (_1!19907 Regex!8461) (_2!19907 Context!4978) (_3!3113 C!17104)) )
))
(declare-datatypes ((tuple2!33588 0))(
  ( (tuple2!33589 (_1!19908 tuple3!5286) (_2!19908 (InoxSet Context!4978))) )
))
(declare-datatypes ((List!33839 0))(
  ( (Nil!33715) (Cons!33715 (h!39135 tuple2!33588) (t!232834 List!33839)) )
))
(declare-datatypes ((array!14553 0))(
  ( (array!14554 (arr!6485 (Array (_ BitVec 32) List!33839)) (size!26191 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8188 0))(
  ( (LongMapFixedSize!8189 (defaultEntry!4479 Int) (mask!10116 (_ BitVec 32)) (extraKeys!4343 (_ BitVec 32)) (zeroValue!4353 List!33839) (minValue!4353 List!33839) (_size!8231 (_ BitVec 32)) (_keys!4394 array!14549) (_values!4375 array!14553) (_vacant!4155 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16185 0))(
  ( (Cell!16186 (v!34384 LongMapFixedSize!8188)) )
))
(declare-datatypes ((MutLongMap!4094 0))(
  ( (LongMap!4094 (underlying!8417 Cell!16185)) (MutLongMapExt!4093 (__x!22348 Int)) )
))
(declare-datatypes ((Hashable!4010 0))(
  ( (HashableExt!4009 (__x!22349 Int)) )
))
(declare-datatypes ((Cell!16187 0))(
  ( (Cell!16188 (v!34385 MutLongMap!4094)) )
))
(declare-datatypes ((MutableMap!4000 0))(
  ( (MutableMapExt!3999 (__x!22350 Int)) (HashMap!4000 (underlying!8418 Cell!16187) (hashF!6042 Hashable!4010) (_size!8232 (_ BitVec 32)) (defaultValue!4171 Int)) )
))
(declare-datatypes ((CacheDown!2818 0))(
  ( (CacheDown!2819 (cache!4135 MutableMap!4000)) )
))
(declare-datatypes ((tuple3!5288 0))(
  ( (tuple3!5289 (_1!19909 Bool) (_2!19909 CacheUp!2696) (_3!3114 CacheDown!2818)) )
))
(declare-fun lt!1012226 () tuple3!5288)

(declare-datatypes ((LexerInterface!4660 0))(
  ( (LexerInterfaceExt!4657 (__x!22351 Int)) (Lexer!4658) )
))
(declare-fun thiss!11361 () LexerInterface!4660)

(declare-fun lt!1012225 () BalanceConc!20550)

(declare-fun cacheDown!447 () CacheDown!2818)

(declare-fun prefixMatchZipperSequenceMem!4 (Regex!8461 BalanceConc!20550 CacheUp!2696 CacheDown!2818) tuple3!5288)

(declare-fun rulesRegex!1005 (LexerInterface!4660 List!33838) Regex!8461)

(declare-fun ++!8121 (BalanceConc!20550 BalanceConc!20550) BalanceConc!20550)

(declare-fun charsOf!3119 (Token!9542) BalanceConc!20550)

(declare-fun singletonSeq!2186 (C!17104) BalanceConc!20550)

(declare-fun apply!7854 (BalanceConc!20550 Int) C!17104)

(assert (=> b!2844480 (= lt!1012226 (prefixMatchZipperSequenceMem!4 (rulesRegex!1005 thiss!11361 rules!1139) (++!8121 (charsOf!3119 t1!27) (singletonSeq!2186 (apply!7854 lt!1012225 0))) cacheUp!434 cacheDown!447))))

(declare-fun b!2844481 () Bool)

(declare-fun e!1802136 () Bool)

(assert (=> b!2844481 (= e!1802136 e!1802140)))

(declare-fun t2!27 () Token!9542)

(declare-fun tp!911629 () Bool)

(declare-fun e!1802158 () Bool)

(declare-fun e!1802138 () Bool)

(declare-fun b!2844482 () Bool)

(declare-fun inv!21 (TokenValue!5300) Bool)

(assert (=> b!2844482 (= e!1802158 (and (inv!21 (value!162897 t2!27)) e!1802138 tp!911629))))

(declare-fun e!1802129 () Bool)

(declare-fun tp!911650 () Bool)

(declare-fun tp!911637 () Bool)

(declare-fun e!1802147 () Bool)

(declare-fun array_inv!4646 (array!14553) Bool)

(assert (=> b!2844483 (= e!1802147 (and tp!911640 tp!911650 tp!911637 (array_inv!4644 (_keys!4394 (v!34384 (underlying!8417 (v!34385 (underlying!8418 (cache!4135 cacheDown!447))))))) (array_inv!4646 (_values!4375 (v!34384 (underlying!8417 (v!34385 (underlying!8418 (cache!4135 cacheDown!447))))))) e!1802129))))

(declare-fun mapIsEmpty!18578 () Bool)

(declare-fun mapRes!18578 () Bool)

(assert (=> mapIsEmpty!18578 mapRes!18578))

(declare-fun b!2844484 () Bool)

(declare-fun e!1802153 () Bool)

(declare-fun e!1802134 () Bool)

(declare-fun lt!1012224 () MutLongMap!4094)

(get-info :version)

(assert (=> b!2844484 (= e!1802153 (and e!1802134 ((_ is LongMap!4094) lt!1012224)))))

(assert (=> b!2844484 (= lt!1012224 (v!34385 (underlying!8418 (cache!4135 cacheDown!447))))))

(declare-fun e!1802143 () Bool)

(declare-fun e!1802150 () Bool)

(assert (=> b!2844485 (= e!1802143 (and e!1802150 tp!911634))))

(declare-fun b!2844486 () Bool)

(declare-fun e!1802149 () Bool)

(declare-fun e!1802144 () Bool)

(assert (=> b!2844486 (= e!1802149 e!1802144)))

(declare-fun b!2844487 () Bool)

(declare-fun lt!1012227 () MutLongMap!4093)

(assert (=> b!2844487 (= e!1802150 (and e!1802136 ((_ is LongMap!4093) lt!1012227)))))

(assert (=> b!2844487 (= lt!1012227 (v!34383 (underlying!8416 (cache!4134 cacheUp!434))))))

(assert (=> b!2844488 (= e!1802148 (and tp!911632 tp!911633))))

(declare-fun b!2844489 () Bool)

(declare-fun tp!911642 () Bool)

(declare-fun mapRes!18579 () Bool)

(assert (=> b!2844489 (= e!1802129 (and tp!911642 mapRes!18579))))

(declare-fun condMapEmpty!18578 () Bool)

(declare-fun mapDefault!18579 () List!33839)

(assert (=> b!2844489 (= condMapEmpty!18578 (= (arr!6485 (_values!4375 (v!34384 (underlying!8417 (v!34385 (underlying!8418 (cache!4135 cacheDown!447))))))) ((as const (Array (_ BitVec 32) List!33839)) mapDefault!18579)))))

(declare-fun tp!911649 () Bool)

(declare-fun b!2844490 () Bool)

(assert (=> b!2844490 (= e!1802138 (and tp!911649 (inv!45710 (tag!5574 (rule!7498 t2!27))) (inv!45715 (transformation!5070 (rule!7498 t2!27))) e!1802130))))

(declare-fun b!2844491 () Bool)

(declare-fun e!1802156 () Bool)

(assert (=> b!2844491 (= e!1802134 e!1802156)))

(declare-fun e!1802142 () Bool)

(assert (=> b!2844492 (= e!1802142 (and tp!911652 tp!911645))))

(declare-fun b!2844493 () Bool)

(declare-fun tp!911628 () Bool)

(assert (=> b!2844493 (= e!1802137 (and tp!911628 mapRes!18578))))

(declare-fun condMapEmpty!18579 () Bool)

(declare-fun mapDefault!18578 () List!33837)

(assert (=> b!2844493 (= condMapEmpty!18579 (= (arr!6484 (_values!4374 (v!34382 (underlying!8415 (v!34383 (underlying!8416 (cache!4134 cacheUp!434))))))) ((as const (Array (_ BitVec 32) List!33837)) mapDefault!18578)))))

(declare-fun b!2844494 () Bool)

(declare-fun res!1183212 () Bool)

(assert (=> b!2844494 (=> (not res!1183212) (not e!1802132))))

(declare-fun rulesInvariant!4075 (LexerInterface!4660 List!33838) Bool)

(assert (=> b!2844494 (= res!1183212 (rulesInvariant!4075 thiss!11361 rules!1139))))

(assert (=> b!2844495 (= e!1802144 (and e!1802153 tp!911648))))

(declare-fun e!1802133 () Bool)

(declare-fun tp!911639 () Bool)

(declare-fun b!2844496 () Bool)

(assert (=> b!2844496 (= e!1802133 (and (inv!21 (value!162897 t1!27)) e!1802146 tp!911639))))

(declare-fun b!2844497 () Bool)

(declare-fun e!1802128 () Bool)

(assert (=> b!2844497 (= e!1802128 e!1802143)))

(declare-fun mapNonEmpty!18578 () Bool)

(declare-fun tp!911643 () Bool)

(declare-fun tp!911627 () Bool)

(assert (=> mapNonEmpty!18578 (= mapRes!18579 (and tp!911643 tp!911627))))

(declare-fun mapValue!18578 () List!33839)

(declare-fun mapRest!18579 () (Array (_ BitVec 32) List!33839))

(declare-fun mapKey!18578 () (_ BitVec 32))

(assert (=> mapNonEmpty!18578 (= (arr!6485 (_values!4375 (v!34384 (underlying!8417 (v!34385 (underlying!8418 (cache!4135 cacheDown!447))))))) (store mapRest!18579 mapKey!18578 mapValue!18578))))

(declare-fun mapNonEmpty!18579 () Bool)

(declare-fun tp!911647 () Bool)

(declare-fun tp!911631 () Bool)

(assert (=> mapNonEmpty!18579 (= mapRes!18578 (and tp!911647 tp!911631))))

(declare-fun mapValue!18579 () List!33837)

(declare-fun mapRest!18578 () (Array (_ BitVec 32) List!33837))

(declare-fun mapKey!18579 () (_ BitVec 32))

(assert (=> mapNonEmpty!18579 (= (arr!6484 (_values!4374 (v!34382 (underlying!8415 (v!34383 (underlying!8416 (cache!4134 cacheUp!434))))))) (store mapRest!18578 mapKey!18579 mapValue!18579))))

(declare-fun mapIsEmpty!18579 () Bool)

(assert (=> mapIsEmpty!18579 mapRes!18579))

(declare-fun b!2844498 () Bool)

(assert (=> b!2844498 (= e!1802132 e!1802157)))

(declare-fun res!1183209 () Bool)

(assert (=> b!2844498 (=> (not res!1183209) (not e!1802157))))

(declare-fun isEmpty!18563 (BalanceConc!20550) Bool)

(assert (=> b!2844498 (= res!1183209 (not (isEmpty!18563 lt!1012225)))))

(assert (=> b!2844498 (= lt!1012225 (charsOf!3119 t2!27))))

(declare-fun b!2844499 () Bool)

(declare-fun res!1183214 () Bool)

(assert (=> b!2844499 (=> (not res!1183214) (not e!1802132))))

(declare-fun rulesProduceIndividualToken!2170 (LexerInterface!4660 List!33838 Token!9542) Bool)

(assert (=> b!2844499 (= res!1183214 (rulesProduceIndividualToken!2170 thiss!11361 rules!1139 t1!27))))

(declare-fun b!2844500 () Bool)

(assert (=> b!2844500 (= e!1802156 e!1802147)))

(declare-fun res!1183211 () Bool)

(assert (=> start!276888 (=> (not res!1183211) (not e!1802132))))

(assert (=> start!276888 (= res!1183211 ((_ is Lexer!4658) thiss!11361))))

(assert (=> start!276888 e!1802132))

(assert (=> start!276888 true))

(declare-fun inv!45716 (CacheUp!2696) Bool)

(assert (=> start!276888 (and (inv!45716 cacheUp!434) e!1802128)))

(assert (=> start!276888 e!1802151))

(declare-fun inv!45717 (CacheDown!2818) Bool)

(assert (=> start!276888 (and (inv!45717 cacheDown!447) e!1802149)))

(declare-fun inv!45718 (Token!9542) Bool)

(assert (=> start!276888 (and (inv!45718 t2!27) e!1802158)))

(assert (=> start!276888 (and (inv!45718 t1!27) e!1802133)))

(declare-fun tp!911651 () Bool)

(declare-fun b!2844501 () Bool)

(assert (=> b!2844501 (= e!1802145 (and tp!911651 (inv!45710 (tag!5574 (h!39134 rules!1139))) (inv!45715 (transformation!5070 (h!39134 rules!1139))) e!1802142))))

(declare-fun b!2844502 () Bool)

(declare-fun res!1183210 () Bool)

(assert (=> b!2844502 (=> (not res!1183210) (not e!1802132))))

(assert (=> b!2844502 (= res!1183210 (rulesProduceIndividualToken!2170 thiss!11361 rules!1139 t2!27))))

(assert (= (and start!276888 res!1183211) b!2844476))

(assert (= (and b!2844476 res!1183213) b!2844494))

(assert (= (and b!2844494 res!1183212) b!2844499))

(assert (= (and b!2844499 res!1183214) b!2844502))

(assert (= (and b!2844502 res!1183210) b!2844498))

(assert (= (and b!2844498 res!1183209) b!2844480))

(assert (= (and b!2844493 condMapEmpty!18579) mapIsEmpty!18578))

(assert (= (and b!2844493 (not condMapEmpty!18579)) mapNonEmpty!18579))

(assert (= b!2844475 b!2844493))

(assert (= b!2844478 b!2844475))

(assert (= b!2844481 b!2844478))

(assert (= (and b!2844487 ((_ is LongMap!4093) (v!34383 (underlying!8416 (cache!4134 cacheUp!434))))) b!2844481))

(assert (= b!2844485 b!2844487))

(assert (= (and b!2844497 ((_ is HashMap!3999) (cache!4134 cacheUp!434))) b!2844485))

(assert (= start!276888 b!2844497))

(assert (= b!2844501 b!2844492))

(assert (= b!2844479 b!2844501))

(assert (= (and start!276888 ((_ is Cons!33714) rules!1139)) b!2844479))

(assert (= (and b!2844489 condMapEmpty!18578) mapIsEmpty!18579))

(assert (= (and b!2844489 (not condMapEmpty!18578)) mapNonEmpty!18578))

(assert (= b!2844483 b!2844489))

(assert (= b!2844500 b!2844483))

(assert (= b!2844491 b!2844500))

(assert (= (and b!2844484 ((_ is LongMap!4094) (v!34385 (underlying!8418 (cache!4135 cacheDown!447))))) b!2844491))

(assert (= b!2844495 b!2844484))

(assert (= (and b!2844486 ((_ is HashMap!4000) (cache!4135 cacheDown!447))) b!2844495))

(assert (= start!276888 b!2844486))

(assert (= b!2844490 b!2844477))

(assert (= b!2844482 b!2844490))

(assert (= start!276888 b!2844482))

(assert (= b!2844474 b!2844488))

(assert (= b!2844496 b!2844474))

(assert (= start!276888 b!2844496))

(declare-fun m!3272311 () Bool)

(assert (=> b!2844480 m!3272311))

(declare-fun m!3272313 () Bool)

(assert (=> b!2844480 m!3272313))

(declare-fun m!3272315 () Bool)

(assert (=> b!2844480 m!3272315))

(declare-fun m!3272317 () Bool)

(assert (=> b!2844480 m!3272317))

(assert (=> b!2844480 m!3272311))

(assert (=> b!2844480 m!3272315))

(declare-fun m!3272319 () Bool)

(assert (=> b!2844480 m!3272319))

(assert (=> b!2844480 m!3272317))

(declare-fun m!3272321 () Bool)

(assert (=> b!2844480 m!3272321))

(assert (=> b!2844480 m!3272313))

(assert (=> b!2844480 m!3272319))

(declare-fun m!3272323 () Bool)

(assert (=> start!276888 m!3272323))

(declare-fun m!3272325 () Bool)

(assert (=> start!276888 m!3272325))

(declare-fun m!3272327 () Bool)

(assert (=> start!276888 m!3272327))

(declare-fun m!3272329 () Bool)

(assert (=> start!276888 m!3272329))

(declare-fun m!3272331 () Bool)

(assert (=> b!2844499 m!3272331))

(declare-fun m!3272333 () Bool)

(assert (=> b!2844475 m!3272333))

(declare-fun m!3272335 () Bool)

(assert (=> b!2844475 m!3272335))

(declare-fun m!3272337 () Bool)

(assert (=> b!2844498 m!3272337))

(declare-fun m!3272339 () Bool)

(assert (=> b!2844498 m!3272339))

(declare-fun m!3272341 () Bool)

(assert (=> mapNonEmpty!18578 m!3272341))

(declare-fun m!3272343 () Bool)

(assert (=> b!2844494 m!3272343))

(declare-fun m!3272345 () Bool)

(assert (=> b!2844502 m!3272345))

(declare-fun m!3272347 () Bool)

(assert (=> b!2844483 m!3272347))

(declare-fun m!3272349 () Bool)

(assert (=> b!2844483 m!3272349))

(declare-fun m!3272351 () Bool)

(assert (=> b!2844482 m!3272351))

(declare-fun m!3272353 () Bool)

(assert (=> b!2844496 m!3272353))

(declare-fun m!3272355 () Bool)

(assert (=> b!2844474 m!3272355))

(declare-fun m!3272357 () Bool)

(assert (=> b!2844474 m!3272357))

(declare-fun m!3272359 () Bool)

(assert (=> b!2844476 m!3272359))

(declare-fun m!3272361 () Bool)

(assert (=> b!2844501 m!3272361))

(declare-fun m!3272363 () Bool)

(assert (=> b!2844501 m!3272363))

(declare-fun m!3272365 () Bool)

(assert (=> b!2844490 m!3272365))

(declare-fun m!3272367 () Bool)

(assert (=> b!2844490 m!3272367))

(declare-fun m!3272369 () Bool)

(assert (=> mapNonEmpty!18579 m!3272369))

(check-sat (not b!2844479) (not b!2844498) b_and!208827 b_and!208823 (not b!2844476) (not b!2844493) (not mapNonEmpty!18579) (not b_next!83311) b_and!208819 (not b!2844499) (not mapNonEmpty!18578) (not b_next!83301) b_and!208817 (not b!2844482) (not b!2844496) (not b!2844494) (not b!2844475) b_and!208813 (not b_next!83309) (not b_next!83313) b_and!208829 (not b_next!83299) (not b_next!83307) b_and!208811 b_and!208825 (not b!2844501) (not b!2844474) (not b_next!83297) (not b!2844489) b_and!208821 b_and!208815 (not b!2844480) (not b_next!83303) (not b_next!83305) (not b!2844502) (not start!276888) (not b_next!83315) (not b!2844483) (not b!2844490))
(check-sat b_and!208827 b_and!208823 b_and!208825 (not b_next!83311) b_and!208819 (not b_next!83297) b_and!208821 b_and!208815 (not b_next!83301) (not b_next!83315) b_and!208817 b_and!208813 (not b_next!83309) (not b_next!83313) b_and!208829 (not b_next!83299) (not b_next!83307) b_and!208811 (not b_next!83303) (not b_next!83305))
