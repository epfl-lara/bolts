; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74562 () Bool)

(assert start!74562)

(declare-fun b!840080 () Bool)

(declare-fun b_free!24985 () Bool)

(declare-fun b_next!25049 () Bool)

(assert (=> b!840080 (= b_free!24985 (not b_next!25049))))

(declare-fun tp!264056 () Bool)

(declare-fun b_and!72537 () Bool)

(assert (=> b!840080 (= tp!264056 b_and!72537)))

(declare-fun b_free!24987 () Bool)

(declare-fun b_next!25051 () Bool)

(assert (=> b!840080 (= b_free!24987 (not b_next!25051))))

(declare-fun tp!264057 () Bool)

(declare-fun b_and!72539 () Bool)

(assert (=> b!840080 (= tp!264057 b_and!72539)))

(declare-fun b!840065 () Bool)

(declare-fun b_free!24989 () Bool)

(declare-fun b_next!25053 () Bool)

(assert (=> b!840065 (= b_free!24989 (not b_next!25053))))

(declare-fun tp!264060 () Bool)

(declare-fun b_and!72541 () Bool)

(assert (=> b!840065 (= tp!264060 b_and!72541)))

(declare-fun b_free!24991 () Bool)

(declare-fun b_next!25055 () Bool)

(assert (=> b!840065 (= b_free!24991 (not b_next!25055))))

(declare-fun tp!264061 () Bool)

(declare-fun b_and!72543 () Bool)

(assert (=> b!840065 (= tp!264061 b_and!72543)))

(declare-fun b!840074 () Bool)

(declare-fun b_free!24993 () Bool)

(declare-fun b_next!25057 () Bool)

(assert (=> b!840074 (= b_free!24993 (not b_next!25057))))

(declare-fun tp!264064 () Bool)

(declare-fun b_and!72545 () Bool)

(assert (=> b!840074 (= tp!264064 b_and!72545)))

(declare-fun b_free!24995 () Bool)

(declare-fun b_next!25059 () Bool)

(assert (=> b!840074 (= b_free!24995 (not b_next!25059))))

(declare-fun tp!264054 () Bool)

(declare-fun b_and!72547 () Bool)

(assert (=> b!840074 (= tp!264054 b_and!72547)))

(declare-fun e!552406 () Bool)

(declare-fun tp!264058 () Bool)

(declare-fun e!552398 () Bool)

(declare-datatypes ((List!8998 0))(
  ( (Nil!8982) (Cons!8982 (h!14383 (_ BitVec 16)) (t!93428 List!8998)) )
))
(declare-datatypes ((TokenValue!1748 0))(
  ( (FloatLiteralValue!3496 (text!12681 List!8998)) (TokenValueExt!1747 (__x!7227 Int)) (Broken!8740 (value!54610 List!8998)) (Object!1763) (End!1748) (Def!1748) (Underscore!1748) (Match!1748) (Else!1748) (Error!1748) (Case!1748) (If!1748) (Extends!1748) (Abstract!1748) (Class!1748) (Val!1748) (DelimiterValue!3496 (del!1808 List!8998)) (KeywordValue!1754 (value!54611 List!8998)) (CommentValue!3496 (value!54612 List!8998)) (WhitespaceValue!3496 (value!54613 List!8998)) (IndentationValue!1748 (value!54614 List!8998)) (String!10637) (Int32!1748) (Broken!8741 (value!54615 List!8998)) (Boolean!1749) (Unit!13436) (OperatorValue!1751 (op!1808 List!8998)) (IdentifierValue!3496 (value!54616 List!8998)) (IdentifierValue!3497 (value!54617 List!8998)) (WhitespaceValue!3497 (value!54618 List!8998)) (True!3496) (False!3496) (Broken!8742 (value!54619 List!8998)) (Broken!8743 (value!54620 List!8998)) (True!3497) (RightBrace!1748) (RightBracket!1748) (Colon!1748) (Null!1748) (Comma!1748) (LeftBracket!1748) (False!3497) (LeftBrace!1748) (ImaginaryLiteralValue!1748 (text!12682 List!8998)) (StringLiteralValue!5244 (value!54621 List!8998)) (EOFValue!1748 (value!54622 List!8998)) (IdentValue!1748 (value!54623 List!8998)) (DelimiterValue!3497 (value!54624 List!8998)) (DedentValue!1748 (value!54625 List!8998)) (NewLineValue!1748 (value!54626 List!8998)) (IntegerValue!5244 (value!54627 (_ BitVec 32)) (text!12683 List!8998)) (IntegerValue!5245 (value!54628 Int) (text!12684 List!8998)) (Times!1748) (Or!1748) (Equal!1748) (Minus!1748) (Broken!8744 (value!54629 List!8998)) (And!1748) (Div!1748) (LessEqual!1748) (Mod!1748) (Concat!3863) (Not!1748) (Plus!1748) (SpaceValue!1748 (value!54630 List!8998)) (IntegerValue!5246 (value!54631 Int) (text!12685 List!8998)) (StringLiteralValue!5245 (text!12686 List!8998)) (FloatLiteralValue!3497 (text!12687 List!8998)) (BytesLiteralValue!1748 (value!54632 List!8998)) (CommentValue!3497 (value!54633 List!8998)) (StringLiteralValue!5246 (value!54634 List!8998)) (ErrorTokenValue!1748 (msg!1809 List!8998)) )
))
(declare-datatypes ((C!4800 0))(
  ( (C!4801 (val!2648 Int)) )
))
(declare-datatypes ((Regex!2115 0))(
  ( (ElementMatch!2115 (c!137049 C!4800)) (Concat!3864 (regOne!4742 Regex!2115) (regTwo!4742 Regex!2115)) (EmptyExpr!2115) (Star!2115 (reg!2444 Regex!2115)) (EmptyLang!2115) (Union!2115 (regOne!4743 Regex!2115) (regTwo!4743 Regex!2115)) )
))
(declare-datatypes ((String!10638 0))(
  ( (String!10639 (value!54635 String)) )
))
(declare-datatypes ((List!8999 0))(
  ( (Nil!8983) (Cons!8983 (h!14384 C!4800) (t!93429 List!8999)) )
))
(declare-datatypes ((IArray!5967 0))(
  ( (IArray!5968 (innerList!3041 List!8999)) )
))
(declare-datatypes ((Conc!2981 0))(
  ( (Node!2981 (left!6671 Conc!2981) (right!7001 Conc!2981) (csize!6192 Int) (cheight!3192 Int)) (Leaf!4410 (xs!5670 IArray!5967) (csize!6193 Int)) (Empty!2981) )
))
(declare-datatypes ((BalanceConc!5976 0))(
  ( (BalanceConc!5977 (c!137050 Conc!2981)) )
))
(declare-datatypes ((TokenValueInjection!3196 0))(
  ( (TokenValueInjection!3197 (toValue!2699 Int) (toChars!2558 Int)) )
))
(declare-datatypes ((Rule!3164 0))(
  ( (Rule!3165 (regex!1682 Regex!2115) (tag!1944 String!10638) (isSeparator!1682 Bool) (transformation!1682 TokenValueInjection!3196)) )
))
(declare-datatypes ((Token!3030 0))(
  ( (Token!3031 (value!54636 TokenValue!1748) (rule!3105 Rule!3164) (size!7523 Int) (originalCharacters!2238 List!8999)) )
))
(declare-datatypes ((List!9000 0))(
  ( (Nil!8984) (Cons!8984 (h!14385 Token!3030) (t!93430 List!9000)) )
))
(declare-fun l!5107 () List!9000)

(declare-fun b!840059 () Bool)

(declare-fun inv!11455 (String!10638) Bool)

(declare-fun inv!11458 (TokenValueInjection!3196) Bool)

(assert (=> b!840059 (= e!552406 (and tp!264058 (inv!11455 (tag!1944 (rule!3105 (h!14385 l!5107)))) (inv!11458 (transformation!1682 (rule!3105 (h!14385 l!5107)))) e!552398))))

(declare-fun res!383989 () Bool)

(declare-fun e!552407 () Bool)

(assert (=> start!74562 (=> (not res!383989) (not e!552407))))

(declare-datatypes ((LexerInterface!1484 0))(
  ( (LexerInterfaceExt!1481 (__x!7228 Int)) (Lexer!1482) )
))
(declare-fun thiss!20117 () LexerInterface!1484)

(get-info :version)

(assert (=> start!74562 (= res!383989 ((_ is Lexer!1482) thiss!20117))))

(assert (=> start!74562 e!552407))

(assert (=> start!74562 true))

(declare-fun e!552400 () Bool)

(assert (=> start!74562 e!552400))

(declare-fun e!552410 () Bool)

(assert (=> start!74562 e!552410))

(declare-fun separatorToken!297 () Token!3030)

(declare-fun e!552394 () Bool)

(declare-fun inv!11459 (Token!3030) Bool)

(assert (=> start!74562 (and (inv!11459 separatorToken!297) e!552394)))

(declare-fun tp!264063 () Bool)

(declare-fun e!552399 () Bool)

(declare-fun b!840060 () Bool)

(declare-fun inv!21 (TokenValue!1748) Bool)

(assert (=> b!840060 (= e!552394 (and (inv!21 (value!54636 separatorToken!297)) e!552399 tp!264063))))

(declare-fun b!840061 () Bool)

(declare-fun e!552396 () Bool)

(assert (=> b!840061 (= e!552407 (not e!552396))))

(declare-fun res!383980 () Bool)

(assert (=> b!840061 (=> res!383980 e!552396)))

(declare-fun lt!318377 () List!9000)

(assert (=> b!840061 (= res!383980 (or (not ((_ is Cons!8984) lt!318377)) (not ((_ is Cons!8984) (t!93430 lt!318377)))))))

(declare-datatypes ((List!9001 0))(
  ( (Nil!8985) (Cons!8985 (h!14386 Rule!3164) (t!93431 List!9001)) )
))
(declare-fun rules!2621 () List!9001)

(declare-fun rulesProduceEachTokenIndividuallyList!372 (LexerInterface!1484 List!9001 List!9000) Bool)

(assert (=> b!840061 (rulesProduceEachTokenIndividuallyList!372 thiss!20117 rules!2621 lt!318377)))

(declare-fun withSeparatorTokenList!14 (LexerInterface!1484 List!9000 Token!3030) List!9000)

(assert (=> b!840061 (= lt!318377 (withSeparatorTokenList!14 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13437 0))(
  ( (Unit!13438) )
))
(declare-fun lt!318379 () Unit!13437)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!14 (LexerInterface!1484 List!9001 List!9000 Token!3030) Unit!13437)

(assert (=> b!840061 (= lt!318379 (withSeparatorTokenListPreservesRulesProduceTokens!14 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!840062 () Bool)

(declare-fun e!552395 () Bool)

(declare-fun rulesProduceIndividualToken!548 (LexerInterface!1484 List!9001 Token!3030) Bool)

(assert (=> b!840062 (= e!552395 (rulesProduceIndividualToken!548 thiss!20117 rules!2621 (h!14385 (t!93430 lt!318377))))))

(declare-fun b!840063 () Bool)

(declare-fun tp!264065 () Bool)

(declare-fun e!552401 () Bool)

(assert (=> b!840063 (= e!552410 (and (inv!11459 (h!14385 l!5107)) e!552401 tp!264065))))

(declare-fun b!840064 () Bool)

(assert (=> b!840064 (= e!552396 e!552395)))

(declare-fun res!383984 () Bool)

(assert (=> b!840064 (=> res!383984 e!552395)))

(assert (=> b!840064 (= res!383984 (not (rulesProduceIndividualToken!548 thiss!20117 rules!2621 (h!14385 lt!318377))))))

(declare-fun separableTokensPredicate!24 (LexerInterface!1484 Token!3030 Token!3030 List!9001) Bool)

(assert (=> b!840064 (separableTokensPredicate!24 thiss!20117 (h!14385 lt!318377) (h!14385 (t!93430 lt!318377)) rules!2621)))

(declare-fun lt!318378 () Unit!13437)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!6 (LexerInterface!1484 Token!3030 Token!3030 List!9001) Unit!13437)

(assert (=> b!840064 (= lt!318378 (lemmaTokensOfDifferentKindsAreSeparable!6 thiss!20117 (h!14385 lt!318377) (h!14385 (t!93430 lt!318377)) rules!2621))))

(declare-fun e!552409 () Bool)

(assert (=> b!840065 (= e!552409 (and tp!264060 tp!264061))))

(declare-fun b!840066 () Bool)

(declare-fun res!383985 () Bool)

(assert (=> b!840066 (=> (not res!383985) (not e!552407))))

(assert (=> b!840066 (= res!383985 (rulesProduceIndividualToken!548 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!840067 () Bool)

(declare-fun res!383987 () Bool)

(assert (=> b!840067 (=> (not res!383987) (not e!552407))))

(declare-fun sepAndNonSepRulesDisjointChars!482 (List!9001 List!9001) Bool)

(assert (=> b!840067 (= res!383987 (sepAndNonSepRulesDisjointChars!482 rules!2621 rules!2621))))

(declare-fun b!840068 () Bool)

(declare-fun res!383992 () Bool)

(assert (=> b!840068 (=> (not res!383992) (not e!552407))))

(declare-fun rulesInvariant!1360 (LexerInterface!1484 List!9001) Bool)

(assert (=> b!840068 (= res!383992 (rulesInvariant!1360 thiss!20117 rules!2621))))

(declare-fun b!840069 () Bool)

(declare-fun res!383991 () Bool)

(assert (=> b!840069 (=> res!383991 e!552396)))

(declare-fun tail!1000 (List!9000) List!9000)

(assert (=> b!840069 (= res!383991 (not (= (t!93430 (t!93430 lt!318377)) (withSeparatorTokenList!14 thiss!20117 (tail!1000 l!5107) separatorToken!297))))))

(declare-fun b!840070 () Bool)

(declare-fun tp!264055 () Bool)

(assert (=> b!840070 (= e!552401 (and (inv!21 (value!54636 (h!14385 l!5107))) e!552406 tp!264055))))

(declare-fun b!840071 () Bool)

(declare-fun res!383986 () Bool)

(assert (=> b!840071 (=> (not res!383986) (not e!552407))))

(declare-fun isEmpty!5299 (List!9001) Bool)

(assert (=> b!840071 (= res!383986 (not (isEmpty!5299 rules!2621)))))

(declare-fun b!840072 () Bool)

(declare-fun res!383988 () Bool)

(assert (=> b!840072 (=> res!383988 e!552396)))

(assert (=> b!840072 (= res!383988 (not (= (h!14385 (t!93430 lt!318377)) separatorToken!297)))))

(declare-fun b!840073 () Bool)

(declare-fun res!383983 () Bool)

(assert (=> b!840073 (=> (not res!383983) (not e!552407))))

(assert (=> b!840073 (= res!383983 (isSeparator!1682 (rule!3105 separatorToken!297)))))

(assert (=> b!840074 (= e!552398 (and tp!264064 tp!264054))))

(declare-fun b!840075 () Bool)

(declare-fun res!383990 () Bool)

(assert (=> b!840075 (=> res!383990 e!552396)))

(declare-fun head!1442 (List!9000) Token!3030)

(assert (=> b!840075 (= res!383990 (not (= (head!1442 l!5107) (h!14385 lt!318377))))))

(declare-fun tp!264062 () Bool)

(declare-fun e!552411 () Bool)

(declare-fun b!840076 () Bool)

(assert (=> b!840076 (= e!552399 (and tp!264062 (inv!11455 (tag!1944 (rule!3105 separatorToken!297))) (inv!11458 (transformation!1682 (rule!3105 separatorToken!297))) e!552411))))

(declare-fun b!840077 () Bool)

(declare-fun res!383981 () Bool)

(assert (=> b!840077 (=> (not res!383981) (not e!552407))))

(assert (=> b!840077 (= res!383981 (rulesProduceEachTokenIndividuallyList!372 thiss!20117 rules!2621 l!5107))))

(declare-fun e!552405 () Bool)

(declare-fun tp!264066 () Bool)

(declare-fun b!840078 () Bool)

(assert (=> b!840078 (= e!552405 (and tp!264066 (inv!11455 (tag!1944 (h!14386 rules!2621))) (inv!11458 (transformation!1682 (h!14386 rules!2621))) e!552409))))

(declare-fun b!840079 () Bool)

(declare-fun tp!264059 () Bool)

(assert (=> b!840079 (= e!552400 (and e!552405 tp!264059))))

(assert (=> b!840080 (= e!552411 (and tp!264056 tp!264057))))

(declare-fun b!840081 () Bool)

(declare-fun res!383982 () Bool)

(assert (=> b!840081 (=> (not res!383982) (not e!552407))))

(declare-fun lambda!24938 () Int)

(declare-fun forall!2097 (List!9000 Int) Bool)

(assert (=> b!840081 (= res!383982 (forall!2097 l!5107 lambda!24938))))

(assert (= (and start!74562 res!383989) b!840071))

(assert (= (and b!840071 res!383986) b!840068))

(assert (= (and b!840068 res!383992) b!840077))

(assert (= (and b!840077 res!383981) b!840066))

(assert (= (and b!840066 res!383985) b!840073))

(assert (= (and b!840073 res!383983) b!840081))

(assert (= (and b!840081 res!383982) b!840067))

(assert (= (and b!840067 res!383987) b!840061))

(assert (= (and b!840061 (not res!383980)) b!840069))

(assert (= (and b!840069 (not res!383991)) b!840075))

(assert (= (and b!840075 (not res!383990)) b!840072))

(assert (= (and b!840072 (not res!383988)) b!840064))

(assert (= (and b!840064 (not res!383984)) b!840062))

(assert (= b!840078 b!840065))

(assert (= b!840079 b!840078))

(assert (= (and start!74562 ((_ is Cons!8985) rules!2621)) b!840079))

(assert (= b!840059 b!840074))

(assert (= b!840070 b!840059))

(assert (= b!840063 b!840070))

(assert (= (and start!74562 ((_ is Cons!8984) l!5107)) b!840063))

(assert (= b!840076 b!840080))

(assert (= b!840060 b!840076))

(assert (= start!74562 b!840060))

(declare-fun m!1073013 () Bool)

(assert (=> b!840067 m!1073013))

(declare-fun m!1073015 () Bool)

(assert (=> start!74562 m!1073015))

(declare-fun m!1073017 () Bool)

(assert (=> b!840069 m!1073017))

(assert (=> b!840069 m!1073017))

(declare-fun m!1073019 () Bool)

(assert (=> b!840069 m!1073019))

(declare-fun m!1073021 () Bool)

(assert (=> b!840081 m!1073021))

(declare-fun m!1073023 () Bool)

(assert (=> b!840064 m!1073023))

(declare-fun m!1073025 () Bool)

(assert (=> b!840064 m!1073025))

(declare-fun m!1073027 () Bool)

(assert (=> b!840064 m!1073027))

(declare-fun m!1073029 () Bool)

(assert (=> b!840075 m!1073029))

(declare-fun m!1073031 () Bool)

(assert (=> b!840071 m!1073031))

(declare-fun m!1073033 () Bool)

(assert (=> b!840077 m!1073033))

(declare-fun m!1073035 () Bool)

(assert (=> b!840068 m!1073035))

(declare-fun m!1073037 () Bool)

(assert (=> b!840059 m!1073037))

(declare-fun m!1073039 () Bool)

(assert (=> b!840059 m!1073039))

(declare-fun m!1073041 () Bool)

(assert (=> b!840076 m!1073041))

(declare-fun m!1073043 () Bool)

(assert (=> b!840076 m!1073043))

(declare-fun m!1073045 () Bool)

(assert (=> b!840070 m!1073045))

(declare-fun m!1073047 () Bool)

(assert (=> b!840060 m!1073047))

(declare-fun m!1073049 () Bool)

(assert (=> b!840061 m!1073049))

(declare-fun m!1073051 () Bool)

(assert (=> b!840061 m!1073051))

(declare-fun m!1073053 () Bool)

(assert (=> b!840061 m!1073053))

(declare-fun m!1073055 () Bool)

(assert (=> b!840062 m!1073055))

(declare-fun m!1073057 () Bool)

(assert (=> b!840078 m!1073057))

(declare-fun m!1073059 () Bool)

(assert (=> b!840078 m!1073059))

(declare-fun m!1073061 () Bool)

(assert (=> b!840063 m!1073061))

(declare-fun m!1073063 () Bool)

(assert (=> b!840066 m!1073063))

(check-sat b_and!72537 b_and!72545 (not b!840066) b_and!72547 (not b!840075) (not start!74562) b_and!72543 (not b!840078) (not b!840061) (not b!840064) (not b!840067) (not b!840060) (not b!840070) (not b!840081) (not b!840062) (not b_next!25055) (not b_next!25053) (not b!840069) (not b_next!25059) (not b_next!25057) b_and!72539 (not b!840068) b_and!72541 (not b_next!25049) (not b!840059) (not b!840071) (not b!840063) (not b!840076) (not b!840077) (not b_next!25051) (not b!840079))
(check-sat (not b_next!25059) b_and!72537 b_and!72545 b_and!72547 b_and!72543 (not b_next!25051) (not b_next!25055) (not b_next!25053) (not b_next!25057) b_and!72539 b_and!72541 (not b_next!25049))
