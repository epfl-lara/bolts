; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259646 () Bool)

(assert start!259646)

(declare-fun b!2669526 () Bool)

(declare-fun b_free!74945 () Bool)

(declare-fun b_next!75649 () Bool)

(assert (=> b!2669526 (= b_free!74945 (not b_next!75649))))

(declare-fun tp!843813 () Bool)

(declare-fun b_and!196953 () Bool)

(assert (=> b!2669526 (= tp!843813 b_and!196953)))

(declare-fun b_free!74947 () Bool)

(declare-fun b_next!75651 () Bool)

(assert (=> b!2669526 (= b_free!74947 (not b_next!75651))))

(declare-fun tp!843805 () Bool)

(declare-fun b_and!196955 () Bool)

(assert (=> b!2669526 (= tp!843805 b_and!196955)))

(declare-fun b!2669529 () Bool)

(declare-fun b_free!74949 () Bool)

(declare-fun b_next!75653 () Bool)

(assert (=> b!2669529 (= b_free!74949 (not b_next!75653))))

(declare-fun tp!843806 () Bool)

(declare-fun b_and!196957 () Bool)

(assert (=> b!2669529 (= tp!843806 b_and!196957)))

(declare-fun b_free!74951 () Bool)

(declare-fun b_next!75655 () Bool)

(assert (=> b!2669529 (= b_free!74951 (not b_next!75655))))

(declare-fun tp!843803 () Bool)

(declare-fun b_and!196959 () Bool)

(assert (=> b!2669529 (= tp!843803 b_and!196959)))

(declare-fun b!2669540 () Bool)

(declare-fun b_free!74953 () Bool)

(declare-fun b_next!75657 () Bool)

(assert (=> b!2669540 (= b_free!74953 (not b_next!75657))))

(declare-fun tp!843814 () Bool)

(declare-fun b_and!196961 () Bool)

(assert (=> b!2669540 (= tp!843814 b_and!196961)))

(declare-fun b_free!74955 () Bool)

(declare-fun b_next!75659 () Bool)

(assert (=> b!2669540 (= b_free!74955 (not b_next!75659))))

(declare-fun tp!843812 () Bool)

(declare-fun b_and!196963 () Bool)

(assert (=> b!2669540 (= tp!843812 b_and!196963)))

(declare-fun bs!479392 () Bool)

(declare-fun b!2669538 () Bool)

(declare-fun b!2669527 () Bool)

(assert (= bs!479392 (and b!2669538 b!2669527)))

(declare-fun lambda!99648 () Int)

(declare-fun lambda!99647 () Int)

(assert (=> bs!479392 (not (= lambda!99648 lambda!99647))))

(declare-fun b!2669555 () Bool)

(declare-fun e!1682340 () Bool)

(assert (=> b!2669555 (= e!1682340 true)))

(declare-fun b!2669554 () Bool)

(declare-fun e!1682339 () Bool)

(assert (=> b!2669554 (= e!1682339 e!1682340)))

(declare-fun b!2669553 () Bool)

(declare-fun e!1682338 () Bool)

(assert (=> b!2669553 (= e!1682338 e!1682339)))

(assert (=> b!2669538 e!1682338))

(assert (= b!2669554 b!2669555))

(assert (= b!2669553 b!2669554))

(declare-datatypes ((List!30765 0))(
  ( (Nil!30665) (Cons!30665 (h!36085 (_ BitVec 16)) (t!223072 List!30765)) )
))
(declare-datatypes ((TokenValue!4897 0))(
  ( (FloatLiteralValue!9794 (text!34724 List!30765)) (TokenValueExt!4896 (__x!19627 Int)) (Broken!24485 (value!150816 List!30765)) (Object!4996) (End!4897) (Def!4897) (Underscore!4897) (Match!4897) (Else!4897) (Error!4897) (Case!4897) (If!4897) (Extends!4897) (Abstract!4897) (Class!4897) (Val!4897) (DelimiterValue!9794 (del!4957 List!30765)) (KeywordValue!4903 (value!150817 List!30765)) (CommentValue!9794 (value!150818 List!30765)) (WhitespaceValue!9794 (value!150819 List!30765)) (IndentationValue!4897 (value!150820 List!30765)) (String!34368) (Int32!4897) (Broken!24486 (value!150821 List!30765)) (Boolean!4898) (Unit!44892) (OperatorValue!4900 (op!4957 List!30765)) (IdentifierValue!9794 (value!150822 List!30765)) (IdentifierValue!9795 (value!150823 List!30765)) (WhitespaceValue!9795 (value!150824 List!30765)) (True!9794) (False!9794) (Broken!24487 (value!150825 List!30765)) (Broken!24488 (value!150826 List!30765)) (True!9795) (RightBrace!4897) (RightBracket!4897) (Colon!4897) (Null!4897) (Comma!4897) (LeftBracket!4897) (False!9795) (LeftBrace!4897) (ImaginaryLiteralValue!4897 (text!34725 List!30765)) (StringLiteralValue!14691 (value!150827 List!30765)) (EOFValue!4897 (value!150828 List!30765)) (IdentValue!4897 (value!150829 List!30765)) (DelimiterValue!9795 (value!150830 List!30765)) (DedentValue!4897 (value!150831 List!30765)) (NewLineValue!4897 (value!150832 List!30765)) (IntegerValue!14691 (value!150833 (_ BitVec 32)) (text!34726 List!30765)) (IntegerValue!14692 (value!150834 Int) (text!34727 List!30765)) (Times!4897) (Or!4897) (Equal!4897) (Minus!4897) (Broken!24489 (value!150835 List!30765)) (And!4897) (Div!4897) (LessEqual!4897) (Mod!4897) (Concat!12716) (Not!4897) (Plus!4897) (SpaceValue!4897 (value!150836 List!30765)) (IntegerValue!14693 (value!150837 Int) (text!34728 List!30765)) (StringLiteralValue!14692 (text!34729 List!30765)) (FloatLiteralValue!9795 (text!34730 List!30765)) (BytesLiteralValue!4897 (value!150838 List!30765)) (CommentValue!9795 (value!150839 List!30765)) (StringLiteralValue!14693 (value!150840 List!30765)) (ErrorTokenValue!4897 (msg!4958 List!30765)) )
))
(declare-datatypes ((C!15796 0))(
  ( (C!15797 (val!9832 Int)) )
))
(declare-datatypes ((List!30766 0))(
  ( (Nil!30666) (Cons!30666 (h!36086 C!15796) (t!223073 List!30766)) )
))
(declare-datatypes ((IArray!19179 0))(
  ( (IArray!19180 (innerList!9647 List!30766)) )
))
(declare-datatypes ((Conc!9587 0))(
  ( (Node!9587 (left!23712 Conc!9587) (right!24042 Conc!9587) (csize!19404 Int) (cheight!9798 Int)) (Leaf!14665 (xs!12617 IArray!19179) (csize!19405 Int)) (Empty!9587) )
))
(declare-datatypes ((BalanceConc!18788 0))(
  ( (BalanceConc!18789 (c!430423 Conc!9587)) )
))
(declare-datatypes ((Regex!7819 0))(
  ( (ElementMatch!7819 (c!430424 C!15796)) (Concat!12717 (regOne!16150 Regex!7819) (regTwo!16150 Regex!7819)) (EmptyExpr!7819) (Star!7819 (reg!8148 Regex!7819)) (EmptyLang!7819) (Union!7819 (regOne!16151 Regex!7819) (regTwo!16151 Regex!7819)) )
))
(declare-datatypes ((TokenValueInjection!9234 0))(
  ( (TokenValueInjection!9235 (toValue!6613 Int) (toChars!6472 Int)) )
))
(declare-datatypes ((String!34369 0))(
  ( (String!34370 (value!150841 String)) )
))
(declare-datatypes ((Rule!9150 0))(
  ( (Rule!9151 (regex!4675 Regex!7819) (tag!5177 String!34369) (isSeparator!4675 Bool) (transformation!4675 TokenValueInjection!9234)) )
))
(declare-datatypes ((List!30767 0))(
  ( (Nil!30667) (Cons!30667 (h!36087 Rule!9150) (t!223074 List!30767)) )
))
(declare-fun rules!1712 () List!30767)

(get-info :version)

(assert (= (and b!2669538 ((_ is Cons!30667) rules!1712)) b!2669553))

(declare-fun order!16793 () Int)

(declare-fun order!16791 () Int)

(declare-fun dynLambda!13256 (Int Int) Int)

(declare-fun dynLambda!13257 (Int Int) Int)

(assert (=> b!2669555 (< (dynLambda!13256 order!16791 (toValue!6613 (transformation!4675 (h!36087 rules!1712)))) (dynLambda!13257 order!16793 lambda!99648))))

(declare-fun order!16795 () Int)

(declare-fun dynLambda!13258 (Int Int) Int)

(assert (=> b!2669555 (< (dynLambda!13258 order!16795 (toChars!6472 (transformation!4675 (h!36087 rules!1712)))) (dynLambda!13257 order!16793 lambda!99648))))

(assert (=> b!2669538 true))

(declare-fun b!2669525 () Bool)

(declare-fun res!1122371 () Bool)

(declare-fun e!1682318 () Bool)

(assert (=> b!2669525 (=> (not res!1122371) (not e!1682318))))

(declare-datatypes ((LexerInterface!4272 0))(
  ( (LexerInterfaceExt!4269 (__x!19628 Int)) (Lexer!4270) )
))
(declare-fun thiss!14116 () LexerInterface!4272)

(declare-datatypes ((Token!8820 0))(
  ( (Token!8821 (value!150842 TokenValue!4897) (rule!7081 Rule!9150) (size!23733 Int) (originalCharacters!5441 List!30766)) )
))
(declare-datatypes ((List!30768 0))(
  ( (Nil!30668) (Cons!30668 (h!36088 Token!8820) (t!223075 List!30768)) )
))
(declare-fun l!4335 () List!30768)

(declare-fun rulesProduceEachTokenIndividuallyList!1494 (LexerInterface!4272 List!30767 List!30768) Bool)

(assert (=> b!2669525 (= res!1122371 (rulesProduceEachTokenIndividuallyList!1494 thiss!14116 rules!1712 l!4335))))

(declare-fun e!1682330 () Bool)

(assert (=> b!2669526 (= e!1682330 (and tp!843813 tp!843805))))

(declare-fun res!1122369 () Bool)

(assert (=> b!2669527 (=> (not res!1122369) (not e!1682318))))

(declare-fun forall!6488 (List!30768 Int) Bool)

(assert (=> b!2669527 (= res!1122369 (forall!6488 l!4335 lambda!99647))))

(declare-fun res!1122373 () Bool)

(assert (=> start!259646 (=> (not res!1122373) (not e!1682318))))

(assert (=> start!259646 (= res!1122373 ((_ is Lexer!4270) thiss!14116))))

(assert (=> start!259646 e!1682318))

(assert (=> start!259646 true))

(declare-fun e!1682320 () Bool)

(assert (=> start!259646 e!1682320))

(declare-fun e!1682319 () Bool)

(assert (=> start!259646 e!1682319))

(declare-fun separatorToken!152 () Token!8820)

(declare-fun e!1682317 () Bool)

(declare-fun inv!41672 (Token!8820) Bool)

(assert (=> start!259646 (and (inv!41672 separatorToken!152) e!1682317)))

(declare-fun b!2669528 () Bool)

(declare-fun res!1122372 () Bool)

(assert (=> b!2669528 (=> (not res!1122372) (not e!1682318))))

(declare-fun rulesInvariant!3772 (LexerInterface!4272 List!30767) Bool)

(assert (=> b!2669528 (= res!1122372 (rulesInvariant!3772 thiss!14116 rules!1712))))

(declare-fun e!1682328 () Bool)

(assert (=> b!2669529 (= e!1682328 (and tp!843806 tp!843803))))

(declare-fun e!1682321 () Bool)

(declare-fun tp!843809 () Bool)

(declare-fun e!1682331 () Bool)

(declare-fun b!2669530 () Bool)

(declare-fun inv!41669 (String!34369) Bool)

(declare-fun inv!41673 (TokenValueInjection!9234) Bool)

(assert (=> b!2669530 (= e!1682331 (and tp!843809 (inv!41669 (tag!5177 (rule!7081 (h!36088 l!4335)))) (inv!41673 (transformation!4675 (rule!7081 (h!36088 l!4335)))) e!1682321))))

(declare-fun b!2669531 () Bool)

(declare-fun e!1682327 () Bool)

(declare-fun tp!843808 () Bool)

(assert (=> b!2669531 (= e!1682327 (and tp!843808 (inv!41669 (tag!5177 (h!36087 rules!1712))) (inv!41673 (transformation!4675 (h!36087 rules!1712))) e!1682330))))

(declare-fun b!2669532 () Bool)

(declare-fun res!1122366 () Bool)

(assert (=> b!2669532 (=> (not res!1122366) (not e!1682318))))

(assert (=> b!2669532 (= res!1122366 (isSeparator!4675 (rule!7081 separatorToken!152)))))

(declare-fun b!2669533 () Bool)

(declare-fun e!1682324 () Bool)

(declare-fun tp!843802 () Bool)

(assert (=> b!2669533 (= e!1682324 (and tp!843802 (inv!41669 (tag!5177 (rule!7081 separatorToken!152))) (inv!41673 (transformation!4675 (rule!7081 separatorToken!152))) e!1682328))))

(declare-fun b!2669534 () Bool)

(declare-fun res!1122374 () Bool)

(assert (=> b!2669534 (=> (not res!1122374) (not e!1682318))))

(declare-fun isEmpty!17547 (List!30767) Bool)

(assert (=> b!2669534 (= res!1122374 (not (isEmpty!17547 rules!1712)))))

(declare-fun tp!843807 () Bool)

(declare-fun e!1682323 () Bool)

(declare-fun b!2669535 () Bool)

(assert (=> b!2669535 (= e!1682319 (and (inv!41672 (h!36088 l!4335)) e!1682323 tp!843807))))

(declare-fun tp!843804 () Bool)

(declare-fun b!2669536 () Bool)

(declare-fun inv!21 (TokenValue!4897) Bool)

(assert (=> b!2669536 (= e!1682317 (and (inv!21 (value!150842 separatorToken!152)) e!1682324 tp!843804))))

(declare-fun b!2669537 () Bool)

(declare-fun tp!843811 () Bool)

(assert (=> b!2669537 (= e!1682323 (and (inv!21 (value!150842 (h!36088 l!4335))) e!1682331 tp!843811))))

(assert (=> b!2669538 (= e!1682318 false)))

(declare-fun lt!940421 () Bool)

(assert (=> b!2669538 (= lt!940421 (rulesProduceEachTokenIndividuallyList!1494 thiss!14116 rules!1712 (t!223075 l!4335)))))

(declare-datatypes ((Unit!44893 0))(
  ( (Unit!44894) )
))
(declare-fun lt!940422 () Unit!44893)

(declare-fun forallContained!1017 (List!30768 Int Token!8820) Unit!44893)

(assert (=> b!2669538 (= lt!940422 (forallContained!1017 l!4335 lambda!99648 (h!36088 l!4335)))))

(declare-fun b!2669539 () Bool)

(declare-fun res!1122368 () Bool)

(assert (=> b!2669539 (=> (not res!1122368) (not e!1682318))))

(declare-fun rulesProduceIndividualToken!1984 (LexerInterface!4272 List!30767 Token!8820) Bool)

(assert (=> b!2669539 (= res!1122368 (rulesProduceIndividualToken!1984 thiss!14116 rules!1712 separatorToken!152))))

(assert (=> b!2669540 (= e!1682321 (and tp!843814 tp!843812))))

(declare-fun b!2669541 () Bool)

(declare-fun tp!843810 () Bool)

(assert (=> b!2669541 (= e!1682320 (and e!1682327 tp!843810))))

(declare-fun b!2669542 () Bool)

(declare-fun res!1122367 () Bool)

(assert (=> b!2669542 (=> (not res!1122367) (not e!1682318))))

(declare-fun contains!5883 (List!30768 Token!8820) Bool)

(assert (=> b!2669542 (= res!1122367 (contains!5883 l!4335 (h!36088 l!4335)))))

(declare-fun b!2669543 () Bool)

(declare-fun res!1122370 () Bool)

(assert (=> b!2669543 (=> (not res!1122370) (not e!1682318))))

(assert (=> b!2669543 (= res!1122370 ((_ is Cons!30668) l!4335))))

(declare-fun b!2669544 () Bool)

(declare-fun res!1122365 () Bool)

(assert (=> b!2669544 (=> (not res!1122365) (not e!1682318))))

(declare-fun sepAndNonSepRulesDisjointChars!1248 (List!30767 List!30767) Bool)

(assert (=> b!2669544 (= res!1122365 (sepAndNonSepRulesDisjointChars!1248 rules!1712 rules!1712))))

(assert (= (and start!259646 res!1122373) b!2669534))

(assert (= (and b!2669534 res!1122374) b!2669528))

(assert (= (and b!2669528 res!1122372) b!2669525))

(assert (= (and b!2669525 res!1122371) b!2669539))

(assert (= (and b!2669539 res!1122368) b!2669532))

(assert (= (and b!2669532 res!1122366) b!2669527))

(assert (= (and b!2669527 res!1122369) b!2669544))

(assert (= (and b!2669544 res!1122365) b!2669543))

(assert (= (and b!2669543 res!1122370) b!2669542))

(assert (= (and b!2669542 res!1122367) b!2669538))

(assert (= b!2669531 b!2669526))

(assert (= b!2669541 b!2669531))

(assert (= (and start!259646 ((_ is Cons!30667) rules!1712)) b!2669541))

(assert (= b!2669530 b!2669540))

(assert (= b!2669537 b!2669530))

(assert (= b!2669535 b!2669537))

(assert (= (and start!259646 ((_ is Cons!30668) l!4335)) b!2669535))

(assert (= b!2669533 b!2669529))

(assert (= b!2669536 b!2669533))

(assert (= start!259646 b!2669536))

(declare-fun m!3035949 () Bool)

(assert (=> b!2669534 m!3035949))

(declare-fun m!3035951 () Bool)

(assert (=> b!2669536 m!3035951))

(declare-fun m!3035953 () Bool)

(assert (=> b!2669530 m!3035953))

(declare-fun m!3035955 () Bool)

(assert (=> b!2669530 m!3035955))

(declare-fun m!3035957 () Bool)

(assert (=> b!2669531 m!3035957))

(declare-fun m!3035959 () Bool)

(assert (=> b!2669531 m!3035959))

(declare-fun m!3035961 () Bool)

(assert (=> b!2669527 m!3035961))

(declare-fun m!3035963 () Bool)

(assert (=> b!2669539 m!3035963))

(declare-fun m!3035965 () Bool)

(assert (=> b!2669537 m!3035965))

(declare-fun m!3035967 () Bool)

(assert (=> b!2669533 m!3035967))

(declare-fun m!3035969 () Bool)

(assert (=> b!2669533 m!3035969))

(declare-fun m!3035971 () Bool)

(assert (=> b!2669525 m!3035971))

(declare-fun m!3035973 () Bool)

(assert (=> b!2669538 m!3035973))

(declare-fun m!3035975 () Bool)

(assert (=> b!2669538 m!3035975))

(declare-fun m!3035977 () Bool)

(assert (=> b!2669528 m!3035977))

(declare-fun m!3035979 () Bool)

(assert (=> b!2669542 m!3035979))

(declare-fun m!3035981 () Bool)

(assert (=> b!2669535 m!3035981))

(declare-fun m!3035983 () Bool)

(assert (=> start!259646 m!3035983))

(declare-fun m!3035985 () Bool)

(assert (=> b!2669544 m!3035985))

(check-sat b_and!196959 (not b!2669541) (not b!2669536) b_and!196957 (not b_next!75659) (not b_next!75653) (not b!2669525) (not b!2669537) (not b_next!75649) (not b!2669535) (not b!2669534) (not b!2669530) (not b!2669527) (not b_next!75655) b_and!196955 (not b!2669533) b_and!196963 (not b!2669531) (not start!259646) (not b!2669539) (not b!2669528) b_and!196961 (not b!2669542) b_and!196953 (not b!2669538) (not b!2669553) (not b_next!75651) (not b!2669544) (not b_next!75657))
(check-sat b_and!196959 b_and!196957 (not b_next!75659) (not b_next!75653) (not b_next!75649) b_and!196961 (not b_next!75657) (not b_next!75655) b_and!196955 b_and!196963 b_and!196953 (not b_next!75651))
