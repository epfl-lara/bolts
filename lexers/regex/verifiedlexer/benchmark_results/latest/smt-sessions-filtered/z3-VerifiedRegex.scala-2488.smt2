; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131388 () Bool)

(assert start!131388)

(declare-fun tp!403517 () Bool)

(declare-datatypes ((C!7956 0))(
  ( (C!7957 (val!4548 Int)) )
))
(declare-datatypes ((List!14789 0))(
  ( (Nil!14723) (Cons!14723 (h!20124 C!7956) (t!124632 List!14789)) )
))
(declare-datatypes ((IArray!9957 0))(
  ( (IArray!9958 (innerList!5036 List!14789)) )
))
(declare-datatypes ((Conc!4976 0))(
  ( (Node!4976 (left!12566 Conc!4976) (right!12896 Conc!4976) (csize!10182 Int) (cheight!5187 Int)) (Leaf!7465 (xs!7705 IArray!9957) (csize!10183 Int)) (Empty!4976) )
))
(declare-datatypes ((BalanceConc!9892 0))(
  ( (BalanceConc!9893 (c!234044 Conc!4976)) )
))
(declare-datatypes ((List!14790 0))(
  ( (Nil!14724) (Cons!14724 (h!20125 (_ BitVec 16)) (t!124633 List!14790)) )
))
(declare-datatypes ((TokenValue!2665 0))(
  ( (FloatLiteralValue!5330 (text!19100 List!14790)) (TokenValueExt!2664 (__x!9129 Int)) (Broken!13325 (value!83009 List!14790)) (Object!2730) (End!2665) (Def!2665) (Underscore!2665) (Match!2665) (Else!2665) (Error!2665) (Case!2665) (If!2665) (Extends!2665) (Abstract!2665) (Class!2665) (Val!2665) (DelimiterValue!5330 (del!2725 List!14790)) (KeywordValue!2671 (value!83010 List!14790)) (CommentValue!5330 (value!83011 List!14790)) (WhitespaceValue!5330 (value!83012 List!14790)) (IndentationValue!2665 (value!83013 List!14790)) (String!17580) (Int32!2665) (Broken!13326 (value!83014 List!14790)) (Boolean!2666) (Unit!22221) (OperatorValue!2668 (op!2725 List!14790)) (IdentifierValue!5330 (value!83015 List!14790)) (IdentifierValue!5331 (value!83016 List!14790)) (WhitespaceValue!5331 (value!83017 List!14790)) (True!5330) (False!5330) (Broken!13327 (value!83018 List!14790)) (Broken!13328 (value!83019 List!14790)) (True!5331) (RightBrace!2665) (RightBracket!2665) (Colon!2665) (Null!2665) (Comma!2665) (LeftBracket!2665) (False!5331) (LeftBrace!2665) (ImaginaryLiteralValue!2665 (text!19101 List!14790)) (StringLiteralValue!7995 (value!83020 List!14790)) (EOFValue!2665 (value!83021 List!14790)) (IdentValue!2665 (value!83022 List!14790)) (DelimiterValue!5331 (value!83023 List!14790)) (DedentValue!2665 (value!83024 List!14790)) (NewLineValue!2665 (value!83025 List!14790)) (IntegerValue!7995 (value!83026 (_ BitVec 32)) (text!19102 List!14790)) (IntegerValue!7996 (value!83027 Int) (text!19103 List!14790)) (Times!2665) (Or!2665) (Equal!2665) (Minus!2665) (Broken!13329 (value!83028 List!14790)) (And!2665) (Div!2665) (LessEqual!2665) (Mod!2665) (Concat!6554) (Not!2665) (Plus!2665) (SpaceValue!2665 (value!83029 List!14790)) (IntegerValue!7997 (value!83030 Int) (text!19104 List!14790)) (StringLiteralValue!7996 (text!19105 List!14790)) (FloatLiteralValue!5331 (text!19106 List!14790)) (BytesLiteralValue!2665 (value!83031 List!14790)) (CommentValue!5331 (value!83032 List!14790)) (StringLiteralValue!7997 (value!83033 List!14790)) (ErrorTokenValue!2665 (msg!2726 List!14790)) )
))
(declare-datatypes ((Regex!3889 0))(
  ( (ElementMatch!3889 (c!234045 C!7956)) (Concat!6555 (regOne!8290 Regex!3889) (regTwo!8290 Regex!3889)) (EmptyExpr!3889) (Star!3889 (reg!4218 Regex!3889)) (EmptyLang!3889) (Union!3889 (regOne!8291 Regex!3889) (regTwo!8291 Regex!3889)) )
))
(declare-datatypes ((String!17581 0))(
  ( (String!17582 (value!83034 String)) )
))
(declare-datatypes ((TokenValueInjection!4990 0))(
  ( (TokenValueInjection!4991 (toValue!3874 Int) (toChars!3733 Int)) )
))
(declare-datatypes ((Rule!4950 0))(
  ( (Rule!4951 (regex!2575 Regex!3889) (tag!2837 String!17581) (isSeparator!2575 Bool) (transformation!2575 TokenValueInjection!4990)) )
))
(declare-datatypes ((Token!4812 0))(
  ( (Token!4813 (value!83035 TokenValue!2665) (rule!4338 Rule!4950) (size!12114 Int) (originalCharacters!3437 List!14789)) )
))
(declare-datatypes ((List!14791 0))(
  ( (Nil!14725) (Cons!14725 (h!20126 Token!4812) (t!124634 List!14791)) )
))
(declare-datatypes ((IArray!9959 0))(
  ( (IArray!9960 (innerList!5037 List!14791)) )
))
(declare-datatypes ((Conc!4977 0))(
  ( (Node!4977 (left!12567 Conc!4977) (right!12897 Conc!4977) (csize!10184 Int) (cheight!5188 Int)) (Leaf!7466 (xs!7706 IArray!9959) (csize!10185 Int)) (Empty!4977) )
))
(declare-datatypes ((BalanceConc!9894 0))(
  ( (BalanceConc!9895 (c!234046 Conc!4977)) )
))
(declare-datatypes ((List!14792 0))(
  ( (Nil!14726) (Cons!14726 (h!20127 Rule!4950) (t!124635 List!14792)) )
))
(declare-datatypes ((PrintableTokens!932 0))(
  ( (PrintableTokens!933 (rules!11208 List!14792) (tokens!1900 BalanceConc!9894)) )
))
(declare-fun thiss!10022 () PrintableTokens!932)

(declare-fun e!908798 () Bool)

(declare-fun b!1423566 () Bool)

(declare-fun e!908797 () Bool)

(declare-fun inv!19529 (BalanceConc!9894) Bool)

(assert (=> b!1423566 (= e!908798 (and tp!403517 (inv!19529 (tokens!1900 thiss!10022)) e!908797))))

(declare-fun b!1423568 () Bool)

(declare-fun e!908796 () Bool)

(declare-fun e!908799 () Bool)

(assert (=> b!1423568 (= e!908796 e!908799)))

(declare-fun res!644562 () Bool)

(assert (=> b!1423568 (=> (not res!644562) (not e!908799))))

(declare-fun other!32 () PrintableTokens!932)

(declare-fun isEmpty!9116 (BalanceConc!9894) Bool)

(assert (=> b!1423568 (= res!644562 (not (isEmpty!9116 (tokens!1900 other!32))))))

(declare-datatypes ((Unit!22222 0))(
  ( (Unit!22223) )
))
(declare-fun lt!482542 () Unit!22222)

(declare-fun lemmaInvariant!271 (PrintableTokens!932) Unit!22222)

(assert (=> b!1423568 (= lt!482542 (lemmaInvariant!271 thiss!10022))))

(declare-fun lt!482544 () Unit!22222)

(assert (=> b!1423568 (= lt!482544 (lemmaInvariant!271 other!32))))

(declare-fun b!1423569 () Bool)

(declare-fun e!908801 () Bool)

(declare-fun tp!403515 () Bool)

(declare-fun inv!19530 (Conc!4977) Bool)

(assert (=> b!1423569 (= e!908801 (and (inv!19530 (c!234046 (tokens!1900 other!32))) tp!403515))))

(declare-fun b!1423570 () Bool)

(declare-fun res!644564 () Bool)

(assert (=> b!1423570 (=> (not res!644564) (not e!908799))))

(assert (=> b!1423570 (= res!644564 (not (isEmpty!9116 (tokens!1900 thiss!10022))))))

(declare-fun b!1423571 () Bool)

(assert (=> b!1423571 (= e!908799 false)))

(declare-fun lt!482543 () List!14791)

(declare-fun list!5849 (BalanceConc!9894) List!14791)

(assert (=> b!1423571 (= lt!482543 (list!5849 (tokens!1900 thiss!10022)))))

(declare-fun b!1423572 () Bool)

(declare-fun tp!403518 () Bool)

(assert (=> b!1423572 (= e!908797 (and (inv!19530 (c!234046 (tokens!1900 thiss!10022))) tp!403518))))

(declare-fun res!644563 () Bool)

(assert (=> start!131388 (=> (not res!644563) (not e!908796))))

(assert (=> start!131388 (= res!644563 (= (rules!11208 thiss!10022) (rules!11208 other!32)))))

(assert (=> start!131388 e!908796))

(declare-fun inv!19531 (PrintableTokens!932) Bool)

(assert (=> start!131388 (and (inv!19531 thiss!10022) e!908798)))

(declare-fun e!908800 () Bool)

(assert (=> start!131388 (and (inv!19531 other!32) e!908800)))

(declare-fun b!1423567 () Bool)

(declare-fun tp!403516 () Bool)

(assert (=> b!1423567 (= e!908800 (and tp!403516 (inv!19529 (tokens!1900 other!32)) e!908801))))

(assert (= (and start!131388 res!644563) b!1423568))

(assert (= (and b!1423568 res!644562) b!1423570))

(assert (= (and b!1423570 res!644564) b!1423571))

(assert (= b!1423566 b!1423572))

(assert (= start!131388 b!1423566))

(assert (= b!1423567 b!1423569))

(assert (= start!131388 b!1423567))

(declare-fun m!1616775 () Bool)

(assert (=> b!1423569 m!1616775))

(declare-fun m!1616777 () Bool)

(assert (=> b!1423572 m!1616777))

(declare-fun m!1616779 () Bool)

(assert (=> b!1423567 m!1616779))

(declare-fun m!1616781 () Bool)

(assert (=> start!131388 m!1616781))

(declare-fun m!1616783 () Bool)

(assert (=> start!131388 m!1616783))

(declare-fun m!1616785 () Bool)

(assert (=> b!1423566 m!1616785))

(declare-fun m!1616787 () Bool)

(assert (=> b!1423568 m!1616787))

(declare-fun m!1616789 () Bool)

(assert (=> b!1423568 m!1616789))

(declare-fun m!1616791 () Bool)

(assert (=> b!1423568 m!1616791))

(declare-fun m!1616793 () Bool)

(assert (=> b!1423570 m!1616793))

(declare-fun m!1616795 () Bool)

(assert (=> b!1423571 m!1616795))

(check-sat (not b!1423567) (not b!1423566) (not start!131388) (not b!1423568) (not b!1423570) (not b!1423572) (not b!1423571) (not b!1423569))
(check-sat)
