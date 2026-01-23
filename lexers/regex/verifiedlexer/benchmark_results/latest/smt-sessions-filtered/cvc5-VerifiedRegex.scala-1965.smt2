; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!100348 () Bool)

(assert start!100348)

(declare-fun b!1153200 () Bool)

(assert (=> b!1153200 true))

(declare-fun lambda!46347 () Int)

(declare-fun size!108 () Int)

(declare-datatypes ((List!11109 0))(
  ( (Nil!11085) (Cons!11085 (h!16486 Int) (t!108589 List!11109)) )
))
(declare-datatypes ((IArray!7153 0))(
  ( (IArray!7154 (innerList!3634 List!11109)) )
))
(declare-datatypes ((Conc!3574 0))(
  ( (Node!3574 (left!9645 Conc!3574) (right!9975 Conc!3574) (csize!7378 Int) (cheight!3785 Int)) (Leaf!5540 (xs!6279 IArray!7153) (csize!7379 Int)) (Empty!3574) )
))
(declare-datatypes ((BalanceConc!7170 0))(
  ( (BalanceConc!7171 (c!193847 Conc!3574)) )
))
(declare-fun indices!2 () BalanceConc!7170)

(declare-fun b!1153192 () Bool)

(declare-datatypes ((List!11110 0))(
  ( (Nil!11086) (Cons!11086 (h!16487 (_ BitVec 16)) (t!108590 List!11110)) )
))
(declare-datatypes ((TokenValue!1976 0))(
  ( (FloatLiteralValue!3952 (text!14277 List!11110)) (TokenValueExt!1975 (__x!7667 Int)) (Broken!9880 (value!62407 List!11110)) (Object!1999) (End!1976) (Def!1976) (Underscore!1976) (Match!1976) (Else!1976) (Error!1976) (Case!1976) (If!1976) (Extends!1976) (Abstract!1976) (Class!1976) (Val!1976) (DelimiterValue!3952 (del!2036 List!11110)) (KeywordValue!1982 (value!62408 List!11110)) (CommentValue!3952 (value!62409 List!11110)) (WhitespaceValue!3952 (value!62410 List!11110)) (IndentationValue!1976 (value!62411 List!11110)) (String!13469) (Int32!1976) (Broken!9881 (value!62412 List!11110)) (Boolean!1977) (Unit!17139) (OperatorValue!1979 (op!2036 List!11110)) (IdentifierValue!3952 (value!62413 List!11110)) (IdentifierValue!3953 (value!62414 List!11110)) (WhitespaceValue!3953 (value!62415 List!11110)) (True!3952) (False!3952) (Broken!9882 (value!62416 List!11110)) (Broken!9883 (value!62417 List!11110)) (True!3953) (RightBrace!1976) (RightBracket!1976) (Colon!1976) (Null!1976) (Comma!1976) (LeftBracket!1976) (False!3953) (LeftBrace!1976) (ImaginaryLiteralValue!1976 (text!14278 List!11110)) (StringLiteralValue!5928 (value!62418 List!11110)) (EOFValue!1976 (value!62419 List!11110)) (IdentValue!1976 (value!62420 List!11110)) (DelimiterValue!3953 (value!62421 List!11110)) (DedentValue!1976 (value!62422 List!11110)) (NewLineValue!1976 (value!62423 List!11110)) (IntegerValue!5928 (value!62424 (_ BitVec 32)) (text!14279 List!11110)) (IntegerValue!5929 (value!62425 Int) (text!14280 List!11110)) (Times!1976) (Or!1976) (Equal!1976) (Minus!1976) (Broken!9884 (value!62426 List!11110)) (And!1976) (Div!1976) (LessEqual!1976) (Mod!1976) (Concat!5156) (Not!1976) (Plus!1976) (SpaceValue!1976 (value!62427 List!11110)) (IntegerValue!5930 (value!62428 Int) (text!14281 List!11110)) (StringLiteralValue!5929 (text!14282 List!11110)) (FloatLiteralValue!3953 (text!14283 List!11110)) (BytesLiteralValue!1976 (value!62429 List!11110)) (CommentValue!3953 (value!62430 List!11110)) (StringLiteralValue!5930 (value!62431 List!11110)) (ErrorTokenValue!1976 (msg!2037 List!11110)) )
))
(declare-datatypes ((Regex!3180 0))(
  ( (ElementMatch!3180 (c!193848 (_ BitVec 16))) (Concat!5157 (regOne!6872 Regex!3180) (regTwo!6872 Regex!3180)) (EmptyExpr!3180) (Star!3180 (reg!3509 Regex!3180)) (EmptyLang!3180) (Union!3180 (regOne!6873 Regex!3180) (regTwo!6873 Regex!3180)) )
))
(declare-datatypes ((String!13470 0))(
  ( (String!13471 (value!62432 String)) )
))
(declare-datatypes ((IArray!7155 0))(
  ( (IArray!7156 (innerList!3635 List!11110)) )
))
(declare-datatypes ((Conc!3575 0))(
  ( (Node!3575 (left!9646 Conc!3575) (right!9976 Conc!3575) (csize!7380 Int) (cheight!3786 Int)) (Leaf!5541 (xs!6280 IArray!7155) (csize!7381 Int)) (Empty!3575) )
))
(declare-datatypes ((BalanceConc!7172 0))(
  ( (BalanceConc!7173 (c!193849 Conc!3575)) )
))
(declare-datatypes ((TokenValueInjection!3652 0))(
  ( (TokenValueInjection!3653 (toValue!3011 Int) (toChars!2870 Int)) )
))
(declare-datatypes ((Rule!3620 0))(
  ( (Rule!3621 (regex!1910 Regex!3180) (tag!2172 String!13470) (isSeparator!1910 Bool) (transformation!1910 TokenValueInjection!3652)) )
))
(declare-datatypes ((Token!3482 0))(
  ( (Token!3483 (value!62433 TokenValue!1976) (rule!3331 Rule!3620) (size!8738 Int) (originalCharacters!2464 List!11110)) )
))
(declare-datatypes ((List!11111 0))(
  ( (Nil!11087) (Cons!11087 (h!16488 Token!3482) (t!108591 List!11111)) )
))
(declare-datatypes ((IArray!7157 0))(
  ( (IArray!7158 (innerList!3636 List!11111)) )
))
(declare-datatypes ((Conc!3576 0))(
  ( (Node!3576 (left!9647 Conc!3576) (right!9977 Conc!3576) (csize!7382 Int) (cheight!3787 Int)) (Leaf!5542 (xs!6281 IArray!7157) (csize!7383 Int)) (Empty!3576) )
))
(declare-datatypes ((List!11112 0))(
  ( (Nil!11088) (Cons!11088 (h!16489 Rule!3620) (t!108592 List!11112)) )
))
(declare-datatypes ((BalanceConc!7174 0))(
  ( (BalanceConc!7175 (c!193850 Conc!3576)) )
))
(declare-datatypes ((PrintableTokens!506 0))(
  ( (PrintableTokens!507 (rules!9371 List!11112) (tokens!1509 BalanceConc!7174)) )
))
(declare-fun pt!21 () PrintableTokens!506)

(declare-datatypes ((List!11113 0))(
  ( (Nil!11089) (Cons!11089 (h!16490 PrintableTokens!506) (t!108593 List!11113)) )
))
(declare-datatypes ((IArray!7159 0))(
  ( (IArray!7160 (innerList!3637 List!11113)) )
))
(declare-datatypes ((Conc!3577 0))(
  ( (Node!3577 (left!9648 Conc!3577) (right!9978 Conc!3577) (csize!7384 Int) (cheight!3788 Int)) (Leaf!5543 (xs!6282 IArray!7159) (csize!7385 Int)) (Empty!3577) )
))
(declare-datatypes ((BalanceConc!7176 0))(
  ( (BalanceConc!7177 (c!193851 Conc!3577)) )
))
(declare-fun lt!391919 () BalanceConc!7176)

(declare-fun e!737254 () Bool)

(declare-fun forall!2812 (BalanceConc!7176 Int) Bool)

(declare-fun slicesMulti!0 (PrintableTokens!506 Int BalanceConc!7170 BalanceConc!7176) BalanceConc!7176)

(declare-fun tail!1655 (BalanceConc!7170) BalanceConc!7170)

(assert (=> b!1153192 (= e!737254 (not (forall!2812 (slicesMulti!0 pt!21 size!108 (tail!1655 (tail!1655 indices!2)) lt!391919) lambda!46347)))))

(declare-fun b!1153193 () Bool)

(declare-fun e!737257 () PrintableTokens!506)

(declare-fun call!82097 () PrintableTokens!506)

(assert (=> b!1153193 (= e!737257 call!82097)))

(declare-fun b!1153194 () Bool)

(declare-fun e!737258 () Bool)

(declare-fun e!737255 () Bool)

(assert (=> b!1153194 (= e!737258 e!737255)))

(declare-fun res!518741 () Bool)

(assert (=> b!1153194 (=> (not res!518741) (not e!737255))))

(declare-fun lt!391918 () PrintableTokens!506)

(declare-fun usesJsonRules!0 (PrintableTokens!506) Bool)

(assert (=> b!1153194 (= res!518741 (usesJsonRules!0 lt!391918))))

(assert (=> b!1153194 (= lt!391918 e!737257)))

(declare-fun c!193846 () Bool)

(declare-fun lt!391916 () Int)

(declare-fun lt!391920 () Int)

(assert (=> b!1153194 (= c!193846 (<= lt!391916 lt!391920))))

(declare-fun apply!2383 (BalanceConc!7170 Int) Int)

(assert (=> b!1153194 (= lt!391920 (apply!2383 indices!2 1))))

(assert (=> b!1153194 (= lt!391916 (apply!2383 indices!2 0))))

(declare-fun b!1153195 () Bool)

(declare-fun res!518740 () Bool)

(assert (=> b!1153195 (=> (not res!518740) (not e!737258))))

(assert (=> b!1153195 (= res!518740 (usesJsonRules!0 pt!21))))

(declare-fun b!1153196 () Bool)

(declare-fun e!737260 () Bool)

(declare-fun tp!332566 () Bool)

(declare-fun inv!14538 (Conc!3576) Bool)

(assert (=> b!1153196 (= e!737260 (and (inv!14538 (c!193850 (tokens!1509 pt!21))) tp!332566))))

(declare-fun b!1153197 () Bool)

(assert (=> b!1153197 (= e!737257 call!82097)))

(declare-fun b!1153198 () Bool)

(assert (=> b!1153198 (= e!737255 e!737254)))

(declare-fun res!518739 () Bool)

(assert (=> b!1153198 (=> (not res!518739) (not e!737254))))

(assert (=> b!1153198 (= res!518739 (forall!2812 lt!391919 lambda!46347))))

(declare-fun acc!225 () BalanceConc!7176)

(declare-fun append!369 (BalanceConc!7176 PrintableTokens!506) BalanceConc!7176)

(assert (=> b!1153198 (= lt!391919 (append!369 acc!225 lt!391918))))

(declare-datatypes ((Unit!17140 0))(
  ( (Unit!17141) )
))
(declare-fun lt!391917 () Unit!17140)

(declare-fun lemmaConcatPreservesForall!119 (List!11113 List!11113 Int) Unit!17140)

(declare-fun list!4101 (BalanceConc!7176) List!11113)

(assert (=> b!1153198 (= lt!391917 (lemmaConcatPreservesForall!119 (list!4101 acc!225) (Cons!11089 lt!391918 Nil!11089) lambda!46347))))

(declare-fun b!1153199 () Bool)

(declare-fun e!737261 () Bool)

(declare-fun tp!332568 () Bool)

(declare-fun inv!14539 (Conc!3577) Bool)

(assert (=> b!1153199 (= e!737261 (and (inv!14539 (c!193851 acc!225)) tp!332568))))

(declare-fun res!518743 () Bool)

(assert (=> b!1153200 (=> (not res!518743) (not e!737258))))

(declare-fun lambda!46346 () Int)

(declare-fun forall!2813 (BalanceConc!7170 Int) Bool)

(assert (=> b!1153200 (= res!518743 (forall!2813 indices!2 lambda!46346))))

(declare-fun e!737256 () Bool)

(declare-fun tp!332565 () Bool)

(declare-fun b!1153201 () Bool)

(declare-fun inv!14540 (BalanceConc!7174) Bool)

(assert (=> b!1153201 (= e!737256 (and tp!332565 (inv!14540 (tokens!1509 pt!21)) e!737260))))

(declare-fun b!1153202 () Bool)

(declare-fun e!737259 () Bool)

(declare-fun tp!332567 () Bool)

(declare-fun inv!14541 (Conc!3574) Bool)

(assert (=> b!1153202 (= e!737259 (and (inv!14541 (c!193847 indices!2)) tp!332567))))

(declare-fun bm!82092 () Bool)

(declare-fun slice!132 (PrintableTokens!506 Int Int) PrintableTokens!506)

(assert (=> bm!82092 (= call!82097 (slice!132 pt!21 (ite c!193846 lt!391916 lt!391920) (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916))))))

(declare-fun res!518745 () Bool)

(assert (=> start!100348 (=> (not res!518745) (not e!737258))))

(declare-fun size!8739 (PrintableTokens!506) Int)

(assert (=> start!100348 (= res!518745 (= (size!8739 pt!21) size!108))))

(assert (=> start!100348 e!737258))

(declare-fun inv!14542 (PrintableTokens!506) Bool)

(assert (=> start!100348 (and (inv!14542 pt!21) e!737256)))

(assert (=> start!100348 true))

(declare-fun inv!14543 (BalanceConc!7170) Bool)

(assert (=> start!100348 (and (inv!14543 indices!2) e!737259)))

(declare-fun inv!14544 (BalanceConc!7176) Bool)

(assert (=> start!100348 (and (inv!14544 acc!225) e!737261)))

(declare-fun b!1153203 () Bool)

(declare-fun res!518744 () Bool)

(assert (=> b!1153203 (=> (not res!518744) (not e!737258))))

(declare-fun size!8740 (BalanceConc!7170) Int)

(assert (=> b!1153203 (= res!518744 (>= (size!8740 indices!2) 2))))

(declare-fun b!1153204 () Bool)

(declare-fun res!518742 () Bool)

(assert (=> b!1153204 (=> (not res!518742) (not e!737258))))

(assert (=> b!1153204 (= res!518742 (forall!2812 acc!225 lambda!46347))))

(assert (= (and start!100348 res!518745) b!1153200))

(assert (= (and b!1153200 res!518743) b!1153195))

(assert (= (and b!1153195 res!518740) b!1153204))

(assert (= (and b!1153204 res!518742) b!1153203))

(assert (= (and b!1153203 res!518744) b!1153194))

(assert (= (and b!1153194 c!193846) b!1153193))

(assert (= (and b!1153194 (not c!193846)) b!1153197))

(assert (= (or b!1153193 b!1153197) bm!82092))

(assert (= (and b!1153194 res!518741) b!1153198))

(assert (= (and b!1153198 res!518739) b!1153192))

(assert (= b!1153201 b!1153196))

(assert (= start!100348 b!1153201))

(assert (= start!100348 b!1153202))

(assert (= start!100348 b!1153199))

(declare-fun m!1320281 () Bool)

(assert (=> start!100348 m!1320281))

(declare-fun m!1320283 () Bool)

(assert (=> start!100348 m!1320283))

(declare-fun m!1320285 () Bool)

(assert (=> start!100348 m!1320285))

(declare-fun m!1320287 () Bool)

(assert (=> start!100348 m!1320287))

(declare-fun m!1320289 () Bool)

(assert (=> b!1153196 m!1320289))

(declare-fun m!1320291 () Bool)

(assert (=> bm!82092 m!1320291))

(declare-fun m!1320293 () Bool)

(assert (=> b!1153204 m!1320293))

(declare-fun m!1320295 () Bool)

(assert (=> b!1153194 m!1320295))

(declare-fun m!1320297 () Bool)

(assert (=> b!1153194 m!1320297))

(declare-fun m!1320299 () Bool)

(assert (=> b!1153194 m!1320299))

(declare-fun m!1320301 () Bool)

(assert (=> b!1153195 m!1320301))

(declare-fun m!1320303 () Bool)

(assert (=> b!1153200 m!1320303))

(declare-fun m!1320305 () Bool)

(assert (=> b!1153199 m!1320305))

(declare-fun m!1320307 () Bool)

(assert (=> b!1153203 m!1320307))

(declare-fun m!1320309 () Bool)

(assert (=> b!1153192 m!1320309))

(assert (=> b!1153192 m!1320309))

(declare-fun m!1320311 () Bool)

(assert (=> b!1153192 m!1320311))

(assert (=> b!1153192 m!1320311))

(declare-fun m!1320313 () Bool)

(assert (=> b!1153192 m!1320313))

(assert (=> b!1153192 m!1320313))

(declare-fun m!1320315 () Bool)

(assert (=> b!1153192 m!1320315))

(declare-fun m!1320317 () Bool)

(assert (=> b!1153201 m!1320317))

(declare-fun m!1320319 () Bool)

(assert (=> b!1153202 m!1320319))

(declare-fun m!1320321 () Bool)

(assert (=> b!1153198 m!1320321))

(declare-fun m!1320323 () Bool)

(assert (=> b!1153198 m!1320323))

(declare-fun m!1320325 () Bool)

(assert (=> b!1153198 m!1320325))

(assert (=> b!1153198 m!1320325))

(declare-fun m!1320327 () Bool)

(assert (=> b!1153198 m!1320327))

(push 1)

(assert (not b!1153194))

(assert (not b!1153202))

(assert (not start!100348))

(assert (not b!1153198))

(assert (not b!1153200))

(assert (not b!1153195))

(assert (not b!1153196))

(assert (not bm!82092))

(assert (not b!1153201))

(assert (not b!1153199))

(assert (not b!1153192))

(assert (not b!1153203))

(assert (not b!1153204))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!329884 () Bool)

(declare-fun lt!391938 () Int)

(declare-fun size!8746 (List!11109) Int)

(declare-fun list!4103 (BalanceConc!7170) List!11109)

(assert (=> d!329884 (= lt!391938 (size!8746 (list!4103 indices!2)))))

(declare-fun size!8747 (Conc!3574) Int)

(assert (=> d!329884 (= lt!391938 (size!8747 (c!193847 indices!2)))))

(assert (=> d!329884 (= (size!8740 indices!2) lt!391938)))

(declare-fun bs!282683 () Bool)

(assert (= bs!282683 d!329884))

(declare-fun m!1320377 () Bool)

(assert (=> bs!282683 m!1320377))

(assert (=> bs!282683 m!1320377))

(declare-fun m!1320379 () Bool)

(assert (=> bs!282683 m!1320379))

(declare-fun m!1320381 () Bool)

(assert (=> bs!282683 m!1320381))

(assert (=> b!1153203 d!329884))

(declare-fun d!329886 () Bool)

(declare-fun size!8748 (BalanceConc!7174) Int)

(assert (=> d!329886 (= (size!8739 pt!21) (size!8748 (tokens!1509 pt!21)))))

(declare-fun bs!282684 () Bool)

(assert (= bs!282684 d!329886))

(declare-fun m!1320383 () Bool)

(assert (=> bs!282684 m!1320383))

(assert (=> start!100348 d!329886))

(declare-fun d!329888 () Bool)

(declare-fun res!518773 () Bool)

(declare-fun e!737288 () Bool)

(assert (=> d!329888 (=> (not res!518773) (not e!737288))))

(declare-fun isEmpty!6899 (List!11112) Bool)

(assert (=> d!329888 (= res!518773 (not (isEmpty!6899 (rules!9371 pt!21))))))

(assert (=> d!329888 (= (inv!14542 pt!21) e!737288)))

(declare-fun b!1153254 () Bool)

(declare-fun res!518774 () Bool)

(assert (=> b!1153254 (=> (not res!518774) (not e!737288))))

(declare-datatypes ((LexerInterface!1609 0))(
  ( (LexerInterfaceExt!1606 (__x!7669 Int)) (Lexer!1607) )
))
(declare-fun rulesInvariant!1483 (LexerInterface!1609 List!11112) Bool)

(assert (=> b!1153254 (= res!518774 (rulesInvariant!1483 Lexer!1607 (rules!9371 pt!21)))))

(declare-fun b!1153255 () Bool)

(declare-fun res!518775 () Bool)

(assert (=> b!1153255 (=> (not res!518775) (not e!737288))))

(declare-fun rulesProduceEachTokenIndividually!651 (LexerInterface!1609 List!11112 BalanceConc!7174) Bool)

(assert (=> b!1153255 (= res!518775 (rulesProduceEachTokenIndividually!651 Lexer!1607 (rules!9371 pt!21) (tokens!1509 pt!21)))))

(declare-fun b!1153256 () Bool)

(declare-fun separableTokens!78 (LexerInterface!1609 BalanceConc!7174 List!11112) Bool)

(assert (=> b!1153256 (= e!737288 (separableTokens!78 Lexer!1607 (tokens!1509 pt!21) (rules!9371 pt!21)))))

(assert (= (and d!329888 res!518773) b!1153254))

(assert (= (and b!1153254 res!518774) b!1153255))

(assert (= (and b!1153255 res!518775) b!1153256))

(declare-fun m!1320391 () Bool)

(assert (=> d!329888 m!1320391))

(declare-fun m!1320393 () Bool)

(assert (=> b!1153254 m!1320393))

(declare-fun m!1320395 () Bool)

(assert (=> b!1153255 m!1320395))

(declare-fun m!1320397 () Bool)

(assert (=> b!1153256 m!1320397))

(assert (=> start!100348 d!329888))

(declare-fun d!329894 () Bool)

(declare-fun isBalanced!1013 (Conc!3574) Bool)

(assert (=> d!329894 (= (inv!14543 indices!2) (isBalanced!1013 (c!193847 indices!2)))))

(declare-fun bs!282686 () Bool)

(assert (= bs!282686 d!329894))

(declare-fun m!1320399 () Bool)

(assert (=> bs!282686 m!1320399))

(assert (=> start!100348 d!329894))

(declare-fun d!329896 () Bool)

(declare-fun isBalanced!1014 (Conc!3577) Bool)

(assert (=> d!329896 (= (inv!14544 acc!225) (isBalanced!1014 (c!193851 acc!225)))))

(declare-fun bs!282687 () Bool)

(assert (= bs!282687 d!329896))

(declare-fun m!1320401 () Bool)

(assert (=> bs!282687 m!1320401))

(assert (=> start!100348 d!329896))

(declare-fun lt!391944 () Bool)

(declare-fun d!329898 () Bool)

(declare-fun forall!2816 (List!11113 Int) Bool)

(assert (=> d!329898 (= lt!391944 (forall!2816 (list!4101 (slicesMulti!0 pt!21 size!108 (tail!1655 (tail!1655 indices!2)) lt!391919)) lambda!46347))))

(declare-fun forall!2817 (Conc!3577 Int) Bool)

(assert (=> d!329898 (= lt!391944 (forall!2817 (c!193851 (slicesMulti!0 pt!21 size!108 (tail!1655 (tail!1655 indices!2)) lt!391919)) lambda!46347))))

(assert (=> d!329898 (= (forall!2812 (slicesMulti!0 pt!21 size!108 (tail!1655 (tail!1655 indices!2)) lt!391919) lambda!46347) lt!391944)))

(declare-fun bs!282688 () Bool)

(assert (= bs!282688 d!329898))

(assert (=> bs!282688 m!1320313))

(declare-fun m!1320403 () Bool)

(assert (=> bs!282688 m!1320403))

(assert (=> bs!282688 m!1320403))

(declare-fun m!1320405 () Bool)

(assert (=> bs!282688 m!1320405))

(declare-fun m!1320407 () Bool)

(assert (=> bs!282688 m!1320407))

(assert (=> b!1153192 d!329898))

(declare-fun bs!282694 () Bool)

(declare-fun b!1153287 () Bool)

(assert (= bs!282694 (and b!1153287 b!1153204)))

(declare-fun lambda!46364 () Int)

(assert (=> bs!282694 (= lambda!46364 lambda!46347)))

(declare-fun bs!282695 () Bool)

(declare-fun d!329900 () Bool)

(assert (= bs!282695 (and d!329900 b!1153204)))

(declare-fun lambda!46365 () Int)

(assert (=> bs!282695 (= lambda!46365 lambda!46347)))

(declare-fun bs!282696 () Bool)

(assert (= bs!282696 (and d!329900 b!1153287)))

(assert (=> bs!282696 (= lambda!46365 lambda!46364)))

(declare-fun lt!391965 () BalanceConc!7176)

(assert (=> d!329900 (forall!2812 lt!391965 lambda!46365)))

(declare-fun e!737309 () BalanceConc!7176)

(assert (=> d!329900 (= lt!391965 e!737309)))

(declare-fun c!193871 () Bool)

(assert (=> d!329900 (= c!193871 (>= (size!8740 (tail!1655 (tail!1655 indices!2))) 2))))

(assert (=> d!329900 (= (size!8739 pt!21) size!108)))

(assert (=> d!329900 (= (slicesMulti!0 pt!21 size!108 (tail!1655 (tail!1655 indices!2)) lt!391919) lt!391965)))

(declare-fun lt!391966 () PrintableTokens!506)

(assert (=> b!1153287 (= e!737309 (slicesMulti!0 pt!21 size!108 (tail!1655 (tail!1655 (tail!1655 (tail!1655 indices!2)))) (append!369 lt!391919 lt!391966)))))

(declare-fun lt!391968 () Int)

(assert (=> b!1153287 (= lt!391968 (apply!2383 (tail!1655 (tail!1655 indices!2)) 0))))

(declare-fun lt!391967 () Int)

(assert (=> b!1153287 (= lt!391967 (apply!2383 (tail!1655 (tail!1655 indices!2)) 1))))

(declare-fun c!193870 () Bool)

(assert (=> b!1153287 (= c!193870 (<= lt!391968 lt!391967))))

(declare-fun e!737310 () PrintableTokens!506)

(assert (=> b!1153287 (= lt!391966 e!737310)))

(declare-fun lt!391969 () Unit!17140)

(assert (=> b!1153287 (= lt!391969 (lemmaConcatPreservesForall!119 (list!4101 lt!391919) (Cons!11089 lt!391966 Nil!11089) lambda!46364))))

(declare-fun b!1153288 () Bool)

(declare-fun call!82103 () PrintableTokens!506)

(assert (=> b!1153288 (= e!737310 call!82103)))

(declare-fun b!1153289 () Bool)

(assert (=> b!1153289 (= e!737309 lt!391919)))

(declare-fun b!1153290 () Bool)

(assert (=> b!1153290 (= e!737310 call!82103)))

(declare-fun bm!82098 () Bool)

(assert (=> bm!82098 (= call!82103 (slice!132 pt!21 (ite c!193870 lt!391968 lt!391967) (ite c!193870 (+ lt!391967 1) (+ lt!391968 1))))))

(assert (= (and d!329900 c!193871) b!1153287))

(assert (= (and d!329900 (not c!193871)) b!1153289))

(assert (= (and b!1153287 c!193870) b!1153288))

(assert (= (and b!1153287 (not c!193870)) b!1153290))

(assert (= (or b!1153288 b!1153290) bm!82098))

(declare-fun m!1320439 () Bool)

(assert (=> d!329900 m!1320439))

(assert (=> d!329900 m!1320311))

(declare-fun m!1320441 () Bool)

(assert (=> d!329900 m!1320441))

(assert (=> d!329900 m!1320281))

(assert (=> b!1153287 m!1320311))

(declare-fun m!1320443 () Bool)

(assert (=> b!1153287 m!1320443))

(declare-fun m!1320445 () Bool)

(assert (=> b!1153287 m!1320445))

(assert (=> b!1153287 m!1320311))

(declare-fun m!1320447 () Bool)

(assert (=> b!1153287 m!1320447))

(declare-fun m!1320449 () Bool)

(assert (=> b!1153287 m!1320449))

(assert (=> b!1153287 m!1320445))

(declare-fun m!1320451 () Bool)

(assert (=> b!1153287 m!1320451))

(assert (=> b!1153287 m!1320311))

(declare-fun m!1320453 () Bool)

(assert (=> b!1153287 m!1320453))

(assert (=> b!1153287 m!1320453))

(assert (=> b!1153287 m!1320449))

(declare-fun m!1320455 () Bool)

(assert (=> b!1153287 m!1320455))

(assert (=> b!1153287 m!1320455))

(declare-fun m!1320457 () Bool)

(assert (=> b!1153287 m!1320457))

(declare-fun m!1320459 () Bool)

(assert (=> bm!82098 m!1320459))

(assert (=> b!1153192 d!329900))

(declare-fun d!329920 () Bool)

(declare-fun e!737313 () Bool)

(assert (=> d!329920 e!737313))

(declare-fun res!518788 () Bool)

(assert (=> d!329920 (=> (not res!518788) (not e!737313))))

(declare-fun tail!1657 (Conc!3574) Conc!3574)

(assert (=> d!329920 (= res!518788 (isBalanced!1013 (tail!1657 (c!193847 (tail!1655 indices!2)))))))

(declare-fun lt!391972 () BalanceConc!7170)

(assert (=> d!329920 (= lt!391972 (BalanceConc!7171 (tail!1657 (c!193847 (tail!1655 indices!2)))))))

(declare-fun isEmpty!6900 (BalanceConc!7170) Bool)

(assert (=> d!329920 (not (isEmpty!6900 (tail!1655 indices!2)))))

(assert (=> d!329920 (= (tail!1655 (tail!1655 indices!2)) lt!391972)))

(declare-fun b!1153293 () Bool)

(declare-fun tail!1658 (List!11109) List!11109)

(assert (=> b!1153293 (= e!737313 (= (list!4103 lt!391972) (tail!1658 (list!4103 (tail!1655 indices!2)))))))

(assert (= (and d!329920 res!518788) b!1153293))

(declare-fun m!1320461 () Bool)

(assert (=> d!329920 m!1320461))

(assert (=> d!329920 m!1320461))

(declare-fun m!1320463 () Bool)

(assert (=> d!329920 m!1320463))

(assert (=> d!329920 m!1320309))

(declare-fun m!1320465 () Bool)

(assert (=> d!329920 m!1320465))

(declare-fun m!1320467 () Bool)

(assert (=> b!1153293 m!1320467))

(assert (=> b!1153293 m!1320309))

(declare-fun m!1320469 () Bool)

(assert (=> b!1153293 m!1320469))

(assert (=> b!1153293 m!1320469))

(declare-fun m!1320471 () Bool)

(assert (=> b!1153293 m!1320471))

(assert (=> b!1153192 d!329920))

(declare-fun d!329922 () Bool)

(declare-fun e!737314 () Bool)

(assert (=> d!329922 e!737314))

(declare-fun res!518789 () Bool)

(assert (=> d!329922 (=> (not res!518789) (not e!737314))))

(assert (=> d!329922 (= res!518789 (isBalanced!1013 (tail!1657 (c!193847 indices!2))))))

(declare-fun lt!391973 () BalanceConc!7170)

(assert (=> d!329922 (= lt!391973 (BalanceConc!7171 (tail!1657 (c!193847 indices!2))))))

(assert (=> d!329922 (not (isEmpty!6900 indices!2))))

(assert (=> d!329922 (= (tail!1655 indices!2) lt!391973)))

(declare-fun b!1153294 () Bool)

(assert (=> b!1153294 (= e!737314 (= (list!4103 lt!391973) (tail!1658 (list!4103 indices!2))))))

(assert (= (and d!329922 res!518789) b!1153294))

(declare-fun m!1320473 () Bool)

(assert (=> d!329922 m!1320473))

(assert (=> d!329922 m!1320473))

(declare-fun m!1320475 () Bool)

(assert (=> d!329922 m!1320475))

(declare-fun m!1320477 () Bool)

(assert (=> d!329922 m!1320477))

(declare-fun m!1320479 () Bool)

(assert (=> b!1153294 m!1320479))

(assert (=> b!1153294 m!1320377))

(assert (=> b!1153294 m!1320377))

(declare-fun m!1320481 () Bool)

(assert (=> b!1153294 m!1320481))

(assert (=> b!1153192 d!329922))

(declare-fun d!329924 () Bool)

(declare-fun c!193875 () Bool)

(assert (=> d!329924 (= c!193875 (is-Node!3574 (c!193847 indices!2)))))

(declare-fun e!737319 () Bool)

(assert (=> d!329924 (= (inv!14541 (c!193847 indices!2)) e!737319)))

(declare-fun b!1153301 () Bool)

(declare-fun inv!14552 (Conc!3574) Bool)

(assert (=> b!1153301 (= e!737319 (inv!14552 (c!193847 indices!2)))))

(declare-fun b!1153302 () Bool)

(declare-fun e!737320 () Bool)

(assert (=> b!1153302 (= e!737319 e!737320)))

(declare-fun res!518792 () Bool)

(assert (=> b!1153302 (= res!518792 (not (is-Leaf!5540 (c!193847 indices!2))))))

(assert (=> b!1153302 (=> res!518792 e!737320)))

(declare-fun b!1153303 () Bool)

(declare-fun inv!14553 (Conc!3574) Bool)

(assert (=> b!1153303 (= e!737320 (inv!14553 (c!193847 indices!2)))))

(assert (= (and d!329924 c!193875) b!1153301))

(assert (= (and d!329924 (not c!193875)) b!1153302))

(assert (= (and b!1153302 (not res!518792)) b!1153303))

(declare-fun m!1320483 () Bool)

(assert (=> b!1153301 m!1320483))

(declare-fun m!1320485 () Bool)

(assert (=> b!1153303 m!1320485))

(assert (=> b!1153202 d!329924))

(declare-fun d!329926 () Bool)

(declare-fun isBalanced!1015 (Conc!3576) Bool)

(assert (=> d!329926 (= (inv!14540 (tokens!1509 pt!21)) (isBalanced!1015 (c!193850 (tokens!1509 pt!21))))))

(declare-fun bs!282697 () Bool)

(assert (= bs!282697 d!329926))

(declare-fun m!1320487 () Bool)

(assert (=> bs!282697 m!1320487))

(assert (=> b!1153201 d!329926))

(declare-fun d!329928 () Bool)

(declare-fun c!193878 () Bool)

(assert (=> d!329928 (= c!193878 (is-Node!3576 (c!193850 (tokens!1509 pt!21))))))

(declare-fun e!737325 () Bool)

(assert (=> d!329928 (= (inv!14538 (c!193850 (tokens!1509 pt!21))) e!737325)))

(declare-fun b!1153310 () Bool)

(declare-fun inv!14554 (Conc!3576) Bool)

(assert (=> b!1153310 (= e!737325 (inv!14554 (c!193850 (tokens!1509 pt!21))))))

(declare-fun b!1153311 () Bool)

(declare-fun e!737326 () Bool)

(assert (=> b!1153311 (= e!737325 e!737326)))

(declare-fun res!518795 () Bool)

(assert (=> b!1153311 (= res!518795 (not (is-Leaf!5542 (c!193850 (tokens!1509 pt!21)))))))

(assert (=> b!1153311 (=> res!518795 e!737326)))

(declare-fun b!1153312 () Bool)

(declare-fun inv!14555 (Conc!3576) Bool)

(assert (=> b!1153312 (= e!737326 (inv!14555 (c!193850 (tokens!1509 pt!21))))))

(assert (= (and d!329928 c!193878) b!1153310))

(assert (= (and d!329928 (not c!193878)) b!1153311))

(assert (= (and b!1153311 (not res!518795)) b!1153312))

(declare-fun m!1320489 () Bool)

(assert (=> b!1153310 m!1320489))

(declare-fun m!1320491 () Bool)

(assert (=> b!1153312 m!1320491))

(assert (=> b!1153196 d!329928))

(declare-fun d!329930 () Bool)

(declare-datatypes ((JsonLexer!336 0))(
  ( (JsonLexer!337) )
))
(declare-fun rules!109 (JsonLexer!336) List!11112)

(assert (=> d!329930 (= (usesJsonRules!0 pt!21) (= (rules!9371 pt!21) (rules!109 JsonLexer!337)))))

(declare-fun bs!282698 () Bool)

(assert (= bs!282698 d!329930))

(declare-fun m!1320493 () Bool)

(assert (=> bs!282698 m!1320493))

(assert (=> b!1153195 d!329930))

(declare-fun d!329932 () Bool)

(assert (=> d!329932 (= (usesJsonRules!0 lt!391918) (= (rules!9371 lt!391918) (rules!109 JsonLexer!337)))))

(declare-fun bs!282699 () Bool)

(assert (= bs!282699 d!329932))

(assert (=> bs!282699 m!1320493))

(assert (=> b!1153194 d!329932))

(declare-fun d!329934 () Bool)

(declare-fun lt!391976 () Int)

(declare-fun apply!2385 (List!11109 Int) Int)

(assert (=> d!329934 (= lt!391976 (apply!2385 (list!4103 indices!2) 1))))

(declare-fun apply!2386 (Conc!3574 Int) Int)

(assert (=> d!329934 (= lt!391976 (apply!2386 (c!193847 indices!2) 1))))

(declare-fun e!737329 () Bool)

(assert (=> d!329934 e!737329))

(declare-fun res!518798 () Bool)

(assert (=> d!329934 (=> (not res!518798) (not e!737329))))

(assert (=> d!329934 (= res!518798 (<= 0 1))))

(assert (=> d!329934 (= (apply!2383 indices!2 1) lt!391976)))

(declare-fun b!1153315 () Bool)

(assert (=> b!1153315 (= e!737329 (< 1 (size!8740 indices!2)))))

(assert (= (and d!329934 res!518798) b!1153315))

(assert (=> d!329934 m!1320377))

(assert (=> d!329934 m!1320377))

(declare-fun m!1320495 () Bool)

(assert (=> d!329934 m!1320495))

(declare-fun m!1320497 () Bool)

(assert (=> d!329934 m!1320497))

(assert (=> b!1153315 m!1320307))

(assert (=> b!1153194 d!329934))

(declare-fun d!329936 () Bool)

(declare-fun lt!391977 () Int)

(assert (=> d!329936 (= lt!391977 (apply!2385 (list!4103 indices!2) 0))))

(assert (=> d!329936 (= lt!391977 (apply!2386 (c!193847 indices!2) 0))))

(declare-fun e!737330 () Bool)

(assert (=> d!329936 e!737330))

(declare-fun res!518799 () Bool)

(assert (=> d!329936 (=> (not res!518799) (not e!737330))))

(assert (=> d!329936 (= res!518799 (<= 0 0))))

(assert (=> d!329936 (= (apply!2383 indices!2 0) lt!391977)))

(declare-fun b!1153316 () Bool)

(assert (=> b!1153316 (= e!737330 (< 0 (size!8740 indices!2)))))

(assert (= (and d!329936 res!518799) b!1153316))

(assert (=> d!329936 m!1320377))

(assert (=> d!329936 m!1320377))

(declare-fun m!1320499 () Bool)

(assert (=> d!329936 m!1320499))

(declare-fun m!1320501 () Bool)

(assert (=> d!329936 m!1320501))

(assert (=> b!1153316 m!1320307))

(assert (=> b!1153194 d!329936))

(declare-fun d!329938 () Bool)

(declare-fun lt!391978 () Bool)

(assert (=> d!329938 (= lt!391978 (forall!2816 (list!4101 acc!225) lambda!46347))))

(assert (=> d!329938 (= lt!391978 (forall!2817 (c!193851 acc!225) lambda!46347))))

(assert (=> d!329938 (= (forall!2812 acc!225 lambda!46347) lt!391978)))

(declare-fun bs!282700 () Bool)

(assert (= bs!282700 d!329938))

(assert (=> bs!282700 m!1320325))

(assert (=> bs!282700 m!1320325))

(declare-fun m!1320503 () Bool)

(assert (=> bs!282700 m!1320503))

(declare-fun m!1320505 () Bool)

(assert (=> bs!282700 m!1320505))

(assert (=> b!1153204 d!329938))

(declare-fun d!329940 () Bool)

(declare-fun lt!391979 () Bool)

(assert (=> d!329940 (= lt!391979 (forall!2816 (list!4101 lt!391919) lambda!46347))))

(assert (=> d!329940 (= lt!391979 (forall!2817 (c!193851 lt!391919) lambda!46347))))

(assert (=> d!329940 (= (forall!2812 lt!391919 lambda!46347) lt!391979)))

(declare-fun bs!282701 () Bool)

(assert (= bs!282701 d!329940))

(assert (=> bs!282701 m!1320455))

(assert (=> bs!282701 m!1320455))

(declare-fun m!1320507 () Bool)

(assert (=> bs!282701 m!1320507))

(declare-fun m!1320509 () Bool)

(assert (=> bs!282701 m!1320509))

(assert (=> b!1153198 d!329940))

(declare-fun d!329942 () Bool)

(declare-fun e!737333 () Bool)

(assert (=> d!329942 e!737333))

(declare-fun res!518802 () Bool)

(assert (=> d!329942 (=> (not res!518802) (not e!737333))))

(declare-fun append!371 (Conc!3577 PrintableTokens!506) Conc!3577)

(assert (=> d!329942 (= res!518802 (isBalanced!1014 (append!371 (c!193851 acc!225) lt!391918)))))

(declare-fun lt!391982 () BalanceConc!7176)

(assert (=> d!329942 (= lt!391982 (BalanceConc!7177 (append!371 (c!193851 acc!225) lt!391918)))))

(assert (=> d!329942 (= (append!369 acc!225 lt!391918) lt!391982)))

(declare-fun b!1153319 () Bool)

(declare-fun $colon+!82 (List!11113 PrintableTokens!506) List!11113)

(assert (=> b!1153319 (= e!737333 (= (list!4101 lt!391982) ($colon+!82 (list!4101 acc!225) lt!391918)))))

(assert (= (and d!329942 res!518802) b!1153319))

(declare-fun m!1320511 () Bool)

(assert (=> d!329942 m!1320511))

(assert (=> d!329942 m!1320511))

(declare-fun m!1320513 () Bool)

(assert (=> d!329942 m!1320513))

(declare-fun m!1320515 () Bool)

(assert (=> b!1153319 m!1320515))

(assert (=> b!1153319 m!1320325))

(assert (=> b!1153319 m!1320325))

(declare-fun m!1320517 () Bool)

(assert (=> b!1153319 m!1320517))

(assert (=> b!1153198 d!329942))

(declare-fun d!329944 () Bool)

(declare-fun ++!2969 (List!11113 List!11113) List!11113)

(assert (=> d!329944 (forall!2816 (++!2969 (list!4101 acc!225) (Cons!11089 lt!391918 Nil!11089)) lambda!46347)))

(declare-fun lt!391985 () Unit!17140)

(declare-fun choose!7409 (List!11113 List!11113 Int) Unit!17140)

(assert (=> d!329944 (= lt!391985 (choose!7409 (list!4101 acc!225) (Cons!11089 lt!391918 Nil!11089) lambda!46347))))

(assert (=> d!329944 (forall!2816 (list!4101 acc!225) lambda!46347)))

(assert (=> d!329944 (= (lemmaConcatPreservesForall!119 (list!4101 acc!225) (Cons!11089 lt!391918 Nil!11089) lambda!46347) lt!391985)))

(declare-fun bs!282702 () Bool)

(assert (= bs!282702 d!329944))

(assert (=> bs!282702 m!1320325))

(declare-fun m!1320519 () Bool)

(assert (=> bs!282702 m!1320519))

(assert (=> bs!282702 m!1320519))

(declare-fun m!1320521 () Bool)

(assert (=> bs!282702 m!1320521))

(assert (=> bs!282702 m!1320325))

(declare-fun m!1320523 () Bool)

(assert (=> bs!282702 m!1320523))

(assert (=> bs!282702 m!1320325))

(assert (=> bs!282702 m!1320503))

(assert (=> b!1153198 d!329944))

(declare-fun d!329946 () Bool)

(declare-fun list!4104 (Conc!3577) List!11113)

(assert (=> d!329946 (= (list!4101 acc!225) (list!4104 (c!193851 acc!225)))))

(declare-fun bs!282703 () Bool)

(assert (= bs!282703 d!329946))

(declare-fun m!1320525 () Bool)

(assert (=> bs!282703 m!1320525))

(assert (=> b!1153198 d!329946))

(declare-fun b!1153394 () Bool)

(declare-fun e!737394 () Bool)

(assert (=> b!1153394 (= e!737394 true)))

(declare-fun b!1153393 () Bool)

(declare-fun e!737393 () Bool)

(assert (=> b!1153393 (= e!737393 e!737394)))

(declare-fun d!329948 () Bool)

(assert (=> d!329948 e!737393))

(assert (= b!1153393 b!1153394))

(assert (= d!329948 b!1153393))

(declare-fun e!737382 () Bool)

(declare-fun b!1153373 () Bool)

(assert (=> b!1153373 (= e!737382 (<= (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916)) (size!8748 (tokens!1509 pt!21))))))

(declare-fun b!1153374 () Bool)

(declare-fun lt!392191 () PrintableTokens!506)

(declare-fun e!737383 () Bool)

(declare-fun list!4105 (BalanceConc!7174) List!11111)

(declare-fun slice!134 (BalanceConc!7174 Int Int) BalanceConc!7174)

(assert (=> b!1153374 (= e!737383 (= (list!4105 (tokens!1509 lt!392191)) (list!4105 (slice!134 (tokens!1509 pt!21) (ite c!193846 lt!391916 lt!391920) (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916))))))))

(declare-fun b!1153375 () Bool)

(declare-fun e!737377 () Bool)

(declare-fun e!737381 () Bool)

(assert (=> b!1153375 (= e!737377 e!737381)))

(declare-fun res!518847 () Bool)

(assert (=> b!1153375 (=> (not res!518847) (not e!737381))))

(declare-fun lt!392199 () LexerInterface!1609)

(declare-fun lt!392158 () List!11111)

(declare-fun rulesProduceIndividualToken!654 (LexerInterface!1609 List!11112 Token!3482) Bool)

(assert (=> b!1153375 (= res!518847 (rulesProduceIndividualToken!654 lt!392199 (rules!9371 pt!21) (h!16488 lt!392158)))))

(declare-fun b!1153376 () Bool)

(declare-fun e!737380 () Bool)

(declare-fun e!737386 () Bool)

(assert (=> b!1153376 (= e!737380 e!737386)))

(declare-fun res!518857 () Bool)

(assert (=> b!1153376 (=> (not res!518857) (not e!737386))))

(declare-fun lt!392193 () List!11111)

(declare-fun lt!392220 () LexerInterface!1609)

(assert (=> b!1153376 (= res!518857 (rulesProduceIndividualToken!654 lt!392220 (rules!9371 pt!21) (h!16488 lt!392193)))))

(declare-fun lt!392216 () Int)

(declare-fun b!1153377 () Bool)

(declare-fun lt!392152 () LexerInterface!1609)

(declare-fun e!737385 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!38 (LexerInterface!1609 BalanceConc!7174 Int List!11112) Bool)

(assert (=> b!1153377 (= e!737385 (tokensListTwoByTwoPredicateSeparable!38 lt!392152 (tokens!1509 pt!21) (+ lt!392216 1) (rules!9371 pt!21)))))

(declare-fun lt!392183 () List!11111)

(declare-fun lt!392192 () Int)

(declare-fun b!1153378 () Bool)

(declare-fun lt!392201 () LexerInterface!1609)

(declare-fun e!737379 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!81 (LexerInterface!1609 List!11111 List!11112) Bool)

(declare-fun take!33 (List!11111 Int) List!11111)

(assert (=> b!1153378 (= e!737379 (tokensListTwoByTwoPredicateSeparableList!81 lt!392201 (take!33 lt!392183 lt!392192) (rules!9371 pt!21)))))

(declare-fun lt!392157 () Unit!17140)

(declare-fun lt!392167 () Unit!17140)

(assert (=> b!1153378 (= lt!392157 lt!392167)))

(declare-fun lt!392163 () List!11111)

(declare-fun lambda!46384 () Int)

(declare-fun forall!2818 (List!11111 Int) Bool)

(assert (=> b!1153378 (forall!2818 lt!392163 lambda!46384)))

(declare-fun lemmaForallSubseq!84 (List!11111 List!11111 Int) Unit!17140)

(assert (=> b!1153378 (= lt!392167 (lemmaForallSubseq!84 lt!392163 lt!392183 lambda!46384))))

(assert (=> b!1153378 (= lt!392163 (take!33 lt!392183 lt!392192))))

(assert (=> d!329948 e!737383))

(declare-fun res!518844 () Bool)

(assert (=> d!329948 (=> (not res!518844) (not e!737383))))

(assert (=> d!329948 (= res!518844 (= (rules!9371 lt!392191) (rules!9371 pt!21)))))

(assert (=> d!329948 (= lt!392191 (PrintableTokens!507 (rules!9371 pt!21) (slice!134 (tokens!1509 pt!21) (ite c!193846 lt!391916 lt!391920) (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916)))))))

(declare-fun lt!392175 () Unit!17140)

(declare-fun lt!392203 () Unit!17140)

(assert (=> d!329948 (= lt!392175 lt!392203)))

(assert (=> d!329948 e!737379))

(declare-fun res!518856 () Bool)

(assert (=> d!329948 (=> (not res!518856) (not e!737379))))

(declare-fun e!737388 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!484 (LexerInterface!1609 List!11112 List!11111) Bool)

(assert (=> d!329948 (= res!518856 (= (rulesProduceEachTokenIndividuallyList!484 lt!392201 (rules!9371 pt!21) (take!33 lt!392183 lt!392192)) e!737388))))

(declare-fun res!518849 () Bool)

(assert (=> d!329948 (=> res!518849 e!737388)))

(declare-fun lt!392172 () List!11111)

(assert (=> d!329948 (= res!518849 (not (is-Cons!11087 lt!392172)))))

(assert (=> d!329948 (= lt!392172 (take!33 lt!392183 lt!392192))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!25 (LexerInterface!1609 List!11111 Int List!11112) Unit!17140)

(assert (=> d!329948 (= lt!392203 (tokensListTwoByTwoPredicateSeparableTokensTakeList!25 lt!392201 lt!392183 lt!392192 (rules!9371 pt!21)))))

(assert (=> d!329948 (= lt!392192 (- (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916)) (ite c!193846 lt!391916 lt!391920)))))

(declare-fun drop!435 (List!11111 Int) List!11111)

(assert (=> d!329948 (= lt!392183 (drop!435 (list!4105 (tokens!1509 pt!21)) (ite c!193846 lt!391916 lt!391920)))))

(assert (=> d!329948 (= lt!392201 Lexer!1607)))

(declare-fun lt!392214 () Unit!17140)

(declare-fun lt!392160 () Unit!17140)

(assert (=> d!329948 (= lt!392214 lt!392160)))

(declare-fun lt!392209 () List!11111)

(assert (=> d!329948 (forall!2818 lt!392209 lambda!46384)))

(declare-fun lt!392176 () List!11111)

(assert (=> d!329948 (= lt!392160 (lemmaForallSubseq!84 lt!392209 lt!392176 lambda!46384))))

(assert (=> d!329948 (= lt!392176 (list!4105 (tokens!1509 pt!21)))))

(assert (=> d!329948 (= lt!392209 (drop!435 (list!4105 (tokens!1509 pt!21)) (ite c!193846 lt!391916 lt!391920)))))

(declare-fun lt!392190 () Unit!17140)

(declare-fun lt!392181 () Unit!17140)

(assert (=> d!329948 (= lt!392190 lt!392181)))

(declare-fun lt!392187 () List!11111)

(declare-fun subseq!184 (List!11111 List!11111) Bool)

(assert (=> d!329948 (subseq!184 (drop!435 lt!392187 (ite c!193846 lt!391916 lt!391920)) lt!392187)))

(declare-fun lemmaDropSubseq!25 (List!11111 Int) Unit!17140)

(assert (=> d!329948 (= lt!392181 (lemmaDropSubseq!25 lt!392187 (ite c!193846 lt!391916 lt!391920)))))

(assert (=> d!329948 (= lt!392187 (list!4105 (tokens!1509 pt!21)))))

(declare-fun lt!392189 () Unit!17140)

(declare-fun lt!392178 () Unit!17140)

(assert (=> d!329948 (= lt!392189 lt!392178)))

(declare-fun e!737378 () Bool)

(assert (=> d!329948 e!737378))

(declare-fun res!518846 () Bool)

(assert (=> d!329948 (=> (not res!518846) (not e!737378))))

(declare-fun lt!392165 () List!11111)

(assert (=> d!329948 (= res!518846 (= (rulesProduceEachTokenIndividuallyList!484 lt!392220 (rules!9371 pt!21) (drop!435 lt!392165 (ite c!193846 lt!391916 lt!391920))) e!737380))))

(declare-fun res!518850 () Bool)

(assert (=> d!329948 (=> res!518850 e!737380)))

(assert (=> d!329948 (= res!518850 (not (is-Cons!11087 lt!392193)))))

(assert (=> d!329948 (= lt!392193 (drop!435 lt!392165 (ite c!193846 lt!391916 lt!391920)))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!25 (LexerInterface!1609 List!11111 Int List!11112) Unit!17140)

(assert (=> d!329948 (= lt!392178 (tokensListTwoByTwoPredicateSeparableTokensDropList!25 lt!392220 lt!392165 (ite c!193846 lt!391916 lt!391920) (rules!9371 pt!21)))))

(assert (=> d!329948 (= lt!392165 (list!4105 (tokens!1509 pt!21)))))

(assert (=> d!329948 (= lt!392220 Lexer!1607)))

(declare-fun lt!392186 () Unit!17140)

(declare-fun Unit!17145 () Unit!17140)

(assert (=> d!329948 (= lt!392186 Unit!17145)))

(declare-fun e!737384 () Bool)

(assert (=> d!329948 (= (tokensListTwoByTwoPredicateSeparable!38 Lexer!1607 (tokens!1509 pt!21) 0 (rules!9371 pt!21)) e!737384)))

(declare-fun res!518851 () Bool)

(assert (=> d!329948 (=> res!518851 e!737384)))

(assert (=> d!329948 (= res!518851 (not (< lt!392216 (- (size!8748 (tokens!1509 pt!21)) 1))))))

(assert (=> d!329948 (= lt!392216 0)))

(assert (=> d!329948 (= lt!392152 Lexer!1607)))

(declare-fun lt!392206 () Unit!17140)

(declare-fun Unit!17146 () Unit!17140)

(assert (=> d!329948 (= lt!392206 Unit!17146)))

(assert (=> d!329948 (= (separableTokens!78 Lexer!1607 (slice!134 (tokens!1509 pt!21) (ite c!193846 lt!391916 lt!391920) (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916))) (rules!9371 pt!21)) (tokensListTwoByTwoPredicateSeparable!38 Lexer!1607 (slice!134 (tokens!1509 pt!21) (ite c!193846 lt!391916 lt!391920) (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916))) 0 (rules!9371 pt!21)))))

(declare-fun lt!392198 () Unit!17140)

(declare-fun Unit!17147 () Unit!17140)

(assert (=> d!329948 (= lt!392198 Unit!17147)))

(declare-fun e!737375 () Bool)

(assert (=> d!329948 (= (rulesProduceEachTokenIndividuallyList!484 Lexer!1607 (rules!9371 pt!21) (list!4105 (slice!134 (tokens!1509 pt!21) (ite c!193846 lt!391916 lt!391920) (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916))))) e!737375)))

(declare-fun res!518853 () Bool)

(assert (=> d!329948 (=> res!518853 e!737375)))

(declare-fun lt!392205 () List!11111)

(assert (=> d!329948 (= res!518853 (not (is-Cons!11087 lt!392205)))))

(assert (=> d!329948 (= lt!392205 (list!4105 (slice!134 (tokens!1509 pt!21) (ite c!193846 lt!391916 lt!391920) (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916)))))))

(declare-fun lt!392221 () LexerInterface!1609)

(assert (=> d!329948 (= lt!392221 Lexer!1607)))

(declare-fun lt!392170 () Unit!17140)

(declare-fun Unit!17148 () Unit!17140)

(assert (=> d!329948 (= lt!392170 Unit!17148)))

(declare-fun forall!2819 (BalanceConc!7174 Int) Bool)

(assert (=> d!329948 (= (rulesProduceEachTokenIndividually!651 Lexer!1607 (rules!9371 pt!21) (slice!134 (tokens!1509 pt!21) (ite c!193846 lt!391916 lt!391920) (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916)))) (forall!2819 (slice!134 (tokens!1509 pt!21) (ite c!193846 lt!391916 lt!391920) (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916))) lambda!46384))))

(declare-fun lt!392155 () Unit!17140)

(declare-fun lt!392179 () Unit!17140)

(assert (=> d!329948 (= lt!392155 lt!392179)))

(declare-fun lt!392204 () List!11111)

(assert (=> d!329948 (forall!2818 lt!392204 lambda!46384)))

(declare-fun lt!392196 () List!11111)

(assert (=> d!329948 (= lt!392179 (lemmaForallSubseq!84 lt!392204 lt!392196 lambda!46384))))

(assert (=> d!329948 (= lt!392196 (list!4105 (tokens!1509 pt!21)))))

(assert (=> d!329948 (= lt!392204 (list!4105 (slice!134 (tokens!1509 pt!21) (ite c!193846 lt!391916 lt!391920) (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916)))))))

(declare-fun lt!392185 () Unit!17140)

(declare-fun lt!392166 () Unit!17140)

(assert (=> d!329948 (= lt!392185 lt!392166)))

(declare-fun lt!392171 () List!11111)

(declare-fun slice!135 (List!11111 Int Int) List!11111)

(assert (=> d!329948 (subseq!184 (slice!135 lt!392171 (ite c!193846 lt!391916 lt!391920) (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916))) lt!392171)))

(declare-fun lemmaSliceSubseq!25 (List!11111 Int Int) Unit!17140)

(assert (=> d!329948 (= lt!392166 (lemmaSliceSubseq!25 lt!392171 (ite c!193846 lt!391916 lt!391920) (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916))))))

(assert (=> d!329948 (= lt!392171 (list!4105 (tokens!1509 pt!21)))))

(declare-fun lt!392217 () Unit!17140)

(declare-fun Unit!17149 () Unit!17140)

(assert (=> d!329948 (= lt!392217 Unit!17149)))

(assert (=> d!329948 (= (rulesProduceEachTokenIndividuallyList!484 Lexer!1607 (rules!9371 pt!21) (list!4105 (tokens!1509 pt!21))) e!737377)))

(declare-fun res!518845 () Bool)

(assert (=> d!329948 (=> res!518845 e!737377)))

(assert (=> d!329948 (= res!518845 (not (is-Cons!11087 lt!392158)))))

(assert (=> d!329948 (= lt!392158 (list!4105 (tokens!1509 pt!21)))))

(assert (=> d!329948 (= lt!392199 Lexer!1607)))

(declare-fun lt!392218 () Unit!17140)

(declare-fun Unit!17150 () Unit!17140)

(assert (=> d!329948 (= lt!392218 Unit!17150)))

(assert (=> d!329948 (= (rulesProduceEachTokenIndividually!651 Lexer!1607 (rules!9371 pt!21) (tokens!1509 pt!21)) (forall!2819 (tokens!1509 pt!21) lambda!46384))))

(declare-fun lt!392208 () Unit!17140)

(declare-fun lemmaInvariant!99 (PrintableTokens!506) Unit!17140)

(assert (=> d!329948 (= lt!392208 (lemmaInvariant!99 pt!21))))

(assert (=> d!329948 e!737382))

(declare-fun res!518852 () Bool)

(assert (=> d!329948 (=> (not res!518852) (not e!737382))))

(assert (=> d!329948 (= res!518852 (and (<= 0 (ite c!193846 lt!391916 lt!391920)) (<= (ite c!193846 lt!391916 lt!391920) (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916)))))))

(assert (=> d!329948 (= (slice!132 pt!21 (ite c!193846 lt!391916 lt!391920) (ite c!193846 (+ 1 lt!391920) (+ 1 lt!391916))) lt!392191)))

(declare-fun b!1153379 () Bool)

(assert (=> b!1153379 (= e!737378 (tokensListTwoByTwoPredicateSeparableList!81 lt!392220 (drop!435 lt!392165 (ite c!193846 lt!391916 lt!391920)) (rules!9371 pt!21)))))

(declare-fun lt!392188 () Unit!17140)

(declare-fun lt!392182 () Unit!17140)

(assert (=> b!1153379 (= lt!392188 lt!392182)))

(declare-fun lt!392211 () List!11111)

(assert (=> b!1153379 (forall!2818 lt!392211 lambda!46384)))

(assert (=> b!1153379 (= lt!392182 (lemmaForallSubseq!84 lt!392211 lt!392165 lambda!46384))))

(assert (=> b!1153379 (= lt!392211 (drop!435 lt!392165 (ite c!193846 lt!391916 lt!391920)))))

(declare-fun lt!392162 () Unit!17140)

(declare-fun lt!392219 () Unit!17140)

(assert (=> b!1153379 (= lt!392162 lt!392219)))

(assert (=> b!1153379 (subseq!184 (drop!435 lt!392165 (ite c!193846 lt!391916 lt!391920)) lt!392165)))

(assert (=> b!1153379 (= lt!392219 (lemmaDropSubseq!25 lt!392165 (ite c!193846 lt!391916 lt!391920)))))

(declare-fun b!1153380 () Bool)

(assert (=> b!1153380 (= e!737384 e!737385)))

(declare-fun res!518855 () Bool)

(assert (=> b!1153380 (=> (not res!518855) (not e!737385))))

(declare-fun separableTokensPredicate!105 (LexerInterface!1609 Token!3482 Token!3482 List!11112) Bool)

(declare-fun apply!2387 (BalanceConc!7174 Int) Token!3482)

(assert (=> b!1153380 (= res!518855 (separableTokensPredicate!105 lt!392152 (apply!2387 (tokens!1509 pt!21) lt!392216) (apply!2387 (tokens!1509 pt!21) (+ lt!392216 1)) (rules!9371 pt!21)))))

(declare-fun lt!392174 () Unit!17140)

(declare-fun Unit!17151 () Unit!17140)

(assert (=> b!1153380 (= lt!392174 Unit!17151)))

(declare-fun size!8749 (BalanceConc!7172) Int)

(declare-fun charsOf!1043 (Token!3482) BalanceConc!7172)

(assert (=> b!1153380 (> (size!8749 (charsOf!1043 (apply!2387 (tokens!1509 pt!21) (+ lt!392216 1)))) 0)))

(declare-fun lt!392202 () Unit!17140)

(declare-fun Unit!17152 () Unit!17140)

(assert (=> b!1153380 (= lt!392202 Unit!17152)))

(assert (=> b!1153380 (rulesProduceIndividualToken!654 lt!392152 (rules!9371 pt!21) (apply!2387 (tokens!1509 pt!21) (+ lt!392216 1)))))

(declare-fun lt!392159 () Unit!17140)

(declare-fun Unit!17153 () Unit!17140)

(assert (=> b!1153380 (= lt!392159 Unit!17153)))

(assert (=> b!1153380 (rulesProduceIndividualToken!654 lt!392152 (rules!9371 pt!21) (apply!2387 (tokens!1509 pt!21) lt!392216))))

(declare-fun lt!392210 () Unit!17140)

(declare-fun lt!392200 () Unit!17140)

(assert (=> b!1153380 (= lt!392210 lt!392200)))

(declare-fun lt!392173 () Token!3482)

(assert (=> b!1153380 (rulesProduceIndividualToken!654 lt!392152 (rules!9371 pt!21) lt!392173)))

(declare-fun lt!392168 () List!11111)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!264 (LexerInterface!1609 List!11112 List!11111 Token!3482) Unit!17140)

(assert (=> b!1153380 (= lt!392200 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!264 lt!392152 (rules!9371 pt!21) lt!392168 lt!392173))))

(assert (=> b!1153380 (= lt!392173 (apply!2387 (tokens!1509 pt!21) (+ lt!392216 1)))))

(assert (=> b!1153380 (= lt!392168 (list!4105 (tokens!1509 pt!21)))))

(declare-fun lt!392169 () Unit!17140)

(declare-fun lt!392195 () Unit!17140)

(assert (=> b!1153380 (= lt!392169 lt!392195)))

(declare-fun lt!392197 () Token!3482)

(assert (=> b!1153380 (rulesProduceIndividualToken!654 lt!392152 (rules!9371 pt!21) lt!392197)))

(declare-fun lt!392213 () List!11111)

(assert (=> b!1153380 (= lt!392195 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!264 lt!392152 (rules!9371 pt!21) lt!392213 lt!392197))))

(assert (=> b!1153380 (= lt!392197 (apply!2387 (tokens!1509 pt!21) lt!392216))))

(assert (=> b!1153380 (= lt!392213 (list!4105 (tokens!1509 pt!21)))))

(declare-fun lt!392164 () Unit!17140)

(declare-fun lt!392215 () Unit!17140)

(assert (=> b!1153380 (= lt!392164 lt!392215)))

(declare-fun lt!392153 () List!11111)

(declare-fun lt!392156 () Int)

(declare-fun tail!1659 (List!11111) List!11111)

(assert (=> b!1153380 (= (tail!1659 (drop!435 lt!392153 lt!392156)) (drop!435 lt!392153 (+ lt!392156 1)))))

(declare-fun lemmaDropTail!334 (List!11111 Int) Unit!17140)

(assert (=> b!1153380 (= lt!392215 (lemmaDropTail!334 lt!392153 lt!392156))))

(assert (=> b!1153380 (= lt!392156 (+ lt!392216 1))))

(assert (=> b!1153380 (= lt!392153 (list!4105 (tokens!1509 pt!21)))))

(declare-fun lt!392194 () Unit!17140)

(declare-fun lt!392184 () Unit!17140)

(assert (=> b!1153380 (= lt!392194 lt!392184)))

(declare-fun lt!392177 () List!11111)

(assert (=> b!1153380 (= (tail!1659 (drop!435 lt!392177 lt!392216)) (drop!435 lt!392177 (+ lt!392216 1)))))

(assert (=> b!1153380 (= lt!392184 (lemmaDropTail!334 lt!392177 lt!392216))))

(assert (=> b!1153380 (= lt!392177 (list!4105 (tokens!1509 pt!21)))))

(declare-fun lt!392207 () Unit!17140)

(declare-fun lt!392151 () Unit!17140)

(assert (=> b!1153380 (= lt!392207 lt!392151)))

(declare-fun lt!392180 () List!11111)

(declare-fun lt!392150 () Int)

(declare-fun head!2077 (List!11111) Token!3482)

(declare-fun apply!2388 (List!11111 Int) Token!3482)

(assert (=> b!1153380 (= (head!2077 (drop!435 lt!392180 lt!392150)) (apply!2388 lt!392180 lt!392150))))

(declare-fun lemmaDropApply!346 (List!11111 Int) Unit!17140)

(assert (=> b!1153380 (= lt!392151 (lemmaDropApply!346 lt!392180 lt!392150))))

(assert (=> b!1153380 (= lt!392150 (+ lt!392216 1))))

(assert (=> b!1153380 (= lt!392180 (list!4105 (tokens!1509 pt!21)))))

(declare-fun lt!392154 () Unit!17140)

(declare-fun lt!392212 () Unit!17140)

(assert (=> b!1153380 (= lt!392154 lt!392212)))

(declare-fun lt!392161 () List!11111)

(assert (=> b!1153380 (= (head!2077 (drop!435 lt!392161 lt!392216)) (apply!2388 lt!392161 lt!392216))))

(assert (=> b!1153380 (= lt!392212 (lemmaDropApply!346 lt!392161 lt!392216))))

(assert (=> b!1153380 (= lt!392161 (list!4105 (tokens!1509 pt!21)))))

(declare-fun b!1153381 () Bool)

(declare-fun e!737376 () Bool)

(assert (=> b!1153381 (= e!737376 (rulesProduceEachTokenIndividuallyList!484 lt!392201 (rules!9371 pt!21) (t!108591 lt!392172)))))

(declare-fun b!1153382 () Bool)

(assert (=> b!1153382 (= e!737386 (rulesProduceEachTokenIndividuallyList!484 lt!392220 (rules!9371 pt!21) (t!108591 lt!392193)))))

(declare-fun b!1153383 () Bool)

(assert (=> b!1153383 (= e!737381 (rulesProduceEachTokenIndividuallyList!484 lt!392199 (rules!9371 pt!21) (t!108591 lt!392158)))))

(declare-fun b!1153384 () Bool)

(declare-fun e!737387 () Bool)

(assert (=> b!1153384 (= e!737387 (rulesProduceEachTokenIndividuallyList!484 lt!392221 (rules!9371 pt!21) (t!108591 lt!392205)))))

(declare-fun b!1153385 () Bool)

(assert (=> b!1153385 (= e!737375 e!737387)))

(declare-fun res!518854 () Bool)

(assert (=> b!1153385 (=> (not res!518854) (not e!737387))))

(assert (=> b!1153385 (= res!518854 (rulesProduceIndividualToken!654 lt!392221 (rules!9371 pt!21) (h!16488 lt!392205)))))

(declare-fun b!1153386 () Bool)

(assert (=> b!1153386 (= e!737388 e!737376)))

(declare-fun res!518848 () Bool)

(assert (=> b!1153386 (=> (not res!518848) (not e!737376))))

(assert (=> b!1153386 (= res!518848 (rulesProduceIndividualToken!654 lt!392201 (rules!9371 pt!21) (h!16488 lt!392172)))))

(assert (= (and d!329948 res!518852) b!1153373))

(assert (= (and d!329948 (not res!518845)) b!1153375))

(assert (= (and b!1153375 res!518847) b!1153383))

(assert (= (and d!329948 (not res!518853)) b!1153385))

(assert (= (and b!1153385 res!518854) b!1153384))

(assert (= (and d!329948 (not res!518851)) b!1153380))

(assert (= (and b!1153380 res!518855) b!1153377))

(assert (= (and d!329948 (not res!518850)) b!1153376))

(assert (= (and b!1153376 res!518857) b!1153382))

(assert (= (and d!329948 res!518846) b!1153379))

(assert (= (and d!329948 (not res!518849)) b!1153386))

(assert (= (and b!1153386 res!518848) b!1153381))

(assert (= (and d!329948 res!518856) b!1153378))

(assert (= (and d!329948 res!518844) b!1153374))

(declare-fun m!1320589 () Bool)

(assert (=> b!1153381 m!1320589))

(declare-fun m!1320591 () Bool)

(assert (=> b!1153377 m!1320591))

(declare-fun m!1320593 () Bool)

(assert (=> b!1153380 m!1320593))

(declare-fun m!1320595 () Bool)

(assert (=> b!1153380 m!1320595))

(declare-fun m!1320597 () Bool)

(assert (=> b!1153380 m!1320597))

(assert (=> b!1153380 m!1320595))

(declare-fun m!1320599 () Bool)

(assert (=> b!1153380 m!1320599))

(declare-fun m!1320601 () Bool)

(assert (=> b!1153380 m!1320601))

(declare-fun m!1320603 () Bool)

(assert (=> b!1153380 m!1320603))

(declare-fun m!1320605 () Bool)

(assert (=> b!1153380 m!1320605))

(declare-fun m!1320607 () Bool)

(assert (=> b!1153380 m!1320607))

(declare-fun m!1320609 () Bool)

(assert (=> b!1153380 m!1320609))

(declare-fun m!1320611 () Bool)

(assert (=> b!1153380 m!1320611))

(declare-fun m!1320613 () Bool)

(assert (=> b!1153380 m!1320613))

(declare-fun m!1320615 () Bool)

(assert (=> b!1153380 m!1320615))

(declare-fun m!1320617 () Bool)

(assert (=> b!1153380 m!1320617))

(assert (=> b!1153380 m!1320595))

(assert (=> b!1153380 m!1320615))

(declare-fun m!1320619 () Bool)

(assert (=> b!1153380 m!1320619))

(declare-fun m!1320621 () Bool)

(assert (=> b!1153380 m!1320621))

(assert (=> b!1153380 m!1320619))

(declare-fun m!1320623 () Bool)

(assert (=> b!1153380 m!1320623))

(declare-fun m!1320625 () Bool)

(assert (=> b!1153380 m!1320625))

(declare-fun m!1320627 () Bool)

(assert (=> b!1153380 m!1320627))

(declare-fun m!1320629 () Bool)

(assert (=> b!1153380 m!1320629))

(declare-fun m!1320631 () Bool)

(assert (=> b!1153380 m!1320631))

(assert (=> b!1153380 m!1320629))

(declare-fun m!1320633 () Bool)

(assert (=> b!1153380 m!1320633))

(declare-fun m!1320635 () Bool)

(assert (=> b!1153380 m!1320635))

(declare-fun m!1320637 () Bool)

(assert (=> b!1153380 m!1320637))

(declare-fun m!1320639 () Bool)

(assert (=> b!1153380 m!1320639))

(assert (=> b!1153380 m!1320623))

(declare-fun m!1320641 () Bool)

(assert (=> b!1153380 m!1320641))

(declare-fun m!1320643 () Bool)

(assert (=> b!1153380 m!1320643))

(assert (=> b!1153380 m!1320603))

(assert (=> b!1153380 m!1320637))

(assert (=> b!1153380 m!1320637))

(assert (=> b!1153380 m!1320595))

(declare-fun m!1320645 () Bool)

(assert (=> b!1153380 m!1320645))

(declare-fun m!1320647 () Bool)

(assert (=> b!1153380 m!1320647))

(declare-fun m!1320649 () Bool)

(assert (=> b!1153383 m!1320649))

(declare-fun m!1320651 () Bool)

(assert (=> b!1153374 m!1320651))

(declare-fun m!1320653 () Bool)

(assert (=> b!1153374 m!1320653))

(assert (=> b!1153374 m!1320653))

(declare-fun m!1320655 () Bool)

(assert (=> b!1153374 m!1320655))

(declare-fun m!1320657 () Bool)

(assert (=> b!1153378 m!1320657))

(assert (=> b!1153378 m!1320657))

(declare-fun m!1320659 () Bool)

(assert (=> b!1153378 m!1320659))

(declare-fun m!1320661 () Bool)

(assert (=> b!1153378 m!1320661))

(declare-fun m!1320663 () Bool)

(assert (=> b!1153378 m!1320663))

(declare-fun m!1320665 () Bool)

(assert (=> b!1153385 m!1320665))

(declare-fun m!1320667 () Bool)

(assert (=> b!1153375 m!1320667))

(assert (=> b!1153373 m!1320383))

(declare-fun m!1320669 () Bool)

(assert (=> b!1153382 m!1320669))

(declare-fun m!1320671 () Bool)

(assert (=> b!1153376 m!1320671))

(assert (=> d!329948 m!1320607))

(declare-fun m!1320673 () Bool)

(assert (=> d!329948 m!1320673))

(declare-fun m!1320675 () Bool)

(assert (=> d!329948 m!1320675))

(assert (=> d!329948 m!1320653))

(declare-fun m!1320677 () Bool)

(assert (=> d!329948 m!1320677))

(assert (=> d!329948 m!1320657))

(assert (=> d!329948 m!1320383))

(assert (=> d!329948 m!1320607))

(declare-fun m!1320679 () Bool)

(assert (=> d!329948 m!1320679))

(declare-fun m!1320681 () Bool)

(assert (=> d!329948 m!1320681))

(declare-fun m!1320683 () Bool)

(assert (=> d!329948 m!1320683))

(assert (=> d!329948 m!1320607))

(declare-fun m!1320685 () Bool)

(assert (=> d!329948 m!1320685))

(declare-fun m!1320687 () Bool)

(assert (=> d!329948 m!1320687))

(declare-fun m!1320689 () Bool)

(assert (=> d!329948 m!1320689))

(assert (=> d!329948 m!1320653))

(declare-fun m!1320691 () Bool)

(assert (=> d!329948 m!1320691))

(assert (=> d!329948 m!1320653))

(declare-fun m!1320693 () Bool)

(assert (=> d!329948 m!1320693))

(declare-fun m!1320695 () Bool)

(assert (=> d!329948 m!1320695))

(declare-fun m!1320697 () Bool)

(assert (=> d!329948 m!1320697))

(declare-fun m!1320699 () Bool)

(assert (=> d!329948 m!1320699))

(assert (=> d!329948 m!1320657))

(declare-fun m!1320701 () Bool)

(assert (=> d!329948 m!1320701))

(declare-fun m!1320703 () Bool)

(assert (=> d!329948 m!1320703))

(declare-fun m!1320705 () Bool)

(assert (=> d!329948 m!1320705))

(assert (=> d!329948 m!1320653))

(declare-fun m!1320707 () Bool)

(assert (=> d!329948 m!1320707))

(assert (=> d!329948 m!1320653))

(declare-fun m!1320709 () Bool)

(assert (=> d!329948 m!1320709))

(assert (=> d!329948 m!1320697))

(declare-fun m!1320711 () Bool)

(assert (=> d!329948 m!1320711))

(assert (=> d!329948 m!1320687))

(declare-fun m!1320713 () Bool)

(assert (=> d!329948 m!1320713))

(assert (=> d!329948 m!1320395))

(assert (=> d!329948 m!1320653))

(assert (=> d!329948 m!1320655))

(assert (=> d!329948 m!1320655))

(declare-fun m!1320715 () Bool)

(assert (=> d!329948 m!1320715))

(declare-fun m!1320717 () Bool)

(assert (=> d!329948 m!1320717))

(assert (=> d!329948 m!1320703))

(declare-fun m!1320719 () Bool)

(assert (=> d!329948 m!1320719))

(declare-fun m!1320721 () Bool)

(assert (=> d!329948 m!1320721))

(declare-fun m!1320723 () Bool)

(assert (=> b!1153384 m!1320723))

(declare-fun m!1320725 () Bool)

(assert (=> b!1153386 m!1320725))

(assert (=> b!1153379 m!1320703))

(declare-fun m!1320727 () Bool)

(assert (=> b!1153379 m!1320727))

(assert (=> b!1153379 m!1320703))

(declare-fun m!1320729 () Bool)

(assert (=> b!1153379 m!1320729))

(assert (=> b!1153379 m!1320703))

(declare-fun m!1320731 () Bool)

(assert (=> b!1153379 m!1320731))

(declare-fun m!1320733 () Bool)

(assert (=> b!1153379 m!1320733))

(declare-fun m!1320735 () Bool)

(assert (=> b!1153379 m!1320735))

(assert (=> bm!82092 d!329948))

(declare-fun d!329966 () Bool)

(declare-fun lt!392224 () Bool)

(declare-fun forall!2822 (List!11109 Int) Bool)

(assert (=> d!329966 (= lt!392224 (forall!2822 (list!4103 indices!2) lambda!46346))))

(declare-fun forall!2823 (Conc!3574 Int) Bool)

(assert (=> d!329966 (= lt!392224 (forall!2823 (c!193847 indices!2) lambda!46346))))

(assert (=> d!329966 (= (forall!2813 indices!2 lambda!46346) lt!392224)))

(declare-fun bs!282711 () Bool)

(assert (= bs!282711 d!329966))

(assert (=> bs!282711 m!1320377))

(assert (=> bs!282711 m!1320377))

(declare-fun m!1320737 () Bool)

(assert (=> bs!282711 m!1320737))

(declare-fun m!1320739 () Bool)

(assert (=> bs!282711 m!1320739))

(assert (=> b!1153200 d!329966))

(declare-fun d!329968 () Bool)

(declare-fun c!193889 () Bool)

(assert (=> d!329968 (= c!193889 (is-Node!3577 (c!193851 acc!225)))))

(declare-fun e!737399 () Bool)

(assert (=> d!329968 (= (inv!14539 (c!193851 acc!225)) e!737399)))

(declare-fun b!1153401 () Bool)

(declare-fun inv!14559 (Conc!3577) Bool)

(assert (=> b!1153401 (= e!737399 (inv!14559 (c!193851 acc!225)))))

(declare-fun b!1153402 () Bool)

(declare-fun e!737400 () Bool)

(assert (=> b!1153402 (= e!737399 e!737400)))

(declare-fun res!518860 () Bool)

(assert (=> b!1153402 (= res!518860 (not (is-Leaf!5543 (c!193851 acc!225))))))

(assert (=> b!1153402 (=> res!518860 e!737400)))

(declare-fun b!1153403 () Bool)

(declare-fun inv!14561 (Conc!3577) Bool)

(assert (=> b!1153403 (= e!737400 (inv!14561 (c!193851 acc!225)))))

(assert (= (and d!329968 c!193889) b!1153401))

(assert (= (and d!329968 (not c!193889)) b!1153402))

(assert (= (and b!1153402 (not res!518860)) b!1153403))

(declare-fun m!1320741 () Bool)

(assert (=> b!1153401 m!1320741))

(declare-fun m!1320743 () Bool)

(assert (=> b!1153403 m!1320743))

(assert (=> b!1153199 d!329968))

(declare-fun b!1153410 () Bool)

(declare-fun e!737405 () Bool)

(declare-fun tp!332586 () Bool)

(declare-fun tp!332585 () Bool)

(assert (=> b!1153410 (= e!737405 (and (inv!14541 (left!9645 (c!193847 indices!2))) tp!332585 (inv!14541 (right!9975 (c!193847 indices!2))) tp!332586))))

(declare-fun b!1153411 () Bool)

(declare-fun inv!14562 (IArray!7153) Bool)

(assert (=> b!1153411 (= e!737405 (inv!14562 (xs!6279 (c!193847 indices!2))))))

(assert (=> b!1153202 (= tp!332567 (and (inv!14541 (c!193847 indices!2)) e!737405))))

(assert (= (and b!1153202 (is-Node!3574 (c!193847 indices!2))) b!1153410))

(assert (= (and b!1153202 (is-Leaf!5540 (c!193847 indices!2))) b!1153411))

(declare-fun m!1320745 () Bool)

(assert (=> b!1153410 m!1320745))

(declare-fun m!1320747 () Bool)

(assert (=> b!1153410 m!1320747))

(declare-fun m!1320749 () Bool)

(assert (=> b!1153411 m!1320749))

(assert (=> b!1153202 m!1320319))

(declare-fun b!1153422 () Bool)

(declare-fun b_free!27609 () Bool)

(declare-fun b_next!28313 () Bool)

(assert (=> b!1153422 (= b_free!27609 (not b_next!28313))))

(declare-fun tp!332594 () Bool)

(declare-fun b_and!80485 () Bool)

(assert (=> b!1153422 (= tp!332594 b_and!80485)))

(declare-fun b_free!27611 () Bool)

(declare-fun b_next!28315 () Bool)

(assert (=> b!1153422 (= b_free!27611 (not b_next!28315))))

(declare-fun tp!332595 () Bool)

(declare-fun b_and!80487 () Bool)

(assert (=> b!1153422 (= tp!332595 b_and!80487)))

(declare-fun e!737416 () Bool)

(assert (=> b!1153422 (= e!737416 (and tp!332594 tp!332595))))

(declare-fun b!1153421 () Bool)

(declare-fun e!737418 () Bool)

(declare-fun inv!14535 (String!13470) Bool)

(declare-fun inv!14563 (TokenValueInjection!3652) Bool)

(assert (=> b!1153421 (= e!737418 (and (inv!14535 (tag!2172 (h!16489 (rules!9371 pt!21)))) (inv!14563 (transformation!1910 (h!16489 (rules!9371 pt!21)))) e!737416))))

(declare-fun b!1153420 () Bool)

(declare-fun e!737417 () Bool)

(declare-fun tp!332593 () Bool)

(assert (=> b!1153420 (= e!737417 (and e!737418 tp!332593))))

(assert (=> b!1153201 (= tp!332565 e!737417)))

(assert (= b!1153421 b!1153422))

(assert (= b!1153420 b!1153421))

(assert (= (and b!1153201 (is-Cons!11088 (rules!9371 pt!21))) b!1153420))

(declare-fun m!1320751 () Bool)

(assert (=> b!1153421 m!1320751))

(declare-fun m!1320753 () Bool)

(assert (=> b!1153421 m!1320753))

(declare-fun e!737423 () Bool)

(declare-fun b!1153431 () Bool)

(declare-fun tp!332604 () Bool)

(declare-fun tp!332603 () Bool)

(assert (=> b!1153431 (= e!737423 (and (inv!14538 (left!9647 (c!193850 (tokens!1509 pt!21)))) tp!332604 (inv!14538 (right!9977 (c!193850 (tokens!1509 pt!21)))) tp!332603))))

(declare-fun b!1153433 () Bool)

(declare-fun e!737424 () Bool)

(declare-fun tp!332602 () Bool)

(assert (=> b!1153433 (= e!737424 tp!332602)))

(declare-fun b!1153432 () Bool)

(declare-fun inv!14564 (IArray!7157) Bool)

(assert (=> b!1153432 (= e!737423 (and (inv!14564 (xs!6281 (c!193850 (tokens!1509 pt!21)))) e!737424))))

(assert (=> b!1153196 (= tp!332566 (and (inv!14538 (c!193850 (tokens!1509 pt!21))) e!737423))))

(assert (= (and b!1153196 (is-Node!3576 (c!193850 (tokens!1509 pt!21)))) b!1153431))

(assert (= b!1153432 b!1153433))

(assert (= (and b!1153196 (is-Leaf!5542 (c!193850 (tokens!1509 pt!21)))) b!1153432))

(declare-fun m!1320755 () Bool)

(assert (=> b!1153431 m!1320755))

(declare-fun m!1320757 () Bool)

(assert (=> b!1153431 m!1320757))

(declare-fun m!1320759 () Bool)

(assert (=> b!1153432 m!1320759))

(assert (=> b!1153196 m!1320289))

(declare-fun b!1153442 () Bool)

(declare-fun tp!332613 () Bool)

(declare-fun e!737430 () Bool)

(declare-fun tp!332612 () Bool)

(assert (=> b!1153442 (= e!737430 (and (inv!14539 (left!9648 (c!193851 acc!225))) tp!332612 (inv!14539 (right!9978 (c!193851 acc!225))) tp!332613))))

(declare-fun b!1153444 () Bool)

(declare-fun e!737429 () Bool)

(declare-fun tp!332611 () Bool)

(assert (=> b!1153444 (= e!737429 tp!332611)))

(declare-fun b!1153443 () Bool)

(declare-fun inv!14565 (IArray!7159) Bool)

(assert (=> b!1153443 (= e!737430 (and (inv!14565 (xs!6282 (c!193851 acc!225))) e!737429))))

(assert (=> b!1153199 (= tp!332568 (and (inv!14539 (c!193851 acc!225)) e!737430))))

(assert (= (and b!1153199 (is-Node!3577 (c!193851 acc!225))) b!1153442))

(assert (= b!1153443 b!1153444))

(assert (= (and b!1153199 (is-Leaf!5543 (c!193851 acc!225))) b!1153443))

(declare-fun m!1320761 () Bool)

(assert (=> b!1153442 m!1320761))

(declare-fun m!1320763 () Bool)

(assert (=> b!1153442 m!1320763))

(declare-fun m!1320765 () Bool)

(assert (=> b!1153443 m!1320765))

(assert (=> b!1153199 m!1320305))

(push 1)

(assert (not d!329898))

(assert (not b!1153432))

(assert (not b!1153444))

(assert (not d!329920))

(assert (not b!1153401))

(assert (not b!1153433))

(assert (not b!1153301))

(assert (not b!1153312))

(assert (not d!329966))

(assert (not b!1153316))

(assert (not b!1153386))

(assert (not b!1153256))

(assert (not b!1153380))

(assert (not b!1153202))

(assert (not d!329946))

(assert (not b!1153393))

(assert (not b!1153431))

(assert (not b!1153374))

(assert (not b!1153443))

(assert (not b!1153287))

(assert (not b!1153199))

(assert (not b!1153377))

(assert (not b!1153254))

(assert (not b!1153319))

(assert (not b!1153375))

(assert (not b!1153381))

(assert (not b!1153403))

(assert (not d!329888))

(assert (not b!1153376))

(assert (not d!329896))

(assert (not d!329940))

(assert (not d!329894))

(assert (not b!1153384))

(assert (not b!1153421))

(assert (not d!329938))

(assert (not b!1153378))

(assert (not b!1153315))

(assert b_and!80485)

(assert (not d!329948))

(assert (not d!329942))

(assert (not b!1153293))

(assert (not b!1153373))

(assert (not b_next!28313))

(assert (not d!329922))

(assert (not b!1153379))

(assert (not d!329886))

(assert (not d!329884))

(assert (not d!329930))

(assert (not b!1153303))

(assert (not b!1153196))

(assert (not b!1153410))

(assert (not d!329900))

(assert (not b!1153420))

(assert (not b_next!28315))

(assert b_and!80487)

(assert (not b!1153382))

(assert (not d!329926))

(assert (not b!1153385))

(assert (not d!329932))

(assert (not d!329936))

(assert (not d!329934))

(assert (not b!1153294))

(assert (not b!1153383))

(assert (not b!1153255))

(assert (not bm!82098))

(assert (not b!1153442))

(assert (not b!1153310))

(assert (not b!1153394))

(assert (not d!329944))

(assert (not b!1153411))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80487)

(assert b_and!80485)

(assert (not b_next!28313))

(assert (not b_next!28315))

(check-sat)

(pop 1)

