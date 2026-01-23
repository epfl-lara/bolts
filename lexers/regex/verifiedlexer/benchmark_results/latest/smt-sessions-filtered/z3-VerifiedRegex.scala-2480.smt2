; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131120 () Bool)

(assert start!131120)

(declare-fun b!1422141 () Bool)

(declare-fun e!907800 () Bool)

(declare-fun e!907798 () Bool)

(assert (=> b!1422141 (= e!907800 e!907798)))

(declare-fun res!643868 () Bool)

(assert (=> b!1422141 (=> (not res!643868) (not e!907798))))

(declare-datatypes ((C!7924 0))(
  ( (C!7925 (val!4532 Int)) )
))
(declare-datatypes ((List!14725 0))(
  ( (Nil!14659) (Cons!14659 (h!20060 C!7924) (t!124544 List!14725)) )
))
(declare-datatypes ((IArray!9893 0))(
  ( (IArray!9894 (innerList!5004 List!14725)) )
))
(declare-datatypes ((Conc!4944 0))(
  ( (Node!4944 (left!12526 Conc!4944) (right!12856 Conc!4944) (csize!10118 Int) (cheight!5155 Int)) (Leaf!7425 (xs!7673 IArray!9893) (csize!10119 Int)) (Empty!4944) )
))
(declare-datatypes ((BalanceConc!9828 0))(
  ( (BalanceConc!9829 (c!233808 Conc!4944)) )
))
(declare-datatypes ((List!14726 0))(
  ( (Nil!14660) (Cons!14660 (h!20061 (_ BitVec 16)) (t!124545 List!14726)) )
))
(declare-datatypes ((TokenValue!2649 0))(
  ( (FloatLiteralValue!5298 (text!18988 List!14726)) (TokenValueExt!2648 (__x!9099 Int)) (Broken!13245 (value!82553 List!14726)) (Object!2714) (End!2649) (Def!2649) (Underscore!2649) (Match!2649) (Else!2649) (Error!2649) (Case!2649) (If!2649) (Extends!2649) (Abstract!2649) (Class!2649) (Val!2649) (DelimiterValue!5298 (del!2709 List!14726)) (KeywordValue!2655 (value!82554 List!14726)) (CommentValue!5298 (value!82555 List!14726)) (WhitespaceValue!5298 (value!82556 List!14726)) (IndentationValue!2649 (value!82557 List!14726)) (String!17500) (Int32!2649) (Broken!13246 (value!82558 List!14726)) (Boolean!2650) (Unit!22023) (OperatorValue!2652 (op!2709 List!14726)) (IdentifierValue!5298 (value!82559 List!14726)) (IdentifierValue!5299 (value!82560 List!14726)) (WhitespaceValue!5299 (value!82561 List!14726)) (True!5298) (False!5298) (Broken!13247 (value!82562 List!14726)) (Broken!13248 (value!82563 List!14726)) (True!5299) (RightBrace!2649) (RightBracket!2649) (Colon!2649) (Null!2649) (Comma!2649) (LeftBracket!2649) (False!5299) (LeftBrace!2649) (ImaginaryLiteralValue!2649 (text!18989 List!14726)) (StringLiteralValue!7947 (value!82564 List!14726)) (EOFValue!2649 (value!82565 List!14726)) (IdentValue!2649 (value!82566 List!14726)) (DelimiterValue!5299 (value!82567 List!14726)) (DedentValue!2649 (value!82568 List!14726)) (NewLineValue!2649 (value!82569 List!14726)) (IntegerValue!7947 (value!82570 (_ BitVec 32)) (text!18990 List!14726)) (IntegerValue!7948 (value!82571 Int) (text!18991 List!14726)) (Times!2649) (Or!2649) (Equal!2649) (Minus!2649) (Broken!13249 (value!82572 List!14726)) (And!2649) (Div!2649) (LessEqual!2649) (Mod!2649) (Concat!6522) (Not!2649) (Plus!2649) (SpaceValue!2649 (value!82573 List!14726)) (IntegerValue!7949 (value!82574 Int) (text!18992 List!14726)) (StringLiteralValue!7948 (text!18993 List!14726)) (FloatLiteralValue!5299 (text!18994 List!14726)) (BytesLiteralValue!2649 (value!82575 List!14726)) (CommentValue!5299 (value!82576 List!14726)) (StringLiteralValue!7949 (value!82577 List!14726)) (ErrorTokenValue!2649 (msg!2710 List!14726)) )
))
(declare-datatypes ((Regex!3873 0))(
  ( (ElementMatch!3873 (c!233809 C!7924)) (Concat!6523 (regOne!8258 Regex!3873) (regTwo!8258 Regex!3873)) (EmptyExpr!3873) (Star!3873 (reg!4202 Regex!3873)) (EmptyLang!3873) (Union!3873 (regOne!8259 Regex!3873) (regTwo!8259 Regex!3873)) )
))
(declare-datatypes ((String!17501 0))(
  ( (String!17502 (value!82578 String)) )
))
(declare-datatypes ((TokenValueInjection!4958 0))(
  ( (TokenValueInjection!4959 (toValue!3858 Int) (toChars!3717 Int)) )
))
(declare-datatypes ((Rule!4918 0))(
  ( (Rule!4919 (regex!2559 Regex!3873) (tag!2821 String!17501) (isSeparator!2559 Bool) (transformation!2559 TokenValueInjection!4958)) )
))
(declare-datatypes ((Token!4780 0))(
  ( (Token!4781 (value!82579 TokenValue!2649) (rule!4322 Rule!4918) (size!12080 Int) (originalCharacters!3421 List!14725)) )
))
(declare-datatypes ((List!14727 0))(
  ( (Nil!14661) (Cons!14661 (h!20062 Token!4780) (t!124546 List!14727)) )
))
(declare-datatypes ((IArray!9895 0))(
  ( (IArray!9896 (innerList!5005 List!14727)) )
))
(declare-datatypes ((Conc!4945 0))(
  ( (Node!4945 (left!12527 Conc!4945) (right!12857 Conc!4945) (csize!10120 Int) (cheight!5156 Int)) (Leaf!7426 (xs!7674 IArray!9895) (csize!10121 Int)) (Empty!4945) )
))
(declare-datatypes ((BalanceConc!9830 0))(
  ( (BalanceConc!9831 (c!233810 Conc!4945)) )
))
(declare-datatypes ((List!14728 0))(
  ( (Nil!14662) (Cons!14662 (h!20063 Rule!4918) (t!124547 List!14728)) )
))
(declare-datatypes ((PrintableTokens!900 0))(
  ( (PrintableTokens!901 (rules!11186 List!14728) (tokens!1878 BalanceConc!9830)) )
))
(declare-fun other!32 () PrintableTokens!900)

(declare-fun isEmpty!9057 (BalanceConc!9830) Bool)

(assert (=> b!1422141 (= res!643868 (not (isEmpty!9057 (tokens!1878 other!32))))))

(declare-datatypes ((Unit!22024 0))(
  ( (Unit!22025) )
))
(declare-fun lt!481060 () Unit!22024)

(declare-fun thiss!10022 () PrintableTokens!900)

(declare-fun lemmaInvariant!255 (PrintableTokens!900) Unit!22024)

(assert (=> b!1422141 (= lt!481060 (lemmaInvariant!255 thiss!10022))))

(declare-fun lt!481058 () Unit!22024)

(assert (=> b!1422141 (= lt!481058 (lemmaInvariant!255 other!32))))

(declare-fun e!907799 () Bool)

(declare-fun e!907796 () Bool)

(declare-fun tp!403139 () Bool)

(declare-fun b!1422142 () Bool)

(declare-fun inv!19425 (BalanceConc!9830) Bool)

(assert (=> b!1422142 (= e!907796 (and tp!403139 (inv!19425 (tokens!1878 thiss!10022)) e!907799))))

(declare-fun res!643869 () Bool)

(assert (=> start!131120 (=> (not res!643869) (not e!907800))))

(assert (=> start!131120 (= res!643869 (= (rules!11186 thiss!10022) (rules!11186 other!32)))))

(assert (=> start!131120 e!907800))

(declare-fun inv!19426 (PrintableTokens!900) Bool)

(assert (=> start!131120 (and (inv!19426 thiss!10022) e!907796)))

(declare-fun e!907801 () Bool)

(assert (=> start!131120 (and (inv!19426 other!32) e!907801)))

(declare-fun b!1422143 () Bool)

(assert (=> b!1422143 (= e!907798 false)))

(declare-fun lt!481059 () List!14727)

(declare-fun ++!3877 (List!14727 List!14727) List!14727)

(declare-fun list!5813 (BalanceConc!9830) List!14727)

(assert (=> b!1422143 (= lt!481059 (++!3877 (list!5813 (BalanceConc!9831 Empty!4945)) (list!5813 (tokens!1878 other!32))))))

(declare-fun b!1422144 () Bool)

(declare-fun res!643867 () Bool)

(assert (=> b!1422144 (=> (not res!643867) (not e!907798))))

(assert (=> b!1422144 (= res!643867 (isEmpty!9057 (tokens!1878 thiss!10022)))))

(declare-fun b!1422145 () Bool)

(declare-fun tp!403140 () Bool)

(declare-fun inv!19427 (Conc!4945) Bool)

(assert (=> b!1422145 (= e!907799 (and (inv!19427 (c!233810 (tokens!1878 thiss!10022))) tp!403140))))

(declare-fun b!1422146 () Bool)

(declare-fun tp!403138 () Bool)

(declare-fun e!907797 () Bool)

(assert (=> b!1422146 (= e!907801 (and tp!403138 (inv!19425 (tokens!1878 other!32)) e!907797))))

(declare-fun b!1422147 () Bool)

(declare-fun tp!403137 () Bool)

(assert (=> b!1422147 (= e!907797 (and (inv!19427 (c!233810 (tokens!1878 other!32))) tp!403137))))

(declare-fun b!1422148 () Bool)

(declare-fun res!643870 () Bool)

(assert (=> b!1422148 (=> (not res!643870) (not e!907798))))

(declare-fun isEmpty!9058 (List!14727) Bool)

(assert (=> b!1422148 (= res!643870 (isEmpty!9058 (list!5813 (tokens!1878 thiss!10022))))))

(assert (= (and start!131120 res!643869) b!1422141))

(assert (= (and b!1422141 res!643868) b!1422144))

(assert (= (and b!1422144 res!643867) b!1422148))

(assert (= (and b!1422148 res!643870) b!1422143))

(assert (= b!1422142 b!1422145))

(assert (= start!131120 b!1422142))

(assert (= b!1422146 b!1422147))

(assert (= start!131120 b!1422146))

(declare-fun m!1613587 () Bool)

(assert (=> b!1422147 m!1613587))

(declare-fun m!1613589 () Bool)

(assert (=> b!1422148 m!1613589))

(assert (=> b!1422148 m!1613589))

(declare-fun m!1613591 () Bool)

(assert (=> b!1422148 m!1613591))

(declare-fun m!1613593 () Bool)

(assert (=> b!1422146 m!1613593))

(declare-fun m!1613595 () Bool)

(assert (=> b!1422143 m!1613595))

(declare-fun m!1613597 () Bool)

(assert (=> b!1422143 m!1613597))

(assert (=> b!1422143 m!1613595))

(assert (=> b!1422143 m!1613597))

(declare-fun m!1613599 () Bool)

(assert (=> b!1422143 m!1613599))

(declare-fun m!1613601 () Bool)

(assert (=> b!1422142 m!1613601))

(declare-fun m!1613603 () Bool)

(assert (=> start!131120 m!1613603))

(declare-fun m!1613605 () Bool)

(assert (=> start!131120 m!1613605))

(declare-fun m!1613607 () Bool)

(assert (=> b!1422141 m!1613607))

(declare-fun m!1613609 () Bool)

(assert (=> b!1422141 m!1613609))

(declare-fun m!1613611 () Bool)

(assert (=> b!1422141 m!1613611))

(declare-fun m!1613613 () Bool)

(assert (=> b!1422144 m!1613613))

(declare-fun m!1613615 () Bool)

(assert (=> b!1422145 m!1613615))

(check-sat (not b!1422148) (not b!1422141) (not b!1422146) (not b!1422147) (not b!1422145) (not start!131120) (not b!1422143) (not b!1422144) (not b!1422142))
(check-sat)
