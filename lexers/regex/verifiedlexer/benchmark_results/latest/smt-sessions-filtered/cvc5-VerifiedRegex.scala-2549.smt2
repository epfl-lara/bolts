; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137168 () Bool)

(assert start!137168)

(declare-fun b!1466670 () Bool)

(declare-fun b_free!36703 () Bool)

(declare-fun b_next!37407 () Bool)

(assert (=> b!1466670 (= b_free!36703 (not b_next!37407))))

(declare-fun tp!412606 () Bool)

(declare-fun b_and!100177 () Bool)

(assert (=> b!1466670 (= tp!412606 b_and!100177)))

(declare-fun b_free!36705 () Bool)

(declare-fun b_next!37409 () Bool)

(assert (=> b!1466670 (= b_free!36705 (not b_next!37409))))

(declare-fun tp!412599 () Bool)

(declare-fun b_and!100179 () Bool)

(assert (=> b!1466670 (= tp!412599 b_and!100179)))

(declare-fun b!1466674 () Bool)

(declare-fun b_free!36707 () Bool)

(declare-fun b_next!37411 () Bool)

(assert (=> b!1466674 (= b_free!36707 (not b_next!37411))))

(declare-fun tp!412600 () Bool)

(declare-fun b_and!100181 () Bool)

(assert (=> b!1466674 (= tp!412600 b_and!100181)))

(declare-fun b_free!36709 () Bool)

(declare-fun b_next!37413 () Bool)

(assert (=> b!1466674 (= b_free!36709 (not b_next!37413))))

(declare-fun tp!412604 () Bool)

(declare-fun b_and!100183 () Bool)

(assert (=> b!1466674 (= tp!412604 b_and!100183)))

(declare-fun b!1466663 () Bool)

(declare-fun e!935914 () Bool)

(declare-datatypes ((C!8198 0))(
  ( (C!8199 (val!4669 Int)) )
))
(declare-datatypes ((List!15326 0))(
  ( (Nil!15260) (Cons!15260 (h!20661 C!8198) (t!135025 List!15326)) )
))
(declare-fun lt!510752 () List!15326)

(assert (=> b!1466663 (= e!935914 (= lt!510752 Nil!15260))))

(declare-datatypes ((List!15327 0))(
  ( (Nil!15261) (Cons!15261 (h!20662 (_ BitVec 16)) (t!135026 List!15327)) )
))
(declare-datatypes ((TokenValue!2786 0))(
  ( (FloatLiteralValue!5572 (text!19947 List!15327)) (TokenValueExt!2785 (__x!9362 Int)) (Broken!13930 (value!86459 List!15327)) (Object!2851) (End!2786) (Def!2786) (Underscore!2786) (Match!2786) (Else!2786) (Error!2786) (Case!2786) (If!2786) (Extends!2786) (Abstract!2786) (Class!2786) (Val!2786) (DelimiterValue!5572 (del!2846 List!15327)) (KeywordValue!2792 (value!86460 List!15327)) (CommentValue!5572 (value!86461 List!15327)) (WhitespaceValue!5572 (value!86462 List!15327)) (IndentationValue!2786 (value!86463 List!15327)) (String!18187) (Int32!2786) (Broken!13931 (value!86464 List!15327)) (Boolean!2787) (Unit!25041) (OperatorValue!2789 (op!2846 List!15327)) (IdentifierValue!5572 (value!86465 List!15327)) (IdentifierValue!5573 (value!86466 List!15327)) (WhitespaceValue!5573 (value!86467 List!15327)) (True!5572) (False!5572) (Broken!13932 (value!86468 List!15327)) (Broken!13933 (value!86469 List!15327)) (True!5573) (RightBrace!2786) (RightBracket!2786) (Colon!2786) (Null!2786) (Comma!2786) (LeftBracket!2786) (False!5573) (LeftBrace!2786) (ImaginaryLiteralValue!2786 (text!19948 List!15327)) (StringLiteralValue!8358 (value!86470 List!15327)) (EOFValue!2786 (value!86471 List!15327)) (IdentValue!2786 (value!86472 List!15327)) (DelimiterValue!5573 (value!86473 List!15327)) (DedentValue!2786 (value!86474 List!15327)) (NewLineValue!2786 (value!86475 List!15327)) (IntegerValue!8358 (value!86476 (_ BitVec 32)) (text!19949 List!15327)) (IntegerValue!8359 (value!86477 Int) (text!19950 List!15327)) (Times!2786) (Or!2786) (Equal!2786) (Minus!2786) (Broken!13934 (value!86478 List!15327)) (And!2786) (Div!2786) (LessEqual!2786) (Mod!2786) (Concat!6796) (Not!2786) (Plus!2786) (SpaceValue!2786 (value!86479 List!15327)) (IntegerValue!8360 (value!86480 Int) (text!19951 List!15327)) (StringLiteralValue!8359 (text!19952 List!15327)) (FloatLiteralValue!5573 (text!19953 List!15327)) (BytesLiteralValue!2786 (value!86481 List!15327)) (CommentValue!5573 (value!86482 List!15327)) (StringLiteralValue!8360 (value!86483 List!15327)) (ErrorTokenValue!2786 (msg!2847 List!15327)) )
))
(declare-datatypes ((IArray!10409 0))(
  ( (IArray!10410 (innerList!5262 List!15326)) )
))
(declare-datatypes ((Conc!5202 0))(
  ( (Node!5202 (left!12949 Conc!5202) (right!13279 Conc!5202) (csize!10634 Int) (cheight!5413 Int)) (Leaf!7752 (xs!7957 IArray!10409) (csize!10635 Int)) (Empty!5202) )
))
(declare-datatypes ((BalanceConc!10344 0))(
  ( (BalanceConc!10345 (c!241776 Conc!5202)) )
))
(declare-datatypes ((TokenValueInjection!5232 0))(
  ( (TokenValueInjection!5233 (toValue!4007 Int) (toChars!3866 Int)) )
))
(declare-datatypes ((Regex!4010 0))(
  ( (ElementMatch!4010 (c!241777 C!8198)) (Concat!6797 (regOne!8532 Regex!4010) (regTwo!8532 Regex!4010)) (EmptyExpr!4010) (Star!4010 (reg!4339 Regex!4010)) (EmptyLang!4010) (Union!4010 (regOne!8533 Regex!4010) (regTwo!8533 Regex!4010)) )
))
(declare-datatypes ((String!18188 0))(
  ( (String!18189 (value!86484 String)) )
))
(declare-datatypes ((Rule!5192 0))(
  ( (Rule!5193 (regex!2696 Regex!4010) (tag!2960 String!18188) (isSeparator!2696 Bool) (transformation!2696 TokenValueInjection!5232)) )
))
(declare-datatypes ((Token!5054 0))(
  ( (Token!5055 (value!86485 TokenValue!2786) (rule!4473 Rule!5192) (size!12462 Int) (originalCharacters!3558 List!15326)) )
))
(declare-datatypes ((List!15328 0))(
  ( (Nil!15262) (Cons!15262 (h!20663 Token!5054) (t!135027 List!15328)) )
))
(declare-fun lt!510759 () List!15328)

(declare-fun b!1466664 () Bool)

(declare-datatypes ((LexerInterface!2352 0))(
  ( (LexerInterfaceExt!2349 (__x!9363 Int)) (Lexer!2350) )
))
(declare-fun thiss!20360 () LexerInterface!2352)

(declare-fun ++!4144 (List!15326 List!15326) List!15326)

(declare-fun list!6118 (BalanceConc!10344) List!15326)

(declare-fun charsOf!1555 (Token!5054) BalanceConc!10344)

(declare-fun printList!746 (LexerInterface!2352 List!15328) List!15326)

(assert (=> b!1466664 (= e!935914 (= lt!510752 (++!4144 (list!6118 (charsOf!1555 (h!20663 lt!510759))) (printList!746 thiss!20360 (t!135027 lt!510759)))))))

(declare-fun tokens1!47 () List!15328)

(declare-fun e!935916 () Bool)

(declare-fun tp!412602 () Bool)

(declare-fun e!935925 () Bool)

(declare-fun b!1466665 () Bool)

(declare-fun inv!20400 (Token!5054) Bool)

(assert (=> b!1466665 (= e!935916 (and (inv!20400 (h!20663 tokens1!47)) e!935925 tp!412602))))

(declare-fun b!1466666 () Bool)

(declare-fun res!663903 () Bool)

(declare-fun e!935922 () Bool)

(assert (=> b!1466666 (=> res!663903 e!935922)))

(declare-fun lt!510753 () List!15326)

(declare-fun lt!510762 () List!15326)

(assert (=> b!1466666 (= res!663903 (not (= lt!510752 (++!4144 lt!510753 lt!510762))))))

(declare-fun tp!412603 () Bool)

(declare-fun b!1466667 () Bool)

(declare-fun e!935920 () Bool)

(declare-fun inv!21 (TokenValue!2786) Bool)

(assert (=> b!1466667 (= e!935925 (and (inv!21 (value!86485 (h!20663 tokens1!47))) e!935920 tp!412603))))

(declare-fun b!1466668 () Bool)

(assert (=> b!1466668 (= e!935922 true)))

(declare-fun lt!510756 () List!15326)

(declare-fun lt!510754 () List!15326)

(declare-fun lt!510763 () List!15326)

(assert (=> b!1466668 (= (++!4144 lt!510763 lt!510754) (++!4144 lt!510753 lt!510756))))

(declare-fun lt!510761 () List!15326)

(declare-datatypes ((Unit!25042 0))(
  ( (Unit!25043) )
))
(declare-fun lt!510758 () Unit!25042)

(declare-fun lemmaConcatAssociativity!891 (List!15326 List!15326 List!15326) Unit!25042)

(assert (=> b!1466668 (= lt!510758 (lemmaConcatAssociativity!891 lt!510753 lt!510761 lt!510754))))

(declare-fun b!1466669 () Bool)

(declare-fun res!663902 () Bool)

(declare-fun e!935911 () Bool)

(assert (=> b!1466669 (=> (not res!663902) (not e!935911))))

(declare-fun isEmpty!9582 (List!15328) Bool)

(assert (=> b!1466669 (= res!663902 (not (isEmpty!9582 (t!135027 tokens1!47))))))

(declare-fun e!935915 () Bool)

(assert (=> b!1466670 (= e!935915 (and tp!412606 tp!412599))))

(declare-fun tp!412597 () Bool)

(declare-fun e!935917 () Bool)

(declare-fun b!1466671 () Bool)

(declare-fun tokens2!49 () List!15328)

(declare-fun e!935912 () Bool)

(assert (=> b!1466671 (= e!935912 (and (inv!21 (value!86485 (h!20663 tokens2!49))) e!935917 tp!412597))))

(declare-fun tp!412601 () Bool)

(declare-fun e!935924 () Bool)

(declare-fun b!1466672 () Bool)

(assert (=> b!1466672 (= e!935924 (and (inv!20400 (h!20663 tokens2!49)) e!935912 tp!412601))))

(declare-fun b!1466673 () Bool)

(assert (=> b!1466673 (= e!935911 (not e!935922))))

(declare-fun res!663901 () Bool)

(assert (=> b!1466673 (=> res!663901 e!935922)))

(assert (=> b!1466673 (= res!663901 (not (= (printList!746 thiss!20360 tokens1!47) lt!510763)))))

(assert (=> b!1466673 e!935914))

(declare-fun c!241775 () Bool)

(assert (=> b!1466673 (= c!241775 (is-Cons!15262 lt!510759))))

(assert (=> b!1466673 (= lt!510752 (printList!746 thiss!20360 lt!510759))))

(declare-fun ++!4145 (List!15328 List!15328) List!15328)

(assert (=> b!1466673 (= lt!510759 (++!4145 tokens1!47 tokens2!49))))

(declare-fun lt!510757 () List!15326)

(assert (=> b!1466673 (= lt!510757 lt!510763)))

(assert (=> b!1466673 (= lt!510763 (++!4144 lt!510753 lt!510761))))

(assert (=> b!1466673 (= lt!510757 (printList!746 thiss!20360 tokens1!47))))

(assert (=> b!1466673 (= lt!510753 (list!6118 (charsOf!1555 (h!20663 tokens1!47))))))

(assert (=> b!1466673 (= lt!510762 lt!510756)))

(assert (=> b!1466673 (= lt!510756 (++!4144 lt!510761 lt!510754))))

(declare-fun lt!510760 () List!15328)

(assert (=> b!1466673 (= lt!510762 (printList!746 thiss!20360 lt!510760))))

(assert (=> b!1466673 (= lt!510754 (printList!746 thiss!20360 tokens2!49))))

(assert (=> b!1466673 (= lt!510761 (printList!746 thiss!20360 (t!135027 tokens1!47)))))

(assert (=> b!1466673 (= lt!510760 (++!4145 (t!135027 tokens1!47) tokens2!49))))

(declare-fun lt!510755 () Unit!25042)

(declare-fun lemmaPrintConcatSameAsConcatPrint!91 (LexerInterface!2352 List!15328 List!15328) Unit!25042)

(assert (=> b!1466673 (= lt!510755 (lemmaPrintConcatSameAsConcatPrint!91 thiss!20360 (t!135027 tokens1!47) tokens2!49))))

(declare-fun b!1466675 () Bool)

(declare-fun tp!412598 () Bool)

(declare-fun inv!20397 (String!18188) Bool)

(declare-fun inv!20401 (TokenValueInjection!5232) Bool)

(assert (=> b!1466675 (= e!935917 (and tp!412598 (inv!20397 (tag!2960 (rule!4473 (h!20663 tokens2!49)))) (inv!20401 (transformation!2696 (rule!4473 (h!20663 tokens2!49)))) e!935915))))

(declare-fun e!935913 () Bool)

(declare-fun b!1466676 () Bool)

(declare-fun tp!412605 () Bool)

(assert (=> b!1466676 (= e!935920 (and tp!412605 (inv!20397 (tag!2960 (rule!4473 (h!20663 tokens1!47)))) (inv!20401 (transformation!2696 (rule!4473 (h!20663 tokens1!47)))) e!935913))))

(assert (=> b!1466674 (= e!935913 (and tp!412600 tp!412604))))

(declare-fun res!663900 () Bool)

(assert (=> start!137168 (=> (not res!663900) (not e!935911))))

(assert (=> start!137168 (= res!663900 (and (is-Lexer!2350 thiss!20360) (is-Cons!15262 tokens1!47)))))

(assert (=> start!137168 e!935911))

(assert (=> start!137168 true))

(assert (=> start!137168 e!935916))

(assert (=> start!137168 e!935924))

(assert (= (and start!137168 res!663900) b!1466669))

(assert (= (and b!1466669 res!663902) b!1466673))

(assert (= (and b!1466673 c!241775) b!1466664))

(assert (= (and b!1466673 (not c!241775)) b!1466663))

(assert (= (and b!1466673 (not res!663901)) b!1466666))

(assert (= (and b!1466666 (not res!663903)) b!1466668))

(assert (= b!1466676 b!1466674))

(assert (= b!1466667 b!1466676))

(assert (= b!1466665 b!1466667))

(assert (= (and start!137168 (is-Cons!15262 tokens1!47)) b!1466665))

(assert (= b!1466675 b!1466670))

(assert (= b!1466671 b!1466675))

(assert (= b!1466672 b!1466671))

(assert (= (and start!137168 (is-Cons!15262 tokens2!49)) b!1466672))

(declare-fun m!1711341 () Bool)

(assert (=> b!1466667 m!1711341))

(declare-fun m!1711343 () Bool)

(assert (=> b!1466671 m!1711343))

(declare-fun m!1711345 () Bool)

(assert (=> b!1466673 m!1711345))

(declare-fun m!1711347 () Bool)

(assert (=> b!1466673 m!1711347))

(declare-fun m!1711349 () Bool)

(assert (=> b!1466673 m!1711349))

(declare-fun m!1711351 () Bool)

(assert (=> b!1466673 m!1711351))

(declare-fun m!1711353 () Bool)

(assert (=> b!1466673 m!1711353))

(declare-fun m!1711355 () Bool)

(assert (=> b!1466673 m!1711355))

(declare-fun m!1711357 () Bool)

(assert (=> b!1466673 m!1711357))

(declare-fun m!1711359 () Bool)

(assert (=> b!1466673 m!1711359))

(declare-fun m!1711361 () Bool)

(assert (=> b!1466673 m!1711361))

(assert (=> b!1466673 m!1711359))

(declare-fun m!1711363 () Bool)

(assert (=> b!1466673 m!1711363))

(declare-fun m!1711365 () Bool)

(assert (=> b!1466673 m!1711365))

(declare-fun m!1711367 () Bool)

(assert (=> b!1466673 m!1711367))

(declare-fun m!1711369 () Bool)

(assert (=> b!1466665 m!1711369))

(declare-fun m!1711371 () Bool)

(assert (=> b!1466676 m!1711371))

(declare-fun m!1711373 () Bool)

(assert (=> b!1466676 m!1711373))

(declare-fun m!1711375 () Bool)

(assert (=> b!1466672 m!1711375))

(declare-fun m!1711377 () Bool)

(assert (=> b!1466669 m!1711377))

(declare-fun m!1711379 () Bool)

(assert (=> b!1466664 m!1711379))

(assert (=> b!1466664 m!1711379))

(declare-fun m!1711381 () Bool)

(assert (=> b!1466664 m!1711381))

(declare-fun m!1711383 () Bool)

(assert (=> b!1466664 m!1711383))

(assert (=> b!1466664 m!1711381))

(assert (=> b!1466664 m!1711383))

(declare-fun m!1711385 () Bool)

(assert (=> b!1466664 m!1711385))

(declare-fun m!1711387 () Bool)

(assert (=> b!1466666 m!1711387))

(declare-fun m!1711389 () Bool)

(assert (=> b!1466675 m!1711389))

(declare-fun m!1711391 () Bool)

(assert (=> b!1466675 m!1711391))

(declare-fun m!1711393 () Bool)

(assert (=> b!1466668 m!1711393))

(declare-fun m!1711395 () Bool)

(assert (=> b!1466668 m!1711395))

(declare-fun m!1711397 () Bool)

(assert (=> b!1466668 m!1711397))

(push 1)

(assert (not b!1466672))

(assert (not b!1466667))

(assert b_and!100177)

(assert b_and!100179)

(assert (not b!1466671))

(assert (not b_next!37409))

(assert (not b_next!37407))

(assert (not b_next!37411))

(assert (not b!1466664))

(assert b_and!100181)

(assert (not b_next!37413))

(assert (not b!1466673))

(assert (not b!1466665))

(assert (not b!1466666))

(assert (not b!1466676))

(assert b_and!100183)

(assert (not b!1466669))

(assert (not b!1466668))

(assert (not b!1466675))

(check-sat)

(pop 1)

(push 1)

(assert b_and!100181)

(assert (not b_next!37413))

(assert b_and!100177)

(assert b_and!100179)

(assert b_and!100183)

(assert (not b_next!37409))

(assert (not b_next!37407))

(assert (not b_next!37411))

(check-sat)

(pop 1)

