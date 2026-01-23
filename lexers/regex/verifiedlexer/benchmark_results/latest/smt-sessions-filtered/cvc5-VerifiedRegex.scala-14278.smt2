; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!745878 () Bool)

(assert start!745878)

(declare-fun b!7905595 () Bool)

(declare-fun b_free!134939 () Bool)

(declare-fun b_next!135729 () Bool)

(assert (=> b!7905595 (= b_free!134939 (not b_next!135729))))

(declare-fun tp!2355132 () Bool)

(declare-fun b_and!353095 () Bool)

(assert (=> b!7905595 (= tp!2355132 b_and!353095)))

(declare-fun b_free!134941 () Bool)

(declare-fun b_next!135731 () Bool)

(assert (=> b!7905595 (= b_free!134941 (not b_next!135731))))

(declare-fun tp!2355137 () Bool)

(declare-fun b_and!353097 () Bool)

(assert (=> b!7905595 (= tp!2355137 b_and!353097)))

(declare-fun b!7905592 () Bool)

(declare-fun b_free!134943 () Bool)

(declare-fun b_next!135733 () Bool)

(assert (=> b!7905592 (= b_free!134943 (not b_next!135733))))

(declare-fun tp!2355138 () Bool)

(declare-fun b_and!353099 () Bool)

(assert (=> b!7905592 (= tp!2355138 b_and!353099)))

(declare-fun b_free!134945 () Bool)

(declare-fun b_next!135735 () Bool)

(assert (=> b!7905592 (= b_free!134945 (not b_next!135735))))

(declare-fun tp!2355133 () Bool)

(declare-fun b_and!353101 () Bool)

(assert (=> b!7905592 (= tp!2355133 b_and!353101)))

(declare-fun tp!2355131 () Bool)

(declare-datatypes ((List!74383 0))(
  ( (Nil!74259) (Cons!74259 (h!80707 (_ BitVec 16)) (t!389584 List!74383)) )
))
(declare-datatypes ((TokenValue!8937 0))(
  ( (FloatLiteralValue!17874 (text!63004 List!74383)) (TokenValueExt!8936 (__x!35161 Int)) (Broken!44685 (value!287655 List!74383)) (Object!9060) (End!8937) (Def!8937) (Underscore!8937) (Match!8937) (Else!8937) (Error!8937) (Case!8937) (If!8937) (Extends!8937) (Abstract!8937) (Class!8937) (Val!8937) (DelimiterValue!17874 (del!8997 List!74383)) (KeywordValue!8943 (value!287656 List!74383)) (CommentValue!17874 (value!287657 List!74383)) (WhitespaceValue!17874 (value!287658 List!74383)) (IndentationValue!8937 (value!287659 List!74383)) (String!83108) (Int32!8937) (Broken!44686 (value!287660 List!74383)) (Boolean!8938) (Unit!169301) (OperatorValue!8940 (op!8997 List!74383)) (IdentifierValue!17874 (value!287661 List!74383)) (IdentifierValue!17875 (value!287662 List!74383)) (WhitespaceValue!17875 (value!287663 List!74383)) (True!17874) (False!17874) (Broken!44687 (value!287664 List!74383)) (Broken!44688 (value!287665 List!74383)) (True!17875) (RightBrace!8937) (RightBracket!8937) (Colon!8937) (Null!8937) (Comma!8937) (LeftBracket!8937) (False!17875) (LeftBrace!8937) (ImaginaryLiteralValue!8937 (text!63005 List!74383)) (StringLiteralValue!26811 (value!287666 List!74383)) (EOFValue!8937 (value!287667 List!74383)) (IdentValue!8937 (value!287668 List!74383)) (DelimiterValue!17875 (value!287669 List!74383)) (DedentValue!8937 (value!287670 List!74383)) (NewLineValue!8937 (value!287671 List!74383)) (IntegerValue!26811 (value!287672 (_ BitVec 32)) (text!63006 List!74383)) (IntegerValue!26812 (value!287673 Int) (text!63007 List!74383)) (Times!8937) (Or!8937) (Equal!8937) (Minus!8937) (Broken!44689 (value!287674 List!74383)) (And!8937) (Div!8937) (LessEqual!8937) (Mod!8937) (Concat!30261) (Not!8937) (Plus!8937) (SpaceValue!8937 (value!287675 List!74383)) (IntegerValue!26813 (value!287676 Int) (text!63008 List!74383)) (StringLiteralValue!26812 (text!63009 List!74383)) (FloatLiteralValue!17875 (text!63010 List!74383)) (BytesLiteralValue!8937 (value!287677 List!74383)) (CommentValue!17875 (value!287678 List!74383)) (StringLiteralValue!26813 (value!287679 List!74383)) (ErrorTokenValue!8937 (msg!8998 List!74383)) )
))
(declare-datatypes ((C!42978 0))(
  ( (C!42979 (val!31953 Int)) )
))
(declare-datatypes ((List!74384 0))(
  ( (Nil!74260) (Cons!74260 (h!80708 C!42978) (t!389585 List!74384)) )
))
(declare-datatypes ((IArray!31651 0))(
  ( (IArray!31652 (innerList!15883 List!74384)) )
))
(declare-datatypes ((Conc!15795 0))(
  ( (Node!15795 (left!56637 Conc!15795) (right!56967 Conc!15795) (csize!31820 Int) (cheight!16006 Int)) (Leaf!30074 (xs!19177 IArray!31651) (csize!31821 Int)) (Empty!15795) )
))
(declare-datatypes ((BalanceConc!30708 0))(
  ( (BalanceConc!30709 (c!1450662 Conc!15795)) )
))
(declare-datatypes ((String!83109 0))(
  ( (String!83110 (value!287680 String)) )
))
(declare-datatypes ((Regex!21324 0))(
  ( (ElementMatch!21324 (c!1450663 C!42978)) (Concat!30262 (regOne!43160 Regex!21324) (regTwo!43160 Regex!21324)) (EmptyExpr!21324) (Star!21324 (reg!21653 Regex!21324)) (EmptyLang!21324) (Union!21324 (regOne!43161 Regex!21324) (regTwo!43161 Regex!21324)) )
))
(declare-datatypes ((TokenValueInjection!17182 0))(
  ( (TokenValueInjection!17183 (toValue!11678 Int) (toChars!11537 Int)) )
))
(declare-datatypes ((Rule!17042 0))(
  ( (Rule!17043 (regex!8621 Regex!21324) (tag!9485 String!83109) (isSeparator!8621 Bool) (transformation!8621 TokenValueInjection!17182)) )
))
(declare-datatypes ((Token!15662 0))(
  ( (Token!15663 (value!287681 TokenValue!8937) (rule!11913 Rule!17042) (size!43040 Int) (originalCharacters!8862 List!74384)) )
))
(declare-datatypes ((tuple2!70276 0))(
  ( (tuple2!70277 (_1!38441 Token!15662) (_2!38441 List!74384)) )
))
(declare-datatypes ((Option!17903 0))(
  ( (None!17902) (Some!17902 (v!55047 tuple2!70276)) )
))
(declare-fun err!4677 () Option!17903)

(declare-fun b!7905585 () Bool)

(declare-fun e!4666548 () Bool)

(declare-fun e!4666544 () Bool)

(declare-fun inv!95263 (String!83109) Bool)

(declare-fun inv!95266 (TokenValueInjection!17182) Bool)

(assert (=> b!7905585 (= e!4666544 (and tp!2355131 (inv!95263 (tag!9485 (rule!11913 (_1!38441 (v!55047 err!4677))))) (inv!95266 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677))))) e!4666548))))

(declare-fun b!7905586 () Bool)

(declare-fun e!4666551 () Bool)

(declare-fun tp_is_empty!53023 () Bool)

(declare-fun tp!2355136 () Bool)

(assert (=> b!7905586 (= e!4666551 (and tp_is_empty!53023 tp!2355136))))

(declare-fun b!7905587 () Bool)

(declare-fun res!3137071 () Bool)

(declare-fun e!4666555 () Bool)

(assert (=> b!7905587 (=> res!3137071 e!4666555)))

(declare-fun lt!2685038 () tuple2!70276)

(declare-fun lt!2685040 () List!74384)

(declare-fun input!1184 () List!74384)

(declare-fun ++!18175 (List!74384 List!74384) List!74384)

(assert (=> b!7905587 (= res!3137071 (not (= (++!18175 lt!2685040 (_2!38441 lt!2685038)) input!1184)))))

(declare-fun b!7905588 () Bool)

(declare-fun tp!2355140 () Bool)

(declare-datatypes ((List!74385 0))(
  ( (Nil!74261) (Cons!74261 (h!80709 Rule!17042) (t!389586 List!74385)) )
))
(declare-fun rulesArg!141 () List!74385)

(declare-fun e!4666543 () Bool)

(declare-fun e!4666545 () Bool)

(assert (=> b!7905588 (= e!4666543 (and tp!2355140 (inv!95263 (tag!9485 (h!80709 rulesArg!141))) (inv!95266 (transformation!8621 (h!80709 rulesArg!141))) e!4666545))))

(declare-fun b!7905589 () Bool)

(declare-fun res!3137070 () Bool)

(declare-fun e!4666549 () Bool)

(assert (=> b!7905589 (=> (not res!3137070) (not e!4666549))))

(declare-datatypes ((LexerInterface!8213 0))(
  ( (LexerInterfaceExt!8210 (__x!35162 Int)) (Lexer!8211) )
))
(declare-fun thiss!14377 () LexerInterface!8213)

(declare-fun rulesValidInductive!3432 (LexerInterface!8213 List!74385) Bool)

(assert (=> b!7905589 (= res!3137070 (rulesValidInductive!3432 thiss!14377 rulesArg!141))))

(declare-fun b!7905590 () Bool)

(declare-fun e!4666554 () Bool)

(declare-fun e!4666553 () Bool)

(declare-fun tp!2355139 () Bool)

(declare-fun inv!95267 (Token!15662) Bool)

(assert (=> b!7905590 (= e!4666554 (and (inv!95267 (_1!38441 (v!55047 err!4677))) e!4666553 tp!2355139))))

(declare-fun b!7905591 () Bool)

(declare-fun res!3137068 () Bool)

(declare-fun e!4666546 () Bool)

(assert (=> b!7905591 (=> res!3137068 e!4666546)))

(declare-fun lt!2685037 () Option!17903)

(declare-fun isDefined!14479 (Option!17903) Bool)

(assert (=> b!7905591 (= res!3137068 (not (isDefined!14479 lt!2685037)))))

(assert (=> b!7905592 (= e!4666545 (and tp!2355138 tp!2355133))))

(declare-fun res!3137073 () Bool)

(assert (=> start!745878 (=> (not res!3137073) (not e!4666549))))

(assert (=> start!745878 (= res!3137073 (is-Lexer!8211 thiss!14377))))

(assert (=> start!745878 e!4666549))

(assert (=> start!745878 true))

(declare-fun e!4666552 () Bool)

(assert (=> start!745878 e!4666552))

(assert (=> start!745878 e!4666551))

(declare-fun b!7905593 () Bool)

(declare-fun res!3137066 () Bool)

(assert (=> b!7905593 (=> (not res!3137066) (not e!4666549))))

(declare-fun isEmpty!42614 (List!74385) Bool)

(assert (=> b!7905593 (= res!3137066 (not (isEmpty!42614 rulesArg!141)))))

(declare-fun b!7905594 () Bool)

(assert (=> b!7905594 (= e!4666546 e!4666555)))

(declare-fun res!3137067 () Bool)

(assert (=> b!7905594 (=> res!3137067 e!4666555)))

(assert (=> b!7905594 (= res!3137067 (not (= lt!2685040 (originalCharacters!8862 (_1!38441 lt!2685038)))))))

(declare-fun list!19256 (BalanceConc!30708) List!74384)

(declare-fun charsOf!5565 (Token!15662) BalanceConc!30708)

(assert (=> b!7905594 (= lt!2685040 (list!19256 (charsOf!5565 (_1!38441 lt!2685038))))))

(declare-fun get!26686 (Option!17903) tuple2!70276)

(assert (=> b!7905594 (= lt!2685038 (get!26686 lt!2685037))))

(assert (=> b!7905595 (= e!4666548 (and tp!2355132 tp!2355137))))

(declare-fun b!7905596 () Bool)

(declare-fun validRegex!11650 (Regex!21324) Bool)

(assert (=> b!7905596 (= e!4666555 (validRegex!11650 (regex!8621 (rule!11913 (_1!38441 lt!2685038)))))))

(declare-fun tp!2355134 () Bool)

(declare-fun b!7905597 () Bool)

(declare-fun inv!21 (TokenValue!8937) Bool)

(assert (=> b!7905597 (= e!4666553 (and (inv!21 (value!287681 (_1!38441 (v!55047 err!4677)))) e!4666544 tp!2355134))))

(declare-fun b!7905598 () Bool)

(declare-fun tp!2355135 () Bool)

(assert (=> b!7905598 (= e!4666552 (and e!4666543 tp!2355135))))

(declare-fun b!7905599 () Bool)

(declare-fun res!3137069 () Bool)

(assert (=> b!7905599 (=> res!3137069 e!4666555)))

(declare-fun size!43041 (List!74384) Int)

(assert (=> b!7905599 (= res!3137069 (>= (size!43041 (_2!38441 lt!2685038)) (size!43041 input!1184)))))

(declare-fun b!7905600 () Bool)

(declare-fun e!4666557 () Bool)

(assert (=> b!7905600 (= e!4666557 e!4666546)))

(declare-fun res!3137072 () Bool)

(assert (=> b!7905600 (=> res!3137072 e!4666546)))

(declare-fun isEmpty!42615 (Option!17903) Bool)

(assert (=> b!7905600 (= res!3137072 (isEmpty!42615 lt!2685037))))

(assert (=> b!7905600 (= lt!2685037 err!4677)))

(assert (=> b!7905600 true))

(assert (=> b!7905600 e!4666554))

(declare-fun b!7905601 () Bool)

(assert (=> b!7905601 (= e!4666549 (not e!4666557))))

(declare-fun res!3137074 () Bool)

(assert (=> b!7905601 (=> res!3137074 e!4666557)))

(assert (=> b!7905601 (= res!3137074 (or (and (is-Cons!74261 rulesArg!141) (is-Nil!74261 (t!389586 rulesArg!141))) (is-Cons!74261 rulesArg!141)))))

(declare-fun isPrefix!6454 (List!74384 List!74384) Bool)

(assert (=> b!7905601 (isPrefix!6454 input!1184 input!1184)))

(declare-datatypes ((Unit!169302 0))(
  ( (Unit!169303) )
))
(declare-fun lt!2685039 () Unit!169302)

(declare-fun lemmaIsPrefixRefl!3965 (List!74384 List!74384) Unit!169302)

(assert (=> b!7905601 (= lt!2685039 (lemmaIsPrefixRefl!3965 input!1184 input!1184))))

(declare-fun b!7905602 () Bool)

(declare-fun res!3137075 () Bool)

(assert (=> b!7905602 (=> res!3137075 e!4666555)))

(declare-fun apply!14344 (TokenValueInjection!17182 BalanceConc!30708) TokenValue!8937)

(declare-fun seqFromList!6162 (List!74384) BalanceConc!30708)

(assert (=> b!7905602 (= res!3137075 (not (= (value!287681 (_1!38441 lt!2685038)) (apply!14344 (transformation!8621 (rule!11913 (_1!38441 lt!2685038))) (seqFromList!6162 (originalCharacters!8862 (_1!38441 lt!2685038)))))))))

(assert (= (and start!745878 res!3137073) b!7905589))

(assert (= (and b!7905589 res!3137070) b!7905593))

(assert (= (and b!7905593 res!3137066) b!7905601))

(assert (= (and b!7905601 (not res!3137074)) b!7905600))

(assert (= b!7905585 b!7905595))

(assert (= b!7905597 b!7905585))

(assert (= b!7905590 b!7905597))

(assert (= (and b!7905600 (is-Some!17902 err!4677)) b!7905590))

(assert (= (and b!7905600 (not res!3137072)) b!7905591))

(assert (= (and b!7905591 (not res!3137068)) b!7905594))

(assert (= (and b!7905594 (not res!3137067)) b!7905599))

(assert (= (and b!7905599 (not res!3137069)) b!7905587))

(assert (= (and b!7905587 (not res!3137071)) b!7905602))

(assert (= (and b!7905602 (not res!3137075)) b!7905596))

(assert (= b!7905588 b!7905592))

(assert (= b!7905598 b!7905588))

(assert (= (and start!745878 (is-Cons!74261 rulesArg!141)) b!7905598))

(assert (= (and start!745878 (is-Cons!74260 input!1184)) b!7905586))

(declare-fun m!8280092 () Bool)

(assert (=> b!7905600 m!8280092))

(declare-fun m!8280094 () Bool)

(assert (=> b!7905594 m!8280094))

(assert (=> b!7905594 m!8280094))

(declare-fun m!8280096 () Bool)

(assert (=> b!7905594 m!8280096))

(declare-fun m!8280098 () Bool)

(assert (=> b!7905594 m!8280098))

(declare-fun m!8280100 () Bool)

(assert (=> b!7905602 m!8280100))

(assert (=> b!7905602 m!8280100))

(declare-fun m!8280102 () Bool)

(assert (=> b!7905602 m!8280102))

(declare-fun m!8280104 () Bool)

(assert (=> b!7905585 m!8280104))

(declare-fun m!8280106 () Bool)

(assert (=> b!7905585 m!8280106))

(declare-fun m!8280108 () Bool)

(assert (=> b!7905596 m!8280108))

(declare-fun m!8280110 () Bool)

(assert (=> b!7905588 m!8280110))

(declare-fun m!8280112 () Bool)

(assert (=> b!7905588 m!8280112))

(declare-fun m!8280114 () Bool)

(assert (=> b!7905589 m!8280114))

(declare-fun m!8280116 () Bool)

(assert (=> b!7905591 m!8280116))

(declare-fun m!8280118 () Bool)

(assert (=> b!7905587 m!8280118))

(declare-fun m!8280120 () Bool)

(assert (=> b!7905601 m!8280120))

(declare-fun m!8280122 () Bool)

(assert (=> b!7905601 m!8280122))

(declare-fun m!8280124 () Bool)

(assert (=> b!7905597 m!8280124))

(declare-fun m!8280126 () Bool)

(assert (=> b!7905593 m!8280126))

(declare-fun m!8280128 () Bool)

(assert (=> b!7905590 m!8280128))

(declare-fun m!8280130 () Bool)

(assert (=> b!7905599 m!8280130))

(declare-fun m!8280132 () Bool)

(assert (=> b!7905599 m!8280132))

(push 1)

(assert (not b_next!135733))

(assert (not b!7905594))

(assert (not b!7905596))

(assert (not b_next!135731))

(assert tp_is_empty!53023)

(assert (not b_next!135729))

(assert (not b!7905588))

(assert (not b!7905586))

(assert (not b!7905593))

(assert b_and!353101)

(assert b_and!353097)

(assert (not b!7905600))

(assert (not b!7905585))

(assert (not b!7905599))

(assert (not b_next!135735))

(assert b_and!353095)

(assert (not b!7905591))

(assert (not b!7905589))

(assert (not b!7905597))

(assert (not b!7905602))

(assert (not b!7905601))

(assert (not b!7905587))

(assert (not b!7905590))

(assert (not b!7905598))

(assert b_and!353099)

(check-sat)

(pop 1)

(push 1)

(assert b_and!353097)

(assert (not b_next!135733))

(assert (not b_next!135731))

(assert (not b_next!135729))

(assert b_and!353099)

(assert b_and!353101)

(assert (not b_next!135735))

(assert b_and!353095)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7905693 () Bool)

(declare-fun e!4666624 () Bool)

(assert (=> b!7905693 (= e!4666624 (>= (size!43041 input!1184) (size!43041 input!1184)))))

(declare-fun b!7905691 () Bool)

(declare-fun res!3137123 () Bool)

(declare-fun e!4666625 () Bool)

(assert (=> b!7905691 (=> (not res!3137123) (not e!4666625))))

(declare-fun head!16148 (List!74384) C!42978)

(assert (=> b!7905691 (= res!3137123 (= (head!16148 input!1184) (head!16148 input!1184)))))

(declare-fun b!7905692 () Bool)

(declare-fun tail!15691 (List!74384) List!74384)

(assert (=> b!7905692 (= e!4666625 (isPrefix!6454 (tail!15691 input!1184) (tail!15691 input!1184)))))

(declare-fun d!2359267 () Bool)

(assert (=> d!2359267 e!4666624))

(declare-fun res!3137125 () Bool)

(assert (=> d!2359267 (=> res!3137125 e!4666624)))

(declare-fun lt!2685059 () Bool)

(assert (=> d!2359267 (= res!3137125 (not lt!2685059))))

(declare-fun e!4666626 () Bool)

(assert (=> d!2359267 (= lt!2685059 e!4666626)))

(declare-fun res!3137126 () Bool)

(assert (=> d!2359267 (=> res!3137126 e!4666626)))

(assert (=> d!2359267 (= res!3137126 (is-Nil!74260 input!1184))))

(assert (=> d!2359267 (= (isPrefix!6454 input!1184 input!1184) lt!2685059)))

(declare-fun b!7905690 () Bool)

(assert (=> b!7905690 (= e!4666626 e!4666625)))

(declare-fun res!3137124 () Bool)

(assert (=> b!7905690 (=> (not res!3137124) (not e!4666625))))

(assert (=> b!7905690 (= res!3137124 (not (is-Nil!74260 input!1184)))))

(assert (= (and d!2359267 (not res!3137126)) b!7905690))

(assert (= (and b!7905690 res!3137124) b!7905691))

(assert (= (and b!7905691 res!3137123) b!7905692))

(assert (= (and d!2359267 (not res!3137125)) b!7905693))

(assert (=> b!7905693 m!8280132))

(assert (=> b!7905693 m!8280132))

(declare-fun m!8280186 () Bool)

(assert (=> b!7905691 m!8280186))

(assert (=> b!7905691 m!8280186))

(declare-fun m!8280188 () Bool)

(assert (=> b!7905692 m!8280188))

(assert (=> b!7905692 m!8280188))

(assert (=> b!7905692 m!8280188))

(assert (=> b!7905692 m!8280188))

(declare-fun m!8280190 () Bool)

(assert (=> b!7905692 m!8280190))

(assert (=> b!7905601 d!2359267))

(declare-fun d!2359269 () Bool)

(assert (=> d!2359269 (isPrefix!6454 input!1184 input!1184)))

(declare-fun lt!2685062 () Unit!169302)

(declare-fun choose!59724 (List!74384 List!74384) Unit!169302)

(assert (=> d!2359269 (= lt!2685062 (choose!59724 input!1184 input!1184))))

(assert (=> d!2359269 (= (lemmaIsPrefixRefl!3965 input!1184 input!1184) lt!2685062)))

(declare-fun bs!1968114 () Bool)

(assert (= bs!1968114 d!2359269))

(assert (=> bs!1968114 m!8280120))

(declare-fun m!8280196 () Bool)

(assert (=> bs!1968114 m!8280196))

(assert (=> b!7905601 d!2359269))

(declare-fun d!2359273 () Bool)

(declare-fun res!3137132 () Bool)

(declare-fun e!4666630 () Bool)

(assert (=> d!2359273 (=> (not res!3137132) (not e!4666630))))

(declare-fun isEmpty!42618 (List!74384) Bool)

(assert (=> d!2359273 (= res!3137132 (not (isEmpty!42618 (originalCharacters!8862 (_1!38441 (v!55047 err!4677))))))))

(assert (=> d!2359273 (= (inv!95267 (_1!38441 (v!55047 err!4677))) e!4666630)))

(declare-fun b!7905699 () Bool)

(declare-fun res!3137133 () Bool)

(assert (=> b!7905699 (=> (not res!3137133) (not e!4666630))))

(declare-fun dynLambda!30082 (Int TokenValue!8937) BalanceConc!30708)

(assert (=> b!7905699 (= res!3137133 (= (originalCharacters!8862 (_1!38441 (v!55047 err!4677))) (list!19256 (dynLambda!30082 (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677))))) (value!287681 (_1!38441 (v!55047 err!4677)))))))))

(declare-fun b!7905700 () Bool)

(assert (=> b!7905700 (= e!4666630 (= (size!43040 (_1!38441 (v!55047 err!4677))) (size!43041 (originalCharacters!8862 (_1!38441 (v!55047 err!4677))))))))

(assert (= (and d!2359273 res!3137132) b!7905699))

(assert (= (and b!7905699 res!3137133) b!7905700))

(declare-fun b_lambda!289859 () Bool)

(assert (=> (not b_lambda!289859) (not b!7905699)))

(declare-fun t!389591 () Bool)

(declare-fun tb!263039 () Bool)

(assert (=> (and b!7905595 (= (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677))))) (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677)))))) t!389591) tb!263039))

(declare-fun b!7905705 () Bool)

(declare-fun e!4666633 () Bool)

(declare-fun tp!2355173 () Bool)

(declare-fun inv!95270 (Conc!15795) Bool)

(assert (=> b!7905705 (= e!4666633 (and (inv!95270 (c!1450662 (dynLambda!30082 (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677))))) (value!287681 (_1!38441 (v!55047 err!4677)))))) tp!2355173))))

(declare-fun result!360150 () Bool)

(declare-fun inv!95271 (BalanceConc!30708) Bool)

(assert (=> tb!263039 (= result!360150 (and (inv!95271 (dynLambda!30082 (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677))))) (value!287681 (_1!38441 (v!55047 err!4677))))) e!4666633))))

(assert (= tb!263039 b!7905705))

(declare-fun m!8280200 () Bool)

(assert (=> b!7905705 m!8280200))

(declare-fun m!8280202 () Bool)

(assert (=> tb!263039 m!8280202))

(assert (=> b!7905699 t!389591))

(declare-fun b_and!353111 () Bool)

(assert (= b_and!353097 (and (=> t!389591 result!360150) b_and!353111)))

(declare-fun tb!263041 () Bool)

(declare-fun t!389593 () Bool)

(assert (=> (and b!7905592 (= (toChars!11537 (transformation!8621 (h!80709 rulesArg!141))) (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677)))))) t!389593) tb!263041))

(declare-fun result!360154 () Bool)

(assert (= result!360154 result!360150))

(assert (=> b!7905699 t!389593))

(declare-fun b_and!353113 () Bool)

(assert (= b_and!353101 (and (=> t!389593 result!360154) b_and!353113)))

(declare-fun m!8280204 () Bool)

(assert (=> d!2359273 m!8280204))

(declare-fun m!8280206 () Bool)

(assert (=> b!7905699 m!8280206))

(assert (=> b!7905699 m!8280206))

(declare-fun m!8280208 () Bool)

(assert (=> b!7905699 m!8280208))

(declare-fun m!8280210 () Bool)

(assert (=> b!7905700 m!8280210))

(assert (=> b!7905590 d!2359273))

(declare-fun d!2359277 () Bool)

(assert (=> d!2359277 (= (isDefined!14479 lt!2685037) (not (isEmpty!42615 lt!2685037)))))

(declare-fun bs!1968116 () Bool)

(assert (= bs!1968116 d!2359277))

(assert (=> bs!1968116 m!8280092))

(assert (=> b!7905591 d!2359277))

(declare-fun d!2359279 () Bool)

(assert (=> d!2359279 true))

(declare-fun lt!2685076 () Bool)

(declare-fun lambda!472494 () Int)

(declare-fun forall!18446 (List!74385 Int) Bool)

(assert (=> d!2359279 (= lt!2685076 (forall!18446 rulesArg!141 lambda!472494))))

(declare-fun e!4666678 () Bool)

(assert (=> d!2359279 (= lt!2685076 e!4666678)))

(declare-fun res!3137170 () Bool)

(assert (=> d!2359279 (=> res!3137170 e!4666678)))

(assert (=> d!2359279 (= res!3137170 (not (is-Cons!74261 rulesArg!141)))))

(assert (=> d!2359279 (= (rulesValidInductive!3432 thiss!14377 rulesArg!141) lt!2685076)))

(declare-fun b!7905760 () Bool)

(declare-fun e!4666679 () Bool)

(assert (=> b!7905760 (= e!4666678 e!4666679)))

(declare-fun res!3137169 () Bool)

(assert (=> b!7905760 (=> (not res!3137169) (not e!4666679))))

(declare-fun ruleValid!3937 (LexerInterface!8213 Rule!17042) Bool)

(assert (=> b!7905760 (= res!3137169 (ruleValid!3937 thiss!14377 (h!80709 rulesArg!141)))))

(declare-fun b!7905761 () Bool)

(assert (=> b!7905761 (= e!4666679 (rulesValidInductive!3432 thiss!14377 (t!389586 rulesArg!141)))))

(assert (= (and d!2359279 (not res!3137170)) b!7905760))

(assert (= (and b!7905760 res!3137169) b!7905761))

(declare-fun m!8280240 () Bool)

(assert (=> d!2359279 m!8280240))

(declare-fun m!8280242 () Bool)

(assert (=> b!7905760 m!8280242))

(declare-fun m!8280244 () Bool)

(assert (=> b!7905761 m!8280244))

(assert (=> b!7905589 d!2359279))

(declare-fun d!2359297 () Bool)

(assert (=> d!2359297 (= (isEmpty!42615 lt!2685037) (not (is-Some!17902 lt!2685037)))))

(assert (=> b!7905600 d!2359297))

(declare-fun d!2359299 () Bool)

(assert (=> d!2359299 (= (isEmpty!42614 rulesArg!141) (is-Nil!74261 rulesArg!141))))

(assert (=> b!7905593 d!2359299))

(declare-fun d!2359301 () Bool)

(declare-fun dynLambda!30083 (Int BalanceConc!30708) TokenValue!8937)

(assert (=> d!2359301 (= (apply!14344 (transformation!8621 (rule!11913 (_1!38441 lt!2685038))) (seqFromList!6162 (originalCharacters!8862 (_1!38441 lt!2685038)))) (dynLambda!30083 (toValue!11678 (transformation!8621 (rule!11913 (_1!38441 lt!2685038)))) (seqFromList!6162 (originalCharacters!8862 (_1!38441 lt!2685038)))))))

(declare-fun b_lambda!289865 () Bool)

(assert (=> (not b_lambda!289865) (not d!2359301)))

(declare-fun t!389603 () Bool)

(declare-fun tb!263051 () Bool)

(assert (=> (and b!7905595 (= (toValue!11678 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677))))) (toValue!11678 (transformation!8621 (rule!11913 (_1!38441 lt!2685038))))) t!389603) tb!263051))

(declare-fun result!360168 () Bool)

(assert (=> tb!263051 (= result!360168 (inv!21 (dynLambda!30083 (toValue!11678 (transformation!8621 (rule!11913 (_1!38441 lt!2685038)))) (seqFromList!6162 (originalCharacters!8862 (_1!38441 lt!2685038))))))))

(declare-fun m!8280246 () Bool)

(assert (=> tb!263051 m!8280246))

(assert (=> d!2359301 t!389603))

(declare-fun b_and!353123 () Bool)

(assert (= b_and!353095 (and (=> t!389603 result!360168) b_and!353123)))

(declare-fun tb!263053 () Bool)

(declare-fun t!389605 () Bool)

(assert (=> (and b!7905592 (= (toValue!11678 (transformation!8621 (h!80709 rulesArg!141))) (toValue!11678 (transformation!8621 (rule!11913 (_1!38441 lt!2685038))))) t!389605) tb!263053))

(declare-fun result!360172 () Bool)

(assert (= result!360172 result!360168))

(assert (=> d!2359301 t!389605))

(declare-fun b_and!353125 () Bool)

(assert (= b_and!353099 (and (=> t!389605 result!360172) b_and!353125)))

(assert (=> d!2359301 m!8280100))

(declare-fun m!8280248 () Bool)

(assert (=> d!2359301 m!8280248))

(assert (=> b!7905602 d!2359301))

(declare-fun d!2359303 () Bool)

(declare-fun fromListB!2779 (List!74384) BalanceConc!30708)

(assert (=> d!2359303 (= (seqFromList!6162 (originalCharacters!8862 (_1!38441 lt!2685038))) (fromListB!2779 (originalCharacters!8862 (_1!38441 lt!2685038))))))

(declare-fun bs!1968119 () Bool)

(assert (= bs!1968119 d!2359303))

(declare-fun m!8280250 () Bool)

(assert (=> bs!1968119 m!8280250))

(assert (=> b!7905602 d!2359303))

(declare-fun d!2359305 () Bool)

(assert (=> d!2359305 (= (inv!95263 (tag!9485 (rule!11913 (_1!38441 (v!55047 err!4677))))) (= (mod (str.len (value!287680 (tag!9485 (rule!11913 (_1!38441 (v!55047 err!4677)))))) 2) 0))))

(assert (=> b!7905585 d!2359305))

(declare-fun d!2359307 () Bool)

(declare-fun res!3137173 () Bool)

(declare-fun e!4666685 () Bool)

(assert (=> d!2359307 (=> (not res!3137173) (not e!4666685))))

(declare-fun semiInverseModEq!3816 (Int Int) Bool)

(assert (=> d!2359307 (= res!3137173 (semiInverseModEq!3816 (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677))))) (toValue!11678 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677)))))))))

(assert (=> d!2359307 (= (inv!95266 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677))))) e!4666685)))

(declare-fun b!7905768 () Bool)

(declare-fun equivClasses!3631 (Int Int) Bool)

(assert (=> b!7905768 (= e!4666685 (equivClasses!3631 (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677))))) (toValue!11678 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677)))))))))

(assert (= (and d!2359307 res!3137173) b!7905768))

(declare-fun m!8280252 () Bool)

(assert (=> d!2359307 m!8280252))

(declare-fun m!8280254 () Bool)

(assert (=> b!7905768 m!8280254))

(assert (=> b!7905585 d!2359307))

(declare-fun d!2359309 () Bool)

(declare-fun res!3137188 () Bool)

(declare-fun e!4666706 () Bool)

(assert (=> d!2359309 (=> res!3137188 e!4666706)))

(assert (=> d!2359309 (= res!3137188 (is-ElementMatch!21324 (regex!8621 (rule!11913 (_1!38441 lt!2685038)))))))

(assert (=> d!2359309 (= (validRegex!11650 (regex!8621 (rule!11913 (_1!38441 lt!2685038)))) e!4666706)))

(declare-fun b!7905787 () Bool)

(declare-fun res!3137187 () Bool)

(declare-fun e!4666702 () Bool)

(assert (=> b!7905787 (=> res!3137187 e!4666702)))

(assert (=> b!7905787 (= res!3137187 (not (is-Concat!30262 (regex!8621 (rule!11913 (_1!38441 lt!2685038))))))))

(declare-fun e!4666700 () Bool)

(assert (=> b!7905787 (= e!4666700 e!4666702)))

(declare-fun bm!733437 () Bool)

(declare-fun call!733443 () Bool)

(declare-fun call!733442 () Bool)

(assert (=> bm!733437 (= call!733443 call!733442)))

(declare-fun b!7905788 () Bool)

(declare-fun e!4666705 () Bool)

(assert (=> b!7905788 (= e!4666705 e!4666700)))

(declare-fun c!1450688 () Bool)

(assert (=> b!7905788 (= c!1450688 (is-Union!21324 (regex!8621 (rule!11913 (_1!38441 lt!2685038)))))))

(declare-fun bm!733438 () Bool)

(declare-fun call!733444 () Bool)

(assert (=> bm!733438 (= call!733444 (validRegex!11650 (ite c!1450688 (regOne!43161 (regex!8621 (rule!11913 (_1!38441 lt!2685038)))) (regTwo!43160 (regex!8621 (rule!11913 (_1!38441 lt!2685038)))))))))

(declare-fun b!7905789 () Bool)

(assert (=> b!7905789 (= e!4666706 e!4666705)))

(declare-fun c!1450687 () Bool)

(assert (=> b!7905789 (= c!1450687 (is-Star!21324 (regex!8621 (rule!11913 (_1!38441 lt!2685038)))))))

(declare-fun b!7905790 () Bool)

(declare-fun e!4666703 () Bool)

(assert (=> b!7905790 (= e!4666703 call!733442)))

(declare-fun b!7905791 () Bool)

(assert (=> b!7905791 (= e!4666705 e!4666703)))

(declare-fun res!3137185 () Bool)

(declare-fun nullable!9487 (Regex!21324) Bool)

(assert (=> b!7905791 (= res!3137185 (not (nullable!9487 (reg!21653 (regex!8621 (rule!11913 (_1!38441 lt!2685038)))))))))

(assert (=> b!7905791 (=> (not res!3137185) (not e!4666703))))

(declare-fun b!7905792 () Bool)

(declare-fun e!4666701 () Bool)

(assert (=> b!7905792 (= e!4666701 call!733444)))

(declare-fun b!7905793 () Bool)

(declare-fun res!3137184 () Bool)

(declare-fun e!4666704 () Bool)

(assert (=> b!7905793 (=> (not res!3137184) (not e!4666704))))

(assert (=> b!7905793 (= res!3137184 call!733444)))

(assert (=> b!7905793 (= e!4666700 e!4666704)))

(declare-fun b!7905794 () Bool)

(assert (=> b!7905794 (= e!4666704 call!733443)))

(declare-fun b!7905795 () Bool)

(assert (=> b!7905795 (= e!4666702 e!4666701)))

(declare-fun res!3137186 () Bool)

(assert (=> b!7905795 (=> (not res!3137186) (not e!4666701))))

(assert (=> b!7905795 (= res!3137186 call!733443)))

(declare-fun bm!733439 () Bool)

(assert (=> bm!733439 (= call!733442 (validRegex!11650 (ite c!1450687 (reg!21653 (regex!8621 (rule!11913 (_1!38441 lt!2685038)))) (ite c!1450688 (regTwo!43161 (regex!8621 (rule!11913 (_1!38441 lt!2685038)))) (regOne!43160 (regex!8621 (rule!11913 (_1!38441 lt!2685038))))))))))

(assert (= (and d!2359309 (not res!3137188)) b!7905789))

(assert (= (and b!7905789 c!1450687) b!7905791))

(assert (= (and b!7905789 (not c!1450687)) b!7905788))

(assert (= (and b!7905791 res!3137185) b!7905790))

(assert (= (and b!7905788 c!1450688) b!7905793))

(assert (= (and b!7905788 (not c!1450688)) b!7905787))

(assert (= (and b!7905793 res!3137184) b!7905794))

(assert (= (and b!7905787 (not res!3137187)) b!7905795))

(assert (= (and b!7905795 res!3137186) b!7905792))

(assert (= (or b!7905793 b!7905792) bm!733438))

(assert (= (or b!7905794 b!7905795) bm!733437))

(assert (= (or b!7905790 bm!733437) bm!733439))

(declare-fun m!8280256 () Bool)

(assert (=> bm!733438 m!8280256))

(declare-fun m!8280258 () Bool)

(assert (=> b!7905791 m!8280258))

(declare-fun m!8280260 () Bool)

(assert (=> bm!733439 m!8280260))

(assert (=> b!7905596 d!2359309))

(declare-fun d!2359311 () Bool)

(declare-fun list!19258 (Conc!15795) List!74384)

(assert (=> d!2359311 (= (list!19256 (charsOf!5565 (_1!38441 lt!2685038))) (list!19258 (c!1450662 (charsOf!5565 (_1!38441 lt!2685038)))))))

(declare-fun bs!1968120 () Bool)

(assert (= bs!1968120 d!2359311))

(declare-fun m!8280262 () Bool)

(assert (=> bs!1968120 m!8280262))

(assert (=> b!7905594 d!2359311))

(declare-fun d!2359313 () Bool)

(declare-fun lt!2685079 () BalanceConc!30708)

(assert (=> d!2359313 (= (list!19256 lt!2685079) (originalCharacters!8862 (_1!38441 lt!2685038)))))

(assert (=> d!2359313 (= lt!2685079 (dynLambda!30082 (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 lt!2685038)))) (value!287681 (_1!38441 lt!2685038))))))

(assert (=> d!2359313 (= (charsOf!5565 (_1!38441 lt!2685038)) lt!2685079)))

(declare-fun b_lambda!289867 () Bool)

(assert (=> (not b_lambda!289867) (not d!2359313)))

(declare-fun tb!263055 () Bool)

(declare-fun t!389607 () Bool)

(assert (=> (and b!7905595 (= (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677))))) (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 lt!2685038))))) t!389607) tb!263055))

(declare-fun b!7905796 () Bool)

(declare-fun e!4666707 () Bool)

(declare-fun tp!2355177 () Bool)

(assert (=> b!7905796 (= e!4666707 (and (inv!95270 (c!1450662 (dynLambda!30082 (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 lt!2685038)))) (value!287681 (_1!38441 lt!2685038))))) tp!2355177))))

(declare-fun result!360174 () Bool)

(assert (=> tb!263055 (= result!360174 (and (inv!95271 (dynLambda!30082 (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 lt!2685038)))) (value!287681 (_1!38441 lt!2685038)))) e!4666707))))

(assert (= tb!263055 b!7905796))

(declare-fun m!8280264 () Bool)

(assert (=> b!7905796 m!8280264))

(declare-fun m!8280266 () Bool)

(assert (=> tb!263055 m!8280266))

(assert (=> d!2359313 t!389607))

(declare-fun b_and!353127 () Bool)

(assert (= b_and!353111 (and (=> t!389607 result!360174) b_and!353127)))

(declare-fun tb!263057 () Bool)

(declare-fun t!389609 () Bool)

(assert (=> (and b!7905592 (= (toChars!11537 (transformation!8621 (h!80709 rulesArg!141))) (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 lt!2685038))))) t!389609) tb!263057))

(declare-fun result!360176 () Bool)

(assert (= result!360176 result!360174))

(assert (=> d!2359313 t!389609))

(declare-fun b_and!353129 () Bool)

(assert (= b_and!353113 (and (=> t!389609 result!360176) b_and!353129)))

(declare-fun m!8280268 () Bool)

(assert (=> d!2359313 m!8280268))

(declare-fun m!8280270 () Bool)

(assert (=> d!2359313 m!8280270))

(assert (=> b!7905594 d!2359313))

(declare-fun d!2359315 () Bool)

(assert (=> d!2359315 (= (get!26686 lt!2685037) (v!55047 lt!2685037))))

(assert (=> b!7905594 d!2359315))

(declare-fun d!2359317 () Bool)

(declare-fun lt!2685082 () Int)

(assert (=> d!2359317 (>= lt!2685082 0)))

(declare-fun e!4666710 () Int)

(assert (=> d!2359317 (= lt!2685082 e!4666710)))

(declare-fun c!1450691 () Bool)

(assert (=> d!2359317 (= c!1450691 (is-Nil!74260 (_2!38441 lt!2685038)))))

(assert (=> d!2359317 (= (size!43041 (_2!38441 lt!2685038)) lt!2685082)))

(declare-fun b!7905801 () Bool)

(assert (=> b!7905801 (= e!4666710 0)))

(declare-fun b!7905802 () Bool)

(assert (=> b!7905802 (= e!4666710 (+ 1 (size!43041 (t!389585 (_2!38441 lt!2685038)))))))

(assert (= (and d!2359317 c!1450691) b!7905801))

(assert (= (and d!2359317 (not c!1450691)) b!7905802))

(declare-fun m!8280272 () Bool)

(assert (=> b!7905802 m!8280272))

(assert (=> b!7905599 d!2359317))

(declare-fun d!2359319 () Bool)

(declare-fun lt!2685083 () Int)

(assert (=> d!2359319 (>= lt!2685083 0)))

(declare-fun e!4666711 () Int)

(assert (=> d!2359319 (= lt!2685083 e!4666711)))

(declare-fun c!1450692 () Bool)

(assert (=> d!2359319 (= c!1450692 (is-Nil!74260 input!1184))))

(assert (=> d!2359319 (= (size!43041 input!1184) lt!2685083)))

(declare-fun b!7905803 () Bool)

(assert (=> b!7905803 (= e!4666711 0)))

(declare-fun b!7905804 () Bool)

(assert (=> b!7905804 (= e!4666711 (+ 1 (size!43041 (t!389585 input!1184))))))

(assert (= (and d!2359319 c!1450692) b!7905803))

(assert (= (and d!2359319 (not c!1450692)) b!7905804))

(declare-fun m!8280274 () Bool)

(assert (=> b!7905804 m!8280274))

(assert (=> b!7905599 d!2359319))

(declare-fun d!2359321 () Bool)

(assert (=> d!2359321 (= (inv!95263 (tag!9485 (h!80709 rulesArg!141))) (= (mod (str.len (value!287680 (tag!9485 (h!80709 rulesArg!141)))) 2) 0))))

(assert (=> b!7905588 d!2359321))

(declare-fun d!2359323 () Bool)

(declare-fun res!3137189 () Bool)

(declare-fun e!4666712 () Bool)

(assert (=> d!2359323 (=> (not res!3137189) (not e!4666712))))

(assert (=> d!2359323 (= res!3137189 (semiInverseModEq!3816 (toChars!11537 (transformation!8621 (h!80709 rulesArg!141))) (toValue!11678 (transformation!8621 (h!80709 rulesArg!141)))))))

(assert (=> d!2359323 (= (inv!95266 (transformation!8621 (h!80709 rulesArg!141))) e!4666712)))

(declare-fun b!7905805 () Bool)

(assert (=> b!7905805 (= e!4666712 (equivClasses!3631 (toChars!11537 (transformation!8621 (h!80709 rulesArg!141))) (toValue!11678 (transformation!8621 (h!80709 rulesArg!141)))))))

(assert (= (and d!2359323 res!3137189) b!7905805))

(declare-fun m!8280276 () Bool)

(assert (=> d!2359323 m!8280276))

(declare-fun m!8280278 () Bool)

(assert (=> b!7905805 m!8280278))

(assert (=> b!7905588 d!2359323))

(declare-fun b!7905816 () Bool)

(declare-fun e!4666719 () Bool)

(declare-fun e!4666720 () Bool)

(assert (=> b!7905816 (= e!4666719 e!4666720)))

(declare-fun c!1450697 () Bool)

(assert (=> b!7905816 (= c!1450697 (is-IntegerValue!26812 (value!287681 (_1!38441 (v!55047 err!4677)))))))

(declare-fun b!7905817 () Bool)

(declare-fun inv!17 (TokenValue!8937) Bool)

(assert (=> b!7905817 (= e!4666720 (inv!17 (value!287681 (_1!38441 (v!55047 err!4677)))))))

(declare-fun b!7905818 () Bool)

(declare-fun res!3137192 () Bool)

(declare-fun e!4666721 () Bool)

(assert (=> b!7905818 (=> res!3137192 e!4666721)))

(assert (=> b!7905818 (= res!3137192 (not (is-IntegerValue!26813 (value!287681 (_1!38441 (v!55047 err!4677))))))))

(assert (=> b!7905818 (= e!4666720 e!4666721)))

(declare-fun b!7905819 () Bool)

(declare-fun inv!16 (TokenValue!8937) Bool)

(assert (=> b!7905819 (= e!4666719 (inv!16 (value!287681 (_1!38441 (v!55047 err!4677)))))))

(declare-fun b!7905820 () Bool)

(declare-fun inv!15 (TokenValue!8937) Bool)

(assert (=> b!7905820 (= e!4666721 (inv!15 (value!287681 (_1!38441 (v!55047 err!4677)))))))

(declare-fun d!2359325 () Bool)

(declare-fun c!1450698 () Bool)

(assert (=> d!2359325 (= c!1450698 (is-IntegerValue!26811 (value!287681 (_1!38441 (v!55047 err!4677)))))))

(assert (=> d!2359325 (= (inv!21 (value!287681 (_1!38441 (v!55047 err!4677)))) e!4666719)))

(assert (= (and d!2359325 c!1450698) b!7905819))

(assert (= (and d!2359325 (not c!1450698)) b!7905816))

(assert (= (and b!7905816 c!1450697) b!7905817))

(assert (= (and b!7905816 (not c!1450697)) b!7905818))

(assert (= (and b!7905818 (not res!3137192)) b!7905820))

(declare-fun m!8280280 () Bool)

(assert (=> b!7905817 m!8280280))

(declare-fun m!8280282 () Bool)

(assert (=> b!7905819 m!8280282))

(declare-fun m!8280284 () Bool)

(assert (=> b!7905820 m!8280284))

(assert (=> b!7905597 d!2359325))

(declare-fun b!7905830 () Bool)

(declare-fun e!4666726 () List!74384)

(assert (=> b!7905830 (= e!4666726 (Cons!74260 (h!80708 lt!2685040) (++!18175 (t!389585 lt!2685040) (_2!38441 lt!2685038))))))

(declare-fun b!7905829 () Bool)

(assert (=> b!7905829 (= e!4666726 (_2!38441 lt!2685038))))

(declare-fun e!4666727 () Bool)

(declare-fun b!7905832 () Bool)

(declare-fun lt!2685086 () List!74384)

(assert (=> b!7905832 (= e!4666727 (or (not (= (_2!38441 lt!2685038) Nil!74260)) (= lt!2685086 lt!2685040)))))

(declare-fun d!2359327 () Bool)

(assert (=> d!2359327 e!4666727))

(declare-fun res!3137197 () Bool)

(assert (=> d!2359327 (=> (not res!3137197) (not e!4666727))))

(declare-fun content!15722 (List!74384) (Set C!42978))

(assert (=> d!2359327 (= res!3137197 (= (content!15722 lt!2685086) (set.union (content!15722 lt!2685040) (content!15722 (_2!38441 lt!2685038)))))))

(assert (=> d!2359327 (= lt!2685086 e!4666726)))

(declare-fun c!1450701 () Bool)

(assert (=> d!2359327 (= c!1450701 (is-Nil!74260 lt!2685040))))

(assert (=> d!2359327 (= (++!18175 lt!2685040 (_2!38441 lt!2685038)) lt!2685086)))

(declare-fun b!7905831 () Bool)

(declare-fun res!3137198 () Bool)

(assert (=> b!7905831 (=> (not res!3137198) (not e!4666727))))

(assert (=> b!7905831 (= res!3137198 (= (size!43041 lt!2685086) (+ (size!43041 lt!2685040) (size!43041 (_2!38441 lt!2685038)))))))

(assert (= (and d!2359327 c!1450701) b!7905829))

(assert (= (and d!2359327 (not c!1450701)) b!7905830))

(assert (= (and d!2359327 res!3137197) b!7905831))

(assert (= (and b!7905831 res!3137198) b!7905832))

(declare-fun m!8280286 () Bool)

(assert (=> b!7905830 m!8280286))

(declare-fun m!8280288 () Bool)

(assert (=> d!2359327 m!8280288))

(declare-fun m!8280290 () Bool)

(assert (=> d!2359327 m!8280290))

(declare-fun m!8280292 () Bool)

(assert (=> d!2359327 m!8280292))

(declare-fun m!8280294 () Bool)

(assert (=> b!7905831 m!8280294))

(declare-fun m!8280296 () Bool)

(assert (=> b!7905831 m!8280296))

(assert (=> b!7905831 m!8280130))

(assert (=> b!7905587 d!2359327))

(declare-fun b!7905844 () Bool)

(declare-fun e!4666730 () Bool)

(declare-fun tp!2355191 () Bool)

(declare-fun tp!2355188 () Bool)

(assert (=> b!7905844 (= e!4666730 (and tp!2355191 tp!2355188))))

(declare-fun b!7905843 () Bool)

(assert (=> b!7905843 (= e!4666730 tp_is_empty!53023)))

(declare-fun b!7905845 () Bool)

(declare-fun tp!2355192 () Bool)

(assert (=> b!7905845 (= e!4666730 tp!2355192)))

(declare-fun b!7905846 () Bool)

(declare-fun tp!2355189 () Bool)

(declare-fun tp!2355190 () Bool)

(assert (=> b!7905846 (= e!4666730 (and tp!2355189 tp!2355190))))

(assert (=> b!7905585 (= tp!2355131 e!4666730)))

(assert (= (and b!7905585 (is-ElementMatch!21324 (regex!8621 (rule!11913 (_1!38441 (v!55047 err!4677)))))) b!7905843))

(assert (= (and b!7905585 (is-Concat!30262 (regex!8621 (rule!11913 (_1!38441 (v!55047 err!4677)))))) b!7905844))

(assert (= (and b!7905585 (is-Star!21324 (regex!8621 (rule!11913 (_1!38441 (v!55047 err!4677)))))) b!7905845))

(assert (= (and b!7905585 (is-Union!21324 (regex!8621 (rule!11913 (_1!38441 (v!55047 err!4677)))))) b!7905846))

(declare-fun b!7905851 () Bool)

(declare-fun e!4666733 () Bool)

(declare-fun tp!2355195 () Bool)

(assert (=> b!7905851 (= e!4666733 (and tp_is_empty!53023 tp!2355195))))

(assert (=> b!7905590 (= tp!2355139 e!4666733)))

(assert (= (and b!7905590 (is-Cons!74260 (_2!38441 (v!55047 err!4677)))) b!7905851))

(declare-fun b!7905862 () Bool)

(declare-fun b_free!134955 () Bool)

(declare-fun b_next!135745 () Bool)

(assert (=> b!7905862 (= b_free!134955 (not b_next!135745))))

(declare-fun t!389611 () Bool)

(declare-fun tb!263059 () Bool)

(assert (=> (and b!7905862 (= (toValue!11678 (transformation!8621 (h!80709 (t!389586 rulesArg!141)))) (toValue!11678 (transformation!8621 (rule!11913 (_1!38441 lt!2685038))))) t!389611) tb!263059))

(declare-fun result!360184 () Bool)

(assert (= result!360184 result!360168))

(assert (=> d!2359301 t!389611))

(declare-fun tp!2355205 () Bool)

(declare-fun b_and!353131 () Bool)

(assert (=> b!7905862 (= tp!2355205 (and (=> t!389611 result!360184) b_and!353131))))

(declare-fun b_free!134957 () Bool)

(declare-fun b_next!135747 () Bool)

(assert (=> b!7905862 (= b_free!134957 (not b_next!135747))))

(declare-fun t!389613 () Bool)

(declare-fun tb!263061 () Bool)

(assert (=> (and b!7905862 (= (toChars!11537 (transformation!8621 (h!80709 (t!389586 rulesArg!141)))) (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677)))))) t!389613) tb!263061))

(declare-fun result!360186 () Bool)

(assert (= result!360186 result!360150))

(assert (=> b!7905699 t!389613))

(declare-fun tb!263063 () Bool)

(declare-fun t!389615 () Bool)

(assert (=> (and b!7905862 (= (toChars!11537 (transformation!8621 (h!80709 (t!389586 rulesArg!141)))) (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 lt!2685038))))) t!389615) tb!263063))

(declare-fun result!360188 () Bool)

(assert (= result!360188 result!360174))

(assert (=> d!2359313 t!389615))

(declare-fun tp!2355207 () Bool)

(declare-fun b_and!353133 () Bool)

(assert (=> b!7905862 (= tp!2355207 (and (=> t!389613 result!360186) (=> t!389615 result!360188) b_and!353133))))

(declare-fun e!4666743 () Bool)

(assert (=> b!7905862 (= e!4666743 (and tp!2355205 tp!2355207))))

(declare-fun tp!2355206 () Bool)

(declare-fun e!4666745 () Bool)

(declare-fun b!7905861 () Bool)

(assert (=> b!7905861 (= e!4666745 (and tp!2355206 (inv!95263 (tag!9485 (h!80709 (t!389586 rulesArg!141)))) (inv!95266 (transformation!8621 (h!80709 (t!389586 rulesArg!141)))) e!4666743))))

(declare-fun b!7905860 () Bool)

(declare-fun e!4666744 () Bool)

(declare-fun tp!2355204 () Bool)

(assert (=> b!7905860 (= e!4666744 (and e!4666745 tp!2355204))))

(assert (=> b!7905598 (= tp!2355135 e!4666744)))

(assert (= b!7905861 b!7905862))

(assert (= b!7905860 b!7905861))

(assert (= (and b!7905598 (is-Cons!74261 (t!389586 rulesArg!141))) b!7905860))

(declare-fun m!8280298 () Bool)

(assert (=> b!7905861 m!8280298))

(declare-fun m!8280300 () Bool)

(assert (=> b!7905861 m!8280300))

(declare-fun b!7905864 () Bool)

(declare-fun e!4666746 () Bool)

(declare-fun tp!2355211 () Bool)

(declare-fun tp!2355208 () Bool)

(assert (=> b!7905864 (= e!4666746 (and tp!2355211 tp!2355208))))

(declare-fun b!7905863 () Bool)

(assert (=> b!7905863 (= e!4666746 tp_is_empty!53023)))

(declare-fun b!7905865 () Bool)

(declare-fun tp!2355212 () Bool)

(assert (=> b!7905865 (= e!4666746 tp!2355212)))

(declare-fun b!7905866 () Bool)

(declare-fun tp!2355209 () Bool)

(declare-fun tp!2355210 () Bool)

(assert (=> b!7905866 (= e!4666746 (and tp!2355209 tp!2355210))))

(assert (=> b!7905588 (= tp!2355140 e!4666746)))

(assert (= (and b!7905588 (is-ElementMatch!21324 (regex!8621 (h!80709 rulesArg!141)))) b!7905863))

(assert (= (and b!7905588 (is-Concat!30262 (regex!8621 (h!80709 rulesArg!141)))) b!7905864))

(assert (= (and b!7905588 (is-Star!21324 (regex!8621 (h!80709 rulesArg!141)))) b!7905865))

(assert (= (and b!7905588 (is-Union!21324 (regex!8621 (h!80709 rulesArg!141)))) b!7905866))

(declare-fun b!7905867 () Bool)

(declare-fun e!4666747 () Bool)

(declare-fun tp!2355213 () Bool)

(assert (=> b!7905867 (= e!4666747 (and tp_is_empty!53023 tp!2355213))))

(assert (=> b!7905597 (= tp!2355134 e!4666747)))

(assert (= (and b!7905597 (is-Cons!74260 (originalCharacters!8862 (_1!38441 (v!55047 err!4677))))) b!7905867))

(declare-fun b!7905868 () Bool)

(declare-fun e!4666748 () Bool)

(declare-fun tp!2355214 () Bool)

(assert (=> b!7905868 (= e!4666748 (and tp_is_empty!53023 tp!2355214))))

(assert (=> b!7905586 (= tp!2355136 e!4666748)))

(assert (= (and b!7905586 (is-Cons!74260 (t!389585 input!1184))) b!7905868))

(declare-fun b_lambda!289869 () Bool)

(assert (= b_lambda!289859 (or (and b!7905595 b_free!134941) (and b!7905592 b_free!134945 (= (toChars!11537 (transformation!8621 (h!80709 rulesArg!141))) (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677))))))) (and b!7905862 b_free!134957 (= (toChars!11537 (transformation!8621 (h!80709 (t!389586 rulesArg!141)))) (toChars!11537 (transformation!8621 (rule!11913 (_1!38441 (v!55047 err!4677))))))) b_lambda!289869)))

(push 1)

(assert (not b_next!135733))

(assert (not b!7905861))

(assert (not b!7905791))

(assert (not b_next!135731))

(assert (not b_next!135729))

(assert (not d!2359279))

(assert (not b!7905851))

(assert (not b!7905846))

(assert (not b_lambda!289869))

(assert (not b_lambda!289867))

(assert (not b!7905796))

(assert (not b!7905692))

(assert (not tb!263055))

(assert (not b!7905802))

(assert (not b!7905864))

(assert (not b!7905817))

(assert (not b!7905820))

(assert (not b!7905693))

(assert b_and!353123)

(assert (not d!2359277))

(assert (not b!7905804))

(assert (not b_next!135735))

(assert (not b!7905831))

(assert (not b_lambda!289865))

(assert (not b!7905805))

(assert (not b!7905705))

(assert (not b!7905691))

(assert b_and!353129)

(assert (not d!2359313))

(assert (not b!7905868))

(assert (not b_next!135747))

(assert (not d!2359269))

(assert (not b!7905860))

(assert (not d!2359323))

(assert (not b!7905845))

(assert (not d!2359273))

(assert (not b!7905819))

(assert b_and!353133)

(assert tp_is_empty!53023)

(assert (not tb!263051))

(assert (not d!2359303))

(assert (not b!7905761))

(assert (not b!7905830))

(assert (not b!7905700))

(assert (not d!2359311))

(assert (not d!2359327))

(assert (not b!7905760))

(assert (not b!7905768))

(assert b_and!353131)

(assert (not b_next!135745))

(assert (not tb!263039))

(assert (not d!2359307))

(assert (not b!7905844))

(assert b_and!353127)

(assert b_and!353125)

(assert (not bm!733438))

(assert (not b!7905867))

(assert (not bm!733439))

(assert (not b!7905866))

(assert (not b!7905699))

(assert (not b!7905865))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!135733))

(assert b_and!353123)

(assert (not b_next!135735))

(assert b_and!353129)

(assert (not b_next!135747))

(assert (not b_next!135731))

(assert b_and!353133)

(assert (not b_next!135729))

(assert b_and!353127)

(assert b_and!353125)

(assert b_and!353131)

(assert (not b_next!135745))

(check-sat)

(pop 1)

