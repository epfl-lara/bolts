; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133112 () Bool)

(assert start!133112)

(declare-fun tp!406624 () Bool)

(declare-datatypes ((C!8056 0))(
  ( (C!8057 (val!4598 Int)) )
))
(declare-datatypes ((List!15004 0))(
  ( (Nil!14938) (Cons!14938 (h!20339 C!8056) (t!127411 List!15004)) )
))
(declare-datatypes ((IArray!10157 0))(
  ( (IArray!10158 (innerList!5136 List!15004)) )
))
(declare-datatypes ((Conc!5076 0))(
  ( (Node!5076 (left!12727 Conc!5076) (right!13057 Conc!5076) (csize!10382 Int) (cheight!5287 Int)) (Leaf!7590 (xs!7809 IArray!10157) (csize!10383 Int)) (Empty!5076) )
))
(declare-datatypes ((BalanceConc!10092 0))(
  ( (BalanceConc!10093 (c!236026 Conc!5076)) )
))
(declare-datatypes ((List!15005 0))(
  ( (Nil!14939) (Cons!14939 (h!20340 (_ BitVec 16)) (t!127412 List!15005)) )
))
(declare-datatypes ((TokenValue!2715 0))(
  ( (FloatLiteralValue!5430 (text!19450 List!15005)) (TokenValueExt!2714 (__x!9225 Int)) (Broken!13575 (value!84434 List!15005)) (Object!2780) (End!2715) (Def!2715) (Underscore!2715) (Match!2715) (Else!2715) (Error!2715) (Case!2715) (If!2715) (Extends!2715) (Abstract!2715) (Class!2715) (Val!2715) (DelimiterValue!5430 (del!2775 List!15005)) (KeywordValue!2721 (value!84435 List!15005)) (CommentValue!5430 (value!84436 List!15005)) (WhitespaceValue!5430 (value!84437 List!15005)) (IndentationValue!2715 (value!84438 List!15005)) (String!17830) (Int32!2715) (Broken!13576 (value!84439 List!15005)) (Boolean!2716) (Unit!23006) (OperatorValue!2718 (op!2775 List!15005)) (IdentifierValue!5430 (value!84440 List!15005)) (IdentifierValue!5431 (value!84441 List!15005)) (WhitespaceValue!5431 (value!84442 List!15005)) (True!5430) (False!5430) (Broken!13577 (value!84443 List!15005)) (Broken!13578 (value!84444 List!15005)) (True!5431) (RightBrace!2715) (RightBracket!2715) (Colon!2715) (Null!2715) (Comma!2715) (LeftBracket!2715) (False!5431) (LeftBrace!2715) (ImaginaryLiteralValue!2715 (text!19451 List!15005)) (StringLiteralValue!8145 (value!84445 List!15005)) (EOFValue!2715 (value!84446 List!15005)) (IdentValue!2715 (value!84447 List!15005)) (DelimiterValue!5431 (value!84448 List!15005)) (DedentValue!2715 (value!84449 List!15005)) (NewLineValue!2715 (value!84450 List!15005)) (IntegerValue!8145 (value!84451 (_ BitVec 32)) (text!19452 List!15005)) (IntegerValue!8146 (value!84452 Int) (text!19453 List!15005)) (Times!2715) (Or!2715) (Equal!2715) (Minus!2715) (Broken!13579 (value!84453 List!15005)) (And!2715) (Div!2715) (LessEqual!2715) (Mod!2715) (Concat!6654) (Not!2715) (Plus!2715) (SpaceValue!2715 (value!84454 List!15005)) (IntegerValue!8147 (value!84455 Int) (text!19454 List!15005)) (StringLiteralValue!8146 (text!19455 List!15005)) (FloatLiteralValue!5431 (text!19456 List!15005)) (BytesLiteralValue!2715 (value!84456 List!15005)) (CommentValue!5431 (value!84457 List!15005)) (StringLiteralValue!8147 (value!84458 List!15005)) (ErrorTokenValue!2715 (msg!2776 List!15005)) )
))
(declare-datatypes ((Regex!3939 0))(
  ( (ElementMatch!3939 (c!236027 C!8056)) (Concat!6655 (regOne!8390 Regex!3939) (regTwo!8390 Regex!3939)) (EmptyExpr!3939) (Star!3939 (reg!4268 Regex!3939)) (EmptyLang!3939) (Union!3939 (regOne!8391 Regex!3939) (regTwo!8391 Regex!3939)) )
))
(declare-datatypes ((String!17831 0))(
  ( (String!17832 (value!84459 String)) )
))
(declare-datatypes ((TokenValueInjection!5090 0))(
  ( (TokenValueInjection!5091 (toValue!3928 Int) (toChars!3787 Int)) )
))
(declare-datatypes ((Rule!5050 0))(
  ( (Rule!5051 (regex!2625 Regex!3939) (tag!2887 String!17831) (isSeparator!2625 Bool) (transformation!2625 TokenValueInjection!5090)) )
))
(declare-datatypes ((Token!4912 0))(
  ( (Token!4913 (value!84460 TokenValue!2715) (rule!4390 Rule!5050) (size!12247 Int) (originalCharacters!3487 List!15004)) )
))
(declare-datatypes ((List!15006 0))(
  ( (Nil!14940) (Cons!14940 (h!20341 Token!4912) (t!127413 List!15006)) )
))
(declare-datatypes ((IArray!10159 0))(
  ( (IArray!10160 (innerList!5137 List!15006)) )
))
(declare-datatypes ((Conc!5077 0))(
  ( (Node!5077 (left!12728 Conc!5077) (right!13058 Conc!5077) (csize!10384 Int) (cheight!5288 Int)) (Leaf!7591 (xs!7810 IArray!10159) (csize!10385 Int)) (Empty!5077) )
))
(declare-datatypes ((BalanceConc!10094 0))(
  ( (BalanceConc!10095 (c!236028 Conc!5077)) )
))
(declare-datatypes ((List!15007 0))(
  ( (Nil!14941) (Cons!14941 (h!20342 Rule!5050) (t!127414 List!15007)) )
))
(declare-datatypes ((PrintableTokens!1032 0))(
  ( (PrintableTokens!1033 (rules!11418 List!15007) (tokens!1990 BalanceConc!10094)) )
))
(declare-fun other!32 () PrintableTokens!1032)

(declare-fun b!1435777 () Bool)

(declare-fun e!916469 () Bool)

(declare-fun e!916467 () Bool)

(declare-fun inv!19857 (BalanceConc!10094) Bool)

(assert (=> b!1435777 (= e!916469 (and tp!406624 (inv!19857 (tokens!1990 other!32)) e!916467))))

(declare-fun b!1435778 () Bool)

(declare-fun e!916466 () Bool)

(assert (=> b!1435778 (= e!916466 false)))

(declare-fun lt!490814 () Bool)

(declare-fun thiss!10022 () PrintableTokens!1032)

(declare-fun isEmpty!9285 (BalanceConc!10094) Bool)

(assert (=> b!1435778 (= lt!490814 (isEmpty!9285 (tokens!1990 thiss!10022)))))

(declare-fun b!1435779 () Bool)

(declare-fun e!916468 () Bool)

(declare-fun tp!406626 () Bool)

(declare-fun inv!19858 (Conc!5077) Bool)

(assert (=> b!1435779 (= e!916468 (and (inv!19858 (c!236028 (tokens!1990 thiss!10022))) tp!406626))))

(declare-fun b!1435780 () Bool)

(declare-fun tp!406623 () Bool)

(assert (=> b!1435780 (= e!916467 (and (inv!19858 (c!236028 (tokens!1990 other!32))) tp!406623))))

(declare-fun e!916471 () Bool)

(declare-fun b!1435781 () Bool)

(declare-fun tp!406625 () Bool)

(assert (=> b!1435781 (= e!916471 (and tp!406625 (inv!19857 (tokens!1990 thiss!10022)) e!916468))))

(declare-fun b!1435782 () Bool)

(declare-fun e!916470 () Bool)

(assert (=> b!1435782 (= e!916470 e!916466)))

(declare-fun res!650124 () Bool)

(assert (=> b!1435782 (=> (not res!650124) (not e!916466))))

(assert (=> b!1435782 (= res!650124 (not (isEmpty!9285 (tokens!1990 other!32))))))

(declare-datatypes ((Unit!23007 0))(
  ( (Unit!23008) )
))
(declare-fun lt!490813 () Unit!23007)

(declare-fun lemmaInvariant!321 (PrintableTokens!1032) Unit!23007)

(assert (=> b!1435782 (= lt!490813 (lemmaInvariant!321 thiss!10022))))

(declare-fun lt!490812 () Unit!23007)

(assert (=> b!1435782 (= lt!490812 (lemmaInvariant!321 other!32))))

(declare-fun res!650125 () Bool)

(assert (=> start!133112 (=> (not res!650125) (not e!916470))))

(assert (=> start!133112 (= res!650125 (= (rules!11418 thiss!10022) (rules!11418 other!32)))))

(assert (=> start!133112 e!916470))

(declare-fun inv!19859 (PrintableTokens!1032) Bool)

(assert (=> start!133112 (and (inv!19859 thiss!10022) e!916471)))

(assert (=> start!133112 (and (inv!19859 other!32) e!916469)))

(assert (= (and start!133112 res!650125) b!1435782))

(assert (= (and b!1435782 res!650124) b!1435778))

(assert (= b!1435781 b!1435779))

(assert (= start!133112 b!1435781))

(assert (= b!1435777 b!1435780))

(assert (= start!133112 b!1435777))

(declare-fun m!1641469 () Bool)

(assert (=> b!1435778 m!1641469))

(declare-fun m!1641471 () Bool)

(assert (=> b!1435779 m!1641471))

(declare-fun m!1641473 () Bool)

(assert (=> start!133112 m!1641473))

(declare-fun m!1641475 () Bool)

(assert (=> start!133112 m!1641475))

(declare-fun m!1641477 () Bool)

(assert (=> b!1435777 m!1641477))

(declare-fun m!1641479 () Bool)

(assert (=> b!1435781 m!1641479))

(declare-fun m!1641481 () Bool)

(assert (=> b!1435782 m!1641481))

(declare-fun m!1641483 () Bool)

(assert (=> b!1435782 m!1641483))

(declare-fun m!1641485 () Bool)

(assert (=> b!1435782 m!1641485))

(declare-fun m!1641487 () Bool)

(assert (=> b!1435780 m!1641487))

(check-sat (not start!133112) (not b!1435778) (not b!1435781) (not b!1435782) (not b!1435780) (not b!1435779) (not b!1435777))
(check-sat)
