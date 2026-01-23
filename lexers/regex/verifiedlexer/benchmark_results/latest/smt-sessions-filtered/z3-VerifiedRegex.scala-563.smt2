; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15994 () Bool)

(assert start!15994)

(declare-fun b!149962 () Bool)

(declare-fun b_free!5401 () Bool)

(declare-fun b_next!5401 () Bool)

(assert (=> b!149962 (= b_free!5401 (not b_next!5401))))

(declare-fun tp!78319 () Bool)

(declare-fun b_and!8513 () Bool)

(assert (=> b!149962 (= tp!78319 b_and!8513)))

(declare-fun b_free!5403 () Bool)

(declare-fun b_next!5403 () Bool)

(assert (=> b!149962 (= b_free!5403 (not b_next!5403))))

(declare-fun tp!78321 () Bool)

(declare-fun b_and!8515 () Bool)

(assert (=> b!149962 (= tp!78321 b_and!8515)))

(declare-fun b!149959 () Bool)

(declare-fun b_free!5405 () Bool)

(declare-fun b_next!5405 () Bool)

(assert (=> b!149959 (= b_free!5405 (not b_next!5405))))

(declare-fun tp!78313 () Bool)

(declare-fun b_and!8517 () Bool)

(assert (=> b!149959 (= tp!78313 b_and!8517)))

(declare-fun b_free!5407 () Bool)

(declare-fun b_next!5407 () Bool)

(assert (=> b!149959 (= b_free!5407 (not b_next!5407))))

(declare-fun tp!78324 () Bool)

(declare-fun b_and!8519 () Bool)

(assert (=> b!149959 (= tp!78324 b_and!8519)))

(declare-fun b!149960 () Bool)

(declare-fun b_free!5409 () Bool)

(declare-fun b_next!5409 () Bool)

(assert (=> b!149960 (= b_free!5409 (not b_next!5409))))

(declare-fun tp!78315 () Bool)

(declare-fun b_and!8521 () Bool)

(assert (=> b!149960 (= tp!78315 b_and!8521)))

(declare-fun b_free!5411 () Bool)

(declare-fun b_next!5411 () Bool)

(assert (=> b!149960 (= b_free!5411 (not b_next!5411))))

(declare-fun tp!78323 () Bool)

(declare-fun b_and!8523 () Bool)

(assert (=> b!149960 (= tp!78323 b_and!8523)))

(declare-fun b!149957 () Bool)

(declare-fun e!89415 () Bool)

(declare-fun e!89407 () Bool)

(declare-fun tp!78318 () Bool)

(assert (=> b!149957 (= e!89415 (and e!89407 tp!78318))))

(declare-fun b!149958 () Bool)

(declare-fun res!68814 () Bool)

(declare-fun e!89402 () Bool)

(assert (=> b!149958 (=> (not res!68814) (not e!89402))))

(declare-datatypes ((LexerInterface!335 0))(
  ( (LexerInterfaceExt!332 (__x!2429 Int)) (Lexer!333) )
))
(declare-fun thiss!17480 () LexerInterface!335)

(declare-datatypes ((List!2605 0))(
  ( (Nil!2595) (Cons!2595 (h!7992 (_ BitVec 16)) (t!24675 List!2605)) )
))
(declare-datatypes ((TokenValue!471 0))(
  ( (FloatLiteralValue!942 (text!3742 List!2605)) (TokenValueExt!470 (__x!2430 Int)) (Broken!2355 (value!17086 List!2605)) (Object!480) (End!471) (Def!471) (Underscore!471) (Match!471) (Else!471) (Error!471) (Case!471) (If!471) (Extends!471) (Abstract!471) (Class!471) (Val!471) (DelimiterValue!942 (del!531 List!2605)) (KeywordValue!477 (value!17087 List!2605)) (CommentValue!942 (value!17088 List!2605)) (WhitespaceValue!942 (value!17089 List!2605)) (IndentationValue!471 (value!17090 List!2605)) (String!3434) (Int32!471) (Broken!2356 (value!17091 List!2605)) (Boolean!472) (Unit!1967) (OperatorValue!474 (op!531 List!2605)) (IdentifierValue!942 (value!17092 List!2605)) (IdentifierValue!943 (value!17093 List!2605)) (WhitespaceValue!943 (value!17094 List!2605)) (True!942) (False!942) (Broken!2357 (value!17095 List!2605)) (Broken!2358 (value!17096 List!2605)) (True!943) (RightBrace!471) (RightBracket!471) (Colon!471) (Null!471) (Comma!471) (LeftBracket!471) (False!943) (LeftBrace!471) (ImaginaryLiteralValue!471 (text!3743 List!2605)) (StringLiteralValue!1413 (value!17097 List!2605)) (EOFValue!471 (value!17098 List!2605)) (IdentValue!471 (value!17099 List!2605)) (DelimiterValue!943 (value!17100 List!2605)) (DedentValue!471 (value!17101 List!2605)) (NewLineValue!471 (value!17102 List!2605)) (IntegerValue!1413 (value!17103 (_ BitVec 32)) (text!3744 List!2605)) (IntegerValue!1414 (value!17104 Int) (text!3745 List!2605)) (Times!471) (Or!471) (Equal!471) (Minus!471) (Broken!2359 (value!17105 List!2605)) (And!471) (Div!471) (LessEqual!471) (Mod!471) (Concat!1144) (Not!471) (Plus!471) (SpaceValue!471 (value!17106 List!2605)) (IntegerValue!1415 (value!17107 Int) (text!3746 List!2605)) (StringLiteralValue!1414 (text!3747 List!2605)) (FloatLiteralValue!943 (text!3748 List!2605)) (BytesLiteralValue!471 (value!17108 List!2605)) (CommentValue!943 (value!17109 List!2605)) (StringLiteralValue!1415 (value!17110 List!2605)) (ErrorTokenValue!471 (msg!532 List!2605)) )
))
(declare-datatypes ((C!2268 0))(
  ( (C!2269 (val!1020 Int)) )
))
(declare-datatypes ((List!2606 0))(
  ( (Nil!2596) (Cons!2596 (h!7993 C!2268) (t!24676 List!2606)) )
))
(declare-datatypes ((IArray!1441 0))(
  ( (IArray!1442 (innerList!778 List!2606)) )
))
(declare-datatypes ((Conc!720 0))(
  ( (Node!720 (left!1959 Conc!720) (right!2289 Conc!720) (csize!1670 Int) (cheight!931 Int)) (Leaf!1284 (xs!3315 IArray!1441) (csize!1671 Int)) (Empty!720) )
))
(declare-datatypes ((BalanceConc!1448 0))(
  ( (BalanceConc!1449 (c!30405 Conc!720)) )
))
(declare-datatypes ((TokenValueInjection!714 0))(
  ( (TokenValueInjection!715 (toValue!1084 Int) (toChars!943 Int)) )
))
(declare-datatypes ((Regex!673 0))(
  ( (ElementMatch!673 (c!30406 C!2268)) (Concat!1145 (regOne!1858 Regex!673) (regTwo!1858 Regex!673)) (EmptyExpr!673) (Star!673 (reg!1002 Regex!673)) (EmptyLang!673) (Union!673 (regOne!1859 Regex!673) (regTwo!1859 Regex!673)) )
))
(declare-datatypes ((String!3435 0))(
  ( (String!3436 (value!17111 String)) )
))
(declare-datatypes ((Rule!698 0))(
  ( (Rule!699 (regex!449 Regex!673) (tag!627 String!3435) (isSeparator!449 Bool) (transformation!449 TokenValueInjection!714)) )
))
(declare-datatypes ((List!2607 0))(
  ( (Nil!2597) (Cons!2597 (h!7994 Rule!698) (t!24677 List!2607)) )
))
(declare-fun rules!1920 () List!2607)

(declare-fun rulesInvariant!301 (LexerInterface!335 List!2607) Bool)

(assert (=> b!149958 (= res!68814 (rulesInvariant!301 thiss!17480 rules!1920))))

(declare-fun e!89413 () Bool)

(assert (=> b!149959 (= e!89413 (and tp!78313 tp!78324))))

(declare-fun e!89408 () Bool)

(assert (=> b!149960 (= e!89408 (and tp!78315 tp!78323))))

(declare-fun b!149961 () Bool)

(declare-fun res!68810 () Bool)

(declare-fun e!89399 () Bool)

(assert (=> b!149961 (=> (not res!68810) (not e!89399))))

(declare-datatypes ((Token!642 0))(
  ( (Token!643 (value!17112 TokenValue!471) (rule!956 Rule!698) (size!2227 Int) (originalCharacters!492 List!2606)) )
))
(declare-fun separatorToken!170 () Token!642)

(declare-fun rulesProduceIndividualToken!84 (LexerInterface!335 List!2607 Token!642) Bool)

(assert (=> b!149961 (= res!68810 (rulesProduceIndividualToken!84 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!89416 () Bool)

(assert (=> b!149962 (= e!89416 (and tp!78319 tp!78321))))

(declare-fun b!149963 () Bool)

(declare-fun res!68806 () Bool)

(assert (=> b!149963 (=> (not res!68806) (not e!89399))))

(declare-datatypes ((List!2608 0))(
  ( (Nil!2598) (Cons!2598 (h!7995 Token!642) (t!24678 List!2608)) )
))
(declare-fun tokens!465 () List!2608)

(get-info :version)

(assert (=> b!149963 (= res!68806 ((_ is Cons!2598) tokens!465))))

(declare-fun b!149964 () Bool)

(assert (=> b!149964 (= e!89402 e!89399)))

(declare-fun res!68813 () Bool)

(assert (=> b!149964 (=> (not res!68813) (not e!89399))))

(declare-datatypes ((IArray!1443 0))(
  ( (IArray!1444 (innerList!779 List!2608)) )
))
(declare-datatypes ((Conc!721 0))(
  ( (Node!721 (left!1960 Conc!721) (right!2290 Conc!721) (csize!1672 Int) (cheight!932 Int)) (Leaf!1285 (xs!3316 IArray!1443) (csize!1673 Int)) (Empty!721) )
))
(declare-datatypes ((BalanceConc!1450 0))(
  ( (BalanceConc!1451 (c!30407 Conc!721)) )
))
(declare-fun lt!43688 () BalanceConc!1450)

(declare-fun rulesProduceEachTokenIndividually!127 (LexerInterface!335 List!2607 BalanceConc!1450) Bool)

(assert (=> b!149964 (= res!68813 (rulesProduceEachTokenIndividually!127 thiss!17480 rules!1920 lt!43688))))

(declare-fun seqFromList!275 (List!2608) BalanceConc!1450)

(assert (=> b!149964 (= lt!43688 (seqFromList!275 tokens!465))))

(declare-fun b!149965 () Bool)

(declare-fun e!89412 () Bool)

(declare-fun e!89405 () Bool)

(assert (=> b!149965 (= e!89412 e!89405)))

(declare-fun res!68815 () Bool)

(assert (=> b!149965 (=> (not res!68815) (not e!89405))))

(declare-fun rulesProduceEachTokenIndividuallyList!77 (LexerInterface!335 List!2607 List!2608) Bool)

(assert (=> b!149965 (= res!68815 (rulesProduceEachTokenIndividuallyList!77 thiss!17480 rules!1920 (t!24678 tokens!465)))))

(declare-fun lt!43686 () List!2606)

(declare-fun list!907 (BalanceConc!1448) List!2606)

(declare-fun charsOf!104 (Token!642) BalanceConc!1448)

(assert (=> b!149965 (= lt!43686 (list!907 (charsOf!104 separatorToken!170)))))

(declare-fun b!149966 () Bool)

(declare-fun res!68804 () Bool)

(assert (=> b!149966 (=> (not res!68804) (not e!89399))))

(declare-fun sepAndNonSepRulesDisjointChars!38 (List!2607 List!2607) Bool)

(assert (=> b!149966 (= res!68804 (sepAndNonSepRulesDisjointChars!38 rules!1920 rules!1920))))

(declare-fun b!149967 () Bool)

(declare-fun lambda!3810 () Int)

(declare-fun forall!435 (List!2608 Int) Bool)

(assert (=> b!149967 (= e!89405 (not (forall!435 (t!24678 tokens!465) lambda!3810)))))

(declare-fun b!149968 () Bool)

(declare-fun res!68807 () Bool)

(assert (=> b!149968 (=> (not res!68807) (not e!89399))))

(assert (=> b!149968 (= res!68807 (forall!435 tokens!465 lambda!3810))))

(declare-fun b!149969 () Bool)

(declare-fun res!68808 () Bool)

(assert (=> b!149969 (=> (not res!68808) (not e!89402))))

(declare-fun isEmpty!1022 (List!2607) Bool)

(assert (=> b!149969 (= res!68808 (not (isEmpty!1022 rules!1920)))))

(declare-fun e!89400 () Bool)

(declare-fun e!89409 () Bool)

(declare-fun b!149970 () Bool)

(declare-fun tp!78325 () Bool)

(declare-fun inv!3390 (Token!642) Bool)

(assert (=> b!149970 (= e!89400 (and (inv!3390 (h!7995 tokens!465)) e!89409 tp!78325))))

(declare-fun res!68809 () Bool)

(assert (=> start!15994 (=> (not res!68809) (not e!89402))))

(assert (=> start!15994 (= res!68809 ((_ is Lexer!333) thiss!17480))))

(assert (=> start!15994 e!89402))

(assert (=> start!15994 true))

(assert (=> start!15994 e!89415))

(declare-fun e!89406 () Bool)

(assert (=> start!15994 (and (inv!3390 separatorToken!170) e!89406)))

(assert (=> start!15994 e!89400))

(declare-fun tp!78314 () Bool)

(declare-fun e!89403 () Bool)

(declare-fun b!149971 () Bool)

(declare-fun inv!21 (TokenValue!471) Bool)

(assert (=> b!149971 (= e!89409 (and (inv!21 (value!17112 (h!7995 tokens!465))) e!89403 tp!78314))))

(declare-fun b!149972 () Bool)

(declare-fun res!68805 () Bool)

(assert (=> b!149972 (=> (not res!68805) (not e!89399))))

(assert (=> b!149972 (= res!68805 (isSeparator!449 (rule!956 separatorToken!170)))))

(declare-fun b!149973 () Bool)

(declare-fun res!68811 () Bool)

(assert (=> b!149973 (=> (not res!68811) (not e!89412))))

(declare-fun lt!43685 () List!2606)

(declare-fun lt!43687 () List!2606)

(declare-fun seqFromList!276 (List!2606) BalanceConc!1448)

(assert (=> b!149973 (= res!68811 (= (list!907 (seqFromList!276 lt!43685)) lt!43687))))

(declare-fun b!149974 () Bool)

(declare-fun tp!78317 () Bool)

(declare-fun inv!3387 (String!3435) Bool)

(declare-fun inv!3391 (TokenValueInjection!714) Bool)

(assert (=> b!149974 (= e!89403 (and tp!78317 (inv!3387 (tag!627 (rule!956 (h!7995 tokens!465)))) (inv!3391 (transformation!449 (rule!956 (h!7995 tokens!465)))) e!89416))))

(declare-fun b!149975 () Bool)

(declare-fun tp!78320 () Bool)

(declare-fun e!89410 () Bool)

(assert (=> b!149975 (= e!89406 (and (inv!21 (value!17112 separatorToken!170)) e!89410 tp!78320))))

(declare-fun tp!78316 () Bool)

(declare-fun b!149976 () Bool)

(assert (=> b!149976 (= e!89407 (and tp!78316 (inv!3387 (tag!627 (h!7994 rules!1920))) (inv!3391 (transformation!449 (h!7994 rules!1920))) e!89413))))

(declare-fun tp!78322 () Bool)

(declare-fun b!149977 () Bool)

(assert (=> b!149977 (= e!89410 (and tp!78322 (inv!3387 (tag!627 (rule!956 separatorToken!170))) (inv!3391 (transformation!449 (rule!956 separatorToken!170))) e!89408))))

(declare-fun b!149978 () Bool)

(assert (=> b!149978 (= e!89399 e!89412)))

(declare-fun res!68812 () Bool)

(assert (=> b!149978 (=> (not res!68812) (not e!89412))))

(assert (=> b!149978 (= res!68812 (= lt!43685 lt!43687))))

(declare-fun printWithSeparatorTokenWhenNeededRec!18 (LexerInterface!335 List!2607 BalanceConc!1450 Token!642 Int) BalanceConc!1448)

(assert (=> b!149978 (= lt!43687 (list!907 (printWithSeparatorTokenWhenNeededRec!18 thiss!17480 rules!1920 lt!43688 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!28 (LexerInterface!335 List!2607 List!2608 Token!642) List!2606)

(assert (=> b!149978 (= lt!43685 (printWithSeparatorTokenWhenNeededList!28 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (= (and start!15994 res!68809) b!149969))

(assert (= (and b!149969 res!68808) b!149958))

(assert (= (and b!149958 res!68814) b!149964))

(assert (= (and b!149964 res!68813) b!149961))

(assert (= (and b!149961 res!68810) b!149972))

(assert (= (and b!149972 res!68805) b!149968))

(assert (= (and b!149968 res!68807) b!149966))

(assert (= (and b!149966 res!68804) b!149963))

(assert (= (and b!149963 res!68806) b!149978))

(assert (= (and b!149978 res!68812) b!149973))

(assert (= (and b!149973 res!68811) b!149965))

(assert (= (and b!149965 res!68815) b!149967))

(assert (= b!149976 b!149959))

(assert (= b!149957 b!149976))

(assert (= (and start!15994 ((_ is Cons!2597) rules!1920)) b!149957))

(assert (= b!149977 b!149960))

(assert (= b!149975 b!149977))

(assert (= start!15994 b!149975))

(assert (= b!149974 b!149962))

(assert (= b!149971 b!149974))

(assert (= b!149970 b!149971))

(assert (= (and start!15994 ((_ is Cons!2598) tokens!465)) b!149970))

(declare-fun m!133875 () Bool)

(assert (=> b!149969 m!133875))

(declare-fun m!133877 () Bool)

(assert (=> b!149966 m!133877))

(declare-fun m!133879 () Bool)

(assert (=> b!149964 m!133879))

(declare-fun m!133881 () Bool)

(assert (=> b!149964 m!133881))

(declare-fun m!133883 () Bool)

(assert (=> b!149971 m!133883))

(declare-fun m!133885 () Bool)

(assert (=> b!149974 m!133885))

(declare-fun m!133887 () Bool)

(assert (=> b!149974 m!133887))

(declare-fun m!133889 () Bool)

(assert (=> b!149961 m!133889))

(declare-fun m!133891 () Bool)

(assert (=> b!149975 m!133891))

(declare-fun m!133893 () Bool)

(assert (=> b!149967 m!133893))

(declare-fun m!133895 () Bool)

(assert (=> b!149978 m!133895))

(assert (=> b!149978 m!133895))

(declare-fun m!133897 () Bool)

(assert (=> b!149978 m!133897))

(declare-fun m!133899 () Bool)

(assert (=> b!149978 m!133899))

(declare-fun m!133901 () Bool)

(assert (=> b!149965 m!133901))

(declare-fun m!133903 () Bool)

(assert (=> b!149965 m!133903))

(assert (=> b!149965 m!133903))

(declare-fun m!133905 () Bool)

(assert (=> b!149965 m!133905))

(declare-fun m!133907 () Bool)

(assert (=> b!149958 m!133907))

(declare-fun m!133909 () Bool)

(assert (=> b!149968 m!133909))

(declare-fun m!133911 () Bool)

(assert (=> b!149970 m!133911))

(declare-fun m!133913 () Bool)

(assert (=> b!149973 m!133913))

(assert (=> b!149973 m!133913))

(declare-fun m!133915 () Bool)

(assert (=> b!149973 m!133915))

(declare-fun m!133917 () Bool)

(assert (=> b!149977 m!133917))

(declare-fun m!133919 () Bool)

(assert (=> b!149977 m!133919))

(declare-fun m!133921 () Bool)

(assert (=> b!149976 m!133921))

(declare-fun m!133923 () Bool)

(assert (=> b!149976 m!133923))

(declare-fun m!133925 () Bool)

(assert (=> start!15994 m!133925))

(check-sat (not b!149973) (not b!149964) (not b!149976) (not b!149971) (not b!149975) b_and!8513 (not b!149977) (not b_next!5405) (not b_next!5409) (not start!15994) b_and!8523 b_and!8517 (not b!149965) (not b_next!5403) b_and!8515 (not b!149958) (not b!149957) (not b!149961) (not b!149970) (not b_next!5407) (not b_next!5411) (not b!149967) (not b!149966) (not b!149969) (not b_next!5401) b_and!8519 (not b!149978) b_and!8521 (not b!149974) (not b!149968))
(check-sat b_and!8523 b_and!8517 (not b_next!5407) b_and!8513 (not b_next!5411) b_and!8521 (not b_next!5405) (not b_next!5409) (not b_next!5403) b_and!8515 (not b_next!5401) b_and!8519)
(get-model)

(declare-fun b!149989 () Bool)

(declare-fun e!89426 () Bool)

(declare-fun inv!17 (TokenValue!471) Bool)

(assert (=> b!149989 (= e!89426 (inv!17 (value!17112 (h!7995 tokens!465))))))

(declare-fun b!149990 () Bool)

(declare-fun e!89424 () Bool)

(declare-fun inv!16 (TokenValue!471) Bool)

(assert (=> b!149990 (= e!89424 (inv!16 (value!17112 (h!7995 tokens!465))))))

(declare-fun d!35926 () Bool)

(declare-fun c!30413 () Bool)

(assert (=> d!35926 (= c!30413 ((_ is IntegerValue!1413) (value!17112 (h!7995 tokens!465))))))

(assert (=> d!35926 (= (inv!21 (value!17112 (h!7995 tokens!465))) e!89424)))

(declare-fun b!149991 () Bool)

(declare-fun res!68826 () Bool)

(declare-fun e!89425 () Bool)

(assert (=> b!149991 (=> res!68826 e!89425)))

(assert (=> b!149991 (= res!68826 (not ((_ is IntegerValue!1415) (value!17112 (h!7995 tokens!465)))))))

(assert (=> b!149991 (= e!89426 e!89425)))

(declare-fun b!149992 () Bool)

(assert (=> b!149992 (= e!89424 e!89426)))

(declare-fun c!30412 () Bool)

(assert (=> b!149992 (= c!30412 ((_ is IntegerValue!1414) (value!17112 (h!7995 tokens!465))))))

(declare-fun b!149993 () Bool)

(declare-fun inv!15 (TokenValue!471) Bool)

(assert (=> b!149993 (= e!89425 (inv!15 (value!17112 (h!7995 tokens!465))))))

(assert (= (and d!35926 c!30413) b!149990))

(assert (= (and d!35926 (not c!30413)) b!149992))

(assert (= (and b!149992 c!30412) b!149989))

(assert (= (and b!149992 (not c!30412)) b!149991))

(assert (= (and b!149991 (not res!68826)) b!149993))

(declare-fun m!133927 () Bool)

(assert (=> b!149989 m!133927))

(declare-fun m!133929 () Bool)

(assert (=> b!149990 m!133929))

(declare-fun m!133931 () Bool)

(assert (=> b!149993 m!133931))

(assert (=> b!149971 d!35926))

(declare-fun d!35928 () Bool)

(assert (=> d!35928 (= (isEmpty!1022 rules!1920) ((_ is Nil!2597) rules!1920))))

(assert (=> b!149969 d!35928))

(declare-fun d!35930 () Bool)

(declare-fun res!68831 () Bool)

(declare-fun e!89429 () Bool)

(assert (=> d!35930 (=> (not res!68831) (not e!89429))))

(declare-fun isEmpty!1025 (List!2606) Bool)

(assert (=> d!35930 (= res!68831 (not (isEmpty!1025 (originalCharacters!492 (h!7995 tokens!465)))))))

(assert (=> d!35930 (= (inv!3390 (h!7995 tokens!465)) e!89429)))

(declare-fun b!149998 () Bool)

(declare-fun res!68832 () Bool)

(assert (=> b!149998 (=> (not res!68832) (not e!89429))))

(declare-fun dynLambda!901 (Int TokenValue!471) BalanceConc!1448)

(assert (=> b!149998 (= res!68832 (= (originalCharacters!492 (h!7995 tokens!465)) (list!907 (dynLambda!901 (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465)))) (value!17112 (h!7995 tokens!465))))))))

(declare-fun b!149999 () Bool)

(declare-fun size!2230 (List!2606) Int)

(assert (=> b!149999 (= e!89429 (= (size!2227 (h!7995 tokens!465)) (size!2230 (originalCharacters!492 (h!7995 tokens!465)))))))

(assert (= (and d!35930 res!68831) b!149998))

(assert (= (and b!149998 res!68832) b!149999))

(declare-fun b_lambda!2679 () Bool)

(assert (=> (not b_lambda!2679) (not b!149998)))

(declare-fun t!24680 () Bool)

(declare-fun tb!5005 () Bool)

(assert (=> (and b!149962 (= (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465)))) (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465))))) t!24680) tb!5005))

(declare-fun b!150004 () Bool)

(declare-fun e!89432 () Bool)

(declare-fun tp!78328 () Bool)

(declare-fun inv!3394 (Conc!720) Bool)

(assert (=> b!150004 (= e!89432 (and (inv!3394 (c!30405 (dynLambda!901 (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465)))) (value!17112 (h!7995 tokens!465))))) tp!78328))))

(declare-fun result!7420 () Bool)

(declare-fun inv!3395 (BalanceConc!1448) Bool)

(assert (=> tb!5005 (= result!7420 (and (inv!3395 (dynLambda!901 (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465)))) (value!17112 (h!7995 tokens!465)))) e!89432))))

(assert (= tb!5005 b!150004))

(declare-fun m!133933 () Bool)

(assert (=> b!150004 m!133933))

(declare-fun m!133935 () Bool)

(assert (=> tb!5005 m!133935))

(assert (=> b!149998 t!24680))

(declare-fun b_and!8525 () Bool)

(assert (= b_and!8515 (and (=> t!24680 result!7420) b_and!8525)))

(declare-fun tb!5007 () Bool)

(declare-fun t!24682 () Bool)

(assert (=> (and b!149959 (= (toChars!943 (transformation!449 (h!7994 rules!1920))) (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465))))) t!24682) tb!5007))

(declare-fun result!7424 () Bool)

(assert (= result!7424 result!7420))

(assert (=> b!149998 t!24682))

(declare-fun b_and!8527 () Bool)

(assert (= b_and!8519 (and (=> t!24682 result!7424) b_and!8527)))

(declare-fun tb!5009 () Bool)

(declare-fun t!24684 () Bool)

(assert (=> (and b!149960 (= (toChars!943 (transformation!449 (rule!956 separatorToken!170))) (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465))))) t!24684) tb!5009))

(declare-fun result!7426 () Bool)

(assert (= result!7426 result!7420))

(assert (=> b!149998 t!24684))

(declare-fun b_and!8529 () Bool)

(assert (= b_and!8523 (and (=> t!24684 result!7426) b_and!8529)))

(declare-fun m!133937 () Bool)

(assert (=> d!35930 m!133937))

(declare-fun m!133939 () Bool)

(assert (=> b!149998 m!133939))

(assert (=> b!149998 m!133939))

(declare-fun m!133941 () Bool)

(assert (=> b!149998 m!133941))

(declare-fun m!133943 () Bool)

(assert (=> b!149999 m!133943))

(assert (=> b!149970 d!35930))

(declare-fun d!35932 () Bool)

(declare-fun list!910 (Conc!720) List!2606)

(assert (=> d!35932 (= (list!907 (seqFromList!276 lt!43685)) (list!910 (c!30405 (seqFromList!276 lt!43685))))))

(declare-fun bs!13687 () Bool)

(assert (= bs!13687 d!35932))

(declare-fun m!133945 () Bool)

(assert (=> bs!13687 m!133945))

(assert (=> b!149973 d!35932))

(declare-fun d!35934 () Bool)

(declare-fun fromListB!114 (List!2606) BalanceConc!1448)

(assert (=> d!35934 (= (seqFromList!276 lt!43685) (fromListB!114 lt!43685))))

(declare-fun bs!13688 () Bool)

(assert (= bs!13688 d!35934))

(declare-fun m!133947 () Bool)

(assert (=> bs!13688 m!133947))

(assert (=> b!149973 d!35934))

(declare-fun d!35936 () Bool)

(assert (=> d!35936 (= (inv!3387 (tag!627 (rule!956 (h!7995 tokens!465)))) (= (mod (str.len (value!17111 (tag!627 (rule!956 (h!7995 tokens!465))))) 2) 0))))

(assert (=> b!149974 d!35936))

(declare-fun d!35938 () Bool)

(declare-fun res!68835 () Bool)

(declare-fun e!89435 () Bool)

(assert (=> d!35938 (=> (not res!68835) (not e!89435))))

(declare-fun semiInverseModEq!154 (Int Int) Bool)

(assert (=> d!35938 (= res!68835 (semiInverseModEq!154 (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465)))) (toValue!1084 (transformation!449 (rule!956 (h!7995 tokens!465))))))))

(assert (=> d!35938 (= (inv!3391 (transformation!449 (rule!956 (h!7995 tokens!465)))) e!89435)))

(declare-fun b!150007 () Bool)

(declare-fun equivClasses!137 (Int Int) Bool)

(assert (=> b!150007 (= e!89435 (equivClasses!137 (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465)))) (toValue!1084 (transformation!449 (rule!956 (h!7995 tokens!465))))))))

(assert (= (and d!35938 res!68835) b!150007))

(declare-fun m!133949 () Bool)

(assert (=> d!35938 m!133949))

(declare-fun m!133951 () Bool)

(assert (=> b!150007 m!133951))

(assert (=> b!149974 d!35938))

(declare-fun d!35940 () Bool)

(declare-fun lt!43695 () Bool)

(declare-fun e!89445 () Bool)

(assert (=> d!35940 (= lt!43695 e!89445)))

(declare-fun res!68848 () Bool)

(assert (=> d!35940 (=> (not res!68848) (not e!89445))))

(declare-fun list!911 (BalanceConc!1450) List!2608)

(declare-datatypes ((tuple2!2554 0))(
  ( (tuple2!2555 (_1!1493 BalanceConc!1450) (_2!1493 BalanceConc!1448)) )
))
(declare-fun lex!165 (LexerInterface!335 List!2607 BalanceConc!1448) tuple2!2554)

(declare-fun print!90 (LexerInterface!335 BalanceConc!1450) BalanceConc!1448)

(declare-fun singletonSeq!23 (Token!642) BalanceConc!1450)

(assert (=> d!35940 (= res!68848 (= (list!911 (_1!1493 (lex!165 thiss!17480 rules!1920 (print!90 thiss!17480 (singletonSeq!23 separatorToken!170))))) (list!911 (singletonSeq!23 separatorToken!170))))))

(declare-fun e!89444 () Bool)

(assert (=> d!35940 (= lt!43695 e!89444)))

(declare-fun res!68847 () Bool)

(assert (=> d!35940 (=> (not res!68847) (not e!89444))))

(declare-fun lt!43696 () tuple2!2554)

(declare-fun size!2231 (BalanceConc!1450) Int)

(assert (=> d!35940 (= res!68847 (= (size!2231 (_1!1493 lt!43696)) 1))))

(assert (=> d!35940 (= lt!43696 (lex!165 thiss!17480 rules!1920 (print!90 thiss!17480 (singletonSeq!23 separatorToken!170))))))

(assert (=> d!35940 (not (isEmpty!1022 rules!1920))))

(assert (=> d!35940 (= (rulesProduceIndividualToken!84 thiss!17480 rules!1920 separatorToken!170) lt!43695)))

(declare-fun b!150018 () Bool)

(declare-fun res!68846 () Bool)

(assert (=> b!150018 (=> (not res!68846) (not e!89444))))

(declare-fun apply!337 (BalanceConc!1450 Int) Token!642)

(assert (=> b!150018 (= res!68846 (= (apply!337 (_1!1493 lt!43696) 0) separatorToken!170))))

(declare-fun b!150019 () Bool)

(declare-fun isEmpty!1026 (BalanceConc!1448) Bool)

(assert (=> b!150019 (= e!89444 (isEmpty!1026 (_2!1493 lt!43696)))))

(declare-fun b!150020 () Bool)

(assert (=> b!150020 (= e!89445 (isEmpty!1026 (_2!1493 (lex!165 thiss!17480 rules!1920 (print!90 thiss!17480 (singletonSeq!23 separatorToken!170))))))))

(assert (= (and d!35940 res!68847) b!150018))

(assert (= (and b!150018 res!68846) b!150019))

(assert (= (and d!35940 res!68848) b!150020))

(declare-fun m!133953 () Bool)

(assert (=> d!35940 m!133953))

(declare-fun m!133955 () Bool)

(assert (=> d!35940 m!133955))

(declare-fun m!133957 () Bool)

(assert (=> d!35940 m!133957))

(declare-fun m!133959 () Bool)

(assert (=> d!35940 m!133959))

(declare-fun m!133961 () Bool)

(assert (=> d!35940 m!133961))

(assert (=> d!35940 m!133959))

(assert (=> d!35940 m!133955))

(assert (=> d!35940 m!133959))

(declare-fun m!133963 () Bool)

(assert (=> d!35940 m!133963))

(assert (=> d!35940 m!133875))

(declare-fun m!133965 () Bool)

(assert (=> b!150018 m!133965))

(declare-fun m!133967 () Bool)

(assert (=> b!150019 m!133967))

(assert (=> b!150020 m!133959))

(assert (=> b!150020 m!133959))

(assert (=> b!150020 m!133955))

(assert (=> b!150020 m!133955))

(assert (=> b!150020 m!133957))

(declare-fun m!133969 () Bool)

(assert (=> b!150020 m!133969))

(assert (=> b!149961 d!35940))

(declare-fun bs!13692 () Bool)

(declare-fun d!35942 () Bool)

(assert (= bs!13692 (and d!35942 b!149968)))

(declare-fun lambda!3816 () Int)

(assert (=> bs!13692 (not (= lambda!3816 lambda!3810))))

(declare-fun b!150112 () Bool)

(declare-fun e!89514 () Bool)

(assert (=> b!150112 (= e!89514 true)))

(declare-fun b!150111 () Bool)

(declare-fun e!89513 () Bool)

(assert (=> b!150111 (= e!89513 e!89514)))

(declare-fun b!150110 () Bool)

(declare-fun e!89512 () Bool)

(assert (=> b!150110 (= e!89512 e!89513)))

(assert (=> d!35942 e!89512))

(assert (= b!150111 b!150112))

(assert (= b!150110 b!150111))

(assert (= (and d!35942 ((_ is Cons!2597) rules!1920)) b!150110))

(declare-fun order!1289 () Int)

(declare-fun order!1291 () Int)

(declare-fun dynLambda!902 (Int Int) Int)

(declare-fun dynLambda!903 (Int Int) Int)

(assert (=> b!150112 (< (dynLambda!902 order!1289 (toValue!1084 (transformation!449 (h!7994 rules!1920)))) (dynLambda!903 order!1291 lambda!3816))))

(declare-fun order!1293 () Int)

(declare-fun dynLambda!904 (Int Int) Int)

(assert (=> b!150112 (< (dynLambda!904 order!1293 (toChars!943 (transformation!449 (h!7994 rules!1920)))) (dynLambda!903 order!1291 lambda!3816))))

(assert (=> d!35942 true))

(declare-fun lt!43709 () Bool)

(assert (=> d!35942 (= lt!43709 (forall!435 (t!24678 tokens!465) lambda!3816))))

(declare-fun e!89505 () Bool)

(assert (=> d!35942 (= lt!43709 e!89505)))

(declare-fun res!68894 () Bool)

(assert (=> d!35942 (=> res!68894 e!89505)))

(assert (=> d!35942 (= res!68894 (not ((_ is Cons!2598) (t!24678 tokens!465))))))

(assert (=> d!35942 (not (isEmpty!1022 rules!1920))))

(assert (=> d!35942 (= (rulesProduceEachTokenIndividuallyList!77 thiss!17480 rules!1920 (t!24678 tokens!465)) lt!43709)))

(declare-fun b!150100 () Bool)

(declare-fun e!89504 () Bool)

(assert (=> b!150100 (= e!89505 e!89504)))

(declare-fun res!68893 () Bool)

(assert (=> b!150100 (=> (not res!68893) (not e!89504))))

(assert (=> b!150100 (= res!68893 (rulesProduceIndividualToken!84 thiss!17480 rules!1920 (h!7995 (t!24678 tokens!465))))))

(declare-fun b!150101 () Bool)

(assert (=> b!150101 (= e!89504 (rulesProduceEachTokenIndividuallyList!77 thiss!17480 rules!1920 (t!24678 (t!24678 tokens!465))))))

(assert (= (and d!35942 (not res!68894)) b!150100))

(assert (= (and b!150100 res!68893) b!150101))

(declare-fun m!134051 () Bool)

(assert (=> d!35942 m!134051))

(assert (=> d!35942 m!133875))

(declare-fun m!134053 () Bool)

(assert (=> b!150100 m!134053))

(declare-fun m!134055 () Bool)

(assert (=> b!150101 m!134055))

(assert (=> b!149965 d!35942))

(declare-fun d!35972 () Bool)

(assert (=> d!35972 (= (list!907 (charsOf!104 separatorToken!170)) (list!910 (c!30405 (charsOf!104 separatorToken!170))))))

(declare-fun bs!13693 () Bool)

(assert (= bs!13693 d!35972))

(declare-fun m!134057 () Bool)

(assert (=> bs!13693 m!134057))

(assert (=> b!149965 d!35972))

(declare-fun d!35974 () Bool)

(declare-fun lt!43712 () BalanceConc!1448)

(assert (=> d!35974 (= (list!907 lt!43712) (originalCharacters!492 separatorToken!170))))

(assert (=> d!35974 (= lt!43712 (dynLambda!901 (toChars!943 (transformation!449 (rule!956 separatorToken!170))) (value!17112 separatorToken!170)))))

(assert (=> d!35974 (= (charsOf!104 separatorToken!170) lt!43712)))

(declare-fun b_lambda!2691 () Bool)

(assert (=> (not b_lambda!2691) (not d!35974)))

(declare-fun t!24704 () Bool)

(declare-fun tb!5023 () Bool)

(assert (=> (and b!149962 (= (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465)))) (toChars!943 (transformation!449 (rule!956 separatorToken!170)))) t!24704) tb!5023))

(declare-fun b!150115 () Bool)

(declare-fun e!89515 () Bool)

(declare-fun tp!78333 () Bool)

(assert (=> b!150115 (= e!89515 (and (inv!3394 (c!30405 (dynLambda!901 (toChars!943 (transformation!449 (rule!956 separatorToken!170))) (value!17112 separatorToken!170)))) tp!78333))))

(declare-fun result!7442 () Bool)

(assert (=> tb!5023 (= result!7442 (and (inv!3395 (dynLambda!901 (toChars!943 (transformation!449 (rule!956 separatorToken!170))) (value!17112 separatorToken!170))) e!89515))))

(assert (= tb!5023 b!150115))

(declare-fun m!134059 () Bool)

(assert (=> b!150115 m!134059))

(declare-fun m!134061 () Bool)

(assert (=> tb!5023 m!134061))

(assert (=> d!35974 t!24704))

(declare-fun b_and!8549 () Bool)

(assert (= b_and!8525 (and (=> t!24704 result!7442) b_and!8549)))

(declare-fun t!24706 () Bool)

(declare-fun tb!5025 () Bool)

(assert (=> (and b!149959 (= (toChars!943 (transformation!449 (h!7994 rules!1920))) (toChars!943 (transformation!449 (rule!956 separatorToken!170)))) t!24706) tb!5025))

(declare-fun result!7444 () Bool)

(assert (= result!7444 result!7442))

(assert (=> d!35974 t!24706))

(declare-fun b_and!8551 () Bool)

(assert (= b_and!8527 (and (=> t!24706 result!7444) b_and!8551)))

(declare-fun t!24708 () Bool)

(declare-fun tb!5027 () Bool)

(assert (=> (and b!149960 (= (toChars!943 (transformation!449 (rule!956 separatorToken!170))) (toChars!943 (transformation!449 (rule!956 separatorToken!170)))) t!24708) tb!5027))

(declare-fun result!7446 () Bool)

(assert (= result!7446 result!7442))

(assert (=> d!35974 t!24708))

(declare-fun b_and!8553 () Bool)

(assert (= b_and!8529 (and (=> t!24708 result!7446) b_and!8553)))

(declare-fun m!134063 () Bool)

(assert (=> d!35974 m!134063))

(declare-fun m!134065 () Bool)

(assert (=> d!35974 m!134065))

(assert (=> b!149965 d!35974))

(declare-fun d!35976 () Bool)

(assert (=> d!35976 (= (inv!3387 (tag!627 (h!7994 rules!1920))) (= (mod (str.len (value!17111 (tag!627 (h!7994 rules!1920)))) 2) 0))))

(assert (=> b!149976 d!35976))

(declare-fun d!35978 () Bool)

(declare-fun res!68895 () Bool)

(declare-fun e!89516 () Bool)

(assert (=> d!35978 (=> (not res!68895) (not e!89516))))

(assert (=> d!35978 (= res!68895 (semiInverseModEq!154 (toChars!943 (transformation!449 (h!7994 rules!1920))) (toValue!1084 (transformation!449 (h!7994 rules!1920)))))))

(assert (=> d!35978 (= (inv!3391 (transformation!449 (h!7994 rules!1920))) e!89516)))

(declare-fun b!150116 () Bool)

(assert (=> b!150116 (= e!89516 (equivClasses!137 (toChars!943 (transformation!449 (h!7994 rules!1920))) (toValue!1084 (transformation!449 (h!7994 rules!1920)))))))

(assert (= (and d!35978 res!68895) b!150116))

(declare-fun m!134067 () Bool)

(assert (=> d!35978 m!134067))

(declare-fun m!134069 () Bool)

(assert (=> b!150116 m!134069))

(assert (=> b!149976 d!35978))

(declare-fun d!35980 () Bool)

(declare-fun res!68900 () Bool)

(declare-fun e!89521 () Bool)

(assert (=> d!35980 (=> res!68900 e!89521)))

(assert (=> d!35980 (= res!68900 (not ((_ is Cons!2597) rules!1920)))))

(assert (=> d!35980 (= (sepAndNonSepRulesDisjointChars!38 rules!1920 rules!1920) e!89521)))

(declare-fun b!150121 () Bool)

(declare-fun e!89522 () Bool)

(assert (=> b!150121 (= e!89521 e!89522)))

(declare-fun res!68901 () Bool)

(assert (=> b!150121 (=> (not res!68901) (not e!89522))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!14 (Rule!698 List!2607) Bool)

(assert (=> b!150121 (= res!68901 (ruleDisjointCharsFromAllFromOtherType!14 (h!7994 rules!1920) rules!1920))))

(declare-fun b!150122 () Bool)

(assert (=> b!150122 (= e!89522 (sepAndNonSepRulesDisjointChars!38 rules!1920 (t!24677 rules!1920)))))

(assert (= (and d!35980 (not res!68900)) b!150121))

(assert (= (and b!150121 res!68901) b!150122))

(declare-fun m!134071 () Bool)

(assert (=> b!150121 m!134071))

(declare-fun m!134073 () Bool)

(assert (=> b!150122 m!134073))

(assert (=> b!149966 d!35980))

(declare-fun bs!13699 () Bool)

(declare-fun d!35982 () Bool)

(assert (= bs!13699 (and d!35982 b!149968)))

(declare-fun lambda!3827 () Int)

(assert (=> bs!13699 (not (= lambda!3827 lambda!3810))))

(declare-fun bs!13700 () Bool)

(assert (= bs!13700 (and d!35982 d!35942)))

(assert (=> bs!13700 (= lambda!3827 lambda!3816)))

(declare-fun b!150164 () Bool)

(declare-fun e!89552 () Bool)

(assert (=> b!150164 (= e!89552 true)))

(declare-fun b!150163 () Bool)

(declare-fun e!89551 () Bool)

(assert (=> b!150163 (= e!89551 e!89552)))

(declare-fun b!150162 () Bool)

(declare-fun e!89550 () Bool)

(assert (=> b!150162 (= e!89550 e!89551)))

(assert (=> d!35982 e!89550))

(assert (= b!150163 b!150164))

(assert (= b!150162 b!150163))

(assert (= (and d!35982 ((_ is Cons!2597) rules!1920)) b!150162))

(assert (=> b!150164 (< (dynLambda!902 order!1289 (toValue!1084 (transformation!449 (h!7994 rules!1920)))) (dynLambda!903 order!1291 lambda!3827))))

(assert (=> b!150164 (< (dynLambda!904 order!1293 (toChars!943 (transformation!449 (h!7994 rules!1920)))) (dynLambda!903 order!1291 lambda!3827))))

(assert (=> d!35982 true))

(declare-fun e!89549 () Bool)

(assert (=> d!35982 e!89549))

(declare-fun res!68913 () Bool)

(assert (=> d!35982 (=> (not res!68913) (not e!89549))))

(declare-fun lt!43757 () Bool)

(assert (=> d!35982 (= res!68913 (= lt!43757 (forall!435 (list!911 lt!43688) lambda!3827)))))

(declare-fun forall!437 (BalanceConc!1450 Int) Bool)

(assert (=> d!35982 (= lt!43757 (forall!437 lt!43688 lambda!3827))))

(assert (=> d!35982 (not (isEmpty!1022 rules!1920))))

(assert (=> d!35982 (= (rulesProduceEachTokenIndividually!127 thiss!17480 rules!1920 lt!43688) lt!43757)))

(declare-fun b!150161 () Bool)

(assert (=> b!150161 (= e!89549 (= lt!43757 (rulesProduceEachTokenIndividuallyList!77 thiss!17480 rules!1920 (list!911 lt!43688))))))

(assert (= (and d!35982 res!68913) b!150161))

(declare-fun m!134135 () Bool)

(assert (=> d!35982 m!134135))

(assert (=> d!35982 m!134135))

(declare-fun m!134137 () Bool)

(assert (=> d!35982 m!134137))

(declare-fun m!134139 () Bool)

(assert (=> d!35982 m!134139))

(assert (=> d!35982 m!133875))

(assert (=> b!150161 m!134135))

(assert (=> b!150161 m!134135))

(declare-fun m!134141 () Bool)

(assert (=> b!150161 m!134141))

(assert (=> b!149964 d!35982))

(declare-fun d!35986 () Bool)

(declare-fun fromListB!117 (List!2608) BalanceConc!1450)

(assert (=> d!35986 (= (seqFromList!275 tokens!465) (fromListB!117 tokens!465))))

(declare-fun bs!13701 () Bool)

(assert (= bs!13701 d!35986))

(declare-fun m!134143 () Bool)

(assert (=> bs!13701 m!134143))

(assert (=> b!149964 d!35986))

(declare-fun b!150165 () Bool)

(declare-fun e!89555 () Bool)

(assert (=> b!150165 (= e!89555 (inv!17 (value!17112 separatorToken!170)))))

(declare-fun b!150166 () Bool)

(declare-fun e!89553 () Bool)

(assert (=> b!150166 (= e!89553 (inv!16 (value!17112 separatorToken!170)))))

(declare-fun d!35988 () Bool)

(declare-fun c!30435 () Bool)

(assert (=> d!35988 (= c!30435 ((_ is IntegerValue!1413) (value!17112 separatorToken!170)))))

(assert (=> d!35988 (= (inv!21 (value!17112 separatorToken!170)) e!89553)))

(declare-fun b!150167 () Bool)

(declare-fun res!68914 () Bool)

(declare-fun e!89554 () Bool)

(assert (=> b!150167 (=> res!68914 e!89554)))

(assert (=> b!150167 (= res!68914 (not ((_ is IntegerValue!1415) (value!17112 separatorToken!170))))))

(assert (=> b!150167 (= e!89555 e!89554)))

(declare-fun b!150168 () Bool)

(assert (=> b!150168 (= e!89553 e!89555)))

(declare-fun c!30434 () Bool)

(assert (=> b!150168 (= c!30434 ((_ is IntegerValue!1414) (value!17112 separatorToken!170)))))

(declare-fun b!150169 () Bool)

(assert (=> b!150169 (= e!89554 (inv!15 (value!17112 separatorToken!170)))))

(assert (= (and d!35988 c!30435) b!150166))

(assert (= (and d!35988 (not c!30435)) b!150168))

(assert (= (and b!150168 c!30434) b!150165))

(assert (= (and b!150168 (not c!30434)) b!150167))

(assert (= (and b!150167 (not res!68914)) b!150169))

(declare-fun m!134145 () Bool)

(assert (=> b!150165 m!134145))

(declare-fun m!134147 () Bool)

(assert (=> b!150166 m!134147))

(declare-fun m!134149 () Bool)

(assert (=> b!150169 m!134149))

(assert (=> b!149975 d!35988))

(declare-fun d!35990 () Bool)

(declare-fun res!68919 () Bool)

(declare-fun e!89560 () Bool)

(assert (=> d!35990 (=> res!68919 e!89560)))

(assert (=> d!35990 (= res!68919 ((_ is Nil!2598) tokens!465))))

(assert (=> d!35990 (= (forall!435 tokens!465 lambda!3810) e!89560)))

(declare-fun b!150174 () Bool)

(declare-fun e!89561 () Bool)

(assert (=> b!150174 (= e!89560 e!89561)))

(declare-fun res!68920 () Bool)

(assert (=> b!150174 (=> (not res!68920) (not e!89561))))

(declare-fun dynLambda!905 (Int Token!642) Bool)

(assert (=> b!150174 (= res!68920 (dynLambda!905 lambda!3810 (h!7995 tokens!465)))))

(declare-fun b!150175 () Bool)

(assert (=> b!150175 (= e!89561 (forall!435 (t!24678 tokens!465) lambda!3810))))

(assert (= (and d!35990 (not res!68919)) b!150174))

(assert (= (and b!150174 res!68920) b!150175))

(declare-fun b_lambda!2693 () Bool)

(assert (=> (not b_lambda!2693) (not b!150174)))

(declare-fun m!134151 () Bool)

(assert (=> b!150174 m!134151))

(assert (=> b!150175 m!133893))

(assert (=> b!149968 d!35990))

(declare-fun d!35992 () Bool)

(declare-fun res!68921 () Bool)

(declare-fun e!89562 () Bool)

(assert (=> d!35992 (=> (not res!68921) (not e!89562))))

(assert (=> d!35992 (= res!68921 (not (isEmpty!1025 (originalCharacters!492 separatorToken!170))))))

(assert (=> d!35992 (= (inv!3390 separatorToken!170) e!89562)))

(declare-fun b!150176 () Bool)

(declare-fun res!68922 () Bool)

(assert (=> b!150176 (=> (not res!68922) (not e!89562))))

(assert (=> b!150176 (= res!68922 (= (originalCharacters!492 separatorToken!170) (list!907 (dynLambda!901 (toChars!943 (transformation!449 (rule!956 separatorToken!170))) (value!17112 separatorToken!170)))))))

(declare-fun b!150177 () Bool)

(assert (=> b!150177 (= e!89562 (= (size!2227 separatorToken!170) (size!2230 (originalCharacters!492 separatorToken!170))))))

(assert (= (and d!35992 res!68921) b!150176))

(assert (= (and b!150176 res!68922) b!150177))

(declare-fun b_lambda!2695 () Bool)

(assert (=> (not b_lambda!2695) (not b!150176)))

(assert (=> b!150176 t!24704))

(declare-fun b_and!8555 () Bool)

(assert (= b_and!8549 (and (=> t!24704 result!7442) b_and!8555)))

(assert (=> b!150176 t!24706))

(declare-fun b_and!8557 () Bool)

(assert (= b_and!8551 (and (=> t!24706 result!7444) b_and!8557)))

(assert (=> b!150176 t!24708))

(declare-fun b_and!8559 () Bool)

(assert (= b_and!8553 (and (=> t!24708 result!7446) b_and!8559)))

(declare-fun m!134153 () Bool)

(assert (=> d!35992 m!134153))

(assert (=> b!150176 m!134065))

(assert (=> b!150176 m!134065))

(declare-fun m!134155 () Bool)

(assert (=> b!150176 m!134155))

(declare-fun m!134157 () Bool)

(assert (=> b!150177 m!134157))

(assert (=> start!15994 d!35992))

(declare-fun d!35994 () Bool)

(declare-fun res!68925 () Bool)

(declare-fun e!89565 () Bool)

(assert (=> d!35994 (=> (not res!68925) (not e!89565))))

(declare-fun rulesValid!121 (LexerInterface!335 List!2607) Bool)

(assert (=> d!35994 (= res!68925 (rulesValid!121 thiss!17480 rules!1920))))

(assert (=> d!35994 (= (rulesInvariant!301 thiss!17480 rules!1920) e!89565)))

(declare-fun b!150180 () Bool)

(declare-datatypes ((List!2610 0))(
  ( (Nil!2600) (Cons!2600 (h!7997 String!3435) (t!24746 List!2610)) )
))
(declare-fun noDuplicateTag!121 (LexerInterface!335 List!2607 List!2610) Bool)

(assert (=> b!150180 (= e!89565 (noDuplicateTag!121 thiss!17480 rules!1920 Nil!2600))))

(assert (= (and d!35994 res!68925) b!150180))

(declare-fun m!134159 () Bool)

(assert (=> d!35994 m!134159))

(declare-fun m!134161 () Bool)

(assert (=> b!150180 m!134161))

(assert (=> b!149958 d!35994))

(declare-fun d!35996 () Bool)

(assert (=> d!35996 (= (inv!3387 (tag!627 (rule!956 separatorToken!170))) (= (mod (str.len (value!17111 (tag!627 (rule!956 separatorToken!170)))) 2) 0))))

(assert (=> b!149977 d!35996))

(declare-fun d!35998 () Bool)

(declare-fun res!68926 () Bool)

(declare-fun e!89566 () Bool)

(assert (=> d!35998 (=> (not res!68926) (not e!89566))))

(assert (=> d!35998 (= res!68926 (semiInverseModEq!154 (toChars!943 (transformation!449 (rule!956 separatorToken!170))) (toValue!1084 (transformation!449 (rule!956 separatorToken!170)))))))

(assert (=> d!35998 (= (inv!3391 (transformation!449 (rule!956 separatorToken!170))) e!89566)))

(declare-fun b!150181 () Bool)

(assert (=> b!150181 (= e!89566 (equivClasses!137 (toChars!943 (transformation!449 (rule!956 separatorToken!170))) (toValue!1084 (transformation!449 (rule!956 separatorToken!170)))))))

(assert (= (and d!35998 res!68926) b!150181))

(declare-fun m!134163 () Bool)

(assert (=> d!35998 m!134163))

(declare-fun m!134165 () Bool)

(assert (=> b!150181 m!134165))

(assert (=> b!149977 d!35998))

(declare-fun d!36000 () Bool)

(declare-fun res!68927 () Bool)

(declare-fun e!89567 () Bool)

(assert (=> d!36000 (=> res!68927 e!89567)))

(assert (=> d!36000 (= res!68927 ((_ is Nil!2598) (t!24678 tokens!465)))))

(assert (=> d!36000 (= (forall!435 (t!24678 tokens!465) lambda!3810) e!89567)))

(declare-fun b!150182 () Bool)

(declare-fun e!89568 () Bool)

(assert (=> b!150182 (= e!89567 e!89568)))

(declare-fun res!68928 () Bool)

(assert (=> b!150182 (=> (not res!68928) (not e!89568))))

(assert (=> b!150182 (= res!68928 (dynLambda!905 lambda!3810 (h!7995 (t!24678 tokens!465))))))

(declare-fun b!150183 () Bool)

(assert (=> b!150183 (= e!89568 (forall!435 (t!24678 (t!24678 tokens!465)) lambda!3810))))

(assert (= (and d!36000 (not res!68927)) b!150182))

(assert (= (and b!150182 res!68928) b!150183))

(declare-fun b_lambda!2697 () Bool)

(assert (=> (not b_lambda!2697) (not b!150182)))

(declare-fun m!134167 () Bool)

(assert (=> b!150182 m!134167))

(declare-fun m!134169 () Bool)

(assert (=> b!150183 m!134169))

(assert (=> b!149967 d!36000))

(declare-fun d!36002 () Bool)

(assert (=> d!36002 (= (list!907 (printWithSeparatorTokenWhenNeededRec!18 thiss!17480 rules!1920 lt!43688 separatorToken!170 0)) (list!910 (c!30405 (printWithSeparatorTokenWhenNeededRec!18 thiss!17480 rules!1920 lt!43688 separatorToken!170 0))))))

(declare-fun bs!13702 () Bool)

(assert (= bs!13702 d!36002))

(declare-fun m!134171 () Bool)

(assert (=> bs!13702 m!134171))

(assert (=> b!149978 d!36002))

(declare-fun bs!13715 () Bool)

(declare-fun d!36004 () Bool)

(assert (= bs!13715 (and d!36004 b!149968)))

(declare-fun lambda!3840 () Int)

(assert (=> bs!13715 (= lambda!3840 lambda!3810)))

(declare-fun bs!13716 () Bool)

(assert (= bs!13716 (and d!36004 d!35942)))

(assert (=> bs!13716 (not (= lambda!3840 lambda!3816))))

(declare-fun bs!13717 () Bool)

(assert (= bs!13717 (and d!36004 d!35982)))

(assert (=> bs!13717 (not (= lambda!3840 lambda!3827))))

(declare-fun bs!13718 () Bool)

(declare-fun b!150256 () Bool)

(assert (= bs!13718 (and b!150256 b!149968)))

(declare-fun lambda!3841 () Int)

(assert (=> bs!13718 (not (= lambda!3841 lambda!3810))))

(declare-fun bs!13719 () Bool)

(assert (= bs!13719 (and b!150256 d!35942)))

(assert (=> bs!13719 (= lambda!3841 lambda!3816)))

(declare-fun bs!13720 () Bool)

(assert (= bs!13720 (and b!150256 d!35982)))

(assert (=> bs!13720 (= lambda!3841 lambda!3827)))

(declare-fun bs!13721 () Bool)

(assert (= bs!13721 (and b!150256 d!36004)))

(assert (=> bs!13721 (not (= lambda!3841 lambda!3840))))

(declare-fun b!150265 () Bool)

(declare-fun e!89633 () Bool)

(assert (=> b!150265 (= e!89633 true)))

(declare-fun b!150264 () Bool)

(declare-fun e!89632 () Bool)

(assert (=> b!150264 (= e!89632 e!89633)))

(declare-fun b!150263 () Bool)

(declare-fun e!89631 () Bool)

(assert (=> b!150263 (= e!89631 e!89632)))

(assert (=> b!150256 e!89631))

(assert (= b!150264 b!150265))

(assert (= b!150263 b!150264))

(assert (= (and b!150256 ((_ is Cons!2597) rules!1920)) b!150263))

(assert (=> b!150265 (< (dynLambda!902 order!1289 (toValue!1084 (transformation!449 (h!7994 rules!1920)))) (dynLambda!903 order!1291 lambda!3841))))

(assert (=> b!150265 (< (dynLambda!904 order!1293 (toChars!943 (transformation!449 (h!7994 rules!1920)))) (dynLambda!903 order!1291 lambda!3841))))

(assert (=> b!150256 true))

(declare-fun bm!6022 () Bool)

(declare-fun call!6028 () Token!642)

(declare-fun c!30455 () Bool)

(declare-fun call!6027 () BalanceConc!1448)

(assert (=> bm!6022 (= call!6027 (charsOf!104 (ite c!30455 separatorToken!170 call!6028)))))

(declare-fun bm!6023 () Bool)

(declare-fun call!6031 () Token!642)

(assert (=> bm!6023 (= call!6031 (apply!337 lt!43688 0))))

(declare-fun b!150250 () Bool)

(declare-fun e!89624 () Bool)

(declare-datatypes ((tuple2!2556 0))(
  ( (tuple2!2557 (_1!1494 Token!642) (_2!1494 BalanceConc!1448)) )
))
(declare-datatypes ((Option!234 0))(
  ( (None!233) (Some!233 (v!13608 tuple2!2556)) )
))
(declare-fun lt!43808 () Option!234)

(assert (=> b!150250 (= e!89624 (not (= (_1!1494 (v!13608 lt!43808)) call!6031)))))

(declare-fun b!150251 () Bool)

(declare-fun e!89620 () Bool)

(assert (=> b!150251 (= e!89620 (<= 0 (size!2231 lt!43688)))))

(declare-fun b!150252 () Bool)

(declare-fun e!89622 () Bool)

(assert (=> b!150252 (= e!89622 (= (_1!1494 (v!13608 lt!43808)) (apply!337 lt!43688 0)))))

(declare-fun b!150253 () Bool)

(assert (=> b!150253 (= c!30455 e!89624)))

(declare-fun res!68944 () Bool)

(assert (=> b!150253 (=> (not res!68944) (not e!89624))))

(assert (=> b!150253 (= res!68944 ((_ is Some!233) lt!43808))))

(declare-fun e!89623 () BalanceConc!1448)

(declare-fun e!89621 () BalanceConc!1448)

(assert (=> b!150253 (= e!89623 e!89621)))

(declare-fun bm!6024 () Bool)

(declare-fun call!6030 () BalanceConc!1448)

(declare-fun c!30454 () Bool)

(assert (=> bm!6024 (= call!6030 (charsOf!104 (ite c!30454 call!6031 call!6028)))))

(declare-fun b!150254 () Bool)

(assert (=> b!150254 (= e!89621 (BalanceConc!1449 Empty!720))))

(declare-fun printTailRec!53 (LexerInterface!335 BalanceConc!1450 Int BalanceConc!1448) BalanceConc!1448)

(assert (=> b!150254 (= (print!90 thiss!17480 (singletonSeq!23 call!6028)) (printTailRec!53 thiss!17480 (singletonSeq!23 call!6028) 0 (BalanceConc!1449 Empty!720)))))

(declare-datatypes ((Unit!1974 0))(
  ( (Unit!1975) )
))
(declare-fun lt!43810 () Unit!1974)

(declare-fun Unit!1976 () Unit!1974)

(assert (=> b!150254 (= lt!43810 Unit!1976)))

(declare-fun lt!43819 () Unit!1974)

(declare-fun lt!43816 () BalanceConc!1448)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!12 (LexerInterface!335 List!2607 List!2606 List!2606) Unit!1974)

(assert (=> b!150254 (= lt!43819 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!12 thiss!17480 rules!1920 (list!907 call!6027) (list!907 lt!43816)))))

(assert (=> b!150254 false))

(declare-fun lt!43809 () Unit!1974)

(declare-fun Unit!1977 () Unit!1974)

(assert (=> b!150254 (= lt!43809 Unit!1977)))

(declare-fun lt!43818 () BalanceConc!1448)

(declare-fun dropList!64 (BalanceConc!1450 Int) List!2608)

(assert (=> d!36004 (= (list!907 lt!43818) (printWithSeparatorTokenWhenNeededList!28 thiss!17480 rules!1920 (dropList!64 lt!43688 0) separatorToken!170))))

(declare-fun e!89619 () BalanceConc!1448)

(assert (=> d!36004 (= lt!43818 e!89619)))

(declare-fun c!30456 () Bool)

(assert (=> d!36004 (= c!30456 (>= 0 (size!2231 lt!43688)))))

(declare-fun lt!43815 () Unit!1974)

(declare-fun lemmaContentSubsetPreservesForall!8 (List!2608 List!2608 Int) Unit!1974)

(assert (=> d!36004 (= lt!43815 (lemmaContentSubsetPreservesForall!8 (list!911 lt!43688) (dropList!64 lt!43688 0) lambda!3840))))

(assert (=> d!36004 e!89620))

(declare-fun res!68943 () Bool)

(assert (=> d!36004 (=> (not res!68943) (not e!89620))))

(assert (=> d!36004 (= res!68943 (>= 0 0))))

(assert (=> d!36004 (= (printWithSeparatorTokenWhenNeededRec!18 thiss!17480 rules!1920 lt!43688 separatorToken!170 0) lt!43818)))

(declare-fun bm!6025 () Bool)

(assert (=> bm!6025 (= call!6028 call!6031)))

(declare-fun call!6029 () BalanceConc!1448)

(declare-fun bm!6026 () Bool)

(declare-fun ++!555 (BalanceConc!1448 BalanceConc!1448) BalanceConc!1448)

(assert (=> bm!6026 (= call!6029 (++!555 call!6030 (ite c!30454 lt!43816 call!6027)))))

(declare-fun b!150255 () Bool)

(assert (=> b!150255 (= e!89623 call!6029)))

(assert (=> b!150256 (= e!89619 e!89623)))

(declare-fun lt!43807 () List!2608)

(assert (=> b!150256 (= lt!43807 (list!911 lt!43688))))

(declare-fun lt!43814 () Unit!1974)

(declare-fun lemmaDropApply!104 (List!2608 Int) Unit!1974)

(assert (=> b!150256 (= lt!43814 (lemmaDropApply!104 lt!43807 0))))

(declare-fun head!578 (List!2608) Token!642)

(declare-fun drop!117 (List!2608 Int) List!2608)

(declare-fun apply!338 (List!2608 Int) Token!642)

(assert (=> b!150256 (= (head!578 (drop!117 lt!43807 0)) (apply!338 lt!43807 0))))

(declare-fun lt!43813 () Unit!1974)

(assert (=> b!150256 (= lt!43813 lt!43814)))

(declare-fun lt!43811 () List!2608)

(assert (=> b!150256 (= lt!43811 (list!911 lt!43688))))

(declare-fun lt!43820 () Unit!1974)

(declare-fun lemmaDropTail!96 (List!2608 Int) Unit!1974)

(assert (=> b!150256 (= lt!43820 (lemmaDropTail!96 lt!43811 0))))

(declare-fun tail!318 (List!2608) List!2608)

(assert (=> b!150256 (= (tail!318 (drop!117 lt!43811 0)) (drop!117 lt!43811 (+ 0 1)))))

(declare-fun lt!43812 () Unit!1974)

(assert (=> b!150256 (= lt!43812 lt!43820)))

(declare-fun lt!43817 () Unit!1974)

(declare-fun forallContained!48 (List!2608 Int Token!642) Unit!1974)

(assert (=> b!150256 (= lt!43817 (forallContained!48 (list!911 lt!43688) lambda!3841 (apply!337 lt!43688 0)))))

(assert (=> b!150256 (= lt!43816 (printWithSeparatorTokenWhenNeededRec!18 thiss!17480 rules!1920 lt!43688 separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!64 (LexerInterface!335 List!2607 BalanceConc!1448) Option!234)

(assert (=> b!150256 (= lt!43808 (maxPrefixZipperSequence!64 thiss!17480 rules!1920 (++!555 (charsOf!104 (apply!337 lt!43688 0)) lt!43816)))))

(declare-fun res!68945 () Bool)

(assert (=> b!150256 (= res!68945 ((_ is Some!233) lt!43808))))

(assert (=> b!150256 (=> (not res!68945) (not e!89622))))

(assert (=> b!150256 (= c!30454 e!89622)))

(declare-fun b!150257 () Bool)

(assert (=> b!150257 (= e!89621 (++!555 call!6029 lt!43816))))

(declare-fun b!150258 () Bool)

(assert (=> b!150258 (= e!89619 (BalanceConc!1449 Empty!720))))

(assert (= (and d!36004 res!68943) b!150251))

(assert (= (and d!36004 c!30456) b!150258))

(assert (= (and d!36004 (not c!30456)) b!150256))

(assert (= (and b!150256 res!68945) b!150252))

(assert (= (and b!150256 c!30454) b!150255))

(assert (= (and b!150256 (not c!30454)) b!150253))

(assert (= (and b!150253 res!68944) b!150250))

(assert (= (and b!150253 c!30455) b!150257))

(assert (= (and b!150253 (not c!30455)) b!150254))

(assert (= (or b!150257 b!150254) bm!6025))

(assert (= (or b!150257 b!150254) bm!6022))

(assert (= (or b!150255 bm!6025 b!150250) bm!6023))

(assert (= (or b!150255 b!150257) bm!6024))

(assert (= (or b!150255 b!150257) bm!6026))

(declare-fun m!134233 () Bool)

(assert (=> b!150252 m!134233))

(declare-fun m!134235 () Bool)

(assert (=> bm!6026 m!134235))

(declare-fun m!134237 () Bool)

(assert (=> b!150256 m!134237))

(assert (=> b!150256 m!134233))

(declare-fun m!134239 () Bool)

(assert (=> b!150256 m!134239))

(declare-fun m!134241 () Bool)

(assert (=> b!150256 m!134241))

(declare-fun m!134243 () Bool)

(assert (=> b!150256 m!134243))

(declare-fun m!134245 () Bool)

(assert (=> b!150256 m!134245))

(assert (=> b!150256 m!134245))

(declare-fun m!134247 () Bool)

(assert (=> b!150256 m!134247))

(assert (=> b!150256 m!134239))

(assert (=> b!150256 m!134135))

(assert (=> b!150256 m!134233))

(declare-fun m!134249 () Bool)

(assert (=> b!150256 m!134249))

(declare-fun m!134251 () Bool)

(assert (=> b!150256 m!134251))

(declare-fun m!134253 () Bool)

(assert (=> b!150256 m!134253))

(declare-fun m!134255 () Bool)

(assert (=> b!150256 m!134255))

(declare-fun m!134257 () Bool)

(assert (=> b!150256 m!134257))

(assert (=> b!150256 m!134135))

(assert (=> b!150256 m!134233))

(assert (=> b!150256 m!134243))

(declare-fun m!134259 () Bool)

(assert (=> b!150256 m!134259))

(declare-fun m!134261 () Bool)

(assert (=> b!150256 m!134261))

(assert (=> b!150256 m!134253))

(declare-fun m!134263 () Bool)

(assert (=> bm!6022 m!134263))

(declare-fun m!134265 () Bool)

(assert (=> b!150257 m!134265))

(assert (=> bm!6023 m!134233))

(declare-fun m!134267 () Bool)

(assert (=> b!150251 m!134267))

(assert (=> d!36004 m!134135))

(declare-fun m!134269 () Bool)

(assert (=> d!36004 m!134269))

(declare-fun m!134271 () Bool)

(assert (=> d!36004 m!134271))

(assert (=> d!36004 m!134135))

(declare-fun m!134275 () Bool)

(assert (=> d!36004 m!134275))

(assert (=> d!36004 m!134269))

(declare-fun m!134279 () Bool)

(assert (=> d!36004 m!134279))

(assert (=> d!36004 m!134269))

(assert (=> d!36004 m!134267))

(declare-fun m!134281 () Bool)

(assert (=> b!150254 m!134281))

(declare-fun m!134283 () Bool)

(assert (=> b!150254 m!134283))

(declare-fun m!134285 () Bool)

(assert (=> b!150254 m!134285))

(declare-fun m!134287 () Bool)

(assert (=> b!150254 m!134287))

(assert (=> b!150254 m!134281))

(declare-fun m!134289 () Bool)

(assert (=> b!150254 m!134289))

(assert (=> b!150254 m!134283))

(assert (=> b!150254 m!134283))

(declare-fun m!134291 () Bool)

(assert (=> b!150254 m!134291))

(assert (=> b!150254 m!134287))

(declare-fun m!134293 () Bool)

(assert (=> bm!6024 m!134293))

(assert (=> b!149978 d!36004))

(declare-fun bs!13724 () Bool)

(declare-fun b!150332 () Bool)

(assert (= bs!13724 (and b!150332 d!35982)))

(declare-fun lambda!3844 () Int)

(assert (=> bs!13724 (= lambda!3844 lambda!3827)))

(declare-fun bs!13725 () Bool)

(assert (= bs!13725 (and b!150332 b!150256)))

(assert (=> bs!13725 (= lambda!3844 lambda!3841)))

(declare-fun bs!13726 () Bool)

(assert (= bs!13726 (and b!150332 b!149968)))

(assert (=> bs!13726 (not (= lambda!3844 lambda!3810))))

(declare-fun bs!13727 () Bool)

(assert (= bs!13727 (and b!150332 d!36004)))

(assert (=> bs!13727 (not (= lambda!3844 lambda!3840))))

(declare-fun bs!13728 () Bool)

(assert (= bs!13728 (and b!150332 d!35942)))

(assert (=> bs!13728 (= lambda!3844 lambda!3816)))

(declare-fun b!150337 () Bool)

(declare-fun e!89672 () Bool)

(assert (=> b!150337 (= e!89672 true)))

(declare-fun b!150336 () Bool)

(declare-fun e!89671 () Bool)

(assert (=> b!150336 (= e!89671 e!89672)))

(declare-fun b!150335 () Bool)

(declare-fun e!89670 () Bool)

(assert (=> b!150335 (= e!89670 e!89671)))

(assert (=> b!150332 e!89670))

(assert (= b!150336 b!150337))

(assert (= b!150335 b!150336))

(assert (= (and b!150332 ((_ is Cons!2597) rules!1920)) b!150335))

(assert (=> b!150337 (< (dynLambda!902 order!1289 (toValue!1084 (transformation!449 (h!7994 rules!1920)))) (dynLambda!903 order!1291 lambda!3844))))

(assert (=> b!150337 (< (dynLambda!904 order!1293 (toChars!943 (transformation!449 (h!7994 rules!1920)))) (dynLambda!903 order!1291 lambda!3844))))

(assert (=> b!150332 true))

(declare-fun bm!6037 () Bool)

(declare-fun c!30471 () Bool)

(declare-fun c!30468 () Bool)

(assert (=> bm!6037 (= c!30471 c!30468)))

(declare-fun call!6046 () List!2606)

(declare-fun call!6043 () List!2606)

(declare-fun e!89669 () List!2606)

(declare-fun lt!43838 () List!2606)

(declare-fun ++!556 (List!2606 List!2606) List!2606)

(assert (=> bm!6037 (= call!6046 (++!556 e!89669 (ite c!30468 lt!43838 call!6043)))))

(declare-fun b!150325 () Bool)

(declare-fun call!6042 () BalanceConc!1448)

(assert (=> b!150325 (= e!89669 (list!907 call!6042))))

(declare-fun b!150326 () Bool)

(declare-fun e!89665 () List!2606)

(assert (=> b!150326 (= e!89665 (++!556 call!6046 lt!43838))))

(declare-fun b!150327 () Bool)

(declare-fun e!89668 () BalanceConc!1448)

(assert (=> b!150327 (= e!89668 (charsOf!104 separatorToken!170))))

(declare-fun b!150328 () Bool)

(declare-fun call!6044 () List!2606)

(assert (=> b!150328 (= e!89669 call!6044)))

(declare-fun bm!6038 () Bool)

(declare-fun call!6045 () BalanceConc!1448)

(assert (=> bm!6038 (= call!6044 (list!907 (ite c!30468 call!6045 e!89668)))))

(declare-fun b!150329 () Bool)

(declare-fun e!89666 () List!2606)

(assert (=> b!150329 (= e!89666 call!6046)))

(declare-fun bm!6039 () Bool)

(assert (=> bm!6039 (= call!6043 call!6044)))

(declare-fun c!30469 () Bool)

(declare-fun c!30470 () Bool)

(assert (=> bm!6039 (= c!30469 c!30470)))

(declare-fun b!150330 () Bool)

(assert (=> b!150330 (= e!89668 call!6042)))

(declare-fun b!150331 () Bool)

(assert (=> b!150331 (= e!89665 Nil!2596)))

(assert (=> b!150331 (= (print!90 thiss!17480 (singletonSeq!23 (h!7995 tokens!465))) (printTailRec!53 thiss!17480 (singletonSeq!23 (h!7995 tokens!465)) 0 (BalanceConc!1449 Empty!720)))))

(declare-fun lt!43835 () Unit!1974)

(declare-fun Unit!1978 () Unit!1974)

(assert (=> b!150331 (= lt!43835 Unit!1978)))

(declare-fun lt!43833 () Unit!1974)

(assert (=> b!150331 (= lt!43833 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!12 thiss!17480 rules!1920 call!6043 lt!43838))))

(assert (=> b!150331 false))

(declare-fun lt!43837 () Unit!1974)

(declare-fun Unit!1979 () Unit!1974)

(assert (=> b!150331 (= lt!43837 Unit!1979)))

(declare-fun d!36026 () Bool)

(declare-fun c!30467 () Bool)

(assert (=> d!36026 (= c!30467 ((_ is Cons!2598) tokens!465))))

(declare-fun e!89667 () List!2606)

(assert (=> d!36026 (= (printWithSeparatorTokenWhenNeededList!28 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!89667)))

(assert (=> b!150332 (= e!89667 e!89666)))

(declare-fun lt!43834 () Unit!1974)

(assert (=> b!150332 (= lt!43834 (forallContained!48 tokens!465 lambda!3844 (h!7995 tokens!465)))))

(assert (=> b!150332 (= lt!43838 (printWithSeparatorTokenWhenNeededList!28 thiss!17480 rules!1920 (t!24678 tokens!465) separatorToken!170))))

(declare-datatypes ((tuple2!2558 0))(
  ( (tuple2!2559 (_1!1495 Token!642) (_2!1495 List!2606)) )
))
(declare-datatypes ((Option!235 0))(
  ( (None!234) (Some!234 (v!13609 tuple2!2558)) )
))
(declare-fun lt!43836 () Option!235)

(declare-fun maxPrefix!105 (LexerInterface!335 List!2607 List!2606) Option!235)

(assert (=> b!150332 (= lt!43836 (maxPrefix!105 thiss!17480 rules!1920 (++!556 (list!907 (charsOf!104 (h!7995 tokens!465))) lt!43838)))))

(assert (=> b!150332 (= c!30468 (and ((_ is Some!234) lt!43836) (= (_1!1495 (v!13609 lt!43836)) (h!7995 tokens!465))))))

(declare-fun b!150333 () Bool)

(assert (=> b!150333 (= c!30470 (and ((_ is Some!234) lt!43836) (not (= (_1!1495 (v!13609 lt!43836)) (h!7995 tokens!465)))))))

(assert (=> b!150333 (= e!89666 e!89665)))

(declare-fun bm!6040 () Bool)

(assert (=> bm!6040 (= call!6042 call!6045)))

(declare-fun bm!6041 () Bool)

(assert (=> bm!6041 (= call!6045 (charsOf!104 (h!7995 tokens!465)))))

(declare-fun b!150334 () Bool)

(assert (=> b!150334 (= e!89667 Nil!2596)))

(assert (= (and d!36026 c!30467) b!150332))

(assert (= (and d!36026 (not c!30467)) b!150334))

(assert (= (and b!150332 c!30468) b!150329))

(assert (= (and b!150332 (not c!30468)) b!150333))

(assert (= (and b!150333 c!30470) b!150326))

(assert (= (and b!150333 (not c!30470)) b!150331))

(assert (= (or b!150326 b!150331) bm!6040))

(assert (= (or b!150326 b!150331) bm!6039))

(assert (= (and bm!6039 c!30469) b!150327))

(assert (= (and bm!6039 (not c!30469)) b!150330))

(assert (= (or b!150329 bm!6040) bm!6041))

(assert (= (or b!150329 bm!6039) bm!6038))

(assert (= (or b!150329 b!150326) bm!6037))

(assert (= (and bm!6037 c!30471) b!150328))

(assert (= (and bm!6037 (not c!30471)) b!150325))

(assert (=> b!150327 m!133903))

(declare-fun m!134295 () Bool)

(assert (=> bm!6037 m!134295))

(declare-fun m!134297 () Bool)

(assert (=> b!150332 m!134297))

(declare-fun m!134299 () Bool)

(assert (=> b!150332 m!134299))

(assert (=> b!150332 m!134299))

(declare-fun m!134301 () Bool)

(assert (=> b!150332 m!134301))

(declare-fun m!134303 () Bool)

(assert (=> b!150332 m!134303))

(declare-fun m!134305 () Bool)

(assert (=> b!150332 m!134305))

(assert (=> b!150332 m!134297))

(assert (=> b!150332 m!134301))

(declare-fun m!134307 () Bool)

(assert (=> b!150332 m!134307))

(declare-fun m!134309 () Bool)

(assert (=> b!150326 m!134309))

(assert (=> bm!6041 m!134297))

(declare-fun m!134311 () Bool)

(assert (=> bm!6038 m!134311))

(declare-fun m!134313 () Bool)

(assert (=> b!150325 m!134313))

(declare-fun m!134315 () Bool)

(assert (=> b!150331 m!134315))

(assert (=> b!150331 m!134315))

(declare-fun m!134317 () Bool)

(assert (=> b!150331 m!134317))

(assert (=> b!150331 m!134315))

(declare-fun m!134319 () Bool)

(assert (=> b!150331 m!134319))

(declare-fun m!134321 () Bool)

(assert (=> b!150331 m!134321))

(assert (=> b!149978 d!36026))

(declare-fun b!150342 () Bool)

(declare-fun e!89675 () Bool)

(declare-fun tp_is_empty!1607 () Bool)

(declare-fun tp!78392 () Bool)

(assert (=> b!150342 (= e!89675 (and tp_is_empty!1607 tp!78392))))

(assert (=> b!149971 (= tp!78314 e!89675)))

(assert (= (and b!149971 ((_ is Cons!2596) (originalCharacters!492 (h!7995 tokens!465)))) b!150342))

(declare-fun b!150356 () Bool)

(declare-fun b_free!5421 () Bool)

(declare-fun b_next!5421 () Bool)

(assert (=> b!150356 (= b_free!5421 (not b_next!5421))))

(declare-fun tp!78404 () Bool)

(declare-fun b_and!8569 () Bool)

(assert (=> b!150356 (= tp!78404 b_and!8569)))

(declare-fun b_free!5423 () Bool)

(declare-fun b_next!5423 () Bool)

(assert (=> b!150356 (= b_free!5423 (not b_next!5423))))

(declare-fun t!24739 () Bool)

(declare-fun tb!5037 () Bool)

(assert (=> (and b!150356 (= (toChars!943 (transformation!449 (rule!956 (h!7995 (t!24678 tokens!465))))) (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465))))) t!24739) tb!5037))

(declare-fun result!7468 () Bool)

(assert (= result!7468 result!7420))

(assert (=> b!149998 t!24739))

(declare-fun tb!5039 () Bool)

(declare-fun t!24741 () Bool)

(assert (=> (and b!150356 (= (toChars!943 (transformation!449 (rule!956 (h!7995 (t!24678 tokens!465))))) (toChars!943 (transformation!449 (rule!956 separatorToken!170)))) t!24741) tb!5039))

(declare-fun result!7470 () Bool)

(assert (= result!7470 result!7442))

(assert (=> d!35974 t!24741))

(assert (=> b!150176 t!24741))

(declare-fun b_and!8571 () Bool)

(declare-fun tp!78403 () Bool)

(assert (=> b!150356 (= tp!78403 (and (=> t!24739 result!7468) (=> t!24741 result!7470) b_and!8571))))

(declare-fun e!89688 () Bool)

(assert (=> b!150356 (= e!89688 (and tp!78404 tp!78403))))

(declare-fun e!89691 () Bool)

(assert (=> b!149970 (= tp!78325 e!89691)))

(declare-fun tp!78407 () Bool)

(declare-fun e!89692 () Bool)

(declare-fun b!150355 () Bool)

(assert (=> b!150355 (= e!89692 (and tp!78407 (inv!3387 (tag!627 (rule!956 (h!7995 (t!24678 tokens!465))))) (inv!3391 (transformation!449 (rule!956 (h!7995 (t!24678 tokens!465))))) e!89688))))

(declare-fun b!150353 () Bool)

(declare-fun e!89690 () Bool)

(declare-fun tp!78405 () Bool)

(assert (=> b!150353 (= e!89691 (and (inv!3390 (h!7995 (t!24678 tokens!465))) e!89690 tp!78405))))

(declare-fun b!150354 () Bool)

(declare-fun tp!78406 () Bool)

(assert (=> b!150354 (= e!89690 (and (inv!21 (value!17112 (h!7995 (t!24678 tokens!465)))) e!89692 tp!78406))))

(assert (= b!150355 b!150356))

(assert (= b!150354 b!150355))

(assert (= b!150353 b!150354))

(assert (= (and b!149970 ((_ is Cons!2598) (t!24678 tokens!465))) b!150353))

(declare-fun m!134323 () Bool)

(assert (=> b!150355 m!134323))

(declare-fun m!134325 () Bool)

(assert (=> b!150355 m!134325))

(declare-fun m!134327 () Bool)

(assert (=> b!150353 m!134327))

(declare-fun m!134329 () Bool)

(assert (=> b!150354 m!134329))

(declare-fun b!150367 () Bool)

(declare-fun e!89696 () Bool)

(assert (=> b!150367 (= e!89696 tp_is_empty!1607)))

(assert (=> b!149974 (= tp!78317 e!89696)))

(declare-fun b!150369 () Bool)

(declare-fun tp!78422 () Bool)

(assert (=> b!150369 (= e!89696 tp!78422)))

(declare-fun b!150368 () Bool)

(declare-fun tp!78419 () Bool)

(declare-fun tp!78420 () Bool)

(assert (=> b!150368 (= e!89696 (and tp!78419 tp!78420))))

(declare-fun b!150370 () Bool)

(declare-fun tp!78418 () Bool)

(declare-fun tp!78421 () Bool)

(assert (=> b!150370 (= e!89696 (and tp!78418 tp!78421))))

(assert (= (and b!149974 ((_ is ElementMatch!673) (regex!449 (rule!956 (h!7995 tokens!465))))) b!150367))

(assert (= (and b!149974 ((_ is Concat!1145) (regex!449 (rule!956 (h!7995 tokens!465))))) b!150368))

(assert (= (and b!149974 ((_ is Star!673) (regex!449 (rule!956 (h!7995 tokens!465))))) b!150369))

(assert (= (and b!149974 ((_ is Union!673) (regex!449 (rule!956 (h!7995 tokens!465))))) b!150370))

(declare-fun b!150371 () Bool)

(declare-fun e!89697 () Bool)

(assert (=> b!150371 (= e!89697 tp_is_empty!1607)))

(assert (=> b!149976 (= tp!78316 e!89697)))

(declare-fun b!150373 () Bool)

(declare-fun tp!78427 () Bool)

(assert (=> b!150373 (= e!89697 tp!78427)))

(declare-fun b!150372 () Bool)

(declare-fun tp!78424 () Bool)

(declare-fun tp!78425 () Bool)

(assert (=> b!150372 (= e!89697 (and tp!78424 tp!78425))))

(declare-fun b!150374 () Bool)

(declare-fun tp!78423 () Bool)

(declare-fun tp!78426 () Bool)

(assert (=> b!150374 (= e!89697 (and tp!78423 tp!78426))))

(assert (= (and b!149976 ((_ is ElementMatch!673) (regex!449 (h!7994 rules!1920)))) b!150371))

(assert (= (and b!149976 ((_ is Concat!1145) (regex!449 (h!7994 rules!1920)))) b!150372))

(assert (= (and b!149976 ((_ is Star!673) (regex!449 (h!7994 rules!1920)))) b!150373))

(assert (= (and b!149976 ((_ is Union!673) (regex!449 (h!7994 rules!1920)))) b!150374))

(declare-fun b!150375 () Bool)

(declare-fun e!89698 () Bool)

(declare-fun tp!78428 () Bool)

(assert (=> b!150375 (= e!89698 (and tp_is_empty!1607 tp!78428))))

(assert (=> b!149975 (= tp!78320 e!89698)))

(assert (= (and b!149975 ((_ is Cons!2596) (originalCharacters!492 separatorToken!170))) b!150375))

(declare-fun b!150386 () Bool)

(declare-fun b_free!5425 () Bool)

(declare-fun b_next!5425 () Bool)

(assert (=> b!150386 (= b_free!5425 (not b_next!5425))))

(declare-fun tp!78438 () Bool)

(declare-fun b_and!8573 () Bool)

(assert (=> b!150386 (= tp!78438 b_and!8573)))

(declare-fun b_free!5427 () Bool)

(declare-fun b_next!5427 () Bool)

(assert (=> b!150386 (= b_free!5427 (not b_next!5427))))

(declare-fun t!24743 () Bool)

(declare-fun tb!5041 () Bool)

(assert (=> (and b!150386 (= (toChars!943 (transformation!449 (h!7994 (t!24677 rules!1920)))) (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465))))) t!24743) tb!5041))

(declare-fun result!7476 () Bool)

(assert (= result!7476 result!7420))

(assert (=> b!149998 t!24743))

(declare-fun tb!5043 () Bool)

(declare-fun t!24745 () Bool)

(assert (=> (and b!150386 (= (toChars!943 (transformation!449 (h!7994 (t!24677 rules!1920)))) (toChars!943 (transformation!449 (rule!956 separatorToken!170)))) t!24745) tb!5043))

(declare-fun result!7478 () Bool)

(assert (= result!7478 result!7442))

(assert (=> d!35974 t!24745))

(assert (=> b!150176 t!24745))

(declare-fun b_and!8575 () Bool)

(declare-fun tp!78439 () Bool)

(assert (=> b!150386 (= tp!78439 (and (=> t!24743 result!7476) (=> t!24745 result!7478) b_and!8575))))

(declare-fun e!89708 () Bool)

(assert (=> b!150386 (= e!89708 (and tp!78438 tp!78439))))

(declare-fun e!89707 () Bool)

(declare-fun b!150385 () Bool)

(declare-fun tp!78440 () Bool)

(assert (=> b!150385 (= e!89707 (and tp!78440 (inv!3387 (tag!627 (h!7994 (t!24677 rules!1920)))) (inv!3391 (transformation!449 (h!7994 (t!24677 rules!1920)))) e!89708))))

(declare-fun b!150384 () Bool)

(declare-fun e!89709 () Bool)

(declare-fun tp!78437 () Bool)

(assert (=> b!150384 (= e!89709 (and e!89707 tp!78437))))

(assert (=> b!149957 (= tp!78318 e!89709)))

(assert (= b!150385 b!150386))

(assert (= b!150384 b!150385))

(assert (= (and b!149957 ((_ is Cons!2597) (t!24677 rules!1920))) b!150384))

(declare-fun m!134331 () Bool)

(assert (=> b!150385 m!134331))

(declare-fun m!134333 () Bool)

(assert (=> b!150385 m!134333))

(declare-fun b!150387 () Bool)

(declare-fun e!89711 () Bool)

(assert (=> b!150387 (= e!89711 tp_is_empty!1607)))

(assert (=> b!149977 (= tp!78322 e!89711)))

(declare-fun b!150389 () Bool)

(declare-fun tp!78445 () Bool)

(assert (=> b!150389 (= e!89711 tp!78445)))

(declare-fun b!150388 () Bool)

(declare-fun tp!78442 () Bool)

(declare-fun tp!78443 () Bool)

(assert (=> b!150388 (= e!89711 (and tp!78442 tp!78443))))

(declare-fun b!150390 () Bool)

(declare-fun tp!78441 () Bool)

(declare-fun tp!78444 () Bool)

(assert (=> b!150390 (= e!89711 (and tp!78441 tp!78444))))

(assert (= (and b!149977 ((_ is ElementMatch!673) (regex!449 (rule!956 separatorToken!170)))) b!150387))

(assert (= (and b!149977 ((_ is Concat!1145) (regex!449 (rule!956 separatorToken!170)))) b!150388))

(assert (= (and b!149977 ((_ is Star!673) (regex!449 (rule!956 separatorToken!170)))) b!150389))

(assert (= (and b!149977 ((_ is Union!673) (regex!449 (rule!956 separatorToken!170)))) b!150390))

(declare-fun b_lambda!2709 () Bool)

(assert (= b_lambda!2693 (or b!149968 b_lambda!2709)))

(declare-fun bs!13729 () Bool)

(declare-fun d!36032 () Bool)

(assert (= bs!13729 (and d!36032 b!149968)))

(assert (=> bs!13729 (= (dynLambda!905 lambda!3810 (h!7995 tokens!465)) (not (isSeparator!449 (rule!956 (h!7995 tokens!465)))))))

(assert (=> b!150174 d!36032))

(declare-fun b_lambda!2711 () Bool)

(assert (= b_lambda!2697 (or b!149968 b_lambda!2711)))

(declare-fun bs!13730 () Bool)

(declare-fun d!36034 () Bool)

(assert (= bs!13730 (and d!36034 b!149968)))

(assert (=> bs!13730 (= (dynLambda!905 lambda!3810 (h!7995 (t!24678 tokens!465))) (not (isSeparator!449 (rule!956 (h!7995 (t!24678 tokens!465))))))))

(assert (=> b!150182 d!36034))

(declare-fun b_lambda!2713 () Bool)

(assert (= b_lambda!2679 (or (and b!149959 b_free!5407 (= (toChars!943 (transformation!449 (h!7994 rules!1920))) (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465)))))) (and b!150356 b_free!5423 (= (toChars!943 (transformation!449 (rule!956 (h!7995 (t!24678 tokens!465))))) (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465)))))) (and b!149962 b_free!5403) (and b!149960 b_free!5411 (= (toChars!943 (transformation!449 (rule!956 separatorToken!170))) (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465)))))) (and b!150386 b_free!5427 (= (toChars!943 (transformation!449 (h!7994 (t!24677 rules!1920)))) (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465)))))) b_lambda!2713)))

(declare-fun b_lambda!2715 () Bool)

(assert (= b_lambda!2691 (or (and b!149960 b_free!5411) (and b!149962 b_free!5403 (= (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465)))) (toChars!943 (transformation!449 (rule!956 separatorToken!170))))) (and b!149959 b_free!5407 (= (toChars!943 (transformation!449 (h!7994 rules!1920))) (toChars!943 (transformation!449 (rule!956 separatorToken!170))))) (and b!150386 b_free!5427 (= (toChars!943 (transformation!449 (h!7994 (t!24677 rules!1920)))) (toChars!943 (transformation!449 (rule!956 separatorToken!170))))) (and b!150356 b_free!5423 (= (toChars!943 (transformation!449 (rule!956 (h!7995 (t!24678 tokens!465))))) (toChars!943 (transformation!449 (rule!956 separatorToken!170))))) b_lambda!2715)))

(declare-fun b_lambda!2717 () Bool)

(assert (= b_lambda!2695 (or (and b!149960 b_free!5411) (and b!149962 b_free!5403 (= (toChars!943 (transformation!449 (rule!956 (h!7995 tokens!465)))) (toChars!943 (transformation!449 (rule!956 separatorToken!170))))) (and b!149959 b_free!5407 (= (toChars!943 (transformation!449 (h!7994 rules!1920))) (toChars!943 (transformation!449 (rule!956 separatorToken!170))))) (and b!150386 b_free!5427 (= (toChars!943 (transformation!449 (h!7994 (t!24677 rules!1920)))) (toChars!943 (transformation!449 (rule!956 separatorToken!170))))) (and b!150356 b_free!5423 (= (toChars!943 (transformation!449 (rule!956 (h!7995 (t!24678 tokens!465))))) (toChars!943 (transformation!449 (rule!956 separatorToken!170))))) b_lambda!2717)))

(check-sat (not b!150166) (not b_next!5401) (not b!150370) (not b!149989) (not d!36002) (not b!150256) (not b!150161) (not b!150389) b_and!8575 (not bm!6041) (not d!35934) b_and!8571 b_and!8569 (not b!150373) (not d!35972) (not b!149993) (not b_lambda!2709) (not b!150007) (not b!150257) (not b!150335) (not b!150385) (not bm!6026) b_and!8517 (not b!150325) (not b!150331) (not b!150368) (not b_lambda!2715) (not b!149999) (not b!150388) (not b_next!5403) (not b!150326) (not b!150115) (not tb!5023) (not b_next!5427) (not d!35940) (not d!35942) (not b!150177) (not d!35938) b_and!8557 (not b!150332) (not b!150169) (not d!35982) (not b!150384) (not bm!6022) (not b!150254) (not b!150354) (not b!150100) (not d!35992) (not b!150372) (not b!150176) (not b!150101) (not b!150327) (not d!35974) tp_is_empty!1607 (not b!150165) (not b_next!5407) (not b!150353) (not b!150019) b_and!8513 (not tb!5005) (not b!150252) (not b!149990) (not b!150355) (not b!150375) (not b!150110) (not b_lambda!2713) (not bm!6024) (not b!150390) (not bm!6038) (not d!35998) (not d!35978) (not b!150251) (not b!150020) (not b!150369) (not b_lambda!2717) (not b!150175) (not b_next!5411) (not b!150018) (not b_next!5425) (not b_next!5423) (not b!150121) (not d!35930) (not b!150162) (not bm!6037) b_and!8521 (not d!35932) (not b_next!5421) (not b!149998) b_and!8573 (not b!150183) (not b!150116) (not bm!6023) (not b_next!5405) (not b!150374) b_and!8555 (not d!35986) (not d!36004) (not b_next!5409) (not b!150181) (not b!150004) (not b!150180) (not b!150263) (not b!150342) (not b_lambda!2711) (not b!150122) b_and!8559 (not d!35994))
(check-sat b_and!8575 b_and!8517 (not b_next!5403) (not b_next!5427) b_and!8557 (not b_next!5407) b_and!8513 (not b_next!5401) b_and!8559 b_and!8571 b_and!8569 (not b_next!5411) (not b_next!5425) (not b_next!5423) b_and!8521 (not b_next!5421) b_and!8573 (not b_next!5405) b_and!8555 (not b_next!5409))
