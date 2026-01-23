; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398250 () Bool)

(assert start!398250)

(declare-fun b!4177438 () Bool)

(declare-fun b_free!121279 () Bool)

(declare-fun b_next!121983 () Bool)

(assert (=> b!4177438 (= b_free!121279 (not b_next!121983))))

(declare-fun tp!1276682 () Bool)

(declare-fun b_and!326557 () Bool)

(assert (=> b!4177438 (= tp!1276682 b_and!326557)))

(declare-fun b_free!121281 () Bool)

(declare-fun b_next!121985 () Bool)

(assert (=> b!4177438 (= b_free!121281 (not b_next!121985))))

(declare-fun tp!1276684 () Bool)

(declare-fun b_and!326559 () Bool)

(assert (=> b!4177438 (= tp!1276684 b_and!326559)))

(declare-fun b!4177441 () Bool)

(declare-fun b_free!121283 () Bool)

(declare-fun b_next!121987 () Bool)

(assert (=> b!4177441 (= b_free!121283 (not b_next!121987))))

(declare-fun tp!1276674 () Bool)

(declare-fun b_and!326561 () Bool)

(assert (=> b!4177441 (= tp!1276674 b_and!326561)))

(declare-fun b_free!121285 () Bool)

(declare-fun b_next!121989 () Bool)

(assert (=> b!4177441 (= b_free!121285 (not b_next!121989))))

(declare-fun tp!1276681 () Bool)

(declare-fun b_and!326563 () Bool)

(assert (=> b!4177441 (= tp!1276681 b_and!326563)))

(declare-fun b!4177420 () Bool)

(declare-fun b_free!121287 () Bool)

(declare-fun b_next!121991 () Bool)

(assert (=> b!4177420 (= b_free!121287 (not b_next!121991))))

(declare-fun tp!1276677 () Bool)

(declare-fun b_and!326565 () Bool)

(assert (=> b!4177420 (= tp!1276677 b_and!326565)))

(declare-fun b_free!121289 () Bool)

(declare-fun b_next!121993 () Bool)

(assert (=> b!4177420 (= b_free!121289 (not b_next!121993))))

(declare-fun tp!1276679 () Bool)

(declare-fun b_and!326567 () Bool)

(assert (=> b!4177420 (= tp!1276679 b_and!326567)))

(declare-fun b!4177419 () Bool)

(declare-fun res!1712645 () Bool)

(declare-fun e!2593472 () Bool)

(assert (=> b!4177419 (=> (not res!1712645) (not e!2593472))))

(declare-datatypes ((List!45971 0))(
  ( (Nil!45847) (Cons!45847 (h!51267 (_ BitVec 16)) (t!344780 List!45971)) )
))
(declare-datatypes ((TokenValue!7852 0))(
  ( (FloatLiteralValue!15704 (text!55409 List!45971)) (TokenValueExt!7851 (__x!27925 Int)) (Broken!39260 (value!237733 List!45971)) (Object!7975) (End!7852) (Def!7852) (Underscore!7852) (Match!7852) (Else!7852) (Error!7852) (Case!7852) (If!7852) (Extends!7852) (Abstract!7852) (Class!7852) (Val!7852) (DelimiterValue!15704 (del!7912 List!45971)) (KeywordValue!7858 (value!237734 List!45971)) (CommentValue!15704 (value!237735 List!45971)) (WhitespaceValue!15704 (value!237736 List!45971)) (IndentationValue!7852 (value!237737 List!45971)) (String!53125) (Int32!7852) (Broken!39261 (value!237738 List!45971)) (Boolean!7853) (Unit!64924) (OperatorValue!7855 (op!7912 List!45971)) (IdentifierValue!15704 (value!237739 List!45971)) (IdentifierValue!15705 (value!237740 List!45971)) (WhitespaceValue!15705 (value!237741 List!45971)) (True!15704) (False!15704) (Broken!39262 (value!237742 List!45971)) (Broken!39263 (value!237743 List!45971)) (True!15705) (RightBrace!7852) (RightBracket!7852) (Colon!7852) (Null!7852) (Comma!7852) (LeftBracket!7852) (False!15705) (LeftBrace!7852) (ImaginaryLiteralValue!7852 (text!55410 List!45971)) (StringLiteralValue!23556 (value!237744 List!45971)) (EOFValue!7852 (value!237745 List!45971)) (IdentValue!7852 (value!237746 List!45971)) (DelimiterValue!15705 (value!237747 List!45971)) (DedentValue!7852 (value!237748 List!45971)) (NewLineValue!7852 (value!237749 List!45971)) (IntegerValue!23556 (value!237750 (_ BitVec 32)) (text!55411 List!45971)) (IntegerValue!23557 (value!237751 Int) (text!55412 List!45971)) (Times!7852) (Or!7852) (Equal!7852) (Minus!7852) (Broken!39264 (value!237752 List!45971)) (And!7852) (Div!7852) (LessEqual!7852) (Mod!7852) (Concat!20379) (Not!7852) (Plus!7852) (SpaceValue!7852 (value!237753 List!45971)) (IntegerValue!23558 (value!237754 Int) (text!55413 List!45971)) (StringLiteralValue!23557 (text!55414 List!45971)) (FloatLiteralValue!15705 (text!55415 List!45971)) (BytesLiteralValue!7852 (value!237755 List!45971)) (CommentValue!15705 (value!237756 List!45971)) (StringLiteralValue!23558 (value!237757 List!45971)) (ErrorTokenValue!7852 (msg!7913 List!45971)) )
))
(declare-datatypes ((C!25244 0))(
  ( (C!25245 (val!14784 Int)) )
))
(declare-datatypes ((List!45972 0))(
  ( (Nil!45848) (Cons!45848 (h!51268 C!25244) (t!344781 List!45972)) )
))
(declare-datatypes ((IArray!27671 0))(
  ( (IArray!27672 (innerList!13893 List!45972)) )
))
(declare-datatypes ((Conc!13833 0))(
  ( (Node!13833 (left!34154 Conc!13833) (right!34484 Conc!13833) (csize!27896 Int) (cheight!14044 Int)) (Leaf!21387 (xs!17139 IArray!27671) (csize!27897 Int)) (Empty!13833) )
))
(declare-datatypes ((BalanceConc!27260 0))(
  ( (BalanceConc!27261 (c!713520 Conc!13833)) )
))
(declare-datatypes ((Regex!12527 0))(
  ( (ElementMatch!12527 (c!713521 C!25244)) (Concat!20380 (regOne!25566 Regex!12527) (regTwo!25566 Regex!12527)) (EmptyExpr!12527) (Star!12527 (reg!12856 Regex!12527)) (EmptyLang!12527) (Union!12527 (regOne!25567 Regex!12527) (regTwo!25567 Regex!12527)) )
))
(declare-datatypes ((String!53126 0))(
  ( (String!53127 (value!237758 String)) )
))
(declare-datatypes ((TokenValueInjection!15132 0))(
  ( (TokenValueInjection!15133 (toValue!10306 Int) (toChars!10165 Int)) )
))
(declare-datatypes ((Rule!15044 0))(
  ( (Rule!15045 (regex!7622 Regex!12527) (tag!8486 String!53126) (isSeparator!7622 Bool) (transformation!7622 TokenValueInjection!15132)) )
))
(declare-fun r!4142 () Rule!15044)

(declare-fun validRegex!5644 (Regex!12527) Bool)

(assert (=> b!4177419 (= res!1712645 (validRegex!5644 (regex!7622 r!4142)))))

(declare-fun e!2593468 () Bool)

(assert (=> b!4177420 (= e!2593468 (and tp!1276677 tp!1276679))))

(declare-fun b!4177421 () Bool)

(declare-fun e!2593464 () Bool)

(declare-fun tp_is_empty!22017 () Bool)

(declare-fun tp!1276683 () Bool)

(assert (=> b!4177421 (= e!2593464 (and tp_is_empty!22017 tp!1276683))))

(declare-fun b!4177422 () Bool)

(declare-fun e!2593478 () Bool)

(declare-fun tp!1276678 () Bool)

(assert (=> b!4177422 (= e!2593478 (and tp_is_empty!22017 tp!1276678))))

(declare-fun e!2593471 () Bool)

(declare-fun e!2593470 () Bool)

(declare-fun tp!1276675 () Bool)

(declare-fun b!4177423 () Bool)

(declare-fun inv!60368 (String!53126) Bool)

(declare-fun inv!60370 (TokenValueInjection!15132) Bool)

(assert (=> b!4177423 (= e!2593470 (and tp!1276675 (inv!60368 (tag!8486 r!4142)) (inv!60370 (transformation!7622 r!4142)) e!2593471))))

(declare-fun b!4177424 () Bool)

(declare-fun res!1712644 () Bool)

(assert (=> b!4177424 (=> (not res!1712644) (not e!2593472))))

(declare-fun p!2959 () List!45972)

(declare-fun input!3342 () List!45972)

(declare-fun isPrefix!4479 (List!45972 List!45972) Bool)

(assert (=> b!4177424 (= res!1712644 (isPrefix!4479 p!2959 input!3342))))

(declare-fun b!4177425 () Bool)

(declare-fun e!2593479 () Bool)

(declare-fun e!2593465 () Bool)

(assert (=> b!4177425 (= e!2593479 e!2593465)))

(declare-fun res!1712654 () Bool)

(assert (=> b!4177425 (=> res!1712654 e!2593465)))

(declare-datatypes ((Token!13958 0))(
  ( (Token!13959 (value!237759 TokenValue!7852) (rule!10678 Rule!15044) (size!33662 Int) (originalCharacters!8010 List!45972)) )
))
(declare-datatypes ((tuple2!43674 0))(
  ( (tuple2!43675 (_1!24971 Token!13958) (_2!24971 List!45972)) )
))
(declare-datatypes ((Option!9818 0))(
  ( (None!9817) (Some!9817 (v!40619 tuple2!43674)) )
))
(declare-fun lt!1487780 () Option!9818)

(declare-fun isEmpty!27124 (Option!9818) Bool)

(assert (=> b!4177425 (= res!1712654 (isEmpty!27124 lt!1487780))))

(declare-datatypes ((LexerInterface!7215 0))(
  ( (LexerInterfaceExt!7212 (__x!27926 Int)) (Lexer!7213) )
))
(declare-fun thiss!25986 () LexerInterface!7215)

(declare-fun rBis!167 () Rule!15044)

(declare-fun maxPrefixOneRule!3226 (LexerInterface!7215 Rule!15044 List!45972) Option!9818)

(assert (=> b!4177425 (= lt!1487780 (maxPrefixOneRule!3226 thiss!25986 rBis!167 input!3342))))

(declare-datatypes ((List!45973 0))(
  ( (Nil!45849) (Cons!45849 (h!51269 Rule!15044) (t!344782 List!45973)) )
))
(declare-fun rules!3843 () List!45973)

(declare-datatypes ((Unit!64925 0))(
  ( (Unit!64926) )
))
(declare-fun lt!1487789 () Unit!64925)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2354 (LexerInterface!7215 Rule!15044 List!45973) Unit!64925)

(assert (=> b!4177425 (= lt!1487789 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2354 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1487788 () Int)

(declare-fun size!33663 (List!45972) Int)

(assert (=> b!4177425 (<= lt!1487788 (size!33663 input!3342))))

(declare-fun lt!1487781 () Unit!64925)

(declare-fun pBis!107 () List!45972)

(declare-fun lemmaIsPrefixThenSmallerEqSize!511 (List!45972 List!45972) Unit!64925)

(assert (=> b!4177425 (= lt!1487781 (lemmaIsPrefixThenSmallerEqSize!511 pBis!107 input!3342))))

(declare-fun b!4177426 () Bool)

(declare-fun e!2593477 () Bool)

(assert (=> b!4177426 (= e!2593477 e!2593479)))

(declare-fun res!1712649 () Bool)

(assert (=> b!4177426 (=> res!1712649 e!2593479)))

(declare-fun lt!1487785 () Int)

(assert (=> b!4177426 (= res!1712649 (<= lt!1487788 lt!1487785))))

(assert (=> b!4177426 (= lt!1487788 (size!33663 pBis!107))))

(declare-fun b!4177427 () Bool)

(declare-fun res!1712657 () Bool)

(assert (=> b!4177427 (=> (not res!1712657) (not e!2593472))))

(declare-fun ruleValid!3340 (LexerInterface!7215 Rule!15044) Bool)

(assert (=> b!4177427 (= res!1712657 (ruleValid!3340 thiss!25986 r!4142))))

(declare-fun b!4177429 () Bool)

(declare-fun e!2593469 () Bool)

(assert (=> b!4177429 (= e!2593469 (validRegex!5644 (regex!7622 rBis!167)))))

(assert (=> b!4177429 false))

(declare-fun lt!1487792 () Token!13958)

(declare-fun lt!1487779 () tuple2!43674)

(declare-fun lt!1487778 () List!45972)

(declare-fun lt!1487796 () Unit!64925)

(declare-fun lt!1487782 () List!45972)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!16 (LexerInterface!7215 List!45973 List!45972 Token!13958 List!45972 List!45972 List!45972 List!45972 Rule!15044 Token!13958) Unit!64925)

(assert (=> b!4177429 (= lt!1487796 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!16 thiss!25986 rules!3843 p!2959 lt!1487792 input!3342 lt!1487778 lt!1487782 (_2!24971 lt!1487779) rBis!167 (_1!24971 lt!1487779)))))

(declare-fun b!4177430 () Bool)

(declare-fun res!1712651 () Bool)

(assert (=> b!4177430 (=> (not res!1712651) (not e!2593472))))

(declare-fun contains!9425 (List!45973 Rule!15044) Bool)

(assert (=> b!4177430 (= res!1712651 (contains!9425 rules!3843 r!4142))))

(declare-fun b!4177431 () Bool)

(declare-fun e!2593484 () Bool)

(declare-fun e!2593467 () Bool)

(assert (=> b!4177431 (= e!2593484 e!2593467)))

(declare-fun res!1712647 () Bool)

(assert (=> b!4177431 (=> res!1712647 e!2593467)))

(declare-fun lt!1487777 () Int)

(assert (=> b!4177431 (= res!1712647 (< lt!1487777 lt!1487788))))

(declare-fun lt!1487790 () BalanceConc!27260)

(declare-fun size!33664 (BalanceConc!27260) Int)

(assert (=> b!4177431 (= lt!1487777 (size!33664 lt!1487790))))

(declare-fun b!4177432 () Bool)

(declare-fun e!2593476 () Bool)

(declare-fun tp!1276686 () Bool)

(assert (=> b!4177432 (= e!2593476 (and tp_is_empty!22017 tp!1276686))))

(declare-fun b!4177433 () Bool)

(declare-fun e!2593482 () Bool)

(declare-fun e!2593475 () Bool)

(declare-fun tp!1276685 () Bool)

(assert (=> b!4177433 (= e!2593482 (and e!2593475 tp!1276685))))

(declare-fun b!4177434 () Bool)

(declare-fun res!1712650 () Bool)

(assert (=> b!4177434 (=> (not res!1712650) (not e!2593472))))

(assert (=> b!4177434 (= res!1712650 (contains!9425 rules!3843 rBis!167))))

(declare-fun b!4177435 () Bool)

(declare-fun res!1712652 () Bool)

(assert (=> b!4177435 (=> res!1712652 e!2593479)))

(assert (=> b!4177435 (= res!1712652 (not (ruleValid!3340 thiss!25986 rBis!167)))))

(declare-fun b!4177436 () Bool)

(declare-fun res!1712658 () Bool)

(assert (=> b!4177436 (=> (not res!1712658) (not e!2593472))))

(declare-fun rulesInvariant!6428 (LexerInterface!7215 List!45973) Bool)

(assert (=> b!4177436 (= res!1712658 (rulesInvariant!6428 thiss!25986 rules!3843))))

(declare-fun b!4177437 () Bool)

(declare-fun res!1712648 () Bool)

(assert (=> b!4177437 (=> (not res!1712648) (not e!2593472))))

(declare-fun isEmpty!27125 (List!45973) Bool)

(assert (=> b!4177437 (= res!1712648 (not (isEmpty!27125 rules!3843)))))

(declare-fun e!2593483 () Bool)

(assert (=> b!4177438 (= e!2593483 (and tp!1276682 tp!1276684))))

(declare-fun b!4177439 () Bool)

(declare-fun e!2593481 () Unit!64925)

(declare-fun Unit!64927 () Unit!64925)

(assert (=> b!4177439 (= e!2593481 Unit!64927)))

(declare-fun b!4177440 () Bool)

(declare-fun res!1712643 () Bool)

(assert (=> b!4177440 (=> (not res!1712643) (not e!2593472))))

(assert (=> b!4177440 (= res!1712643 (isPrefix!4479 pBis!107 input!3342))))

(assert (=> b!4177441 (= e!2593471 (and tp!1276674 tp!1276681))))

(declare-fun b!4177442 () Bool)

(assert (=> b!4177442 (= e!2593467 e!2593469)))

(declare-fun res!1712653 () Bool)

(assert (=> b!4177442 (=> res!1712653 e!2593469)))

(assert (=> b!4177442 (= res!1712653 (>= lt!1487788 lt!1487777))))

(declare-fun lt!1487787 () Unit!64925)

(assert (=> b!4177442 (= lt!1487787 e!2593481)))

(declare-fun c!713519 () Bool)

(assert (=> b!4177442 (= c!713519 (= lt!1487788 (size!33663 lt!1487782)))))

(declare-fun tp!1276676 () Bool)

(declare-fun b!4177443 () Bool)

(assert (=> b!4177443 (= e!2593475 (and tp!1276676 (inv!60368 (tag!8486 (h!51269 rules!3843))) (inv!60370 (transformation!7622 (h!51269 rules!3843))) e!2593468))))

(declare-fun b!4177444 () Bool)

(assert (=> b!4177444 (= e!2593465 e!2593484)))

(declare-fun res!1712642 () Bool)

(assert (=> b!4177444 (=> res!1712642 e!2593484)))

(assert (=> b!4177444 (= res!1712642 (= lt!1487782 pBis!107))))

(declare-fun ++!11700 (List!45972 List!45972) List!45972)

(assert (=> b!4177444 (isPrefix!4479 lt!1487782 (++!11700 lt!1487782 (_2!24971 lt!1487779)))))

(declare-fun lt!1487794 () Unit!64925)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2986 (List!45972 List!45972) Unit!64925)

(assert (=> b!4177444 (= lt!1487794 (lemmaConcatTwoListThenFirstIsPrefix!2986 lt!1487782 (_2!24971 lt!1487779)))))

(declare-fun list!16559 (BalanceConc!27260) List!45972)

(assert (=> b!4177444 (= lt!1487782 (list!16559 lt!1487790))))

(declare-fun charsOf!5063 (Token!13958) BalanceConc!27260)

(assert (=> b!4177444 (= lt!1487790 (charsOf!5063 (_1!24971 lt!1487779)))))

(declare-fun get!14898 (Option!9818) tuple2!43674)

(assert (=> b!4177444 (= lt!1487779 (get!14898 lt!1487780))))

(declare-fun b!4177445 () Bool)

(declare-fun res!1712655 () Bool)

(assert (=> b!4177445 (=> (not res!1712655) (not e!2593472))))

(declare-fun matchR!6266 (Regex!12527 List!45972) Bool)

(assert (=> b!4177445 (= res!1712655 (matchR!6266 (regex!7622 r!4142) p!2959))))

(declare-fun b!4177446 () Bool)

(declare-fun res!1712646 () Bool)

(assert (=> b!4177446 (=> res!1712646 e!2593479)))

(declare-fun lt!1487795 () Option!9818)

(declare-fun maxPrefix!4267 (LexerInterface!7215 List!45973 List!45972) Option!9818)

(assert (=> b!4177446 (= res!1712646 (not (= (maxPrefix!4267 thiss!25986 rules!3843 input!3342) lt!1487795)))))

(declare-fun res!1712641 () Bool)

(assert (=> start!398250 (=> (not res!1712641) (not e!2593472))))

(get-info :version)

(assert (=> start!398250 (= res!1712641 ((_ is Lexer!7213) thiss!25986))))

(assert (=> start!398250 e!2593472))

(assert (=> start!398250 true))

(declare-fun e!2593466 () Bool)

(assert (=> start!398250 e!2593466))

(assert (=> start!398250 e!2593470))

(assert (=> start!398250 e!2593482))

(assert (=> start!398250 e!2593476))

(assert (=> start!398250 e!2593464))

(assert (=> start!398250 e!2593478))

(declare-fun b!4177428 () Bool)

(assert (=> b!4177428 (= e!2593472 (not e!2593477))))

(declare-fun res!1712656 () Bool)

(assert (=> b!4177428 (=> res!1712656 e!2593477)))

(assert (=> b!4177428 (= res!1712656 (not (= (maxPrefixOneRule!3226 thiss!25986 r!4142 input!3342) lt!1487795)))))

(assert (=> b!4177428 (= lt!1487795 (Some!9817 (tuple2!43675 lt!1487792 lt!1487778)))))

(declare-fun getSuffix!2774 (List!45972 List!45972) List!45972)

(assert (=> b!4177428 (= lt!1487778 (getSuffix!2774 input!3342 p!2959))))

(declare-fun lt!1487784 () TokenValue!7852)

(assert (=> b!4177428 (= lt!1487792 (Token!13959 lt!1487784 r!4142 lt!1487785 p!2959))))

(assert (=> b!4177428 (= lt!1487785 (size!33663 p!2959))))

(declare-fun lt!1487793 () BalanceConc!27260)

(declare-fun apply!10587 (TokenValueInjection!15132 BalanceConc!27260) TokenValue!7852)

(assert (=> b!4177428 (= lt!1487784 (apply!10587 (transformation!7622 r!4142) lt!1487793))))

(assert (=> b!4177428 (isPrefix!4479 input!3342 input!3342)))

(declare-fun lt!1487786 () Unit!64925)

(declare-fun lemmaIsPrefixRefl!2908 (List!45972 List!45972) Unit!64925)

(assert (=> b!4177428 (= lt!1487786 (lemmaIsPrefixRefl!2908 input!3342 input!3342))))

(declare-fun lt!1487791 () Unit!64925)

(declare-fun lemmaSemiInverse!2388 (TokenValueInjection!15132 BalanceConc!27260) Unit!64925)

(assert (=> b!4177428 (= lt!1487791 (lemmaSemiInverse!2388 (transformation!7622 r!4142) lt!1487793))))

(declare-fun seqFromList!5647 (List!45972) BalanceConc!27260)

(assert (=> b!4177428 (= lt!1487793 (seqFromList!5647 p!2959))))

(declare-fun b!4177447 () Bool)

(declare-fun tp!1276680 () Bool)

(assert (=> b!4177447 (= e!2593466 (and tp!1276680 (inv!60368 (tag!8486 rBis!167)) (inv!60370 (transformation!7622 rBis!167)) e!2593483))))

(declare-fun b!4177448 () Bool)

(declare-fun Unit!64928 () Unit!64925)

(assert (=> b!4177448 (= e!2593481 Unit!64928)))

(declare-fun lt!1487783 () Unit!64925)

(declare-fun lemmaIsPrefixSameLengthThenSameList!989 (List!45972 List!45972 List!45972) Unit!64925)

(assert (=> b!4177448 (= lt!1487783 (lemmaIsPrefixSameLengthThenSameList!989 pBis!107 lt!1487782 input!3342))))

(assert (=> b!4177448 false))

(assert (= (and start!398250 res!1712641) b!4177424))

(assert (= (and b!4177424 res!1712644) b!4177440))

(assert (= (and b!4177440 res!1712643) b!4177437))

(assert (= (and b!4177437 res!1712648) b!4177436))

(assert (= (and b!4177436 res!1712658) b!4177430))

(assert (= (and b!4177430 res!1712651) b!4177434))

(assert (= (and b!4177434 res!1712650) b!4177419))

(assert (= (and b!4177419 res!1712645) b!4177445))

(assert (= (and b!4177445 res!1712655) b!4177427))

(assert (= (and b!4177427 res!1712657) b!4177428))

(assert (= (and b!4177428 (not res!1712656)) b!4177426))

(assert (= (and b!4177426 (not res!1712649)) b!4177435))

(assert (= (and b!4177435 (not res!1712652)) b!4177446))

(assert (= (and b!4177446 (not res!1712646)) b!4177425))

(assert (= (and b!4177425 (not res!1712654)) b!4177444))

(assert (= (and b!4177444 (not res!1712642)) b!4177431))

(assert (= (and b!4177431 (not res!1712647)) b!4177442))

(assert (= (and b!4177442 c!713519) b!4177448))

(assert (= (and b!4177442 (not c!713519)) b!4177439))

(assert (= (and b!4177442 (not res!1712653)) b!4177429))

(assert (= b!4177447 b!4177438))

(assert (= start!398250 b!4177447))

(assert (= b!4177423 b!4177441))

(assert (= start!398250 b!4177423))

(assert (= b!4177443 b!4177420))

(assert (= b!4177433 b!4177443))

(assert (= (and start!398250 ((_ is Cons!45849) rules!3843)) b!4177433))

(assert (= (and start!398250 ((_ is Cons!45848) input!3342)) b!4177432))

(assert (= (and start!398250 ((_ is Cons!45848) pBis!107)) b!4177421))

(assert (= (and start!398250 ((_ is Cons!45848) p!2959)) b!4177422))

(declare-fun m!4767019 () Bool)

(assert (=> b!4177430 m!4767019))

(declare-fun m!4767021 () Bool)

(assert (=> b!4177424 m!4767021))

(declare-fun m!4767023 () Bool)

(assert (=> b!4177427 m!4767023))

(declare-fun m!4767025 () Bool)

(assert (=> b!4177423 m!4767025))

(declare-fun m!4767027 () Bool)

(assert (=> b!4177423 m!4767027))

(declare-fun m!4767029 () Bool)

(assert (=> b!4177446 m!4767029))

(declare-fun m!4767031 () Bool)

(assert (=> b!4177435 m!4767031))

(declare-fun m!4767033 () Bool)

(assert (=> b!4177448 m!4767033))

(declare-fun m!4767035 () Bool)

(assert (=> b!4177431 m!4767035))

(declare-fun m!4767037 () Bool)

(assert (=> b!4177434 m!4767037))

(declare-fun m!4767039 () Bool)

(assert (=> b!4177447 m!4767039))

(declare-fun m!4767041 () Bool)

(assert (=> b!4177447 m!4767041))

(declare-fun m!4767043 () Bool)

(assert (=> b!4177426 m!4767043))

(declare-fun m!4767045 () Bool)

(assert (=> b!4177437 m!4767045))

(declare-fun m!4767047 () Bool)

(assert (=> b!4177445 m!4767047))

(declare-fun m!4767049 () Bool)

(assert (=> b!4177444 m!4767049))

(declare-fun m!4767051 () Bool)

(assert (=> b!4177444 m!4767051))

(declare-fun m!4767053 () Bool)

(assert (=> b!4177444 m!4767053))

(assert (=> b!4177444 m!4767053))

(declare-fun m!4767055 () Bool)

(assert (=> b!4177444 m!4767055))

(declare-fun m!4767057 () Bool)

(assert (=> b!4177444 m!4767057))

(declare-fun m!4767059 () Bool)

(assert (=> b!4177444 m!4767059))

(declare-fun m!4767061 () Bool)

(assert (=> b!4177443 m!4767061))

(declare-fun m!4767063 () Bool)

(assert (=> b!4177443 m!4767063))

(declare-fun m!4767065 () Bool)

(assert (=> b!4177436 m!4767065))

(declare-fun m!4767067 () Bool)

(assert (=> b!4177440 m!4767067))

(declare-fun m!4767069 () Bool)

(assert (=> b!4177442 m!4767069))

(declare-fun m!4767071 () Bool)

(assert (=> b!4177419 m!4767071))

(declare-fun m!4767073 () Bool)

(assert (=> b!4177425 m!4767073))

(declare-fun m!4767075 () Bool)

(assert (=> b!4177425 m!4767075))

(declare-fun m!4767077 () Bool)

(assert (=> b!4177425 m!4767077))

(declare-fun m!4767079 () Bool)

(assert (=> b!4177425 m!4767079))

(declare-fun m!4767081 () Bool)

(assert (=> b!4177425 m!4767081))

(declare-fun m!4767083 () Bool)

(assert (=> b!4177428 m!4767083))

(declare-fun m!4767085 () Bool)

(assert (=> b!4177428 m!4767085))

(declare-fun m!4767087 () Bool)

(assert (=> b!4177428 m!4767087))

(declare-fun m!4767089 () Bool)

(assert (=> b!4177428 m!4767089))

(declare-fun m!4767091 () Bool)

(assert (=> b!4177428 m!4767091))

(declare-fun m!4767093 () Bool)

(assert (=> b!4177428 m!4767093))

(declare-fun m!4767095 () Bool)

(assert (=> b!4177428 m!4767095))

(declare-fun m!4767097 () Bool)

(assert (=> b!4177428 m!4767097))

(declare-fun m!4767099 () Bool)

(assert (=> b!4177429 m!4767099))

(declare-fun m!4767101 () Bool)

(assert (=> b!4177429 m!4767101))

(check-sat (not b!4177422) (not b_next!121989) (not b!4177446) (not b!4177425) (not b!4177436) (not b!4177423) b_and!326565 (not b!4177437) (not b!4177430) (not b!4177424) (not b!4177435) (not b_next!121983) (not b!4177443) (not b_next!121991) (not b!4177448) (not b!4177429) (not b!4177427) b_and!326563 (not b!4177421) (not b!4177431) b_and!326559 (not b!4177444) (not b!4177419) b_and!326567 b_and!326557 (not b_next!121987) (not b!4177447) (not b_next!121985) (not b!4177428) (not b!4177440) tp_is_empty!22017 b_and!326561 (not b_next!121993) (not b!4177445) (not b!4177442) (not b!4177432) (not b!4177433) (not b!4177426) (not b!4177434))
(check-sat (not b_next!121989) b_and!326563 b_and!326559 b_and!326565 b_and!326567 (not b_next!121985) (not b_next!121983) (not b_next!121991) b_and!326557 (not b_next!121987) b_and!326561 (not b_next!121993))
