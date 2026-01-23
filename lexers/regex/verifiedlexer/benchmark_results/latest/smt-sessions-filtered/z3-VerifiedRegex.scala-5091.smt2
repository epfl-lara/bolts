; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!260318 () Bool)

(assert start!260318)

(declare-fun b!2675154 () Bool)

(declare-fun b_free!75393 () Bool)

(declare-fun b_next!76097 () Bool)

(assert (=> b!2675154 (= b_free!75393 (not b_next!76097))))

(declare-fun tp!845944 () Bool)

(declare-fun b_and!197757 () Bool)

(assert (=> b!2675154 (= tp!845944 b_and!197757)))

(declare-fun b_free!75395 () Bool)

(declare-fun b_next!76099 () Bool)

(assert (=> b!2675154 (= b_free!75395 (not b_next!76099))))

(declare-fun tp!845953 () Bool)

(declare-fun b_and!197759 () Bool)

(assert (=> b!2675154 (= tp!845953 b_and!197759)))

(declare-fun b!2675156 () Bool)

(declare-fun b_free!75397 () Bool)

(declare-fun b_next!76101 () Bool)

(assert (=> b!2675156 (= b_free!75397 (not b_next!76101))))

(declare-fun tp!845956 () Bool)

(declare-fun b_and!197761 () Bool)

(assert (=> b!2675156 (= tp!845956 b_and!197761)))

(declare-fun b_free!75399 () Bool)

(declare-fun b_next!76103 () Bool)

(assert (=> b!2675156 (= b_free!75399 (not b_next!76103))))

(declare-fun tp!845952 () Bool)

(declare-fun b_and!197763 () Bool)

(assert (=> b!2675156 (= tp!845952 b_and!197763)))

(declare-fun b!2675149 () Bool)

(declare-fun b_free!75401 () Bool)

(declare-fun b_next!76105 () Bool)

(assert (=> b!2675149 (= b_free!75401 (not b_next!76105))))

(declare-fun tp!845950 () Bool)

(declare-fun b_and!197765 () Bool)

(assert (=> b!2675149 (= tp!845950 b_and!197765)))

(declare-fun b_free!75403 () Bool)

(declare-fun b_next!76107 () Bool)

(assert (=> b!2675149 (= b_free!75403 (not b_next!76107))))

(declare-fun tp!845945 () Bool)

(declare-fun b_and!197767 () Bool)

(assert (=> b!2675149 (= tp!845945 b_and!197767)))

(declare-fun bs!479744 () Bool)

(declare-fun b!2675160 () Bool)

(declare-fun b!2675165 () Bool)

(assert (= bs!479744 (and b!2675160 b!2675165)))

(declare-fun lambda!99938 () Int)

(declare-fun lambda!99937 () Int)

(assert (=> bs!479744 (not (= lambda!99938 lambda!99937))))

(declare-fun b!2675181 () Bool)

(declare-fun e!1686245 () Bool)

(assert (=> b!2675181 (= e!1686245 true)))

(declare-fun b!2675180 () Bool)

(declare-fun e!1686244 () Bool)

(assert (=> b!2675180 (= e!1686244 e!1686245)))

(declare-fun b!2675179 () Bool)

(declare-fun e!1686243 () Bool)

(assert (=> b!2675179 (= e!1686243 e!1686244)))

(assert (=> b!2675160 e!1686243))

(assert (= b!2675180 b!2675181))

(assert (= b!2675179 b!2675180))

(declare-datatypes ((List!30887 0))(
  ( (Nil!30787) (Cons!30787 (h!36207 (_ BitVec 16)) (t!223758 List!30887)) )
))
(declare-datatypes ((TokenValue!4925 0))(
  ( (FloatLiteralValue!9850 (text!34920 List!30887)) (TokenValueExt!4924 (__x!19683 Int)) (Broken!24625 (value!151614 List!30887)) (Object!5024) (End!4925) (Def!4925) (Underscore!4925) (Match!4925) (Else!4925) (Error!4925) (Case!4925) (If!4925) (Extends!4925) (Abstract!4925) (Class!4925) (Val!4925) (DelimiterValue!9850 (del!4985 List!30887)) (KeywordValue!4931 (value!151615 List!30887)) (CommentValue!9850 (value!151616 List!30887)) (WhitespaceValue!9850 (value!151617 List!30887)) (IndentationValue!4925 (value!151618 List!30887)) (String!34508) (Int32!4925) (Broken!24626 (value!151619 List!30887)) (Boolean!4926) (Unit!45000) (OperatorValue!4928 (op!4985 List!30887)) (IdentifierValue!9850 (value!151620 List!30887)) (IdentifierValue!9851 (value!151621 List!30887)) (WhitespaceValue!9851 (value!151622 List!30887)) (True!9850) (False!9850) (Broken!24627 (value!151623 List!30887)) (Broken!24628 (value!151624 List!30887)) (True!9851) (RightBrace!4925) (RightBracket!4925) (Colon!4925) (Null!4925) (Comma!4925) (LeftBracket!4925) (False!9851) (LeftBrace!4925) (ImaginaryLiteralValue!4925 (text!34921 List!30887)) (StringLiteralValue!14775 (value!151625 List!30887)) (EOFValue!4925 (value!151626 List!30887)) (IdentValue!4925 (value!151627 List!30887)) (DelimiterValue!9851 (value!151628 List!30887)) (DedentValue!4925 (value!151629 List!30887)) (NewLineValue!4925 (value!151630 List!30887)) (IntegerValue!14775 (value!151631 (_ BitVec 32)) (text!34922 List!30887)) (IntegerValue!14776 (value!151632 Int) (text!34923 List!30887)) (Times!4925) (Or!4925) (Equal!4925) (Minus!4925) (Broken!24629 (value!151633 List!30887)) (And!4925) (Div!4925) (LessEqual!4925) (Mod!4925) (Concat!12772) (Not!4925) (Plus!4925) (SpaceValue!4925 (value!151634 List!30887)) (IntegerValue!14777 (value!151635 Int) (text!34924 List!30887)) (StringLiteralValue!14776 (text!34925 List!30887)) (FloatLiteralValue!9851 (text!34926 List!30887)) (BytesLiteralValue!4925 (value!151636 List!30887)) (CommentValue!9851 (value!151637 List!30887)) (StringLiteralValue!14777 (value!151638 List!30887)) (ErrorTokenValue!4925 (msg!4986 List!30887)) )
))
(declare-datatypes ((C!15852 0))(
  ( (C!15853 (val!9860 Int)) )
))
(declare-datatypes ((List!30888 0))(
  ( (Nil!30788) (Cons!30788 (h!36208 C!15852) (t!223759 List!30888)) )
))
(declare-datatypes ((IArray!19277 0))(
  ( (IArray!19278 (innerList!9696 List!30888)) )
))
(declare-datatypes ((Conc!9636 0))(
  ( (Node!9636 (left!23831 Conc!9636) (right!24161 Conc!9636) (csize!19502 Int) (cheight!9847 Int)) (Leaf!14728 (xs!12666 IArray!19277) (csize!19503 Int)) (Empty!9636) )
))
(declare-datatypes ((BalanceConc!18886 0))(
  ( (BalanceConc!18887 (c!431033 Conc!9636)) )
))
(declare-datatypes ((Regex!7847 0))(
  ( (ElementMatch!7847 (c!431034 C!15852)) (Concat!12773 (regOne!16206 Regex!7847) (regTwo!16206 Regex!7847)) (EmptyExpr!7847) (Star!7847 (reg!8176 Regex!7847)) (EmptyLang!7847) (Union!7847 (regOne!16207 Regex!7847) (regTwo!16207 Regex!7847)) )
))
(declare-datatypes ((String!34509 0))(
  ( (String!34510 (value!151639 String)) )
))
(declare-datatypes ((TokenValueInjection!9290 0))(
  ( (TokenValueInjection!9291 (toValue!6649 Int) (toChars!6508 Int)) )
))
(declare-datatypes ((Rule!9206 0))(
  ( (Rule!9207 (regex!4703 Regex!7847) (tag!5205 String!34509) (isSeparator!4703 Bool) (transformation!4703 TokenValueInjection!9290)) )
))
(declare-datatypes ((List!30889 0))(
  ( (Nil!30789) (Cons!30789 (h!36209 Rule!9206) (t!223760 List!30889)) )
))
(declare-fun rules!1712 () List!30889)

(get-info :version)

(assert (= (and b!2675160 ((_ is Cons!30789) rules!1712)) b!2675179))

(declare-fun order!16977 () Int)

(declare-fun order!16975 () Int)

(declare-fun dynLambda!13372 (Int Int) Int)

(declare-fun dynLambda!13373 (Int Int) Int)

(assert (=> b!2675181 (< (dynLambda!13372 order!16975 (toValue!6649 (transformation!4703 (h!36209 rules!1712)))) (dynLambda!13373 order!16977 lambda!99938))))

(declare-fun order!16979 () Int)

(declare-fun dynLambda!13374 (Int Int) Int)

(assert (=> b!2675181 (< (dynLambda!13374 order!16979 (toChars!6508 (transformation!4703 (h!36209 rules!1712)))) (dynLambda!13373 order!16977 lambda!99938))))

(assert (=> b!2675160 true))

(declare-fun e!1686219 () Bool)

(assert (=> b!2675149 (= e!1686219 (and tp!845950 tp!845945))))

(declare-fun b!2675150 () Bool)

(declare-fun res!1124688 () Bool)

(declare-fun e!1686229 () Bool)

(assert (=> b!2675150 (=> (not res!1124688) (not e!1686229))))

(declare-datatypes ((LexerInterface!4300 0))(
  ( (LexerInterfaceExt!4297 (__x!19684 Int)) (Lexer!4298) )
))
(declare-fun thiss!14116 () LexerInterface!4300)

(declare-datatypes ((Token!8876 0))(
  ( (Token!8877 (value!151640 TokenValue!4925) (rule!7111 Rule!9206) (size!23793 Int) (originalCharacters!5469 List!30888)) )
))
(declare-datatypes ((List!30890 0))(
  ( (Nil!30790) (Cons!30790 (h!36210 Token!8876) (t!223761 List!30890)) )
))
(declare-fun l!4335 () List!30890)

(declare-fun rulesProduceEachTokenIndividuallyList!1522 (LexerInterface!4300 List!30889 List!30890) Bool)

(assert (=> b!2675150 (= res!1124688 (rulesProduceEachTokenIndividuallyList!1522 thiss!14116 rules!1712 l!4335))))

(declare-fun res!1124690 () Bool)

(assert (=> start!260318 (=> (not res!1124690) (not e!1686229))))

(assert (=> start!260318 (= res!1124690 ((_ is Lexer!4298) thiss!14116))))

(assert (=> start!260318 e!1686229))

(assert (=> start!260318 true))

(declare-fun e!1686232 () Bool)

(assert (=> start!260318 e!1686232))

(declare-fun e!1686222 () Bool)

(assert (=> start!260318 e!1686222))

(declare-fun separatorToken!152 () Token!8876)

(declare-fun e!1686233 () Bool)

(declare-fun inv!41802 (Token!8876) Bool)

(assert (=> start!260318 (and (inv!41802 separatorToken!152) e!1686233)))

(declare-fun tp!845947 () Bool)

(declare-fun e!1686235 () Bool)

(declare-fun b!2675151 () Bool)

(assert (=> b!2675151 (= e!1686222 (and (inv!41802 (h!36210 l!4335)) e!1686235 tp!845947))))

(declare-fun b!2675152 () Bool)

(declare-fun res!1124683 () Bool)

(assert (=> b!2675152 (=> (not res!1124683) (not e!1686229))))

(assert (=> b!2675152 (= res!1124683 ((_ is Cons!30790) l!4335))))

(declare-fun tp!845946 () Bool)

(declare-fun e!1686231 () Bool)

(declare-fun b!2675153 () Bool)

(declare-fun inv!21 (TokenValue!4925) Bool)

(assert (=> b!2675153 (= e!1686235 (and (inv!21 (value!151640 (h!36210 l!4335))) e!1686231 tp!845946))))

(declare-fun e!1686236 () Bool)

(assert (=> b!2675154 (= e!1686236 (and tp!845944 tp!845953))))

(declare-fun e!1686230 () Bool)

(declare-fun b!2675155 () Bool)

(declare-fun tp!845955 () Bool)

(declare-fun inv!41799 (String!34509) Bool)

(declare-fun inv!41803 (TokenValueInjection!9290) Bool)

(assert (=> b!2675155 (= e!1686231 (and tp!845955 (inv!41799 (tag!5205 (rule!7111 (h!36210 l!4335)))) (inv!41803 (transformation!4703 (rule!7111 (h!36210 l!4335)))) e!1686230))))

(assert (=> b!2675156 (= e!1686230 (and tp!845956 tp!845952))))

(declare-fun b!2675157 () Bool)

(declare-fun e!1686225 () Bool)

(declare-fun e!1686234 () Bool)

(assert (=> b!2675157 (= e!1686225 (not e!1686234))))

(declare-fun res!1124693 () Bool)

(assert (=> b!2675157 (=> res!1124693 e!1686234)))

(declare-fun lt!941945 () List!30888)

(declare-fun lt!941938 () List!30888)

(declare-fun lt!941941 () List!30888)

(assert (=> b!2675157 (= res!1124693 (or (not (= lt!941938 lt!941941)) (not (= lt!941941 lt!941945))))))

(declare-fun printList!1192 (LexerInterface!4300 List!30890) List!30888)

(assert (=> b!2675157 (= lt!941941 (printList!1192 thiss!14116 (Cons!30790 (h!36210 l!4335) Nil!30790)))))

(declare-fun lt!941943 () BalanceConc!18886)

(declare-fun list!11629 (BalanceConc!18886) List!30888)

(assert (=> b!2675157 (= lt!941938 (list!11629 lt!941943))))

(declare-datatypes ((IArray!19279 0))(
  ( (IArray!19280 (innerList!9697 List!30890)) )
))
(declare-datatypes ((Conc!9637 0))(
  ( (Node!9637 (left!23832 Conc!9637) (right!24162 Conc!9637) (csize!19504 Int) (cheight!9848 Int)) (Leaf!14729 (xs!12667 IArray!19279) (csize!19505 Int)) (Empty!9637) )
))
(declare-datatypes ((BalanceConc!18888 0))(
  ( (BalanceConc!18889 (c!431035 Conc!9637)) )
))
(declare-fun lt!941946 () BalanceConc!18888)

(declare-fun printTailRec!1153 (LexerInterface!4300 BalanceConc!18888 Int BalanceConc!18886) BalanceConc!18886)

(assert (=> b!2675157 (= lt!941943 (printTailRec!1153 thiss!14116 lt!941946 0 (BalanceConc!18887 Empty!9636)))))

(declare-fun print!1679 (LexerInterface!4300 BalanceConc!18888) BalanceConc!18886)

(assert (=> b!2675157 (= lt!941943 (print!1679 thiss!14116 lt!941946))))

(declare-fun singletonSeq!2100 (Token!8876) BalanceConc!18888)

(assert (=> b!2675157 (= lt!941946 (singletonSeq!2100 (h!36210 l!4335)))))

(declare-fun b!2675158 () Bool)

(declare-fun res!1124692 () Bool)

(assert (=> b!2675158 (=> (not res!1124692) (not e!1686229))))

(assert (=> b!2675158 (= res!1124692 (isSeparator!4703 (rule!7111 separatorToken!152)))))

(declare-fun b!2675159 () Bool)

(declare-fun rulesProduceIndividualToken!2012 (LexerInterface!4300 List!30889 Token!8876) Bool)

(assert (=> b!2675159 (= e!1686234 (rulesProduceIndividualToken!2012 thiss!14116 rules!1712 (h!36210 l!4335)))))

(assert (=> b!2675160 (= e!1686229 e!1686225)))

(declare-fun res!1124685 () Bool)

(assert (=> b!2675160 (=> (not res!1124685) (not e!1686225))))

(declare-datatypes ((tuple2!30242 0))(
  ( (tuple2!30243 (_1!17663 Token!8876) (_2!17663 List!30888)) )
))
(declare-datatypes ((Option!6094 0))(
  ( (None!6093) (Some!6093 (v!32644 tuple2!30242)) )
))
(declare-fun lt!941942 () Option!6094)

(declare-fun lt!941944 () Bool)

(assert (=> b!2675160 (= res!1124685 (and (or lt!941944 (not (= (_1!17663 (v!32644 lt!941942)) (h!36210 l!4335)))) (or lt!941944 (= (_1!17663 (v!32644 lt!941942)) (h!36210 l!4335))) ((_ is None!6093) lt!941942)))))

(assert (=> b!2675160 (= lt!941944 (not ((_ is Some!6093) lt!941942)))))

(declare-fun lt!941939 () List!30888)

(declare-fun maxPrefix!2338 (LexerInterface!4300 List!30889 List!30888) Option!6094)

(declare-fun ++!7513 (List!30888 List!30888) List!30888)

(assert (=> b!2675160 (= lt!941942 (maxPrefix!2338 thiss!14116 rules!1712 (++!7513 lt!941945 lt!941939)))))

(declare-fun charsOf!2966 (Token!8876) BalanceConc!18886)

(assert (=> b!2675160 (= lt!941945 (list!11629 (charsOf!2966 (h!36210 l!4335))))))

(declare-fun printWithSeparatorTokenWhenNeededList!694 (LexerInterface!4300 List!30889 List!30890 Token!8876) List!30888)

(assert (=> b!2675160 (= lt!941939 (printWithSeparatorTokenWhenNeededList!694 thiss!14116 rules!1712 (t!223761 l!4335) separatorToken!152))))

(declare-datatypes ((Unit!45001 0))(
  ( (Unit!45002) )
))
(declare-fun lt!941940 () Unit!45001)

(declare-fun forallContained!1043 (List!30890 Int Token!8876) Unit!45001)

(assert (=> b!2675160 (= lt!941940 (forallContained!1043 l!4335 lambda!99938 (h!36210 l!4335)))))

(declare-fun b!2675161 () Bool)

(declare-fun res!1124686 () Bool)

(assert (=> b!2675161 (=> (not res!1124686) (not e!1686229))))

(declare-fun sepAndNonSepRulesDisjointChars!1276 (List!30889 List!30889) Bool)

(assert (=> b!2675161 (= res!1124686 (sepAndNonSepRulesDisjointChars!1276 rules!1712 rules!1712))))

(declare-fun tp!845948 () Bool)

(declare-fun b!2675162 () Bool)

(declare-fun e!1686223 () Bool)

(assert (=> b!2675162 (= e!1686223 (and tp!845948 (inv!41799 (tag!5205 (rule!7111 separatorToken!152))) (inv!41803 (transformation!4703 (rule!7111 separatorToken!152))) e!1686236))))

(declare-fun b!2675163 () Bool)

(declare-fun e!1686221 () Bool)

(declare-fun tp!845954 () Bool)

(assert (=> b!2675163 (= e!1686221 (and tp!845954 (inv!41799 (tag!5205 (h!36209 rules!1712))) (inv!41803 (transformation!4703 (h!36209 rules!1712))) e!1686219))))

(declare-fun b!2675164 () Bool)

(declare-fun res!1124689 () Bool)

(assert (=> b!2675164 (=> (not res!1124689) (not e!1686229))))

(declare-fun isEmpty!17613 (List!30889) Bool)

(assert (=> b!2675164 (= res!1124689 (not (isEmpty!17613 rules!1712)))))

(declare-fun res!1124682 () Bool)

(assert (=> b!2675165 (=> (not res!1124682) (not e!1686229))))

(declare-fun forall!6520 (List!30890 Int) Bool)

(assert (=> b!2675165 (= res!1124682 (forall!6520 l!4335 lambda!99937))))

(declare-fun b!2675166 () Bool)

(declare-fun tp!845949 () Bool)

(assert (=> b!2675166 (= e!1686232 (and e!1686221 tp!845949))))

(declare-fun b!2675167 () Bool)

(declare-fun res!1124684 () Bool)

(assert (=> b!2675167 (=> (not res!1124684) (not e!1686229))))

(declare-fun rulesInvariant!3800 (LexerInterface!4300 List!30889) Bool)

(assert (=> b!2675167 (= res!1124684 (rulesInvariant!3800 thiss!14116 rules!1712))))

(declare-fun tp!845951 () Bool)

(declare-fun b!2675168 () Bool)

(assert (=> b!2675168 (= e!1686233 (and (inv!21 (value!151640 separatorToken!152)) e!1686223 tp!845951))))

(declare-fun b!2675169 () Bool)

(declare-fun res!1124691 () Bool)

(assert (=> b!2675169 (=> (not res!1124691) (not e!1686229))))

(declare-fun contains!5921 (List!30890 Token!8876) Bool)

(assert (=> b!2675169 (= res!1124691 (contains!5921 l!4335 (h!36210 l!4335)))))

(declare-fun b!2675170 () Bool)

(declare-fun res!1124687 () Bool)

(assert (=> b!2675170 (=> (not res!1124687) (not e!1686229))))

(assert (=> b!2675170 (= res!1124687 (rulesProduceIndividualToken!2012 thiss!14116 rules!1712 separatorToken!152))))

(assert (= (and start!260318 res!1124690) b!2675164))

(assert (= (and b!2675164 res!1124689) b!2675167))

(assert (= (and b!2675167 res!1124684) b!2675150))

(assert (= (and b!2675150 res!1124688) b!2675170))

(assert (= (and b!2675170 res!1124687) b!2675158))

(assert (= (and b!2675158 res!1124692) b!2675165))

(assert (= (and b!2675165 res!1124682) b!2675161))

(assert (= (and b!2675161 res!1124686) b!2675152))

(assert (= (and b!2675152 res!1124683) b!2675169))

(assert (= (and b!2675169 res!1124691) b!2675160))

(assert (= (and b!2675160 res!1124685) b!2675157))

(assert (= (and b!2675157 (not res!1124693)) b!2675159))

(assert (= b!2675163 b!2675149))

(assert (= b!2675166 b!2675163))

(assert (= (and start!260318 ((_ is Cons!30789) rules!1712)) b!2675166))

(assert (= b!2675155 b!2675156))

(assert (= b!2675153 b!2675155))

(assert (= b!2675151 b!2675153))

(assert (= (and start!260318 ((_ is Cons!30790) l!4335)) b!2675151))

(assert (= b!2675162 b!2675154))

(assert (= b!2675168 b!2675162))

(assert (= start!260318 b!2675168))

(declare-fun m!3041629 () Bool)

(assert (=> b!2675165 m!3041629))

(declare-fun m!3041631 () Bool)

(assert (=> b!2675168 m!3041631))

(declare-fun m!3041633 () Bool)

(assert (=> b!2675161 m!3041633))

(declare-fun m!3041635 () Bool)

(assert (=> b!2675160 m!3041635))

(declare-fun m!3041637 () Bool)

(assert (=> b!2675160 m!3041637))

(declare-fun m!3041639 () Bool)

(assert (=> b!2675160 m!3041639))

(declare-fun m!3041641 () Bool)

(assert (=> b!2675160 m!3041641))

(assert (=> b!2675160 m!3041637))

(assert (=> b!2675160 m!3041641))

(declare-fun m!3041643 () Bool)

(assert (=> b!2675160 m!3041643))

(declare-fun m!3041645 () Bool)

(assert (=> b!2675160 m!3041645))

(declare-fun m!3041647 () Bool)

(assert (=> b!2675162 m!3041647))

(declare-fun m!3041649 () Bool)

(assert (=> b!2675162 m!3041649))

(declare-fun m!3041651 () Bool)

(assert (=> b!2675159 m!3041651))

(declare-fun m!3041653 () Bool)

(assert (=> b!2675150 m!3041653))

(declare-fun m!3041655 () Bool)

(assert (=> start!260318 m!3041655))

(declare-fun m!3041657 () Bool)

(assert (=> b!2675169 m!3041657))

(declare-fun m!3041659 () Bool)

(assert (=> b!2675153 m!3041659))

(declare-fun m!3041661 () Bool)

(assert (=> b!2675155 m!3041661))

(declare-fun m!3041663 () Bool)

(assert (=> b!2675155 m!3041663))

(declare-fun m!3041665 () Bool)

(assert (=> b!2675170 m!3041665))

(declare-fun m!3041667 () Bool)

(assert (=> b!2675167 m!3041667))

(declare-fun m!3041669 () Bool)

(assert (=> b!2675157 m!3041669))

(declare-fun m!3041671 () Bool)

(assert (=> b!2675157 m!3041671))

(declare-fun m!3041673 () Bool)

(assert (=> b!2675157 m!3041673))

(declare-fun m!3041675 () Bool)

(assert (=> b!2675157 m!3041675))

(declare-fun m!3041677 () Bool)

(assert (=> b!2675157 m!3041677))

(declare-fun m!3041679 () Bool)

(assert (=> b!2675151 m!3041679))

(declare-fun m!3041681 () Bool)

(assert (=> b!2675164 m!3041681))

(declare-fun m!3041683 () Bool)

(assert (=> b!2675163 m!3041683))

(declare-fun m!3041685 () Bool)

(assert (=> b!2675163 m!3041685))

(check-sat (not b!2675157) (not b_next!76105) (not b!2675170) b_and!197765 (not b_next!76107) (not b!2675159) (not b_next!76099) b_and!197761 (not b!2675161) (not b!2675167) (not b!2675155) b_and!197759 (not b!2675150) (not b_next!76103) (not start!260318) (not b!2675162) b_and!197757 (not b!2675153) (not b_next!76097) (not b!2675151) (not b!2675168) (not b!2675164) (not b!2675169) (not b!2675165) b_and!197763 (not b!2675160) b_and!197767 (not b_next!76101) (not b!2675179) (not b!2675166) (not b!2675163))
(check-sat b_and!197759 (not b_next!76105) b_and!197765 (not b_next!76103) b_and!197757 (not b_next!76097) (not b_next!76107) (not b_next!76099) (not b_next!76101) b_and!197761 b_and!197763 b_and!197767)
(get-model)

(declare-fun d!764862 () Bool)

(declare-fun res!1124706 () Bool)

(declare-fun e!1686250 () Bool)

(assert (=> d!764862 (=> res!1124706 e!1686250)))

(assert (=> d!764862 (= res!1124706 ((_ is Nil!30790) l!4335))))

(assert (=> d!764862 (= (forall!6520 l!4335 lambda!99937) e!1686250)))

(declare-fun b!2675188 () Bool)

(declare-fun e!1686251 () Bool)

(assert (=> b!2675188 (= e!1686250 e!1686251)))

(declare-fun res!1124707 () Bool)

(assert (=> b!2675188 (=> (not res!1124707) (not e!1686251))))

(declare-fun dynLambda!13377 (Int Token!8876) Bool)

(assert (=> b!2675188 (= res!1124707 (dynLambda!13377 lambda!99937 (h!36210 l!4335)))))

(declare-fun b!2675189 () Bool)

(assert (=> b!2675189 (= e!1686251 (forall!6520 (t!223761 l!4335) lambda!99937))))

(assert (= (and d!764862 (not res!1124706)) b!2675188))

(assert (= (and b!2675188 res!1124707) b!2675189))

(declare-fun b_lambda!81583 () Bool)

(assert (=> (not b_lambda!81583) (not b!2675188)))

(declare-fun m!3041687 () Bool)

(assert (=> b!2675188 m!3041687))

(declare-fun m!3041689 () Bool)

(assert (=> b!2675189 m!3041689))

(assert (=> b!2675165 d!764862))

(declare-fun b!2675200 () Bool)

(declare-fun e!1686260 () Bool)

(declare-fun inv!16 (TokenValue!4925) Bool)

(assert (=> b!2675200 (= e!1686260 (inv!16 (value!151640 (h!36210 l!4335))))))

(declare-fun b!2675201 () Bool)

(declare-fun res!1124710 () Bool)

(declare-fun e!1686258 () Bool)

(assert (=> b!2675201 (=> res!1124710 e!1686258)))

(assert (=> b!2675201 (= res!1124710 (not ((_ is IntegerValue!14777) (value!151640 (h!36210 l!4335)))))))

(declare-fun e!1686259 () Bool)

(assert (=> b!2675201 (= e!1686259 e!1686258)))

(declare-fun b!2675202 () Bool)

(declare-fun inv!17 (TokenValue!4925) Bool)

(assert (=> b!2675202 (= e!1686259 (inv!17 (value!151640 (h!36210 l!4335))))))

(declare-fun b!2675204 () Bool)

(declare-fun inv!15 (TokenValue!4925) Bool)

(assert (=> b!2675204 (= e!1686258 (inv!15 (value!151640 (h!36210 l!4335))))))

(declare-fun d!764866 () Bool)

(declare-fun c!431040 () Bool)

(assert (=> d!764866 (= c!431040 ((_ is IntegerValue!14775) (value!151640 (h!36210 l!4335))))))

(assert (=> d!764866 (= (inv!21 (value!151640 (h!36210 l!4335))) e!1686260)))

(declare-fun b!2675203 () Bool)

(assert (=> b!2675203 (= e!1686260 e!1686259)))

(declare-fun c!431041 () Bool)

(assert (=> b!2675203 (= c!431041 ((_ is IntegerValue!14776) (value!151640 (h!36210 l!4335))))))

(assert (= (and d!764866 c!431040) b!2675200))

(assert (= (and d!764866 (not c!431040)) b!2675203))

(assert (= (and b!2675203 c!431041) b!2675202))

(assert (= (and b!2675203 (not c!431041)) b!2675201))

(assert (= (and b!2675201 (not res!1124710)) b!2675204))

(declare-fun m!3041691 () Bool)

(assert (=> b!2675200 m!3041691))

(declare-fun m!3041693 () Bool)

(assert (=> b!2675202 m!3041693))

(declare-fun m!3041695 () Bool)

(assert (=> b!2675204 m!3041695))

(assert (=> b!2675153 d!764866))

(declare-fun d!764868 () Bool)

(assert (=> d!764868 (= (isEmpty!17613 rules!1712) ((_ is Nil!30789) rules!1712))))

(assert (=> b!2675164 d!764868))

(declare-fun d!764870 () Bool)

(assert (=> d!764870 (= (inv!41799 (tag!5205 (h!36209 rules!1712))) (= (mod (str.len (value!151639 (tag!5205 (h!36209 rules!1712)))) 2) 0))))

(assert (=> b!2675163 d!764870))

(declare-fun d!764872 () Bool)

(declare-fun res!1124713 () Bool)

(declare-fun e!1686263 () Bool)

(assert (=> d!764872 (=> (not res!1124713) (not e!1686263))))

(declare-fun semiInverseModEq!1948 (Int Int) Bool)

(assert (=> d!764872 (= res!1124713 (semiInverseModEq!1948 (toChars!6508 (transformation!4703 (h!36209 rules!1712))) (toValue!6649 (transformation!4703 (h!36209 rules!1712)))))))

(assert (=> d!764872 (= (inv!41803 (transformation!4703 (h!36209 rules!1712))) e!1686263)))

(declare-fun b!2675207 () Bool)

(declare-fun equivClasses!1849 (Int Int) Bool)

(assert (=> b!2675207 (= e!1686263 (equivClasses!1849 (toChars!6508 (transformation!4703 (h!36209 rules!1712))) (toValue!6649 (transformation!4703 (h!36209 rules!1712)))))))

(assert (= (and d!764872 res!1124713) b!2675207))

(declare-fun m!3041697 () Bool)

(assert (=> d!764872 m!3041697))

(declare-fun m!3041699 () Bool)

(assert (=> b!2675207 m!3041699))

(assert (=> b!2675163 d!764872))

(declare-fun d!764874 () Bool)

(declare-fun lt!941949 () BalanceConc!18886)

(declare-fun list!11632 (BalanceConc!18888) List!30890)

(assert (=> d!764874 (= (list!11629 lt!941949) (printList!1192 thiss!14116 (list!11632 lt!941946)))))

(assert (=> d!764874 (= lt!941949 (printTailRec!1153 thiss!14116 lt!941946 0 (BalanceConc!18887 Empty!9636)))))

(assert (=> d!764874 (= (print!1679 thiss!14116 lt!941946) lt!941949)))

(declare-fun bs!479745 () Bool)

(assert (= bs!479745 d!764874))

(declare-fun m!3041701 () Bool)

(assert (=> bs!479745 m!3041701))

(declare-fun m!3041703 () Bool)

(assert (=> bs!479745 m!3041703))

(assert (=> bs!479745 m!3041703))

(declare-fun m!3041705 () Bool)

(assert (=> bs!479745 m!3041705))

(assert (=> bs!479745 m!3041673))

(assert (=> b!2675157 d!764874))

(declare-fun d!764876 () Bool)

(declare-fun lt!941973 () BalanceConc!18886)

(declare-fun printListTailRec!525 (LexerInterface!4300 List!30890 List!30888) List!30888)

(declare-fun dropList!974 (BalanceConc!18888 Int) List!30890)

(assert (=> d!764876 (= (list!11629 lt!941973) (printListTailRec!525 thiss!14116 (dropList!974 lt!941946 0) (list!11629 (BalanceConc!18887 Empty!9636))))))

(declare-fun e!1686302 () BalanceConc!18886)

(assert (=> d!764876 (= lt!941973 e!1686302)))

(declare-fun c!431052 () Bool)

(declare-fun size!23796 (BalanceConc!18888) Int)

(assert (=> d!764876 (= c!431052 (>= 0 (size!23796 lt!941946)))))

(declare-fun e!1686301 () Bool)

(assert (=> d!764876 e!1686301))

(declare-fun res!1124744 () Bool)

(assert (=> d!764876 (=> (not res!1124744) (not e!1686301))))

(assert (=> d!764876 (= res!1124744 (>= 0 0))))

(assert (=> d!764876 (= (printTailRec!1153 thiss!14116 lt!941946 0 (BalanceConc!18887 Empty!9636)) lt!941973)))

(declare-fun b!2675258 () Bool)

(assert (=> b!2675258 (= e!1686301 (<= 0 (size!23796 lt!941946)))))

(declare-fun b!2675259 () Bool)

(assert (=> b!2675259 (= e!1686302 (BalanceConc!18887 Empty!9636))))

(declare-fun b!2675260 () Bool)

(declare-fun ++!7515 (BalanceConc!18886 BalanceConc!18886) BalanceConc!18886)

(declare-fun apply!7383 (BalanceConc!18888 Int) Token!8876)

(assert (=> b!2675260 (= e!1686302 (printTailRec!1153 thiss!14116 lt!941946 (+ 0 1) (++!7515 (BalanceConc!18887 Empty!9636) (charsOf!2966 (apply!7383 lt!941946 0)))))))

(declare-fun lt!941974 () List!30890)

(assert (=> b!2675260 (= lt!941974 (list!11632 lt!941946))))

(declare-fun lt!941975 () Unit!45001)

(declare-fun lemmaDropApply!880 (List!30890 Int) Unit!45001)

(assert (=> b!2675260 (= lt!941975 (lemmaDropApply!880 lt!941974 0))))

(declare-fun head!6081 (List!30890) Token!8876)

(declare-fun drop!1671 (List!30890 Int) List!30890)

(declare-fun apply!7384 (List!30890 Int) Token!8876)

(assert (=> b!2675260 (= (head!6081 (drop!1671 lt!941974 0)) (apply!7384 lt!941974 0))))

(declare-fun lt!941976 () Unit!45001)

(assert (=> b!2675260 (= lt!941976 lt!941975)))

(declare-fun lt!941979 () List!30890)

(assert (=> b!2675260 (= lt!941979 (list!11632 lt!941946))))

(declare-fun lt!941977 () Unit!45001)

(declare-fun lemmaDropTail!852 (List!30890 Int) Unit!45001)

(assert (=> b!2675260 (= lt!941977 (lemmaDropTail!852 lt!941979 0))))

(declare-fun tail!4319 (List!30890) List!30890)

(assert (=> b!2675260 (= (tail!4319 (drop!1671 lt!941979 0)) (drop!1671 lt!941979 (+ 0 1)))))

(declare-fun lt!941978 () Unit!45001)

(assert (=> b!2675260 (= lt!941978 lt!941977)))

(assert (= (and d!764876 res!1124744) b!2675258))

(assert (= (and d!764876 c!431052) b!2675259))

(assert (= (and d!764876 (not c!431052)) b!2675260))

(declare-fun m!3041749 () Bool)

(assert (=> d!764876 m!3041749))

(declare-fun m!3041751 () Bool)

(assert (=> d!764876 m!3041751))

(declare-fun m!3041753 () Bool)

(assert (=> d!764876 m!3041753))

(assert (=> d!764876 m!3041753))

(declare-fun m!3041755 () Bool)

(assert (=> d!764876 m!3041755))

(declare-fun m!3041757 () Bool)

(assert (=> d!764876 m!3041757))

(assert (=> d!764876 m!3041755))

(assert (=> b!2675258 m!3041749))

(declare-fun m!3041759 () Bool)

(assert (=> b!2675260 m!3041759))

(declare-fun m!3041761 () Bool)

(assert (=> b!2675260 m!3041761))

(declare-fun m!3041763 () Bool)

(assert (=> b!2675260 m!3041763))

(declare-fun m!3041765 () Bool)

(assert (=> b!2675260 m!3041765))

(declare-fun m!3041767 () Bool)

(assert (=> b!2675260 m!3041767))

(declare-fun m!3041769 () Bool)

(assert (=> b!2675260 m!3041769))

(declare-fun m!3041771 () Bool)

(assert (=> b!2675260 m!3041771))

(assert (=> b!2675260 m!3041763))

(assert (=> b!2675260 m!3041765))

(assert (=> b!2675260 m!3041759))

(declare-fun m!3041773 () Bool)

(assert (=> b!2675260 m!3041773))

(declare-fun m!3041775 () Bool)

(assert (=> b!2675260 m!3041775))

(declare-fun m!3041777 () Bool)

(assert (=> b!2675260 m!3041777))

(assert (=> b!2675260 m!3041773))

(declare-fun m!3041779 () Bool)

(assert (=> b!2675260 m!3041779))

(declare-fun m!3041781 () Bool)

(assert (=> b!2675260 m!3041781))

(assert (=> b!2675260 m!3041767))

(assert (=> b!2675260 m!3041703))

(assert (=> b!2675157 d!764876))

(declare-fun d!764892 () Bool)

(declare-fun list!11633 (Conc!9636) List!30888)

(assert (=> d!764892 (= (list!11629 lt!941943) (list!11633 (c!431033 lt!941943)))))

(declare-fun bs!479746 () Bool)

(assert (= bs!479746 d!764892))

(declare-fun m!3041783 () Bool)

(assert (=> bs!479746 m!3041783))

(assert (=> b!2675157 d!764892))

(declare-fun d!764894 () Bool)

(declare-fun e!1686305 () Bool)

(assert (=> d!764894 e!1686305))

(declare-fun res!1124747 () Bool)

(assert (=> d!764894 (=> (not res!1124747) (not e!1686305))))

(declare-fun lt!941982 () BalanceConc!18888)

(assert (=> d!764894 (= res!1124747 (= (list!11632 lt!941982) (Cons!30790 (h!36210 l!4335) Nil!30790)))))

(declare-fun singleton!930 (Token!8876) BalanceConc!18888)

(assert (=> d!764894 (= lt!941982 (singleton!930 (h!36210 l!4335)))))

(assert (=> d!764894 (= (singletonSeq!2100 (h!36210 l!4335)) lt!941982)))

(declare-fun b!2675263 () Bool)

(declare-fun isBalanced!2919 (Conc!9637) Bool)

(assert (=> b!2675263 (= e!1686305 (isBalanced!2919 (c!431035 lt!941982)))))

(assert (= (and d!764894 res!1124747) b!2675263))

(declare-fun m!3041785 () Bool)

(assert (=> d!764894 m!3041785))

(declare-fun m!3041787 () Bool)

(assert (=> d!764894 m!3041787))

(declare-fun m!3041789 () Bool)

(assert (=> b!2675263 m!3041789))

(assert (=> b!2675157 d!764894))

(declare-fun d!764896 () Bool)

(declare-fun c!431055 () Bool)

(assert (=> d!764896 (= c!431055 ((_ is Cons!30790) (Cons!30790 (h!36210 l!4335) Nil!30790)))))

(declare-fun e!1686308 () List!30888)

(assert (=> d!764896 (= (printList!1192 thiss!14116 (Cons!30790 (h!36210 l!4335) Nil!30790)) e!1686308)))

(declare-fun b!2675268 () Bool)

(assert (=> b!2675268 (= e!1686308 (++!7513 (list!11629 (charsOf!2966 (h!36210 (Cons!30790 (h!36210 l!4335) Nil!30790)))) (printList!1192 thiss!14116 (t!223761 (Cons!30790 (h!36210 l!4335) Nil!30790)))))))

(declare-fun b!2675269 () Bool)

(assert (=> b!2675269 (= e!1686308 Nil!30788)))

(assert (= (and d!764896 c!431055) b!2675268))

(assert (= (and d!764896 (not c!431055)) b!2675269))

(declare-fun m!3041791 () Bool)

(assert (=> b!2675268 m!3041791))

(assert (=> b!2675268 m!3041791))

(declare-fun m!3041793 () Bool)

(assert (=> b!2675268 m!3041793))

(declare-fun m!3041795 () Bool)

(assert (=> b!2675268 m!3041795))

(assert (=> b!2675268 m!3041793))

(assert (=> b!2675268 m!3041795))

(declare-fun m!3041797 () Bool)

(assert (=> b!2675268 m!3041797))

(assert (=> b!2675157 d!764896))

(declare-fun b!2675270 () Bool)

(declare-fun e!1686311 () Bool)

(assert (=> b!2675270 (= e!1686311 (inv!16 (value!151640 separatorToken!152)))))

(declare-fun b!2675271 () Bool)

(declare-fun res!1124748 () Bool)

(declare-fun e!1686309 () Bool)

(assert (=> b!2675271 (=> res!1124748 e!1686309)))

(assert (=> b!2675271 (= res!1124748 (not ((_ is IntegerValue!14777) (value!151640 separatorToken!152))))))

(declare-fun e!1686310 () Bool)

(assert (=> b!2675271 (= e!1686310 e!1686309)))

(declare-fun b!2675272 () Bool)

(assert (=> b!2675272 (= e!1686310 (inv!17 (value!151640 separatorToken!152)))))

(declare-fun b!2675274 () Bool)

(assert (=> b!2675274 (= e!1686309 (inv!15 (value!151640 separatorToken!152)))))

(declare-fun d!764898 () Bool)

(declare-fun c!431056 () Bool)

(assert (=> d!764898 (= c!431056 ((_ is IntegerValue!14775) (value!151640 separatorToken!152)))))

(assert (=> d!764898 (= (inv!21 (value!151640 separatorToken!152)) e!1686311)))

(declare-fun b!2675273 () Bool)

(assert (=> b!2675273 (= e!1686311 e!1686310)))

(declare-fun c!431057 () Bool)

(assert (=> b!2675273 (= c!431057 ((_ is IntegerValue!14776) (value!151640 separatorToken!152)))))

(assert (= (and d!764898 c!431056) b!2675270))

(assert (= (and d!764898 (not c!431056)) b!2675273))

(assert (= (and b!2675273 c!431057) b!2675272))

(assert (= (and b!2675273 (not c!431057)) b!2675271))

(assert (= (and b!2675271 (not res!1124748)) b!2675274))

(declare-fun m!3041799 () Bool)

(assert (=> b!2675270 m!3041799))

(declare-fun m!3041801 () Bool)

(assert (=> b!2675272 m!3041801))

(declare-fun m!3041803 () Bool)

(assert (=> b!2675274 m!3041803))

(assert (=> b!2675168 d!764898))

(declare-fun d!764900 () Bool)

(declare-fun res!1124751 () Bool)

(declare-fun e!1686314 () Bool)

(assert (=> d!764900 (=> (not res!1124751) (not e!1686314))))

(declare-fun rulesValid!1754 (LexerInterface!4300 List!30889) Bool)

(assert (=> d!764900 (= res!1124751 (rulesValid!1754 thiss!14116 rules!1712))))

(assert (=> d!764900 (= (rulesInvariant!3800 thiss!14116 rules!1712) e!1686314)))

(declare-fun b!2675277 () Bool)

(declare-datatypes ((List!30892 0))(
  ( (Nil!30792) (Cons!30792 (h!36212 String!34509) (t!223815 List!30892)) )
))
(declare-fun noDuplicateTag!1750 (LexerInterface!4300 List!30889 List!30892) Bool)

(assert (=> b!2675277 (= e!1686314 (noDuplicateTag!1750 thiss!14116 rules!1712 Nil!30792))))

(assert (= (and d!764900 res!1124751) b!2675277))

(declare-fun m!3041805 () Bool)

(assert (=> d!764900 m!3041805))

(declare-fun m!3041807 () Bool)

(assert (=> b!2675277 m!3041807))

(assert (=> b!2675167 d!764900))

(declare-fun d!764902 () Bool)

(declare-fun res!1124756 () Bool)

(declare-fun e!1686317 () Bool)

(assert (=> d!764902 (=> (not res!1124756) (not e!1686317))))

(declare-fun isEmpty!17616 (List!30888) Bool)

(assert (=> d!764902 (= res!1124756 (not (isEmpty!17616 (originalCharacters!5469 separatorToken!152))))))

(assert (=> d!764902 (= (inv!41802 separatorToken!152) e!1686317)))

(declare-fun b!2675282 () Bool)

(declare-fun res!1124757 () Bool)

(assert (=> b!2675282 (=> (not res!1124757) (not e!1686317))))

(declare-fun dynLambda!13378 (Int TokenValue!4925) BalanceConc!18886)

(assert (=> b!2675282 (= res!1124757 (= (originalCharacters!5469 separatorToken!152) (list!11629 (dynLambda!13378 (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152))) (value!151640 separatorToken!152)))))))

(declare-fun b!2675283 () Bool)

(declare-fun size!23797 (List!30888) Int)

(assert (=> b!2675283 (= e!1686317 (= (size!23793 separatorToken!152) (size!23797 (originalCharacters!5469 separatorToken!152))))))

(assert (= (and d!764902 res!1124756) b!2675282))

(assert (= (and b!2675282 res!1124757) b!2675283))

(declare-fun b_lambda!81587 () Bool)

(assert (=> (not b_lambda!81587) (not b!2675282)))

(declare-fun t!223765 () Bool)

(declare-fun tb!150033 () Bool)

(assert (=> (and b!2675154 (= (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152))) (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152)))) t!223765) tb!150033))

(declare-fun b!2675288 () Bool)

(declare-fun e!1686320 () Bool)

(declare-fun tp!845959 () Bool)

(declare-fun inv!41806 (Conc!9636) Bool)

(assert (=> b!2675288 (= e!1686320 (and (inv!41806 (c!431033 (dynLambda!13378 (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152))) (value!151640 separatorToken!152)))) tp!845959))))

(declare-fun result!185304 () Bool)

(declare-fun inv!41807 (BalanceConc!18886) Bool)

(assert (=> tb!150033 (= result!185304 (and (inv!41807 (dynLambda!13378 (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152))) (value!151640 separatorToken!152))) e!1686320))))

(assert (= tb!150033 b!2675288))

(declare-fun m!3041809 () Bool)

(assert (=> b!2675288 m!3041809))

(declare-fun m!3041811 () Bool)

(assert (=> tb!150033 m!3041811))

(assert (=> b!2675282 t!223765))

(declare-fun b_and!197769 () Bool)

(assert (= b_and!197759 (and (=> t!223765 result!185304) b_and!197769)))

(declare-fun tb!150035 () Bool)

(declare-fun t!223767 () Bool)

(assert (=> (and b!2675156 (= (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))) (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152)))) t!223767) tb!150035))

(declare-fun result!185308 () Bool)

(assert (= result!185308 result!185304))

(assert (=> b!2675282 t!223767))

(declare-fun b_and!197771 () Bool)

(assert (= b_and!197763 (and (=> t!223767 result!185308) b_and!197771)))

(declare-fun tb!150037 () Bool)

(declare-fun t!223769 () Bool)

(assert (=> (and b!2675149 (= (toChars!6508 (transformation!4703 (h!36209 rules!1712))) (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152)))) t!223769) tb!150037))

(declare-fun result!185310 () Bool)

(assert (= result!185310 result!185304))

(assert (=> b!2675282 t!223769))

(declare-fun b_and!197773 () Bool)

(assert (= b_and!197767 (and (=> t!223769 result!185310) b_and!197773)))

(declare-fun m!3041813 () Bool)

(assert (=> d!764902 m!3041813))

(declare-fun m!3041815 () Bool)

(assert (=> b!2675282 m!3041815))

(assert (=> b!2675282 m!3041815))

(declare-fun m!3041817 () Bool)

(assert (=> b!2675282 m!3041817))

(declare-fun m!3041819 () Bool)

(assert (=> b!2675283 m!3041819))

(assert (=> start!260318 d!764902))

(declare-fun d!764904 () Bool)

(assert (=> d!764904 (= (inv!41799 (tag!5205 (rule!7111 (h!36210 l!4335)))) (= (mod (str.len (value!151639 (tag!5205 (rule!7111 (h!36210 l!4335))))) 2) 0))))

(assert (=> b!2675155 d!764904))

(declare-fun d!764906 () Bool)

(declare-fun res!1124758 () Bool)

(declare-fun e!1686321 () Bool)

(assert (=> d!764906 (=> (not res!1124758) (not e!1686321))))

(assert (=> d!764906 (= res!1124758 (semiInverseModEq!1948 (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))) (toValue!6649 (transformation!4703 (rule!7111 (h!36210 l!4335))))))))

(assert (=> d!764906 (= (inv!41803 (transformation!4703 (rule!7111 (h!36210 l!4335)))) e!1686321)))

(declare-fun b!2675289 () Bool)

(assert (=> b!2675289 (= e!1686321 (equivClasses!1849 (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))) (toValue!6649 (transformation!4703 (rule!7111 (h!36210 l!4335))))))))

(assert (= (and d!764906 res!1124758) b!2675289))

(declare-fun m!3041821 () Bool)

(assert (=> d!764906 m!3041821))

(declare-fun m!3041823 () Bool)

(assert (=> b!2675289 m!3041823))

(assert (=> b!2675155 d!764906))

(declare-fun d!764908 () Bool)

(assert (=> d!764908 (dynLambda!13377 lambda!99938 (h!36210 l!4335))))

(declare-fun lt!941985 () Unit!45001)

(declare-fun choose!15849 (List!30890 Int Token!8876) Unit!45001)

(assert (=> d!764908 (= lt!941985 (choose!15849 l!4335 lambda!99938 (h!36210 l!4335)))))

(declare-fun e!1686324 () Bool)

(assert (=> d!764908 e!1686324))

(declare-fun res!1124761 () Bool)

(assert (=> d!764908 (=> (not res!1124761) (not e!1686324))))

(assert (=> d!764908 (= res!1124761 (forall!6520 l!4335 lambda!99938))))

(assert (=> d!764908 (= (forallContained!1043 l!4335 lambda!99938 (h!36210 l!4335)) lt!941985)))

(declare-fun b!2675292 () Bool)

(assert (=> b!2675292 (= e!1686324 (contains!5921 l!4335 (h!36210 l!4335)))))

(assert (= (and d!764908 res!1124761) b!2675292))

(declare-fun b_lambda!81589 () Bool)

(assert (=> (not b_lambda!81589) (not d!764908)))

(declare-fun m!3041825 () Bool)

(assert (=> d!764908 m!3041825))

(declare-fun m!3041827 () Bool)

(assert (=> d!764908 m!3041827))

(declare-fun m!3041829 () Bool)

(assert (=> d!764908 m!3041829))

(assert (=> b!2675292 m!3041657))

(assert (=> b!2675160 d!764908))

(declare-fun d!764910 () Bool)

(declare-fun lt!941988 () BalanceConc!18886)

(assert (=> d!764910 (= (list!11629 lt!941988) (originalCharacters!5469 (h!36210 l!4335)))))

(assert (=> d!764910 (= lt!941988 (dynLambda!13378 (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))) (value!151640 (h!36210 l!4335))))))

(assert (=> d!764910 (= (charsOf!2966 (h!36210 l!4335)) lt!941988)))

(declare-fun b_lambda!81591 () Bool)

(assert (=> (not b_lambda!81591) (not d!764910)))

(declare-fun tb!150039 () Bool)

(declare-fun t!223771 () Bool)

(assert (=> (and b!2675154 (= (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152))) (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335))))) t!223771) tb!150039))

(declare-fun b!2675293 () Bool)

(declare-fun e!1686325 () Bool)

(declare-fun tp!845960 () Bool)

(assert (=> b!2675293 (= e!1686325 (and (inv!41806 (c!431033 (dynLambda!13378 (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))) (value!151640 (h!36210 l!4335))))) tp!845960))))

(declare-fun result!185312 () Bool)

(assert (=> tb!150039 (= result!185312 (and (inv!41807 (dynLambda!13378 (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))) (value!151640 (h!36210 l!4335)))) e!1686325))))

(assert (= tb!150039 b!2675293))

(declare-fun m!3041831 () Bool)

(assert (=> b!2675293 m!3041831))

(declare-fun m!3041833 () Bool)

(assert (=> tb!150039 m!3041833))

(assert (=> d!764910 t!223771))

(declare-fun b_and!197775 () Bool)

(assert (= b_and!197769 (and (=> t!223771 result!185312) b_and!197775)))

(declare-fun t!223773 () Bool)

(declare-fun tb!150041 () Bool)

(assert (=> (and b!2675156 (= (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))) (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335))))) t!223773) tb!150041))

(declare-fun result!185314 () Bool)

(assert (= result!185314 result!185312))

(assert (=> d!764910 t!223773))

(declare-fun b_and!197777 () Bool)

(assert (= b_and!197771 (and (=> t!223773 result!185314) b_and!197777)))

(declare-fun t!223775 () Bool)

(declare-fun tb!150043 () Bool)

(assert (=> (and b!2675149 (= (toChars!6508 (transformation!4703 (h!36209 rules!1712))) (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335))))) t!223775) tb!150043))

(declare-fun result!185316 () Bool)

(assert (= result!185316 result!185312))

(assert (=> d!764910 t!223775))

(declare-fun b_and!197779 () Bool)

(assert (= b_and!197773 (and (=> t!223775 result!185316) b_and!197779)))

(declare-fun m!3041835 () Bool)

(assert (=> d!764910 m!3041835))

(declare-fun m!3041837 () Bool)

(assert (=> d!764910 m!3041837))

(assert (=> b!2675160 d!764910))

(declare-fun b!2675302 () Bool)

(declare-fun e!1686331 () List!30888)

(assert (=> b!2675302 (= e!1686331 lt!941939)))

(declare-fun b!2675304 () Bool)

(declare-fun res!1124767 () Bool)

(declare-fun e!1686330 () Bool)

(assert (=> b!2675304 (=> (not res!1124767) (not e!1686330))))

(declare-fun lt!941991 () List!30888)

(assert (=> b!2675304 (= res!1124767 (= (size!23797 lt!941991) (+ (size!23797 lt!941945) (size!23797 lt!941939))))))

(declare-fun d!764912 () Bool)

(assert (=> d!764912 e!1686330))

(declare-fun res!1124766 () Bool)

(assert (=> d!764912 (=> (not res!1124766) (not e!1686330))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4374 (List!30888) (InoxSet C!15852))

(assert (=> d!764912 (= res!1124766 (= (content!4374 lt!941991) ((_ map or) (content!4374 lt!941945) (content!4374 lt!941939))))))

(assert (=> d!764912 (= lt!941991 e!1686331)))

(declare-fun c!431060 () Bool)

(assert (=> d!764912 (= c!431060 ((_ is Nil!30788) lt!941945))))

(assert (=> d!764912 (= (++!7513 lt!941945 lt!941939) lt!941991)))

(declare-fun b!2675303 () Bool)

(assert (=> b!2675303 (= e!1686331 (Cons!30788 (h!36208 lt!941945) (++!7513 (t!223759 lt!941945) lt!941939)))))

(declare-fun b!2675305 () Bool)

(assert (=> b!2675305 (= e!1686330 (or (not (= lt!941939 Nil!30788)) (= lt!941991 lt!941945)))))

(assert (= (and d!764912 c!431060) b!2675302))

(assert (= (and d!764912 (not c!431060)) b!2675303))

(assert (= (and d!764912 res!1124766) b!2675304))

(assert (= (and b!2675304 res!1124767) b!2675305))

(declare-fun m!3041839 () Bool)

(assert (=> b!2675304 m!3041839))

(declare-fun m!3041841 () Bool)

(assert (=> b!2675304 m!3041841))

(declare-fun m!3041843 () Bool)

(assert (=> b!2675304 m!3041843))

(declare-fun m!3041845 () Bool)

(assert (=> d!764912 m!3041845))

(declare-fun m!3041847 () Bool)

(assert (=> d!764912 m!3041847))

(declare-fun m!3041849 () Bool)

(assert (=> d!764912 m!3041849))

(declare-fun m!3041851 () Bool)

(assert (=> b!2675303 m!3041851))

(assert (=> b!2675160 d!764912))

(declare-fun d!764914 () Bool)

(assert (=> d!764914 (= (list!11629 (charsOf!2966 (h!36210 l!4335))) (list!11633 (c!431033 (charsOf!2966 (h!36210 l!4335)))))))

(declare-fun bs!479747 () Bool)

(assert (= bs!479747 d!764914))

(declare-fun m!3041853 () Bool)

(assert (=> bs!479747 m!3041853))

(assert (=> b!2675160 d!764914))

(declare-fun bs!479753 () Bool)

(declare-fun b!2675401 () Bool)

(assert (= bs!479753 (and b!2675401 b!2675165)))

(declare-fun lambda!99944 () Int)

(assert (=> bs!479753 (not (= lambda!99944 lambda!99937))))

(declare-fun bs!479754 () Bool)

(assert (= bs!479754 (and b!2675401 b!2675160)))

(assert (=> bs!479754 (= lambda!99944 lambda!99938)))

(declare-fun b!2675407 () Bool)

(declare-fun e!1686399 () Bool)

(assert (=> b!2675407 (= e!1686399 true)))

(declare-fun b!2675406 () Bool)

(declare-fun e!1686398 () Bool)

(assert (=> b!2675406 (= e!1686398 e!1686399)))

(declare-fun b!2675405 () Bool)

(declare-fun e!1686397 () Bool)

(assert (=> b!2675405 (= e!1686397 e!1686398)))

(assert (=> b!2675401 e!1686397))

(assert (= b!2675406 b!2675407))

(assert (= b!2675405 b!2675406))

(assert (= (and b!2675401 ((_ is Cons!30789) rules!1712)) b!2675405))

(assert (=> b!2675407 (< (dynLambda!13372 order!16975 (toValue!6649 (transformation!4703 (h!36209 rules!1712)))) (dynLambda!13373 order!16977 lambda!99944))))

(assert (=> b!2675407 (< (dynLambda!13374 order!16979 (toChars!6508 (transformation!4703 (h!36209 rules!1712)))) (dynLambda!13373 order!16977 lambda!99944))))

(assert (=> b!2675401 true))

(declare-fun bm!172588 () Bool)

(declare-fun call!172593 () BalanceConc!18886)

(assert (=> bm!172588 (= call!172593 (charsOf!2966 (h!36210 (t!223761 l!4335))))))

(declare-fun b!2675396 () Bool)

(declare-fun c!431082 () Bool)

(declare-fun lt!942047 () Option!6094)

(assert (=> b!2675396 (= c!431082 (and ((_ is Some!6093) lt!942047) (not (= (_1!17663 (v!32644 lt!942047)) (h!36210 (t!223761 l!4335))))))))

(declare-fun e!1686393 () List!30888)

(declare-fun e!1686396 () List!30888)

(assert (=> b!2675396 (= e!1686393 e!1686396)))

(declare-fun bm!172589 () Bool)

(declare-fun c!431083 () Bool)

(declare-fun call!172596 () List!30888)

(declare-fun e!1686392 () BalanceConc!18886)

(assert (=> bm!172589 (= call!172596 (list!11629 (ite c!431083 call!172593 e!1686392)))))

(declare-fun b!2675397 () Bool)

(declare-fun e!1686394 () List!30888)

(declare-fun lt!942049 () List!30888)

(assert (=> b!2675397 (= e!1686394 lt!942049)))

(declare-fun b!2675398 () Bool)

(assert (=> b!2675398 (= e!1686396 Nil!30788)))

(assert (=> b!2675398 (= (print!1679 thiss!14116 (singletonSeq!2100 (h!36210 (t!223761 l!4335)))) (printTailRec!1153 thiss!14116 (singletonSeq!2100 (h!36210 (t!223761 l!4335))) 0 (BalanceConc!18887 Empty!9636)))))

(declare-fun lt!942050 () Unit!45001)

(declare-fun Unit!45005 () Unit!45001)

(assert (=> b!2675398 (= lt!942050 Unit!45005)))

(declare-fun lt!942045 () Unit!45001)

(declare-fun call!172594 () List!30888)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!821 (LexerInterface!4300 List!30889 List!30888 List!30888) Unit!45001)

(assert (=> b!2675398 (= lt!942045 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!821 thiss!14116 rules!1712 call!172594 lt!942049))))

(assert (=> b!2675398 false))

(declare-fun lt!942048 () Unit!45001)

(declare-fun Unit!45006 () Unit!45001)

(assert (=> b!2675398 (= lt!942048 Unit!45006)))

(declare-fun bm!172590 () Bool)

(declare-fun call!172595 () BalanceConc!18886)

(assert (=> bm!172590 (= call!172595 (charsOf!2966 (ite c!431082 separatorToken!152 (h!36210 (t!223761 l!4335)))))))

(declare-fun b!2675399 () Bool)

(assert (=> b!2675399 (= e!1686392 call!172593)))

(declare-fun bm!172591 () Bool)

(declare-fun c!431080 () Bool)

(assert (=> bm!172591 (= c!431080 c!431083)))

(declare-fun call!172597 () List!30888)

(assert (=> bm!172591 (= call!172597 (++!7513 (ite c!431083 call!172596 call!172594) e!1686394))))

(declare-fun b!2675400 () Bool)

(assert (=> b!2675400 (= e!1686392 call!172595)))

(declare-fun e!1686395 () List!30888)

(assert (=> b!2675401 (= e!1686395 e!1686393)))

(declare-fun lt!942046 () Unit!45001)

(assert (=> b!2675401 (= lt!942046 (forallContained!1043 (t!223761 l!4335) lambda!99944 (h!36210 (t!223761 l!4335))))))

(assert (=> b!2675401 (= lt!942049 (printWithSeparatorTokenWhenNeededList!694 thiss!14116 rules!1712 (t!223761 (t!223761 l!4335)) separatorToken!152))))

(assert (=> b!2675401 (= lt!942047 (maxPrefix!2338 thiss!14116 rules!1712 (++!7513 (list!11629 (charsOf!2966 (h!36210 (t!223761 l!4335)))) lt!942049)))))

(assert (=> b!2675401 (= c!431083 (and ((_ is Some!6093) lt!942047) (= (_1!17663 (v!32644 lt!942047)) (h!36210 (t!223761 l!4335)))))))

(declare-fun b!2675395 () Bool)

(assert (=> b!2675395 (= e!1686396 (++!7513 call!172597 lt!942049))))

(declare-fun d!764916 () Bool)

(declare-fun c!431081 () Bool)

(assert (=> d!764916 (= c!431081 ((_ is Cons!30790) (t!223761 l!4335)))))

(assert (=> d!764916 (= (printWithSeparatorTokenWhenNeededList!694 thiss!14116 rules!1712 (t!223761 l!4335) separatorToken!152) e!1686395)))

(declare-fun b!2675402 () Bool)

(assert (=> b!2675402 (= e!1686395 Nil!30788)))

(declare-fun b!2675403 () Bool)

(assert (=> b!2675403 (= e!1686393 call!172597)))

(declare-fun b!2675404 () Bool)

(assert (=> b!2675404 (= e!1686394 (list!11629 call!172595))))

(declare-fun bm!172592 () Bool)

(assert (=> bm!172592 (= call!172594 call!172596)))

(declare-fun c!431084 () Bool)

(assert (=> bm!172592 (= c!431084 c!431082)))

(assert (= (and d!764916 c!431081) b!2675401))

(assert (= (and d!764916 (not c!431081)) b!2675402))

(assert (= (and b!2675401 c!431083) b!2675403))

(assert (= (and b!2675401 (not c!431083)) b!2675396))

(assert (= (and b!2675396 c!431082) b!2675395))

(assert (= (and b!2675396 (not c!431082)) b!2675398))

(assert (= (or b!2675395 b!2675398) bm!172590))

(assert (= (or b!2675395 b!2675398) bm!172592))

(assert (= (and bm!172592 c!431084) b!2675399))

(assert (= (and bm!172592 (not c!431084)) b!2675400))

(assert (= (or b!2675403 b!2675399) bm!172588))

(assert (= (or b!2675403 bm!172592) bm!172589))

(assert (= (or b!2675403 b!2675395) bm!172591))

(assert (= (and bm!172591 c!431080) b!2675397))

(assert (= (and bm!172591 (not c!431080)) b!2675404))

(declare-fun m!3041993 () Bool)

(assert (=> bm!172591 m!3041993))

(declare-fun m!3041995 () Bool)

(assert (=> b!2675398 m!3041995))

(assert (=> b!2675398 m!3041995))

(declare-fun m!3041997 () Bool)

(assert (=> b!2675398 m!3041997))

(assert (=> b!2675398 m!3041995))

(declare-fun m!3041999 () Bool)

(assert (=> b!2675398 m!3041999))

(declare-fun m!3042001 () Bool)

(assert (=> b!2675398 m!3042001))

(declare-fun m!3042003 () Bool)

(assert (=> b!2675395 m!3042003))

(declare-fun m!3042005 () Bool)

(assert (=> b!2675401 m!3042005))

(declare-fun m!3042007 () Bool)

(assert (=> b!2675401 m!3042007))

(declare-fun m!3042009 () Bool)

(assert (=> b!2675401 m!3042009))

(declare-fun m!3042011 () Bool)

(assert (=> b!2675401 m!3042011))

(declare-fun m!3042013 () Bool)

(assert (=> b!2675401 m!3042013))

(assert (=> b!2675401 m!3042009))

(declare-fun m!3042015 () Bool)

(assert (=> b!2675401 m!3042015))

(assert (=> b!2675401 m!3042005))

(assert (=> b!2675401 m!3042007))

(declare-fun m!3042017 () Bool)

(assert (=> b!2675404 m!3042017))

(declare-fun m!3042019 () Bool)

(assert (=> bm!172590 m!3042019))

(assert (=> bm!172588 m!3042005))

(declare-fun m!3042021 () Bool)

(assert (=> bm!172589 m!3042021))

(assert (=> b!2675160 d!764916))

(declare-fun b!2675426 () Bool)

(declare-fun e!1686408 () Bool)

(declare-fun lt!942062 () Option!6094)

(declare-fun contains!5923 (List!30889 Rule!9206) Bool)

(declare-fun get!9677 (Option!6094) tuple2!30242)

(assert (=> b!2675426 (= e!1686408 (contains!5923 rules!1712 (rule!7111 (_1!17663 (get!9677 lt!942062)))))))

(declare-fun d!764952 () Bool)

(declare-fun e!1686406 () Bool)

(assert (=> d!764952 e!1686406))

(declare-fun res!1124826 () Bool)

(assert (=> d!764952 (=> res!1124826 e!1686406)))

(declare-fun isEmpty!17618 (Option!6094) Bool)

(assert (=> d!764952 (= res!1124826 (isEmpty!17618 lt!942062))))

(declare-fun e!1686407 () Option!6094)

(assert (=> d!764952 (= lt!942062 e!1686407)))

(declare-fun c!431087 () Bool)

(assert (=> d!764952 (= c!431087 (and ((_ is Cons!30789) rules!1712) ((_ is Nil!30789) (t!223760 rules!1712))))))

(declare-fun lt!942065 () Unit!45001)

(declare-fun lt!942064 () Unit!45001)

(assert (=> d!764952 (= lt!942065 lt!942064)))

(declare-fun isPrefix!2457 (List!30888 List!30888) Bool)

(assert (=> d!764952 (isPrefix!2457 (++!7513 lt!941945 lt!941939) (++!7513 lt!941945 lt!941939))))

(declare-fun lemmaIsPrefixRefl!1583 (List!30888 List!30888) Unit!45001)

(assert (=> d!764952 (= lt!942064 (lemmaIsPrefixRefl!1583 (++!7513 lt!941945 lt!941939) (++!7513 lt!941945 lt!941939)))))

(declare-fun rulesValidInductive!1637 (LexerInterface!4300 List!30889) Bool)

(assert (=> d!764952 (rulesValidInductive!1637 thiss!14116 rules!1712)))

(assert (=> d!764952 (= (maxPrefix!2338 thiss!14116 rules!1712 (++!7513 lt!941945 lt!941939)) lt!942062)))

(declare-fun b!2675427 () Bool)

(declare-fun lt!942061 () Option!6094)

(declare-fun lt!942063 () Option!6094)

(assert (=> b!2675427 (= e!1686407 (ite (and ((_ is None!6093) lt!942061) ((_ is None!6093) lt!942063)) None!6093 (ite ((_ is None!6093) lt!942063) lt!942061 (ite ((_ is None!6093) lt!942061) lt!942063 (ite (>= (size!23793 (_1!17663 (v!32644 lt!942061))) (size!23793 (_1!17663 (v!32644 lt!942063)))) lt!942061 lt!942063)))))))

(declare-fun call!172600 () Option!6094)

(assert (=> b!2675427 (= lt!942061 call!172600)))

(assert (=> b!2675427 (= lt!942063 (maxPrefix!2338 thiss!14116 (t!223760 rules!1712) (++!7513 lt!941945 lt!941939)))))

(declare-fun b!2675428 () Bool)

(declare-fun res!1124827 () Bool)

(assert (=> b!2675428 (=> (not res!1124827) (not e!1686408))))

(assert (=> b!2675428 (= res!1124827 (< (size!23797 (_2!17663 (get!9677 lt!942062))) (size!23797 (++!7513 lt!941945 lt!941939))))))

(declare-fun b!2675429 () Bool)

(declare-fun res!1124824 () Bool)

(assert (=> b!2675429 (=> (not res!1124824) (not e!1686408))))

(declare-fun apply!7386 (TokenValueInjection!9290 BalanceConc!18886) TokenValue!4925)

(declare-fun seqFromList!3205 (List!30888) BalanceConc!18886)

(assert (=> b!2675429 (= res!1124824 (= (value!151640 (_1!17663 (get!9677 lt!942062))) (apply!7386 (transformation!4703 (rule!7111 (_1!17663 (get!9677 lt!942062)))) (seqFromList!3205 (originalCharacters!5469 (_1!17663 (get!9677 lt!942062)))))))))

(declare-fun bm!172595 () Bool)

(declare-fun maxPrefixOneRule!1486 (LexerInterface!4300 Rule!9206 List!30888) Option!6094)

(assert (=> bm!172595 (= call!172600 (maxPrefixOneRule!1486 thiss!14116 (h!36209 rules!1712) (++!7513 lt!941945 lt!941939)))))

(declare-fun b!2675430 () Bool)

(assert (=> b!2675430 (= e!1686406 e!1686408)))

(declare-fun res!1124825 () Bool)

(assert (=> b!2675430 (=> (not res!1124825) (not e!1686408))))

(declare-fun isDefined!4842 (Option!6094) Bool)

(assert (=> b!2675430 (= res!1124825 (isDefined!4842 lt!942062))))

(declare-fun b!2675431 () Bool)

(declare-fun res!1124829 () Bool)

(assert (=> b!2675431 (=> (not res!1124829) (not e!1686408))))

(declare-fun matchR!3628 (Regex!7847 List!30888) Bool)

(assert (=> b!2675431 (= res!1124829 (matchR!3628 (regex!4703 (rule!7111 (_1!17663 (get!9677 lt!942062)))) (list!11629 (charsOf!2966 (_1!17663 (get!9677 lt!942062))))))))

(declare-fun b!2675432 () Bool)

(declare-fun res!1124828 () Bool)

(assert (=> b!2675432 (=> (not res!1124828) (not e!1686408))))

(assert (=> b!2675432 (= res!1124828 (= (++!7513 (list!11629 (charsOf!2966 (_1!17663 (get!9677 lt!942062)))) (_2!17663 (get!9677 lt!942062))) (++!7513 lt!941945 lt!941939)))))

(declare-fun b!2675433 () Bool)

(declare-fun res!1124830 () Bool)

(assert (=> b!2675433 (=> (not res!1124830) (not e!1686408))))

(assert (=> b!2675433 (= res!1124830 (= (list!11629 (charsOf!2966 (_1!17663 (get!9677 lt!942062)))) (originalCharacters!5469 (_1!17663 (get!9677 lt!942062)))))))

(declare-fun b!2675434 () Bool)

(assert (=> b!2675434 (= e!1686407 call!172600)))

(assert (= (and d!764952 c!431087) b!2675434))

(assert (= (and d!764952 (not c!431087)) b!2675427))

(assert (= (or b!2675434 b!2675427) bm!172595))

(assert (= (and d!764952 (not res!1124826)) b!2675430))

(assert (= (and b!2675430 res!1124825) b!2675433))

(assert (= (and b!2675433 res!1124830) b!2675428))

(assert (= (and b!2675428 res!1124827) b!2675432))

(assert (= (and b!2675432 res!1124828) b!2675429))

(assert (= (and b!2675429 res!1124824) b!2675431))

(assert (= (and b!2675431 res!1124829) b!2675426))

(assert (=> b!2675427 m!3041641))

(declare-fun m!3042023 () Bool)

(assert (=> b!2675427 m!3042023))

(assert (=> bm!172595 m!3041641))

(declare-fun m!3042025 () Bool)

(assert (=> bm!172595 m!3042025))

(declare-fun m!3042027 () Bool)

(assert (=> b!2675430 m!3042027))

(declare-fun m!3042029 () Bool)

(assert (=> b!2675432 m!3042029))

(declare-fun m!3042031 () Bool)

(assert (=> b!2675432 m!3042031))

(assert (=> b!2675432 m!3042031))

(declare-fun m!3042033 () Bool)

(assert (=> b!2675432 m!3042033))

(assert (=> b!2675432 m!3042033))

(declare-fun m!3042035 () Bool)

(assert (=> b!2675432 m!3042035))

(declare-fun m!3042037 () Bool)

(assert (=> d!764952 m!3042037))

(assert (=> d!764952 m!3041641))

(assert (=> d!764952 m!3041641))

(declare-fun m!3042039 () Bool)

(assert (=> d!764952 m!3042039))

(assert (=> d!764952 m!3041641))

(assert (=> d!764952 m!3041641))

(declare-fun m!3042041 () Bool)

(assert (=> d!764952 m!3042041))

(declare-fun m!3042043 () Bool)

(assert (=> d!764952 m!3042043))

(assert (=> b!2675433 m!3042029))

(assert (=> b!2675433 m!3042031))

(assert (=> b!2675433 m!3042031))

(assert (=> b!2675433 m!3042033))

(assert (=> b!2675429 m!3042029))

(declare-fun m!3042045 () Bool)

(assert (=> b!2675429 m!3042045))

(assert (=> b!2675429 m!3042045))

(declare-fun m!3042047 () Bool)

(assert (=> b!2675429 m!3042047))

(assert (=> b!2675428 m!3042029))

(declare-fun m!3042049 () Bool)

(assert (=> b!2675428 m!3042049))

(assert (=> b!2675428 m!3041641))

(declare-fun m!3042051 () Bool)

(assert (=> b!2675428 m!3042051))

(assert (=> b!2675426 m!3042029))

(declare-fun m!3042053 () Bool)

(assert (=> b!2675426 m!3042053))

(assert (=> b!2675431 m!3042029))

(assert (=> b!2675431 m!3042031))

(assert (=> b!2675431 m!3042031))

(assert (=> b!2675431 m!3042033))

(assert (=> b!2675431 m!3042033))

(declare-fun m!3042055 () Bool)

(assert (=> b!2675431 m!3042055))

(assert (=> b!2675160 d!764952))

(declare-fun d!764954 () Bool)

(declare-fun lt!942103 () Bool)

(declare-fun e!1686441 () Bool)

(assert (=> d!764954 (= lt!942103 e!1686441)))

(declare-fun res!1124861 () Bool)

(assert (=> d!764954 (=> (not res!1124861) (not e!1686441))))

(declare-datatypes ((tuple2!30246 0))(
  ( (tuple2!30247 (_1!17665 BalanceConc!18888) (_2!17665 BalanceConc!18886)) )
))
(declare-fun lex!1935 (LexerInterface!4300 List!30889 BalanceConc!18886) tuple2!30246)

(assert (=> d!764954 (= res!1124861 (= (list!11632 (_1!17665 (lex!1935 thiss!14116 rules!1712 (print!1679 thiss!14116 (singletonSeq!2100 (h!36210 l!4335)))))) (list!11632 (singletonSeq!2100 (h!36210 l!4335)))))))

(declare-fun e!1686440 () Bool)

(assert (=> d!764954 (= lt!942103 e!1686440)))

(declare-fun res!1124860 () Bool)

(assert (=> d!764954 (=> (not res!1124860) (not e!1686440))))

(declare-fun lt!942104 () tuple2!30246)

(assert (=> d!764954 (= res!1124860 (= (size!23796 (_1!17665 lt!942104)) 1))))

(assert (=> d!764954 (= lt!942104 (lex!1935 thiss!14116 rules!1712 (print!1679 thiss!14116 (singletonSeq!2100 (h!36210 l!4335)))))))

(assert (=> d!764954 (not (isEmpty!17613 rules!1712))))

(assert (=> d!764954 (= (rulesProduceIndividualToken!2012 thiss!14116 rules!1712 (h!36210 l!4335)) lt!942103)))

(declare-fun b!2675506 () Bool)

(declare-fun res!1124859 () Bool)

(assert (=> b!2675506 (=> (not res!1124859) (not e!1686440))))

(assert (=> b!2675506 (= res!1124859 (= (apply!7383 (_1!17665 lt!942104) 0) (h!36210 l!4335)))))

(declare-fun b!2675507 () Bool)

(declare-fun isEmpty!17619 (BalanceConc!18886) Bool)

(assert (=> b!2675507 (= e!1686440 (isEmpty!17619 (_2!17665 lt!942104)))))

(declare-fun b!2675508 () Bool)

(assert (=> b!2675508 (= e!1686441 (isEmpty!17619 (_2!17665 (lex!1935 thiss!14116 rules!1712 (print!1679 thiss!14116 (singletonSeq!2100 (h!36210 l!4335)))))))))

(assert (= (and d!764954 res!1124860) b!2675506))

(assert (= (and b!2675506 res!1124859) b!2675507))

(assert (= (and d!764954 res!1124861) b!2675508))

(assert (=> d!764954 m!3041675))

(declare-fun m!3042125 () Bool)

(assert (=> d!764954 m!3042125))

(assert (=> d!764954 m!3041681))

(declare-fun m!3042127 () Bool)

(assert (=> d!764954 m!3042127))

(assert (=> d!764954 m!3041675))

(declare-fun m!3042129 () Bool)

(assert (=> d!764954 m!3042129))

(assert (=> d!764954 m!3042129))

(declare-fun m!3042131 () Bool)

(assert (=> d!764954 m!3042131))

(assert (=> d!764954 m!3041675))

(declare-fun m!3042133 () Bool)

(assert (=> d!764954 m!3042133))

(declare-fun m!3042135 () Bool)

(assert (=> b!2675506 m!3042135))

(declare-fun m!3042137 () Bool)

(assert (=> b!2675507 m!3042137))

(assert (=> b!2675508 m!3041675))

(assert (=> b!2675508 m!3041675))

(assert (=> b!2675508 m!3042129))

(assert (=> b!2675508 m!3042129))

(assert (=> b!2675508 m!3042131))

(declare-fun m!3042139 () Bool)

(assert (=> b!2675508 m!3042139))

(assert (=> b!2675159 d!764954))

(declare-fun d!764962 () Bool)

(declare-fun lt!942105 () Bool)

(declare-fun e!1686447 () Bool)

(assert (=> d!764962 (= lt!942105 e!1686447)))

(declare-fun res!1124864 () Bool)

(assert (=> d!764962 (=> (not res!1124864) (not e!1686447))))

(assert (=> d!764962 (= res!1124864 (= (list!11632 (_1!17665 (lex!1935 thiss!14116 rules!1712 (print!1679 thiss!14116 (singletonSeq!2100 separatorToken!152))))) (list!11632 (singletonSeq!2100 separatorToken!152))))))

(declare-fun e!1686446 () Bool)

(assert (=> d!764962 (= lt!942105 e!1686446)))

(declare-fun res!1124863 () Bool)

(assert (=> d!764962 (=> (not res!1124863) (not e!1686446))))

(declare-fun lt!942106 () tuple2!30246)

(assert (=> d!764962 (= res!1124863 (= (size!23796 (_1!17665 lt!942106)) 1))))

(assert (=> d!764962 (= lt!942106 (lex!1935 thiss!14116 rules!1712 (print!1679 thiss!14116 (singletonSeq!2100 separatorToken!152))))))

(assert (=> d!764962 (not (isEmpty!17613 rules!1712))))

(assert (=> d!764962 (= (rulesProduceIndividualToken!2012 thiss!14116 rules!1712 separatorToken!152) lt!942105)))

(declare-fun b!2675518 () Bool)

(declare-fun res!1124862 () Bool)

(assert (=> b!2675518 (=> (not res!1124862) (not e!1686446))))

(assert (=> b!2675518 (= res!1124862 (= (apply!7383 (_1!17665 lt!942106) 0) separatorToken!152))))

(declare-fun b!2675519 () Bool)

(assert (=> b!2675519 (= e!1686446 (isEmpty!17619 (_2!17665 lt!942106)))))

(declare-fun b!2675520 () Bool)

(assert (=> b!2675520 (= e!1686447 (isEmpty!17619 (_2!17665 (lex!1935 thiss!14116 rules!1712 (print!1679 thiss!14116 (singletonSeq!2100 separatorToken!152))))))))

(assert (= (and d!764962 res!1124863) b!2675518))

(assert (= (and b!2675518 res!1124862) b!2675519))

(assert (= (and d!764962 res!1124864) b!2675520))

(declare-fun m!3042141 () Bool)

(assert (=> d!764962 m!3042141))

(declare-fun m!3042143 () Bool)

(assert (=> d!764962 m!3042143))

(assert (=> d!764962 m!3041681))

(declare-fun m!3042145 () Bool)

(assert (=> d!764962 m!3042145))

(assert (=> d!764962 m!3042141))

(declare-fun m!3042147 () Bool)

(assert (=> d!764962 m!3042147))

(assert (=> d!764962 m!3042147))

(declare-fun m!3042149 () Bool)

(assert (=> d!764962 m!3042149))

(assert (=> d!764962 m!3042141))

(declare-fun m!3042151 () Bool)

(assert (=> d!764962 m!3042151))

(declare-fun m!3042153 () Bool)

(assert (=> b!2675518 m!3042153))

(declare-fun m!3042155 () Bool)

(assert (=> b!2675519 m!3042155))

(assert (=> b!2675520 m!3042141))

(assert (=> b!2675520 m!3042141))

(assert (=> b!2675520 m!3042147))

(assert (=> b!2675520 m!3042147))

(assert (=> b!2675520 m!3042149))

(declare-fun m!3042157 () Bool)

(assert (=> b!2675520 m!3042157))

(assert (=> b!2675170 d!764962))

(declare-fun d!764964 () Bool)

(declare-fun lt!942109 () Bool)

(declare-fun content!4375 (List!30890) (InoxSet Token!8876))

(assert (=> d!764964 (= lt!942109 (select (content!4375 l!4335) (h!36210 l!4335)))))

(declare-fun e!1686474 () Bool)

(assert (=> d!764964 (= lt!942109 e!1686474)))

(declare-fun res!1124869 () Bool)

(assert (=> d!764964 (=> (not res!1124869) (not e!1686474))))

(assert (=> d!764964 (= res!1124869 ((_ is Cons!30790) l!4335))))

(assert (=> d!764964 (= (contains!5921 l!4335 (h!36210 l!4335)) lt!942109)))

(declare-fun b!2675543 () Bool)

(declare-fun e!1686475 () Bool)

(assert (=> b!2675543 (= e!1686474 e!1686475)))

(declare-fun res!1124870 () Bool)

(assert (=> b!2675543 (=> res!1124870 e!1686475)))

(assert (=> b!2675543 (= res!1124870 (= (h!36210 l!4335) (h!36210 l!4335)))))

(declare-fun b!2675544 () Bool)

(assert (=> b!2675544 (= e!1686475 (contains!5921 (t!223761 l!4335) (h!36210 l!4335)))))

(assert (= (and d!764964 res!1124869) b!2675543))

(assert (= (and b!2675543 (not res!1124870)) b!2675544))

(declare-fun m!3042159 () Bool)

(assert (=> d!764964 m!3042159))

(declare-fun m!3042161 () Bool)

(assert (=> d!764964 m!3042161))

(declare-fun m!3042163 () Bool)

(assert (=> b!2675544 m!3042163))

(assert (=> b!2675169 d!764964))

(declare-fun d!764966 () Bool)

(declare-fun res!1124871 () Bool)

(declare-fun e!1686476 () Bool)

(assert (=> d!764966 (=> (not res!1124871) (not e!1686476))))

(assert (=> d!764966 (= res!1124871 (not (isEmpty!17616 (originalCharacters!5469 (h!36210 l!4335)))))))

(assert (=> d!764966 (= (inv!41802 (h!36210 l!4335)) e!1686476)))

(declare-fun b!2675545 () Bool)

(declare-fun res!1124872 () Bool)

(assert (=> b!2675545 (=> (not res!1124872) (not e!1686476))))

(assert (=> b!2675545 (= res!1124872 (= (originalCharacters!5469 (h!36210 l!4335)) (list!11629 (dynLambda!13378 (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))) (value!151640 (h!36210 l!4335))))))))

(declare-fun b!2675546 () Bool)

(assert (=> b!2675546 (= e!1686476 (= (size!23793 (h!36210 l!4335)) (size!23797 (originalCharacters!5469 (h!36210 l!4335)))))))

(assert (= (and d!764966 res!1124871) b!2675545))

(assert (= (and b!2675545 res!1124872) b!2675546))

(declare-fun b_lambda!81601 () Bool)

(assert (=> (not b_lambda!81601) (not b!2675545)))

(assert (=> b!2675545 t!223771))

(declare-fun b_and!197803 () Bool)

(assert (= b_and!197775 (and (=> t!223771 result!185312) b_and!197803)))

(assert (=> b!2675545 t!223773))

(declare-fun b_and!197805 () Bool)

(assert (= b_and!197777 (and (=> t!223773 result!185314) b_and!197805)))

(assert (=> b!2675545 t!223775))

(declare-fun b_and!197807 () Bool)

(assert (= b_and!197779 (and (=> t!223775 result!185316) b_and!197807)))

(declare-fun m!3042173 () Bool)

(assert (=> d!764966 m!3042173))

(assert (=> b!2675545 m!3041837))

(assert (=> b!2675545 m!3041837))

(declare-fun m!3042175 () Bool)

(assert (=> b!2675545 m!3042175))

(declare-fun m!3042177 () Bool)

(assert (=> b!2675546 m!3042177))

(assert (=> b!2675151 d!764966))

(declare-fun d!764968 () Bool)

(assert (=> d!764968 (= (inv!41799 (tag!5205 (rule!7111 separatorToken!152))) (= (mod (str.len (value!151639 (tag!5205 (rule!7111 separatorToken!152)))) 2) 0))))

(assert (=> b!2675162 d!764968))

(declare-fun d!764970 () Bool)

(declare-fun res!1124873 () Bool)

(declare-fun e!1686483 () Bool)

(assert (=> d!764970 (=> (not res!1124873) (not e!1686483))))

(assert (=> d!764970 (= res!1124873 (semiInverseModEq!1948 (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152))) (toValue!6649 (transformation!4703 (rule!7111 separatorToken!152)))))))

(assert (=> d!764970 (= (inv!41803 (transformation!4703 (rule!7111 separatorToken!152))) e!1686483)))

(declare-fun b!2675554 () Bool)

(assert (=> b!2675554 (= e!1686483 (equivClasses!1849 (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152))) (toValue!6649 (transformation!4703 (rule!7111 separatorToken!152)))))))

(assert (= (and d!764970 res!1124873) b!2675554))

(declare-fun m!3042179 () Bool)

(assert (=> d!764970 m!3042179))

(declare-fun m!3042181 () Bool)

(assert (=> b!2675554 m!3042181))

(assert (=> b!2675162 d!764970))

(declare-fun d!764972 () Bool)

(declare-fun res!1124878 () Bool)

(declare-fun e!1686496 () Bool)

(assert (=> d!764972 (=> res!1124878 e!1686496)))

(assert (=> d!764972 (= res!1124878 (not ((_ is Cons!30789) rules!1712)))))

(assert (=> d!764972 (= (sepAndNonSepRulesDisjointChars!1276 rules!1712 rules!1712) e!1686496)))

(declare-fun b!2675571 () Bool)

(declare-fun e!1686497 () Bool)

(assert (=> b!2675571 (= e!1686496 e!1686497)))

(declare-fun res!1124879 () Bool)

(assert (=> b!2675571 (=> (not res!1124879) (not e!1686497))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!555 (Rule!9206 List!30889) Bool)

(assert (=> b!2675571 (= res!1124879 (ruleDisjointCharsFromAllFromOtherType!555 (h!36209 rules!1712) rules!1712))))

(declare-fun b!2675572 () Bool)

(assert (=> b!2675572 (= e!1686497 (sepAndNonSepRulesDisjointChars!1276 rules!1712 (t!223760 rules!1712)))))

(assert (= (and d!764972 (not res!1124878)) b!2675571))

(assert (= (and b!2675571 res!1124879) b!2675572))

(declare-fun m!3042187 () Bool)

(assert (=> b!2675571 m!3042187))

(declare-fun m!3042189 () Bool)

(assert (=> b!2675572 m!3042189))

(assert (=> b!2675161 d!764972))

(declare-fun bs!479760 () Bool)

(declare-fun d!764978 () Bool)

(assert (= bs!479760 (and d!764978 b!2675165)))

(declare-fun lambda!99950 () Int)

(assert (=> bs!479760 (not (= lambda!99950 lambda!99937))))

(declare-fun bs!479761 () Bool)

(assert (= bs!479761 (and d!764978 b!2675160)))

(assert (=> bs!479761 (= lambda!99950 lambda!99938)))

(declare-fun bs!479762 () Bool)

(assert (= bs!479762 (and d!764978 b!2675401)))

(assert (=> bs!479762 (= lambda!99950 lambda!99944)))

(declare-fun b!2675581 () Bool)

(declare-fun e!1686506 () Bool)

(assert (=> b!2675581 (= e!1686506 true)))

(declare-fun b!2675580 () Bool)

(declare-fun e!1686505 () Bool)

(assert (=> b!2675580 (= e!1686505 e!1686506)))

(declare-fun b!2675579 () Bool)

(declare-fun e!1686504 () Bool)

(assert (=> b!2675579 (= e!1686504 e!1686505)))

(assert (=> d!764978 e!1686504))

(assert (= b!2675580 b!2675581))

(assert (= b!2675579 b!2675580))

(assert (= (and d!764978 ((_ is Cons!30789) rules!1712)) b!2675579))

(assert (=> b!2675581 (< (dynLambda!13372 order!16975 (toValue!6649 (transformation!4703 (h!36209 rules!1712)))) (dynLambda!13373 order!16977 lambda!99950))))

(assert (=> b!2675581 (< (dynLambda!13374 order!16979 (toChars!6508 (transformation!4703 (h!36209 rules!1712)))) (dynLambda!13373 order!16977 lambda!99950))))

(assert (=> d!764978 true))

(declare-fun lt!942112 () Bool)

(assert (=> d!764978 (= lt!942112 (forall!6520 l!4335 lambda!99950))))

(declare-fun e!1686503 () Bool)

(assert (=> d!764978 (= lt!942112 e!1686503)))

(declare-fun res!1124885 () Bool)

(assert (=> d!764978 (=> res!1124885 e!1686503)))

(assert (=> d!764978 (= res!1124885 (not ((_ is Cons!30790) l!4335)))))

(assert (=> d!764978 (not (isEmpty!17613 rules!1712))))

(assert (=> d!764978 (= (rulesProduceEachTokenIndividuallyList!1522 thiss!14116 rules!1712 l!4335) lt!942112)))

(declare-fun b!2675577 () Bool)

(declare-fun e!1686502 () Bool)

(assert (=> b!2675577 (= e!1686503 e!1686502)))

(declare-fun res!1124884 () Bool)

(assert (=> b!2675577 (=> (not res!1124884) (not e!1686502))))

(assert (=> b!2675577 (= res!1124884 (rulesProduceIndividualToken!2012 thiss!14116 rules!1712 (h!36210 l!4335)))))

(declare-fun b!2675578 () Bool)

(assert (=> b!2675578 (= e!1686502 (rulesProduceEachTokenIndividuallyList!1522 thiss!14116 rules!1712 (t!223761 l!4335)))))

(assert (= (and d!764978 (not res!1124885)) b!2675577))

(assert (= (and b!2675577 res!1124884) b!2675578))

(declare-fun m!3042191 () Bool)

(assert (=> d!764978 m!3042191))

(assert (=> d!764978 m!3041681))

(assert (=> b!2675577 m!3041651))

(declare-fun m!3042193 () Bool)

(assert (=> b!2675578 m!3042193))

(assert (=> b!2675150 d!764978))

(declare-fun b!2675586 () Bool)

(declare-fun e!1686509 () Bool)

(declare-fun tp_is_empty!13825 () Bool)

(declare-fun tp!846023 () Bool)

(assert (=> b!2675586 (= e!1686509 (and tp_is_empty!13825 tp!846023))))

(assert (=> b!2675153 (= tp!845946 e!1686509)))

(assert (= (and b!2675153 ((_ is Cons!30788) (originalCharacters!5469 (h!36210 l!4335)))) b!2675586))

(declare-fun e!1686512 () Bool)

(assert (=> b!2675163 (= tp!845954 e!1686512)))

(declare-fun b!2675597 () Bool)

(assert (=> b!2675597 (= e!1686512 tp_is_empty!13825)))

(declare-fun b!2675599 () Bool)

(declare-fun tp!846034 () Bool)

(assert (=> b!2675599 (= e!1686512 tp!846034)))

(declare-fun b!2675600 () Bool)

(declare-fun tp!846038 () Bool)

(declare-fun tp!846035 () Bool)

(assert (=> b!2675600 (= e!1686512 (and tp!846038 tp!846035))))

(declare-fun b!2675598 () Bool)

(declare-fun tp!846037 () Bool)

(declare-fun tp!846036 () Bool)

(assert (=> b!2675598 (= e!1686512 (and tp!846037 tp!846036))))

(assert (= (and b!2675163 ((_ is ElementMatch!7847) (regex!4703 (h!36209 rules!1712)))) b!2675597))

(assert (= (and b!2675163 ((_ is Concat!12773) (regex!4703 (h!36209 rules!1712)))) b!2675598))

(assert (= (and b!2675163 ((_ is Star!7847) (regex!4703 (h!36209 rules!1712)))) b!2675599))

(assert (= (and b!2675163 ((_ is Union!7847) (regex!4703 (h!36209 rules!1712)))) b!2675600))

(declare-fun b!2675601 () Bool)

(declare-fun e!1686513 () Bool)

(declare-fun tp!846039 () Bool)

(assert (=> b!2675601 (= e!1686513 (and tp_is_empty!13825 tp!846039))))

(assert (=> b!2675168 (= tp!845951 e!1686513)))

(assert (= (and b!2675168 ((_ is Cons!30788) (originalCharacters!5469 separatorToken!152))) b!2675601))

(declare-fun e!1686514 () Bool)

(assert (=> b!2675155 (= tp!845955 e!1686514)))

(declare-fun b!2675602 () Bool)

(assert (=> b!2675602 (= e!1686514 tp_is_empty!13825)))

(declare-fun b!2675604 () Bool)

(declare-fun tp!846040 () Bool)

(assert (=> b!2675604 (= e!1686514 tp!846040)))

(declare-fun b!2675605 () Bool)

(declare-fun tp!846044 () Bool)

(declare-fun tp!846041 () Bool)

(assert (=> b!2675605 (= e!1686514 (and tp!846044 tp!846041))))

(declare-fun b!2675603 () Bool)

(declare-fun tp!846043 () Bool)

(declare-fun tp!846042 () Bool)

(assert (=> b!2675603 (= e!1686514 (and tp!846043 tp!846042))))

(assert (= (and b!2675155 ((_ is ElementMatch!7847) (regex!4703 (rule!7111 (h!36210 l!4335))))) b!2675602))

(assert (= (and b!2675155 ((_ is Concat!12773) (regex!4703 (rule!7111 (h!36210 l!4335))))) b!2675603))

(assert (= (and b!2675155 ((_ is Star!7847) (regex!4703 (rule!7111 (h!36210 l!4335))))) b!2675604))

(assert (= (and b!2675155 ((_ is Union!7847) (regex!4703 (rule!7111 (h!36210 l!4335))))) b!2675605))

(declare-fun b!2675616 () Bool)

(declare-fun b_free!75413 () Bool)

(declare-fun b_next!76117 () Bool)

(assert (=> b!2675616 (= b_free!75413 (not b_next!76117))))

(declare-fun tp!846053 () Bool)

(declare-fun b_and!197813 () Bool)

(assert (=> b!2675616 (= tp!846053 b_and!197813)))

(declare-fun b_free!75415 () Bool)

(declare-fun b_next!76119 () Bool)

(assert (=> b!2675616 (= b_free!75415 (not b_next!76119))))

(declare-fun tb!150065 () Bool)

(declare-fun t!223807 () Bool)

(assert (=> (and b!2675616 (= (toChars!6508 (transformation!4703 (h!36209 (t!223760 rules!1712)))) (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152)))) t!223807) tb!150065))

(declare-fun result!185354 () Bool)

(assert (= result!185354 result!185304))

(assert (=> b!2675282 t!223807))

(declare-fun t!223809 () Bool)

(declare-fun tb!150067 () Bool)

(assert (=> (and b!2675616 (= (toChars!6508 (transformation!4703 (h!36209 (t!223760 rules!1712)))) (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335))))) t!223809) tb!150067))

(declare-fun result!185356 () Bool)

(assert (= result!185356 result!185312))

(assert (=> d!764910 t!223809))

(assert (=> b!2675545 t!223809))

(declare-fun b_and!197815 () Bool)

(declare-fun tp!846054 () Bool)

(assert (=> b!2675616 (= tp!846054 (and (=> t!223807 result!185354) (=> t!223809 result!185356) b_and!197815))))

(declare-fun e!1686526 () Bool)

(assert (=> b!2675616 (= e!1686526 (and tp!846053 tp!846054))))

(declare-fun b!2675615 () Bool)

(declare-fun e!1686525 () Bool)

(declare-fun tp!846056 () Bool)

(assert (=> b!2675615 (= e!1686525 (and tp!846056 (inv!41799 (tag!5205 (h!36209 (t!223760 rules!1712)))) (inv!41803 (transformation!4703 (h!36209 (t!223760 rules!1712)))) e!1686526))))

(declare-fun b!2675614 () Bool)

(declare-fun e!1686523 () Bool)

(declare-fun tp!846055 () Bool)

(assert (=> b!2675614 (= e!1686523 (and e!1686525 tp!846055))))

(assert (=> b!2675166 (= tp!845949 e!1686523)))

(assert (= b!2675615 b!2675616))

(assert (= b!2675614 b!2675615))

(assert (= (and b!2675166 ((_ is Cons!30789) (t!223760 rules!1712))) b!2675614))

(declare-fun m!3042195 () Bool)

(assert (=> b!2675615 m!3042195))

(declare-fun m!3042197 () Bool)

(assert (=> b!2675615 m!3042197))

(declare-fun b!2675630 () Bool)

(declare-fun b_free!75417 () Bool)

(declare-fun b_next!76121 () Bool)

(assert (=> b!2675630 (= b_free!75417 (not b_next!76121))))

(declare-fun tp!846069 () Bool)

(declare-fun b_and!197817 () Bool)

(assert (=> b!2675630 (= tp!846069 b_and!197817)))

(declare-fun b_free!75419 () Bool)

(declare-fun b_next!76123 () Bool)

(assert (=> b!2675630 (= b_free!75419 (not b_next!76123))))

(declare-fun tb!150069 () Bool)

(declare-fun t!223811 () Bool)

(assert (=> (and b!2675630 (= (toChars!6508 (transformation!4703 (rule!7111 (h!36210 (t!223761 l!4335))))) (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152)))) t!223811) tb!150069))

(declare-fun result!185360 () Bool)

(assert (= result!185360 result!185304))

(assert (=> b!2675282 t!223811))

(declare-fun t!223813 () Bool)

(declare-fun tb!150071 () Bool)

(assert (=> (and b!2675630 (= (toChars!6508 (transformation!4703 (rule!7111 (h!36210 (t!223761 l!4335))))) (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335))))) t!223813) tb!150071))

(declare-fun result!185362 () Bool)

(assert (= result!185362 result!185312))

(assert (=> d!764910 t!223813))

(assert (=> b!2675545 t!223813))

(declare-fun b_and!197819 () Bool)

(declare-fun tp!846070 () Bool)

(assert (=> b!2675630 (= tp!846070 (and (=> t!223811 result!185360) (=> t!223813 result!185362) b_and!197819))))

(declare-fun b!2675628 () Bool)

(declare-fun e!1686543 () Bool)

(declare-fun tp!846067 () Bool)

(declare-fun e!1686539 () Bool)

(assert (=> b!2675628 (= e!1686539 (and (inv!21 (value!151640 (h!36210 (t!223761 l!4335)))) e!1686543 tp!846067))))

(declare-fun e!1686542 () Bool)

(assert (=> b!2675630 (= e!1686542 (and tp!846069 tp!846070))))

(declare-fun tp!846068 () Bool)

(declare-fun b!2675627 () Bool)

(declare-fun e!1686544 () Bool)

(assert (=> b!2675627 (= e!1686544 (and (inv!41802 (h!36210 (t!223761 l!4335))) e!1686539 tp!846068))))

(declare-fun b!2675629 () Bool)

(declare-fun tp!846071 () Bool)

(assert (=> b!2675629 (= e!1686543 (and tp!846071 (inv!41799 (tag!5205 (rule!7111 (h!36210 (t!223761 l!4335))))) (inv!41803 (transformation!4703 (rule!7111 (h!36210 (t!223761 l!4335))))) e!1686542))))

(assert (=> b!2675151 (= tp!845947 e!1686544)))

(assert (= b!2675629 b!2675630))

(assert (= b!2675628 b!2675629))

(assert (= b!2675627 b!2675628))

(assert (= (and b!2675151 ((_ is Cons!30790) (t!223761 l!4335))) b!2675627))

(declare-fun m!3042199 () Bool)

(assert (=> b!2675628 m!3042199))

(declare-fun m!3042201 () Bool)

(assert (=> b!2675627 m!3042201))

(declare-fun m!3042203 () Bool)

(assert (=> b!2675629 m!3042203))

(declare-fun m!3042205 () Bool)

(assert (=> b!2675629 m!3042205))

(declare-fun e!1686545 () Bool)

(assert (=> b!2675162 (= tp!845948 e!1686545)))

(declare-fun b!2675631 () Bool)

(assert (=> b!2675631 (= e!1686545 tp_is_empty!13825)))

(declare-fun b!2675633 () Bool)

(declare-fun tp!846072 () Bool)

(assert (=> b!2675633 (= e!1686545 tp!846072)))

(declare-fun b!2675634 () Bool)

(declare-fun tp!846076 () Bool)

(declare-fun tp!846073 () Bool)

(assert (=> b!2675634 (= e!1686545 (and tp!846076 tp!846073))))

(declare-fun b!2675632 () Bool)

(declare-fun tp!846075 () Bool)

(declare-fun tp!846074 () Bool)

(assert (=> b!2675632 (= e!1686545 (and tp!846075 tp!846074))))

(assert (= (and b!2675162 ((_ is ElementMatch!7847) (regex!4703 (rule!7111 separatorToken!152)))) b!2675631))

(assert (= (and b!2675162 ((_ is Concat!12773) (regex!4703 (rule!7111 separatorToken!152)))) b!2675632))

(assert (= (and b!2675162 ((_ is Star!7847) (regex!4703 (rule!7111 separatorToken!152)))) b!2675633))

(assert (= (and b!2675162 ((_ is Union!7847) (regex!4703 (rule!7111 separatorToken!152)))) b!2675634))

(declare-fun b!2675637 () Bool)

(declare-fun e!1686548 () Bool)

(assert (=> b!2675637 (= e!1686548 true)))

(declare-fun b!2675636 () Bool)

(declare-fun e!1686547 () Bool)

(assert (=> b!2675636 (= e!1686547 e!1686548)))

(declare-fun b!2675635 () Bool)

(declare-fun e!1686546 () Bool)

(assert (=> b!2675635 (= e!1686546 e!1686547)))

(assert (=> b!2675179 e!1686546))

(assert (= b!2675636 b!2675637))

(assert (= b!2675635 b!2675636))

(assert (= (and b!2675179 ((_ is Cons!30789) (t!223760 rules!1712))) b!2675635))

(assert (=> b!2675637 (< (dynLambda!13372 order!16975 (toValue!6649 (transformation!4703 (h!36209 (t!223760 rules!1712))))) (dynLambda!13373 order!16977 lambda!99938))))

(assert (=> b!2675637 (< (dynLambda!13374 order!16979 (toChars!6508 (transformation!4703 (h!36209 (t!223760 rules!1712))))) (dynLambda!13373 order!16977 lambda!99938))))

(declare-fun b_lambda!81613 () Bool)

(assert (= b_lambda!81583 (or b!2675165 b_lambda!81613)))

(declare-fun bs!479763 () Bool)

(declare-fun d!764980 () Bool)

(assert (= bs!479763 (and d!764980 b!2675165)))

(assert (=> bs!479763 (= (dynLambda!13377 lambda!99937 (h!36210 l!4335)) (not (isSeparator!4703 (rule!7111 (h!36210 l!4335)))))))

(assert (=> b!2675188 d!764980))

(declare-fun b_lambda!81615 () Bool)

(assert (= b_lambda!81601 (or (and b!2675154 b_free!75395 (= (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152))) (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))))) (and b!2675630 b_free!75419 (= (toChars!6508 (transformation!4703 (rule!7111 (h!36210 (t!223761 l!4335))))) (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))))) (and b!2675156 b_free!75399) (and b!2675149 b_free!75403 (= (toChars!6508 (transformation!4703 (h!36209 rules!1712))) (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))))) (and b!2675616 b_free!75415 (= (toChars!6508 (transformation!4703 (h!36209 (t!223760 rules!1712)))) (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))))) b_lambda!81615)))

(declare-fun b_lambda!81617 () Bool)

(assert (= b_lambda!81591 (or (and b!2675154 b_free!75395 (= (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152))) (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))))) (and b!2675630 b_free!75419 (= (toChars!6508 (transformation!4703 (rule!7111 (h!36210 (t!223761 l!4335))))) (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))))) (and b!2675156 b_free!75399) (and b!2675149 b_free!75403 (= (toChars!6508 (transformation!4703 (h!36209 rules!1712))) (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))))) (and b!2675616 b_free!75415 (= (toChars!6508 (transformation!4703 (h!36209 (t!223760 rules!1712)))) (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))))) b_lambda!81617)))

(declare-fun b_lambda!81619 () Bool)

(assert (= b_lambda!81589 (or b!2675160 b_lambda!81619)))

(declare-fun bs!479764 () Bool)

(declare-fun d!764982 () Bool)

(assert (= bs!479764 (and d!764982 b!2675160)))

(assert (=> bs!479764 (= (dynLambda!13377 lambda!99938 (h!36210 l!4335)) (rulesProduceIndividualToken!2012 thiss!14116 rules!1712 (h!36210 l!4335)))))

(assert (=> bs!479764 m!3041651))

(assert (=> d!764908 d!764982))

(declare-fun b_lambda!81621 () Bool)

(assert (= b_lambda!81587 (or (and b!2675149 b_free!75403 (= (toChars!6508 (transformation!4703 (h!36209 rules!1712))) (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152))))) (and b!2675154 b_free!75395) (and b!2675156 b_free!75399 (= (toChars!6508 (transformation!4703 (rule!7111 (h!36210 l!4335)))) (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152))))) (and b!2675630 b_free!75419 (= (toChars!6508 (transformation!4703 (rule!7111 (h!36210 (t!223761 l!4335))))) (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152))))) (and b!2675616 b_free!75415 (= (toChars!6508 (transformation!4703 (h!36209 (t!223760 rules!1712)))) (toChars!6508 (transformation!4703 (rule!7111 separatorToken!152))))) b_lambda!81621)))

(check-sat (not b_next!76117) (not b!2675430) (not b!2675601) (not bm!172590) (not b!2675629) (not d!764892) b_and!197815 (not b!2675303) (not d!764910) (not d!764912) (not b!2675405) (not b!2675289) (not b_lambda!81615) (not b!2675277) (not d!764978) (not b_next!76119) (not bm!172595) (not b!2675506) (not b!2675632) (not b!2675518) (not b!2675270) (not b_next!76105) (not b!2675572) (not b!2675426) (not d!764970) (not b!2675577) (not bs!479764) (not b!2675429) (not b!2675614) (not b!2675207) (not d!764962) (not b!2675204) b_and!197765 (not b!2675304) (not b!2675519) b_and!197813 (not b!2675200) (not d!764906) (not b_next!76103) (not d!764876) (not b!2675635) (not b!2675398) b_and!197757 (not b!2675544) (not d!764872) (not bm!172591) (not b_lambda!81621) (not b_next!76097) (not tb!150033) (not b!2675433) (not b!2675628) (not b!2675293) (not b_next!76123) (not b!2675404) (not b!2675258) (not b!2675260) (not b_next!76107) (not b!2675586) (not d!764914) b_and!197803 (not b!2675202) (not b!2675546) (not b_lambda!81617) (not b!2675427) (not b!2675268) (not b!2675578) (not b!2675545) (not d!764894) (not b_lambda!81619) (not d!764900) (not b!2675263) (not b_next!76121) (not b!2675627) (not b_next!76099) (not d!764908) (not b!2675633) (not b!2675579) b_and!197817 (not d!764874) tp_is_empty!13825 (not d!764954) (not b!2675401) (not b!2675599) (not bm!172588) (not b!2675428) (not b!2675598) (not b!2675282) (not b!2675431) (not b!2675508) b_and!197805 b_and!197807 (not b!2675571) (not b!2675605) b_and!197819 (not d!764966) (not b!2675274) (not tb!150039) (not b!2675554) (not b!2675189) (not b_next!76101) b_and!197761 (not b!2675292) (not b_lambda!81613) (not b!2675272) (not d!764902) (not b!2675603) (not bm!172589) (not d!764952) (not b!2675520) (not b!2675634) (not b!2675615) (not b!2675432) (not b!2675283) (not d!764964) (not b!2675288) (not b!2675395) (not b!2675604) (not b!2675600) (not b!2675507))
(check-sat (not b_next!76117) b_and!197815 (not b_next!76119) (not b_next!76105) b_and!197765 b_and!197813 (not b_next!76103) b_and!197757 (not b_next!76097) (not b_next!76123) (not b_next!76107) b_and!197803 (not b_next!76121) b_and!197761 (not b_next!76099) b_and!197817 b_and!197805 b_and!197807 (not b_next!76101) b_and!197819)
