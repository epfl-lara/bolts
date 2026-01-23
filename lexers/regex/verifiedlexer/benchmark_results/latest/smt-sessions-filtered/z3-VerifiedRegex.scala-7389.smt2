; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392858 () Bool)

(assert start!392858)

(declare-fun b!4136055 () Bool)

(declare-fun b_free!117563 () Bool)

(declare-fun b_next!118267 () Bool)

(assert (=> b!4136055 (= b_free!117563 (not b_next!118267))))

(declare-fun tp!1260769 () Bool)

(declare-fun b_and!320905 () Bool)

(assert (=> b!4136055 (= tp!1260769 b_and!320905)))

(declare-fun b_free!117565 () Bool)

(declare-fun b_next!118269 () Bool)

(assert (=> b!4136055 (= b_free!117565 (not b_next!118269))))

(declare-fun tp!1260759 () Bool)

(declare-fun b_and!320907 () Bool)

(assert (=> b!4136055 (= tp!1260759 b_and!320907)))

(declare-fun b!4136054 () Bool)

(declare-fun b_free!117567 () Bool)

(declare-fun b_next!118271 () Bool)

(assert (=> b!4136054 (= b_free!117567 (not b_next!118271))))

(declare-fun tp!1260768 () Bool)

(declare-fun b_and!320909 () Bool)

(assert (=> b!4136054 (= tp!1260768 b_and!320909)))

(declare-fun b_free!117569 () Bool)

(declare-fun b_next!118273 () Bool)

(assert (=> b!4136054 (= b_free!117569 (not b_next!118273))))

(declare-fun tp!1260766 () Bool)

(declare-fun b_and!320911 () Bool)

(assert (=> b!4136054 (= tp!1260766 b_and!320911)))

(declare-fun b!4136048 () Bool)

(declare-fun b_free!117571 () Bool)

(declare-fun b_next!118275 () Bool)

(assert (=> b!4136048 (= b_free!117571 (not b_next!118275))))

(declare-fun tp!1260767 () Bool)

(declare-fun b_and!320913 () Bool)

(assert (=> b!4136048 (= tp!1260767 b_and!320913)))

(declare-fun b_free!117573 () Bool)

(declare-fun b_next!118277 () Bool)

(assert (=> b!4136048 (= b_free!117573 (not b_next!118277))))

(declare-fun tp!1260760 () Bool)

(declare-fun b_and!320915 () Bool)

(assert (=> b!4136048 (= tp!1260760 b_and!320915)))

(declare-fun b!4136046 () Bool)

(declare-fun res!1691352 () Bool)

(declare-fun e!2566272 () Bool)

(assert (=> b!4136046 (=> (not res!1691352) (not e!2566272))))

(declare-datatypes ((List!44944 0))(
  ( (Nil!44820) (Cons!44820 (h!50240 (_ BitVec 16)) (t!341981 List!44944)) )
))
(declare-datatypes ((TokenValue!7580 0))(
  ( (FloatLiteralValue!15160 (text!53505 List!44944)) (TokenValueExt!7579 (__x!27377 Int)) (Broken!37900 (value!230003 List!44944)) (Object!7703) (End!7580) (Def!7580) (Underscore!7580) (Match!7580) (Else!7580) (Error!7580) (Case!7580) (If!7580) (Extends!7580) (Abstract!7580) (Class!7580) (Val!7580) (DelimiterValue!15160 (del!7640 List!44944)) (KeywordValue!7586 (value!230004 List!44944)) (CommentValue!15160 (value!230005 List!44944)) (WhitespaceValue!15160 (value!230006 List!44944)) (IndentationValue!7580 (value!230007 List!44944)) (String!51649) (Int32!7580) (Broken!37901 (value!230008 List!44944)) (Boolean!7581) (Unit!64132) (OperatorValue!7583 (op!7640 List!44944)) (IdentifierValue!15160 (value!230009 List!44944)) (IdentifierValue!15161 (value!230010 List!44944)) (WhitespaceValue!15161 (value!230011 List!44944)) (True!15160) (False!15160) (Broken!37902 (value!230012 List!44944)) (Broken!37903 (value!230013 List!44944)) (True!15161) (RightBrace!7580) (RightBracket!7580) (Colon!7580) (Null!7580) (Comma!7580) (LeftBracket!7580) (False!15161) (LeftBrace!7580) (ImaginaryLiteralValue!7580 (text!53506 List!44944)) (StringLiteralValue!22740 (value!230014 List!44944)) (EOFValue!7580 (value!230015 List!44944)) (IdentValue!7580 (value!230016 List!44944)) (DelimiterValue!15161 (value!230017 List!44944)) (DedentValue!7580 (value!230018 List!44944)) (NewLineValue!7580 (value!230019 List!44944)) (IntegerValue!22740 (value!230020 (_ BitVec 32)) (text!53507 List!44944)) (IntegerValue!22741 (value!230021 Int) (text!53508 List!44944)) (Times!7580) (Or!7580) (Equal!7580) (Minus!7580) (Broken!37904 (value!230022 List!44944)) (And!7580) (Div!7580) (LessEqual!7580) (Mod!7580) (Concat!19835) (Not!7580) (Plus!7580) (SpaceValue!7580 (value!230023 List!44944)) (IntegerValue!22742 (value!230024 Int) (text!53509 List!44944)) (StringLiteralValue!22741 (text!53510 List!44944)) (FloatLiteralValue!15161 (text!53511 List!44944)) (BytesLiteralValue!7580 (value!230025 List!44944)) (CommentValue!15161 (value!230026 List!44944)) (StringLiteralValue!22742 (value!230027 List!44944)) (ErrorTokenValue!7580 (msg!7641 List!44944)) )
))
(declare-datatypes ((C!24696 0))(
  ( (C!24697 (val!14458 Int)) )
))
(declare-datatypes ((List!44945 0))(
  ( (Nil!44821) (Cons!44821 (h!50241 C!24696) (t!341982 List!44945)) )
))
(declare-datatypes ((IArray!27127 0))(
  ( (IArray!27128 (innerList!13621 List!44945)) )
))
(declare-datatypes ((Conc!13561 0))(
  ( (Node!13561 (left!33566 Conc!13561) (right!33896 Conc!13561) (csize!27352 Int) (cheight!13772 Int)) (Leaf!20951 (xs!16867 IArray!27127) (csize!27353 Int)) (Empty!13561) )
))
(declare-datatypes ((BalanceConc!26716 0))(
  ( (BalanceConc!26717 (c!709350 Conc!13561)) )
))
(declare-datatypes ((Regex!12255 0))(
  ( (ElementMatch!12255 (c!709351 C!24696)) (Concat!19836 (regOne!25022 Regex!12255) (regTwo!25022 Regex!12255)) (EmptyExpr!12255) (Star!12255 (reg!12584 Regex!12255)) (EmptyLang!12255) (Union!12255 (regOne!25023 Regex!12255) (regTwo!25023 Regex!12255)) )
))
(declare-datatypes ((String!51650 0))(
  ( (String!51651 (value!230028 String)) )
))
(declare-datatypes ((TokenValueInjection!14588 0))(
  ( (TokenValueInjection!14589 (toValue!10014 Int) (toChars!9873 Int)) )
))
(declare-datatypes ((Rule!14500 0))(
  ( (Rule!14501 (regex!7350 Regex!12255) (tag!8210 String!51650) (isSeparator!7350 Bool) (transformation!7350 TokenValueInjection!14588)) )
))
(declare-fun r!4008 () Rule!14500)

(declare-fun p!2912 () List!44945)

(declare-fun matchR!6084 (Regex!12255 List!44945) Bool)

(assert (=> b!4136046 (= res!1691352 (matchR!6084 (regex!7350 r!4008) p!2912))))

(declare-fun b!4136047 () Bool)

(declare-fun e!2566264 () Bool)

(declare-fun e!2566260 () Bool)

(assert (=> b!4136047 (= e!2566264 e!2566260)))

(declare-fun res!1691355 () Bool)

(assert (=> b!4136047 (=> res!1691355 e!2566260)))

(declare-datatypes ((Token!13630 0))(
  ( (Token!13631 (value!230029 TokenValue!7580) (rule!10448 Rule!14500) (size!33178 Int) (originalCharacters!7846 List!44945)) )
))
(declare-datatypes ((tuple2!43218 0))(
  ( (tuple2!43219 (_1!24743 Token!13630) (_2!24743 List!44945)) )
))
(declare-datatypes ((Option!9656 0))(
  ( (None!9655) (Some!9655 (v!40281 tuple2!43218)) )
))
(declare-fun lt!1474651 () Option!9656)

(declare-fun isEmpty!26703 (Option!9656) Bool)

(assert (=> b!4136047 (= res!1691355 (isEmpty!26703 lt!1474651))))

(declare-datatypes ((LexerInterface!6939 0))(
  ( (LexerInterfaceExt!6936 (__x!27378 Int)) (Lexer!6937) )
))
(declare-fun thiss!25645 () LexerInterface!6939)

(declare-fun input!3238 () List!44945)

(declare-fun rBis!149 () Rule!14500)

(declare-fun maxPrefixOneRule!3068 (LexerInterface!6939 Rule!14500 List!44945) Option!9656)

(assert (=> b!4136047 (= lt!1474651 (maxPrefixOneRule!3068 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4136047 (not (= rBis!149 r!4008))))

(declare-datatypes ((Unit!64133 0))(
  ( (Unit!64134) )
))
(declare-fun lt!1474654 () Unit!64133)

(declare-datatypes ((List!44946 0))(
  ( (Nil!44822) (Cons!44822 (h!50242 Rule!14500) (t!341983 List!44946)) )
))
(declare-fun rules!3756 () List!44946)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!48 (LexerInterface!6939 List!44946 Rule!14500 Rule!14500) Unit!64133)

(assert (=> b!4136047 (= lt!1474654 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!48 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9030 (List!44946 Rule!14500) Bool)

(declare-fun tail!6509 (List!44946) List!44946)

(assert (=> b!4136047 (contains!9030 (tail!6509 rules!3756) r!4008)))

(declare-fun lt!1474646 () Unit!64133)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!54 (List!44946 Rule!14500 Rule!14500) Unit!64133)

(assert (=> b!4136047 (= lt!1474646 (lemmaGetIndexBiggerAndHeadEqThenTailContains!54 rules!3756 rBis!149 r!4008))))

(declare-fun e!2566256 () Bool)

(assert (=> b!4136048 (= e!2566256 (and tp!1260767 tp!1260760))))

(declare-fun b!4136049 () Bool)

(declare-fun e!2566259 () Bool)

(declare-fun e!2566271 () Bool)

(declare-fun tp!1260765 () Bool)

(assert (=> b!4136049 (= e!2566259 (and e!2566271 tp!1260765))))

(declare-fun res!1691353 () Bool)

(declare-fun e!2566269 () Bool)

(assert (=> start!392858 (=> (not res!1691353) (not e!2566269))))

(get-info :version)

(assert (=> start!392858 (= res!1691353 ((_ is Lexer!6937) thiss!25645))))

(assert (=> start!392858 e!2566269))

(assert (=> start!392858 e!2566259))

(declare-fun e!2566265 () Bool)

(assert (=> start!392858 e!2566265))

(assert (=> start!392858 true))

(declare-fun e!2566270 () Bool)

(assert (=> start!392858 e!2566270))

(declare-fun e!2566263 () Bool)

(assert (=> start!392858 e!2566263))

(declare-fun e!2566267 () Bool)

(assert (=> start!392858 e!2566267))

(declare-fun b!4136050 () Bool)

(declare-fun res!1691363 () Bool)

(assert (=> b!4136050 (=> (not res!1691363) (not e!2566269))))

(assert (=> b!4136050 (= res!1691363 (contains!9030 rules!3756 r!4008))))

(declare-fun e!2566262 () Bool)

(declare-fun b!4136051 () Bool)

(declare-fun tp!1260761 () Bool)

(declare-fun inv!59426 (String!51650) Bool)

(declare-fun inv!59428 (TokenValueInjection!14588) Bool)

(assert (=> b!4136051 (= e!2566271 (and tp!1260761 (inv!59426 (tag!8210 (h!50242 rules!3756))) (inv!59428 (transformation!7350 (h!50242 rules!3756))) e!2566262))))

(declare-fun b!4136052 () Bool)

(declare-fun res!1691365 () Bool)

(assert (=> b!4136052 (=> (not res!1691365) (not e!2566272))))

(declare-fun ruleValid!3156 (LexerInterface!6939 Rule!14500) Bool)

(assert (=> b!4136052 (= res!1691365 (ruleValid!3156 thiss!25645 r!4008))))

(declare-fun b!4136053 () Bool)

(assert (=> b!4136053 (= e!2566272 (not e!2566264))))

(declare-fun res!1691354 () Bool)

(assert (=> b!4136053 (=> res!1691354 e!2566264)))

(assert (=> b!4136053 (= res!1691354 (or (not ((_ is Cons!44822) rules!3756)) (not (= (h!50242 rules!3756) rBis!149))))))

(declare-fun lt!1474656 () Unit!64133)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2196 (LexerInterface!6939 Rule!14500 List!44946) Unit!64133)

(assert (=> b!4136053 (= lt!1474656 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2196 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4136053 (ruleValid!3156 thiss!25645 rBis!149)))

(declare-fun lt!1474648 () Unit!64133)

(assert (=> b!4136053 (= lt!1474648 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2196 thiss!25645 rBis!149 rules!3756))))

(declare-fun e!2566261 () Bool)

(assert (=> b!4136054 (= e!2566261 (and tp!1260768 tp!1260766))))

(assert (=> b!4136055 (= e!2566262 (and tp!1260769 tp!1260759))))

(declare-fun tp!1260764 () Bool)

(declare-fun b!4136056 () Bool)

(assert (=> b!4136056 (= e!2566267 (and tp!1260764 (inv!59426 (tag!8210 rBis!149)) (inv!59428 (transformation!7350 rBis!149)) e!2566261))))

(declare-fun b!4136057 () Bool)

(declare-fun e!2566257 () Bool)

(assert (=> b!4136057 (= e!2566260 e!2566257)))

(declare-fun res!1691362 () Bool)

(assert (=> b!4136057 (=> res!1691362 e!2566257)))

(declare-fun lt!1474649 () BalanceConc!26716)

(declare-fun lt!1474655 () Int)

(declare-fun size!33179 (BalanceConc!26716) Int)

(assert (=> b!4136057 (= res!1691362 (<= (size!33179 lt!1474649) lt!1474655))))

(declare-fun charsOf!4949 (Token!13630) BalanceConc!26716)

(declare-fun get!14620 (Option!9656) tuple2!43218)

(assert (=> b!4136057 (= lt!1474649 (charsOf!4949 (_1!24743 (get!14620 lt!1474651))))))

(declare-fun b!4136058 () Bool)

(declare-fun res!1691357 () Bool)

(assert (=> b!4136058 (=> (not res!1691357) (not e!2566269))))

(declare-fun rulesInvariant!6236 (LexerInterface!6939 List!44946) Bool)

(assert (=> b!4136058 (= res!1691357 (rulesInvariant!6236 thiss!25645 rules!3756))))

(declare-fun b!4136059 () Bool)

(declare-fun res!1691358 () Bool)

(assert (=> b!4136059 (=> (not res!1691358) (not e!2566269))))

(assert (=> b!4136059 (= res!1691358 (contains!9030 rules!3756 rBis!149))))

(declare-fun b!4136060 () Bool)

(assert (=> b!4136060 (= e!2566269 e!2566272)))

(declare-fun res!1691360 () Bool)

(assert (=> b!4136060 (=> (not res!1691360) (not e!2566272))))

(declare-fun lt!1474647 () TokenValue!7580)

(declare-fun lt!1474652 () List!44945)

(declare-fun maxPrefix!4129 (LexerInterface!6939 List!44946 List!44945) Option!9656)

(assert (=> b!4136060 (= res!1691360 (= (maxPrefix!4129 thiss!25645 rules!3756 input!3238) (Some!9655 (tuple2!43219 (Token!13631 lt!1474647 r!4008 lt!1474655 p!2912) lt!1474652))))))

(declare-fun getSuffix!2612 (List!44945 List!44945) List!44945)

(assert (=> b!4136060 (= lt!1474652 (getSuffix!2612 input!3238 p!2912))))

(declare-fun size!33180 (List!44945) Int)

(assert (=> b!4136060 (= lt!1474655 (size!33180 p!2912))))

(declare-fun lt!1474645 () BalanceConc!26716)

(declare-fun apply!10423 (TokenValueInjection!14588 BalanceConc!26716) TokenValue!7580)

(assert (=> b!4136060 (= lt!1474647 (apply!10423 (transformation!7350 r!4008) lt!1474645))))

(declare-fun lt!1474653 () Unit!64133)

(declare-fun lemmaSemiInverse!2208 (TokenValueInjection!14588 BalanceConc!26716) Unit!64133)

(assert (=> b!4136060 (= lt!1474653 (lemmaSemiInverse!2208 (transformation!7350 r!4008) lt!1474645))))

(declare-fun seqFromList!5467 (List!44945) BalanceConc!26716)

(assert (=> b!4136060 (= lt!1474645 (seqFromList!5467 p!2912))))

(declare-fun b!4136061 () Bool)

(declare-fun tp_is_empty!21433 () Bool)

(declare-fun tp!1260770 () Bool)

(assert (=> b!4136061 (= e!2566265 (and tp_is_empty!21433 tp!1260770))))

(declare-fun b!4136062 () Bool)

(declare-fun res!1691359 () Bool)

(assert (=> b!4136062 (=> (not res!1691359) (not e!2566272))))

(declare-fun getIndex!696 (List!44946 Rule!14500) Int)

(assert (=> b!4136062 (= res!1691359 (< (getIndex!696 rules!3756 rBis!149) (getIndex!696 rules!3756 r!4008)))))

(declare-fun b!4136063 () Bool)

(assert (=> b!4136063 (= e!2566257 true)))

(declare-fun lt!1474644 () List!44945)

(declare-fun ++!11594 (List!44945 List!44945) List!44945)

(assert (=> b!4136063 (= lt!1474644 (++!11594 p!2912 lt!1474652))))

(declare-fun lt!1474650 () List!44945)

(declare-fun list!16411 (BalanceConc!26716) List!44945)

(assert (=> b!4136063 (= lt!1474650 (getSuffix!2612 input!3238 (list!16411 lt!1474649)))))

(declare-fun b!4136064 () Bool)

(declare-fun res!1691361 () Bool)

(assert (=> b!4136064 (=> (not res!1691361) (not e!2566269))))

(declare-fun isEmpty!26704 (List!44945) Bool)

(assert (=> b!4136064 (= res!1691361 (not (isEmpty!26704 p!2912)))))

(declare-fun b!4136065 () Bool)

(declare-fun res!1691356 () Bool)

(assert (=> b!4136065 (=> (not res!1691356) (not e!2566269))))

(declare-fun isPrefix!4285 (List!44945 List!44945) Bool)

(assert (=> b!4136065 (= res!1691356 (isPrefix!4285 p!2912 input!3238))))

(declare-fun b!4136066 () Bool)

(declare-fun tp!1260762 () Bool)

(assert (=> b!4136066 (= e!2566270 (and tp!1260762 (inv!59426 (tag!8210 r!4008)) (inv!59428 (transformation!7350 r!4008)) e!2566256))))

(declare-fun b!4136067 () Bool)

(declare-fun tp!1260763 () Bool)

(assert (=> b!4136067 (= e!2566263 (and tp_is_empty!21433 tp!1260763))))

(declare-fun b!4136068 () Bool)

(declare-fun res!1691364 () Bool)

(assert (=> b!4136068 (=> (not res!1691364) (not e!2566269))))

(declare-fun isEmpty!26705 (List!44946) Bool)

(assert (=> b!4136068 (= res!1691364 (not (isEmpty!26705 rules!3756)))))

(assert (= (and start!392858 res!1691353) b!4136065))

(assert (= (and b!4136065 res!1691356) b!4136068))

(assert (= (and b!4136068 res!1691364) b!4136058))

(assert (= (and b!4136058 res!1691357) b!4136050))

(assert (= (and b!4136050 res!1691363) b!4136059))

(assert (= (and b!4136059 res!1691358) b!4136064))

(assert (= (and b!4136064 res!1691361) b!4136060))

(assert (= (and b!4136060 res!1691360) b!4136046))

(assert (= (and b!4136046 res!1691352) b!4136062))

(assert (= (and b!4136062 res!1691359) b!4136052))

(assert (= (and b!4136052 res!1691365) b!4136053))

(assert (= (and b!4136053 (not res!1691354)) b!4136047))

(assert (= (and b!4136047 (not res!1691355)) b!4136057))

(assert (= (and b!4136057 (not res!1691362)) b!4136063))

(assert (= b!4136051 b!4136055))

(assert (= b!4136049 b!4136051))

(assert (= (and start!392858 ((_ is Cons!44822) rules!3756)) b!4136049))

(assert (= (and start!392858 ((_ is Cons!44821) p!2912)) b!4136061))

(assert (= b!4136066 b!4136048))

(assert (= start!392858 b!4136066))

(assert (= (and start!392858 ((_ is Cons!44821) input!3238)) b!4136067))

(assert (= b!4136056 b!4136054))

(assert (= start!392858 b!4136056))

(declare-fun m!4732647 () Bool)

(assert (=> b!4136046 m!4732647))

(declare-fun m!4732649 () Bool)

(assert (=> b!4136065 m!4732649))

(declare-fun m!4732651 () Bool)

(assert (=> b!4136056 m!4732651))

(declare-fun m!4732653 () Bool)

(assert (=> b!4136056 m!4732653))

(declare-fun m!4732655 () Bool)

(assert (=> b!4136062 m!4732655))

(declare-fun m!4732657 () Bool)

(assert (=> b!4136062 m!4732657))

(declare-fun m!4732659 () Bool)

(assert (=> b!4136063 m!4732659))

(declare-fun m!4732661 () Bool)

(assert (=> b!4136063 m!4732661))

(assert (=> b!4136063 m!4732661))

(declare-fun m!4732663 () Bool)

(assert (=> b!4136063 m!4732663))

(declare-fun m!4732665 () Bool)

(assert (=> b!4136057 m!4732665))

(declare-fun m!4732667 () Bool)

(assert (=> b!4136057 m!4732667))

(declare-fun m!4732669 () Bool)

(assert (=> b!4136057 m!4732669))

(declare-fun m!4732671 () Bool)

(assert (=> b!4136059 m!4732671))

(declare-fun m!4732673 () Bool)

(assert (=> b!4136050 m!4732673))

(declare-fun m!4732675 () Bool)

(assert (=> b!4136053 m!4732675))

(declare-fun m!4732677 () Bool)

(assert (=> b!4136053 m!4732677))

(declare-fun m!4732679 () Bool)

(assert (=> b!4136053 m!4732679))

(declare-fun m!4732681 () Bool)

(assert (=> b!4136052 m!4732681))

(declare-fun m!4732683 () Bool)

(assert (=> b!4136051 m!4732683))

(declare-fun m!4732685 () Bool)

(assert (=> b!4136051 m!4732685))

(declare-fun m!4732687 () Bool)

(assert (=> b!4136068 m!4732687))

(declare-fun m!4732689 () Bool)

(assert (=> b!4136058 m!4732689))

(declare-fun m!4732691 () Bool)

(assert (=> b!4136064 m!4732691))

(declare-fun m!4732693 () Bool)

(assert (=> b!4136066 m!4732693))

(declare-fun m!4732695 () Bool)

(assert (=> b!4136066 m!4732695))

(declare-fun m!4732697 () Bool)

(assert (=> b!4136047 m!4732697))

(declare-fun m!4732699 () Bool)

(assert (=> b!4136047 m!4732699))

(declare-fun m!4732701 () Bool)

(assert (=> b!4136047 m!4732701))

(assert (=> b!4136047 m!4732697))

(declare-fun m!4732703 () Bool)

(assert (=> b!4136047 m!4732703))

(declare-fun m!4732705 () Bool)

(assert (=> b!4136047 m!4732705))

(declare-fun m!4732707 () Bool)

(assert (=> b!4136047 m!4732707))

(declare-fun m!4732709 () Bool)

(assert (=> b!4136060 m!4732709))

(declare-fun m!4732711 () Bool)

(assert (=> b!4136060 m!4732711))

(declare-fun m!4732713 () Bool)

(assert (=> b!4136060 m!4732713))

(declare-fun m!4732715 () Bool)

(assert (=> b!4136060 m!4732715))

(declare-fun m!4732717 () Bool)

(assert (=> b!4136060 m!4732717))

(declare-fun m!4732719 () Bool)

(assert (=> b!4136060 m!4732719))

(check-sat (not b!4136067) (not b!4136051) (not b_next!118273) (not b_next!118275) (not b_next!118269) (not b!4136047) (not b!4136064) b_and!320907 (not b!4136059) (not b!4136066) (not b!4136068) (not b!4136058) (not b!4136049) (not b!4136061) (not b!4136053) (not b!4136050) (not b!4136060) b_and!320905 (not b_next!118271) (not b!4136065) (not b!4136063) (not b!4136057) b_and!320913 b_and!320915 (not b_next!118277) (not b!4136062) b_and!320911 (not b!4136046) (not b_next!118267) (not b!4136056) tp_is_empty!21433 b_and!320909 (not b!4136052))
(check-sat (not b_next!118273) (not b_next!118275) (not b_next!118269) b_and!320907 b_and!320911 (not b_next!118267) b_and!320909 b_and!320905 (not b_next!118271) b_and!320913 b_and!320915 (not b_next!118277))
