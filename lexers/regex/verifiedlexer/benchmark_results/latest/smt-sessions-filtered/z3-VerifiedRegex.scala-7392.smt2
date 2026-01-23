; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392978 () Bool)

(assert start!392978)

(declare-fun b!4136973 () Bool)

(declare-fun b_free!117643 () Bool)

(declare-fun b_next!118347 () Bool)

(assert (=> b!4136973 (= b_free!117643 (not b_next!118347))))

(declare-fun tp!1261070 () Bool)

(declare-fun b_and!321033 () Bool)

(assert (=> b!4136973 (= tp!1261070 b_and!321033)))

(declare-fun b_free!117645 () Bool)

(declare-fun b_next!118349 () Bool)

(assert (=> b!4136973 (= b_free!117645 (not b_next!118349))))

(declare-fun tp!1261066 () Bool)

(declare-fun b_and!321035 () Bool)

(assert (=> b!4136973 (= tp!1261066 b_and!321035)))

(declare-fun b!4136961 () Bool)

(declare-fun b_free!117647 () Bool)

(declare-fun b_next!118351 () Bool)

(assert (=> b!4136961 (= b_free!117647 (not b_next!118351))))

(declare-fun tp!1261068 () Bool)

(declare-fun b_and!321037 () Bool)

(assert (=> b!4136961 (= tp!1261068 b_and!321037)))

(declare-fun b_free!117649 () Bool)

(declare-fun b_next!118353 () Bool)

(assert (=> b!4136961 (= b_free!117649 (not b_next!118353))))

(declare-fun tp!1261072 () Bool)

(declare-fun b_and!321039 () Bool)

(assert (=> b!4136961 (= tp!1261072 b_and!321039)))

(declare-fun b!4136963 () Bool)

(declare-fun b_free!117651 () Bool)

(declare-fun b_next!118355 () Bool)

(assert (=> b!4136963 (= b_free!117651 (not b_next!118355))))

(declare-fun tp!1261069 () Bool)

(declare-fun b_and!321041 () Bool)

(assert (=> b!4136963 (= tp!1261069 b_and!321041)))

(declare-fun b_free!117653 () Bool)

(declare-fun b_next!118357 () Bool)

(assert (=> b!4136963 (= b_free!117653 (not b_next!118357))))

(declare-fun tp!1261065 () Bool)

(declare-fun b_and!321043 () Bool)

(assert (=> b!4136963 (= tp!1261065 b_and!321043)))

(declare-fun b!4136952 () Bool)

(declare-fun res!1691873 () Bool)

(declare-fun e!2566843 () Bool)

(assert (=> b!4136952 (=> (not res!1691873) (not e!2566843))))

(declare-datatypes ((LexerInterface!6945 0))(
  ( (LexerInterfaceExt!6942 (__x!27389 Int)) (Lexer!6943) )
))
(declare-fun thiss!25645 () LexerInterface!6945)

(declare-datatypes ((List!44964 0))(
  ( (Nil!44840) (Cons!44840 (h!50260 (_ BitVec 16)) (t!342049 List!44964)) )
))
(declare-datatypes ((TokenValue!7586 0))(
  ( (FloatLiteralValue!15172 (text!53547 List!44964)) (TokenValueExt!7585 (__x!27390 Int)) (Broken!37930 (value!230174 List!44964)) (Object!7709) (End!7586) (Def!7586) (Underscore!7586) (Match!7586) (Else!7586) (Error!7586) (Case!7586) (If!7586) (Extends!7586) (Abstract!7586) (Class!7586) (Val!7586) (DelimiterValue!15172 (del!7646 List!44964)) (KeywordValue!7592 (value!230175 List!44964)) (CommentValue!15172 (value!230176 List!44964)) (WhitespaceValue!15172 (value!230177 List!44964)) (IndentationValue!7586 (value!230178 List!44964)) (String!51679) (Int32!7586) (Broken!37931 (value!230179 List!44964)) (Boolean!7587) (Unit!64150) (OperatorValue!7589 (op!7646 List!44964)) (IdentifierValue!15172 (value!230180 List!44964)) (IdentifierValue!15173 (value!230181 List!44964)) (WhitespaceValue!15173 (value!230182 List!44964)) (True!15172) (False!15172) (Broken!37932 (value!230183 List!44964)) (Broken!37933 (value!230184 List!44964)) (True!15173) (RightBrace!7586) (RightBracket!7586) (Colon!7586) (Null!7586) (Comma!7586) (LeftBracket!7586) (False!15173) (LeftBrace!7586) (ImaginaryLiteralValue!7586 (text!53548 List!44964)) (StringLiteralValue!22758 (value!230185 List!44964)) (EOFValue!7586 (value!230186 List!44964)) (IdentValue!7586 (value!230187 List!44964)) (DelimiterValue!15173 (value!230188 List!44964)) (DedentValue!7586 (value!230189 List!44964)) (NewLineValue!7586 (value!230190 List!44964)) (IntegerValue!22758 (value!230191 (_ BitVec 32)) (text!53549 List!44964)) (IntegerValue!22759 (value!230192 Int) (text!53550 List!44964)) (Times!7586) (Or!7586) (Equal!7586) (Minus!7586) (Broken!37934 (value!230193 List!44964)) (And!7586) (Div!7586) (LessEqual!7586) (Mod!7586) (Concat!19847) (Not!7586) (Plus!7586) (SpaceValue!7586 (value!230194 List!44964)) (IntegerValue!22760 (value!230195 Int) (text!53551 List!44964)) (StringLiteralValue!22759 (text!53552 List!44964)) (FloatLiteralValue!15173 (text!53553 List!44964)) (BytesLiteralValue!7586 (value!230196 List!44964)) (CommentValue!15173 (value!230197 List!44964)) (StringLiteralValue!22760 (value!230198 List!44964)) (ErrorTokenValue!7586 (msg!7647 List!44964)) )
))
(declare-datatypes ((C!24708 0))(
  ( (C!24709 (val!14464 Int)) )
))
(declare-datatypes ((List!44965 0))(
  ( (Nil!44841) (Cons!44841 (h!50261 C!24708) (t!342050 List!44965)) )
))
(declare-datatypes ((IArray!27139 0))(
  ( (IArray!27140 (innerList!13627 List!44965)) )
))
(declare-datatypes ((Conc!13567 0))(
  ( (Node!13567 (left!33579 Conc!13567) (right!33909 Conc!13567) (csize!27364 Int) (cheight!13778 Int)) (Leaf!20960 (xs!16873 IArray!27139) (csize!27365 Int)) (Empty!13567) )
))
(declare-datatypes ((BalanceConc!26728 0))(
  ( (BalanceConc!26729 (c!709436 Conc!13567)) )
))
(declare-datatypes ((String!51680 0))(
  ( (String!51681 (value!230199 String)) )
))
(declare-datatypes ((Regex!12261 0))(
  ( (ElementMatch!12261 (c!709437 C!24708)) (Concat!19848 (regOne!25034 Regex!12261) (regTwo!25034 Regex!12261)) (EmptyExpr!12261) (Star!12261 (reg!12590 Regex!12261)) (EmptyLang!12261) (Union!12261 (regOne!25035 Regex!12261) (regTwo!25035 Regex!12261)) )
))
(declare-datatypes ((TokenValueInjection!14600 0))(
  ( (TokenValueInjection!14601 (toValue!10020 Int) (toChars!9879 Int)) )
))
(declare-datatypes ((Rule!14512 0))(
  ( (Rule!14513 (regex!7356 Regex!12261) (tag!8216 String!51680) (isSeparator!7356 Bool) (transformation!7356 TokenValueInjection!14600)) )
))
(declare-fun r!4008 () Rule!14512)

(declare-fun ruleValid!3162 (LexerInterface!6945 Rule!14512) Bool)

(assert (=> b!4136952 (= res!1691873 (ruleValid!3162 thiss!25645 r!4008))))

(declare-fun b!4136953 () Bool)

(declare-fun e!2566852 () Bool)

(declare-fun tp_is_empty!21445 () Bool)

(declare-fun tp!1261074 () Bool)

(assert (=> b!4136953 (= e!2566852 (and tp_is_empty!21445 tp!1261074))))

(declare-fun b!4136954 () Bool)

(declare-fun res!1691868 () Bool)

(declare-fun e!2566847 () Bool)

(assert (=> b!4136954 (=> (not res!1691868) (not e!2566847))))

(declare-fun p!2912 () List!44965)

(declare-fun isEmpty!26721 (List!44965) Bool)

(assert (=> b!4136954 (= res!1691868 (not (isEmpty!26721 p!2912)))))

(declare-fun tp!1261076 () Bool)

(declare-fun b!4136956 () Bool)

(declare-fun e!2566846 () Bool)

(declare-fun e!2566860 () Bool)

(declare-fun inv!59445 (String!51680) Bool)

(declare-fun inv!59447 (TokenValueInjection!14600) Bool)

(assert (=> b!4136956 (= e!2566846 (and tp!1261076 (inv!59445 (tag!8216 r!4008)) (inv!59447 (transformation!7356 r!4008)) e!2566860))))

(declare-fun b!4136957 () Bool)

(declare-fun e!2566850 () Bool)

(assert (=> b!4136957 (= e!2566843 (not e!2566850))))

(declare-fun res!1691882 () Bool)

(assert (=> b!4136957 (=> res!1691882 e!2566850)))

(declare-datatypes ((List!44966 0))(
  ( (Nil!44842) (Cons!44842 (h!50262 Rule!14512) (t!342051 List!44966)) )
))
(declare-fun rules!3756 () List!44966)

(declare-fun rBis!149 () Rule!14512)

(get-info :version)

(assert (=> b!4136957 (= res!1691882 (or (not ((_ is Cons!44842) rules!3756)) (not (= (h!50262 rules!3756) rBis!149))))))

(declare-datatypes ((Unit!64151 0))(
  ( (Unit!64152) )
))
(declare-fun lt!1475055 () Unit!64151)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2202 (LexerInterface!6945 Rule!14512 List!44966) Unit!64151)

(assert (=> b!4136957 (= lt!1475055 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2202 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4136957 (ruleValid!3162 thiss!25645 rBis!149)))

(declare-fun lt!1475047 () Unit!64151)

(assert (=> b!4136957 (= lt!1475047 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2202 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4136958 () Bool)

(declare-fun e!2566857 () Bool)

(declare-fun e!2566854 () Bool)

(assert (=> b!4136958 (= e!2566857 e!2566854)))

(declare-fun res!1691870 () Bool)

(assert (=> b!4136958 (=> res!1691870 e!2566854)))

(declare-fun lt!1475044 () BalanceConc!26728)

(declare-fun lt!1475050 () Int)

(declare-fun size!33198 (BalanceConc!26728) Int)

(assert (=> b!4136958 (= res!1691870 (<= (size!33198 lt!1475044) lt!1475050))))

(declare-datatypes ((Token!13642 0))(
  ( (Token!13643 (value!230200 TokenValue!7586) (rule!10456 Rule!14512) (size!33199 Int) (originalCharacters!7852 List!44965)) )
))
(declare-datatypes ((tuple2!43234 0))(
  ( (tuple2!43235 (_1!24751 Token!13642) (_2!24751 List!44965)) )
))
(declare-fun lt!1475056 () tuple2!43234)

(declare-fun charsOf!4955 (Token!13642) BalanceConc!26728)

(assert (=> b!4136958 (= lt!1475044 (charsOf!4955 (_1!24751 lt!1475056)))))

(declare-datatypes ((Option!9662 0))(
  ( (None!9661) (Some!9661 (v!40289 tuple2!43234)) )
))
(declare-fun lt!1475051 () Option!9662)

(declare-fun get!14629 (Option!9662) tuple2!43234)

(assert (=> b!4136958 (= lt!1475056 (get!14629 lt!1475051))))

(declare-fun b!4136959 () Bool)

(assert (=> b!4136959 (= e!2566847 e!2566843)))

(declare-fun res!1691874 () Bool)

(assert (=> b!4136959 (=> (not res!1691874) (not e!2566843))))

(declare-fun input!3238 () List!44965)

(declare-fun lt!1475045 () TokenValue!7586)

(declare-fun lt!1475057 () List!44965)

(declare-fun maxPrefix!4135 (LexerInterface!6945 List!44966 List!44965) Option!9662)

(assert (=> b!4136959 (= res!1691874 (= (maxPrefix!4135 thiss!25645 rules!3756 input!3238) (Some!9661 (tuple2!43235 (Token!13643 lt!1475045 r!4008 lt!1475050 p!2912) lt!1475057))))))

(declare-fun getSuffix!2618 (List!44965 List!44965) List!44965)

(assert (=> b!4136959 (= lt!1475057 (getSuffix!2618 input!3238 p!2912))))

(declare-fun size!33200 (List!44965) Int)

(assert (=> b!4136959 (= lt!1475050 (size!33200 p!2912))))

(declare-fun lt!1475048 () BalanceConc!26728)

(declare-fun apply!10429 (TokenValueInjection!14600 BalanceConc!26728) TokenValue!7586)

(assert (=> b!4136959 (= lt!1475045 (apply!10429 (transformation!7356 r!4008) lt!1475048))))

(declare-fun lt!1475046 () Unit!64151)

(declare-fun lemmaSemiInverse!2214 (TokenValueInjection!14600 BalanceConc!26728) Unit!64151)

(assert (=> b!4136959 (= lt!1475046 (lemmaSemiInverse!2214 (transformation!7356 r!4008) lt!1475048))))

(declare-fun seqFromList!5473 (List!44965) BalanceConc!26728)

(assert (=> b!4136959 (= lt!1475048 (seqFromList!5473 p!2912))))

(declare-fun b!4136960 () Bool)

(declare-fun e!2566856 () Bool)

(declare-fun tp!1261075 () Bool)

(assert (=> b!4136960 (= e!2566856 (and tp_is_empty!21445 tp!1261075))))

(declare-fun e!2566848 () Bool)

(assert (=> b!4136961 (= e!2566848 (and tp!1261068 tp!1261072))))

(declare-fun res!1691867 () Bool)

(assert (=> start!392978 (=> (not res!1691867) (not e!2566847))))

(assert (=> start!392978 (= res!1691867 ((_ is Lexer!6943) thiss!25645))))

(assert (=> start!392978 e!2566847))

(declare-fun e!2566845 () Bool)

(assert (=> start!392978 e!2566845))

(assert (=> start!392978 e!2566856))

(assert (=> start!392978 true))

(assert (=> start!392978 e!2566846))

(assert (=> start!392978 e!2566852))

(declare-fun e!2566853 () Bool)

(assert (=> start!392978 e!2566853))

(declare-fun b!4136955 () Bool)

(declare-fun res!1691880 () Bool)

(assert (=> b!4136955 (=> (not res!1691880) (not e!2566847))))

(declare-fun isPrefix!4291 (List!44965 List!44965) Bool)

(assert (=> b!4136955 (= res!1691880 (isPrefix!4291 p!2912 input!3238))))

(declare-fun b!4136962 () Bool)

(assert (=> b!4136962 (= e!2566850 e!2566857)))

(declare-fun res!1691879 () Bool)

(assert (=> b!4136962 (=> res!1691879 e!2566857)))

(declare-fun isEmpty!26722 (Option!9662) Bool)

(assert (=> b!4136962 (= res!1691879 (isEmpty!26722 lt!1475051))))

(declare-fun maxPrefixOneRule!3074 (LexerInterface!6945 Rule!14512 List!44965) Option!9662)

(assert (=> b!4136962 (= lt!1475051 (maxPrefixOneRule!3074 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4136962 (not (= rBis!149 r!4008))))

(declare-fun lt!1475053 () Unit!64151)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!54 (LexerInterface!6945 List!44966 Rule!14512 Rule!14512) Unit!64151)

(assert (=> b!4136962 (= lt!1475053 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!54 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9036 (List!44966 Rule!14512) Bool)

(declare-fun tail!6517 (List!44966) List!44966)

(assert (=> b!4136962 (contains!9036 (tail!6517 rules!3756) r!4008)))

(declare-fun lt!1475052 () Unit!64151)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!60 (List!44966 Rule!14512 Rule!14512) Unit!64151)

(assert (=> b!4136962 (= lt!1475052 (lemmaGetIndexBiggerAndHeadEqThenTailContains!60 rules!3756 rBis!149 r!4008))))

(assert (=> b!4136963 (= e!2566860 (and tp!1261069 tp!1261065))))

(declare-fun b!4136964 () Bool)

(declare-fun e!2566849 () Bool)

(assert (=> b!4136964 (= e!2566854 e!2566849)))

(declare-fun res!1691881 () Bool)

(assert (=> b!4136964 (=> res!1691881 e!2566849)))

(declare-fun ++!11600 (List!44965 List!44965) List!44965)

(assert (=> b!4136964 (= res!1691881 (not (= (++!11600 p!2912 lt!1475057) input!3238)))))

(declare-fun lt!1475049 () List!44965)

(declare-fun lt!1475058 () List!44965)

(assert (=> b!4136964 (= lt!1475049 (getSuffix!2618 input!3238 lt!1475058))))

(declare-fun list!16419 (BalanceConc!26728) List!44965)

(assert (=> b!4136964 (= lt!1475058 (list!16419 lt!1475044))))

(declare-fun b!4136965 () Bool)

(declare-fun res!1691872 () Bool)

(assert (=> b!4136965 (=> (not res!1691872) (not e!2566847))))

(declare-fun rulesInvariant!6242 (LexerInterface!6945 List!44966) Bool)

(assert (=> b!4136965 (= res!1691872 (rulesInvariant!6242 thiss!25645 rules!3756))))

(declare-fun b!4136966 () Bool)

(declare-fun res!1691875 () Bool)

(assert (=> b!4136966 (=> (not res!1691875) (not e!2566843))))

(declare-fun getIndex!702 (List!44966 Rule!14512) Int)

(assert (=> b!4136966 (= res!1691875 (< (getIndex!702 rules!3756 rBis!149) (getIndex!702 rules!3756 r!4008)))))

(declare-fun b!4136967 () Bool)

(assert (=> b!4136967 (= e!2566849 (= lt!1475051 (Some!9661 (tuple2!43235 (_1!24751 lt!1475056) lt!1475049))))))

(assert (=> b!4136967 (isPrefix!4291 input!3238 input!3238)))

(declare-fun lt!1475054 () Unit!64151)

(declare-fun lemmaIsPrefixRefl!2774 (List!44965 List!44965) Unit!64151)

(assert (=> b!4136967 (= lt!1475054 (lemmaIsPrefixRefl!2774 input!3238 input!3238))))

(declare-fun b!4136968 () Bool)

(declare-fun res!1691871 () Bool)

(assert (=> b!4136968 (=> (not res!1691871) (not e!2566843))))

(declare-fun matchR!6090 (Regex!12261 List!44965) Bool)

(assert (=> b!4136968 (= res!1691871 (matchR!6090 (regex!7356 r!4008) p!2912))))

(declare-fun b!4136969 () Bool)

(declare-fun res!1691876 () Bool)

(assert (=> b!4136969 (=> (not res!1691876) (not e!2566847))))

(declare-fun isEmpty!26723 (List!44966) Bool)

(assert (=> b!4136969 (= res!1691876 (not (isEmpty!26723 rules!3756)))))

(declare-fun b!4136970 () Bool)

(declare-fun res!1691869 () Bool)

(assert (=> b!4136970 (=> res!1691869 e!2566849)))

(assert (=> b!4136970 (= res!1691869 (not (isPrefix!4291 lt!1475058 input!3238)))))

(declare-fun b!4136971 () Bool)

(declare-fun res!1691878 () Bool)

(assert (=> b!4136971 (=> (not res!1691878) (not e!2566847))))

(assert (=> b!4136971 (= res!1691878 (contains!9036 rules!3756 rBis!149))))

(declare-fun b!4136972 () Bool)

(declare-fun e!2566855 () Bool)

(declare-fun tp!1261067 () Bool)

(assert (=> b!4136972 (= e!2566845 (and e!2566855 tp!1261067))))

(declare-fun e!2566844 () Bool)

(assert (=> b!4136973 (= e!2566844 (and tp!1261070 tp!1261066))))

(declare-fun b!4136974 () Bool)

(declare-fun tp!1261071 () Bool)

(assert (=> b!4136974 (= e!2566855 (and tp!1261071 (inv!59445 (tag!8216 (h!50262 rules!3756))) (inv!59447 (transformation!7356 (h!50262 rules!3756))) e!2566848))))

(declare-fun b!4136975 () Bool)

(declare-fun tp!1261073 () Bool)

(assert (=> b!4136975 (= e!2566853 (and tp!1261073 (inv!59445 (tag!8216 rBis!149)) (inv!59447 (transformation!7356 rBis!149)) e!2566844))))

(declare-fun b!4136976 () Bool)

(declare-fun res!1691877 () Bool)

(assert (=> b!4136976 (=> (not res!1691877) (not e!2566847))))

(assert (=> b!4136976 (= res!1691877 (contains!9036 rules!3756 r!4008))))

(assert (= (and start!392978 res!1691867) b!4136955))

(assert (= (and b!4136955 res!1691880) b!4136969))

(assert (= (and b!4136969 res!1691876) b!4136965))

(assert (= (and b!4136965 res!1691872) b!4136976))

(assert (= (and b!4136976 res!1691877) b!4136971))

(assert (= (and b!4136971 res!1691878) b!4136954))

(assert (= (and b!4136954 res!1691868) b!4136959))

(assert (= (and b!4136959 res!1691874) b!4136968))

(assert (= (and b!4136968 res!1691871) b!4136966))

(assert (= (and b!4136966 res!1691875) b!4136952))

(assert (= (and b!4136952 res!1691873) b!4136957))

(assert (= (and b!4136957 (not res!1691882)) b!4136962))

(assert (= (and b!4136962 (not res!1691879)) b!4136958))

(assert (= (and b!4136958 (not res!1691870)) b!4136964))

(assert (= (and b!4136964 (not res!1691881)) b!4136970))

(assert (= (and b!4136970 (not res!1691869)) b!4136967))

(assert (= b!4136974 b!4136961))

(assert (= b!4136972 b!4136974))

(assert (= (and start!392978 ((_ is Cons!44842) rules!3756)) b!4136972))

(assert (= (and start!392978 ((_ is Cons!44841) p!2912)) b!4136960))

(assert (= b!4136956 b!4136963))

(assert (= start!392978 b!4136956))

(assert (= (and start!392978 ((_ is Cons!44841) input!3238)) b!4136953))

(assert (= b!4136975 b!4136973))

(assert (= start!392978 b!4136975))

(declare-fun m!4733525 () Bool)

(assert (=> b!4136957 m!4733525))

(declare-fun m!4733527 () Bool)

(assert (=> b!4136957 m!4733527))

(declare-fun m!4733529 () Bool)

(assert (=> b!4136957 m!4733529))

(declare-fun m!4733531 () Bool)

(assert (=> b!4136976 m!4733531))

(declare-fun m!4733533 () Bool)

(assert (=> b!4136975 m!4733533))

(declare-fun m!4733535 () Bool)

(assert (=> b!4136975 m!4733535))

(declare-fun m!4733537 () Bool)

(assert (=> b!4136970 m!4733537))

(declare-fun m!4733539 () Bool)

(assert (=> b!4136956 m!4733539))

(declare-fun m!4733541 () Bool)

(assert (=> b!4136956 m!4733541))

(declare-fun m!4733543 () Bool)

(assert (=> b!4136974 m!4733543))

(declare-fun m!4733545 () Bool)

(assert (=> b!4136974 m!4733545))

(declare-fun m!4733547 () Bool)

(assert (=> b!4136971 m!4733547))

(declare-fun m!4733549 () Bool)

(assert (=> b!4136966 m!4733549))

(declare-fun m!4733551 () Bool)

(assert (=> b!4136966 m!4733551))

(declare-fun m!4733553 () Bool)

(assert (=> b!4136959 m!4733553))

(declare-fun m!4733555 () Bool)

(assert (=> b!4136959 m!4733555))

(declare-fun m!4733557 () Bool)

(assert (=> b!4136959 m!4733557))

(declare-fun m!4733559 () Bool)

(assert (=> b!4136959 m!4733559))

(declare-fun m!4733561 () Bool)

(assert (=> b!4136959 m!4733561))

(declare-fun m!4733563 () Bool)

(assert (=> b!4136959 m!4733563))

(declare-fun m!4733565 () Bool)

(assert (=> b!4136968 m!4733565))

(declare-fun m!4733567 () Bool)

(assert (=> b!4136958 m!4733567))

(declare-fun m!4733569 () Bool)

(assert (=> b!4136958 m!4733569))

(declare-fun m!4733571 () Bool)

(assert (=> b!4136958 m!4733571))

(declare-fun m!4733573 () Bool)

(assert (=> b!4136969 m!4733573))

(declare-fun m!4733575 () Bool)

(assert (=> b!4136952 m!4733575))

(declare-fun m!4733577 () Bool)

(assert (=> b!4136967 m!4733577))

(declare-fun m!4733579 () Bool)

(assert (=> b!4136967 m!4733579))

(declare-fun m!4733581 () Bool)

(assert (=> b!4136964 m!4733581))

(declare-fun m!4733583 () Bool)

(assert (=> b!4136964 m!4733583))

(declare-fun m!4733585 () Bool)

(assert (=> b!4136964 m!4733585))

(declare-fun m!4733587 () Bool)

(assert (=> b!4136965 m!4733587))

(declare-fun m!4733589 () Bool)

(assert (=> b!4136955 m!4733589))

(declare-fun m!4733591 () Bool)

(assert (=> b!4136962 m!4733591))

(declare-fun m!4733593 () Bool)

(assert (=> b!4136962 m!4733593))

(declare-fun m!4733595 () Bool)

(assert (=> b!4136962 m!4733595))

(assert (=> b!4136962 m!4733591))

(declare-fun m!4733597 () Bool)

(assert (=> b!4136962 m!4733597))

(declare-fun m!4733599 () Bool)

(assert (=> b!4136962 m!4733599))

(declare-fun m!4733601 () Bool)

(assert (=> b!4136962 m!4733601))

(declare-fun m!4733603 () Bool)

(assert (=> b!4136954 m!4733603))

(check-sat (not b_next!118357) (not b!4136964) (not b!4136955) (not b_next!118349) (not b!4136975) (not b_next!118355) (not b!4136953) (not b!4136966) (not b_next!118351) (not b_next!118353) (not b!4136976) (not b!4136952) (not b!4136974) (not b!4136958) tp_is_empty!21445 b_and!321043 (not b!4136972) (not b!4136970) (not b!4136971) (not b!4136954) b_and!321033 (not b!4136968) (not b!4136967) (not b!4136959) (not b!4136956) b_and!321039 b_and!321035 (not b!4136960) (not b!4136962) (not b!4136969) (not b!4136965) b_and!321037 (not b!4136957) b_and!321041 (not b_next!118347))
(check-sat (not b_next!118357) (not b_next!118349) b_and!321043 (not b_next!118355) b_and!321033 (not b_next!118351) b_and!321037 (not b_next!118353) b_and!321039 b_and!321035 b_and!321041 (not b_next!118347))
(get-model)

(declare-fun d!1225057 () Bool)

(declare-fun lt!1475064 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6922 (List!44966) (InoxSet Rule!14512))

(assert (=> d!1225057 (= lt!1475064 (select (content!6922 rules!3756) r!4008))))

(declare-fun e!2566868 () Bool)

(assert (=> d!1225057 (= lt!1475064 e!2566868)))

(declare-fun res!1691899 () Bool)

(assert (=> d!1225057 (=> (not res!1691899) (not e!2566868))))

(assert (=> d!1225057 (= res!1691899 ((_ is Cons!44842) rules!3756))))

(assert (=> d!1225057 (= (contains!9036 rules!3756 r!4008) lt!1475064)))

(declare-fun b!4136984 () Bool)

(declare-fun e!2566869 () Bool)

(assert (=> b!4136984 (= e!2566868 e!2566869)))

(declare-fun res!1691900 () Bool)

(assert (=> b!4136984 (=> res!1691900 e!2566869)))

(assert (=> b!4136984 (= res!1691900 (= (h!50262 rules!3756) r!4008))))

(declare-fun b!4136985 () Bool)

(assert (=> b!4136985 (= e!2566869 (contains!9036 (t!342051 rules!3756) r!4008))))

(assert (= (and d!1225057 res!1691899) b!4136984))

(assert (= (and b!4136984 (not res!1691900)) b!4136985))

(declare-fun m!4733613 () Bool)

(assert (=> d!1225057 m!4733613))

(declare-fun m!4733615 () Bool)

(assert (=> d!1225057 m!4733615))

(declare-fun m!4733617 () Bool)

(assert (=> b!4136985 m!4733617))

(assert (=> b!4136976 d!1225057))

(declare-fun d!1225063 () Bool)

(declare-fun res!1691904 () Bool)

(declare-fun e!2566876 () Bool)

(assert (=> d!1225063 (=> (not res!1691904) (not e!2566876))))

(declare-fun rulesValid!2890 (LexerInterface!6945 List!44966) Bool)

(assert (=> d!1225063 (= res!1691904 (rulesValid!2890 thiss!25645 rules!3756))))

(assert (=> d!1225063 (= (rulesInvariant!6242 thiss!25645 rules!3756) e!2566876)))

(declare-fun b!4136994 () Bool)

(declare-datatypes ((List!44967 0))(
  ( (Nil!44843) (Cons!44843 (h!50263 String!51680) (t!342100 List!44967)) )
))
(declare-fun noDuplicateTag!2973 (LexerInterface!6945 List!44966 List!44967) Bool)

(assert (=> b!4136994 (= e!2566876 (noDuplicateTag!2973 thiss!25645 rules!3756 Nil!44843))))

(assert (= (and d!1225063 res!1691904) b!4136994))

(declare-fun m!4733631 () Bool)

(assert (=> d!1225063 m!4733631))

(declare-fun m!4733633 () Bool)

(assert (=> b!4136994 m!4733633))

(assert (=> b!4136965 d!1225063))

(declare-fun d!1225073 () Bool)

(assert (=> d!1225073 (= (isEmpty!26721 p!2912) ((_ is Nil!44841) p!2912))))

(assert (=> b!4136954 d!1225073))

(declare-fun d!1225075 () Bool)

(assert (=> d!1225075 (= (inv!59445 (tag!8216 rBis!149)) (= (mod (str.len (value!230199 (tag!8216 rBis!149))) 2) 0))))

(assert (=> b!4136975 d!1225075))

(declare-fun d!1225077 () Bool)

(declare-fun res!1691919 () Bool)

(declare-fun e!2566888 () Bool)

(assert (=> d!1225077 (=> (not res!1691919) (not e!2566888))))

(declare-fun semiInverseModEq!3177 (Int Int) Bool)

(assert (=> d!1225077 (= res!1691919 (semiInverseModEq!3177 (toChars!9879 (transformation!7356 rBis!149)) (toValue!10020 (transformation!7356 rBis!149))))))

(assert (=> d!1225077 (= (inv!59447 (transformation!7356 rBis!149)) e!2566888)))

(declare-fun b!4137009 () Bool)

(declare-fun equivClasses!3076 (Int Int) Bool)

(assert (=> b!4137009 (= e!2566888 (equivClasses!3076 (toChars!9879 (transformation!7356 rBis!149)) (toValue!10020 (transformation!7356 rBis!149))))))

(assert (= (and d!1225077 res!1691919) b!4137009))

(declare-fun m!4733645 () Bool)

(assert (=> d!1225077 m!4733645))

(declare-fun m!4733647 () Bool)

(assert (=> b!4137009 m!4733647))

(assert (=> b!4136975 d!1225077))

(declare-fun b!4137034 () Bool)

(declare-fun e!2566908 () List!44965)

(assert (=> b!4137034 (= e!2566908 lt!1475057)))

(declare-fun b!4137035 () Bool)

(assert (=> b!4137035 (= e!2566908 (Cons!44841 (h!50261 p!2912) (++!11600 (t!342050 p!2912) lt!1475057)))))

(declare-fun b!4137036 () Bool)

(declare-fun res!1691941 () Bool)

(declare-fun e!2566907 () Bool)

(assert (=> b!4137036 (=> (not res!1691941) (not e!2566907))))

(declare-fun lt!1475082 () List!44965)

(assert (=> b!4137036 (= res!1691941 (= (size!33200 lt!1475082) (+ (size!33200 p!2912) (size!33200 lt!1475057))))))

(declare-fun d!1225083 () Bool)

(assert (=> d!1225083 e!2566907))

(declare-fun res!1691940 () Bool)

(assert (=> d!1225083 (=> (not res!1691940) (not e!2566907))))

(declare-fun content!6923 (List!44965) (InoxSet C!24708))

(assert (=> d!1225083 (= res!1691940 (= (content!6923 lt!1475082) ((_ map or) (content!6923 p!2912) (content!6923 lt!1475057))))))

(assert (=> d!1225083 (= lt!1475082 e!2566908)))

(declare-fun c!709440 () Bool)

(assert (=> d!1225083 (= c!709440 ((_ is Nil!44841) p!2912))))

(assert (=> d!1225083 (= (++!11600 p!2912 lt!1475057) lt!1475082)))

(declare-fun b!4137037 () Bool)

(assert (=> b!4137037 (= e!2566907 (or (not (= lt!1475057 Nil!44841)) (= lt!1475082 p!2912)))))

(assert (= (and d!1225083 c!709440) b!4137034))

(assert (= (and d!1225083 (not c!709440)) b!4137035))

(assert (= (and d!1225083 res!1691940) b!4137036))

(assert (= (and b!4137036 res!1691941) b!4137037))

(declare-fun m!4733673 () Bool)

(assert (=> b!4137035 m!4733673))

(declare-fun m!4733675 () Bool)

(assert (=> b!4137036 m!4733675))

(assert (=> b!4137036 m!4733553))

(declare-fun m!4733677 () Bool)

(assert (=> b!4137036 m!4733677))

(declare-fun m!4733679 () Bool)

(assert (=> d!1225083 m!4733679))

(declare-fun m!4733681 () Bool)

(assert (=> d!1225083 m!4733681))

(declare-fun m!4733683 () Bool)

(assert (=> d!1225083 m!4733683))

(assert (=> b!4136964 d!1225083))

(declare-fun d!1225095 () Bool)

(declare-fun lt!1475088 () List!44965)

(assert (=> d!1225095 (= (++!11600 lt!1475058 lt!1475088) input!3238)))

(declare-fun e!2566917 () List!44965)

(assert (=> d!1225095 (= lt!1475088 e!2566917)))

(declare-fun c!709446 () Bool)

(assert (=> d!1225095 (= c!709446 ((_ is Cons!44841) lt!1475058))))

(assert (=> d!1225095 (>= (size!33200 input!3238) (size!33200 lt!1475058))))

(assert (=> d!1225095 (= (getSuffix!2618 input!3238 lt!1475058) lt!1475088)))

(declare-fun b!4137054 () Bool)

(declare-fun tail!6519 (List!44965) List!44965)

(assert (=> b!4137054 (= e!2566917 (getSuffix!2618 (tail!6519 input!3238) (t!342050 lt!1475058)))))

(declare-fun b!4137055 () Bool)

(assert (=> b!4137055 (= e!2566917 input!3238)))

(assert (= (and d!1225095 c!709446) b!4137054))

(assert (= (and d!1225095 (not c!709446)) b!4137055))

(declare-fun m!4733697 () Bool)

(assert (=> d!1225095 m!4733697))

(declare-fun m!4733699 () Bool)

(assert (=> d!1225095 m!4733699))

(declare-fun m!4733701 () Bool)

(assert (=> d!1225095 m!4733701))

(declare-fun m!4733703 () Bool)

(assert (=> b!4137054 m!4733703))

(assert (=> b!4137054 m!4733703))

(declare-fun m!4733705 () Bool)

(assert (=> b!4137054 m!4733705))

(assert (=> b!4136964 d!1225095))

(declare-fun d!1225099 () Bool)

(declare-fun list!16421 (Conc!13567) List!44965)

(assert (=> d!1225099 (= (list!16419 lt!1475044) (list!16421 (c!709436 lt!1475044)))))

(declare-fun bs!595144 () Bool)

(assert (= bs!595144 d!1225099))

(declare-fun m!4733711 () Bool)

(assert (=> bs!595144 m!4733711))

(assert (=> b!4136964 d!1225099))

(declare-fun d!1225103 () Bool)

(assert (=> d!1225103 (= (inv!59445 (tag!8216 (h!50262 rules!3756))) (= (mod (str.len (value!230199 (tag!8216 (h!50262 rules!3756)))) 2) 0))))

(assert (=> b!4136974 d!1225103))

(declare-fun d!1225105 () Bool)

(declare-fun res!1691948 () Bool)

(declare-fun e!2566921 () Bool)

(assert (=> d!1225105 (=> (not res!1691948) (not e!2566921))))

(assert (=> d!1225105 (= res!1691948 (semiInverseModEq!3177 (toChars!9879 (transformation!7356 (h!50262 rules!3756))) (toValue!10020 (transformation!7356 (h!50262 rules!3756)))))))

(assert (=> d!1225105 (= (inv!59447 (transformation!7356 (h!50262 rules!3756))) e!2566921)))

(declare-fun b!4137062 () Bool)

(assert (=> b!4137062 (= e!2566921 (equivClasses!3076 (toChars!9879 (transformation!7356 (h!50262 rules!3756))) (toValue!10020 (transformation!7356 (h!50262 rules!3756)))))))

(assert (= (and d!1225105 res!1691948) b!4137062))

(declare-fun m!4733713 () Bool)

(assert (=> d!1225105 m!4733713))

(declare-fun m!4733715 () Bool)

(assert (=> b!4137062 m!4733715))

(assert (=> b!4136974 d!1225105))

(declare-fun b!4137164 () Bool)

(declare-fun e!2566984 () Bool)

(declare-fun e!2566980 () Bool)

(assert (=> b!4137164 (= e!2566984 e!2566980)))

(declare-fun res!1692005 () Bool)

(assert (=> b!4137164 (=> res!1692005 e!2566980)))

(declare-fun call!290446 () Bool)

(assert (=> b!4137164 (= res!1692005 call!290446)))

(declare-fun b!4137165 () Bool)

(declare-fun e!2566978 () Bool)

(declare-fun lt!1475105 () Bool)

(assert (=> b!4137165 (= e!2566978 (not lt!1475105))))

(declare-fun b!4137166 () Bool)

(declare-fun res!1692010 () Bool)

(declare-fun e!2566979 () Bool)

(assert (=> b!4137166 (=> res!1692010 e!2566979)))

(assert (=> b!4137166 (= res!1692010 (not ((_ is ElementMatch!12261) (regex!7356 r!4008))))))

(assert (=> b!4137166 (= e!2566978 e!2566979)))

(declare-fun d!1225107 () Bool)

(declare-fun e!2566982 () Bool)

(assert (=> d!1225107 e!2566982))

(declare-fun c!709473 () Bool)

(assert (=> d!1225107 (= c!709473 ((_ is EmptyExpr!12261) (regex!7356 r!4008)))))

(declare-fun e!2566981 () Bool)

(assert (=> d!1225107 (= lt!1475105 e!2566981)))

(declare-fun c!709474 () Bool)

(assert (=> d!1225107 (= c!709474 (isEmpty!26721 p!2912))))

(declare-fun validRegex!5521 (Regex!12261) Bool)

(assert (=> d!1225107 (validRegex!5521 (regex!7356 r!4008))))

(assert (=> d!1225107 (= (matchR!6090 (regex!7356 r!4008) p!2912) lt!1475105)))

(declare-fun b!4137167 () Bool)

(declare-fun res!1692009 () Bool)

(assert (=> b!4137167 (=> res!1692009 e!2566979)))

(declare-fun e!2566983 () Bool)

(assert (=> b!4137167 (= res!1692009 e!2566983)))

(declare-fun res!1692011 () Bool)

(assert (=> b!4137167 (=> (not res!1692011) (not e!2566983))))

(assert (=> b!4137167 (= res!1692011 lt!1475105)))

(declare-fun b!4137168 () Bool)

(declare-fun derivativeStep!3708 (Regex!12261 C!24708) Regex!12261)

(declare-fun head!8726 (List!44965) C!24708)

(assert (=> b!4137168 (= e!2566981 (matchR!6090 (derivativeStep!3708 (regex!7356 r!4008) (head!8726 p!2912)) (tail!6519 p!2912)))))

(declare-fun b!4137169 () Bool)

(declare-fun res!1692006 () Bool)

(assert (=> b!4137169 (=> (not res!1692006) (not e!2566983))))

(assert (=> b!4137169 (= res!1692006 (not call!290446))))

(declare-fun b!4137170 () Bool)

(assert (=> b!4137170 (= e!2566979 e!2566984)))

(declare-fun res!1692008 () Bool)

(assert (=> b!4137170 (=> (not res!1692008) (not e!2566984))))

(assert (=> b!4137170 (= res!1692008 (not lt!1475105))))

(declare-fun bm!290441 () Bool)

(assert (=> bm!290441 (= call!290446 (isEmpty!26721 p!2912))))

(declare-fun b!4137171 () Bool)

(declare-fun res!1692004 () Bool)

(assert (=> b!4137171 (=> res!1692004 e!2566980)))

(assert (=> b!4137171 (= res!1692004 (not (isEmpty!26721 (tail!6519 p!2912))))))

(declare-fun b!4137172 () Bool)

(assert (=> b!4137172 (= e!2566982 (= lt!1475105 call!290446))))

(declare-fun b!4137173 () Bool)

(declare-fun res!1692007 () Bool)

(assert (=> b!4137173 (=> (not res!1692007) (not e!2566983))))

(assert (=> b!4137173 (= res!1692007 (isEmpty!26721 (tail!6519 p!2912)))))

(declare-fun b!4137174 () Bool)

(assert (=> b!4137174 (= e!2566983 (= (head!8726 p!2912) (c!709437 (regex!7356 r!4008))))))

(declare-fun b!4137175 () Bool)

(declare-fun nullable!4313 (Regex!12261) Bool)

(assert (=> b!4137175 (= e!2566981 (nullable!4313 (regex!7356 r!4008)))))

(declare-fun b!4137176 () Bool)

(assert (=> b!4137176 (= e!2566980 (not (= (head!8726 p!2912) (c!709437 (regex!7356 r!4008)))))))

(declare-fun b!4137177 () Bool)

(assert (=> b!4137177 (= e!2566982 e!2566978)))

(declare-fun c!709475 () Bool)

(assert (=> b!4137177 (= c!709475 ((_ is EmptyLang!12261) (regex!7356 r!4008)))))

(assert (= (and d!1225107 c!709474) b!4137175))

(assert (= (and d!1225107 (not c!709474)) b!4137168))

(assert (= (and d!1225107 c!709473) b!4137172))

(assert (= (and d!1225107 (not c!709473)) b!4137177))

(assert (= (and b!4137177 c!709475) b!4137165))

(assert (= (and b!4137177 (not c!709475)) b!4137166))

(assert (= (and b!4137166 (not res!1692010)) b!4137167))

(assert (= (and b!4137167 res!1692011) b!4137169))

(assert (= (and b!4137169 res!1692006) b!4137173))

(assert (= (and b!4137173 res!1692007) b!4137174))

(assert (= (and b!4137167 (not res!1692009)) b!4137170))

(assert (= (and b!4137170 res!1692008) b!4137164))

(assert (= (and b!4137164 (not res!1692005)) b!4137171))

(assert (= (and b!4137171 (not res!1692004)) b!4137176))

(assert (= (or b!4137172 b!4137164 b!4137169) bm!290441))

(declare-fun m!4733749 () Bool)

(assert (=> b!4137173 m!4733749))

(assert (=> b!4137173 m!4733749))

(declare-fun m!4733751 () Bool)

(assert (=> b!4137173 m!4733751))

(declare-fun m!4733753 () Bool)

(assert (=> b!4137174 m!4733753))

(assert (=> b!4137176 m!4733753))

(assert (=> b!4137171 m!4733749))

(assert (=> b!4137171 m!4733749))

(assert (=> b!4137171 m!4733751))

(assert (=> bm!290441 m!4733603))

(declare-fun m!4733755 () Bool)

(assert (=> b!4137175 m!4733755))

(assert (=> b!4137168 m!4733753))

(assert (=> b!4137168 m!4733753))

(declare-fun m!4733757 () Bool)

(assert (=> b!4137168 m!4733757))

(assert (=> b!4137168 m!4733749))

(assert (=> b!4137168 m!4733757))

(assert (=> b!4137168 m!4733749))

(declare-fun m!4733759 () Bool)

(assert (=> b!4137168 m!4733759))

(assert (=> d!1225107 m!4733603))

(declare-fun m!4733761 () Bool)

(assert (=> d!1225107 m!4733761))

(assert (=> b!4136968 d!1225107))

(declare-fun d!1225133 () Bool)

(assert (=> d!1225133 (ruleValid!3162 thiss!25645 r!4008)))

(declare-fun lt!1475108 () Unit!64151)

(declare-fun choose!25287 (LexerInterface!6945 Rule!14512 List!44966) Unit!64151)

(assert (=> d!1225133 (= lt!1475108 (choose!25287 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1225133 (contains!9036 rules!3756 r!4008)))

(assert (=> d!1225133 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2202 thiss!25645 r!4008 rules!3756) lt!1475108)))

(declare-fun bs!595146 () Bool)

(assert (= bs!595146 d!1225133))

(assert (=> bs!595146 m!4733575))

(declare-fun m!4733763 () Bool)

(assert (=> bs!595146 m!4733763))

(assert (=> bs!595146 m!4733531))

(assert (=> b!4136957 d!1225133))

(declare-fun d!1225135 () Bool)

(declare-fun res!1692016 () Bool)

(declare-fun e!2566987 () Bool)

(assert (=> d!1225135 (=> (not res!1692016) (not e!2566987))))

(assert (=> d!1225135 (= res!1692016 (validRegex!5521 (regex!7356 rBis!149)))))

(assert (=> d!1225135 (= (ruleValid!3162 thiss!25645 rBis!149) e!2566987)))

(declare-fun b!4137182 () Bool)

(declare-fun res!1692017 () Bool)

(assert (=> b!4137182 (=> (not res!1692017) (not e!2566987))))

(assert (=> b!4137182 (= res!1692017 (not (nullable!4313 (regex!7356 rBis!149))))))

(declare-fun b!4137183 () Bool)

(assert (=> b!4137183 (= e!2566987 (not (= (tag!8216 rBis!149) (String!51681 ""))))))

(assert (= (and d!1225135 res!1692016) b!4137182))

(assert (= (and b!4137182 res!1692017) b!4137183))

(declare-fun m!4733765 () Bool)

(assert (=> d!1225135 m!4733765))

(declare-fun m!4733767 () Bool)

(assert (=> b!4137182 m!4733767))

(assert (=> b!4136957 d!1225135))

(declare-fun d!1225137 () Bool)

(assert (=> d!1225137 (ruleValid!3162 thiss!25645 rBis!149)))

(declare-fun lt!1475109 () Unit!64151)

(assert (=> d!1225137 (= lt!1475109 (choose!25287 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1225137 (contains!9036 rules!3756 rBis!149)))

(assert (=> d!1225137 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2202 thiss!25645 rBis!149 rules!3756) lt!1475109)))

(declare-fun bs!595147 () Bool)

(assert (= bs!595147 d!1225137))

(assert (=> bs!595147 m!4733527))

(declare-fun m!4733769 () Bool)

(assert (=> bs!595147 m!4733769))

(assert (=> bs!595147 m!4733547))

(assert (=> b!4136957 d!1225137))

(declare-fun d!1225139 () Bool)

(declare-fun e!2566994 () Bool)

(assert (=> d!1225139 e!2566994))

(declare-fun res!1692029 () Bool)

(assert (=> d!1225139 (=> res!1692029 e!2566994)))

(declare-fun lt!1475112 () Bool)

(assert (=> d!1225139 (= res!1692029 (not lt!1475112))))

(declare-fun e!2566996 () Bool)

(assert (=> d!1225139 (= lt!1475112 e!2566996)))

(declare-fun res!1692028 () Bool)

(assert (=> d!1225139 (=> res!1692028 e!2566996)))

(assert (=> d!1225139 (= res!1692028 ((_ is Nil!44841) input!3238))))

(assert (=> d!1225139 (= (isPrefix!4291 input!3238 input!3238) lt!1475112)))

(declare-fun b!4137193 () Bool)

(declare-fun res!1692027 () Bool)

(declare-fun e!2566995 () Bool)

(assert (=> b!4137193 (=> (not res!1692027) (not e!2566995))))

(assert (=> b!4137193 (= res!1692027 (= (head!8726 input!3238) (head!8726 input!3238)))))

(declare-fun b!4137194 () Bool)

(assert (=> b!4137194 (= e!2566995 (isPrefix!4291 (tail!6519 input!3238) (tail!6519 input!3238)))))

(declare-fun b!4137192 () Bool)

(assert (=> b!4137192 (= e!2566996 e!2566995)))

(declare-fun res!1692026 () Bool)

(assert (=> b!4137192 (=> (not res!1692026) (not e!2566995))))

(assert (=> b!4137192 (= res!1692026 (not ((_ is Nil!44841) input!3238)))))

(declare-fun b!4137195 () Bool)

(assert (=> b!4137195 (= e!2566994 (>= (size!33200 input!3238) (size!33200 input!3238)))))

(assert (= (and d!1225139 (not res!1692028)) b!4137192))

(assert (= (and b!4137192 res!1692026) b!4137193))

(assert (= (and b!4137193 res!1692027) b!4137194))

(assert (= (and d!1225139 (not res!1692029)) b!4137195))

(declare-fun m!4733771 () Bool)

(assert (=> b!4137193 m!4733771))

(assert (=> b!4137193 m!4733771))

(assert (=> b!4137194 m!4733703))

(assert (=> b!4137194 m!4733703))

(assert (=> b!4137194 m!4733703))

(assert (=> b!4137194 m!4733703))

(declare-fun m!4733773 () Bool)

(assert (=> b!4137194 m!4733773))

(assert (=> b!4137195 m!4733699))

(assert (=> b!4137195 m!4733699))

(assert (=> b!4136967 d!1225139))

(declare-fun d!1225141 () Bool)

(assert (=> d!1225141 (isPrefix!4291 input!3238 input!3238)))

(declare-fun lt!1475115 () Unit!64151)

(declare-fun choose!25288 (List!44965 List!44965) Unit!64151)

(assert (=> d!1225141 (= lt!1475115 (choose!25288 input!3238 input!3238))))

(assert (=> d!1225141 (= (lemmaIsPrefixRefl!2774 input!3238 input!3238) lt!1475115)))

(declare-fun bs!595148 () Bool)

(assert (= bs!595148 d!1225141))

(assert (=> bs!595148 m!4733577))

(declare-fun m!4733775 () Bool)

(assert (=> bs!595148 m!4733775))

(assert (=> b!4136967 d!1225141))

(declare-fun d!1225143 () Bool)

(assert (=> d!1225143 (= (inv!59445 (tag!8216 r!4008)) (= (mod (str.len (value!230199 (tag!8216 r!4008))) 2) 0))))

(assert (=> b!4136956 d!1225143))

(declare-fun d!1225145 () Bool)

(declare-fun res!1692030 () Bool)

(declare-fun e!2566997 () Bool)

(assert (=> d!1225145 (=> (not res!1692030) (not e!2566997))))

(assert (=> d!1225145 (= res!1692030 (semiInverseModEq!3177 (toChars!9879 (transformation!7356 r!4008)) (toValue!10020 (transformation!7356 r!4008))))))

(assert (=> d!1225145 (= (inv!59447 (transformation!7356 r!4008)) e!2566997)))

(declare-fun b!4137196 () Bool)

(assert (=> b!4137196 (= e!2566997 (equivClasses!3076 (toChars!9879 (transformation!7356 r!4008)) (toValue!10020 (transformation!7356 r!4008))))))

(assert (= (and d!1225145 res!1692030) b!4137196))

(declare-fun m!4733777 () Bool)

(assert (=> d!1225145 m!4733777))

(declare-fun m!4733779 () Bool)

(assert (=> b!4137196 m!4733779))

(assert (=> b!4136956 d!1225145))

(declare-fun b!4137208 () Bool)

(declare-fun e!2567003 () Int)

(assert (=> b!4137208 (= e!2567003 (- 1))))

(declare-fun b!4137206 () Bool)

(declare-fun e!2567004 () Int)

(assert (=> b!4137206 (= e!2567004 e!2567003)))

(declare-fun c!709481 () Bool)

(assert (=> b!4137206 (= c!709481 (and ((_ is Cons!44842) rules!3756) (not (= (h!50262 rules!3756) rBis!149))))))

(declare-fun d!1225147 () Bool)

(declare-fun lt!1475118 () Int)

(assert (=> d!1225147 (>= lt!1475118 0)))

(assert (=> d!1225147 (= lt!1475118 e!2567004)))

(declare-fun c!709480 () Bool)

(assert (=> d!1225147 (= c!709480 (and ((_ is Cons!44842) rules!3756) (= (h!50262 rules!3756) rBis!149)))))

(assert (=> d!1225147 (contains!9036 rules!3756 rBis!149)))

(assert (=> d!1225147 (= (getIndex!702 rules!3756 rBis!149) lt!1475118)))

(declare-fun b!4137205 () Bool)

(assert (=> b!4137205 (= e!2567004 0)))

(declare-fun b!4137207 () Bool)

(assert (=> b!4137207 (= e!2567003 (+ 1 (getIndex!702 (t!342051 rules!3756) rBis!149)))))

(assert (= (and d!1225147 c!709480) b!4137205))

(assert (= (and d!1225147 (not c!709480)) b!4137206))

(assert (= (and b!4137206 c!709481) b!4137207))

(assert (= (and b!4137206 (not c!709481)) b!4137208))

(assert (=> d!1225147 m!4733547))

(declare-fun m!4733781 () Bool)

(assert (=> b!4137207 m!4733781))

(assert (=> b!4136966 d!1225147))

(declare-fun b!4137212 () Bool)

(declare-fun e!2567005 () Int)

(assert (=> b!4137212 (= e!2567005 (- 1))))

(declare-fun b!4137210 () Bool)

(declare-fun e!2567006 () Int)

(assert (=> b!4137210 (= e!2567006 e!2567005)))

(declare-fun c!709483 () Bool)

(assert (=> b!4137210 (= c!709483 (and ((_ is Cons!44842) rules!3756) (not (= (h!50262 rules!3756) r!4008))))))

(declare-fun d!1225149 () Bool)

(declare-fun lt!1475119 () Int)

(assert (=> d!1225149 (>= lt!1475119 0)))

(assert (=> d!1225149 (= lt!1475119 e!2567006)))

(declare-fun c!709482 () Bool)

(assert (=> d!1225149 (= c!709482 (and ((_ is Cons!44842) rules!3756) (= (h!50262 rules!3756) r!4008)))))

(assert (=> d!1225149 (contains!9036 rules!3756 r!4008)))

(assert (=> d!1225149 (= (getIndex!702 rules!3756 r!4008) lt!1475119)))

(declare-fun b!4137209 () Bool)

(assert (=> b!4137209 (= e!2567006 0)))

(declare-fun b!4137211 () Bool)

(assert (=> b!4137211 (= e!2567005 (+ 1 (getIndex!702 (t!342051 rules!3756) r!4008)))))

(assert (= (and d!1225149 c!709482) b!4137209))

(assert (= (and d!1225149 (not c!709482)) b!4137210))

(assert (= (and b!4137210 c!709483) b!4137211))

(assert (= (and b!4137210 (not c!709483)) b!4137212))

(assert (=> d!1225149 m!4733531))

(declare-fun m!4733783 () Bool)

(assert (=> b!4137211 m!4733783))

(assert (=> b!4136966 d!1225149))

(declare-fun d!1225151 () Bool)

(declare-fun e!2567007 () Bool)

(assert (=> d!1225151 e!2567007))

(declare-fun res!1692034 () Bool)

(assert (=> d!1225151 (=> res!1692034 e!2567007)))

(declare-fun lt!1475120 () Bool)

(assert (=> d!1225151 (= res!1692034 (not lt!1475120))))

(declare-fun e!2567009 () Bool)

(assert (=> d!1225151 (= lt!1475120 e!2567009)))

(declare-fun res!1692033 () Bool)

(assert (=> d!1225151 (=> res!1692033 e!2567009)))

(assert (=> d!1225151 (= res!1692033 ((_ is Nil!44841) p!2912))))

(assert (=> d!1225151 (= (isPrefix!4291 p!2912 input!3238) lt!1475120)))

(declare-fun b!4137214 () Bool)

(declare-fun res!1692032 () Bool)

(declare-fun e!2567008 () Bool)

(assert (=> b!4137214 (=> (not res!1692032) (not e!2567008))))

(assert (=> b!4137214 (= res!1692032 (= (head!8726 p!2912) (head!8726 input!3238)))))

(declare-fun b!4137215 () Bool)

(assert (=> b!4137215 (= e!2567008 (isPrefix!4291 (tail!6519 p!2912) (tail!6519 input!3238)))))

(declare-fun b!4137213 () Bool)

(assert (=> b!4137213 (= e!2567009 e!2567008)))

(declare-fun res!1692031 () Bool)

(assert (=> b!4137213 (=> (not res!1692031) (not e!2567008))))

(assert (=> b!4137213 (= res!1692031 (not ((_ is Nil!44841) input!3238)))))

(declare-fun b!4137216 () Bool)

(assert (=> b!4137216 (= e!2567007 (>= (size!33200 input!3238) (size!33200 p!2912)))))

(assert (= (and d!1225151 (not res!1692033)) b!4137213))

(assert (= (and b!4137213 res!1692031) b!4137214))

(assert (= (and b!4137214 res!1692032) b!4137215))

(assert (= (and d!1225151 (not res!1692034)) b!4137216))

(assert (=> b!4137214 m!4733753))

(assert (=> b!4137214 m!4733771))

(assert (=> b!4137215 m!4733749))

(assert (=> b!4137215 m!4733703))

(assert (=> b!4137215 m!4733749))

(assert (=> b!4137215 m!4733703))

(declare-fun m!4733785 () Bool)

(assert (=> b!4137215 m!4733785))

(assert (=> b!4137216 m!4733699))

(assert (=> b!4137216 m!4733553))

(assert (=> b!4136955 d!1225151))

(declare-fun d!1225153 () Bool)

(declare-fun e!2567010 () Bool)

(assert (=> d!1225153 e!2567010))

(declare-fun res!1692038 () Bool)

(assert (=> d!1225153 (=> res!1692038 e!2567010)))

(declare-fun lt!1475121 () Bool)

(assert (=> d!1225153 (= res!1692038 (not lt!1475121))))

(declare-fun e!2567012 () Bool)

(assert (=> d!1225153 (= lt!1475121 e!2567012)))

(declare-fun res!1692037 () Bool)

(assert (=> d!1225153 (=> res!1692037 e!2567012)))

(assert (=> d!1225153 (= res!1692037 ((_ is Nil!44841) lt!1475058))))

(assert (=> d!1225153 (= (isPrefix!4291 lt!1475058 input!3238) lt!1475121)))

(declare-fun b!4137218 () Bool)

(declare-fun res!1692036 () Bool)

(declare-fun e!2567011 () Bool)

(assert (=> b!4137218 (=> (not res!1692036) (not e!2567011))))

(assert (=> b!4137218 (= res!1692036 (= (head!8726 lt!1475058) (head!8726 input!3238)))))

(declare-fun b!4137219 () Bool)

(assert (=> b!4137219 (= e!2567011 (isPrefix!4291 (tail!6519 lt!1475058) (tail!6519 input!3238)))))

(declare-fun b!4137217 () Bool)

(assert (=> b!4137217 (= e!2567012 e!2567011)))

(declare-fun res!1692035 () Bool)

(assert (=> b!4137217 (=> (not res!1692035) (not e!2567011))))

(assert (=> b!4137217 (= res!1692035 (not ((_ is Nil!44841) input!3238)))))

(declare-fun b!4137220 () Bool)

(assert (=> b!4137220 (= e!2567010 (>= (size!33200 input!3238) (size!33200 lt!1475058)))))

(assert (= (and d!1225153 (not res!1692037)) b!4137217))

(assert (= (and b!4137217 res!1692035) b!4137218))

(assert (= (and b!4137218 res!1692036) b!4137219))

(assert (= (and d!1225153 (not res!1692038)) b!4137220))

(declare-fun m!4733787 () Bool)

(assert (=> b!4137218 m!4733787))

(assert (=> b!4137218 m!4733771))

(declare-fun m!4733789 () Bool)

(assert (=> b!4137219 m!4733789))

(assert (=> b!4137219 m!4733703))

(assert (=> b!4137219 m!4733789))

(assert (=> b!4137219 m!4733703))

(declare-fun m!4733791 () Bool)

(assert (=> b!4137219 m!4733791))

(assert (=> b!4137220 m!4733699))

(assert (=> b!4137220 m!4733701))

(assert (=> b!4136970 d!1225153))

(declare-fun b!4137262 () Bool)

(declare-fun e!2567035 () Bool)

(assert (=> b!4137262 (= e!2567035 true)))

(declare-fun d!1225155 () Bool)

(assert (=> d!1225155 e!2567035))

(assert (= d!1225155 b!4137262))

(declare-fun lambda!128919 () Int)

(declare-fun order!23705 () Int)

(declare-fun order!23707 () Int)

(declare-fun dynLambda!19263 (Int Int) Int)

(declare-fun dynLambda!19264 (Int Int) Int)

(assert (=> b!4137262 (< (dynLambda!19263 order!23705 (toValue!10020 (transformation!7356 r!4008))) (dynLambda!19264 order!23707 lambda!128919))))

(declare-fun order!23709 () Int)

(declare-fun dynLambda!19265 (Int Int) Int)

(assert (=> b!4137262 (< (dynLambda!19265 order!23709 (toChars!9879 (transformation!7356 r!4008))) (dynLambda!19264 order!23707 lambda!128919))))

(declare-fun dynLambda!19266 (Int TokenValue!7586) BalanceConc!26728)

(declare-fun dynLambda!19267 (Int BalanceConc!26728) TokenValue!7586)

(assert (=> d!1225155 (= (list!16419 (dynLambda!19266 (toChars!9879 (transformation!7356 r!4008)) (dynLambda!19267 (toValue!10020 (transformation!7356 r!4008)) lt!1475048))) (list!16419 lt!1475048))))

(declare-fun lt!1475149 () Unit!64151)

(declare-fun ForallOf!960 (Int BalanceConc!26728) Unit!64151)

(assert (=> d!1225155 (= lt!1475149 (ForallOf!960 lambda!128919 lt!1475048))))

(assert (=> d!1225155 (= (lemmaSemiInverse!2214 (transformation!7356 r!4008) lt!1475048) lt!1475149)))

(declare-fun b_lambda!121577 () Bool)

(assert (=> (not b_lambda!121577) (not d!1225155)))

(declare-fun t!342071 () Bool)

(declare-fun tb!248325 () Bool)

(assert (=> (and b!4136973 (= (toChars!9879 (transformation!7356 rBis!149)) (toChars!9879 (transformation!7356 r!4008))) t!342071) tb!248325))

(declare-fun b!4137269 () Bool)

(declare-fun tp!1261083 () Bool)

(declare-fun e!2567039 () Bool)

(declare-fun inv!59450 (Conc!13567) Bool)

(assert (=> b!4137269 (= e!2567039 (and (inv!59450 (c!709436 (dynLambda!19266 (toChars!9879 (transformation!7356 r!4008)) (dynLambda!19267 (toValue!10020 (transformation!7356 r!4008)) lt!1475048)))) tp!1261083))))

(declare-fun result!301906 () Bool)

(declare-fun inv!59451 (BalanceConc!26728) Bool)

(assert (=> tb!248325 (= result!301906 (and (inv!59451 (dynLambda!19266 (toChars!9879 (transformation!7356 r!4008)) (dynLambda!19267 (toValue!10020 (transformation!7356 r!4008)) lt!1475048))) e!2567039))))

(assert (= tb!248325 b!4137269))

(declare-fun m!4733865 () Bool)

(assert (=> b!4137269 m!4733865))

(declare-fun m!4733867 () Bool)

(assert (=> tb!248325 m!4733867))

(assert (=> d!1225155 t!342071))

(declare-fun b_and!321069 () Bool)

(assert (= b_and!321035 (and (=> t!342071 result!301906) b_and!321069)))

(declare-fun tb!248327 () Bool)

(declare-fun t!342073 () Bool)

(assert (=> (and b!4136961 (= (toChars!9879 (transformation!7356 (h!50262 rules!3756))) (toChars!9879 (transformation!7356 r!4008))) t!342073) tb!248327))

(declare-fun result!301910 () Bool)

(assert (= result!301910 result!301906))

(assert (=> d!1225155 t!342073))

(declare-fun b_and!321071 () Bool)

(assert (= b_and!321039 (and (=> t!342073 result!301910) b_and!321071)))

(declare-fun t!342075 () Bool)

(declare-fun tb!248329 () Bool)

(assert (=> (and b!4136963 (= (toChars!9879 (transformation!7356 r!4008)) (toChars!9879 (transformation!7356 r!4008))) t!342075) tb!248329))

(declare-fun result!301912 () Bool)

(assert (= result!301912 result!301906))

(assert (=> d!1225155 t!342075))

(declare-fun b_and!321073 () Bool)

(assert (= b_and!321043 (and (=> t!342075 result!301912) b_and!321073)))

(declare-fun b_lambda!121581 () Bool)

(assert (=> (not b_lambda!121581) (not d!1225155)))

(declare-fun t!342077 () Bool)

(declare-fun tb!248331 () Bool)

(assert (=> (and b!4136973 (= (toValue!10020 (transformation!7356 rBis!149)) (toValue!10020 (transformation!7356 r!4008))) t!342077) tb!248331))

(declare-fun result!301914 () Bool)

(declare-fun inv!21 (TokenValue!7586) Bool)

(assert (=> tb!248331 (= result!301914 (inv!21 (dynLambda!19267 (toValue!10020 (transformation!7356 r!4008)) lt!1475048)))))

(declare-fun m!4733869 () Bool)

(assert (=> tb!248331 m!4733869))

(assert (=> d!1225155 t!342077))

(declare-fun b_and!321075 () Bool)

(assert (= b_and!321033 (and (=> t!342077 result!301914) b_and!321075)))

(declare-fun tb!248333 () Bool)

(declare-fun t!342079 () Bool)

(assert (=> (and b!4136961 (= (toValue!10020 (transformation!7356 (h!50262 rules!3756))) (toValue!10020 (transformation!7356 r!4008))) t!342079) tb!248333))

(declare-fun result!301918 () Bool)

(assert (= result!301918 result!301914))

(assert (=> d!1225155 t!342079))

(declare-fun b_and!321077 () Bool)

(assert (= b_and!321037 (and (=> t!342079 result!301918) b_and!321077)))

(declare-fun t!342081 () Bool)

(declare-fun tb!248335 () Bool)

(assert (=> (and b!4136963 (= (toValue!10020 (transformation!7356 r!4008)) (toValue!10020 (transformation!7356 r!4008))) t!342081) tb!248335))

(declare-fun result!301920 () Bool)

(assert (= result!301920 result!301914))

(assert (=> d!1225155 t!342081))

(declare-fun b_and!321079 () Bool)

(assert (= b_and!321041 (and (=> t!342081 result!301920) b_and!321079)))

(declare-fun m!4733871 () Bool)

(assert (=> d!1225155 m!4733871))

(declare-fun m!4733873 () Bool)

(assert (=> d!1225155 m!4733873))

(assert (=> d!1225155 m!4733871))

(assert (=> d!1225155 m!4733873))

(declare-fun m!4733875 () Bool)

(assert (=> d!1225155 m!4733875))

(declare-fun m!4733877 () Bool)

(assert (=> d!1225155 m!4733877))

(declare-fun m!4733879 () Bool)

(assert (=> d!1225155 m!4733879))

(assert (=> b!4136959 d!1225155))

(declare-fun d!1225175 () Bool)

(declare-fun lt!1475151 () List!44965)

(assert (=> d!1225175 (= (++!11600 p!2912 lt!1475151) input!3238)))

(declare-fun e!2567043 () List!44965)

(assert (=> d!1225175 (= lt!1475151 e!2567043)))

(declare-fun c!709490 () Bool)

(assert (=> d!1225175 (= c!709490 ((_ is Cons!44841) p!2912))))

(assert (=> d!1225175 (>= (size!33200 input!3238) (size!33200 p!2912))))

(assert (=> d!1225175 (= (getSuffix!2618 input!3238 p!2912) lt!1475151)))

(declare-fun b!4137272 () Bool)

(assert (=> b!4137272 (= e!2567043 (getSuffix!2618 (tail!6519 input!3238) (t!342050 p!2912)))))

(declare-fun b!4137273 () Bool)

(assert (=> b!4137273 (= e!2567043 input!3238)))

(assert (= (and d!1225175 c!709490) b!4137272))

(assert (= (and d!1225175 (not c!709490)) b!4137273))

(declare-fun m!4733881 () Bool)

(assert (=> d!1225175 m!4733881))

(assert (=> d!1225175 m!4733699))

(assert (=> d!1225175 m!4733553))

(assert (=> b!4137272 m!4733703))

(assert (=> b!4137272 m!4733703))

(declare-fun m!4733883 () Bool)

(assert (=> b!4137272 m!4733883))

(assert (=> b!4136959 d!1225175))

(declare-fun b!4137319 () Bool)

(declare-fun e!2567059 () Bool)

(declare-fun lt!1475180 () Option!9662)

(assert (=> b!4137319 (= e!2567059 (contains!9036 rules!3756 (rule!10456 (_1!24751 (get!14629 lt!1475180)))))))

(declare-fun bm!290447 () Bool)

(declare-fun call!290452 () Option!9662)

(assert (=> bm!290447 (= call!290452 (maxPrefixOneRule!3074 thiss!25645 (h!50262 rules!3756) input!3238))))

(declare-fun b!4137320 () Bool)

(declare-fun res!1692097 () Bool)

(assert (=> b!4137320 (=> (not res!1692097) (not e!2567059))))

(assert (=> b!4137320 (= res!1692097 (< (size!33200 (_2!24751 (get!14629 lt!1475180))) (size!33200 input!3238)))))

(declare-fun b!4137321 () Bool)

(declare-fun e!2567061 () Bool)

(assert (=> b!4137321 (= e!2567061 e!2567059)))

(declare-fun res!1692102 () Bool)

(assert (=> b!4137321 (=> (not res!1692102) (not e!2567059))))

(declare-fun isDefined!7268 (Option!9662) Bool)

(assert (=> b!4137321 (= res!1692102 (isDefined!7268 lt!1475180))))

(declare-fun b!4137323 () Bool)

(declare-fun res!1692100 () Bool)

(assert (=> b!4137323 (=> (not res!1692100) (not e!2567059))))

(assert (=> b!4137323 (= res!1692100 (= (value!230200 (_1!24751 (get!14629 lt!1475180))) (apply!10429 (transformation!7356 (rule!10456 (_1!24751 (get!14629 lt!1475180)))) (seqFromList!5473 (originalCharacters!7852 (_1!24751 (get!14629 lt!1475180)))))))))

(declare-fun b!4137324 () Bool)

(declare-fun res!1692099 () Bool)

(assert (=> b!4137324 (=> (not res!1692099) (not e!2567059))))

(assert (=> b!4137324 (= res!1692099 (= (list!16419 (charsOf!4955 (_1!24751 (get!14629 lt!1475180)))) (originalCharacters!7852 (_1!24751 (get!14629 lt!1475180)))))))

(declare-fun b!4137325 () Bool)

(declare-fun e!2567060 () Option!9662)

(assert (=> b!4137325 (= e!2567060 call!290452)))

(declare-fun b!4137326 () Bool)

(declare-fun res!1692103 () Bool)

(assert (=> b!4137326 (=> (not res!1692103) (not e!2567059))))

(assert (=> b!4137326 (= res!1692103 (= (++!11600 (list!16419 (charsOf!4955 (_1!24751 (get!14629 lt!1475180)))) (_2!24751 (get!14629 lt!1475180))) input!3238))))

(declare-fun b!4137327 () Bool)

(declare-fun lt!1475177 () Option!9662)

(declare-fun lt!1475178 () Option!9662)

(assert (=> b!4137327 (= e!2567060 (ite (and ((_ is None!9661) lt!1475177) ((_ is None!9661) lt!1475178)) None!9661 (ite ((_ is None!9661) lt!1475178) lt!1475177 (ite ((_ is None!9661) lt!1475177) lt!1475178 (ite (>= (size!33199 (_1!24751 (v!40289 lt!1475177))) (size!33199 (_1!24751 (v!40289 lt!1475178)))) lt!1475177 lt!1475178)))))))

(assert (=> b!4137327 (= lt!1475177 call!290452)))

(assert (=> b!4137327 (= lt!1475178 (maxPrefix!4135 thiss!25645 (t!342051 rules!3756) input!3238))))

(declare-fun d!1225177 () Bool)

(assert (=> d!1225177 e!2567061))

(declare-fun res!1692098 () Bool)

(assert (=> d!1225177 (=> res!1692098 e!2567061)))

(assert (=> d!1225177 (= res!1692098 (isEmpty!26722 lt!1475180))))

(assert (=> d!1225177 (= lt!1475180 e!2567060)))

(declare-fun c!709496 () Bool)

(assert (=> d!1225177 (= c!709496 (and ((_ is Cons!44842) rules!3756) ((_ is Nil!44842) (t!342051 rules!3756))))))

(declare-fun lt!1475181 () Unit!64151)

(declare-fun lt!1475179 () Unit!64151)

(assert (=> d!1225177 (= lt!1475181 lt!1475179)))

(assert (=> d!1225177 (isPrefix!4291 input!3238 input!3238)))

(assert (=> d!1225177 (= lt!1475179 (lemmaIsPrefixRefl!2774 input!3238 input!3238))))

(declare-fun rulesValidInductive!2728 (LexerInterface!6945 List!44966) Bool)

(assert (=> d!1225177 (rulesValidInductive!2728 thiss!25645 rules!3756)))

(assert (=> d!1225177 (= (maxPrefix!4135 thiss!25645 rules!3756 input!3238) lt!1475180)))

(declare-fun b!4137322 () Bool)

(declare-fun res!1692101 () Bool)

(assert (=> b!4137322 (=> (not res!1692101) (not e!2567059))))

(assert (=> b!4137322 (= res!1692101 (matchR!6090 (regex!7356 (rule!10456 (_1!24751 (get!14629 lt!1475180)))) (list!16419 (charsOf!4955 (_1!24751 (get!14629 lt!1475180))))))))

(assert (= (and d!1225177 c!709496) b!4137325))

(assert (= (and d!1225177 (not c!709496)) b!4137327))

(assert (= (or b!4137325 b!4137327) bm!290447))

(assert (= (and d!1225177 (not res!1692098)) b!4137321))

(assert (= (and b!4137321 res!1692102) b!4137324))

(assert (= (and b!4137324 res!1692099) b!4137320))

(assert (= (and b!4137320 res!1692097) b!4137326))

(assert (= (and b!4137326 res!1692103) b!4137323))

(assert (= (and b!4137323 res!1692100) b!4137322))

(assert (= (and b!4137322 res!1692101) b!4137319))

(declare-fun m!4733913 () Bool)

(assert (=> b!4137319 m!4733913))

(declare-fun m!4733915 () Bool)

(assert (=> b!4137319 m!4733915))

(declare-fun m!4733917 () Bool)

(assert (=> d!1225177 m!4733917))

(assert (=> d!1225177 m!4733577))

(assert (=> d!1225177 m!4733579))

(declare-fun m!4733919 () Bool)

(assert (=> d!1225177 m!4733919))

(declare-fun m!4733921 () Bool)

(assert (=> b!4137321 m!4733921))

(assert (=> b!4137320 m!4733913))

(declare-fun m!4733923 () Bool)

(assert (=> b!4137320 m!4733923))

(assert (=> b!4137320 m!4733699))

(assert (=> b!4137324 m!4733913))

(declare-fun m!4733925 () Bool)

(assert (=> b!4137324 m!4733925))

(assert (=> b!4137324 m!4733925))

(declare-fun m!4733927 () Bool)

(assert (=> b!4137324 m!4733927))

(assert (=> b!4137326 m!4733913))

(assert (=> b!4137326 m!4733925))

(assert (=> b!4137326 m!4733925))

(assert (=> b!4137326 m!4733927))

(assert (=> b!4137326 m!4733927))

(declare-fun m!4733931 () Bool)

(assert (=> b!4137326 m!4733931))

(declare-fun m!4733933 () Bool)

(assert (=> b!4137327 m!4733933))

(assert (=> b!4137322 m!4733913))

(assert (=> b!4137322 m!4733925))

(assert (=> b!4137322 m!4733925))

(assert (=> b!4137322 m!4733927))

(assert (=> b!4137322 m!4733927))

(declare-fun m!4733935 () Bool)

(assert (=> b!4137322 m!4733935))

(declare-fun m!4733937 () Bool)

(assert (=> bm!290447 m!4733937))

(assert (=> b!4137323 m!4733913))

(declare-fun m!4733939 () Bool)

(assert (=> b!4137323 m!4733939))

(assert (=> b!4137323 m!4733939))

(declare-fun m!4733941 () Bool)

(assert (=> b!4137323 m!4733941))

(assert (=> b!4136959 d!1225177))

(declare-fun d!1225183 () Bool)

(assert (=> d!1225183 (= (apply!10429 (transformation!7356 r!4008) lt!1475048) (dynLambda!19267 (toValue!10020 (transformation!7356 r!4008)) lt!1475048))))

(declare-fun b_lambda!121583 () Bool)

(assert (=> (not b_lambda!121583) (not d!1225183)))

(assert (=> d!1225183 t!342077))

(declare-fun b_and!321081 () Bool)

(assert (= b_and!321075 (and (=> t!342077 result!301914) b_and!321081)))

(assert (=> d!1225183 t!342079))

(declare-fun b_and!321083 () Bool)

(assert (= b_and!321077 (and (=> t!342079 result!301918) b_and!321083)))

(assert (=> d!1225183 t!342081))

(declare-fun b_and!321085 () Bool)

(assert (= b_and!321079 (and (=> t!342081 result!301920) b_and!321085)))

(assert (=> d!1225183 m!4733871))

(assert (=> b!4136959 d!1225183))

(declare-fun d!1225185 () Bool)

(declare-fun fromListB!2509 (List!44965) BalanceConc!26728)

(assert (=> d!1225185 (= (seqFromList!5473 p!2912) (fromListB!2509 p!2912))))

(declare-fun bs!595153 () Bool)

(assert (= bs!595153 d!1225185))

(declare-fun m!4733945 () Bool)

(assert (=> bs!595153 m!4733945))

(assert (=> b!4136959 d!1225185))

(declare-fun d!1225187 () Bool)

(declare-fun lt!1475187 () Int)

(assert (=> d!1225187 (>= lt!1475187 0)))

(declare-fun e!2567083 () Int)

(assert (=> d!1225187 (= lt!1475187 e!2567083)))

(declare-fun c!709502 () Bool)

(assert (=> d!1225187 (= c!709502 ((_ is Nil!44841) p!2912))))

(assert (=> d!1225187 (= (size!33200 p!2912) lt!1475187)))

(declare-fun b!4137370 () Bool)

(assert (=> b!4137370 (= e!2567083 0)))

(declare-fun b!4137371 () Bool)

(assert (=> b!4137371 (= e!2567083 (+ 1 (size!33200 (t!342050 p!2912))))))

(assert (= (and d!1225187 c!709502) b!4137370))

(assert (= (and d!1225187 (not c!709502)) b!4137371))

(declare-fun m!4733947 () Bool)

(assert (=> b!4137371 m!4733947))

(assert (=> b!4136959 d!1225187))

(declare-fun d!1225189 () Bool)

(assert (=> d!1225189 (= (isEmpty!26723 rules!3756) ((_ is Nil!44842) rules!3756))))

(assert (=> b!4136969 d!1225189))

(declare-fun d!1225191 () Bool)

(declare-fun lt!1475190 () Int)

(assert (=> d!1225191 (= lt!1475190 (size!33200 (list!16419 lt!1475044)))))

(declare-fun size!33202 (Conc!13567) Int)

(assert (=> d!1225191 (= lt!1475190 (size!33202 (c!709436 lt!1475044)))))

(assert (=> d!1225191 (= (size!33198 lt!1475044) lt!1475190)))

(declare-fun bs!595154 () Bool)

(assert (= bs!595154 d!1225191))

(assert (=> bs!595154 m!4733585))

(assert (=> bs!595154 m!4733585))

(declare-fun m!4733953 () Bool)

(assert (=> bs!595154 m!4733953))

(declare-fun m!4733955 () Bool)

(assert (=> bs!595154 m!4733955))

(assert (=> b!4136958 d!1225191))

(declare-fun d!1225193 () Bool)

(declare-fun lt!1475193 () BalanceConc!26728)

(assert (=> d!1225193 (= (list!16419 lt!1475193) (originalCharacters!7852 (_1!24751 lt!1475056)))))

(assert (=> d!1225193 (= lt!1475193 (dynLambda!19266 (toChars!9879 (transformation!7356 (rule!10456 (_1!24751 lt!1475056)))) (value!230200 (_1!24751 lt!1475056))))))

(assert (=> d!1225193 (= (charsOf!4955 (_1!24751 lt!1475056)) lt!1475193)))

(declare-fun b_lambda!121591 () Bool)

(assert (=> (not b_lambda!121591) (not d!1225193)))

(declare-fun tb!248343 () Bool)

(declare-fun t!342089 () Bool)

(assert (=> (and b!4136973 (= (toChars!9879 (transformation!7356 rBis!149)) (toChars!9879 (transformation!7356 (rule!10456 (_1!24751 lt!1475056))))) t!342089) tb!248343))

(declare-fun b!4137379 () Bool)

(declare-fun e!2567089 () Bool)

(declare-fun tp!1261125 () Bool)

(assert (=> b!4137379 (= e!2567089 (and (inv!59450 (c!709436 (dynLambda!19266 (toChars!9879 (transformation!7356 (rule!10456 (_1!24751 lt!1475056)))) (value!230200 (_1!24751 lt!1475056))))) tp!1261125))))

(declare-fun result!301934 () Bool)

(assert (=> tb!248343 (= result!301934 (and (inv!59451 (dynLambda!19266 (toChars!9879 (transformation!7356 (rule!10456 (_1!24751 lt!1475056)))) (value!230200 (_1!24751 lt!1475056)))) e!2567089))))

(assert (= tb!248343 b!4137379))

(declare-fun m!4733957 () Bool)

(assert (=> b!4137379 m!4733957))

(declare-fun m!4733959 () Bool)

(assert (=> tb!248343 m!4733959))

(assert (=> d!1225193 t!342089))

(declare-fun b_and!321091 () Bool)

(assert (= b_and!321069 (and (=> t!342089 result!301934) b_and!321091)))

(declare-fun t!342091 () Bool)

(declare-fun tb!248345 () Bool)

(assert (=> (and b!4136961 (= (toChars!9879 (transformation!7356 (h!50262 rules!3756))) (toChars!9879 (transformation!7356 (rule!10456 (_1!24751 lt!1475056))))) t!342091) tb!248345))

(declare-fun result!301936 () Bool)

(assert (= result!301936 result!301934))

(assert (=> d!1225193 t!342091))

(declare-fun b_and!321093 () Bool)

(assert (= b_and!321071 (and (=> t!342091 result!301936) b_and!321093)))

(declare-fun t!342093 () Bool)

(declare-fun tb!248347 () Bool)

(assert (=> (and b!4136963 (= (toChars!9879 (transformation!7356 r!4008)) (toChars!9879 (transformation!7356 (rule!10456 (_1!24751 lt!1475056))))) t!342093) tb!248347))

(declare-fun result!301938 () Bool)

(assert (= result!301938 result!301934))

(assert (=> d!1225193 t!342093))

(declare-fun b_and!321095 () Bool)

(assert (= b_and!321073 (and (=> t!342093 result!301938) b_and!321095)))

(declare-fun m!4733961 () Bool)

(assert (=> d!1225193 m!4733961))

(declare-fun m!4733963 () Bool)

(assert (=> d!1225193 m!4733963))

(assert (=> b!4136958 d!1225193))

(declare-fun d!1225195 () Bool)

(assert (=> d!1225195 (= (get!14629 lt!1475051) (v!40289 lt!1475051))))

(assert (=> b!4136958 d!1225195))

(declare-fun d!1225197 () Bool)

(declare-fun res!1692104 () Bool)

(declare-fun e!2567090 () Bool)

(assert (=> d!1225197 (=> (not res!1692104) (not e!2567090))))

(assert (=> d!1225197 (= res!1692104 (validRegex!5521 (regex!7356 r!4008)))))

(assert (=> d!1225197 (= (ruleValid!3162 thiss!25645 r!4008) e!2567090)))

(declare-fun b!4137380 () Bool)

(declare-fun res!1692105 () Bool)

(assert (=> b!4137380 (=> (not res!1692105) (not e!2567090))))

(assert (=> b!4137380 (= res!1692105 (not (nullable!4313 (regex!7356 r!4008))))))

(declare-fun b!4137381 () Bool)

(assert (=> b!4137381 (= e!2567090 (not (= (tag!8216 r!4008) (String!51681 ""))))))

(assert (= (and d!1225197 res!1692104) b!4137380))

(assert (= (and b!4137380 res!1692105) b!4137381))

(assert (=> d!1225197 m!4733761))

(assert (=> b!4137380 m!4733755))

(assert (=> b!4136952 d!1225197))

(declare-fun d!1225199 () Bool)

(declare-fun lt!1475194 () Bool)

(assert (=> d!1225199 (= lt!1475194 (select (content!6922 (tail!6517 rules!3756)) r!4008))))

(declare-fun e!2567091 () Bool)

(assert (=> d!1225199 (= lt!1475194 e!2567091)))

(declare-fun res!1692106 () Bool)

(assert (=> d!1225199 (=> (not res!1692106) (not e!2567091))))

(assert (=> d!1225199 (= res!1692106 ((_ is Cons!44842) (tail!6517 rules!3756)))))

(assert (=> d!1225199 (= (contains!9036 (tail!6517 rules!3756) r!4008) lt!1475194)))

(declare-fun b!4137382 () Bool)

(declare-fun e!2567092 () Bool)

(assert (=> b!4137382 (= e!2567091 e!2567092)))

(declare-fun res!1692107 () Bool)

(assert (=> b!4137382 (=> res!1692107 e!2567092)))

(assert (=> b!4137382 (= res!1692107 (= (h!50262 (tail!6517 rules!3756)) r!4008))))

(declare-fun b!4137383 () Bool)

(assert (=> b!4137383 (= e!2567092 (contains!9036 (t!342051 (tail!6517 rules!3756)) r!4008))))

(assert (= (and d!1225199 res!1692106) b!4137382))

(assert (= (and b!4137382 (not res!1692107)) b!4137383))

(assert (=> d!1225199 m!4733591))

(declare-fun m!4733965 () Bool)

(assert (=> d!1225199 m!4733965))

(declare-fun m!4733967 () Bool)

(assert (=> d!1225199 m!4733967))

(declare-fun m!4733969 () Bool)

(assert (=> b!4137383 m!4733969))

(assert (=> b!4136962 d!1225199))

(declare-fun d!1225201 () Bool)

(assert (=> d!1225201 (= (tail!6517 rules!3756) (t!342051 rules!3756))))

(assert (=> b!4136962 d!1225201))

(declare-fun d!1225203 () Bool)

(assert (=> d!1225203 (contains!9036 (tail!6517 rules!3756) r!4008)))

(declare-fun lt!1475197 () Unit!64151)

(declare-fun choose!25291 (List!44966 Rule!14512 Rule!14512) Unit!64151)

(assert (=> d!1225203 (= lt!1475197 (choose!25291 rules!3756 rBis!149 r!4008))))

(declare-fun e!2567095 () Bool)

(assert (=> d!1225203 e!2567095))

(declare-fun res!1692110 () Bool)

(assert (=> d!1225203 (=> (not res!1692110) (not e!2567095))))

(assert (=> d!1225203 (= res!1692110 (contains!9036 rules!3756 rBis!149))))

(assert (=> d!1225203 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!60 rules!3756 rBis!149 r!4008) lt!1475197)))

(declare-fun b!4137386 () Bool)

(assert (=> b!4137386 (= e!2567095 (contains!9036 rules!3756 r!4008))))

(assert (= (and d!1225203 res!1692110) b!4137386))

(assert (=> d!1225203 m!4733591))

(assert (=> d!1225203 m!4733591))

(assert (=> d!1225203 m!4733593))

(declare-fun m!4733971 () Bool)

(assert (=> d!1225203 m!4733971))

(assert (=> d!1225203 m!4733547))

(assert (=> b!4137386 m!4733531))

(assert (=> b!4136962 d!1225203))

(declare-fun d!1225205 () Bool)

(assert (=> d!1225205 (= (isEmpty!26722 lt!1475051) (not ((_ is Some!9661) lt!1475051)))))

(assert (=> b!4136962 d!1225205))

(declare-fun b!4137405 () Bool)

(declare-fun e!2567106 () Option!9662)

(assert (=> b!4137405 (= e!2567106 None!9661)))

(declare-fun b!4137406 () Bool)

(declare-fun e!2567107 () Bool)

(declare-fun lt!1475211 () Option!9662)

(assert (=> b!4137406 (= e!2567107 (= (size!33199 (_1!24751 (get!14629 lt!1475211))) (size!33200 (originalCharacters!7852 (_1!24751 (get!14629 lt!1475211))))))))

(declare-fun b!4137407 () Bool)

(declare-fun res!1692127 () Bool)

(assert (=> b!4137407 (=> (not res!1692127) (not e!2567107))))

(assert (=> b!4137407 (= res!1692127 (= (++!11600 (list!16419 (charsOf!4955 (_1!24751 (get!14629 lt!1475211)))) (_2!24751 (get!14629 lt!1475211))) input!3238))))

(declare-fun b!4137408 () Bool)

(declare-fun e!2567105 () Bool)

(assert (=> b!4137408 (= e!2567105 e!2567107)))

(declare-fun res!1692130 () Bool)

(assert (=> b!4137408 (=> (not res!1692130) (not e!2567107))))

(assert (=> b!4137408 (= res!1692130 (matchR!6090 (regex!7356 rBis!149) (list!16419 (charsOf!4955 (_1!24751 (get!14629 lt!1475211))))))))

(declare-fun b!4137409 () Bool)

(declare-fun res!1692126 () Bool)

(assert (=> b!4137409 (=> (not res!1692126) (not e!2567107))))

(assert (=> b!4137409 (= res!1692126 (= (rule!10456 (_1!24751 (get!14629 lt!1475211))) rBis!149))))

(declare-fun d!1225207 () Bool)

(assert (=> d!1225207 e!2567105))

(declare-fun res!1692131 () Bool)

(assert (=> d!1225207 (=> res!1692131 e!2567105)))

(assert (=> d!1225207 (= res!1692131 (isEmpty!26722 lt!1475211))))

(assert (=> d!1225207 (= lt!1475211 e!2567106)))

(declare-fun c!709505 () Bool)

(declare-datatypes ((tuple2!43238 0))(
  ( (tuple2!43239 (_1!24753 List!44965) (_2!24753 List!44965)) )
))
(declare-fun lt!1475208 () tuple2!43238)

(assert (=> d!1225207 (= c!709505 (isEmpty!26721 (_1!24753 lt!1475208)))))

(declare-fun findLongestMatch!1430 (Regex!12261 List!44965) tuple2!43238)

(assert (=> d!1225207 (= lt!1475208 (findLongestMatch!1430 (regex!7356 rBis!149) input!3238))))

(assert (=> d!1225207 (ruleValid!3162 thiss!25645 rBis!149)))

(assert (=> d!1225207 (= (maxPrefixOneRule!3074 thiss!25645 rBis!149 input!3238) lt!1475211)))

(declare-fun b!4137410 () Bool)

(assert (=> b!4137410 (= e!2567106 (Some!9661 (tuple2!43235 (Token!13643 (apply!10429 (transformation!7356 rBis!149) (seqFromList!5473 (_1!24753 lt!1475208))) rBis!149 (size!33198 (seqFromList!5473 (_1!24753 lt!1475208))) (_1!24753 lt!1475208)) (_2!24753 lt!1475208))))))

(declare-fun lt!1475212 () Unit!64151)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1490 (Regex!12261 List!44965) Unit!64151)

(assert (=> b!4137410 (= lt!1475212 (longestMatchIsAcceptedByMatchOrIsEmpty!1490 (regex!7356 rBis!149) input!3238))))

(declare-fun res!1692125 () Bool)

(declare-fun findLongestMatchInner!1517 (Regex!12261 List!44965 Int List!44965 List!44965 Int) tuple2!43238)

(assert (=> b!4137410 (= res!1692125 (isEmpty!26721 (_1!24753 (findLongestMatchInner!1517 (regex!7356 rBis!149) Nil!44841 (size!33200 Nil!44841) input!3238 input!3238 (size!33200 input!3238)))))))

(declare-fun e!2567104 () Bool)

(assert (=> b!4137410 (=> res!1692125 e!2567104)))

(assert (=> b!4137410 e!2567104))

(declare-fun lt!1475209 () Unit!64151)

(assert (=> b!4137410 (= lt!1475209 lt!1475212)))

(declare-fun lt!1475210 () Unit!64151)

(assert (=> b!4137410 (= lt!1475210 (lemmaSemiInverse!2214 (transformation!7356 rBis!149) (seqFromList!5473 (_1!24753 lt!1475208))))))

(declare-fun b!4137411 () Bool)

(declare-fun res!1692129 () Bool)

(assert (=> b!4137411 (=> (not res!1692129) (not e!2567107))))

(assert (=> b!4137411 (= res!1692129 (= (value!230200 (_1!24751 (get!14629 lt!1475211))) (apply!10429 (transformation!7356 (rule!10456 (_1!24751 (get!14629 lt!1475211)))) (seqFromList!5473 (originalCharacters!7852 (_1!24751 (get!14629 lt!1475211)))))))))

(declare-fun b!4137412 () Bool)

(assert (=> b!4137412 (= e!2567104 (matchR!6090 (regex!7356 rBis!149) (_1!24753 (findLongestMatchInner!1517 (regex!7356 rBis!149) Nil!44841 (size!33200 Nil!44841) input!3238 input!3238 (size!33200 input!3238)))))))

(declare-fun b!4137413 () Bool)

(declare-fun res!1692128 () Bool)

(assert (=> b!4137413 (=> (not res!1692128) (not e!2567107))))

(assert (=> b!4137413 (= res!1692128 (< (size!33200 (_2!24751 (get!14629 lt!1475211))) (size!33200 input!3238)))))

(assert (= (and d!1225207 c!709505) b!4137405))

(assert (= (and d!1225207 (not c!709505)) b!4137410))

(assert (= (and b!4137410 (not res!1692125)) b!4137412))

(assert (= (and d!1225207 (not res!1692131)) b!4137408))

(assert (= (and b!4137408 res!1692130) b!4137407))

(assert (= (and b!4137407 res!1692127) b!4137413))

(assert (= (and b!4137413 res!1692128) b!4137409))

(assert (= (and b!4137409 res!1692126) b!4137411))

(assert (= (and b!4137411 res!1692129) b!4137406))

(declare-fun m!4733973 () Bool)

(assert (=> b!4137408 m!4733973))

(declare-fun m!4733975 () Bool)

(assert (=> b!4137408 m!4733975))

(assert (=> b!4137408 m!4733975))

(declare-fun m!4733977 () Bool)

(assert (=> b!4137408 m!4733977))

(assert (=> b!4137408 m!4733977))

(declare-fun m!4733979 () Bool)

(assert (=> b!4137408 m!4733979))

(declare-fun m!4733981 () Bool)

(assert (=> b!4137410 m!4733981))

(assert (=> b!4137410 m!4733981))

(assert (=> b!4137410 m!4733699))

(declare-fun m!4733983 () Bool)

(assert (=> b!4137410 m!4733983))

(assert (=> b!4137410 m!4733699))

(declare-fun m!4733985 () Bool)

(assert (=> b!4137410 m!4733985))

(declare-fun m!4733987 () Bool)

(assert (=> b!4137410 m!4733987))

(declare-fun m!4733989 () Bool)

(assert (=> b!4137410 m!4733989))

(assert (=> b!4137410 m!4733987))

(declare-fun m!4733991 () Bool)

(assert (=> b!4137410 m!4733991))

(declare-fun m!4733993 () Bool)

(assert (=> b!4137410 m!4733993))

(assert (=> b!4137410 m!4733987))

(declare-fun m!4733995 () Bool)

(assert (=> b!4137410 m!4733995))

(assert (=> b!4137410 m!4733987))

(declare-fun m!4733997 () Bool)

(assert (=> d!1225207 m!4733997))

(declare-fun m!4733999 () Bool)

(assert (=> d!1225207 m!4733999))

(declare-fun m!4734001 () Bool)

(assert (=> d!1225207 m!4734001))

(assert (=> d!1225207 m!4733527))

(assert (=> b!4137412 m!4733981))

(assert (=> b!4137412 m!4733699))

(assert (=> b!4137412 m!4733981))

(assert (=> b!4137412 m!4733699))

(assert (=> b!4137412 m!4733983))

(declare-fun m!4734003 () Bool)

(assert (=> b!4137412 m!4734003))

(assert (=> b!4137406 m!4733973))

(declare-fun m!4734005 () Bool)

(assert (=> b!4137406 m!4734005))

(assert (=> b!4137411 m!4733973))

(declare-fun m!4734007 () Bool)

(assert (=> b!4137411 m!4734007))

(assert (=> b!4137411 m!4734007))

(declare-fun m!4734009 () Bool)

(assert (=> b!4137411 m!4734009))

(assert (=> b!4137407 m!4733973))

(assert (=> b!4137407 m!4733975))

(assert (=> b!4137407 m!4733975))

(assert (=> b!4137407 m!4733977))

(assert (=> b!4137407 m!4733977))

(declare-fun m!4734011 () Bool)

(assert (=> b!4137407 m!4734011))

(assert (=> b!4137413 m!4733973))

(declare-fun m!4734013 () Bool)

(assert (=> b!4137413 m!4734013))

(assert (=> b!4137413 m!4733699))

(assert (=> b!4137409 m!4733973))

(assert (=> b!4136962 d!1225207))

(declare-fun d!1225209 () Bool)

(assert (=> d!1225209 (not (= rBis!149 r!4008))))

(declare-fun lt!1475215 () Unit!64151)

(declare-fun choose!25292 (LexerInterface!6945 List!44966 Rule!14512 Rule!14512) Unit!64151)

(assert (=> d!1225209 (= lt!1475215 (choose!25292 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1225209 (contains!9036 rules!3756 rBis!149)))

(assert (=> d!1225209 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!54 thiss!25645 rules!3756 rBis!149 r!4008) lt!1475215)))

(declare-fun bs!595155 () Bool)

(assert (= bs!595155 d!1225209))

(declare-fun m!4734015 () Bool)

(assert (=> bs!595155 m!4734015))

(assert (=> bs!595155 m!4733547))

(assert (=> b!4136962 d!1225209))

(declare-fun d!1225211 () Bool)

(declare-fun lt!1475216 () Bool)

(assert (=> d!1225211 (= lt!1475216 (select (content!6922 rules!3756) rBis!149))))

(declare-fun e!2567108 () Bool)

(assert (=> d!1225211 (= lt!1475216 e!2567108)))

(declare-fun res!1692132 () Bool)

(assert (=> d!1225211 (=> (not res!1692132) (not e!2567108))))

(assert (=> d!1225211 (= res!1692132 ((_ is Cons!44842) rules!3756))))

(assert (=> d!1225211 (= (contains!9036 rules!3756 rBis!149) lt!1475216)))

(declare-fun b!4137414 () Bool)

(declare-fun e!2567109 () Bool)

(assert (=> b!4137414 (= e!2567108 e!2567109)))

(declare-fun res!1692133 () Bool)

(assert (=> b!4137414 (=> res!1692133 e!2567109)))

(assert (=> b!4137414 (= res!1692133 (= (h!50262 rules!3756) rBis!149))))

(declare-fun b!4137415 () Bool)

(assert (=> b!4137415 (= e!2567109 (contains!9036 (t!342051 rules!3756) rBis!149))))

(assert (= (and d!1225211 res!1692132) b!4137414))

(assert (= (and b!4137414 (not res!1692133)) b!4137415))

(assert (=> d!1225211 m!4733613))

(declare-fun m!4734017 () Bool)

(assert (=> d!1225211 m!4734017))

(declare-fun m!4734019 () Bool)

(assert (=> b!4137415 m!4734019))

(assert (=> b!4136971 d!1225211))

(declare-fun b!4137420 () Bool)

(declare-fun e!2567112 () Bool)

(declare-fun tp!1261128 () Bool)

(assert (=> b!4137420 (= e!2567112 (and tp_is_empty!21445 tp!1261128))))

(assert (=> b!4136960 (= tp!1261075 e!2567112)))

(assert (= (and b!4136960 ((_ is Cons!44841) (t!342050 p!2912))) b!4137420))

(declare-fun b!4137432 () Bool)

(declare-fun e!2567115 () Bool)

(declare-fun tp!1261143 () Bool)

(declare-fun tp!1261141 () Bool)

(assert (=> b!4137432 (= e!2567115 (and tp!1261143 tp!1261141))))

(declare-fun b!4137434 () Bool)

(declare-fun tp!1261140 () Bool)

(declare-fun tp!1261139 () Bool)

(assert (=> b!4137434 (= e!2567115 (and tp!1261140 tp!1261139))))

(declare-fun b!4137433 () Bool)

(declare-fun tp!1261142 () Bool)

(assert (=> b!4137433 (= e!2567115 tp!1261142)))

(assert (=> b!4136975 (= tp!1261073 e!2567115)))

(declare-fun b!4137431 () Bool)

(assert (=> b!4137431 (= e!2567115 tp_is_empty!21445)))

(assert (= (and b!4136975 ((_ is ElementMatch!12261) (regex!7356 rBis!149))) b!4137431))

(assert (= (and b!4136975 ((_ is Concat!19848) (regex!7356 rBis!149))) b!4137432))

(assert (= (and b!4136975 ((_ is Star!12261) (regex!7356 rBis!149))) b!4137433))

(assert (= (and b!4136975 ((_ is Union!12261) (regex!7356 rBis!149))) b!4137434))

(declare-fun b!4137435 () Bool)

(declare-fun e!2567116 () Bool)

(declare-fun tp!1261144 () Bool)

(assert (=> b!4137435 (= e!2567116 (and tp_is_empty!21445 tp!1261144))))

(assert (=> b!4136953 (= tp!1261074 e!2567116)))

(assert (= (and b!4136953 ((_ is Cons!44841) (t!342050 input!3238))) b!4137435))

(declare-fun b!4137437 () Bool)

(declare-fun e!2567117 () Bool)

(declare-fun tp!1261149 () Bool)

(declare-fun tp!1261147 () Bool)

(assert (=> b!4137437 (= e!2567117 (and tp!1261149 tp!1261147))))

(declare-fun b!4137439 () Bool)

(declare-fun tp!1261146 () Bool)

(declare-fun tp!1261145 () Bool)

(assert (=> b!4137439 (= e!2567117 (and tp!1261146 tp!1261145))))

(declare-fun b!4137438 () Bool)

(declare-fun tp!1261148 () Bool)

(assert (=> b!4137438 (= e!2567117 tp!1261148)))

(assert (=> b!4136974 (= tp!1261071 e!2567117)))

(declare-fun b!4137436 () Bool)

(assert (=> b!4137436 (= e!2567117 tp_is_empty!21445)))

(assert (= (and b!4136974 ((_ is ElementMatch!12261) (regex!7356 (h!50262 rules!3756)))) b!4137436))

(assert (= (and b!4136974 ((_ is Concat!19848) (regex!7356 (h!50262 rules!3756)))) b!4137437))

(assert (= (and b!4136974 ((_ is Star!12261) (regex!7356 (h!50262 rules!3756)))) b!4137438))

(assert (= (and b!4136974 ((_ is Union!12261) (regex!7356 (h!50262 rules!3756)))) b!4137439))

(declare-fun b!4137441 () Bool)

(declare-fun e!2567118 () Bool)

(declare-fun tp!1261154 () Bool)

(declare-fun tp!1261152 () Bool)

(assert (=> b!4137441 (= e!2567118 (and tp!1261154 tp!1261152))))

(declare-fun b!4137443 () Bool)

(declare-fun tp!1261151 () Bool)

(declare-fun tp!1261150 () Bool)

(assert (=> b!4137443 (= e!2567118 (and tp!1261151 tp!1261150))))

(declare-fun b!4137442 () Bool)

(declare-fun tp!1261153 () Bool)

(assert (=> b!4137442 (= e!2567118 tp!1261153)))

(assert (=> b!4136956 (= tp!1261076 e!2567118)))

(declare-fun b!4137440 () Bool)

(assert (=> b!4137440 (= e!2567118 tp_is_empty!21445)))

(assert (= (and b!4136956 ((_ is ElementMatch!12261) (regex!7356 r!4008))) b!4137440))

(assert (= (and b!4136956 ((_ is Concat!19848) (regex!7356 r!4008))) b!4137441))

(assert (= (and b!4136956 ((_ is Star!12261) (regex!7356 r!4008))) b!4137442))

(assert (= (and b!4136956 ((_ is Union!12261) (regex!7356 r!4008))) b!4137443))

(declare-fun b!4137454 () Bool)

(declare-fun b_free!117659 () Bool)

(declare-fun b_next!118363 () Bool)

(assert (=> b!4137454 (= b_free!117659 (not b_next!118363))))

(declare-fun t!342095 () Bool)

(declare-fun tb!248349 () Bool)

(assert (=> (and b!4137454 (= (toValue!10020 (transformation!7356 (h!50262 (t!342051 rules!3756)))) (toValue!10020 (transformation!7356 r!4008))) t!342095) tb!248349))

(declare-fun result!301946 () Bool)

(assert (= result!301946 result!301914))

(assert (=> d!1225155 t!342095))

(assert (=> d!1225183 t!342095))

(declare-fun b_and!321097 () Bool)

(declare-fun tp!1261166 () Bool)

(assert (=> b!4137454 (= tp!1261166 (and (=> t!342095 result!301946) b_and!321097))))

(declare-fun b_free!117661 () Bool)

(declare-fun b_next!118365 () Bool)

(assert (=> b!4137454 (= b_free!117661 (not b_next!118365))))

(declare-fun tb!248351 () Bool)

(declare-fun t!342097 () Bool)

(assert (=> (and b!4137454 (= (toChars!9879 (transformation!7356 (h!50262 (t!342051 rules!3756)))) (toChars!9879 (transformation!7356 r!4008))) t!342097) tb!248351))

(declare-fun result!301948 () Bool)

(assert (= result!301948 result!301906))

(assert (=> d!1225155 t!342097))

(declare-fun tb!248353 () Bool)

(declare-fun t!342099 () Bool)

(assert (=> (and b!4137454 (= (toChars!9879 (transformation!7356 (h!50262 (t!342051 rules!3756)))) (toChars!9879 (transformation!7356 (rule!10456 (_1!24751 lt!1475056))))) t!342099) tb!248353))

(declare-fun result!301950 () Bool)

(assert (= result!301950 result!301934))

(assert (=> d!1225193 t!342099))

(declare-fun tp!1261164 () Bool)

(declare-fun b_and!321099 () Bool)

(assert (=> b!4137454 (= tp!1261164 (and (=> t!342097 result!301948) (=> t!342099 result!301950) b_and!321099))))

(declare-fun e!2567130 () Bool)

(assert (=> b!4137454 (= e!2567130 (and tp!1261166 tp!1261164))))

(declare-fun b!4137453 () Bool)

(declare-fun e!2567128 () Bool)

(declare-fun tp!1261163 () Bool)

(assert (=> b!4137453 (= e!2567128 (and tp!1261163 (inv!59445 (tag!8216 (h!50262 (t!342051 rules!3756)))) (inv!59447 (transformation!7356 (h!50262 (t!342051 rules!3756)))) e!2567130))))

(declare-fun b!4137452 () Bool)

(declare-fun e!2567129 () Bool)

(declare-fun tp!1261165 () Bool)

(assert (=> b!4137452 (= e!2567129 (and e!2567128 tp!1261165))))

(assert (=> b!4136972 (= tp!1261067 e!2567129)))

(assert (= b!4137453 b!4137454))

(assert (= b!4137452 b!4137453))

(assert (= (and b!4136972 ((_ is Cons!44842) (t!342051 rules!3756))) b!4137452))

(declare-fun m!4734021 () Bool)

(assert (=> b!4137453 m!4734021))

(declare-fun m!4734023 () Bool)

(assert (=> b!4137453 m!4734023))

(declare-fun b_lambda!121593 () Bool)

(assert (= b_lambda!121581 (or (and b!4136973 b_free!117643 (= (toValue!10020 (transformation!7356 rBis!149)) (toValue!10020 (transformation!7356 r!4008)))) (and b!4136961 b_free!117647 (= (toValue!10020 (transformation!7356 (h!50262 rules!3756))) (toValue!10020 (transformation!7356 r!4008)))) (and b!4136963 b_free!117651) (and b!4137454 b_free!117659 (= (toValue!10020 (transformation!7356 (h!50262 (t!342051 rules!3756)))) (toValue!10020 (transformation!7356 r!4008)))) b_lambda!121593)))

(declare-fun b_lambda!121595 () Bool)

(assert (= b_lambda!121577 (or (and b!4136973 b_free!117645 (= (toChars!9879 (transformation!7356 rBis!149)) (toChars!9879 (transformation!7356 r!4008)))) (and b!4136961 b_free!117649 (= (toChars!9879 (transformation!7356 (h!50262 rules!3756))) (toChars!9879 (transformation!7356 r!4008)))) (and b!4136963 b_free!117653) (and b!4137454 b_free!117661 (= (toChars!9879 (transformation!7356 (h!50262 (t!342051 rules!3756)))) (toChars!9879 (transformation!7356 r!4008)))) b_lambda!121595)))

(declare-fun b_lambda!121597 () Bool)

(assert (= b_lambda!121583 (or (and b!4136973 b_free!117643 (= (toValue!10020 (transformation!7356 rBis!149)) (toValue!10020 (transformation!7356 r!4008)))) (and b!4136961 b_free!117647 (= (toValue!10020 (transformation!7356 (h!50262 rules!3756))) (toValue!10020 (transformation!7356 r!4008)))) (and b!4136963 b_free!117651) (and b!4137454 b_free!117659 (= (toValue!10020 (transformation!7356 (h!50262 (t!342051 rules!3756)))) (toValue!10020 (transformation!7356 r!4008)))) b_lambda!121597)))

(check-sat (not d!1225185) (not d!1225209) (not b!4137453) (not b_next!118357) (not b!4137410) (not d!1225141) b_and!321085 (not d!1225099) (not b_lambda!121595) (not b!4137216) (not b!4137379) (not b!4137062) (not d!1225077) (not b!4137409) (not b!4137433) (not tb!248325) (not b!4137432) (not b!4137174) (not b_next!118363) (not d!1225211) (not d!1225199) (not b!4137326) (not b!4137035) (not b!4137319) (not b_next!118349) b_and!321083 (not b!4137009) (not d!1225133) (not d!1225057) (not d!1225203) tp_is_empty!21445 (not d!1225083) (not b!4137443) b_and!321097 (not b!4137383) (not b!4137196) (not b!4137435) (not b!4137176) (not b!4137193) (not b_lambda!121597) (not b!4137321) (not b!4137211) (not b!4137168) (not b!4137320) (not b!4137420) (not b!4137218) (not b_next!118355) (not bm!290441) b_and!321081 (not d!1225155) (not d!1225107) (not b!4137411) (not d!1225191) (not b!4137323) (not b!4137219) (not d!1225095) (not b!4137171) (not b!4137412) (not b!4137442) (not b!4137182) (not b!4137437) (not b!4137415) (not b!4137214) (not d!1225175) (not b!4136985) (not b!4137380) (not b!4137406) (not b!4137439) (not b!4137408) (not tb!248343) (not b!4137371) (not b!4137173) (not d!1225105) (not d!1225147) b_and!321091 (not b!4136994) (not b!4137207) (not bm!290447) (not b!4137386) (not b!4137452) (not b_lambda!121593) b_and!321093 (not b_lambda!121591) (not b!4137441) (not tb!248331) (not b!4137215) (not d!1225193) (not d!1225063) (not b_next!118351) (not b!4137175) (not b_next!118365) (not b!4137272) (not b!4137194) (not d!1225207) (not d!1225135) (not b!4137324) (not d!1225137) (not b_next!118353) (not b!4137434) (not b!4137220) (not d!1225197) (not b!4137054) (not b!4137413) (not b!4137327) (not d!1225177) (not b!4137269) (not d!1225145) (not b_next!118347) b_and!321099 (not d!1225149) (not b!4137407) (not b!4137036) (not b!4137195) (not b!4137322) b_and!321095 (not b!4137438))
(check-sat (not b_next!118357) b_and!321085 (not b_next!118363) b_and!321097 (not b_next!118355) b_and!321081 b_and!321091 b_and!321093 (not b_next!118353) b_and!321095 (not b_next!118349) b_and!321083 (not b_next!118351) (not b_next!118365) (not b_next!118347) b_and!321099)
