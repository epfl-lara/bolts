; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192360 () Bool)

(assert start!192360)

(declare-fun b!1920631 () Bool)

(declare-fun b_free!54905 () Bool)

(declare-fun b_next!55609 () Bool)

(assert (=> b!1920631 (= b_free!54905 (not b_next!55609))))

(declare-fun tp!548905 () Bool)

(declare-fun b_and!150135 () Bool)

(assert (=> b!1920631 (= tp!548905 b_and!150135)))

(declare-fun b_free!54907 () Bool)

(declare-fun b_next!55611 () Bool)

(assert (=> b!1920631 (= b_free!54907 (not b_next!55611))))

(declare-fun tp!548902 () Bool)

(declare-fun b_and!150137 () Bool)

(assert (=> b!1920631 (= tp!548902 b_and!150137)))

(declare-fun b!1920617 () Bool)

(declare-fun b_free!54909 () Bool)

(declare-fun b_next!55613 () Bool)

(assert (=> b!1920617 (= b_free!54909 (not b_next!55613))))

(declare-fun tp!548907 () Bool)

(declare-fun b_and!150139 () Bool)

(assert (=> b!1920617 (= tp!548907 b_and!150139)))

(declare-fun b_free!54911 () Bool)

(declare-fun b_next!55615 () Bool)

(assert (=> b!1920617 (= b_free!54911 (not b_next!55615))))

(declare-fun tp!548908 () Bool)

(declare-fun b_and!150141 () Bool)

(assert (=> b!1920617 (= tp!548908 b_and!150141)))

(declare-fun b!1920623 () Bool)

(declare-fun b_free!54913 () Bool)

(declare-fun b_next!55617 () Bool)

(assert (=> b!1920623 (= b_free!54913 (not b_next!55617))))

(declare-fun tp!548898 () Bool)

(declare-fun b_and!150143 () Bool)

(assert (=> b!1920623 (= tp!548898 b_and!150143)))

(declare-fun b_free!54915 () Bool)

(declare-fun b_next!55619 () Bool)

(assert (=> b!1920623 (= b_free!54915 (not b_next!55619))))

(declare-fun tp!548903 () Bool)

(declare-fun b_and!150145 () Bool)

(assert (=> b!1920623 (= tp!548903 b_and!150145)))

(declare-fun b!1920616 () Bool)

(declare-fun res!858917 () Bool)

(declare-fun e!1227707 () Bool)

(assert (=> b!1920616 (=> (not res!858917) (not e!1227707))))

(declare-datatypes ((List!21934 0))(
  ( (Nil!21852) (Cons!21852 (h!27253 (_ BitVec 16)) (t!178777 List!21934)) )
))
(declare-datatypes ((TokenValue!4052 0))(
  ( (FloatLiteralValue!8104 (text!28809 List!21934)) (TokenValueExt!4051 (__x!13602 Int)) (Broken!20260 (value!123171 List!21934)) (Object!4133) (End!4052) (Def!4052) (Underscore!4052) (Match!4052) (Else!4052) (Error!4052) (Case!4052) (If!4052) (Extends!4052) (Abstract!4052) (Class!4052) (Val!4052) (DelimiterValue!8104 (del!4112 List!21934)) (KeywordValue!4058 (value!123172 List!21934)) (CommentValue!8104 (value!123173 List!21934)) (WhitespaceValue!8104 (value!123174 List!21934)) (IndentationValue!4052 (value!123175 List!21934)) (String!25377) (Int32!4052) (Broken!20261 (value!123176 List!21934)) (Boolean!4053) (Unit!36187) (OperatorValue!4055 (op!4112 List!21934)) (IdentifierValue!8104 (value!123177 List!21934)) (IdentifierValue!8105 (value!123178 List!21934)) (WhitespaceValue!8105 (value!123179 List!21934)) (True!8104) (False!8104) (Broken!20262 (value!123180 List!21934)) (Broken!20263 (value!123181 List!21934)) (True!8105) (RightBrace!4052) (RightBracket!4052) (Colon!4052) (Null!4052) (Comma!4052) (LeftBracket!4052) (False!8105) (LeftBrace!4052) (ImaginaryLiteralValue!4052 (text!28810 List!21934)) (StringLiteralValue!12156 (value!123182 List!21934)) (EOFValue!4052 (value!123183 List!21934)) (IdentValue!4052 (value!123184 List!21934)) (DelimiterValue!8105 (value!123185 List!21934)) (DedentValue!4052 (value!123186 List!21934)) (NewLineValue!4052 (value!123187 List!21934)) (IntegerValue!12156 (value!123188 (_ BitVec 32)) (text!28811 List!21934)) (IntegerValue!12157 (value!123189 Int) (text!28812 List!21934)) (Times!4052) (Or!4052) (Equal!4052) (Minus!4052) (Broken!20264 (value!123190 List!21934)) (And!4052) (Div!4052) (LessEqual!4052) (Mod!4052) (Concat!9393) (Not!4052) (Plus!4052) (SpaceValue!4052 (value!123191 List!21934)) (IntegerValue!12158 (value!123192 Int) (text!28813 List!21934)) (StringLiteralValue!12157 (text!28814 List!21934)) (FloatLiteralValue!8105 (text!28815 List!21934)) (BytesLiteralValue!4052 (value!123193 List!21934)) (CommentValue!8105 (value!123194 List!21934)) (StringLiteralValue!12158 (value!123195 List!21934)) (ErrorTokenValue!4052 (msg!4113 List!21934)) )
))
(declare-datatypes ((C!10828 0))(
  ( (C!10829 (val!6366 Int)) )
))
(declare-datatypes ((List!21935 0))(
  ( (Nil!21853) (Cons!21853 (h!27254 C!10828) (t!178778 List!21935)) )
))
(declare-datatypes ((String!25378 0))(
  ( (String!25379 (value!123196 String)) )
))
(declare-datatypes ((IArray!14587 0))(
  ( (IArray!14588 (innerList!7351 List!21935)) )
))
(declare-datatypes ((Conc!7291 0))(
  ( (Node!7291 (left!17387 Conc!7291) (right!17717 Conc!7291) (csize!14812 Int) (cheight!7502 Int)) (Leaf!10712 (xs!10185 IArray!14587) (csize!14813 Int)) (Empty!7291) )
))
(declare-datatypes ((BalanceConc!14398 0))(
  ( (BalanceConc!14399 (c!312207 Conc!7291)) )
))
(declare-datatypes ((TokenValueInjection!7688 0))(
  ( (TokenValueInjection!7689 (toValue!5545 Int) (toChars!5404 Int)) )
))
(declare-datatypes ((Regex!5341 0))(
  ( (ElementMatch!5341 (c!312208 C!10828)) (Concat!9394 (regOne!11194 Regex!5341) (regTwo!11194 Regex!5341)) (EmptyExpr!5341) (Star!5341 (reg!5670 Regex!5341)) (EmptyLang!5341) (Union!5341 (regOne!11195 Regex!5341) (regTwo!11195 Regex!5341)) )
))
(declare-datatypes ((Rule!7632 0))(
  ( (Rule!7633 (regex!3916 Regex!5341) (tag!4356 String!25378) (isSeparator!3916 Bool) (transformation!3916 TokenValueInjection!7688)) )
))
(declare-datatypes ((List!21936 0))(
  ( (Nil!21854) (Cons!21854 (h!27255 Rule!7632) (t!178779 List!21936)) )
))
(declare-fun rules!3198 () List!21936)

(declare-fun sepAndNonSepRulesDisjointChars!1014 (List!21936 List!21936) Bool)

(assert (=> b!1920616 (= res!858917 (sepAndNonSepRulesDisjointChars!1014 rules!3198 rules!3198))))

(declare-fun e!1227704 () Bool)

(assert (=> b!1920617 (= e!1227704 (and tp!548907 tp!548908))))

(declare-fun b!1920618 () Bool)

(declare-fun tp!548910 () Bool)

(declare-fun e!1227696 () Bool)

(declare-fun e!1227700 () Bool)

(declare-fun inv!28923 (String!25378) Bool)

(declare-fun inv!28926 (TokenValueInjection!7688) Bool)

(assert (=> b!1920618 (= e!1227696 (and tp!548910 (inv!28923 (tag!4356 (h!27255 rules!3198))) (inv!28926 (transformation!3916 (h!27255 rules!3198))) e!1227700))))

(declare-fun e!1227693 () Bool)

(declare-datatypes ((Token!7384 0))(
  ( (Token!7385 (value!123197 TokenValue!4052) (rule!6119 Rule!7632) (size!17064 Int) (originalCharacters!4723 List!21935)) )
))
(declare-fun separatorToken!354 () Token!7384)

(declare-fun tp!548909 () Bool)

(declare-fun b!1920619 () Bool)

(declare-fun e!1227699 () Bool)

(assert (=> b!1920619 (= e!1227693 (and tp!548909 (inv!28923 (tag!4356 (rule!6119 separatorToken!354))) (inv!28926 (transformation!3916 (rule!6119 separatorToken!354))) e!1227699))))

(declare-fun b!1920620 () Bool)

(declare-fun res!858918 () Bool)

(assert (=> b!1920620 (=> (not res!858918) (not e!1227707))))

(declare-datatypes ((LexerInterface!3529 0))(
  ( (LexerInterfaceExt!3526 (__x!13603 Int)) (Lexer!3527) )
))
(declare-fun thiss!23328 () LexerInterface!3529)

(declare-datatypes ((List!21937 0))(
  ( (Nil!21855) (Cons!21855 (h!27256 Token!7384) (t!178780 List!21937)) )
))
(declare-fun tokens!598 () List!21937)

(declare-datatypes ((tuple2!20482 0))(
  ( (tuple2!20483 (_1!11710 Token!7384) (_2!11710 List!21935)) )
))
(declare-datatypes ((Option!4516 0))(
  ( (None!4515) (Some!4515 (v!26588 tuple2!20482)) )
))
(declare-fun isDefined!3810 (Option!4516) Bool)

(declare-fun maxPrefix!1967 (LexerInterface!3529 List!21936 List!21935) Option!4516)

(declare-fun printWithSeparatorTokenWhenNeededList!568 (LexerInterface!3529 List!21936 List!21937 Token!7384) List!21935)

(assert (=> b!1920620 (= res!858918 (isDefined!3810 (maxPrefix!1967 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!568 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun e!1227702 () Bool)

(declare-fun tp!548901 () Bool)

(declare-fun b!1920621 () Bool)

(declare-fun inv!21 (TokenValue!4052) Bool)

(assert (=> b!1920621 (= e!1227702 (and (inv!21 (value!123197 separatorToken!354)) e!1227693 tp!548901))))

(declare-fun b!1920622 () Bool)

(declare-fun res!858920 () Bool)

(assert (=> b!1920622 (=> (not res!858920) (not e!1227707))))

(declare-fun lambda!74981 () Int)

(declare-fun forall!4614 (List!21937 Int) Bool)

(assert (=> b!1920622 (= res!858920 (forall!4614 tokens!598 lambda!74981))))

(declare-fun res!858913 () Bool)

(assert (=> start!192360 (=> (not res!858913) (not e!1227707))))

(get-info :version)

(assert (=> start!192360 (= res!858913 ((_ is Lexer!3527) thiss!23328))))

(assert (=> start!192360 e!1227707))

(assert (=> start!192360 true))

(declare-fun e!1227706 () Bool)

(assert (=> start!192360 e!1227706))

(declare-fun e!1227695 () Bool)

(assert (=> start!192360 e!1227695))

(declare-fun inv!28927 (Token!7384) Bool)

(assert (=> start!192360 (and (inv!28927 separatorToken!354) e!1227702)))

(assert (=> b!1920623 (= e!1227699 (and tp!548898 tp!548903))))

(declare-fun b!1920624 () Bool)

(declare-fun res!858916 () Bool)

(assert (=> b!1920624 (=> (not res!858916) (not e!1227707))))

(assert (=> b!1920624 (= res!858916 (isSeparator!3916 (rule!6119 separatorToken!354)))))

(declare-fun b!1920625 () Bool)

(declare-fun e!1227698 () Bool)

(declare-fun tp!548899 () Bool)

(declare-fun e!1227705 () Bool)

(assert (=> b!1920625 (= e!1227705 (and (inv!21 (value!123197 (h!27256 tokens!598))) e!1227698 tp!548899))))

(declare-fun b!1920626 () Bool)

(assert (=> b!1920626 (= e!1227707 (not (forall!4614 tokens!598 lambda!74981)))))

(declare-fun b!1920627 () Bool)

(declare-fun res!858915 () Bool)

(assert (=> b!1920627 (=> (not res!858915) (not e!1227707))))

(declare-fun rulesInvariant!3136 (LexerInterface!3529 List!21936) Bool)

(assert (=> b!1920627 (= res!858915 (rulesInvariant!3136 thiss!23328 rules!3198))))

(declare-fun tp!548900 () Bool)

(declare-fun b!1920628 () Bool)

(assert (=> b!1920628 (= e!1227695 (and (inv!28927 (h!27256 tokens!598)) e!1227705 tp!548900))))

(declare-fun b!1920629 () Bool)

(declare-fun res!858912 () Bool)

(assert (=> b!1920629 (=> (not res!858912) (not e!1227707))))

(declare-fun rulesProduceIndividualToken!1701 (LexerInterface!3529 List!21936 Token!7384) Bool)

(assert (=> b!1920629 (= res!858912 (rulesProduceIndividualToken!1701 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1920630 () Bool)

(declare-fun tp!548906 () Bool)

(assert (=> b!1920630 (= e!1227706 (and e!1227696 tp!548906))))

(assert (=> b!1920631 (= e!1227700 (and tp!548905 tp!548902))))

(declare-fun tp!548904 () Bool)

(declare-fun b!1920632 () Bool)

(assert (=> b!1920632 (= e!1227698 (and tp!548904 (inv!28923 (tag!4356 (rule!6119 (h!27256 tokens!598)))) (inv!28926 (transformation!3916 (rule!6119 (h!27256 tokens!598)))) e!1227704))))

(declare-fun b!1920633 () Bool)

(declare-fun res!858911 () Bool)

(assert (=> b!1920633 (=> (not res!858911) (not e!1227707))))

(assert (=> b!1920633 (= res!858911 (not ((_ is Cons!21855) tokens!598)))))

(declare-fun b!1920634 () Bool)

(declare-fun res!858910 () Bool)

(assert (=> b!1920634 (=> (not res!858910) (not e!1227707))))

(declare-fun rulesProduceEachTokenIndividuallyList!1260 (LexerInterface!3529 List!21936 List!21937) Bool)

(assert (=> b!1920634 (= res!858910 (rulesProduceEachTokenIndividuallyList!1260 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1920635 () Bool)

(declare-fun res!858914 () Bool)

(assert (=> b!1920635 (=> (not res!858914) (not e!1227707))))

(declare-fun isEmpty!13437 (List!21937) Bool)

(assert (=> b!1920635 (= res!858914 (not (isEmpty!13437 tokens!598)))))

(declare-fun b!1920636 () Bool)

(declare-fun res!858919 () Bool)

(assert (=> b!1920636 (=> (not res!858919) (not e!1227707))))

(declare-fun isEmpty!13438 (List!21936) Bool)

(assert (=> b!1920636 (= res!858919 (not (isEmpty!13438 rules!3198)))))

(assert (= (and start!192360 res!858913) b!1920636))

(assert (= (and b!1920636 res!858919) b!1920627))

(assert (= (and b!1920627 res!858915) b!1920634))

(assert (= (and b!1920634 res!858910) b!1920629))

(assert (= (and b!1920629 res!858912) b!1920624))

(assert (= (and b!1920624 res!858916) b!1920622))

(assert (= (and b!1920622 res!858920) b!1920616))

(assert (= (and b!1920616 res!858917) b!1920633))

(assert (= (and b!1920633 res!858911) b!1920635))

(assert (= (and b!1920635 res!858914) b!1920620))

(assert (= (and b!1920620 res!858918) b!1920626))

(assert (= b!1920618 b!1920631))

(assert (= b!1920630 b!1920618))

(assert (= (and start!192360 ((_ is Cons!21854) rules!3198)) b!1920630))

(assert (= b!1920632 b!1920617))

(assert (= b!1920625 b!1920632))

(assert (= b!1920628 b!1920625))

(assert (= (and start!192360 ((_ is Cons!21855) tokens!598)) b!1920628))

(assert (= b!1920619 b!1920623))

(assert (= b!1920621 b!1920619))

(assert (= start!192360 b!1920621))

(declare-fun m!2355723 () Bool)

(assert (=> b!1920619 m!2355723))

(declare-fun m!2355725 () Bool)

(assert (=> b!1920619 m!2355725))

(declare-fun m!2355727 () Bool)

(assert (=> b!1920635 m!2355727))

(declare-fun m!2355729 () Bool)

(assert (=> b!1920626 m!2355729))

(declare-fun m!2355731 () Bool)

(assert (=> b!1920636 m!2355731))

(declare-fun m!2355733 () Bool)

(assert (=> b!1920629 m!2355733))

(declare-fun m!2355735 () Bool)

(assert (=> b!1920628 m!2355735))

(declare-fun m!2355737 () Bool)

(assert (=> b!1920627 m!2355737))

(declare-fun m!2355739 () Bool)

(assert (=> b!1920632 m!2355739))

(declare-fun m!2355741 () Bool)

(assert (=> b!1920632 m!2355741))

(declare-fun m!2355743 () Bool)

(assert (=> start!192360 m!2355743))

(declare-fun m!2355745 () Bool)

(assert (=> b!1920634 m!2355745))

(declare-fun m!2355747 () Bool)

(assert (=> b!1920621 m!2355747))

(assert (=> b!1920622 m!2355729))

(declare-fun m!2355749 () Bool)

(assert (=> b!1920620 m!2355749))

(assert (=> b!1920620 m!2355749))

(declare-fun m!2355751 () Bool)

(assert (=> b!1920620 m!2355751))

(assert (=> b!1920620 m!2355751))

(declare-fun m!2355753 () Bool)

(assert (=> b!1920620 m!2355753))

(declare-fun m!2355755 () Bool)

(assert (=> b!1920625 m!2355755))

(declare-fun m!2355757 () Bool)

(assert (=> b!1920616 m!2355757))

(declare-fun m!2355759 () Bool)

(assert (=> b!1920618 m!2355759))

(declare-fun m!2355761 () Bool)

(assert (=> b!1920618 m!2355761))

(check-sat (not b!1920627) (not b!1920618) (not b!1920630) (not b!1920634) b_and!150135 b_and!150139 (not b_next!55609) (not b!1920628) (not b!1920636) (not b!1920625) b_and!150143 b_and!150141 b_and!150145 (not b_next!55617) (not b!1920619) (not b!1920632) (not b_next!55613) (not start!192360) (not b!1920626) b_and!150137 (not b_next!55615) (not b!1920620) (not b!1920629) (not b_next!55611) (not b!1920622) (not b!1920616) (not b!1920635) (not b_next!55619) (not b!1920621))
(check-sat b_and!150135 b_and!150139 (not b_next!55609) (not b_next!55613) b_and!150137 (not b_next!55615) b_and!150143 (not b_next!55611) (not b_next!55619) b_and!150141 b_and!150145 (not b_next!55617))
