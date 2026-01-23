; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398234 () Bool)

(assert start!398234)

(declare-fun b!4176725 () Bool)

(declare-fun b_free!121183 () Bool)

(declare-fun b_next!121887 () Bool)

(assert (=> b!4176725 (= b_free!121183 (not b_next!121887))))

(declare-fun tp!1276372 () Bool)

(declare-fun b_and!326461 () Bool)

(assert (=> b!4176725 (= tp!1276372 b_and!326461)))

(declare-fun b_free!121185 () Bool)

(declare-fun b_next!121889 () Bool)

(assert (=> b!4176725 (= b_free!121185 (not b_next!121889))))

(declare-fun tp!1276365 () Bool)

(declare-fun b_and!326463 () Bool)

(assert (=> b!4176725 (= tp!1276365 b_and!326463)))

(declare-fun b!4176722 () Bool)

(declare-fun b_free!121187 () Bool)

(declare-fun b_next!121891 () Bool)

(assert (=> b!4176722 (= b_free!121187 (not b_next!121891))))

(declare-fun tp!1276364 () Bool)

(declare-fun b_and!326465 () Bool)

(assert (=> b!4176722 (= tp!1276364 b_and!326465)))

(declare-fun b_free!121189 () Bool)

(declare-fun b_next!121893 () Bool)

(assert (=> b!4176722 (= b_free!121189 (not b_next!121893))))

(declare-fun tp!1276367 () Bool)

(declare-fun b_and!326467 () Bool)

(assert (=> b!4176722 (= tp!1276367 b_and!326467)))

(declare-fun b!4176733 () Bool)

(declare-fun b_free!121191 () Bool)

(declare-fun b_next!121895 () Bool)

(assert (=> b!4176733 (= b_free!121191 (not b_next!121895))))

(declare-fun tp!1276363 () Bool)

(declare-fun b_and!326469 () Bool)

(assert (=> b!4176733 (= tp!1276363 b_and!326469)))

(declare-fun b_free!121193 () Bool)

(declare-fun b_next!121897 () Bool)

(assert (=> b!4176733 (= b_free!121193 (not b_next!121897))))

(declare-fun tp!1276362 () Bool)

(declare-fun b_and!326471 () Bool)

(assert (=> b!4176733 (= tp!1276362 b_and!326471)))

(declare-fun b!4176707 () Bool)

(declare-fun e!2592996 () Bool)

(assert (=> b!4176707 (= e!2592996 true)))

(declare-fun lt!1487349 () Bool)

(declare-datatypes ((C!25228 0))(
  ( (C!25229 (val!14776 Int)) )
))
(declare-datatypes ((List!45947 0))(
  ( (Nil!45823) (Cons!45823 (h!51243 C!25228) (t!344756 List!45947)) )
))
(declare-fun lt!1487346 () List!45947)

(declare-fun input!3342 () List!45947)

(declare-fun isPrefix!4471 (List!45947 List!45947) Bool)

(assert (=> b!4176707 (= lt!1487349 (isPrefix!4471 lt!1487346 input!3342))))

(declare-fun res!1712229 () Bool)

(declare-fun e!2592986 () Bool)

(assert (=> start!398234 (=> (not res!1712229) (not e!2592986))))

(declare-datatypes ((LexerInterface!7207 0))(
  ( (LexerInterfaceExt!7204 (__x!27909 Int)) (Lexer!7205) )
))
(declare-fun thiss!25986 () LexerInterface!7207)

(get-info :version)

(assert (=> start!398234 (= res!1712229 ((_ is Lexer!7205) thiss!25986))))

(assert (=> start!398234 e!2592986))

(assert (=> start!398234 true))

(declare-fun e!2592982 () Bool)

(assert (=> start!398234 e!2592982))

(declare-fun e!2592995 () Bool)

(assert (=> start!398234 e!2592995))

(declare-fun e!2592998 () Bool)

(assert (=> start!398234 e!2592998))

(declare-fun e!2592993 () Bool)

(assert (=> start!398234 e!2592993))

(declare-fun e!2592989 () Bool)

(assert (=> start!398234 e!2592989))

(declare-fun e!2592983 () Bool)

(assert (=> start!398234 e!2592983))

(declare-fun b!4176708 () Bool)

(declare-fun res!1712230 () Bool)

(assert (=> b!4176708 (=> (not res!1712230) (not e!2592986))))

(declare-datatypes ((List!45948 0))(
  ( (Nil!45824) (Cons!45824 (h!51244 (_ BitVec 16)) (t!344757 List!45948)) )
))
(declare-datatypes ((TokenValue!7844 0))(
  ( (FloatLiteralValue!15688 (text!55353 List!45948)) (TokenValueExt!7843 (__x!27910 Int)) (Broken!39220 (value!237505 List!45948)) (Object!7967) (End!7844) (Def!7844) (Underscore!7844) (Match!7844) (Else!7844) (Error!7844) (Case!7844) (If!7844) (Extends!7844) (Abstract!7844) (Class!7844) (Val!7844) (DelimiterValue!15688 (del!7904 List!45948)) (KeywordValue!7850 (value!237506 List!45948)) (CommentValue!15688 (value!237507 List!45948)) (WhitespaceValue!15688 (value!237508 List!45948)) (IndentationValue!7844 (value!237509 List!45948)) (String!53085) (Int32!7844) (Broken!39221 (value!237510 List!45948)) (Boolean!7845) (Unit!64886) (OperatorValue!7847 (op!7904 List!45948)) (IdentifierValue!15688 (value!237511 List!45948)) (IdentifierValue!15689 (value!237512 List!45948)) (WhitespaceValue!15689 (value!237513 List!45948)) (True!15688) (False!15688) (Broken!39222 (value!237514 List!45948)) (Broken!39223 (value!237515 List!45948)) (True!15689) (RightBrace!7844) (RightBracket!7844) (Colon!7844) (Null!7844) (Comma!7844) (LeftBracket!7844) (False!15689) (LeftBrace!7844) (ImaginaryLiteralValue!7844 (text!55354 List!45948)) (StringLiteralValue!23532 (value!237516 List!45948)) (EOFValue!7844 (value!237517 List!45948)) (IdentValue!7844 (value!237518 List!45948)) (DelimiterValue!15689 (value!237519 List!45948)) (DedentValue!7844 (value!237520 List!45948)) (NewLineValue!7844 (value!237521 List!45948)) (IntegerValue!23532 (value!237522 (_ BitVec 32)) (text!55355 List!45948)) (IntegerValue!23533 (value!237523 Int) (text!55356 List!45948)) (Times!7844) (Or!7844) (Equal!7844) (Minus!7844) (Broken!39224 (value!237524 List!45948)) (And!7844) (Div!7844) (LessEqual!7844) (Mod!7844) (Concat!20363) (Not!7844) (Plus!7844) (SpaceValue!7844 (value!237525 List!45948)) (IntegerValue!23534 (value!237526 Int) (text!55357 List!45948)) (StringLiteralValue!23533 (text!55358 List!45948)) (FloatLiteralValue!15689 (text!55359 List!45948)) (BytesLiteralValue!7844 (value!237527 List!45948)) (CommentValue!15689 (value!237528 List!45948)) (StringLiteralValue!23534 (value!237529 List!45948)) (ErrorTokenValue!7844 (msg!7905 List!45948)) )
))
(declare-datatypes ((IArray!27655 0))(
  ( (IArray!27656 (innerList!13885 List!45947)) )
))
(declare-datatypes ((Conc!13825 0))(
  ( (Node!13825 (left!34142 Conc!13825) (right!34472 Conc!13825) (csize!27880 Int) (cheight!14036 Int)) (Leaf!21375 (xs!17131 IArray!27655) (csize!27881 Int)) (Empty!13825) )
))
(declare-datatypes ((BalanceConc!27244 0))(
  ( (BalanceConc!27245 (c!713472 Conc!13825)) )
))
(declare-datatypes ((Regex!12519 0))(
  ( (ElementMatch!12519 (c!713473 C!25228)) (Concat!20364 (regOne!25550 Regex!12519) (regTwo!25550 Regex!12519)) (EmptyExpr!12519) (Star!12519 (reg!12848 Regex!12519)) (EmptyLang!12519) (Union!12519 (regOne!25551 Regex!12519) (regTwo!25551 Regex!12519)) )
))
(declare-datatypes ((String!53086 0))(
  ( (String!53087 (value!237530 String)) )
))
(declare-datatypes ((TokenValueInjection!15116 0))(
  ( (TokenValueInjection!15117 (toValue!10298 Int) (toChars!10157 Int)) )
))
(declare-datatypes ((Rule!15028 0))(
  ( (Rule!15029 (regex!7614 Regex!12519) (tag!8478 String!53086) (isSeparator!7614 Bool) (transformation!7614 TokenValueInjection!15116)) )
))
(declare-fun r!4142 () Rule!15028)

(declare-fun validRegex!5636 (Regex!12519) Bool)

(assert (=> b!4176708 (= res!1712230 (validRegex!5636 (regex!7614 r!4142)))))

(declare-fun e!2592985 () Bool)

(declare-fun tp!1276371 () Bool)

(declare-fun b!4176709 () Bool)

(declare-fun inv!60348 (String!53086) Bool)

(declare-fun inv!60350 (TokenValueInjection!15116) Bool)

(assert (=> b!4176709 (= e!2592995 (and tp!1276371 (inv!60348 (tag!8478 r!4142)) (inv!60350 (transformation!7614 r!4142)) e!2592985))))

(declare-fun b!4176710 () Bool)

(declare-fun res!1712216 () Bool)

(assert (=> b!4176710 (=> (not res!1712216) (not e!2592986))))

(declare-fun p!2959 () List!45947)

(assert (=> b!4176710 (= res!1712216 (isPrefix!4471 p!2959 input!3342))))

(declare-fun b!4176711 () Bool)

(declare-fun e!2592988 () Bool)

(assert (=> b!4176711 (= e!2592988 e!2592996)))

(declare-fun res!1712224 () Bool)

(assert (=> b!4176711 (=> res!1712224 e!2592996)))

(declare-fun pBis!107 () List!45947)

(assert (=> b!4176711 (= res!1712224 (= lt!1487346 pBis!107))))

(declare-datatypes ((Token!13942 0))(
  ( (Token!13943 (value!237531 TokenValue!7844) (rule!10670 Rule!15028) (size!33638 Int) (originalCharacters!8002 List!45947)) )
))
(declare-datatypes ((tuple2!43658 0))(
  ( (tuple2!43659 (_1!24963 Token!13942) (_2!24963 List!45947)) )
))
(declare-fun lt!1487350 () tuple2!43658)

(declare-fun ++!11692 (List!45947 List!45947) List!45947)

(assert (=> b!4176711 (isPrefix!4471 lt!1487346 (++!11692 lt!1487346 (_2!24963 lt!1487350)))))

(declare-datatypes ((Unit!64887 0))(
  ( (Unit!64888) )
))
(declare-fun lt!1487344 () Unit!64887)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2978 (List!45947 List!45947) Unit!64887)

(assert (=> b!4176711 (= lt!1487344 (lemmaConcatTwoListThenFirstIsPrefix!2978 lt!1487346 (_2!24963 lt!1487350)))))

(declare-fun lt!1487352 () BalanceConc!27244)

(declare-fun list!16551 (BalanceConc!27244) List!45947)

(assert (=> b!4176711 (= lt!1487346 (list!16551 lt!1487352))))

(declare-fun charsOf!5055 (Token!13942) BalanceConc!27244)

(assert (=> b!4176711 (= lt!1487352 (charsOf!5055 (_1!24963 lt!1487350)))))

(declare-datatypes ((Option!9810 0))(
  ( (None!9809) (Some!9809 (v!40611 tuple2!43658)) )
))
(declare-fun lt!1487353 () Option!9810)

(declare-fun get!14886 (Option!9810) tuple2!43658)

(assert (=> b!4176711 (= lt!1487350 (get!14886 lt!1487353))))

(declare-fun b!4176712 () Bool)

(declare-fun res!1712217 () Bool)

(assert (=> b!4176712 (=> (not res!1712217) (not e!2592986))))

(declare-datatypes ((List!45949 0))(
  ( (Nil!45825) (Cons!45825 (h!51245 Rule!15028) (t!344758 List!45949)) )
))
(declare-fun rules!3843 () List!45949)

(declare-fun isEmpty!27108 (List!45949) Bool)

(assert (=> b!4176712 (= res!1712217 (not (isEmpty!27108 rules!3843)))))

(declare-fun b!4176713 () Bool)

(declare-fun e!2592992 () Bool)

(declare-fun rBis!167 () Rule!15028)

(declare-fun tp!1276368 () Bool)

(assert (=> b!4176713 (= e!2592982 (and tp!1276368 (inv!60348 (tag!8478 rBis!167)) (inv!60350 (transformation!7614 rBis!167)) e!2592992))))

(declare-fun b!4176714 () Bool)

(declare-fun res!1712223 () Bool)

(assert (=> b!4176714 (=> (not res!1712223) (not e!2592986))))

(declare-fun contains!9417 (List!45949 Rule!15028) Bool)

(assert (=> b!4176714 (= res!1712223 (contains!9417 rules!3843 rBis!167))))

(declare-fun b!4176715 () Bool)

(declare-fun res!1712221 () Bool)

(assert (=> b!4176715 (=> (not res!1712221) (not e!2592986))))

(declare-fun ruleValid!3332 (LexerInterface!7207 Rule!15028) Bool)

(assert (=> b!4176715 (= res!1712221 (ruleValid!3332 thiss!25986 r!4142))))

(declare-fun b!4176716 () Bool)

(declare-fun res!1712222 () Bool)

(assert (=> b!4176716 (=> res!1712222 e!2592996)))

(declare-fun lt!1487355 () Int)

(declare-fun size!33639 (List!45947) Int)

(assert (=> b!4176716 (= res!1712222 (not (= lt!1487355 (size!33639 lt!1487346))))))

(declare-fun b!4176717 () Bool)

(declare-fun res!1712232 () Bool)

(assert (=> b!4176717 (=> (not res!1712232) (not e!2592986))))

(declare-fun matchR!6258 (Regex!12519 List!45947) Bool)

(assert (=> b!4176717 (= res!1712232 (matchR!6258 (regex!7614 r!4142) p!2959))))

(declare-fun e!2592981 () Bool)

(declare-fun e!2592997 () Bool)

(declare-fun b!4176718 () Bool)

(declare-fun tp!1276366 () Bool)

(assert (=> b!4176718 (= e!2592997 (and tp!1276366 (inv!60348 (tag!8478 (h!51245 rules!3843))) (inv!60350 (transformation!7614 (h!51245 rules!3843))) e!2592981))))

(declare-fun b!4176719 () Bool)

(declare-fun tp_is_empty!22001 () Bool)

(declare-fun tp!1276374 () Bool)

(assert (=> b!4176719 (= e!2592983 (and tp_is_empty!22001 tp!1276374))))

(declare-fun b!4176720 () Bool)

(declare-fun res!1712219 () Bool)

(assert (=> b!4176720 (=> (not res!1712219) (not e!2592986))))

(assert (=> b!4176720 (= res!1712219 (contains!9417 rules!3843 r!4142))))

(declare-fun b!4176721 () Bool)

(declare-fun res!1712227 () Bool)

(declare-fun e!2592990 () Bool)

(assert (=> b!4176721 (=> res!1712227 e!2592990)))

(assert (=> b!4176721 (= res!1712227 (not (ruleValid!3332 thiss!25986 rBis!167)))))

(assert (=> b!4176722 (= e!2592992 (and tp!1276364 tp!1276367))))

(declare-fun b!4176723 () Bool)

(declare-fun tp!1276369 () Bool)

(assert (=> b!4176723 (= e!2592989 (and tp_is_empty!22001 tp!1276369))))

(declare-fun b!4176724 () Bool)

(declare-fun tp!1276373 () Bool)

(assert (=> b!4176724 (= e!2592993 (and tp_is_empty!22001 tp!1276373))))

(assert (=> b!4176725 (= e!2592981 (and tp!1276372 tp!1276365))))

(declare-fun b!4176726 () Bool)

(declare-fun res!1712231 () Bool)

(assert (=> b!4176726 (=> res!1712231 e!2592996)))

(declare-fun size!33640 (BalanceConc!27244) Int)

(assert (=> b!4176726 (= res!1712231 (< (size!33640 lt!1487352) lt!1487355))))

(declare-fun b!4176727 () Bool)

(assert (=> b!4176727 (= e!2592990 e!2592988)))

(declare-fun res!1712218 () Bool)

(assert (=> b!4176727 (=> res!1712218 e!2592988)))

(declare-fun isEmpty!27109 (Option!9810) Bool)

(assert (=> b!4176727 (= res!1712218 (isEmpty!27109 lt!1487353))))

(declare-fun maxPrefixOneRule!3218 (LexerInterface!7207 Rule!15028 List!45947) Option!9810)

(assert (=> b!4176727 (= lt!1487353 (maxPrefixOneRule!3218 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1487358 () Unit!64887)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2346 (LexerInterface!7207 Rule!15028 List!45949) Unit!64887)

(assert (=> b!4176727 (= lt!1487358 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2346 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4176727 (<= lt!1487355 (size!33639 input!3342))))

(declare-fun lt!1487347 () Unit!64887)

(declare-fun lemmaIsPrefixThenSmallerEqSize!503 (List!45947 List!45947) Unit!64887)

(assert (=> b!4176727 (= lt!1487347 (lemmaIsPrefixThenSmallerEqSize!503 pBis!107 input!3342))))

(declare-fun b!4176728 () Bool)

(declare-fun res!1712215 () Bool)

(assert (=> b!4176728 (=> (not res!1712215) (not e!2592986))))

(declare-fun rulesInvariant!6420 (LexerInterface!7207 List!45949) Bool)

(assert (=> b!4176728 (= res!1712215 (rulesInvariant!6420 thiss!25986 rules!3843))))

(declare-fun b!4176729 () Bool)

(declare-fun res!1712225 () Bool)

(assert (=> b!4176729 (=> res!1712225 e!2592990)))

(declare-fun lt!1487351 () Option!9810)

(declare-fun maxPrefix!4259 (LexerInterface!7207 List!45949 List!45947) Option!9810)

(assert (=> b!4176729 (= res!1712225 (not (= (maxPrefix!4259 thiss!25986 rules!3843 input!3342) lt!1487351)))))

(declare-fun b!4176730 () Bool)

(declare-fun e!2592994 () Bool)

(assert (=> b!4176730 (= e!2592994 e!2592990)))

(declare-fun res!1712226 () Bool)

(assert (=> b!4176730 (=> res!1712226 e!2592990)))

(declare-fun lt!1487345 () Int)

(assert (=> b!4176730 (= res!1712226 (<= lt!1487355 lt!1487345))))

(assert (=> b!4176730 (= lt!1487355 (size!33639 pBis!107))))

(declare-fun b!4176731 () Bool)

(declare-fun tp!1276370 () Bool)

(assert (=> b!4176731 (= e!2592998 (and e!2592997 tp!1276370))))

(declare-fun b!4176732 () Bool)

(assert (=> b!4176732 (= e!2592986 (not e!2592994))))

(declare-fun res!1712220 () Bool)

(assert (=> b!4176732 (=> res!1712220 e!2592994)))

(assert (=> b!4176732 (= res!1712220 (not (= (maxPrefixOneRule!3218 thiss!25986 r!4142 input!3342) lt!1487351)))))

(declare-fun lt!1487356 () TokenValue!7844)

(declare-fun getSuffix!2766 (List!45947 List!45947) List!45947)

(assert (=> b!4176732 (= lt!1487351 (Some!9809 (tuple2!43659 (Token!13943 lt!1487356 r!4142 lt!1487345 p!2959) (getSuffix!2766 input!3342 p!2959))))))

(assert (=> b!4176732 (= lt!1487345 (size!33639 p!2959))))

(declare-fun lt!1487354 () BalanceConc!27244)

(declare-fun apply!10579 (TokenValueInjection!15116 BalanceConc!27244) TokenValue!7844)

(assert (=> b!4176732 (= lt!1487356 (apply!10579 (transformation!7614 r!4142) lt!1487354))))

(assert (=> b!4176732 (isPrefix!4471 input!3342 input!3342)))

(declare-fun lt!1487348 () Unit!64887)

(declare-fun lemmaIsPrefixRefl!2900 (List!45947 List!45947) Unit!64887)

(assert (=> b!4176732 (= lt!1487348 (lemmaIsPrefixRefl!2900 input!3342 input!3342))))

(declare-fun lt!1487357 () Unit!64887)

(declare-fun lemmaSemiInverse!2380 (TokenValueInjection!15116 BalanceConc!27244) Unit!64887)

(assert (=> b!4176732 (= lt!1487357 (lemmaSemiInverse!2380 (transformation!7614 r!4142) lt!1487354))))

(declare-fun seqFromList!5639 (List!45947) BalanceConc!27244)

(assert (=> b!4176732 (= lt!1487354 (seqFromList!5639 p!2959))))

(assert (=> b!4176733 (= e!2592985 (and tp!1276363 tp!1276362))))

(declare-fun b!4176734 () Bool)

(declare-fun res!1712228 () Bool)

(assert (=> b!4176734 (=> (not res!1712228) (not e!2592986))))

(assert (=> b!4176734 (= res!1712228 (isPrefix!4471 pBis!107 input!3342))))

(assert (= (and start!398234 res!1712229) b!4176710))

(assert (= (and b!4176710 res!1712216) b!4176734))

(assert (= (and b!4176734 res!1712228) b!4176712))

(assert (= (and b!4176712 res!1712217) b!4176728))

(assert (= (and b!4176728 res!1712215) b!4176720))

(assert (= (and b!4176720 res!1712219) b!4176714))

(assert (= (and b!4176714 res!1712223) b!4176708))

(assert (= (and b!4176708 res!1712230) b!4176717))

(assert (= (and b!4176717 res!1712232) b!4176715))

(assert (= (and b!4176715 res!1712221) b!4176732))

(assert (= (and b!4176732 (not res!1712220)) b!4176730))

(assert (= (and b!4176730 (not res!1712226)) b!4176721))

(assert (= (and b!4176721 (not res!1712227)) b!4176729))

(assert (= (and b!4176729 (not res!1712225)) b!4176727))

(assert (= (and b!4176727 (not res!1712218)) b!4176711))

(assert (= (and b!4176711 (not res!1712224)) b!4176726))

(assert (= (and b!4176726 (not res!1712231)) b!4176716))

(assert (= (and b!4176716 (not res!1712222)) b!4176707))

(assert (= b!4176713 b!4176722))

(assert (= start!398234 b!4176713))

(assert (= b!4176709 b!4176733))

(assert (= start!398234 b!4176709))

(assert (= b!4176718 b!4176725))

(assert (= b!4176731 b!4176718))

(assert (= (and start!398234 ((_ is Cons!45825) rules!3843)) b!4176731))

(assert (= (and start!398234 ((_ is Cons!45823) input!3342)) b!4176724))

(assert (= (and start!398234 ((_ is Cons!45823) pBis!107)) b!4176723))

(assert (= (and start!398234 ((_ is Cons!45823) p!2959)) b!4176719))

(declare-fun m!4766367 () Bool)

(assert (=> b!4176717 m!4766367))

(declare-fun m!4766369 () Bool)

(assert (=> b!4176714 m!4766369))

(declare-fun m!4766371 () Bool)

(assert (=> b!4176720 m!4766371))

(declare-fun m!4766373 () Bool)

(assert (=> b!4176728 m!4766373))

(declare-fun m!4766375 () Bool)

(assert (=> b!4176712 m!4766375))

(declare-fun m!4766377 () Bool)

(assert (=> b!4176726 m!4766377))

(declare-fun m!4766379 () Bool)

(assert (=> b!4176734 m!4766379))

(declare-fun m!4766381 () Bool)

(assert (=> b!4176729 m!4766381))

(declare-fun m!4766383 () Bool)

(assert (=> b!4176707 m!4766383))

(declare-fun m!4766385 () Bool)

(assert (=> b!4176718 m!4766385))

(declare-fun m!4766387 () Bool)

(assert (=> b!4176718 m!4766387))

(declare-fun m!4766389 () Bool)

(assert (=> b!4176732 m!4766389))

(declare-fun m!4766391 () Bool)

(assert (=> b!4176732 m!4766391))

(declare-fun m!4766393 () Bool)

(assert (=> b!4176732 m!4766393))

(declare-fun m!4766395 () Bool)

(assert (=> b!4176732 m!4766395))

(declare-fun m!4766397 () Bool)

(assert (=> b!4176732 m!4766397))

(declare-fun m!4766399 () Bool)

(assert (=> b!4176732 m!4766399))

(declare-fun m!4766401 () Bool)

(assert (=> b!4176732 m!4766401))

(declare-fun m!4766403 () Bool)

(assert (=> b!4176732 m!4766403))

(declare-fun m!4766405 () Bool)

(assert (=> b!4176713 m!4766405))

(declare-fun m!4766407 () Bool)

(assert (=> b!4176713 m!4766407))

(declare-fun m!4766409 () Bool)

(assert (=> b!4176709 m!4766409))

(declare-fun m!4766411 () Bool)

(assert (=> b!4176709 m!4766411))

(declare-fun m!4766413 () Bool)

(assert (=> b!4176727 m!4766413))

(declare-fun m!4766415 () Bool)

(assert (=> b!4176727 m!4766415))

(declare-fun m!4766417 () Bool)

(assert (=> b!4176727 m!4766417))

(declare-fun m!4766419 () Bool)

(assert (=> b!4176727 m!4766419))

(declare-fun m!4766421 () Bool)

(assert (=> b!4176727 m!4766421))

(declare-fun m!4766423 () Bool)

(assert (=> b!4176721 m!4766423))

(declare-fun m!4766425 () Bool)

(assert (=> b!4176730 m!4766425))

(declare-fun m!4766427 () Bool)

(assert (=> b!4176711 m!4766427))

(declare-fun m!4766429 () Bool)

(assert (=> b!4176711 m!4766429))

(declare-fun m!4766431 () Bool)

(assert (=> b!4176711 m!4766431))

(assert (=> b!4176711 m!4766429))

(declare-fun m!4766433 () Bool)

(assert (=> b!4176711 m!4766433))

(declare-fun m!4766435 () Bool)

(assert (=> b!4176711 m!4766435))

(declare-fun m!4766437 () Bool)

(assert (=> b!4176711 m!4766437))

(declare-fun m!4766439 () Bool)

(assert (=> b!4176716 m!4766439))

(declare-fun m!4766441 () Bool)

(assert (=> b!4176710 m!4766441))

(declare-fun m!4766443 () Bool)

(assert (=> b!4176715 m!4766443))

(declare-fun m!4766445 () Bool)

(assert (=> b!4176708 m!4766445))

(check-sat (not b!4176708) (not b!4176707) (not b!4176732) b_and!326467 (not b!4176716) b_and!326463 (not b!4176711) (not b!4176710) b_and!326471 (not b!4176731) tp_is_empty!22001 (not b!4176726) (not b!4176730) (not b!4176728) b_and!326465 b_and!326469 (not b!4176727) (not b!4176724) (not b_next!121893) (not b_next!121887) (not b_next!121891) (not b_next!121889) (not b!4176723) (not b!4176715) (not b!4176720) (not b!4176729) (not b!4176717) (not b!4176734) b_and!326461 (not b!4176709) (not b!4176718) (not b!4176712) (not b!4176719) (not b!4176713) (not b_next!121895) (not b!4176721) (not b!4176714) (not b_next!121897))
(check-sat b_and!326471 b_and!326465 b_and!326469 (not b_next!121893) (not b_next!121889) b_and!326467 b_and!326461 b_and!326463 (not b_next!121895) (not b_next!121897) (not b_next!121887) (not b_next!121891))
