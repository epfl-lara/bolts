; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!257542 () Bool)

(assert start!257542)

(declare-fun b!2646831 () Bool)

(declare-fun b_free!74485 () Bool)

(declare-fun b_next!75189 () Bool)

(assert (=> b!2646831 (= b_free!74485 (not b_next!75189))))

(declare-fun tp!839489 () Bool)

(declare-fun b_and!194475 () Bool)

(assert (=> b!2646831 (= tp!839489 b_and!194475)))

(declare-fun b_free!74487 () Bool)

(declare-fun b_next!75191 () Bool)

(assert (=> b!2646831 (= b_free!74487 (not b_next!75191))))

(declare-fun tp!839483 () Bool)

(declare-fun b_and!194477 () Bool)

(assert (=> b!2646831 (= tp!839483 b_and!194477)))

(declare-fun b!2646832 () Bool)

(declare-fun b_free!74489 () Bool)

(declare-fun b_next!75193 () Bool)

(assert (=> b!2646832 (= b_free!74489 (not b_next!75193))))

(declare-fun tp!839490 () Bool)

(declare-fun b_and!194479 () Bool)

(assert (=> b!2646832 (= tp!839490 b_and!194479)))

(declare-fun b_free!74491 () Bool)

(declare-fun b_next!75195 () Bool)

(assert (=> b!2646832 (= b_free!74491 (not b_next!75195))))

(declare-fun tp!839484 () Bool)

(declare-fun b_and!194481 () Bool)

(assert (=> b!2646832 (= tp!839484 b_and!194481)))

(declare-fun tp!839487 () Bool)

(declare-fun e!1668876 () Bool)

(declare-fun b!2646828 () Bool)

(declare-fun e!1668869 () Bool)

(declare-datatypes ((List!30647 0))(
  ( (Nil!30547) (Cons!30547 (h!35967 (_ BitVec 16)) (t!219462 List!30647)) )
))
(declare-datatypes ((C!15744 0))(
  ( (C!15745 (val!9806 Int)) )
))
(declare-datatypes ((Regex!7793 0))(
  ( (ElementMatch!7793 (c!425753 C!15744)) (Concat!12664 (regOne!16098 Regex!7793) (regTwo!16098 Regex!7793)) (EmptyExpr!7793) (Star!7793 (reg!8122 Regex!7793)) (EmptyLang!7793) (Union!7793 (regOne!16099 Regex!7793) (regTwo!16099 Regex!7793)) )
))
(declare-datatypes ((TokenValue!4871 0))(
  ( (FloatLiteralValue!9742 (text!34542 List!30647)) (TokenValueExt!4870 (__x!19575 Int)) (Broken!24355 (value!150075 List!30647)) (Object!4970) (End!4871) (Def!4871) (Underscore!4871) (Match!4871) (Else!4871) (Error!4871) (Case!4871) (If!4871) (Extends!4871) (Abstract!4871) (Class!4871) (Val!4871) (DelimiterValue!9742 (del!4931 List!30647)) (KeywordValue!4877 (value!150076 List!30647)) (CommentValue!9742 (value!150077 List!30647)) (WhitespaceValue!9742 (value!150078 List!30647)) (IndentationValue!4871 (value!150079 List!30647)) (String!34238) (Int32!4871) (Broken!24356 (value!150080 List!30647)) (Boolean!4872) (Unit!44622) (OperatorValue!4874 (op!4931 List!30647)) (IdentifierValue!9742 (value!150081 List!30647)) (IdentifierValue!9743 (value!150082 List!30647)) (WhitespaceValue!9743 (value!150083 List!30647)) (True!9742) (False!9742) (Broken!24357 (value!150084 List!30647)) (Broken!24358 (value!150085 List!30647)) (True!9743) (RightBrace!4871) (RightBracket!4871) (Colon!4871) (Null!4871) (Comma!4871) (LeftBracket!4871) (False!9743) (LeftBrace!4871) (ImaginaryLiteralValue!4871 (text!34543 List!30647)) (StringLiteralValue!14613 (value!150086 List!30647)) (EOFValue!4871 (value!150087 List!30647)) (IdentValue!4871 (value!150088 List!30647)) (DelimiterValue!9743 (value!150089 List!30647)) (DedentValue!4871 (value!150090 List!30647)) (NewLineValue!4871 (value!150091 List!30647)) (IntegerValue!14613 (value!150092 (_ BitVec 32)) (text!34544 List!30647)) (IntegerValue!14614 (value!150093 Int) (text!34545 List!30647)) (Times!4871) (Or!4871) (Equal!4871) (Minus!4871) (Broken!24359 (value!150094 List!30647)) (And!4871) (Div!4871) (LessEqual!4871) (Mod!4871) (Concat!12665) (Not!4871) (Plus!4871) (SpaceValue!4871 (value!150095 List!30647)) (IntegerValue!14615 (value!150096 Int) (text!34546 List!30647)) (StringLiteralValue!14614 (text!34547 List!30647)) (FloatLiteralValue!9743 (text!34548 List!30647)) (BytesLiteralValue!4871 (value!150097 List!30647)) (CommentValue!9743 (value!150098 List!30647)) (StringLiteralValue!14615 (value!150099 List!30647)) (ErrorTokenValue!4871 (msg!4932 List!30647)) )
))
(declare-datatypes ((List!30648 0))(
  ( (Nil!30548) (Cons!30548 (h!35968 C!15744) (t!219463 List!30648)) )
))
(declare-datatypes ((IArray!19085 0))(
  ( (IArray!19086 (innerList!9600 List!30648)) )
))
(declare-datatypes ((Conc!9540 0))(
  ( (Node!9540 (left!23600 Conc!9540) (right!23930 Conc!9540) (csize!19310 Int) (cheight!9751 Int)) (Leaf!14605 (xs!12552 IArray!19085) (csize!19311 Int)) (Empty!9540) )
))
(declare-datatypes ((BalanceConc!18694 0))(
  ( (BalanceConc!18695 (c!425754 Conc!9540)) )
))
(declare-datatypes ((TokenValueInjection!9182 0))(
  ( (TokenValueInjection!9183 (toValue!6575 Int) (toChars!6434 Int)) )
))
(declare-datatypes ((String!34239 0))(
  ( (String!34240 (value!150100 String)) )
))
(declare-datatypes ((Rule!9098 0))(
  ( (Rule!9099 (regex!4649 Regex!7793) (tag!5145 String!34239) (isSeparator!4649 Bool) (transformation!4649 TokenValueInjection!9182)) )
))
(declare-datatypes ((List!30649 0))(
  ( (Nil!30549) (Cons!30549 (h!35969 Rule!9098) (t!219464 List!30649)) )
))
(declare-fun rules!1726 () List!30649)

(declare-fun inv!41462 (String!34239) Bool)

(declare-fun inv!41467 (TokenValueInjection!9182) Bool)

(assert (=> b!2646828 (= e!1668869 (and tp!839487 (inv!41462 (tag!5145 (h!35969 rules!1726))) (inv!41467 (transformation!4649 (h!35969 rules!1726))) e!1668876))))

(declare-fun e!1668867 () Bool)

(declare-fun tp!839485 () Bool)

(declare-datatypes ((Token!8768 0))(
  ( (Token!8769 (value!150101 TokenValue!4871) (rule!7037 Rule!9098) (size!23635 Int) (originalCharacters!5415 List!30648)) )
))
(declare-fun separatorToken!156 () Token!8768)

(declare-fun e!1668871 () Bool)

(declare-fun b!2646829 () Bool)

(assert (=> b!2646829 (= e!1668867 (and tp!839485 (inv!41462 (tag!5145 (rule!7037 separatorToken!156))) (inv!41467 (transformation!4649 (rule!7037 separatorToken!156))) e!1668871))))

(declare-fun tp!839486 () Bool)

(declare-fun e!1668872 () Bool)

(declare-fun b!2646830 () Bool)

(declare-fun inv!21 (TokenValue!4871) Bool)

(assert (=> b!2646830 (= e!1668872 (and (inv!21 (value!150101 separatorToken!156)) e!1668867 tp!839486))))

(assert (=> b!2646831 (= e!1668871 (and tp!839489 tp!839483))))

(declare-fun b!2646833 () Bool)

(declare-fun res!1113289 () Bool)

(declare-fun e!1668870 () Bool)

(assert (=> b!2646833 (=> (not res!1113289) (not e!1668870))))

(declare-datatypes ((LexerInterface!4246 0))(
  ( (LexerInterfaceExt!4243 (__x!19576 Int)) (Lexer!4244) )
))
(declare-fun thiss!14197 () LexerInterface!4246)

(declare-fun rulesProduceIndividualToken!1958 (LexerInterface!4246 List!30649 Token!8768) Bool)

(assert (=> b!2646833 (= res!1113289 (rulesProduceIndividualToken!1958 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2646834 () Bool)

(declare-fun res!1113294 () Bool)

(assert (=> b!2646834 (=> (not res!1113294) (not e!1668870))))

(declare-fun sepAndNonSepRulesDisjointChars!1222 (List!30649 List!30649) Bool)

(assert (=> b!2646834 (= res!1113294 (sepAndNonSepRulesDisjointChars!1222 rules!1726 rules!1726))))

(declare-fun b!2646835 () Bool)

(declare-fun res!1113290 () Bool)

(assert (=> b!2646835 (=> (not res!1113290) (not e!1668870))))

(declare-fun isEmpty!17449 (List!30649) Bool)

(assert (=> b!2646835 (= res!1113290 (not (isEmpty!17449 rules!1726)))))

(declare-fun b!2646836 () Bool)

(declare-fun e!1668874 () Bool)

(declare-fun tp!839482 () Bool)

(assert (=> b!2646836 (= e!1668874 (and e!1668869 tp!839482))))

(declare-fun b!2646837 () Bool)

(declare-fun res!1113292 () Bool)

(assert (=> b!2646837 (=> (not res!1113292) (not e!1668870))))

(assert (=> b!2646837 (= res!1113292 (isSeparator!4649 (rule!7037 separatorToken!156)))))

(declare-fun b!2646838 () Bool)

(declare-fun res!1113297 () Bool)

(assert (=> b!2646838 (=> (not res!1113297) (not e!1668870))))

(declare-datatypes ((List!30650 0))(
  ( (Nil!30550) (Cons!30550 (h!35970 Token!8768) (t!219465 List!30650)) )
))
(declare-datatypes ((IArray!19087 0))(
  ( (IArray!19088 (innerList!9601 List!30650)) )
))
(declare-datatypes ((Conc!9541 0))(
  ( (Node!9541 (left!23601 Conc!9541) (right!23931 Conc!9541) (csize!19312 Int) (cheight!9752 Int)) (Leaf!14606 (xs!12553 IArray!19087) (csize!19313 Int)) (Empty!9541) )
))
(declare-datatypes ((BalanceConc!18696 0))(
  ( (BalanceConc!18697 (c!425755 Conc!9541)) )
))
(declare-fun v!6381 () BalanceConc!18696)

(declare-fun rulesProduceEachTokenIndividually!1066 (LexerInterface!4246 List!30649 BalanceConc!18696) Bool)

(assert (=> b!2646838 (= res!1113297 (rulesProduceEachTokenIndividually!1066 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2646839 () Bool)

(declare-fun e!1668875 () Bool)

(declare-fun tp!839488 () Bool)

(declare-fun inv!41468 (Conc!9541) Bool)

(assert (=> b!2646839 (= e!1668875 (and (inv!41468 (c!425755 v!6381)) tp!839488))))

(declare-fun b!2646840 () Bool)

(declare-fun res!1113296 () Bool)

(assert (=> b!2646840 (=> (not res!1113296) (not e!1668870))))

(declare-fun rulesInvariant!3746 (LexerInterface!4246 List!30649) Bool)

(assert (=> b!2646840 (= res!1113296 (rulesInvariant!3746 thiss!14197 rules!1726))))

(declare-fun b!2646841 () Bool)

(declare-fun e!1668877 () Bool)

(assert (=> b!2646841 (= e!1668870 e!1668877)))

(declare-fun res!1113288 () Bool)

(assert (=> b!2646841 (=> (not res!1113288) (not e!1668877))))

(declare-fun from!862 () Int)

(declare-fun lt!931429 () Int)

(assert (=> b!2646841 (= res!1113288 (< from!862 lt!931429))))

(declare-fun lambda!99084 () Int)

(declare-fun lt!931428 () List!30650)

(declare-datatypes ((Unit!44623 0))(
  ( (Unit!44624) )
))
(declare-fun lt!931427 () Unit!44623)

(declare-fun lemmaContentSubsetPreservesForall!316 (List!30650 List!30650 Int) Unit!44623)

(declare-fun dropList!950 (BalanceConc!18696 Int) List!30650)

(assert (=> b!2646841 (= lt!931427 (lemmaContentSubsetPreservesForall!316 lt!931428 (dropList!950 v!6381 from!862) lambda!99084))))

(declare-fun list!11513 (BalanceConc!18696) List!30650)

(assert (=> b!2646841 (= lt!931428 (list!11513 v!6381))))

(declare-fun b!2646842 () Bool)

(declare-fun e!1668873 () Bool)

(assert (=> b!2646842 (= e!1668873 e!1668870)))

(declare-fun res!1113291 () Bool)

(assert (=> b!2646842 (=> (not res!1113291) (not e!1668870))))

(assert (=> b!2646842 (= res!1113291 (<= from!862 lt!931429))))

(declare-fun size!23636 (BalanceConc!18696) Int)

(assert (=> b!2646842 (= lt!931429 (size!23636 v!6381))))

(assert (=> b!2646832 (= e!1668876 (and tp!839490 tp!839484))))

(declare-fun res!1113293 () Bool)

(assert (=> start!257542 (=> (not res!1113293) (not e!1668873))))

(get-info :version)

(assert (=> start!257542 (= res!1113293 (and ((_ is Lexer!4244) thiss!14197) (>= from!862 0)))))

(assert (=> start!257542 e!1668873))

(assert (=> start!257542 true))

(assert (=> start!257542 e!1668874))

(declare-fun inv!41469 (Token!8768) Bool)

(assert (=> start!257542 (and (inv!41469 separatorToken!156) e!1668872)))

(declare-fun inv!41470 (BalanceConc!18696) Bool)

(assert (=> start!257542 (and (inv!41470 v!6381) e!1668875)))

(declare-fun b!2646843 () Bool)

(declare-fun res!1113295 () Bool)

(assert (=> b!2646843 (=> (not res!1113295) (not e!1668870))))

(declare-fun forall!6424 (BalanceConc!18696 Int) Bool)

(assert (=> b!2646843 (= res!1113295 (forall!6424 v!6381 lambda!99084))))

(declare-fun b!2646844 () Bool)

(declare-fun size!23637 (List!30650) Int)

(assert (=> b!2646844 (= e!1668877 (>= from!862 (size!23637 lt!931428)))))

(assert (= (and start!257542 res!1113293) b!2646842))

(assert (= (and b!2646842 res!1113291) b!2646835))

(assert (= (and b!2646835 res!1113290) b!2646840))

(assert (= (and b!2646840 res!1113296) b!2646838))

(assert (= (and b!2646838 res!1113297) b!2646833))

(assert (= (and b!2646833 res!1113289) b!2646837))

(assert (= (and b!2646837 res!1113292) b!2646843))

(assert (= (and b!2646843 res!1113295) b!2646834))

(assert (= (and b!2646834 res!1113294) b!2646841))

(assert (= (and b!2646841 res!1113288) b!2646844))

(assert (= b!2646828 b!2646832))

(assert (= b!2646836 b!2646828))

(assert (= (and start!257542 ((_ is Cons!30549) rules!1726)) b!2646836))

(assert (= b!2646829 b!2646831))

(assert (= b!2646830 b!2646829))

(assert (= start!257542 b!2646830))

(assert (= start!257542 b!2646839))

(declare-fun m!2995721 () Bool)

(assert (=> b!2646838 m!2995721))

(declare-fun m!2995723 () Bool)

(assert (=> b!2646842 m!2995723))

(declare-fun m!2995725 () Bool)

(assert (=> b!2646833 m!2995725))

(declare-fun m!2995727 () Bool)

(assert (=> b!2646835 m!2995727))

(declare-fun m!2995729 () Bool)

(assert (=> b!2646841 m!2995729))

(assert (=> b!2646841 m!2995729))

(declare-fun m!2995731 () Bool)

(assert (=> b!2646841 m!2995731))

(declare-fun m!2995733 () Bool)

(assert (=> b!2646841 m!2995733))

(declare-fun m!2995735 () Bool)

(assert (=> b!2646840 m!2995735))

(declare-fun m!2995737 () Bool)

(assert (=> b!2646834 m!2995737))

(declare-fun m!2995739 () Bool)

(assert (=> b!2646828 m!2995739))

(declare-fun m!2995741 () Bool)

(assert (=> b!2646828 m!2995741))

(declare-fun m!2995743 () Bool)

(assert (=> b!2646839 m!2995743))

(declare-fun m!2995745 () Bool)

(assert (=> b!2646844 m!2995745))

(declare-fun m!2995747 () Bool)

(assert (=> b!2646843 m!2995747))

(declare-fun m!2995749 () Bool)

(assert (=> b!2646830 m!2995749))

(declare-fun m!2995751 () Bool)

(assert (=> b!2646829 m!2995751))

(declare-fun m!2995753 () Bool)

(assert (=> b!2646829 m!2995753))

(declare-fun m!2995755 () Bool)

(assert (=> start!257542 m!2995755))

(declare-fun m!2995757 () Bool)

(assert (=> start!257542 m!2995757))

(check-sat (not b!2646830) (not b!2646839) (not b_next!75193) (not b!2646844) (not b_next!75195) (not b!2646840) (not b!2646828) (not b!2646842) b_and!194477 (not b!2646843) (not b!2646833) (not start!257542) (not b!2646841) (not b!2646836) b_and!194475 (not b!2646834) b_and!194479 (not b!2646838) (not b_next!75189) (not b_next!75191) (not b!2646829) b_and!194481 (not b!2646835))
(check-sat b_and!194477 (not b_next!75193) b_and!194475 b_and!194479 (not b_next!75195) b_and!194481 (not b_next!75189) (not b_next!75191))
(get-model)

(declare-fun d!752737 () Bool)

(declare-fun res!1113306 () Bool)

(declare-fun e!1668880 () Bool)

(assert (=> d!752737 (=> (not res!1113306) (not e!1668880))))

(declare-fun isEmpty!17452 (List!30648) Bool)

(assert (=> d!752737 (= res!1113306 (not (isEmpty!17452 (originalCharacters!5415 separatorToken!156))))))

(assert (=> d!752737 (= (inv!41469 separatorToken!156) e!1668880)))

(declare-fun b!2646849 () Bool)

(declare-fun res!1113307 () Bool)

(assert (=> b!2646849 (=> (not res!1113307) (not e!1668880))))

(declare-fun list!11516 (BalanceConc!18694) List!30648)

(declare-fun dynLambda!13122 (Int TokenValue!4871) BalanceConc!18694)

(assert (=> b!2646849 (= res!1113307 (= (originalCharacters!5415 separatorToken!156) (list!11516 (dynLambda!13122 (toChars!6434 (transformation!4649 (rule!7037 separatorToken!156))) (value!150101 separatorToken!156)))))))

(declare-fun b!2646850 () Bool)

(declare-fun size!23639 (List!30648) Int)

(assert (=> b!2646850 (= e!1668880 (= (size!23635 separatorToken!156) (size!23639 (originalCharacters!5415 separatorToken!156))))))

(assert (= (and d!752737 res!1113306) b!2646849))

(assert (= (and b!2646849 res!1113307) b!2646850))

(declare-fun b_lambda!79959 () Bool)

(assert (=> (not b_lambda!79959) (not b!2646849)))

(declare-fun t!219467 () Bool)

(declare-fun tb!146359 () Bool)

(assert (=> (and b!2646831 (= (toChars!6434 (transformation!4649 (rule!7037 separatorToken!156))) (toChars!6434 (transformation!4649 (rule!7037 separatorToken!156)))) t!219467) tb!146359))

(declare-fun b!2646855 () Bool)

(declare-fun e!1668883 () Bool)

(declare-fun tp!839493 () Bool)

(declare-fun inv!41475 (Conc!9540) Bool)

(assert (=> b!2646855 (= e!1668883 (and (inv!41475 (c!425754 (dynLambda!13122 (toChars!6434 (transformation!4649 (rule!7037 separatorToken!156))) (value!150101 separatorToken!156)))) tp!839493))))

(declare-fun result!181342 () Bool)

(declare-fun inv!41476 (BalanceConc!18694) Bool)

(assert (=> tb!146359 (= result!181342 (and (inv!41476 (dynLambda!13122 (toChars!6434 (transformation!4649 (rule!7037 separatorToken!156))) (value!150101 separatorToken!156))) e!1668883))))

(assert (= tb!146359 b!2646855))

(declare-fun m!2995759 () Bool)

(assert (=> b!2646855 m!2995759))

(declare-fun m!2995761 () Bool)

(assert (=> tb!146359 m!2995761))

(assert (=> b!2646849 t!219467))

(declare-fun b_and!194483 () Bool)

(assert (= b_and!194477 (and (=> t!219467 result!181342) b_and!194483)))

(declare-fun tb!146361 () Bool)

(declare-fun t!219469 () Bool)

(assert (=> (and b!2646832 (= (toChars!6434 (transformation!4649 (h!35969 rules!1726))) (toChars!6434 (transformation!4649 (rule!7037 separatorToken!156)))) t!219469) tb!146361))

(declare-fun result!181346 () Bool)

(assert (= result!181346 result!181342))

(assert (=> b!2646849 t!219469))

(declare-fun b_and!194485 () Bool)

(assert (= b_and!194481 (and (=> t!219469 result!181346) b_and!194485)))

(declare-fun m!2995763 () Bool)

(assert (=> d!752737 m!2995763))

(declare-fun m!2995765 () Bool)

(assert (=> b!2646849 m!2995765))

(assert (=> b!2646849 m!2995765))

(declare-fun m!2995767 () Bool)

(assert (=> b!2646849 m!2995767))

(declare-fun m!2995769 () Bool)

(assert (=> b!2646850 m!2995769))

(assert (=> start!257542 d!752737))

(declare-fun d!752739 () Bool)

(declare-fun isBalanced!2893 (Conc!9541) Bool)

(assert (=> d!752739 (= (inv!41470 v!6381) (isBalanced!2893 (c!425755 v!6381)))))

(declare-fun bs!476998 () Bool)

(assert (= bs!476998 d!752739))

(declare-fun m!2995771 () Bool)

(assert (=> bs!476998 m!2995771))

(assert (=> start!257542 d!752739))

(declare-fun d!752741 () Bool)

(assert (=> d!752741 (= (isEmpty!17449 rules!1726) ((_ is Nil!30549) rules!1726))))

(assert (=> b!2646835 d!752741))

(declare-fun d!752743 () Bool)

(declare-fun res!1113312 () Bool)

(declare-fun e!1668888 () Bool)

(assert (=> d!752743 (=> res!1113312 e!1668888)))

(assert (=> d!752743 (= res!1113312 (not ((_ is Cons!30549) rules!1726)))))

(assert (=> d!752743 (= (sepAndNonSepRulesDisjointChars!1222 rules!1726 rules!1726) e!1668888)))

(declare-fun b!2646860 () Bool)

(declare-fun e!1668889 () Bool)

(assert (=> b!2646860 (= e!1668888 e!1668889)))

(declare-fun res!1113313 () Bool)

(assert (=> b!2646860 (=> (not res!1113313) (not e!1668889))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!531 (Rule!9098 List!30649) Bool)

(assert (=> b!2646860 (= res!1113313 (ruleDisjointCharsFromAllFromOtherType!531 (h!35969 rules!1726) rules!1726))))

(declare-fun b!2646861 () Bool)

(assert (=> b!2646861 (= e!1668889 (sepAndNonSepRulesDisjointChars!1222 rules!1726 (t!219464 rules!1726)))))

(assert (= (and d!752743 (not res!1113312)) b!2646860))

(assert (= (and b!2646860 res!1113313) b!2646861))

(declare-fun m!2995773 () Bool)

(assert (=> b!2646860 m!2995773))

(declare-fun m!2995775 () Bool)

(assert (=> b!2646861 m!2995775))

(assert (=> b!2646834 d!752743))

(declare-fun d!752745 () Bool)

(declare-fun lt!931434 () Bool)

(declare-fun e!1668900 () Bool)

(assert (=> d!752745 (= lt!931434 e!1668900)))

(declare-fun res!1113327 () Bool)

(assert (=> d!752745 (=> (not res!1113327) (not e!1668900))))

(declare-datatypes ((tuple2!30070 0))(
  ( (tuple2!30071 (_1!17577 BalanceConc!18696) (_2!17577 BalanceConc!18694)) )
))
(declare-fun lex!1907 (LexerInterface!4246 List!30649 BalanceConc!18694) tuple2!30070)

(declare-fun print!1645 (LexerInterface!4246 BalanceConc!18696) BalanceConc!18694)

(declare-fun singletonSeq!2064 (Token!8768) BalanceConc!18696)

(assert (=> d!752745 (= res!1113327 (= (list!11513 (_1!17577 (lex!1907 thiss!14197 rules!1726 (print!1645 thiss!14197 (singletonSeq!2064 separatorToken!156))))) (list!11513 (singletonSeq!2064 separatorToken!156))))))

(declare-fun e!1668901 () Bool)

(assert (=> d!752745 (= lt!931434 e!1668901)))

(declare-fun res!1113326 () Bool)

(assert (=> d!752745 (=> (not res!1113326) (not e!1668901))))

(declare-fun lt!931435 () tuple2!30070)

(assert (=> d!752745 (= res!1113326 (= (size!23636 (_1!17577 lt!931435)) 1))))

(assert (=> d!752745 (= lt!931435 (lex!1907 thiss!14197 rules!1726 (print!1645 thiss!14197 (singletonSeq!2064 separatorToken!156))))))

(assert (=> d!752745 (not (isEmpty!17449 rules!1726))))

(assert (=> d!752745 (= (rulesProduceIndividualToken!1958 thiss!14197 rules!1726 separatorToken!156) lt!931434)))

(declare-fun b!2646877 () Bool)

(declare-fun res!1113328 () Bool)

(assert (=> b!2646877 (=> (not res!1113328) (not e!1668901))))

(declare-fun apply!7300 (BalanceConc!18696 Int) Token!8768)

(assert (=> b!2646877 (= res!1113328 (= (apply!7300 (_1!17577 lt!931435) 0) separatorToken!156))))

(declare-fun b!2646878 () Bool)

(declare-fun isEmpty!17453 (BalanceConc!18694) Bool)

(assert (=> b!2646878 (= e!1668901 (isEmpty!17453 (_2!17577 lt!931435)))))

(declare-fun b!2646879 () Bool)

(assert (=> b!2646879 (= e!1668900 (isEmpty!17453 (_2!17577 (lex!1907 thiss!14197 rules!1726 (print!1645 thiss!14197 (singletonSeq!2064 separatorToken!156))))))))

(assert (= (and d!752745 res!1113326) b!2646877))

(assert (= (and b!2646877 res!1113328) b!2646878))

(assert (= (and d!752745 res!1113327) b!2646879))

(declare-fun m!2995781 () Bool)

(assert (=> d!752745 m!2995781))

(declare-fun m!2995783 () Bool)

(assert (=> d!752745 m!2995783))

(declare-fun m!2995785 () Bool)

(assert (=> d!752745 m!2995785))

(declare-fun m!2995787 () Bool)

(assert (=> d!752745 m!2995787))

(declare-fun m!2995789 () Bool)

(assert (=> d!752745 m!2995789))

(declare-fun m!2995791 () Bool)

(assert (=> d!752745 m!2995791))

(assert (=> d!752745 m!2995789))

(assert (=> d!752745 m!2995789))

(assert (=> d!752745 m!2995785))

(assert (=> d!752745 m!2995727))

(declare-fun m!2995793 () Bool)

(assert (=> b!2646877 m!2995793))

(declare-fun m!2995795 () Bool)

(assert (=> b!2646878 m!2995795))

(assert (=> b!2646879 m!2995789))

(assert (=> b!2646879 m!2995789))

(assert (=> b!2646879 m!2995785))

(assert (=> b!2646879 m!2995785))

(assert (=> b!2646879 m!2995787))

(declare-fun m!2995797 () Bool)

(assert (=> b!2646879 m!2995797))

(assert (=> b!2646833 d!752745))

(declare-fun d!752751 () Bool)

(declare-fun lt!931438 () Int)

(assert (=> d!752751 (>= lt!931438 0)))

(declare-fun e!1668904 () Int)

(assert (=> d!752751 (= lt!931438 e!1668904)))

(declare-fun c!425761 () Bool)

(assert (=> d!752751 (= c!425761 ((_ is Nil!30550) lt!931428))))

(assert (=> d!752751 (= (size!23637 lt!931428) lt!931438)))

(declare-fun b!2646884 () Bool)

(assert (=> b!2646884 (= e!1668904 0)))

(declare-fun b!2646885 () Bool)

(assert (=> b!2646885 (= e!1668904 (+ 1 (size!23637 (t!219465 lt!931428))))))

(assert (= (and d!752751 c!425761) b!2646884))

(assert (= (and d!752751 (not c!425761)) b!2646885))

(declare-fun m!2995799 () Bool)

(assert (=> b!2646885 m!2995799))

(assert (=> b!2646844 d!752751))

(declare-fun d!752753 () Bool)

(declare-fun lt!931445 () Bool)

(declare-fun forall!6427 (List!30650 Int) Bool)

(assert (=> d!752753 (= lt!931445 (forall!6427 (list!11513 v!6381) lambda!99084))))

(declare-fun forall!6428 (Conc!9541 Int) Bool)

(assert (=> d!752753 (= lt!931445 (forall!6428 (c!425755 v!6381) lambda!99084))))

(assert (=> d!752753 (= (forall!6424 v!6381 lambda!99084) lt!931445)))

(declare-fun bs!476999 () Bool)

(assert (= bs!476999 d!752753))

(assert (=> bs!476999 m!2995733))

(assert (=> bs!476999 m!2995733))

(declare-fun m!2995801 () Bool)

(assert (=> bs!476999 m!2995801))

(declare-fun m!2995803 () Bool)

(assert (=> bs!476999 m!2995803))

(assert (=> b!2646843 d!752753))

(declare-fun d!752755 () Bool)

(declare-fun lt!931450 () Int)

(assert (=> d!752755 (= lt!931450 (size!23637 (list!11513 v!6381)))))

(declare-fun size!23641 (Conc!9541) Int)

(assert (=> d!752755 (= lt!931450 (size!23641 (c!425755 v!6381)))))

(assert (=> d!752755 (= (size!23636 v!6381) lt!931450)))

(declare-fun bs!477000 () Bool)

(assert (= bs!477000 d!752755))

(assert (=> bs!477000 m!2995733))

(assert (=> bs!477000 m!2995733))

(declare-fun m!2995823 () Bool)

(assert (=> bs!477000 m!2995823))

(declare-fun m!2995825 () Bool)

(assert (=> bs!477000 m!2995825))

(assert (=> b!2646842 d!752755))

(declare-fun d!752759 () Bool)

(assert (=> d!752759 (forall!6427 (dropList!950 v!6381 from!862) lambda!99084)))

(declare-fun lt!931456 () Unit!44623)

(declare-fun choose!15693 (List!30650 List!30650 Int) Unit!44623)

(assert (=> d!752759 (= lt!931456 (choose!15693 lt!931428 (dropList!950 v!6381 from!862) lambda!99084))))

(assert (=> d!752759 (forall!6427 lt!931428 lambda!99084)))

(assert (=> d!752759 (= (lemmaContentSubsetPreservesForall!316 lt!931428 (dropList!950 v!6381 from!862) lambda!99084) lt!931456)))

(declare-fun bs!477002 () Bool)

(assert (= bs!477002 d!752759))

(assert (=> bs!477002 m!2995729))

(declare-fun m!2995833 () Bool)

(assert (=> bs!477002 m!2995833))

(assert (=> bs!477002 m!2995729))

(declare-fun m!2995835 () Bool)

(assert (=> bs!477002 m!2995835))

(declare-fun m!2995837 () Bool)

(assert (=> bs!477002 m!2995837))

(assert (=> b!2646841 d!752759))

(declare-fun d!752763 () Bool)

(declare-fun drop!1645 (List!30650 Int) List!30650)

(declare-fun list!11517 (Conc!9541) List!30650)

(assert (=> d!752763 (= (dropList!950 v!6381 from!862) (drop!1645 (list!11517 (c!425755 v!6381)) from!862))))

(declare-fun bs!477005 () Bool)

(assert (= bs!477005 d!752763))

(declare-fun m!2995847 () Bool)

(assert (=> bs!477005 m!2995847))

(assert (=> bs!477005 m!2995847))

(declare-fun m!2995849 () Bool)

(assert (=> bs!477005 m!2995849))

(assert (=> b!2646841 d!752763))

(declare-fun d!752773 () Bool)

(assert (=> d!752773 (= (list!11513 v!6381) (list!11517 (c!425755 v!6381)))))

(declare-fun bs!477006 () Bool)

(assert (= bs!477006 d!752773))

(assert (=> bs!477006 m!2995847))

(assert (=> b!2646841 d!752773))

(declare-fun b!2646925 () Bool)

(declare-fun e!1668929 () Bool)

(declare-fun inv!17 (TokenValue!4871) Bool)

(assert (=> b!2646925 (= e!1668929 (inv!17 (value!150101 separatorToken!156)))))

(declare-fun b!2646926 () Bool)

(declare-fun res!1113349 () Bool)

(declare-fun e!1668931 () Bool)

(assert (=> b!2646926 (=> res!1113349 e!1668931)))

(assert (=> b!2646926 (= res!1113349 (not ((_ is IntegerValue!14615) (value!150101 separatorToken!156))))))

(assert (=> b!2646926 (= e!1668929 e!1668931)))

(declare-fun b!2646927 () Bool)

(declare-fun e!1668930 () Bool)

(declare-fun inv!16 (TokenValue!4871) Bool)

(assert (=> b!2646927 (= e!1668930 (inv!16 (value!150101 separatorToken!156)))))

(declare-fun d!752777 () Bool)

(declare-fun c!425769 () Bool)

(assert (=> d!752777 (= c!425769 ((_ is IntegerValue!14613) (value!150101 separatorToken!156)))))

(assert (=> d!752777 (= (inv!21 (value!150101 separatorToken!156)) e!1668930)))

(declare-fun b!2646928 () Bool)

(declare-fun inv!15 (TokenValue!4871) Bool)

(assert (=> b!2646928 (= e!1668931 (inv!15 (value!150101 separatorToken!156)))))

(declare-fun b!2646929 () Bool)

(assert (=> b!2646929 (= e!1668930 e!1668929)))

(declare-fun c!425770 () Bool)

(assert (=> b!2646929 (= c!425770 ((_ is IntegerValue!14614) (value!150101 separatorToken!156)))))

(assert (= (and d!752777 c!425769) b!2646927))

(assert (= (and d!752777 (not c!425769)) b!2646929))

(assert (= (and b!2646929 c!425770) b!2646925))

(assert (= (and b!2646929 (not c!425770)) b!2646926))

(assert (= (and b!2646926 (not res!1113349)) b!2646928))

(declare-fun m!2995867 () Bool)

(assert (=> b!2646925 m!2995867))

(declare-fun m!2995869 () Bool)

(assert (=> b!2646927 m!2995869))

(declare-fun m!2995871 () Bool)

(assert (=> b!2646928 m!2995871))

(assert (=> b!2646830 d!752777))

(declare-fun d!752783 () Bool)

(assert (=> d!752783 (= (inv!41462 (tag!5145 (rule!7037 separatorToken!156))) (= (mod (str.len (value!150100 (tag!5145 (rule!7037 separatorToken!156)))) 2) 0))))

(assert (=> b!2646829 d!752783))

(declare-fun d!752785 () Bool)

(declare-fun res!1113359 () Bool)

(declare-fun e!1668941 () Bool)

(assert (=> d!752785 (=> (not res!1113359) (not e!1668941))))

(declare-fun semiInverseModEq!1924 (Int Int) Bool)

(assert (=> d!752785 (= res!1113359 (semiInverseModEq!1924 (toChars!6434 (transformation!4649 (rule!7037 separatorToken!156))) (toValue!6575 (transformation!4649 (rule!7037 separatorToken!156)))))))

(assert (=> d!752785 (= (inv!41467 (transformation!4649 (rule!7037 separatorToken!156))) e!1668941)))

(declare-fun b!2646939 () Bool)

(declare-fun equivClasses!1825 (Int Int) Bool)

(assert (=> b!2646939 (= e!1668941 (equivClasses!1825 (toChars!6434 (transformation!4649 (rule!7037 separatorToken!156))) (toValue!6575 (transformation!4649 (rule!7037 separatorToken!156)))))))

(assert (= (and d!752785 res!1113359) b!2646939))

(declare-fun m!2995885 () Bool)

(assert (=> d!752785 m!2995885))

(declare-fun m!2995887 () Bool)

(assert (=> b!2646939 m!2995887))

(assert (=> b!2646829 d!752785))

(declare-fun d!752797 () Bool)

(declare-fun res!1113362 () Bool)

(declare-fun e!1668944 () Bool)

(assert (=> d!752797 (=> (not res!1113362) (not e!1668944))))

(declare-fun rulesValid!1730 (LexerInterface!4246 List!30649) Bool)

(assert (=> d!752797 (= res!1113362 (rulesValid!1730 thiss!14197 rules!1726))))

(assert (=> d!752797 (= (rulesInvariant!3746 thiss!14197 rules!1726) e!1668944)))

(declare-fun b!2646942 () Bool)

(declare-datatypes ((List!30652 0))(
  ( (Nil!30552) (Cons!30552 (h!35972 String!34239) (t!219489 List!30652)) )
))
(declare-fun noDuplicateTag!1726 (LexerInterface!4246 List!30649 List!30652) Bool)

(assert (=> b!2646942 (= e!1668944 (noDuplicateTag!1726 thiss!14197 rules!1726 Nil!30552))))

(assert (= (and d!752797 res!1113362) b!2646942))

(declare-fun m!2995889 () Bool)

(assert (=> d!752797 m!2995889))

(declare-fun m!2995891 () Bool)

(assert (=> b!2646942 m!2995891))

(assert (=> b!2646840 d!752797))

(declare-fun d!752799 () Bool)

(declare-fun c!425773 () Bool)

(assert (=> d!752799 (= c!425773 ((_ is Node!9541) (c!425755 v!6381)))))

(declare-fun e!1668949 () Bool)

(assert (=> d!752799 (= (inv!41468 (c!425755 v!6381)) e!1668949)))

(declare-fun b!2646949 () Bool)

(declare-fun inv!41478 (Conc!9541) Bool)

(assert (=> b!2646949 (= e!1668949 (inv!41478 (c!425755 v!6381)))))

(declare-fun b!2646950 () Bool)

(declare-fun e!1668950 () Bool)

(assert (=> b!2646950 (= e!1668949 e!1668950)))

(declare-fun res!1113365 () Bool)

(assert (=> b!2646950 (= res!1113365 (not ((_ is Leaf!14606) (c!425755 v!6381))))))

(assert (=> b!2646950 (=> res!1113365 e!1668950)))

(declare-fun b!2646951 () Bool)

(declare-fun inv!41479 (Conc!9541) Bool)

(assert (=> b!2646951 (= e!1668950 (inv!41479 (c!425755 v!6381)))))

(assert (= (and d!752799 c!425773) b!2646949))

(assert (= (and d!752799 (not c!425773)) b!2646950))

(assert (= (and b!2646950 (not res!1113365)) b!2646951))

(declare-fun m!2995893 () Bool)

(assert (=> b!2646949 m!2995893))

(declare-fun m!2995895 () Bool)

(assert (=> b!2646951 m!2995895))

(assert (=> b!2646839 d!752799))

(declare-fun d!752801 () Bool)

(assert (=> d!752801 (= (inv!41462 (tag!5145 (h!35969 rules!1726))) (= (mod (str.len (value!150100 (tag!5145 (h!35969 rules!1726)))) 2) 0))))

(assert (=> b!2646828 d!752801))

(declare-fun d!752803 () Bool)

(declare-fun res!1113366 () Bool)

(declare-fun e!1668951 () Bool)

(assert (=> d!752803 (=> (not res!1113366) (not e!1668951))))

(assert (=> d!752803 (= res!1113366 (semiInverseModEq!1924 (toChars!6434 (transformation!4649 (h!35969 rules!1726))) (toValue!6575 (transformation!4649 (h!35969 rules!1726)))))))

(assert (=> d!752803 (= (inv!41467 (transformation!4649 (h!35969 rules!1726))) e!1668951)))

(declare-fun b!2646952 () Bool)

(assert (=> b!2646952 (= e!1668951 (equivClasses!1825 (toChars!6434 (transformation!4649 (h!35969 rules!1726))) (toValue!6575 (transformation!4649 (h!35969 rules!1726)))))))

(assert (= (and d!752803 res!1113366) b!2646952))

(declare-fun m!2995897 () Bool)

(assert (=> d!752803 m!2995897))

(declare-fun m!2995899 () Bool)

(assert (=> b!2646952 m!2995899))

(assert (=> b!2646828 d!752803))

(declare-fun bs!477011 () Bool)

(declare-fun d!752805 () Bool)

(assert (= bs!477011 (and d!752805 b!2646843)))

(declare-fun lambda!99094 () Int)

(assert (=> bs!477011 (not (= lambda!99094 lambda!99084))))

(declare-fun b!2647045 () Bool)

(declare-fun e!1669012 () Bool)

(assert (=> b!2647045 (= e!1669012 true)))

(declare-fun b!2647044 () Bool)

(declare-fun e!1669011 () Bool)

(assert (=> b!2647044 (= e!1669011 e!1669012)))

(declare-fun b!2647043 () Bool)

(declare-fun e!1669010 () Bool)

(assert (=> b!2647043 (= e!1669010 e!1669011)))

(assert (=> d!752805 e!1669010))

(assert (= b!2647044 b!2647045))

(assert (= b!2647043 b!2647044))

(assert (= (and d!752805 ((_ is Cons!30549) rules!1726)) b!2647043))

(declare-fun order!16613 () Int)

(declare-fun order!16611 () Int)

(declare-fun dynLambda!13126 (Int Int) Int)

(declare-fun dynLambda!13127 (Int Int) Int)

(assert (=> b!2647045 (< (dynLambda!13126 order!16611 (toValue!6575 (transformation!4649 (h!35969 rules!1726)))) (dynLambda!13127 order!16613 lambda!99094))))

(declare-fun order!16615 () Int)

(declare-fun dynLambda!13128 (Int Int) Int)

(assert (=> b!2647045 (< (dynLambda!13128 order!16615 (toChars!6434 (transformation!4649 (h!35969 rules!1726)))) (dynLambda!13127 order!16613 lambda!99094))))

(assert (=> d!752805 true))

(declare-fun e!1669003 () Bool)

(assert (=> d!752805 e!1669003))

(declare-fun res!1113378 () Bool)

(assert (=> d!752805 (=> (not res!1113378) (not e!1669003))))

(declare-fun lt!931471 () Bool)

(assert (=> d!752805 (= res!1113378 (= lt!931471 (forall!6427 (list!11513 v!6381) lambda!99094)))))

(assert (=> d!752805 (= lt!931471 (forall!6424 v!6381 lambda!99094))))

(assert (=> d!752805 (not (isEmpty!17449 rules!1726))))

(assert (=> d!752805 (= (rulesProduceEachTokenIndividually!1066 thiss!14197 rules!1726 v!6381) lt!931471)))

(declare-fun b!2647034 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1476 (LexerInterface!4246 List!30649 List!30650) Bool)

(assert (=> b!2647034 (= e!1669003 (= lt!931471 (rulesProduceEachTokenIndividuallyList!1476 thiss!14197 rules!1726 (list!11513 v!6381))))))

(assert (= (and d!752805 res!1113378) b!2647034))

(assert (=> d!752805 m!2995733))

(assert (=> d!752805 m!2995733))

(declare-fun m!2995931 () Bool)

(assert (=> d!752805 m!2995931))

(declare-fun m!2995933 () Bool)

(assert (=> d!752805 m!2995933))

(assert (=> d!752805 m!2995727))

(assert (=> b!2647034 m!2995733))

(assert (=> b!2647034 m!2995733))

(declare-fun m!2995935 () Bool)

(assert (=> b!2647034 m!2995935))

(assert (=> b!2646838 d!752805))

(declare-fun b!2647058 () Bool)

(declare-fun b_free!74497 () Bool)

(declare-fun b_next!75201 () Bool)

(assert (=> b!2647058 (= b_free!74497 (not b_next!75201))))

(declare-fun tp!839550 () Bool)

(declare-fun b_and!194495 () Bool)

(assert (=> b!2647058 (= tp!839550 b_and!194495)))

(declare-fun b_free!74499 () Bool)

(declare-fun b_next!75203 () Bool)

(assert (=> b!2647058 (= b_free!74499 (not b_next!75203))))

(declare-fun t!219487 () Bool)

(declare-fun tb!146369 () Bool)

(assert (=> (and b!2647058 (= (toChars!6434 (transformation!4649 (h!35969 (t!219464 rules!1726)))) (toChars!6434 (transformation!4649 (rule!7037 separatorToken!156)))) t!219487) tb!146369))

(declare-fun result!181366 () Bool)

(assert (= result!181366 result!181342))

(assert (=> b!2646849 t!219487))

(declare-fun tp!839549 () Bool)

(declare-fun b_and!194497 () Bool)

(assert (=> b!2647058 (= tp!839549 (and (=> t!219487 result!181366) b_and!194497))))

(declare-fun e!1669022 () Bool)

(assert (=> b!2647058 (= e!1669022 (and tp!839550 tp!839549))))

(declare-fun e!1669023 () Bool)

(declare-fun b!2647057 () Bool)

(declare-fun tp!839552 () Bool)

(assert (=> b!2647057 (= e!1669023 (and tp!839552 (inv!41462 (tag!5145 (h!35969 (t!219464 rules!1726)))) (inv!41467 (transformation!4649 (h!35969 (t!219464 rules!1726)))) e!1669022))))

(declare-fun b!2647056 () Bool)

(declare-fun e!1669021 () Bool)

(declare-fun tp!839551 () Bool)

(assert (=> b!2647056 (= e!1669021 (and e!1669023 tp!839551))))

(assert (=> b!2646836 (= tp!839482 e!1669021)))

(assert (= b!2647057 b!2647058))

(assert (= b!2647056 b!2647057))

(assert (= (and b!2646836 ((_ is Cons!30549) (t!219464 rules!1726))) b!2647056))

(declare-fun m!2995937 () Bool)

(assert (=> b!2647057 m!2995937))

(declare-fun m!2995939 () Bool)

(assert (=> b!2647057 m!2995939))

(declare-fun b!2647063 () Bool)

(declare-fun e!1669027 () Bool)

(declare-fun tp_is_empty!13777 () Bool)

(declare-fun tp!839555 () Bool)

(assert (=> b!2647063 (= e!1669027 (and tp_is_empty!13777 tp!839555))))

(assert (=> b!2646830 (= tp!839486 e!1669027)))

(assert (= (and b!2646830 ((_ is Cons!30548) (originalCharacters!5415 separatorToken!156))) b!2647063))

(declare-fun b!2647075 () Bool)

(declare-fun e!1669030 () Bool)

(declare-fun tp!839570 () Bool)

(declare-fun tp!839566 () Bool)

(assert (=> b!2647075 (= e!1669030 (and tp!839570 tp!839566))))

(assert (=> b!2646829 (= tp!839485 e!1669030)))

(declare-fun b!2647074 () Bool)

(assert (=> b!2647074 (= e!1669030 tp_is_empty!13777)))

(declare-fun b!2647076 () Bool)

(declare-fun tp!839569 () Bool)

(assert (=> b!2647076 (= e!1669030 tp!839569)))

(declare-fun b!2647077 () Bool)

(declare-fun tp!839567 () Bool)

(declare-fun tp!839568 () Bool)

(assert (=> b!2647077 (= e!1669030 (and tp!839567 tp!839568))))

(assert (= (and b!2646829 ((_ is ElementMatch!7793) (regex!4649 (rule!7037 separatorToken!156)))) b!2647074))

(assert (= (and b!2646829 ((_ is Concat!12664) (regex!4649 (rule!7037 separatorToken!156)))) b!2647075))

(assert (= (and b!2646829 ((_ is Star!7793) (regex!4649 (rule!7037 separatorToken!156)))) b!2647076))

(assert (= (and b!2646829 ((_ is Union!7793) (regex!4649 (rule!7037 separatorToken!156)))) b!2647077))

(declare-fun tp!839577 () Bool)

(declare-fun tp!839579 () Bool)

(declare-fun b!2647086 () Bool)

(declare-fun e!1669035 () Bool)

(assert (=> b!2647086 (= e!1669035 (and (inv!41468 (left!23601 (c!425755 v!6381))) tp!839577 (inv!41468 (right!23931 (c!425755 v!6381))) tp!839579))))

(declare-fun b!2647088 () Bool)

(declare-fun e!1669036 () Bool)

(declare-fun tp!839578 () Bool)

(assert (=> b!2647088 (= e!1669036 tp!839578)))

(declare-fun b!2647087 () Bool)

(declare-fun inv!41480 (IArray!19087) Bool)

(assert (=> b!2647087 (= e!1669035 (and (inv!41480 (xs!12553 (c!425755 v!6381))) e!1669036))))

(assert (=> b!2646839 (= tp!839488 (and (inv!41468 (c!425755 v!6381)) e!1669035))))

(assert (= (and b!2646839 ((_ is Node!9541) (c!425755 v!6381))) b!2647086))

(assert (= b!2647087 b!2647088))

(assert (= (and b!2646839 ((_ is Leaf!14606) (c!425755 v!6381))) b!2647087))

(declare-fun m!2995941 () Bool)

(assert (=> b!2647086 m!2995941))

(declare-fun m!2995943 () Bool)

(assert (=> b!2647086 m!2995943))

(declare-fun m!2995945 () Bool)

(assert (=> b!2647087 m!2995945))

(assert (=> b!2646839 m!2995743))

(declare-fun b!2647090 () Bool)

(declare-fun e!1669037 () Bool)

(declare-fun tp!839584 () Bool)

(declare-fun tp!839580 () Bool)

(assert (=> b!2647090 (= e!1669037 (and tp!839584 tp!839580))))

(assert (=> b!2646828 (= tp!839487 e!1669037)))

(declare-fun b!2647089 () Bool)

(assert (=> b!2647089 (= e!1669037 tp_is_empty!13777)))

(declare-fun b!2647091 () Bool)

(declare-fun tp!839583 () Bool)

(assert (=> b!2647091 (= e!1669037 tp!839583)))

(declare-fun b!2647092 () Bool)

(declare-fun tp!839581 () Bool)

(declare-fun tp!839582 () Bool)

(assert (=> b!2647092 (= e!1669037 (and tp!839581 tp!839582))))

(assert (= (and b!2646828 ((_ is ElementMatch!7793) (regex!4649 (h!35969 rules!1726)))) b!2647089))

(assert (= (and b!2646828 ((_ is Concat!12664) (regex!4649 (h!35969 rules!1726)))) b!2647090))

(assert (= (and b!2646828 ((_ is Star!7793) (regex!4649 (h!35969 rules!1726)))) b!2647091))

(assert (= (and b!2646828 ((_ is Union!7793) (regex!4649 (h!35969 rules!1726)))) b!2647092))

(declare-fun b_lambda!79965 () Bool)

(assert (= b_lambda!79959 (or (and b!2646831 b_free!74487) (and b!2646832 b_free!74491 (= (toChars!6434 (transformation!4649 (h!35969 rules!1726))) (toChars!6434 (transformation!4649 (rule!7037 separatorToken!156))))) (and b!2647058 b_free!74499 (= (toChars!6434 (transformation!4649 (h!35969 (t!219464 rules!1726)))) (toChars!6434 (transformation!4649 (rule!7037 separatorToken!156))))) b_lambda!79965)))

(check-sat (not b!2646951) (not b!2646849) (not b!2646925) b_and!194483 (not b_next!75193) b_and!194495 (not d!752773) b_and!194475 (not b_lambda!79965) (not b!2646942) (not b_next!75203) (not b!2647075) (not d!752737) (not b!2647092) (not b!2646877) (not b!2647043) (not b!2647056) (not b!2647057) (not d!752805) (not d!752759) (not d!752763) (not d!752755) (not b!2647077) (not b!2646949) (not b!2646878) (not b!2646861) (not b!2646839) (not b!2647063) tp_is_empty!13777 (not b!2647087) (not d!752797) (not b!2647088) (not b!2646927) (not b!2647076) (not b!2646885) (not d!752745) (not b!2646850) (not b!2646928) (not b!2646860) (not b!2647034) (not d!752739) (not d!752785) (not b!2646952) (not tb!146359) (not b!2647090) b_and!194485 b_and!194479 (not b!2647086) (not b_next!75201) (not b!2646855) (not b_next!75195) (not b!2646939) b_and!194497 (not b!2646879) (not d!752753) (not b!2647091) (not d!752803) (not b_next!75189) (not b_next!75191))
(check-sat b_and!194483 (not b_next!75193) b_and!194495 b_and!194475 (not b_next!75201) (not b_next!75203) b_and!194485 b_and!194479 b_and!194497 (not b_next!75195) (not b_next!75189) (not b_next!75191))
