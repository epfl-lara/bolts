; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!105452 () Bool)

(assert start!105452)

(declare-fun b!1187840 () Bool)

(declare-fun b_free!28629 () Bool)

(declare-fun b_next!29333 () Bool)

(assert (=> b!1187840 (= b_free!28629 (not b_next!29333))))

(declare-fun tp!338849 () Bool)

(declare-fun b_and!81789 () Bool)

(assert (=> b!1187840 (= tp!338849 b_and!81789)))

(declare-fun b_free!28631 () Bool)

(declare-fun b_next!29335 () Bool)

(assert (=> b!1187840 (= b_free!28631 (not b_next!29335))))

(declare-fun tp!338855 () Bool)

(declare-fun b_and!81791 () Bool)

(assert (=> b!1187840 (= tp!338855 b_and!81791)))

(declare-fun b!1187835 () Bool)

(declare-fun b_free!28633 () Bool)

(declare-fun b_next!29337 () Bool)

(assert (=> b!1187835 (= b_free!28633 (not b_next!29337))))

(declare-fun tp!338848 () Bool)

(declare-fun b_and!81793 () Bool)

(assert (=> b!1187835 (= tp!338848 b_and!81793)))

(declare-fun b_free!28635 () Bool)

(declare-fun b_next!29339 () Bool)

(assert (=> b!1187835 (= b_free!28635 (not b_next!29339))))

(declare-fun tp!338853 () Bool)

(declare-fun b_and!81795 () Bool)

(assert (=> b!1187835 (= tp!338853 b_and!81795)))

(declare-fun e!763352 () Bool)

(declare-datatypes ((C!7034 0))(
  ( (C!7035 (val!3813 Int)) )
))
(declare-datatypes ((List!11957 0))(
  ( (Nil!11933) (Cons!11933 (h!17334 C!7034) (t!112039 List!11957)) )
))
(declare-datatypes ((IArray!7823 0))(
  ( (IArray!7824 (innerList!3969 List!11957)) )
))
(declare-datatypes ((Conc!3909 0))(
  ( (Node!3909 (left!10387 Conc!3909) (right!10717 Conc!3909) (csize!8048 Int) (cheight!4120 Int)) (Leaf!5984 (xs!6614 IArray!7823) (csize!8049 Int)) (Empty!3909) )
))
(declare-datatypes ((List!11958 0))(
  ( (Nil!11934) (Cons!11934 (h!17335 (_ BitVec 16)) (t!112040 List!11958)) )
))
(declare-datatypes ((BalanceConc!7840 0))(
  ( (BalanceConc!7841 (c!197321 Conc!3909)) )
))
(declare-datatypes ((TokenValue!2154 0))(
  ( (FloatLiteralValue!4308 (text!15523 List!11958)) (TokenValueExt!2153 (__x!8019 Int)) (Broken!10770 (value!67540 List!11958)) (Object!2177) (End!2154) (Def!2154) (Underscore!2154) (Match!2154) (Else!2154) (Error!2154) (Case!2154) (If!2154) (Extends!2154) (Abstract!2154) (Class!2154) (Val!2154) (DelimiterValue!4308 (del!2214 List!11958)) (KeywordValue!2160 (value!67541 List!11958)) (CommentValue!4308 (value!67542 List!11958)) (WhitespaceValue!4308 (value!67543 List!11958)) (IndentationValue!2154 (value!67544 List!11958)) (String!14439) (Int32!2154) (Broken!10771 (value!67545 List!11958)) (Boolean!2155) (Unit!18311) (OperatorValue!2157 (op!2214 List!11958)) (IdentifierValue!4308 (value!67546 List!11958)) (IdentifierValue!4309 (value!67547 List!11958)) (WhitespaceValue!4309 (value!67548 List!11958)) (True!4308) (False!4308) (Broken!10772 (value!67549 List!11958)) (Broken!10773 (value!67550 List!11958)) (True!4309) (RightBrace!2154) (RightBracket!2154) (Colon!2154) (Null!2154) (Comma!2154) (LeftBracket!2154) (False!4309) (LeftBrace!2154) (ImaginaryLiteralValue!2154 (text!15524 List!11958)) (StringLiteralValue!6462 (value!67551 List!11958)) (EOFValue!2154 (value!67552 List!11958)) (IdentValue!2154 (value!67553 List!11958)) (DelimiterValue!4309 (value!67554 List!11958)) (DedentValue!2154 (value!67555 List!11958)) (NewLineValue!2154 (value!67556 List!11958)) (IntegerValue!6462 (value!67557 (_ BitVec 32)) (text!15525 List!11958)) (IntegerValue!6463 (value!67558 Int) (text!15526 List!11958)) (Times!2154) (Or!2154) (Equal!2154) (Minus!2154) (Broken!10774 (value!67559 List!11958)) (And!2154) (Div!2154) (LessEqual!2154) (Mod!2154) (Concat!5512) (Not!2154) (Plus!2154) (SpaceValue!2154 (value!67560 List!11958)) (IntegerValue!6464 (value!67561 Int) (text!15527 List!11958)) (StringLiteralValue!6463 (text!15528 List!11958)) (FloatLiteralValue!4309 (text!15529 List!11958)) (BytesLiteralValue!2154 (value!67562 List!11958)) (CommentValue!4309 (value!67563 List!11958)) (StringLiteralValue!6464 (value!67564 List!11958)) (ErrorTokenValue!2154 (msg!2215 List!11958)) )
))
(declare-datatypes ((Regex!3358 0))(
  ( (ElementMatch!3358 (c!197322 C!7034)) (Concat!5513 (regOne!7228 Regex!3358) (regTwo!7228 Regex!3358)) (EmptyExpr!3358) (Star!3358 (reg!3687 Regex!3358)) (EmptyLang!3358) (Union!3358 (regOne!7229 Regex!3358) (regTwo!7229 Regex!3358)) )
))
(declare-datatypes ((String!14440 0))(
  ( (String!14441 (value!67565 String)) )
))
(declare-datatypes ((TokenValueInjection!4008 0))(
  ( (TokenValueInjection!4009 (toValue!3205 Int) (toChars!3064 Int)) )
))
(declare-datatypes ((Rule!3976 0))(
  ( (Rule!3977 (regex!2088 Regex!3358) (tag!2350 String!14440) (isSeparator!2088 Bool) (transformation!2088 TokenValueInjection!4008)) )
))
(declare-datatypes ((List!11959 0))(
  ( (Nil!11935) (Cons!11935 (h!17336 Rule!3976) (t!112041 List!11959)) )
))
(declare-fun rules!4386 () List!11959)

(declare-fun e!763354 () Bool)

(declare-fun b!1187834 () Bool)

(declare-fun tp!338847 () Bool)

(declare-fun inv!15765 (String!14440) Bool)

(declare-fun inv!15768 (TokenValueInjection!4008) Bool)

(assert (=> b!1187834 (= e!763352 (and tp!338847 (inv!15765 (tag!2350 (h!17336 rules!4386))) (inv!15768 (transformation!2088 (h!17336 rules!4386))) e!763354))))

(assert (=> b!1187835 (= e!763354 (and tp!338848 tp!338853))))

(declare-fun b!1187836 () Bool)

(declare-fun e!763350 () Bool)

(declare-fun tp!338854 () Bool)

(assert (=> b!1187836 (= e!763350 (and e!763352 tp!338854))))

(declare-fun res!536729 () Bool)

(declare-fun e!763349 () Bool)

(assert (=> start!105452 (=> (not res!536729) (not e!763349))))

(declare-datatypes ((LexerInterface!1783 0))(
  ( (LexerInterfaceExt!1780 (__x!8020 Int)) (Lexer!1781) )
))
(declare-fun thiss!27592 () LexerInterface!1783)

(assert (=> start!105452 (= res!536729 (is-Lexer!1781 thiss!27592))))

(assert (=> start!105452 e!763349))

(assert (=> start!105452 true))

(assert (=> start!105452 e!763350))

(declare-fun e!763351 () Bool)

(assert (=> start!105452 e!763351))

(declare-fun b!1187837 () Bool)

(declare-fun res!536727 () Bool)

(assert (=> b!1187837 (=> (not res!536727) (not e!763349))))

(declare-datatypes ((Token!3838 0))(
  ( (Token!3839 (value!67566 TokenValue!2154) (rule!3509 Rule!3976) (size!9412 Int) (originalCharacters!2642 List!11957)) )
))
(declare-datatypes ((List!11960 0))(
  ( (Nil!11936) (Cons!11936 (h!17337 Token!3838) (t!112042 List!11960)) )
))
(declare-fun l!6534 () List!11960)

(declare-fun i!1621 () Int)

(assert (=> b!1187837 (= res!536727 (and (not (is-Nil!11936 l!6534)) (> i!1621 0)))))

(declare-fun b!1187838 () Bool)

(declare-fun res!536732 () Bool)

(assert (=> b!1187838 (=> (not res!536732) (not e!763349))))

(declare-fun rulesInvariant!1657 (LexerInterface!1783 List!11959) Bool)

(assert (=> b!1187838 (= res!536732 (rulesInvariant!1657 thiss!27592 rules!4386))))

(declare-fun b!1187839 () Bool)

(declare-fun res!536731 () Bool)

(assert (=> b!1187839 (=> (not res!536731) (not e!763349))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!177 (LexerInterface!1783 List!11960 List!11959) Bool)

(assert (=> b!1187839 (= res!536731 (tokensListTwoByTwoPredicateSeparableList!177 thiss!27592 l!6534 rules!4386))))

(declare-fun e!763356 () Bool)

(assert (=> b!1187840 (= e!763356 (and tp!338849 tp!338855))))

(declare-fun tp!338852 () Bool)

(declare-fun e!763358 () Bool)

(declare-fun b!1187841 () Bool)

(declare-fun inv!15769 (Token!3838) Bool)

(assert (=> b!1187841 (= e!763351 (and (inv!15769 (h!17337 l!6534)) e!763358 tp!338852))))

(declare-fun b!1187842 () Bool)

(declare-fun res!536730 () Bool)

(assert (=> b!1187842 (=> (not res!536730) (not e!763349))))

(declare-fun rulesProduceEachTokenIndividuallyList!649 (LexerInterface!1783 List!11959 List!11960) Bool)

(assert (=> b!1187842 (= res!536730 (rulesProduceEachTokenIndividuallyList!649 thiss!27592 rules!4386 l!6534))))

(declare-fun tp!338851 () Bool)

(declare-fun b!1187843 () Bool)

(declare-fun e!763353 () Bool)

(declare-fun inv!21 (TokenValue!2154) Bool)

(assert (=> b!1187843 (= e!763358 (and (inv!21 (value!67566 (h!17337 l!6534))) e!763353 tp!338851))))

(declare-fun b!1187844 () Bool)

(assert (=> b!1187844 (= e!763349 (not (rulesProduceEachTokenIndividuallyList!649 thiss!27592 rules!4386 (t!112042 l!6534))))))

(declare-fun b!1187845 () Bool)

(declare-fun res!536728 () Bool)

(assert (=> b!1187845 (=> (not res!536728) (not e!763349))))

(declare-fun isEmpty!7181 (List!11959) Bool)

(assert (=> b!1187845 (= res!536728 (not (isEmpty!7181 rules!4386)))))

(declare-fun tp!338850 () Bool)

(declare-fun b!1187846 () Bool)

(assert (=> b!1187846 (= e!763353 (and tp!338850 (inv!15765 (tag!2350 (rule!3509 (h!17337 l!6534)))) (inv!15768 (transformation!2088 (rule!3509 (h!17337 l!6534)))) e!763356))))

(assert (= (and start!105452 res!536729) b!1187845))

(assert (= (and b!1187845 res!536728) b!1187838))

(assert (= (and b!1187838 res!536732) b!1187842))

(assert (= (and b!1187842 res!536730) b!1187839))

(assert (= (and b!1187839 res!536731) b!1187837))

(assert (= (and b!1187837 res!536727) b!1187844))

(assert (= b!1187834 b!1187835))

(assert (= b!1187836 b!1187834))

(assert (= (and start!105452 (is-Cons!11935 rules!4386)) b!1187836))

(assert (= b!1187846 b!1187840))

(assert (= b!1187843 b!1187846))

(assert (= b!1187841 b!1187843))

(assert (= (and start!105452 (is-Cons!11936 l!6534)) b!1187841))

(declare-fun m!1363507 () Bool)

(assert (=> b!1187845 m!1363507))

(declare-fun m!1363509 () Bool)

(assert (=> b!1187841 m!1363509))

(declare-fun m!1363511 () Bool)

(assert (=> b!1187842 m!1363511))

(declare-fun m!1363513 () Bool)

(assert (=> b!1187844 m!1363513))

(declare-fun m!1363515 () Bool)

(assert (=> b!1187843 m!1363515))

(declare-fun m!1363517 () Bool)

(assert (=> b!1187834 m!1363517))

(declare-fun m!1363519 () Bool)

(assert (=> b!1187834 m!1363519))

(declare-fun m!1363521 () Bool)

(assert (=> b!1187846 m!1363521))

(declare-fun m!1363523 () Bool)

(assert (=> b!1187846 m!1363523))

(declare-fun m!1363525 () Bool)

(assert (=> b!1187839 m!1363525))

(declare-fun m!1363527 () Bool)

(assert (=> b!1187838 m!1363527))

(push 1)

(assert (not b_next!29339))

(assert (not b!1187841))

(assert b_and!81795)

(assert (not b_next!29335))

(assert (not b_next!29333))

(assert (not b!1187846))

(assert (not b!1187842))

(assert (not b_next!29337))

(assert b_and!81793)

(assert (not b!1187844))

(assert b_and!81791)

(assert (not b!1187838))

(assert (not b!1187843))

(assert b_and!81789)

(assert (not b!1187834))

(assert (not b!1187845))

(assert (not b!1187839))

(assert (not b!1187836))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!29339))

(assert b_and!81791)

(assert b_and!81795)

(assert (not b_next!29335))

(assert (not b_next!29333))

(assert b_and!81789)

(assert (not b_next!29337))

(assert b_and!81793)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!339707 () Bool)

(declare-fun res!536757 () Bool)

(declare-fun e!763394 () Bool)

(assert (=> d!339707 (=> (not res!536757) (not e!763394))))

(declare-fun rulesValid!745 (LexerInterface!1783 List!11959) Bool)

(assert (=> d!339707 (= res!536757 (rulesValid!745 thiss!27592 rules!4386))))

(assert (=> d!339707 (= (rulesInvariant!1657 thiss!27592 rules!4386) e!763394)))

(declare-fun b!1187888 () Bool)

(declare-datatypes ((List!11965 0))(
  ( (Nil!11941) (Cons!11941 (h!17342 String!14440) (t!112059 List!11965)) )
))
(declare-fun noDuplicateTag!745 (LexerInterface!1783 List!11959 List!11965) Bool)

(assert (=> b!1187888 (= e!763394 (noDuplicateTag!745 thiss!27592 rules!4386 Nil!11941))))

(assert (= (and d!339707 res!536757) b!1187888))

(declare-fun m!1363551 () Bool)

(assert (=> d!339707 m!1363551))

(declare-fun m!1363553 () Bool)

(assert (=> b!1187888 m!1363553))

(assert (=> b!1187838 d!339707))

(declare-fun b!1187899 () Bool)

(declare-fun e!763401 () Bool)

(declare-fun e!763403 () Bool)

(assert (=> b!1187899 (= e!763401 e!763403)))

(declare-fun c!197329 () Bool)

(assert (=> b!1187899 (= c!197329 (is-IntegerValue!6463 (value!67566 (h!17337 l!6534))))))

(declare-fun b!1187900 () Bool)

(declare-fun inv!17 (TokenValue!2154) Bool)

(assert (=> b!1187900 (= e!763403 (inv!17 (value!67566 (h!17337 l!6534))))))

(declare-fun b!1187901 () Bool)

(declare-fun inv!16 (TokenValue!2154) Bool)

(assert (=> b!1187901 (= e!763401 (inv!16 (value!67566 (h!17337 l!6534))))))

(declare-fun b!1187902 () Bool)

(declare-fun res!536760 () Bool)

(declare-fun e!763402 () Bool)

(assert (=> b!1187902 (=> res!536760 e!763402)))

(assert (=> b!1187902 (= res!536760 (not (is-IntegerValue!6464 (value!67566 (h!17337 l!6534)))))))

(assert (=> b!1187902 (= e!763403 e!763402)))

(declare-fun d!339709 () Bool)

(declare-fun c!197330 () Bool)

(assert (=> d!339709 (= c!197330 (is-IntegerValue!6462 (value!67566 (h!17337 l!6534))))))

(assert (=> d!339709 (= (inv!21 (value!67566 (h!17337 l!6534))) e!763401)))

(declare-fun b!1187903 () Bool)

(declare-fun inv!15 (TokenValue!2154) Bool)

(assert (=> b!1187903 (= e!763402 (inv!15 (value!67566 (h!17337 l!6534))))))

(assert (= (and d!339709 c!197330) b!1187901))

(assert (= (and d!339709 (not c!197330)) b!1187899))

(assert (= (and b!1187899 c!197329) b!1187900))

(assert (= (and b!1187899 (not c!197329)) b!1187902))

(assert (= (and b!1187902 (not res!536760)) b!1187903))

(declare-fun m!1363555 () Bool)

(assert (=> b!1187900 m!1363555))

(declare-fun m!1363557 () Bool)

(assert (=> b!1187901 m!1363557))

(declare-fun m!1363559 () Bool)

(assert (=> b!1187903 m!1363559))

(assert (=> b!1187843 d!339709))

(declare-fun d!339713 () Bool)

(declare-fun res!536765 () Bool)

(declare-fun e!763406 () Bool)

(assert (=> d!339713 (=> (not res!536765) (not e!763406))))

(declare-fun isEmpty!7183 (List!11957) Bool)

(assert (=> d!339713 (= res!536765 (not (isEmpty!7183 (originalCharacters!2642 (h!17337 l!6534)))))))

(assert (=> d!339713 (= (inv!15769 (h!17337 l!6534)) e!763406)))

(declare-fun b!1187908 () Bool)

(declare-fun res!536766 () Bool)

(assert (=> b!1187908 (=> (not res!536766) (not e!763406))))

(declare-fun list!4383 (BalanceConc!7840) List!11957)

(declare-fun dynLambda!5341 (Int TokenValue!2154) BalanceConc!7840)

(assert (=> b!1187908 (= res!536766 (= (originalCharacters!2642 (h!17337 l!6534)) (list!4383 (dynLambda!5341 (toChars!3064 (transformation!2088 (rule!3509 (h!17337 l!6534)))) (value!67566 (h!17337 l!6534))))))))

(declare-fun b!1187909 () Bool)

(declare-fun size!9414 (List!11957) Int)

(assert (=> b!1187909 (= e!763406 (= (size!9412 (h!17337 l!6534)) (size!9414 (originalCharacters!2642 (h!17337 l!6534)))))))

(assert (= (and d!339713 res!536765) b!1187908))

(assert (= (and b!1187908 res!536766) b!1187909))

(declare-fun b_lambda!35671 () Bool)

(assert (=> (not b_lambda!35671) (not b!1187908)))

(declare-fun t!112048 () Bool)

(declare-fun tb!66397 () Bool)

(assert (=> (and b!1187840 (= (toChars!3064 (transformation!2088 (rule!3509 (h!17337 l!6534)))) (toChars!3064 (transformation!2088 (rule!3509 (h!17337 l!6534))))) t!112048) tb!66397))

(declare-fun b!1187914 () Bool)

(declare-fun e!763409 () Bool)

(declare-fun tp!338885 () Bool)

(declare-fun inv!15772 (Conc!3909) Bool)

(assert (=> b!1187914 (= e!763409 (and (inv!15772 (c!197321 (dynLambda!5341 (toChars!3064 (transformation!2088 (rule!3509 (h!17337 l!6534)))) (value!67566 (h!17337 l!6534))))) tp!338885))))

(declare-fun result!79802 () Bool)

(declare-fun inv!15773 (BalanceConc!7840) Bool)

(assert (=> tb!66397 (= result!79802 (and (inv!15773 (dynLambda!5341 (toChars!3064 (transformation!2088 (rule!3509 (h!17337 l!6534)))) (value!67566 (h!17337 l!6534)))) e!763409))))

(assert (= tb!66397 b!1187914))

(declare-fun m!1363561 () Bool)

(assert (=> b!1187914 m!1363561))

(declare-fun m!1363563 () Bool)

(assert (=> tb!66397 m!1363563))

(assert (=> b!1187908 t!112048))

(declare-fun b_and!81805 () Bool)

(assert (= b_and!81791 (and (=> t!112048 result!79802) b_and!81805)))

(declare-fun t!112050 () Bool)

(declare-fun tb!66399 () Bool)

(assert (=> (and b!1187835 (= (toChars!3064 (transformation!2088 (h!17336 rules!4386))) (toChars!3064 (transformation!2088 (rule!3509 (h!17337 l!6534))))) t!112050) tb!66399))

(declare-fun result!79806 () Bool)

(assert (= result!79806 result!79802))

(assert (=> b!1187908 t!112050))

(declare-fun b_and!81807 () Bool)

(assert (= b_and!81795 (and (=> t!112050 result!79806) b_and!81807)))

(declare-fun m!1363565 () Bool)

(assert (=> d!339713 m!1363565))

(declare-fun m!1363567 () Bool)

(assert (=> b!1187908 m!1363567))

(assert (=> b!1187908 m!1363567))

(declare-fun m!1363569 () Bool)

(assert (=> b!1187908 m!1363569))

(declare-fun m!1363571 () Bool)

(assert (=> b!1187909 m!1363571))

(assert (=> b!1187841 d!339713))

(declare-fun b!1187935 () Bool)

(declare-fun e!763428 () Bool)

(assert (=> b!1187935 (= e!763428 true)))

(declare-fun b!1187934 () Bool)

(declare-fun e!763427 () Bool)

(assert (=> b!1187934 (= e!763427 e!763428)))

(declare-fun b!1187933 () Bool)

(declare-fun e!763426 () Bool)

(assert (=> b!1187933 (= e!763426 e!763427)))

(declare-fun d!339715 () Bool)

(assert (=> d!339715 e!763426))

(assert (= b!1187934 b!1187935))

(assert (= b!1187933 b!1187934))

(assert (= (and d!339715 (is-Cons!11935 rules!4386)) b!1187933))

(declare-fun order!7439 () Int)

(declare-fun order!7441 () Int)

(declare-fun lambda!48960 () Int)

(declare-fun dynLambda!5342 (Int Int) Int)

(declare-fun dynLambda!5343 (Int Int) Int)

(assert (=> b!1187935 (< (dynLambda!5342 order!7439 (toValue!3205 (transformation!2088 (h!17336 rules!4386)))) (dynLambda!5343 order!7441 lambda!48960))))

(declare-fun order!7443 () Int)

(declare-fun dynLambda!5344 (Int Int) Int)

(assert (=> b!1187935 (< (dynLambda!5344 order!7443 (toChars!3064 (transformation!2088 (h!17336 rules!4386)))) (dynLambda!5343 order!7441 lambda!48960))))

(assert (=> d!339715 true))

(declare-fun lt!408515 () Bool)

(declare-fun forall!3159 (List!11960 Int) Bool)

(assert (=> d!339715 (= lt!408515 (forall!3159 l!6534 lambda!48960))))

(declare-fun e!763419 () Bool)

(assert (=> d!339715 (= lt!408515 e!763419)))

(declare-fun res!536776 () Bool)

(assert (=> d!339715 (=> res!536776 e!763419)))

(assert (=> d!339715 (= res!536776 (not (is-Cons!11936 l!6534)))))

(assert (=> d!339715 (not (isEmpty!7181 rules!4386))))

(assert (=> d!339715 (= (rulesProduceEachTokenIndividuallyList!649 thiss!27592 rules!4386 l!6534) lt!408515)))

(declare-fun b!1187923 () Bool)

(declare-fun e!763418 () Bool)

(assert (=> b!1187923 (= e!763419 e!763418)))

(declare-fun res!536775 () Bool)

(assert (=> b!1187923 (=> (not res!536775) (not e!763418))))

(declare-fun rulesProduceIndividualToken!810 (LexerInterface!1783 List!11959 Token!3838) Bool)

(assert (=> b!1187923 (= res!536775 (rulesProduceIndividualToken!810 thiss!27592 rules!4386 (h!17337 l!6534)))))

(declare-fun b!1187924 () Bool)

(assert (=> b!1187924 (= e!763418 (rulesProduceEachTokenIndividuallyList!649 thiss!27592 rules!4386 (t!112042 l!6534)))))

(assert (= (and d!339715 (not res!536776)) b!1187923))

(assert (= (and b!1187923 res!536775) b!1187924))

(declare-fun m!1363573 () Bool)

(assert (=> d!339715 m!1363573))

(assert (=> d!339715 m!1363507))

(declare-fun m!1363575 () Bool)

(assert (=> b!1187923 m!1363575))

(assert (=> b!1187924 m!1363513))

(assert (=> b!1187842 d!339715))

(declare-fun d!339717 () Bool)

(assert (=> d!339717 (= (isEmpty!7181 rules!4386) (is-Nil!11935 rules!4386))))

(assert (=> b!1187845 d!339717))

(declare-fun d!339719 () Bool)

(assert (=> d!339719 (= (inv!15765 (tag!2350 (rule!3509 (h!17337 l!6534)))) (= (mod (str.len (value!67565 (tag!2350 (rule!3509 (h!17337 l!6534))))) 2) 0))))

(assert (=> b!1187846 d!339719))

(declare-fun d!339721 () Bool)

(declare-fun res!536779 () Bool)

(declare-fun e!763431 () Bool)

(assert (=> d!339721 (=> (not res!536779) (not e!763431))))

(declare-fun semiInverseModEq!757 (Int Int) Bool)

(assert (=> d!339721 (= res!536779 (semiInverseModEq!757 (toChars!3064 (transformation!2088 (rule!3509 (h!17337 l!6534)))) (toValue!3205 (transformation!2088 (rule!3509 (h!17337 l!6534))))))))

(assert (=> d!339721 (= (inv!15768 (transformation!2088 (rule!3509 (h!17337 l!6534)))) e!763431)))

(declare-fun b!1187940 () Bool)

(declare-fun equivClasses!724 (Int Int) Bool)

(assert (=> b!1187940 (= e!763431 (equivClasses!724 (toChars!3064 (transformation!2088 (rule!3509 (h!17337 l!6534)))) (toValue!3205 (transformation!2088 (rule!3509 (h!17337 l!6534))))))))

(assert (= (and d!339721 res!536779) b!1187940))

(declare-fun m!1363577 () Bool)

(assert (=> d!339721 m!1363577))

(declare-fun m!1363579 () Bool)

(assert (=> b!1187940 m!1363579))

(assert (=> b!1187846 d!339721))

(declare-fun bs!287687 () Bool)

(declare-fun d!339723 () Bool)

(assert (= bs!287687 (and d!339723 d!339715)))

(declare-fun lambda!48961 () Int)

(assert (=> bs!287687 (= lambda!48961 lambda!48960)))

(declare-fun b!1187945 () Bool)

(declare-fun e!763436 () Bool)

(assert (=> b!1187945 (= e!763436 true)))

(declare-fun b!1187944 () Bool)

(declare-fun e!763435 () Bool)

(assert (=> b!1187944 (= e!763435 e!763436)))

(declare-fun b!1187943 () Bool)

(declare-fun e!763434 () Bool)

(assert (=> b!1187943 (= e!763434 e!763435)))

(assert (=> d!339723 e!763434))

(assert (= b!1187944 b!1187945))

(assert (= b!1187943 b!1187944))

(assert (= (and d!339723 (is-Cons!11935 rules!4386)) b!1187943))

(assert (=> b!1187945 (< (dynLambda!5342 order!7439 (toValue!3205 (transformation!2088 (h!17336 rules!4386)))) (dynLambda!5343 order!7441 lambda!48961))))

(assert (=> b!1187945 (< (dynLambda!5344 order!7443 (toChars!3064 (transformation!2088 (h!17336 rules!4386)))) (dynLambda!5343 order!7441 lambda!48961))))

(assert (=> d!339723 true))

(declare-fun lt!408516 () Bool)

(assert (=> d!339723 (= lt!408516 (forall!3159 (t!112042 l!6534) lambda!48961))))

(declare-fun e!763433 () Bool)

(assert (=> d!339723 (= lt!408516 e!763433)))

(declare-fun res!536781 () Bool)

(assert (=> d!339723 (=> res!536781 e!763433)))

(assert (=> d!339723 (= res!536781 (not (is-Cons!11936 (t!112042 l!6534))))))

(assert (=> d!339723 (not (isEmpty!7181 rules!4386))))

(assert (=> d!339723 (= (rulesProduceEachTokenIndividuallyList!649 thiss!27592 rules!4386 (t!112042 l!6534)) lt!408516)))

(declare-fun b!1187941 () Bool)

(declare-fun e!763432 () Bool)

(assert (=> b!1187941 (= e!763433 e!763432)))

(declare-fun res!536780 () Bool)

(assert (=> b!1187941 (=> (not res!536780) (not e!763432))))

(assert (=> b!1187941 (= res!536780 (rulesProduceIndividualToken!810 thiss!27592 rules!4386 (h!17337 (t!112042 l!6534))))))

(declare-fun b!1187942 () Bool)

(assert (=> b!1187942 (= e!763432 (rulesProduceEachTokenIndividuallyList!649 thiss!27592 rules!4386 (t!112042 (t!112042 l!6534))))))

(assert (= (and d!339723 (not res!536781)) b!1187941))

(assert (= (and b!1187941 res!536780) b!1187942))

(declare-fun m!1363581 () Bool)

(assert (=> d!339723 m!1363581))

(assert (=> d!339723 m!1363507))

(declare-fun m!1363583 () Bool)

(assert (=> b!1187941 m!1363583))

(declare-fun m!1363585 () Bool)

(assert (=> b!1187942 m!1363585))

(assert (=> b!1187844 d!339723))

(declare-fun d!339725 () Bool)

(assert (=> d!339725 (= (inv!15765 (tag!2350 (h!17336 rules!4386))) (= (mod (str.len (value!67565 (tag!2350 (h!17336 rules!4386)))) 2) 0))))

(assert (=> b!1187834 d!339725))

(declare-fun d!339727 () Bool)

(declare-fun res!536782 () Bool)

(declare-fun e!763437 () Bool)

(assert (=> d!339727 (=> (not res!536782) (not e!763437))))

(assert (=> d!339727 (= res!536782 (semiInverseModEq!757 (toChars!3064 (transformation!2088 (h!17336 rules!4386))) (toValue!3205 (transformation!2088 (h!17336 rules!4386)))))))

(assert (=> d!339727 (= (inv!15768 (transformation!2088 (h!17336 rules!4386))) e!763437)))

(declare-fun b!1187946 () Bool)

(assert (=> b!1187946 (= e!763437 (equivClasses!724 (toChars!3064 (transformation!2088 (h!17336 rules!4386))) (toValue!3205 (transformation!2088 (h!17336 rules!4386)))))))

(assert (= (and d!339727 res!536782) b!1187946))

(declare-fun m!1363587 () Bool)

(assert (=> d!339727 m!1363587))

(declare-fun m!1363589 () Bool)

(assert (=> b!1187946 m!1363589))

(assert (=> b!1187834 d!339727))

(declare-fun d!339729 () Bool)

(declare-fun res!536787 () Bool)

(declare-fun e!763443 () Bool)

(assert (=> d!339729 (=> res!536787 e!763443)))

(assert (=> d!339729 (= res!536787 (or (not (is-Cons!11936 l!6534)) (not (is-Cons!11936 (t!112042 l!6534)))))))

(assert (=> d!339729 (= (tokensListTwoByTwoPredicateSeparableList!177 thiss!27592 l!6534 rules!4386) e!763443)))

(declare-fun b!1187951 () Bool)

(declare-fun e!763442 () Bool)

(assert (=> b!1187951 (= e!763443 e!763442)))

(declare-fun res!536788 () Bool)

(assert (=> b!1187951 (=> (not res!536788) (not e!763442))))

(declare-fun separableTokensPredicate!168 (LexerInterface!1783 Token!3838 Token!3838 List!11959) Bool)

(assert (=> b!1187951 (= res!536788 (separableTokensPredicate!168 thiss!27592 (h!17337 l!6534) (h!17337 (t!112042 l!6534)) rules!4386))))

(declare-datatypes ((Unit!18313 0))(
  ( (Unit!18314) )
))
(declare-fun lt!408533 () Unit!18313)

(declare-fun Unit!18315 () Unit!18313)

(assert (=> b!1187951 (= lt!408533 Unit!18315)))

(declare-fun size!9415 (BalanceConc!7840) Int)

(declare-fun charsOf!1106 (Token!3838) BalanceConc!7840)

(assert (=> b!1187951 (> (size!9415 (charsOf!1106 (h!17337 (t!112042 l!6534)))) 0)))

(declare-fun lt!408535 () Unit!18313)

(declare-fun Unit!18316 () Unit!18313)

(assert (=> b!1187951 (= lt!408535 Unit!18316)))

(assert (=> b!1187951 (rulesProduceIndividualToken!810 thiss!27592 rules!4386 (h!17337 (t!112042 l!6534)))))

(declare-fun lt!408536 () Unit!18313)

(declare-fun Unit!18317 () Unit!18313)

(assert (=> b!1187951 (= lt!408536 Unit!18317)))

(assert (=> b!1187951 (rulesProduceIndividualToken!810 thiss!27592 rules!4386 (h!17337 l!6534))))

(declare-fun lt!408531 () Unit!18313)

(declare-fun lt!408537 () Unit!18313)

(assert (=> b!1187951 (= lt!408531 lt!408537)))

(assert (=> b!1187951 (rulesProduceIndividualToken!810 thiss!27592 rules!4386 (h!17337 (t!112042 l!6534)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!327 (LexerInterface!1783 List!11959 List!11960 Token!3838) Unit!18313)

(assert (=> b!1187951 (= lt!408537 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!327 thiss!27592 rules!4386 l!6534 (h!17337 (t!112042 l!6534))))))

(declare-fun lt!408534 () Unit!18313)

(declare-fun lt!408532 () Unit!18313)

(assert (=> b!1187951 (= lt!408534 lt!408532)))

(assert (=> b!1187951 (rulesProduceIndividualToken!810 thiss!27592 rules!4386 (h!17337 l!6534))))

(assert (=> b!1187951 (= lt!408532 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!327 thiss!27592 rules!4386 l!6534 (h!17337 l!6534)))))

(declare-fun b!1187952 () Bool)

(assert (=> b!1187952 (= e!763442 (tokensListTwoByTwoPredicateSeparableList!177 thiss!27592 (Cons!11936 (h!17337 (t!112042 l!6534)) (t!112042 (t!112042 l!6534))) rules!4386))))

(assert (= (and d!339729 (not res!536787)) b!1187951))

(assert (= (and b!1187951 res!536788) b!1187952))

(assert (=> b!1187951 m!1363575))

(assert (=> b!1187951 m!1363583))

(declare-fun m!1363591 () Bool)

(assert (=> b!1187951 m!1363591))

(declare-fun m!1363593 () Bool)

(assert (=> b!1187951 m!1363593))

(declare-fun m!1363595 () Bool)

(assert (=> b!1187951 m!1363595))

(assert (=> b!1187951 m!1363595))

(declare-fun m!1363597 () Bool)

(assert (=> b!1187951 m!1363597))

(declare-fun m!1363599 () Bool)

(assert (=> b!1187951 m!1363599))

(declare-fun m!1363601 () Bool)

(assert (=> b!1187952 m!1363601))

(assert (=> b!1187839 d!339729))

(declare-fun b!1187957 () Bool)

(declare-fun e!763446 () Bool)

(declare-fun tp_is_empty!5845 () Bool)

(declare-fun tp!338888 () Bool)

(assert (=> b!1187957 (= e!763446 (and tp_is_empty!5845 tp!338888))))

(assert (=> b!1187843 (= tp!338851 e!763446)))

(assert (= (and b!1187843 (is-Cons!11933 (originalCharacters!2642 (h!17337 l!6534)))) b!1187957))

(declare-fun b!1187968 () Bool)

(declare-fun b_free!28645 () Bool)

(declare-fun b_next!29349 () Bool)

(assert (=> b!1187968 (= b_free!28645 (not b_next!29349))))

(declare-fun tp!338899 () Bool)

(declare-fun b_and!81809 () Bool)

(assert (=> b!1187968 (= tp!338899 b_and!81809)))

(declare-fun b_free!28647 () Bool)

(declare-fun b_next!29351 () Bool)

(assert (=> b!1187968 (= b_free!28647 (not b_next!29351))))

(declare-fun t!112056 () Bool)

(declare-fun tb!66401 () Bool)

(assert (=> (and b!1187968 (= (toChars!3064 (transformation!2088 (h!17336 (t!112041 rules!4386)))) (toChars!3064 (transformation!2088 (rule!3509 (h!17337 l!6534))))) t!112056) tb!66401))

(declare-fun result!79812 () Bool)

(assert (= result!79812 result!79802))

(assert (=> b!1187908 t!112056))

(declare-fun tp!338897 () Bool)

(declare-fun b_and!81811 () Bool)

(assert (=> b!1187968 (= tp!338897 (and (=> t!112056 result!79812) b_and!81811))))

(declare-fun e!763455 () Bool)

(assert (=> b!1187968 (= e!763455 (and tp!338899 tp!338897))))

(declare-fun e!763457 () Bool)

(declare-fun tp!338900 () Bool)

(declare-fun b!1187967 () Bool)

(assert (=> b!1187967 (= e!763457 (and tp!338900 (inv!15765 (tag!2350 (h!17336 (t!112041 rules!4386)))) (inv!15768 (transformation!2088 (h!17336 (t!112041 rules!4386)))) e!763455))))

(declare-fun b!1187966 () Bool)

(declare-fun e!763458 () Bool)

(declare-fun tp!338898 () Bool)

(assert (=> b!1187966 (= e!763458 (and e!763457 tp!338898))))

(assert (=> b!1187836 (= tp!338854 e!763458)))

(assert (= b!1187967 b!1187968))

(assert (= b!1187966 b!1187967))

(assert (= (and b!1187836 (is-Cons!11935 (t!112041 rules!4386))) b!1187966))

(declare-fun m!1363603 () Bool)

(assert (=> b!1187967 m!1363603))

(declare-fun m!1363605 () Bool)

(assert (=> b!1187967 m!1363605))

(declare-fun b!1187982 () Bool)

(declare-fun b_free!28649 () Bool)

(declare-fun b_next!29353 () Bool)

(assert (=> b!1187982 (= b_free!28649 (not b_next!29353))))

(declare-fun tp!338911 () Bool)

(declare-fun b_and!81813 () Bool)

(assert (=> b!1187982 (= tp!338911 b_and!81813)))

(declare-fun b_free!28651 () Bool)

(declare-fun b_next!29355 () Bool)

(assert (=> b!1187982 (= b_free!28651 (not b_next!29355))))

(declare-fun t!112058 () Bool)

(declare-fun tb!66403 () Bool)

(assert (=> (and b!1187982 (= (toChars!3064 (transformation!2088 (rule!3509 (h!17337 (t!112042 l!6534))))) (toChars!3064 (transformation!2088 (rule!3509 (h!17337 l!6534))))) t!112058) tb!66403))

(declare-fun result!79816 () Bool)

(assert (= result!79816 result!79802))

(assert (=> b!1187908 t!112058))

(declare-fun b_and!81815 () Bool)

(declare-fun tp!338913 () Bool)

(assert (=> b!1187982 (= tp!338913 (and (=> t!112058 result!79816) b_and!81815))))

(declare-fun e!763471 () Bool)

(assert (=> b!1187841 (= tp!338852 e!763471)))

(declare-fun tp!338912 () Bool)

(declare-fun e!763476 () Bool)

(declare-fun e!763472 () Bool)

(declare-fun b!1187981 () Bool)

(assert (=> b!1187981 (= e!763476 (and tp!338912 (inv!15765 (tag!2350 (rule!3509 (h!17337 (t!112042 l!6534))))) (inv!15768 (transformation!2088 (rule!3509 (h!17337 (t!112042 l!6534))))) e!763472))))

(declare-fun tp!338914 () Bool)

(declare-fun b!1187979 () Bool)

(declare-fun e!763473 () Bool)

(assert (=> b!1187979 (= e!763471 (and (inv!15769 (h!17337 (t!112042 l!6534))) e!763473 tp!338914))))

(declare-fun b!1187980 () Bool)

(declare-fun tp!338915 () Bool)

(assert (=> b!1187980 (= e!763473 (and (inv!21 (value!67566 (h!17337 (t!112042 l!6534)))) e!763476 tp!338915))))

(assert (=> b!1187982 (= e!763472 (and tp!338911 tp!338913))))

(assert (= b!1187981 b!1187982))

(assert (= b!1187980 b!1187981))

(assert (= b!1187979 b!1187980))

(assert (= (and b!1187841 (is-Cons!11936 (t!112042 l!6534))) b!1187979))

(declare-fun m!1363607 () Bool)

(assert (=> b!1187981 m!1363607))

(declare-fun m!1363609 () Bool)

(assert (=> b!1187981 m!1363609))

(declare-fun m!1363611 () Bool)

(assert (=> b!1187979 m!1363611))

(declare-fun m!1363613 () Bool)

(assert (=> b!1187980 m!1363613))

(declare-fun b!1187993 () Bool)

(declare-fun e!763479 () Bool)

(assert (=> b!1187993 (= e!763479 tp_is_empty!5845)))

(declare-fun b!1187996 () Bool)

(declare-fun tp!338927 () Bool)

(declare-fun tp!338928 () Bool)

(assert (=> b!1187996 (= e!763479 (and tp!338927 tp!338928))))

(assert (=> b!1187846 (= tp!338850 e!763479)))

(declare-fun b!1187994 () Bool)

(declare-fun tp!338929 () Bool)

(declare-fun tp!338926 () Bool)

(assert (=> b!1187994 (= e!763479 (and tp!338929 tp!338926))))

(declare-fun b!1187995 () Bool)

(declare-fun tp!338930 () Bool)

(assert (=> b!1187995 (= e!763479 tp!338930)))

(assert (= (and b!1187846 (is-ElementMatch!3358 (regex!2088 (rule!3509 (h!17337 l!6534))))) b!1187993))

(assert (= (and b!1187846 (is-Concat!5513 (regex!2088 (rule!3509 (h!17337 l!6534))))) b!1187994))

(assert (= (and b!1187846 (is-Star!3358 (regex!2088 (rule!3509 (h!17337 l!6534))))) b!1187995))

(assert (= (and b!1187846 (is-Union!3358 (regex!2088 (rule!3509 (h!17337 l!6534))))) b!1187996))

(declare-fun b!1187997 () Bool)

(declare-fun e!763480 () Bool)

(assert (=> b!1187997 (= e!763480 tp_is_empty!5845)))

(declare-fun b!1188000 () Bool)

(declare-fun tp!338932 () Bool)

(declare-fun tp!338933 () Bool)

(assert (=> b!1188000 (= e!763480 (and tp!338932 tp!338933))))

(assert (=> b!1187834 (= tp!338847 e!763480)))

(declare-fun b!1187998 () Bool)

(declare-fun tp!338934 () Bool)

(declare-fun tp!338931 () Bool)

(assert (=> b!1187998 (= e!763480 (and tp!338934 tp!338931))))

(declare-fun b!1187999 () Bool)

(declare-fun tp!338935 () Bool)

(assert (=> b!1187999 (= e!763480 tp!338935)))

(assert (= (and b!1187834 (is-ElementMatch!3358 (regex!2088 (h!17336 rules!4386)))) b!1187997))

(assert (= (and b!1187834 (is-Concat!5513 (regex!2088 (h!17336 rules!4386)))) b!1187998))

(assert (= (and b!1187834 (is-Star!3358 (regex!2088 (h!17336 rules!4386)))) b!1187999))

(assert (= (and b!1187834 (is-Union!3358 (regex!2088 (h!17336 rules!4386)))) b!1188000))

(declare-fun b_lambda!35673 () Bool)

(assert (= b_lambda!35671 (or (and b!1187840 b_free!28631) (and b!1187835 b_free!28635 (= (toChars!3064 (transformation!2088 (h!17336 rules!4386))) (toChars!3064 (transformation!2088 (rule!3509 (h!17337 l!6534)))))) (and b!1187968 b_free!28647 (= (toChars!3064 (transformation!2088 (h!17336 (t!112041 rules!4386)))) (toChars!3064 (transformation!2088 (rule!3509 (h!17337 l!6534)))))) (and b!1187982 b_free!28651 (= (toChars!3064 (transformation!2088 (rule!3509 (h!17337 (t!112042 l!6534))))) (toChars!3064 (transformation!2088 (rule!3509 (h!17337 l!6534)))))) b_lambda!35673)))

(push 1)

(assert (not b!1187967))

(assert (not b!1187888))

(assert (not b!1187924))

(assert (not d!339727))

(assert (not b!1187998))

(assert (not b_next!29333))

(assert (not b!1187994))

(assert (not b!1187903))

(assert (not d!339715))

(assert (not b!1187908))

(assert (not b!1187981))

(assert b_and!81811)

(assert (not b!1187941))

(assert b_and!81815)

(assert (not b_lambda!35673))

(assert (not b!1187909))

(assert (not b_next!29337))

(assert (not d!339713))

(assert b_and!81793)

(assert (not b!1187923))

(assert (not b!1187995))

(assert (not b!1188000))

(assert (not b_next!29339))

(assert (not d!339707))

(assert (not b_next!29351))

(assert (not b!1187952))

(assert (not b_next!29355))

(assert (not b_next!29349))

(assert (not b!1187933))

(assert tp_is_empty!5845)

(assert (not b!1187914))

(assert (not d!339721))

(assert (not b!1187957))

(assert (not b!1187900))

(assert (not b!1187940))

(assert (not b!1187966))

(assert (not b_next!29353))

(assert (not b_next!29335))

(assert b_and!81813)

(assert (not b!1187999))

(assert b_and!81789)

(assert (not b!1187901))

(assert (not b!1187979))

(assert (not b!1187951))

(assert (not b!1187980))

(assert (not b!1187942))

(assert (not b!1187996))

(assert (not b!1187943))

(assert (not tb!66397))

(assert (not d!339723))

(assert b_and!81809)

(assert b_and!81807)

(assert (not b!1187946))

(assert b_and!81805)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!29339))

(assert (not b_next!29351))

(assert (not b_next!29333))

(assert b_and!81789)

(assert b_and!81809)

(assert b_and!81811)

(assert b_and!81815)

(assert (not b_next!29337))

(assert b_and!81793)

(assert (not b_next!29355))

(assert (not b_next!29349))

(assert (not b_next!29353))

(assert (not b_next!29335))

(assert b_and!81813)

(assert b_and!81807)

(assert b_and!81805)

(check-sat)

(pop 1)

