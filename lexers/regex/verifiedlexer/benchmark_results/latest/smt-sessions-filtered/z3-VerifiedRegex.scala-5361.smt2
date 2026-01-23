; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273422 () Bool)

(assert start!273422)

(declare-fun b!2818853 () Bool)

(declare-fun b_free!80517 () Bool)

(declare-fun b_next!81221 () Bool)

(assert (=> b!2818853 (= b_free!80517 (not b_next!81221))))

(declare-fun tp!900124 () Bool)

(declare-fun b_and!205855 () Bool)

(assert (=> b!2818853 (= tp!900124 b_and!205855)))

(declare-fun b_free!80519 () Bool)

(declare-fun b_next!81223 () Bool)

(assert (=> b!2818853 (= b_free!80519 (not b_next!81223))))

(declare-fun tp!900122 () Bool)

(declare-fun b_and!205857 () Bool)

(assert (=> b!2818853 (= tp!900122 b_and!205857)))

(declare-fun b!2818844 () Bool)

(declare-fun b_free!80521 () Bool)

(declare-fun b_next!81225 () Bool)

(assert (=> b!2818844 (= b_free!80521 (not b_next!81225))))

(declare-fun tp!900121 () Bool)

(declare-fun b_and!205859 () Bool)

(assert (=> b!2818844 (= tp!900121 b_and!205859)))

(declare-fun b_free!80523 () Bool)

(declare-fun b_next!81227 () Bool)

(assert (=> b!2818844 (= b_free!80523 (not b_next!81227))))

(declare-fun tp!900127 () Bool)

(declare-fun b_and!205861 () Bool)

(assert (=> b!2818844 (= tp!900127 b_and!205861)))

(declare-fun b!2818867 () Bool)

(declare-fun e!1782928 () Bool)

(assert (=> b!2818867 (= e!1782928 true)))

(declare-fun b!2818866 () Bool)

(declare-fun e!1782927 () Bool)

(assert (=> b!2818866 (= e!1782927 e!1782928)))

(declare-fun b!2818865 () Bool)

(declare-fun e!1782926 () Bool)

(assert (=> b!2818865 (= e!1782926 e!1782927)))

(declare-fun b!2818852 () Bool)

(assert (=> b!2818852 e!1782926))

(assert (= b!2818866 b!2818867))

(assert (= b!2818865 b!2818866))

(declare-datatypes ((C!16844 0))(
  ( (C!16845 (val!10402 Int)) )
))
(declare-datatypes ((List!33154 0))(
  ( (Nil!33030) (Cons!33030 (h!38450 (_ BitVec 16)) (t!230307 List!33154)) )
))
(declare-datatypes ((TokenValue!5171 0))(
  ( (FloatLiteralValue!10342 (text!36642 List!33154)) (TokenValueExt!5170 (__x!22015 Int)) (Broken!25855 (value!159112 List!33154)) (Object!5294) (End!5171) (Def!5171) (Underscore!5171) (Match!5171) (Else!5171) (Error!5171) (Case!5171) (If!5171) (Extends!5171) (Abstract!5171) (Class!5171) (Val!5171) (DelimiterValue!10342 (del!5231 List!33154)) (KeywordValue!5177 (value!159113 List!33154)) (CommentValue!10342 (value!159114 List!33154)) (WhitespaceValue!10342 (value!159115 List!33154)) (IndentationValue!5171 (value!159116 List!33154)) (String!36310) (Int32!5171) (Broken!25856 (value!159117 List!33154)) (Boolean!5172) (Unit!46974) (OperatorValue!5174 (op!5231 List!33154)) (IdentifierValue!10342 (value!159118 List!33154)) (IdentifierValue!10343 (value!159119 List!33154)) (WhitespaceValue!10343 (value!159120 List!33154)) (True!10342) (False!10342) (Broken!25857 (value!159121 List!33154)) (Broken!25858 (value!159122 List!33154)) (True!10343) (RightBrace!5171) (RightBracket!5171) (Colon!5171) (Null!5171) (Comma!5171) (LeftBracket!5171) (False!10343) (LeftBrace!5171) (ImaginaryLiteralValue!5171 (text!36643 List!33154)) (StringLiteralValue!15513 (value!159123 List!33154)) (EOFValue!5171 (value!159124 List!33154)) (IdentValue!5171 (value!159125 List!33154)) (DelimiterValue!10343 (value!159126 List!33154)) (DedentValue!5171 (value!159127 List!33154)) (NewLineValue!5171 (value!159128 List!33154)) (IntegerValue!15513 (value!159129 (_ BitVec 32)) (text!36644 List!33154)) (IntegerValue!15514 (value!159130 Int) (text!36645 List!33154)) (Times!5171) (Or!5171) (Equal!5171) (Minus!5171) (Broken!25859 (value!159131 List!33154)) (And!5171) (Div!5171) (LessEqual!5171) (Mod!5171) (Concat!13502) (Not!5171) (Plus!5171) (SpaceValue!5171 (value!159132 List!33154)) (IntegerValue!15515 (value!159133 Int) (text!36646 List!33154)) (StringLiteralValue!15514 (text!36647 List!33154)) (FloatLiteralValue!10343 (text!36648 List!33154)) (BytesLiteralValue!5171 (value!159134 List!33154)) (CommentValue!10343 (value!159135 List!33154)) (StringLiteralValue!15515 (value!159136 List!33154)) (ErrorTokenValue!5171 (msg!5232 List!33154)) )
))
(declare-datatypes ((List!33155 0))(
  ( (Nil!33031) (Cons!33031 (h!38451 C!16844) (t!230308 List!33155)) )
))
(declare-datatypes ((IArray!20501 0))(
  ( (IArray!20502 (innerList!10308 List!33155)) )
))
(declare-datatypes ((Conc!10248 0))(
  ( (Node!10248 (left!24937 Conc!10248) (right!25267 Conc!10248) (csize!20726 Int) (cheight!10459 Int)) (Leaf!15610 (xs!13360 IArray!20501) (csize!20727 Int)) (Empty!10248) )
))
(declare-datatypes ((BalanceConc!20134 0))(
  ( (BalanceConc!20135 (c!456892 Conc!10248)) )
))
(declare-datatypes ((TokenValueInjection!9770 0))(
  ( (TokenValueInjection!9771 (toValue!6955 Int) (toChars!6814 Int)) )
))
(declare-datatypes ((String!36311 0))(
  ( (String!36312 (value!159137 String)) )
))
(declare-datatypes ((Regex!8331 0))(
  ( (ElementMatch!8331 (c!456893 C!16844)) (Concat!13503 (regOne!17174 Regex!8331) (regTwo!17174 Regex!8331)) (EmptyExpr!8331) (Star!8331 (reg!8660 Regex!8331)) (EmptyLang!8331) (Union!8331 (regOne!17175 Regex!8331) (regTwo!17175 Regex!8331)) )
))
(declare-datatypes ((Rule!9682 0))(
  ( (Rule!9683 (regex!4941 Regex!8331) (tag!5445 String!36311) (isSeparator!4941 Bool) (transformation!4941 TokenValueInjection!9770)) )
))
(declare-datatypes ((List!33156 0))(
  ( (Nil!33032) (Cons!33032 (h!38452 Rule!9682) (t!230309 List!33156)) )
))
(declare-fun rules!4424 () List!33156)

(get-info :version)

(assert (= (and b!2818852 ((_ is Cons!33032) rules!4424)) b!2818865))

(declare-fun lambda!103447 () Int)

(declare-fun order!17483 () Int)

(declare-fun order!17485 () Int)

(declare-fun dynLambda!13784 (Int Int) Int)

(declare-fun dynLambda!13785 (Int Int) Int)

(assert (=> b!2818867 (< (dynLambda!13784 order!17483 (toValue!6955 (transformation!4941 (h!38452 rules!4424)))) (dynLambda!13785 order!17485 lambda!103447))))

(declare-fun order!17487 () Int)

(declare-fun dynLambda!13786 (Int Int) Int)

(assert (=> b!2818867 (< (dynLambda!13786 order!17487 (toChars!6814 (transformation!4941 (h!38452 rules!4424)))) (dynLambda!13785 order!17485 lambda!103447))))

(declare-fun res!1173046 () Bool)

(declare-fun e!1782917 () Bool)

(assert (=> start!273422 (=> (not res!1173046) (not e!1782917))))

(declare-datatypes ((LexerInterface!4532 0))(
  ( (LexerInterfaceExt!4529 (__x!22016 Int)) (Lexer!4530) )
))
(declare-fun thiss!27755 () LexerInterface!4532)

(assert (=> start!273422 (= res!1173046 ((_ is Lexer!4530) thiss!27755))))

(assert (=> start!273422 e!1782917))

(assert (=> start!273422 true))

(declare-fun e!1782915 () Bool)

(assert (=> start!273422 e!1782915))

(declare-fun e!1782910 () Bool)

(assert (=> start!273422 e!1782910))

(declare-fun b!2818842 () Bool)

(declare-fun e!1782914 () Bool)

(declare-fun e!1782912 () Bool)

(assert (=> b!2818842 (= e!1782914 e!1782912)))

(declare-fun res!1173044 () Bool)

(assert (=> b!2818842 (=> (not res!1173044) (not e!1782912))))

(declare-datatypes ((Token!9284 0))(
  ( (Token!9285 (value!159138 TokenValue!5171) (rule!7369 Rule!9682) (size!25719 Int) (originalCharacters!5673 List!33155)) )
))
(declare-datatypes ((List!33157 0))(
  ( (Nil!33033) (Cons!33033 (h!38453 Token!9284) (t!230310 List!33157)) )
))
(declare-fun lt!1006383 () List!33157)

(declare-fun rulesProduceIndividualToken!2070 (LexerInterface!4532 List!33156 Token!9284) Bool)

(assert (=> b!2818842 (= res!1173044 (rulesProduceIndividualToken!2070 thiss!27755 rules!4424 (h!38453 lt!1006383)))))

(declare-fun b!2818843 () Bool)

(declare-fun res!1173041 () Bool)

(assert (=> b!2818843 (=> (not res!1173041) (not e!1782917))))

(declare-fun isEmpty!18270 (List!33156) Bool)

(assert (=> b!2818843 (= res!1173041 (not (isEmpty!18270 rules!4424)))))

(declare-fun e!1782913 () Bool)

(assert (=> b!2818844 (= e!1782913 (and tp!900121 tp!900127))))

(declare-fun e!1782919 () Bool)

(declare-fun l!6581 () List!33157)

(declare-fun b!2818845 () Bool)

(declare-fun e!1782918 () Bool)

(declare-fun tp!900126 () Bool)

(declare-fun inv!21 (TokenValue!5171) Bool)

(assert (=> b!2818845 (= e!1782918 (and (inv!21 (value!159138 (h!38453 l!6581))) e!1782919 tp!900126))))

(declare-fun b!2818846 () Bool)

(declare-fun e!1782907 () Bool)

(declare-fun tp!900125 () Bool)

(assert (=> b!2818846 (= e!1782915 (and e!1782907 tp!900125))))

(declare-fun b!2818847 () Bool)

(declare-fun res!1173047 () Bool)

(assert (=> b!2818847 (=> (not res!1173047) (not e!1782917))))

(declare-fun rulesInvariant!3950 (LexerInterface!4532 List!33156) Bool)

(assert (=> b!2818847 (= res!1173047 (rulesInvariant!3950 thiss!27755 rules!4424))))

(declare-fun b!2818848 () Bool)

(declare-fun res!1173043 () Bool)

(assert (=> b!2818848 (=> (not res!1173043) (not e!1782917))))

(declare-fun i!1730 () Int)

(assert (=> b!2818848 (= res!1173043 (and (not ((_ is Nil!33033) l!6581)) (<= i!1730 0)))))

(declare-fun b!2818849 () Bool)

(declare-fun res!1173045 () Bool)

(assert (=> b!2818849 (=> (not res!1173045) (not e!1782917))))

(declare-fun rulesProduceEachTokenIndividuallyList!1584 (LexerInterface!4532 List!33156 List!33157) Bool)

(assert (=> b!2818849 (= res!1173045 (rulesProduceEachTokenIndividuallyList!1584 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2818850 () Bool)

(declare-fun tp!900123 () Bool)

(declare-fun inv!44949 (Token!9284) Bool)

(assert (=> b!2818850 (= e!1782910 (and (inv!44949 (h!38453 l!6581)) e!1782918 tp!900123))))

(declare-fun b!2818851 () Bool)

(declare-fun res!1173040 () Bool)

(assert (=> b!2818851 (=> (not res!1173040) (not e!1782917))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!669 (LexerInterface!4532 List!33157 List!33156) Bool)

(assert (=> b!2818851 (= res!1173040 (tokensListTwoByTwoPredicateSeparableList!669 thiss!27755 l!6581 rules!4424))))

(assert (=> b!2818852 (= e!1782917 (not true))))

(declare-fun forall!6759 (List!33157 Int) Bool)

(assert (=> b!2818852 (forall!6759 lt!1006383 lambda!103447)))

(declare-datatypes ((Unit!46975 0))(
  ( (Unit!46976) )
))
(declare-fun lt!1006382 () Unit!46975)

(declare-fun lemmaForallSubseq!209 (List!33157 List!33157 Int) Unit!46975)

(assert (=> b!2818852 (= lt!1006382 (lemmaForallSubseq!209 lt!1006383 l!6581 lambda!103447))))

(assert (=> b!2818852 (= (rulesProduceEachTokenIndividuallyList!1584 thiss!27755 rules!4424 lt!1006383) e!1782914)))

(declare-fun res!1173042 () Bool)

(assert (=> b!2818852 (=> res!1173042 e!1782914)))

(assert (=> b!2818852 (= res!1173042 (not ((_ is Cons!33033) lt!1006383)))))

(declare-fun take!535 (List!33157 Int) List!33157)

(assert (=> b!2818852 (= lt!1006383 (take!535 l!6581 i!1730))))

(declare-fun e!1782908 () Bool)

(assert (=> b!2818853 (= e!1782908 (and tp!900124 tp!900122))))

(declare-fun b!2818854 () Bool)

(assert (=> b!2818854 (= e!1782912 (rulesProduceEachTokenIndividuallyList!1584 thiss!27755 rules!4424 (t!230310 lt!1006383)))))

(declare-fun b!2818855 () Bool)

(declare-fun tp!900120 () Bool)

(declare-fun inv!44946 (String!36311) Bool)

(declare-fun inv!44950 (TokenValueInjection!9770) Bool)

(assert (=> b!2818855 (= e!1782919 (and tp!900120 (inv!44946 (tag!5445 (rule!7369 (h!38453 l!6581)))) (inv!44950 (transformation!4941 (rule!7369 (h!38453 l!6581)))) e!1782913))))

(declare-fun b!2818856 () Bool)

(declare-fun tp!900128 () Bool)

(assert (=> b!2818856 (= e!1782907 (and tp!900128 (inv!44946 (tag!5445 (h!38452 rules!4424))) (inv!44950 (transformation!4941 (h!38452 rules!4424))) e!1782908))))

(assert (= (and start!273422 res!1173046) b!2818843))

(assert (= (and b!2818843 res!1173041) b!2818847))

(assert (= (and b!2818847 res!1173047) b!2818849))

(assert (= (and b!2818849 res!1173045) b!2818851))

(assert (= (and b!2818851 res!1173040) b!2818848))

(assert (= (and b!2818848 res!1173043) b!2818852))

(assert (= (and b!2818852 (not res!1173042)) b!2818842))

(assert (= (and b!2818842 res!1173044) b!2818854))

(assert (= b!2818856 b!2818853))

(assert (= b!2818846 b!2818856))

(assert (= (and start!273422 ((_ is Cons!33032) rules!4424)) b!2818846))

(assert (= b!2818855 b!2818844))

(assert (= b!2818845 b!2818855))

(assert (= b!2818850 b!2818845))

(assert (= (and start!273422 ((_ is Cons!33033) l!6581)) b!2818850))

(declare-fun m!3249571 () Bool)

(assert (=> b!2818842 m!3249571))

(declare-fun m!3249573 () Bool)

(assert (=> b!2818850 m!3249573))

(declare-fun m!3249575 () Bool)

(assert (=> b!2818856 m!3249575))

(declare-fun m!3249577 () Bool)

(assert (=> b!2818856 m!3249577))

(declare-fun m!3249579 () Bool)

(assert (=> b!2818849 m!3249579))

(declare-fun m!3249581 () Bool)

(assert (=> b!2818845 m!3249581))

(declare-fun m!3249583 () Bool)

(assert (=> b!2818843 m!3249583))

(declare-fun m!3249585 () Bool)

(assert (=> b!2818854 m!3249585))

(declare-fun m!3249587 () Bool)

(assert (=> b!2818851 m!3249587))

(declare-fun m!3249589 () Bool)

(assert (=> b!2818855 m!3249589))

(declare-fun m!3249591 () Bool)

(assert (=> b!2818855 m!3249591))

(declare-fun m!3249593 () Bool)

(assert (=> b!2818852 m!3249593))

(declare-fun m!3249595 () Bool)

(assert (=> b!2818852 m!3249595))

(declare-fun m!3249597 () Bool)

(assert (=> b!2818852 m!3249597))

(declare-fun m!3249599 () Bool)

(assert (=> b!2818852 m!3249599))

(declare-fun m!3249601 () Bool)

(assert (=> b!2818847 m!3249601))

(check-sat (not b!2818856) (not b_next!81221) (not b!2818855) (not b!2818849) (not b!2818852) (not b!2818851) (not b_next!81223) b_and!205857 (not b!2818850) (not b_next!81227) (not b!2818865) b_and!205855 (not b!2818846) (not b!2818842) b_and!205859 (not b!2818843) (not b!2818845) (not b_next!81225) (not b!2818854) b_and!205861 (not b!2818847))
(check-sat (not b_next!81221) b_and!205855 b_and!205859 (not b_next!81223) b_and!205857 (not b_next!81225) (not b_next!81227) b_and!205861)
