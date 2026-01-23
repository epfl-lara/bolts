; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525158 () Bool)

(assert start!525158)

(declare-fun b!4977248 () Bool)

(declare-fun b_free!133019 () Bool)

(declare-fun b_next!133809 () Bool)

(assert (=> b!4977248 (= b_free!133019 (not b_next!133809))))

(declare-fun tp!1395732 () Bool)

(declare-fun b_and!349431 () Bool)

(assert (=> b!4977248 (= tp!1395732 b_and!349431)))

(declare-fun b_free!133021 () Bool)

(declare-fun b_next!133811 () Bool)

(assert (=> b!4977248 (= b_free!133021 (not b_next!133811))))

(declare-fun tp!1395728 () Bool)

(declare-fun b_and!349433 () Bool)

(assert (=> b!4977248 (= tp!1395728 b_and!349433)))

(declare-fun b!4977268 () Bool)

(declare-fun e!3110839 () Bool)

(assert (=> b!4977268 (= e!3110839 true)))

(declare-fun b!4977267 () Bool)

(declare-fun e!3110838 () Bool)

(assert (=> b!4977267 (= e!3110838 e!3110839)))

(declare-fun b!4977250 () Bool)

(assert (=> b!4977250 e!3110838))

(assert (= b!4977267 b!4977268))

(assert (= b!4977250 b!4977267))

(declare-fun lambda!247640 () Int)

(declare-fun order!26335 () Int)

(declare-fun order!26333 () Int)

(declare-datatypes ((C!27576 0))(
  ( (C!27577 (val!23154 Int)) )
))
(declare-datatypes ((List!57656 0))(
  ( (Nil!57532) (Cons!57532 (h!63980 C!27576) (t!369668 List!57656)) )
))
(declare-datatypes ((IArray!30425 0))(
  ( (IArray!30426 (innerList!15270 List!57656)) )
))
(declare-datatypes ((List!57657 0))(
  ( (Nil!57533) (Cons!57533 (h!63981 (_ BitVec 16)) (t!369669 List!57657)) )
))
(declare-datatypes ((String!65573 0))(
  ( (String!65574 (value!269653 String)) )
))
(declare-datatypes ((Regex!13663 0))(
  ( (ElementMatch!13663 (c!849237 C!27576)) (Concat!22403 (regOne!27838 Regex!13663) (regTwo!27838 Regex!13663)) (EmptyExpr!13663) (Star!13663 (reg!13992 Regex!13663)) (EmptyLang!13663) (Union!13663 (regOne!27839 Regex!13663) (regTwo!27839 Regex!13663)) )
))
(declare-datatypes ((Conc!15182 0))(
  ( (Node!15182 (left!42003 Conc!15182) (right!42333 Conc!15182) (csize!30594 Int) (cheight!15393 Int)) (Leaf!25222 (xs!18508 IArray!30425) (csize!30595 Int)) (Empty!15182) )
))
(declare-datatypes ((BalanceConc!29794 0))(
  ( (BalanceConc!29795 (c!849238 Conc!15182)) )
))
(declare-datatypes ((TokenValue!8740 0))(
  ( (FloatLiteralValue!17480 (text!61625 List!57657)) (TokenValueExt!8739 (__x!34773 Int)) (Broken!43700 (value!269654 List!57657)) (Object!8863) (End!8740) (Def!8740) (Underscore!8740) (Match!8740) (Else!8740) (Error!8740) (Case!8740) (If!8740) (Extends!8740) (Abstract!8740) (Class!8740) (Val!8740) (DelimiterValue!17480 (del!8800 List!57657)) (KeywordValue!8746 (value!269655 List!57657)) (CommentValue!17480 (value!269656 List!57657)) (WhitespaceValue!17480 (value!269657 List!57657)) (IndentationValue!8740 (value!269658 List!57657)) (String!65575) (Int32!8740) (Broken!43701 (value!269659 List!57657)) (Boolean!8741) (Unit!148525) (OperatorValue!8743 (op!8800 List!57657)) (IdentifierValue!17480 (value!269660 List!57657)) (IdentifierValue!17481 (value!269661 List!57657)) (WhitespaceValue!17481 (value!269662 List!57657)) (True!17480) (False!17480) (Broken!43702 (value!269663 List!57657)) (Broken!43703 (value!269664 List!57657)) (True!17481) (RightBrace!8740) (RightBracket!8740) (Colon!8740) (Null!8740) (Comma!8740) (LeftBracket!8740) (False!17481) (LeftBrace!8740) (ImaginaryLiteralValue!8740 (text!61626 List!57657)) (StringLiteralValue!26220 (value!269665 List!57657)) (EOFValue!8740 (value!269666 List!57657)) (IdentValue!8740 (value!269667 List!57657)) (DelimiterValue!17481 (value!269668 List!57657)) (DedentValue!8740 (value!269669 List!57657)) (NewLineValue!8740 (value!269670 List!57657)) (IntegerValue!26220 (value!269671 (_ BitVec 32)) (text!61627 List!57657)) (IntegerValue!26221 (value!269672 Int) (text!61628 List!57657)) (Times!8740) (Or!8740) (Equal!8740) (Minus!8740) (Broken!43704 (value!269673 List!57657)) (And!8740) (Div!8740) (LessEqual!8740) (Mod!8740) (Concat!22404) (Not!8740) (Plus!8740) (SpaceValue!8740 (value!269674 List!57657)) (IntegerValue!26222 (value!269675 Int) (text!61629 List!57657)) (StringLiteralValue!26221 (text!61630 List!57657)) (FloatLiteralValue!17481 (text!61631 List!57657)) (BytesLiteralValue!8740 (value!269676 List!57657)) (CommentValue!17481 (value!269677 List!57657)) (StringLiteralValue!26222 (value!269678 List!57657)) (ErrorTokenValue!8740 (msg!8801 List!57657)) )
))
(declare-datatypes ((TokenValueInjection!16788 0))(
  ( (TokenValueInjection!16789 (toValue!11405 Int) (toChars!11264 Int)) )
))
(declare-datatypes ((Rule!16660 0))(
  ( (Rule!16661 (regex!8430 Regex!13663) (tag!9294 String!65573) (isSeparator!8430 Bool) (transformation!8430 TokenValueInjection!16788)) )
))
(declare-fun rule!200 () Rule!16660)

(declare-fun dynLambda!23258 (Int Int) Int)

(declare-fun dynLambda!23259 (Int Int) Int)

(assert (=> b!4977268 (< (dynLambda!23258 order!26333 (toValue!11405 (transformation!8430 rule!200))) (dynLambda!23259 order!26335 lambda!247640))))

(declare-fun order!26337 () Int)

(declare-fun dynLambda!23260 (Int Int) Int)

(assert (=> b!4977268 (< (dynLambda!23260 order!26337 (toChars!11264 (transformation!8430 rule!200))) (dynLambda!23259 order!26335 lambda!247640))))

(declare-fun b!4977247 () Bool)

(declare-fun e!3110833 () Bool)

(declare-fun e!3110825 () Bool)

(assert (=> b!4977247 (= e!3110833 e!3110825)))

(declare-fun res!2124661 () Bool)

(assert (=> b!4977247 (=> (not res!2124661) (not e!3110825))))

(declare-datatypes ((tuple2!62336 0))(
  ( (tuple2!62337 (_1!34471 BalanceConc!29794) (_2!34471 BalanceConc!29794)) )
))
(declare-fun lt!2055563 () tuple2!62336)

(declare-fun isEmpty!31021 (BalanceConc!29794) Bool)

(assert (=> b!4977247 (= res!2124661 (not (isEmpty!31021 (_1!34471 lt!2055563))))))

(declare-fun input!1580 () BalanceConc!29794)

(declare-fun totalInput!520 () BalanceConc!29794)

(declare-fun findLongestMatchWithZipperSequenceV2!193 (Regex!13663 BalanceConc!29794 BalanceConc!29794) tuple2!62336)

(assert (=> b!4977247 (= lt!2055563 (findLongestMatchWithZipperSequenceV2!193 (regex!8430 rule!200) input!1580 totalInput!520))))

(declare-fun e!3110832 () Bool)

(assert (=> b!4977248 (= e!3110832 (and tp!1395732 tp!1395728))))

(declare-fun b!4977249 () Bool)

(declare-fun e!3110829 () Bool)

(declare-fun tp!1395729 () Bool)

(declare-fun inv!75279 (Conc!15182) Bool)

(assert (=> b!4977249 (= e!3110829 (and (inv!75279 (c!849238 totalInput!520)) tp!1395729))))

(declare-fun res!2124668 () Bool)

(declare-fun e!3110827 () Bool)

(assert (=> b!4977250 (=> res!2124668 e!3110827)))

(declare-fun Forall!1780 (Int) Bool)

(assert (=> b!4977250 (= res!2124668 (not (Forall!1780 lambda!247640)))))

(declare-fun b!4977251 () Bool)

(declare-fun res!2124662 () Bool)

(declare-fun e!3110823 () Bool)

(assert (=> b!4977251 (=> (not res!2124662) (not e!3110823))))

(declare-datatypes ((LexerInterface!8022 0))(
  ( (LexerInterfaceExt!8019 (__x!34774 Int)) (Lexer!8020) )
))
(declare-fun thiss!16165 () LexerInterface!8022)

(declare-fun ruleValid!3838 (LexerInterface!8022 Rule!16660) Bool)

(assert (=> b!4977251 (= res!2124662 (ruleValid!3838 thiss!16165 rule!200))))

(declare-fun b!4977252 () Bool)

(assert (=> b!4977252 (= e!3110825 (not e!3110827))))

(declare-fun res!2124663 () Bool)

(assert (=> b!4977252 (=> res!2124663 e!3110827)))

(declare-fun semiInverseModEq!3723 (Int Int) Bool)

(assert (=> b!4977252 (= res!2124663 (not (semiInverseModEq!3723 (toChars!11264 (transformation!8430 rule!200)) (toValue!11405 (transformation!8430 rule!200)))))))

(declare-datatypes ((Unit!148526 0))(
  ( (Unit!148527) )
))
(declare-fun lt!2055568 () Unit!148526)

(declare-fun lemmaInv!1353 (TokenValueInjection!16788) Unit!148526)

(assert (=> b!4977252 (= lt!2055568 (lemmaInv!1353 (transformation!8430 rule!200)))))

(declare-fun e!3110824 () Bool)

(assert (=> b!4977252 e!3110824))

(declare-fun res!2124667 () Bool)

(assert (=> b!4977252 (=> res!2124667 e!3110824)))

(declare-datatypes ((tuple2!62338 0))(
  ( (tuple2!62339 (_1!34472 List!57656) (_2!34472 List!57656)) )
))
(declare-fun lt!2055557 () tuple2!62338)

(declare-fun isEmpty!31022 (List!57656) Bool)

(assert (=> b!4977252 (= res!2124667 (isEmpty!31022 (_1!34472 lt!2055557)))))

(declare-fun lt!2055561 () List!57656)

(declare-fun findLongestMatchInner!1874 (Regex!13663 List!57656 Int List!57656 List!57656 Int) tuple2!62338)

(declare-fun size!38137 (List!57656) Int)

(assert (=> b!4977252 (= lt!2055557 (findLongestMatchInner!1874 (regex!8430 rule!200) Nil!57532 (size!38137 Nil!57532) lt!2055561 lt!2055561 (size!38137 lt!2055561)))))

(declare-fun lt!2055567 () Unit!148526)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1835 (Regex!13663 List!57656) Unit!148526)

(assert (=> b!4977252 (= lt!2055567 (longestMatchIsAcceptedByMatchOrIsEmpty!1835 (regex!8430 rule!200) lt!2055561))))

(declare-fun b!4977253 () Bool)

(declare-fun e!3110822 () Bool)

(declare-fun tp!1395731 () Bool)

(assert (=> b!4977253 (= e!3110822 (and (inv!75279 (c!849238 input!1580)) tp!1395731))))

(declare-fun b!4977254 () Bool)

(declare-fun e!3110831 () Bool)

(declare-fun tp!1395730 () Bool)

(declare-fun inv!75275 (String!65573) Bool)

(declare-fun inv!75280 (TokenValueInjection!16788) Bool)

(assert (=> b!4977254 (= e!3110831 (and tp!1395730 (inv!75275 (tag!9294 rule!200)) (inv!75280 (transformation!8430 rule!200)) e!3110832))))

(declare-fun b!4977255 () Bool)

(declare-fun e!3110826 () Bool)

(declare-fun e!3110828 () Bool)

(assert (=> b!4977255 (= e!3110826 e!3110828)))

(declare-fun res!2124666 () Bool)

(assert (=> b!4977255 (=> res!2124666 e!3110828)))

(declare-fun lt!2055565 () TokenValue!8740)

(declare-fun lt!2055559 () BalanceConc!29794)

(declare-fun apply!13921 (TokenValueInjection!16788 BalanceConc!29794) TokenValue!8740)

(assert (=> b!4977255 (= res!2124666 (not (= (apply!13921 (transformation!8430 rule!200) lt!2055559) lt!2055565)))))

(declare-fun lt!2055562 () Unit!148526)

(declare-fun lemmaEqSameImage!1179 (TokenValueInjection!16788 BalanceConc!29794 BalanceConc!29794) Unit!148526)

(assert (=> b!4977255 (= lt!2055562 (lemmaEqSameImage!1179 (transformation!8430 rule!200) (_1!34471 lt!2055563) lt!2055559))))

(declare-fun b!4977256 () Bool)

(declare-fun matchR!6657 (Regex!13663 List!57656) Bool)

(assert (=> b!4977256 (= e!3110824 (matchR!6657 (regex!8430 rule!200) (_1!34472 lt!2055557)))))

(declare-fun res!2124665 () Bool)

(assert (=> start!525158 (=> (not res!2124665) (not e!3110823))))

(get-info :version)

(assert (=> start!525158 (= res!2124665 ((_ is Lexer!8020) thiss!16165))))

(assert (=> start!525158 e!3110823))

(assert (=> start!525158 true))

(assert (=> start!525158 e!3110831))

(declare-fun inv!75281 (BalanceConc!29794) Bool)

(assert (=> start!525158 (and (inv!75281 totalInput!520) e!3110829)))

(assert (=> start!525158 (and (inv!75281 input!1580) e!3110822)))

(declare-fun b!4977257 () Bool)

(declare-fun res!2124669 () Bool)

(assert (=> b!4977257 (=> res!2124669 e!3110826)))

(declare-fun lt!2055560 () List!57656)

(declare-fun list!18422 (BalanceConc!29794) List!57656)

(assert (=> b!4977257 (= res!2124669 (not (= (list!18422 lt!2055559) lt!2055560)))))

(declare-fun b!4977258 () Bool)

(assert (=> b!4977258 (= e!3110827 e!3110826)))

(declare-fun res!2124660 () Bool)

(assert (=> b!4977258 (=> res!2124660 e!3110826)))

(declare-fun lt!2055564 () Bool)

(declare-fun lt!2055556 () Bool)

(assert (=> b!4977258 (= res!2124660 (or (not (= lt!2055564 lt!2055556)) (not lt!2055564)))))

(declare-datatypes ((Token!15324 0))(
  ( (Token!15325 (value!269679 TokenValue!8740) (rule!11682 Rule!16660) (size!38138 Int) (originalCharacters!8693 List!57656)) )
))
(declare-datatypes ((tuple2!62340 0))(
  ( (tuple2!62341 (_1!34473 Token!15324) (_2!34473 List!57656)) )
))
(declare-datatypes ((Option!14487 0))(
  ( (None!14486) (Some!14486 (v!50483 tuple2!62340)) )
))
(declare-fun isDefined!11396 (Option!14487) Bool)

(declare-fun maxPrefixOneRule!3650 (LexerInterface!8022 Rule!16660 List!57656) Option!14487)

(assert (=> b!4977258 (= lt!2055556 (isDefined!11396 (maxPrefixOneRule!3650 thiss!16165 rule!200 lt!2055561)))))

(declare-datatypes ((tuple2!62342 0))(
  ( (tuple2!62343 (_1!34474 Token!15324) (_2!34474 BalanceConc!29794)) )
))
(declare-datatypes ((Option!14488 0))(
  ( (None!14487) (Some!14487 (v!50484 tuple2!62342)) )
))
(declare-fun isDefined!11397 (Option!14488) Bool)

(declare-fun size!38139 (BalanceConc!29794) Int)

(assert (=> b!4977258 (= lt!2055564 (isDefined!11397 (Some!14487 (tuple2!62343 (Token!15325 lt!2055565 rule!200 (size!38139 (_1!34471 lt!2055563)) lt!2055560) (_2!34471 lt!2055563)))))))

(assert (=> b!4977258 (= lt!2055565 (apply!13921 (transformation!8430 rule!200) (_1!34471 lt!2055563)))))

(declare-fun lt!2055566 () Unit!148526)

(declare-fun ForallOf!1244 (Int BalanceConc!29794) Unit!148526)

(assert (=> b!4977258 (= lt!2055566 (ForallOf!1244 lambda!247640 lt!2055559))))

(declare-fun seqFromList!6055 (List!57656) BalanceConc!29794)

(assert (=> b!4977258 (= lt!2055559 (seqFromList!6055 lt!2055560))))

(assert (=> b!4977258 (= lt!2055560 (list!18422 (_1!34471 lt!2055563)))))

(declare-fun lt!2055558 () Unit!148526)

(assert (=> b!4977258 (= lt!2055558 (ForallOf!1244 lambda!247640 (_1!34471 lt!2055563)))))

(declare-fun b!4977259 () Bool)

(assert (=> b!4977259 (= e!3110823 e!3110833)))

(declare-fun res!2124664 () Bool)

(assert (=> b!4977259 (=> (not res!2124664) (not e!3110833))))

(declare-fun isSuffix!1229 (List!57656 List!57656) Bool)

(assert (=> b!4977259 (= res!2124664 (isSuffix!1229 lt!2055561 (list!18422 totalInput!520)))))

(assert (=> b!4977259 (= lt!2055561 (list!18422 input!1580))))

(declare-fun b!4977260 () Bool)

(assert (=> b!4977260 (= e!3110828 lt!2055556)))

(assert (= (and start!525158 res!2124665) b!4977251))

(assert (= (and b!4977251 res!2124662) b!4977259))

(assert (= (and b!4977259 res!2124664) b!4977247))

(assert (= (and b!4977247 res!2124661) b!4977252))

(assert (= (and b!4977252 (not res!2124667)) b!4977256))

(assert (= (and b!4977252 (not res!2124663)) b!4977250))

(assert (= (and b!4977250 (not res!2124668)) b!4977258))

(assert (= (and b!4977258 (not res!2124660)) b!4977257))

(assert (= (and b!4977257 (not res!2124669)) b!4977255))

(assert (= (and b!4977255 (not res!2124666)) b!4977260))

(assert (= b!4977254 b!4977248))

(assert (= start!525158 b!4977254))

(assert (= start!525158 b!4977249))

(assert (= start!525158 b!4977253))

(declare-fun m!6007572 () Bool)

(assert (=> b!4977257 m!6007572))

(declare-fun m!6007574 () Bool)

(assert (=> b!4977256 m!6007574))

(declare-fun m!6007576 () Bool)

(assert (=> b!4977247 m!6007576))

(declare-fun m!6007578 () Bool)

(assert (=> b!4977247 m!6007578))

(declare-fun m!6007580 () Bool)

(assert (=> start!525158 m!6007580))

(declare-fun m!6007582 () Bool)

(assert (=> start!525158 m!6007582))

(declare-fun m!6007584 () Bool)

(assert (=> b!4977253 m!6007584))

(declare-fun m!6007586 () Bool)

(assert (=> b!4977251 m!6007586))

(declare-fun m!6007588 () Bool)

(assert (=> b!4977255 m!6007588))

(declare-fun m!6007590 () Bool)

(assert (=> b!4977255 m!6007590))

(declare-fun m!6007592 () Bool)

(assert (=> b!4977252 m!6007592))

(declare-fun m!6007594 () Bool)

(assert (=> b!4977252 m!6007594))

(declare-fun m!6007596 () Bool)

(assert (=> b!4977252 m!6007596))

(declare-fun m!6007598 () Bool)

(assert (=> b!4977252 m!6007598))

(declare-fun m!6007600 () Bool)

(assert (=> b!4977252 m!6007600))

(declare-fun m!6007602 () Bool)

(assert (=> b!4977252 m!6007602))

(assert (=> b!4977252 m!6007598))

(assert (=> b!4977252 m!6007596))

(declare-fun m!6007604 () Bool)

(assert (=> b!4977252 m!6007604))

(declare-fun m!6007606 () Bool)

(assert (=> b!4977254 m!6007606))

(declare-fun m!6007608 () Bool)

(assert (=> b!4977254 m!6007608))

(declare-fun m!6007610 () Bool)

(assert (=> b!4977258 m!6007610))

(declare-fun m!6007612 () Bool)

(assert (=> b!4977258 m!6007612))

(declare-fun m!6007614 () Bool)

(assert (=> b!4977258 m!6007614))

(declare-fun m!6007616 () Bool)

(assert (=> b!4977258 m!6007616))

(assert (=> b!4977258 m!6007610))

(declare-fun m!6007618 () Bool)

(assert (=> b!4977258 m!6007618))

(declare-fun m!6007620 () Bool)

(assert (=> b!4977258 m!6007620))

(declare-fun m!6007622 () Bool)

(assert (=> b!4977258 m!6007622))

(declare-fun m!6007624 () Bool)

(assert (=> b!4977258 m!6007624))

(declare-fun m!6007626 () Bool)

(assert (=> b!4977258 m!6007626))

(declare-fun m!6007628 () Bool)

(assert (=> b!4977249 m!6007628))

(declare-fun m!6007630 () Bool)

(assert (=> b!4977259 m!6007630))

(assert (=> b!4977259 m!6007630))

(declare-fun m!6007632 () Bool)

(assert (=> b!4977259 m!6007632))

(declare-fun m!6007634 () Bool)

(assert (=> b!4977259 m!6007634))

(declare-fun m!6007636 () Bool)

(assert (=> b!4977250 m!6007636))

(check-sat (not b_next!133811) (not start!525158) (not b!4977255) (not b!4977250) (not b!4977258) (not b!4977259) (not b!4977257) (not b_next!133809) (not b!4977249) (not b!4977254) (not b!4977253) (not b!4977247) (not b!4977251) (not b!4977256) (not b!4977252) b_and!349433 b_and!349431)
(check-sat b_and!349433 b_and!349431 (not b_next!133811) (not b_next!133809))
