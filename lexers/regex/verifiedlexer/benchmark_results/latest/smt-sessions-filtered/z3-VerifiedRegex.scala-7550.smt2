; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398238 () Bool)

(assert start!398238)

(declare-fun b!4176886 () Bool)

(declare-fun b_free!121207 () Bool)

(declare-fun b_next!121911 () Bool)

(assert (=> b!4176886 (= b_free!121207 (not b_next!121911))))

(declare-fun tp!1276452 () Bool)

(declare-fun b_and!326485 () Bool)

(assert (=> b!4176886 (= tp!1276452 b_and!326485)))

(declare-fun b_free!121209 () Bool)

(declare-fun b_next!121913 () Bool)

(assert (=> b!4176886 (= b_free!121209 (not b_next!121913))))

(declare-fun tp!1276450 () Bool)

(declare-fun b_and!326487 () Bool)

(assert (=> b!4176886 (= tp!1276450 b_and!326487)))

(declare-fun b!4176906 () Bool)

(declare-fun b_free!121211 () Bool)

(declare-fun b_next!121915 () Bool)

(assert (=> b!4176906 (= b_free!121211 (not b_next!121915))))

(declare-fun tp!1276442 () Bool)

(declare-fun b_and!326489 () Bool)

(assert (=> b!4176906 (= tp!1276442 b_and!326489)))

(declare-fun b_free!121213 () Bool)

(declare-fun b_next!121917 () Bool)

(assert (=> b!4176906 (= b_free!121213 (not b_next!121917))))

(declare-fun tp!1276441 () Bool)

(declare-fun b_and!326491 () Bool)

(assert (=> b!4176906 (= tp!1276441 b_and!326491)))

(declare-fun b!4176897 () Bool)

(declare-fun b_free!121215 () Bool)

(declare-fun b_next!121919 () Bool)

(assert (=> b!4176897 (= b_free!121215 (not b_next!121919))))

(declare-fun tp!1276449 () Bool)

(declare-fun b_and!326493 () Bool)

(assert (=> b!4176897 (= tp!1276449 b_and!326493)))

(declare-fun b_free!121217 () Bool)

(declare-fun b_next!121921 () Bool)

(assert (=> b!4176897 (= b_free!121217 (not b_next!121921))))

(declare-fun tp!1276446 () Bool)

(declare-fun b_and!326495 () Bool)

(assert (=> b!4176897 (= tp!1276446 b_and!326495)))

(declare-fun b!4176880 () Bool)

(declare-fun res!1712334 () Bool)

(declare-fun e!2593103 () Bool)

(assert (=> b!4176880 (=> (not res!1712334) (not e!2593103))))

(declare-datatypes ((C!25232 0))(
  ( (C!25233 (val!14778 Int)) )
))
(declare-datatypes ((List!45953 0))(
  ( (Nil!45829) (Cons!45829 (h!51249 C!25232) (t!344762 List!45953)) )
))
(declare-fun pBis!107 () List!45953)

(declare-fun input!3342 () List!45953)

(declare-fun isPrefix!4473 (List!45953 List!45953) Bool)

(assert (=> b!4176880 (= res!1712334 (isPrefix!4473 pBis!107 input!3342))))

(declare-fun b!4176881 () Bool)

(declare-fun e!2593110 () Bool)

(declare-fun tp_is_empty!22005 () Bool)

(declare-fun tp!1276451 () Bool)

(assert (=> b!4176881 (= e!2593110 (and tp_is_empty!22005 tp!1276451))))

(declare-fun b!4176882 () Bool)

(declare-fun e!2593109 () Bool)

(declare-fun e!2593100 () Bool)

(assert (=> b!4176882 (= e!2593109 e!2593100)))

(declare-fun res!1712323 () Bool)

(assert (=> b!4176882 (=> res!1712323 e!2593100)))

(declare-datatypes ((List!45954 0))(
  ( (Nil!45830) (Cons!45830 (h!51250 (_ BitVec 16)) (t!344763 List!45954)) )
))
(declare-datatypes ((TokenValue!7846 0))(
  ( (FloatLiteralValue!15692 (text!55367 List!45954)) (TokenValueExt!7845 (__x!27913 Int)) (Broken!39230 (value!237562 List!45954)) (Object!7969) (End!7846) (Def!7846) (Underscore!7846) (Match!7846) (Else!7846) (Error!7846) (Case!7846) (If!7846) (Extends!7846) (Abstract!7846) (Class!7846) (Val!7846) (DelimiterValue!15692 (del!7906 List!45954)) (KeywordValue!7852 (value!237563 List!45954)) (CommentValue!15692 (value!237564 List!45954)) (WhitespaceValue!15692 (value!237565 List!45954)) (IndentationValue!7846 (value!237566 List!45954)) (String!53095) (Int32!7846) (Broken!39231 (value!237567 List!45954)) (Boolean!7847) (Unit!64894) (OperatorValue!7849 (op!7906 List!45954)) (IdentifierValue!15692 (value!237568 List!45954)) (IdentifierValue!15693 (value!237569 List!45954)) (WhitespaceValue!15693 (value!237570 List!45954)) (True!15692) (False!15692) (Broken!39232 (value!237571 List!45954)) (Broken!39233 (value!237572 List!45954)) (True!15693) (RightBrace!7846) (RightBracket!7846) (Colon!7846) (Null!7846) (Comma!7846) (LeftBracket!7846) (False!15693) (LeftBrace!7846) (ImaginaryLiteralValue!7846 (text!55368 List!45954)) (StringLiteralValue!23538 (value!237573 List!45954)) (EOFValue!7846 (value!237574 List!45954)) (IdentValue!7846 (value!237575 List!45954)) (DelimiterValue!15693 (value!237576 List!45954)) (DedentValue!7846 (value!237577 List!45954)) (NewLineValue!7846 (value!237578 List!45954)) (IntegerValue!23538 (value!237579 (_ BitVec 32)) (text!55369 List!45954)) (IntegerValue!23539 (value!237580 Int) (text!55370 List!45954)) (Times!7846) (Or!7846) (Equal!7846) (Minus!7846) (Broken!39234 (value!237581 List!45954)) (And!7846) (Div!7846) (LessEqual!7846) (Mod!7846) (Concat!20367) (Not!7846) (Plus!7846) (SpaceValue!7846 (value!237582 List!45954)) (IntegerValue!23540 (value!237583 Int) (text!55371 List!45954)) (StringLiteralValue!23539 (text!55372 List!45954)) (FloatLiteralValue!15693 (text!55373 List!45954)) (BytesLiteralValue!7846 (value!237584 List!45954)) (CommentValue!15693 (value!237585 List!45954)) (StringLiteralValue!23540 (value!237586 List!45954)) (ErrorTokenValue!7846 (msg!7907 List!45954)) )
))
(declare-datatypes ((Regex!12521 0))(
  ( (ElementMatch!12521 (c!713484 C!25232)) (Concat!20368 (regOne!25554 Regex!12521) (regTwo!25554 Regex!12521)) (EmptyExpr!12521) (Star!12521 (reg!12850 Regex!12521)) (EmptyLang!12521) (Union!12521 (regOne!25555 Regex!12521) (regTwo!25555 Regex!12521)) )
))
(declare-datatypes ((String!53096 0))(
  ( (String!53097 (value!237587 String)) )
))
(declare-datatypes ((IArray!27659 0))(
  ( (IArray!27660 (innerList!13887 List!45953)) )
))
(declare-datatypes ((Conc!13827 0))(
  ( (Node!13827 (left!34145 Conc!13827) (right!34475 Conc!13827) (csize!27884 Int) (cheight!14038 Int)) (Leaf!21378 (xs!17133 IArray!27659) (csize!27885 Int)) (Empty!13827) )
))
(declare-datatypes ((BalanceConc!27248 0))(
  ( (BalanceConc!27249 (c!713485 Conc!13827)) )
))
(declare-datatypes ((TokenValueInjection!15120 0))(
  ( (TokenValueInjection!15121 (toValue!10300 Int) (toChars!10159 Int)) )
))
(declare-datatypes ((Rule!15032 0))(
  ( (Rule!15033 (regex!7616 Regex!12521) (tag!8480 String!53096) (isSeparator!7616 Bool) (transformation!7616 TokenValueInjection!15120)) )
))
(declare-datatypes ((Token!13946 0))(
  ( (Token!13947 (value!237588 TokenValue!7846) (rule!10672 Rule!15032) (size!33644 Int) (originalCharacters!8004 List!45953)) )
))
(declare-datatypes ((tuple2!43662 0))(
  ( (tuple2!43663 (_1!24965 Token!13946) (_2!24965 List!45953)) )
))
(declare-datatypes ((Option!9812 0))(
  ( (None!9811) (Some!9811 (v!40613 tuple2!43662)) )
))
(declare-fun lt!1487459 () Option!9812)

(declare-fun isEmpty!27112 (Option!9812) Bool)

(assert (=> b!4176882 (= res!1712323 (isEmpty!27112 lt!1487459))))

(declare-datatypes ((LexerInterface!7209 0))(
  ( (LexerInterfaceExt!7206 (__x!27914 Int)) (Lexer!7207) )
))
(declare-fun thiss!25986 () LexerInterface!7209)

(declare-fun rBis!167 () Rule!15032)

(declare-fun maxPrefixOneRule!3220 (LexerInterface!7209 Rule!15032 List!45953) Option!9812)

(assert (=> b!4176882 (= lt!1487459 (maxPrefixOneRule!3220 thiss!25986 rBis!167 input!3342))))

(declare-datatypes ((List!45955 0))(
  ( (Nil!45831) (Cons!45831 (h!51251 Rule!15032) (t!344764 List!45955)) )
))
(declare-fun rules!3843 () List!45955)

(declare-datatypes ((Unit!64895 0))(
  ( (Unit!64896) )
))
(declare-fun lt!1487457 () Unit!64895)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2348 (LexerInterface!7209 Rule!15032 List!45955) Unit!64895)

(assert (=> b!4176882 (= lt!1487457 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2348 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1487462 () Int)

(declare-fun lt!1487463 () Int)

(assert (=> b!4176882 (<= lt!1487462 lt!1487463)))

(declare-fun size!33645 (List!45953) Int)

(assert (=> b!4176882 (= lt!1487463 (size!33645 input!3342))))

(declare-fun lt!1487456 () Unit!64895)

(declare-fun lemmaIsPrefixThenSmallerEqSize!505 (List!45953 List!45953) Unit!64895)

(assert (=> b!4176882 (= lt!1487456 (lemmaIsPrefixThenSmallerEqSize!505 pBis!107 input!3342))))

(declare-fun b!4176883 () Bool)

(declare-fun e!2593101 () Bool)

(declare-fun tp!1276443 () Bool)

(assert (=> b!4176883 (= e!2593101 (and tp_is_empty!22005 tp!1276443))))

(declare-fun b!4176884 () Bool)

(declare-fun e!2593102 () Bool)

(declare-fun tp!1276448 () Bool)

(declare-fun e!2593105 () Bool)

(declare-fun inv!60353 (String!53096) Bool)

(declare-fun inv!60355 (TokenValueInjection!15120) Bool)

(assert (=> b!4176884 (= e!2593105 (and tp!1276448 (inv!60353 (tag!8480 rBis!167)) (inv!60355 (transformation!7616 rBis!167)) e!2593102))))

(declare-fun b!4176885 () Bool)

(declare-fun res!1712321 () Bool)

(assert (=> b!4176885 (=> (not res!1712321) (not e!2593103))))

(declare-fun isEmpty!27113 (List!45955) Bool)

(assert (=> b!4176885 (= res!1712321 (not (isEmpty!27113 rules!3843)))))

(declare-fun e!2593118 () Bool)

(assert (=> b!4176886 (= e!2593118 (and tp!1276452 tp!1276450))))

(declare-fun b!4176887 () Bool)

(declare-fun e!2593104 () Unit!64895)

(declare-fun Unit!64897 () Unit!64895)

(assert (=> b!4176887 (= e!2593104 Unit!64897)))

(declare-fun lt!1487450 () List!45953)

(declare-fun lt!1487464 () Unit!64895)

(declare-fun lemmaIsPrefixSameLengthThenSameList!983 (List!45953 List!45953 List!45953) Unit!64895)

(assert (=> b!4176887 (= lt!1487464 (lemmaIsPrefixSameLengthThenSameList!983 pBis!107 lt!1487450 input!3342))))

(assert (=> b!4176887 false))

(declare-fun tp!1276447 () Bool)

(declare-fun b!4176888 () Bool)

(declare-fun r!4142 () Rule!15032)

(declare-fun e!2593111 () Bool)

(declare-fun e!2593113 () Bool)

(assert (=> b!4176888 (= e!2593111 (and tp!1276447 (inv!60353 (tag!8480 r!4142)) (inv!60355 (transformation!7616 r!4142)) e!2593113))))

(declare-fun b!4176889 () Bool)

(declare-fun lt!1487449 () Int)

(declare-fun e!2593115 () Bool)

(declare-fun lt!1487466 () Int)

(assert (=> b!4176889 (= e!2593115 (or (>= lt!1487462 lt!1487449) (>= lt!1487463 lt!1487466)))))

(declare-fun lt!1487458 () Unit!64895)

(assert (=> b!4176889 (= lt!1487458 e!2593104)))

(declare-fun c!713483 () Bool)

(assert (=> b!4176889 (= c!713483 (= lt!1487462 (size!33645 lt!1487450)))))

(declare-fun res!1712324 () Bool)

(assert (=> start!398238 (=> (not res!1712324) (not e!2593103))))

(get-info :version)

(assert (=> start!398238 (= res!1712324 ((_ is Lexer!7207) thiss!25986))))

(assert (=> start!398238 e!2593103))

(assert (=> start!398238 true))

(assert (=> start!398238 e!2593105))

(assert (=> start!398238 e!2593111))

(declare-fun e!2593116 () Bool)

(assert (=> start!398238 e!2593116))

(declare-fun e!2593108 () Bool)

(assert (=> start!398238 e!2593108))

(assert (=> start!398238 e!2593110))

(assert (=> start!398238 e!2593101))

(declare-fun b!4176890 () Bool)

(declare-fun e!2593107 () Bool)

(declare-fun tp!1276445 () Bool)

(assert (=> b!4176890 (= e!2593116 (and e!2593107 tp!1276445))))

(declare-fun b!4176891 () Bool)

(declare-fun e!2593099 () Bool)

(assert (=> b!4176891 (= e!2593099 e!2593115)))

(declare-fun res!1712326 () Bool)

(assert (=> b!4176891 (=> res!1712326 e!2593115)))

(assert (=> b!4176891 (= res!1712326 (< lt!1487449 lt!1487462))))

(declare-fun lt!1487451 () BalanceConc!27248)

(declare-fun size!33646 (BalanceConc!27248) Int)

(assert (=> b!4176891 (= lt!1487449 (size!33646 lt!1487451))))

(declare-fun b!4176892 () Bool)

(declare-fun res!1712325 () Bool)

(assert (=> b!4176892 (=> (not res!1712325) (not e!2593103))))

(declare-fun rulesInvariant!6422 (LexerInterface!7209 List!45955) Bool)

(assert (=> b!4176892 (= res!1712325 (rulesInvariant!6422 thiss!25986 rules!3843))))

(declare-fun b!4176893 () Bool)

(declare-fun tp!1276444 () Bool)

(assert (=> b!4176893 (= e!2593108 (and tp_is_empty!22005 tp!1276444))))

(declare-fun b!4176894 () Bool)

(declare-fun res!1712319 () Bool)

(assert (=> b!4176894 (=> (not res!1712319) (not e!2593103))))

(declare-fun contains!9419 (List!45955 Rule!15032) Bool)

(assert (=> b!4176894 (= res!1712319 (contains!9419 rules!3843 r!4142))))

(declare-fun b!4176895 () Bool)

(declare-fun res!1712320 () Bool)

(assert (=> b!4176895 (=> (not res!1712320) (not e!2593103))))

(assert (=> b!4176895 (= res!1712320 (contains!9419 rules!3843 rBis!167))))

(declare-fun b!4176896 () Bool)

(declare-fun res!1712318 () Bool)

(assert (=> b!4176896 (=> res!1712318 e!2593109)))

(declare-fun lt!1487460 () Option!9812)

(declare-fun maxPrefix!4261 (LexerInterface!7209 List!45955 List!45953) Option!9812)

(assert (=> b!4176896 (= res!1712318 (not (= (maxPrefix!4261 thiss!25986 rules!3843 input!3342) lt!1487460)))))

(assert (=> b!4176897 (= e!2593102 (and tp!1276449 tp!1276446))))

(declare-fun b!4176898 () Bool)

(declare-fun Unit!64898 () Unit!64895)

(assert (=> b!4176898 (= e!2593104 Unit!64898)))

(declare-fun b!4176899 () Bool)

(declare-fun e!2593114 () Bool)

(assert (=> b!4176899 (= e!2593114 e!2593109)))

(declare-fun res!1712332 () Bool)

(assert (=> b!4176899 (=> res!1712332 e!2593109)))

(assert (=> b!4176899 (= res!1712332 (<= lt!1487462 lt!1487466))))

(assert (=> b!4176899 (= lt!1487462 (size!33645 pBis!107))))

(declare-fun b!4176900 () Bool)

(declare-fun res!1712322 () Bool)

(assert (=> b!4176900 (=> (not res!1712322) (not e!2593103))))

(declare-fun validRegex!5638 (Regex!12521) Bool)

(assert (=> b!4176900 (= res!1712322 (validRegex!5638 (regex!7616 r!4142)))))

(declare-fun b!4176901 () Bool)

(declare-fun tp!1276440 () Bool)

(assert (=> b!4176901 (= e!2593107 (and tp!1276440 (inv!60353 (tag!8480 (h!51251 rules!3843))) (inv!60355 (transformation!7616 (h!51251 rules!3843))) e!2593118))))

(declare-fun b!4176902 () Bool)

(declare-fun res!1712333 () Bool)

(assert (=> b!4176902 (=> (not res!1712333) (not e!2593103))))

(declare-fun ruleValid!3334 (LexerInterface!7209 Rule!15032) Bool)

(assert (=> b!4176902 (= res!1712333 (ruleValid!3334 thiss!25986 r!4142))))

(declare-fun b!4176903 () Bool)

(assert (=> b!4176903 (= e!2593100 e!2593099)))

(declare-fun res!1712328 () Bool)

(assert (=> b!4176903 (=> res!1712328 e!2593099)))

(assert (=> b!4176903 (= res!1712328 (= lt!1487450 pBis!107))))

(declare-fun lt!1487454 () tuple2!43662)

(declare-fun ++!11694 (List!45953 List!45953) List!45953)

(assert (=> b!4176903 (isPrefix!4473 lt!1487450 (++!11694 lt!1487450 (_2!24965 lt!1487454)))))

(declare-fun lt!1487452 () Unit!64895)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2980 (List!45953 List!45953) Unit!64895)

(assert (=> b!4176903 (= lt!1487452 (lemmaConcatTwoListThenFirstIsPrefix!2980 lt!1487450 (_2!24965 lt!1487454)))))

(declare-fun list!16553 (BalanceConc!27248) List!45953)

(assert (=> b!4176903 (= lt!1487450 (list!16553 lt!1487451))))

(declare-fun charsOf!5057 (Token!13946) BalanceConc!27248)

(assert (=> b!4176903 (= lt!1487451 (charsOf!5057 (_1!24965 lt!1487454)))))

(declare-fun get!14889 (Option!9812) tuple2!43662)

(assert (=> b!4176903 (= lt!1487454 (get!14889 lt!1487459))))

(declare-fun b!4176904 () Bool)

(declare-fun res!1712331 () Bool)

(assert (=> b!4176904 (=> (not res!1712331) (not e!2593103))))

(declare-fun p!2959 () List!45953)

(assert (=> b!4176904 (= res!1712331 (isPrefix!4473 p!2959 input!3342))))

(declare-fun b!4176905 () Bool)

(declare-fun res!1712330 () Bool)

(assert (=> b!4176905 (=> (not res!1712330) (not e!2593103))))

(declare-fun matchR!6260 (Regex!12521 List!45953) Bool)

(assert (=> b!4176905 (= res!1712330 (matchR!6260 (regex!7616 r!4142) p!2959))))

(assert (=> b!4176906 (= e!2593113 (and tp!1276442 tp!1276441))))

(declare-fun b!4176907 () Bool)

(declare-fun res!1712329 () Bool)

(assert (=> b!4176907 (=> res!1712329 e!2593109)))

(assert (=> b!4176907 (= res!1712329 (not (ruleValid!3334 thiss!25986 rBis!167)))))

(declare-fun b!4176908 () Bool)

(assert (=> b!4176908 (= e!2593103 (not e!2593114))))

(declare-fun res!1712327 () Bool)

(assert (=> b!4176908 (=> res!1712327 e!2593114)))

(assert (=> b!4176908 (= res!1712327 (not (= (maxPrefixOneRule!3220 thiss!25986 r!4142 input!3342) lt!1487460)))))

(declare-fun lt!1487455 () TokenValue!7846)

(declare-fun getSuffix!2768 (List!45953 List!45953) List!45953)

(assert (=> b!4176908 (= lt!1487460 (Some!9811 (tuple2!43663 (Token!13947 lt!1487455 r!4142 lt!1487466 p!2959) (getSuffix!2768 input!3342 p!2959))))))

(assert (=> b!4176908 (= lt!1487466 (size!33645 p!2959))))

(declare-fun lt!1487461 () BalanceConc!27248)

(declare-fun apply!10581 (TokenValueInjection!15120 BalanceConc!27248) TokenValue!7846)

(assert (=> b!4176908 (= lt!1487455 (apply!10581 (transformation!7616 r!4142) lt!1487461))))

(assert (=> b!4176908 (isPrefix!4473 input!3342 input!3342)))

(declare-fun lt!1487453 () Unit!64895)

(declare-fun lemmaIsPrefixRefl!2902 (List!45953 List!45953) Unit!64895)

(assert (=> b!4176908 (= lt!1487453 (lemmaIsPrefixRefl!2902 input!3342 input!3342))))

(declare-fun lt!1487465 () Unit!64895)

(declare-fun lemmaSemiInverse!2382 (TokenValueInjection!15120 BalanceConc!27248) Unit!64895)

(assert (=> b!4176908 (= lt!1487465 (lemmaSemiInverse!2382 (transformation!7616 r!4142) lt!1487461))))

(declare-fun seqFromList!5641 (List!45953) BalanceConc!27248)

(assert (=> b!4176908 (= lt!1487461 (seqFromList!5641 p!2959))))

(assert (= (and start!398238 res!1712324) b!4176904))

(assert (= (and b!4176904 res!1712331) b!4176880))

(assert (= (and b!4176880 res!1712334) b!4176885))

(assert (= (and b!4176885 res!1712321) b!4176892))

(assert (= (and b!4176892 res!1712325) b!4176894))

(assert (= (and b!4176894 res!1712319) b!4176895))

(assert (= (and b!4176895 res!1712320) b!4176900))

(assert (= (and b!4176900 res!1712322) b!4176905))

(assert (= (and b!4176905 res!1712330) b!4176902))

(assert (= (and b!4176902 res!1712333) b!4176908))

(assert (= (and b!4176908 (not res!1712327)) b!4176899))

(assert (= (and b!4176899 (not res!1712332)) b!4176907))

(assert (= (and b!4176907 (not res!1712329)) b!4176896))

(assert (= (and b!4176896 (not res!1712318)) b!4176882))

(assert (= (and b!4176882 (not res!1712323)) b!4176903))

(assert (= (and b!4176903 (not res!1712328)) b!4176891))

(assert (= (and b!4176891 (not res!1712326)) b!4176889))

(assert (= (and b!4176889 c!713483) b!4176887))

(assert (= (and b!4176889 (not c!713483)) b!4176898))

(assert (= b!4176884 b!4176897))

(assert (= start!398238 b!4176884))

(assert (= b!4176888 b!4176906))

(assert (= start!398238 b!4176888))

(assert (= b!4176901 b!4176886))

(assert (= b!4176890 b!4176901))

(assert (= (and start!398238 ((_ is Cons!45831) rules!3843)) b!4176890))

(assert (= (and start!398238 ((_ is Cons!45829) input!3342)) b!4176893))

(assert (= (and start!398238 ((_ is Cons!45829) pBis!107)) b!4176881))

(assert (= (and start!398238 ((_ is Cons!45829) p!2959)) b!4176883))

(declare-fun m!4766527 () Bool)

(assert (=> b!4176891 m!4766527))

(declare-fun m!4766529 () Bool)

(assert (=> b!4176907 m!4766529))

(declare-fun m!4766531 () Bool)

(assert (=> b!4176880 m!4766531))

(declare-fun m!4766533 () Bool)

(assert (=> b!4176905 m!4766533))

(declare-fun m!4766535 () Bool)

(assert (=> b!4176892 m!4766535))

(declare-fun m!4766537 () Bool)

(assert (=> b!4176894 m!4766537))

(declare-fun m!4766539 () Bool)

(assert (=> b!4176889 m!4766539))

(declare-fun m!4766541 () Bool)

(assert (=> b!4176884 m!4766541))

(declare-fun m!4766543 () Bool)

(assert (=> b!4176884 m!4766543))

(declare-fun m!4766545 () Bool)

(assert (=> b!4176901 m!4766545))

(declare-fun m!4766547 () Bool)

(assert (=> b!4176901 m!4766547))

(declare-fun m!4766549 () Bool)

(assert (=> b!4176888 m!4766549))

(declare-fun m!4766551 () Bool)

(assert (=> b!4176888 m!4766551))

(declare-fun m!4766553 () Bool)

(assert (=> b!4176885 m!4766553))

(declare-fun m!4766555 () Bool)

(assert (=> b!4176900 m!4766555))

(declare-fun m!4766557 () Bool)

(assert (=> b!4176896 m!4766557))

(declare-fun m!4766559 () Bool)

(assert (=> b!4176899 m!4766559))

(declare-fun m!4766561 () Bool)

(assert (=> b!4176904 m!4766561))

(declare-fun m!4766563 () Bool)

(assert (=> b!4176908 m!4766563))

(declare-fun m!4766565 () Bool)

(assert (=> b!4176908 m!4766565))

(declare-fun m!4766567 () Bool)

(assert (=> b!4176908 m!4766567))

(declare-fun m!4766569 () Bool)

(assert (=> b!4176908 m!4766569))

(declare-fun m!4766571 () Bool)

(assert (=> b!4176908 m!4766571))

(declare-fun m!4766573 () Bool)

(assert (=> b!4176908 m!4766573))

(declare-fun m!4766575 () Bool)

(assert (=> b!4176908 m!4766575))

(declare-fun m!4766577 () Bool)

(assert (=> b!4176908 m!4766577))

(declare-fun m!4766579 () Bool)

(assert (=> b!4176903 m!4766579))

(declare-fun m!4766581 () Bool)

(assert (=> b!4176903 m!4766581))

(declare-fun m!4766583 () Bool)

(assert (=> b!4176903 m!4766583))

(declare-fun m!4766585 () Bool)

(assert (=> b!4176903 m!4766585))

(assert (=> b!4176903 m!4766579))

(declare-fun m!4766587 () Bool)

(assert (=> b!4176903 m!4766587))

(declare-fun m!4766589 () Bool)

(assert (=> b!4176903 m!4766589))

(declare-fun m!4766591 () Bool)

(assert (=> b!4176887 m!4766591))

(declare-fun m!4766593 () Bool)

(assert (=> b!4176882 m!4766593))

(declare-fun m!4766595 () Bool)

(assert (=> b!4176882 m!4766595))

(declare-fun m!4766597 () Bool)

(assert (=> b!4176882 m!4766597))

(declare-fun m!4766599 () Bool)

(assert (=> b!4176882 m!4766599))

(declare-fun m!4766601 () Bool)

(assert (=> b!4176882 m!4766601))

(declare-fun m!4766603 () Bool)

(assert (=> b!4176895 m!4766603))

(declare-fun m!4766605 () Bool)

(assert (=> b!4176902 m!4766605))

(check-sat (not b!4176899) (not b!4176880) (not b_next!121919) (not b!4176903) (not b!4176881) b_and!326495 b_and!326493 (not b!4176882) (not b!4176884) (not b!4176883) (not b_next!121921) (not b!4176900) (not b!4176907) (not b_next!121915) b_and!326485 (not b!4176893) b_and!326489 (not b!4176901) b_and!326491 (not b!4176905) (not b!4176908) b_and!326487 (not b!4176885) (not b!4176891) (not b!4176890) (not b!4176902) (not b!4176894) (not b_next!121917) (not b!4176896) (not b!4176887) tp_is_empty!22005 (not b!4176895) (not b_next!121911) (not b!4176889) (not b!4176888) (not b!4176904) (not b_next!121913) (not b!4176892))
(check-sat b_and!326489 b_and!326491 (not b_next!121919) b_and!326487 b_and!326495 (not b_next!121917) (not b_next!121911) b_and!326493 (not b_next!121921) (not b_next!121915) b_and!326485 (not b_next!121913))
