; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!746646 () Bool)

(assert start!746646)

(declare-fun b!7910145 () Bool)

(declare-fun b_free!135187 () Bool)

(declare-fun b_next!135977 () Bool)

(assert (=> b!7910145 (= b_free!135187 (not b_next!135977))))

(declare-fun tp!2356389 () Bool)

(declare-fun b_and!353459 () Bool)

(assert (=> b!7910145 (= tp!2356389 b_and!353459)))

(declare-fun b_free!135189 () Bool)

(declare-fun b_next!135979 () Bool)

(assert (=> b!7910145 (= b_free!135189 (not b_next!135979))))

(declare-fun tp!2356391 () Bool)

(declare-fun b_and!353461 () Bool)

(assert (=> b!7910145 (= tp!2356391 b_and!353461)))

(declare-fun b!7910143 () Bool)

(declare-fun e!4669364 () Bool)

(declare-fun tp_is_empty!53103 () Bool)

(declare-fun tp!2356392 () Bool)

(assert (=> b!7910143 (= e!4669364 (and tp_is_empty!53103 tp!2356392))))

(declare-fun res!3139565 () Bool)

(declare-fun e!4669363 () Bool)

(assert (=> start!746646 (=> (not res!3139565) (not e!4669363))))

(declare-datatypes ((LexerInterface!8253 0))(
  ( (LexerInterfaceExt!8250 (__x!35241 Int)) (Lexer!8251) )
))
(declare-fun thiss!15815 () LexerInterface!8253)

(assert (=> start!746646 (= res!3139565 (is-Lexer!8251 thiss!15815))))

(assert (=> start!746646 e!4669363))

(assert (=> start!746646 true))

(declare-fun e!4669361 () Bool)

(assert (=> start!746646 e!4669361))

(assert (=> start!746646 e!4669364))

(declare-fun b!7910144 () Bool)

(declare-fun e!4669368 () Bool)

(assert (=> b!7910144 (= e!4669363 e!4669368)))

(declare-fun res!3139564 () Bool)

(assert (=> b!7910144 (=> (not res!3139564) (not e!4669368))))

(declare-datatypes ((C!43058 0))(
  ( (C!43059 (val!31993 Int)) )
))
(declare-datatypes ((List!74483 0))(
  ( (Nil!74359) (Cons!74359 (h!80807 C!43058) (t!389856 List!74483)) )
))
(declare-datatypes ((tuple2!70410 0))(
  ( (tuple2!70411 (_1!38508 List!74483) (_2!38508 List!74483)) )
))
(declare-fun lt!2686600 () tuple2!70410)

(declare-fun isEmpty!42692 (List!74483) Bool)

(assert (=> b!7910144 (= res!3139564 (not (isEmpty!42692 (_1!38508 lt!2686600))))))

(declare-datatypes ((List!74484 0))(
  ( (Nil!74360) (Cons!74360 (h!80808 (_ BitVec 16)) (t!389857 List!74484)) )
))
(declare-datatypes ((IArray!31731 0))(
  ( (IArray!31732 (innerList!15923 List!74483)) )
))
(declare-datatypes ((Conc!15835 0))(
  ( (Node!15835 (left!56737 Conc!15835) (right!57067 Conc!15835) (csize!31900 Int) (cheight!16046 Int)) (Leaf!30134 (xs!19217 IArray!31731) (csize!31901 Int)) (Empty!15835) )
))
(declare-datatypes ((BalanceConc!30788 0))(
  ( (BalanceConc!30789 (c!1451218 Conc!15835)) )
))
(declare-datatypes ((TokenValue!8977 0))(
  ( (FloatLiteralValue!17954 (text!63284 List!74484)) (TokenValueExt!8976 (__x!35242 Int)) (Broken!44885 (value!288791 List!74484)) (Object!9100) (End!8977) (Def!8977) (Underscore!8977) (Match!8977) (Else!8977) (Error!8977) (Case!8977) (If!8977) (Extends!8977) (Abstract!8977) (Class!8977) (Val!8977) (DelimiterValue!17954 (del!9037 List!74484)) (KeywordValue!8983 (value!288792 List!74484)) (CommentValue!17954 (value!288793 List!74484)) (WhitespaceValue!17954 (value!288794 List!74484)) (IndentationValue!8977 (value!288795 List!74484)) (String!83308) (Int32!8977) (Broken!44886 (value!288796 List!74484)) (Boolean!8978) (Unit!169398) (OperatorValue!8980 (op!9037 List!74484)) (IdentifierValue!17954 (value!288797 List!74484)) (IdentifierValue!17955 (value!288798 List!74484)) (WhitespaceValue!17955 (value!288799 List!74484)) (True!17954) (False!17954) (Broken!44887 (value!288800 List!74484)) (Broken!44888 (value!288801 List!74484)) (True!17955) (RightBrace!8977) (RightBracket!8977) (Colon!8977) (Null!8977) (Comma!8977) (LeftBracket!8977) (False!17955) (LeftBrace!8977) (ImaginaryLiteralValue!8977 (text!63285 List!74484)) (StringLiteralValue!26931 (value!288802 List!74484)) (EOFValue!8977 (value!288803 List!74484)) (IdentValue!8977 (value!288804 List!74484)) (DelimiterValue!17955 (value!288805 List!74484)) (DedentValue!8977 (value!288806 List!74484)) (NewLineValue!8977 (value!288807 List!74484)) (IntegerValue!26931 (value!288808 (_ BitVec 32)) (text!63286 List!74484)) (IntegerValue!26932 (value!288809 Int) (text!63287 List!74484)) (Times!8977) (Or!8977) (Equal!8977) (Minus!8977) (Broken!44889 (value!288810 List!74484)) (And!8977) (Div!8977) (LessEqual!8977) (Mod!8977) (Concat!30341) (Not!8977) (Plus!8977) (SpaceValue!8977 (value!288811 List!74484)) (IntegerValue!26933 (value!288812 Int) (text!63288 List!74484)) (StringLiteralValue!26932 (text!63289 List!74484)) (FloatLiteralValue!17955 (text!63290 List!74484)) (BytesLiteralValue!8977 (value!288813 List!74484)) (CommentValue!17955 (value!288814 List!74484)) (StringLiteralValue!26933 (value!288815 List!74484)) (ErrorTokenValue!8977 (msg!9038 List!74484)) )
))
(declare-datatypes ((Regex!21364 0))(
  ( (ElementMatch!21364 (c!1451219 C!43058)) (Concat!30342 (regOne!43240 Regex!21364) (regTwo!43240 Regex!21364)) (EmptyExpr!21364) (Star!21364 (reg!21693 Regex!21364)) (EmptyLang!21364) (Union!21364 (regOne!43241 Regex!21364) (regTwo!43241 Regex!21364)) )
))
(declare-datatypes ((String!83309 0))(
  ( (String!83310 (value!288816 String)) )
))
(declare-datatypes ((TokenValueInjection!17262 0))(
  ( (TokenValueInjection!17263 (toValue!11718 Int) (toChars!11577 Int)) )
))
(declare-datatypes ((Rule!17122 0))(
  ( (Rule!17123 (regex!8661 Regex!21364) (tag!9525 String!83309) (isSeparator!8661 Bool) (transformation!8661 TokenValueInjection!17262)) )
))
(declare-fun rule!156 () Rule!17122)

(declare-fun input!1480 () List!74483)

(declare-fun findLongestMatch!1954 (Regex!21364 List!74483) tuple2!70410)

(assert (=> b!7910144 (= lt!2686600 (findLongestMatch!1954 (regex!8661 rule!156) input!1480))))

(declare-fun e!4669362 () Bool)

(assert (=> b!7910145 (= e!4669362 (and tp!2356389 tp!2356391))))

(declare-fun b!7910146 () Bool)

(declare-fun e!4669367 () Bool)

(declare-datatypes ((Token!15734 0))(
  ( (Token!15735 (value!288817 TokenValue!8977) (rule!11961 Rule!17122) (size!43126 Int) (originalCharacters!8898 List!74483)) )
))
(declare-datatypes ((tuple2!70412 0))(
  ( (tuple2!70413 (_1!38509 Token!15734) (_2!38509 List!74483)) )
))
(declare-datatypes ((Option!17939 0))(
  ( (None!17938) (Some!17938 (v!55095 tuple2!70412)) )
))
(declare-fun lt!2686598 () Option!17939)

(declare-fun isDefined!14497 (Option!17939) Bool)

(assert (=> b!7910146 (= e!4669367 (isDefined!14497 lt!2686598))))

(declare-fun b!7910147 () Bool)

(declare-fun res!3139567 () Bool)

(assert (=> b!7910147 (=> (not res!3139567) (not e!4669363))))

(declare-fun ruleValid!3972 (LexerInterface!8253 Rule!17122) Bool)

(assert (=> b!7910147 (= res!3139567 (ruleValid!3972 thiss!15815 rule!156))))

(declare-fun tp!2356390 () Bool)

(declare-fun b!7910148 () Bool)

(declare-fun inv!95401 (String!83309) Bool)

(declare-fun inv!95404 (TokenValueInjection!17262) Bool)

(assert (=> b!7910148 (= e!4669361 (and tp!2356390 (inv!95401 (tag!9525 rule!156)) (inv!95404 (transformation!8661 rule!156)) e!4669362))))

(declare-fun b!7910149 () Bool)

(declare-fun res!3139568 () Bool)

(assert (=> b!7910149 (=> res!3139568 e!4669367)))

(declare-fun matchR!10685 (Regex!21364 List!74483) Bool)

(declare-fun list!19307 (BalanceConc!30788) List!74483)

(declare-fun charsOf!5599 (Token!15734) BalanceConc!30788)

(declare-fun get!26740 (Option!17939) tuple2!70412)

(assert (=> b!7910149 (= res!3139568 (not (matchR!10685 (regex!8661 rule!156) (list!19307 (charsOf!5599 (_1!38509 (get!26740 lt!2686598)))))))))

(declare-fun b!7910150 () Bool)

(declare-fun e!4669365 () Bool)

(declare-fun lt!2686597 () tuple2!70410)

(assert (=> b!7910150 (= e!4669365 (matchR!10685 (regex!8661 rule!156) (_1!38508 lt!2686597)))))

(declare-fun b!7910151 () Bool)

(assert (=> b!7910151 (= e!4669368 (not e!4669367))))

(declare-fun res!3139563 () Bool)

(assert (=> b!7910151 (=> res!3139563 e!4669367)))

(declare-fun isEmpty!42693 (Option!17939) Bool)

(assert (=> b!7910151 (= res!3139563 (isEmpty!42693 lt!2686598))))

(declare-fun lt!2686602 () BalanceConc!30788)

(declare-fun apply!14370 (TokenValueInjection!17262 BalanceConc!30788) TokenValue!8977)

(declare-fun size!43127 (BalanceConc!30788) Int)

(assert (=> b!7910151 (= lt!2686598 (Some!17938 (tuple2!70413 (Token!15735 (apply!14370 (transformation!8661 rule!156) lt!2686602) rule!156 (size!43127 lt!2686602) (_1!38508 lt!2686600)) (_2!38508 lt!2686600))))))

(declare-datatypes ((Unit!169399 0))(
  ( (Unit!169400) )
))
(declare-fun lt!2686601 () Unit!169399)

(declare-fun lemmaSemiInverse!2681 (TokenValueInjection!17262 BalanceConc!30788) Unit!169399)

(assert (=> b!7910151 (= lt!2686601 (lemmaSemiInverse!2681 (transformation!8661 rule!156) lt!2686602))))

(declare-fun seqFromList!6188 (List!74483) BalanceConc!30788)

(assert (=> b!7910151 (= lt!2686602 (seqFromList!6188 (_1!38508 lt!2686600)))))

(assert (=> b!7910151 e!4669365))

(declare-fun res!3139566 () Bool)

(assert (=> b!7910151 (=> res!3139566 e!4669365)))

(assert (=> b!7910151 (= res!3139566 (isEmpty!42692 (_1!38508 lt!2686597)))))

(declare-fun findLongestMatchInner!2171 (Regex!21364 List!74483 Int List!74483 List!74483 Int) tuple2!70410)

(declare-fun size!43128 (List!74483) Int)

(assert (=> b!7910151 (= lt!2686597 (findLongestMatchInner!2171 (regex!8661 rule!156) Nil!74359 (size!43128 Nil!74359) input!1480 input!1480 (size!43128 input!1480)))))

(declare-fun lt!2686599 () Unit!169399)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2134 (Regex!21364 List!74483) Unit!169399)

(assert (=> b!7910151 (= lt!2686599 (longestMatchIsAcceptedByMatchOrIsEmpty!2134 (regex!8661 rule!156) input!1480))))

(assert (= (and start!746646 res!3139565) b!7910147))

(assert (= (and b!7910147 res!3139567) b!7910144))

(assert (= (and b!7910144 res!3139564) b!7910151))

(assert (= (and b!7910151 (not res!3139566)) b!7910150))

(assert (= (and b!7910151 (not res!3139563)) b!7910149))

(assert (= (and b!7910149 (not res!3139568)) b!7910146))

(assert (= b!7910148 b!7910145))

(assert (= start!746646 b!7910148))

(assert (= (and start!746646 (is-Cons!74359 input!1480)) b!7910143))

(declare-fun m!8283688 () Bool)

(assert (=> b!7910149 m!8283688))

(declare-fun m!8283690 () Bool)

(assert (=> b!7910149 m!8283690))

(assert (=> b!7910149 m!8283690))

(declare-fun m!8283692 () Bool)

(assert (=> b!7910149 m!8283692))

(assert (=> b!7910149 m!8283692))

(declare-fun m!8283694 () Bool)

(assert (=> b!7910149 m!8283694))

(declare-fun m!8283696 () Bool)

(assert (=> b!7910147 m!8283696))

(declare-fun m!8283698 () Bool)

(assert (=> b!7910144 m!8283698))

(declare-fun m!8283700 () Bool)

(assert (=> b!7910144 m!8283700))

(declare-fun m!8283702 () Bool)

(assert (=> b!7910151 m!8283702))

(declare-fun m!8283704 () Bool)

(assert (=> b!7910151 m!8283704))

(assert (=> b!7910151 m!8283702))

(declare-fun m!8283706 () Bool)

(assert (=> b!7910151 m!8283706))

(declare-fun m!8283708 () Bool)

(assert (=> b!7910151 m!8283708))

(declare-fun m!8283710 () Bool)

(assert (=> b!7910151 m!8283710))

(assert (=> b!7910151 m!8283706))

(declare-fun m!8283712 () Bool)

(assert (=> b!7910151 m!8283712))

(declare-fun m!8283714 () Bool)

(assert (=> b!7910151 m!8283714))

(declare-fun m!8283716 () Bool)

(assert (=> b!7910151 m!8283716))

(declare-fun m!8283718 () Bool)

(assert (=> b!7910151 m!8283718))

(declare-fun m!8283720 () Bool)

(assert (=> b!7910151 m!8283720))

(declare-fun m!8283722 () Bool)

(assert (=> b!7910146 m!8283722))

(declare-fun m!8283724 () Bool)

(assert (=> b!7910150 m!8283724))

(declare-fun m!8283726 () Bool)

(assert (=> b!7910148 m!8283726))

(declare-fun m!8283728 () Bool)

(assert (=> b!7910148 m!8283728))

(push 1)

(assert (not b_next!135977))

(assert (not b!7910151))

(assert (not b!7910143))

(assert (not b!7910144))

(assert (not b!7910147))

(assert (not b!7910150))

(assert b_and!353459)

(assert (not b_next!135979))

(assert (not b!7910148))

(assert (not b!7910146))

(assert tp_is_empty!53103)

(assert (not b!7910149))

(assert b_and!353461)

(check-sat)

(pop 1)

(push 1)

(assert b_and!353459)

(assert b_and!353461)

(assert (not b_next!135977))

(assert (not b_next!135979))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2360029 () Bool)

(assert (=> d!2360029 (= (isDefined!14497 lt!2686598) (not (isEmpty!42693 lt!2686598)))))

(declare-fun bs!1968228 () Bool)

(assert (= bs!1968228 d!2360029))

(assert (=> bs!1968228 m!8283716))

(assert (=> b!7910146 d!2360029))

(declare-fun d!2360031 () Bool)

(declare-fun lt!2686623 () Int)

(assert (=> d!2360031 (>= lt!2686623 0)))

(declare-fun e!4669395 () Int)

(assert (=> d!2360031 (= lt!2686623 e!4669395)))

(declare-fun c!1451225 () Bool)

(assert (=> d!2360031 (= c!1451225 (is-Nil!74359 input!1480))))

(assert (=> d!2360031 (= (size!43128 input!1480) lt!2686623)))

(declare-fun b!7910183 () Bool)

(assert (=> b!7910183 (= e!4669395 0)))

(declare-fun b!7910184 () Bool)

(assert (=> b!7910184 (= e!4669395 (+ 1 (size!43128 (t!389856 input!1480))))))

(assert (= (and d!2360031 c!1451225) b!7910183))

(assert (= (and d!2360031 (not c!1451225)) b!7910184))

(declare-fun m!8283772 () Bool)

(assert (=> b!7910184 m!8283772))

(assert (=> b!7910151 d!2360031))

(declare-fun bm!733646 () Bool)

(declare-fun call!733658 () Unit!169399)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1570 (List!74483 List!74483 List!74483) Unit!169399)

(assert (=> bm!733646 (= call!733658 (lemmaIsPrefixSameLengthThenSameList!1570 input!1480 Nil!74359 input!1480))))

(declare-fun call!733654 () tuple2!70410)

(declare-fun lt!2686734 () List!74483)

(declare-fun call!733652 () List!74483)

(declare-fun call!733655 () Regex!21364)

(declare-fun bm!733647 () Bool)

(assert (=> bm!733647 (= call!733654 (findLongestMatchInner!2171 call!733655 lt!2686734 (+ (size!43128 Nil!74359) 1) call!733652 input!1480 (size!43128 input!1480)))))

(declare-fun bm!733648 () Bool)

(declare-fun call!733653 () Bool)

(declare-fun isPrefix!6477 (List!74483 List!74483) Bool)

(assert (=> bm!733648 (= call!733653 (isPrefix!6477 input!1480 input!1480))))

(declare-fun b!7910289 () Bool)

(declare-fun e!4669454 () Bool)

(declare-fun e!4669459 () Bool)

(assert (=> b!7910289 (= e!4669454 e!4669459)))

(declare-fun res!3139636 () Bool)

(assert (=> b!7910289 (=> res!3139636 e!4669459)))

(declare-fun lt!2686720 () tuple2!70410)

(assert (=> b!7910289 (= res!3139636 (isEmpty!42692 (_1!38508 lt!2686720)))))

(declare-fun b!7910290 () Bool)

(declare-fun e!4669457 () tuple2!70410)

(declare-fun e!4669455 () tuple2!70410)

(assert (=> b!7910290 (= e!4669457 e!4669455)))

(declare-fun c!1451256 () Bool)

(assert (=> b!7910290 (= c!1451256 (= (size!43128 Nil!74359) (size!43128 input!1480)))))

(declare-fun b!7910291 () Bool)

(declare-fun c!1451259 () Bool)

(declare-fun call!733657 () Bool)

(assert (=> b!7910291 (= c!1451259 call!733657)))

(declare-fun lt!2686728 () Unit!169399)

(declare-fun lt!2686732 () Unit!169399)

(assert (=> b!7910291 (= lt!2686728 lt!2686732)))

(declare-fun lt!2686735 () C!43058)

(declare-fun lt!2686746 () List!74483)

(declare-fun ++!18207 (List!74483 List!74483) List!74483)

(assert (=> b!7910291 (= (++!18207 (++!18207 Nil!74359 (Cons!74359 lt!2686735 Nil!74359)) lt!2686746) input!1480)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3477 (List!74483 C!43058 List!74483 List!74483) Unit!169399)

(assert (=> b!7910291 (= lt!2686732 (lemmaMoveElementToOtherListKeepsConcatEq!3477 Nil!74359 lt!2686735 lt!2686746 input!1480))))

(declare-fun tail!15711 (List!74483) List!74483)

(assert (=> b!7910291 (= lt!2686746 (tail!15711 input!1480))))

(declare-fun head!16168 (List!74483) C!43058)

(assert (=> b!7910291 (= lt!2686735 (head!16168 input!1480))))

(declare-fun lt!2686744 () Unit!169399)

(declare-fun lt!2686723 () Unit!169399)

(assert (=> b!7910291 (= lt!2686744 lt!2686723)))

(declare-fun getSuffix!3690 (List!74483 List!74483) List!74483)

(assert (=> b!7910291 (isPrefix!6477 (++!18207 Nil!74359 (Cons!74359 (head!16168 (getSuffix!3690 input!1480 Nil!74359)) Nil!74359)) input!1480)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1255 (List!74483 List!74483) Unit!169399)

(assert (=> b!7910291 (= lt!2686723 (lemmaAddHeadSuffixToPrefixStillPrefix!1255 Nil!74359 input!1480))))

(declare-fun lt!2686729 () Unit!169399)

(declare-fun lt!2686719 () Unit!169399)

(assert (=> b!7910291 (= lt!2686729 lt!2686719)))

(assert (=> b!7910291 (= lt!2686719 (lemmaAddHeadSuffixToPrefixStillPrefix!1255 Nil!74359 input!1480))))

(assert (=> b!7910291 (= lt!2686734 (++!18207 Nil!74359 (Cons!74359 (head!16168 input!1480) Nil!74359)))))

(declare-fun lt!2686727 () Unit!169399)

(declare-fun e!4669453 () Unit!169399)

(assert (=> b!7910291 (= lt!2686727 e!4669453)))

(declare-fun c!1451258 () Bool)

(assert (=> b!7910291 (= c!1451258 (= (size!43128 Nil!74359) (size!43128 input!1480)))))

(declare-fun lt!2686737 () Unit!169399)

(declare-fun lt!2686722 () Unit!169399)

(assert (=> b!7910291 (= lt!2686737 lt!2686722)))

(assert (=> b!7910291 (<= (size!43128 Nil!74359) (size!43128 input!1480))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1035 (List!74483 List!74483) Unit!169399)

(assert (=> b!7910291 (= lt!2686722 (lemmaIsPrefixThenSmallerEqSize!1035 Nil!74359 input!1480))))

(declare-fun e!4669456 () tuple2!70410)

(assert (=> b!7910291 (= e!4669455 e!4669456)))

(declare-fun b!7910292 () Bool)

(declare-fun e!4669458 () tuple2!70410)

(assert (=> b!7910292 (= e!4669458 (tuple2!70411 Nil!74359 input!1480))))

(declare-fun b!7910293 () Bool)

(declare-fun lt!2686724 () tuple2!70410)

(assert (=> b!7910293 (= e!4669458 lt!2686724)))

(declare-fun b!7910294 () Bool)

(declare-fun c!1451255 () Bool)

(assert (=> b!7910294 (= c!1451255 call!733657)))

(declare-fun lt!2686731 () Unit!169399)

(declare-fun lt!2686736 () Unit!169399)

(assert (=> b!7910294 (= lt!2686731 lt!2686736)))

(assert (=> b!7910294 (= input!1480 Nil!74359)))

(assert (=> b!7910294 (= lt!2686736 call!733658)))

(declare-fun lt!2686721 () Unit!169399)

(declare-fun lt!2686725 () Unit!169399)

(assert (=> b!7910294 (= lt!2686721 lt!2686725)))

(assert (=> b!7910294 call!733653))

(declare-fun call!733651 () Unit!169399)

(assert (=> b!7910294 (= lt!2686725 call!733651)))

(declare-fun e!4669452 () tuple2!70410)

(assert (=> b!7910294 (= e!4669455 e!4669452)))

(declare-fun bm!733649 () Bool)

(declare-fun lemmaIsPrefixRefl!3988 (List!74483 List!74483) Unit!169399)

(assert (=> bm!733649 (= call!733651 (lemmaIsPrefixRefl!3988 input!1480 input!1480))))

(declare-fun b!7910296 () Bool)

(assert (=> b!7910296 (= e!4669459 (>= (size!43128 (_1!38508 lt!2686720)) (size!43128 Nil!74359)))))

(declare-fun b!7910297 () Bool)

(assert (=> b!7910297 (= e!4669457 (tuple2!70411 Nil!74359 input!1480))))

(declare-fun b!7910298 () Bool)

(assert (=> b!7910298 (= e!4669456 call!733654)))

(declare-fun bm!733650 () Bool)

(declare-fun call!733656 () C!43058)

(assert (=> bm!733650 (= call!733656 (head!16168 input!1480))))

(declare-fun bm!733651 () Bool)

(declare-fun derivativeStep!6447 (Regex!21364 C!43058) Regex!21364)

(assert (=> bm!733651 (= call!733655 (derivativeStep!6447 (regex!8661 rule!156) call!733656))))

(declare-fun b!7910299 () Bool)

(assert (=> b!7910299 (= e!4669452 (tuple2!70411 Nil!74359 input!1480))))

(declare-fun d!2360033 () Bool)

(assert (=> d!2360033 e!4669454))

(declare-fun res!3139637 () Bool)

(assert (=> d!2360033 (=> (not res!3139637) (not e!4669454))))

(assert (=> d!2360033 (= res!3139637 (= (++!18207 (_1!38508 lt!2686720) (_2!38508 lt!2686720)) input!1480))))

(assert (=> d!2360033 (= lt!2686720 e!4669457)))

(declare-fun c!1451254 () Bool)

(declare-fun lostCause!1922 (Regex!21364) Bool)

(assert (=> d!2360033 (= c!1451254 (lostCause!1922 (regex!8661 rule!156)))))

(declare-fun lt!2686738 () Unit!169399)

(declare-fun Unit!169404 () Unit!169399)

(assert (=> d!2360033 (= lt!2686738 Unit!169404)))

(assert (=> d!2360033 (= (getSuffix!3690 input!1480 Nil!74359) input!1480)))

(declare-fun lt!2686740 () Unit!169399)

(declare-fun lt!2686741 () Unit!169399)

(assert (=> d!2360033 (= lt!2686740 lt!2686741)))

(declare-fun lt!2686745 () List!74483)

(assert (=> d!2360033 (= input!1480 lt!2686745)))

(declare-fun lemmaSamePrefixThenSameSuffix!2938 (List!74483 List!74483 List!74483 List!74483 List!74483) Unit!169399)

(assert (=> d!2360033 (= lt!2686741 (lemmaSamePrefixThenSameSuffix!2938 Nil!74359 input!1480 Nil!74359 lt!2686745 input!1480))))

(assert (=> d!2360033 (= lt!2686745 (getSuffix!3690 input!1480 Nil!74359))))

(declare-fun lt!2686742 () Unit!169399)

(declare-fun lt!2686743 () Unit!169399)

(assert (=> d!2360033 (= lt!2686742 lt!2686743)))

(assert (=> d!2360033 (isPrefix!6477 Nil!74359 (++!18207 Nil!74359 input!1480))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3800 (List!74483 List!74483) Unit!169399)

(assert (=> d!2360033 (= lt!2686743 (lemmaConcatTwoListThenFirstIsPrefix!3800 Nil!74359 input!1480))))

(declare-fun validRegex!11670 (Regex!21364) Bool)

(assert (=> d!2360033 (validRegex!11670 (regex!8661 rule!156))))

(assert (=> d!2360033 (= (findLongestMatchInner!2171 (regex!8661 rule!156) Nil!74359 (size!43128 Nil!74359) input!1480 input!1480 (size!43128 input!1480)) lt!2686720)))

(declare-fun b!7910295 () Bool)

(assert (=> b!7910295 (= e!4669456 e!4669458)))

(assert (=> b!7910295 (= lt!2686724 call!733654)))

(declare-fun c!1451257 () Bool)

(assert (=> b!7910295 (= c!1451257 (isEmpty!42692 (_1!38508 lt!2686724)))))

(declare-fun b!7910300 () Bool)

(assert (=> b!7910300 (= e!4669452 (tuple2!70411 Nil!74359 Nil!74359))))

(declare-fun bm!733652 () Bool)

(assert (=> bm!733652 (= call!733652 (tail!15711 input!1480))))

(declare-fun b!7910301 () Bool)

(declare-fun Unit!169405 () Unit!169399)

(assert (=> b!7910301 (= e!4669453 Unit!169405)))

(declare-fun lt!2686730 () Unit!169399)

(assert (=> b!7910301 (= lt!2686730 call!733651)))

(assert (=> b!7910301 call!733653))

(declare-fun lt!2686733 () Unit!169399)

(assert (=> b!7910301 (= lt!2686733 lt!2686730)))

(declare-fun lt!2686726 () Unit!169399)

(assert (=> b!7910301 (= lt!2686726 call!733658)))

(assert (=> b!7910301 (= input!1480 Nil!74359)))

(declare-fun lt!2686739 () Unit!169399)

(assert (=> b!7910301 (= lt!2686739 lt!2686726)))

(assert (=> b!7910301 false))

(declare-fun bm!733653 () Bool)

(declare-fun nullable!9505 (Regex!21364) Bool)

(assert (=> bm!733653 (= call!733657 (nullable!9505 (regex!8661 rule!156)))))

(declare-fun b!7910302 () Bool)

(declare-fun Unit!169406 () Unit!169399)

(assert (=> b!7910302 (= e!4669453 Unit!169406)))

(assert (= (and d!2360033 c!1451254) b!7910297))

(assert (= (and d!2360033 (not c!1451254)) b!7910290))

(assert (= (and b!7910290 c!1451256) b!7910294))

(assert (= (and b!7910290 (not c!1451256)) b!7910291))

(assert (= (and b!7910294 c!1451255) b!7910300))

(assert (= (and b!7910294 (not c!1451255)) b!7910299))

(assert (= (and b!7910291 c!1451258) b!7910301))

(assert (= (and b!7910291 (not c!1451258)) b!7910302))

(assert (= (and b!7910291 c!1451259) b!7910295))

(assert (= (and b!7910291 (not c!1451259)) b!7910298))

(assert (= (and b!7910295 c!1451257) b!7910292))

(assert (= (and b!7910295 (not c!1451257)) b!7910293))

(assert (= (or b!7910295 b!7910298) bm!733650))

(assert (= (or b!7910295 b!7910298) bm!733652))

(assert (= (or b!7910295 b!7910298) bm!733651))

(assert (= (or b!7910295 b!7910298) bm!733647))

(assert (= (or b!7910294 b!7910291) bm!733653))

(assert (= (or b!7910294 b!7910301) bm!733648))

(assert (= (or b!7910294 b!7910301) bm!733649))

(assert (= (or b!7910294 b!7910301) bm!733646))

(assert (= (and d!2360033 res!3139637) b!7910289))

(assert (= (and b!7910289 (not res!3139636)) b!7910296))

(declare-fun m!8283834 () Bool)

(assert (=> b!7910296 m!8283834))

(assert (=> b!7910296 m!8283702))

(declare-fun m!8283836 () Bool)

(assert (=> bm!733646 m!8283836))

(declare-fun m!8283838 () Bool)

(assert (=> d!2360033 m!8283838))

(declare-fun m!8283840 () Bool)

(assert (=> d!2360033 m!8283840))

(declare-fun m!8283842 () Bool)

(assert (=> d!2360033 m!8283842))

(declare-fun m!8283844 () Bool)

(assert (=> d!2360033 m!8283844))

(declare-fun m!8283846 () Bool)

(assert (=> d!2360033 m!8283846))

(assert (=> d!2360033 m!8283842))

(declare-fun m!8283848 () Bool)

(assert (=> d!2360033 m!8283848))

(declare-fun m!8283850 () Bool)

(assert (=> d!2360033 m!8283850))

(declare-fun m!8283852 () Bool)

(assert (=> d!2360033 m!8283852))

(declare-fun m!8283854 () Bool)

(assert (=> bm!733652 m!8283854))

(declare-fun m!8283856 () Bool)

(assert (=> b!7910291 m!8283856))

(declare-fun m!8283858 () Bool)

(assert (=> b!7910291 m!8283858))

(declare-fun m!8283860 () Bool)

(assert (=> b!7910291 m!8283860))

(declare-fun m!8283862 () Bool)

(assert (=> b!7910291 m!8283862))

(assert (=> b!7910291 m!8283854))

(declare-fun m!8283864 () Bool)

(assert (=> b!7910291 m!8283864))

(assert (=> b!7910291 m!8283864))

(declare-fun m!8283866 () Bool)

(assert (=> b!7910291 m!8283866))

(assert (=> b!7910291 m!8283706))

(assert (=> b!7910291 m!8283846))

(declare-fun m!8283868 () Bool)

(assert (=> b!7910291 m!8283868))

(assert (=> b!7910291 m!8283846))

(assert (=> b!7910291 m!8283856))

(declare-fun m!8283870 () Bool)

(assert (=> b!7910291 m!8283870))

(declare-fun m!8283872 () Bool)

(assert (=> b!7910291 m!8283872))

(assert (=> b!7910291 m!8283702))

(declare-fun m!8283874 () Bool)

(assert (=> b!7910291 m!8283874))

(declare-fun m!8283876 () Bool)

(assert (=> bm!733649 m!8283876))

(assert (=> bm!733650 m!8283870))

(assert (=> bm!733647 m!8283706))

(declare-fun m!8283878 () Bool)

(assert (=> bm!733647 m!8283878))

(declare-fun m!8283880 () Bool)

(assert (=> bm!733648 m!8283880))

(declare-fun m!8283882 () Bool)

(assert (=> b!7910295 m!8283882))

(declare-fun m!8283884 () Bool)

(assert (=> bm!733651 m!8283884))

(declare-fun m!8283886 () Bool)

(assert (=> b!7910289 m!8283886))

(declare-fun m!8283888 () Bool)

(assert (=> bm!733653 m!8283888))

(assert (=> b!7910151 d!2360033))

(declare-fun d!2360057 () Bool)

(declare-fun fromListB!2794 (List!74483) BalanceConc!30788)

(assert (=> d!2360057 (= (seqFromList!6188 (_1!38508 lt!2686600)) (fromListB!2794 (_1!38508 lt!2686600)))))

(declare-fun bs!1968232 () Bool)

(assert (= bs!1968232 d!2360057))

(declare-fun m!8283890 () Bool)

(assert (=> bs!1968232 m!8283890))

(assert (=> b!7910151 d!2360057))

(declare-fun d!2360059 () Bool)

(assert (=> d!2360059 (= (isEmpty!42693 lt!2686598) (not (is-Some!17938 lt!2686598)))))

(assert (=> b!7910151 d!2360059))

(declare-fun d!2360061 () Bool)

(assert (=> d!2360061 (= (isEmpty!42692 (_1!38508 lt!2686597)) (is-Nil!74359 (_1!38508 lt!2686597)))))

(assert (=> b!7910151 d!2360061))

(declare-fun d!2360063 () Bool)

(declare-fun e!4669462 () Bool)

(assert (=> d!2360063 e!4669462))

(declare-fun res!3139640 () Bool)

(assert (=> d!2360063 (=> res!3139640 e!4669462)))

(assert (=> d!2360063 (= res!3139640 (isEmpty!42692 (_1!38508 (findLongestMatchInner!2171 (regex!8661 rule!156) Nil!74359 (size!43128 Nil!74359) input!1480 input!1480 (size!43128 input!1480)))))))

(declare-fun lt!2686749 () Unit!169399)

(declare-fun choose!59741 (Regex!21364 List!74483) Unit!169399)

(assert (=> d!2360063 (= lt!2686749 (choose!59741 (regex!8661 rule!156) input!1480))))

(assert (=> d!2360063 (validRegex!11670 (regex!8661 rule!156))))

(assert (=> d!2360063 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2134 (regex!8661 rule!156) input!1480) lt!2686749)))

(declare-fun b!7910305 () Bool)

(assert (=> b!7910305 (= e!4669462 (matchR!10685 (regex!8661 rule!156) (_1!38508 (findLongestMatchInner!2171 (regex!8661 rule!156) Nil!74359 (size!43128 Nil!74359) input!1480 input!1480 (size!43128 input!1480)))))))

(assert (= (and d!2360063 (not res!3139640)) b!7910305))

(assert (=> d!2360063 m!8283706))

(assert (=> d!2360063 m!8283702))

(assert (=> d!2360063 m!8283706))

(assert (=> d!2360063 m!8283708))

(declare-fun m!8283892 () Bool)

(assert (=> d!2360063 m!8283892))

(assert (=> d!2360063 m!8283850))

(assert (=> d!2360063 m!8283702))

(declare-fun m!8283894 () Bool)

(assert (=> d!2360063 m!8283894))

(assert (=> b!7910305 m!8283702))

(assert (=> b!7910305 m!8283706))

(assert (=> b!7910305 m!8283702))

(assert (=> b!7910305 m!8283706))

(assert (=> b!7910305 m!8283708))

(declare-fun m!8283896 () Bool)

(assert (=> b!7910305 m!8283896))

(assert (=> b!7910151 d!2360063))

(declare-fun b!7910320 () Bool)

(declare-fun e!4669473 () Bool)

(assert (=> b!7910320 (= e!4669473 true)))

(declare-fun d!2360065 () Bool)

(assert (=> d!2360065 e!4669473))

(assert (= d!2360065 b!7910320))

(declare-fun order!29889 () Int)

(declare-fun order!29887 () Int)

(declare-fun lambda!472557 () Int)

(declare-fun dynLambda!30128 (Int Int) Int)

(declare-fun dynLambda!30129 (Int Int) Int)

(assert (=> b!7910320 (< (dynLambda!30128 order!29887 (toValue!11718 (transformation!8661 rule!156))) (dynLambda!30129 order!29889 lambda!472557))))

(declare-fun order!29891 () Int)

(declare-fun dynLambda!30130 (Int Int) Int)

(assert (=> b!7910320 (< (dynLambda!30130 order!29891 (toChars!11577 (transformation!8661 rule!156))) (dynLambda!30129 order!29889 lambda!472557))))

(declare-fun dynLambda!30131 (Int TokenValue!8977) BalanceConc!30788)

(declare-fun dynLambda!30132 (Int BalanceConc!30788) TokenValue!8977)

(assert (=> d!2360065 (= (list!19307 (dynLambda!30131 (toChars!11577 (transformation!8661 rule!156)) (dynLambda!30132 (toValue!11718 (transformation!8661 rule!156)) lt!2686602))) (list!19307 lt!2686602))))

(declare-fun lt!2686757 () Unit!169399)

(declare-fun ForallOf!1307 (Int BalanceConc!30788) Unit!169399)

(assert (=> d!2360065 (= lt!2686757 (ForallOf!1307 lambda!472557 lt!2686602))))

(assert (=> d!2360065 (= (lemmaSemiInverse!2681 (transformation!8661 rule!156) lt!2686602) lt!2686757)))

(declare-fun b_lambda!289989 () Bool)

(assert (=> (not b_lambda!289989) (not d!2360065)))

(declare-fun t!389867 () Bool)

(declare-fun tb!263217 () Bool)

(assert (=> (and b!7910145 (= (toChars!11577 (transformation!8661 rule!156)) (toChars!11577 (transformation!8661 rule!156))) t!389867) tb!263217))

(declare-fun e!4669476 () Bool)

(declare-fun tp!2356411 () Bool)

(declare-fun b!7910325 () Bool)

(declare-fun inv!95406 (Conc!15835) Bool)

(assert (=> b!7910325 (= e!4669476 (and (inv!95406 (c!1451218 (dynLambda!30131 (toChars!11577 (transformation!8661 rule!156)) (dynLambda!30132 (toValue!11718 (transformation!8661 rule!156)) lt!2686602)))) tp!2356411))))

(declare-fun result!360516 () Bool)

(declare-fun inv!95408 (BalanceConc!30788) Bool)

(assert (=> tb!263217 (= result!360516 (and (inv!95408 (dynLambda!30131 (toChars!11577 (transformation!8661 rule!156)) (dynLambda!30132 (toValue!11718 (transformation!8661 rule!156)) lt!2686602))) e!4669476))))

(assert (= tb!263217 b!7910325))

(declare-fun m!8283920 () Bool)

(assert (=> b!7910325 m!8283920))

(declare-fun m!8283922 () Bool)

(assert (=> tb!263217 m!8283922))

(assert (=> d!2360065 t!389867))

(declare-fun b_and!353473 () Bool)

(assert (= b_and!353461 (and (=> t!389867 result!360516) b_and!353473)))

(declare-fun b_lambda!289991 () Bool)

(assert (=> (not b_lambda!289991) (not d!2360065)))

(declare-fun t!389869 () Bool)

(declare-fun tb!263219 () Bool)

(assert (=> (and b!7910145 (= (toValue!11718 (transformation!8661 rule!156)) (toValue!11718 (transformation!8661 rule!156))) t!389869) tb!263219))

(declare-fun result!360520 () Bool)

(declare-fun inv!21 (TokenValue!8977) Bool)

(assert (=> tb!263219 (= result!360520 (inv!21 (dynLambda!30132 (toValue!11718 (transformation!8661 rule!156)) lt!2686602)))))

(declare-fun m!8283924 () Bool)

(assert (=> tb!263219 m!8283924))

(assert (=> d!2360065 t!389869))

(declare-fun b_and!353475 () Bool)

(assert (= b_and!353459 (and (=> t!389869 result!360520) b_and!353475)))

(declare-fun m!8283926 () Bool)

(assert (=> d!2360065 m!8283926))

(declare-fun m!8283928 () Bool)

(assert (=> d!2360065 m!8283928))

(declare-fun m!8283930 () Bool)

(assert (=> d!2360065 m!8283930))

(declare-fun m!8283932 () Bool)

(assert (=> d!2360065 m!8283932))

(assert (=> d!2360065 m!8283932))

(assert (=> d!2360065 m!8283928))

(declare-fun m!8283934 () Bool)

(assert (=> d!2360065 m!8283934))

(assert (=> b!7910151 d!2360065))

(declare-fun d!2360077 () Bool)

(declare-fun lt!2686760 () Int)

(assert (=> d!2360077 (= lt!2686760 (size!43128 (list!19307 lt!2686602)))))

(declare-fun size!43132 (Conc!15835) Int)

(assert (=> d!2360077 (= lt!2686760 (size!43132 (c!1451218 lt!2686602)))))

(assert (=> d!2360077 (= (size!43127 lt!2686602) lt!2686760)))

(declare-fun bs!1968234 () Bool)

(assert (= bs!1968234 d!2360077))

(assert (=> bs!1968234 m!8283926))

(assert (=> bs!1968234 m!8283926))

(declare-fun m!8283936 () Bool)

(assert (=> bs!1968234 m!8283936))

(declare-fun m!8283938 () Bool)

(assert (=> bs!1968234 m!8283938))

(assert (=> b!7910151 d!2360077))

(declare-fun d!2360079 () Bool)

(declare-fun lt!2686761 () Int)

(assert (=> d!2360079 (>= lt!2686761 0)))

(declare-fun e!4669480 () Int)

(assert (=> d!2360079 (= lt!2686761 e!4669480)))

(declare-fun c!1451262 () Bool)

(assert (=> d!2360079 (= c!1451262 (is-Nil!74359 Nil!74359))))

(assert (=> d!2360079 (= (size!43128 Nil!74359) lt!2686761)))

(declare-fun b!7910328 () Bool)

(assert (=> b!7910328 (= e!4669480 0)))

(declare-fun b!7910329 () Bool)

(assert (=> b!7910329 (= e!4669480 (+ 1 (size!43128 (t!389856 Nil!74359))))))

(assert (= (and d!2360079 c!1451262) b!7910328))

(assert (= (and d!2360079 (not c!1451262)) b!7910329))

(declare-fun m!8283940 () Bool)

(assert (=> b!7910329 m!8283940))

(assert (=> b!7910151 d!2360079))

(declare-fun d!2360081 () Bool)

(assert (=> d!2360081 (= (apply!14370 (transformation!8661 rule!156) lt!2686602) (dynLambda!30132 (toValue!11718 (transformation!8661 rule!156)) lt!2686602))))

(declare-fun b_lambda!289993 () Bool)

(assert (=> (not b_lambda!289993) (not d!2360081)))

(assert (=> d!2360081 t!389869))

(declare-fun b_and!353477 () Bool)

(assert (= b_and!353475 (and (=> t!389869 result!360520) b_and!353477)))

(assert (=> d!2360081 m!8283932))

(assert (=> b!7910151 d!2360081))

(declare-fun b!7910358 () Bool)

(declare-fun res!3139660 () Bool)

(declare-fun e!4669498 () Bool)

(assert (=> b!7910358 (=> (not res!3139660) (not e!4669498))))

(declare-fun call!733661 () Bool)

(assert (=> b!7910358 (= res!3139660 (not call!733661))))

(declare-fun b!7910359 () Bool)

(declare-fun res!3139664 () Bool)

(declare-fun e!4669501 () Bool)

(assert (=> b!7910359 (=> res!3139664 e!4669501)))

(assert (=> b!7910359 (= res!3139664 (not (isEmpty!42692 (tail!15711 (_1!38508 lt!2686597)))))))

(declare-fun b!7910360 () Bool)

(declare-fun e!4669497 () Bool)

(assert (=> b!7910360 (= e!4669497 (nullable!9505 (regex!8661 rule!156)))))

(declare-fun d!2360083 () Bool)

(declare-fun e!4669499 () Bool)

(assert (=> d!2360083 e!4669499))

(declare-fun c!1451271 () Bool)

(assert (=> d!2360083 (= c!1451271 (is-EmptyExpr!21364 (regex!8661 rule!156)))))

(declare-fun lt!2686764 () Bool)

(assert (=> d!2360083 (= lt!2686764 e!4669497)))

(declare-fun c!1451270 () Bool)

(assert (=> d!2360083 (= c!1451270 (isEmpty!42692 (_1!38508 lt!2686597)))))

(assert (=> d!2360083 (validRegex!11670 (regex!8661 rule!156))))

(assert (=> d!2360083 (= (matchR!10685 (regex!8661 rule!156) (_1!38508 lt!2686597)) lt!2686764)))

(declare-fun b!7910361 () Bool)

(declare-fun res!3139657 () Bool)

(declare-fun e!4669496 () Bool)

(assert (=> b!7910361 (=> res!3139657 e!4669496)))

(assert (=> b!7910361 (= res!3139657 (not (is-ElementMatch!21364 (regex!8661 rule!156))))))

(declare-fun e!4669500 () Bool)

(assert (=> b!7910361 (= e!4669500 e!4669496)))

(declare-fun b!7910362 () Bool)

(assert (=> b!7910362 (= e!4669501 (not (= (head!16168 (_1!38508 lt!2686597)) (c!1451219 (regex!8661 rule!156)))))))

(declare-fun b!7910363 () Bool)

(assert (=> b!7910363 (= e!4669500 (not lt!2686764))))

(declare-fun b!7910364 () Bool)

(declare-fun res!3139662 () Bool)

(assert (=> b!7910364 (=> (not res!3139662) (not e!4669498))))

(assert (=> b!7910364 (= res!3139662 (isEmpty!42692 (tail!15711 (_1!38508 lt!2686597))))))

(declare-fun b!7910365 () Bool)

(assert (=> b!7910365 (= e!4669498 (= (head!16168 (_1!38508 lt!2686597)) (c!1451219 (regex!8661 rule!156))))))

(declare-fun b!7910366 () Bool)

(declare-fun res!3139658 () Bool)

(assert (=> b!7910366 (=> res!3139658 e!4669496)))

(assert (=> b!7910366 (= res!3139658 e!4669498)))

(declare-fun res!3139661 () Bool)

(assert (=> b!7910366 (=> (not res!3139661) (not e!4669498))))

(assert (=> b!7910366 (= res!3139661 lt!2686764)))

(declare-fun b!7910367 () Bool)

(declare-fun e!4669495 () Bool)

(assert (=> b!7910367 (= e!4669496 e!4669495)))

(declare-fun res!3139663 () Bool)

(assert (=> b!7910367 (=> (not res!3139663) (not e!4669495))))

(assert (=> b!7910367 (= res!3139663 (not lt!2686764))))

(declare-fun b!7910368 () Bool)

(assert (=> b!7910368 (= e!4669499 e!4669500)))

(declare-fun c!1451269 () Bool)

(assert (=> b!7910368 (= c!1451269 (is-EmptyLang!21364 (regex!8661 rule!156)))))

(declare-fun b!7910369 () Bool)

(assert (=> b!7910369 (= e!4669497 (matchR!10685 (derivativeStep!6447 (regex!8661 rule!156) (head!16168 (_1!38508 lt!2686597))) (tail!15711 (_1!38508 lt!2686597))))))

(declare-fun bm!733656 () Bool)

(assert (=> bm!733656 (= call!733661 (isEmpty!42692 (_1!38508 lt!2686597)))))

(declare-fun b!7910370 () Bool)

(assert (=> b!7910370 (= e!4669495 e!4669501)))

(declare-fun res!3139659 () Bool)

(assert (=> b!7910370 (=> res!3139659 e!4669501)))

(assert (=> b!7910370 (= res!3139659 call!733661)))

(declare-fun b!7910371 () Bool)

(assert (=> b!7910371 (= e!4669499 (= lt!2686764 call!733661))))

(assert (= (and d!2360083 c!1451270) b!7910360))

(assert (= (and d!2360083 (not c!1451270)) b!7910369))

(assert (= (and d!2360083 c!1451271) b!7910371))

(assert (= (and d!2360083 (not c!1451271)) b!7910368))

(assert (= (and b!7910368 c!1451269) b!7910363))

(assert (= (and b!7910368 (not c!1451269)) b!7910361))

(assert (= (and b!7910361 (not res!3139657)) b!7910366))

(assert (= (and b!7910366 res!3139661) b!7910358))

(assert (= (and b!7910358 res!3139660) b!7910364))

(assert (= (and b!7910364 res!3139662) b!7910365))

(assert (= (and b!7910366 (not res!3139658)) b!7910367))

(assert (= (and b!7910367 res!3139663) b!7910370))

(assert (= (and b!7910370 (not res!3139659)) b!7910359))

(assert (= (and b!7910359 (not res!3139664)) b!7910362))

(assert (= (or b!7910371 b!7910358 b!7910370) bm!733656))

(declare-fun m!8283942 () Bool)

(assert (=> b!7910359 m!8283942))

(assert (=> b!7910359 m!8283942))

(declare-fun m!8283944 () Bool)

(assert (=> b!7910359 m!8283944))

(assert (=> b!7910360 m!8283888))

(assert (=> d!2360083 m!8283720))

(assert (=> d!2360083 m!8283850))

(declare-fun m!8283946 () Bool)

(assert (=> b!7910369 m!8283946))

(assert (=> b!7910369 m!8283946))

(declare-fun m!8283948 () Bool)

(assert (=> b!7910369 m!8283948))

(assert (=> b!7910369 m!8283942))

(assert (=> b!7910369 m!8283948))

(assert (=> b!7910369 m!8283942))

(declare-fun m!8283950 () Bool)

(assert (=> b!7910369 m!8283950))

(assert (=> b!7910362 m!8283946))

(assert (=> bm!733656 m!8283720))

(assert (=> b!7910365 m!8283946))

(assert (=> b!7910364 m!8283942))

(assert (=> b!7910364 m!8283942))

(assert (=> b!7910364 m!8283944))

(assert (=> b!7910150 d!2360083))

(declare-fun d!2360085 () Bool)

(assert (=> d!2360085 (= (isEmpty!42692 (_1!38508 lt!2686600)) (is-Nil!74359 (_1!38508 lt!2686600)))))

(assert (=> b!7910144 d!2360085))

(declare-fun d!2360087 () Bool)

(declare-fun lt!2686783 () tuple2!70410)

(assert (=> d!2360087 (= (++!18207 (_1!38508 lt!2686783) (_2!38508 lt!2686783)) input!1480)))

(declare-fun sizeTr!459 (List!74483 Int) Int)

(assert (=> d!2360087 (= lt!2686783 (findLongestMatchInner!2171 (regex!8661 rule!156) Nil!74359 0 input!1480 input!1480 (sizeTr!459 input!1480 0)))))

(declare-fun lt!2686785 () Unit!169399)

(declare-fun lt!2686782 () Unit!169399)

(assert (=> d!2360087 (= lt!2686785 lt!2686782)))

(declare-fun lt!2686781 () List!74483)

(declare-fun lt!2686784 () Int)

(assert (=> d!2360087 (= (sizeTr!459 lt!2686781 lt!2686784) (+ (size!43128 lt!2686781) lt!2686784))))

(declare-fun lemmaSizeTrEqualsSize!458 (List!74483 Int) Unit!169399)

(assert (=> d!2360087 (= lt!2686782 (lemmaSizeTrEqualsSize!458 lt!2686781 lt!2686784))))

(assert (=> d!2360087 (= lt!2686784 0)))

(assert (=> d!2360087 (= lt!2686781 Nil!74359)))

(declare-fun lt!2686786 () Unit!169399)

(declare-fun lt!2686787 () Unit!169399)

(assert (=> d!2360087 (= lt!2686786 lt!2686787)))

(declare-fun lt!2686788 () Int)

(assert (=> d!2360087 (= (sizeTr!459 input!1480 lt!2686788) (+ (size!43128 input!1480) lt!2686788))))

(assert (=> d!2360087 (= lt!2686787 (lemmaSizeTrEqualsSize!458 input!1480 lt!2686788))))

(assert (=> d!2360087 (= lt!2686788 0)))

(assert (=> d!2360087 (validRegex!11670 (regex!8661 rule!156))))

(assert (=> d!2360087 (= (findLongestMatch!1954 (regex!8661 rule!156) input!1480) lt!2686783)))

(declare-fun bs!1968235 () Bool)

(assert (= bs!1968235 d!2360087))

(assert (=> bs!1968235 m!8283706))

(declare-fun m!8283952 () Bool)

(assert (=> bs!1968235 m!8283952))

(declare-fun m!8283954 () Bool)

(assert (=> bs!1968235 m!8283954))

(declare-fun m!8283956 () Bool)

(assert (=> bs!1968235 m!8283956))

(declare-fun m!8283958 () Bool)

(assert (=> bs!1968235 m!8283958))

(declare-fun m!8283960 () Bool)

(assert (=> bs!1968235 m!8283960))

(assert (=> bs!1968235 m!8283956))

(declare-fun m!8283962 () Bool)

(assert (=> bs!1968235 m!8283962))

(assert (=> bs!1968235 m!8283850))

(declare-fun m!8283964 () Bool)

(assert (=> bs!1968235 m!8283964))

(declare-fun m!8283966 () Bool)

(assert (=> bs!1968235 m!8283966))

(assert (=> b!7910144 d!2360087))

(declare-fun b!7910372 () Bool)

(declare-fun res!3139668 () Bool)

(declare-fun e!4669505 () Bool)

(assert (=> b!7910372 (=> (not res!3139668) (not e!4669505))))

(declare-fun call!733662 () Bool)

(assert (=> b!7910372 (= res!3139668 (not call!733662))))

(declare-fun b!7910373 () Bool)

(declare-fun res!3139672 () Bool)

(declare-fun e!4669508 () Bool)

(assert (=> b!7910373 (=> res!3139672 e!4669508)))

(assert (=> b!7910373 (= res!3139672 (not (isEmpty!42692 (tail!15711 (list!19307 (charsOf!5599 (_1!38509 (get!26740 lt!2686598))))))))))

(declare-fun b!7910374 () Bool)

(declare-fun e!4669504 () Bool)

(assert (=> b!7910374 (= e!4669504 (nullable!9505 (regex!8661 rule!156)))))

(declare-fun d!2360089 () Bool)

(declare-fun e!4669506 () Bool)

(assert (=> d!2360089 e!4669506))

(declare-fun c!1451274 () Bool)

(assert (=> d!2360089 (= c!1451274 (is-EmptyExpr!21364 (regex!8661 rule!156)))))

(declare-fun lt!2686789 () Bool)

(assert (=> d!2360089 (= lt!2686789 e!4669504)))

(declare-fun c!1451273 () Bool)

(assert (=> d!2360089 (= c!1451273 (isEmpty!42692 (list!19307 (charsOf!5599 (_1!38509 (get!26740 lt!2686598))))))))

(assert (=> d!2360089 (validRegex!11670 (regex!8661 rule!156))))

(assert (=> d!2360089 (= (matchR!10685 (regex!8661 rule!156) (list!19307 (charsOf!5599 (_1!38509 (get!26740 lt!2686598))))) lt!2686789)))

(declare-fun b!7910375 () Bool)

(declare-fun res!3139665 () Bool)

(declare-fun e!4669503 () Bool)

(assert (=> b!7910375 (=> res!3139665 e!4669503)))

(assert (=> b!7910375 (= res!3139665 (not (is-ElementMatch!21364 (regex!8661 rule!156))))))

(declare-fun e!4669507 () Bool)

(assert (=> b!7910375 (= e!4669507 e!4669503)))

(declare-fun b!7910376 () Bool)

(assert (=> b!7910376 (= e!4669508 (not (= (head!16168 (list!19307 (charsOf!5599 (_1!38509 (get!26740 lt!2686598))))) (c!1451219 (regex!8661 rule!156)))))))

(declare-fun b!7910377 () Bool)

(assert (=> b!7910377 (= e!4669507 (not lt!2686789))))

(declare-fun b!7910378 () Bool)

(declare-fun res!3139670 () Bool)

(assert (=> b!7910378 (=> (not res!3139670) (not e!4669505))))

(assert (=> b!7910378 (= res!3139670 (isEmpty!42692 (tail!15711 (list!19307 (charsOf!5599 (_1!38509 (get!26740 lt!2686598)))))))))

(declare-fun b!7910379 () Bool)

(assert (=> b!7910379 (= e!4669505 (= (head!16168 (list!19307 (charsOf!5599 (_1!38509 (get!26740 lt!2686598))))) (c!1451219 (regex!8661 rule!156))))))

(declare-fun b!7910380 () Bool)

(declare-fun res!3139666 () Bool)

(assert (=> b!7910380 (=> res!3139666 e!4669503)))

(assert (=> b!7910380 (= res!3139666 e!4669505)))

(declare-fun res!3139669 () Bool)

(assert (=> b!7910380 (=> (not res!3139669) (not e!4669505))))

(assert (=> b!7910380 (= res!3139669 lt!2686789)))

(declare-fun b!7910381 () Bool)

(declare-fun e!4669502 () Bool)

(assert (=> b!7910381 (= e!4669503 e!4669502)))

(declare-fun res!3139671 () Bool)

(assert (=> b!7910381 (=> (not res!3139671) (not e!4669502))))

(assert (=> b!7910381 (= res!3139671 (not lt!2686789))))

(declare-fun b!7910382 () Bool)

(assert (=> b!7910382 (= e!4669506 e!4669507)))

(declare-fun c!1451272 () Bool)

(assert (=> b!7910382 (= c!1451272 (is-EmptyLang!21364 (regex!8661 rule!156)))))

(declare-fun b!7910383 () Bool)

(assert (=> b!7910383 (= e!4669504 (matchR!10685 (derivativeStep!6447 (regex!8661 rule!156) (head!16168 (list!19307 (charsOf!5599 (_1!38509 (get!26740 lt!2686598)))))) (tail!15711 (list!19307 (charsOf!5599 (_1!38509 (get!26740 lt!2686598)))))))))

(declare-fun bm!733657 () Bool)

(assert (=> bm!733657 (= call!733662 (isEmpty!42692 (list!19307 (charsOf!5599 (_1!38509 (get!26740 lt!2686598))))))))

(declare-fun b!7910384 () Bool)

(assert (=> b!7910384 (= e!4669502 e!4669508)))

(declare-fun res!3139667 () Bool)

(assert (=> b!7910384 (=> res!3139667 e!4669508)))

(assert (=> b!7910384 (= res!3139667 call!733662)))

(declare-fun b!7910385 () Bool)

(assert (=> b!7910385 (= e!4669506 (= lt!2686789 call!733662))))

(assert (= (and d!2360089 c!1451273) b!7910374))

(assert (= (and d!2360089 (not c!1451273)) b!7910383))

(assert (= (and d!2360089 c!1451274) b!7910385))

(assert (= (and d!2360089 (not c!1451274)) b!7910382))

(assert (= (and b!7910382 c!1451272) b!7910377))

(assert (= (and b!7910382 (not c!1451272)) b!7910375))

(assert (= (and b!7910375 (not res!3139665)) b!7910380))

(assert (= (and b!7910380 res!3139669) b!7910372))

(assert (= (and b!7910372 res!3139668) b!7910378))

(assert (= (and b!7910378 res!3139670) b!7910379))

(assert (= (and b!7910380 (not res!3139666)) b!7910381))

(assert (= (and b!7910381 res!3139671) b!7910384))

(assert (= (and b!7910384 (not res!3139667)) b!7910373))

(assert (= (and b!7910373 (not res!3139672)) b!7910376))

(assert (= (or b!7910385 b!7910372 b!7910384) bm!733657))

(assert (=> b!7910373 m!8283692))

(declare-fun m!8283968 () Bool)

(assert (=> b!7910373 m!8283968))

(assert (=> b!7910373 m!8283968))

(declare-fun m!8283970 () Bool)

(assert (=> b!7910373 m!8283970))

(assert (=> b!7910374 m!8283888))

(assert (=> d!2360089 m!8283692))

(declare-fun m!8283972 () Bool)

(assert (=> d!2360089 m!8283972))

(assert (=> d!2360089 m!8283850))

(assert (=> b!7910383 m!8283692))

(declare-fun m!8283974 () Bool)

(assert (=> b!7910383 m!8283974))

(assert (=> b!7910383 m!8283974))

(declare-fun m!8283976 () Bool)

(assert (=> b!7910383 m!8283976))

(assert (=> b!7910383 m!8283692))

(assert (=> b!7910383 m!8283968))

(assert (=> b!7910383 m!8283976))

(assert (=> b!7910383 m!8283968))

(declare-fun m!8283978 () Bool)

(assert (=> b!7910383 m!8283978))

(assert (=> b!7910376 m!8283692))

(assert (=> b!7910376 m!8283974))

(assert (=> bm!733657 m!8283692))

(assert (=> bm!733657 m!8283972))

(assert (=> b!7910379 m!8283692))

(assert (=> b!7910379 m!8283974))

(assert (=> b!7910378 m!8283692))

(assert (=> b!7910378 m!8283968))

(assert (=> b!7910378 m!8283968))

(assert (=> b!7910378 m!8283970))

(assert (=> b!7910149 d!2360089))

(declare-fun d!2360091 () Bool)

(declare-fun list!19310 (Conc!15835) List!74483)

(assert (=> d!2360091 (= (list!19307 (charsOf!5599 (_1!38509 (get!26740 lt!2686598)))) (list!19310 (c!1451218 (charsOf!5599 (_1!38509 (get!26740 lt!2686598))))))))

(declare-fun bs!1968236 () Bool)

(assert (= bs!1968236 d!2360091))

(declare-fun m!8283980 () Bool)

(assert (=> bs!1968236 m!8283980))

(assert (=> b!7910149 d!2360091))

(declare-fun d!2360093 () Bool)

(declare-fun lt!2686792 () BalanceConc!30788)

(assert (=> d!2360093 (= (list!19307 lt!2686792) (originalCharacters!8898 (_1!38509 (get!26740 lt!2686598))))))

(assert (=> d!2360093 (= lt!2686792 (dynLambda!30131 (toChars!11577 (transformation!8661 (rule!11961 (_1!38509 (get!26740 lt!2686598))))) (value!288817 (_1!38509 (get!26740 lt!2686598)))))))

(assert (=> d!2360093 (= (charsOf!5599 (_1!38509 (get!26740 lt!2686598))) lt!2686792)))

(declare-fun b_lambda!289995 () Bool)

(assert (=> (not b_lambda!289995) (not d!2360093)))

(declare-fun t!389871 () Bool)

(declare-fun tb!263221 () Bool)

(assert (=> (and b!7910145 (= (toChars!11577 (transformation!8661 rule!156)) (toChars!11577 (transformation!8661 (rule!11961 (_1!38509 (get!26740 lt!2686598)))))) t!389871) tb!263221))

(declare-fun b!7910386 () Bool)

(declare-fun e!4669509 () Bool)

(declare-fun tp!2356412 () Bool)

(assert (=> b!7910386 (= e!4669509 (and (inv!95406 (c!1451218 (dynLambda!30131 (toChars!11577 (transformation!8661 (rule!11961 (_1!38509 (get!26740 lt!2686598))))) (value!288817 (_1!38509 (get!26740 lt!2686598)))))) tp!2356412))))

(declare-fun result!360524 () Bool)

(assert (=> tb!263221 (= result!360524 (and (inv!95408 (dynLambda!30131 (toChars!11577 (transformation!8661 (rule!11961 (_1!38509 (get!26740 lt!2686598))))) (value!288817 (_1!38509 (get!26740 lt!2686598))))) e!4669509))))

(assert (= tb!263221 b!7910386))

(declare-fun m!8283982 () Bool)

(assert (=> b!7910386 m!8283982))

(declare-fun m!8283984 () Bool)

(assert (=> tb!263221 m!8283984))

(assert (=> d!2360093 t!389871))

(declare-fun b_and!353479 () Bool)

(assert (= b_and!353473 (and (=> t!389871 result!360524) b_and!353479)))

(declare-fun m!8283986 () Bool)

(assert (=> d!2360093 m!8283986))

(declare-fun m!8283988 () Bool)

(assert (=> d!2360093 m!8283988))

(assert (=> b!7910149 d!2360093))

(declare-fun d!2360095 () Bool)

(assert (=> d!2360095 (= (get!26740 lt!2686598) (v!55095 lt!2686598))))

(assert (=> b!7910149 d!2360095))

(declare-fun d!2360097 () Bool)

(assert (=> d!2360097 (= (inv!95401 (tag!9525 rule!156)) (= (mod (str.len (value!288816 (tag!9525 rule!156))) 2) 0))))

(assert (=> b!7910148 d!2360097))

(declare-fun d!2360099 () Bool)

(declare-fun res!3139675 () Bool)

(declare-fun e!4669512 () Bool)

(assert (=> d!2360099 (=> (not res!3139675) (not e!4669512))))

(declare-fun semiInverseModEq!3836 (Int Int) Bool)

(assert (=> d!2360099 (= res!3139675 (semiInverseModEq!3836 (toChars!11577 (transformation!8661 rule!156)) (toValue!11718 (transformation!8661 rule!156))))))

(assert (=> d!2360099 (= (inv!95404 (transformation!8661 rule!156)) e!4669512)))

(declare-fun b!7910389 () Bool)

(declare-fun equivClasses!3651 (Int Int) Bool)

(assert (=> b!7910389 (= e!4669512 (equivClasses!3651 (toChars!11577 (transformation!8661 rule!156)) (toValue!11718 (transformation!8661 rule!156))))))

(assert (= (and d!2360099 res!3139675) b!7910389))

(declare-fun m!8283990 () Bool)

(assert (=> d!2360099 m!8283990))

(declare-fun m!8283992 () Bool)

(assert (=> b!7910389 m!8283992))

(assert (=> b!7910148 d!2360099))

(declare-fun d!2360101 () Bool)

(declare-fun res!3139680 () Bool)

(declare-fun e!4669515 () Bool)

(assert (=> d!2360101 (=> (not res!3139680) (not e!4669515))))

(assert (=> d!2360101 (= res!3139680 (validRegex!11670 (regex!8661 rule!156)))))

(assert (=> d!2360101 (= (ruleValid!3972 thiss!15815 rule!156) e!4669515)))

(declare-fun b!7910394 () Bool)

(declare-fun res!3139681 () Bool)

(assert (=> b!7910394 (=> (not res!3139681) (not e!4669515))))

(assert (=> b!7910394 (= res!3139681 (not (nullable!9505 (regex!8661 rule!156))))))

(declare-fun b!7910395 () Bool)

(assert (=> b!7910395 (= e!4669515 (not (= (tag!9525 rule!156) (String!83310 ""))))))

(assert (= (and d!2360101 res!3139680) b!7910394))

(assert (= (and b!7910394 res!3139681) b!7910395))

(assert (=> d!2360101 m!8283850))

(assert (=> b!7910394 m!8283888))

(assert (=> b!7910147 d!2360101))

(declare-fun b!7910400 () Bool)

(declare-fun e!4669518 () Bool)

(declare-fun tp!2356415 () Bool)

(assert (=> b!7910400 (= e!4669518 (and tp_is_empty!53103 tp!2356415))))

(assert (=> b!7910143 (= tp!2356392 e!4669518)))

(assert (= (and b!7910143 (is-Cons!74359 (t!389856 input!1480))) b!7910400))

(declare-fun b!7910413 () Bool)

(declare-fun e!4669521 () Bool)

(declare-fun tp!2356429 () Bool)

(assert (=> b!7910413 (= e!4669521 tp!2356429)))

(declare-fun b!7910412 () Bool)

(declare-fun tp!2356427 () Bool)

(declare-fun tp!2356426 () Bool)

(assert (=> b!7910412 (= e!4669521 (and tp!2356427 tp!2356426))))

(declare-fun b!7910414 () Bool)

(declare-fun tp!2356428 () Bool)

(declare-fun tp!2356430 () Bool)

(assert (=> b!7910414 (= e!4669521 (and tp!2356428 tp!2356430))))

(assert (=> b!7910148 (= tp!2356390 e!4669521)))

(declare-fun b!7910411 () Bool)

(assert (=> b!7910411 (= e!4669521 tp_is_empty!53103)))

(assert (= (and b!7910148 (is-ElementMatch!21364 (regex!8661 rule!156))) b!7910411))

(assert (= (and b!7910148 (is-Concat!30342 (regex!8661 rule!156))) b!7910412))

(assert (= (and b!7910148 (is-Star!21364 (regex!8661 rule!156))) b!7910413))

(assert (= (and b!7910148 (is-Union!21364 (regex!8661 rule!156))) b!7910414))

(declare-fun b_lambda!289997 () Bool)

(assert (= b_lambda!289993 (or (and b!7910145 b_free!135187) b_lambda!289997)))

(declare-fun b_lambda!289999 () Bool)

(assert (= b_lambda!289989 (or (and b!7910145 b_free!135189) b_lambda!289999)))

(declare-fun b_lambda!290001 () Bool)

(assert (= b_lambda!289991 (or (and b!7910145 b_free!135187) b_lambda!290001)))

(push 1)

(assert (not d!2360089))

(assert (not b!7910369))

(assert (not b!7910414))

(assert (not b!7910329))

(assert (not b!7910413))

(assert (not b!7910184))

(assert (not d!2360093))

(assert (not b!7910400))

(assert (not b!7910374))

(assert (not d!2360065))

(assert tp_is_empty!53103)

(assert (not d!2360057))

(assert (not bm!733657))

(assert (not b_next!135977))

(assert (not b!7910364))

(assert (not b!7910386))

(assert (not d!2360101))

(assert (not d!2360099))

(assert (not d!2360033))

(assert (not bm!733646))

(assert (not d!2360091))

(assert (not b!7910376))

(assert (not b!7910394))

(assert (not b!7910360))

(assert (not b!7910295))

(assert (not b!7910383))

(assert (not b!7910305))

(assert (not bm!733650))

(assert (not b!7910296))

(assert (not b!7910362))

(assert (not b!7910359))

(assert (not b!7910389))

(assert (not b_lambda!289999))

(assert (not b_lambda!290001))

(assert (not bm!733648))

(assert (not bm!733647))

(assert (not b!7910412))

(assert (not tb!263217))

(assert (not bm!733649))

(assert (not b!7910373))

(assert b_and!353477)

(assert (not d!2360029))

(assert (not tb!263219))

(assert (not b!7910289))

(assert (not bm!733652))

(assert (not bm!733651))

(assert (not b!7910325))

(assert (not bm!733653))

(assert (not b_lambda!289997))

(assert (not b_lambda!289995))

(assert (not b!7910291))

(assert (not b!7910378))

(assert (not d!2360083))

(assert (not b!7910379))

(assert (not d!2360077))

(assert (not tb!263221))

(assert (not b_next!135979))

(assert (not d!2360087))

(assert (not b!7910365))

(assert (not bm!733656))

(assert b_and!353479)

(assert (not d!2360063))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353477)

(assert b_and!353479)

(assert (not b_next!135977))

(assert (not b_next!135979))

(check-sat)

(pop 1)

