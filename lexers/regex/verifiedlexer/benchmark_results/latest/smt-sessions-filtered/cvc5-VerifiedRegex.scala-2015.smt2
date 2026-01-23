; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!102712 () Bool)

(assert start!102712)

(declare-fun b!1168891 () Bool)

(declare-fun e!749308 () Bool)

(assert (=> b!1168891 (= e!749308 true)))

(declare-fun b!1168890 () Bool)

(declare-fun e!749307 () Bool)

(assert (=> b!1168890 (= e!749307 e!749308)))

(declare-fun b!1168877 () Bool)

(assert (=> b!1168877 e!749307))

(assert (= b!1168890 b!1168891))

(assert (= b!1168877 b!1168890))

(declare-datatypes ((List!11560 0))(
  ( (Nil!11536) (Cons!11536 (h!16937 (_ BitVec 16)) (t!110514 List!11560)) )
))
(declare-datatypes ((TokenValue!2076 0))(
  ( (FloatLiteralValue!4152 (text!14977 List!11560)) (TokenValueExt!2075 (__x!7863 Int)) (Broken!10380 (value!65257 List!11560)) (Object!2099) (End!2076) (Def!2076) (Underscore!2076) (Match!2076) (Else!2076) (Error!2076) (Case!2076) (If!2076) (Extends!2076) (Abstract!2076) (Class!2076) (Val!2076) (DelimiterValue!4152 (del!2136 List!11560)) (KeywordValue!2082 (value!65258 List!11560)) (CommentValue!4152 (value!65259 List!11560)) (WhitespaceValue!4152 (value!65260 List!11560)) (IndentationValue!2076 (value!65261 List!11560)) (String!13969) (Int32!2076) (Broken!10381 (value!65262 List!11560)) (Boolean!2077) (Unit!17710) (OperatorValue!2079 (op!2136 List!11560)) (IdentifierValue!4152 (value!65263 List!11560)) (IdentifierValue!4153 (value!65264 List!11560)) (WhitespaceValue!4153 (value!65265 List!11560)) (True!4152) (False!4152) (Broken!10382 (value!65266 List!11560)) (Broken!10383 (value!65267 List!11560)) (True!4153) (RightBrace!2076) (RightBracket!2076) (Colon!2076) (Null!2076) (Comma!2076) (LeftBracket!2076) (False!4153) (LeftBrace!2076) (ImaginaryLiteralValue!2076 (text!14978 List!11560)) (StringLiteralValue!6228 (value!65268 List!11560)) (EOFValue!2076 (value!65269 List!11560)) (IdentValue!2076 (value!65270 List!11560)) (DelimiterValue!4153 (value!65271 List!11560)) (DedentValue!2076 (value!65272 List!11560)) (NewLineValue!2076 (value!65273 List!11560)) (IntegerValue!6228 (value!65274 (_ BitVec 32)) (text!14979 List!11560)) (IntegerValue!6229 (value!65275 Int) (text!14980 List!11560)) (Times!2076) (Or!2076) (Equal!2076) (Minus!2076) (Broken!10384 (value!65276 List!11560)) (And!2076) (Div!2076) (LessEqual!2076) (Mod!2076) (Concat!5356) (Not!2076) (Plus!2076) (SpaceValue!2076 (value!65277 List!11560)) (IntegerValue!6230 (value!65278 Int) (text!14981 List!11560)) (StringLiteralValue!6229 (text!14982 List!11560)) (FloatLiteralValue!4153 (text!14983 List!11560)) (BytesLiteralValue!2076 (value!65279 List!11560)) (CommentValue!4153 (value!65280 List!11560)) (StringLiteralValue!6230 (value!65281 List!11560)) (ErrorTokenValue!2076 (msg!2137 List!11560)) )
))
(declare-datatypes ((C!6878 0))(
  ( (C!6879 (val!3695 Int)) )
))
(declare-datatypes ((Regex!3280 0))(
  ( (ElementMatch!3280 (c!195164 C!6878)) (Concat!5357 (regOne!7072 Regex!3280) (regTwo!7072 Regex!3280)) (EmptyExpr!3280) (Star!3280 (reg!3609 Regex!3280)) (EmptyLang!3280) (Union!3280 (regOne!7073 Regex!3280) (regTwo!7073 Regex!3280)) )
))
(declare-datatypes ((String!13970 0))(
  ( (String!13971 (value!65282 String)) )
))
(declare-datatypes ((List!11561 0))(
  ( (Nil!11537) (Cons!11537 (h!16938 C!6878) (t!110515 List!11561)) )
))
(declare-datatypes ((IArray!7569 0))(
  ( (IArray!7570 (innerList!3842 List!11561)) )
))
(declare-datatypes ((Conc!3782 0))(
  ( (Node!3782 (left!10087 Conc!3782) (right!10417 Conc!3782) (csize!7794 Int) (cheight!3993 Int)) (Leaf!5798 (xs!6487 IArray!7569) (csize!7795 Int)) (Empty!3782) )
))
(declare-datatypes ((BalanceConc!7586 0))(
  ( (BalanceConc!7587 (c!195165 Conc!3782)) )
))
(declare-datatypes ((TokenValueInjection!3852 0))(
  ( (TokenValueInjection!3853 (toValue!3111 Int) (toChars!2970 Int)) )
))
(declare-datatypes ((Rule!3820 0))(
  ( (Rule!3821 (regex!2010 Regex!3280) (tag!2272 String!13970) (isSeparator!2010 Bool) (transformation!2010 TokenValueInjection!3852)) )
))
(declare-datatypes ((Token!3682 0))(
  ( (Token!3683 (value!65283 TokenValue!2076) (rule!3431 Rule!3820) (size!9083 Int) (originalCharacters!2564 List!11561)) )
))
(declare-datatypes ((List!11562 0))(
  ( (Nil!11538) (Cons!11538 (h!16939 Token!3682) (t!110516 List!11562)) )
))
(declare-datatypes ((List!11563 0))(
  ( (Nil!11539) (Cons!11539 (h!16940 Rule!3820) (t!110517 List!11563)) )
))
(declare-datatypes ((IArray!7571 0))(
  ( (IArray!7572 (innerList!3843 List!11562)) )
))
(declare-datatypes ((Conc!3783 0))(
  ( (Node!3783 (left!10088 Conc!3783) (right!10418 Conc!3783) (csize!7796 Int) (cheight!3994 Int)) (Leaf!5799 (xs!6488 IArray!7571) (csize!7797 Int)) (Empty!3783) )
))
(declare-datatypes ((BalanceConc!7588 0))(
  ( (BalanceConc!7589 (c!195166 Conc!3783)) )
))
(declare-datatypes ((PrintableTokens!706 0))(
  ( (PrintableTokens!707 (rules!9607 List!11563) (tokens!1635 BalanceConc!7588)) )
))
(declare-fun thiss!10527 () PrintableTokens!706)

(declare-fun e!749298 () Bool)

(declare-fun b!1168876 () Bool)

(declare-fun tp!334442 () Bool)

(declare-fun e!749300 () Bool)

(declare-fun inv!15202 (BalanceConc!7588) Bool)

(assert (=> b!1168876 (= e!749300 (and tp!334442 (inv!15202 (tokens!1635 thiss!10527)) e!749298))))

(declare-fun e!749297 () Bool)

(declare-fun e!749299 () Bool)

(assert (=> b!1168877 (= e!749297 (not e!749299))))

(declare-fun res!527721 () Bool)

(assert (=> b!1168877 (=> res!527721 e!749299)))

(declare-fun lambda!47994 () Int)

(declare-fun forall!3035 (BalanceConc!7588 Int) Bool)

(assert (=> b!1168877 (= res!527721 (not (forall!3035 (tokens!1635 thiss!10527) lambda!47994)))))

(declare-fun lt!400283 () List!11562)

(declare-fun e!749302 () Bool)

(declare-datatypes ((LexerInterface!1705 0))(
  ( (LexerInterfaceExt!1702 (__x!7864 Int)) (Lexer!1703) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!571 (LexerInterface!1705 List!11563 List!11562) Bool)

(assert (=> b!1168877 (= (rulesProduceEachTokenIndividuallyList!571 Lexer!1703 (rules!9607 thiss!10527) lt!400283) e!749302)))

(declare-fun res!527718 () Bool)

(assert (=> b!1168877 (=> res!527718 e!749302)))

(assert (=> b!1168877 (= res!527718 (not (is-Cons!11538 lt!400283)))))

(declare-fun list!4251 (BalanceConc!7588) List!11562)

(assert (=> b!1168877 (= lt!400283 (list!4251 (tokens!1635 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!743 (LexerInterface!1705 List!11563 BalanceConc!7588) Bool)

(assert (=> b!1168877 (= (rulesProduceEachTokenIndividually!743 Lexer!1703 (rules!9607 thiss!10527) (tokens!1635 thiss!10527)) (forall!3035 (tokens!1635 thiss!10527) lambda!47994))))

(declare-fun b!1168878 () Bool)

(declare-fun e!749301 () Bool)

(assert (=> b!1168878 (= e!749302 e!749301)))

(declare-fun res!527716 () Bool)

(assert (=> b!1168878 (=> (not res!527716) (not e!749301))))

(declare-fun rulesProduceIndividualToken!740 (LexerInterface!1705 List!11563 Token!3682) Bool)

(assert (=> b!1168878 (= res!527716 (rulesProduceIndividualToken!740 Lexer!1703 (rules!9607 thiss!10527) (h!16939 lt!400283)))))

(declare-fun b!1168879 () Bool)

(declare-fun res!527717 () Bool)

(declare-fun e!749296 () Bool)

(assert (=> b!1168879 (=> (not res!527717) (not e!749296))))

(declare-fun to!267 () Int)

(declare-fun size!9084 (BalanceConc!7588) Int)

(assert (=> b!1168879 (= res!527717 (<= to!267 (size!9084 (tokens!1635 thiss!10527))))))

(declare-fun b!1168880 () Bool)

(assert (=> b!1168880 (= e!749296 e!749297)))

(declare-fun res!527720 () Bool)

(assert (=> b!1168880 (=> (not res!527720) (not e!749297))))

(declare-fun rulesInvariant!1579 (LexerInterface!1705 List!11563) Bool)

(assert (=> b!1168880 (= res!527720 (rulesInvariant!1579 Lexer!1703 (rules!9607 thiss!10527)))))

(declare-datatypes ((Unit!17711 0))(
  ( (Unit!17712) )
))
(declare-fun lt!400284 () Unit!17711)

(declare-fun lemmaInvariant!197 (PrintableTokens!706) Unit!17711)

(assert (=> b!1168880 (= lt!400284 (lemmaInvariant!197 thiss!10527))))

(declare-fun b!1168882 () Bool)

(declare-fun tp!334441 () Bool)

(declare-fun inv!15203 (Conc!3783) Bool)

(assert (=> b!1168882 (= e!749298 (and (inv!15203 (c!195166 (tokens!1635 thiss!10527))) tp!334441))))

(declare-fun b!1168883 () Bool)

(declare-fun forall!3036 (List!11562 Int) Bool)

(assert (=> b!1168883 (= e!749299 (forall!3036 lt!400283 lambda!47994))))

(declare-fun from!787 () Int)

(declare-fun lt!400281 () List!11562)

(declare-fun slice!318 (BalanceConc!7588 Int Int) BalanceConc!7588)

(assert (=> b!1168883 (= lt!400281 (list!4251 (slice!318 (tokens!1635 thiss!10527) from!787 to!267)))))

(declare-fun subseq!260 (List!11562 List!11562) Bool)

(declare-fun slice!319 (List!11562 Int Int) List!11562)

(assert (=> b!1168883 (subseq!260 (slice!319 lt!400283 from!787 to!267) lt!400283)))

(declare-fun lt!400282 () Unit!17711)

(declare-fun lemmaSliceSubseq!101 (List!11562 Int Int) Unit!17711)

(assert (=> b!1168883 (= lt!400282 (lemmaSliceSubseq!101 lt!400283 from!787 to!267))))

(declare-fun res!527719 () Bool)

(assert (=> start!102712 (=> (not res!527719) (not e!749296))))

(assert (=> start!102712 (= res!527719 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!102712 e!749296))

(assert (=> start!102712 true))

(declare-fun inv!15204 (PrintableTokens!706) Bool)

(assert (=> start!102712 (and (inv!15204 thiss!10527) e!749300)))

(declare-fun b!1168881 () Bool)

(assert (=> b!1168881 (= e!749301 (rulesProduceEachTokenIndividuallyList!571 Lexer!1703 (rules!9607 thiss!10527) (t!110516 lt!400283)))))

(assert (= (and start!102712 res!527719) b!1168879))

(assert (= (and b!1168879 res!527717) b!1168880))

(assert (= (and b!1168880 res!527720) b!1168877))

(assert (= (and b!1168877 (not res!527718)) b!1168878))

(assert (= (and b!1168878 res!527716) b!1168881))

(assert (= (and b!1168877 (not res!527721)) b!1168883))

(assert (= b!1168876 b!1168882))

(assert (= start!102712 b!1168876))

(declare-fun m!1341003 () Bool)

(assert (=> b!1168881 m!1341003))

(declare-fun m!1341005 () Bool)

(assert (=> b!1168878 m!1341005))

(declare-fun m!1341007 () Bool)

(assert (=> b!1168880 m!1341007))

(declare-fun m!1341009 () Bool)

(assert (=> b!1168880 m!1341009))

(declare-fun m!1341011 () Bool)

(assert (=> b!1168879 m!1341011))

(declare-fun m!1341013 () Bool)

(assert (=> b!1168883 m!1341013))

(declare-fun m!1341015 () Bool)

(assert (=> b!1168883 m!1341015))

(declare-fun m!1341017 () Bool)

(assert (=> b!1168883 m!1341017))

(declare-fun m!1341019 () Bool)

(assert (=> b!1168883 m!1341019))

(assert (=> b!1168883 m!1341013))

(declare-fun m!1341021 () Bool)

(assert (=> b!1168883 m!1341021))

(assert (=> b!1168883 m!1341021))

(declare-fun m!1341023 () Bool)

(assert (=> b!1168883 m!1341023))

(declare-fun m!1341025 () Bool)

(assert (=> b!1168876 m!1341025))

(declare-fun m!1341027 () Bool)

(assert (=> b!1168877 m!1341027))

(declare-fun m!1341029 () Bool)

(assert (=> b!1168877 m!1341029))

(declare-fun m!1341031 () Bool)

(assert (=> b!1168877 m!1341031))

(declare-fun m!1341033 () Bool)

(assert (=> b!1168877 m!1341033))

(assert (=> b!1168877 m!1341029))

(declare-fun m!1341035 () Bool)

(assert (=> b!1168882 m!1341035))

(declare-fun m!1341037 () Bool)

(assert (=> start!102712 m!1341037))

(push 1)

(assert (not b!1168881))

(assert (not b!1168877))

(assert (not b!1168890))

(assert (not b!1168878))

(assert (not b!1168876))

(assert (not b!1168879))

(assert (not b!1168883))

(assert (not b!1168880))

(assert (not b!1168891))

(assert (not b!1168882))

(assert (not start!102712))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!334310 () Bool)

(declare-fun take!73 (List!11562 Int) List!11562)

(declare-fun drop!483 (List!11562 Int) List!11562)

(assert (=> d!334310 (= (slice!319 lt!400283 from!787 to!267) (take!73 (drop!483 lt!400283 from!787) (- to!267 from!787)))))

(declare-fun bs!285454 () Bool)

(assert (= bs!285454 d!334310))

(declare-fun m!1341075 () Bool)

(assert (=> bs!285454 m!1341075))

(assert (=> bs!285454 m!1341075))

(declare-fun m!1341077 () Bool)

(assert (=> bs!285454 m!1341077))

(assert (=> b!1168883 d!334310))

(declare-fun d!334312 () Bool)

(declare-fun e!749343 () Bool)

(assert (=> d!334312 e!749343))

(declare-fun res!527752 () Bool)

(assert (=> d!334312 (=> (not res!527752) (not e!749343))))

(declare-fun isBalanced!1064 (Conc!3783) Bool)

(declare-fun slice!322 (Conc!3783 Int Int) Conc!3783)

(assert (=> d!334312 (= res!527752 (isBalanced!1064 (slice!322 (c!195166 (tokens!1635 thiss!10527)) from!787 to!267)))))

(declare-fun lt!400299 () BalanceConc!7588)

(assert (=> d!334312 (= lt!400299 (BalanceConc!7589 (slice!322 (c!195166 (tokens!1635 thiss!10527)) from!787 to!267)))))

(declare-fun e!749342 () Bool)

(assert (=> d!334312 e!749342))

(declare-fun res!527754 () Bool)

(assert (=> d!334312 (=> (not res!527754) (not e!749342))))

(assert (=> d!334312 (= res!527754 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!334312 (= (slice!318 (tokens!1635 thiss!10527) from!787 to!267) lt!400299)))

(declare-fun b!1168932 () Bool)

(declare-fun res!527753 () Bool)

(assert (=> b!1168932 (=> (not res!527753) (not e!749342))))

(assert (=> b!1168932 (= res!527753 (<= to!267 (size!9084 (tokens!1635 thiss!10527))))))

(declare-fun b!1168933 () Bool)

(assert (=> b!1168933 (= e!749342 (isBalanced!1064 (c!195166 (tokens!1635 thiss!10527))))))

(declare-fun b!1168934 () Bool)

(assert (=> b!1168934 (= e!749343 (= (list!4251 lt!400299) (slice!319 (list!4251 (tokens!1635 thiss!10527)) from!787 to!267)))))

(assert (= (and d!334312 res!527754) b!1168932))

(assert (= (and b!1168932 res!527753) b!1168933))

(assert (= (and d!334312 res!527752) b!1168934))

(declare-fun m!1341079 () Bool)

(assert (=> d!334312 m!1341079))

(assert (=> d!334312 m!1341079))

(declare-fun m!1341081 () Bool)

(assert (=> d!334312 m!1341081))

(assert (=> b!1168932 m!1341011))

(declare-fun m!1341083 () Bool)

(assert (=> b!1168933 m!1341083))

(declare-fun m!1341085 () Bool)

(assert (=> b!1168934 m!1341085))

(assert (=> b!1168934 m!1341033))

(assert (=> b!1168934 m!1341033))

(declare-fun m!1341087 () Bool)

(assert (=> b!1168934 m!1341087))

(assert (=> b!1168883 d!334312))

(declare-fun d!334316 () Bool)

(declare-fun res!527760 () Bool)

(declare-fun e!749349 () Bool)

(assert (=> d!334316 (=> res!527760 e!749349)))

(assert (=> d!334316 (= res!527760 (is-Nil!11538 lt!400283))))

(assert (=> d!334316 (= (forall!3036 lt!400283 lambda!47994) e!749349)))

(declare-fun b!1168940 () Bool)

(declare-fun e!749350 () Bool)

(assert (=> b!1168940 (= e!749349 e!749350)))

(declare-fun res!527761 () Bool)

(assert (=> b!1168940 (=> (not res!527761) (not e!749350))))

(declare-fun dynLambda!5082 (Int Token!3682) Bool)

(assert (=> b!1168940 (= res!527761 (dynLambda!5082 lambda!47994 (h!16939 lt!400283)))))

(declare-fun b!1168941 () Bool)

(assert (=> b!1168941 (= e!749350 (forall!3036 (t!110516 lt!400283) lambda!47994))))

(assert (= (and d!334316 (not res!527760)) b!1168940))

(assert (= (and b!1168940 res!527761) b!1168941))

(declare-fun b_lambda!34943 () Bool)

(assert (=> (not b_lambda!34943) (not b!1168940)))

(declare-fun m!1341093 () Bool)

(assert (=> b!1168940 m!1341093))

(declare-fun m!1341095 () Bool)

(assert (=> b!1168941 m!1341095))

(assert (=> b!1168883 d!334316))

(declare-fun d!334320 () Bool)

(assert (=> d!334320 (subseq!260 (slice!319 lt!400283 from!787 to!267) lt!400283)))

(declare-fun lt!400302 () Unit!17711)

(declare-fun choose!7536 (List!11562 Int Int) Unit!17711)

(assert (=> d!334320 (= lt!400302 (choose!7536 lt!400283 from!787 to!267))))

(declare-fun e!749353 () Bool)

(assert (=> d!334320 e!749353))

(declare-fun res!527764 () Bool)

(assert (=> d!334320 (=> (not res!527764) (not e!749353))))

(assert (=> d!334320 (= res!527764 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!334320 (= (lemmaSliceSubseq!101 lt!400283 from!787 to!267) lt!400302)))

(declare-fun b!1168944 () Bool)

(declare-fun size!9087 (List!11562) Int)

(assert (=> b!1168944 (= e!749353 (<= to!267 (size!9087 lt!400283)))))

(assert (= (and d!334320 res!527764) b!1168944))

(assert (=> d!334320 m!1341021))

(assert (=> d!334320 m!1341021))

(assert (=> d!334320 m!1341023))

(declare-fun m!1341097 () Bool)

(assert (=> d!334320 m!1341097))

(declare-fun m!1341099 () Bool)

(assert (=> b!1168944 m!1341099))

(assert (=> b!1168883 d!334320))

(declare-fun d!334322 () Bool)

(declare-fun list!4253 (Conc!3783) List!11562)

(assert (=> d!334322 (= (list!4251 (slice!318 (tokens!1635 thiss!10527) from!787 to!267)) (list!4253 (c!195166 (slice!318 (tokens!1635 thiss!10527) from!787 to!267))))))

(declare-fun bs!285455 () Bool)

(assert (= bs!285455 d!334322))

(declare-fun m!1341101 () Bool)

(assert (=> bs!285455 m!1341101))

(assert (=> b!1168883 d!334322))

(declare-fun b!1168953 () Bool)

(declare-fun e!749362 () Bool)

(declare-fun e!749363 () Bool)

(assert (=> b!1168953 (= e!749362 e!749363)))

(declare-fun res!527775 () Bool)

(assert (=> b!1168953 (=> (not res!527775) (not e!749363))))

(assert (=> b!1168953 (= res!527775 (is-Cons!11538 lt!400283))))

(declare-fun b!1168954 () Bool)

(declare-fun e!749365 () Bool)

(assert (=> b!1168954 (= e!749363 e!749365)))

(declare-fun res!527773 () Bool)

(assert (=> b!1168954 (=> res!527773 e!749365)))

(declare-fun e!749364 () Bool)

(assert (=> b!1168954 (= res!527773 e!749364)))

(declare-fun res!527774 () Bool)

(assert (=> b!1168954 (=> (not res!527774) (not e!749364))))

(assert (=> b!1168954 (= res!527774 (= (h!16939 (slice!319 lt!400283 from!787 to!267)) (h!16939 lt!400283)))))

(declare-fun b!1168956 () Bool)

(assert (=> b!1168956 (= e!749365 (subseq!260 (slice!319 lt!400283 from!787 to!267) (t!110516 lt!400283)))))

(declare-fun b!1168955 () Bool)

(assert (=> b!1168955 (= e!749364 (subseq!260 (t!110516 (slice!319 lt!400283 from!787 to!267)) (t!110516 lt!400283)))))

(declare-fun d!334324 () Bool)

(declare-fun res!527776 () Bool)

(assert (=> d!334324 (=> res!527776 e!749362)))

(assert (=> d!334324 (= res!527776 (is-Nil!11538 (slice!319 lt!400283 from!787 to!267)))))

(assert (=> d!334324 (= (subseq!260 (slice!319 lt!400283 from!787 to!267) lt!400283) e!749362)))

(assert (= (and d!334324 (not res!527776)) b!1168953))

(assert (= (and b!1168953 res!527775) b!1168954))

(assert (= (and b!1168954 res!527774) b!1168955))

(assert (= (and b!1168954 (not res!527773)) b!1168956))

(assert (=> b!1168956 m!1341021))

(declare-fun m!1341103 () Bool)

(assert (=> b!1168956 m!1341103))

(declare-fun m!1341105 () Bool)

(assert (=> b!1168955 m!1341105))

(assert (=> b!1168883 d!334324))

(declare-fun d!334326 () Bool)

(declare-fun lt!400308 () Bool)

(declare-fun e!749371 () Bool)

(assert (=> d!334326 (= lt!400308 e!749371)))

(declare-fun res!527783 () Bool)

(assert (=> d!334326 (=> (not res!527783) (not e!749371))))

(declare-datatypes ((tuple2!12032 0))(
  ( (tuple2!12033 (_1!6863 BalanceConc!7588) (_2!6863 BalanceConc!7586)) )
))
(declare-fun lex!706 (LexerInterface!1705 List!11563 BalanceConc!7586) tuple2!12032)

(declare-fun print!643 (LexerInterface!1705 BalanceConc!7588) BalanceConc!7586)

(declare-fun singletonSeq!671 (Token!3682) BalanceConc!7588)

(assert (=> d!334326 (= res!527783 (= (list!4251 (_1!6863 (lex!706 Lexer!1703 (rules!9607 thiss!10527) (print!643 Lexer!1703 (singletonSeq!671 (h!16939 lt!400283)))))) (list!4251 (singletonSeq!671 (h!16939 lt!400283)))))))

(declare-fun e!749370 () Bool)

(assert (=> d!334326 (= lt!400308 e!749370)))

(declare-fun res!527784 () Bool)

(assert (=> d!334326 (=> (not res!527784) (not e!749370))))

(declare-fun lt!400307 () tuple2!12032)

(assert (=> d!334326 (= res!527784 (= (size!9084 (_1!6863 lt!400307)) 1))))

(assert (=> d!334326 (= lt!400307 (lex!706 Lexer!1703 (rules!9607 thiss!10527) (print!643 Lexer!1703 (singletonSeq!671 (h!16939 lt!400283)))))))

(declare-fun isEmpty!7016 (List!11563) Bool)

(assert (=> d!334326 (not (isEmpty!7016 (rules!9607 thiss!10527)))))

(assert (=> d!334326 (= (rulesProduceIndividualToken!740 Lexer!1703 (rules!9607 thiss!10527) (h!16939 lt!400283)) lt!400308)))

(declare-fun b!1168963 () Bool)

(declare-fun res!527785 () Bool)

(assert (=> b!1168963 (=> (not res!527785) (not e!749370))))

(declare-fun apply!2492 (BalanceConc!7588 Int) Token!3682)

(assert (=> b!1168963 (= res!527785 (= (apply!2492 (_1!6863 lt!400307) 0) (h!16939 lt!400283)))))

(declare-fun b!1168964 () Bool)

(declare-fun isEmpty!7017 (BalanceConc!7586) Bool)

(assert (=> b!1168964 (= e!749370 (isEmpty!7017 (_2!6863 lt!400307)))))

(declare-fun b!1168965 () Bool)

(assert (=> b!1168965 (= e!749371 (isEmpty!7017 (_2!6863 (lex!706 Lexer!1703 (rules!9607 thiss!10527) (print!643 Lexer!1703 (singletonSeq!671 (h!16939 lt!400283)))))))))

(assert (= (and d!334326 res!527784) b!1168963))

(assert (= (and b!1168963 res!527785) b!1168964))

(assert (= (and d!334326 res!527783) b!1168965))

(declare-fun m!1341107 () Bool)

(assert (=> d!334326 m!1341107))

(declare-fun m!1341109 () Bool)

(assert (=> d!334326 m!1341109))

(declare-fun m!1341111 () Bool)

(assert (=> d!334326 m!1341111))

(assert (=> d!334326 m!1341107))

(declare-fun m!1341113 () Bool)

(assert (=> d!334326 m!1341113))

(declare-fun m!1341115 () Bool)

(assert (=> d!334326 m!1341115))

(assert (=> d!334326 m!1341111))

(declare-fun m!1341117 () Bool)

(assert (=> d!334326 m!1341117))

(declare-fun m!1341119 () Bool)

(assert (=> d!334326 m!1341119))

(assert (=> d!334326 m!1341111))

(declare-fun m!1341121 () Bool)

(assert (=> b!1168963 m!1341121))

(declare-fun m!1341123 () Bool)

(assert (=> b!1168964 m!1341123))

(assert (=> b!1168965 m!1341111))

(assert (=> b!1168965 m!1341111))

(assert (=> b!1168965 m!1341107))

(assert (=> b!1168965 m!1341107))

(assert (=> b!1168965 m!1341109))

(declare-fun m!1341125 () Bool)

(assert (=> b!1168965 m!1341125))

(assert (=> b!1168878 d!334326))

(declare-fun bs!285456 () Bool)

(declare-fun d!334328 () Bool)

(assert (= bs!285456 (and d!334328 b!1168877)))

(declare-fun lambda!48006 () Int)

(assert (=> bs!285456 (= lambda!48006 lambda!47994)))

(declare-fun b!1168979 () Bool)

(declare-fun e!749383 () Bool)

(assert (=> b!1168979 (= e!749383 true)))

(declare-fun b!1168978 () Bool)

(declare-fun e!749382 () Bool)

(assert (=> b!1168978 (= e!749382 e!749383)))

(declare-fun b!1168977 () Bool)

(declare-fun e!749381 () Bool)

(assert (=> b!1168977 (= e!749381 e!749382)))

(assert (=> d!334328 e!749381))

(assert (= b!1168978 b!1168979))

(assert (= b!1168977 b!1168978))

(assert (= (and d!334328 (is-Cons!11539 (rules!9607 thiss!10527))) b!1168977))

(declare-fun order!7071 () Int)

(declare-fun order!7073 () Int)

(declare-fun dynLambda!5083 (Int Int) Int)

(declare-fun dynLambda!5084 (Int Int) Int)

(assert (=> b!1168979 (< (dynLambda!5083 order!7071 (toValue!3111 (transformation!2010 (h!16940 (rules!9607 thiss!10527))))) (dynLambda!5084 order!7073 lambda!48006))))

(declare-fun order!7075 () Int)

(declare-fun dynLambda!5085 (Int Int) Int)

(assert (=> b!1168979 (< (dynLambda!5085 order!7075 (toChars!2970 (transformation!2010 (h!16940 (rules!9607 thiss!10527))))) (dynLambda!5084 order!7073 lambda!48006))))

(assert (=> d!334328 true))

(declare-fun e!749374 () Bool)

(assert (=> d!334328 e!749374))

(declare-fun res!527788 () Bool)

(assert (=> d!334328 (=> (not res!527788) (not e!749374))))

(declare-fun lt!400311 () Bool)

(assert (=> d!334328 (= res!527788 (= lt!400311 (forall!3036 (list!4251 (tokens!1635 thiss!10527)) lambda!48006)))))

(assert (=> d!334328 (= lt!400311 (forall!3035 (tokens!1635 thiss!10527) lambda!48006))))

(assert (=> d!334328 (not (isEmpty!7016 (rules!9607 thiss!10527)))))

(assert (=> d!334328 (= (rulesProduceEachTokenIndividually!743 Lexer!1703 (rules!9607 thiss!10527) (tokens!1635 thiss!10527)) lt!400311)))

(declare-fun b!1168968 () Bool)

(assert (=> b!1168968 (= e!749374 (= lt!400311 (rulesProduceEachTokenIndividuallyList!571 Lexer!1703 (rules!9607 thiss!10527) (list!4251 (tokens!1635 thiss!10527)))))))

(assert (= (and d!334328 res!527788) b!1168968))

(assert (=> d!334328 m!1341033))

(assert (=> d!334328 m!1341033))

(declare-fun m!1341127 () Bool)

(assert (=> d!334328 m!1341127))

(declare-fun m!1341129 () Bool)

(assert (=> d!334328 m!1341129))

(assert (=> d!334328 m!1341115))

(assert (=> b!1168968 m!1341033))

(assert (=> b!1168968 m!1341033))

(declare-fun m!1341131 () Bool)

(assert (=> b!1168968 m!1341131))

(assert (=> b!1168877 d!334328))

(declare-fun d!334330 () Bool)

(assert (=> d!334330 (= (list!4251 (tokens!1635 thiss!10527)) (list!4253 (c!195166 (tokens!1635 thiss!10527))))))

(declare-fun bs!285457 () Bool)

(assert (= bs!285457 d!334330))

(declare-fun m!1341133 () Bool)

(assert (=> bs!285457 m!1341133))

(assert (=> b!1168877 d!334330))

(declare-fun d!334332 () Bool)

(declare-fun lt!400314 () Bool)

(assert (=> d!334332 (= lt!400314 (forall!3036 (list!4251 (tokens!1635 thiss!10527)) lambda!47994))))

(declare-fun forall!3039 (Conc!3783 Int) Bool)

(assert (=> d!334332 (= lt!400314 (forall!3039 (c!195166 (tokens!1635 thiss!10527)) lambda!47994))))

(assert (=> d!334332 (= (forall!3035 (tokens!1635 thiss!10527) lambda!47994) lt!400314)))

(declare-fun bs!285458 () Bool)

(assert (= bs!285458 d!334332))

(assert (=> bs!285458 m!1341033))

(assert (=> bs!285458 m!1341033))

(declare-fun m!1341135 () Bool)

(assert (=> bs!285458 m!1341135))

(declare-fun m!1341137 () Bool)

(assert (=> bs!285458 m!1341137))

(assert (=> b!1168877 d!334332))

(declare-fun bs!285462 () Bool)

(declare-fun d!334334 () Bool)

(assert (= bs!285462 (and d!334334 b!1168877)))

(declare-fun lambda!48009 () Int)

(assert (=> bs!285462 (= lambda!48009 lambda!47994)))

(declare-fun bs!285463 () Bool)

(assert (= bs!285463 (and d!334334 d!334328)))

(assert (=> bs!285463 (= lambda!48009 lambda!48006)))

(declare-fun b!1169035 () Bool)

(declare-fun e!749428 () Bool)

(assert (=> b!1169035 (= e!749428 true)))

(declare-fun b!1169034 () Bool)

(declare-fun e!749427 () Bool)

(assert (=> b!1169034 (= e!749427 e!749428)))

(declare-fun b!1169033 () Bool)

(declare-fun e!749426 () Bool)

(assert (=> b!1169033 (= e!749426 e!749427)))

(assert (=> d!334334 e!749426))

(assert (= b!1169034 b!1169035))

(assert (= b!1169033 b!1169034))

(assert (= (and d!334334 (is-Cons!11539 (rules!9607 thiss!10527))) b!1169033))

(assert (=> b!1169035 (< (dynLambda!5083 order!7071 (toValue!3111 (transformation!2010 (h!16940 (rules!9607 thiss!10527))))) (dynLambda!5084 order!7073 lambda!48009))))

(assert (=> b!1169035 (< (dynLambda!5085 order!7075 (toChars!2970 (transformation!2010 (h!16940 (rules!9607 thiss!10527))))) (dynLambda!5084 order!7073 lambda!48009))))

(assert (=> d!334334 true))

(declare-fun lt!400323 () Bool)

(assert (=> d!334334 (= lt!400323 (forall!3036 lt!400283 lambda!48009))))

(declare-fun e!749424 () Bool)

(assert (=> d!334334 (= lt!400323 e!749424)))

(declare-fun res!527833 () Bool)

(assert (=> d!334334 (=> res!527833 e!749424)))

(assert (=> d!334334 (= res!527833 (not (is-Cons!11538 lt!400283)))))

(assert (=> d!334334 (not (isEmpty!7016 (rules!9607 thiss!10527)))))

(assert (=> d!334334 (= (rulesProduceEachTokenIndividuallyList!571 Lexer!1703 (rules!9607 thiss!10527) lt!400283) lt!400323)))

(declare-fun b!1169031 () Bool)

(declare-fun e!749425 () Bool)

(assert (=> b!1169031 (= e!749424 e!749425)))

(declare-fun res!527832 () Bool)

(assert (=> b!1169031 (=> (not res!527832) (not e!749425))))

(assert (=> b!1169031 (= res!527832 (rulesProduceIndividualToken!740 Lexer!1703 (rules!9607 thiss!10527) (h!16939 lt!400283)))))

(declare-fun b!1169032 () Bool)

(assert (=> b!1169032 (= e!749425 (rulesProduceEachTokenIndividuallyList!571 Lexer!1703 (rules!9607 thiss!10527) (t!110516 lt!400283)))))

(assert (= (and d!334334 (not res!527833)) b!1169031))

(assert (= (and b!1169031 res!527832) b!1169032))

(declare-fun m!1341173 () Bool)

(assert (=> d!334334 m!1341173))

(assert (=> d!334334 m!1341115))

(assert (=> b!1169031 m!1341005))

(assert (=> b!1169032 m!1341003))

(assert (=> b!1168877 d!334334))

(declare-fun d!334354 () Bool)

(declare-fun c!195177 () Bool)

(assert (=> d!334354 (= c!195177 (is-Node!3783 (c!195166 (tokens!1635 thiss!10527))))))

(declare-fun e!749433 () Bool)

(assert (=> d!334354 (= (inv!15203 (c!195166 (tokens!1635 thiss!10527))) e!749433)))

(declare-fun b!1169042 () Bool)

(declare-fun inv!15208 (Conc!3783) Bool)

(assert (=> b!1169042 (= e!749433 (inv!15208 (c!195166 (tokens!1635 thiss!10527))))))

(declare-fun b!1169043 () Bool)

(declare-fun e!749434 () Bool)

(assert (=> b!1169043 (= e!749433 e!749434)))

(declare-fun res!527836 () Bool)

(assert (=> b!1169043 (= res!527836 (not (is-Leaf!5799 (c!195166 (tokens!1635 thiss!10527)))))))

(assert (=> b!1169043 (=> res!527836 e!749434)))

(declare-fun b!1169044 () Bool)

(declare-fun inv!15209 (Conc!3783) Bool)

(assert (=> b!1169044 (= e!749434 (inv!15209 (c!195166 (tokens!1635 thiss!10527))))))

(assert (= (and d!334354 c!195177) b!1169042))

(assert (= (and d!334354 (not c!195177)) b!1169043))

(assert (= (and b!1169043 (not res!527836)) b!1169044))

(declare-fun m!1341175 () Bool)

(assert (=> b!1169042 m!1341175))

(declare-fun m!1341177 () Bool)

(assert (=> b!1169044 m!1341177))

(assert (=> b!1168882 d!334354))

(declare-fun bs!285464 () Bool)

(declare-fun d!334356 () Bool)

(assert (= bs!285464 (and d!334356 b!1168877)))

(declare-fun lambda!48010 () Int)

(assert (=> bs!285464 (= lambda!48010 lambda!47994)))

(declare-fun bs!285465 () Bool)

(assert (= bs!285465 (and d!334356 d!334328)))

(assert (=> bs!285465 (= lambda!48010 lambda!48006)))

(declare-fun bs!285466 () Bool)

(assert (= bs!285466 (and d!334356 d!334334)))

(assert (=> bs!285466 (= lambda!48010 lambda!48009)))

(declare-fun b!1169049 () Bool)

(declare-fun e!749439 () Bool)

(assert (=> b!1169049 (= e!749439 true)))

(declare-fun b!1169048 () Bool)

(declare-fun e!749438 () Bool)

(assert (=> b!1169048 (= e!749438 e!749439)))

(declare-fun b!1169047 () Bool)

(declare-fun e!749437 () Bool)

(assert (=> b!1169047 (= e!749437 e!749438)))

(assert (=> d!334356 e!749437))

(assert (= b!1169048 b!1169049))

(assert (= b!1169047 b!1169048))

(assert (= (and d!334356 (is-Cons!11539 (rules!9607 thiss!10527))) b!1169047))

(assert (=> b!1169049 (< (dynLambda!5083 order!7071 (toValue!3111 (transformation!2010 (h!16940 (rules!9607 thiss!10527))))) (dynLambda!5084 order!7073 lambda!48010))))

(assert (=> b!1169049 (< (dynLambda!5085 order!7075 (toChars!2970 (transformation!2010 (h!16940 (rules!9607 thiss!10527))))) (dynLambda!5084 order!7073 lambda!48010))))

(assert (=> d!334356 true))

(declare-fun lt!400324 () Bool)

(assert (=> d!334356 (= lt!400324 (forall!3036 (t!110516 lt!400283) lambda!48010))))

(declare-fun e!749435 () Bool)

(assert (=> d!334356 (= lt!400324 e!749435)))

(declare-fun res!527838 () Bool)

(assert (=> d!334356 (=> res!527838 e!749435)))

(assert (=> d!334356 (= res!527838 (not (is-Cons!11538 (t!110516 lt!400283))))))

(assert (=> d!334356 (not (isEmpty!7016 (rules!9607 thiss!10527)))))

(assert (=> d!334356 (= (rulesProduceEachTokenIndividuallyList!571 Lexer!1703 (rules!9607 thiss!10527) (t!110516 lt!400283)) lt!400324)))

(declare-fun b!1169045 () Bool)

(declare-fun e!749436 () Bool)

(assert (=> b!1169045 (= e!749435 e!749436)))

(declare-fun res!527837 () Bool)

(assert (=> b!1169045 (=> (not res!527837) (not e!749436))))

(assert (=> b!1169045 (= res!527837 (rulesProduceIndividualToken!740 Lexer!1703 (rules!9607 thiss!10527) (h!16939 (t!110516 lt!400283))))))

(declare-fun b!1169046 () Bool)

(assert (=> b!1169046 (= e!749436 (rulesProduceEachTokenIndividuallyList!571 Lexer!1703 (rules!9607 thiss!10527) (t!110516 (t!110516 lt!400283))))))

(assert (= (and d!334356 (not res!527838)) b!1169045))

(assert (= (and b!1169045 res!527837) b!1169046))

(declare-fun m!1341179 () Bool)

(assert (=> d!334356 m!1341179))

(assert (=> d!334356 m!1341115))

(declare-fun m!1341181 () Bool)

(assert (=> b!1169045 m!1341181))

(declare-fun m!1341183 () Bool)

(assert (=> b!1169046 m!1341183))

(assert (=> b!1168881 d!334356))

(declare-fun d!334358 () Bool)

(declare-fun res!527848 () Bool)

(declare-fun e!749454 () Bool)

(assert (=> d!334358 (=> (not res!527848) (not e!749454))))

(assert (=> d!334358 (= res!527848 (not (isEmpty!7016 (rules!9607 thiss!10527))))))

(assert (=> d!334358 (= (inv!15204 thiss!10527) e!749454)))

(declare-fun b!1169072 () Bool)

(declare-fun res!527849 () Bool)

(assert (=> b!1169072 (=> (not res!527849) (not e!749454))))

(assert (=> b!1169072 (= res!527849 (rulesInvariant!1579 Lexer!1703 (rules!9607 thiss!10527)))))

(declare-fun b!1169073 () Bool)

(declare-fun res!527850 () Bool)

(assert (=> b!1169073 (=> (not res!527850) (not e!749454))))

(assert (=> b!1169073 (= res!527850 (rulesProduceEachTokenIndividually!743 Lexer!1703 (rules!9607 thiss!10527) (tokens!1635 thiss!10527)))))

(declare-fun b!1169074 () Bool)

(declare-fun separableTokens!141 (LexerInterface!1705 BalanceConc!7588 List!11563) Bool)

(assert (=> b!1169074 (= e!749454 (separableTokens!141 Lexer!1703 (tokens!1635 thiss!10527) (rules!9607 thiss!10527)))))

(assert (= (and d!334358 res!527848) b!1169072))

(assert (= (and b!1169072 res!527849) b!1169073))

(assert (= (and b!1169073 res!527850) b!1169074))

(assert (=> d!334358 m!1341115))

(assert (=> b!1169072 m!1341007))

(assert (=> b!1169073 m!1341031))

(declare-fun m!1341195 () Bool)

(assert (=> b!1169074 m!1341195))

(assert (=> start!102712 d!334358))

(declare-fun d!334364 () Bool)

(assert (=> d!334364 (= (inv!15202 (tokens!1635 thiss!10527)) (isBalanced!1064 (c!195166 (tokens!1635 thiss!10527))))))

(declare-fun bs!285469 () Bool)

(assert (= bs!285469 d!334364))

(assert (=> bs!285469 m!1341083))

(assert (=> b!1168876 d!334364))

(declare-fun d!334366 () Bool)

(declare-fun res!527853 () Bool)

(declare-fun e!749457 () Bool)

(assert (=> d!334366 (=> (not res!527853) (not e!749457))))

(declare-fun rulesValid!704 (LexerInterface!1705 List!11563) Bool)

(assert (=> d!334366 (= res!527853 (rulesValid!704 Lexer!1703 (rules!9607 thiss!10527)))))

(assert (=> d!334366 (= (rulesInvariant!1579 Lexer!1703 (rules!9607 thiss!10527)) e!749457)))

(declare-fun b!1169077 () Bool)

(declare-datatypes ((List!11568 0))(
  ( (Nil!11544) (Cons!11544 (h!16945 String!13970) (t!110541 List!11568)) )
))
(declare-fun noDuplicateTag!704 (LexerInterface!1705 List!11563 List!11568) Bool)

(assert (=> b!1169077 (= e!749457 (noDuplicateTag!704 Lexer!1703 (rules!9607 thiss!10527) Nil!11544))))

(assert (= (and d!334366 res!527853) b!1169077))

(declare-fun m!1341197 () Bool)

(assert (=> d!334366 m!1341197))

(declare-fun m!1341199 () Bool)

(assert (=> b!1169077 m!1341199))

(assert (=> b!1168880 d!334366))

(declare-fun d!334368 () Bool)

(declare-fun e!749474 () Bool)

(assert (=> d!334368 e!749474))

(declare-fun res!527866 () Bool)

(assert (=> d!334368 (=> (not res!527866) (not e!749474))))

(assert (=> d!334368 (= res!527866 (rulesInvariant!1579 Lexer!1703 (rules!9607 thiss!10527)))))

(declare-fun Unit!17716 () Unit!17711)

(assert (=> d!334368 (= (lemmaInvariant!197 thiss!10527) Unit!17716)))

(declare-fun b!1169096 () Bool)

(declare-fun res!527867 () Bool)

(assert (=> b!1169096 (=> (not res!527867) (not e!749474))))

(assert (=> b!1169096 (= res!527867 (rulesProduceEachTokenIndividually!743 Lexer!1703 (rules!9607 thiss!10527) (tokens!1635 thiss!10527)))))

(declare-fun b!1169097 () Bool)

(assert (=> b!1169097 (= e!749474 (separableTokens!141 Lexer!1703 (tokens!1635 thiss!10527) (rules!9607 thiss!10527)))))

(assert (= (and d!334368 res!527866) b!1169096))

(assert (= (and b!1169096 res!527867) b!1169097))

(assert (=> d!334368 m!1341007))

(assert (=> b!1169096 m!1341031))

(assert (=> b!1169097 m!1341195))

(assert (=> b!1168880 d!334368))

(declare-fun d!334376 () Bool)

(declare-fun lt!400337 () Int)

(assert (=> d!334376 (= lt!400337 (size!9087 (list!4251 (tokens!1635 thiss!10527))))))

(declare-fun size!9088 (Conc!3783) Int)

(assert (=> d!334376 (= lt!400337 (size!9088 (c!195166 (tokens!1635 thiss!10527))))))

(assert (=> d!334376 (= (size!9084 (tokens!1635 thiss!10527)) lt!400337)))

(declare-fun bs!285476 () Bool)

(assert (= bs!285476 d!334376))

(assert (=> bs!285476 m!1341033))

(assert (=> bs!285476 m!1341033))

(declare-fun m!1341213 () Bool)

(assert (=> bs!285476 m!1341213))

(declare-fun m!1341215 () Bool)

(assert (=> bs!285476 m!1341215))

(assert (=> b!1168879 d!334376))

(declare-fun tp!334455 () Bool)

(declare-fun b!1169106 () Bool)

(declare-fun tp!334456 () Bool)

(declare-fun e!749479 () Bool)

(assert (=> b!1169106 (= e!749479 (and (inv!15203 (left!10088 (c!195166 (tokens!1635 thiss!10527)))) tp!334455 (inv!15203 (right!10418 (c!195166 (tokens!1635 thiss!10527)))) tp!334456))))

(declare-fun b!1169108 () Bool)

(declare-fun e!749480 () Bool)

(declare-fun tp!334457 () Bool)

(assert (=> b!1169108 (= e!749480 tp!334457)))

(declare-fun b!1169107 () Bool)

(declare-fun inv!15210 (IArray!7571) Bool)

(assert (=> b!1169107 (= e!749479 (and (inv!15210 (xs!6488 (c!195166 (tokens!1635 thiss!10527)))) e!749480))))

(assert (=> b!1168882 (= tp!334441 (and (inv!15203 (c!195166 (tokens!1635 thiss!10527))) e!749479))))

(assert (= (and b!1168882 (is-Node!3783 (c!195166 (tokens!1635 thiss!10527)))) b!1169106))

(assert (= b!1169107 b!1169108))

(assert (= (and b!1168882 (is-Leaf!5799 (c!195166 (tokens!1635 thiss!10527)))) b!1169107))

(declare-fun m!1341217 () Bool)

(assert (=> b!1169106 m!1341217))

(declare-fun m!1341219 () Bool)

(assert (=> b!1169106 m!1341219))

(declare-fun m!1341221 () Bool)

(assert (=> b!1169107 m!1341221))

(assert (=> b!1168882 m!1341035))

(declare-fun b!1169119 () Bool)

(declare-fun b_free!27821 () Bool)

(declare-fun b_next!28525 () Bool)

(assert (=> b!1169119 (= b_free!27821 (not b_next!28525))))

(declare-fun tp!334467 () Bool)

(declare-fun b_and!80721 () Bool)

(assert (=> b!1169119 (= tp!334467 b_and!80721)))

(declare-fun b_free!27823 () Bool)

(declare-fun b_next!28527 () Bool)

(assert (=> b!1169119 (= b_free!27823 (not b_next!28527))))

(declare-fun tp!334468 () Bool)

(declare-fun b_and!80723 () Bool)

(assert (=> b!1169119 (= tp!334468 b_and!80723)))

(declare-fun e!749489 () Bool)

(assert (=> b!1169119 (= e!749489 (and tp!334467 tp!334468))))

(declare-fun e!749490 () Bool)

(declare-fun tp!334469 () Bool)

(declare-fun b!1169118 () Bool)

(declare-fun inv!15199 (String!13970) Bool)

(declare-fun inv!15211 (TokenValueInjection!3852) Bool)

(assert (=> b!1169118 (= e!749490 (and tp!334469 (inv!15199 (tag!2272 (h!16940 (rules!9607 thiss!10527)))) (inv!15211 (transformation!2010 (h!16940 (rules!9607 thiss!10527)))) e!749489))))

(declare-fun b!1169117 () Bool)

(declare-fun e!749492 () Bool)

(declare-fun tp!334466 () Bool)

(assert (=> b!1169117 (= e!749492 (and e!749490 tp!334466))))

(assert (=> b!1168876 (= tp!334442 e!749492)))

(assert (= b!1169118 b!1169119))

(assert (= b!1169117 b!1169118))

(assert (= (and b!1168876 (is-Cons!11539 (rules!9607 thiss!10527))) b!1169117))

(declare-fun m!1341223 () Bool)

(assert (=> b!1169118 m!1341223))

(declare-fun m!1341225 () Bool)

(assert (=> b!1169118 m!1341225))

(declare-fun b!1169128 () Bool)

(declare-fun e!749497 () Bool)

(assert (=> b!1169128 (= e!749497 true)))

(declare-fun b!1169130 () Bool)

(declare-fun e!749498 () Bool)

(assert (=> b!1169130 (= e!749498 true)))

(declare-fun b!1169129 () Bool)

(assert (=> b!1169129 (= e!749497 e!749498)))

(assert (=> b!1168891 e!749497))

(assert (= (and b!1168891 (is-Node!3783 (c!195166 (tokens!1635 thiss!10527)))) b!1169128))

(assert (= b!1169129 b!1169130))

(assert (= (and b!1168891 (is-Leaf!5799 (c!195166 (tokens!1635 thiss!10527)))) b!1169129))

(declare-fun b!1169133 () Bool)

(declare-fun e!749501 () Bool)

(assert (=> b!1169133 (= e!749501 true)))

(declare-fun b!1169132 () Bool)

(declare-fun e!749500 () Bool)

(assert (=> b!1169132 (= e!749500 e!749501)))

(declare-fun b!1169131 () Bool)

(declare-fun e!749499 () Bool)

(assert (=> b!1169131 (= e!749499 e!749500)))

(assert (=> b!1168890 e!749499))

(assert (= b!1169132 b!1169133))

(assert (= b!1169131 b!1169132))

(assert (= (and b!1168890 (is-Cons!11539 (rules!9607 thiss!10527))) b!1169131))

(assert (=> b!1169133 (< (dynLambda!5083 order!7071 (toValue!3111 (transformation!2010 (h!16940 (rules!9607 thiss!10527))))) (dynLambda!5084 order!7073 lambda!47994))))

(assert (=> b!1169133 (< (dynLambda!5085 order!7075 (toChars!2970 (transformation!2010 (h!16940 (rules!9607 thiss!10527))))) (dynLambda!5084 order!7073 lambda!47994))))

(declare-fun b_lambda!34947 () Bool)

(assert (= b_lambda!34943 (or b!1168877 b_lambda!34947)))

(declare-fun bs!285477 () Bool)

(declare-fun d!334378 () Bool)

(assert (= bs!285477 (and d!334378 b!1168877)))

(assert (=> bs!285477 (= (dynLambda!5082 lambda!47994 (h!16939 lt!400283)) (rulesProduceIndividualToken!740 Lexer!1703 (rules!9607 thiss!10527) (h!16939 lt!400283)))))

(assert (=> bs!285477 m!1341005))

(assert (=> b!1168940 d!334378))

(push 1)

(assert (not b!1168882))

(assert (not b!1169074))

(assert (not d!334332))

(assert (not b_lambda!34947))

(assert (not b!1169047))

(assert (not b!1168963))

(assert (not d!334312))

(assert (not b!1169077))

(assert (not d!334310))

(assert (not b!1169097))

(assert (not b!1169131))

(assert (not d!334322))

(assert (not b!1169117))

(assert (not b!1168977))

(assert (not b!1169106))

(assert (not d!334330))

(assert (not b!1169118))

(assert (not b!1168941))

(assert (not b!1168955))

(assert (not b!1169032))

(assert (not d!334328))

(assert (not bs!285477))

(assert (not b!1169046))

(assert (not b!1169130))

(assert (not b!1169072))

(assert (not b!1168964))

(assert (not b!1169042))

(assert (not b!1169107))

(assert (not d!334358))

(assert (not b!1169033))

(assert b_and!80723)

(assert (not d!334320))

(assert (not b!1169044))

(assert (not b!1168934))

(assert (not b!1168933))

(assert (not b!1168944))

(assert (not d!334334))

(assert (not b!1168932))

(assert (not d!334366))

(assert (not d!334368))

(assert (not d!334364))

(assert (not b_next!28525))

(assert (not d!334356))

(assert (not d!334326))

(assert (not b!1168965))

(assert (not b!1169128))

(assert (not b!1169073))

(assert (not b!1169096))

(assert (not b_next!28527))

(assert (not b!1169108))

(assert (not b!1169031))

(assert b_and!80721)

(assert (not b!1168956))

(assert (not d!334376))

(assert (not b!1169045))

(assert (not b!1168968))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80721)

(assert b_and!80723)

(assert (not b_next!28525))

(assert (not b_next!28527))

(check-sat)

(pop 1)

