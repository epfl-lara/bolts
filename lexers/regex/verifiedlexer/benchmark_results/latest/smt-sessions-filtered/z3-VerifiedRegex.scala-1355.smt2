; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71774 () Bool)

(assert start!71774)

(declare-fun res!338899 () Bool)

(declare-fun e!499580 () Bool)

(assert (=> start!71774 (=> (not res!338899) (not e!499580))))

(declare-datatypes ((List!8706 0))(
  ( (Nil!8692) (Cons!8692 (h!14093 (_ BitVec 16)) (t!92019 List!8706)) )
))
(declare-datatypes ((TokenValue!1695 0))(
  ( (FloatLiteralValue!3390 (text!12310 List!8706)) (TokenValueExt!1694 (__x!7059 Int)) (Broken!8475 (value!52698 List!8706)) (Object!1708) (End!1695) (Def!1695) (Underscore!1695) (Match!1695) (Else!1695) (Error!1695) (Case!1695) (If!1695) (Extends!1695) (Abstract!1695) (Class!1695) (Val!1695) (DelimiterValue!3390 (del!1755 List!8706)) (KeywordValue!1701 (value!52699 List!8706)) (CommentValue!3390 (value!52700 List!8706)) (WhitespaceValue!3390 (value!52701 List!8706)) (IndentationValue!1695 (value!52702 List!8706)) (String!10230) (Int32!1695) (Broken!8476 (value!52703 List!8706)) (Boolean!1696) (Unit!13149) (OperatorValue!1698 (op!1755 List!8706)) (IdentifierValue!3390 (value!52704 List!8706)) (IdentifierValue!3391 (value!52705 List!8706)) (WhitespaceValue!3391 (value!52706 List!8706)) (True!3390) (False!3390) (Broken!8477 (value!52707 List!8706)) (Broken!8478 (value!52708 List!8706)) (True!3391) (RightBrace!1695) (RightBracket!1695) (Colon!1695) (Null!1695) (Comma!1695) (LeftBracket!1695) (False!3391) (LeftBrace!1695) (ImaginaryLiteralValue!1695 (text!12311 List!8706)) (StringLiteralValue!5085 (value!52709 List!8706)) (EOFValue!1695 (value!52710 List!8706)) (IdentValue!1695 (value!52711 List!8706)) (DelimiterValue!3391 (value!52712 List!8706)) (DedentValue!1695 (value!52713 List!8706)) (NewLineValue!1695 (value!52714 List!8706)) (IntegerValue!5085 (value!52715 (_ BitVec 32)) (text!12312 List!8706)) (IntegerValue!5086 (value!52716 Int) (text!12313 List!8706)) (Times!1695) (Or!1695) (Equal!1695) (Minus!1695) (Broken!8479 (value!52717 List!8706)) (And!1695) (Div!1695) (LessEqual!1695) (Mod!1695) (Concat!3700) (Not!1695) (Plus!1695) (SpaceValue!1695 (value!52718 List!8706)) (IntegerValue!5087 (value!52719 Int) (text!12314 List!8706)) (StringLiteralValue!5086 (text!12315 List!8706)) (FloatLiteralValue!3391 (text!12316 List!8706)) (BytesLiteralValue!1695 (value!52720 List!8706)) (CommentValue!3391 (value!52721 List!8706)) (StringLiteralValue!5087 (value!52722 List!8706)) (ErrorTokenValue!1695 (msg!1756 List!8706)) )
))
(declare-datatypes ((Regex!2005 0))(
  ( (ElementMatch!2005 (c!130373 (_ BitVec 16))) (Concat!3701 (regOne!4522 Regex!2005) (regTwo!4522 Regex!2005)) (EmptyExpr!2005) (Star!2005 (reg!2334 Regex!2005)) (EmptyLang!2005) (Union!2005 (regOne!4523 Regex!2005) (regTwo!4523 Regex!2005)) )
))
(declare-datatypes ((String!10231 0))(
  ( (String!10232 (value!52723 String)) )
))
(declare-datatypes ((IArray!5805 0))(
  ( (IArray!5806 (innerList!2960 List!8706)) )
))
(declare-datatypes ((Conc!2902 0))(
  ( (Node!2902 (left!6431 Conc!2902) (right!6761 Conc!2902) (csize!6034 Int) (cheight!3113 Int)) (Leaf!4258 (xs!5589 IArray!5805) (csize!6035 Int)) (Empty!2902) )
))
(declare-datatypes ((BalanceConc!5816 0))(
  ( (BalanceConc!5817 (c!130374 Conc!2902)) )
))
(declare-datatypes ((TokenValueInjection!3126 0))(
  ( (TokenValueInjection!3127 (toValue!2643 Int) (toChars!2502 Int)) )
))
(declare-datatypes ((Rule!3102 0))(
  ( (Rule!3103 (regex!1651 Regex!2005) (tag!1913 String!10231) (isSeparator!1651 Bool) (transformation!1651 TokenValueInjection!3126)) )
))
(declare-datatypes ((List!8707 0))(
  ( (Nil!8693) (Cons!8693 (h!14094 Rule!3102) (t!92020 List!8707)) )
))
(declare-fun lt!314256 () List!8707)

(declare-fun isEmpty!5235 (List!8707) Bool)

(assert (=> start!71774 (= res!338899 (not (isEmpty!5235 lt!314256)))))

(declare-datatypes ((JsonLexer!262 0))(
  ( (JsonLexer!263) )
))
(declare-fun rules!109 (JsonLexer!262) List!8707)

(assert (=> start!71774 (= lt!314256 (rules!109 JsonLexer!263))))

(assert (=> start!71774 e!499580))

(declare-fun b!774387 () Bool)

(declare-fun res!338898 () Bool)

(assert (=> b!774387 (=> (not res!338898) (not e!499580))))

(declare-datatypes ((LexerInterface!1453 0))(
  ( (LexerInterfaceExt!1450 (__x!7060 Int)) (Lexer!1451) )
))
(declare-fun rulesInvariant!1329 (LexerInterface!1453 List!8707) Bool)

(assert (=> b!774387 (= res!338898 (rulesInvariant!1329 Lexer!1451 lt!314256))))

(declare-fun b!774388 () Bool)

(assert (=> b!774388 (= e!499580 false)))

(declare-datatypes ((Token!2968 0))(
  ( (Token!2969 (value!52724 TokenValue!1695) (rule!2776 Rule!3102) (size!7065 Int) (originalCharacters!1909 List!8706)) )
))
(declare-datatypes ((List!8708 0))(
  ( (Nil!8694) (Cons!8694 (h!14095 Token!2968) (t!92021 List!8708)) )
))
(declare-datatypes ((IArray!5807 0))(
  ( (IArray!5808 (innerList!2961 List!8708)) )
))
(declare-datatypes ((Conc!2903 0))(
  ( (Node!2903 (left!6432 Conc!2903) (right!6762 Conc!2903) (csize!6036 Int) (cheight!3114 Int)) (Leaf!4259 (xs!5590 IArray!5807) (csize!6037 Int)) (Empty!2903) )
))
(declare-datatypes ((BalanceConc!5818 0))(
  ( (BalanceConc!5819 (c!130375 Conc!2903)) )
))
(declare-fun lt!314257 () BalanceConc!5818)

(declare-fun ++!2233 (BalanceConc!5818 BalanceConc!5818) BalanceConc!5818)

(declare-fun singletonSeq!470 (Token!2968) BalanceConc!5818)

(declare-fun apply!1785 (TokenValueInjection!3126 BalanceConc!5816) TokenValue!1695)

(declare-datatypes ((KeywordValueInjection!78 0))(
  ( (KeywordValueInjection!79) )
))
(declare-fun injection!9 (KeywordValueInjection!78) TokenValueInjection!3126)

(declare-fun singletonSeq!471 ((_ BitVec 16)) BalanceConc!5816)

(declare-fun commaRule!0 (JsonLexer!262) Rule!3102)

(declare-datatypes ((WhitespaceValueInjection!58 0))(
  ( (WhitespaceValueInjection!59) )
))
(declare-fun injection!7 (WhitespaceValueInjection!58) TokenValueInjection!3126)

(declare-fun whitespaceRule!0 (JsonLexer!262) Rule!3102)

(assert (=> b!774388 (= lt!314257 (++!2233 (singletonSeq!470 (Token!2969 (apply!1785 (injection!9 KeywordValueInjection!79) (singletonSeq!471 #x002C)) (commaRule!0 JsonLexer!263) 1 (Cons!8692 #x002C Nil!8692))) (singletonSeq!470 (Token!2969 (apply!1785 (injection!7 WhitespaceValueInjection!59) (singletonSeq!471 #x000A)) (whitespaceRule!0 JsonLexer!263) 1 (Cons!8692 #x000A Nil!8692)))))))

(assert (= (and start!71774 res!338899) b!774387))

(assert (= (and b!774387 res!338898) b!774388))

(declare-fun m!1042013 () Bool)

(assert (=> start!71774 m!1042013))

(declare-fun m!1042015 () Bool)

(assert (=> start!71774 m!1042015))

(declare-fun m!1042017 () Bool)

(assert (=> b!774387 m!1042017))

(declare-fun m!1042019 () Bool)

(assert (=> b!774388 m!1042019))

(declare-fun m!1042021 () Bool)

(assert (=> b!774388 m!1042021))

(declare-fun m!1042023 () Bool)

(assert (=> b!774388 m!1042023))

(declare-fun m!1042025 () Bool)

(assert (=> b!774388 m!1042025))

(declare-fun m!1042027 () Bool)

(assert (=> b!774388 m!1042027))

(assert (=> b!774388 m!1042021))

(declare-fun m!1042029 () Bool)

(assert (=> b!774388 m!1042029))

(declare-fun m!1042031 () Bool)

(assert (=> b!774388 m!1042031))

(assert (=> b!774388 m!1042027))

(declare-fun m!1042033 () Bool)

(assert (=> b!774388 m!1042033))

(declare-fun m!1042035 () Bool)

(assert (=> b!774388 m!1042035))

(assert (=> b!774388 m!1042023))

(declare-fun m!1042037 () Bool)

(assert (=> b!774388 m!1042037))

(assert (=> b!774388 m!1042031))

(assert (=> b!774388 m!1042019))

(assert (=> b!774388 m!1042029))

(declare-fun m!1042039 () Bool)

(assert (=> b!774388 m!1042039))

(check-sat (not start!71774) (not b!774388) (not b!774387))
(check-sat)
