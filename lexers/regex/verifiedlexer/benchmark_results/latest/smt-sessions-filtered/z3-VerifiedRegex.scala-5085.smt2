; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259906 () Bool)

(assert start!259906)

(declare-fun b!2672043 () Bool)

(declare-fun b_free!75185 () Bool)

(declare-fun b_next!75889 () Bool)

(assert (=> b!2672043 (= b_free!75185 (not b_next!75889))))

(declare-fun tp!844891 () Bool)

(declare-fun b_and!197313 () Bool)

(assert (=> b!2672043 (= tp!844891 b_and!197313)))

(declare-fun b_free!75187 () Bool)

(declare-fun b_next!75891 () Bool)

(assert (=> b!2672043 (= b_free!75187 (not b_next!75891))))

(declare-fun tp!844899 () Bool)

(declare-fun b_and!197315 () Bool)

(assert (=> b!2672043 (= tp!844899 b_and!197315)))

(declare-fun b!2672037 () Bool)

(declare-fun b_free!75189 () Bool)

(declare-fun b_next!75893 () Bool)

(assert (=> b!2672037 (= b_free!75189 (not b_next!75893))))

(declare-fun tp!844898 () Bool)

(declare-fun b_and!197317 () Bool)

(assert (=> b!2672037 (= tp!844898 b_and!197317)))

(declare-fun b_free!75191 () Bool)

(declare-fun b_next!75895 () Bool)

(assert (=> b!2672037 (= b_free!75191 (not b_next!75895))))

(declare-fun tp!844888 () Bool)

(declare-fun b_and!197319 () Bool)

(assert (=> b!2672037 (= tp!844888 b_and!197319)))

(declare-fun b!2672048 () Bool)

(declare-fun b_free!75193 () Bool)

(declare-fun b_next!75897 () Bool)

(assert (=> b!2672048 (= b_free!75193 (not b_next!75897))))

(declare-fun tp!844893 () Bool)

(declare-fun b_and!197321 () Bool)

(assert (=> b!2672048 (= tp!844893 b_and!197321)))

(declare-fun b_free!75195 () Bool)

(declare-fun b_next!75899 () Bool)

(assert (=> b!2672048 (= b_free!75195 (not b_next!75899))))

(declare-fun tp!844890 () Bool)

(declare-fun b_and!197323 () Bool)

(assert (=> b!2672048 (= tp!844890 b_and!197323)))

(declare-fun bs!479558 () Bool)

(declare-fun b!2672039 () Bool)

(declare-fun b!2672050 () Bool)

(assert (= bs!479558 (and b!2672039 b!2672050)))

(declare-fun lambda!99806 () Int)

(declare-fun lambda!99805 () Int)

(assert (=> bs!479558 (not (= lambda!99806 lambda!99805))))

(declare-fun b!2672061 () Bool)

(declare-fun e!1684142 () Bool)

(assert (=> b!2672061 (= e!1684142 true)))

(declare-fun b!2672060 () Bool)

(declare-fun e!1684141 () Bool)

(assert (=> b!2672060 (= e!1684141 e!1684142)))

(declare-fun b!2672059 () Bool)

(declare-fun e!1684140 () Bool)

(assert (=> b!2672059 (= e!1684140 e!1684141)))

(assert (=> b!2672039 e!1684140))

(assert (= b!2672060 b!2672061))

(assert (= b!2672059 b!2672060))

(declare-datatypes ((List!30833 0))(
  ( (Nil!30733) (Cons!30733 (h!36153 (_ BitVec 16)) (t!223344 List!30833)) )
))
(declare-datatypes ((TokenValue!4913 0))(
  ( (FloatLiteralValue!9826 (text!34836 List!30833)) (TokenValueExt!4912 (__x!19659 Int)) (Broken!24565 (value!151272 List!30833)) (Object!5012) (End!4913) (Def!4913) (Underscore!4913) (Match!4913) (Else!4913) (Error!4913) (Case!4913) (If!4913) (Extends!4913) (Abstract!4913) (Class!4913) (Val!4913) (DelimiterValue!9826 (del!4973 List!30833)) (KeywordValue!4919 (value!151273 List!30833)) (CommentValue!9826 (value!151274 List!30833)) (WhitespaceValue!9826 (value!151275 List!30833)) (IndentationValue!4913 (value!151276 List!30833)) (String!34448) (Int32!4913) (Broken!24566 (value!151277 List!30833)) (Boolean!4914) (Unit!44952) (OperatorValue!4916 (op!4973 List!30833)) (IdentifierValue!9826 (value!151278 List!30833)) (IdentifierValue!9827 (value!151279 List!30833)) (WhitespaceValue!9827 (value!151280 List!30833)) (True!9826) (False!9826) (Broken!24567 (value!151281 List!30833)) (Broken!24568 (value!151282 List!30833)) (True!9827) (RightBrace!4913) (RightBracket!4913) (Colon!4913) (Null!4913) (Comma!4913) (LeftBracket!4913) (False!9827) (LeftBrace!4913) (ImaginaryLiteralValue!4913 (text!34837 List!30833)) (StringLiteralValue!14739 (value!151283 List!30833)) (EOFValue!4913 (value!151284 List!30833)) (IdentValue!4913 (value!151285 List!30833)) (DelimiterValue!9827 (value!151286 List!30833)) (DedentValue!4913 (value!151287 List!30833)) (NewLineValue!4913 (value!151288 List!30833)) (IntegerValue!14739 (value!151289 (_ BitVec 32)) (text!34838 List!30833)) (IntegerValue!14740 (value!151290 Int) (text!34839 List!30833)) (Times!4913) (Or!4913) (Equal!4913) (Minus!4913) (Broken!24569 (value!151291 List!30833)) (And!4913) (Div!4913) (LessEqual!4913) (Mod!4913) (Concat!12748) (Not!4913) (Plus!4913) (SpaceValue!4913 (value!151292 List!30833)) (IntegerValue!14741 (value!151293 Int) (text!34840 List!30833)) (StringLiteralValue!14740 (text!34841 List!30833)) (FloatLiteralValue!9827 (text!34842 List!30833)) (BytesLiteralValue!4913 (value!151294 List!30833)) (CommentValue!9827 (value!151295 List!30833)) (StringLiteralValue!14741 (value!151296 List!30833)) (ErrorTokenValue!4913 (msg!4974 List!30833)) )
))
(declare-datatypes ((C!15828 0))(
  ( (C!15829 (val!9848 Int)) )
))
(declare-datatypes ((List!30834 0))(
  ( (Nil!30734) (Cons!30734 (h!36154 C!15828) (t!223345 List!30834)) )
))
(declare-datatypes ((IArray!19229 0))(
  ( (IArray!19230 (innerList!9672 List!30834)) )
))
(declare-datatypes ((Conc!9612 0))(
  ( (Node!9612 (left!23777 Conc!9612) (right!24107 Conc!9612) (csize!19454 Int) (cheight!9823 Int)) (Leaf!14698 (xs!12642 IArray!19229) (csize!19455 Int)) (Empty!9612) )
))
(declare-datatypes ((BalanceConc!18838 0))(
  ( (BalanceConc!18839 (c!430638 Conc!9612)) )
))
(declare-datatypes ((String!34449 0))(
  ( (String!34450 (value!151297 String)) )
))
(declare-datatypes ((Regex!7835 0))(
  ( (ElementMatch!7835 (c!430639 C!15828)) (Concat!12749 (regOne!16182 Regex!7835) (regTwo!16182 Regex!7835)) (EmptyExpr!7835) (Star!7835 (reg!8164 Regex!7835)) (EmptyLang!7835) (Union!7835 (regOne!16183 Regex!7835) (regTwo!16183 Regex!7835)) )
))
(declare-datatypes ((TokenValueInjection!9266 0))(
  ( (TokenValueInjection!9267 (toValue!6633 Int) (toChars!6492 Int)) )
))
(declare-datatypes ((Rule!9182 0))(
  ( (Rule!9183 (regex!4691 Regex!7835) (tag!5193 String!34449) (isSeparator!4691 Bool) (transformation!4691 TokenValueInjection!9266)) )
))
(declare-datatypes ((List!30835 0))(
  ( (Nil!30735) (Cons!30735 (h!36155 Rule!9182) (t!223346 List!30835)) )
))
(declare-fun rules!1712 () List!30835)

(get-info :version)

(assert (= (and b!2672039 ((_ is Cons!30735) rules!1712)) b!2672059))

(declare-fun order!16897 () Int)

(declare-fun order!16895 () Int)

(declare-fun dynLambda!13318 (Int Int) Int)

(declare-fun dynLambda!13319 (Int Int) Int)

(assert (=> b!2672061 (< (dynLambda!13318 order!16895 (toValue!6633 (transformation!4691 (h!36155 rules!1712)))) (dynLambda!13319 order!16897 lambda!99806))))

(declare-fun order!16899 () Int)

(declare-fun dynLambda!13320 (Int Int) Int)

(assert (=> b!2672061 (< (dynLambda!13320 order!16899 (toChars!6492 (transformation!4691 (h!36155 rules!1712)))) (dynLambda!13319 order!16897 lambda!99806))))

(assert (=> b!2672039 true))

(declare-fun tp!844897 () Bool)

(declare-datatypes ((Token!8852 0))(
  ( (Token!8853 (value!151298 TokenValue!4913) (rule!7097 Rule!9182) (size!23763 Int) (originalCharacters!5457 List!30834)) )
))
(declare-datatypes ((List!30836 0))(
  ( (Nil!30736) (Cons!30736 (h!36156 Token!8852) (t!223347 List!30836)) )
))
(declare-fun l!4335 () List!30836)

(declare-fun b!2672030 () Bool)

(declare-fun e!1684123 () Bool)

(declare-fun e!1684127 () Bool)

(declare-fun inv!21 (TokenValue!4913) Bool)

(assert (=> b!2672030 (= e!1684127 (and (inv!21 (value!151298 (h!36156 l!4335))) e!1684123 tp!844897))))

(declare-fun b!2672031 () Bool)

(declare-fun res!1123369 () Bool)

(declare-fun e!1684121 () Bool)

(assert (=> b!2672031 (=> (not res!1123369) (not e!1684121))))

(declare-datatypes ((LexerInterface!4288 0))(
  ( (LexerInterfaceExt!4285 (__x!19660 Int)) (Lexer!4286) )
))
(declare-fun thiss!14116 () LexerInterface!4288)

(declare-fun rulesProduceEachTokenIndividuallyList!1510 (LexerInterface!4288 List!30835 List!30836) Bool)

(assert (=> b!2672031 (= res!1123369 (rulesProduceEachTokenIndividuallyList!1510 thiss!14116 rules!1712 l!4335))))

(declare-fun b!2672033 () Bool)

(declare-fun res!1123370 () Bool)

(assert (=> b!2672033 (=> (not res!1123370) (not e!1684121))))

(declare-fun sepAndNonSepRulesDisjointChars!1264 (List!30835 List!30835) Bool)

(assert (=> b!2672033 (= res!1123370 (sepAndNonSepRulesDisjointChars!1264 rules!1712 rules!1712))))

(declare-fun e!1684118 () Bool)

(declare-fun b!2672034 () Bool)

(declare-fun tp!844895 () Bool)

(declare-fun inv!41742 (Token!8852) Bool)

(assert (=> b!2672034 (= e!1684118 (and (inv!41742 (h!36156 l!4335)) e!1684127 tp!844895))))

(declare-fun e!1684124 () Bool)

(declare-fun tp!844889 () Bool)

(declare-fun separatorToken!152 () Token!8852)

(declare-fun e!1684129 () Bool)

(declare-fun b!2672035 () Bool)

(declare-fun inv!41739 (String!34449) Bool)

(declare-fun inv!41743 (TokenValueInjection!9266) Bool)

(assert (=> b!2672035 (= e!1684124 (and tp!844889 (inv!41739 (tag!5193 (rule!7097 separatorToken!152))) (inv!41743 (transformation!4691 (rule!7097 separatorToken!152))) e!1684129))))

(declare-fun e!1684120 () Bool)

(declare-fun b!2672036 () Bool)

(declare-fun tp!844894 () Bool)

(assert (=> b!2672036 (= e!1684120 (and (inv!21 (value!151298 separatorToken!152)) e!1684124 tp!844894))))

(declare-fun e!1684130 () Bool)

(assert (=> b!2672037 (= e!1684130 (and tp!844898 tp!844888))))

(declare-fun b!2672038 () Bool)

(declare-fun res!1123376 () Bool)

(assert (=> b!2672038 (=> (not res!1123376) (not e!1684121))))

(declare-fun contains!5903 (List!30836 Token!8852) Bool)

(assert (=> b!2672038 (= res!1123376 (contains!5903 l!4335 (h!36156 l!4335)))))

(declare-fun e!1684119 () Bool)

(assert (=> b!2672039 (= e!1684121 e!1684119)))

(declare-fun res!1123377 () Bool)

(assert (=> b!2672039 (=> (not res!1123377) (not e!1684119))))

(declare-datatypes ((tuple2!30198 0))(
  ( (tuple2!30199 (_1!17641 Token!8852) (_2!17641 List!30834)) )
))
(declare-datatypes ((Option!6082 0))(
  ( (None!6081) (Some!6081 (v!32616 tuple2!30198)) )
))
(declare-fun lt!940948 () Option!6082)

(declare-fun lt!940951 () Bool)

(assert (=> b!2672039 (= res!1123377 (and (or lt!940951 (not (= (_1!17641 (v!32616 lt!940948)) (h!36156 l!4335)))) (or lt!940951 (= (_1!17641 (v!32616 lt!940948)) (h!36156 l!4335))) ((_ is None!6081) lt!940948)))))

(assert (=> b!2672039 (= lt!940951 (not ((_ is Some!6081) lt!940948)))))

(declare-fun maxPrefix!2328 (LexerInterface!4288 List!30835 List!30834) Option!6082)

(declare-fun ++!7497 (List!30834 List!30834) List!30834)

(declare-fun list!11603 (BalanceConc!18838) List!30834)

(declare-fun charsOf!2956 (Token!8852) BalanceConc!18838)

(declare-fun printWithSeparatorTokenWhenNeededList!684 (LexerInterface!4288 List!30835 List!30836 Token!8852) List!30834)

(assert (=> b!2672039 (= lt!940948 (maxPrefix!2328 thiss!14116 rules!1712 (++!7497 (list!11603 (charsOf!2956 (h!36156 l!4335))) (printWithSeparatorTokenWhenNeededList!684 thiss!14116 rules!1712 (t!223347 l!4335) separatorToken!152))))))

(declare-datatypes ((Unit!44953 0))(
  ( (Unit!44954) )
))
(declare-fun lt!940952 () Unit!44953)

(declare-fun forallContained!1033 (List!30836 Int Token!8852) Unit!44953)

(assert (=> b!2672039 (= lt!940952 (forallContained!1033 l!4335 lambda!99806 (h!36156 l!4335)))))

(declare-fun b!2672040 () Bool)

(assert (=> b!2672040 (= e!1684119 (not true))))

(declare-fun lt!940949 () List!30834)

(declare-fun printList!1182 (LexerInterface!4288 List!30836) List!30834)

(assert (=> b!2672040 (= lt!940949 (printList!1182 thiss!14116 (Cons!30736 (h!36156 l!4335) Nil!30736)))))

(declare-fun lt!940953 () List!30834)

(declare-fun lt!940950 () BalanceConc!18838)

(assert (=> b!2672040 (= lt!940953 (list!11603 lt!940950))))

(declare-datatypes ((IArray!19231 0))(
  ( (IArray!19232 (innerList!9673 List!30836)) )
))
(declare-datatypes ((Conc!9613 0))(
  ( (Node!9613 (left!23778 Conc!9613) (right!24108 Conc!9613) (csize!19456 Int) (cheight!9824 Int)) (Leaf!14699 (xs!12643 IArray!19231) (csize!19457 Int)) (Empty!9613) )
))
(declare-datatypes ((BalanceConc!18840 0))(
  ( (BalanceConc!18841 (c!430640 Conc!9613)) )
))
(declare-fun lt!940954 () BalanceConc!18840)

(declare-fun printTailRec!1143 (LexerInterface!4288 BalanceConc!18840 Int BalanceConc!18838) BalanceConc!18838)

(assert (=> b!2672040 (= lt!940950 (printTailRec!1143 thiss!14116 lt!940954 0 (BalanceConc!18839 Empty!9612)))))

(declare-fun print!1667 (LexerInterface!4288 BalanceConc!18840) BalanceConc!18838)

(assert (=> b!2672040 (= lt!940950 (print!1667 thiss!14116 lt!940954))))

(declare-fun singletonSeq!2088 (Token!8852) BalanceConc!18840)

(assert (=> b!2672040 (= lt!940954 (singletonSeq!2088 (h!36156 l!4335)))))

(declare-fun b!2672041 () Bool)

(declare-fun tp!844896 () Bool)

(assert (=> b!2672041 (= e!1684123 (and tp!844896 (inv!41739 (tag!5193 (rule!7097 (h!36156 l!4335)))) (inv!41743 (transformation!4691 (rule!7097 (h!36156 l!4335)))) e!1684130))))

(declare-fun b!2672042 () Bool)

(declare-fun res!1123367 () Bool)

(assert (=> b!2672042 (=> (not res!1123367) (not e!1684121))))

(assert (=> b!2672042 (= res!1123367 (isSeparator!4691 (rule!7097 separatorToken!152)))))

(declare-fun e!1684131 () Bool)

(assert (=> b!2672043 (= e!1684131 (and tp!844891 tp!844899))))

(declare-fun b!2672044 () Bool)

(declare-fun res!1123371 () Bool)

(assert (=> b!2672044 (=> (not res!1123371) (not e!1684121))))

(assert (=> b!2672044 (= res!1123371 ((_ is Cons!30736) l!4335))))

(declare-fun res!1123374 () Bool)

(assert (=> start!259906 (=> (not res!1123374) (not e!1684121))))

(assert (=> start!259906 (= res!1123374 ((_ is Lexer!4286) thiss!14116))))

(assert (=> start!259906 e!1684121))

(assert (=> start!259906 true))

(declare-fun e!1684133 () Bool)

(assert (=> start!259906 e!1684133))

(assert (=> start!259906 e!1684118))

(assert (=> start!259906 (and (inv!41742 separatorToken!152) e!1684120)))

(declare-fun e!1684132 () Bool)

(declare-fun b!2672032 () Bool)

(declare-fun tp!844892 () Bool)

(assert (=> b!2672032 (= e!1684132 (and tp!844892 (inv!41739 (tag!5193 (h!36155 rules!1712))) (inv!41743 (transformation!4691 (h!36155 rules!1712))) e!1684131))))

(declare-fun b!2672045 () Bool)

(declare-fun res!1123373 () Bool)

(assert (=> b!2672045 (=> (not res!1123373) (not e!1684121))))

(declare-fun rulesProduceIndividualToken!2000 (LexerInterface!4288 List!30835 Token!8852) Bool)

(assert (=> b!2672045 (= res!1123373 (rulesProduceIndividualToken!2000 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun b!2672046 () Bool)

(declare-fun res!1123368 () Bool)

(assert (=> b!2672046 (=> (not res!1123368) (not e!1684121))))

(declare-fun isEmpty!17577 (List!30835) Bool)

(assert (=> b!2672046 (= res!1123368 (not (isEmpty!17577 rules!1712)))))

(declare-fun b!2672047 () Bool)

(declare-fun tp!844900 () Bool)

(assert (=> b!2672047 (= e!1684133 (and e!1684132 tp!844900))))

(assert (=> b!2672048 (= e!1684129 (and tp!844893 tp!844890))))

(declare-fun b!2672049 () Bool)

(declare-fun res!1123372 () Bool)

(assert (=> b!2672049 (=> (not res!1123372) (not e!1684121))))

(declare-fun rulesInvariant!3788 (LexerInterface!4288 List!30835) Bool)

(assert (=> b!2672049 (= res!1123372 (rulesInvariant!3788 thiss!14116 rules!1712))))

(declare-fun res!1123375 () Bool)

(assert (=> b!2672050 (=> (not res!1123375) (not e!1684121))))

(declare-fun forall!6506 (List!30836 Int) Bool)

(assert (=> b!2672050 (= res!1123375 (forall!6506 l!4335 lambda!99805))))

(assert (= (and start!259906 res!1123374) b!2672046))

(assert (= (and b!2672046 res!1123368) b!2672049))

(assert (= (and b!2672049 res!1123372) b!2672031))

(assert (= (and b!2672031 res!1123369) b!2672045))

(assert (= (and b!2672045 res!1123373) b!2672042))

(assert (= (and b!2672042 res!1123367) b!2672050))

(assert (= (and b!2672050 res!1123375) b!2672033))

(assert (= (and b!2672033 res!1123370) b!2672044))

(assert (= (and b!2672044 res!1123371) b!2672038))

(assert (= (and b!2672038 res!1123376) b!2672039))

(assert (= (and b!2672039 res!1123377) b!2672040))

(assert (= b!2672032 b!2672043))

(assert (= b!2672047 b!2672032))

(assert (= (and start!259906 ((_ is Cons!30735) rules!1712)) b!2672047))

(assert (= b!2672041 b!2672037))

(assert (= b!2672030 b!2672041))

(assert (= b!2672034 b!2672030))

(assert (= (and start!259906 ((_ is Cons!30736) l!4335)) b!2672034))

(assert (= b!2672035 b!2672048))

(assert (= b!2672036 b!2672035))

(assert (= start!259906 b!2672036))

(declare-fun m!3038179 () Bool)

(assert (=> b!2672040 m!3038179))

(declare-fun m!3038181 () Bool)

(assert (=> b!2672040 m!3038181))

(declare-fun m!3038183 () Bool)

(assert (=> b!2672040 m!3038183))

(declare-fun m!3038185 () Bool)

(assert (=> b!2672040 m!3038185))

(declare-fun m!3038187 () Bool)

(assert (=> b!2672040 m!3038187))

(declare-fun m!3038189 () Bool)

(assert (=> b!2672039 m!3038189))

(declare-fun m!3038191 () Bool)

(assert (=> b!2672039 m!3038191))

(declare-fun m!3038193 () Bool)

(assert (=> b!2672039 m!3038193))

(assert (=> b!2672039 m!3038193))

(declare-fun m!3038195 () Bool)

(assert (=> b!2672039 m!3038195))

(declare-fun m!3038197 () Bool)

(assert (=> b!2672039 m!3038197))

(assert (=> b!2672039 m!3038191))

(assert (=> b!2672039 m!3038195))

(assert (=> b!2672039 m!3038197))

(declare-fun m!3038199 () Bool)

(assert (=> b!2672039 m!3038199))

(declare-fun m!3038201 () Bool)

(assert (=> b!2672050 m!3038201))

(declare-fun m!3038203 () Bool)

(assert (=> b!2672049 m!3038203))

(declare-fun m!3038205 () Bool)

(assert (=> b!2672036 m!3038205))

(declare-fun m!3038207 () Bool)

(assert (=> b!2672041 m!3038207))

(declare-fun m!3038209 () Bool)

(assert (=> b!2672041 m!3038209))

(declare-fun m!3038211 () Bool)

(assert (=> b!2672038 m!3038211))

(declare-fun m!3038213 () Bool)

(assert (=> b!2672032 m!3038213))

(declare-fun m!3038215 () Bool)

(assert (=> b!2672032 m!3038215))

(declare-fun m!3038217 () Bool)

(assert (=> b!2672034 m!3038217))

(declare-fun m!3038219 () Bool)

(assert (=> b!2672033 m!3038219))

(declare-fun m!3038221 () Bool)

(assert (=> b!2672031 m!3038221))

(declare-fun m!3038223 () Bool)

(assert (=> b!2672045 m!3038223))

(declare-fun m!3038225 () Bool)

(assert (=> start!259906 m!3038225))

(declare-fun m!3038227 () Bool)

(assert (=> b!2672046 m!3038227))

(declare-fun m!3038229 () Bool)

(assert (=> b!2672035 m!3038229))

(declare-fun m!3038231 () Bool)

(assert (=> b!2672035 m!3038231))

(declare-fun m!3038233 () Bool)

(assert (=> b!2672030 m!3038233))

(check-sat (not b!2672034) (not b!2672033) (not b!2672032) (not b!2672050) (not b_next!75893) b_and!197313 b_and!197319 (not b!2672036) (not b!2672041) (not start!259906) (not b!2672031) (not b_next!75889) (not b!2672039) (not b!2672030) (not b!2672035) b_and!197315 (not b!2672038) (not b_next!75897) (not b_next!75891) (not b_next!75895) b_and!197321 b_and!197317 (not b!2672047) (not b!2672040) (not b!2672045) (not b_next!75899) (not b!2672046) (not b!2672059) b_and!197323 (not b!2672049))
(check-sat (not b_next!75893) (not b_next!75899) b_and!197313 b_and!197319 (not b_next!75889) b_and!197323 (not b_next!75897) b_and!197315 (not b_next!75891) (not b_next!75895) b_and!197321 b_and!197317)
