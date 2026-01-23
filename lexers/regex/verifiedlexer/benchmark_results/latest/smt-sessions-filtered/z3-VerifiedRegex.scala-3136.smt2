; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184630 () Bool)

(assert start!184630)

(declare-fun b!1850039 () Bool)

(declare-fun b_free!51627 () Bool)

(declare-fun b_next!52331 () Bool)

(assert (=> b!1850039 (= b_free!51627 (not b_next!52331))))

(declare-fun tp!523183 () Bool)

(declare-fun b_and!143849 () Bool)

(assert (=> b!1850039 (= tp!523183 b_and!143849)))

(declare-fun b_free!51629 () Bool)

(declare-fun b_next!52333 () Bool)

(assert (=> b!1850039 (= b_free!51629 (not b_next!52333))))

(declare-fun tp!523184 () Bool)

(declare-fun b_and!143851 () Bool)

(assert (=> b!1850039 (= tp!523184 b_and!143851)))

(declare-fun b!1850041 () Bool)

(declare-fun b_free!51631 () Bool)

(declare-fun b_next!52335 () Bool)

(assert (=> b!1850041 (= b_free!51631 (not b_next!52335))))

(declare-fun tp!523185 () Bool)

(declare-fun b_and!143853 () Bool)

(assert (=> b!1850041 (= tp!523185 b_and!143853)))

(declare-fun b_free!51633 () Bool)

(declare-fun b_next!52337 () Bool)

(assert (=> b!1850041 (= b_free!51633 (not b_next!52337))))

(declare-fun tp!523186 () Bool)

(declare-fun b_and!143855 () Bool)

(assert (=> b!1850041 (= tp!523186 b_and!143855)))

(declare-fun b!1850036 () Bool)

(declare-fun e!1181973 () Bool)

(declare-fun e!1181979 () Bool)

(declare-fun tp!523181 () Bool)

(assert (=> b!1850036 (= e!1181973 (and e!1181979 tp!523181))))

(declare-fun b!1850037 () Bool)

(declare-fun res!830648 () Bool)

(declare-fun e!1181971 () Bool)

(assert (=> b!1850037 (=> (not res!830648) (not e!1181971))))

(declare-datatypes ((C!10200 0))(
  ( (C!10201 (val!5826 Int)) )
))
(declare-datatypes ((Regex!5025 0))(
  ( (ElementMatch!5025 (c!301988 C!10200)) (Concat!8806 (regOne!10562 Regex!5025) (regTwo!10562 Regex!5025)) (EmptyExpr!5025) (Star!5025 (reg!5354 Regex!5025)) (EmptyLang!5025) (Union!5025 (regOne!10563 Regex!5025) (regTwo!10563 Regex!5025)) )
))
(declare-datatypes ((List!20515 0))(
  ( (Nil!20443) (Cons!20443 (h!25844 (_ BitVec 16)) (t!172288 List!20515)) )
))
(declare-datatypes ((TokenValue!3781 0))(
  ( (FloatLiteralValue!7562 (text!26912 List!20515)) (TokenValueExt!3780 (__x!12838 Int)) (Broken!18905 (value!115003 List!20515)) (Object!3852) (End!3781) (Def!3781) (Underscore!3781) (Match!3781) (Else!3781) (Error!3781) (Case!3781) (If!3781) (Extends!3781) (Abstract!3781) (Class!3781) (Val!3781) (DelimiterValue!7562 (del!3841 List!20515)) (KeywordValue!3787 (value!115004 List!20515)) (CommentValue!7562 (value!115005 List!20515)) (WhitespaceValue!7562 (value!115006 List!20515)) (IndentationValue!3781 (value!115007 List!20515)) (String!23468) (Int32!3781) (Broken!18906 (value!115008 List!20515)) (Boolean!3782) (Unit!35122) (OperatorValue!3784 (op!3841 List!20515)) (IdentifierValue!7562 (value!115009 List!20515)) (IdentifierValue!7563 (value!115010 List!20515)) (WhitespaceValue!7563 (value!115011 List!20515)) (True!7562) (False!7562) (Broken!18907 (value!115012 List!20515)) (Broken!18908 (value!115013 List!20515)) (True!7563) (RightBrace!3781) (RightBracket!3781) (Colon!3781) (Null!3781) (Comma!3781) (LeftBracket!3781) (False!7563) (LeftBrace!3781) (ImaginaryLiteralValue!3781 (text!26913 List!20515)) (StringLiteralValue!11343 (value!115014 List!20515)) (EOFValue!3781 (value!115015 List!20515)) (IdentValue!3781 (value!115016 List!20515)) (DelimiterValue!7563 (value!115017 List!20515)) (DedentValue!3781 (value!115018 List!20515)) (NewLineValue!3781 (value!115019 List!20515)) (IntegerValue!11343 (value!115020 (_ BitVec 32)) (text!26914 List!20515)) (IntegerValue!11344 (value!115021 Int) (text!26915 List!20515)) (Times!3781) (Or!3781) (Equal!3781) (Minus!3781) (Broken!18909 (value!115022 List!20515)) (And!3781) (Div!3781) (LessEqual!3781) (Mod!3781) (Concat!8807) (Not!3781) (Plus!3781) (SpaceValue!3781 (value!115023 List!20515)) (IntegerValue!11345 (value!115024 Int) (text!26916 List!20515)) (StringLiteralValue!11344 (text!26917 List!20515)) (FloatLiteralValue!7563 (text!26918 List!20515)) (BytesLiteralValue!3781 (value!115025 List!20515)) (CommentValue!7563 (value!115026 List!20515)) (StringLiteralValue!11345 (value!115027 List!20515)) (ErrorTokenValue!3781 (msg!3842 List!20515)) )
))
(declare-datatypes ((List!20516 0))(
  ( (Nil!20444) (Cons!20444 (h!25845 C!10200) (t!172289 List!20516)) )
))
(declare-datatypes ((IArray!13541 0))(
  ( (IArray!13542 (innerList!6828 List!20516)) )
))
(declare-datatypes ((Conc!6768 0))(
  ( (Node!6768 (left!16442 Conc!6768) (right!16772 Conc!6768) (csize!13766 Int) (cheight!6979 Int)) (Leaf!9905 (xs!9644 IArray!13541) (csize!13767 Int)) (Empty!6768) )
))
(declare-datatypes ((BalanceConc!13458 0))(
  ( (BalanceConc!13459 (c!301989 Conc!6768)) )
))
(declare-datatypes ((String!23469 0))(
  ( (String!23470 (value!115028 String)) )
))
(declare-datatypes ((TokenValueInjection!7178 0))(
  ( (TokenValueInjection!7179 (toValue!5236 Int) (toChars!5095 Int)) )
))
(declare-datatypes ((Rule!7130 0))(
  ( (Rule!7131 (regex!3665 Regex!5025) (tag!4079 String!23469) (isSeparator!3665 Bool) (transformation!3665 TokenValueInjection!7178)) )
))
(declare-datatypes ((List!20517 0))(
  ( (Nil!20445) (Cons!20445 (h!25846 Rule!7130) (t!172290 List!20517)) )
))
(declare-fun rs!164 () List!20517)

(declare-fun isEmpty!12784 (List!20517) Bool)

(assert (=> b!1850037 (= res!830648 (not (isEmpty!12784 rs!164)))))

(declare-fun b!1850038 () Bool)

(declare-datatypes ((Token!6884 0))(
  ( (Token!6885 (value!115029 TokenValue!3781) (rule!5859 Rule!7130) (size!16150 Int) (originalCharacters!4473 List!20516)) )
))
(declare-fun t!6207 () Token!6884)

(declare-fun e!1181972 () Bool)

(declare-fun e!1181975 () Bool)

(declare-fun tp!523180 () Bool)

(declare-fun inv!21 (TokenValue!3781) Bool)

(assert (=> b!1850038 (= e!1181972 (and (inv!21 (value!115029 t!6207)) e!1181975 tp!523180))))

(declare-fun e!1181974 () Bool)

(assert (=> b!1850039 (= e!1181974 (and tp!523183 tp!523184))))

(declare-fun b!1850040 () Bool)

(assert (=> b!1850040 (= e!1181971 false)))

(declare-fun lt!715438 () BalanceConc!13458)

(declare-datatypes ((LexerInterface!3288 0))(
  ( (LexerInterfaceExt!3285 (__x!12839 Int)) (Lexer!3286) )
))
(declare-fun thiss!10908 () LexerInterface!3288)

(declare-datatypes ((List!20518 0))(
  ( (Nil!20446) (Cons!20446 (h!25847 Token!6884) (t!172291 List!20518)) )
))
(declare-datatypes ((IArray!13543 0))(
  ( (IArray!13544 (innerList!6829 List!20518)) )
))
(declare-datatypes ((Conc!6769 0))(
  ( (Node!6769 (left!16443 Conc!6769) (right!16773 Conc!6769) (csize!13768 Int) (cheight!6980 Int)) (Leaf!9906 (xs!9645 IArray!13543) (csize!13769 Int)) (Empty!6769) )
))
(declare-datatypes ((BalanceConc!13460 0))(
  ( (BalanceConc!13461 (c!301990 Conc!6769)) )
))
(declare-fun print!1423 (LexerInterface!3288 BalanceConc!13460) BalanceConc!13458)

(declare-fun singletonSeq!1795 (Token!6884) BalanceConc!13460)

(assert (=> b!1850040 (= lt!715438 (print!1423 thiss!10908 (singletonSeq!1795 t!6207)))))

(declare-fun e!1181977 () Bool)

(assert (=> b!1850041 (= e!1181977 (and tp!523185 tp!523186))))

(declare-fun tp!523182 () Bool)

(declare-fun b!1850043 () Bool)

(declare-fun inv!26835 (String!23469) Bool)

(declare-fun inv!26838 (TokenValueInjection!7178) Bool)

(assert (=> b!1850043 (= e!1181975 (and tp!523182 (inv!26835 (tag!4079 (rule!5859 t!6207))) (inv!26838 (transformation!3665 (rule!5859 t!6207))) e!1181974))))

(declare-fun tp!523187 () Bool)

(declare-fun b!1850044 () Bool)

(assert (=> b!1850044 (= e!1181979 (and tp!523187 (inv!26835 (tag!4079 (h!25846 rs!164))) (inv!26838 (transformation!3665 (h!25846 rs!164))) e!1181977))))

(declare-fun b!1850042 () Bool)

(declare-fun res!830649 () Bool)

(assert (=> b!1850042 (=> (not res!830649) (not e!1181971))))

(declare-fun rulesInvariant!2957 (LexerInterface!3288 List!20517) Bool)

(assert (=> b!1850042 (= res!830649 (rulesInvariant!2957 thiss!10908 rs!164))))

(declare-fun res!830650 () Bool)

(assert (=> start!184630 (=> (not res!830650) (not e!1181971))))

(get-info :version)

(assert (=> start!184630 (= res!830650 ((_ is Lexer!3286) thiss!10908))))

(assert (=> start!184630 e!1181971))

(assert (=> start!184630 true))

(assert (=> start!184630 e!1181973))

(declare-fun inv!26839 (Token!6884) Bool)

(assert (=> start!184630 (and (inv!26839 t!6207) e!1181972)))

(assert (= (and start!184630 res!830650) b!1850037))

(assert (= (and b!1850037 res!830648) b!1850042))

(assert (= (and b!1850042 res!830649) b!1850040))

(assert (= b!1850044 b!1850041))

(assert (= b!1850036 b!1850044))

(assert (= (and start!184630 ((_ is Cons!20445) rs!164)) b!1850036))

(assert (= b!1850043 b!1850039))

(assert (= b!1850038 b!1850043))

(assert (= start!184630 b!1850038))

(declare-fun m!2276925 () Bool)

(assert (=> b!1850040 m!2276925))

(assert (=> b!1850040 m!2276925))

(declare-fun m!2276927 () Bool)

(assert (=> b!1850040 m!2276927))

(declare-fun m!2276929 () Bool)

(assert (=> b!1850038 m!2276929))

(declare-fun m!2276931 () Bool)

(assert (=> b!1850043 m!2276931))

(declare-fun m!2276933 () Bool)

(assert (=> b!1850043 m!2276933))

(declare-fun m!2276935 () Bool)

(assert (=> start!184630 m!2276935))

(declare-fun m!2276937 () Bool)

(assert (=> b!1850044 m!2276937))

(declare-fun m!2276939 () Bool)

(assert (=> b!1850044 m!2276939))

(declare-fun m!2276941 () Bool)

(assert (=> b!1850042 m!2276941))

(declare-fun m!2276943 () Bool)

(assert (=> b!1850037 m!2276943))

(check-sat (not b!1850036) (not start!184630) b_and!143853 (not b!1850037) (not b!1850038) (not b!1850044) b_and!143851 (not b!1850040) (not b!1850043) (not b_next!52337) (not b_next!52331) (not b_next!52335) (not b_next!52333) b_and!143855 b_and!143849 (not b!1850042))
(check-sat b_and!143853 b_and!143851 (not b_next!52337) (not b_next!52331) b_and!143849 (not b_next!52335) (not b_next!52333) b_and!143855)
