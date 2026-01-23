; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137172 () Bool)

(assert start!137172)

(declare-fun b!1466744 () Bool)

(declare-fun b_free!36719 () Bool)

(declare-fun b_next!37423 () Bool)

(assert (=> b!1466744 (= b_free!36719 (not b_next!37423))))

(declare-fun tp!412664 () Bool)

(declare-fun b_and!100193 () Bool)

(assert (=> b!1466744 (= tp!412664 b_and!100193)))

(declare-fun b_free!36721 () Bool)

(declare-fun b_next!37425 () Bool)

(assert (=> b!1466744 (= b_free!36721 (not b_next!37425))))

(declare-fun tp!412660 () Bool)

(declare-fun b_and!100195 () Bool)

(assert (=> b!1466744 (= tp!412660 b_and!100195)))

(declare-fun b!1466743 () Bool)

(declare-fun b_free!36723 () Bool)

(declare-fun b_next!37427 () Bool)

(assert (=> b!1466743 (= b_free!36723 (not b_next!37427))))

(declare-fun tp!412662 () Bool)

(declare-fun b_and!100197 () Bool)

(assert (=> b!1466743 (= tp!412662 b_and!100197)))

(declare-fun b_free!36725 () Bool)

(declare-fun b_next!37429 () Bool)

(assert (=> b!1466743 (= b_free!36725 (not b_next!37429))))

(declare-fun tp!412659 () Bool)

(declare-fun b_and!100199 () Bool)

(assert (=> b!1466743 (= tp!412659 b_and!100199)))

(declare-fun e!936007 () Bool)

(declare-datatypes ((List!15332 0))(
  ( (Nil!15266) (Cons!15266 (h!20667 (_ BitVec 16)) (t!135031 List!15332)) )
))
(declare-datatypes ((TokenValue!2788 0))(
  ( (FloatLiteralValue!5576 (text!19961 List!15332)) (TokenValueExt!2787 (__x!9366 Int)) (Broken!13940 (value!86516 List!15332)) (Object!2853) (End!2788) (Def!2788) (Underscore!2788) (Match!2788) (Else!2788) (Error!2788) (Case!2788) (If!2788) (Extends!2788) (Abstract!2788) (Class!2788) (Val!2788) (DelimiterValue!5576 (del!2848 List!15332)) (KeywordValue!2794 (value!86517 List!15332)) (CommentValue!5576 (value!86518 List!15332)) (WhitespaceValue!5576 (value!86519 List!15332)) (IndentationValue!2788 (value!86520 List!15332)) (String!18197) (Int32!2788) (Broken!13941 (value!86521 List!15332)) (Boolean!2789) (Unit!25047) (OperatorValue!2791 (op!2848 List!15332)) (IdentifierValue!5576 (value!86522 List!15332)) (IdentifierValue!5577 (value!86523 List!15332)) (WhitespaceValue!5577 (value!86524 List!15332)) (True!5576) (False!5576) (Broken!13942 (value!86525 List!15332)) (Broken!13943 (value!86526 List!15332)) (True!5577) (RightBrace!2788) (RightBracket!2788) (Colon!2788) (Null!2788) (Comma!2788) (LeftBracket!2788) (False!5577) (LeftBrace!2788) (ImaginaryLiteralValue!2788 (text!19962 List!15332)) (StringLiteralValue!8364 (value!86527 List!15332)) (EOFValue!2788 (value!86528 List!15332)) (IdentValue!2788 (value!86529 List!15332)) (DelimiterValue!5577 (value!86530 List!15332)) (DedentValue!2788 (value!86531 List!15332)) (NewLineValue!2788 (value!86532 List!15332)) (IntegerValue!8364 (value!86533 (_ BitVec 32)) (text!19963 List!15332)) (IntegerValue!8365 (value!86534 Int) (text!19964 List!15332)) (Times!2788) (Or!2788) (Equal!2788) (Minus!2788) (Broken!13944 (value!86535 List!15332)) (And!2788) (Div!2788) (LessEqual!2788) (Mod!2788) (Concat!6800) (Not!2788) (Plus!2788) (SpaceValue!2788 (value!86536 List!15332)) (IntegerValue!8366 (value!86537 Int) (text!19965 List!15332)) (StringLiteralValue!8365 (text!19966 List!15332)) (FloatLiteralValue!5577 (text!19967 List!15332)) (BytesLiteralValue!2788 (value!86538 List!15332)) (CommentValue!5577 (value!86539 List!15332)) (StringLiteralValue!8366 (value!86540 List!15332)) (ErrorTokenValue!2788 (msg!2849 List!15332)) )
))
(declare-datatypes ((C!8202 0))(
  ( (C!8203 (val!4671 Int)) )
))
(declare-datatypes ((List!15333 0))(
  ( (Nil!15267) (Cons!15267 (h!20668 C!8202) (t!135032 List!15333)) )
))
(declare-datatypes ((IArray!10413 0))(
  ( (IArray!10414 (innerList!5264 List!15333)) )
))
(declare-datatypes ((Conc!5204 0))(
  ( (Node!5204 (left!12952 Conc!5204) (right!13282 Conc!5204) (csize!10638 Int) (cheight!5415 Int)) (Leaf!7755 (xs!7959 IArray!10413) (csize!10639 Int)) (Empty!5204) )
))
(declare-datatypes ((BalanceConc!10348 0))(
  ( (BalanceConc!10349 (c!241783 Conc!5204)) )
))
(declare-datatypes ((TokenValueInjection!5236 0))(
  ( (TokenValueInjection!5237 (toValue!4009 Int) (toChars!3868 Int)) )
))
(declare-datatypes ((String!18198 0))(
  ( (String!18199 (value!86541 String)) )
))
(declare-datatypes ((Regex!4012 0))(
  ( (ElementMatch!4012 (c!241784 C!8202)) (Concat!6801 (regOne!8536 Regex!4012) (regTwo!8536 Regex!4012)) (EmptyExpr!4012) (Star!4012 (reg!4341 Regex!4012)) (EmptyLang!4012) (Union!4012 (regOne!8537 Regex!4012) (regTwo!8537 Regex!4012)) )
))
(declare-datatypes ((Rule!5196 0))(
  ( (Rule!5197 (regex!2698 Regex!4012) (tag!2962 String!18198) (isSeparator!2698 Bool) (transformation!2698 TokenValueInjection!5236)) )
))
(declare-datatypes ((Token!5058 0))(
  ( (Token!5059 (value!86542 TokenValue!2788) (rule!4475 Rule!5196) (size!12464 Int) (originalCharacters!3560 List!15333)) )
))
(declare-datatypes ((List!15334 0))(
  ( (Nil!15268) (Cons!15268 (h!20669 Token!5058) (t!135033 List!15334)) )
))
(declare-fun tokens1!47 () List!15334)

(declare-fun b!1466737 () Bool)

(declare-fun e!936009 () Bool)

(declare-fun tp!412666 () Bool)

(declare-fun inv!20407 (Token!5058) Bool)

(assert (=> b!1466737 (= e!936007 (and (inv!20407 (h!20669 tokens1!47)) e!936009 tp!412666))))

(declare-fun b!1466738 () Bool)

(declare-fun e!936003 () Bool)

(declare-fun tp!412663 () Bool)

(declare-fun inv!21 (TokenValue!2788) Bool)

(assert (=> b!1466738 (= e!936009 (and (inv!21 (value!86542 (h!20669 tokens1!47))) e!936003 tp!412663))))

(declare-fun b!1466740 () Bool)

(declare-fun e!935997 () Bool)

(assert (=> b!1466740 (= e!935997 false)))

(declare-fun lt!510802 () List!15334)

(declare-fun tokens2!49 () List!15334)

(declare-fun ++!4148 (List!15334 List!15334) List!15334)

(assert (=> b!1466740 (= lt!510802 (++!4148 tokens1!47 tokens2!49))))

(declare-fun b!1466741 () Bool)

(declare-fun tp!412661 () Bool)

(declare-fun e!936006 () Bool)

(declare-fun e!935998 () Bool)

(declare-fun inv!20404 (String!18198) Bool)

(declare-fun inv!20408 (TokenValueInjection!5236) Bool)

(assert (=> b!1466741 (= e!936006 (and tp!412661 (inv!20404 (tag!2962 (rule!4475 (h!20669 tokens2!49)))) (inv!20408 (transformation!2698 (rule!4475 (h!20669 tokens2!49)))) e!935998))))

(declare-fun tp!412658 () Bool)

(declare-fun b!1466739 () Bool)

(declare-fun e!936008 () Bool)

(declare-fun e!936000 () Bool)

(assert (=> b!1466739 (= e!936008 (and (inv!20407 (h!20669 tokens2!49)) e!936000 tp!412658))))

(declare-fun res!663918 () Bool)

(assert (=> start!137172 (=> (not res!663918) (not e!935997))))

(declare-datatypes ((LexerInterface!2354 0))(
  ( (LexerInterfaceExt!2351 (__x!9367 Int)) (Lexer!2352) )
))
(declare-fun thiss!20360 () LexerInterface!2354)

(assert (=> start!137172 (= res!663918 (and (is-Lexer!2352 thiss!20360) (not (is-Cons!15268 tokens1!47))))))

(assert (=> start!137172 e!935997))

(assert (=> start!137172 true))

(assert (=> start!137172 e!936007))

(assert (=> start!137172 e!936008))

(declare-fun tp!412657 () Bool)

(declare-fun b!1466742 () Bool)

(assert (=> b!1466742 (= e!936000 (and (inv!21 (value!86542 (h!20669 tokens2!49))) e!936006 tp!412657))))

(assert (=> b!1466743 (= e!935998 (and tp!412662 tp!412659))))

(declare-fun e!936005 () Bool)

(assert (=> b!1466744 (= e!936005 (and tp!412664 tp!412660))))

(declare-fun tp!412665 () Bool)

(declare-fun b!1466745 () Bool)

(assert (=> b!1466745 (= e!936003 (and tp!412665 (inv!20404 (tag!2962 (rule!4475 (h!20669 tokens1!47)))) (inv!20408 (transformation!2698 (rule!4475 (h!20669 tokens1!47)))) e!936005))))

(assert (= (and start!137172 res!663918) b!1466740))

(assert (= b!1466745 b!1466744))

(assert (= b!1466738 b!1466745))

(assert (= b!1466737 b!1466738))

(assert (= (and start!137172 (is-Cons!15268 tokens1!47)) b!1466737))

(assert (= b!1466741 b!1466743))

(assert (= b!1466742 b!1466741))

(assert (= b!1466739 b!1466742))

(assert (= (and start!137172 (is-Cons!15268 tokens2!49)) b!1466739))

(declare-fun m!1711457 () Bool)

(assert (=> b!1466745 m!1711457))

(declare-fun m!1711459 () Bool)

(assert (=> b!1466745 m!1711459))

(declare-fun m!1711461 () Bool)

(assert (=> b!1466741 m!1711461))

(declare-fun m!1711463 () Bool)

(assert (=> b!1466741 m!1711463))

(declare-fun m!1711465 () Bool)

(assert (=> b!1466737 m!1711465))

(declare-fun m!1711467 () Bool)

(assert (=> b!1466738 m!1711467))

(declare-fun m!1711469 () Bool)

(assert (=> b!1466739 m!1711469))

(declare-fun m!1711471 () Bool)

(assert (=> b!1466742 m!1711471))

(declare-fun m!1711473 () Bool)

(assert (=> b!1466740 m!1711473))

(push 1)

(assert (not b!1466738))

(assert (not b_next!37423))

(assert b_and!100195)

(assert b_and!100199)

(assert (not b_next!37427))

(assert (not b!1466737))

(assert b_and!100193)

(assert (not b!1466740))

(assert (not b_next!37429))

(assert (not b!1466745))

(assert (not b_next!37425))

(assert b_and!100197)

(assert (not b!1466739))

(assert (not b!1466742))

(assert (not b!1466741))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!37429))

(assert (not b_next!37425))

(assert (not b_next!37423))

(assert b_and!100195)

(assert b_and!100199)

(assert (not b_next!37427))

(assert b_and!100197)

(assert b_and!100193)

(check-sat)

(pop 1)

