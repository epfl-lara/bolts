; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525138 () Bool)

(assert start!525138)

(declare-fun b!4976801 () Bool)

(declare-fun b_free!132979 () Bool)

(declare-fun b_next!133769 () Bool)

(assert (=> b!4976801 (= b_free!132979 (not b_next!133769))))

(declare-fun tp!1395579 () Bool)

(declare-fun b_and!349391 () Bool)

(assert (=> b!4976801 (= tp!1395579 b_and!349391)))

(declare-fun b_free!132981 () Bool)

(declare-fun b_next!133771 () Bool)

(assert (=> b!4976801 (= b_free!132981 (not b_next!133771))))

(declare-fun tp!1395581 () Bool)

(declare-fun b_and!349393 () Bool)

(assert (=> b!4976801 (= tp!1395581 b_and!349393)))

(declare-fun b!4976810 () Bool)

(declare-fun e!3110455 () Bool)

(assert (=> b!4976810 (= e!3110455 true)))

(declare-fun b!4976809 () Bool)

(declare-fun e!3110454 () Bool)

(assert (=> b!4976809 (= e!3110454 e!3110455)))

(declare-fun b!4976794 () Bool)

(assert (=> b!4976794 e!3110454))

(assert (= b!4976809 b!4976810))

(assert (= b!4976794 b!4976809))

(declare-fun order!26275 () Int)

(declare-fun order!26273 () Int)

(declare-fun lambda!247570 () Int)

(declare-datatypes ((C!27556 0))(
  ( (C!27557 (val!23144 Int)) )
))
(declare-datatypes ((List!57636 0))(
  ( (Nil!57512) (Cons!57512 (h!63960 C!27556) (t!369648 List!57636)) )
))
(declare-datatypes ((IArray!30405 0))(
  ( (IArray!30406 (innerList!15260 List!57636)) )
))
(declare-datatypes ((List!57637 0))(
  ( (Nil!57513) (Cons!57513 (h!63961 (_ BitVec 16)) (t!369649 List!57637)) )
))
(declare-datatypes ((String!65523 0))(
  ( (String!65524 (value!269373 String)) )
))
(declare-datatypes ((Regex!13653 0))(
  ( (ElementMatch!13653 (c!849207 C!27556)) (Concat!22383 (regOne!27818 Regex!13653) (regTwo!27818 Regex!13653)) (EmptyExpr!13653) (Star!13653 (reg!13982 Regex!13653)) (EmptyLang!13653) (Union!13653 (regOne!27819 Regex!13653) (regTwo!27819 Regex!13653)) )
))
(declare-datatypes ((Conc!15172 0))(
  ( (Node!15172 (left!41968 Conc!15172) (right!42298 Conc!15172) (csize!30574 Int) (cheight!15383 Int)) (Leaf!25207 (xs!18498 IArray!30405) (csize!30575 Int)) (Empty!15172) )
))
(declare-datatypes ((BalanceConc!29774 0))(
  ( (BalanceConc!29775 (c!849208 Conc!15172)) )
))
(declare-datatypes ((TokenValue!8730 0))(
  ( (FloatLiteralValue!17460 (text!61555 List!57637)) (TokenValueExt!8729 (__x!34753 Int)) (Broken!43650 (value!269374 List!57637)) (Object!8853) (End!8730) (Def!8730) (Underscore!8730) (Match!8730) (Else!8730) (Error!8730) (Case!8730) (If!8730) (Extends!8730) (Abstract!8730) (Class!8730) (Val!8730) (DelimiterValue!17460 (del!8790 List!57637)) (KeywordValue!8736 (value!269375 List!57637)) (CommentValue!17460 (value!269376 List!57637)) (WhitespaceValue!17460 (value!269377 List!57637)) (IndentationValue!8730 (value!269378 List!57637)) (String!65525) (Int32!8730) (Broken!43651 (value!269379 List!57637)) (Boolean!8731) (Unit!148495) (OperatorValue!8733 (op!8790 List!57637)) (IdentifierValue!17460 (value!269380 List!57637)) (IdentifierValue!17461 (value!269381 List!57637)) (WhitespaceValue!17461 (value!269382 List!57637)) (True!17460) (False!17460) (Broken!43652 (value!269383 List!57637)) (Broken!43653 (value!269384 List!57637)) (True!17461) (RightBrace!8730) (RightBracket!8730) (Colon!8730) (Null!8730) (Comma!8730) (LeftBracket!8730) (False!17461) (LeftBrace!8730) (ImaginaryLiteralValue!8730 (text!61556 List!57637)) (StringLiteralValue!26190 (value!269385 List!57637)) (EOFValue!8730 (value!269386 List!57637)) (IdentValue!8730 (value!269387 List!57637)) (DelimiterValue!17461 (value!269388 List!57637)) (DedentValue!8730 (value!269389 List!57637)) (NewLineValue!8730 (value!269390 List!57637)) (IntegerValue!26190 (value!269391 (_ BitVec 32)) (text!61557 List!57637)) (IntegerValue!26191 (value!269392 Int) (text!61558 List!57637)) (Times!8730) (Or!8730) (Equal!8730) (Minus!8730) (Broken!43654 (value!269393 List!57637)) (And!8730) (Div!8730) (LessEqual!8730) (Mod!8730) (Concat!22384) (Not!8730) (Plus!8730) (SpaceValue!8730 (value!269394 List!57637)) (IntegerValue!26192 (value!269395 Int) (text!61559 List!57637)) (StringLiteralValue!26191 (text!61560 List!57637)) (FloatLiteralValue!17461 (text!61561 List!57637)) (BytesLiteralValue!8730 (value!269396 List!57637)) (CommentValue!17461 (value!269397 List!57637)) (StringLiteralValue!26192 (value!269398 List!57637)) (ErrorTokenValue!8730 (msg!8791 List!57637)) )
))
(declare-datatypes ((TokenValueInjection!16768 0))(
  ( (TokenValueInjection!16769 (toValue!11395 Int) (toChars!11254 Int)) )
))
(declare-datatypes ((Rule!16640 0))(
  ( (Rule!16641 (regex!8420 Regex!13653) (tag!9284 String!65523) (isSeparator!8420 Bool) (transformation!8420 TokenValueInjection!16768)) )
))
(declare-fun rule!200 () Rule!16640)

(declare-fun dynLambda!23228 (Int Int) Int)

(declare-fun dynLambda!23229 (Int Int) Int)

(assert (=> b!4976810 (< (dynLambda!23228 order!26273 (toValue!11395 (transformation!8420 rule!200))) (dynLambda!23229 order!26275 lambda!247570))))

(declare-fun order!26277 () Int)

(declare-fun dynLambda!23230 (Int Int) Int)

(assert (=> b!4976810 (< (dynLambda!23230 order!26277 (toChars!11254 (transformation!8420 rule!200))) (dynLambda!23229 order!26275 lambda!247570))))

(declare-fun b!4976792 () Bool)

(declare-fun e!3110445 () Bool)

(declare-fun input!1580 () BalanceConc!29774)

(declare-fun tp!1395580 () Bool)

(declare-fun inv!75234 (Conc!15172) Bool)

(assert (=> b!4976792 (= e!3110445 (and (inv!75234 (c!849208 input!1580)) tp!1395580))))

(declare-fun res!2124410 () Bool)

(declare-fun e!3110442 () Bool)

(assert (=> b!4976794 (=> res!2124410 e!3110442)))

(declare-fun Forall!1770 (Int) Bool)

(assert (=> b!4976794 (= res!2124410 (not (Forall!1770 lambda!247570)))))

(declare-fun b!4976795 () Bool)

(declare-fun e!3110443 () Bool)

(declare-fun e!3110444 () Bool)

(assert (=> b!4976795 (= e!3110443 e!3110444)))

(declare-fun res!2124408 () Bool)

(assert (=> b!4976795 (=> (not res!2124408) (not e!3110444))))

(declare-fun lt!2055254 () List!57636)

(declare-fun totalInput!520 () BalanceConc!29774)

(declare-fun isSuffix!1219 (List!57636 List!57636) Bool)

(declare-fun list!18412 (BalanceConc!29774) List!57636)

(assert (=> b!4976795 (= res!2124408 (isSuffix!1219 lt!2055254 (list!18412 totalInput!520)))))

(assert (=> b!4976795 (= lt!2055254 (list!18412 input!1580))))

(declare-fun b!4976796 () Bool)

(declare-fun res!2124406 () Bool)

(assert (=> b!4976796 (=> (not res!2124406) (not e!3110443))))

(declare-datatypes ((LexerInterface!8012 0))(
  ( (LexerInterfaceExt!8009 (__x!34754 Int)) (Lexer!8010) )
))
(declare-fun thiss!16165 () LexerInterface!8012)

(declare-fun ruleValid!3828 (LexerInterface!8012 Rule!16640) Bool)

(assert (=> b!4976796 (= res!2124406 (ruleValid!3828 thiss!16165 rule!200))))

(declare-fun b!4976797 () Bool)

(declare-fun e!3110449 () Bool)

(declare-fun tp!1395578 () Bool)

(assert (=> b!4976797 (= e!3110449 (and (inv!75234 (c!849208 totalInput!520)) tp!1395578))))

(declare-fun b!4976798 () Bool)

(assert (=> b!4976798 (= e!3110442 (Forall!1770 lambda!247570))))

(declare-fun b!4976799 () Bool)

(declare-fun e!3110447 () Bool)

(declare-datatypes ((tuple2!62276 0))(
  ( (tuple2!62277 (_1!34441 List!57636) (_2!34441 List!57636)) )
))
(declare-fun lt!2055255 () tuple2!62276)

(declare-fun matchR!6647 (Regex!13653 List!57636) Bool)

(assert (=> b!4976799 (= e!3110447 (matchR!6647 (regex!8420 rule!200) (_1!34441 lt!2055255)))))

(declare-fun b!4976793 () Bool)

(assert (=> b!4976793 (= e!3110444 (not e!3110442))))

(declare-fun res!2124405 () Bool)

(assert (=> b!4976793 (=> res!2124405 e!3110442)))

(declare-fun semiInverseModEq!3713 (Int Int) Bool)

(assert (=> b!4976793 (= res!2124405 (not (semiInverseModEq!3713 (toChars!11254 (transformation!8420 rule!200)) (toValue!11395 (transformation!8420 rule!200)))))))

(declare-datatypes ((Unit!148496 0))(
  ( (Unit!148497) )
))
(declare-fun lt!2055253 () Unit!148496)

(declare-fun lemmaInv!1343 (TokenValueInjection!16768) Unit!148496)

(assert (=> b!4976793 (= lt!2055253 (lemmaInv!1343 (transformation!8420 rule!200)))))

(assert (=> b!4976793 e!3110447))

(declare-fun res!2124411 () Bool)

(assert (=> b!4976793 (=> res!2124411 e!3110447)))

(declare-fun isEmpty!31001 (List!57636) Bool)

(assert (=> b!4976793 (= res!2124411 (isEmpty!31001 (_1!34441 lt!2055255)))))

(declare-fun findLongestMatchInner!1864 (Regex!13653 List!57636 Int List!57636 List!57636 Int) tuple2!62276)

(declare-fun size!38115 (List!57636) Int)

(assert (=> b!4976793 (= lt!2055255 (findLongestMatchInner!1864 (regex!8420 rule!200) Nil!57512 (size!38115 Nil!57512) lt!2055254 lt!2055254 (size!38115 lt!2055254)))))

(declare-fun lt!2055256 () Unit!148496)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1825 (Regex!13653 List!57636) Unit!148496)

(assert (=> b!4976793 (= lt!2055256 (longestMatchIsAcceptedByMatchOrIsEmpty!1825 (regex!8420 rule!200) lt!2055254))))

(declare-fun res!2124409 () Bool)

(assert (=> start!525138 (=> (not res!2124409) (not e!3110443))))

(get-info :version)

(assert (=> start!525138 (= res!2124409 ((_ is Lexer!8010) thiss!16165))))

(assert (=> start!525138 e!3110443))

(assert (=> start!525138 true))

(declare-fun e!3110446 () Bool)

(assert (=> start!525138 e!3110446))

(declare-fun inv!75235 (BalanceConc!29774) Bool)

(assert (=> start!525138 (and (inv!75235 input!1580) e!3110445)))

(assert (=> start!525138 (and (inv!75235 totalInput!520) e!3110449)))

(declare-fun b!4976800 () Bool)

(declare-fun tp!1395582 () Bool)

(declare-fun e!3110448 () Bool)

(declare-fun inv!75230 (String!65523) Bool)

(declare-fun inv!75236 (TokenValueInjection!16768) Bool)

(assert (=> b!4976800 (= e!3110446 (and tp!1395582 (inv!75230 (tag!9284 rule!200)) (inv!75236 (transformation!8420 rule!200)) e!3110448))))

(assert (=> b!4976801 (= e!3110448 (and tp!1395579 tp!1395581))))

(declare-fun b!4976802 () Bool)

(declare-fun res!2124407 () Bool)

(assert (=> b!4976802 (=> (not res!2124407) (not e!3110444))))

(declare-fun isEmpty!31002 (BalanceConc!29774) Bool)

(declare-datatypes ((tuple2!62278 0))(
  ( (tuple2!62279 (_1!34442 BalanceConc!29774) (_2!34442 BalanceConc!29774)) )
))
(declare-fun findLongestMatchWithZipperSequenceV2!183 (Regex!13653 BalanceConc!29774 BalanceConc!29774) tuple2!62278)

(assert (=> b!4976802 (= res!2124407 (not (isEmpty!31002 (_1!34442 (findLongestMatchWithZipperSequenceV2!183 (regex!8420 rule!200) input!1580 totalInput!520)))))))

(assert (= (and start!525138 res!2124409) b!4976796))

(assert (= (and b!4976796 res!2124406) b!4976795))

(assert (= (and b!4976795 res!2124408) b!4976802))

(assert (= (and b!4976802 res!2124407) b!4976793))

(assert (= (and b!4976793 (not res!2124411)) b!4976799))

(assert (= (and b!4976793 (not res!2124405)) b!4976794))

(assert (= (and b!4976794 (not res!2124410)) b!4976798))

(assert (= b!4976800 b!4976801))

(assert (= start!525138 b!4976800))

(assert (= start!525138 b!4976792))

(assert (= start!525138 b!4976797))

(declare-fun m!6007004 () Bool)

(assert (=> b!4976802 m!6007004))

(declare-fun m!6007006 () Bool)

(assert (=> b!4976802 m!6007006))

(declare-fun m!6007008 () Bool)

(assert (=> b!4976795 m!6007008))

(assert (=> b!4976795 m!6007008))

(declare-fun m!6007010 () Bool)

(assert (=> b!4976795 m!6007010))

(declare-fun m!6007012 () Bool)

(assert (=> b!4976795 m!6007012))

(declare-fun m!6007014 () Bool)

(assert (=> b!4976799 m!6007014))

(declare-fun m!6007016 () Bool)

(assert (=> start!525138 m!6007016))

(declare-fun m!6007018 () Bool)

(assert (=> start!525138 m!6007018))

(declare-fun m!6007020 () Bool)

(assert (=> b!4976800 m!6007020))

(declare-fun m!6007022 () Bool)

(assert (=> b!4976800 m!6007022))

(declare-fun m!6007024 () Bool)

(assert (=> b!4976792 m!6007024))

(declare-fun m!6007026 () Bool)

(assert (=> b!4976797 m!6007026))

(declare-fun m!6007028 () Bool)

(assert (=> b!4976794 m!6007028))

(declare-fun m!6007030 () Bool)

(assert (=> b!4976793 m!6007030))

(declare-fun m!6007032 () Bool)

(assert (=> b!4976793 m!6007032))

(declare-fun m!6007034 () Bool)

(assert (=> b!4976793 m!6007034))

(declare-fun m!6007036 () Bool)

(assert (=> b!4976793 m!6007036))

(declare-fun m!6007038 () Bool)

(assert (=> b!4976793 m!6007038))

(assert (=> b!4976793 m!6007030))

(declare-fun m!6007040 () Bool)

(assert (=> b!4976793 m!6007040))

(declare-fun m!6007042 () Bool)

(assert (=> b!4976793 m!6007042))

(assert (=> b!4976793 m!6007032))

(declare-fun m!6007044 () Bool)

(assert (=> b!4976796 m!6007044))

(assert (=> b!4976798 m!6007028))

(check-sat (not b!4976795) (not b!4976793) (not b!4976794) (not b!4976799) (not b!4976796) (not b_next!133771) (not b!4976792) (not b!4976797) (not b!4976798) (not start!525138) (not b!4976802) (not b!4976800) b_and!349391 (not b_next!133769) b_and!349393)
(check-sat b_and!349393 b_and!349391 (not b_next!133771) (not b_next!133769))
