; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137156 () Bool)

(assert start!137156)

(declare-fun b!1466439 () Bool)

(declare-fun b_free!36655 () Bool)

(declare-fun b_next!37359 () Bool)

(assert (=> b!1466439 (= b_free!36655 (not b_next!37359))))

(declare-fun tp!412426 () Bool)

(declare-fun b_and!100129 () Bool)

(assert (=> b!1466439 (= tp!412426 b_and!100129)))

(declare-fun b_free!36657 () Bool)

(declare-fun b_next!37361 () Bool)

(assert (=> b!1466439 (= b_free!36657 (not b_next!37361))))

(declare-fun tp!412419 () Bool)

(declare-fun b_and!100131 () Bool)

(assert (=> b!1466439 (= tp!412419 b_and!100131)))

(declare-fun b!1466436 () Bool)

(declare-fun b_free!36659 () Bool)

(declare-fun b_next!37363 () Bool)

(assert (=> b!1466436 (= b_free!36659 (not b_next!37363))))

(declare-fun tp!412422 () Bool)

(declare-fun b_and!100133 () Bool)

(assert (=> b!1466436 (= tp!412422 b_and!100133)))

(declare-fun b_free!36661 () Bool)

(declare-fun b_next!37365 () Bool)

(assert (=> b!1466436 (= b_free!36661 (not b_next!37365))))

(declare-fun tp!412424 () Bool)

(declare-fun b_and!100135 () Bool)

(assert (=> b!1466436 (= tp!412424 b_and!100135)))

(declare-fun b!1466427 () Bool)

(declare-fun res!663845 () Bool)

(declare-fun e!935647 () Bool)

(assert (=> b!1466427 (=> (not res!663845) (not e!935647))))

(declare-datatypes ((List!15308 0))(
  ( (Nil!15242) (Cons!15242 (h!20643 (_ BitVec 16)) (t!135007 List!15308)) )
))
(declare-datatypes ((TokenValue!2780 0))(
  ( (FloatLiteralValue!5560 (text!19905 List!15308)) (TokenValueExt!2779 (__x!9350 Int)) (Broken!13900 (value!86288 List!15308)) (Object!2845) (End!2780) (Def!2780) (Underscore!2780) (Match!2780) (Else!2780) (Error!2780) (Case!2780) (If!2780) (Extends!2780) (Abstract!2780) (Class!2780) (Val!2780) (DelimiterValue!5560 (del!2840 List!15308)) (KeywordValue!2786 (value!86289 List!15308)) (CommentValue!5560 (value!86290 List!15308)) (WhitespaceValue!5560 (value!86291 List!15308)) (IndentationValue!2780 (value!86292 List!15308)) (String!18157) (Int32!2780) (Broken!13901 (value!86293 List!15308)) (Boolean!2781) (Unit!25023) (OperatorValue!2783 (op!2840 List!15308)) (IdentifierValue!5560 (value!86294 List!15308)) (IdentifierValue!5561 (value!86295 List!15308)) (WhitespaceValue!5561 (value!86296 List!15308)) (True!5560) (False!5560) (Broken!13902 (value!86297 List!15308)) (Broken!13903 (value!86298 List!15308)) (True!5561) (RightBrace!2780) (RightBracket!2780) (Colon!2780) (Null!2780) (Comma!2780) (LeftBracket!2780) (False!5561) (LeftBrace!2780) (ImaginaryLiteralValue!2780 (text!19906 List!15308)) (StringLiteralValue!8340 (value!86299 List!15308)) (EOFValue!2780 (value!86300 List!15308)) (IdentValue!2780 (value!86301 List!15308)) (DelimiterValue!5561 (value!86302 List!15308)) (DedentValue!2780 (value!86303 List!15308)) (NewLineValue!2780 (value!86304 List!15308)) (IntegerValue!8340 (value!86305 (_ BitVec 32)) (text!19907 List!15308)) (IntegerValue!8341 (value!86306 Int) (text!19908 List!15308)) (Times!2780) (Or!2780) (Equal!2780) (Minus!2780) (Broken!13904 (value!86307 List!15308)) (And!2780) (Div!2780) (LessEqual!2780) (Mod!2780) (Concat!6784) (Not!2780) (Plus!2780) (SpaceValue!2780 (value!86308 List!15308)) (IntegerValue!8342 (value!86309 Int) (text!19909 List!15308)) (StringLiteralValue!8341 (text!19910 List!15308)) (FloatLiteralValue!5561 (text!19911 List!15308)) (BytesLiteralValue!2780 (value!86310 List!15308)) (CommentValue!5561 (value!86311 List!15308)) (StringLiteralValue!8342 (value!86312 List!15308)) (ErrorTokenValue!2780 (msg!2841 List!15308)) )
))
(declare-datatypes ((C!8186 0))(
  ( (C!8187 (val!4663 Int)) )
))
(declare-datatypes ((List!15309 0))(
  ( (Nil!15243) (Cons!15243 (h!20644 C!8186) (t!135008 List!15309)) )
))
(declare-datatypes ((IArray!10397 0))(
  ( (IArray!10398 (innerList!5256 List!15309)) )
))
(declare-datatypes ((Conc!5196 0))(
  ( (Node!5196 (left!12940 Conc!5196) (right!13270 Conc!5196) (csize!10622 Int) (cheight!5407 Int)) (Leaf!7743 (xs!7951 IArray!10397) (csize!10623 Int)) (Empty!5196) )
))
(declare-datatypes ((BalanceConc!10332 0))(
  ( (BalanceConc!10333 (c!241746 Conc!5196)) )
))
(declare-datatypes ((TokenValueInjection!5220 0))(
  ( (TokenValueInjection!5221 (toValue!4001 Int) (toChars!3860 Int)) )
))
(declare-datatypes ((String!18158 0))(
  ( (String!18159 (value!86313 String)) )
))
(declare-datatypes ((Regex!4004 0))(
  ( (ElementMatch!4004 (c!241747 C!8186)) (Concat!6785 (regOne!8520 Regex!4004) (regTwo!8520 Regex!4004)) (EmptyExpr!4004) (Star!4004 (reg!4333 Regex!4004)) (EmptyLang!4004) (Union!4004 (regOne!8521 Regex!4004) (regTwo!8521 Regex!4004)) )
))
(declare-datatypes ((Rule!5180 0))(
  ( (Rule!5181 (regex!2690 Regex!4004) (tag!2954 String!18158) (isSeparator!2690 Bool) (transformation!2690 TokenValueInjection!5220)) )
))
(declare-datatypes ((Token!5042 0))(
  ( (Token!5043 (value!86314 TokenValue!2780) (rule!4467 Rule!5180) (size!12456 Int) (originalCharacters!3552 List!15309)) )
))
(declare-datatypes ((List!15310 0))(
  ( (Nil!15244) (Cons!15244 (h!20645 Token!5042) (t!135009 List!15310)) )
))
(declare-fun tokens1!47 () List!15310)

(declare-fun isEmpty!9576 (List!15310) Bool)

(assert (=> b!1466427 (= res!663845 (not (isEmpty!9576 (t!135009 tokens1!47))))))

(declare-fun e!935654 () Bool)

(declare-fun tokens2!49 () List!15310)

(declare-fun b!1466428 () Bool)

(declare-fun e!935648 () Bool)

(declare-fun tp!412417 () Bool)

(declare-fun inv!21 (TokenValue!2780) Bool)

(assert (=> b!1466428 (= e!935648 (and (inv!21 (value!86314 (h!20645 tokens2!49))) e!935654 tp!412417))))

(declare-fun e!935649 () Bool)

(declare-fun tp!412425 () Bool)

(declare-fun b!1466429 () Bool)

(declare-fun inv!20376 (String!18158) Bool)

(declare-fun inv!20379 (TokenValueInjection!5220) Bool)

(assert (=> b!1466429 (= e!935654 (and tp!412425 (inv!20376 (tag!2954 (rule!4467 (h!20645 tokens2!49)))) (inv!20379 (transformation!2690 (rule!4467 (h!20645 tokens2!49)))) e!935649))))

(declare-fun e!935643 () Bool)

(declare-fun b!1466430 () Bool)

(declare-fun e!935645 () Bool)

(declare-fun tp!412423 () Bool)

(declare-fun inv!20380 (Token!5042) Bool)

(assert (=> b!1466430 (= e!935643 (and (inv!20380 (h!20645 tokens1!47)) e!935645 tp!412423))))

(declare-fun e!935641 () Bool)

(declare-fun tp!412421 () Bool)

(declare-fun b!1466431 () Bool)

(declare-fun e!935652 () Bool)

(assert (=> b!1466431 (= e!935641 (and tp!412421 (inv!20376 (tag!2954 (rule!4467 (h!20645 tokens1!47)))) (inv!20379 (transformation!2690 (rule!4467 (h!20645 tokens1!47)))) e!935652))))

(declare-fun lt!510609 () List!15309)

(declare-fun lt!510610 () List!15310)

(declare-datatypes ((LexerInterface!2346 0))(
  ( (LexerInterfaceExt!2343 (__x!9351 Int)) (Lexer!2344) )
))
(declare-fun thiss!20360 () LexerInterface!2346)

(declare-fun b!1466432 () Bool)

(declare-fun e!935646 () Bool)

(declare-fun ++!4132 (List!15309 List!15309) List!15309)

(declare-fun list!6112 (BalanceConc!10332) List!15309)

(declare-fun charsOf!1549 (Token!5042) BalanceConc!10332)

(declare-fun printList!740 (LexerInterface!2346 List!15310) List!15309)

(assert (=> b!1466432 (= e!935646 (= lt!510609 (++!4132 (list!6112 (charsOf!1549 (h!20645 lt!510610))) (printList!740 thiss!20360 (t!135009 lt!510610)))))))

(declare-fun b!1466433 () Bool)

(assert (=> b!1466433 (= e!935647 (not true))))

(assert (=> b!1466433 e!935646))

(declare-fun c!241745 () Bool)

(assert (=> b!1466433 (= c!241745 (is-Cons!15244 lt!510610))))

(assert (=> b!1466433 (= lt!510609 (printList!740 thiss!20360 lt!510610))))

(declare-fun ++!4133 (List!15310 List!15310) List!15310)

(assert (=> b!1466433 (= lt!510610 (++!4133 tokens1!47 tokens2!49))))

(declare-fun e!935644 () Bool)

(assert (=> b!1466433 e!935644))

(declare-fun res!663846 () Bool)

(assert (=> b!1466433 (=> (not res!663846) (not e!935644))))

(declare-fun lt!510606 () List!15309)

(declare-fun lt!510608 () List!15310)

(assert (=> b!1466433 (= res!663846 (= (printList!740 thiss!20360 lt!510608) (++!4132 lt!510606 (printList!740 thiss!20360 tokens2!49))))))

(assert (=> b!1466433 (= lt!510606 (printList!740 thiss!20360 (t!135009 tokens1!47)))))

(assert (=> b!1466433 (= lt!510608 (++!4133 (t!135009 tokens1!47) tokens2!49))))

(declare-datatypes ((Unit!25024 0))(
  ( (Unit!25025) )
))
(declare-fun lt!510607 () Unit!25024)

(declare-fun lemmaPrintConcatSameAsConcatPrint!85 (LexerInterface!2346 List!15310 List!15310) Unit!25024)

(assert (=> b!1466433 (= lt!510607 (lemmaPrintConcatSameAsConcatPrint!85 thiss!20360 (t!135009 tokens1!47) tokens2!49))))

(declare-fun res!663844 () Bool)

(assert (=> start!137156 (=> (not res!663844) (not e!935647))))

(assert (=> start!137156 (= res!663844 (and (is-Lexer!2344 thiss!20360) (is-Cons!15244 tokens1!47)))))

(assert (=> start!137156 e!935647))

(assert (=> start!137156 true))

(assert (=> start!137156 e!935643))

(declare-fun e!935642 () Bool)

(assert (=> start!137156 e!935642))

(declare-fun tp!412420 () Bool)

(declare-fun b!1466434 () Bool)

(assert (=> b!1466434 (= e!935642 (and (inv!20380 (h!20645 tokens2!49)) e!935648 tp!412420))))

(declare-fun b!1466435 () Bool)

(assert (=> b!1466435 (= e!935646 (= lt!510609 Nil!15243))))

(assert (=> b!1466436 (= e!935649 (and tp!412422 tp!412424))))

(declare-fun tp!412418 () Bool)

(declare-fun b!1466437 () Bool)

(assert (=> b!1466437 (= e!935645 (and (inv!21 (value!86314 (h!20645 tokens1!47))) e!935641 tp!412418))))

(declare-fun b!1466438 () Bool)

(assert (=> b!1466438 (= e!935644 (= (printList!740 thiss!20360 tokens1!47) (++!4132 (list!6112 (charsOf!1549 (h!20645 tokens1!47))) lt!510606)))))

(assert (=> b!1466439 (= e!935652 (and tp!412426 tp!412419))))

(assert (= (and start!137156 res!663844) b!1466427))

(assert (= (and b!1466427 res!663845) b!1466433))

(assert (= (and b!1466433 res!663846) b!1466438))

(assert (= (and b!1466433 c!241745) b!1466432))

(assert (= (and b!1466433 (not c!241745)) b!1466435))

(assert (= b!1466431 b!1466439))

(assert (= b!1466437 b!1466431))

(assert (= b!1466430 b!1466437))

(assert (= (and start!137156 (is-Cons!15244 tokens1!47)) b!1466430))

(assert (= b!1466429 b!1466436))

(assert (= b!1466428 b!1466429))

(assert (= b!1466434 b!1466428))

(assert (= (and start!137156 (is-Cons!15244 tokens2!49)) b!1466434))

(declare-fun m!1711037 () Bool)

(assert (=> b!1466438 m!1711037))

(declare-fun m!1711039 () Bool)

(assert (=> b!1466438 m!1711039))

(assert (=> b!1466438 m!1711039))

(declare-fun m!1711041 () Bool)

(assert (=> b!1466438 m!1711041))

(assert (=> b!1466438 m!1711041))

(declare-fun m!1711043 () Bool)

(assert (=> b!1466438 m!1711043))

(declare-fun m!1711045 () Bool)

(assert (=> b!1466437 m!1711045))

(declare-fun m!1711047 () Bool)

(assert (=> b!1466428 m!1711047))

(declare-fun m!1711049 () Bool)

(assert (=> b!1466432 m!1711049))

(assert (=> b!1466432 m!1711049))

(declare-fun m!1711051 () Bool)

(assert (=> b!1466432 m!1711051))

(declare-fun m!1711053 () Bool)

(assert (=> b!1466432 m!1711053))

(assert (=> b!1466432 m!1711051))

(assert (=> b!1466432 m!1711053))

(declare-fun m!1711055 () Bool)

(assert (=> b!1466432 m!1711055))

(declare-fun m!1711057 () Bool)

(assert (=> b!1466427 m!1711057))

(declare-fun m!1711059 () Bool)

(assert (=> b!1466429 m!1711059))

(declare-fun m!1711061 () Bool)

(assert (=> b!1466429 m!1711061))

(declare-fun m!1711063 () Bool)

(assert (=> b!1466431 m!1711063))

(declare-fun m!1711065 () Bool)

(assert (=> b!1466431 m!1711065))

(declare-fun m!1711067 () Bool)

(assert (=> b!1466434 m!1711067))

(declare-fun m!1711069 () Bool)

(assert (=> b!1466430 m!1711069))

(declare-fun m!1711071 () Bool)

(assert (=> b!1466433 m!1711071))

(declare-fun m!1711073 () Bool)

(assert (=> b!1466433 m!1711073))

(declare-fun m!1711075 () Bool)

(assert (=> b!1466433 m!1711075))

(declare-fun m!1711077 () Bool)

(assert (=> b!1466433 m!1711077))

(declare-fun m!1711079 () Bool)

(assert (=> b!1466433 m!1711079))

(declare-fun m!1711081 () Bool)

(assert (=> b!1466433 m!1711081))

(declare-fun m!1711083 () Bool)

(assert (=> b!1466433 m!1711083))

(declare-fun m!1711085 () Bool)

(assert (=> b!1466433 m!1711085))

(assert (=> b!1466433 m!1711073))

(push 1)

(assert (not b_next!37365))

(assert b_and!100135)

(assert (not b!1466432))

(assert (not b!1466438))

(assert (not b!1466431))

(assert b_and!100133)

(assert (not b_next!37361))

(assert (not b!1466433))

(assert (not b!1466437))

(assert b_and!100129)

(assert (not b!1466427))

(assert (not b_next!37359))

(assert (not b_next!37363))

(assert (not b!1466430))

(assert (not b!1466434))

(assert (not b!1466428))

(assert (not b!1466429))

(assert b_and!100131)

(check-sat)

(pop 1)

(push 1)

(assert b_and!100129)

(assert (not b_next!37365))

(assert b_and!100135)

(assert b_and!100133)

(assert (not b_next!37359))

(assert (not b_next!37363))

(assert (not b_next!37361))

(assert b_and!100131)

(check-sat)

(pop 1)

