; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!166452 () Bool)

(assert start!166452)

(declare-fun b!1705694 () Bool)

(declare-fun b_free!46007 () Bool)

(declare-fun b_next!46711 () Bool)

(assert (=> b!1705694 (= b_free!46007 (not b_next!46711))))

(declare-fun tp!487046 () Bool)

(declare-fun b_and!123221 () Bool)

(assert (=> b!1705694 (= tp!487046 b_and!123221)))

(declare-fun b_free!46009 () Bool)

(declare-fun b_next!46713 () Bool)

(assert (=> b!1705694 (= b_free!46009 (not b_next!46713))))

(declare-fun tp!487045 () Bool)

(declare-fun b_and!123223 () Bool)

(assert (=> b!1705694 (= tp!487045 b_and!123223)))

(declare-fun b!1705690 () Bool)

(declare-fun b_free!46011 () Bool)

(declare-fun b_next!46715 () Bool)

(assert (=> b!1705690 (= b_free!46011 (not b_next!46715))))

(declare-fun tp!487048 () Bool)

(declare-fun b_and!123225 () Bool)

(assert (=> b!1705690 (= tp!487048 b_and!123225)))

(declare-fun b_free!46013 () Bool)

(declare-fun b_next!46717 () Bool)

(assert (=> b!1705690 (= b_free!46013 (not b_next!46717))))

(declare-fun tp!487047 () Bool)

(declare-fun b_and!123227 () Bool)

(assert (=> b!1705690 (= tp!487047 b_and!123227)))

(declare-fun b!1705699 () Bool)

(declare-fun b_free!46015 () Bool)

(declare-fun b_next!46719 () Bool)

(assert (=> b!1705699 (= b_free!46015 (not b_next!46719))))

(declare-fun tp!487053 () Bool)

(declare-fun b_and!123229 () Bool)

(assert (=> b!1705699 (= tp!487053 b_and!123229)))

(declare-fun b_free!46017 () Bool)

(declare-fun b_next!46721 () Bool)

(assert (=> b!1705699 (= b_free!46017 (not b_next!46721))))

(declare-fun tp!487050 () Bool)

(declare-fun b_and!123231 () Bool)

(assert (=> b!1705699 (= tp!487050 b_and!123231)))

(declare-datatypes ((List!18647 0))(
  ( (Nil!18577) (Cons!18577 (h!23978 (_ BitVec 16)) (t!157948 List!18647)) )
))
(declare-datatypes ((TokenValue!3364 0))(
  ( (FloatLiteralValue!6728 (text!23993 List!18647)) (TokenValueExt!3363 (__x!12030 Int)) (Broken!16820 (value!102957 List!18647)) (Object!3433) (End!3364) (Def!3364) (Underscore!3364) (Match!3364) (Else!3364) (Error!3364) (Case!3364) (If!3364) (Extends!3364) (Abstract!3364) (Class!3364) (Val!3364) (DelimiterValue!6728 (del!3424 List!18647)) (KeywordValue!3370 (value!102958 List!18647)) (CommentValue!6728 (value!102959 List!18647)) (WhitespaceValue!6728 (value!102960 List!18647)) (IndentationValue!3364 (value!102961 List!18647)) (String!21153) (Int32!3364) (Broken!16821 (value!102962 List!18647)) (Boolean!3365) (Unit!32429) (OperatorValue!3367 (op!3424 List!18647)) (IdentifierValue!6728 (value!102963 List!18647)) (IdentifierValue!6729 (value!102964 List!18647)) (WhitespaceValue!6729 (value!102965 List!18647)) (True!6728) (False!6728) (Broken!16822 (value!102966 List!18647)) (Broken!16823 (value!102967 List!18647)) (True!6729) (RightBrace!3364) (RightBracket!3364) (Colon!3364) (Null!3364) (Comma!3364) (LeftBracket!3364) (False!6729) (LeftBrace!3364) (ImaginaryLiteralValue!3364 (text!23994 List!18647)) (StringLiteralValue!10092 (value!102968 List!18647)) (EOFValue!3364 (value!102969 List!18647)) (IdentValue!3364 (value!102970 List!18647)) (DelimiterValue!6729 (value!102971 List!18647)) (DedentValue!3364 (value!102972 List!18647)) (NewLineValue!3364 (value!102973 List!18647)) (IntegerValue!10092 (value!102974 (_ BitVec 32)) (text!23995 List!18647)) (IntegerValue!10093 (value!102975 Int) (text!23996 List!18647)) (Times!3364) (Or!3364) (Equal!3364) (Minus!3364) (Broken!16824 (value!102976 List!18647)) (And!3364) (Div!3364) (LessEqual!3364) (Mod!3364) (Concat!7966) (Not!3364) (Plus!3364) (SpaceValue!3364 (value!102977 List!18647)) (IntegerValue!10094 (value!102978 Int) (text!23997 List!18647)) (StringLiteralValue!10093 (text!23998 List!18647)) (FloatLiteralValue!6729 (text!23999 List!18647)) (BytesLiteralValue!3364 (value!102979 List!18647)) (CommentValue!6729 (value!102980 List!18647)) (StringLiteralValue!10094 (value!102981 List!18647)) (ErrorTokenValue!3364 (msg!3425 List!18647)) )
))
(declare-datatypes ((C!9378 0))(
  ( (C!9379 (val!5285 Int)) )
))
(declare-datatypes ((List!18648 0))(
  ( (Nil!18578) (Cons!18578 (h!23979 C!9378) (t!157949 List!18648)) )
))
(declare-datatypes ((Regex!4602 0))(
  ( (ElementMatch!4602 (c!279645 C!9378)) (Concat!7967 (regOne!9716 Regex!4602) (regTwo!9716 Regex!4602)) (EmptyExpr!4602) (Star!4602 (reg!4931 Regex!4602)) (EmptyLang!4602) (Union!4602 (regOne!9717 Regex!4602) (regTwo!9717 Regex!4602)) )
))
(declare-datatypes ((String!21154 0))(
  ( (String!21155 (value!102982 String)) )
))
(declare-datatypes ((IArray!12373 0))(
  ( (IArray!12374 (innerList!6244 List!18648)) )
))
(declare-datatypes ((Conc!6184 0))(
  ( (Node!6184 (left!14835 Conc!6184) (right!15165 Conc!6184) (csize!12598 Int) (cheight!6395 Int)) (Leaf!9042 (xs!9060 IArray!12373) (csize!12599 Int)) (Empty!6184) )
))
(declare-datatypes ((BalanceConc!12312 0))(
  ( (BalanceConc!12313 (c!279646 Conc!6184)) )
))
(declare-datatypes ((TokenValueInjection!6388 0))(
  ( (TokenValueInjection!6389 (toValue!4769 Int) (toChars!4628 Int)) )
))
(declare-datatypes ((Rule!6348 0))(
  ( (Rule!6349 (regex!3274 Regex!4602) (tag!3570 String!21154) (isSeparator!3274 Bool) (transformation!3274 TokenValueInjection!6388)) )
))
(declare-fun rule!422 () Rule!6348)

(declare-fun e!1090904 () Bool)

(declare-fun e!1090899 () Bool)

(declare-fun tp!487051 () Bool)

(declare-fun b!1705689 () Bool)

(declare-fun inv!23967 (String!21154) Bool)

(declare-fun inv!23970 (TokenValueInjection!6388) Bool)

(assert (=> b!1705689 (= e!1090899 (and tp!487051 (inv!23967 (tag!3570 rule!422)) (inv!23970 (transformation!3274 rule!422)) e!1090904))))

(declare-fun e!1090911 () Bool)

(assert (=> b!1705690 (= e!1090911 (and tp!487048 tp!487047))))

(declare-fun b!1705691 () Bool)

(declare-datatypes ((Token!6114 0))(
  ( (Token!6115 (value!102983 TokenValue!3364) (rule!5206 Rule!6348) (size!14799 Int) (originalCharacters!4088 List!18648)) )
))
(declare-fun token!523 () Token!6114)

(declare-fun tp!487054 () Bool)

(declare-fun e!1090902 () Bool)

(declare-fun e!1090912 () Bool)

(declare-fun inv!21 (TokenValue!3364) Bool)

(assert (=> b!1705691 (= e!1090912 (and (inv!21 (value!102983 token!523)) e!1090902 tp!487054))))

(declare-fun b!1705692 () Bool)

(declare-fun e!1090908 () Bool)

(declare-fun e!1090901 () Bool)

(assert (=> b!1705692 (= e!1090908 e!1090901)))

(declare-fun res!764549 () Bool)

(assert (=> b!1705692 (=> (not res!764549) (not e!1090901))))

(declare-datatypes ((tuple2!18328 0))(
  ( (tuple2!18329 (_1!10566 Token!6114) (_2!10566 List!18648)) )
))
(declare-datatypes ((Option!3598 0))(
  ( (None!3597) (Some!3597 (v!24970 tuple2!18328)) )
))
(declare-fun lt!652309 () Option!3598)

(declare-fun isDefined!2943 (Option!3598) Bool)

(assert (=> b!1705692 (= res!764549 (isDefined!2943 lt!652309))))

(declare-datatypes ((LexerInterface!2903 0))(
  ( (LexerInterfaceExt!2900 (__x!12031 Int)) (Lexer!2901) )
))
(declare-fun thiss!24550 () LexerInterface!2903)

(declare-datatypes ((List!18649 0))(
  ( (Nil!18579) (Cons!18579 (h!23980 Rule!6348) (t!157950 List!18649)) )
))
(declare-fun rules!3447 () List!18649)

(declare-fun maxPrefix!1457 (LexerInterface!2903 List!18649 List!18648) Option!3598)

(declare-fun list!7490 (BalanceConc!12312) List!18648)

(declare-fun charsOf!1923 (Token!6114) BalanceConc!12312)

(assert (=> b!1705692 (= lt!652309 (maxPrefix!1457 thiss!24550 rules!3447 (list!7490 (charsOf!1923 token!523))))))

(declare-fun b!1705693 () Bool)

(declare-fun res!764547 () Bool)

(assert (=> b!1705693 (=> (not res!764547) (not e!1090908))))

(declare-fun rulesInvariant!2572 (LexerInterface!2903 List!18649) Bool)

(assert (=> b!1705693 (= res!764547 (rulesInvariant!2572 thiss!24550 rules!3447))))

(declare-fun e!1090910 () Bool)

(assert (=> b!1705694 (= e!1090910 (and tp!487046 tp!487045))))

(declare-fun b!1705695 () Bool)

(declare-fun e!1090905 () Bool)

(declare-fun e!1090907 () Bool)

(declare-fun tp!487052 () Bool)

(assert (=> b!1705695 (= e!1090905 (and e!1090907 tp!487052))))

(declare-fun b!1705696 () Bool)

(declare-fun res!764546 () Bool)

(assert (=> b!1705696 (=> (not res!764546) (not e!1090908))))

(declare-fun contains!3290 (List!18649 Rule!6348) Bool)

(assert (=> b!1705696 (= res!764546 (contains!3290 rules!3447 rule!422))))

(declare-fun res!764545 () Bool)

(assert (=> start!166452 (=> (not res!764545) (not e!1090908))))

(assert (=> start!166452 (= res!764545 (is-Lexer!2901 thiss!24550))))

(assert (=> start!166452 e!1090908))

(assert (=> start!166452 true))

(assert (=> start!166452 e!1090905))

(assert (=> start!166452 e!1090899))

(declare-fun inv!23971 (Token!6114) Bool)

(assert (=> start!166452 (and (inv!23971 token!523) e!1090912)))

(declare-fun tp!487055 () Bool)

(declare-fun b!1705697 () Bool)

(assert (=> b!1705697 (= e!1090907 (and tp!487055 (inv!23967 (tag!3570 (h!23980 rules!3447))) (inv!23970 (transformation!3274 (h!23980 rules!3447))) e!1090911))))

(declare-fun b!1705698 () Bool)

(declare-fun res!764544 () Bool)

(assert (=> b!1705698 (=> (not res!764544) (not e!1090908))))

(declare-fun isEmpty!11662 (List!18649) Bool)

(assert (=> b!1705698 (= res!764544 (not (isEmpty!11662 rules!3447)))))

(assert (=> b!1705699 (= e!1090904 (and tp!487053 tp!487050))))

(declare-fun b!1705700 () Bool)

(declare-fun res!764548 () Bool)

(assert (=> b!1705700 (=> (not res!764548) (not e!1090901))))

(declare-fun get!5455 (Option!3598) tuple2!18328)

(assert (=> b!1705700 (= res!764548 (= (_1!10566 (get!5455 lt!652309)) token!523))))

(declare-fun b!1705701 () Bool)

(declare-fun tp!487049 () Bool)

(assert (=> b!1705701 (= e!1090902 (and tp!487049 (inv!23967 (tag!3570 (rule!5206 token!523))) (inv!23970 (transformation!3274 (rule!5206 token!523))) e!1090910))))

(declare-fun b!1705702 () Bool)

(declare-fun rulesValidInductive!1067 (LexerInterface!2903 List!18649) Bool)

(assert (=> b!1705702 (= e!1090901 (not (rulesValidInductive!1067 thiss!24550 rules!3447)))))

(assert (= (and start!166452 res!764545) b!1705698))

(assert (= (and b!1705698 res!764544) b!1705693))

(assert (= (and b!1705693 res!764547) b!1705696))

(assert (= (and b!1705696 res!764546) b!1705692))

(assert (= (and b!1705692 res!764549) b!1705700))

(assert (= (and b!1705700 res!764548) b!1705702))

(assert (= b!1705697 b!1705690))

(assert (= b!1705695 b!1705697))

(assert (= (and start!166452 (is-Cons!18579 rules!3447)) b!1705695))

(assert (= b!1705689 b!1705699))

(assert (= start!166452 b!1705689))

(assert (= b!1705701 b!1705694))

(assert (= b!1705691 b!1705701))

(assert (= start!166452 b!1705691))

(declare-fun m!2109529 () Bool)

(assert (=> b!1705689 m!2109529))

(declare-fun m!2109531 () Bool)

(assert (=> b!1705689 m!2109531))

(declare-fun m!2109533 () Bool)

(assert (=> b!1705697 m!2109533))

(declare-fun m!2109535 () Bool)

(assert (=> b!1705697 m!2109535))

(declare-fun m!2109537 () Bool)

(assert (=> b!1705702 m!2109537))

(declare-fun m!2109539 () Bool)

(assert (=> b!1705696 m!2109539))

(declare-fun m!2109541 () Bool)

(assert (=> b!1705698 m!2109541))

(declare-fun m!2109543 () Bool)

(assert (=> b!1705701 m!2109543))

(declare-fun m!2109545 () Bool)

(assert (=> b!1705701 m!2109545))

(declare-fun m!2109547 () Bool)

(assert (=> b!1705693 m!2109547))

(declare-fun m!2109549 () Bool)

(assert (=> b!1705691 m!2109549))

(declare-fun m!2109551 () Bool)

(assert (=> b!1705700 m!2109551))

(declare-fun m!2109553 () Bool)

(assert (=> start!166452 m!2109553))

(declare-fun m!2109555 () Bool)

(assert (=> b!1705692 m!2109555))

(declare-fun m!2109557 () Bool)

(assert (=> b!1705692 m!2109557))

(assert (=> b!1705692 m!2109557))

(declare-fun m!2109559 () Bool)

(assert (=> b!1705692 m!2109559))

(assert (=> b!1705692 m!2109559))

(declare-fun m!2109561 () Bool)

(assert (=> b!1705692 m!2109561))

(push 1)

(assert b_and!123225)

(assert (not b!1705692))

(assert (not b!1705691))

(assert (not start!166452))

(assert (not b_next!46715))

(assert (not b!1705696))

(assert b_and!123227)

(assert (not b!1705698))

(assert (not b!1705702))

(assert (not b_next!46721))

(assert (not b!1705701))

(assert (not b_next!46719))

(assert b_and!123221)

(assert b_and!123231)

(assert (not b!1705693))

(assert (not b!1705700))

(assert (not b_next!46711))

(assert (not b_next!46713))

(assert (not b!1705697))

(assert b_and!123229)

(assert b_and!123223)

(assert (not b_next!46717))

(assert (not b!1705689))

(assert (not b!1705695))

(check-sat)

(pop 1)

(push 1)

(assert b_and!123225)

(assert (not b_next!46715))

(assert (not b_next!46711))

(assert b_and!123227)

(assert (not b_next!46721))

(assert (not b_next!46713))

(assert (not b_next!46719))

(assert b_and!123221)

(assert (not b_next!46717))

(assert b_and!123231)

(assert b_and!123229)

(assert b_and!123223)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!523700 () Bool)

(declare-fun res!764578 () Bool)

(declare-fun e!1090957 () Bool)

(assert (=> d!523700 (=> (not res!764578) (not e!1090957))))

(declare-fun rulesValid!1217 (LexerInterface!2903 List!18649) Bool)

(assert (=> d!523700 (= res!764578 (rulesValid!1217 thiss!24550 rules!3447))))

(assert (=> d!523700 (= (rulesInvariant!2572 thiss!24550 rules!3447) e!1090957)))

(declare-fun b!1705747 () Bool)

(declare-datatypes ((List!18653 0))(
  ( (Nil!18583) (Cons!18583 (h!23984 String!21154) (t!157968 List!18653)) )
))
(declare-fun noDuplicateTag!1217 (LexerInterface!2903 List!18649 List!18653) Bool)

(assert (=> b!1705747 (= e!1090957 (noDuplicateTag!1217 thiss!24550 rules!3447 Nil!18583))))

(assert (= (and d!523700 res!764578) b!1705747))

(declare-fun m!2109597 () Bool)

(assert (=> d!523700 m!2109597))

(declare-fun m!2109599 () Bool)

(assert (=> b!1705747 m!2109599))

(assert (=> b!1705693 d!523700))

(declare-fun d!523702 () Bool)

(declare-fun isEmpty!11664 (Option!3598) Bool)

(assert (=> d!523702 (= (isDefined!2943 lt!652309) (not (isEmpty!11664 lt!652309)))))

(declare-fun bs!401552 () Bool)

(assert (= bs!401552 d!523702))

(declare-fun m!2109601 () Bool)

(assert (=> bs!401552 m!2109601))

(assert (=> b!1705692 d!523702))

(declare-fun b!1705796 () Bool)

(declare-fun res!764610 () Bool)

(declare-fun e!1090985 () Bool)

(assert (=> b!1705796 (=> (not res!764610) (not e!1090985))))

(declare-fun lt!652329 () Option!3598)

(declare-fun ++!5102 (List!18648 List!18648) List!18648)

(assert (=> b!1705796 (= res!764610 (= (++!5102 (list!7490 (charsOf!1923 (_1!10566 (get!5455 lt!652329)))) (_2!10566 (get!5455 lt!652329))) (list!7490 (charsOf!1923 token!523))))))

(declare-fun b!1705797 () Bool)

(declare-fun res!764607 () Bool)

(assert (=> b!1705797 (=> (not res!764607) (not e!1090985))))

(assert (=> b!1705797 (= res!764607 (= (list!7490 (charsOf!1923 (_1!10566 (get!5455 lt!652329)))) (originalCharacters!4088 (_1!10566 (get!5455 lt!652329)))))))

(declare-fun bm!109238 () Bool)

(declare-fun call!109243 () Option!3598)

(declare-fun maxPrefixOneRule!854 (LexerInterface!2903 Rule!6348 List!18648) Option!3598)

(assert (=> bm!109238 (= call!109243 (maxPrefixOneRule!854 thiss!24550 (h!23980 rules!3447) (list!7490 (charsOf!1923 token!523))))))

(declare-fun b!1705799 () Bool)

(declare-fun res!764608 () Bool)

(assert (=> b!1705799 (=> (not res!764608) (not e!1090985))))

(declare-fun size!14801 (List!18648) Int)

(assert (=> b!1705799 (= res!764608 (< (size!14801 (_2!10566 (get!5455 lt!652329))) (size!14801 (list!7490 (charsOf!1923 token!523)))))))

(declare-fun b!1705800 () Bool)

(assert (=> b!1705800 (= e!1090985 (contains!3290 rules!3447 (rule!5206 (_1!10566 (get!5455 lt!652329)))))))

(declare-fun b!1705801 () Bool)

(declare-fun res!764609 () Bool)

(assert (=> b!1705801 (=> (not res!764609) (not e!1090985))))

(declare-fun apply!5098 (TokenValueInjection!6388 BalanceConc!12312) TokenValue!3364)

(declare-fun seqFromList!2263 (List!18648) BalanceConc!12312)

(assert (=> b!1705801 (= res!764609 (= (value!102983 (_1!10566 (get!5455 lt!652329))) (apply!5098 (transformation!3274 (rule!5206 (_1!10566 (get!5455 lt!652329)))) (seqFromList!2263 (originalCharacters!4088 (_1!10566 (get!5455 lt!652329)))))))))

(declare-fun b!1705802 () Bool)

(declare-fun res!764606 () Bool)

(assert (=> b!1705802 (=> (not res!764606) (not e!1090985))))

(declare-fun matchR!2081 (Regex!4602 List!18648) Bool)

(assert (=> b!1705802 (= res!764606 (matchR!2081 (regex!3274 (rule!5206 (_1!10566 (get!5455 lt!652329)))) (list!7490 (charsOf!1923 (_1!10566 (get!5455 lt!652329))))))))

(declare-fun b!1705803 () Bool)

(declare-fun e!1090984 () Bool)

(assert (=> b!1705803 (= e!1090984 e!1090985)))

(declare-fun res!764611 () Bool)

(assert (=> b!1705803 (=> (not res!764611) (not e!1090985))))

(assert (=> b!1705803 (= res!764611 (isDefined!2943 lt!652329))))

(declare-fun b!1705804 () Bool)

(declare-fun e!1090983 () Option!3598)

(assert (=> b!1705804 (= e!1090983 call!109243)))

(declare-fun b!1705798 () Bool)

(declare-fun lt!652328 () Option!3598)

(declare-fun lt!652326 () Option!3598)

(assert (=> b!1705798 (= e!1090983 (ite (and (is-None!3597 lt!652328) (is-None!3597 lt!652326)) None!3597 (ite (is-None!3597 lt!652326) lt!652328 (ite (is-None!3597 lt!652328) lt!652326 (ite (>= (size!14799 (_1!10566 (v!24970 lt!652328))) (size!14799 (_1!10566 (v!24970 lt!652326)))) lt!652328 lt!652326)))))))

(assert (=> b!1705798 (= lt!652328 call!109243)))

(assert (=> b!1705798 (= lt!652326 (maxPrefix!1457 thiss!24550 (t!157950 rules!3447) (list!7490 (charsOf!1923 token!523))))))

(declare-fun d!523704 () Bool)

(assert (=> d!523704 e!1090984))

(declare-fun res!764612 () Bool)

(assert (=> d!523704 (=> res!764612 e!1090984)))

(assert (=> d!523704 (= res!764612 (isEmpty!11664 lt!652329))))

(assert (=> d!523704 (= lt!652329 e!1090983)))

(declare-fun c!279658 () Bool)

(assert (=> d!523704 (= c!279658 (and (is-Cons!18579 rules!3447) (is-Nil!18579 (t!157950 rules!3447))))))

(declare-datatypes ((Unit!32431 0))(
  ( (Unit!32432) )
))
(declare-fun lt!652327 () Unit!32431)

(declare-fun lt!652325 () Unit!32431)

(assert (=> d!523704 (= lt!652327 lt!652325)))

(declare-fun isPrefix!1522 (List!18648 List!18648) Bool)

(assert (=> d!523704 (isPrefix!1522 (list!7490 (charsOf!1923 token!523)) (list!7490 (charsOf!1923 token!523)))))

(declare-fun lemmaIsPrefixRefl!1039 (List!18648 List!18648) Unit!32431)

(assert (=> d!523704 (= lt!652325 (lemmaIsPrefixRefl!1039 (list!7490 (charsOf!1923 token!523)) (list!7490 (charsOf!1923 token!523))))))

(assert (=> d!523704 (rulesValidInductive!1067 thiss!24550 rules!3447)))

(assert (=> d!523704 (= (maxPrefix!1457 thiss!24550 rules!3447 (list!7490 (charsOf!1923 token!523))) lt!652329)))

(assert (= (and d!523704 c!279658) b!1705804))

(assert (= (and d!523704 (not c!279658)) b!1705798))

(assert (= (or b!1705804 b!1705798) bm!109238))

(assert (= (and d!523704 (not res!764612)) b!1705803))

(assert (= (and b!1705803 res!764611) b!1705797))

(assert (= (and b!1705797 res!764607) b!1705799))

(assert (= (and b!1705799 res!764608) b!1705796))

(assert (= (and b!1705796 res!764610) b!1705801))

(assert (= (and b!1705801 res!764609) b!1705802))

(assert (= (and b!1705802 res!764606) b!1705800))

(assert (=> bm!109238 m!2109559))

(declare-fun m!2109621 () Bool)

(assert (=> bm!109238 m!2109621))

(assert (=> b!1705798 m!2109559))

(declare-fun m!2109623 () Bool)

(assert (=> b!1705798 m!2109623))

(declare-fun m!2109625 () Bool)

(assert (=> b!1705803 m!2109625))

(declare-fun m!2109627 () Bool)

(assert (=> b!1705799 m!2109627))

(declare-fun m!2109629 () Bool)

(assert (=> b!1705799 m!2109629))

(assert (=> b!1705799 m!2109559))

(declare-fun m!2109631 () Bool)

(assert (=> b!1705799 m!2109631))

(assert (=> b!1705802 m!2109627))

(declare-fun m!2109633 () Bool)

(assert (=> b!1705802 m!2109633))

(assert (=> b!1705802 m!2109633))

(declare-fun m!2109635 () Bool)

(assert (=> b!1705802 m!2109635))

(assert (=> b!1705802 m!2109635))

(declare-fun m!2109637 () Bool)

(assert (=> b!1705802 m!2109637))

(assert (=> b!1705796 m!2109627))

(assert (=> b!1705796 m!2109633))

(assert (=> b!1705796 m!2109633))

(assert (=> b!1705796 m!2109635))

(assert (=> b!1705796 m!2109635))

(declare-fun m!2109639 () Bool)

(assert (=> b!1705796 m!2109639))

(declare-fun m!2109641 () Bool)

(assert (=> d!523704 m!2109641))

(assert (=> d!523704 m!2109559))

(assert (=> d!523704 m!2109559))

(declare-fun m!2109643 () Bool)

(assert (=> d!523704 m!2109643))

(assert (=> d!523704 m!2109559))

(assert (=> d!523704 m!2109559))

(declare-fun m!2109645 () Bool)

(assert (=> d!523704 m!2109645))

(assert (=> d!523704 m!2109537))

(assert (=> b!1705801 m!2109627))

(declare-fun m!2109647 () Bool)

(assert (=> b!1705801 m!2109647))

(assert (=> b!1705801 m!2109647))

(declare-fun m!2109649 () Bool)

(assert (=> b!1705801 m!2109649))

(assert (=> b!1705800 m!2109627))

(declare-fun m!2109651 () Bool)

(assert (=> b!1705800 m!2109651))

(assert (=> b!1705797 m!2109627))

(assert (=> b!1705797 m!2109633))

(assert (=> b!1705797 m!2109633))

(assert (=> b!1705797 m!2109635))

(assert (=> b!1705692 d!523704))

(declare-fun d!523712 () Bool)

(declare-fun list!7492 (Conc!6184) List!18648)

(assert (=> d!523712 (= (list!7490 (charsOf!1923 token!523)) (list!7492 (c!279646 (charsOf!1923 token!523))))))

(declare-fun bs!401553 () Bool)

(assert (= bs!401553 d!523712))

(declare-fun m!2109653 () Bool)

(assert (=> bs!401553 m!2109653))

(assert (=> b!1705692 d!523712))

(declare-fun d!523714 () Bool)

(declare-fun lt!652332 () BalanceConc!12312)

(assert (=> d!523714 (= (list!7490 lt!652332) (originalCharacters!4088 token!523))))

(declare-fun dynLambda!8460 (Int TokenValue!3364) BalanceConc!12312)

(assert (=> d!523714 (= lt!652332 (dynLambda!8460 (toChars!4628 (transformation!3274 (rule!5206 token!523))) (value!102983 token!523)))))

(assert (=> d!523714 (= (charsOf!1923 token!523) lt!652332)))

(declare-fun b_lambda!53839 () Bool)

(assert (=> (not b_lambda!53839) (not d!523714)))

(declare-fun t!157961 () Bool)

(declare-fun tb!100753 () Bool)

(assert (=> (and b!1705694 (= (toChars!4628 (transformation!3274 (rule!5206 token!523))) (toChars!4628 (transformation!3274 (rule!5206 token!523)))) t!157961) tb!100753))

(declare-fun b!1705809 () Bool)

(declare-fun e!1090988 () Bool)

(declare-fun tp!487094 () Bool)

(declare-fun inv!23974 (Conc!6184) Bool)

(assert (=> b!1705809 (= e!1090988 (and (inv!23974 (c!279646 (dynLambda!8460 (toChars!4628 (transformation!3274 (rule!5206 token!523))) (value!102983 token!523)))) tp!487094))))

(declare-fun result!120978 () Bool)

(declare-fun inv!23975 (BalanceConc!12312) Bool)

(assert (=> tb!100753 (= result!120978 (and (inv!23975 (dynLambda!8460 (toChars!4628 (transformation!3274 (rule!5206 token!523))) (value!102983 token!523))) e!1090988))))

(assert (= tb!100753 b!1705809))

(declare-fun m!2109655 () Bool)

(assert (=> b!1705809 m!2109655))

(declare-fun m!2109657 () Bool)

(assert (=> tb!100753 m!2109657))

(assert (=> d!523714 t!157961))

(declare-fun b_and!123251 () Bool)

(assert (= b_and!123223 (and (=> t!157961 result!120978) b_and!123251)))

(declare-fun t!157963 () Bool)

(declare-fun tb!100755 () Bool)

(assert (=> (and b!1705690 (= (toChars!4628 (transformation!3274 (h!23980 rules!3447))) (toChars!4628 (transformation!3274 (rule!5206 token!523)))) t!157963) tb!100755))

(declare-fun result!120982 () Bool)

(assert (= result!120982 result!120978))

(assert (=> d!523714 t!157963))

(declare-fun b_and!123253 () Bool)

(assert (= b_and!123227 (and (=> t!157963 result!120982) b_and!123253)))

(declare-fun tb!100757 () Bool)

(declare-fun t!157965 () Bool)

(assert (=> (and b!1705699 (= (toChars!4628 (transformation!3274 rule!422)) (toChars!4628 (transformation!3274 (rule!5206 token!523)))) t!157965) tb!100757))

(declare-fun result!120984 () Bool)

(assert (= result!120984 result!120978))

(assert (=> d!523714 t!157965))

(declare-fun b_and!123255 () Bool)

(assert (= b_and!123231 (and (=> t!157965 result!120984) b_and!123255)))

(declare-fun m!2109659 () Bool)

(assert (=> d!523714 m!2109659))

(declare-fun m!2109661 () Bool)

(assert (=> d!523714 m!2109661))

(assert (=> b!1705692 d!523714))

(declare-fun d!523716 () Bool)

(assert (=> d!523716 true))

(declare-fun lt!652335 () Bool)

(declare-fun lambda!68707 () Int)

(declare-fun forall!4235 (List!18649 Int) Bool)

(assert (=> d!523716 (= lt!652335 (forall!4235 rules!3447 lambda!68707))))

(declare-fun e!1090993 () Bool)

(assert (=> d!523716 (= lt!652335 e!1090993)))

(declare-fun res!764617 () Bool)

(assert (=> d!523716 (=> res!764617 e!1090993)))

(assert (=> d!523716 (= res!764617 (not (is-Cons!18579 rules!3447)))))

(assert (=> d!523716 (= (rulesValidInductive!1067 thiss!24550 rules!3447) lt!652335)))

(declare-fun b!1705814 () Bool)

(declare-fun e!1090994 () Bool)

(assert (=> b!1705814 (= e!1090993 e!1090994)))

(declare-fun res!764618 () Bool)

(assert (=> b!1705814 (=> (not res!764618) (not e!1090994))))

(declare-fun ruleValid!778 (LexerInterface!2903 Rule!6348) Bool)

(assert (=> b!1705814 (= res!764618 (ruleValid!778 thiss!24550 (h!23980 rules!3447)))))

(declare-fun b!1705815 () Bool)

(assert (=> b!1705815 (= e!1090994 (rulesValidInductive!1067 thiss!24550 (t!157950 rules!3447)))))

(assert (= (and d!523716 (not res!764617)) b!1705814))

(assert (= (and b!1705814 res!764618) b!1705815))

(declare-fun m!2109663 () Bool)

(assert (=> d!523716 m!2109663))

(declare-fun m!2109665 () Bool)

(assert (=> b!1705814 m!2109665))

(declare-fun m!2109667 () Bool)

(assert (=> b!1705815 m!2109667))

(assert (=> b!1705702 d!523716))

(declare-fun d!523718 () Bool)

(declare-fun res!764623 () Bool)

(declare-fun e!1090997 () Bool)

(assert (=> d!523718 (=> (not res!764623) (not e!1090997))))

(declare-fun isEmpty!11665 (List!18648) Bool)

(assert (=> d!523718 (= res!764623 (not (isEmpty!11665 (originalCharacters!4088 token!523))))))

(assert (=> d!523718 (= (inv!23971 token!523) e!1090997)))

(declare-fun b!1705822 () Bool)

(declare-fun res!764624 () Bool)

(assert (=> b!1705822 (=> (not res!764624) (not e!1090997))))

(assert (=> b!1705822 (= res!764624 (= (originalCharacters!4088 token!523) (list!7490 (dynLambda!8460 (toChars!4628 (transformation!3274 (rule!5206 token!523))) (value!102983 token!523)))))))

(declare-fun b!1705823 () Bool)

(assert (=> b!1705823 (= e!1090997 (= (size!14799 token!523) (size!14801 (originalCharacters!4088 token!523))))))

(assert (= (and d!523718 res!764623) b!1705822))

(assert (= (and b!1705822 res!764624) b!1705823))

(declare-fun b_lambda!53841 () Bool)

(assert (=> (not b_lambda!53841) (not b!1705822)))

(assert (=> b!1705822 t!157961))

(declare-fun b_and!123257 () Bool)

(assert (= b_and!123251 (and (=> t!157961 result!120978) b_and!123257)))

(assert (=> b!1705822 t!157963))

(declare-fun b_and!123259 () Bool)

(assert (= b_and!123253 (and (=> t!157963 result!120982) b_and!123259)))

(assert (=> b!1705822 t!157965))

(declare-fun b_and!123261 () Bool)

(assert (= b_and!123255 (and (=> t!157965 result!120984) b_and!123261)))

(declare-fun m!2109669 () Bool)

(assert (=> d!523718 m!2109669))

(assert (=> b!1705822 m!2109661))

(assert (=> b!1705822 m!2109661))

(declare-fun m!2109671 () Bool)

(assert (=> b!1705822 m!2109671))

(declare-fun m!2109673 () Bool)

(assert (=> b!1705823 m!2109673))

(assert (=> start!166452 d!523718))

(declare-fun b!1705834 () Bool)

(declare-fun e!1091006 () Bool)

(declare-fun inv!16 (TokenValue!3364) Bool)

(assert (=> b!1705834 (= e!1091006 (inv!16 (value!102983 token!523)))))

(declare-fun b!1705835 () Bool)

(declare-fun e!1091004 () Bool)

(declare-fun inv!17 (TokenValue!3364) Bool)

(assert (=> b!1705835 (= e!1091004 (inv!17 (value!102983 token!523)))))

(declare-fun b!1705836 () Bool)

(assert (=> b!1705836 (= e!1091006 e!1091004)))

(declare-fun c!279664 () Bool)

(assert (=> b!1705836 (= c!279664 (is-IntegerValue!10093 (value!102983 token!523)))))

(declare-fun d!523720 () Bool)

(declare-fun c!279663 () Bool)

(assert (=> d!523720 (= c!279663 (is-IntegerValue!10092 (value!102983 token!523)))))

(assert (=> d!523720 (= (inv!21 (value!102983 token!523)) e!1091006)))

(declare-fun b!1705837 () Bool)

(declare-fun res!764627 () Bool)

(declare-fun e!1091005 () Bool)

(assert (=> b!1705837 (=> res!764627 e!1091005)))

(assert (=> b!1705837 (= res!764627 (not (is-IntegerValue!10094 (value!102983 token!523))))))

(assert (=> b!1705837 (= e!1091004 e!1091005)))

(declare-fun b!1705838 () Bool)

(declare-fun inv!15 (TokenValue!3364) Bool)

(assert (=> b!1705838 (= e!1091005 (inv!15 (value!102983 token!523)))))

(assert (= (and d!523720 c!279663) b!1705834))

(assert (= (and d!523720 (not c!279663)) b!1705836))

(assert (= (and b!1705836 c!279664) b!1705835))

(assert (= (and b!1705836 (not c!279664)) b!1705837))

(assert (= (and b!1705837 (not res!764627)) b!1705838))

(declare-fun m!2109675 () Bool)

(assert (=> b!1705834 m!2109675))

(declare-fun m!2109677 () Bool)

(assert (=> b!1705835 m!2109677))

(declare-fun m!2109679 () Bool)

(assert (=> b!1705838 m!2109679))

(assert (=> b!1705691 d!523720))

(declare-fun d!523722 () Bool)

(assert (=> d!523722 (= (inv!23967 (tag!3570 (rule!5206 token!523))) (= (mod (str.len (value!102982 (tag!3570 (rule!5206 token!523)))) 2) 0))))

(assert (=> b!1705701 d!523722))

(declare-fun d!523724 () Bool)

(declare-fun res!764630 () Bool)

(declare-fun e!1091009 () Bool)

(assert (=> d!523724 (=> (not res!764630) (not e!1091009))))

(declare-fun semiInverseModEq!1289 (Int Int) Bool)

(assert (=> d!523724 (= res!764630 (semiInverseModEq!1289 (toChars!4628 (transformation!3274 (rule!5206 token!523))) (toValue!4769 (transformation!3274 (rule!5206 token!523)))))))

(assert (=> d!523724 (= (inv!23970 (transformation!3274 (rule!5206 token!523))) e!1091009)))

(declare-fun b!1705841 () Bool)

(declare-fun equivClasses!1230 (Int Int) Bool)

(assert (=> b!1705841 (= e!1091009 (equivClasses!1230 (toChars!4628 (transformation!3274 (rule!5206 token!523))) (toValue!4769 (transformation!3274 (rule!5206 token!523)))))))

(assert (= (and d!523724 res!764630) b!1705841))

(declare-fun m!2109681 () Bool)

(assert (=> d!523724 m!2109681))

(declare-fun m!2109683 () Bool)

(assert (=> b!1705841 m!2109683))

(assert (=> b!1705701 d!523724))

(declare-fun d!523726 () Bool)

(assert (=> d!523726 (= (get!5455 lt!652309) (v!24970 lt!652309))))

(assert (=> b!1705700 d!523726))

(declare-fun d!523728 () Bool)

(assert (=> d!523728 (= (inv!23967 (tag!3570 rule!422)) (= (mod (str.len (value!102982 (tag!3570 rule!422))) 2) 0))))

(assert (=> b!1705689 d!523728))

(declare-fun d!523730 () Bool)

(declare-fun res!764631 () Bool)

(declare-fun e!1091010 () Bool)

(assert (=> d!523730 (=> (not res!764631) (not e!1091010))))

(assert (=> d!523730 (= res!764631 (semiInverseModEq!1289 (toChars!4628 (transformation!3274 rule!422)) (toValue!4769 (transformation!3274 rule!422))))))

(assert (=> d!523730 (= (inv!23970 (transformation!3274 rule!422)) e!1091010)))

(declare-fun b!1705842 () Bool)

(assert (=> b!1705842 (= e!1091010 (equivClasses!1230 (toChars!4628 (transformation!3274 rule!422)) (toValue!4769 (transformation!3274 rule!422))))))

(assert (= (and d!523730 res!764631) b!1705842))

(declare-fun m!2109685 () Bool)

(assert (=> d!523730 m!2109685))

(declare-fun m!2109687 () Bool)

(assert (=> b!1705842 m!2109687))

(assert (=> b!1705689 d!523730))

(declare-fun d!523732 () Bool)

(assert (=> d!523732 (= (isEmpty!11662 rules!3447) (is-Nil!18579 rules!3447))))

(assert (=> b!1705698 d!523732))

(declare-fun d!523734 () Bool)

(assert (=> d!523734 (= (inv!23967 (tag!3570 (h!23980 rules!3447))) (= (mod (str.len (value!102982 (tag!3570 (h!23980 rules!3447)))) 2) 0))))

(assert (=> b!1705697 d!523734))

(declare-fun d!523736 () Bool)

(declare-fun res!764632 () Bool)

(declare-fun e!1091011 () Bool)

(assert (=> d!523736 (=> (not res!764632) (not e!1091011))))

(assert (=> d!523736 (= res!764632 (semiInverseModEq!1289 (toChars!4628 (transformation!3274 (h!23980 rules!3447))) (toValue!4769 (transformation!3274 (h!23980 rules!3447)))))))

(assert (=> d!523736 (= (inv!23970 (transformation!3274 (h!23980 rules!3447))) e!1091011)))

(declare-fun b!1705843 () Bool)

(assert (=> b!1705843 (= e!1091011 (equivClasses!1230 (toChars!4628 (transformation!3274 (h!23980 rules!3447))) (toValue!4769 (transformation!3274 (h!23980 rules!3447)))))))

(assert (= (and d!523736 res!764632) b!1705843))

(declare-fun m!2109689 () Bool)

(assert (=> d!523736 m!2109689))

(declare-fun m!2109691 () Bool)

(assert (=> b!1705843 m!2109691))

(assert (=> b!1705697 d!523736))

(declare-fun d!523738 () Bool)

(declare-fun lt!652338 () Bool)

(declare-fun content!2636 (List!18649) (Set Rule!6348))

(assert (=> d!523738 (= lt!652338 (set.member rule!422 (content!2636 rules!3447)))))

(declare-fun e!1091016 () Bool)

(assert (=> d!523738 (= lt!652338 e!1091016)))

(declare-fun res!764637 () Bool)

(assert (=> d!523738 (=> (not res!764637) (not e!1091016))))

(assert (=> d!523738 (= res!764637 (is-Cons!18579 rules!3447))))

(assert (=> d!523738 (= (contains!3290 rules!3447 rule!422) lt!652338)))

(declare-fun b!1705848 () Bool)

(declare-fun e!1091017 () Bool)

(assert (=> b!1705848 (= e!1091016 e!1091017)))

(declare-fun res!764638 () Bool)

(assert (=> b!1705848 (=> res!764638 e!1091017)))

(assert (=> b!1705848 (= res!764638 (= (h!23980 rules!3447) rule!422))))

(declare-fun b!1705849 () Bool)

(assert (=> b!1705849 (= e!1091017 (contains!3290 (t!157950 rules!3447) rule!422))))

(assert (= (and d!523738 res!764637) b!1705848))

(assert (= (and b!1705848 (not res!764638)) b!1705849))

(declare-fun m!2109693 () Bool)

(assert (=> d!523738 m!2109693))

(declare-fun m!2109695 () Bool)

(assert (=> d!523738 m!2109695))

(declare-fun m!2109697 () Bool)

(assert (=> b!1705849 m!2109697))

(assert (=> b!1705696 d!523738))

(declare-fun b!1705860 () Bool)

(declare-fun b_free!46031 () Bool)

(declare-fun b_next!46735 () Bool)

(assert (=> b!1705860 (= b_free!46031 (not b_next!46735))))

(declare-fun tp!487103 () Bool)

(declare-fun b_and!123263 () Bool)

(assert (=> b!1705860 (= tp!487103 b_and!123263)))

(declare-fun b_free!46033 () Bool)

(declare-fun b_next!46737 () Bool)

(assert (=> b!1705860 (= b_free!46033 (not b_next!46737))))

(declare-fun tb!100759 () Bool)

(declare-fun t!157967 () Bool)

(assert (=> (and b!1705860 (= (toChars!4628 (transformation!3274 (h!23980 (t!157950 rules!3447)))) (toChars!4628 (transformation!3274 (rule!5206 token!523)))) t!157967) tb!100759))

(declare-fun result!120988 () Bool)

(assert (= result!120988 result!120978))

(assert (=> d!523714 t!157967))

(assert (=> b!1705822 t!157967))

(declare-fun tp!487105 () Bool)

(declare-fun b_and!123265 () Bool)

(assert (=> b!1705860 (= tp!487105 (and (=> t!157967 result!120988) b_and!123265))))

(declare-fun e!1091027 () Bool)

(assert (=> b!1705860 (= e!1091027 (and tp!487103 tp!487105))))

(declare-fun b!1705859 () Bool)

(declare-fun tp!487104 () Bool)

(declare-fun e!1091028 () Bool)

(assert (=> b!1705859 (= e!1091028 (and tp!487104 (inv!23967 (tag!3570 (h!23980 (t!157950 rules!3447)))) (inv!23970 (transformation!3274 (h!23980 (t!157950 rules!3447)))) e!1091027))))

(declare-fun b!1705858 () Bool)

(declare-fun e!1091026 () Bool)

(declare-fun tp!487106 () Bool)

(assert (=> b!1705858 (= e!1091026 (and e!1091028 tp!487106))))

(assert (=> b!1705695 (= tp!487052 e!1091026)))

(assert (= b!1705859 b!1705860))

(assert (= b!1705858 b!1705859))

(assert (= (and b!1705695 (is-Cons!18579 (t!157950 rules!3447))) b!1705858))

(declare-fun m!2109699 () Bool)

(assert (=> b!1705859 m!2109699))

(declare-fun m!2109701 () Bool)

(assert (=> b!1705859 m!2109701))

(declare-fun b!1705872 () Bool)

(declare-fun e!1091032 () Bool)

(declare-fun tp!487118 () Bool)

(declare-fun tp!487121 () Bool)

(assert (=> b!1705872 (= e!1091032 (and tp!487118 tp!487121))))

(declare-fun b!1705874 () Bool)

(declare-fun tp!487117 () Bool)

(declare-fun tp!487119 () Bool)

(assert (=> b!1705874 (= e!1091032 (and tp!487117 tp!487119))))

(declare-fun b!1705871 () Bool)

(declare-fun tp_is_empty!7459 () Bool)

(assert (=> b!1705871 (= e!1091032 tp_is_empty!7459)))

(declare-fun b!1705873 () Bool)

(declare-fun tp!487120 () Bool)

(assert (=> b!1705873 (= e!1091032 tp!487120)))

(assert (=> b!1705689 (= tp!487051 e!1091032)))

(assert (= (and b!1705689 (is-ElementMatch!4602 (regex!3274 rule!422))) b!1705871))

(assert (= (and b!1705689 (is-Concat!7967 (regex!3274 rule!422))) b!1705872))

(assert (= (and b!1705689 (is-Star!4602 (regex!3274 rule!422))) b!1705873))

(assert (= (and b!1705689 (is-Union!4602 (regex!3274 rule!422))) b!1705874))

(declare-fun b!1705876 () Bool)

(declare-fun e!1091033 () Bool)

(declare-fun tp!487123 () Bool)

(declare-fun tp!487126 () Bool)

(assert (=> b!1705876 (= e!1091033 (and tp!487123 tp!487126))))

(declare-fun b!1705878 () Bool)

(declare-fun tp!487122 () Bool)

(declare-fun tp!487124 () Bool)

(assert (=> b!1705878 (= e!1091033 (and tp!487122 tp!487124))))

(declare-fun b!1705875 () Bool)

(assert (=> b!1705875 (= e!1091033 tp_is_empty!7459)))

(declare-fun b!1705877 () Bool)

(declare-fun tp!487125 () Bool)

(assert (=> b!1705877 (= e!1091033 tp!487125)))

(assert (=> b!1705697 (= tp!487055 e!1091033)))

(assert (= (and b!1705697 (is-ElementMatch!4602 (regex!3274 (h!23980 rules!3447)))) b!1705875))

(assert (= (and b!1705697 (is-Concat!7967 (regex!3274 (h!23980 rules!3447)))) b!1705876))

(assert (= (and b!1705697 (is-Star!4602 (regex!3274 (h!23980 rules!3447)))) b!1705877))

(assert (= (and b!1705697 (is-Union!4602 (regex!3274 (h!23980 rules!3447)))) b!1705878))

(declare-fun b!1705883 () Bool)

(declare-fun e!1091036 () Bool)

(declare-fun tp!487129 () Bool)

(assert (=> b!1705883 (= e!1091036 (and tp_is_empty!7459 tp!487129))))

(assert (=> b!1705691 (= tp!487054 e!1091036)))

(assert (= (and b!1705691 (is-Cons!18578 (originalCharacters!4088 token!523))) b!1705883))

(declare-fun b!1705885 () Bool)

(declare-fun e!1091037 () Bool)

(declare-fun tp!487131 () Bool)

(declare-fun tp!487134 () Bool)

(assert (=> b!1705885 (= e!1091037 (and tp!487131 tp!487134))))

(declare-fun b!1705887 () Bool)

(declare-fun tp!487130 () Bool)

(declare-fun tp!487132 () Bool)

(assert (=> b!1705887 (= e!1091037 (and tp!487130 tp!487132))))

(declare-fun b!1705884 () Bool)

(assert (=> b!1705884 (= e!1091037 tp_is_empty!7459)))

(declare-fun b!1705886 () Bool)

(declare-fun tp!487133 () Bool)

(assert (=> b!1705886 (= e!1091037 tp!487133)))

(assert (=> b!1705701 (= tp!487049 e!1091037)))

(assert (= (and b!1705701 (is-ElementMatch!4602 (regex!3274 (rule!5206 token!523)))) b!1705884))

(assert (= (and b!1705701 (is-Concat!7967 (regex!3274 (rule!5206 token!523)))) b!1705885))

(assert (= (and b!1705701 (is-Star!4602 (regex!3274 (rule!5206 token!523)))) b!1705886))

(assert (= (and b!1705701 (is-Union!4602 (regex!3274 (rule!5206 token!523)))) b!1705887))

(declare-fun b_lambda!53843 () Bool)

(assert (= b_lambda!53839 (or (and b!1705694 b_free!46009) (and b!1705690 b_free!46013 (= (toChars!4628 (transformation!3274 (h!23980 rules!3447))) (toChars!4628 (transformation!3274 (rule!5206 token!523))))) (and b!1705699 b_free!46017 (= (toChars!4628 (transformation!3274 rule!422)) (toChars!4628 (transformation!3274 (rule!5206 token!523))))) (and b!1705860 b_free!46033 (= (toChars!4628 (transformation!3274 (h!23980 (t!157950 rules!3447)))) (toChars!4628 (transformation!3274 (rule!5206 token!523))))) b_lambda!53843)))

(declare-fun b_lambda!53845 () Bool)

(assert (= b_lambda!53841 (or (and b!1705694 b_free!46009) (and b!1705690 b_free!46013 (= (toChars!4628 (transformation!3274 (h!23980 rules!3447))) (toChars!4628 (transformation!3274 (rule!5206 token!523))))) (and b!1705699 b_free!46017 (= (toChars!4628 (transformation!3274 rule!422)) (toChars!4628 (transformation!3274 (rule!5206 token!523))))) (and b!1705860 b_free!46033 (= (toChars!4628 (transformation!3274 (h!23980 (t!157950 rules!3447)))) (toChars!4628 (transformation!3274 (rule!5206 token!523))))) b_lambda!53845)))

(push 1)

(assert (not b!1705887))

(assert (not b!1705877))

(assert (not b!1705883))

(assert (not b!1705809))

(assert (not d!523718))

(assert (not b!1705801))

(assert (not b_next!46719))

(assert b_and!123229)

(assert (not b!1705872))

(assert (not d!523700))

(assert b_and!123225)

(assert (not b!1705815))

(assert (not b!1705800))

(assert (not b!1705876))

(assert (not d!523738))

(assert (not b!1705803))

(assert (not b!1705814))

(assert (not tb!100753))

(assert b_and!123263)

(assert (not b!1705747))

(assert (not b!1705878))

(assert (not b_next!46715))

(assert (not d!523702))

(assert (not bm!109238))

(assert (not d!523704))

(assert (not b_next!46711))

(assert (not b_lambda!53843))

(assert (not b!1705823))

(assert (not b!1705859))

(assert (not b!1705886))

(assert (not d!523714))

(assert (not b!1705874))

(assert (not b!1705797))

(assert (not b!1705835))

(assert (not b!1705796))

(assert (not b!1705841))

(assert b_and!123259)

(assert (not d!523712))

(assert (not b!1705843))

(assert (not b!1705858))

(assert (not b_lambda!53845))

(assert (not b_next!46721))

(assert (not b!1705849))

(assert b_and!123261)

(assert (not d!523724))

(assert tp_is_empty!7459)

(assert (not b!1705822))

(assert (not b!1705842))

(assert (not b!1705873))

(assert b_and!123265)

(assert (not b!1705838))

(assert (not d!523716))

(assert (not d!523730))

(assert (not d!523736))

(assert (not b_next!46713))

(assert (not b!1705885))

(assert (not b!1705834))

(assert (not b!1705798))

(assert b_and!123221)

(assert b_and!123257)

(assert (not b_next!46717))

(assert (not b!1705802))

(assert (not b_next!46737))

(assert (not b!1705799))

(assert (not b_next!46735))

(check-sat)

(pop 1)

(push 1)

(assert b_and!123225)

(assert b_and!123263)

(assert (not b_next!46715))

(assert (not b_next!46711))

(assert b_and!123259)

(assert b_and!123265)

(assert (not b_next!46713))

(assert (not b_next!46719))

(assert b_and!123229)

(assert (not b_next!46717))

(assert b_and!123261)

(assert (not b_next!46721))

(assert b_and!123221)

(assert b_and!123257)

(assert (not b_next!46737))

(assert (not b_next!46735))

(check-sat)

(pop 1)

