; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!260406 () Bool)

(assert start!260406)

(declare-fun b!2675776 () Bool)

(declare-fun b_free!75433 () Bool)

(declare-fun b_next!76137 () Bool)

(assert (=> b!2675776 (= b_free!75433 (not b_next!76137))))

(declare-fun tp!846153 () Bool)

(declare-fun b_and!197833 () Bool)

(assert (=> b!2675776 (= tp!846153 b_and!197833)))

(declare-fun b_free!75435 () Bool)

(declare-fun b_next!76139 () Bool)

(assert (=> b!2675776 (= b_free!75435 (not b_next!76139))))

(declare-fun tp!846151 () Bool)

(declare-fun b_and!197835 () Bool)

(assert (=> b!2675776 (= tp!846151 b_and!197835)))

(declare-fun b!2675783 () Bool)

(declare-fun b_free!75437 () Bool)

(declare-fun b_next!76141 () Bool)

(assert (=> b!2675783 (= b_free!75437 (not b_next!76141))))

(declare-fun tp!846145 () Bool)

(declare-fun b_and!197837 () Bool)

(assert (=> b!2675783 (= tp!846145 b_and!197837)))

(declare-fun b_free!75439 () Bool)

(declare-fun b_next!76143 () Bool)

(assert (=> b!2675783 (= b_free!75439 (not b_next!76143))))

(declare-fun tp!846152 () Bool)

(declare-fun b_and!197839 () Bool)

(assert (=> b!2675783 (= tp!846152 b_and!197839)))

(declare-fun b!2675770 () Bool)

(declare-fun b_free!75441 () Bool)

(declare-fun b_next!76145 () Bool)

(assert (=> b!2675770 (= b_free!75441 (not b_next!76145))))

(declare-fun tp!846147 () Bool)

(declare-fun b_and!197841 () Bool)

(assert (=> b!2675770 (= tp!846147 b_and!197841)))

(declare-fun b_free!75443 () Bool)

(declare-fun b_next!76147 () Bool)

(assert (=> b!2675770 (= b_free!75443 (not b_next!76147))))

(declare-fun tp!846154 () Bool)

(declare-fun b_and!197843 () Bool)

(assert (=> b!2675770 (= tp!846154 b_and!197843)))

(declare-fun bs!479768 () Bool)

(declare-fun b!2675775 () Bool)

(declare-fun b!2675784 () Bool)

(assert (= bs!479768 (and b!2675775 b!2675784)))

(declare-fun lambda!99962 () Int)

(declare-fun lambda!99961 () Int)

(assert (=> bs!479768 (not (= lambda!99962 lambda!99961))))

(declare-fun b!2675799 () Bool)

(declare-fun e!1686674 () Bool)

(assert (=> b!2675799 (= e!1686674 true)))

(declare-fun b!2675798 () Bool)

(declare-fun e!1686673 () Bool)

(assert (=> b!2675798 (= e!1686673 e!1686674)))

(declare-fun b!2675797 () Bool)

(declare-fun e!1686672 () Bool)

(assert (=> b!2675797 (= e!1686672 e!1686673)))

(assert (=> b!2675775 e!1686672))

(assert (= b!2675798 b!2675799))

(assert (= b!2675797 b!2675798))

(declare-datatypes ((List!30897 0))(
  ( (Nil!30797) (Cons!30797 (h!36217 (_ BitVec 16)) (t!223824 List!30897)) )
))
(declare-datatypes ((TokenValue!4927 0))(
  ( (FloatLiteralValue!9854 (text!34934 List!30897)) (TokenValueExt!4926 (__x!19687 Int)) (Broken!24635 (value!151671 List!30897)) (Object!5026) (End!4927) (Def!4927) (Underscore!4927) (Match!4927) (Else!4927) (Error!4927) (Case!4927) (If!4927) (Extends!4927) (Abstract!4927) (Class!4927) (Val!4927) (DelimiterValue!9854 (del!4987 List!30897)) (KeywordValue!4933 (value!151672 List!30897)) (CommentValue!9854 (value!151673 List!30897)) (WhitespaceValue!9854 (value!151674 List!30897)) (IndentationValue!4927 (value!151675 List!30897)) (String!34518) (Int32!4927) (Broken!24636 (value!151676 List!30897)) (Boolean!4928) (Unit!45010) (OperatorValue!4930 (op!4987 List!30897)) (IdentifierValue!9854 (value!151677 List!30897)) (IdentifierValue!9855 (value!151678 List!30897)) (WhitespaceValue!9855 (value!151679 List!30897)) (True!9854) (False!9854) (Broken!24637 (value!151680 List!30897)) (Broken!24638 (value!151681 List!30897)) (True!9855) (RightBrace!4927) (RightBracket!4927) (Colon!4927) (Null!4927) (Comma!4927) (LeftBracket!4927) (False!9855) (LeftBrace!4927) (ImaginaryLiteralValue!4927 (text!34935 List!30897)) (StringLiteralValue!14781 (value!151682 List!30897)) (EOFValue!4927 (value!151683 List!30897)) (IdentValue!4927 (value!151684 List!30897)) (DelimiterValue!9855 (value!151685 List!30897)) (DedentValue!4927 (value!151686 List!30897)) (NewLineValue!4927 (value!151687 List!30897)) (IntegerValue!14781 (value!151688 (_ BitVec 32)) (text!34936 List!30897)) (IntegerValue!14782 (value!151689 Int) (text!34937 List!30897)) (Times!4927) (Or!4927) (Equal!4927) (Minus!4927) (Broken!24639 (value!151690 List!30897)) (And!4927) (Div!4927) (LessEqual!4927) (Mod!4927) (Concat!12776) (Not!4927) (Plus!4927) (SpaceValue!4927 (value!151691 List!30897)) (IntegerValue!14783 (value!151692 Int) (text!34938 List!30897)) (StringLiteralValue!14782 (text!34939 List!30897)) (FloatLiteralValue!9855 (text!34940 List!30897)) (BytesLiteralValue!4927 (value!151693 List!30897)) (CommentValue!9855 (value!151694 List!30897)) (StringLiteralValue!14783 (value!151695 List!30897)) (ErrorTokenValue!4927 (msg!4988 List!30897)) )
))
(declare-datatypes ((C!15856 0))(
  ( (C!15857 (val!9862 Int)) )
))
(declare-datatypes ((List!30898 0))(
  ( (Nil!30798) (Cons!30798 (h!36218 C!15856) (t!223825 List!30898)) )
))
(declare-datatypes ((IArray!19285 0))(
  ( (IArray!19286 (innerList!9700 List!30898)) )
))
(declare-datatypes ((Conc!9640 0))(
  ( (Node!9640 (left!23840 Conc!9640) (right!24170 Conc!9640) (csize!19510 Int) (cheight!9851 Int)) (Leaf!14733 (xs!12670 IArray!19285) (csize!19511 Int)) (Empty!9640) )
))
(declare-datatypes ((BalanceConc!18894 0))(
  ( (BalanceConc!18895 (c!431108 Conc!9640)) )
))
(declare-datatypes ((String!34519 0))(
  ( (String!34520 (value!151696 String)) )
))
(declare-datatypes ((Regex!7849 0))(
  ( (ElementMatch!7849 (c!431109 C!15856)) (Concat!12777 (regOne!16210 Regex!7849) (regTwo!16210 Regex!7849)) (EmptyExpr!7849) (Star!7849 (reg!8178 Regex!7849)) (EmptyLang!7849) (Union!7849 (regOne!16211 Regex!7849) (regTwo!16211 Regex!7849)) )
))
(declare-datatypes ((TokenValueInjection!9294 0))(
  ( (TokenValueInjection!9295 (toValue!6651 Int) (toChars!6510 Int)) )
))
(declare-datatypes ((Rule!9210 0))(
  ( (Rule!9211 (regex!4705 Regex!7849) (tag!5207 String!34519) (isSeparator!4705 Bool) (transformation!4705 TokenValueInjection!9294)) )
))
(declare-datatypes ((List!30899 0))(
  ( (Nil!30799) (Cons!30799 (h!36219 Rule!9210) (t!223826 List!30899)) )
))
(declare-fun rules!1712 () List!30899)

(get-info :version)

(assert (= (and b!2675775 ((_ is Cons!30799) rules!1712)) b!2675797))

(declare-fun order!16987 () Int)

(declare-fun order!16989 () Int)

(declare-fun dynLambda!13382 (Int Int) Int)

(declare-fun dynLambda!13383 (Int Int) Int)

(assert (=> b!2675799 (< (dynLambda!13382 order!16987 (toValue!6651 (transformation!4705 (h!36219 rules!1712)))) (dynLambda!13383 order!16989 lambda!99962))))

(declare-fun order!16991 () Int)

(declare-fun dynLambda!13384 (Int Int) Int)

(assert (=> b!2675799 (< (dynLambda!13384 order!16991 (toChars!6510 (transformation!4705 (h!36219 rules!1712)))) (dynLambda!13383 order!16989 lambda!99962))))

(assert (=> b!2675775 true))

(declare-fun b!2675766 () Bool)

(declare-fun tp!846143 () Bool)

(declare-fun e!1686652 () Bool)

(declare-fun e!1686658 () Bool)

(declare-fun inv!41810 (String!34519) Bool)

(declare-fun inv!41813 (TokenValueInjection!9294) Bool)

(assert (=> b!2675766 (= e!1686652 (and tp!846143 (inv!41810 (tag!5207 (h!36219 rules!1712))) (inv!41813 (transformation!4705 (h!36219 rules!1712))) e!1686658))))

(declare-fun b!2675767 () Bool)

(declare-fun res!1124951 () Bool)

(declare-fun e!1686665 () Bool)

(assert (=> b!2675767 (=> res!1124951 e!1686665)))

(declare-datatypes ((LexerInterface!4302 0))(
  ( (LexerInterfaceExt!4299 (__x!19688 Int)) (Lexer!4300) )
))
(declare-fun thiss!14116 () LexerInterface!4302)

(declare-datatypes ((Token!8880 0))(
  ( (Token!8881 (value!151697 TokenValue!4927) (rule!7113 Rule!9210) (size!23799 Int) (originalCharacters!5471 List!30898)) )
))
(declare-datatypes ((List!30900 0))(
  ( (Nil!30800) (Cons!30800 (h!36220 Token!8880) (t!223827 List!30900)) )
))
(declare-fun l!4335 () List!30900)

(declare-fun rulesProduceIndividualToken!2014 (LexerInterface!4302 List!30899 Token!8880) Bool)

(assert (=> b!2675767 (= res!1124951 (not (rulesProduceIndividualToken!2014 thiss!14116 rules!1712 (h!36220 l!4335))))))

(declare-fun b!2675768 () Bool)

(declare-fun res!1124958 () Bool)

(declare-fun e!1686650 () Bool)

(assert (=> b!2675768 (=> (not res!1124958) (not e!1686650))))

(declare-fun rulesProduceEachTokenIndividuallyList!1524 (LexerInterface!4302 List!30899 List!30900) Bool)

(assert (=> b!2675768 (= res!1124958 (rulesProduceEachTokenIndividuallyList!1524 thiss!14116 rules!1712 l!4335))))

(declare-fun b!2675769 () Bool)

(declare-fun res!1124962 () Bool)

(assert (=> b!2675769 (=> (not res!1124962) (not e!1686650))))

(declare-fun separatorToken!152 () Token!8880)

(assert (=> b!2675769 (= res!1124962 (isSeparator!4705 (rule!7113 separatorToken!152)))))

(assert (=> b!2675770 (= e!1686658 (and tp!846147 tp!846154))))

(declare-fun res!1124956 () Bool)

(assert (=> start!260406 (=> (not res!1124956) (not e!1686650))))

(assert (=> start!260406 (= res!1124956 ((_ is Lexer!4300) thiss!14116))))

(assert (=> start!260406 e!1686650))

(assert (=> start!260406 true))

(declare-fun e!1686663 () Bool)

(assert (=> start!260406 e!1686663))

(declare-fun e!1686654 () Bool)

(assert (=> start!260406 e!1686654))

(declare-fun e!1686656 () Bool)

(declare-fun inv!41814 (Token!8880) Bool)

(assert (=> start!260406 (and (inv!41814 separatorToken!152) e!1686656)))

(declare-fun b!2675771 () Bool)

(declare-fun res!1124955 () Bool)

(assert (=> b!2675771 (=> (not res!1124955) (not e!1686650))))

(declare-fun rulesInvariant!3802 (LexerInterface!4302 List!30899) Bool)

(assert (=> b!2675771 (= res!1124955 (rulesInvariant!3802 thiss!14116 rules!1712))))

(declare-fun e!1686648 () Bool)

(declare-fun b!2675772 () Bool)

(declare-fun e!1686655 () Bool)

(declare-fun tp!846142 () Bool)

(assert (=> b!2675772 (= e!1686648 (and tp!846142 (inv!41810 (tag!5207 (rule!7113 (h!36220 l!4335)))) (inv!41813 (transformation!4705 (rule!7113 (h!36220 l!4335)))) e!1686655))))

(declare-fun b!2675773 () Bool)

(declare-fun res!1124957 () Bool)

(assert (=> b!2675773 (=> (not res!1124957) (not e!1686650))))

(declare-fun contains!5925 (List!30900 Token!8880) Bool)

(assert (=> b!2675773 (= res!1124957 (contains!5925 l!4335 (h!36220 l!4335)))))

(declare-fun b!2675774 () Bool)

(declare-fun res!1124954 () Bool)

(assert (=> b!2675774 (=> (not res!1124954) (not e!1686650))))

(assert (=> b!2675774 (= res!1124954 (rulesProduceIndividualToken!2014 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun e!1686653 () Bool)

(assert (=> b!2675775 (= e!1686650 e!1686653)))

(declare-fun res!1124963 () Bool)

(assert (=> b!2675775 (=> (not res!1124963) (not e!1686653))))

(declare-fun lt!942161 () Bool)

(declare-datatypes ((tuple2!30252 0))(
  ( (tuple2!30253 (_1!17668 Token!8880) (_2!17668 List!30898)) )
))
(declare-datatypes ((Option!6096 0))(
  ( (None!6095) (Some!6095 (v!32652 tuple2!30252)) )
))
(declare-fun lt!942159 () Option!6096)

(assert (=> b!2675775 (= res!1124963 (and (or lt!942161 (not (= (_1!17668 (v!32652 lt!942159)) (h!36220 l!4335)))) (or lt!942161 (= (_1!17668 (v!32652 lt!942159)) (h!36220 l!4335))) ((_ is None!6095) lt!942159)))))

(assert (=> b!2675775 (= lt!942161 (not ((_ is Some!6095) lt!942159)))))

(declare-fun lt!942160 () List!30898)

(declare-fun lt!942166 () List!30898)

(declare-fun maxPrefix!2340 (LexerInterface!4302 List!30899 List!30898) Option!6096)

(declare-fun ++!7517 (List!30898 List!30898) List!30898)

(assert (=> b!2675775 (= lt!942159 (maxPrefix!2340 thiss!14116 rules!1712 (++!7517 lt!942160 lt!942166)))))

(declare-fun list!11635 (BalanceConc!18894) List!30898)

(declare-fun charsOf!2968 (Token!8880) BalanceConc!18894)

(assert (=> b!2675775 (= lt!942160 (list!11635 (charsOf!2968 (h!36220 l!4335))))))

(declare-fun printWithSeparatorTokenWhenNeededList!696 (LexerInterface!4302 List!30899 List!30900 Token!8880) List!30898)

(assert (=> b!2675775 (= lt!942166 (printWithSeparatorTokenWhenNeededList!696 thiss!14116 rules!1712 (t!223827 l!4335) separatorToken!152))))

(declare-datatypes ((Unit!45011 0))(
  ( (Unit!45012) )
))
(declare-fun lt!942164 () Unit!45011)

(declare-fun forallContained!1045 (List!30900 Int Token!8880) Unit!45011)

(assert (=> b!2675775 (= lt!942164 (forallContained!1045 l!4335 lambda!99962 (h!36220 l!4335)))))

(assert (=> b!2675776 (= e!1686655 (and tp!846153 tp!846151))))

(declare-fun b!2675777 () Bool)

(declare-fun res!1124961 () Bool)

(assert (=> b!2675777 (=> (not res!1124961) (not e!1686650))))

(declare-fun sepAndNonSepRulesDisjointChars!1278 (List!30899 List!30899) Bool)

(assert (=> b!2675777 (= res!1124961 (sepAndNonSepRulesDisjointChars!1278 rules!1712 rules!1712))))

(declare-fun b!2675778 () Bool)

(declare-fun tp!846148 () Bool)

(declare-fun e!1686659 () Bool)

(declare-fun inv!21 (TokenValue!4927) Bool)

(assert (=> b!2675778 (= e!1686659 (and (inv!21 (value!151697 (h!36220 l!4335))) e!1686648 tp!846148))))

(declare-fun b!2675779 () Bool)

(declare-datatypes ((IArray!19287 0))(
  ( (IArray!19288 (innerList!9701 List!30900)) )
))
(declare-datatypes ((Conc!9641 0))(
  ( (Node!9641 (left!23841 Conc!9641) (right!24171 Conc!9641) (csize!19512 Int) (cheight!9852 Int)) (Leaf!14734 (xs!12671 IArray!19287) (csize!19513 Int)) (Empty!9641) )
))
(declare-datatypes ((BalanceConc!18896 0))(
  ( (BalanceConc!18897 (c!431110 Conc!9641)) )
))
(declare-fun isEmpty!17622 (BalanceConc!18896) Bool)

(declare-datatypes ((tuple2!30254 0))(
  ( (tuple2!30255 (_1!17669 BalanceConc!18896) (_2!17669 BalanceConc!18894)) )
))
(declare-fun lex!1937 (LexerInterface!4302 List!30899 BalanceConc!18894) tuple2!30254)

(declare-fun seqFromList!3207 (List!30898) BalanceConc!18894)

(assert (=> b!2675779 (= e!1686665 (not (isEmpty!17622 (_1!17669 (lex!1937 thiss!14116 rules!1712 (seqFromList!3207 lt!942160))))))))

(declare-fun b!2675780 () Bool)

(declare-fun tp!846149 () Bool)

(assert (=> b!2675780 (= e!1686663 (and e!1686652 tp!846149))))

(declare-fun b!2675781 () Bool)

(assert (=> b!2675781 (= e!1686653 (not e!1686665))))

(declare-fun res!1124960 () Bool)

(assert (=> b!2675781 (=> res!1124960 e!1686665)))

(declare-fun lt!942165 () List!30898)

(declare-fun lt!942162 () List!30898)

(assert (=> b!2675781 (= res!1124960 (or (not (= lt!942165 lt!942162)) (not (= lt!942162 lt!942160))))))

(declare-fun printList!1194 (LexerInterface!4302 List!30900) List!30898)

(assert (=> b!2675781 (= lt!942162 (printList!1194 thiss!14116 (Cons!30800 (h!36220 l!4335) Nil!30800)))))

(declare-fun lt!942158 () BalanceConc!18894)

(assert (=> b!2675781 (= lt!942165 (list!11635 lt!942158))))

(declare-fun lt!942163 () BalanceConc!18896)

(declare-fun printTailRec!1155 (LexerInterface!4302 BalanceConc!18896 Int BalanceConc!18894) BalanceConc!18894)

(assert (=> b!2675781 (= lt!942158 (printTailRec!1155 thiss!14116 lt!942163 0 (BalanceConc!18895 Empty!9640)))))

(declare-fun print!1681 (LexerInterface!4302 BalanceConc!18896) BalanceConc!18894)

(assert (=> b!2675781 (= lt!942158 (print!1681 thiss!14116 lt!942163))))

(declare-fun singletonSeq!2102 (Token!8880) BalanceConc!18896)

(assert (=> b!2675781 (= lt!942163 (singletonSeq!2102 (h!36220 l!4335)))))

(declare-fun tp!846146 () Bool)

(declare-fun b!2675782 () Bool)

(declare-fun e!1686660 () Bool)

(assert (=> b!2675782 (= e!1686656 (and (inv!21 (value!151697 separatorToken!152)) e!1686660 tp!846146))))

(declare-fun e!1686651 () Bool)

(assert (=> b!2675783 (= e!1686651 (and tp!846145 tp!846152))))

(declare-fun res!1124953 () Bool)

(assert (=> b!2675784 (=> (not res!1124953) (not e!1686650))))

(declare-fun forall!6522 (List!30900 Int) Bool)

(assert (=> b!2675784 (= res!1124953 (forall!6522 l!4335 lambda!99961))))

(declare-fun tp!846144 () Bool)

(declare-fun b!2675785 () Bool)

(assert (=> b!2675785 (= e!1686654 (and (inv!41814 (h!36220 l!4335)) e!1686659 tp!846144))))

(declare-fun tp!846150 () Bool)

(declare-fun b!2675786 () Bool)

(assert (=> b!2675786 (= e!1686660 (and tp!846150 (inv!41810 (tag!5207 (rule!7113 separatorToken!152))) (inv!41813 (transformation!4705 (rule!7113 separatorToken!152))) e!1686651))))

(declare-fun b!2675787 () Bool)

(declare-fun res!1124959 () Bool)

(assert (=> b!2675787 (=> (not res!1124959) (not e!1686650))))

(declare-fun isEmpty!17623 (List!30899) Bool)

(assert (=> b!2675787 (= res!1124959 (not (isEmpty!17623 rules!1712)))))

(declare-fun b!2675788 () Bool)

(declare-fun res!1124952 () Bool)

(assert (=> b!2675788 (=> (not res!1124952) (not e!1686650))))

(assert (=> b!2675788 (= res!1124952 ((_ is Cons!30800) l!4335))))

(assert (= (and start!260406 res!1124956) b!2675787))

(assert (= (and b!2675787 res!1124959) b!2675771))

(assert (= (and b!2675771 res!1124955) b!2675768))

(assert (= (and b!2675768 res!1124958) b!2675774))

(assert (= (and b!2675774 res!1124954) b!2675769))

(assert (= (and b!2675769 res!1124962) b!2675784))

(assert (= (and b!2675784 res!1124953) b!2675777))

(assert (= (and b!2675777 res!1124961) b!2675788))

(assert (= (and b!2675788 res!1124952) b!2675773))

(assert (= (and b!2675773 res!1124957) b!2675775))

(assert (= (and b!2675775 res!1124963) b!2675781))

(assert (= (and b!2675781 (not res!1124960)) b!2675767))

(assert (= (and b!2675767 (not res!1124951)) b!2675779))

(assert (= b!2675766 b!2675770))

(assert (= b!2675780 b!2675766))

(assert (= (and start!260406 ((_ is Cons!30799) rules!1712)) b!2675780))

(assert (= b!2675772 b!2675776))

(assert (= b!2675778 b!2675772))

(assert (= b!2675785 b!2675778))

(assert (= (and start!260406 ((_ is Cons!30800) l!4335)) b!2675785))

(assert (= b!2675786 b!2675783))

(assert (= b!2675782 b!2675786))

(assert (= start!260406 b!2675782))

(declare-fun m!3042271 () Bool)

(assert (=> b!2675786 m!3042271))

(declare-fun m!3042273 () Bool)

(assert (=> b!2675786 m!3042273))

(declare-fun m!3042275 () Bool)

(assert (=> b!2675785 m!3042275))

(declare-fun m!3042277 () Bool)

(assert (=> b!2675775 m!3042277))

(declare-fun m!3042279 () Bool)

(assert (=> b!2675775 m!3042279))

(assert (=> b!2675775 m!3042277))

(declare-fun m!3042281 () Bool)

(assert (=> b!2675775 m!3042281))

(declare-fun m!3042283 () Bool)

(assert (=> b!2675775 m!3042283))

(declare-fun m!3042285 () Bool)

(assert (=> b!2675775 m!3042285))

(assert (=> b!2675775 m!3042283))

(declare-fun m!3042287 () Bool)

(assert (=> b!2675775 m!3042287))

(declare-fun m!3042289 () Bool)

(assert (=> b!2675774 m!3042289))

(declare-fun m!3042291 () Bool)

(assert (=> b!2675767 m!3042291))

(declare-fun m!3042293 () Bool)

(assert (=> b!2675781 m!3042293))

(declare-fun m!3042295 () Bool)

(assert (=> b!2675781 m!3042295))

(declare-fun m!3042297 () Bool)

(assert (=> b!2675781 m!3042297))

(declare-fun m!3042299 () Bool)

(assert (=> b!2675781 m!3042299))

(declare-fun m!3042301 () Bool)

(assert (=> b!2675781 m!3042301))

(declare-fun m!3042303 () Bool)

(assert (=> b!2675773 m!3042303))

(declare-fun m!3042305 () Bool)

(assert (=> b!2675771 m!3042305))

(declare-fun m!3042307 () Bool)

(assert (=> b!2675766 m!3042307))

(declare-fun m!3042309 () Bool)

(assert (=> b!2675766 m!3042309))

(declare-fun m!3042311 () Bool)

(assert (=> b!2675778 m!3042311))

(declare-fun m!3042313 () Bool)

(assert (=> b!2675768 m!3042313))

(declare-fun m!3042315 () Bool)

(assert (=> b!2675777 m!3042315))

(declare-fun m!3042317 () Bool)

(assert (=> b!2675782 m!3042317))

(declare-fun m!3042319 () Bool)

(assert (=> b!2675784 m!3042319))

(declare-fun m!3042321 () Bool)

(assert (=> start!260406 m!3042321))

(declare-fun m!3042323 () Bool)

(assert (=> b!2675772 m!3042323))

(declare-fun m!3042325 () Bool)

(assert (=> b!2675772 m!3042325))

(declare-fun m!3042327 () Bool)

(assert (=> b!2675779 m!3042327))

(assert (=> b!2675779 m!3042327))

(declare-fun m!3042329 () Bool)

(assert (=> b!2675779 m!3042329))

(declare-fun m!3042331 () Bool)

(assert (=> b!2675779 m!3042331))

(declare-fun m!3042333 () Bool)

(assert (=> b!2675787 m!3042333))

(check-sat (not b_next!76145) (not b!2675778) b_and!197841 (not b!2675797) b_and!197837 (not b_next!76147) (not b!2675773) (not start!260406) (not b!2675771) (not b!2675777) (not b!2675775) (not b!2675787) b_and!197843 (not b!2675782) b_and!197839 (not b!2675772) (not b!2675767) (not b!2675786) (not b!2675766) (not b!2675784) (not b_next!76143) (not b_next!76139) (not b!2675780) (not b!2675774) b_and!197835 (not b_next!76141) b_and!197833 (not b!2675781) (not b!2675779) (not b!2675785) (not b_next!76137) (not b!2675768))
(check-sat b_and!197839 (not b_next!76145) b_and!197841 b_and!197837 (not b_next!76147) b_and!197835 b_and!197843 (not b_next!76137) (not b_next!76143) (not b_next!76139) (not b_next!76141) b_and!197833)
(get-model)

(declare-fun b!2675857 () Bool)

(declare-fun e!1686714 () Bool)

(declare-fun e!1686712 () Bool)

(assert (=> b!2675857 (= e!1686714 e!1686712)))

(declare-fun res!1125013 () Bool)

(assert (=> b!2675857 (=> (not res!1125013) (not e!1686712))))

(declare-fun lt!942180 () Option!6096)

(declare-fun isDefined!4843 (Option!6096) Bool)

(assert (=> b!2675857 (= res!1125013 (isDefined!4843 lt!942180))))

(declare-fun b!2675858 () Bool)

(declare-fun res!1125011 () Bool)

(assert (=> b!2675858 (=> (not res!1125011) (not e!1686712))))

(declare-fun get!9679 (Option!6096) tuple2!30252)

(assert (=> b!2675858 (= res!1125011 (= (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180)))) (originalCharacters!5471 (_1!17668 (get!9679 lt!942180)))))))

(declare-fun b!2675859 () Bool)

(declare-fun res!1125017 () Bool)

(assert (=> b!2675859 (=> (not res!1125017) (not e!1686712))))

(assert (=> b!2675859 (= res!1125017 (= (++!7517 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180)))) (_2!17668 (get!9679 lt!942180))) (++!7517 lt!942160 lt!942166)))))

(declare-fun b!2675860 () Bool)

(declare-fun contains!5926 (List!30899 Rule!9210) Bool)

(assert (=> b!2675860 (= e!1686712 (contains!5926 rules!1712 (rule!7113 (_1!17668 (get!9679 lt!942180)))))))

(declare-fun b!2675861 () Bool)

(declare-fun res!1125015 () Bool)

(assert (=> b!2675861 (=> (not res!1125015) (not e!1686712))))

(declare-fun size!23800 (List!30898) Int)

(assert (=> b!2675861 (= res!1125015 (< (size!23800 (_2!17668 (get!9679 lt!942180))) (size!23800 (++!7517 lt!942160 lt!942166))))))

(declare-fun d!764997 () Bool)

(assert (=> d!764997 e!1686714))

(declare-fun res!1125012 () Bool)

(assert (=> d!764997 (=> res!1125012 e!1686714)))

(declare-fun isEmpty!17624 (Option!6096) Bool)

(assert (=> d!764997 (= res!1125012 (isEmpty!17624 lt!942180))))

(declare-fun e!1686713 () Option!6096)

(assert (=> d!764997 (= lt!942180 e!1686713)))

(declare-fun c!431119 () Bool)

(assert (=> d!764997 (= c!431119 (and ((_ is Cons!30799) rules!1712) ((_ is Nil!30799) (t!223826 rules!1712))))))

(declare-fun lt!942183 () Unit!45011)

(declare-fun lt!942181 () Unit!45011)

(assert (=> d!764997 (= lt!942183 lt!942181)))

(declare-fun isPrefix!2458 (List!30898 List!30898) Bool)

(assert (=> d!764997 (isPrefix!2458 (++!7517 lt!942160 lt!942166) (++!7517 lt!942160 lt!942166))))

(declare-fun lemmaIsPrefixRefl!1584 (List!30898 List!30898) Unit!45011)

(assert (=> d!764997 (= lt!942181 (lemmaIsPrefixRefl!1584 (++!7517 lt!942160 lt!942166) (++!7517 lt!942160 lt!942166)))))

(declare-fun rulesValidInductive!1638 (LexerInterface!4302 List!30899) Bool)

(assert (=> d!764997 (rulesValidInductive!1638 thiss!14116 rules!1712)))

(assert (=> d!764997 (= (maxPrefix!2340 thiss!14116 rules!1712 (++!7517 lt!942160 lt!942166)) lt!942180)))

(declare-fun call!172621 () Option!6096)

(declare-fun bm!172616 () Bool)

(declare-fun maxPrefixOneRule!1487 (LexerInterface!4302 Rule!9210 List!30898) Option!6096)

(assert (=> bm!172616 (= call!172621 (maxPrefixOneRule!1487 thiss!14116 (h!36219 rules!1712) (++!7517 lt!942160 lt!942166)))))

(declare-fun b!2675862 () Bool)

(assert (=> b!2675862 (= e!1686713 call!172621)))

(declare-fun b!2675863 () Bool)

(declare-fun lt!942184 () Option!6096)

(declare-fun lt!942182 () Option!6096)

(assert (=> b!2675863 (= e!1686713 (ite (and ((_ is None!6095) lt!942184) ((_ is None!6095) lt!942182)) None!6095 (ite ((_ is None!6095) lt!942182) lt!942184 (ite ((_ is None!6095) lt!942184) lt!942182 (ite (>= (size!23799 (_1!17668 (v!32652 lt!942184))) (size!23799 (_1!17668 (v!32652 lt!942182)))) lt!942184 lt!942182)))))))

(assert (=> b!2675863 (= lt!942184 call!172621)))

(assert (=> b!2675863 (= lt!942182 (maxPrefix!2340 thiss!14116 (t!223826 rules!1712) (++!7517 lt!942160 lt!942166)))))

(declare-fun b!2675864 () Bool)

(declare-fun res!1125014 () Bool)

(assert (=> b!2675864 (=> (not res!1125014) (not e!1686712))))

(declare-fun apply!7387 (TokenValueInjection!9294 BalanceConc!18894) TokenValue!4927)

(assert (=> b!2675864 (= res!1125014 (= (value!151697 (_1!17668 (get!9679 lt!942180))) (apply!7387 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))) (seqFromList!3207 (originalCharacters!5471 (_1!17668 (get!9679 lt!942180)))))))))

(declare-fun b!2675865 () Bool)

(declare-fun res!1125016 () Bool)

(assert (=> b!2675865 (=> (not res!1125016) (not e!1686712))))

(declare-fun matchR!3629 (Regex!7849 List!30898) Bool)

(assert (=> b!2675865 (= res!1125016 (matchR!3629 (regex!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))) (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180))))))))

(assert (= (and d!764997 c!431119) b!2675862))

(assert (= (and d!764997 (not c!431119)) b!2675863))

(assert (= (or b!2675862 b!2675863) bm!172616))

(assert (= (and d!764997 (not res!1125012)) b!2675857))

(assert (= (and b!2675857 res!1125013) b!2675858))

(assert (= (and b!2675858 res!1125011) b!2675861))

(assert (= (and b!2675861 res!1125015) b!2675859))

(assert (= (and b!2675859 res!1125017) b!2675864))

(assert (= (and b!2675864 res!1125014) b!2675865))

(assert (= (and b!2675865 res!1125016) b!2675860))

(declare-fun m!3042363 () Bool)

(assert (=> d!764997 m!3042363))

(assert (=> d!764997 m!3042277))

(assert (=> d!764997 m!3042277))

(declare-fun m!3042365 () Bool)

(assert (=> d!764997 m!3042365))

(assert (=> d!764997 m!3042277))

(assert (=> d!764997 m!3042277))

(declare-fun m!3042367 () Bool)

(assert (=> d!764997 m!3042367))

(declare-fun m!3042369 () Bool)

(assert (=> d!764997 m!3042369))

(assert (=> bm!172616 m!3042277))

(declare-fun m!3042371 () Bool)

(assert (=> bm!172616 m!3042371))

(declare-fun m!3042373 () Bool)

(assert (=> b!2675859 m!3042373))

(declare-fun m!3042375 () Bool)

(assert (=> b!2675859 m!3042375))

(assert (=> b!2675859 m!3042375))

(declare-fun m!3042377 () Bool)

(assert (=> b!2675859 m!3042377))

(assert (=> b!2675859 m!3042377))

(declare-fun m!3042379 () Bool)

(assert (=> b!2675859 m!3042379))

(assert (=> b!2675860 m!3042373))

(declare-fun m!3042381 () Bool)

(assert (=> b!2675860 m!3042381))

(assert (=> b!2675861 m!3042373))

(declare-fun m!3042383 () Bool)

(assert (=> b!2675861 m!3042383))

(assert (=> b!2675861 m!3042277))

(declare-fun m!3042385 () Bool)

(assert (=> b!2675861 m!3042385))

(assert (=> b!2675858 m!3042373))

(assert (=> b!2675858 m!3042375))

(assert (=> b!2675858 m!3042375))

(assert (=> b!2675858 m!3042377))

(assert (=> b!2675864 m!3042373))

(declare-fun m!3042387 () Bool)

(assert (=> b!2675864 m!3042387))

(assert (=> b!2675864 m!3042387))

(declare-fun m!3042389 () Bool)

(assert (=> b!2675864 m!3042389))

(assert (=> b!2675865 m!3042373))

(assert (=> b!2675865 m!3042375))

(assert (=> b!2675865 m!3042375))

(assert (=> b!2675865 m!3042377))

(assert (=> b!2675865 m!3042377))

(declare-fun m!3042391 () Bool)

(assert (=> b!2675865 m!3042391))

(assert (=> b!2675863 m!3042277))

(declare-fun m!3042393 () Bool)

(assert (=> b!2675863 m!3042393))

(declare-fun m!3042395 () Bool)

(assert (=> b!2675857 m!3042395))

(assert (=> b!2675775 d!764997))

(declare-fun d!765007 () Bool)

(declare-fun list!11637 (Conc!9640) List!30898)

(assert (=> d!765007 (= (list!11635 (charsOf!2968 (h!36220 l!4335))) (list!11637 (c!431108 (charsOf!2968 (h!36220 l!4335)))))))

(declare-fun bs!479769 () Bool)

(assert (= bs!479769 d!765007))

(declare-fun m!3042397 () Bool)

(assert (=> bs!479769 m!3042397))

(assert (=> b!2675775 d!765007))

(declare-fun d!765009 () Bool)

(declare-fun dynLambda!13386 (Int Token!8880) Bool)

(assert (=> d!765009 (dynLambda!13386 lambda!99962 (h!36220 l!4335))))

(declare-fun lt!942187 () Unit!45011)

(declare-fun choose!15850 (List!30900 Int Token!8880) Unit!45011)

(assert (=> d!765009 (= lt!942187 (choose!15850 l!4335 lambda!99962 (h!36220 l!4335)))))

(declare-fun e!1686717 () Bool)

(assert (=> d!765009 e!1686717))

(declare-fun res!1125020 () Bool)

(assert (=> d!765009 (=> (not res!1125020) (not e!1686717))))

(assert (=> d!765009 (= res!1125020 (forall!6522 l!4335 lambda!99962))))

(assert (=> d!765009 (= (forallContained!1045 l!4335 lambda!99962 (h!36220 l!4335)) lt!942187)))

(declare-fun b!2675868 () Bool)

(assert (=> b!2675868 (= e!1686717 (contains!5925 l!4335 (h!36220 l!4335)))))

(assert (= (and d!765009 res!1125020) b!2675868))

(declare-fun b_lambda!81625 () Bool)

(assert (=> (not b_lambda!81625) (not d!765009)))

(declare-fun m!3042399 () Bool)

(assert (=> d!765009 m!3042399))

(declare-fun m!3042401 () Bool)

(assert (=> d!765009 m!3042401))

(declare-fun m!3042403 () Bool)

(assert (=> d!765009 m!3042403))

(assert (=> b!2675868 m!3042303))

(assert (=> b!2675775 d!765009))

(declare-fun bs!479772 () Bool)

(declare-fun b!2675898 () Bool)

(assert (= bs!479772 (and b!2675898 b!2675784)))

(declare-fun lambda!99968 () Int)

(assert (=> bs!479772 (not (= lambda!99968 lambda!99961))))

(declare-fun bs!479773 () Bool)

(assert (= bs!479773 (and b!2675898 b!2675775)))

(assert (=> bs!479773 (= lambda!99968 lambda!99962)))

(declare-fun b!2675907 () Bool)

(declare-fun e!1686744 () Bool)

(assert (=> b!2675907 (= e!1686744 true)))

(declare-fun b!2675906 () Bool)

(declare-fun e!1686743 () Bool)

(assert (=> b!2675906 (= e!1686743 e!1686744)))

(declare-fun b!2675905 () Bool)

(declare-fun e!1686742 () Bool)

(assert (=> b!2675905 (= e!1686742 e!1686743)))

(assert (=> b!2675898 e!1686742))

(assert (= b!2675906 b!2675907))

(assert (= b!2675905 b!2675906))

(assert (= (and b!2675898 ((_ is Cons!30799) rules!1712)) b!2675905))

(assert (=> b!2675907 (< (dynLambda!13382 order!16987 (toValue!6651 (transformation!4705 (h!36219 rules!1712)))) (dynLambda!13383 order!16989 lambda!99968))))

(assert (=> b!2675907 (< (dynLambda!13384 order!16991 (toChars!6510 (transformation!4705 (h!36219 rules!1712)))) (dynLambda!13383 order!16989 lambda!99968))))

(assert (=> b!2675898 true))

(declare-fun b!2675897 () Bool)

(declare-fun c!431128 () Bool)

(declare-fun lt!942207 () Option!6096)

(assert (=> b!2675897 (= c!431128 (and ((_ is Some!6095) lt!942207) (not (= (_1!17668 (v!32652 lt!942207)) (h!36220 (t!223827 l!4335))))))))

(declare-fun e!1686738 () List!30898)

(declare-fun e!1686739 () List!30898)

(assert (=> b!2675897 (= e!1686738 e!1686739)))

(declare-fun e!1686740 () List!30898)

(assert (=> b!2675898 (= e!1686740 e!1686738)))

(declare-fun lt!942205 () Unit!45011)

(assert (=> b!2675898 (= lt!942205 (forallContained!1045 (t!223827 l!4335) lambda!99968 (h!36220 (t!223827 l!4335))))))

(declare-fun lt!942203 () List!30898)

(assert (=> b!2675898 (= lt!942203 (printWithSeparatorTokenWhenNeededList!696 thiss!14116 rules!1712 (t!223827 (t!223827 l!4335)) separatorToken!152))))

(assert (=> b!2675898 (= lt!942207 (maxPrefix!2340 thiss!14116 rules!1712 (++!7517 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335)))) lt!942203)))))

(declare-fun c!431129 () Bool)

(assert (=> b!2675898 (= c!431129 (and ((_ is Some!6095) lt!942207) (= (_1!17668 (v!32652 lt!942207)) (h!36220 (t!223827 l!4335)))))))

(declare-fun bm!172627 () Bool)

(declare-fun call!172635 () BalanceConc!18894)

(declare-fun call!172636 () BalanceConc!18894)

(assert (=> bm!172627 (= call!172635 call!172636)))

(declare-fun call!172633 () List!30898)

(declare-fun bm!172628 () Bool)

(assert (=> bm!172628 (= call!172633 (list!11635 (ite c!431129 call!172636 call!172635)))))

(declare-fun b!2675900 () Bool)

(assert (=> b!2675900 (= e!1686740 Nil!30798)))

(declare-fun bm!172629 () Bool)

(declare-fun call!172632 () List!30898)

(declare-fun e!1686741 () BalanceConc!18894)

(assert (=> bm!172629 (= call!172632 (list!11635 e!1686741))))

(declare-fun c!431130 () Bool)

(assert (=> bm!172629 (= c!431130 c!431128)))

(declare-fun b!2675901 () Bool)

(assert (=> b!2675901 (= e!1686739 Nil!30798)))

(assert (=> b!2675901 (= (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 (t!223827 l!4335)))) (printTailRec!1155 thiss!14116 (singletonSeq!2102 (h!36220 (t!223827 l!4335))) 0 (BalanceConc!18895 Empty!9640)))))

(declare-fun lt!942204 () Unit!45011)

(declare-fun Unit!45013 () Unit!45011)

(assert (=> b!2675901 (= lt!942204 Unit!45013)))

(declare-fun lt!942206 () Unit!45011)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!822 (LexerInterface!4302 List!30899 List!30898 List!30898) Unit!45011)

(assert (=> b!2675901 (= lt!942206 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!822 thiss!14116 rules!1712 call!172632 lt!942203))))

(assert (=> b!2675901 false))

(declare-fun lt!942208 () Unit!45011)

(declare-fun Unit!45014 () Unit!45011)

(assert (=> b!2675901 (= lt!942208 Unit!45014)))

(declare-fun bm!172630 () Bool)

(assert (=> bm!172630 (= call!172636 (charsOf!2968 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335))))))))

(declare-fun b!2675902 () Bool)

(declare-fun call!172634 () List!30898)

(assert (=> b!2675902 (= e!1686738 call!172634)))

(declare-fun b!2675899 () Bool)

(assert (=> b!2675899 (= e!1686741 call!172635)))

(declare-fun d!765011 () Bool)

(declare-fun c!431131 () Bool)

(assert (=> d!765011 (= c!431131 ((_ is Cons!30800) (t!223827 l!4335)))))

(assert (=> d!765011 (= (printWithSeparatorTokenWhenNeededList!696 thiss!14116 rules!1712 (t!223827 l!4335) separatorToken!152) e!1686740)))

(declare-fun b!2675903 () Bool)

(assert (=> b!2675903 (= e!1686739 (++!7517 call!172634 lt!942203))))

(declare-fun b!2675904 () Bool)

(assert (=> b!2675904 (= e!1686741 (charsOf!2968 (h!36220 (t!223827 l!4335))))))

(declare-fun bm!172631 () Bool)

(assert (=> bm!172631 (= call!172634 (++!7517 (ite c!431129 call!172633 call!172632) (ite c!431129 lt!942203 call!172633)))))

(assert (= (and d!765011 c!431131) b!2675898))

(assert (= (and d!765011 (not c!431131)) b!2675900))

(assert (= (and b!2675898 c!431129) b!2675902))

(assert (= (and b!2675898 (not c!431129)) b!2675897))

(assert (= (and b!2675897 c!431128) b!2675903))

(assert (= (and b!2675897 (not c!431128)) b!2675901))

(assert (= (or b!2675903 b!2675901) bm!172627))

(assert (= (or b!2675903 b!2675901) bm!172629))

(assert (= (and bm!172629 c!431130) b!2675904))

(assert (= (and bm!172629 (not c!431130)) b!2675899))

(assert (= (or b!2675902 bm!172627) bm!172630))

(assert (= (or b!2675902 b!2675903) bm!172628))

(assert (= (or b!2675902 b!2675903) bm!172631))

(declare-fun m!3042413 () Bool)

(assert (=> bm!172629 m!3042413))

(declare-fun m!3042415 () Bool)

(assert (=> bm!172630 m!3042415))

(declare-fun m!3042417 () Bool)

(assert (=> b!2675901 m!3042417))

(assert (=> b!2675901 m!3042417))

(declare-fun m!3042419 () Bool)

(assert (=> b!2675901 m!3042419))

(assert (=> b!2675901 m!3042417))

(declare-fun m!3042421 () Bool)

(assert (=> b!2675901 m!3042421))

(declare-fun m!3042423 () Bool)

(assert (=> b!2675901 m!3042423))

(declare-fun m!3042425 () Bool)

(assert (=> b!2675903 m!3042425))

(declare-fun m!3042427 () Bool)

(assert (=> b!2675898 m!3042427))

(declare-fun m!3042429 () Bool)

(assert (=> b!2675898 m!3042429))

(assert (=> b!2675898 m!3042427))

(declare-fun m!3042431 () Bool)

(assert (=> b!2675898 m!3042431))

(declare-fun m!3042433 () Bool)

(assert (=> b!2675898 m!3042433))

(declare-fun m!3042435 () Bool)

(assert (=> b!2675898 m!3042435))

(declare-fun m!3042437 () Bool)

(assert (=> b!2675898 m!3042437))

(assert (=> b!2675898 m!3042431))

(assert (=> b!2675898 m!3042433))

(declare-fun m!3042439 () Bool)

(assert (=> bm!172631 m!3042439))

(declare-fun m!3042441 () Bool)

(assert (=> bm!172628 m!3042441))

(assert (=> b!2675904 m!3042427))

(assert (=> b!2675775 d!765011))

(declare-fun b!2675924 () Bool)

(declare-fun res!1125040 () Bool)

(declare-fun e!1686753 () Bool)

(assert (=> b!2675924 (=> (not res!1125040) (not e!1686753))))

(declare-fun lt!942215 () List!30898)

(assert (=> b!2675924 (= res!1125040 (= (size!23800 lt!942215) (+ (size!23800 lt!942160) (size!23800 lt!942166))))))

(declare-fun b!2675923 () Bool)

(declare-fun e!1686754 () List!30898)

(assert (=> b!2675923 (= e!1686754 (Cons!30798 (h!36218 lt!942160) (++!7517 (t!223825 lt!942160) lt!942166)))))

(declare-fun b!2675925 () Bool)

(assert (=> b!2675925 (= e!1686753 (or (not (= lt!942166 Nil!30798)) (= lt!942215 lt!942160)))))

(declare-fun b!2675922 () Bool)

(assert (=> b!2675922 (= e!1686754 lt!942166)))

(declare-fun d!765017 () Bool)

(assert (=> d!765017 e!1686753))

(declare-fun res!1125041 () Bool)

(assert (=> d!765017 (=> (not res!1125041) (not e!1686753))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4377 (List!30898) (InoxSet C!15856))

(assert (=> d!765017 (= res!1125041 (= (content!4377 lt!942215) ((_ map or) (content!4377 lt!942160) (content!4377 lt!942166))))))

(assert (=> d!765017 (= lt!942215 e!1686754)))

(declare-fun c!431134 () Bool)

(assert (=> d!765017 (= c!431134 ((_ is Nil!30798) lt!942160))))

(assert (=> d!765017 (= (++!7517 lt!942160 lt!942166) lt!942215)))

(assert (= (and d!765017 c!431134) b!2675922))

(assert (= (and d!765017 (not c!431134)) b!2675923))

(assert (= (and d!765017 res!1125041) b!2675924))

(assert (= (and b!2675924 res!1125040) b!2675925))

(declare-fun m!3042443 () Bool)

(assert (=> b!2675924 m!3042443))

(declare-fun m!3042445 () Bool)

(assert (=> b!2675924 m!3042445))

(declare-fun m!3042447 () Bool)

(assert (=> b!2675924 m!3042447))

(declare-fun m!3042449 () Bool)

(assert (=> b!2675923 m!3042449))

(declare-fun m!3042451 () Bool)

(assert (=> d!765017 m!3042451))

(declare-fun m!3042453 () Bool)

(assert (=> d!765017 m!3042453))

(declare-fun m!3042455 () Bool)

(assert (=> d!765017 m!3042455))

(assert (=> b!2675775 d!765017))

(declare-fun d!765019 () Bool)

(declare-fun lt!942220 () BalanceConc!18894)

(assert (=> d!765019 (= (list!11635 lt!942220) (originalCharacters!5471 (h!36220 l!4335)))))

(declare-fun dynLambda!13388 (Int TokenValue!4927) BalanceConc!18894)

(assert (=> d!765019 (= lt!942220 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335))))))

(assert (=> d!765019 (= (charsOf!2968 (h!36220 l!4335)) lt!942220)))

(declare-fun b_lambda!81627 () Bool)

(assert (=> (not b_lambda!81627) (not d!765019)))

(declare-fun t!223834 () Bool)

(declare-fun tb!150073 () Bool)

(assert (=> (and b!2675776 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335))))) t!223834) tb!150073))

(declare-fun b!2675933 () Bool)

(declare-fun e!1686759 () Bool)

(declare-fun tp!846157 () Bool)

(declare-fun inv!41817 (Conc!9640) Bool)

(assert (=> b!2675933 (= e!1686759 (and (inv!41817 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335))))) tp!846157))))

(declare-fun result!185364 () Bool)

(declare-fun inv!41818 (BalanceConc!18894) Bool)

(assert (=> tb!150073 (= result!185364 (and (inv!41818 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335)))) e!1686759))))

(assert (= tb!150073 b!2675933))

(declare-fun m!3042473 () Bool)

(assert (=> b!2675933 m!3042473))

(declare-fun m!3042475 () Bool)

(assert (=> tb!150073 m!3042475))

(assert (=> d!765019 t!223834))

(declare-fun b_and!197845 () Bool)

(assert (= b_and!197835 (and (=> t!223834 result!185364) b_and!197845)))

(declare-fun t!223836 () Bool)

(declare-fun tb!150075 () Bool)

(assert (=> (and b!2675783 (= (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335))))) t!223836) tb!150075))

(declare-fun result!185368 () Bool)

(assert (= result!185368 result!185364))

(assert (=> d!765019 t!223836))

(declare-fun b_and!197847 () Bool)

(assert (= b_and!197839 (and (=> t!223836 result!185368) b_and!197847)))

(declare-fun t!223838 () Bool)

(declare-fun tb!150077 () Bool)

(assert (=> (and b!2675770 (= (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335))))) t!223838) tb!150077))

(declare-fun result!185370 () Bool)

(assert (= result!185370 result!185364))

(assert (=> d!765019 t!223838))

(declare-fun b_and!197849 () Bool)

(assert (= b_and!197843 (and (=> t!223838 result!185370) b_and!197849)))

(declare-fun m!3042477 () Bool)

(assert (=> d!765019 m!3042477))

(declare-fun m!3042479 () Bool)

(assert (=> d!765019 m!3042479))

(assert (=> b!2675775 d!765019))

(declare-fun d!765023 () Bool)

(assert (=> d!765023 (= (inv!41810 (tag!5207 (rule!7113 separatorToken!152))) (= (mod (str.len (value!151696 (tag!5207 (rule!7113 separatorToken!152)))) 2) 0))))

(assert (=> b!2675786 d!765023))

(declare-fun d!765025 () Bool)

(declare-fun res!1125053 () Bool)

(declare-fun e!1686767 () Bool)

(assert (=> d!765025 (=> (not res!1125053) (not e!1686767))))

(declare-fun semiInverseModEq!1950 (Int Int) Bool)

(assert (=> d!765025 (= res!1125053 (semiInverseModEq!1950 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (toValue!6651 (transformation!4705 (rule!7113 separatorToken!152)))))))

(assert (=> d!765025 (= (inv!41813 (transformation!4705 (rule!7113 separatorToken!152))) e!1686767)))

(declare-fun b!2675946 () Bool)

(declare-fun equivClasses!1851 (Int Int) Bool)

(assert (=> b!2675946 (= e!1686767 (equivClasses!1851 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (toValue!6651 (transformation!4705 (rule!7113 separatorToken!152)))))))

(assert (= (and d!765025 res!1125053) b!2675946))

(declare-fun m!3042481 () Bool)

(assert (=> d!765025 m!3042481))

(declare-fun m!3042483 () Bool)

(assert (=> b!2675946 m!3042483))

(assert (=> b!2675786 d!765025))

(declare-fun d!765027 () Bool)

(declare-fun res!1125060 () Bool)

(declare-fun e!1686775 () Bool)

(assert (=> d!765027 (=> res!1125060 e!1686775)))

(assert (=> d!765027 (= res!1125060 (not ((_ is Cons!30799) rules!1712)))))

(assert (=> d!765027 (= (sepAndNonSepRulesDisjointChars!1278 rules!1712 rules!1712) e!1686775)))

(declare-fun b!2675955 () Bool)

(declare-fun e!1686776 () Bool)

(assert (=> b!2675955 (= e!1686775 e!1686776)))

(declare-fun res!1125061 () Bool)

(assert (=> b!2675955 (=> (not res!1125061) (not e!1686776))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!557 (Rule!9210 List!30899) Bool)

(assert (=> b!2675955 (= res!1125061 (ruleDisjointCharsFromAllFromOtherType!557 (h!36219 rules!1712) rules!1712))))

(declare-fun b!2675956 () Bool)

(assert (=> b!2675956 (= e!1686776 (sepAndNonSepRulesDisjointChars!1278 rules!1712 (t!223826 rules!1712)))))

(assert (= (and d!765027 (not res!1125060)) b!2675955))

(assert (= (and b!2675955 res!1125061) b!2675956))

(declare-fun m!3042509 () Bool)

(assert (=> b!2675955 m!3042509))

(declare-fun m!3042511 () Bool)

(assert (=> b!2675956 m!3042511))

(assert (=> b!2675777 d!765027))

(declare-fun d!765033 () Bool)

(assert (=> d!765033 (= (isEmpty!17623 rules!1712) ((_ is Nil!30799) rules!1712))))

(assert (=> b!2675787 d!765033))

(declare-fun d!765035 () Bool)

(assert (=> d!765035 (= (inv!41810 (tag!5207 (h!36219 rules!1712))) (= (mod (str.len (value!151696 (tag!5207 (h!36219 rules!1712)))) 2) 0))))

(assert (=> b!2675766 d!765035))

(declare-fun d!765037 () Bool)

(declare-fun res!1125062 () Bool)

(declare-fun e!1686777 () Bool)

(assert (=> d!765037 (=> (not res!1125062) (not e!1686777))))

(assert (=> d!765037 (= res!1125062 (semiInverseModEq!1950 (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toValue!6651 (transformation!4705 (h!36219 rules!1712)))))))

(assert (=> d!765037 (= (inv!41813 (transformation!4705 (h!36219 rules!1712))) e!1686777)))

(declare-fun b!2675957 () Bool)

(assert (=> b!2675957 (= e!1686777 (equivClasses!1851 (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toValue!6651 (transformation!4705 (h!36219 rules!1712)))))))

(assert (= (and d!765037 res!1125062) b!2675957))

(declare-fun m!3042519 () Bool)

(assert (=> d!765037 m!3042519))

(declare-fun m!3042521 () Bool)

(assert (=> b!2675957 m!3042521))

(assert (=> b!2675766 d!765037))

(declare-fun bs!479776 () Bool)

(declare-fun d!765041 () Bool)

(assert (= bs!479776 (and d!765041 b!2675784)))

(declare-fun lambda!99971 () Int)

(assert (=> bs!479776 (not (= lambda!99971 lambda!99961))))

(declare-fun bs!479777 () Bool)

(assert (= bs!479777 (and d!765041 b!2675775)))

(assert (=> bs!479777 (= lambda!99971 lambda!99962)))

(declare-fun bs!479778 () Bool)

(assert (= bs!479778 (and d!765041 b!2675898)))

(assert (=> bs!479778 (= lambda!99971 lambda!99968)))

(declare-fun b!2675986 () Bool)

(declare-fun e!1686799 () Bool)

(assert (=> b!2675986 (= e!1686799 true)))

(declare-fun b!2675985 () Bool)

(declare-fun e!1686798 () Bool)

(assert (=> b!2675985 (= e!1686798 e!1686799)))

(declare-fun b!2675984 () Bool)

(declare-fun e!1686797 () Bool)

(assert (=> b!2675984 (= e!1686797 e!1686798)))

(assert (=> d!765041 e!1686797))

(assert (= b!2675985 b!2675986))

(assert (= b!2675984 b!2675985))

(assert (= (and d!765041 ((_ is Cons!30799) rules!1712)) b!2675984))

(assert (=> b!2675986 (< (dynLambda!13382 order!16987 (toValue!6651 (transformation!4705 (h!36219 rules!1712)))) (dynLambda!13383 order!16989 lambda!99971))))

(assert (=> b!2675986 (< (dynLambda!13384 order!16991 (toChars!6510 (transformation!4705 (h!36219 rules!1712)))) (dynLambda!13383 order!16989 lambda!99971))))

(assert (=> d!765041 true))

(declare-fun lt!942236 () Bool)

(assert (=> d!765041 (= lt!942236 (forall!6522 l!4335 lambda!99971))))

(declare-fun e!1686796 () Bool)

(assert (=> d!765041 (= lt!942236 e!1686796)))

(declare-fun res!1125082 () Bool)

(assert (=> d!765041 (=> res!1125082 e!1686796)))

(assert (=> d!765041 (= res!1125082 (not ((_ is Cons!30800) l!4335)))))

(assert (=> d!765041 (not (isEmpty!17623 rules!1712))))

(assert (=> d!765041 (= (rulesProduceEachTokenIndividuallyList!1524 thiss!14116 rules!1712 l!4335) lt!942236)))

(declare-fun b!2675982 () Bool)

(declare-fun e!1686795 () Bool)

(assert (=> b!2675982 (= e!1686796 e!1686795)))

(declare-fun res!1125081 () Bool)

(assert (=> b!2675982 (=> (not res!1125081) (not e!1686795))))

(assert (=> b!2675982 (= res!1125081 (rulesProduceIndividualToken!2014 thiss!14116 rules!1712 (h!36220 l!4335)))))

(declare-fun b!2675983 () Bool)

(assert (=> b!2675983 (= e!1686795 (rulesProduceEachTokenIndividuallyList!1524 thiss!14116 rules!1712 (t!223827 l!4335)))))

(assert (= (and d!765041 (not res!1125082)) b!2675982))

(assert (= (and b!2675982 res!1125081) b!2675983))

(declare-fun m!3042569 () Bool)

(assert (=> d!765041 m!3042569))

(assert (=> d!765041 m!3042333))

(assert (=> b!2675982 m!3042291))

(declare-fun m!3042571 () Bool)

(assert (=> b!2675983 m!3042571))

(assert (=> b!2675768 d!765041))

(declare-fun d!765053 () Bool)

(declare-fun res!1125088 () Bool)

(declare-fun e!1686803 () Bool)

(assert (=> d!765053 (=> (not res!1125088) (not e!1686803))))

(declare-fun isEmpty!17629 (List!30898) Bool)

(assert (=> d!765053 (= res!1125088 (not (isEmpty!17629 (originalCharacters!5471 separatorToken!152))))))

(assert (=> d!765053 (= (inv!41814 separatorToken!152) e!1686803)))

(declare-fun b!2675992 () Bool)

(declare-fun res!1125089 () Bool)

(assert (=> b!2675992 (=> (not res!1125089) (not e!1686803))))

(assert (=> b!2675992 (= res!1125089 (= (originalCharacters!5471 separatorToken!152) (list!11635 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152)))))))

(declare-fun b!2675993 () Bool)

(assert (=> b!2675993 (= e!1686803 (= (size!23799 separatorToken!152) (size!23800 (originalCharacters!5471 separatorToken!152))))))

(assert (= (and d!765053 res!1125088) b!2675992))

(assert (= (and b!2675992 res!1125089) b!2675993))

(declare-fun b_lambda!81637 () Bool)

(assert (=> (not b_lambda!81637) (not b!2675992)))

(declare-fun tb!150091 () Bool)

(declare-fun t!223854 () Bool)

(assert (=> (and b!2675776 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152)))) t!223854) tb!150091))

(declare-fun b!2675998 () Bool)

(declare-fun e!1686806 () Bool)

(declare-fun tp!846162 () Bool)

(assert (=> b!2675998 (= e!1686806 (and (inv!41817 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152)))) tp!846162))))

(declare-fun result!185386 () Bool)

(assert (=> tb!150091 (= result!185386 (and (inv!41818 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152))) e!1686806))))

(assert (= tb!150091 b!2675998))

(declare-fun m!3042575 () Bool)

(assert (=> b!2675998 m!3042575))

(declare-fun m!3042577 () Bool)

(assert (=> tb!150091 m!3042577))

(assert (=> b!2675992 t!223854))

(declare-fun b_and!197869 () Bool)

(assert (= b_and!197845 (and (=> t!223854 result!185386) b_and!197869)))

(declare-fun t!223856 () Bool)

(declare-fun tb!150093 () Bool)

(assert (=> (and b!2675783 (= (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152)))) t!223856) tb!150093))

(declare-fun result!185388 () Bool)

(assert (= result!185388 result!185386))

(assert (=> b!2675992 t!223856))

(declare-fun b_and!197871 () Bool)

(assert (= b_and!197847 (and (=> t!223856 result!185388) b_and!197871)))

(declare-fun tb!150095 () Bool)

(declare-fun t!223858 () Bool)

(assert (=> (and b!2675770 (= (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152)))) t!223858) tb!150095))

(declare-fun result!185390 () Bool)

(assert (= result!185390 result!185386))

(assert (=> b!2675992 t!223858))

(declare-fun b_and!197873 () Bool)

(assert (= b_and!197849 (and (=> t!223858 result!185390) b_and!197873)))

(declare-fun m!3042579 () Bool)

(assert (=> d!765053 m!3042579))

(declare-fun m!3042581 () Bool)

(assert (=> b!2675992 m!3042581))

(assert (=> b!2675992 m!3042581))

(declare-fun m!3042583 () Bool)

(assert (=> b!2675992 m!3042583))

(declare-fun m!3042585 () Bool)

(assert (=> b!2675993 m!3042585))

(assert (=> start!260406 d!765053))

(declare-fun d!765057 () Bool)

(declare-fun lt!942246 () Bool)

(declare-fun e!1686816 () Bool)

(assert (=> d!765057 (= lt!942246 e!1686816)))

(declare-fun res!1125102 () Bool)

(assert (=> d!765057 (=> (not res!1125102) (not e!1686816))))

(declare-fun list!11639 (BalanceConc!18896) List!30900)

(assert (=> d!765057 (= res!1125102 (= (list!11639 (_1!17669 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335)))))) (list!11639 (singletonSeq!2102 (h!36220 l!4335)))))))

(declare-fun e!1686815 () Bool)

(assert (=> d!765057 (= lt!942246 e!1686815)))

(declare-fun res!1125104 () Bool)

(assert (=> d!765057 (=> (not res!1125104) (not e!1686815))))

(declare-fun lt!942245 () tuple2!30254)

(declare-fun size!23804 (BalanceConc!18896) Int)

(assert (=> d!765057 (= res!1125104 (= (size!23804 (_1!17669 lt!942245)) 1))))

(assert (=> d!765057 (= lt!942245 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335)))))))

(assert (=> d!765057 (not (isEmpty!17623 rules!1712))))

(assert (=> d!765057 (= (rulesProduceIndividualToken!2014 thiss!14116 rules!1712 (h!36220 l!4335)) lt!942246)))

(declare-fun b!2676013 () Bool)

(declare-fun res!1125103 () Bool)

(assert (=> b!2676013 (=> (not res!1125103) (not e!1686815))))

(declare-fun apply!7389 (BalanceConc!18896 Int) Token!8880)

(assert (=> b!2676013 (= res!1125103 (= (apply!7389 (_1!17669 lt!942245) 0) (h!36220 l!4335)))))

(declare-fun b!2676014 () Bool)

(declare-fun isEmpty!17630 (BalanceConc!18894) Bool)

(assert (=> b!2676014 (= e!1686815 (isEmpty!17630 (_2!17669 lt!942245)))))

(declare-fun b!2676015 () Bool)

(assert (=> b!2676015 (= e!1686816 (isEmpty!17630 (_2!17669 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335)))))))))

(assert (= (and d!765057 res!1125104) b!2676013))

(assert (= (and b!2676013 res!1125103) b!2676014))

(assert (= (and d!765057 res!1125102) b!2676015))

(declare-fun m!3042601 () Bool)

(assert (=> d!765057 m!3042601))

(assert (=> d!765057 m!3042299))

(assert (=> d!765057 m!3042299))

(declare-fun m!3042603 () Bool)

(assert (=> d!765057 m!3042603))

(declare-fun m!3042605 () Bool)

(assert (=> d!765057 m!3042605))

(declare-fun m!3042607 () Bool)

(assert (=> d!765057 m!3042607))

(declare-fun m!3042609 () Bool)

(assert (=> d!765057 m!3042609))

(assert (=> d!765057 m!3042333))

(assert (=> d!765057 m!3042299))

(assert (=> d!765057 m!3042607))

(declare-fun m!3042611 () Bool)

(assert (=> b!2676013 m!3042611))

(declare-fun m!3042613 () Bool)

(assert (=> b!2676014 m!3042613))

(assert (=> b!2676015 m!3042299))

(assert (=> b!2676015 m!3042299))

(assert (=> b!2676015 m!3042607))

(assert (=> b!2676015 m!3042607))

(assert (=> b!2676015 m!3042609))

(declare-fun m!3042615 () Bool)

(assert (=> b!2676015 m!3042615))

(assert (=> b!2675767 d!765057))

(declare-fun b!2676026 () Bool)

(declare-fun e!1686823 () Bool)

(declare-fun inv!16 (TokenValue!4927) Bool)

(assert (=> b!2676026 (= e!1686823 (inv!16 (value!151697 (h!36220 l!4335))))))

(declare-fun b!2676027 () Bool)

(declare-fun e!1686824 () Bool)

(declare-fun inv!17 (TokenValue!4927) Bool)

(assert (=> b!2676027 (= e!1686824 (inv!17 (value!151697 (h!36220 l!4335))))))

(declare-fun b!2676028 () Bool)

(assert (=> b!2676028 (= e!1686823 e!1686824)))

(declare-fun c!431145 () Bool)

(assert (=> b!2676028 (= c!431145 ((_ is IntegerValue!14782) (value!151697 (h!36220 l!4335))))))

(declare-fun b!2676029 () Bool)

(declare-fun e!1686825 () Bool)

(declare-fun inv!15 (TokenValue!4927) Bool)

(assert (=> b!2676029 (= e!1686825 (inv!15 (value!151697 (h!36220 l!4335))))))

(declare-fun b!2676030 () Bool)

(declare-fun res!1125107 () Bool)

(assert (=> b!2676030 (=> res!1125107 e!1686825)))

(assert (=> b!2676030 (= res!1125107 (not ((_ is IntegerValue!14783) (value!151697 (h!36220 l!4335)))))))

(assert (=> b!2676030 (= e!1686824 e!1686825)))

(declare-fun d!765061 () Bool)

(declare-fun c!431146 () Bool)

(assert (=> d!765061 (= c!431146 ((_ is IntegerValue!14781) (value!151697 (h!36220 l!4335))))))

(assert (=> d!765061 (= (inv!21 (value!151697 (h!36220 l!4335))) e!1686823)))

(assert (= (and d!765061 c!431146) b!2676026))

(assert (= (and d!765061 (not c!431146)) b!2676028))

(assert (= (and b!2676028 c!431145) b!2676027))

(assert (= (and b!2676028 (not c!431145)) b!2676030))

(assert (= (and b!2676030 (not res!1125107)) b!2676029))

(declare-fun m!3042617 () Bool)

(assert (=> b!2676026 m!3042617))

(declare-fun m!3042619 () Bool)

(assert (=> b!2676027 m!3042619))

(declare-fun m!3042621 () Bool)

(assert (=> b!2676029 m!3042621))

(assert (=> b!2675778 d!765061))

(declare-fun d!765063 () Bool)

(declare-fun lt!942249 () Bool)

(declare-fun isEmpty!17632 (List!30900) Bool)

(assert (=> d!765063 (= lt!942249 (isEmpty!17632 (list!11639 (_1!17669 (lex!1937 thiss!14116 rules!1712 (seqFromList!3207 lt!942160))))))))

(declare-fun isEmpty!17633 (Conc!9641) Bool)

(assert (=> d!765063 (= lt!942249 (isEmpty!17633 (c!431110 (_1!17669 (lex!1937 thiss!14116 rules!1712 (seqFromList!3207 lt!942160))))))))

(assert (=> d!765063 (= (isEmpty!17622 (_1!17669 (lex!1937 thiss!14116 rules!1712 (seqFromList!3207 lt!942160)))) lt!942249)))

(declare-fun bs!479780 () Bool)

(assert (= bs!479780 d!765063))

(declare-fun m!3042623 () Bool)

(assert (=> bs!479780 m!3042623))

(assert (=> bs!479780 m!3042623))

(declare-fun m!3042625 () Bool)

(assert (=> bs!479780 m!3042625))

(declare-fun m!3042627 () Bool)

(assert (=> bs!479780 m!3042627))

(assert (=> b!2675779 d!765063))

(declare-fun b!2676096 () Bool)

(declare-fun e!1686861 () Bool)

(declare-fun lt!942284 () tuple2!30254)

(assert (=> b!2676096 (= e!1686861 (= (_2!17669 lt!942284) (seqFromList!3207 lt!942160)))))

(declare-fun d!765065 () Bool)

(declare-fun e!1686859 () Bool)

(assert (=> d!765065 e!1686859))

(declare-fun res!1125134 () Bool)

(assert (=> d!765065 (=> (not res!1125134) (not e!1686859))))

(assert (=> d!765065 (= res!1125134 e!1686861)))

(declare-fun c!431167 () Bool)

(assert (=> d!765065 (= c!431167 (> (size!23804 (_1!17669 lt!942284)) 0))))

(declare-fun lexTailRecV2!851 (LexerInterface!4302 List!30899 BalanceConc!18894 BalanceConc!18894 BalanceConc!18894 BalanceConc!18896) tuple2!30254)

(assert (=> d!765065 (= lt!942284 (lexTailRecV2!851 thiss!14116 rules!1712 (seqFromList!3207 lt!942160) (BalanceConc!18895 Empty!9640) (seqFromList!3207 lt!942160) (BalanceConc!18897 Empty!9641)))))

(assert (=> d!765065 (= (lex!1937 thiss!14116 rules!1712 (seqFromList!3207 lt!942160)) lt!942284)))

(declare-fun b!2676098 () Bool)

(declare-fun res!1125137 () Bool)

(assert (=> b!2676098 (=> (not res!1125137) (not e!1686859))))

(declare-datatypes ((tuple2!30258 0))(
  ( (tuple2!30259 (_1!17671 List!30900) (_2!17671 List!30898)) )
))
(declare-fun lexList!1176 (LexerInterface!4302 List!30899 List!30898) tuple2!30258)

(assert (=> b!2676098 (= res!1125137 (= (list!11639 (_1!17669 lt!942284)) (_1!17671 (lexList!1176 thiss!14116 rules!1712 (list!11635 (seqFromList!3207 lt!942160))))))))

(declare-fun b!2676100 () Bool)

(declare-fun e!1686860 () Bool)

(assert (=> b!2676100 (= e!1686861 e!1686860)))

(declare-fun res!1125136 () Bool)

(declare-fun size!23805 (BalanceConc!18894) Int)

(assert (=> b!2676100 (= res!1125136 (< (size!23805 (_2!17669 lt!942284)) (size!23805 (seqFromList!3207 lt!942160))))))

(assert (=> b!2676100 (=> (not res!1125136) (not e!1686860))))

(declare-fun b!2676102 () Bool)

(assert (=> b!2676102 (= e!1686859 (= (list!11635 (_2!17669 lt!942284)) (_2!17671 (lexList!1176 thiss!14116 rules!1712 (list!11635 (seqFromList!3207 lt!942160))))))))

(declare-fun b!2676104 () Bool)

(assert (=> b!2676104 (= e!1686860 (not (isEmpty!17622 (_1!17669 lt!942284))))))

(assert (= (and d!765065 c!431167) b!2676100))

(assert (= (and d!765065 (not c!431167)) b!2676096))

(assert (= (and b!2676100 res!1125136) b!2676104))

(assert (= (and d!765065 res!1125134) b!2676098))

(assert (= (and b!2676098 res!1125137) b!2676102))

(declare-fun m!3042659 () Bool)

(assert (=> b!2676100 m!3042659))

(assert (=> b!2676100 m!3042327))

(declare-fun m!3042661 () Bool)

(assert (=> b!2676100 m!3042661))

(declare-fun m!3042663 () Bool)

(assert (=> b!2676098 m!3042663))

(assert (=> b!2676098 m!3042327))

(declare-fun m!3042665 () Bool)

(assert (=> b!2676098 m!3042665))

(assert (=> b!2676098 m!3042665))

(declare-fun m!3042667 () Bool)

(assert (=> b!2676098 m!3042667))

(declare-fun m!3042669 () Bool)

(assert (=> d!765065 m!3042669))

(assert (=> d!765065 m!3042327))

(assert (=> d!765065 m!3042327))

(declare-fun m!3042671 () Bool)

(assert (=> d!765065 m!3042671))

(declare-fun m!3042673 () Bool)

(assert (=> b!2676102 m!3042673))

(assert (=> b!2676102 m!3042327))

(assert (=> b!2676102 m!3042665))

(assert (=> b!2676102 m!3042665))

(assert (=> b!2676102 m!3042667))

(declare-fun m!3042675 () Bool)

(assert (=> b!2676104 m!3042675))

(assert (=> b!2675779 d!765065))

(declare-fun d!765069 () Bool)

(declare-fun fromListB!1449 (List!30898) BalanceConc!18894)

(assert (=> d!765069 (= (seqFromList!3207 lt!942160) (fromListB!1449 lt!942160))))

(declare-fun bs!479784 () Bool)

(assert (= bs!479784 d!765069))

(declare-fun m!3042703 () Bool)

(assert (=> bs!479784 m!3042703))

(assert (=> b!2675779 d!765069))

(declare-fun d!765071 () Bool)

(declare-fun lt!942318 () BalanceConc!18894)

(declare-fun printListTailRec!527 (LexerInterface!4302 List!30900 List!30898) List!30898)

(declare-fun dropList!976 (BalanceConc!18896 Int) List!30900)

(assert (=> d!765071 (= (list!11635 lt!942318) (printListTailRec!527 thiss!14116 (dropList!976 lt!942163 0) (list!11635 (BalanceConc!18895 Empty!9640))))))

(declare-fun e!1686871 () BalanceConc!18894)

(assert (=> d!765071 (= lt!942318 e!1686871)))

(declare-fun c!431172 () Bool)

(assert (=> d!765071 (= c!431172 (>= 0 (size!23804 lt!942163)))))

(declare-fun e!1686870 () Bool)

(assert (=> d!765071 e!1686870))

(declare-fun res!1125142 () Bool)

(assert (=> d!765071 (=> (not res!1125142) (not e!1686870))))

(assert (=> d!765071 (= res!1125142 (>= 0 0))))

(assert (=> d!765071 (= (printTailRec!1155 thiss!14116 lt!942163 0 (BalanceConc!18895 Empty!9640)) lt!942318)))

(declare-fun b!2676118 () Bool)

(assert (=> b!2676118 (= e!1686870 (<= 0 (size!23804 lt!942163)))))

(declare-fun b!2676119 () Bool)

(assert (=> b!2676119 (= e!1686871 (BalanceConc!18895 Empty!9640))))

(declare-fun b!2676120 () Bool)

(declare-fun ++!7519 (BalanceConc!18894 BalanceConc!18894) BalanceConc!18894)

(assert (=> b!2676120 (= e!1686871 (printTailRec!1155 thiss!14116 lt!942163 (+ 0 1) (++!7519 (BalanceConc!18895 Empty!9640) (charsOf!2968 (apply!7389 lt!942163 0)))))))

(declare-fun lt!942315 () List!30900)

(assert (=> b!2676120 (= lt!942315 (list!11639 lt!942163))))

(declare-fun lt!942319 () Unit!45011)

(declare-fun lemmaDropApply!882 (List!30900 Int) Unit!45011)

(assert (=> b!2676120 (= lt!942319 (lemmaDropApply!882 lt!942315 0))))

(declare-fun head!6083 (List!30900) Token!8880)

(declare-fun drop!1673 (List!30900 Int) List!30900)

(declare-fun apply!7392 (List!30900 Int) Token!8880)

(assert (=> b!2676120 (= (head!6083 (drop!1673 lt!942315 0)) (apply!7392 lt!942315 0))))

(declare-fun lt!942316 () Unit!45011)

(assert (=> b!2676120 (= lt!942316 lt!942319)))

(declare-fun lt!942320 () List!30900)

(assert (=> b!2676120 (= lt!942320 (list!11639 lt!942163))))

(declare-fun lt!942314 () Unit!45011)

(declare-fun lemmaDropTail!854 (List!30900 Int) Unit!45011)

(assert (=> b!2676120 (= lt!942314 (lemmaDropTail!854 lt!942320 0))))

(declare-fun tail!4321 (List!30900) List!30900)

(assert (=> b!2676120 (= (tail!4321 (drop!1673 lt!942320 0)) (drop!1673 lt!942320 (+ 0 1)))))

(declare-fun lt!942317 () Unit!45011)

(assert (=> b!2676120 (= lt!942317 lt!942314)))

(assert (= (and d!765071 res!1125142) b!2676118))

(assert (= (and d!765071 c!431172) b!2676119))

(assert (= (and d!765071 (not c!431172)) b!2676120))

(declare-fun m!3042713 () Bool)

(assert (=> d!765071 m!3042713))

(declare-fun m!3042715 () Bool)

(assert (=> d!765071 m!3042715))

(assert (=> d!765071 m!3042713))

(declare-fun m!3042717 () Bool)

(assert (=> d!765071 m!3042717))

(declare-fun m!3042719 () Bool)

(assert (=> d!765071 m!3042719))

(declare-fun m!3042721 () Bool)

(assert (=> d!765071 m!3042721))

(assert (=> d!765071 m!3042715))

(assert (=> b!2676118 m!3042719))

(declare-fun m!3042723 () Bool)

(assert (=> b!2676120 m!3042723))

(declare-fun m!3042725 () Bool)

(assert (=> b!2676120 m!3042725))

(declare-fun m!3042727 () Bool)

(assert (=> b!2676120 m!3042727))

(declare-fun m!3042729 () Bool)

(assert (=> b!2676120 m!3042729))

(declare-fun m!3042731 () Bool)

(assert (=> b!2676120 m!3042731))

(declare-fun m!3042733 () Bool)

(assert (=> b!2676120 m!3042733))

(declare-fun m!3042739 () Bool)

(assert (=> b!2676120 m!3042739))

(declare-fun m!3042743 () Bool)

(assert (=> b!2676120 m!3042743))

(declare-fun m!3042747 () Bool)

(assert (=> b!2676120 m!3042747))

(declare-fun m!3042751 () Bool)

(assert (=> b!2676120 m!3042751))

(assert (=> b!2676120 m!3042727))

(assert (=> b!2676120 m!3042733))

(declare-fun m!3042755 () Bool)

(assert (=> b!2676120 m!3042755))

(assert (=> b!2676120 m!3042755))

(assert (=> b!2676120 m!3042739))

(declare-fun m!3042761 () Bool)

(assert (=> b!2676120 m!3042761))

(declare-fun m!3042763 () Bool)

(assert (=> b!2676120 m!3042763))

(assert (=> b!2676120 m!3042761))

(assert (=> b!2675781 d!765071))

(declare-fun d!765075 () Bool)

(declare-fun e!1686878 () Bool)

(assert (=> d!765075 e!1686878))

(declare-fun res!1125148 () Bool)

(assert (=> d!765075 (=> (not res!1125148) (not e!1686878))))

(declare-fun lt!942332 () BalanceConc!18896)

(assert (=> d!765075 (= res!1125148 (= (list!11639 lt!942332) (Cons!30800 (h!36220 l!4335) Nil!30800)))))

(declare-fun singleton!932 (Token!8880) BalanceConc!18896)

(assert (=> d!765075 (= lt!942332 (singleton!932 (h!36220 l!4335)))))

(assert (=> d!765075 (= (singletonSeq!2102 (h!36220 l!4335)) lt!942332)))

(declare-fun b!2676128 () Bool)

(declare-fun isBalanced!2921 (Conc!9641) Bool)

(assert (=> b!2676128 (= e!1686878 (isBalanced!2921 (c!431110 lt!942332)))))

(assert (= (and d!765075 res!1125148) b!2676128))

(declare-fun m!3042787 () Bool)

(assert (=> d!765075 m!3042787))

(declare-fun m!3042789 () Bool)

(assert (=> d!765075 m!3042789))

(declare-fun m!3042791 () Bool)

(assert (=> b!2676128 m!3042791))

(assert (=> b!2675781 d!765075))

(declare-fun d!765081 () Bool)

(assert (=> d!765081 (= (list!11635 lt!942158) (list!11637 (c!431108 lt!942158)))))

(declare-fun bs!479786 () Bool)

(assert (= bs!479786 d!765081))

(declare-fun m!3042793 () Bool)

(assert (=> bs!479786 m!3042793))

(assert (=> b!2675781 d!765081))

(declare-fun d!765083 () Bool)

(declare-fun c!431178 () Bool)

(assert (=> d!765083 (= c!431178 ((_ is Cons!30800) (Cons!30800 (h!36220 l!4335) Nil!30800)))))

(declare-fun e!1686884 () List!30898)

(assert (=> d!765083 (= (printList!1194 thiss!14116 (Cons!30800 (h!36220 l!4335) Nil!30800)) e!1686884)))

(declare-fun b!2676138 () Bool)

(assert (=> b!2676138 (= e!1686884 (++!7517 (list!11635 (charsOf!2968 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800)))) (printList!1194 thiss!14116 (t!223827 (Cons!30800 (h!36220 l!4335) Nil!30800)))))))

(declare-fun b!2676139 () Bool)

(assert (=> b!2676139 (= e!1686884 Nil!30798)))

(assert (= (and d!765083 c!431178) b!2676138))

(assert (= (and d!765083 (not c!431178)) b!2676139))

(declare-fun m!3042801 () Bool)

(assert (=> b!2676138 m!3042801))

(assert (=> b!2676138 m!3042801))

(declare-fun m!3042803 () Bool)

(assert (=> b!2676138 m!3042803))

(declare-fun m!3042805 () Bool)

(assert (=> b!2676138 m!3042805))

(assert (=> b!2676138 m!3042803))

(assert (=> b!2676138 m!3042805))

(declare-fun m!3042807 () Bool)

(assert (=> b!2676138 m!3042807))

(assert (=> b!2675781 d!765083))

(declare-fun d!765087 () Bool)

(declare-fun lt!942338 () BalanceConc!18894)

(assert (=> d!765087 (= (list!11635 lt!942338) (printList!1194 thiss!14116 (list!11639 lt!942163)))))

(assert (=> d!765087 (= lt!942338 (printTailRec!1155 thiss!14116 lt!942163 0 (BalanceConc!18895 Empty!9640)))))

(assert (=> d!765087 (= (print!1681 thiss!14116 lt!942163) lt!942338)))

(declare-fun bs!479787 () Bool)

(assert (= bs!479787 d!765087))

(declare-fun m!3042817 () Bool)

(assert (=> bs!479787 m!3042817))

(assert (=> bs!479787 m!3042725))

(assert (=> bs!479787 m!3042725))

(declare-fun m!3042819 () Bool)

(assert (=> bs!479787 m!3042819))

(assert (=> bs!479787 m!3042297))

(assert (=> b!2675781 d!765087))

(declare-fun d!765091 () Bool)

(assert (=> d!765091 (= (inv!41810 (tag!5207 (rule!7113 (h!36220 l!4335)))) (= (mod (str.len (value!151696 (tag!5207 (rule!7113 (h!36220 l!4335))))) 2) 0))))

(assert (=> b!2675772 d!765091))

(declare-fun d!765093 () Bool)

(declare-fun res!1125150 () Bool)

(declare-fun e!1686886 () Bool)

(assert (=> d!765093 (=> (not res!1125150) (not e!1686886))))

(assert (=> d!765093 (= res!1125150 (semiInverseModEq!1950 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toValue!6651 (transformation!4705 (rule!7113 (h!36220 l!4335))))))))

(assert (=> d!765093 (= (inv!41813 (transformation!4705 (rule!7113 (h!36220 l!4335)))) e!1686886)))

(declare-fun b!2676142 () Bool)

(assert (=> b!2676142 (= e!1686886 (equivClasses!1851 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toValue!6651 (transformation!4705 (rule!7113 (h!36220 l!4335))))))))

(assert (= (and d!765093 res!1125150) b!2676142))

(declare-fun m!3042825 () Bool)

(assert (=> d!765093 m!3042825))

(declare-fun m!3042827 () Bool)

(assert (=> b!2676142 m!3042827))

(assert (=> b!2675772 d!765093))

(declare-fun d!765099 () Bool)

(declare-fun res!1125155 () Bool)

(declare-fun e!1686896 () Bool)

(assert (=> d!765099 (=> (not res!1125155) (not e!1686896))))

(declare-fun rulesValid!1756 (LexerInterface!4302 List!30899) Bool)

(assert (=> d!765099 (= res!1125155 (rulesValid!1756 thiss!14116 rules!1712))))

(assert (=> d!765099 (= (rulesInvariant!3802 thiss!14116 rules!1712) e!1686896)))

(declare-fun b!2676165 () Bool)

(declare-datatypes ((List!30902 0))(
  ( (Nil!30802) (Cons!30802 (h!36222 String!34519) (t!223881 List!30902)) )
))
(declare-fun noDuplicateTag!1752 (LexerInterface!4302 List!30899 List!30902) Bool)

(assert (=> b!2676165 (= e!1686896 (noDuplicateTag!1752 thiss!14116 rules!1712 Nil!30802))))

(assert (= (and d!765099 res!1125155) b!2676165))

(declare-fun m!3042839 () Bool)

(assert (=> d!765099 m!3042839))

(declare-fun m!3042841 () Bool)

(assert (=> b!2676165 m!3042841))

(assert (=> b!2675771 d!765099))

(declare-fun b!2676170 () Bool)

(declare-fun e!1686899 () Bool)

(assert (=> b!2676170 (= e!1686899 (inv!16 (value!151697 separatorToken!152)))))

(declare-fun b!2676171 () Bool)

(declare-fun e!1686900 () Bool)

(assert (=> b!2676171 (= e!1686900 (inv!17 (value!151697 separatorToken!152)))))

(declare-fun b!2676172 () Bool)

(assert (=> b!2676172 (= e!1686899 e!1686900)))

(declare-fun c!431182 () Bool)

(assert (=> b!2676172 (= c!431182 ((_ is IntegerValue!14782) (value!151697 separatorToken!152)))))

(declare-fun b!2676173 () Bool)

(declare-fun e!1686901 () Bool)

(assert (=> b!2676173 (= e!1686901 (inv!15 (value!151697 separatorToken!152)))))

(declare-fun b!2676174 () Bool)

(declare-fun res!1125156 () Bool)

(assert (=> b!2676174 (=> res!1125156 e!1686901)))

(assert (=> b!2676174 (= res!1125156 (not ((_ is IntegerValue!14783) (value!151697 separatorToken!152))))))

(assert (=> b!2676174 (= e!1686900 e!1686901)))

(declare-fun d!765103 () Bool)

(declare-fun c!431183 () Bool)

(assert (=> d!765103 (= c!431183 ((_ is IntegerValue!14781) (value!151697 separatorToken!152)))))

(assert (=> d!765103 (= (inv!21 (value!151697 separatorToken!152)) e!1686899)))

(assert (= (and d!765103 c!431183) b!2676170))

(assert (= (and d!765103 (not c!431183)) b!2676172))

(assert (= (and b!2676172 c!431182) b!2676171))

(assert (= (and b!2676172 (not c!431182)) b!2676174))

(assert (= (and b!2676174 (not res!1125156)) b!2676173))

(declare-fun m!3042843 () Bool)

(assert (=> b!2676170 m!3042843))

(declare-fun m!3042845 () Bool)

(assert (=> b!2676171 m!3042845))

(declare-fun m!3042847 () Bool)

(assert (=> b!2676173 m!3042847))

(assert (=> b!2675782 d!765103))

(declare-fun d!765105 () Bool)

(declare-fun lt!942342 () Bool)

(declare-fun content!4379 (List!30900) (InoxSet Token!8880))

(assert (=> d!765105 (= lt!942342 (select (content!4379 l!4335) (h!36220 l!4335)))))

(declare-fun e!1686922 () Bool)

(assert (=> d!765105 (= lt!942342 e!1686922)))

(declare-fun res!1125161 () Bool)

(assert (=> d!765105 (=> (not res!1125161) (not e!1686922))))

(assert (=> d!765105 (= res!1125161 ((_ is Cons!30800) l!4335))))

(assert (=> d!765105 (= (contains!5925 l!4335 (h!36220 l!4335)) lt!942342)))

(declare-fun b!2676199 () Bool)

(declare-fun e!1686923 () Bool)

(assert (=> b!2676199 (= e!1686922 e!1686923)))

(declare-fun res!1125162 () Bool)

(assert (=> b!2676199 (=> res!1125162 e!1686923)))

(assert (=> b!2676199 (= res!1125162 (= (h!36220 l!4335) (h!36220 l!4335)))))

(declare-fun b!2676200 () Bool)

(assert (=> b!2676200 (= e!1686923 (contains!5925 (t!223827 l!4335) (h!36220 l!4335)))))

(assert (= (and d!765105 res!1125161) b!2676199))

(assert (= (and b!2676199 (not res!1125162)) b!2676200))

(declare-fun m!3042853 () Bool)

(assert (=> d!765105 m!3042853))

(declare-fun m!3042855 () Bool)

(assert (=> d!765105 m!3042855))

(declare-fun m!3042857 () Bool)

(assert (=> b!2676200 m!3042857))

(assert (=> b!2675773 d!765105))

(declare-fun d!765107 () Bool)

(declare-fun res!1125167 () Bool)

(declare-fun e!1686938 () Bool)

(assert (=> d!765107 (=> res!1125167 e!1686938)))

(assert (=> d!765107 (= res!1125167 ((_ is Nil!30800) l!4335))))

(assert (=> d!765107 (= (forall!6522 l!4335 lambda!99961) e!1686938)))

(declare-fun b!2676211 () Bool)

(declare-fun e!1686939 () Bool)

(assert (=> b!2676211 (= e!1686938 e!1686939)))

(declare-fun res!1125168 () Bool)

(assert (=> b!2676211 (=> (not res!1125168) (not e!1686939))))

(assert (=> b!2676211 (= res!1125168 (dynLambda!13386 lambda!99961 (h!36220 l!4335)))))

(declare-fun b!2676212 () Bool)

(assert (=> b!2676212 (= e!1686939 (forall!6522 (t!223827 l!4335) lambda!99961))))

(assert (= (and d!765107 (not res!1125167)) b!2676211))

(assert (= (and b!2676211 res!1125168) b!2676212))

(declare-fun b_lambda!81639 () Bool)

(assert (=> (not b_lambda!81639) (not b!2676211)))

(declare-fun m!3042859 () Bool)

(assert (=> b!2676211 m!3042859))

(declare-fun m!3042861 () Bool)

(assert (=> b!2676212 m!3042861))

(assert (=> b!2675784 d!765107))

(declare-fun d!765109 () Bool)

(declare-fun res!1125169 () Bool)

(declare-fun e!1686940 () Bool)

(assert (=> d!765109 (=> (not res!1125169) (not e!1686940))))

(assert (=> d!765109 (= res!1125169 (not (isEmpty!17629 (originalCharacters!5471 (h!36220 l!4335)))))))

(assert (=> d!765109 (= (inv!41814 (h!36220 l!4335)) e!1686940)))

(declare-fun b!2676213 () Bool)

(declare-fun res!1125170 () Bool)

(assert (=> b!2676213 (=> (not res!1125170) (not e!1686940))))

(assert (=> b!2676213 (= res!1125170 (= (originalCharacters!5471 (h!36220 l!4335)) (list!11635 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335))))))))

(declare-fun b!2676214 () Bool)

(assert (=> b!2676214 (= e!1686940 (= (size!23799 (h!36220 l!4335)) (size!23800 (originalCharacters!5471 (h!36220 l!4335)))))))

(assert (= (and d!765109 res!1125169) b!2676213))

(assert (= (and b!2676213 res!1125170) b!2676214))

(declare-fun b_lambda!81641 () Bool)

(assert (=> (not b_lambda!81641) (not b!2676213)))

(assert (=> b!2676213 t!223834))

(declare-fun b_and!197883 () Bool)

(assert (= b_and!197869 (and (=> t!223834 result!185364) b_and!197883)))

(assert (=> b!2676213 t!223836))

(declare-fun b_and!197885 () Bool)

(assert (= b_and!197871 (and (=> t!223836 result!185368) b_and!197885)))

(assert (=> b!2676213 t!223838))

(declare-fun b_and!197887 () Bool)

(assert (= b_and!197873 (and (=> t!223838 result!185370) b_and!197887)))

(declare-fun m!3042863 () Bool)

(assert (=> d!765109 m!3042863))

(assert (=> b!2676213 m!3042479))

(assert (=> b!2676213 m!3042479))

(declare-fun m!3042865 () Bool)

(assert (=> b!2676213 m!3042865))

(declare-fun m!3042867 () Bool)

(assert (=> b!2676214 m!3042867))

(assert (=> b!2675785 d!765109))

(declare-fun d!765111 () Bool)

(declare-fun lt!942344 () Bool)

(declare-fun e!1686948 () Bool)

(assert (=> d!765111 (= lt!942344 e!1686948)))

(declare-fun res!1125171 () Bool)

(assert (=> d!765111 (=> (not res!1125171) (not e!1686948))))

(assert (=> d!765111 (= res!1125171 (= (list!11639 (_1!17669 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152))))) (list!11639 (singletonSeq!2102 separatorToken!152))))))

(declare-fun e!1686947 () Bool)

(assert (=> d!765111 (= lt!942344 e!1686947)))

(declare-fun res!1125173 () Bool)

(assert (=> d!765111 (=> (not res!1125173) (not e!1686947))))

(declare-fun lt!942343 () tuple2!30254)

(assert (=> d!765111 (= res!1125173 (= (size!23804 (_1!17669 lt!942343)) 1))))

(assert (=> d!765111 (= lt!942343 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152))))))

(assert (=> d!765111 (not (isEmpty!17623 rules!1712))))

(assert (=> d!765111 (= (rulesProduceIndividualToken!2014 thiss!14116 rules!1712 separatorToken!152) lt!942344)))

(declare-fun b!2676219 () Bool)

(declare-fun res!1125172 () Bool)

(assert (=> b!2676219 (=> (not res!1125172) (not e!1686947))))

(assert (=> b!2676219 (= res!1125172 (= (apply!7389 (_1!17669 lt!942343) 0) separatorToken!152))))

(declare-fun b!2676220 () Bool)

(assert (=> b!2676220 (= e!1686947 (isEmpty!17630 (_2!17669 lt!942343)))))

(declare-fun b!2676221 () Bool)

(assert (=> b!2676221 (= e!1686948 (isEmpty!17630 (_2!17669 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152))))))))

(assert (= (and d!765111 res!1125173) b!2676219))

(assert (= (and b!2676219 res!1125172) b!2676220))

(assert (= (and d!765111 res!1125171) b!2676221))

(declare-fun m!3042877 () Bool)

(assert (=> d!765111 m!3042877))

(declare-fun m!3042879 () Bool)

(assert (=> d!765111 m!3042879))

(assert (=> d!765111 m!3042879))

(declare-fun m!3042881 () Bool)

(assert (=> d!765111 m!3042881))

(declare-fun m!3042883 () Bool)

(assert (=> d!765111 m!3042883))

(declare-fun m!3042885 () Bool)

(assert (=> d!765111 m!3042885))

(declare-fun m!3042887 () Bool)

(assert (=> d!765111 m!3042887))

(assert (=> d!765111 m!3042333))

(assert (=> d!765111 m!3042879))

(assert (=> d!765111 m!3042885))

(declare-fun m!3042889 () Bool)

(assert (=> b!2676219 m!3042889))

(declare-fun m!3042891 () Bool)

(assert (=> b!2676220 m!3042891))

(assert (=> b!2676221 m!3042879))

(assert (=> b!2676221 m!3042879))

(assert (=> b!2676221 m!3042885))

(assert (=> b!2676221 m!3042885))

(assert (=> b!2676221 m!3042887))

(declare-fun m!3042893 () Bool)

(assert (=> b!2676221 m!3042893))

(assert (=> b!2675774 d!765111))

(declare-fun b!2676240 () Bool)

(declare-fun e!1686956 () Bool)

(declare-fun tp_is_empty!13829 () Bool)

(assert (=> b!2676240 (= e!1686956 tp_is_empty!13829)))

(declare-fun b!2676242 () Bool)

(declare-fun tp!846230 () Bool)

(assert (=> b!2676242 (= e!1686956 tp!846230)))

(declare-fun b!2676243 () Bool)

(declare-fun tp!846231 () Bool)

(declare-fun tp!846229 () Bool)

(assert (=> b!2676243 (= e!1686956 (and tp!846231 tp!846229))))

(assert (=> b!2675786 (= tp!846150 e!1686956)))

(declare-fun b!2676241 () Bool)

(declare-fun tp!846233 () Bool)

(declare-fun tp!846232 () Bool)

(assert (=> b!2676241 (= e!1686956 (and tp!846233 tp!846232))))

(assert (= (and b!2675786 ((_ is ElementMatch!7849) (regex!4705 (rule!7113 separatorToken!152)))) b!2676240))

(assert (= (and b!2675786 ((_ is Concat!12777) (regex!4705 (rule!7113 separatorToken!152)))) b!2676241))

(assert (= (and b!2675786 ((_ is Star!7849) (regex!4705 (rule!7113 separatorToken!152)))) b!2676242))

(assert (= (and b!2675786 ((_ is Union!7849) (regex!4705 (rule!7113 separatorToken!152)))) b!2676243))

(declare-fun b!2676244 () Bool)

(declare-fun e!1686957 () Bool)

(assert (=> b!2676244 (= e!1686957 tp_is_empty!13829)))

(declare-fun b!2676246 () Bool)

(declare-fun tp!846235 () Bool)

(assert (=> b!2676246 (= e!1686957 tp!846235)))

(declare-fun b!2676247 () Bool)

(declare-fun tp!846236 () Bool)

(declare-fun tp!846234 () Bool)

(assert (=> b!2676247 (= e!1686957 (and tp!846236 tp!846234))))

(assert (=> b!2675766 (= tp!846143 e!1686957)))

(declare-fun b!2676245 () Bool)

(declare-fun tp!846238 () Bool)

(declare-fun tp!846237 () Bool)

(assert (=> b!2676245 (= e!1686957 (and tp!846238 tp!846237))))

(assert (= (and b!2675766 ((_ is ElementMatch!7849) (regex!4705 (h!36219 rules!1712)))) b!2676244))

(assert (= (and b!2675766 ((_ is Concat!12777) (regex!4705 (h!36219 rules!1712)))) b!2676245))

(assert (= (and b!2675766 ((_ is Star!7849) (regex!4705 (h!36219 rules!1712)))) b!2676246))

(assert (= (and b!2675766 ((_ is Union!7849) (regex!4705 (h!36219 rules!1712)))) b!2676247))

(declare-fun b!2676250 () Bool)

(declare-fun e!1686960 () Bool)

(assert (=> b!2676250 (= e!1686960 true)))

(declare-fun b!2676249 () Bool)

(declare-fun e!1686959 () Bool)

(assert (=> b!2676249 (= e!1686959 e!1686960)))

(declare-fun b!2676248 () Bool)

(declare-fun e!1686958 () Bool)

(assert (=> b!2676248 (= e!1686958 e!1686959)))

(assert (=> b!2675797 e!1686958))

(assert (= b!2676249 b!2676250))

(assert (= b!2676248 b!2676249))

(assert (= (and b!2675797 ((_ is Cons!30799) (t!223826 rules!1712))) b!2676248))

(assert (=> b!2676250 (< (dynLambda!13382 order!16987 (toValue!6651 (transformation!4705 (h!36219 (t!223826 rules!1712))))) (dynLambda!13383 order!16989 lambda!99962))))

(assert (=> b!2676250 (< (dynLambda!13384 order!16991 (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712))))) (dynLambda!13383 order!16989 lambda!99962))))

(declare-fun b!2676255 () Bool)

(declare-fun e!1686963 () Bool)

(declare-fun tp!846241 () Bool)

(assert (=> b!2676255 (= e!1686963 (and tp_is_empty!13829 tp!846241))))

(assert (=> b!2675778 (= tp!846148 e!1686963)))

(assert (= (and b!2675778 ((_ is Cons!30798) (originalCharacters!5471 (h!36220 l!4335)))) b!2676255))

(declare-fun b!2676266 () Bool)

(declare-fun b_free!75453 () Bool)

(declare-fun b_next!76157 () Bool)

(assert (=> b!2676266 (= b_free!75453 (not b_next!76157))))

(declare-fun tp!846250 () Bool)

(declare-fun b_and!197889 () Bool)

(assert (=> b!2676266 (= tp!846250 b_and!197889)))

(declare-fun b_free!75455 () Bool)

(declare-fun b_next!76159 () Bool)

(assert (=> b!2676266 (= b_free!75455 (not b_next!76159))))

(declare-fun tb!150105 () Bool)

(declare-fun t!223873 () Bool)

(assert (=> (and b!2676266 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712)))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335))))) t!223873) tb!150105))

(declare-fun result!185414 () Bool)

(assert (= result!185414 result!185364))

(assert (=> d!765019 t!223873))

(declare-fun t!223875 () Bool)

(declare-fun tb!150107 () Bool)

(assert (=> (and b!2676266 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712)))) (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152)))) t!223875) tb!150107))

(declare-fun result!185416 () Bool)

(assert (= result!185416 result!185386))

(assert (=> b!2675992 t!223875))

(assert (=> b!2676213 t!223873))

(declare-fun b_and!197891 () Bool)

(declare-fun tp!846253 () Bool)

(assert (=> b!2676266 (= tp!846253 (and (=> t!223873 result!185414) (=> t!223875 result!185416) b_and!197891))))

(declare-fun e!1686974 () Bool)

(assert (=> b!2676266 (= e!1686974 (and tp!846250 tp!846253))))

(declare-fun tp!846251 () Bool)

(declare-fun e!1686975 () Bool)

(declare-fun b!2676265 () Bool)

(assert (=> b!2676265 (= e!1686975 (and tp!846251 (inv!41810 (tag!5207 (h!36219 (t!223826 rules!1712)))) (inv!41813 (transformation!4705 (h!36219 (t!223826 rules!1712)))) e!1686974))))

(declare-fun b!2676264 () Bool)

(declare-fun e!1686972 () Bool)

(declare-fun tp!846252 () Bool)

(assert (=> b!2676264 (= e!1686972 (and e!1686975 tp!846252))))

(assert (=> b!2675780 (= tp!846149 e!1686972)))

(assert (= b!2676265 b!2676266))

(assert (= b!2676264 b!2676265))

(assert (= (and b!2675780 ((_ is Cons!30799) (t!223826 rules!1712))) b!2676264))

(declare-fun m!3042895 () Bool)

(assert (=> b!2676265 m!3042895))

(declare-fun m!3042897 () Bool)

(assert (=> b!2676265 m!3042897))

(declare-fun b!2676267 () Bool)

(declare-fun e!1686976 () Bool)

(assert (=> b!2676267 (= e!1686976 tp_is_empty!13829)))

(declare-fun b!2676269 () Bool)

(declare-fun tp!846255 () Bool)

(assert (=> b!2676269 (= e!1686976 tp!846255)))

(declare-fun b!2676270 () Bool)

(declare-fun tp!846256 () Bool)

(declare-fun tp!846254 () Bool)

(assert (=> b!2676270 (= e!1686976 (and tp!846256 tp!846254))))

(assert (=> b!2675772 (= tp!846142 e!1686976)))

(declare-fun b!2676268 () Bool)

(declare-fun tp!846258 () Bool)

(declare-fun tp!846257 () Bool)

(assert (=> b!2676268 (= e!1686976 (and tp!846258 tp!846257))))

(assert (= (and b!2675772 ((_ is ElementMatch!7849) (regex!4705 (rule!7113 (h!36220 l!4335))))) b!2676267))

(assert (= (and b!2675772 ((_ is Concat!12777) (regex!4705 (rule!7113 (h!36220 l!4335))))) b!2676268))

(assert (= (and b!2675772 ((_ is Star!7849) (regex!4705 (rule!7113 (h!36220 l!4335))))) b!2676269))

(assert (= (and b!2675772 ((_ is Union!7849) (regex!4705 (rule!7113 (h!36220 l!4335))))) b!2676270))

(declare-fun b!2676271 () Bool)

(declare-fun e!1686977 () Bool)

(declare-fun tp!846259 () Bool)

(assert (=> b!2676271 (= e!1686977 (and tp_is_empty!13829 tp!846259))))

(assert (=> b!2675782 (= tp!846146 e!1686977)))

(assert (= (and b!2675782 ((_ is Cons!30798) (originalCharacters!5471 separatorToken!152))) b!2676271))

(declare-fun b!2676285 () Bool)

(declare-fun b_free!75457 () Bool)

(declare-fun b_next!76161 () Bool)

(assert (=> b!2676285 (= b_free!75457 (not b_next!76161))))

(declare-fun tp!846270 () Bool)

(declare-fun b_and!197893 () Bool)

(assert (=> b!2676285 (= tp!846270 b_and!197893)))

(declare-fun b_free!75459 () Bool)

(declare-fun b_next!76163 () Bool)

(assert (=> b!2676285 (= b_free!75459 (not b_next!76163))))

(declare-fun t!223877 () Bool)

(declare-fun tb!150109 () Bool)

(assert (=> (and b!2676285 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335))))) t!223877) tb!150109))

(declare-fun result!185420 () Bool)

(assert (= result!185420 result!185364))

(assert (=> d!765019 t!223877))

(declare-fun tb!150111 () Bool)

(declare-fun t!223879 () Bool)

(assert (=> (and b!2676285 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152)))) t!223879) tb!150111))

(declare-fun result!185422 () Bool)

(assert (= result!185422 result!185386))

(assert (=> b!2675992 t!223879))

(assert (=> b!2676213 t!223877))

(declare-fun tp!846272 () Bool)

(declare-fun b_and!197895 () Bool)

(assert (=> b!2676285 (= tp!846272 (and (=> t!223877 result!185420) (=> t!223879 result!185422) b_and!197895))))

(declare-fun e!1686993 () Bool)

(declare-fun b!2676284 () Bool)

(declare-fun tp!846271 () Bool)

(declare-fun e!1686991 () Bool)

(assert (=> b!2676284 (= e!1686993 (and tp!846271 (inv!41810 (tag!5207 (rule!7113 (h!36220 (t!223827 l!4335))))) (inv!41813 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) e!1686991))))

(assert (=> b!2676285 (= e!1686991 (and tp!846270 tp!846272))))

(declare-fun e!1686995 () Bool)

(assert (=> b!2675785 (= tp!846144 e!1686995)))

(declare-fun b!2676283 () Bool)

(declare-fun tp!846274 () Bool)

(declare-fun e!1686992 () Bool)

(assert (=> b!2676283 (= e!1686992 (and (inv!21 (value!151697 (h!36220 (t!223827 l!4335)))) e!1686993 tp!846274))))

(declare-fun b!2676282 () Bool)

(declare-fun tp!846273 () Bool)

(assert (=> b!2676282 (= e!1686995 (and (inv!41814 (h!36220 (t!223827 l!4335))) e!1686992 tp!846273))))

(assert (= b!2676284 b!2676285))

(assert (= b!2676283 b!2676284))

(assert (= b!2676282 b!2676283))

(assert (= (and b!2675785 ((_ is Cons!30800) (t!223827 l!4335))) b!2676282))

(declare-fun m!3042899 () Bool)

(assert (=> b!2676284 m!3042899))

(declare-fun m!3042901 () Bool)

(assert (=> b!2676284 m!3042901))

(declare-fun m!3042903 () Bool)

(assert (=> b!2676283 m!3042903))

(declare-fun m!3042905 () Bool)

(assert (=> b!2676282 m!3042905))

(declare-fun b_lambda!81653 () Bool)

(assert (= b_lambda!81625 (or b!2675775 b_lambda!81653)))

(declare-fun bs!479791 () Bool)

(declare-fun d!765117 () Bool)

(assert (= bs!479791 (and d!765117 b!2675775)))

(assert (=> bs!479791 (= (dynLambda!13386 lambda!99962 (h!36220 l!4335)) (rulesProduceIndividualToken!2014 thiss!14116 rules!1712 (h!36220 l!4335)))))

(assert (=> bs!479791 m!3042291))

(assert (=> d!765009 d!765117))

(declare-fun b_lambda!81655 () Bool)

(assert (= b_lambda!81637 (or (and b!2675770 b_free!75443 (= (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))))) (and b!2676266 b_free!75455 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712)))) (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))))) (and b!2675776 b_free!75435 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))))) (and b!2676285 b_free!75459 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))))) (and b!2675783 b_free!75439) b_lambda!81655)))

(declare-fun b_lambda!81657 () Bool)

(assert (= b_lambda!81639 (or b!2675784 b_lambda!81657)))

(declare-fun bs!479792 () Bool)

(declare-fun d!765119 () Bool)

(assert (= bs!479792 (and d!765119 b!2675784)))

(assert (=> bs!479792 (= (dynLambda!13386 lambda!99961 (h!36220 l!4335)) (not (isSeparator!4705 (rule!7113 (h!36220 l!4335)))))))

(assert (=> b!2676211 d!765119))

(declare-fun b_lambda!81659 () Bool)

(assert (= b_lambda!81627 (or (and b!2676285 b_free!75459 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))))) (and b!2675776 b_free!75435) (and b!2675770 b_free!75443 (= (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))))) (and b!2676266 b_free!75455 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712)))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))))) (and b!2675783 b_free!75439 (= (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))))) b_lambda!81659)))

(declare-fun b_lambda!81661 () Bool)

(assert (= b_lambda!81641 (or (and b!2676285 b_free!75459 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))))) (and b!2675776 b_free!75435) (and b!2675770 b_free!75443 (= (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))))) (and b!2676266 b_free!75455 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712)))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))))) (and b!2675783 b_free!75439 (= (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))))) b_lambda!81661)))

(check-sat (not b!2675923) (not b!2675905) (not b!2675898) (not b!2676246) (not b!2675904) (not b!2676282) (not d!765017) (not b_next!76161) (not d!765105) (not b_lambda!81653) (not b!2675957) (not b!2675982) (not b!2676104) (not b!2676219) (not d!765037) (not d!765093) (not bm!172629) (not b_next!76145) (not b!2675933) (not b!2675860) (not b!2676212) (not b!2675861) b_and!197841 (not b!2676170) (not b_next!76157) b_and!197891 (not b!2676220) (not b!2676142) (not b_next!76143) (not b_next!76139) (not b!2676118) (not b_lambda!81661) b_and!197837 (not d!765065) b_and!197885 (not b_next!76147) (not d!765063) (not b!2676027) b_and!197895 (not b!2676029) (not b!2676171) (not d!765057) (not b!2676200) (not d!765087) tp_is_empty!13829 (not b!2675955) (not b!2675857) (not bm!172630) (not tb!150073) (not b!2675956) (not b!2675946) (not b!2676247) (not b!2676283) b_and!197889 (not b!2676013) (not b!2676284) (not b!2676120) (not d!765025) (not b!2676098) (not d!765081) (not b!2676269) (not b!2676128) (not b!2675865) (not b!2676138) (not b_next!76141) (not b!2676255) b_and!197833 (not b!2676100) (not b!2676264) (not b!2676248) (not tb!150091) (not b!2676173) (not b!2675998) (not b!2676265) (not b_lambda!81655) (not d!765071) (not b_next!76159) b_and!197883 (not b!2675863) (not d!765009) (not d!765019) (not b!2676270) (not bs!479791) (not d!765099) (not b!2676213) (not bm!172616) (not d!765041) (not b!2675864) (not b!2676242) (not b!2676015) (not b_next!76163) (not b!2675924) (not b!2676026) (not bm!172631) (not d!765111) (not b_lambda!81657) (not b!2676268) (not b!2676214) (not b!2676014) (not b!2675992) (not d!765075) (not b!2676241) (not b!2675901) (not b!2675858) (not b!2675859) b_and!197887 (not b!2675903) (not b!2675993) (not b!2676165) b_and!197893 (not d!765109) (not d!764997) (not b!2676271) (not b_lambda!81659) (not b!2675984) (not b!2676221) (not bm!172628) (not d!765007) (not b!2675868) (not b!2676243) (not b!2676102) (not b!2676245) (not b!2675983) (not d!765053) (not d!765069) (not b_next!76137))
(check-sat (not b_next!76161) (not b_next!76145) b_and!197841 b_and!197837 b_and!197895 b_and!197889 (not b_next!76163) b_and!197887 b_and!197893 (not b_next!76137) (not b_next!76157) b_and!197891 (not b_next!76143) (not b_next!76139) b_and!197885 (not b_next!76147) (not b_next!76141) b_and!197833 (not b_next!76159) b_and!197883)
(get-model)

(declare-fun b!2676398 () Bool)

(declare-fun e!1687065 () Bool)

(declare-fun call!172666 () Bool)

(assert (=> b!2676398 (= e!1687065 call!172666)))

(declare-fun b!2676399 () Bool)

(declare-fun e!1687067 () Bool)

(assert (=> b!2676399 (= e!1687067 call!172666)))

(declare-fun b!2676400 () Bool)

(declare-fun e!1687066 () Bool)

(assert (=> b!2676400 (= e!1687066 e!1687065)))

(declare-fun res!1125238 () Bool)

(assert (=> b!2676400 (= res!1125238 (not ((_ is Cons!30799) rules!1712)))))

(assert (=> b!2676400 (=> res!1125238 e!1687065)))

(declare-fun b!2676401 () Bool)

(assert (=> b!2676401 (= e!1687066 e!1687067)))

(declare-fun res!1125237 () Bool)

(declare-fun rulesUseDisjointChars!254 (Rule!9210 Rule!9210) Bool)

(assert (=> b!2676401 (= res!1125237 (rulesUseDisjointChars!254 (h!36219 rules!1712) (h!36219 rules!1712)))))

(assert (=> b!2676401 (=> (not res!1125237) (not e!1687067))))

(declare-fun bm!172661 () Bool)

(assert (=> bm!172661 (= call!172666 (ruleDisjointCharsFromAllFromOtherType!557 (h!36219 rules!1712) (t!223826 rules!1712)))))

(declare-fun d!765175 () Bool)

(declare-fun c!431208 () Bool)

(assert (=> d!765175 (= c!431208 (and ((_ is Cons!30799) rules!1712) (not (= (isSeparator!4705 (h!36219 rules!1712)) (isSeparator!4705 (h!36219 rules!1712))))))))

(assert (=> d!765175 (= (ruleDisjointCharsFromAllFromOtherType!557 (h!36219 rules!1712) rules!1712) e!1687066)))

(assert (= (and d!765175 c!431208) b!2676401))

(assert (= (and d!765175 (not c!431208)) b!2676400))

(assert (= (and b!2676401 res!1125237) b!2676399))

(assert (= (and b!2676400 (not res!1125238)) b!2676398))

(assert (= (or b!2676399 b!2676398) bm!172661))

(declare-fun m!3043083 () Bool)

(assert (=> b!2676401 m!3043083))

(declare-fun m!3043085 () Bool)

(assert (=> bm!172661 m!3043085))

(assert (=> b!2675955 d!765175))

(declare-fun b!2676406 () Bool)

(declare-fun res!1125241 () Bool)

(declare-fun e!1687070 () Bool)

(assert (=> b!2676406 (=> (not res!1125241) (not e!1687070))))

(declare-fun lt!942381 () List!30898)

(assert (=> b!2676406 (= res!1125241 (= (size!23800 lt!942381) (+ (size!23800 (list!11635 (charsOf!2968 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800))))) (size!23800 (printList!1194 thiss!14116 (t!223827 (Cons!30800 (h!36220 l!4335) Nil!30800)))))))))

(declare-fun b!2676405 () Bool)

(declare-fun e!1687071 () List!30898)

(assert (=> b!2676405 (= e!1687071 (Cons!30798 (h!36218 (list!11635 (charsOf!2968 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800))))) (++!7517 (t!223825 (list!11635 (charsOf!2968 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800))))) (printList!1194 thiss!14116 (t!223827 (Cons!30800 (h!36220 l!4335) Nil!30800))))))))

(declare-fun b!2676407 () Bool)

(assert (=> b!2676407 (= e!1687070 (or (not (= (printList!1194 thiss!14116 (t!223827 (Cons!30800 (h!36220 l!4335) Nil!30800))) Nil!30798)) (= lt!942381 (list!11635 (charsOf!2968 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800)))))))))

(declare-fun b!2676404 () Bool)

(assert (=> b!2676404 (= e!1687071 (printList!1194 thiss!14116 (t!223827 (Cons!30800 (h!36220 l!4335) Nil!30800))))))

(declare-fun d!765177 () Bool)

(assert (=> d!765177 e!1687070))

(declare-fun res!1125242 () Bool)

(assert (=> d!765177 (=> (not res!1125242) (not e!1687070))))

(assert (=> d!765177 (= res!1125242 (= (content!4377 lt!942381) ((_ map or) (content!4377 (list!11635 (charsOf!2968 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800))))) (content!4377 (printList!1194 thiss!14116 (t!223827 (Cons!30800 (h!36220 l!4335) Nil!30800)))))))))

(assert (=> d!765177 (= lt!942381 e!1687071)))

(declare-fun c!431209 () Bool)

(assert (=> d!765177 (= c!431209 ((_ is Nil!30798) (list!11635 (charsOf!2968 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800))))))))

(assert (=> d!765177 (= (++!7517 (list!11635 (charsOf!2968 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800)))) (printList!1194 thiss!14116 (t!223827 (Cons!30800 (h!36220 l!4335) Nil!30800)))) lt!942381)))

(assert (= (and d!765177 c!431209) b!2676404))

(assert (= (and d!765177 (not c!431209)) b!2676405))

(assert (= (and d!765177 res!1125242) b!2676406))

(assert (= (and b!2676406 res!1125241) b!2676407))

(declare-fun m!3043087 () Bool)

(assert (=> b!2676406 m!3043087))

(assert (=> b!2676406 m!3042803))

(declare-fun m!3043089 () Bool)

(assert (=> b!2676406 m!3043089))

(assert (=> b!2676406 m!3042805))

(declare-fun m!3043091 () Bool)

(assert (=> b!2676406 m!3043091))

(assert (=> b!2676405 m!3042805))

(declare-fun m!3043093 () Bool)

(assert (=> b!2676405 m!3043093))

(declare-fun m!3043095 () Bool)

(assert (=> d!765177 m!3043095))

(assert (=> d!765177 m!3042803))

(declare-fun m!3043097 () Bool)

(assert (=> d!765177 m!3043097))

(assert (=> d!765177 m!3042805))

(declare-fun m!3043099 () Bool)

(assert (=> d!765177 m!3043099))

(assert (=> b!2676138 d!765177))

(declare-fun d!765179 () Bool)

(assert (=> d!765179 (= (list!11635 (charsOf!2968 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800)))) (list!11637 (c!431108 (charsOf!2968 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800))))))))

(declare-fun bs!479811 () Bool)

(assert (= bs!479811 d!765179))

(declare-fun m!3043101 () Bool)

(assert (=> bs!479811 m!3043101))

(assert (=> b!2676138 d!765179))

(declare-fun d!765181 () Bool)

(declare-fun lt!942382 () BalanceConc!18894)

(assert (=> d!765181 (= (list!11635 lt!942382) (originalCharacters!5471 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800))))))

(assert (=> d!765181 (= lt!942382 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800))))) (value!151697 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800)))))))

(assert (=> d!765181 (= (charsOf!2968 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800))) lt!942382)))

(declare-fun b_lambda!81673 () Bool)

(assert (=> (not b_lambda!81673) (not d!765181)))

(declare-fun tb!150133 () Bool)

(declare-fun t!223904 () Bool)

(assert (=> (and b!2675783 (= (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800)))))) t!223904) tb!150133))

(declare-fun b!2676418 () Bool)

(declare-fun e!1687074 () Bool)

(declare-fun tp!846277 () Bool)

(assert (=> b!2676418 (= e!1687074 (and (inv!41817 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800))))) (value!151697 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800)))))) tp!846277))))

(declare-fun result!185444 () Bool)

(assert (=> tb!150133 (= result!185444 (and (inv!41818 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800))))) (value!151697 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800))))) e!1687074))))

(assert (= tb!150133 b!2676418))

(declare-fun m!3043103 () Bool)

(assert (=> b!2676418 m!3043103))

(declare-fun m!3043105 () Bool)

(assert (=> tb!150133 m!3043105))

(assert (=> d!765181 t!223904))

(declare-fun b_and!197927 () Bool)

(assert (= b_and!197885 (and (=> t!223904 result!185444) b_and!197927)))

(declare-fun t!223906 () Bool)

(declare-fun tb!150135 () Bool)

(assert (=> (and b!2676266 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712)))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800)))))) t!223906) tb!150135))

(declare-fun result!185446 () Bool)

(assert (= result!185446 result!185444))

(assert (=> d!765181 t!223906))

(declare-fun b_and!197929 () Bool)

(assert (= b_and!197891 (and (=> t!223906 result!185446) b_and!197929)))

(declare-fun tb!150137 () Bool)

(declare-fun t!223908 () Bool)

(assert (=> (and b!2675770 (= (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800)))))) t!223908) tb!150137))

(declare-fun result!185448 () Bool)

(assert (= result!185448 result!185444))

(assert (=> d!765181 t!223908))

(declare-fun b_and!197931 () Bool)

(assert (= b_and!197887 (and (=> t!223908 result!185448) b_and!197931)))

(declare-fun t!223910 () Bool)

(declare-fun tb!150139 () Bool)

(assert (=> (and b!2676285 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800)))))) t!223910) tb!150139))

(declare-fun result!185450 () Bool)

(assert (= result!185450 result!185444))

(assert (=> d!765181 t!223910))

(declare-fun b_and!197933 () Bool)

(assert (= b_and!197895 (and (=> t!223910 result!185450) b_and!197933)))

(declare-fun t!223912 () Bool)

(declare-fun tb!150141 () Bool)

(assert (=> (and b!2675776 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800)))))) t!223912) tb!150141))

(declare-fun result!185452 () Bool)

(assert (= result!185452 result!185444))

(assert (=> d!765181 t!223912))

(declare-fun b_and!197935 () Bool)

(assert (= b_and!197883 (and (=> t!223912 result!185452) b_and!197935)))

(declare-fun m!3043107 () Bool)

(assert (=> d!765181 m!3043107))

(declare-fun m!3043109 () Bool)

(assert (=> d!765181 m!3043109))

(assert (=> b!2676138 d!765181))

(declare-fun d!765183 () Bool)

(declare-fun c!431210 () Bool)

(assert (=> d!765183 (= c!431210 ((_ is Cons!30800) (t!223827 (Cons!30800 (h!36220 l!4335) Nil!30800))))))

(declare-fun e!1687075 () List!30898)

(assert (=> d!765183 (= (printList!1194 thiss!14116 (t!223827 (Cons!30800 (h!36220 l!4335) Nil!30800))) e!1687075)))

(declare-fun b!2676419 () Bool)

(assert (=> b!2676419 (= e!1687075 (++!7517 (list!11635 (charsOf!2968 (h!36220 (t!223827 (Cons!30800 (h!36220 l!4335) Nil!30800))))) (printList!1194 thiss!14116 (t!223827 (t!223827 (Cons!30800 (h!36220 l!4335) Nil!30800))))))))

(declare-fun b!2676420 () Bool)

(assert (=> b!2676420 (= e!1687075 Nil!30798)))

(assert (= (and d!765183 c!431210) b!2676419))

(assert (= (and d!765183 (not c!431210)) b!2676420))

(declare-fun m!3043111 () Bool)

(assert (=> b!2676419 m!3043111))

(assert (=> b!2676419 m!3043111))

(declare-fun m!3043113 () Bool)

(assert (=> b!2676419 m!3043113))

(declare-fun m!3043115 () Bool)

(assert (=> b!2676419 m!3043115))

(assert (=> b!2676419 m!3043113))

(assert (=> b!2676419 m!3043115))

(declare-fun m!3043117 () Bool)

(assert (=> b!2676419 m!3043117))

(assert (=> b!2676138 d!765183))

(declare-fun e!1687127 () Bool)

(declare-fun b!2676511 () Bool)

(declare-datatypes ((tuple2!30260 0))(
  ( (tuple2!30261 (_1!17672 List!30898) (_2!17672 List!30898)) )
))
(declare-fun findLongestMatchInner!776 (Regex!7849 List!30898 Int List!30898 List!30898 Int) tuple2!30260)

(assert (=> b!2676511 (= e!1687127 (matchR!3629 (regex!4705 (h!36219 rules!1712)) (_1!17672 (findLongestMatchInner!776 (regex!4705 (h!36219 rules!1712)) Nil!30798 (size!23800 Nil!30798) (++!7517 lt!942160 lt!942166) (++!7517 lt!942160 lt!942166) (size!23800 (++!7517 lt!942160 lt!942166))))))))

(declare-fun b!2676512 () Bool)

(declare-fun res!1125295 () Bool)

(declare-fun e!1687124 () Bool)

(assert (=> b!2676512 (=> (not res!1125295) (not e!1687124))))

(declare-fun lt!942422 () Option!6096)

(assert (=> b!2676512 (= res!1125295 (< (size!23800 (_2!17668 (get!9679 lt!942422))) (size!23800 (++!7517 lt!942160 lt!942166))))))

(declare-fun b!2676513 () Bool)

(declare-fun e!1687126 () Option!6096)

(declare-fun lt!942425 () tuple2!30260)

(assert (=> b!2676513 (= e!1687126 (Some!6095 (tuple2!30253 (Token!8881 (apply!7387 (transformation!4705 (h!36219 rules!1712)) (seqFromList!3207 (_1!17672 lt!942425))) (h!36219 rules!1712) (size!23805 (seqFromList!3207 (_1!17672 lt!942425))) (_1!17672 lt!942425)) (_2!17672 lt!942425))))))

(declare-fun lt!942426 () Unit!45011)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!749 (Regex!7849 List!30898) Unit!45011)

(assert (=> b!2676513 (= lt!942426 (longestMatchIsAcceptedByMatchOrIsEmpty!749 (regex!4705 (h!36219 rules!1712)) (++!7517 lt!942160 lt!942166)))))

(declare-fun res!1125296 () Bool)

(assert (=> b!2676513 (= res!1125296 (isEmpty!17629 (_1!17672 (findLongestMatchInner!776 (regex!4705 (h!36219 rules!1712)) Nil!30798 (size!23800 Nil!30798) (++!7517 lt!942160 lt!942166) (++!7517 lt!942160 lt!942166) (size!23800 (++!7517 lt!942160 lt!942166))))))))

(assert (=> b!2676513 (=> res!1125296 e!1687127)))

(assert (=> b!2676513 e!1687127))

(declare-fun lt!942423 () Unit!45011)

(assert (=> b!2676513 (= lt!942423 lt!942426)))

(declare-fun lt!942424 () Unit!45011)

(declare-fun lemmaSemiInverse!1123 (TokenValueInjection!9294 BalanceConc!18894) Unit!45011)

(assert (=> b!2676513 (= lt!942424 (lemmaSemiInverse!1123 (transformation!4705 (h!36219 rules!1712)) (seqFromList!3207 (_1!17672 lt!942425))))))

(declare-fun b!2676514 () Bool)

(declare-fun res!1125294 () Bool)

(assert (=> b!2676514 (=> (not res!1125294) (not e!1687124))))

(assert (=> b!2676514 (= res!1125294 (= (value!151697 (_1!17668 (get!9679 lt!942422))) (apply!7387 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942422)))) (seqFromList!3207 (originalCharacters!5471 (_1!17668 (get!9679 lt!942422)))))))))

(declare-fun b!2676515 () Bool)

(declare-fun e!1687125 () Bool)

(assert (=> b!2676515 (= e!1687125 e!1687124)))

(declare-fun res!1125292 () Bool)

(assert (=> b!2676515 (=> (not res!1125292) (not e!1687124))))

(assert (=> b!2676515 (= res!1125292 (matchR!3629 (regex!4705 (h!36219 rules!1712)) (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942422))))))))

(declare-fun b!2676516 () Bool)

(assert (=> b!2676516 (= e!1687126 None!6095)))

(declare-fun b!2676517 () Bool)

(declare-fun res!1125291 () Bool)

(assert (=> b!2676517 (=> (not res!1125291) (not e!1687124))))

(assert (=> b!2676517 (= res!1125291 (= (++!7517 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942422)))) (_2!17668 (get!9679 lt!942422))) (++!7517 lt!942160 lt!942166)))))

(declare-fun b!2676519 () Bool)

(declare-fun res!1125297 () Bool)

(assert (=> b!2676519 (=> (not res!1125297) (not e!1687124))))

(assert (=> b!2676519 (= res!1125297 (= (rule!7113 (_1!17668 (get!9679 lt!942422))) (h!36219 rules!1712)))))

(declare-fun b!2676518 () Bool)

(assert (=> b!2676518 (= e!1687124 (= (size!23799 (_1!17668 (get!9679 lt!942422))) (size!23800 (originalCharacters!5471 (_1!17668 (get!9679 lt!942422))))))))

(declare-fun d!765185 () Bool)

(assert (=> d!765185 e!1687125))

(declare-fun res!1125293 () Bool)

(assert (=> d!765185 (=> res!1125293 e!1687125)))

(assert (=> d!765185 (= res!1125293 (isEmpty!17624 lt!942422))))

(assert (=> d!765185 (= lt!942422 e!1687126)))

(declare-fun c!431233 () Bool)

(assert (=> d!765185 (= c!431233 (isEmpty!17629 (_1!17672 lt!942425)))))

(declare-fun findLongestMatch!701 (Regex!7849 List!30898) tuple2!30260)

(assert (=> d!765185 (= lt!942425 (findLongestMatch!701 (regex!4705 (h!36219 rules!1712)) (++!7517 lt!942160 lt!942166)))))

(declare-fun ruleValid!1554 (LexerInterface!4302 Rule!9210) Bool)

(assert (=> d!765185 (ruleValid!1554 thiss!14116 (h!36219 rules!1712))))

(assert (=> d!765185 (= (maxPrefixOneRule!1487 thiss!14116 (h!36219 rules!1712) (++!7517 lt!942160 lt!942166)) lt!942422)))

(assert (= (and d!765185 c!431233) b!2676516))

(assert (= (and d!765185 (not c!431233)) b!2676513))

(assert (= (and b!2676513 (not res!1125296)) b!2676511))

(assert (= (and d!765185 (not res!1125293)) b!2676515))

(assert (= (and b!2676515 res!1125292) b!2676517))

(assert (= (and b!2676517 res!1125291) b!2676512))

(assert (= (and b!2676512 res!1125295) b!2676519))

(assert (= (and b!2676519 res!1125297) b!2676514))

(assert (= (and b!2676514 res!1125294) b!2676518))

(declare-fun m!3043299 () Bool)

(assert (=> d!765185 m!3043299))

(declare-fun m!3043301 () Bool)

(assert (=> d!765185 m!3043301))

(assert (=> d!765185 m!3042277))

(declare-fun m!3043303 () Bool)

(assert (=> d!765185 m!3043303))

(declare-fun m!3043305 () Bool)

(assert (=> d!765185 m!3043305))

(declare-fun m!3043307 () Bool)

(assert (=> b!2676518 m!3043307))

(declare-fun m!3043309 () Bool)

(assert (=> b!2676518 m!3043309))

(assert (=> b!2676515 m!3043307))

(declare-fun m!3043311 () Bool)

(assert (=> b!2676515 m!3043311))

(assert (=> b!2676515 m!3043311))

(declare-fun m!3043313 () Bool)

(assert (=> b!2676515 m!3043313))

(assert (=> b!2676515 m!3043313))

(declare-fun m!3043315 () Bool)

(assert (=> b!2676515 m!3043315))

(assert (=> b!2676513 m!3042277))

(declare-fun m!3043317 () Bool)

(assert (=> b!2676513 m!3043317))

(declare-fun m!3043319 () Bool)

(assert (=> b!2676513 m!3043319))

(declare-fun m!3043321 () Bool)

(assert (=> b!2676513 m!3043321))

(declare-fun m!3043323 () Bool)

(assert (=> b!2676513 m!3043323))

(declare-fun m!3043325 () Bool)

(assert (=> b!2676513 m!3043325))

(assert (=> b!2676513 m!3043319))

(assert (=> b!2676513 m!3042277))

(assert (=> b!2676513 m!3042277))

(assert (=> b!2676513 m!3042385))

(declare-fun m!3043327 () Bool)

(assert (=> b!2676513 m!3043327))

(assert (=> b!2676513 m!3043321))

(declare-fun m!3043329 () Bool)

(assert (=> b!2676513 m!3043329))

(assert (=> b!2676513 m!3043321))

(declare-fun m!3043331 () Bool)

(assert (=> b!2676513 m!3043331))

(assert (=> b!2676513 m!3043321))

(assert (=> b!2676513 m!3042277))

(assert (=> b!2676513 m!3042385))

(assert (=> b!2676512 m!3043307))

(declare-fun m!3043333 () Bool)

(assert (=> b!2676512 m!3043333))

(assert (=> b!2676512 m!3042277))

(assert (=> b!2676512 m!3042385))

(assert (=> b!2676517 m!3043307))

(assert (=> b!2676517 m!3043311))

(assert (=> b!2676517 m!3043311))

(assert (=> b!2676517 m!3043313))

(assert (=> b!2676517 m!3043313))

(declare-fun m!3043335 () Bool)

(assert (=> b!2676517 m!3043335))

(assert (=> b!2676519 m!3043307))

(assert (=> b!2676511 m!3043319))

(assert (=> b!2676511 m!3042277))

(assert (=> b!2676511 m!3042385))

(assert (=> b!2676511 m!3043319))

(assert (=> b!2676511 m!3042277))

(assert (=> b!2676511 m!3042277))

(assert (=> b!2676511 m!3042385))

(assert (=> b!2676511 m!3043327))

(declare-fun m!3043337 () Bool)

(assert (=> b!2676511 m!3043337))

(assert (=> b!2676514 m!3043307))

(declare-fun m!3043339 () Bool)

(assert (=> b!2676514 m!3043339))

(assert (=> b!2676514 m!3043339))

(declare-fun m!3043341 () Bool)

(assert (=> b!2676514 m!3043341))

(assert (=> bm!172616 d!765185))

(declare-fun d!765249 () Bool)

(assert (=> d!765249 (= (isEmpty!17629 (originalCharacters!5471 separatorToken!152)) ((_ is Nil!30798) (originalCharacters!5471 separatorToken!152)))))

(assert (=> d!765053 d!765249))

(assert (=> bs!479791 d!765057))

(assert (=> b!2675868 d!765105))

(declare-fun b!2676529 () Bool)

(declare-fun e!1687136 () Bool)

(declare-fun e!1687134 () Bool)

(assert (=> b!2676529 (= e!1687136 e!1687134)))

(declare-fun res!1125303 () Bool)

(assert (=> b!2676529 (=> (not res!1125303) (not e!1687134))))

(declare-fun lt!942434 () Option!6096)

(assert (=> b!2676529 (= res!1125303 (isDefined!4843 lt!942434))))

(declare-fun b!2676530 () Bool)

(declare-fun res!1125301 () Bool)

(assert (=> b!2676530 (=> (not res!1125301) (not e!1687134))))

(assert (=> b!2676530 (= res!1125301 (= (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942434)))) (originalCharacters!5471 (_1!17668 (get!9679 lt!942434)))))))

(declare-fun b!2676531 () Bool)

(declare-fun res!1125307 () Bool)

(assert (=> b!2676531 (=> (not res!1125307) (not e!1687134))))

(assert (=> b!2676531 (= res!1125307 (= (++!7517 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942434)))) (_2!17668 (get!9679 lt!942434))) (++!7517 lt!942160 lt!942166)))))

(declare-fun b!2676532 () Bool)

(assert (=> b!2676532 (= e!1687134 (contains!5926 (t!223826 rules!1712) (rule!7113 (_1!17668 (get!9679 lt!942434)))))))

(declare-fun b!2676533 () Bool)

(declare-fun res!1125305 () Bool)

(assert (=> b!2676533 (=> (not res!1125305) (not e!1687134))))

(assert (=> b!2676533 (= res!1125305 (< (size!23800 (_2!17668 (get!9679 lt!942434))) (size!23800 (++!7517 lt!942160 lt!942166))))))

(declare-fun d!765251 () Bool)

(assert (=> d!765251 e!1687136))

(declare-fun res!1125302 () Bool)

(assert (=> d!765251 (=> res!1125302 e!1687136)))

(assert (=> d!765251 (= res!1125302 (isEmpty!17624 lt!942434))))

(declare-fun e!1687135 () Option!6096)

(assert (=> d!765251 (= lt!942434 e!1687135)))

(declare-fun c!431238 () Bool)

(assert (=> d!765251 (= c!431238 (and ((_ is Cons!30799) (t!223826 rules!1712)) ((_ is Nil!30799) (t!223826 (t!223826 rules!1712)))))))

(declare-fun lt!942437 () Unit!45011)

(declare-fun lt!942435 () Unit!45011)

(assert (=> d!765251 (= lt!942437 lt!942435)))

(assert (=> d!765251 (isPrefix!2458 (++!7517 lt!942160 lt!942166) (++!7517 lt!942160 lt!942166))))

(assert (=> d!765251 (= lt!942435 (lemmaIsPrefixRefl!1584 (++!7517 lt!942160 lt!942166) (++!7517 lt!942160 lt!942166)))))

(assert (=> d!765251 (rulesValidInductive!1638 thiss!14116 (t!223826 rules!1712))))

(assert (=> d!765251 (= (maxPrefix!2340 thiss!14116 (t!223826 rules!1712) (++!7517 lt!942160 lt!942166)) lt!942434)))

(declare-fun call!172667 () Option!6096)

(declare-fun bm!172662 () Bool)

(assert (=> bm!172662 (= call!172667 (maxPrefixOneRule!1487 thiss!14116 (h!36219 (t!223826 rules!1712)) (++!7517 lt!942160 lt!942166)))))

(declare-fun b!2676534 () Bool)

(assert (=> b!2676534 (= e!1687135 call!172667)))

(declare-fun b!2676535 () Bool)

(declare-fun lt!942438 () Option!6096)

(declare-fun lt!942436 () Option!6096)

(assert (=> b!2676535 (= e!1687135 (ite (and ((_ is None!6095) lt!942438) ((_ is None!6095) lt!942436)) None!6095 (ite ((_ is None!6095) lt!942436) lt!942438 (ite ((_ is None!6095) lt!942438) lt!942436 (ite (>= (size!23799 (_1!17668 (v!32652 lt!942438))) (size!23799 (_1!17668 (v!32652 lt!942436)))) lt!942438 lt!942436)))))))

(assert (=> b!2676535 (= lt!942438 call!172667)))

(assert (=> b!2676535 (= lt!942436 (maxPrefix!2340 thiss!14116 (t!223826 (t!223826 rules!1712)) (++!7517 lt!942160 lt!942166)))))

(declare-fun b!2676536 () Bool)

(declare-fun res!1125304 () Bool)

(assert (=> b!2676536 (=> (not res!1125304) (not e!1687134))))

(assert (=> b!2676536 (= res!1125304 (= (value!151697 (_1!17668 (get!9679 lt!942434))) (apply!7387 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942434)))) (seqFromList!3207 (originalCharacters!5471 (_1!17668 (get!9679 lt!942434)))))))))

(declare-fun b!2676537 () Bool)

(declare-fun res!1125306 () Bool)

(assert (=> b!2676537 (=> (not res!1125306) (not e!1687134))))

(assert (=> b!2676537 (= res!1125306 (matchR!3629 (regex!4705 (rule!7113 (_1!17668 (get!9679 lt!942434)))) (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942434))))))))

(assert (= (and d!765251 c!431238) b!2676534))

(assert (= (and d!765251 (not c!431238)) b!2676535))

(assert (= (or b!2676534 b!2676535) bm!172662))

(assert (= (and d!765251 (not res!1125302)) b!2676529))

(assert (= (and b!2676529 res!1125303) b!2676530))

(assert (= (and b!2676530 res!1125301) b!2676533))

(assert (= (and b!2676533 res!1125305) b!2676531))

(assert (= (and b!2676531 res!1125307) b!2676536))

(assert (= (and b!2676536 res!1125304) b!2676537))

(assert (= (and b!2676537 res!1125306) b!2676532))

(declare-fun m!3043353 () Bool)

(assert (=> d!765251 m!3043353))

(assert (=> d!765251 m!3042277))

(assert (=> d!765251 m!3042277))

(assert (=> d!765251 m!3042365))

(assert (=> d!765251 m!3042277))

(assert (=> d!765251 m!3042277))

(assert (=> d!765251 m!3042367))

(declare-fun m!3043355 () Bool)

(assert (=> d!765251 m!3043355))

(assert (=> bm!172662 m!3042277))

(declare-fun m!3043357 () Bool)

(assert (=> bm!172662 m!3043357))

(declare-fun m!3043359 () Bool)

(assert (=> b!2676531 m!3043359))

(declare-fun m!3043361 () Bool)

(assert (=> b!2676531 m!3043361))

(assert (=> b!2676531 m!3043361))

(declare-fun m!3043363 () Bool)

(assert (=> b!2676531 m!3043363))

(assert (=> b!2676531 m!3043363))

(declare-fun m!3043365 () Bool)

(assert (=> b!2676531 m!3043365))

(assert (=> b!2676532 m!3043359))

(declare-fun m!3043367 () Bool)

(assert (=> b!2676532 m!3043367))

(assert (=> b!2676533 m!3043359))

(declare-fun m!3043369 () Bool)

(assert (=> b!2676533 m!3043369))

(assert (=> b!2676533 m!3042277))

(assert (=> b!2676533 m!3042385))

(assert (=> b!2676530 m!3043359))

(assert (=> b!2676530 m!3043361))

(assert (=> b!2676530 m!3043361))

(assert (=> b!2676530 m!3043363))

(assert (=> b!2676536 m!3043359))

(declare-fun m!3043371 () Bool)

(assert (=> b!2676536 m!3043371))

(assert (=> b!2676536 m!3043371))

(declare-fun m!3043373 () Bool)

(assert (=> b!2676536 m!3043373))

(assert (=> b!2676537 m!3043359))

(assert (=> b!2676537 m!3043361))

(assert (=> b!2676537 m!3043361))

(assert (=> b!2676537 m!3043363))

(assert (=> b!2676537 m!3043363))

(declare-fun m!3043375 () Bool)

(assert (=> b!2676537 m!3043375))

(assert (=> b!2676535 m!3042277))

(declare-fun m!3043377 () Bool)

(assert (=> b!2676535 m!3043377))

(declare-fun m!3043379 () Bool)

(assert (=> b!2676529 m!3043379))

(assert (=> b!2675863 d!765251))

(declare-fun d!765259 () Bool)

(assert (=> d!765259 true))

(declare-fun lambda!99986 () Int)

(declare-fun order!16997 () Int)

(declare-fun dynLambda!13390 (Int Int) Int)

(assert (=> d!765259 (< (dynLambda!13382 order!16987 (toValue!6651 (transformation!4705 (h!36219 rules!1712)))) (dynLambda!13390 order!16997 lambda!99986))))

(declare-fun Forall2!795 (Int) Bool)

(assert (=> d!765259 (= (equivClasses!1851 (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toValue!6651 (transformation!4705 (h!36219 rules!1712)))) (Forall2!795 lambda!99986))))

(declare-fun bs!479826 () Bool)

(assert (= bs!479826 d!765259))

(declare-fun m!3043381 () Bool)

(assert (=> bs!479826 m!3043381))

(assert (=> b!2675957 d!765259))

(declare-fun d!765261 () Bool)

(declare-fun list!11641 (Conc!9641) List!30900)

(assert (=> d!765261 (= (list!11639 lt!942332) (list!11641 (c!431110 lt!942332)))))

(declare-fun bs!479827 () Bool)

(assert (= bs!479827 d!765261))

(declare-fun m!3043383 () Bool)

(assert (=> bs!479827 m!3043383))

(assert (=> d!765075 d!765261))

(declare-fun d!765263 () Bool)

(declare-fun e!1687144 () Bool)

(assert (=> d!765263 e!1687144))

(declare-fun res!1125312 () Bool)

(assert (=> d!765263 (=> (not res!1125312) (not e!1687144))))

(declare-fun lt!942458 () BalanceConc!18896)

(assert (=> d!765263 (= res!1125312 (= (list!11639 lt!942458) (Cons!30800 (h!36220 l!4335) Nil!30800)))))

(declare-fun choose!15853 (Token!8880) BalanceConc!18896)

(assert (=> d!765263 (= lt!942458 (choose!15853 (h!36220 l!4335)))))

(assert (=> d!765263 (= (singleton!932 (h!36220 l!4335)) lt!942458)))

(declare-fun b!2676550 () Bool)

(assert (=> b!2676550 (= e!1687144 (isBalanced!2921 (c!431110 lt!942458)))))

(assert (= (and d!765263 res!1125312) b!2676550))

(declare-fun m!3043413 () Bool)

(assert (=> d!765263 m!3043413))

(declare-fun m!3043415 () Bool)

(assert (=> d!765263 m!3043415))

(declare-fun m!3043417 () Bool)

(assert (=> b!2676550 m!3043417))

(assert (=> d!765075 d!765263))

(declare-fun d!765271 () Bool)

(assert (=> d!765271 (= (isEmpty!17632 (list!11639 (_1!17669 (lex!1937 thiss!14116 rules!1712 (seqFromList!3207 lt!942160))))) ((_ is Nil!30800) (list!11639 (_1!17669 (lex!1937 thiss!14116 rules!1712 (seqFromList!3207 lt!942160))))))))

(assert (=> d!765063 d!765271))

(declare-fun d!765277 () Bool)

(assert (=> d!765277 (= (list!11639 (_1!17669 (lex!1937 thiss!14116 rules!1712 (seqFromList!3207 lt!942160)))) (list!11641 (c!431110 (_1!17669 (lex!1937 thiss!14116 rules!1712 (seqFromList!3207 lt!942160))))))))

(declare-fun bs!479831 () Bool)

(assert (= bs!479831 d!765277))

(declare-fun m!3043425 () Bool)

(assert (=> bs!479831 m!3043425))

(assert (=> d!765063 d!765277))

(declare-fun d!765279 () Bool)

(declare-fun lt!942463 () Bool)

(assert (=> d!765279 (= lt!942463 (isEmpty!17632 (list!11641 (c!431110 (_1!17669 (lex!1937 thiss!14116 rules!1712 (seqFromList!3207 lt!942160)))))))))

(declare-fun size!23807 (Conc!9641) Int)

(assert (=> d!765279 (= lt!942463 (= (size!23807 (c!431110 (_1!17669 (lex!1937 thiss!14116 rules!1712 (seqFromList!3207 lt!942160))))) 0))))

(assert (=> d!765279 (= (isEmpty!17633 (c!431110 (_1!17669 (lex!1937 thiss!14116 rules!1712 (seqFromList!3207 lt!942160))))) lt!942463)))

(declare-fun bs!479834 () Bool)

(assert (= bs!479834 d!765279))

(assert (=> bs!479834 m!3043425))

(assert (=> bs!479834 m!3043425))

(declare-fun m!3043437 () Bool)

(assert (=> bs!479834 m!3043437))

(declare-fun m!3043439 () Bool)

(assert (=> bs!479834 m!3043439))

(assert (=> d!765063 d!765279))

(declare-fun d!765287 () Bool)

(declare-fun e!1687173 () Bool)

(assert (=> d!765287 e!1687173))

(declare-fun c!431259 () Bool)

(assert (=> d!765287 (= c!431259 ((_ is EmptyExpr!7849) (regex!4705 (rule!7113 (_1!17668 (get!9679 lt!942180))))))))

(declare-fun lt!942475 () Bool)

(declare-fun e!1687178 () Bool)

(assert (=> d!765287 (= lt!942475 e!1687178)))

(declare-fun c!431260 () Bool)

(assert (=> d!765287 (= c!431260 (isEmpty!17629 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180))))))))

(declare-fun validRegex!3301 (Regex!7849) Bool)

(assert (=> d!765287 (validRegex!3301 (regex!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))))

(assert (=> d!765287 (= (matchR!3629 (regex!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))) (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180))))) lt!942475)))

(declare-fun b!2676602 () Bool)

(declare-fun call!172670 () Bool)

(assert (=> b!2676602 (= e!1687173 (= lt!942475 call!172670))))

(declare-fun b!2676603 () Bool)

(declare-fun e!1687176 () Bool)

(assert (=> b!2676603 (= e!1687176 (not lt!942475))))

(declare-fun b!2676604 () Bool)

(declare-fun e!1687172 () Bool)

(declare-fun e!1687177 () Bool)

(assert (=> b!2676604 (= e!1687172 e!1687177)))

(declare-fun res!1125335 () Bool)

(assert (=> b!2676604 (=> (not res!1125335) (not e!1687177))))

(assert (=> b!2676604 (= res!1125335 (not lt!942475))))

(declare-fun b!2676605 () Bool)

(declare-fun e!1687175 () Bool)

(declare-fun head!6085 (List!30898) C!15856)

(assert (=> b!2676605 (= e!1687175 (= (head!6085 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180))))) (c!431109 (regex!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))))))

(declare-fun b!2676606 () Bool)

(declare-fun res!1125337 () Bool)

(assert (=> b!2676606 (=> (not res!1125337) (not e!1687175))))

(declare-fun tail!4323 (List!30898) List!30898)

(assert (=> b!2676606 (= res!1125337 (isEmpty!17629 (tail!4323 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180)))))))))

(declare-fun b!2676607 () Bool)

(declare-fun res!1125336 () Bool)

(assert (=> b!2676607 (=> res!1125336 e!1687172)))

(assert (=> b!2676607 (= res!1125336 e!1687175)))

(declare-fun res!1125339 () Bool)

(assert (=> b!2676607 (=> (not res!1125339) (not e!1687175))))

(assert (=> b!2676607 (= res!1125339 lt!942475)))

(declare-fun b!2676608 () Bool)

(assert (=> b!2676608 (= e!1687173 e!1687176)))

(declare-fun c!431258 () Bool)

(assert (=> b!2676608 (= c!431258 ((_ is EmptyLang!7849) (regex!4705 (rule!7113 (_1!17668 (get!9679 lt!942180))))))))

(declare-fun b!2676609 () Bool)

(declare-fun res!1125338 () Bool)

(declare-fun e!1687174 () Bool)

(assert (=> b!2676609 (=> res!1125338 e!1687174)))

(assert (=> b!2676609 (= res!1125338 (not (isEmpty!17629 (tail!4323 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180))))))))))

(declare-fun b!2676610 () Bool)

(declare-fun res!1125333 () Bool)

(assert (=> b!2676610 (=> (not res!1125333) (not e!1687175))))

(assert (=> b!2676610 (= res!1125333 (not call!172670))))

(declare-fun b!2676611 () Bool)

(declare-fun res!1125332 () Bool)

(assert (=> b!2676611 (=> res!1125332 e!1687172)))

(assert (=> b!2676611 (= res!1125332 (not ((_ is ElementMatch!7849) (regex!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))))))

(assert (=> b!2676611 (= e!1687176 e!1687172)))

(declare-fun bm!172665 () Bool)

(assert (=> bm!172665 (= call!172670 (isEmpty!17629 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180))))))))

(declare-fun b!2676612 () Bool)

(assert (=> b!2676612 (= e!1687177 e!1687174)))

(declare-fun res!1125334 () Bool)

(assert (=> b!2676612 (=> res!1125334 e!1687174)))

(assert (=> b!2676612 (= res!1125334 call!172670)))

(declare-fun b!2676613 () Bool)

(assert (=> b!2676613 (= e!1687174 (not (= (head!6085 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180))))) (c!431109 (regex!4705 (rule!7113 (_1!17668 (get!9679 lt!942180))))))))))

(declare-fun b!2676614 () Bool)

(declare-fun derivativeStep!2238 (Regex!7849 C!15856) Regex!7849)

(assert (=> b!2676614 (= e!1687178 (matchR!3629 (derivativeStep!2238 (regex!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))) (head!6085 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180)))))) (tail!4323 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180)))))))))

(declare-fun b!2676615 () Bool)

(declare-fun nullable!2592 (Regex!7849) Bool)

(assert (=> b!2676615 (= e!1687178 (nullable!2592 (regex!4705 (rule!7113 (_1!17668 (get!9679 lt!942180))))))))

(assert (= (and d!765287 c!431260) b!2676615))

(assert (= (and d!765287 (not c!431260)) b!2676614))

(assert (= (and d!765287 c!431259) b!2676602))

(assert (= (and d!765287 (not c!431259)) b!2676608))

(assert (= (and b!2676608 c!431258) b!2676603))

(assert (= (and b!2676608 (not c!431258)) b!2676611))

(assert (= (and b!2676611 (not res!1125332)) b!2676607))

(assert (= (and b!2676607 res!1125339) b!2676610))

(assert (= (and b!2676610 res!1125333) b!2676606))

(assert (= (and b!2676606 res!1125337) b!2676605))

(assert (= (and b!2676607 (not res!1125336)) b!2676604))

(assert (= (and b!2676604 res!1125335) b!2676612))

(assert (= (and b!2676612 (not res!1125334)) b!2676609))

(assert (= (and b!2676609 (not res!1125338)) b!2676613))

(assert (= (or b!2676602 b!2676610 b!2676612) bm!172665))

(assert (=> b!2676614 m!3042377))

(declare-fun m!3043497 () Bool)

(assert (=> b!2676614 m!3043497))

(assert (=> b!2676614 m!3043497))

(declare-fun m!3043499 () Bool)

(assert (=> b!2676614 m!3043499))

(assert (=> b!2676614 m!3042377))

(declare-fun m!3043501 () Bool)

(assert (=> b!2676614 m!3043501))

(assert (=> b!2676614 m!3043499))

(assert (=> b!2676614 m!3043501))

(declare-fun m!3043503 () Bool)

(assert (=> b!2676614 m!3043503))

(declare-fun m!3043505 () Bool)

(assert (=> b!2676615 m!3043505))

(assert (=> b!2676613 m!3042377))

(assert (=> b!2676613 m!3043497))

(assert (=> b!2676606 m!3042377))

(assert (=> b!2676606 m!3043501))

(assert (=> b!2676606 m!3043501))

(declare-fun m!3043507 () Bool)

(assert (=> b!2676606 m!3043507))

(assert (=> b!2676605 m!3042377))

(assert (=> b!2676605 m!3043497))

(assert (=> bm!172665 m!3042377))

(declare-fun m!3043509 () Bool)

(assert (=> bm!172665 m!3043509))

(assert (=> b!2676609 m!3042377))

(assert (=> b!2676609 m!3043501))

(assert (=> b!2676609 m!3043501))

(assert (=> b!2676609 m!3043507))

(assert (=> d!765287 m!3042377))

(assert (=> d!765287 m!3043509))

(declare-fun m!3043511 () Bool)

(assert (=> d!765287 m!3043511))

(assert (=> b!2675865 d!765287))

(declare-fun d!765301 () Bool)

(assert (=> d!765301 (= (get!9679 lt!942180) (v!32652 lt!942180))))

(assert (=> b!2675865 d!765301))

(declare-fun d!765303 () Bool)

(assert (=> d!765303 (= (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180)))) (list!11637 (c!431108 (charsOf!2968 (_1!17668 (get!9679 lt!942180))))))))

(declare-fun bs!479840 () Bool)

(assert (= bs!479840 d!765303))

(declare-fun m!3043513 () Bool)

(assert (=> bs!479840 m!3043513))

(assert (=> b!2675865 d!765303))

(declare-fun d!765305 () Bool)

(declare-fun lt!942476 () BalanceConc!18894)

(assert (=> d!765305 (= (list!11635 lt!942476) (originalCharacters!5471 (_1!17668 (get!9679 lt!942180))))))

(assert (=> d!765305 (= lt!942476 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180))))) (value!151697 (_1!17668 (get!9679 lt!942180)))))))

(assert (=> d!765305 (= (charsOf!2968 (_1!17668 (get!9679 lt!942180))) lt!942476)))

(declare-fun b_lambda!81679 () Bool)

(assert (=> (not b_lambda!81679) (not d!765305)))

(declare-fun tb!150163 () Bool)

(declare-fun t!223938 () Bool)

(assert (=> (and b!2675776 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toChars!6510 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))) t!223938) tb!150163))

(declare-fun b!2676616 () Bool)

(declare-fun e!1687179 () Bool)

(declare-fun tp!846280 () Bool)

(assert (=> b!2676616 (= e!1687179 (and (inv!41817 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180))))) (value!151697 (_1!17668 (get!9679 lt!942180)))))) tp!846280))))

(declare-fun result!185474 () Bool)

(assert (=> tb!150163 (= result!185474 (and (inv!41818 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180))))) (value!151697 (_1!17668 (get!9679 lt!942180))))) e!1687179))))

(assert (= tb!150163 b!2676616))

(declare-fun m!3043515 () Bool)

(assert (=> b!2676616 m!3043515))

(declare-fun m!3043517 () Bool)

(assert (=> tb!150163 m!3043517))

(assert (=> d!765305 t!223938))

(declare-fun b_and!197957 () Bool)

(assert (= b_and!197935 (and (=> t!223938 result!185474) b_and!197957)))

(declare-fun t!223940 () Bool)

(declare-fun tb!150165 () Bool)

(assert (=> (and b!2675770 (= (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toChars!6510 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))) t!223940) tb!150165))

(declare-fun result!185476 () Bool)

(assert (= result!185476 result!185474))

(assert (=> d!765305 t!223940))

(declare-fun b_and!197959 () Bool)

(assert (= b_and!197931 (and (=> t!223940 result!185476) b_and!197959)))

(declare-fun t!223942 () Bool)

(declare-fun tb!150167 () Bool)

(assert (=> (and b!2676266 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712)))) (toChars!6510 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))) t!223942) tb!150167))

(declare-fun result!185478 () Bool)

(assert (= result!185478 result!185474))

(assert (=> d!765305 t!223942))

(declare-fun b_and!197961 () Bool)

(assert (= b_and!197929 (and (=> t!223942 result!185478) b_and!197961)))

(declare-fun tb!150169 () Bool)

(declare-fun t!223944 () Bool)

(assert (=> (and b!2675783 (= (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (toChars!6510 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))) t!223944) tb!150169))

(declare-fun result!185480 () Bool)

(assert (= result!185480 result!185474))

(assert (=> d!765305 t!223944))

(declare-fun b_and!197963 () Bool)

(assert (= b_and!197927 (and (=> t!223944 result!185480) b_and!197963)))

(declare-fun tb!150171 () Bool)

(declare-fun t!223946 () Bool)

(assert (=> (and b!2676285 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (toChars!6510 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))) t!223946) tb!150171))

(declare-fun result!185482 () Bool)

(assert (= result!185482 result!185474))

(assert (=> d!765305 t!223946))

(declare-fun b_and!197965 () Bool)

(assert (= b_and!197933 (and (=> t!223946 result!185482) b_and!197965)))

(declare-fun m!3043519 () Bool)

(assert (=> d!765305 m!3043519))

(declare-fun m!3043521 () Bool)

(assert (=> d!765305 m!3043521))

(assert (=> b!2675865 d!765305))

(declare-fun d!765307 () Bool)

(declare-fun isBalanced!2922 (Conc!9640) Bool)

(assert (=> d!765307 (= (inv!41818 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152))) (isBalanced!2922 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152)))))))

(declare-fun bs!479841 () Bool)

(assert (= bs!479841 d!765307))

(declare-fun m!3043523 () Bool)

(assert (=> bs!479841 m!3043523))

(assert (=> tb!150091 d!765307))

(declare-fun d!765309 () Bool)

(declare-fun lt!942479 () Bool)

(assert (=> d!765309 (= lt!942479 (isEmpty!17629 (list!11635 (_2!17669 lt!942245))))))

(declare-fun isEmpty!17634 (Conc!9640) Bool)

(assert (=> d!765309 (= lt!942479 (isEmpty!17634 (c!431108 (_2!17669 lt!942245))))))

(assert (=> d!765309 (= (isEmpty!17630 (_2!17669 lt!942245)) lt!942479)))

(declare-fun bs!479842 () Bool)

(assert (= bs!479842 d!765309))

(declare-fun m!3043525 () Bool)

(assert (=> bs!479842 m!3043525))

(assert (=> bs!479842 m!3043525))

(declare-fun m!3043527 () Bool)

(assert (=> bs!479842 m!3043527))

(declare-fun m!3043529 () Bool)

(assert (=> bs!479842 m!3043529))

(assert (=> b!2676014 d!765309))

(declare-fun d!765311 () Bool)

(assert (=> d!765311 (= (list!11635 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152))) (list!11637 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152)))))))

(declare-fun bs!479843 () Bool)

(assert (= bs!479843 d!765311))

(declare-fun m!3043531 () Bool)

(assert (=> bs!479843 m!3043531))

(assert (=> b!2675992 d!765311))

(declare-fun d!765313 () Bool)

(assert (=> d!765313 (= (list!11635 lt!942220) (list!11637 (c!431108 lt!942220)))))

(declare-fun bs!479844 () Bool)

(assert (= bs!479844 d!765313))

(declare-fun m!3043533 () Bool)

(assert (=> bs!479844 m!3043533))

(assert (=> d!765019 d!765313))

(declare-fun d!765315 () Bool)

(declare-fun res!1125340 () Bool)

(declare-fun e!1687180 () Bool)

(assert (=> d!765315 (=> res!1125340 e!1687180)))

(assert (=> d!765315 (= res!1125340 ((_ is Nil!30800) (t!223827 l!4335)))))

(assert (=> d!765315 (= (forall!6522 (t!223827 l!4335) lambda!99961) e!1687180)))

(declare-fun b!2676617 () Bool)

(declare-fun e!1687181 () Bool)

(assert (=> b!2676617 (= e!1687180 e!1687181)))

(declare-fun res!1125341 () Bool)

(assert (=> b!2676617 (=> (not res!1125341) (not e!1687181))))

(assert (=> b!2676617 (= res!1125341 (dynLambda!13386 lambda!99961 (h!36220 (t!223827 l!4335))))))

(declare-fun b!2676618 () Bool)

(assert (=> b!2676618 (= e!1687181 (forall!6522 (t!223827 (t!223827 l!4335)) lambda!99961))))

(assert (= (and d!765315 (not res!1125340)) b!2676617))

(assert (= (and b!2676617 res!1125341) b!2676618))

(declare-fun b_lambda!81681 () Bool)

(assert (=> (not b_lambda!81681) (not b!2676617)))

(declare-fun m!3043535 () Bool)

(assert (=> b!2676617 m!3043535))

(declare-fun m!3043537 () Bool)

(assert (=> b!2676618 m!3043537))

(assert (=> b!2676212 d!765315))

(declare-fun d!765317 () Bool)

(assert (=> d!765317 (dynLambda!13386 lambda!99962 (h!36220 l!4335))))

(assert (=> d!765317 true))

(declare-fun _$7!988 () Unit!45011)

(assert (=> d!765317 (= (choose!15850 l!4335 lambda!99962 (h!36220 l!4335)) _$7!988)))

(declare-fun b_lambda!81683 () Bool)

(assert (=> (not b_lambda!81683) (not d!765317)))

(declare-fun bs!479845 () Bool)

(assert (= bs!479845 d!765317))

(assert (=> bs!479845 m!3042399))

(assert (=> d!765009 d!765317))

(declare-fun d!765319 () Bool)

(declare-fun res!1125342 () Bool)

(declare-fun e!1687182 () Bool)

(assert (=> d!765319 (=> res!1125342 e!1687182)))

(assert (=> d!765319 (= res!1125342 ((_ is Nil!30800) l!4335))))

(assert (=> d!765319 (= (forall!6522 l!4335 lambda!99962) e!1687182)))

(declare-fun b!2676619 () Bool)

(declare-fun e!1687183 () Bool)

(assert (=> b!2676619 (= e!1687182 e!1687183)))

(declare-fun res!1125343 () Bool)

(assert (=> b!2676619 (=> (not res!1125343) (not e!1687183))))

(assert (=> b!2676619 (= res!1125343 (dynLambda!13386 lambda!99962 (h!36220 l!4335)))))

(declare-fun b!2676620 () Bool)

(assert (=> b!2676620 (= e!1687183 (forall!6522 (t!223827 l!4335) lambda!99962))))

(assert (= (and d!765319 (not res!1125342)) b!2676619))

(assert (= (and b!2676619 res!1125343) b!2676620))

(declare-fun b_lambda!81685 () Bool)

(assert (=> (not b_lambda!81685) (not b!2676619)))

(assert (=> b!2676619 m!3042399))

(declare-fun m!3043539 () Bool)

(assert (=> b!2676620 m!3043539))

(assert (=> d!765009 d!765319))

(declare-fun b!2676621 () Bool)

(declare-fun e!1687184 () Bool)

(assert (=> b!2676621 (= e!1687184 (inv!16 (value!151697 (h!36220 (t!223827 l!4335)))))))

(declare-fun b!2676622 () Bool)

(declare-fun e!1687185 () Bool)

(assert (=> b!2676622 (= e!1687185 (inv!17 (value!151697 (h!36220 (t!223827 l!4335)))))))

(declare-fun b!2676623 () Bool)

(assert (=> b!2676623 (= e!1687184 e!1687185)))

(declare-fun c!431261 () Bool)

(assert (=> b!2676623 (= c!431261 ((_ is IntegerValue!14782) (value!151697 (h!36220 (t!223827 l!4335)))))))

(declare-fun b!2676624 () Bool)

(declare-fun e!1687186 () Bool)

(assert (=> b!2676624 (= e!1687186 (inv!15 (value!151697 (h!36220 (t!223827 l!4335)))))))

(declare-fun b!2676625 () Bool)

(declare-fun res!1125344 () Bool)

(assert (=> b!2676625 (=> res!1125344 e!1687186)))

(assert (=> b!2676625 (= res!1125344 (not ((_ is IntegerValue!14783) (value!151697 (h!36220 (t!223827 l!4335))))))))

(assert (=> b!2676625 (= e!1687185 e!1687186)))

(declare-fun d!765321 () Bool)

(declare-fun c!431262 () Bool)

(assert (=> d!765321 (= c!431262 ((_ is IntegerValue!14781) (value!151697 (h!36220 (t!223827 l!4335)))))))

(assert (=> d!765321 (= (inv!21 (value!151697 (h!36220 (t!223827 l!4335)))) e!1687184)))

(assert (= (and d!765321 c!431262) b!2676621))

(assert (= (and d!765321 (not c!431262)) b!2676623))

(assert (= (and b!2676623 c!431261) b!2676622))

(assert (= (and b!2676623 (not c!431261)) b!2676625))

(assert (= (and b!2676625 (not res!1125344)) b!2676624))

(declare-fun m!3043541 () Bool)

(assert (=> b!2676621 m!3043541))

(declare-fun m!3043543 () Bool)

(assert (=> b!2676622 m!3043543))

(declare-fun m!3043545 () Bool)

(assert (=> b!2676624 m!3043545))

(assert (=> b!2676283 d!765321))

(declare-fun d!765323 () Bool)

(declare-fun lt!942482 () Int)

(declare-fun size!23808 (List!30900) Int)

(assert (=> d!765323 (= lt!942482 (size!23808 (list!11639 lt!942163)))))

(assert (=> d!765323 (= lt!942482 (size!23807 (c!431110 lt!942163)))))

(assert (=> d!765323 (= (size!23804 lt!942163) lt!942482)))

(declare-fun bs!479846 () Bool)

(assert (= bs!479846 d!765323))

(assert (=> bs!479846 m!3042725))

(assert (=> bs!479846 m!3042725))

(declare-fun m!3043547 () Bool)

(assert (=> bs!479846 m!3043547))

(declare-fun m!3043549 () Bool)

(assert (=> bs!479846 m!3043549))

(assert (=> d!765071 d!765323))

(declare-fun d!765325 () Bool)

(assert (=> d!765325 (= (list!11635 (BalanceConc!18895 Empty!9640)) (list!11637 (c!431108 (BalanceConc!18895 Empty!9640))))))

(declare-fun bs!479847 () Bool)

(assert (= bs!479847 d!765325))

(declare-fun m!3043551 () Bool)

(assert (=> bs!479847 m!3043551))

(assert (=> d!765071 d!765325))

(declare-fun d!765327 () Bool)

(assert (=> d!765327 (= (dropList!976 lt!942163 0) (drop!1673 (list!11641 (c!431110 lt!942163)) 0))))

(declare-fun bs!479848 () Bool)

(assert (= bs!479848 d!765327))

(declare-fun m!3043553 () Bool)

(assert (=> bs!479848 m!3043553))

(assert (=> bs!479848 m!3043553))

(declare-fun m!3043555 () Bool)

(assert (=> bs!479848 m!3043555))

(assert (=> d!765071 d!765327))

(declare-fun d!765329 () Bool)

(declare-fun lt!942495 () List!30898)

(assert (=> d!765329 (= lt!942495 (++!7517 (list!11635 (BalanceConc!18895 Empty!9640)) (printList!1194 thiss!14116 (dropList!976 lt!942163 0))))))

(declare-fun e!1687189 () List!30898)

(assert (=> d!765329 (= lt!942495 e!1687189)))

(declare-fun c!431265 () Bool)

(assert (=> d!765329 (= c!431265 ((_ is Cons!30800) (dropList!976 lt!942163 0)))))

(assert (=> d!765329 (= (printListTailRec!527 thiss!14116 (dropList!976 lt!942163 0) (list!11635 (BalanceConc!18895 Empty!9640))) lt!942495)))

(declare-fun b!2676630 () Bool)

(assert (=> b!2676630 (= e!1687189 (printListTailRec!527 thiss!14116 (t!223827 (dropList!976 lt!942163 0)) (++!7517 (list!11635 (BalanceConc!18895 Empty!9640)) (list!11635 (charsOf!2968 (h!36220 (dropList!976 lt!942163 0)))))))))

(declare-fun lt!942496 () List!30898)

(assert (=> b!2676630 (= lt!942496 (list!11635 (charsOf!2968 (h!36220 (dropList!976 lt!942163 0)))))))

(declare-fun lt!942494 () List!30898)

(assert (=> b!2676630 (= lt!942494 (printList!1194 thiss!14116 (t!223827 (dropList!976 lt!942163 0))))))

(declare-fun lt!942493 () Unit!45011)

(declare-fun lemmaConcatAssociativity!1514 (List!30898 List!30898 List!30898) Unit!45011)

(assert (=> b!2676630 (= lt!942493 (lemmaConcatAssociativity!1514 (list!11635 (BalanceConc!18895 Empty!9640)) lt!942496 lt!942494))))

(assert (=> b!2676630 (= (++!7517 (++!7517 (list!11635 (BalanceConc!18895 Empty!9640)) lt!942496) lt!942494) (++!7517 (list!11635 (BalanceConc!18895 Empty!9640)) (++!7517 lt!942496 lt!942494)))))

(declare-fun lt!942497 () Unit!45011)

(assert (=> b!2676630 (= lt!942497 lt!942493)))

(declare-fun b!2676631 () Bool)

(assert (=> b!2676631 (= e!1687189 (list!11635 (BalanceConc!18895 Empty!9640)))))

(assert (= (and d!765329 c!431265) b!2676630))

(assert (= (and d!765329 (not c!431265)) b!2676631))

(assert (=> d!765329 m!3042715))

(declare-fun m!3043557 () Bool)

(assert (=> d!765329 m!3043557))

(assert (=> d!765329 m!3042713))

(assert (=> d!765329 m!3043557))

(declare-fun m!3043559 () Bool)

(assert (=> d!765329 m!3043559))

(declare-fun m!3043561 () Bool)

(assert (=> b!2676630 m!3043561))

(declare-fun m!3043563 () Bool)

(assert (=> b!2676630 m!3043563))

(declare-fun m!3043565 () Bool)

(assert (=> b!2676630 m!3043565))

(declare-fun m!3043567 () Bool)

(assert (=> b!2676630 m!3043567))

(assert (=> b!2676630 m!3042713))

(assert (=> b!2676630 m!3043565))

(assert (=> b!2676630 m!3042713))

(declare-fun m!3043569 () Bool)

(assert (=> b!2676630 m!3043569))

(declare-fun m!3043571 () Bool)

(assert (=> b!2676630 m!3043571))

(assert (=> b!2676630 m!3042713))

(declare-fun m!3043573 () Bool)

(assert (=> b!2676630 m!3043573))

(assert (=> b!2676630 m!3043561))

(assert (=> b!2676630 m!3043569))

(assert (=> b!2676630 m!3042713))

(declare-fun m!3043575 () Bool)

(assert (=> b!2676630 m!3043575))

(declare-fun m!3043577 () Bool)

(assert (=> b!2676630 m!3043577))

(declare-fun m!3043579 () Bool)

(assert (=> b!2676630 m!3043579))

(assert (=> b!2676630 m!3043577))

(assert (=> b!2676630 m!3043573))

(assert (=> d!765071 d!765329))

(declare-fun d!765331 () Bool)

(assert (=> d!765331 (= (list!11635 lt!942318) (list!11637 (c!431108 lt!942318)))))

(declare-fun bs!479849 () Bool)

(assert (= bs!479849 d!765331))

(declare-fun m!3043581 () Bool)

(assert (=> bs!479849 m!3043581))

(assert (=> d!765071 d!765331))

(declare-fun d!765333 () Bool)

(declare-fun lt!942500 () Int)

(assert (=> d!765333 (>= lt!942500 0)))

(declare-fun e!1687192 () Int)

(assert (=> d!765333 (= lt!942500 e!1687192)))

(declare-fun c!431268 () Bool)

(assert (=> d!765333 (= c!431268 ((_ is Nil!30798) lt!942215))))

(assert (=> d!765333 (= (size!23800 lt!942215) lt!942500)))

(declare-fun b!2676636 () Bool)

(assert (=> b!2676636 (= e!1687192 0)))

(declare-fun b!2676637 () Bool)

(assert (=> b!2676637 (= e!1687192 (+ 1 (size!23800 (t!223825 lt!942215))))))

(assert (= (and d!765333 c!431268) b!2676636))

(assert (= (and d!765333 (not c!431268)) b!2676637))

(declare-fun m!3043583 () Bool)

(assert (=> b!2676637 m!3043583))

(assert (=> b!2675924 d!765333))

(declare-fun d!765335 () Bool)

(declare-fun lt!942501 () Int)

(assert (=> d!765335 (>= lt!942501 0)))

(declare-fun e!1687193 () Int)

(assert (=> d!765335 (= lt!942501 e!1687193)))

(declare-fun c!431269 () Bool)

(assert (=> d!765335 (= c!431269 ((_ is Nil!30798) lt!942160))))

(assert (=> d!765335 (= (size!23800 lt!942160) lt!942501)))

(declare-fun b!2676638 () Bool)

(assert (=> b!2676638 (= e!1687193 0)))

(declare-fun b!2676639 () Bool)

(assert (=> b!2676639 (= e!1687193 (+ 1 (size!23800 (t!223825 lt!942160))))))

(assert (= (and d!765335 c!431269) b!2676638))

(assert (= (and d!765335 (not c!431269)) b!2676639))

(declare-fun m!3043585 () Bool)

(assert (=> b!2676639 m!3043585))

(assert (=> b!2675924 d!765335))

(declare-fun d!765337 () Bool)

(declare-fun lt!942502 () Int)

(assert (=> d!765337 (>= lt!942502 0)))

(declare-fun e!1687194 () Int)

(assert (=> d!765337 (= lt!942502 e!1687194)))

(declare-fun c!431270 () Bool)

(assert (=> d!765337 (= c!431270 ((_ is Nil!30798) lt!942166))))

(assert (=> d!765337 (= (size!23800 lt!942166) lt!942502)))

(declare-fun b!2676640 () Bool)

(assert (=> b!2676640 (= e!1687194 0)))

(declare-fun b!2676641 () Bool)

(assert (=> b!2676641 (= e!1687194 (+ 1 (size!23800 (t!223825 lt!942166))))))

(assert (= (and d!765337 c!431270) b!2676640))

(assert (= (and d!765337 (not c!431270)) b!2676641))

(declare-fun m!3043587 () Bool)

(assert (=> b!2676641 m!3043587))

(assert (=> b!2675924 d!765337))

(declare-fun d!765339 () Bool)

(assert (=> d!765339 true))

(declare-fun lt!942505 () Bool)

(assert (=> d!765339 (= lt!942505 (rulesValidInductive!1638 thiss!14116 rules!1712))))

(declare-fun lambda!99990 () Int)

(declare-fun forall!6523 (List!30899 Int) Bool)

(assert (=> d!765339 (= lt!942505 (forall!6523 rules!1712 lambda!99990))))

(assert (=> d!765339 (= (rulesValid!1756 thiss!14116 rules!1712) lt!942505)))

(declare-fun bs!479850 () Bool)

(assert (= bs!479850 d!765339))

(assert (=> bs!479850 m!3042369))

(declare-fun m!3043589 () Bool)

(assert (=> bs!479850 m!3043589))

(assert (=> d!765099 d!765339))

(declare-fun d!765341 () Bool)

(assert (=> d!765341 (= (list!11635 (ite c!431129 call!172636 call!172635)) (list!11637 (c!431108 (ite c!431129 call!172636 call!172635))))))

(declare-fun bs!479851 () Bool)

(assert (= bs!479851 d!765341))

(declare-fun m!3043591 () Bool)

(assert (=> bs!479851 m!3043591))

(assert (=> bm!172628 d!765341))

(declare-fun d!765343 () Bool)

(assert (=> d!765343 true))

(declare-fun lambda!99993 () Int)

(declare-fun order!16999 () Int)

(declare-fun dynLambda!13392 (Int Int) Int)

(assert (=> d!765343 (< (dynLambda!13384 order!16991 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152)))) (dynLambda!13392 order!16999 lambda!99993))))

(assert (=> d!765343 true))

(assert (=> d!765343 (< (dynLambda!13382 order!16987 (toValue!6651 (transformation!4705 (rule!7113 separatorToken!152)))) (dynLambda!13392 order!16999 lambda!99993))))

(declare-fun Forall!1196 (Int) Bool)

(assert (=> d!765343 (= (semiInverseModEq!1950 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (toValue!6651 (transformation!4705 (rule!7113 separatorToken!152)))) (Forall!1196 lambda!99993))))

(declare-fun bs!479852 () Bool)

(assert (= bs!479852 d!765343))

(declare-fun m!3043593 () Bool)

(assert (=> bs!479852 m!3043593))

(assert (=> d!765025 d!765343))

(declare-fun d!765345 () Bool)

(assert (=> d!765345 (= (list!11635 e!1686741) (list!11637 (c!431108 e!1686741)))))

(declare-fun bs!479853 () Bool)

(assert (= bs!479853 d!765345))

(declare-fun m!3043595 () Bool)

(assert (=> bs!479853 m!3043595))

(assert (=> bm!172629 d!765345))

(declare-fun d!765347 () Bool)

(assert (=> d!765347 (= (list!11639 (_1!17669 lt!942284)) (list!11641 (c!431110 (_1!17669 lt!942284))))))

(declare-fun bs!479854 () Bool)

(assert (= bs!479854 d!765347))

(declare-fun m!3043597 () Bool)

(assert (=> bs!479854 m!3043597))

(assert (=> b!2676098 d!765347))

(declare-fun b!2676658 () Bool)

(declare-fun e!1687202 () Bool)

(declare-fun lt!942512 () tuple2!30258)

(assert (=> b!2676658 (= e!1687202 (= (_2!17671 lt!942512) (list!11635 (seqFromList!3207 lt!942160))))))

(declare-fun b!2676659 () Bool)

(declare-fun e!1687201 () tuple2!30258)

(declare-fun lt!942514 () Option!6096)

(declare-fun lt!942513 () tuple2!30258)

(assert (=> b!2676659 (= e!1687201 (tuple2!30259 (Cons!30800 (_1!17668 (v!32652 lt!942514)) (_1!17671 lt!942513)) (_2!17671 lt!942513)))))

(assert (=> b!2676659 (= lt!942513 (lexList!1176 thiss!14116 rules!1712 (_2!17668 (v!32652 lt!942514))))))

(declare-fun b!2676660 () Bool)

(declare-fun e!1687203 () Bool)

(assert (=> b!2676660 (= e!1687203 (not (isEmpty!17632 (_1!17671 lt!942512))))))

(declare-fun d!765349 () Bool)

(assert (=> d!765349 e!1687202))

(declare-fun c!431276 () Bool)

(assert (=> d!765349 (= c!431276 (> (size!23808 (_1!17671 lt!942512)) 0))))

(assert (=> d!765349 (= lt!942512 e!1687201)))

(declare-fun c!431275 () Bool)

(assert (=> d!765349 (= c!431275 ((_ is Some!6095) lt!942514))))

(assert (=> d!765349 (= lt!942514 (maxPrefix!2340 thiss!14116 rules!1712 (list!11635 (seqFromList!3207 lt!942160))))))

(assert (=> d!765349 (= (lexList!1176 thiss!14116 rules!1712 (list!11635 (seqFromList!3207 lt!942160))) lt!942512)))

(declare-fun b!2676661 () Bool)

(assert (=> b!2676661 (= e!1687201 (tuple2!30259 Nil!30800 (list!11635 (seqFromList!3207 lt!942160))))))

(declare-fun b!2676662 () Bool)

(assert (=> b!2676662 (= e!1687202 e!1687203)))

(declare-fun res!1125347 () Bool)

(assert (=> b!2676662 (= res!1125347 (< (size!23800 (_2!17671 lt!942512)) (size!23800 (list!11635 (seqFromList!3207 lt!942160)))))))

(assert (=> b!2676662 (=> (not res!1125347) (not e!1687203))))

(assert (= (and d!765349 c!431275) b!2676659))

(assert (= (and d!765349 (not c!431275)) b!2676661))

(assert (= (and d!765349 c!431276) b!2676662))

(assert (= (and d!765349 (not c!431276)) b!2676658))

(assert (= (and b!2676662 res!1125347) b!2676660))

(declare-fun m!3043599 () Bool)

(assert (=> b!2676659 m!3043599))

(declare-fun m!3043601 () Bool)

(assert (=> b!2676660 m!3043601))

(declare-fun m!3043603 () Bool)

(assert (=> d!765349 m!3043603))

(assert (=> d!765349 m!3042665))

(declare-fun m!3043605 () Bool)

(assert (=> d!765349 m!3043605))

(declare-fun m!3043607 () Bool)

(assert (=> b!2676662 m!3043607))

(assert (=> b!2676662 m!3042665))

(declare-fun m!3043609 () Bool)

(assert (=> b!2676662 m!3043609))

(assert (=> b!2676098 d!765349))

(declare-fun d!765351 () Bool)

(assert (=> d!765351 (= (list!11635 (seqFromList!3207 lt!942160)) (list!11637 (c!431108 (seqFromList!3207 lt!942160))))))

(declare-fun bs!479855 () Bool)

(assert (= bs!479855 d!765351))

(declare-fun m!3043611 () Bool)

(assert (=> bs!479855 m!3043611))

(assert (=> b!2676098 d!765351))

(declare-fun d!765353 () Bool)

(declare-fun lt!942515 () Bool)

(assert (=> d!765353 (= lt!942515 (isEmpty!17629 (list!11635 (_2!17669 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152)))))))))

(assert (=> d!765353 (= lt!942515 (isEmpty!17634 (c!431108 (_2!17669 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152)))))))))

(assert (=> d!765353 (= (isEmpty!17630 (_2!17669 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152))))) lt!942515)))

(declare-fun bs!479856 () Bool)

(assert (= bs!479856 d!765353))

(declare-fun m!3043613 () Bool)

(assert (=> bs!479856 m!3043613))

(assert (=> bs!479856 m!3043613))

(declare-fun m!3043615 () Bool)

(assert (=> bs!479856 m!3043615))

(declare-fun m!3043617 () Bool)

(assert (=> bs!479856 m!3043617))

(assert (=> b!2676221 d!765353))

(declare-fun lt!942516 () tuple2!30254)

(declare-fun e!1687206 () Bool)

(declare-fun b!2676663 () Bool)

(assert (=> b!2676663 (= e!1687206 (= (_2!17669 lt!942516) (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152))))))

(declare-fun d!765355 () Bool)

(declare-fun e!1687204 () Bool)

(assert (=> d!765355 e!1687204))

(declare-fun res!1125348 () Bool)

(assert (=> d!765355 (=> (not res!1125348) (not e!1687204))))

(assert (=> d!765355 (= res!1125348 e!1687206)))

(declare-fun c!431277 () Bool)

(assert (=> d!765355 (= c!431277 (> (size!23804 (_1!17669 lt!942516)) 0))))

(assert (=> d!765355 (= lt!942516 (lexTailRecV2!851 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152)) (BalanceConc!18895 Empty!9640) (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152)) (BalanceConc!18897 Empty!9641)))))

(assert (=> d!765355 (= (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152))) lt!942516)))

(declare-fun b!2676664 () Bool)

(declare-fun res!1125350 () Bool)

(assert (=> b!2676664 (=> (not res!1125350) (not e!1687204))))

(assert (=> b!2676664 (= res!1125350 (= (list!11639 (_1!17669 lt!942516)) (_1!17671 (lexList!1176 thiss!14116 rules!1712 (list!11635 (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152)))))))))

(declare-fun b!2676665 () Bool)

(declare-fun e!1687205 () Bool)

(assert (=> b!2676665 (= e!1687206 e!1687205)))

(declare-fun res!1125349 () Bool)

(assert (=> b!2676665 (= res!1125349 (< (size!23805 (_2!17669 lt!942516)) (size!23805 (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152)))))))

(assert (=> b!2676665 (=> (not res!1125349) (not e!1687205))))

(declare-fun b!2676666 () Bool)

(assert (=> b!2676666 (= e!1687204 (= (list!11635 (_2!17669 lt!942516)) (_2!17671 (lexList!1176 thiss!14116 rules!1712 (list!11635 (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152)))))))))

(declare-fun b!2676667 () Bool)

(assert (=> b!2676667 (= e!1687205 (not (isEmpty!17622 (_1!17669 lt!942516))))))

(assert (= (and d!765355 c!431277) b!2676665))

(assert (= (and d!765355 (not c!431277)) b!2676663))

(assert (= (and b!2676665 res!1125349) b!2676667))

(assert (= (and d!765355 res!1125348) b!2676664))

(assert (= (and b!2676664 res!1125350) b!2676666))

(declare-fun m!3043619 () Bool)

(assert (=> b!2676665 m!3043619))

(assert (=> b!2676665 m!3042885))

(declare-fun m!3043621 () Bool)

(assert (=> b!2676665 m!3043621))

(declare-fun m!3043623 () Bool)

(assert (=> b!2676664 m!3043623))

(assert (=> b!2676664 m!3042885))

(declare-fun m!3043625 () Bool)

(assert (=> b!2676664 m!3043625))

(assert (=> b!2676664 m!3043625))

(declare-fun m!3043627 () Bool)

(assert (=> b!2676664 m!3043627))

(declare-fun m!3043629 () Bool)

(assert (=> d!765355 m!3043629))

(assert (=> d!765355 m!3042885))

(assert (=> d!765355 m!3042885))

(declare-fun m!3043631 () Bool)

(assert (=> d!765355 m!3043631))

(declare-fun m!3043633 () Bool)

(assert (=> b!2676666 m!3043633))

(assert (=> b!2676666 m!3042885))

(assert (=> b!2676666 m!3043625))

(assert (=> b!2676666 m!3043625))

(assert (=> b!2676666 m!3043627))

(declare-fun m!3043635 () Bool)

(assert (=> b!2676667 m!3043635))

(assert (=> b!2676221 d!765355))

(declare-fun d!765357 () Bool)

(declare-fun lt!942517 () BalanceConc!18894)

(assert (=> d!765357 (= (list!11635 lt!942517) (printList!1194 thiss!14116 (list!11639 (singletonSeq!2102 separatorToken!152))))))

(assert (=> d!765357 (= lt!942517 (printTailRec!1155 thiss!14116 (singletonSeq!2102 separatorToken!152) 0 (BalanceConc!18895 Empty!9640)))))

(assert (=> d!765357 (= (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152)) lt!942517)))

(declare-fun bs!479857 () Bool)

(assert (= bs!479857 d!765357))

(declare-fun m!3043637 () Bool)

(assert (=> bs!479857 m!3043637))

(assert (=> bs!479857 m!3042879))

(assert (=> bs!479857 m!3042881))

(assert (=> bs!479857 m!3042881))

(declare-fun m!3043639 () Bool)

(assert (=> bs!479857 m!3043639))

(assert (=> bs!479857 m!3042879))

(declare-fun m!3043641 () Bool)

(assert (=> bs!479857 m!3043641))

(assert (=> b!2676221 d!765357))

(declare-fun d!765359 () Bool)

(declare-fun e!1687207 () Bool)

(assert (=> d!765359 e!1687207))

(declare-fun res!1125351 () Bool)

(assert (=> d!765359 (=> (not res!1125351) (not e!1687207))))

(declare-fun lt!942518 () BalanceConc!18896)

(assert (=> d!765359 (= res!1125351 (= (list!11639 lt!942518) (Cons!30800 separatorToken!152 Nil!30800)))))

(assert (=> d!765359 (= lt!942518 (singleton!932 separatorToken!152))))

(assert (=> d!765359 (= (singletonSeq!2102 separatorToken!152) lt!942518)))

(declare-fun b!2676668 () Bool)

(assert (=> b!2676668 (= e!1687207 (isBalanced!2921 (c!431110 lt!942518)))))

(assert (= (and d!765359 res!1125351) b!2676668))

(declare-fun m!3043643 () Bool)

(assert (=> d!765359 m!3043643))

(declare-fun m!3043645 () Bool)

(assert (=> d!765359 m!3043645))

(declare-fun m!3043647 () Bool)

(assert (=> b!2676668 m!3043647))

(assert (=> b!2676221 d!765359))

(declare-fun d!765361 () Bool)

(declare-fun lt!942519 () BalanceConc!18894)

(assert (=> d!765361 (= (list!11635 lt!942519) (originalCharacters!5471 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335))))))))

(assert (=> d!765361 (= lt!942519 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335))))))) (value!151697 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335)))))))))

(assert (=> d!765361 (= (charsOf!2968 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335))))) lt!942519)))

(declare-fun b_lambda!81687 () Bool)

(assert (=> (not b_lambda!81687) (not d!765361)))

(declare-fun tb!150173 () Bool)

(declare-fun t!223948 () Bool)

(assert (=> (and b!2675783 (= (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (toChars!6510 (transformation!4705 (rule!7113 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335)))))))) t!223948) tb!150173))

(declare-fun b!2676669 () Bool)

(declare-fun e!1687208 () Bool)

(declare-fun tp!846281 () Bool)

(assert (=> b!2676669 (= e!1687208 (and (inv!41817 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335))))))) (value!151697 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335)))))))) tp!846281))))

(declare-fun result!185484 () Bool)

(assert (=> tb!150173 (= result!185484 (and (inv!41818 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335))))))) (value!151697 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335))))))) e!1687208))))

(assert (= tb!150173 b!2676669))

(declare-fun m!3043649 () Bool)

(assert (=> b!2676669 m!3043649))

(declare-fun m!3043651 () Bool)

(assert (=> tb!150173 m!3043651))

(assert (=> d!765361 t!223948))

(declare-fun b_and!197967 () Bool)

(assert (= b_and!197963 (and (=> t!223948 result!185484) b_and!197967)))

(declare-fun tb!150175 () Bool)

(declare-fun t!223950 () Bool)

(assert (=> (and b!2676266 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712)))) (toChars!6510 (transformation!4705 (rule!7113 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335)))))))) t!223950) tb!150175))

(declare-fun result!185486 () Bool)

(assert (= result!185486 result!185484))

(assert (=> d!765361 t!223950))

(declare-fun b_and!197969 () Bool)

(assert (= b_and!197961 (and (=> t!223950 result!185486) b_and!197969)))

(declare-fun tb!150177 () Bool)

(declare-fun t!223952 () Bool)

(assert (=> (and b!2676285 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (toChars!6510 (transformation!4705 (rule!7113 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335)))))))) t!223952) tb!150177))

(declare-fun result!185488 () Bool)

(assert (= result!185488 result!185484))

(assert (=> d!765361 t!223952))

(declare-fun b_and!197971 () Bool)

(assert (= b_and!197965 (and (=> t!223952 result!185488) b_and!197971)))

(declare-fun t!223954 () Bool)

(declare-fun tb!150179 () Bool)

(assert (=> (and b!2675770 (= (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toChars!6510 (transformation!4705 (rule!7113 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335)))))))) t!223954) tb!150179))

(declare-fun result!185490 () Bool)

(assert (= result!185490 result!185484))

(assert (=> d!765361 t!223954))

(declare-fun b_and!197973 () Bool)

(assert (= b_and!197959 (and (=> t!223954 result!185490) b_and!197973)))

(declare-fun tb!150181 () Bool)

(declare-fun t!223956 () Bool)

(assert (=> (and b!2675776 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toChars!6510 (transformation!4705 (rule!7113 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335)))))))) t!223956) tb!150181))

(declare-fun result!185492 () Bool)

(assert (= result!185492 result!185484))

(assert (=> d!765361 t!223956))

(declare-fun b_and!197975 () Bool)

(assert (= b_and!197957 (and (=> t!223956 result!185492) b_and!197975)))

(declare-fun m!3043653 () Bool)

(assert (=> d!765361 m!3043653))

(declare-fun m!3043655 () Bool)

(assert (=> d!765361 m!3043655))

(assert (=> bm!172630 d!765361))

(declare-fun d!765363 () Bool)

(declare-fun lt!942522 () Int)

(assert (=> d!765363 (= lt!942522 (size!23800 (list!11635 (_2!17669 lt!942284))))))

(declare-fun size!23810 (Conc!9640) Int)

(assert (=> d!765363 (= lt!942522 (size!23810 (c!431108 (_2!17669 lt!942284))))))

(assert (=> d!765363 (= (size!23805 (_2!17669 lt!942284)) lt!942522)))

(declare-fun bs!479858 () Bool)

(assert (= bs!479858 d!765363))

(assert (=> bs!479858 m!3042673))

(assert (=> bs!479858 m!3042673))

(declare-fun m!3043657 () Bool)

(assert (=> bs!479858 m!3043657))

(declare-fun m!3043659 () Bool)

(assert (=> bs!479858 m!3043659))

(assert (=> b!2676100 d!765363))

(declare-fun d!765365 () Bool)

(declare-fun lt!942523 () Int)

(assert (=> d!765365 (= lt!942523 (size!23800 (list!11635 (seqFromList!3207 lt!942160))))))

(assert (=> d!765365 (= lt!942523 (size!23810 (c!431108 (seqFromList!3207 lt!942160))))))

(assert (=> d!765365 (= (size!23805 (seqFromList!3207 lt!942160)) lt!942523)))

(declare-fun bs!479859 () Bool)

(assert (= bs!479859 d!765365))

(assert (=> bs!479859 m!3042327))

(assert (=> bs!479859 m!3042665))

(assert (=> bs!479859 m!3042665))

(assert (=> bs!479859 m!3043609))

(declare-fun m!3043661 () Bool)

(assert (=> bs!479859 m!3043661))

(assert (=> b!2676100 d!765365))

(declare-fun d!765367 () Bool)

(assert (=> d!765367 (= (inv!41810 (tag!5207 (h!36219 (t!223826 rules!1712)))) (= (mod (str.len (value!151696 (tag!5207 (h!36219 (t!223826 rules!1712))))) 2) 0))))

(assert (=> b!2676265 d!765367))

(declare-fun d!765369 () Bool)

(declare-fun res!1125352 () Bool)

(declare-fun e!1687209 () Bool)

(assert (=> d!765369 (=> (not res!1125352) (not e!1687209))))

(assert (=> d!765369 (= res!1125352 (semiInverseModEq!1950 (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712)))) (toValue!6651 (transformation!4705 (h!36219 (t!223826 rules!1712))))))))

(assert (=> d!765369 (= (inv!41813 (transformation!4705 (h!36219 (t!223826 rules!1712)))) e!1687209)))

(declare-fun b!2676670 () Bool)

(assert (=> b!2676670 (= e!1687209 (equivClasses!1851 (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712)))) (toValue!6651 (transformation!4705 (h!36219 (t!223826 rules!1712))))))))

(assert (= (and d!765369 res!1125352) b!2676670))

(declare-fun m!3043663 () Bool)

(assert (=> d!765369 m!3043663))

(declare-fun m!3043665 () Bool)

(assert (=> b!2676670 m!3043665))

(assert (=> b!2676265 d!765369))

(declare-fun d!765371 () Bool)

(declare-fun lt!942524 () Int)

(assert (=> d!765371 (>= lt!942524 0)))

(declare-fun e!1687210 () Int)

(assert (=> d!765371 (= lt!942524 e!1687210)))

(declare-fun c!431278 () Bool)

(assert (=> d!765371 (= c!431278 ((_ is Nil!30798) (originalCharacters!5471 (h!36220 l!4335))))))

(assert (=> d!765371 (= (size!23800 (originalCharacters!5471 (h!36220 l!4335))) lt!942524)))

(declare-fun b!2676671 () Bool)

(assert (=> b!2676671 (= e!1687210 0)))

(declare-fun b!2676672 () Bool)

(assert (=> b!2676672 (= e!1687210 (+ 1 (size!23800 (t!223825 (originalCharacters!5471 (h!36220 l!4335))))))))

(assert (= (and d!765371 c!431278) b!2676671))

(assert (= (and d!765371 (not c!431278)) b!2676672))

(declare-fun m!3043667 () Bool)

(assert (=> b!2676672 m!3043667))

(assert (=> b!2676214 d!765371))

(declare-fun bs!479860 () Bool)

(declare-fun d!765373 () Bool)

(assert (= bs!479860 (and d!765373 b!2675784)))

(declare-fun lambda!99994 () Int)

(assert (=> bs!479860 (not (= lambda!99994 lambda!99961))))

(declare-fun bs!479861 () Bool)

(assert (= bs!479861 (and d!765373 b!2675775)))

(assert (=> bs!479861 (= lambda!99994 lambda!99962)))

(declare-fun bs!479862 () Bool)

(assert (= bs!479862 (and d!765373 b!2675898)))

(assert (=> bs!479862 (= lambda!99994 lambda!99968)))

(declare-fun bs!479863 () Bool)

(assert (= bs!479863 (and d!765373 d!765041)))

(assert (=> bs!479863 (= lambda!99994 lambda!99971)))

(declare-fun b!2676677 () Bool)

(declare-fun e!1687215 () Bool)

(assert (=> b!2676677 (= e!1687215 true)))

(declare-fun b!2676676 () Bool)

(declare-fun e!1687214 () Bool)

(assert (=> b!2676676 (= e!1687214 e!1687215)))

(declare-fun b!2676675 () Bool)

(declare-fun e!1687213 () Bool)

(assert (=> b!2676675 (= e!1687213 e!1687214)))

(assert (=> d!765373 e!1687213))

(assert (= b!2676676 b!2676677))

(assert (= b!2676675 b!2676676))

(assert (= (and d!765373 ((_ is Cons!30799) rules!1712)) b!2676675))

(assert (=> b!2676677 (< (dynLambda!13382 order!16987 (toValue!6651 (transformation!4705 (h!36219 rules!1712)))) (dynLambda!13383 order!16989 lambda!99994))))

(assert (=> b!2676677 (< (dynLambda!13384 order!16991 (toChars!6510 (transformation!4705 (h!36219 rules!1712)))) (dynLambda!13383 order!16989 lambda!99994))))

(assert (=> d!765373 true))

(declare-fun lt!942525 () Bool)

(assert (=> d!765373 (= lt!942525 (forall!6522 (t!223827 l!4335) lambda!99994))))

(declare-fun e!1687212 () Bool)

(assert (=> d!765373 (= lt!942525 e!1687212)))

(declare-fun res!1125354 () Bool)

(assert (=> d!765373 (=> res!1125354 e!1687212)))

(assert (=> d!765373 (= res!1125354 (not ((_ is Cons!30800) (t!223827 l!4335))))))

(assert (=> d!765373 (not (isEmpty!17623 rules!1712))))

(assert (=> d!765373 (= (rulesProduceEachTokenIndividuallyList!1524 thiss!14116 rules!1712 (t!223827 l!4335)) lt!942525)))

(declare-fun b!2676673 () Bool)

(declare-fun e!1687211 () Bool)

(assert (=> b!2676673 (= e!1687212 e!1687211)))

(declare-fun res!1125353 () Bool)

(assert (=> b!2676673 (=> (not res!1125353) (not e!1687211))))

(assert (=> b!2676673 (= res!1125353 (rulesProduceIndividualToken!2014 thiss!14116 rules!1712 (h!36220 (t!223827 l!4335))))))

(declare-fun b!2676674 () Bool)

(assert (=> b!2676674 (= e!1687211 (rulesProduceEachTokenIndividuallyList!1524 thiss!14116 rules!1712 (t!223827 (t!223827 l!4335))))))

(assert (= (and d!765373 (not res!1125354)) b!2676673))

(assert (= (and b!2676673 res!1125353) b!2676674))

(declare-fun m!3043669 () Bool)

(assert (=> d!765373 m!3043669))

(assert (=> d!765373 m!3042333))

(declare-fun m!3043671 () Bool)

(assert (=> b!2676673 m!3043671))

(declare-fun m!3043673 () Bool)

(assert (=> b!2676674 m!3043673))

(assert (=> b!2675983 d!765373))

(declare-fun d!765375 () Bool)

(declare-fun charsToBigInt!1 (List!30897) Int)

(assert (=> d!765375 (= (inv!17 (value!151697 (h!36220 l!4335))) (= (charsToBigInt!1 (text!34937 (value!151697 (h!36220 l!4335)))) (value!151689 (value!151697 (h!36220 l!4335)))))))

(declare-fun bs!479864 () Bool)

(assert (= bs!479864 d!765375))

(declare-fun m!3043675 () Bool)

(assert (=> bs!479864 m!3043675))

(assert (=> b!2676027 d!765375))

(declare-fun d!765377 () Bool)

(declare-fun lt!942528 () Token!8880)

(assert (=> d!765377 (= lt!942528 (apply!7392 (list!11639 (_1!17669 lt!942343)) 0))))

(declare-fun apply!7393 (Conc!9641 Int) Token!8880)

(assert (=> d!765377 (= lt!942528 (apply!7393 (c!431110 (_1!17669 lt!942343)) 0))))

(declare-fun e!1687218 () Bool)

(assert (=> d!765377 e!1687218))

(declare-fun res!1125357 () Bool)

(assert (=> d!765377 (=> (not res!1125357) (not e!1687218))))

(assert (=> d!765377 (= res!1125357 (<= 0 0))))

(assert (=> d!765377 (= (apply!7389 (_1!17669 lt!942343) 0) lt!942528)))

(declare-fun b!2676680 () Bool)

(assert (=> b!2676680 (= e!1687218 (< 0 (size!23804 (_1!17669 lt!942343))))))

(assert (= (and d!765377 res!1125357) b!2676680))

(declare-fun m!3043677 () Bool)

(assert (=> d!765377 m!3043677))

(assert (=> d!765377 m!3043677))

(declare-fun m!3043679 () Bool)

(assert (=> d!765377 m!3043679))

(declare-fun m!3043681 () Bool)

(assert (=> d!765377 m!3043681))

(assert (=> b!2676680 m!3042877))

(assert (=> b!2676219 d!765377))

(declare-fun d!765379 () Bool)

(declare-fun charsToBigInt!0 (List!30897 Int) Int)

(assert (=> d!765379 (= (inv!15 (value!151697 separatorToken!152)) (= (charsToBigInt!0 (text!34938 (value!151697 separatorToken!152)) 0) (value!151692 (value!151697 separatorToken!152))))))

(declare-fun bs!479865 () Bool)

(assert (= bs!479865 d!765379))

(declare-fun m!3043683 () Bool)

(assert (=> bs!479865 m!3043683))

(assert (=> b!2676173 d!765379))

(declare-fun b!2676683 () Bool)

(declare-fun res!1125358 () Bool)

(declare-fun e!1687219 () Bool)

(assert (=> b!2676683 (=> (not res!1125358) (not e!1687219))))

(declare-fun lt!942529 () List!30898)

(assert (=> b!2676683 (= res!1125358 (= (size!23800 lt!942529) (+ (size!23800 call!172634) (size!23800 lt!942203))))))

(declare-fun b!2676682 () Bool)

(declare-fun e!1687220 () List!30898)

(assert (=> b!2676682 (= e!1687220 (Cons!30798 (h!36218 call!172634) (++!7517 (t!223825 call!172634) lt!942203)))))

(declare-fun b!2676684 () Bool)

(assert (=> b!2676684 (= e!1687219 (or (not (= lt!942203 Nil!30798)) (= lt!942529 call!172634)))))

(declare-fun b!2676681 () Bool)

(assert (=> b!2676681 (= e!1687220 lt!942203)))

(declare-fun d!765381 () Bool)

(assert (=> d!765381 e!1687219))

(declare-fun res!1125359 () Bool)

(assert (=> d!765381 (=> (not res!1125359) (not e!1687219))))

(assert (=> d!765381 (= res!1125359 (= (content!4377 lt!942529) ((_ map or) (content!4377 call!172634) (content!4377 lt!942203))))))

(assert (=> d!765381 (= lt!942529 e!1687220)))

(declare-fun c!431279 () Bool)

(assert (=> d!765381 (= c!431279 ((_ is Nil!30798) call!172634))))

(assert (=> d!765381 (= (++!7517 call!172634 lt!942203) lt!942529)))

(assert (= (and d!765381 c!431279) b!2676681))

(assert (= (and d!765381 (not c!431279)) b!2676682))

(assert (= (and d!765381 res!1125359) b!2676683))

(assert (= (and b!2676683 res!1125358) b!2676684))

(declare-fun m!3043685 () Bool)

(assert (=> b!2676683 m!3043685))

(declare-fun m!3043687 () Bool)

(assert (=> b!2676683 m!3043687))

(declare-fun m!3043689 () Bool)

(assert (=> b!2676683 m!3043689))

(declare-fun m!3043691 () Bool)

(assert (=> b!2676682 m!3043691))

(declare-fun m!3043693 () Bool)

(assert (=> d!765381 m!3043693))

(declare-fun m!3043695 () Bool)

(assert (=> d!765381 m!3043695))

(declare-fun m!3043697 () Bool)

(assert (=> d!765381 m!3043697))

(assert (=> b!2675903 d!765381))

(declare-fun d!765383 () Bool)

(assert (=> d!765383 (= (list!11635 (_2!17669 lt!942284)) (list!11637 (c!431108 (_2!17669 lt!942284))))))

(declare-fun bs!479866 () Bool)

(assert (= bs!479866 d!765383))

(declare-fun m!3043699 () Bool)

(assert (=> bs!479866 m!3043699))

(assert (=> b!2676102 d!765383))

(assert (=> b!2676102 d!765349))

(assert (=> b!2676102 d!765351))

(declare-fun d!765385 () Bool)

(assert (=> d!765385 (= (inv!15 (value!151697 (h!36220 l!4335))) (= (charsToBigInt!0 (text!34938 (value!151697 (h!36220 l!4335))) 0) (value!151692 (value!151697 (h!36220 l!4335)))))))

(declare-fun bs!479867 () Bool)

(assert (= bs!479867 d!765385))

(declare-fun m!3043701 () Bool)

(assert (=> bs!479867 m!3043701))

(assert (=> b!2676029 d!765385))

(declare-fun d!765387 () Bool)

(assert (=> d!765387 (= (inv!17 (value!151697 separatorToken!152)) (= (charsToBigInt!1 (text!34937 (value!151697 separatorToken!152))) (value!151689 (value!151697 separatorToken!152))))))

(declare-fun bs!479868 () Bool)

(assert (= bs!479868 d!765387))

(declare-fun m!3043703 () Bool)

(assert (=> bs!479868 m!3043703))

(assert (=> b!2676171 d!765387))

(assert (=> b!2676118 d!765323))

(declare-fun d!765389 () Bool)

(declare-fun e!1687223 () Bool)

(assert (=> d!765389 e!1687223))

(declare-fun res!1125362 () Bool)

(assert (=> d!765389 (=> (not res!1125362) (not e!1687223))))

(declare-fun lt!942532 () BalanceConc!18894)

(assert (=> d!765389 (= res!1125362 (= (list!11635 lt!942532) lt!942160))))

(declare-fun fromList!570 (List!30898) Conc!9640)

(assert (=> d!765389 (= lt!942532 (BalanceConc!18895 (fromList!570 lt!942160)))))

(assert (=> d!765389 (= (fromListB!1449 lt!942160) lt!942532)))

(declare-fun b!2676687 () Bool)

(assert (=> b!2676687 (= e!1687223 (isBalanced!2922 (fromList!570 lt!942160)))))

(assert (= (and d!765389 res!1125362) b!2676687))

(declare-fun m!3043705 () Bool)

(assert (=> d!765389 m!3043705))

(declare-fun m!3043707 () Bool)

(assert (=> d!765389 m!3043707))

(assert (=> b!2676687 m!3043707))

(assert (=> b!2676687 m!3043707))

(declare-fun m!3043709 () Bool)

(assert (=> b!2676687 m!3043709))

(assert (=> d!765069 d!765389))

(declare-fun b!2676690 () Bool)

(declare-fun res!1125363 () Bool)

(declare-fun e!1687224 () Bool)

(assert (=> b!2676690 (=> (not res!1125363) (not e!1687224))))

(declare-fun lt!942533 () List!30898)

(assert (=> b!2676690 (= res!1125363 (= (size!23800 lt!942533) (+ (size!23800 (ite c!431129 call!172633 call!172632)) (size!23800 (ite c!431129 lt!942203 call!172633)))))))

(declare-fun b!2676689 () Bool)

(declare-fun e!1687225 () List!30898)

(assert (=> b!2676689 (= e!1687225 (Cons!30798 (h!36218 (ite c!431129 call!172633 call!172632)) (++!7517 (t!223825 (ite c!431129 call!172633 call!172632)) (ite c!431129 lt!942203 call!172633))))))

(declare-fun b!2676691 () Bool)

(assert (=> b!2676691 (= e!1687224 (or (not (= (ite c!431129 lt!942203 call!172633) Nil!30798)) (= lt!942533 (ite c!431129 call!172633 call!172632))))))

(declare-fun b!2676688 () Bool)

(assert (=> b!2676688 (= e!1687225 (ite c!431129 lt!942203 call!172633))))

(declare-fun d!765391 () Bool)

(assert (=> d!765391 e!1687224))

(declare-fun res!1125364 () Bool)

(assert (=> d!765391 (=> (not res!1125364) (not e!1687224))))

(assert (=> d!765391 (= res!1125364 (= (content!4377 lt!942533) ((_ map or) (content!4377 (ite c!431129 call!172633 call!172632)) (content!4377 (ite c!431129 lt!942203 call!172633)))))))

(assert (=> d!765391 (= lt!942533 e!1687225)))

(declare-fun c!431281 () Bool)

(assert (=> d!765391 (= c!431281 ((_ is Nil!30798) (ite c!431129 call!172633 call!172632)))))

(assert (=> d!765391 (= (++!7517 (ite c!431129 call!172633 call!172632) (ite c!431129 lt!942203 call!172633)) lt!942533)))

(assert (= (and d!765391 c!431281) b!2676688))

(assert (= (and d!765391 (not c!431281)) b!2676689))

(assert (= (and d!765391 res!1125364) b!2676690))

(assert (= (and b!2676690 res!1125363) b!2676691))

(declare-fun m!3043711 () Bool)

(assert (=> b!2676690 m!3043711))

(declare-fun m!3043713 () Bool)

(assert (=> b!2676690 m!3043713))

(declare-fun m!3043715 () Bool)

(assert (=> b!2676690 m!3043715))

(declare-fun m!3043717 () Bool)

(assert (=> b!2676689 m!3043717))

(declare-fun m!3043719 () Bool)

(assert (=> d!765391 m!3043719))

(declare-fun m!3043721 () Bool)

(assert (=> d!765391 m!3043721))

(declare-fun m!3043723 () Bool)

(assert (=> d!765391 m!3043723))

(assert (=> bm!172631 d!765391))

(declare-fun d!765393 () Bool)

(assert (=> d!765393 (= (isDefined!4843 lt!942180) (not (isEmpty!17624 lt!942180)))))

(declare-fun bs!479869 () Bool)

(assert (= bs!479869 d!765393))

(assert (=> bs!479869 m!3042363))

(assert (=> b!2675857 d!765393))

(declare-fun bs!479870 () Bool)

(declare-fun d!765395 () Bool)

(assert (= bs!479870 (and d!765395 d!765259)))

(declare-fun lambda!99995 () Int)

(assert (=> bs!479870 (= (= (toValue!6651 (transformation!4705 (rule!7113 separatorToken!152))) (toValue!6651 (transformation!4705 (h!36219 rules!1712)))) (= lambda!99995 lambda!99986))))

(assert (=> d!765395 true))

(assert (=> d!765395 (< (dynLambda!13382 order!16987 (toValue!6651 (transformation!4705 (rule!7113 separatorToken!152)))) (dynLambda!13390 order!16997 lambda!99995))))

(assert (=> d!765395 (= (equivClasses!1851 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (toValue!6651 (transformation!4705 (rule!7113 separatorToken!152)))) (Forall2!795 lambda!99995))))

(declare-fun bs!479871 () Bool)

(assert (= bs!479871 d!765395))

(declare-fun m!3043725 () Bool)

(assert (=> bs!479871 m!3043725))

(assert (=> b!2675946 d!765395))

(declare-fun d!765397 () Bool)

(declare-fun lt!942534 () Bool)

(assert (=> d!765397 (= lt!942534 (isEmpty!17632 (list!11639 (_1!17669 lt!942284))))))

(assert (=> d!765397 (= lt!942534 (isEmpty!17633 (c!431110 (_1!17669 lt!942284))))))

(assert (=> d!765397 (= (isEmpty!17622 (_1!17669 lt!942284)) lt!942534)))

(declare-fun bs!479872 () Bool)

(assert (= bs!479872 d!765397))

(assert (=> bs!479872 m!3042663))

(assert (=> bs!479872 m!3042663))

(declare-fun m!3043727 () Bool)

(assert (=> bs!479872 m!3043727))

(declare-fun m!3043729 () Bool)

(assert (=> bs!479872 m!3043729))

(assert (=> b!2676104 d!765397))

(declare-fun bs!479873 () Bool)

(declare-fun d!765399 () Bool)

(assert (= bs!479873 (and d!765399 d!765259)))

(declare-fun lambda!99996 () Int)

(assert (=> bs!479873 (= (= (toValue!6651 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toValue!6651 (transformation!4705 (h!36219 rules!1712)))) (= lambda!99996 lambda!99986))))

(declare-fun bs!479874 () Bool)

(assert (= bs!479874 (and d!765399 d!765395)))

(assert (=> bs!479874 (= (= (toValue!6651 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toValue!6651 (transformation!4705 (rule!7113 separatorToken!152)))) (= lambda!99996 lambda!99995))))

(assert (=> d!765399 true))

(assert (=> d!765399 (< (dynLambda!13382 order!16987 (toValue!6651 (transformation!4705 (rule!7113 (h!36220 l!4335))))) (dynLambda!13390 order!16997 lambda!99996))))

(assert (=> d!765399 (= (equivClasses!1851 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toValue!6651 (transformation!4705 (rule!7113 (h!36220 l!4335))))) (Forall2!795 lambda!99996))))

(declare-fun bs!479875 () Bool)

(assert (= bs!479875 d!765399))

(declare-fun m!3043731 () Bool)

(assert (=> bs!479875 m!3043731))

(assert (=> b!2676142 d!765399))

(declare-fun d!765401 () Bool)

(declare-fun lt!942535 () Bool)

(assert (=> d!765401 (= lt!942535 (select (content!4379 (t!223827 l!4335)) (h!36220 l!4335)))))

(declare-fun e!1687226 () Bool)

(assert (=> d!765401 (= lt!942535 e!1687226)))

(declare-fun res!1125365 () Bool)

(assert (=> d!765401 (=> (not res!1125365) (not e!1687226))))

(assert (=> d!765401 (= res!1125365 ((_ is Cons!30800) (t!223827 l!4335)))))

(assert (=> d!765401 (= (contains!5925 (t!223827 l!4335) (h!36220 l!4335)) lt!942535)))

(declare-fun b!2676692 () Bool)

(declare-fun e!1687227 () Bool)

(assert (=> b!2676692 (= e!1687226 e!1687227)))

(declare-fun res!1125366 () Bool)

(assert (=> b!2676692 (=> res!1125366 e!1687227)))

(assert (=> b!2676692 (= res!1125366 (= (h!36220 (t!223827 l!4335)) (h!36220 l!4335)))))

(declare-fun b!2676693 () Bool)

(assert (=> b!2676693 (= e!1687227 (contains!5925 (t!223827 (t!223827 l!4335)) (h!36220 l!4335)))))

(assert (= (and d!765401 res!1125365) b!2676692))

(assert (= (and b!2676692 (not res!1125366)) b!2676693))

(declare-fun m!3043733 () Bool)

(assert (=> d!765401 m!3043733))

(declare-fun m!3043735 () Bool)

(assert (=> d!765401 m!3043735))

(declare-fun m!3043737 () Bool)

(assert (=> b!2676693 m!3043737))

(assert (=> b!2676200 d!765401))

(declare-fun d!765403 () Bool)

(assert (=> d!765403 (= (list!11639 lt!942163) (list!11641 (c!431110 lt!942163)))))

(declare-fun bs!479876 () Bool)

(assert (= bs!479876 d!765403))

(assert (=> bs!479876 m!3043553))

(assert (=> b!2676120 d!765403))

(declare-fun b!2676705 () Bool)

(declare-fun e!1687230 () Bool)

(declare-fun lt!942538 () BalanceConc!18894)

(assert (=> b!2676705 (= e!1687230 (= (list!11635 lt!942538) (++!7517 (list!11635 (BalanceConc!18895 Empty!9640)) (list!11635 (charsOf!2968 (apply!7389 lt!942163 0))))))))

(declare-fun d!765405 () Bool)

(assert (=> d!765405 e!1687230))

(declare-fun res!1125376 () Bool)

(assert (=> d!765405 (=> (not res!1125376) (not e!1687230))))

(declare-fun appendAssocInst!647 (Conc!9640 Conc!9640) Bool)

(assert (=> d!765405 (= res!1125376 (appendAssocInst!647 (c!431108 (BalanceConc!18895 Empty!9640)) (c!431108 (charsOf!2968 (apply!7389 lt!942163 0)))))))

(declare-fun ++!7520 (Conc!9640 Conc!9640) Conc!9640)

(assert (=> d!765405 (= lt!942538 (BalanceConc!18895 (++!7520 (c!431108 (BalanceConc!18895 Empty!9640)) (c!431108 (charsOf!2968 (apply!7389 lt!942163 0))))))))

(assert (=> d!765405 (= (++!7519 (BalanceConc!18895 Empty!9640) (charsOf!2968 (apply!7389 lt!942163 0))) lt!942538)))

(declare-fun b!2676703 () Bool)

(declare-fun res!1125378 () Bool)

(assert (=> b!2676703 (=> (not res!1125378) (not e!1687230))))

(declare-fun height!1404 (Conc!9640) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2676703 (= res!1125378 (<= (height!1404 (++!7520 (c!431108 (BalanceConc!18895 Empty!9640)) (c!431108 (charsOf!2968 (apply!7389 lt!942163 0))))) (+ (max!0 (height!1404 (c!431108 (BalanceConc!18895 Empty!9640))) (height!1404 (c!431108 (charsOf!2968 (apply!7389 lt!942163 0))))) 1)))))

(declare-fun b!2676704 () Bool)

(declare-fun res!1125375 () Bool)

(assert (=> b!2676704 (=> (not res!1125375) (not e!1687230))))

(assert (=> b!2676704 (= res!1125375 (>= (height!1404 (++!7520 (c!431108 (BalanceConc!18895 Empty!9640)) (c!431108 (charsOf!2968 (apply!7389 lt!942163 0))))) (max!0 (height!1404 (c!431108 (BalanceConc!18895 Empty!9640))) (height!1404 (c!431108 (charsOf!2968 (apply!7389 lt!942163 0)))))))))

(declare-fun b!2676702 () Bool)

(declare-fun res!1125377 () Bool)

(assert (=> b!2676702 (=> (not res!1125377) (not e!1687230))))

(assert (=> b!2676702 (= res!1125377 (isBalanced!2922 (++!7520 (c!431108 (BalanceConc!18895 Empty!9640)) (c!431108 (charsOf!2968 (apply!7389 lt!942163 0))))))))

(assert (= (and d!765405 res!1125376) b!2676702))

(assert (= (and b!2676702 res!1125377) b!2676703))

(assert (= (and b!2676703 res!1125378) b!2676704))

(assert (= (and b!2676704 res!1125375) b!2676705))

(declare-fun m!3043739 () Bool)

(assert (=> b!2676703 m!3043739))

(declare-fun m!3043741 () Bool)

(assert (=> b!2676703 m!3043741))

(declare-fun m!3043743 () Bool)

(assert (=> b!2676703 m!3043743))

(declare-fun m!3043745 () Bool)

(assert (=> b!2676703 m!3043745))

(assert (=> b!2676703 m!3043739))

(declare-fun m!3043747 () Bool)

(assert (=> b!2676703 m!3043747))

(assert (=> b!2676703 m!3043741))

(assert (=> b!2676703 m!3043745))

(assert (=> b!2676704 m!3043739))

(assert (=> b!2676704 m!3043741))

(assert (=> b!2676704 m!3043743))

(assert (=> b!2676704 m!3043745))

(assert (=> b!2676704 m!3043739))

(assert (=> b!2676704 m!3043747))

(assert (=> b!2676704 m!3043741))

(assert (=> b!2676704 m!3043745))

(declare-fun m!3043749 () Bool)

(assert (=> d!765405 m!3043749))

(assert (=> d!765405 m!3043741))

(assert (=> b!2676702 m!3043741))

(assert (=> b!2676702 m!3043741))

(declare-fun m!3043751 () Bool)

(assert (=> b!2676702 m!3043751))

(declare-fun m!3043753 () Bool)

(assert (=> b!2676705 m!3043753))

(assert (=> b!2676705 m!3042713))

(assert (=> b!2676705 m!3042755))

(declare-fun m!3043755 () Bool)

(assert (=> b!2676705 m!3043755))

(assert (=> b!2676705 m!3042713))

(assert (=> b!2676705 m!3043755))

(declare-fun m!3043757 () Bool)

(assert (=> b!2676705 m!3043757))

(assert (=> b!2676120 d!765405))

(declare-fun d!765407 () Bool)

(assert (=> d!765407 (= (tail!4321 (drop!1673 lt!942320 0)) (drop!1673 lt!942320 (+ 0 1)))))

(declare-fun lt!942541 () Unit!45011)

(declare-fun choose!15854 (List!30900 Int) Unit!45011)

(assert (=> d!765407 (= lt!942541 (choose!15854 lt!942320 0))))

(declare-fun e!1687233 () Bool)

(assert (=> d!765407 e!1687233))

(declare-fun res!1125381 () Bool)

(assert (=> d!765407 (=> (not res!1125381) (not e!1687233))))

(assert (=> d!765407 (= res!1125381 (>= 0 0))))

(assert (=> d!765407 (= (lemmaDropTail!854 lt!942320 0) lt!942541)))

(declare-fun b!2676708 () Bool)

(assert (=> b!2676708 (= e!1687233 (< 0 (size!23808 lt!942320)))))

(assert (= (and d!765407 res!1125381) b!2676708))

(assert (=> d!765407 m!3042761))

(assert (=> d!765407 m!3042761))

(assert (=> d!765407 m!3042763))

(assert (=> d!765407 m!3042747))

(declare-fun m!3043759 () Bool)

(assert (=> d!765407 m!3043759))

(declare-fun m!3043761 () Bool)

(assert (=> b!2676708 m!3043761))

(assert (=> b!2676120 d!765407))

(declare-fun b!2676727 () Bool)

(declare-fun e!1687245 () Int)

(assert (=> b!2676727 (= e!1687245 0)))

(declare-fun b!2676728 () Bool)

(declare-fun e!1687244 () List!30900)

(assert (=> b!2676728 (= e!1687244 Nil!30800)))

(declare-fun b!2676729 () Bool)

(declare-fun e!1687248 () List!30900)

(assert (=> b!2676729 (= e!1687244 e!1687248)))

(declare-fun c!431294 () Bool)

(assert (=> b!2676729 (= c!431294 (<= (+ 0 1) 0))))

(declare-fun b!2676730 () Bool)

(assert (=> b!2676730 (= e!1687248 lt!942320)))

(declare-fun b!2676731 () Bool)

(declare-fun e!1687247 () Bool)

(declare-fun lt!942548 () List!30900)

(declare-fun e!1687246 () Int)

(assert (=> b!2676731 (= e!1687247 (= (size!23808 lt!942548) e!1687246))))

(declare-fun c!431296 () Bool)

(assert (=> b!2676731 (= c!431296 (<= (+ 0 1) 0))))

(declare-fun b!2676732 () Bool)

(declare-fun call!172673 () Int)

(assert (=> b!2676732 (= e!1687246 call!172673)))

(declare-fun b!2676733 () Bool)

(assert (=> b!2676733 (= e!1687245 (- call!172673 (+ 0 1)))))

(declare-fun b!2676734 () Bool)

(assert (=> b!2676734 (= e!1687246 e!1687245)))

(declare-fun c!431293 () Bool)

(assert (=> b!2676734 (= c!431293 (>= (+ 0 1) call!172673))))

(declare-fun b!2676735 () Bool)

(assert (=> b!2676735 (= e!1687248 (drop!1673 (t!223827 lt!942320) (- (+ 0 1) 1)))))

(declare-fun bm!172668 () Bool)

(assert (=> bm!172668 (= call!172673 (size!23808 lt!942320))))

(declare-fun d!765409 () Bool)

(assert (=> d!765409 e!1687247))

(declare-fun res!1125384 () Bool)

(assert (=> d!765409 (=> (not res!1125384) (not e!1687247))))

(assert (=> d!765409 (= res!1125384 (= ((_ map implies) (content!4379 lt!942548) (content!4379 lt!942320)) ((as const (InoxSet Token!8880)) true)))))

(assert (=> d!765409 (= lt!942548 e!1687244)))

(declare-fun c!431295 () Bool)

(assert (=> d!765409 (= c!431295 ((_ is Nil!30800) lt!942320))))

(assert (=> d!765409 (= (drop!1673 lt!942320 (+ 0 1)) lt!942548)))

(assert (= (and d!765409 c!431295) b!2676728))

(assert (= (and d!765409 (not c!431295)) b!2676729))

(assert (= (and b!2676729 c!431294) b!2676730))

(assert (= (and b!2676729 (not c!431294)) b!2676735))

(assert (= (and d!765409 res!1125384) b!2676731))

(assert (= (and b!2676731 c!431296) b!2676732))

(assert (= (and b!2676731 (not c!431296)) b!2676734))

(assert (= (and b!2676734 c!431293) b!2676727))

(assert (= (and b!2676734 (not c!431293)) b!2676733))

(assert (= (or b!2676732 b!2676734 b!2676733) bm!172668))

(declare-fun m!3043763 () Bool)

(assert (=> b!2676731 m!3043763))

(declare-fun m!3043765 () Bool)

(assert (=> b!2676735 m!3043765))

(assert (=> bm!172668 m!3043761))

(declare-fun m!3043767 () Bool)

(assert (=> d!765409 m!3043767))

(declare-fun m!3043769 () Bool)

(assert (=> d!765409 m!3043769))

(assert (=> b!2676120 d!765409))

(declare-fun d!765411 () Bool)

(declare-fun lt!942567 () Token!8880)

(assert (=> d!765411 (= lt!942567 (apply!7392 (list!11639 lt!942163) 0))))

(assert (=> d!765411 (= lt!942567 (apply!7393 (c!431110 lt!942163) 0))))

(declare-fun e!1687251 () Bool)

(assert (=> d!765411 e!1687251))

(declare-fun res!1125387 () Bool)

(assert (=> d!765411 (=> (not res!1125387) (not e!1687251))))

(assert (=> d!765411 (= res!1125387 (<= 0 0))))

(assert (=> d!765411 (= (apply!7389 lt!942163 0) lt!942567)))

(declare-fun b!2676738 () Bool)

(assert (=> b!2676738 (= e!1687251 (< 0 (size!23804 lt!942163)))))

(assert (= (and d!765411 res!1125387) b!2676738))

(assert (=> d!765411 m!3042725))

(assert (=> d!765411 m!3042725))

(declare-fun m!3043771 () Bool)

(assert (=> d!765411 m!3043771))

(declare-fun m!3043773 () Bool)

(assert (=> d!765411 m!3043773))

(assert (=> b!2676738 m!3042719))

(assert (=> b!2676120 d!765411))

(declare-fun d!765413 () Bool)

(declare-fun lt!942574 () BalanceConc!18894)

(assert (=> d!765413 (= (list!11635 lt!942574) (originalCharacters!5471 (apply!7389 lt!942163 0)))))

(assert (=> d!765413 (= lt!942574 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (apply!7389 lt!942163 0)))) (value!151697 (apply!7389 lt!942163 0))))))

(assert (=> d!765413 (= (charsOf!2968 (apply!7389 lt!942163 0)) lt!942574)))

(declare-fun b_lambda!81689 () Bool)

(assert (=> (not b_lambda!81689) (not d!765413)))

(declare-fun tb!150183 () Bool)

(declare-fun t!223958 () Bool)

(assert (=> (and b!2675770 (= (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toChars!6510 (transformation!4705 (rule!7113 (apply!7389 lt!942163 0))))) t!223958) tb!150183))

(declare-fun b!2676745 () Bool)

(declare-fun e!1687254 () Bool)

(declare-fun tp!846282 () Bool)

(assert (=> b!2676745 (= e!1687254 (and (inv!41817 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (apply!7389 lt!942163 0)))) (value!151697 (apply!7389 lt!942163 0))))) tp!846282))))

(declare-fun result!185494 () Bool)

(assert (=> tb!150183 (= result!185494 (and (inv!41818 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (apply!7389 lt!942163 0)))) (value!151697 (apply!7389 lt!942163 0)))) e!1687254))))

(assert (= tb!150183 b!2676745))

(declare-fun m!3043775 () Bool)

(assert (=> b!2676745 m!3043775))

(declare-fun m!3043777 () Bool)

(assert (=> tb!150183 m!3043777))

(assert (=> d!765413 t!223958))

(declare-fun b_and!197977 () Bool)

(assert (= b_and!197973 (and (=> t!223958 result!185494) b_and!197977)))

(declare-fun t!223960 () Bool)

(declare-fun tb!150185 () Bool)

(assert (=> (and b!2676285 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (toChars!6510 (transformation!4705 (rule!7113 (apply!7389 lt!942163 0))))) t!223960) tb!150185))

(declare-fun result!185496 () Bool)

(assert (= result!185496 result!185494))

(assert (=> d!765413 t!223960))

(declare-fun b_and!197979 () Bool)

(assert (= b_and!197971 (and (=> t!223960 result!185496) b_and!197979)))

(declare-fun tb!150187 () Bool)

(declare-fun t!223962 () Bool)

(assert (=> (and b!2675776 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toChars!6510 (transformation!4705 (rule!7113 (apply!7389 lt!942163 0))))) t!223962) tb!150187))

(declare-fun result!185498 () Bool)

(assert (= result!185498 result!185494))

(assert (=> d!765413 t!223962))

(declare-fun b_and!197981 () Bool)

(assert (= b_and!197975 (and (=> t!223962 result!185498) b_and!197981)))

(declare-fun tb!150189 () Bool)

(declare-fun t!223964 () Bool)

(assert (=> (and b!2675783 (= (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (toChars!6510 (transformation!4705 (rule!7113 (apply!7389 lt!942163 0))))) t!223964) tb!150189))

(declare-fun result!185500 () Bool)

(assert (= result!185500 result!185494))

(assert (=> d!765413 t!223964))

(declare-fun b_and!197983 () Bool)

(assert (= b_and!197967 (and (=> t!223964 result!185500) b_and!197983)))

(declare-fun t!223966 () Bool)

(declare-fun tb!150191 () Bool)

(assert (=> (and b!2676266 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712)))) (toChars!6510 (transformation!4705 (rule!7113 (apply!7389 lt!942163 0))))) t!223966) tb!150191))

(declare-fun result!185502 () Bool)

(assert (= result!185502 result!185494))

(assert (=> d!765413 t!223966))

(declare-fun b_and!197985 () Bool)

(assert (= b_and!197969 (and (=> t!223966 result!185502) b_and!197985)))

(declare-fun m!3043779 () Bool)

(assert (=> d!765413 m!3043779))

(declare-fun m!3043781 () Bool)

(assert (=> d!765413 m!3043781))

(assert (=> b!2676120 d!765413))

(declare-fun d!765415 () Bool)

(declare-fun lt!942583 () Token!8880)

(assert (=> d!765415 (contains!5925 lt!942315 lt!942583)))

(declare-fun e!1687260 () Token!8880)

(assert (=> d!765415 (= lt!942583 e!1687260)))

(declare-fun c!431301 () Bool)

(assert (=> d!765415 (= c!431301 (= 0 0))))

(declare-fun e!1687259 () Bool)

(assert (=> d!765415 e!1687259))

(declare-fun res!1125392 () Bool)

(assert (=> d!765415 (=> (not res!1125392) (not e!1687259))))

(assert (=> d!765415 (= res!1125392 (<= 0 0))))

(assert (=> d!765415 (= (apply!7392 lt!942315 0) lt!942583)))

(declare-fun b!2676752 () Bool)

(assert (=> b!2676752 (= e!1687259 (< 0 (size!23808 lt!942315)))))

(declare-fun b!2676753 () Bool)

(assert (=> b!2676753 (= e!1687260 (head!6083 lt!942315))))

(declare-fun b!2676754 () Bool)

(assert (=> b!2676754 (= e!1687260 (apply!7392 (tail!4321 lt!942315) (- 0 1)))))

(assert (= (and d!765415 res!1125392) b!2676752))

(assert (= (and d!765415 c!431301) b!2676753))

(assert (= (and d!765415 (not c!431301)) b!2676754))

(declare-fun m!3043783 () Bool)

(assert (=> d!765415 m!3043783))

(declare-fun m!3043785 () Bool)

(assert (=> b!2676752 m!3043785))

(declare-fun m!3043787 () Bool)

(assert (=> b!2676753 m!3043787))

(declare-fun m!3043789 () Bool)

(assert (=> b!2676754 m!3043789))

(assert (=> b!2676754 m!3043789))

(declare-fun m!3043791 () Bool)

(assert (=> b!2676754 m!3043791))

(assert (=> b!2676120 d!765415))

(declare-fun d!765417 () Bool)

(assert (=> d!765417 (= (head!6083 (drop!1673 lt!942315 0)) (apply!7392 lt!942315 0))))

(declare-fun lt!942603 () Unit!45011)

(declare-fun choose!15855 (List!30900 Int) Unit!45011)

(assert (=> d!765417 (= lt!942603 (choose!15855 lt!942315 0))))

(declare-fun e!1687265 () Bool)

(assert (=> d!765417 e!1687265))

(declare-fun res!1125397 () Bool)

(assert (=> d!765417 (=> (not res!1125397) (not e!1687265))))

(assert (=> d!765417 (= res!1125397 (>= 0 0))))

(assert (=> d!765417 (= (lemmaDropApply!882 lt!942315 0) lt!942603)))

(declare-fun b!2676761 () Bool)

(assert (=> b!2676761 (= e!1687265 (< 0 (size!23808 lt!942315)))))

(assert (= (and d!765417 res!1125397) b!2676761))

(assert (=> d!765417 m!3042727))

(assert (=> d!765417 m!3042727))

(assert (=> d!765417 m!3042729))

(assert (=> d!765417 m!3042731))

(declare-fun m!3043845 () Bool)

(assert (=> d!765417 m!3043845))

(assert (=> b!2676761 m!3043785))

(assert (=> b!2676120 d!765417))

(declare-fun d!765419 () Bool)

(assert (=> d!765419 (= (head!6083 (drop!1673 lt!942315 0)) (h!36220 (drop!1673 lt!942315 0)))))

(assert (=> b!2676120 d!765419))

(declare-fun b!2676762 () Bool)

(declare-fun e!1687267 () Int)

(assert (=> b!2676762 (= e!1687267 0)))

(declare-fun b!2676763 () Bool)

(declare-fun e!1687266 () List!30900)

(assert (=> b!2676763 (= e!1687266 Nil!30800)))

(declare-fun b!2676764 () Bool)

(declare-fun e!1687270 () List!30900)

(assert (=> b!2676764 (= e!1687266 e!1687270)))

(declare-fun c!431304 () Bool)

(assert (=> b!2676764 (= c!431304 (<= 0 0))))

(declare-fun b!2676765 () Bool)

(assert (=> b!2676765 (= e!1687270 lt!942320)))

(declare-fun b!2676766 () Bool)

(declare-fun e!1687269 () Bool)

(declare-fun lt!942604 () List!30900)

(declare-fun e!1687268 () Int)

(assert (=> b!2676766 (= e!1687269 (= (size!23808 lt!942604) e!1687268))))

(declare-fun c!431306 () Bool)

(assert (=> b!2676766 (= c!431306 (<= 0 0))))

(declare-fun b!2676767 () Bool)

(declare-fun call!172674 () Int)

(assert (=> b!2676767 (= e!1687268 call!172674)))

(declare-fun b!2676768 () Bool)

(assert (=> b!2676768 (= e!1687267 (- call!172674 0))))

(declare-fun b!2676769 () Bool)

(assert (=> b!2676769 (= e!1687268 e!1687267)))

(declare-fun c!431303 () Bool)

(assert (=> b!2676769 (= c!431303 (>= 0 call!172674))))

(declare-fun b!2676770 () Bool)

(assert (=> b!2676770 (= e!1687270 (drop!1673 (t!223827 lt!942320) (- 0 1)))))

(declare-fun bm!172669 () Bool)

(assert (=> bm!172669 (= call!172674 (size!23808 lt!942320))))

(declare-fun d!765423 () Bool)

(assert (=> d!765423 e!1687269))

(declare-fun res!1125398 () Bool)

(assert (=> d!765423 (=> (not res!1125398) (not e!1687269))))

(assert (=> d!765423 (= res!1125398 (= ((_ map implies) (content!4379 lt!942604) (content!4379 lt!942320)) ((as const (InoxSet Token!8880)) true)))))

(assert (=> d!765423 (= lt!942604 e!1687266)))

(declare-fun c!431305 () Bool)

(assert (=> d!765423 (= c!431305 ((_ is Nil!30800) lt!942320))))

(assert (=> d!765423 (= (drop!1673 lt!942320 0) lt!942604)))

(assert (= (and d!765423 c!431305) b!2676763))

(assert (= (and d!765423 (not c!431305)) b!2676764))

(assert (= (and b!2676764 c!431304) b!2676765))

(assert (= (and b!2676764 (not c!431304)) b!2676770))

(assert (= (and d!765423 res!1125398) b!2676766))

(assert (= (and b!2676766 c!431306) b!2676767))

(assert (= (and b!2676766 (not c!431306)) b!2676769))

(assert (= (and b!2676769 c!431303) b!2676762))

(assert (= (and b!2676769 (not c!431303)) b!2676768))

(assert (= (or b!2676767 b!2676769 b!2676768) bm!172669))

(declare-fun m!3043849 () Bool)

(assert (=> b!2676766 m!3043849))

(declare-fun m!3043851 () Bool)

(assert (=> b!2676770 m!3043851))

(assert (=> bm!172669 m!3043761))

(declare-fun m!3043853 () Bool)

(assert (=> d!765423 m!3043853))

(assert (=> d!765423 m!3043769))

(assert (=> b!2676120 d!765423))

(declare-fun d!765425 () Bool)

(declare-fun lt!942609 () BalanceConc!18894)

(assert (=> d!765425 (= (list!11635 lt!942609) (printListTailRec!527 thiss!14116 (dropList!976 lt!942163 (+ 0 1)) (list!11635 (++!7519 (BalanceConc!18895 Empty!9640) (charsOf!2968 (apply!7389 lt!942163 0))))))))

(declare-fun e!1687272 () BalanceConc!18894)

(assert (=> d!765425 (= lt!942609 e!1687272)))

(declare-fun c!431307 () Bool)

(assert (=> d!765425 (= c!431307 (>= (+ 0 1) (size!23804 lt!942163)))))

(declare-fun e!1687271 () Bool)

(assert (=> d!765425 e!1687271))

(declare-fun res!1125399 () Bool)

(assert (=> d!765425 (=> (not res!1125399) (not e!1687271))))

(assert (=> d!765425 (= res!1125399 (>= (+ 0 1) 0))))

(assert (=> d!765425 (= (printTailRec!1155 thiss!14116 lt!942163 (+ 0 1) (++!7519 (BalanceConc!18895 Empty!9640) (charsOf!2968 (apply!7389 lt!942163 0)))) lt!942609)))

(declare-fun b!2676771 () Bool)

(assert (=> b!2676771 (= e!1687271 (<= (+ 0 1) (size!23804 lt!942163)))))

(declare-fun b!2676772 () Bool)

(assert (=> b!2676772 (= e!1687272 (++!7519 (BalanceConc!18895 Empty!9640) (charsOf!2968 (apply!7389 lt!942163 0))))))

(declare-fun b!2676773 () Bool)

(assert (=> b!2676773 (= e!1687272 (printTailRec!1155 thiss!14116 lt!942163 (+ 0 1 1) (++!7519 (++!7519 (BalanceConc!18895 Empty!9640) (charsOf!2968 (apply!7389 lt!942163 0))) (charsOf!2968 (apply!7389 lt!942163 (+ 0 1))))))))

(declare-fun lt!942606 () List!30900)

(assert (=> b!2676773 (= lt!942606 (list!11639 lt!942163))))

(declare-fun lt!942610 () Unit!45011)

(assert (=> b!2676773 (= lt!942610 (lemmaDropApply!882 lt!942606 (+ 0 1)))))

(assert (=> b!2676773 (= (head!6083 (drop!1673 lt!942606 (+ 0 1))) (apply!7392 lt!942606 (+ 0 1)))))

(declare-fun lt!942607 () Unit!45011)

(assert (=> b!2676773 (= lt!942607 lt!942610)))

(declare-fun lt!942611 () List!30900)

(assert (=> b!2676773 (= lt!942611 (list!11639 lt!942163))))

(declare-fun lt!942605 () Unit!45011)

(assert (=> b!2676773 (= lt!942605 (lemmaDropTail!854 lt!942611 (+ 0 1)))))

(assert (=> b!2676773 (= (tail!4321 (drop!1673 lt!942611 (+ 0 1))) (drop!1673 lt!942611 (+ 0 1 1)))))

(declare-fun lt!942608 () Unit!45011)

(assert (=> b!2676773 (= lt!942608 lt!942605)))

(assert (= (and d!765425 res!1125399) b!2676771))

(assert (= (and d!765425 c!431307) b!2676772))

(assert (= (and d!765425 (not c!431307)) b!2676773))

(assert (=> d!765425 m!3042739))

(declare-fun m!3043855 () Bool)

(assert (=> d!765425 m!3043855))

(declare-fun m!3043857 () Bool)

(assert (=> d!765425 m!3043857))

(assert (=> d!765425 m!3043855))

(declare-fun m!3043859 () Bool)

(assert (=> d!765425 m!3043859))

(assert (=> d!765425 m!3042719))

(declare-fun m!3043861 () Bool)

(assert (=> d!765425 m!3043861))

(assert (=> d!765425 m!3043857))

(assert (=> b!2676771 m!3042719))

(declare-fun m!3043865 () Bool)

(assert (=> b!2676773 m!3043865))

(assert (=> b!2676773 m!3042725))

(declare-fun m!3043867 () Bool)

(assert (=> b!2676773 m!3043867))

(declare-fun m!3043869 () Bool)

(assert (=> b!2676773 m!3043869))

(declare-fun m!3043871 () Bool)

(assert (=> b!2676773 m!3043871))

(declare-fun m!3043873 () Bool)

(assert (=> b!2676773 m!3043873))

(declare-fun m!3043875 () Bool)

(assert (=> b!2676773 m!3043875))

(declare-fun m!3043877 () Bool)

(assert (=> b!2676773 m!3043877))

(declare-fun m!3043879 () Bool)

(assert (=> b!2676773 m!3043879))

(declare-fun m!3043881 () Bool)

(assert (=> b!2676773 m!3043881))

(assert (=> b!2676773 m!3043867))

(assert (=> b!2676773 m!3043873))

(declare-fun m!3043883 () Bool)

(assert (=> b!2676773 m!3043883))

(assert (=> b!2676773 m!3042739))

(assert (=> b!2676773 m!3043883))

(assert (=> b!2676773 m!3043875))

(declare-fun m!3043885 () Bool)

(assert (=> b!2676773 m!3043885))

(declare-fun m!3043887 () Bool)

(assert (=> b!2676773 m!3043887))

(assert (=> b!2676773 m!3043885))

(assert (=> b!2676120 d!765425))

(declare-fun d!765429 () Bool)

(assert (=> d!765429 (= (tail!4321 (drop!1673 lt!942320 0)) (t!223827 (drop!1673 lt!942320 0)))))

(assert (=> b!2676120 d!765429))

(declare-fun b!2676776 () Bool)

(declare-fun e!1687276 () Int)

(assert (=> b!2676776 (= e!1687276 0)))

(declare-fun b!2676777 () Bool)

(declare-fun e!1687275 () List!30900)

(assert (=> b!2676777 (= e!1687275 Nil!30800)))

(declare-fun b!2676778 () Bool)

(declare-fun e!1687279 () List!30900)

(assert (=> b!2676778 (= e!1687275 e!1687279)))

(declare-fun c!431309 () Bool)

(assert (=> b!2676778 (= c!431309 (<= 0 0))))

(declare-fun b!2676779 () Bool)

(assert (=> b!2676779 (= e!1687279 lt!942315)))

(declare-fun b!2676780 () Bool)

(declare-fun e!1687278 () Bool)

(declare-fun lt!942612 () List!30900)

(declare-fun e!1687277 () Int)

(assert (=> b!2676780 (= e!1687278 (= (size!23808 lt!942612) e!1687277))))

(declare-fun c!431311 () Bool)

(assert (=> b!2676780 (= c!431311 (<= 0 0))))

(declare-fun b!2676781 () Bool)

(declare-fun call!172675 () Int)

(assert (=> b!2676781 (= e!1687277 call!172675)))

(declare-fun b!2676782 () Bool)

(assert (=> b!2676782 (= e!1687276 (- call!172675 0))))

(declare-fun b!2676783 () Bool)

(assert (=> b!2676783 (= e!1687277 e!1687276)))

(declare-fun c!431308 () Bool)

(assert (=> b!2676783 (= c!431308 (>= 0 call!172675))))

(declare-fun b!2676784 () Bool)

(assert (=> b!2676784 (= e!1687279 (drop!1673 (t!223827 lt!942315) (- 0 1)))))

(declare-fun bm!172670 () Bool)

(assert (=> bm!172670 (= call!172675 (size!23808 lt!942315))))

(declare-fun d!765435 () Bool)

(assert (=> d!765435 e!1687278))

(declare-fun res!1125402 () Bool)

(assert (=> d!765435 (=> (not res!1125402) (not e!1687278))))

(assert (=> d!765435 (= res!1125402 (= ((_ map implies) (content!4379 lt!942612) (content!4379 lt!942315)) ((as const (InoxSet Token!8880)) true)))))

(assert (=> d!765435 (= lt!942612 e!1687275)))

(declare-fun c!431310 () Bool)

(assert (=> d!765435 (= c!431310 ((_ is Nil!30800) lt!942315))))

(assert (=> d!765435 (= (drop!1673 lt!942315 0) lt!942612)))

(assert (= (and d!765435 c!431310) b!2676777))

(assert (= (and d!765435 (not c!431310)) b!2676778))

(assert (= (and b!2676778 c!431309) b!2676779))

(assert (= (and b!2676778 (not c!431309)) b!2676784))

(assert (= (and d!765435 res!1125402) b!2676780))

(assert (= (and b!2676780 c!431311) b!2676781))

(assert (= (and b!2676780 (not c!431311)) b!2676783))

(assert (= (and b!2676783 c!431308) b!2676776))

(assert (= (and b!2676783 (not c!431308)) b!2676782))

(assert (= (or b!2676781 b!2676783 b!2676782) bm!172670))

(declare-fun m!3043897 () Bool)

(assert (=> b!2676780 m!3043897))

(declare-fun m!3043899 () Bool)

(assert (=> b!2676784 m!3043899))

(assert (=> bm!172670 m!3043785))

(declare-fun m!3043901 () Bool)

(assert (=> d!765435 m!3043901))

(declare-fun m!3043903 () Bool)

(assert (=> d!765435 m!3043903))

(assert (=> b!2676120 d!765435))

(declare-fun b!2676789 () Bool)

(declare-fun res!1125403 () Bool)

(declare-fun e!1687281 () Bool)

(assert (=> b!2676789 (=> (not res!1125403) (not e!1687281))))

(declare-fun lt!942614 () List!30898)

(assert (=> b!2676789 (= res!1125403 (= (size!23800 lt!942614) (+ (size!23800 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180))))) (size!23800 (_2!17668 (get!9679 lt!942180))))))))

(declare-fun b!2676788 () Bool)

(declare-fun e!1687282 () List!30898)

(assert (=> b!2676788 (= e!1687282 (Cons!30798 (h!36218 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180))))) (++!7517 (t!223825 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180))))) (_2!17668 (get!9679 lt!942180)))))))

(declare-fun b!2676790 () Bool)

(assert (=> b!2676790 (= e!1687281 (or (not (= (_2!17668 (get!9679 lt!942180)) Nil!30798)) (= lt!942614 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180)))))))))

(declare-fun b!2676787 () Bool)

(assert (=> b!2676787 (= e!1687282 (_2!17668 (get!9679 lt!942180)))))

(declare-fun d!765439 () Bool)

(assert (=> d!765439 e!1687281))

(declare-fun res!1125404 () Bool)

(assert (=> d!765439 (=> (not res!1125404) (not e!1687281))))

(assert (=> d!765439 (= res!1125404 (= (content!4377 lt!942614) ((_ map or) (content!4377 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180))))) (content!4377 (_2!17668 (get!9679 lt!942180))))))))

(assert (=> d!765439 (= lt!942614 e!1687282)))

(declare-fun c!431313 () Bool)

(assert (=> d!765439 (= c!431313 ((_ is Nil!30798) (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180))))))))

(assert (=> d!765439 (= (++!7517 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942180)))) (_2!17668 (get!9679 lt!942180))) lt!942614)))

(assert (= (and d!765439 c!431313) b!2676787))

(assert (= (and d!765439 (not c!431313)) b!2676788))

(assert (= (and d!765439 res!1125404) b!2676789))

(assert (= (and b!2676789 res!1125403) b!2676790))

(declare-fun m!3043913 () Bool)

(assert (=> b!2676789 m!3043913))

(assert (=> b!2676789 m!3042377))

(declare-fun m!3043915 () Bool)

(assert (=> b!2676789 m!3043915))

(assert (=> b!2676789 m!3042383))

(declare-fun m!3043917 () Bool)

(assert (=> b!2676788 m!3043917))

(declare-fun m!3043919 () Bool)

(assert (=> d!765439 m!3043919))

(assert (=> d!765439 m!3042377))

(declare-fun m!3043925 () Bool)

(assert (=> d!765439 m!3043925))

(declare-fun m!3043929 () Bool)

(assert (=> d!765439 m!3043929))

(assert (=> b!2675859 d!765439))

(assert (=> b!2675859 d!765303))

(assert (=> b!2675859 d!765305))

(assert (=> b!2675859 d!765301))

(declare-fun bs!479883 () Bool)

(declare-fun d!765447 () Bool)

(assert (= bs!479883 (and d!765447 d!765343)))

(declare-fun lambda!99998 () Int)

(assert (=> bs!479883 (= (and (= (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152)))) (= (toValue!6651 (transformation!4705 (h!36219 rules!1712))) (toValue!6651 (transformation!4705 (rule!7113 separatorToken!152))))) (= lambda!99998 lambda!99993))))

(assert (=> d!765447 true))

(assert (=> d!765447 (< (dynLambda!13384 order!16991 (toChars!6510 (transformation!4705 (h!36219 rules!1712)))) (dynLambda!13392 order!16999 lambda!99998))))

(assert (=> d!765447 true))

(assert (=> d!765447 (< (dynLambda!13382 order!16987 (toValue!6651 (transformation!4705 (h!36219 rules!1712)))) (dynLambda!13392 order!16999 lambda!99998))))

(assert (=> d!765447 (= (semiInverseModEq!1950 (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toValue!6651 (transformation!4705 (h!36219 rules!1712)))) (Forall!1196 lambda!99998))))

(declare-fun bs!479884 () Bool)

(assert (= bs!479884 d!765447))

(declare-fun m!3043933 () Bool)

(assert (=> bs!479884 m!3043933))

(assert (=> d!765037 d!765447))

(declare-fun d!765451 () Bool)

(declare-fun res!1125409 () Bool)

(declare-fun e!1687287 () Bool)

(assert (=> d!765451 (=> res!1125409 e!1687287)))

(assert (=> d!765451 (= res!1125409 (not ((_ is Cons!30799) (t!223826 rules!1712))))))

(assert (=> d!765451 (= (sepAndNonSepRulesDisjointChars!1278 rules!1712 (t!223826 rules!1712)) e!1687287)))

(declare-fun b!2676797 () Bool)

(declare-fun e!1687288 () Bool)

(assert (=> b!2676797 (= e!1687287 e!1687288)))

(declare-fun res!1125410 () Bool)

(assert (=> b!2676797 (=> (not res!1125410) (not e!1687288))))

(assert (=> b!2676797 (= res!1125410 (ruleDisjointCharsFromAllFromOtherType!557 (h!36219 (t!223826 rules!1712)) rules!1712))))

(declare-fun b!2676798 () Bool)

(assert (=> b!2676798 (= e!1687288 (sepAndNonSepRulesDisjointChars!1278 rules!1712 (t!223826 (t!223826 rules!1712))))))

(assert (= (and d!765451 (not res!1125409)) b!2676797))

(assert (= (and b!2676797 res!1125410) b!2676798))

(declare-fun m!3043949 () Bool)

(assert (=> b!2676797 m!3043949))

(declare-fun m!3043953 () Bool)

(assert (=> b!2676798 m!3043953))

(assert (=> b!2675956 d!765451))

(declare-fun d!765453 () Bool)

(declare-fun lt!942618 () Int)

(assert (=> d!765453 (>= lt!942618 0)))

(declare-fun e!1687289 () Int)

(assert (=> d!765453 (= lt!942618 e!1687289)))

(declare-fun c!431315 () Bool)

(assert (=> d!765453 (= c!431315 ((_ is Nil!30798) (_2!17668 (get!9679 lt!942180))))))

(assert (=> d!765453 (= (size!23800 (_2!17668 (get!9679 lt!942180))) lt!942618)))

(declare-fun b!2676799 () Bool)

(assert (=> b!2676799 (= e!1687289 0)))

(declare-fun b!2676800 () Bool)

(assert (=> b!2676800 (= e!1687289 (+ 1 (size!23800 (t!223825 (_2!17668 (get!9679 lt!942180))))))))

(assert (= (and d!765453 c!431315) b!2676799))

(assert (= (and d!765453 (not c!431315)) b!2676800))

(declare-fun m!3043959 () Bool)

(assert (=> b!2676800 m!3043959))

(assert (=> b!2675861 d!765453))

(assert (=> b!2675861 d!765301))

(declare-fun d!765457 () Bool)

(declare-fun lt!942620 () Int)

(assert (=> d!765457 (>= lt!942620 0)))

(declare-fun e!1687290 () Int)

(assert (=> d!765457 (= lt!942620 e!1687290)))

(declare-fun c!431316 () Bool)

(assert (=> d!765457 (= c!431316 ((_ is Nil!30798) (++!7517 lt!942160 lt!942166)))))

(assert (=> d!765457 (= (size!23800 (++!7517 lt!942160 lt!942166)) lt!942620)))

(declare-fun b!2676801 () Bool)

(assert (=> b!2676801 (= e!1687290 0)))

(declare-fun b!2676802 () Bool)

(assert (=> b!2676802 (= e!1687290 (+ 1 (size!23800 (t!223825 (++!7517 lt!942160 lt!942166)))))))

(assert (= (and d!765457 c!431316) b!2676801))

(assert (= (and d!765457 (not c!431316)) b!2676802))

(declare-fun m!3043967 () Bool)

(assert (=> b!2676802 m!3043967))

(assert (=> b!2675861 d!765457))

(assert (=> d!765111 d!765357))

(assert (=> d!765111 d!765355))

(declare-fun d!765463 () Bool)

(declare-fun lt!942621 () Int)

(assert (=> d!765463 (= lt!942621 (size!23808 (list!11639 (_1!17669 lt!942343))))))

(assert (=> d!765463 (= lt!942621 (size!23807 (c!431110 (_1!17669 lt!942343))))))

(assert (=> d!765463 (= (size!23804 (_1!17669 lt!942343)) lt!942621)))

(declare-fun bs!479887 () Bool)

(assert (= bs!479887 d!765463))

(assert (=> bs!479887 m!3043677))

(assert (=> bs!479887 m!3043677))

(declare-fun m!3043969 () Bool)

(assert (=> bs!479887 m!3043969))

(declare-fun m!3043971 () Bool)

(assert (=> bs!479887 m!3043971))

(assert (=> d!765111 d!765463))

(assert (=> d!765111 d!765359))

(declare-fun d!765465 () Bool)

(assert (=> d!765465 (= (list!11639 (_1!17669 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152))))) (list!11641 (c!431110 (_1!17669 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 separatorToken!152)))))))))

(declare-fun bs!479888 () Bool)

(assert (= bs!479888 d!765465))

(declare-fun m!3043973 () Bool)

(assert (=> bs!479888 m!3043973))

(assert (=> d!765111 d!765465))

(assert (=> d!765111 d!765033))

(declare-fun d!765467 () Bool)

(assert (=> d!765467 (= (list!11639 (singletonSeq!2102 separatorToken!152)) (list!11641 (c!431110 (singletonSeq!2102 separatorToken!152))))))

(declare-fun bs!479889 () Bool)

(assert (= bs!479889 d!765467))

(declare-fun m!3043975 () Bool)

(assert (=> bs!479889 m!3043975))

(assert (=> d!765111 d!765467))

(assert (=> b!2675864 d!765301))

(declare-fun d!765469 () Bool)

(declare-fun dynLambda!13393 (Int BalanceConc!18894) TokenValue!4927)

(assert (=> d!765469 (= (apply!7387 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))) (seqFromList!3207 (originalCharacters!5471 (_1!17668 (get!9679 lt!942180))))) (dynLambda!13393 (toValue!6651 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180))))) (seqFromList!3207 (originalCharacters!5471 (_1!17668 (get!9679 lt!942180))))))))

(declare-fun b_lambda!81693 () Bool)

(assert (=> (not b_lambda!81693) (not d!765469)))

(declare-fun t!223968 () Bool)

(declare-fun tb!150193 () Bool)

(assert (=> (and b!2675770 (= (toValue!6651 (transformation!4705 (h!36219 rules!1712))) (toValue!6651 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))) t!223968) tb!150193))

(declare-fun result!185504 () Bool)

(assert (=> tb!150193 (= result!185504 (inv!21 (dynLambda!13393 (toValue!6651 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180))))) (seqFromList!3207 (originalCharacters!5471 (_1!17668 (get!9679 lt!942180)))))))))

(declare-fun m!3043977 () Bool)

(assert (=> tb!150193 m!3043977))

(assert (=> d!765469 t!223968))

(declare-fun b_and!197987 () Bool)

(assert (= b_and!197841 (and (=> t!223968 result!185504) b_and!197987)))

(declare-fun tb!150195 () Bool)

(declare-fun t!223970 () Bool)

(assert (=> (and b!2676285 (= (toValue!6651 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (toValue!6651 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))) t!223970) tb!150195))

(declare-fun result!185508 () Bool)

(assert (= result!185508 result!185504))

(assert (=> d!765469 t!223970))

(declare-fun b_and!197989 () Bool)

(assert (= b_and!197893 (and (=> t!223970 result!185508) b_and!197989)))

(declare-fun t!223972 () Bool)

(declare-fun tb!150197 () Bool)

(assert (=> (and b!2675776 (= (toValue!6651 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toValue!6651 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))) t!223972) tb!150197))

(declare-fun result!185510 () Bool)

(assert (= result!185510 result!185504))

(assert (=> d!765469 t!223972))

(declare-fun b_and!197991 () Bool)

(assert (= b_and!197833 (and (=> t!223972 result!185510) b_and!197991)))

(declare-fun t!223974 () Bool)

(declare-fun tb!150199 () Bool)

(assert (=> (and b!2675783 (= (toValue!6651 (transformation!4705 (rule!7113 separatorToken!152))) (toValue!6651 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))) t!223974) tb!150199))

(declare-fun result!185512 () Bool)

(assert (= result!185512 result!185504))

(assert (=> d!765469 t!223974))

(declare-fun b_and!197993 () Bool)

(assert (= b_and!197837 (and (=> t!223974 result!185512) b_and!197993)))

(declare-fun t!223976 () Bool)

(declare-fun tb!150201 () Bool)

(assert (=> (and b!2676266 (= (toValue!6651 (transformation!4705 (h!36219 (t!223826 rules!1712)))) (toValue!6651 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))) t!223976) tb!150201))

(declare-fun result!185514 () Bool)

(assert (= result!185514 result!185504))

(assert (=> d!765469 t!223976))

(declare-fun b_and!197995 () Bool)

(assert (= b_and!197889 (and (=> t!223976 result!185514) b_and!197995)))

(assert (=> d!765469 m!3042387))

(declare-fun m!3043979 () Bool)

(assert (=> d!765469 m!3043979))

(assert (=> b!2675864 d!765469))

(declare-fun d!765471 () Bool)

(assert (=> d!765471 (= (seqFromList!3207 (originalCharacters!5471 (_1!17668 (get!9679 lt!942180)))) (fromListB!1449 (originalCharacters!5471 (_1!17668 (get!9679 lt!942180)))))))

(declare-fun bs!479890 () Bool)

(assert (= bs!479890 d!765471))

(declare-fun m!3043981 () Bool)

(assert (=> bs!479890 m!3043981))

(assert (=> b!2675864 d!765471))

(declare-fun d!765473 () Bool)

(declare-fun lt!942622 () Token!8880)

(assert (=> d!765473 (= lt!942622 (apply!7392 (list!11639 (_1!17669 lt!942245)) 0))))

(assert (=> d!765473 (= lt!942622 (apply!7393 (c!431110 (_1!17669 lt!942245)) 0))))

(declare-fun e!1687300 () Bool)

(assert (=> d!765473 e!1687300))

(declare-fun res!1125415 () Bool)

(assert (=> d!765473 (=> (not res!1125415) (not e!1687300))))

(assert (=> d!765473 (= res!1125415 (<= 0 0))))

(assert (=> d!765473 (= (apply!7389 (_1!17669 lt!942245) 0) lt!942622)))

(declare-fun b!2676813 () Bool)

(assert (=> b!2676813 (= e!1687300 (< 0 (size!23804 (_1!17669 lt!942245))))))

(assert (= (and d!765473 res!1125415) b!2676813))

(declare-fun m!3043983 () Bool)

(assert (=> d!765473 m!3043983))

(assert (=> d!765473 m!3043983))

(declare-fun m!3043985 () Bool)

(assert (=> d!765473 m!3043985))

(declare-fun m!3043987 () Bool)

(assert (=> d!765473 m!3043987))

(assert (=> b!2676813 m!3042601))

(assert (=> b!2676013 d!765473))

(declare-fun d!765475 () Bool)

(assert (=> d!765475 (dynLambda!13386 lambda!99968 (h!36220 (t!223827 l!4335)))))

(declare-fun lt!942623 () Unit!45011)

(assert (=> d!765475 (= lt!942623 (choose!15850 (t!223827 l!4335) lambda!99968 (h!36220 (t!223827 l!4335))))))

(declare-fun e!1687301 () Bool)

(assert (=> d!765475 e!1687301))

(declare-fun res!1125416 () Bool)

(assert (=> d!765475 (=> (not res!1125416) (not e!1687301))))

(assert (=> d!765475 (= res!1125416 (forall!6522 (t!223827 l!4335) lambda!99968))))

(assert (=> d!765475 (= (forallContained!1045 (t!223827 l!4335) lambda!99968 (h!36220 (t!223827 l!4335))) lt!942623)))

(declare-fun b!2676814 () Bool)

(assert (=> b!2676814 (= e!1687301 (contains!5925 (t!223827 l!4335) (h!36220 (t!223827 l!4335))))))

(assert (= (and d!765475 res!1125416) b!2676814))

(declare-fun b_lambda!81695 () Bool)

(assert (=> (not b_lambda!81695) (not d!765475)))

(declare-fun m!3043989 () Bool)

(assert (=> d!765475 m!3043989))

(declare-fun m!3043991 () Bool)

(assert (=> d!765475 m!3043991))

(declare-fun m!3043993 () Bool)

(assert (=> d!765475 m!3043993))

(declare-fun m!3043995 () Bool)

(assert (=> b!2676814 m!3043995))

(assert (=> b!2675898 d!765475))

(declare-fun b!2676817 () Bool)

(declare-fun res!1125417 () Bool)

(declare-fun e!1687302 () Bool)

(assert (=> b!2676817 (=> (not res!1125417) (not e!1687302))))

(declare-fun lt!942624 () List!30898)

(assert (=> b!2676817 (= res!1125417 (= (size!23800 lt!942624) (+ (size!23800 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335))))) (size!23800 lt!942203))))))

(declare-fun b!2676816 () Bool)

(declare-fun e!1687303 () List!30898)

(assert (=> b!2676816 (= e!1687303 (Cons!30798 (h!36218 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335))))) (++!7517 (t!223825 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335))))) lt!942203)))))

(declare-fun b!2676818 () Bool)

(assert (=> b!2676818 (= e!1687302 (or (not (= lt!942203 Nil!30798)) (= lt!942624 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335)))))))))

(declare-fun b!2676815 () Bool)

(assert (=> b!2676815 (= e!1687303 lt!942203)))

(declare-fun d!765477 () Bool)

(assert (=> d!765477 e!1687302))

(declare-fun res!1125418 () Bool)

(assert (=> d!765477 (=> (not res!1125418) (not e!1687302))))

(assert (=> d!765477 (= res!1125418 (= (content!4377 lt!942624) ((_ map or) (content!4377 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335))))) (content!4377 lt!942203))))))

(assert (=> d!765477 (= lt!942624 e!1687303)))

(declare-fun c!431319 () Bool)

(assert (=> d!765477 (= c!431319 ((_ is Nil!30798) (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335))))))))

(assert (=> d!765477 (= (++!7517 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335)))) lt!942203) lt!942624)))

(assert (= (and d!765477 c!431319) b!2676815))

(assert (= (and d!765477 (not c!431319)) b!2676816))

(assert (= (and d!765477 res!1125418) b!2676817))

(assert (= (and b!2676817 res!1125417) b!2676818))

(declare-fun m!3043997 () Bool)

(assert (=> b!2676817 m!3043997))

(assert (=> b!2676817 m!3042431))

(declare-fun m!3043999 () Bool)

(assert (=> b!2676817 m!3043999))

(assert (=> b!2676817 m!3043689))

(declare-fun m!3044001 () Bool)

(assert (=> b!2676816 m!3044001))

(declare-fun m!3044003 () Bool)

(assert (=> d!765477 m!3044003))

(assert (=> d!765477 m!3042431))

(declare-fun m!3044005 () Bool)

(assert (=> d!765477 m!3044005))

(assert (=> d!765477 m!3043697))

(assert (=> b!2675898 d!765477))

(declare-fun b!2676823 () Bool)

(declare-fun e!1687309 () Bool)

(declare-fun e!1687307 () Bool)

(assert (=> b!2676823 (= e!1687309 e!1687307)))

(declare-fun res!1125423 () Bool)

(assert (=> b!2676823 (=> (not res!1125423) (not e!1687307))))

(declare-fun lt!942625 () Option!6096)

(assert (=> b!2676823 (= res!1125423 (isDefined!4843 lt!942625))))

(declare-fun b!2676824 () Bool)

(declare-fun res!1125421 () Bool)

(assert (=> b!2676824 (=> (not res!1125421) (not e!1687307))))

(assert (=> b!2676824 (= res!1125421 (= (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942625)))) (originalCharacters!5471 (_1!17668 (get!9679 lt!942625)))))))

(declare-fun b!2676825 () Bool)

(declare-fun res!1125427 () Bool)

(assert (=> b!2676825 (=> (not res!1125427) (not e!1687307))))

(assert (=> b!2676825 (= res!1125427 (= (++!7517 (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942625)))) (_2!17668 (get!9679 lt!942625))) (++!7517 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335)))) lt!942203)))))

(declare-fun b!2676826 () Bool)

(assert (=> b!2676826 (= e!1687307 (contains!5926 rules!1712 (rule!7113 (_1!17668 (get!9679 lt!942625)))))))

(declare-fun b!2676827 () Bool)

(declare-fun res!1125425 () Bool)

(assert (=> b!2676827 (=> (not res!1125425) (not e!1687307))))

(assert (=> b!2676827 (= res!1125425 (< (size!23800 (_2!17668 (get!9679 lt!942625))) (size!23800 (++!7517 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335)))) lt!942203))))))

(declare-fun d!765479 () Bool)

(assert (=> d!765479 e!1687309))

(declare-fun res!1125422 () Bool)

(assert (=> d!765479 (=> res!1125422 e!1687309)))

(assert (=> d!765479 (= res!1125422 (isEmpty!17624 lt!942625))))

(declare-fun e!1687308 () Option!6096)

(assert (=> d!765479 (= lt!942625 e!1687308)))

(declare-fun c!431321 () Bool)

(assert (=> d!765479 (= c!431321 (and ((_ is Cons!30799) rules!1712) ((_ is Nil!30799) (t!223826 rules!1712))))))

(declare-fun lt!942628 () Unit!45011)

(declare-fun lt!942626 () Unit!45011)

(assert (=> d!765479 (= lt!942628 lt!942626)))

(assert (=> d!765479 (isPrefix!2458 (++!7517 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335)))) lt!942203) (++!7517 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335)))) lt!942203))))

(assert (=> d!765479 (= lt!942626 (lemmaIsPrefixRefl!1584 (++!7517 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335)))) lt!942203) (++!7517 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335)))) lt!942203)))))

(assert (=> d!765479 (rulesValidInductive!1638 thiss!14116 rules!1712)))

(assert (=> d!765479 (= (maxPrefix!2340 thiss!14116 rules!1712 (++!7517 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335)))) lt!942203)) lt!942625)))

(declare-fun call!172679 () Option!6096)

(declare-fun bm!172674 () Bool)

(assert (=> bm!172674 (= call!172679 (maxPrefixOneRule!1487 thiss!14116 (h!36219 rules!1712) (++!7517 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335)))) lt!942203)))))

(declare-fun b!2676828 () Bool)

(assert (=> b!2676828 (= e!1687308 call!172679)))

(declare-fun b!2676829 () Bool)

(declare-fun lt!942629 () Option!6096)

(declare-fun lt!942627 () Option!6096)

(assert (=> b!2676829 (= e!1687308 (ite (and ((_ is None!6095) lt!942629) ((_ is None!6095) lt!942627)) None!6095 (ite ((_ is None!6095) lt!942627) lt!942629 (ite ((_ is None!6095) lt!942629) lt!942627 (ite (>= (size!23799 (_1!17668 (v!32652 lt!942629))) (size!23799 (_1!17668 (v!32652 lt!942627)))) lt!942629 lt!942627)))))))

(assert (=> b!2676829 (= lt!942629 call!172679)))

(assert (=> b!2676829 (= lt!942627 (maxPrefix!2340 thiss!14116 (t!223826 rules!1712) (++!7517 (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335)))) lt!942203)))))

(declare-fun b!2676830 () Bool)

(declare-fun res!1125424 () Bool)

(assert (=> b!2676830 (=> (not res!1125424) (not e!1687307))))

(assert (=> b!2676830 (= res!1125424 (= (value!151697 (_1!17668 (get!9679 lt!942625))) (apply!7387 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942625)))) (seqFromList!3207 (originalCharacters!5471 (_1!17668 (get!9679 lt!942625)))))))))

(declare-fun b!2676831 () Bool)

(declare-fun res!1125426 () Bool)

(assert (=> b!2676831 (=> (not res!1125426) (not e!1687307))))

(assert (=> b!2676831 (= res!1125426 (matchR!3629 (regex!4705 (rule!7113 (_1!17668 (get!9679 lt!942625)))) (list!11635 (charsOf!2968 (_1!17668 (get!9679 lt!942625))))))))

(assert (= (and d!765479 c!431321) b!2676828))

(assert (= (and d!765479 (not c!431321)) b!2676829))

(assert (= (or b!2676828 b!2676829) bm!172674))

(assert (= (and d!765479 (not res!1125422)) b!2676823))

(assert (= (and b!2676823 res!1125423) b!2676824))

(assert (= (and b!2676824 res!1125421) b!2676827))

(assert (= (and b!2676827 res!1125425) b!2676825))

(assert (= (and b!2676825 res!1125427) b!2676830))

(assert (= (and b!2676830 res!1125424) b!2676831))

(assert (= (and b!2676831 res!1125426) b!2676826))

(declare-fun m!3044011 () Bool)

(assert (=> d!765479 m!3044011))

(assert (=> d!765479 m!3042433))

(assert (=> d!765479 m!3042433))

(declare-fun m!3044013 () Bool)

(assert (=> d!765479 m!3044013))

(assert (=> d!765479 m!3042433))

(assert (=> d!765479 m!3042433))

(declare-fun m!3044015 () Bool)

(assert (=> d!765479 m!3044015))

(assert (=> d!765479 m!3042369))

(assert (=> bm!172674 m!3042433))

(declare-fun m!3044017 () Bool)

(assert (=> bm!172674 m!3044017))

(declare-fun m!3044019 () Bool)

(assert (=> b!2676825 m!3044019))

(declare-fun m!3044021 () Bool)

(assert (=> b!2676825 m!3044021))

(assert (=> b!2676825 m!3044021))

(declare-fun m!3044023 () Bool)

(assert (=> b!2676825 m!3044023))

(assert (=> b!2676825 m!3044023))

(declare-fun m!3044025 () Bool)

(assert (=> b!2676825 m!3044025))

(assert (=> b!2676826 m!3044019))

(declare-fun m!3044027 () Bool)

(assert (=> b!2676826 m!3044027))

(assert (=> b!2676827 m!3044019))

(declare-fun m!3044029 () Bool)

(assert (=> b!2676827 m!3044029))

(assert (=> b!2676827 m!3042433))

(declare-fun m!3044031 () Bool)

(assert (=> b!2676827 m!3044031))

(assert (=> b!2676824 m!3044019))

(assert (=> b!2676824 m!3044021))

(assert (=> b!2676824 m!3044021))

(assert (=> b!2676824 m!3044023))

(assert (=> b!2676830 m!3044019))

(declare-fun m!3044033 () Bool)

(assert (=> b!2676830 m!3044033))

(assert (=> b!2676830 m!3044033))

(declare-fun m!3044035 () Bool)

(assert (=> b!2676830 m!3044035))

(assert (=> b!2676831 m!3044019))

(assert (=> b!2676831 m!3044021))

(assert (=> b!2676831 m!3044021))

(assert (=> b!2676831 m!3044023))

(assert (=> b!2676831 m!3044023))

(declare-fun m!3044037 () Bool)

(assert (=> b!2676831 m!3044037))

(assert (=> b!2676829 m!3042433))

(declare-fun m!3044039 () Bool)

(assert (=> b!2676829 m!3044039))

(declare-fun m!3044041 () Bool)

(assert (=> b!2676823 m!3044041))

(assert (=> b!2675898 d!765479))

(declare-fun d!765483 () Bool)

(assert (=> d!765483 (= (list!11635 (charsOf!2968 (h!36220 (t!223827 l!4335)))) (list!11637 (c!431108 (charsOf!2968 (h!36220 (t!223827 l!4335))))))))

(declare-fun bs!479891 () Bool)

(assert (= bs!479891 d!765483))

(declare-fun m!3044043 () Bool)

(assert (=> bs!479891 m!3044043))

(assert (=> b!2675898 d!765483))

(declare-fun bs!479892 () Bool)

(declare-fun b!2676845 () Bool)

(assert (= bs!479892 (and b!2676845 b!2675775)))

(declare-fun lambda!99999 () Int)

(assert (=> bs!479892 (= lambda!99999 lambda!99962)))

(declare-fun bs!479893 () Bool)

(assert (= bs!479893 (and b!2676845 d!765041)))

(assert (=> bs!479893 (= lambda!99999 lambda!99971)))

(declare-fun bs!479894 () Bool)

(assert (= bs!479894 (and b!2676845 b!2675784)))

(assert (=> bs!479894 (not (= lambda!99999 lambda!99961))))

(declare-fun bs!479895 () Bool)

(assert (= bs!479895 (and b!2676845 d!765373)))

(assert (=> bs!479895 (= lambda!99999 lambda!99994)))

(declare-fun bs!479896 () Bool)

(assert (= bs!479896 (and b!2676845 b!2675898)))

(assert (=> bs!479896 (= lambda!99999 lambda!99968)))

(declare-fun b!2676854 () Bool)

(declare-fun e!1687320 () Bool)

(assert (=> b!2676854 (= e!1687320 true)))

(declare-fun b!2676853 () Bool)

(declare-fun e!1687319 () Bool)

(assert (=> b!2676853 (= e!1687319 e!1687320)))

(declare-fun b!2676852 () Bool)

(declare-fun e!1687318 () Bool)

(assert (=> b!2676852 (= e!1687318 e!1687319)))

(assert (=> b!2676845 e!1687318))

(assert (= b!2676853 b!2676854))

(assert (= b!2676852 b!2676853))

(assert (= (and b!2676845 ((_ is Cons!30799) rules!1712)) b!2676852))

(assert (=> b!2676854 (< (dynLambda!13382 order!16987 (toValue!6651 (transformation!4705 (h!36219 rules!1712)))) (dynLambda!13383 order!16989 lambda!99999))))

(assert (=> b!2676854 (< (dynLambda!13384 order!16991 (toChars!6510 (transformation!4705 (h!36219 rules!1712)))) (dynLambda!13383 order!16989 lambda!99999))))

(assert (=> b!2676845 true))

(declare-fun b!2676844 () Bool)

(declare-fun c!431322 () Bool)

(declare-fun lt!942634 () Option!6096)

(assert (=> b!2676844 (= c!431322 (and ((_ is Some!6095) lt!942634) (not (= (_1!17668 (v!32652 lt!942634)) (h!36220 (t!223827 (t!223827 l!4335)))))))))

(declare-fun e!1687314 () List!30898)

(declare-fun e!1687315 () List!30898)

(assert (=> b!2676844 (= e!1687314 e!1687315)))

(declare-fun e!1687316 () List!30898)

(assert (=> b!2676845 (= e!1687316 e!1687314)))

(declare-fun lt!942632 () Unit!45011)

(assert (=> b!2676845 (= lt!942632 (forallContained!1045 (t!223827 (t!223827 l!4335)) lambda!99999 (h!36220 (t!223827 (t!223827 l!4335)))))))

(declare-fun lt!942630 () List!30898)

(assert (=> b!2676845 (= lt!942630 (printWithSeparatorTokenWhenNeededList!696 thiss!14116 rules!1712 (t!223827 (t!223827 (t!223827 l!4335))) separatorToken!152))))

(assert (=> b!2676845 (= lt!942634 (maxPrefix!2340 thiss!14116 rules!1712 (++!7517 (list!11635 (charsOf!2968 (h!36220 (t!223827 (t!223827 l!4335))))) lt!942630)))))

(declare-fun c!431323 () Bool)

(assert (=> b!2676845 (= c!431323 (and ((_ is Some!6095) lt!942634) (= (_1!17668 (v!32652 lt!942634)) (h!36220 (t!223827 (t!223827 l!4335))))))))

(declare-fun bm!172675 () Bool)

(declare-fun call!172683 () BalanceConc!18894)

(declare-fun call!172684 () BalanceConc!18894)

(assert (=> bm!172675 (= call!172683 call!172684)))

(declare-fun call!172681 () List!30898)

(declare-fun bm!172676 () Bool)

(assert (=> bm!172676 (= call!172681 (list!11635 (ite c!431323 call!172684 call!172683)))))

(declare-fun b!2676847 () Bool)

(assert (=> b!2676847 (= e!1687316 Nil!30798)))

(declare-fun bm!172677 () Bool)

(declare-fun call!172680 () List!30898)

(declare-fun e!1687317 () BalanceConc!18894)

(assert (=> bm!172677 (= call!172680 (list!11635 e!1687317))))

(declare-fun c!431324 () Bool)

(assert (=> bm!172677 (= c!431324 c!431322)))

(declare-fun b!2676848 () Bool)

(assert (=> b!2676848 (= e!1687315 Nil!30798)))

(assert (=> b!2676848 (= (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 (t!223827 (t!223827 l!4335))))) (printTailRec!1155 thiss!14116 (singletonSeq!2102 (h!36220 (t!223827 (t!223827 l!4335)))) 0 (BalanceConc!18895 Empty!9640)))))

(declare-fun lt!942631 () Unit!45011)

(declare-fun Unit!45023 () Unit!45011)

(assert (=> b!2676848 (= lt!942631 Unit!45023)))

(declare-fun lt!942633 () Unit!45011)

(assert (=> b!2676848 (= lt!942633 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!822 thiss!14116 rules!1712 call!172680 lt!942630))))

(assert (=> b!2676848 false))

(declare-fun lt!942635 () Unit!45011)

(declare-fun Unit!45024 () Unit!45011)

(assert (=> b!2676848 (= lt!942635 Unit!45024)))

(declare-fun bm!172678 () Bool)

(assert (=> bm!172678 (= call!172684 (charsOf!2968 (ite c!431323 (h!36220 (t!223827 (t!223827 l!4335))) (ite c!431322 separatorToken!152 (h!36220 (t!223827 (t!223827 l!4335)))))))))

(declare-fun b!2676849 () Bool)

(declare-fun call!172682 () List!30898)

(assert (=> b!2676849 (= e!1687314 call!172682)))

(declare-fun b!2676846 () Bool)

(assert (=> b!2676846 (= e!1687317 call!172683)))

(declare-fun d!765485 () Bool)

(declare-fun c!431325 () Bool)

(assert (=> d!765485 (= c!431325 ((_ is Cons!30800) (t!223827 (t!223827 l!4335))))))

(assert (=> d!765485 (= (printWithSeparatorTokenWhenNeededList!696 thiss!14116 rules!1712 (t!223827 (t!223827 l!4335)) separatorToken!152) e!1687316)))

(declare-fun b!2676850 () Bool)

(assert (=> b!2676850 (= e!1687315 (++!7517 call!172682 lt!942630))))

(declare-fun b!2676851 () Bool)

(assert (=> b!2676851 (= e!1687317 (charsOf!2968 (h!36220 (t!223827 (t!223827 l!4335)))))))

(declare-fun bm!172679 () Bool)

(assert (=> bm!172679 (= call!172682 (++!7517 (ite c!431323 call!172681 call!172680) (ite c!431323 lt!942630 call!172681)))))

(assert (= (and d!765485 c!431325) b!2676845))

(assert (= (and d!765485 (not c!431325)) b!2676847))

(assert (= (and b!2676845 c!431323) b!2676849))

(assert (= (and b!2676845 (not c!431323)) b!2676844))

(assert (= (and b!2676844 c!431322) b!2676850))

(assert (= (and b!2676844 (not c!431322)) b!2676848))

(assert (= (or b!2676850 b!2676848) bm!172675))

(assert (= (or b!2676850 b!2676848) bm!172677))

(assert (= (and bm!172677 c!431324) b!2676851))

(assert (= (and bm!172677 (not c!431324)) b!2676846))

(assert (= (or b!2676849 bm!172675) bm!172678))

(assert (= (or b!2676849 b!2676850) bm!172676))

(assert (= (or b!2676849 b!2676850) bm!172679))

(declare-fun m!3044045 () Bool)

(assert (=> bm!172677 m!3044045))

(declare-fun m!3044047 () Bool)

(assert (=> bm!172678 m!3044047))

(declare-fun m!3044049 () Bool)

(assert (=> b!2676848 m!3044049))

(assert (=> b!2676848 m!3044049))

(declare-fun m!3044051 () Bool)

(assert (=> b!2676848 m!3044051))

(assert (=> b!2676848 m!3044049))

(declare-fun m!3044053 () Bool)

(assert (=> b!2676848 m!3044053))

(declare-fun m!3044057 () Bool)

(assert (=> b!2676848 m!3044057))

(declare-fun m!3044061 () Bool)

(assert (=> b!2676850 m!3044061))

(declare-fun m!3044065 () Bool)

(assert (=> b!2676845 m!3044065))

(declare-fun m!3044069 () Bool)

(assert (=> b!2676845 m!3044069))

(assert (=> b!2676845 m!3044065))

(declare-fun m!3044075 () Bool)

(assert (=> b!2676845 m!3044075))

(declare-fun m!3044077 () Bool)

(assert (=> b!2676845 m!3044077))

(declare-fun m!3044079 () Bool)

(assert (=> b!2676845 m!3044079))

(declare-fun m!3044081 () Bool)

(assert (=> b!2676845 m!3044081))

(assert (=> b!2676845 m!3044075))

(assert (=> b!2676845 m!3044077))

(declare-fun m!3044083 () Bool)

(assert (=> bm!172679 m!3044083))

(declare-fun m!3044085 () Bool)

(assert (=> bm!172676 m!3044085))

(assert (=> b!2676851 m!3044065))

(assert (=> b!2675898 d!765485))

(declare-fun d!765489 () Bool)

(declare-fun lt!942636 () BalanceConc!18894)

(assert (=> d!765489 (= (list!11635 lt!942636) (originalCharacters!5471 (h!36220 (t!223827 l!4335))))))

(assert (=> d!765489 (= lt!942636 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (value!151697 (h!36220 (t!223827 l!4335)))))))

(assert (=> d!765489 (= (charsOf!2968 (h!36220 (t!223827 l!4335))) lt!942636)))

(declare-fun b_lambda!81697 () Bool)

(assert (=> (not b_lambda!81697) (not d!765489)))

(declare-fun t!223979 () Bool)

(declare-fun tb!150203 () Bool)

(assert (=> (and b!2676285 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335)))))) t!223979) tb!150203))

(declare-fun b!2676861 () Bool)

(declare-fun e!1687323 () Bool)

(declare-fun tp!846283 () Bool)

(assert (=> b!2676861 (= e!1687323 (and (inv!41817 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (value!151697 (h!36220 (t!223827 l!4335)))))) tp!846283))))

(declare-fun result!185516 () Bool)

(assert (=> tb!150203 (= result!185516 (and (inv!41818 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (value!151697 (h!36220 (t!223827 l!4335))))) e!1687323))))

(assert (= tb!150203 b!2676861))

(declare-fun m!3044087 () Bool)

(assert (=> b!2676861 m!3044087))

(declare-fun m!3044089 () Bool)

(assert (=> tb!150203 m!3044089))

(assert (=> d!765489 t!223979))

(declare-fun b_and!197997 () Bool)

(assert (= b_and!197979 (and (=> t!223979 result!185516) b_and!197997)))

(declare-fun t!223981 () Bool)

(declare-fun tb!150205 () Bool)

(assert (=> (and b!2675783 (= (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335)))))) t!223981) tb!150205))

(declare-fun result!185518 () Bool)

(assert (= result!185518 result!185516))

(assert (=> d!765489 t!223981))

(declare-fun b_and!197999 () Bool)

(assert (= b_and!197983 (and (=> t!223981 result!185518) b_and!197999)))

(declare-fun tb!150207 () Bool)

(declare-fun t!223983 () Bool)

(assert (=> (and b!2676266 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712)))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335)))))) t!223983) tb!150207))

(declare-fun result!185520 () Bool)

(assert (= result!185520 result!185516))

(assert (=> d!765489 t!223983))

(declare-fun b_and!198001 () Bool)

(assert (= b_and!197985 (and (=> t!223983 result!185520) b_and!198001)))

(declare-fun t!223985 () Bool)

(declare-fun tb!150209 () Bool)

(assert (=> (and b!2675776 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335)))))) t!223985) tb!150209))

(declare-fun result!185522 () Bool)

(assert (= result!185522 result!185516))

(assert (=> d!765489 t!223985))

(declare-fun b_and!198003 () Bool)

(assert (= b_and!197981 (and (=> t!223985 result!185522) b_and!198003)))

(declare-fun tb!150211 () Bool)

(declare-fun t!223987 () Bool)

(assert (=> (and b!2675770 (= (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335)))))) t!223987) tb!150211))

(declare-fun result!185524 () Bool)

(assert (= result!185524 result!185516))

(assert (=> d!765489 t!223987))

(declare-fun b_and!198005 () Bool)

(assert (= b_and!197977 (and (=> t!223987 result!185524) b_and!198005)))

(declare-fun m!3044091 () Bool)

(assert (=> d!765489 m!3044091))

(declare-fun m!3044093 () Bool)

(assert (=> d!765489 m!3044093))

(assert (=> b!2675898 d!765489))

(declare-fun d!765491 () Bool)

(assert (=> d!765491 (= (inv!41810 (tag!5207 (rule!7113 (h!36220 (t!223827 l!4335))))) (= (mod (str.len (value!151696 (tag!5207 (rule!7113 (h!36220 (t!223827 l!4335)))))) 2) 0))))

(assert (=> b!2676284 d!765491))

(declare-fun d!765493 () Bool)

(declare-fun res!1125448 () Bool)

(declare-fun e!1687326 () Bool)

(assert (=> d!765493 (=> (not res!1125448) (not e!1687326))))

(assert (=> d!765493 (= res!1125448 (semiInverseModEq!1950 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (toValue!6651 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335)))))))))

(assert (=> d!765493 (= (inv!41813 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) e!1687326)))

(declare-fun b!2676864 () Bool)

(assert (=> b!2676864 (= e!1687326 (equivClasses!1851 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (toValue!6651 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335)))))))))

(assert (= (and d!765493 res!1125448) b!2676864))

(declare-fun m!3044095 () Bool)

(assert (=> d!765493 m!3044095))

(declare-fun m!3044097 () Bool)

(assert (=> b!2676864 m!3044097))

(assert (=> b!2676284 d!765493))

(declare-fun d!765495 () Bool)

(assert (=> d!765495 (= (inv!41818 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335)))) (isBalanced!2922 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335))))))))

(declare-fun bs!479897 () Bool)

(assert (= bs!479897 d!765495))

(declare-fun m!3044099 () Bool)

(assert (=> bs!479897 m!3044099))

(assert (=> tb!150073 d!765495))

(declare-fun lt!942637 () Bool)

(declare-fun d!765497 () Bool)

(assert (=> d!765497 (= lt!942637 (isEmpty!17629 (list!11635 (_2!17669 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335))))))))))

(assert (=> d!765497 (= lt!942637 (isEmpty!17634 (c!431108 (_2!17669 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335))))))))))

(assert (=> d!765497 (= (isEmpty!17630 (_2!17669 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335)))))) lt!942637)))

(declare-fun bs!479898 () Bool)

(assert (= bs!479898 d!765497))

(declare-fun m!3044101 () Bool)

(assert (=> bs!479898 m!3044101))

(assert (=> bs!479898 m!3044101))

(declare-fun m!3044103 () Bool)

(assert (=> bs!479898 m!3044103))

(declare-fun m!3044105 () Bool)

(assert (=> bs!479898 m!3044105))

(assert (=> b!2676015 d!765497))

(declare-fun b!2676867 () Bool)

(declare-fun lt!942638 () tuple2!30254)

(declare-fun e!1687331 () Bool)

(assert (=> b!2676867 (= e!1687331 (= (_2!17669 lt!942638) (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335)))))))

(declare-fun d!765499 () Bool)

(declare-fun e!1687329 () Bool)

(assert (=> d!765499 e!1687329))

(declare-fun res!1125451 () Bool)

(assert (=> d!765499 (=> (not res!1125451) (not e!1687329))))

(assert (=> d!765499 (= res!1125451 e!1687331)))

(declare-fun c!431326 () Bool)

(assert (=> d!765499 (= c!431326 (> (size!23804 (_1!17669 lt!942638)) 0))))

(assert (=> d!765499 (= lt!942638 (lexTailRecV2!851 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335))) (BalanceConc!18895 Empty!9640) (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335))) (BalanceConc!18897 Empty!9641)))))

(assert (=> d!765499 (= (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335)))) lt!942638)))

(declare-fun b!2676868 () Bool)

(declare-fun res!1125453 () Bool)

(assert (=> b!2676868 (=> (not res!1125453) (not e!1687329))))

(assert (=> b!2676868 (= res!1125453 (= (list!11639 (_1!17669 lt!942638)) (_1!17671 (lexList!1176 thiss!14116 rules!1712 (list!11635 (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335))))))))))

(declare-fun b!2676869 () Bool)

(declare-fun e!1687330 () Bool)

(assert (=> b!2676869 (= e!1687331 e!1687330)))

(declare-fun res!1125452 () Bool)

(assert (=> b!2676869 (= res!1125452 (< (size!23805 (_2!17669 lt!942638)) (size!23805 (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335))))))))

(assert (=> b!2676869 (=> (not res!1125452) (not e!1687330))))

(declare-fun b!2676870 () Bool)

(assert (=> b!2676870 (= e!1687329 (= (list!11635 (_2!17669 lt!942638)) (_2!17671 (lexList!1176 thiss!14116 rules!1712 (list!11635 (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335))))))))))

(declare-fun b!2676871 () Bool)

(assert (=> b!2676871 (= e!1687330 (not (isEmpty!17622 (_1!17669 lt!942638))))))

(assert (= (and d!765499 c!431326) b!2676869))

(assert (= (and d!765499 (not c!431326)) b!2676867))

(assert (= (and b!2676869 res!1125452) b!2676871))

(assert (= (and d!765499 res!1125451) b!2676868))

(assert (= (and b!2676868 res!1125453) b!2676870))

(declare-fun m!3044107 () Bool)

(assert (=> b!2676869 m!3044107))

(assert (=> b!2676869 m!3042607))

(declare-fun m!3044111 () Bool)

(assert (=> b!2676869 m!3044111))

(declare-fun m!3044113 () Bool)

(assert (=> b!2676868 m!3044113))

(assert (=> b!2676868 m!3042607))

(declare-fun m!3044117 () Bool)

(assert (=> b!2676868 m!3044117))

(assert (=> b!2676868 m!3044117))

(declare-fun m!3044119 () Bool)

(assert (=> b!2676868 m!3044119))

(declare-fun m!3044121 () Bool)

(assert (=> d!765499 m!3044121))

(assert (=> d!765499 m!3042607))

(assert (=> d!765499 m!3042607))

(declare-fun m!3044123 () Bool)

(assert (=> d!765499 m!3044123))

(declare-fun m!3044125 () Bool)

(assert (=> b!2676870 m!3044125))

(assert (=> b!2676870 m!3042607))

(assert (=> b!2676870 m!3044117))

(assert (=> b!2676870 m!3044117))

(assert (=> b!2676870 m!3044119))

(declare-fun m!3044127 () Bool)

(assert (=> b!2676871 m!3044127))

(assert (=> b!2676015 d!765499))

(declare-fun d!765503 () Bool)

(declare-fun lt!942640 () BalanceConc!18894)

(assert (=> d!765503 (= (list!11635 lt!942640) (printList!1194 thiss!14116 (list!11639 (singletonSeq!2102 (h!36220 l!4335)))))))

(assert (=> d!765503 (= lt!942640 (printTailRec!1155 thiss!14116 (singletonSeq!2102 (h!36220 l!4335)) 0 (BalanceConc!18895 Empty!9640)))))

(assert (=> d!765503 (= (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335))) lt!942640)))

(declare-fun bs!479899 () Bool)

(assert (= bs!479899 d!765503))

(declare-fun m!3044129 () Bool)

(assert (=> bs!479899 m!3044129))

(assert (=> bs!479899 m!3042299))

(assert (=> bs!479899 m!3042603))

(assert (=> bs!479899 m!3042603))

(declare-fun m!3044131 () Bool)

(assert (=> bs!479899 m!3044131))

(assert (=> bs!479899 m!3042299))

(declare-fun m!3044133 () Bool)

(assert (=> bs!479899 m!3044133))

(assert (=> b!2676015 d!765503))

(assert (=> b!2676015 d!765075))

(declare-fun d!765505 () Bool)

(declare-fun lt!942641 () Int)

(assert (=> d!765505 (>= lt!942641 0)))

(declare-fun e!1687336 () Int)

(assert (=> d!765505 (= lt!942641 e!1687336)))

(declare-fun c!431328 () Bool)

(assert (=> d!765505 (= c!431328 ((_ is Nil!30798) (originalCharacters!5471 separatorToken!152)))))

(assert (=> d!765505 (= (size!23800 (originalCharacters!5471 separatorToken!152)) lt!942641)))

(declare-fun b!2676878 () Bool)

(assert (=> b!2676878 (= e!1687336 0)))

(declare-fun b!2676879 () Bool)

(assert (=> b!2676879 (= e!1687336 (+ 1 (size!23800 (t!223825 (originalCharacters!5471 separatorToken!152)))))))

(assert (= (and d!765505 c!431328) b!2676878))

(assert (= (and d!765505 (not c!431328)) b!2676879))

(declare-fun m!3044147 () Bool)

(assert (=> b!2676879 m!3044147))

(assert (=> b!2675993 d!765505))

(declare-fun d!765507 () Bool)

(declare-fun res!1125458 () Bool)

(declare-fun e!1687337 () Bool)

(assert (=> d!765507 (=> (not res!1125458) (not e!1687337))))

(assert (=> d!765507 (= res!1125458 (not (isEmpty!17629 (originalCharacters!5471 (h!36220 (t!223827 l!4335))))))))

(assert (=> d!765507 (= (inv!41814 (h!36220 (t!223827 l!4335))) e!1687337)))

(declare-fun b!2676880 () Bool)

(declare-fun res!1125459 () Bool)

(assert (=> b!2676880 (=> (not res!1125459) (not e!1687337))))

(assert (=> b!2676880 (= res!1125459 (= (originalCharacters!5471 (h!36220 (t!223827 l!4335))) (list!11635 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))) (value!151697 (h!36220 (t!223827 l!4335)))))))))

(declare-fun b!2676881 () Bool)

(assert (=> b!2676881 (= e!1687337 (= (size!23799 (h!36220 (t!223827 l!4335))) (size!23800 (originalCharacters!5471 (h!36220 (t!223827 l!4335))))))))

(assert (= (and d!765507 res!1125458) b!2676880))

(assert (= (and b!2676880 res!1125459) b!2676881))

(declare-fun b_lambda!81699 () Bool)

(assert (=> (not b_lambda!81699) (not b!2676880)))

(assert (=> b!2676880 t!223979))

(declare-fun b_and!198007 () Bool)

(assert (= b_and!197997 (and (=> t!223979 result!185516) b_and!198007)))

(assert (=> b!2676880 t!223981))

(declare-fun b_and!198009 () Bool)

(assert (= b_and!197999 (and (=> t!223981 result!185518) b_and!198009)))

(assert (=> b!2676880 t!223987))

(declare-fun b_and!198011 () Bool)

(assert (= b_and!198005 (and (=> t!223987 result!185524) b_and!198011)))

(assert (=> b!2676880 t!223983))

(declare-fun b_and!198013 () Bool)

(assert (= b_and!198001 (and (=> t!223983 result!185520) b_and!198013)))

(assert (=> b!2676880 t!223985))

(declare-fun b_and!198015 () Bool)

(assert (= b_and!198003 (and (=> t!223985 result!185522) b_and!198015)))

(declare-fun m!3044159 () Bool)

(assert (=> d!765507 m!3044159))

(assert (=> b!2676880 m!3044093))

(assert (=> b!2676880 m!3044093))

(declare-fun m!3044165 () Bool)

(assert (=> b!2676880 m!3044165))

(declare-fun m!3044167 () Bool)

(assert (=> b!2676881 m!3044167))

(assert (=> b!2676282 d!765507))

(declare-fun b!2676888 () Bool)

(declare-fun res!1125462 () Bool)

(declare-fun e!1687340 () Bool)

(assert (=> b!2676888 (=> (not res!1125462) (not e!1687340))))

(declare-fun lt!942644 () List!30898)

(assert (=> b!2676888 (= res!1125462 (= (size!23800 lt!942644) (+ (size!23800 (t!223825 lt!942160)) (size!23800 lt!942166))))))

(declare-fun b!2676887 () Bool)

(declare-fun e!1687341 () List!30898)

(assert (=> b!2676887 (= e!1687341 (Cons!30798 (h!36218 (t!223825 lt!942160)) (++!7517 (t!223825 (t!223825 lt!942160)) lt!942166)))))

(declare-fun b!2676889 () Bool)

(assert (=> b!2676889 (= e!1687340 (or (not (= lt!942166 Nil!30798)) (= lt!942644 (t!223825 lt!942160))))))

(declare-fun b!2676886 () Bool)

(assert (=> b!2676886 (= e!1687341 lt!942166)))

(declare-fun d!765515 () Bool)

(assert (=> d!765515 e!1687340))

(declare-fun res!1125463 () Bool)

(assert (=> d!765515 (=> (not res!1125463) (not e!1687340))))

(assert (=> d!765515 (= res!1125463 (= (content!4377 lt!942644) ((_ map or) (content!4377 (t!223825 lt!942160)) (content!4377 lt!942166))))))

(assert (=> d!765515 (= lt!942644 e!1687341)))

(declare-fun c!431330 () Bool)

(assert (=> d!765515 (= c!431330 ((_ is Nil!30798) (t!223825 lt!942160)))))

(assert (=> d!765515 (= (++!7517 (t!223825 lt!942160) lt!942166) lt!942644)))

(assert (= (and d!765515 c!431330) b!2676886))

(assert (= (and d!765515 (not c!431330)) b!2676887))

(assert (= (and d!765515 res!1125463) b!2676888))

(assert (= (and b!2676888 res!1125462) b!2676889))

(declare-fun m!3044169 () Bool)

(assert (=> b!2676888 m!3044169))

(assert (=> b!2676888 m!3043585))

(assert (=> b!2676888 m!3042447))

(declare-fun m!3044171 () Bool)

(assert (=> b!2676887 m!3044171))

(declare-fun m!3044173 () Bool)

(assert (=> d!765515 m!3044173))

(declare-fun m!3044175 () Bool)

(assert (=> d!765515 m!3044175))

(assert (=> d!765515 m!3042455))

(assert (=> b!2675923 d!765515))

(assert (=> d!765057 d!765503))

(declare-fun d!765517 () Bool)

(declare-fun lt!942645 () Int)

(assert (=> d!765517 (= lt!942645 (size!23808 (list!11639 (_1!17669 lt!942245))))))

(assert (=> d!765517 (= lt!942645 (size!23807 (c!431110 (_1!17669 lt!942245))))))

(assert (=> d!765517 (= (size!23804 (_1!17669 lt!942245)) lt!942645)))

(declare-fun bs!479901 () Bool)

(assert (= bs!479901 d!765517))

(assert (=> bs!479901 m!3043983))

(assert (=> bs!479901 m!3043983))

(declare-fun m!3044177 () Bool)

(assert (=> bs!479901 m!3044177))

(declare-fun m!3044179 () Bool)

(assert (=> bs!479901 m!3044179))

(assert (=> d!765057 d!765517))

(assert (=> d!765057 d!765075))

(declare-fun d!765519 () Bool)

(assert (=> d!765519 (= (list!11639 (_1!17669 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335)))))) (list!11641 (c!431110 (_1!17669 (lex!1937 thiss!14116 rules!1712 (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 l!4335))))))))))

(declare-fun bs!479902 () Bool)

(assert (= bs!479902 d!765519))

(declare-fun m!3044181 () Bool)

(assert (=> bs!479902 m!3044181))

(assert (=> d!765057 d!765519))

(declare-fun d!765521 () Bool)

(assert (=> d!765521 (= (list!11639 (singletonSeq!2102 (h!36220 l!4335))) (list!11641 (c!431110 (singletonSeq!2102 (h!36220 l!4335)))))))

(declare-fun bs!479903 () Bool)

(assert (= bs!479903 d!765521))

(declare-fun m!3044183 () Bool)

(assert (=> bs!479903 m!3044183))

(assert (=> d!765057 d!765521))

(assert (=> d!765057 d!765033))

(assert (=> d!765057 d!765499))

(declare-fun d!765523 () Bool)

(assert (=> d!765523 (= (isEmpty!17624 lt!942180) (not ((_ is Some!6095) lt!942180)))))

(assert (=> d!764997 d!765523))

(declare-fun b!2676900 () Bool)

(declare-fun e!1687350 () Bool)

(assert (=> b!2676900 (= e!1687350 (isPrefix!2458 (tail!4323 (++!7517 lt!942160 lt!942166)) (tail!4323 (++!7517 lt!942160 lt!942166))))))

(declare-fun d!765525 () Bool)

(declare-fun e!1687348 () Bool)

(assert (=> d!765525 e!1687348))

(declare-fun res!1125473 () Bool)

(assert (=> d!765525 (=> res!1125473 e!1687348)))

(declare-fun lt!942648 () Bool)

(assert (=> d!765525 (= res!1125473 (not lt!942648))))

(declare-fun e!1687349 () Bool)

(assert (=> d!765525 (= lt!942648 e!1687349)))

(declare-fun res!1125472 () Bool)

(assert (=> d!765525 (=> res!1125472 e!1687349)))

(assert (=> d!765525 (= res!1125472 ((_ is Nil!30798) (++!7517 lt!942160 lt!942166)))))

(assert (=> d!765525 (= (isPrefix!2458 (++!7517 lt!942160 lt!942166) (++!7517 lt!942160 lt!942166)) lt!942648)))

(declare-fun b!2676901 () Bool)

(assert (=> b!2676901 (= e!1687348 (>= (size!23800 (++!7517 lt!942160 lt!942166)) (size!23800 (++!7517 lt!942160 lt!942166))))))

(declare-fun b!2676899 () Bool)

(declare-fun res!1125475 () Bool)

(assert (=> b!2676899 (=> (not res!1125475) (not e!1687350))))

(assert (=> b!2676899 (= res!1125475 (= (head!6085 (++!7517 lt!942160 lt!942166)) (head!6085 (++!7517 lt!942160 lt!942166))))))

(declare-fun b!2676898 () Bool)

(assert (=> b!2676898 (= e!1687349 e!1687350)))

(declare-fun res!1125474 () Bool)

(assert (=> b!2676898 (=> (not res!1125474) (not e!1687350))))

(assert (=> b!2676898 (= res!1125474 (not ((_ is Nil!30798) (++!7517 lt!942160 lt!942166))))))

(assert (= (and d!765525 (not res!1125472)) b!2676898))

(assert (= (and b!2676898 res!1125474) b!2676899))

(assert (= (and b!2676899 res!1125475) b!2676900))

(assert (= (and d!765525 (not res!1125473)) b!2676901))

(assert (=> b!2676900 m!3042277))

(declare-fun m!3044185 () Bool)

(assert (=> b!2676900 m!3044185))

(assert (=> b!2676900 m!3042277))

(assert (=> b!2676900 m!3044185))

(assert (=> b!2676900 m!3044185))

(assert (=> b!2676900 m!3044185))

(declare-fun m!3044187 () Bool)

(assert (=> b!2676900 m!3044187))

(assert (=> b!2676901 m!3042277))

(assert (=> b!2676901 m!3042385))

(assert (=> b!2676901 m!3042277))

(assert (=> b!2676901 m!3042385))

(assert (=> b!2676899 m!3042277))

(declare-fun m!3044189 () Bool)

(assert (=> b!2676899 m!3044189))

(assert (=> b!2676899 m!3042277))

(assert (=> b!2676899 m!3044189))

(assert (=> d!764997 d!765525))

(declare-fun d!765527 () Bool)

(assert (=> d!765527 (isPrefix!2458 (++!7517 lt!942160 lt!942166) (++!7517 lt!942160 lt!942166))))

(declare-fun lt!942651 () Unit!45011)

(declare-fun choose!15859 (List!30898 List!30898) Unit!45011)

(assert (=> d!765527 (= lt!942651 (choose!15859 (++!7517 lt!942160 lt!942166) (++!7517 lt!942160 lt!942166)))))

(assert (=> d!765527 (= (lemmaIsPrefixRefl!1584 (++!7517 lt!942160 lt!942166) (++!7517 lt!942160 lt!942166)) lt!942651)))

(declare-fun bs!479904 () Bool)

(assert (= bs!479904 d!765527))

(assert (=> bs!479904 m!3042277))

(assert (=> bs!479904 m!3042277))

(assert (=> bs!479904 m!3042365))

(assert (=> bs!479904 m!3042277))

(assert (=> bs!479904 m!3042277))

(declare-fun m!3044191 () Bool)

(assert (=> bs!479904 m!3044191))

(assert (=> d!764997 d!765527))

(declare-fun bs!479905 () Bool)

(declare-fun d!765529 () Bool)

(assert (= bs!479905 (and d!765529 d!765339)))

(declare-fun lambda!100002 () Int)

(assert (=> bs!479905 (= lambda!100002 lambda!99990)))

(assert (=> d!765529 true))

(declare-fun lt!942654 () Bool)

(assert (=> d!765529 (= lt!942654 (forall!6523 rules!1712 lambda!100002))))

(declare-fun e!1687355 () Bool)

(assert (=> d!765529 (= lt!942654 e!1687355)))

(declare-fun res!1125480 () Bool)

(assert (=> d!765529 (=> res!1125480 e!1687355)))

(assert (=> d!765529 (= res!1125480 (not ((_ is Cons!30799) rules!1712)))))

(assert (=> d!765529 (= (rulesValidInductive!1638 thiss!14116 rules!1712) lt!942654)))

(declare-fun b!2676906 () Bool)

(declare-fun e!1687356 () Bool)

(assert (=> b!2676906 (= e!1687355 e!1687356)))

(declare-fun res!1125481 () Bool)

(assert (=> b!2676906 (=> (not res!1125481) (not e!1687356))))

(assert (=> b!2676906 (= res!1125481 (ruleValid!1554 thiss!14116 (h!36219 rules!1712)))))

(declare-fun b!2676907 () Bool)

(assert (=> b!2676907 (= e!1687356 (rulesValidInductive!1638 thiss!14116 (t!223826 rules!1712)))))

(assert (= (and d!765529 (not res!1125480)) b!2676906))

(assert (= (and b!2676906 res!1125481) b!2676907))

(declare-fun m!3044193 () Bool)

(assert (=> d!765529 m!3044193))

(assert (=> b!2676906 m!3043305))

(assert (=> b!2676907 m!3043355))

(assert (=> d!764997 d!765529))

(declare-fun d!765531 () Bool)

(declare-fun c!431333 () Bool)

(assert (=> d!765531 (= c!431333 ((_ is Node!9640) (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152)))))))

(declare-fun e!1687361 () Bool)

(assert (=> d!765531 (= (inv!41817 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152)))) e!1687361)))

(declare-fun b!2676914 () Bool)

(declare-fun inv!41821 (Conc!9640) Bool)

(assert (=> b!2676914 (= e!1687361 (inv!41821 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152)))))))

(declare-fun b!2676915 () Bool)

(declare-fun e!1687362 () Bool)

(assert (=> b!2676915 (= e!1687361 e!1687362)))

(declare-fun res!1125484 () Bool)

(assert (=> b!2676915 (= res!1125484 (not ((_ is Leaf!14733) (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152))))))))

(assert (=> b!2676915 (=> res!1125484 e!1687362)))

(declare-fun b!2676916 () Bool)

(declare-fun inv!41822 (Conc!9640) Bool)

(assert (=> b!2676916 (= e!1687362 (inv!41822 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152)))))))

(assert (= (and d!765531 c!431333) b!2676914))

(assert (= (and d!765531 (not c!431333)) b!2676915))

(assert (= (and b!2676915 (not res!1125484)) b!2676916))

(declare-fun m!3044195 () Bool)

(assert (=> b!2676914 m!3044195))

(declare-fun m!3044197 () Bool)

(assert (=> b!2676916 m!3044197))

(assert (=> b!2675998 d!765531))

(declare-fun d!765533 () Bool)

(declare-fun lt!942655 () BalanceConc!18894)

(assert (=> d!765533 (= (list!11635 lt!942655) (printList!1194 thiss!14116 (list!11639 (singletonSeq!2102 (h!36220 (t!223827 l!4335))))))))

(assert (=> d!765533 (= lt!942655 (printTailRec!1155 thiss!14116 (singletonSeq!2102 (h!36220 (t!223827 l!4335))) 0 (BalanceConc!18895 Empty!9640)))))

(assert (=> d!765533 (= (print!1681 thiss!14116 (singletonSeq!2102 (h!36220 (t!223827 l!4335)))) lt!942655)))

(declare-fun bs!479906 () Bool)

(assert (= bs!479906 d!765533))

(declare-fun m!3044199 () Bool)

(assert (=> bs!479906 m!3044199))

(assert (=> bs!479906 m!3042417))

(declare-fun m!3044201 () Bool)

(assert (=> bs!479906 m!3044201))

(assert (=> bs!479906 m!3044201))

(declare-fun m!3044203 () Bool)

(assert (=> bs!479906 m!3044203))

(assert (=> bs!479906 m!3042417))

(assert (=> bs!479906 m!3042421))

(assert (=> b!2675901 d!765533))

(declare-fun d!765535 () Bool)

(declare-fun e!1687363 () Bool)

(assert (=> d!765535 e!1687363))

(declare-fun res!1125485 () Bool)

(assert (=> d!765535 (=> (not res!1125485) (not e!1687363))))

(declare-fun lt!942656 () BalanceConc!18896)

(assert (=> d!765535 (= res!1125485 (= (list!11639 lt!942656) (Cons!30800 (h!36220 (t!223827 l!4335)) Nil!30800)))))

(assert (=> d!765535 (= lt!942656 (singleton!932 (h!36220 (t!223827 l!4335))))))

(assert (=> d!765535 (= (singletonSeq!2102 (h!36220 (t!223827 l!4335))) lt!942656)))

(declare-fun b!2676917 () Bool)

(assert (=> b!2676917 (= e!1687363 (isBalanced!2921 (c!431110 lt!942656)))))

(assert (= (and d!765535 res!1125485) b!2676917))

(declare-fun m!3044205 () Bool)

(assert (=> d!765535 m!3044205))

(declare-fun m!3044207 () Bool)

(assert (=> d!765535 m!3044207))

(declare-fun m!3044209 () Bool)

(assert (=> b!2676917 m!3044209))

(assert (=> b!2675901 d!765535))

(declare-fun d!765537 () Bool)

(declare-fun lt!942661 () BalanceConc!18894)

(assert (=> d!765537 (= (list!11635 lt!942661) (printListTailRec!527 thiss!14116 (dropList!976 (singletonSeq!2102 (h!36220 (t!223827 l!4335))) 0) (list!11635 (BalanceConc!18895 Empty!9640))))))

(declare-fun e!1687365 () BalanceConc!18894)

(assert (=> d!765537 (= lt!942661 e!1687365)))

(declare-fun c!431334 () Bool)

(assert (=> d!765537 (= c!431334 (>= 0 (size!23804 (singletonSeq!2102 (h!36220 (t!223827 l!4335))))))))

(declare-fun e!1687364 () Bool)

(assert (=> d!765537 e!1687364))

(declare-fun res!1125486 () Bool)

(assert (=> d!765537 (=> (not res!1125486) (not e!1687364))))

(assert (=> d!765537 (= res!1125486 (>= 0 0))))

(assert (=> d!765537 (= (printTailRec!1155 thiss!14116 (singletonSeq!2102 (h!36220 (t!223827 l!4335))) 0 (BalanceConc!18895 Empty!9640)) lt!942661)))

(declare-fun b!2676918 () Bool)

(assert (=> b!2676918 (= e!1687364 (<= 0 (size!23804 (singletonSeq!2102 (h!36220 (t!223827 l!4335))))))))

(declare-fun b!2676919 () Bool)

(assert (=> b!2676919 (= e!1687365 (BalanceConc!18895 Empty!9640))))

(declare-fun b!2676920 () Bool)

(assert (=> b!2676920 (= e!1687365 (printTailRec!1155 thiss!14116 (singletonSeq!2102 (h!36220 (t!223827 l!4335))) (+ 0 1) (++!7519 (BalanceConc!18895 Empty!9640) (charsOf!2968 (apply!7389 (singletonSeq!2102 (h!36220 (t!223827 l!4335))) 0)))))))

(declare-fun lt!942658 () List!30900)

(assert (=> b!2676920 (= lt!942658 (list!11639 (singletonSeq!2102 (h!36220 (t!223827 l!4335)))))))

(declare-fun lt!942662 () Unit!45011)

(assert (=> b!2676920 (= lt!942662 (lemmaDropApply!882 lt!942658 0))))

(assert (=> b!2676920 (= (head!6083 (drop!1673 lt!942658 0)) (apply!7392 lt!942658 0))))

(declare-fun lt!942659 () Unit!45011)

(assert (=> b!2676920 (= lt!942659 lt!942662)))

(declare-fun lt!942663 () List!30900)

(assert (=> b!2676920 (= lt!942663 (list!11639 (singletonSeq!2102 (h!36220 (t!223827 l!4335)))))))

(declare-fun lt!942657 () Unit!45011)

(assert (=> b!2676920 (= lt!942657 (lemmaDropTail!854 lt!942663 0))))

(assert (=> b!2676920 (= (tail!4321 (drop!1673 lt!942663 0)) (drop!1673 lt!942663 (+ 0 1)))))

(declare-fun lt!942660 () Unit!45011)

(assert (=> b!2676920 (= lt!942660 lt!942657)))

(assert (= (and d!765537 res!1125486) b!2676918))

(assert (= (and d!765537 c!431334) b!2676919))

(assert (= (and d!765537 (not c!431334)) b!2676920))

(assert (=> d!765537 m!3042713))

(declare-fun m!3044211 () Bool)

(assert (=> d!765537 m!3044211))

(assert (=> d!765537 m!3042713))

(declare-fun m!3044213 () Bool)

(assert (=> d!765537 m!3044213))

(assert (=> d!765537 m!3042417))

(declare-fun m!3044215 () Bool)

(assert (=> d!765537 m!3044215))

(declare-fun m!3044217 () Bool)

(assert (=> d!765537 m!3044217))

(assert (=> d!765537 m!3042417))

(assert (=> d!765537 m!3044211))

(assert (=> b!2676918 m!3042417))

(assert (=> b!2676918 m!3044215))

(declare-fun m!3044219 () Bool)

(assert (=> b!2676920 m!3044219))

(assert (=> b!2676920 m!3042417))

(assert (=> b!2676920 m!3044201))

(declare-fun m!3044221 () Bool)

(assert (=> b!2676920 m!3044221))

(declare-fun m!3044223 () Bool)

(assert (=> b!2676920 m!3044223))

(declare-fun m!3044225 () Bool)

(assert (=> b!2676920 m!3044225))

(assert (=> b!2676920 m!3042417))

(declare-fun m!3044227 () Bool)

(assert (=> b!2676920 m!3044227))

(assert (=> b!2676920 m!3042417))

(declare-fun m!3044229 () Bool)

(assert (=> b!2676920 m!3044229))

(declare-fun m!3044231 () Bool)

(assert (=> b!2676920 m!3044231))

(declare-fun m!3044233 () Bool)

(assert (=> b!2676920 m!3044233))

(declare-fun m!3044235 () Bool)

(assert (=> b!2676920 m!3044235))

(assert (=> b!2676920 m!3044221))

(assert (=> b!2676920 m!3044227))

(declare-fun m!3044237 () Bool)

(assert (=> b!2676920 m!3044237))

(assert (=> b!2676920 m!3044237))

(assert (=> b!2676920 m!3044229))

(declare-fun m!3044239 () Bool)

(assert (=> b!2676920 m!3044239))

(declare-fun m!3044241 () Bool)

(assert (=> b!2676920 m!3044241))

(assert (=> b!2676920 m!3044239))

(assert (=> b!2675901 d!765537))

(declare-fun b!2676946 () Bool)

(declare-fun e!1687378 () Unit!45011)

(declare-fun Unit!45025 () Unit!45011)

(assert (=> b!2676946 (= e!1687378 Unit!45025)))

(declare-fun e!1687379 () Bool)

(declare-fun b!2676944 () Bool)

(declare-fun lt!942775 () Token!8880)

(declare-datatypes ((Option!6099 0))(
  ( (None!6098) (Some!6098 (v!32663 Rule!9210)) )
))
(declare-fun get!9682 (Option!6099) Rule!9210)

(declare-fun getRuleFromTag!837 (LexerInterface!4302 List!30899 String!34519) Option!6099)

(assert (=> b!2676944 (= e!1687379 (= (rule!7113 lt!942775) (get!9682 (getRuleFromTag!837 thiss!14116 rules!1712 (tag!5207 (rule!7113 lt!942775))))))))

(declare-fun b!2676945 () Bool)

(declare-fun Unit!45026 () Unit!45011)

(assert (=> b!2676945 (= e!1687378 Unit!45026)))

(declare-fun lt!942770 () List!30898)

(assert (=> b!2676945 (= lt!942770 (++!7517 call!172632 lt!942203))))

(declare-fun lt!942779 () Unit!45011)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!441 (LexerInterface!4302 Rule!9210 List!30899 List!30898) Unit!45011)

(assert (=> b!2676945 (= lt!942779 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!441 thiss!14116 (rule!7113 lt!942775) rules!1712 lt!942770))))

(assert (=> b!2676945 (isEmpty!17624 (maxPrefixOneRule!1487 thiss!14116 (rule!7113 lt!942775) lt!942770))))

(declare-fun lt!942781 () Unit!45011)

(assert (=> b!2676945 (= lt!942781 lt!942779)))

(declare-fun lt!942773 () List!30898)

(assert (=> b!2676945 (= lt!942773 (list!11635 (charsOf!2968 lt!942775)))))

(declare-fun lt!942772 () Unit!45011)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!429 (LexerInterface!4302 Rule!9210 List!30898 List!30898) Unit!45011)

(assert (=> b!2676945 (= lt!942772 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!429 thiss!14116 (rule!7113 lt!942775) lt!942773 (++!7517 call!172632 lt!942203)))))

(assert (=> b!2676945 (not (matchR!3629 (regex!4705 (rule!7113 lt!942775)) lt!942773))))

(declare-fun lt!942766 () Unit!45011)

(assert (=> b!2676945 (= lt!942766 lt!942772)))

(assert (=> b!2676945 false))

(declare-fun d!765539 () Bool)

(assert (=> d!765539 (isDefined!4843 (maxPrefix!2340 thiss!14116 rules!1712 (++!7517 call!172632 lt!942203)))))

(declare-fun lt!942774 () Unit!45011)

(assert (=> d!765539 (= lt!942774 e!1687378)))

(declare-fun c!431343 () Bool)

(assert (=> d!765539 (= c!431343 (isEmpty!17624 (maxPrefix!2340 thiss!14116 rules!1712 (++!7517 call!172632 lt!942203))))))

(declare-fun lt!942768 () Unit!45011)

(declare-fun lt!942767 () Unit!45011)

(assert (=> d!765539 (= lt!942768 lt!942767)))

(assert (=> d!765539 e!1687379))

(declare-fun res!1125494 () Bool)

(assert (=> d!765539 (=> (not res!1125494) (not e!1687379))))

(declare-fun isDefined!4846 (Option!6099) Bool)

(assert (=> d!765539 (= res!1125494 (isDefined!4846 (getRuleFromTag!837 thiss!14116 rules!1712 (tag!5207 (rule!7113 lt!942775)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!837 (LexerInterface!4302 List!30899 List!30898 Token!8880) Unit!45011)

(assert (=> d!765539 (= lt!942767 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!837 thiss!14116 rules!1712 call!172632 lt!942775))))

(declare-fun lt!942778 () Unit!45011)

(declare-fun lt!942776 () Unit!45011)

(assert (=> d!765539 (= lt!942778 lt!942776)))

(declare-fun lt!942769 () List!30898)

(assert (=> d!765539 (isPrefix!2458 lt!942769 (++!7517 call!172632 lt!942203))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!405 (List!30898 List!30898 List!30898) Unit!45011)

(assert (=> d!765539 (= lt!942776 (lemmaPrefixStaysPrefixWhenAddingToSuffix!405 lt!942769 call!172632 lt!942203))))

(assert (=> d!765539 (= lt!942769 (list!11635 (charsOf!2968 lt!942775)))))

(declare-fun lt!942780 () Unit!45011)

(declare-fun lt!942777 () Unit!45011)

(assert (=> d!765539 (= lt!942780 lt!942777)))

(declare-fun lt!942782 () List!30898)

(declare-fun lt!942771 () List!30898)

(assert (=> d!765539 (isPrefix!2458 lt!942782 (++!7517 lt!942782 lt!942771))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1624 (List!30898 List!30898) Unit!45011)

(assert (=> d!765539 (= lt!942777 (lemmaConcatTwoListThenFirstIsPrefix!1624 lt!942782 lt!942771))))

(assert (=> d!765539 (= lt!942771 (_2!17668 (get!9679 (maxPrefix!2340 thiss!14116 rules!1712 call!172632))))))

(assert (=> d!765539 (= lt!942782 (list!11635 (charsOf!2968 lt!942775)))))

(assert (=> d!765539 (= lt!942775 (head!6083 (list!11639 (_1!17669 (lex!1937 thiss!14116 rules!1712 (seqFromList!3207 call!172632))))))))

(assert (=> d!765539 (not (isEmpty!17623 rules!1712))))

(assert (=> d!765539 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!822 thiss!14116 rules!1712 call!172632 lt!942203) lt!942774)))

(declare-fun b!2676943 () Bool)

(declare-fun res!1125493 () Bool)

(assert (=> b!2676943 (=> (not res!1125493) (not e!1687379))))

(assert (=> b!2676943 (= res!1125493 (matchR!3629 (regex!4705 (get!9682 (getRuleFromTag!837 thiss!14116 rules!1712 (tag!5207 (rule!7113 lt!942775))))) (list!11635 (charsOf!2968 lt!942775))))))

(assert (= (and d!765539 res!1125494) b!2676943))

(assert (= (and b!2676943 res!1125493) b!2676944))

(assert (= (and d!765539 c!431343) b!2676945))

(assert (= (and d!765539 (not c!431343)) b!2676946))

(declare-fun m!3044243 () Bool)

(assert (=> b!2676944 m!3044243))

(assert (=> b!2676944 m!3044243))

(declare-fun m!3044245 () Bool)

(assert (=> b!2676944 m!3044245))

(declare-fun m!3044247 () Bool)

(assert (=> b!2676945 m!3044247))

(declare-fun m!3044249 () Bool)

(assert (=> b!2676945 m!3044249))

(declare-fun m!3044251 () Bool)

(assert (=> b!2676945 m!3044251))

(declare-fun m!3044253 () Bool)

(assert (=> b!2676945 m!3044253))

(declare-fun m!3044255 () Bool)

(assert (=> b!2676945 m!3044255))

(declare-fun m!3044257 () Bool)

(assert (=> b!2676945 m!3044257))

(assert (=> b!2676945 m!3044249))

(assert (=> b!2676945 m!3044253))

(declare-fun m!3044259 () Bool)

(assert (=> b!2676945 m!3044259))

(assert (=> b!2676945 m!3044247))

(declare-fun m!3044261 () Bool)

(assert (=> b!2676945 m!3044261))

(assert (=> d!765539 m!3044247))

(assert (=> d!765539 m!3044249))

(assert (=> d!765539 m!3044251))

(assert (=> d!765539 m!3042333))

(assert (=> d!765539 m!3044247))

(declare-fun m!3044263 () Bool)

(assert (=> d!765539 m!3044263))

(assert (=> d!765539 m!3044263))

(declare-fun m!3044265 () Bool)

(assert (=> d!765539 m!3044265))

(declare-fun m!3044267 () Bool)

(assert (=> d!765539 m!3044267))

(declare-fun m!3044269 () Bool)

(assert (=> d!765539 m!3044269))

(declare-fun m!3044271 () Bool)

(assert (=> d!765539 m!3044271))

(declare-fun m!3044273 () Bool)

(assert (=> d!765539 m!3044273))

(declare-fun m!3044275 () Bool)

(assert (=> d!765539 m!3044275))

(assert (=> d!765539 m!3044247))

(declare-fun m!3044277 () Bool)

(assert (=> d!765539 m!3044277))

(assert (=> d!765539 m!3044249))

(declare-fun m!3044279 () Bool)

(assert (=> d!765539 m!3044279))

(declare-fun m!3044281 () Bool)

(assert (=> d!765539 m!3044281))

(assert (=> d!765539 m!3044267))

(assert (=> d!765539 m!3044279))

(assert (=> d!765539 m!3044243))

(declare-fun m!3044283 () Bool)

(assert (=> d!765539 m!3044283))

(assert (=> d!765539 m!3044275))

(declare-fun m!3044285 () Bool)

(assert (=> d!765539 m!3044285))

(declare-fun m!3044287 () Bool)

(assert (=> d!765539 m!3044287))

(declare-fun m!3044289 () Bool)

(assert (=> d!765539 m!3044289))

(assert (=> d!765539 m!3044263))

(declare-fun m!3044291 () Bool)

(assert (=> d!765539 m!3044291))

(assert (=> d!765539 m!3044287))

(declare-fun m!3044293 () Bool)

(assert (=> d!765539 m!3044293))

(assert (=> d!765539 m!3044243))

(assert (=> b!2676943 m!3044249))

(assert (=> b!2676943 m!3044251))

(assert (=> b!2676943 m!3044243))

(assert (=> b!2676943 m!3044243))

(assert (=> b!2676943 m!3044245))

(assert (=> b!2676943 m!3044249))

(assert (=> b!2676943 m!3044251))

(declare-fun m!3044295 () Bool)

(assert (=> b!2676943 m!3044295))

(assert (=> b!2675901 d!765539))

(declare-fun d!765541 () Bool)

(declare-fun res!1125509 () Bool)

(declare-fun e!1687388 () Bool)

(assert (=> d!765541 (=> res!1125509 e!1687388)))

(assert (=> d!765541 (= res!1125509 (not ((_ is Node!9641) (c!431110 lt!942332))))))

(assert (=> d!765541 (= (isBalanced!2921 (c!431110 lt!942332)) e!1687388)))

(declare-fun b!2676966 () Bool)

(declare-fun e!1687389 () Bool)

(assert (=> b!2676966 (= e!1687388 e!1687389)))

(declare-fun res!1125511 () Bool)

(assert (=> b!2676966 (=> (not res!1125511) (not e!1687389))))

(declare-fun height!1406 (Conc!9641) Int)

(assert (=> b!2676966 (= res!1125511 (<= (- 1) (- (height!1406 (left!23841 (c!431110 lt!942332))) (height!1406 (right!24171 (c!431110 lt!942332))))))))

(declare-fun b!2676967 () Bool)

(declare-fun res!1125513 () Bool)

(assert (=> b!2676967 (=> (not res!1125513) (not e!1687389))))

(assert (=> b!2676967 (= res!1125513 (not (isEmpty!17633 (left!23841 (c!431110 lt!942332)))))))

(declare-fun b!2676968 () Bool)

(declare-fun res!1125510 () Bool)

(assert (=> b!2676968 (=> (not res!1125510) (not e!1687389))))

(assert (=> b!2676968 (= res!1125510 (isBalanced!2921 (right!24171 (c!431110 lt!942332))))))

(declare-fun b!2676969 () Bool)

(declare-fun res!1125508 () Bool)

(assert (=> b!2676969 (=> (not res!1125508) (not e!1687389))))

(assert (=> b!2676969 (= res!1125508 (isBalanced!2921 (left!23841 (c!431110 lt!942332))))))

(declare-fun b!2676970 () Bool)

(assert (=> b!2676970 (= e!1687389 (not (isEmpty!17633 (right!24171 (c!431110 lt!942332)))))))

(declare-fun b!2676971 () Bool)

(declare-fun res!1125512 () Bool)

(assert (=> b!2676971 (=> (not res!1125512) (not e!1687389))))

(assert (=> b!2676971 (= res!1125512 (<= (- (height!1406 (left!23841 (c!431110 lt!942332))) (height!1406 (right!24171 (c!431110 lt!942332)))) 1))))

(assert (= (and d!765541 (not res!1125509)) b!2676966))

(assert (= (and b!2676966 res!1125511) b!2676971))

(assert (= (and b!2676971 res!1125512) b!2676969))

(assert (= (and b!2676969 res!1125508) b!2676968))

(assert (= (and b!2676968 res!1125510) b!2676967))

(assert (= (and b!2676967 res!1125513) b!2676970))

(declare-fun m!3044385 () Bool)

(assert (=> b!2676967 m!3044385))

(declare-fun m!3044387 () Bool)

(assert (=> b!2676970 m!3044387))

(declare-fun m!3044389 () Bool)

(assert (=> b!2676969 m!3044389))

(declare-fun m!3044391 () Bool)

(assert (=> b!2676968 m!3044391))

(declare-fun m!3044393 () Bool)

(assert (=> b!2676966 m!3044393))

(declare-fun m!3044395 () Bool)

(assert (=> b!2676966 m!3044395))

(assert (=> b!2676971 m!3044393))

(assert (=> b!2676971 m!3044395))

(assert (=> b!2676128 d!765541))

(declare-fun bs!479908 () Bool)

(declare-fun d!765545 () Bool)

(assert (= bs!479908 (and d!765545 d!765343)))

(declare-fun lambda!100003 () Int)

(assert (=> bs!479908 (= (and (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152)))) (= (toValue!6651 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toValue!6651 (transformation!4705 (rule!7113 separatorToken!152))))) (= lambda!100003 lambda!99993))))

(declare-fun bs!479909 () Bool)

(assert (= bs!479909 (and d!765545 d!765447)))

(assert (=> bs!479909 (= (and (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toChars!6510 (transformation!4705 (h!36219 rules!1712)))) (= (toValue!6651 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toValue!6651 (transformation!4705 (h!36219 rules!1712))))) (= lambda!100003 lambda!99998))))

(assert (=> d!765545 true))

(assert (=> d!765545 (< (dynLambda!13384 order!16991 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335))))) (dynLambda!13392 order!16999 lambda!100003))))

(assert (=> d!765545 true))

(assert (=> d!765545 (< (dynLambda!13382 order!16987 (toValue!6651 (transformation!4705 (rule!7113 (h!36220 l!4335))))) (dynLambda!13392 order!16999 lambda!100003))))

(assert (=> d!765545 (= (semiInverseModEq!1950 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toValue!6651 (transformation!4705 (rule!7113 (h!36220 l!4335))))) (Forall!1196 lambda!100003))))

(declare-fun bs!479911 () Bool)

(assert (= bs!479911 d!765545))

(declare-fun m!3044403 () Bool)

(assert (=> bs!479911 m!3044403))

(assert (=> d!765093 d!765545))

(assert (=> b!2675982 d!765057))

(declare-fun d!765555 () Bool)

(declare-fun charsToInt!0 (List!30897) (_ BitVec 32))

(assert (=> d!765555 (= (inv!16 (value!151697 (h!36220 l!4335))) (= (charsToInt!0 (text!34936 (value!151697 (h!36220 l!4335)))) (value!151688 (value!151697 (h!36220 l!4335)))))))

(declare-fun bs!479913 () Bool)

(assert (= bs!479913 d!765555))

(declare-fun m!3044405 () Bool)

(assert (=> bs!479913 m!3044405))

(assert (=> b!2676026 d!765555))

(declare-fun d!765559 () Bool)

(declare-fun lt!942817 () Bool)

(assert (=> d!765559 (= lt!942817 (isEmpty!17629 (list!11635 (_2!17669 lt!942343))))))

(assert (=> d!765559 (= lt!942817 (isEmpty!17634 (c!431108 (_2!17669 lt!942343))))))

(assert (=> d!765559 (= (isEmpty!17630 (_2!17669 lt!942343)) lt!942817)))

(declare-fun bs!479914 () Bool)

(assert (= bs!479914 d!765559))

(declare-fun m!3044407 () Bool)

(assert (=> bs!479914 m!3044407))

(assert (=> bs!479914 m!3044407))

(declare-fun m!3044411 () Bool)

(assert (=> bs!479914 m!3044411))

(declare-fun m!3044413 () Bool)

(assert (=> bs!479914 m!3044413))

(assert (=> b!2676220 d!765559))

(declare-fun d!765563 () Bool)

(declare-fun c!431349 () Bool)

(assert (=> d!765563 (= c!431349 ((_ is Nil!30800) l!4335))))

(declare-fun e!1687395 () (InoxSet Token!8880))

(assert (=> d!765563 (= (content!4379 l!4335) e!1687395)))

(declare-fun b!2676979 () Bool)

(assert (=> b!2676979 (= e!1687395 ((as const (Array Token!8880 Bool)) false))))

(declare-fun b!2676980 () Bool)

(assert (=> b!2676980 (= e!1687395 ((_ map or) (store ((as const (Array Token!8880 Bool)) false) (h!36220 l!4335) true) (content!4379 (t!223827 l!4335))))))

(assert (= (and d!765563 c!431349) b!2676979))

(assert (= (and d!765563 (not c!431349)) b!2676980))

(declare-fun m!3044415 () Bool)

(assert (=> b!2676980 m!3044415))

(assert (=> b!2676980 m!3043733))

(assert (=> d!765105 d!765563))

(declare-fun d!765565 () Bool)

(assert (=> d!765565 (= (list!11635 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335)))) (list!11637 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335))))))))

(declare-fun bs!479915 () Bool)

(assert (= bs!479915 d!765565))

(declare-fun m!3044417 () Bool)

(assert (=> bs!479915 m!3044417))

(assert (=> b!2676213 d!765565))

(declare-fun d!765567 () Bool)

(declare-fun c!431354 () Bool)

(assert (=> d!765567 (= c!431354 ((_ is Nil!30798) lt!942215))))

(declare-fun e!1687400 () (InoxSet C!15856))

(assert (=> d!765567 (= (content!4377 lt!942215) e!1687400)))

(declare-fun b!2676989 () Bool)

(assert (=> b!2676989 (= e!1687400 ((as const (Array C!15856 Bool)) false))))

(declare-fun b!2676990 () Bool)

(assert (=> b!2676990 (= e!1687400 ((_ map or) (store ((as const (Array C!15856 Bool)) false) (h!36218 lt!942215) true) (content!4377 (t!223825 lt!942215))))))

(assert (= (and d!765567 c!431354) b!2676989))

(assert (= (and d!765567 (not c!431354)) b!2676990))

(declare-fun m!3044419 () Bool)

(assert (=> b!2676990 m!3044419))

(declare-fun m!3044421 () Bool)

(assert (=> b!2676990 m!3044421))

(assert (=> d!765017 d!765567))

(declare-fun d!765569 () Bool)

(declare-fun c!431357 () Bool)

(assert (=> d!765569 (= c!431357 ((_ is Nil!30798) lt!942160))))

(declare-fun e!1687403 () (InoxSet C!15856))

(assert (=> d!765569 (= (content!4377 lt!942160) e!1687403)))

(declare-fun b!2676995 () Bool)

(assert (=> b!2676995 (= e!1687403 ((as const (Array C!15856 Bool)) false))))

(declare-fun b!2676996 () Bool)

(assert (=> b!2676996 (= e!1687403 ((_ map or) (store ((as const (Array C!15856 Bool)) false) (h!36218 lt!942160) true) (content!4377 (t!223825 lt!942160))))))

(assert (= (and d!765569 c!431357) b!2676995))

(assert (= (and d!765569 (not c!431357)) b!2676996))

(declare-fun m!3044423 () Bool)

(assert (=> b!2676996 m!3044423))

(assert (=> b!2676996 m!3044175))

(assert (=> d!765017 d!765569))

(declare-fun d!765571 () Bool)

(declare-fun c!431358 () Bool)

(assert (=> d!765571 (= c!431358 ((_ is Nil!30798) lt!942166))))

(declare-fun e!1687406 () (InoxSet C!15856))

(assert (=> d!765571 (= (content!4377 lt!942166) e!1687406)))

(declare-fun b!2676997 () Bool)

(assert (=> b!2676997 (= e!1687406 ((as const (Array C!15856 Bool)) false))))

(declare-fun b!2676998 () Bool)

(assert (=> b!2676998 (= e!1687406 ((_ map or) (store ((as const (Array C!15856 Bool)) false) (h!36218 lt!942166) true) (content!4377 (t!223825 lt!942166))))))

(assert (= (and d!765571 c!431358) b!2676997))

(assert (= (and d!765571 (not c!431358)) b!2676998))

(declare-fun m!3044425 () Bool)

(assert (=> b!2676998 m!3044425))

(declare-fun m!3044427 () Bool)

(assert (=> b!2676998 m!3044427))

(assert (=> d!765017 d!765571))

(declare-fun d!765573 () Bool)

(assert (=> d!765573 (= (list!11635 lt!942338) (list!11637 (c!431108 lt!942338)))))

(declare-fun bs!479916 () Bool)

(assert (= bs!479916 d!765573))

(declare-fun m!3044429 () Bool)

(assert (=> bs!479916 m!3044429))

(assert (=> d!765087 d!765573))

(declare-fun d!765575 () Bool)

(declare-fun c!431363 () Bool)

(assert (=> d!765575 (= c!431363 ((_ is Cons!30800) (list!11639 lt!942163)))))

(declare-fun e!1687411 () List!30898)

(assert (=> d!765575 (= (printList!1194 thiss!14116 (list!11639 lt!942163)) e!1687411)))

(declare-fun b!2677009 () Bool)

(assert (=> b!2677009 (= e!1687411 (++!7517 (list!11635 (charsOf!2968 (h!36220 (list!11639 lt!942163)))) (printList!1194 thiss!14116 (t!223827 (list!11639 lt!942163)))))))

(declare-fun b!2677010 () Bool)

(assert (=> b!2677010 (= e!1687411 Nil!30798)))

(assert (= (and d!765575 c!431363) b!2677009))

(assert (= (and d!765575 (not c!431363)) b!2677010))

(declare-fun m!3044431 () Bool)

(assert (=> b!2677009 m!3044431))

(assert (=> b!2677009 m!3044431))

(declare-fun m!3044433 () Bool)

(assert (=> b!2677009 m!3044433))

(declare-fun m!3044435 () Bool)

(assert (=> b!2677009 m!3044435))

(assert (=> b!2677009 m!3044433))

(assert (=> b!2677009 m!3044435))

(declare-fun m!3044437 () Bool)

(assert (=> b!2677009 m!3044437))

(assert (=> d!765087 d!765575))

(assert (=> d!765087 d!765403))

(assert (=> d!765087 d!765071))

(assert (=> b!2675904 d!765489))

(declare-fun d!765577 () Bool)

(declare-fun res!1125519 () Bool)

(declare-fun e!1687412 () Bool)

(assert (=> d!765577 (=> res!1125519 e!1687412)))

(assert (=> d!765577 (= res!1125519 ((_ is Nil!30800) l!4335))))

(assert (=> d!765577 (= (forall!6522 l!4335 lambda!99971) e!1687412)))

(declare-fun b!2677011 () Bool)

(declare-fun e!1687413 () Bool)

(assert (=> b!2677011 (= e!1687412 e!1687413)))

(declare-fun res!1125520 () Bool)

(assert (=> b!2677011 (=> (not res!1125520) (not e!1687413))))

(assert (=> b!2677011 (= res!1125520 (dynLambda!13386 lambda!99971 (h!36220 l!4335)))))

(declare-fun b!2677012 () Bool)

(assert (=> b!2677012 (= e!1687413 (forall!6522 (t!223827 l!4335) lambda!99971))))

(assert (= (and d!765577 (not res!1125519)) b!2677011))

(assert (= (and b!2677011 res!1125520) b!2677012))

(declare-fun b_lambda!81705 () Bool)

(assert (=> (not b_lambda!81705) (not b!2677011)))

(declare-fun m!3044439 () Bool)

(assert (=> b!2677011 m!3044439))

(declare-fun m!3044441 () Bool)

(assert (=> b!2677012 m!3044441))

(assert (=> d!765041 d!765577))

(assert (=> d!765041 d!765033))

(assert (=> b!2675858 d!765303))

(assert (=> b!2675858 d!765305))

(assert (=> b!2675858 d!765301))

(declare-fun d!765579 () Bool)

(assert (=> d!765579 (= (inv!16 (value!151697 separatorToken!152)) (= (charsToInt!0 (text!34936 (value!151697 separatorToken!152))) (value!151688 (value!151697 separatorToken!152))))))

(declare-fun bs!479917 () Bool)

(assert (= bs!479917 d!765579))

(declare-fun m!3044443 () Bool)

(assert (=> bs!479917 m!3044443))

(assert (=> b!2676170 d!765579))

(declare-fun d!765581 () Bool)

(assert (=> d!765581 (= (isEmpty!17629 (originalCharacters!5471 (h!36220 l!4335))) ((_ is Nil!30798) (originalCharacters!5471 (h!36220 l!4335))))))

(assert (=> d!765109 d!765581))

(declare-fun b!2677030 () Bool)

(declare-fun e!1687423 () List!30898)

(assert (=> b!2677030 (= e!1687423 Nil!30798)))

(declare-fun b!2677032 () Bool)

(declare-fun e!1687424 () List!30898)

(declare-fun list!11643 (IArray!19285) List!30898)

(assert (=> b!2677032 (= e!1687424 (list!11643 (xs!12670 (c!431108 (charsOf!2968 (h!36220 l!4335))))))))

(declare-fun d!765583 () Bool)

(declare-fun c!431372 () Bool)

(assert (=> d!765583 (= c!431372 ((_ is Empty!9640) (c!431108 (charsOf!2968 (h!36220 l!4335)))))))

(assert (=> d!765583 (= (list!11637 (c!431108 (charsOf!2968 (h!36220 l!4335)))) e!1687423)))

(declare-fun b!2677033 () Bool)

(assert (=> b!2677033 (= e!1687424 (++!7517 (list!11637 (left!23840 (c!431108 (charsOf!2968 (h!36220 l!4335))))) (list!11637 (right!24170 (c!431108 (charsOf!2968 (h!36220 l!4335)))))))))

(declare-fun b!2677031 () Bool)

(assert (=> b!2677031 (= e!1687423 e!1687424)))

(declare-fun c!431373 () Bool)

(assert (=> b!2677031 (= c!431373 ((_ is Leaf!14733) (c!431108 (charsOf!2968 (h!36220 l!4335)))))))

(assert (= (and d!765583 c!431372) b!2677030))

(assert (= (and d!765583 (not c!431372)) b!2677031))

(assert (= (and b!2677031 c!431373) b!2677032))

(assert (= (and b!2677031 (not c!431373)) b!2677033))

(declare-fun m!3044455 () Bool)

(assert (=> b!2677032 m!3044455))

(declare-fun m!3044457 () Bool)

(assert (=> b!2677033 m!3044457))

(declare-fun m!3044459 () Bool)

(assert (=> b!2677033 m!3044459))

(assert (=> b!2677033 m!3044457))

(assert (=> b!2677033 m!3044459))

(declare-fun m!3044461 () Bool)

(assert (=> b!2677033 m!3044461))

(assert (=> d!765007 d!765583))

(declare-fun d!765589 () Bool)

(declare-fun c!431374 () Bool)

(assert (=> d!765589 (= c!431374 ((_ is Node!9640) (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335))))))))

(declare-fun e!1687425 () Bool)

(assert (=> d!765589 (= (inv!41817 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335))))) e!1687425)))

(declare-fun b!2677034 () Bool)

(assert (=> b!2677034 (= e!1687425 (inv!41821 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335))))))))

(declare-fun b!2677035 () Bool)

(declare-fun e!1687426 () Bool)

(assert (=> b!2677035 (= e!1687425 e!1687426)))

(declare-fun res!1125522 () Bool)

(assert (=> b!2677035 (= res!1125522 (not ((_ is Leaf!14733) (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335)))))))))

(assert (=> b!2677035 (=> res!1125522 e!1687426)))

(declare-fun b!2677036 () Bool)

(assert (=> b!2677036 (= e!1687426 (inv!41822 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335))))))))

(assert (= (and d!765589 c!431374) b!2677034))

(assert (= (and d!765589 (not c!431374)) b!2677035))

(assert (= (and b!2677035 (not res!1125522)) b!2677036))

(declare-fun m!3044463 () Bool)

(assert (=> b!2677034 m!3044463))

(declare-fun m!3044465 () Bool)

(assert (=> b!2677036 m!3044465))

(assert (=> b!2675933 d!765589))

(declare-fun d!765591 () Bool)

(declare-fun lt!942821 () Int)

(assert (=> d!765591 (= lt!942821 (size!23808 (list!11639 (_1!17669 lt!942284))))))

(assert (=> d!765591 (= lt!942821 (size!23807 (c!431110 (_1!17669 lt!942284))))))

(assert (=> d!765591 (= (size!23804 (_1!17669 lt!942284)) lt!942821)))

(declare-fun bs!479918 () Bool)

(assert (= bs!479918 d!765591))

(assert (=> bs!479918 m!3042663))

(assert (=> bs!479918 m!3042663))

(declare-fun m!3044467 () Bool)

(assert (=> bs!479918 m!3044467))

(declare-fun m!3044469 () Bool)

(assert (=> bs!479918 m!3044469))

(assert (=> d!765065 d!765591))

(declare-fun d!765593 () Bool)

(declare-fun e!1687547 () Bool)

(assert (=> d!765593 e!1687547))

(declare-fun res!1125584 () Bool)

(assert (=> d!765593 (=> (not res!1125584) (not e!1687547))))

(declare-fun lt!942949 () tuple2!30254)

(declare-fun lexRec!575 (LexerInterface!4302 List!30899 BalanceConc!18894) tuple2!30254)

(assert (=> d!765593 (= res!1125584 (= (list!11639 (_1!17669 lt!942949)) (list!11639 (_1!17669 (lexRec!575 thiss!14116 rules!1712 (seqFromList!3207 lt!942160))))))))

(declare-fun e!1687549 () tuple2!30254)

(assert (=> d!765593 (= lt!942949 e!1687549)))

(declare-fun c!431405 () Bool)

(declare-datatypes ((tuple2!30266 0))(
  ( (tuple2!30267 (_1!17675 Token!8880) (_2!17675 BalanceConc!18894)) )
))
(declare-datatypes ((Option!6100 0))(
  ( (None!6099) (Some!6099 (v!32664 tuple2!30266)) )
))
(declare-fun lt!942945 () Option!6100)

(assert (=> d!765593 (= c!431405 ((_ is Some!6099) lt!942945))))

(declare-fun maxPrefixZipperSequenceV2!445 (LexerInterface!4302 List!30899 BalanceConc!18894 BalanceConc!18894) Option!6100)

(assert (=> d!765593 (= lt!942945 (maxPrefixZipperSequenceV2!445 thiss!14116 rules!1712 (seqFromList!3207 lt!942160) (seqFromList!3207 lt!942160)))))

(declare-fun lt!942965 () Unit!45011)

(declare-fun lt!942946 () Unit!45011)

(assert (=> d!765593 (= lt!942965 lt!942946)))

(declare-fun lt!942972 () List!30898)

(declare-fun lt!942960 () List!30898)

(declare-fun isSuffix!820 (List!30898 List!30898) Bool)

(assert (=> d!765593 (isSuffix!820 lt!942972 (++!7517 lt!942960 lt!942972))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!505 (List!30898 List!30898) Unit!45011)

(assert (=> d!765593 (= lt!942946 (lemmaConcatTwoListThenFSndIsSuffix!505 lt!942960 lt!942972))))

(assert (=> d!765593 (= lt!942972 (list!11635 (seqFromList!3207 lt!942160)))))

(assert (=> d!765593 (= lt!942960 (list!11635 (BalanceConc!18895 Empty!9640)))))

(assert (=> d!765593 (= (lexTailRecV2!851 thiss!14116 rules!1712 (seqFromList!3207 lt!942160) (BalanceConc!18895 Empty!9640) (seqFromList!3207 lt!942160) (BalanceConc!18897 Empty!9641)) lt!942949)))

(declare-fun b!2677256 () Bool)

(declare-fun lt!942969 () BalanceConc!18894)

(declare-fun append!744 (BalanceConc!18896 Token!8880) BalanceConc!18896)

(assert (=> b!2677256 (= e!1687549 (lexTailRecV2!851 thiss!14116 rules!1712 (seqFromList!3207 lt!942160) lt!942969 (_2!17675 (v!32664 lt!942945)) (append!744 (BalanceConc!18897 Empty!9641) (_1!17675 (v!32664 lt!942945)))))))

(declare-fun lt!942950 () tuple2!30254)

(assert (=> b!2677256 (= lt!942950 (lexRec!575 thiss!14116 rules!1712 (_2!17675 (v!32664 lt!942945))))))

(declare-fun lt!942959 () List!30898)

(assert (=> b!2677256 (= lt!942959 (list!11635 (BalanceConc!18895 Empty!9640)))))

(declare-fun lt!942968 () List!30898)

(assert (=> b!2677256 (= lt!942968 (list!11635 (charsOf!2968 (_1!17675 (v!32664 lt!942945)))))))

(declare-fun lt!942970 () List!30898)

(assert (=> b!2677256 (= lt!942970 (list!11635 (_2!17675 (v!32664 lt!942945))))))

(declare-fun lt!942948 () Unit!45011)

(assert (=> b!2677256 (= lt!942948 (lemmaConcatAssociativity!1514 lt!942959 lt!942968 lt!942970))))

(assert (=> b!2677256 (= (++!7517 (++!7517 lt!942959 lt!942968) lt!942970) (++!7517 lt!942959 (++!7517 lt!942968 lt!942970)))))

(declare-fun lt!942977 () Unit!45011)

(assert (=> b!2677256 (= lt!942977 lt!942948)))

(declare-fun lt!942966 () Option!6100)

(declare-fun maxPrefixZipperSequence!982 (LexerInterface!4302 List!30899 BalanceConc!18894) Option!6100)

(assert (=> b!2677256 (= lt!942966 (maxPrefixZipperSequence!982 thiss!14116 rules!1712 (seqFromList!3207 lt!942160)))))

(declare-fun c!431406 () Bool)

(assert (=> b!2677256 (= c!431406 ((_ is Some!6099) lt!942966))))

(declare-fun e!1687548 () tuple2!30254)

(assert (=> b!2677256 (= (lexRec!575 thiss!14116 rules!1712 (seqFromList!3207 lt!942160)) e!1687548)))

(declare-fun lt!942951 () Unit!45011)

(declare-fun Unit!45027 () Unit!45011)

(assert (=> b!2677256 (= lt!942951 Unit!45027)))

(declare-fun lt!942961 () List!30900)

(assert (=> b!2677256 (= lt!942961 (list!11639 (BalanceConc!18897 Empty!9641)))))

(declare-fun lt!942953 () List!30900)

(assert (=> b!2677256 (= lt!942953 (Cons!30800 (_1!17675 (v!32664 lt!942945)) Nil!30800))))

(declare-fun lt!942975 () List!30900)

(assert (=> b!2677256 (= lt!942975 (list!11639 (_1!17669 lt!942950)))))

(declare-fun lt!942947 () Unit!45011)

(declare-fun lemmaConcatAssociativity!1517 (List!30900 List!30900 List!30900) Unit!45011)

(assert (=> b!2677256 (= lt!942947 (lemmaConcatAssociativity!1517 lt!942961 lt!942953 lt!942975))))

(declare-fun ++!7523 (List!30900 List!30900) List!30900)

(assert (=> b!2677256 (= (++!7523 (++!7523 lt!942961 lt!942953) lt!942975) (++!7523 lt!942961 (++!7523 lt!942953 lt!942975)))))

(declare-fun lt!942971 () Unit!45011)

(assert (=> b!2677256 (= lt!942971 lt!942947)))

(declare-fun lt!942967 () List!30898)

(assert (=> b!2677256 (= lt!942967 (++!7517 (list!11635 (BalanceConc!18895 Empty!9640)) (list!11635 (charsOf!2968 (_1!17675 (v!32664 lt!942945))))))))

(declare-fun lt!942955 () List!30898)

(assert (=> b!2677256 (= lt!942955 (list!11635 (_2!17675 (v!32664 lt!942945))))))

(declare-fun lt!942963 () List!30900)

(assert (=> b!2677256 (= lt!942963 (list!11639 (append!744 (BalanceConc!18897 Empty!9641) (_1!17675 (v!32664 lt!942945)))))))

(declare-fun lt!942964 () Unit!45011)

(declare-fun lemmaLexThenLexPrefix!389 (LexerInterface!4302 List!30899 List!30898 List!30898 List!30900 List!30900 List!30898) Unit!45011)

(assert (=> b!2677256 (= lt!942964 (lemmaLexThenLexPrefix!389 thiss!14116 rules!1712 lt!942967 lt!942955 lt!942963 (list!11639 (_1!17669 lt!942950)) (list!11635 (_2!17669 lt!942950))))))

(assert (=> b!2677256 (= (lexList!1176 thiss!14116 rules!1712 lt!942967) (tuple2!30259 lt!942963 Nil!30798))))

(declare-fun lt!942956 () Unit!45011)

(assert (=> b!2677256 (= lt!942956 lt!942964)))

(declare-fun lt!942976 () BalanceConc!18894)

(assert (=> b!2677256 (= lt!942976 (++!7519 (BalanceConc!18895 Empty!9640) (charsOf!2968 (_1!17675 (v!32664 lt!942945)))))))

(declare-fun lt!942944 () Option!6100)

(assert (=> b!2677256 (= lt!942944 (maxPrefixZipperSequence!982 thiss!14116 rules!1712 lt!942976))))

(declare-fun c!431404 () Bool)

(assert (=> b!2677256 (= c!431404 ((_ is Some!6099) lt!942944))))

(declare-fun e!1687546 () tuple2!30254)

(assert (=> b!2677256 (= (lexRec!575 thiss!14116 rules!1712 (++!7519 (BalanceConc!18895 Empty!9640) (charsOf!2968 (_1!17675 (v!32664 lt!942945))))) e!1687546)))

(declare-fun lt!942962 () Unit!45011)

(declare-fun Unit!45028 () Unit!45011)

(assert (=> b!2677256 (= lt!942962 Unit!45028)))

(assert (=> b!2677256 (= lt!942969 (++!7519 (BalanceConc!18895 Empty!9640) (charsOf!2968 (_1!17675 (v!32664 lt!942945)))))))

(declare-fun lt!942973 () List!30898)

(assert (=> b!2677256 (= lt!942973 (list!11635 lt!942969))))

(declare-fun lt!942954 () List!30898)

(assert (=> b!2677256 (= lt!942954 (list!11635 (_2!17675 (v!32664 lt!942945))))))

(declare-fun lt!942952 () Unit!45011)

(assert (=> b!2677256 (= lt!942952 (lemmaConcatTwoListThenFSndIsSuffix!505 lt!942973 lt!942954))))

(assert (=> b!2677256 (isSuffix!820 lt!942954 (++!7517 lt!942973 lt!942954))))

(declare-fun lt!942957 () Unit!45011)

(assert (=> b!2677256 (= lt!942957 lt!942952)))

(declare-fun lt!942958 () tuple2!30254)

(declare-fun b!2677257 () Bool)

(assert (=> b!2677257 (= lt!942958 (lexRec!575 thiss!14116 rules!1712 (_2!17675 (v!32664 lt!942944))))))

(declare-fun prepend!1051 (BalanceConc!18896 Token!8880) BalanceConc!18896)

(assert (=> b!2677257 (= e!1687546 (tuple2!30255 (prepend!1051 (_1!17669 lt!942958) (_1!17675 (v!32664 lt!942944))) (_2!17669 lt!942958)))))

(declare-fun b!2677258 () Bool)

(assert (=> b!2677258 (= e!1687549 (tuple2!30255 (BalanceConc!18897 Empty!9641) (seqFromList!3207 lt!942160)))))

(declare-fun b!2677259 () Bool)

(assert (=> b!2677259 (= e!1687547 (= (list!11635 (_2!17669 lt!942949)) (list!11635 (_2!17669 (lexRec!575 thiss!14116 rules!1712 (seqFromList!3207 lt!942160))))))))

(declare-fun b!2677260 () Bool)

(assert (=> b!2677260 (= e!1687546 (tuple2!30255 (BalanceConc!18897 Empty!9641) lt!942976))))

(declare-fun b!2677261 () Bool)

(declare-fun lt!942974 () tuple2!30254)

(assert (=> b!2677261 (= lt!942974 (lexRec!575 thiss!14116 rules!1712 (_2!17675 (v!32664 lt!942966))))))

(assert (=> b!2677261 (= e!1687548 (tuple2!30255 (prepend!1051 (_1!17669 lt!942974) (_1!17675 (v!32664 lt!942966))) (_2!17669 lt!942974)))))

(declare-fun b!2677262 () Bool)

(assert (=> b!2677262 (= e!1687548 (tuple2!30255 (BalanceConc!18897 Empty!9641) (seqFromList!3207 lt!942160)))))

(assert (= (and d!765593 c!431405) b!2677256))

(assert (= (and d!765593 (not c!431405)) b!2677258))

(assert (= (and b!2677256 c!431406) b!2677261))

(assert (= (and b!2677256 (not c!431406)) b!2677262))

(assert (= (and b!2677256 c!431404) b!2677257))

(assert (= (and b!2677256 (not c!431404)) b!2677260))

(assert (= (and d!765593 res!1125584) b!2677259))

(declare-fun m!3044717 () Bool)

(assert (=> b!2677257 m!3044717))

(declare-fun m!3044719 () Bool)

(assert (=> b!2677257 m!3044719))

(declare-fun m!3044721 () Bool)

(assert (=> b!2677259 m!3044721))

(assert (=> b!2677259 m!3042327))

(declare-fun m!3044723 () Bool)

(assert (=> b!2677259 m!3044723))

(declare-fun m!3044725 () Bool)

(assert (=> b!2677259 m!3044725))

(assert (=> d!765593 m!3042327))

(assert (=> d!765593 m!3042327))

(declare-fun m!3044727 () Bool)

(assert (=> d!765593 m!3044727))

(declare-fun m!3044729 () Bool)

(assert (=> d!765593 m!3044729))

(declare-fun m!3044731 () Bool)

(assert (=> d!765593 m!3044731))

(assert (=> d!765593 m!3042713))

(declare-fun m!3044733 () Bool)

(assert (=> d!765593 m!3044733))

(assert (=> d!765593 m!3042327))

(assert (=> d!765593 m!3042665))

(declare-fun m!3044735 () Bool)

(assert (=> d!765593 m!3044735))

(assert (=> d!765593 m!3044729))

(declare-fun m!3044737 () Bool)

(assert (=> d!765593 m!3044737))

(assert (=> d!765593 m!3042327))

(assert (=> d!765593 m!3044723))

(declare-fun m!3044739 () Bool)

(assert (=> b!2677261 m!3044739))

(declare-fun m!3044741 () Bool)

(assert (=> b!2677261 m!3044741))

(declare-fun m!3044743 () Bool)

(assert (=> b!2677256 m!3044743))

(declare-fun m!3044745 () Bool)

(assert (=> b!2677256 m!3044745))

(assert (=> b!2677256 m!3044743))

(declare-fun m!3044747 () Bool)

(assert (=> b!2677256 m!3044747))

(declare-fun m!3044749 () Bool)

(assert (=> b!2677256 m!3044749))

(declare-fun m!3044751 () Bool)

(assert (=> b!2677256 m!3044751))

(declare-fun m!3044753 () Bool)

(assert (=> b!2677256 m!3044753))

(declare-fun m!3044755 () Bool)

(assert (=> b!2677256 m!3044755))

(declare-fun m!3044757 () Bool)

(assert (=> b!2677256 m!3044757))

(declare-fun m!3044759 () Bool)

(assert (=> b!2677256 m!3044759))

(declare-fun m!3044761 () Bool)

(assert (=> b!2677256 m!3044761))

(assert (=> b!2677256 m!3044747))

(declare-fun m!3044763 () Bool)

(assert (=> b!2677256 m!3044763))

(declare-fun m!3044765 () Bool)

(assert (=> b!2677256 m!3044765))

(declare-fun m!3044767 () Bool)

(assert (=> b!2677256 m!3044767))

(assert (=> b!2677256 m!3044747))

(assert (=> b!2677256 m!3042327))

(declare-fun m!3044769 () Bool)

(assert (=> b!2677256 m!3044769))

(assert (=> b!2677256 m!3044751))

(assert (=> b!2677256 m!3044761))

(declare-fun m!3044771 () Bool)

(assert (=> b!2677256 m!3044771))

(assert (=> b!2677256 m!3042713))

(assert (=> b!2677256 m!3044763))

(declare-fun m!3044773 () Bool)

(assert (=> b!2677256 m!3044773))

(declare-fun m!3044775 () Bool)

(assert (=> b!2677256 m!3044775))

(assert (=> b!2677256 m!3044755))

(declare-fun m!3044777 () Bool)

(assert (=> b!2677256 m!3044777))

(assert (=> b!2677256 m!3042327))

(assert (=> b!2677256 m!3044723))

(declare-fun m!3044779 () Bool)

(assert (=> b!2677256 m!3044779))

(declare-fun m!3044781 () Bool)

(assert (=> b!2677256 m!3044781))

(declare-fun m!3044783 () Bool)

(assert (=> b!2677256 m!3044783))

(declare-fun m!3044785 () Bool)

(assert (=> b!2677256 m!3044785))

(assert (=> b!2677256 m!3042713))

(declare-fun m!3044787 () Bool)

(assert (=> b!2677256 m!3044787))

(assert (=> b!2677256 m!3044759))

(declare-fun m!3044789 () Bool)

(assert (=> b!2677256 m!3044789))

(assert (=> b!2677256 m!3044749))

(declare-fun m!3044791 () Bool)

(assert (=> b!2677256 m!3044791))

(assert (=> b!2677256 m!3044775))

(declare-fun m!3044793 () Bool)

(assert (=> b!2677256 m!3044793))

(assert (=> b!2677256 m!3042327))

(assert (=> b!2677256 m!3044755))

(declare-fun m!3044795 () Bool)

(assert (=> b!2677256 m!3044795))

(declare-fun m!3044797 () Bool)

(assert (=> b!2677256 m!3044797))

(assert (=> b!2677256 m!3044767))

(declare-fun m!3044799 () Bool)

(assert (=> b!2677256 m!3044799))

(declare-fun m!3044801 () Bool)

(assert (=> b!2677256 m!3044801))

(assert (=> b!2677256 m!3044787))

(declare-fun m!3044803 () Bool)

(assert (=> b!2677256 m!3044803))

(assert (=> d!765065 d!765593))

(declare-fun d!765673 () Bool)

(declare-fun res!1125589 () Bool)

(declare-fun e!1687554 () Bool)

(assert (=> d!765673 (=> res!1125589 e!1687554)))

(assert (=> d!765673 (= res!1125589 ((_ is Nil!30799) rules!1712))))

(assert (=> d!765673 (= (noDuplicateTag!1752 thiss!14116 rules!1712 Nil!30802) e!1687554)))

(declare-fun b!2677267 () Bool)

(declare-fun e!1687555 () Bool)

(assert (=> b!2677267 (= e!1687554 e!1687555)))

(declare-fun res!1125590 () Bool)

(assert (=> b!2677267 (=> (not res!1125590) (not e!1687555))))

(declare-fun contains!5929 (List!30902 String!34519) Bool)

(assert (=> b!2677267 (= res!1125590 (not (contains!5929 Nil!30802 (tag!5207 (h!36219 rules!1712)))))))

(declare-fun b!2677268 () Bool)

(assert (=> b!2677268 (= e!1687555 (noDuplicateTag!1752 thiss!14116 (t!223826 rules!1712) (Cons!30802 (tag!5207 (h!36219 rules!1712)) Nil!30802)))))

(assert (= (and d!765673 (not res!1125589)) b!2677267))

(assert (= (and b!2677267 res!1125590) b!2677268))

(declare-fun m!3044805 () Bool)

(assert (=> b!2677267 m!3044805))

(declare-fun m!3044807 () Bool)

(assert (=> b!2677268 m!3044807))

(assert (=> b!2676165 d!765673))

(declare-fun d!765675 () Bool)

(declare-fun lt!942980 () Bool)

(declare-fun content!4381 (List!30899) (InoxSet Rule!9210))

(assert (=> d!765675 (= lt!942980 (select (content!4381 rules!1712) (rule!7113 (_1!17668 (get!9679 lt!942180)))))))

(declare-fun e!1687560 () Bool)

(assert (=> d!765675 (= lt!942980 e!1687560)))

(declare-fun res!1125596 () Bool)

(assert (=> d!765675 (=> (not res!1125596) (not e!1687560))))

(assert (=> d!765675 (= res!1125596 ((_ is Cons!30799) rules!1712))))

(assert (=> d!765675 (= (contains!5926 rules!1712 (rule!7113 (_1!17668 (get!9679 lt!942180)))) lt!942980)))

(declare-fun b!2677273 () Bool)

(declare-fun e!1687561 () Bool)

(assert (=> b!2677273 (= e!1687560 e!1687561)))

(declare-fun res!1125595 () Bool)

(assert (=> b!2677273 (=> res!1125595 e!1687561)))

(assert (=> b!2677273 (= res!1125595 (= (h!36219 rules!1712) (rule!7113 (_1!17668 (get!9679 lt!942180)))))))

(declare-fun b!2677274 () Bool)

(assert (=> b!2677274 (= e!1687561 (contains!5926 (t!223826 rules!1712) (rule!7113 (_1!17668 (get!9679 lt!942180)))))))

(assert (= (and d!765675 res!1125596) b!2677273))

(assert (= (and b!2677273 (not res!1125595)) b!2677274))

(declare-fun m!3044809 () Bool)

(assert (=> d!765675 m!3044809))

(declare-fun m!3044811 () Bool)

(assert (=> d!765675 m!3044811))

(declare-fun m!3044813 () Bool)

(assert (=> b!2677274 m!3044813))

(assert (=> b!2675860 d!765675))

(assert (=> b!2675860 d!765301))

(declare-fun b!2677275 () Bool)

(declare-fun e!1687562 () List!30898)

(assert (=> b!2677275 (= e!1687562 Nil!30798)))

(declare-fun b!2677277 () Bool)

(declare-fun e!1687563 () List!30898)

(assert (=> b!2677277 (= e!1687563 (list!11643 (xs!12670 (c!431108 lt!942158))))))

(declare-fun d!765677 () Bool)

(declare-fun c!431407 () Bool)

(assert (=> d!765677 (= c!431407 ((_ is Empty!9640) (c!431108 lt!942158)))))

(assert (=> d!765677 (= (list!11637 (c!431108 lt!942158)) e!1687562)))

(declare-fun b!2677278 () Bool)

(assert (=> b!2677278 (= e!1687563 (++!7517 (list!11637 (left!23840 (c!431108 lt!942158))) (list!11637 (right!24170 (c!431108 lt!942158)))))))

(declare-fun b!2677276 () Bool)

(assert (=> b!2677276 (= e!1687562 e!1687563)))

(declare-fun c!431408 () Bool)

(assert (=> b!2677276 (= c!431408 ((_ is Leaf!14733) (c!431108 lt!942158)))))

(assert (= (and d!765677 c!431407) b!2677275))

(assert (= (and d!765677 (not c!431407)) b!2677276))

(assert (= (and b!2677276 c!431408) b!2677277))

(assert (= (and b!2677276 (not c!431408)) b!2677278))

(declare-fun m!3044815 () Bool)

(assert (=> b!2677277 m!3044815))

(declare-fun m!3044817 () Bool)

(assert (=> b!2677278 m!3044817))

(declare-fun m!3044819 () Bool)

(assert (=> b!2677278 m!3044819))

(assert (=> b!2677278 m!3044817))

(assert (=> b!2677278 m!3044819))

(declare-fun m!3044821 () Bool)

(assert (=> b!2677278 m!3044821))

(assert (=> d!765081 d!765677))

(declare-fun b!2677279 () Bool)

(declare-fun e!1687564 () Bool)

(assert (=> b!2677279 (= e!1687564 tp_is_empty!13829)))

(declare-fun b!2677281 () Bool)

(declare-fun tp!846395 () Bool)

(assert (=> b!2677281 (= e!1687564 tp!846395)))

(declare-fun b!2677282 () Bool)

(declare-fun tp!846396 () Bool)

(declare-fun tp!846394 () Bool)

(assert (=> b!2677282 (= e!1687564 (and tp!846396 tp!846394))))

(assert (=> b!2676243 (= tp!846231 e!1687564)))

(declare-fun b!2677280 () Bool)

(declare-fun tp!846398 () Bool)

(declare-fun tp!846397 () Bool)

(assert (=> b!2677280 (= e!1687564 (and tp!846398 tp!846397))))

(assert (= (and b!2676243 ((_ is ElementMatch!7849) (regOne!16211 (regex!4705 (rule!7113 separatorToken!152))))) b!2677279))

(assert (= (and b!2676243 ((_ is Concat!12777) (regOne!16211 (regex!4705 (rule!7113 separatorToken!152))))) b!2677280))

(assert (= (and b!2676243 ((_ is Star!7849) (regOne!16211 (regex!4705 (rule!7113 separatorToken!152))))) b!2677281))

(assert (= (and b!2676243 ((_ is Union!7849) (regOne!16211 (regex!4705 (rule!7113 separatorToken!152))))) b!2677282))

(declare-fun b!2677283 () Bool)

(declare-fun e!1687565 () Bool)

(assert (=> b!2677283 (= e!1687565 tp_is_empty!13829)))

(declare-fun b!2677285 () Bool)

(declare-fun tp!846400 () Bool)

(assert (=> b!2677285 (= e!1687565 tp!846400)))

(declare-fun b!2677286 () Bool)

(declare-fun tp!846401 () Bool)

(declare-fun tp!846399 () Bool)

(assert (=> b!2677286 (= e!1687565 (and tp!846401 tp!846399))))

(assert (=> b!2676243 (= tp!846229 e!1687565)))

(declare-fun b!2677284 () Bool)

(declare-fun tp!846403 () Bool)

(declare-fun tp!846402 () Bool)

(assert (=> b!2677284 (= e!1687565 (and tp!846403 tp!846402))))

(assert (= (and b!2676243 ((_ is ElementMatch!7849) (regTwo!16211 (regex!4705 (rule!7113 separatorToken!152))))) b!2677283))

(assert (= (and b!2676243 ((_ is Concat!12777) (regTwo!16211 (regex!4705 (rule!7113 separatorToken!152))))) b!2677284))

(assert (= (and b!2676243 ((_ is Star!7849) (regTwo!16211 (regex!4705 (rule!7113 separatorToken!152))))) b!2677285))

(assert (= (and b!2676243 ((_ is Union!7849) (regTwo!16211 (regex!4705 (rule!7113 separatorToken!152))))) b!2677286))

(declare-fun b!2677287 () Bool)

(declare-fun e!1687566 () Bool)

(assert (=> b!2677287 (= e!1687566 tp_is_empty!13829)))

(declare-fun b!2677289 () Bool)

(declare-fun tp!846405 () Bool)

(assert (=> b!2677289 (= e!1687566 tp!846405)))

(declare-fun b!2677290 () Bool)

(declare-fun tp!846406 () Bool)

(declare-fun tp!846404 () Bool)

(assert (=> b!2677290 (= e!1687566 (and tp!846406 tp!846404))))

(assert (=> b!2676242 (= tp!846230 e!1687566)))

(declare-fun b!2677288 () Bool)

(declare-fun tp!846408 () Bool)

(declare-fun tp!846407 () Bool)

(assert (=> b!2677288 (= e!1687566 (and tp!846408 tp!846407))))

(assert (= (and b!2676242 ((_ is ElementMatch!7849) (reg!8178 (regex!4705 (rule!7113 separatorToken!152))))) b!2677287))

(assert (= (and b!2676242 ((_ is Concat!12777) (reg!8178 (regex!4705 (rule!7113 separatorToken!152))))) b!2677288))

(assert (= (and b!2676242 ((_ is Star!7849) (reg!8178 (regex!4705 (rule!7113 separatorToken!152))))) b!2677289))

(assert (= (and b!2676242 ((_ is Union!7849) (reg!8178 (regex!4705 (rule!7113 separatorToken!152))))) b!2677290))

(declare-fun b!2677293 () Bool)

(declare-fun e!1687569 () Bool)

(assert (=> b!2677293 (= e!1687569 true)))

(declare-fun b!2677292 () Bool)

(declare-fun e!1687568 () Bool)

(assert (=> b!2677292 (= e!1687568 e!1687569)))

(declare-fun b!2677291 () Bool)

(declare-fun e!1687567 () Bool)

(assert (=> b!2677291 (= e!1687567 e!1687568)))

(assert (=> b!2675905 e!1687567))

(assert (= b!2677292 b!2677293))

(assert (= b!2677291 b!2677292))

(assert (= (and b!2675905 ((_ is Cons!30799) (t!223826 rules!1712))) b!2677291))

(assert (=> b!2677293 (< (dynLambda!13382 order!16987 (toValue!6651 (transformation!4705 (h!36219 (t!223826 rules!1712))))) (dynLambda!13383 order!16989 lambda!99968))))

(assert (=> b!2677293 (< (dynLambda!13384 order!16991 (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712))))) (dynLambda!13383 order!16989 lambda!99968))))

(declare-fun b!2677294 () Bool)

(declare-fun e!1687570 () Bool)

(assert (=> b!2677294 (= e!1687570 tp_is_empty!13829)))

(declare-fun b!2677296 () Bool)

(declare-fun tp!846410 () Bool)

(assert (=> b!2677296 (= e!1687570 tp!846410)))

(declare-fun b!2677297 () Bool)

(declare-fun tp!846411 () Bool)

(declare-fun tp!846409 () Bool)

(assert (=> b!2677297 (= e!1687570 (and tp!846411 tp!846409))))

(assert (=> b!2676241 (= tp!846233 e!1687570)))

(declare-fun b!2677295 () Bool)

(declare-fun tp!846413 () Bool)

(declare-fun tp!846412 () Bool)

(assert (=> b!2677295 (= e!1687570 (and tp!846413 tp!846412))))

(assert (= (and b!2676241 ((_ is ElementMatch!7849) (regOne!16210 (regex!4705 (rule!7113 separatorToken!152))))) b!2677294))

(assert (= (and b!2676241 ((_ is Concat!12777) (regOne!16210 (regex!4705 (rule!7113 separatorToken!152))))) b!2677295))

(assert (= (and b!2676241 ((_ is Star!7849) (regOne!16210 (regex!4705 (rule!7113 separatorToken!152))))) b!2677296))

(assert (= (and b!2676241 ((_ is Union!7849) (regOne!16210 (regex!4705 (rule!7113 separatorToken!152))))) b!2677297))

(declare-fun b!2677298 () Bool)

(declare-fun e!1687571 () Bool)

(assert (=> b!2677298 (= e!1687571 tp_is_empty!13829)))

(declare-fun b!2677300 () Bool)

(declare-fun tp!846415 () Bool)

(assert (=> b!2677300 (= e!1687571 tp!846415)))

(declare-fun b!2677301 () Bool)

(declare-fun tp!846416 () Bool)

(declare-fun tp!846414 () Bool)

(assert (=> b!2677301 (= e!1687571 (and tp!846416 tp!846414))))

(assert (=> b!2676241 (= tp!846232 e!1687571)))

(declare-fun b!2677299 () Bool)

(declare-fun tp!846418 () Bool)

(declare-fun tp!846417 () Bool)

(assert (=> b!2677299 (= e!1687571 (and tp!846418 tp!846417))))

(assert (= (and b!2676241 ((_ is ElementMatch!7849) (regTwo!16210 (regex!4705 (rule!7113 separatorToken!152))))) b!2677298))

(assert (= (and b!2676241 ((_ is Concat!12777) (regTwo!16210 (regex!4705 (rule!7113 separatorToken!152))))) b!2677299))

(assert (= (and b!2676241 ((_ is Star!7849) (regTwo!16210 (regex!4705 (rule!7113 separatorToken!152))))) b!2677300))

(assert (= (and b!2676241 ((_ is Union!7849) (regTwo!16210 (regex!4705 (rule!7113 separatorToken!152))))) b!2677301))

(declare-fun b!2677302 () Bool)

(declare-fun e!1687572 () Bool)

(assert (=> b!2677302 (= e!1687572 tp_is_empty!13829)))

(declare-fun b!2677304 () Bool)

(declare-fun tp!846420 () Bool)

(assert (=> b!2677304 (= e!1687572 tp!846420)))

(declare-fun b!2677305 () Bool)

(declare-fun tp!846421 () Bool)

(declare-fun tp!846419 () Bool)

(assert (=> b!2677305 (= e!1687572 (and tp!846421 tp!846419))))

(assert (=> b!2676284 (= tp!846271 e!1687572)))

(declare-fun b!2677303 () Bool)

(declare-fun tp!846423 () Bool)

(declare-fun tp!846422 () Bool)

(assert (=> b!2677303 (= e!1687572 (and tp!846423 tp!846422))))

(assert (= (and b!2676284 ((_ is ElementMatch!7849) (regex!4705 (rule!7113 (h!36220 (t!223827 l!4335)))))) b!2677302))

(assert (= (and b!2676284 ((_ is Concat!12777) (regex!4705 (rule!7113 (h!36220 (t!223827 l!4335)))))) b!2677303))

(assert (= (and b!2676284 ((_ is Star!7849) (regex!4705 (rule!7113 (h!36220 (t!223827 l!4335)))))) b!2677304))

(assert (= (and b!2676284 ((_ is Union!7849) (regex!4705 (rule!7113 (h!36220 (t!223827 l!4335)))))) b!2677305))

(declare-fun b!2677308 () Bool)

(declare-fun e!1687575 () Bool)

(assert (=> b!2677308 (= e!1687575 true)))

(declare-fun b!2677307 () Bool)

(declare-fun e!1687574 () Bool)

(assert (=> b!2677307 (= e!1687574 e!1687575)))

(declare-fun b!2677306 () Bool)

(declare-fun e!1687573 () Bool)

(assert (=> b!2677306 (= e!1687573 e!1687574)))

(assert (=> b!2676248 e!1687573))

(assert (= b!2677307 b!2677308))

(assert (= b!2677306 b!2677307))

(assert (= (and b!2676248 ((_ is Cons!30799) (t!223826 (t!223826 rules!1712)))) b!2677306))

(assert (=> b!2677308 (< (dynLambda!13382 order!16987 (toValue!6651 (transformation!4705 (h!36219 (t!223826 (t!223826 rules!1712)))))) (dynLambda!13383 order!16989 lambda!99962))))

(assert (=> b!2677308 (< (dynLambda!13384 order!16991 (toChars!6510 (transformation!4705 (h!36219 (t!223826 (t!223826 rules!1712)))))) (dynLambda!13383 order!16989 lambda!99962))))

(declare-fun b!2677309 () Bool)

(declare-fun e!1687576 () Bool)

(declare-fun tp!846424 () Bool)

(assert (=> b!2677309 (= e!1687576 (and tp_is_empty!13829 tp!846424))))

(assert (=> b!2676283 (= tp!846274 e!1687576)))

(assert (= (and b!2676283 ((_ is Cons!30798) (originalCharacters!5471 (h!36220 (t!223827 l!4335))))) b!2677309))

(declare-fun b!2677313 () Bool)

(declare-fun b_free!75469 () Bool)

(declare-fun b_next!76173 () Bool)

(assert (=> b!2677313 (= b_free!75469 (not b_next!76173))))

(declare-fun t!224043 () Bool)

(declare-fun tb!150265 () Bool)

(assert (=> (and b!2677313 (= (toValue!6651 (transformation!4705 (rule!7113 (h!36220 (t!223827 (t!223827 l!4335)))))) (toValue!6651 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))) t!224043) tb!150265))

(declare-fun result!185582 () Bool)

(assert (= result!185582 result!185504))

(assert (=> d!765469 t!224043))

(declare-fun b_and!198045 () Bool)

(declare-fun tp!846425 () Bool)

(assert (=> b!2677313 (= tp!846425 (and (=> t!224043 result!185582) b_and!198045))))

(declare-fun b_free!75471 () Bool)

(declare-fun b_next!76175 () Bool)

(assert (=> b!2677313 (= b_free!75471 (not b_next!76175))))

(declare-fun t!224045 () Bool)

(declare-fun tb!150267 () Bool)

(assert (=> (and b!2677313 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 (t!223827 l!4335)))))) (toChars!6510 (transformation!4705 (rule!7113 (apply!7389 lt!942163 0))))) t!224045) tb!150267))

(declare-fun result!185584 () Bool)

(assert (= result!185584 result!185494))

(assert (=> d!765413 t!224045))

(declare-fun t!224047 () Bool)

(declare-fun tb!150269 () Bool)

(assert (=> (and b!2677313 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 (t!223827 l!4335)))))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335)))))) t!224047) tb!150269))

(declare-fun result!185586 () Bool)

(assert (= result!185586 result!185516))

(assert (=> b!2676880 t!224047))

(declare-fun t!224049 () Bool)

(declare-fun tb!150271 () Bool)

(assert (=> (and b!2677313 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 (t!223827 l!4335)))))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800)))))) t!224049) tb!150271))

(declare-fun result!185588 () Bool)

(assert (= result!185588 result!185444))

(assert (=> d!765181 t!224049))

(declare-fun t!224051 () Bool)

(declare-fun tb!150273 () Bool)

(assert (=> (and b!2677313 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 (t!223827 l!4335)))))) (toChars!6510 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))) t!224051) tb!150273))

(declare-fun result!185590 () Bool)

(assert (= result!185590 result!185474))

(assert (=> d!765305 t!224051))

(declare-fun t!224053 () Bool)

(declare-fun tb!150275 () Bool)

(assert (=> (and b!2677313 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 (t!223827 l!4335)))))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335))))) t!224053) tb!150275))

(declare-fun result!185592 () Bool)

(assert (= result!185592 result!185364))

(assert (=> d!765019 t!224053))

(assert (=> b!2676213 t!224053))

(declare-fun t!224055 () Bool)

(declare-fun tb!150277 () Bool)

(assert (=> (and b!2677313 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 (t!223827 l!4335)))))) (toChars!6510 (transformation!4705 (rule!7113 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335)))))))) t!224055) tb!150277))

(declare-fun result!185594 () Bool)

(assert (= result!185594 result!185484))

(assert (=> d!765361 t!224055))

(assert (=> d!765489 t!224047))

(declare-fun tb!150279 () Bool)

(declare-fun t!224057 () Bool)

(assert (=> (and b!2677313 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 (t!223827 l!4335)))))) (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152)))) t!224057) tb!150279))

(declare-fun result!185596 () Bool)

(assert (= result!185596 result!185386))

(assert (=> b!2675992 t!224057))

(declare-fun b_and!198047 () Bool)

(declare-fun tp!846427 () Bool)

(assert (=> b!2677313 (= tp!846427 (and (=> t!224053 result!185592) (=> t!224047 result!185586) (=> t!224049 result!185588) (=> t!224055 result!185594) (=> t!224045 result!185584) (=> t!224057 result!185596) (=> t!224051 result!185590) b_and!198047))))

(declare-fun tp!846426 () Bool)

(declare-fun e!1687578 () Bool)

(declare-fun e!1687580 () Bool)

(declare-fun b!2677312 () Bool)

(assert (=> b!2677312 (= e!1687580 (and tp!846426 (inv!41810 (tag!5207 (rule!7113 (h!36220 (t!223827 (t!223827 l!4335)))))) (inv!41813 (transformation!4705 (rule!7113 (h!36220 (t!223827 (t!223827 l!4335)))))) e!1687578))))

(assert (=> b!2677313 (= e!1687578 (and tp!846425 tp!846427))))

(declare-fun e!1687582 () Bool)

(assert (=> b!2676282 (= tp!846273 e!1687582)))

(declare-fun b!2677311 () Bool)

(declare-fun tp!846429 () Bool)

(declare-fun e!1687579 () Bool)

(assert (=> b!2677311 (= e!1687579 (and (inv!21 (value!151697 (h!36220 (t!223827 (t!223827 l!4335))))) e!1687580 tp!846429))))

(declare-fun b!2677310 () Bool)

(declare-fun tp!846428 () Bool)

(assert (=> b!2677310 (= e!1687582 (and (inv!41814 (h!36220 (t!223827 (t!223827 l!4335)))) e!1687579 tp!846428))))

(assert (= b!2677312 b!2677313))

(assert (= b!2677311 b!2677312))

(assert (= b!2677310 b!2677311))

(assert (= (and b!2676282 ((_ is Cons!30800) (t!223827 (t!223827 l!4335)))) b!2677310))

(declare-fun m!3044823 () Bool)

(assert (=> b!2677312 m!3044823))

(declare-fun m!3044825 () Bool)

(assert (=> b!2677312 m!3044825))

(declare-fun m!3044827 () Bool)

(assert (=> b!2677311 m!3044827))

(declare-fun m!3044829 () Bool)

(assert (=> b!2677310 m!3044829))

(declare-fun tp!846438 () Bool)

(declare-fun tp!846436 () Bool)

(declare-fun e!1687588 () Bool)

(declare-fun b!2677322 () Bool)

(assert (=> b!2677322 (= e!1687588 (and (inv!41817 (left!23840 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152))))) tp!846436 (inv!41817 (right!24170 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152))))) tp!846438))))

(declare-fun b!2677324 () Bool)

(declare-fun e!1687587 () Bool)

(declare-fun tp!846437 () Bool)

(assert (=> b!2677324 (= e!1687587 tp!846437)))

(declare-fun b!2677323 () Bool)

(declare-fun inv!41824 (IArray!19285) Bool)

(assert (=> b!2677323 (= e!1687588 (and (inv!41824 (xs!12670 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152))))) e!1687587))))

(assert (=> b!2675998 (= tp!846162 (and (inv!41817 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152)))) e!1687588))))

(assert (= (and b!2675998 ((_ is Node!9640) (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152))))) b!2677322))

(assert (= b!2677323 b!2677324))

(assert (= (and b!2675998 ((_ is Leaf!14733) (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (value!151697 separatorToken!152))))) b!2677323))

(declare-fun m!3044831 () Bool)

(assert (=> b!2677322 m!3044831))

(declare-fun m!3044833 () Bool)

(assert (=> b!2677322 m!3044833))

(declare-fun m!3044835 () Bool)

(assert (=> b!2677323 m!3044835))

(assert (=> b!2675998 m!3042575))

(declare-fun b!2677325 () Bool)

(declare-fun e!1687589 () Bool)

(assert (=> b!2677325 (= e!1687589 tp_is_empty!13829)))

(declare-fun b!2677327 () Bool)

(declare-fun tp!846440 () Bool)

(assert (=> b!2677327 (= e!1687589 tp!846440)))

(declare-fun b!2677328 () Bool)

(declare-fun tp!846441 () Bool)

(declare-fun tp!846439 () Bool)

(assert (=> b!2677328 (= e!1687589 (and tp!846441 tp!846439))))

(assert (=> b!2676247 (= tp!846236 e!1687589)))

(declare-fun b!2677326 () Bool)

(declare-fun tp!846443 () Bool)

(declare-fun tp!846442 () Bool)

(assert (=> b!2677326 (= e!1687589 (and tp!846443 tp!846442))))

(assert (= (and b!2676247 ((_ is ElementMatch!7849) (regOne!16211 (regex!4705 (h!36219 rules!1712))))) b!2677325))

(assert (= (and b!2676247 ((_ is Concat!12777) (regOne!16211 (regex!4705 (h!36219 rules!1712))))) b!2677326))

(assert (= (and b!2676247 ((_ is Star!7849) (regOne!16211 (regex!4705 (h!36219 rules!1712))))) b!2677327))

(assert (= (and b!2676247 ((_ is Union!7849) (regOne!16211 (regex!4705 (h!36219 rules!1712))))) b!2677328))

(declare-fun b!2677329 () Bool)

(declare-fun e!1687590 () Bool)

(assert (=> b!2677329 (= e!1687590 tp_is_empty!13829)))

(declare-fun b!2677331 () Bool)

(declare-fun tp!846445 () Bool)

(assert (=> b!2677331 (= e!1687590 tp!846445)))

(declare-fun b!2677332 () Bool)

(declare-fun tp!846446 () Bool)

(declare-fun tp!846444 () Bool)

(assert (=> b!2677332 (= e!1687590 (and tp!846446 tp!846444))))

(assert (=> b!2676247 (= tp!846234 e!1687590)))

(declare-fun b!2677330 () Bool)

(declare-fun tp!846448 () Bool)

(declare-fun tp!846447 () Bool)

(assert (=> b!2677330 (= e!1687590 (and tp!846448 tp!846447))))

(assert (= (and b!2676247 ((_ is ElementMatch!7849) (regTwo!16211 (regex!4705 (h!36219 rules!1712))))) b!2677329))

(assert (= (and b!2676247 ((_ is Concat!12777) (regTwo!16211 (regex!4705 (h!36219 rules!1712))))) b!2677330))

(assert (= (and b!2676247 ((_ is Star!7849) (regTwo!16211 (regex!4705 (h!36219 rules!1712))))) b!2677331))

(assert (= (and b!2676247 ((_ is Union!7849) (regTwo!16211 (regex!4705 (h!36219 rules!1712))))) b!2677332))

(declare-fun b!2677333 () Bool)

(declare-fun e!1687591 () Bool)

(declare-fun tp!846449 () Bool)

(assert (=> b!2677333 (= e!1687591 (and tp_is_empty!13829 tp!846449))))

(assert (=> b!2676255 (= tp!846241 e!1687591)))

(assert (= (and b!2676255 ((_ is Cons!30798) (t!223825 (originalCharacters!5471 (h!36220 l!4335))))) b!2677333))

(declare-fun b!2677334 () Bool)

(declare-fun e!1687592 () Bool)

(assert (=> b!2677334 (= e!1687592 tp_is_empty!13829)))

(declare-fun b!2677336 () Bool)

(declare-fun tp!846451 () Bool)

(assert (=> b!2677336 (= e!1687592 tp!846451)))

(declare-fun b!2677337 () Bool)

(declare-fun tp!846452 () Bool)

(declare-fun tp!846450 () Bool)

(assert (=> b!2677337 (= e!1687592 (and tp!846452 tp!846450))))

(assert (=> b!2676246 (= tp!846235 e!1687592)))

(declare-fun b!2677335 () Bool)

(declare-fun tp!846454 () Bool)

(declare-fun tp!846453 () Bool)

(assert (=> b!2677335 (= e!1687592 (and tp!846454 tp!846453))))

(assert (= (and b!2676246 ((_ is ElementMatch!7849) (reg!8178 (regex!4705 (h!36219 rules!1712))))) b!2677334))

(assert (= (and b!2676246 ((_ is Concat!12777) (reg!8178 (regex!4705 (h!36219 rules!1712))))) b!2677335))

(assert (= (and b!2676246 ((_ is Star!7849) (reg!8178 (regex!4705 (h!36219 rules!1712))))) b!2677336))

(assert (= (and b!2676246 ((_ is Union!7849) (reg!8178 (regex!4705 (h!36219 rules!1712))))) b!2677337))

(declare-fun b!2677338 () Bool)

(declare-fun e!1687593 () Bool)

(assert (=> b!2677338 (= e!1687593 tp_is_empty!13829)))

(declare-fun b!2677340 () Bool)

(declare-fun tp!846456 () Bool)

(assert (=> b!2677340 (= e!1687593 tp!846456)))

(declare-fun b!2677341 () Bool)

(declare-fun tp!846457 () Bool)

(declare-fun tp!846455 () Bool)

(assert (=> b!2677341 (= e!1687593 (and tp!846457 tp!846455))))

(assert (=> b!2676245 (= tp!846238 e!1687593)))

(declare-fun b!2677339 () Bool)

(declare-fun tp!846459 () Bool)

(declare-fun tp!846458 () Bool)

(assert (=> b!2677339 (= e!1687593 (and tp!846459 tp!846458))))

(assert (= (and b!2676245 ((_ is ElementMatch!7849) (regOne!16210 (regex!4705 (h!36219 rules!1712))))) b!2677338))

(assert (= (and b!2676245 ((_ is Concat!12777) (regOne!16210 (regex!4705 (h!36219 rules!1712))))) b!2677339))

(assert (= (and b!2676245 ((_ is Star!7849) (regOne!16210 (regex!4705 (h!36219 rules!1712))))) b!2677340))

(assert (= (and b!2676245 ((_ is Union!7849) (regOne!16210 (regex!4705 (h!36219 rules!1712))))) b!2677341))

(declare-fun b!2677342 () Bool)

(declare-fun e!1687594 () Bool)

(assert (=> b!2677342 (= e!1687594 tp_is_empty!13829)))

(declare-fun b!2677344 () Bool)

(declare-fun tp!846461 () Bool)

(assert (=> b!2677344 (= e!1687594 tp!846461)))

(declare-fun b!2677345 () Bool)

(declare-fun tp!846462 () Bool)

(declare-fun tp!846460 () Bool)

(assert (=> b!2677345 (= e!1687594 (and tp!846462 tp!846460))))

(assert (=> b!2676245 (= tp!846237 e!1687594)))

(declare-fun b!2677343 () Bool)

(declare-fun tp!846464 () Bool)

(declare-fun tp!846463 () Bool)

(assert (=> b!2677343 (= e!1687594 (and tp!846464 tp!846463))))

(assert (= (and b!2676245 ((_ is ElementMatch!7849) (regTwo!16210 (regex!4705 (h!36219 rules!1712))))) b!2677342))

(assert (= (and b!2676245 ((_ is Concat!12777) (regTwo!16210 (regex!4705 (h!36219 rules!1712))))) b!2677343))

(assert (= (and b!2676245 ((_ is Star!7849) (regTwo!16210 (regex!4705 (h!36219 rules!1712))))) b!2677344))

(assert (= (and b!2676245 ((_ is Union!7849) (regTwo!16210 (regex!4705 (h!36219 rules!1712))))) b!2677345))

(declare-fun b!2677346 () Bool)

(declare-fun e!1687595 () Bool)

(assert (=> b!2677346 (= e!1687595 tp_is_empty!13829)))

(declare-fun b!2677348 () Bool)

(declare-fun tp!846466 () Bool)

(assert (=> b!2677348 (= e!1687595 tp!846466)))

(declare-fun b!2677349 () Bool)

(declare-fun tp!846467 () Bool)

(declare-fun tp!846465 () Bool)

(assert (=> b!2677349 (= e!1687595 (and tp!846467 tp!846465))))

(assert (=> b!2676265 (= tp!846251 e!1687595)))

(declare-fun b!2677347 () Bool)

(declare-fun tp!846469 () Bool)

(declare-fun tp!846468 () Bool)

(assert (=> b!2677347 (= e!1687595 (and tp!846469 tp!846468))))

(assert (= (and b!2676265 ((_ is ElementMatch!7849) (regex!4705 (h!36219 (t!223826 rules!1712))))) b!2677346))

(assert (= (and b!2676265 ((_ is Concat!12777) (regex!4705 (h!36219 (t!223826 rules!1712))))) b!2677347))

(assert (= (and b!2676265 ((_ is Star!7849) (regex!4705 (h!36219 (t!223826 rules!1712))))) b!2677348))

(assert (= (and b!2676265 ((_ is Union!7849) (regex!4705 (h!36219 (t!223826 rules!1712))))) b!2677349))

(declare-fun b!2677350 () Bool)

(declare-fun e!1687596 () Bool)

(declare-fun tp!846470 () Bool)

(assert (=> b!2677350 (= e!1687596 (and tp_is_empty!13829 tp!846470))))

(assert (=> b!2676271 (= tp!846259 e!1687596)))

(assert (= (and b!2676271 ((_ is Cons!30798) (t!223825 (originalCharacters!5471 separatorToken!152)))) b!2677350))

(declare-fun b!2677353 () Bool)

(declare-fun b_free!75473 () Bool)

(declare-fun b_next!76177 () Bool)

(assert (=> b!2677353 (= b_free!75473 (not b_next!76177))))

(declare-fun t!224059 () Bool)

(declare-fun tb!150281 () Bool)

(assert (=> (and b!2677353 (= (toValue!6651 (transformation!4705 (h!36219 (t!223826 (t!223826 rules!1712))))) (toValue!6651 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))) t!224059) tb!150281))

(declare-fun result!185600 () Bool)

(assert (= result!185600 result!185504))

(assert (=> d!765469 t!224059))

(declare-fun tp!846471 () Bool)

(declare-fun b_and!198049 () Bool)

(assert (=> b!2677353 (= tp!846471 (and (=> t!224059 result!185600) b_and!198049))))

(declare-fun b_free!75475 () Bool)

(declare-fun b_next!76179 () Bool)

(assert (=> b!2677353 (= b_free!75475 (not b_next!76179))))

(declare-fun tb!150283 () Bool)

(declare-fun t!224061 () Bool)

(assert (=> (and b!2677353 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 (t!223826 rules!1712))))) (toChars!6510 (transformation!4705 (rule!7113 (apply!7389 lt!942163 0))))) t!224061) tb!150283))

(declare-fun result!185602 () Bool)

(assert (= result!185602 result!185494))

(assert (=> d!765413 t!224061))

(declare-fun t!224063 () Bool)

(declare-fun tb!150285 () Bool)

(assert (=> (and b!2677353 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 (t!223826 rules!1712))))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335)))))) t!224063) tb!150285))

(declare-fun result!185604 () Bool)

(assert (= result!185604 result!185516))

(assert (=> b!2676880 t!224063))

(declare-fun t!224065 () Bool)

(declare-fun tb!150287 () Bool)

(assert (=> (and b!2677353 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 (t!223826 rules!1712))))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (Cons!30800 (h!36220 l!4335) Nil!30800)))))) t!224065) tb!150287))

(declare-fun result!185606 () Bool)

(assert (= result!185606 result!185444))

(assert (=> d!765181 t!224065))

(declare-fun tb!150289 () Bool)

(declare-fun t!224067 () Bool)

(assert (=> (and b!2677353 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 (t!223826 rules!1712))))) (toChars!6510 (transformation!4705 (rule!7113 (_1!17668 (get!9679 lt!942180)))))) t!224067) tb!150289))

(declare-fun result!185608 () Bool)

(assert (= result!185608 result!185474))

(assert (=> d!765305 t!224067))

(declare-fun t!224069 () Bool)

(declare-fun tb!150291 () Bool)

(assert (=> (and b!2677353 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 (t!223826 rules!1712))))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335))))) t!224069) tb!150291))

(declare-fun result!185610 () Bool)

(assert (= result!185610 result!185364))

(assert (=> d!765019 t!224069))

(assert (=> b!2676213 t!224069))

(declare-fun t!224071 () Bool)

(declare-fun tb!150293 () Bool)

(assert (=> (and b!2677353 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 (t!223826 rules!1712))))) (toChars!6510 (transformation!4705 (rule!7113 (ite c!431129 (h!36220 (t!223827 l!4335)) (ite c!431128 separatorToken!152 (h!36220 (t!223827 l!4335)))))))) t!224071) tb!150293))

(declare-fun result!185612 () Bool)

(assert (= result!185612 result!185484))

(assert (=> d!765361 t!224071))

(assert (=> d!765489 t!224063))

(declare-fun t!224073 () Bool)

(declare-fun tb!150295 () Bool)

(assert (=> (and b!2677353 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 (t!223826 rules!1712))))) (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152)))) t!224073) tb!150295))

(declare-fun result!185614 () Bool)

(assert (= result!185614 result!185386))

(assert (=> b!2675992 t!224073))

(declare-fun tp!846474 () Bool)

(declare-fun b_and!198051 () Bool)

(assert (=> b!2677353 (= tp!846474 (and (=> t!224065 result!185606) (=> t!224067 result!185608) (=> t!224073 result!185614) (=> t!224061 result!185602) (=> t!224069 result!185610) (=> t!224063 result!185604) (=> t!224071 result!185612) b_and!198051))))

(declare-fun e!1687599 () Bool)

(assert (=> b!2677353 (= e!1687599 (and tp!846471 tp!846474))))

(declare-fun e!1687600 () Bool)

(declare-fun tp!846472 () Bool)

(declare-fun b!2677352 () Bool)

(assert (=> b!2677352 (= e!1687600 (and tp!846472 (inv!41810 (tag!5207 (h!36219 (t!223826 (t!223826 rules!1712))))) (inv!41813 (transformation!4705 (h!36219 (t!223826 (t!223826 rules!1712))))) e!1687599))))

(declare-fun b!2677351 () Bool)

(declare-fun e!1687597 () Bool)

(declare-fun tp!846473 () Bool)

(assert (=> b!2677351 (= e!1687597 (and e!1687600 tp!846473))))

(assert (=> b!2676264 (= tp!846252 e!1687597)))

(assert (= b!2677352 b!2677353))

(assert (= b!2677351 b!2677352))

(assert (= (and b!2676264 ((_ is Cons!30799) (t!223826 (t!223826 rules!1712)))) b!2677351))

(declare-fun m!3044837 () Bool)

(assert (=> b!2677352 m!3044837))

(declare-fun m!3044839 () Bool)

(assert (=> b!2677352 m!3044839))

(declare-fun b!2677354 () Bool)

(declare-fun e!1687601 () Bool)

(assert (=> b!2677354 (= e!1687601 tp_is_empty!13829)))

(declare-fun b!2677356 () Bool)

(declare-fun tp!846476 () Bool)

(assert (=> b!2677356 (= e!1687601 tp!846476)))

(declare-fun b!2677357 () Bool)

(declare-fun tp!846477 () Bool)

(declare-fun tp!846475 () Bool)

(assert (=> b!2677357 (= e!1687601 (and tp!846477 tp!846475))))

(assert (=> b!2676270 (= tp!846256 e!1687601)))

(declare-fun b!2677355 () Bool)

(declare-fun tp!846479 () Bool)

(declare-fun tp!846478 () Bool)

(assert (=> b!2677355 (= e!1687601 (and tp!846479 tp!846478))))

(assert (= (and b!2676270 ((_ is ElementMatch!7849) (regOne!16211 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677354))

(assert (= (and b!2676270 ((_ is Concat!12777) (regOne!16211 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677355))

(assert (= (and b!2676270 ((_ is Star!7849) (regOne!16211 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677356))

(assert (= (and b!2676270 ((_ is Union!7849) (regOne!16211 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677357))

(declare-fun b!2677358 () Bool)

(declare-fun e!1687602 () Bool)

(assert (=> b!2677358 (= e!1687602 tp_is_empty!13829)))

(declare-fun b!2677360 () Bool)

(declare-fun tp!846481 () Bool)

(assert (=> b!2677360 (= e!1687602 tp!846481)))

(declare-fun b!2677361 () Bool)

(declare-fun tp!846482 () Bool)

(declare-fun tp!846480 () Bool)

(assert (=> b!2677361 (= e!1687602 (and tp!846482 tp!846480))))

(assert (=> b!2676270 (= tp!846254 e!1687602)))

(declare-fun b!2677359 () Bool)

(declare-fun tp!846484 () Bool)

(declare-fun tp!846483 () Bool)

(assert (=> b!2677359 (= e!1687602 (and tp!846484 tp!846483))))

(assert (= (and b!2676270 ((_ is ElementMatch!7849) (regTwo!16211 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677358))

(assert (= (and b!2676270 ((_ is Concat!12777) (regTwo!16211 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677359))

(assert (= (and b!2676270 ((_ is Star!7849) (regTwo!16211 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677360))

(assert (= (and b!2676270 ((_ is Union!7849) (regTwo!16211 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677361))

(declare-fun b!2677362 () Bool)

(declare-fun e!1687603 () Bool)

(assert (=> b!2677362 (= e!1687603 tp_is_empty!13829)))

(declare-fun b!2677364 () Bool)

(declare-fun tp!846486 () Bool)

(assert (=> b!2677364 (= e!1687603 tp!846486)))

(declare-fun b!2677365 () Bool)

(declare-fun tp!846487 () Bool)

(declare-fun tp!846485 () Bool)

(assert (=> b!2677365 (= e!1687603 (and tp!846487 tp!846485))))

(assert (=> b!2676269 (= tp!846255 e!1687603)))

(declare-fun b!2677363 () Bool)

(declare-fun tp!846489 () Bool)

(declare-fun tp!846488 () Bool)

(assert (=> b!2677363 (= e!1687603 (and tp!846489 tp!846488))))

(assert (= (and b!2676269 ((_ is ElementMatch!7849) (reg!8178 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677362))

(assert (= (and b!2676269 ((_ is Concat!12777) (reg!8178 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677363))

(assert (= (and b!2676269 ((_ is Star!7849) (reg!8178 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677364))

(assert (= (and b!2676269 ((_ is Union!7849) (reg!8178 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677365))

(declare-fun e!1687605 () Bool)

(declare-fun b!2677366 () Bool)

(declare-fun tp!846492 () Bool)

(declare-fun tp!846490 () Bool)

(assert (=> b!2677366 (= e!1687605 (and (inv!41817 (left!23840 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335)))))) tp!846490 (inv!41817 (right!24170 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335)))))) tp!846492))))

(declare-fun b!2677368 () Bool)

(declare-fun e!1687604 () Bool)

(declare-fun tp!846491 () Bool)

(assert (=> b!2677368 (= e!1687604 tp!846491)))

(declare-fun b!2677367 () Bool)

(assert (=> b!2677367 (= e!1687605 (and (inv!41824 (xs!12670 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335)))))) e!1687604))))

(assert (=> b!2675933 (= tp!846157 (and (inv!41817 (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335))))) e!1687605))))

(assert (= (and b!2675933 ((_ is Node!9640) (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335)))))) b!2677366))

(assert (= b!2677367 b!2677368))

(assert (= (and b!2675933 ((_ is Leaf!14733) (c!431108 (dynLambda!13388 (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (value!151697 (h!36220 l!4335)))))) b!2677367))

(declare-fun m!3044841 () Bool)

(assert (=> b!2677366 m!3044841))

(declare-fun m!3044843 () Bool)

(assert (=> b!2677366 m!3044843))

(declare-fun m!3044845 () Bool)

(assert (=> b!2677367 m!3044845))

(assert (=> b!2675933 m!3042473))

(declare-fun b!2677371 () Bool)

(declare-fun e!1687608 () Bool)

(assert (=> b!2677371 (= e!1687608 true)))

(declare-fun b!2677370 () Bool)

(declare-fun e!1687607 () Bool)

(assert (=> b!2677370 (= e!1687607 e!1687608)))

(declare-fun b!2677369 () Bool)

(declare-fun e!1687606 () Bool)

(assert (=> b!2677369 (= e!1687606 e!1687607)))

(assert (=> b!2675984 e!1687606))

(assert (= b!2677370 b!2677371))

(assert (= b!2677369 b!2677370))

(assert (= (and b!2675984 ((_ is Cons!30799) (t!223826 rules!1712))) b!2677369))

(assert (=> b!2677371 (< (dynLambda!13382 order!16987 (toValue!6651 (transformation!4705 (h!36219 (t!223826 rules!1712))))) (dynLambda!13383 order!16989 lambda!99971))))

(assert (=> b!2677371 (< (dynLambda!13384 order!16991 (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712))))) (dynLambda!13383 order!16989 lambda!99971))))

(declare-fun b!2677372 () Bool)

(declare-fun e!1687609 () Bool)

(assert (=> b!2677372 (= e!1687609 tp_is_empty!13829)))

(declare-fun b!2677374 () Bool)

(declare-fun tp!846494 () Bool)

(assert (=> b!2677374 (= e!1687609 tp!846494)))

(declare-fun b!2677375 () Bool)

(declare-fun tp!846495 () Bool)

(declare-fun tp!846493 () Bool)

(assert (=> b!2677375 (= e!1687609 (and tp!846495 tp!846493))))

(assert (=> b!2676268 (= tp!846258 e!1687609)))

(declare-fun b!2677373 () Bool)

(declare-fun tp!846497 () Bool)

(declare-fun tp!846496 () Bool)

(assert (=> b!2677373 (= e!1687609 (and tp!846497 tp!846496))))

(assert (= (and b!2676268 ((_ is ElementMatch!7849) (regOne!16210 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677372))

(assert (= (and b!2676268 ((_ is Concat!12777) (regOne!16210 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677373))

(assert (= (and b!2676268 ((_ is Star!7849) (regOne!16210 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677374))

(assert (= (and b!2676268 ((_ is Union!7849) (regOne!16210 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677375))

(declare-fun b!2677376 () Bool)

(declare-fun e!1687610 () Bool)

(assert (=> b!2677376 (= e!1687610 tp_is_empty!13829)))

(declare-fun b!2677378 () Bool)

(declare-fun tp!846499 () Bool)

(assert (=> b!2677378 (= e!1687610 tp!846499)))

(declare-fun b!2677379 () Bool)

(declare-fun tp!846500 () Bool)

(declare-fun tp!846498 () Bool)

(assert (=> b!2677379 (= e!1687610 (and tp!846500 tp!846498))))

(assert (=> b!2676268 (= tp!846257 e!1687610)))

(declare-fun b!2677377 () Bool)

(declare-fun tp!846502 () Bool)

(declare-fun tp!846501 () Bool)

(assert (=> b!2677377 (= e!1687610 (and tp!846502 tp!846501))))

(assert (= (and b!2676268 ((_ is ElementMatch!7849) (regTwo!16210 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677376))

(assert (= (and b!2676268 ((_ is Concat!12777) (regTwo!16210 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677377))

(assert (= (and b!2676268 ((_ is Star!7849) (regTwo!16210 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677378))

(assert (= (and b!2676268 ((_ is Union!7849) (regTwo!16210 (regex!4705 (rule!7113 (h!36220 l!4335)))))) b!2677379))

(declare-fun b_lambda!81725 () Bool)

(assert (= b_lambda!81695 (or b!2675898 b_lambda!81725)))

(declare-fun bs!479940 () Bool)

(declare-fun d!765679 () Bool)

(assert (= bs!479940 (and d!765679 b!2675898)))

(assert (=> bs!479940 (= (dynLambda!13386 lambda!99968 (h!36220 (t!223827 l!4335))) (rulesProduceIndividualToken!2014 thiss!14116 rules!1712 (h!36220 (t!223827 l!4335))))))

(assert (=> bs!479940 m!3043671))

(assert (=> d!765475 d!765679))

(declare-fun b_lambda!81727 () Bool)

(assert (= b_lambda!81705 (or d!765041 b_lambda!81727)))

(declare-fun bs!479941 () Bool)

(declare-fun d!765681 () Bool)

(assert (= bs!479941 (and d!765681 d!765041)))

(assert (=> bs!479941 (= (dynLambda!13386 lambda!99971 (h!36220 l!4335)) (rulesProduceIndividualToken!2014 thiss!14116 rules!1712 (h!36220 l!4335)))))

(assert (=> bs!479941 m!3042291))

(assert (=> b!2677011 d!765681))

(declare-fun b_lambda!81729 () Bool)

(assert (= b_lambda!81681 (or b!2675784 b_lambda!81729)))

(declare-fun bs!479942 () Bool)

(declare-fun d!765683 () Bool)

(assert (= bs!479942 (and d!765683 b!2675784)))

(assert (=> bs!479942 (= (dynLambda!13386 lambda!99961 (h!36220 (t!223827 l!4335))) (not (isSeparator!4705 (rule!7113 (h!36220 (t!223827 l!4335))))))))

(assert (=> b!2676617 d!765683))

(declare-fun b_lambda!81731 () Bool)

(assert (= b_lambda!81683 (or b!2675775 b_lambda!81731)))

(assert (=> d!765317 d!765117))

(declare-fun b_lambda!81733 () Bool)

(assert (= b_lambda!81699 (or (and b!2675770 b_free!75443 (= (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))))) (and b!2675776 b_free!75435 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))))) (and b!2675783 b_free!75439 (= (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))))) (and b!2676285 b_free!75459) (and b!2677353 b_free!75475 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 (t!223826 rules!1712))))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))))) (and b!2677313 b_free!75471 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 (t!223827 l!4335)))))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))))) (and b!2676266 b_free!75455 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712)))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))))) b_lambda!81733)))

(declare-fun b_lambda!81735 () Bool)

(assert (= b_lambda!81697 (or (and b!2675770 b_free!75443 (= (toChars!6510 (transformation!4705 (h!36219 rules!1712))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))))) (and b!2675776 b_free!75435 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 l!4335)))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))))) (and b!2675783 b_free!75439 (= (toChars!6510 (transformation!4705 (rule!7113 separatorToken!152))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))))) (and b!2676285 b_free!75459) (and b!2677353 b_free!75475 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 (t!223826 rules!1712))))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))))) (and b!2677313 b_free!75471 (= (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 (t!223827 l!4335)))))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))))) (and b!2676266 b_free!75455 (= (toChars!6510 (transformation!4705 (h!36219 (t!223826 rules!1712)))) (toChars!6510 (transformation!4705 (rule!7113 (h!36220 (t!223827 l!4335))))))) b_lambda!81735)))

(declare-fun b_lambda!81737 () Bool)

(assert (= b_lambda!81685 (or b!2675775 b_lambda!81737)))

(assert (=> b!2676619 d!765117))

(check-sat (not b!2676869) (not b!2676532) (not b_lambda!81737) (not d!765305) (not b!2676829) (not b!2676880) (not b!2676533) (not d!765351) (not b!2677277) (not b!2676967) (not d!765181) (not b!2677304) (not d!765179) (not b_lambda!81653) (not b_lambda!81729) (not b!2676971) (not b_next!76161) (not d!765415) (not b!2676666) (not b!2676511) (not d!765329) b_and!197995 (not d!765389) (not b!2676813) (not d!765331) (not b!2676970) (not b!2676606) (not b_next!76145) (not b!2676514) (not d!765365) (not b!2677257) (not b!2676664) (not b_lambda!81733) (not b!2676690) (not b!2676780) (not bm!172676) (not b_next!76175) (not b!2676609) (not b!2676515) (not b!2676917) (not b!2676998) (not b!2675933) (not d!765527) (not b!2676888) (not b_next!76177) (not b!2677332) b_and!198015 (not b!2677290) (not b!2677036) (not b!2676662) (not b!2677282) (not b!2676529) (not b!2676536) (not b!2677309) (not b!2676789) (not d!765529) (not b!2676615) (not b!2676831) (not b!2676920) (not b_next!76157) (not b!2676614) (not d!765287) (not b!2676907) (not d!765545) (not b!2677363) (not b!2677009) (not b!2676550) (not b!2677337) (not b!2676531) (not b!2677326) (not b!2677330) (not b!2676968) (not b_next!76143) b_and!198013 (not b_next!76139) (not d!765573) (not b!2676687) (not d!765519) (not bm!172668) (not b_lambda!81727) (not b_lambda!81661) (not b!2676754) (not bm!172665) (not d!765345) (not b!2676770) (not b!2676887) (not d!765537) (not d!765495) (not b!2677328) (not b!2676918) (not b!2676851) (not b!2677310) (not b!2676830) (not b!2677352) (not d!765593) (not b_next!76147) (not b_next!76173) (not b!2676802) (not b_lambda!81679) (not b!2677280) (not b!2676621) (not d!765393) (not b!2677267) (not b!2676537) (not b!2676980) (not b!2677364) (not b!2676683) (not b!2677295) (not d!765395) (not b!2677357) (not b!2677378) (not b!2677355) (not d!765409) (not bm!172678) (not b!2677303) (not d!765349) (not d!765423) (not d!765185) (not b!2676969) tp_is_empty!13829 (not d!765383) (not b_lambda!81673) (not d!765535) (not b!2676675) (not b!2677375) (not b!2676618) (not bm!172679) (not b!2677367) (not b!2677349) (not d!765493) (not b!2676622) (not b!2677351) (not d!765435) (not b!2677366) b_and!197987 (not b!2676738) (not b!2677373) (not d!765375) (not b!2677356) (not b!2676814) (not b!2677311) b_and!198007 (not d!765357) (not b!2677268) (not b!2676881) (not b!2677312) (not b!2677256) (not b!2677324) (not b!2676605) (not b!2676418) (not b!2676761) (not b_lambda!81687) (not bm!172674) (not d!765479) (not b!2677281) (not b!2677331) (not bm!172670) (not b!2677360) (not b_lambda!81735) (not tb!150133) (not b!2677285) (not b_lambda!81689) (not b!2676535) (not d!765353) (not d!765447) (not d!765385) (not d!765471) (not b!2676868) (not d!765499) (not b!2677333) (not b!2676680) (not b!2676641) (not b!2676753) (not b!2677299) (not d!765323) (not b!2676817) (not d!765539) (not b!2676752) (not b!2677340) (not d!765327) (not b!2676845) (not b!2676693) (not b!2677343) (not bs!479940) (not bm!172662) (not b!2676848) (not d!765497) (not d!765579) (not d!765325) (not bm!172677) (not d!765463) (not b!2676637) (not b!2676825) b_and!198045 (not b!2676745) (not b!2676517) (not b!2677379) (not b!2676670) (not b_next!76141) (not d!765259) (not b_next!76179) (not b!2677278) (not b!2676668) (not b!2676766) (not b!2676513) (not bs!479941) (not b!2676827) (not d!765515) b_and!197991 (not b!2676667) (not d!765555) (not bm!172669) (not b!2676616) (not d!765489) (not b!2677335) (not d!765559) (not b!2677305) (not b!2677377) (not b!2677348) (not b!2676771) (not b!2676990) (not b!2676672) b_and!197993 (not b!2676943) (not b!2675998) (not b!2676406) (not b!2676639) (not b!2676916) (not b!2676624) (not b!2676871) (not b!2677341) (not b!2677323) (not b!2676731) (not b!2676673) (not d!765279) (not d!765465) (not d!765387) (not b!2676660) (not b!2676850) (not d!765363) (not b_lambda!81655) (not d!765359) (not d!765343) (not b!2676823) (not b!2676401) (not b!2676816) (not b_next!76159) (not d!765377) (not b!2676659) (not b!2676966) (not tb!150193) (not d!765675) (not b!2676852) (not b!2677034) (not b!2677306) (not b!2676735) (not b!2676945) (not b!2676944) (not d!765417) (not d!765391) (not b!2677297) (not b!2677350) (not d!765503) (not d!765407) (not d!765177) (not d!765251) (not bm!172661) (not d!765475) (not d!765303) (not b_lambda!81725) (not d!765339) (not d!765591) (not b!2676613) (not d!765373) (not d!765413) (not d!765277) (not b!2677289) (not d!765521) (not tb!150203) (not b!2676773) b_and!197989 (not b!2676784) (not d!765369) (not b!2676704) (not b_next!76163) (not d!765261) (not d!765403) (not b_lambda!81657) (not b!2677345) (not b!2676899) (not b!2676665) (not d!765477) (not d!765361) (not tb!150183) (not d!765307) (not b!2676798) (not d!765311) (not b!2677369) (not b!2676797) (not b!2677336) (not d!765381) (not b_lambda!81731) (not b!2677259) b_and!198049 (not d!765425) (not b!2676914) (not b!2677032) (not d!765379) (not tb!150173) (not b!2676512) (not b!2677012) (not b!2677361) (not b!2676703) (not b!2677368) (not b!2676620) (not d!765263) (not b!2676518) (not b!2676708) (not b!2677291) (not tb!150163) b_and!198009 (not b!2676879) (not b!2676824) (not b!2677301) (not b!2676800) (not b!2676870) (not d!765565) (not b!2676788) (not b!2676405) (not b!2677261) b_and!198047 (not b!2676519) (not b!2676861) (not b_lambda!81693) (not b!2676996) (not d!765309) (not b!2676906) (not b!2676826) (not b!2676674) (not b!2676900) (not b!2676702) (not d!765533) (not b!2676705) (not b!2676669) (not d!765399) (not b!2677359) (not d!765401) (not b!2677300) (not d!765467) (not b!2676419) (not b_lambda!81659) (not d!765483) (not b!2677288) (not d!765313) (not d!765355) (not b!2677347) (not b!2677274) (not b!2677296) (not d!765411) (not b!2677033) (not d!765517) (not d!765397) (not b!2676682) (not b!2677339) (not b!2677365) (not b!2676630) (not b!2676530) b_and!198011 (not d!765347) (not b!2677286) (not b!2676864) (not b!2677327) (not d!765507) (not d!765341) (not b_next!76137) (not d!765473) (not b!2676901) (not d!765405) b_and!198051 (not b!2677374) (not b!2677284) (not d!765439) (not b!2677322) (not b!2677344) (not b!2676689))
(check-sat (not b_next!76161) (not b_next!76175) (not b_next!76157) b_and!197991 b_and!197993 (not b_next!76159) b_and!198049 b_and!198009 b_and!198047 b_and!198011 b_and!197995 (not b_next!76145) (not b_next!76177) b_and!198015 (not b_next!76143) b_and!198013 (not b_next!76139) (not b_next!76147) (not b_next!76173) b_and!197987 b_and!198007 (not b_next!76141) b_and!198045 (not b_next!76179) b_and!197989 (not b_next!76163) (not b_next!76137) b_and!198051)
