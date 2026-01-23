; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187926 () Bool)

(assert start!187926)

(declare-fun b!1874886 () Bool)

(declare-fun b_free!52129 () Bool)

(declare-fun b_next!52833 () Bool)

(assert (=> b!1874886 (= b_free!52129 (not b_next!52833))))

(declare-fun tp!534321 () Bool)

(declare-fun b_and!144415 () Bool)

(assert (=> b!1874886 (= tp!534321 b_and!144415)))

(declare-fun b_free!52131 () Bool)

(declare-fun b_next!52835 () Bool)

(assert (=> b!1874886 (= b_free!52131 (not b_next!52835))))

(declare-fun tp!534325 () Bool)

(declare-fun b_and!144417 () Bool)

(assert (=> b!1874886 (= tp!534325 b_and!144417)))

(declare-fun b!1874881 () Bool)

(declare-fun e!1196480 () Bool)

(declare-fun e!1196476 () Bool)

(assert (=> b!1874881 (= e!1196480 e!1196476)))

(declare-fun res!838515 () Bool)

(assert (=> b!1874881 (=> (not res!838515) (not e!1196476))))

(declare-fun from!845 () Int)

(declare-fun lt!720189 () Int)

(declare-datatypes ((List!20937 0))(
  ( (Nil!20855) (Cons!20855 (h!26256 (_ BitVec 16)) (t!173154 List!20937)) )
))
(declare-datatypes ((TokenValue!3826 0))(
  ( (FloatLiteralValue!7652 (text!27227 List!20937)) (TokenValueExt!3825 (__x!13090 Int)) (Broken!19130 (value!116604 List!20937)) (Object!3907) (End!3826) (Def!3826) (Underscore!3826) (Match!3826) (Else!3826) (Error!3826) (Case!3826) (If!3826) (Extends!3826) (Abstract!3826) (Class!3826) (Val!3826) (DelimiterValue!7652 (del!3886 List!20937)) (KeywordValue!3832 (value!116605 List!20937)) (CommentValue!7652 (value!116606 List!20937)) (WhitespaceValue!7652 (value!116607 List!20937)) (IndentationValue!3826 (value!116608 List!20937)) (String!24079) (Int32!3826) (Broken!19131 (value!116609 List!20937)) (Boolean!3827) (Unit!35381) (OperatorValue!3829 (op!3886 List!20937)) (IdentifierValue!7652 (value!116610 List!20937)) (IdentifierValue!7653 (value!116611 List!20937)) (WhitespaceValue!7653 (value!116612 List!20937)) (True!7652) (False!7652) (Broken!19132 (value!116613 List!20937)) (Broken!19133 (value!116614 List!20937)) (True!7653) (RightBrace!3826) (RightBracket!3826) (Colon!3826) (Null!3826) (Comma!3826) (LeftBracket!3826) (False!7653) (LeftBrace!3826) (ImaginaryLiteralValue!3826 (text!27228 List!20937)) (StringLiteralValue!11478 (value!116615 List!20937)) (EOFValue!3826 (value!116616 List!20937)) (IdentValue!3826 (value!116617 List!20937)) (DelimiterValue!7653 (value!116618 List!20937)) (DedentValue!3826 (value!116619 List!20937)) (NewLineValue!3826 (value!116620 List!20937)) (IntegerValue!11478 (value!116621 (_ BitVec 32)) (text!27229 List!20937)) (IntegerValue!11479 (value!116622 Int) (text!27230 List!20937)) (Times!3826) (Or!3826) (Equal!3826) (Minus!3826) (Broken!19134 (value!116623 List!20937)) (And!3826) (Div!3826) (LessEqual!3826) (Mod!3826) (Concat!8925) (Not!3826) (Plus!3826) (SpaceValue!3826 (value!116624 List!20937)) (IntegerValue!11480 (value!116625 Int) (text!27231 List!20937)) (StringLiteralValue!11479 (text!27232 List!20937)) (FloatLiteralValue!7653 (text!27233 List!20937)) (BytesLiteralValue!3826 (value!116626 List!20937)) (CommentValue!7653 (value!116627 List!20937)) (StringLiteralValue!11480 (value!116628 List!20937)) (ErrorTokenValue!3826 (msg!3887 List!20937)) )
))
(declare-datatypes ((C!10356 0))(
  ( (C!10357 (val!6066 Int)) )
))
(declare-datatypes ((Regex!5099 0))(
  ( (ElementMatch!5099 (c!305468 C!10356)) (Concat!8926 (regOne!10710 Regex!5099) (regTwo!10710 Regex!5099)) (EmptyExpr!5099) (Star!5099 (reg!5428 Regex!5099)) (EmptyLang!5099) (Union!5099 (regOne!10711 Regex!5099) (regTwo!10711 Regex!5099)) )
))
(declare-datatypes ((String!24080 0))(
  ( (String!24081 (value!116629 String)) )
))
(declare-datatypes ((List!20938 0))(
  ( (Nil!20856) (Cons!20856 (h!26257 C!10356) (t!173155 List!20938)) )
))
(declare-datatypes ((IArray!13823 0))(
  ( (IArray!13824 (innerList!6969 List!20938)) )
))
(declare-datatypes ((Conc!6909 0))(
  ( (Node!6909 (left!16760 Conc!6909) (right!17090 Conc!6909) (csize!14048 Int) (cheight!7120 Int)) (Leaf!10175 (xs!9793 IArray!13823) (csize!14049 Int)) (Empty!6909) )
))
(declare-datatypes ((BalanceConc!13634 0))(
  ( (BalanceConc!13635 (c!305469 Conc!6909)) )
))
(declare-datatypes ((TokenValueInjection!7236 0))(
  ( (TokenValueInjection!7237 (toValue!5287 Int) (toChars!5146 Int)) )
))
(declare-datatypes ((Rule!7180 0))(
  ( (Rule!7181 (regex!3690 Regex!5099) (tag!4104 String!24080) (isSeparator!3690 Bool) (transformation!3690 TokenValueInjection!7236)) )
))
(declare-datatypes ((Token!6932 0))(
  ( (Token!6933 (value!116630 TokenValue!3826) (rule!5883 Rule!7180) (size!16543 Int) (originalCharacters!4497 List!20938)) )
))
(declare-fun separatorToken!84 () Token!6932)

(assert (=> b!1874881 (= res!838515 (and (<= from!845 lt!720189) (isSeparator!3690 (rule!5883 separatorToken!84)) (< from!845 lt!720189)))))

(declare-datatypes ((List!20939 0))(
  ( (Nil!20857) (Cons!20857 (h!26258 Token!6932) (t!173156 List!20939)) )
))
(declare-datatypes ((IArray!13825 0))(
  ( (IArray!13826 (innerList!6970 List!20939)) )
))
(declare-datatypes ((Conc!6910 0))(
  ( (Node!6910 (left!16761 Conc!6910) (right!17091 Conc!6910) (csize!14050 Int) (cheight!7121 Int)) (Leaf!10176 (xs!9794 IArray!13825) (csize!14051 Int)) (Empty!6910) )
))
(declare-datatypes ((BalanceConc!13636 0))(
  ( (BalanceConc!13637 (c!305470 Conc!6910)) )
))
(declare-fun v!6352 () BalanceConc!13636)

(declare-fun size!16544 (BalanceConc!13636) Int)

(assert (=> b!1874881 (= lt!720189 (size!16544 v!6352))))

(declare-fun e!1196475 () Bool)

(declare-fun b!1874882 () Bool)

(declare-fun tp!534324 () Bool)

(declare-fun e!1196482 () Bool)

(declare-fun inv!21 (TokenValue!3826) Bool)

(assert (=> b!1874882 (= e!1196482 (and (inv!21 (value!116630 separatorToken!84)) e!1196475 tp!534324))))

(declare-fun b!1874883 () Bool)

(declare-fun e!1196483 () Bool)

(declare-fun acc!408 () BalanceConc!13636)

(declare-fun tp!534323 () Bool)

(declare-fun inv!27690 (Conc!6910) Bool)

(assert (=> b!1874883 (= e!1196483 (and (inv!27690 (c!305470 acc!408)) tp!534323))))

(declare-fun b!1874884 () Bool)

(declare-fun e!1196478 () Bool)

(declare-fun tp!534320 () Bool)

(assert (=> b!1874884 (= e!1196478 (and (inv!27690 (c!305470 v!6352)) tp!534320))))

(declare-fun e!1196481 () Bool)

(declare-fun b!1874885 () Bool)

(declare-fun tp!534322 () Bool)

(declare-fun inv!27685 (String!24080) Bool)

(declare-fun inv!27691 (TokenValueInjection!7236) Bool)

(assert (=> b!1874885 (= e!1196475 (and tp!534322 (inv!27685 (tag!4104 (rule!5883 separatorToken!84))) (inv!27691 (transformation!3690 (rule!5883 separatorToken!84))) e!1196481))))

(declare-fun res!838514 () Bool)

(assert (=> start!187926 (=> (not res!838514) (not e!1196480))))

(declare-datatypes ((LexerInterface!3312 0))(
  ( (LexerInterfaceExt!3309 (__x!13091 Int)) (Lexer!3310) )
))
(declare-fun thiss!13718 () LexerInterface!3312)

(get-info :version)

(assert (=> start!187926 (= res!838514 (and ((_ is Lexer!3310) thiss!13718) (>= from!845 0)))))

(assert (=> start!187926 e!1196480))

(assert (=> start!187926 true))

(declare-fun inv!27692 (BalanceConc!13636) Bool)

(assert (=> start!187926 (and (inv!27692 acc!408) e!1196483)))

(assert (=> start!187926 (and (inv!27692 v!6352) e!1196478)))

(declare-fun inv!27693 (Token!6932) Bool)

(assert (=> start!187926 (and (inv!27693 separatorToken!84) e!1196482)))

(assert (=> b!1874886 (= e!1196481 (and tp!534321 tp!534325))))

(declare-fun b!1874887 () Bool)

(assert (=> b!1874887 (= e!1196476 (not (<= 0 from!845)))))

(declare-fun lt!720184 () List!20939)

(declare-fun lt!720192 () List!20939)

(declare-fun lt!720191 () List!20939)

(declare-fun ++!5638 (List!20939 List!20939) List!20939)

(assert (=> b!1874887 (= (++!5638 (++!5638 lt!720184 lt!720192) lt!720191) (++!5638 lt!720184 (++!5638 lt!720192 lt!720191)))))

(declare-datatypes ((Unit!35382 0))(
  ( (Unit!35383) )
))
(declare-fun lt!720190 () Unit!35382)

(declare-fun lemmaConcatAssociativity!1101 (List!20939 List!20939 List!20939) Unit!35382)

(assert (=> b!1874887 (= lt!720190 (lemmaConcatAssociativity!1101 lt!720184 lt!720192 lt!720191))))

(declare-fun lt!720185 () List!20939)

(declare-fun withSeparatorTokenList!98 (LexerInterface!3312 List!20939 Token!6932) List!20939)

(assert (=> b!1874887 (= lt!720191 (withSeparatorTokenList!98 thiss!13718 lt!720185 separatorToken!84))))

(declare-fun apply!5480 (BalanceConc!13636 Int) Token!6932)

(assert (=> b!1874887 (= lt!720192 (Cons!20857 (apply!5480 v!6352 from!845) (Cons!20857 separatorToken!84 Nil!20857)))))

(declare-fun list!8504 (BalanceConc!13636) List!20939)

(assert (=> b!1874887 (= lt!720184 (list!8504 acc!408))))

(declare-fun lt!720186 () List!20939)

(declare-fun tail!2890 (List!20939) List!20939)

(assert (=> b!1874887 (= (tail!2890 lt!720186) lt!720185)))

(declare-fun lt!720188 () List!20939)

(declare-fun drop!1010 (List!20939 Int) List!20939)

(assert (=> b!1874887 (= lt!720185 (drop!1010 lt!720188 (+ 1 from!845)))))

(declare-fun lt!720193 () Unit!35382)

(declare-fun lemmaDropTail!628 (List!20939 Int) Unit!35382)

(assert (=> b!1874887 (= lt!720193 (lemmaDropTail!628 lt!720188 from!845))))

(declare-fun head!4361 (List!20939) Token!6932)

(declare-fun apply!5481 (List!20939 Int) Token!6932)

(assert (=> b!1874887 (= (head!4361 lt!720186) (apply!5481 lt!720188 from!845))))

(assert (=> b!1874887 (= lt!720186 (drop!1010 lt!720188 from!845))))

(declare-fun lt!720187 () Unit!35382)

(declare-fun lemmaDropApply!648 (List!20939 Int) Unit!35382)

(assert (=> b!1874887 (= lt!720187 (lemmaDropApply!648 lt!720188 from!845))))

(assert (=> b!1874887 (= lt!720188 (list!8504 v!6352))))

(assert (= (and start!187926 res!838514) b!1874881))

(assert (= (and b!1874881 res!838515) b!1874887))

(assert (= start!187926 b!1874883))

(assert (= start!187926 b!1874884))

(assert (= b!1874885 b!1874886))

(assert (= b!1874882 b!1874885))

(assert (= start!187926 b!1874882))

(declare-fun m!2299833 () Bool)

(assert (=> b!1874884 m!2299833))

(declare-fun m!2299835 () Bool)

(assert (=> b!1874887 m!2299835))

(declare-fun m!2299837 () Bool)

(assert (=> b!1874887 m!2299837))

(declare-fun m!2299839 () Bool)

(assert (=> b!1874887 m!2299839))

(declare-fun m!2299841 () Bool)

(assert (=> b!1874887 m!2299841))

(declare-fun m!2299843 () Bool)

(assert (=> b!1874887 m!2299843))

(declare-fun m!2299845 () Bool)

(assert (=> b!1874887 m!2299845))

(declare-fun m!2299847 () Bool)

(assert (=> b!1874887 m!2299847))

(declare-fun m!2299849 () Bool)

(assert (=> b!1874887 m!2299849))

(declare-fun m!2299851 () Bool)

(assert (=> b!1874887 m!2299851))

(declare-fun m!2299853 () Bool)

(assert (=> b!1874887 m!2299853))

(declare-fun m!2299855 () Bool)

(assert (=> b!1874887 m!2299855))

(assert (=> b!1874887 m!2299851))

(declare-fun m!2299857 () Bool)

(assert (=> b!1874887 m!2299857))

(declare-fun m!2299859 () Bool)

(assert (=> b!1874887 m!2299859))

(declare-fun m!2299861 () Bool)

(assert (=> b!1874887 m!2299861))

(declare-fun m!2299863 () Bool)

(assert (=> b!1874887 m!2299863))

(assert (=> b!1874887 m!2299835))

(declare-fun m!2299865 () Bool)

(assert (=> b!1874887 m!2299865))

(declare-fun m!2299867 () Bool)

(assert (=> b!1874881 m!2299867))

(declare-fun m!2299869 () Bool)

(assert (=> b!1874882 m!2299869))

(declare-fun m!2299871 () Bool)

(assert (=> b!1874885 m!2299871))

(declare-fun m!2299873 () Bool)

(assert (=> b!1874885 m!2299873))

(declare-fun m!2299875 () Bool)

(assert (=> b!1874883 m!2299875))

(declare-fun m!2299877 () Bool)

(assert (=> start!187926 m!2299877))

(declare-fun m!2299879 () Bool)

(assert (=> start!187926 m!2299879))

(declare-fun m!2299881 () Bool)

(assert (=> start!187926 m!2299881))

(check-sat (not b!1874881) (not b_next!52833) b_and!144417 (not b!1874885) (not b!1874883) (not b!1874882) (not b!1874884) (not b!1874887) (not start!187926) (not b_next!52835) b_and!144415)
(check-sat b_and!144417 b_and!144415 (not b_next!52833) (not b_next!52835))
