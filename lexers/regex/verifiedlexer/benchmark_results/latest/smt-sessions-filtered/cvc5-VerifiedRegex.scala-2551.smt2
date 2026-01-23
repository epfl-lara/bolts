; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137176 () Bool)

(assert start!137176)

(declare-fun b!1466785 () Bool)

(declare-fun b_free!36735 () Bool)

(declare-fun b_next!37439 () Bool)

(assert (=> b!1466785 (= b_free!36735 (not b_next!37439))))

(declare-fun tp!412709 () Bool)

(declare-fun b_and!100209 () Bool)

(assert (=> b!1466785 (= tp!412709 b_and!100209)))

(declare-fun b_free!36737 () Bool)

(declare-fun b_next!37441 () Bool)

(assert (=> b!1466785 (= b_free!36737 (not b_next!37441))))

(declare-fun tp!412711 () Bool)

(declare-fun b_and!100211 () Bool)

(assert (=> b!1466785 (= tp!412711 b_and!100211)))

(declare-datatypes ((List!15338 0))(
  ( (Nil!15272) (Cons!15272 (h!20673 (_ BitVec 16)) (t!135037 List!15338)) )
))
(declare-datatypes ((TokenValue!2790 0))(
  ( (FloatLiteralValue!5580 (text!19975 List!15338)) (TokenValueExt!2789 (__x!9370 Int)) (Broken!13950 (value!86573 List!15338)) (Object!2855) (End!2790) (Def!2790) (Underscore!2790) (Match!2790) (Else!2790) (Error!2790) (Case!2790) (If!2790) (Extends!2790) (Abstract!2790) (Class!2790) (Val!2790) (DelimiterValue!5580 (del!2850 List!15338)) (KeywordValue!2796 (value!86574 List!15338)) (CommentValue!5580 (value!86575 List!15338)) (WhitespaceValue!5580 (value!86576 List!15338)) (IndentationValue!2790 (value!86577 List!15338)) (String!18207) (Int32!2790) (Broken!13951 (value!86578 List!15338)) (Boolean!2791) (Unit!25049) (OperatorValue!2793 (op!2850 List!15338)) (IdentifierValue!5580 (value!86579 List!15338)) (IdentifierValue!5581 (value!86580 List!15338)) (WhitespaceValue!5581 (value!86581 List!15338)) (True!5580) (False!5580) (Broken!13952 (value!86582 List!15338)) (Broken!13953 (value!86583 List!15338)) (True!5581) (RightBrace!2790) (RightBracket!2790) (Colon!2790) (Null!2790) (Comma!2790) (LeftBracket!2790) (False!5581) (LeftBrace!2790) (ImaginaryLiteralValue!2790 (text!19976 List!15338)) (StringLiteralValue!8370 (value!86584 List!15338)) (EOFValue!2790 (value!86585 List!15338)) (IdentValue!2790 (value!86586 List!15338)) (DelimiterValue!5581 (value!86587 List!15338)) (DedentValue!2790 (value!86588 List!15338)) (NewLineValue!2790 (value!86589 List!15338)) (IntegerValue!8370 (value!86590 (_ BitVec 32)) (text!19977 List!15338)) (IntegerValue!8371 (value!86591 Int) (text!19978 List!15338)) (Times!2790) (Or!2790) (Equal!2790) (Minus!2790) (Broken!13954 (value!86592 List!15338)) (And!2790) (Div!2790) (LessEqual!2790) (Mod!2790) (Concat!6804) (Not!2790) (Plus!2790) (SpaceValue!2790 (value!86593 List!15338)) (IntegerValue!8372 (value!86594 Int) (text!19979 List!15338)) (StringLiteralValue!8371 (text!19980 List!15338)) (FloatLiteralValue!5581 (text!19981 List!15338)) (BytesLiteralValue!2790 (value!86595 List!15338)) (CommentValue!5581 (value!86596 List!15338)) (StringLiteralValue!8372 (value!86597 List!15338)) (ErrorTokenValue!2790 (msg!2851 List!15338)) )
))
(declare-datatypes ((C!8206 0))(
  ( (C!8207 (val!4673 Int)) )
))
(declare-datatypes ((List!15339 0))(
  ( (Nil!15273) (Cons!15273 (h!20674 C!8206) (t!135038 List!15339)) )
))
(declare-datatypes ((IArray!10417 0))(
  ( (IArray!10418 (innerList!5266 List!15339)) )
))
(declare-datatypes ((Conc!5206 0))(
  ( (Node!5206 (left!12955 Conc!5206) (right!13285 Conc!5206) (csize!10642 Int) (cheight!5417 Int)) (Leaf!7758 (xs!7961 IArray!10417) (csize!10643 Int)) (Empty!5206) )
))
(declare-datatypes ((BalanceConc!10352 0))(
  ( (BalanceConc!10353 (c!241787 Conc!5206)) )
))
(declare-datatypes ((TokenValueInjection!5240 0))(
  ( (TokenValueInjection!5241 (toValue!4011 Int) (toChars!3870 Int)) )
))
(declare-datatypes ((Regex!4014 0))(
  ( (ElementMatch!4014 (c!241788 C!8206)) (Concat!6805 (regOne!8540 Regex!4014) (regTwo!8540 Regex!4014)) (EmptyExpr!4014) (Star!4014 (reg!4343 Regex!4014)) (EmptyLang!4014) (Union!4014 (regOne!8541 Regex!4014) (regTwo!8541 Regex!4014)) )
))
(declare-datatypes ((String!18208 0))(
  ( (String!18209 (value!86598 String)) )
))
(declare-datatypes ((Rule!5200 0))(
  ( (Rule!5201 (regex!2700 Regex!4014) (tag!2964 String!18208) (isSeparator!2700 Bool) (transformation!2700 TokenValueInjection!5240)) )
))
(declare-datatypes ((Token!5062 0))(
  ( (Token!5063 (value!86599 TokenValue!2790) (rule!4477 Rule!5200) (size!12466 Int) (originalCharacters!3562 List!15339)) )
))
(declare-datatypes ((List!15340 0))(
  ( (Nil!15274) (Cons!15274 (h!20675 Token!5062) (t!135039 List!15340)) )
))
(declare-fun tokens1!47 () List!15340)

(declare-fun b!1466783 () Bool)

(declare-fun tp!412710 () Bool)

(declare-fun e!936064 () Bool)

(declare-fun e!936068 () Bool)

(declare-fun inv!20414 (Token!5062) Bool)

(assert (=> b!1466783 (= e!936064 (and (inv!20414 (h!20675 tokens1!47)) e!936068 tp!412710))))

(declare-fun res!663924 () Bool)

(declare-fun e!936067 () Bool)

(assert (=> start!137176 (=> (not res!663924) (not e!936067))))

(declare-datatypes ((LexerInterface!2356 0))(
  ( (LexerInterfaceExt!2353 (__x!9371 Int)) (Lexer!2354) )
))
(declare-fun thiss!20360 () LexerInterface!2356)

(assert (=> start!137176 (= res!663924 (and (is-Lexer!2354 thiss!20360) (not (is-Cons!15274 tokens1!47))))))

(assert (=> start!137176 e!936067))

(assert (=> start!137176 true))

(assert (=> start!137176 e!936064))

(declare-fun b!1466784 () Bool)

(assert (=> b!1466784 (= e!936067 false)))

(declare-fun lt!510808 () List!15339)

(declare-fun printList!748 (LexerInterface!2356 List!15340) List!15339)

(assert (=> b!1466784 (= lt!510808 (printList!748 thiss!20360 tokens1!47))))

(declare-fun e!936065 () Bool)

(assert (=> b!1466785 (= e!936065 (and tp!412709 tp!412711))))

(declare-fun e!936069 () Bool)

(declare-fun tp!412708 () Bool)

(declare-fun b!1466786 () Bool)

(declare-fun inv!21 (TokenValue!2790) Bool)

(assert (=> b!1466786 (= e!936068 (and (inv!21 (value!86599 (h!20675 tokens1!47))) e!936069 tp!412708))))

(declare-fun tp!412707 () Bool)

(declare-fun b!1466787 () Bool)

(declare-fun inv!20411 (String!18208) Bool)

(declare-fun inv!20415 (TokenValueInjection!5240) Bool)

(assert (=> b!1466787 (= e!936069 (and tp!412707 (inv!20411 (tag!2964 (rule!4477 (h!20675 tokens1!47)))) (inv!20415 (transformation!2700 (rule!4477 (h!20675 tokens1!47)))) e!936065))))

(assert (= (and start!137176 res!663924) b!1466784))

(assert (= b!1466787 b!1466785))

(assert (= b!1466786 b!1466787))

(assert (= b!1466783 b!1466786))

(assert (= (and start!137176 (is-Cons!15274 tokens1!47)) b!1466783))

(declare-fun m!1711493 () Bool)

(assert (=> b!1466783 m!1711493))

(declare-fun m!1711495 () Bool)

(assert (=> b!1466784 m!1711495))

(declare-fun m!1711497 () Bool)

(assert (=> b!1466786 m!1711497))

(declare-fun m!1711499 () Bool)

(assert (=> b!1466787 m!1711499))

(declare-fun m!1711501 () Bool)

(assert (=> b!1466787 m!1711501))

(push 1)

(assert (not b_next!37441))

(assert (not b!1466787))

(assert b_and!100209)

(assert b_and!100211)

(assert (not b!1466786))

(assert (not b_next!37439))

(assert (not b!1466783))

(assert (not b!1466784))

(check-sat)

(pop 1)

(push 1)

(assert b_and!100209)

(assert b_and!100211)

(assert (not b_next!37439))

(assert (not b_next!37441))

(check-sat)

(pop 1)

