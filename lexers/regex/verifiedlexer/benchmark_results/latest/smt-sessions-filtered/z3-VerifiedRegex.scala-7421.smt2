; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394726 () Bool)

(assert start!394726)

(declare-fun b!4148432 () Bool)

(declare-fun b_free!118459 () Bool)

(declare-fun b_next!119163 () Bool)

(assert (=> b!4148432 (= b_free!118459 (not b_next!119163))))

(declare-fun tp!1264506 () Bool)

(declare-fun b_and!322569 () Bool)

(assert (=> b!4148432 (= tp!1264506 b_and!322569)))

(declare-fun b_free!118461 () Bool)

(declare-fun b_next!119165 () Bool)

(assert (=> b!4148432 (= b_free!118461 (not b_next!119165))))

(declare-fun tp!1264504 () Bool)

(declare-fun b_and!322571 () Bool)

(assert (=> b!4148432 (= tp!1264504 b_and!322571)))

(declare-fun b!4148420 () Bool)

(declare-fun b_free!118463 () Bool)

(declare-fun b_next!119167 () Bool)

(assert (=> b!4148420 (= b_free!118463 (not b_next!119167))))

(declare-fun tp!1264511 () Bool)

(declare-fun b_and!322573 () Bool)

(assert (=> b!4148420 (= tp!1264511 b_and!322573)))

(declare-fun b_free!118465 () Bool)

(declare-fun b_next!119169 () Bool)

(assert (=> b!4148420 (= b_free!118465 (not b_next!119169))))

(declare-fun tp!1264509 () Bool)

(declare-fun b_and!322575 () Bool)

(assert (=> b!4148420 (= tp!1264509 b_and!322575)))

(declare-fun b!4148413 () Bool)

(declare-fun b_free!118467 () Bool)

(declare-fun b_next!119171 () Bool)

(assert (=> b!4148413 (= b_free!118467 (not b_next!119171))))

(declare-fun tp!1264507 () Bool)

(declare-fun b_and!322577 () Bool)

(assert (=> b!4148413 (= tp!1264507 b_and!322577)))

(declare-fun b_free!118469 () Bool)

(declare-fun b_next!119173 () Bool)

(assert (=> b!4148413 (= b_free!118469 (not b_next!119173))))

(declare-fun tp!1264512 () Bool)

(declare-fun b_and!322579 () Bool)

(assert (=> b!4148413 (= tp!1264512 b_and!322579)))

(declare-fun b!4148410 () Bool)

(declare-fun e!2573946 () Bool)

(declare-fun tp_is_empty!21561 () Bool)

(declare-fun tp!1264503 () Bool)

(assert (=> b!4148410 (= e!2573946 (and tp_is_empty!21561 tp!1264503))))

(declare-fun b!4148411 () Bool)

(declare-fun e!2573944 () Bool)

(declare-fun e!2573935 () Bool)

(assert (=> b!4148411 (= e!2573944 e!2573935)))

(declare-fun res!1698308 () Bool)

(assert (=> b!4148411 (=> (not res!1698308) (not e!2573935))))

(declare-datatypes ((C!24824 0))(
  ( (C!24825 (val!14522 Int)) )
))
(declare-datatypes ((List!45167 0))(
  ( (Nil!45043) (Cons!45043 (h!50463 C!24824) (t!342974 List!45167)) )
))
(declare-fun input!3238 () List!45167)

(declare-fun p!2912 () List!45167)

(declare-datatypes ((List!45168 0))(
  ( (Nil!45044) (Cons!45044 (h!50464 (_ BitVec 16)) (t!342975 List!45168)) )
))
(declare-datatypes ((TokenValue!7644 0))(
  ( (FloatLiteralValue!15288 (text!53953 List!45168)) (TokenValueExt!7643 (__x!27505 Int)) (Broken!38220 (value!231827 List!45168)) (Object!7767) (End!7644) (Def!7644) (Underscore!7644) (Match!7644) (Else!7644) (Error!7644) (Case!7644) (If!7644) (Extends!7644) (Abstract!7644) (Class!7644) (Val!7644) (DelimiterValue!15288 (del!7704 List!45168)) (KeywordValue!7650 (value!231828 List!45168)) (CommentValue!15288 (value!231829 List!45168)) (WhitespaceValue!15288 (value!231830 List!45168)) (IndentationValue!7644 (value!231831 List!45168)) (String!51969) (Int32!7644) (Broken!38221 (value!231832 List!45168)) (Boolean!7645) (Unit!64324) (OperatorValue!7647 (op!7704 List!45168)) (IdentifierValue!15288 (value!231833 List!45168)) (IdentifierValue!15289 (value!231834 List!45168)) (WhitespaceValue!15289 (value!231835 List!45168)) (True!15288) (False!15288) (Broken!38222 (value!231836 List!45168)) (Broken!38223 (value!231837 List!45168)) (True!15289) (RightBrace!7644) (RightBracket!7644) (Colon!7644) (Null!7644) (Comma!7644) (LeftBracket!7644) (False!15289) (LeftBrace!7644) (ImaginaryLiteralValue!7644 (text!53954 List!45168)) (StringLiteralValue!22932 (value!231838 List!45168)) (EOFValue!7644 (value!231839 List!45168)) (IdentValue!7644 (value!231840 List!45168)) (DelimiterValue!15289 (value!231841 List!45168)) (DedentValue!7644 (value!231842 List!45168)) (NewLineValue!7644 (value!231843 List!45168)) (IntegerValue!22932 (value!231844 (_ BitVec 32)) (text!53955 List!45168)) (IntegerValue!22933 (value!231845 Int) (text!53956 List!45168)) (Times!7644) (Or!7644) (Equal!7644) (Minus!7644) (Broken!38224 (value!231846 List!45168)) (And!7644) (Div!7644) (LessEqual!7644) (Mod!7644) (Concat!19963) (Not!7644) (Plus!7644) (SpaceValue!7644 (value!231847 List!45168)) (IntegerValue!22934 (value!231848 Int) (text!53957 List!45168)) (StringLiteralValue!22933 (text!53958 List!45168)) (FloatLiteralValue!15289 (text!53959 List!45168)) (BytesLiteralValue!7644 (value!231849 List!45168)) (CommentValue!15289 (value!231850 List!45168)) (StringLiteralValue!22934 (value!231851 List!45168)) (ErrorTokenValue!7644 (msg!7705 List!45168)) )
))
(declare-datatypes ((IArray!27255 0))(
  ( (IArray!27256 (innerList!13685 List!45167)) )
))
(declare-datatypes ((Conc!13625 0))(
  ( (Node!13625 (left!33726 Conc!13625) (right!34056 Conc!13625) (csize!27480 Int) (cheight!13836 Int)) (Leaf!21047 (xs!16931 IArray!27255) (csize!27481 Int)) (Empty!13625) )
))
(declare-datatypes ((BalanceConc!26844 0))(
  ( (BalanceConc!26845 (c!710650 Conc!13625)) )
))
(declare-datatypes ((Regex!12319 0))(
  ( (ElementMatch!12319 (c!710651 C!24824)) (Concat!19964 (regOne!25150 Regex!12319) (regTwo!25150 Regex!12319)) (EmptyExpr!12319) (Star!12319 (reg!12648 Regex!12319)) (EmptyLang!12319) (Union!12319 (regOne!25151 Regex!12319) (regTwo!25151 Regex!12319)) )
))
(declare-datatypes ((String!51970 0))(
  ( (String!51971 (value!231852 String)) )
))
(declare-datatypes ((TokenValueInjection!14716 0))(
  ( (TokenValueInjection!14717 (toValue!10078 Int) (toChars!9937 Int)) )
))
(declare-datatypes ((Rule!14628 0))(
  ( (Rule!14629 (regex!7414 Regex!12319) (tag!8274 String!51970) (isSeparator!7414 Bool) (transformation!7414 TokenValueInjection!14716)) )
))
(declare-fun r!4008 () Rule!14628)

(declare-datatypes ((List!45169 0))(
  ( (Nil!45045) (Cons!45045 (h!50465 Rule!14628) (t!342976 List!45169)) )
))
(declare-fun rules!3756 () List!45169)

(declare-fun lt!1479623 () BalanceConc!26844)

(declare-datatypes ((LexerInterface!7003 0))(
  ( (LexerInterfaceExt!7000 (__x!27506 Int)) (Lexer!7001) )
))
(declare-fun thiss!25645 () LexerInterface!7003)

(declare-datatypes ((Token!13758 0))(
  ( (Token!13759 (value!231853 TokenValue!7644) (rule!10544 Rule!14628) (size!33393 Int) (originalCharacters!7910 List!45167)) )
))
(declare-datatypes ((tuple2!43410 0))(
  ( (tuple2!43411 (_1!24839 Token!13758) (_2!24839 List!45167)) )
))
(declare-datatypes ((Option!9720 0))(
  ( (None!9719) (Some!9719 (v!40377 tuple2!43410)) )
))
(declare-fun maxPrefix!4193 (LexerInterface!7003 List!45169 List!45167) Option!9720)

(declare-fun apply!10487 (TokenValueInjection!14716 BalanceConc!26844) TokenValue!7644)

(declare-fun size!33394 (List!45167) Int)

(declare-fun getSuffix!2676 (List!45167 List!45167) List!45167)

(assert (=> b!4148411 (= res!1698308 (= (maxPrefix!4193 thiss!25645 rules!3756 input!3238) (Some!9719 (tuple2!43411 (Token!13759 (apply!10487 (transformation!7414 r!4008) lt!1479623) r!4008 (size!33394 p!2912) p!2912) (getSuffix!2676 input!3238 p!2912)))))))

(declare-datatypes ((Unit!64325 0))(
  ( (Unit!64326) )
))
(declare-fun lt!1479626 () Unit!64325)

(declare-fun lemmaSemiInverse!2272 (TokenValueInjection!14716 BalanceConc!26844) Unit!64325)

(assert (=> b!4148411 (= lt!1479626 (lemmaSemiInverse!2272 (transformation!7414 r!4008) lt!1479623))))

(declare-fun seqFromList!5531 (List!45167) BalanceConc!26844)

(assert (=> b!4148411 (= lt!1479623 (seqFromList!5531 p!2912))))

(declare-fun rBis!149 () Rule!14628)

(declare-fun tp!1264505 () Bool)

(declare-fun b!4148412 () Bool)

(declare-fun e!2573932 () Bool)

(declare-fun e!2573942 () Bool)

(declare-fun inv!59652 (String!51970) Bool)

(declare-fun inv!59654 (TokenValueInjection!14716) Bool)

(assert (=> b!4148412 (= e!2573942 (and tp!1264505 (inv!59652 (tag!8274 rBis!149)) (inv!59654 (transformation!7414 rBis!149)) e!2573932))))

(declare-fun e!2573933 () Bool)

(assert (=> b!4148413 (= e!2573933 (and tp!1264507 tp!1264512))))

(declare-fun b!4148414 () Bool)

(declare-fun res!1698317 () Bool)

(assert (=> b!4148414 (=> (not res!1698317) (not e!2573935))))

(declare-fun matchR!6148 (Regex!12319 List!45167) Bool)

(assert (=> b!4148414 (= res!1698317 (matchR!6148 (regex!7414 r!4008) p!2912))))

(declare-fun b!4148415 () Bool)

(declare-fun res!1698319 () Bool)

(assert (=> b!4148415 (=> (not res!1698319) (not e!2573935))))

(declare-fun ruleValid!3220 (LexerInterface!7003 Rule!14628) Bool)

(assert (=> b!4148415 (= res!1698319 (ruleValid!3220 thiss!25645 r!4008))))

(declare-fun b!4148416 () Bool)

(declare-fun res!1698309 () Bool)

(declare-fun e!2573937 () Bool)

(assert (=> b!4148416 (=> res!1698309 e!2573937)))

(declare-fun contains!9096 (List!45169 Rule!14628) Bool)

(assert (=> b!4148416 (= res!1698309 (not (contains!9096 (t!342976 rules!3756) rBis!149)))))

(declare-fun b!4148417 () Bool)

(declare-fun e!2573939 () Bool)

(declare-fun tp!1264510 () Bool)

(assert (=> b!4148417 (= e!2573939 (and tp_is_empty!21561 tp!1264510))))

(declare-fun res!1698310 () Bool)

(assert (=> start!394726 (=> (not res!1698310) (not e!2573944))))

(get-info :version)

(assert (=> start!394726 (= res!1698310 ((_ is Lexer!7001) thiss!25645))))

(assert (=> start!394726 e!2573944))

(declare-fun e!2573936 () Bool)

(assert (=> start!394726 e!2573936))

(assert (=> start!394726 e!2573946))

(assert (=> start!394726 true))

(declare-fun e!2573941 () Bool)

(assert (=> start!394726 e!2573941))

(assert (=> start!394726 e!2573939))

(assert (=> start!394726 e!2573942))

(declare-fun b!4148418 () Bool)

(assert (=> b!4148418 (= e!2573937 true)))

(declare-fun lt!1479621 () Bool)

(assert (=> b!4148418 (= lt!1479621 (contains!9096 rules!3756 (h!50465 rules!3756)))))

(declare-fun rulesInvariant!6300 (LexerInterface!7003 List!45169) Bool)

(assert (=> b!4148418 (rulesInvariant!6300 thiss!25645 (t!342976 rules!3756))))

(declare-fun lt!1479624 () Unit!64325)

(declare-fun lemmaInvariantOnRulesThenOnTail!826 (LexerInterface!7003 Rule!14628 List!45169) Unit!64325)

(assert (=> b!4148418 (= lt!1479624 (lemmaInvariantOnRulesThenOnTail!826 thiss!25645 (h!50465 rules!3756) (t!342976 rules!3756)))))

(declare-fun lt!1479625 () Option!9720)

(assert (=> b!4148418 (= lt!1479625 (maxPrefix!4193 thiss!25645 (t!342976 rules!3756) input!3238))))

(declare-fun lt!1479620 () Option!9720)

(declare-fun maxPrefixOneRule!3132 (LexerInterface!7003 Rule!14628 List!45167) Option!9720)

(assert (=> b!4148418 (= lt!1479620 (maxPrefixOneRule!3132 thiss!25645 (h!50465 rules!3756) input!3238))))

(declare-fun b!4148419 () Bool)

(declare-fun res!1698318 () Bool)

(assert (=> b!4148419 (=> (not res!1698318) (not e!2573944))))

(declare-fun isPrefix!4349 (List!45167 List!45167) Bool)

(assert (=> b!4148419 (= res!1698318 (isPrefix!4349 p!2912 input!3238))))

(declare-fun e!2573934 () Bool)

(assert (=> b!4148420 (= e!2573934 (and tp!1264511 tp!1264509))))

(declare-fun b!4148421 () Bool)

(declare-fun res!1698311 () Bool)

(assert (=> b!4148421 (=> (not res!1698311) (not e!2573944))))

(declare-fun isEmpty!26888 (List!45167) Bool)

(assert (=> b!4148421 (= res!1698311 (not (isEmpty!26888 p!2912)))))

(declare-fun b!4148422 () Bool)

(declare-fun res!1698315 () Bool)

(assert (=> b!4148422 (=> (not res!1698315) (not e!2573944))))

(assert (=> b!4148422 (= res!1698315 (contains!9096 rules!3756 r!4008))))

(declare-fun e!2573943 () Bool)

(declare-fun tp!1264508 () Bool)

(declare-fun b!4148423 () Bool)

(assert (=> b!4148423 (= e!2573943 (and tp!1264508 (inv!59652 (tag!8274 (h!50465 rules!3756))) (inv!59654 (transformation!7414 (h!50465 rules!3756))) e!2573934))))

(declare-fun b!4148424 () Bool)

(declare-fun tp!1264513 () Bool)

(assert (=> b!4148424 (= e!2573941 (and tp!1264513 (inv!59652 (tag!8274 r!4008)) (inv!59654 (transformation!7414 r!4008)) e!2573933))))

(declare-fun b!4148425 () Bool)

(declare-fun res!1698307 () Bool)

(assert (=> b!4148425 (=> (not res!1698307) (not e!2573944))))

(assert (=> b!4148425 (= res!1698307 (rulesInvariant!6300 thiss!25645 rules!3756))))

(declare-fun b!4148426 () Bool)

(declare-fun res!1698312 () Bool)

(assert (=> b!4148426 (=> (not res!1698312) (not e!2573935))))

(declare-fun getIndex!760 (List!45169 Rule!14628) Int)

(assert (=> b!4148426 (= res!1698312 (< (getIndex!760 rules!3756 rBis!149) (getIndex!760 rules!3756 r!4008)))))

(declare-fun b!4148427 () Bool)

(declare-fun res!1698316 () Bool)

(assert (=> b!4148427 (=> res!1698316 e!2573937)))

(assert (=> b!4148427 (= res!1698316 (not (contains!9096 (t!342976 rules!3756) r!4008)))))

(declare-fun b!4148428 () Bool)

(declare-fun res!1698314 () Bool)

(assert (=> b!4148428 (=> (not res!1698314) (not e!2573944))))

(assert (=> b!4148428 (= res!1698314 (contains!9096 rules!3756 rBis!149))))

(declare-fun b!4148429 () Bool)

(assert (=> b!4148429 (= e!2573935 (not e!2573937))))

(declare-fun res!1698313 () Bool)

(assert (=> b!4148429 (=> res!1698313 e!2573937)))

(assert (=> b!4148429 (= res!1698313 (or (and ((_ is Cons!45045) rules!3756) (= (h!50465 rules!3756) rBis!149)) (not ((_ is Cons!45045) rules!3756)) (= (h!50465 rules!3756) rBis!149)))))

(declare-fun lt!1479619 () Unit!64325)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2260 (LexerInterface!7003 Rule!14628 List!45169) Unit!64325)

(assert (=> b!4148429 (= lt!1479619 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2260 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4148429 (ruleValid!3220 thiss!25645 rBis!149)))

(declare-fun lt!1479622 () Unit!64325)

(assert (=> b!4148429 (= lt!1479622 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2260 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4148430 () Bool)

(declare-fun res!1698320 () Bool)

(assert (=> b!4148430 (=> (not res!1698320) (not e!2573944))))

(declare-fun isEmpty!26889 (List!45169) Bool)

(assert (=> b!4148430 (= res!1698320 (not (isEmpty!26889 rules!3756)))))

(declare-fun b!4148431 () Bool)

(declare-fun tp!1264514 () Bool)

(assert (=> b!4148431 (= e!2573936 (and e!2573943 tp!1264514))))

(assert (=> b!4148432 (= e!2573932 (and tp!1264506 tp!1264504))))

(assert (= (and start!394726 res!1698310) b!4148419))

(assert (= (and b!4148419 res!1698318) b!4148430))

(assert (= (and b!4148430 res!1698320) b!4148425))

(assert (= (and b!4148425 res!1698307) b!4148422))

(assert (= (and b!4148422 res!1698315) b!4148428))

(assert (= (and b!4148428 res!1698314) b!4148421))

(assert (= (and b!4148421 res!1698311) b!4148411))

(assert (= (and b!4148411 res!1698308) b!4148414))

(assert (= (and b!4148414 res!1698317) b!4148426))

(assert (= (and b!4148426 res!1698312) b!4148415))

(assert (= (and b!4148415 res!1698319) b!4148429))

(assert (= (and b!4148429 (not res!1698313)) b!4148427))

(assert (= (and b!4148427 (not res!1698316)) b!4148416))

(assert (= (and b!4148416 (not res!1698309)) b!4148418))

(assert (= b!4148423 b!4148420))

(assert (= b!4148431 b!4148423))

(assert (= (and start!394726 ((_ is Cons!45045) rules!3756)) b!4148431))

(assert (= (and start!394726 ((_ is Cons!45043) p!2912)) b!4148410))

(assert (= b!4148424 b!4148413))

(assert (= start!394726 b!4148424))

(assert (= (and start!394726 ((_ is Cons!45043) input!3238)) b!4148417))

(assert (= b!4148412 b!4148432))

(assert (= start!394726 b!4148412))

(declare-fun m!4744205 () Bool)

(assert (=> b!4148426 m!4744205))

(declare-fun m!4744207 () Bool)

(assert (=> b!4148426 m!4744207))

(declare-fun m!4744209 () Bool)

(assert (=> b!4148412 m!4744209))

(declare-fun m!4744211 () Bool)

(assert (=> b!4148412 m!4744211))

(declare-fun m!4744213 () Bool)

(assert (=> b!4148411 m!4744213))

(declare-fun m!4744215 () Bool)

(assert (=> b!4148411 m!4744215))

(declare-fun m!4744217 () Bool)

(assert (=> b!4148411 m!4744217))

(declare-fun m!4744219 () Bool)

(assert (=> b!4148411 m!4744219))

(declare-fun m!4744221 () Bool)

(assert (=> b!4148411 m!4744221))

(declare-fun m!4744223 () Bool)

(assert (=> b!4148411 m!4744223))

(declare-fun m!4744225 () Bool)

(assert (=> b!4148418 m!4744225))

(declare-fun m!4744227 () Bool)

(assert (=> b!4148418 m!4744227))

(declare-fun m!4744229 () Bool)

(assert (=> b!4148418 m!4744229))

(declare-fun m!4744231 () Bool)

(assert (=> b!4148418 m!4744231))

(declare-fun m!4744233 () Bool)

(assert (=> b!4148418 m!4744233))

(declare-fun m!4744235 () Bool)

(assert (=> b!4148428 m!4744235))

(declare-fun m!4744237 () Bool)

(assert (=> b!4148422 m!4744237))

(declare-fun m!4744239 () Bool)

(assert (=> b!4148424 m!4744239))

(declare-fun m!4744241 () Bool)

(assert (=> b!4148424 m!4744241))

(declare-fun m!4744243 () Bool)

(assert (=> b!4148419 m!4744243))

(declare-fun m!4744245 () Bool)

(assert (=> b!4148425 m!4744245))

(declare-fun m!4744247 () Bool)

(assert (=> b!4148415 m!4744247))

(declare-fun m!4744249 () Bool)

(assert (=> b!4148423 m!4744249))

(declare-fun m!4744251 () Bool)

(assert (=> b!4148423 m!4744251))

(declare-fun m!4744253 () Bool)

(assert (=> b!4148430 m!4744253))

(declare-fun m!4744255 () Bool)

(assert (=> b!4148414 m!4744255))

(declare-fun m!4744257 () Bool)

(assert (=> b!4148416 m!4744257))

(declare-fun m!4744259 () Bool)

(assert (=> b!4148427 m!4744259))

(declare-fun m!4744261 () Bool)

(assert (=> b!4148421 m!4744261))

(declare-fun m!4744263 () Bool)

(assert (=> b!4148429 m!4744263))

(declare-fun m!4744265 () Bool)

(assert (=> b!4148429 m!4744265))

(declare-fun m!4744267 () Bool)

(assert (=> b!4148429 m!4744267))

(check-sat (not b!4148422) (not b!4148429) (not b!4148417) (not b_next!119163) (not b_next!119165) (not b!4148415) b_and!322579 (not b!4148423) (not b!4148416) (not b!4148431) (not b!4148426) (not b!4148428) (not b!4148425) (not b_next!119173) (not b!4148424) (not b!4148414) b_and!322573 (not b_next!119171) (not b!4148411) (not b_next!119167) b_and!322577 tp_is_empty!21561 (not b!4148421) b_and!322569 (not b!4148430) (not b!4148419) b_and!322571 (not b!4148418) (not b!4148427) (not b!4148410) (not b_next!119169) (not b!4148412) b_and!322575)
(check-sat b_and!322573 (not b_next!119163) (not b_next!119165) (not b_next!119171) b_and!322579 b_and!322569 b_and!322571 (not b_next!119173) (not b_next!119169) b_and!322575 (not b_next!119167) b_and!322577)
