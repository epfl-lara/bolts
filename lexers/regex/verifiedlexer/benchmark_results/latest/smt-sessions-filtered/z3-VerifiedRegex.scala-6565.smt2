; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347434 () Bool)

(assert start!347434)

(declare-fun b!3691598 () Bool)

(declare-fun b_free!97973 () Bool)

(declare-fun b_next!98677 () Bool)

(assert (=> b!3691598 (= b_free!97973 (not b_next!98677))))

(declare-fun tp!1121669 () Bool)

(declare-fun b_and!275739 () Bool)

(assert (=> b!3691598 (= tp!1121669 b_and!275739)))

(declare-fun b_free!97975 () Bool)

(declare-fun b_next!98679 () Bool)

(assert (=> b!3691598 (= b_free!97975 (not b_next!98679))))

(declare-fun tp!1121667 () Bool)

(declare-fun b_and!275741 () Bool)

(assert (=> b!3691598 (= tp!1121667 b_and!275741)))

(declare-fun b!3691597 () Bool)

(declare-fun res!1500742 () Bool)

(declare-fun e!2285935 () Bool)

(assert (=> b!3691597 (=> (not res!1500742) (not e!2285935))))

(declare-datatypes ((LexerInterface!5499 0))(
  ( (LexerInterfaceExt!5496 (__x!24497 Int)) (Lexer!5497) )
))
(declare-fun thiss!25322 () LexerInterface!5499)

(declare-datatypes ((List!39224 0))(
  ( (Nil!39100) (Cons!39100 (h!44520 (_ BitVec 16)) (t!301373 List!39224)) )
))
(declare-datatypes ((TokenValue!6140 0))(
  ( (FloatLiteralValue!12280 (text!43425 List!39224)) (TokenValueExt!6139 (__x!24498 Int)) (Broken!30700 (value!188866 List!39224)) (Object!6263) (End!6140) (Def!6140) (Underscore!6140) (Match!6140) (Else!6140) (Error!6140) (Case!6140) (If!6140) (Extends!6140) (Abstract!6140) (Class!6140) (Val!6140) (DelimiterValue!12280 (del!6200 List!39224)) (KeywordValue!6146 (value!188867 List!39224)) (CommentValue!12280 (value!188868 List!39224)) (WhitespaceValue!12280 (value!188869 List!39224)) (IndentationValue!6140 (value!188870 List!39224)) (String!44033) (Int32!6140) (Broken!30701 (value!188871 List!39224)) (Boolean!6141) (Unit!57131) (OperatorValue!6143 (op!6200 List!39224)) (IdentifierValue!12280 (value!188872 List!39224)) (IdentifierValue!12281 (value!188873 List!39224)) (WhitespaceValue!12281 (value!188874 List!39224)) (True!12280) (False!12280) (Broken!30702 (value!188875 List!39224)) (Broken!30703 (value!188876 List!39224)) (True!12281) (RightBrace!6140) (RightBracket!6140) (Colon!6140) (Null!6140) (Comma!6140) (LeftBracket!6140) (False!12281) (LeftBrace!6140) (ImaginaryLiteralValue!6140 (text!43426 List!39224)) (StringLiteralValue!18420 (value!188877 List!39224)) (EOFValue!6140 (value!188878 List!39224)) (IdentValue!6140 (value!188879 List!39224)) (DelimiterValue!12281 (value!188880 List!39224)) (DedentValue!6140 (value!188881 List!39224)) (NewLineValue!6140 (value!188882 List!39224)) (IntegerValue!18420 (value!188883 (_ BitVec 32)) (text!43427 List!39224)) (IntegerValue!18421 (value!188884 Int) (text!43428 List!39224)) (Times!6140) (Or!6140) (Equal!6140) (Minus!6140) (Broken!30704 (value!188885 List!39224)) (And!6140) (Div!6140) (LessEqual!6140) (Mod!6140) (Concat!16809) (Not!6140) (Plus!6140) (SpaceValue!6140 (value!188886 List!39224)) (IntegerValue!18422 (value!188887 Int) (text!43429 List!39224)) (StringLiteralValue!18421 (text!43430 List!39224)) (FloatLiteralValue!12281 (text!43431 List!39224)) (BytesLiteralValue!6140 (value!188888 List!39224)) (CommentValue!12281 (value!188889 List!39224)) (StringLiteralValue!18422 (value!188890 List!39224)) (ErrorTokenValue!6140 (msg!6201 List!39224)) )
))
(declare-datatypes ((C!21524 0))(
  ( (C!21525 (val!12810 Int)) )
))
(declare-datatypes ((Regex!10669 0))(
  ( (ElementMatch!10669 (c!638410 C!21524)) (Concat!16810 (regOne!21850 Regex!10669) (regTwo!21850 Regex!10669)) (EmptyExpr!10669) (Star!10669 (reg!10998 Regex!10669)) (EmptyLang!10669) (Union!10669 (regOne!21851 Regex!10669) (regTwo!21851 Regex!10669)) )
))
(declare-datatypes ((String!44034 0))(
  ( (String!44035 (value!188891 String)) )
))
(declare-datatypes ((List!39225 0))(
  ( (Nil!39101) (Cons!39101 (h!44521 C!21524) (t!301374 List!39225)) )
))
(declare-datatypes ((IArray!24019 0))(
  ( (IArray!24020 (innerList!12067 List!39225)) )
))
(declare-datatypes ((Conc!12007 0))(
  ( (Node!12007 (left!30492 Conc!12007) (right!30822 Conc!12007) (csize!24244 Int) (cheight!12218 Int)) (Leaf!18573 (xs!15209 IArray!24019) (csize!24245 Int)) (Empty!12007) )
))
(declare-datatypes ((BalanceConc!23628 0))(
  ( (BalanceConc!23629 (c!638411 Conc!12007)) )
))
(declare-datatypes ((TokenValueInjection!11708 0))(
  ( (TokenValueInjection!11709 (toValue!8230 Int) (toChars!8089 Int)) )
))
(declare-datatypes ((Rule!11620 0))(
  ( (Rule!11621 (regex!5910 Regex!10669) (tag!6732 String!44034) (isSeparator!5910 Bool) (transformation!5910 TokenValueInjection!11708)) )
))
(declare-datatypes ((List!39226 0))(
  ( (Nil!39102) (Cons!39102 (h!44522 Rule!11620) (t!301375 List!39226)) )
))
(declare-fun rules!3598 () List!39226)

(declare-fun rulesInvariant!4896 (LexerInterface!5499 List!39226) Bool)

(assert (=> b!3691597 (= res!1500742 (rulesInvariant!4896 thiss!25322 rules!3598))))

(declare-fun e!2285934 () Bool)

(assert (=> b!3691598 (= e!2285934 (and tp!1121669 tp!1121667))))

(declare-fun e!2285933 () Bool)

(declare-fun tp!1121670 () Bool)

(declare-fun b!3691599 () Bool)

(declare-fun inv!52564 (String!44034) Bool)

(declare-fun inv!52566 (TokenValueInjection!11708) Bool)

(assert (=> b!3691599 (= e!2285933 (and tp!1121670 (inv!52564 (tag!6732 (h!44522 rules!3598))) (inv!52566 (transformation!5910 (h!44522 rules!3598))) e!2285934))))

(declare-fun b!3691600 () Bool)

(declare-fun e!2285932 () Bool)

(declare-fun tp!1121668 () Bool)

(assert (=> b!3691600 (= e!2285932 (and e!2285933 tp!1121668))))

(declare-fun res!1500743 () Bool)

(assert (=> start!347434 (=> (not res!1500743) (not e!2285935))))

(get-info :version)

(assert (=> start!347434 (= res!1500743 ((_ is Lexer!5497) thiss!25322))))

(assert (=> start!347434 e!2285935))

(assert (=> start!347434 true))

(assert (=> start!347434 e!2285932))

(declare-fun b!3691601 () Bool)

(declare-fun res!1500741 () Bool)

(assert (=> b!3691601 (=> (not res!1500741) (not e!2285935))))

(declare-fun isEmpty!23312 (List!39226) Bool)

(assert (=> b!3691601 (= res!1500741 (not (isEmpty!23312 rules!3598)))))

(declare-fun b!3691602 () Bool)

(declare-fun rulesValidInductive!2120 (LexerInterface!5499 List!39226) Bool)

(assert (=> b!3691602 (= e!2285935 (not (rulesValidInductive!2120 thiss!25322 rules!3598)))))

(assert (= (and start!347434 res!1500743) b!3691597))

(assert (= (and b!3691597 res!1500742) b!3691601))

(assert (= (and b!3691601 res!1500741) b!3691602))

(assert (= b!3691599 b!3691598))

(assert (= b!3691600 b!3691599))

(assert (= (and start!347434 ((_ is Cons!39102) rules!3598)) b!3691600))

(declare-fun m!4204255 () Bool)

(assert (=> b!3691597 m!4204255))

(declare-fun m!4204257 () Bool)

(assert (=> b!3691599 m!4204257))

(declare-fun m!4204259 () Bool)

(assert (=> b!3691599 m!4204259))

(declare-fun m!4204261 () Bool)

(assert (=> b!3691601 m!4204261))

(declare-fun m!4204263 () Bool)

(assert (=> b!3691602 m!4204263))

(check-sat (not b!3691601) b_and!275741 (not b!3691602) (not b!3691599) (not b_next!98679) (not b!3691597) (not b!3691600) b_and!275739 (not b_next!98677))
(check-sat b_and!275739 b_and!275741 (not b_next!98677) (not b_next!98679))
(get-model)

(declare-fun d!1083368 () Bool)

(declare-fun res!1500746 () Bool)

(declare-fun e!2285939 () Bool)

(assert (=> d!1083368 (=> (not res!1500746) (not e!2285939))))

(declare-fun rulesValid!2283 (LexerInterface!5499 List!39226) Bool)

(assert (=> d!1083368 (= res!1500746 (rulesValid!2283 thiss!25322 rules!3598))))

(assert (=> d!1083368 (= (rulesInvariant!4896 thiss!25322 rules!3598) e!2285939)))

(declare-fun b!3691605 () Bool)

(declare-datatypes ((List!39228 0))(
  ( (Nil!39104) (Cons!39104 (h!44524 String!44034) (t!301377 List!39228)) )
))
(declare-fun noDuplicateTag!2279 (LexerInterface!5499 List!39226 List!39228) Bool)

(assert (=> b!3691605 (= e!2285939 (noDuplicateTag!2279 thiss!25322 rules!3598 Nil!39104))))

(assert (= (and d!1083368 res!1500746) b!3691605))

(declare-fun m!4204265 () Bool)

(assert (=> d!1083368 m!4204265))

(declare-fun m!4204267 () Bool)

(assert (=> b!3691605 m!4204267))

(assert (=> b!3691597 d!1083368))

(declare-fun d!1083372 () Bool)

(assert (=> d!1083372 (= (inv!52564 (tag!6732 (h!44522 rules!3598))) (= (mod (str.len (value!188891 (tag!6732 (h!44522 rules!3598)))) 2) 0))))

(assert (=> b!3691599 d!1083372))

(declare-fun d!1083374 () Bool)

(declare-fun res!1500753 () Bool)

(declare-fun e!2285946 () Bool)

(assert (=> d!1083374 (=> (not res!1500753) (not e!2285946))))

(declare-fun semiInverseModEq!2526 (Int Int) Bool)

(assert (=> d!1083374 (= res!1500753 (semiInverseModEq!2526 (toChars!8089 (transformation!5910 (h!44522 rules!3598))) (toValue!8230 (transformation!5910 (h!44522 rules!3598)))))))

(assert (=> d!1083374 (= (inv!52566 (transformation!5910 (h!44522 rules!3598))) e!2285946)))

(declare-fun b!3691612 () Bool)

(declare-fun equivClasses!2425 (Int Int) Bool)

(assert (=> b!3691612 (= e!2285946 (equivClasses!2425 (toChars!8089 (transformation!5910 (h!44522 rules!3598))) (toValue!8230 (transformation!5910 (h!44522 rules!3598)))))))

(assert (= (and d!1083374 res!1500753) b!3691612))

(declare-fun m!4204269 () Bool)

(assert (=> d!1083374 m!4204269))

(declare-fun m!4204271 () Bool)

(assert (=> b!3691612 m!4204271))

(assert (=> b!3691599 d!1083374))

(declare-fun d!1083376 () Bool)

(assert (=> d!1083376 true))

(declare-fun lt!1292572 () Bool)

(declare-fun lambda!124947 () Int)

(declare-fun forall!8176 (List!39226 Int) Bool)

(assert (=> d!1083376 (= lt!1292572 (forall!8176 rules!3598 lambda!124947))))

(declare-fun e!2285975 () Bool)

(assert (=> d!1083376 (= lt!1292572 e!2285975)))

(declare-fun res!1500767 () Bool)

(assert (=> d!1083376 (=> res!1500767 e!2285975)))

(assert (=> d!1083376 (= res!1500767 (not ((_ is Cons!39102) rules!3598)))))

(assert (=> d!1083376 (= (rulesValidInductive!2120 thiss!25322 rules!3598) lt!1292572)))

(declare-fun b!3691652 () Bool)

(declare-fun e!2285974 () Bool)

(assert (=> b!3691652 (= e!2285975 e!2285974)))

(declare-fun res!1500766 () Bool)

(assert (=> b!3691652 (=> (not res!1500766) (not e!2285974))))

(declare-fun ruleValid!2140 (LexerInterface!5499 Rule!11620) Bool)

(assert (=> b!3691652 (= res!1500766 (ruleValid!2140 thiss!25322 (h!44522 rules!3598)))))

(declare-fun b!3691653 () Bool)

(assert (=> b!3691653 (= e!2285974 (rulesValidInductive!2120 thiss!25322 (t!301375 rules!3598)))))

(assert (= (and d!1083376 (not res!1500767)) b!3691652))

(assert (= (and b!3691652 res!1500766) b!3691653))

(declare-fun m!4204291 () Bool)

(assert (=> d!1083376 m!4204291))

(declare-fun m!4204293 () Bool)

(assert (=> b!3691652 m!4204293))

(declare-fun m!4204295 () Bool)

(assert (=> b!3691653 m!4204295))

(assert (=> b!3691602 d!1083376))

(declare-fun d!1083386 () Bool)

(assert (=> d!1083386 (= (isEmpty!23312 rules!3598) ((_ is Nil!39102) rules!3598))))

(assert (=> b!3691601 d!1083386))

(declare-fun b!3691667 () Bool)

(declare-fun e!2285978 () Bool)

(declare-fun tp!1121712 () Bool)

(declare-fun tp!1121710 () Bool)

(assert (=> b!3691667 (= e!2285978 (and tp!1121712 tp!1121710))))

(assert (=> b!3691599 (= tp!1121670 e!2285978)))

(declare-fun b!3691666 () Bool)

(declare-fun tp_is_empty!18417 () Bool)

(assert (=> b!3691666 (= e!2285978 tp_is_empty!18417)))

(declare-fun b!3691668 () Bool)

(declare-fun tp!1121709 () Bool)

(assert (=> b!3691668 (= e!2285978 tp!1121709)))

(declare-fun b!3691669 () Bool)

(declare-fun tp!1121711 () Bool)

(declare-fun tp!1121708 () Bool)

(assert (=> b!3691669 (= e!2285978 (and tp!1121711 tp!1121708))))

(assert (= (and b!3691599 ((_ is ElementMatch!10669) (regex!5910 (h!44522 rules!3598)))) b!3691666))

(assert (= (and b!3691599 ((_ is Concat!16810) (regex!5910 (h!44522 rules!3598)))) b!3691667))

(assert (= (and b!3691599 ((_ is Star!10669) (regex!5910 (h!44522 rules!3598)))) b!3691668))

(assert (= (and b!3691599 ((_ is Union!10669) (regex!5910 (h!44522 rules!3598)))) b!3691669))

(declare-fun b!3691680 () Bool)

(declare-fun b_free!97981 () Bool)

(declare-fun b_next!98685 () Bool)

(assert (=> b!3691680 (= b_free!97981 (not b_next!98685))))

(declare-fun tp!1121722 () Bool)

(declare-fun b_and!275747 () Bool)

(assert (=> b!3691680 (= tp!1121722 b_and!275747)))

(declare-fun b_free!97983 () Bool)

(declare-fun b_next!98687 () Bool)

(assert (=> b!3691680 (= b_free!97983 (not b_next!98687))))

(declare-fun tp!1121724 () Bool)

(declare-fun b_and!275749 () Bool)

(assert (=> b!3691680 (= tp!1121724 b_and!275749)))

(declare-fun e!2285990 () Bool)

(assert (=> b!3691680 (= e!2285990 (and tp!1121722 tp!1121724))))

(declare-fun b!3691679 () Bool)

(declare-fun e!2285987 () Bool)

(declare-fun tp!1121723 () Bool)

(assert (=> b!3691679 (= e!2285987 (and tp!1121723 (inv!52564 (tag!6732 (h!44522 (t!301375 rules!3598)))) (inv!52566 (transformation!5910 (h!44522 (t!301375 rules!3598)))) e!2285990))))

(declare-fun b!3691678 () Bool)

(declare-fun e!2285989 () Bool)

(declare-fun tp!1121721 () Bool)

(assert (=> b!3691678 (= e!2285989 (and e!2285987 tp!1121721))))

(assert (=> b!3691600 (= tp!1121668 e!2285989)))

(assert (= b!3691679 b!3691680))

(assert (= b!3691678 b!3691679))

(assert (= (and b!3691600 ((_ is Cons!39102) (t!301375 rules!3598))) b!3691678))

(declare-fun m!4204297 () Bool)

(assert (=> b!3691679 m!4204297))

(declare-fun m!4204299 () Bool)

(assert (=> b!3691679 m!4204299))

(check-sat b_and!275747 (not b!3691667) (not b!3691652) (not d!1083368) b_and!275749 b_and!275741 (not b!3691612) (not b_next!98685) (not b_next!98679) (not b!3691668) tp_is_empty!18417 b_and!275739 (not d!1083376) (not b!3691678) (not b!3691679) (not b!3691653) (not b!3691605) (not b_next!98677) (not b_next!98687) (not b!3691669) (not d!1083374))
(check-sat b_and!275747 b_and!275749 b_and!275741 (not b_next!98685) (not b_next!98679) b_and!275739 (not b_next!98677) (not b_next!98687))
(get-model)

(declare-fun d!1083388 () Bool)

(declare-fun res!1500774 () Bool)

(declare-fun e!2285995 () Bool)

(assert (=> d!1083388 (=> res!1500774 e!2285995)))

(assert (=> d!1083388 (= res!1500774 ((_ is Nil!39102) rules!3598))))

(assert (=> d!1083388 (= (noDuplicateTag!2279 thiss!25322 rules!3598 Nil!39104) e!2285995)))

(declare-fun b!3691685 () Bool)

(declare-fun e!2285996 () Bool)

(assert (=> b!3691685 (= e!2285995 e!2285996)))

(declare-fun res!1500775 () Bool)

(assert (=> b!3691685 (=> (not res!1500775) (not e!2285996))))

(declare-fun contains!7806 (List!39228 String!44034) Bool)

(assert (=> b!3691685 (= res!1500775 (not (contains!7806 Nil!39104 (tag!6732 (h!44522 rules!3598)))))))

(declare-fun b!3691686 () Bool)

(assert (=> b!3691686 (= e!2285996 (noDuplicateTag!2279 thiss!25322 (t!301375 rules!3598) (Cons!39104 (tag!6732 (h!44522 rules!3598)) Nil!39104)))))

(assert (= (and d!1083388 (not res!1500774)) b!3691685))

(assert (= (and b!3691685 res!1500775) b!3691686))

(declare-fun m!4204301 () Bool)

(assert (=> b!3691685 m!4204301))

(declare-fun m!4204303 () Bool)

(assert (=> b!3691686 m!4204303))

(assert (=> b!3691605 d!1083388))

(declare-fun d!1083390 () Bool)

(declare-fun res!1500780 () Bool)

(declare-fun e!2285999 () Bool)

(assert (=> d!1083390 (=> (not res!1500780) (not e!2285999))))

(declare-fun validRegex!4886 (Regex!10669) Bool)

(assert (=> d!1083390 (= res!1500780 (validRegex!4886 (regex!5910 (h!44522 rules!3598))))))

(assert (=> d!1083390 (= (ruleValid!2140 thiss!25322 (h!44522 rules!3598)) e!2285999)))

(declare-fun b!3691691 () Bool)

(declare-fun res!1500781 () Bool)

(assert (=> b!3691691 (=> (not res!1500781) (not e!2285999))))

(declare-fun nullable!3724 (Regex!10669) Bool)

(assert (=> b!3691691 (= res!1500781 (not (nullable!3724 (regex!5910 (h!44522 rules!3598)))))))

(declare-fun b!3691692 () Bool)

(assert (=> b!3691692 (= e!2285999 (not (= (tag!6732 (h!44522 rules!3598)) (String!44035 ""))))))

(assert (= (and d!1083390 res!1500780) b!3691691))

(assert (= (and b!3691691 res!1500781) b!3691692))

(declare-fun m!4204305 () Bool)

(assert (=> d!1083390 m!4204305))

(declare-fun m!4204307 () Bool)

(assert (=> b!3691691 m!4204307))

(assert (=> b!3691652 d!1083390))

(declare-fun d!1083392 () Bool)

(assert (=> d!1083392 true))

(declare-fun order!21635 () Int)

(declare-fun order!21637 () Int)

(declare-fun lambda!124950 () Int)

(declare-fun dynLambda!17119 (Int Int) Int)

(declare-fun dynLambda!17120 (Int Int) Int)

(assert (=> d!1083392 (< (dynLambda!17119 order!21635 (toValue!8230 (transformation!5910 (h!44522 rules!3598)))) (dynLambda!17120 order!21637 lambda!124950))))

(declare-fun Forall2!981 (Int) Bool)

(assert (=> d!1083392 (= (equivClasses!2425 (toChars!8089 (transformation!5910 (h!44522 rules!3598))) (toValue!8230 (transformation!5910 (h!44522 rules!3598)))) (Forall2!981 lambda!124950))))

(declare-fun bs!574116 () Bool)

(assert (= bs!574116 d!1083392))

(declare-fun m!4204309 () Bool)

(assert (=> bs!574116 m!4204309))

(assert (=> b!3691612 d!1083392))

(declare-fun d!1083394 () Bool)

(assert (=> d!1083394 true))

(declare-fun lambda!124953 () Int)

(declare-fun order!21639 () Int)

(declare-fun order!21641 () Int)

(declare-fun dynLambda!17121 (Int Int) Int)

(declare-fun dynLambda!17122 (Int Int) Int)

(assert (=> d!1083394 (< (dynLambda!17121 order!21639 (toChars!8089 (transformation!5910 (h!44522 rules!3598)))) (dynLambda!17122 order!21641 lambda!124953))))

(assert (=> d!1083394 true))

(assert (=> d!1083394 (< (dynLambda!17119 order!21635 (toValue!8230 (transformation!5910 (h!44522 rules!3598)))) (dynLambda!17122 order!21641 lambda!124953))))

(declare-fun Forall!1383 (Int) Bool)

(assert (=> d!1083394 (= (semiInverseModEq!2526 (toChars!8089 (transformation!5910 (h!44522 rules!3598))) (toValue!8230 (transformation!5910 (h!44522 rules!3598)))) (Forall!1383 lambda!124953))))

(declare-fun bs!574117 () Bool)

(assert (= bs!574117 d!1083394))

(declare-fun m!4204311 () Bool)

(assert (=> bs!574117 m!4204311))

(assert (=> d!1083374 d!1083394))

(declare-fun d!1083396 () Bool)

(assert (=> d!1083396 (= (inv!52564 (tag!6732 (h!44522 (t!301375 rules!3598)))) (= (mod (str.len (value!188891 (tag!6732 (h!44522 (t!301375 rules!3598))))) 2) 0))))

(assert (=> b!3691679 d!1083396))

(declare-fun d!1083398 () Bool)

(declare-fun res!1500784 () Bool)

(declare-fun e!2286002 () Bool)

(assert (=> d!1083398 (=> (not res!1500784) (not e!2286002))))

(assert (=> d!1083398 (= res!1500784 (semiInverseModEq!2526 (toChars!8089 (transformation!5910 (h!44522 (t!301375 rules!3598)))) (toValue!8230 (transformation!5910 (h!44522 (t!301375 rules!3598))))))))

(assert (=> d!1083398 (= (inv!52566 (transformation!5910 (h!44522 (t!301375 rules!3598)))) e!2286002)))

(declare-fun b!3691701 () Bool)

(assert (=> b!3691701 (= e!2286002 (equivClasses!2425 (toChars!8089 (transformation!5910 (h!44522 (t!301375 rules!3598)))) (toValue!8230 (transformation!5910 (h!44522 (t!301375 rules!3598))))))))

(assert (= (and d!1083398 res!1500784) b!3691701))

(declare-fun m!4204313 () Bool)

(assert (=> d!1083398 m!4204313))

(declare-fun m!4204315 () Bool)

(assert (=> b!3691701 m!4204315))

(assert (=> b!3691679 d!1083398))

(declare-fun d!1083400 () Bool)

(declare-fun res!1500791 () Bool)

(declare-fun e!2286007 () Bool)

(assert (=> d!1083400 (=> res!1500791 e!2286007)))

(assert (=> d!1083400 (= res!1500791 ((_ is Nil!39102) rules!3598))))

(assert (=> d!1083400 (= (forall!8176 rules!3598 lambda!124947) e!2286007)))

(declare-fun b!3691706 () Bool)

(declare-fun e!2286008 () Bool)

(assert (=> b!3691706 (= e!2286007 e!2286008)))

(declare-fun res!1500792 () Bool)

(assert (=> b!3691706 (=> (not res!1500792) (not e!2286008))))

(declare-fun dynLambda!17123 (Int Rule!11620) Bool)

(assert (=> b!3691706 (= res!1500792 (dynLambda!17123 lambda!124947 (h!44522 rules!3598)))))

(declare-fun b!3691707 () Bool)

(assert (=> b!3691707 (= e!2286008 (forall!8176 (t!301375 rules!3598) lambda!124947))))

(assert (= (and d!1083400 (not res!1500791)) b!3691706))

(assert (= (and b!3691706 res!1500792) b!3691707))

(declare-fun b_lambda!109515 () Bool)

(assert (=> (not b_lambda!109515) (not b!3691706)))

(declare-fun m!4204317 () Bool)

(assert (=> b!3691706 m!4204317))

(declare-fun m!4204319 () Bool)

(assert (=> b!3691707 m!4204319))

(assert (=> d!1083376 d!1083400))

(declare-fun bs!574118 () Bool)

(declare-fun d!1083402 () Bool)

(assert (= bs!574118 (and d!1083402 d!1083376)))

(declare-fun lambda!124956 () Int)

(assert (=> bs!574118 (= lambda!124956 lambda!124947)))

(assert (=> d!1083402 true))

(declare-fun lt!1292575 () Bool)

(assert (=> d!1083402 (= lt!1292575 (rulesValidInductive!2120 thiss!25322 rules!3598))))

(assert (=> d!1083402 (= lt!1292575 (forall!8176 rules!3598 lambda!124956))))

(assert (=> d!1083402 (= (rulesValid!2283 thiss!25322 rules!3598) lt!1292575)))

(declare-fun bs!574119 () Bool)

(assert (= bs!574119 d!1083402))

(assert (=> bs!574119 m!4204263))

(declare-fun m!4204321 () Bool)

(assert (=> bs!574119 m!4204321))

(assert (=> d!1083368 d!1083402))

(declare-fun bs!574120 () Bool)

(declare-fun d!1083406 () Bool)

(assert (= bs!574120 (and d!1083406 d!1083376)))

(declare-fun lambda!124957 () Int)

(assert (=> bs!574120 (= lambda!124957 lambda!124947)))

(declare-fun bs!574121 () Bool)

(assert (= bs!574121 (and d!1083406 d!1083402)))

(assert (=> bs!574121 (= lambda!124957 lambda!124956)))

(assert (=> d!1083406 true))

(declare-fun lt!1292576 () Bool)

(assert (=> d!1083406 (= lt!1292576 (forall!8176 (t!301375 rules!3598) lambda!124957))))

(declare-fun e!2286010 () Bool)

(assert (=> d!1083406 (= lt!1292576 e!2286010)))

(declare-fun res!1500794 () Bool)

(assert (=> d!1083406 (=> res!1500794 e!2286010)))

(assert (=> d!1083406 (= res!1500794 (not ((_ is Cons!39102) (t!301375 rules!3598))))))

(assert (=> d!1083406 (= (rulesValidInductive!2120 thiss!25322 (t!301375 rules!3598)) lt!1292576)))

(declare-fun b!3691708 () Bool)

(declare-fun e!2286009 () Bool)

(assert (=> b!3691708 (= e!2286010 e!2286009)))

(declare-fun res!1500793 () Bool)

(assert (=> b!3691708 (=> (not res!1500793) (not e!2286009))))

(assert (=> b!3691708 (= res!1500793 (ruleValid!2140 thiss!25322 (h!44522 (t!301375 rules!3598))))))

(declare-fun b!3691709 () Bool)

(assert (=> b!3691709 (= e!2286009 (rulesValidInductive!2120 thiss!25322 (t!301375 (t!301375 rules!3598))))))

(assert (= (and d!1083406 (not res!1500794)) b!3691708))

(assert (= (and b!3691708 res!1500793) b!3691709))

(declare-fun m!4204323 () Bool)

(assert (=> d!1083406 m!4204323))

(declare-fun m!4204325 () Bool)

(assert (=> b!3691708 m!4204325))

(declare-fun m!4204327 () Bool)

(assert (=> b!3691709 m!4204327))

(assert (=> b!3691653 d!1083406))

(declare-fun b!3691711 () Bool)

(declare-fun e!2286011 () Bool)

(declare-fun tp!1121729 () Bool)

(declare-fun tp!1121727 () Bool)

(assert (=> b!3691711 (= e!2286011 (and tp!1121729 tp!1121727))))

(assert (=> b!3691667 (= tp!1121712 e!2286011)))

(declare-fun b!3691710 () Bool)

(assert (=> b!3691710 (= e!2286011 tp_is_empty!18417)))

(declare-fun b!3691712 () Bool)

(declare-fun tp!1121726 () Bool)

(assert (=> b!3691712 (= e!2286011 tp!1121726)))

(declare-fun b!3691713 () Bool)

(declare-fun tp!1121728 () Bool)

(declare-fun tp!1121725 () Bool)

(assert (=> b!3691713 (= e!2286011 (and tp!1121728 tp!1121725))))

(assert (= (and b!3691667 ((_ is ElementMatch!10669) (regOne!21850 (regex!5910 (h!44522 rules!3598))))) b!3691710))

(assert (= (and b!3691667 ((_ is Concat!16810) (regOne!21850 (regex!5910 (h!44522 rules!3598))))) b!3691711))

(assert (= (and b!3691667 ((_ is Star!10669) (regOne!21850 (regex!5910 (h!44522 rules!3598))))) b!3691712))

(assert (= (and b!3691667 ((_ is Union!10669) (regOne!21850 (regex!5910 (h!44522 rules!3598))))) b!3691713))

(declare-fun b!3691715 () Bool)

(declare-fun e!2286012 () Bool)

(declare-fun tp!1121734 () Bool)

(declare-fun tp!1121732 () Bool)

(assert (=> b!3691715 (= e!2286012 (and tp!1121734 tp!1121732))))

(assert (=> b!3691667 (= tp!1121710 e!2286012)))

(declare-fun b!3691714 () Bool)

(assert (=> b!3691714 (= e!2286012 tp_is_empty!18417)))

(declare-fun b!3691716 () Bool)

(declare-fun tp!1121731 () Bool)

(assert (=> b!3691716 (= e!2286012 tp!1121731)))

(declare-fun b!3691717 () Bool)

(declare-fun tp!1121733 () Bool)

(declare-fun tp!1121730 () Bool)

(assert (=> b!3691717 (= e!2286012 (and tp!1121733 tp!1121730))))

(assert (= (and b!3691667 ((_ is ElementMatch!10669) (regTwo!21850 (regex!5910 (h!44522 rules!3598))))) b!3691714))

(assert (= (and b!3691667 ((_ is Concat!16810) (regTwo!21850 (regex!5910 (h!44522 rules!3598))))) b!3691715))

(assert (= (and b!3691667 ((_ is Star!10669) (regTwo!21850 (regex!5910 (h!44522 rules!3598))))) b!3691716))

(assert (= (and b!3691667 ((_ is Union!10669) (regTwo!21850 (regex!5910 (h!44522 rules!3598))))) b!3691717))

(declare-fun b!3691719 () Bool)

(declare-fun e!2286013 () Bool)

(declare-fun tp!1121739 () Bool)

(declare-fun tp!1121737 () Bool)

(assert (=> b!3691719 (= e!2286013 (and tp!1121739 tp!1121737))))

(assert (=> b!3691668 (= tp!1121709 e!2286013)))

(declare-fun b!3691718 () Bool)

(assert (=> b!3691718 (= e!2286013 tp_is_empty!18417)))

(declare-fun b!3691720 () Bool)

(declare-fun tp!1121736 () Bool)

(assert (=> b!3691720 (= e!2286013 tp!1121736)))

(declare-fun b!3691721 () Bool)

(declare-fun tp!1121738 () Bool)

(declare-fun tp!1121735 () Bool)

(assert (=> b!3691721 (= e!2286013 (and tp!1121738 tp!1121735))))

(assert (= (and b!3691668 ((_ is ElementMatch!10669) (reg!10998 (regex!5910 (h!44522 rules!3598))))) b!3691718))

(assert (= (and b!3691668 ((_ is Concat!16810) (reg!10998 (regex!5910 (h!44522 rules!3598))))) b!3691719))

(assert (= (and b!3691668 ((_ is Star!10669) (reg!10998 (regex!5910 (h!44522 rules!3598))))) b!3691720))

(assert (= (and b!3691668 ((_ is Union!10669) (reg!10998 (regex!5910 (h!44522 rules!3598))))) b!3691721))

(declare-fun b!3691724 () Bool)

(declare-fun b_free!97985 () Bool)

(declare-fun b_next!98689 () Bool)

(assert (=> b!3691724 (= b_free!97985 (not b_next!98689))))

(declare-fun tp!1121741 () Bool)

(declare-fun b_and!275751 () Bool)

(assert (=> b!3691724 (= tp!1121741 b_and!275751)))

(declare-fun b_free!97987 () Bool)

(declare-fun b_next!98691 () Bool)

(assert (=> b!3691724 (= b_free!97987 (not b_next!98691))))

(declare-fun tp!1121743 () Bool)

(declare-fun b_and!275753 () Bool)

(assert (=> b!3691724 (= tp!1121743 b_and!275753)))

(declare-fun e!2286017 () Bool)

(assert (=> b!3691724 (= e!2286017 (and tp!1121741 tp!1121743))))

(declare-fun b!3691723 () Bool)

(declare-fun tp!1121742 () Bool)

(declare-fun e!2286014 () Bool)

(assert (=> b!3691723 (= e!2286014 (and tp!1121742 (inv!52564 (tag!6732 (h!44522 (t!301375 (t!301375 rules!3598))))) (inv!52566 (transformation!5910 (h!44522 (t!301375 (t!301375 rules!3598))))) e!2286017))))

(declare-fun b!3691722 () Bool)

(declare-fun e!2286016 () Bool)

(declare-fun tp!1121740 () Bool)

(assert (=> b!3691722 (= e!2286016 (and e!2286014 tp!1121740))))

(assert (=> b!3691678 (= tp!1121721 e!2286016)))

(assert (= b!3691723 b!3691724))

(assert (= b!3691722 b!3691723))

(assert (= (and b!3691678 ((_ is Cons!39102) (t!301375 (t!301375 rules!3598)))) b!3691722))

(declare-fun m!4204329 () Bool)

(assert (=> b!3691723 m!4204329))

(declare-fun m!4204331 () Bool)

(assert (=> b!3691723 m!4204331))

(declare-fun b!3691726 () Bool)

(declare-fun e!2286018 () Bool)

(declare-fun tp!1121748 () Bool)

(declare-fun tp!1121746 () Bool)

(assert (=> b!3691726 (= e!2286018 (and tp!1121748 tp!1121746))))

(assert (=> b!3691669 (= tp!1121711 e!2286018)))

(declare-fun b!3691725 () Bool)

(assert (=> b!3691725 (= e!2286018 tp_is_empty!18417)))

(declare-fun b!3691727 () Bool)

(declare-fun tp!1121745 () Bool)

(assert (=> b!3691727 (= e!2286018 tp!1121745)))

(declare-fun b!3691728 () Bool)

(declare-fun tp!1121747 () Bool)

(declare-fun tp!1121744 () Bool)

(assert (=> b!3691728 (= e!2286018 (and tp!1121747 tp!1121744))))

(assert (= (and b!3691669 ((_ is ElementMatch!10669) (regOne!21851 (regex!5910 (h!44522 rules!3598))))) b!3691725))

(assert (= (and b!3691669 ((_ is Concat!16810) (regOne!21851 (regex!5910 (h!44522 rules!3598))))) b!3691726))

(assert (= (and b!3691669 ((_ is Star!10669) (regOne!21851 (regex!5910 (h!44522 rules!3598))))) b!3691727))

(assert (= (and b!3691669 ((_ is Union!10669) (regOne!21851 (regex!5910 (h!44522 rules!3598))))) b!3691728))

(declare-fun b!3691730 () Bool)

(declare-fun e!2286019 () Bool)

(declare-fun tp!1121753 () Bool)

(declare-fun tp!1121751 () Bool)

(assert (=> b!3691730 (= e!2286019 (and tp!1121753 tp!1121751))))

(assert (=> b!3691669 (= tp!1121708 e!2286019)))

(declare-fun b!3691729 () Bool)

(assert (=> b!3691729 (= e!2286019 tp_is_empty!18417)))

(declare-fun b!3691731 () Bool)

(declare-fun tp!1121750 () Bool)

(assert (=> b!3691731 (= e!2286019 tp!1121750)))

(declare-fun b!3691732 () Bool)

(declare-fun tp!1121752 () Bool)

(declare-fun tp!1121749 () Bool)

(assert (=> b!3691732 (= e!2286019 (and tp!1121752 tp!1121749))))

(assert (= (and b!3691669 ((_ is ElementMatch!10669) (regTwo!21851 (regex!5910 (h!44522 rules!3598))))) b!3691729))

(assert (= (and b!3691669 ((_ is Concat!16810) (regTwo!21851 (regex!5910 (h!44522 rules!3598))))) b!3691730))

(assert (= (and b!3691669 ((_ is Star!10669) (regTwo!21851 (regex!5910 (h!44522 rules!3598))))) b!3691731))

(assert (= (and b!3691669 ((_ is Union!10669) (regTwo!21851 (regex!5910 (h!44522 rules!3598))))) b!3691732))

(declare-fun b!3691734 () Bool)

(declare-fun e!2286020 () Bool)

(declare-fun tp!1121758 () Bool)

(declare-fun tp!1121756 () Bool)

(assert (=> b!3691734 (= e!2286020 (and tp!1121758 tp!1121756))))

(assert (=> b!3691679 (= tp!1121723 e!2286020)))

(declare-fun b!3691733 () Bool)

(assert (=> b!3691733 (= e!2286020 tp_is_empty!18417)))

(declare-fun b!3691735 () Bool)

(declare-fun tp!1121755 () Bool)

(assert (=> b!3691735 (= e!2286020 tp!1121755)))

(declare-fun b!3691736 () Bool)

(declare-fun tp!1121757 () Bool)

(declare-fun tp!1121754 () Bool)

(assert (=> b!3691736 (= e!2286020 (and tp!1121757 tp!1121754))))

(assert (= (and b!3691679 ((_ is ElementMatch!10669) (regex!5910 (h!44522 (t!301375 rules!3598))))) b!3691733))

(assert (= (and b!3691679 ((_ is Concat!16810) (regex!5910 (h!44522 (t!301375 rules!3598))))) b!3691734))

(assert (= (and b!3691679 ((_ is Star!10669) (regex!5910 (h!44522 (t!301375 rules!3598))))) b!3691735))

(assert (= (and b!3691679 ((_ is Union!10669) (regex!5910 (h!44522 (t!301375 rules!3598))))) b!3691736))

(declare-fun b_lambda!109517 () Bool)

(assert (= b_lambda!109515 (or d!1083376 b_lambda!109517)))

(declare-fun bs!574122 () Bool)

(declare-fun d!1083408 () Bool)

(assert (= bs!574122 (and d!1083408 d!1083376)))

(assert (=> bs!574122 (= (dynLambda!17123 lambda!124947 (h!44522 rules!3598)) (ruleValid!2140 thiss!25322 (h!44522 rules!3598)))))

(assert (=> bs!574122 m!4204293))

(assert (=> b!3691706 d!1083408))

(check-sat (not d!1083406) (not b!3691721) (not b!3691712) (not b!3691720) b_and!275741 (not b!3691732) (not b_lambda!109517) (not b!3691711) (not b!3691691) (not d!1083390) b_and!275739 b_and!275747 (not b!3691735) (not b!3691730) (not d!1083402) (not b!3691726) (not b!3691727) b_and!275749 (not b!3691713) (not b!3691736) (not b!3691716) (not b!3691723) b_and!275753 (not b!3691707) (not b!3691728) (not b_next!98685) (not b!3691731) (not b_next!98679) (not b!3691701) b_and!275751 (not bs!574122) (not b!3691708) tp_is_empty!18417 (not b!3691734) (not b_next!98691) (not b!3691709) (not b!3691686) (not b_next!98689) (not b!3691719) (not d!1083392) (not b_next!98677) (not d!1083394) (not b_next!98687) (not b!3691715) (not d!1083398) (not b!3691685) (not b!3691722) (not b!3691717))
(check-sat b_and!275747 b_and!275749 b_and!275741 b_and!275753 (not b_next!98685) (not b_next!98679) b_and!275751 (not b_next!98691) (not b_next!98689) b_and!275739 (not b_next!98677) (not b_next!98687))
