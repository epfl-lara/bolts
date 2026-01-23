; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277344 () Bool)

(assert start!277344)

(declare-fun b!2847660 () Bool)

(declare-fun b_free!82757 () Bool)

(declare-fun b_next!83461 () Bool)

(assert (=> b!2847660 (= b_free!82757 (not b_next!83461))))

(declare-fun tp!913930 () Bool)

(declare-fun b_and!208999 () Bool)

(assert (=> b!2847660 (= tp!913930 b_and!208999)))

(declare-fun b_free!82759 () Bool)

(declare-fun b_next!83463 () Bool)

(assert (=> b!2847660 (= b_free!82759 (not b_next!83463))))

(declare-fun tp!913925 () Bool)

(declare-fun b_and!209001 () Bool)

(assert (=> b!2847660 (= tp!913925 b_and!209001)))

(declare-fun b!2847663 () Bool)

(declare-fun b_free!82761 () Bool)

(declare-fun b_next!83465 () Bool)

(assert (=> b!2847663 (= b_free!82761 (not b_next!83465))))

(declare-fun tp!913923 () Bool)

(declare-fun b_and!209003 () Bool)

(assert (=> b!2847663 (= tp!913923 b_and!209003)))

(declare-fun b_free!82763 () Bool)

(declare-fun b_next!83467 () Bool)

(assert (=> b!2847663 (= b_free!82763 (not b_next!83467))))

(declare-fun tp!913928 () Bool)

(declare-fun b_and!209005 () Bool)

(assert (=> b!2847663 (= tp!913928 b_and!209005)))

(declare-fun tp!913927 () Bool)

(declare-fun b!2847654 () Bool)

(declare-fun e!1804464 () Bool)

(declare-datatypes ((List!33945 0))(
  ( (Nil!33821) (Cons!33821 (h!39241 (_ BitVec 16)) (t!232970 List!33945)) )
))
(declare-datatypes ((TokenValue!5309 0))(
  ( (FloatLiteralValue!10618 (text!37608 List!33945)) (TokenValueExt!5308 (__x!22415 Int)) (Broken!26545 (value!163159 List!33945)) (Object!5432) (End!5309) (Def!5309) (Underscore!5309) (Match!5309) (Else!5309) (Error!5309) (Case!5309) (If!5309) (Extends!5309) (Abstract!5309) (Class!5309) (Val!5309) (DelimiterValue!10618 (del!5369 List!33945)) (KeywordValue!5315 (value!163160 List!33945)) (CommentValue!10618 (value!163161 List!33945)) (WhitespaceValue!10618 (value!163162 List!33945)) (IndentationValue!5309 (value!163163 List!33945)) (String!37160) (Int32!5309) (Broken!26546 (value!163164 List!33945)) (Boolean!5310) (Unit!47575) (OperatorValue!5312 (op!5369 List!33945)) (IdentifierValue!10618 (value!163165 List!33945)) (IdentifierValue!10619 (value!163166 List!33945)) (WhitespaceValue!10619 (value!163167 List!33945)) (True!10618) (False!10618) (Broken!26547 (value!163168 List!33945)) (Broken!26548 (value!163169 List!33945)) (True!10619) (RightBrace!5309) (RightBracket!5309) (Colon!5309) (Null!5309) (Comma!5309) (LeftBracket!5309) (False!10619) (LeftBrace!5309) (ImaginaryLiteralValue!5309 (text!37609 List!33945)) (StringLiteralValue!15927 (value!163170 List!33945)) (EOFValue!5309 (value!163171 List!33945)) (IdentValue!5309 (value!163172 List!33945)) (DelimiterValue!10619 (value!163173 List!33945)) (DedentValue!5309 (value!163174 List!33945)) (NewLineValue!5309 (value!163175 List!33945)) (IntegerValue!15927 (value!163176 (_ BitVec 32)) (text!37610 List!33945)) (IntegerValue!15928 (value!163177 Int) (text!37611 List!33945)) (Times!5309) (Or!5309) (Equal!5309) (Minus!5309) (Broken!26549 (value!163178 List!33945)) (And!5309) (Div!5309) (LessEqual!5309) (Mod!5309) (Concat!13803) (Not!5309) (Plus!5309) (SpaceValue!5309 (value!163179 List!33945)) (IntegerValue!15929 (value!163180 Int) (text!37612 List!33945)) (StringLiteralValue!15928 (text!37613 List!33945)) (FloatLiteralValue!10619 (text!37614 List!33945)) (BytesLiteralValue!5309 (value!163181 List!33945)) (CommentValue!10619 (value!163182 List!33945)) (StringLiteralValue!15929 (value!163183 List!33945)) (ErrorTokenValue!5309 (msg!5370 List!33945)) )
))
(declare-datatypes ((C!17170 0))(
  ( (C!17171 (val!10619 Int)) )
))
(declare-datatypes ((List!33946 0))(
  ( (Nil!33822) (Cons!33822 (h!39242 C!17170) (t!232971 List!33946)) )
))
(declare-datatypes ((IArray!20979 0))(
  ( (IArray!20980 (innerList!10547 List!33946)) )
))
(declare-datatypes ((Regex!8494 0))(
  ( (ElementMatch!8494 (c!459458 C!17170)) (Concat!13804 (regOne!17500 Regex!8494) (regTwo!17500 Regex!8494)) (EmptyExpr!8494) (Star!8494 (reg!8823 Regex!8494)) (EmptyLang!8494) (Union!8494 (regOne!17501 Regex!8494) (regTwo!17501 Regex!8494)) )
))
(declare-datatypes ((Conc!10487 0))(
  ( (Node!10487 (left!25457 Conc!10487) (right!25787 Conc!10487) (csize!21204 Int) (cheight!10698 Int)) (Leaf!15958 (xs!13605 IArray!20979) (csize!21205 Int)) (Empty!10487) )
))
(declare-datatypes ((BalanceConc!20612 0))(
  ( (BalanceConc!20613 (c!459459 Conc!10487)) )
))
(declare-datatypes ((String!37161 0))(
  ( (String!37162 (value!163184 String)) )
))
(declare-datatypes ((TokenValueInjection!10046 0))(
  ( (TokenValueInjection!10047 (toValue!7135 Int) (toChars!6994 Int)) )
))
(declare-datatypes ((Rule!9958 0))(
  ( (Rule!9959 (regex!5079 Regex!8494) (tag!5583 String!37161) (isSeparator!5079 Bool) (transformation!5079 TokenValueInjection!10046)) )
))
(declare-datatypes ((List!33947 0))(
  ( (Nil!33823) (Cons!33823 (h!39243 Rule!9958) (t!232972 List!33947)) )
))
(declare-fun rules!1039 () List!33947)

(declare-fun e!1804460 () Bool)

(declare-fun inv!45858 (String!37161) Bool)

(declare-fun inv!45861 (TokenValueInjection!10046) Bool)

(assert (=> b!2847654 (= e!1804464 (and tp!913927 (inv!45858 (tag!5583 (h!39243 rules!1039))) (inv!45861 (transformation!5079 (h!39243 rules!1039))) e!1804460))))

(declare-fun e!1804457 () Bool)

(declare-fun e!1804465 () Bool)

(declare-fun b!2847655 () Bool)

(declare-fun rs!188 () List!33947)

(declare-fun tp!913926 () Bool)

(assert (=> b!2847655 (= e!1804465 (and tp!913926 (inv!45858 (tag!5583 (h!39243 rs!188))) (inv!45861 (transformation!5079 (h!39243 rs!188))) e!1804457))))

(declare-fun b!2847656 () Bool)

(declare-fun e!1804462 () Bool)

(declare-datatypes ((LexerInterface!4668 0))(
  ( (LexerInterfaceExt!4665 (__x!22416 Int)) (Lexer!4666) )
))
(declare-fun thiss!10983 () LexerInterface!4668)

(declare-fun rulesValidInductive!1744 (LexerInterface!4668 List!33947) Bool)

(assert (=> b!2847656 (= e!1804462 (not (rulesValidInductive!1744 thiss!10983 (t!232972 rs!188))))))

(declare-fun b!2847657 () Bool)

(declare-fun res!1183915 () Bool)

(assert (=> b!2847657 (=> (not res!1183915) (not e!1804462))))

(assert (=> b!2847657 (= res!1183915 (rulesValidInductive!1744 thiss!10983 rules!1039))))

(declare-fun b!2847658 () Bool)

(declare-fun res!1183916 () Bool)

(assert (=> b!2847658 (=> (not res!1183916) (not e!1804462))))

(assert (=> b!2847658 (= res!1183916 (rulesValidInductive!1744 thiss!10983 rs!188))))

(declare-fun b!2847659 () Bool)

(declare-fun e!1804458 () Bool)

(declare-fun tp!913929 () Bool)

(assert (=> b!2847659 (= e!1804458 (and e!1804464 tp!913929))))

(declare-fun b!2847661 () Bool)

(declare-fun e!1804459 () Bool)

(declare-fun tp!913924 () Bool)

(assert (=> b!2847661 (= e!1804459 (and e!1804465 tp!913924))))

(declare-fun b!2847662 () Bool)

(declare-fun res!1183913 () Bool)

(assert (=> b!2847662 (=> (not res!1183913) (not e!1804462))))

(assert (=> b!2847662 (= res!1183913 (not (is-Nil!33823 rs!188)))))

(assert (=> b!2847663 (= e!1804457 (and tp!913923 tp!913928))))

(declare-fun res!1183914 () Bool)

(assert (=> start!277344 (=> (not res!1183914) (not e!1804462))))

(assert (=> start!277344 (= res!1183914 (is-Lexer!4666 thiss!10983))))

(assert (=> start!277344 e!1804462))

(assert (=> start!277344 true))

(assert (=> start!277344 e!1804458))

(assert (=> start!277344 e!1804459))

(assert (=> b!2847660 (= e!1804460 (and tp!913930 tp!913925))))

(assert (= (and start!277344 res!1183914) b!2847657))

(assert (= (and b!2847657 res!1183915) b!2847658))

(assert (= (and b!2847658 res!1183916) b!2847662))

(assert (= (and b!2847662 res!1183913) b!2847656))

(assert (= b!2847654 b!2847660))

(assert (= b!2847659 b!2847654))

(assert (= (and start!277344 (is-Cons!33823 rules!1039)) b!2847659))

(assert (= b!2847655 b!2847663))

(assert (= b!2847661 b!2847655))

(assert (= (and start!277344 (is-Cons!33823 rs!188)) b!2847661))

(declare-fun m!3275061 () Bool)

(assert (=> b!2847655 m!3275061))

(declare-fun m!3275063 () Bool)

(assert (=> b!2847655 m!3275063))

(declare-fun m!3275065 () Bool)

(assert (=> b!2847657 m!3275065))

(declare-fun m!3275067 () Bool)

(assert (=> b!2847654 m!3275067))

(declare-fun m!3275069 () Bool)

(assert (=> b!2847654 m!3275069))

(declare-fun m!3275071 () Bool)

(assert (=> b!2847658 m!3275071))

(declare-fun m!3275073 () Bool)

(assert (=> b!2847656 m!3275073))

(push 1)

(assert (not b_next!83467))

(assert (not b!2847659))

(assert b_and!209003)

(assert b_and!209005)

(assert (not b!2847658))

(assert (not b!2847656))

(assert (not b_next!83461))

(assert b_and!208999)

(assert (not b_next!83463))

(assert (not b!2847655))

(assert (not b!2847661))

(assert b_and!209001)

(assert (not b!2847657))

(assert (not b!2847654))

(assert (not b_next!83465))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!83467))

(assert b_and!209003)

(assert b_and!209005)

(assert (not b_next!83461))

(assert b_and!208999)

(assert (not b_next!83463))

(assert b_and!209001)

(assert (not b_next!83465))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!825549 () Bool)

(assert (=> d!825549 true))

(declare-fun lt!1012981 () Bool)

(declare-fun lambda!104560 () Int)

(declare-fun forall!6942 (List!33947 Int) Bool)

(assert (=> d!825549 (= lt!1012981 (forall!6942 rs!188 lambda!104560))))

(declare-fun e!1804502 () Bool)

(assert (=> d!825549 (= lt!1012981 e!1804502)))

(declare-fun res!1183944 () Bool)

(assert (=> d!825549 (=> res!1183944 e!1804502)))

(assert (=> d!825549 (= res!1183944 (not (is-Cons!33823 rs!188)))))

(assert (=> d!825549 (= (rulesValidInductive!1744 thiss!10983 rs!188) lt!1012981)))

(declare-fun b!2847702 () Bool)

(declare-fun e!1804501 () Bool)

(assert (=> b!2847702 (= e!1804502 e!1804501)))

(declare-fun res!1183945 () Bool)

(assert (=> b!2847702 (=> (not res!1183945) (not e!1804501))))

(declare-fun ruleValid!1608 (LexerInterface!4668 Rule!9958) Bool)

(assert (=> b!2847702 (= res!1183945 (ruleValid!1608 thiss!10983 (h!39243 rs!188)))))

(declare-fun b!2847703 () Bool)

(assert (=> b!2847703 (= e!1804501 (rulesValidInductive!1744 thiss!10983 (t!232972 rs!188)))))

(assert (= (and d!825549 (not res!1183944)) b!2847702))

(assert (= (and b!2847702 res!1183945) b!2847703))

(declare-fun m!3275089 () Bool)

(assert (=> d!825549 m!3275089))

(declare-fun m!3275091 () Bool)

(assert (=> b!2847702 m!3275091))

(assert (=> b!2847703 m!3275073))

(assert (=> b!2847658 d!825549))

(declare-fun d!825553 () Bool)

(assert (=> d!825553 (= (inv!45858 (tag!5583 (h!39243 rules!1039))) (= (mod (str.len (value!163184 (tag!5583 (h!39243 rules!1039)))) 2) 0))))

(assert (=> b!2847654 d!825553))

(declare-fun d!825555 () Bool)

(declare-fun res!1183948 () Bool)

(declare-fun e!1804505 () Bool)

(assert (=> d!825555 (=> (not res!1183948) (not e!1804505))))

(declare-fun semiInverseModEq!2119 (Int Int) Bool)

(assert (=> d!825555 (= res!1183948 (semiInverseModEq!2119 (toChars!6994 (transformation!5079 (h!39243 rules!1039))) (toValue!7135 (transformation!5079 (h!39243 rules!1039)))))))

(assert (=> d!825555 (= (inv!45861 (transformation!5079 (h!39243 rules!1039))) e!1804505)))

(declare-fun b!2847708 () Bool)

(declare-fun equivClasses!2018 (Int Int) Bool)

(assert (=> b!2847708 (= e!1804505 (equivClasses!2018 (toChars!6994 (transformation!5079 (h!39243 rules!1039))) (toValue!7135 (transformation!5079 (h!39243 rules!1039)))))))

(assert (= (and d!825555 res!1183948) b!2847708))

(declare-fun m!3275093 () Bool)

(assert (=> d!825555 m!3275093))

(declare-fun m!3275095 () Bool)

(assert (=> b!2847708 m!3275095))

(assert (=> b!2847654 d!825555))

(declare-fun d!825557 () Bool)

(assert (=> d!825557 (= (inv!45858 (tag!5583 (h!39243 rs!188))) (= (mod (str.len (value!163184 (tag!5583 (h!39243 rs!188)))) 2) 0))))

(assert (=> b!2847655 d!825557))

(declare-fun d!825559 () Bool)

(declare-fun res!1183949 () Bool)

(declare-fun e!1804506 () Bool)

(assert (=> d!825559 (=> (not res!1183949) (not e!1804506))))

(assert (=> d!825559 (= res!1183949 (semiInverseModEq!2119 (toChars!6994 (transformation!5079 (h!39243 rs!188))) (toValue!7135 (transformation!5079 (h!39243 rs!188)))))))

(assert (=> d!825559 (= (inv!45861 (transformation!5079 (h!39243 rs!188))) e!1804506)))

(declare-fun b!2847709 () Bool)

(assert (=> b!2847709 (= e!1804506 (equivClasses!2018 (toChars!6994 (transformation!5079 (h!39243 rs!188))) (toValue!7135 (transformation!5079 (h!39243 rs!188)))))))

(assert (= (and d!825559 res!1183949) b!2847709))

(declare-fun m!3275097 () Bool)

(assert (=> d!825559 m!3275097))

(declare-fun m!3275099 () Bool)

(assert (=> b!2847709 m!3275099))

(assert (=> b!2847655 d!825559))

(declare-fun bs!519988 () Bool)

(declare-fun d!825561 () Bool)

(assert (= bs!519988 (and d!825561 d!825549)))

(declare-fun lambda!104561 () Int)

(assert (=> bs!519988 (= lambda!104561 lambda!104560)))

(assert (=> d!825561 true))

(declare-fun lt!1012982 () Bool)

(assert (=> d!825561 (= lt!1012982 (forall!6942 rules!1039 lambda!104561))))

(declare-fun e!1804508 () Bool)

(assert (=> d!825561 (= lt!1012982 e!1804508)))

(declare-fun res!1183950 () Bool)

(assert (=> d!825561 (=> res!1183950 e!1804508)))

(assert (=> d!825561 (= res!1183950 (not (is-Cons!33823 rules!1039)))))

(assert (=> d!825561 (= (rulesValidInductive!1744 thiss!10983 rules!1039) lt!1012982)))

(declare-fun b!2847710 () Bool)

(declare-fun e!1804507 () Bool)

(assert (=> b!2847710 (= e!1804508 e!1804507)))

(declare-fun res!1183951 () Bool)

(assert (=> b!2847710 (=> (not res!1183951) (not e!1804507))))

(assert (=> b!2847710 (= res!1183951 (ruleValid!1608 thiss!10983 (h!39243 rules!1039)))))

(declare-fun b!2847711 () Bool)

(assert (=> b!2847711 (= e!1804507 (rulesValidInductive!1744 thiss!10983 (t!232972 rules!1039)))))

(assert (= (and d!825561 (not res!1183950)) b!2847710))

(assert (= (and b!2847710 res!1183951) b!2847711))

(declare-fun m!3275101 () Bool)

(assert (=> d!825561 m!3275101))

(declare-fun m!3275103 () Bool)

(assert (=> b!2847710 m!3275103))

(declare-fun m!3275105 () Bool)

(assert (=> b!2847711 m!3275105))

(assert (=> b!2847657 d!825561))

(declare-fun bs!519989 () Bool)

(declare-fun d!825563 () Bool)

(assert (= bs!519989 (and d!825563 d!825549)))

(declare-fun lambda!104562 () Int)

(assert (=> bs!519989 (= lambda!104562 lambda!104560)))

(declare-fun bs!519990 () Bool)

(assert (= bs!519990 (and d!825563 d!825561)))

(assert (=> bs!519990 (= lambda!104562 lambda!104561)))

(assert (=> d!825563 true))

(declare-fun lt!1012983 () Bool)

(assert (=> d!825563 (= lt!1012983 (forall!6942 (t!232972 rs!188) lambda!104562))))

(declare-fun e!1804510 () Bool)

(assert (=> d!825563 (= lt!1012983 e!1804510)))

(declare-fun res!1183952 () Bool)

(assert (=> d!825563 (=> res!1183952 e!1804510)))

(assert (=> d!825563 (= res!1183952 (not (is-Cons!33823 (t!232972 rs!188))))))

(assert (=> d!825563 (= (rulesValidInductive!1744 thiss!10983 (t!232972 rs!188)) lt!1012983)))

(declare-fun b!2847712 () Bool)

(declare-fun e!1804509 () Bool)

(assert (=> b!2847712 (= e!1804510 e!1804509)))

(declare-fun res!1183953 () Bool)

(assert (=> b!2847712 (=> (not res!1183953) (not e!1804509))))

(assert (=> b!2847712 (= res!1183953 (ruleValid!1608 thiss!10983 (h!39243 (t!232972 rs!188))))))

(declare-fun b!2847713 () Bool)

(assert (=> b!2847713 (= e!1804509 (rulesValidInductive!1744 thiss!10983 (t!232972 (t!232972 rs!188))))))

(assert (= (and d!825563 (not res!1183952)) b!2847712))

(assert (= (and b!2847712 res!1183953) b!2847713))

(declare-fun m!3275107 () Bool)

(assert (=> d!825563 m!3275107))

(declare-fun m!3275109 () Bool)

(assert (=> b!2847712 m!3275109))

(declare-fun m!3275111 () Bool)

(assert (=> b!2847713 m!3275111))

(assert (=> b!2847656 d!825563))

(declare-fun b!2847726 () Bool)

(declare-fun e!1804513 () Bool)

(declare-fun tp!913966 () Bool)

(assert (=> b!2847726 (= e!1804513 tp!913966)))

(assert (=> b!2847654 (= tp!913927 e!1804513)))

(declare-fun b!2847725 () Bool)

(declare-fun tp!913968 () Bool)

(declare-fun tp!913965 () Bool)

(assert (=> b!2847725 (= e!1804513 (and tp!913968 tp!913965))))

(declare-fun b!2847727 () Bool)

(declare-fun tp!913967 () Bool)

(declare-fun tp!913969 () Bool)

(assert (=> b!2847727 (= e!1804513 (and tp!913967 tp!913969))))

(declare-fun b!2847724 () Bool)

(declare-fun tp_is_empty!14729 () Bool)

(assert (=> b!2847724 (= e!1804513 tp_is_empty!14729)))

(assert (= (and b!2847654 (is-ElementMatch!8494 (regex!5079 (h!39243 rules!1039)))) b!2847724))

(assert (= (and b!2847654 (is-Concat!13804 (regex!5079 (h!39243 rules!1039)))) b!2847725))

(assert (= (and b!2847654 (is-Star!8494 (regex!5079 (h!39243 rules!1039)))) b!2847726))

(assert (= (and b!2847654 (is-Union!8494 (regex!5079 (h!39243 rules!1039)))) b!2847727))

(declare-fun b!2847738 () Bool)

(declare-fun b_free!82773 () Bool)

(declare-fun b_next!83477 () Bool)

(assert (=> b!2847738 (= b_free!82773 (not b_next!83477))))

(declare-fun tp!913981 () Bool)

(declare-fun b_and!209015 () Bool)

(assert (=> b!2847738 (= tp!913981 b_and!209015)))

(declare-fun b_free!82775 () Bool)

(declare-fun b_next!83479 () Bool)

(assert (=> b!2847738 (= b_free!82775 (not b_next!83479))))

(declare-fun tp!913979 () Bool)

(declare-fun b_and!209017 () Bool)

(assert (=> b!2847738 (= tp!913979 b_and!209017)))

(declare-fun e!1804525 () Bool)

(assert (=> b!2847738 (= e!1804525 (and tp!913981 tp!913979))))

(declare-fun tp!913978 () Bool)

(declare-fun e!1804523 () Bool)

(declare-fun b!2847737 () Bool)

(assert (=> b!2847737 (= e!1804523 (and tp!913978 (inv!45858 (tag!5583 (h!39243 (t!232972 rules!1039)))) (inv!45861 (transformation!5079 (h!39243 (t!232972 rules!1039)))) e!1804525))))

(declare-fun b!2847736 () Bool)

(declare-fun e!1804524 () Bool)

(declare-fun tp!913980 () Bool)

(assert (=> b!2847736 (= e!1804524 (and e!1804523 tp!913980))))

(assert (=> b!2847659 (= tp!913929 e!1804524)))

(assert (= b!2847737 b!2847738))

(assert (= b!2847736 b!2847737))

(assert (= (and b!2847659 (is-Cons!33823 (t!232972 rules!1039))) b!2847736))

(declare-fun m!3275113 () Bool)

(assert (=> b!2847737 m!3275113))

(declare-fun m!3275115 () Bool)

(assert (=> b!2847737 m!3275115))

(declare-fun b!2847741 () Bool)

(declare-fun b_free!82777 () Bool)

(declare-fun b_next!83481 () Bool)

(assert (=> b!2847741 (= b_free!82777 (not b_next!83481))))

(declare-fun tp!913985 () Bool)

(declare-fun b_and!209019 () Bool)

(assert (=> b!2847741 (= tp!913985 b_and!209019)))

(declare-fun b_free!82779 () Bool)

(declare-fun b_next!83483 () Bool)

(assert (=> b!2847741 (= b_free!82779 (not b_next!83483))))

(declare-fun tp!913983 () Bool)

(declare-fun b_and!209021 () Bool)

(assert (=> b!2847741 (= tp!913983 b_and!209021)))

(declare-fun e!1804529 () Bool)

(assert (=> b!2847741 (= e!1804529 (and tp!913985 tp!913983))))

(declare-fun e!1804527 () Bool)

(declare-fun tp!913982 () Bool)

(declare-fun b!2847740 () Bool)

(assert (=> b!2847740 (= e!1804527 (and tp!913982 (inv!45858 (tag!5583 (h!39243 (t!232972 rs!188)))) (inv!45861 (transformation!5079 (h!39243 (t!232972 rs!188)))) e!1804529))))

(declare-fun b!2847739 () Bool)

(declare-fun e!1804528 () Bool)

(declare-fun tp!913984 () Bool)

(assert (=> b!2847739 (= e!1804528 (and e!1804527 tp!913984))))

(assert (=> b!2847661 (= tp!913924 e!1804528)))

(assert (= b!2847740 b!2847741))

(assert (= b!2847739 b!2847740))

(assert (= (and b!2847661 (is-Cons!33823 (t!232972 rs!188))) b!2847739))

(declare-fun m!3275117 () Bool)

(assert (=> b!2847740 m!3275117))

(declare-fun m!3275119 () Bool)

(assert (=> b!2847740 m!3275119))

(declare-fun b!2847744 () Bool)

(declare-fun e!1804530 () Bool)

(declare-fun tp!913987 () Bool)

(assert (=> b!2847744 (= e!1804530 tp!913987)))

(assert (=> b!2847655 (= tp!913926 e!1804530)))

(declare-fun b!2847743 () Bool)

(declare-fun tp!913989 () Bool)

(declare-fun tp!913986 () Bool)

(assert (=> b!2847743 (= e!1804530 (and tp!913989 tp!913986))))

(declare-fun b!2847745 () Bool)

(declare-fun tp!913988 () Bool)

(declare-fun tp!913990 () Bool)

(assert (=> b!2847745 (= e!1804530 (and tp!913988 tp!913990))))

(declare-fun b!2847742 () Bool)

(assert (=> b!2847742 (= e!1804530 tp_is_empty!14729)))

(assert (= (and b!2847655 (is-ElementMatch!8494 (regex!5079 (h!39243 rs!188)))) b!2847742))

(assert (= (and b!2847655 (is-Concat!13804 (regex!5079 (h!39243 rs!188)))) b!2847743))

(assert (= (and b!2847655 (is-Star!8494 (regex!5079 (h!39243 rs!188)))) b!2847744))

(assert (= (and b!2847655 (is-Union!8494 (regex!5079 (h!39243 rs!188)))) b!2847745))

(push 1)

(assert (not b_next!83481))

(assert (not b!2847712))

(assert b_and!208999)

(assert (not b_next!83463))

(assert (not b!2847703))

(assert b_and!209019)

(assert b_and!209001)

(assert (not b!2847709))

(assert (not b!2847745))

(assert (not b!2847744))

(assert (not b!2847736))

(assert (not b!2847725))

(assert (not b_next!83467))

(assert b_and!209015)

(assert (not d!825561))

(assert (not b_next!83479))

(assert (not d!825555))

(assert (not b_next!83483))

(assert b_and!209021)

(assert (not b!2847702))

(assert tp_is_empty!14729)

(assert (not d!825549))

(assert b_and!209003)

(assert (not b!2847726))

(assert (not b!2847713))

(assert b_and!209005)

(assert b_and!209017)

(assert (not d!825559))

(assert (not b_next!83461))

(assert (not d!825563))

(assert (not b_next!83477))

(assert (not b!2847740))

(assert (not b!2847711))

(assert (not b!2847727))

(assert (not b_next!83465))

(assert (not b!2847739))

(assert (not b!2847737))

(assert (not b!2847743))

(assert (not b!2847708))

(assert (not b!2847710))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!83479))

(assert b_and!209003)

(assert b_and!209005)

(assert b_and!209017)

(assert (not b_next!83481))

(assert b_and!208999)

(assert (not b_next!83463))

(assert b_and!209019)

(assert b_and!209001)

(assert (not b_next!83465))

(assert (not b_next!83467))

(assert b_and!209015)

(assert (not b_next!83483))

(assert b_and!209021)

(assert (not b_next!83461))

(assert (not b_next!83477))

(check-sat)

(pop 1)

