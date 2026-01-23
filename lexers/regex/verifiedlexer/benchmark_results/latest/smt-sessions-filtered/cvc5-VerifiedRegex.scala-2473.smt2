; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!130866 () Bool)

(assert start!130866)

(declare-fun b!1420869 () Bool)

(declare-fun e!906899 () Bool)

(declare-datatypes ((C!7894 0))(
  ( (C!7895 (val!4517 Int)) )
))
(declare-datatypes ((List!14665 0))(
  ( (Nil!14599) (Cons!14599 (h!20000 C!7894) (t!124460 List!14665)) )
))
(declare-datatypes ((IArray!9833 0))(
  ( (IArray!9834 (innerList!4974 List!14665)) )
))
(declare-datatypes ((Conc!4914 0))(
  ( (Node!4914 (left!12489 Conc!4914) (right!12819 Conc!4914) (csize!10058 Int) (cheight!5125 Int)) (Leaf!7388 (xs!7643 IArray!9833) (csize!10059 Int)) (Empty!4914) )
))
(declare-datatypes ((BalanceConc!9768 0))(
  ( (BalanceConc!9769 (c!233575 Conc!4914)) )
))
(declare-datatypes ((List!14666 0))(
  ( (Nil!14600) (Cons!14600 (h!20001 (_ BitVec 16)) (t!124461 List!14666)) )
))
(declare-datatypes ((TokenValue!2634 0))(
  ( (FloatLiteralValue!5268 (text!18883 List!14666)) (TokenValueExt!2633 (__x!9070 Int)) (Broken!13170 (value!82127 List!14666)) (Object!2699) (End!2634) (Def!2634) (Underscore!2634) (Match!2634) (Else!2634) (Error!2634) (Case!2634) (If!2634) (Extends!2634) (Abstract!2634) (Class!2634) (Val!2634) (DelimiterValue!5268 (del!2694 List!14666)) (KeywordValue!2640 (value!82128 List!14666)) (CommentValue!5268 (value!82129 List!14666)) (WhitespaceValue!5268 (value!82130 List!14666)) (IndentationValue!2634 (value!82131 List!14666)) (String!17427) (Int32!2634) (Broken!13171 (value!82132 List!14666)) (Boolean!2635) (Unit!21798) (OperatorValue!2637 (op!2694 List!14666)) (IdentifierValue!5268 (value!82133 List!14666)) (IdentifierValue!5269 (value!82134 List!14666)) (WhitespaceValue!5269 (value!82135 List!14666)) (True!5268) (False!5268) (Broken!13172 (value!82136 List!14666)) (Broken!13173 (value!82137 List!14666)) (True!5269) (RightBrace!2634) (RightBracket!2634) (Colon!2634) (Null!2634) (Comma!2634) (LeftBracket!2634) (False!5269) (LeftBrace!2634) (ImaginaryLiteralValue!2634 (text!18884 List!14666)) (StringLiteralValue!7902 (value!82138 List!14666)) (EOFValue!2634 (value!82139 List!14666)) (IdentValue!2634 (value!82140 List!14666)) (DelimiterValue!5269 (value!82141 List!14666)) (DedentValue!2634 (value!82142 List!14666)) (NewLineValue!2634 (value!82143 List!14666)) (IntegerValue!7902 (value!82144 (_ BitVec 32)) (text!18885 List!14666)) (IntegerValue!7903 (value!82145 Int) (text!18886 List!14666)) (Times!2634) (Or!2634) (Equal!2634) (Minus!2634) (Broken!13174 (value!82146 List!14666)) (And!2634) (Div!2634) (LessEqual!2634) (Mod!2634) (Concat!6492) (Not!2634) (Plus!2634) (SpaceValue!2634 (value!82147 List!14666)) (IntegerValue!7904 (value!82148 Int) (text!18887 List!14666)) (StringLiteralValue!7903 (text!18888 List!14666)) (FloatLiteralValue!5269 (text!18889 List!14666)) (BytesLiteralValue!2634 (value!82149 List!14666)) (CommentValue!5269 (value!82150 List!14666)) (StringLiteralValue!7904 (value!82151 List!14666)) (ErrorTokenValue!2634 (msg!2695 List!14666)) )
))
(declare-datatypes ((Regex!3858 0))(
  ( (ElementMatch!3858 (c!233576 C!7894)) (Concat!6493 (regOne!8228 Regex!3858) (regTwo!8228 Regex!3858)) (EmptyExpr!3858) (Star!3858 (reg!4187 Regex!3858)) (EmptyLang!3858) (Union!3858 (regOne!8229 Regex!3858) (regTwo!8229 Regex!3858)) )
))
(declare-datatypes ((String!17428 0))(
  ( (String!17429 (value!82152 String)) )
))
(declare-datatypes ((TokenValueInjection!4928 0))(
  ( (TokenValueInjection!4929 (toValue!3843 Int) (toChars!3702 Int)) )
))
(declare-datatypes ((Rule!4888 0))(
  ( (Rule!4889 (regex!2544 Regex!3858) (tag!2806 String!17428) (isSeparator!2544 Bool) (transformation!2544 TokenValueInjection!4928)) )
))
(declare-datatypes ((Token!4750 0))(
  ( (Token!4751 (value!82153 TokenValue!2634) (rule!4307 Rule!4888) (size!12047 Int) (originalCharacters!3406 List!14665)) )
))
(declare-datatypes ((List!14667 0))(
  ( (Nil!14601) (Cons!14601 (h!20002 Token!4750) (t!124462 List!14667)) )
))
(declare-datatypes ((IArray!9835 0))(
  ( (IArray!9836 (innerList!4975 List!14667)) )
))
(declare-datatypes ((Conc!4915 0))(
  ( (Node!4915 (left!12490 Conc!4915) (right!12820 Conc!4915) (csize!10060 Int) (cheight!5126 Int)) (Leaf!7389 (xs!7644 IArray!9835) (csize!10061 Int)) (Empty!4915) )
))
(declare-datatypes ((BalanceConc!9770 0))(
  ( (BalanceConc!9771 (c!233577 Conc!4915)) )
))
(declare-datatypes ((List!14668 0))(
  ( (Nil!14602) (Cons!14602 (h!20003 Rule!4888) (t!124463 List!14668)) )
))
(declare-datatypes ((PrintableTokens!870 0))(
  ( (PrintableTokens!871 (rules!11165 List!14668) (tokens!1857 BalanceConc!9770)) )
))
(declare-fun thiss!10022 () PrintableTokens!870)

(declare-fun tp!402771 () Bool)

(declare-fun inv!19325 (Conc!4915) Bool)

(assert (=> b!1420869 (= e!906899 (and (inv!19325 (c!233577 (tokens!1857 thiss!10022))) tp!402771))))

(declare-fun b!1420870 () Bool)

(declare-fun e!906901 () Bool)

(declare-fun other!32 () PrintableTokens!870)

(declare-fun tp!402774 () Bool)

(assert (=> b!1420870 (= e!906901 (and (inv!19325 (c!233577 (tokens!1857 other!32))) tp!402774))))

(declare-fun e!906898 () Bool)

(declare-fun b!1420871 () Bool)

(declare-fun tp!402772 () Bool)

(declare-fun inv!19326 (BalanceConc!9770) Bool)

(assert (=> b!1420871 (= e!906898 (and tp!402772 (inv!19326 (tokens!1857 other!32)) e!906901))))

(declare-fun res!643316 () Bool)

(declare-fun e!906903 () Bool)

(assert (=> start!130866 (=> (not res!643316) (not e!906903))))

(assert (=> start!130866 (= res!643316 (= (rules!11165 thiss!10022) (rules!11165 other!32)))))

(assert (=> start!130866 e!906903))

(declare-fun e!906902 () Bool)

(declare-fun inv!19327 (PrintableTokens!870) Bool)

(assert (=> start!130866 (and (inv!19327 thiss!10022) e!906902)))

(assert (=> start!130866 (and (inv!19327 other!32) e!906898)))

(declare-fun b!1420872 () Bool)

(declare-fun tp!402773 () Bool)

(assert (=> b!1420872 (= e!906902 (and tp!402773 (inv!19326 (tokens!1857 thiss!10022)) e!906899))))

(declare-fun b!1420873 () Bool)

(declare-fun e!906900 () Bool)

(assert (=> b!1420873 (= e!906900 (not true))))

(declare-fun lt!479678 () List!14667)

(declare-datatypes ((LexerInterface!2212 0))(
  ( (LexerInterfaceExt!2209 (__x!9071 Int)) (Lexer!2210) )
))
(declare-fun printList!666 (LexerInterface!2212 List!14667) List!14665)

(declare-fun ++!3842 (List!14667 List!14667) List!14667)

(declare-fun ++!3843 (List!14665 List!14665) List!14665)

(assert (=> b!1420873 (= (printList!666 Lexer!2210 (++!3842 lt!479678 Nil!14601)) (++!3843 (printList!666 Lexer!2210 lt!479678) (printList!666 Lexer!2210 Nil!14601)))))

(declare-datatypes ((Unit!21799 0))(
  ( (Unit!21800) )
))
(declare-fun lt!479675 () Unit!21799)

(declare-fun lemmaPrintConcatSameAsConcatPrint!31 (LexerInterface!2212 List!14667 List!14667) Unit!21799)

(assert (=> b!1420873 (= lt!479675 (lemmaPrintConcatSameAsConcatPrint!31 Lexer!2210 lt!479678 Nil!14601))))

(declare-fun list!5778 (BalanceConc!9770) List!14667)

(assert (=> b!1420873 (= lt!479678 (list!5778 (tokens!1857 thiss!10022)))))

(declare-fun b!1420874 () Bool)

(assert (=> b!1420874 (= e!906903 e!906900)))

(declare-fun res!643315 () Bool)

(assert (=> b!1420874 (=> (not res!643315) (not e!906900))))

(declare-fun isEmpty!9005 (BalanceConc!9770) Bool)

(assert (=> b!1420874 (= res!643315 (isEmpty!9005 (tokens!1857 other!32)))))

(declare-fun lt!479677 () Unit!21799)

(declare-fun lemmaInvariant!240 (PrintableTokens!870) Unit!21799)

(assert (=> b!1420874 (= lt!479677 (lemmaInvariant!240 thiss!10022))))

(declare-fun lt!479676 () Unit!21799)

(assert (=> b!1420874 (= lt!479676 (lemmaInvariant!240 other!32))))

(assert (= (and start!130866 res!643316) b!1420874))

(assert (= (and b!1420874 res!643315) b!1420873))

(assert (= b!1420872 b!1420869))

(assert (= start!130866 b!1420872))

(assert (= b!1420871 b!1420870))

(assert (= start!130866 b!1420871))

(declare-fun m!1610593 () Bool)

(assert (=> b!1420870 m!1610593))

(declare-fun m!1610595 () Bool)

(assert (=> b!1420871 m!1610595))

(declare-fun m!1610597 () Bool)

(assert (=> b!1420869 m!1610597))

(declare-fun m!1610599 () Bool)

(assert (=> start!130866 m!1610599))

(declare-fun m!1610601 () Bool)

(assert (=> start!130866 m!1610601))

(declare-fun m!1610603 () Bool)

(assert (=> b!1420874 m!1610603))

(declare-fun m!1610605 () Bool)

(assert (=> b!1420874 m!1610605))

(declare-fun m!1610607 () Bool)

(assert (=> b!1420874 m!1610607))

(declare-fun m!1610609 () Bool)

(assert (=> b!1420873 m!1610609))

(declare-fun m!1610611 () Bool)

(assert (=> b!1420873 m!1610611))

(declare-fun m!1610613 () Bool)

(assert (=> b!1420873 m!1610613))

(declare-fun m!1610615 () Bool)

(assert (=> b!1420873 m!1610615))

(declare-fun m!1610617 () Bool)

(assert (=> b!1420873 m!1610617))

(assert (=> b!1420873 m!1610611))

(assert (=> b!1420873 m!1610609))

(declare-fun m!1610619 () Bool)

(assert (=> b!1420873 m!1610619))

(assert (=> b!1420873 m!1610613))

(declare-fun m!1610621 () Bool)

(assert (=> b!1420873 m!1610621))

(declare-fun m!1610623 () Bool)

(assert (=> b!1420872 m!1610623))

(push 1)

(assert (not b!1420874))

(assert (not b!1420869))

(assert (not b!1420871))

(assert (not b!1420873))

(assert (not b!1420870))

(assert (not b!1420872))

(assert (not start!130866))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

