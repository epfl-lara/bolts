; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511752 () Bool)

(assert start!511752)

(declare-fun b!4888965 () Bool)

(declare-fun b_free!131467 () Bool)

(declare-fun b_next!132257 () Bool)

(assert (=> b!4888965 (= b_free!131467 (not b_next!132257))))

(declare-fun tp!1376135 () Bool)

(declare-fun b_and!344307 () Bool)

(assert (=> b!4888965 (= tp!1376135 b_and!344307)))

(declare-fun b_free!131469 () Bool)

(declare-fun b_next!132259 () Bool)

(assert (=> b!4888965 (= b_free!131469 (not b_next!132259))))

(declare-fun tp!1376130 () Bool)

(declare-fun b_and!344309 () Bool)

(assert (=> b!4888965 (= tp!1376130 b_and!344309)))

(declare-fun b!4888960 () Bool)

(declare-fun b_free!131471 () Bool)

(declare-fun b_next!132261 () Bool)

(assert (=> b!4888960 (= b_free!131471 (not b_next!132261))))

(declare-fun tp!1376131 () Bool)

(declare-fun b_and!344311 () Bool)

(assert (=> b!4888960 (= tp!1376131 b_and!344311)))

(declare-fun b_free!131473 () Bool)

(declare-fun b_next!132263 () Bool)

(assert (=> b!4888960 (= b_free!131473 (not b_next!132263))))

(declare-fun tp!1376128 () Bool)

(declare-fun b_and!344313 () Bool)

(assert (=> b!4888960 (= tp!1376128 b_and!344313)))

(declare-fun b!4888955 () Bool)

(declare-fun res!2087943 () Bool)

(declare-fun e!3056471 () Bool)

(assert (=> b!4888955 (=> res!2087943 e!3056471)))

(declare-fun lt!2003737 () Bool)

(assert (=> b!4888955 (= res!2087943 lt!2003737)))

(declare-fun e!3056465 () Bool)

(declare-fun e!3056478 () Bool)

(declare-datatypes ((C!26680 0))(
  ( (C!26681 (val!22674 Int)) )
))
(declare-datatypes ((List!56503 0))(
  ( (Nil!56379) (Cons!56379 (h!62827 C!26680) (t!365161 List!56503)) )
))
(declare-datatypes ((IArray!29529 0))(
  ( (IArray!29530 (innerList!14822 List!56503)) )
))
(declare-datatypes ((Conc!14734 0))(
  ( (Node!14734 (left!40947 Conc!14734) (right!41277 Conc!14734) (csize!29698 Int) (cheight!14945 Int)) (Leaf!24534 (xs!18050 IArray!29529) (csize!29699 Int)) (Empty!14734) )
))
(declare-datatypes ((BalanceConc!28898 0))(
  ( (BalanceConc!28899 (c!830951 Conc!14734)) )
))
(declare-datatypes ((List!56504 0))(
  ( (Nil!56380) (Cons!56380 (h!62828 (_ BitVec 16)) (t!365162 List!56504)) )
))
(declare-datatypes ((TokenValue!8476 0))(
  ( (FloatLiteralValue!16952 (text!59777 List!56504)) (TokenValueExt!8475 (__x!34245 Int)) (Broken!42380 (value!261857 List!56504)) (Object!8599) (End!8476) (Def!8476) (Underscore!8476) (Match!8476) (Else!8476) (Error!8476) (Case!8476) (If!8476) (Extends!8476) (Abstract!8476) (Class!8476) (Val!8476) (DelimiterValue!16952 (del!8536 List!56504)) (KeywordValue!8482 (value!261858 List!56504)) (CommentValue!16952 (value!261859 List!56504)) (WhitespaceValue!16952 (value!261860 List!56504)) (IndentationValue!8476 (value!261861 List!56504)) (String!63821) (Int32!8476) (Broken!42381 (value!261862 List!56504)) (Boolean!8477) (Unit!146369) (OperatorValue!8479 (op!8536 List!56504)) (IdentifierValue!16952 (value!261863 List!56504)) (IdentifierValue!16953 (value!261864 List!56504)) (WhitespaceValue!16953 (value!261865 List!56504)) (True!16952) (False!16952) (Broken!42382 (value!261866 List!56504)) (Broken!42383 (value!261867 List!56504)) (True!16953) (RightBrace!8476) (RightBracket!8476) (Colon!8476) (Null!8476) (Comma!8476) (LeftBracket!8476) (False!16953) (LeftBrace!8476) (ImaginaryLiteralValue!8476 (text!59778 List!56504)) (StringLiteralValue!25428 (value!261868 List!56504)) (EOFValue!8476 (value!261869 List!56504)) (IdentValue!8476 (value!261870 List!56504)) (DelimiterValue!16953 (value!261871 List!56504)) (DedentValue!8476 (value!261872 List!56504)) (NewLineValue!8476 (value!261873 List!56504)) (IntegerValue!25428 (value!261874 (_ BitVec 32)) (text!59779 List!56504)) (IntegerValue!25429 (value!261875 Int) (text!59780 List!56504)) (Times!8476) (Or!8476) (Equal!8476) (Minus!8476) (Broken!42384 (value!261876 List!56504)) (And!8476) (Div!8476) (LessEqual!8476) (Mod!8476) (Concat!21717) (Not!8476) (Plus!8476) (SpaceValue!8476 (value!261877 List!56504)) (IntegerValue!25430 (value!261878 Int) (text!59781 List!56504)) (StringLiteralValue!25429 (text!59782 List!56504)) (FloatLiteralValue!16953 (text!59783 List!56504)) (BytesLiteralValue!8476 (value!261879 List!56504)) (CommentValue!16953 (value!261880 List!56504)) (StringLiteralValue!25430 (value!261881 List!56504)) (ErrorTokenValue!8476 (msg!8537 List!56504)) )
))
(declare-datatypes ((Regex!13241 0))(
  ( (ElementMatch!13241 (c!830952 C!26680)) (Concat!21718 (regOne!26994 Regex!13241) (regTwo!26994 Regex!13241)) (EmptyExpr!13241) (Star!13241 (reg!13570 Regex!13241)) (EmptyLang!13241) (Union!13241 (regOne!26995 Regex!13241) (regTwo!26995 Regex!13241)) )
))
(declare-datatypes ((String!63822 0))(
  ( (String!63823 (value!261882 String)) )
))
(declare-datatypes ((TokenValueInjection!16260 0))(
  ( (TokenValueInjection!16261 (toValue!11053 Int) (toChars!10912 Int)) )
))
(declare-datatypes ((Rule!16132 0))(
  ( (Rule!16133 (regex!8166 Regex!13241) (tag!9030 String!63822) (isSeparator!8166 Bool) (transformation!8166 TokenValueInjection!16260)) )
))
(declare-datatypes ((Token!14900 0))(
  ( (Token!14901 (value!261883 TokenValue!8476) (rule!11344 Rule!16132) (size!37114 Int) (originalCharacters!8481 List!56503)) )
))
(declare-datatypes ((tuple2!60404 0))(
  ( (tuple2!60405 (_1!33505 Token!14900) (_2!33505 BalanceConc!28898)) )
))
(declare-datatypes ((Option!14013 0))(
  ( (None!14012) (Some!14012 (v!49962 tuple2!60404)) )
))
(declare-fun err!4529 () Option!14013)

(declare-fun b!4888956 () Bool)

(declare-fun tp!1376134 () Bool)

(declare-fun inv!21 (TokenValue!8476) Bool)

(assert (=> b!4888956 (= e!3056465 (and (inv!21 (value!261883 (_1!33505 (v!49962 err!4529)))) e!3056478 tp!1376134))))

(declare-fun b!4888957 () Bool)

(declare-fun e!3056479 () Bool)

(declare-fun tp!1376132 () Bool)

(declare-fun inv!72622 (String!63822) Bool)

(declare-fun inv!72627 (TokenValueInjection!16260) Bool)

(assert (=> b!4888957 (= e!3056478 (and tp!1376132 (inv!72622 (tag!9030 (rule!11344 (_1!33505 (v!49962 err!4529))))) (inv!72627 (transformation!8166 (rule!11344 (_1!33505 (v!49962 err!4529))))) e!3056479))))

(declare-fun b!4888958 () Bool)

(declare-fun e!3056468 () Bool)

(declare-fun e!3056464 () Bool)

(declare-fun tp!1376137 () Bool)

(assert (=> b!4888958 (= e!3056468 (and e!3056464 tp!1376137))))

(declare-fun b!4888959 () Bool)

(declare-fun e!3056482 () Bool)

(assert (=> b!4888959 (= e!3056482 e!3056471)))

(declare-fun res!2087938 () Bool)

(assert (=> b!4888959 (=> res!2087938 e!3056471)))

(declare-fun e!3056474 () Bool)

(assert (=> b!4888959 (= res!2087938 e!3056474)))

(declare-fun res!2087937 () Bool)

(assert (=> b!4888959 (=> (not res!2087937) (not e!3056474))))

(assert (=> b!4888959 (= res!2087937 (not lt!2003737))))

(declare-fun lt!2003731 () Bool)

(assert (=> b!4888959 (= lt!2003737 (not lt!2003731))))

(declare-fun res!2087939 () Bool)

(declare-fun e!3056470 () Bool)

(assert (=> start!511752 (=> (not res!2087939) (not e!3056470))))

(declare-datatypes ((LexerInterface!7758 0))(
  ( (LexerInterfaceExt!7755 (__x!34246 Int)) (Lexer!7756) )
))
(declare-fun thiss!14805 () LexerInterface!7758)

(get-info :version)

(assert (=> start!511752 (= res!2087939 ((_ is Lexer!7756) thiss!14805))))

(assert (=> start!511752 e!3056470))

(assert (=> start!511752 true))

(assert (=> start!511752 e!3056468))

(declare-fun input!1236 () BalanceConc!28898)

(declare-fun e!3056467 () Bool)

(declare-fun inv!72628 (BalanceConc!28898) Bool)

(assert (=> start!511752 (and (inv!72628 input!1236) e!3056467)))

(assert (=> b!4888960 (= e!3056479 (and tp!1376131 tp!1376128))))

(declare-fun b!4888961 () Bool)

(declare-fun e!3056480 () Bool)

(declare-fun tp!1376136 () Bool)

(declare-fun inv!72629 (Conc!14734) Bool)

(assert (=> b!4888961 (= e!3056480 (and (inv!72629 (c!830951 (_2!33505 (v!49962 err!4529)))) tp!1376136))))

(declare-fun b!4888962 () Bool)

(declare-fun e!3056473 () Bool)

(declare-datatypes ((tuple2!60406 0))(
  ( (tuple2!60407 (_1!33506 Token!14900) (_2!33506 List!56503)) )
))
(declare-datatypes ((Option!14014 0))(
  ( (None!14013) (Some!14013 (v!49963 tuple2!60406)) )
))
(declare-fun lt!2003730 () Option!14014)

(declare-fun isDefined!11026 (Option!14014) Bool)

(assert (=> b!4888962 (= e!3056473 (isDefined!11026 lt!2003730))))

(declare-fun b!4888963 () Bool)

(declare-fun e!3056475 () Bool)

(assert (=> b!4888963 (= e!3056470 (not e!3056475))))

(declare-fun res!2087941 () Bool)

(assert (=> b!4888963 (=> res!2087941 e!3056475)))

(declare-datatypes ((List!56505 0))(
  ( (Nil!56381) (Cons!56381 (h!62829 Rule!16132) (t!365163 List!56505)) )
))
(declare-fun rulesArg!165 () List!56505)

(assert (=> b!4888963 (= res!2087941 (or (and ((_ is Cons!56381) rulesArg!165) ((_ is Nil!56381) (t!365163 rulesArg!165))) ((_ is Cons!56381) rulesArg!165)))))

(declare-fun lt!2003733 () List!56503)

(declare-fun isPrefix!4888 (List!56503 List!56503) Bool)

(assert (=> b!4888963 (isPrefix!4888 lt!2003733 lt!2003733)))

(declare-datatypes ((Unit!146370 0))(
  ( (Unit!146371) )
))
(declare-fun lt!2003736 () Unit!146370)

(declare-fun lemmaIsPrefixRefl!3285 (List!56503 List!56503) Unit!146370)

(assert (=> b!4888963 (= lt!2003736 (lemmaIsPrefixRefl!3285 lt!2003733 lt!2003733))))

(declare-fun list!17708 (BalanceConc!28898) List!56503)

(assert (=> b!4888963 (= lt!2003733 (list!17708 input!1236))))

(declare-fun b!4888964 () Bool)

(declare-fun res!2087944 () Bool)

(assert (=> b!4888964 (=> (not res!2087944) (not e!3056470))))

(declare-fun rulesValidInductive!3145 (LexerInterface!7758 List!56505) Bool)

(assert (=> b!4888964 (= res!2087944 (rulesValidInductive!3145 thiss!14805 rulesArg!165))))

(declare-fun e!3056466 () Bool)

(assert (=> b!4888965 (= e!3056466 (and tp!1376135 tp!1376130))))

(declare-fun b!4888966 () Bool)

(assert (=> b!4888966 (= e!3056475 e!3056482)))

(declare-fun res!2087940 () Bool)

(assert (=> b!4888966 (=> res!2087940 e!3056482)))

(declare-fun lt!2003734 () Option!14014)

(assert (=> b!4888966 (= res!2087940 (not (= lt!2003731 (isDefined!11026 lt!2003734))))))

(declare-fun lt!2003735 () Option!14013)

(declare-fun isDefined!11027 (Option!14013) Bool)

(assert (=> b!4888966 (= lt!2003731 (isDefined!11027 lt!2003735))))

(declare-fun maxPrefixZipper!669 (LexerInterface!7758 List!56505 List!56503) Option!14014)

(assert (=> b!4888966 (= lt!2003734 (maxPrefixZipper!669 thiss!14805 rulesArg!165 lt!2003733))))

(assert (=> b!4888966 (= lt!2003735 err!4529)))

(assert (=> b!4888966 true))

(declare-fun e!3056469 () Bool)

(assert (=> b!4888966 e!3056469))

(declare-fun tp!1376129 () Bool)

(declare-fun b!4888967 () Bool)

(assert (=> b!4888967 (= e!3056464 (and tp!1376129 (inv!72622 (tag!9030 (h!62829 rulesArg!165))) (inv!72627 (transformation!8166 (h!62829 rulesArg!165))) e!3056466))))

(declare-fun b!4888968 () Bool)

(declare-fun res!2087935 () Bool)

(assert (=> b!4888968 (=> (not res!2087935) (not e!3056470))))

(declare-fun isEmpty!30226 (List!56505) Bool)

(assert (=> b!4888968 (= res!2087935 (not (isEmpty!30226 rulesArg!165)))))

(declare-fun b!4888969 () Bool)

(declare-fun e!3056481 () Bool)

(assert (=> b!4888969 (= e!3056474 e!3056481)))

(declare-fun res!2087936 () Bool)

(assert (=> b!4888969 (=> res!2087936 e!3056481)))

(declare-fun lt!2003729 () tuple2!60404)

(declare-fun lt!2003732 () tuple2!60406)

(assert (=> b!4888969 (= res!2087936 (not (= (_1!33505 lt!2003729) (_1!33506 lt!2003732))))))

(declare-fun get!19462 (Option!14014) tuple2!60406)

(assert (=> b!4888969 (= lt!2003732 (get!19462 lt!2003734))))

(declare-fun get!19463 (Option!14013) tuple2!60404)

(assert (=> b!4888969 (= lt!2003729 (get!19463 lt!2003735))))

(declare-fun b!4888970 () Bool)

(declare-fun tp!1376133 () Bool)

(assert (=> b!4888970 (= e!3056467 (and (inv!72629 (c!830951 input!1236)) tp!1376133))))

(declare-fun b!4888971 () Bool)

(declare-fun inv!72630 (Token!14900) Bool)

(assert (=> b!4888971 (= e!3056469 (and (inv!72630 (_1!33505 (v!49962 err!4529))) e!3056465 (inv!72628 (_2!33505 (v!49962 err!4529))) e!3056480))))

(declare-fun b!4888972 () Bool)

(assert (=> b!4888972 (= e!3056481 (not (= (list!17708 (_2!33505 lt!2003729)) (_2!33506 lt!2003732))))))

(declare-fun b!4888973 () Bool)

(assert (=> b!4888973 (= e!3056471 e!3056473)))

(declare-fun res!2087942 () Bool)

(assert (=> b!4888973 (=> res!2087942 e!3056473)))

(assert (=> b!4888973 (= res!2087942 (not (= (_1!33505 (get!19463 lt!2003735)) (_1!33506 (get!19462 lt!2003730)))))))

(declare-fun maxPrefix!4599 (LexerInterface!7758 List!56505 List!56503) Option!14014)

(assert (=> b!4888973 (= lt!2003730 (maxPrefix!4599 thiss!14805 rulesArg!165 lt!2003733))))

(assert (= (and start!511752 res!2087939) b!4888964))

(assert (= (and b!4888964 res!2087944) b!4888968))

(assert (= (and b!4888968 res!2087935) b!4888963))

(assert (= (and b!4888963 (not res!2087941)) b!4888966))

(assert (= b!4888957 b!4888960))

(assert (= b!4888956 b!4888957))

(assert (= b!4888971 b!4888956))

(assert (= b!4888971 b!4888961))

(assert (= (and b!4888966 ((_ is Some!14012) err!4529)) b!4888971))

(assert (= (and b!4888966 (not res!2087940)) b!4888959))

(assert (= (and b!4888959 res!2087937) b!4888969))

(assert (= (and b!4888969 (not res!2087936)) b!4888972))

(assert (= (and b!4888959 (not res!2087938)) b!4888955))

(assert (= (and b!4888955 (not res!2087943)) b!4888973))

(assert (= (and b!4888973 (not res!2087942)) b!4888962))

(assert (= b!4888967 b!4888965))

(assert (= b!4888958 b!4888967))

(assert (= (and start!511752 ((_ is Cons!56381) rulesArg!165)) b!4888958))

(assert (= start!511752 b!4888970))

(declare-fun m!5892472 () Bool)

(assert (=> b!4888967 m!5892472))

(declare-fun m!5892474 () Bool)

(assert (=> b!4888967 m!5892474))

(declare-fun m!5892476 () Bool)

(assert (=> b!4888972 m!5892476))

(declare-fun m!5892478 () Bool)

(assert (=> start!511752 m!5892478))

(declare-fun m!5892480 () Bool)

(assert (=> b!4888966 m!5892480))

(declare-fun m!5892482 () Bool)

(assert (=> b!4888966 m!5892482))

(declare-fun m!5892484 () Bool)

(assert (=> b!4888966 m!5892484))

(declare-fun m!5892486 () Bool)

(assert (=> b!4888957 m!5892486))

(declare-fun m!5892488 () Bool)

(assert (=> b!4888957 m!5892488))

(declare-fun m!5892490 () Bool)

(assert (=> b!4888971 m!5892490))

(declare-fun m!5892492 () Bool)

(assert (=> b!4888971 m!5892492))

(declare-fun m!5892494 () Bool)

(assert (=> b!4888973 m!5892494))

(declare-fun m!5892496 () Bool)

(assert (=> b!4888973 m!5892496))

(declare-fun m!5892498 () Bool)

(assert (=> b!4888973 m!5892498))

(declare-fun m!5892500 () Bool)

(assert (=> b!4888968 m!5892500))

(declare-fun m!5892502 () Bool)

(assert (=> b!4888970 m!5892502))

(declare-fun m!5892504 () Bool)

(assert (=> b!4888963 m!5892504))

(declare-fun m!5892506 () Bool)

(assert (=> b!4888963 m!5892506))

(declare-fun m!5892508 () Bool)

(assert (=> b!4888963 m!5892508))

(declare-fun m!5892510 () Bool)

(assert (=> b!4888964 m!5892510))

(declare-fun m!5892512 () Bool)

(assert (=> b!4888956 m!5892512))

(declare-fun m!5892514 () Bool)

(assert (=> b!4888969 m!5892514))

(assert (=> b!4888969 m!5892494))

(declare-fun m!5892516 () Bool)

(assert (=> b!4888961 m!5892516))

(declare-fun m!5892518 () Bool)

(assert (=> b!4888962 m!5892518))

(check-sat b_and!344311 (not b!4888958) (not b!4888962) (not b!4888967) (not start!511752) (not b!4888957) b_and!344307 (not b!4888961) (not b_next!132257) (not b!4888972) (not b!4888968) (not b!4888971) (not b_next!132261) (not b!4888956) (not b_next!132259) (not b!4888964) (not b!4888966) (not b!4888973) b_and!344313 (not b!4888970) (not b_next!132263) (not b!4888963) (not b!4888969) b_and!344309)
(check-sat (not b_next!132261) (not b_next!132259) b_and!344311 b_and!344313 b_and!344307 (not b_next!132263) b_and!344309 (not b_next!132257))
(get-model)

(declare-fun d!1569942 () Bool)

(declare-fun c!830955 () Bool)

(assert (=> d!1569942 (= c!830955 ((_ is Node!14734) (c!830951 (_2!33505 (v!49962 err!4529)))))))

(declare-fun e!3056496 () Bool)

(assert (=> d!1569942 (= (inv!72629 (c!830951 (_2!33505 (v!49962 err!4529)))) e!3056496)))

(declare-fun b!4888992 () Bool)

(declare-fun inv!72631 (Conc!14734) Bool)

(assert (=> b!4888992 (= e!3056496 (inv!72631 (c!830951 (_2!33505 (v!49962 err!4529)))))))

(declare-fun b!4888993 () Bool)

(declare-fun e!3056497 () Bool)

(assert (=> b!4888993 (= e!3056496 e!3056497)))

(declare-fun res!2087964 () Bool)

(assert (=> b!4888993 (= res!2087964 (not ((_ is Leaf!24534) (c!830951 (_2!33505 (v!49962 err!4529))))))))

(assert (=> b!4888993 (=> res!2087964 e!3056497)))

(declare-fun b!4888994 () Bool)

(declare-fun inv!72632 (Conc!14734) Bool)

(assert (=> b!4888994 (= e!3056497 (inv!72632 (c!830951 (_2!33505 (v!49962 err!4529)))))))

(assert (= (and d!1569942 c!830955) b!4888992))

(assert (= (and d!1569942 (not c!830955)) b!4888993))

(assert (= (and b!4888993 (not res!2087964)) b!4888994))

(declare-fun m!5892536 () Bool)

(assert (=> b!4888992 m!5892536))

(declare-fun m!5892538 () Bool)

(assert (=> b!4888994 m!5892538))

(assert (=> b!4888961 d!1569942))

(declare-fun d!1569954 () Bool)

(declare-fun list!17710 (Conc!14734) List!56503)

(assert (=> d!1569954 (= (list!17708 (_2!33505 lt!2003729)) (list!17710 (c!830951 (_2!33505 lt!2003729))))))

(declare-fun bs!1175703 () Bool)

(assert (= bs!1175703 d!1569954))

(declare-fun m!5892540 () Bool)

(assert (=> bs!1175703 m!5892540))

(assert (=> b!4888972 d!1569954))

(declare-fun d!1569956 () Bool)

(declare-fun res!2087969 () Bool)

(declare-fun e!3056500 () Bool)

(assert (=> d!1569956 (=> (not res!2087969) (not e!3056500))))

(declare-fun isEmpty!30229 (List!56503) Bool)

(assert (=> d!1569956 (= res!2087969 (not (isEmpty!30229 (originalCharacters!8481 (_1!33505 (v!49962 err!4529))))))))

(assert (=> d!1569956 (= (inv!72630 (_1!33505 (v!49962 err!4529))) e!3056500)))

(declare-fun b!4888999 () Bool)

(declare-fun res!2087970 () Bool)

(assert (=> b!4888999 (=> (not res!2087970) (not e!3056500))))

(declare-fun dynLambda!22593 (Int TokenValue!8476) BalanceConc!28898)

(assert (=> b!4888999 (= res!2087970 (= (originalCharacters!8481 (_1!33505 (v!49962 err!4529))) (list!17708 (dynLambda!22593 (toChars!10912 (transformation!8166 (rule!11344 (_1!33505 (v!49962 err!4529))))) (value!261883 (_1!33505 (v!49962 err!4529)))))))))

(declare-fun b!4889000 () Bool)

(declare-fun size!37116 (List!56503) Int)

(assert (=> b!4889000 (= e!3056500 (= (size!37114 (_1!33505 (v!49962 err!4529))) (size!37116 (originalCharacters!8481 (_1!33505 (v!49962 err!4529))))))))

(assert (= (and d!1569956 res!2087969) b!4888999))

(assert (= (and b!4888999 res!2087970) b!4889000))

(declare-fun b_lambda!194033 () Bool)

(assert (=> (not b_lambda!194033) (not b!4888999)))

(declare-fun tb!258455 () Bool)

(declare-fun t!365165 () Bool)

(assert (=> (and b!4888965 (= (toChars!10912 (transformation!8166 (h!62829 rulesArg!165))) (toChars!10912 (transformation!8166 (rule!11344 (_1!33505 (v!49962 err!4529)))))) t!365165) tb!258455))

(declare-fun b!4889005 () Bool)

(declare-fun e!3056503 () Bool)

(declare-fun tp!1376140 () Bool)

(assert (=> b!4889005 (= e!3056503 (and (inv!72629 (c!830951 (dynLambda!22593 (toChars!10912 (transformation!8166 (rule!11344 (_1!33505 (v!49962 err!4529))))) (value!261883 (_1!33505 (v!49962 err!4529)))))) tp!1376140))))

(declare-fun result!321930 () Bool)

(assert (=> tb!258455 (= result!321930 (and (inv!72628 (dynLambda!22593 (toChars!10912 (transformation!8166 (rule!11344 (_1!33505 (v!49962 err!4529))))) (value!261883 (_1!33505 (v!49962 err!4529))))) e!3056503))))

(assert (= tb!258455 b!4889005))

(declare-fun m!5892542 () Bool)

(assert (=> b!4889005 m!5892542))

(declare-fun m!5892544 () Bool)

(assert (=> tb!258455 m!5892544))

(assert (=> b!4888999 t!365165))

(declare-fun b_and!344315 () Bool)

(assert (= b_and!344309 (and (=> t!365165 result!321930) b_and!344315)))

(declare-fun t!365167 () Bool)

(declare-fun tb!258457 () Bool)

(assert (=> (and b!4888960 (= (toChars!10912 (transformation!8166 (rule!11344 (_1!33505 (v!49962 err!4529))))) (toChars!10912 (transformation!8166 (rule!11344 (_1!33505 (v!49962 err!4529)))))) t!365167) tb!258457))

(declare-fun result!321934 () Bool)

(assert (= result!321934 result!321930))

(assert (=> b!4888999 t!365167))

(declare-fun b_and!344317 () Bool)

(assert (= b_and!344313 (and (=> t!365167 result!321934) b_and!344317)))

(declare-fun m!5892546 () Bool)

(assert (=> d!1569956 m!5892546))

(declare-fun m!5892548 () Bool)

(assert (=> b!4888999 m!5892548))

(assert (=> b!4888999 m!5892548))

(declare-fun m!5892550 () Bool)

(assert (=> b!4888999 m!5892550))

(declare-fun m!5892552 () Bool)

(assert (=> b!4889000 m!5892552))

(assert (=> b!4888971 d!1569956))

(declare-fun d!1569958 () Bool)

(declare-fun isBalanced!4006 (Conc!14734) Bool)

(assert (=> d!1569958 (= (inv!72628 (_2!33505 (v!49962 err!4529))) (isBalanced!4006 (c!830951 (_2!33505 (v!49962 err!4529)))))))

(declare-fun bs!1175704 () Bool)

(assert (= bs!1175704 d!1569958))

(declare-fun m!5892554 () Bool)

(assert (=> bs!1175704 m!5892554))

(assert (=> b!4888971 d!1569958))

(declare-fun d!1569960 () Bool)

(assert (=> d!1569960 (= (inv!72628 input!1236) (isBalanced!4006 (c!830951 input!1236)))))

(declare-fun bs!1175705 () Bool)

(assert (= bs!1175705 d!1569960))

(declare-fun m!5892556 () Bool)

(assert (=> bs!1175705 m!5892556))

(assert (=> start!511752 d!1569960))

(declare-fun d!1569962 () Bool)

(declare-fun c!830956 () Bool)

(assert (=> d!1569962 (= c!830956 ((_ is Node!14734) (c!830951 input!1236)))))

(declare-fun e!3056504 () Bool)

(assert (=> d!1569962 (= (inv!72629 (c!830951 input!1236)) e!3056504)))

(declare-fun b!4889006 () Bool)

(assert (=> b!4889006 (= e!3056504 (inv!72631 (c!830951 input!1236)))))

(declare-fun b!4889007 () Bool)

(declare-fun e!3056505 () Bool)

(assert (=> b!4889007 (= e!3056504 e!3056505)))

(declare-fun res!2087971 () Bool)

(assert (=> b!4889007 (= res!2087971 (not ((_ is Leaf!24534) (c!830951 input!1236))))))

(assert (=> b!4889007 (=> res!2087971 e!3056505)))

(declare-fun b!4889008 () Bool)

(assert (=> b!4889008 (= e!3056505 (inv!72632 (c!830951 input!1236)))))

(assert (= (and d!1569962 c!830956) b!4889006))

(assert (= (and d!1569962 (not c!830956)) b!4889007))

(assert (= (and b!4889007 (not res!2087971)) b!4889008))

(declare-fun m!5892558 () Bool)

(assert (=> b!4889006 m!5892558))

(declare-fun m!5892560 () Bool)

(assert (=> b!4889008 m!5892560))

(assert (=> b!4888970 d!1569962))

(declare-fun d!1569964 () Bool)

(assert (=> d!1569964 (= (get!19462 lt!2003734) (v!49963 lt!2003734))))

(assert (=> b!4888969 d!1569964))

(declare-fun d!1569966 () Bool)

(assert (=> d!1569966 (= (get!19463 lt!2003735) (v!49962 lt!2003735))))

(assert (=> b!4888969 d!1569966))

(declare-fun d!1569968 () Bool)

(assert (=> d!1569968 (= (inv!72622 (tag!9030 (rule!11344 (_1!33505 (v!49962 err!4529))))) (= (mod (str.len (value!261882 (tag!9030 (rule!11344 (_1!33505 (v!49962 err!4529)))))) 2) 0))))

(assert (=> b!4888957 d!1569968))

(declare-fun d!1569970 () Bool)

(declare-fun res!2087974 () Bool)

(declare-fun e!3056508 () Bool)

(assert (=> d!1569970 (=> (not res!2087974) (not e!3056508))))

(declare-fun semiInverseModEq!3579 (Int Int) Bool)

(assert (=> d!1569970 (= res!2087974 (semiInverseModEq!3579 (toChars!10912 (transformation!8166 (rule!11344 (_1!33505 (v!49962 err!4529))))) (toValue!11053 (transformation!8166 (rule!11344 (_1!33505 (v!49962 err!4529)))))))))

(assert (=> d!1569970 (= (inv!72627 (transformation!8166 (rule!11344 (_1!33505 (v!49962 err!4529))))) e!3056508)))

(declare-fun b!4889011 () Bool)

(declare-fun equivClasses!3458 (Int Int) Bool)

(assert (=> b!4889011 (= e!3056508 (equivClasses!3458 (toChars!10912 (transformation!8166 (rule!11344 (_1!33505 (v!49962 err!4529))))) (toValue!11053 (transformation!8166 (rule!11344 (_1!33505 (v!49962 err!4529)))))))))

(assert (= (and d!1569970 res!2087974) b!4889011))

(declare-fun m!5892562 () Bool)

(assert (=> d!1569970 m!5892562))

(declare-fun m!5892564 () Bool)

(assert (=> b!4889011 m!5892564))

(assert (=> b!4888957 d!1569970))

(declare-fun d!1569972 () Bool)

(assert (=> d!1569972 (= (isEmpty!30226 rulesArg!165) ((_ is Nil!56381) rulesArg!165))))

(assert (=> b!4888968 d!1569972))

(declare-fun d!1569974 () Bool)

(assert (=> d!1569974 (= (inv!72622 (tag!9030 (h!62829 rulesArg!165))) (= (mod (str.len (value!261882 (tag!9030 (h!62829 rulesArg!165)))) 2) 0))))

(assert (=> b!4888967 d!1569974))

(declare-fun d!1569976 () Bool)

(declare-fun res!2087975 () Bool)

(declare-fun e!3056509 () Bool)

(assert (=> d!1569976 (=> (not res!2087975) (not e!3056509))))

(assert (=> d!1569976 (= res!2087975 (semiInverseModEq!3579 (toChars!10912 (transformation!8166 (h!62829 rulesArg!165))) (toValue!11053 (transformation!8166 (h!62829 rulesArg!165)))))))

(assert (=> d!1569976 (= (inv!72627 (transformation!8166 (h!62829 rulesArg!165))) e!3056509)))

(declare-fun b!4889012 () Bool)

(assert (=> b!4889012 (= e!3056509 (equivClasses!3458 (toChars!10912 (transformation!8166 (h!62829 rulesArg!165))) (toValue!11053 (transformation!8166 (h!62829 rulesArg!165)))))))

(assert (= (and d!1569976 res!2087975) b!4889012))

(declare-fun m!5892566 () Bool)

(assert (=> d!1569976 m!5892566))

(declare-fun m!5892568 () Bool)

(assert (=> b!4889012 m!5892568))

(assert (=> b!4888967 d!1569976))

(declare-fun b!4889024 () Bool)

(declare-fun res!2087978 () Bool)

(declare-fun e!3056518 () Bool)

(assert (=> b!4889024 (=> res!2087978 e!3056518)))

(assert (=> b!4889024 (= res!2087978 (not ((_ is IntegerValue!25430) (value!261883 (_1!33505 (v!49962 err!4529))))))))

(declare-fun e!3056517 () Bool)

(assert (=> b!4889024 (= e!3056517 e!3056518)))

(declare-fun b!4889025 () Bool)

(declare-fun inv!17 (TokenValue!8476) Bool)

(assert (=> b!4889025 (= e!3056517 (inv!17 (value!261883 (_1!33505 (v!49962 err!4529)))))))

(declare-fun b!4889026 () Bool)

(declare-fun e!3056516 () Bool)

(assert (=> b!4889026 (= e!3056516 e!3056517)))

(declare-fun c!830961 () Bool)

(assert (=> b!4889026 (= c!830961 ((_ is IntegerValue!25429) (value!261883 (_1!33505 (v!49962 err!4529)))))))

(declare-fun b!4889027 () Bool)

(declare-fun inv!16 (TokenValue!8476) Bool)

(assert (=> b!4889027 (= e!3056516 (inv!16 (value!261883 (_1!33505 (v!49962 err!4529)))))))

(declare-fun d!1569978 () Bool)

(declare-fun c!830962 () Bool)

(assert (=> d!1569978 (= c!830962 ((_ is IntegerValue!25428) (value!261883 (_1!33505 (v!49962 err!4529)))))))

(assert (=> d!1569978 (= (inv!21 (value!261883 (_1!33505 (v!49962 err!4529)))) e!3056516)))

(declare-fun b!4889023 () Bool)

(declare-fun inv!15 (TokenValue!8476) Bool)

(assert (=> b!4889023 (= e!3056518 (inv!15 (value!261883 (_1!33505 (v!49962 err!4529)))))))

(assert (= (and d!1569978 c!830962) b!4889027))

(assert (= (and d!1569978 (not c!830962)) b!4889026))

(assert (= (and b!4889026 c!830961) b!4889025))

(assert (= (and b!4889026 (not c!830961)) b!4889024))

(assert (= (and b!4889024 (not res!2087978)) b!4889023))

(declare-fun m!5892570 () Bool)

(assert (=> b!4889025 m!5892570))

(declare-fun m!5892572 () Bool)

(assert (=> b!4889027 m!5892572))

(declare-fun m!5892574 () Bool)

(assert (=> b!4889023 m!5892574))

(assert (=> b!4888956 d!1569978))

(declare-fun d!1569980 () Bool)

(declare-fun isEmpty!30230 (Option!14014) Bool)

(assert (=> d!1569980 (= (isDefined!11026 lt!2003734) (not (isEmpty!30230 lt!2003734)))))

(declare-fun bs!1175706 () Bool)

(assert (= bs!1175706 d!1569980))

(declare-fun m!5892576 () Bool)

(assert (=> bs!1175706 m!5892576))

(assert (=> b!4888966 d!1569980))

(declare-fun d!1569982 () Bool)

(declare-fun isEmpty!30231 (Option!14013) Bool)

(assert (=> d!1569982 (= (isDefined!11027 lt!2003735) (not (isEmpty!30231 lt!2003735)))))

(declare-fun bs!1175707 () Bool)

(assert (= bs!1175707 d!1569982))

(declare-fun m!5892578 () Bool)

(assert (=> bs!1175707 m!5892578))

(assert (=> b!4888966 d!1569982))

(declare-fun d!1569984 () Bool)

(declare-fun lt!2003770 () Option!14014)

(assert (=> d!1569984 (= lt!2003770 (maxPrefix!4599 thiss!14805 rulesArg!165 lt!2003733))))

(declare-fun e!3056536 () Option!14014)

(assert (=> d!1569984 (= lt!2003770 e!3056536)))

(declare-fun c!830972 () Bool)

(assert (=> d!1569984 (= c!830972 (and ((_ is Cons!56381) rulesArg!165) ((_ is Nil!56381) (t!365163 rulesArg!165))))))

(declare-fun lt!2003769 () Unit!146370)

(declare-fun lt!2003772 () Unit!146370)

(assert (=> d!1569984 (= lt!2003769 lt!2003772)))

(assert (=> d!1569984 (isPrefix!4888 lt!2003733 lt!2003733)))

(assert (=> d!1569984 (= lt!2003772 (lemmaIsPrefixRefl!3285 lt!2003733 lt!2003733))))

(assert (=> d!1569984 (rulesValidInductive!3145 thiss!14805 rulesArg!165)))

(assert (=> d!1569984 (= (maxPrefixZipper!669 thiss!14805 rulesArg!165 lt!2003733) lt!2003770)))

(declare-fun bm!339075 () Bool)

(declare-fun call!339080 () Option!14014)

(declare-fun maxPrefixOneRuleZipper!254 (LexerInterface!7758 Rule!16132 List!56503) Option!14014)

(assert (=> bm!339075 (= call!339080 (maxPrefixOneRuleZipper!254 thiss!14805 (h!62829 rulesArg!165) lt!2003733))))

(declare-fun b!4889054 () Bool)

(assert (=> b!4889054 (= e!3056536 call!339080)))

(declare-fun b!4889055 () Bool)

(declare-fun lt!2003773 () Option!14014)

(declare-fun lt!2003771 () Option!14014)

(assert (=> b!4889055 (= e!3056536 (ite (and ((_ is None!14013) lt!2003773) ((_ is None!14013) lt!2003771)) None!14013 (ite ((_ is None!14013) lt!2003771) lt!2003773 (ite ((_ is None!14013) lt!2003773) lt!2003771 (ite (>= (size!37114 (_1!33506 (v!49963 lt!2003773))) (size!37114 (_1!33506 (v!49963 lt!2003771)))) lt!2003773 lt!2003771)))))))

(assert (=> b!4889055 (= lt!2003773 call!339080)))

(assert (=> b!4889055 (= lt!2003771 (maxPrefixZipper!669 thiss!14805 (t!365163 rulesArg!165) lt!2003733))))

(assert (= (and d!1569984 c!830972) b!4889054))

(assert (= (and d!1569984 (not c!830972)) b!4889055))

(assert (= (or b!4889054 b!4889055) bm!339075))

(assert (=> d!1569984 m!5892498))

(assert (=> d!1569984 m!5892504))

(assert (=> d!1569984 m!5892506))

(assert (=> d!1569984 m!5892510))

(declare-fun m!5892602 () Bool)

(assert (=> bm!339075 m!5892602))

(declare-fun m!5892604 () Bool)

(assert (=> b!4889055 m!5892604))

(assert (=> b!4888966 d!1569984))

(declare-fun d!1570010 () Bool)

(assert (=> d!1570010 true))

(declare-fun lt!2003793 () Bool)

(declare-fun lambda!243901 () Int)

(declare-fun forall!13082 (List!56505 Int) Bool)

(assert (=> d!1570010 (= lt!2003793 (forall!13082 rulesArg!165 lambda!243901))))

(declare-fun e!3056560 () Bool)

(assert (=> d!1570010 (= lt!2003793 e!3056560)))

(declare-fun res!2088022 () Bool)

(assert (=> d!1570010 (=> res!2088022 e!3056560)))

(assert (=> d!1570010 (= res!2088022 (not ((_ is Cons!56381) rulesArg!165)))))

(assert (=> d!1570010 (= (rulesValidInductive!3145 thiss!14805 rulesArg!165) lt!2003793)))

(declare-fun b!4889102 () Bool)

(declare-fun e!3056561 () Bool)

(assert (=> b!4889102 (= e!3056560 e!3056561)))

(declare-fun res!2088023 () Bool)

(assert (=> b!4889102 (=> (not res!2088023) (not e!3056561))))

(declare-fun ruleValid!3664 (LexerInterface!7758 Rule!16132) Bool)

(assert (=> b!4889102 (= res!2088023 (ruleValid!3664 thiss!14805 (h!62829 rulesArg!165)))))

(declare-fun b!4889103 () Bool)

(assert (=> b!4889103 (= e!3056561 (rulesValidInductive!3145 thiss!14805 (t!365163 rulesArg!165)))))

(assert (= (and d!1570010 (not res!2088022)) b!4889102))

(assert (= (and b!4889102 res!2088023) b!4889103))

(declare-fun m!5892650 () Bool)

(assert (=> d!1570010 m!5892650))

(declare-fun m!5892652 () Bool)

(assert (=> b!4889102 m!5892652))

(declare-fun m!5892654 () Bool)

(assert (=> b!4889103 m!5892654))

(assert (=> b!4888964 d!1570010))

(declare-fun b!4889117 () Bool)

(declare-fun e!3056570 () Bool)

(assert (=> b!4889117 (= e!3056570 (>= (size!37116 lt!2003733) (size!37116 lt!2003733)))))

(declare-fun b!4889116 () Bool)

(declare-fun e!3056569 () Bool)

(declare-fun tail!9595 (List!56503) List!56503)

(assert (=> b!4889116 (= e!3056569 (isPrefix!4888 (tail!9595 lt!2003733) (tail!9595 lt!2003733)))))

(declare-fun d!1570022 () Bool)

(assert (=> d!1570022 e!3056570))

(declare-fun res!2088033 () Bool)

(assert (=> d!1570022 (=> res!2088033 e!3056570)))

(declare-fun lt!2003796 () Bool)

(assert (=> d!1570022 (= res!2088033 (not lt!2003796))))

(declare-fun e!3056568 () Bool)

(assert (=> d!1570022 (= lt!2003796 e!3056568)))

(declare-fun res!2088032 () Bool)

(assert (=> d!1570022 (=> res!2088032 e!3056568)))

(assert (=> d!1570022 (= res!2088032 ((_ is Nil!56379) lt!2003733))))

(assert (=> d!1570022 (= (isPrefix!4888 lt!2003733 lt!2003733) lt!2003796)))

(declare-fun b!4889114 () Bool)

(assert (=> b!4889114 (= e!3056568 e!3056569)))

(declare-fun res!2088034 () Bool)

(assert (=> b!4889114 (=> (not res!2088034) (not e!3056569))))

(assert (=> b!4889114 (= res!2088034 (not ((_ is Nil!56379) lt!2003733)))))

(declare-fun b!4889115 () Bool)

(declare-fun res!2088035 () Bool)

(assert (=> b!4889115 (=> (not res!2088035) (not e!3056569))))

(declare-fun head!10449 (List!56503) C!26680)

(assert (=> b!4889115 (= res!2088035 (= (head!10449 lt!2003733) (head!10449 lt!2003733)))))

(assert (= (and d!1570022 (not res!2088032)) b!4889114))

(assert (= (and b!4889114 res!2088034) b!4889115))

(assert (= (and b!4889115 res!2088035) b!4889116))

(assert (= (and d!1570022 (not res!2088033)) b!4889117))

(declare-fun m!5892656 () Bool)

(assert (=> b!4889117 m!5892656))

(assert (=> b!4889117 m!5892656))

(declare-fun m!5892658 () Bool)

(assert (=> b!4889116 m!5892658))

(assert (=> b!4889116 m!5892658))

(assert (=> b!4889116 m!5892658))

(assert (=> b!4889116 m!5892658))

(declare-fun m!5892660 () Bool)

(assert (=> b!4889116 m!5892660))

(declare-fun m!5892662 () Bool)

(assert (=> b!4889115 m!5892662))

(assert (=> b!4889115 m!5892662))

(assert (=> b!4888963 d!1570022))

(declare-fun d!1570024 () Bool)

(assert (=> d!1570024 (isPrefix!4888 lt!2003733 lt!2003733)))

(declare-fun lt!2003799 () Unit!146370)

(declare-fun choose!35687 (List!56503 List!56503) Unit!146370)

(assert (=> d!1570024 (= lt!2003799 (choose!35687 lt!2003733 lt!2003733))))

(assert (=> d!1570024 (= (lemmaIsPrefixRefl!3285 lt!2003733 lt!2003733) lt!2003799)))

(declare-fun bs!1175712 () Bool)

(assert (= bs!1175712 d!1570024))

(assert (=> bs!1175712 m!5892504))

(declare-fun m!5892664 () Bool)

(assert (=> bs!1175712 m!5892664))

(assert (=> b!4888963 d!1570024))

(declare-fun d!1570026 () Bool)

(assert (=> d!1570026 (= (list!17708 input!1236) (list!17710 (c!830951 input!1236)))))

(declare-fun bs!1175713 () Bool)

(assert (= bs!1175713 d!1570026))

(declare-fun m!5892666 () Bool)

(assert (=> bs!1175713 m!5892666))

(assert (=> b!4888963 d!1570026))

(assert (=> b!4888973 d!1569966))

(declare-fun d!1570028 () Bool)

(assert (=> d!1570028 (= (get!19462 lt!2003730) (v!49963 lt!2003730))))

(assert (=> b!4888973 d!1570028))

(declare-fun b!4889203 () Bool)

(declare-fun e!3056617 () Bool)

(declare-fun e!3056616 () Bool)

(assert (=> b!4889203 (= e!3056617 e!3056616)))

(declare-fun res!2088060 () Bool)

(assert (=> b!4889203 (=> (not res!2088060) (not e!3056616))))

(declare-fun lt!2003811 () Option!14014)

(assert (=> b!4889203 (= res!2088060 (isDefined!11026 lt!2003811))))

(declare-fun b!4889204 () Bool)

(declare-fun res!2088055 () Bool)

(assert (=> b!4889204 (=> (not res!2088055) (not e!3056616))))

(assert (=> b!4889204 (= res!2088055 (< (size!37116 (_2!33506 (get!19462 lt!2003811))) (size!37116 lt!2003733)))))

(declare-fun bm!339081 () Bool)

(declare-fun call!339086 () Option!14014)

(declare-fun maxPrefixOneRule!3523 (LexerInterface!7758 Rule!16132 List!56503) Option!14014)

(assert (=> bm!339081 (= call!339086 (maxPrefixOneRule!3523 thiss!14805 (h!62829 rulesArg!165) lt!2003733))))

(declare-fun b!4889205 () Bool)

(declare-fun e!3056615 () Option!14014)

(declare-fun lt!2003813 () Option!14014)

(declare-fun lt!2003815 () Option!14014)

(assert (=> b!4889205 (= e!3056615 (ite (and ((_ is None!14013) lt!2003813) ((_ is None!14013) lt!2003815)) None!14013 (ite ((_ is None!14013) lt!2003815) lt!2003813 (ite ((_ is None!14013) lt!2003813) lt!2003815 (ite (>= (size!37114 (_1!33506 (v!49963 lt!2003813))) (size!37114 (_1!33506 (v!49963 lt!2003815)))) lt!2003813 lt!2003815)))))))

(assert (=> b!4889205 (= lt!2003813 call!339086)))

(assert (=> b!4889205 (= lt!2003815 (maxPrefix!4599 thiss!14805 (t!365163 rulesArg!165) lt!2003733))))

(declare-fun d!1570030 () Bool)

(assert (=> d!1570030 e!3056617))

(declare-fun res!2088059 () Bool)

(assert (=> d!1570030 (=> res!2088059 e!3056617)))

(assert (=> d!1570030 (= res!2088059 (isEmpty!30230 lt!2003811))))

(assert (=> d!1570030 (= lt!2003811 e!3056615)))

(declare-fun c!830984 () Bool)

(assert (=> d!1570030 (= c!830984 (and ((_ is Cons!56381) rulesArg!165) ((_ is Nil!56381) (t!365163 rulesArg!165))))))

(declare-fun lt!2003812 () Unit!146370)

(declare-fun lt!2003814 () Unit!146370)

(assert (=> d!1570030 (= lt!2003812 lt!2003814)))

(assert (=> d!1570030 (isPrefix!4888 lt!2003733 lt!2003733)))

(assert (=> d!1570030 (= lt!2003814 (lemmaIsPrefixRefl!3285 lt!2003733 lt!2003733))))

(assert (=> d!1570030 (rulesValidInductive!3145 thiss!14805 rulesArg!165)))

(assert (=> d!1570030 (= (maxPrefix!4599 thiss!14805 rulesArg!165 lt!2003733) lt!2003811)))

(declare-fun b!4889206 () Bool)

(declare-fun res!2088056 () Bool)

(assert (=> b!4889206 (=> (not res!2088056) (not e!3056616))))

(declare-fun ++!12239 (List!56503 List!56503) List!56503)

(declare-fun charsOf!5370 (Token!14900) BalanceConc!28898)

(assert (=> b!4889206 (= res!2088056 (= (++!12239 (list!17708 (charsOf!5370 (_1!33506 (get!19462 lt!2003811)))) (_2!33506 (get!19462 lt!2003811))) lt!2003733))))

(declare-fun b!4889207 () Bool)

(declare-fun res!2088057 () Bool)

(assert (=> b!4889207 (=> (not res!2088057) (not e!3056616))))

(assert (=> b!4889207 (= res!2088057 (= (list!17708 (charsOf!5370 (_1!33506 (get!19462 lt!2003811)))) (originalCharacters!8481 (_1!33506 (get!19462 lt!2003811)))))))

(declare-fun b!4889208 () Bool)

(declare-fun res!2088061 () Bool)

(assert (=> b!4889208 (=> (not res!2088061) (not e!3056616))))

(declare-fun apply!13534 (TokenValueInjection!16260 BalanceConc!28898) TokenValue!8476)

(declare-fun seqFromList!5930 (List!56503) BalanceConc!28898)

(assert (=> b!4889208 (= res!2088061 (= (value!261883 (_1!33506 (get!19462 lt!2003811))) (apply!13534 (transformation!8166 (rule!11344 (_1!33506 (get!19462 lt!2003811)))) (seqFromList!5930 (originalCharacters!8481 (_1!33506 (get!19462 lt!2003811)))))))))

(declare-fun b!4889209 () Bool)

(assert (=> b!4889209 (= e!3056615 call!339086)))

(declare-fun b!4889210 () Bool)

(declare-fun res!2088058 () Bool)

(assert (=> b!4889210 (=> (not res!2088058) (not e!3056616))))

(declare-fun matchR!6524 (Regex!13241 List!56503) Bool)

(assert (=> b!4889210 (= res!2088058 (matchR!6524 (regex!8166 (rule!11344 (_1!33506 (get!19462 lt!2003811)))) (list!17708 (charsOf!5370 (_1!33506 (get!19462 lt!2003811))))))))

(declare-fun b!4889211 () Bool)

(declare-fun contains!19433 (List!56505 Rule!16132) Bool)

(assert (=> b!4889211 (= e!3056616 (contains!19433 rulesArg!165 (rule!11344 (_1!33506 (get!19462 lt!2003811)))))))

(assert (= (and d!1570030 c!830984) b!4889209))

(assert (= (and d!1570030 (not c!830984)) b!4889205))

(assert (= (or b!4889209 b!4889205) bm!339081))

(assert (= (and d!1570030 (not res!2088059)) b!4889203))

(assert (= (and b!4889203 res!2088060) b!4889207))

(assert (= (and b!4889207 res!2088057) b!4889204))

(assert (= (and b!4889204 res!2088055) b!4889206))

(assert (= (and b!4889206 res!2088056) b!4889208))

(assert (= (and b!4889208 res!2088061) b!4889210))

(assert (= (and b!4889210 res!2088058) b!4889211))

(declare-fun m!5892696 () Bool)

(assert (=> b!4889204 m!5892696))

(declare-fun m!5892698 () Bool)

(assert (=> b!4889204 m!5892698))

(assert (=> b!4889204 m!5892656))

(declare-fun m!5892700 () Bool)

(assert (=> d!1570030 m!5892700))

(assert (=> d!1570030 m!5892504))

(assert (=> d!1570030 m!5892506))

(assert (=> d!1570030 m!5892510))

(assert (=> b!4889210 m!5892696))

(declare-fun m!5892702 () Bool)

(assert (=> b!4889210 m!5892702))

(assert (=> b!4889210 m!5892702))

(declare-fun m!5892704 () Bool)

(assert (=> b!4889210 m!5892704))

(assert (=> b!4889210 m!5892704))

(declare-fun m!5892706 () Bool)

(assert (=> b!4889210 m!5892706))

(declare-fun m!5892708 () Bool)

(assert (=> b!4889205 m!5892708))

(assert (=> b!4889211 m!5892696))

(declare-fun m!5892710 () Bool)

(assert (=> b!4889211 m!5892710))

(assert (=> b!4889208 m!5892696))

(declare-fun m!5892712 () Bool)

(assert (=> b!4889208 m!5892712))

(assert (=> b!4889208 m!5892712))

(declare-fun m!5892714 () Bool)

(assert (=> b!4889208 m!5892714))

(declare-fun m!5892716 () Bool)

(assert (=> b!4889203 m!5892716))

(declare-fun m!5892718 () Bool)

(assert (=> bm!339081 m!5892718))

(assert (=> b!4889206 m!5892696))

(assert (=> b!4889206 m!5892702))

(assert (=> b!4889206 m!5892702))

(assert (=> b!4889206 m!5892704))

(assert (=> b!4889206 m!5892704))

(declare-fun m!5892720 () Bool)

(assert (=> b!4889206 m!5892720))

(assert (=> b!4889207 m!5892696))

(assert (=> b!4889207 m!5892702))

(assert (=> b!4889207 m!5892702))

(assert (=> b!4889207 m!5892704))

(assert (=> b!4888973 d!1570030))

(declare-fun d!1570034 () Bool)

(assert (=> d!1570034 (= (isDefined!11026 lt!2003730) (not (isEmpty!30230 lt!2003730)))))

(declare-fun bs!1175714 () Bool)

(assert (= bs!1175714 d!1570034))

(declare-fun m!5892722 () Bool)

(assert (=> bs!1175714 m!5892722))

(assert (=> b!4888962 d!1570034))

(declare-fun tp!1376199 () Bool)

(declare-fun e!3056623 () Bool)

(declare-fun b!4889220 () Bool)

(declare-fun tp!1376197 () Bool)

(assert (=> b!4889220 (= e!3056623 (and (inv!72629 (left!40947 (c!830951 (_2!33505 (v!49962 err!4529))))) tp!1376197 (inv!72629 (right!41277 (c!830951 (_2!33505 (v!49962 err!4529))))) tp!1376199))))

(declare-fun b!4889222 () Bool)

(declare-fun e!3056622 () Bool)

(declare-fun tp!1376198 () Bool)

(assert (=> b!4889222 (= e!3056622 tp!1376198)))

(declare-fun b!4889221 () Bool)

(declare-fun inv!72636 (IArray!29529) Bool)

(assert (=> b!4889221 (= e!3056623 (and (inv!72636 (xs!18050 (c!830951 (_2!33505 (v!49962 err!4529))))) e!3056622))))

(assert (=> b!4888961 (= tp!1376136 (and (inv!72629 (c!830951 (_2!33505 (v!49962 err!4529)))) e!3056623))))

(assert (= (and b!4888961 ((_ is Node!14734) (c!830951 (_2!33505 (v!49962 err!4529))))) b!4889220))

(assert (= b!4889221 b!4889222))

(assert (= (and b!4888961 ((_ is Leaf!24534) (c!830951 (_2!33505 (v!49962 err!4529))))) b!4889221))

(declare-fun m!5892724 () Bool)

(assert (=> b!4889220 m!5892724))

(declare-fun m!5892726 () Bool)

(assert (=> b!4889220 m!5892726))

(declare-fun m!5892728 () Bool)

(assert (=> b!4889221 m!5892728))

(assert (=> b!4888961 m!5892516))

(declare-fun b!4889227 () Bool)

(declare-fun e!3056626 () Bool)

(declare-fun tp_is_empty!35763 () Bool)

(declare-fun tp!1376202 () Bool)

(assert (=> b!4889227 (= e!3056626 (and tp_is_empty!35763 tp!1376202))))

(assert (=> b!4888956 (= tp!1376134 e!3056626)))

(assert (= (and b!4888956 ((_ is Cons!56379) (originalCharacters!8481 (_1!33505 (v!49962 err!4529))))) b!4889227))

(declare-fun e!3056628 () Bool)

(declare-fun tp!1376203 () Bool)

(declare-fun tp!1376205 () Bool)

(declare-fun b!4889228 () Bool)

(assert (=> b!4889228 (= e!3056628 (and (inv!72629 (left!40947 (c!830951 input!1236))) tp!1376203 (inv!72629 (right!41277 (c!830951 input!1236))) tp!1376205))))

(declare-fun b!4889230 () Bool)

(declare-fun e!3056627 () Bool)

(declare-fun tp!1376204 () Bool)

(assert (=> b!4889230 (= e!3056627 tp!1376204)))

(declare-fun b!4889229 () Bool)

(assert (=> b!4889229 (= e!3056628 (and (inv!72636 (xs!18050 (c!830951 input!1236))) e!3056627))))

(assert (=> b!4888970 (= tp!1376133 (and (inv!72629 (c!830951 input!1236)) e!3056628))))

(assert (= (and b!4888970 ((_ is Node!14734) (c!830951 input!1236))) b!4889228))

(assert (= b!4889229 b!4889230))

(assert (= (and b!4888970 ((_ is Leaf!24534) (c!830951 input!1236))) b!4889229))

(declare-fun m!5892730 () Bool)

(assert (=> b!4889228 m!5892730))

(declare-fun m!5892732 () Bool)

(assert (=> b!4889228 m!5892732))

(declare-fun m!5892734 () Bool)

(assert (=> b!4889229 m!5892734))

(assert (=> b!4888970 m!5892502))

(declare-fun b!4889241 () Bool)

(declare-fun b_free!131479 () Bool)

(declare-fun b_next!132269 () Bool)

(assert (=> b!4889241 (= b_free!131479 (not b_next!132269))))

(declare-fun tp!1376215 () Bool)

(declare-fun b_and!344327 () Bool)

(assert (=> b!4889241 (= tp!1376215 b_and!344327)))

(declare-fun b_free!131481 () Bool)

(declare-fun b_next!132271 () Bool)

(assert (=> b!4889241 (= b_free!131481 (not b_next!132271))))

(declare-fun tb!258465 () Bool)

(declare-fun t!365175 () Bool)

(assert (=> (and b!4889241 (= (toChars!10912 (transformation!8166 (h!62829 (t!365163 rulesArg!165)))) (toChars!10912 (transformation!8166 (rule!11344 (_1!33505 (v!49962 err!4529)))))) t!365175) tb!258465))

(declare-fun result!321958 () Bool)

(assert (= result!321958 result!321930))

(assert (=> b!4888999 t!365175))

(declare-fun b_and!344329 () Bool)

(declare-fun tp!1376217 () Bool)

(assert (=> b!4889241 (= tp!1376217 (and (=> t!365175 result!321958) b_and!344329))))

(declare-fun e!3056638 () Bool)

(assert (=> b!4889241 (= e!3056638 (and tp!1376215 tp!1376217))))

(declare-fun e!3056637 () Bool)

(declare-fun tp!1376214 () Bool)

(declare-fun b!4889240 () Bool)

(assert (=> b!4889240 (= e!3056637 (and tp!1376214 (inv!72622 (tag!9030 (h!62829 (t!365163 rulesArg!165)))) (inv!72627 (transformation!8166 (h!62829 (t!365163 rulesArg!165)))) e!3056638))))

(declare-fun b!4889239 () Bool)

(declare-fun e!3056639 () Bool)

(declare-fun tp!1376216 () Bool)

(assert (=> b!4889239 (= e!3056639 (and e!3056637 tp!1376216))))

(assert (=> b!4888958 (= tp!1376137 e!3056639)))

(assert (= b!4889240 b!4889241))

(assert (= b!4889239 b!4889240))

(assert (= (and b!4888958 ((_ is Cons!56381) (t!365163 rulesArg!165))) b!4889239))

(declare-fun m!5892736 () Bool)

(assert (=> b!4889240 m!5892736))

(declare-fun m!5892738 () Bool)

(assert (=> b!4889240 m!5892738))

(declare-fun b!4889252 () Bool)

(declare-fun e!3056643 () Bool)

(assert (=> b!4889252 (= e!3056643 tp_is_empty!35763)))

(assert (=> b!4888957 (= tp!1376132 e!3056643)))

(declare-fun b!4889255 () Bool)

(declare-fun tp!1376228 () Bool)

(declare-fun tp!1376230 () Bool)

(assert (=> b!4889255 (= e!3056643 (and tp!1376228 tp!1376230))))

(declare-fun b!4889254 () Bool)

(declare-fun tp!1376232 () Bool)

(assert (=> b!4889254 (= e!3056643 tp!1376232)))

(declare-fun b!4889253 () Bool)

(declare-fun tp!1376231 () Bool)

(declare-fun tp!1376229 () Bool)

(assert (=> b!4889253 (= e!3056643 (and tp!1376231 tp!1376229))))

(assert (= (and b!4888957 ((_ is ElementMatch!13241) (regex!8166 (rule!11344 (_1!33505 (v!49962 err!4529)))))) b!4889252))

(assert (= (and b!4888957 ((_ is Concat!21718) (regex!8166 (rule!11344 (_1!33505 (v!49962 err!4529)))))) b!4889253))

(assert (= (and b!4888957 ((_ is Star!13241) (regex!8166 (rule!11344 (_1!33505 (v!49962 err!4529)))))) b!4889254))

(assert (= (and b!4888957 ((_ is Union!13241) (regex!8166 (rule!11344 (_1!33505 (v!49962 err!4529)))))) b!4889255))

(declare-fun b!4889256 () Bool)

(declare-fun e!3056644 () Bool)

(assert (=> b!4889256 (= e!3056644 tp_is_empty!35763)))

(assert (=> b!4888967 (= tp!1376129 e!3056644)))

(declare-fun b!4889259 () Bool)

(declare-fun tp!1376233 () Bool)

(declare-fun tp!1376235 () Bool)

(assert (=> b!4889259 (= e!3056644 (and tp!1376233 tp!1376235))))

(declare-fun b!4889258 () Bool)

(declare-fun tp!1376237 () Bool)

(assert (=> b!4889258 (= e!3056644 tp!1376237)))

(declare-fun b!4889257 () Bool)

(declare-fun tp!1376236 () Bool)

(declare-fun tp!1376234 () Bool)

(assert (=> b!4889257 (= e!3056644 (and tp!1376236 tp!1376234))))

(assert (= (and b!4888967 ((_ is ElementMatch!13241) (regex!8166 (h!62829 rulesArg!165)))) b!4889256))

(assert (= (and b!4888967 ((_ is Concat!21718) (regex!8166 (h!62829 rulesArg!165)))) b!4889257))

(assert (= (and b!4888967 ((_ is Star!13241) (regex!8166 (h!62829 rulesArg!165)))) b!4889258))

(assert (= (and b!4888967 ((_ is Union!13241) (regex!8166 (h!62829 rulesArg!165)))) b!4889259))

(declare-fun b_lambda!194039 () Bool)

(assert (= b_lambda!194033 (or (and b!4888965 b_free!131469 (= (toChars!10912 (transformation!8166 (h!62829 rulesArg!165))) (toChars!10912 (transformation!8166 (rule!11344 (_1!33505 (v!49962 err!4529))))))) (and b!4888960 b_free!131473) (and b!4889241 b_free!131481 (= (toChars!10912 (transformation!8166 (h!62829 (t!365163 rulesArg!165)))) (toChars!10912 (transformation!8166 (rule!11344 (_1!33505 (v!49962 err!4529))))))) b_lambda!194039)))

(check-sat (not b!4889008) (not b!4889116) (not b!4889253) (not b!4889221) (not b!4889206) (not b_next!132261) (not bm!339081) (not b!4889005) (not b!4889227) (not b!4889102) (not b_next!132259) (not b!4889254) (not d!1569956) b_and!344311 (not b!4889115) (not tb!258455) (not b!4888994) (not d!1569984) (not d!1569970) (not b!4889259) (not d!1569976) (not b!4888992) (not b_lambda!194039) tp_is_empty!35763 (not b!4889006) (not b!4889207) (not d!1569980) (not b!4889257) (not b!4889258) (not d!1570034) (not b!4889011) (not b!4889204) (not d!1569958) (not b!4889103) (not d!1570026) (not b!4889228) (not b!4889239) (not b!4889025) (not d!1569960) (not bm!339075) (not b!4889220) (not b!4889205) (not d!1570010) (not d!1569982) (not b!4889208) (not b!4889000) (not b!4888999) (not b!4889117) (not d!1570024) (not b!4889222) (not b_next!132271) b_and!344317 (not b!4889230) (not b!4889203) (not b_next!132269) b_and!344327 (not d!1569954) b_and!344307 b_and!344315 (not b!4888961) (not b!4888970) (not b!4889229) (not b_next!132263) (not b!4889210) (not b!4889012) (not b!4889211) (not b!4889055) b_and!344329 (not b!4889255) (not b!4889023) (not b_next!132257) (not d!1570030) (not b!4889240) (not b!4889027))
(check-sat (not b_next!132261) (not b_next!132259) b_and!344311 b_and!344307 b_and!344315 (not b_next!132263) b_and!344329 (not b_next!132257) (not b_next!132271) b_and!344317 (not b_next!132269) b_and!344327)
