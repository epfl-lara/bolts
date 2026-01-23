; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!190486 () Bool)

(assert start!190486)

(declare-fun b!1899405 () Bool)

(declare-fun b_free!53237 () Bool)

(declare-fun b_next!53941 () Bool)

(assert (=> b!1899405 (= b_free!53237 (not b_next!53941))))

(declare-fun tp!542311 () Bool)

(declare-fun b_and!146919 () Bool)

(assert (=> b!1899405 (= tp!542311 b_and!146919)))

(declare-fun b_free!53239 () Bool)

(declare-fun b_next!53943 () Bool)

(assert (=> b!1899405 (= b_free!53239 (not b_next!53943))))

(declare-fun tp!542309 () Bool)

(declare-fun b_and!146921 () Bool)

(assert (=> b!1899405 (= tp!542309 b_and!146921)))

(declare-fun b!1899410 () Bool)

(declare-fun b_free!53241 () Bool)

(declare-fun b_next!53945 () Bool)

(assert (=> b!1899410 (= b_free!53241 (not b_next!53945))))

(declare-fun tp!542315 () Bool)

(declare-fun b_and!146923 () Bool)

(assert (=> b!1899410 (= tp!542315 b_and!146923)))

(declare-fun b_free!53243 () Bool)

(declare-fun b_next!53947 () Bool)

(assert (=> b!1899410 (= b_free!53243 (not b_next!53947))))

(declare-fun tp!542318 () Bool)

(declare-fun b_and!146925 () Bool)

(assert (=> b!1899410 (= tp!542318 b_and!146925)))

(declare-fun b!1899426 () Bool)

(declare-fun b_free!53245 () Bool)

(declare-fun b_next!53949 () Bool)

(assert (=> b!1899426 (= b_free!53245 (not b_next!53949))))

(declare-fun tp!542316 () Bool)

(declare-fun b_and!146927 () Bool)

(assert (=> b!1899426 (= tp!542316 b_and!146927)))

(declare-fun b_free!53247 () Bool)

(declare-fun b_next!53951 () Bool)

(assert (=> b!1899426 (= b_free!53247 (not b_next!53951))))

(declare-fun tp!542314 () Bool)

(declare-fun b_and!146929 () Bool)

(assert (=> b!1899426 (= tp!542314 b_and!146929)))

(declare-fun e!1212931 () Bool)

(declare-fun e!1212935 () Bool)

(declare-fun tp!542313 () Bool)

(declare-fun b!1899403 () Bool)

(declare-datatypes ((List!21424 0))(
  ( (Nil!21342) (Cons!21342 (h!26743 (_ BitVec 16)) (t!176695 List!21424)) )
))
(declare-datatypes ((TokenValue!3929 0))(
  ( (FloatLiteralValue!7858 (text!27948 List!21424)) (TokenValueExt!3928 (__x!13356 Int)) (Broken!19645 (value!119667 List!21424)) (Object!4010) (End!3929) (Def!3929) (Underscore!3929) (Match!3929) (Else!3929) (Error!3929) (Case!3929) (If!3929) (Extends!3929) (Abstract!3929) (Class!3929) (Val!3929) (DelimiterValue!7858 (del!3989 List!21424)) (KeywordValue!3935 (value!119668 List!21424)) (CommentValue!7858 (value!119669 List!21424)) (WhitespaceValue!7858 (value!119670 List!21424)) (IndentationValue!3929 (value!119671 List!21424)) (String!24764) (Int32!3929) (Broken!19646 (value!119672 List!21424)) (Boolean!3930) (Unit!35678) (OperatorValue!3932 (op!3989 List!21424)) (IdentifierValue!7858 (value!119673 List!21424)) (IdentifierValue!7859 (value!119674 List!21424)) (WhitespaceValue!7859 (value!119675 List!21424)) (True!7858) (False!7858) (Broken!19647 (value!119676 List!21424)) (Broken!19648 (value!119677 List!21424)) (True!7859) (RightBrace!3929) (RightBracket!3929) (Colon!3929) (Null!3929) (Comma!3929) (LeftBracket!3929) (False!7859) (LeftBrace!3929) (ImaginaryLiteralValue!3929 (text!27949 List!21424)) (StringLiteralValue!11787 (value!119678 List!21424)) (EOFValue!3929 (value!119679 List!21424)) (IdentValue!3929 (value!119680 List!21424)) (DelimiterValue!7859 (value!119681 List!21424)) (DedentValue!3929 (value!119682 List!21424)) (NewLineValue!3929 (value!119683 List!21424)) (IntegerValue!11787 (value!119684 (_ BitVec 32)) (text!27950 List!21424)) (IntegerValue!11788 (value!119685 Int) (text!27951 List!21424)) (Times!3929) (Or!3929) (Equal!3929) (Minus!3929) (Broken!19649 (value!119686 List!21424)) (And!3929) (Div!3929) (LessEqual!3929) (Mod!3929) (Concat!9147) (Not!3929) (Plus!3929) (SpaceValue!3929 (value!119687 List!21424)) (IntegerValue!11789 (value!119688 Int) (text!27952 List!21424)) (StringLiteralValue!11788 (text!27953 List!21424)) (FloatLiteralValue!7859 (text!27954 List!21424)) (BytesLiteralValue!3929 (value!119689 List!21424)) (CommentValue!7859 (value!119690 List!21424)) (StringLiteralValue!11789 (value!119691 List!21424)) (ErrorTokenValue!3929 (msg!3990 List!21424)) )
))
(declare-datatypes ((C!10582 0))(
  ( (C!10583 (val!6243 Int)) )
))
(declare-datatypes ((List!21425 0))(
  ( (Nil!21343) (Cons!21343 (h!26744 C!10582) (t!176696 List!21425)) )
))
(declare-datatypes ((Regex!5218 0))(
  ( (ElementMatch!5218 (c!309610 C!10582)) (Concat!9148 (regOne!10948 Regex!5218) (regTwo!10948 Regex!5218)) (EmptyExpr!5218) (Star!5218 (reg!5547 Regex!5218)) (EmptyLang!5218) (Union!5218 (regOne!10949 Regex!5218) (regTwo!10949 Regex!5218)) )
))
(declare-datatypes ((String!24765 0))(
  ( (String!24766 (value!119692 String)) )
))
(declare-datatypes ((IArray!14213 0))(
  ( (IArray!14214 (innerList!7164 List!21425)) )
))
(declare-datatypes ((Conc!7104 0))(
  ( (Node!7104 (left!17103 Conc!7104) (right!17433 Conc!7104) (csize!14438 Int) (cheight!7315 Int)) (Leaf!10464 (xs!9998 IArray!14213) (csize!14439 Int)) (Empty!7104) )
))
(declare-datatypes ((BalanceConc!14024 0))(
  ( (BalanceConc!14025 (c!309611 Conc!7104)) )
))
(declare-datatypes ((TokenValueInjection!7442 0))(
  ( (TokenValueInjection!7443 (toValue!5410 Int) (toChars!5269 Int)) )
))
(declare-datatypes ((Rule!7386 0))(
  ( (Rule!7387 (regex!3793 Regex!5218) (tag!4217 String!24765) (isSeparator!3793 Bool) (transformation!3793 TokenValueInjection!7442)) )
))
(declare-datatypes ((Token!7138 0))(
  ( (Token!7139 (value!119693 TokenValue!3929) (rule!5986 Rule!7386) (size!16883 Int) (originalCharacters!4600 List!21425)) )
))
(declare-datatypes ((List!21426 0))(
  ( (Nil!21344) (Cons!21344 (h!26745 Token!7138) (t!176697 List!21426)) )
))
(declare-fun tokens!598 () List!21426)

(declare-fun inv!28445 (Token!7138) Bool)

(assert (=> b!1899403 (= e!1212935 (and (inv!28445 (h!26745 tokens!598)) e!1212931 tp!542313))))

(declare-fun b!1899404 () Bool)

(declare-fun e!1212925 () Bool)

(assert (=> b!1899404 (= e!1212925 (not true))))

(declare-fun lt!726297 () Bool)

(declare-datatypes ((LexerInterface!3406 0))(
  ( (LexerInterfaceExt!3403 (__x!13357 Int)) (Lexer!3404) )
))
(declare-fun thiss!23328 () LexerInterface!3406)

(declare-datatypes ((List!21427 0))(
  ( (Nil!21345) (Cons!21345 (h!26746 Rule!7386) (t!176698 List!21427)) )
))
(declare-fun rules!3198 () List!21427)

(declare-fun rulesValidInductive!1287 (LexerInterface!3406 List!21427) Bool)

(assert (=> b!1899404 (= lt!726297 (rulesValidInductive!1287 thiss!23328 rules!3198))))

(declare-fun separatorToken!354 () Token!7138)

(declare-fun lt!726288 () List!21425)

(declare-fun lt!726292 () List!21425)

(declare-fun ++!5736 (List!21425 List!21425) List!21425)

(declare-fun printWithSeparatorTokenWhenNeededList!449 (LexerInterface!3406 List!21427 List!21426 Token!7138) List!21425)

(assert (=> b!1899404 (= lt!726292 (++!5736 lt!726288 (printWithSeparatorTokenWhenNeededList!449 thiss!23328 rules!3198 (t!176697 tokens!598) separatorToken!354)))))

(declare-fun e!1212939 () Bool)

(assert (=> b!1899404 e!1212939))

(declare-fun res!847909 () Bool)

(assert (=> b!1899404 (=> (not res!847909) (not e!1212939))))

(declare-datatypes ((Option!4291 0))(
  ( (None!4290) (Some!4290 (v!26319 Rule!7386)) )
))
(declare-fun lt!726291 () Option!4291)

(declare-fun isDefined!3589 (Option!4291) Bool)

(assert (=> b!1899404 (= res!847909 (isDefined!3589 lt!726291))))

(declare-fun getRuleFromTag!636 (LexerInterface!3406 List!21427 String!24765) Option!4291)

(assert (=> b!1899404 (= lt!726291 (getRuleFromTag!636 thiss!23328 rules!3198 (tag!4217 (rule!5986 (h!26745 tokens!598)))))))

(declare-datatypes ((Unit!35679 0))(
  ( (Unit!35680) )
))
(declare-fun lt!726295 () Unit!35679)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!636 (LexerInterface!3406 List!21427 List!21425 Token!7138) Unit!35679)

(assert (=> b!1899404 (= lt!726295 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!636 thiss!23328 rules!3198 lt!726288 (h!26745 tokens!598)))))

(declare-fun e!1212940 () Bool)

(assert (=> b!1899404 e!1212940))

(declare-fun res!847910 () Bool)

(assert (=> b!1899404 (=> (not res!847910) (not e!1212940))))

(declare-datatypes ((tuple2!20122 0))(
  ( (tuple2!20123 (_1!11530 Token!7138) (_2!11530 List!21425)) )
))
(declare-datatypes ((Option!4292 0))(
  ( (None!4291) (Some!4291 (v!26320 tuple2!20122)) )
))
(declare-fun lt!726289 () Option!4292)

(declare-fun isDefined!3590 (Option!4292) Bool)

(assert (=> b!1899404 (= res!847910 (isDefined!3590 lt!726289))))

(declare-fun maxPrefix!1852 (LexerInterface!3406 List!21427 List!21425) Option!4292)

(assert (=> b!1899404 (= lt!726289 (maxPrefix!1852 thiss!23328 rules!3198 lt!726288))))

(declare-fun lt!726298 () BalanceConc!14024)

(declare-fun list!8681 (BalanceConc!14024) List!21425)

(assert (=> b!1899404 (= lt!726288 (list!8681 lt!726298))))

(declare-fun e!1212943 () Bool)

(assert (=> b!1899404 e!1212943))

(declare-fun res!847904 () Bool)

(assert (=> b!1899404 (=> (not res!847904) (not e!1212943))))

(declare-fun lt!726290 () Option!4291)

(assert (=> b!1899404 (= res!847904 (isDefined!3589 lt!726290))))

(assert (=> b!1899404 (= lt!726290 (getRuleFromTag!636 thiss!23328 rules!3198 (tag!4217 (rule!5986 separatorToken!354))))))

(declare-fun lt!726285 () List!21425)

(declare-fun lt!726293 () Unit!35679)

(assert (=> b!1899404 (= lt!726293 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!636 thiss!23328 rules!3198 lt!726285 separatorToken!354))))

(declare-fun charsOf!2349 (Token!7138) BalanceConc!14024)

(assert (=> b!1899404 (= lt!726285 (list!8681 (charsOf!2349 separatorToken!354)))))

(declare-fun lt!726296 () Unit!35679)

(declare-fun lemmaEqSameImage!501 (TokenValueInjection!7442 BalanceConc!14024 BalanceConc!14024) Unit!35679)

(declare-fun seqFromList!2665 (List!21425) BalanceConc!14024)

(assert (=> b!1899404 (= lt!726296 (lemmaEqSameImage!501 (transformation!3793 (rule!5986 (h!26745 tokens!598))) lt!726298 (seqFromList!2665 (originalCharacters!4600 (h!26745 tokens!598)))))))

(declare-fun lt!726287 () Unit!35679)

(declare-fun lemmaSemiInverse!772 (TokenValueInjection!7442 BalanceConc!14024) Unit!35679)

(assert (=> b!1899404 (= lt!726287 (lemmaSemiInverse!772 (transformation!3793 (rule!5986 (h!26745 tokens!598))) lt!726298))))

(assert (=> b!1899404 (= lt!726298 (charsOf!2349 (h!26745 tokens!598)))))

(declare-fun res!847907 () Bool)

(assert (=> start!190486 (=> (not res!847907) (not e!1212925))))

(assert (=> start!190486 (= res!847907 (is-Lexer!3404 thiss!23328))))

(assert (=> start!190486 e!1212925))

(assert (=> start!190486 true))

(declare-fun e!1212933 () Bool)

(assert (=> start!190486 e!1212933))

(assert (=> start!190486 e!1212935))

(declare-fun e!1212924 () Bool)

(assert (=> start!190486 (and (inv!28445 separatorToken!354) e!1212924)))

(declare-fun e!1212927 () Bool)

(assert (=> b!1899405 (= e!1212927 (and tp!542311 tp!542309))))

(declare-fun b!1899406 () Bool)

(declare-fun get!6595 (Option!4292) tuple2!20122)

(assert (=> b!1899406 (= e!1212940 (= (_1!11530 (get!6595 lt!726289)) (h!26745 tokens!598)))))

(declare-fun b!1899407 () Bool)

(declare-fun res!847901 () Bool)

(assert (=> b!1899407 (=> (not res!847901) (not e!1212925))))

(declare-fun rulesInvariant!3013 (LexerInterface!3406 List!21427) Bool)

(assert (=> b!1899407 (= res!847901 (rulesInvariant!3013 thiss!23328 rules!3198))))

(declare-fun b!1899408 () Bool)

(declare-fun res!847912 () Bool)

(assert (=> b!1899408 (=> (not res!847912) (not e!1212925))))

(assert (=> b!1899408 (= res!847912 (isSeparator!3793 (rule!5986 separatorToken!354)))))

(declare-fun b!1899409 () Bool)

(declare-fun res!847913 () Bool)

(assert (=> b!1899409 (=> (not res!847913) (not e!1212925))))

(declare-fun sepAndNonSepRulesDisjointChars!891 (List!21427 List!21427) Bool)

(assert (=> b!1899409 (= res!847913 (sepAndNonSepRulesDisjointChars!891 rules!3198 rules!3198))))

(declare-fun e!1212937 () Bool)

(assert (=> b!1899410 (= e!1212937 (and tp!542315 tp!542318))))

(declare-fun e!1212934 () Bool)

(declare-fun b!1899411 () Bool)

(declare-fun tp!542317 () Bool)

(declare-fun inv!28442 (String!24765) Bool)

(declare-fun inv!28446 (TokenValueInjection!7442) Bool)

(assert (=> b!1899411 (= e!1212934 (and tp!542317 (inv!28442 (tag!4217 (rule!5986 separatorToken!354))) (inv!28446 (transformation!3793 (rule!5986 separatorToken!354))) e!1212927))))

(declare-fun b!1899412 () Bool)

(declare-fun e!1212926 () Bool)

(declare-fun tp!542321 () Bool)

(declare-fun e!1212942 () Bool)

(assert (=> b!1899412 (= e!1212942 (and tp!542321 (inv!28442 (tag!4217 (h!26746 rules!3198))) (inv!28446 (transformation!3793 (h!26746 rules!3198))) e!1212926))))

(declare-fun b!1899413 () Bool)

(declare-fun tp!542320 () Bool)

(assert (=> b!1899413 (= e!1212933 (and e!1212942 tp!542320))))

(declare-fun b!1899414 () Bool)

(declare-fun res!847902 () Bool)

(assert (=> b!1899414 (=> (not res!847902) (not e!1212925))))

(declare-fun lambda!74224 () Int)

(declare-fun forall!4473 (List!21426 Int) Bool)

(assert (=> b!1899414 (= res!847902 (forall!4473 tokens!598 lambda!74224))))

(declare-fun b!1899415 () Bool)

(declare-fun e!1212936 () Bool)

(assert (=> b!1899415 (= e!1212939 e!1212936)))

(declare-fun res!847906 () Bool)

(assert (=> b!1899415 (=> (not res!847906) (not e!1212936))))

(declare-fun lt!726294 () Rule!7386)

(declare-fun matchR!2504 (Regex!5218 List!21425) Bool)

(assert (=> b!1899415 (= res!847906 (matchR!2504 (regex!3793 lt!726294) lt!726288))))

(declare-fun get!6596 (Option!4291) Rule!7386)

(assert (=> b!1899415 (= lt!726294 (get!6596 lt!726291))))

(declare-fun b!1899416 () Bool)

(declare-fun e!1212923 () Bool)

(declare-fun lt!726286 () Rule!7386)

(assert (=> b!1899416 (= e!1212923 (= (rule!5986 separatorToken!354) lt!726286))))

(declare-fun b!1899417 () Bool)

(assert (=> b!1899417 (= e!1212936 (= (rule!5986 (h!26745 tokens!598)) lt!726294))))

(declare-fun b!1899418 () Bool)

(assert (=> b!1899418 (= e!1212943 e!1212923)))

(declare-fun res!847905 () Bool)

(assert (=> b!1899418 (=> (not res!847905) (not e!1212923))))

(assert (=> b!1899418 (= res!847905 (matchR!2504 (regex!3793 lt!726286) lt!726285))))

(assert (=> b!1899418 (= lt!726286 (get!6596 lt!726290))))

(declare-fun b!1899419 () Bool)

(declare-fun res!847908 () Bool)

(assert (=> b!1899419 (=> (not res!847908) (not e!1212925))))

(declare-fun rulesProduceEachTokenIndividuallyList!1137 (LexerInterface!3406 List!21427 List!21426) Bool)

(assert (=> b!1899419 (= res!847908 (rulesProduceEachTokenIndividuallyList!1137 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1899420 () Bool)

(declare-fun res!847911 () Bool)

(assert (=> b!1899420 (=> (not res!847911) (not e!1212925))))

(assert (=> b!1899420 (= res!847911 (is-Cons!21344 tokens!598))))

(declare-fun b!1899421 () Bool)

(declare-fun tp!542310 () Bool)

(declare-fun inv!21 (TokenValue!3929) Bool)

(assert (=> b!1899421 (= e!1212924 (and (inv!21 (value!119693 separatorToken!354)) e!1212934 tp!542310))))

(declare-fun b!1899422 () Bool)

(declare-fun res!847903 () Bool)

(assert (=> b!1899422 (=> (not res!847903) (not e!1212925))))

(declare-fun isEmpty!13099 (List!21427) Bool)

(assert (=> b!1899422 (= res!847903 (not (isEmpty!13099 rules!3198)))))

(declare-fun tp!542319 () Bool)

(declare-fun e!1212929 () Bool)

(declare-fun b!1899423 () Bool)

(assert (=> b!1899423 (= e!1212931 (and (inv!21 (value!119693 (h!26745 tokens!598))) e!1212929 tp!542319))))

(declare-fun tp!542312 () Bool)

(declare-fun b!1899424 () Bool)

(assert (=> b!1899424 (= e!1212929 (and tp!542312 (inv!28442 (tag!4217 (rule!5986 (h!26745 tokens!598)))) (inv!28446 (transformation!3793 (rule!5986 (h!26745 tokens!598)))) e!1212937))))

(declare-fun b!1899425 () Bool)

(declare-fun res!847914 () Bool)

(assert (=> b!1899425 (=> (not res!847914) (not e!1212925))))

(declare-fun rulesProduceIndividualToken!1578 (LexerInterface!3406 List!21427 Token!7138) Bool)

(assert (=> b!1899425 (= res!847914 (rulesProduceIndividualToken!1578 thiss!23328 rules!3198 separatorToken!354))))

(assert (=> b!1899426 (= e!1212926 (and tp!542316 tp!542314))))

(assert (= (and start!190486 res!847907) b!1899422))

(assert (= (and b!1899422 res!847903) b!1899407))

(assert (= (and b!1899407 res!847901) b!1899419))

(assert (= (and b!1899419 res!847908) b!1899425))

(assert (= (and b!1899425 res!847914) b!1899408))

(assert (= (and b!1899408 res!847912) b!1899414))

(assert (= (and b!1899414 res!847902) b!1899409))

(assert (= (and b!1899409 res!847913) b!1899420))

(assert (= (and b!1899420 res!847911) b!1899404))

(assert (= (and b!1899404 res!847904) b!1899418))

(assert (= (and b!1899418 res!847905) b!1899416))

(assert (= (and b!1899404 res!847910) b!1899406))

(assert (= (and b!1899404 res!847909) b!1899415))

(assert (= (and b!1899415 res!847906) b!1899417))

(assert (= b!1899412 b!1899426))

(assert (= b!1899413 b!1899412))

(assert (= (and start!190486 (is-Cons!21345 rules!3198)) b!1899413))

(assert (= b!1899424 b!1899410))

(assert (= b!1899423 b!1899424))

(assert (= b!1899403 b!1899423))

(assert (= (and start!190486 (is-Cons!21344 tokens!598)) b!1899403))

(assert (= b!1899411 b!1899405))

(assert (= b!1899421 b!1899411))

(assert (= start!190486 b!1899421))

(declare-fun m!2330467 () Bool)

(assert (=> b!1899419 m!2330467))

(declare-fun m!2330469 () Bool)

(assert (=> b!1899424 m!2330469))

(declare-fun m!2330471 () Bool)

(assert (=> b!1899424 m!2330471))

(declare-fun m!2330473 () Bool)

(assert (=> b!1899423 m!2330473))

(declare-fun m!2330475 () Bool)

(assert (=> b!1899414 m!2330475))

(declare-fun m!2330477 () Bool)

(assert (=> b!1899421 m!2330477))

(declare-fun m!2330479 () Bool)

(assert (=> b!1899409 m!2330479))

(declare-fun m!2330481 () Bool)

(assert (=> b!1899425 m!2330481))

(declare-fun m!2330483 () Bool)

(assert (=> b!1899412 m!2330483))

(declare-fun m!2330485 () Bool)

(assert (=> b!1899412 m!2330485))

(declare-fun m!2330487 () Bool)

(assert (=> b!1899406 m!2330487))

(declare-fun m!2330489 () Bool)

(assert (=> b!1899403 m!2330489))

(declare-fun m!2330491 () Bool)

(assert (=> b!1899415 m!2330491))

(declare-fun m!2330493 () Bool)

(assert (=> b!1899415 m!2330493))

(declare-fun m!2330495 () Bool)

(assert (=> b!1899404 m!2330495))

(declare-fun m!2330497 () Bool)

(assert (=> b!1899404 m!2330497))

(declare-fun m!2330499 () Bool)

(assert (=> b!1899404 m!2330499))

(declare-fun m!2330501 () Bool)

(assert (=> b!1899404 m!2330501))

(declare-fun m!2330503 () Bool)

(assert (=> b!1899404 m!2330503))

(declare-fun m!2330505 () Bool)

(assert (=> b!1899404 m!2330505))

(declare-fun m!2330507 () Bool)

(assert (=> b!1899404 m!2330507))

(declare-fun m!2330509 () Bool)

(assert (=> b!1899404 m!2330509))

(assert (=> b!1899404 m!2330495))

(declare-fun m!2330511 () Bool)

(assert (=> b!1899404 m!2330511))

(declare-fun m!2330513 () Bool)

(assert (=> b!1899404 m!2330513))

(declare-fun m!2330515 () Bool)

(assert (=> b!1899404 m!2330515))

(assert (=> b!1899404 m!2330511))

(declare-fun m!2330517 () Bool)

(assert (=> b!1899404 m!2330517))

(declare-fun m!2330519 () Bool)

(assert (=> b!1899404 m!2330519))

(declare-fun m!2330521 () Bool)

(assert (=> b!1899404 m!2330521))

(declare-fun m!2330523 () Bool)

(assert (=> b!1899404 m!2330523))

(declare-fun m!2330525 () Bool)

(assert (=> b!1899404 m!2330525))

(declare-fun m!2330527 () Bool)

(assert (=> b!1899404 m!2330527))

(assert (=> b!1899404 m!2330501))

(declare-fun m!2330529 () Bool)

(assert (=> b!1899404 m!2330529))

(declare-fun m!2330531 () Bool)

(assert (=> b!1899407 m!2330531))

(declare-fun m!2330533 () Bool)

(assert (=> b!1899422 m!2330533))

(declare-fun m!2330535 () Bool)

(assert (=> b!1899418 m!2330535))

(declare-fun m!2330537 () Bool)

(assert (=> b!1899418 m!2330537))

(declare-fun m!2330539 () Bool)

(assert (=> b!1899411 m!2330539))

(declare-fun m!2330541 () Bool)

(assert (=> b!1899411 m!2330541))

(declare-fun m!2330543 () Bool)

(assert (=> start!190486 m!2330543))

(push 1)

(assert (not b!1899406))

(assert b_and!146929)

(assert (not b!1899412))

(assert (not b!1899407))

(assert (not b!1899404))

(assert (not b!1899409))

(assert (not b!1899411))

(assert (not b!1899413))

(assert (not b!1899419))

(assert (not b!1899403))

(assert b_and!146919)

(assert (not b!1899423))

(assert b_and!146925)

(assert (not b_next!53945))

(assert (not b!1899425))

(assert (not b_next!53941))

(assert (not b_next!53943))

(assert (not b!1899414))

(assert b_and!146927)

(assert b_and!146923)

(assert (not b_next!53949))

(assert (not start!190486))

(assert (not b_next!53951))

(assert (not b!1899422))

(assert (not b_next!53947))

(assert (not b!1899424))

(assert (not b!1899418))

(assert (not b!1899415))

(assert b_and!146921)

(assert (not b!1899421))

(check-sat)

(pop 1)

(push 1)

(assert b_and!146929)

(assert (not b_next!53941))

(assert (not b_next!53943))

(assert (not b_next!53949))

(assert b_and!146919)

(assert (not b_next!53951))

(assert (not b_next!53947))

(assert b_and!146925)

(assert (not b_next!53945))

(assert b_and!146921)

(assert b_and!146927)

(assert b_and!146923)

(check-sat)

(pop 1)

