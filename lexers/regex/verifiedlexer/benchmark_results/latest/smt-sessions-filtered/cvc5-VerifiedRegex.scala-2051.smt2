; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!104388 () Bool)

(assert start!104388)

(declare-fun b!1179931 () Bool)

(declare-fun b_free!28037 () Bool)

(declare-fun b_next!28741 () Bool)

(assert (=> b!1179931 (= b_free!28037 (not b_next!28741))))

(declare-fun tp!335949 () Bool)

(declare-fun b_and!80981 () Bool)

(assert (=> b!1179931 (= tp!335949 b_and!80981)))

(declare-fun b_free!28039 () Bool)

(declare-fun b_next!28743 () Bool)

(assert (=> b!1179931 (= b_free!28039 (not b_next!28743))))

(declare-fun tp!335955 () Bool)

(declare-fun b_and!80983 () Bool)

(assert (=> b!1179931 (= tp!335955 b_and!80983)))

(declare-fun b!1179936 () Bool)

(declare-fun b_free!28041 () Bool)

(declare-fun b_next!28745 () Bool)

(assert (=> b!1179936 (= b_free!28041 (not b_next!28745))))

(declare-fun tp!335953 () Bool)

(declare-fun b_and!80985 () Bool)

(assert (=> b!1179936 (= tp!335953 b_and!80985)))

(declare-fun b_free!28043 () Bool)

(declare-fun b_next!28747 () Bool)

(assert (=> b!1179936 (= b_free!28043 (not b_next!28747))))

(declare-fun tp!335951 () Bool)

(declare-fun b_and!80987 () Bool)

(assert (=> b!1179936 (= tp!335951 b_and!80987)))

(declare-fun b!1179951 () Bool)

(declare-fun e!757213 () Bool)

(assert (=> b!1179951 (= e!757213 true)))

(declare-fun b!1179950 () Bool)

(declare-fun e!757212 () Bool)

(assert (=> b!1179950 (= e!757212 e!757213)))

(declare-fun b!1179949 () Bool)

(declare-fun e!757211 () Bool)

(assert (=> b!1179949 (= e!757211 e!757212)))

(declare-fun b!1179927 () Bool)

(assert (=> b!1179927 e!757211))

(assert (= b!1179950 b!1179951))

(assert (= b!1179949 b!1179950))

(declare-datatypes ((C!6942 0))(
  ( (C!6943 (val!3767 Int)) )
))
(declare-datatypes ((List!11752 0))(
  ( (Nil!11728) (Cons!11728 (h!17129 C!6942) (t!111328 List!11752)) )
))
(declare-datatypes ((IArray!7693 0))(
  ( (IArray!7694 (innerList!3904 List!11752)) )
))
(declare-datatypes ((String!14209 0))(
  ( (String!14210 (value!66229 String)) )
))
(declare-datatypes ((Conc!3844 0))(
  ( (Node!3844 (left!10233 Conc!3844) (right!10563 Conc!3844) (csize!7918 Int) (cheight!4055 Int)) (Leaf!5896 (xs!6549 IArray!7693) (csize!7919 Int)) (Empty!3844) )
))
(declare-datatypes ((List!11753 0))(
  ( (Nil!11729) (Cons!11729 (h!17130 (_ BitVec 16)) (t!111329 List!11753)) )
))
(declare-datatypes ((BalanceConc!7710 0))(
  ( (BalanceConc!7711 (c!196656 Conc!3844)) )
))
(declare-datatypes ((TokenValue!2108 0))(
  ( (FloatLiteralValue!4216 (text!15201 List!11753)) (TokenValueExt!2107 (__x!7927 Int)) (Broken!10540 (value!66230 List!11753)) (Object!2131) (End!2108) (Def!2108) (Underscore!2108) (Match!2108) (Else!2108) (Error!2108) (Case!2108) (If!2108) (Extends!2108) (Abstract!2108) (Class!2108) (Val!2108) (DelimiterValue!4216 (del!2168 List!11753)) (KeywordValue!2114 (value!66231 List!11753)) (CommentValue!4216 (value!66232 List!11753)) (WhitespaceValue!4216 (value!66233 List!11753)) (IndentationValue!2108 (value!66234 List!11753)) (String!14211) (Int32!2108) (Broken!10541 (value!66235 List!11753)) (Boolean!2109) (Unit!18048) (OperatorValue!2111 (op!2168 List!11753)) (IdentifierValue!4216 (value!66236 List!11753)) (IdentifierValue!4217 (value!66237 List!11753)) (WhitespaceValue!4217 (value!66238 List!11753)) (True!4216) (False!4216) (Broken!10542 (value!66239 List!11753)) (Broken!10543 (value!66240 List!11753)) (True!4217) (RightBrace!2108) (RightBracket!2108) (Colon!2108) (Null!2108) (Comma!2108) (LeftBracket!2108) (False!4217) (LeftBrace!2108) (ImaginaryLiteralValue!2108 (text!15202 List!11753)) (StringLiteralValue!6324 (value!66241 List!11753)) (EOFValue!2108 (value!66242 List!11753)) (IdentValue!2108 (value!66243 List!11753)) (DelimiterValue!4217 (value!66244 List!11753)) (DedentValue!2108 (value!66245 List!11753)) (NewLineValue!2108 (value!66246 List!11753)) (IntegerValue!6324 (value!66247 (_ BitVec 32)) (text!15203 List!11753)) (IntegerValue!6325 (value!66248 Int) (text!15204 List!11753)) (Times!2108) (Or!2108) (Equal!2108) (Minus!2108) (Broken!10544 (value!66249 List!11753)) (And!2108) (Div!2108) (LessEqual!2108) (Mod!2108) (Concat!5420) (Not!2108) (Plus!2108) (SpaceValue!2108 (value!66250 List!11753)) (IntegerValue!6326 (value!66251 Int) (text!15205 List!11753)) (StringLiteralValue!6325 (text!15206 List!11753)) (FloatLiteralValue!4217 (text!15207 List!11753)) (BytesLiteralValue!2108 (value!66252 List!11753)) (CommentValue!4217 (value!66253 List!11753)) (StringLiteralValue!6326 (value!66254 List!11753)) (ErrorTokenValue!2108 (msg!2169 List!11753)) )
))
(declare-datatypes ((Regex!3312 0))(
  ( (ElementMatch!3312 (c!196657 C!6942)) (Concat!5421 (regOne!7136 Regex!3312) (regTwo!7136 Regex!3312)) (EmptyExpr!3312) (Star!3312 (reg!3641 Regex!3312)) (EmptyLang!3312) (Union!3312 (regOne!7137 Regex!3312) (regTwo!7137 Regex!3312)) )
))
(declare-datatypes ((TokenValueInjection!3916 0))(
  ( (TokenValueInjection!3917 (toValue!3147 Int) (toChars!3006 Int)) )
))
(declare-datatypes ((Rule!3884 0))(
  ( (Rule!3885 (regex!2042 Regex!3312) (tag!2304 String!14209) (isSeparator!2042 Bool) (transformation!2042 TokenValueInjection!3916)) )
))
(declare-datatypes ((List!11754 0))(
  ( (Nil!11730) (Cons!11730 (h!17131 Rule!3884) (t!111330 List!11754)) )
))
(declare-fun rules!4386 () List!11754)

(assert (= (and b!1179927 (is-Cons!11730 rules!4386)) b!1179949))

(declare-fun order!7211 () Int)

(declare-fun lambda!48596 () Int)

(declare-fun order!7213 () Int)

(declare-fun dynLambda!5187 (Int Int) Int)

(declare-fun dynLambda!5188 (Int Int) Int)

(assert (=> b!1179951 (< (dynLambda!5187 order!7211 (toValue!3147 (transformation!2042 (h!17131 rules!4386)))) (dynLambda!5188 order!7213 lambda!48596))))

(declare-fun order!7215 () Int)

(declare-fun dynLambda!5189 (Int Int) Int)

(assert (=> b!1179951 (< (dynLambda!5189 order!7215 (toChars!3006 (transformation!2042 (h!17131 rules!4386)))) (dynLambda!5188 order!7213 lambda!48596))))

(declare-fun e!757196 () Bool)

(declare-fun tp!335950 () Bool)

(declare-fun b!1179926 () Bool)

(declare-fun e!757200 () Bool)

(declare-fun inv!15545 (String!14209) Bool)

(declare-fun inv!15548 (TokenValueInjection!3916) Bool)

(assert (=> b!1179926 (= e!757196 (and tp!335950 (inv!15545 (tag!2304 (h!17131 rules!4386))) (inv!15548 (transformation!2042 (h!17131 rules!4386))) e!757200))))

(declare-fun res!533368 () Bool)

(declare-fun e!757203 () Bool)

(assert (=> start!104388 (=> (not res!533368) (not e!757203))))

(declare-datatypes ((LexerInterface!1737 0))(
  ( (LexerInterfaceExt!1734 (__x!7928 Int)) (Lexer!1735) )
))
(declare-fun thiss!27592 () LexerInterface!1737)

(assert (=> start!104388 (= res!533368 (is-Lexer!1735 thiss!27592))))

(assert (=> start!104388 e!757203))

(assert (=> start!104388 true))

(declare-fun e!757197 () Bool)

(assert (=> start!104388 e!757197))

(declare-fun e!757193 () Bool)

(assert (=> start!104388 e!757193))

(declare-fun lt!406410 () Bool)

(assert (=> b!1179927 (= e!757203 (not lt!406410))))

(declare-datatypes ((Token!3746 0))(
  ( (Token!3747 (value!66255 TokenValue!2108) (rule!3463 Rule!3884) (size!9274 Int) (originalCharacters!2596 List!11752)) )
))
(declare-datatypes ((List!11755 0))(
  ( (Nil!11731) (Cons!11731 (h!17132 Token!3746) (t!111331 List!11755)) )
))
(declare-fun lt!406409 () List!11755)

(declare-fun forall!3107 (List!11755 Int) Bool)

(assert (=> b!1179927 (forall!3107 lt!406409 lambda!48596)))

(declare-fun l!6534 () List!11755)

(declare-datatypes ((Unit!18049 0))(
  ( (Unit!18050) )
))
(declare-fun lt!406412 () Unit!18049)

(declare-fun lemmaForallSubseq!170 (List!11755 List!11755 Int) Unit!18049)

(assert (=> b!1179927 (= lt!406412 (lemmaForallSubseq!170 lt!406409 l!6534 lambda!48596))))

(declare-fun subseq!300 (List!11755 List!11755) Bool)

(assert (=> b!1179927 (subseq!300 lt!406409 l!6534)))

(declare-fun lt!406411 () Unit!18049)

(declare-fun i!1621 () Int)

(declare-fun lemmaDropSubseq!63 (List!11755 Int) Unit!18049)

(assert (=> b!1179927 (= lt!406411 (lemmaDropSubseq!63 l!6534 i!1621))))

(declare-fun e!757192 () Bool)

(assert (=> b!1179927 (= lt!406410 e!757192)))

(declare-fun res!533369 () Bool)

(assert (=> b!1179927 (=> res!533369 e!757192)))

(assert (=> b!1179927 (= res!533369 (not (is-Cons!11731 lt!406409)))))

(declare-fun rulesProduceEachTokenIndividuallyList!603 (LexerInterface!1737 List!11754 List!11755) Bool)

(assert (=> b!1179927 (= lt!406410 (rulesProduceEachTokenIndividuallyList!603 thiss!27592 rules!4386 lt!406409))))

(declare-fun drop!522 (List!11755 Int) List!11755)

(assert (=> b!1179927 (= lt!406409 (drop!522 l!6534 i!1621))))

(declare-fun b!1179928 () Bool)

(declare-fun res!533362 () Bool)

(assert (=> b!1179928 (=> (not res!533362) (not e!757203))))

(declare-fun isEmpty!7083 (List!11754) Bool)

(assert (=> b!1179928 (= res!533362 (not (isEmpty!7083 rules!4386)))))

(declare-fun b!1179929 () Bool)

(declare-fun res!533366 () Bool)

(assert (=> b!1179929 (=> (not res!533366) (not e!757203))))

(assert (=> b!1179929 (= res!533366 (rulesProduceEachTokenIndividuallyList!603 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1179930 () Bool)

(declare-fun res!533367 () Bool)

(assert (=> b!1179930 (=> (not res!533367) (not e!757203))))

(declare-fun rulesInvariant!1611 (LexerInterface!1737 List!11754) Bool)

(assert (=> b!1179930 (= res!533367 (rulesInvariant!1611 thiss!27592 rules!4386))))

(assert (=> b!1179931 (= e!757200 (and tp!335949 tp!335955))))

(declare-fun tp!335954 () Bool)

(declare-fun b!1179932 () Bool)

(declare-fun e!757202 () Bool)

(declare-fun e!757204 () Bool)

(assert (=> b!1179932 (= e!757202 (and tp!335954 (inv!15545 (tag!2304 (rule!3463 (h!17132 l!6534)))) (inv!15548 (transformation!2042 (rule!3463 (h!17132 l!6534)))) e!757204))))

(declare-fun b!1179933 () Bool)

(declare-fun res!533364 () Bool)

(assert (=> b!1179933 (=> (not res!533364) (not e!757203))))

(assert (=> b!1179933 (= res!533364 (is-Nil!11731 l!6534))))

(declare-fun e!757198 () Bool)

(declare-fun b!1179934 () Bool)

(assert (=> b!1179934 (= e!757198 (rulesProduceEachTokenIndividuallyList!603 thiss!27592 rules!4386 (t!111331 lt!406409)))))

(declare-fun b!1179935 () Bool)

(declare-fun e!757201 () Bool)

(declare-fun tp!335956 () Bool)

(declare-fun inv!21 (TokenValue!2108) Bool)

(assert (=> b!1179935 (= e!757201 (and (inv!21 (value!66255 (h!17132 l!6534))) e!757202 tp!335956))))

(assert (=> b!1179936 (= e!757204 (and tp!335953 tp!335951))))

(declare-fun tp!335952 () Bool)

(declare-fun b!1179937 () Bool)

(declare-fun inv!15549 (Token!3746) Bool)

(assert (=> b!1179937 (= e!757193 (and (inv!15549 (h!17132 l!6534)) e!757201 tp!335952))))

(declare-fun b!1179938 () Bool)

(declare-fun tp!335957 () Bool)

(assert (=> b!1179938 (= e!757197 (and e!757196 tp!335957))))

(declare-fun b!1179939 () Bool)

(assert (=> b!1179939 (= e!757192 e!757198)))

(declare-fun res!533365 () Bool)

(assert (=> b!1179939 (=> (not res!533365) (not e!757198))))

(declare-fun rulesProduceIndividualToken!770 (LexerInterface!1737 List!11754 Token!3746) Bool)

(assert (=> b!1179939 (= res!533365 (rulesProduceIndividualToken!770 thiss!27592 rules!4386 (h!17132 lt!406409)))))

(declare-fun b!1179940 () Bool)

(declare-fun res!533363 () Bool)

(assert (=> b!1179940 (=> (not res!533363) (not e!757203))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!131 (LexerInterface!1737 List!11755 List!11754) Bool)

(assert (=> b!1179940 (= res!533363 (tokensListTwoByTwoPredicateSeparableList!131 thiss!27592 l!6534 rules!4386))))

(assert (= (and start!104388 res!533368) b!1179928))

(assert (= (and b!1179928 res!533362) b!1179930))

(assert (= (and b!1179930 res!533367) b!1179929))

(assert (= (and b!1179929 res!533366) b!1179940))

(assert (= (and b!1179940 res!533363) b!1179933))

(assert (= (and b!1179933 res!533364) b!1179927))

(assert (= (and b!1179927 (not res!533369)) b!1179939))

(assert (= (and b!1179939 res!533365) b!1179934))

(assert (= b!1179926 b!1179931))

(assert (= b!1179938 b!1179926))

(assert (= (and start!104388 (is-Cons!11730 rules!4386)) b!1179938))

(assert (= b!1179932 b!1179936))

(assert (= b!1179935 b!1179932))

(assert (= b!1179937 b!1179935))

(assert (= (and start!104388 (is-Cons!11731 l!6534)) b!1179937))

(declare-fun m!1356197 () Bool)

(assert (=> b!1179937 m!1356197))

(declare-fun m!1356199 () Bool)

(assert (=> b!1179927 m!1356199))

(declare-fun m!1356201 () Bool)

(assert (=> b!1179927 m!1356201))

(declare-fun m!1356203 () Bool)

(assert (=> b!1179927 m!1356203))

(declare-fun m!1356205 () Bool)

(assert (=> b!1179927 m!1356205))

(declare-fun m!1356207 () Bool)

(assert (=> b!1179927 m!1356207))

(declare-fun m!1356209 () Bool)

(assert (=> b!1179927 m!1356209))

(declare-fun m!1356211 () Bool)

(assert (=> b!1179929 m!1356211))

(declare-fun m!1356213 () Bool)

(assert (=> b!1179940 m!1356213))

(declare-fun m!1356215 () Bool)

(assert (=> b!1179930 m!1356215))

(declare-fun m!1356217 () Bool)

(assert (=> b!1179928 m!1356217))

(declare-fun m!1356219 () Bool)

(assert (=> b!1179926 m!1356219))

(declare-fun m!1356221 () Bool)

(assert (=> b!1179926 m!1356221))

(declare-fun m!1356223 () Bool)

(assert (=> b!1179932 m!1356223))

(declare-fun m!1356225 () Bool)

(assert (=> b!1179932 m!1356225))

(declare-fun m!1356227 () Bool)

(assert (=> b!1179939 m!1356227))

(declare-fun m!1356229 () Bool)

(assert (=> b!1179935 m!1356229))

(declare-fun m!1356231 () Bool)

(assert (=> b!1179934 m!1356231))

(push 1)

(assert (not b!1179927))

(assert (not b_next!28741))

(assert (not b!1179928))

(assert b_and!80987)

(assert (not b!1179932))

(assert (not b!1179949))

(assert b_and!80983)

(assert (not b!1179935))

(assert b_and!80981)

(assert (not b!1179929))

(assert (not b_next!28745))

(assert (not b!1179934))

(assert (not b!1179926))

(assert b_and!80985)

(assert (not b!1179939))

(assert (not b!1179938))

(assert (not b!1179937))

(assert (not b_next!28747))

(assert (not b_next!28743))

(assert (not b!1179940))

(assert (not b!1179930))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!28741))

(assert b_and!80985)

(assert b_and!80987)

(assert b_and!80983)

(assert b_and!80981)

(assert (not b_next!28745))

(assert (not b_next!28747))

(assert (not b_next!28743))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!286848 () Bool)

(declare-fun d!337730 () Bool)

(assert (= bs!286848 (and d!337730 b!1179927)))

(declare-fun lambda!48602 () Int)

(assert (=> bs!286848 (= (= thiss!27592 Lexer!1735) (= lambda!48602 lambda!48596))))

(declare-fun b!1180016 () Bool)

(declare-fun e!757270 () Bool)

(assert (=> b!1180016 (= e!757270 true)))

(declare-fun b!1180015 () Bool)

(declare-fun e!757269 () Bool)

(assert (=> b!1180015 (= e!757269 e!757270)))

(declare-fun b!1180014 () Bool)

(declare-fun e!757268 () Bool)

(assert (=> b!1180014 (= e!757268 e!757269)))

(assert (=> d!337730 e!757268))

(assert (= b!1180015 b!1180016))

(assert (= b!1180014 b!1180015))

(assert (= (and d!337730 (is-Cons!11730 rules!4386)) b!1180014))

(assert (=> b!1180016 (< (dynLambda!5187 order!7211 (toValue!3147 (transformation!2042 (h!17131 rules!4386)))) (dynLambda!5188 order!7213 lambda!48602))))

(assert (=> b!1180016 (< (dynLambda!5189 order!7215 (toChars!3006 (transformation!2042 (h!17131 rules!4386)))) (dynLambda!5188 order!7213 lambda!48602))))

(assert (=> d!337730 true))

(declare-fun lt!406427 () Bool)

(assert (=> d!337730 (= lt!406427 (forall!3107 (t!111331 lt!406409) lambda!48602))))

(declare-fun e!757267 () Bool)

(assert (=> d!337730 (= lt!406427 e!757267)))

(declare-fun res!533402 () Bool)

(assert (=> d!337730 (=> res!533402 e!757267)))

(assert (=> d!337730 (= res!533402 (not (is-Cons!11731 (t!111331 lt!406409))))))

(assert (=> d!337730 (not (isEmpty!7083 rules!4386))))

(assert (=> d!337730 (= (rulesProduceEachTokenIndividuallyList!603 thiss!27592 rules!4386 (t!111331 lt!406409)) lt!406427)))

(declare-fun b!1180012 () Bool)

(declare-fun e!757266 () Bool)

(assert (=> b!1180012 (= e!757267 e!757266)))

(declare-fun res!533403 () Bool)

(assert (=> b!1180012 (=> (not res!533403) (not e!757266))))

(assert (=> b!1180012 (= res!533403 (rulesProduceIndividualToken!770 thiss!27592 rules!4386 (h!17132 (t!111331 lt!406409))))))

(declare-fun b!1180013 () Bool)

(assert (=> b!1180013 (= e!757266 (rulesProduceEachTokenIndividuallyList!603 thiss!27592 rules!4386 (t!111331 (t!111331 lt!406409))))))

(assert (= (and d!337730 (not res!533402)) b!1180012))

(assert (= (and b!1180012 res!533403) b!1180013))

(declare-fun m!1356269 () Bool)

(assert (=> d!337730 m!1356269))

(assert (=> d!337730 m!1356217))

(declare-fun m!1356271 () Bool)

(assert (=> b!1180012 m!1356271))

(declare-fun m!1356273 () Bool)

(assert (=> b!1180013 m!1356273))

(assert (=> b!1179934 d!337730))

(declare-fun bs!286849 () Bool)

(declare-fun d!337734 () Bool)

(assert (= bs!286849 (and d!337734 b!1179927)))

(declare-fun lambda!48603 () Int)

(assert (=> bs!286849 (= (= thiss!27592 Lexer!1735) (= lambda!48603 lambda!48596))))

(declare-fun bs!286850 () Bool)

(assert (= bs!286850 (and d!337734 d!337730)))

(assert (=> bs!286850 (= lambda!48603 lambda!48602)))

(declare-fun b!1180023 () Bool)

(declare-fun e!757275 () Bool)

(assert (=> b!1180023 (= e!757275 true)))

(declare-fun b!1180022 () Bool)

(declare-fun e!757274 () Bool)

(assert (=> b!1180022 (= e!757274 e!757275)))

(declare-fun b!1180021 () Bool)

(declare-fun e!757273 () Bool)

(assert (=> b!1180021 (= e!757273 e!757274)))

(assert (=> d!337734 e!757273))

(assert (= b!1180022 b!1180023))

(assert (= b!1180021 b!1180022))

(assert (= (and d!337734 (is-Cons!11730 rules!4386)) b!1180021))

(assert (=> b!1180023 (< (dynLambda!5187 order!7211 (toValue!3147 (transformation!2042 (h!17131 rules!4386)))) (dynLambda!5188 order!7213 lambda!48603))))

(assert (=> b!1180023 (< (dynLambda!5189 order!7215 (toChars!3006 (transformation!2042 (h!17131 rules!4386)))) (dynLambda!5188 order!7213 lambda!48603))))

(assert (=> d!337734 true))

(declare-fun lt!406428 () Bool)

(assert (=> d!337734 (= lt!406428 (forall!3107 l!6534 lambda!48603))))

(declare-fun e!757272 () Bool)

(assert (=> d!337734 (= lt!406428 e!757272)))

(declare-fun res!533404 () Bool)

(assert (=> d!337734 (=> res!533404 e!757272)))

(assert (=> d!337734 (= res!533404 (not (is-Cons!11731 l!6534)))))

(assert (=> d!337734 (not (isEmpty!7083 rules!4386))))

(assert (=> d!337734 (= (rulesProduceEachTokenIndividuallyList!603 thiss!27592 rules!4386 l!6534) lt!406428)))

(declare-fun b!1180019 () Bool)

(declare-fun e!757271 () Bool)

(assert (=> b!1180019 (= e!757272 e!757271)))

(declare-fun res!533405 () Bool)

(assert (=> b!1180019 (=> (not res!533405) (not e!757271))))

(assert (=> b!1180019 (= res!533405 (rulesProduceIndividualToken!770 thiss!27592 rules!4386 (h!17132 l!6534)))))

(declare-fun b!1180020 () Bool)

(assert (=> b!1180020 (= e!757271 (rulesProduceEachTokenIndividuallyList!603 thiss!27592 rules!4386 (t!111331 l!6534)))))

(assert (= (and d!337734 (not res!533404)) b!1180019))

(assert (= (and b!1180019 res!533405) b!1180020))

(declare-fun m!1356275 () Bool)

(assert (=> d!337734 m!1356275))

(assert (=> d!337734 m!1356217))

(declare-fun m!1356277 () Bool)

(assert (=> b!1180019 m!1356277))

(declare-fun m!1356279 () Bool)

(assert (=> b!1180020 m!1356279))

(assert (=> b!1179929 d!337734))

(declare-fun d!337736 () Bool)

(declare-fun res!533410 () Bool)

(declare-fun e!757281 () Bool)

(assert (=> d!337736 (=> res!533410 e!757281)))

(assert (=> d!337736 (= res!533410 (or (not (is-Cons!11731 l!6534)) (not (is-Cons!11731 (t!111331 l!6534)))))))

(assert (=> d!337736 (= (tokensListTwoByTwoPredicateSeparableList!131 thiss!27592 l!6534 rules!4386) e!757281)))

(declare-fun b!1180028 () Bool)

(declare-fun e!757280 () Bool)

(assert (=> b!1180028 (= e!757281 e!757280)))

(declare-fun res!533411 () Bool)

(assert (=> b!1180028 (=> (not res!533411) (not e!757280))))

(declare-fun separableTokensPredicate!147 (LexerInterface!1737 Token!3746 Token!3746 List!11754) Bool)

(assert (=> b!1180028 (= res!533411 (separableTokensPredicate!147 thiss!27592 (h!17132 l!6534) (h!17132 (t!111331 l!6534)) rules!4386))))

(declare-fun lt!406445 () Unit!18049)

(declare-fun Unit!18054 () Unit!18049)

(assert (=> b!1180028 (= lt!406445 Unit!18054)))

(declare-fun size!9276 (BalanceConc!7710) Int)

(declare-fun charsOf!1085 (Token!3746) BalanceConc!7710)

(assert (=> b!1180028 (> (size!9276 (charsOf!1085 (h!17132 (t!111331 l!6534)))) 0)))

(declare-fun lt!406446 () Unit!18049)

(declare-fun Unit!18055 () Unit!18049)

(assert (=> b!1180028 (= lt!406446 Unit!18055)))

(assert (=> b!1180028 (rulesProduceIndividualToken!770 thiss!27592 rules!4386 (h!17132 (t!111331 l!6534)))))

(declare-fun lt!406447 () Unit!18049)

(declare-fun Unit!18056 () Unit!18049)

(assert (=> b!1180028 (= lt!406447 Unit!18056)))

(assert (=> b!1180028 (rulesProduceIndividualToken!770 thiss!27592 rules!4386 (h!17132 l!6534))))

(declare-fun lt!406448 () Unit!18049)

(declare-fun lt!406449 () Unit!18049)

(assert (=> b!1180028 (= lt!406448 lt!406449)))

(assert (=> b!1180028 (rulesProduceIndividualToken!770 thiss!27592 rules!4386 (h!17132 (t!111331 l!6534)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!306 (LexerInterface!1737 List!11754 List!11755 Token!3746) Unit!18049)

(assert (=> b!1180028 (= lt!406449 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!306 thiss!27592 rules!4386 l!6534 (h!17132 (t!111331 l!6534))))))

(declare-fun lt!406443 () Unit!18049)

(declare-fun lt!406444 () Unit!18049)

(assert (=> b!1180028 (= lt!406443 lt!406444)))

(assert (=> b!1180028 (rulesProduceIndividualToken!770 thiss!27592 rules!4386 (h!17132 l!6534))))

(assert (=> b!1180028 (= lt!406444 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!306 thiss!27592 rules!4386 l!6534 (h!17132 l!6534)))))

(declare-fun b!1180029 () Bool)

(assert (=> b!1180029 (= e!757280 (tokensListTwoByTwoPredicateSeparableList!131 thiss!27592 (Cons!11731 (h!17132 (t!111331 l!6534)) (t!111331 (t!111331 l!6534))) rules!4386))))

(assert (= (and d!337736 (not res!533410)) b!1180028))

(assert (= (and b!1180028 res!533411) b!1180029))

(assert (=> b!1180028 m!1356277))

(declare-fun m!1356281 () Bool)

(assert (=> b!1180028 m!1356281))

(declare-fun m!1356283 () Bool)

(assert (=> b!1180028 m!1356283))

(declare-fun m!1356285 () Bool)

(assert (=> b!1180028 m!1356285))

(declare-fun m!1356287 () Bool)

(assert (=> b!1180028 m!1356287))

(declare-fun m!1356289 () Bool)

(assert (=> b!1180028 m!1356289))

(assert (=> b!1180028 m!1356283))

(declare-fun m!1356291 () Bool)

(assert (=> b!1180028 m!1356291))

(declare-fun m!1356293 () Bool)

(assert (=> b!1180029 m!1356293))

(assert (=> b!1179940 d!337736))

(declare-fun b!1180040 () Bool)

(declare-fun e!757288 () Bool)

(declare-fun inv!15 (TokenValue!2108) Bool)

(assert (=> b!1180040 (= e!757288 (inv!15 (value!66255 (h!17132 l!6534))))))

(declare-fun b!1180041 () Bool)

(declare-fun e!757290 () Bool)

(declare-fun inv!17 (TokenValue!2108) Bool)

(assert (=> b!1180041 (= e!757290 (inv!17 (value!66255 (h!17132 l!6534))))))

(declare-fun d!337738 () Bool)

(declare-fun c!196664 () Bool)

(assert (=> d!337738 (= c!196664 (is-IntegerValue!6324 (value!66255 (h!17132 l!6534))))))

(declare-fun e!757289 () Bool)

(assert (=> d!337738 (= (inv!21 (value!66255 (h!17132 l!6534))) e!757289)))

(declare-fun b!1180042 () Bool)

(assert (=> b!1180042 (= e!757289 e!757290)))

(declare-fun c!196665 () Bool)

(assert (=> b!1180042 (= c!196665 (is-IntegerValue!6325 (value!66255 (h!17132 l!6534))))))

(declare-fun b!1180043 () Bool)

(declare-fun inv!16 (TokenValue!2108) Bool)

(assert (=> b!1180043 (= e!757289 (inv!16 (value!66255 (h!17132 l!6534))))))

(declare-fun b!1180044 () Bool)

(declare-fun res!533414 () Bool)

(assert (=> b!1180044 (=> res!533414 e!757288)))

(assert (=> b!1180044 (= res!533414 (not (is-IntegerValue!6326 (value!66255 (h!17132 l!6534)))))))

(assert (=> b!1180044 (= e!757290 e!757288)))

(assert (= (and d!337738 c!196664) b!1180043))

(assert (= (and d!337738 (not c!196664)) b!1180042))

(assert (= (and b!1180042 c!196665) b!1180041))

(assert (= (and b!1180042 (not c!196665)) b!1180044))

(assert (= (and b!1180044 (not res!533414)) b!1180040))

(declare-fun m!1356295 () Bool)

(assert (=> b!1180040 m!1356295))

(declare-fun m!1356297 () Bool)

(assert (=> b!1180041 m!1356297))

(declare-fun m!1356299 () Bool)

(assert (=> b!1180043 m!1356299))

(assert (=> b!1179935 d!337738))

(declare-fun d!337740 () Bool)

(declare-fun res!533417 () Bool)

(declare-fun e!757293 () Bool)

(assert (=> d!337740 (=> (not res!533417) (not e!757293))))

(declare-fun rulesValid!724 (LexerInterface!1737 List!11754) Bool)

(assert (=> d!337740 (= res!533417 (rulesValid!724 thiss!27592 rules!4386))))

(assert (=> d!337740 (= (rulesInvariant!1611 thiss!27592 rules!4386) e!757293)))

(declare-fun b!1180047 () Bool)

(declare-datatypes ((List!11760 0))(
  ( (Nil!11736) (Cons!11736 (h!17137 String!14209) (t!111351 List!11760)) )
))
(declare-fun noDuplicateTag!724 (LexerInterface!1737 List!11754 List!11760) Bool)

(assert (=> b!1180047 (= e!757293 (noDuplicateTag!724 thiss!27592 rules!4386 Nil!11736))))

(assert (= (and d!337740 res!533417) b!1180047))

(declare-fun m!1356301 () Bool)

(assert (=> d!337740 m!1356301))

(declare-fun m!1356303 () Bool)

(assert (=> b!1180047 m!1356303))

(assert (=> b!1179930 d!337740))

(declare-fun d!337742 () Bool)

(assert (=> d!337742 (= (inv!15545 (tag!2304 (h!17131 rules!4386))) (= (mod (str.len (value!66229 (tag!2304 (h!17131 rules!4386)))) 2) 0))))

(assert (=> b!1179926 d!337742))

(declare-fun d!337744 () Bool)

(declare-fun res!533424 () Bool)

(declare-fun e!757300 () Bool)

(assert (=> d!337744 (=> (not res!533424) (not e!757300))))

(declare-fun semiInverseModEq!736 (Int Int) Bool)

(assert (=> d!337744 (= res!533424 (semiInverseModEq!736 (toChars!3006 (transformation!2042 (h!17131 rules!4386))) (toValue!3147 (transformation!2042 (h!17131 rules!4386)))))))

(assert (=> d!337744 (= (inv!15548 (transformation!2042 (h!17131 rules!4386))) e!757300)))

(declare-fun b!1180054 () Bool)

(declare-fun equivClasses!703 (Int Int) Bool)

(assert (=> b!1180054 (= e!757300 (equivClasses!703 (toChars!3006 (transformation!2042 (h!17131 rules!4386))) (toValue!3147 (transformation!2042 (h!17131 rules!4386)))))))

(assert (= (and d!337744 res!533424) b!1180054))

(declare-fun m!1356305 () Bool)

(assert (=> d!337744 m!1356305))

(declare-fun m!1356307 () Bool)

(assert (=> b!1180054 m!1356307))

(assert (=> b!1179926 d!337744))

(declare-fun d!337746 () Bool)

(declare-fun res!533429 () Bool)

(declare-fun e!757303 () Bool)

(assert (=> d!337746 (=> (not res!533429) (not e!757303))))

(declare-fun isEmpty!7085 (List!11752) Bool)

(assert (=> d!337746 (= res!533429 (not (isEmpty!7085 (originalCharacters!2596 (h!17132 l!6534)))))))

(assert (=> d!337746 (= (inv!15549 (h!17132 l!6534)) e!757303)))

(declare-fun b!1180059 () Bool)

(declare-fun res!533430 () Bool)

(assert (=> b!1180059 (=> (not res!533430) (not e!757303))))

(declare-fun list!4331 (BalanceConc!7710) List!11752)

(declare-fun dynLambda!5193 (Int TokenValue!2108) BalanceConc!7710)

(assert (=> b!1180059 (= res!533430 (= (originalCharacters!2596 (h!17132 l!6534)) (list!4331 (dynLambda!5193 (toChars!3006 (transformation!2042 (rule!3463 (h!17132 l!6534)))) (value!66255 (h!17132 l!6534))))))))

(declare-fun b!1180060 () Bool)

(declare-fun size!9277 (List!11752) Int)

(assert (=> b!1180060 (= e!757303 (= (size!9274 (h!17132 l!6534)) (size!9277 (originalCharacters!2596 (h!17132 l!6534)))))))

(assert (= (and d!337746 res!533429) b!1180059))

(assert (= (and b!1180059 res!533430) b!1180060))

(declare-fun b_lambda!35227 () Bool)

(assert (=> (not b_lambda!35227) (not b!1180059)))

(declare-fun t!111343 () Bool)

(declare-fun tb!66077 () Bool)

(assert (=> (and b!1179931 (= (toChars!3006 (transformation!2042 (h!17131 rules!4386))) (toChars!3006 (transformation!2042 (rule!3463 (h!17132 l!6534))))) t!111343) tb!66077))

(declare-fun b!1180065 () Bool)

(declare-fun e!757306 () Bool)

(declare-fun tp!335987 () Bool)

(declare-fun inv!15552 (Conc!3844) Bool)

(assert (=> b!1180065 (= e!757306 (and (inv!15552 (c!196656 (dynLambda!5193 (toChars!3006 (transformation!2042 (rule!3463 (h!17132 l!6534)))) (value!66255 (h!17132 l!6534))))) tp!335987))))

(declare-fun result!79250 () Bool)

(declare-fun inv!15553 (BalanceConc!7710) Bool)

(assert (=> tb!66077 (= result!79250 (and (inv!15553 (dynLambda!5193 (toChars!3006 (transformation!2042 (rule!3463 (h!17132 l!6534)))) (value!66255 (h!17132 l!6534)))) e!757306))))

(assert (= tb!66077 b!1180065))

(declare-fun m!1356309 () Bool)

(assert (=> b!1180065 m!1356309))

(declare-fun m!1356311 () Bool)

(assert (=> tb!66077 m!1356311))

(assert (=> b!1180059 t!111343))

(declare-fun b_and!80997 () Bool)

(assert (= b_and!80983 (and (=> t!111343 result!79250) b_and!80997)))

(declare-fun t!111345 () Bool)

(declare-fun tb!66079 () Bool)

(assert (=> (and b!1179936 (= (toChars!3006 (transformation!2042 (rule!3463 (h!17132 l!6534)))) (toChars!3006 (transformation!2042 (rule!3463 (h!17132 l!6534))))) t!111345) tb!66079))

(declare-fun result!79254 () Bool)

(assert (= result!79254 result!79250))

(assert (=> b!1180059 t!111345))

(declare-fun b_and!80999 () Bool)

(assert (= b_and!80987 (and (=> t!111345 result!79254) b_and!80999)))

(declare-fun m!1356313 () Bool)

(assert (=> d!337746 m!1356313))

(declare-fun m!1356315 () Bool)

(assert (=> b!1180059 m!1356315))

(assert (=> b!1180059 m!1356315))

(declare-fun m!1356317 () Bool)

(assert (=> b!1180059 m!1356317))

(declare-fun m!1356319 () Bool)

(assert (=> b!1180060 m!1356319))

(assert (=> b!1179937 d!337746))

(declare-fun d!337748 () Bool)

(assert (=> d!337748 (= (inv!15545 (tag!2304 (rule!3463 (h!17132 l!6534)))) (= (mod (str.len (value!66229 (tag!2304 (rule!3463 (h!17132 l!6534))))) 2) 0))))

(assert (=> b!1179932 d!337748))

(declare-fun d!337750 () Bool)

(declare-fun res!533431 () Bool)

(declare-fun e!757307 () Bool)

(assert (=> d!337750 (=> (not res!533431) (not e!757307))))

(assert (=> d!337750 (= res!533431 (semiInverseModEq!736 (toChars!3006 (transformation!2042 (rule!3463 (h!17132 l!6534)))) (toValue!3147 (transformation!2042 (rule!3463 (h!17132 l!6534))))))))

(assert (=> d!337750 (= (inv!15548 (transformation!2042 (rule!3463 (h!17132 l!6534)))) e!757307)))

(declare-fun b!1180066 () Bool)

(assert (=> b!1180066 (= e!757307 (equivClasses!703 (toChars!3006 (transformation!2042 (rule!3463 (h!17132 l!6534)))) (toValue!3147 (transformation!2042 (rule!3463 (h!17132 l!6534))))))))

(assert (= (and d!337750 res!533431) b!1180066))

(declare-fun m!1356321 () Bool)

(assert (=> d!337750 m!1356321))

(declare-fun m!1356323 () Bool)

(assert (=> b!1180066 m!1356323))

(assert (=> b!1179932 d!337750))

(declare-fun d!337752 () Bool)

(declare-fun res!533438 () Bool)

(declare-fun e!757317 () Bool)

(assert (=> d!337752 (=> res!533438 e!757317)))

(assert (=> d!337752 (= res!533438 (is-Nil!11731 lt!406409))))

(assert (=> d!337752 (= (forall!3107 lt!406409 lambda!48596) e!757317)))

(declare-fun b!1180078 () Bool)

(declare-fun e!757318 () Bool)

(assert (=> b!1180078 (= e!757317 e!757318)))

(declare-fun res!533439 () Bool)

(assert (=> b!1180078 (=> (not res!533439) (not e!757318))))

(declare-fun dynLambda!5194 (Int Token!3746) Bool)

(assert (=> b!1180078 (= res!533439 (dynLambda!5194 lambda!48596 (h!17132 lt!406409)))))

(declare-fun b!1180079 () Bool)

(assert (=> b!1180079 (= e!757318 (forall!3107 (t!111331 lt!406409) lambda!48596))))

(assert (= (and d!337752 (not res!533438)) b!1180078))

(assert (= (and b!1180078 res!533439) b!1180079))

(declare-fun b_lambda!35229 () Bool)

(assert (=> (not b_lambda!35229) (not b!1180078)))

(declare-fun m!1356325 () Bool)

(assert (=> b!1180078 m!1356325))

(declare-fun m!1356327 () Bool)

(assert (=> b!1180079 m!1356327))

(assert (=> b!1179927 d!337752))

(declare-fun d!337754 () Bool)

(assert (=> d!337754 (subseq!300 (drop!522 l!6534 i!1621) l!6534)))

(declare-fun lt!406455 () Unit!18049)

(declare-fun choose!7636 (List!11755 Int) Unit!18049)

(assert (=> d!337754 (= lt!406455 (choose!7636 l!6534 i!1621))))

(assert (=> d!337754 (= (lemmaDropSubseq!63 l!6534 i!1621) lt!406455)))

(declare-fun bs!286852 () Bool)

(assert (= bs!286852 d!337754))

(assert (=> bs!286852 m!1356199))

(assert (=> bs!286852 m!1356199))

(declare-fun m!1356335 () Bool)

(assert (=> bs!286852 m!1356335))

(declare-fun m!1356337 () Bool)

(assert (=> bs!286852 m!1356337))

(assert (=> b!1179927 d!337754))

(declare-fun d!337758 () Bool)

(assert (=> d!337758 (forall!3107 lt!406409 lambda!48596)))

(declare-fun lt!406460 () Unit!18049)

(declare-fun choose!7637 (List!11755 List!11755 Int) Unit!18049)

(assert (=> d!337758 (= lt!406460 (choose!7637 lt!406409 l!6534 lambda!48596))))

(assert (=> d!337758 (forall!3107 l!6534 lambda!48596)))

(assert (=> d!337758 (= (lemmaForallSubseq!170 lt!406409 l!6534 lambda!48596) lt!406460)))

(declare-fun bs!286853 () Bool)

(assert (= bs!286853 d!337758))

(assert (=> bs!286853 m!1356205))

(declare-fun m!1356339 () Bool)

(assert (=> bs!286853 m!1356339))

(declare-fun m!1356341 () Bool)

(assert (=> bs!286853 m!1356341))

(assert (=> b!1179927 d!337758))

(declare-fun bs!286855 () Bool)

(declare-fun d!337760 () Bool)

(assert (= bs!286855 (and d!337760 b!1179927)))

(declare-fun lambda!48607 () Int)

(assert (=> bs!286855 (= (= thiss!27592 Lexer!1735) (= lambda!48607 lambda!48596))))

(declare-fun bs!286856 () Bool)

(assert (= bs!286856 (and d!337760 d!337730)))

(assert (=> bs!286856 (= lambda!48607 lambda!48602)))

(declare-fun bs!286857 () Bool)

(assert (= bs!286857 (and d!337760 d!337734)))

(assert (=> bs!286857 (= lambda!48607 lambda!48603)))

(declare-fun b!1180084 () Bool)

(declare-fun e!757323 () Bool)

(assert (=> b!1180084 (= e!757323 true)))

(declare-fun b!1180083 () Bool)

(declare-fun e!757322 () Bool)

(assert (=> b!1180083 (= e!757322 e!757323)))

(declare-fun b!1180082 () Bool)

(declare-fun e!757321 () Bool)

(assert (=> b!1180082 (= e!757321 e!757322)))

(assert (=> d!337760 e!757321))

(assert (= b!1180083 b!1180084))

(assert (= b!1180082 b!1180083))

(assert (= (and d!337760 (is-Cons!11730 rules!4386)) b!1180082))

(assert (=> b!1180084 (< (dynLambda!5187 order!7211 (toValue!3147 (transformation!2042 (h!17131 rules!4386)))) (dynLambda!5188 order!7213 lambda!48607))))

(assert (=> b!1180084 (< (dynLambda!5189 order!7215 (toChars!3006 (transformation!2042 (h!17131 rules!4386)))) (dynLambda!5188 order!7213 lambda!48607))))

(assert (=> d!337760 true))

(declare-fun lt!406462 () Bool)

(assert (=> d!337760 (= lt!406462 (forall!3107 lt!406409 lambda!48607))))

(declare-fun e!757320 () Bool)

(assert (=> d!337760 (= lt!406462 e!757320)))

(declare-fun res!533440 () Bool)

(assert (=> d!337760 (=> res!533440 e!757320)))

(assert (=> d!337760 (= res!533440 (not (is-Cons!11731 lt!406409)))))

(assert (=> d!337760 (not (isEmpty!7083 rules!4386))))

(assert (=> d!337760 (= (rulesProduceEachTokenIndividuallyList!603 thiss!27592 rules!4386 lt!406409) lt!406462)))

(declare-fun b!1180080 () Bool)

(declare-fun e!757319 () Bool)

(assert (=> b!1180080 (= e!757320 e!757319)))

(declare-fun res!533441 () Bool)

(assert (=> b!1180080 (=> (not res!533441) (not e!757319))))

(assert (=> b!1180080 (= res!533441 (rulesProduceIndividualToken!770 thiss!27592 rules!4386 (h!17132 lt!406409)))))

(declare-fun b!1180081 () Bool)

(assert (=> b!1180081 (= e!757319 (rulesProduceEachTokenIndividuallyList!603 thiss!27592 rules!4386 (t!111331 lt!406409)))))

(assert (= (and d!337760 (not res!533440)) b!1180080))

(assert (= (and b!1180080 res!533441) b!1180081))

(declare-fun m!1356347 () Bool)

(assert (=> d!337760 m!1356347))

(assert (=> d!337760 m!1356217))

(assert (=> b!1180080 m!1356227))

(assert (=> b!1180081 m!1356231))

(assert (=> b!1179927 d!337760))

(declare-fun d!337764 () Bool)

(declare-fun res!533454 () Bool)

(declare-fun e!757338 () Bool)

(assert (=> d!337764 (=> res!533454 e!757338)))

(assert (=> d!337764 (= res!533454 (is-Nil!11731 lt!406409))))

(assert (=> d!337764 (= (subseq!300 lt!406409 l!6534) e!757338)))

(declare-fun b!1180100 () Bool)

(declare-fun e!757340 () Bool)

(assert (=> b!1180100 (= e!757340 (subseq!300 (t!111331 lt!406409) (t!111331 l!6534)))))

(declare-fun b!1180099 () Bool)

(declare-fun e!757337 () Bool)

(declare-fun e!757339 () Bool)

(assert (=> b!1180099 (= e!757337 e!757339)))

(declare-fun res!533453 () Bool)

(assert (=> b!1180099 (=> res!533453 e!757339)))

(assert (=> b!1180099 (= res!533453 e!757340)))

(declare-fun res!533452 () Bool)

(assert (=> b!1180099 (=> (not res!533452) (not e!757340))))

(assert (=> b!1180099 (= res!533452 (= (h!17132 lt!406409) (h!17132 l!6534)))))

(declare-fun b!1180101 () Bool)

(assert (=> b!1180101 (= e!757339 (subseq!300 lt!406409 (t!111331 l!6534)))))

(declare-fun b!1180098 () Bool)

(assert (=> b!1180098 (= e!757338 e!757337)))

(declare-fun res!533455 () Bool)

(assert (=> b!1180098 (=> (not res!533455) (not e!757337))))

(assert (=> b!1180098 (= res!533455 (is-Cons!11731 l!6534))))

(assert (= (and d!337764 (not res!533454)) b!1180098))

(assert (= (and b!1180098 res!533455) b!1180099))

(assert (= (and b!1180099 res!533452) b!1180100))

(assert (= (and b!1180099 (not res!533453)) b!1180101))

(declare-fun m!1356351 () Bool)

(assert (=> b!1180100 m!1356351))

(declare-fun m!1356353 () Bool)

(assert (=> b!1180101 m!1356353))

(assert (=> b!1179927 d!337764))

(declare-fun bm!82574 () Bool)

(declare-fun call!82579 () Int)

(declare-fun size!9278 (List!11755) Int)

(assert (=> bm!82574 (= call!82579 (size!9278 l!6534))))

(declare-fun d!337768 () Bool)

(declare-fun e!757366 () Bool)

(assert (=> d!337768 e!757366))

(declare-fun res!533470 () Bool)

(assert (=> d!337768 (=> (not res!533470) (not e!757366))))

(declare-fun lt!406466 () List!11755)

(declare-fun content!1631 (List!11755) (Set Token!3746))

(assert (=> d!337768 (= res!533470 (set.subset (content!1631 lt!406466) (content!1631 l!6534)))))

(declare-fun e!757365 () List!11755)

(assert (=> d!337768 (= lt!406466 e!757365)))

(declare-fun c!196677 () Bool)

(assert (=> d!337768 (= c!196677 (is-Nil!11731 l!6534))))

(assert (=> d!337768 (= (drop!522 l!6534 i!1621) lt!406466)))

(declare-fun b!1180132 () Bool)

(declare-fun e!757363 () List!11755)

(assert (=> b!1180132 (= e!757363 (drop!522 (t!111331 l!6534) (- i!1621 1)))))

(declare-fun b!1180133 () Bool)

(declare-fun e!757364 () Int)

(assert (=> b!1180133 (= e!757364 0)))

(declare-fun b!1180134 () Bool)

(assert (=> b!1180134 (= e!757363 l!6534)))

(declare-fun b!1180135 () Bool)

(assert (=> b!1180135 (= e!757365 Nil!11731)))

(declare-fun b!1180136 () Bool)

(declare-fun e!757367 () Int)

(assert (=> b!1180136 (= e!757367 call!82579)))

(declare-fun b!1180137 () Bool)

(assert (=> b!1180137 (= e!757367 e!757364)))

(declare-fun c!196674 () Bool)

(assert (=> b!1180137 (= c!196674 (>= i!1621 call!82579))))

(declare-fun b!1180138 () Bool)

(assert (=> b!1180138 (= e!757365 e!757363)))

(declare-fun c!196675 () Bool)

(assert (=> b!1180138 (= c!196675 (<= i!1621 0))))

(declare-fun b!1180139 () Bool)

(assert (=> b!1180139 (= e!757364 (- call!82579 i!1621))))

(declare-fun b!1180140 () Bool)

(assert (=> b!1180140 (= e!757366 (= (size!9278 lt!406466) e!757367))))

(declare-fun c!196676 () Bool)

(assert (=> b!1180140 (= c!196676 (<= i!1621 0))))

(assert (= (and d!337768 c!196677) b!1180135))

(assert (= (and d!337768 (not c!196677)) b!1180138))

(assert (= (and b!1180138 c!196675) b!1180134))

(assert (= (and b!1180138 (not c!196675)) b!1180132))

(assert (= (and d!337768 res!533470) b!1180140))

(assert (= (and b!1180140 c!196676) b!1180136))

(assert (= (and b!1180140 (not c!196676)) b!1180137))

(assert (= (and b!1180137 c!196674) b!1180133))

(assert (= (and b!1180137 (not c!196674)) b!1180139))

(assert (= (or b!1180136 b!1180137 b!1180139) bm!82574))

(declare-fun m!1356359 () Bool)

(assert (=> bm!82574 m!1356359))

(declare-fun m!1356361 () Bool)

(assert (=> d!337768 m!1356361))

(declare-fun m!1356363 () Bool)

(assert (=> d!337768 m!1356363))

(declare-fun m!1356365 () Bool)

(assert (=> b!1180132 m!1356365))

(declare-fun m!1356367 () Bool)

(assert (=> b!1180140 m!1356367))

(assert (=> b!1179927 d!337768))

(declare-fun d!337772 () Bool)

(assert (=> d!337772 (= (isEmpty!7083 rules!4386) (is-Nil!11730 rules!4386))))

(assert (=> b!1179928 d!337772))

(declare-fun d!337774 () Bool)

(declare-fun lt!406477 () Bool)

(declare-fun e!757394 () Bool)

(assert (=> d!337774 (= lt!406477 e!757394)))

(declare-fun res!533486 () Bool)

(assert (=> d!337774 (=> (not res!533486) (not e!757394))))

(declare-datatypes ((IArray!7697 0))(
  ( (IArray!7698 (innerList!3906 List!11755)) )
))
(declare-datatypes ((Conc!3846 0))(
  ( (Node!3846 (left!10237 Conc!3846) (right!10567 Conc!3846) (csize!7922 Int) (cheight!4057 Int)) (Leaf!5898 (xs!6551 IArray!7697) (csize!7923 Int)) (Empty!3846) )
))
(declare-datatypes ((BalanceConc!7714 0))(
  ( (BalanceConc!7715 (c!196690 Conc!3846)) )
))
(declare-fun list!4332 (BalanceConc!7714) List!11755)

(declare-datatypes ((tuple2!12074 0))(
  ( (tuple2!12075 (_1!6884 BalanceConc!7714) (_2!6884 BalanceConc!7710)) )
))
(declare-fun lex!725 (LexerInterface!1737 List!11754 BalanceConc!7710) tuple2!12074)

(declare-fun print!662 (LexerInterface!1737 BalanceConc!7714) BalanceConc!7710)

(declare-fun singletonSeq!704 (Token!3746) BalanceConc!7714)

(assert (=> d!337774 (= res!533486 (= (list!4332 (_1!6884 (lex!725 thiss!27592 rules!4386 (print!662 thiss!27592 (singletonSeq!704 (h!17132 lt!406409)))))) (list!4332 (singletonSeq!704 (h!17132 lt!406409)))))))

(declare-fun e!757393 () Bool)

(assert (=> d!337774 (= lt!406477 e!757393)))

(declare-fun res!533488 () Bool)

(assert (=> d!337774 (=> (not res!533488) (not e!757393))))

(declare-fun lt!406478 () tuple2!12074)

(declare-fun size!9279 (BalanceConc!7714) Int)

(assert (=> d!337774 (= res!533488 (= (size!9279 (_1!6884 lt!406478)) 1))))

(assert (=> d!337774 (= lt!406478 (lex!725 thiss!27592 rules!4386 (print!662 thiss!27592 (singletonSeq!704 (h!17132 lt!406409)))))))

(assert (=> d!337774 (not (isEmpty!7083 rules!4386))))

(assert (=> d!337774 (= (rulesProduceIndividualToken!770 thiss!27592 rules!4386 (h!17132 lt!406409)) lt!406477)))

(declare-fun b!1180180 () Bool)

(declare-fun res!533487 () Bool)

(assert (=> b!1180180 (=> (not res!533487) (not e!757393))))

(declare-fun apply!2563 (BalanceConc!7714 Int) Token!3746)

(assert (=> b!1180180 (= res!533487 (= (apply!2563 (_1!6884 lt!406478) 0) (h!17132 lt!406409)))))

(declare-fun b!1180181 () Bool)

(declare-fun isEmpty!7086 (BalanceConc!7710) Bool)

(assert (=> b!1180181 (= e!757393 (isEmpty!7086 (_2!6884 lt!406478)))))

(declare-fun b!1180182 () Bool)

(assert (=> b!1180182 (= e!757394 (isEmpty!7086 (_2!6884 (lex!725 thiss!27592 rules!4386 (print!662 thiss!27592 (singletonSeq!704 (h!17132 lt!406409)))))))))

(assert (= (and d!337774 res!533488) b!1180180))

(assert (= (and b!1180180 res!533487) b!1180181))

(assert (= (and d!337774 res!533486) b!1180182))

(assert (=> d!337774 m!1356217))

(declare-fun m!1356387 () Bool)

(assert (=> d!337774 m!1356387))

(declare-fun m!1356389 () Bool)

(assert (=> d!337774 m!1356389))

(declare-fun m!1356391 () Bool)

(assert (=> d!337774 m!1356391))

(declare-fun m!1356393 () Bool)

(assert (=> d!337774 m!1356393))

(declare-fun m!1356395 () Bool)

(assert (=> d!337774 m!1356395))

(assert (=> d!337774 m!1356387))

(assert (=> d!337774 m!1356395))

(assert (=> d!337774 m!1356395))

(declare-fun m!1356397 () Bool)

(assert (=> d!337774 m!1356397))

(declare-fun m!1356399 () Bool)

(assert (=> b!1180180 m!1356399))

(declare-fun m!1356401 () Bool)

(assert (=> b!1180181 m!1356401))

(assert (=> b!1180182 m!1356395))

(assert (=> b!1180182 m!1356395))

(assert (=> b!1180182 m!1356387))

(assert (=> b!1180182 m!1356387))

(assert (=> b!1180182 m!1356389))

(declare-fun m!1356403 () Bool)

(assert (=> b!1180182 m!1356403))

(assert (=> b!1179939 d!337774))

(declare-fun b!1180187 () Bool)

(declare-fun e!757397 () Bool)

(declare-fun tp_is_empty!5801 () Bool)

(declare-fun tp!335990 () Bool)

(assert (=> b!1180187 (= e!757397 (and tp_is_empty!5801 tp!335990))))

(assert (=> b!1179935 (= tp!335956 e!757397)))

(assert (= (and b!1179935 (is-Cons!11728 (originalCharacters!2596 (h!17132 l!6534)))) b!1180187))

(declare-fun e!757400 () Bool)

(assert (=> b!1179926 (= tp!335950 e!757400)))

(declare-fun b!1180199 () Bool)

(declare-fun tp!336002 () Bool)

(declare-fun tp!336001 () Bool)

(assert (=> b!1180199 (= e!757400 (and tp!336002 tp!336001))))

(declare-fun b!1180201 () Bool)

(declare-fun tp!336005 () Bool)

(declare-fun tp!336003 () Bool)

(assert (=> b!1180201 (= e!757400 (and tp!336005 tp!336003))))

(declare-fun b!1180200 () Bool)

(declare-fun tp!336004 () Bool)

(assert (=> b!1180200 (= e!757400 tp!336004)))

(declare-fun b!1180198 () Bool)

(assert (=> b!1180198 (= e!757400 tp_is_empty!5801)))

(assert (= (and b!1179926 (is-ElementMatch!3312 (regex!2042 (h!17131 rules!4386)))) b!1180198))

(assert (= (and b!1179926 (is-Concat!5421 (regex!2042 (h!17131 rules!4386)))) b!1180199))

(assert (= (and b!1179926 (is-Star!3312 (regex!2042 (h!17131 rules!4386)))) b!1180200))

(assert (= (and b!1179926 (is-Union!3312 (regex!2042 (h!17131 rules!4386)))) b!1180201))

(declare-fun b!1180215 () Bool)

(declare-fun b_free!28053 () Bool)

(declare-fun b_next!28757 () Bool)

(assert (=> b!1180215 (= b_free!28053 (not b_next!28757))))

(declare-fun tp!336016 () Bool)

(declare-fun b_and!81001 () Bool)

(assert (=> b!1180215 (= tp!336016 b_and!81001)))

(declare-fun b_free!28055 () Bool)

(declare-fun b_next!28759 () Bool)

(assert (=> b!1180215 (= b_free!28055 (not b_next!28759))))

(declare-fun t!111348 () Bool)

(declare-fun tb!66081 () Bool)

(assert (=> (and b!1180215 (= (toChars!3006 (transformation!2042 (rule!3463 (h!17132 (t!111331 l!6534))))) (toChars!3006 (transformation!2042 (rule!3463 (h!17132 l!6534))))) t!111348) tb!66081))

(declare-fun result!79262 () Bool)

(assert (= result!79262 result!79250))

(assert (=> b!1180059 t!111348))

(declare-fun tp!336019 () Bool)

(declare-fun b_and!81003 () Bool)

(assert (=> b!1180215 (= tp!336019 (and (=> t!111348 result!79262) b_and!81003))))

(declare-fun e!757414 () Bool)

(assert (=> b!1179937 (= tp!335952 e!757414)))

(declare-fun e!757416 () Bool)

(assert (=> b!1180215 (= e!757416 (and tp!336016 tp!336019))))

(declare-fun e!757418 () Bool)

(declare-fun e!757417 () Bool)

(declare-fun tp!336020 () Bool)

(declare-fun b!1180213 () Bool)

(assert (=> b!1180213 (= e!757418 (and (inv!21 (value!66255 (h!17132 (t!111331 l!6534)))) e!757417 tp!336020))))

(declare-fun tp!336017 () Bool)

(declare-fun b!1180212 () Bool)

(assert (=> b!1180212 (= e!757414 (and (inv!15549 (h!17132 (t!111331 l!6534))) e!757418 tp!336017))))

(declare-fun tp!336018 () Bool)

(declare-fun b!1180214 () Bool)

(assert (=> b!1180214 (= e!757417 (and tp!336018 (inv!15545 (tag!2304 (rule!3463 (h!17132 (t!111331 l!6534))))) (inv!15548 (transformation!2042 (rule!3463 (h!17132 (t!111331 l!6534))))) e!757416))))

(assert (= b!1180214 b!1180215))

(assert (= b!1180213 b!1180214))

(assert (= b!1180212 b!1180213))

(assert (= (and b!1179937 (is-Cons!11731 (t!111331 l!6534))) b!1180212))

(declare-fun m!1356405 () Bool)

(assert (=> b!1180213 m!1356405))

(declare-fun m!1356407 () Bool)

(assert (=> b!1180212 m!1356407))

(declare-fun m!1356409 () Bool)

(assert (=> b!1180214 m!1356409))

(declare-fun m!1356411 () Bool)

(assert (=> b!1180214 m!1356411))

(declare-fun e!757419 () Bool)

(assert (=> b!1179932 (= tp!335954 e!757419)))

(declare-fun b!1180217 () Bool)

(declare-fun tp!336022 () Bool)

(declare-fun tp!336021 () Bool)

(assert (=> b!1180217 (= e!757419 (and tp!336022 tp!336021))))

(declare-fun b!1180219 () Bool)

(declare-fun tp!336025 () Bool)

(declare-fun tp!336023 () Bool)

(assert (=> b!1180219 (= e!757419 (and tp!336025 tp!336023))))

(declare-fun b!1180218 () Bool)

(declare-fun tp!336024 () Bool)

(assert (=> b!1180218 (= e!757419 tp!336024)))

(declare-fun b!1180216 () Bool)

(assert (=> b!1180216 (= e!757419 tp_is_empty!5801)))

(assert (= (and b!1179932 (is-ElementMatch!3312 (regex!2042 (rule!3463 (h!17132 l!6534))))) b!1180216))

(assert (= (and b!1179932 (is-Concat!5421 (regex!2042 (rule!3463 (h!17132 l!6534))))) b!1180217))

(assert (= (and b!1179932 (is-Star!3312 (regex!2042 (rule!3463 (h!17132 l!6534))))) b!1180218))

(assert (= (and b!1179932 (is-Union!3312 (regex!2042 (rule!3463 (h!17132 l!6534))))) b!1180219))

(declare-fun b!1180230 () Bool)

(declare-fun b_free!28057 () Bool)

(declare-fun b_next!28761 () Bool)

(assert (=> b!1180230 (= b_free!28057 (not b_next!28761))))

(declare-fun tp!336034 () Bool)

(declare-fun b_and!81005 () Bool)

(assert (=> b!1180230 (= tp!336034 b_and!81005)))

(declare-fun b_free!28059 () Bool)

(declare-fun b_next!28763 () Bool)

(assert (=> b!1180230 (= b_free!28059 (not b_next!28763))))

(declare-fun tb!66083 () Bool)

(declare-fun t!111350 () Bool)

(assert (=> (and b!1180230 (= (toChars!3006 (transformation!2042 (h!17131 (t!111330 rules!4386)))) (toChars!3006 (transformation!2042 (rule!3463 (h!17132 l!6534))))) t!111350) tb!66083))

(declare-fun result!79266 () Bool)

(assert (= result!79266 result!79250))

(assert (=> b!1180059 t!111350))

(declare-fun b_and!81007 () Bool)

(declare-fun tp!336035 () Bool)

(assert (=> b!1180230 (= tp!336035 (and (=> t!111350 result!79266) b_and!81007))))

(declare-fun e!757431 () Bool)

(assert (=> b!1180230 (= e!757431 (and tp!336034 tp!336035))))

(declare-fun tp!336036 () Bool)

(declare-fun b!1180229 () Bool)

(declare-fun e!757429 () Bool)

(assert (=> b!1180229 (= e!757429 (and tp!336036 (inv!15545 (tag!2304 (h!17131 (t!111330 rules!4386)))) (inv!15548 (transformation!2042 (h!17131 (t!111330 rules!4386)))) e!757431))))

(declare-fun b!1180228 () Bool)

(declare-fun e!757430 () Bool)

(declare-fun tp!336037 () Bool)

(assert (=> b!1180228 (= e!757430 (and e!757429 tp!336037))))

(assert (=> b!1179938 (= tp!335957 e!757430)))

(assert (= b!1180229 b!1180230))

(assert (= b!1180228 b!1180229))

(assert (= (and b!1179938 (is-Cons!11730 (t!111330 rules!4386))) b!1180228))

(declare-fun m!1356413 () Bool)

(assert (=> b!1180229 m!1356413))

(declare-fun m!1356415 () Bool)

(assert (=> b!1180229 m!1356415))

(declare-fun b!1180233 () Bool)

(declare-fun e!757434 () Bool)

(assert (=> b!1180233 (= e!757434 true)))

(declare-fun b!1180232 () Bool)

(declare-fun e!757433 () Bool)

(assert (=> b!1180232 (= e!757433 e!757434)))

(declare-fun b!1180231 () Bool)

(declare-fun e!757432 () Bool)

(assert (=> b!1180231 (= e!757432 e!757433)))

(assert (=> b!1179949 e!757432))

(assert (= b!1180232 b!1180233))

(assert (= b!1180231 b!1180232))

(assert (= (and b!1179949 (is-Cons!11730 (t!111330 rules!4386))) b!1180231))

(assert (=> b!1180233 (< (dynLambda!5187 order!7211 (toValue!3147 (transformation!2042 (h!17131 (t!111330 rules!4386))))) (dynLambda!5188 order!7213 lambda!48596))))

(assert (=> b!1180233 (< (dynLambda!5189 order!7215 (toChars!3006 (transformation!2042 (h!17131 (t!111330 rules!4386))))) (dynLambda!5188 order!7213 lambda!48596))))

(declare-fun b_lambda!35233 () Bool)

(assert (= b_lambda!35229 (or b!1179927 b_lambda!35233)))

(declare-fun bs!286861 () Bool)

(declare-fun d!337782 () Bool)

(assert (= bs!286861 (and d!337782 b!1179927)))

(assert (=> bs!286861 (= (dynLambda!5194 lambda!48596 (h!17132 lt!406409)) (rulesProduceIndividualToken!770 Lexer!1735 rules!4386 (h!17132 lt!406409)))))

(declare-fun m!1356417 () Bool)

(assert (=> bs!286861 m!1356417))

(assert (=> b!1180078 d!337782))

(declare-fun b_lambda!35235 () Bool)

(assert (= b_lambda!35227 (or (and b!1179931 b_free!28039 (= (toChars!3006 (transformation!2042 (h!17131 rules!4386))) (toChars!3006 (transformation!2042 (rule!3463 (h!17132 l!6534)))))) (and b!1179936 b_free!28043) (and b!1180215 b_free!28055 (= (toChars!3006 (transformation!2042 (rule!3463 (h!17132 (t!111331 l!6534))))) (toChars!3006 (transformation!2042 (rule!3463 (h!17132 l!6534)))))) (and b!1180230 b_free!28059 (= (toChars!3006 (transformation!2042 (h!17131 (t!111330 rules!4386)))) (toChars!3006 (transformation!2042 (rule!3463 (h!17132 l!6534)))))) b_lambda!35235)))

(push 1)

(assert tp_is_empty!5801)

(assert (not b!1180040))

(assert (not b!1180100))

(assert (not b!1180217))

(assert (not b_lambda!35235))

(assert (not b!1180212))

(assert (not b!1180059))

(assert (not b!1180014))

(assert (not d!337734))

(assert (not b!1180012))

(assert (not d!337774))

(assert (not b!1180019))

(assert (not b_next!28761))

(assert (not b_next!28741))

(assert (not b!1180219))

(assert (not b!1180231))

(assert (not d!337754))

(assert (not d!337740))

(assert (not b_next!28763))

(assert (not b!1180199))

(assert (not d!337730))

(assert (not b_next!28759))

(assert (not b!1180054))

(assert (not b!1180201))

(assert (not b!1180041))

(assert (not b!1180229))

(assert b_and!80997)

(assert (not b!1180047))

(assert (not b!1180182))

(assert b_and!81007)

(assert (not b!1180028))

(assert b_and!80985)

(assert (not bs!286861))

(assert (not b!1180060))

(assert (not b!1180066))

(assert (not b!1180021))

(assert (not b!1180140))

(assert (not b!1180013))

(assert (not b!1180029))

(assert (not b_next!28757))

(assert b_and!80999)

(assert (not d!337750))

(assert (not b!1180082))

(assert (not d!337758))

(assert (not bm!82574))

(assert (not b_lambda!35233))

(assert (not b!1180187))

(assert (not b!1180228))

(assert (not d!337746))

(assert (not b!1180200))

(assert (not b!1180132))

(assert (not b!1180020))

(assert (not b_next!28747))

(assert (not b_next!28743))

(assert (not b!1180180))

(assert (not d!337744))

(assert (not tb!66077))

(assert (not b!1180079))

(assert (not b!1180080))

(assert b_and!81001)

(assert (not b!1180101))

(assert (not b!1180043))

(assert (not b!1180218))

(assert b_and!80981)

(assert (not d!337760))

(assert (not b!1180213))

(assert b_and!81005)

(assert (not d!337768))

(assert (not b!1180214))

(assert (not b!1180081))

(assert (not b!1180065))

(assert (not b!1180181))

(assert (not b_next!28745))

(assert b_and!81003)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!28763))

(assert (not b_next!28759))

(assert b_and!80997)

(assert b_and!81007)

(assert b_and!80985)

(assert (not b_next!28757))

(assert b_and!80999)

(assert b_and!81001)

(assert b_and!80981)

(assert b_and!81005)

(assert (not b_next!28761))

(assert (not b_next!28741))

(assert (not b_next!28747))

(assert (not b_next!28743))

(assert (not b_next!28745))

(assert b_and!81003)

(check-sat)

(pop 1)

