; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!351972 () Bool)

(assert start!351972)

(declare-fun b!3748995 () Bool)

(declare-fun b_free!100173 () Bool)

(declare-fun b_next!100877 () Bool)

(assert (=> b!3748995 (= b_free!100173 (not b_next!100877))))

(declare-fun tp!1144338 () Bool)

(declare-fun b_and!278431 () Bool)

(assert (=> b!3748995 (= tp!1144338 b_and!278431)))

(declare-fun b_free!100175 () Bool)

(declare-fun b_next!100879 () Bool)

(assert (=> b!3748995 (= b_free!100175 (not b_next!100879))))

(declare-fun tp!1144332 () Bool)

(declare-fun b_and!278433 () Bool)

(assert (=> b!3748995 (= tp!1144332 b_and!278433)))

(declare-fun b!3749000 () Bool)

(declare-fun b_free!100177 () Bool)

(declare-fun b_next!100881 () Bool)

(assert (=> b!3749000 (= b_free!100177 (not b_next!100881))))

(declare-fun tp!1144339 () Bool)

(declare-fun b_and!278435 () Bool)

(assert (=> b!3749000 (= tp!1144339 b_and!278435)))

(declare-fun b_free!100179 () Bool)

(declare-fun b_next!100883 () Bool)

(assert (=> b!3749000 (= b_free!100179 (not b_next!100883))))

(declare-fun tp!1144333 () Bool)

(declare-fun b_and!278437 () Bool)

(assert (=> b!3749000 (= tp!1144333 b_and!278437)))

(declare-fun b!3749006 () Bool)

(declare-fun b_free!100181 () Bool)

(declare-fun b_next!100885 () Bool)

(assert (=> b!3749006 (= b_free!100181 (not b_next!100885))))

(declare-fun tp!1144335 () Bool)

(declare-fun b_and!278439 () Bool)

(assert (=> b!3749006 (= tp!1144335 b_and!278439)))

(declare-fun b_free!100183 () Bool)

(declare-fun b_next!100887 () Bool)

(assert (=> b!3749006 (= b_free!100183 (not b_next!100887))))

(declare-fun tp!1144329 () Bool)

(declare-fun b_and!278441 () Bool)

(assert (=> b!3749006 (= tp!1144329 b_and!278441)))

(declare-fun e!2318625 () Bool)

(declare-fun tp!1144330 () Bool)

(declare-fun e!2318624 () Bool)

(declare-fun b!3748993 () Bool)

(declare-datatypes ((C!22202 0))(
  ( (C!22203 (val!13149 Int)) )
))
(declare-datatypes ((List!40051 0))(
  ( (Nil!39927) (Cons!39927 (h!45347 C!22202) (t!302778 List!40051)) )
))
(declare-datatypes ((IArray!24405 0))(
  ( (IArray!24406 (innerList!12260 List!40051)) )
))
(declare-datatypes ((Regex!11008 0))(
  ( (ElementMatch!11008 (c!649086 C!22202)) (Concat!17341 (regOne!22528 Regex!11008) (regTwo!22528 Regex!11008)) (EmptyExpr!11008) (Star!11008 (reg!11337 Regex!11008)) (EmptyLang!11008) (Union!11008 (regOne!22529 Regex!11008) (regTwo!22529 Regex!11008)) )
))
(declare-datatypes ((String!45292 0))(
  ( (String!45293 (value!194476 String)) )
))
(declare-datatypes ((List!40052 0))(
  ( (Nil!39928) (Cons!39928 (h!45348 (_ BitVec 16)) (t!302779 List!40052)) )
))
(declare-datatypes ((TokenValue!6333 0))(
  ( (FloatLiteralValue!12666 (text!44776 List!40052)) (TokenValueExt!6332 (__x!24883 Int)) (Broken!31665 (value!194477 List!40052)) (Object!6456) (End!6333) (Def!6333) (Underscore!6333) (Match!6333) (Else!6333) (Error!6333) (Case!6333) (If!6333) (Extends!6333) (Abstract!6333) (Class!6333) (Val!6333) (DelimiterValue!12666 (del!6393 List!40052)) (KeywordValue!6339 (value!194478 List!40052)) (CommentValue!12666 (value!194479 List!40052)) (WhitespaceValue!12666 (value!194480 List!40052)) (IndentationValue!6333 (value!194481 List!40052)) (String!45294) (Int32!6333) (Broken!31666 (value!194482 List!40052)) (Boolean!6334) (Unit!57712) (OperatorValue!6336 (op!6393 List!40052)) (IdentifierValue!12666 (value!194483 List!40052)) (IdentifierValue!12667 (value!194484 List!40052)) (WhitespaceValue!12667 (value!194485 List!40052)) (True!12666) (False!12666) (Broken!31667 (value!194486 List!40052)) (Broken!31668 (value!194487 List!40052)) (True!12667) (RightBrace!6333) (RightBracket!6333) (Colon!6333) (Null!6333) (Comma!6333) (LeftBracket!6333) (False!12667) (LeftBrace!6333) (ImaginaryLiteralValue!6333 (text!44777 List!40052)) (StringLiteralValue!18999 (value!194488 List!40052)) (EOFValue!6333 (value!194489 List!40052)) (IdentValue!6333 (value!194490 List!40052)) (DelimiterValue!12667 (value!194491 List!40052)) (DedentValue!6333 (value!194492 List!40052)) (NewLineValue!6333 (value!194493 List!40052)) (IntegerValue!18999 (value!194494 (_ BitVec 32)) (text!44778 List!40052)) (IntegerValue!19000 (value!194495 Int) (text!44779 List!40052)) (Times!6333) (Or!6333) (Equal!6333) (Minus!6333) (Broken!31669 (value!194496 List!40052)) (And!6333) (Div!6333) (LessEqual!6333) (Mod!6333) (Concat!17342) (Not!6333) (Plus!6333) (SpaceValue!6333 (value!194497 List!40052)) (IntegerValue!19001 (value!194498 Int) (text!44780 List!40052)) (StringLiteralValue!19000 (text!44781 List!40052)) (FloatLiteralValue!12667 (text!44782 List!40052)) (BytesLiteralValue!6333 (value!194499 List!40052)) (CommentValue!12667 (value!194500 List!40052)) (StringLiteralValue!19001 (value!194501 List!40052)) (ErrorTokenValue!6333 (msg!6394 List!40052)) )
))
(declare-datatypes ((Conc!12200 0))(
  ( (Node!12200 (left!30895 Conc!12200) (right!31225 Conc!12200) (csize!24630 Int) (cheight!12411 Int)) (Leaf!18936 (xs!15402 IArray!24405) (csize!24631 Int)) (Empty!12200) )
))
(declare-datatypes ((BalanceConc!24014 0))(
  ( (BalanceConc!24015 (c!649087 Conc!12200)) )
))
(declare-datatypes ((TokenValueInjection!12094 0))(
  ( (TokenValueInjection!12095 (toValue!8451 Int) (toChars!8310 Int)) )
))
(declare-datatypes ((Rule!12006 0))(
  ( (Rule!12007 (regex!6103 Regex!11008) (tag!6963 String!45292) (isSeparator!6103 Bool) (transformation!6103 TokenValueInjection!12094)) )
))
(declare-datatypes ((Token!11344 0))(
  ( (Token!11345 (value!194502 TokenValue!6333) (rule!8867 Rule!12006) (size!30066 Int) (originalCharacters!6703 List!40051)) )
))
(declare-fun t!8579 () Token!11344)

(declare-fun inv!21 (TokenValue!6333) Bool)

(assert (=> b!3748993 (= e!2318625 (and (inv!21 (value!194502 t!8579)) e!2318624 tp!1144330))))

(declare-datatypes ((List!40053 0))(
  ( (Nil!39929) (Cons!39929 (h!45349 Token!11344) (t!302780 List!40053)) )
))
(declare-fun tokens!606 () List!40053)

(declare-fun tp!1144337 () Bool)

(declare-fun e!2318621 () Bool)

(declare-fun e!2318632 () Bool)

(declare-fun b!3748994 () Bool)

(declare-fun inv!53429 (String!45292) Bool)

(declare-fun inv!53432 (TokenValueInjection!12094) Bool)

(assert (=> b!3748994 (= e!2318621 (and tp!1144337 (inv!53429 (tag!6963 (rule!8867 (h!45349 tokens!606)))) (inv!53432 (transformation!6103 (rule!8867 (h!45349 tokens!606)))) e!2318632))))

(assert (=> b!3748995 (= e!2318632 (and tp!1144338 tp!1144332))))

(declare-fun res!1519577 () Bool)

(declare-fun e!2318622 () Bool)

(assert (=> start!351972 (=> (not res!1519577) (not e!2318622))))

(declare-datatypes ((LexerInterface!5692 0))(
  ( (LexerInterfaceExt!5689 (__x!24884 Int)) (Lexer!5690) )
))
(declare-fun thiss!27232 () LexerInterface!5692)

(assert (=> start!351972 (= res!1519577 (is-Lexer!5690 thiss!27232))))

(assert (=> start!351972 e!2318622))

(assert (=> start!351972 true))

(declare-fun e!2318628 () Bool)

(assert (=> start!351972 e!2318628))

(declare-fun e!2318629 () Bool)

(assert (=> start!351972 e!2318629))

(declare-fun inv!53433 (Token!11344) Bool)

(assert (=> start!351972 (and (inv!53433 t!8579) e!2318625)))

(declare-fun e!2318623 () Bool)

(declare-fun b!3748996 () Bool)

(declare-fun tp!1144331 () Bool)

(assert (=> b!3748996 (= e!2318623 (and (inv!21 (value!194502 (h!45349 tokens!606))) e!2318621 tp!1144331))))

(declare-fun b!3748997 () Bool)

(declare-fun tp!1144328 () Bool)

(assert (=> b!3748997 (= e!2318629 (and (inv!53433 (h!45349 tokens!606)) e!2318623 tp!1144328))))

(declare-fun b!3748998 () Bool)

(declare-fun res!1519575 () Bool)

(assert (=> b!3748998 (=> (not res!1519575) (not e!2318622))))

(assert (=> b!3748998 (= res!1519575 (and (is-Cons!39929 tokens!606) (= (h!45349 tokens!606) t!8579)))))

(declare-fun b!3748999 () Bool)

(declare-fun e!2318634 () Bool)

(declare-fun tp!1144334 () Bool)

(assert (=> b!3748999 (= e!2318628 (and e!2318634 tp!1144334))))

(declare-fun e!2318635 () Bool)

(assert (=> b!3749000 (= e!2318635 (and tp!1144339 tp!1144333))))

(declare-datatypes ((List!40054 0))(
  ( (Nil!39930) (Cons!39930 (h!45350 Rule!12006) (t!302781 List!40054)) )
))
(declare-fun rules!4236 () List!40054)

(declare-fun b!3749001 () Bool)

(declare-fun rulesProduceIndividualToken!2608 (LexerInterface!5692 List!40054 Token!11344) Bool)

(assert (=> b!3749001 (= e!2318622 (not (rulesProduceIndividualToken!2608 thiss!27232 rules!4236 t!8579)))))

(declare-fun b!3749002 () Bool)

(declare-fun res!1519573 () Bool)

(assert (=> b!3749002 (=> (not res!1519573) (not e!2318622))))

(declare-fun isEmpty!23527 (List!40054) Bool)

(assert (=> b!3749002 (= res!1519573 (not (isEmpty!23527 rules!4236)))))

(declare-fun b!3749003 () Bool)

(declare-fun tp!1144336 () Bool)

(declare-fun e!2318627 () Bool)

(assert (=> b!3749003 (= e!2318624 (and tp!1144336 (inv!53429 (tag!6963 (rule!8867 t!8579))) (inv!53432 (transformation!6103 (rule!8867 t!8579))) e!2318627))))

(declare-fun b!3749004 () Bool)

(declare-fun tp!1144327 () Bool)

(assert (=> b!3749004 (= e!2318634 (and tp!1144327 (inv!53429 (tag!6963 (h!45350 rules!4236))) (inv!53432 (transformation!6103 (h!45350 rules!4236))) e!2318635))))

(declare-fun b!3749005 () Bool)

(declare-fun res!1519576 () Bool)

(assert (=> b!3749005 (=> (not res!1519576) (not e!2318622))))

(declare-fun rulesProduceEachTokenIndividuallyList!1920 (LexerInterface!5692 List!40054 List!40053) Bool)

(assert (=> b!3749005 (= res!1519576 (rulesProduceEachTokenIndividuallyList!1920 thiss!27232 rules!4236 tokens!606))))

(assert (=> b!3749006 (= e!2318627 (and tp!1144335 tp!1144329))))

(declare-fun b!3749007 () Bool)

(declare-fun res!1519572 () Bool)

(assert (=> b!3749007 (=> (not res!1519572) (not e!2318622))))

(declare-fun rulesInvariant!5089 (LexerInterface!5692 List!40054) Bool)

(assert (=> b!3749007 (= res!1519572 (rulesInvariant!5089 thiss!27232 rules!4236))))

(declare-fun b!3749008 () Bool)

(declare-fun res!1519574 () Bool)

(assert (=> b!3749008 (=> (not res!1519574) (not e!2318622))))

(declare-fun contains!8155 (List!40053 Token!11344) Bool)

(assert (=> b!3749008 (= res!1519574 (contains!8155 tokens!606 t!8579))))

(assert (= (and start!351972 res!1519577) b!3749002))

(assert (= (and b!3749002 res!1519573) b!3749007))

(assert (= (and b!3749007 res!1519572) b!3749008))

(assert (= (and b!3749008 res!1519574) b!3749005))

(assert (= (and b!3749005 res!1519576) b!3748998))

(assert (= (and b!3748998 res!1519575) b!3749001))

(assert (= b!3749004 b!3749000))

(assert (= b!3748999 b!3749004))

(assert (= (and start!351972 (is-Cons!39930 rules!4236)) b!3748999))

(assert (= b!3748994 b!3748995))

(assert (= b!3748996 b!3748994))

(assert (= b!3748997 b!3748996))

(assert (= (and start!351972 (is-Cons!39929 tokens!606)) b!3748997))

(assert (= b!3749003 b!3749006))

(assert (= b!3748993 b!3749003))

(assert (= start!351972 b!3748993))

(declare-fun m!4240557 () Bool)

(assert (=> start!351972 m!4240557))

(declare-fun m!4240559 () Bool)

(assert (=> b!3749007 m!4240559))

(declare-fun m!4240561 () Bool)

(assert (=> b!3749003 m!4240561))

(declare-fun m!4240563 () Bool)

(assert (=> b!3749003 m!4240563))

(declare-fun m!4240565 () Bool)

(assert (=> b!3748993 m!4240565))

(declare-fun m!4240567 () Bool)

(assert (=> b!3749005 m!4240567))

(declare-fun m!4240569 () Bool)

(assert (=> b!3749008 m!4240569))

(declare-fun m!4240571 () Bool)

(assert (=> b!3749002 m!4240571))

(declare-fun m!4240573 () Bool)

(assert (=> b!3748997 m!4240573))

(declare-fun m!4240575 () Bool)

(assert (=> b!3749001 m!4240575))

(declare-fun m!4240577 () Bool)

(assert (=> b!3748994 m!4240577))

(declare-fun m!4240579 () Bool)

(assert (=> b!3748994 m!4240579))

(declare-fun m!4240581 () Bool)

(assert (=> b!3749004 m!4240581))

(declare-fun m!4240583 () Bool)

(assert (=> b!3749004 m!4240583))

(declare-fun m!4240585 () Bool)

(assert (=> b!3748996 m!4240585))

(push 1)

(assert (not b_next!100885))

(assert (not b!3748996))

(assert b_and!278441)

(assert (not b!3748994))

(assert (not b_next!100883))

(assert (not b!3749001))

(assert (not b!3748997))

(assert b_and!278437)

(assert (not b!3748999))

(assert (not start!351972))

(assert (not b_next!100879))

(assert (not b_next!100887))

(assert b_and!278435)

(assert (not b!3749002))

(assert (not b_next!100881))

(assert b_and!278439)

(assert (not b!3749005))

(assert b_and!278433)

(assert (not b!3748993))

(assert (not b_next!100877))

(assert (not b!3749003))

(assert (not b!3749007))

(assert (not b!3749008))

(assert (not b!3749004))

(assert b_and!278431)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!100885))

(assert b_and!278441)

(assert (not b_next!100883))

(assert b_and!278433)

(assert b_and!278437)

(assert (not b_next!100877))

(assert (not b_next!100879))

(assert (not b_next!100887))

(assert b_and!278431)

(assert b_and!278435)

(assert (not b_next!100881))

(assert b_and!278439)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1093786 () Bool)

(assert (=> d!1093786 (= (isEmpty!23527 rules!4236) (is-Nil!39930 rules!4236))))

(assert (=> b!3749002 d!1093786))

(declare-fun d!1093788 () Bool)

(assert (=> d!1093788 (= (inv!53429 (tag!6963 (rule!8867 t!8579))) (= (mod (str.len (value!194476 (tag!6963 (rule!8867 t!8579)))) 2) 0))))

(assert (=> b!3749003 d!1093788))

(declare-fun d!1093790 () Bool)

(declare-fun res!1519602 () Bool)

(declare-fun e!2318687 () Bool)

(assert (=> d!1093790 (=> (not res!1519602) (not e!2318687))))

(declare-fun semiInverseModEq!2611 (Int Int) Bool)

(assert (=> d!1093790 (= res!1519602 (semiInverseModEq!2611 (toChars!8310 (transformation!6103 (rule!8867 t!8579))) (toValue!8451 (transformation!6103 (rule!8867 t!8579)))))))

(assert (=> d!1093790 (= (inv!53432 (transformation!6103 (rule!8867 t!8579))) e!2318687)))

(declare-fun b!3749059 () Bool)

(declare-fun equivClasses!2510 (Int Int) Bool)

(assert (=> b!3749059 (= e!2318687 (equivClasses!2510 (toChars!8310 (transformation!6103 (rule!8867 t!8579))) (toValue!8451 (transformation!6103 (rule!8867 t!8579)))))))

(assert (= (and d!1093790 res!1519602) b!3749059))

(declare-fun m!4240617 () Bool)

(assert (=> d!1093790 m!4240617))

(declare-fun m!4240619 () Bool)

(assert (=> b!3749059 m!4240619))

(assert (=> b!3749003 d!1093790))

(declare-fun b!3749070 () Bool)

(declare-fun e!2318696 () Bool)

(declare-fun e!2318695 () Bool)

(assert (=> b!3749070 (= e!2318696 e!2318695)))

(declare-fun c!649095 () Bool)

(assert (=> b!3749070 (= c!649095 (is-IntegerValue!19000 (value!194502 t!8579)))))

(declare-fun b!3749072 () Bool)

(declare-fun inv!16 (TokenValue!6333) Bool)

(assert (=> b!3749072 (= e!2318696 (inv!16 (value!194502 t!8579)))))

(declare-fun b!3749073 () Bool)

(declare-fun e!2318694 () Bool)

(declare-fun inv!15 (TokenValue!6333) Bool)

(assert (=> b!3749073 (= e!2318694 (inv!15 (value!194502 t!8579)))))

(declare-fun b!3749074 () Bool)

(declare-fun inv!17 (TokenValue!6333) Bool)

(assert (=> b!3749074 (= e!2318695 (inv!17 (value!194502 t!8579)))))

(declare-fun b!3749071 () Bool)

(declare-fun res!1519605 () Bool)

(assert (=> b!3749071 (=> res!1519605 e!2318694)))

(assert (=> b!3749071 (= res!1519605 (not (is-IntegerValue!19001 (value!194502 t!8579))))))

(assert (=> b!3749071 (= e!2318695 e!2318694)))

(declare-fun d!1093792 () Bool)

(declare-fun c!649094 () Bool)

(assert (=> d!1093792 (= c!649094 (is-IntegerValue!18999 (value!194502 t!8579)))))

(assert (=> d!1093792 (= (inv!21 (value!194502 t!8579)) e!2318696)))

(assert (= (and d!1093792 c!649094) b!3749072))

(assert (= (and d!1093792 (not c!649094)) b!3749070))

(assert (= (and b!3749070 c!649095) b!3749074))

(assert (= (and b!3749070 (not c!649095)) b!3749071))

(assert (= (and b!3749071 (not res!1519605)) b!3749073))

(declare-fun m!4240621 () Bool)

(assert (=> b!3749072 m!4240621))

(declare-fun m!4240623 () Bool)

(assert (=> b!3749073 m!4240623))

(declare-fun m!4240625 () Bool)

(assert (=> b!3749074 m!4240625))

(assert (=> b!3748993 d!1093792))

(declare-fun d!1093794 () Bool)

(assert (=> d!1093794 (= (inv!53429 (tag!6963 (h!45350 rules!4236))) (= (mod (str.len (value!194476 (tag!6963 (h!45350 rules!4236)))) 2) 0))))

(assert (=> b!3749004 d!1093794))

(declare-fun d!1093796 () Bool)

(declare-fun res!1519606 () Bool)

(declare-fun e!2318697 () Bool)

(assert (=> d!1093796 (=> (not res!1519606) (not e!2318697))))

(assert (=> d!1093796 (= res!1519606 (semiInverseModEq!2611 (toChars!8310 (transformation!6103 (h!45350 rules!4236))) (toValue!8451 (transformation!6103 (h!45350 rules!4236)))))))

(assert (=> d!1093796 (= (inv!53432 (transformation!6103 (h!45350 rules!4236))) e!2318697)))

(declare-fun b!3749075 () Bool)

(assert (=> b!3749075 (= e!2318697 (equivClasses!2510 (toChars!8310 (transformation!6103 (h!45350 rules!4236))) (toValue!8451 (transformation!6103 (h!45350 rules!4236)))))))

(assert (= (and d!1093796 res!1519606) b!3749075))

(declare-fun m!4240627 () Bool)

(assert (=> d!1093796 m!4240627))

(declare-fun m!4240629 () Bool)

(assert (=> b!3749075 m!4240629))

(assert (=> b!3749004 d!1093796))

(declare-fun d!1093798 () Bool)

(declare-fun lt!1299715 () Bool)

(declare-fun e!2318719 () Bool)

(assert (=> d!1093798 (= lt!1299715 e!2318719)))

(declare-fun res!1519631 () Bool)

(assert (=> d!1093798 (=> (not res!1519631) (not e!2318719))))

(declare-datatypes ((IArray!24409 0))(
  ( (IArray!24410 (innerList!12262 List!40053)) )
))
(declare-datatypes ((Conc!12202 0))(
  ( (Node!12202 (left!30899 Conc!12202) (right!31229 Conc!12202) (csize!24634 Int) (cheight!12413 Int)) (Leaf!18938 (xs!15404 IArray!24409) (csize!24635 Int)) (Empty!12202) )
))
(declare-datatypes ((BalanceConc!24018 0))(
  ( (BalanceConc!24019 (c!649098 Conc!12202)) )
))
(declare-fun list!14704 (BalanceConc!24018) List!40053)

(declare-datatypes ((tuple2!39226 0))(
  ( (tuple2!39227 (_1!22747 BalanceConc!24018) (_2!22747 BalanceConc!24014)) )
))
(declare-fun lex!2637 (LexerInterface!5692 List!40054 BalanceConc!24014) tuple2!39226)

(declare-fun print!2177 (LexerInterface!5692 BalanceConc!24018) BalanceConc!24014)

(declare-fun singletonSeq!2619 (Token!11344) BalanceConc!24018)

(assert (=> d!1093798 (= res!1519631 (= (list!14704 (_1!22747 (lex!2637 thiss!27232 rules!4236 (print!2177 thiss!27232 (singletonSeq!2619 t!8579))))) (list!14704 (singletonSeq!2619 t!8579))))))

(declare-fun e!2318720 () Bool)

(assert (=> d!1093798 (= lt!1299715 e!2318720)))

(declare-fun res!1519630 () Bool)

(assert (=> d!1093798 (=> (not res!1519630) (not e!2318720))))

(declare-fun lt!1299714 () tuple2!39226)

(declare-fun size!30068 (BalanceConc!24018) Int)

(assert (=> d!1093798 (= res!1519630 (= (size!30068 (_1!22747 lt!1299714)) 1))))

(assert (=> d!1093798 (= lt!1299714 (lex!2637 thiss!27232 rules!4236 (print!2177 thiss!27232 (singletonSeq!2619 t!8579))))))

(assert (=> d!1093798 (not (isEmpty!23527 rules!4236))))

(assert (=> d!1093798 (= (rulesProduceIndividualToken!2608 thiss!27232 rules!4236 t!8579) lt!1299715)))

(declare-fun b!3749105 () Bool)

(declare-fun res!1519632 () Bool)

(assert (=> b!3749105 (=> (not res!1519632) (not e!2318720))))

(declare-fun apply!9411 (BalanceConc!24018 Int) Token!11344)

(assert (=> b!3749105 (= res!1519632 (= (apply!9411 (_1!22747 lt!1299714) 0) t!8579))))

(declare-fun b!3749106 () Bool)

(declare-fun isEmpty!23529 (BalanceConc!24014) Bool)

(assert (=> b!3749106 (= e!2318720 (isEmpty!23529 (_2!22747 lt!1299714)))))

(declare-fun b!3749107 () Bool)

(assert (=> b!3749107 (= e!2318719 (isEmpty!23529 (_2!22747 (lex!2637 thiss!27232 rules!4236 (print!2177 thiss!27232 (singletonSeq!2619 t!8579))))))))

(assert (= (and d!1093798 res!1519630) b!3749105))

(assert (= (and b!3749105 res!1519632) b!3749106))

(assert (= (and d!1093798 res!1519631) b!3749107))

(declare-fun m!4240665 () Bool)

(assert (=> d!1093798 m!4240665))

(assert (=> d!1093798 m!4240571))

(declare-fun m!4240667 () Bool)

(assert (=> d!1093798 m!4240667))

(declare-fun m!4240669 () Bool)

(assert (=> d!1093798 m!4240669))

(assert (=> d!1093798 m!4240667))

(assert (=> d!1093798 m!4240667))

(declare-fun m!4240671 () Bool)

(assert (=> d!1093798 m!4240671))

(declare-fun m!4240673 () Bool)

(assert (=> d!1093798 m!4240673))

(assert (=> d!1093798 m!4240671))

(declare-fun m!4240675 () Bool)

(assert (=> d!1093798 m!4240675))

(declare-fun m!4240677 () Bool)

(assert (=> b!3749105 m!4240677))

(declare-fun m!4240679 () Bool)

(assert (=> b!3749106 m!4240679))

(assert (=> b!3749107 m!4240667))

(assert (=> b!3749107 m!4240667))

(assert (=> b!3749107 m!4240671))

(assert (=> b!3749107 m!4240671))

(assert (=> b!3749107 m!4240675))

(declare-fun m!4240681 () Bool)

(assert (=> b!3749107 m!4240681))

(assert (=> b!3749001 d!1093798))

(declare-fun d!1093814 () Bool)

(declare-fun res!1519635 () Bool)

(declare-fun e!2318723 () Bool)

(assert (=> d!1093814 (=> (not res!1519635) (not e!2318723))))

(declare-fun rulesValid!2368 (LexerInterface!5692 List!40054) Bool)

(assert (=> d!1093814 (= res!1519635 (rulesValid!2368 thiss!27232 rules!4236))))

(assert (=> d!1093814 (= (rulesInvariant!5089 thiss!27232 rules!4236) e!2318723)))

(declare-fun b!3749110 () Bool)

(declare-datatypes ((List!40059 0))(
  ( (Nil!39935) (Cons!39935 (h!45355 String!45292) (t!302823 List!40059)) )
))
(declare-fun noDuplicateTag!2369 (LexerInterface!5692 List!40054 List!40059) Bool)

(assert (=> b!3749110 (= e!2318723 (noDuplicateTag!2369 thiss!27232 rules!4236 Nil!39935))))

(assert (= (and d!1093814 res!1519635) b!3749110))

(declare-fun m!4240683 () Bool)

(assert (=> d!1093814 m!4240683))

(declare-fun m!4240685 () Bool)

(assert (=> b!3749110 m!4240685))

(assert (=> b!3749007 d!1093814))

(declare-fun d!1093816 () Bool)

(declare-fun res!1519640 () Bool)

(declare-fun e!2318726 () Bool)

(assert (=> d!1093816 (=> (not res!1519640) (not e!2318726))))

(declare-fun isEmpty!23530 (List!40051) Bool)

(assert (=> d!1093816 (= res!1519640 (not (isEmpty!23530 (originalCharacters!6703 (h!45349 tokens!606)))))))

(assert (=> d!1093816 (= (inv!53433 (h!45349 tokens!606)) e!2318726)))

(declare-fun b!3749115 () Bool)

(declare-fun res!1519641 () Bool)

(assert (=> b!3749115 (=> (not res!1519641) (not e!2318726))))

(declare-fun list!14705 (BalanceConc!24014) List!40051)

(declare-fun dynLambda!17234 (Int TokenValue!6333) BalanceConc!24014)

(assert (=> b!3749115 (= res!1519641 (= (originalCharacters!6703 (h!45349 tokens!606)) (list!14705 (dynLambda!17234 (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606)))) (value!194502 (h!45349 tokens!606))))))))

(declare-fun b!3749116 () Bool)

(declare-fun size!30069 (List!40051) Int)

(assert (=> b!3749116 (= e!2318726 (= (size!30066 (h!45349 tokens!606)) (size!30069 (originalCharacters!6703 (h!45349 tokens!606)))))))

(assert (= (and d!1093816 res!1519640) b!3749115))

(assert (= (and b!3749115 res!1519641) b!3749116))

(declare-fun b_lambda!109887 () Bool)

(assert (=> (not b_lambda!109887) (not b!3749115)))

(declare-fun t!302800 () Bool)

(declare-fun tb!214449 () Bool)

(assert (=> (and b!3748995 (= (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606)))) (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606))))) t!302800) tb!214449))

(declare-fun b!3749121 () Bool)

(declare-fun e!2318729 () Bool)

(declare-fun tp!1144385 () Bool)

(declare-fun inv!53436 (Conc!12200) Bool)

(assert (=> b!3749121 (= e!2318729 (and (inv!53436 (c!649087 (dynLambda!17234 (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606)))) (value!194502 (h!45349 tokens!606))))) tp!1144385))))

(declare-fun result!261792 () Bool)

(declare-fun inv!53437 (BalanceConc!24014) Bool)

(assert (=> tb!214449 (= result!261792 (and (inv!53437 (dynLambda!17234 (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606)))) (value!194502 (h!45349 tokens!606)))) e!2318729))))

(assert (= tb!214449 b!3749121))

(declare-fun m!4240687 () Bool)

(assert (=> b!3749121 m!4240687))

(declare-fun m!4240689 () Bool)

(assert (=> tb!214449 m!4240689))

(assert (=> b!3749115 t!302800))

(declare-fun b_and!278467 () Bool)

(assert (= b_and!278433 (and (=> t!302800 result!261792) b_and!278467)))

(declare-fun tb!214451 () Bool)

(declare-fun t!302802 () Bool)

(assert (=> (and b!3749000 (= (toChars!8310 (transformation!6103 (h!45350 rules!4236))) (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606))))) t!302802) tb!214451))

(declare-fun result!261796 () Bool)

(assert (= result!261796 result!261792))

(assert (=> b!3749115 t!302802))

(declare-fun b_and!278469 () Bool)

(assert (= b_and!278437 (and (=> t!302802 result!261796) b_and!278469)))

(declare-fun tb!214453 () Bool)

(declare-fun t!302804 () Bool)

(assert (=> (and b!3749006 (= (toChars!8310 (transformation!6103 (rule!8867 t!8579))) (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606))))) t!302804) tb!214453))

(declare-fun result!261798 () Bool)

(assert (= result!261798 result!261792))

(assert (=> b!3749115 t!302804))

(declare-fun b_and!278471 () Bool)

(assert (= b_and!278441 (and (=> t!302804 result!261798) b_and!278471)))

(declare-fun m!4240691 () Bool)

(assert (=> d!1093816 m!4240691))

(declare-fun m!4240693 () Bool)

(assert (=> b!3749115 m!4240693))

(assert (=> b!3749115 m!4240693))

(declare-fun m!4240695 () Bool)

(assert (=> b!3749115 m!4240695))

(declare-fun m!4240697 () Bool)

(assert (=> b!3749116 m!4240697))

(assert (=> b!3748997 d!1093816))

(declare-fun d!1093818 () Bool)

(declare-fun lt!1299718 () Bool)

(declare-fun content!5856 (List!40053) (Set Token!11344))

(assert (=> d!1093818 (= lt!1299718 (set.member t!8579 (content!5856 tokens!606)))))

(declare-fun e!2318735 () Bool)

(assert (=> d!1093818 (= lt!1299718 e!2318735)))

(declare-fun res!1519647 () Bool)

(assert (=> d!1093818 (=> (not res!1519647) (not e!2318735))))

(assert (=> d!1093818 (= res!1519647 (is-Cons!39929 tokens!606))))

(assert (=> d!1093818 (= (contains!8155 tokens!606 t!8579) lt!1299718)))

(declare-fun b!3749126 () Bool)

(declare-fun e!2318734 () Bool)

(assert (=> b!3749126 (= e!2318735 e!2318734)))

(declare-fun res!1519646 () Bool)

(assert (=> b!3749126 (=> res!1519646 e!2318734)))

(assert (=> b!3749126 (= res!1519646 (= (h!45349 tokens!606) t!8579))))

(declare-fun b!3749127 () Bool)

(assert (=> b!3749127 (= e!2318734 (contains!8155 (t!302780 tokens!606) t!8579))))

(assert (= (and d!1093818 res!1519647) b!3749126))

(assert (= (and b!3749126 (not res!1519646)) b!3749127))

(declare-fun m!4240699 () Bool)

(assert (=> d!1093818 m!4240699))

(declare-fun m!4240701 () Bool)

(assert (=> d!1093818 m!4240701))

(declare-fun m!4240703 () Bool)

(assert (=> b!3749127 m!4240703))

(assert (=> b!3749008 d!1093818))

(declare-fun d!1093820 () Bool)

(declare-fun res!1519648 () Bool)

(declare-fun e!2318736 () Bool)

(assert (=> d!1093820 (=> (not res!1519648) (not e!2318736))))

(assert (=> d!1093820 (= res!1519648 (not (isEmpty!23530 (originalCharacters!6703 t!8579))))))

(assert (=> d!1093820 (= (inv!53433 t!8579) e!2318736)))

(declare-fun b!3749128 () Bool)

(declare-fun res!1519649 () Bool)

(assert (=> b!3749128 (=> (not res!1519649) (not e!2318736))))

(assert (=> b!3749128 (= res!1519649 (= (originalCharacters!6703 t!8579) (list!14705 (dynLambda!17234 (toChars!8310 (transformation!6103 (rule!8867 t!8579))) (value!194502 t!8579)))))))

(declare-fun b!3749129 () Bool)

(assert (=> b!3749129 (= e!2318736 (= (size!30066 t!8579) (size!30069 (originalCharacters!6703 t!8579))))))

(assert (= (and d!1093820 res!1519648) b!3749128))

(assert (= (and b!3749128 res!1519649) b!3749129))

(declare-fun b_lambda!109889 () Bool)

(assert (=> (not b_lambda!109889) (not b!3749128)))

(declare-fun tb!214455 () Bool)

(declare-fun t!302806 () Bool)

(assert (=> (and b!3748995 (= (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606)))) (toChars!8310 (transformation!6103 (rule!8867 t!8579)))) t!302806) tb!214455))

(declare-fun b!3749130 () Bool)

(declare-fun e!2318737 () Bool)

(declare-fun tp!1144386 () Bool)

(assert (=> b!3749130 (= e!2318737 (and (inv!53436 (c!649087 (dynLambda!17234 (toChars!8310 (transformation!6103 (rule!8867 t!8579))) (value!194502 t!8579)))) tp!1144386))))

(declare-fun result!261800 () Bool)

(assert (=> tb!214455 (= result!261800 (and (inv!53437 (dynLambda!17234 (toChars!8310 (transformation!6103 (rule!8867 t!8579))) (value!194502 t!8579))) e!2318737))))

(assert (= tb!214455 b!3749130))

(declare-fun m!4240705 () Bool)

(assert (=> b!3749130 m!4240705))

(declare-fun m!4240707 () Bool)

(assert (=> tb!214455 m!4240707))

(assert (=> b!3749128 t!302806))

(declare-fun b_and!278473 () Bool)

(assert (= b_and!278467 (and (=> t!302806 result!261800) b_and!278473)))

(declare-fun t!302808 () Bool)

(declare-fun tb!214457 () Bool)

(assert (=> (and b!3749000 (= (toChars!8310 (transformation!6103 (h!45350 rules!4236))) (toChars!8310 (transformation!6103 (rule!8867 t!8579)))) t!302808) tb!214457))

(declare-fun result!261802 () Bool)

(assert (= result!261802 result!261800))

(assert (=> b!3749128 t!302808))

(declare-fun b_and!278475 () Bool)

(assert (= b_and!278469 (and (=> t!302808 result!261802) b_and!278475)))

(declare-fun t!302810 () Bool)

(declare-fun tb!214459 () Bool)

(assert (=> (and b!3749006 (= (toChars!8310 (transformation!6103 (rule!8867 t!8579))) (toChars!8310 (transformation!6103 (rule!8867 t!8579)))) t!302810) tb!214459))

(declare-fun result!261804 () Bool)

(assert (= result!261804 result!261800))

(assert (=> b!3749128 t!302810))

(declare-fun b_and!278477 () Bool)

(assert (= b_and!278471 (and (=> t!302810 result!261804) b_and!278477)))

(declare-fun m!4240709 () Bool)

(assert (=> d!1093820 m!4240709))

(declare-fun m!4240711 () Bool)

(assert (=> b!3749128 m!4240711))

(assert (=> b!3749128 m!4240711))

(declare-fun m!4240713 () Bool)

(assert (=> b!3749128 m!4240713))

(declare-fun m!4240715 () Bool)

(assert (=> b!3749129 m!4240715))

(assert (=> start!351972 d!1093820))

(declare-fun d!1093822 () Bool)

(assert (=> d!1093822 (= (inv!53429 (tag!6963 (rule!8867 (h!45349 tokens!606)))) (= (mod (str.len (value!194476 (tag!6963 (rule!8867 (h!45349 tokens!606))))) 2) 0))))

(assert (=> b!3748994 d!1093822))

(declare-fun d!1093824 () Bool)

(declare-fun res!1519650 () Bool)

(declare-fun e!2318738 () Bool)

(assert (=> d!1093824 (=> (not res!1519650) (not e!2318738))))

(assert (=> d!1093824 (= res!1519650 (semiInverseModEq!2611 (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606)))) (toValue!8451 (transformation!6103 (rule!8867 (h!45349 tokens!606))))))))

(assert (=> d!1093824 (= (inv!53432 (transformation!6103 (rule!8867 (h!45349 tokens!606)))) e!2318738)))

(declare-fun b!3749131 () Bool)

(assert (=> b!3749131 (= e!2318738 (equivClasses!2510 (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606)))) (toValue!8451 (transformation!6103 (rule!8867 (h!45349 tokens!606))))))))

(assert (= (and d!1093824 res!1519650) b!3749131))

(declare-fun m!4240717 () Bool)

(assert (=> d!1093824 m!4240717))

(declare-fun m!4240719 () Bool)

(assert (=> b!3749131 m!4240719))

(assert (=> b!3748994 d!1093824))

(declare-fun b!3749152 () Bool)

(declare-fun e!2318757 () Bool)

(assert (=> b!3749152 (= e!2318757 true)))

(declare-fun b!3749151 () Bool)

(declare-fun e!2318756 () Bool)

(assert (=> b!3749151 (= e!2318756 e!2318757)))

(declare-fun b!3749150 () Bool)

(declare-fun e!2318755 () Bool)

(assert (=> b!3749150 (= e!2318755 e!2318756)))

(declare-fun d!1093826 () Bool)

(assert (=> d!1093826 e!2318755))

(assert (= b!3749151 b!3749152))

(assert (= b!3749150 b!3749151))

(assert (= (and d!1093826 (is-Cons!39930 rules!4236)) b!3749150))

(declare-fun lambda!125190 () Int)

(declare-fun order!21775 () Int)

(declare-fun order!21777 () Int)

(declare-fun dynLambda!17235 (Int Int) Int)

(declare-fun dynLambda!17236 (Int Int) Int)

(assert (=> b!3749152 (< (dynLambda!17235 order!21775 (toValue!8451 (transformation!6103 (h!45350 rules!4236)))) (dynLambda!17236 order!21777 lambda!125190))))

(declare-fun order!21779 () Int)

(declare-fun dynLambda!17237 (Int Int) Int)

(assert (=> b!3749152 (< (dynLambda!17237 order!21779 (toChars!8310 (transformation!6103 (h!45350 rules!4236)))) (dynLambda!17236 order!21777 lambda!125190))))

(assert (=> d!1093826 true))

(declare-fun lt!1299723 () Bool)

(declare-fun forall!8193 (List!40053 Int) Bool)

(assert (=> d!1093826 (= lt!1299723 (forall!8193 tokens!606 lambda!125190))))

(declare-fun e!2318748 () Bool)

(assert (=> d!1093826 (= lt!1299723 e!2318748)))

(declare-fun res!1519659 () Bool)

(assert (=> d!1093826 (=> res!1519659 e!2318748)))

(assert (=> d!1093826 (= res!1519659 (not (is-Cons!39929 tokens!606)))))

(assert (=> d!1093826 (not (isEmpty!23527 rules!4236))))

(assert (=> d!1093826 (= (rulesProduceEachTokenIndividuallyList!1920 thiss!27232 rules!4236 tokens!606) lt!1299723)))

(declare-fun b!3749140 () Bool)

(declare-fun e!2318747 () Bool)

(assert (=> b!3749140 (= e!2318748 e!2318747)))

(declare-fun res!1519660 () Bool)

(assert (=> b!3749140 (=> (not res!1519660) (not e!2318747))))

(assert (=> b!3749140 (= res!1519660 (rulesProduceIndividualToken!2608 thiss!27232 rules!4236 (h!45349 tokens!606)))))

(declare-fun b!3749141 () Bool)

(assert (=> b!3749141 (= e!2318747 (rulesProduceEachTokenIndividuallyList!1920 thiss!27232 rules!4236 (t!302780 tokens!606)))))

(assert (= (and d!1093826 (not res!1519659)) b!3749140))

(assert (= (and b!3749140 res!1519660) b!3749141))

(declare-fun m!4240721 () Bool)

(assert (=> d!1093826 m!4240721))

(assert (=> d!1093826 m!4240571))

(declare-fun m!4240723 () Bool)

(assert (=> b!3749140 m!4240723))

(declare-fun m!4240725 () Bool)

(assert (=> b!3749141 m!4240725))

(assert (=> b!3749005 d!1093826))

(declare-fun b!3749155 () Bool)

(declare-fun e!2318760 () Bool)

(declare-fun e!2318759 () Bool)

(assert (=> b!3749155 (= e!2318760 e!2318759)))

(declare-fun c!649097 () Bool)

(assert (=> b!3749155 (= c!649097 (is-IntegerValue!19000 (value!194502 (h!45349 tokens!606))))))

(declare-fun b!3749157 () Bool)

(assert (=> b!3749157 (= e!2318760 (inv!16 (value!194502 (h!45349 tokens!606))))))

(declare-fun b!3749158 () Bool)

(declare-fun e!2318758 () Bool)

(assert (=> b!3749158 (= e!2318758 (inv!15 (value!194502 (h!45349 tokens!606))))))

(declare-fun b!3749159 () Bool)

(assert (=> b!3749159 (= e!2318759 (inv!17 (value!194502 (h!45349 tokens!606))))))

(declare-fun b!3749156 () Bool)

(declare-fun res!1519661 () Bool)

(assert (=> b!3749156 (=> res!1519661 e!2318758)))

(assert (=> b!3749156 (= res!1519661 (not (is-IntegerValue!19001 (value!194502 (h!45349 tokens!606)))))))

(assert (=> b!3749156 (= e!2318759 e!2318758)))

(declare-fun d!1093828 () Bool)

(declare-fun c!649096 () Bool)

(assert (=> d!1093828 (= c!649096 (is-IntegerValue!18999 (value!194502 (h!45349 tokens!606))))))

(assert (=> d!1093828 (= (inv!21 (value!194502 (h!45349 tokens!606))) e!2318760)))

(assert (= (and d!1093828 c!649096) b!3749157))

(assert (= (and d!1093828 (not c!649096)) b!3749155))

(assert (= (and b!3749155 c!649097) b!3749159))

(assert (= (and b!3749155 (not c!649097)) b!3749156))

(assert (= (and b!3749156 (not res!1519661)) b!3749158))

(declare-fun m!4240727 () Bool)

(assert (=> b!3749157 m!4240727))

(declare-fun m!4240729 () Bool)

(assert (=> b!3749158 m!4240729))

(declare-fun m!4240731 () Bool)

(assert (=> b!3749159 m!4240731))

(assert (=> b!3748996 d!1093828))

(declare-fun b!3749173 () Bool)

(declare-fun b_free!100197 () Bool)

(declare-fun b_next!100901 () Bool)

(assert (=> b!3749173 (= b_free!100197 (not b_next!100901))))

(declare-fun tp!1144399 () Bool)

(declare-fun b_and!278479 () Bool)

(assert (=> b!3749173 (= tp!1144399 b_and!278479)))

(declare-fun b_free!100199 () Bool)

(declare-fun b_next!100903 () Bool)

(assert (=> b!3749173 (= b_free!100199 (not b_next!100903))))

(declare-fun t!302816 () Bool)

(declare-fun tb!214461 () Bool)

(assert (=> (and b!3749173 (= (toChars!8310 (transformation!6103 (rule!8867 (h!45349 (t!302780 tokens!606))))) (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606))))) t!302816) tb!214461))

(declare-fun result!261808 () Bool)

(assert (= result!261808 result!261792))

(assert (=> b!3749115 t!302816))

(declare-fun t!302818 () Bool)

(declare-fun tb!214463 () Bool)

(assert (=> (and b!3749173 (= (toChars!8310 (transformation!6103 (rule!8867 (h!45349 (t!302780 tokens!606))))) (toChars!8310 (transformation!6103 (rule!8867 t!8579)))) t!302818) tb!214463))

(declare-fun result!261810 () Bool)

(assert (= result!261810 result!261800))

(assert (=> b!3749128 t!302818))

(declare-fun b_and!278481 () Bool)

(declare-fun tp!1144398 () Bool)

(assert (=> b!3749173 (= tp!1144398 (and (=> t!302816 result!261808) (=> t!302818 result!261810) b_and!278481))))

(declare-fun e!2318776 () Bool)

(assert (=> b!3749173 (= e!2318776 (and tp!1144399 tp!1144398))))

(declare-fun b!3749171 () Bool)

(declare-fun e!2318777 () Bool)

(declare-fun e!2318774 () Bool)

(declare-fun tp!1144400 () Bool)

(assert (=> b!3749171 (= e!2318774 (and (inv!21 (value!194502 (h!45349 (t!302780 tokens!606)))) e!2318777 tp!1144400))))

(declare-fun tp!1144401 () Bool)

(declare-fun b!3749172 () Bool)

(assert (=> b!3749172 (= e!2318777 (and tp!1144401 (inv!53429 (tag!6963 (rule!8867 (h!45349 (t!302780 tokens!606))))) (inv!53432 (transformation!6103 (rule!8867 (h!45349 (t!302780 tokens!606))))) e!2318776))))

(declare-fun e!2318778 () Bool)

(assert (=> b!3748997 (= tp!1144328 e!2318778)))

(declare-fun tp!1144397 () Bool)

(declare-fun b!3749170 () Bool)

(assert (=> b!3749170 (= e!2318778 (and (inv!53433 (h!45349 (t!302780 tokens!606))) e!2318774 tp!1144397))))

(assert (= b!3749172 b!3749173))

(assert (= b!3749171 b!3749172))

(assert (= b!3749170 b!3749171))

(assert (= (and b!3748997 (is-Cons!39929 (t!302780 tokens!606))) b!3749170))

(declare-fun m!4240733 () Bool)

(assert (=> b!3749171 m!4240733))

(declare-fun m!4240735 () Bool)

(assert (=> b!3749172 m!4240735))

(declare-fun m!4240737 () Bool)

(assert (=> b!3749172 m!4240737))

(declare-fun m!4240739 () Bool)

(assert (=> b!3749170 m!4240739))

(declare-fun b!3749187 () Bool)

(declare-fun e!2318781 () Bool)

(declare-fun tp!1144415 () Bool)

(declare-fun tp!1144416 () Bool)

(assert (=> b!3749187 (= e!2318781 (and tp!1144415 tp!1144416))))

(declare-fun b!3749185 () Bool)

(declare-fun tp!1144414 () Bool)

(declare-fun tp!1144413 () Bool)

(assert (=> b!3749185 (= e!2318781 (and tp!1144414 tp!1144413))))

(declare-fun b!3749184 () Bool)

(declare-fun tp_is_empty!19015 () Bool)

(assert (=> b!3749184 (= e!2318781 tp_is_empty!19015)))

(assert (=> b!3749003 (= tp!1144336 e!2318781)))

(declare-fun b!3749186 () Bool)

(declare-fun tp!1144412 () Bool)

(assert (=> b!3749186 (= e!2318781 tp!1144412)))

(assert (= (and b!3749003 (is-ElementMatch!11008 (regex!6103 (rule!8867 t!8579)))) b!3749184))

(assert (= (and b!3749003 (is-Concat!17341 (regex!6103 (rule!8867 t!8579)))) b!3749185))

(assert (= (and b!3749003 (is-Star!11008 (regex!6103 (rule!8867 t!8579)))) b!3749186))

(assert (= (and b!3749003 (is-Union!11008 (regex!6103 (rule!8867 t!8579)))) b!3749187))

(declare-fun b!3749192 () Bool)

(declare-fun e!2318784 () Bool)

(declare-fun tp!1144419 () Bool)

(assert (=> b!3749192 (= e!2318784 (and tp_is_empty!19015 tp!1144419))))

(assert (=> b!3748993 (= tp!1144330 e!2318784)))

(assert (= (and b!3748993 (is-Cons!39927 (originalCharacters!6703 t!8579))) b!3749192))

(declare-fun b!3749196 () Bool)

(declare-fun e!2318785 () Bool)

(declare-fun tp!1144423 () Bool)

(declare-fun tp!1144424 () Bool)

(assert (=> b!3749196 (= e!2318785 (and tp!1144423 tp!1144424))))

(declare-fun b!3749194 () Bool)

(declare-fun tp!1144422 () Bool)

(declare-fun tp!1144421 () Bool)

(assert (=> b!3749194 (= e!2318785 (and tp!1144422 tp!1144421))))

(declare-fun b!3749193 () Bool)

(assert (=> b!3749193 (= e!2318785 tp_is_empty!19015)))

(assert (=> b!3749004 (= tp!1144327 e!2318785)))

(declare-fun b!3749195 () Bool)

(declare-fun tp!1144420 () Bool)

(assert (=> b!3749195 (= e!2318785 tp!1144420)))

(assert (= (and b!3749004 (is-ElementMatch!11008 (regex!6103 (h!45350 rules!4236)))) b!3749193))

(assert (= (and b!3749004 (is-Concat!17341 (regex!6103 (h!45350 rules!4236)))) b!3749194))

(assert (= (and b!3749004 (is-Star!11008 (regex!6103 (h!45350 rules!4236)))) b!3749195))

(assert (= (and b!3749004 (is-Union!11008 (regex!6103 (h!45350 rules!4236)))) b!3749196))

(declare-fun b!3749207 () Bool)

(declare-fun b_free!100201 () Bool)

(declare-fun b_next!100905 () Bool)

(assert (=> b!3749207 (= b_free!100201 (not b_next!100905))))

(declare-fun tp!1144434 () Bool)

(declare-fun b_and!278483 () Bool)

(assert (=> b!3749207 (= tp!1144434 b_and!278483)))

(declare-fun b_free!100203 () Bool)

(declare-fun b_next!100907 () Bool)

(assert (=> b!3749207 (= b_free!100203 (not b_next!100907))))

(declare-fun t!302820 () Bool)

(declare-fun tb!214465 () Bool)

(assert (=> (and b!3749207 (= (toChars!8310 (transformation!6103 (h!45350 (t!302781 rules!4236)))) (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606))))) t!302820) tb!214465))

(declare-fun result!261818 () Bool)

(assert (= result!261818 result!261792))

(assert (=> b!3749115 t!302820))

(declare-fun t!302822 () Bool)

(declare-fun tb!214467 () Bool)

(assert (=> (and b!3749207 (= (toChars!8310 (transformation!6103 (h!45350 (t!302781 rules!4236)))) (toChars!8310 (transformation!6103 (rule!8867 t!8579)))) t!302822) tb!214467))

(declare-fun result!261820 () Bool)

(assert (= result!261820 result!261800))

(assert (=> b!3749128 t!302822))

(declare-fun b_and!278485 () Bool)

(declare-fun tp!1144436 () Bool)

(assert (=> b!3749207 (= tp!1144436 (and (=> t!302820 result!261818) (=> t!302822 result!261820) b_and!278485))))

(declare-fun e!2318797 () Bool)

(assert (=> b!3749207 (= e!2318797 (and tp!1144434 tp!1144436))))

(declare-fun tp!1144433 () Bool)

(declare-fun b!3749206 () Bool)

(declare-fun e!2318796 () Bool)

(assert (=> b!3749206 (= e!2318796 (and tp!1144433 (inv!53429 (tag!6963 (h!45350 (t!302781 rules!4236)))) (inv!53432 (transformation!6103 (h!45350 (t!302781 rules!4236)))) e!2318797))))

(declare-fun b!3749205 () Bool)

(declare-fun e!2318795 () Bool)

(declare-fun tp!1144435 () Bool)

(assert (=> b!3749205 (= e!2318795 (and e!2318796 tp!1144435))))

(assert (=> b!3748999 (= tp!1144334 e!2318795)))

(assert (= b!3749206 b!3749207))

(assert (= b!3749205 b!3749206))

(assert (= (and b!3748999 (is-Cons!39930 (t!302781 rules!4236))) b!3749205))

(declare-fun m!4240741 () Bool)

(assert (=> b!3749206 m!4240741))

(declare-fun m!4240743 () Bool)

(assert (=> b!3749206 m!4240743))

(declare-fun b!3749211 () Bool)

(declare-fun e!2318798 () Bool)

(declare-fun tp!1144440 () Bool)

(declare-fun tp!1144441 () Bool)

(assert (=> b!3749211 (= e!2318798 (and tp!1144440 tp!1144441))))

(declare-fun b!3749209 () Bool)

(declare-fun tp!1144439 () Bool)

(declare-fun tp!1144438 () Bool)

(assert (=> b!3749209 (= e!2318798 (and tp!1144439 tp!1144438))))

(declare-fun b!3749208 () Bool)

(assert (=> b!3749208 (= e!2318798 tp_is_empty!19015)))

(assert (=> b!3748994 (= tp!1144337 e!2318798)))

(declare-fun b!3749210 () Bool)

(declare-fun tp!1144437 () Bool)

(assert (=> b!3749210 (= e!2318798 tp!1144437)))

(assert (= (and b!3748994 (is-ElementMatch!11008 (regex!6103 (rule!8867 (h!45349 tokens!606))))) b!3749208))

(assert (= (and b!3748994 (is-Concat!17341 (regex!6103 (rule!8867 (h!45349 tokens!606))))) b!3749209))

(assert (= (and b!3748994 (is-Star!11008 (regex!6103 (rule!8867 (h!45349 tokens!606))))) b!3749210))

(assert (= (and b!3748994 (is-Union!11008 (regex!6103 (rule!8867 (h!45349 tokens!606))))) b!3749211))

(declare-fun b!3749212 () Bool)

(declare-fun e!2318799 () Bool)

(declare-fun tp!1144442 () Bool)

(assert (=> b!3749212 (= e!2318799 (and tp_is_empty!19015 tp!1144442))))

(assert (=> b!3748996 (= tp!1144331 e!2318799)))

(assert (= (and b!3748996 (is-Cons!39927 (originalCharacters!6703 (h!45349 tokens!606)))) b!3749212))

(declare-fun b_lambda!109891 () Bool)

(assert (= b_lambda!109889 (or (and b!3748995 b_free!100175 (= (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606)))) (toChars!8310 (transformation!6103 (rule!8867 t!8579))))) (and b!3749006 b_free!100183) (and b!3749000 b_free!100179 (= (toChars!8310 (transformation!6103 (h!45350 rules!4236))) (toChars!8310 (transformation!6103 (rule!8867 t!8579))))) (and b!3749173 b_free!100199 (= (toChars!8310 (transformation!6103 (rule!8867 (h!45349 (t!302780 tokens!606))))) (toChars!8310 (transformation!6103 (rule!8867 t!8579))))) (and b!3749207 b_free!100203 (= (toChars!8310 (transformation!6103 (h!45350 (t!302781 rules!4236)))) (toChars!8310 (transformation!6103 (rule!8867 t!8579))))) b_lambda!109891)))

(declare-fun b_lambda!109893 () Bool)

(assert (= b_lambda!109887 (or (and b!3749207 b_free!100203 (= (toChars!8310 (transformation!6103 (h!45350 (t!302781 rules!4236)))) (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606)))))) (and b!3749000 b_free!100179 (= (toChars!8310 (transformation!6103 (h!45350 rules!4236))) (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606)))))) (and b!3749173 b_free!100199 (= (toChars!8310 (transformation!6103 (rule!8867 (h!45349 (t!302780 tokens!606))))) (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606)))))) (and b!3749006 b_free!100183 (= (toChars!8310 (transformation!6103 (rule!8867 t!8579))) (toChars!8310 (transformation!6103 (rule!8867 (h!45349 tokens!606)))))) (and b!3748995 b_free!100175) b_lambda!109893)))

(push 1)

(assert (not b!3749209))

(assert (not b!3749159))

(assert (not b!3749150))

(assert (not b_next!100903))

(assert (not b_next!100877))

(assert (not b!3749116))

(assert (not b!3749194))

(assert (not b!3749210))

(assert (not b_next!100881))

(assert b_and!278439)

(assert (not b!3749115))

(assert (not d!1093818))

(assert (not tb!214449))

(assert (not b!3749107))

(assert (not b!3749110))

(assert (not b_lambda!109891))

(assert (not b!3749158))

(assert (not b_next!100885))

(assert (not b_lambda!109893))

(assert (not d!1093826))

(assert (not b!3749186))

(assert (not d!1093816))

(assert (not b!3749141))

(assert (not d!1093790))

(assert tp_is_empty!19015)

(assert (not b!3749059))

(assert (not b!3749127))

(assert (not b_next!100883))

(assert (not b_next!100907))

(assert (not b!3749157))

(assert (not d!1093820))

(assert b_and!278473)

(assert (not d!1093796))

(assert b_and!278481)

(assert (not b!3749072))

(assert (not b!3749128))

(assert (not b_next!100901))

(assert b_and!278479)

(assert (not b!3749192))

(assert (not tb!214455))

(assert (not b!3749131))

(assert (not b!3749170))

(assert (not b!3749130))

(assert (not b!3749105))

(assert (not b!3749195))

(assert (not b!3749075))

(assert (not b!3749205))

(assert (not b!3749172))

(assert (not b!3749185))

(assert b_and!278485)

(assert (not b!3749211))

(assert (not b!3749140))

(assert (not d!1093798))

(assert (not b!3749106))

(assert (not b!3749212))

(assert (not b!3749187))

(assert (not b!3749074))

(assert b_and!278477)

(assert (not d!1093824))

(assert b_and!278483)

(assert b_and!278475)

(assert (not b_next!100879))

(assert (not b_next!100887))

(assert (not d!1093814))

(assert (not b!3749121))

(assert (not b_next!100905))

(assert (not b!3749171))

(assert (not b!3749196))

(assert b_and!278431)

(assert (not b!3749129))

(assert (not b!3749206))

(assert b_and!278435)

(assert (not b!3749073))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!100885))

(assert b_and!278473)

(assert (not b_next!100903))

(assert b_and!278479)

(assert b_and!278485)

(assert (not b_next!100877))

(assert (not b_next!100887))

(assert (not b_next!100905))

(assert b_and!278431)

(assert b_and!278435)

(assert (not b_next!100881))

(assert b_and!278439)

(assert (not b_next!100883))

(assert (not b_next!100907))

(assert b_and!278481)

(assert (not b_next!100901))

(assert b_and!278477)

(assert b_and!278483)

(assert b_and!278475)

(assert (not b_next!100879))

(check-sat)

(pop 1)

