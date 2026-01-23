; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259966 () Bool)

(assert start!259966)

(declare-fun b!2672924 () Bool)

(declare-fun b_free!75297 () Bool)

(declare-fun b_next!76001 () Bool)

(assert (=> b!2672924 (= b_free!75297 (not b_next!76001))))

(declare-fun tp!845323 () Bool)

(declare-fun b_and!197449 () Bool)

(assert (=> b!2672924 (= tp!845323 b_and!197449)))

(declare-fun b_free!75299 () Bool)

(declare-fun b_next!76003 () Bool)

(assert (=> b!2672924 (= b_free!75299 (not b_next!76003))))

(declare-fun tp!845329 () Bool)

(declare-fun b_and!197451 () Bool)

(assert (=> b!2672924 (= tp!845329 b_and!197451)))

(declare-fun b!2672914 () Bool)

(declare-fun b_free!75301 () Bool)

(declare-fun b_next!76005 () Bool)

(assert (=> b!2672914 (= b_free!75301 (not b_next!76005))))

(declare-fun tp!845326 () Bool)

(declare-fun b_and!197453 () Bool)

(assert (=> b!2672914 (= tp!845326 b_and!197453)))

(declare-fun b_free!75303 () Bool)

(declare-fun b_next!76007 () Bool)

(assert (=> b!2672914 (= b_free!75303 (not b_next!76007))))

(declare-fun tp!845320 () Bool)

(declare-fun b_and!197455 () Bool)

(assert (=> b!2672914 (= tp!845320 b_and!197455)))

(declare-fun b!2672925 () Bool)

(declare-fun b_free!75305 () Bool)

(declare-fun b_next!76009 () Bool)

(assert (=> b!2672925 (= b_free!75305 (not b_next!76009))))

(declare-fun tp!845328 () Bool)

(declare-fun b_and!197457 () Bool)

(assert (=> b!2672925 (= tp!845328 b_and!197457)))

(declare-fun b_free!75307 () Bool)

(declare-fun b_next!76011 () Bool)

(assert (=> b!2672925 (= b_free!75307 (not b_next!76011))))

(declare-fun tp!845324 () Bool)

(declare-fun b_and!197459 () Bool)

(assert (=> b!2672925 (= tp!845324 b_and!197459)))

(declare-fun bs!479576 () Bool)

(declare-fun b!2672909 () Bool)

(declare-fun b!2672916 () Bool)

(assert (= bs!479576 (and b!2672909 b!2672916)))

(declare-fun lambda!99854 () Int)

(declare-fun lambda!99853 () Int)

(assert (=> bs!479576 (not (= lambda!99854 lambda!99853))))

(declare-fun b!2672937 () Bool)

(declare-fun e!1684822 () Bool)

(assert (=> b!2672937 (= e!1684822 true)))

(declare-fun b!2672936 () Bool)

(declare-fun e!1684821 () Bool)

(assert (=> b!2672936 (= e!1684821 e!1684822)))

(declare-fun b!2672935 () Bool)

(declare-fun e!1684820 () Bool)

(assert (=> b!2672935 (= e!1684820 e!1684821)))

(assert (=> b!2672909 e!1684820))

(assert (= b!2672936 b!2672937))

(assert (= b!2672935 b!2672936))

(declare-datatypes ((List!30867 0))(
  ( (Nil!30767) (Cons!30767 (h!36187 (_ BitVec 16)) (t!223436 List!30867)) )
))
(declare-datatypes ((TokenValue!4921 0))(
  ( (FloatLiteralValue!9842 (text!34892 List!30867)) (TokenValueExt!4920 (__x!19675 Int)) (Broken!24605 (value!151500 List!30867)) (Object!5020) (End!4921) (Def!4921) (Underscore!4921) (Match!4921) (Else!4921) (Error!4921) (Case!4921) (If!4921) (Extends!4921) (Abstract!4921) (Class!4921) (Val!4921) (DelimiterValue!9842 (del!4981 List!30867)) (KeywordValue!4927 (value!151501 List!30867)) (CommentValue!9842 (value!151502 List!30867)) (WhitespaceValue!9842 (value!151503 List!30867)) (IndentationValue!4921 (value!151504 List!30867)) (String!34488) (Int32!4921) (Broken!24606 (value!151505 List!30867)) (Boolean!4922) (Unit!44972) (OperatorValue!4924 (op!4981 List!30867)) (IdentifierValue!9842 (value!151506 List!30867)) (IdentifierValue!9843 (value!151507 List!30867)) (WhitespaceValue!9843 (value!151508 List!30867)) (True!9842) (False!9842) (Broken!24607 (value!151509 List!30867)) (Broken!24608 (value!151510 List!30867)) (True!9843) (RightBrace!4921) (RightBracket!4921) (Colon!4921) (Null!4921) (Comma!4921) (LeftBracket!4921) (False!9843) (LeftBrace!4921) (ImaginaryLiteralValue!4921 (text!34893 List!30867)) (StringLiteralValue!14763 (value!151511 List!30867)) (EOFValue!4921 (value!151512 List!30867)) (IdentValue!4921 (value!151513 List!30867)) (DelimiterValue!9843 (value!151514 List!30867)) (DedentValue!4921 (value!151515 List!30867)) (NewLineValue!4921 (value!151516 List!30867)) (IntegerValue!14763 (value!151517 (_ BitVec 32)) (text!34894 List!30867)) (IntegerValue!14764 (value!151518 Int) (text!34895 List!30867)) (Times!4921) (Or!4921) (Equal!4921) (Minus!4921) (Broken!24609 (value!151519 List!30867)) (And!4921) (Div!4921) (LessEqual!4921) (Mod!4921) (Concat!12764) (Not!4921) (Plus!4921) (SpaceValue!4921 (value!151520 List!30867)) (IntegerValue!14765 (value!151521 Int) (text!34896 List!30867)) (StringLiteralValue!14764 (text!34897 List!30867)) (FloatLiteralValue!9843 (text!34898 List!30867)) (BytesLiteralValue!4921 (value!151522 List!30867)) (CommentValue!9843 (value!151523 List!30867)) (StringLiteralValue!14765 (value!151524 List!30867)) (ErrorTokenValue!4921 (msg!4982 List!30867)) )
))
(declare-datatypes ((C!15844 0))(
  ( (C!15845 (val!9856 Int)) )
))
(declare-datatypes ((List!30868 0))(
  ( (Nil!30768) (Cons!30768 (h!36188 C!15844) (t!223437 List!30868)) )
))
(declare-datatypes ((IArray!19261 0))(
  ( (IArray!19262 (innerList!9688 List!30868)) )
))
(declare-datatypes ((Conc!9628 0))(
  ( (Node!9628 (left!23813 Conc!9628) (right!24143 Conc!9628) (csize!19486 Int) (cheight!9839 Int)) (Leaf!14718 (xs!12658 IArray!19261) (csize!19487 Int)) (Empty!9628) )
))
(declare-datatypes ((BalanceConc!18870 0))(
  ( (BalanceConc!18871 (c!430684 Conc!9628)) )
))
(declare-datatypes ((TokenValueInjection!9282 0))(
  ( (TokenValueInjection!9283 (toValue!6641 Int) (toChars!6500 Int)) )
))
(declare-datatypes ((Regex!7843 0))(
  ( (ElementMatch!7843 (c!430685 C!15844)) (Concat!12765 (regOne!16198 Regex!7843) (regTwo!16198 Regex!7843)) (EmptyExpr!7843) (Star!7843 (reg!8172 Regex!7843)) (EmptyLang!7843) (Union!7843 (regOne!16199 Regex!7843) (regTwo!16199 Regex!7843)) )
))
(declare-datatypes ((String!34489 0))(
  ( (String!34490 (value!151525 String)) )
))
(declare-datatypes ((Rule!9198 0))(
  ( (Rule!9199 (regex!4699 Regex!7843) (tag!5201 String!34489) (isSeparator!4699 Bool) (transformation!4699 TokenValueInjection!9282)) )
))
(declare-datatypes ((List!30869 0))(
  ( (Nil!30769) (Cons!30769 (h!36189 Rule!9198) (t!223438 List!30869)) )
))
(declare-fun rules!1712 () List!30869)

(get-info :version)

(assert (= (and b!2672909 ((_ is Cons!30769) rules!1712)) b!2672935))

(declare-fun order!16943 () Int)

(declare-fun order!16945 () Int)

(declare-fun dynLambda!13346 (Int Int) Int)

(declare-fun dynLambda!13347 (Int Int) Int)

(assert (=> b!2672937 (< (dynLambda!13346 order!16943 (toValue!6641 (transformation!4699 (h!36189 rules!1712)))) (dynLambda!13347 order!16945 lambda!99854))))

(declare-fun order!16947 () Int)

(declare-fun dynLambda!13348 (Int Int) Int)

(assert (=> b!2672937 (< (dynLambda!13348 order!16947 (toChars!6500 (transformation!4699 (h!36189 rules!1712)))) (dynLambda!13347 order!16945 lambda!99854))))

(assert (=> b!2672909 true))

(declare-fun b!2672906 () Bool)

(declare-fun res!1123762 () Bool)

(declare-fun e!1684813 () Bool)

(assert (=> b!2672906 (=> (not res!1123762) (not e!1684813))))

(declare-datatypes ((Token!8868 0))(
  ( (Token!8869 (value!151526 TokenValue!4921) (rule!7105 Rule!9198) (size!23775 Int) (originalCharacters!5465 List!30868)) )
))
(declare-datatypes ((List!30870 0))(
  ( (Nil!30770) (Cons!30770 (h!36190 Token!8868) (t!223439 List!30870)) )
))
(declare-fun l!4335 () List!30870)

(assert (=> b!2672906 (= res!1123762 ((_ is Cons!30770) l!4335))))

(declare-fun b!2672907 () Bool)

(declare-fun tp!845325 () Bool)

(declare-fun e!1684799 () Bool)

(declare-fun e!1684804 () Bool)

(declare-fun inv!41771 (String!34489) Bool)

(declare-fun inv!41774 (TokenValueInjection!9282) Bool)

(assert (=> b!2672907 (= e!1684804 (and tp!845325 (inv!41771 (tag!5201 (rule!7105 (h!36190 l!4335)))) (inv!41774 (transformation!4699 (rule!7105 (h!36190 l!4335)))) e!1684799))))

(declare-fun b!2672908 () Bool)

(declare-fun res!1123765 () Bool)

(assert (=> b!2672908 (=> (not res!1123765) (not e!1684813))))

(declare-fun sepAndNonSepRulesDisjointChars!1272 (List!30869 List!30869) Bool)

(assert (=> b!2672908 (= res!1123765 (sepAndNonSepRulesDisjointChars!1272 rules!1712 rules!1712))))

(declare-fun e!1684811 () Bool)

(assert (=> b!2672909 (= e!1684813 e!1684811)))

(declare-fun res!1123766 () Bool)

(assert (=> b!2672909 (=> (not res!1123766) (not e!1684811))))

(declare-datatypes ((tuple2!30218 0))(
  ( (tuple2!30219 (_1!17651 Token!8868) (_2!17651 List!30868)) )
))
(declare-datatypes ((Option!6088 0))(
  ( (None!6087) (Some!6087 (v!32624 tuple2!30218)) )
))
(declare-fun lt!941124 () Option!6088)

(declare-fun lt!941125 () Bool)

(assert (=> b!2672909 (= res!1123766 (and (or lt!941125 (not (= (_1!17651 (v!32624 lt!941124)) (h!36190 l!4335)))) (or lt!941125 (= (_1!17651 (v!32624 lt!941124)) (h!36190 l!4335))) ((_ is None!6087) lt!941124)))))

(assert (=> b!2672909 (= lt!941125 (not ((_ is Some!6087) lt!941124)))))

(declare-datatypes ((LexerInterface!4296 0))(
  ( (LexerInterfaceExt!4293 (__x!19676 Int)) (Lexer!4294) )
))
(declare-fun thiss!14116 () LexerInterface!4296)

(declare-fun separatorToken!152 () Token!8868)

(declare-fun maxPrefix!2334 (LexerInterface!4296 List!30869 List!30868) Option!6088)

(declare-fun ++!7503 (List!30868 List!30868) List!30868)

(declare-fun list!11613 (BalanceConc!18870) List!30868)

(declare-fun charsOf!2962 (Token!8868) BalanceConc!18870)

(declare-fun printWithSeparatorTokenWhenNeededList!690 (LexerInterface!4296 List!30869 List!30870 Token!8868) List!30868)

(assert (=> b!2672909 (= lt!941124 (maxPrefix!2334 thiss!14116 rules!1712 (++!7503 (list!11613 (charsOf!2962 (h!36190 l!4335))) (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152))))))

(declare-datatypes ((Unit!44973 0))(
  ( (Unit!44974) )
))
(declare-fun lt!941128 () Unit!44973)

(declare-fun forallContained!1039 (List!30870 Int Token!8868) Unit!44973)

(assert (=> b!2672909 (= lt!941128 (forallContained!1039 l!4335 lambda!99854 (h!36190 l!4335)))))

(declare-fun b!2672910 () Bool)

(declare-fun res!1123763 () Bool)

(assert (=> b!2672910 (=> (not res!1123763) (not e!1684813))))

(assert (=> b!2672910 (= res!1123763 (isSeparator!4699 (rule!7105 separatorToken!152)))))

(declare-fun b!2672912 () Bool)

(declare-fun tp!845322 () Bool)

(declare-fun e!1684800 () Bool)

(declare-fun e!1684801 () Bool)

(declare-fun inv!21 (TokenValue!4921) Bool)

(assert (=> b!2672912 (= e!1684801 (and (inv!21 (value!151526 separatorToken!152)) e!1684800 tp!845322))))

(declare-fun b!2672913 () Bool)

(declare-fun res!1123760 () Bool)

(assert (=> b!2672913 (=> (not res!1123760) (not e!1684813))))

(declare-fun isEmpty!17591 (List!30869) Bool)

(assert (=> b!2672913 (= res!1123760 (not (isEmpty!17591 rules!1712)))))

(declare-fun e!1684798 () Bool)

(assert (=> b!2672914 (= e!1684798 (and tp!845326 tp!845320))))

(declare-fun b!2672915 () Bool)

(declare-fun tp!845321 () Bool)

(declare-fun e!1684805 () Bool)

(declare-fun e!1684808 () Bool)

(declare-fun inv!41775 (Token!8868) Bool)

(assert (=> b!2672915 (= e!1684808 (and (inv!41775 (h!36190 l!4335)) e!1684805 tp!845321))))

(declare-fun res!1123761 () Bool)

(assert (=> b!2672916 (=> (not res!1123761) (not e!1684813))))

(declare-fun forall!6514 (List!30870 Int) Bool)

(assert (=> b!2672916 (= res!1123761 (forall!6514 l!4335 lambda!99853))))

(declare-fun b!2672917 () Bool)

(declare-fun tp!845331 () Bool)

(assert (=> b!2672917 (= e!1684800 (and tp!845331 (inv!41771 (tag!5201 (rule!7105 separatorToken!152))) (inv!41774 (transformation!4699 (rule!7105 separatorToken!152))) e!1684798))))

(declare-fun tp!845332 () Bool)

(declare-fun b!2672918 () Bool)

(assert (=> b!2672918 (= e!1684805 (and (inv!21 (value!151526 (h!36190 l!4335))) e!1684804 tp!845332))))

(declare-fun b!2672919 () Bool)

(declare-fun res!1123767 () Bool)

(assert (=> b!2672919 (=> (not res!1123767) (not e!1684813))))

(declare-fun rulesProduceIndividualToken!2008 (LexerInterface!4296 List!30869 Token!8868) Bool)

(assert (=> b!2672919 (= res!1123767 (rulesProduceIndividualToken!2008 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun b!2672920 () Bool)

(declare-fun res!1123764 () Bool)

(assert (=> b!2672920 (=> (not res!1123764) (not e!1684813))))

(declare-fun contains!5911 (List!30870 Token!8868) Bool)

(assert (=> b!2672920 (= res!1123764 (contains!5911 l!4335 (h!36190 l!4335)))))

(declare-fun b!2672921 () Bool)

(declare-fun e!1684806 () Bool)

(declare-fun e!1684803 () Bool)

(declare-fun tp!845330 () Bool)

(assert (=> b!2672921 (= e!1684806 (and e!1684803 tp!845330))))

(declare-fun tp!845327 () Bool)

(declare-fun e!1684807 () Bool)

(declare-fun b!2672922 () Bool)

(assert (=> b!2672922 (= e!1684803 (and tp!845327 (inv!41771 (tag!5201 (h!36189 rules!1712))) (inv!41774 (transformation!4699 (h!36189 rules!1712))) e!1684807))))

(declare-fun lt!941127 () BalanceConc!18870)

(declare-fun b!2672923 () Bool)

(declare-fun printList!1188 (LexerInterface!4296 List!30870) List!30868)

(assert (=> b!2672923 (= e!1684811 (not (= (list!11613 lt!941127) (printList!1188 thiss!14116 (Cons!30770 (h!36190 l!4335) Nil!30770)))))))

(declare-datatypes ((IArray!19263 0))(
  ( (IArray!19264 (innerList!9689 List!30870)) )
))
(declare-datatypes ((Conc!9629 0))(
  ( (Node!9629 (left!23814 Conc!9629) (right!24144 Conc!9629) (csize!19488 Int) (cheight!9840 Int)) (Leaf!14719 (xs!12659 IArray!19263) (csize!19489 Int)) (Empty!9629) )
))
(declare-datatypes ((BalanceConc!18872 0))(
  ( (BalanceConc!18873 (c!430686 Conc!9629)) )
))
(declare-fun lt!941126 () BalanceConc!18872)

(declare-fun printTailRec!1149 (LexerInterface!4296 BalanceConc!18872 Int BalanceConc!18870) BalanceConc!18870)

(assert (=> b!2672923 (= lt!941127 (printTailRec!1149 thiss!14116 lt!941126 0 (BalanceConc!18871 Empty!9628)))))

(declare-fun print!1675 (LexerInterface!4296 BalanceConc!18872) BalanceConc!18870)

(assert (=> b!2672923 (= lt!941127 (print!1675 thiss!14116 lt!941126))))

(declare-fun singletonSeq!2096 (Token!8868) BalanceConc!18872)

(assert (=> b!2672923 (= lt!941126 (singletonSeq!2096 (h!36190 l!4335)))))

(assert (=> b!2672924 (= e!1684799 (and tp!845323 tp!845329))))

(declare-fun b!2672911 () Bool)

(declare-fun res!1123758 () Bool)

(assert (=> b!2672911 (=> (not res!1123758) (not e!1684813))))

(declare-fun rulesInvariant!3796 (LexerInterface!4296 List!30869) Bool)

(assert (=> b!2672911 (= res!1123758 (rulesInvariant!3796 thiss!14116 rules!1712))))

(declare-fun res!1123757 () Bool)

(assert (=> start!259966 (=> (not res!1123757) (not e!1684813))))

(assert (=> start!259966 (= res!1123757 ((_ is Lexer!4294) thiss!14116))))

(assert (=> start!259966 e!1684813))

(assert (=> start!259966 true))

(assert (=> start!259966 e!1684806))

(assert (=> start!259966 e!1684808))

(assert (=> start!259966 (and (inv!41775 separatorToken!152) e!1684801)))

(assert (=> b!2672925 (= e!1684807 (and tp!845328 tp!845324))))

(declare-fun b!2672926 () Bool)

(declare-fun res!1123759 () Bool)

(assert (=> b!2672926 (=> (not res!1123759) (not e!1684813))))

(declare-fun rulesProduceEachTokenIndividuallyList!1518 (LexerInterface!4296 List!30869 List!30870) Bool)

(assert (=> b!2672926 (= res!1123759 (rulesProduceEachTokenIndividuallyList!1518 thiss!14116 rules!1712 l!4335))))

(assert (= (and start!259966 res!1123757) b!2672913))

(assert (= (and b!2672913 res!1123760) b!2672911))

(assert (= (and b!2672911 res!1123758) b!2672926))

(assert (= (and b!2672926 res!1123759) b!2672919))

(assert (= (and b!2672919 res!1123767) b!2672910))

(assert (= (and b!2672910 res!1123763) b!2672916))

(assert (= (and b!2672916 res!1123761) b!2672908))

(assert (= (and b!2672908 res!1123765) b!2672906))

(assert (= (and b!2672906 res!1123762) b!2672920))

(assert (= (and b!2672920 res!1123764) b!2672909))

(assert (= (and b!2672909 res!1123766) b!2672923))

(assert (= b!2672922 b!2672925))

(assert (= b!2672921 b!2672922))

(assert (= (and start!259966 ((_ is Cons!30769) rules!1712)) b!2672921))

(assert (= b!2672907 b!2672924))

(assert (= b!2672918 b!2672907))

(assert (= b!2672915 b!2672918))

(assert (= (and start!259966 ((_ is Cons!30770) l!4335)) b!2672915))

(assert (= b!2672917 b!2672914))

(assert (= b!2672912 b!2672917))

(assert (= start!259966 b!2672912))

(declare-fun m!3038811 () Bool)

(assert (=> b!2672917 m!3038811))

(declare-fun m!3038813 () Bool)

(assert (=> b!2672917 m!3038813))

(declare-fun m!3038815 () Bool)

(assert (=> b!2672912 m!3038815))

(declare-fun m!3038817 () Bool)

(assert (=> b!2672919 m!3038817))

(declare-fun m!3038819 () Bool)

(assert (=> start!259966 m!3038819))

(declare-fun m!3038821 () Bool)

(assert (=> b!2672922 m!3038821))

(declare-fun m!3038823 () Bool)

(assert (=> b!2672922 m!3038823))

(declare-fun m!3038825 () Bool)

(assert (=> b!2672920 m!3038825))

(declare-fun m!3038827 () Bool)

(assert (=> b!2672915 m!3038827))

(declare-fun m!3038829 () Bool)

(assert (=> b!2672918 m!3038829))

(declare-fun m!3038831 () Bool)

(assert (=> b!2672923 m!3038831))

(declare-fun m!3038833 () Bool)

(assert (=> b!2672923 m!3038833))

(declare-fun m!3038835 () Bool)

(assert (=> b!2672923 m!3038835))

(declare-fun m!3038837 () Bool)

(assert (=> b!2672923 m!3038837))

(declare-fun m!3038839 () Bool)

(assert (=> b!2672923 m!3038839))

(declare-fun m!3038841 () Bool)

(assert (=> b!2672913 m!3038841))

(declare-fun m!3038843 () Bool)

(assert (=> b!2672908 m!3038843))

(declare-fun m!3038845 () Bool)

(assert (=> b!2672911 m!3038845))

(declare-fun m!3038847 () Bool)

(assert (=> b!2672907 m!3038847))

(declare-fun m!3038849 () Bool)

(assert (=> b!2672907 m!3038849))

(declare-fun m!3038851 () Bool)

(assert (=> b!2672926 m!3038851))

(declare-fun m!3038853 () Bool)

(assert (=> b!2672909 m!3038853))

(declare-fun m!3038855 () Bool)

(assert (=> b!2672909 m!3038855))

(assert (=> b!2672909 m!3038855))

(declare-fun m!3038857 () Bool)

(assert (=> b!2672909 m!3038857))

(declare-fun m!3038859 () Bool)

(assert (=> b!2672909 m!3038859))

(declare-fun m!3038861 () Bool)

(assert (=> b!2672909 m!3038861))

(assert (=> b!2672909 m!3038853))

(assert (=> b!2672909 m!3038857))

(assert (=> b!2672909 m!3038859))

(declare-fun m!3038863 () Bool)

(assert (=> b!2672909 m!3038863))

(declare-fun m!3038865 () Bool)

(assert (=> b!2672916 m!3038865))

(check-sat (not b!2672915) (not b!2672920) b_and!197459 (not b_next!76001) b_and!197455 (not start!259966) (not b!2672921) (not b!2672918) (not b!2672926) (not b!2672913) (not b_next!76011) (not b!2672919) (not b!2672916) (not b_next!76005) (not b!2672912) (not b!2672923) b_and!197451 b_and!197453 (not b!2672917) (not b_next!76009) (not b_next!76007) (not b!2672908) (not b!2672922) b_and!197449 (not b!2672907) b_and!197457 (not b!2672911) (not b_next!76003) (not b!2672935) (not b!2672909))
(check-sat b_and!197459 (not b_next!76001) b_and!197455 b_and!197449 b_and!197457 (not b_next!76003) (not b_next!76011) (not b_next!76005) b_and!197451 b_and!197453 (not b_next!76009) (not b_next!76007))
(get-model)

(declare-fun d!764144 () Bool)

(declare-fun res!1123800 () Bool)

(declare-fun e!1684845 () Bool)

(assert (=> d!764144 (=> (not res!1123800) (not e!1684845))))

(declare-fun isEmpty!17595 (List!30868) Bool)

(assert (=> d!764144 (= res!1123800 (not (isEmpty!17595 (originalCharacters!5465 (h!36190 l!4335)))))))

(assert (=> d!764144 (= (inv!41775 (h!36190 l!4335)) e!1684845)))

(declare-fun b!2672970 () Bool)

(declare-fun res!1123801 () Bool)

(assert (=> b!2672970 (=> (not res!1123801) (not e!1684845))))

(declare-fun dynLambda!13351 (Int TokenValue!4921) BalanceConc!18870)

(assert (=> b!2672970 (= res!1123801 (= (originalCharacters!5465 (h!36190 l!4335)) (list!11613 (dynLambda!13351 (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))) (value!151526 (h!36190 l!4335))))))))

(declare-fun b!2672971 () Bool)

(declare-fun size!23778 (List!30868) Int)

(assert (=> b!2672971 (= e!1684845 (= (size!23775 (h!36190 l!4335)) (size!23778 (originalCharacters!5465 (h!36190 l!4335)))))))

(assert (= (and d!764144 res!1123800) b!2672970))

(assert (= (and b!2672970 res!1123801) b!2672971))

(declare-fun b_lambda!81433 () Bool)

(assert (=> (not b_lambda!81433) (not b!2672970)))

(declare-fun t!223453 () Bool)

(declare-fun tb!149781 () Bool)

(assert (=> (and b!2672924 (= (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))) (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335))))) t!223453) tb!149781))

(declare-fun b!2672976 () Bool)

(declare-fun e!1684848 () Bool)

(declare-fun tp!845339 () Bool)

(declare-fun inv!41778 (Conc!9628) Bool)

(assert (=> b!2672976 (= e!1684848 (and (inv!41778 (c!430684 (dynLambda!13351 (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))) (value!151526 (h!36190 l!4335))))) tp!845339))))

(declare-fun result!185006 () Bool)

(declare-fun inv!41779 (BalanceConc!18870) Bool)

(assert (=> tb!149781 (= result!185006 (and (inv!41779 (dynLambda!13351 (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))) (value!151526 (h!36190 l!4335)))) e!1684848))))

(assert (= tb!149781 b!2672976))

(declare-fun m!3038901 () Bool)

(assert (=> b!2672976 m!3038901))

(declare-fun m!3038903 () Bool)

(assert (=> tb!149781 m!3038903))

(assert (=> b!2672970 t!223453))

(declare-fun b_and!197473 () Bool)

(assert (= b_and!197451 (and (=> t!223453 result!185006) b_and!197473)))

(declare-fun tb!149783 () Bool)

(declare-fun t!223455 () Bool)

(assert (=> (and b!2672914 (= (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152))) (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335))))) t!223455) tb!149783))

(declare-fun result!185010 () Bool)

(assert (= result!185010 result!185006))

(assert (=> b!2672970 t!223455))

(declare-fun b_and!197475 () Bool)

(assert (= b_and!197455 (and (=> t!223455 result!185010) b_and!197475)))

(declare-fun tb!149785 () Bool)

(declare-fun t!223457 () Bool)

(assert (=> (and b!2672925 (= (toChars!6500 (transformation!4699 (h!36189 rules!1712))) (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335))))) t!223457) tb!149785))

(declare-fun result!185012 () Bool)

(assert (= result!185012 result!185006))

(assert (=> b!2672970 t!223457))

(declare-fun b_and!197477 () Bool)

(assert (= b_and!197459 (and (=> t!223457 result!185012) b_and!197477)))

(declare-fun m!3038905 () Bool)

(assert (=> d!764144 m!3038905))

(declare-fun m!3038907 () Bool)

(assert (=> b!2672970 m!3038907))

(assert (=> b!2672970 m!3038907))

(declare-fun m!3038909 () Bool)

(assert (=> b!2672970 m!3038909))

(declare-fun m!3038911 () Bool)

(assert (=> b!2672971 m!3038911))

(assert (=> b!2672915 d!764144))

(declare-fun bs!479580 () Bool)

(declare-fun d!764146 () Bool)

(assert (= bs!479580 (and d!764146 b!2672916)))

(declare-fun lambda!99857 () Int)

(assert (=> bs!479580 (not (= lambda!99857 lambda!99853))))

(declare-fun bs!479581 () Bool)

(assert (= bs!479581 (and d!764146 b!2672909)))

(assert (=> bs!479581 (= lambda!99857 lambda!99854)))

(declare-fun b!2673060 () Bool)

(declare-fun e!1684899 () Bool)

(assert (=> b!2673060 (= e!1684899 true)))

(declare-fun b!2673059 () Bool)

(declare-fun e!1684898 () Bool)

(assert (=> b!2673059 (= e!1684898 e!1684899)))

(declare-fun b!2673058 () Bool)

(declare-fun e!1684897 () Bool)

(assert (=> b!2673058 (= e!1684897 e!1684898)))

(assert (=> d!764146 e!1684897))

(assert (= b!2673059 b!2673060))

(assert (= b!2673058 b!2673059))

(assert (= (and d!764146 ((_ is Cons!30769) rules!1712)) b!2673058))

(assert (=> b!2673060 (< (dynLambda!13346 order!16943 (toValue!6641 (transformation!4699 (h!36189 rules!1712)))) (dynLambda!13347 order!16945 lambda!99857))))

(assert (=> b!2673060 (< (dynLambda!13348 order!16947 (toChars!6500 (transformation!4699 (h!36189 rules!1712)))) (dynLambda!13347 order!16945 lambda!99857))))

(assert (=> d!764146 true))

(declare-fun lt!941191 () Bool)

(assert (=> d!764146 (= lt!941191 (forall!6514 l!4335 lambda!99857))))

(declare-fun e!1684896 () Bool)

(assert (=> d!764146 (= lt!941191 e!1684896)))

(declare-fun res!1123857 () Bool)

(assert (=> d!764146 (=> res!1123857 e!1684896)))

(assert (=> d!764146 (= res!1123857 (not ((_ is Cons!30770) l!4335)))))

(assert (=> d!764146 (not (isEmpty!17591 rules!1712))))

(assert (=> d!764146 (= (rulesProduceEachTokenIndividuallyList!1518 thiss!14116 rules!1712 l!4335) lt!941191)))

(declare-fun b!2673056 () Bool)

(declare-fun e!1684895 () Bool)

(assert (=> b!2673056 (= e!1684896 e!1684895)))

(declare-fun res!1123858 () Bool)

(assert (=> b!2673056 (=> (not res!1123858) (not e!1684895))))

(assert (=> b!2673056 (= res!1123858 (rulesProduceIndividualToken!2008 thiss!14116 rules!1712 (h!36190 l!4335)))))

(declare-fun b!2673057 () Bool)

(assert (=> b!2673057 (= e!1684895 (rulesProduceEachTokenIndividuallyList!1518 thiss!14116 rules!1712 (t!223439 l!4335)))))

(assert (= (and d!764146 (not res!1123857)) b!2673056))

(assert (= (and b!2673056 res!1123858) b!2673057))

(declare-fun m!3039053 () Bool)

(assert (=> d!764146 m!3039053))

(assert (=> d!764146 m!3038841))

(declare-fun m!3039055 () Bool)

(assert (=> b!2673056 m!3039055))

(declare-fun m!3039057 () Bool)

(assert (=> b!2673057 m!3039057))

(assert (=> b!2672926 d!764146))

(declare-fun d!764178 () Bool)

(assert (=> d!764178 (= (isEmpty!17591 rules!1712) ((_ is Nil!30769) rules!1712))))

(assert (=> b!2672913 d!764178))

(declare-fun d!764180 () Bool)

(assert (=> d!764180 (= (inv!41771 (tag!5201 (rule!7105 separatorToken!152))) (= (mod (str.len (value!151525 (tag!5201 (rule!7105 separatorToken!152)))) 2) 0))))

(assert (=> b!2672917 d!764180))

(declare-fun d!764182 () Bool)

(declare-fun res!1123861 () Bool)

(declare-fun e!1684902 () Bool)

(assert (=> d!764182 (=> (not res!1123861) (not e!1684902))))

(declare-fun semiInverseModEq!1944 (Int Int) Bool)

(assert (=> d!764182 (= res!1123861 (semiInverseModEq!1944 (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152))) (toValue!6641 (transformation!4699 (rule!7105 separatorToken!152)))))))

(assert (=> d!764182 (= (inv!41774 (transformation!4699 (rule!7105 separatorToken!152))) e!1684902)))

(declare-fun b!2673063 () Bool)

(declare-fun equivClasses!1845 (Int Int) Bool)

(assert (=> b!2673063 (= e!1684902 (equivClasses!1845 (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152))) (toValue!6641 (transformation!4699 (rule!7105 separatorToken!152)))))))

(assert (= (and d!764182 res!1123861) b!2673063))

(declare-fun m!3039059 () Bool)

(assert (=> d!764182 m!3039059))

(declare-fun m!3039061 () Bool)

(assert (=> b!2673063 m!3039061))

(assert (=> b!2672917 d!764182))

(declare-fun d!764184 () Bool)

(assert (=> d!764184 (= (inv!41771 (tag!5201 (rule!7105 (h!36190 l!4335)))) (= (mod (str.len (value!151525 (tag!5201 (rule!7105 (h!36190 l!4335))))) 2) 0))))

(assert (=> b!2672907 d!764184))

(declare-fun d!764186 () Bool)

(declare-fun res!1123862 () Bool)

(declare-fun e!1684903 () Bool)

(assert (=> d!764186 (=> (not res!1123862) (not e!1684903))))

(assert (=> d!764186 (= res!1123862 (semiInverseModEq!1944 (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))) (toValue!6641 (transformation!4699 (rule!7105 (h!36190 l!4335))))))))

(assert (=> d!764186 (= (inv!41774 (transformation!4699 (rule!7105 (h!36190 l!4335)))) e!1684903)))

(declare-fun b!2673064 () Bool)

(assert (=> b!2673064 (= e!1684903 (equivClasses!1845 (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))) (toValue!6641 (transformation!4699 (rule!7105 (h!36190 l!4335))))))))

(assert (= (and d!764186 res!1123862) b!2673064))

(declare-fun m!3039063 () Bool)

(assert (=> d!764186 m!3039063))

(declare-fun m!3039065 () Bool)

(assert (=> b!2673064 m!3039065))

(assert (=> b!2672907 d!764186))

(declare-fun b!2673075 () Bool)

(declare-fun e!1684910 () Bool)

(declare-fun inv!16 (TokenValue!4921) Bool)

(assert (=> b!2673075 (= e!1684910 (inv!16 (value!151526 (h!36190 l!4335))))))

(declare-fun b!2673076 () Bool)

(declare-fun res!1123865 () Bool)

(declare-fun e!1684911 () Bool)

(assert (=> b!2673076 (=> res!1123865 e!1684911)))

(assert (=> b!2673076 (= res!1123865 (not ((_ is IntegerValue!14765) (value!151526 (h!36190 l!4335)))))))

(declare-fun e!1684912 () Bool)

(assert (=> b!2673076 (= e!1684912 e!1684911)))

(declare-fun d!764188 () Bool)

(declare-fun c!430703 () Bool)

(assert (=> d!764188 (= c!430703 ((_ is IntegerValue!14763) (value!151526 (h!36190 l!4335))))))

(assert (=> d!764188 (= (inv!21 (value!151526 (h!36190 l!4335))) e!1684910)))

(declare-fun b!2673077 () Bool)

(declare-fun inv!17 (TokenValue!4921) Bool)

(assert (=> b!2673077 (= e!1684912 (inv!17 (value!151526 (h!36190 l!4335))))))

(declare-fun b!2673078 () Bool)

(assert (=> b!2673078 (= e!1684910 e!1684912)))

(declare-fun c!430704 () Bool)

(assert (=> b!2673078 (= c!430704 ((_ is IntegerValue!14764) (value!151526 (h!36190 l!4335))))))

(declare-fun b!2673079 () Bool)

(declare-fun inv!15 (TokenValue!4921) Bool)

(assert (=> b!2673079 (= e!1684911 (inv!15 (value!151526 (h!36190 l!4335))))))

(assert (= (and d!764188 c!430703) b!2673075))

(assert (= (and d!764188 (not c!430703)) b!2673078))

(assert (= (and b!2673078 c!430704) b!2673077))

(assert (= (and b!2673078 (not c!430704)) b!2673076))

(assert (= (and b!2673076 (not res!1123865)) b!2673079))

(declare-fun m!3039067 () Bool)

(assert (=> b!2673075 m!3039067))

(declare-fun m!3039069 () Bool)

(assert (=> b!2673077 m!3039069))

(declare-fun m!3039071 () Bool)

(assert (=> b!2673079 m!3039071))

(assert (=> b!2672918 d!764188))

(declare-fun d!764190 () Bool)

(declare-fun res!1123870 () Bool)

(declare-fun e!1684917 () Bool)

(assert (=> d!764190 (=> res!1123870 e!1684917)))

(assert (=> d!764190 (= res!1123870 ((_ is Nil!30770) l!4335))))

(assert (=> d!764190 (= (forall!6514 l!4335 lambda!99853) e!1684917)))

(declare-fun b!2673084 () Bool)

(declare-fun e!1684918 () Bool)

(assert (=> b!2673084 (= e!1684917 e!1684918)))

(declare-fun res!1123871 () Bool)

(assert (=> b!2673084 (=> (not res!1123871) (not e!1684918))))

(declare-fun dynLambda!13352 (Int Token!8868) Bool)

(assert (=> b!2673084 (= res!1123871 (dynLambda!13352 lambda!99853 (h!36190 l!4335)))))

(declare-fun b!2673085 () Bool)

(assert (=> b!2673085 (= e!1684918 (forall!6514 (t!223439 l!4335) lambda!99853))))

(assert (= (and d!764190 (not res!1123870)) b!2673084))

(assert (= (and b!2673084 res!1123871) b!2673085))

(declare-fun b_lambda!81439 () Bool)

(assert (=> (not b_lambda!81439) (not b!2673084)))

(declare-fun m!3039073 () Bool)

(assert (=> b!2673084 m!3039073))

(declare-fun m!3039075 () Bool)

(assert (=> b!2673085 m!3039075))

(assert (=> b!2672916 d!764190))

(declare-fun d!764192 () Bool)

(declare-fun lt!941194 () BalanceConc!18870)

(assert (=> d!764192 (= (list!11613 lt!941194) (originalCharacters!5465 (h!36190 l!4335)))))

(assert (=> d!764192 (= lt!941194 (dynLambda!13351 (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))) (value!151526 (h!36190 l!4335))))))

(assert (=> d!764192 (= (charsOf!2962 (h!36190 l!4335)) lt!941194)))

(declare-fun b_lambda!81441 () Bool)

(assert (=> (not b_lambda!81441) (not d!764192)))

(assert (=> d!764192 t!223453))

(declare-fun b_and!197485 () Bool)

(assert (= b_and!197473 (and (=> t!223453 result!185006) b_and!197485)))

(assert (=> d!764192 t!223455))

(declare-fun b_and!197487 () Bool)

(assert (= b_and!197475 (and (=> t!223455 result!185010) b_and!197487)))

(assert (=> d!764192 t!223457))

(declare-fun b_and!197489 () Bool)

(assert (= b_and!197477 (and (=> t!223457 result!185012) b_and!197489)))

(declare-fun m!3039077 () Bool)

(assert (=> d!764192 m!3039077))

(assert (=> d!764192 m!3038907))

(assert (=> b!2672909 d!764192))

(declare-fun b!2673104 () Bool)

(declare-fun e!1684926 () Bool)

(declare-fun lt!941209 () Option!6088)

(declare-fun contains!5913 (List!30869 Rule!9198) Bool)

(declare-fun get!9669 (Option!6088) tuple2!30218)

(assert (=> b!2673104 (= e!1684926 (contains!5913 rules!1712 (rule!7105 (_1!17651 (get!9669 lt!941209)))))))

(declare-fun b!2673105 () Bool)

(declare-fun res!1123890 () Bool)

(assert (=> b!2673105 (=> (not res!1123890) (not e!1684926))))

(assert (=> b!2673105 (= res!1123890 (< (size!23778 (_2!17651 (get!9669 lt!941209))) (size!23778 (++!7503 (list!11613 (charsOf!2962 (h!36190 l!4335))) (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152)))))))

(declare-fun b!2673106 () Bool)

(declare-fun res!1123889 () Bool)

(assert (=> b!2673106 (=> (not res!1123889) (not e!1684926))))

(assert (=> b!2673106 (= res!1123889 (= (list!11613 (charsOf!2962 (_1!17651 (get!9669 lt!941209)))) (originalCharacters!5465 (_1!17651 (get!9669 lt!941209)))))))

(declare-fun b!2673107 () Bool)

(declare-fun e!1684927 () Option!6088)

(declare-fun call!172480 () Option!6088)

(assert (=> b!2673107 (= e!1684927 call!172480)))

(declare-fun b!2673108 () Bool)

(declare-fun res!1123887 () Bool)

(assert (=> b!2673108 (=> (not res!1123887) (not e!1684926))))

(declare-fun matchR!3624 (Regex!7843 List!30868) Bool)

(assert (=> b!2673108 (= res!1123887 (matchR!3624 (regex!4699 (rule!7105 (_1!17651 (get!9669 lt!941209)))) (list!11613 (charsOf!2962 (_1!17651 (get!9669 lt!941209))))))))

(declare-fun b!2673109 () Bool)

(declare-fun res!1123891 () Bool)

(assert (=> b!2673109 (=> (not res!1123891) (not e!1684926))))

(assert (=> b!2673109 (= res!1123891 (= (++!7503 (list!11613 (charsOf!2962 (_1!17651 (get!9669 lt!941209)))) (_2!17651 (get!9669 lt!941209))) (++!7503 (list!11613 (charsOf!2962 (h!36190 l!4335))) (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152))))))

(declare-fun d!764194 () Bool)

(declare-fun e!1684925 () Bool)

(assert (=> d!764194 e!1684925))

(declare-fun res!1123892 () Bool)

(assert (=> d!764194 (=> res!1123892 e!1684925)))

(declare-fun isEmpty!17596 (Option!6088) Bool)

(assert (=> d!764194 (= res!1123892 (isEmpty!17596 lt!941209))))

(assert (=> d!764194 (= lt!941209 e!1684927)))

(declare-fun c!430707 () Bool)

(assert (=> d!764194 (= c!430707 (and ((_ is Cons!30769) rules!1712) ((_ is Nil!30769) (t!223438 rules!1712))))))

(declare-fun lt!941208 () Unit!44973)

(declare-fun lt!941205 () Unit!44973)

(assert (=> d!764194 (= lt!941208 lt!941205)))

(declare-fun isPrefix!2453 (List!30868 List!30868) Bool)

(assert (=> d!764194 (isPrefix!2453 (++!7503 (list!11613 (charsOf!2962 (h!36190 l!4335))) (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152)) (++!7503 (list!11613 (charsOf!2962 (h!36190 l!4335))) (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152)))))

(declare-fun lemmaIsPrefixRefl!1579 (List!30868 List!30868) Unit!44973)

(assert (=> d!764194 (= lt!941205 (lemmaIsPrefixRefl!1579 (++!7503 (list!11613 (charsOf!2962 (h!36190 l!4335))) (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152)) (++!7503 (list!11613 (charsOf!2962 (h!36190 l!4335))) (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152))))))

(declare-fun rulesValidInductive!1633 (LexerInterface!4296 List!30869) Bool)

(assert (=> d!764194 (rulesValidInductive!1633 thiss!14116 rules!1712)))

(assert (=> d!764194 (= (maxPrefix!2334 thiss!14116 rules!1712 (++!7503 (list!11613 (charsOf!2962 (h!36190 l!4335))) (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152))) lt!941209)))

(declare-fun b!2673110 () Bool)

(declare-fun res!1123888 () Bool)

(assert (=> b!2673110 (=> (not res!1123888) (not e!1684926))))

(declare-fun apply!7370 (TokenValueInjection!9282 BalanceConc!18870) TokenValue!4921)

(declare-fun seqFromList!3201 (List!30868) BalanceConc!18870)

(assert (=> b!2673110 (= res!1123888 (= (value!151526 (_1!17651 (get!9669 lt!941209))) (apply!7370 (transformation!4699 (rule!7105 (_1!17651 (get!9669 lt!941209)))) (seqFromList!3201 (originalCharacters!5465 (_1!17651 (get!9669 lt!941209)))))))))

(declare-fun b!2673111 () Bool)

(declare-fun lt!941206 () Option!6088)

(declare-fun lt!941207 () Option!6088)

(assert (=> b!2673111 (= e!1684927 (ite (and ((_ is None!6087) lt!941206) ((_ is None!6087) lt!941207)) None!6087 (ite ((_ is None!6087) lt!941207) lt!941206 (ite ((_ is None!6087) lt!941206) lt!941207 (ite (>= (size!23775 (_1!17651 (v!32624 lt!941206))) (size!23775 (_1!17651 (v!32624 lt!941207)))) lt!941206 lt!941207)))))))

(assert (=> b!2673111 (= lt!941206 call!172480)))

(assert (=> b!2673111 (= lt!941207 (maxPrefix!2334 thiss!14116 (t!223438 rules!1712) (++!7503 (list!11613 (charsOf!2962 (h!36190 l!4335))) (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152))))))

(declare-fun bm!172475 () Bool)

(declare-fun maxPrefixOneRule!1482 (LexerInterface!4296 Rule!9198 List!30868) Option!6088)

(assert (=> bm!172475 (= call!172480 (maxPrefixOneRule!1482 thiss!14116 (h!36189 rules!1712) (++!7503 (list!11613 (charsOf!2962 (h!36190 l!4335))) (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152))))))

(declare-fun b!2673112 () Bool)

(assert (=> b!2673112 (= e!1684925 e!1684926)))

(declare-fun res!1123886 () Bool)

(assert (=> b!2673112 (=> (not res!1123886) (not e!1684926))))

(declare-fun isDefined!4836 (Option!6088) Bool)

(assert (=> b!2673112 (= res!1123886 (isDefined!4836 lt!941209))))

(assert (= (and d!764194 c!430707) b!2673107))

(assert (= (and d!764194 (not c!430707)) b!2673111))

(assert (= (or b!2673107 b!2673111) bm!172475))

(assert (= (and d!764194 (not res!1123892)) b!2673112))

(assert (= (and b!2673112 res!1123886) b!2673106))

(assert (= (and b!2673106 res!1123889) b!2673105))

(assert (= (and b!2673105 res!1123890) b!2673109))

(assert (= (and b!2673109 res!1123891) b!2673110))

(assert (= (and b!2673110 res!1123888) b!2673108))

(assert (= (and b!2673108 res!1123887) b!2673104))

(assert (=> bm!172475 m!3038859))

(declare-fun m!3039079 () Bool)

(assert (=> bm!172475 m!3039079))

(declare-fun m!3039081 () Bool)

(assert (=> b!2673105 m!3039081))

(declare-fun m!3039083 () Bool)

(assert (=> b!2673105 m!3039083))

(assert (=> b!2673105 m!3038859))

(declare-fun m!3039085 () Bool)

(assert (=> b!2673105 m!3039085))

(declare-fun m!3039087 () Bool)

(assert (=> b!2673112 m!3039087))

(assert (=> b!2673109 m!3039081))

(declare-fun m!3039089 () Bool)

(assert (=> b!2673109 m!3039089))

(assert (=> b!2673109 m!3039089))

(declare-fun m!3039091 () Bool)

(assert (=> b!2673109 m!3039091))

(assert (=> b!2673109 m!3039091))

(declare-fun m!3039093 () Bool)

(assert (=> b!2673109 m!3039093))

(assert (=> b!2673104 m!3039081))

(declare-fun m!3039095 () Bool)

(assert (=> b!2673104 m!3039095))

(assert (=> b!2673111 m!3038859))

(declare-fun m!3039097 () Bool)

(assert (=> b!2673111 m!3039097))

(declare-fun m!3039099 () Bool)

(assert (=> d!764194 m!3039099))

(assert (=> d!764194 m!3038859))

(assert (=> d!764194 m!3038859))

(declare-fun m!3039101 () Bool)

(assert (=> d!764194 m!3039101))

(assert (=> d!764194 m!3038859))

(assert (=> d!764194 m!3038859))

(declare-fun m!3039103 () Bool)

(assert (=> d!764194 m!3039103))

(declare-fun m!3039105 () Bool)

(assert (=> d!764194 m!3039105))

(assert (=> b!2673110 m!3039081))

(declare-fun m!3039107 () Bool)

(assert (=> b!2673110 m!3039107))

(assert (=> b!2673110 m!3039107))

(declare-fun m!3039109 () Bool)

(assert (=> b!2673110 m!3039109))

(assert (=> b!2673106 m!3039081))

(assert (=> b!2673106 m!3039089))

(assert (=> b!2673106 m!3039089))

(assert (=> b!2673106 m!3039091))

(assert (=> b!2673108 m!3039081))

(assert (=> b!2673108 m!3039089))

(assert (=> b!2673108 m!3039089))

(assert (=> b!2673108 m!3039091))

(assert (=> b!2673108 m!3039091))

(declare-fun m!3039111 () Bool)

(assert (=> b!2673108 m!3039111))

(assert (=> b!2672909 d!764194))

(declare-fun e!1684933 () List!30868)

(declare-fun b!2673121 () Bool)

(assert (=> b!2673121 (= e!1684933 (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152))))

(declare-fun lt!941212 () List!30868)

(declare-fun e!1684932 () Bool)

(declare-fun b!2673124 () Bool)

(assert (=> b!2673124 (= e!1684932 (or (not (= (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152) Nil!30768)) (= lt!941212 (list!11613 (charsOf!2962 (h!36190 l!4335))))))))

(declare-fun b!2673122 () Bool)

(assert (=> b!2673122 (= e!1684933 (Cons!30768 (h!36188 (list!11613 (charsOf!2962 (h!36190 l!4335)))) (++!7503 (t!223437 (list!11613 (charsOf!2962 (h!36190 l!4335)))) (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152))))))

(declare-fun b!2673123 () Bool)

(declare-fun res!1123897 () Bool)

(assert (=> b!2673123 (=> (not res!1123897) (not e!1684932))))

(assert (=> b!2673123 (= res!1123897 (= (size!23778 lt!941212) (+ (size!23778 (list!11613 (charsOf!2962 (h!36190 l!4335)))) (size!23778 (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152)))))))

(declare-fun d!764196 () Bool)

(assert (=> d!764196 e!1684932))

(declare-fun res!1123898 () Bool)

(assert (=> d!764196 (=> (not res!1123898) (not e!1684932))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4364 (List!30868) (InoxSet C!15844))

(assert (=> d!764196 (= res!1123898 (= (content!4364 lt!941212) ((_ map or) (content!4364 (list!11613 (charsOf!2962 (h!36190 l!4335)))) (content!4364 (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152)))))))

(assert (=> d!764196 (= lt!941212 e!1684933)))

(declare-fun c!430710 () Bool)

(assert (=> d!764196 (= c!430710 ((_ is Nil!30768) (list!11613 (charsOf!2962 (h!36190 l!4335)))))))

(assert (=> d!764196 (= (++!7503 (list!11613 (charsOf!2962 (h!36190 l!4335))) (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152)) lt!941212)))

(assert (= (and d!764196 c!430710) b!2673121))

(assert (= (and d!764196 (not c!430710)) b!2673122))

(assert (= (and d!764196 res!1123898) b!2673123))

(assert (= (and b!2673123 res!1123897) b!2673124))

(assert (=> b!2673122 m!3038857))

(declare-fun m!3039113 () Bool)

(assert (=> b!2673122 m!3039113))

(declare-fun m!3039115 () Bool)

(assert (=> b!2673123 m!3039115))

(assert (=> b!2673123 m!3038855))

(declare-fun m!3039117 () Bool)

(assert (=> b!2673123 m!3039117))

(assert (=> b!2673123 m!3038857))

(declare-fun m!3039119 () Bool)

(assert (=> b!2673123 m!3039119))

(declare-fun m!3039121 () Bool)

(assert (=> d!764196 m!3039121))

(assert (=> d!764196 m!3038855))

(declare-fun m!3039123 () Bool)

(assert (=> d!764196 m!3039123))

(assert (=> d!764196 m!3038857))

(declare-fun m!3039125 () Bool)

(assert (=> d!764196 m!3039125))

(assert (=> b!2672909 d!764196))

(declare-fun d!764198 () Bool)

(declare-fun list!11616 (Conc!9628) List!30868)

(assert (=> d!764198 (= (list!11613 (charsOf!2962 (h!36190 l!4335))) (list!11616 (c!430684 (charsOf!2962 (h!36190 l!4335)))))))

(declare-fun bs!479582 () Bool)

(assert (= bs!479582 d!764198))

(declare-fun m!3039127 () Bool)

(assert (=> bs!479582 m!3039127))

(assert (=> b!2672909 d!764198))

(declare-fun d!764200 () Bool)

(assert (=> d!764200 (dynLambda!13352 lambda!99854 (h!36190 l!4335))))

(declare-fun lt!941215 () Unit!44973)

(declare-fun choose!15837 (List!30870 Int Token!8868) Unit!44973)

(assert (=> d!764200 (= lt!941215 (choose!15837 l!4335 lambda!99854 (h!36190 l!4335)))))

(declare-fun e!1684936 () Bool)

(assert (=> d!764200 e!1684936))

(declare-fun res!1123901 () Bool)

(assert (=> d!764200 (=> (not res!1123901) (not e!1684936))))

(assert (=> d!764200 (= res!1123901 (forall!6514 l!4335 lambda!99854))))

(assert (=> d!764200 (= (forallContained!1039 l!4335 lambda!99854 (h!36190 l!4335)) lt!941215)))

(declare-fun b!2673127 () Bool)

(assert (=> b!2673127 (= e!1684936 (contains!5911 l!4335 (h!36190 l!4335)))))

(assert (= (and d!764200 res!1123901) b!2673127))

(declare-fun b_lambda!81443 () Bool)

(assert (=> (not b_lambda!81443) (not d!764200)))

(declare-fun m!3039129 () Bool)

(assert (=> d!764200 m!3039129))

(declare-fun m!3039131 () Bool)

(assert (=> d!764200 m!3039131))

(declare-fun m!3039133 () Bool)

(assert (=> d!764200 m!3039133))

(assert (=> b!2673127 m!3038825))

(assert (=> b!2672909 d!764200))

(declare-fun bs!479585 () Bool)

(declare-fun b!2673182 () Bool)

(assert (= bs!479585 (and b!2673182 b!2672916)))

(declare-fun lambda!99863 () Int)

(assert (=> bs!479585 (not (= lambda!99863 lambda!99853))))

(declare-fun bs!479586 () Bool)

(assert (= bs!479586 (and b!2673182 b!2672909)))

(assert (=> bs!479586 (= lambda!99863 lambda!99854)))

(declare-fun bs!479587 () Bool)

(assert (= bs!479587 (and b!2673182 d!764146)))

(assert (=> bs!479587 (= lambda!99863 lambda!99857)))

(declare-fun b!2673188 () Bool)

(declare-fun e!1684970 () Bool)

(assert (=> b!2673188 (= e!1684970 true)))

(declare-fun b!2673187 () Bool)

(declare-fun e!1684969 () Bool)

(assert (=> b!2673187 (= e!1684969 e!1684970)))

(declare-fun b!2673186 () Bool)

(declare-fun e!1684968 () Bool)

(assert (=> b!2673186 (= e!1684968 e!1684969)))

(assert (=> b!2673182 e!1684968))

(assert (= b!2673187 b!2673188))

(assert (= b!2673186 b!2673187))

(assert (= (and b!2673182 ((_ is Cons!30769) rules!1712)) b!2673186))

(assert (=> b!2673188 (< (dynLambda!13346 order!16943 (toValue!6641 (transformation!4699 (h!36189 rules!1712)))) (dynLambda!13347 order!16945 lambda!99863))))

(assert (=> b!2673188 (< (dynLambda!13348 order!16947 (toChars!6500 (transformation!4699 (h!36189 rules!1712)))) (dynLambda!13347 order!16945 lambda!99863))))

(assert (=> b!2673182 true))

(declare-fun b!2673178 () Bool)

(declare-fun e!1684966 () List!30868)

(assert (=> b!2673178 (= e!1684966 Nil!30768)))

(assert (=> b!2673178 (= (print!1675 thiss!14116 (singletonSeq!2096 (h!36190 (t!223439 l!4335)))) (printTailRec!1149 thiss!14116 (singletonSeq!2096 (h!36190 (t!223439 l!4335))) 0 (BalanceConc!18871 Empty!9628)))))

(declare-fun lt!941247 () Unit!44973)

(declare-fun Unit!44977 () Unit!44973)

(assert (=> b!2673178 (= lt!941247 Unit!44977)))

(declare-fun call!172507 () List!30868)

(declare-fun lt!941251 () Unit!44973)

(declare-fun lt!941248 () List!30868)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!817 (LexerInterface!4296 List!30869 List!30868 List!30868) Unit!44973)

(assert (=> b!2673178 (= lt!941251 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!817 thiss!14116 rules!1712 call!172507 lt!941248))))

(assert (=> b!2673178 false))

(declare-fun lt!941250 () Unit!44973)

(declare-fun Unit!44978 () Unit!44973)

(assert (=> b!2673178 (= lt!941250 Unit!44978)))

(declare-fun b!2673179 () Bool)

(declare-fun e!1684967 () List!30868)

(declare-fun call!172509 () List!30868)

(assert (=> b!2673179 (= e!1684967 call!172509)))

(declare-fun b!2673180 () Bool)

(declare-fun e!1684964 () BalanceConc!18870)

(declare-fun call!172508 () BalanceConc!18870)

(assert (=> b!2673180 (= e!1684964 call!172508)))

(declare-fun bm!172501 () Bool)

(assert (=> bm!172501 (= call!172508 (charsOf!2962 (h!36190 (t!223439 l!4335))))))

(declare-fun call!172506 () BalanceConc!18870)

(declare-fun call!172510 () List!30868)

(declare-fun bm!172502 () Bool)

(declare-fun c!430737 () Bool)

(assert (=> bm!172502 (= call!172510 (list!11613 (ite c!430737 call!172508 call!172506)))))

(declare-fun bm!172503 () Bool)

(assert (=> bm!172503 (= call!172509 (++!7503 (ite c!430737 call!172510 call!172507) (ite c!430737 lt!941248 call!172510)))))

(declare-fun b!2673181 () Bool)

(assert (=> b!2673181 (= e!1684966 (++!7503 call!172509 lt!941248))))

(declare-fun d!764202 () Bool)

(declare-fun c!430735 () Bool)

(assert (=> d!764202 (= c!430735 ((_ is Cons!30770) (t!223439 l!4335)))))

(declare-fun e!1684965 () List!30868)

(assert (=> d!764202 (= (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 l!4335) separatorToken!152) e!1684965)))

(assert (=> b!2673182 (= e!1684965 e!1684967)))

(declare-fun lt!941249 () Unit!44973)

(assert (=> b!2673182 (= lt!941249 (forallContained!1039 (t!223439 l!4335) lambda!99863 (h!36190 (t!223439 l!4335))))))

(assert (=> b!2673182 (= lt!941248 (printWithSeparatorTokenWhenNeededList!690 thiss!14116 rules!1712 (t!223439 (t!223439 l!4335)) separatorToken!152))))

(declare-fun lt!941246 () Option!6088)

(assert (=> b!2673182 (= lt!941246 (maxPrefix!2334 thiss!14116 rules!1712 (++!7503 (list!11613 (charsOf!2962 (h!36190 (t!223439 l!4335)))) lt!941248)))))

(assert (=> b!2673182 (= c!430737 (and ((_ is Some!6087) lt!941246) (= (_1!17651 (v!32624 lt!941246)) (h!36190 (t!223439 l!4335)))))))

(declare-fun bm!172504 () Bool)

(declare-fun c!430734 () Bool)

(assert (=> bm!172504 (= call!172506 (charsOf!2962 (ite c!430734 separatorToken!152 (h!36190 (t!223439 l!4335)))))))

(declare-fun bm!172505 () Bool)

(assert (=> bm!172505 (= call!172507 (list!11613 e!1684964))))

(declare-fun c!430736 () Bool)

(assert (=> bm!172505 (= c!430736 c!430734)))

(declare-fun b!2673183 () Bool)

(assert (=> b!2673183 (= e!1684964 call!172506)))

(declare-fun b!2673184 () Bool)

(assert (=> b!2673184 (= e!1684965 Nil!30768)))

(declare-fun b!2673185 () Bool)

(assert (=> b!2673185 (= c!430734 (and ((_ is Some!6087) lt!941246) (not (= (_1!17651 (v!32624 lt!941246)) (h!36190 (t!223439 l!4335))))))))

(assert (=> b!2673185 (= e!1684967 e!1684966)))

(assert (= (and d!764202 c!430735) b!2673182))

(assert (= (and d!764202 (not c!430735)) b!2673184))

(assert (= (and b!2673182 c!430737) b!2673179))

(assert (= (and b!2673182 (not c!430737)) b!2673185))

(assert (= (and b!2673185 c!430734) b!2673181))

(assert (= (and b!2673185 (not c!430734)) b!2673178))

(assert (= (or b!2673181 b!2673178) bm!172504))

(assert (= (or b!2673181 b!2673178) bm!172505))

(assert (= (and bm!172505 c!430736) b!2673180))

(assert (= (and bm!172505 (not c!430736)) b!2673183))

(assert (= (or b!2673179 b!2673180) bm!172501))

(assert (= (or b!2673179 b!2673181) bm!172502))

(assert (= (or b!2673179 b!2673181) bm!172503))

(declare-fun m!3039169 () Bool)

(assert (=> b!2673178 m!3039169))

(assert (=> b!2673178 m!3039169))

(declare-fun m!3039171 () Bool)

(assert (=> b!2673178 m!3039171))

(assert (=> b!2673178 m!3039169))

(declare-fun m!3039173 () Bool)

(assert (=> b!2673178 m!3039173))

(declare-fun m!3039175 () Bool)

(assert (=> b!2673178 m!3039175))

(declare-fun m!3039177 () Bool)

(assert (=> b!2673181 m!3039177))

(declare-fun m!3039179 () Bool)

(assert (=> bm!172501 m!3039179))

(declare-fun m!3039181 () Bool)

(assert (=> bm!172502 m!3039181))

(declare-fun m!3039183 () Bool)

(assert (=> bm!172503 m!3039183))

(declare-fun m!3039185 () Bool)

(assert (=> bm!172504 m!3039185))

(declare-fun m!3039187 () Bool)

(assert (=> bm!172505 m!3039187))

(declare-fun m!3039189 () Bool)

(assert (=> b!2673182 m!3039189))

(declare-fun m!3039191 () Bool)

(assert (=> b!2673182 m!3039191))

(assert (=> b!2673182 m!3039179))

(declare-fun m!3039193 () Bool)

(assert (=> b!2673182 m!3039193))

(assert (=> b!2673182 m!3039193))

(assert (=> b!2673182 m!3039189))

(assert (=> b!2673182 m!3039179))

(declare-fun m!3039195 () Bool)

(assert (=> b!2673182 m!3039195))

(declare-fun m!3039197 () Bool)

(assert (=> b!2673182 m!3039197))

(assert (=> b!2672909 d!764202))

(declare-fun d!764210 () Bool)

(declare-fun lt!941254 () Bool)

(declare-fun content!4365 (List!30870) (InoxSet Token!8868))

(assert (=> d!764210 (= lt!941254 (select (content!4365 l!4335) (h!36190 l!4335)))))

(declare-fun e!1684976 () Bool)

(assert (=> d!764210 (= lt!941254 e!1684976)))

(declare-fun res!1123908 () Bool)

(assert (=> d!764210 (=> (not res!1123908) (not e!1684976))))

(assert (=> d!764210 (= res!1123908 ((_ is Cons!30770) l!4335))))

(assert (=> d!764210 (= (contains!5911 l!4335 (h!36190 l!4335)) lt!941254)))

(declare-fun b!2673193 () Bool)

(declare-fun e!1684975 () Bool)

(assert (=> b!2673193 (= e!1684976 e!1684975)))

(declare-fun res!1123907 () Bool)

(assert (=> b!2673193 (=> res!1123907 e!1684975)))

(assert (=> b!2673193 (= res!1123907 (= (h!36190 l!4335) (h!36190 l!4335)))))

(declare-fun b!2673194 () Bool)

(assert (=> b!2673194 (= e!1684975 (contains!5911 (t!223439 l!4335) (h!36190 l!4335)))))

(assert (= (and d!764210 res!1123908) b!2673193))

(assert (= (and b!2673193 (not res!1123907)) b!2673194))

(declare-fun m!3039199 () Bool)

(assert (=> d!764210 m!3039199))

(declare-fun m!3039201 () Bool)

(assert (=> d!764210 m!3039201))

(declare-fun m!3039203 () Bool)

(assert (=> b!2673194 m!3039203))

(assert (=> b!2672920 d!764210))

(declare-fun d!764212 () Bool)

(declare-fun res!1123917 () Bool)

(declare-fun e!1684985 () Bool)

(assert (=> d!764212 (=> res!1123917 e!1684985)))

(assert (=> d!764212 (= res!1123917 (not ((_ is Cons!30769) rules!1712)))))

(assert (=> d!764212 (= (sepAndNonSepRulesDisjointChars!1272 rules!1712 rules!1712) e!1684985)))

(declare-fun b!2673203 () Bool)

(declare-fun e!1684986 () Bool)

(assert (=> b!2673203 (= e!1684985 e!1684986)))

(declare-fun res!1123918 () Bool)

(assert (=> b!2673203 (=> (not res!1123918) (not e!1684986))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!551 (Rule!9198 List!30869) Bool)

(assert (=> b!2673203 (= res!1123918 (ruleDisjointCharsFromAllFromOtherType!551 (h!36189 rules!1712) rules!1712))))

(declare-fun b!2673204 () Bool)

(assert (=> b!2673204 (= e!1684986 (sepAndNonSepRulesDisjointChars!1272 rules!1712 (t!223438 rules!1712)))))

(assert (= (and d!764212 (not res!1123917)) b!2673203))

(assert (= (and b!2673203 res!1123918) b!2673204))

(declare-fun m!3039205 () Bool)

(assert (=> b!2673203 m!3039205))

(declare-fun m!3039207 () Bool)

(assert (=> b!2673204 m!3039207))

(assert (=> b!2672908 d!764212))

(declare-fun d!764214 () Bool)

(declare-fun lt!941263 () Bool)

(declare-fun e!1685058 () Bool)

(assert (=> d!764214 (= lt!941263 e!1685058)))

(declare-fun res!1123940 () Bool)

(assert (=> d!764214 (=> (not res!1123940) (not e!1685058))))

(declare-fun list!11617 (BalanceConc!18872) List!30870)

(declare-datatypes ((tuple2!30222 0))(
  ( (tuple2!30223 (_1!17653 BalanceConc!18872) (_2!17653 BalanceConc!18870)) )
))
(declare-fun lex!1931 (LexerInterface!4296 List!30869 BalanceConc!18870) tuple2!30222)

(assert (=> d!764214 (= res!1123940 (= (list!11617 (_1!17653 (lex!1931 thiss!14116 rules!1712 (print!1675 thiss!14116 (singletonSeq!2096 separatorToken!152))))) (list!11617 (singletonSeq!2096 separatorToken!152))))))

(declare-fun e!1685057 () Bool)

(assert (=> d!764214 (= lt!941263 e!1685057)))

(declare-fun res!1123938 () Bool)

(assert (=> d!764214 (=> (not res!1123938) (not e!1685057))))

(declare-fun lt!941262 () tuple2!30222)

(declare-fun size!23779 (BalanceConc!18872) Int)

(assert (=> d!764214 (= res!1123938 (= (size!23779 (_1!17653 lt!941262)) 1))))

(assert (=> d!764214 (= lt!941262 (lex!1931 thiss!14116 rules!1712 (print!1675 thiss!14116 (singletonSeq!2096 separatorToken!152))))))

(assert (=> d!764214 (not (isEmpty!17591 rules!1712))))

(assert (=> d!764214 (= (rulesProduceIndividualToken!2008 thiss!14116 rules!1712 separatorToken!152) lt!941263)))

(declare-fun b!2673299 () Bool)

(declare-fun res!1123939 () Bool)

(assert (=> b!2673299 (=> (not res!1123939) (not e!1685057))))

(declare-fun apply!7371 (BalanceConc!18872 Int) Token!8868)

(assert (=> b!2673299 (= res!1123939 (= (apply!7371 (_1!17653 lt!941262) 0) separatorToken!152))))

(declare-fun b!2673300 () Bool)

(declare-fun isEmpty!17597 (BalanceConc!18870) Bool)

(assert (=> b!2673300 (= e!1685057 (isEmpty!17597 (_2!17653 lt!941262)))))

(declare-fun b!2673301 () Bool)

(assert (=> b!2673301 (= e!1685058 (isEmpty!17597 (_2!17653 (lex!1931 thiss!14116 rules!1712 (print!1675 thiss!14116 (singletonSeq!2096 separatorToken!152))))))))

(assert (= (and d!764214 res!1123938) b!2673299))

(assert (= (and b!2673299 res!1123939) b!2673300))

(assert (= (and d!764214 res!1123940) b!2673301))

(declare-fun m!3039247 () Bool)

(assert (=> d!764214 m!3039247))

(declare-fun m!3039249 () Bool)

(assert (=> d!764214 m!3039249))

(declare-fun m!3039251 () Bool)

(assert (=> d!764214 m!3039251))

(declare-fun m!3039253 () Bool)

(assert (=> d!764214 m!3039253))

(assert (=> d!764214 m!3039247))

(assert (=> d!764214 m!3038841))

(declare-fun m!3039255 () Bool)

(assert (=> d!764214 m!3039255))

(assert (=> d!764214 m!3039253))

(assert (=> d!764214 m!3039253))

(declare-fun m!3039257 () Bool)

(assert (=> d!764214 m!3039257))

(declare-fun m!3039259 () Bool)

(assert (=> b!2673299 m!3039259))

(declare-fun m!3039261 () Bool)

(assert (=> b!2673300 m!3039261))

(assert (=> b!2673301 m!3039253))

(assert (=> b!2673301 m!3039253))

(assert (=> b!2673301 m!3039247))

(assert (=> b!2673301 m!3039247))

(assert (=> b!2673301 m!3039249))

(declare-fun m!3039263 () Bool)

(assert (=> b!2673301 m!3039263))

(assert (=> b!2672919 d!764214))

(declare-fun b!2673302 () Bool)

(declare-fun e!1685059 () Bool)

(assert (=> b!2673302 (= e!1685059 (inv!16 (value!151526 separatorToken!152)))))

(declare-fun b!2673303 () Bool)

(declare-fun res!1123941 () Bool)

(declare-fun e!1685060 () Bool)

(assert (=> b!2673303 (=> res!1123941 e!1685060)))

(assert (=> b!2673303 (= res!1123941 (not ((_ is IntegerValue!14765) (value!151526 separatorToken!152))))))

(declare-fun e!1685061 () Bool)

(assert (=> b!2673303 (= e!1685061 e!1685060)))

(declare-fun d!764230 () Bool)

(declare-fun c!430746 () Bool)

(assert (=> d!764230 (= c!430746 ((_ is IntegerValue!14763) (value!151526 separatorToken!152)))))

(assert (=> d!764230 (= (inv!21 (value!151526 separatorToken!152)) e!1685059)))

(declare-fun b!2673304 () Bool)

(assert (=> b!2673304 (= e!1685061 (inv!17 (value!151526 separatorToken!152)))))

(declare-fun b!2673305 () Bool)

(assert (=> b!2673305 (= e!1685059 e!1685061)))

(declare-fun c!430747 () Bool)

(assert (=> b!2673305 (= c!430747 ((_ is IntegerValue!14764) (value!151526 separatorToken!152)))))

(declare-fun b!2673306 () Bool)

(assert (=> b!2673306 (= e!1685060 (inv!15 (value!151526 separatorToken!152)))))

(assert (= (and d!764230 c!430746) b!2673302))

(assert (= (and d!764230 (not c!430746)) b!2673305))

(assert (= (and b!2673305 c!430747) b!2673304))

(assert (= (and b!2673305 (not c!430747)) b!2673303))

(assert (= (and b!2673303 (not res!1123941)) b!2673306))

(declare-fun m!3039265 () Bool)

(assert (=> b!2673302 m!3039265))

(declare-fun m!3039267 () Bool)

(assert (=> b!2673304 m!3039267))

(declare-fun m!3039269 () Bool)

(assert (=> b!2673306 m!3039269))

(assert (=> b!2672912 d!764230))

(declare-fun d!764232 () Bool)

(declare-fun lt!941283 () BalanceConc!18870)

(declare-fun printListTailRec!521 (LexerInterface!4296 List!30870 List!30868) List!30868)

(declare-fun dropList!970 (BalanceConc!18872 Int) List!30870)

(assert (=> d!764232 (= (list!11613 lt!941283) (printListTailRec!521 thiss!14116 (dropList!970 lt!941126 0) (list!11613 (BalanceConc!18871 Empty!9628))))))

(declare-fun e!1685067 () BalanceConc!18870)

(assert (=> d!764232 (= lt!941283 e!1685067)))

(declare-fun c!430750 () Bool)

(assert (=> d!764232 (= c!430750 (>= 0 (size!23779 lt!941126)))))

(declare-fun e!1685066 () Bool)

(assert (=> d!764232 e!1685066))

(declare-fun res!1123944 () Bool)

(assert (=> d!764232 (=> (not res!1123944) (not e!1685066))))

(assert (=> d!764232 (= res!1123944 (>= 0 0))))

(assert (=> d!764232 (= (printTailRec!1149 thiss!14116 lt!941126 0 (BalanceConc!18871 Empty!9628)) lt!941283)))

(declare-fun b!2673313 () Bool)

(assert (=> b!2673313 (= e!1685066 (<= 0 (size!23779 lt!941126)))))

(declare-fun b!2673314 () Bool)

(assert (=> b!2673314 (= e!1685067 (BalanceConc!18871 Empty!9628))))

(declare-fun b!2673315 () Bool)

(declare-fun ++!7505 (BalanceConc!18870 BalanceConc!18870) BalanceConc!18870)

(assert (=> b!2673315 (= e!1685067 (printTailRec!1149 thiss!14116 lt!941126 (+ 0 1) (++!7505 (BalanceConc!18871 Empty!9628) (charsOf!2962 (apply!7371 lt!941126 0)))))))

(declare-fun lt!941280 () List!30870)

(assert (=> b!2673315 (= lt!941280 (list!11617 lt!941126))))

(declare-fun lt!941282 () Unit!44973)

(declare-fun lemmaDropApply!876 (List!30870 Int) Unit!44973)

(assert (=> b!2673315 (= lt!941282 (lemmaDropApply!876 lt!941280 0))))

(declare-fun head!6075 (List!30870) Token!8868)

(declare-fun drop!1667 (List!30870 Int) List!30870)

(declare-fun apply!7372 (List!30870 Int) Token!8868)

(assert (=> b!2673315 (= (head!6075 (drop!1667 lt!941280 0)) (apply!7372 lt!941280 0))))

(declare-fun lt!941278 () Unit!44973)

(assert (=> b!2673315 (= lt!941278 lt!941282)))

(declare-fun lt!941281 () List!30870)

(assert (=> b!2673315 (= lt!941281 (list!11617 lt!941126))))

(declare-fun lt!941279 () Unit!44973)

(declare-fun lemmaDropTail!848 (List!30870 Int) Unit!44973)

(assert (=> b!2673315 (= lt!941279 (lemmaDropTail!848 lt!941281 0))))

(declare-fun tail!4313 (List!30870) List!30870)

(assert (=> b!2673315 (= (tail!4313 (drop!1667 lt!941281 0)) (drop!1667 lt!941281 (+ 0 1)))))

(declare-fun lt!941284 () Unit!44973)

(assert (=> b!2673315 (= lt!941284 lt!941279)))

(assert (= (and d!764232 res!1123944) b!2673313))

(assert (= (and d!764232 c!430750) b!2673314))

(assert (= (and d!764232 (not c!430750)) b!2673315))

(declare-fun m!3039271 () Bool)

(assert (=> d!764232 m!3039271))

(declare-fun m!3039273 () Bool)

(assert (=> d!764232 m!3039273))

(declare-fun m!3039275 () Bool)

(assert (=> d!764232 m!3039275))

(declare-fun m!3039277 () Bool)

(assert (=> d!764232 m!3039277))

(assert (=> d!764232 m!3039277))

(assert (=> d!764232 m!3039275))

(declare-fun m!3039279 () Bool)

(assert (=> d!764232 m!3039279))

(assert (=> b!2673313 m!3039273))

(declare-fun m!3039281 () Bool)

(assert (=> b!2673315 m!3039281))

(declare-fun m!3039283 () Bool)

(assert (=> b!2673315 m!3039283))

(declare-fun m!3039285 () Bool)

(assert (=> b!2673315 m!3039285))

(declare-fun m!3039287 () Bool)

(assert (=> b!2673315 m!3039287))

(declare-fun m!3039289 () Bool)

(assert (=> b!2673315 m!3039289))

(assert (=> b!2673315 m!3039285))

(assert (=> b!2673315 m!3039281))

(declare-fun m!3039291 () Bool)

(assert (=> b!2673315 m!3039291))

(declare-fun m!3039293 () Bool)

(assert (=> b!2673315 m!3039293))

(declare-fun m!3039295 () Bool)

(assert (=> b!2673315 m!3039295))

(declare-fun m!3039297 () Bool)

(assert (=> b!2673315 m!3039297))

(assert (=> b!2673315 m!3039283))

(declare-fun m!3039299 () Bool)

(assert (=> b!2673315 m!3039299))

(declare-fun m!3039301 () Bool)

(assert (=> b!2673315 m!3039301))

(assert (=> b!2673315 m!3039297))

(assert (=> b!2673315 m!3039289))

(declare-fun m!3039303 () Bool)

(assert (=> b!2673315 m!3039303))

(declare-fun m!3039305 () Bool)

(assert (=> b!2673315 m!3039305))

(assert (=> b!2672923 d!764232))

(declare-fun d!764234 () Bool)

(declare-fun lt!941287 () BalanceConc!18870)

(assert (=> d!764234 (= (list!11613 lt!941287) (printList!1188 thiss!14116 (list!11617 lt!941126)))))

(assert (=> d!764234 (= lt!941287 (printTailRec!1149 thiss!14116 lt!941126 0 (BalanceConc!18871 Empty!9628)))))

(assert (=> d!764234 (= (print!1675 thiss!14116 lt!941126) lt!941287)))

(declare-fun bs!479593 () Bool)

(assert (= bs!479593 d!764234))

(declare-fun m!3039307 () Bool)

(assert (=> bs!479593 m!3039307))

(assert (=> bs!479593 m!3039295))

(assert (=> bs!479593 m!3039295))

(declare-fun m!3039309 () Bool)

(assert (=> bs!479593 m!3039309))

(assert (=> bs!479593 m!3038839))

(assert (=> b!2672923 d!764234))

(declare-fun d!764236 () Bool)

(declare-fun e!1685070 () Bool)

(assert (=> d!764236 e!1685070))

(declare-fun res!1123947 () Bool)

(assert (=> d!764236 (=> (not res!1123947) (not e!1685070))))

(declare-fun lt!941290 () BalanceConc!18872)

(assert (=> d!764236 (= res!1123947 (= (list!11617 lt!941290) (Cons!30770 (h!36190 l!4335) Nil!30770)))))

(declare-fun singleton!926 (Token!8868) BalanceConc!18872)

(assert (=> d!764236 (= lt!941290 (singleton!926 (h!36190 l!4335)))))

(assert (=> d!764236 (= (singletonSeq!2096 (h!36190 l!4335)) lt!941290)))

(declare-fun b!2673318 () Bool)

(declare-fun isBalanced!2913 (Conc!9629) Bool)

(assert (=> b!2673318 (= e!1685070 (isBalanced!2913 (c!430686 lt!941290)))))

(assert (= (and d!764236 res!1123947) b!2673318))

(declare-fun m!3039311 () Bool)

(assert (=> d!764236 m!3039311))

(declare-fun m!3039313 () Bool)

(assert (=> d!764236 m!3039313))

(declare-fun m!3039315 () Bool)

(assert (=> b!2673318 m!3039315))

(assert (=> b!2672923 d!764236))

(declare-fun d!764238 () Bool)

(declare-fun c!430753 () Bool)

(assert (=> d!764238 (= c!430753 ((_ is Cons!30770) (Cons!30770 (h!36190 l!4335) Nil!30770)))))

(declare-fun e!1685073 () List!30868)

(assert (=> d!764238 (= (printList!1188 thiss!14116 (Cons!30770 (h!36190 l!4335) Nil!30770)) e!1685073)))

(declare-fun b!2673323 () Bool)

(assert (=> b!2673323 (= e!1685073 (++!7503 (list!11613 (charsOf!2962 (h!36190 (Cons!30770 (h!36190 l!4335) Nil!30770)))) (printList!1188 thiss!14116 (t!223439 (Cons!30770 (h!36190 l!4335) Nil!30770)))))))

(declare-fun b!2673324 () Bool)

(assert (=> b!2673324 (= e!1685073 Nil!30768)))

(assert (= (and d!764238 c!430753) b!2673323))

(assert (= (and d!764238 (not c!430753)) b!2673324))

(declare-fun m!3039317 () Bool)

(assert (=> b!2673323 m!3039317))

(assert (=> b!2673323 m!3039317))

(declare-fun m!3039319 () Bool)

(assert (=> b!2673323 m!3039319))

(declare-fun m!3039321 () Bool)

(assert (=> b!2673323 m!3039321))

(assert (=> b!2673323 m!3039319))

(assert (=> b!2673323 m!3039321))

(declare-fun m!3039323 () Bool)

(assert (=> b!2673323 m!3039323))

(assert (=> b!2672923 d!764238))

(declare-fun d!764240 () Bool)

(assert (=> d!764240 (= (list!11613 lt!941127) (list!11616 (c!430684 lt!941127)))))

(declare-fun bs!479594 () Bool)

(assert (= bs!479594 d!764240))

(declare-fun m!3039325 () Bool)

(assert (=> bs!479594 m!3039325))

(assert (=> b!2672923 d!764240))

(declare-fun d!764242 () Bool)

(declare-fun res!1123948 () Bool)

(declare-fun e!1685074 () Bool)

(assert (=> d!764242 (=> (not res!1123948) (not e!1685074))))

(assert (=> d!764242 (= res!1123948 (not (isEmpty!17595 (originalCharacters!5465 separatorToken!152))))))

(assert (=> d!764242 (= (inv!41775 separatorToken!152) e!1685074)))

(declare-fun b!2673325 () Bool)

(declare-fun res!1123949 () Bool)

(assert (=> b!2673325 (=> (not res!1123949) (not e!1685074))))

(assert (=> b!2673325 (= res!1123949 (= (originalCharacters!5465 separatorToken!152) (list!11613 (dynLambda!13351 (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152))) (value!151526 separatorToken!152)))))))

(declare-fun b!2673326 () Bool)

(assert (=> b!2673326 (= e!1685074 (= (size!23775 separatorToken!152) (size!23778 (originalCharacters!5465 separatorToken!152))))))

(assert (= (and d!764242 res!1123948) b!2673325))

(assert (= (and b!2673325 res!1123949) b!2673326))

(declare-fun b_lambda!81455 () Bool)

(assert (=> (not b_lambda!81455) (not b!2673325)))

(declare-fun t!223480 () Bool)

(declare-fun tb!149795 () Bool)

(assert (=> (and b!2672924 (= (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))) (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152)))) t!223480) tb!149795))

(declare-fun b!2673327 () Bool)

(declare-fun e!1685075 () Bool)

(declare-fun tp!845396 () Bool)

(assert (=> b!2673327 (= e!1685075 (and (inv!41778 (c!430684 (dynLambda!13351 (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152))) (value!151526 separatorToken!152)))) tp!845396))))

(declare-fun result!185030 () Bool)

(assert (=> tb!149795 (= result!185030 (and (inv!41779 (dynLambda!13351 (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152))) (value!151526 separatorToken!152))) e!1685075))))

(assert (= tb!149795 b!2673327))

(declare-fun m!3039327 () Bool)

(assert (=> b!2673327 m!3039327))

(declare-fun m!3039329 () Bool)

(assert (=> tb!149795 m!3039329))

(assert (=> b!2673325 t!223480))

(declare-fun b_and!197499 () Bool)

(assert (= b_and!197485 (and (=> t!223480 result!185030) b_and!197499)))

(declare-fun t!223482 () Bool)

(declare-fun tb!149797 () Bool)

(assert (=> (and b!2672914 (= (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152))) (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152)))) t!223482) tb!149797))

(declare-fun result!185032 () Bool)

(assert (= result!185032 result!185030))

(assert (=> b!2673325 t!223482))

(declare-fun b_and!197501 () Bool)

(assert (= b_and!197487 (and (=> t!223482 result!185032) b_and!197501)))

(declare-fun tb!149799 () Bool)

(declare-fun t!223484 () Bool)

(assert (=> (and b!2672925 (= (toChars!6500 (transformation!4699 (h!36189 rules!1712))) (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152)))) t!223484) tb!149799))

(declare-fun result!185034 () Bool)

(assert (= result!185034 result!185030))

(assert (=> b!2673325 t!223484))

(declare-fun b_and!197503 () Bool)

(assert (= b_and!197489 (and (=> t!223484 result!185034) b_and!197503)))

(declare-fun m!3039331 () Bool)

(assert (=> d!764242 m!3039331))

(declare-fun m!3039333 () Bool)

(assert (=> b!2673325 m!3039333))

(assert (=> b!2673325 m!3039333))

(declare-fun m!3039335 () Bool)

(assert (=> b!2673325 m!3039335))

(declare-fun m!3039337 () Bool)

(assert (=> b!2673326 m!3039337))

(assert (=> start!259966 d!764242))

(declare-fun d!764244 () Bool)

(declare-fun res!1123952 () Bool)

(declare-fun e!1685078 () Bool)

(assert (=> d!764244 (=> (not res!1123952) (not e!1685078))))

(declare-fun rulesValid!1750 (LexerInterface!4296 List!30869) Bool)

(assert (=> d!764244 (= res!1123952 (rulesValid!1750 thiss!14116 rules!1712))))

(assert (=> d!764244 (= (rulesInvariant!3796 thiss!14116 rules!1712) e!1685078)))

(declare-fun b!2673330 () Bool)

(declare-datatypes ((List!30872 0))(
  ( (Nil!30772) (Cons!30772 (h!36192 String!34489) (t!223493 List!30872)) )
))
(declare-fun noDuplicateTag!1746 (LexerInterface!4296 List!30869 List!30872) Bool)

(assert (=> b!2673330 (= e!1685078 (noDuplicateTag!1746 thiss!14116 rules!1712 Nil!30772))))

(assert (= (and d!764244 res!1123952) b!2673330))

(declare-fun m!3039339 () Bool)

(assert (=> d!764244 m!3039339))

(declare-fun m!3039341 () Bool)

(assert (=> b!2673330 m!3039341))

(assert (=> b!2672911 d!764244))

(declare-fun d!764246 () Bool)

(assert (=> d!764246 (= (inv!41771 (tag!5201 (h!36189 rules!1712))) (= (mod (str.len (value!151525 (tag!5201 (h!36189 rules!1712)))) 2) 0))))

(assert (=> b!2672922 d!764246))

(declare-fun d!764248 () Bool)

(declare-fun res!1123953 () Bool)

(declare-fun e!1685079 () Bool)

(assert (=> d!764248 (=> (not res!1123953) (not e!1685079))))

(assert (=> d!764248 (= res!1123953 (semiInverseModEq!1944 (toChars!6500 (transformation!4699 (h!36189 rules!1712))) (toValue!6641 (transformation!4699 (h!36189 rules!1712)))))))

(assert (=> d!764248 (= (inv!41774 (transformation!4699 (h!36189 rules!1712))) e!1685079)))

(declare-fun b!2673331 () Bool)

(assert (=> b!2673331 (= e!1685079 (equivClasses!1845 (toChars!6500 (transformation!4699 (h!36189 rules!1712))) (toValue!6641 (transformation!4699 (h!36189 rules!1712)))))))

(assert (= (and d!764248 res!1123953) b!2673331))

(declare-fun m!3039343 () Bool)

(assert (=> d!764248 m!3039343))

(declare-fun m!3039345 () Bool)

(assert (=> b!2673331 m!3039345))

(assert (=> b!2672922 d!764248))

(declare-fun b!2673345 () Bool)

(declare-fun b_free!75317 () Bool)

(declare-fun b_next!76021 () Bool)

(assert (=> b!2673345 (= b_free!75317 (not b_next!76021))))

(declare-fun tp!845411 () Bool)

(declare-fun b_and!197505 () Bool)

(assert (=> b!2673345 (= tp!845411 b_and!197505)))

(declare-fun b_free!75319 () Bool)

(declare-fun b_next!76023 () Bool)

(assert (=> b!2673345 (= b_free!75319 (not b_next!76023))))

(declare-fun t!223486 () Bool)

(declare-fun tb!149801 () Bool)

(assert (=> (and b!2673345 (= (toChars!6500 (transformation!4699 (rule!7105 (h!36190 (t!223439 l!4335))))) (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335))))) t!223486) tb!149801))

(declare-fun result!185038 () Bool)

(assert (= result!185038 result!185006))

(assert (=> b!2672970 t!223486))

(assert (=> d!764192 t!223486))

(declare-fun t!223488 () Bool)

(declare-fun tb!149803 () Bool)

(assert (=> (and b!2673345 (= (toChars!6500 (transformation!4699 (rule!7105 (h!36190 (t!223439 l!4335))))) (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152)))) t!223488) tb!149803))

(declare-fun result!185040 () Bool)

(assert (= result!185040 result!185030))

(assert (=> b!2673325 t!223488))

(declare-fun tp!845408 () Bool)

(declare-fun b_and!197507 () Bool)

(assert (=> b!2673345 (= tp!845408 (and (=> t!223486 result!185038) (=> t!223488 result!185040) b_and!197507))))

(declare-fun e!1685095 () Bool)

(declare-fun tp!845407 () Bool)

(declare-fun e!1685094 () Bool)

(declare-fun b!2673343 () Bool)

(assert (=> b!2673343 (= e!1685094 (and (inv!21 (value!151526 (h!36190 (t!223439 l!4335)))) e!1685095 tp!845407))))

(declare-fun e!1685097 () Bool)

(declare-fun tp!845409 () Bool)

(declare-fun b!2673342 () Bool)

(assert (=> b!2673342 (= e!1685097 (and (inv!41775 (h!36190 (t!223439 l!4335))) e!1685094 tp!845409))))

(declare-fun e!1685093 () Bool)

(assert (=> b!2673345 (= e!1685093 (and tp!845411 tp!845408))))

(assert (=> b!2672915 (= tp!845321 e!1685097)))

(declare-fun b!2673344 () Bool)

(declare-fun tp!845410 () Bool)

(assert (=> b!2673344 (= e!1685095 (and tp!845410 (inv!41771 (tag!5201 (rule!7105 (h!36190 (t!223439 l!4335))))) (inv!41774 (transformation!4699 (rule!7105 (h!36190 (t!223439 l!4335))))) e!1685093))))

(assert (= b!2673344 b!2673345))

(assert (= b!2673343 b!2673344))

(assert (= b!2673342 b!2673343))

(assert (= (and b!2672915 ((_ is Cons!30770) (t!223439 l!4335))) b!2673342))

(declare-fun m!3039347 () Bool)

(assert (=> b!2673343 m!3039347))

(declare-fun m!3039349 () Bool)

(assert (=> b!2673342 m!3039349))

(declare-fun m!3039351 () Bool)

(assert (=> b!2673344 m!3039351))

(declare-fun m!3039353 () Bool)

(assert (=> b!2673344 m!3039353))

(declare-fun b!2673357 () Bool)

(declare-fun e!1685100 () Bool)

(declare-fun tp!845424 () Bool)

(declare-fun tp!845422 () Bool)

(assert (=> b!2673357 (= e!1685100 (and tp!845424 tp!845422))))

(declare-fun b!2673358 () Bool)

(declare-fun tp!845425 () Bool)

(assert (=> b!2673358 (= e!1685100 tp!845425)))

(assert (=> b!2672917 (= tp!845331 e!1685100)))

(declare-fun b!2673359 () Bool)

(declare-fun tp!845423 () Bool)

(declare-fun tp!845426 () Bool)

(assert (=> b!2673359 (= e!1685100 (and tp!845423 tp!845426))))

(declare-fun b!2673356 () Bool)

(declare-fun tp_is_empty!13817 () Bool)

(assert (=> b!2673356 (= e!1685100 tp_is_empty!13817)))

(assert (= (and b!2672917 ((_ is ElementMatch!7843) (regex!4699 (rule!7105 separatorToken!152)))) b!2673356))

(assert (= (and b!2672917 ((_ is Concat!12765) (regex!4699 (rule!7105 separatorToken!152)))) b!2673357))

(assert (= (and b!2672917 ((_ is Star!7843) (regex!4699 (rule!7105 separatorToken!152)))) b!2673358))

(assert (= (and b!2672917 ((_ is Union!7843) (regex!4699 (rule!7105 separatorToken!152)))) b!2673359))

(declare-fun b!2673361 () Bool)

(declare-fun e!1685101 () Bool)

(declare-fun tp!845429 () Bool)

(declare-fun tp!845427 () Bool)

(assert (=> b!2673361 (= e!1685101 (and tp!845429 tp!845427))))

(declare-fun b!2673362 () Bool)

(declare-fun tp!845430 () Bool)

(assert (=> b!2673362 (= e!1685101 tp!845430)))

(assert (=> b!2672907 (= tp!845325 e!1685101)))

(declare-fun b!2673363 () Bool)

(declare-fun tp!845428 () Bool)

(declare-fun tp!845431 () Bool)

(assert (=> b!2673363 (= e!1685101 (and tp!845428 tp!845431))))

(declare-fun b!2673360 () Bool)

(assert (=> b!2673360 (= e!1685101 tp_is_empty!13817)))

(assert (= (and b!2672907 ((_ is ElementMatch!7843) (regex!4699 (rule!7105 (h!36190 l!4335))))) b!2673360))

(assert (= (and b!2672907 ((_ is Concat!12765) (regex!4699 (rule!7105 (h!36190 l!4335))))) b!2673361))

(assert (= (and b!2672907 ((_ is Star!7843) (regex!4699 (rule!7105 (h!36190 l!4335))))) b!2673362))

(assert (= (and b!2672907 ((_ is Union!7843) (regex!4699 (rule!7105 (h!36190 l!4335))))) b!2673363))

(declare-fun b!2673368 () Bool)

(declare-fun e!1685104 () Bool)

(declare-fun tp!845434 () Bool)

(assert (=> b!2673368 (= e!1685104 (and tp_is_empty!13817 tp!845434))))

(assert (=> b!2672918 (= tp!845332 e!1685104)))

(assert (= (and b!2672918 ((_ is Cons!30768) (originalCharacters!5465 (h!36190 l!4335)))) b!2673368))

(declare-fun b!2673371 () Bool)

(declare-fun e!1685107 () Bool)

(assert (=> b!2673371 (= e!1685107 true)))

(declare-fun b!2673370 () Bool)

(declare-fun e!1685106 () Bool)

(assert (=> b!2673370 (= e!1685106 e!1685107)))

(declare-fun b!2673369 () Bool)

(declare-fun e!1685105 () Bool)

(assert (=> b!2673369 (= e!1685105 e!1685106)))

(assert (=> b!2672935 e!1685105))

(assert (= b!2673370 b!2673371))

(assert (= b!2673369 b!2673370))

(assert (= (and b!2672935 ((_ is Cons!30769) (t!223438 rules!1712))) b!2673369))

(assert (=> b!2673371 (< (dynLambda!13346 order!16943 (toValue!6641 (transformation!4699 (h!36189 (t!223438 rules!1712))))) (dynLambda!13347 order!16945 lambda!99854))))

(assert (=> b!2673371 (< (dynLambda!13348 order!16947 (toChars!6500 (transformation!4699 (h!36189 (t!223438 rules!1712))))) (dynLambda!13347 order!16945 lambda!99854))))

(declare-fun b!2673372 () Bool)

(declare-fun e!1685108 () Bool)

(declare-fun tp!845435 () Bool)

(assert (=> b!2673372 (= e!1685108 (and tp_is_empty!13817 tp!845435))))

(assert (=> b!2672912 (= tp!845322 e!1685108)))

(assert (= (and b!2672912 ((_ is Cons!30768) (originalCharacters!5465 separatorToken!152))) b!2673372))

(declare-fun b!2673383 () Bool)

(declare-fun b_free!75321 () Bool)

(declare-fun b_next!76025 () Bool)

(assert (=> b!2673383 (= b_free!75321 (not b_next!76025))))

(declare-fun tp!845446 () Bool)

(declare-fun b_and!197509 () Bool)

(assert (=> b!2673383 (= tp!845446 b_and!197509)))

(declare-fun b_free!75323 () Bool)

(declare-fun b_next!76027 () Bool)

(assert (=> b!2673383 (= b_free!75323 (not b_next!76027))))

(declare-fun tb!149805 () Bool)

(declare-fun t!223490 () Bool)

(assert (=> (and b!2673383 (= (toChars!6500 (transformation!4699 (h!36189 (t!223438 rules!1712)))) (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335))))) t!223490) tb!149805))

(declare-fun result!185048 () Bool)

(assert (= result!185048 result!185006))

(assert (=> b!2672970 t!223490))

(assert (=> d!764192 t!223490))

(declare-fun t!223492 () Bool)

(declare-fun tb!149807 () Bool)

(assert (=> (and b!2673383 (= (toChars!6500 (transformation!4699 (h!36189 (t!223438 rules!1712)))) (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152)))) t!223492) tb!149807))

(declare-fun result!185050 () Bool)

(assert (= result!185050 result!185030))

(assert (=> b!2673325 t!223492))

(declare-fun tp!845444 () Bool)

(declare-fun b_and!197511 () Bool)

(assert (=> b!2673383 (= tp!845444 (and (=> t!223490 result!185048) (=> t!223492 result!185050) b_and!197511))))

(declare-fun e!1685119 () Bool)

(assert (=> b!2673383 (= e!1685119 (and tp!845446 tp!845444))))

(declare-fun b!2673382 () Bool)

(declare-fun e!1685120 () Bool)

(declare-fun tp!845445 () Bool)

(assert (=> b!2673382 (= e!1685120 (and tp!845445 (inv!41771 (tag!5201 (h!36189 (t!223438 rules!1712)))) (inv!41774 (transformation!4699 (h!36189 (t!223438 rules!1712)))) e!1685119))))

(declare-fun b!2673381 () Bool)

(declare-fun e!1685118 () Bool)

(declare-fun tp!845447 () Bool)

(assert (=> b!2673381 (= e!1685118 (and e!1685120 tp!845447))))

(assert (=> b!2672921 (= tp!845330 e!1685118)))

(assert (= b!2673382 b!2673383))

(assert (= b!2673381 b!2673382))

(assert (= (and b!2672921 ((_ is Cons!30769) (t!223438 rules!1712))) b!2673381))

(declare-fun m!3039355 () Bool)

(assert (=> b!2673382 m!3039355))

(declare-fun m!3039357 () Bool)

(assert (=> b!2673382 m!3039357))

(declare-fun b!2673385 () Bool)

(declare-fun e!1685121 () Bool)

(declare-fun tp!845450 () Bool)

(declare-fun tp!845448 () Bool)

(assert (=> b!2673385 (= e!1685121 (and tp!845450 tp!845448))))

(declare-fun b!2673386 () Bool)

(declare-fun tp!845451 () Bool)

(assert (=> b!2673386 (= e!1685121 tp!845451)))

(assert (=> b!2672922 (= tp!845327 e!1685121)))

(declare-fun b!2673387 () Bool)

(declare-fun tp!845449 () Bool)

(declare-fun tp!845452 () Bool)

(assert (=> b!2673387 (= e!1685121 (and tp!845449 tp!845452))))

(declare-fun b!2673384 () Bool)

(assert (=> b!2673384 (= e!1685121 tp_is_empty!13817)))

(assert (= (and b!2672922 ((_ is ElementMatch!7843) (regex!4699 (h!36189 rules!1712)))) b!2673384))

(assert (= (and b!2672922 ((_ is Concat!12765) (regex!4699 (h!36189 rules!1712)))) b!2673385))

(assert (= (and b!2672922 ((_ is Star!7843) (regex!4699 (h!36189 rules!1712)))) b!2673386))

(assert (= (and b!2672922 ((_ is Union!7843) (regex!4699 (h!36189 rules!1712)))) b!2673387))

(declare-fun b_lambda!81457 () Bool)

(assert (= b_lambda!81455 (or (and b!2672914 b_free!75303) (and b!2673345 b_free!75319 (= (toChars!6500 (transformation!4699 (rule!7105 (h!36190 (t!223439 l!4335))))) (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152))))) (and b!2672925 b_free!75307 (= (toChars!6500 (transformation!4699 (h!36189 rules!1712))) (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152))))) (and b!2673383 b_free!75323 (= (toChars!6500 (transformation!4699 (h!36189 (t!223438 rules!1712)))) (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152))))) (and b!2672924 b_free!75299 (= (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))) (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152))))) b_lambda!81457)))

(declare-fun b_lambda!81459 () Bool)

(assert (= b_lambda!81443 (or b!2672909 b_lambda!81459)))

(declare-fun bs!479595 () Bool)

(declare-fun d!764250 () Bool)

(assert (= bs!479595 (and d!764250 b!2672909)))

(assert (=> bs!479595 (= (dynLambda!13352 lambda!99854 (h!36190 l!4335)) (rulesProduceIndividualToken!2008 thiss!14116 rules!1712 (h!36190 l!4335)))))

(assert (=> bs!479595 m!3039055))

(assert (=> d!764200 d!764250))

(declare-fun b_lambda!81461 () Bool)

(assert (= b_lambda!81439 (or b!2672916 b_lambda!81461)))

(declare-fun bs!479596 () Bool)

(declare-fun d!764252 () Bool)

(assert (= bs!479596 (and d!764252 b!2672916)))

(assert (=> bs!479596 (= (dynLambda!13352 lambda!99853 (h!36190 l!4335)) (not (isSeparator!4699 (rule!7105 (h!36190 l!4335)))))))

(assert (=> b!2673084 d!764252))

(declare-fun b_lambda!81463 () Bool)

(assert (= b_lambda!81433 (or (and b!2673383 b_free!75323 (= (toChars!6500 (transformation!4699 (h!36189 (t!223438 rules!1712)))) (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))))) (and b!2673345 b_free!75319 (= (toChars!6500 (transformation!4699 (rule!7105 (h!36190 (t!223439 l!4335))))) (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))))) (and b!2672925 b_free!75307 (= (toChars!6500 (transformation!4699 (h!36189 rules!1712))) (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))))) (and b!2672924 b_free!75299) (and b!2672914 b_free!75303 (= (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152))) (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))))) b_lambda!81463)))

(declare-fun b_lambda!81465 () Bool)

(assert (= b_lambda!81441 (or (and b!2673383 b_free!75323 (= (toChars!6500 (transformation!4699 (h!36189 (t!223438 rules!1712)))) (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))))) (and b!2673345 b_free!75319 (= (toChars!6500 (transformation!4699 (rule!7105 (h!36190 (t!223439 l!4335))))) (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))))) (and b!2672925 b_free!75307 (= (toChars!6500 (transformation!4699 (h!36189 rules!1712))) (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))))) (and b!2672924 b_free!75299) (and b!2672914 b_free!75303 (= (toChars!6500 (transformation!4699 (rule!7105 separatorToken!152))) (toChars!6500 (transformation!4699 (rule!7105 (h!36190 l!4335)))))) b_lambda!81465)))

(check-sat (not b!2673181) (not d!764144) (not b!2673122) (not b!2673363) (not b!2673331) (not b!2673313) (not d!764146) (not b!2673315) (not d!764240) (not b!2673182) (not b!2673127) (not b!2673110) (not d!764182) (not b!2673343) (not b!2673357) (not b_lambda!81465) (not b!2673327) (not d!764196) (not d!764244) (not d!764192) (not d!764198) (not b!2673299) (not b!2673063) (not b!2673369) (not b!2673386) (not b!2673204) (not b!2673106) b_and!197503 (not b!2673105) (not b!2673330) (not b_next!76001) (not b!2673325) (not bs!479595) (not b!2673064) (not b!2673323) b_and!197453 (not b!2673372) b_and!197507 (not b!2673382) (not b!2673300) (not tb!149795) b_and!197509 (not bm!172475) (not b!2673387) (not d!764248) (not b!2673368) (not b_next!76009) b_and!197501 (not b_next!76007) tp_is_empty!13817 (not b!2673301) (not bm!172501) (not b!2673385) (not b_lambda!81461) (not b!2673304) (not d!764242) b_and!197449 (not b!2673079) (not b_next!76023) b_and!197499 (not b!2673108) (not b!2673178) (not b_next!76027) (not b_lambda!81457) (not b!2673056) (not b!2673358) (not b_lambda!81459) (not d!764194) (not b!2672970) b_and!197457 (not b!2673359) (not b_next!76003) (not b!2673085) (not b!2673302) (not bm!172504) (not b!2673342) (not b!2673123) (not b!2673058) (not d!764234) (not b_next!76021) (not b!2673362) (not bm!172502) (not b!2673077) (not d!764186) (not b!2673112) (not b!2673057) (not b_lambda!81463) (not b!2672976) (not b_next!76025) (not b!2672971) (not b!2673075) (not b!2673326) (not b!2673361) (not tb!149781) (not b_next!76011) (not b!2673104) (not bm!172503) (not d!764200) (not b!2673194) (not d!764214) (not d!764236) b_and!197505 (not b!2673109) (not b!2673306) b_and!197511 (not b!2673381) (not d!764232) (not b!2673111) (not b!2673344) (not b!2673186) (not b!2673203) (not d!764210) (not bm!172505) (not b!2673318) (not b_next!76005))
(check-sat b_and!197503 (not b_next!76001) b_and!197509 b_and!197499 (not b_next!76027) b_and!197457 (not b_next!76003) (not b_next!76021) (not b_next!76025) (not b_next!76011) b_and!197505 b_and!197511 (not b_next!76005) b_and!197453 b_and!197507 (not b_next!76009) b_and!197501 (not b_next!76007) (not b_next!76023) b_and!197449)
