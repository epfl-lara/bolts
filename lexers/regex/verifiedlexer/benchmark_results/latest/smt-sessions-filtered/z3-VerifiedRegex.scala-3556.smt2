; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206080 () Bool)

(assert start!206080)

(declare-fun b!2107575 () Bool)

(declare-fun b_free!60653 () Bool)

(declare-fun b_next!61357 () Bool)

(assert (=> b!2107575 (= b_free!60653 (not b_next!61357))))

(declare-fun tp!639830 () Bool)

(declare-fun b_and!170215 () Bool)

(assert (=> b!2107575 (= tp!639830 b_and!170215)))

(declare-fun b!2107579 () Bool)

(declare-fun b_free!60655 () Bool)

(declare-fun b_next!61359 () Bool)

(assert (=> b!2107579 (= b_free!60655 (not b_next!61359))))

(declare-fun tp!639839 () Bool)

(declare-fun b_and!170217 () Bool)

(assert (=> b!2107579 (= tp!639839 b_and!170217)))

(declare-fun b!2107594 () Bool)

(declare-fun b_free!60657 () Bool)

(declare-fun b_next!61361 () Bool)

(assert (=> b!2107594 (= b_free!60657 (not b_next!61361))))

(declare-fun tp!639833 () Bool)

(declare-fun b_and!170219 () Bool)

(assert (=> b!2107594 (= tp!639833 b_and!170219)))

(declare-fun b!2107590 () Bool)

(declare-fun b_free!60659 () Bool)

(declare-fun b_next!61363 () Bool)

(assert (=> b!2107590 (= b_free!60659 (not b_next!61363))))

(declare-fun tp!639821 () Bool)

(declare-fun b_and!170221 () Bool)

(assert (=> b!2107590 (= tp!639821 b_and!170221)))

(declare-fun b!2107584 () Bool)

(declare-fun b_free!60661 () Bool)

(declare-fun b_next!61365 () Bool)

(assert (=> b!2107584 (= b_free!60661 (not b_next!61365))))

(declare-fun tp!639825 () Bool)

(declare-fun b_and!170223 () Bool)

(assert (=> b!2107584 (= tp!639825 b_and!170223)))

(declare-fun b_free!60663 () Bool)

(declare-fun b_next!61367 () Bool)

(assert (=> b!2107584 (= b_free!60663 (not b_next!61367))))

(declare-fun tp!639824 () Bool)

(declare-fun b_and!170225 () Bool)

(assert (=> b!2107584 (= tp!639824 b_and!170225)))

(declare-datatypes ((List!23386 0))(
  ( (Nil!23302) (Cons!23302 (h!28703 (_ BitVec 16)) (t!195879 List!23386)) )
))
(declare-datatypes ((TokenValue!4283 0))(
  ( (FloatLiteralValue!8566 (text!30426 List!23386)) (TokenValueExt!4282 (__x!14927 Int)) (Broken!21415 (value!129804 List!23386)) (Object!4366) (End!4283) (Def!4283) (Underscore!4283) (Match!4283) (Else!4283) (Error!4283) (Case!4283) (If!4283) (Extends!4283) (Abstract!4283) (Class!4283) (Val!4283) (DelimiterValue!8566 (del!4343 List!23386)) (KeywordValue!4289 (value!129805 List!23386)) (CommentValue!8566 (value!129806 List!23386)) (WhitespaceValue!8566 (value!129807 List!23386)) (IndentationValue!4283 (value!129808 List!23386)) (String!26614) (Int32!4283) (Broken!21416 (value!129809 List!23386)) (Boolean!4284) (Unit!37481) (OperatorValue!4286 (op!4343 List!23386)) (IdentifierValue!8566 (value!129810 List!23386)) (IdentifierValue!8567 (value!129811 List!23386)) (WhitespaceValue!8567 (value!129812 List!23386)) (True!8566) (False!8566) (Broken!21417 (value!129813 List!23386)) (Broken!21418 (value!129814 List!23386)) (True!8567) (RightBrace!4283) (RightBracket!4283) (Colon!4283) (Null!4283) (Comma!4283) (LeftBracket!4283) (False!8567) (LeftBrace!4283) (ImaginaryLiteralValue!4283 (text!30427 List!23386)) (StringLiteralValue!12849 (value!129815 List!23386)) (EOFValue!4283 (value!129816 List!23386)) (IdentValue!4283 (value!129817 List!23386)) (DelimiterValue!8567 (value!129818 List!23386)) (DedentValue!4283 (value!129819 List!23386)) (NewLineValue!4283 (value!129820 List!23386)) (IntegerValue!12849 (value!129821 (_ BitVec 32)) (text!30428 List!23386)) (IntegerValue!12850 (value!129822 Int) (text!30429 List!23386)) (Times!4283) (Or!4283) (Equal!4283) (Minus!4283) (Broken!21419 (value!129823 List!23386)) (And!4283) (Div!4283) (LessEqual!4283) (Mod!4283) (Concat!9862) (Not!4283) (Plus!4283) (SpaceValue!4283 (value!129824 List!23386)) (IntegerValue!12851 (value!129825 Int) (text!30430 List!23386)) (StringLiteralValue!12850 (text!30431 List!23386)) (FloatLiteralValue!8567 (text!30432 List!23386)) (BytesLiteralValue!4283 (value!129826 List!23386)) (CommentValue!8567 (value!129827 List!23386)) (StringLiteralValue!12851 (value!129828 List!23386)) (ErrorTokenValue!4283 (msg!4344 List!23386)) )
))
(declare-datatypes ((C!11304 0))(
  ( (C!11305 (val!6638 Int)) )
))
(declare-datatypes ((List!23387 0))(
  ( (Nil!23303) (Cons!23303 (h!28704 C!11304) (t!195880 List!23387)) )
))
(declare-datatypes ((IArray!15459 0))(
  ( (IArray!15460 (innerList!7787 List!23387)) )
))
(declare-datatypes ((Conc!7727 0))(
  ( (Node!7727 (left!18163 Conc!7727) (right!18493 Conc!7727) (csize!15684 Int) (cheight!7938 Int)) (Leaf!11284 (xs!10669 IArray!15459) (csize!15685 Int)) (Empty!7727) )
))
(declare-datatypes ((BalanceConc!15216 0))(
  ( (BalanceConc!15217 (c!338949 Conc!7727)) )
))
(declare-datatypes ((Regex!5579 0))(
  ( (ElementMatch!5579 (c!338950 C!11304)) (Concat!9863 (regOne!11670 Regex!5579) (regTwo!11670 Regex!5579)) (EmptyExpr!5579) (Star!5579 (reg!5908 Regex!5579)) (EmptyLang!5579) (Union!5579 (regOne!11671 Regex!5579) (regTwo!11671 Regex!5579)) )
))
(declare-datatypes ((String!26615 0))(
  ( (String!26616 (value!129829 String)) )
))
(declare-datatypes ((TokenValueInjection!8150 0))(
  ( (TokenValueInjection!8151 (toValue!5858 Int) (toChars!5717 Int)) )
))
(declare-datatypes ((Rule!8094 0))(
  ( (Rule!8095 (regex!4147 Regex!5579) (tag!4637 String!26615) (isSeparator!4147 Bool) (transformation!4147 TokenValueInjection!8150)) )
))
(declare-datatypes ((List!23388 0))(
  ( (Nil!23304) (Cons!23304 (h!28705 Rule!8094) (t!195881 List!23388)) )
))
(declare-fun rulesArg!349 () List!23388)

(declare-fun e!1339757 () Bool)

(declare-fun b!2107572 () Bool)

(declare-fun tp!639822 () Bool)

(declare-fun e!1339744 () Bool)

(declare-fun inv!30838 (String!26615) Bool)

(declare-fun inv!30839 (TokenValueInjection!8150) Bool)

(assert (=> b!2107572 (= e!1339757 (and tp!639822 (inv!30838 (tag!4637 (h!28705 rulesArg!349))) (inv!30839 (transformation!4147 (h!28705 rulesArg!349))) e!1339744))))

(declare-fun b!2107573 () Bool)

(declare-fun e!1339745 () Bool)

(declare-fun tp!639823 () Bool)

(assert (=> b!2107573 (= e!1339745 (and e!1339757 tp!639823))))

(declare-fun mapIsEmpty!10932 () Bool)

(declare-fun mapRes!10932 () Bool)

(assert (=> mapIsEmpty!10932 mapRes!10932))

(declare-fun b!2107574 () Bool)

(declare-fun res!916034 () Bool)

(declare-fun e!1339753 () Bool)

(assert (=> b!2107574 (=> (not res!916034) (not e!1339753))))

(declare-fun isEmpty!14289 (List!23388) Bool)

(assert (=> b!2107574 (= res!916034 (not (isEmpty!14289 rulesArg!349)))))

(declare-fun e!1339751 () Bool)

(declare-fun e!1339749 () Bool)

(assert (=> b!2107575 (= e!1339751 (and e!1339749 tp!639830))))

(declare-fun b!2107576 () Bool)

(declare-fun e!1339747 () Bool)

(declare-datatypes ((List!23389 0))(
  ( (Nil!23305) (Cons!23305 (h!28706 Regex!5579) (t!195882 List!23389)) )
))
(declare-datatypes ((Context!2298 0))(
  ( (Context!2299 (exprs!1649 List!23389)) )
))
(declare-datatypes ((tuple3!2606 0))(
  ( (tuple3!2607 (_1!13066 Regex!5579) (_2!13066 Context!2298) (_3!1767 C!11304)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22598 0))(
  ( (tuple2!22599 (_1!13067 tuple3!2606) (_2!13067 (InoxSet Context!2298))) )
))
(declare-datatypes ((List!23390 0))(
  ( (Nil!23306) (Cons!23306 (h!28707 tuple2!22598) (t!195883 List!23390)) )
))
(declare-datatypes ((array!7816 0))(
  ( (array!7817 (arr!3463 (Array (_ BitVec 32) (_ BitVec 64))) (size!18187 (_ BitVec 32))) )
))
(declare-datatypes ((array!7818 0))(
  ( (array!7819 (arr!3464 (Array (_ BitVec 32) List!23390)) (size!18188 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4526 0))(
  ( (LongMapFixedSize!4527 (defaultEntry!2628 Int) (mask!6368 (_ BitVec 32)) (extraKeys!2511 (_ BitVec 32)) (zeroValue!2521 List!23390) (minValue!2521 List!23390) (_size!4577 (_ BitVec 32)) (_keys!2560 array!7816) (_values!2543 array!7818) (_vacant!2324 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8877 0))(
  ( (Cell!8878 (v!27848 LongMapFixedSize!4526)) )
))
(declare-datatypes ((MutLongMap!2263 0))(
  ( (LongMap!2263 (underlying!4721 Cell!8877)) (MutLongMapExt!2262 (__x!14928 Int)) )
))
(declare-fun lt!791701 () MutLongMap!2263)

(get-info :version)

(assert (=> b!2107576 (= e!1339749 (and e!1339747 ((_ is LongMap!2263) lt!791701)))))

(declare-datatypes ((Cell!8879 0))(
  ( (Cell!8880 (v!27849 MutLongMap!2263)) )
))
(declare-datatypes ((Hashable!2177 0))(
  ( (HashableExt!2176 (__x!14929 Int)) )
))
(declare-datatypes ((MutableMap!2177 0))(
  ( (MutableMapExt!2176 (__x!14930 Int)) (HashMap!2177 (underlying!4722 Cell!8879) (hashF!4100 Hashable!2177) (_size!4578 (_ BitVec 32)) (defaultValue!2339 Int)) )
))
(declare-datatypes ((CacheDown!1476 0))(
  ( (CacheDown!1477 (cache!2558 MutableMap!2177)) )
))
(declare-fun cacheDown!688 () CacheDown!1476)

(assert (=> b!2107576 (= lt!791701 (v!27849 (underlying!4722 (cache!2558 cacheDown!688))))))

(declare-fun b!2107577 () Bool)

(declare-fun e!1339743 () Bool)

(assert (=> b!2107577 (= e!1339743 (not (or (and ((_ is Cons!23304) rulesArg!349) ((_ is Nil!23304) (t!195881 rulesArg!349))) ((_ is Cons!23304) rulesArg!349))))))

(declare-fun lt!791703 () List!23387)

(declare-fun isPrefix!2077 (List!23387 List!23387) Bool)

(assert (=> b!2107577 (isPrefix!2077 lt!791703 lt!791703)))

(declare-datatypes ((Unit!37482 0))(
  ( (Unit!37483) )
))
(declare-fun lt!791702 () Unit!37482)

(declare-fun lemmaIsPrefixRefl!1395 (List!23387 List!23387) Unit!37482)

(assert (=> b!2107577 (= lt!791702 (lemmaIsPrefixRefl!1395 lt!791703 lt!791703))))

(declare-fun b!2107578 () Bool)

(declare-fun res!916029 () Bool)

(assert (=> b!2107578 (=> (not res!916029) (not e!1339753))))

(declare-datatypes ((LexerInterface!3744 0))(
  ( (LexerInterfaceExt!3741 (__x!14931 Int)) (Lexer!3742) )
))
(declare-fun thiss!15689 () LexerInterface!3744)

(declare-fun rulesValidInductive!1460 (LexerInterface!3744 List!23388) Bool)

(assert (=> b!2107578 (= res!916029 (rulesValidInductive!1460 thiss!15689 rulesArg!349))))

(declare-fun e!1339748 () Bool)

(declare-fun e!1339763 () Bool)

(assert (=> b!2107579 (= e!1339748 (and e!1339763 tp!639839))))

(declare-fun b!2107580 () Bool)

(declare-fun e!1339758 () Bool)

(assert (=> b!2107580 (= e!1339758 e!1339751)))

(declare-fun b!2107582 () Bool)

(declare-fun e!1339765 () Bool)

(declare-fun totalInput!482 () BalanceConc!15216)

(declare-fun tp!639829 () Bool)

(declare-fun inv!30840 (Conc!7727) Bool)

(assert (=> b!2107582 (= e!1339765 (and (inv!30840 (c!338949 totalInput!482)) tp!639829))))

(declare-fun mapNonEmpty!10932 () Bool)

(declare-fun mapRes!10933 () Bool)

(declare-fun tp!639836 () Bool)

(declare-fun tp!639834 () Bool)

(assert (=> mapNonEmpty!10932 (= mapRes!10933 (and tp!639836 tp!639834))))

(declare-datatypes ((tuple2!22600 0))(
  ( (tuple2!22601 (_1!13068 Context!2298) (_2!13068 C!11304)) )
))
(declare-datatypes ((tuple2!22602 0))(
  ( (tuple2!22603 (_1!13069 tuple2!22600) (_2!13069 (InoxSet Context!2298))) )
))
(declare-datatypes ((List!23391 0))(
  ( (Nil!23307) (Cons!23307 (h!28708 tuple2!22602) (t!195884 List!23391)) )
))
(declare-fun mapValue!10932 () List!23391)

(declare-fun mapKey!10933 () (_ BitVec 32))

(declare-datatypes ((array!7820 0))(
  ( (array!7821 (arr!3465 (Array (_ BitVec 32) List!23391)) (size!18189 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4528 0))(
  ( (LongMapFixedSize!4529 (defaultEntry!2629 Int) (mask!6369 (_ BitVec 32)) (extraKeys!2512 (_ BitVec 32)) (zeroValue!2522 List!23391) (minValue!2522 List!23391) (_size!4579 (_ BitVec 32)) (_keys!2561 array!7816) (_values!2544 array!7820) (_vacant!2325 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2178 0))(
  ( (HashableExt!2177 (__x!14932 Int)) )
))
(declare-datatypes ((Cell!8881 0))(
  ( (Cell!8882 (v!27850 LongMapFixedSize!4528)) )
))
(declare-datatypes ((MutLongMap!2264 0))(
  ( (LongMap!2264 (underlying!4723 Cell!8881)) (MutLongMapExt!2263 (__x!14933 Int)) )
))
(declare-datatypes ((Cell!8883 0))(
  ( (Cell!8884 (v!27851 MutLongMap!2264)) )
))
(declare-datatypes ((MutableMap!2178 0))(
  ( (MutableMapExt!2177 (__x!14934 Int)) (HashMap!2178 (underlying!4724 Cell!8883) (hashF!4101 Hashable!2178) (_size!4580 (_ BitVec 32)) (defaultValue!2340 Int)) )
))
(declare-datatypes ((CacheUp!1472 0))(
  ( (CacheUp!1473 (cache!2559 MutableMap!2178)) )
))
(declare-fun cacheUp!675 () CacheUp!1472)

(declare-fun mapRest!10932 () (Array (_ BitVec 32) List!23391))

(assert (=> mapNonEmpty!10932 (= (arr!3465 (_values!2544 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675))))))) (store mapRest!10932 mapKey!10933 mapValue!10932))))

(declare-fun b!2107583 () Bool)

(declare-fun e!1339750 () Bool)

(declare-fun input!1444 () BalanceConc!15216)

(declare-fun tp!639840 () Bool)

(assert (=> b!2107583 (= e!1339750 (and (inv!30840 (c!338949 input!1444)) tp!639840))))

(assert (=> b!2107584 (= e!1339744 (and tp!639825 tp!639824))))

(declare-fun b!2107585 () Bool)

(declare-fun e!1339746 () Bool)

(declare-fun e!1339760 () Bool)

(assert (=> b!2107585 (= e!1339746 e!1339760)))

(declare-fun b!2107586 () Bool)

(declare-fun e!1339764 () Bool)

(declare-fun tp!639832 () Bool)

(assert (=> b!2107586 (= e!1339764 (and tp!639832 mapRes!10932))))

(declare-fun condMapEmpty!10933 () Bool)

(declare-fun mapDefault!10932 () List!23390)

(assert (=> b!2107586 (= condMapEmpty!10933 (= (arr!3464 (_values!2543 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23390)) mapDefault!10932)))))

(declare-fun b!2107587 () Bool)

(declare-fun e!1339759 () Bool)

(declare-fun e!1339766 () Bool)

(assert (=> b!2107587 (= e!1339759 e!1339766)))

(declare-fun mapIsEmpty!10933 () Bool)

(assert (=> mapIsEmpty!10933 mapRes!10933))

(declare-fun b!2107588 () Bool)

(declare-fun e!1339756 () Bool)

(assert (=> b!2107588 (= e!1339756 e!1339759)))

(declare-fun b!2107589 () Bool)

(assert (=> b!2107589 (= e!1339747 e!1339746)))

(declare-fun e!1339752 () Bool)

(declare-fun tp!639826 () Bool)

(declare-fun tp!639831 () Bool)

(declare-fun array_inv!2489 (array!7816) Bool)

(declare-fun array_inv!2490 (array!7820) Bool)

(assert (=> b!2107590 (= e!1339766 (and tp!639821 tp!639831 tp!639826 (array_inv!2489 (_keys!2561 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675))))))) (array_inv!2490 (_values!2544 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675))))))) e!1339752))))

(declare-fun b!2107591 () Bool)

(declare-fun e!1339761 () Bool)

(assert (=> b!2107591 (= e!1339761 e!1339748)))

(declare-fun b!2107592 () Bool)

(assert (=> b!2107592 (= e!1339753 e!1339743)))

(declare-fun res!916030 () Bool)

(assert (=> b!2107592 (=> (not res!916030) (not e!1339743))))

(declare-fun isSuffix!563 (List!23387 List!23387) Bool)

(declare-fun list!9452 (BalanceConc!15216) List!23387)

(assert (=> b!2107592 (= res!916030 (isSuffix!563 lt!791703 (list!9452 totalInput!482)))))

(assert (=> b!2107592 (= lt!791703 (list!9452 input!1444))))

(declare-fun b!2107593 () Bool)

(declare-fun tp!639827 () Bool)

(assert (=> b!2107593 (= e!1339752 (and tp!639827 mapRes!10933))))

(declare-fun condMapEmpty!10932 () Bool)

(declare-fun mapDefault!10933 () List!23391)

(assert (=> b!2107593 (= condMapEmpty!10932 (= (arr!3465 (_values!2544 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23391)) mapDefault!10933)))))

(declare-fun tp!639838 () Bool)

(declare-fun tp!639837 () Bool)

(declare-fun array_inv!2491 (array!7818) Bool)

(assert (=> b!2107594 (= e!1339760 (and tp!639833 tp!639837 tp!639838 (array_inv!2489 (_keys!2560 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688))))))) (array_inv!2491 (_values!2543 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688))))))) e!1339764))))

(declare-fun b!2107595 () Bool)

(declare-fun lt!791700 () MutLongMap!2264)

(assert (=> b!2107595 (= e!1339763 (and e!1339756 ((_ is LongMap!2264) lt!791700)))))

(assert (=> b!2107595 (= lt!791700 (v!27851 (underlying!4724 (cache!2559 cacheUp!675))))))

(declare-fun b!2107581 () Bool)

(declare-fun res!916032 () Bool)

(assert (=> b!2107581 (=> (not res!916032) (not e!1339743))))

(declare-fun valid!1792 (CacheUp!1472) Bool)

(assert (=> b!2107581 (= res!916032 (valid!1792 cacheUp!675))))

(declare-fun res!916031 () Bool)

(assert (=> start!206080 (=> (not res!916031) (not e!1339753))))

(assert (=> start!206080 (= res!916031 ((_ is Lexer!3742) thiss!15689))))

(assert (=> start!206080 e!1339753))

(assert (=> start!206080 e!1339745))

(declare-fun inv!30841 (BalanceConc!15216) Bool)

(assert (=> start!206080 (and (inv!30841 totalInput!482) e!1339765)))

(assert (=> start!206080 true))

(assert (=> start!206080 (and (inv!30841 input!1444) e!1339750)))

(declare-fun inv!30842 (CacheUp!1472) Bool)

(assert (=> start!206080 (and (inv!30842 cacheUp!675) e!1339761)))

(declare-fun inv!30843 (CacheDown!1476) Bool)

(assert (=> start!206080 (and (inv!30843 cacheDown!688) e!1339758)))

(declare-fun mapNonEmpty!10933 () Bool)

(declare-fun tp!639835 () Bool)

(declare-fun tp!639828 () Bool)

(assert (=> mapNonEmpty!10933 (= mapRes!10932 (and tp!639835 tp!639828))))

(declare-fun mapKey!10932 () (_ BitVec 32))

(declare-fun mapValue!10933 () List!23390)

(declare-fun mapRest!10933 () (Array (_ BitVec 32) List!23390))

(assert (=> mapNonEmpty!10933 (= (arr!3464 (_values!2543 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688))))))) (store mapRest!10933 mapKey!10932 mapValue!10933))))

(declare-fun b!2107596 () Bool)

(declare-fun res!916033 () Bool)

(assert (=> b!2107596 (=> (not res!916033) (not e!1339743))))

(declare-fun valid!1793 (CacheDown!1476) Bool)

(assert (=> b!2107596 (= res!916033 (valid!1793 cacheDown!688))))

(assert (= (and start!206080 res!916031) b!2107578))

(assert (= (and b!2107578 res!916029) b!2107574))

(assert (= (and b!2107574 res!916034) b!2107592))

(assert (= (and b!2107592 res!916030) b!2107581))

(assert (= (and b!2107581 res!916032) b!2107596))

(assert (= (and b!2107596 res!916033) b!2107577))

(assert (= b!2107572 b!2107584))

(assert (= b!2107573 b!2107572))

(assert (= (and start!206080 ((_ is Cons!23304) rulesArg!349)) b!2107573))

(assert (= start!206080 b!2107582))

(assert (= start!206080 b!2107583))

(assert (= (and b!2107593 condMapEmpty!10932) mapIsEmpty!10933))

(assert (= (and b!2107593 (not condMapEmpty!10932)) mapNonEmpty!10932))

(assert (= b!2107590 b!2107593))

(assert (= b!2107587 b!2107590))

(assert (= b!2107588 b!2107587))

(assert (= (and b!2107595 ((_ is LongMap!2264) (v!27851 (underlying!4724 (cache!2559 cacheUp!675))))) b!2107588))

(assert (= b!2107579 b!2107595))

(assert (= (and b!2107591 ((_ is HashMap!2178) (cache!2559 cacheUp!675))) b!2107579))

(assert (= start!206080 b!2107591))

(assert (= (and b!2107586 condMapEmpty!10933) mapIsEmpty!10932))

(assert (= (and b!2107586 (not condMapEmpty!10933)) mapNonEmpty!10933))

(assert (= b!2107594 b!2107586))

(assert (= b!2107585 b!2107594))

(assert (= b!2107589 b!2107585))

(assert (= (and b!2107576 ((_ is LongMap!2263) (v!27849 (underlying!4722 (cache!2558 cacheDown!688))))) b!2107589))

(assert (= b!2107575 b!2107576))

(assert (= (and b!2107580 ((_ is HashMap!2177) (cache!2558 cacheDown!688))) b!2107575))

(assert (= start!206080 b!2107580))

(declare-fun m!2565519 () Bool)

(assert (=> b!2107596 m!2565519))

(declare-fun m!2565521 () Bool)

(assert (=> b!2107594 m!2565521))

(declare-fun m!2565523 () Bool)

(assert (=> b!2107594 m!2565523))

(declare-fun m!2565525 () Bool)

(assert (=> mapNonEmpty!10932 m!2565525))

(declare-fun m!2565527 () Bool)

(assert (=> b!2107578 m!2565527))

(declare-fun m!2565529 () Bool)

(assert (=> b!2107583 m!2565529))

(declare-fun m!2565531 () Bool)

(assert (=> b!2107577 m!2565531))

(declare-fun m!2565533 () Bool)

(assert (=> b!2107577 m!2565533))

(declare-fun m!2565535 () Bool)

(assert (=> b!2107582 m!2565535))

(declare-fun m!2565537 () Bool)

(assert (=> mapNonEmpty!10933 m!2565537))

(declare-fun m!2565539 () Bool)

(assert (=> b!2107592 m!2565539))

(assert (=> b!2107592 m!2565539))

(declare-fun m!2565541 () Bool)

(assert (=> b!2107592 m!2565541))

(declare-fun m!2565543 () Bool)

(assert (=> b!2107592 m!2565543))

(declare-fun m!2565545 () Bool)

(assert (=> b!2107572 m!2565545))

(declare-fun m!2565547 () Bool)

(assert (=> b!2107572 m!2565547))

(declare-fun m!2565549 () Bool)

(assert (=> b!2107574 m!2565549))

(declare-fun m!2565551 () Bool)

(assert (=> b!2107590 m!2565551))

(declare-fun m!2565553 () Bool)

(assert (=> b!2107590 m!2565553))

(declare-fun m!2565555 () Bool)

(assert (=> b!2107581 m!2565555))

(declare-fun m!2565557 () Bool)

(assert (=> start!206080 m!2565557))

(declare-fun m!2565559 () Bool)

(assert (=> start!206080 m!2565559))

(declare-fun m!2565561 () Bool)

(assert (=> start!206080 m!2565561))

(declare-fun m!2565563 () Bool)

(assert (=> start!206080 m!2565563))

(check-sat b_and!170219 (not b_next!61359) (not b!2107578) (not b!2107586) (not b_next!61363) (not b!2107593) (not b_next!61357) b_and!170217 (not b!2107573) (not b!2107583) (not b_next!61365) (not b!2107572) (not b!2107590) (not start!206080) (not b!2107581) (not b!2107582) b_and!170223 b_and!170221 (not b!2107596) (not b!2107577) b_and!170215 b_and!170225 (not b_next!61367) (not b!2107574) (not b_next!61361) (not b!2107594) (not b!2107592) (not mapNonEmpty!10932) (not mapNonEmpty!10933))
(check-sat b_and!170219 (not b_next!61359) b_and!170223 (not b_next!61363) (not b_next!61357) b_and!170221 b_and!170217 b_and!170215 (not b_next!61361) (not b_next!61365) b_and!170225 (not b_next!61367))
(get-model)

(declare-fun d!641939 () Bool)

(assert (=> d!641939 true))

(declare-fun lt!791706 () Bool)

(declare-fun lambda!78163 () Int)

(declare-fun forall!4839 (List!23388 Int) Bool)

(assert (=> d!641939 (= lt!791706 (forall!4839 rulesArg!349 lambda!78163))))

(declare-fun e!1339772 () Bool)

(assert (=> d!641939 (= lt!791706 e!1339772)))

(declare-fun res!916039 () Bool)

(assert (=> d!641939 (=> res!916039 e!1339772)))

(assert (=> d!641939 (= res!916039 (not ((_ is Cons!23304) rulesArg!349)))))

(assert (=> d!641939 (= (rulesValidInductive!1460 thiss!15689 rulesArg!349) lt!791706)))

(declare-fun b!2107601 () Bool)

(declare-fun e!1339771 () Bool)

(assert (=> b!2107601 (= e!1339772 e!1339771)))

(declare-fun res!916040 () Bool)

(assert (=> b!2107601 (=> (not res!916040) (not e!1339771))))

(declare-fun ruleValid!1270 (LexerInterface!3744 Rule!8094) Bool)

(assert (=> b!2107601 (= res!916040 (ruleValid!1270 thiss!15689 (h!28705 rulesArg!349)))))

(declare-fun b!2107602 () Bool)

(assert (=> b!2107602 (= e!1339771 (rulesValidInductive!1460 thiss!15689 (t!195881 rulesArg!349)))))

(assert (= (and d!641939 (not res!916039)) b!2107601))

(assert (= (and b!2107601 res!916040) b!2107602))

(declare-fun m!2565565 () Bool)

(assert (=> d!641939 m!2565565))

(declare-fun m!2565567 () Bool)

(assert (=> b!2107601 m!2565567))

(declare-fun m!2565569 () Bool)

(assert (=> b!2107602 m!2565569))

(assert (=> b!2107578 d!641939))

(declare-fun d!641941 () Bool)

(declare-fun validCacheMapDown!225 (MutableMap!2177) Bool)

(assert (=> d!641941 (= (valid!1793 cacheDown!688) (validCacheMapDown!225 (cache!2558 cacheDown!688)))))

(declare-fun bs!440983 () Bool)

(assert (= bs!440983 d!641941))

(declare-fun m!2565571 () Bool)

(assert (=> bs!440983 m!2565571))

(assert (=> b!2107596 d!641941))

(declare-fun b!2107616 () Bool)

(declare-fun e!1339779 () Bool)

(declare-fun size!18190 (List!23387) Int)

(assert (=> b!2107616 (= e!1339779 (>= (size!18190 lt!791703) (size!18190 lt!791703)))))

(declare-fun b!2107615 () Bool)

(declare-fun e!1339781 () Bool)

(declare-fun tail!3102 (List!23387) List!23387)

(assert (=> b!2107615 (= e!1339781 (isPrefix!2077 (tail!3102 lt!791703) (tail!3102 lt!791703)))))

(declare-fun b!2107614 () Bool)

(declare-fun res!916052 () Bool)

(assert (=> b!2107614 (=> (not res!916052) (not e!1339781))))

(declare-fun head!4630 (List!23387) C!11304)

(assert (=> b!2107614 (= res!916052 (= (head!4630 lt!791703) (head!4630 lt!791703)))))

(declare-fun b!2107613 () Bool)

(declare-fun e!1339780 () Bool)

(assert (=> b!2107613 (= e!1339780 e!1339781)))

(declare-fun res!916050 () Bool)

(assert (=> b!2107613 (=> (not res!916050) (not e!1339781))))

(assert (=> b!2107613 (= res!916050 (not ((_ is Nil!23303) lt!791703)))))

(declare-fun d!641943 () Bool)

(assert (=> d!641943 e!1339779))

(declare-fun res!916051 () Bool)

(assert (=> d!641943 (=> res!916051 e!1339779)))

(declare-fun lt!791709 () Bool)

(assert (=> d!641943 (= res!916051 (not lt!791709))))

(assert (=> d!641943 (= lt!791709 e!1339780)))

(declare-fun res!916049 () Bool)

(assert (=> d!641943 (=> res!916049 e!1339780)))

(assert (=> d!641943 (= res!916049 ((_ is Nil!23303) lt!791703))))

(assert (=> d!641943 (= (isPrefix!2077 lt!791703 lt!791703) lt!791709)))

(assert (= (and d!641943 (not res!916049)) b!2107613))

(assert (= (and b!2107613 res!916050) b!2107614))

(assert (= (and b!2107614 res!916052) b!2107615))

(assert (= (and d!641943 (not res!916051)) b!2107616))

(declare-fun m!2565573 () Bool)

(assert (=> b!2107616 m!2565573))

(assert (=> b!2107616 m!2565573))

(declare-fun m!2565575 () Bool)

(assert (=> b!2107615 m!2565575))

(assert (=> b!2107615 m!2565575))

(assert (=> b!2107615 m!2565575))

(assert (=> b!2107615 m!2565575))

(declare-fun m!2565577 () Bool)

(assert (=> b!2107615 m!2565577))

(declare-fun m!2565579 () Bool)

(assert (=> b!2107614 m!2565579))

(assert (=> b!2107614 m!2565579))

(assert (=> b!2107577 d!641943))

(declare-fun d!641945 () Bool)

(assert (=> d!641945 (isPrefix!2077 lt!791703 lt!791703)))

(declare-fun lt!791712 () Unit!37482)

(declare-fun choose!12632 (List!23387 List!23387) Unit!37482)

(assert (=> d!641945 (= lt!791712 (choose!12632 lt!791703 lt!791703))))

(assert (=> d!641945 (= (lemmaIsPrefixRefl!1395 lt!791703 lt!791703) lt!791712)))

(declare-fun bs!440984 () Bool)

(assert (= bs!440984 d!641945))

(assert (=> bs!440984 m!2565531))

(declare-fun m!2565581 () Bool)

(assert (=> bs!440984 m!2565581))

(assert (=> b!2107577 d!641945))

(declare-fun d!641947 () Bool)

(assert (=> d!641947 (= (array_inv!2489 (_keys!2560 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688))))))) (bvsge (size!18187 (_keys!2560 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2107594 d!641947))

(declare-fun d!641949 () Bool)

(assert (=> d!641949 (= (array_inv!2491 (_values!2543 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688))))))) (bvsge (size!18188 (_values!2543 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2107594 d!641949))

(declare-fun d!641951 () Bool)

(assert (=> d!641951 (= (isEmpty!14289 rulesArg!349) ((_ is Nil!23304) rulesArg!349))))

(assert (=> b!2107574 d!641951))

(declare-fun d!641953 () Bool)

(declare-fun c!338953 () Bool)

(assert (=> d!641953 (= c!338953 ((_ is Node!7727) (c!338949 input!1444)))))

(declare-fun e!1339786 () Bool)

(assert (=> d!641953 (= (inv!30840 (c!338949 input!1444)) e!1339786)))

(declare-fun b!2107623 () Bool)

(declare-fun inv!30844 (Conc!7727) Bool)

(assert (=> b!2107623 (= e!1339786 (inv!30844 (c!338949 input!1444)))))

(declare-fun b!2107624 () Bool)

(declare-fun e!1339787 () Bool)

(assert (=> b!2107624 (= e!1339786 e!1339787)))

(declare-fun res!916055 () Bool)

(assert (=> b!2107624 (= res!916055 (not ((_ is Leaf!11284) (c!338949 input!1444))))))

(assert (=> b!2107624 (=> res!916055 e!1339787)))

(declare-fun b!2107625 () Bool)

(declare-fun inv!30845 (Conc!7727) Bool)

(assert (=> b!2107625 (= e!1339787 (inv!30845 (c!338949 input!1444)))))

(assert (= (and d!641953 c!338953) b!2107623))

(assert (= (and d!641953 (not c!338953)) b!2107624))

(assert (= (and b!2107624 (not res!916055)) b!2107625))

(declare-fun m!2565583 () Bool)

(assert (=> b!2107623 m!2565583))

(declare-fun m!2565585 () Bool)

(assert (=> b!2107625 m!2565585))

(assert (=> b!2107583 d!641953))

(declare-fun d!641955 () Bool)

(declare-fun e!1339790 () Bool)

(assert (=> d!641955 e!1339790))

(declare-fun res!916058 () Bool)

(assert (=> d!641955 (=> res!916058 e!1339790)))

(declare-fun lt!791715 () Bool)

(assert (=> d!641955 (= res!916058 (not lt!791715))))

(declare-fun drop!1166 (List!23387 Int) List!23387)

(assert (=> d!641955 (= lt!791715 (= lt!791703 (drop!1166 (list!9452 totalInput!482) (- (size!18190 (list!9452 totalInput!482)) (size!18190 lt!791703)))))))

(assert (=> d!641955 (= (isSuffix!563 lt!791703 (list!9452 totalInput!482)) lt!791715)))

(declare-fun b!2107628 () Bool)

(assert (=> b!2107628 (= e!1339790 (>= (size!18190 (list!9452 totalInput!482)) (size!18190 lt!791703)))))

(assert (= (and d!641955 (not res!916058)) b!2107628))

(assert (=> d!641955 m!2565539))

(declare-fun m!2565587 () Bool)

(assert (=> d!641955 m!2565587))

(assert (=> d!641955 m!2565573))

(assert (=> d!641955 m!2565539))

(declare-fun m!2565589 () Bool)

(assert (=> d!641955 m!2565589))

(assert (=> b!2107628 m!2565539))

(assert (=> b!2107628 m!2565587))

(assert (=> b!2107628 m!2565573))

(assert (=> b!2107592 d!641955))

(declare-fun d!641957 () Bool)

(declare-fun list!9453 (Conc!7727) List!23387)

(assert (=> d!641957 (= (list!9452 totalInput!482) (list!9453 (c!338949 totalInput!482)))))

(declare-fun bs!440985 () Bool)

(assert (= bs!440985 d!641957))

(declare-fun m!2565591 () Bool)

(assert (=> bs!440985 m!2565591))

(assert (=> b!2107592 d!641957))

(declare-fun d!641959 () Bool)

(assert (=> d!641959 (= (list!9452 input!1444) (list!9453 (c!338949 input!1444)))))

(declare-fun bs!440986 () Bool)

(assert (= bs!440986 d!641959))

(declare-fun m!2565593 () Bool)

(assert (=> bs!440986 m!2565593))

(assert (=> b!2107592 d!641959))

(declare-fun d!641961 () Bool)

(declare-fun c!338954 () Bool)

(assert (=> d!641961 (= c!338954 ((_ is Node!7727) (c!338949 totalInput!482)))))

(declare-fun e!1339791 () Bool)

(assert (=> d!641961 (= (inv!30840 (c!338949 totalInput!482)) e!1339791)))

(declare-fun b!2107629 () Bool)

(assert (=> b!2107629 (= e!1339791 (inv!30844 (c!338949 totalInput!482)))))

(declare-fun b!2107630 () Bool)

(declare-fun e!1339792 () Bool)

(assert (=> b!2107630 (= e!1339791 e!1339792)))

(declare-fun res!916059 () Bool)

(assert (=> b!2107630 (= res!916059 (not ((_ is Leaf!11284) (c!338949 totalInput!482))))))

(assert (=> b!2107630 (=> res!916059 e!1339792)))

(declare-fun b!2107631 () Bool)

(assert (=> b!2107631 (= e!1339792 (inv!30845 (c!338949 totalInput!482)))))

(assert (= (and d!641961 c!338954) b!2107629))

(assert (= (and d!641961 (not c!338954)) b!2107630))

(assert (= (and b!2107630 (not res!916059)) b!2107631))

(declare-fun m!2565595 () Bool)

(assert (=> b!2107629 m!2565595))

(declare-fun m!2565597 () Bool)

(assert (=> b!2107631 m!2565597))

(assert (=> b!2107582 d!641961))

(declare-fun d!641963 () Bool)

(assert (=> d!641963 (= (array_inv!2489 (_keys!2561 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675))))))) (bvsge (size!18187 (_keys!2561 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2107590 d!641963))

(declare-fun d!641965 () Bool)

(assert (=> d!641965 (= (array_inv!2490 (_values!2544 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675))))))) (bvsge (size!18189 (_values!2544 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2107590 d!641965))

(declare-fun d!641967 () Bool)

(assert (=> d!641967 (= (inv!30838 (tag!4637 (h!28705 rulesArg!349))) (= (mod (str.len (value!129829 (tag!4637 (h!28705 rulesArg!349)))) 2) 0))))

(assert (=> b!2107572 d!641967))

(declare-fun d!641969 () Bool)

(declare-fun res!916062 () Bool)

(declare-fun e!1339795 () Bool)

(assert (=> d!641969 (=> (not res!916062) (not e!1339795))))

(declare-fun semiInverseModEq!1657 (Int Int) Bool)

(assert (=> d!641969 (= res!916062 (semiInverseModEq!1657 (toChars!5717 (transformation!4147 (h!28705 rulesArg!349))) (toValue!5858 (transformation!4147 (h!28705 rulesArg!349)))))))

(assert (=> d!641969 (= (inv!30839 (transformation!4147 (h!28705 rulesArg!349))) e!1339795)))

(declare-fun b!2107634 () Bool)

(declare-fun equivClasses!1584 (Int Int) Bool)

(assert (=> b!2107634 (= e!1339795 (equivClasses!1584 (toChars!5717 (transformation!4147 (h!28705 rulesArg!349))) (toValue!5858 (transformation!4147 (h!28705 rulesArg!349)))))))

(assert (= (and d!641969 res!916062) b!2107634))

(declare-fun m!2565599 () Bool)

(assert (=> d!641969 m!2565599))

(declare-fun m!2565601 () Bool)

(assert (=> b!2107634 m!2565601))

(assert (=> b!2107572 d!641969))

(declare-fun d!641971 () Bool)

(declare-fun isBalanced!2431 (Conc!7727) Bool)

(assert (=> d!641971 (= (inv!30841 totalInput!482) (isBalanced!2431 (c!338949 totalInput!482)))))

(declare-fun bs!440987 () Bool)

(assert (= bs!440987 d!641971))

(declare-fun m!2565603 () Bool)

(assert (=> bs!440987 m!2565603))

(assert (=> start!206080 d!641971))

(declare-fun d!641973 () Bool)

(assert (=> d!641973 (= (inv!30841 input!1444) (isBalanced!2431 (c!338949 input!1444)))))

(declare-fun bs!440988 () Bool)

(assert (= bs!440988 d!641973))

(declare-fun m!2565605 () Bool)

(assert (=> bs!440988 m!2565605))

(assert (=> start!206080 d!641973))

(declare-fun d!641975 () Bool)

(declare-fun res!916065 () Bool)

(declare-fun e!1339798 () Bool)

(assert (=> d!641975 (=> (not res!916065) (not e!1339798))))

(assert (=> d!641975 (= res!916065 ((_ is HashMap!2178) (cache!2559 cacheUp!675)))))

(assert (=> d!641975 (= (inv!30842 cacheUp!675) e!1339798)))

(declare-fun b!2107637 () Bool)

(declare-fun validCacheMapUp!227 (MutableMap!2178) Bool)

(assert (=> b!2107637 (= e!1339798 (validCacheMapUp!227 (cache!2559 cacheUp!675)))))

(assert (= (and d!641975 res!916065) b!2107637))

(declare-fun m!2565607 () Bool)

(assert (=> b!2107637 m!2565607))

(assert (=> start!206080 d!641975))

(declare-fun d!641977 () Bool)

(declare-fun res!916068 () Bool)

(declare-fun e!1339801 () Bool)

(assert (=> d!641977 (=> (not res!916068) (not e!1339801))))

(assert (=> d!641977 (= res!916068 ((_ is HashMap!2177) (cache!2558 cacheDown!688)))))

(assert (=> d!641977 (= (inv!30843 cacheDown!688) e!1339801)))

(declare-fun b!2107640 () Bool)

(assert (=> b!2107640 (= e!1339801 (validCacheMapDown!225 (cache!2558 cacheDown!688)))))

(assert (= (and d!641977 res!916068) b!2107640))

(assert (=> b!2107640 m!2565571))

(assert (=> start!206080 d!641977))

(declare-fun d!641979 () Bool)

(assert (=> d!641979 (= (valid!1792 cacheUp!675) (validCacheMapUp!227 (cache!2559 cacheUp!675)))))

(declare-fun bs!440989 () Bool)

(assert (= bs!440989 d!641979))

(assert (=> bs!440989 m!2565607))

(assert (=> b!2107581 d!641979))

(declare-fun tp!639851 () Bool)

(declare-fun setRes!13904 () Bool)

(declare-fun setElem!13904 () Context!2298)

(declare-fun e!1339808 () Bool)

(declare-fun setNonEmpty!13904 () Bool)

(declare-fun inv!30846 (Context!2298) Bool)

(assert (=> setNonEmpty!13904 (= setRes!13904 (and tp!639851 (inv!30846 setElem!13904) e!1339808))))

(declare-fun setRest!13904 () (InoxSet Context!2298))

(assert (=> setNonEmpty!13904 (= (_2!13067 (h!28707 (zeroValue!2521 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2298 Bool)) false) setElem!13904 true) setRest!13904))))

(declare-fun e!1339809 () Bool)

(assert (=> b!2107594 (= tp!639837 e!1339809)))

(declare-fun setIsEmpty!13904 () Bool)

(assert (=> setIsEmpty!13904 setRes!13904))

(declare-fun tp_is_empty!9377 () Bool)

(declare-fun e!1339810 () Bool)

(declare-fun tp!639852 () Bool)

(declare-fun b!2107649 () Bool)

(declare-fun tp!639855 () Bool)

(assert (=> b!2107649 (= e!1339809 (and tp!639855 (inv!30846 (_2!13066 (_1!13067 (h!28707 (zeroValue!2521 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688)))))))))) e!1339810 tp_is_empty!9377 setRes!13904 tp!639852))))

(declare-fun condSetEmpty!13904 () Bool)

(assert (=> b!2107649 (= condSetEmpty!13904 (= (_2!13067 (h!28707 (zeroValue!2521 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688)))))))) ((as const (Array Context!2298 Bool)) false)))))

(declare-fun b!2107650 () Bool)

(declare-fun tp!639853 () Bool)

(assert (=> b!2107650 (= e!1339808 tp!639853)))

(declare-fun b!2107651 () Bool)

(declare-fun tp!639854 () Bool)

(assert (=> b!2107651 (= e!1339810 tp!639854)))

(assert (= b!2107649 b!2107651))

(assert (= (and b!2107649 condSetEmpty!13904) setIsEmpty!13904))

(assert (= (and b!2107649 (not condSetEmpty!13904)) setNonEmpty!13904))

(assert (= setNonEmpty!13904 b!2107650))

(assert (= (and b!2107594 ((_ is Cons!23306) (zeroValue!2521 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688)))))))) b!2107649))

(declare-fun m!2565609 () Bool)

(assert (=> setNonEmpty!13904 m!2565609))

(declare-fun m!2565611 () Bool)

(assert (=> b!2107649 m!2565611))

(declare-fun e!1339811 () Bool)

(declare-fun setElem!13905 () Context!2298)

(declare-fun setRes!13905 () Bool)

(declare-fun setNonEmpty!13905 () Bool)

(declare-fun tp!639856 () Bool)

(assert (=> setNonEmpty!13905 (= setRes!13905 (and tp!639856 (inv!30846 setElem!13905) e!1339811))))

(declare-fun setRest!13905 () (InoxSet Context!2298))

(assert (=> setNonEmpty!13905 (= (_2!13067 (h!28707 (minValue!2521 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2298 Bool)) false) setElem!13905 true) setRest!13905))))

(declare-fun e!1339812 () Bool)

(assert (=> b!2107594 (= tp!639838 e!1339812)))

(declare-fun setIsEmpty!13905 () Bool)

(assert (=> setIsEmpty!13905 setRes!13905))

(declare-fun b!2107652 () Bool)

(declare-fun e!1339813 () Bool)

(declare-fun tp!639860 () Bool)

(declare-fun tp!639857 () Bool)

(assert (=> b!2107652 (= e!1339812 (and tp!639860 (inv!30846 (_2!13066 (_1!13067 (h!28707 (minValue!2521 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688)))))))))) e!1339813 tp_is_empty!9377 setRes!13905 tp!639857))))

(declare-fun condSetEmpty!13905 () Bool)

(assert (=> b!2107652 (= condSetEmpty!13905 (= (_2!13067 (h!28707 (minValue!2521 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688)))))))) ((as const (Array Context!2298 Bool)) false)))))

(declare-fun b!2107653 () Bool)

(declare-fun tp!639858 () Bool)

(assert (=> b!2107653 (= e!1339811 tp!639858)))

(declare-fun b!2107654 () Bool)

(declare-fun tp!639859 () Bool)

(assert (=> b!2107654 (= e!1339813 tp!639859)))

(assert (= b!2107652 b!2107654))

(assert (= (and b!2107652 condSetEmpty!13905) setIsEmpty!13905))

(assert (= (and b!2107652 (not condSetEmpty!13905)) setNonEmpty!13905))

(assert (= setNonEmpty!13905 b!2107653))

(assert (= (and b!2107594 ((_ is Cons!23306) (minValue!2521 (v!27848 (underlying!4721 (v!27849 (underlying!4722 (cache!2558 cacheDown!688)))))))) b!2107652))

(declare-fun m!2565613 () Bool)

(assert (=> setNonEmpty!13905 m!2565613))

(declare-fun m!2565615 () Bool)

(assert (=> b!2107652 m!2565615))

(declare-fun e!1339818 () Bool)

(declare-fun b!2107663 () Bool)

(declare-fun tp!639867 () Bool)

(declare-fun tp!639869 () Bool)

(assert (=> b!2107663 (= e!1339818 (and (inv!30840 (left!18163 (c!338949 input!1444))) tp!639869 (inv!30840 (right!18493 (c!338949 input!1444))) tp!639867))))

(declare-fun b!2107665 () Bool)

(declare-fun e!1339819 () Bool)

(declare-fun tp!639868 () Bool)

(assert (=> b!2107665 (= e!1339819 tp!639868)))

(declare-fun b!2107664 () Bool)

(declare-fun inv!30847 (IArray!15459) Bool)

(assert (=> b!2107664 (= e!1339818 (and (inv!30847 (xs!10669 (c!338949 input!1444))) e!1339819))))

(assert (=> b!2107583 (= tp!639840 (and (inv!30840 (c!338949 input!1444)) e!1339818))))

(assert (= (and b!2107583 ((_ is Node!7727) (c!338949 input!1444))) b!2107663))

(assert (= b!2107664 b!2107665))

(assert (= (and b!2107583 ((_ is Leaf!11284) (c!338949 input!1444))) b!2107664))

(declare-fun m!2565617 () Bool)

(assert (=> b!2107663 m!2565617))

(declare-fun m!2565619 () Bool)

(assert (=> b!2107663 m!2565619))

(declare-fun m!2565621 () Bool)

(assert (=> b!2107664 m!2565621))

(assert (=> b!2107583 m!2565529))

(declare-fun b!2107674 () Bool)

(declare-fun e!1339827 () Bool)

(declare-fun tp!639881 () Bool)

(assert (=> b!2107674 (= e!1339827 tp!639881)))

(declare-fun e!1339826 () Bool)

(assert (=> b!2107593 (= tp!639827 e!1339826)))

(declare-fun b!2107675 () Bool)

(declare-fun e!1339828 () Bool)

(declare-fun tp!639878 () Bool)

(assert (=> b!2107675 (= e!1339828 tp!639878)))

(declare-fun setRes!13908 () Bool)

(declare-fun setNonEmpty!13908 () Bool)

(declare-fun tp!639879 () Bool)

(declare-fun setElem!13908 () Context!2298)

(assert (=> setNonEmpty!13908 (= setRes!13908 (and tp!639879 (inv!30846 setElem!13908) e!1339827))))

(declare-fun setRest!13908 () (InoxSet Context!2298))

(assert (=> setNonEmpty!13908 (= (_2!13069 (h!28708 mapDefault!10933)) ((_ map or) (store ((as const (Array Context!2298 Bool)) false) setElem!13908 true) setRest!13908))))

(declare-fun setIsEmpty!13908 () Bool)

(assert (=> setIsEmpty!13908 setRes!13908))

(declare-fun tp!639880 () Bool)

(declare-fun b!2107676 () Bool)

(assert (=> b!2107676 (= e!1339826 (and (inv!30846 (_1!13068 (_1!13069 (h!28708 mapDefault!10933)))) e!1339828 tp_is_empty!9377 setRes!13908 tp!639880))))

(declare-fun condSetEmpty!13908 () Bool)

(assert (=> b!2107676 (= condSetEmpty!13908 (= (_2!13069 (h!28708 mapDefault!10933)) ((as const (Array Context!2298 Bool)) false)))))

(assert (= b!2107676 b!2107675))

(assert (= (and b!2107676 condSetEmpty!13908) setIsEmpty!13908))

(assert (= (and b!2107676 (not condSetEmpty!13908)) setNonEmpty!13908))

(assert (= setNonEmpty!13908 b!2107674))

(assert (= (and b!2107593 ((_ is Cons!23307) mapDefault!10933)) b!2107676))

(declare-fun m!2565623 () Bool)

(assert (=> setNonEmpty!13908 m!2565623))

(declare-fun m!2565625 () Bool)

(assert (=> b!2107676 m!2565625))

(declare-fun b!2107687 () Bool)

(declare-fun b_free!60665 () Bool)

(declare-fun b_next!61369 () Bool)

(assert (=> b!2107687 (= b_free!60665 (not b_next!61369))))

(declare-fun tp!639890 () Bool)

(declare-fun b_and!170227 () Bool)

(assert (=> b!2107687 (= tp!639890 b_and!170227)))

(declare-fun b_free!60667 () Bool)

(declare-fun b_next!61371 () Bool)

(assert (=> b!2107687 (= b_free!60667 (not b_next!61371))))

(declare-fun tp!639891 () Bool)

(declare-fun b_and!170229 () Bool)

(assert (=> b!2107687 (= tp!639891 b_and!170229)))

(declare-fun e!1339839 () Bool)

(assert (=> b!2107687 (= e!1339839 (and tp!639890 tp!639891))))

(declare-fun e!1339838 () Bool)

(declare-fun tp!639892 () Bool)

(declare-fun b!2107686 () Bool)

(assert (=> b!2107686 (= e!1339838 (and tp!639892 (inv!30838 (tag!4637 (h!28705 (t!195881 rulesArg!349)))) (inv!30839 (transformation!4147 (h!28705 (t!195881 rulesArg!349)))) e!1339839))))

(declare-fun b!2107685 () Bool)

(declare-fun e!1339840 () Bool)

(declare-fun tp!639893 () Bool)

(assert (=> b!2107685 (= e!1339840 (and e!1339838 tp!639893))))

(assert (=> b!2107573 (= tp!639823 e!1339840)))

(assert (= b!2107686 b!2107687))

(assert (= b!2107685 b!2107686))

(assert (= (and b!2107573 ((_ is Cons!23304) (t!195881 rulesArg!349))) b!2107685))

(declare-fun m!2565627 () Bool)

(assert (=> b!2107686 m!2565627))

(declare-fun m!2565629 () Bool)

(assert (=> b!2107686 m!2565629))

(declare-fun setIsEmpty!13913 () Bool)

(declare-fun setRes!13913 () Bool)

(assert (=> setIsEmpty!13913 setRes!13913))

(declare-fun b!2107702 () Bool)

(declare-fun e!1339855 () Bool)

(declare-fun tp!639913 () Bool)

(assert (=> b!2107702 (= e!1339855 tp!639913)))

(declare-fun setRes!13914 () Bool)

(declare-fun mapValue!10936 () List!23391)

(declare-fun e!1339857 () Bool)

(declare-fun b!2107703 () Bool)

(declare-fun tp!639914 () Bool)

(declare-fun e!1339858 () Bool)

(assert (=> b!2107703 (= e!1339858 (and (inv!30846 (_1!13068 (_1!13069 (h!28708 mapValue!10936)))) e!1339857 tp_is_empty!9377 setRes!13914 tp!639914))))

(declare-fun condSetEmpty!13913 () Bool)

(assert (=> b!2107703 (= condSetEmpty!13913 (= (_2!13069 (h!28708 mapValue!10936)) ((as const (Array Context!2298 Bool)) false)))))

(declare-fun setIsEmpty!13914 () Bool)

(assert (=> setIsEmpty!13914 setRes!13914))

(declare-fun b!2107704 () Bool)

(declare-fun e!1339854 () Bool)

(declare-fun tp!639920 () Bool)

(assert (=> b!2107704 (= e!1339854 tp!639920)))

(declare-fun b!2107705 () Bool)

(declare-fun tp!639916 () Bool)

(declare-fun e!1339853 () Bool)

(declare-fun mapDefault!10936 () List!23391)

(assert (=> b!2107705 (= e!1339853 (and (inv!30846 (_1!13068 (_1!13069 (h!28708 mapDefault!10936)))) e!1339855 tp_is_empty!9377 setRes!13913 tp!639916))))

(declare-fun condSetEmpty!13914 () Bool)

(assert (=> b!2107705 (= condSetEmpty!13914 (= (_2!13069 (h!28708 mapDefault!10936)) ((as const (Array Context!2298 Bool)) false)))))

(declare-fun setElem!13914 () Context!2298)

(declare-fun e!1339856 () Bool)

(declare-fun tp!639912 () Bool)

(declare-fun setNonEmpty!13913 () Bool)

(assert (=> setNonEmpty!13913 (= setRes!13914 (and tp!639912 (inv!30846 setElem!13914) e!1339856))))

(declare-fun setRest!13913 () (InoxSet Context!2298))

(assert (=> setNonEmpty!13913 (= (_2!13069 (h!28708 mapValue!10936)) ((_ map or) (store ((as const (Array Context!2298 Bool)) false) setElem!13914 true) setRest!13913))))

(declare-fun b!2107706 () Bool)

(declare-fun tp!639919 () Bool)

(assert (=> b!2107706 (= e!1339856 tp!639919)))

(declare-fun mapIsEmpty!10936 () Bool)

(declare-fun mapRes!10936 () Bool)

(assert (=> mapIsEmpty!10936 mapRes!10936))

(declare-fun setNonEmpty!13914 () Bool)

(declare-fun setElem!13913 () Context!2298)

(declare-fun tp!639915 () Bool)

(assert (=> setNonEmpty!13914 (= setRes!13913 (and tp!639915 (inv!30846 setElem!13913) e!1339854))))

(declare-fun setRest!13914 () (InoxSet Context!2298))

(assert (=> setNonEmpty!13914 (= (_2!13069 (h!28708 mapDefault!10936)) ((_ map or) (store ((as const (Array Context!2298 Bool)) false) setElem!13913 true) setRest!13914))))

(declare-fun b!2107707 () Bool)

(declare-fun tp!639917 () Bool)

(assert (=> b!2107707 (= e!1339857 tp!639917)))

(declare-fun condMapEmpty!10936 () Bool)

(assert (=> mapNonEmpty!10932 (= condMapEmpty!10936 (= mapRest!10932 ((as const (Array (_ BitVec 32) List!23391)) mapDefault!10936)))))

(assert (=> mapNonEmpty!10932 (= tp!639836 (and e!1339853 mapRes!10936))))

(declare-fun mapNonEmpty!10936 () Bool)

(declare-fun tp!639918 () Bool)

(assert (=> mapNonEmpty!10936 (= mapRes!10936 (and tp!639918 e!1339858))))

(declare-fun mapKey!10936 () (_ BitVec 32))

(declare-fun mapRest!10936 () (Array (_ BitVec 32) List!23391))

(assert (=> mapNonEmpty!10936 (= mapRest!10932 (store mapRest!10936 mapKey!10936 mapValue!10936))))

(assert (= (and mapNonEmpty!10932 condMapEmpty!10936) mapIsEmpty!10936))

(assert (= (and mapNonEmpty!10932 (not condMapEmpty!10936)) mapNonEmpty!10936))

(assert (= b!2107703 b!2107707))

(assert (= (and b!2107703 condSetEmpty!13913) setIsEmpty!13914))

(assert (= (and b!2107703 (not condSetEmpty!13913)) setNonEmpty!13913))

(assert (= setNonEmpty!13913 b!2107706))

(assert (= (and mapNonEmpty!10936 ((_ is Cons!23307) mapValue!10936)) b!2107703))

(assert (= b!2107705 b!2107702))

(assert (= (and b!2107705 condSetEmpty!13914) setIsEmpty!13913))

(assert (= (and b!2107705 (not condSetEmpty!13914)) setNonEmpty!13914))

(assert (= setNonEmpty!13914 b!2107704))

(assert (= (and mapNonEmpty!10932 ((_ is Cons!23307) mapDefault!10936)) b!2107705))

(declare-fun m!2565631 () Bool)

(assert (=> mapNonEmpty!10936 m!2565631))

(declare-fun m!2565633 () Bool)

(assert (=> b!2107705 m!2565633))

(declare-fun m!2565635 () Bool)

(assert (=> b!2107703 m!2565635))

(declare-fun m!2565637 () Bool)

(assert (=> setNonEmpty!13913 m!2565637))

(declare-fun m!2565639 () Bool)

(assert (=> setNonEmpty!13914 m!2565639))

(declare-fun b!2107708 () Bool)

(declare-fun e!1339860 () Bool)

(declare-fun tp!639924 () Bool)

(assert (=> b!2107708 (= e!1339860 tp!639924)))

(declare-fun e!1339859 () Bool)

(assert (=> mapNonEmpty!10932 (= tp!639834 e!1339859)))

(declare-fun b!2107709 () Bool)

(declare-fun e!1339861 () Bool)

(declare-fun tp!639921 () Bool)

(assert (=> b!2107709 (= e!1339861 tp!639921)))

(declare-fun setNonEmpty!13915 () Bool)

(declare-fun setRes!13915 () Bool)

(declare-fun setElem!13915 () Context!2298)

(declare-fun tp!639922 () Bool)

(assert (=> setNonEmpty!13915 (= setRes!13915 (and tp!639922 (inv!30846 setElem!13915) e!1339860))))

(declare-fun setRest!13915 () (InoxSet Context!2298))

(assert (=> setNonEmpty!13915 (= (_2!13069 (h!28708 mapValue!10932)) ((_ map or) (store ((as const (Array Context!2298 Bool)) false) setElem!13915 true) setRest!13915))))

(declare-fun setIsEmpty!13915 () Bool)

(assert (=> setIsEmpty!13915 setRes!13915))

(declare-fun tp!639923 () Bool)

(declare-fun b!2107710 () Bool)

(assert (=> b!2107710 (= e!1339859 (and (inv!30846 (_1!13068 (_1!13069 (h!28708 mapValue!10932)))) e!1339861 tp_is_empty!9377 setRes!13915 tp!639923))))

(declare-fun condSetEmpty!13915 () Bool)

(assert (=> b!2107710 (= condSetEmpty!13915 (= (_2!13069 (h!28708 mapValue!10932)) ((as const (Array Context!2298 Bool)) false)))))

(assert (= b!2107710 b!2107709))

(assert (= (and b!2107710 condSetEmpty!13915) setIsEmpty!13915))

(assert (= (and b!2107710 (not condSetEmpty!13915)) setNonEmpty!13915))

(assert (= setNonEmpty!13915 b!2107708))

(assert (= (and mapNonEmpty!10932 ((_ is Cons!23307) mapValue!10932)) b!2107710))

(declare-fun m!2565641 () Bool)

(assert (=> setNonEmpty!13915 m!2565641))

(declare-fun m!2565643 () Bool)

(assert (=> b!2107710 m!2565643))

(declare-fun b!2107725 () Bool)

(declare-fun e!1339879 () Bool)

(declare-fun tp!639949 () Bool)

(assert (=> b!2107725 (= e!1339879 tp!639949)))

(declare-fun mapNonEmpty!10939 () Bool)

(declare-fun mapRes!10939 () Bool)

(declare-fun tp!639957 () Bool)

(declare-fun e!1339875 () Bool)

(assert (=> mapNonEmpty!10939 (= mapRes!10939 (and tp!639957 e!1339875))))

(declare-fun mapRest!10939 () (Array (_ BitVec 32) List!23390))

(declare-fun mapValue!10939 () List!23390)

(declare-fun mapKey!10939 () (_ BitVec 32))

(assert (=> mapNonEmpty!10939 (= mapRest!10933 (store mapRest!10939 mapKey!10939 mapValue!10939))))

(declare-fun setIsEmpty!13920 () Bool)

(declare-fun setRes!13920 () Bool)

(assert (=> setIsEmpty!13920 setRes!13920))

(declare-fun setIsEmpty!13921 () Bool)

(declare-fun setRes!13921 () Bool)

(assert (=> setIsEmpty!13921 setRes!13921))

(declare-fun b!2107726 () Bool)

(declare-fun e!1339874 () Bool)

(declare-fun tp!639950 () Bool)

(assert (=> b!2107726 (= e!1339874 tp!639950)))

(declare-fun b!2107727 () Bool)

(declare-fun e!1339877 () Bool)

(declare-fun tp!639948 () Bool)

(declare-fun mapDefault!10939 () List!23390)

(declare-fun tp!639951 () Bool)

(assert (=> b!2107727 (= e!1339877 (and tp!639951 (inv!30846 (_2!13066 (_1!13067 (h!28707 mapDefault!10939)))) e!1339879 tp_is_empty!9377 setRes!13921 tp!639948))))

(declare-fun condSetEmpty!13920 () Bool)

(assert (=> b!2107727 (= condSetEmpty!13920 (= (_2!13067 (h!28707 mapDefault!10939)) ((as const (Array Context!2298 Bool)) false)))))

(declare-fun b!2107728 () Bool)

(declare-fun e!1339878 () Bool)

(declare-fun tp!639952 () Bool)

(assert (=> b!2107728 (= e!1339878 tp!639952)))

(declare-fun e!1339876 () Bool)

(declare-fun tp!639955 () Bool)

(declare-fun tp!639947 () Bool)

(declare-fun b!2107729 () Bool)

(assert (=> b!2107729 (= e!1339875 (and tp!639955 (inv!30846 (_2!13066 (_1!13067 (h!28707 mapValue!10939)))) e!1339876 tp_is_empty!9377 setRes!13920 tp!639947))))

(declare-fun condSetEmpty!13921 () Bool)

(assert (=> b!2107729 (= condSetEmpty!13921 (= (_2!13067 (h!28707 mapValue!10939)) ((as const (Array Context!2298 Bool)) false)))))

(declare-fun setElem!13920 () Context!2298)

(declare-fun setNonEmpty!13920 () Bool)

(declare-fun tp!639954 () Bool)

(assert (=> setNonEmpty!13920 (= setRes!13920 (and tp!639954 (inv!30846 setElem!13920) e!1339874))))

(declare-fun setRest!13921 () (InoxSet Context!2298))

(assert (=> setNonEmpty!13920 (= (_2!13067 (h!28707 mapValue!10939)) ((_ map or) (store ((as const (Array Context!2298 Bool)) false) setElem!13920 true) setRest!13921))))

(declare-fun setNonEmpty!13921 () Bool)

(declare-fun setElem!13921 () Context!2298)

(declare-fun tp!639956 () Bool)

(assert (=> setNonEmpty!13921 (= setRes!13921 (and tp!639956 (inv!30846 setElem!13921) e!1339878))))

(declare-fun setRest!13920 () (InoxSet Context!2298))

(assert (=> setNonEmpty!13921 (= (_2!13067 (h!28707 mapDefault!10939)) ((_ map or) (store ((as const (Array Context!2298 Bool)) false) setElem!13921 true) setRest!13920))))

(declare-fun mapIsEmpty!10939 () Bool)

(assert (=> mapIsEmpty!10939 mapRes!10939))

(declare-fun b!2107730 () Bool)

(declare-fun tp!639953 () Bool)

(assert (=> b!2107730 (= e!1339876 tp!639953)))

(declare-fun condMapEmpty!10939 () Bool)

(assert (=> mapNonEmpty!10933 (= condMapEmpty!10939 (= mapRest!10933 ((as const (Array (_ BitVec 32) List!23390)) mapDefault!10939)))))

(assert (=> mapNonEmpty!10933 (= tp!639835 (and e!1339877 mapRes!10939))))

(assert (= (and mapNonEmpty!10933 condMapEmpty!10939) mapIsEmpty!10939))

(assert (= (and mapNonEmpty!10933 (not condMapEmpty!10939)) mapNonEmpty!10939))

(assert (= b!2107729 b!2107730))

(assert (= (and b!2107729 condSetEmpty!13921) setIsEmpty!13920))

(assert (= (and b!2107729 (not condSetEmpty!13921)) setNonEmpty!13920))

(assert (= setNonEmpty!13920 b!2107726))

(assert (= (and mapNonEmpty!10939 ((_ is Cons!23306) mapValue!10939)) b!2107729))

(assert (= b!2107727 b!2107725))

(assert (= (and b!2107727 condSetEmpty!13920) setIsEmpty!13921))

(assert (= (and b!2107727 (not condSetEmpty!13920)) setNonEmpty!13921))

(assert (= setNonEmpty!13921 b!2107728))

(assert (= (and mapNonEmpty!10933 ((_ is Cons!23306) mapDefault!10939)) b!2107727))

(declare-fun m!2565645 () Bool)

(assert (=> mapNonEmpty!10939 m!2565645))

(declare-fun m!2565647 () Bool)

(assert (=> b!2107727 m!2565647))

(declare-fun m!2565649 () Bool)

(assert (=> setNonEmpty!13920 m!2565649))

(declare-fun m!2565651 () Bool)

(assert (=> b!2107729 m!2565651))

(declare-fun m!2565653 () Bool)

(assert (=> setNonEmpty!13921 m!2565653))

(declare-fun setNonEmpty!13922 () Bool)

(declare-fun setRes!13922 () Bool)

(declare-fun setElem!13922 () Context!2298)

(declare-fun tp!639958 () Bool)

(declare-fun e!1339880 () Bool)

(assert (=> setNonEmpty!13922 (= setRes!13922 (and tp!639958 (inv!30846 setElem!13922) e!1339880))))

(declare-fun setRest!13922 () (InoxSet Context!2298))

(assert (=> setNonEmpty!13922 (= (_2!13067 (h!28707 mapValue!10933)) ((_ map or) (store ((as const (Array Context!2298 Bool)) false) setElem!13922 true) setRest!13922))))

(declare-fun e!1339881 () Bool)

(assert (=> mapNonEmpty!10933 (= tp!639828 e!1339881)))

(declare-fun setIsEmpty!13922 () Bool)

(assert (=> setIsEmpty!13922 setRes!13922))

(declare-fun b!2107731 () Bool)

(declare-fun tp!639962 () Bool)

(declare-fun tp!639959 () Bool)

(declare-fun e!1339882 () Bool)

(assert (=> b!2107731 (= e!1339881 (and tp!639962 (inv!30846 (_2!13066 (_1!13067 (h!28707 mapValue!10933)))) e!1339882 tp_is_empty!9377 setRes!13922 tp!639959))))

(declare-fun condSetEmpty!13922 () Bool)

(assert (=> b!2107731 (= condSetEmpty!13922 (= (_2!13067 (h!28707 mapValue!10933)) ((as const (Array Context!2298 Bool)) false)))))

(declare-fun b!2107732 () Bool)

(declare-fun tp!639960 () Bool)

(assert (=> b!2107732 (= e!1339880 tp!639960)))

(declare-fun b!2107733 () Bool)

(declare-fun tp!639961 () Bool)

(assert (=> b!2107733 (= e!1339882 tp!639961)))

(assert (= b!2107731 b!2107733))

(assert (= (and b!2107731 condSetEmpty!13922) setIsEmpty!13922))

(assert (= (and b!2107731 (not condSetEmpty!13922)) setNonEmpty!13922))

(assert (= setNonEmpty!13922 b!2107732))

(assert (= (and mapNonEmpty!10933 ((_ is Cons!23306) mapValue!10933)) b!2107731))

(declare-fun m!2565655 () Bool)

(assert (=> setNonEmpty!13922 m!2565655))

(declare-fun m!2565657 () Bool)

(assert (=> b!2107731 m!2565657))

(declare-fun e!1339883 () Bool)

(declare-fun tp!639963 () Bool)

(declare-fun b!2107734 () Bool)

(declare-fun tp!639965 () Bool)

(assert (=> b!2107734 (= e!1339883 (and (inv!30840 (left!18163 (c!338949 totalInput!482))) tp!639965 (inv!30840 (right!18493 (c!338949 totalInput!482))) tp!639963))))

(declare-fun b!2107736 () Bool)

(declare-fun e!1339884 () Bool)

(declare-fun tp!639964 () Bool)

(assert (=> b!2107736 (= e!1339884 tp!639964)))

(declare-fun b!2107735 () Bool)

(assert (=> b!2107735 (= e!1339883 (and (inv!30847 (xs!10669 (c!338949 totalInput!482))) e!1339884))))

(assert (=> b!2107582 (= tp!639829 (and (inv!30840 (c!338949 totalInput!482)) e!1339883))))

(assert (= (and b!2107582 ((_ is Node!7727) (c!338949 totalInput!482))) b!2107734))

(assert (= b!2107735 b!2107736))

(assert (= (and b!2107582 ((_ is Leaf!11284) (c!338949 totalInput!482))) b!2107735))

(declare-fun m!2565659 () Bool)

(assert (=> b!2107734 m!2565659))

(declare-fun m!2565661 () Bool)

(assert (=> b!2107734 m!2565661))

(declare-fun m!2565663 () Bool)

(assert (=> b!2107735 m!2565663))

(assert (=> b!2107582 m!2565535))

(declare-fun b!2107737 () Bool)

(declare-fun e!1339886 () Bool)

(declare-fun tp!639969 () Bool)

(assert (=> b!2107737 (= e!1339886 tp!639969)))

(declare-fun e!1339885 () Bool)

(assert (=> b!2107590 (= tp!639831 e!1339885)))

(declare-fun b!2107738 () Bool)

(declare-fun e!1339887 () Bool)

(declare-fun tp!639966 () Bool)

(assert (=> b!2107738 (= e!1339887 tp!639966)))

(declare-fun setNonEmpty!13923 () Bool)

(declare-fun setRes!13923 () Bool)

(declare-fun tp!639967 () Bool)

(declare-fun setElem!13923 () Context!2298)

(assert (=> setNonEmpty!13923 (= setRes!13923 (and tp!639967 (inv!30846 setElem!13923) e!1339886))))

(declare-fun setRest!13923 () (InoxSet Context!2298))

(assert (=> setNonEmpty!13923 (= (_2!13069 (h!28708 (zeroValue!2522 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2298 Bool)) false) setElem!13923 true) setRest!13923))))

(declare-fun setIsEmpty!13923 () Bool)

(assert (=> setIsEmpty!13923 setRes!13923))

(declare-fun b!2107739 () Bool)

(declare-fun tp!639968 () Bool)

(assert (=> b!2107739 (= e!1339885 (and (inv!30846 (_1!13068 (_1!13069 (h!28708 (zeroValue!2522 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675)))))))))) e!1339887 tp_is_empty!9377 setRes!13923 tp!639968))))

(declare-fun condSetEmpty!13923 () Bool)

(assert (=> b!2107739 (= condSetEmpty!13923 (= (_2!13069 (h!28708 (zeroValue!2522 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675)))))))) ((as const (Array Context!2298 Bool)) false)))))

(assert (= b!2107739 b!2107738))

(assert (= (and b!2107739 condSetEmpty!13923) setIsEmpty!13923))

(assert (= (and b!2107739 (not condSetEmpty!13923)) setNonEmpty!13923))

(assert (= setNonEmpty!13923 b!2107737))

(assert (= (and b!2107590 ((_ is Cons!23307) (zeroValue!2522 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675)))))))) b!2107739))

(declare-fun m!2565665 () Bool)

(assert (=> setNonEmpty!13923 m!2565665))

(declare-fun m!2565667 () Bool)

(assert (=> b!2107739 m!2565667))

(declare-fun b!2107740 () Bool)

(declare-fun e!1339889 () Bool)

(declare-fun tp!639973 () Bool)

(assert (=> b!2107740 (= e!1339889 tp!639973)))

(declare-fun e!1339888 () Bool)

(assert (=> b!2107590 (= tp!639826 e!1339888)))

(declare-fun b!2107741 () Bool)

(declare-fun e!1339890 () Bool)

(declare-fun tp!639970 () Bool)

(assert (=> b!2107741 (= e!1339890 tp!639970)))

(declare-fun setRes!13924 () Bool)

(declare-fun setElem!13924 () Context!2298)

(declare-fun tp!639971 () Bool)

(declare-fun setNonEmpty!13924 () Bool)

(assert (=> setNonEmpty!13924 (= setRes!13924 (and tp!639971 (inv!30846 setElem!13924) e!1339889))))

(declare-fun setRest!13924 () (InoxSet Context!2298))

(assert (=> setNonEmpty!13924 (= (_2!13069 (h!28708 (minValue!2522 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2298 Bool)) false) setElem!13924 true) setRest!13924))))

(declare-fun setIsEmpty!13924 () Bool)

(assert (=> setIsEmpty!13924 setRes!13924))

(declare-fun tp!639972 () Bool)

(declare-fun b!2107742 () Bool)

(assert (=> b!2107742 (= e!1339888 (and (inv!30846 (_1!13068 (_1!13069 (h!28708 (minValue!2522 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675)))))))))) e!1339890 tp_is_empty!9377 setRes!13924 tp!639972))))

(declare-fun condSetEmpty!13924 () Bool)

(assert (=> b!2107742 (= condSetEmpty!13924 (= (_2!13069 (h!28708 (minValue!2522 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675)))))))) ((as const (Array Context!2298 Bool)) false)))))

(assert (= b!2107742 b!2107741))

(assert (= (and b!2107742 condSetEmpty!13924) setIsEmpty!13924))

(assert (= (and b!2107742 (not condSetEmpty!13924)) setNonEmpty!13924))

(assert (= setNonEmpty!13924 b!2107740))

(assert (= (and b!2107590 ((_ is Cons!23307) (minValue!2522 (v!27850 (underlying!4723 (v!27851 (underlying!4724 (cache!2559 cacheUp!675)))))))) b!2107742))

(declare-fun m!2565669 () Bool)

(assert (=> setNonEmpty!13924 m!2565669))

(declare-fun m!2565671 () Bool)

(assert (=> b!2107742 m!2565671))

(declare-fun setRes!13925 () Bool)

(declare-fun tp!639974 () Bool)

(declare-fun setNonEmpty!13925 () Bool)

(declare-fun setElem!13925 () Context!2298)

(declare-fun e!1339891 () Bool)

(assert (=> setNonEmpty!13925 (= setRes!13925 (and tp!639974 (inv!30846 setElem!13925) e!1339891))))

(declare-fun setRest!13925 () (InoxSet Context!2298))

(assert (=> setNonEmpty!13925 (= (_2!13067 (h!28707 mapDefault!10932)) ((_ map or) (store ((as const (Array Context!2298 Bool)) false) setElem!13925 true) setRest!13925))))

(declare-fun e!1339892 () Bool)

(assert (=> b!2107586 (= tp!639832 e!1339892)))

(declare-fun setIsEmpty!13925 () Bool)

(assert (=> setIsEmpty!13925 setRes!13925))

(declare-fun tp!639978 () Bool)

(declare-fun e!1339893 () Bool)

(declare-fun tp!639975 () Bool)

(declare-fun b!2107743 () Bool)

(assert (=> b!2107743 (= e!1339892 (and tp!639978 (inv!30846 (_2!13066 (_1!13067 (h!28707 mapDefault!10932)))) e!1339893 tp_is_empty!9377 setRes!13925 tp!639975))))

(declare-fun condSetEmpty!13925 () Bool)

(assert (=> b!2107743 (= condSetEmpty!13925 (= (_2!13067 (h!28707 mapDefault!10932)) ((as const (Array Context!2298 Bool)) false)))))

(declare-fun b!2107744 () Bool)

(declare-fun tp!639976 () Bool)

(assert (=> b!2107744 (= e!1339891 tp!639976)))

(declare-fun b!2107745 () Bool)

(declare-fun tp!639977 () Bool)

(assert (=> b!2107745 (= e!1339893 tp!639977)))

(assert (= b!2107743 b!2107745))

(assert (= (and b!2107743 condSetEmpty!13925) setIsEmpty!13925))

(assert (= (and b!2107743 (not condSetEmpty!13925)) setNonEmpty!13925))

(assert (= setNonEmpty!13925 b!2107744))

(assert (= (and b!2107586 ((_ is Cons!23306) mapDefault!10932)) b!2107743))

(declare-fun m!2565673 () Bool)

(assert (=> setNonEmpty!13925 m!2565673))

(declare-fun m!2565675 () Bool)

(assert (=> b!2107743 m!2565675))

(declare-fun b!2107757 () Bool)

(declare-fun e!1339896 () Bool)

(declare-fun tp!639990 () Bool)

(declare-fun tp!639993 () Bool)

(assert (=> b!2107757 (= e!1339896 (and tp!639990 tp!639993))))

(declare-fun b!2107758 () Bool)

(declare-fun tp!639991 () Bool)

(assert (=> b!2107758 (= e!1339896 tp!639991)))

(assert (=> b!2107572 (= tp!639822 e!1339896)))

(declare-fun b!2107759 () Bool)

(declare-fun tp!639992 () Bool)

(declare-fun tp!639989 () Bool)

(assert (=> b!2107759 (= e!1339896 (and tp!639992 tp!639989))))

(declare-fun b!2107756 () Bool)

(assert (=> b!2107756 (= e!1339896 tp_is_empty!9377)))

(assert (= (and b!2107572 ((_ is ElementMatch!5579) (regex!4147 (h!28705 rulesArg!349)))) b!2107756))

(assert (= (and b!2107572 ((_ is Concat!9863) (regex!4147 (h!28705 rulesArg!349)))) b!2107757))

(assert (= (and b!2107572 ((_ is Star!5579) (regex!4147 (h!28705 rulesArg!349)))) b!2107758))

(assert (= (and b!2107572 ((_ is Union!5579) (regex!4147 (h!28705 rulesArg!349)))) b!2107759))

(check-sat b_and!170221 (not b!2107614) b_and!170219 (not b!2107623) (not d!641945) (not b!2107734) (not b!2107726) (not setNonEmpty!13904) (not b_next!61359) (not b!2107730) (not b!2107707) (not b!2107702) (not b!2107649) (not b!2107675) tp_is_empty!9377 (not b!2107663) (not b!2107737) (not b!2107728) (not setNonEmpty!13921) (not b!2107637) (not b!2107582) b_and!170223 (not b!2107740) (not b!2107634) (not b_next!61363) (not b!2107651) (not b!2107739) (not b!2107733) (not b!2107758) (not setNonEmpty!13913) (not setNonEmpty!13922) (not b_next!61371) (not b!2107625) (not b!2107674) (not b_next!61357) (not setNonEmpty!13925) (not b!2107741) (not b!2107654) b_and!170217 (not b!2107757) (not d!641973) (not b!2107640) (not b!2107686) (not b!2107736) (not b!2107615) (not b!2107664) (not setNonEmpty!13905) (not b!2107601) (not b!2107602) (not b!2107727) (not d!641939) b_and!170215 (not b!2107653) (not b!2107738) (not b!2107743) (not b!2107710) (not b!2107735) (not b_next!61369) (not b_next!61367) b_and!170225 (not b!2107709) (not b!2107731) (not b!2107744) (not b!2107732) (not setNonEmpty!13924) (not b!2107629) (not b!2107685) (not b!2107665) (not b!2107616) (not b!2107628) (not b!2107703) (not setNonEmpty!13915) (not b_next!61361) (not d!641955) (not b!2107729) (not b!2107706) (not d!641959) (not d!641941) (not b!2107583) (not d!641979) (not b_next!61365) (not b!2107704) (not b!2107705) (not d!641957) (not b!2107676) (not b!2107759) (not b!2107708) (not b!2107631) (not b!2107652) (not d!641971) b_and!170229 (not setNonEmpty!13920) (not setNonEmpty!13914) (not mapNonEmpty!10936) (not b!2107742) (not b!2107650) (not b!2107725) (not mapNonEmpty!10939) (not setNonEmpty!13908) (not b!2107745) b_and!170227 (not d!641969) (not setNonEmpty!13923))
(check-sat b_and!170219 (not b_next!61359) b_and!170223 (not b_next!61363) (not b_next!61371) (not b_next!61357) b_and!170221 b_and!170217 b_and!170215 (not b_next!61361) (not b_next!61365) b_and!170229 b_and!170227 b_and!170225 (not b_next!61369) (not b_next!61367))
