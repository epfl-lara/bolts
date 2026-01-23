; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266394 () Bool)

(assert start!266394)

(declare-fun b!2748141 () Bool)

(declare-fun b_free!77577 () Bool)

(declare-fun b_next!78281 () Bool)

(assert (=> b!2748141 (= b_free!77577 (not b_next!78281))))

(declare-fun tp!866698 () Bool)

(declare-fun b_and!202301 () Bool)

(assert (=> b!2748141 (= tp!866698 b_and!202301)))

(declare-fun b!2748136 () Bool)

(declare-fun b_free!77579 () Bool)

(declare-fun b_next!78283 () Bool)

(assert (=> b!2748136 (= b_free!77579 (not b_next!78283))))

(declare-fun tp!866704 () Bool)

(declare-fun b_and!202303 () Bool)

(assert (=> b!2748136 (= tp!866704 b_and!202303)))

(declare-fun b!2748139 () Bool)

(declare-fun b_free!77581 () Bool)

(declare-fun b_next!78285 () Bool)

(assert (=> b!2748139 (= b_free!77581 (not b_next!78285))))

(declare-fun tp!866706 () Bool)

(declare-fun b_and!202305 () Bool)

(assert (=> b!2748139 (= tp!866706 b_and!202305)))

(declare-fun b!2748132 () Bool)

(declare-fun b_free!77583 () Bool)

(declare-fun b_next!78287 () Bool)

(assert (=> b!2748132 (= b_free!77583 (not b_next!78287))))

(declare-fun tp!866695 () Bool)

(declare-fun b_and!202307 () Bool)

(assert (=> b!2748132 (= tp!866695 b_and!202307)))

(declare-fun b!2748145 () Bool)

(declare-fun b_free!77585 () Bool)

(declare-fun b_next!78289 () Bool)

(assert (=> b!2748145 (= b_free!77585 (not b_next!78289))))

(declare-fun tp!866707 () Bool)

(declare-fun b_and!202309 () Bool)

(assert (=> b!2748145 (= tp!866707 b_and!202309)))

(declare-fun b_free!77587 () Bool)

(declare-fun b_next!78291 () Bool)

(assert (=> b!2748145 (= b_free!77587 (not b_next!78291))))

(declare-fun tp!866709 () Bool)

(declare-fun b_and!202311 () Bool)

(assert (=> b!2748145 (= tp!866709 b_and!202311)))

(declare-fun b!2748130 () Bool)

(declare-fun e!1731914 () Bool)

(declare-fun e!1731917 () Bool)

(assert (=> b!2748130 (= e!1731914 e!1731917)))

(declare-fun b!2748131 () Bool)

(declare-fun e!1731908 () Bool)

(declare-fun e!1731904 () Bool)

(assert (=> b!2748131 (= e!1731908 e!1731904)))

(declare-fun e!1731912 () Bool)

(assert (=> b!2748132 (= e!1731904 (and e!1731912 tp!866695))))

(declare-fun b!2748133 () Bool)

(declare-fun e!1731911 () Bool)

(declare-datatypes ((C!16192 0))(
  ( (C!16193 (val!10030 Int)) )
))
(declare-datatypes ((Regex!8017 0))(
  ( (ElementMatch!8017 (c!444937 C!16192)) (Concat!13098 (regOne!16546 Regex!8017) (regTwo!16546 Regex!8017)) (EmptyExpr!8017) (Star!8017 (reg!8346 Regex!8017)) (EmptyLang!8017) (Union!8017 (regOne!16547 Regex!8017) (regTwo!16547 Regex!8017)) )
))
(declare-datatypes ((List!31812 0))(
  ( (Nil!31712) (Cons!31712 (h!37132 Regex!8017) (t!227906 List!31812)) )
))
(declare-datatypes ((Context!4470 0))(
  ( (Context!4471 (exprs!2735 List!31812)) )
))
(declare-datatypes ((tuple2!31578 0))(
  ( (tuple2!31579 (_1!18498 Context!4470) (_2!18498 C!16192)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31580 0))(
  ( (tuple2!31581 (_1!18499 tuple2!31578) (_2!18499 (InoxSet Context!4470))) )
))
(declare-datatypes ((List!31813 0))(
  ( (Nil!31713) (Cons!31713 (h!37133 tuple2!31580) (t!227907 List!31813)) )
))
(declare-datatypes ((array!12987 0))(
  ( (array!12988 (arr!5796 (Array (_ BitVec 32) (_ BitVec 64))) (size!24480 (_ BitVec 32))) )
))
(declare-datatypes ((array!12989 0))(
  ( (array!12990 (arr!5797 (Array (_ BitVec 32) List!31813)) (size!24481 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7292 0))(
  ( (LongMapFixedSize!7293 (defaultEntry!4031 Int) (mask!9391 (_ BitVec 32)) (extraKeys!3895 (_ BitVec 32)) (zeroValue!3905 List!31813) (minValue!3905 List!31813) (_size!7335 (_ BitVec 32)) (_keys!3946 array!12987) (_values!3927 array!12989) (_vacant!3707 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14393 0))(
  ( (Cell!14394 (v!33329 LongMapFixedSize!7292)) )
))
(declare-datatypes ((MutLongMap!3646 0))(
  ( (LongMap!3646 (underlying!7495 Cell!14393)) (MutLongMapExt!3645 (__x!20575 Int)) )
))
(declare-fun lt!971982 () MutLongMap!3646)

(get-info :version)

(assert (=> b!2748133 (= e!1731912 (and e!1731911 ((_ is LongMap!3646) lt!971982)))))

(declare-datatypes ((Cell!14395 0))(
  ( (Cell!14396 (v!33330 MutLongMap!3646)) )
))
(declare-datatypes ((Hashable!3562 0))(
  ( (HashableExt!3561 (__x!20576 Int)) )
))
(declare-datatypes ((MutableMap!3552 0))(
  ( (MutableMapExt!3551 (__x!20577 Int)) (HashMap!3552 (underlying!7496 Cell!14395) (hashF!5594 Hashable!3562) (_size!7336 (_ BitVec 32)) (defaultValue!3723 Int)) )
))
(declare-datatypes ((CacheUp!2258 0))(
  ( (CacheUp!2259 (cache!3695 MutableMap!3552)) )
))
(declare-fun cacheUp!717 () CacheUp!2258)

(assert (=> b!2748133 (= lt!971982 (v!33330 (underlying!7496 (cache!3695 cacheUp!717))))))

(declare-fun b!2748134 () Bool)

(declare-fun e!1731916 () Bool)

(declare-fun e!1731905 () Bool)

(assert (=> b!2748134 (= e!1731916 e!1731905)))

(declare-fun b!2748135 () Bool)

(declare-fun res!1152837 () Bool)

(declare-fun e!1731910 () Bool)

(assert (=> b!2748135 (=> (not res!1152837) (not e!1731910))))

(declare-fun valid!2827 (CacheUp!2258) Bool)

(assert (=> b!2748135 (= res!1152837 (valid!2827 cacheUp!717))))

(declare-fun e!1731899 () Bool)

(declare-fun tp!866703 () Bool)

(declare-fun tp!866696 () Bool)

(declare-fun e!1731907 () Bool)

(declare-fun array_inv!4142 (array!12987) Bool)

(declare-fun array_inv!4143 (array!12989) Bool)

(assert (=> b!2748136 (= e!1731899 (and tp!866704 tp!866703 tp!866696 (array_inv!4142 (_keys!3946 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717))))))) (array_inv!4143 (_values!3927 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717))))))) e!1731907))))

(declare-fun b!2748137 () Bool)

(declare-fun e!1731897 () Bool)

(assert (=> b!2748137 (= e!1731897 e!1731914)))

(declare-fun b!2748138 () Bool)

(declare-fun e!1731915 () Bool)

(assert (=> b!2748138 (= e!1731915 e!1731899)))

(declare-fun e!1731898 () Bool)

(assert (=> b!2748139 (= e!1731905 (and e!1731898 tp!866706))))

(declare-fun tp!866705 () Bool)

(declare-fun tp!866694 () Bool)

(declare-fun e!1731903 () Bool)

(declare-datatypes ((tuple3!4478 0))(
  ( (tuple3!4479 (_1!18500 Regex!8017) (_2!18500 Context!4470) (_3!2709 C!16192)) )
))
(declare-datatypes ((tuple2!31582 0))(
  ( (tuple2!31583 (_1!18501 tuple3!4478) (_2!18501 (InoxSet Context!4470))) )
))
(declare-datatypes ((List!31814 0))(
  ( (Nil!31714) (Cons!31714 (h!37134 tuple2!31582) (t!227908 List!31814)) )
))
(declare-datatypes ((array!12991 0))(
  ( (array!12992 (arr!5798 (Array (_ BitVec 32) List!31814)) (size!24482 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7294 0))(
  ( (LongMapFixedSize!7295 (defaultEntry!4032 Int) (mask!9392 (_ BitVec 32)) (extraKeys!3896 (_ BitVec 32)) (zeroValue!3906 List!31814) (minValue!3906 List!31814) (_size!7337 (_ BitVec 32)) (_keys!3947 array!12987) (_values!3928 array!12991) (_vacant!3708 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14397 0))(
  ( (Cell!14398 (v!33331 LongMapFixedSize!7294)) )
))
(declare-datatypes ((MutLongMap!3647 0))(
  ( (LongMap!3647 (underlying!7497 Cell!14397)) (MutLongMapExt!3646 (__x!20578 Int)) )
))
(declare-datatypes ((Cell!14399 0))(
  ( (Cell!14400 (v!33332 MutLongMap!3647)) )
))
(declare-datatypes ((Hashable!3563 0))(
  ( (HashableExt!3562 (__x!20579 Int)) )
))
(declare-datatypes ((MutableMap!3553 0))(
  ( (MutableMapExt!3552 (__x!20580 Int)) (HashMap!3553 (underlying!7498 Cell!14399) (hashF!5595 Hashable!3563) (_size!7338 (_ BitVec 32)) (defaultValue!3724 Int)) )
))
(declare-datatypes ((CacheDown!2378 0))(
  ( (CacheDown!2379 (cache!3696 MutableMap!3553)) )
))
(declare-fun cacheDown!730 () CacheDown!2378)

(declare-fun array_inv!4144 (array!12991) Bool)

(assert (=> b!2748141 (= e!1731917 (and tp!866698 tp!866705 tp!866694 (array_inv!4142 (_keys!3947 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730))))))) (array_inv!4144 (_values!3928 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730))))))) e!1731903))))

(declare-fun mapIsEmpty!16627 () Bool)

(declare-fun mapRes!16627 () Bool)

(assert (=> mapIsEmpty!16627 mapRes!16627))

(declare-fun b!2748142 () Bool)

(declare-fun tp!866692 () Bool)

(assert (=> b!2748142 (= e!1731903 (and tp!866692 mapRes!16627))))

(declare-fun condMapEmpty!16627 () Bool)

(declare-fun mapDefault!16628 () List!31814)

(assert (=> b!2748142 (= condMapEmpty!16627 (= (arr!5798 (_values!3928 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730))))))) ((as const (Array (_ BitVec 32) List!31814)) mapDefault!16628)))))

(declare-fun b!2748143 () Bool)

(declare-fun lt!971983 () MutLongMap!3647)

(assert (=> b!2748143 (= e!1731898 (and e!1731897 ((_ is LongMap!3647) lt!971983)))))

(assert (=> b!2748143 (= lt!971983 (v!33332 (underlying!7498 (cache!3696 cacheDown!730))))))

(declare-fun b!2748144 () Bool)

(declare-fun res!1152834 () Bool)

(assert (=> b!2748144 (=> (not res!1152834) (not e!1731910))))

(declare-fun valid!2828 (CacheDown!2378) Bool)

(assert (=> b!2748144 (= res!1152834 (valid!2828 cacheDown!730))))

(declare-fun e!1731902 () Bool)

(assert (=> b!2748145 (= e!1731902 (and tp!866707 tp!866709))))

(declare-fun mapNonEmpty!16627 () Bool)

(declare-fun tp!866700 () Bool)

(declare-fun tp!866699 () Bool)

(assert (=> mapNonEmpty!16627 (= mapRes!16627 (and tp!866700 tp!866699))))

(declare-fun mapValue!16627 () List!31814)

(declare-fun mapKey!16627 () (_ BitVec 32))

(declare-fun mapRest!16627 () (Array (_ BitVec 32) List!31814))

(assert (=> mapNonEmpty!16627 (= (arr!5798 (_values!3928 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730))))))) (store mapRest!16627 mapKey!16627 mapValue!16627))))

(declare-fun b!2748146 () Bool)

(declare-fun tp!866708 () Bool)

(declare-fun mapRes!16628 () Bool)

(assert (=> b!2748146 (= e!1731907 (and tp!866708 mapRes!16628))))

(declare-fun condMapEmpty!16628 () Bool)

(declare-fun mapDefault!16627 () List!31813)

(assert (=> b!2748146 (= condMapEmpty!16628 (= (arr!5797 (_values!3927 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717))))))) ((as const (Array (_ BitVec 32) List!31813)) mapDefault!16627)))))

(declare-fun mapIsEmpty!16628 () Bool)

(assert (=> mapIsEmpty!16628 mapRes!16628))

(declare-fun e!1731901 () Bool)

(declare-fun tp!866702 () Bool)

(declare-fun b!2748147 () Bool)

(declare-datatypes ((List!31815 0))(
  ( (Nil!31715) (Cons!31715 (h!37135 C!16192) (t!227909 List!31815)) )
))
(declare-datatypes ((IArray!19815 0))(
  ( (IArray!19816 (innerList!9965 List!31815)) )
))
(declare-datatypes ((Conc!9905 0))(
  ( (Node!9905 (left!24271 Conc!9905) (right!24601 Conc!9905) (csize!20040 Int) (cheight!10116 Int)) (Leaf!15082 (xs!13012 IArray!19815) (csize!20041 Int)) (Empty!9905) )
))
(declare-datatypes ((BalanceConc!19424 0))(
  ( (BalanceConc!19425 (c!444938 Conc!9905)) )
))
(declare-datatypes ((String!35316 0))(
  ( (String!35317 (value!156051 String)) )
))
(declare-datatypes ((List!31816 0))(
  ( (Nil!31716) (Cons!31716 (h!37136 (_ BitVec 16)) (t!227910 List!31816)) )
))
(declare-datatypes ((TokenValue!5081 0))(
  ( (FloatLiteralValue!10162 (text!36012 List!31816)) (TokenValueExt!5080 (__x!20581 Int)) (Broken!25405 (value!156052 List!31816)) (Object!5180) (End!5081) (Def!5081) (Underscore!5081) (Match!5081) (Else!5081) (Error!5081) (Case!5081) (If!5081) (Extends!5081) (Abstract!5081) (Class!5081) (Val!5081) (DelimiterValue!10162 (del!5141 List!31816)) (KeywordValue!5087 (value!156053 List!31816)) (CommentValue!10162 (value!156054 List!31816)) (WhitespaceValue!10162 (value!156055 List!31816)) (IndentationValue!5081 (value!156056 List!31816)) (String!35318) (Int32!5081) (Broken!25406 (value!156057 List!31816)) (Boolean!5082) (Unit!45553) (OperatorValue!5084 (op!5141 List!31816)) (IdentifierValue!10162 (value!156058 List!31816)) (IdentifierValue!10163 (value!156059 List!31816)) (WhitespaceValue!10163 (value!156060 List!31816)) (True!10162) (False!10162) (Broken!25407 (value!156061 List!31816)) (Broken!25408 (value!156062 List!31816)) (True!10163) (RightBrace!5081) (RightBracket!5081) (Colon!5081) (Null!5081) (Comma!5081) (LeftBracket!5081) (False!10163) (LeftBrace!5081) (ImaginaryLiteralValue!5081 (text!36013 List!31816)) (StringLiteralValue!15243 (value!156063 List!31816)) (EOFValue!5081 (value!156064 List!31816)) (IdentValue!5081 (value!156065 List!31816)) (DelimiterValue!10163 (value!156066 List!31816)) (DedentValue!5081 (value!156067 List!31816)) (NewLineValue!5081 (value!156068 List!31816)) (IntegerValue!15243 (value!156069 (_ BitVec 32)) (text!36014 List!31816)) (IntegerValue!15244 (value!156070 Int) (text!36015 List!31816)) (Times!5081) (Or!5081) (Equal!5081) (Minus!5081) (Broken!25409 (value!156071 List!31816)) (And!5081) (Div!5081) (LessEqual!5081) (Mod!5081) (Concat!13099) (Not!5081) (Plus!5081) (SpaceValue!5081 (value!156072 List!31816)) (IntegerValue!15245 (value!156073 Int) (text!36016 List!31816)) (StringLiteralValue!15244 (text!36017 List!31816)) (FloatLiteralValue!10163 (text!36018 List!31816)) (BytesLiteralValue!5081 (value!156074 List!31816)) (CommentValue!10163 (value!156075 List!31816)) (StringLiteralValue!15245 (value!156076 List!31816)) (ErrorTokenValue!5081 (msg!5142 List!31816)) )
))
(declare-datatypes ((TokenValueInjection!9602 0))(
  ( (TokenValueInjection!9603 (toValue!6857 Int) (toChars!6716 Int)) )
))
(declare-datatypes ((Rule!9518 0))(
  ( (Rule!9519 (regex!4859 Regex!8017) (tag!5363 String!35316) (isSeparator!4859 Bool) (transformation!4859 TokenValueInjection!9602)) )
))
(declare-fun rule!196 () Rule!9518)

(declare-fun inv!43069 (String!35316) Bool)

(declare-fun inv!43071 (TokenValueInjection!9602) Bool)

(assert (=> b!2748147 (= e!1731901 (and tp!866702 (inv!43069 (tag!5363 rule!196)) (inv!43071 (transformation!4859 rule!196)) e!1731902))))

(declare-fun b!2748148 () Bool)

(declare-fun e!1731900 () Bool)

(declare-fun input!1561 () BalanceConc!19424)

(declare-fun tp!866693 () Bool)

(declare-fun inv!43072 (Conc!9905) Bool)

(assert (=> b!2748148 (= e!1731900 (and (inv!43072 (c!444938 input!1561)) tp!866693))))

(declare-fun mapNonEmpty!16628 () Bool)

(declare-fun tp!866697 () Bool)

(declare-fun tp!866701 () Bool)

(assert (=> mapNonEmpty!16628 (= mapRes!16628 (and tp!866697 tp!866701))))

(declare-fun mapKey!16628 () (_ BitVec 32))

(declare-fun mapRest!16628 () (Array (_ BitVec 32) List!31813))

(declare-fun mapValue!16628 () List!31813)

(assert (=> mapNonEmpty!16628 (= (arr!5797 (_values!3927 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717))))))) (store mapRest!16628 mapKey!16628 mapValue!16628))))

(declare-fun b!2748149 () Bool)

(declare-fun res!1152835 () Bool)

(assert (=> b!2748149 (=> (not res!1152835) (not e!1731910))))

(declare-datatypes ((LexerInterface!4451 0))(
  ( (LexerInterfaceExt!4448 (__x!20582 Int)) (Lexer!4449) )
))
(declare-fun thiss!16130 () LexerInterface!4451)

(declare-fun ruleValid!1598 (LexerInterface!4451 Rule!9518) Bool)

(assert (=> b!2748149 (= res!1152835 (ruleValid!1598 thiss!16130 rule!196))))

(declare-fun b!2748150 () Bool)

(declare-datatypes ((tuple2!31584 0))(
  ( (tuple2!31585 (_1!18502 BalanceConc!19424) (_2!18502 BalanceConc!19424)) )
))
(declare-datatypes ((tuple3!4480 0))(
  ( (tuple3!4481 (_1!18503 tuple2!31584) (_2!18503 CacheUp!2258) (_3!2710 CacheDown!2378)) )
))
(declare-fun findLongestMatchWithZipperSequenceMem!15 (Regex!8017 BalanceConc!19424 CacheUp!2258 CacheDown!2378) tuple3!4480)

(declare-fun findLongestMatchWithZipperSequence!194 (Regex!8017 BalanceConc!19424) tuple2!31584)

(assert (=> b!2748150 (= e!1731910 (not (= (_1!18503 (findLongestMatchWithZipperSequenceMem!15 (regex!4859 rule!196) input!1561 cacheUp!717 cacheDown!730)) (findLongestMatchWithZipperSequence!194 (regex!4859 rule!196) input!1561))))))

(declare-fun res!1152836 () Bool)

(assert (=> start!266394 (=> (not res!1152836) (not e!1731910))))

(assert (=> start!266394 (= res!1152836 ((_ is Lexer!4449) thiss!16130))))

(assert (=> start!266394 e!1731910))

(declare-fun inv!43073 (BalanceConc!19424) Bool)

(assert (=> start!266394 (and (inv!43073 input!1561) e!1731900)))

(declare-fun inv!43074 (CacheUp!2258) Bool)

(assert (=> start!266394 (and (inv!43074 cacheUp!717) e!1731908)))

(assert (=> start!266394 true))

(declare-fun inv!43075 (CacheDown!2378) Bool)

(assert (=> start!266394 (and (inv!43075 cacheDown!730) e!1731916)))

(assert (=> start!266394 e!1731901))

(declare-fun b!2748140 () Bool)

(assert (=> b!2748140 (= e!1731911 e!1731915)))

(assert (= (and start!266394 res!1152836) b!2748149))

(assert (= (and b!2748149 res!1152835) b!2748135))

(assert (= (and b!2748135 res!1152837) b!2748144))

(assert (= (and b!2748144 res!1152834) b!2748150))

(assert (= start!266394 b!2748148))

(assert (= (and b!2748146 condMapEmpty!16628) mapIsEmpty!16628))

(assert (= (and b!2748146 (not condMapEmpty!16628)) mapNonEmpty!16628))

(assert (= b!2748136 b!2748146))

(assert (= b!2748138 b!2748136))

(assert (= b!2748140 b!2748138))

(assert (= (and b!2748133 ((_ is LongMap!3646) (v!33330 (underlying!7496 (cache!3695 cacheUp!717))))) b!2748140))

(assert (= b!2748132 b!2748133))

(assert (= (and b!2748131 ((_ is HashMap!3552) (cache!3695 cacheUp!717))) b!2748132))

(assert (= start!266394 b!2748131))

(assert (= (and b!2748142 condMapEmpty!16627) mapIsEmpty!16627))

(assert (= (and b!2748142 (not condMapEmpty!16627)) mapNonEmpty!16627))

(assert (= b!2748141 b!2748142))

(assert (= b!2748130 b!2748141))

(assert (= b!2748137 b!2748130))

(assert (= (and b!2748143 ((_ is LongMap!3647) (v!33332 (underlying!7498 (cache!3696 cacheDown!730))))) b!2748137))

(assert (= b!2748139 b!2748143))

(assert (= (and b!2748134 ((_ is HashMap!3553) (cache!3696 cacheDown!730))) b!2748139))

(assert (= start!266394 b!2748134))

(assert (= b!2748147 b!2748145))

(assert (= start!266394 b!2748147))

(declare-fun m!3163915 () Bool)

(assert (=> b!2748150 m!3163915))

(declare-fun m!3163917 () Bool)

(assert (=> b!2748150 m!3163917))

(declare-fun m!3163919 () Bool)

(assert (=> b!2748149 m!3163919))

(declare-fun m!3163921 () Bool)

(assert (=> b!2748147 m!3163921))

(declare-fun m!3163923 () Bool)

(assert (=> b!2748147 m!3163923))

(declare-fun m!3163925 () Bool)

(assert (=> start!266394 m!3163925))

(declare-fun m!3163927 () Bool)

(assert (=> start!266394 m!3163927))

(declare-fun m!3163929 () Bool)

(assert (=> start!266394 m!3163929))

(declare-fun m!3163931 () Bool)

(assert (=> b!2748141 m!3163931))

(declare-fun m!3163933 () Bool)

(assert (=> b!2748141 m!3163933))

(declare-fun m!3163935 () Bool)

(assert (=> b!2748144 m!3163935))

(declare-fun m!3163937 () Bool)

(assert (=> b!2748136 m!3163937))

(declare-fun m!3163939 () Bool)

(assert (=> b!2748136 m!3163939))

(declare-fun m!3163941 () Bool)

(assert (=> mapNonEmpty!16628 m!3163941))

(declare-fun m!3163943 () Bool)

(assert (=> b!2748135 m!3163943))

(declare-fun m!3163945 () Bool)

(assert (=> mapNonEmpty!16627 m!3163945))

(declare-fun m!3163947 () Bool)

(assert (=> b!2748148 m!3163947))

(check-sat (not b!2748148) (not b!2748146) b_and!202309 (not b!2748149) (not b!2748135) b_and!202307 (not b_next!78283) (not b_next!78285) b_and!202301 (not start!266394) (not mapNonEmpty!16627) (not b_next!78281) (not b_next!78287) (not b!2748147) (not b_next!78291) b_and!202305 (not b!2748150) (not b_next!78289) (not mapNonEmpty!16628) (not b!2748142) (not b!2748141) b_and!202303 (not b!2748144) (not b!2748136) b_and!202311)
(check-sat b_and!202309 (not b_next!78291) b_and!202307 (not b_next!78283) (not b_next!78285) b_and!202301 b_and!202303 (not b_next!78281) (not b_next!78287) b_and!202311 b_and!202305 (not b_next!78289))
(get-model)

(declare-fun d!796231 () Bool)

(assert (=> d!796231 (= (inv!43069 (tag!5363 rule!196)) (= (mod (str.len (value!156051 (tag!5363 rule!196))) 2) 0))))

(assert (=> b!2748147 d!796231))

(declare-fun d!796233 () Bool)

(declare-fun res!1152842 () Bool)

(declare-fun e!1731920 () Bool)

(assert (=> d!796233 (=> (not res!1152842) (not e!1731920))))

(declare-fun semiInverseModEq!2006 (Int Int) Bool)

(assert (=> d!796233 (= res!1152842 (semiInverseModEq!2006 (toChars!6716 (transformation!4859 rule!196)) (toValue!6857 (transformation!4859 rule!196))))))

(assert (=> d!796233 (= (inv!43071 (transformation!4859 rule!196)) e!1731920)))

(declare-fun b!2748153 () Bool)

(declare-fun equivClasses!1907 (Int Int) Bool)

(assert (=> b!2748153 (= e!1731920 (equivClasses!1907 (toChars!6716 (transformation!4859 rule!196)) (toValue!6857 (transformation!4859 rule!196))))))

(assert (= (and d!796233 res!1152842) b!2748153))

(declare-fun m!3163949 () Bool)

(assert (=> d!796233 m!3163949))

(declare-fun m!3163951 () Bool)

(assert (=> b!2748153 m!3163951))

(assert (=> b!2748147 d!796233))

(declare-fun d!796235 () Bool)

(declare-fun validCacheMapDown!375 (MutableMap!3553) Bool)

(assert (=> d!796235 (= (valid!2828 cacheDown!730) (validCacheMapDown!375 (cache!3696 cacheDown!730)))))

(declare-fun bs!490322 () Bool)

(assert (= bs!490322 d!796235))

(declare-fun m!3163953 () Bool)

(assert (=> bs!490322 m!3163953))

(assert (=> b!2748144 d!796235))

(declare-fun d!796237 () Bool)

(declare-fun isBalanced!3017 (Conc!9905) Bool)

(assert (=> d!796237 (= (inv!43073 input!1561) (isBalanced!3017 (c!444938 input!1561)))))

(declare-fun bs!490323 () Bool)

(assert (= bs!490323 d!796237))

(declare-fun m!3163955 () Bool)

(assert (=> bs!490323 m!3163955))

(assert (=> start!266394 d!796237))

(declare-fun d!796239 () Bool)

(declare-fun res!1152845 () Bool)

(declare-fun e!1731923 () Bool)

(assert (=> d!796239 (=> (not res!1152845) (not e!1731923))))

(assert (=> d!796239 (= res!1152845 ((_ is HashMap!3552) (cache!3695 cacheUp!717)))))

(assert (=> d!796239 (= (inv!43074 cacheUp!717) e!1731923)))

(declare-fun b!2748156 () Bool)

(declare-fun validCacheMapUp!344 (MutableMap!3552) Bool)

(assert (=> b!2748156 (= e!1731923 (validCacheMapUp!344 (cache!3695 cacheUp!717)))))

(assert (= (and d!796239 res!1152845) b!2748156))

(declare-fun m!3163957 () Bool)

(assert (=> b!2748156 m!3163957))

(assert (=> start!266394 d!796239))

(declare-fun d!796241 () Bool)

(declare-fun res!1152848 () Bool)

(declare-fun e!1731926 () Bool)

(assert (=> d!796241 (=> (not res!1152848) (not e!1731926))))

(assert (=> d!796241 (= res!1152848 ((_ is HashMap!3553) (cache!3696 cacheDown!730)))))

(assert (=> d!796241 (= (inv!43075 cacheDown!730) e!1731926)))

(declare-fun b!2748159 () Bool)

(assert (=> b!2748159 (= e!1731926 (validCacheMapDown!375 (cache!3696 cacheDown!730)))))

(assert (= (and d!796241 res!1152848) b!2748159))

(assert (=> b!2748159 m!3163953))

(assert (=> start!266394 d!796241))

(declare-fun d!796243 () Bool)

(declare-fun e!1731929 () Bool)

(assert (=> d!796243 e!1731929))

(declare-fun res!1152853 () Bool)

(assert (=> d!796243 (=> (not res!1152853) (not e!1731929))))

(declare-fun lt!971986 () tuple3!4480)

(assert (=> d!796243 (= res!1152853 (= (_1!18503 lt!971986) (findLongestMatchWithZipperSequence!194 (regex!4859 rule!196) input!1561)))))

(declare-fun choose!16072 (Regex!8017 BalanceConc!19424 CacheUp!2258 CacheDown!2378) tuple3!4480)

(assert (=> d!796243 (= lt!971986 (choose!16072 (regex!4859 rule!196) input!1561 cacheUp!717 cacheDown!730))))

(declare-fun validRegex!3319 (Regex!8017) Bool)

(assert (=> d!796243 (validRegex!3319 (regex!4859 rule!196))))

(assert (=> d!796243 (= (findLongestMatchWithZipperSequenceMem!15 (regex!4859 rule!196) input!1561 cacheUp!717 cacheDown!730) lt!971986)))

(declare-fun b!2748164 () Bool)

(declare-fun res!1152854 () Bool)

(assert (=> b!2748164 (=> (not res!1152854) (not e!1731929))))

(assert (=> b!2748164 (= res!1152854 (valid!2828 (_3!2710 lt!971986)))))

(declare-fun b!2748165 () Bool)

(assert (=> b!2748165 (= e!1731929 (valid!2827 (_2!18503 lt!971986)))))

(assert (= (and d!796243 res!1152853) b!2748164))

(assert (= (and b!2748164 res!1152854) b!2748165))

(assert (=> d!796243 m!3163917))

(declare-fun m!3163959 () Bool)

(assert (=> d!796243 m!3163959))

(declare-fun m!3163961 () Bool)

(assert (=> d!796243 m!3163961))

(declare-fun m!3163963 () Bool)

(assert (=> b!2748164 m!3163963))

(declare-fun m!3163965 () Bool)

(assert (=> b!2748165 m!3163965))

(assert (=> b!2748150 d!796243))

(declare-fun d!796245 () Bool)

(declare-fun lt!971989 () tuple2!31584)

(declare-datatypes ((tuple2!31586 0))(
  ( (tuple2!31587 (_1!18504 List!31815) (_2!18504 List!31815)) )
))
(declare-fun list!12006 (BalanceConc!19424) List!31815)

(declare-fun findLongestMatch!714 (Regex!8017 List!31815) tuple2!31586)

(assert (=> d!796245 (= (tuple2!31587 (list!12006 (_1!18502 lt!971989)) (list!12006 (_2!18502 lt!971989))) (findLongestMatch!714 (regex!4859 rule!196) (list!12006 input!1561)))))

(declare-fun choose!16073 (Regex!8017 BalanceConc!19424) tuple2!31584)

(assert (=> d!796245 (= lt!971989 (choose!16073 (regex!4859 rule!196) input!1561))))

(assert (=> d!796245 (validRegex!3319 (regex!4859 rule!196))))

(assert (=> d!796245 (= (findLongestMatchWithZipperSequence!194 (regex!4859 rule!196) input!1561) lt!971989)))

(declare-fun bs!490324 () Bool)

(assert (= bs!490324 d!796245))

(declare-fun m!3163967 () Bool)

(assert (=> bs!490324 m!3163967))

(declare-fun m!3163969 () Bool)

(assert (=> bs!490324 m!3163969))

(assert (=> bs!490324 m!3163961))

(declare-fun m!3163971 () Bool)

(assert (=> bs!490324 m!3163971))

(declare-fun m!3163973 () Bool)

(assert (=> bs!490324 m!3163973))

(assert (=> bs!490324 m!3163971))

(declare-fun m!3163975 () Bool)

(assert (=> bs!490324 m!3163975))

(assert (=> b!2748150 d!796245))

(declare-fun d!796247 () Bool)

(assert (=> d!796247 (= (array_inv!4142 (_keys!3946 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717))))))) (bvsge (size!24480 (_keys!3946 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717))))))) #b00000000000000000000000000000000))))

(assert (=> b!2748136 d!796247))

(declare-fun d!796249 () Bool)

(assert (=> d!796249 (= (array_inv!4143 (_values!3927 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717))))))) (bvsge (size!24481 (_values!3927 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717))))))) #b00000000000000000000000000000000))))

(assert (=> b!2748136 d!796249))

(declare-fun d!796251 () Bool)

(declare-fun res!1152859 () Bool)

(declare-fun e!1731932 () Bool)

(assert (=> d!796251 (=> (not res!1152859) (not e!1731932))))

(assert (=> d!796251 (= res!1152859 (validRegex!3319 (regex!4859 rule!196)))))

(assert (=> d!796251 (= (ruleValid!1598 thiss!16130 rule!196) e!1731932)))

(declare-fun b!2748170 () Bool)

(declare-fun res!1152860 () Bool)

(assert (=> b!2748170 (=> (not res!1152860) (not e!1731932))))

(declare-fun nullable!2610 (Regex!8017) Bool)

(assert (=> b!2748170 (= res!1152860 (not (nullable!2610 (regex!4859 rule!196))))))

(declare-fun b!2748171 () Bool)

(assert (=> b!2748171 (= e!1731932 (not (= (tag!5363 rule!196) (String!35317 ""))))))

(assert (= (and d!796251 res!1152859) b!2748170))

(assert (= (and b!2748170 res!1152860) b!2748171))

(assert (=> d!796251 m!3163961))

(declare-fun m!3163977 () Bool)

(assert (=> b!2748170 m!3163977))

(assert (=> b!2748149 d!796251))

(declare-fun d!796253 () Bool)

(assert (=> d!796253 (= (valid!2827 cacheUp!717) (validCacheMapUp!344 (cache!3695 cacheUp!717)))))

(declare-fun bs!490325 () Bool)

(assert (= bs!490325 d!796253))

(assert (=> bs!490325 m!3163957))

(assert (=> b!2748135 d!796253))

(declare-fun d!796255 () Bool)

(declare-fun c!444941 () Bool)

(assert (=> d!796255 (= c!444941 ((_ is Node!9905) (c!444938 input!1561)))))

(declare-fun e!1731937 () Bool)

(assert (=> d!796255 (= (inv!43072 (c!444938 input!1561)) e!1731937)))

(declare-fun b!2748178 () Bool)

(declare-fun inv!43076 (Conc!9905) Bool)

(assert (=> b!2748178 (= e!1731937 (inv!43076 (c!444938 input!1561)))))

(declare-fun b!2748179 () Bool)

(declare-fun e!1731938 () Bool)

(assert (=> b!2748179 (= e!1731937 e!1731938)))

(declare-fun res!1152863 () Bool)

(assert (=> b!2748179 (= res!1152863 (not ((_ is Leaf!15082) (c!444938 input!1561))))))

(assert (=> b!2748179 (=> res!1152863 e!1731938)))

(declare-fun b!2748180 () Bool)

(declare-fun inv!43077 (Conc!9905) Bool)

(assert (=> b!2748180 (= e!1731938 (inv!43077 (c!444938 input!1561)))))

(assert (= (and d!796255 c!444941) b!2748178))

(assert (= (and d!796255 (not c!444941)) b!2748179))

(assert (= (and b!2748179 (not res!1152863)) b!2748180))

(declare-fun m!3163979 () Bool)

(assert (=> b!2748178 m!3163979))

(declare-fun m!3163981 () Bool)

(assert (=> b!2748180 m!3163981))

(assert (=> b!2748148 d!796255))

(declare-fun d!796257 () Bool)

(assert (=> d!796257 (= (array_inv!4142 (_keys!3947 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730))))))) (bvsge (size!24480 (_keys!3947 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730))))))) #b00000000000000000000000000000000))))

(assert (=> b!2748141 d!796257))

(declare-fun d!796259 () Bool)

(assert (=> d!796259 (= (array_inv!4144 (_values!3928 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730))))))) (bvsge (size!24482 (_values!3928 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730))))))) #b00000000000000000000000000000000))))

(assert (=> b!2748141 d!796259))

(declare-fun b!2748191 () Bool)

(declare-fun e!1731941 () Bool)

(declare-fun tp_is_empty!13943 () Bool)

(assert (=> b!2748191 (= e!1731941 tp_is_empty!13943)))

(assert (=> b!2748147 (= tp!866702 e!1731941)))

(declare-fun b!2748193 () Bool)

(declare-fun tp!866721 () Bool)

(assert (=> b!2748193 (= e!1731941 tp!866721)))

(declare-fun b!2748194 () Bool)

(declare-fun tp!866720 () Bool)

(declare-fun tp!866723 () Bool)

(assert (=> b!2748194 (= e!1731941 (and tp!866720 tp!866723))))

(declare-fun b!2748192 () Bool)

(declare-fun tp!866724 () Bool)

(declare-fun tp!866722 () Bool)

(assert (=> b!2748192 (= e!1731941 (and tp!866724 tp!866722))))

(assert (= (and b!2748147 ((_ is ElementMatch!8017) (regex!4859 rule!196))) b!2748191))

(assert (= (and b!2748147 ((_ is Concat!13098) (regex!4859 rule!196))) b!2748192))

(assert (= (and b!2748147 ((_ is Star!8017) (regex!4859 rule!196))) b!2748193))

(assert (= (and b!2748147 ((_ is Union!8017) (regex!4859 rule!196))) b!2748194))

(declare-fun b!2748203 () Bool)

(declare-fun e!1731949 () Bool)

(declare-fun tp!866736 () Bool)

(assert (=> b!2748203 (= e!1731949 tp!866736)))

(declare-fun setIsEmpty!21801 () Bool)

(declare-fun setRes!21801 () Bool)

(assert (=> setIsEmpty!21801 setRes!21801))

(declare-fun e!1731948 () Bool)

(assert (=> b!2748146 (= tp!866708 e!1731948)))

(declare-fun setNonEmpty!21801 () Bool)

(declare-fun tp!866733 () Bool)

(declare-fun setElem!21801 () Context!4470)

(declare-fun inv!43078 (Context!4470) Bool)

(assert (=> setNonEmpty!21801 (= setRes!21801 (and tp!866733 (inv!43078 setElem!21801) e!1731949))))

(declare-fun setRest!21801 () (InoxSet Context!4470))

(assert (=> setNonEmpty!21801 (= (_2!18499 (h!37133 mapDefault!16627)) ((_ map or) (store ((as const (Array Context!4470 Bool)) false) setElem!21801 true) setRest!21801))))

(declare-fun b!2748204 () Bool)

(declare-fun e!1731950 () Bool)

(declare-fun tp!866734 () Bool)

(assert (=> b!2748204 (= e!1731950 tp!866734)))

(declare-fun tp!866735 () Bool)

(declare-fun b!2748205 () Bool)

(assert (=> b!2748205 (= e!1731948 (and (inv!43078 (_1!18498 (_1!18499 (h!37133 mapDefault!16627)))) e!1731950 tp_is_empty!13943 setRes!21801 tp!866735))))

(declare-fun condSetEmpty!21801 () Bool)

(assert (=> b!2748205 (= condSetEmpty!21801 (= (_2!18499 (h!37133 mapDefault!16627)) ((as const (Array Context!4470 Bool)) false)))))

(assert (= b!2748205 b!2748204))

(assert (= (and b!2748205 condSetEmpty!21801) setIsEmpty!21801))

(assert (= (and b!2748205 (not condSetEmpty!21801)) setNonEmpty!21801))

(assert (= setNonEmpty!21801 b!2748203))

(assert (= (and b!2748146 ((_ is Cons!31713) mapDefault!16627)) b!2748205))

(declare-fun m!3163983 () Bool)

(assert (=> setNonEmpty!21801 m!3163983))

(declare-fun m!3163985 () Bool)

(assert (=> b!2748205 m!3163985))

(declare-fun e!1731959 () Bool)

(declare-fun e!1731957 () Bool)

(declare-fun tp!866748 () Bool)

(declare-fun setRes!21804 () Bool)

(declare-fun b!2748214 () Bool)

(declare-fun tp!866750 () Bool)

(assert (=> b!2748214 (= e!1731957 (and tp!866748 (inv!43078 (_2!18500 (_1!18501 (h!37134 mapDefault!16628)))) e!1731959 tp_is_empty!13943 setRes!21804 tp!866750))))

(declare-fun condSetEmpty!21804 () Bool)

(assert (=> b!2748214 (= condSetEmpty!21804 (= (_2!18501 (h!37134 mapDefault!16628)) ((as const (Array Context!4470 Bool)) false)))))

(declare-fun b!2748215 () Bool)

(declare-fun e!1731958 () Bool)

(declare-fun tp!866747 () Bool)

(assert (=> b!2748215 (= e!1731958 tp!866747)))

(declare-fun b!2748216 () Bool)

(declare-fun tp!866749 () Bool)

(assert (=> b!2748216 (= e!1731959 tp!866749)))

(declare-fun tp!866751 () Bool)

(declare-fun setElem!21804 () Context!4470)

(declare-fun setNonEmpty!21804 () Bool)

(assert (=> setNonEmpty!21804 (= setRes!21804 (and tp!866751 (inv!43078 setElem!21804) e!1731958))))

(declare-fun setRest!21804 () (InoxSet Context!4470))

(assert (=> setNonEmpty!21804 (= (_2!18501 (h!37134 mapDefault!16628)) ((_ map or) (store ((as const (Array Context!4470 Bool)) false) setElem!21804 true) setRest!21804))))

(declare-fun setIsEmpty!21804 () Bool)

(assert (=> setIsEmpty!21804 setRes!21804))

(assert (=> b!2748142 (= tp!866692 e!1731957)))

(assert (= b!2748214 b!2748216))

(assert (= (and b!2748214 condSetEmpty!21804) setIsEmpty!21804))

(assert (= (and b!2748214 (not condSetEmpty!21804)) setNonEmpty!21804))

(assert (= setNonEmpty!21804 b!2748215))

(assert (= (and b!2748142 ((_ is Cons!31714) mapDefault!16628)) b!2748214))

(declare-fun m!3163987 () Bool)

(assert (=> b!2748214 m!3163987))

(declare-fun m!3163989 () Bool)

(assert (=> setNonEmpty!21804 m!3163989))

(declare-fun b!2748217 () Bool)

(declare-fun e!1731961 () Bool)

(declare-fun tp!866755 () Bool)

(assert (=> b!2748217 (= e!1731961 tp!866755)))

(declare-fun setIsEmpty!21805 () Bool)

(declare-fun setRes!21805 () Bool)

(assert (=> setIsEmpty!21805 setRes!21805))

(declare-fun e!1731960 () Bool)

(assert (=> b!2748136 (= tp!866703 e!1731960)))

(declare-fun setNonEmpty!21805 () Bool)

(declare-fun tp!866752 () Bool)

(declare-fun setElem!21805 () Context!4470)

(assert (=> setNonEmpty!21805 (= setRes!21805 (and tp!866752 (inv!43078 setElem!21805) e!1731961))))

(declare-fun setRest!21805 () (InoxSet Context!4470))

(assert (=> setNonEmpty!21805 (= (_2!18499 (h!37133 (zeroValue!3905 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717)))))))) ((_ map or) (store ((as const (Array Context!4470 Bool)) false) setElem!21805 true) setRest!21805))))

(declare-fun b!2748218 () Bool)

(declare-fun e!1731962 () Bool)

(declare-fun tp!866753 () Bool)

(assert (=> b!2748218 (= e!1731962 tp!866753)))

(declare-fun b!2748219 () Bool)

(declare-fun tp!866754 () Bool)

(assert (=> b!2748219 (= e!1731960 (and (inv!43078 (_1!18498 (_1!18499 (h!37133 (zeroValue!3905 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717)))))))))) e!1731962 tp_is_empty!13943 setRes!21805 tp!866754))))

(declare-fun condSetEmpty!21805 () Bool)

(assert (=> b!2748219 (= condSetEmpty!21805 (= (_2!18499 (h!37133 (zeroValue!3905 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717)))))))) ((as const (Array Context!4470 Bool)) false)))))

(assert (= b!2748219 b!2748218))

(assert (= (and b!2748219 condSetEmpty!21805) setIsEmpty!21805))

(assert (= (and b!2748219 (not condSetEmpty!21805)) setNonEmpty!21805))

(assert (= setNonEmpty!21805 b!2748217))

(assert (= (and b!2748136 ((_ is Cons!31713) (zeroValue!3905 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717)))))))) b!2748219))

(declare-fun m!3163991 () Bool)

(assert (=> setNonEmpty!21805 m!3163991))

(declare-fun m!3163993 () Bool)

(assert (=> b!2748219 m!3163993))

(declare-fun b!2748220 () Bool)

(declare-fun e!1731964 () Bool)

(declare-fun tp!866759 () Bool)

(assert (=> b!2748220 (= e!1731964 tp!866759)))

(declare-fun setIsEmpty!21806 () Bool)

(declare-fun setRes!21806 () Bool)

(assert (=> setIsEmpty!21806 setRes!21806))

(declare-fun e!1731963 () Bool)

(assert (=> b!2748136 (= tp!866696 e!1731963)))

(declare-fun setElem!21806 () Context!4470)

(declare-fun setNonEmpty!21806 () Bool)

(declare-fun tp!866756 () Bool)

(assert (=> setNonEmpty!21806 (= setRes!21806 (and tp!866756 (inv!43078 setElem!21806) e!1731964))))

(declare-fun setRest!21806 () (InoxSet Context!4470))

(assert (=> setNonEmpty!21806 (= (_2!18499 (h!37133 (minValue!3905 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717)))))))) ((_ map or) (store ((as const (Array Context!4470 Bool)) false) setElem!21806 true) setRest!21806))))

(declare-fun b!2748221 () Bool)

(declare-fun e!1731965 () Bool)

(declare-fun tp!866757 () Bool)

(assert (=> b!2748221 (= e!1731965 tp!866757)))

(declare-fun b!2748222 () Bool)

(declare-fun tp!866758 () Bool)

(assert (=> b!2748222 (= e!1731963 (and (inv!43078 (_1!18498 (_1!18499 (h!37133 (minValue!3905 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717)))))))))) e!1731965 tp_is_empty!13943 setRes!21806 tp!866758))))

(declare-fun condSetEmpty!21806 () Bool)

(assert (=> b!2748222 (= condSetEmpty!21806 (= (_2!18499 (h!37133 (minValue!3905 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717)))))))) ((as const (Array Context!4470 Bool)) false)))))

(assert (= b!2748222 b!2748221))

(assert (= (and b!2748222 condSetEmpty!21806) setIsEmpty!21806))

(assert (= (and b!2748222 (not condSetEmpty!21806)) setNonEmpty!21806))

(assert (= setNonEmpty!21806 b!2748220))

(assert (= (and b!2748136 ((_ is Cons!31713) (minValue!3905 (v!33329 (underlying!7495 (v!33330 (underlying!7496 (cache!3695 cacheUp!717)))))))) b!2748222))

(declare-fun m!3163995 () Bool)

(assert (=> setNonEmpty!21806 m!3163995))

(declare-fun m!3163997 () Bool)

(assert (=> b!2748222 m!3163997))

(declare-fun b!2748237 () Bool)

(declare-fun e!1731982 () Bool)

(declare-fun tp!866779 () Bool)

(assert (=> b!2748237 (= e!1731982 tp!866779)))

(declare-fun b!2748238 () Bool)

(declare-fun e!1731981 () Bool)

(declare-fun tp!866781 () Bool)

(assert (=> b!2748238 (= e!1731981 tp!866781)))

(declare-fun b!2748239 () Bool)

(declare-fun e!1731979 () Bool)

(declare-fun tp!866786 () Bool)

(assert (=> b!2748239 (= e!1731979 tp!866786)))

(declare-fun condMapEmpty!16631 () Bool)

(declare-fun mapDefault!16631 () List!31813)

(assert (=> mapNonEmpty!16628 (= condMapEmpty!16631 (= mapRest!16628 ((as const (Array (_ BitVec 32) List!31813)) mapDefault!16631)))))

(declare-fun e!1731978 () Bool)

(declare-fun mapRes!16631 () Bool)

(assert (=> mapNonEmpty!16628 (= tp!866697 (and e!1731978 mapRes!16631))))

(declare-fun setRes!21811 () Bool)

(declare-fun e!1731980 () Bool)

(declare-fun b!2748240 () Bool)

(declare-fun e!1731983 () Bool)

(declare-fun tp!866780 () Bool)

(declare-fun mapValue!16631 () List!31813)

(assert (=> b!2748240 (= e!1731980 (and (inv!43078 (_1!18498 (_1!18499 (h!37133 mapValue!16631)))) e!1731983 tp_is_empty!13943 setRes!21811 tp!866780))))

(declare-fun condSetEmpty!21812 () Bool)

(assert (=> b!2748240 (= condSetEmpty!21812 (= (_2!18499 (h!37133 mapValue!16631)) ((as const (Array Context!4470 Bool)) false)))))

(declare-fun setNonEmpty!21811 () Bool)

(declare-fun tp!866785 () Bool)

(declare-fun setElem!21811 () Context!4470)

(declare-fun setRes!21812 () Bool)

(assert (=> setNonEmpty!21811 (= setRes!21812 (and tp!866785 (inv!43078 setElem!21811) e!1731981))))

(declare-fun setRest!21811 () (InoxSet Context!4470))

(assert (=> setNonEmpty!21811 (= (_2!18499 (h!37133 mapDefault!16631)) ((_ map or) (store ((as const (Array Context!4470 Bool)) false) setElem!21811 true) setRest!21811))))

(declare-fun setElem!21812 () Context!4470)

(declare-fun tp!866782 () Bool)

(declare-fun setNonEmpty!21812 () Bool)

(assert (=> setNonEmpty!21812 (= setRes!21811 (and tp!866782 (inv!43078 setElem!21812) e!1731979))))

(declare-fun setRest!21812 () (InoxSet Context!4470))

(assert (=> setNonEmpty!21812 (= (_2!18499 (h!37133 mapValue!16631)) ((_ map or) (store ((as const (Array Context!4470 Bool)) false) setElem!21812 true) setRest!21812))))

(declare-fun setIsEmpty!21811 () Bool)

(assert (=> setIsEmpty!21811 setRes!21812))

(declare-fun setIsEmpty!21812 () Bool)

(assert (=> setIsEmpty!21812 setRes!21811))

(declare-fun mapNonEmpty!16631 () Bool)

(declare-fun tp!866778 () Bool)

(assert (=> mapNonEmpty!16631 (= mapRes!16631 (and tp!866778 e!1731980))))

(declare-fun mapRest!16631 () (Array (_ BitVec 32) List!31813))

(declare-fun mapKey!16631 () (_ BitVec 32))

(assert (=> mapNonEmpty!16631 (= mapRest!16628 (store mapRest!16631 mapKey!16631 mapValue!16631))))

(declare-fun b!2748241 () Bool)

(declare-fun tp!866783 () Bool)

(assert (=> b!2748241 (= e!1731983 tp!866783)))

(declare-fun b!2748242 () Bool)

(declare-fun tp!866784 () Bool)

(assert (=> b!2748242 (= e!1731978 (and (inv!43078 (_1!18498 (_1!18499 (h!37133 mapDefault!16631)))) e!1731982 tp_is_empty!13943 setRes!21812 tp!866784))))

(declare-fun condSetEmpty!21811 () Bool)

(assert (=> b!2748242 (= condSetEmpty!21811 (= (_2!18499 (h!37133 mapDefault!16631)) ((as const (Array Context!4470 Bool)) false)))))

(declare-fun mapIsEmpty!16631 () Bool)

(assert (=> mapIsEmpty!16631 mapRes!16631))

(assert (= (and mapNonEmpty!16628 condMapEmpty!16631) mapIsEmpty!16631))

(assert (= (and mapNonEmpty!16628 (not condMapEmpty!16631)) mapNonEmpty!16631))

(assert (= b!2748240 b!2748241))

(assert (= (and b!2748240 condSetEmpty!21812) setIsEmpty!21812))

(assert (= (and b!2748240 (not condSetEmpty!21812)) setNonEmpty!21812))

(assert (= setNonEmpty!21812 b!2748239))

(assert (= (and mapNonEmpty!16631 ((_ is Cons!31713) mapValue!16631)) b!2748240))

(assert (= b!2748242 b!2748237))

(assert (= (and b!2748242 condSetEmpty!21811) setIsEmpty!21811))

(assert (= (and b!2748242 (not condSetEmpty!21811)) setNonEmpty!21811))

(assert (= setNonEmpty!21811 b!2748238))

(assert (= (and mapNonEmpty!16628 ((_ is Cons!31713) mapDefault!16631)) b!2748242))

(declare-fun m!3163999 () Bool)

(assert (=> b!2748240 m!3163999))

(declare-fun m!3164001 () Bool)

(assert (=> setNonEmpty!21812 m!3164001))

(declare-fun m!3164003 () Bool)

(assert (=> mapNonEmpty!16631 m!3164003))

(declare-fun m!3164005 () Bool)

(assert (=> b!2748242 m!3164005))

(declare-fun m!3164007 () Bool)

(assert (=> setNonEmpty!21811 m!3164007))

(declare-fun b!2748243 () Bool)

(declare-fun e!1731985 () Bool)

(declare-fun tp!866790 () Bool)

(assert (=> b!2748243 (= e!1731985 tp!866790)))

(declare-fun setIsEmpty!21813 () Bool)

(declare-fun setRes!21813 () Bool)

(assert (=> setIsEmpty!21813 setRes!21813))

(declare-fun e!1731984 () Bool)

(assert (=> mapNonEmpty!16628 (= tp!866701 e!1731984)))

(declare-fun setElem!21813 () Context!4470)

(declare-fun setNonEmpty!21813 () Bool)

(declare-fun tp!866787 () Bool)

(assert (=> setNonEmpty!21813 (= setRes!21813 (and tp!866787 (inv!43078 setElem!21813) e!1731985))))

(declare-fun setRest!21813 () (InoxSet Context!4470))

(assert (=> setNonEmpty!21813 (= (_2!18499 (h!37133 mapValue!16628)) ((_ map or) (store ((as const (Array Context!4470 Bool)) false) setElem!21813 true) setRest!21813))))

(declare-fun b!2748244 () Bool)

(declare-fun e!1731986 () Bool)

(declare-fun tp!866788 () Bool)

(assert (=> b!2748244 (= e!1731986 tp!866788)))

(declare-fun tp!866789 () Bool)

(declare-fun b!2748245 () Bool)

(assert (=> b!2748245 (= e!1731984 (and (inv!43078 (_1!18498 (_1!18499 (h!37133 mapValue!16628)))) e!1731986 tp_is_empty!13943 setRes!21813 tp!866789))))

(declare-fun condSetEmpty!21813 () Bool)

(assert (=> b!2748245 (= condSetEmpty!21813 (= (_2!18499 (h!37133 mapValue!16628)) ((as const (Array Context!4470 Bool)) false)))))

(assert (= b!2748245 b!2748244))

(assert (= (and b!2748245 condSetEmpty!21813) setIsEmpty!21813))

(assert (= (and b!2748245 (not condSetEmpty!21813)) setNonEmpty!21813))

(assert (= setNonEmpty!21813 b!2748243))

(assert (= (and mapNonEmpty!16628 ((_ is Cons!31713) mapValue!16628)) b!2748245))

(declare-fun m!3164009 () Bool)

(assert (=> setNonEmpty!21813 m!3164009))

(declare-fun m!3164011 () Bool)

(assert (=> b!2748245 m!3164011))

(declare-fun b!2748260 () Bool)

(declare-fun e!1732000 () Bool)

(declare-fun tp!866821 () Bool)

(assert (=> b!2748260 (= e!1732000 tp!866821)))

(declare-fun tp!866823 () Bool)

(declare-fun e!1732004 () Bool)

(declare-fun mapValue!16634 () List!31814)

(declare-fun b!2748261 () Bool)

(declare-fun setRes!21819 () Bool)

(declare-fun tp!866813 () Bool)

(declare-fun e!1732003 () Bool)

(assert (=> b!2748261 (= e!1732003 (and tp!866813 (inv!43078 (_2!18500 (_1!18501 (h!37134 mapValue!16634)))) e!1732004 tp_is_empty!13943 setRes!21819 tp!866823))))

(declare-fun condSetEmpty!21818 () Bool)

(assert (=> b!2748261 (= condSetEmpty!21818 (= (_2!18501 (h!37134 mapValue!16634)) ((as const (Array Context!4470 Bool)) false)))))

(declare-fun mapNonEmpty!16634 () Bool)

(declare-fun mapRes!16634 () Bool)

(declare-fun tp!866819 () Bool)

(assert (=> mapNonEmpty!16634 (= mapRes!16634 (and tp!866819 e!1732003))))

(declare-fun mapRest!16634 () (Array (_ BitVec 32) List!31814))

(declare-fun mapKey!16634 () (_ BitVec 32))

(assert (=> mapNonEmpty!16634 (= mapRest!16627 (store mapRest!16634 mapKey!16634 mapValue!16634))))

(declare-fun condMapEmpty!16634 () Bool)

(declare-fun mapDefault!16634 () List!31814)

(assert (=> mapNonEmpty!16627 (= condMapEmpty!16634 (= mapRest!16627 ((as const (Array (_ BitVec 32) List!31814)) mapDefault!16634)))))

(declare-fun e!1732001 () Bool)

(assert (=> mapNonEmpty!16627 (= tp!866700 (and e!1732001 mapRes!16634))))

(declare-fun b!2748262 () Bool)

(declare-fun e!1731999 () Bool)

(declare-fun tp!866817 () Bool)

(assert (=> b!2748262 (= e!1731999 tp!866817)))

(declare-fun b!2748263 () Bool)

(declare-fun e!1732002 () Bool)

(declare-fun tp!866822 () Bool)

(assert (=> b!2748263 (= e!1732002 tp!866822)))

(declare-fun setElem!21819 () Context!4470)

(declare-fun setNonEmpty!21818 () Bool)

(declare-fun tp!866820 () Bool)

(assert (=> setNonEmpty!21818 (= setRes!21819 (and tp!866820 (inv!43078 setElem!21819) e!1732002))))

(declare-fun setRest!21818 () (InoxSet Context!4470))

(assert (=> setNonEmpty!21818 (= (_2!18501 (h!37134 mapValue!16634)) ((_ map or) (store ((as const (Array Context!4470 Bool)) false) setElem!21819 true) setRest!21818))))

(declare-fun setIsEmpty!21818 () Bool)

(assert (=> setIsEmpty!21818 setRes!21819))

(declare-fun tp!866818 () Bool)

(declare-fun setRes!21818 () Bool)

(declare-fun b!2748264 () Bool)

(declare-fun tp!866816 () Bool)

(assert (=> b!2748264 (= e!1732001 (and tp!866818 (inv!43078 (_2!18500 (_1!18501 (h!37134 mapDefault!16634)))) e!1732000 tp_is_empty!13943 setRes!21818 tp!866816))))

(declare-fun condSetEmpty!21819 () Bool)

(assert (=> b!2748264 (= condSetEmpty!21819 (= (_2!18501 (h!37134 mapDefault!16634)) ((as const (Array Context!4470 Bool)) false)))))

(declare-fun b!2748265 () Bool)

(declare-fun tp!866815 () Bool)

(assert (=> b!2748265 (= e!1732004 tp!866815)))

(declare-fun setIsEmpty!21819 () Bool)

(assert (=> setIsEmpty!21819 setRes!21818))

(declare-fun mapIsEmpty!16634 () Bool)

(assert (=> mapIsEmpty!16634 mapRes!16634))

(declare-fun setElem!21818 () Context!4470)

(declare-fun setNonEmpty!21819 () Bool)

(declare-fun tp!866814 () Bool)

(assert (=> setNonEmpty!21819 (= setRes!21818 (and tp!866814 (inv!43078 setElem!21818) e!1731999))))

(declare-fun setRest!21819 () (InoxSet Context!4470))

(assert (=> setNonEmpty!21819 (= (_2!18501 (h!37134 mapDefault!16634)) ((_ map or) (store ((as const (Array Context!4470 Bool)) false) setElem!21818 true) setRest!21819))))

(assert (= (and mapNonEmpty!16627 condMapEmpty!16634) mapIsEmpty!16634))

(assert (= (and mapNonEmpty!16627 (not condMapEmpty!16634)) mapNonEmpty!16634))

(assert (= b!2748261 b!2748265))

(assert (= (and b!2748261 condSetEmpty!21818) setIsEmpty!21818))

(assert (= (and b!2748261 (not condSetEmpty!21818)) setNonEmpty!21818))

(assert (= setNonEmpty!21818 b!2748263))

(assert (= (and mapNonEmpty!16634 ((_ is Cons!31714) mapValue!16634)) b!2748261))

(assert (= b!2748264 b!2748260))

(assert (= (and b!2748264 condSetEmpty!21819) setIsEmpty!21819))

(assert (= (and b!2748264 (not condSetEmpty!21819)) setNonEmpty!21819))

(assert (= setNonEmpty!21819 b!2748262))

(assert (= (and mapNonEmpty!16627 ((_ is Cons!31714) mapDefault!16634)) b!2748264))

(declare-fun m!3164013 () Bool)

(assert (=> setNonEmpty!21819 m!3164013))

(declare-fun m!3164015 () Bool)

(assert (=> b!2748264 m!3164015))

(declare-fun m!3164017 () Bool)

(assert (=> b!2748261 m!3164017))

(declare-fun m!3164019 () Bool)

(assert (=> mapNonEmpty!16634 m!3164019))

(declare-fun m!3164021 () Bool)

(assert (=> setNonEmpty!21818 m!3164021))

(declare-fun tp!866825 () Bool)

(declare-fun b!2748266 () Bool)

(declare-fun tp!866827 () Bool)

(declare-fun e!1732007 () Bool)

(declare-fun setRes!21820 () Bool)

(declare-fun e!1732005 () Bool)

(assert (=> b!2748266 (= e!1732005 (and tp!866825 (inv!43078 (_2!18500 (_1!18501 (h!37134 mapValue!16627)))) e!1732007 tp_is_empty!13943 setRes!21820 tp!866827))))

(declare-fun condSetEmpty!21820 () Bool)

(assert (=> b!2748266 (= condSetEmpty!21820 (= (_2!18501 (h!37134 mapValue!16627)) ((as const (Array Context!4470 Bool)) false)))))

(declare-fun b!2748267 () Bool)

(declare-fun e!1732006 () Bool)

(declare-fun tp!866824 () Bool)

(assert (=> b!2748267 (= e!1732006 tp!866824)))

(declare-fun b!2748268 () Bool)

(declare-fun tp!866826 () Bool)

(assert (=> b!2748268 (= e!1732007 tp!866826)))

(declare-fun setNonEmpty!21820 () Bool)

(declare-fun setElem!21820 () Context!4470)

(declare-fun tp!866828 () Bool)

(assert (=> setNonEmpty!21820 (= setRes!21820 (and tp!866828 (inv!43078 setElem!21820) e!1732006))))

(declare-fun setRest!21820 () (InoxSet Context!4470))

(assert (=> setNonEmpty!21820 (= (_2!18501 (h!37134 mapValue!16627)) ((_ map or) (store ((as const (Array Context!4470 Bool)) false) setElem!21820 true) setRest!21820))))

(declare-fun setIsEmpty!21820 () Bool)

(assert (=> setIsEmpty!21820 setRes!21820))

(assert (=> mapNonEmpty!16627 (= tp!866699 e!1732005)))

(assert (= b!2748266 b!2748268))

(assert (= (and b!2748266 condSetEmpty!21820) setIsEmpty!21820))

(assert (= (and b!2748266 (not condSetEmpty!21820)) setNonEmpty!21820))

(assert (= setNonEmpty!21820 b!2748267))

(assert (= (and mapNonEmpty!16627 ((_ is Cons!31714) mapValue!16627)) b!2748266))

(declare-fun m!3164023 () Bool)

(assert (=> b!2748266 m!3164023))

(declare-fun m!3164025 () Bool)

(assert (=> setNonEmpty!21820 m!3164025))

(declare-fun tp!866836 () Bool)

(declare-fun e!1732012 () Bool)

(declare-fun b!2748277 () Bool)

(declare-fun tp!866835 () Bool)

(assert (=> b!2748277 (= e!1732012 (and (inv!43072 (left!24271 (c!444938 input!1561))) tp!866835 (inv!43072 (right!24601 (c!444938 input!1561))) tp!866836))))

(declare-fun b!2748279 () Bool)

(declare-fun e!1732013 () Bool)

(declare-fun tp!866837 () Bool)

(assert (=> b!2748279 (= e!1732013 tp!866837)))

(declare-fun b!2748278 () Bool)

(declare-fun inv!43079 (IArray!19815) Bool)

(assert (=> b!2748278 (= e!1732012 (and (inv!43079 (xs!13012 (c!444938 input!1561))) e!1732013))))

(assert (=> b!2748148 (= tp!866693 (and (inv!43072 (c!444938 input!1561)) e!1732012))))

(assert (= (and b!2748148 ((_ is Node!9905) (c!444938 input!1561))) b!2748277))

(assert (= b!2748278 b!2748279))

(assert (= (and b!2748148 ((_ is Leaf!15082) (c!444938 input!1561))) b!2748278))

(declare-fun m!3164027 () Bool)

(assert (=> b!2748277 m!3164027))

(declare-fun m!3164029 () Bool)

(assert (=> b!2748277 m!3164029))

(declare-fun m!3164031 () Bool)

(assert (=> b!2748278 m!3164031))

(assert (=> b!2748148 m!3163947))

(declare-fun b!2748280 () Bool)

(declare-fun tp!866839 () Bool)

(declare-fun e!1732016 () Bool)

(declare-fun e!1732014 () Bool)

(declare-fun tp!866841 () Bool)

(declare-fun setRes!21821 () Bool)

(assert (=> b!2748280 (= e!1732014 (and tp!866839 (inv!43078 (_2!18500 (_1!18501 (h!37134 (zeroValue!3906 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730)))))))))) e!1732016 tp_is_empty!13943 setRes!21821 tp!866841))))

(declare-fun condSetEmpty!21821 () Bool)

(assert (=> b!2748280 (= condSetEmpty!21821 (= (_2!18501 (h!37134 (zeroValue!3906 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730)))))))) ((as const (Array Context!4470 Bool)) false)))))

(declare-fun b!2748281 () Bool)

(declare-fun e!1732015 () Bool)

(declare-fun tp!866838 () Bool)

(assert (=> b!2748281 (= e!1732015 tp!866838)))

(declare-fun b!2748282 () Bool)

(declare-fun tp!866840 () Bool)

(assert (=> b!2748282 (= e!1732016 tp!866840)))

(declare-fun setNonEmpty!21821 () Bool)

(declare-fun tp!866842 () Bool)

(declare-fun setElem!21821 () Context!4470)

(assert (=> setNonEmpty!21821 (= setRes!21821 (and tp!866842 (inv!43078 setElem!21821) e!1732015))))

(declare-fun setRest!21821 () (InoxSet Context!4470))

(assert (=> setNonEmpty!21821 (= (_2!18501 (h!37134 (zeroValue!3906 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730)))))))) ((_ map or) (store ((as const (Array Context!4470 Bool)) false) setElem!21821 true) setRest!21821))))

(declare-fun setIsEmpty!21821 () Bool)

(assert (=> setIsEmpty!21821 setRes!21821))

(assert (=> b!2748141 (= tp!866705 e!1732014)))

(assert (= b!2748280 b!2748282))

(assert (= (and b!2748280 condSetEmpty!21821) setIsEmpty!21821))

(assert (= (and b!2748280 (not condSetEmpty!21821)) setNonEmpty!21821))

(assert (= setNonEmpty!21821 b!2748281))

(assert (= (and b!2748141 ((_ is Cons!31714) (zeroValue!3906 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730)))))))) b!2748280))

(declare-fun m!3164033 () Bool)

(assert (=> b!2748280 m!3164033))

(declare-fun m!3164035 () Bool)

(assert (=> setNonEmpty!21821 m!3164035))

(declare-fun e!1732019 () Bool)

(declare-fun tp!866844 () Bool)

(declare-fun e!1732017 () Bool)

(declare-fun setRes!21822 () Bool)

(declare-fun tp!866846 () Bool)

(declare-fun b!2748283 () Bool)

(assert (=> b!2748283 (= e!1732017 (and tp!866844 (inv!43078 (_2!18500 (_1!18501 (h!37134 (minValue!3906 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730)))))))))) e!1732019 tp_is_empty!13943 setRes!21822 tp!866846))))

(declare-fun condSetEmpty!21822 () Bool)

(assert (=> b!2748283 (= condSetEmpty!21822 (= (_2!18501 (h!37134 (minValue!3906 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730)))))))) ((as const (Array Context!4470 Bool)) false)))))

(declare-fun b!2748284 () Bool)

(declare-fun e!1732018 () Bool)

(declare-fun tp!866843 () Bool)

(assert (=> b!2748284 (= e!1732018 tp!866843)))

(declare-fun b!2748285 () Bool)

(declare-fun tp!866845 () Bool)

(assert (=> b!2748285 (= e!1732019 tp!866845)))

(declare-fun setNonEmpty!21822 () Bool)

(declare-fun tp!866847 () Bool)

(declare-fun setElem!21822 () Context!4470)

(assert (=> setNonEmpty!21822 (= setRes!21822 (and tp!866847 (inv!43078 setElem!21822) e!1732018))))

(declare-fun setRest!21822 () (InoxSet Context!4470))

(assert (=> setNonEmpty!21822 (= (_2!18501 (h!37134 (minValue!3906 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730)))))))) ((_ map or) (store ((as const (Array Context!4470 Bool)) false) setElem!21822 true) setRest!21822))))

(declare-fun setIsEmpty!21822 () Bool)

(assert (=> setIsEmpty!21822 setRes!21822))

(assert (=> b!2748141 (= tp!866694 e!1732017)))

(assert (= b!2748283 b!2748285))

(assert (= (and b!2748283 condSetEmpty!21822) setIsEmpty!21822))

(assert (= (and b!2748283 (not condSetEmpty!21822)) setNonEmpty!21822))

(assert (= setNonEmpty!21822 b!2748284))

(assert (= (and b!2748141 ((_ is Cons!31714) (minValue!3906 (v!33331 (underlying!7497 (v!33332 (underlying!7498 (cache!3696 cacheDown!730)))))))) b!2748283))

(declare-fun m!3164037 () Bool)

(assert (=> b!2748283 m!3164037))

(declare-fun m!3164039 () Bool)

(assert (=> setNonEmpty!21822 m!3164039))

(check-sat (not b!2748243) (not b!2748238) (not b!2748285) (not b!2748244) (not b!2748219) (not setNonEmpty!21820) (not b!2748261) (not b!2748148) (not b!2748242) (not b!2748165) (not b!2748217) (not d!796253) (not setNonEmpty!21806) (not setNonEmpty!21804) (not b!2748164) (not b!2748240) (not b!2748193) (not b!2748283) b_and!202309 (not b!2748239) (not setNonEmpty!21822) (not d!796233) (not b!2748237) (not d!796243) (not b!2748156) (not b!2748222) (not b!2748204) (not b!2748221) (not b!2748215) (not b!2748170) (not b!2748267) (not setNonEmpty!21811) (not mapNonEmpty!16634) (not b_next!78291) (not b!2748216) (not mapNonEmpty!16631) b_and!202307 tp_is_empty!13943 (not setNonEmpty!21805) (not b!2748180) b_and!202305 (not b!2748218) (not b_next!78289) (not b!2748153) (not b!2748262) (not b!2748282) (not d!796251) (not d!796235) (not b!2748279) (not d!796245) (not b_next!78283) (not b!2748241) (not b!2748192) (not b_next!78285) (not b!2748264) (not b!2748263) (not b!2748284) (not setNonEmpty!21821) b_and!202301 (not b!2748159) (not b!2748203) (not setNonEmpty!21819) (not d!796237) (not b!2748281) (not b!2748278) (not b!2748268) b_and!202303 (not b!2748214) (not b!2748194) (not b!2748265) (not b!2748178) (not b!2748205) (not setNonEmpty!21812) (not b_next!78281) (not setNonEmpty!21801) (not b!2748266) (not setNonEmpty!21813) (not setNonEmpty!21818) (not b!2748280) (not b!2748277) (not b_next!78287) (not b!2748260) b_and!202311 (not b!2748245) (not b!2748220))
(check-sat b_and!202309 (not b_next!78291) b_and!202307 (not b_next!78283) (not b_next!78285) b_and!202301 b_and!202303 (not b_next!78281) (not b_next!78287) b_and!202311 b_and!202305 (not b_next!78289))
