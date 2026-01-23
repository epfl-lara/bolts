; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!135168 () Bool)

(assert start!135168)

(declare-fun b!1450431 () Bool)

(declare-fun e!925476 () Bool)

(declare-fun e!925474 () Bool)

(assert (=> b!1450431 (= e!925476 e!925474)))

(declare-fun res!656735 () Bool)

(assert (=> b!1450431 (=> (not res!656735) (not e!925474))))

(declare-datatypes ((C!8122 0))(
  ( (C!8123 (val!4631 Int)) )
))
(declare-datatypes ((List!15160 0))(
  ( (Nil!15094) (Cons!15094 (h!20495 C!8122) (t!130553 List!15160)) )
))
(declare-datatypes ((IArray!10289 0))(
  ( (IArray!10290 (innerList!5202 List!15160)) )
))
(declare-datatypes ((Conc!5142 0))(
  ( (Node!5142 (left!12842 Conc!5142) (right!13172 Conc!5142) (csize!10514 Int) (cheight!5353 Int)) (Leaf!7673 (xs!7883 IArray!10289) (csize!10515 Int)) (Empty!5142) )
))
(declare-datatypes ((BalanceConc!10224 0))(
  ( (BalanceConc!10225 (c!238799 Conc!5142)) )
))
(declare-datatypes ((List!15161 0))(
  ( (Nil!15095) (Cons!15095 (h!20496 (_ BitVec 16)) (t!130554 List!15161)) )
))
(declare-datatypes ((TokenValue!2748 0))(
  ( (FloatLiteralValue!5496 (text!19681 List!15161)) (TokenValueExt!2747 (__x!9286 Int)) (Broken!13740 (value!85376 List!15161)) (Object!2813) (End!2748) (Def!2748) (Underscore!2748) (Match!2748) (Else!2748) (Error!2748) (Case!2748) (If!2748) (Extends!2748) (Abstract!2748) (Class!2748) (Val!2748) (DelimiterValue!5496 (del!2808 List!15161)) (KeywordValue!2754 (value!85377 List!15161)) (CommentValue!5496 (value!85378 List!15161)) (WhitespaceValue!5496 (value!85379 List!15161)) (IndentationValue!2748 (value!85380 List!15161)) (String!17997) (Int32!2748) (Broken!13741 (value!85381 List!15161)) (Boolean!2749) (Unit!24005) (OperatorValue!2751 (op!2808 List!15161)) (IdentifierValue!5496 (value!85382 List!15161)) (IdentifierValue!5497 (value!85383 List!15161)) (WhitespaceValue!5497 (value!85384 List!15161)) (True!5496) (False!5496) (Broken!13742 (value!85385 List!15161)) (Broken!13743 (value!85386 List!15161)) (True!5497) (RightBrace!2748) (RightBracket!2748) (Colon!2748) (Null!2748) (Comma!2748) (LeftBracket!2748) (False!5497) (LeftBrace!2748) (ImaginaryLiteralValue!2748 (text!19682 List!15161)) (StringLiteralValue!8244 (value!85387 List!15161)) (EOFValue!2748 (value!85388 List!15161)) (IdentValue!2748 (value!85389 List!15161)) (DelimiterValue!5497 (value!85390 List!15161)) (DedentValue!2748 (value!85391 List!15161)) (NewLineValue!2748 (value!85392 List!15161)) (IntegerValue!8244 (value!85393 (_ BitVec 32)) (text!19683 List!15161)) (IntegerValue!8245 (value!85394 Int) (text!19684 List!15161)) (Times!2748) (Or!2748) (Equal!2748) (Minus!2748) (Broken!13744 (value!85395 List!15161)) (And!2748) (Div!2748) (LessEqual!2748) (Mod!2748) (Concat!6720) (Not!2748) (Plus!2748) (SpaceValue!2748 (value!85396 List!15161)) (IntegerValue!8246 (value!85397 Int) (text!19685 List!15161)) (StringLiteralValue!8245 (text!19686 List!15161)) (FloatLiteralValue!5497 (text!19687 List!15161)) (BytesLiteralValue!2748 (value!85398 List!15161)) (CommentValue!5497 (value!85399 List!15161)) (StringLiteralValue!8246 (value!85400 List!15161)) (ErrorTokenValue!2748 (msg!2809 List!15161)) )
))
(declare-datatypes ((Regex!3972 0))(
  ( (ElementMatch!3972 (c!238800 C!8122)) (Concat!6721 (regOne!8456 Regex!3972) (regTwo!8456 Regex!3972)) (EmptyExpr!3972) (Star!3972 (reg!4301 Regex!3972)) (EmptyLang!3972) (Union!3972 (regOne!8457 Regex!3972) (regTwo!8457 Regex!3972)) )
))
(declare-datatypes ((String!17998 0))(
  ( (String!17999 (value!85401 String)) )
))
(declare-datatypes ((TokenValueInjection!5156 0))(
  ( (TokenValueInjection!5157 (toValue!3965 Int) (toChars!3824 Int)) )
))
(declare-datatypes ((Rule!5116 0))(
  ( (Rule!5117 (regex!2658 Regex!3972) (tag!2922 String!17998) (isSeparator!2658 Bool) (transformation!2658 TokenValueInjection!5156)) )
))
(declare-datatypes ((Token!4978 0))(
  ( (Token!4979 (value!85402 TokenValue!2748) (rule!4431 Rule!5116) (size!12353 Int) (originalCharacters!3520 List!15160)) )
))
(declare-datatypes ((List!15162 0))(
  ( (Nil!15096) (Cons!15096 (h!20497 Token!4978) (t!130555 List!15162)) )
))
(declare-datatypes ((IArray!10291 0))(
  ( (IArray!10292 (innerList!5203 List!15162)) )
))
(declare-datatypes ((Conc!5143 0))(
  ( (Node!5143 (left!12843 Conc!5143) (right!13173 Conc!5143) (csize!10516 Int) (cheight!5354 Int)) (Leaf!7674 (xs!7884 IArray!10291) (csize!10517 Int)) (Empty!5143) )
))
(declare-datatypes ((BalanceConc!10226 0))(
  ( (BalanceConc!10227 (c!238801 Conc!5143)) )
))
(declare-datatypes ((List!15163 0))(
  ( (Nil!15097) (Cons!15097 (h!20498 Rule!5116) (t!130556 List!15163)) )
))
(declare-datatypes ((PrintableTokens!1098 0))(
  ( (PrintableTokens!1099 (rules!11579 List!15163) (tokens!2063 BalanceConc!10226)) )
))
(declare-fun other!32 () PrintableTokens!1098)

(declare-fun isEmpty!9443 (BalanceConc!10226) Bool)

(assert (=> b!1450431 (= res!656735 (not (isEmpty!9443 (tokens!2063 other!32))))))

(declare-datatypes ((Unit!24006 0))(
  ( (Unit!24007) )
))
(declare-fun lt!499992 () Unit!24006)

(declare-fun thiss!10022 () PrintableTokens!1098)

(declare-fun lemmaInvariant!354 (PrintableTokens!1098) Unit!24006)

(assert (=> b!1450431 (= lt!499992 (lemmaInvariant!354 thiss!10022))))

(declare-fun lt!499995 () Unit!24006)

(assert (=> b!1450431 (= lt!499995 (lemmaInvariant!354 other!32))))

(declare-fun b!1450432 () Bool)

(declare-fun e!925473 () Bool)

(declare-fun tp!409222 () Bool)

(declare-fun inv!20145 (Conc!5143) Bool)

(assert (=> b!1450432 (= e!925473 (and (inv!20145 (c!238801 (tokens!2063 thiss!10022))) tp!409222))))

(declare-fun tp!409221 () Bool)

(declare-fun b!1450433 () Bool)

(declare-fun e!925478 () Bool)

(declare-fun e!925477 () Bool)

(declare-fun inv!20146 (BalanceConc!10226) Bool)

(assert (=> b!1450433 (= e!925477 (and tp!409221 (inv!20146 (tokens!2063 other!32)) e!925478))))

(declare-fun b!1450434 () Bool)

(declare-fun tp!409219 () Bool)

(assert (=> b!1450434 (= e!925478 (and (inv!20145 (c!238801 (tokens!2063 other!32))) tp!409219))))

(declare-fun res!656734 () Bool)

(assert (=> start!135168 (=> (not res!656734) (not e!925476))))

(assert (=> start!135168 (= res!656734 (= (rules!11579 thiss!10022) (rules!11579 other!32)))))

(assert (=> start!135168 e!925476))

(declare-fun e!925475 () Bool)

(declare-fun inv!20147 (PrintableTokens!1098) Bool)

(assert (=> start!135168 (and (inv!20147 thiss!10022) e!925475)))

(assert (=> start!135168 (and (inv!20147 other!32) e!925477)))

(declare-fun b!1450435 () Bool)

(declare-fun res!656733 () Bool)

(assert (=> b!1450435 (=> (not res!656733) (not e!925474))))

(assert (=> b!1450435 (= res!656733 (not (isEmpty!9443 (tokens!2063 thiss!10022))))))

(declare-fun b!1450436 () Bool)

(assert (=> b!1450436 (= e!925474 (not true))))

(declare-fun lt!499991 () Token!4978)

(declare-fun lt!499998 () Bool)

(declare-fun lt!499993 () Token!4978)

(declare-datatypes ((LexerInterface!2314 0))(
  ( (LexerInterfaceExt!2311 (__x!9287 Int)) (Lexer!2312) )
))
(declare-fun separableTokensPredicate!523 (LexerInterface!2314 Token!4978 Token!4978 List!15163) Bool)

(assert (=> b!1450436 (= lt!499998 (separableTokensPredicate!523 Lexer!2312 lt!499991 lt!499993 (rules!11579 thiss!10022)))))

(declare-fun rulesProduceIndividualToken!1233 (LexerInterface!2314 List!15163 Token!4978) Bool)

(assert (=> b!1450436 (rulesProduceIndividualToken!1233 Lexer!2312 (rules!11579 thiss!10022) lt!499993)))

(declare-fun lt!499997 () Unit!24006)

(declare-fun lt!499990 () List!15162)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!416 (LexerInterface!2314 List!15163 List!15162 Token!4978) Unit!24006)

(assert (=> b!1450436 (= lt!499997 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!416 Lexer!2312 (rules!11579 thiss!10022) lt!499990 lt!499993))))

(declare-fun head!2964 (BalanceConc!10226) Token!4978)

(assert (=> b!1450436 (= lt!499993 (head!2964 (tokens!2063 other!32)))))

(declare-fun list!6035 (BalanceConc!10226) List!15162)

(assert (=> b!1450436 (= lt!499990 (list!6035 (tokens!2063 other!32)))))

(assert (=> b!1450436 (rulesProduceIndividualToken!1233 Lexer!2312 (rules!11579 thiss!10022) lt!499991)))

(declare-fun lt!499996 () List!15162)

(declare-fun lt!499994 () Unit!24006)

(assert (=> b!1450436 (= lt!499994 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!416 Lexer!2312 (rules!11579 thiss!10022) lt!499996 lt!499991))))

(declare-fun last!236 (BalanceConc!10226) Token!4978)

(assert (=> b!1450436 (= lt!499991 (last!236 (tokens!2063 thiss!10022)))))

(assert (=> b!1450436 (= lt!499996 (list!6035 (tokens!2063 thiss!10022)))))

(declare-fun b!1450437 () Bool)

(declare-fun tp!409220 () Bool)

(assert (=> b!1450437 (= e!925475 (and tp!409220 (inv!20146 (tokens!2063 thiss!10022)) e!925473))))

(assert (= (and start!135168 res!656734) b!1450431))

(assert (= (and b!1450431 res!656735) b!1450435))

(assert (= (and b!1450435 res!656733) b!1450436))

(assert (= b!1450437 b!1450432))

(assert (= start!135168 b!1450437))

(assert (= b!1450433 b!1450434))

(assert (= start!135168 b!1450433))

(declare-fun m!1673737 () Bool)

(assert (=> b!1450436 m!1673737))

(declare-fun m!1673739 () Bool)

(assert (=> b!1450436 m!1673739))

(declare-fun m!1673741 () Bool)

(assert (=> b!1450436 m!1673741))

(declare-fun m!1673743 () Bool)

(assert (=> b!1450436 m!1673743))

(declare-fun m!1673745 () Bool)

(assert (=> b!1450436 m!1673745))

(declare-fun m!1673747 () Bool)

(assert (=> b!1450436 m!1673747))

(declare-fun m!1673749 () Bool)

(assert (=> b!1450436 m!1673749))

(declare-fun m!1673751 () Bool)

(assert (=> b!1450436 m!1673751))

(declare-fun m!1673753 () Bool)

(assert (=> b!1450436 m!1673753))

(declare-fun m!1673755 () Bool)

(assert (=> b!1450437 m!1673755))

(declare-fun m!1673757 () Bool)

(assert (=> b!1450432 m!1673757))

(declare-fun m!1673759 () Bool)

(assert (=> b!1450435 m!1673759))

(declare-fun m!1673761 () Bool)

(assert (=> start!135168 m!1673761))

(declare-fun m!1673763 () Bool)

(assert (=> start!135168 m!1673763))

(declare-fun m!1673765 () Bool)

(assert (=> b!1450433 m!1673765))

(declare-fun m!1673767 () Bool)

(assert (=> b!1450431 m!1673767))

(declare-fun m!1673769 () Bool)

(assert (=> b!1450431 m!1673769))

(declare-fun m!1673771 () Bool)

(assert (=> b!1450431 m!1673771))

(declare-fun m!1673773 () Bool)

(assert (=> b!1450434 m!1673773))

(push 1)

(assert (not b!1450431))

(assert (not b!1450432))

(assert (not b!1450434))

(assert (not b!1450437))

(assert (not b!1450433))

(assert (not start!135168))

(assert (not b!1450435))

(assert (not b!1450436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

