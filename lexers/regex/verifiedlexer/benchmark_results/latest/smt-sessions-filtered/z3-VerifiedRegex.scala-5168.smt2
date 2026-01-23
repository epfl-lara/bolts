; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266204 () Bool)

(assert start!266204)

(declare-fun b!2746025 () Bool)

(declare-fun b_free!77349 () Bool)

(declare-fun b_next!78053 () Bool)

(assert (=> b!2746025 (= b_free!77349 (not b_next!78053))))

(declare-fun tp!864928 () Bool)

(declare-fun b_and!202069 () Bool)

(assert (=> b!2746025 (= tp!864928 b_and!202069)))

(declare-fun b!2746029 () Bool)

(declare-fun b_free!77351 () Bool)

(declare-fun b_next!78055 () Bool)

(assert (=> b!2746029 (= b_free!77351 (not b_next!78055))))

(declare-fun tp!864934 () Bool)

(declare-fun b_and!202071 () Bool)

(assert (=> b!2746029 (= tp!864934 b_and!202071)))

(declare-fun b_free!77353 () Bool)

(declare-fun b_next!78057 () Bool)

(assert (=> b!2746029 (= b_free!77353 (not b_next!78057))))

(declare-fun tp!864931 () Bool)

(declare-fun b_and!202073 () Bool)

(assert (=> b!2746029 (= tp!864931 b_and!202073)))

(declare-fun b!2746045 () Bool)

(declare-fun b_free!77355 () Bool)

(declare-fun b_next!78059 () Bool)

(assert (=> b!2746045 (= b_free!77355 (not b_next!78059))))

(declare-fun tp!864940 () Bool)

(declare-fun b_and!202075 () Bool)

(assert (=> b!2746045 (= tp!864940 b_and!202075)))

(declare-fun b!2746032 () Bool)

(declare-fun b_free!77357 () Bool)

(declare-fun b_next!78061 () Bool)

(assert (=> b!2746032 (= b_free!77357 (not b_next!78061))))

(declare-fun tp!864936 () Bool)

(declare-fun b_and!202077 () Bool)

(assert (=> b!2746032 (= tp!864936 b_and!202077)))

(declare-fun b!2746031 () Bool)

(declare-fun b_free!77359 () Bool)

(declare-fun b_next!78063 () Bool)

(assert (=> b!2746031 (= b_free!77359 (not b_next!78063))))

(declare-fun tp!864926 () Bool)

(declare-fun b_and!202079 () Bool)

(assert (=> b!2746031 (= tp!864926 b_and!202079)))

(declare-fun b!2746022 () Bool)

(declare-fun e!1729999 () Bool)

(declare-fun e!1730019 () Bool)

(assert (=> b!2746022 (= e!1729999 (not e!1730019))))

(declare-fun res!1152350 () Bool)

(assert (=> b!2746022 (=> res!1152350 e!1730019)))

(declare-datatypes ((List!31731 0))(
  ( (Nil!31631) (Cons!31631 (h!37051 (_ BitVec 16)) (t!227819 List!31731)) )
))
(declare-datatypes ((TokenValue!5068 0))(
  ( (FloatLiteralValue!10136 (text!35921 List!31731)) (TokenValueExt!5067 (__x!20457 Int)) (Broken!25340 (value!155685 List!31731)) (Object!5167) (End!5068) (Def!5068) (Underscore!5068) (Match!5068) (Else!5068) (Error!5068) (Case!5068) (If!5068) (Extends!5068) (Abstract!5068) (Class!5068) (Val!5068) (DelimiterValue!10136 (del!5128 List!31731)) (KeywordValue!5074 (value!155686 List!31731)) (CommentValue!10136 (value!155687 List!31731)) (WhitespaceValue!10136 (value!155688 List!31731)) (IndentationValue!5068 (value!155689 List!31731)) (String!35245) (Int32!5068) (Broken!25341 (value!155690 List!31731)) (Boolean!5069) (Unit!45532) (OperatorValue!5071 (op!5128 List!31731)) (IdentifierValue!10136 (value!155691 List!31731)) (IdentifierValue!10137 (value!155692 List!31731)) (WhitespaceValue!10137 (value!155693 List!31731)) (True!10136) (False!10136) (Broken!25342 (value!155694 List!31731)) (Broken!25343 (value!155695 List!31731)) (True!10137) (RightBrace!5068) (RightBracket!5068) (Colon!5068) (Null!5068) (Comma!5068) (LeftBracket!5068) (False!10137) (LeftBrace!5068) (ImaginaryLiteralValue!5068 (text!35922 List!31731)) (StringLiteralValue!15204 (value!155696 List!31731)) (EOFValue!5068 (value!155697 List!31731)) (IdentValue!5068 (value!155698 List!31731)) (DelimiterValue!10137 (value!155699 List!31731)) (DedentValue!5068 (value!155700 List!31731)) (NewLineValue!5068 (value!155701 List!31731)) (IntegerValue!15204 (value!155702 (_ BitVec 32)) (text!35923 List!31731)) (IntegerValue!15205 (value!155703 Int) (text!35924 List!31731)) (Times!5068) (Or!5068) (Equal!5068) (Minus!5068) (Broken!25344 (value!155704 List!31731)) (And!5068) (Div!5068) (LessEqual!5068) (Mod!5068) (Concat!13069) (Not!5068) (Plus!5068) (SpaceValue!5068 (value!155705 List!31731)) (IntegerValue!15206 (value!155706 Int) (text!35925 List!31731)) (StringLiteralValue!15205 (text!35926 List!31731)) (FloatLiteralValue!10137 (text!35927 List!31731)) (BytesLiteralValue!5068 (value!155707 List!31731)) (CommentValue!10137 (value!155708 List!31731)) (StringLiteralValue!15206 (value!155709 List!31731)) (ErrorTokenValue!5068 (msg!5129 List!31731)) )
))
(declare-datatypes ((C!16160 0))(
  ( (C!16161 (val!10014 Int)) )
))
(declare-datatypes ((List!31732 0))(
  ( (Nil!31632) (Cons!31632 (h!37052 C!16160) (t!227820 List!31732)) )
))
(declare-datatypes ((IArray!19783 0))(
  ( (IArray!19784 (innerList!9949 List!31732)) )
))
(declare-datatypes ((Conc!9889 0))(
  ( (Node!9889 (left!24241 Conc!9889) (right!24571 Conc!9889) (csize!20008 Int) (cheight!10100 Int)) (Leaf!15058 (xs!12996 IArray!19783) (csize!20009 Int)) (Empty!9889) )
))
(declare-datatypes ((BalanceConc!19392 0))(
  ( (BalanceConc!19393 (c!444854 Conc!9889)) )
))
(declare-datatypes ((TokenValueInjection!9576 0))(
  ( (TokenValueInjection!9577 (toValue!6844 Int) (toChars!6703 Int)) )
))
(declare-datatypes ((String!35246 0))(
  ( (String!35247 (value!155710 String)) )
))
(declare-datatypes ((Regex!8001 0))(
  ( (ElementMatch!8001 (c!444855 C!16160)) (Concat!13070 (regOne!16514 Regex!8001) (regTwo!16514 Regex!8001)) (EmptyExpr!8001) (Star!8001 (reg!8330 Regex!8001)) (EmptyLang!8001) (Union!8001 (regOne!16515 Regex!8001) (regTwo!16515 Regex!8001)) )
))
(declare-datatypes ((Rule!9492 0))(
  ( (Rule!9493 (regex!4846 Regex!8001) (tag!5350 String!35246) (isSeparator!4846 Bool) (transformation!4846 TokenValueInjection!9576)) )
))
(declare-datatypes ((List!31733 0))(
  ( (Nil!31633) (Cons!31633 (h!37053 Rule!9492) (t!227821 List!31733)) )
))
(declare-fun rulesArg!249 () List!31733)

(get-info :version)

(assert (=> b!2746022 (= res!1152350 (or (and ((_ is Cons!31633) rulesArg!249) ((_ is Nil!31633) (t!227821 rulesArg!249))) (not ((_ is Cons!31633) rulesArg!249))))))

(declare-fun lt!971675 () List!31732)

(declare-fun isPrefix!2519 (List!31732 List!31732) Bool)

(assert (=> b!2746022 (isPrefix!2519 lt!971675 lt!971675)))

(declare-datatypes ((Unit!45533 0))(
  ( (Unit!45534) )
))
(declare-fun lt!971672 () Unit!45533)

(declare-fun lemmaIsPrefixRefl!1645 (List!31732 List!31732) Unit!45533)

(assert (=> b!2746022 (= lt!971672 (lemmaIsPrefixRefl!1645 lt!971675 lt!971675))))

(declare-fun input!1326 () BalanceConc!19392)

(declare-fun list!11998 (BalanceConc!19392) List!31732)

(assert (=> b!2746022 (= lt!971675 (list!11998 input!1326))))

(declare-fun b!2746023 () Bool)

(declare-fun e!1730008 () Bool)

(declare-fun e!1730017 () Bool)

(assert (=> b!2746023 (= e!1730008 e!1730017)))

(declare-fun b!2746024 () Bool)

(declare-fun res!1152356 () Bool)

(assert (=> b!2746024 (=> (not res!1152356) (not e!1729999))))

(declare-datatypes ((LexerInterface!4439 0))(
  ( (LexerInterfaceExt!4436 (__x!20458 Int)) (Lexer!4437) )
))
(declare-fun thiss!15207 () LexerInterface!4439)

(declare-fun rulesValidInductive!1709 (LexerInterface!4439 List!31733) Bool)

(assert (=> b!2746024 (= res!1152356 (rulesValidInductive!1709 thiss!15207 rulesArg!249))))

(declare-datatypes ((List!31734 0))(
  ( (Nil!31634) (Cons!31634 (h!37054 Regex!8001) (t!227822 List!31734)) )
))
(declare-datatypes ((Context!4438 0))(
  ( (Context!4439 (exprs!2719 List!31734)) )
))
(declare-datatypes ((tuple3!4428 0))(
  ( (tuple3!4429 (_1!18413 Regex!8001) (_2!18413 Context!4438) (_3!2684 C!16160)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31458 0))(
  ( (tuple2!31459 (_1!18414 tuple3!4428) (_2!18414 (InoxSet Context!4438))) )
))
(declare-datatypes ((List!31735 0))(
  ( (Nil!31635) (Cons!31635 (h!37055 tuple2!31458) (t!227823 List!31735)) )
))
(declare-datatypes ((array!12878 0))(
  ( (array!12879 (arr!5749 (Array (_ BitVec 32) List!31735)) (size!24423 (_ BitVec 32))) )
))
(declare-datatypes ((array!12880 0))(
  ( (array!12881 (arr!5750 (Array (_ BitVec 32) (_ BitVec 64))) (size!24424 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7230 0))(
  ( (LongMapFixedSize!7231 (defaultEntry!4000 Int) (mask!9352 (_ BitVec 32)) (extraKeys!3864 (_ BitVec 32)) (zeroValue!3874 List!31735) (minValue!3874 List!31735) (_size!7273 (_ BitVec 32)) (_keys!3915 array!12880) (_values!3896 array!12878) (_vacant!3676 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14269 0))(
  ( (Cell!14270 (v!33261 LongMapFixedSize!7230)) )
))
(declare-datatypes ((MutLongMap!3615 0))(
  ( (LongMap!3615 (underlying!7433 Cell!14269)) (MutLongMapExt!3614 (__x!20459 Int)) )
))
(declare-datatypes ((Cell!14271 0))(
  ( (Cell!14272 (v!33262 MutLongMap!3615)) )
))
(declare-datatypes ((Hashable!3531 0))(
  ( (HashableExt!3530 (__x!20460 Int)) )
))
(declare-datatypes ((MutableMap!3521 0))(
  ( (MutableMapExt!3520 (__x!20461 Int)) (HashMap!3521 (underlying!7434 Cell!14271) (hashF!5563 Hashable!3531) (_size!7274 (_ BitVec 32)) (defaultValue!3692 Int)) )
))
(declare-datatypes ((CacheDown!2346 0))(
  ( (CacheDown!2347 (cache!3664 MutableMap!3521)) )
))
(declare-fun cacheDown!646 () CacheDown!2346)

(declare-fun e!1730004 () Bool)

(declare-fun tp!864943 () Bool)

(declare-fun e!1730015 () Bool)

(declare-fun tp!864942 () Bool)

(declare-fun array_inv!4109 (array!12880) Bool)

(declare-fun array_inv!4110 (array!12878) Bool)

(assert (=> b!2746025 (= e!1730004 (and tp!864928 tp!864942 tp!864943 (array_inv!4109 (_keys!3915 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646))))))) (array_inv!4110 (_values!3896 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646))))))) e!1730015))))

(declare-fun b!2746026 () Bool)

(declare-fun e!1730010 () Bool)

(declare-fun e!1730012 () Bool)

(declare-fun tp!864932 () Bool)

(assert (=> b!2746026 (= e!1730010 (and e!1730012 tp!864932))))

(declare-fun b!2746027 () Bool)

(declare-fun e!1730021 () Bool)

(declare-fun e!1730003 () Bool)

(declare-datatypes ((tuple2!31460 0))(
  ( (tuple2!31461 (_1!18415 Context!4438) (_2!18415 C!16160)) )
))
(declare-datatypes ((tuple2!31462 0))(
  ( (tuple2!31463 (_1!18416 tuple2!31460) (_2!18416 (InoxSet Context!4438))) )
))
(declare-datatypes ((List!31736 0))(
  ( (Nil!31636) (Cons!31636 (h!37056 tuple2!31462) (t!227824 List!31736)) )
))
(declare-datatypes ((array!12882 0))(
  ( (array!12883 (arr!5751 (Array (_ BitVec 32) List!31736)) (size!24425 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7232 0))(
  ( (LongMapFixedSize!7233 (defaultEntry!4001 Int) (mask!9353 (_ BitVec 32)) (extraKeys!3865 (_ BitVec 32)) (zeroValue!3875 List!31736) (minValue!3875 List!31736) (_size!7275 (_ BitVec 32)) (_keys!3916 array!12880) (_values!3897 array!12882) (_vacant!3677 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14273 0))(
  ( (Cell!14274 (v!33263 LongMapFixedSize!7232)) )
))
(declare-datatypes ((MutLongMap!3616 0))(
  ( (LongMap!3616 (underlying!7435 Cell!14273)) (MutLongMapExt!3615 (__x!20462 Int)) )
))
(declare-fun lt!971674 () MutLongMap!3616)

(assert (=> b!2746027 (= e!1730021 (and e!1730003 ((_ is LongMap!3616) lt!971674)))))

(declare-datatypes ((Cell!14275 0))(
  ( (Cell!14276 (v!33264 MutLongMap!3616)) )
))
(declare-datatypes ((Hashable!3532 0))(
  ( (HashableExt!3531 (__x!20463 Int)) )
))
(declare-datatypes ((MutableMap!3522 0))(
  ( (MutableMapExt!3521 (__x!20464 Int)) (HashMap!3522 (underlying!7436 Cell!14275) (hashF!5564 Hashable!3532) (_size!7276 (_ BitVec 32)) (defaultValue!3693 Int)) )
))
(declare-datatypes ((CacheUp!2228 0))(
  ( (CacheUp!2229 (cache!3665 MutableMap!3522)) )
))
(declare-fun cacheUp!633 () CacheUp!2228)

(assert (=> b!2746027 (= lt!971674 (v!33264 (underlying!7436 (cache!3665 cacheUp!633))))))

(declare-fun b!2746028 () Bool)

(declare-fun res!1152351 () Bool)

(assert (=> b!2746028 (=> (not res!1152351) (not e!1729999))))

(declare-fun valid!2805 (CacheUp!2228) Bool)

(assert (=> b!2746028 (= res!1152351 (valid!2805 cacheUp!633))))

(declare-fun e!1730007 () Bool)

(assert (=> b!2746029 (= e!1730007 (and tp!864934 tp!864931))))

(declare-fun b!2746030 () Bool)

(declare-fun e!1730022 () Bool)

(declare-fun e!1730020 () Bool)

(assert (=> b!2746030 (= e!1730022 e!1730020)))

(declare-fun mapNonEmpty!16487 () Bool)

(declare-fun mapRes!16487 () Bool)

(declare-fun tp!864930 () Bool)

(declare-fun tp!864939 () Bool)

(assert (=> mapNonEmpty!16487 (= mapRes!16487 (and tp!864930 tp!864939))))

(declare-fun mapValue!16487 () List!31735)

(declare-fun mapKey!16488 () (_ BitVec 32))

(declare-fun mapRest!16487 () (Array (_ BitVec 32) List!31735))

(assert (=> mapNonEmpty!16487 (= (arr!5749 (_values!3896 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646))))))) (store mapRest!16487 mapKey!16488 mapValue!16487))))

(declare-fun mapNonEmpty!16488 () Bool)

(declare-fun mapRes!16488 () Bool)

(declare-fun tp!864933 () Bool)

(declare-fun tp!864935 () Bool)

(assert (=> mapNonEmpty!16488 (= mapRes!16488 (and tp!864933 tp!864935))))

(declare-fun mapRest!16488 () (Array (_ BitVec 32) List!31736))

(declare-fun mapKey!16487 () (_ BitVec 32))

(declare-fun mapValue!16488 () List!31736)

(assert (=> mapNonEmpty!16488 (= (arr!5751 (_values!3897 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633))))))) (store mapRest!16488 mapKey!16487 mapValue!16488))))

(assert (=> b!2746031 (= e!1730020 (and e!1730021 tp!864926))))

(declare-fun tp!864941 () Bool)

(declare-fun tp!864927 () Bool)

(declare-fun e!1730011 () Bool)

(declare-fun e!1730006 () Bool)

(declare-fun array_inv!4111 (array!12882) Bool)

(assert (=> b!2746032 (= e!1730011 (and tp!864936 tp!864941 tp!864927 (array_inv!4109 (_keys!3916 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633))))))) (array_inv!4111 (_values!3897 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633))))))) e!1730006))))

(declare-fun b!2746033 () Bool)

(declare-fun e!1730002 () Bool)

(assert (=> b!2746033 (= e!1730019 e!1730002)))

(declare-fun res!1152349 () Bool)

(assert (=> b!2746033 (=> (not res!1152349) (not e!1730002))))

(declare-datatypes ((Token!9120 0))(
  ( (Token!9121 (value!155711 TokenValue!5068) (rule!7285 Rule!9492) (size!24426 Int) (originalCharacters!5591 List!31732)) )
))
(declare-datatypes ((tuple2!31464 0))(
  ( (tuple2!31465 (_1!18417 Token!9120) (_2!18417 BalanceConc!19392)) )
))
(declare-datatypes ((Option!6240 0))(
  ( (None!6239) (Some!6239 (v!33265 tuple2!31464)) )
))
(declare-datatypes ((tuple3!4430 0))(
  ( (tuple3!4431 (_1!18418 Option!6240) (_2!18418 CacheUp!2228) (_3!2685 CacheDown!2346)) )
))
(declare-fun lt!971676 () tuple3!4430)

(declare-fun lt!971673 () tuple3!4430)

(declare-fun maxPrefixZipperSequence!1063 (LexerInterface!4439 List!31733 BalanceConc!19392) Option!6240)

(assert (=> b!2746033 (= res!1152349 (= (ite (and ((_ is None!6239) (_1!18418 lt!971673)) ((_ is None!6239) (_1!18418 lt!971676))) None!6239 (ite ((_ is None!6239) (_1!18418 lt!971676)) (_1!18418 lt!971673) (ite ((_ is None!6239) (_1!18418 lt!971673)) (_1!18418 lt!971676) (ite (>= (size!24426 (_1!18417 (v!33265 (_1!18418 lt!971673)))) (size!24426 (_1!18417 (v!33265 (_1!18418 lt!971676))))) (_1!18418 lt!971673) (_1!18418 lt!971676))))) (maxPrefixZipperSequence!1063 thiss!15207 rulesArg!249 input!1326)))))

(declare-fun maxPrefixZipperSequenceMem!28 (LexerInterface!4439 List!31733 BalanceConc!19392 CacheUp!2228 CacheDown!2346) tuple3!4430)

(assert (=> b!2746033 (= lt!971676 (maxPrefixZipperSequenceMem!28 thiss!15207 (t!227821 rulesArg!249) input!1326 (_2!18418 lt!971673) (_3!2685 lt!971673)))))

(declare-fun maxPrefixOneRuleZipperSequenceMem!25 (LexerInterface!4439 Rule!9492 BalanceConc!19392 CacheUp!2228 CacheDown!2346) tuple3!4430)

(assert (=> b!2746033 (= lt!971673 (maxPrefixOneRuleZipperSequenceMem!25 thiss!15207 (h!37053 rulesArg!249) input!1326 cacheUp!633 cacheDown!646))))

(declare-fun b!2746034 () Bool)

(declare-fun e!1730005 () Bool)

(declare-fun tp!864944 () Bool)

(declare-fun inv!42984 (Conc!9889) Bool)

(assert (=> b!2746034 (= e!1730005 (and (inv!42984 (c!444854 input!1326)) tp!864944))))

(declare-fun mapIsEmpty!16487 () Bool)

(assert (=> mapIsEmpty!16487 mapRes!16488))

(declare-fun res!1152352 () Bool)

(assert (=> start!266204 (=> (not res!1152352) (not e!1729999))))

(assert (=> start!266204 (= res!1152352 ((_ is Lexer!4437) thiss!15207))))

(assert (=> start!266204 e!1729999))

(declare-fun e!1730000 () Bool)

(declare-fun inv!42985 (CacheDown!2346) Bool)

(assert (=> start!266204 (and (inv!42985 cacheDown!646) e!1730000)))

(declare-fun inv!42986 (BalanceConc!19392) Bool)

(assert (=> start!266204 (and (inv!42986 input!1326) e!1730005)))

(assert (=> start!266204 e!1730010))

(declare-fun inv!42987 (CacheUp!2228) Bool)

(assert (=> start!266204 (and (inv!42987 cacheUp!633) e!1730022)))

(assert (=> start!266204 true))

(declare-fun b!2746035 () Bool)

(declare-fun tp!864929 () Bool)

(assert (=> b!2746035 (= e!1730015 (and tp!864929 mapRes!16487))))

(declare-fun condMapEmpty!16487 () Bool)

(declare-fun mapDefault!16487 () List!31735)

(assert (=> b!2746035 (= condMapEmpty!16487 (= (arr!5749 (_values!3896 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31735)) mapDefault!16487)))))

(declare-fun b!2746036 () Bool)

(assert (=> b!2746036 (= e!1730017 e!1730004)))

(declare-fun b!2746037 () Bool)

(declare-fun e!1730016 () Bool)

(assert (=> b!2746037 (= e!1730000 e!1730016)))

(declare-fun b!2746038 () Bool)

(declare-fun e!1730001 () Bool)

(assert (=> b!2746038 (= e!1730003 e!1730001)))

(declare-fun b!2746039 () Bool)

(declare-fun res!1152353 () Bool)

(assert (=> b!2746039 (=> (not res!1152353) (not e!1730002))))

(assert (=> b!2746039 (= res!1152353 (valid!2805 (_2!18418 lt!971676)))))

(declare-fun b!2746040 () Bool)

(declare-fun valid!2806 (CacheDown!2346) Bool)

(assert (=> b!2746040 (= e!1730002 (valid!2806 (_3!2685 lt!971676)))))

(declare-fun b!2746041 () Bool)

(declare-fun e!1730013 () Bool)

(declare-fun lt!971677 () MutLongMap!3615)

(assert (=> b!2746041 (= e!1730013 (and e!1730008 ((_ is LongMap!3615) lt!971677)))))

(assert (=> b!2746041 (= lt!971677 (v!33262 (underlying!7434 (cache!3664 cacheDown!646))))))

(declare-fun mapIsEmpty!16488 () Bool)

(assert (=> mapIsEmpty!16488 mapRes!16487))

(declare-fun b!2746042 () Bool)

(assert (=> b!2746042 (= e!1730001 e!1730011)))

(declare-fun b!2746043 () Bool)

(declare-fun tp!864937 () Bool)

(declare-fun inv!42980 (String!35246) Bool)

(declare-fun inv!42988 (TokenValueInjection!9576) Bool)

(assert (=> b!2746043 (= e!1730012 (and tp!864937 (inv!42980 (tag!5350 (h!37053 rulesArg!249))) (inv!42988 (transformation!4846 (h!37053 rulesArg!249))) e!1730007))))

(declare-fun b!2746044 () Bool)

(declare-fun res!1152354 () Bool)

(assert (=> b!2746044 (=> (not res!1152354) (not e!1729999))))

(declare-fun isEmpty!18042 (List!31733) Bool)

(assert (=> b!2746044 (= res!1152354 (not (isEmpty!18042 rulesArg!249)))))

(assert (=> b!2746045 (= e!1730016 (and e!1730013 tp!864940))))

(declare-fun b!2746046 () Bool)

(declare-fun tp!864938 () Bool)

(assert (=> b!2746046 (= e!1730006 (and tp!864938 mapRes!16488))))

(declare-fun condMapEmpty!16488 () Bool)

(declare-fun mapDefault!16488 () List!31736)

(assert (=> b!2746046 (= condMapEmpty!16488 (= (arr!5751 (_values!3897 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31736)) mapDefault!16488)))))

(declare-fun b!2746047 () Bool)

(declare-fun res!1152355 () Bool)

(assert (=> b!2746047 (=> (not res!1152355) (not e!1729999))))

(assert (=> b!2746047 (= res!1152355 (valid!2806 cacheDown!646))))

(assert (= (and start!266204 res!1152352) b!2746024))

(assert (= (and b!2746024 res!1152356) b!2746044))

(assert (= (and b!2746044 res!1152354) b!2746028))

(assert (= (and b!2746028 res!1152351) b!2746047))

(assert (= (and b!2746047 res!1152355) b!2746022))

(assert (= (and b!2746022 (not res!1152350)) b!2746033))

(assert (= (and b!2746033 res!1152349) b!2746039))

(assert (= (and b!2746039 res!1152353) b!2746040))

(assert (= (and b!2746035 condMapEmpty!16487) mapIsEmpty!16488))

(assert (= (and b!2746035 (not condMapEmpty!16487)) mapNonEmpty!16487))

(assert (= b!2746025 b!2746035))

(assert (= b!2746036 b!2746025))

(assert (= b!2746023 b!2746036))

(assert (= (and b!2746041 ((_ is LongMap!3615) (v!33262 (underlying!7434 (cache!3664 cacheDown!646))))) b!2746023))

(assert (= b!2746045 b!2746041))

(assert (= (and b!2746037 ((_ is HashMap!3521) (cache!3664 cacheDown!646))) b!2746045))

(assert (= start!266204 b!2746037))

(assert (= start!266204 b!2746034))

(assert (= b!2746043 b!2746029))

(assert (= b!2746026 b!2746043))

(assert (= (and start!266204 ((_ is Cons!31633) rulesArg!249)) b!2746026))

(assert (= (and b!2746046 condMapEmpty!16488) mapIsEmpty!16487))

(assert (= (and b!2746046 (not condMapEmpty!16488)) mapNonEmpty!16488))

(assert (= b!2746032 b!2746046))

(assert (= b!2746042 b!2746032))

(assert (= b!2746038 b!2746042))

(assert (= (and b!2746027 ((_ is LongMap!3616) (v!33264 (underlying!7436 (cache!3665 cacheUp!633))))) b!2746038))

(assert (= b!2746031 b!2746027))

(assert (= (and b!2746030 ((_ is HashMap!3522) (cache!3665 cacheUp!633))) b!2746031))

(assert (= start!266204 b!2746030))

(declare-fun m!3162621 () Bool)

(assert (=> b!2746040 m!3162621))

(declare-fun m!3162623 () Bool)

(assert (=> start!266204 m!3162623))

(declare-fun m!3162625 () Bool)

(assert (=> start!266204 m!3162625))

(declare-fun m!3162627 () Bool)

(assert (=> start!266204 m!3162627))

(declare-fun m!3162629 () Bool)

(assert (=> mapNonEmpty!16488 m!3162629))

(declare-fun m!3162631 () Bool)

(assert (=> b!2746039 m!3162631))

(declare-fun m!3162633 () Bool)

(assert (=> b!2746044 m!3162633))

(declare-fun m!3162635 () Bool)

(assert (=> b!2746032 m!3162635))

(declare-fun m!3162637 () Bool)

(assert (=> b!2746032 m!3162637))

(declare-fun m!3162639 () Bool)

(assert (=> b!2746043 m!3162639))

(declare-fun m!3162641 () Bool)

(assert (=> b!2746043 m!3162641))

(declare-fun m!3162643 () Bool)

(assert (=> b!2746033 m!3162643))

(declare-fun m!3162645 () Bool)

(assert (=> b!2746033 m!3162645))

(declare-fun m!3162647 () Bool)

(assert (=> b!2746033 m!3162647))

(declare-fun m!3162649 () Bool)

(assert (=> mapNonEmpty!16487 m!3162649))

(declare-fun m!3162651 () Bool)

(assert (=> b!2746047 m!3162651))

(declare-fun m!3162653 () Bool)

(assert (=> b!2746022 m!3162653))

(declare-fun m!3162655 () Bool)

(assert (=> b!2746022 m!3162655))

(declare-fun m!3162657 () Bool)

(assert (=> b!2746022 m!3162657))

(declare-fun m!3162659 () Bool)

(assert (=> b!2746034 m!3162659))

(declare-fun m!3162661 () Bool)

(assert (=> b!2746024 m!3162661))

(declare-fun m!3162663 () Bool)

(assert (=> b!2746028 m!3162663))

(declare-fun m!3162665 () Bool)

(assert (=> b!2746025 m!3162665))

(declare-fun m!3162667 () Bool)

(assert (=> b!2746025 m!3162667))

(check-sat b_and!202073 (not b!2746032) (not b!2746034) b_and!202077 b_and!202071 (not b_next!78063) (not b_next!78053) (not b!2746025) (not b!2746044) (not b!2746033) (not b!2746035) (not b_next!78055) b_and!202075 (not b!2746022) (not b!2746040) (not b_next!78059) (not b!2746046) b_and!202079 (not start!266204) (not b_next!78061) (not b!2746039) (not b!2746047) (not b!2746024) (not b_next!78057) (not mapNonEmpty!16488) (not mapNonEmpty!16487) (not b!2746043) (not b!2746026) b_and!202069 (not b!2746028))
(check-sat b_and!202073 (not b_next!78059) b_and!202077 b_and!202079 b_and!202071 (not b_next!78063) (not b_next!78053) (not b_next!78061) (not b_next!78057) b_and!202069 (not b_next!78055) b_and!202075)
(get-model)

(declare-fun d!796027 () Bool)

(declare-fun validCacheMapUp!339 (MutableMap!3522) Bool)

(assert (=> d!796027 (= (valid!2805 cacheUp!633) (validCacheMapUp!339 (cache!3665 cacheUp!633)))))

(declare-fun bs!490281 () Bool)

(assert (= bs!490281 d!796027))

(declare-fun m!3162669 () Bool)

(assert (=> bs!490281 m!3162669))

(assert (=> b!2746028 d!796027))

(declare-fun d!796029 () Bool)

(declare-fun validCacheMapDown!370 (MutableMap!3521) Bool)

(assert (=> d!796029 (= (valid!2806 cacheDown!646) (validCacheMapDown!370 (cache!3664 cacheDown!646)))))

(declare-fun bs!490282 () Bool)

(assert (= bs!490282 d!796029))

(declare-fun m!3162671 () Bool)

(assert (=> bs!490282 m!3162671))

(assert (=> b!2746047 d!796029))

(declare-fun d!796031 () Bool)

(assert (=> d!796031 (= (valid!2805 (_2!18418 lt!971676)) (validCacheMapUp!339 (cache!3665 (_2!18418 lt!971676))))))

(declare-fun bs!490283 () Bool)

(assert (= bs!490283 d!796031))

(declare-fun m!3162673 () Bool)

(assert (=> bs!490283 m!3162673))

(assert (=> b!2746039 d!796031))

(declare-fun b!2746056 () Bool)

(declare-fun e!1730029 () Bool)

(declare-fun e!1730030 () Bool)

(assert (=> b!2746056 (= e!1730029 e!1730030)))

(declare-fun res!1152373 () Bool)

(assert (=> b!2746056 (=> (not res!1152373) (not e!1730030))))

(assert (=> b!2746056 (= res!1152373 (not ((_ is Nil!31632) lt!971675)))))

(declare-fun d!796033 () Bool)

(declare-fun e!1730031 () Bool)

(assert (=> d!796033 e!1730031))

(declare-fun res!1152376 () Bool)

(assert (=> d!796033 (=> res!1152376 e!1730031)))

(declare-fun lt!971680 () Bool)

(assert (=> d!796033 (= res!1152376 (not lt!971680))))

(assert (=> d!796033 (= lt!971680 e!1730029)))

(declare-fun res!1152375 () Bool)

(assert (=> d!796033 (=> res!1152375 e!1730029)))

(assert (=> d!796033 (= res!1152375 ((_ is Nil!31632) lt!971675))))

(assert (=> d!796033 (= (isPrefix!2519 lt!971675 lt!971675) lt!971680)))

(declare-fun b!2746057 () Bool)

(declare-fun res!1152374 () Bool)

(assert (=> b!2746057 (=> (not res!1152374) (not e!1730030))))

(declare-fun head!6115 (List!31732) C!16160)

(assert (=> b!2746057 (= res!1152374 (= (head!6115 lt!971675) (head!6115 lt!971675)))))

(declare-fun b!2746058 () Bool)

(declare-fun tail!4353 (List!31732) List!31732)

(assert (=> b!2746058 (= e!1730030 (isPrefix!2519 (tail!4353 lt!971675) (tail!4353 lt!971675)))))

(declare-fun b!2746059 () Bool)

(declare-fun size!24427 (List!31732) Int)

(assert (=> b!2746059 (= e!1730031 (>= (size!24427 lt!971675) (size!24427 lt!971675)))))

(assert (= (and d!796033 (not res!1152375)) b!2746056))

(assert (= (and b!2746056 res!1152373) b!2746057))

(assert (= (and b!2746057 res!1152374) b!2746058))

(assert (= (and d!796033 (not res!1152376)) b!2746059))

(declare-fun m!3162675 () Bool)

(assert (=> b!2746057 m!3162675))

(assert (=> b!2746057 m!3162675))

(declare-fun m!3162677 () Bool)

(assert (=> b!2746058 m!3162677))

(assert (=> b!2746058 m!3162677))

(assert (=> b!2746058 m!3162677))

(assert (=> b!2746058 m!3162677))

(declare-fun m!3162679 () Bool)

(assert (=> b!2746058 m!3162679))

(declare-fun m!3162681 () Bool)

(assert (=> b!2746059 m!3162681))

(assert (=> b!2746059 m!3162681))

(assert (=> b!2746022 d!796033))

(declare-fun d!796035 () Bool)

(assert (=> d!796035 (isPrefix!2519 lt!971675 lt!971675)))

(declare-fun lt!971683 () Unit!45533)

(declare-fun choose!16068 (List!31732 List!31732) Unit!45533)

(assert (=> d!796035 (= lt!971683 (choose!16068 lt!971675 lt!971675))))

(assert (=> d!796035 (= (lemmaIsPrefixRefl!1645 lt!971675 lt!971675) lt!971683)))

(declare-fun bs!490284 () Bool)

(assert (= bs!490284 d!796035))

(assert (=> bs!490284 m!3162653))

(declare-fun m!3162683 () Bool)

(assert (=> bs!490284 m!3162683))

(assert (=> b!2746022 d!796035))

(declare-fun d!796037 () Bool)

(declare-fun list!11999 (Conc!9889) List!31732)

(assert (=> d!796037 (= (list!11998 input!1326) (list!11999 (c!444854 input!1326)))))

(declare-fun bs!490285 () Bool)

(assert (= bs!490285 d!796037))

(declare-fun m!3162685 () Bool)

(assert (=> bs!490285 m!3162685))

(assert (=> b!2746022 d!796037))

(declare-fun d!796039 () Bool)

(assert (=> d!796039 (= (valid!2806 (_3!2685 lt!971676)) (validCacheMapDown!370 (cache!3664 (_3!2685 lt!971676))))))

(declare-fun bs!490286 () Bool)

(assert (= bs!490286 d!796039))

(declare-fun m!3162687 () Bool)

(assert (=> bs!490286 m!3162687))

(assert (=> b!2746040 d!796039))

(declare-fun d!796041 () Bool)

(declare-fun res!1152379 () Bool)

(declare-fun e!1730034 () Bool)

(assert (=> d!796041 (=> (not res!1152379) (not e!1730034))))

(assert (=> d!796041 (= res!1152379 ((_ is HashMap!3521) (cache!3664 cacheDown!646)))))

(assert (=> d!796041 (= (inv!42985 cacheDown!646) e!1730034)))

(declare-fun b!2746062 () Bool)

(assert (=> b!2746062 (= e!1730034 (validCacheMapDown!370 (cache!3664 cacheDown!646)))))

(assert (= (and d!796041 res!1152379) b!2746062))

(assert (=> b!2746062 m!3162671))

(assert (=> start!266204 d!796041))

(declare-fun d!796043 () Bool)

(declare-fun isBalanced!3013 (Conc!9889) Bool)

(assert (=> d!796043 (= (inv!42986 input!1326) (isBalanced!3013 (c!444854 input!1326)))))

(declare-fun bs!490287 () Bool)

(assert (= bs!490287 d!796043))

(declare-fun m!3162689 () Bool)

(assert (=> bs!490287 m!3162689))

(assert (=> start!266204 d!796043))

(declare-fun d!796045 () Bool)

(declare-fun res!1152382 () Bool)

(declare-fun e!1730037 () Bool)

(assert (=> d!796045 (=> (not res!1152382) (not e!1730037))))

(assert (=> d!796045 (= res!1152382 ((_ is HashMap!3522) (cache!3665 cacheUp!633)))))

(assert (=> d!796045 (= (inv!42987 cacheUp!633) e!1730037)))

(declare-fun b!2746065 () Bool)

(assert (=> b!2746065 (= e!1730037 (validCacheMapUp!339 (cache!3665 cacheUp!633)))))

(assert (= (and d!796045 res!1152382) b!2746065))

(assert (=> b!2746065 m!3162669))

(assert (=> start!266204 d!796045))

(declare-fun d!796047 () Bool)

(assert (=> d!796047 (= (array_inv!4109 (_keys!3916 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633))))))) (bvsge (size!24424 (_keys!3916 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746032 d!796047))

(declare-fun d!796049 () Bool)

(assert (=> d!796049 (= (array_inv!4111 (_values!3897 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633))))))) (bvsge (size!24425 (_values!3897 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746032 d!796049))

(declare-fun b!2746082 () Bool)

(declare-fun e!1730052 () Option!6240)

(declare-fun call!177418 () Option!6240)

(assert (=> b!2746082 (= e!1730052 call!177418)))

(declare-fun b!2746083 () Bool)

(declare-fun lt!971703 () Option!6240)

(declare-fun e!1730054 () Bool)

(declare-fun get!9841 (Option!6240) tuple2!31464)

(declare-datatypes ((tuple2!31466 0))(
  ( (tuple2!31467 (_1!18419 Token!9120) (_2!18419 List!31732)) )
))
(declare-datatypes ((Option!6241 0))(
  ( (None!6240) (Some!6240 (v!33266 tuple2!31466)) )
))
(declare-fun get!9842 (Option!6241) tuple2!31466)

(declare-fun maxPrefix!2384 (LexerInterface!4439 List!31733 List!31732) Option!6241)

(assert (=> b!2746083 (= e!1730054 (= (list!11998 (_2!18417 (get!9841 lt!971703))) (_2!18419 (get!9842 (maxPrefix!2384 thiss!15207 rulesArg!249 (list!11998 input!1326))))))))

(declare-fun b!2746084 () Bool)

(declare-fun e!1730050 () Bool)

(assert (=> b!2746084 (= e!1730050 e!1730054)))

(declare-fun res!1152397 () Bool)

(assert (=> b!2746084 (=> (not res!1152397) (not e!1730054))))

(assert (=> b!2746084 (= res!1152397 (= (_1!18417 (get!9841 lt!971703)) (_1!18419 (get!9842 (maxPrefix!2384 thiss!15207 rulesArg!249 (list!11998 input!1326))))))))

(declare-fun d!796051 () Bool)

(declare-fun e!1730051 () Bool)

(assert (=> d!796051 e!1730051))

(declare-fun res!1152398 () Bool)

(assert (=> d!796051 (=> (not res!1152398) (not e!1730051))))

(declare-fun isDefined!4929 (Option!6240) Bool)

(declare-fun isDefined!4930 (Option!6241) Bool)

(declare-fun maxPrefixZipper!488 (LexerInterface!4439 List!31733 List!31732) Option!6241)

(assert (=> d!796051 (= res!1152398 (= (isDefined!4929 lt!971703) (isDefined!4930 (maxPrefixZipper!488 thiss!15207 rulesArg!249 (list!11998 input!1326)))))))

(assert (=> d!796051 (= lt!971703 e!1730052)))

(declare-fun c!444859 () Bool)

(assert (=> d!796051 (= c!444859 (and ((_ is Cons!31633) rulesArg!249) ((_ is Nil!31633) (t!227821 rulesArg!249))))))

(declare-fun lt!971702 () Unit!45533)

(declare-fun lt!971704 () Unit!45533)

(assert (=> d!796051 (= lt!971702 lt!971704)))

(declare-fun lt!971700 () List!31732)

(declare-fun lt!971699 () List!31732)

(assert (=> d!796051 (isPrefix!2519 lt!971700 lt!971699)))

(assert (=> d!796051 (= lt!971704 (lemmaIsPrefixRefl!1645 lt!971700 lt!971699))))

(assert (=> d!796051 (= lt!971699 (list!11998 input!1326))))

(assert (=> d!796051 (= lt!971700 (list!11998 input!1326))))

(assert (=> d!796051 (rulesValidInductive!1709 thiss!15207 rulesArg!249)))

(assert (=> d!796051 (= (maxPrefixZipperSequence!1063 thiss!15207 rulesArg!249 input!1326) lt!971703)))

(declare-fun e!1730053 () Bool)

(declare-fun b!2746085 () Bool)

(assert (=> b!2746085 (= e!1730053 (= (list!11998 (_2!18417 (get!9841 lt!971703))) (_2!18419 (get!9842 (maxPrefixZipper!488 thiss!15207 rulesArg!249 (list!11998 input!1326))))))))

(declare-fun b!2746086 () Bool)

(assert (=> b!2746086 (= e!1730051 e!1730050)))

(declare-fun res!1152396 () Bool)

(assert (=> b!2746086 (=> res!1152396 e!1730050)))

(assert (=> b!2746086 (= res!1152396 (not (isDefined!4929 lt!971703)))))

(declare-fun bm!177413 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!502 (LexerInterface!4439 Rule!9492 BalanceConc!19392) Option!6240)

(assert (=> bm!177413 (= call!177418 (maxPrefixOneRuleZipperSequence!502 thiss!15207 (h!37053 rulesArg!249) input!1326))))

(declare-fun b!2746087 () Bool)

(declare-fun e!1730055 () Bool)

(assert (=> b!2746087 (= e!1730055 e!1730053)))

(declare-fun res!1152395 () Bool)

(assert (=> b!2746087 (=> (not res!1152395) (not e!1730053))))

(assert (=> b!2746087 (= res!1152395 (= (_1!18417 (get!9841 lt!971703)) (_1!18419 (get!9842 (maxPrefixZipper!488 thiss!15207 rulesArg!249 (list!11998 input!1326))))))))

(declare-fun b!2746088 () Bool)

(declare-fun lt!971701 () Option!6240)

(declare-fun lt!971698 () Option!6240)

(assert (=> b!2746088 (= e!1730052 (ite (and ((_ is None!6239) lt!971701) ((_ is None!6239) lt!971698)) None!6239 (ite ((_ is None!6239) lt!971698) lt!971701 (ite ((_ is None!6239) lt!971701) lt!971698 (ite (>= (size!24426 (_1!18417 (v!33265 lt!971701))) (size!24426 (_1!18417 (v!33265 lt!971698)))) lt!971701 lt!971698)))))))

(assert (=> b!2746088 (= lt!971701 call!177418)))

(assert (=> b!2746088 (= lt!971698 (maxPrefixZipperSequence!1063 thiss!15207 (t!227821 rulesArg!249) input!1326))))

(declare-fun b!2746089 () Bool)

(declare-fun res!1152400 () Bool)

(assert (=> b!2746089 (=> (not res!1152400) (not e!1730051))))

(assert (=> b!2746089 (= res!1152400 e!1730055)))

(declare-fun res!1152399 () Bool)

(assert (=> b!2746089 (=> res!1152399 e!1730055)))

(assert (=> b!2746089 (= res!1152399 (not (isDefined!4929 lt!971703)))))

(assert (= (and d!796051 c!444859) b!2746082))

(assert (= (and d!796051 (not c!444859)) b!2746088))

(assert (= (or b!2746082 b!2746088) bm!177413))

(assert (= (and d!796051 res!1152398) b!2746089))

(assert (= (and b!2746089 (not res!1152399)) b!2746087))

(assert (= (and b!2746087 res!1152395) b!2746085))

(assert (= (and b!2746089 res!1152400) b!2746086))

(assert (= (and b!2746086 (not res!1152396)) b!2746084))

(assert (= (and b!2746084 res!1152397) b!2746083))

(declare-fun m!3162691 () Bool)

(assert (=> b!2746085 m!3162691))

(assert (=> b!2746085 m!3162657))

(declare-fun m!3162693 () Bool)

(assert (=> b!2746085 m!3162693))

(assert (=> b!2746085 m!3162693))

(declare-fun m!3162695 () Bool)

(assert (=> b!2746085 m!3162695))

(assert (=> b!2746085 m!3162657))

(declare-fun m!3162697 () Bool)

(assert (=> b!2746085 m!3162697))

(declare-fun m!3162699 () Bool)

(assert (=> b!2746086 m!3162699))

(assert (=> b!2746089 m!3162699))

(assert (=> b!2746084 m!3162691))

(assert (=> b!2746084 m!3162657))

(assert (=> b!2746084 m!3162657))

(declare-fun m!3162701 () Bool)

(assert (=> b!2746084 m!3162701))

(assert (=> b!2746084 m!3162701))

(declare-fun m!3162703 () Bool)

(assert (=> b!2746084 m!3162703))

(assert (=> d!796051 m!3162661))

(assert (=> d!796051 m!3162657))

(assert (=> d!796051 m!3162699))

(assert (=> d!796051 m!3162657))

(assert (=> d!796051 m!3162693))

(declare-fun m!3162705 () Bool)

(assert (=> d!796051 m!3162705))

(declare-fun m!3162707 () Bool)

(assert (=> d!796051 m!3162707))

(assert (=> d!796051 m!3162693))

(declare-fun m!3162709 () Bool)

(assert (=> d!796051 m!3162709))

(assert (=> b!2746083 m!3162701))

(assert (=> b!2746083 m!3162703))

(assert (=> b!2746083 m!3162691))

(assert (=> b!2746083 m!3162657))

(assert (=> b!2746083 m!3162701))

(assert (=> b!2746083 m!3162657))

(assert (=> b!2746083 m!3162697))

(assert (=> b!2746087 m!3162691))

(assert (=> b!2746087 m!3162657))

(assert (=> b!2746087 m!3162657))

(assert (=> b!2746087 m!3162693))

(assert (=> b!2746087 m!3162693))

(assert (=> b!2746087 m!3162695))

(declare-fun m!3162711 () Bool)

(assert (=> bm!177413 m!3162711))

(declare-fun m!3162713 () Bool)

(assert (=> b!2746088 m!3162713))

(assert (=> b!2746033 d!796051))

(declare-fun b!2746098 () Bool)

(declare-fun e!1730061 () Bool)

(declare-fun lt!971726 () tuple3!4430)

(assert (=> b!2746098 (= e!1730061 (valid!2806 (_3!2685 lt!971726)))))

(declare-fun d!796053 () Bool)

(assert (=> d!796053 e!1730061))

(declare-fun res!1152405 () Bool)

(assert (=> d!796053 (=> (not res!1152405) (not e!1730061))))

(assert (=> d!796053 (= res!1152405 (= (_1!18418 lt!971726) (maxPrefixZipperSequence!1063 thiss!15207 (t!227821 rulesArg!249) input!1326)))))

(declare-fun e!1730060 () tuple3!4430)

(assert (=> d!796053 (= lt!971726 e!1730060)))

(declare-fun c!444862 () Bool)

(assert (=> d!796053 (= c!444862 (and ((_ is Cons!31633) (t!227821 rulesArg!249)) ((_ is Nil!31633) (t!227821 (t!227821 rulesArg!249)))))))

(declare-fun lt!971728 () Unit!45533)

(declare-fun lt!971727 () Unit!45533)

(assert (=> d!796053 (= lt!971728 lt!971727)))

(declare-fun lt!971722 () List!31732)

(declare-fun lt!971721 () List!31732)

(assert (=> d!796053 (isPrefix!2519 lt!971722 lt!971721)))

(assert (=> d!796053 (= lt!971727 (lemmaIsPrefixRefl!1645 lt!971722 lt!971721))))

(assert (=> d!796053 (= lt!971721 (list!11998 input!1326))))

(assert (=> d!796053 (= lt!971722 (list!11998 input!1326))))

(assert (=> d!796053 (rulesValidInductive!1709 thiss!15207 (t!227821 rulesArg!249))))

(assert (=> d!796053 (= (maxPrefixZipperSequenceMem!28 thiss!15207 (t!227821 rulesArg!249) input!1326 (_2!18418 lt!971673) (_3!2685 lt!971673)) lt!971726)))

(declare-fun b!2746099 () Bool)

(declare-fun res!1152406 () Bool)

(assert (=> b!2746099 (=> (not res!1152406) (not e!1730061))))

(assert (=> b!2746099 (= res!1152406 (valid!2805 (_2!18418 lt!971726)))))

(declare-fun bm!177416 () Bool)

(declare-fun call!177421 () tuple3!4430)

(assert (=> bm!177416 (= call!177421 (maxPrefixOneRuleZipperSequenceMem!25 thiss!15207 (h!37053 (t!227821 rulesArg!249)) input!1326 (_2!18418 lt!971673) (_3!2685 lt!971673)))))

(declare-fun b!2746100 () Bool)

(declare-fun lt!971724 () tuple3!4430)

(declare-fun lt!971725 () tuple3!4430)

(assert (=> b!2746100 (= e!1730060 (tuple3!4431 (ite (and ((_ is None!6239) (_1!18418 lt!971724)) ((_ is None!6239) (_1!18418 lt!971725))) None!6239 (ite ((_ is None!6239) (_1!18418 lt!971725)) (_1!18418 lt!971724) (ite ((_ is None!6239) (_1!18418 lt!971724)) (_1!18418 lt!971725) (ite (>= (size!24426 (_1!18417 (v!33265 (_1!18418 lt!971724)))) (size!24426 (_1!18417 (v!33265 (_1!18418 lt!971725))))) (_1!18418 lt!971724) (_1!18418 lt!971725))))) (_2!18418 lt!971725) (_3!2685 lt!971725)))))

(assert (=> b!2746100 (= lt!971724 call!177421)))

(assert (=> b!2746100 (= lt!971725 (maxPrefixZipperSequenceMem!28 thiss!15207 (t!227821 (t!227821 rulesArg!249)) input!1326 (_2!18418 lt!971724) (_3!2685 lt!971724)))))

(declare-fun b!2746101 () Bool)

(declare-fun lt!971723 () tuple3!4430)

(assert (=> b!2746101 (= e!1730060 (tuple3!4431 (_1!18418 lt!971723) (_2!18418 lt!971723) (_3!2685 lt!971723)))))

(assert (=> b!2746101 (= lt!971723 call!177421)))

(assert (= (and d!796053 c!444862) b!2746101))

(assert (= (and d!796053 (not c!444862)) b!2746100))

(assert (= (or b!2746101 b!2746100) bm!177416))

(assert (= (and d!796053 res!1152405) b!2746099))

(assert (= (and b!2746099 res!1152406) b!2746098))

(declare-fun m!3162715 () Bool)

(assert (=> b!2746100 m!3162715))

(declare-fun m!3162717 () Bool)

(assert (=> d!796053 m!3162717))

(assert (=> d!796053 m!3162713))

(declare-fun m!3162719 () Bool)

(assert (=> d!796053 m!3162719))

(declare-fun m!3162721 () Bool)

(assert (=> d!796053 m!3162721))

(assert (=> d!796053 m!3162657))

(declare-fun m!3162723 () Bool)

(assert (=> b!2746098 m!3162723))

(declare-fun m!3162725 () Bool)

(assert (=> b!2746099 m!3162725))

(declare-fun m!3162727 () Bool)

(assert (=> bm!177416 m!3162727))

(assert (=> b!2746033 d!796053))

(declare-fun b!2746112 () Bool)

(declare-fun res!1152415 () Bool)

(declare-fun e!1730070 () Bool)

(assert (=> b!2746112 (=> (not res!1152415) (not e!1730070))))

(declare-fun lt!971741 () tuple3!4430)

(assert (=> b!2746112 (= res!1152415 (valid!2805 (_2!18418 lt!971741)))))

(declare-fun b!2746113 () Bool)

(declare-fun e!1730068 () Bool)

(declare-fun lt!971743 () List!31732)

(declare-fun matchR!3656 (Regex!8001 List!31732) Bool)

(declare-datatypes ((tuple2!31468 0))(
  ( (tuple2!31469 (_1!18420 List!31732) (_2!18420 List!31732)) )
))
(declare-fun findLongestMatchInner!803 (Regex!8001 List!31732 Int List!31732 List!31732 Int) tuple2!31468)

(assert (=> b!2746113 (= e!1730068 (matchR!3656 (regex!4846 (h!37053 rulesArg!249)) (_1!18420 (findLongestMatchInner!803 (regex!4846 (h!37053 rulesArg!249)) Nil!31632 (size!24427 Nil!31632) lt!971743 lt!971743 (size!24427 lt!971743)))))))

(declare-fun b!2746114 () Bool)

(assert (=> b!2746114 (= e!1730070 (valid!2806 (_3!2685 lt!971741)))))

(declare-fun b!2746115 () Bool)

(declare-fun e!1730069 () Option!6240)

(assert (=> b!2746115 (= e!1730069 None!6239)))

(declare-fun d!796055 () Bool)

(assert (=> d!796055 e!1730070))

(declare-fun res!1152413 () Bool)

(assert (=> d!796055 (=> (not res!1152413) (not e!1730070))))

(assert (=> d!796055 (= res!1152413 (= (_1!18418 lt!971741) (maxPrefixOneRuleZipperSequence!502 thiss!15207 (h!37053 rulesArg!249) input!1326)))))

(declare-datatypes ((tuple2!31470 0))(
  ( (tuple2!31471 (_1!18421 BalanceConc!19392) (_2!18421 BalanceConc!19392)) )
))
(declare-datatypes ((tuple3!4432 0))(
  ( (tuple3!4433 (_1!18422 tuple2!31470) (_2!18422 CacheUp!2228) (_3!2686 CacheDown!2346)) )
))
(declare-fun lt!971745 () tuple3!4432)

(assert (=> d!796055 (= lt!971741 (tuple3!4431 e!1730069 (_2!18422 lt!971745) (_3!2686 lt!971745)))))

(declare-fun c!444865 () Bool)

(declare-fun isEmpty!18043 (BalanceConc!19392) Bool)

(assert (=> d!796055 (= c!444865 (isEmpty!18043 (_1!18421 (_1!18422 lt!971745))))))

(declare-fun findLongestMatchWithZipperSequenceMem!10 (Regex!8001 BalanceConc!19392 CacheUp!2228 CacheDown!2346) tuple3!4432)

(assert (=> d!796055 (= lt!971745 (findLongestMatchWithZipperSequenceMem!10 (regex!4846 (h!37053 rulesArg!249)) input!1326 cacheUp!633 cacheDown!646))))

(declare-fun ruleValid!1589 (LexerInterface!4439 Rule!9492) Bool)

(assert (=> d!796055 (ruleValid!1589 thiss!15207 (h!37053 rulesArg!249))))

(assert (=> d!796055 (= (maxPrefixOneRuleZipperSequenceMem!25 thiss!15207 (h!37053 rulesArg!249) input!1326 cacheUp!633 cacheDown!646) lt!971741)))

(declare-fun b!2746116 () Bool)

(declare-fun apply!7428 (TokenValueInjection!9576 BalanceConc!19392) TokenValue!5068)

(declare-fun size!24428 (BalanceConc!19392) Int)

(assert (=> b!2746116 (= e!1730069 (Some!6239 (tuple2!31465 (Token!9121 (apply!7428 (transformation!4846 (h!37053 rulesArg!249)) (_1!18421 (_1!18422 lt!971745))) (h!37053 rulesArg!249) (size!24428 (_1!18421 (_1!18422 lt!971745))) (list!11998 (_1!18421 (_1!18422 lt!971745)))) (_2!18421 (_1!18422 lt!971745)))))))

(assert (=> b!2746116 (= lt!971743 (list!11998 input!1326))))

(declare-fun lt!971742 () Unit!45533)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!776 (Regex!8001 List!31732) Unit!45533)

(assert (=> b!2746116 (= lt!971742 (longestMatchIsAcceptedByMatchOrIsEmpty!776 (regex!4846 (h!37053 rulesArg!249)) lt!971743))))

(declare-fun res!1152414 () Bool)

(declare-fun isEmpty!18044 (List!31732) Bool)

(assert (=> b!2746116 (= res!1152414 (isEmpty!18044 (_1!18420 (findLongestMatchInner!803 (regex!4846 (h!37053 rulesArg!249)) Nil!31632 (size!24427 Nil!31632) lt!971743 lt!971743 (size!24427 lt!971743)))))))

(assert (=> b!2746116 (=> res!1152414 e!1730068)))

(assert (=> b!2746116 e!1730068))

(declare-fun lt!971744 () Unit!45533)

(assert (=> b!2746116 (= lt!971744 lt!971742)))

(declare-fun lt!971746 () Unit!45533)

(declare-fun lemmaSemiInverse!1143 (TokenValueInjection!9576 BalanceConc!19392) Unit!45533)

(assert (=> b!2746116 (= lt!971746 (lemmaSemiInverse!1143 (transformation!4846 (h!37053 rulesArg!249)) (_1!18421 (_1!18422 lt!971745))))))

(assert (= (and d!796055 c!444865) b!2746115))

(assert (= (and d!796055 (not c!444865)) b!2746116))

(assert (= (and b!2746116 (not res!1152414)) b!2746113))

(assert (= (and d!796055 res!1152413) b!2746112))

(assert (= (and b!2746112 res!1152415) b!2746114))

(declare-fun m!3162729 () Bool)

(assert (=> b!2746114 m!3162729))

(declare-fun m!3162731 () Bool)

(assert (=> b!2746116 m!3162731))

(declare-fun m!3162733 () Bool)

(assert (=> b!2746116 m!3162733))

(declare-fun m!3162735 () Bool)

(assert (=> b!2746116 m!3162735))

(declare-fun m!3162737 () Bool)

(assert (=> b!2746116 m!3162737))

(declare-fun m!3162739 () Bool)

(assert (=> b!2746116 m!3162739))

(declare-fun m!3162741 () Bool)

(assert (=> b!2746116 m!3162741))

(declare-fun m!3162743 () Bool)

(assert (=> b!2746116 m!3162743))

(assert (=> b!2746116 m!3162737))

(assert (=> b!2746116 m!3162739))

(declare-fun m!3162745 () Bool)

(assert (=> b!2746116 m!3162745))

(declare-fun m!3162747 () Bool)

(assert (=> b!2746116 m!3162747))

(assert (=> b!2746116 m!3162657))

(assert (=> d!796055 m!3162711))

(declare-fun m!3162749 () Bool)

(assert (=> d!796055 m!3162749))

(declare-fun m!3162751 () Bool)

(assert (=> d!796055 m!3162751))

(declare-fun m!3162753 () Bool)

(assert (=> d!796055 m!3162753))

(declare-fun m!3162755 () Bool)

(assert (=> b!2746112 m!3162755))

(assert (=> b!2746113 m!3162737))

(assert (=> b!2746113 m!3162739))

(assert (=> b!2746113 m!3162737))

(assert (=> b!2746113 m!3162739))

(assert (=> b!2746113 m!3162745))

(declare-fun m!3162757 () Bool)

(assert (=> b!2746113 m!3162757))

(assert (=> b!2746033 d!796055))

(declare-fun d!796057 () Bool)

(assert (=> d!796057 true))

(declare-fun lt!971749 () Bool)

(declare-fun lambda!100861 () Int)

(declare-fun forall!6581 (List!31733 Int) Bool)

(assert (=> d!796057 (= lt!971749 (forall!6581 rulesArg!249 lambda!100861))))

(declare-fun e!1730076 () Bool)

(assert (=> d!796057 (= lt!971749 e!1730076)))

(declare-fun res!1152420 () Bool)

(assert (=> d!796057 (=> res!1152420 e!1730076)))

(assert (=> d!796057 (= res!1152420 (not ((_ is Cons!31633) rulesArg!249)))))

(assert (=> d!796057 (= (rulesValidInductive!1709 thiss!15207 rulesArg!249) lt!971749)))

(declare-fun b!2746121 () Bool)

(declare-fun e!1730075 () Bool)

(assert (=> b!2746121 (= e!1730076 e!1730075)))

(declare-fun res!1152421 () Bool)

(assert (=> b!2746121 (=> (not res!1152421) (not e!1730075))))

(assert (=> b!2746121 (= res!1152421 (ruleValid!1589 thiss!15207 (h!37053 rulesArg!249)))))

(declare-fun b!2746122 () Bool)

(assert (=> b!2746122 (= e!1730075 (rulesValidInductive!1709 thiss!15207 (t!227821 rulesArg!249)))))

(assert (= (and d!796057 (not res!1152420)) b!2746121))

(assert (= (and b!2746121 res!1152421) b!2746122))

(declare-fun m!3162759 () Bool)

(assert (=> d!796057 m!3162759))

(assert (=> b!2746121 m!3162753))

(assert (=> b!2746122 m!3162719))

(assert (=> b!2746024 d!796057))

(declare-fun d!796059 () Bool)

(assert (=> d!796059 (= (inv!42980 (tag!5350 (h!37053 rulesArg!249))) (= (mod (str.len (value!155710 (tag!5350 (h!37053 rulesArg!249)))) 2) 0))))

(assert (=> b!2746043 d!796059))

(declare-fun d!796061 () Bool)

(declare-fun res!1152424 () Bool)

(declare-fun e!1730079 () Bool)

(assert (=> d!796061 (=> (not res!1152424) (not e!1730079))))

(declare-fun semiInverseModEq!2001 (Int Int) Bool)

(assert (=> d!796061 (= res!1152424 (semiInverseModEq!2001 (toChars!6703 (transformation!4846 (h!37053 rulesArg!249))) (toValue!6844 (transformation!4846 (h!37053 rulesArg!249)))))))

(assert (=> d!796061 (= (inv!42988 (transformation!4846 (h!37053 rulesArg!249))) e!1730079)))

(declare-fun b!2746127 () Bool)

(declare-fun equivClasses!1902 (Int Int) Bool)

(assert (=> b!2746127 (= e!1730079 (equivClasses!1902 (toChars!6703 (transformation!4846 (h!37053 rulesArg!249))) (toValue!6844 (transformation!4846 (h!37053 rulesArg!249)))))))

(assert (= (and d!796061 res!1152424) b!2746127))

(declare-fun m!3162761 () Bool)

(assert (=> d!796061 m!3162761))

(declare-fun m!3162763 () Bool)

(assert (=> b!2746127 m!3162763))

(assert (=> b!2746043 d!796061))

(declare-fun d!796063 () Bool)

(declare-fun c!444868 () Bool)

(assert (=> d!796063 (= c!444868 ((_ is Node!9889) (c!444854 input!1326)))))

(declare-fun e!1730084 () Bool)

(assert (=> d!796063 (= (inv!42984 (c!444854 input!1326)) e!1730084)))

(declare-fun b!2746134 () Bool)

(declare-fun inv!42989 (Conc!9889) Bool)

(assert (=> b!2746134 (= e!1730084 (inv!42989 (c!444854 input!1326)))))

(declare-fun b!2746135 () Bool)

(declare-fun e!1730085 () Bool)

(assert (=> b!2746135 (= e!1730084 e!1730085)))

(declare-fun res!1152427 () Bool)

(assert (=> b!2746135 (= res!1152427 (not ((_ is Leaf!15058) (c!444854 input!1326))))))

(assert (=> b!2746135 (=> res!1152427 e!1730085)))

(declare-fun b!2746136 () Bool)

(declare-fun inv!42990 (Conc!9889) Bool)

(assert (=> b!2746136 (= e!1730085 (inv!42990 (c!444854 input!1326)))))

(assert (= (and d!796063 c!444868) b!2746134))

(assert (= (and d!796063 (not c!444868)) b!2746135))

(assert (= (and b!2746135 (not res!1152427)) b!2746136))

(declare-fun m!3162765 () Bool)

(assert (=> b!2746134 m!3162765))

(declare-fun m!3162767 () Bool)

(assert (=> b!2746136 m!3162767))

(assert (=> b!2746034 d!796063))

(declare-fun d!796065 () Bool)

(assert (=> d!796065 (= (array_inv!4109 (_keys!3915 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646))))))) (bvsge (size!24424 (_keys!3915 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746025 d!796065))

(declare-fun d!796067 () Bool)

(assert (=> d!796067 (= (array_inv!4110 (_values!3896 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646))))))) (bvsge (size!24423 (_values!3896 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746025 d!796067))

(declare-fun d!796069 () Bool)

(assert (=> d!796069 (= (isEmpty!18042 rulesArg!249) ((_ is Nil!31633) rulesArg!249))))

(assert (=> b!2746044 d!796069))

(declare-fun e!1730092 () Bool)

(assert (=> b!2746046 (= tp!864938 e!1730092)))

(declare-fun setIsEmpty!21669 () Bool)

(declare-fun setRes!21669 () Bool)

(assert (=> setIsEmpty!21669 setRes!21669))

(declare-fun e!1730093 () Bool)

(declare-fun setNonEmpty!21669 () Bool)

(declare-fun tp!864953 () Bool)

(declare-fun setElem!21669 () Context!4438)

(declare-fun inv!42991 (Context!4438) Bool)

(assert (=> setNonEmpty!21669 (= setRes!21669 (and tp!864953 (inv!42991 setElem!21669) e!1730093))))

(declare-fun setRest!21669 () (InoxSet Context!4438))

(assert (=> setNonEmpty!21669 (= (_2!18416 (h!37056 mapDefault!16488)) ((_ map or) (store ((as const (Array Context!4438 Bool)) false) setElem!21669 true) setRest!21669))))

(declare-fun b!2746145 () Bool)

(declare-fun e!1730094 () Bool)

(declare-fun tp!864955 () Bool)

(assert (=> b!2746145 (= e!1730094 tp!864955)))

(declare-fun tp!864956 () Bool)

(declare-fun tp_is_empty!13933 () Bool)

(declare-fun b!2746146 () Bool)

(assert (=> b!2746146 (= e!1730092 (and (inv!42991 (_1!18415 (_1!18416 (h!37056 mapDefault!16488)))) e!1730094 tp_is_empty!13933 setRes!21669 tp!864956))))

(declare-fun condSetEmpty!21669 () Bool)

(assert (=> b!2746146 (= condSetEmpty!21669 (= (_2!18416 (h!37056 mapDefault!16488)) ((as const (Array Context!4438 Bool)) false)))))

(declare-fun b!2746147 () Bool)

(declare-fun tp!864954 () Bool)

(assert (=> b!2746147 (= e!1730093 tp!864954)))

(assert (= b!2746146 b!2746145))

(assert (= (and b!2746146 condSetEmpty!21669) setIsEmpty!21669))

(assert (= (and b!2746146 (not condSetEmpty!21669)) setNonEmpty!21669))

(assert (= setNonEmpty!21669 b!2746147))

(assert (= (and b!2746046 ((_ is Cons!31636) mapDefault!16488)) b!2746146))

(declare-fun m!3162769 () Bool)

(assert (=> setNonEmpty!21669 m!3162769))

(declare-fun m!3162771 () Bool)

(assert (=> b!2746146 m!3162771))

(declare-fun e!1730095 () Bool)

(assert (=> b!2746032 (= tp!864941 e!1730095)))

(declare-fun setIsEmpty!21670 () Bool)

(declare-fun setRes!21670 () Bool)

(assert (=> setIsEmpty!21670 setRes!21670))

(declare-fun setNonEmpty!21670 () Bool)

(declare-fun e!1730096 () Bool)

(declare-fun setElem!21670 () Context!4438)

(declare-fun tp!864957 () Bool)

(assert (=> setNonEmpty!21670 (= setRes!21670 (and tp!864957 (inv!42991 setElem!21670) e!1730096))))

(declare-fun setRest!21670 () (InoxSet Context!4438))

(assert (=> setNonEmpty!21670 (= (_2!18416 (h!37056 (zeroValue!3875 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4438 Bool)) false) setElem!21670 true) setRest!21670))))

(declare-fun b!2746148 () Bool)

(declare-fun e!1730097 () Bool)

(declare-fun tp!864959 () Bool)

(assert (=> b!2746148 (= e!1730097 tp!864959)))

(declare-fun tp!864960 () Bool)

(declare-fun b!2746149 () Bool)

(assert (=> b!2746149 (= e!1730095 (and (inv!42991 (_1!18415 (_1!18416 (h!37056 (zeroValue!3875 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633)))))))))) e!1730097 tp_is_empty!13933 setRes!21670 tp!864960))))

(declare-fun condSetEmpty!21670 () Bool)

(assert (=> b!2746149 (= condSetEmpty!21670 (= (_2!18416 (h!37056 (zeroValue!3875 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633)))))))) ((as const (Array Context!4438 Bool)) false)))))

(declare-fun b!2746150 () Bool)

(declare-fun tp!864958 () Bool)

(assert (=> b!2746150 (= e!1730096 tp!864958)))

(assert (= b!2746149 b!2746148))

(assert (= (and b!2746149 condSetEmpty!21670) setIsEmpty!21670))

(assert (= (and b!2746149 (not condSetEmpty!21670)) setNonEmpty!21670))

(assert (= setNonEmpty!21670 b!2746150))

(assert (= (and b!2746032 ((_ is Cons!31636) (zeroValue!3875 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633)))))))) b!2746149))

(declare-fun m!3162773 () Bool)

(assert (=> setNonEmpty!21670 m!3162773))

(declare-fun m!3162775 () Bool)

(assert (=> b!2746149 m!3162775))

(declare-fun e!1730098 () Bool)

(assert (=> b!2746032 (= tp!864927 e!1730098)))

(declare-fun setIsEmpty!21671 () Bool)

(declare-fun setRes!21671 () Bool)

(assert (=> setIsEmpty!21671 setRes!21671))

(declare-fun setNonEmpty!21671 () Bool)

(declare-fun e!1730099 () Bool)

(declare-fun tp!864961 () Bool)

(declare-fun setElem!21671 () Context!4438)

(assert (=> setNonEmpty!21671 (= setRes!21671 (and tp!864961 (inv!42991 setElem!21671) e!1730099))))

(declare-fun setRest!21671 () (InoxSet Context!4438))

(assert (=> setNonEmpty!21671 (= (_2!18416 (h!37056 (minValue!3875 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4438 Bool)) false) setElem!21671 true) setRest!21671))))

(declare-fun b!2746151 () Bool)

(declare-fun e!1730100 () Bool)

(declare-fun tp!864963 () Bool)

(assert (=> b!2746151 (= e!1730100 tp!864963)))

(declare-fun b!2746152 () Bool)

(declare-fun tp!864964 () Bool)

(assert (=> b!2746152 (= e!1730098 (and (inv!42991 (_1!18415 (_1!18416 (h!37056 (minValue!3875 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633)))))))))) e!1730100 tp_is_empty!13933 setRes!21671 tp!864964))))

(declare-fun condSetEmpty!21671 () Bool)

(assert (=> b!2746152 (= condSetEmpty!21671 (= (_2!18416 (h!37056 (minValue!3875 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633)))))))) ((as const (Array Context!4438 Bool)) false)))))

(declare-fun b!2746153 () Bool)

(declare-fun tp!864962 () Bool)

(assert (=> b!2746153 (= e!1730099 tp!864962)))

(assert (= b!2746152 b!2746151))

(assert (= (and b!2746152 condSetEmpty!21671) setIsEmpty!21671))

(assert (= (and b!2746152 (not condSetEmpty!21671)) setNonEmpty!21671))

(assert (= setNonEmpty!21671 b!2746153))

(assert (= (and b!2746032 ((_ is Cons!31636) (minValue!3875 (v!33263 (underlying!7435 (v!33264 (underlying!7436 (cache!3665 cacheUp!633)))))))) b!2746152))

(declare-fun m!3162777 () Bool)

(assert (=> setNonEmpty!21671 m!3162777))

(declare-fun m!3162779 () Bool)

(assert (=> b!2746152 m!3162779))

(declare-fun b!2746164 () Bool)

(declare-fun b_free!77361 () Bool)

(declare-fun b_next!78065 () Bool)

(assert (=> b!2746164 (= b_free!77361 (not b_next!78065))))

(declare-fun tp!864973 () Bool)

(declare-fun b_and!202081 () Bool)

(assert (=> b!2746164 (= tp!864973 b_and!202081)))

(declare-fun b_free!77363 () Bool)

(declare-fun b_next!78067 () Bool)

(assert (=> b!2746164 (= b_free!77363 (not b_next!78067))))

(declare-fun tp!864975 () Bool)

(declare-fun b_and!202083 () Bool)

(assert (=> b!2746164 (= tp!864975 b_and!202083)))

(declare-fun e!1730110 () Bool)

(assert (=> b!2746164 (= e!1730110 (and tp!864973 tp!864975))))

(declare-fun tp!864976 () Bool)

(declare-fun e!1730111 () Bool)

(declare-fun b!2746163 () Bool)

(assert (=> b!2746163 (= e!1730111 (and tp!864976 (inv!42980 (tag!5350 (h!37053 (t!227821 rulesArg!249)))) (inv!42988 (transformation!4846 (h!37053 (t!227821 rulesArg!249)))) e!1730110))))

(declare-fun b!2746162 () Bool)

(declare-fun e!1730109 () Bool)

(declare-fun tp!864974 () Bool)

(assert (=> b!2746162 (= e!1730109 (and e!1730111 tp!864974))))

(assert (=> b!2746026 (= tp!864932 e!1730109)))

(assert (= b!2746163 b!2746164))

(assert (= b!2746162 b!2746163))

(assert (= (and b!2746026 ((_ is Cons!31633) (t!227821 rulesArg!249))) b!2746162))

(declare-fun m!3162781 () Bool)

(assert (=> b!2746163 m!3162781))

(declare-fun m!3162783 () Bool)

(assert (=> b!2746163 m!3162783))

(declare-fun b!2746176 () Bool)

(declare-fun e!1730115 () Bool)

(declare-fun tp!864989 () Bool)

(declare-fun tp!864988 () Bool)

(assert (=> b!2746176 (= e!1730115 (and tp!864989 tp!864988))))

(declare-fun b!2746175 () Bool)

(assert (=> b!2746175 (= e!1730115 tp_is_empty!13933)))

(declare-fun b!2746177 () Bool)

(declare-fun tp!864991 () Bool)

(assert (=> b!2746177 (= e!1730115 tp!864991)))

(assert (=> b!2746043 (= tp!864937 e!1730115)))

(declare-fun b!2746178 () Bool)

(declare-fun tp!864987 () Bool)

(declare-fun tp!864990 () Bool)

(assert (=> b!2746178 (= e!1730115 (and tp!864987 tp!864990))))

(assert (= (and b!2746043 ((_ is ElementMatch!8001) (regex!4846 (h!37053 rulesArg!249)))) b!2746175))

(assert (= (and b!2746043 ((_ is Concat!13070) (regex!4846 (h!37053 rulesArg!249)))) b!2746176))

(assert (= (and b!2746043 ((_ is Star!8001) (regex!4846 (h!37053 rulesArg!249)))) b!2746177))

(assert (= (and b!2746043 ((_ is Union!8001) (regex!4846 (h!37053 rulesArg!249)))) b!2746178))

(declare-fun b!2746193 () Bool)

(declare-fun e!1730130 () Bool)

(declare-fun tp!865014 () Bool)

(assert (=> b!2746193 (= e!1730130 tp!865014)))

(declare-fun tp!865015 () Bool)

(declare-fun setRes!21677 () Bool)

(declare-fun setElem!21676 () Context!4438)

(declare-fun setNonEmpty!21676 () Bool)

(assert (=> setNonEmpty!21676 (= setRes!21677 (and tp!865015 (inv!42991 setElem!21676) e!1730130))))

(declare-fun mapValue!16491 () List!31735)

(declare-fun setRest!21676 () (InoxSet Context!4438))

(assert (=> setNonEmpty!21676 (= (_2!18414 (h!37055 mapValue!16491)) ((_ map or) (store ((as const (Array Context!4438 Bool)) false) setElem!21676 true) setRest!21676))))

(declare-fun mapNonEmpty!16491 () Bool)

(declare-fun mapRes!16491 () Bool)

(declare-fun tp!865018 () Bool)

(declare-fun e!1730133 () Bool)

(assert (=> mapNonEmpty!16491 (= mapRes!16491 (and tp!865018 e!1730133))))

(declare-fun mapKey!16491 () (_ BitVec 32))

(declare-fun mapRest!16491 () (Array (_ BitVec 32) List!31735))

(assert (=> mapNonEmpty!16491 (= mapRest!16487 (store mapRest!16491 mapKey!16491 mapValue!16491))))

(declare-fun b!2746194 () Bool)

(declare-fun e!1730131 () Bool)

(declare-fun tp!865021 () Bool)

(assert (=> b!2746194 (= e!1730131 tp!865021)))

(declare-fun b!2746195 () Bool)

(declare-fun e!1730128 () Bool)

(declare-fun tp!865020 () Bool)

(assert (=> b!2746195 (= e!1730128 tp!865020)))

(declare-fun mapIsEmpty!16491 () Bool)

(assert (=> mapIsEmpty!16491 mapRes!16491))

(declare-fun e!1730129 () Bool)

(declare-fun tp!865019 () Bool)

(declare-fun tp!865016 () Bool)

(declare-fun b!2746196 () Bool)

(declare-fun mapDefault!16491 () List!31735)

(declare-fun setRes!21676 () Bool)

(assert (=> b!2746196 (= e!1730129 (and tp!865019 (inv!42991 (_2!18413 (_1!18414 (h!37055 mapDefault!16491)))) e!1730131 tp_is_empty!13933 setRes!21676 tp!865016))))

(declare-fun condSetEmpty!21677 () Bool)

(assert (=> b!2746196 (= condSetEmpty!21677 (= (_2!18414 (h!37055 mapDefault!16491)) ((as const (Array Context!4438 Bool)) false)))))

(declare-fun tp!865022 () Bool)

(declare-fun e!1730132 () Bool)

(declare-fun setNonEmpty!21677 () Bool)

(declare-fun setElem!21677 () Context!4438)

(assert (=> setNonEmpty!21677 (= setRes!21676 (and tp!865022 (inv!42991 setElem!21677) e!1730132))))

(declare-fun setRest!21677 () (InoxSet Context!4438))

(assert (=> setNonEmpty!21677 (= (_2!18414 (h!37055 mapDefault!16491)) ((_ map or) (store ((as const (Array Context!4438 Bool)) false) setElem!21677 true) setRest!21677))))

(declare-fun condMapEmpty!16491 () Bool)

(assert (=> mapNonEmpty!16487 (= condMapEmpty!16491 (= mapRest!16487 ((as const (Array (_ BitVec 32) List!31735)) mapDefault!16491)))))

(assert (=> mapNonEmpty!16487 (= tp!864930 (and e!1730129 mapRes!16491))))

(declare-fun tp!865023 () Bool)

(declare-fun tp!865024 () Bool)

(declare-fun b!2746197 () Bool)

(assert (=> b!2746197 (= e!1730133 (and tp!865023 (inv!42991 (_2!18413 (_1!18414 (h!37055 mapValue!16491)))) e!1730128 tp_is_empty!13933 setRes!21677 tp!865024))))

(declare-fun condSetEmpty!21676 () Bool)

(assert (=> b!2746197 (= condSetEmpty!21676 (= (_2!18414 (h!37055 mapValue!16491)) ((as const (Array Context!4438 Bool)) false)))))

(declare-fun b!2746198 () Bool)

(declare-fun tp!865017 () Bool)

(assert (=> b!2746198 (= e!1730132 tp!865017)))

(declare-fun setIsEmpty!21676 () Bool)

(assert (=> setIsEmpty!21676 setRes!21677))

(declare-fun setIsEmpty!21677 () Bool)

(assert (=> setIsEmpty!21677 setRes!21676))

(assert (= (and mapNonEmpty!16487 condMapEmpty!16491) mapIsEmpty!16491))

(assert (= (and mapNonEmpty!16487 (not condMapEmpty!16491)) mapNonEmpty!16491))

(assert (= b!2746197 b!2746195))

(assert (= (and b!2746197 condSetEmpty!21676) setIsEmpty!21676))

(assert (= (and b!2746197 (not condSetEmpty!21676)) setNonEmpty!21676))

(assert (= setNonEmpty!21676 b!2746193))

(assert (= (and mapNonEmpty!16491 ((_ is Cons!31635) mapValue!16491)) b!2746197))

(assert (= b!2746196 b!2746194))

(assert (= (and b!2746196 condSetEmpty!21677) setIsEmpty!21677))

(assert (= (and b!2746196 (not condSetEmpty!21677)) setNonEmpty!21677))

(assert (= setNonEmpty!21677 b!2746198))

(assert (= (and mapNonEmpty!16487 ((_ is Cons!31635) mapDefault!16491)) b!2746196))

(declare-fun m!3162785 () Bool)

(assert (=> setNonEmpty!21676 m!3162785))

(declare-fun m!3162787 () Bool)

(assert (=> mapNonEmpty!16491 m!3162787))

(declare-fun m!3162789 () Bool)

(assert (=> b!2746196 m!3162789))

(declare-fun m!3162791 () Bool)

(assert (=> b!2746197 m!3162791))

(declare-fun m!3162793 () Bool)

(assert (=> setNonEmpty!21677 m!3162793))

(declare-fun setIsEmpty!21680 () Bool)

(declare-fun setRes!21680 () Bool)

(assert (=> setIsEmpty!21680 setRes!21680))

(declare-fun e!1730140 () Bool)

(assert (=> mapNonEmpty!16487 (= tp!864939 e!1730140)))

(declare-fun b!2746207 () Bool)

(declare-fun e!1730141 () Bool)

(declare-fun tp!865035 () Bool)

(assert (=> b!2746207 (= e!1730141 tp!865035)))

(declare-fun tp!865038 () Bool)

(declare-fun e!1730142 () Bool)

(declare-fun b!2746208 () Bool)

(declare-fun tp!865037 () Bool)

(assert (=> b!2746208 (= e!1730140 (and tp!865037 (inv!42991 (_2!18413 (_1!18414 (h!37055 mapValue!16487)))) e!1730142 tp_is_empty!13933 setRes!21680 tp!865038))))

(declare-fun condSetEmpty!21680 () Bool)

(assert (=> b!2746208 (= condSetEmpty!21680 (= (_2!18414 (h!37055 mapValue!16487)) ((as const (Array Context!4438 Bool)) false)))))

(declare-fun setElem!21680 () Context!4438)

(declare-fun tp!865036 () Bool)

(declare-fun setNonEmpty!21680 () Bool)

(assert (=> setNonEmpty!21680 (= setRes!21680 (and tp!865036 (inv!42991 setElem!21680) e!1730141))))

(declare-fun setRest!21680 () (InoxSet Context!4438))

(assert (=> setNonEmpty!21680 (= (_2!18414 (h!37055 mapValue!16487)) ((_ map or) (store ((as const (Array Context!4438 Bool)) false) setElem!21680 true) setRest!21680))))

(declare-fun b!2746209 () Bool)

(declare-fun tp!865039 () Bool)

(assert (=> b!2746209 (= e!1730142 tp!865039)))

(assert (= b!2746208 b!2746209))

(assert (= (and b!2746208 condSetEmpty!21680) setIsEmpty!21680))

(assert (= (and b!2746208 (not condSetEmpty!21680)) setNonEmpty!21680))

(assert (= setNonEmpty!21680 b!2746207))

(assert (= (and mapNonEmpty!16487 ((_ is Cons!31635) mapValue!16487)) b!2746208))

(declare-fun m!3162795 () Bool)

(assert (=> b!2746208 m!3162795))

(declare-fun m!3162797 () Bool)

(assert (=> setNonEmpty!21680 m!3162797))

(declare-fun b!2746218 () Bool)

(declare-fun tp!865048 () Bool)

(declare-fun e!1730147 () Bool)

(declare-fun tp!865047 () Bool)

(assert (=> b!2746218 (= e!1730147 (and (inv!42984 (left!24241 (c!444854 input!1326))) tp!865048 (inv!42984 (right!24571 (c!444854 input!1326))) tp!865047))))

(declare-fun b!2746220 () Bool)

(declare-fun e!1730148 () Bool)

(declare-fun tp!865046 () Bool)

(assert (=> b!2746220 (= e!1730148 tp!865046)))

(declare-fun b!2746219 () Bool)

(declare-fun inv!42992 (IArray!19783) Bool)

(assert (=> b!2746219 (= e!1730147 (and (inv!42992 (xs!12996 (c!444854 input!1326))) e!1730148))))

(assert (=> b!2746034 (= tp!864944 (and (inv!42984 (c!444854 input!1326)) e!1730147))))

(assert (= (and b!2746034 ((_ is Node!9889) (c!444854 input!1326))) b!2746218))

(assert (= b!2746219 b!2746220))

(assert (= (and b!2746034 ((_ is Leaf!15058) (c!444854 input!1326))) b!2746219))

(declare-fun m!3162799 () Bool)

(assert (=> b!2746218 m!3162799))

(declare-fun m!3162801 () Bool)

(assert (=> b!2746218 m!3162801))

(declare-fun m!3162803 () Bool)

(assert (=> b!2746219 m!3162803))

(assert (=> b!2746034 m!3162659))

(declare-fun setIsEmpty!21681 () Bool)

(declare-fun setRes!21681 () Bool)

(assert (=> setIsEmpty!21681 setRes!21681))

(declare-fun e!1730149 () Bool)

(assert (=> b!2746025 (= tp!864942 e!1730149)))

(declare-fun b!2746221 () Bool)

(declare-fun e!1730150 () Bool)

(declare-fun tp!865049 () Bool)

(assert (=> b!2746221 (= e!1730150 tp!865049)))

(declare-fun tp!865051 () Bool)

(declare-fun e!1730151 () Bool)

(declare-fun tp!865052 () Bool)

(declare-fun b!2746222 () Bool)

(assert (=> b!2746222 (= e!1730149 (and tp!865051 (inv!42991 (_2!18413 (_1!18414 (h!37055 (zeroValue!3874 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646)))))))))) e!1730151 tp_is_empty!13933 setRes!21681 tp!865052))))

(declare-fun condSetEmpty!21681 () Bool)

(assert (=> b!2746222 (= condSetEmpty!21681 (= (_2!18414 (h!37055 (zeroValue!3874 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646)))))))) ((as const (Array Context!4438 Bool)) false)))))

(declare-fun tp!865050 () Bool)

(declare-fun setNonEmpty!21681 () Bool)

(declare-fun setElem!21681 () Context!4438)

(assert (=> setNonEmpty!21681 (= setRes!21681 (and tp!865050 (inv!42991 setElem!21681) e!1730150))))

(declare-fun setRest!21681 () (InoxSet Context!4438))

(assert (=> setNonEmpty!21681 (= (_2!18414 (h!37055 (zeroValue!3874 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4438 Bool)) false) setElem!21681 true) setRest!21681))))

(declare-fun b!2746223 () Bool)

(declare-fun tp!865053 () Bool)

(assert (=> b!2746223 (= e!1730151 tp!865053)))

(assert (= b!2746222 b!2746223))

(assert (= (and b!2746222 condSetEmpty!21681) setIsEmpty!21681))

(assert (= (and b!2746222 (not condSetEmpty!21681)) setNonEmpty!21681))

(assert (= setNonEmpty!21681 b!2746221))

(assert (= (and b!2746025 ((_ is Cons!31635) (zeroValue!3874 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646)))))))) b!2746222))

(declare-fun m!3162805 () Bool)

(assert (=> b!2746222 m!3162805))

(declare-fun m!3162807 () Bool)

(assert (=> setNonEmpty!21681 m!3162807))

(declare-fun setIsEmpty!21682 () Bool)

(declare-fun setRes!21682 () Bool)

(assert (=> setIsEmpty!21682 setRes!21682))

(declare-fun e!1730152 () Bool)

(assert (=> b!2746025 (= tp!864943 e!1730152)))

(declare-fun b!2746224 () Bool)

(declare-fun e!1730153 () Bool)

(declare-fun tp!865054 () Bool)

(assert (=> b!2746224 (= e!1730153 tp!865054)))

(declare-fun tp!865056 () Bool)

(declare-fun e!1730154 () Bool)

(declare-fun b!2746225 () Bool)

(declare-fun tp!865057 () Bool)

(assert (=> b!2746225 (= e!1730152 (and tp!865056 (inv!42991 (_2!18413 (_1!18414 (h!37055 (minValue!3874 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646)))))))))) e!1730154 tp_is_empty!13933 setRes!21682 tp!865057))))

(declare-fun condSetEmpty!21682 () Bool)

(assert (=> b!2746225 (= condSetEmpty!21682 (= (_2!18414 (h!37055 (minValue!3874 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646)))))))) ((as const (Array Context!4438 Bool)) false)))))

(declare-fun tp!865055 () Bool)

(declare-fun setElem!21682 () Context!4438)

(declare-fun setNonEmpty!21682 () Bool)

(assert (=> setNonEmpty!21682 (= setRes!21682 (and tp!865055 (inv!42991 setElem!21682) e!1730153))))

(declare-fun setRest!21682 () (InoxSet Context!4438))

(assert (=> setNonEmpty!21682 (= (_2!18414 (h!37055 (minValue!3874 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4438 Bool)) false) setElem!21682 true) setRest!21682))))

(declare-fun b!2746226 () Bool)

(declare-fun tp!865058 () Bool)

(assert (=> b!2746226 (= e!1730154 tp!865058)))

(assert (= b!2746225 b!2746226))

(assert (= (and b!2746225 condSetEmpty!21682) setIsEmpty!21682))

(assert (= (and b!2746225 (not condSetEmpty!21682)) setNonEmpty!21682))

(assert (= setNonEmpty!21682 b!2746224))

(assert (= (and b!2746025 ((_ is Cons!31635) (minValue!3874 (v!33261 (underlying!7433 (v!33262 (underlying!7434 (cache!3664 cacheDown!646)))))))) b!2746225))

(declare-fun m!3162809 () Bool)

(assert (=> b!2746225 m!3162809))

(declare-fun m!3162811 () Bool)

(assert (=> setNonEmpty!21682 m!3162811))

(declare-fun setIsEmpty!21683 () Bool)

(declare-fun setRes!21683 () Bool)

(assert (=> setIsEmpty!21683 setRes!21683))

(declare-fun e!1730155 () Bool)

(assert (=> b!2746035 (= tp!864929 e!1730155)))

(declare-fun b!2746227 () Bool)

(declare-fun e!1730156 () Bool)

(declare-fun tp!865059 () Bool)

(assert (=> b!2746227 (= e!1730156 tp!865059)))

(declare-fun tp!865062 () Bool)

(declare-fun b!2746228 () Bool)

(declare-fun tp!865061 () Bool)

(declare-fun e!1730157 () Bool)

(assert (=> b!2746228 (= e!1730155 (and tp!865061 (inv!42991 (_2!18413 (_1!18414 (h!37055 mapDefault!16487)))) e!1730157 tp_is_empty!13933 setRes!21683 tp!865062))))

(declare-fun condSetEmpty!21683 () Bool)

(assert (=> b!2746228 (= condSetEmpty!21683 (= (_2!18414 (h!37055 mapDefault!16487)) ((as const (Array Context!4438 Bool)) false)))))

(declare-fun tp!865060 () Bool)

(declare-fun setNonEmpty!21683 () Bool)

(declare-fun setElem!21683 () Context!4438)

(assert (=> setNonEmpty!21683 (= setRes!21683 (and tp!865060 (inv!42991 setElem!21683) e!1730156))))

(declare-fun setRest!21683 () (InoxSet Context!4438))

(assert (=> setNonEmpty!21683 (= (_2!18414 (h!37055 mapDefault!16487)) ((_ map or) (store ((as const (Array Context!4438 Bool)) false) setElem!21683 true) setRest!21683))))

(declare-fun b!2746229 () Bool)

(declare-fun tp!865063 () Bool)

(assert (=> b!2746229 (= e!1730157 tp!865063)))

(assert (= b!2746228 b!2746229))

(assert (= (and b!2746228 condSetEmpty!21683) setIsEmpty!21683))

(assert (= (and b!2746228 (not condSetEmpty!21683)) setNonEmpty!21683))

(assert (= setNonEmpty!21683 b!2746227))

(assert (= (and b!2746035 ((_ is Cons!31635) mapDefault!16487)) b!2746228))

(declare-fun m!3162813 () Bool)

(assert (=> b!2746228 m!3162813))

(declare-fun m!3162815 () Bool)

(assert (=> setNonEmpty!21683 m!3162815))

(declare-fun e!1730173 () Bool)

(declare-fun tp!865083 () Bool)

(declare-fun setNonEmpty!21688 () Bool)

(declare-fun setRes!21688 () Bool)

(declare-fun setElem!21689 () Context!4438)

(assert (=> setNonEmpty!21688 (= setRes!21688 (and tp!865083 (inv!42991 setElem!21689) e!1730173))))

(declare-fun mapValue!16494 () List!31736)

(declare-fun setRest!21688 () (InoxSet Context!4438))

(assert (=> setNonEmpty!21688 (= (_2!18416 (h!37056 mapValue!16494)) ((_ map or) (store ((as const (Array Context!4438 Bool)) false) setElem!21689 true) setRest!21688))))

(declare-fun setIsEmpty!21688 () Bool)

(assert (=> setIsEmpty!21688 setRes!21688))

(declare-fun setElem!21688 () Context!4438)

(declare-fun e!1730171 () Bool)

(declare-fun setNonEmpty!21689 () Bool)

(declare-fun setRes!21689 () Bool)

(declare-fun tp!865090 () Bool)

(assert (=> setNonEmpty!21689 (= setRes!21689 (and tp!865090 (inv!42991 setElem!21688) e!1730171))))

(declare-fun mapDefault!16494 () List!31736)

(declare-fun setRest!21689 () (InoxSet Context!4438))

(assert (=> setNonEmpty!21689 (= (_2!18416 (h!37056 mapDefault!16494)) ((_ map or) (store ((as const (Array Context!4438 Bool)) false) setElem!21688 true) setRest!21689))))

(declare-fun b!2746244 () Bool)

(declare-fun tp!865082 () Bool)

(assert (=> b!2746244 (= e!1730173 tp!865082)))

(declare-fun b!2746245 () Bool)

(declare-fun e!1730172 () Bool)

(declare-fun tp!865089 () Bool)

(assert (=> b!2746245 (= e!1730172 tp!865089)))

(declare-fun b!2746246 () Bool)

(declare-fun e!1730174 () Bool)

(declare-fun tp!865084 () Bool)

(assert (=> b!2746246 (= e!1730174 (and (inv!42991 (_1!18415 (_1!18416 (h!37056 mapValue!16494)))) e!1730172 tp_is_empty!13933 setRes!21688 tp!865084))))

(declare-fun condSetEmpty!21688 () Bool)

(assert (=> b!2746246 (= condSetEmpty!21688 (= (_2!18416 (h!37056 mapValue!16494)) ((as const (Array Context!4438 Bool)) false)))))

(declare-fun mapNonEmpty!16494 () Bool)

(declare-fun mapRes!16494 () Bool)

(declare-fun tp!865088 () Bool)

(assert (=> mapNonEmpty!16494 (= mapRes!16494 (and tp!865088 e!1730174))))

(declare-fun mapRest!16494 () (Array (_ BitVec 32) List!31736))

(declare-fun mapKey!16494 () (_ BitVec 32))

(assert (=> mapNonEmpty!16494 (= mapRest!16488 (store mapRest!16494 mapKey!16494 mapValue!16494))))

(declare-fun tp!865087 () Bool)

(declare-fun b!2746247 () Bool)

(declare-fun e!1730175 () Bool)

(declare-fun e!1730170 () Bool)

(assert (=> b!2746247 (= e!1730175 (and (inv!42991 (_1!18415 (_1!18416 (h!37056 mapDefault!16494)))) e!1730170 tp_is_empty!13933 setRes!21689 tp!865087))))

(declare-fun condSetEmpty!21689 () Bool)

(assert (=> b!2746247 (= condSetEmpty!21689 (= (_2!18416 (h!37056 mapDefault!16494)) ((as const (Array Context!4438 Bool)) false)))))

(declare-fun b!2746248 () Bool)

(declare-fun tp!865085 () Bool)

(assert (=> b!2746248 (= e!1730171 tp!865085)))

(declare-fun b!2746249 () Bool)

(declare-fun tp!865086 () Bool)

(assert (=> b!2746249 (= e!1730170 tp!865086)))

(declare-fun setIsEmpty!21689 () Bool)

(assert (=> setIsEmpty!21689 setRes!21689))

(declare-fun mapIsEmpty!16494 () Bool)

(assert (=> mapIsEmpty!16494 mapRes!16494))

(declare-fun condMapEmpty!16494 () Bool)

(assert (=> mapNonEmpty!16488 (= condMapEmpty!16494 (= mapRest!16488 ((as const (Array (_ BitVec 32) List!31736)) mapDefault!16494)))))

(assert (=> mapNonEmpty!16488 (= tp!864933 (and e!1730175 mapRes!16494))))

(assert (= (and mapNonEmpty!16488 condMapEmpty!16494) mapIsEmpty!16494))

(assert (= (and mapNonEmpty!16488 (not condMapEmpty!16494)) mapNonEmpty!16494))

(assert (= b!2746246 b!2746245))

(assert (= (and b!2746246 condSetEmpty!21688) setIsEmpty!21688))

(assert (= (and b!2746246 (not condSetEmpty!21688)) setNonEmpty!21688))

(assert (= setNonEmpty!21688 b!2746244))

(assert (= (and mapNonEmpty!16494 ((_ is Cons!31636) mapValue!16494)) b!2746246))

(assert (= b!2746247 b!2746249))

(assert (= (and b!2746247 condSetEmpty!21689) setIsEmpty!21689))

(assert (= (and b!2746247 (not condSetEmpty!21689)) setNonEmpty!21689))

(assert (= setNonEmpty!21689 b!2746248))

(assert (= (and mapNonEmpty!16488 ((_ is Cons!31636) mapDefault!16494)) b!2746247))

(declare-fun m!3162817 () Bool)

(assert (=> mapNonEmpty!16494 m!3162817))

(declare-fun m!3162819 () Bool)

(assert (=> b!2746246 m!3162819))

(declare-fun m!3162821 () Bool)

(assert (=> setNonEmpty!21688 m!3162821))

(declare-fun m!3162823 () Bool)

(assert (=> b!2746247 m!3162823))

(declare-fun m!3162825 () Bool)

(assert (=> setNonEmpty!21689 m!3162825))

(declare-fun e!1730176 () Bool)

(assert (=> mapNonEmpty!16488 (= tp!864935 e!1730176)))

(declare-fun setIsEmpty!21690 () Bool)

(declare-fun setRes!21690 () Bool)

(assert (=> setIsEmpty!21690 setRes!21690))

(declare-fun setElem!21690 () Context!4438)

(declare-fun e!1730177 () Bool)

(declare-fun setNonEmpty!21690 () Bool)

(declare-fun tp!865091 () Bool)

(assert (=> setNonEmpty!21690 (= setRes!21690 (and tp!865091 (inv!42991 setElem!21690) e!1730177))))

(declare-fun setRest!21690 () (InoxSet Context!4438))

(assert (=> setNonEmpty!21690 (= (_2!18416 (h!37056 mapValue!16488)) ((_ map or) (store ((as const (Array Context!4438 Bool)) false) setElem!21690 true) setRest!21690))))

(declare-fun b!2746250 () Bool)

(declare-fun e!1730178 () Bool)

(declare-fun tp!865093 () Bool)

(assert (=> b!2746250 (= e!1730178 tp!865093)))

(declare-fun b!2746251 () Bool)

(declare-fun tp!865094 () Bool)

(assert (=> b!2746251 (= e!1730176 (and (inv!42991 (_1!18415 (_1!18416 (h!37056 mapValue!16488)))) e!1730178 tp_is_empty!13933 setRes!21690 tp!865094))))

(declare-fun condSetEmpty!21690 () Bool)

(assert (=> b!2746251 (= condSetEmpty!21690 (= (_2!18416 (h!37056 mapValue!16488)) ((as const (Array Context!4438 Bool)) false)))))

(declare-fun b!2746252 () Bool)

(declare-fun tp!865092 () Bool)

(assert (=> b!2746252 (= e!1730177 tp!865092)))

(assert (= b!2746251 b!2746250))

(assert (= (and b!2746251 condSetEmpty!21690) setIsEmpty!21690))

(assert (= (and b!2746251 (not condSetEmpty!21690)) setNonEmpty!21690))

(assert (= setNonEmpty!21690 b!2746252))

(assert (= (and mapNonEmpty!16488 ((_ is Cons!31636) mapValue!16488)) b!2746251))

(declare-fun m!3162827 () Bool)

(assert (=> setNonEmpty!21690 m!3162827))

(declare-fun m!3162829 () Bool)

(assert (=> b!2746251 m!3162829))

(check-sat (not b_next!78053) b_and!202081 (not b!2746197) (not b!2746162) (not b!2746098) (not d!796053) (not b!2746178) (not b!2746127) (not b!2746228) (not b!2746226) (not b!2746099) b_and!202073 (not setNonEmpty!21690) (not b_next!78055) (not bm!177416) b_and!202075 (not setNonEmpty!21670) (not d!796061) (not b!2746198) (not setNonEmpty!21676) (not b_next!78059) (not b!2746116) (not b!2746208) (not b!2746084) (not b!2746248) (not mapNonEmpty!16491) (not b!2746065) (not b!2746227) (not b!2746249) (not setNonEmpty!21682) (not setNonEmpty!21681) (not b!2746207) (not b!2746034) (not b!2746086) (not b!2746062) b_and!202077 (not b!2746088) (not b!2746112) tp_is_empty!13933 b_and!202079 b_and!202071 (not b!2746057) (not d!796035) (not b!2746244) (not b_next!78063) (not b!2746100) (not d!796027) (not setNonEmpty!21671) (not d!796031) (not b_next!78061) (not b!2746114) (not b!2746177) (not b!2746136) (not b!2746194) (not d!796043) (not b!2746225) (not setNonEmpty!21680) (not b!2746150) (not b!2746151) (not b!2746148) (not b!2746193) (not d!796055) (not b!2746146) (not bm!177413) (not b!2746153) (not b!2746122) (not setNonEmpty!21669) (not b_next!78057) (not b!2746149) b_and!202069 (not d!796029) (not b!2746220) (not b!2746195) (not setNonEmpty!21688) (not b!2746251) (not b_next!78067) (not setNonEmpty!21677) (not b!2746209) (not b!2746147) (not b!2746245) (not b!2746134) (not b!2746113) (not b!2746252) (not setNonEmpty!21689) (not b!2746223) (not b!2746176) (not b!2746229) (not b_next!78065) (not b!2746058) (not b!2746218) (not b!2746219) (not b!2746247) (not b!2746246) (not b!2746121) (not b!2746250) (not mapNonEmpty!16494) (not b!2746087) (not d!796039) (not b!2746089) (not d!796037) (not d!796057) (not b!2746145) (not b!2746221) (not b!2746222) b_and!202083 (not b!2746083) (not setNonEmpty!21683) (not b!2746224) (not b!2746059) (not d!796051) (not b!2746152) (not b!2746163) (not b!2746196) (not b!2746085))
(check-sat b_and!202073 (not b_next!78059) b_and!202077 b_and!202079 b_and!202071 (not b_next!78063) (not b_next!78053) (not b_next!78061) b_and!202081 (not b_next!78057) b_and!202069 (not b_next!78067) (not b_next!78065) b_and!202083 (not b_next!78055) b_and!202075)
