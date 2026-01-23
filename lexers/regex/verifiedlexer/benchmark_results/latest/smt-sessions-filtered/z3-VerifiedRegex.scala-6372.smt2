; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!331754 () Bool)

(assert start!331754)

(declare-fun b!3579074 () Bool)

(declare-fun b_free!91661 () Bool)

(declare-fun b_next!92365 () Bool)

(assert (=> b!3579074 (= b_free!91661 (not b_next!92365))))

(declare-fun tp!1094933 () Bool)

(declare-fun b_and!257931 () Bool)

(assert (=> b!3579074 (= tp!1094933 b_and!257931)))

(declare-fun b_free!91663 () Bool)

(declare-fun b_next!92367 () Bool)

(assert (=> b!3579074 (= b_free!91663 (not b_next!92367))))

(declare-fun tp!1094940 () Bool)

(declare-fun b_and!257933 () Bool)

(assert (=> b!3579074 (= tp!1094940 b_and!257933)))

(declare-fun b!3579071 () Bool)

(declare-fun b_free!91665 () Bool)

(declare-fun b_next!92369 () Bool)

(assert (=> b!3579071 (= b_free!91665 (not b_next!92369))))

(declare-fun tp!1094932 () Bool)

(declare-fun b_and!257935 () Bool)

(assert (=> b!3579071 (= tp!1094932 b_and!257935)))

(declare-fun b_free!91667 () Bool)

(declare-fun b_next!92371 () Bool)

(assert (=> b!3579071 (= b_free!91667 (not b_next!92371))))

(declare-fun tp!1094939 () Bool)

(declare-fun b_and!257937 () Bool)

(assert (=> b!3579071 (= tp!1094939 b_and!257937)))

(declare-fun b!3579072 () Bool)

(declare-fun b_free!91669 () Bool)

(declare-fun b_next!92373 () Bool)

(assert (=> b!3579072 (= b_free!91669 (not b_next!92373))))

(declare-fun tp!1094928 () Bool)

(declare-fun b_and!257939 () Bool)

(assert (=> b!3579072 (= tp!1094928 b_and!257939)))

(declare-fun b_free!91671 () Bool)

(declare-fun b_next!92375 () Bool)

(assert (=> b!3579072 (= b_free!91671 (not b_next!92375))))

(declare-fun tp!1094927 () Bool)

(declare-fun b_and!257941 () Bool)

(assert (=> b!3579072 (= tp!1094927 b_and!257941)))

(declare-fun b!3579073 () Bool)

(declare-fun b_free!91673 () Bool)

(declare-fun b_next!92377 () Bool)

(assert (=> b!3579073 (= b_free!91673 (not b_next!92377))))

(declare-fun tp!1094930 () Bool)

(declare-fun b_and!257943 () Bool)

(assert (=> b!3579073 (= tp!1094930 b_and!257943)))

(declare-fun b_free!91675 () Bool)

(declare-fun b_next!92379 () Bool)

(assert (=> b!3579073 (= b_free!91675 (not b_next!92379))))

(declare-fun tp!1094929 () Bool)

(declare-fun b_and!257945 () Bool)

(assert (=> b!3579073 (= tp!1094929 b_and!257945)))

(declare-fun b!3579063 () Bool)

(declare-fun res!1444008 () Bool)

(declare-fun e!2214232 () Bool)

(assert (=> b!3579063 (=> (not res!1444008) (not e!2214232))))

(declare-datatypes ((List!37685 0))(
  ( (Nil!37561) (Cons!37561 (h!42981 (_ BitVec 16)) (t!290170 List!37685)) )
))
(declare-datatypes ((TokenValue!5754 0))(
  ( (FloatLiteralValue!11508 (text!40723 List!37685)) (TokenValueExt!5753 (__x!23725 Int)) (Broken!28770 (value!177868 List!37685)) (Object!5877) (End!5754) (Def!5754) (Underscore!5754) (Match!5754) (Else!5754) (Error!5754) (Case!5754) (If!5754) (Extends!5754) (Abstract!5754) (Class!5754) (Val!5754) (DelimiterValue!11508 (del!5814 List!37685)) (KeywordValue!5760 (value!177869 List!37685)) (CommentValue!11508 (value!177870 List!37685)) (WhitespaceValue!11508 (value!177871 List!37685)) (IndentationValue!5754 (value!177872 List!37685)) (String!42103) (Int32!5754) (Broken!28771 (value!177873 List!37685)) (Boolean!5755) (Unit!53598) (OperatorValue!5757 (op!5814 List!37685)) (IdentifierValue!11508 (value!177874 List!37685)) (IdentifierValue!11509 (value!177875 List!37685)) (WhitespaceValue!11509 (value!177876 List!37685)) (True!11508) (False!11508) (Broken!28772 (value!177877 List!37685)) (Broken!28773 (value!177878 List!37685)) (True!11509) (RightBrace!5754) (RightBracket!5754) (Colon!5754) (Null!5754) (Comma!5754) (LeftBracket!5754) (False!11509) (LeftBrace!5754) (ImaginaryLiteralValue!5754 (text!40724 List!37685)) (StringLiteralValue!17262 (value!177879 List!37685)) (EOFValue!5754 (value!177880 List!37685)) (IdentValue!5754 (value!177881 List!37685)) (DelimiterValue!11509 (value!177882 List!37685)) (DedentValue!5754 (value!177883 List!37685)) (NewLineValue!5754 (value!177884 List!37685)) (IntegerValue!17262 (value!177885 (_ BitVec 32)) (text!40725 List!37685)) (IntegerValue!17263 (value!177886 Int) (text!40726 List!37685)) (Times!5754) (Or!5754) (Equal!5754) (Minus!5754) (Broken!28774 (value!177887 List!37685)) (And!5754) (Div!5754) (LessEqual!5754) (Mod!5754) (Concat!16037) (Not!5754) (Plus!5754) (SpaceValue!5754 (value!177888 List!37685)) (IntegerValue!17264 (value!177889 Int) (text!40727 List!37685)) (StringLiteralValue!17263 (text!40728 List!37685)) (FloatLiteralValue!11509 (text!40729 List!37685)) (BytesLiteralValue!5754 (value!177890 List!37685)) (CommentValue!11509 (value!177891 List!37685)) (StringLiteralValue!17264 (value!177892 List!37685)) (ErrorTokenValue!5754 (msg!5815 List!37685)) )
))
(declare-datatypes ((C!20752 0))(
  ( (C!20753 (val!12424 Int)) )
))
(declare-datatypes ((Regex!10283 0))(
  ( (ElementMatch!10283 (c!620355 C!20752)) (Concat!16038 (regOne!21078 Regex!10283) (regTwo!21078 Regex!10283)) (EmptyExpr!10283) (Star!10283 (reg!10612 Regex!10283)) (EmptyLang!10283) (Union!10283 (regOne!21079 Regex!10283) (regTwo!21079 Regex!10283)) )
))
(declare-datatypes ((String!42104 0))(
  ( (String!42105 (value!177893 String)) )
))
(declare-datatypes ((List!37686 0))(
  ( (Nil!37562) (Cons!37562 (h!42982 C!20752) (t!290171 List!37686)) )
))
(declare-datatypes ((IArray!22849 0))(
  ( (IArray!22850 (innerList!11482 List!37686)) )
))
(declare-datatypes ((Conc!11422 0))(
  ( (Node!11422 (left!29378 Conc!11422) (right!29708 Conc!11422) (csize!23074 Int) (cheight!11633 Int)) (Leaf!17795 (xs!14624 IArray!22849) (csize!23075 Int)) (Empty!11422) )
))
(declare-datatypes ((BalanceConc!22458 0))(
  ( (BalanceConc!22459 (c!620356 Conc!11422)) )
))
(declare-datatypes ((TokenValueInjection!10936 0))(
  ( (TokenValueInjection!10937 (toValue!7796 Int) (toChars!7655 Int)) )
))
(declare-datatypes ((Rule!10848 0))(
  ( (Rule!10849 (regex!5524 Regex!10283) (tag!6190 String!42104) (isSeparator!5524 Bool) (transformation!5524 TokenValueInjection!10936)) )
))
(declare-datatypes ((List!37687 0))(
  ( (Nil!37563) (Cons!37563 (h!42983 Rule!10848) (t!290172 List!37687)) )
))
(declare-fun rules!3307 () List!37687)

(declare-fun isEmpty!22117 (List!37687) Bool)

(assert (=> b!3579063 (= res!1444008 (not (isEmpty!22117 rules!3307)))))

(declare-fun b!3579064 () Bool)

(declare-fun e!2214224 () Bool)

(declare-fun e!2214236 () Bool)

(declare-fun tp!1094935 () Bool)

(assert (=> b!3579064 (= e!2214224 (and e!2214236 tp!1094935))))

(declare-fun b!3579065 () Bool)

(assert (=> b!3579065 (= e!2214232 false)))

(declare-fun lt!1228346 () List!37686)

(declare-datatypes ((Token!10414 0))(
  ( (Token!10415 (value!177894 TokenValue!5754) (rule!8236 Rule!10848) (size!28653 Int) (originalCharacters!6238 List!37686)) )
))
(declare-fun token!511 () Token!10414)

(declare-fun list!13791 (BalanceConc!22458) List!37686)

(declare-fun charsOf!3538 (Token!10414) BalanceConc!22458)

(assert (=> b!3579065 (= lt!1228346 (list!13791 (charsOf!3538 token!511)))))

(declare-fun b!3579066 () Bool)

(declare-fun res!1444010 () Bool)

(assert (=> b!3579066 (=> (not res!1444010) (not e!2214232))))

(declare-fun rule!403 () Rule!10848)

(declare-fun contains!7126 (List!37687 Rule!10848) Bool)

(assert (=> b!3579066 (= res!1444010 (contains!7126 rules!3307 rule!403))))

(declare-fun tp!1094937 () Bool)

(declare-fun e!2214226 () Bool)

(declare-fun b!3579067 () Bool)

(declare-fun e!2214231 () Bool)

(declare-fun inv!50840 (String!42104) Bool)

(declare-fun inv!50843 (TokenValueInjection!10936) Bool)

(assert (=> b!3579067 (= e!2214226 (and tp!1094937 (inv!50840 (tag!6190 rule!403)) (inv!50843 (transformation!5524 rule!403)) e!2214231))))

(declare-fun b!3579068 () Bool)

(declare-fun e!2214235 () Bool)

(declare-fun tp!1094934 () Bool)

(assert (=> b!3579068 (= e!2214236 (and tp!1094934 (inv!50840 (tag!6190 (h!42983 rules!3307))) (inv!50843 (transformation!5524 (h!42983 rules!3307))) e!2214235))))

(declare-fun b!3579069 () Bool)

(declare-fun res!1444013 () Bool)

(assert (=> b!3579069 (=> (not res!1444013) (not e!2214232))))

(declare-datatypes ((LexerInterface!5113 0))(
  ( (LexerInterfaceExt!5110 (__x!23726 Int)) (Lexer!5111) )
))
(declare-fun thiss!23823 () LexerInterface!5113)

(declare-fun rulesInvariant!4510 (LexerInterface!5113 List!37687) Bool)

(assert (=> b!3579069 (= res!1444013 (rulesInvariant!4510 thiss!23823 rules!3307))))

(declare-fun res!1444011 () Bool)

(assert (=> start!331754 (=> (not res!1444011) (not e!2214232))))

(get-info :version)

(assert (=> start!331754 (= res!1444011 ((_ is Lexer!5111) thiss!23823))))

(assert (=> start!331754 e!2214232))

(assert (=> start!331754 e!2214224))

(assert (=> start!331754 true))

(declare-fun e!2214229 () Bool)

(declare-fun inv!50844 (Token!10414) Bool)

(assert (=> start!331754 (and (inv!50844 token!511) e!2214229)))

(assert (=> start!331754 e!2214226))

(declare-fun e!2214227 () Bool)

(assert (=> start!331754 e!2214227))

(declare-fun b!3579070 () Bool)

(declare-fun res!1444009 () Bool)

(assert (=> b!3579070 (=> (not res!1444009) (not e!2214232))))

(declare-fun anOtherTypeRule!33 () Rule!10848)

(assert (=> b!3579070 (= res!1444009 (contains!7126 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2214238 () Bool)

(assert (=> b!3579071 (= e!2214238 (and tp!1094932 tp!1094939))))

(assert (=> b!3579072 (= e!2214235 (and tp!1094928 tp!1094927))))

(assert (=> b!3579073 (= e!2214231 (and tp!1094930 tp!1094929))))

(declare-fun e!2214230 () Bool)

(assert (=> b!3579074 (= e!2214230 (and tp!1094933 tp!1094940))))

(declare-fun b!3579075 () Bool)

(declare-fun tp!1094931 () Bool)

(assert (=> b!3579075 (= e!2214227 (and tp!1094931 (inv!50840 (tag!6190 anOtherTypeRule!33)) (inv!50843 (transformation!5524 anOtherTypeRule!33)) e!2214238))))

(declare-fun b!3579076 () Bool)

(declare-fun res!1444012 () Bool)

(assert (=> b!3579076 (=> (not res!1444012) (not e!2214232))))

(assert (=> b!3579076 (= res!1444012 (not (= (isSeparator!5524 anOtherTypeRule!33) (isSeparator!5524 rule!403))))))

(declare-fun e!2214233 () Bool)

(declare-fun tp!1094938 () Bool)

(declare-fun b!3579077 () Bool)

(declare-fun inv!21 (TokenValue!5754) Bool)

(assert (=> b!3579077 (= e!2214229 (and (inv!21 (value!177894 token!511)) e!2214233 tp!1094938))))

(declare-fun b!3579078 () Bool)

(declare-fun tp!1094936 () Bool)

(assert (=> b!3579078 (= e!2214233 (and tp!1094936 (inv!50840 (tag!6190 (rule!8236 token!511))) (inv!50843 (transformation!5524 (rule!8236 token!511))) e!2214230))))

(assert (= (and start!331754 res!1444011) b!3579063))

(assert (= (and b!3579063 res!1444008) b!3579069))

(assert (= (and b!3579069 res!1444013) b!3579066))

(assert (= (and b!3579066 res!1444010) b!3579070))

(assert (= (and b!3579070 res!1444009) b!3579076))

(assert (= (and b!3579076 res!1444012) b!3579065))

(assert (= b!3579068 b!3579072))

(assert (= b!3579064 b!3579068))

(assert (= (and start!331754 ((_ is Cons!37563) rules!3307)) b!3579064))

(assert (= b!3579078 b!3579074))

(assert (= b!3579077 b!3579078))

(assert (= start!331754 b!3579077))

(assert (= b!3579067 b!3579073))

(assert (= start!331754 b!3579067))

(assert (= b!3579075 b!3579071))

(assert (= start!331754 b!3579075))

(declare-fun m!4073437 () Bool)

(assert (=> b!3579070 m!4073437))

(declare-fun m!4073439 () Bool)

(assert (=> b!3579078 m!4073439))

(declare-fun m!4073441 () Bool)

(assert (=> b!3579078 m!4073441))

(declare-fun m!4073443 () Bool)

(assert (=> b!3579069 m!4073443))

(declare-fun m!4073445 () Bool)

(assert (=> start!331754 m!4073445))

(declare-fun m!4073447 () Bool)

(assert (=> b!3579075 m!4073447))

(declare-fun m!4073449 () Bool)

(assert (=> b!3579075 m!4073449))

(declare-fun m!4073451 () Bool)

(assert (=> b!3579068 m!4073451))

(declare-fun m!4073453 () Bool)

(assert (=> b!3579068 m!4073453))

(declare-fun m!4073455 () Bool)

(assert (=> b!3579067 m!4073455))

(declare-fun m!4073457 () Bool)

(assert (=> b!3579067 m!4073457))

(declare-fun m!4073459 () Bool)

(assert (=> b!3579065 m!4073459))

(assert (=> b!3579065 m!4073459))

(declare-fun m!4073461 () Bool)

(assert (=> b!3579065 m!4073461))

(declare-fun m!4073463 () Bool)

(assert (=> b!3579063 m!4073463))

(declare-fun m!4073465 () Bool)

(assert (=> b!3579077 m!4073465))

(declare-fun m!4073467 () Bool)

(assert (=> b!3579066 m!4073467))

(check-sat (not b_next!92369) (not b!3579068) (not b!3579063) (not b!3579078) b_and!257935 b_and!257933 (not b_next!92371) (not b_next!92365) (not b!3579067) b_and!257941 b_and!257943 (not b!3579066) (not b!3579075) (not b!3579064) (not start!331754) (not b!3579077) b_and!257931 b_and!257937 (not b_next!92375) (not b_next!92367) b_and!257945 (not b!3579070) (not b!3579065) (not b_next!92377) b_and!257939 (not b_next!92379) (not b!3579069) (not b_next!92373))
(check-sat b_and!257943 (not b_next!92369) b_and!257935 b_and!257933 (not b_next!92371) (not b_next!92365) b_and!257945 b_and!257941 b_and!257931 b_and!257937 (not b_next!92375) (not b_next!92367) (not b_next!92377) b_and!257939 (not b_next!92379) (not b_next!92373))
