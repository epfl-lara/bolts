; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522506 () Bool)

(assert start!522506)

(declare-fun b!4957028 () Bool)

(declare-fun b_free!132327 () Bool)

(declare-fun b_next!133117 () Bool)

(assert (=> b!4957028 (= b_free!132327 (not b_next!133117))))

(declare-fun tp!1390166 () Bool)

(declare-fun b_and!347179 () Bool)

(assert (=> b!4957028 (= tp!1390166 b_and!347179)))

(declare-fun b_free!132329 () Bool)

(declare-fun b_next!133119 () Bool)

(assert (=> b!4957028 (= b_free!132329 (not b_next!133119))))

(declare-fun tp!1390170 () Bool)

(declare-fun b_and!347181 () Bool)

(assert (=> b!4957028 (= tp!1390170 b_and!347181)))

(declare-fun b!4957017 () Bool)

(declare-fun e!3097735 () Bool)

(declare-datatypes ((C!27368 0))(
  ( (C!27369 (val!23050 Int)) )
))
(declare-datatypes ((List!57364 0))(
  ( (Nil!57240) (Cons!57240 (h!63688 C!27368) (t!367930 List!57364)) )
))
(declare-datatypes ((IArray!30217 0))(
  ( (IArray!30218 (innerList!15166 List!57364)) )
))
(declare-datatypes ((Conc!15078 0))(
  ( (Node!15078 (left!41747 Conc!15078) (right!42077 Conc!15078) (csize!30386 Int) (cheight!15289 Int)) (Leaf!25066 (xs!18404 IArray!30217) (csize!30387 Int)) (Empty!15078) )
))
(declare-datatypes ((BalanceConc!29586 0))(
  ( (BalanceConc!29587 (c!846217 Conc!15078)) )
))
(declare-fun totalInput!464 () BalanceConc!29586)

(declare-fun tp!1390165 () Bool)

(declare-fun inv!74686 (Conc!15078) Bool)

(assert (=> b!4957017 (= e!3097735 (and (inv!74686 (c!846217 totalInput!464)) tp!1390165))))

(declare-datatypes ((List!57365 0))(
  ( (Nil!57241) (Cons!57241 (h!63689 (_ BitVec 16)) (t!367931 List!57365)) )
))
(declare-datatypes ((TokenValue!8636 0))(
  ( (FloatLiteralValue!17272 (text!60897 List!57365)) (TokenValueExt!8635 (__x!34565 Int)) (Broken!43180 (value!266707 List!57365)) (Object!8759) (End!8636) (Def!8636) (Underscore!8636) (Match!8636) (Else!8636) (Error!8636) (Case!8636) (If!8636) (Extends!8636) (Abstract!8636) (Class!8636) (Val!8636) (DelimiterValue!17272 (del!8696 List!57365)) (KeywordValue!8642 (value!266708 List!57365)) (CommentValue!17272 (value!266709 List!57365)) (WhitespaceValue!17272 (value!266710 List!57365)) (IndentationValue!8636 (value!266711 List!57365)) (String!65053) (Int32!8636) (Broken!43181 (value!266712 List!57365)) (Boolean!8637) (Unit!148134) (OperatorValue!8639 (op!8696 List!57365)) (IdentifierValue!17272 (value!266713 List!57365)) (IdentifierValue!17273 (value!266714 List!57365)) (WhitespaceValue!17273 (value!266715 List!57365)) (True!17272) (False!17272) (Broken!43182 (value!266716 List!57365)) (Broken!43183 (value!266717 List!57365)) (True!17273) (RightBrace!8636) (RightBracket!8636) (Colon!8636) (Null!8636) (Comma!8636) (LeftBracket!8636) (False!17273) (LeftBrace!8636) (ImaginaryLiteralValue!8636 (text!60898 List!57365)) (StringLiteralValue!25908 (value!266718 List!57365)) (EOFValue!8636 (value!266719 List!57365)) (IdentValue!8636 (value!266720 List!57365)) (DelimiterValue!17273 (value!266721 List!57365)) (DedentValue!8636 (value!266722 List!57365)) (NewLineValue!8636 (value!266723 List!57365)) (IntegerValue!25908 (value!266724 (_ BitVec 32)) (text!60899 List!57365)) (IntegerValue!25909 (value!266725 Int) (text!60900 List!57365)) (Times!8636) (Or!8636) (Equal!8636) (Minus!8636) (Broken!43184 (value!266726 List!57365)) (And!8636) (Div!8636) (LessEqual!8636) (Mod!8636) (Concat!22195) (Not!8636) (Plus!8636) (SpaceValue!8636 (value!266727 List!57365)) (IntegerValue!25910 (value!266728 Int) (text!60901 List!57365)) (StringLiteralValue!25909 (text!60902 List!57365)) (FloatLiteralValue!17273 (text!60903 List!57365)) (BytesLiteralValue!8636 (value!266729 List!57365)) (CommentValue!17273 (value!266730 List!57365)) (StringLiteralValue!25910 (value!266731 List!57365)) (ErrorTokenValue!8636 (msg!8697 List!57365)) )
))
(declare-datatypes ((Regex!13559 0))(
  ( (ElementMatch!13559 (c!846218 C!27368)) (Concat!22196 (regOne!27630 Regex!13559) (regTwo!27630 Regex!13559)) (EmptyExpr!13559) (Star!13559 (reg!13888 Regex!13559)) (EmptyLang!13559) (Union!13559 (regOne!27631 Regex!13559) (regTwo!27631 Regex!13559)) )
))
(declare-datatypes ((String!65054 0))(
  ( (String!65055 (value!266732 String)) )
))
(declare-datatypes ((TokenValueInjection!16580 0))(
  ( (TokenValueInjection!16581 (toValue!11277 Int) (toChars!11136 Int)) )
))
(declare-datatypes ((Rule!16452 0))(
  ( (Rule!16453 (regex!8326 Regex!13559) (tag!9190 String!65054) (isSeparator!8326 Bool) (transformation!8326 TokenValueInjection!16580)) )
))
(declare-datatypes ((List!57366 0))(
  ( (Nil!57242) (Cons!57242 (h!63690 Rule!16452) (t!367932 List!57366)) )
))
(declare-fun rulesArg!259 () List!57366)

(declare-fun tp!1390168 () Bool)

(declare-fun b!4957018 () Bool)

(declare-fun e!3097732 () Bool)

(declare-fun e!3097726 () Bool)

(declare-fun inv!74682 (String!65054) Bool)

(declare-fun inv!74687 (TokenValueInjection!16580) Bool)

(assert (=> b!4957018 (= e!3097732 (and tp!1390168 (inv!74682 (tag!9190 (h!63690 rulesArg!259))) (inv!74687 (transformation!8326 (h!63690 rulesArg!259))) e!3097726))))

(declare-fun b!4957019 () Bool)

(declare-fun e!3097736 () Bool)

(declare-fun e!3097730 () Bool)

(assert (=> b!4957019 (= e!3097736 e!3097730)))

(declare-fun res!2115147 () Bool)

(assert (=> b!4957019 (=> res!2115147 e!3097730)))

(declare-fun lt!2046040 () Bool)

(declare-datatypes ((Token!15152 0))(
  ( (Token!15153 (value!266733 TokenValue!8636) (rule!11544 Rule!16452) (size!37952 Int) (originalCharacters!8607 List!57364)) )
))
(declare-datatypes ((tuple2!61828 0))(
  ( (tuple2!61829 (_1!34217 Token!15152) (_2!34217 List!57364)) )
))
(declare-datatypes ((Option!14321 0))(
  ( (None!14320) (Some!14320 (v!50305 tuple2!61828)) )
))
(declare-fun lt!2046038 () Option!14321)

(declare-fun isDefined!11248 (Option!14321) Bool)

(assert (=> b!4957019 (= res!2115147 (not (= lt!2046040 (isDefined!11248 lt!2046038))))))

(declare-datatypes ((tuple2!61830 0))(
  ( (tuple2!61831 (_1!34218 Token!15152) (_2!34218 BalanceConc!29586)) )
))
(declare-datatypes ((Option!14322 0))(
  ( (None!14321) (Some!14321 (v!50306 tuple2!61830)) )
))
(declare-fun lt!2046036 () Option!14322)

(declare-fun isDefined!11249 (Option!14322) Bool)

(assert (=> b!4957019 (= lt!2046040 (isDefined!11249 lt!2046036))))

(declare-fun lt!2046042 () List!57364)

(declare-datatypes ((LexerInterface!7918 0))(
  ( (LexerInterfaceExt!7915 (__x!34566 Int)) (Lexer!7916) )
))
(declare-fun thiss!15247 () LexerInterface!7918)

(declare-fun maxPrefixZipper!723 (LexerInterface!7918 List!57366 List!57364) Option!14321)

(assert (=> b!4957019 (= lt!2046038 (maxPrefixZipper!723 thiss!15247 rulesArg!259 lt!2046042))))

(declare-fun b!4957020 () Bool)

(declare-fun e!3097727 () Bool)

(declare-fun e!3097731 () Bool)

(assert (=> b!4957020 (= e!3097727 (not e!3097731))))

(declare-fun res!2115146 () Bool)

(assert (=> b!4957020 (=> res!2115146 e!3097731)))

(get-info :version)

(assert (=> b!4957020 (= res!2115146 (or (and ((_ is Cons!57242) rulesArg!259) ((_ is Nil!57242) (t!367932 rulesArg!259))) (not ((_ is Cons!57242) rulesArg!259))))))

(declare-fun isPrefix!5179 (List!57364 List!57364) Bool)

(assert (=> b!4957020 (isPrefix!5179 lt!2046042 lt!2046042)))

(declare-datatypes ((Unit!148135 0))(
  ( (Unit!148136) )
))
(declare-fun lt!2046037 () Unit!148135)

(declare-fun lemmaIsPrefixRefl!3503 (List!57364 List!57364) Unit!148135)

(assert (=> b!4957020 (= lt!2046037 (lemmaIsPrefixRefl!3503 lt!2046042 lt!2046042))))

(declare-fun b!4957021 () Bool)

(declare-fun res!2115144 () Bool)

(declare-fun e!3097728 () Bool)

(assert (=> b!4957021 (=> res!2115144 e!3097728)))

(declare-fun lt!2046039 () Bool)

(assert (=> b!4957021 (= res!2115144 lt!2046039)))

(declare-fun b!4957022 () Bool)

(declare-fun res!2115139 () Bool)

(declare-fun e!3097733 () Bool)

(assert (=> b!4957022 (=> (not res!2115139) (not e!3097733))))

(declare-fun isEmpty!30774 (List!57366) Bool)

(assert (=> b!4957022 (= res!2115139 (not (isEmpty!30774 rulesArg!259)))))

(declare-fun b!4957023 () Bool)

(declare-fun res!2115145 () Bool)

(assert (=> b!4957023 (=> (not res!2115145) (not e!3097733))))

(declare-fun rulesValidInductive!3229 (LexerInterface!7918 List!57366) Bool)

(assert (=> b!4957023 (= res!2115145 (rulesValidInductive!3229 thiss!15247 rulesArg!259))))

(declare-fun b!4957025 () Bool)

(declare-fun e!3097738 () Bool)

(declare-fun input!1342 () BalanceConc!29586)

(declare-fun tp!1390169 () Bool)

(assert (=> b!4957025 (= e!3097738 (and (inv!74686 (c!846217 input!1342)) tp!1390169))))

(declare-fun b!4957026 () Bool)

(declare-fun e!3097734 () Bool)

(declare-fun e!3097739 () Bool)

(assert (=> b!4957026 (= e!3097734 e!3097739)))

(declare-fun res!2115148 () Bool)

(assert (=> b!4957026 (=> res!2115148 e!3097739)))

(declare-fun lt!2046033 () tuple2!61830)

(declare-fun lt!2046041 () tuple2!61828)

(assert (=> b!4957026 (= res!2115148 (not (= (_1!34218 lt!2046033) (_1!34217 lt!2046041))))))

(declare-fun get!19808 (Option!14321) tuple2!61828)

(assert (=> b!4957026 (= lt!2046041 (get!19808 lt!2046038))))

(declare-fun get!19809 (Option!14322) tuple2!61830)

(assert (=> b!4957026 (= lt!2046033 (get!19809 lt!2046036))))

(declare-fun b!4957027 () Bool)

(assert (=> b!4957027 (= e!3097731 e!3097736)))

(declare-fun res!2115143 () Bool)

(assert (=> b!4957027 (=> res!2115143 e!3097736)))

(declare-fun lt!2046034 () Option!14322)

(assert (=> b!4957027 (= res!2115143 (or (and ((_ is None!14321) lt!2046036) ((_ is None!14321) lt!2046034)) (not ((_ is None!14321) lt!2046034))))))

(declare-fun maxPrefixZipperSequenceV2!657 (LexerInterface!7918 List!57366 BalanceConc!29586 BalanceConc!29586) Option!14322)

(assert (=> b!4957027 (= lt!2046034 (maxPrefixZipperSequenceV2!657 thiss!15247 (t!367932 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!310 (LexerInterface!7918 Rule!16452 BalanceConc!29586 BalanceConc!29586) Option!14322)

(assert (=> b!4957027 (= lt!2046036 (maxPrefixOneRuleZipperSequenceV2!310 thiss!15247 (h!63690 rulesArg!259) input!1342 totalInput!464))))

(assert (=> b!4957028 (= e!3097726 (and tp!1390166 tp!1390170))))

(declare-fun b!4957029 () Bool)

(assert (=> b!4957029 (= e!3097733 e!3097727)))

(declare-fun res!2115138 () Bool)

(assert (=> b!4957029 (=> (not res!2115138) (not e!3097727))))

(declare-fun isSuffix!1125 (List!57364 List!57364) Bool)

(declare-fun list!18269 (BalanceConc!29586) List!57364)

(assert (=> b!4957029 (= res!2115138 (isSuffix!1125 lt!2046042 (list!18269 totalInput!464)))))

(assert (=> b!4957029 (= lt!2046042 (list!18269 input!1342))))

(declare-fun b!4957030 () Bool)

(declare-fun e!3097729 () Bool)

(declare-fun tp!1390167 () Bool)

(assert (=> b!4957030 (= e!3097729 (and e!3097732 tp!1390167))))

(declare-fun b!4957031 () Bool)

(assert (=> b!4957031 (= e!3097728 true)))

(declare-fun lt!2046035 () Option!14321)

(declare-fun maxPrefix!4629 (LexerInterface!7918 List!57366 List!57364) Option!14321)

(assert (=> b!4957031 (= lt!2046035 (maxPrefix!4629 thiss!15247 rulesArg!259 lt!2046042))))

(declare-fun b!4957032 () Bool)

(assert (=> b!4957032 (= e!3097730 e!3097728)))

(declare-fun res!2115142 () Bool)

(assert (=> b!4957032 (=> res!2115142 e!3097728)))

(assert (=> b!4957032 (= res!2115142 e!3097734)))

(declare-fun res!2115140 () Bool)

(assert (=> b!4957032 (=> (not res!2115140) (not e!3097734))))

(assert (=> b!4957032 (= res!2115140 (not lt!2046039))))

(assert (=> b!4957032 (= lt!2046039 (not lt!2046040))))

(declare-fun b!4957024 () Bool)

(assert (=> b!4957024 (= e!3097739 (not (= (list!18269 (_2!34218 lt!2046033)) (_2!34217 lt!2046041))))))

(declare-fun res!2115141 () Bool)

(assert (=> start!522506 (=> (not res!2115141) (not e!3097733))))

(assert (=> start!522506 (= res!2115141 ((_ is Lexer!7916) thiss!15247))))

(assert (=> start!522506 e!3097733))

(assert (=> start!522506 true))

(assert (=> start!522506 e!3097729))

(declare-fun inv!74688 (BalanceConc!29586) Bool)

(assert (=> start!522506 (and (inv!74688 input!1342) e!3097738)))

(assert (=> start!522506 (and (inv!74688 totalInput!464) e!3097735)))

(assert (= (and start!522506 res!2115141) b!4957023))

(assert (= (and b!4957023 res!2115145) b!4957022))

(assert (= (and b!4957022 res!2115139) b!4957029))

(assert (= (and b!4957029 res!2115138) b!4957020))

(assert (= (and b!4957020 (not res!2115146)) b!4957027))

(assert (= (and b!4957027 (not res!2115143)) b!4957019))

(assert (= (and b!4957019 (not res!2115147)) b!4957032))

(assert (= (and b!4957032 res!2115140) b!4957026))

(assert (= (and b!4957026 (not res!2115148)) b!4957024))

(assert (= (and b!4957032 (not res!2115142)) b!4957021))

(assert (= (and b!4957021 (not res!2115144)) b!4957031))

(assert (= b!4957018 b!4957028))

(assert (= b!4957030 b!4957018))

(assert (= (and start!522506 ((_ is Cons!57242) rulesArg!259)) b!4957030))

(assert (= start!522506 b!4957025))

(assert (= start!522506 b!4957017))

(declare-fun m!5981588 () Bool)

(assert (=> b!4957022 m!5981588))

(declare-fun m!5981590 () Bool)

(assert (=> b!4957029 m!5981590))

(assert (=> b!4957029 m!5981590))

(declare-fun m!5981592 () Bool)

(assert (=> b!4957029 m!5981592))

(declare-fun m!5981594 () Bool)

(assert (=> b!4957029 m!5981594))

(declare-fun m!5981596 () Bool)

(assert (=> b!4957019 m!5981596))

(declare-fun m!5981598 () Bool)

(assert (=> b!4957019 m!5981598))

(declare-fun m!5981600 () Bool)

(assert (=> b!4957019 m!5981600))

(declare-fun m!5981602 () Bool)

(assert (=> b!4957023 m!5981602))

(declare-fun m!5981604 () Bool)

(assert (=> b!4957025 m!5981604))

(declare-fun m!5981606 () Bool)

(assert (=> b!4957031 m!5981606))

(declare-fun m!5981608 () Bool)

(assert (=> b!4957024 m!5981608))

(declare-fun m!5981610 () Bool)

(assert (=> b!4957017 m!5981610))

(declare-fun m!5981612 () Bool)

(assert (=> b!4957018 m!5981612))

(declare-fun m!5981614 () Bool)

(assert (=> b!4957018 m!5981614))

(declare-fun m!5981616 () Bool)

(assert (=> b!4957027 m!5981616))

(declare-fun m!5981618 () Bool)

(assert (=> b!4957027 m!5981618))

(declare-fun m!5981620 () Bool)

(assert (=> b!4957020 m!5981620))

(declare-fun m!5981622 () Bool)

(assert (=> b!4957020 m!5981622))

(declare-fun m!5981624 () Bool)

(assert (=> start!522506 m!5981624))

(declare-fun m!5981626 () Bool)

(assert (=> start!522506 m!5981626))

(declare-fun m!5981628 () Bool)

(assert (=> b!4957026 m!5981628))

(declare-fun m!5981630 () Bool)

(assert (=> b!4957026 m!5981630))

(check-sat (not b_next!133117) b_and!347181 (not b!4957026) (not b!4957023) (not start!522506) b_and!347179 (not b!4957025) (not b!4957027) (not b!4957019) (not b!4957031) (not b!4957017) (not b_next!133119) (not b!4957030) (not b!4957024) (not b!4957029) (not b!4957022) (not b!4957018) (not b!4957020))
(check-sat b_and!347179 b_and!347181 (not b_next!133117) (not b_next!133119))
