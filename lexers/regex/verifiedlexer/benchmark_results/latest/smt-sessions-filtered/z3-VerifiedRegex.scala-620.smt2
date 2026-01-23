; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19998 () Bool)

(assert start!19998)

(declare-fun b!184715 () Bool)

(declare-fun b_free!7233 () Bool)

(declare-fun b_next!7233 () Bool)

(assert (=> b!184715 (= b_free!7233 (not b_next!7233))))

(declare-fun tp!87251 () Bool)

(declare-fun b_and!12693 () Bool)

(assert (=> b!184715 (= tp!87251 b_and!12693)))

(declare-fun b_free!7235 () Bool)

(declare-fun b_next!7235 () Bool)

(assert (=> b!184715 (= b_free!7235 (not b_next!7235))))

(declare-fun tp!87247 () Bool)

(declare-fun b_and!12695 () Bool)

(assert (=> b!184715 (= tp!87247 b_and!12695)))

(declare-fun b!184704 () Bool)

(declare-fun b_free!7237 () Bool)

(declare-fun b_next!7237 () Bool)

(assert (=> b!184704 (= b_free!7237 (not b_next!7237))))

(declare-fun tp!87246 () Bool)

(declare-fun b_and!12697 () Bool)

(assert (=> b!184704 (= tp!87246 b_and!12697)))

(declare-fun b_free!7239 () Bool)

(declare-fun b_next!7239 () Bool)

(assert (=> b!184704 (= b_free!7239 (not b_next!7239))))

(declare-fun tp!87243 () Bool)

(declare-fun b_and!12699 () Bool)

(assert (=> b!184704 (= tp!87243 b_and!12699)))

(declare-fun b!184716 () Bool)

(declare-fun b_free!7241 () Bool)

(declare-fun b_next!7241 () Bool)

(assert (=> b!184716 (= b_free!7241 (not b_next!7241))))

(declare-fun tp!87250 () Bool)

(declare-fun b_and!12701 () Bool)

(assert (=> b!184716 (= tp!87250 b_and!12701)))

(declare-fun b_free!7243 () Bool)

(declare-fun b_next!7243 () Bool)

(assert (=> b!184716 (= b_free!7243 (not b_next!7243))))

(declare-fun tp!87242 () Bool)

(declare-fun b_and!12703 () Bool)

(assert (=> b!184716 (= tp!87242 b_and!12703)))

(declare-fun bs!18344 () Bool)

(declare-fun b!184691 () Bool)

(declare-fun b!184714 () Bool)

(assert (= bs!18344 (and b!184691 b!184714)))

(declare-fun lambda!5538 () Int)

(declare-fun lambda!5537 () Int)

(assert (=> bs!18344 (not (= lambda!5538 lambda!5537))))

(declare-fun b!184730 () Bool)

(declare-fun e!112901 () Bool)

(assert (=> b!184730 (= e!112901 true)))

(declare-fun b!184729 () Bool)

(declare-fun e!112900 () Bool)

(assert (=> b!184729 (= e!112900 e!112901)))

(declare-fun b!184728 () Bool)

(declare-fun e!112899 () Bool)

(assert (=> b!184728 (= e!112899 e!112900)))

(assert (=> b!184691 e!112899))

(assert (= b!184729 b!184730))

(assert (= b!184728 b!184729))

(declare-datatypes ((List!3101 0))(
  ( (Nil!3091) (Cons!3091 (h!8488 (_ BitVec 16)) (t!28539 List!3101)) )
))
(declare-datatypes ((TokenValue!585 0))(
  ( (FloatLiteralValue!1170 (text!4540 List!3101)) (TokenValueExt!584 (__x!2657 Int)) (Broken!2925 (value!20335 List!3101)) (Object!594) (End!585) (Def!585) (Underscore!585) (Match!585) (Else!585) (Error!585) (Case!585) (If!585) (Extends!585) (Abstract!585) (Class!585) (Val!585) (DelimiterValue!1170 (del!645 List!3101)) (KeywordValue!591 (value!20336 List!3101)) (CommentValue!1170 (value!20337 List!3101)) (WhitespaceValue!1170 (value!20338 List!3101)) (IndentationValue!585 (value!20339 List!3101)) (String!4004) (Int32!585) (Broken!2926 (value!20340 List!3101)) (Boolean!586) (Unit!2859) (OperatorValue!588 (op!645 List!3101)) (IdentifierValue!1170 (value!20341 List!3101)) (IdentifierValue!1171 (value!20342 List!3101)) (WhitespaceValue!1171 (value!20343 List!3101)) (True!1170) (False!1170) (Broken!2927 (value!20344 List!3101)) (Broken!2928 (value!20345 List!3101)) (True!1171) (RightBrace!585) (RightBracket!585) (Colon!585) (Null!585) (Comma!585) (LeftBracket!585) (False!1171) (LeftBrace!585) (ImaginaryLiteralValue!585 (text!4541 List!3101)) (StringLiteralValue!1755 (value!20346 List!3101)) (EOFValue!585 (value!20347 List!3101)) (IdentValue!585 (value!20348 List!3101)) (DelimiterValue!1171 (value!20349 List!3101)) (DedentValue!585 (value!20350 List!3101)) (NewLineValue!585 (value!20351 List!3101)) (IntegerValue!1755 (value!20352 (_ BitVec 32)) (text!4542 List!3101)) (IntegerValue!1756 (value!20353 Int) (text!4543 List!3101)) (Times!585) (Or!585) (Equal!585) (Minus!585) (Broken!2929 (value!20354 List!3101)) (And!585) (Div!585) (LessEqual!585) (Mod!585) (Concat!1372) (Not!585) (Plus!585) (SpaceValue!585 (value!20355 List!3101)) (IntegerValue!1757 (value!20356 Int) (text!4544 List!3101)) (StringLiteralValue!1756 (text!4545 List!3101)) (FloatLiteralValue!1171 (text!4546 List!3101)) (BytesLiteralValue!585 (value!20357 List!3101)) (CommentValue!1171 (value!20358 List!3101)) (StringLiteralValue!1757 (value!20359 List!3101)) (ErrorTokenValue!585 (msg!646 List!3101)) )
))
(declare-datatypes ((C!2496 0))(
  ( (C!2497 (val!1134 Int)) )
))
(declare-datatypes ((List!3102 0))(
  ( (Nil!3092) (Cons!3092 (h!8489 C!2496) (t!28540 List!3102)) )
))
(declare-datatypes ((IArray!1897 0))(
  ( (IArray!1898 (innerList!1006 List!3102)) )
))
(declare-datatypes ((Conc!948 0))(
  ( (Node!948 (left!2412 Conc!948) (right!2742 Conc!948) (csize!2126 Int) (cheight!1159 Int)) (Leaf!1569 (xs!3543 IArray!1897) (csize!2127 Int)) (Empty!948) )
))
(declare-datatypes ((BalanceConc!1904 0))(
  ( (BalanceConc!1905 (c!35803 Conc!948)) )
))
(declare-datatypes ((TokenValueInjection!942 0))(
  ( (TokenValueInjection!943 (toValue!1234 Int) (toChars!1093 Int)) )
))
(declare-datatypes ((String!4005 0))(
  ( (String!4006 (value!20360 String)) )
))
(declare-datatypes ((Regex!787 0))(
  ( (ElementMatch!787 (c!35804 C!2496)) (Concat!1373 (regOne!2086 Regex!787) (regTwo!2086 Regex!787)) (EmptyExpr!787) (Star!787 (reg!1116 Regex!787)) (EmptyLang!787) (Union!787 (regOne!2087 Regex!787) (regTwo!2087 Regex!787)) )
))
(declare-datatypes ((Rule!926 0))(
  ( (Rule!927 (regex!563 Regex!787) (tag!741 String!4005) (isSeparator!563 Bool) (transformation!563 TokenValueInjection!942)) )
))
(declare-datatypes ((List!3103 0))(
  ( (Nil!3093) (Cons!3093 (h!8490 Rule!926) (t!28541 List!3103)) )
))
(declare-fun rules!1920 () List!3103)

(get-info :version)

(assert (= (and b!184691 ((_ is Cons!3093) rules!1920)) b!184728))

(declare-fun order!1853 () Int)

(declare-fun order!1855 () Int)

(declare-fun dynLambda!1267 (Int Int) Int)

(declare-fun dynLambda!1268 (Int Int) Int)

(assert (=> b!184730 (< (dynLambda!1267 order!1853 (toValue!1234 (transformation!563 (h!8490 rules!1920)))) (dynLambda!1268 order!1855 lambda!5538))))

(declare-fun order!1857 () Int)

(declare-fun dynLambda!1269 (Int Int) Int)

(assert (=> b!184730 (< (dynLambda!1269 order!1857 (toChars!1093 (transformation!563 (h!8490 rules!1920)))) (dynLambda!1268 order!1855 lambda!5538))))

(assert (=> b!184691 true))

(declare-fun b!184684 () Bool)

(declare-fun res!84033 () Bool)

(declare-fun e!112884 () Bool)

(assert (=> b!184684 (=> (not res!84033) (not e!112884))))

(declare-fun sepAndNonSepRulesDisjointChars!152 (List!3103 List!3103) Bool)

(assert (=> b!184684 (= res!84033 (sepAndNonSepRulesDisjointChars!152 rules!1920 rules!1920))))

(declare-fun b!184685 () Bool)

(declare-fun e!112866 () Bool)

(declare-fun e!112878 () Bool)

(declare-fun tp!87249 () Bool)

(declare-fun inv!3920 (String!4005) Bool)

(declare-fun inv!3923 (TokenValueInjection!942) Bool)

(assert (=> b!184685 (= e!112878 (and tp!87249 (inv!3920 (tag!741 (h!8490 rules!1920))) (inv!3923 (transformation!563 (h!8490 rules!1920))) e!112866))))

(declare-fun lt!61624 () List!3102)

(declare-fun lt!61614 () List!3102)

(declare-fun e!112892 () Bool)

(declare-fun b!184686 () Bool)

(declare-fun lt!61606 () List!3102)

(declare-fun ++!732 (List!3102 List!3102) List!3102)

(assert (=> b!184686 (= e!112892 (not (= lt!61614 (++!732 lt!61624 lt!61606))))))

(declare-fun b!184687 () Bool)

(declare-fun e!112865 () Bool)

(declare-datatypes ((Token!870 0))(
  ( (Token!871 (value!20361 TokenValue!585) (rule!1078 Rule!926) (size!2505 Int) (originalCharacters!606 List!3102)) )
))
(declare-datatypes ((List!3104 0))(
  ( (Nil!3094) (Cons!3094 (h!8491 Token!870) (t!28542 List!3104)) )
))
(declare-fun tokens!465 () List!3104)

(declare-fun forall!639 (List!3104 Int) Bool)

(assert (=> b!184687 (= e!112865 (forall!639 (t!28542 tokens!465) lambda!5537))))

(declare-fun b!184688 () Bool)

(declare-fun res!84032 () Bool)

(declare-fun e!112867 () Bool)

(assert (=> b!184688 (=> (not res!84032) (not e!112867))))

(declare-fun lt!61626 () List!3102)

(declare-fun list!1137 (BalanceConc!1904) List!3102)

(declare-fun seqFromList!503 (List!3102) BalanceConc!1904)

(assert (=> b!184688 (= res!84032 (= (list!1137 (seqFromList!503 lt!61614)) lt!61626))))

(declare-fun b!184689 () Bool)

(declare-fun res!84035 () Bool)

(assert (=> b!184689 (=> res!84035 e!112865)))

(declare-fun lt!61618 () List!3104)

(assert (=> b!184689 (= res!84035 (not (= tokens!465 lt!61618)))))

(declare-fun b!184690 () Bool)

(declare-fun e!112875 () Bool)

(declare-fun matchR!125 (Regex!787 List!3102) Bool)

(assert (=> b!184690 (= e!112875 (matchR!125 (regex!563 (rule!1078 (h!8491 tokens!465))) lt!61624))))

(declare-fun e!112871 () Bool)

(declare-fun e!112883 () Bool)

(assert (=> b!184691 (= e!112871 e!112883)))

(declare-fun res!84022 () Bool)

(assert (=> b!184691 (=> res!84022 e!112883)))

(declare-datatypes ((LexerInterface!449 0))(
  ( (LexerInterfaceExt!446 (__x!2658 Int)) (Lexer!447) )
))
(declare-fun thiss!17480 () LexerInterface!449)

(declare-datatypes ((tuple2!3110 0))(
  ( (tuple2!3111 (_1!1771 Token!870) (_2!1771 BalanceConc!1904)) )
))
(declare-datatypes ((Option!404 0))(
  ( (None!403) (Some!403 (v!13896 tuple2!3110)) )
))
(declare-fun isDefined!255 (Option!404) Bool)

(declare-fun maxPrefixZipperSequence!142 (LexerInterface!449 List!3103 BalanceConc!1904) Option!404)

(assert (=> b!184691 (= res!84022 (not (isDefined!255 (maxPrefixZipperSequence!142 thiss!17480 rules!1920 (seqFromList!503 (originalCharacters!606 (h!8491 tokens!465)))))))))

(declare-datatypes ((Unit!2860 0))(
  ( (Unit!2861) )
))
(declare-fun lt!61612 () Unit!2860)

(declare-fun forallContained!130 (List!3104 Int Token!870) Unit!2860)

(assert (=> b!184691 (= lt!61612 (forallContained!130 tokens!465 lambda!5538 (h!8491 tokens!465)))))

(assert (=> b!184691 (= lt!61624 (originalCharacters!606 (h!8491 tokens!465)))))

(declare-fun b!184693 () Bool)

(declare-fun res!84024 () Bool)

(assert (=> b!184693 (=> (not res!84024) (not e!112884))))

(declare-fun separatorToken!170 () Token!870)

(assert (=> b!184693 (= res!84024 (isSeparator!563 (rule!1078 separatorToken!170)))))

(declare-fun e!112882 () Bool)

(declare-fun tp!87245 () Bool)

(declare-fun e!112889 () Bool)

(declare-fun b!184694 () Bool)

(declare-fun inv!3924 (Token!870) Bool)

(assert (=> b!184694 (= e!112882 (and (inv!3924 (h!8491 tokens!465)) e!112889 tp!87245))))

(declare-fun b!184695 () Bool)

(assert (=> b!184695 (= e!112884 e!112867)))

(declare-fun res!84020 () Bool)

(assert (=> b!184695 (=> (not res!84020) (not e!112867))))

(assert (=> b!184695 (= res!84020 (= lt!61614 lt!61626))))

(declare-datatypes ((IArray!1899 0))(
  ( (IArray!1900 (innerList!1007 List!3104)) )
))
(declare-datatypes ((Conc!949 0))(
  ( (Node!949 (left!2413 Conc!949) (right!2743 Conc!949) (csize!2128 Int) (cheight!1160 Int)) (Leaf!1570 (xs!3544 IArray!1899) (csize!2129 Int)) (Empty!949) )
))
(declare-datatypes ((BalanceConc!1906 0))(
  ( (BalanceConc!1907 (c!35805 Conc!949)) )
))
(declare-fun lt!61623 () BalanceConc!1906)

(declare-fun printWithSeparatorTokenWhenNeededRec!132 (LexerInterface!449 List!3103 BalanceConc!1906 Token!870 Int) BalanceConc!1904)

(assert (=> b!184695 (= lt!61626 (list!1137 (printWithSeparatorTokenWhenNeededRec!132 thiss!17480 rules!1920 lt!61623 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!142 (LexerInterface!449 List!3103 List!3104 Token!870) List!3102)

(assert (=> b!184695 (= lt!61614 (printWithSeparatorTokenWhenNeededList!142 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!184696 () Bool)

(declare-fun e!112870 () Bool)

(assert (=> b!184696 (= e!112867 (not e!112870))))

(declare-fun res!84037 () Bool)

(assert (=> b!184696 (=> res!84037 e!112870)))

(declare-fun seqFromList!504 (List!3104) BalanceConc!1906)

(assert (=> b!184696 (= res!84037 (not (= lt!61606 (list!1137 (printWithSeparatorTokenWhenNeededRec!132 thiss!17480 rules!1920 (seqFromList!504 (t!28542 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!61613 () List!3102)

(declare-fun lt!61616 () List!3102)

(assert (=> b!184696 (= lt!61613 lt!61616)))

(declare-fun lt!61627 () List!3102)

(assert (=> b!184696 (= lt!61616 (++!732 lt!61624 lt!61627))))

(declare-fun lt!61629 () List!3102)

(assert (=> b!184696 (= lt!61613 (++!732 (++!732 lt!61624 lt!61629) lt!61606))))

(declare-fun lt!61608 () Unit!2860)

(declare-fun lemmaConcatAssociativity!252 (List!3102 List!3102 List!3102) Unit!2860)

(assert (=> b!184696 (= lt!61608 (lemmaConcatAssociativity!252 lt!61624 lt!61629 lt!61606))))

(declare-fun charsOf!218 (Token!870) BalanceConc!1904)

(assert (=> b!184696 (= lt!61624 (list!1137 (charsOf!218 (h!8491 tokens!465))))))

(assert (=> b!184696 (= lt!61627 (++!732 lt!61629 lt!61606))))

(assert (=> b!184696 (= lt!61606 (printWithSeparatorTokenWhenNeededList!142 thiss!17480 rules!1920 (t!28542 tokens!465) separatorToken!170))))

(assert (=> b!184696 (= lt!61629 (list!1137 (charsOf!218 separatorToken!170)))))

(declare-fun b!184697 () Bool)

(declare-fun res!84027 () Bool)

(assert (=> b!184697 (=> (not res!84027) (not e!112884))))

(assert (=> b!184697 (= res!84027 ((_ is Cons!3094) tokens!465))))

(declare-fun b!184698 () Bool)

(declare-fun e!112885 () Bool)

(declare-fun e!112872 () Bool)

(assert (=> b!184698 (= e!112885 e!112872)))

(declare-fun res!84031 () Bool)

(assert (=> b!184698 (=> (not res!84031) (not e!112872))))

(declare-datatypes ((tuple2!3112 0))(
  ( (tuple2!3113 (_1!1772 Token!870) (_2!1772 List!3102)) )
))
(declare-datatypes ((Option!405 0))(
  ( (None!404) (Some!404 (v!13897 tuple2!3112)) )
))
(declare-fun lt!61609 () Option!405)

(declare-fun isDefined!256 (Option!405) Bool)

(assert (=> b!184698 (= res!84031 (isDefined!256 lt!61609))))

(declare-fun maxPrefix!179 (LexerInterface!449 List!3103 List!3102) Option!405)

(assert (=> b!184698 (= lt!61609 (maxPrefix!179 thiss!17480 rules!1920 lt!61614))))

(declare-fun e!112868 () Bool)

(declare-fun e!112881 () Bool)

(declare-fun tp!87244 () Bool)

(declare-fun b!184699 () Bool)

(assert (=> b!184699 (= e!112868 (and tp!87244 (inv!3920 (tag!741 (rule!1078 separatorToken!170))) (inv!3923 (transformation!563 (rule!1078 separatorToken!170))) e!112881))))

(declare-fun b!184700 () Bool)

(declare-fun e!112888 () Bool)

(assert (=> b!184700 (= e!112888 e!112884)))

(declare-fun res!84028 () Bool)

(assert (=> b!184700 (=> (not res!84028) (not e!112884))))

(declare-fun rulesProduceEachTokenIndividually!241 (LexerInterface!449 List!3103 BalanceConc!1906) Bool)

(assert (=> b!184700 (= res!84028 (rulesProduceEachTokenIndividually!241 thiss!17480 rules!1920 lt!61623))))

(assert (=> b!184700 (= lt!61623 (seqFromList!504 tokens!465))))

(declare-fun b!184701 () Bool)

(declare-fun e!112891 () Bool)

(assert (=> b!184701 (= e!112891 e!112865)))

(declare-fun res!84029 () Bool)

(assert (=> b!184701 (=> res!84029 e!112865)))

(declare-fun isEmpty!1455 (List!3104) Bool)

(assert (=> b!184701 (= res!84029 (not (isEmpty!1455 (t!28542 tokens!465))))))

(declare-fun lt!61622 () Option!405)

(assert (=> b!184701 (= lt!61622 (maxPrefix!179 thiss!17480 rules!1920 lt!61627))))

(declare-fun lt!61607 () tuple2!3112)

(assert (=> b!184701 (= lt!61627 (_2!1772 lt!61607))))

(declare-fun lt!61620 () Unit!2860)

(declare-fun lemmaSamePrefixThenSameSuffix!84 (List!3102 List!3102 List!3102 List!3102 List!3102) Unit!2860)

(assert (=> b!184701 (= lt!61620 (lemmaSamePrefixThenSameSuffix!84 lt!61624 lt!61627 lt!61624 (_2!1772 lt!61607) lt!61614))))

(declare-fun get!879 (Option!405) tuple2!3112)

(assert (=> b!184701 (= lt!61607 (get!879 (maxPrefix!179 thiss!17480 rules!1920 lt!61614)))))

(declare-fun isPrefix!259 (List!3102 List!3102) Bool)

(assert (=> b!184701 (isPrefix!259 lt!61624 lt!61616)))

(declare-fun lt!61621 () Unit!2860)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!154 (List!3102 List!3102) Unit!2860)

(assert (=> b!184701 (= lt!61621 (lemmaConcatTwoListThenFirstIsPrefix!154 lt!61624 lt!61627))))

(assert (=> b!184701 e!112885))

(declare-fun res!84026 () Bool)

(assert (=> b!184701 (=> res!84026 e!112885)))

(assert (=> b!184701 (= res!84026 (isEmpty!1455 tokens!465))))

(declare-fun lt!61611 () Unit!2860)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!24 (LexerInterface!449 List!3103 List!3104 Token!870) Unit!2860)

(assert (=> b!184701 (= lt!61611 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!24 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!112873 () Bool)

(declare-fun e!112880 () Bool)

(declare-fun tp!87241 () Bool)

(declare-fun b!184702 () Bool)

(assert (=> b!184702 (= e!112873 (and tp!87241 (inv!3920 (tag!741 (rule!1078 (h!8491 tokens!465)))) (inv!3923 (transformation!563 (rule!1078 (h!8491 tokens!465)))) e!112880))))

(declare-fun b!184703 () Bool)

(declare-fun res!84040 () Bool)

(assert (=> b!184703 (=> res!84040 e!112865)))

(declare-fun rulesProduceEachTokenIndividuallyList!139 (LexerInterface!449 List!3103 List!3104) Bool)

(assert (=> b!184703 (= res!84040 (not (rulesProduceEachTokenIndividuallyList!139 thiss!17480 rules!1920 (t!28542 tokens!465))))))

(assert (=> b!184704 (= e!112866 (and tp!87246 tp!87243))))

(declare-fun res!84023 () Bool)

(assert (=> start!19998 (=> (not res!84023) (not e!112888))))

(assert (=> start!19998 (= res!84023 ((_ is Lexer!447) thiss!17480))))

(assert (=> start!19998 e!112888))

(assert (=> start!19998 true))

(declare-fun e!112876 () Bool)

(assert (=> start!19998 e!112876))

(declare-fun e!112887 () Bool)

(assert (=> start!19998 (and (inv!3924 separatorToken!170) e!112887)))

(assert (=> start!19998 e!112882))

(declare-fun b!184692 () Bool)

(declare-fun tp!87248 () Bool)

(assert (=> b!184692 (= e!112876 (and e!112878 tp!87248))))

(declare-fun b!184705 () Bool)

(declare-fun res!84017 () Bool)

(assert (=> b!184705 (=> (not res!84017) (not e!112884))))

(declare-fun rulesProduceIndividualToken!198 (LexerInterface!449 List!3103 Token!870) Bool)

(assert (=> b!184705 (= res!84017 (rulesProduceIndividualToken!198 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!184706 () Bool)

(declare-fun res!84034 () Bool)

(assert (=> b!184706 (=> (not res!84034) (not e!112888))))

(declare-fun isEmpty!1456 (List!3103) Bool)

(assert (=> b!184706 (= res!84034 (not (isEmpty!1456 rules!1920)))))

(declare-fun b!184707 () Bool)

(declare-fun e!112877 () Bool)

(assert (=> b!184707 (= e!112877 e!112871)))

(declare-fun res!84041 () Bool)

(assert (=> b!184707 (=> res!84041 e!112871)))

(declare-fun lt!61625 () List!3102)

(declare-fun lt!61610 () List!3102)

(assert (=> b!184707 (= res!84041 (or (not (= lt!61625 lt!61610)) (not (= lt!61610 lt!61624)) (not (= lt!61625 lt!61624))))))

(declare-fun printList!133 (LexerInterface!449 List!3104) List!3102)

(assert (=> b!184707 (= lt!61610 (printList!133 thiss!17480 lt!61618))))

(declare-fun lt!61619 () BalanceConc!1904)

(assert (=> b!184707 (= lt!61625 (list!1137 lt!61619))))

(assert (=> b!184707 (= lt!61618 (Cons!3094 (h!8491 tokens!465) Nil!3094))))

(declare-fun lt!61617 () BalanceConc!1906)

(declare-fun printTailRec!143 (LexerInterface!449 BalanceConc!1906 Int BalanceConc!1904) BalanceConc!1904)

(assert (=> b!184707 (= lt!61619 (printTailRec!143 thiss!17480 lt!61617 0 (BalanceConc!1905 Empty!948)))))

(declare-fun print!180 (LexerInterface!449 BalanceConc!1906) BalanceConc!1904)

(assert (=> b!184707 (= lt!61619 (print!180 thiss!17480 lt!61617))))

(declare-fun singletonSeq!115 (Token!870) BalanceConc!1906)

(assert (=> b!184707 (= lt!61617 (singletonSeq!115 (h!8491 tokens!465)))))

(declare-fun tp!87240 () Bool)

(declare-fun b!184708 () Bool)

(declare-fun inv!21 (TokenValue!585) Bool)

(assert (=> b!184708 (= e!112889 (and (inv!21 (value!20361 (h!8491 tokens!465))) e!112873 tp!87240))))

(declare-fun b!184709 () Bool)

(declare-fun res!84019 () Bool)

(assert (=> b!184709 (=> res!84019 e!112871)))

(assert (=> b!184709 (= res!84019 (not (rulesProduceIndividualToken!198 thiss!17480 rules!1920 (h!8491 tokens!465))))))

(declare-fun b!184710 () Bool)

(declare-fun res!84021 () Bool)

(assert (=> b!184710 (=> (not res!84021) (not e!112888))))

(declare-fun rulesInvariant!415 (LexerInterface!449 List!3103) Bool)

(assert (=> b!184710 (= res!84021 (rulesInvariant!415 thiss!17480 rules!1920))))

(declare-fun b!184711 () Bool)

(assert (=> b!184711 (= e!112883 e!112891)))

(declare-fun res!84025 () Bool)

(assert (=> b!184711 (=> res!84025 e!112891)))

(declare-fun lt!61630 () Bool)

(assert (=> b!184711 (= res!84025 (not lt!61630))))

(assert (=> b!184711 e!112875))

(declare-fun res!84038 () Bool)

(assert (=> b!184711 (=> (not res!84038) (not e!112875))))

(declare-fun lt!61628 () tuple2!3112)

(assert (=> b!184711 (= res!84038 (= (_1!1772 lt!61628) (h!8491 tokens!465)))))

(declare-fun lt!61615 () Option!405)

(assert (=> b!184711 (= lt!61628 (get!879 lt!61615))))

(assert (=> b!184711 (isDefined!256 lt!61615)))

(assert (=> b!184711 (= lt!61615 (maxPrefix!179 thiss!17480 rules!1920 lt!61624))))

(declare-fun b!184712 () Bool)

(assert (=> b!184712 (= e!112870 e!112877)))

(declare-fun res!84030 () Bool)

(assert (=> b!184712 (=> res!84030 e!112877)))

(assert (=> b!184712 (= res!84030 e!112892)))

(declare-fun res!84039 () Bool)

(assert (=> b!184712 (=> (not res!84039) (not e!112892))))

(assert (=> b!184712 (= res!84039 (not lt!61630))))

(assert (=> b!184712 (= lt!61630 (= lt!61614 lt!61616))))

(declare-fun b!184713 () Bool)

(declare-fun head!646 (List!3104) Token!870)

(assert (=> b!184713 (= e!112872 (= (_1!1772 (get!879 lt!61609)) (head!646 tokens!465)))))

(declare-fun res!84018 () Bool)

(assert (=> b!184714 (=> (not res!84018) (not e!112884))))

(assert (=> b!184714 (= res!84018 (forall!639 tokens!465 lambda!5537))))

(assert (=> b!184715 (= e!112880 (and tp!87251 tp!87247))))

(assert (=> b!184716 (= e!112881 (and tp!87250 tp!87242))))

(declare-fun b!184717 () Bool)

(declare-fun res!84042 () Bool)

(assert (=> b!184717 (=> (not res!84042) (not e!112875))))

(declare-fun isEmpty!1457 (List!3102) Bool)

(assert (=> b!184717 (= res!84042 (isEmpty!1457 (_2!1772 lt!61628)))))

(declare-fun b!184718 () Bool)

(declare-fun tp!87239 () Bool)

(assert (=> b!184718 (= e!112887 (and (inv!21 (value!20361 separatorToken!170)) e!112868 tp!87239))))

(declare-fun b!184719 () Bool)

(declare-fun res!84036 () Bool)

(assert (=> b!184719 (=> res!84036 e!112871)))

(declare-fun isEmpty!1458 (BalanceConc!1906) Bool)

(declare-datatypes ((tuple2!3114 0))(
  ( (tuple2!3115 (_1!1773 BalanceConc!1906) (_2!1773 BalanceConc!1904)) )
))
(declare-fun lex!249 (LexerInterface!449 List!3103 BalanceConc!1904) tuple2!3114)

(assert (=> b!184719 (= res!84036 (isEmpty!1458 (_1!1773 (lex!249 thiss!17480 rules!1920 (seqFromList!503 lt!61624)))))))

(assert (= (and start!19998 res!84023) b!184706))

(assert (= (and b!184706 res!84034) b!184710))

(assert (= (and b!184710 res!84021) b!184700))

(assert (= (and b!184700 res!84028) b!184705))

(assert (= (and b!184705 res!84017) b!184693))

(assert (= (and b!184693 res!84024) b!184714))

(assert (= (and b!184714 res!84018) b!184684))

(assert (= (and b!184684 res!84033) b!184697))

(assert (= (and b!184697 res!84027) b!184695))

(assert (= (and b!184695 res!84020) b!184688))

(assert (= (and b!184688 res!84032) b!184696))

(assert (= (and b!184696 (not res!84037)) b!184712))

(assert (= (and b!184712 res!84039) b!184686))

(assert (= (and b!184712 (not res!84030)) b!184707))

(assert (= (and b!184707 (not res!84041)) b!184709))

(assert (= (and b!184709 (not res!84019)) b!184719))

(assert (= (and b!184719 (not res!84036)) b!184691))

(assert (= (and b!184691 (not res!84022)) b!184711))

(assert (= (and b!184711 res!84038) b!184717))

(assert (= (and b!184717 res!84042) b!184690))

(assert (= (and b!184711 (not res!84025)) b!184701))

(assert (= (and b!184701 (not res!84026)) b!184698))

(assert (= (and b!184698 res!84031) b!184713))

(assert (= (and b!184701 (not res!84029)) b!184689))

(assert (= (and b!184689 (not res!84035)) b!184703))

(assert (= (and b!184703 (not res!84040)) b!184687))

(assert (= b!184685 b!184704))

(assert (= b!184692 b!184685))

(assert (= (and start!19998 ((_ is Cons!3093) rules!1920)) b!184692))

(assert (= b!184699 b!184716))

(assert (= b!184718 b!184699))

(assert (= start!19998 b!184718))

(assert (= b!184702 b!184715))

(assert (= b!184708 b!184702))

(assert (= b!184694 b!184708))

(assert (= (and start!19998 ((_ is Cons!3094) tokens!465)) b!184694))

(declare-fun m!188339 () Bool)

(assert (=> b!184685 m!188339))

(declare-fun m!188341 () Bool)

(assert (=> b!184685 m!188341))

(declare-fun m!188343 () Bool)

(assert (=> b!184713 m!188343))

(declare-fun m!188345 () Bool)

(assert (=> b!184713 m!188345))

(declare-fun m!188347 () Bool)

(assert (=> b!184684 m!188347))

(declare-fun m!188349 () Bool)

(assert (=> b!184717 m!188349))

(declare-fun m!188351 () Bool)

(assert (=> b!184696 m!188351))

(declare-fun m!188353 () Bool)

(assert (=> b!184696 m!188353))

(declare-fun m!188355 () Bool)

(assert (=> b!184696 m!188355))

(declare-fun m!188357 () Bool)

(assert (=> b!184696 m!188357))

(declare-fun m!188359 () Bool)

(assert (=> b!184696 m!188359))

(declare-fun m!188361 () Bool)

(assert (=> b!184696 m!188361))

(declare-fun m!188363 () Bool)

(assert (=> b!184696 m!188363))

(assert (=> b!184696 m!188351))

(declare-fun m!188365 () Bool)

(assert (=> b!184696 m!188365))

(assert (=> b!184696 m!188361))

(declare-fun m!188367 () Bool)

(assert (=> b!184696 m!188367))

(assert (=> b!184696 m!188353))

(declare-fun m!188369 () Bool)

(assert (=> b!184696 m!188369))

(declare-fun m!188371 () Bool)

(assert (=> b!184696 m!188371))

(assert (=> b!184696 m!188371))

(declare-fun m!188373 () Bool)

(assert (=> b!184696 m!188373))

(assert (=> b!184696 m!188369))

(declare-fun m!188375 () Bool)

(assert (=> b!184696 m!188375))

(declare-fun m!188377 () Bool)

(assert (=> b!184707 m!188377))

(declare-fun m!188379 () Bool)

(assert (=> b!184707 m!188379))

(declare-fun m!188381 () Bool)

(assert (=> b!184707 m!188381))

(declare-fun m!188383 () Bool)

(assert (=> b!184707 m!188383))

(declare-fun m!188385 () Bool)

(assert (=> b!184707 m!188385))

(declare-fun m!188387 () Bool)

(assert (=> b!184695 m!188387))

(assert (=> b!184695 m!188387))

(declare-fun m!188389 () Bool)

(assert (=> b!184695 m!188389))

(declare-fun m!188391 () Bool)

(assert (=> b!184695 m!188391))

(declare-fun m!188393 () Bool)

(assert (=> b!184710 m!188393))

(declare-fun m!188395 () Bool)

(assert (=> b!184709 m!188395))

(declare-fun m!188397 () Bool)

(assert (=> b!184708 m!188397))

(declare-fun m!188399 () Bool)

(assert (=> b!184687 m!188399))

(declare-fun m!188401 () Bool)

(assert (=> b!184711 m!188401))

(declare-fun m!188403 () Bool)

(assert (=> b!184711 m!188403))

(declare-fun m!188405 () Bool)

(assert (=> b!184711 m!188405))

(declare-fun m!188407 () Bool)

(assert (=> b!184690 m!188407))

(declare-fun m!188409 () Bool)

(assert (=> b!184691 m!188409))

(assert (=> b!184691 m!188409))

(declare-fun m!188411 () Bool)

(assert (=> b!184691 m!188411))

(assert (=> b!184691 m!188411))

(declare-fun m!188413 () Bool)

(assert (=> b!184691 m!188413))

(declare-fun m!188415 () Bool)

(assert (=> b!184691 m!188415))

(declare-fun m!188417 () Bool)

(assert (=> b!184694 m!188417))

(declare-fun m!188419 () Bool)

(assert (=> start!19998 m!188419))

(declare-fun m!188421 () Bool)

(assert (=> b!184703 m!188421))

(declare-fun m!188423 () Bool)

(assert (=> b!184688 m!188423))

(assert (=> b!184688 m!188423))

(declare-fun m!188425 () Bool)

(assert (=> b!184688 m!188425))

(declare-fun m!188427 () Bool)

(assert (=> b!184698 m!188427))

(declare-fun m!188429 () Bool)

(assert (=> b!184698 m!188429))

(declare-fun m!188431 () Bool)

(assert (=> b!184700 m!188431))

(declare-fun m!188433 () Bool)

(assert (=> b!184700 m!188433))

(declare-fun m!188435 () Bool)

(assert (=> b!184702 m!188435))

(declare-fun m!188437 () Bool)

(assert (=> b!184702 m!188437))

(declare-fun m!188439 () Bool)

(assert (=> b!184706 m!188439))

(declare-fun m!188441 () Bool)

(assert (=> b!184686 m!188441))

(declare-fun m!188443 () Bool)

(assert (=> b!184719 m!188443))

(assert (=> b!184719 m!188443))

(declare-fun m!188445 () Bool)

(assert (=> b!184719 m!188445))

(declare-fun m!188447 () Bool)

(assert (=> b!184719 m!188447))

(declare-fun m!188449 () Bool)

(assert (=> b!184718 m!188449))

(declare-fun m!188451 () Bool)

(assert (=> b!184701 m!188451))

(declare-fun m!188453 () Bool)

(assert (=> b!184701 m!188453))

(declare-fun m!188455 () Bool)

(assert (=> b!184701 m!188455))

(assert (=> b!184701 m!188429))

(declare-fun m!188457 () Bool)

(assert (=> b!184701 m!188457))

(assert (=> b!184701 m!188429))

(declare-fun m!188459 () Bool)

(assert (=> b!184701 m!188459))

(declare-fun m!188461 () Bool)

(assert (=> b!184701 m!188461))

(declare-fun m!188463 () Bool)

(assert (=> b!184701 m!188463))

(declare-fun m!188465 () Bool)

(assert (=> b!184701 m!188465))

(declare-fun m!188467 () Bool)

(assert (=> b!184714 m!188467))

(declare-fun m!188469 () Bool)

(assert (=> b!184705 m!188469))

(declare-fun m!188471 () Bool)

(assert (=> b!184699 m!188471))

(declare-fun m!188473 () Bool)

(assert (=> b!184699 m!188473))

(check-sat (not b!184687) (not b!184707) (not b!184701) (not b!184686) b_and!12697 (not b_next!7233) b_and!12703 (not b!184702) (not b!184690) (not b!184706) (not b!184691) (not b!184713) (not b!184719) (not b!184703) (not b!184718) (not b_next!7239) (not b_next!7241) (not b!184698) (not b!184685) (not b!184711) (not b!184688) (not b!184695) b_and!12699 (not b!184717) (not b!184709) (not b!184699) b_and!12693 (not b!184728) (not b!184700) (not b_next!7235) (not b!184696) (not b!184705) (not b_next!7237) (not b!184708) (not b!184710) (not start!19998) b_and!12701 b_and!12695 (not b_next!7243) (not b!184714) (not b!184694) (not b!184692) (not b!184684))
(check-sat b_and!12699 b_and!12693 b_and!12697 (not b_next!7233) (not b_next!7235) (not b_next!7237) b_and!12703 (not b_next!7243) (not b_next!7239) (not b_next!7241) b_and!12701 b_and!12695)
(get-model)

(declare-fun d!46557 () Bool)

(declare-fun res!84060 () Bool)

(declare-fun e!112916 () Bool)

(assert (=> d!46557 (=> (not res!84060) (not e!112916))))

(declare-fun rulesValid!160 (LexerInterface!449 List!3103) Bool)

(assert (=> d!46557 (= res!84060 (rulesValid!160 thiss!17480 rules!1920))))

(assert (=> d!46557 (= (rulesInvariant!415 thiss!17480 rules!1920) e!112916)))

(declare-fun b!184755 () Bool)

(declare-datatypes ((List!3105 0))(
  ( (Nil!3095) (Cons!3095 (h!8492 String!4005) (t!28611 List!3105)) )
))
(declare-fun noDuplicateTag!160 (LexerInterface!449 List!3103 List!3105) Bool)

(assert (=> b!184755 (= e!112916 (noDuplicateTag!160 thiss!17480 rules!1920 Nil!3095))))

(assert (= (and d!46557 res!84060) b!184755))

(declare-fun m!188487 () Bool)

(assert (=> d!46557 m!188487))

(declare-fun m!188489 () Bool)

(assert (=> b!184755 m!188489))

(assert (=> b!184710 d!46557))

(declare-fun d!46559 () Bool)

(declare-fun list!1140 (Conc!948) List!3102)

(assert (=> d!46559 (= (list!1137 (seqFromList!503 lt!61614)) (list!1140 (c!35803 (seqFromList!503 lt!61614))))))

(declare-fun bs!18345 () Bool)

(assert (= bs!18345 d!46559))

(declare-fun m!188491 () Bool)

(assert (=> bs!18345 m!188491))

(assert (=> b!184688 d!46559))

(declare-fun d!46561 () Bool)

(declare-fun fromListB!194 (List!3102) BalanceConc!1904)

(assert (=> d!46561 (= (seqFromList!503 lt!61614) (fromListB!194 lt!61614))))

(declare-fun bs!18346 () Bool)

(assert (= bs!18346 d!46561))

(declare-fun m!188493 () Bool)

(assert (=> bs!18346 m!188493))

(assert (=> b!184688 d!46561))

(declare-fun d!46563 () Bool)

(declare-fun lt!61659 () Bool)

(declare-fun e!112942 () Bool)

(assert (=> d!46563 (= lt!61659 e!112942)))

(declare-fun res!84103 () Bool)

(assert (=> d!46563 (=> (not res!84103) (not e!112942))))

(declare-fun list!1141 (BalanceConc!1906) List!3104)

(assert (=> d!46563 (= res!84103 (= (list!1141 (_1!1773 (lex!249 thiss!17480 rules!1920 (print!180 thiss!17480 (singletonSeq!115 (h!8491 tokens!465)))))) (list!1141 (singletonSeq!115 (h!8491 tokens!465)))))))

(declare-fun e!112943 () Bool)

(assert (=> d!46563 (= lt!61659 e!112943)))

(declare-fun res!84104 () Bool)

(assert (=> d!46563 (=> (not res!84104) (not e!112943))))

(declare-fun lt!61660 () tuple2!3114)

(declare-fun size!2508 (BalanceConc!1906) Int)

(assert (=> d!46563 (= res!84104 (= (size!2508 (_1!1773 lt!61660)) 1))))

(assert (=> d!46563 (= lt!61660 (lex!249 thiss!17480 rules!1920 (print!180 thiss!17480 (singletonSeq!115 (h!8491 tokens!465)))))))

(assert (=> d!46563 (not (isEmpty!1456 rules!1920))))

(assert (=> d!46563 (= (rulesProduceIndividualToken!198 thiss!17480 rules!1920 (h!8491 tokens!465)) lt!61659)))

(declare-fun b!184804 () Bool)

(declare-fun res!84105 () Bool)

(assert (=> b!184804 (=> (not res!84105) (not e!112943))))

(declare-fun apply!467 (BalanceConc!1906 Int) Token!870)

(assert (=> b!184804 (= res!84105 (= (apply!467 (_1!1773 lt!61660) 0) (h!8491 tokens!465)))))

(declare-fun b!184805 () Bool)

(declare-fun isEmpty!1461 (BalanceConc!1904) Bool)

(assert (=> b!184805 (= e!112943 (isEmpty!1461 (_2!1773 lt!61660)))))

(declare-fun b!184806 () Bool)

(assert (=> b!184806 (= e!112942 (isEmpty!1461 (_2!1773 (lex!249 thiss!17480 rules!1920 (print!180 thiss!17480 (singletonSeq!115 (h!8491 tokens!465)))))))))

(assert (= (and d!46563 res!84104) b!184804))

(assert (= (and b!184804 res!84105) b!184805))

(assert (= (and d!46563 res!84103) b!184806))

(declare-fun m!188553 () Bool)

(assert (=> d!46563 m!188553))

(assert (=> d!46563 m!188385))

(declare-fun m!188555 () Bool)

(assert (=> d!46563 m!188555))

(assert (=> d!46563 m!188385))

(assert (=> d!46563 m!188439))

(assert (=> d!46563 m!188385))

(declare-fun m!188557 () Bool)

(assert (=> d!46563 m!188557))

(declare-fun m!188559 () Bool)

(assert (=> d!46563 m!188559))

(assert (=> d!46563 m!188555))

(declare-fun m!188561 () Bool)

(assert (=> d!46563 m!188561))

(declare-fun m!188563 () Bool)

(assert (=> b!184804 m!188563))

(declare-fun m!188565 () Bool)

(assert (=> b!184805 m!188565))

(assert (=> b!184806 m!188385))

(assert (=> b!184806 m!188385))

(assert (=> b!184806 m!188555))

(assert (=> b!184806 m!188555))

(assert (=> b!184806 m!188561))

(declare-fun m!188567 () Bool)

(assert (=> b!184806 m!188567))

(assert (=> b!184709 d!46563))

(declare-fun b!184817 () Bool)

(declare-fun e!112952 () Bool)

(declare-fun inv!16 (TokenValue!585) Bool)

(assert (=> b!184817 (= e!112952 (inv!16 (value!20361 (h!8491 tokens!465))))))

(declare-fun b!184818 () Bool)

(declare-fun e!112950 () Bool)

(declare-fun inv!15 (TokenValue!585) Bool)

(assert (=> b!184818 (= e!112950 (inv!15 (value!20361 (h!8491 tokens!465))))))

(declare-fun b!184819 () Bool)

(declare-fun e!112951 () Bool)

(assert (=> b!184819 (= e!112952 e!112951)))

(declare-fun c!35822 () Bool)

(assert (=> b!184819 (= c!35822 ((_ is IntegerValue!1756) (value!20361 (h!8491 tokens!465))))))

(declare-fun d!46575 () Bool)

(declare-fun c!35821 () Bool)

(assert (=> d!46575 (= c!35821 ((_ is IntegerValue!1755) (value!20361 (h!8491 tokens!465))))))

(assert (=> d!46575 (= (inv!21 (value!20361 (h!8491 tokens!465))) e!112952)))

(declare-fun b!184820 () Bool)

(declare-fun inv!17 (TokenValue!585) Bool)

(assert (=> b!184820 (= e!112951 (inv!17 (value!20361 (h!8491 tokens!465))))))

(declare-fun b!184821 () Bool)

(declare-fun res!84108 () Bool)

(assert (=> b!184821 (=> res!84108 e!112950)))

(assert (=> b!184821 (= res!84108 (not ((_ is IntegerValue!1757) (value!20361 (h!8491 tokens!465)))))))

(assert (=> b!184821 (= e!112951 e!112950)))

(assert (= (and d!46575 c!35821) b!184817))

(assert (= (and d!46575 (not c!35821)) b!184819))

(assert (= (and b!184819 c!35822) b!184820))

(assert (= (and b!184819 (not c!35822)) b!184821))

(assert (= (and b!184821 (not res!84108)) b!184818))

(declare-fun m!188569 () Bool)

(assert (=> b!184817 m!188569))

(declare-fun m!188571 () Bool)

(assert (=> b!184818 m!188571))

(declare-fun m!188573 () Bool)

(assert (=> b!184820 m!188573))

(assert (=> b!184708 d!46575))

(declare-fun d!46577 () Bool)

(declare-fun res!84113 () Bool)

(declare-fun e!112957 () Bool)

(assert (=> d!46577 (=> res!84113 e!112957)))

(assert (=> d!46577 (= res!84113 ((_ is Nil!3094) (t!28542 tokens!465)))))

(assert (=> d!46577 (= (forall!639 (t!28542 tokens!465) lambda!5537) e!112957)))

(declare-fun b!184826 () Bool)

(declare-fun e!112958 () Bool)

(assert (=> b!184826 (= e!112957 e!112958)))

(declare-fun res!84114 () Bool)

(assert (=> b!184826 (=> (not res!84114) (not e!112958))))

(declare-fun dynLambda!1271 (Int Token!870) Bool)

(assert (=> b!184826 (= res!84114 (dynLambda!1271 lambda!5537 (h!8491 (t!28542 tokens!465))))))

(declare-fun b!184827 () Bool)

(assert (=> b!184827 (= e!112958 (forall!639 (t!28542 (t!28542 tokens!465)) lambda!5537))))

(assert (= (and d!46577 (not res!84113)) b!184826))

(assert (= (and b!184826 res!84114) b!184827))

(declare-fun b_lambda!4457 () Bool)

(assert (=> (not b_lambda!4457) (not b!184826)))

(declare-fun m!188575 () Bool)

(assert (=> b!184826 m!188575))

(declare-fun m!188577 () Bool)

(assert (=> b!184827 m!188577))

(assert (=> b!184687 d!46577))

(declare-fun d!46579 () Bool)

(assert (=> d!46579 (= (get!879 lt!61609) (v!13897 lt!61609))))

(assert (=> b!184713 d!46579))

(declare-fun d!46581 () Bool)

(assert (=> d!46581 (= (head!646 tokens!465) (h!8491 tokens!465))))

(assert (=> b!184713 d!46581))

(declare-fun d!46583 () Bool)

(declare-fun isEmpty!1462 (Option!404) Bool)

(assert (=> d!46583 (= (isDefined!255 (maxPrefixZipperSequence!142 thiss!17480 rules!1920 (seqFromList!503 (originalCharacters!606 (h!8491 tokens!465))))) (not (isEmpty!1462 (maxPrefixZipperSequence!142 thiss!17480 rules!1920 (seqFromList!503 (originalCharacters!606 (h!8491 tokens!465)))))))))

(declare-fun bs!18348 () Bool)

(assert (= bs!18348 d!46583))

(assert (=> bs!18348 m!188411))

(declare-fun m!188579 () Bool)

(assert (=> bs!18348 m!188579))

(assert (=> b!184691 d!46583))

(declare-fun b!184885 () Bool)

(declare-fun e!112997 () Option!404)

(declare-fun call!8429 () Option!404)

(assert (=> b!184885 (= e!112997 call!8429)))

(declare-fun d!46585 () Bool)

(declare-fun e!113002 () Bool)

(assert (=> d!46585 e!113002))

(declare-fun res!84161 () Bool)

(assert (=> d!46585 (=> (not res!84161) (not e!113002))))

(declare-fun lt!61697 () Option!404)

(declare-fun maxPrefixZipper!56 (LexerInterface!449 List!3103 List!3102) Option!405)

(assert (=> d!46585 (= res!84161 (= (isDefined!255 lt!61697) (isDefined!256 (maxPrefixZipper!56 thiss!17480 rules!1920 (list!1137 (seqFromList!503 (originalCharacters!606 (h!8491 tokens!465))))))))))

(assert (=> d!46585 (= lt!61697 e!112997)))

(declare-fun c!35829 () Bool)

(assert (=> d!46585 (= c!35829 (and ((_ is Cons!3093) rules!1920) ((_ is Nil!3093) (t!28541 rules!1920))))))

(declare-fun lt!61696 () Unit!2860)

(declare-fun lt!61692 () Unit!2860)

(assert (=> d!46585 (= lt!61696 lt!61692)))

(declare-fun lt!61693 () List!3102)

(declare-fun lt!61694 () List!3102)

(assert (=> d!46585 (isPrefix!259 lt!61693 lt!61694)))

(declare-fun lemmaIsPrefixRefl!153 (List!3102 List!3102) Unit!2860)

(assert (=> d!46585 (= lt!61692 (lemmaIsPrefixRefl!153 lt!61693 lt!61694))))

(assert (=> d!46585 (= lt!61694 (list!1137 (seqFromList!503 (originalCharacters!606 (h!8491 tokens!465)))))))

(assert (=> d!46585 (= lt!61693 (list!1137 (seqFromList!503 (originalCharacters!606 (h!8491 tokens!465)))))))

(declare-fun rulesValidInductive!142 (LexerInterface!449 List!3103) Bool)

(assert (=> d!46585 (rulesValidInductive!142 thiss!17480 rules!1920)))

(assert (=> d!46585 (= (maxPrefixZipperSequence!142 thiss!17480 rules!1920 (seqFromList!503 (originalCharacters!606 (h!8491 tokens!465)))) lt!61697)))

(declare-fun b!184886 () Bool)

(declare-fun lt!61695 () Option!404)

(declare-fun lt!61698 () Option!404)

(assert (=> b!184886 (= e!112997 (ite (and ((_ is None!403) lt!61695) ((_ is None!403) lt!61698)) None!403 (ite ((_ is None!403) lt!61698) lt!61695 (ite ((_ is None!403) lt!61695) lt!61698 (ite (>= (size!2505 (_1!1771 (v!13896 lt!61695))) (size!2505 (_1!1771 (v!13896 lt!61698)))) lt!61695 lt!61698)))))))

(assert (=> b!184886 (= lt!61695 call!8429)))

(assert (=> b!184886 (= lt!61698 (maxPrefixZipperSequence!142 thiss!17480 (t!28541 rules!1920) (seqFromList!503 (originalCharacters!606 (h!8491 tokens!465)))))))

(declare-fun b!184887 () Bool)

(declare-fun res!84160 () Bool)

(assert (=> b!184887 (=> (not res!84160) (not e!113002))))

(declare-fun e!112998 () Bool)

(assert (=> b!184887 (= res!84160 e!112998)))

(declare-fun res!84163 () Bool)

(assert (=> b!184887 (=> res!84163 e!112998)))

(assert (=> b!184887 (= res!84163 (not (isDefined!255 lt!61697)))))

(declare-fun b!184888 () Bool)

(declare-fun e!113000 () Bool)

(assert (=> b!184888 (= e!113002 e!113000)))

(declare-fun res!84164 () Bool)

(assert (=> b!184888 (=> res!84164 e!113000)))

(assert (=> b!184888 (= res!84164 (not (isDefined!255 lt!61697)))))

(declare-fun bm!8424 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!57 (LexerInterface!449 Rule!926 BalanceConc!1904) Option!404)

(assert (=> bm!8424 (= call!8429 (maxPrefixOneRuleZipperSequence!57 thiss!17480 (h!8490 rules!1920) (seqFromList!503 (originalCharacters!606 (h!8491 tokens!465)))))))

(declare-fun b!184889 () Bool)

(declare-fun e!112999 () Bool)

(declare-fun get!880 (Option!404) tuple2!3110)

(assert (=> b!184889 (= e!112999 (= (list!1137 (_2!1771 (get!880 lt!61697))) (_2!1772 (get!879 (maxPrefixZipper!56 thiss!17480 rules!1920 (list!1137 (seqFromList!503 (originalCharacters!606 (h!8491 tokens!465)))))))))))

(declare-fun b!184890 () Bool)

(declare-fun e!113001 () Bool)

(assert (=> b!184890 (= e!113000 e!113001)))

(declare-fun res!84165 () Bool)

(assert (=> b!184890 (=> (not res!84165) (not e!113001))))

(assert (=> b!184890 (= res!84165 (= (_1!1771 (get!880 lt!61697)) (_1!1772 (get!879 (maxPrefix!179 thiss!17480 rules!1920 (list!1137 (seqFromList!503 (originalCharacters!606 (h!8491 tokens!465)))))))))))

(declare-fun b!184891 () Bool)

(assert (=> b!184891 (= e!112998 e!112999)))

(declare-fun res!84162 () Bool)

(assert (=> b!184891 (=> (not res!84162) (not e!112999))))

(assert (=> b!184891 (= res!84162 (= (_1!1771 (get!880 lt!61697)) (_1!1772 (get!879 (maxPrefixZipper!56 thiss!17480 rules!1920 (list!1137 (seqFromList!503 (originalCharacters!606 (h!8491 tokens!465)))))))))))

(declare-fun b!184892 () Bool)

(assert (=> b!184892 (= e!113001 (= (list!1137 (_2!1771 (get!880 lt!61697))) (_2!1772 (get!879 (maxPrefix!179 thiss!17480 rules!1920 (list!1137 (seqFromList!503 (originalCharacters!606 (h!8491 tokens!465)))))))))))

(assert (= (and d!46585 c!35829) b!184885))

(assert (= (and d!46585 (not c!35829)) b!184886))

(assert (= (or b!184885 b!184886) bm!8424))

(assert (= (and d!46585 res!84161) b!184887))

(assert (= (and b!184887 (not res!84163)) b!184891))

(assert (= (and b!184891 res!84162) b!184889))

(assert (= (and b!184887 res!84160) b!184888))

(assert (= (and b!184888 (not res!84164)) b!184890))

(assert (= (and b!184890 res!84165) b!184892))

(assert (=> bm!8424 m!188409))

(declare-fun m!188653 () Bool)

(assert (=> bm!8424 m!188653))

(declare-fun m!188655 () Bool)

(assert (=> b!184890 m!188655))

(assert (=> b!184890 m!188409))

(declare-fun m!188657 () Bool)

(assert (=> b!184890 m!188657))

(assert (=> b!184890 m!188657))

(declare-fun m!188659 () Bool)

(assert (=> b!184890 m!188659))

(assert (=> b!184890 m!188659))

(declare-fun m!188661 () Bool)

(assert (=> b!184890 m!188661))

(assert (=> b!184891 m!188655))

(assert (=> b!184891 m!188409))

(assert (=> b!184891 m!188657))

(assert (=> b!184891 m!188657))

(declare-fun m!188663 () Bool)

(assert (=> b!184891 m!188663))

(assert (=> b!184891 m!188663))

(declare-fun m!188665 () Bool)

(assert (=> b!184891 m!188665))

(assert (=> b!184886 m!188409))

(declare-fun m!188667 () Bool)

(assert (=> b!184886 m!188667))

(assert (=> b!184889 m!188657))

(assert (=> b!184889 m!188663))

(declare-fun m!188669 () Bool)

(assert (=> b!184889 m!188669))

(assert (=> b!184889 m!188663))

(assert (=> b!184889 m!188665))

(assert (=> b!184889 m!188409))

(assert (=> b!184889 m!188657))

(assert (=> b!184889 m!188655))

(declare-fun m!188671 () Bool)

(assert (=> d!46585 m!188671))

(declare-fun m!188673 () Bool)

(assert (=> d!46585 m!188673))

(assert (=> d!46585 m!188657))

(assert (=> d!46585 m!188663))

(declare-fun m!188675 () Bool)

(assert (=> d!46585 m!188675))

(declare-fun m!188677 () Bool)

(assert (=> d!46585 m!188677))

(assert (=> d!46585 m!188409))

(assert (=> d!46585 m!188657))

(assert (=> d!46585 m!188663))

(declare-fun m!188679 () Bool)

(assert (=> d!46585 m!188679))

(assert (=> b!184887 m!188675))

(assert (=> b!184892 m!188657))

(assert (=> b!184892 m!188659))

(assert (=> b!184892 m!188659))

(assert (=> b!184892 m!188661))

(assert (=> b!184892 m!188669))

(assert (=> b!184892 m!188409))

(assert (=> b!184892 m!188657))

(assert (=> b!184892 m!188655))

(assert (=> b!184888 m!188675))

(assert (=> b!184691 d!46585))

(declare-fun d!46609 () Bool)

(assert (=> d!46609 (= (seqFromList!503 (originalCharacters!606 (h!8491 tokens!465))) (fromListB!194 (originalCharacters!606 (h!8491 tokens!465))))))

(declare-fun bs!18350 () Bool)

(assert (= bs!18350 d!46609))

(declare-fun m!188681 () Bool)

(assert (=> bs!18350 m!188681))

(assert (=> b!184691 d!46609))

(declare-fun d!46611 () Bool)

(assert (=> d!46611 (dynLambda!1271 lambda!5538 (h!8491 tokens!465))))

(declare-fun lt!61701 () Unit!2860)

(declare-fun choose!1902 (List!3104 Int Token!870) Unit!2860)

(assert (=> d!46611 (= lt!61701 (choose!1902 tokens!465 lambda!5538 (h!8491 tokens!465)))))

(declare-fun e!113005 () Bool)

(assert (=> d!46611 e!113005))

(declare-fun res!84168 () Bool)

(assert (=> d!46611 (=> (not res!84168) (not e!113005))))

(assert (=> d!46611 (= res!84168 (forall!639 tokens!465 lambda!5538))))

(assert (=> d!46611 (= (forallContained!130 tokens!465 lambda!5538 (h!8491 tokens!465)) lt!61701)))

(declare-fun b!184895 () Bool)

(declare-fun contains!500 (List!3104 Token!870) Bool)

(assert (=> b!184895 (= e!113005 (contains!500 tokens!465 (h!8491 tokens!465)))))

(assert (= (and d!46611 res!84168) b!184895))

(declare-fun b_lambda!4461 () Bool)

(assert (=> (not b_lambda!4461) (not d!46611)))

(declare-fun m!188683 () Bool)

(assert (=> d!46611 m!188683))

(declare-fun m!188685 () Bool)

(assert (=> d!46611 m!188685))

(declare-fun m!188687 () Bool)

(assert (=> d!46611 m!188687))

(declare-fun m!188689 () Bool)

(assert (=> b!184895 m!188689))

(assert (=> b!184691 d!46611))

(declare-fun b!184924 () Bool)

(declare-fun e!113025 () Bool)

(declare-fun derivativeStep!87 (Regex!787 C!2496) Regex!787)

(declare-fun head!648 (List!3102) C!2496)

(declare-fun tail!373 (List!3102) List!3102)

(assert (=> b!184924 (= e!113025 (matchR!125 (derivativeStep!87 (regex!563 (rule!1078 (h!8491 tokens!465))) (head!648 lt!61624)) (tail!373 lt!61624)))))

(declare-fun bm!8427 () Bool)

(declare-fun call!8432 () Bool)

(assert (=> bm!8427 (= call!8432 (isEmpty!1457 lt!61624))))

(declare-fun b!184925 () Bool)

(declare-fun res!84192 () Bool)

(declare-fun e!113023 () Bool)

(assert (=> b!184925 (=> res!84192 e!113023)))

(declare-fun e!113026 () Bool)

(assert (=> b!184925 (= res!84192 e!113026)))

(declare-fun res!84187 () Bool)

(assert (=> b!184925 (=> (not res!84187) (not e!113026))))

(declare-fun lt!61704 () Bool)

(assert (=> b!184925 (= res!84187 lt!61704)))

(declare-fun b!184926 () Bool)

(declare-fun e!113024 () Bool)

(assert (=> b!184926 (= e!113024 (not (= (head!648 lt!61624) (c!35804 (regex!563 (rule!1078 (h!8491 tokens!465)))))))))

(declare-fun b!184927 () Bool)

(declare-fun e!113020 () Bool)

(assert (=> b!184927 (= e!113023 e!113020)))

(declare-fun res!84191 () Bool)

(assert (=> b!184927 (=> (not res!84191) (not e!113020))))

(assert (=> b!184927 (= res!84191 (not lt!61704))))

(declare-fun b!184928 () Bool)

(declare-fun e!113021 () Bool)

(assert (=> b!184928 (= e!113021 (= lt!61704 call!8432))))

(declare-fun b!184929 () Bool)

(declare-fun res!84185 () Bool)

(assert (=> b!184929 (=> res!84185 e!113023)))

(assert (=> b!184929 (= res!84185 (not ((_ is ElementMatch!787) (regex!563 (rule!1078 (h!8491 tokens!465))))))))

(declare-fun e!113022 () Bool)

(assert (=> b!184929 (= e!113022 e!113023)))

(declare-fun b!184930 () Bool)

(assert (=> b!184930 (= e!113022 (not lt!61704))))

(declare-fun b!184931 () Bool)

(declare-fun res!84188 () Bool)

(assert (=> b!184931 (=> (not res!84188) (not e!113026))))

(assert (=> b!184931 (= res!84188 (not call!8432))))

(declare-fun b!184932 () Bool)

(assert (=> b!184932 (= e!113026 (= (head!648 lt!61624) (c!35804 (regex!563 (rule!1078 (h!8491 tokens!465))))))))

(declare-fun b!184933 () Bool)

(declare-fun res!84190 () Bool)

(assert (=> b!184933 (=> (not res!84190) (not e!113026))))

(assert (=> b!184933 (= res!84190 (isEmpty!1457 (tail!373 lt!61624)))))

(declare-fun b!184934 () Bool)

(declare-fun nullable!121 (Regex!787) Bool)

(assert (=> b!184934 (= e!113025 (nullable!121 (regex!563 (rule!1078 (h!8491 tokens!465)))))))

(declare-fun b!184935 () Bool)

(declare-fun res!84186 () Bool)

(assert (=> b!184935 (=> res!84186 e!113024)))

(assert (=> b!184935 (= res!84186 (not (isEmpty!1457 (tail!373 lt!61624))))))

(declare-fun b!184936 () Bool)

(assert (=> b!184936 (= e!113020 e!113024)))

(declare-fun res!84189 () Bool)

(assert (=> b!184936 (=> res!84189 e!113024)))

(assert (=> b!184936 (= res!84189 call!8432)))

(declare-fun d!46613 () Bool)

(assert (=> d!46613 e!113021))

(declare-fun c!35837 () Bool)

(assert (=> d!46613 (= c!35837 ((_ is EmptyExpr!787) (regex!563 (rule!1078 (h!8491 tokens!465)))))))

(assert (=> d!46613 (= lt!61704 e!113025)))

(declare-fun c!35836 () Bool)

(assert (=> d!46613 (= c!35836 (isEmpty!1457 lt!61624))))

(declare-fun validRegex!194 (Regex!787) Bool)

(assert (=> d!46613 (validRegex!194 (regex!563 (rule!1078 (h!8491 tokens!465))))))

(assert (=> d!46613 (= (matchR!125 (regex!563 (rule!1078 (h!8491 tokens!465))) lt!61624) lt!61704)))

(declare-fun b!184937 () Bool)

(assert (=> b!184937 (= e!113021 e!113022)))

(declare-fun c!35838 () Bool)

(assert (=> b!184937 (= c!35838 ((_ is EmptyLang!787) (regex!563 (rule!1078 (h!8491 tokens!465)))))))

(assert (= (and d!46613 c!35836) b!184934))

(assert (= (and d!46613 (not c!35836)) b!184924))

(assert (= (and d!46613 c!35837) b!184928))

(assert (= (and d!46613 (not c!35837)) b!184937))

(assert (= (and b!184937 c!35838) b!184930))

(assert (= (and b!184937 (not c!35838)) b!184929))

(assert (= (and b!184929 (not res!84185)) b!184925))

(assert (= (and b!184925 res!84187) b!184931))

(assert (= (and b!184931 res!84188) b!184933))

(assert (= (and b!184933 res!84190) b!184932))

(assert (= (and b!184925 (not res!84192)) b!184927))

(assert (= (and b!184927 res!84191) b!184936))

(assert (= (and b!184936 (not res!84189)) b!184935))

(assert (= (and b!184935 (not res!84186)) b!184926))

(assert (= (or b!184928 b!184931 b!184936) bm!8427))

(declare-fun m!188691 () Bool)

(assert (=> b!184935 m!188691))

(assert (=> b!184935 m!188691))

(declare-fun m!188693 () Bool)

(assert (=> b!184935 m!188693))

(assert (=> b!184933 m!188691))

(assert (=> b!184933 m!188691))

(assert (=> b!184933 m!188693))

(declare-fun m!188695 () Bool)

(assert (=> b!184932 m!188695))

(declare-fun m!188697 () Bool)

(assert (=> b!184934 m!188697))

(declare-fun m!188699 () Bool)

(assert (=> d!46613 m!188699))

(declare-fun m!188701 () Bool)

(assert (=> d!46613 m!188701))

(assert (=> bm!8427 m!188699))

(assert (=> b!184926 m!188695))

(assert (=> b!184924 m!188695))

(assert (=> b!184924 m!188695))

(declare-fun m!188703 () Bool)

(assert (=> b!184924 m!188703))

(assert (=> b!184924 m!188691))

(assert (=> b!184924 m!188703))

(assert (=> b!184924 m!188691))

(declare-fun m!188705 () Bool)

(assert (=> b!184924 m!188705))

(assert (=> b!184690 d!46613))

(declare-fun d!46615 () Bool)

(assert (=> d!46615 (= (get!879 lt!61615) (v!13897 lt!61615))))

(assert (=> b!184711 d!46615))

(declare-fun d!46617 () Bool)

(declare-fun isEmpty!1463 (Option!405) Bool)

(assert (=> d!46617 (= (isDefined!256 lt!61615) (not (isEmpty!1463 lt!61615)))))

(declare-fun bs!18351 () Bool)

(assert (= bs!18351 d!46617))

(declare-fun m!188707 () Bool)

(assert (=> bs!18351 m!188707))

(assert (=> b!184711 d!46617))

(declare-fun b!184969 () Bool)

(declare-fun res!84217 () Bool)

(declare-fun e!113045 () Bool)

(assert (=> b!184969 (=> (not res!84217) (not e!113045))))

(declare-fun lt!61723 () Option!405)

(assert (=> b!184969 (= res!84217 (matchR!125 (regex!563 (rule!1078 (_1!1772 (get!879 lt!61723)))) (list!1137 (charsOf!218 (_1!1772 (get!879 lt!61723))))))))

(declare-fun b!184970 () Bool)

(declare-fun res!84215 () Bool)

(assert (=> b!184970 (=> (not res!84215) (not e!113045))))

(assert (=> b!184970 (= res!84215 (= (++!732 (list!1137 (charsOf!218 (_1!1772 (get!879 lt!61723)))) (_2!1772 (get!879 lt!61723))) lt!61624))))

(declare-fun b!184971 () Bool)

(declare-fun e!113044 () Option!405)

(declare-fun lt!61720 () Option!405)

(declare-fun lt!61721 () Option!405)

(assert (=> b!184971 (= e!113044 (ite (and ((_ is None!404) lt!61720) ((_ is None!404) lt!61721)) None!404 (ite ((_ is None!404) lt!61721) lt!61720 (ite ((_ is None!404) lt!61720) lt!61721 (ite (>= (size!2505 (_1!1772 (v!13897 lt!61720))) (size!2505 (_1!1772 (v!13897 lt!61721)))) lt!61720 lt!61721)))))))

(declare-fun call!8435 () Option!405)

(assert (=> b!184971 (= lt!61720 call!8435)))

(assert (=> b!184971 (= lt!61721 (maxPrefix!179 thiss!17480 (t!28541 rules!1920) lt!61624))))

(declare-fun b!184972 () Bool)

(declare-fun res!84218 () Bool)

(assert (=> b!184972 (=> (not res!84218) (not e!113045))))

(assert (=> b!184972 (= res!84218 (= (list!1137 (charsOf!218 (_1!1772 (get!879 lt!61723)))) (originalCharacters!606 (_1!1772 (get!879 lt!61723)))))))

(declare-fun b!184973 () Bool)

(declare-fun e!113046 () Bool)

(assert (=> b!184973 (= e!113046 e!113045)))

(declare-fun res!84219 () Bool)

(assert (=> b!184973 (=> (not res!84219) (not e!113045))))

(assert (=> b!184973 (= res!84219 (isDefined!256 lt!61723))))

(declare-fun b!184974 () Bool)

(declare-fun res!84220 () Bool)

(assert (=> b!184974 (=> (not res!84220) (not e!113045))))

(declare-fun size!2509 (List!3102) Int)

(assert (=> b!184974 (= res!84220 (< (size!2509 (_2!1772 (get!879 lt!61723))) (size!2509 lt!61624)))))

(declare-fun b!184975 () Bool)

(declare-fun res!84216 () Bool)

(assert (=> b!184975 (=> (not res!84216) (not e!113045))))

(declare-fun apply!469 (TokenValueInjection!942 BalanceConc!1904) TokenValue!585)

(assert (=> b!184975 (= res!84216 (= (value!20361 (_1!1772 (get!879 lt!61723))) (apply!469 (transformation!563 (rule!1078 (_1!1772 (get!879 lt!61723)))) (seqFromList!503 (originalCharacters!606 (_1!1772 (get!879 lt!61723)))))))))

(declare-fun b!184976 () Bool)

(assert (=> b!184976 (= e!113044 call!8435)))

(declare-fun b!184977 () Bool)

(declare-fun contains!501 (List!3103 Rule!926) Bool)

(assert (=> b!184977 (= e!113045 (contains!501 rules!1920 (rule!1078 (_1!1772 (get!879 lt!61723)))))))

(declare-fun bm!8430 () Bool)

(declare-fun maxPrefixOneRule!87 (LexerInterface!449 Rule!926 List!3102) Option!405)

(assert (=> bm!8430 (= call!8435 (maxPrefixOneRule!87 thiss!17480 (h!8490 rules!1920) lt!61624))))

(declare-fun d!46619 () Bool)

(assert (=> d!46619 e!113046))

(declare-fun res!84221 () Bool)

(assert (=> d!46619 (=> res!84221 e!113046)))

(assert (=> d!46619 (= res!84221 (isEmpty!1463 lt!61723))))

(assert (=> d!46619 (= lt!61723 e!113044)))

(declare-fun c!35842 () Bool)

(assert (=> d!46619 (= c!35842 (and ((_ is Cons!3093) rules!1920) ((_ is Nil!3093) (t!28541 rules!1920))))))

(declare-fun lt!61722 () Unit!2860)

(declare-fun lt!61719 () Unit!2860)

(assert (=> d!46619 (= lt!61722 lt!61719)))

(assert (=> d!46619 (isPrefix!259 lt!61624 lt!61624)))

(assert (=> d!46619 (= lt!61719 (lemmaIsPrefixRefl!153 lt!61624 lt!61624))))

(assert (=> d!46619 (rulesValidInductive!142 thiss!17480 rules!1920)))

(assert (=> d!46619 (= (maxPrefix!179 thiss!17480 rules!1920 lt!61624) lt!61723)))

(assert (= (and d!46619 c!35842) b!184976))

(assert (= (and d!46619 (not c!35842)) b!184971))

(assert (= (or b!184976 b!184971) bm!8430))

(assert (= (and d!46619 (not res!84221)) b!184973))

(assert (= (and b!184973 res!84219) b!184972))

(assert (= (and b!184972 res!84218) b!184974))

(assert (= (and b!184974 res!84220) b!184970))

(assert (= (and b!184970 res!84215) b!184975))

(assert (= (and b!184975 res!84216) b!184969))

(assert (= (and b!184969 res!84217) b!184977))

(declare-fun m!188729 () Bool)

(assert (=> b!184972 m!188729))

(declare-fun m!188731 () Bool)

(assert (=> b!184972 m!188731))

(assert (=> b!184972 m!188731))

(declare-fun m!188733 () Bool)

(assert (=> b!184972 m!188733))

(declare-fun m!188735 () Bool)

(assert (=> b!184971 m!188735))

(assert (=> b!184974 m!188729))

(declare-fun m!188737 () Bool)

(assert (=> b!184974 m!188737))

(declare-fun m!188739 () Bool)

(assert (=> b!184974 m!188739))

(assert (=> b!184977 m!188729))

(declare-fun m!188741 () Bool)

(assert (=> b!184977 m!188741))

(assert (=> b!184969 m!188729))

(assert (=> b!184969 m!188731))

(assert (=> b!184969 m!188731))

(assert (=> b!184969 m!188733))

(assert (=> b!184969 m!188733))

(declare-fun m!188743 () Bool)

(assert (=> b!184969 m!188743))

(declare-fun m!188745 () Bool)

(assert (=> bm!8430 m!188745))

(assert (=> b!184970 m!188729))

(assert (=> b!184970 m!188731))

(assert (=> b!184970 m!188731))

(assert (=> b!184970 m!188733))

(assert (=> b!184970 m!188733))

(declare-fun m!188747 () Bool)

(assert (=> b!184970 m!188747))

(assert (=> b!184975 m!188729))

(declare-fun m!188749 () Bool)

(assert (=> b!184975 m!188749))

(assert (=> b!184975 m!188749))

(declare-fun m!188751 () Bool)

(assert (=> b!184975 m!188751))

(declare-fun m!188753 () Bool)

(assert (=> b!184973 m!188753))

(declare-fun m!188755 () Bool)

(assert (=> d!46619 m!188755))

(declare-fun m!188757 () Bool)

(assert (=> d!46619 m!188757))

(declare-fun m!188759 () Bool)

(assert (=> d!46619 m!188759))

(assert (=> d!46619 m!188673))

(assert (=> b!184711 d!46619))

(declare-fun d!46629 () Bool)

(declare-fun res!84226 () Bool)

(declare-fun e!113049 () Bool)

(assert (=> d!46629 (=> (not res!84226) (not e!113049))))

(assert (=> d!46629 (= res!84226 (not (isEmpty!1457 (originalCharacters!606 (h!8491 tokens!465)))))))

(assert (=> d!46629 (= (inv!3924 (h!8491 tokens!465)) e!113049)))

(declare-fun b!184982 () Bool)

(declare-fun res!84227 () Bool)

(assert (=> b!184982 (=> (not res!84227) (not e!113049))))

(declare-fun dynLambda!1273 (Int TokenValue!585) BalanceConc!1904)

(assert (=> b!184982 (= res!84227 (= (originalCharacters!606 (h!8491 tokens!465)) (list!1137 (dynLambda!1273 (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))) (value!20361 (h!8491 tokens!465))))))))

(declare-fun b!184983 () Bool)

(assert (=> b!184983 (= e!113049 (= (size!2505 (h!8491 tokens!465)) (size!2509 (originalCharacters!606 (h!8491 tokens!465)))))))

(assert (= (and d!46629 res!84226) b!184982))

(assert (= (and b!184982 res!84227) b!184983))

(declare-fun b_lambda!4463 () Bool)

(assert (=> (not b_lambda!4463) (not b!184982)))

(declare-fun t!28548 () Bool)

(declare-fun tb!7657 () Bool)

(assert (=> (and b!184715 (= (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))) (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465))))) t!28548) tb!7657))

(declare-fun b!184988 () Bool)

(declare-fun e!113052 () Bool)

(declare-fun tp!87254 () Bool)

(declare-fun inv!3927 (Conc!948) Bool)

(assert (=> b!184988 (= e!113052 (and (inv!3927 (c!35803 (dynLambda!1273 (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))) (value!20361 (h!8491 tokens!465))))) tp!87254))))

(declare-fun result!10516 () Bool)

(declare-fun inv!3928 (BalanceConc!1904) Bool)

(assert (=> tb!7657 (= result!10516 (and (inv!3928 (dynLambda!1273 (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))) (value!20361 (h!8491 tokens!465)))) e!113052))))

(assert (= tb!7657 b!184988))

(declare-fun m!188761 () Bool)

(assert (=> b!184988 m!188761))

(declare-fun m!188763 () Bool)

(assert (=> tb!7657 m!188763))

(assert (=> b!184982 t!28548))

(declare-fun b_and!12705 () Bool)

(assert (= b_and!12695 (and (=> t!28548 result!10516) b_and!12705)))

(declare-fun tb!7659 () Bool)

(declare-fun t!28550 () Bool)

(assert (=> (and b!184704 (= (toChars!1093 (transformation!563 (h!8490 rules!1920))) (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465))))) t!28550) tb!7659))

(declare-fun result!10520 () Bool)

(assert (= result!10520 result!10516))

(assert (=> b!184982 t!28550))

(declare-fun b_and!12707 () Bool)

(assert (= b_and!12699 (and (=> t!28550 result!10520) b_and!12707)))

(declare-fun t!28552 () Bool)

(declare-fun tb!7661 () Bool)

(assert (=> (and b!184716 (= (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))) (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465))))) t!28552) tb!7661))

(declare-fun result!10522 () Bool)

(assert (= result!10522 result!10516))

(assert (=> b!184982 t!28552))

(declare-fun b_and!12709 () Bool)

(assert (= b_and!12703 (and (=> t!28552 result!10522) b_and!12709)))

(declare-fun m!188765 () Bool)

(assert (=> d!46629 m!188765))

(declare-fun m!188767 () Bool)

(assert (=> b!184982 m!188767))

(assert (=> b!184982 m!188767))

(declare-fun m!188769 () Bool)

(assert (=> b!184982 m!188769))

(declare-fun m!188771 () Bool)

(assert (=> b!184983 m!188771))

(assert (=> b!184694 d!46629))

(declare-fun d!46631 () Bool)

(declare-fun res!84228 () Bool)

(declare-fun e!113053 () Bool)

(assert (=> d!46631 (=> res!84228 e!113053)))

(assert (=> d!46631 (= res!84228 ((_ is Nil!3094) tokens!465))))

(assert (=> d!46631 (= (forall!639 tokens!465 lambda!5537) e!113053)))

(declare-fun b!184989 () Bool)

(declare-fun e!113054 () Bool)

(assert (=> b!184989 (= e!113053 e!113054)))

(declare-fun res!84229 () Bool)

(assert (=> b!184989 (=> (not res!84229) (not e!113054))))

(assert (=> b!184989 (= res!84229 (dynLambda!1271 lambda!5537 (h!8491 tokens!465)))))

(declare-fun b!184990 () Bool)

(assert (=> b!184990 (= e!113054 (forall!639 (t!28542 tokens!465) lambda!5537))))

(assert (= (and d!46631 (not res!84228)) b!184989))

(assert (= (and b!184989 res!84229) b!184990))

(declare-fun b_lambda!4465 () Bool)

(assert (=> (not b_lambda!4465) (not b!184989)))

(declare-fun m!188773 () Bool)

(assert (=> b!184989 m!188773))

(assert (=> b!184990 m!188399))

(assert (=> b!184714 d!46631))

(declare-fun b!184991 () Bool)

(declare-fun e!113057 () Bool)

(assert (=> b!184991 (= e!113057 (inv!16 (value!20361 separatorToken!170)))))

(declare-fun b!184992 () Bool)

(declare-fun e!113055 () Bool)

(assert (=> b!184992 (= e!113055 (inv!15 (value!20361 separatorToken!170)))))

(declare-fun b!184993 () Bool)

(declare-fun e!113056 () Bool)

(assert (=> b!184993 (= e!113057 e!113056)))

(declare-fun c!35844 () Bool)

(assert (=> b!184993 (= c!35844 ((_ is IntegerValue!1756) (value!20361 separatorToken!170)))))

(declare-fun d!46633 () Bool)

(declare-fun c!35843 () Bool)

(assert (=> d!46633 (= c!35843 ((_ is IntegerValue!1755) (value!20361 separatorToken!170)))))

(assert (=> d!46633 (= (inv!21 (value!20361 separatorToken!170)) e!113057)))

(declare-fun b!184994 () Bool)

(assert (=> b!184994 (= e!113056 (inv!17 (value!20361 separatorToken!170)))))

(declare-fun b!184995 () Bool)

(declare-fun res!84230 () Bool)

(assert (=> b!184995 (=> res!84230 e!113055)))

(assert (=> b!184995 (= res!84230 (not ((_ is IntegerValue!1757) (value!20361 separatorToken!170))))))

(assert (=> b!184995 (= e!113056 e!113055)))

(assert (= (and d!46633 c!35843) b!184991))

(assert (= (and d!46633 (not c!35843)) b!184993))

(assert (= (and b!184993 c!35844) b!184994))

(assert (= (and b!184993 (not c!35844)) b!184995))

(assert (= (and b!184995 (not res!84230)) b!184992))

(declare-fun m!188775 () Bool)

(assert (=> b!184991 m!188775))

(declare-fun m!188777 () Bool)

(assert (=> b!184992 m!188777))

(declare-fun m!188779 () Bool)

(assert (=> b!184994 m!188779))

(assert (=> b!184718 d!46633))

(declare-fun d!46635 () Bool)

(declare-fun fromListB!196 (List!3104) BalanceConc!1906)

(assert (=> d!46635 (= (seqFromList!504 (t!28542 tokens!465)) (fromListB!196 (t!28542 tokens!465)))))

(declare-fun bs!18356 () Bool)

(assert (= bs!18356 d!46635))

(declare-fun m!188781 () Bool)

(assert (=> bs!18356 m!188781))

(assert (=> b!184696 d!46635))

(declare-fun d!46637 () Bool)

(assert (=> d!46637 (= (list!1137 (charsOf!218 separatorToken!170)) (list!1140 (c!35803 (charsOf!218 separatorToken!170))))))

(declare-fun bs!18357 () Bool)

(assert (= bs!18357 d!46637))

(declare-fun m!188783 () Bool)

(assert (=> bs!18357 m!188783))

(assert (=> b!184696 d!46637))

(declare-fun d!46639 () Bool)

(declare-fun e!113062 () Bool)

(assert (=> d!46639 e!113062))

(declare-fun res!84235 () Bool)

(assert (=> d!46639 (=> (not res!84235) (not e!113062))))

(declare-fun lt!61726 () List!3102)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!423 (List!3102) (InoxSet C!2496))

(assert (=> d!46639 (= res!84235 (= (content!423 lt!61726) ((_ map or) (content!423 lt!61624) (content!423 lt!61627))))))

(declare-fun e!113063 () List!3102)

(assert (=> d!46639 (= lt!61726 e!113063)))

(declare-fun c!35847 () Bool)

(assert (=> d!46639 (= c!35847 ((_ is Nil!3092) lt!61624))))

(assert (=> d!46639 (= (++!732 lt!61624 lt!61627) lt!61726)))

(declare-fun b!185004 () Bool)

(assert (=> b!185004 (= e!113063 lt!61627)))

(declare-fun b!185007 () Bool)

(assert (=> b!185007 (= e!113062 (or (not (= lt!61627 Nil!3092)) (= lt!61726 lt!61624)))))

(declare-fun b!185006 () Bool)

(declare-fun res!84236 () Bool)

(assert (=> b!185006 (=> (not res!84236) (not e!113062))))

(assert (=> b!185006 (= res!84236 (= (size!2509 lt!61726) (+ (size!2509 lt!61624) (size!2509 lt!61627))))))

(declare-fun b!185005 () Bool)

(assert (=> b!185005 (= e!113063 (Cons!3092 (h!8489 lt!61624) (++!732 (t!28540 lt!61624) lt!61627)))))

(assert (= (and d!46639 c!35847) b!185004))

(assert (= (and d!46639 (not c!35847)) b!185005))

(assert (= (and d!46639 res!84235) b!185006))

(assert (= (and b!185006 res!84236) b!185007))

(declare-fun m!188785 () Bool)

(assert (=> d!46639 m!188785))

(declare-fun m!188787 () Bool)

(assert (=> d!46639 m!188787))

(declare-fun m!188789 () Bool)

(assert (=> d!46639 m!188789))

(declare-fun m!188791 () Bool)

(assert (=> b!185006 m!188791))

(assert (=> b!185006 m!188739))

(declare-fun m!188793 () Bool)

(assert (=> b!185006 m!188793))

(declare-fun m!188795 () Bool)

(assert (=> b!185005 m!188795))

(assert (=> b!184696 d!46639))

(declare-fun d!46641 () Bool)

(assert (=> d!46641 (= (list!1137 (printWithSeparatorTokenWhenNeededRec!132 thiss!17480 rules!1920 (seqFromList!504 (t!28542 tokens!465)) separatorToken!170 0)) (list!1140 (c!35803 (printWithSeparatorTokenWhenNeededRec!132 thiss!17480 rules!1920 (seqFromList!504 (t!28542 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!18358 () Bool)

(assert (= bs!18358 d!46641))

(declare-fun m!188797 () Bool)

(assert (=> bs!18358 m!188797))

(assert (=> b!184696 d!46641))

(declare-fun d!46643 () Bool)

(assert (=> d!46643 (= (++!732 (++!732 lt!61624 lt!61629) lt!61606) (++!732 lt!61624 (++!732 lt!61629 lt!61606)))))

(declare-fun lt!61729 () Unit!2860)

(declare-fun choose!1904 (List!3102 List!3102 List!3102) Unit!2860)

(assert (=> d!46643 (= lt!61729 (choose!1904 lt!61624 lt!61629 lt!61606))))

(assert (=> d!46643 (= (lemmaConcatAssociativity!252 lt!61624 lt!61629 lt!61606) lt!61729)))

(declare-fun bs!18359 () Bool)

(assert (= bs!18359 d!46643))

(assert (=> bs!18359 m!188351))

(declare-fun m!188799 () Bool)

(assert (=> bs!18359 m!188799))

(assert (=> bs!18359 m!188359))

(assert (=> bs!18359 m!188359))

(declare-fun m!188801 () Bool)

(assert (=> bs!18359 m!188801))

(assert (=> bs!18359 m!188351))

(assert (=> bs!18359 m!188365))

(assert (=> b!184696 d!46643))

(declare-fun bs!18363 () Bool)

(declare-fun b!185055 () Bool)

(assert (= bs!18363 (and b!185055 b!184714)))

(declare-fun lambda!5547 () Int)

(assert (=> bs!18363 (not (= lambda!5547 lambda!5537))))

(declare-fun bs!18364 () Bool)

(assert (= bs!18364 (and b!185055 b!184691)))

(assert (=> bs!18364 (= lambda!5547 lambda!5538)))

(declare-fun b!185067 () Bool)

(declare-fun e!113096 () Bool)

(assert (=> b!185067 (= e!113096 true)))

(declare-fun b!185066 () Bool)

(declare-fun e!113095 () Bool)

(assert (=> b!185066 (= e!113095 e!113096)))

(declare-fun b!185065 () Bool)

(declare-fun e!113094 () Bool)

(assert (=> b!185065 (= e!113094 e!113095)))

(assert (=> b!185055 e!113094))

(assert (= b!185066 b!185067))

(assert (= b!185065 b!185066))

(assert (= (and b!185055 ((_ is Cons!3093) rules!1920)) b!185065))

(assert (=> b!185067 (< (dynLambda!1267 order!1853 (toValue!1234 (transformation!563 (h!8490 rules!1920)))) (dynLambda!1268 order!1855 lambda!5547))))

(assert (=> b!185067 (< (dynLambda!1269 order!1857 (toChars!1093 (transformation!563 (h!8490 rules!1920)))) (dynLambda!1268 order!1855 lambda!5547))))

(assert (=> b!185055 true))

(declare-fun e!113089 () List!3102)

(declare-fun e!113091 () List!3102)

(assert (=> b!185055 (= e!113089 e!113091)))

(declare-fun lt!61762 () Unit!2860)

(assert (=> b!185055 (= lt!61762 (forallContained!130 (t!28542 tokens!465) lambda!5547 (h!8491 (t!28542 tokens!465))))))

(declare-fun lt!61764 () List!3102)

(assert (=> b!185055 (= lt!61764 (printWithSeparatorTokenWhenNeededList!142 thiss!17480 rules!1920 (t!28542 (t!28542 tokens!465)) separatorToken!170))))

(declare-fun lt!61760 () Option!405)

(assert (=> b!185055 (= lt!61760 (maxPrefix!179 thiss!17480 rules!1920 (++!732 (list!1137 (charsOf!218 (h!8491 (t!28542 tokens!465)))) lt!61764)))))

(declare-fun c!35870 () Bool)

(assert (=> b!185055 (= c!35870 (and ((_ is Some!404) lt!61760) (= (_1!1772 (v!13897 lt!61760)) (h!8491 (t!28542 tokens!465)))))))

(declare-fun bm!8456 () Bool)

(declare-fun call!8461 () List!3102)

(declare-fun call!8463 () List!3102)

(assert (=> bm!8456 (= call!8461 call!8463)))

(declare-fun c!35874 () Bool)

(declare-fun c!35871 () Bool)

(assert (=> bm!8456 (= c!35874 c!35871)))

(declare-fun b!185056 () Bool)

(declare-fun call!8464 () List!3102)

(assert (=> b!185056 (= e!113091 call!8464)))

(declare-fun b!185057 () Bool)

(declare-fun e!113092 () BalanceConc!1904)

(declare-fun call!8465 () BalanceConc!1904)

(assert (=> b!185057 (= e!113092 call!8465)))

(declare-fun b!185058 () Bool)

(declare-fun e!113093 () List!3102)

(assert (=> b!185058 (= e!113093 (list!1137 call!8465))))

(declare-fun bm!8457 () Bool)

(declare-fun call!8462 () BalanceConc!1904)

(assert (=> bm!8457 (= call!8465 call!8462)))

(declare-fun b!185059 () Bool)

(declare-fun e!113090 () List!3102)

(assert (=> b!185059 (= e!113090 (++!732 call!8464 lt!61764))))

(declare-fun d!46645 () Bool)

(declare-fun c!35872 () Bool)

(assert (=> d!46645 (= c!35872 ((_ is Cons!3094) (t!28542 tokens!465)))))

(assert (=> d!46645 (= (printWithSeparatorTokenWhenNeededList!142 thiss!17480 rules!1920 (t!28542 tokens!465) separatorToken!170) e!113089)))

(declare-fun bm!8458 () Bool)

(assert (=> bm!8458 (= call!8463 (list!1137 (ite c!35870 call!8462 e!113092)))))

(declare-fun b!185060 () Bool)

(assert (=> b!185060 (= e!113090 Nil!3092)))

(assert (=> b!185060 (= (print!180 thiss!17480 (singletonSeq!115 (h!8491 (t!28542 tokens!465)))) (printTailRec!143 thiss!17480 (singletonSeq!115 (h!8491 (t!28542 tokens!465))) 0 (BalanceConc!1905 Empty!948)))))

(declare-fun lt!61765 () Unit!2860)

(declare-fun Unit!2866 () Unit!2860)

(assert (=> b!185060 (= lt!61765 Unit!2866)))

(declare-fun lt!61761 () Unit!2860)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!52 (LexerInterface!449 List!3103 List!3102 List!3102) Unit!2860)

(assert (=> b!185060 (= lt!61761 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!52 thiss!17480 rules!1920 call!8461 lt!61764))))

(assert (=> b!185060 false))

(declare-fun lt!61763 () Unit!2860)

(declare-fun Unit!2867 () Unit!2860)

(assert (=> b!185060 (= lt!61763 Unit!2867)))

(declare-fun b!185061 () Bool)

(assert (=> b!185061 (= e!113089 Nil!3092)))

(declare-fun b!185062 () Bool)

(assert (=> b!185062 (= e!113093 call!8463)))

(declare-fun b!185063 () Bool)

(assert (=> b!185063 (= c!35871 (and ((_ is Some!404) lt!61760) (not (= (_1!1772 (v!13897 lt!61760)) (h!8491 (t!28542 tokens!465))))))))

(assert (=> b!185063 (= e!113091 e!113090)))

(declare-fun b!185064 () Bool)

(assert (=> b!185064 (= e!113092 (charsOf!218 separatorToken!170))))

(declare-fun bm!8459 () Bool)

(assert (=> bm!8459 (= call!8462 (charsOf!218 (h!8491 (t!28542 tokens!465))))))

(declare-fun bm!8460 () Bool)

(declare-fun c!35873 () Bool)

(assert (=> bm!8460 (= c!35873 c!35870)))

(assert (=> bm!8460 (= call!8464 (++!732 e!113093 (ite c!35870 lt!61764 call!8461)))))

(assert (= (and d!46645 c!35872) b!185055))

(assert (= (and d!46645 (not c!35872)) b!185061))

(assert (= (and b!185055 c!35870) b!185056))

(assert (= (and b!185055 (not c!35870)) b!185063))

(assert (= (and b!185063 c!35871) b!185059))

(assert (= (and b!185063 (not c!35871)) b!185060))

(assert (= (or b!185059 b!185060) bm!8457))

(assert (= (or b!185059 b!185060) bm!8456))

(assert (= (and bm!8456 c!35874) b!185064))

(assert (= (and bm!8456 (not c!35874)) b!185057))

(assert (= (or b!185056 bm!8457) bm!8459))

(assert (= (or b!185056 bm!8456) bm!8458))

(assert (= (or b!185056 b!185059) bm!8460))

(assert (= (and bm!8460 c!35873) b!185062))

(assert (= (and bm!8460 (not c!35873)) b!185058))

(declare-fun m!188831 () Bool)

(assert (=> bm!8459 m!188831))

(assert (=> b!185064 m!188361))

(declare-fun m!188833 () Bool)

(assert (=> b!185060 m!188833))

(assert (=> b!185060 m!188833))

(declare-fun m!188835 () Bool)

(assert (=> b!185060 m!188835))

(assert (=> b!185060 m!188833))

(declare-fun m!188837 () Bool)

(assert (=> b!185060 m!188837))

(declare-fun m!188839 () Bool)

(assert (=> b!185060 m!188839))

(declare-fun m!188841 () Bool)

(assert (=> bm!8458 m!188841))

(declare-fun m!188843 () Bool)

(assert (=> b!185058 m!188843))

(assert (=> b!185055 m!188831))

(declare-fun m!188845 () Bool)

(assert (=> b!185055 m!188845))

(declare-fun m!188847 () Bool)

(assert (=> b!185055 m!188847))

(declare-fun m!188849 () Bool)

(assert (=> b!185055 m!188849))

(declare-fun m!188851 () Bool)

(assert (=> b!185055 m!188851))

(assert (=> b!185055 m!188831))

(assert (=> b!185055 m!188845))

(assert (=> b!185055 m!188847))

(declare-fun m!188853 () Bool)

(assert (=> b!185055 m!188853))

(declare-fun m!188855 () Bool)

(assert (=> b!185059 m!188855))

(declare-fun m!188857 () Bool)

(assert (=> bm!8460 m!188857))

(assert (=> b!184696 d!46645))

(declare-fun bs!18378 () Bool)

(declare-fun d!46649 () Bool)

(assert (= bs!18378 (and d!46649 b!184714)))

(declare-fun lambda!5558 () Int)

(assert (=> bs!18378 (= lambda!5558 lambda!5537)))

(declare-fun bs!18379 () Bool)

(assert (= bs!18379 (and d!46649 b!184691)))

(assert (=> bs!18379 (not (= lambda!5558 lambda!5538))))

(declare-fun bs!18380 () Bool)

(assert (= bs!18380 (and d!46649 b!185055)))

(assert (=> bs!18380 (not (= lambda!5558 lambda!5547))))

(declare-fun bs!18381 () Bool)

(declare-fun b!185154 () Bool)

(assert (= bs!18381 (and b!185154 b!184714)))

(declare-fun lambda!5559 () Int)

(assert (=> bs!18381 (not (= lambda!5559 lambda!5537))))

(declare-fun bs!18382 () Bool)

(assert (= bs!18382 (and b!185154 b!184691)))

(assert (=> bs!18382 (= lambda!5559 lambda!5538)))

(declare-fun bs!18383 () Bool)

(assert (= bs!18383 (and b!185154 b!185055)))

(assert (=> bs!18383 (= lambda!5559 lambda!5547)))

(declare-fun bs!18384 () Bool)

(assert (= bs!18384 (and b!185154 d!46649)))

(assert (=> bs!18384 (not (= lambda!5559 lambda!5558))))

(declare-fun b!185163 () Bool)

(declare-fun e!113159 () Bool)

(assert (=> b!185163 (= e!113159 true)))

(declare-fun b!185162 () Bool)

(declare-fun e!113158 () Bool)

(assert (=> b!185162 (= e!113158 e!113159)))

(declare-fun b!185161 () Bool)

(declare-fun e!113157 () Bool)

(assert (=> b!185161 (= e!113157 e!113158)))

(assert (=> b!185154 e!113157))

(assert (= b!185162 b!185163))

(assert (= b!185161 b!185162))

(assert (= (and b!185154 ((_ is Cons!3093) rules!1920)) b!185161))

(assert (=> b!185163 (< (dynLambda!1267 order!1853 (toValue!1234 (transformation!563 (h!8490 rules!1920)))) (dynLambda!1268 order!1855 lambda!5559))))

(assert (=> b!185163 (< (dynLambda!1269 order!1857 (toChars!1093 (transformation!563 (h!8490 rules!1920)))) (dynLambda!1268 order!1855 lambda!5559))))

(assert (=> b!185154 true))

(declare-fun b!185152 () Bool)

(declare-fun e!113155 () BalanceConc!1904)

(assert (=> b!185152 (= e!113155 (BalanceConc!1905 Empty!948))))

(declare-fun b!185153 () Bool)

(declare-fun e!113151 () Bool)

(assert (=> b!185153 (= e!113151 (<= 0 (size!2508 (seqFromList!504 (t!28542 tokens!465)))))))

(declare-fun call!8494 () Token!870)

(declare-fun bm!8486 () Bool)

(declare-fun call!8493 () BalanceConc!1904)

(declare-fun c!35896 () Bool)

(assert (=> bm!8486 (= call!8493 (charsOf!218 (ite c!35896 separatorToken!170 call!8494)))))

(declare-fun e!113156 () BalanceConc!1904)

(assert (=> b!185154 (= e!113155 e!113156)))

(declare-fun lt!61857 () List!3104)

(assert (=> b!185154 (= lt!61857 (list!1141 (seqFromList!504 (t!28542 tokens!465))))))

(declare-fun lt!61852 () Unit!2860)

(declare-fun lemmaDropApply!144 (List!3104 Int) Unit!2860)

(assert (=> b!185154 (= lt!61852 (lemmaDropApply!144 lt!61857 0))))

(declare-fun drop!157 (List!3104 Int) List!3104)

(declare-fun apply!470 (List!3104 Int) Token!870)

(assert (=> b!185154 (= (head!646 (drop!157 lt!61857 0)) (apply!470 lt!61857 0))))

(declare-fun lt!61851 () Unit!2860)

(assert (=> b!185154 (= lt!61851 lt!61852)))

(declare-fun lt!61854 () List!3104)

(assert (=> b!185154 (= lt!61854 (list!1141 (seqFromList!504 (t!28542 tokens!465))))))

(declare-fun lt!61849 () Unit!2860)

(declare-fun lemmaDropTail!136 (List!3104 Int) Unit!2860)

(assert (=> b!185154 (= lt!61849 (lemmaDropTail!136 lt!61854 0))))

(declare-fun tail!374 (List!3104) List!3104)

(assert (=> b!185154 (= (tail!374 (drop!157 lt!61854 0)) (drop!157 lt!61854 (+ 0 1)))))

(declare-fun lt!61853 () Unit!2860)

(assert (=> b!185154 (= lt!61853 lt!61849)))

(declare-fun lt!61859 () Unit!2860)

(assert (=> b!185154 (= lt!61859 (forallContained!130 (list!1141 (seqFromList!504 (t!28542 tokens!465))) lambda!5559 (apply!467 (seqFromList!504 (t!28542 tokens!465)) 0)))))

(declare-fun lt!61855 () BalanceConc!1904)

(assert (=> b!185154 (= lt!61855 (printWithSeparatorTokenWhenNeededRec!132 thiss!17480 rules!1920 (seqFromList!504 (t!28542 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun lt!61860 () Option!404)

(declare-fun ++!734 (BalanceConc!1904 BalanceConc!1904) BalanceConc!1904)

(assert (=> b!185154 (= lt!61860 (maxPrefixZipperSequence!142 thiss!17480 rules!1920 (++!734 (charsOf!218 (apply!467 (seqFromList!504 (t!28542 tokens!465)) 0)) lt!61855)))))

(declare-fun res!84271 () Bool)

(assert (=> b!185154 (= res!84271 ((_ is Some!403) lt!61860))))

(declare-fun e!113154 () Bool)

(assert (=> b!185154 (=> (not res!84271) (not e!113154))))

(declare-fun c!35898 () Bool)

(assert (=> b!185154 (= c!35898 e!113154)))

(declare-fun bm!8487 () Bool)

(declare-fun call!8491 () BalanceConc!1904)

(declare-fun call!8492 () Token!870)

(assert (=> bm!8487 (= call!8491 (charsOf!218 (ite c!35898 call!8492 call!8494)))))

(declare-fun lt!61850 () BalanceConc!1904)

(declare-fun dropList!104 (BalanceConc!1906 Int) List!3104)

(assert (=> d!46649 (= (list!1137 lt!61850) (printWithSeparatorTokenWhenNeededList!142 thiss!17480 rules!1920 (dropList!104 (seqFromList!504 (t!28542 tokens!465)) 0) separatorToken!170))))

(assert (=> d!46649 (= lt!61850 e!113155)))

(declare-fun c!35897 () Bool)

(assert (=> d!46649 (= c!35897 (>= 0 (size!2508 (seqFromList!504 (t!28542 tokens!465)))))))

(declare-fun lt!61856 () Unit!2860)

(declare-fun lemmaContentSubsetPreservesForall!48 (List!3104 List!3104 Int) Unit!2860)

(assert (=> d!46649 (= lt!61856 (lemmaContentSubsetPreservesForall!48 (list!1141 (seqFromList!504 (t!28542 tokens!465))) (dropList!104 (seqFromList!504 (t!28542 tokens!465)) 0) lambda!5558))))

(assert (=> d!46649 e!113151))

(declare-fun res!84270 () Bool)

(assert (=> d!46649 (=> (not res!84270) (not e!113151))))

(assert (=> d!46649 (= res!84270 (>= 0 0))))

(assert (=> d!46649 (= (printWithSeparatorTokenWhenNeededRec!132 thiss!17480 rules!1920 (seqFromList!504 (t!28542 tokens!465)) separatorToken!170 0) lt!61850)))

(declare-fun b!185155 () Bool)

(assert (=> b!185155 (= e!113154 (= (_1!1771 (v!13896 lt!61860)) (apply!467 (seqFromList!504 (t!28542 tokens!465)) 0)))))

(declare-fun b!185156 () Bool)

(declare-fun call!8495 () BalanceConc!1904)

(assert (=> b!185156 (= e!113156 call!8495)))

(declare-fun bm!8488 () Bool)

(assert (=> bm!8488 (= call!8495 (++!734 call!8491 (ite c!35898 lt!61855 call!8493)))))

(declare-fun b!185157 () Bool)

(declare-fun e!113153 () BalanceConc!1904)

(assert (=> b!185157 (= e!113153 (BalanceConc!1905 Empty!948))))

(assert (=> b!185157 (= (print!180 thiss!17480 (singletonSeq!115 call!8494)) (printTailRec!143 thiss!17480 (singletonSeq!115 call!8494) 0 (BalanceConc!1905 Empty!948)))))

(declare-fun lt!61858 () Unit!2860)

(declare-fun Unit!2868 () Unit!2860)

(assert (=> b!185157 (= lt!61858 Unit!2868)))

(declare-fun lt!61861 () Unit!2860)

(assert (=> b!185157 (= lt!61861 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!52 thiss!17480 rules!1920 (list!1137 call!8493) (list!1137 lt!61855)))))

(assert (=> b!185157 false))

(declare-fun lt!61848 () Unit!2860)

(declare-fun Unit!2869 () Unit!2860)

(assert (=> b!185157 (= lt!61848 Unit!2869)))

(declare-fun b!185158 () Bool)

(declare-fun e!113152 () Bool)

(assert (=> b!185158 (= c!35896 e!113152)))

(declare-fun res!84272 () Bool)

(assert (=> b!185158 (=> (not res!84272) (not e!113152))))

(assert (=> b!185158 (= res!84272 ((_ is Some!403) lt!61860))))

(assert (=> b!185158 (= e!113156 e!113153)))

(declare-fun bm!8489 () Bool)

(assert (=> bm!8489 (= call!8492 (apply!467 (seqFromList!504 (t!28542 tokens!465)) 0))))

(declare-fun b!185159 () Bool)

(assert (=> b!185159 (= e!113153 (++!734 call!8495 lt!61855))))

(declare-fun bm!8490 () Bool)

(assert (=> bm!8490 (= call!8494 call!8492)))

(declare-fun b!185160 () Bool)

(assert (=> b!185160 (= e!113152 (not (= (_1!1771 (v!13896 lt!61860)) call!8492)))))

(assert (= (and d!46649 res!84270) b!185153))

(assert (= (and d!46649 c!35897) b!185152))

(assert (= (and d!46649 (not c!35897)) b!185154))

(assert (= (and b!185154 res!84271) b!185155))

(assert (= (and b!185154 c!35898) b!185156))

(assert (= (and b!185154 (not c!35898)) b!185158))

(assert (= (and b!185158 res!84272) b!185160))

(assert (= (and b!185158 c!35896) b!185159))

(assert (= (and b!185158 (not c!35896)) b!185157))

(assert (= (or b!185159 b!185157) bm!8490))

(assert (= (or b!185159 b!185157) bm!8486))

(assert (= (or b!185156 bm!8490 b!185160) bm!8489))

(assert (= (or b!185156 b!185159) bm!8487))

(assert (= (or b!185156 b!185159) bm!8488))

(assert (=> b!185155 m!188353))

(declare-fun m!188997 () Bool)

(assert (=> b!185155 m!188997))

(declare-fun m!188999 () Bool)

(assert (=> bm!8488 m!188999))

(assert (=> b!185153 m!188353))

(declare-fun m!189001 () Bool)

(assert (=> b!185153 m!189001))

(assert (=> d!46649 m!188353))

(assert (=> d!46649 m!189001))

(declare-fun m!189003 () Bool)

(assert (=> d!46649 m!189003))

(declare-fun m!189005 () Bool)

(assert (=> d!46649 m!189005))

(declare-fun m!189007 () Bool)

(assert (=> d!46649 m!189007))

(assert (=> d!46649 m!188353))

(assert (=> d!46649 m!189005))

(declare-fun m!189009 () Bool)

(assert (=> d!46649 m!189009))

(assert (=> d!46649 m!189005))

(declare-fun m!189011 () Bool)

(assert (=> d!46649 m!189011))

(assert (=> d!46649 m!188353))

(assert (=> d!46649 m!189003))

(declare-fun m!189013 () Bool)

(assert (=> bm!8487 m!189013))

(assert (=> bm!8489 m!188353))

(assert (=> bm!8489 m!188997))

(declare-fun m!189015 () Bool)

(assert (=> b!185159 m!189015))

(declare-fun m!189017 () Bool)

(assert (=> bm!8486 m!189017))

(declare-fun m!189019 () Bool)

(assert (=> b!185154 m!189019))

(declare-fun m!189021 () Bool)

(assert (=> b!185154 m!189021))

(declare-fun m!189023 () Bool)

(assert (=> b!185154 m!189023))

(assert (=> b!185154 m!189003))

(assert (=> b!185154 m!188997))

(declare-fun m!189025 () Bool)

(assert (=> b!185154 m!189025))

(declare-fun m!189027 () Bool)

(assert (=> b!185154 m!189027))

(assert (=> b!185154 m!189021))

(declare-fun m!189029 () Bool)

(assert (=> b!185154 m!189029))

(assert (=> b!185154 m!188353))

(declare-fun m!189031 () Bool)

(assert (=> b!185154 m!189031))

(assert (=> b!185154 m!188997))

(declare-fun m!189033 () Bool)

(assert (=> b!185154 m!189033))

(assert (=> b!185154 m!188353))

(assert (=> b!185154 m!188997))

(declare-fun m!189035 () Bool)

(assert (=> b!185154 m!189035))

(assert (=> b!185154 m!189035))

(declare-fun m!189037 () Bool)

(assert (=> b!185154 m!189037))

(assert (=> b!185154 m!189033))

(declare-fun m!189039 () Bool)

(assert (=> b!185154 m!189039))

(assert (=> b!185154 m!188353))

(assert (=> b!185154 m!189003))

(assert (=> b!185154 m!189039))

(declare-fun m!189041 () Bool)

(assert (=> b!185154 m!189041))

(declare-fun m!189043 () Bool)

(assert (=> b!185154 m!189043))

(declare-fun m!189045 () Bool)

(assert (=> b!185157 m!189045))

(declare-fun m!189047 () Bool)

(assert (=> b!185157 m!189047))

(declare-fun m!189049 () Bool)

(assert (=> b!185157 m!189049))

(assert (=> b!185157 m!189047))

(declare-fun m!189051 () Bool)

(assert (=> b!185157 m!189051))

(declare-fun m!189053 () Bool)

(assert (=> b!185157 m!189053))

(assert (=> b!185157 m!189045))

(assert (=> b!185157 m!189051))

(declare-fun m!189055 () Bool)

(assert (=> b!185157 m!189055))

(assert (=> b!185157 m!189051))

(assert (=> b!184696 d!46649))

(declare-fun d!46677 () Bool)

(declare-fun lt!61864 () BalanceConc!1904)

(assert (=> d!46677 (= (list!1137 lt!61864) (originalCharacters!606 separatorToken!170))))

(assert (=> d!46677 (= lt!61864 (dynLambda!1273 (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))) (value!20361 separatorToken!170)))))

(assert (=> d!46677 (= (charsOf!218 separatorToken!170) lt!61864)))

(declare-fun b_lambda!4473 () Bool)

(assert (=> (not b_lambda!4473) (not d!46677)))

(declare-fun t!28578 () Bool)

(declare-fun tb!7675 () Bool)

(assert (=> (and b!184715 (= (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))) (toChars!1093 (transformation!563 (rule!1078 separatorToken!170)))) t!28578) tb!7675))

(declare-fun b!185164 () Bool)

(declare-fun e!113160 () Bool)

(declare-fun tp!87259 () Bool)

(assert (=> b!185164 (= e!113160 (and (inv!3927 (c!35803 (dynLambda!1273 (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))) (value!20361 separatorToken!170)))) tp!87259))))

(declare-fun result!10538 () Bool)

(assert (=> tb!7675 (= result!10538 (and (inv!3928 (dynLambda!1273 (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))) (value!20361 separatorToken!170))) e!113160))))

(assert (= tb!7675 b!185164))

(declare-fun m!189057 () Bool)

(assert (=> b!185164 m!189057))

(declare-fun m!189059 () Bool)

(assert (=> tb!7675 m!189059))

(assert (=> d!46677 t!28578))

(declare-fun b_and!12729 () Bool)

(assert (= b_and!12705 (and (=> t!28578 result!10538) b_and!12729)))

(declare-fun t!28580 () Bool)

(declare-fun tb!7677 () Bool)

(assert (=> (and b!184704 (= (toChars!1093 (transformation!563 (h!8490 rules!1920))) (toChars!1093 (transformation!563 (rule!1078 separatorToken!170)))) t!28580) tb!7677))

(declare-fun result!10540 () Bool)

(assert (= result!10540 result!10538))

(assert (=> d!46677 t!28580))

(declare-fun b_and!12731 () Bool)

(assert (= b_and!12707 (and (=> t!28580 result!10540) b_and!12731)))

(declare-fun t!28582 () Bool)

(declare-fun tb!7679 () Bool)

(assert (=> (and b!184716 (= (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))) (toChars!1093 (transformation!563 (rule!1078 separatorToken!170)))) t!28582) tb!7679))

(declare-fun result!10542 () Bool)

(assert (= result!10542 result!10538))

(assert (=> d!46677 t!28582))

(declare-fun b_and!12733 () Bool)

(assert (= b_and!12709 (and (=> t!28582 result!10542) b_and!12733)))

(declare-fun m!189061 () Bool)

(assert (=> d!46677 m!189061))

(declare-fun m!189063 () Bool)

(assert (=> d!46677 m!189063))

(assert (=> b!184696 d!46677))

(declare-fun d!46679 () Bool)

(declare-fun e!113161 () Bool)

(assert (=> d!46679 e!113161))

(declare-fun res!84273 () Bool)

(assert (=> d!46679 (=> (not res!84273) (not e!113161))))

(declare-fun lt!61865 () List!3102)

(assert (=> d!46679 (= res!84273 (= (content!423 lt!61865) ((_ map or) (content!423 (++!732 lt!61624 lt!61629)) (content!423 lt!61606))))))

(declare-fun e!113162 () List!3102)

(assert (=> d!46679 (= lt!61865 e!113162)))

(declare-fun c!35899 () Bool)

(assert (=> d!46679 (= c!35899 ((_ is Nil!3092) (++!732 lt!61624 lt!61629)))))

(assert (=> d!46679 (= (++!732 (++!732 lt!61624 lt!61629) lt!61606) lt!61865)))

(declare-fun b!185165 () Bool)

(assert (=> b!185165 (= e!113162 lt!61606)))

(declare-fun b!185168 () Bool)

(assert (=> b!185168 (= e!113161 (or (not (= lt!61606 Nil!3092)) (= lt!61865 (++!732 lt!61624 lt!61629))))))

(declare-fun b!185167 () Bool)

(declare-fun res!84274 () Bool)

(assert (=> b!185167 (=> (not res!84274) (not e!113161))))

(assert (=> b!185167 (= res!84274 (= (size!2509 lt!61865) (+ (size!2509 (++!732 lt!61624 lt!61629)) (size!2509 lt!61606))))))

(declare-fun b!185166 () Bool)

(assert (=> b!185166 (= e!113162 (Cons!3092 (h!8489 (++!732 lt!61624 lt!61629)) (++!732 (t!28540 (++!732 lt!61624 lt!61629)) lt!61606)))))

(assert (= (and d!46679 c!35899) b!185165))

(assert (= (and d!46679 (not c!35899)) b!185166))

(assert (= (and d!46679 res!84273) b!185167))

(assert (= (and b!185167 res!84274) b!185168))

(declare-fun m!189065 () Bool)

(assert (=> d!46679 m!189065))

(assert (=> d!46679 m!188351))

(declare-fun m!189067 () Bool)

(assert (=> d!46679 m!189067))

(declare-fun m!189069 () Bool)

(assert (=> d!46679 m!189069))

(declare-fun m!189071 () Bool)

(assert (=> b!185167 m!189071))

(assert (=> b!185167 m!188351))

(declare-fun m!189073 () Bool)

(assert (=> b!185167 m!189073))

(declare-fun m!189075 () Bool)

(assert (=> b!185167 m!189075))

(declare-fun m!189077 () Bool)

(assert (=> b!185166 m!189077))

(assert (=> b!184696 d!46679))

(declare-fun d!46681 () Bool)

(assert (=> d!46681 (= (list!1137 (charsOf!218 (h!8491 tokens!465))) (list!1140 (c!35803 (charsOf!218 (h!8491 tokens!465)))))))

(declare-fun bs!18385 () Bool)

(assert (= bs!18385 d!46681))

(declare-fun m!189079 () Bool)

(assert (=> bs!18385 m!189079))

(assert (=> b!184696 d!46681))

(declare-fun d!46683 () Bool)

(declare-fun e!113163 () Bool)

(assert (=> d!46683 e!113163))

(declare-fun res!84275 () Bool)

(assert (=> d!46683 (=> (not res!84275) (not e!113163))))

(declare-fun lt!61866 () List!3102)

(assert (=> d!46683 (= res!84275 (= (content!423 lt!61866) ((_ map or) (content!423 lt!61624) (content!423 lt!61629))))))

(declare-fun e!113164 () List!3102)

(assert (=> d!46683 (= lt!61866 e!113164)))

(declare-fun c!35900 () Bool)

(assert (=> d!46683 (= c!35900 ((_ is Nil!3092) lt!61624))))

(assert (=> d!46683 (= (++!732 lt!61624 lt!61629) lt!61866)))

(declare-fun b!185169 () Bool)

(assert (=> b!185169 (= e!113164 lt!61629)))

(declare-fun b!185172 () Bool)

(assert (=> b!185172 (= e!113163 (or (not (= lt!61629 Nil!3092)) (= lt!61866 lt!61624)))))

(declare-fun b!185171 () Bool)

(declare-fun res!84276 () Bool)

(assert (=> b!185171 (=> (not res!84276) (not e!113163))))

(assert (=> b!185171 (= res!84276 (= (size!2509 lt!61866) (+ (size!2509 lt!61624) (size!2509 lt!61629))))))

(declare-fun b!185170 () Bool)

(assert (=> b!185170 (= e!113164 (Cons!3092 (h!8489 lt!61624) (++!732 (t!28540 lt!61624) lt!61629)))))

(assert (= (and d!46683 c!35900) b!185169))

(assert (= (and d!46683 (not c!35900)) b!185170))

(assert (= (and d!46683 res!84275) b!185171))

(assert (= (and b!185171 res!84276) b!185172))

(declare-fun m!189081 () Bool)

(assert (=> d!46683 m!189081))

(assert (=> d!46683 m!188787))

(declare-fun m!189083 () Bool)

(assert (=> d!46683 m!189083))

(declare-fun m!189085 () Bool)

(assert (=> b!185171 m!189085))

(assert (=> b!185171 m!188739))

(declare-fun m!189087 () Bool)

(assert (=> b!185171 m!189087))

(declare-fun m!189089 () Bool)

(assert (=> b!185170 m!189089))

(assert (=> b!184696 d!46683))

(declare-fun d!46685 () Bool)

(declare-fun e!113165 () Bool)

(assert (=> d!46685 e!113165))

(declare-fun res!84277 () Bool)

(assert (=> d!46685 (=> (not res!84277) (not e!113165))))

(declare-fun lt!61867 () List!3102)

(assert (=> d!46685 (= res!84277 (= (content!423 lt!61867) ((_ map or) (content!423 lt!61629) (content!423 lt!61606))))))

(declare-fun e!113166 () List!3102)

(assert (=> d!46685 (= lt!61867 e!113166)))

(declare-fun c!35901 () Bool)

(assert (=> d!46685 (= c!35901 ((_ is Nil!3092) lt!61629))))

(assert (=> d!46685 (= (++!732 lt!61629 lt!61606) lt!61867)))

(declare-fun b!185173 () Bool)

(assert (=> b!185173 (= e!113166 lt!61606)))

(declare-fun b!185176 () Bool)

(assert (=> b!185176 (= e!113165 (or (not (= lt!61606 Nil!3092)) (= lt!61867 lt!61629)))))

(declare-fun b!185175 () Bool)

(declare-fun res!84278 () Bool)

(assert (=> b!185175 (=> (not res!84278) (not e!113165))))

(assert (=> b!185175 (= res!84278 (= (size!2509 lt!61867) (+ (size!2509 lt!61629) (size!2509 lt!61606))))))

(declare-fun b!185174 () Bool)

(assert (=> b!185174 (= e!113166 (Cons!3092 (h!8489 lt!61629) (++!732 (t!28540 lt!61629) lt!61606)))))

(assert (= (and d!46685 c!35901) b!185173))

(assert (= (and d!46685 (not c!35901)) b!185174))

(assert (= (and d!46685 res!84277) b!185175))

(assert (= (and b!185175 res!84278) b!185176))

(declare-fun m!189091 () Bool)

(assert (=> d!46685 m!189091))

(assert (=> d!46685 m!189083))

(assert (=> d!46685 m!189069))

(declare-fun m!189093 () Bool)

(assert (=> b!185175 m!189093))

(assert (=> b!185175 m!189087))

(assert (=> b!185175 m!189075))

(declare-fun m!189095 () Bool)

(assert (=> b!185174 m!189095))

(assert (=> b!184696 d!46685))

(declare-fun d!46687 () Bool)

(declare-fun lt!61868 () BalanceConc!1904)

(assert (=> d!46687 (= (list!1137 lt!61868) (originalCharacters!606 (h!8491 tokens!465)))))

(assert (=> d!46687 (= lt!61868 (dynLambda!1273 (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))) (value!20361 (h!8491 tokens!465))))))

(assert (=> d!46687 (= (charsOf!218 (h!8491 tokens!465)) lt!61868)))

(declare-fun b_lambda!4475 () Bool)

(assert (=> (not b_lambda!4475) (not d!46687)))

(assert (=> d!46687 t!28548))

(declare-fun b_and!12735 () Bool)

(assert (= b_and!12729 (and (=> t!28548 result!10516) b_and!12735)))

(assert (=> d!46687 t!28550))

(declare-fun b_and!12737 () Bool)

(assert (= b_and!12731 (and (=> t!28550 result!10520) b_and!12737)))

(assert (=> d!46687 t!28552))

(declare-fun b_and!12739 () Bool)

(assert (= b_and!12733 (and (=> t!28552 result!10522) b_and!12739)))

(declare-fun m!189097 () Bool)

(assert (=> d!46687 m!189097))

(assert (=> d!46687 m!188767))

(assert (=> b!184696 d!46687))

(declare-fun d!46689 () Bool)

(assert (=> d!46689 (= (isEmpty!1457 (_2!1772 lt!61628)) ((_ is Nil!3092) (_2!1772 lt!61628)))))

(assert (=> b!184717 d!46689))

(declare-fun d!46691 () Bool)

(assert (=> d!46691 (= (list!1137 (printWithSeparatorTokenWhenNeededRec!132 thiss!17480 rules!1920 lt!61623 separatorToken!170 0)) (list!1140 (c!35803 (printWithSeparatorTokenWhenNeededRec!132 thiss!17480 rules!1920 lt!61623 separatorToken!170 0))))))

(declare-fun bs!18386 () Bool)

(assert (= bs!18386 d!46691))

(declare-fun m!189099 () Bool)

(assert (=> bs!18386 m!189099))

(assert (=> b!184695 d!46691))

(declare-fun bs!18387 () Bool)

(declare-fun d!46693 () Bool)

(assert (= bs!18387 (and d!46693 b!185055)))

(declare-fun lambda!5560 () Int)

(assert (=> bs!18387 (not (= lambda!5560 lambda!5547))))

(declare-fun bs!18388 () Bool)

(assert (= bs!18388 (and d!46693 b!184714)))

(assert (=> bs!18388 (= lambda!5560 lambda!5537)))

(declare-fun bs!18389 () Bool)

(assert (= bs!18389 (and d!46693 d!46649)))

(assert (=> bs!18389 (= lambda!5560 lambda!5558)))

(declare-fun bs!18390 () Bool)

(assert (= bs!18390 (and d!46693 b!185154)))

(assert (=> bs!18390 (not (= lambda!5560 lambda!5559))))

(declare-fun bs!18391 () Bool)

(assert (= bs!18391 (and d!46693 b!184691)))

(assert (=> bs!18391 (not (= lambda!5560 lambda!5538))))

(declare-fun bs!18392 () Bool)

(declare-fun b!185179 () Bool)

(assert (= bs!18392 (and b!185179 d!46693)))

(declare-fun lambda!5561 () Int)

(assert (=> bs!18392 (not (= lambda!5561 lambda!5560))))

(declare-fun bs!18393 () Bool)

(assert (= bs!18393 (and b!185179 b!185055)))

(assert (=> bs!18393 (= lambda!5561 lambda!5547)))

(declare-fun bs!18394 () Bool)

(assert (= bs!18394 (and b!185179 b!184714)))

(assert (=> bs!18394 (not (= lambda!5561 lambda!5537))))

(declare-fun bs!18395 () Bool)

(assert (= bs!18395 (and b!185179 d!46649)))

(assert (=> bs!18395 (not (= lambda!5561 lambda!5558))))

(declare-fun bs!18396 () Bool)

(assert (= bs!18396 (and b!185179 b!185154)))

(assert (=> bs!18396 (= lambda!5561 lambda!5559)))

(declare-fun bs!18397 () Bool)

(assert (= bs!18397 (and b!185179 b!184691)))

(assert (=> bs!18397 (= lambda!5561 lambda!5538)))

(declare-fun b!185188 () Bool)

(declare-fun e!113175 () Bool)

(assert (=> b!185188 (= e!113175 true)))

(declare-fun b!185187 () Bool)

(declare-fun e!113174 () Bool)

(assert (=> b!185187 (= e!113174 e!113175)))

(declare-fun b!185186 () Bool)

(declare-fun e!113173 () Bool)

(assert (=> b!185186 (= e!113173 e!113174)))

(assert (=> b!185179 e!113173))

(assert (= b!185187 b!185188))

(assert (= b!185186 b!185187))

(assert (= (and b!185179 ((_ is Cons!3093) rules!1920)) b!185186))

(assert (=> b!185188 (< (dynLambda!1267 order!1853 (toValue!1234 (transformation!563 (h!8490 rules!1920)))) (dynLambda!1268 order!1855 lambda!5561))))

(assert (=> b!185188 (< (dynLambda!1269 order!1857 (toChars!1093 (transformation!563 (h!8490 rules!1920)))) (dynLambda!1268 order!1855 lambda!5561))))

(assert (=> b!185179 true))

(declare-fun b!185177 () Bool)

(declare-fun e!113171 () BalanceConc!1904)

(assert (=> b!185177 (= e!113171 (BalanceConc!1905 Empty!948))))

(declare-fun b!185178 () Bool)

(declare-fun e!113167 () Bool)

(assert (=> b!185178 (= e!113167 (<= 0 (size!2508 lt!61623)))))

(declare-fun c!35902 () Bool)

(declare-fun call!8499 () Token!870)

(declare-fun call!8498 () BalanceConc!1904)

(declare-fun bm!8491 () Bool)

(assert (=> bm!8491 (= call!8498 (charsOf!218 (ite c!35902 separatorToken!170 call!8499)))))

(declare-fun e!113172 () BalanceConc!1904)

(assert (=> b!185179 (= e!113171 e!113172)))

(declare-fun lt!61878 () List!3104)

(assert (=> b!185179 (= lt!61878 (list!1141 lt!61623))))

(declare-fun lt!61873 () Unit!2860)

(assert (=> b!185179 (= lt!61873 (lemmaDropApply!144 lt!61878 0))))

(assert (=> b!185179 (= (head!646 (drop!157 lt!61878 0)) (apply!470 lt!61878 0))))

(declare-fun lt!61872 () Unit!2860)

(assert (=> b!185179 (= lt!61872 lt!61873)))

(declare-fun lt!61875 () List!3104)

(assert (=> b!185179 (= lt!61875 (list!1141 lt!61623))))

(declare-fun lt!61870 () Unit!2860)

(assert (=> b!185179 (= lt!61870 (lemmaDropTail!136 lt!61875 0))))

(assert (=> b!185179 (= (tail!374 (drop!157 lt!61875 0)) (drop!157 lt!61875 (+ 0 1)))))

(declare-fun lt!61874 () Unit!2860)

(assert (=> b!185179 (= lt!61874 lt!61870)))

(declare-fun lt!61880 () Unit!2860)

(assert (=> b!185179 (= lt!61880 (forallContained!130 (list!1141 lt!61623) lambda!5561 (apply!467 lt!61623 0)))))

(declare-fun lt!61876 () BalanceConc!1904)

(assert (=> b!185179 (= lt!61876 (printWithSeparatorTokenWhenNeededRec!132 thiss!17480 rules!1920 lt!61623 separatorToken!170 (+ 0 1)))))

(declare-fun lt!61881 () Option!404)

(assert (=> b!185179 (= lt!61881 (maxPrefixZipperSequence!142 thiss!17480 rules!1920 (++!734 (charsOf!218 (apply!467 lt!61623 0)) lt!61876)))))

(declare-fun res!84280 () Bool)

(assert (=> b!185179 (= res!84280 ((_ is Some!403) lt!61881))))

(declare-fun e!113170 () Bool)

(assert (=> b!185179 (=> (not res!84280) (not e!113170))))

(declare-fun c!35904 () Bool)

(assert (=> b!185179 (= c!35904 e!113170)))

(declare-fun bm!8492 () Bool)

(declare-fun call!8496 () BalanceConc!1904)

(declare-fun call!8497 () Token!870)

(assert (=> bm!8492 (= call!8496 (charsOf!218 (ite c!35904 call!8497 call!8499)))))

(declare-fun lt!61871 () BalanceConc!1904)

(assert (=> d!46693 (= (list!1137 lt!61871) (printWithSeparatorTokenWhenNeededList!142 thiss!17480 rules!1920 (dropList!104 lt!61623 0) separatorToken!170))))

(assert (=> d!46693 (= lt!61871 e!113171)))

(declare-fun c!35903 () Bool)

(assert (=> d!46693 (= c!35903 (>= 0 (size!2508 lt!61623)))))

(declare-fun lt!61877 () Unit!2860)

(assert (=> d!46693 (= lt!61877 (lemmaContentSubsetPreservesForall!48 (list!1141 lt!61623) (dropList!104 lt!61623 0) lambda!5560))))

(assert (=> d!46693 e!113167))

(declare-fun res!84279 () Bool)

(assert (=> d!46693 (=> (not res!84279) (not e!113167))))

(assert (=> d!46693 (= res!84279 (>= 0 0))))

(assert (=> d!46693 (= (printWithSeparatorTokenWhenNeededRec!132 thiss!17480 rules!1920 lt!61623 separatorToken!170 0) lt!61871)))

(declare-fun b!185180 () Bool)

(assert (=> b!185180 (= e!113170 (= (_1!1771 (v!13896 lt!61881)) (apply!467 lt!61623 0)))))

(declare-fun b!185181 () Bool)

(declare-fun call!8500 () BalanceConc!1904)

(assert (=> b!185181 (= e!113172 call!8500)))

(declare-fun bm!8493 () Bool)

(assert (=> bm!8493 (= call!8500 (++!734 call!8496 (ite c!35904 lt!61876 call!8498)))))

(declare-fun b!185182 () Bool)

(declare-fun e!113169 () BalanceConc!1904)

(assert (=> b!185182 (= e!113169 (BalanceConc!1905 Empty!948))))

(assert (=> b!185182 (= (print!180 thiss!17480 (singletonSeq!115 call!8499)) (printTailRec!143 thiss!17480 (singletonSeq!115 call!8499) 0 (BalanceConc!1905 Empty!948)))))

(declare-fun lt!61879 () Unit!2860)

(declare-fun Unit!2870 () Unit!2860)

(assert (=> b!185182 (= lt!61879 Unit!2870)))

(declare-fun lt!61882 () Unit!2860)

(assert (=> b!185182 (= lt!61882 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!52 thiss!17480 rules!1920 (list!1137 call!8498) (list!1137 lt!61876)))))

(assert (=> b!185182 false))

(declare-fun lt!61869 () Unit!2860)

(declare-fun Unit!2871 () Unit!2860)

(assert (=> b!185182 (= lt!61869 Unit!2871)))

(declare-fun b!185183 () Bool)

(declare-fun e!113168 () Bool)

(assert (=> b!185183 (= c!35902 e!113168)))

(declare-fun res!84281 () Bool)

(assert (=> b!185183 (=> (not res!84281) (not e!113168))))

(assert (=> b!185183 (= res!84281 ((_ is Some!403) lt!61881))))

(assert (=> b!185183 (= e!113172 e!113169)))

(declare-fun bm!8494 () Bool)

(assert (=> bm!8494 (= call!8497 (apply!467 lt!61623 0))))

(declare-fun b!185184 () Bool)

(assert (=> b!185184 (= e!113169 (++!734 call!8500 lt!61876))))

(declare-fun bm!8495 () Bool)

(assert (=> bm!8495 (= call!8499 call!8497)))

(declare-fun b!185185 () Bool)

(assert (=> b!185185 (= e!113168 (not (= (_1!1771 (v!13896 lt!61881)) call!8497)))))

(assert (= (and d!46693 res!84279) b!185178))

(assert (= (and d!46693 c!35903) b!185177))

(assert (= (and d!46693 (not c!35903)) b!185179))

(assert (= (and b!185179 res!84280) b!185180))

(assert (= (and b!185179 c!35904) b!185181))

(assert (= (and b!185179 (not c!35904)) b!185183))

(assert (= (and b!185183 res!84281) b!185185))

(assert (= (and b!185183 c!35902) b!185184))

(assert (= (and b!185183 (not c!35902)) b!185182))

(assert (= (or b!185184 b!185182) bm!8495))

(assert (= (or b!185184 b!185182) bm!8491))

(assert (= (or b!185181 bm!8495 b!185185) bm!8494))

(assert (= (or b!185181 b!185184) bm!8492))

(assert (= (or b!185181 b!185184) bm!8493))

(declare-fun m!189101 () Bool)

(assert (=> b!185180 m!189101))

(declare-fun m!189103 () Bool)

(assert (=> bm!8493 m!189103))

(declare-fun m!189105 () Bool)

(assert (=> b!185178 m!189105))

(assert (=> d!46693 m!189105))

(declare-fun m!189107 () Bool)

(assert (=> d!46693 m!189107))

(declare-fun m!189109 () Bool)

(assert (=> d!46693 m!189109))

(declare-fun m!189111 () Bool)

(assert (=> d!46693 m!189111))

(assert (=> d!46693 m!189109))

(declare-fun m!189113 () Bool)

(assert (=> d!46693 m!189113))

(assert (=> d!46693 m!189109))

(declare-fun m!189115 () Bool)

(assert (=> d!46693 m!189115))

(assert (=> d!46693 m!189107))

(declare-fun m!189117 () Bool)

(assert (=> bm!8492 m!189117))

(assert (=> bm!8494 m!189101))

(declare-fun m!189119 () Bool)

(assert (=> b!185184 m!189119))

(declare-fun m!189121 () Bool)

(assert (=> bm!8491 m!189121))

(declare-fun m!189123 () Bool)

(assert (=> b!185179 m!189123))

(declare-fun m!189125 () Bool)

(assert (=> b!185179 m!189125))

(declare-fun m!189127 () Bool)

(assert (=> b!185179 m!189127))

(assert (=> b!185179 m!189107))

(assert (=> b!185179 m!189101))

(declare-fun m!189129 () Bool)

(assert (=> b!185179 m!189129))

(declare-fun m!189131 () Bool)

(assert (=> b!185179 m!189131))

(assert (=> b!185179 m!189125))

(declare-fun m!189133 () Bool)

(assert (=> b!185179 m!189133))

(declare-fun m!189135 () Bool)

(assert (=> b!185179 m!189135))

(assert (=> b!185179 m!189101))

(declare-fun m!189137 () Bool)

(assert (=> b!185179 m!189137))

(assert (=> b!185179 m!189101))

(declare-fun m!189139 () Bool)

(assert (=> b!185179 m!189139))

(assert (=> b!185179 m!189139))

(declare-fun m!189141 () Bool)

(assert (=> b!185179 m!189141))

(assert (=> b!185179 m!189137))

(declare-fun m!189143 () Bool)

(assert (=> b!185179 m!189143))

(assert (=> b!185179 m!189107))

(assert (=> b!185179 m!189143))

(declare-fun m!189145 () Bool)

(assert (=> b!185179 m!189145))

(declare-fun m!189147 () Bool)

(assert (=> b!185179 m!189147))

(declare-fun m!189149 () Bool)

(assert (=> b!185182 m!189149))

(declare-fun m!189151 () Bool)

(assert (=> b!185182 m!189151))

(declare-fun m!189153 () Bool)

(assert (=> b!185182 m!189153))

(assert (=> b!185182 m!189151))

(declare-fun m!189155 () Bool)

(assert (=> b!185182 m!189155))

(declare-fun m!189157 () Bool)

(assert (=> b!185182 m!189157))

(assert (=> b!185182 m!189149))

(assert (=> b!185182 m!189155))

(declare-fun m!189159 () Bool)

(assert (=> b!185182 m!189159))

(assert (=> b!185182 m!189155))

(assert (=> b!184695 d!46693))

(declare-fun bs!18398 () Bool)

(declare-fun b!185189 () Bool)

(assert (= bs!18398 (and b!185189 b!185179)))

(declare-fun lambda!5562 () Int)

(assert (=> bs!18398 (= lambda!5562 lambda!5561)))

(declare-fun bs!18399 () Bool)

(assert (= bs!18399 (and b!185189 d!46693)))

(assert (=> bs!18399 (not (= lambda!5562 lambda!5560))))

(declare-fun bs!18400 () Bool)

(assert (= bs!18400 (and b!185189 b!185055)))

(assert (=> bs!18400 (= lambda!5562 lambda!5547)))

(declare-fun bs!18401 () Bool)

(assert (= bs!18401 (and b!185189 b!184714)))

(assert (=> bs!18401 (not (= lambda!5562 lambda!5537))))

(declare-fun bs!18402 () Bool)

(assert (= bs!18402 (and b!185189 d!46649)))

(assert (=> bs!18402 (not (= lambda!5562 lambda!5558))))

(declare-fun bs!18403 () Bool)

(assert (= bs!18403 (and b!185189 b!185154)))

(assert (=> bs!18403 (= lambda!5562 lambda!5559)))

(declare-fun bs!18404 () Bool)

(assert (= bs!18404 (and b!185189 b!184691)))

(assert (=> bs!18404 (= lambda!5562 lambda!5538)))

(declare-fun b!185201 () Bool)

(declare-fun e!113183 () Bool)

(assert (=> b!185201 (= e!113183 true)))

(declare-fun b!185200 () Bool)

(declare-fun e!113182 () Bool)

(assert (=> b!185200 (= e!113182 e!113183)))

(declare-fun b!185199 () Bool)

(declare-fun e!113181 () Bool)

(assert (=> b!185199 (= e!113181 e!113182)))

(assert (=> b!185189 e!113181))

(assert (= b!185200 b!185201))

(assert (= b!185199 b!185200))

(assert (= (and b!185189 ((_ is Cons!3093) rules!1920)) b!185199))

(assert (=> b!185201 (< (dynLambda!1267 order!1853 (toValue!1234 (transformation!563 (h!8490 rules!1920)))) (dynLambda!1268 order!1855 lambda!5562))))

(assert (=> b!185201 (< (dynLambda!1269 order!1857 (toChars!1093 (transformation!563 (h!8490 rules!1920)))) (dynLambda!1268 order!1855 lambda!5562))))

(assert (=> b!185189 true))

(declare-fun e!113176 () List!3102)

(declare-fun e!113178 () List!3102)

(assert (=> b!185189 (= e!113176 e!113178)))

(declare-fun lt!61885 () Unit!2860)

(assert (=> b!185189 (= lt!61885 (forallContained!130 tokens!465 lambda!5562 (h!8491 tokens!465)))))

(declare-fun lt!61887 () List!3102)

(assert (=> b!185189 (= lt!61887 (printWithSeparatorTokenWhenNeededList!142 thiss!17480 rules!1920 (t!28542 tokens!465) separatorToken!170))))

(declare-fun lt!61883 () Option!405)

(assert (=> b!185189 (= lt!61883 (maxPrefix!179 thiss!17480 rules!1920 (++!732 (list!1137 (charsOf!218 (h!8491 tokens!465))) lt!61887)))))

(declare-fun c!35905 () Bool)

(assert (=> b!185189 (= c!35905 (and ((_ is Some!404) lt!61883) (= (_1!1772 (v!13897 lt!61883)) (h!8491 tokens!465))))))

(declare-fun bm!8496 () Bool)

(declare-fun call!8501 () List!3102)

(declare-fun call!8503 () List!3102)

(assert (=> bm!8496 (= call!8501 call!8503)))

(declare-fun c!35909 () Bool)

(declare-fun c!35906 () Bool)

(assert (=> bm!8496 (= c!35909 c!35906)))

(declare-fun b!185190 () Bool)

(declare-fun call!8504 () List!3102)

(assert (=> b!185190 (= e!113178 call!8504)))

(declare-fun b!185191 () Bool)

(declare-fun e!113179 () BalanceConc!1904)

(declare-fun call!8505 () BalanceConc!1904)

(assert (=> b!185191 (= e!113179 call!8505)))

(declare-fun b!185192 () Bool)

(declare-fun e!113180 () List!3102)

(assert (=> b!185192 (= e!113180 (list!1137 call!8505))))

(declare-fun bm!8497 () Bool)

(declare-fun call!8502 () BalanceConc!1904)

(assert (=> bm!8497 (= call!8505 call!8502)))

(declare-fun b!185193 () Bool)

(declare-fun e!113177 () List!3102)

(assert (=> b!185193 (= e!113177 (++!732 call!8504 lt!61887))))

(declare-fun d!46695 () Bool)

(declare-fun c!35907 () Bool)

(assert (=> d!46695 (= c!35907 ((_ is Cons!3094) tokens!465))))

(assert (=> d!46695 (= (printWithSeparatorTokenWhenNeededList!142 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!113176)))

(declare-fun bm!8498 () Bool)

(assert (=> bm!8498 (= call!8503 (list!1137 (ite c!35905 call!8502 e!113179)))))

(declare-fun b!185194 () Bool)

(assert (=> b!185194 (= e!113177 Nil!3092)))

(assert (=> b!185194 (= (print!180 thiss!17480 (singletonSeq!115 (h!8491 tokens!465))) (printTailRec!143 thiss!17480 (singletonSeq!115 (h!8491 tokens!465)) 0 (BalanceConc!1905 Empty!948)))))

(declare-fun lt!61888 () Unit!2860)

(declare-fun Unit!2872 () Unit!2860)

(assert (=> b!185194 (= lt!61888 Unit!2872)))

(declare-fun lt!61884 () Unit!2860)

(assert (=> b!185194 (= lt!61884 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!52 thiss!17480 rules!1920 call!8501 lt!61887))))

(assert (=> b!185194 false))

(declare-fun lt!61886 () Unit!2860)

(declare-fun Unit!2873 () Unit!2860)

(assert (=> b!185194 (= lt!61886 Unit!2873)))

(declare-fun b!185195 () Bool)

(assert (=> b!185195 (= e!113176 Nil!3092)))

(declare-fun b!185196 () Bool)

(assert (=> b!185196 (= e!113180 call!8503)))

(declare-fun b!185197 () Bool)

(assert (=> b!185197 (= c!35906 (and ((_ is Some!404) lt!61883) (not (= (_1!1772 (v!13897 lt!61883)) (h!8491 tokens!465)))))))

(assert (=> b!185197 (= e!113178 e!113177)))

(declare-fun b!185198 () Bool)

(assert (=> b!185198 (= e!113179 (charsOf!218 separatorToken!170))))

(declare-fun bm!8499 () Bool)

(assert (=> bm!8499 (= call!8502 (charsOf!218 (h!8491 tokens!465)))))

(declare-fun bm!8500 () Bool)

(declare-fun c!35908 () Bool)

(assert (=> bm!8500 (= c!35908 c!35905)))

(assert (=> bm!8500 (= call!8504 (++!732 e!113180 (ite c!35905 lt!61887 call!8501)))))

(assert (= (and d!46695 c!35907) b!185189))

(assert (= (and d!46695 (not c!35907)) b!185195))

(assert (= (and b!185189 c!35905) b!185190))

(assert (= (and b!185189 (not c!35905)) b!185197))

(assert (= (and b!185197 c!35906) b!185193))

(assert (= (and b!185197 (not c!35906)) b!185194))

(assert (= (or b!185193 b!185194) bm!8497))

(assert (= (or b!185193 b!185194) bm!8496))

(assert (= (and bm!8496 c!35909) b!185198))

(assert (= (and bm!8496 (not c!35909)) b!185191))

(assert (= (or b!185190 bm!8497) bm!8499))

(assert (= (or b!185190 bm!8496) bm!8498))

(assert (= (or b!185190 b!185193) bm!8500))

(assert (= (and bm!8500 c!35908) b!185196))

(assert (= (and bm!8500 (not c!35908)) b!185192))

(assert (=> bm!8499 m!188371))

(assert (=> b!185198 m!188361))

(assert (=> b!185194 m!188385))

(assert (=> b!185194 m!188385))

(assert (=> b!185194 m!188555))

(assert (=> b!185194 m!188385))

(declare-fun m!189161 () Bool)

(assert (=> b!185194 m!189161))

(declare-fun m!189163 () Bool)

(assert (=> b!185194 m!189163))

(declare-fun m!189165 () Bool)

(assert (=> bm!8498 m!189165))

(declare-fun m!189167 () Bool)

(assert (=> b!185192 m!189167))

(assert (=> b!185189 m!188371))

(assert (=> b!185189 m!188373))

(declare-fun m!189169 () Bool)

(assert (=> b!185189 m!189169))

(declare-fun m!189171 () Bool)

(assert (=> b!185189 m!189171))

(assert (=> b!185189 m!188355))

(assert (=> b!185189 m!188371))

(assert (=> b!185189 m!188373))

(assert (=> b!185189 m!189169))

(declare-fun m!189173 () Bool)

(assert (=> b!185189 m!189173))

(declare-fun m!189175 () Bool)

(assert (=> b!185193 m!189175))

(declare-fun m!189177 () Bool)

(assert (=> bm!8500 m!189177))

(assert (=> b!184695 d!46695))

(declare-fun d!46697 () Bool)

(assert (=> d!46697 (= (inv!3920 (tag!741 (rule!1078 separatorToken!170))) (= (mod (str.len (value!20360 (tag!741 (rule!1078 separatorToken!170)))) 2) 0))))

(assert (=> b!184699 d!46697))

(declare-fun d!46699 () Bool)

(declare-fun res!84284 () Bool)

(declare-fun e!113186 () Bool)

(assert (=> d!46699 (=> (not res!84284) (not e!113186))))

(declare-fun semiInverseModEq!195 (Int Int) Bool)

(assert (=> d!46699 (= res!84284 (semiInverseModEq!195 (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))) (toValue!1234 (transformation!563 (rule!1078 separatorToken!170)))))))

(assert (=> d!46699 (= (inv!3923 (transformation!563 (rule!1078 separatorToken!170))) e!113186)))

(declare-fun b!185204 () Bool)

(declare-fun equivClasses!178 (Int Int) Bool)

(assert (=> b!185204 (= e!113186 (equivClasses!178 (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))) (toValue!1234 (transformation!563 (rule!1078 separatorToken!170)))))))

(assert (= (and d!46699 res!84284) b!185204))

(declare-fun m!189179 () Bool)

(assert (=> d!46699 m!189179))

(declare-fun m!189181 () Bool)

(assert (=> b!185204 m!189181))

(assert (=> b!184699 d!46699))

(declare-fun d!46701 () Bool)

(assert (=> d!46701 (= (isDefined!256 lt!61609) (not (isEmpty!1463 lt!61609)))))

(declare-fun bs!18405 () Bool)

(assert (= bs!18405 d!46701))

(declare-fun m!189183 () Bool)

(assert (=> bs!18405 m!189183))

(assert (=> b!184698 d!46701))

(declare-fun b!185205 () Bool)

(declare-fun res!84287 () Bool)

(declare-fun e!113188 () Bool)

(assert (=> b!185205 (=> (not res!84287) (not e!113188))))

(declare-fun lt!61893 () Option!405)

(assert (=> b!185205 (= res!84287 (matchR!125 (regex!563 (rule!1078 (_1!1772 (get!879 lt!61893)))) (list!1137 (charsOf!218 (_1!1772 (get!879 lt!61893))))))))

(declare-fun b!185206 () Bool)

(declare-fun res!84285 () Bool)

(assert (=> b!185206 (=> (not res!84285) (not e!113188))))

(assert (=> b!185206 (= res!84285 (= (++!732 (list!1137 (charsOf!218 (_1!1772 (get!879 lt!61893)))) (_2!1772 (get!879 lt!61893))) lt!61614))))

(declare-fun b!185207 () Bool)

(declare-fun e!113187 () Option!405)

(declare-fun lt!61890 () Option!405)

(declare-fun lt!61891 () Option!405)

(assert (=> b!185207 (= e!113187 (ite (and ((_ is None!404) lt!61890) ((_ is None!404) lt!61891)) None!404 (ite ((_ is None!404) lt!61891) lt!61890 (ite ((_ is None!404) lt!61890) lt!61891 (ite (>= (size!2505 (_1!1772 (v!13897 lt!61890))) (size!2505 (_1!1772 (v!13897 lt!61891)))) lt!61890 lt!61891)))))))

(declare-fun call!8506 () Option!405)

(assert (=> b!185207 (= lt!61890 call!8506)))

(assert (=> b!185207 (= lt!61891 (maxPrefix!179 thiss!17480 (t!28541 rules!1920) lt!61614))))

(declare-fun b!185208 () Bool)

(declare-fun res!84288 () Bool)

(assert (=> b!185208 (=> (not res!84288) (not e!113188))))

(assert (=> b!185208 (= res!84288 (= (list!1137 (charsOf!218 (_1!1772 (get!879 lt!61893)))) (originalCharacters!606 (_1!1772 (get!879 lt!61893)))))))

(declare-fun b!185209 () Bool)

(declare-fun e!113189 () Bool)

(assert (=> b!185209 (= e!113189 e!113188)))

(declare-fun res!84289 () Bool)

(assert (=> b!185209 (=> (not res!84289) (not e!113188))))

(assert (=> b!185209 (= res!84289 (isDefined!256 lt!61893))))

(declare-fun b!185210 () Bool)

(declare-fun res!84290 () Bool)

(assert (=> b!185210 (=> (not res!84290) (not e!113188))))

(assert (=> b!185210 (= res!84290 (< (size!2509 (_2!1772 (get!879 lt!61893))) (size!2509 lt!61614)))))

(declare-fun b!185211 () Bool)

(declare-fun res!84286 () Bool)

(assert (=> b!185211 (=> (not res!84286) (not e!113188))))

(assert (=> b!185211 (= res!84286 (= (value!20361 (_1!1772 (get!879 lt!61893))) (apply!469 (transformation!563 (rule!1078 (_1!1772 (get!879 lt!61893)))) (seqFromList!503 (originalCharacters!606 (_1!1772 (get!879 lt!61893)))))))))

(declare-fun b!185212 () Bool)

(assert (=> b!185212 (= e!113187 call!8506)))

(declare-fun b!185213 () Bool)

(assert (=> b!185213 (= e!113188 (contains!501 rules!1920 (rule!1078 (_1!1772 (get!879 lt!61893)))))))

(declare-fun bm!8501 () Bool)

(assert (=> bm!8501 (= call!8506 (maxPrefixOneRule!87 thiss!17480 (h!8490 rules!1920) lt!61614))))

(declare-fun d!46703 () Bool)

(assert (=> d!46703 e!113189))

(declare-fun res!84291 () Bool)

(assert (=> d!46703 (=> res!84291 e!113189)))

(assert (=> d!46703 (= res!84291 (isEmpty!1463 lt!61893))))

(assert (=> d!46703 (= lt!61893 e!113187)))

(declare-fun c!35910 () Bool)

(assert (=> d!46703 (= c!35910 (and ((_ is Cons!3093) rules!1920) ((_ is Nil!3093) (t!28541 rules!1920))))))

(declare-fun lt!61892 () Unit!2860)

(declare-fun lt!61889 () Unit!2860)

(assert (=> d!46703 (= lt!61892 lt!61889)))

(assert (=> d!46703 (isPrefix!259 lt!61614 lt!61614)))

(assert (=> d!46703 (= lt!61889 (lemmaIsPrefixRefl!153 lt!61614 lt!61614))))

(assert (=> d!46703 (rulesValidInductive!142 thiss!17480 rules!1920)))

(assert (=> d!46703 (= (maxPrefix!179 thiss!17480 rules!1920 lt!61614) lt!61893)))

(assert (= (and d!46703 c!35910) b!185212))

(assert (= (and d!46703 (not c!35910)) b!185207))

(assert (= (or b!185212 b!185207) bm!8501))

(assert (= (and d!46703 (not res!84291)) b!185209))

(assert (= (and b!185209 res!84289) b!185208))

(assert (= (and b!185208 res!84288) b!185210))

(assert (= (and b!185210 res!84290) b!185206))

(assert (= (and b!185206 res!84285) b!185211))

(assert (= (and b!185211 res!84286) b!185205))

(assert (= (and b!185205 res!84287) b!185213))

(declare-fun m!189185 () Bool)

(assert (=> b!185208 m!189185))

(declare-fun m!189187 () Bool)

(assert (=> b!185208 m!189187))

(assert (=> b!185208 m!189187))

(declare-fun m!189189 () Bool)

(assert (=> b!185208 m!189189))

(declare-fun m!189191 () Bool)

(assert (=> b!185207 m!189191))

(assert (=> b!185210 m!189185))

(declare-fun m!189193 () Bool)

(assert (=> b!185210 m!189193))

(declare-fun m!189195 () Bool)

(assert (=> b!185210 m!189195))

(assert (=> b!185213 m!189185))

(declare-fun m!189197 () Bool)

(assert (=> b!185213 m!189197))

(assert (=> b!185205 m!189185))

(assert (=> b!185205 m!189187))

(assert (=> b!185205 m!189187))

(assert (=> b!185205 m!189189))

(assert (=> b!185205 m!189189))

(declare-fun m!189199 () Bool)

(assert (=> b!185205 m!189199))

(declare-fun m!189201 () Bool)

(assert (=> bm!8501 m!189201))

(assert (=> b!185206 m!189185))

(assert (=> b!185206 m!189187))

(assert (=> b!185206 m!189187))

(assert (=> b!185206 m!189189))

(assert (=> b!185206 m!189189))

(declare-fun m!189203 () Bool)

(assert (=> b!185206 m!189203))

(assert (=> b!185211 m!189185))

(declare-fun m!189205 () Bool)

(assert (=> b!185211 m!189205))

(assert (=> b!185211 m!189205))

(declare-fun m!189207 () Bool)

(assert (=> b!185211 m!189207))

(declare-fun m!189209 () Bool)

(assert (=> b!185209 m!189209))

(declare-fun m!189211 () Bool)

(assert (=> d!46703 m!189211))

(declare-fun m!189213 () Bool)

(assert (=> d!46703 m!189213))

(declare-fun m!189215 () Bool)

(assert (=> d!46703 m!189215))

(assert (=> d!46703 m!188673))

(assert (=> b!184698 d!46703))

(declare-fun d!46705 () Bool)

(declare-fun res!84292 () Bool)

(declare-fun e!113190 () Bool)

(assert (=> d!46705 (=> (not res!84292) (not e!113190))))

(assert (=> d!46705 (= res!84292 (not (isEmpty!1457 (originalCharacters!606 separatorToken!170))))))

(assert (=> d!46705 (= (inv!3924 separatorToken!170) e!113190)))

(declare-fun b!185214 () Bool)

(declare-fun res!84293 () Bool)

(assert (=> b!185214 (=> (not res!84293) (not e!113190))))

(assert (=> b!185214 (= res!84293 (= (originalCharacters!606 separatorToken!170) (list!1137 (dynLambda!1273 (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))) (value!20361 separatorToken!170)))))))

(declare-fun b!185215 () Bool)

(assert (=> b!185215 (= e!113190 (= (size!2505 separatorToken!170) (size!2509 (originalCharacters!606 separatorToken!170))))))

(assert (= (and d!46705 res!84292) b!185214))

(assert (= (and b!185214 res!84293) b!185215))

(declare-fun b_lambda!4477 () Bool)

(assert (=> (not b_lambda!4477) (not b!185214)))

(assert (=> b!185214 t!28578))

(declare-fun b_and!12741 () Bool)

(assert (= b_and!12735 (and (=> t!28578 result!10538) b_and!12741)))

(assert (=> b!185214 t!28580))

(declare-fun b_and!12743 () Bool)

(assert (= b_and!12737 (and (=> t!28580 result!10540) b_and!12743)))

(assert (=> b!185214 t!28582))

(declare-fun b_and!12745 () Bool)

(assert (= b_and!12739 (and (=> t!28582 result!10542) b_and!12745)))

(declare-fun m!189217 () Bool)

(assert (=> d!46705 m!189217))

(assert (=> b!185214 m!189063))

(assert (=> b!185214 m!189063))

(declare-fun m!189219 () Bool)

(assert (=> b!185214 m!189219))

(declare-fun m!189221 () Bool)

(assert (=> b!185215 m!189221))

(assert (=> start!19998 d!46705))

(declare-fun lt!61896 () Bool)

(declare-fun d!46707 () Bool)

(assert (=> d!46707 (= lt!61896 (isEmpty!1455 (list!1141 (_1!1773 (lex!249 thiss!17480 rules!1920 (seqFromList!503 lt!61624))))))))

(declare-fun isEmpty!1466 (Conc!949) Bool)

(assert (=> d!46707 (= lt!61896 (isEmpty!1466 (c!35805 (_1!1773 (lex!249 thiss!17480 rules!1920 (seqFromList!503 lt!61624))))))))

(assert (=> d!46707 (= (isEmpty!1458 (_1!1773 (lex!249 thiss!17480 rules!1920 (seqFromList!503 lt!61624)))) lt!61896)))

(declare-fun bs!18406 () Bool)

(assert (= bs!18406 d!46707))

(declare-fun m!189223 () Bool)

(assert (=> bs!18406 m!189223))

(assert (=> bs!18406 m!189223))

(declare-fun m!189225 () Bool)

(assert (=> bs!18406 m!189225))

(declare-fun m!189227 () Bool)

(assert (=> bs!18406 m!189227))

(assert (=> b!184719 d!46707))

(declare-fun b!185273 () Bool)

(declare-fun e!113235 () Bool)

(declare-fun lt!61929 () tuple2!3114)

(assert (=> b!185273 (= e!113235 (not (isEmpty!1458 (_1!1773 lt!61929))))))

(declare-fun e!113237 () Bool)

(declare-fun b!185274 () Bool)

(declare-datatypes ((tuple2!3118 0))(
  ( (tuple2!3119 (_1!1775 List!3104) (_2!1775 List!3102)) )
))
(declare-fun lexList!129 (LexerInterface!449 List!3103 List!3102) tuple2!3118)

(assert (=> b!185274 (= e!113237 (= (list!1137 (_2!1773 lt!61929)) (_2!1775 (lexList!129 thiss!17480 rules!1920 (list!1137 (seqFromList!503 lt!61624))))))))

(declare-fun b!185275 () Bool)

(declare-fun res!84337 () Bool)

(assert (=> b!185275 (=> (not res!84337) (not e!113237))))

(assert (=> b!185275 (= res!84337 (= (list!1141 (_1!1773 lt!61929)) (_1!1775 (lexList!129 thiss!17480 rules!1920 (list!1137 (seqFromList!503 lt!61624))))))))

(declare-fun b!185276 () Bool)

(declare-fun e!113236 () Bool)

(assert (=> b!185276 (= e!113236 e!113235)))

(declare-fun res!84335 () Bool)

(declare-fun size!2511 (BalanceConc!1904) Int)

(assert (=> b!185276 (= res!84335 (< (size!2511 (_2!1773 lt!61929)) (size!2511 (seqFromList!503 lt!61624))))))

(assert (=> b!185276 (=> (not res!84335) (not e!113235))))

(declare-fun d!46709 () Bool)

(assert (=> d!46709 e!113237))

(declare-fun res!84336 () Bool)

(assert (=> d!46709 (=> (not res!84336) (not e!113237))))

(assert (=> d!46709 (= res!84336 e!113236)))

(declare-fun c!35919 () Bool)

(assert (=> d!46709 (= c!35919 (> (size!2508 (_1!1773 lt!61929)) 0))))

(declare-fun lexTailRecV2!116 (LexerInterface!449 List!3103 BalanceConc!1904 BalanceConc!1904 BalanceConc!1904 BalanceConc!1906) tuple2!3114)

(assert (=> d!46709 (= lt!61929 (lexTailRecV2!116 thiss!17480 rules!1920 (seqFromList!503 lt!61624) (BalanceConc!1905 Empty!948) (seqFromList!503 lt!61624) (BalanceConc!1907 Empty!949)))))

(assert (=> d!46709 (= (lex!249 thiss!17480 rules!1920 (seqFromList!503 lt!61624)) lt!61929)))

(declare-fun b!185277 () Bool)

(assert (=> b!185277 (= e!113236 (= (_2!1773 lt!61929) (seqFromList!503 lt!61624)))))

(assert (= (and d!46709 c!35919) b!185276))

(assert (= (and d!46709 (not c!35919)) b!185277))

(assert (= (and b!185276 res!84335) b!185273))

(assert (= (and d!46709 res!84336) b!185275))

(assert (= (and b!185275 res!84337) b!185274))

(declare-fun m!189305 () Bool)

(assert (=> b!185273 m!189305))

(declare-fun m!189307 () Bool)

(assert (=> b!185275 m!189307))

(assert (=> b!185275 m!188443))

(declare-fun m!189309 () Bool)

(assert (=> b!185275 m!189309))

(assert (=> b!185275 m!189309))

(declare-fun m!189311 () Bool)

(assert (=> b!185275 m!189311))

(declare-fun m!189313 () Bool)

(assert (=> b!185276 m!189313))

(assert (=> b!185276 m!188443))

(declare-fun m!189315 () Bool)

(assert (=> b!185276 m!189315))

(declare-fun m!189317 () Bool)

(assert (=> d!46709 m!189317))

(assert (=> d!46709 m!188443))

(assert (=> d!46709 m!188443))

(declare-fun m!189319 () Bool)

(assert (=> d!46709 m!189319))

(declare-fun m!189321 () Bool)

(assert (=> b!185274 m!189321))

(assert (=> b!185274 m!188443))

(assert (=> b!185274 m!189309))

(assert (=> b!185274 m!189309))

(assert (=> b!185274 m!189311))

(assert (=> b!184719 d!46709))

(declare-fun d!46741 () Bool)

(assert (=> d!46741 (= (seqFromList!503 lt!61624) (fromListB!194 lt!61624))))

(declare-fun bs!18411 () Bool)

(assert (= bs!18411 d!46741))

(declare-fun m!189323 () Bool)

(assert (=> bs!18411 m!189323))

(assert (=> b!184719 d!46741))

(declare-fun d!46743 () Bool)

(assert (=> d!46743 (= (inv!3920 (tag!741 (rule!1078 (h!8491 tokens!465)))) (= (mod (str.len (value!20360 (tag!741 (rule!1078 (h!8491 tokens!465))))) 2) 0))))

(assert (=> b!184702 d!46743))

(declare-fun d!46745 () Bool)

(declare-fun res!84340 () Bool)

(declare-fun e!113242 () Bool)

(assert (=> d!46745 (=> (not res!84340) (not e!113242))))

(assert (=> d!46745 (= res!84340 (semiInverseModEq!195 (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))) (toValue!1234 (transformation!563 (rule!1078 (h!8491 tokens!465))))))))

(assert (=> d!46745 (= (inv!3923 (transformation!563 (rule!1078 (h!8491 tokens!465)))) e!113242)))

(declare-fun b!185284 () Bool)

(assert (=> b!185284 (= e!113242 (equivClasses!178 (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))) (toValue!1234 (transformation!563 (rule!1078 (h!8491 tokens!465))))))))

(assert (= (and d!46745 res!84340) b!185284))

(declare-fun m!189325 () Bool)

(assert (=> d!46745 m!189325))

(declare-fun m!189327 () Bool)

(assert (=> b!185284 m!189327))

(assert (=> b!184702 d!46745))

(assert (=> b!184701 d!46703))

(declare-fun d!46747 () Bool)

(assert (=> d!46747 (= (isEmpty!1455 tokens!465) ((_ is Nil!3094) tokens!465))))

(assert (=> b!184701 d!46747))

(declare-fun d!46749 () Bool)

(assert (=> d!46749 (isPrefix!259 lt!61624 (++!732 lt!61624 lt!61627))))

(declare-fun lt!61946 () Unit!2860)

(declare-fun choose!1906 (List!3102 List!3102) Unit!2860)

(assert (=> d!46749 (= lt!61946 (choose!1906 lt!61624 lt!61627))))

(assert (=> d!46749 (= (lemmaConcatTwoListThenFirstIsPrefix!154 lt!61624 lt!61627) lt!61946)))

(declare-fun bs!18412 () Bool)

(assert (= bs!18412 d!46749))

(assert (=> bs!18412 m!188367))

(assert (=> bs!18412 m!188367))

(declare-fun m!189329 () Bool)

(assert (=> bs!18412 m!189329))

(declare-fun m!189331 () Bool)

(assert (=> bs!18412 m!189331))

(assert (=> b!184701 d!46749))

(declare-fun d!46751 () Bool)

(declare-fun e!113273 () Bool)

(assert (=> d!46751 e!113273))

(declare-fun res!84372 () Bool)

(assert (=> d!46751 (=> res!84372 e!113273)))

(assert (=> d!46751 (= res!84372 (isEmpty!1455 tokens!465))))

(declare-fun lt!61961 () Unit!2860)

(declare-fun choose!1907 (LexerInterface!449 List!3103 List!3104 Token!870) Unit!2860)

(assert (=> d!46751 (= lt!61961 (choose!1907 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!46751 (not (isEmpty!1456 rules!1920))))

(assert (=> d!46751 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!24 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!61961)))

(declare-fun b!185336 () Bool)

(declare-fun e!113272 () Bool)

(assert (=> b!185336 (= e!113273 e!113272)))

(declare-fun res!84373 () Bool)

(assert (=> b!185336 (=> (not res!84373) (not e!113272))))

(assert (=> b!185336 (= res!84373 (isDefined!256 (maxPrefix!179 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!142 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!185337 () Bool)

(assert (=> b!185337 (= e!113272 (= (_1!1772 (get!879 (maxPrefix!179 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!142 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!646 tokens!465)))))

(assert (= (and d!46751 (not res!84372)) b!185336))

(assert (= (and b!185336 res!84373) b!185337))

(assert (=> d!46751 m!188451))

(declare-fun m!189381 () Bool)

(assert (=> d!46751 m!189381))

(assert (=> d!46751 m!188439))

(assert (=> b!185336 m!188391))

(assert (=> b!185336 m!188391))

(declare-fun m!189383 () Bool)

(assert (=> b!185336 m!189383))

(assert (=> b!185336 m!189383))

(declare-fun m!189385 () Bool)

(assert (=> b!185336 m!189385))

(assert (=> b!185337 m!188391))

(assert (=> b!185337 m!188391))

(assert (=> b!185337 m!189383))

(assert (=> b!185337 m!189383))

(declare-fun m!189387 () Bool)

(assert (=> b!185337 m!189387))

(assert (=> b!185337 m!188345))

(assert (=> b!184701 d!46751))

(declare-fun b!185355 () Bool)

(declare-fun e!113286 () Bool)

(assert (=> b!185355 (= e!113286 (>= (size!2509 lt!61616) (size!2509 lt!61624)))))

(declare-fun b!185352 () Bool)

(declare-fun e!113285 () Bool)

(declare-fun e!113287 () Bool)

(assert (=> b!185352 (= e!113285 e!113287)))

(declare-fun res!84387 () Bool)

(assert (=> b!185352 (=> (not res!84387) (not e!113287))))

(assert (=> b!185352 (= res!84387 (not ((_ is Nil!3092) lt!61616)))))

(declare-fun d!46759 () Bool)

(assert (=> d!46759 e!113286))

(declare-fun res!84388 () Bool)

(assert (=> d!46759 (=> res!84388 e!113286)))

(declare-fun lt!61967 () Bool)

(assert (=> d!46759 (= res!84388 (not lt!61967))))

(assert (=> d!46759 (= lt!61967 e!113285)))

(declare-fun res!84385 () Bool)

(assert (=> d!46759 (=> res!84385 e!113285)))

(assert (=> d!46759 (= res!84385 ((_ is Nil!3092) lt!61624))))

(assert (=> d!46759 (= (isPrefix!259 lt!61624 lt!61616) lt!61967)))

(declare-fun b!185353 () Bool)

(declare-fun res!84386 () Bool)

(assert (=> b!185353 (=> (not res!84386) (not e!113287))))

(assert (=> b!185353 (= res!84386 (= (head!648 lt!61624) (head!648 lt!61616)))))

(declare-fun b!185354 () Bool)

(assert (=> b!185354 (= e!113287 (isPrefix!259 (tail!373 lt!61624) (tail!373 lt!61616)))))

(assert (= (and d!46759 (not res!84385)) b!185352))

(assert (= (and b!185352 res!84387) b!185353))

(assert (= (and b!185353 res!84386) b!185354))

(assert (= (and d!46759 (not res!84388)) b!185355))

(declare-fun m!189411 () Bool)

(assert (=> b!185355 m!189411))

(assert (=> b!185355 m!188739))

(assert (=> b!185353 m!188695))

(declare-fun m!189413 () Bool)

(assert (=> b!185353 m!189413))

(assert (=> b!185354 m!188691))

(declare-fun m!189415 () Bool)

(assert (=> b!185354 m!189415))

(assert (=> b!185354 m!188691))

(assert (=> b!185354 m!189415))

(declare-fun m!189417 () Bool)

(assert (=> b!185354 m!189417))

(assert (=> b!184701 d!46759))

(declare-fun d!46769 () Bool)

(assert (=> d!46769 (= (get!879 (maxPrefix!179 thiss!17480 rules!1920 lt!61614)) (v!13897 (maxPrefix!179 thiss!17480 rules!1920 lt!61614)))))

(assert (=> b!184701 d!46769))

(declare-fun b!185356 () Bool)

(declare-fun res!84391 () Bool)

(declare-fun e!113289 () Bool)

(assert (=> b!185356 (=> (not res!84391) (not e!113289))))

(declare-fun lt!61973 () Option!405)

(assert (=> b!185356 (= res!84391 (matchR!125 (regex!563 (rule!1078 (_1!1772 (get!879 lt!61973)))) (list!1137 (charsOf!218 (_1!1772 (get!879 lt!61973))))))))

(declare-fun b!185357 () Bool)

(declare-fun res!84389 () Bool)

(assert (=> b!185357 (=> (not res!84389) (not e!113289))))

(assert (=> b!185357 (= res!84389 (= (++!732 (list!1137 (charsOf!218 (_1!1772 (get!879 lt!61973)))) (_2!1772 (get!879 lt!61973))) lt!61627))))

(declare-fun b!185358 () Bool)

(declare-fun e!113288 () Option!405)

(declare-fun lt!61970 () Option!405)

(declare-fun lt!61971 () Option!405)

(assert (=> b!185358 (= e!113288 (ite (and ((_ is None!404) lt!61970) ((_ is None!404) lt!61971)) None!404 (ite ((_ is None!404) lt!61971) lt!61970 (ite ((_ is None!404) lt!61970) lt!61971 (ite (>= (size!2505 (_1!1772 (v!13897 lt!61970))) (size!2505 (_1!1772 (v!13897 lt!61971)))) lt!61970 lt!61971)))))))

(declare-fun call!8513 () Option!405)

(assert (=> b!185358 (= lt!61970 call!8513)))

(assert (=> b!185358 (= lt!61971 (maxPrefix!179 thiss!17480 (t!28541 rules!1920) lt!61627))))

(declare-fun b!185359 () Bool)

(declare-fun res!84392 () Bool)

(assert (=> b!185359 (=> (not res!84392) (not e!113289))))

(assert (=> b!185359 (= res!84392 (= (list!1137 (charsOf!218 (_1!1772 (get!879 lt!61973)))) (originalCharacters!606 (_1!1772 (get!879 lt!61973)))))))

(declare-fun b!185360 () Bool)

(declare-fun e!113290 () Bool)

(assert (=> b!185360 (= e!113290 e!113289)))

(declare-fun res!84393 () Bool)

(assert (=> b!185360 (=> (not res!84393) (not e!113289))))

(assert (=> b!185360 (= res!84393 (isDefined!256 lt!61973))))

(declare-fun b!185361 () Bool)

(declare-fun res!84394 () Bool)

(assert (=> b!185361 (=> (not res!84394) (not e!113289))))

(assert (=> b!185361 (= res!84394 (< (size!2509 (_2!1772 (get!879 lt!61973))) (size!2509 lt!61627)))))

(declare-fun b!185362 () Bool)

(declare-fun res!84390 () Bool)

(assert (=> b!185362 (=> (not res!84390) (not e!113289))))

(assert (=> b!185362 (= res!84390 (= (value!20361 (_1!1772 (get!879 lt!61973))) (apply!469 (transformation!563 (rule!1078 (_1!1772 (get!879 lt!61973)))) (seqFromList!503 (originalCharacters!606 (_1!1772 (get!879 lt!61973)))))))))

(declare-fun b!185363 () Bool)

(assert (=> b!185363 (= e!113288 call!8513)))

(declare-fun b!185364 () Bool)

(assert (=> b!185364 (= e!113289 (contains!501 rules!1920 (rule!1078 (_1!1772 (get!879 lt!61973)))))))

(declare-fun bm!8508 () Bool)

(assert (=> bm!8508 (= call!8513 (maxPrefixOneRule!87 thiss!17480 (h!8490 rules!1920) lt!61627))))

(declare-fun d!46771 () Bool)

(assert (=> d!46771 e!113290))

(declare-fun res!84395 () Bool)

(assert (=> d!46771 (=> res!84395 e!113290)))

(assert (=> d!46771 (= res!84395 (isEmpty!1463 lt!61973))))

(assert (=> d!46771 (= lt!61973 e!113288)))

(declare-fun c!35932 () Bool)

(assert (=> d!46771 (= c!35932 (and ((_ is Cons!3093) rules!1920) ((_ is Nil!3093) (t!28541 rules!1920))))))

(declare-fun lt!61972 () Unit!2860)

(declare-fun lt!61969 () Unit!2860)

(assert (=> d!46771 (= lt!61972 lt!61969)))

(assert (=> d!46771 (isPrefix!259 lt!61627 lt!61627)))

(assert (=> d!46771 (= lt!61969 (lemmaIsPrefixRefl!153 lt!61627 lt!61627))))

(assert (=> d!46771 (rulesValidInductive!142 thiss!17480 rules!1920)))

(assert (=> d!46771 (= (maxPrefix!179 thiss!17480 rules!1920 lt!61627) lt!61973)))

(assert (= (and d!46771 c!35932) b!185363))

(assert (= (and d!46771 (not c!35932)) b!185358))

(assert (= (or b!185363 b!185358) bm!8508))

(assert (= (and d!46771 (not res!84395)) b!185360))

(assert (= (and b!185360 res!84393) b!185359))

(assert (= (and b!185359 res!84392) b!185361))

(assert (= (and b!185361 res!84394) b!185357))

(assert (= (and b!185357 res!84389) b!185362))

(assert (= (and b!185362 res!84390) b!185356))

(assert (= (and b!185356 res!84391) b!185364))

(declare-fun m!189419 () Bool)

(assert (=> b!185359 m!189419))

(declare-fun m!189421 () Bool)

(assert (=> b!185359 m!189421))

(assert (=> b!185359 m!189421))

(declare-fun m!189423 () Bool)

(assert (=> b!185359 m!189423))

(declare-fun m!189425 () Bool)

(assert (=> b!185358 m!189425))

(assert (=> b!185361 m!189419))

(declare-fun m!189427 () Bool)

(assert (=> b!185361 m!189427))

(assert (=> b!185361 m!188793))

(assert (=> b!185364 m!189419))

(declare-fun m!189429 () Bool)

(assert (=> b!185364 m!189429))

(assert (=> b!185356 m!189419))

(assert (=> b!185356 m!189421))

(assert (=> b!185356 m!189421))

(assert (=> b!185356 m!189423))

(assert (=> b!185356 m!189423))

(declare-fun m!189431 () Bool)

(assert (=> b!185356 m!189431))

(declare-fun m!189433 () Bool)

(assert (=> bm!8508 m!189433))

(assert (=> b!185357 m!189419))

(assert (=> b!185357 m!189421))

(assert (=> b!185357 m!189421))

(assert (=> b!185357 m!189423))

(assert (=> b!185357 m!189423))

(declare-fun m!189435 () Bool)

(assert (=> b!185357 m!189435))

(assert (=> b!185362 m!189419))

(declare-fun m!189437 () Bool)

(assert (=> b!185362 m!189437))

(assert (=> b!185362 m!189437))

(declare-fun m!189439 () Bool)

(assert (=> b!185362 m!189439))

(declare-fun m!189441 () Bool)

(assert (=> b!185360 m!189441))

(declare-fun m!189443 () Bool)

(assert (=> d!46771 m!189443))

(declare-fun m!189445 () Bool)

(assert (=> d!46771 m!189445))

(declare-fun m!189447 () Bool)

(assert (=> d!46771 m!189447))

(assert (=> d!46771 m!188673))

(assert (=> b!184701 d!46771))

(declare-fun d!46773 () Bool)

(assert (=> d!46773 (= lt!61627 (_2!1772 lt!61607))))

(declare-fun lt!61976 () Unit!2860)

(declare-fun choose!1908 (List!3102 List!3102 List!3102 List!3102 List!3102) Unit!2860)

(assert (=> d!46773 (= lt!61976 (choose!1908 lt!61624 lt!61627 lt!61624 (_2!1772 lt!61607) lt!61614))))

(assert (=> d!46773 (isPrefix!259 lt!61624 lt!61614)))

(assert (=> d!46773 (= (lemmaSamePrefixThenSameSuffix!84 lt!61624 lt!61627 lt!61624 (_2!1772 lt!61607) lt!61614) lt!61976)))

(declare-fun bs!18422 () Bool)

(assert (= bs!18422 d!46773))

(declare-fun m!189449 () Bool)

(assert (=> bs!18422 m!189449))

(declare-fun m!189451 () Bool)

(assert (=> bs!18422 m!189451))

(assert (=> b!184701 d!46773))

(declare-fun d!46775 () Bool)

(assert (=> d!46775 (= (isEmpty!1455 (t!28542 tokens!465)) ((_ is Nil!3094) (t!28542 tokens!465)))))

(assert (=> b!184701 d!46775))

(declare-fun bs!18451 () Bool)

(declare-fun d!46777 () Bool)

(assert (= bs!18451 (and d!46777 b!185179)))

(declare-fun lambda!5575 () Int)

(assert (=> bs!18451 (= lambda!5575 lambda!5561)))

(declare-fun bs!18452 () Bool)

(assert (= bs!18452 (and d!46777 d!46693)))

(assert (=> bs!18452 (not (= lambda!5575 lambda!5560))))

(declare-fun bs!18453 () Bool)

(assert (= bs!18453 (and d!46777 b!185055)))

(assert (=> bs!18453 (= lambda!5575 lambda!5547)))

(declare-fun bs!18454 () Bool)

(assert (= bs!18454 (and d!46777 b!184714)))

(assert (=> bs!18454 (not (= lambda!5575 lambda!5537))))

(declare-fun bs!18455 () Bool)

(assert (= bs!18455 (and d!46777 b!185189)))

(assert (=> bs!18455 (= lambda!5575 lambda!5562)))

(declare-fun bs!18456 () Bool)

(assert (= bs!18456 (and d!46777 d!46649)))

(assert (=> bs!18456 (not (= lambda!5575 lambda!5558))))

(declare-fun bs!18457 () Bool)

(assert (= bs!18457 (and d!46777 b!185154)))

(assert (=> bs!18457 (= lambda!5575 lambda!5559)))

(declare-fun bs!18458 () Bool)

(assert (= bs!18458 (and d!46777 b!184691)))

(assert (=> bs!18458 (= lambda!5575 lambda!5538)))

(declare-fun b!185451 () Bool)

(declare-fun e!113341 () Bool)

(assert (=> b!185451 (= e!113341 true)))

(declare-fun b!185450 () Bool)

(declare-fun e!113340 () Bool)

(assert (=> b!185450 (= e!113340 e!113341)))

(declare-fun b!185449 () Bool)

(declare-fun e!113339 () Bool)

(assert (=> b!185449 (= e!113339 e!113340)))

(assert (=> d!46777 e!113339))

(assert (= b!185450 b!185451))

(assert (= b!185449 b!185450))

(assert (= (and d!46777 ((_ is Cons!3093) rules!1920)) b!185449))

(assert (=> b!185451 (< (dynLambda!1267 order!1853 (toValue!1234 (transformation!563 (h!8490 rules!1920)))) (dynLambda!1268 order!1855 lambda!5575))))

(assert (=> b!185451 (< (dynLambda!1269 order!1857 (toChars!1093 (transformation!563 (h!8490 rules!1920)))) (dynLambda!1268 order!1855 lambda!5575))))

(assert (=> d!46777 true))

(declare-fun e!113338 () Bool)

(assert (=> d!46777 e!113338))

(declare-fun res!84417 () Bool)

(assert (=> d!46777 (=> (not res!84417) (not e!113338))))

(declare-fun lt!62007 () Bool)

(assert (=> d!46777 (= res!84417 (= lt!62007 (forall!639 (list!1141 lt!61623) lambda!5575)))))

(declare-fun forall!641 (BalanceConc!1906 Int) Bool)

(assert (=> d!46777 (= lt!62007 (forall!641 lt!61623 lambda!5575))))

(assert (=> d!46777 (not (isEmpty!1456 rules!1920))))

(assert (=> d!46777 (= (rulesProduceEachTokenIndividually!241 thiss!17480 rules!1920 lt!61623) lt!62007)))

(declare-fun b!185448 () Bool)

(assert (=> b!185448 (= e!113338 (= lt!62007 (rulesProduceEachTokenIndividuallyList!139 thiss!17480 rules!1920 (list!1141 lt!61623))))))

(assert (= (and d!46777 res!84417) b!185448))

(assert (=> d!46777 m!189107))

(assert (=> d!46777 m!189107))

(declare-fun m!189589 () Bool)

(assert (=> d!46777 m!189589))

(declare-fun m!189591 () Bool)

(assert (=> d!46777 m!189591))

(assert (=> d!46777 m!188439))

(assert (=> b!185448 m!189107))

(assert (=> b!185448 m!189107))

(declare-fun m!189593 () Bool)

(assert (=> b!185448 m!189593))

(assert (=> b!184700 d!46777))

(declare-fun d!46795 () Bool)

(assert (=> d!46795 (= (seqFromList!504 tokens!465) (fromListB!196 tokens!465))))

(declare-fun bs!18459 () Bool)

(assert (= bs!18459 d!46795))

(declare-fun m!189595 () Bool)

(assert (=> bs!18459 m!189595))

(assert (=> b!184700 d!46795))

(declare-fun d!46797 () Bool)

(declare-fun lt!62008 () Bool)

(declare-fun e!113352 () Bool)

(assert (=> d!46797 (= lt!62008 e!113352)))

(declare-fun res!84418 () Bool)

(assert (=> d!46797 (=> (not res!84418) (not e!113352))))

(assert (=> d!46797 (= res!84418 (= (list!1141 (_1!1773 (lex!249 thiss!17480 rules!1920 (print!180 thiss!17480 (singletonSeq!115 separatorToken!170))))) (list!1141 (singletonSeq!115 separatorToken!170))))))

(declare-fun e!113353 () Bool)

(assert (=> d!46797 (= lt!62008 e!113353)))

(declare-fun res!84419 () Bool)

(assert (=> d!46797 (=> (not res!84419) (not e!113353))))

(declare-fun lt!62009 () tuple2!3114)

(assert (=> d!46797 (= res!84419 (= (size!2508 (_1!1773 lt!62009)) 1))))

(assert (=> d!46797 (= lt!62009 (lex!249 thiss!17480 rules!1920 (print!180 thiss!17480 (singletonSeq!115 separatorToken!170))))))

(assert (=> d!46797 (not (isEmpty!1456 rules!1920))))

(assert (=> d!46797 (= (rulesProduceIndividualToken!198 thiss!17480 rules!1920 separatorToken!170) lt!62008)))

(declare-fun b!185466 () Bool)

(declare-fun res!84420 () Bool)

(assert (=> b!185466 (=> (not res!84420) (not e!113353))))

(assert (=> b!185466 (= res!84420 (= (apply!467 (_1!1773 lt!62009) 0) separatorToken!170))))

(declare-fun b!185467 () Bool)

(assert (=> b!185467 (= e!113353 (isEmpty!1461 (_2!1773 lt!62009)))))

(declare-fun b!185468 () Bool)

(assert (=> b!185468 (= e!113352 (isEmpty!1461 (_2!1773 (lex!249 thiss!17480 rules!1920 (print!180 thiss!17480 (singletonSeq!115 separatorToken!170))))))))

(assert (= (and d!46797 res!84419) b!185466))

(assert (= (and b!185466 res!84420) b!185467))

(assert (= (and d!46797 res!84418) b!185468))

(declare-fun m!189597 () Bool)

(assert (=> d!46797 m!189597))

(declare-fun m!189599 () Bool)

(assert (=> d!46797 m!189599))

(declare-fun m!189601 () Bool)

(assert (=> d!46797 m!189601))

(assert (=> d!46797 m!189599))

(assert (=> d!46797 m!188439))

(assert (=> d!46797 m!189599))

(declare-fun m!189603 () Bool)

(assert (=> d!46797 m!189603))

(declare-fun m!189605 () Bool)

(assert (=> d!46797 m!189605))

(assert (=> d!46797 m!189601))

(declare-fun m!189607 () Bool)

(assert (=> d!46797 m!189607))

(declare-fun m!189609 () Bool)

(assert (=> b!185466 m!189609))

(declare-fun m!189611 () Bool)

(assert (=> b!185467 m!189611))

(assert (=> b!185468 m!189599))

(assert (=> b!185468 m!189599))

(assert (=> b!185468 m!189601))

(assert (=> b!185468 m!189601))

(assert (=> b!185468 m!189607))

(declare-fun m!189613 () Bool)

(assert (=> b!185468 m!189613))

(assert (=> b!184705 d!46797))

(declare-fun bs!18463 () Bool)

(declare-fun d!46799 () Bool)

(assert (= bs!18463 (and d!46799 d!46777)))

(declare-fun lambda!5578 () Int)

(assert (=> bs!18463 (= lambda!5578 lambda!5575)))

(declare-fun bs!18464 () Bool)

(assert (= bs!18464 (and d!46799 b!185179)))

(assert (=> bs!18464 (= lambda!5578 lambda!5561)))

(declare-fun bs!18465 () Bool)

(assert (= bs!18465 (and d!46799 d!46693)))

(assert (=> bs!18465 (not (= lambda!5578 lambda!5560))))

(declare-fun bs!18466 () Bool)

(assert (= bs!18466 (and d!46799 b!185055)))

(assert (=> bs!18466 (= lambda!5578 lambda!5547)))

(declare-fun bs!18467 () Bool)

(assert (= bs!18467 (and d!46799 b!184714)))

(assert (=> bs!18467 (not (= lambda!5578 lambda!5537))))

(declare-fun bs!18468 () Bool)

(assert (= bs!18468 (and d!46799 b!185189)))

(assert (=> bs!18468 (= lambda!5578 lambda!5562)))

(declare-fun bs!18469 () Bool)

(assert (= bs!18469 (and d!46799 d!46649)))

(assert (=> bs!18469 (not (= lambda!5578 lambda!5558))))

(declare-fun bs!18470 () Bool)

(assert (= bs!18470 (and d!46799 b!185154)))

(assert (=> bs!18470 (= lambda!5578 lambda!5559)))

(declare-fun bs!18471 () Bool)

(assert (= bs!18471 (and d!46799 b!184691)))

(assert (=> bs!18471 (= lambda!5578 lambda!5538)))

(declare-fun b!185487 () Bool)

(declare-fun e!113378 () Bool)

(assert (=> b!185487 (= e!113378 true)))

(declare-fun b!185486 () Bool)

(declare-fun e!113377 () Bool)

(assert (=> b!185486 (= e!113377 e!113378)))

(declare-fun b!185485 () Bool)

(declare-fun e!113376 () Bool)

(assert (=> b!185485 (= e!113376 e!113377)))

(assert (=> d!46799 e!113376))

(assert (= b!185486 b!185487))

(assert (= b!185485 b!185486))

(assert (= (and d!46799 ((_ is Cons!3093) rules!1920)) b!185485))

(assert (=> b!185487 (< (dynLambda!1267 order!1853 (toValue!1234 (transformation!563 (h!8490 rules!1920)))) (dynLambda!1268 order!1855 lambda!5578))))

(assert (=> b!185487 (< (dynLambda!1269 order!1857 (toChars!1093 (transformation!563 (h!8490 rules!1920)))) (dynLambda!1268 order!1855 lambda!5578))))

(assert (=> d!46799 true))

(declare-fun lt!62012 () Bool)

(assert (=> d!46799 (= lt!62012 (forall!639 (t!28542 tokens!465) lambda!5578))))

(declare-fun e!113374 () Bool)

(assert (=> d!46799 (= lt!62012 e!113374)))

(declare-fun res!84425 () Bool)

(assert (=> d!46799 (=> res!84425 e!113374)))

(assert (=> d!46799 (= res!84425 (not ((_ is Cons!3094) (t!28542 tokens!465))))))

(assert (=> d!46799 (not (isEmpty!1456 rules!1920))))

(assert (=> d!46799 (= (rulesProduceEachTokenIndividuallyList!139 thiss!17480 rules!1920 (t!28542 tokens!465)) lt!62012)))

(declare-fun b!185483 () Bool)

(declare-fun e!113375 () Bool)

(assert (=> b!185483 (= e!113374 e!113375)))

(declare-fun res!84426 () Bool)

(assert (=> b!185483 (=> (not res!84426) (not e!113375))))

(assert (=> b!185483 (= res!84426 (rulesProduceIndividualToken!198 thiss!17480 rules!1920 (h!8491 (t!28542 tokens!465))))))

(declare-fun b!185484 () Bool)

(assert (=> b!185484 (= e!113375 (rulesProduceEachTokenIndividuallyList!139 thiss!17480 rules!1920 (t!28542 (t!28542 tokens!465))))))

(assert (= (and d!46799 (not res!84425)) b!185483))

(assert (= (and b!185483 res!84426) b!185484))

(declare-fun m!189623 () Bool)

(assert (=> d!46799 m!189623))

(assert (=> d!46799 m!188439))

(declare-fun m!189625 () Bool)

(assert (=> b!185483 m!189625))

(declare-fun m!189627 () Bool)

(assert (=> b!185484 m!189627))

(assert (=> b!184703 d!46799))

(declare-fun d!46807 () Bool)

(declare-fun e!113379 () Bool)

(assert (=> d!46807 e!113379))

(declare-fun res!84427 () Bool)

(assert (=> d!46807 (=> (not res!84427) (not e!113379))))

(declare-fun lt!62013 () List!3102)

(assert (=> d!46807 (= res!84427 (= (content!423 lt!62013) ((_ map or) (content!423 lt!61624) (content!423 lt!61606))))))

(declare-fun e!113380 () List!3102)

(assert (=> d!46807 (= lt!62013 e!113380)))

(declare-fun c!35945 () Bool)

(assert (=> d!46807 (= c!35945 ((_ is Nil!3092) lt!61624))))

(assert (=> d!46807 (= (++!732 lt!61624 lt!61606) lt!62013)))

(declare-fun b!185488 () Bool)

(assert (=> b!185488 (= e!113380 lt!61606)))

(declare-fun b!185491 () Bool)

(assert (=> b!185491 (= e!113379 (or (not (= lt!61606 Nil!3092)) (= lt!62013 lt!61624)))))

(declare-fun b!185490 () Bool)

(declare-fun res!84428 () Bool)

(assert (=> b!185490 (=> (not res!84428) (not e!113379))))

(assert (=> b!185490 (= res!84428 (= (size!2509 lt!62013) (+ (size!2509 lt!61624) (size!2509 lt!61606))))))

(declare-fun b!185489 () Bool)

(assert (=> b!185489 (= e!113380 (Cons!3092 (h!8489 lt!61624) (++!732 (t!28540 lt!61624) lt!61606)))))

(assert (= (and d!46807 c!35945) b!185488))

(assert (= (and d!46807 (not c!35945)) b!185489))

(assert (= (and d!46807 res!84427) b!185490))

(assert (= (and b!185490 res!84428) b!185491))

(declare-fun m!189629 () Bool)

(assert (=> d!46807 m!189629))

(assert (=> d!46807 m!188787))

(assert (=> d!46807 m!189069))

(declare-fun m!189631 () Bool)

(assert (=> b!185490 m!189631))

(assert (=> b!185490 m!188739))

(assert (=> b!185490 m!189075))

(declare-fun m!189633 () Bool)

(assert (=> b!185489 m!189633))

(assert (=> b!184686 d!46807))

(declare-fun d!46809 () Bool)

(declare-fun e!113383 () Bool)

(assert (=> d!46809 e!113383))

(declare-fun res!84431 () Bool)

(assert (=> d!46809 (=> (not res!84431) (not e!113383))))

(declare-fun lt!62016 () BalanceConc!1906)

(assert (=> d!46809 (= res!84431 (= (list!1141 lt!62016) (Cons!3094 (h!8491 tokens!465) Nil!3094)))))

(declare-fun singleton!53 (Token!870) BalanceConc!1906)

(assert (=> d!46809 (= lt!62016 (singleton!53 (h!8491 tokens!465)))))

(assert (=> d!46809 (= (singletonSeq!115 (h!8491 tokens!465)) lt!62016)))

(declare-fun b!185494 () Bool)

(declare-fun isBalanced!258 (Conc!949) Bool)

(assert (=> b!185494 (= e!113383 (isBalanced!258 (c!35805 lt!62016)))))

(assert (= (and d!46809 res!84431) b!185494))

(declare-fun m!189635 () Bool)

(assert (=> d!46809 m!189635))

(declare-fun m!189637 () Bool)

(assert (=> d!46809 m!189637))

(declare-fun m!189639 () Bool)

(assert (=> b!185494 m!189639))

(assert (=> b!184707 d!46809))

(declare-fun d!46811 () Bool)

(assert (=> d!46811 (= (list!1137 lt!61619) (list!1140 (c!35803 lt!61619)))))

(declare-fun bs!18472 () Bool)

(assert (= bs!18472 d!46811))

(declare-fun m!189641 () Bool)

(assert (=> bs!18472 m!189641))

(assert (=> b!184707 d!46811))

(declare-fun d!46813 () Bool)

(declare-fun lt!62019 () BalanceConc!1904)

(assert (=> d!46813 (= (list!1137 lt!62019) (printList!133 thiss!17480 (list!1141 lt!61617)))))

(assert (=> d!46813 (= lt!62019 (printTailRec!143 thiss!17480 lt!61617 0 (BalanceConc!1905 Empty!948)))))

(assert (=> d!46813 (= (print!180 thiss!17480 lt!61617) lt!62019)))

(declare-fun bs!18473 () Bool)

(assert (= bs!18473 d!46813))

(declare-fun m!189643 () Bool)

(assert (=> bs!18473 m!189643))

(declare-fun m!189645 () Bool)

(assert (=> bs!18473 m!189645))

(assert (=> bs!18473 m!189645))

(declare-fun m!189647 () Bool)

(assert (=> bs!18473 m!189647))

(assert (=> bs!18473 m!188379))

(assert (=> b!184707 d!46813))

(declare-fun d!46815 () Bool)

(declare-fun lt!62040 () BalanceConc!1904)

(declare-fun printListTailRec!72 (LexerInterface!449 List!3104 List!3102) List!3102)

(assert (=> d!46815 (= (list!1137 lt!62040) (printListTailRec!72 thiss!17480 (dropList!104 lt!61617 0) (list!1137 (BalanceConc!1905 Empty!948))))))

(declare-fun e!113389 () BalanceConc!1904)

(assert (=> d!46815 (= lt!62040 e!113389)))

(declare-fun c!35948 () Bool)

(assert (=> d!46815 (= c!35948 (>= 0 (size!2508 lt!61617)))))

(declare-fun e!113388 () Bool)

(assert (=> d!46815 e!113388))

(declare-fun res!84434 () Bool)

(assert (=> d!46815 (=> (not res!84434) (not e!113388))))

(assert (=> d!46815 (= res!84434 (>= 0 0))))

(assert (=> d!46815 (= (printTailRec!143 thiss!17480 lt!61617 0 (BalanceConc!1905 Empty!948)) lt!62040)))

(declare-fun b!185501 () Bool)

(assert (=> b!185501 (= e!113388 (<= 0 (size!2508 lt!61617)))))

(declare-fun b!185502 () Bool)

(assert (=> b!185502 (= e!113389 (BalanceConc!1905 Empty!948))))

(declare-fun b!185503 () Bool)

(assert (=> b!185503 (= e!113389 (printTailRec!143 thiss!17480 lt!61617 (+ 0 1) (++!734 (BalanceConc!1905 Empty!948) (charsOf!218 (apply!467 lt!61617 0)))))))

(declare-fun lt!62037 () List!3104)

(assert (=> b!185503 (= lt!62037 (list!1141 lt!61617))))

(declare-fun lt!62034 () Unit!2860)

(assert (=> b!185503 (= lt!62034 (lemmaDropApply!144 lt!62037 0))))

(assert (=> b!185503 (= (head!646 (drop!157 lt!62037 0)) (apply!470 lt!62037 0))))

(declare-fun lt!62038 () Unit!2860)

(assert (=> b!185503 (= lt!62038 lt!62034)))

(declare-fun lt!62039 () List!3104)

(assert (=> b!185503 (= lt!62039 (list!1141 lt!61617))))

(declare-fun lt!62036 () Unit!2860)

(assert (=> b!185503 (= lt!62036 (lemmaDropTail!136 lt!62039 0))))

(assert (=> b!185503 (= (tail!374 (drop!157 lt!62039 0)) (drop!157 lt!62039 (+ 0 1)))))

(declare-fun lt!62035 () Unit!2860)

(assert (=> b!185503 (= lt!62035 lt!62036)))

(assert (= (and d!46815 res!84434) b!185501))

(assert (= (and d!46815 c!35948) b!185502))

(assert (= (and d!46815 (not c!35948)) b!185503))

(declare-fun m!189649 () Bool)

(assert (=> d!46815 m!189649))

(declare-fun m!189651 () Bool)

(assert (=> d!46815 m!189651))

(declare-fun m!189653 () Bool)

(assert (=> d!46815 m!189653))

(assert (=> d!46815 m!189653))

(assert (=> d!46815 m!189651))

(declare-fun m!189655 () Bool)

(assert (=> d!46815 m!189655))

(declare-fun m!189657 () Bool)

(assert (=> d!46815 m!189657))

(assert (=> b!185501 m!189657))

(declare-fun m!189659 () Bool)

(assert (=> b!185503 m!189659))

(declare-fun m!189661 () Bool)

(assert (=> b!185503 m!189661))

(declare-fun m!189663 () Bool)

(assert (=> b!185503 m!189663))

(declare-fun m!189665 () Bool)

(assert (=> b!185503 m!189665))

(assert (=> b!185503 m!189645))

(declare-fun m!189667 () Bool)

(assert (=> b!185503 m!189667))

(declare-fun m!189669 () Bool)

(assert (=> b!185503 m!189669))

(declare-fun m!189671 () Bool)

(assert (=> b!185503 m!189671))

(assert (=> b!185503 m!189659))

(declare-fun m!189673 () Bool)

(assert (=> b!185503 m!189673))

(declare-fun m!189675 () Bool)

(assert (=> b!185503 m!189675))

(declare-fun m!189677 () Bool)

(assert (=> b!185503 m!189677))

(assert (=> b!185503 m!189669))

(assert (=> b!185503 m!189677))

(declare-fun m!189679 () Bool)

(assert (=> b!185503 m!189679))

(declare-fun m!189681 () Bool)

(assert (=> b!185503 m!189681))

(assert (=> b!185503 m!189661))

(assert (=> b!185503 m!189675))

(assert (=> b!184707 d!46815))

(declare-fun d!46817 () Bool)

(declare-fun c!35951 () Bool)

(assert (=> d!46817 (= c!35951 ((_ is Cons!3094) lt!61618))))

(declare-fun e!113392 () List!3102)

(assert (=> d!46817 (= (printList!133 thiss!17480 lt!61618) e!113392)))

(declare-fun b!185508 () Bool)

(assert (=> b!185508 (= e!113392 (++!732 (list!1137 (charsOf!218 (h!8491 lt!61618))) (printList!133 thiss!17480 (t!28542 lt!61618))))))

(declare-fun b!185509 () Bool)

(assert (=> b!185509 (= e!113392 Nil!3092)))

(assert (= (and d!46817 c!35951) b!185508))

(assert (= (and d!46817 (not c!35951)) b!185509))

(declare-fun m!189683 () Bool)

(assert (=> b!185508 m!189683))

(assert (=> b!185508 m!189683))

(declare-fun m!189685 () Bool)

(assert (=> b!185508 m!189685))

(declare-fun m!189687 () Bool)

(assert (=> b!185508 m!189687))

(assert (=> b!185508 m!189685))

(assert (=> b!185508 m!189687))

(declare-fun m!189689 () Bool)

(assert (=> b!185508 m!189689))

(assert (=> b!184707 d!46817))

(declare-fun d!46819 () Bool)

(assert (=> d!46819 (= (isEmpty!1456 rules!1920) ((_ is Nil!3093) rules!1920))))

(assert (=> b!184706 d!46819))

(declare-fun d!46821 () Bool)

(assert (=> d!46821 (= (inv!3920 (tag!741 (h!8490 rules!1920))) (= (mod (str.len (value!20360 (tag!741 (h!8490 rules!1920)))) 2) 0))))

(assert (=> b!184685 d!46821))

(declare-fun d!46823 () Bool)

(declare-fun res!84435 () Bool)

(declare-fun e!113393 () Bool)

(assert (=> d!46823 (=> (not res!84435) (not e!113393))))

(assert (=> d!46823 (= res!84435 (semiInverseModEq!195 (toChars!1093 (transformation!563 (h!8490 rules!1920))) (toValue!1234 (transformation!563 (h!8490 rules!1920)))))))

(assert (=> d!46823 (= (inv!3923 (transformation!563 (h!8490 rules!1920))) e!113393)))

(declare-fun b!185510 () Bool)

(assert (=> b!185510 (= e!113393 (equivClasses!178 (toChars!1093 (transformation!563 (h!8490 rules!1920))) (toValue!1234 (transformation!563 (h!8490 rules!1920)))))))

(assert (= (and d!46823 res!84435) b!185510))

(declare-fun m!189691 () Bool)

(assert (=> d!46823 m!189691))

(declare-fun m!189693 () Bool)

(assert (=> b!185510 m!189693))

(assert (=> b!184685 d!46823))

(declare-fun d!46825 () Bool)

(declare-fun res!84440 () Bool)

(declare-fun e!113398 () Bool)

(assert (=> d!46825 (=> res!84440 e!113398)))

(assert (=> d!46825 (= res!84440 (not ((_ is Cons!3093) rules!1920)))))

(assert (=> d!46825 (= (sepAndNonSepRulesDisjointChars!152 rules!1920 rules!1920) e!113398)))

(declare-fun b!185515 () Bool)

(declare-fun e!113399 () Bool)

(assert (=> b!185515 (= e!113398 e!113399)))

(declare-fun res!84441 () Bool)

(assert (=> b!185515 (=> (not res!84441) (not e!113399))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!54 (Rule!926 List!3103) Bool)

(assert (=> b!185515 (= res!84441 (ruleDisjointCharsFromAllFromOtherType!54 (h!8490 rules!1920) rules!1920))))

(declare-fun b!185516 () Bool)

(assert (=> b!185516 (= e!113399 (sepAndNonSepRulesDisjointChars!152 rules!1920 (t!28541 rules!1920)))))

(assert (= (and d!46825 (not res!84440)) b!185515))

(assert (= (and b!185515 res!84441) b!185516))

(declare-fun m!189695 () Bool)

(assert (=> b!185515 m!189695))

(declare-fun m!189697 () Bool)

(assert (=> b!185516 m!189697))

(assert (=> b!184684 d!46825))

(declare-fun b!185530 () Bool)

(declare-fun e!113402 () Bool)

(declare-fun tp!87329 () Bool)

(declare-fun tp!87326 () Bool)

(assert (=> b!185530 (= e!113402 (and tp!87329 tp!87326))))

(declare-fun b!185529 () Bool)

(declare-fun tp!87330 () Bool)

(assert (=> b!185529 (= e!113402 tp!87330)))

(declare-fun b!185528 () Bool)

(declare-fun tp!87328 () Bool)

(declare-fun tp!87327 () Bool)

(assert (=> b!185528 (= e!113402 (and tp!87328 tp!87327))))

(declare-fun b!185527 () Bool)

(declare-fun tp_is_empty!1687 () Bool)

(assert (=> b!185527 (= e!113402 tp_is_empty!1687)))

(assert (=> b!184699 (= tp!87244 e!113402)))

(assert (= (and b!184699 ((_ is ElementMatch!787) (regex!563 (rule!1078 separatorToken!170)))) b!185527))

(assert (= (and b!184699 ((_ is Concat!1373) (regex!563 (rule!1078 separatorToken!170)))) b!185528))

(assert (= (and b!184699 ((_ is Star!787) (regex!563 (rule!1078 separatorToken!170)))) b!185529))

(assert (= (and b!184699 ((_ is Union!787) (regex!563 (rule!1078 separatorToken!170)))) b!185530))

(declare-fun b!185533 () Bool)

(declare-fun e!113405 () Bool)

(assert (=> b!185533 (= e!113405 true)))

(declare-fun b!185532 () Bool)

(declare-fun e!113404 () Bool)

(assert (=> b!185532 (= e!113404 e!113405)))

(declare-fun b!185531 () Bool)

(declare-fun e!113403 () Bool)

(assert (=> b!185531 (= e!113403 e!113404)))

(assert (=> b!184728 e!113403))

(assert (= b!185532 b!185533))

(assert (= b!185531 b!185532))

(assert (= (and b!184728 ((_ is Cons!3093) (t!28541 rules!1920))) b!185531))

(assert (=> b!185533 (< (dynLambda!1267 order!1853 (toValue!1234 (transformation!563 (h!8490 (t!28541 rules!1920))))) (dynLambda!1268 order!1855 lambda!5538))))

(assert (=> b!185533 (< (dynLambda!1269 order!1857 (toChars!1093 (transformation!563 (h!8490 (t!28541 rules!1920))))) (dynLambda!1268 order!1855 lambda!5538))))

(declare-fun b!185538 () Bool)

(declare-fun e!113408 () Bool)

(declare-fun tp!87333 () Bool)

(assert (=> b!185538 (= e!113408 (and tp_is_empty!1687 tp!87333))))

(assert (=> b!184708 (= tp!87240 e!113408)))

(assert (= (and b!184708 ((_ is Cons!3092) (originalCharacters!606 (h!8491 tokens!465)))) b!185538))

(declare-fun b!185542 () Bool)

(declare-fun e!113409 () Bool)

(declare-fun tp!87337 () Bool)

(declare-fun tp!87334 () Bool)

(assert (=> b!185542 (= e!113409 (and tp!87337 tp!87334))))

(declare-fun b!185541 () Bool)

(declare-fun tp!87338 () Bool)

(assert (=> b!185541 (= e!113409 tp!87338)))

(declare-fun b!185540 () Bool)

(declare-fun tp!87336 () Bool)

(declare-fun tp!87335 () Bool)

(assert (=> b!185540 (= e!113409 (and tp!87336 tp!87335))))

(declare-fun b!185539 () Bool)

(assert (=> b!185539 (= e!113409 tp_is_empty!1687)))

(assert (=> b!184702 (= tp!87241 e!113409)))

(assert (= (and b!184702 ((_ is ElementMatch!787) (regex!563 (rule!1078 (h!8491 tokens!465))))) b!185539))

(assert (= (and b!184702 ((_ is Concat!1373) (regex!563 (rule!1078 (h!8491 tokens!465))))) b!185540))

(assert (= (and b!184702 ((_ is Star!787) (regex!563 (rule!1078 (h!8491 tokens!465))))) b!185541))

(assert (= (and b!184702 ((_ is Union!787) (regex!563 (rule!1078 (h!8491 tokens!465))))) b!185542))

(declare-fun b!185556 () Bool)

(declare-fun b_free!7253 () Bool)

(declare-fun b_next!7253 () Bool)

(assert (=> b!185556 (= b_free!7253 (not b_next!7253))))

(declare-fun tp!87351 () Bool)

(declare-fun b_and!12761 () Bool)

(assert (=> b!185556 (= tp!87351 b_and!12761)))

(declare-fun b_free!7255 () Bool)

(declare-fun b_next!7255 () Bool)

(assert (=> b!185556 (= b_free!7255 (not b_next!7255))))

(declare-fun t!28604 () Bool)

(declare-fun tb!7689 () Bool)

(assert (=> (and b!185556 (= (toChars!1093 (transformation!563 (rule!1078 (h!8491 (t!28542 tokens!465))))) (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465))))) t!28604) tb!7689))

(declare-fun result!10566 () Bool)

(assert (= result!10566 result!10516))

(assert (=> b!184982 t!28604))

(declare-fun tb!7691 () Bool)

(declare-fun t!28606 () Bool)

(assert (=> (and b!185556 (= (toChars!1093 (transformation!563 (rule!1078 (h!8491 (t!28542 tokens!465))))) (toChars!1093 (transformation!563 (rule!1078 separatorToken!170)))) t!28606) tb!7691))

(declare-fun result!10568 () Bool)

(assert (= result!10568 result!10538))

(assert (=> d!46677 t!28606))

(assert (=> d!46687 t!28604))

(assert (=> b!185214 t!28606))

(declare-fun tp!87349 () Bool)

(declare-fun b_and!12763 () Bool)

(assert (=> b!185556 (= tp!87349 (and (=> t!28604 result!10566) (=> t!28606 result!10568) b_and!12763))))

(declare-fun b!185554 () Bool)

(declare-fun tp!87350 () Bool)

(declare-fun e!113426 () Bool)

(declare-fun e!113422 () Bool)

(assert (=> b!185554 (= e!113426 (and (inv!21 (value!20361 (h!8491 (t!28542 tokens!465)))) e!113422 tp!87350))))

(declare-fun e!113425 () Bool)

(assert (=> b!184694 (= tp!87245 e!113425)))

(declare-fun b!185553 () Bool)

(declare-fun tp!87352 () Bool)

(assert (=> b!185553 (= e!113425 (and (inv!3924 (h!8491 (t!28542 tokens!465))) e!113426 tp!87352))))

(declare-fun e!113423 () Bool)

(assert (=> b!185556 (= e!113423 (and tp!87351 tp!87349))))

(declare-fun b!185555 () Bool)

(declare-fun tp!87353 () Bool)

(assert (=> b!185555 (= e!113422 (and tp!87353 (inv!3920 (tag!741 (rule!1078 (h!8491 (t!28542 tokens!465))))) (inv!3923 (transformation!563 (rule!1078 (h!8491 (t!28542 tokens!465))))) e!113423))))

(assert (= b!185555 b!185556))

(assert (= b!185554 b!185555))

(assert (= b!185553 b!185554))

(assert (= (and b!184694 ((_ is Cons!3094) (t!28542 tokens!465))) b!185553))

(declare-fun m!189699 () Bool)

(assert (=> b!185554 m!189699))

(declare-fun m!189701 () Bool)

(assert (=> b!185553 m!189701))

(declare-fun m!189703 () Bool)

(assert (=> b!185555 m!189703))

(declare-fun m!189705 () Bool)

(assert (=> b!185555 m!189705))

(declare-fun b!185567 () Bool)

(declare-fun b_free!7257 () Bool)

(declare-fun b_next!7257 () Bool)

(assert (=> b!185567 (= b_free!7257 (not b_next!7257))))

(declare-fun tp!87365 () Bool)

(declare-fun b_and!12765 () Bool)

(assert (=> b!185567 (= tp!87365 b_and!12765)))

(declare-fun b_free!7259 () Bool)

(declare-fun b_next!7259 () Bool)

(assert (=> b!185567 (= b_free!7259 (not b_next!7259))))

(declare-fun tb!7693 () Bool)

(declare-fun t!28608 () Bool)

(assert (=> (and b!185567 (= (toChars!1093 (transformation!563 (h!8490 (t!28541 rules!1920)))) (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465))))) t!28608) tb!7693))

(declare-fun result!10572 () Bool)

(assert (= result!10572 result!10516))

(assert (=> b!184982 t!28608))

(declare-fun t!28610 () Bool)

(declare-fun tb!7695 () Bool)

(assert (=> (and b!185567 (= (toChars!1093 (transformation!563 (h!8490 (t!28541 rules!1920)))) (toChars!1093 (transformation!563 (rule!1078 separatorToken!170)))) t!28610) tb!7695))

(declare-fun result!10574 () Bool)

(assert (= result!10574 result!10538))

(assert (=> d!46677 t!28610))

(assert (=> d!46687 t!28608))

(assert (=> b!185214 t!28610))

(declare-fun b_and!12767 () Bool)

(declare-fun tp!87363 () Bool)

(assert (=> b!185567 (= tp!87363 (and (=> t!28608 result!10572) (=> t!28610 result!10574) b_and!12767))))

(declare-fun e!113439 () Bool)

(assert (=> b!185567 (= e!113439 (and tp!87365 tp!87363))))

(declare-fun tp!87362 () Bool)

(declare-fun e!113437 () Bool)

(declare-fun b!185566 () Bool)

(assert (=> b!185566 (= e!113437 (and tp!87362 (inv!3920 (tag!741 (h!8490 (t!28541 rules!1920)))) (inv!3923 (transformation!563 (h!8490 (t!28541 rules!1920)))) e!113439))))

(declare-fun b!185565 () Bool)

(declare-fun e!113436 () Bool)

(declare-fun tp!87364 () Bool)

(assert (=> b!185565 (= e!113436 (and e!113437 tp!87364))))

(assert (=> b!184692 (= tp!87248 e!113436)))

(assert (= b!185566 b!185567))

(assert (= b!185565 b!185566))

(assert (= (and b!184692 ((_ is Cons!3093) (t!28541 rules!1920))) b!185565))

(declare-fun m!189707 () Bool)

(assert (=> b!185566 m!189707))

(declare-fun m!189709 () Bool)

(assert (=> b!185566 m!189709))

(declare-fun b!185568 () Bool)

(declare-fun e!113440 () Bool)

(declare-fun tp!87366 () Bool)

(assert (=> b!185568 (= e!113440 (and tp_is_empty!1687 tp!87366))))

(assert (=> b!184718 (= tp!87239 e!113440)))

(assert (= (and b!184718 ((_ is Cons!3092) (originalCharacters!606 separatorToken!170))) b!185568))

(declare-fun b!185572 () Bool)

(declare-fun e!113441 () Bool)

(declare-fun tp!87370 () Bool)

(declare-fun tp!87367 () Bool)

(assert (=> b!185572 (= e!113441 (and tp!87370 tp!87367))))

(declare-fun b!185571 () Bool)

(declare-fun tp!87371 () Bool)

(assert (=> b!185571 (= e!113441 tp!87371)))

(declare-fun b!185570 () Bool)

(declare-fun tp!87369 () Bool)

(declare-fun tp!87368 () Bool)

(assert (=> b!185570 (= e!113441 (and tp!87369 tp!87368))))

(declare-fun b!185569 () Bool)

(assert (=> b!185569 (= e!113441 tp_is_empty!1687)))

(assert (=> b!184685 (= tp!87249 e!113441)))

(assert (= (and b!184685 ((_ is ElementMatch!787) (regex!563 (h!8490 rules!1920)))) b!185569))

(assert (= (and b!184685 ((_ is Concat!1373) (regex!563 (h!8490 rules!1920)))) b!185570))

(assert (= (and b!184685 ((_ is Star!787) (regex!563 (h!8490 rules!1920)))) b!185571))

(assert (= (and b!184685 ((_ is Union!787) (regex!563 (h!8490 rules!1920)))) b!185572))

(declare-fun b_lambda!4497 () Bool)

(assert (= b_lambda!4463 (or (and b!184715 b_free!7235) (and b!184716 b_free!7243 (= (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))) (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))))) (and b!185567 b_free!7259 (= (toChars!1093 (transformation!563 (h!8490 (t!28541 rules!1920)))) (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))))) (and b!184704 b_free!7239 (= (toChars!1093 (transformation!563 (h!8490 rules!1920))) (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))))) (and b!185556 b_free!7255 (= (toChars!1093 (transformation!563 (rule!1078 (h!8491 (t!28542 tokens!465))))) (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))))) b_lambda!4497)))

(declare-fun b_lambda!4499 () Bool)

(assert (= b_lambda!4475 (or (and b!184715 b_free!7235) (and b!184716 b_free!7243 (= (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))) (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))))) (and b!185567 b_free!7259 (= (toChars!1093 (transformation!563 (h!8490 (t!28541 rules!1920)))) (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))))) (and b!184704 b_free!7239 (= (toChars!1093 (transformation!563 (h!8490 rules!1920))) (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))))) (and b!185556 b_free!7255 (= (toChars!1093 (transformation!563 (rule!1078 (h!8491 (t!28542 tokens!465))))) (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))))) b_lambda!4499)))

(declare-fun b_lambda!4501 () Bool)

(assert (= b_lambda!4461 (or b!184691 b_lambda!4501)))

(declare-fun bs!18474 () Bool)

(declare-fun d!46827 () Bool)

(assert (= bs!18474 (and d!46827 b!184691)))

(assert (=> bs!18474 (= (dynLambda!1271 lambda!5538 (h!8491 tokens!465)) (rulesProduceIndividualToken!198 thiss!17480 rules!1920 (h!8491 tokens!465)))))

(assert (=> bs!18474 m!188395))

(assert (=> d!46611 d!46827))

(declare-fun b_lambda!4503 () Bool)

(assert (= b_lambda!4477 (or (and b!184715 b_free!7235 (= (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))) (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))))) (and b!185556 b_free!7255 (= (toChars!1093 (transformation!563 (rule!1078 (h!8491 (t!28542 tokens!465))))) (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))))) (and b!185567 b_free!7259 (= (toChars!1093 (transformation!563 (h!8490 (t!28541 rules!1920)))) (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))))) (and b!184716 b_free!7243) (and b!184704 b_free!7239 (= (toChars!1093 (transformation!563 (h!8490 rules!1920))) (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))))) b_lambda!4503)))

(declare-fun b_lambda!4505 () Bool)

(assert (= b_lambda!4473 (or (and b!184715 b_free!7235 (= (toChars!1093 (transformation!563 (rule!1078 (h!8491 tokens!465)))) (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))))) (and b!185556 b_free!7255 (= (toChars!1093 (transformation!563 (rule!1078 (h!8491 (t!28542 tokens!465))))) (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))))) (and b!185567 b_free!7259 (= (toChars!1093 (transformation!563 (h!8490 (t!28541 rules!1920)))) (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))))) (and b!184716 b_free!7243) (and b!184704 b_free!7239 (= (toChars!1093 (transformation!563 (h!8490 rules!1920))) (toChars!1093 (transformation!563 (rule!1078 separatorToken!170))))) b_lambda!4505)))

(declare-fun b_lambda!4507 () Bool)

(assert (= b_lambda!4465 (or b!184714 b_lambda!4507)))

(declare-fun bs!18475 () Bool)

(declare-fun d!46829 () Bool)

(assert (= bs!18475 (and d!46829 b!184714)))

(assert (=> bs!18475 (= (dynLambda!1271 lambda!5537 (h!8491 tokens!465)) (not (isSeparator!563 (rule!1078 (h!8491 tokens!465)))))))

(assert (=> b!184989 d!46829))

(declare-fun b_lambda!4509 () Bool)

(assert (= b_lambda!4457 (or b!184714 b_lambda!4509)))

(declare-fun bs!18476 () Bool)

(declare-fun d!46831 () Bool)

(assert (= bs!18476 (and d!46831 b!184714)))

(assert (=> bs!18476 (= (dynLambda!1271 lambda!5537 (h!8491 (t!28542 tokens!465))) (not (isSeparator!563 (rule!1078 (h!8491 (t!28542 tokens!465))))))))

(assert (=> b!184826 d!46831))

(check-sat (not b!185494) (not bm!8501) (not b!185510) (not d!46559) (not bm!8486) (not d!46815) (not b!185184) (not b!184817) (not bm!8492) (not bm!8489) (not d!46707) (not d!46705) (not d!46811) (not b!185531) (not b!185501) (not d!46703) (not b!185213) (not b!185214) (not d!46609) (not b!184805) (not b!185540) (not b!184971) (not d!46649) (not b!185466) (not b!185193) (not b!184988) (not b!185204) (not bs!18474) (not bm!8459) b_and!12745 (not b!185211) (not b!185364) (not b!185530) (not b!185354) (not b!185568) (not b!185199) (not d!46681) (not b!185515) (not d!46691) (not bm!8430) (not b!185468) (not b!185362) (not d!46677) (not b!185157) (not d!46687) (not b!185179) (not d!46641) (not d!46557) (not d!46583) (not d!46799) (not b_next!7241) (not b_next!7255) (not b!184970) (not tb!7675) (not b!185276) (not d!46643) (not b_next!7239) (not b_lambda!4499) (not bm!8460) (not d!46683) (not bm!8500) b_and!12743 (not b_next!7259) (not b!185206) (not tb!7657) (not b!184974) (not b!184827) (not b!185182) (not d!46563) (not d!46685) (not b!185153) (not b!185205) (not b!185055) (not bm!8458) (not b!185485) (not b_lambda!4503) (not d!46745) (not b!184892) (not b!185208) (not b!185565) (not b!184991) (not d!46777) (not b!185180) (not d!46813) b_and!12767 (not b!185489) (not b!185541) (not b!185555) (not b!185274) (not b!185166) (not bm!8424) (not b!184806) (not d!46679) b_and!12741 (not d!46751) (not b_next!7257) (not b!184895) (not b_lambda!4505) (not b!185503) (not b!185360) (not b!185154) (not b!184969) (not b!185484) (not b!184890) (not b!185060) (not b!185542) (not b!185192) (not d!46639) (not b!185189) b_and!12765 (not b!185353) (not b!184804) (not b_next!7253) (not bm!8493) (not b!184818) (not d!46807) (not b!185167) (not b!184891) (not b!185570) (not b!185449) (not b!185483) (not b!185358) b_and!12693 (not b!185448) (not b!185170) (not d!46693) b_and!12697 (not b!184755) (not b!185516) (not b!185356) (not d!46635) (not d!46611) (not d!46699) (not b!185275) (not b!185155) (not b!185209) (not b!184983) (not b!185164) (not b!184889) (not b!185194) (not bm!8494) (not bm!8488) (not d!46561) (not b!185553) (not b!184982) (not b!185336) (not bm!8498) (not b!185215) (not d!46773) (not b!185361) (not b!185207) (not b!185337) (not b_next!7233) (not d!46771) (not b!184933) (not b!185178) (not b!185064) (not b!184990) (not b!185572) (not b_next!7235) (not b!185528) (not b!184973) (not d!46795) (not d!46629) (not b!185171) b_and!12761 (not bm!8499) (not bm!8508) (not b!185355) (not b!184888) (not b_next!7237) (not b_lambda!4509) (not bm!8487) (not b!185210) (not b_lambda!4501) (not b_lambda!4497) (not d!46637) (not d!46809) (not b!185161) (not b!185059) (not d!46701) (not b!185529) (not b!185284) (not b!185058) (not d!46823) (not d!46749) tp_is_empty!1687 (not b!184992) (not bm!8491) (not b!185198) (not d!46585) (not b!185566) (not b!185273) (not b!184934) (not b!185006) (not d!46617) (not d!46613) (not b!184975) (not b!184924) (not b!185175) (not b!185571) (not b!185186) (not b!185554) (not b_lambda!4507) b_and!12701 (not b!185357) (not bm!8427) (not b!185005) (not b!185174) (not b!184932) (not b!185359) b_and!12763 (not b!184887) (not b!185490) (not d!46741) (not b!185159) (not b!184886) (not b!184926) (not b_next!7243) (not d!46619) (not b!184994) (not b!185467) (not b!185508) (not d!46797) (not b!184972) (not d!46709) (not b!185065) (not b!185538) (not b!184820) (not b!184935) (not b!184977))
(check-sat b_and!12745 b_and!12767 b_and!12741 (not b_next!7257) b_and!12765 (not b_next!7253) b_and!12693 b_and!12697 (not b_next!7233) (not b_next!7235) b_and!12761 (not b_next!7237) (not b_next!7243) (not b_next!7239) (not b_next!7241) (not b_next!7255) b_and!12743 (not b_next!7259) b_and!12701 b_and!12763)
