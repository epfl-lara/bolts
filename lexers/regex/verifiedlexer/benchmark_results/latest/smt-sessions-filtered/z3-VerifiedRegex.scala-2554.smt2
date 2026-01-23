; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137354 () Bool)

(assert start!137354)

(declare-fun b!1467840 () Bool)

(declare-fun b_free!36823 () Bool)

(declare-fun b_next!37527 () Bool)

(assert (=> b!1467840 (= b_free!36823 (not b_next!37527))))

(declare-fun tp!413306 () Bool)

(declare-fun b_and!100369 () Bool)

(assert (=> b!1467840 (= tp!413306 b_and!100369)))

(declare-fun b_free!36825 () Bool)

(declare-fun b_next!37529 () Bool)

(assert (=> b!1467840 (= b_free!36825 (not b_next!37529))))

(declare-fun tp!413310 () Bool)

(declare-fun b_and!100371 () Bool)

(assert (=> b!1467840 (= tp!413310 b_and!100371)))

(declare-fun b!1467842 () Bool)

(declare-fun b_free!36827 () Bool)

(declare-fun b_next!37531 () Bool)

(assert (=> b!1467842 (= b_free!36827 (not b_next!37531))))

(declare-fun tp!413305 () Bool)

(declare-fun b_and!100373 () Bool)

(assert (=> b!1467842 (= tp!413305 b_and!100373)))

(declare-fun b_free!36829 () Bool)

(declare-fun b_next!37533 () Bool)

(assert (=> b!1467842 (= b_free!36829 (not b_next!37533))))

(declare-fun tp!413313 () Bool)

(declare-fun b_and!100375 () Bool)

(assert (=> b!1467842 (= tp!413313 b_and!100375)))

(declare-fun b!1467835 () Bool)

(declare-fun res!664139 () Bool)

(declare-fun e!936782 () Bool)

(assert (=> b!1467835 (=> (not res!664139) (not e!936782))))

(declare-datatypes ((List!15359 0))(
  ( (Nil!15293) (Cons!15293 (h!20694 (_ BitVec 16)) (t!135182 List!15359)) )
))
(declare-datatypes ((TokenValue!2797 0))(
  ( (FloatLiteralValue!5594 (text!20024 List!15359)) (TokenValueExt!2796 (__x!9384 Int)) (Broken!13985 (value!86771 List!15359)) (Object!2862) (End!2797) (Def!2797) (Underscore!2797) (Match!2797) (Else!2797) (Error!2797) (Case!2797) (If!2797) (Extends!2797) (Abstract!2797) (Class!2797) (Val!2797) (DelimiterValue!5594 (del!2857 List!15359)) (KeywordValue!2803 (value!86772 List!15359)) (CommentValue!5594 (value!86773 List!15359)) (WhitespaceValue!5594 (value!86774 List!15359)) (IndentationValue!2797 (value!86775 List!15359)) (String!18240) (Int32!2797) (Broken!13986 (value!86776 List!15359)) (Boolean!2798) (Unit!25056) (OperatorValue!2800 (op!2857 List!15359)) (IdentifierValue!5594 (value!86777 List!15359)) (IdentifierValue!5595 (value!86778 List!15359)) (WhitespaceValue!5595 (value!86779 List!15359)) (True!5594) (False!5594) (Broken!13987 (value!86780 List!15359)) (Broken!13988 (value!86781 List!15359)) (True!5595) (RightBrace!2797) (RightBracket!2797) (Colon!2797) (Null!2797) (Comma!2797) (LeftBracket!2797) (False!5595) (LeftBrace!2797) (ImaginaryLiteralValue!2797 (text!20025 List!15359)) (StringLiteralValue!8391 (value!86782 List!15359)) (EOFValue!2797 (value!86783 List!15359)) (IdentValue!2797 (value!86784 List!15359)) (DelimiterValue!5595 (value!86785 List!15359)) (DedentValue!2797 (value!86786 List!15359)) (NewLineValue!2797 (value!86787 List!15359)) (IntegerValue!8391 (value!86788 (_ BitVec 32)) (text!20026 List!15359)) (IntegerValue!8392 (value!86789 Int) (text!20027 List!15359)) (Times!2797) (Or!2797) (Equal!2797) (Minus!2797) (Broken!13989 (value!86790 List!15359)) (And!2797) (Div!2797) (LessEqual!2797) (Mod!2797) (Concat!6818) (Not!2797) (Plus!2797) (SpaceValue!2797 (value!86791 List!15359)) (IntegerValue!8393 (value!86792 Int) (text!20028 List!15359)) (StringLiteralValue!8392 (text!20029 List!15359)) (FloatLiteralValue!5595 (text!20030 List!15359)) (BytesLiteralValue!2797 (value!86793 List!15359)) (CommentValue!5595 (value!86794 List!15359)) (StringLiteralValue!8393 (value!86795 List!15359)) (ErrorTokenValue!2797 (msg!2858 List!15359)) )
))
(declare-datatypes ((C!8220 0))(
  ( (C!8221 (val!4680 Int)) )
))
(declare-datatypes ((List!15360 0))(
  ( (Nil!15294) (Cons!15294 (h!20695 C!8220) (t!135183 List!15360)) )
))
(declare-datatypes ((IArray!10431 0))(
  ( (IArray!10432 (innerList!5273 List!15360)) )
))
(declare-datatypes ((Conc!5213 0))(
  ( (Node!5213 (left!12973 Conc!5213) (right!13303 Conc!5213) (csize!10656 Int) (cheight!5424 Int)) (Leaf!7768 (xs!7968 IArray!10431) (csize!10657 Int)) (Empty!5213) )
))
(declare-datatypes ((BalanceConc!10366 0))(
  ( (BalanceConc!10367 (c!241949 Conc!5213)) )
))
(declare-datatypes ((TokenValueInjection!5254 0))(
  ( (TokenValueInjection!5255 (toValue!4026 Int) (toChars!3885 Int)) )
))
(declare-datatypes ((String!18241 0))(
  ( (String!18242 (value!86796 String)) )
))
(declare-datatypes ((Regex!4021 0))(
  ( (ElementMatch!4021 (c!241950 C!8220)) (Concat!6819 (regOne!8554 Regex!4021) (regTwo!8554 Regex!4021)) (EmptyExpr!4021) (Star!4021 (reg!4350 Regex!4021)) (EmptyLang!4021) (Union!4021 (regOne!8555 Regex!4021) (regTwo!8555 Regex!4021)) )
))
(declare-datatypes ((Rule!5214 0))(
  ( (Rule!5215 (regex!2707 Regex!4021) (tag!2971 String!18241) (isSeparator!2707 Bool) (transformation!2707 TokenValueInjection!5254)) )
))
(declare-datatypes ((Token!5076 0))(
  ( (Token!5077 (value!86797 TokenValue!2797) (rule!4484 Rule!5214) (size!12479 Int) (originalCharacters!3569 List!15360)) )
))
(declare-datatypes ((List!15361 0))(
  ( (Nil!15295) (Cons!15295 (h!20696 Token!5076) (t!135184 List!15361)) )
))
(declare-fun tokens1!47 () List!15361)

(declare-fun isEmpty!9593 (List!15361) Bool)

(assert (=> b!1467835 (= res!664139 (isEmpty!9593 (t!135184 tokens1!47)))))

(declare-fun tokens2!49 () List!15361)

(declare-fun b!1467836 () Bool)

(declare-fun e!936780 () Bool)

(declare-fun e!936792 () Bool)

(declare-fun tp!413309 () Bool)

(declare-fun inv!20454 (String!18241) Bool)

(declare-fun inv!20457 (TokenValueInjection!5254) Bool)

(assert (=> b!1467836 (= e!936780 (and tp!413309 (inv!20454 (tag!2971 (rule!4484 (h!20696 tokens2!49)))) (inv!20457 (transformation!2707 (rule!4484 (h!20696 tokens2!49)))) e!936792))))

(declare-fun tp!413308 () Bool)

(declare-fun b!1467837 () Bool)

(declare-fun e!936789 () Bool)

(declare-fun e!936781 () Bool)

(declare-fun inv!20458 (Token!5076) Bool)

(assert (=> b!1467837 (= e!936789 (and (inv!20458 (h!20696 tokens1!47)) e!936781 tp!413308))))

(declare-datatypes ((LexerInterface!2363 0))(
  ( (LexerInterfaceExt!2360 (__x!9385 Int)) (Lexer!2361) )
))
(declare-fun thiss!20360 () LexerInterface!2363)

(declare-fun lt!510912 () List!15360)

(declare-fun e!936783 () Bool)

(declare-fun lt!510914 () List!15361)

(declare-fun b!1467838 () Bool)

(declare-fun printList!755 (LexerInterface!2363 List!15361) List!15360)

(assert (=> b!1467838 (= e!936783 (not (= (printList!755 thiss!20360 lt!510914) lt!510912)))))

(declare-fun lt!510908 () List!15360)

(assert (=> b!1467838 (= lt!510908 lt!510912)))

(declare-fun lt!510910 () List!15360)

(declare-fun lt!510915 () List!15360)

(declare-fun ++!4158 (List!15360 List!15360) List!15360)

(assert (=> b!1467838 (= lt!510912 (++!4158 lt!510910 lt!510915))))

(declare-fun lt!510913 () List!15361)

(assert (=> b!1467838 (= lt!510908 (printList!755 thiss!20360 lt!510913))))

(assert (=> b!1467838 (= lt!510915 (printList!755 thiss!20360 tokens2!49))))

(declare-fun b!1467839 () Bool)

(declare-fun e!936794 () Bool)

(assert (=> b!1467839 (= e!936782 e!936794)))

(declare-fun res!664138 () Bool)

(assert (=> b!1467839 (=> (not res!664138) (not e!936794))))

(declare-fun lt!510909 () List!15360)

(assert (=> b!1467839 (= res!664138 (= lt!510909 lt!510910))))

(declare-fun lt!510911 () BalanceConc!10366)

(declare-fun list!6133 (BalanceConc!10366) List!15360)

(assert (=> b!1467839 (= lt!510910 (list!6133 lt!510911))))

(assert (=> b!1467839 (= lt!510909 (printList!755 thiss!20360 tokens1!47))))

(declare-fun charsOf!1562 (Token!5076) BalanceConc!10366)

(assert (=> b!1467839 (= lt!510911 (charsOf!1562 (h!20696 tokens1!47)))))

(declare-fun e!936791 () Bool)

(assert (=> b!1467840 (= e!936791 (and tp!413306 tp!413310))))

(declare-fun res!664137 () Bool)

(assert (=> start!137354 (=> (not res!664137) (not e!936782))))

(get-info :version)

(assert (=> start!137354 (= res!664137 (and ((_ is Lexer!2361) thiss!20360) ((_ is Cons!15295) tokens1!47)))))

(assert (=> start!137354 e!936782))

(assert (=> start!137354 true))

(assert (=> start!137354 e!936789))

(declare-fun e!936787 () Bool)

(assert (=> start!137354 e!936787))

(declare-fun b!1467841 () Bool)

(declare-fun e!936793 () Bool)

(declare-fun tp!413307 () Bool)

(assert (=> b!1467841 (= e!936793 (and tp!413307 (inv!20454 (tag!2971 (rule!4484 (h!20696 tokens1!47)))) (inv!20457 (transformation!2707 (rule!4484 (h!20696 tokens1!47)))) e!936791))))

(assert (=> b!1467842 (= e!936792 (and tp!413305 tp!413313))))

(declare-fun b!1467843 () Bool)

(declare-fun tp!413314 () Bool)

(declare-fun inv!21 (TokenValue!2797) Bool)

(assert (=> b!1467843 (= e!936781 (and (inv!21 (value!86797 (h!20696 tokens1!47))) e!936793 tp!413314))))

(declare-fun b!1467844 () Bool)

(declare-fun e!936788 () Bool)

(declare-fun tp!413311 () Bool)

(assert (=> b!1467844 (= e!936787 (and (inv!20458 (h!20696 tokens2!49)) e!936788 tp!413311))))

(declare-fun b!1467845 () Bool)

(declare-fun tp!413312 () Bool)

(assert (=> b!1467845 (= e!936788 (and (inv!21 (value!86797 (h!20696 tokens2!49))) e!936780 tp!413312))))

(declare-fun b!1467846 () Bool)

(assert (=> b!1467846 (= e!936794 e!936783)))

(declare-fun res!664136 () Bool)

(assert (=> b!1467846 (=> (not res!664136) (not e!936783))))

(assert (=> b!1467846 (= res!664136 (= lt!510914 lt!510913))))

(assert (=> b!1467846 (= lt!510913 (Cons!15295 (h!20696 tokens1!47) tokens2!49))))

(declare-fun ++!4159 (List!15361 List!15361) List!15361)

(assert (=> b!1467846 (= lt!510914 (++!4159 tokens1!47 tokens2!49))))

(assert (= (and start!137354 res!664137) b!1467835))

(assert (= (and b!1467835 res!664139) b!1467839))

(assert (= (and b!1467839 res!664138) b!1467846))

(assert (= (and b!1467846 res!664136) b!1467838))

(assert (= b!1467841 b!1467840))

(assert (= b!1467843 b!1467841))

(assert (= b!1467837 b!1467843))

(assert (= (and start!137354 ((_ is Cons!15295) tokens1!47)) b!1467837))

(assert (= b!1467836 b!1467842))

(assert (= b!1467845 b!1467836))

(assert (= b!1467844 b!1467845))

(assert (= (and start!137354 ((_ is Cons!15295) tokens2!49)) b!1467844))

(declare-fun m!1712383 () Bool)

(assert (=> b!1467837 m!1712383))

(declare-fun m!1712385 () Bool)

(assert (=> b!1467846 m!1712385))

(declare-fun m!1712387 () Bool)

(assert (=> b!1467839 m!1712387))

(declare-fun m!1712389 () Bool)

(assert (=> b!1467839 m!1712389))

(declare-fun m!1712391 () Bool)

(assert (=> b!1467839 m!1712391))

(declare-fun m!1712393 () Bool)

(assert (=> b!1467843 m!1712393))

(declare-fun m!1712395 () Bool)

(assert (=> b!1467836 m!1712395))

(declare-fun m!1712397 () Bool)

(assert (=> b!1467836 m!1712397))

(declare-fun m!1712399 () Bool)

(assert (=> b!1467838 m!1712399))

(declare-fun m!1712401 () Bool)

(assert (=> b!1467838 m!1712401))

(declare-fun m!1712403 () Bool)

(assert (=> b!1467838 m!1712403))

(declare-fun m!1712405 () Bool)

(assert (=> b!1467838 m!1712405))

(declare-fun m!1712407 () Bool)

(assert (=> b!1467835 m!1712407))

(declare-fun m!1712409 () Bool)

(assert (=> b!1467845 m!1712409))

(declare-fun m!1712411 () Bool)

(assert (=> b!1467841 m!1712411))

(declare-fun m!1712413 () Bool)

(assert (=> b!1467841 m!1712413))

(declare-fun m!1712415 () Bool)

(assert (=> b!1467844 m!1712415))

(check-sat (not b!1467841) (not b!1467839) (not b!1467843) (not b_next!37529) (not b!1467836) b_and!100369 (not b_next!37531) (not b!1467837) (not b!1467835) (not b_next!37533) (not b!1467844) (not b!1467838) (not b!1467846) (not b!1467845) b_and!100373 b_and!100375 b_and!100371 (not b_next!37527))
(check-sat (not b_next!37533) (not b_next!37529) b_and!100369 (not b_next!37531) b_and!100373 b_and!100375 b_and!100371 (not b_next!37527))
