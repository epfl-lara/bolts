; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513552 () Bool)

(assert start!513552)

(declare-fun b!4901529 () Bool)

(declare-fun b_free!131723 () Bool)

(declare-fun b_next!132513 () Bool)

(assert (=> b!4901529 (= b_free!131723 (not b_next!132513))))

(declare-fun tp!1379071 () Bool)

(declare-fun b_and!346115 () Bool)

(assert (=> b!4901529 (= tp!1379071 b_and!346115)))

(declare-fun b_free!131725 () Bool)

(declare-fun b_next!132515 () Bool)

(assert (=> b!4901529 (= b_free!131725 (not b_next!132515))))

(declare-fun tp!1379073 () Bool)

(declare-fun b_and!346117 () Bool)

(assert (=> b!4901529 (= tp!1379073 b_and!346117)))

(declare-fun tp!1379072 () Bool)

(declare-fun b!4901528 () Bool)

(declare-datatypes ((C!26724 0))(
  ( (C!26725 (val!22696 Int)) )
))
(declare-datatypes ((Regex!13263 0))(
  ( (ElementMatch!13263 (c!833115 C!26724)) (Concat!21761 (regOne!27038 Regex!13263) (regTwo!27038 Regex!13263)) (EmptyExpr!13263) (Star!13263 (reg!13592 Regex!13263)) (EmptyLang!13263) (Union!13263 (regOne!27039 Regex!13263) (regTwo!27039 Regex!13263)) )
))
(declare-datatypes ((String!63931 0))(
  ( (String!63932 (value!262479 String)) )
))
(declare-datatypes ((List!56574 0))(
  ( (Nil!56450) (Cons!56450 (h!62898 (_ BitVec 16)) (t!366666 List!56574)) )
))
(declare-datatypes ((TokenValue!8498 0))(
  ( (FloatLiteralValue!16996 (text!59931 List!56574)) (TokenValueExt!8497 (__x!34289 Int)) (Broken!42490 (value!262480 List!56574)) (Object!8621) (End!8498) (Def!8498) (Underscore!8498) (Match!8498) (Else!8498) (Error!8498) (Case!8498) (If!8498) (Extends!8498) (Abstract!8498) (Class!8498) (Val!8498) (DelimiterValue!16996 (del!8558 List!56574)) (KeywordValue!8504 (value!262481 List!56574)) (CommentValue!16996 (value!262482 List!56574)) (WhitespaceValue!16996 (value!262483 List!56574)) (IndentationValue!8498 (value!262484 List!56574)) (String!63933) (Int32!8498) (Broken!42491 (value!262485 List!56574)) (Boolean!8499) (Unit!146554) (OperatorValue!8501 (op!8558 List!56574)) (IdentifierValue!16996 (value!262486 List!56574)) (IdentifierValue!16997 (value!262487 List!56574)) (WhitespaceValue!16997 (value!262488 List!56574)) (True!16996) (False!16996) (Broken!42492 (value!262489 List!56574)) (Broken!42493 (value!262490 List!56574)) (True!16997) (RightBrace!8498) (RightBracket!8498) (Colon!8498) (Null!8498) (Comma!8498) (LeftBracket!8498) (False!16997) (LeftBrace!8498) (ImaginaryLiteralValue!8498 (text!59932 List!56574)) (StringLiteralValue!25494 (value!262491 List!56574)) (EOFValue!8498 (value!262492 List!56574)) (IdentValue!8498 (value!262493 List!56574)) (DelimiterValue!16997 (value!262494 List!56574)) (DedentValue!8498 (value!262495 List!56574)) (NewLineValue!8498 (value!262496 List!56574)) (IntegerValue!25494 (value!262497 (_ BitVec 32)) (text!59933 List!56574)) (IntegerValue!25495 (value!262498 Int) (text!59934 List!56574)) (Times!8498) (Or!8498) (Equal!8498) (Minus!8498) (Broken!42494 (value!262499 List!56574)) (And!8498) (Div!8498) (LessEqual!8498) (Mod!8498) (Concat!21762) (Not!8498) (Plus!8498) (SpaceValue!8498 (value!262500 List!56574)) (IntegerValue!25496 (value!262501 Int) (text!59935 List!56574)) (StringLiteralValue!25495 (text!59936 List!56574)) (FloatLiteralValue!16997 (text!59937 List!56574)) (BytesLiteralValue!8498 (value!262502 List!56574)) (CommentValue!16997 (value!262503 List!56574)) (StringLiteralValue!25496 (value!262504 List!56574)) (ErrorTokenValue!8498 (msg!8559 List!56574)) )
))
(declare-datatypes ((List!56575 0))(
  ( (Nil!56451) (Cons!56451 (h!62899 C!26724) (t!366667 List!56575)) )
))
(declare-datatypes ((IArray!29573 0))(
  ( (IArray!29574 (innerList!14844 List!56575)) )
))
(declare-datatypes ((Conc!14756 0))(
  ( (Node!14756 (left!41024 Conc!14756) (right!41354 Conc!14756) (csize!29742 Int) (cheight!14967 Int)) (Leaf!24567 (xs!18072 IArray!29573) (csize!29743 Int)) (Empty!14756) )
))
(declare-datatypes ((BalanceConc!28942 0))(
  ( (BalanceConc!28943 (c!833116 Conc!14756)) )
))
(declare-datatypes ((TokenValueInjection!16304 0))(
  ( (TokenValueInjection!16305 (toValue!11099 Int) (toChars!10958 Int)) )
))
(declare-datatypes ((Rule!16176 0))(
  ( (Rule!16177 (regex!8188 Regex!13263) (tag!9052 String!63931) (isSeparator!8188 Bool) (transformation!8188 TokenValueInjection!16304)) )
))
(declare-fun rule!164 () Rule!16176)

(declare-fun e!3063842 () Bool)

(declare-fun e!3063839 () Bool)

(declare-fun inv!72777 (String!63931) Bool)

(declare-fun inv!72779 (TokenValueInjection!16304) Bool)

(assert (=> b!4901528 (= e!3063839 (and tp!1379072 (inv!72777 (tag!9052 rule!164)) (inv!72779 (transformation!8188 rule!164)) e!3063842))))

(declare-fun res!2093563 () Bool)

(declare-fun e!3063841 () Bool)

(assert (=> start!513552 (=> (not res!2093563) (not e!3063841))))

(declare-datatypes ((LexerInterface!7780 0))(
  ( (LexerInterfaceExt!7777 (__x!34290 Int)) (Lexer!7778) )
))
(declare-fun thiss!15943 () LexerInterface!7780)

(get-info :version)

(assert (=> start!513552 (= res!2093563 ((_ is Lexer!7778) thiss!15943))))

(assert (=> start!513552 e!3063841))

(assert (=> start!513552 true))

(assert (=> start!513552 e!3063839))

(declare-fun b!4901526 () Bool)

(declare-fun res!2093564 () Bool)

(assert (=> b!4901526 (=> (not res!2093564) (not e!3063841))))

(declare-fun ruleValid!3685 (LexerInterface!7780 Rule!16176) Bool)

(assert (=> b!4901526 (= res!2093564 (ruleValid!3685 thiss!15943 rule!164))))

(assert (=> b!4901529 (= e!3063842 (and tp!1379071 tp!1379073))))

(declare-fun b!4901527 () Bool)

(declare-fun validRegex!5892 (Regex!13263) Bool)

(assert (=> b!4901527 (= e!3063841 (not (validRegex!5892 (regex!8188 rule!164))))))

(assert (= (and start!513552 res!2093563) b!4901526))

(assert (= (and b!4901526 res!2093564) b!4901527))

(assert (= b!4901528 b!4901529))

(assert (= start!513552 b!4901528))

(declare-fun m!5910254 () Bool)

(assert (=> b!4901528 m!5910254))

(declare-fun m!5910256 () Bool)

(assert (=> b!4901528 m!5910256))

(declare-fun m!5910258 () Bool)

(assert (=> b!4901526 m!5910258))

(declare-fun m!5910260 () Bool)

(assert (=> b!4901527 m!5910260))

(check-sat (not b!4901526) (not b_next!132513) (not b!4901527) b_and!346115 (not b_next!132515) (not b!4901528) b_and!346117)
(check-sat b_and!346117 b_and!346115 (not b_next!132515) (not b_next!132513))
(get-model)

(declare-fun bm!340066 () Bool)

(declare-fun c!833126 () Bool)

(declare-fun c!833125 () Bool)

(declare-fun call!340071 () Bool)

(assert (=> bm!340066 (= call!340071 (validRegex!5892 (ite c!833125 (reg!13592 (regex!8188 rule!164)) (ite c!833126 (regOne!27039 (regex!8188 rule!164)) (regTwo!27038 (regex!8188 rule!164))))))))

(declare-fun b!4901566 () Bool)

(declare-fun e!3063876 () Bool)

(declare-fun call!340072 () Bool)

(assert (=> b!4901566 (= e!3063876 call!340072)))

(declare-fun b!4901567 () Bool)

(declare-fun e!3063877 () Bool)

(declare-fun e!3063874 () Bool)

(assert (=> b!4901567 (= e!3063877 e!3063874)))

(assert (=> b!4901567 (= c!833125 ((_ is Star!13263) (regex!8188 rule!164)))))

(declare-fun b!4901568 () Bool)

(declare-fun e!3063875 () Bool)

(assert (=> b!4901568 (= e!3063874 e!3063875)))

(declare-fun res!2093593 () Bool)

(declare-fun nullable!4564 (Regex!13263) Bool)

(assert (=> b!4901568 (= res!2093593 (not (nullable!4564 (reg!13592 (regex!8188 rule!164)))))))

(assert (=> b!4901568 (=> (not res!2093593) (not e!3063875))))

(declare-fun b!4901569 () Bool)

(declare-fun e!3063871 () Bool)

(assert (=> b!4901569 (= e!3063871 e!3063876)))

(declare-fun res!2093591 () Bool)

(assert (=> b!4901569 (=> (not res!2093591) (not e!3063876))))

(declare-fun call!340073 () Bool)

(assert (=> b!4901569 (= res!2093591 call!340073)))

(declare-fun b!4901570 () Bool)

(declare-fun e!3063873 () Bool)

(assert (=> b!4901570 (= e!3063874 e!3063873)))

(assert (=> b!4901570 (= c!833126 ((_ is Union!13263) (regex!8188 rule!164)))))

(declare-fun d!1575551 () Bool)

(declare-fun res!2093589 () Bool)

(assert (=> d!1575551 (=> res!2093589 e!3063877)))

(assert (=> d!1575551 (= res!2093589 ((_ is ElementMatch!13263) (regex!8188 rule!164)))))

(assert (=> d!1575551 (= (validRegex!5892 (regex!8188 rule!164)) e!3063877)))

(declare-fun b!4901571 () Bool)

(declare-fun res!2093590 () Bool)

(assert (=> b!4901571 (=> res!2093590 e!3063871)))

(assert (=> b!4901571 (= res!2093590 (not ((_ is Concat!21761) (regex!8188 rule!164))))))

(assert (=> b!4901571 (= e!3063873 e!3063871)))

(declare-fun bm!340067 () Bool)

(assert (=> bm!340067 (= call!340073 (validRegex!5892 (ite c!833126 (regTwo!27039 (regex!8188 rule!164)) (regOne!27038 (regex!8188 rule!164)))))))

(declare-fun bm!340068 () Bool)

(assert (=> bm!340068 (= call!340072 call!340071)))

(declare-fun b!4901572 () Bool)

(declare-fun res!2093592 () Bool)

(declare-fun e!3063872 () Bool)

(assert (=> b!4901572 (=> (not res!2093592) (not e!3063872))))

(assert (=> b!4901572 (= res!2093592 call!340072)))

(assert (=> b!4901572 (= e!3063873 e!3063872)))

(declare-fun b!4901573 () Bool)

(assert (=> b!4901573 (= e!3063872 call!340073)))

(declare-fun b!4901574 () Bool)

(assert (=> b!4901574 (= e!3063875 call!340071)))

(assert (= (and d!1575551 (not res!2093589)) b!4901567))

(assert (= (and b!4901567 c!833125) b!4901568))

(assert (= (and b!4901567 (not c!833125)) b!4901570))

(assert (= (and b!4901568 res!2093593) b!4901574))

(assert (= (and b!4901570 c!833126) b!4901572))

(assert (= (and b!4901570 (not c!833126)) b!4901571))

(assert (= (and b!4901572 res!2093592) b!4901573))

(assert (= (and b!4901571 (not res!2093590)) b!4901569))

(assert (= (and b!4901569 res!2093591) b!4901566))

(assert (= (or b!4901573 b!4901569) bm!340067))

(assert (= (or b!4901572 b!4901566) bm!340068))

(assert (= (or b!4901574 bm!340068) bm!340066))

(declare-fun m!5910262 () Bool)

(assert (=> bm!340066 m!5910262))

(declare-fun m!5910264 () Bool)

(assert (=> b!4901568 m!5910264))

(declare-fun m!5910266 () Bool)

(assert (=> bm!340067 m!5910266))

(assert (=> b!4901527 d!1575551))

(declare-fun d!1575555 () Bool)

(declare-fun res!2093598 () Bool)

(declare-fun e!3063880 () Bool)

(assert (=> d!1575555 (=> (not res!2093598) (not e!3063880))))

(assert (=> d!1575555 (= res!2093598 (validRegex!5892 (regex!8188 rule!164)))))

(assert (=> d!1575555 (= (ruleValid!3685 thiss!15943 rule!164) e!3063880)))

(declare-fun b!4901579 () Bool)

(declare-fun res!2093599 () Bool)

(assert (=> b!4901579 (=> (not res!2093599) (not e!3063880))))

(assert (=> b!4901579 (= res!2093599 (not (nullable!4564 (regex!8188 rule!164))))))

(declare-fun b!4901580 () Bool)

(assert (=> b!4901580 (= e!3063880 (not (= (tag!9052 rule!164) (String!63932 ""))))))

(assert (= (and d!1575555 res!2093598) b!4901579))

(assert (= (and b!4901579 res!2093599) b!4901580))

(assert (=> d!1575555 m!5910260))

(declare-fun m!5910268 () Bool)

(assert (=> b!4901579 m!5910268))

(assert (=> b!4901526 d!1575555))

(declare-fun d!1575557 () Bool)

(assert (=> d!1575557 (= (inv!72777 (tag!9052 rule!164)) (= (mod (str.len (value!262479 (tag!9052 rule!164))) 2) 0))))

(assert (=> b!4901528 d!1575557))

(declare-fun d!1575559 () Bool)

(declare-fun res!2093613 () Bool)

(declare-fun e!3063893 () Bool)

(assert (=> d!1575559 (=> (not res!2093613) (not e!3063893))))

(declare-fun semiInverseModEq!3599 (Int Int) Bool)

(assert (=> d!1575559 (= res!2093613 (semiInverseModEq!3599 (toChars!10958 (transformation!8188 rule!164)) (toValue!11099 (transformation!8188 rule!164))))))

(assert (=> d!1575559 (= (inv!72779 (transformation!8188 rule!164)) e!3063893)))

(declare-fun b!4901598 () Bool)

(declare-fun equivClasses!3478 (Int Int) Bool)

(assert (=> b!4901598 (= e!3063893 (equivClasses!3478 (toChars!10958 (transformation!8188 rule!164)) (toValue!11099 (transformation!8188 rule!164))))))

(assert (= (and d!1575559 res!2093613) b!4901598))

(declare-fun m!5910276 () Bool)

(assert (=> d!1575559 m!5910276))

(declare-fun m!5910278 () Bool)

(assert (=> b!4901598 m!5910278))

(assert (=> b!4901528 d!1575559))

(declare-fun b!4901609 () Bool)

(declare-fun e!3063896 () Bool)

(declare-fun tp_is_empty!35805 () Bool)

(assert (=> b!4901609 (= e!3063896 tp_is_empty!35805)))

(declare-fun b!4901610 () Bool)

(declare-fun tp!1379084 () Bool)

(declare-fun tp!1379086 () Bool)

(assert (=> b!4901610 (= e!3063896 (and tp!1379084 tp!1379086))))

(assert (=> b!4901528 (= tp!1379072 e!3063896)))

(declare-fun b!4901611 () Bool)

(declare-fun tp!1379087 () Bool)

(assert (=> b!4901611 (= e!3063896 tp!1379087)))

(declare-fun b!4901612 () Bool)

(declare-fun tp!1379085 () Bool)

(declare-fun tp!1379088 () Bool)

(assert (=> b!4901612 (= e!3063896 (and tp!1379085 tp!1379088))))

(assert (= (and b!4901528 ((_ is ElementMatch!13263) (regex!8188 rule!164))) b!4901609))

(assert (= (and b!4901528 ((_ is Concat!21761) (regex!8188 rule!164))) b!4901610))

(assert (= (and b!4901528 ((_ is Star!13263) (regex!8188 rule!164))) b!4901611))

(assert (= (and b!4901528 ((_ is Union!13263) (regex!8188 rule!164))) b!4901612))

(check-sat (not b!4901612) (not d!1575555) (not b_next!132513) (not b!4901568) (not b!4901610) (not b!4901598) (not bm!340066) (not b_next!132515) (not b!4901611) b_and!346117 (not b!4901579) (not bm!340067) (not d!1575559) tp_is_empty!35805 b_and!346115)
(check-sat b_and!346117 b_and!346115 (not b_next!132515) (not b_next!132513))
