; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390434 () Bool)

(assert start!390434)

(declare-fun b!4119031 () Bool)

(declare-fun b_free!116371 () Bool)

(declare-fun b_next!117075 () Bool)

(assert (=> b!4119031 (= b_free!116371 (not b_next!117075))))

(declare-fun tp!1255180 () Bool)

(declare-fun b_and!318489 () Bool)

(assert (=> b!4119031 (= tp!1255180 b_and!318489)))

(declare-fun b_free!116373 () Bool)

(declare-fun b_next!117077 () Bool)

(assert (=> b!4119031 (= b_free!116373 (not b_next!117077))))

(declare-fun tp!1255184 () Bool)

(declare-fun b_and!318491 () Bool)

(assert (=> b!4119031 (= tp!1255184 b_and!318491)))

(declare-fun b!4119025 () Bool)

(declare-fun b_free!116375 () Bool)

(declare-fun b_next!117079 () Bool)

(assert (=> b!4119025 (= b_free!116375 (not b_next!117079))))

(declare-fun tp!1255183 () Bool)

(declare-fun b_and!318493 () Bool)

(assert (=> b!4119025 (= tp!1255183 b_and!318493)))

(declare-fun b_free!116377 () Bool)

(declare-fun b_next!117081 () Bool)

(assert (=> b!4119025 (= b_free!116377 (not b_next!117081))))

(declare-fun tp!1255179 () Bool)

(declare-fun b_and!318495 () Bool)

(assert (=> b!4119025 (= tp!1255179 b_and!318495)))

(declare-fun b!4119020 () Bool)

(declare-fun b_free!116379 () Bool)

(declare-fun b_next!117083 () Bool)

(assert (=> b!4119020 (= b_free!116379 (not b_next!117083))))

(declare-fun tp!1255187 () Bool)

(declare-fun b_and!318497 () Bool)

(assert (=> b!4119020 (= tp!1255187 b_and!318497)))

(declare-fun b_free!116381 () Bool)

(declare-fun b_next!117085 () Bool)

(assert (=> b!4119020 (= b_free!116381 (not b_next!117085))))

(declare-fun tp!1255182 () Bool)

(declare-fun b_and!318499 () Bool)

(assert (=> b!4119020 (= tp!1255182 b_and!318499)))

(declare-datatypes ((List!44649 0))(
  ( (Nil!44525) (Cons!44525 (h!49945 (_ BitVec 16)) (t!340584 List!44649)) )
))
(declare-datatypes ((TokenValue!7498 0))(
  ( (FloatLiteralValue!14996 (text!52931 List!44649)) (TokenValueExt!7497 (__x!27213 Int)) (Broken!37490 (value!227666 List!44649)) (Object!7621) (End!7498) (Def!7498) (Underscore!7498) (Match!7498) (Else!7498) (Error!7498) (Case!7498) (If!7498) (Extends!7498) (Abstract!7498) (Class!7498) (Val!7498) (DelimiterValue!14996 (del!7558 List!44649)) (KeywordValue!7504 (value!227667 List!44649)) (CommentValue!14996 (value!227668 List!44649)) (WhitespaceValue!14996 (value!227669 List!44649)) (IndentationValue!7498 (value!227670 List!44649)) (String!51239) (Int32!7498) (Broken!37491 (value!227671 List!44649)) (Boolean!7499) (Unit!63880) (OperatorValue!7501 (op!7558 List!44649)) (IdentifierValue!14996 (value!227672 List!44649)) (IdentifierValue!14997 (value!227673 List!44649)) (WhitespaceValue!14997 (value!227674 List!44649)) (True!14996) (False!14996) (Broken!37492 (value!227675 List!44649)) (Broken!37493 (value!227676 List!44649)) (True!14997) (RightBrace!7498) (RightBracket!7498) (Colon!7498) (Null!7498) (Comma!7498) (LeftBracket!7498) (False!14997) (LeftBrace!7498) (ImaginaryLiteralValue!7498 (text!52932 List!44649)) (StringLiteralValue!22494 (value!227677 List!44649)) (EOFValue!7498 (value!227678 List!44649)) (IdentValue!7498 (value!227679 List!44649)) (DelimiterValue!14997 (value!227680 List!44649)) (DedentValue!7498 (value!227681 List!44649)) (NewLineValue!7498 (value!227682 List!44649)) (IntegerValue!22494 (value!227683 (_ BitVec 32)) (text!52933 List!44649)) (IntegerValue!22495 (value!227684 Int) (text!52934 List!44649)) (Times!7498) (Or!7498) (Equal!7498) (Minus!7498) (Broken!37494 (value!227685 List!44649)) (And!7498) (Div!7498) (LessEqual!7498) (Mod!7498) (Concat!19671) (Not!7498) (Plus!7498) (SpaceValue!7498 (value!227686 List!44649)) (IntegerValue!22496 (value!227687 Int) (text!52935 List!44649)) (StringLiteralValue!22495 (text!52936 List!44649)) (FloatLiteralValue!14997 (text!52937 List!44649)) (BytesLiteralValue!7498 (value!227688 List!44649)) (CommentValue!14997 (value!227689 List!44649)) (StringLiteralValue!22496 (value!227690 List!44649)) (ErrorTokenValue!7498 (msg!7559 List!44649)) )
))
(declare-datatypes ((C!24532 0))(
  ( (C!24533 (val!14376 Int)) )
))
(declare-datatypes ((List!44650 0))(
  ( (Nil!44526) (Cons!44526 (h!49946 C!24532) (t!340585 List!44650)) )
))
(declare-datatypes ((IArray!26963 0))(
  ( (IArray!26964 (innerList!13539 List!44650)) )
))
(declare-datatypes ((Conc!13479 0))(
  ( (Node!13479 (left!33351 Conc!13479) (right!33681 Conc!13479) (csize!27188 Int) (cheight!13690 Int)) (Leaf!20828 (xs!16785 IArray!26963) (csize!27189 Int)) (Empty!13479) )
))
(declare-datatypes ((BalanceConc!26552 0))(
  ( (BalanceConc!26553 (c!707392 Conc!13479)) )
))
(declare-datatypes ((Regex!12173 0))(
  ( (ElementMatch!12173 (c!707393 C!24532)) (Concat!19672 (regOne!24858 Regex!12173) (regTwo!24858 Regex!12173)) (EmptyExpr!12173) (Star!12173 (reg!12502 Regex!12173)) (EmptyLang!12173) (Union!12173 (regOne!24859 Regex!12173) (regTwo!24859 Regex!12173)) )
))
(declare-datatypes ((String!51240 0))(
  ( (String!51241 (value!227691 String)) )
))
(declare-datatypes ((TokenValueInjection!14424 0))(
  ( (TokenValueInjection!14425 (toValue!9920 Int) (toChars!9779 Int)) )
))
(declare-datatypes ((Rule!14336 0))(
  ( (Rule!14337 (regex!7268 Regex!12173) (tag!8128 String!51240) (isSeparator!7268 Bool) (transformation!7268 TokenValueInjection!14424)) )
))
(declare-fun rBis!149 () Rule!14336)

(declare-fun e!2555857 () Bool)

(declare-fun b!4119015 () Bool)

(declare-fun e!2555856 () Bool)

(declare-fun tp!1255181 () Bool)

(declare-fun inv!59107 (String!51240) Bool)

(declare-fun inv!59109 (TokenValueInjection!14424) Bool)

(assert (=> b!4119015 (= e!2555857 (and tp!1255181 (inv!59107 (tag!8128 rBis!149)) (inv!59109 (transformation!7268 rBis!149)) e!2555856))))

(declare-fun b!4119016 () Bool)

(declare-fun e!2555849 () Bool)

(declare-fun tp_is_empty!21269 () Bool)

(declare-fun tp!1255188 () Bool)

(assert (=> b!4119016 (= e!2555849 (and tp_is_empty!21269 tp!1255188))))

(declare-fun b!4119017 () Bool)

(declare-fun e!2555854 () Bool)

(declare-fun tp!1255178 () Bool)

(assert (=> b!4119017 (= e!2555854 (and tp_is_empty!21269 tp!1255178))))

(declare-fun b!4119018 () Bool)

(declare-fun res!1682592 () Bool)

(declare-fun e!2555847 () Bool)

(assert (=> b!4119018 (=> (not res!1682592) (not e!2555847))))

(declare-fun r!4008 () Rule!14336)

(declare-fun p!2912 () List!44650)

(declare-fun matchR!6004 (Regex!12173 List!44650) Bool)

(assert (=> b!4119018 (= res!1682592 (matchR!6004 (regex!7268 r!4008) p!2912))))

(declare-fun b!4119019 () Bool)

(declare-fun res!1682591 () Bool)

(declare-fun e!2555846 () Bool)

(assert (=> b!4119019 (=> (not res!1682591) (not e!2555846))))

(declare-datatypes ((List!44651 0))(
  ( (Nil!44527) (Cons!44527 (h!49947 Rule!14336) (t!340586 List!44651)) )
))
(declare-fun rules!3756 () List!44651)

(declare-fun contains!8940 (List!44651 Rule!14336) Bool)

(assert (=> b!4119019 (= res!1682591 (contains!8940 rules!3756 r!4008))))

(assert (=> b!4119020 (= e!2555856 (and tp!1255187 tp!1255182))))

(declare-fun b!4119021 () Bool)

(declare-fun res!1682598 () Bool)

(assert (=> b!4119021 (=> (not res!1682598) (not e!2555846))))

(declare-fun isEmpty!26478 (List!44650) Bool)

(assert (=> b!4119021 (= res!1682598 (not (isEmpty!26478 p!2912)))))

(declare-fun e!2555851 () Bool)

(declare-fun e!2555848 () Bool)

(declare-fun b!4119022 () Bool)

(declare-fun tp!1255185 () Bool)

(assert (=> b!4119022 (= e!2555848 (and tp!1255185 (inv!59107 (tag!8128 (h!49947 rules!3756))) (inv!59109 (transformation!7268 (h!49947 rules!3756))) e!2555851))))

(declare-fun res!1682601 () Bool)

(assert (=> start!390434 (=> (not res!1682601) (not e!2555846))))

(declare-datatypes ((LexerInterface!6857 0))(
  ( (LexerInterfaceExt!6854 (__x!27214 Int)) (Lexer!6855) )
))
(declare-fun thiss!25645 () LexerInterface!6857)

(get-info :version)

(assert (=> start!390434 (= res!1682601 ((_ is Lexer!6855) thiss!25645))))

(assert (=> start!390434 e!2555846))

(declare-fun e!2555860 () Bool)

(assert (=> start!390434 e!2555860))

(assert (=> start!390434 e!2555849))

(assert (=> start!390434 true))

(declare-fun e!2555845 () Bool)

(assert (=> start!390434 e!2555845))

(assert (=> start!390434 e!2555854))

(assert (=> start!390434 e!2555857))

(declare-fun b!4119023 () Bool)

(declare-fun res!1682600 () Bool)

(assert (=> b!4119023 (=> (not res!1682600) (not e!2555846))))

(declare-fun isEmpty!26479 (List!44651) Bool)

(assert (=> b!4119023 (= res!1682600 (not (isEmpty!26479 rules!3756)))))

(declare-fun b!4119024 () Bool)

(declare-fun e!2555853 () Bool)

(declare-fun tp!1255177 () Bool)

(assert (=> b!4119024 (= e!2555845 (and tp!1255177 (inv!59107 (tag!8128 r!4008)) (inv!59109 (transformation!7268 r!4008)) e!2555853))))

(assert (=> b!4119025 (= e!2555853 (and tp!1255183 tp!1255179))))

(declare-fun b!4119026 () Bool)

(declare-fun res!1682597 () Bool)

(assert (=> b!4119026 (=> (not res!1682597) (not e!2555847))))

(declare-fun ruleValid!3076 (LexerInterface!6857 Rule!14336) Bool)

(assert (=> b!4119026 (= res!1682597 (ruleValid!3076 thiss!25645 r!4008))))

(declare-fun b!4119027 () Bool)

(declare-fun res!1682595 () Bool)

(assert (=> b!4119027 (=> (not res!1682595) (not e!2555846))))

(declare-fun input!3238 () List!44650)

(declare-fun isPrefix!4203 (List!44650 List!44650) Bool)

(assert (=> b!4119027 (= res!1682595 (isPrefix!4203 p!2912 input!3238))))

(declare-fun b!4119028 () Bool)

(declare-fun e!2555858 () Bool)

(assert (=> b!4119028 (= e!2555847 (not e!2555858))))

(declare-fun res!1682593 () Bool)

(assert (=> b!4119028 (=> res!1682593 e!2555858)))

(assert (=> b!4119028 (= res!1682593 (or (not ((_ is Cons!44527) rules!3756)) (not (= (h!49947 rules!3756) rBis!149))))))

(declare-datatypes ((Unit!63881 0))(
  ( (Unit!63882) )
))
(declare-fun lt!1469440 () Unit!63881)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2120 (LexerInterface!6857 Rule!14336 List!44651) Unit!63881)

(assert (=> b!4119028 (= lt!1469440 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2120 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4119028 (ruleValid!3076 thiss!25645 rBis!149)))

(declare-fun lt!1469446 () Unit!63881)

(assert (=> b!4119028 (= lt!1469446 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2120 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4119029 () Bool)

(assert (=> b!4119029 (= e!2555846 e!2555847)))

(declare-fun res!1682590 () Bool)

(assert (=> b!4119029 (=> (not res!1682590) (not e!2555847))))

(declare-fun lt!1469445 () BalanceConc!26552)

(declare-datatypes ((Token!13466 0))(
  ( (Token!13467 (value!227692 TokenValue!7498) (rule!10336 Rule!14336) (size!32947 Int) (originalCharacters!7764 List!44650)) )
))
(declare-datatypes ((tuple2!42998 0))(
  ( (tuple2!42999 (_1!24633 Token!13466) (_2!24633 List!44650)) )
))
(declare-datatypes ((Option!9576 0))(
  ( (None!9575) (Some!9575 (v!40155 tuple2!42998)) )
))
(declare-fun maxPrefix!4049 (LexerInterface!6857 List!44651 List!44650) Option!9576)

(declare-fun apply!10341 (TokenValueInjection!14424 BalanceConc!26552) TokenValue!7498)

(declare-fun size!32948 (List!44650) Int)

(declare-fun getSuffix!2532 (List!44650 List!44650) List!44650)

(assert (=> b!4119029 (= res!1682590 (= (maxPrefix!4049 thiss!25645 rules!3756 input!3238) (Some!9575 (tuple2!42999 (Token!13467 (apply!10341 (transformation!7268 r!4008) lt!1469445) r!4008 (size!32948 p!2912) p!2912) (getSuffix!2532 input!3238 p!2912)))))))

(declare-fun lt!1469441 () Unit!63881)

(declare-fun lemmaSemiInverse!2126 (TokenValueInjection!14424 BalanceConc!26552) Unit!63881)

(assert (=> b!4119029 (= lt!1469441 (lemmaSemiInverse!2126 (transformation!7268 r!4008) lt!1469445))))

(declare-fun seqFromList!5385 (List!44650) BalanceConc!26552)

(assert (=> b!4119029 (= lt!1469445 (seqFromList!5385 p!2912))))

(declare-fun b!4119030 () Bool)

(declare-fun e!2555855 () Bool)

(declare-fun lt!1469442 () Option!9576)

(declare-fun isDefined!7224 (Option!9576) Bool)

(assert (=> b!4119030 (= e!2555855 (isDefined!7224 lt!1469442))))

(assert (=> b!4119031 (= e!2555851 (and tp!1255180 tp!1255184))))

(declare-fun b!4119032 () Bool)

(assert (=> b!4119032 (= e!2555858 e!2555855)))

(declare-fun res!1682596 () Bool)

(assert (=> b!4119032 (=> res!1682596 e!2555855)))

(declare-fun isEmpty!26480 (Option!9576) Bool)

(assert (=> b!4119032 (= res!1682596 (isEmpty!26480 lt!1469442))))

(declare-fun maxPrefixOneRule!2999 (LexerInterface!6857 Rule!14336 List!44650) Option!9576)

(assert (=> b!4119032 (= lt!1469442 (maxPrefixOneRule!2999 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4119032 (not (= rBis!149 r!4008))))

(declare-fun lt!1469443 () Unit!63881)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!8 (LexerInterface!6857 List!44651 Rule!14336 Rule!14336) Unit!63881)

(assert (=> b!4119032 (= lt!1469443 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!8 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6419 (List!44651) List!44651)

(assert (=> b!4119032 (contains!8940 (tail!6419 rules!3756) r!4008)))

(declare-fun lt!1469444 () Unit!63881)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!10 (List!44651 Rule!14336 Rule!14336) Unit!63881)

(assert (=> b!4119032 (= lt!1469444 (lemmaGetIndexBiggerAndHeadEqThenTailContains!10 rules!3756 rBis!149 r!4008))))

(declare-fun b!4119033 () Bool)

(declare-fun res!1682602 () Bool)

(assert (=> b!4119033 (=> (not res!1682602) (not e!2555847))))

(declare-fun getIndex!616 (List!44651 Rule!14336) Int)

(assert (=> b!4119033 (= res!1682602 (< (getIndex!616 rules!3756 rBis!149) (getIndex!616 rules!3756 r!4008)))))

(declare-fun b!4119034 () Bool)

(declare-fun res!1682594 () Bool)

(assert (=> b!4119034 (=> (not res!1682594) (not e!2555846))))

(declare-fun rulesInvariant!6154 (LexerInterface!6857 List!44651) Bool)

(assert (=> b!4119034 (= res!1682594 (rulesInvariant!6154 thiss!25645 rules!3756))))

(declare-fun b!4119035 () Bool)

(declare-fun res!1682599 () Bool)

(assert (=> b!4119035 (=> (not res!1682599) (not e!2555846))))

(assert (=> b!4119035 (= res!1682599 (contains!8940 rules!3756 rBis!149))))

(declare-fun b!4119036 () Bool)

(declare-fun tp!1255186 () Bool)

(assert (=> b!4119036 (= e!2555860 (and e!2555848 tp!1255186))))

(assert (= (and start!390434 res!1682601) b!4119027))

(assert (= (and b!4119027 res!1682595) b!4119023))

(assert (= (and b!4119023 res!1682600) b!4119034))

(assert (= (and b!4119034 res!1682594) b!4119019))

(assert (= (and b!4119019 res!1682591) b!4119035))

(assert (= (and b!4119035 res!1682599) b!4119021))

(assert (= (and b!4119021 res!1682598) b!4119029))

(assert (= (and b!4119029 res!1682590) b!4119018))

(assert (= (and b!4119018 res!1682592) b!4119033))

(assert (= (and b!4119033 res!1682602) b!4119026))

(assert (= (and b!4119026 res!1682597) b!4119028))

(assert (= (and b!4119028 (not res!1682593)) b!4119032))

(assert (= (and b!4119032 (not res!1682596)) b!4119030))

(assert (= b!4119022 b!4119031))

(assert (= b!4119036 b!4119022))

(assert (= (and start!390434 ((_ is Cons!44527) rules!3756)) b!4119036))

(assert (= (and start!390434 ((_ is Cons!44526) p!2912)) b!4119016))

(assert (= b!4119024 b!4119025))

(assert (= start!390434 b!4119024))

(assert (= (and start!390434 ((_ is Cons!44526) input!3238)) b!4119017))

(assert (= b!4119015 b!4119020))

(assert (= start!390434 b!4119015))

(declare-fun m!4718361 () Bool)

(assert (=> b!4119030 m!4718361))

(declare-fun m!4718363 () Bool)

(assert (=> b!4119018 m!4718363))

(declare-fun m!4718365 () Bool)

(assert (=> b!4119024 m!4718365))

(declare-fun m!4718367 () Bool)

(assert (=> b!4119024 m!4718367))

(declare-fun m!4718369 () Bool)

(assert (=> b!4119033 m!4718369))

(declare-fun m!4718371 () Bool)

(assert (=> b!4119033 m!4718371))

(declare-fun m!4718373 () Bool)

(assert (=> b!4119022 m!4718373))

(declare-fun m!4718375 () Bool)

(assert (=> b!4119022 m!4718375))

(declare-fun m!4718377 () Bool)

(assert (=> b!4119029 m!4718377))

(declare-fun m!4718379 () Bool)

(assert (=> b!4119029 m!4718379))

(declare-fun m!4718381 () Bool)

(assert (=> b!4119029 m!4718381))

(declare-fun m!4718383 () Bool)

(assert (=> b!4119029 m!4718383))

(declare-fun m!4718385 () Bool)

(assert (=> b!4119029 m!4718385))

(declare-fun m!4718387 () Bool)

(assert (=> b!4119029 m!4718387))

(declare-fun m!4718389 () Bool)

(assert (=> b!4119021 m!4718389))

(declare-fun m!4718391 () Bool)

(assert (=> b!4119026 m!4718391))

(declare-fun m!4718393 () Bool)

(assert (=> b!4119019 m!4718393))

(declare-fun m!4718395 () Bool)

(assert (=> b!4119032 m!4718395))

(declare-fun m!4718397 () Bool)

(assert (=> b!4119032 m!4718397))

(declare-fun m!4718399 () Bool)

(assert (=> b!4119032 m!4718399))

(assert (=> b!4119032 m!4718395))

(declare-fun m!4718401 () Bool)

(assert (=> b!4119032 m!4718401))

(declare-fun m!4718403 () Bool)

(assert (=> b!4119032 m!4718403))

(declare-fun m!4718405 () Bool)

(assert (=> b!4119032 m!4718405))

(declare-fun m!4718407 () Bool)

(assert (=> b!4119028 m!4718407))

(declare-fun m!4718409 () Bool)

(assert (=> b!4119028 m!4718409))

(declare-fun m!4718411 () Bool)

(assert (=> b!4119028 m!4718411))

(declare-fun m!4718413 () Bool)

(assert (=> b!4119035 m!4718413))

(declare-fun m!4718415 () Bool)

(assert (=> b!4119034 m!4718415))

(declare-fun m!4718417 () Bool)

(assert (=> b!4119027 m!4718417))

(declare-fun m!4718419 () Bool)

(assert (=> b!4119023 m!4718419))

(declare-fun m!4718421 () Bool)

(assert (=> b!4119015 m!4718421))

(declare-fun m!4718423 () Bool)

(assert (=> b!4119015 m!4718423))

(check-sat (not b_next!117075) (not b_next!117077) (not b!4119023) (not b!4119024) (not b_next!117083) (not b!4119022) (not b!4119015) (not b_next!117085) b_and!318499 (not b!4119021) (not b!4119032) (not b!4119026) (not b!4119029) b_and!318489 (not b!4119036) (not b!4119016) (not b_next!117079) tp_is_empty!21269 (not b!4119030) (not b!4119033) (not b_next!117081) (not b!4119035) (not b!4119019) b_and!318497 (not b!4119017) b_and!318493 (not b!4119027) b_and!318491 b_and!318495 (not b!4119018) (not b!4119034) (not b!4119028))
(check-sat b_and!318489 (not b_next!117079) (not b_next!117075) (not b_next!117077) (not b_next!117081) (not b_next!117083) b_and!318497 b_and!318493 (not b_next!117085) b_and!318499 b_and!318491 b_and!318495)
(get-model)

(declare-fun d!1221287 () Bool)

(assert (=> d!1221287 (= (isDefined!7224 lt!1469442) (not (isEmpty!26480 lt!1469442)))))

(declare-fun bs!594655 () Bool)

(assert (= bs!594655 d!1221287))

(assert (=> bs!594655 m!4718401))

(assert (=> b!4119030 d!1221287))

(declare-fun d!1221291 () Bool)

(declare-fun lt!1469452 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6864 (List!44651) (InoxSet Rule!14336))

(assert (=> d!1221291 (= lt!1469452 (select (content!6864 rules!3756) r!4008))))

(declare-fun e!2555872 () Bool)

(assert (=> d!1221291 (= lt!1469452 e!2555872)))

(declare-fun res!1682621 () Bool)

(assert (=> d!1221291 (=> (not res!1682621) (not e!2555872))))

(assert (=> d!1221291 (= res!1682621 ((_ is Cons!44527) rules!3756))))

(assert (=> d!1221291 (= (contains!8940 rules!3756 r!4008) lt!1469452)))

(declare-fun b!4119047 () Bool)

(declare-fun e!2555871 () Bool)

(assert (=> b!4119047 (= e!2555872 e!2555871)))

(declare-fun res!1682620 () Bool)

(assert (=> b!4119047 (=> res!1682620 e!2555871)))

(assert (=> b!4119047 (= res!1682620 (= (h!49947 rules!3756) r!4008))))

(declare-fun b!4119048 () Bool)

(assert (=> b!4119048 (= e!2555871 (contains!8940 (t!340586 rules!3756) r!4008))))

(assert (= (and d!1221291 res!1682621) b!4119047))

(assert (= (and b!4119047 (not res!1682620)) b!4119048))

(declare-fun m!4718431 () Bool)

(assert (=> d!1221291 m!4718431))

(declare-fun m!4718433 () Bool)

(assert (=> d!1221291 m!4718433))

(declare-fun m!4718435 () Bool)

(assert (=> b!4119048 m!4718435))

(assert (=> b!4119019 d!1221291))

(declare-fun b!4119109 () Bool)

(declare-fun e!2555907 () Bool)

(assert (=> b!4119109 (= e!2555907 true)))

(declare-fun d!1221297 () Bool)

(assert (=> d!1221297 e!2555907))

(assert (= d!1221297 b!4119109))

(declare-fun order!23405 () Int)

(declare-fun order!23407 () Int)

(declare-fun lambda!128661 () Int)

(declare-fun dynLambda!19013 (Int Int) Int)

(declare-fun dynLambda!19014 (Int Int) Int)

(assert (=> b!4119109 (< (dynLambda!19013 order!23405 (toValue!9920 (transformation!7268 r!4008))) (dynLambda!19014 order!23407 lambda!128661))))

(declare-fun order!23409 () Int)

(declare-fun dynLambda!19015 (Int Int) Int)

(assert (=> b!4119109 (< (dynLambda!19015 order!23409 (toChars!9779 (transformation!7268 r!4008))) (dynLambda!19014 order!23407 lambda!128661))))

(declare-fun list!16341 (BalanceConc!26552) List!44650)

(declare-fun dynLambda!19016 (Int TokenValue!7498) BalanceConc!26552)

(declare-fun dynLambda!19017 (Int BalanceConc!26552) TokenValue!7498)

(assert (=> d!1221297 (= (list!16341 (dynLambda!19016 (toChars!9779 (transformation!7268 r!4008)) (dynLambda!19017 (toValue!9920 (transformation!7268 r!4008)) lt!1469445))) (list!16341 lt!1469445))))

(declare-fun lt!1469482 () Unit!63881)

(declare-fun ForallOf!913 (Int BalanceConc!26552) Unit!63881)

(assert (=> d!1221297 (= lt!1469482 (ForallOf!913 lambda!128661 lt!1469445))))

(assert (=> d!1221297 (= (lemmaSemiInverse!2126 (transformation!7268 r!4008) lt!1469445) lt!1469482)))

(declare-fun b_lambda!120845 () Bool)

(assert (=> (not b_lambda!120845) (not d!1221297)))

(declare-fun tb!247171 () Bool)

(declare-fun t!340600 () Bool)

(assert (=> (and b!4119031 (= (toChars!9779 (transformation!7268 (h!49947 rules!3756))) (toChars!9779 (transformation!7268 r!4008))) t!340600) tb!247171))

(declare-fun b!4119114 () Bool)

(declare-fun tp!1255194 () Bool)

(declare-fun e!2555910 () Bool)

(declare-fun inv!59112 (Conc!13479) Bool)

(assert (=> b!4119114 (= e!2555910 (and (inv!59112 (c!707392 (dynLambda!19016 (toChars!9779 (transformation!7268 r!4008)) (dynLambda!19017 (toValue!9920 (transformation!7268 r!4008)) lt!1469445)))) tp!1255194))))

(declare-fun result!300260 () Bool)

(declare-fun inv!59113 (BalanceConc!26552) Bool)

(assert (=> tb!247171 (= result!300260 (and (inv!59113 (dynLambda!19016 (toChars!9779 (transformation!7268 r!4008)) (dynLambda!19017 (toValue!9920 (transformation!7268 r!4008)) lt!1469445))) e!2555910))))

(assert (= tb!247171 b!4119114))

(declare-fun m!4718517 () Bool)

(assert (=> b!4119114 m!4718517))

(declare-fun m!4718519 () Bool)

(assert (=> tb!247171 m!4718519))

(assert (=> d!1221297 t!340600))

(declare-fun b_and!318519 () Bool)

(assert (= b_and!318491 (and (=> t!340600 result!300260) b_and!318519)))

(declare-fun t!340602 () Bool)

(declare-fun tb!247173 () Bool)

(assert (=> (and b!4119025 (= (toChars!9779 (transformation!7268 r!4008)) (toChars!9779 (transformation!7268 r!4008))) t!340602) tb!247173))

(declare-fun result!300264 () Bool)

(assert (= result!300264 result!300260))

(assert (=> d!1221297 t!340602))

(declare-fun b_and!318521 () Bool)

(assert (= b_and!318495 (and (=> t!340602 result!300264) b_and!318521)))

(declare-fun t!340604 () Bool)

(declare-fun tb!247175 () Bool)

(assert (=> (and b!4119020 (= (toChars!9779 (transformation!7268 rBis!149)) (toChars!9779 (transformation!7268 r!4008))) t!340604) tb!247175))

(declare-fun result!300266 () Bool)

(assert (= result!300266 result!300260))

(assert (=> d!1221297 t!340604))

(declare-fun b_and!318523 () Bool)

(assert (= b_and!318499 (and (=> t!340604 result!300266) b_and!318523)))

(declare-fun b_lambda!120847 () Bool)

(assert (=> (not b_lambda!120847) (not d!1221297)))

(declare-fun t!340606 () Bool)

(declare-fun tb!247177 () Bool)

(assert (=> (and b!4119031 (= (toValue!9920 (transformation!7268 (h!49947 rules!3756))) (toValue!9920 (transformation!7268 r!4008))) t!340606) tb!247177))

(declare-fun result!300268 () Bool)

(declare-fun inv!21 (TokenValue!7498) Bool)

(assert (=> tb!247177 (= result!300268 (inv!21 (dynLambda!19017 (toValue!9920 (transformation!7268 r!4008)) lt!1469445)))))

(declare-fun m!4718521 () Bool)

(assert (=> tb!247177 m!4718521))

(assert (=> d!1221297 t!340606))

(declare-fun b_and!318525 () Bool)

(assert (= b_and!318489 (and (=> t!340606 result!300268) b_and!318525)))

(declare-fun t!340608 () Bool)

(declare-fun tb!247179 () Bool)

(assert (=> (and b!4119025 (= (toValue!9920 (transformation!7268 r!4008)) (toValue!9920 (transformation!7268 r!4008))) t!340608) tb!247179))

(declare-fun result!300272 () Bool)

(assert (= result!300272 result!300268))

(assert (=> d!1221297 t!340608))

(declare-fun b_and!318527 () Bool)

(assert (= b_and!318493 (and (=> t!340608 result!300272) b_and!318527)))

(declare-fun t!340610 () Bool)

(declare-fun tb!247181 () Bool)

(assert (=> (and b!4119020 (= (toValue!9920 (transformation!7268 rBis!149)) (toValue!9920 (transformation!7268 r!4008))) t!340610) tb!247181))

(declare-fun result!300274 () Bool)

(assert (= result!300274 result!300268))

(assert (=> d!1221297 t!340610))

(declare-fun b_and!318529 () Bool)

(assert (= b_and!318497 (and (=> t!340610 result!300274) b_and!318529)))

(declare-fun m!4718523 () Bool)

(assert (=> d!1221297 m!4718523))

(declare-fun m!4718525 () Bool)

(assert (=> d!1221297 m!4718525))

(declare-fun m!4718527 () Bool)

(assert (=> d!1221297 m!4718527))

(declare-fun m!4718529 () Bool)

(assert (=> d!1221297 m!4718529))

(declare-fun m!4718531 () Bool)

(assert (=> d!1221297 m!4718531))

(assert (=> d!1221297 m!4718531))

(assert (=> d!1221297 m!4718527))

(assert (=> b!4119029 d!1221297))

(declare-fun d!1221319 () Bool)

(declare-fun lt!1469486 () List!44650)

(declare-fun ++!11546 (List!44650 List!44650) List!44650)

(assert (=> d!1221319 (= (++!11546 p!2912 lt!1469486) input!3238)))

(declare-fun e!2555916 () List!44650)

(assert (=> d!1221319 (= lt!1469486 e!2555916)))

(declare-fun c!707404 () Bool)

(assert (=> d!1221319 (= c!707404 ((_ is Cons!44526) p!2912))))

(assert (=> d!1221319 (>= (size!32948 input!3238) (size!32948 p!2912))))

(assert (=> d!1221319 (= (getSuffix!2532 input!3238 p!2912) lt!1469486)))

(declare-fun b!4119121 () Bool)

(declare-fun tail!6421 (List!44650) List!44650)

(assert (=> b!4119121 (= e!2555916 (getSuffix!2532 (tail!6421 input!3238) (t!340585 p!2912)))))

(declare-fun b!4119122 () Bool)

(assert (=> b!4119122 (= e!2555916 input!3238)))

(assert (= (and d!1221319 c!707404) b!4119121))

(assert (= (and d!1221319 (not c!707404)) b!4119122))

(declare-fun m!4718533 () Bool)

(assert (=> d!1221319 m!4718533))

(declare-fun m!4718535 () Bool)

(assert (=> d!1221319 m!4718535))

(assert (=> d!1221319 m!4718377))

(declare-fun m!4718537 () Bool)

(assert (=> b!4119121 m!4718537))

(assert (=> b!4119121 m!4718537))

(declare-fun m!4718539 () Bool)

(assert (=> b!4119121 m!4718539))

(assert (=> b!4119029 d!1221319))

(declare-fun b!4119174 () Bool)

(declare-fun res!1682694 () Bool)

(declare-fun e!2555935 () Bool)

(assert (=> b!4119174 (=> (not res!1682694) (not e!2555935))))

(declare-fun lt!1469518 () Option!9576)

(declare-fun get!14520 (Option!9576) tuple2!42998)

(declare-fun charsOf!4890 (Token!13466) BalanceConc!26552)

(assert (=> b!4119174 (= res!1682694 (matchR!6004 (regex!7268 (rule!10336 (_1!24633 (get!14520 lt!1469518)))) (list!16341 (charsOf!4890 (_1!24633 (get!14520 lt!1469518))))))))

(declare-fun b!4119175 () Bool)

(declare-fun res!1682690 () Bool)

(assert (=> b!4119175 (=> (not res!1682690) (not e!2555935))))

(assert (=> b!4119175 (= res!1682690 (= (++!11546 (list!16341 (charsOf!4890 (_1!24633 (get!14520 lt!1469518)))) (_2!24633 (get!14520 lt!1469518))) input!3238))))

(declare-fun b!4119176 () Bool)

(declare-fun e!2555937 () Bool)

(assert (=> b!4119176 (= e!2555937 e!2555935)))

(declare-fun res!1682695 () Bool)

(assert (=> b!4119176 (=> (not res!1682695) (not e!2555935))))

(assert (=> b!4119176 (= res!1682695 (isDefined!7224 lt!1469518))))

(declare-fun d!1221321 () Bool)

(assert (=> d!1221321 e!2555937))

(declare-fun res!1682693 () Bool)

(assert (=> d!1221321 (=> res!1682693 e!2555937)))

(assert (=> d!1221321 (= res!1682693 (isEmpty!26480 lt!1469518))))

(declare-fun e!2555936 () Option!9576)

(assert (=> d!1221321 (= lt!1469518 e!2555936)))

(declare-fun c!707413 () Bool)

(assert (=> d!1221321 (= c!707413 (and ((_ is Cons!44527) rules!3756) ((_ is Nil!44527) (t!340586 rules!3756))))))

(declare-fun lt!1469516 () Unit!63881)

(declare-fun lt!1469519 () Unit!63881)

(assert (=> d!1221321 (= lt!1469516 lt!1469519)))

(assert (=> d!1221321 (isPrefix!4203 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2726 (List!44650 List!44650) Unit!63881)

(assert (=> d!1221321 (= lt!1469519 (lemmaIsPrefixRefl!2726 input!3238 input!3238))))

(declare-fun rulesValidInductive!2681 (LexerInterface!6857 List!44651) Bool)

(assert (=> d!1221321 (rulesValidInductive!2681 thiss!25645 rules!3756)))

(assert (=> d!1221321 (= (maxPrefix!4049 thiss!25645 rules!3756 input!3238) lt!1469518)))

(declare-fun b!4119177 () Bool)

(declare-fun lt!1469517 () Option!9576)

(declare-fun lt!1469515 () Option!9576)

(assert (=> b!4119177 (= e!2555936 (ite (and ((_ is None!9575) lt!1469517) ((_ is None!9575) lt!1469515)) None!9575 (ite ((_ is None!9575) lt!1469515) lt!1469517 (ite ((_ is None!9575) lt!1469517) lt!1469515 (ite (>= (size!32947 (_1!24633 (v!40155 lt!1469517))) (size!32947 (_1!24633 (v!40155 lt!1469515)))) lt!1469517 lt!1469515)))))))

(declare-fun call!289924 () Option!9576)

(assert (=> b!4119177 (= lt!1469517 call!289924)))

(assert (=> b!4119177 (= lt!1469515 (maxPrefix!4049 thiss!25645 (t!340586 rules!3756) input!3238))))

(declare-fun b!4119178 () Bool)

(declare-fun res!1682691 () Bool)

(assert (=> b!4119178 (=> (not res!1682691) (not e!2555935))))

(assert (=> b!4119178 (= res!1682691 (= (value!227692 (_1!24633 (get!14520 lt!1469518))) (apply!10341 (transformation!7268 (rule!10336 (_1!24633 (get!14520 lt!1469518)))) (seqFromList!5385 (originalCharacters!7764 (_1!24633 (get!14520 lt!1469518)))))))))

(declare-fun b!4119179 () Bool)

(declare-fun res!1682689 () Bool)

(assert (=> b!4119179 (=> (not res!1682689) (not e!2555935))))

(assert (=> b!4119179 (= res!1682689 (< (size!32948 (_2!24633 (get!14520 lt!1469518))) (size!32948 input!3238)))))

(declare-fun bm!289919 () Bool)

(assert (=> bm!289919 (= call!289924 (maxPrefixOneRule!2999 thiss!25645 (h!49947 rules!3756) input!3238))))

(declare-fun b!4119180 () Bool)

(assert (=> b!4119180 (= e!2555935 (contains!8940 rules!3756 (rule!10336 (_1!24633 (get!14520 lt!1469518)))))))

(declare-fun b!4119181 () Bool)

(declare-fun res!1682692 () Bool)

(assert (=> b!4119181 (=> (not res!1682692) (not e!2555935))))

(assert (=> b!4119181 (= res!1682692 (= (list!16341 (charsOf!4890 (_1!24633 (get!14520 lt!1469518)))) (originalCharacters!7764 (_1!24633 (get!14520 lt!1469518)))))))

(declare-fun b!4119182 () Bool)

(assert (=> b!4119182 (= e!2555936 call!289924)))

(assert (= (and d!1221321 c!707413) b!4119182))

(assert (= (and d!1221321 (not c!707413)) b!4119177))

(assert (= (or b!4119182 b!4119177) bm!289919))

(assert (= (and d!1221321 (not res!1682693)) b!4119176))

(assert (= (and b!4119176 res!1682695) b!4119181))

(assert (= (and b!4119181 res!1682692) b!4119179))

(assert (= (and b!4119179 res!1682689) b!4119175))

(assert (= (and b!4119175 res!1682690) b!4119178))

(assert (= (and b!4119178 res!1682691) b!4119174))

(assert (= (and b!4119174 res!1682694) b!4119180))

(declare-fun m!4718577 () Bool)

(assert (=> b!4119176 m!4718577))

(declare-fun m!4718579 () Bool)

(assert (=> d!1221321 m!4718579))

(declare-fun m!4718581 () Bool)

(assert (=> d!1221321 m!4718581))

(declare-fun m!4718583 () Bool)

(assert (=> d!1221321 m!4718583))

(declare-fun m!4718585 () Bool)

(assert (=> d!1221321 m!4718585))

(declare-fun m!4718587 () Bool)

(assert (=> b!4119175 m!4718587))

(declare-fun m!4718589 () Bool)

(assert (=> b!4119175 m!4718589))

(assert (=> b!4119175 m!4718589))

(declare-fun m!4718591 () Bool)

(assert (=> b!4119175 m!4718591))

(assert (=> b!4119175 m!4718591))

(declare-fun m!4718593 () Bool)

(assert (=> b!4119175 m!4718593))

(assert (=> b!4119179 m!4718587))

(declare-fun m!4718595 () Bool)

(assert (=> b!4119179 m!4718595))

(assert (=> b!4119179 m!4718535))

(assert (=> b!4119181 m!4718587))

(assert (=> b!4119181 m!4718589))

(assert (=> b!4119181 m!4718589))

(assert (=> b!4119181 m!4718591))

(assert (=> b!4119178 m!4718587))

(declare-fun m!4718597 () Bool)

(assert (=> b!4119178 m!4718597))

(assert (=> b!4119178 m!4718597))

(declare-fun m!4718599 () Bool)

(assert (=> b!4119178 m!4718599))

(assert (=> b!4119180 m!4718587))

(declare-fun m!4718601 () Bool)

(assert (=> b!4119180 m!4718601))

(assert (=> b!4119174 m!4718587))

(assert (=> b!4119174 m!4718589))

(assert (=> b!4119174 m!4718589))

(assert (=> b!4119174 m!4718591))

(assert (=> b!4119174 m!4718591))

(declare-fun m!4718603 () Bool)

(assert (=> b!4119174 m!4718603))

(declare-fun m!4718605 () Bool)

(assert (=> bm!289919 m!4718605))

(declare-fun m!4718607 () Bool)

(assert (=> b!4119177 m!4718607))

(assert (=> b!4119029 d!1221321))

(declare-fun d!1221329 () Bool)

(declare-fun fromListB!2463 (List!44650) BalanceConc!26552)

(assert (=> d!1221329 (= (seqFromList!5385 p!2912) (fromListB!2463 p!2912))))

(declare-fun bs!594658 () Bool)

(assert (= bs!594658 d!1221329))

(declare-fun m!4718609 () Bool)

(assert (=> bs!594658 m!4718609))

(assert (=> b!4119029 d!1221329))

(declare-fun d!1221331 () Bool)

(assert (=> d!1221331 (= (apply!10341 (transformation!7268 r!4008) lt!1469445) (dynLambda!19017 (toValue!9920 (transformation!7268 r!4008)) lt!1469445))))

(declare-fun b_lambda!120849 () Bool)

(assert (=> (not b_lambda!120849) (not d!1221331)))

(assert (=> d!1221331 t!340606))

(declare-fun b_and!318531 () Bool)

(assert (= b_and!318525 (and (=> t!340606 result!300268) b_and!318531)))

(assert (=> d!1221331 t!340608))

(declare-fun b_and!318533 () Bool)

(assert (= b_and!318527 (and (=> t!340608 result!300272) b_and!318533)))

(assert (=> d!1221331 t!340610))

(declare-fun b_and!318535 () Bool)

(assert (= b_and!318529 (and (=> t!340610 result!300274) b_and!318535)))

(assert (=> d!1221331 m!4718531))

(assert (=> b!4119029 d!1221331))

(declare-fun d!1221333 () Bool)

(declare-fun lt!1469524 () Int)

(assert (=> d!1221333 (>= lt!1469524 0)))

(declare-fun e!2555954 () Int)

(assert (=> d!1221333 (= lt!1469524 e!2555954)))

(declare-fun c!707422 () Bool)

(assert (=> d!1221333 (= c!707422 ((_ is Nil!44526) p!2912))))

(assert (=> d!1221333 (= (size!32948 p!2912) lt!1469524)))

(declare-fun b!4119215 () Bool)

(assert (=> b!4119215 (= e!2555954 0)))

(declare-fun b!4119216 () Bool)

(assert (=> b!4119216 (= e!2555954 (+ 1 (size!32948 (t!340585 p!2912))))))

(assert (= (and d!1221333 c!707422) b!4119215))

(assert (= (and d!1221333 (not c!707422)) b!4119216))

(declare-fun m!4718611 () Bool)

(assert (=> b!4119216 m!4718611))

(assert (=> b!4119029 d!1221333))

(declare-fun d!1221335 () Bool)

(assert (=> d!1221335 (= (inv!59107 (tag!8128 (h!49947 rules!3756))) (= (mod (str.len (value!227691 (tag!8128 (h!49947 rules!3756)))) 2) 0))))

(assert (=> b!4119022 d!1221335))

(declare-fun d!1221337 () Bool)

(declare-fun res!1682722 () Bool)

(declare-fun e!2555964 () Bool)

(assert (=> d!1221337 (=> (not res!1682722) (not e!2555964))))

(declare-fun semiInverseModEq!3130 (Int Int) Bool)

(assert (=> d!1221337 (= res!1682722 (semiInverseModEq!3130 (toChars!9779 (transformation!7268 (h!49947 rules!3756))) (toValue!9920 (transformation!7268 (h!49947 rules!3756)))))))

(assert (=> d!1221337 (= (inv!59109 (transformation!7268 (h!49947 rules!3756))) e!2555964)))

(declare-fun b!4119233 () Bool)

(declare-fun equivClasses!3029 (Int Int) Bool)

(assert (=> b!4119233 (= e!2555964 (equivClasses!3029 (toChars!9779 (transformation!7268 (h!49947 rules!3756))) (toValue!9920 (transformation!7268 (h!49947 rules!3756)))))))

(assert (= (and d!1221337 res!1682722) b!4119233))

(declare-fun m!4718623 () Bool)

(assert (=> d!1221337 m!4718623))

(declare-fun m!4718625 () Bool)

(assert (=> b!4119233 m!4718625))

(assert (=> b!4119022 d!1221337))

(declare-fun d!1221343 () Bool)

(declare-fun lt!1469526 () Bool)

(assert (=> d!1221343 (= lt!1469526 (select (content!6864 (tail!6419 rules!3756)) r!4008))))

(declare-fun e!2555966 () Bool)

(assert (=> d!1221343 (= lt!1469526 e!2555966)))

(declare-fun res!1682724 () Bool)

(assert (=> d!1221343 (=> (not res!1682724) (not e!2555966))))

(assert (=> d!1221343 (= res!1682724 ((_ is Cons!44527) (tail!6419 rules!3756)))))

(assert (=> d!1221343 (= (contains!8940 (tail!6419 rules!3756) r!4008) lt!1469526)))

(declare-fun b!4119234 () Bool)

(declare-fun e!2555965 () Bool)

(assert (=> b!4119234 (= e!2555966 e!2555965)))

(declare-fun res!1682723 () Bool)

(assert (=> b!4119234 (=> res!1682723 e!2555965)))

(assert (=> b!4119234 (= res!1682723 (= (h!49947 (tail!6419 rules!3756)) r!4008))))

(declare-fun b!4119235 () Bool)

(assert (=> b!4119235 (= e!2555965 (contains!8940 (t!340586 (tail!6419 rules!3756)) r!4008))))

(assert (= (and d!1221343 res!1682724) b!4119234))

(assert (= (and b!4119234 (not res!1682723)) b!4119235))

(assert (=> d!1221343 m!4718395))

(declare-fun m!4718627 () Bool)

(assert (=> d!1221343 m!4718627))

(declare-fun m!4718629 () Bool)

(assert (=> d!1221343 m!4718629))

(declare-fun m!4718631 () Bool)

(assert (=> b!4119235 m!4718631))

(assert (=> b!4119032 d!1221343))

(declare-fun d!1221345 () Bool)

(assert (=> d!1221345 (= (tail!6419 rules!3756) (t!340586 rules!3756))))

(assert (=> b!4119032 d!1221345))

(declare-fun d!1221347 () Bool)

(assert (=> d!1221347 (= (isEmpty!26480 lt!1469442) (not ((_ is Some!9575) lt!1469442)))))

(assert (=> b!4119032 d!1221347))

(declare-fun d!1221349 () Bool)

(assert (=> d!1221349 (contains!8940 (tail!6419 rules!3756) r!4008)))

(declare-fun lt!1469532 () Unit!63881)

(declare-fun choose!25169 (List!44651 Rule!14336 Rule!14336) Unit!63881)

(assert (=> d!1221349 (= lt!1469532 (choose!25169 rules!3756 rBis!149 r!4008))))

(declare-fun e!2555976 () Bool)

(assert (=> d!1221349 e!2555976))

(declare-fun res!1682727 () Bool)

(assert (=> d!1221349 (=> (not res!1682727) (not e!2555976))))

(assert (=> d!1221349 (= res!1682727 (contains!8940 rules!3756 rBis!149))))

(assert (=> d!1221349 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!10 rules!3756 rBis!149 r!4008) lt!1469532)))

(declare-fun b!4119250 () Bool)

(assert (=> b!4119250 (= e!2555976 (contains!8940 rules!3756 r!4008))))

(assert (= (and d!1221349 res!1682727) b!4119250))

(assert (=> d!1221349 m!4718395))

(assert (=> d!1221349 m!4718395))

(assert (=> d!1221349 m!4718397))

(declare-fun m!4718637 () Bool)

(assert (=> d!1221349 m!4718637))

(assert (=> d!1221349 m!4718413))

(assert (=> b!4119250 m!4718393))

(assert (=> b!4119032 d!1221349))

(declare-fun b!4119336 () Bool)

(declare-fun e!2556031 () Option!9576)

(assert (=> b!4119336 (= e!2556031 None!9575)))

(declare-fun b!4119337 () Bool)

(declare-fun res!1682770 () Bool)

(declare-fun e!2556028 () Bool)

(assert (=> b!4119337 (=> (not res!1682770) (not e!2556028))))

(declare-fun lt!1469553 () Option!9576)

(assert (=> b!4119337 (= res!1682770 (< (size!32948 (_2!24633 (get!14520 lt!1469553))) (size!32948 input!3238)))))

(declare-fun b!4119338 () Bool)

(declare-fun e!2556030 () Bool)

(declare-datatypes ((tuple2!43002 0))(
  ( (tuple2!43003 (_1!24635 List!44650) (_2!24635 List!44650)) )
))
(declare-fun findLongestMatchInner!1485 (Regex!12173 List!44650 Int List!44650 List!44650 Int) tuple2!43002)

(assert (=> b!4119338 (= e!2556030 (matchR!6004 (regex!7268 rBis!149) (_1!24635 (findLongestMatchInner!1485 (regex!7268 rBis!149) Nil!44526 (size!32948 Nil!44526) input!3238 input!3238 (size!32948 input!3238)))))))

(declare-fun b!4119339 () Bool)

(declare-fun res!1682771 () Bool)

(assert (=> b!4119339 (=> (not res!1682771) (not e!2556028))))

(assert (=> b!4119339 (= res!1682771 (= (value!227692 (_1!24633 (get!14520 lt!1469553))) (apply!10341 (transformation!7268 (rule!10336 (_1!24633 (get!14520 lt!1469553)))) (seqFromList!5385 (originalCharacters!7764 (_1!24633 (get!14520 lt!1469553)))))))))

(declare-fun b!4119340 () Bool)

(declare-fun res!1682767 () Bool)

(assert (=> b!4119340 (=> (not res!1682767) (not e!2556028))))

(assert (=> b!4119340 (= res!1682767 (= (++!11546 (list!16341 (charsOf!4890 (_1!24633 (get!14520 lt!1469553)))) (_2!24633 (get!14520 lt!1469553))) input!3238))))

(declare-fun b!4119341 () Bool)

(declare-fun lt!1469556 () tuple2!43002)

(declare-fun size!32950 (BalanceConc!26552) Int)

(assert (=> b!4119341 (= e!2556031 (Some!9575 (tuple2!42999 (Token!13467 (apply!10341 (transformation!7268 rBis!149) (seqFromList!5385 (_1!24635 lt!1469556))) rBis!149 (size!32950 (seqFromList!5385 (_1!24635 lt!1469556))) (_1!24635 lt!1469556)) (_2!24635 lt!1469556))))))

(declare-fun lt!1469552 () Unit!63881)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1458 (Regex!12173 List!44650) Unit!63881)

(assert (=> b!4119341 (= lt!1469552 (longestMatchIsAcceptedByMatchOrIsEmpty!1458 (regex!7268 rBis!149) input!3238))))

(declare-fun res!1682768 () Bool)

(assert (=> b!4119341 (= res!1682768 (isEmpty!26478 (_1!24635 (findLongestMatchInner!1485 (regex!7268 rBis!149) Nil!44526 (size!32948 Nil!44526) input!3238 input!3238 (size!32948 input!3238)))))))

(assert (=> b!4119341 (=> res!1682768 e!2556030)))

(assert (=> b!4119341 e!2556030))

(declare-fun lt!1469555 () Unit!63881)

(assert (=> b!4119341 (= lt!1469555 lt!1469552)))

(declare-fun lt!1469554 () Unit!63881)

(assert (=> b!4119341 (= lt!1469554 (lemmaSemiInverse!2126 (transformation!7268 rBis!149) (seqFromList!5385 (_1!24635 lt!1469556))))))

(declare-fun d!1221355 () Bool)

(declare-fun e!2556029 () Bool)

(assert (=> d!1221355 e!2556029))

(declare-fun res!1682772 () Bool)

(assert (=> d!1221355 (=> res!1682772 e!2556029)))

(assert (=> d!1221355 (= res!1682772 (isEmpty!26480 lt!1469553))))

(assert (=> d!1221355 (= lt!1469553 e!2556031)))

(declare-fun c!707436 () Bool)

(assert (=> d!1221355 (= c!707436 (isEmpty!26478 (_1!24635 lt!1469556)))))

(declare-fun findLongestMatch!1398 (Regex!12173 List!44650) tuple2!43002)

(assert (=> d!1221355 (= lt!1469556 (findLongestMatch!1398 (regex!7268 rBis!149) input!3238))))

(assert (=> d!1221355 (ruleValid!3076 thiss!25645 rBis!149)))

(assert (=> d!1221355 (= (maxPrefixOneRule!2999 thiss!25645 rBis!149 input!3238) lt!1469553)))

(declare-fun b!4119342 () Bool)

(assert (=> b!4119342 (= e!2556028 (= (size!32947 (_1!24633 (get!14520 lt!1469553))) (size!32948 (originalCharacters!7764 (_1!24633 (get!14520 lt!1469553))))))))

(declare-fun b!4119343 () Bool)

(declare-fun res!1682769 () Bool)

(assert (=> b!4119343 (=> (not res!1682769) (not e!2556028))))

(assert (=> b!4119343 (= res!1682769 (= (rule!10336 (_1!24633 (get!14520 lt!1469553))) rBis!149))))

(declare-fun b!4119344 () Bool)

(assert (=> b!4119344 (= e!2556029 e!2556028)))

(declare-fun res!1682766 () Bool)

(assert (=> b!4119344 (=> (not res!1682766) (not e!2556028))))

(assert (=> b!4119344 (= res!1682766 (matchR!6004 (regex!7268 rBis!149) (list!16341 (charsOf!4890 (_1!24633 (get!14520 lt!1469553))))))))

(assert (= (and d!1221355 c!707436) b!4119336))

(assert (= (and d!1221355 (not c!707436)) b!4119341))

(assert (= (and b!4119341 (not res!1682768)) b!4119338))

(assert (= (and d!1221355 (not res!1682772)) b!4119344))

(assert (= (and b!4119344 res!1682766) b!4119340))

(assert (= (and b!4119340 res!1682767) b!4119337))

(assert (= (and b!4119337 res!1682770) b!4119343))

(assert (= (and b!4119343 res!1682769) b!4119339))

(assert (= (and b!4119339 res!1682771) b!4119342))

(declare-fun m!4718675 () Bool)

(assert (=> b!4119343 m!4718675))

(assert (=> b!4119342 m!4718675))

(declare-fun m!4718677 () Bool)

(assert (=> b!4119342 m!4718677))

(declare-fun m!4718679 () Bool)

(assert (=> b!4119338 m!4718679))

(assert (=> b!4119338 m!4718535))

(assert (=> b!4119338 m!4718679))

(assert (=> b!4119338 m!4718535))

(declare-fun m!4718681 () Bool)

(assert (=> b!4119338 m!4718681))

(declare-fun m!4718683 () Bool)

(assert (=> b!4119338 m!4718683))

(assert (=> b!4119344 m!4718675))

(declare-fun m!4718685 () Bool)

(assert (=> b!4119344 m!4718685))

(assert (=> b!4119344 m!4718685))

(declare-fun m!4718687 () Bool)

(assert (=> b!4119344 m!4718687))

(assert (=> b!4119344 m!4718687))

(declare-fun m!4718689 () Bool)

(assert (=> b!4119344 m!4718689))

(declare-fun m!4718691 () Bool)

(assert (=> d!1221355 m!4718691))

(declare-fun m!4718693 () Bool)

(assert (=> d!1221355 m!4718693))

(declare-fun m!4718695 () Bool)

(assert (=> d!1221355 m!4718695))

(assert (=> d!1221355 m!4718409))

(assert (=> b!4119340 m!4718675))

(assert (=> b!4119340 m!4718685))

(assert (=> b!4119340 m!4718685))

(assert (=> b!4119340 m!4718687))

(assert (=> b!4119340 m!4718687))

(declare-fun m!4718697 () Bool)

(assert (=> b!4119340 m!4718697))

(assert (=> b!4119339 m!4718675))

(declare-fun m!4718699 () Bool)

(assert (=> b!4119339 m!4718699))

(assert (=> b!4119339 m!4718699))

(declare-fun m!4718701 () Bool)

(assert (=> b!4119339 m!4718701))

(declare-fun m!4718703 () Bool)

(assert (=> b!4119341 m!4718703))

(declare-fun m!4718705 () Bool)

(assert (=> b!4119341 m!4718705))

(declare-fun m!4718707 () Bool)

(assert (=> b!4119341 m!4718707))

(assert (=> b!4119341 m!4718679))

(assert (=> b!4119341 m!4718535))

(assert (=> b!4119341 m!4718681))

(assert (=> b!4119341 m!4718703))

(declare-fun m!4718709 () Bool)

(assert (=> b!4119341 m!4718709))

(assert (=> b!4119341 m!4718703))

(assert (=> b!4119341 m!4718679))

(assert (=> b!4119341 m!4718703))

(declare-fun m!4718711 () Bool)

(assert (=> b!4119341 m!4718711))

(assert (=> b!4119341 m!4718535))

(declare-fun m!4718713 () Bool)

(assert (=> b!4119341 m!4718713))

(assert (=> b!4119337 m!4718675))

(declare-fun m!4718715 () Bool)

(assert (=> b!4119337 m!4718715))

(assert (=> b!4119337 m!4718535))

(assert (=> b!4119032 d!1221355))

(declare-fun d!1221379 () Bool)

(assert (=> d!1221379 (not (= rBis!149 r!4008))))

(declare-fun lt!1469559 () Unit!63881)

(declare-fun choose!25170 (LexerInterface!6857 List!44651 Rule!14336 Rule!14336) Unit!63881)

(assert (=> d!1221379 (= lt!1469559 (choose!25170 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1221379 (contains!8940 rules!3756 rBis!149)))

(assert (=> d!1221379 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!8 thiss!25645 rules!3756 rBis!149 r!4008) lt!1469559)))

(declare-fun bs!594661 () Bool)

(assert (= bs!594661 d!1221379))

(declare-fun m!4718717 () Bool)

(assert (=> bs!594661 m!4718717))

(assert (=> bs!594661 m!4718413))

(assert (=> b!4119032 d!1221379))

(declare-fun d!1221381 () Bool)

(assert (=> d!1221381 (= (isEmpty!26478 p!2912) ((_ is Nil!44526) p!2912))))

(assert (=> b!4119021 d!1221381))

(declare-fun d!1221383 () Bool)

(declare-fun res!1682775 () Bool)

(declare-fun e!2556034 () Bool)

(assert (=> d!1221383 (=> (not res!1682775) (not e!2556034))))

(declare-fun rulesValid!2844 (LexerInterface!6857 List!44651) Bool)

(assert (=> d!1221383 (= res!1682775 (rulesValid!2844 thiss!25645 rules!3756))))

(assert (=> d!1221383 (= (rulesInvariant!6154 thiss!25645 rules!3756) e!2556034)))

(declare-fun b!4119347 () Bool)

(declare-datatypes ((List!44653 0))(
  ( (Nil!44529) (Cons!44529 (h!49949 String!51240) (t!340620 List!44653)) )
))
(declare-fun noDuplicateTag!2923 (LexerInterface!6857 List!44651 List!44653) Bool)

(assert (=> b!4119347 (= e!2556034 (noDuplicateTag!2923 thiss!25645 rules!3756 Nil!44529))))

(assert (= (and d!1221383 res!1682775) b!4119347))

(declare-fun m!4718719 () Bool)

(assert (=> d!1221383 m!4718719))

(declare-fun m!4718721 () Bool)

(assert (=> b!4119347 m!4718721))

(assert (=> b!4119034 d!1221383))

(declare-fun d!1221385 () Bool)

(assert (=> d!1221385 (= (isEmpty!26479 rules!3756) ((_ is Nil!44527) rules!3756))))

(assert (=> b!4119023 d!1221385))

(declare-fun b!4119356 () Bool)

(declare-fun e!2556041 () Int)

(assert (=> b!4119356 (= e!2556041 0)))

(declare-fun b!4119358 () Bool)

(declare-fun e!2556040 () Int)

(assert (=> b!4119358 (= e!2556040 (+ 1 (getIndex!616 (t!340586 rules!3756) rBis!149)))))

(declare-fun b!4119357 () Bool)

(assert (=> b!4119357 (= e!2556041 e!2556040)))

(declare-fun c!707441 () Bool)

(assert (=> b!4119357 (= c!707441 (and ((_ is Cons!44527) rules!3756) (not (= (h!49947 rules!3756) rBis!149))))))

(declare-fun b!4119359 () Bool)

(assert (=> b!4119359 (= e!2556040 (- 1))))

(declare-fun d!1221387 () Bool)

(declare-fun lt!1469562 () Int)

(assert (=> d!1221387 (>= lt!1469562 0)))

(assert (=> d!1221387 (= lt!1469562 e!2556041)))

(declare-fun c!707442 () Bool)

(assert (=> d!1221387 (= c!707442 (and ((_ is Cons!44527) rules!3756) (= (h!49947 rules!3756) rBis!149)))))

(assert (=> d!1221387 (contains!8940 rules!3756 rBis!149)))

(assert (=> d!1221387 (= (getIndex!616 rules!3756 rBis!149) lt!1469562)))

(assert (= (and d!1221387 c!707442) b!4119356))

(assert (= (and d!1221387 (not c!707442)) b!4119357))

(assert (= (and b!4119357 c!707441) b!4119358))

(assert (= (and b!4119357 (not c!707441)) b!4119359))

(declare-fun m!4718723 () Bool)

(assert (=> b!4119358 m!4718723))

(assert (=> d!1221387 m!4718413))

(assert (=> b!4119033 d!1221387))

(declare-fun b!4119360 () Bool)

(declare-fun e!2556043 () Int)

(assert (=> b!4119360 (= e!2556043 0)))

(declare-fun b!4119362 () Bool)

(declare-fun e!2556042 () Int)

(assert (=> b!4119362 (= e!2556042 (+ 1 (getIndex!616 (t!340586 rules!3756) r!4008)))))

(declare-fun b!4119361 () Bool)

(assert (=> b!4119361 (= e!2556043 e!2556042)))

(declare-fun c!707443 () Bool)

(assert (=> b!4119361 (= c!707443 (and ((_ is Cons!44527) rules!3756) (not (= (h!49947 rules!3756) r!4008))))))

(declare-fun b!4119363 () Bool)

(assert (=> b!4119363 (= e!2556042 (- 1))))

(declare-fun d!1221389 () Bool)

(declare-fun lt!1469563 () Int)

(assert (=> d!1221389 (>= lt!1469563 0)))

(assert (=> d!1221389 (= lt!1469563 e!2556043)))

(declare-fun c!707444 () Bool)

(assert (=> d!1221389 (= c!707444 (and ((_ is Cons!44527) rules!3756) (= (h!49947 rules!3756) r!4008)))))

(assert (=> d!1221389 (contains!8940 rules!3756 r!4008)))

(assert (=> d!1221389 (= (getIndex!616 rules!3756 r!4008) lt!1469563)))

(assert (= (and d!1221389 c!707444) b!4119360))

(assert (= (and d!1221389 (not c!707444)) b!4119361))

(assert (= (and b!4119361 c!707443) b!4119362))

(assert (= (and b!4119361 (not c!707443)) b!4119363))

(declare-fun m!4718725 () Bool)

(assert (=> b!4119362 m!4718725))

(assert (=> d!1221389 m!4718393))

(assert (=> b!4119033 d!1221389))

(declare-fun d!1221391 () Bool)

(declare-fun lt!1469564 () Bool)

(assert (=> d!1221391 (= lt!1469564 (select (content!6864 rules!3756) rBis!149))))

(declare-fun e!2556045 () Bool)

(assert (=> d!1221391 (= lt!1469564 e!2556045)))

(declare-fun res!1682777 () Bool)

(assert (=> d!1221391 (=> (not res!1682777) (not e!2556045))))

(assert (=> d!1221391 (= res!1682777 ((_ is Cons!44527) rules!3756))))

(assert (=> d!1221391 (= (contains!8940 rules!3756 rBis!149) lt!1469564)))

(declare-fun b!4119364 () Bool)

(declare-fun e!2556044 () Bool)

(assert (=> b!4119364 (= e!2556045 e!2556044)))

(declare-fun res!1682776 () Bool)

(assert (=> b!4119364 (=> res!1682776 e!2556044)))

(assert (=> b!4119364 (= res!1682776 (= (h!49947 rules!3756) rBis!149))))

(declare-fun b!4119365 () Bool)

(assert (=> b!4119365 (= e!2556044 (contains!8940 (t!340586 rules!3756) rBis!149))))

(assert (= (and d!1221391 res!1682777) b!4119364))

(assert (= (and b!4119364 (not res!1682776)) b!4119365))

(assert (=> d!1221391 m!4718431))

(declare-fun m!4718727 () Bool)

(assert (=> d!1221391 m!4718727))

(declare-fun m!4718729 () Bool)

(assert (=> b!4119365 m!4718729))

(assert (=> b!4119035 d!1221391))

(declare-fun d!1221393 () Bool)

(assert (=> d!1221393 (= (inv!59107 (tag!8128 r!4008)) (= (mod (str.len (value!227691 (tag!8128 r!4008))) 2) 0))))

(assert (=> b!4119024 d!1221393))

(declare-fun d!1221395 () Bool)

(declare-fun res!1682778 () Bool)

(declare-fun e!2556046 () Bool)

(assert (=> d!1221395 (=> (not res!1682778) (not e!2556046))))

(assert (=> d!1221395 (= res!1682778 (semiInverseModEq!3130 (toChars!9779 (transformation!7268 r!4008)) (toValue!9920 (transformation!7268 r!4008))))))

(assert (=> d!1221395 (= (inv!59109 (transformation!7268 r!4008)) e!2556046)))

(declare-fun b!4119366 () Bool)

(assert (=> b!4119366 (= e!2556046 (equivClasses!3029 (toChars!9779 (transformation!7268 r!4008)) (toValue!9920 (transformation!7268 r!4008))))))

(assert (= (and d!1221395 res!1682778) b!4119366))

(declare-fun m!4718731 () Bool)

(assert (=> d!1221395 m!4718731))

(declare-fun m!4718733 () Bool)

(assert (=> b!4119366 m!4718733))

(assert (=> b!4119024 d!1221395))

(declare-fun d!1221397 () Bool)

(declare-fun res!1682783 () Bool)

(declare-fun e!2556049 () Bool)

(assert (=> d!1221397 (=> (not res!1682783) (not e!2556049))))

(declare-fun validRegex!5468 (Regex!12173) Bool)

(assert (=> d!1221397 (= res!1682783 (validRegex!5468 (regex!7268 r!4008)))))

(assert (=> d!1221397 (= (ruleValid!3076 thiss!25645 r!4008) e!2556049)))

(declare-fun b!4119371 () Bool)

(declare-fun res!1682784 () Bool)

(assert (=> b!4119371 (=> (not res!1682784) (not e!2556049))))

(declare-fun nullable!4268 (Regex!12173) Bool)

(assert (=> b!4119371 (= res!1682784 (not (nullable!4268 (regex!7268 r!4008))))))

(declare-fun b!4119372 () Bool)

(assert (=> b!4119372 (= e!2556049 (not (= (tag!8128 r!4008) (String!51241 ""))))))

(assert (= (and d!1221397 res!1682783) b!4119371))

(assert (= (and b!4119371 res!1682784) b!4119372))

(declare-fun m!4718735 () Bool)

(assert (=> d!1221397 m!4718735))

(declare-fun m!4718737 () Bool)

(assert (=> b!4119371 m!4718737))

(assert (=> b!4119026 d!1221397))

(declare-fun d!1221399 () Bool)

(assert (=> d!1221399 (= (inv!59107 (tag!8128 rBis!149)) (= (mod (str.len (value!227691 (tag!8128 rBis!149))) 2) 0))))

(assert (=> b!4119015 d!1221399))

(declare-fun d!1221401 () Bool)

(declare-fun res!1682785 () Bool)

(declare-fun e!2556050 () Bool)

(assert (=> d!1221401 (=> (not res!1682785) (not e!2556050))))

(assert (=> d!1221401 (= res!1682785 (semiInverseModEq!3130 (toChars!9779 (transformation!7268 rBis!149)) (toValue!9920 (transformation!7268 rBis!149))))))

(assert (=> d!1221401 (= (inv!59109 (transformation!7268 rBis!149)) e!2556050)))

(declare-fun b!4119373 () Bool)

(assert (=> b!4119373 (= e!2556050 (equivClasses!3029 (toChars!9779 (transformation!7268 rBis!149)) (toValue!9920 (transformation!7268 rBis!149))))))

(assert (= (and d!1221401 res!1682785) b!4119373))

(declare-fun m!4718739 () Bool)

(assert (=> d!1221401 m!4718739))

(declare-fun m!4718741 () Bool)

(assert (=> b!4119373 m!4718741))

(assert (=> b!4119015 d!1221401))

(declare-fun b!4119383 () Bool)

(declare-fun res!1682794 () Bool)

(declare-fun e!2556057 () Bool)

(assert (=> b!4119383 (=> (not res!1682794) (not e!2556057))))

(declare-fun head!8676 (List!44650) C!24532)

(assert (=> b!4119383 (= res!1682794 (= (head!8676 p!2912) (head!8676 input!3238)))))

(declare-fun d!1221403 () Bool)

(declare-fun e!2556058 () Bool)

(assert (=> d!1221403 e!2556058))

(declare-fun res!1682795 () Bool)

(assert (=> d!1221403 (=> res!1682795 e!2556058)))

(declare-fun lt!1469567 () Bool)

(assert (=> d!1221403 (= res!1682795 (not lt!1469567))))

(declare-fun e!2556059 () Bool)

(assert (=> d!1221403 (= lt!1469567 e!2556059)))

(declare-fun res!1682797 () Bool)

(assert (=> d!1221403 (=> res!1682797 e!2556059)))

(assert (=> d!1221403 (= res!1682797 ((_ is Nil!44526) p!2912))))

(assert (=> d!1221403 (= (isPrefix!4203 p!2912 input!3238) lt!1469567)))

(declare-fun b!4119382 () Bool)

(assert (=> b!4119382 (= e!2556059 e!2556057)))

(declare-fun res!1682796 () Bool)

(assert (=> b!4119382 (=> (not res!1682796) (not e!2556057))))

(assert (=> b!4119382 (= res!1682796 (not ((_ is Nil!44526) input!3238)))))

(declare-fun b!4119385 () Bool)

(assert (=> b!4119385 (= e!2556058 (>= (size!32948 input!3238) (size!32948 p!2912)))))

(declare-fun b!4119384 () Bool)

(assert (=> b!4119384 (= e!2556057 (isPrefix!4203 (tail!6421 p!2912) (tail!6421 input!3238)))))

(assert (= (and d!1221403 (not res!1682797)) b!4119382))

(assert (= (and b!4119382 res!1682796) b!4119383))

(assert (= (and b!4119383 res!1682794) b!4119384))

(assert (= (and d!1221403 (not res!1682795)) b!4119385))

(declare-fun m!4718743 () Bool)

(assert (=> b!4119383 m!4718743))

(declare-fun m!4718745 () Bool)

(assert (=> b!4119383 m!4718745))

(assert (=> b!4119385 m!4718535))

(assert (=> b!4119385 m!4718377))

(declare-fun m!4718747 () Bool)

(assert (=> b!4119384 m!4718747))

(assert (=> b!4119384 m!4718537))

(assert (=> b!4119384 m!4718747))

(assert (=> b!4119384 m!4718537))

(declare-fun m!4718749 () Bool)

(assert (=> b!4119384 m!4718749))

(assert (=> b!4119027 d!1221403))

(declare-fun b!4119414 () Bool)

(declare-fun e!2556074 () Bool)

(declare-fun e!2556076 () Bool)

(assert (=> b!4119414 (= e!2556074 e!2556076)))

(declare-fun res!1682821 () Bool)

(assert (=> b!4119414 (=> (not res!1682821) (not e!2556076))))

(declare-fun lt!1469570 () Bool)

(assert (=> b!4119414 (= res!1682821 (not lt!1469570))))

(declare-fun b!4119415 () Bool)

(declare-fun res!1682816 () Bool)

(declare-fun e!2556075 () Bool)

(assert (=> b!4119415 (=> (not res!1682816) (not e!2556075))))

(declare-fun call!289930 () Bool)

(assert (=> b!4119415 (= res!1682816 (not call!289930))))

(declare-fun b!4119416 () Bool)

(assert (=> b!4119416 (= e!2556075 (= (head!8676 p!2912) (c!707393 (regex!7268 r!4008))))))

(declare-fun b!4119417 () Bool)

(declare-fun e!2556079 () Bool)

(declare-fun e!2556078 () Bool)

(assert (=> b!4119417 (= e!2556079 e!2556078)))

(declare-fun c!707451 () Bool)

(assert (=> b!4119417 (= c!707451 ((_ is EmptyLang!12173) (regex!7268 r!4008)))))

(declare-fun b!4119418 () Bool)

(declare-fun res!1682818 () Bool)

(assert (=> b!4119418 (=> res!1682818 e!2556074)))

(assert (=> b!4119418 (= res!1682818 e!2556075)))

(declare-fun res!1682814 () Bool)

(assert (=> b!4119418 (=> (not res!1682814) (not e!2556075))))

(assert (=> b!4119418 (= res!1682814 lt!1469570)))

(declare-fun b!4119419 () Bool)

(declare-fun res!1682820 () Bool)

(assert (=> b!4119419 (=> res!1682820 e!2556074)))

(assert (=> b!4119419 (= res!1682820 (not ((_ is ElementMatch!12173) (regex!7268 r!4008))))))

(assert (=> b!4119419 (= e!2556078 e!2556074)))

(declare-fun b!4119420 () Bool)

(declare-fun e!2556077 () Bool)

(assert (=> b!4119420 (= e!2556077 (not (= (head!8676 p!2912) (c!707393 (regex!7268 r!4008)))))))

(declare-fun b!4119422 () Bool)

(declare-fun res!1682817 () Bool)

(assert (=> b!4119422 (=> (not res!1682817) (not e!2556075))))

(assert (=> b!4119422 (= res!1682817 (isEmpty!26478 (tail!6421 p!2912)))))

(declare-fun b!4119423 () Bool)

(declare-fun e!2556080 () Bool)

(declare-fun derivativeStep!3663 (Regex!12173 C!24532) Regex!12173)

(assert (=> b!4119423 (= e!2556080 (matchR!6004 (derivativeStep!3663 (regex!7268 r!4008) (head!8676 p!2912)) (tail!6421 p!2912)))))

(declare-fun bm!289925 () Bool)

(assert (=> bm!289925 (= call!289930 (isEmpty!26478 p!2912))))

(declare-fun b!4119424 () Bool)

(assert (=> b!4119424 (= e!2556076 e!2556077)))

(declare-fun res!1682819 () Bool)

(assert (=> b!4119424 (=> res!1682819 e!2556077)))

(assert (=> b!4119424 (= res!1682819 call!289930)))

(declare-fun b!4119425 () Bool)

(assert (=> b!4119425 (= e!2556080 (nullable!4268 (regex!7268 r!4008)))))

(declare-fun b!4119426 () Bool)

(assert (=> b!4119426 (= e!2556079 (= lt!1469570 call!289930))))

(declare-fun b!4119427 () Bool)

(assert (=> b!4119427 (= e!2556078 (not lt!1469570))))

(declare-fun d!1221405 () Bool)

(assert (=> d!1221405 e!2556079))

(declare-fun c!707453 () Bool)

(assert (=> d!1221405 (= c!707453 ((_ is EmptyExpr!12173) (regex!7268 r!4008)))))

(assert (=> d!1221405 (= lt!1469570 e!2556080)))

(declare-fun c!707452 () Bool)

(assert (=> d!1221405 (= c!707452 (isEmpty!26478 p!2912))))

(assert (=> d!1221405 (validRegex!5468 (regex!7268 r!4008))))

(assert (=> d!1221405 (= (matchR!6004 (regex!7268 r!4008) p!2912) lt!1469570)))

(declare-fun b!4119421 () Bool)

(declare-fun res!1682815 () Bool)

(assert (=> b!4119421 (=> res!1682815 e!2556077)))

(assert (=> b!4119421 (= res!1682815 (not (isEmpty!26478 (tail!6421 p!2912))))))

(assert (= (and d!1221405 c!707452) b!4119425))

(assert (= (and d!1221405 (not c!707452)) b!4119423))

(assert (= (and d!1221405 c!707453) b!4119426))

(assert (= (and d!1221405 (not c!707453)) b!4119417))

(assert (= (and b!4119417 c!707451) b!4119427))

(assert (= (and b!4119417 (not c!707451)) b!4119419))

(assert (= (and b!4119419 (not res!1682820)) b!4119418))

(assert (= (and b!4119418 res!1682814) b!4119415))

(assert (= (and b!4119415 res!1682816) b!4119422))

(assert (= (and b!4119422 res!1682817) b!4119416))

(assert (= (and b!4119418 (not res!1682818)) b!4119414))

(assert (= (and b!4119414 res!1682821) b!4119424))

(assert (= (and b!4119424 (not res!1682819)) b!4119421))

(assert (= (and b!4119421 (not res!1682815)) b!4119420))

(assert (= (or b!4119426 b!4119415 b!4119424) bm!289925))

(assert (=> b!4119420 m!4718743))

(assert (=> b!4119416 m!4718743))

(assert (=> bm!289925 m!4718389))

(assert (=> b!4119425 m!4718737))

(assert (=> d!1221405 m!4718389))

(assert (=> d!1221405 m!4718735))

(assert (=> b!4119422 m!4718747))

(assert (=> b!4119422 m!4718747))

(declare-fun m!4718751 () Bool)

(assert (=> b!4119422 m!4718751))

(assert (=> b!4119423 m!4718743))

(assert (=> b!4119423 m!4718743))

(declare-fun m!4718753 () Bool)

(assert (=> b!4119423 m!4718753))

(assert (=> b!4119423 m!4718747))

(assert (=> b!4119423 m!4718753))

(assert (=> b!4119423 m!4718747))

(declare-fun m!4718755 () Bool)

(assert (=> b!4119423 m!4718755))

(assert (=> b!4119421 m!4718747))

(assert (=> b!4119421 m!4718747))

(assert (=> b!4119421 m!4718751))

(assert (=> b!4119018 d!1221405))

(declare-fun d!1221407 () Bool)

(assert (=> d!1221407 (ruleValid!3076 thiss!25645 r!4008)))

(declare-fun lt!1469573 () Unit!63881)

(declare-fun choose!25171 (LexerInterface!6857 Rule!14336 List!44651) Unit!63881)

(assert (=> d!1221407 (= lt!1469573 (choose!25171 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1221407 (contains!8940 rules!3756 r!4008)))

(assert (=> d!1221407 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2120 thiss!25645 r!4008 rules!3756) lt!1469573)))

(declare-fun bs!594662 () Bool)

(assert (= bs!594662 d!1221407))

(assert (=> bs!594662 m!4718391))

(declare-fun m!4718757 () Bool)

(assert (=> bs!594662 m!4718757))

(assert (=> bs!594662 m!4718393))

(assert (=> b!4119028 d!1221407))

(declare-fun d!1221409 () Bool)

(declare-fun res!1682822 () Bool)

(declare-fun e!2556081 () Bool)

(assert (=> d!1221409 (=> (not res!1682822) (not e!2556081))))

(assert (=> d!1221409 (= res!1682822 (validRegex!5468 (regex!7268 rBis!149)))))

(assert (=> d!1221409 (= (ruleValid!3076 thiss!25645 rBis!149) e!2556081)))

(declare-fun b!4119428 () Bool)

(declare-fun res!1682823 () Bool)

(assert (=> b!4119428 (=> (not res!1682823) (not e!2556081))))

(assert (=> b!4119428 (= res!1682823 (not (nullable!4268 (regex!7268 rBis!149))))))

(declare-fun b!4119429 () Bool)

(assert (=> b!4119429 (= e!2556081 (not (= (tag!8128 rBis!149) (String!51241 ""))))))

(assert (= (and d!1221409 res!1682822) b!4119428))

(assert (= (and b!4119428 res!1682823) b!4119429))

(declare-fun m!4718759 () Bool)

(assert (=> d!1221409 m!4718759))

(declare-fun m!4718761 () Bool)

(assert (=> b!4119428 m!4718761))

(assert (=> b!4119028 d!1221409))

(declare-fun d!1221411 () Bool)

(assert (=> d!1221411 (ruleValid!3076 thiss!25645 rBis!149)))

(declare-fun lt!1469574 () Unit!63881)

(assert (=> d!1221411 (= lt!1469574 (choose!25171 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1221411 (contains!8940 rules!3756 rBis!149)))

(assert (=> d!1221411 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2120 thiss!25645 rBis!149 rules!3756) lt!1469574)))

(declare-fun bs!594663 () Bool)

(assert (= bs!594663 d!1221411))

(assert (=> bs!594663 m!4718409))

(declare-fun m!4718763 () Bool)

(assert (=> bs!594663 m!4718763))

(assert (=> bs!594663 m!4718413))

(assert (=> b!4119028 d!1221411))

(declare-fun b!4119440 () Bool)

(declare-fun e!2556084 () Bool)

(assert (=> b!4119440 (= e!2556084 tp_is_empty!21269)))

(declare-fun b!4119443 () Bool)

(declare-fun tp!1255249 () Bool)

(declare-fun tp!1255250 () Bool)

(assert (=> b!4119443 (= e!2556084 (and tp!1255249 tp!1255250))))

(declare-fun b!4119441 () Bool)

(declare-fun tp!1255247 () Bool)

(declare-fun tp!1255246 () Bool)

(assert (=> b!4119441 (= e!2556084 (and tp!1255247 tp!1255246))))

(assert (=> b!4119024 (= tp!1255177 e!2556084)))

(declare-fun b!4119442 () Bool)

(declare-fun tp!1255248 () Bool)

(assert (=> b!4119442 (= e!2556084 tp!1255248)))

(assert (= (and b!4119024 ((_ is ElementMatch!12173) (regex!7268 r!4008))) b!4119440))

(assert (= (and b!4119024 ((_ is Concat!19672) (regex!7268 r!4008))) b!4119441))

(assert (= (and b!4119024 ((_ is Star!12173) (regex!7268 r!4008))) b!4119442))

(assert (= (and b!4119024 ((_ is Union!12173) (regex!7268 r!4008))) b!4119443))

(declare-fun b!4119444 () Bool)

(declare-fun e!2556085 () Bool)

(assert (=> b!4119444 (= e!2556085 tp_is_empty!21269)))

(declare-fun b!4119447 () Bool)

(declare-fun tp!1255254 () Bool)

(declare-fun tp!1255255 () Bool)

(assert (=> b!4119447 (= e!2556085 (and tp!1255254 tp!1255255))))

(declare-fun b!4119445 () Bool)

(declare-fun tp!1255252 () Bool)

(declare-fun tp!1255251 () Bool)

(assert (=> b!4119445 (= e!2556085 (and tp!1255252 tp!1255251))))

(assert (=> b!4119015 (= tp!1255181 e!2556085)))

(declare-fun b!4119446 () Bool)

(declare-fun tp!1255253 () Bool)

(assert (=> b!4119446 (= e!2556085 tp!1255253)))

(assert (= (and b!4119015 ((_ is ElementMatch!12173) (regex!7268 rBis!149))) b!4119444))

(assert (= (and b!4119015 ((_ is Concat!19672) (regex!7268 rBis!149))) b!4119445))

(assert (= (and b!4119015 ((_ is Star!12173) (regex!7268 rBis!149))) b!4119446))

(assert (= (and b!4119015 ((_ is Union!12173) (regex!7268 rBis!149))) b!4119447))

(declare-fun b!4119458 () Bool)

(declare-fun b_free!116387 () Bool)

(declare-fun b_next!117091 () Bool)

(assert (=> b!4119458 (= b_free!116387 (not b_next!117091))))

(declare-fun tb!247187 () Bool)

(declare-fun t!340616 () Bool)

(assert (=> (and b!4119458 (= (toValue!9920 (transformation!7268 (h!49947 (t!340586 rules!3756)))) (toValue!9920 (transformation!7268 r!4008))) t!340616) tb!247187))

(declare-fun result!300290 () Bool)

(assert (= result!300290 result!300268))

(assert (=> d!1221297 t!340616))

(assert (=> d!1221331 t!340616))

(declare-fun b_and!318541 () Bool)

(declare-fun tp!1255266 () Bool)

(assert (=> b!4119458 (= tp!1255266 (and (=> t!340616 result!300290) b_and!318541))))

(declare-fun b_free!116389 () Bool)

(declare-fun b_next!117093 () Bool)

(assert (=> b!4119458 (= b_free!116389 (not b_next!117093))))

(declare-fun t!340618 () Bool)

(declare-fun tb!247189 () Bool)

(assert (=> (and b!4119458 (= (toChars!9779 (transformation!7268 (h!49947 (t!340586 rules!3756)))) (toChars!9779 (transformation!7268 r!4008))) t!340618) tb!247189))

(declare-fun result!300292 () Bool)

(assert (= result!300292 result!300260))

(assert (=> d!1221297 t!340618))

(declare-fun tp!1255264 () Bool)

(declare-fun b_and!318543 () Bool)

(assert (=> b!4119458 (= tp!1255264 (and (=> t!340618 result!300292) b_and!318543))))

(declare-fun e!2556094 () Bool)

(assert (=> b!4119458 (= e!2556094 (and tp!1255266 tp!1255264))))

(declare-fun b!4119457 () Bool)

(declare-fun tp!1255267 () Bool)

(declare-fun e!2556095 () Bool)

(assert (=> b!4119457 (= e!2556095 (and tp!1255267 (inv!59107 (tag!8128 (h!49947 (t!340586 rules!3756)))) (inv!59109 (transformation!7268 (h!49947 (t!340586 rules!3756)))) e!2556094))))

(declare-fun b!4119456 () Bool)

(declare-fun e!2556097 () Bool)

(declare-fun tp!1255265 () Bool)

(assert (=> b!4119456 (= e!2556097 (and e!2556095 tp!1255265))))

(assert (=> b!4119036 (= tp!1255186 e!2556097)))

(assert (= b!4119457 b!4119458))

(assert (= b!4119456 b!4119457))

(assert (= (and b!4119036 ((_ is Cons!44527) (t!340586 rules!3756))) b!4119456))

(declare-fun m!4718765 () Bool)

(assert (=> b!4119457 m!4718765))

(declare-fun m!4718767 () Bool)

(assert (=> b!4119457 m!4718767))

(declare-fun b!4119459 () Bool)

(declare-fun e!2556098 () Bool)

(assert (=> b!4119459 (= e!2556098 tp_is_empty!21269)))

(declare-fun b!4119462 () Bool)

(declare-fun tp!1255271 () Bool)

(declare-fun tp!1255272 () Bool)

(assert (=> b!4119462 (= e!2556098 (and tp!1255271 tp!1255272))))

(declare-fun b!4119460 () Bool)

(declare-fun tp!1255269 () Bool)

(declare-fun tp!1255268 () Bool)

(assert (=> b!4119460 (= e!2556098 (and tp!1255269 tp!1255268))))

(assert (=> b!4119022 (= tp!1255185 e!2556098)))

(declare-fun b!4119461 () Bool)

(declare-fun tp!1255270 () Bool)

(assert (=> b!4119461 (= e!2556098 tp!1255270)))

(assert (= (and b!4119022 ((_ is ElementMatch!12173) (regex!7268 (h!49947 rules!3756)))) b!4119459))

(assert (= (and b!4119022 ((_ is Concat!19672) (regex!7268 (h!49947 rules!3756)))) b!4119460))

(assert (= (and b!4119022 ((_ is Star!12173) (regex!7268 (h!49947 rules!3756)))) b!4119461))

(assert (= (and b!4119022 ((_ is Union!12173) (regex!7268 (h!49947 rules!3756)))) b!4119462))

(declare-fun b!4119467 () Bool)

(declare-fun e!2556101 () Bool)

(declare-fun tp!1255275 () Bool)

(assert (=> b!4119467 (= e!2556101 (and tp_is_empty!21269 tp!1255275))))

(assert (=> b!4119016 (= tp!1255188 e!2556101)))

(assert (= (and b!4119016 ((_ is Cons!44526) (t!340585 p!2912))) b!4119467))

(declare-fun b!4119468 () Bool)

(declare-fun e!2556102 () Bool)

(declare-fun tp!1255276 () Bool)

(assert (=> b!4119468 (= e!2556102 (and tp_is_empty!21269 tp!1255276))))

(assert (=> b!4119017 (= tp!1255178 e!2556102)))

(assert (= (and b!4119017 ((_ is Cons!44526) (t!340585 input!3238))) b!4119468))

(declare-fun b_lambda!120857 () Bool)

(assert (= b_lambda!120849 (or (and b!4119031 b_free!116371 (= (toValue!9920 (transformation!7268 (h!49947 rules!3756))) (toValue!9920 (transformation!7268 r!4008)))) (and b!4119025 b_free!116375) (and b!4119020 b_free!116379 (= (toValue!9920 (transformation!7268 rBis!149)) (toValue!9920 (transformation!7268 r!4008)))) (and b!4119458 b_free!116387 (= (toValue!9920 (transformation!7268 (h!49947 (t!340586 rules!3756)))) (toValue!9920 (transformation!7268 r!4008)))) b_lambda!120857)))

(declare-fun b_lambda!120859 () Bool)

(assert (= b_lambda!120845 (or (and b!4119031 b_free!116373 (= (toChars!9779 (transformation!7268 (h!49947 rules!3756))) (toChars!9779 (transformation!7268 r!4008)))) (and b!4119025 b_free!116377) (and b!4119020 b_free!116381 (= (toChars!9779 (transformation!7268 rBis!149)) (toChars!9779 (transformation!7268 r!4008)))) (and b!4119458 b_free!116389 (= (toChars!9779 (transformation!7268 (h!49947 (t!340586 rules!3756)))) (toChars!9779 (transformation!7268 r!4008)))) b_lambda!120859)))

(declare-fun b_lambda!120861 () Bool)

(assert (= b_lambda!120847 (or (and b!4119031 b_free!116371 (= (toValue!9920 (transformation!7268 (h!49947 rules!3756))) (toValue!9920 (transformation!7268 r!4008)))) (and b!4119025 b_free!116375) (and b!4119020 b_free!116379 (= (toValue!9920 (transformation!7268 rBis!149)) (toValue!9920 (transformation!7268 r!4008)))) (and b!4119458 b_free!116387 (= (toValue!9920 (transformation!7268 (h!49947 (t!340586 rules!3756)))) (toValue!9920 (transformation!7268 r!4008)))) b_lambda!120861)))

(check-sat (not b_next!117093) (not b!4119366) (not b!4119343) (not d!1221397) (not b!4119365) (not d!1221319) (not b!4119341) (not b!4119447) (not b!4119468) (not b!4119423) (not bm!289925) (not tb!247171) (not b!4119114) (not d!1221387) (not b!4119420) (not b!4119347) (not b!4119216) (not b!4119425) (not b!4119462) (not b_lambda!120861) (not b!4119373) (not b!4119179) (not b!4119177) (not d!1221379) (not b!4119358) (not d!1221291) (not d!1221287) (not d!1221321) (not b!4119457) (not d!1221349) (not b_next!117079) tp_is_empty!21269 (not d!1221329) (not b_next!117075) (not b!4119339) (not d!1221355) (not b!4119421) (not d!1221343) (not b!4119385) (not b!4119371) (not b!4119461) (not b!4119422) (not b_next!117077) b_and!318535 b_and!318521 (not b!4119428) (not b_next!117081) (not b!4119233) (not b!4119384) (not b_next!117083) (not b!4119181) (not d!1221391) (not bm!289919) (not b!4119180) (not b!4119416) (not b!4119442) (not b!4119178) (not b!4119467) b_and!318533 (not d!1221401) (not b!4119174) b_and!318519 (not b!4119175) (not b!4119176) (not d!1221411) (not b!4119342) (not b!4119338) (not b!4119344) (not d!1221407) (not b!4119250) (not d!1221383) (not b!4119235) (not b!4119362) (not b!4119443) (not b!4119383) (not d!1221395) (not b!4119460) (not d!1221337) b_and!318541 (not b!4119337) (not b!4119121) b_and!318531 (not b_next!117085) (not b_next!117091) b_and!318523 (not b!4119441) (not b!4119048) (not b_lambda!120859) (not d!1221405) (not b_lambda!120857) (not b!4119446) (not d!1221389) (not d!1221297) (not tb!247177) b_and!318543 (not b!4119456) (not d!1221409) (not b!4119445) (not b!4119340))
(check-sat (not b_next!117079) (not b_next!117075) (not b_next!117077) (not b_next!117093) (not b_next!117083) b_and!318541 b_and!318543 b_and!318535 (not b_next!117081) b_and!318521 b_and!318519 b_and!318533 b_and!318531 (not b_next!117085) (not b_next!117091) b_and!318523)
