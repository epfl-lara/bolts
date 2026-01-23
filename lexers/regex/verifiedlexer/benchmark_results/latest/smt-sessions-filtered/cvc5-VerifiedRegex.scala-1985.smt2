; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!101024 () Bool)

(assert start!101024)

(declare-fun b!1156780 () Bool)

(declare-fun e!739967 () Bool)

(assert (=> b!1156780 (= e!739967 true)))

(declare-fun b!1156779 () Bool)

(declare-fun e!739966 () Bool)

(assert (=> b!1156779 (= e!739966 e!739967)))

(declare-fun b!1156761 () Bool)

(assert (=> b!1156761 e!739966))

(assert (= b!1156779 b!1156780))

(assert (= b!1156761 b!1156779))

(declare-fun e!739956 () Bool)

(declare-fun e!739957 () Bool)

(assert (=> b!1156761 (= e!739956 (not e!739957))))

(declare-fun res!520632 () Bool)

(assert (=> b!1156761 (=> res!520632 e!739957)))

(declare-datatypes ((List!11287 0))(
  ( (Nil!11263) (Cons!11263 (h!16664 (_ BitVec 16)) (t!109088 List!11287)) )
))
(declare-datatypes ((TokenValue!2016 0))(
  ( (FloatLiteralValue!4032 (text!14557 List!11287)) (TokenValueExt!2015 (__x!7743 Int)) (Broken!10080 (value!63547 List!11287)) (Object!2039) (End!2016) (Def!2016) (Underscore!2016) (Match!2016) (Else!2016) (Error!2016) (Case!2016) (If!2016) (Extends!2016) (Abstract!2016) (Class!2016) (Val!2016) (DelimiterValue!4032 (del!2076 List!11287)) (KeywordValue!2022 (value!63548 List!11287)) (CommentValue!4032 (value!63549 List!11287)) (WhitespaceValue!4032 (value!63550 List!11287)) (IndentationValue!2016 (value!63551 List!11287)) (String!13669) (Int32!2016) (Broken!10081 (value!63552 List!11287)) (Boolean!2017) (Unit!17287) (OperatorValue!2019 (op!2076 List!11287)) (IdentifierValue!4032 (value!63553 List!11287)) (IdentifierValue!4033 (value!63554 List!11287)) (WhitespaceValue!4033 (value!63555 List!11287)) (True!4032) (False!4032) (Broken!10082 (value!63556 List!11287)) (Broken!10083 (value!63557 List!11287)) (True!4033) (RightBrace!2016) (RightBracket!2016) (Colon!2016) (Null!2016) (Comma!2016) (LeftBracket!2016) (False!4033) (LeftBrace!2016) (ImaginaryLiteralValue!2016 (text!14558 List!11287)) (StringLiteralValue!6048 (value!63558 List!11287)) (EOFValue!2016 (value!63559 List!11287)) (IdentValue!2016 (value!63560 List!11287)) (DelimiterValue!4033 (value!63561 List!11287)) (DedentValue!2016 (value!63562 List!11287)) (NewLineValue!2016 (value!63563 List!11287)) (IntegerValue!6048 (value!63564 (_ BitVec 32)) (text!14559 List!11287)) (IntegerValue!6049 (value!63565 Int) (text!14560 List!11287)) (Times!2016) (Or!2016) (Equal!2016) (Minus!2016) (Broken!10084 (value!63566 List!11287)) (And!2016) (Div!2016) (LessEqual!2016) (Mod!2016) (Concat!5236) (Not!2016) (Plus!2016) (SpaceValue!2016 (value!63567 List!11287)) (IntegerValue!6050 (value!63568 Int) (text!14561 List!11287)) (StringLiteralValue!6049 (text!14562 List!11287)) (FloatLiteralValue!4033 (text!14563 List!11287)) (BytesLiteralValue!2016 (value!63569 List!11287)) (CommentValue!4033 (value!63570 List!11287)) (StringLiteralValue!6050 (value!63571 List!11287)) (ErrorTokenValue!2016 (msg!2077 List!11287)) )
))
(declare-datatypes ((C!6758 0))(
  ( (C!6759 (val!3635 Int)) )
))
(declare-datatypes ((Regex!3220 0))(
  ( (ElementMatch!3220 (c!194073 C!6758)) (Concat!5237 (regOne!6952 Regex!3220) (regTwo!6952 Regex!3220)) (EmptyExpr!3220) (Star!3220 (reg!3549 Regex!3220)) (EmptyLang!3220) (Union!3220 (regOne!6953 Regex!3220) (regTwo!6953 Regex!3220)) )
))
(declare-datatypes ((String!13670 0))(
  ( (String!13671 (value!63572 String)) )
))
(declare-datatypes ((List!11288 0))(
  ( (Nil!11264) (Cons!11264 (h!16665 C!6758) (t!109089 List!11288)) )
))
(declare-datatypes ((IArray!7329 0))(
  ( (IArray!7330 (innerList!3722 List!11288)) )
))
(declare-datatypes ((Conc!3662 0))(
  ( (Node!3662 (left!9821 Conc!3662) (right!10151 Conc!3662) (csize!7554 Int) (cheight!3873 Int)) (Leaf!5648 (xs!6367 IArray!7329) (csize!7555 Int)) (Empty!3662) )
))
(declare-datatypes ((BalanceConc!7346 0))(
  ( (BalanceConc!7347 (c!194074 Conc!3662)) )
))
(declare-datatypes ((TokenValueInjection!3732 0))(
  ( (TokenValueInjection!3733 (toValue!3051 Int) (toChars!2910 Int)) )
))
(declare-datatypes ((Rule!3700 0))(
  ( (Rule!3701 (regex!1950 Regex!3220) (tag!2212 String!13670) (isSeparator!1950 Bool) (transformation!1950 TokenValueInjection!3732)) )
))
(declare-datatypes ((Token!3562 0))(
  ( (Token!3563 (value!63573 TokenValue!2016) (rule!3371 Rule!3700) (size!8862 Int) (originalCharacters!2504 List!11288)) )
))
(declare-datatypes ((List!11289 0))(
  ( (Nil!11265) (Cons!11265 (h!16666 Token!3562) (t!109090 List!11289)) )
))
(declare-datatypes ((List!11290 0))(
  ( (Nil!11266) (Cons!11266 (h!16667 Rule!3700) (t!109091 List!11290)) )
))
(declare-datatypes ((IArray!7331 0))(
  ( (IArray!7332 (innerList!3723 List!11289)) )
))
(declare-datatypes ((Conc!3663 0))(
  ( (Node!3663 (left!9822 Conc!3663) (right!10152 Conc!3663) (csize!7556 Int) (cheight!3874 Int)) (Leaf!5649 (xs!6368 IArray!7331) (csize!7557 Int)) (Empty!3663) )
))
(declare-datatypes ((BalanceConc!7348 0))(
  ( (BalanceConc!7349 (c!194075 Conc!3663)) )
))
(declare-datatypes ((PrintableTokens!586 0))(
  ( (PrintableTokens!587 (rules!9429 List!11290) (tokens!1549 BalanceConc!7348)) )
))
(declare-fun thiss!10527 () PrintableTokens!586)

(declare-fun lambda!46732 () Int)

(declare-fun forall!2890 (BalanceConc!7348 Int) Bool)

(assert (=> b!1156761 (= res!520632 (not (forall!2890 (tokens!1549 thiss!10527) lambda!46732)))))

(declare-fun lt!393225 () List!11289)

(declare-fun e!739960 () Bool)

(declare-datatypes ((LexerInterface!1645 0))(
  ( (LexerInterfaceExt!1642 (__x!7744 Int)) (Lexer!1643) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!513 (LexerInterface!1645 List!11290 List!11289) Bool)

(assert (=> b!1156761 (= (rulesProduceEachTokenIndividuallyList!513 Lexer!1643 (rules!9429 thiss!10527) lt!393225) e!739960)))

(declare-fun res!520634 () Bool)

(assert (=> b!1156761 (=> res!520634 e!739960)))

(assert (=> b!1156761 (= res!520634 (not (is-Cons!11265 lt!393225)))))

(declare-fun list!4151 (BalanceConc!7348) List!11289)

(assert (=> b!1156761 (= lt!393225 (list!4151 (tokens!1549 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!684 (LexerInterface!1645 List!11290 BalanceConc!7348) Bool)

(assert (=> b!1156761 (= (rulesProduceEachTokenIndividually!684 Lexer!1643 (rules!9429 thiss!10527) (tokens!1549 thiss!10527)) (forall!2890 (tokens!1549 thiss!10527) lambda!46732))))

(declare-fun b!1156762 () Bool)

(declare-fun e!739952 () Bool)

(assert (=> b!1156762 (= e!739960 e!739952)))

(declare-fun res!520629 () Bool)

(assert (=> b!1156762 (=> (not res!520629) (not e!739952))))

(declare-fun rulesProduceIndividualToken!682 (LexerInterface!1645 List!11290 Token!3562) Bool)

(assert (=> b!1156762 (= res!520629 (rulesProduceIndividualToken!682 Lexer!1643 (rules!9429 thiss!10527) (h!16666 lt!393225)))))

(declare-fun b!1156763 () Bool)

(declare-fun e!739954 () Bool)

(declare-fun tp!333269 () Bool)

(declare-fun inv!14794 (Conc!3663) Bool)

(assert (=> b!1156763 (= e!739954 (and (inv!14794 (c!194075 (tokens!1549 thiss!10527))) tp!333269))))

(declare-fun b!1156764 () Bool)

(declare-fun res!520633 () Bool)

(declare-fun e!739958 () Bool)

(assert (=> b!1156764 (=> (not res!520633) (not e!739958))))

(declare-fun lt!393224 () BalanceConc!7348)

(assert (=> b!1156764 (= res!520633 (= (rulesProduceEachTokenIndividually!684 Lexer!1643 (rules!9429 thiss!10527) lt!393224) (forall!2890 lt!393224 lambda!46732)))))

(declare-fun e!739953 () Bool)

(declare-fun b!1156765 () Bool)

(declare-fun tp!333270 () Bool)

(declare-fun inv!14795 (BalanceConc!7348) Bool)

(assert (=> b!1156765 (= e!739953 (and tp!333270 (inv!14795 (tokens!1549 thiss!10527)) e!739954))))

(declare-fun res!520637 () Bool)

(declare-fun e!739961 () Bool)

(assert (=> start!101024 (=> (not res!520637) (not e!739961))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!101024 (= res!520637 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101024 e!739961))

(assert (=> start!101024 true))

(declare-fun inv!14796 (PrintableTokens!586) Bool)

(assert (=> start!101024 (and (inv!14796 thiss!10527) e!739953)))

(declare-fun b!1156766 () Bool)

(declare-fun e!739955 () Bool)

(declare-fun lt!393228 () List!11289)

(assert (=> b!1156766 (= e!739955 (rulesProduceEachTokenIndividuallyList!513 Lexer!1643 (rules!9429 thiss!10527) (t!109090 lt!393228)))))

(declare-fun b!1156767 () Bool)

(declare-fun e!739959 () Bool)

(assert (=> b!1156767 (= e!739958 (= (rulesProduceEachTokenIndividuallyList!513 Lexer!1643 (rules!9429 thiss!10527) lt!393228) e!739959))))

(declare-fun res!520630 () Bool)

(assert (=> b!1156767 (=> res!520630 e!739959)))

(assert (=> b!1156767 (= res!520630 (not (is-Cons!11265 lt!393228)))))

(declare-fun b!1156768 () Bool)

(assert (=> b!1156768 (= e!739959 e!739955)))

(declare-fun res!520628 () Bool)

(assert (=> b!1156768 (=> (not res!520628) (not e!739955))))

(assert (=> b!1156768 (= res!520628 (rulesProduceIndividualToken!682 Lexer!1643 (rules!9429 thiss!10527) (h!16666 lt!393228)))))

(declare-fun b!1156769 () Bool)

(assert (=> b!1156769 (= e!739961 e!739956)))

(declare-fun res!520631 () Bool)

(assert (=> b!1156769 (=> (not res!520631) (not e!739956))))

(declare-fun rulesInvariant!1519 (LexerInterface!1645 List!11290) Bool)

(assert (=> b!1156769 (= res!520631 (rulesInvariant!1519 Lexer!1643 (rules!9429 thiss!10527)))))

(declare-datatypes ((Unit!17288 0))(
  ( (Unit!17289) )
))
(declare-fun lt!393227 () Unit!17288)

(declare-fun lemmaInvariant!137 (PrintableTokens!586) Unit!17288)

(assert (=> b!1156769 (= lt!393227 (lemmaInvariant!137 thiss!10527))))

(declare-fun b!1156770 () Bool)

(declare-fun res!520636 () Bool)

(assert (=> b!1156770 (=> (not res!520636) (not e!739961))))

(declare-fun size!8863 (BalanceConc!7348) Int)

(assert (=> b!1156770 (= res!520636 (<= to!267 (size!8863 (tokens!1549 thiss!10527))))))

(declare-fun b!1156771 () Bool)

(declare-fun isBalanced!1034 (Conc!3663) Bool)

(assert (=> b!1156771 (= e!739957 (isBalanced!1034 (c!194075 (tokens!1549 thiss!10527))))))

(assert (=> b!1156771 e!739958))

(declare-fun res!520635 () Bool)

(assert (=> b!1156771 (=> (not res!520635) (not e!739958))))

(declare-fun forall!2891 (List!11289 Int) Bool)

(assert (=> b!1156771 (= res!520635 (forall!2891 lt!393228 lambda!46732))))

(declare-fun lt!393223 () Unit!17288)

(declare-fun lemmaForallSubseq!98 (List!11289 List!11289 Int) Unit!17288)

(assert (=> b!1156771 (= lt!393223 (lemmaForallSubseq!98 lt!393228 lt!393225 lambda!46732))))

(assert (=> b!1156771 (= lt!393228 (list!4151 lt!393224))))

(declare-fun slice!183 (BalanceConc!7348 Int Int) BalanceConc!7348)

(assert (=> b!1156771 (= lt!393224 (slice!183 (tokens!1549 thiss!10527) from!787 to!267))))

(declare-fun subseq!206 (List!11289 List!11289) Bool)

(declare-fun slice!184 (List!11289 Int Int) List!11289)

(assert (=> b!1156771 (subseq!206 (slice!184 lt!393225 from!787 to!267) lt!393225)))

(declare-fun lt!393226 () Unit!17288)

(declare-fun lemmaSliceSubseq!47 (List!11289 Int Int) Unit!17288)

(assert (=> b!1156771 (= lt!393226 (lemmaSliceSubseq!47 lt!393225 from!787 to!267))))

(declare-fun b!1156772 () Bool)

(assert (=> b!1156772 (= e!739952 (rulesProduceEachTokenIndividuallyList!513 Lexer!1643 (rules!9429 thiss!10527) (t!109090 lt!393225)))))

(assert (= (and start!101024 res!520637) b!1156770))

(assert (= (and b!1156770 res!520636) b!1156769))

(assert (= (and b!1156769 res!520631) b!1156761))

(assert (= (and b!1156761 (not res!520634)) b!1156762))

(assert (= (and b!1156762 res!520629) b!1156772))

(assert (= (and b!1156761 (not res!520632)) b!1156771))

(assert (= (and b!1156771 res!520635) b!1156764))

(assert (= (and b!1156764 res!520633) b!1156767))

(assert (= (and b!1156767 (not res!520630)) b!1156768))

(assert (= (and b!1156768 res!520628) b!1156766))

(assert (= b!1156765 b!1156763))

(assert (= start!101024 b!1156765))

(declare-fun m!1323519 () Bool)

(assert (=> b!1156761 m!1323519))

(assert (=> b!1156761 m!1323519))

(declare-fun m!1323521 () Bool)

(assert (=> b!1156761 m!1323521))

(declare-fun m!1323523 () Bool)

(assert (=> b!1156761 m!1323523))

(declare-fun m!1323525 () Bool)

(assert (=> b!1156761 m!1323525))

(declare-fun m!1323527 () Bool)

(assert (=> start!101024 m!1323527))

(declare-fun m!1323529 () Bool)

(assert (=> b!1156767 m!1323529))

(declare-fun m!1323531 () Bool)

(assert (=> b!1156768 m!1323531))

(declare-fun m!1323533 () Bool)

(assert (=> b!1156771 m!1323533))

(declare-fun m!1323535 () Bool)

(assert (=> b!1156771 m!1323535))

(declare-fun m!1323537 () Bool)

(assert (=> b!1156771 m!1323537))

(declare-fun m!1323539 () Bool)

(assert (=> b!1156771 m!1323539))

(declare-fun m!1323541 () Bool)

(assert (=> b!1156771 m!1323541))

(assert (=> b!1156771 m!1323533))

(declare-fun m!1323543 () Bool)

(assert (=> b!1156771 m!1323543))

(declare-fun m!1323545 () Bool)

(assert (=> b!1156771 m!1323545))

(declare-fun m!1323547 () Bool)

(assert (=> b!1156771 m!1323547))

(declare-fun m!1323549 () Bool)

(assert (=> b!1156769 m!1323549))

(declare-fun m!1323551 () Bool)

(assert (=> b!1156769 m!1323551))

(declare-fun m!1323553 () Bool)

(assert (=> b!1156763 m!1323553))

(declare-fun m!1323555 () Bool)

(assert (=> b!1156765 m!1323555))

(declare-fun m!1323557 () Bool)

(assert (=> b!1156766 m!1323557))

(declare-fun m!1323559 () Bool)

(assert (=> b!1156762 m!1323559))

(declare-fun m!1323561 () Bool)

(assert (=> b!1156772 m!1323561))

(declare-fun m!1323563 () Bool)

(assert (=> b!1156770 m!1323563))

(declare-fun m!1323565 () Bool)

(assert (=> b!1156764 m!1323565))

(declare-fun m!1323567 () Bool)

(assert (=> b!1156764 m!1323567))

(push 1)

(assert (not b!1156765))

(assert (not start!101024))

(assert (not b!1156780))

(assert (not b!1156779))

(assert (not b!1156764))

(assert (not b!1156772))

(assert (not b!1156767))

(assert (not b!1156769))

(assert (not b!1156766))

(assert (not b!1156768))

(assert (not b!1156771))

(assert (not b!1156763))

(assert (not b!1156761))

(assert (not b!1156762))

(assert (not b!1156770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!330602 () Bool)

(declare-fun lt!393249 () Int)

(declare-fun size!8866 (List!11289) Int)

(assert (=> d!330602 (= lt!393249 (size!8866 (list!4151 (tokens!1549 thiss!10527))))))

(declare-fun size!8867 (Conc!3663) Int)

(assert (=> d!330602 (= lt!393249 (size!8867 (c!194075 (tokens!1549 thiss!10527))))))

(assert (=> d!330602 (= (size!8863 (tokens!1549 thiss!10527)) lt!393249)))

(declare-fun bs!282965 () Bool)

(assert (= bs!282965 d!330602))

(assert (=> bs!282965 m!1323525))

(assert (=> bs!282965 m!1323525))

(declare-fun m!1323619 () Bool)

(assert (=> bs!282965 m!1323619))

(declare-fun m!1323621 () Bool)

(assert (=> bs!282965 m!1323621))

(assert (=> b!1156770 d!330602))

(declare-fun d!330604 () Bool)

(declare-fun res!520670 () Bool)

(declare-fun e!740006 () Bool)

(assert (=> d!330604 (=> (not res!520670) (not e!740006))))

(declare-fun rulesValid!675 (LexerInterface!1645 List!11290) Bool)

(assert (=> d!330604 (= res!520670 (rulesValid!675 Lexer!1643 (rules!9429 thiss!10527)))))

(assert (=> d!330604 (= (rulesInvariant!1519 Lexer!1643 (rules!9429 thiss!10527)) e!740006)))

(declare-fun b!1156827 () Bool)

(declare-datatypes ((List!11295 0))(
  ( (Nil!11271) (Cons!11271 (h!16672 String!13670) (t!109121 List!11295)) )
))
(declare-fun noDuplicateTag!675 (LexerInterface!1645 List!11290 List!11295) Bool)

(assert (=> b!1156827 (= e!740006 (noDuplicateTag!675 Lexer!1643 (rules!9429 thiss!10527) Nil!11271))))

(assert (= (and d!330604 res!520670) b!1156827))

(declare-fun m!1323623 () Bool)

(assert (=> d!330604 m!1323623))

(declare-fun m!1323625 () Bool)

(assert (=> b!1156827 m!1323625))

(assert (=> b!1156769 d!330604))

(declare-fun d!330606 () Bool)

(declare-fun e!740009 () Bool)

(assert (=> d!330606 e!740009))

(declare-fun res!520675 () Bool)

(assert (=> d!330606 (=> (not res!520675) (not e!740009))))

(assert (=> d!330606 (= res!520675 (rulesInvariant!1519 Lexer!1643 (rules!9429 thiss!10527)))))

(declare-fun Unit!17293 () Unit!17288)

(assert (=> d!330606 (= (lemmaInvariant!137 thiss!10527) Unit!17293)))

(declare-fun b!1156832 () Bool)

(declare-fun res!520676 () Bool)

(assert (=> b!1156832 (=> (not res!520676) (not e!740009))))

(assert (=> b!1156832 (= res!520676 (rulesProduceEachTokenIndividually!684 Lexer!1643 (rules!9429 thiss!10527) (tokens!1549 thiss!10527)))))

(declare-fun b!1156833 () Bool)

(declare-fun separableTokens!95 (LexerInterface!1645 BalanceConc!7348 List!11290) Bool)

(assert (=> b!1156833 (= e!740009 (separableTokens!95 Lexer!1643 (tokens!1549 thiss!10527) (rules!9429 thiss!10527)))))

(assert (= (and d!330606 res!520675) b!1156832))

(assert (= (and b!1156832 res!520676) b!1156833))

(assert (=> d!330606 m!1323549))

(assert (=> b!1156832 m!1323523))

(declare-fun m!1323627 () Bool)

(assert (=> b!1156833 m!1323627))

(assert (=> b!1156769 d!330606))

(declare-fun d!330608 () Bool)

(declare-fun e!740015 () Bool)

(assert (=> d!330608 e!740015))

(declare-fun res!520683 () Bool)

(assert (=> d!330608 (=> (not res!520683) (not e!740015))))

(declare-fun slice!187 (Conc!3663 Int Int) Conc!3663)

(assert (=> d!330608 (= res!520683 (isBalanced!1034 (slice!187 (c!194075 (tokens!1549 thiss!10527)) from!787 to!267)))))

(declare-fun lt!393252 () BalanceConc!7348)

(assert (=> d!330608 (= lt!393252 (BalanceConc!7349 (slice!187 (c!194075 (tokens!1549 thiss!10527)) from!787 to!267)))))

(declare-fun e!740014 () Bool)

(assert (=> d!330608 e!740014))

(declare-fun res!520685 () Bool)

(assert (=> d!330608 (=> (not res!520685) (not e!740014))))

(assert (=> d!330608 (= res!520685 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!330608 (= (slice!183 (tokens!1549 thiss!10527) from!787 to!267) lt!393252)))

(declare-fun b!1156840 () Bool)

(declare-fun res!520684 () Bool)

(assert (=> b!1156840 (=> (not res!520684) (not e!740014))))

(assert (=> b!1156840 (= res!520684 (<= to!267 (size!8863 (tokens!1549 thiss!10527))))))

(declare-fun b!1156841 () Bool)

(assert (=> b!1156841 (= e!740014 (isBalanced!1034 (c!194075 (tokens!1549 thiss!10527))))))

(declare-fun b!1156842 () Bool)

(assert (=> b!1156842 (= e!740015 (= (list!4151 lt!393252) (slice!184 (list!4151 (tokens!1549 thiss!10527)) from!787 to!267)))))

(assert (= (and d!330608 res!520685) b!1156840))

(assert (= (and b!1156840 res!520684) b!1156841))

(assert (= (and d!330608 res!520683) b!1156842))

(declare-fun m!1323629 () Bool)

(assert (=> d!330608 m!1323629))

(assert (=> d!330608 m!1323629))

(declare-fun m!1323631 () Bool)

(assert (=> d!330608 m!1323631))

(assert (=> b!1156840 m!1323563))

(assert (=> b!1156841 m!1323539))

(declare-fun m!1323633 () Bool)

(assert (=> b!1156842 m!1323633))

(assert (=> b!1156842 m!1323525))

(assert (=> b!1156842 m!1323525))

(declare-fun m!1323635 () Bool)

(assert (=> b!1156842 m!1323635))

(assert (=> b!1156771 d!330608))

(declare-fun b!1156852 () Bool)

(declare-fun e!740027 () Bool)

(declare-fun e!740026 () Bool)

(assert (=> b!1156852 (= e!740027 e!740026)))

(declare-fun res!520695 () Bool)

(assert (=> b!1156852 (=> res!520695 e!740026)))

(declare-fun e!740025 () Bool)

(assert (=> b!1156852 (= res!520695 e!740025)))

(declare-fun res!520696 () Bool)

(assert (=> b!1156852 (=> (not res!520696) (not e!740025))))

(assert (=> b!1156852 (= res!520696 (= (h!16666 (slice!184 lt!393225 from!787 to!267)) (h!16666 lt!393225)))))

(declare-fun b!1156854 () Bool)

(assert (=> b!1156854 (= e!740026 (subseq!206 (slice!184 lt!393225 from!787 to!267) (t!109090 lt!393225)))))

(declare-fun b!1156851 () Bool)

(declare-fun e!740024 () Bool)

(assert (=> b!1156851 (= e!740024 e!740027)))

(declare-fun res!520697 () Bool)

(assert (=> b!1156851 (=> (not res!520697) (not e!740027))))

(assert (=> b!1156851 (= res!520697 (is-Cons!11265 lt!393225))))

(declare-fun b!1156853 () Bool)

(assert (=> b!1156853 (= e!740025 (subseq!206 (t!109090 (slice!184 lt!393225 from!787 to!267)) (t!109090 lt!393225)))))

(declare-fun d!330610 () Bool)

(declare-fun res!520694 () Bool)

(assert (=> d!330610 (=> res!520694 e!740024)))

(assert (=> d!330610 (= res!520694 (is-Nil!11265 (slice!184 lt!393225 from!787 to!267)))))

(assert (=> d!330610 (= (subseq!206 (slice!184 lt!393225 from!787 to!267) lt!393225) e!740024)))

(assert (= (and d!330610 (not res!520694)) b!1156851))

(assert (= (and b!1156851 res!520697) b!1156852))

(assert (= (and b!1156852 res!520696) b!1156853))

(assert (= (and b!1156852 (not res!520695)) b!1156854))

(assert (=> b!1156854 m!1323533))

(declare-fun m!1323637 () Bool)

(assert (=> b!1156854 m!1323637))

(declare-fun m!1323639 () Bool)

(assert (=> b!1156853 m!1323639))

(assert (=> b!1156771 d!330610))

(declare-fun d!330612 () Bool)

(assert (=> d!330612 (forall!2891 lt!393228 lambda!46732)))

(declare-fun lt!393255 () Unit!17288)

(declare-fun choose!7424 (List!11289 List!11289 Int) Unit!17288)

(assert (=> d!330612 (= lt!393255 (choose!7424 lt!393228 lt!393225 lambda!46732))))

(assert (=> d!330612 (forall!2891 lt!393225 lambda!46732)))

(assert (=> d!330612 (= (lemmaForallSubseq!98 lt!393228 lt!393225 lambda!46732) lt!393255)))

(declare-fun bs!282966 () Bool)

(assert (= bs!282966 d!330612))

(assert (=> bs!282966 m!1323541))

(declare-fun m!1323641 () Bool)

(assert (=> bs!282966 m!1323641))

(declare-fun m!1323643 () Bool)

(assert (=> bs!282966 m!1323643))

(assert (=> b!1156771 d!330612))

(declare-fun d!330614 () Bool)

(assert (=> d!330614 (subseq!206 (slice!184 lt!393225 from!787 to!267) lt!393225)))

(declare-fun lt!393258 () Unit!17288)

(declare-fun choose!7425 (List!11289 Int Int) Unit!17288)

(assert (=> d!330614 (= lt!393258 (choose!7425 lt!393225 from!787 to!267))))

(declare-fun e!740030 () Bool)

(assert (=> d!330614 e!740030))

(declare-fun res!520700 () Bool)

(assert (=> d!330614 (=> (not res!520700) (not e!740030))))

(assert (=> d!330614 (= res!520700 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!330614 (= (lemmaSliceSubseq!47 lt!393225 from!787 to!267) lt!393258)))

(declare-fun b!1156857 () Bool)

(assert (=> b!1156857 (= e!740030 (<= to!267 (size!8866 lt!393225)))))

(assert (= (and d!330614 res!520700) b!1156857))

(assert (=> d!330614 m!1323533))

(assert (=> d!330614 m!1323533))

(assert (=> d!330614 m!1323543))

(declare-fun m!1323645 () Bool)

(assert (=> d!330614 m!1323645))

(declare-fun m!1323647 () Bool)

(assert (=> b!1156857 m!1323647))

(assert (=> b!1156771 d!330614))

(declare-fun b!1156870 () Bool)

(declare-fun e!740035 () Bool)

(declare-fun e!740036 () Bool)

(assert (=> b!1156870 (= e!740035 e!740036)))

(declare-fun res!520713 () Bool)

(assert (=> b!1156870 (=> (not res!520713) (not e!740036))))

(declare-fun height!501 (Conc!3663) Int)

(assert (=> b!1156870 (= res!520713 (<= (- 1) (- (height!501 (left!9822 (c!194075 (tokens!1549 thiss!10527)))) (height!501 (right!10152 (c!194075 (tokens!1549 thiss!10527)))))))))

(declare-fun d!330616 () Bool)

(declare-fun res!520717 () Bool)

(assert (=> d!330616 (=> res!520717 e!740035)))

(assert (=> d!330616 (= res!520717 (not (is-Node!3663 (c!194075 (tokens!1549 thiss!10527)))))))

(assert (=> d!330616 (= (isBalanced!1034 (c!194075 (tokens!1549 thiss!10527))) e!740035)))

(declare-fun b!1156871 () Bool)

(declare-fun res!520714 () Bool)

(assert (=> b!1156871 (=> (not res!520714) (not e!740036))))

(declare-fun isEmpty!6934 (Conc!3663) Bool)

(assert (=> b!1156871 (= res!520714 (not (isEmpty!6934 (left!9822 (c!194075 (tokens!1549 thiss!10527))))))))

(declare-fun b!1156872 () Bool)

(declare-fun res!520716 () Bool)

(assert (=> b!1156872 (=> (not res!520716) (not e!740036))))

(assert (=> b!1156872 (= res!520716 (<= (- (height!501 (left!9822 (c!194075 (tokens!1549 thiss!10527)))) (height!501 (right!10152 (c!194075 (tokens!1549 thiss!10527))))) 1))))

(declare-fun b!1156873 () Bool)

(declare-fun res!520718 () Bool)

(assert (=> b!1156873 (=> (not res!520718) (not e!740036))))

(assert (=> b!1156873 (= res!520718 (isBalanced!1034 (right!10152 (c!194075 (tokens!1549 thiss!10527)))))))

(declare-fun b!1156874 () Bool)

(declare-fun res!520715 () Bool)

(assert (=> b!1156874 (=> (not res!520715) (not e!740036))))

(assert (=> b!1156874 (= res!520715 (isBalanced!1034 (left!9822 (c!194075 (tokens!1549 thiss!10527)))))))

(declare-fun b!1156875 () Bool)

(assert (=> b!1156875 (= e!740036 (not (isEmpty!6934 (right!10152 (c!194075 (tokens!1549 thiss!10527))))))))

(assert (= (and d!330616 (not res!520717)) b!1156870))

(assert (= (and b!1156870 res!520713) b!1156872))

(assert (= (and b!1156872 res!520716) b!1156874))

(assert (= (and b!1156874 res!520715) b!1156873))

(assert (= (and b!1156873 res!520718) b!1156871))

(assert (= (and b!1156871 res!520714) b!1156875))

(declare-fun m!1323649 () Bool)

(assert (=> b!1156873 m!1323649))

(declare-fun m!1323651 () Bool)

(assert (=> b!1156872 m!1323651))

(declare-fun m!1323653 () Bool)

(assert (=> b!1156872 m!1323653))

(declare-fun m!1323655 () Bool)

(assert (=> b!1156874 m!1323655))

(declare-fun m!1323657 () Bool)

(assert (=> b!1156875 m!1323657))

(assert (=> b!1156870 m!1323651))

(assert (=> b!1156870 m!1323653))

(declare-fun m!1323659 () Bool)

(assert (=> b!1156871 m!1323659))

(assert (=> b!1156771 d!330616))

(declare-fun d!330618 () Bool)

(declare-fun take!44 (List!11289 Int) List!11289)

(declare-fun drop!446 (List!11289 Int) List!11289)

(assert (=> d!330618 (= (slice!184 lt!393225 from!787 to!267) (take!44 (drop!446 lt!393225 from!787) (- to!267 from!787)))))

(declare-fun bs!282967 () Bool)

(assert (= bs!282967 d!330618))

(declare-fun m!1323661 () Bool)

(assert (=> bs!282967 m!1323661))

(assert (=> bs!282967 m!1323661))

(declare-fun m!1323663 () Bool)

(assert (=> bs!282967 m!1323663))

(assert (=> b!1156771 d!330618))

(declare-fun d!330620 () Bool)

(declare-fun res!520723 () Bool)

(declare-fun e!740041 () Bool)

(assert (=> d!330620 (=> res!520723 e!740041)))

(assert (=> d!330620 (= res!520723 (is-Nil!11265 lt!393228))))

(assert (=> d!330620 (= (forall!2891 lt!393228 lambda!46732) e!740041)))

(declare-fun b!1156880 () Bool)

(declare-fun e!740042 () Bool)

(assert (=> b!1156880 (= e!740041 e!740042)))

(declare-fun res!520724 () Bool)

(assert (=> b!1156880 (=> (not res!520724) (not e!740042))))

(declare-fun dynLambda!4963 (Int Token!3562) Bool)

(assert (=> b!1156880 (= res!520724 (dynLambda!4963 lambda!46732 (h!16666 lt!393228)))))

(declare-fun b!1156881 () Bool)

(assert (=> b!1156881 (= e!740042 (forall!2891 (t!109090 lt!393228) lambda!46732))))

(assert (= (and d!330620 (not res!520723)) b!1156880))

(assert (= (and b!1156880 res!520724) b!1156881))

(declare-fun b_lambda!34559 () Bool)

(assert (=> (not b_lambda!34559) (not b!1156880)))

(declare-fun m!1323665 () Bool)

(assert (=> b!1156880 m!1323665))

(declare-fun m!1323667 () Bool)

(assert (=> b!1156881 m!1323667))

(assert (=> b!1156771 d!330620))

(declare-fun d!330622 () Bool)

(declare-fun list!4153 (Conc!3663) List!11289)

(assert (=> d!330622 (= (list!4151 lt!393224) (list!4153 (c!194075 lt!393224)))))

(declare-fun bs!282968 () Bool)

(assert (= bs!282968 d!330622))

(declare-fun m!1323669 () Bool)

(assert (=> bs!282968 m!1323669))

(assert (=> b!1156771 d!330622))

(declare-fun d!330624 () Bool)

(declare-fun res!520743 () Bool)

(declare-fun e!740057 () Bool)

(assert (=> d!330624 (=> (not res!520743) (not e!740057))))

(declare-fun isEmpty!6935 (List!11290) Bool)

(assert (=> d!330624 (= res!520743 (not (isEmpty!6935 (rules!9429 thiss!10527))))))

(assert (=> d!330624 (= (inv!14796 thiss!10527) e!740057)))

(declare-fun b!1156906 () Bool)

(declare-fun res!520744 () Bool)

(assert (=> b!1156906 (=> (not res!520744) (not e!740057))))

(assert (=> b!1156906 (= res!520744 (rulesInvariant!1519 Lexer!1643 (rules!9429 thiss!10527)))))

(declare-fun b!1156907 () Bool)

(declare-fun res!520745 () Bool)

(assert (=> b!1156907 (=> (not res!520745) (not e!740057))))

(assert (=> b!1156907 (= res!520745 (rulesProduceEachTokenIndividually!684 Lexer!1643 (rules!9429 thiss!10527) (tokens!1549 thiss!10527)))))

(declare-fun b!1156908 () Bool)

(assert (=> b!1156908 (= e!740057 (separableTokens!95 Lexer!1643 (tokens!1549 thiss!10527) (rules!9429 thiss!10527)))))

(assert (= (and d!330624 res!520743) b!1156906))

(assert (= (and b!1156906 res!520744) b!1156907))

(assert (= (and b!1156907 res!520745) b!1156908))

(declare-fun m!1323695 () Bool)

(assert (=> d!330624 m!1323695))

(assert (=> b!1156906 m!1323549))

(assert (=> b!1156907 m!1323523))

(assert (=> b!1156908 m!1323627))

(assert (=> start!101024 d!330624))

(declare-fun bs!282971 () Bool)

(declare-fun d!330630 () Bool)

(assert (= bs!282971 (and d!330630 b!1156761)))

(declare-fun lambda!46749 () Int)

(assert (=> bs!282971 (= lambda!46749 lambda!46732)))

(declare-fun b!1156941 () Bool)

(declare-fun e!740084 () Bool)

(assert (=> b!1156941 (= e!740084 true)))

(declare-fun b!1156940 () Bool)

(declare-fun e!740083 () Bool)

(assert (=> b!1156940 (= e!740083 e!740084)))

(declare-fun b!1156939 () Bool)

(declare-fun e!740082 () Bool)

(assert (=> b!1156939 (= e!740082 e!740083)))

(assert (=> d!330630 e!740082))

(assert (= b!1156940 b!1156941))

(assert (= b!1156939 b!1156940))

(assert (= (and d!330630 (is-Cons!11266 (rules!9429 thiss!10527))) b!1156939))

(declare-fun order!6897 () Int)

(declare-fun order!6899 () Int)

(declare-fun dynLambda!4964 (Int Int) Int)

(declare-fun dynLambda!4965 (Int Int) Int)

(assert (=> b!1156941 (< (dynLambda!4964 order!6897 (toValue!3051 (transformation!1950 (h!16667 (rules!9429 thiss!10527))))) (dynLambda!4965 order!6899 lambda!46749))))

(declare-fun order!6901 () Int)

(declare-fun dynLambda!4966 (Int Int) Int)

(assert (=> b!1156941 (< (dynLambda!4966 order!6901 (toChars!2910 (transformation!1950 (h!16667 (rules!9429 thiss!10527))))) (dynLambda!4965 order!6899 lambda!46749))))

(assert (=> d!330630 true))

(declare-fun lt!393273 () Bool)

(assert (=> d!330630 (= lt!393273 (forall!2891 lt!393228 lambda!46749))))

(declare-fun e!740074 () Bool)

(assert (=> d!330630 (= lt!393273 e!740074)))

(declare-fun res!520754 () Bool)

(assert (=> d!330630 (=> res!520754 e!740074)))

(assert (=> d!330630 (= res!520754 (not (is-Cons!11265 lt!393228)))))

(assert (=> d!330630 (not (isEmpty!6935 (rules!9429 thiss!10527)))))

(assert (=> d!330630 (= (rulesProduceEachTokenIndividuallyList!513 Lexer!1643 (rules!9429 thiss!10527) lt!393228) lt!393273)))

(declare-fun b!1156929 () Bool)

(declare-fun e!740075 () Bool)

(assert (=> b!1156929 (= e!740074 e!740075)))

(declare-fun res!520753 () Bool)

(assert (=> b!1156929 (=> (not res!520753) (not e!740075))))

(assert (=> b!1156929 (= res!520753 (rulesProduceIndividualToken!682 Lexer!1643 (rules!9429 thiss!10527) (h!16666 lt!393228)))))

(declare-fun b!1156930 () Bool)

(assert (=> b!1156930 (= e!740075 (rulesProduceEachTokenIndividuallyList!513 Lexer!1643 (rules!9429 thiss!10527) (t!109090 lt!393228)))))

(assert (= (and d!330630 (not res!520754)) b!1156929))

(assert (= (and b!1156929 res!520753) b!1156930))

(declare-fun m!1323707 () Bool)

(assert (=> d!330630 m!1323707))

(assert (=> d!330630 m!1323695))

(assert (=> b!1156929 m!1323531))

(assert (=> b!1156930 m!1323557))

(assert (=> b!1156767 d!330630))

(declare-fun d!330636 () Bool)

(declare-fun lt!393292 () Bool)

(declare-fun e!740127 () Bool)

(assert (=> d!330636 (= lt!393292 e!740127)))

(declare-fun res!520801 () Bool)

(assert (=> d!330636 (=> (not res!520801) (not e!740127))))

(declare-datatypes ((tuple2!11972 0))(
  ( (tuple2!11973 (_1!6833 BalanceConc!7348) (_2!6833 BalanceConc!7346)) )
))
(declare-fun lex!679 (LexerInterface!1645 List!11290 BalanceConc!7346) tuple2!11972)

(declare-fun print!616 (LexerInterface!1645 BalanceConc!7348) BalanceConc!7346)

(declare-fun singletonSeq!634 (Token!3562) BalanceConc!7348)

(assert (=> d!330636 (= res!520801 (= (list!4151 (_1!6833 (lex!679 Lexer!1643 (rules!9429 thiss!10527) (print!616 Lexer!1643 (singletonSeq!634 (h!16666 lt!393228)))))) (list!4151 (singletonSeq!634 (h!16666 lt!393228)))))))

(declare-fun e!740128 () Bool)

(assert (=> d!330636 (= lt!393292 e!740128)))

(declare-fun res!520800 () Bool)

(assert (=> d!330636 (=> (not res!520800) (not e!740128))))

(declare-fun lt!393293 () tuple2!11972)

(assert (=> d!330636 (= res!520800 (= (size!8863 (_1!6833 lt!393293)) 1))))

(assert (=> d!330636 (= lt!393293 (lex!679 Lexer!1643 (rules!9429 thiss!10527) (print!616 Lexer!1643 (singletonSeq!634 (h!16666 lt!393228)))))))

(assert (=> d!330636 (not (isEmpty!6935 (rules!9429 thiss!10527)))))

(assert (=> d!330636 (= (rulesProduceIndividualToken!682 Lexer!1643 (rules!9429 thiss!10527) (h!16666 lt!393228)) lt!393292)))

(declare-fun b!1156992 () Bool)

(declare-fun res!520802 () Bool)

(assert (=> b!1156992 (=> (not res!520802) (not e!740128))))

(declare-fun apply!2403 (BalanceConc!7348 Int) Token!3562)

(assert (=> b!1156992 (= res!520802 (= (apply!2403 (_1!6833 lt!393293) 0) (h!16666 lt!393228)))))

(declare-fun b!1156993 () Bool)

(declare-fun isEmpty!6936 (BalanceConc!7346) Bool)

(assert (=> b!1156993 (= e!740128 (isEmpty!6936 (_2!6833 lt!393293)))))

(declare-fun b!1156994 () Bool)

(assert (=> b!1156994 (= e!740127 (isEmpty!6936 (_2!6833 (lex!679 Lexer!1643 (rules!9429 thiss!10527) (print!616 Lexer!1643 (singletonSeq!634 (h!16666 lt!393228)))))))))

(assert (= (and d!330636 res!520800) b!1156992))

(assert (= (and b!1156992 res!520802) b!1156993))

(assert (= (and d!330636 res!520801) b!1156994))

(declare-fun m!1323763 () Bool)

(assert (=> d!330636 m!1323763))

(declare-fun m!1323765 () Bool)

(assert (=> d!330636 m!1323765))

(declare-fun m!1323767 () Bool)

(assert (=> d!330636 m!1323767))

(assert (=> d!330636 m!1323765))

(assert (=> d!330636 m!1323767))

(declare-fun m!1323769 () Bool)

(assert (=> d!330636 m!1323769))

(declare-fun m!1323771 () Bool)

(assert (=> d!330636 m!1323771))

(assert (=> d!330636 m!1323695))

(assert (=> d!330636 m!1323765))

(declare-fun m!1323773 () Bool)

(assert (=> d!330636 m!1323773))

(declare-fun m!1323775 () Bool)

(assert (=> b!1156992 m!1323775))

(declare-fun m!1323777 () Bool)

(assert (=> b!1156993 m!1323777))

(assert (=> b!1156994 m!1323765))

(assert (=> b!1156994 m!1323765))

(assert (=> b!1156994 m!1323767))

(assert (=> b!1156994 m!1323767))

(assert (=> b!1156994 m!1323769))

(declare-fun m!1323779 () Bool)

(assert (=> b!1156994 m!1323779))

(assert (=> b!1156768 d!330636))

(declare-fun bs!282977 () Bool)

(declare-fun d!330656 () Bool)

(assert (= bs!282977 (and d!330656 b!1156761)))

(declare-fun lambda!46757 () Int)

(assert (=> bs!282977 (= lambda!46757 lambda!46732)))

(declare-fun bs!282978 () Bool)

(assert (= bs!282978 (and d!330656 d!330630)))

(assert (=> bs!282978 (= lambda!46757 lambda!46749)))

(declare-fun b!1157018 () Bool)

(declare-fun e!740140 () Bool)

(assert (=> b!1157018 (= e!740140 true)))

(declare-fun b!1157017 () Bool)

(declare-fun e!740139 () Bool)

(assert (=> b!1157017 (= e!740139 e!740140)))

(declare-fun b!1157016 () Bool)

(declare-fun e!740138 () Bool)

(assert (=> b!1157016 (= e!740138 e!740139)))

(assert (=> d!330656 e!740138))

(assert (= b!1157017 b!1157018))

(assert (= b!1157016 b!1157017))

(assert (= (and d!330656 (is-Cons!11266 (rules!9429 thiss!10527))) b!1157016))

(assert (=> b!1157018 (< (dynLambda!4964 order!6897 (toValue!3051 (transformation!1950 (h!16667 (rules!9429 thiss!10527))))) (dynLambda!4965 order!6899 lambda!46757))))

(assert (=> b!1157018 (< (dynLambda!4966 order!6901 (toChars!2910 (transformation!1950 (h!16667 (rules!9429 thiss!10527))))) (dynLambda!4965 order!6899 lambda!46757))))

(assert (=> d!330656 true))

(declare-fun e!740137 () Bool)

(assert (=> d!330656 e!740137))

(declare-fun res!520823 () Bool)

(assert (=> d!330656 (=> (not res!520823) (not e!740137))))

(declare-fun lt!393296 () Bool)

(assert (=> d!330656 (= res!520823 (= lt!393296 (forall!2891 (list!4151 lt!393224) lambda!46757)))))

(assert (=> d!330656 (= lt!393296 (forall!2890 lt!393224 lambda!46757))))

(assert (=> d!330656 (not (isEmpty!6935 (rules!9429 thiss!10527)))))

(assert (=> d!330656 (= (rulesProduceEachTokenIndividually!684 Lexer!1643 (rules!9429 thiss!10527) lt!393224) lt!393296)))

(declare-fun b!1157015 () Bool)

(assert (=> b!1157015 (= e!740137 (= lt!393296 (rulesProduceEachTokenIndividuallyList!513 Lexer!1643 (rules!9429 thiss!10527) (list!4151 lt!393224))))))

(assert (= (and d!330656 res!520823) b!1157015))

(assert (=> d!330656 m!1323535))

(assert (=> d!330656 m!1323535))

(declare-fun m!1323793 () Bool)

(assert (=> d!330656 m!1323793))

(declare-fun m!1323795 () Bool)

(assert (=> d!330656 m!1323795))

(assert (=> d!330656 m!1323695))

(assert (=> b!1157015 m!1323535))

(assert (=> b!1157015 m!1323535))

(declare-fun m!1323797 () Bool)

(assert (=> b!1157015 m!1323797))

(assert (=> b!1156764 d!330656))

(declare-fun d!330660 () Bool)

(declare-fun lt!393299 () Bool)

(assert (=> d!330660 (= lt!393299 (forall!2891 (list!4151 lt!393224) lambda!46732))))

(declare-fun forall!2894 (Conc!3663 Int) Bool)

(assert (=> d!330660 (= lt!393299 (forall!2894 (c!194075 lt!393224) lambda!46732))))

(assert (=> d!330660 (= (forall!2890 lt!393224 lambda!46732) lt!393299)))

(declare-fun bs!282979 () Bool)

(assert (= bs!282979 d!330660))

(assert (=> bs!282979 m!1323535))

(assert (=> bs!282979 m!1323535))

(declare-fun m!1323799 () Bool)

(assert (=> bs!282979 m!1323799))

(declare-fun m!1323801 () Bool)

(assert (=> bs!282979 m!1323801))

(assert (=> b!1156764 d!330660))

(declare-fun bs!282980 () Bool)

(declare-fun d!330662 () Bool)

(assert (= bs!282980 (and d!330662 b!1156761)))

(declare-fun lambda!46758 () Int)

(assert (=> bs!282980 (= lambda!46758 lambda!46732)))

(declare-fun bs!282981 () Bool)

(assert (= bs!282981 (and d!330662 d!330630)))

(assert (=> bs!282981 (= lambda!46758 lambda!46749)))

(declare-fun bs!282982 () Bool)

(assert (= bs!282982 (and d!330662 d!330656)))

(assert (=> bs!282982 (= lambda!46758 lambda!46757)))

(declare-fun b!1157023 () Bool)

(declare-fun e!740145 () Bool)

(assert (=> b!1157023 (= e!740145 true)))

(declare-fun b!1157022 () Bool)

(declare-fun e!740144 () Bool)

(assert (=> b!1157022 (= e!740144 e!740145)))

(declare-fun b!1157021 () Bool)

(declare-fun e!740143 () Bool)

(assert (=> b!1157021 (= e!740143 e!740144)))

(assert (=> d!330662 e!740143))

(assert (= b!1157022 b!1157023))

(assert (= b!1157021 b!1157022))

(assert (= (and d!330662 (is-Cons!11266 (rules!9429 thiss!10527))) b!1157021))

(assert (=> b!1157023 (< (dynLambda!4964 order!6897 (toValue!3051 (transformation!1950 (h!16667 (rules!9429 thiss!10527))))) (dynLambda!4965 order!6899 lambda!46758))))

(assert (=> b!1157023 (< (dynLambda!4966 order!6901 (toChars!2910 (transformation!1950 (h!16667 (rules!9429 thiss!10527))))) (dynLambda!4965 order!6899 lambda!46758))))

(assert (=> d!330662 true))

(declare-fun lt!393300 () Bool)

(assert (=> d!330662 (= lt!393300 (forall!2891 (t!109090 lt!393228) lambda!46758))))

(declare-fun e!740141 () Bool)

(assert (=> d!330662 (= lt!393300 e!740141)))

(declare-fun res!520825 () Bool)

(assert (=> d!330662 (=> res!520825 e!740141)))

(assert (=> d!330662 (= res!520825 (not (is-Cons!11265 (t!109090 lt!393228))))))

(assert (=> d!330662 (not (isEmpty!6935 (rules!9429 thiss!10527)))))

(assert (=> d!330662 (= (rulesProduceEachTokenIndividuallyList!513 Lexer!1643 (rules!9429 thiss!10527) (t!109090 lt!393228)) lt!393300)))

(declare-fun b!1157019 () Bool)

(declare-fun e!740142 () Bool)

(assert (=> b!1157019 (= e!740141 e!740142)))

(declare-fun res!520824 () Bool)

(assert (=> b!1157019 (=> (not res!520824) (not e!740142))))

(assert (=> b!1157019 (= res!520824 (rulesProduceIndividualToken!682 Lexer!1643 (rules!9429 thiss!10527) (h!16666 (t!109090 lt!393228))))))

(declare-fun b!1157020 () Bool)

(assert (=> b!1157020 (= e!740142 (rulesProduceEachTokenIndividuallyList!513 Lexer!1643 (rules!9429 thiss!10527) (t!109090 (t!109090 lt!393228))))))

(assert (= (and d!330662 (not res!520825)) b!1157019))

(assert (= (and b!1157019 res!520824) b!1157020))

(declare-fun m!1323803 () Bool)

(assert (=> d!330662 m!1323803))

(assert (=> d!330662 m!1323695))

(declare-fun m!1323805 () Bool)

(assert (=> b!1157019 m!1323805))

(declare-fun m!1323807 () Bool)

(assert (=> b!1157020 m!1323807))

(assert (=> b!1156766 d!330662))

(declare-fun d!330664 () Bool)

(assert (=> d!330664 (= (inv!14795 (tokens!1549 thiss!10527)) (isBalanced!1034 (c!194075 (tokens!1549 thiss!10527))))))

(declare-fun bs!282983 () Bool)

(assert (= bs!282983 d!330664))

(assert (=> bs!282983 m!1323539))

(assert (=> b!1156765 d!330664))

(declare-fun d!330666 () Bool)

(declare-fun lt!393301 () Bool)

(declare-fun e!740146 () Bool)

(assert (=> d!330666 (= lt!393301 e!740146)))

(declare-fun res!520827 () Bool)

(assert (=> d!330666 (=> (not res!520827) (not e!740146))))

(assert (=> d!330666 (= res!520827 (= (list!4151 (_1!6833 (lex!679 Lexer!1643 (rules!9429 thiss!10527) (print!616 Lexer!1643 (singletonSeq!634 (h!16666 lt!393225)))))) (list!4151 (singletonSeq!634 (h!16666 lt!393225)))))))

(declare-fun e!740147 () Bool)

(assert (=> d!330666 (= lt!393301 e!740147)))

(declare-fun res!520826 () Bool)

(assert (=> d!330666 (=> (not res!520826) (not e!740147))))

(declare-fun lt!393302 () tuple2!11972)

(assert (=> d!330666 (= res!520826 (= (size!8863 (_1!6833 lt!393302)) 1))))

(assert (=> d!330666 (= lt!393302 (lex!679 Lexer!1643 (rules!9429 thiss!10527) (print!616 Lexer!1643 (singletonSeq!634 (h!16666 lt!393225)))))))

(assert (=> d!330666 (not (isEmpty!6935 (rules!9429 thiss!10527)))))

(assert (=> d!330666 (= (rulesProduceIndividualToken!682 Lexer!1643 (rules!9429 thiss!10527) (h!16666 lt!393225)) lt!393301)))

(declare-fun b!1157024 () Bool)

(declare-fun res!520828 () Bool)

(assert (=> b!1157024 (=> (not res!520828) (not e!740147))))

(assert (=> b!1157024 (= res!520828 (= (apply!2403 (_1!6833 lt!393302) 0) (h!16666 lt!393225)))))

(declare-fun b!1157025 () Bool)

(assert (=> b!1157025 (= e!740147 (isEmpty!6936 (_2!6833 lt!393302)))))

(declare-fun b!1157026 () Bool)

(assert (=> b!1157026 (= e!740146 (isEmpty!6936 (_2!6833 (lex!679 Lexer!1643 (rules!9429 thiss!10527) (print!616 Lexer!1643 (singletonSeq!634 (h!16666 lt!393225)))))))))

(assert (= (and d!330666 res!520826) b!1157024))

(assert (= (and b!1157024 res!520828) b!1157025))

(assert (= (and d!330666 res!520827) b!1157026))

(declare-fun m!1323809 () Bool)

(assert (=> d!330666 m!1323809))

(declare-fun m!1323811 () Bool)

(assert (=> d!330666 m!1323811))

(declare-fun m!1323813 () Bool)

(assert (=> d!330666 m!1323813))

(assert (=> d!330666 m!1323811))

(assert (=> d!330666 m!1323813))

(declare-fun m!1323815 () Bool)

(assert (=> d!330666 m!1323815))

(declare-fun m!1323817 () Bool)

(assert (=> d!330666 m!1323817))

(assert (=> d!330666 m!1323695))

(assert (=> d!330666 m!1323811))

(declare-fun m!1323819 () Bool)

(assert (=> d!330666 m!1323819))

(declare-fun m!1323821 () Bool)

(assert (=> b!1157024 m!1323821))

(declare-fun m!1323823 () Bool)

(assert (=> b!1157025 m!1323823))

(assert (=> b!1157026 m!1323811))

(assert (=> b!1157026 m!1323811))

(assert (=> b!1157026 m!1323813))

(assert (=> b!1157026 m!1323813))

(assert (=> b!1157026 m!1323815))

(declare-fun m!1323825 () Bool)

(assert (=> b!1157026 m!1323825))

(assert (=> b!1156762 d!330666))

(declare-fun bs!282984 () Bool)

(declare-fun d!330668 () Bool)

(assert (= bs!282984 (and d!330668 b!1156761)))

(declare-fun lambda!46759 () Int)

(assert (=> bs!282984 (= lambda!46759 lambda!46732)))

(declare-fun bs!282985 () Bool)

(assert (= bs!282985 (and d!330668 d!330630)))

(assert (=> bs!282985 (= lambda!46759 lambda!46749)))

(declare-fun bs!282986 () Bool)

(assert (= bs!282986 (and d!330668 d!330656)))

(assert (=> bs!282986 (= lambda!46759 lambda!46757)))

(declare-fun bs!282987 () Bool)

(assert (= bs!282987 (and d!330668 d!330662)))

(assert (=> bs!282987 (= lambda!46759 lambda!46758)))

(declare-fun b!1157031 () Bool)

(declare-fun e!740152 () Bool)

(assert (=> b!1157031 (= e!740152 true)))

(declare-fun b!1157030 () Bool)

(declare-fun e!740151 () Bool)

(assert (=> b!1157030 (= e!740151 e!740152)))

(declare-fun b!1157029 () Bool)

(declare-fun e!740150 () Bool)

(assert (=> b!1157029 (= e!740150 e!740151)))

(assert (=> d!330668 e!740150))

(assert (= b!1157030 b!1157031))

(assert (= b!1157029 b!1157030))

(assert (= (and d!330668 (is-Cons!11266 (rules!9429 thiss!10527))) b!1157029))

(assert (=> b!1157031 (< (dynLambda!4964 order!6897 (toValue!3051 (transformation!1950 (h!16667 (rules!9429 thiss!10527))))) (dynLambda!4965 order!6899 lambda!46759))))

(assert (=> b!1157031 (< (dynLambda!4966 order!6901 (toChars!2910 (transformation!1950 (h!16667 (rules!9429 thiss!10527))))) (dynLambda!4965 order!6899 lambda!46759))))

(assert (=> d!330668 true))

(declare-fun lt!393303 () Bool)

(assert (=> d!330668 (= lt!393303 (forall!2891 (t!109090 lt!393225) lambda!46759))))

(declare-fun e!740148 () Bool)

(assert (=> d!330668 (= lt!393303 e!740148)))

(declare-fun res!520830 () Bool)

(assert (=> d!330668 (=> res!520830 e!740148)))

(assert (=> d!330668 (= res!520830 (not (is-Cons!11265 (t!109090 lt!393225))))))

(assert (=> d!330668 (not (isEmpty!6935 (rules!9429 thiss!10527)))))

(assert (=> d!330668 (= (rulesProduceEachTokenIndividuallyList!513 Lexer!1643 (rules!9429 thiss!10527) (t!109090 lt!393225)) lt!393303)))

(declare-fun b!1157027 () Bool)

(declare-fun e!740149 () Bool)

(assert (=> b!1157027 (= e!740148 e!740149)))

(declare-fun res!520829 () Bool)

(assert (=> b!1157027 (=> (not res!520829) (not e!740149))))

(assert (=> b!1157027 (= res!520829 (rulesProduceIndividualToken!682 Lexer!1643 (rules!9429 thiss!10527) (h!16666 (t!109090 lt!393225))))))

(declare-fun b!1157028 () Bool)

(assert (=> b!1157028 (= e!740149 (rulesProduceEachTokenIndividuallyList!513 Lexer!1643 (rules!9429 thiss!10527) (t!109090 (t!109090 lt!393225))))))

(assert (= (and d!330668 (not res!520830)) b!1157027))

(assert (= (and b!1157027 res!520829) b!1157028))

(declare-fun m!1323827 () Bool)

(assert (=> d!330668 m!1323827))

(assert (=> d!330668 m!1323695))

(declare-fun m!1323829 () Bool)

(assert (=> b!1157027 m!1323829))

(declare-fun m!1323831 () Bool)

(assert (=> b!1157028 m!1323831))

(assert (=> b!1156772 d!330668))

(declare-fun bs!282988 () Bool)

(declare-fun d!330670 () Bool)

(assert (= bs!282988 (and d!330670 d!330668)))

(declare-fun lambda!46760 () Int)

(assert (=> bs!282988 (= lambda!46760 lambda!46759)))

(declare-fun bs!282989 () Bool)

(assert (= bs!282989 (and d!330670 b!1156761)))

(assert (=> bs!282989 (= lambda!46760 lambda!46732)))

(declare-fun bs!282990 () Bool)

(assert (= bs!282990 (and d!330670 d!330630)))

(assert (=> bs!282990 (= lambda!46760 lambda!46749)))

(declare-fun bs!282991 () Bool)

(assert (= bs!282991 (and d!330670 d!330662)))

(assert (=> bs!282991 (= lambda!46760 lambda!46758)))

(declare-fun bs!282992 () Bool)

(assert (= bs!282992 (and d!330670 d!330656)))

(assert (=> bs!282992 (= lambda!46760 lambda!46757)))

(declare-fun b!1157037 () Bool)

(declare-fun e!740158 () Bool)

(assert (=> b!1157037 (= e!740158 true)))

(declare-fun b!1157036 () Bool)

(declare-fun e!740157 () Bool)

(assert (=> b!1157036 (= e!740157 e!740158)))

(declare-fun b!1157035 () Bool)

(declare-fun e!740156 () Bool)

(assert (=> b!1157035 (= e!740156 e!740157)))

(assert (=> d!330670 e!740156))

(assert (= b!1157036 b!1157037))

(assert (= b!1157035 b!1157036))

(assert (= (and d!330670 (is-Cons!11266 (rules!9429 thiss!10527))) b!1157035))

(assert (=> b!1157037 (< (dynLambda!4964 order!6897 (toValue!3051 (transformation!1950 (h!16667 (rules!9429 thiss!10527))))) (dynLambda!4965 order!6899 lambda!46760))))

(assert (=> b!1157037 (< (dynLambda!4966 order!6901 (toChars!2910 (transformation!1950 (h!16667 (rules!9429 thiss!10527))))) (dynLambda!4965 order!6899 lambda!46760))))

(assert (=> d!330670 true))

(declare-fun e!740153 () Bool)

(assert (=> d!330670 e!740153))

(declare-fun res!520831 () Bool)

(assert (=> d!330670 (=> (not res!520831) (not e!740153))))

(declare-fun lt!393304 () Bool)

(assert (=> d!330670 (= res!520831 (= lt!393304 (forall!2891 (list!4151 (tokens!1549 thiss!10527)) lambda!46760)))))

(assert (=> d!330670 (= lt!393304 (forall!2890 (tokens!1549 thiss!10527) lambda!46760))))

(assert (=> d!330670 (not (isEmpty!6935 (rules!9429 thiss!10527)))))

(assert (=> d!330670 (= (rulesProduceEachTokenIndividually!684 Lexer!1643 (rules!9429 thiss!10527) (tokens!1549 thiss!10527)) lt!393304)))

(declare-fun b!1157032 () Bool)

(assert (=> b!1157032 (= e!740153 (= lt!393304 (rulesProduceEachTokenIndividuallyList!513 Lexer!1643 (rules!9429 thiss!10527) (list!4151 (tokens!1549 thiss!10527)))))))

(assert (= (and d!330670 res!520831) b!1157032))

(assert (=> d!330670 m!1323525))

(assert (=> d!330670 m!1323525))

(declare-fun m!1323833 () Bool)

(assert (=> d!330670 m!1323833))

(declare-fun m!1323835 () Bool)

(assert (=> d!330670 m!1323835))

(assert (=> d!330670 m!1323695))

(assert (=> b!1157032 m!1323525))

(assert (=> b!1157032 m!1323525))

(declare-fun m!1323837 () Bool)

(assert (=> b!1157032 m!1323837))

(assert (=> b!1156761 d!330670))

(declare-fun bs!282993 () Bool)

(declare-fun d!330672 () Bool)

(assert (= bs!282993 (and d!330672 d!330668)))

(declare-fun lambda!46761 () Int)

(assert (=> bs!282993 (= lambda!46761 lambda!46759)))

(declare-fun bs!282994 () Bool)

(assert (= bs!282994 (and d!330672 b!1156761)))

(assert (=> bs!282994 (= lambda!46761 lambda!46732)))

(declare-fun bs!282995 () Bool)

(assert (= bs!282995 (and d!330672 d!330670)))

(assert (=> bs!282995 (= lambda!46761 lambda!46760)))

(declare-fun bs!282996 () Bool)

(assert (= bs!282996 (and d!330672 d!330630)))

(assert (=> bs!282996 (= lambda!46761 lambda!46749)))

(declare-fun bs!282997 () Bool)

(assert (= bs!282997 (and d!330672 d!330662)))

(assert (=> bs!282997 (= lambda!46761 lambda!46758)))

(declare-fun bs!282998 () Bool)

(assert (= bs!282998 (and d!330672 d!330656)))

(assert (=> bs!282998 (= lambda!46761 lambda!46757)))

(declare-fun b!1157046 () Bool)

(declare-fun e!740163 () Bool)

(assert (=> b!1157046 (= e!740163 true)))

(declare-fun b!1157045 () Bool)

(declare-fun e!740162 () Bool)

(assert (=> b!1157045 (= e!740162 e!740163)))

(declare-fun b!1157044 () Bool)

(declare-fun e!740161 () Bool)

(assert (=> b!1157044 (= e!740161 e!740162)))

(assert (=> d!330672 e!740161))

(assert (= b!1157045 b!1157046))

(assert (= b!1157044 b!1157045))

(assert (= (and d!330672 (is-Cons!11266 (rules!9429 thiss!10527))) b!1157044))

(assert (=> b!1157046 (< (dynLambda!4964 order!6897 (toValue!3051 (transformation!1950 (h!16667 (rules!9429 thiss!10527))))) (dynLambda!4965 order!6899 lambda!46761))))

(assert (=> b!1157046 (< (dynLambda!4966 order!6901 (toChars!2910 (transformation!1950 (h!16667 (rules!9429 thiss!10527))))) (dynLambda!4965 order!6899 lambda!46761))))

(assert (=> d!330672 true))

(declare-fun lt!393305 () Bool)

(assert (=> d!330672 (= lt!393305 (forall!2891 lt!393225 lambda!46761))))

(declare-fun e!740159 () Bool)

(assert (=> d!330672 (= lt!393305 e!740159)))

(declare-fun res!520839 () Bool)

(assert (=> d!330672 (=> res!520839 e!740159)))

(assert (=> d!330672 (= res!520839 (not (is-Cons!11265 lt!393225)))))

(assert (=> d!330672 (not (isEmpty!6935 (rules!9429 thiss!10527)))))

(assert (=> d!330672 (= (rulesProduceEachTokenIndividuallyList!513 Lexer!1643 (rules!9429 thiss!10527) lt!393225) lt!393305)))

(declare-fun b!1157042 () Bool)

(declare-fun e!740160 () Bool)

(assert (=> b!1157042 (= e!740159 e!740160)))

(declare-fun res!520838 () Bool)

(assert (=> b!1157042 (=> (not res!520838) (not e!740160))))

(assert (=> b!1157042 (= res!520838 (rulesProduceIndividualToken!682 Lexer!1643 (rules!9429 thiss!10527) (h!16666 lt!393225)))))

(declare-fun b!1157043 () Bool)

(assert (=> b!1157043 (= e!740160 (rulesProduceEachTokenIndividuallyList!513 Lexer!1643 (rules!9429 thiss!10527) (t!109090 lt!393225)))))

(assert (= (and d!330672 (not res!520839)) b!1157042))

(assert (= (and b!1157042 res!520838) b!1157043))

(declare-fun m!1323841 () Bool)

(assert (=> d!330672 m!1323841))

(assert (=> d!330672 m!1323695))

(assert (=> b!1157042 m!1323559))

(assert (=> b!1157043 m!1323561))

(assert (=> b!1156761 d!330672))

(declare-fun d!330676 () Bool)

(assert (=> d!330676 (= (list!4151 (tokens!1549 thiss!10527)) (list!4153 (c!194075 (tokens!1549 thiss!10527))))))

(declare-fun bs!282999 () Bool)

(assert (= bs!282999 d!330676))

(declare-fun m!1323843 () Bool)

(assert (=> bs!282999 m!1323843))

(assert (=> b!1156761 d!330676))

(declare-fun d!330678 () Bool)

(declare-fun lt!393307 () Bool)

(assert (=> d!330678 (= lt!393307 (forall!2891 (list!4151 (tokens!1549 thiss!10527)) lambda!46732))))

(assert (=> d!330678 (= lt!393307 (forall!2894 (c!194075 (tokens!1549 thiss!10527)) lambda!46732))))

(assert (=> d!330678 (= (forall!2890 (tokens!1549 thiss!10527) lambda!46732) lt!393307)))

(declare-fun bs!283000 () Bool)

(assert (= bs!283000 d!330678))

(assert (=> bs!283000 m!1323525))

(assert (=> bs!283000 m!1323525))

(declare-fun m!1323845 () Bool)

(assert (=> bs!283000 m!1323845))

(declare-fun m!1323847 () Bool)

(assert (=> bs!283000 m!1323847))

(assert (=> b!1156761 d!330678))

(declare-fun d!330680 () Bool)

(declare-fun c!194086 () Bool)

(assert (=> d!330680 (= c!194086 (is-Node!3663 (c!194075 (tokens!1549 thiss!10527))))))

(declare-fun e!740179 () Bool)

(assert (=> d!330680 (= (inv!14794 (c!194075 (tokens!1549 thiss!10527))) e!740179)))

(declare-fun b!1157066 () Bool)

(declare-fun inv!14802 (Conc!3663) Bool)

(assert (=> b!1157066 (= e!740179 (inv!14802 (c!194075 (tokens!1549 thiss!10527))))))

(declare-fun b!1157067 () Bool)

(declare-fun e!740180 () Bool)

(assert (=> b!1157067 (= e!740179 e!740180)))

(declare-fun res!520849 () Bool)

(assert (=> b!1157067 (= res!520849 (not (is-Leaf!5649 (c!194075 (tokens!1549 thiss!10527)))))))

(assert (=> b!1157067 (=> res!520849 e!740180)))

(declare-fun b!1157068 () Bool)

(declare-fun inv!14803 (Conc!3663) Bool)

(assert (=> b!1157068 (= e!740180 (inv!14803 (c!194075 (tokens!1549 thiss!10527))))))

(assert (= (and d!330680 c!194086) b!1157066))

(assert (= (and d!330680 (not c!194086)) b!1157067))

(assert (= (and b!1157067 (not res!520849)) b!1157068))

(declare-fun m!1323855 () Bool)

(assert (=> b!1157066 m!1323855))

(declare-fun m!1323857 () Bool)

(assert (=> b!1157068 m!1323857))

(assert (=> b!1156763 d!330680))

(declare-fun b!1157083 () Bool)

(declare-fun b_free!27681 () Bool)

(declare-fun b_next!28385 () Bool)

(assert (=> b!1157083 (= b_free!27681 (not b_next!28385))))

(declare-fun tp!333285 () Bool)

(declare-fun b_and!80557 () Bool)

(assert (=> b!1157083 (= tp!333285 b_and!80557)))

(declare-fun b_free!27683 () Bool)

(declare-fun b_next!28387 () Bool)

(assert (=> b!1157083 (= b_free!27683 (not b_next!28387))))

(declare-fun tp!333288 () Bool)

(declare-fun b_and!80559 () Bool)

(assert (=> b!1157083 (= tp!333288 b_and!80559)))

(declare-fun e!740195 () Bool)

(assert (=> b!1157083 (= e!740195 (and tp!333285 tp!333288))))

(declare-fun b!1157082 () Bool)

(declare-fun tp!333286 () Bool)

(declare-fun e!740193 () Bool)

(declare-fun inv!14791 (String!13670) Bool)

(declare-fun inv!14804 (TokenValueInjection!3732) Bool)

(assert (=> b!1157082 (= e!740193 (and tp!333286 (inv!14791 (tag!2212 (h!16667 (rules!9429 thiss!10527)))) (inv!14804 (transformation!1950 (h!16667 (rules!9429 thiss!10527)))) e!740195))))

(declare-fun b!1157081 () Bool)

(declare-fun e!740196 () Bool)

(declare-fun tp!333287 () Bool)

(assert (=> b!1157081 (= e!740196 (and e!740193 tp!333287))))

(assert (=> b!1156765 (= tp!333270 e!740196)))

(assert (= b!1157082 b!1157083))

(assert (= b!1157081 b!1157082))

(assert (= (and b!1156765 (is-Cons!11266 (rules!9429 thiss!10527))) b!1157081))

(declare-fun m!1323873 () Bool)

(assert (=> b!1157082 m!1323873))

(declare-fun m!1323875 () Bool)

(assert (=> b!1157082 m!1323875))

(declare-fun b!1157086 () Bool)

(declare-fun e!740199 () Bool)

(assert (=> b!1157086 (= e!740199 true)))

(declare-fun b!1157085 () Bool)

(declare-fun e!740198 () Bool)

(assert (=> b!1157085 (= e!740198 e!740199)))

(declare-fun b!1157084 () Bool)

(declare-fun e!740197 () Bool)

(assert (=> b!1157084 (= e!740197 e!740198)))

(assert (=> b!1156779 e!740197))

(assert (= b!1157085 b!1157086))

(assert (= b!1157084 b!1157085))

(assert (= (and b!1156779 (is-Cons!11266 (rules!9429 thiss!10527))) b!1157084))

(assert (=> b!1157086 (< (dynLambda!4964 order!6897 (toValue!3051 (transformation!1950 (h!16667 (rules!9429 thiss!10527))))) (dynLambda!4965 order!6899 lambda!46732))))

(assert (=> b!1157086 (< (dynLambda!4966 order!6901 (toChars!2910 (transformation!1950 (h!16667 (rules!9429 thiss!10527))))) (dynLambda!4965 order!6899 lambda!46732))))

(declare-fun e!740204 () Bool)

(declare-fun tp!333297 () Bool)

(declare-fun b!1157095 () Bool)

(declare-fun tp!333295 () Bool)

(assert (=> b!1157095 (= e!740204 (and (inv!14794 (left!9822 (c!194075 (tokens!1549 thiss!10527)))) tp!333297 (inv!14794 (right!10152 (c!194075 (tokens!1549 thiss!10527)))) tp!333295))))

(declare-fun b!1157097 () Bool)

(declare-fun e!740205 () Bool)

(declare-fun tp!333296 () Bool)

(assert (=> b!1157097 (= e!740205 tp!333296)))

(declare-fun b!1157096 () Bool)

(declare-fun inv!14805 (IArray!7331) Bool)

(assert (=> b!1157096 (= e!740204 (and (inv!14805 (xs!6368 (c!194075 (tokens!1549 thiss!10527)))) e!740205))))

(assert (=> b!1156763 (= tp!333269 (and (inv!14794 (c!194075 (tokens!1549 thiss!10527))) e!740204))))

(assert (= (and b!1156763 (is-Node!3663 (c!194075 (tokens!1549 thiss!10527)))) b!1157095))

(assert (= b!1157096 b!1157097))

(assert (= (and b!1156763 (is-Leaf!5649 (c!194075 (tokens!1549 thiss!10527)))) b!1157096))

(declare-fun m!1323877 () Bool)

(assert (=> b!1157095 m!1323877))

(declare-fun m!1323879 () Bool)

(assert (=> b!1157095 m!1323879))

(declare-fun m!1323881 () Bool)

(assert (=> b!1157096 m!1323881))

(assert (=> b!1156763 m!1323553))

(declare-fun b!1157106 () Bool)

(declare-fun e!740210 () Bool)

(assert (=> b!1157106 (= e!740210 true)))

(declare-fun b!1157108 () Bool)

(declare-fun e!740211 () Bool)

(assert (=> b!1157108 (= e!740211 true)))

(declare-fun b!1157107 () Bool)

(assert (=> b!1157107 (= e!740210 e!740211)))

(assert (=> b!1156780 e!740210))

(assert (= (and b!1156780 (is-Node!3663 (c!194075 (tokens!1549 thiss!10527)))) b!1157106))

(assert (= b!1157107 b!1157108))

(assert (= (and b!1156780 (is-Leaf!5649 (c!194075 (tokens!1549 thiss!10527)))) b!1157107))

(declare-fun b_lambda!34563 () Bool)

(assert (= b_lambda!34559 (or b!1156761 b_lambda!34563)))

(declare-fun bs!283017 () Bool)

(declare-fun d!330696 () Bool)

(assert (= bs!283017 (and d!330696 b!1156761)))

(assert (=> bs!283017 (= (dynLambda!4963 lambda!46732 (h!16666 lt!393228)) (rulesProduceIndividualToken!682 Lexer!1643 (rules!9429 thiss!10527) (h!16666 lt!393228)))))

(assert (=> bs!283017 m!1323531))

(assert (=> b!1156880 d!330696))

(push 1)

(assert (not b!1157020))

(assert (not d!330606))

(assert (not b!1157015))

(assert (not d!330678))

(assert (not d!330608))

(assert b_and!80557)

(assert (not b!1156857))

(assert (not d!330618))

(assert (not b!1156842))

(assert b_and!80559)

(assert (not b!1156906))

(assert (not b_next!28387))

(assert (not b!1157097))

(assert (not b!1156871))

(assert (not b!1156930))

(assert (not b!1156992))

(assert (not b!1157016))

(assert (not b!1156939))

(assert (not b!1156994))

(assert (not b!1157043))

(assert (not b!1157084))

(assert (not b!1156993))

(assert (not b!1156763))

(assert (not b!1157095))

(assert (not b!1157082))

(assert (not d!330672))

(assert (not b!1157026))

(assert (not b!1157042))

(assert (not b!1157044))

(assert (not b!1157028))

(assert (not b!1157081))

(assert (not b_next!28385))

(assert (not d!330676))

(assert (not b!1156841))

(assert (not b!1156874))

(assert (not b!1156840))

(assert (not b!1157108))

(assert (not b!1157106))

(assert (not b!1156881))

(assert (not b!1156872))

(assert (not b!1157024))

(assert (not b_lambda!34563))

(assert (not d!330656))

(assert (not b!1157035))

(assert (not b!1157021))

(assert (not d!330664))

(assert (not b!1156827))

(assert (not b!1156833))

(assert (not b!1156873))

(assert (not d!330662))

(assert (not b!1156870))

(assert (not b!1157066))

(assert (not b!1157029))

(assert (not b!1157032))

(assert (not d!330670))

(assert (not d!330602))

(assert (not b!1157019))

(assert (not b!1157025))

(assert (not b!1156875))

(assert (not d!330660))

(assert (not d!330668))

(assert (not d!330612))

(assert (not d!330604))

(assert (not d!330614))

(assert (not b!1156929))

(assert (not b!1156907))

(assert (not b!1156854))

(assert (not bs!283017))

(assert (not d!330636))

(assert (not b!1156908))

(assert (not b!1157027))

(assert (not d!330666))

(assert (not d!330624))

(assert (not d!330622))

(assert (not b!1156853))

(assert (not d!330630))

(assert (not b!1157068))

(assert (not b!1156832))

(assert (not b!1157096))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80557)

(assert b_and!80559)

(assert (not b_next!28385))

(assert (not b_next!28387))

(check-sat)

(pop 1)

