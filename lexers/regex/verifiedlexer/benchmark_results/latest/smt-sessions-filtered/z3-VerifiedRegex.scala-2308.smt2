; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113502 () Bool)

(assert start!113502)

(declare-fun b!1291641 () Bool)

(declare-fun b_free!30555 () Bool)

(declare-fun b_next!31259 () Bool)

(assert (=> b!1291641 (= b_free!30555 (not b_next!31259))))

(declare-fun tp!376561 () Bool)

(declare-fun b_and!86071 () Bool)

(assert (=> b!1291641 (= tp!376561 b_and!86071)))

(declare-fun b_free!30557 () Bool)

(declare-fun b_next!31261 () Bool)

(assert (=> b!1291641 (= b_free!30557 (not b_next!31261))))

(declare-fun tp!376563 () Bool)

(declare-fun b_and!86073 () Bool)

(assert (=> b!1291641 (= tp!376563 b_and!86073)))

(declare-fun b!1291632 () Bool)

(declare-fun b_free!30559 () Bool)

(declare-fun b_next!31263 () Bool)

(assert (=> b!1291632 (= b_free!30559 (not b_next!31263))))

(declare-fun tp!376564 () Bool)

(declare-fun b_and!86075 () Bool)

(assert (=> b!1291632 (= tp!376564 b_and!86075)))

(declare-fun b_free!30561 () Bool)

(declare-fun b_next!31265 () Bool)

(assert (=> b!1291632 (= b_free!30561 (not b_next!31265))))

(declare-fun tp!376567 () Bool)

(declare-fun b_and!86077 () Bool)

(assert (=> b!1291632 (= tp!376567 b_and!86077)))

(declare-fun b!1291637 () Bool)

(declare-fun b_free!30563 () Bool)

(declare-fun b_next!31267 () Bool)

(assert (=> b!1291637 (= b_free!30563 (not b_next!31267))))

(declare-fun tp!376566 () Bool)

(declare-fun b_and!86079 () Bool)

(assert (=> b!1291637 (= tp!376566 b_and!86079)))

(declare-fun b_free!30565 () Bool)

(declare-fun b_next!31269 () Bool)

(assert (=> b!1291637 (= b_free!30565 (not b_next!31269))))

(declare-fun tp!376565 () Bool)

(declare-fun b_and!86081 () Bool)

(assert (=> b!1291637 (= tp!376565 b_and!86081)))

(declare-fun b!1291644 () Bool)

(assert (=> b!1291644 true))

(assert (=> b!1291644 true))

(declare-fun e!828396 () Bool)

(assert (=> b!1291632 (= e!828396 (and tp!376564 tp!376567))))

(declare-fun b!1291633 () Bool)

(declare-fun res!578872 () Bool)

(declare-fun e!828399 () Bool)

(assert (=> b!1291633 (=> (not res!578872) (not e!828399))))

(declare-datatypes ((LexerInterface!1920 0))(
  ( (LexerInterfaceExt!1917 (__x!8459 Int)) (Lexer!1918) )
))
(declare-fun thiss!19762 () LexerInterface!1920)

(declare-datatypes ((List!12981 0))(
  ( (Nil!12915) (Cons!12915 (h!18316 (_ BitVec 16)) (t!117204 List!12981)) )
))
(declare-datatypes ((TokenValue!2315 0))(
  ( (FloatLiteralValue!4630 (text!16650 List!12981)) (TokenValueExt!2314 (__x!8460 Int)) (Broken!11575 (value!73019 List!12981)) (Object!2380) (End!2315) (Def!2315) (Underscore!2315) (Match!2315) (Else!2315) (Error!2315) (Case!2315) (If!2315) (Extends!2315) (Abstract!2315) (Class!2315) (Val!2315) (DelimiterValue!4630 (del!2375 List!12981)) (KeywordValue!2321 (value!73020 List!12981)) (CommentValue!4630 (value!73021 List!12981)) (WhitespaceValue!4630 (value!73022 List!12981)) (IndentationValue!2315 (value!73023 List!12981)) (String!15810) (Int32!2315) (Broken!11576 (value!73024 List!12981)) (Boolean!2316) (Unit!19067) (OperatorValue!2318 (op!2375 List!12981)) (IdentifierValue!4630 (value!73025 List!12981)) (IdentifierValue!4631 (value!73026 List!12981)) (WhitespaceValue!4631 (value!73027 List!12981)) (True!4630) (False!4630) (Broken!11577 (value!73028 List!12981)) (Broken!11578 (value!73029 List!12981)) (True!4631) (RightBrace!2315) (RightBracket!2315) (Colon!2315) (Null!2315) (Comma!2315) (LeftBracket!2315) (False!4631) (LeftBrace!2315) (ImaginaryLiteralValue!2315 (text!16651 List!12981)) (StringLiteralValue!6945 (value!73030 List!12981)) (EOFValue!2315 (value!73031 List!12981)) (IdentValue!2315 (value!73032 List!12981)) (DelimiterValue!4631 (value!73033 List!12981)) (DedentValue!2315 (value!73034 List!12981)) (NewLineValue!2315 (value!73035 List!12981)) (IntegerValue!6945 (value!73036 (_ BitVec 32)) (text!16652 List!12981)) (IntegerValue!6946 (value!73037 Int) (text!16653 List!12981)) (Times!2315) (Or!2315) (Equal!2315) (Minus!2315) (Broken!11579 (value!73038 List!12981)) (And!2315) (Div!2315) (LessEqual!2315) (Mod!2315) (Concat!5854) (Not!2315) (Plus!2315) (SpaceValue!2315 (value!73039 List!12981)) (IntegerValue!6947 (value!73040 Int) (text!16654 List!12981)) (StringLiteralValue!6946 (text!16655 List!12981)) (FloatLiteralValue!4631 (text!16656 List!12981)) (BytesLiteralValue!2315 (value!73041 List!12981)) (CommentValue!4631 (value!73042 List!12981)) (StringLiteralValue!6947 (value!73043 List!12981)) (ErrorTokenValue!2315 (msg!2376 List!12981)) )
))
(declare-datatypes ((C!7368 0))(
  ( (C!7369 (val!4244 Int)) )
))
(declare-datatypes ((List!12982 0))(
  ( (Nil!12916) (Cons!12916 (h!18317 C!7368) (t!117205 List!12982)) )
))
(declare-datatypes ((IArray!8491 0))(
  ( (IArray!8492 (innerList!4303 List!12982)) )
))
(declare-datatypes ((Conc!4243 0))(
  ( (Node!4243 (left!11113 Conc!4243) (right!11443 Conc!4243) (csize!8716 Int) (cheight!4454 Int)) (Leaf!6552 (xs!6954 IArray!8491) (csize!8717 Int)) (Empty!4243) )
))
(declare-datatypes ((BalanceConc!8426 0))(
  ( (BalanceConc!8427 (c!212569 Conc!4243)) )
))
(declare-datatypes ((Regex!3539 0))(
  ( (ElementMatch!3539 (c!212570 C!7368)) (Concat!5855 (regOne!7590 Regex!3539) (regTwo!7590 Regex!3539)) (EmptyExpr!3539) (Star!3539 (reg!3868 Regex!3539)) (EmptyLang!3539) (Union!3539 (regOne!7591 Regex!3539) (regTwo!7591 Regex!3539)) )
))
(declare-datatypes ((String!15811 0))(
  ( (String!15812 (value!73044 String)) )
))
(declare-datatypes ((TokenValueInjection!4290 0))(
  ( (TokenValueInjection!4291 (toValue!3424 Int) (toChars!3283 Int)) )
))
(declare-datatypes ((Rule!4250 0))(
  ( (Rule!4251 (regex!2225 Regex!3539) (tag!2487 String!15811) (isSeparator!2225 Bool) (transformation!2225 TokenValueInjection!4290)) )
))
(declare-datatypes ((List!12983 0))(
  ( (Nil!12917) (Cons!12917 (h!18318 Rule!4250) (t!117206 List!12983)) )
))
(declare-fun rules!2550 () List!12983)

(declare-datatypes ((Token!4112 0))(
  ( (Token!4113 (value!73045 TokenValue!2315) (rule!3964 Rule!4250) (size!10541 Int) (originalCharacters!3087 List!12982)) )
))
(declare-fun t2!34 () Token!4112)

(declare-fun rulesProduceIndividualToken!889 (LexerInterface!1920 List!12983 Token!4112) Bool)

(assert (=> b!1291633 (= res!578872 (rulesProduceIndividualToken!889 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1291634 () Bool)

(declare-fun res!578873 () Bool)

(declare-fun e!828401 () Bool)

(assert (=> b!1291634 (=> (not res!578873) (not e!828401))))

(declare-fun t1!34 () Token!4112)

(declare-fun separableTokensPredicate!203 (LexerInterface!1920 Token!4112 Token!4112 List!12983) Bool)

(assert (=> b!1291634 (= res!578873 (not (separableTokensPredicate!203 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1291635 () Bool)

(assert (=> b!1291635 (= e!828399 e!828401)))

(declare-fun res!578869 () Bool)

(assert (=> b!1291635 (=> (not res!578869) (not e!828401))))

(declare-fun lt!425166 () BalanceConc!8426)

(declare-fun size!10542 (BalanceConc!8426) Int)

(assert (=> b!1291635 (= res!578869 (> (size!10542 lt!425166) 0))))

(declare-fun charsOf!1197 (Token!4112) BalanceConc!8426)

(assert (=> b!1291635 (= lt!425166 (charsOf!1197 t2!34))))

(declare-fun e!828404 () Bool)

(assert (=> b!1291637 (= e!828404 (and tp!376566 tp!376565))))

(declare-fun b!1291638 () Bool)

(declare-fun res!578874 () Bool)

(assert (=> b!1291638 (=> (not res!578874) (not e!828399))))

(assert (=> b!1291638 (= res!578874 (not (= (isSeparator!2225 (rule!3964 t1!34)) (isSeparator!2225 (rule!3964 t2!34)))))))

(declare-fun b!1291639 () Bool)

(declare-fun e!828400 () Bool)

(assert (=> b!1291639 (= e!828401 e!828400)))

(declare-fun res!578871 () Bool)

(assert (=> b!1291639 (=> (not res!578871) (not e!828400))))

(declare-fun lt!425168 () Regex!3539)

(declare-fun lt!425167 () List!12982)

(declare-fun prefixMatch!52 (Regex!3539 List!12982) Bool)

(assert (=> b!1291639 (= res!578871 (prefixMatch!52 lt!425168 lt!425167))))

(declare-fun rulesRegex!110 (LexerInterface!1920 List!12983) Regex!3539)

(assert (=> b!1291639 (= lt!425168 (rulesRegex!110 thiss!19762 rules!2550))))

(declare-fun ++!3272 (List!12982 List!12982) List!12982)

(declare-fun list!4821 (BalanceConc!8426) List!12982)

(declare-fun apply!2823 (BalanceConc!8426 Int) C!7368)

(assert (=> b!1291639 (= lt!425167 (++!3272 (list!4821 (charsOf!1197 t1!34)) (Cons!12916 (apply!2823 lt!425166 0) Nil!12916)))))

(declare-fun b!1291640 () Bool)

(declare-fun tp!376562 () Bool)

(declare-fun e!828407 () Bool)

(declare-fun inv!17334 (String!15811) Bool)

(declare-fun inv!17337 (TokenValueInjection!4290) Bool)

(assert (=> b!1291640 (= e!828407 (and tp!376562 (inv!17334 (tag!2487 (rule!3964 t1!34))) (inv!17337 (transformation!2225 (rule!3964 t1!34))) e!828396))))

(declare-fun e!828402 () Bool)

(assert (=> b!1291641 (= e!828402 (and tp!376561 tp!376563))))

(declare-fun b!1291642 () Bool)

(declare-fun e!828398 () Bool)

(declare-fun lambda!50751 () Int)

(declare-fun size!10543 (List!12982) Int)

(declare-fun pickWitness!2 (Int) List!12982)

(assert (=> b!1291642 (= e!828398 (>= (size!10543 (pickWitness!2 lambda!50751)) (size!10543 lt!425167)))))

(declare-fun b!1291643 () Bool)

(declare-fun res!578876 () Bool)

(assert (=> b!1291643 (=> (not res!578876) (not e!828399))))

(declare-fun rulesInvariant!1790 (LexerInterface!1920 List!12983) Bool)

(assert (=> b!1291643 (= res!578876 (rulesInvariant!1790 thiss!19762 rules!2550))))

(assert (=> b!1291644 (= e!828400 (not e!828398))))

(declare-fun res!578870 () Bool)

(assert (=> b!1291644 (=> res!578870 e!828398)))

(declare-fun Exists!697 (Int) Bool)

(assert (=> b!1291644 (= res!578870 (not (Exists!697 lambda!50751)))))

(assert (=> b!1291644 (Exists!697 lambda!50751)))

(declare-datatypes ((Unit!19068 0))(
  ( (Unit!19069) )
))
(declare-fun lt!425165 () Unit!19068)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!15 (Regex!3539 List!12982) Unit!19068)

(assert (=> b!1291644 (= lt!425165 (lemmaPrefixMatchThenExistsStringThatMatches!15 lt!425168 lt!425167))))

(declare-fun b!1291645 () Bool)

(declare-fun res!578868 () Bool)

(assert (=> b!1291645 (=> (not res!578868) (not e!828399))))

(declare-fun isEmpty!7665 (List!12983) Bool)

(assert (=> b!1291645 (= res!578868 (not (isEmpty!7665 rules!2550)))))

(declare-fun b!1291646 () Bool)

(declare-fun res!578877 () Bool)

(assert (=> b!1291646 (=> (not res!578877) (not e!828399))))

(assert (=> b!1291646 (= res!578877 (rulesProduceIndividualToken!889 thiss!19762 rules!2550 t1!34))))

(declare-fun tp!376571 () Bool)

(declare-fun b!1291647 () Bool)

(declare-fun e!828393 () Bool)

(assert (=> b!1291647 (= e!828393 (and tp!376571 (inv!17334 (tag!2487 (h!18318 rules!2550))) (inv!17337 (transformation!2225 (h!18318 rules!2550))) e!828402))))

(declare-fun b!1291648 () Bool)

(declare-fun e!828395 () Bool)

(declare-fun e!828403 () Bool)

(declare-fun tp!376570 () Bool)

(declare-fun inv!21 (TokenValue!2315) Bool)

(assert (=> b!1291648 (= e!828403 (and (inv!21 (value!73045 t2!34)) e!828395 tp!376570))))

(declare-fun b!1291649 () Bool)

(declare-fun res!578875 () Bool)

(assert (=> b!1291649 (=> (not res!578875) (not e!828401))))

(declare-fun sepAndNonSepRulesDisjointChars!598 (List!12983 List!12983) Bool)

(assert (=> b!1291649 (= res!578875 (sepAndNonSepRulesDisjointChars!598 rules!2550 rules!2550))))

(declare-fun b!1291636 () Bool)

(declare-fun e!828406 () Bool)

(declare-fun tp!376569 () Bool)

(assert (=> b!1291636 (= e!828406 (and (inv!21 (value!73045 t1!34)) e!828407 tp!376569))))

(declare-fun res!578878 () Bool)

(assert (=> start!113502 (=> (not res!578878) (not e!828399))))

(get-info :version)

(assert (=> start!113502 (= res!578878 ((_ is Lexer!1918) thiss!19762))))

(assert (=> start!113502 e!828399))

(assert (=> start!113502 true))

(declare-fun e!828405 () Bool)

(assert (=> start!113502 e!828405))

(declare-fun inv!17338 (Token!4112) Bool)

(assert (=> start!113502 (and (inv!17338 t1!34) e!828406)))

(assert (=> start!113502 (and (inv!17338 t2!34) e!828403)))

(declare-fun b!1291650 () Bool)

(declare-fun tp!376572 () Bool)

(assert (=> b!1291650 (= e!828405 (and e!828393 tp!376572))))

(declare-fun tp!376568 () Bool)

(declare-fun b!1291651 () Bool)

(assert (=> b!1291651 (= e!828395 (and tp!376568 (inv!17334 (tag!2487 (rule!3964 t2!34))) (inv!17337 (transformation!2225 (rule!3964 t2!34))) e!828404))))

(assert (= (and start!113502 res!578878) b!1291645))

(assert (= (and b!1291645 res!578868) b!1291643))

(assert (= (and b!1291643 res!578876) b!1291646))

(assert (= (and b!1291646 res!578877) b!1291633))

(assert (= (and b!1291633 res!578872) b!1291638))

(assert (= (and b!1291638 res!578874) b!1291635))

(assert (= (and b!1291635 res!578869) b!1291649))

(assert (= (and b!1291649 res!578875) b!1291634))

(assert (= (and b!1291634 res!578873) b!1291639))

(assert (= (and b!1291639 res!578871) b!1291644))

(assert (= (and b!1291644 (not res!578870)) b!1291642))

(assert (= b!1291647 b!1291641))

(assert (= b!1291650 b!1291647))

(assert (= (and start!113502 ((_ is Cons!12917) rules!2550)) b!1291650))

(assert (= b!1291640 b!1291632))

(assert (= b!1291636 b!1291640))

(assert (= start!113502 b!1291636))

(assert (= b!1291651 b!1291637))

(assert (= b!1291648 b!1291651))

(assert (= start!113502 b!1291648))

(declare-fun m!1442349 () Bool)

(assert (=> b!1291646 m!1442349))

(declare-fun m!1442351 () Bool)

(assert (=> b!1291647 m!1442351))

(declare-fun m!1442353 () Bool)

(assert (=> b!1291647 m!1442353))

(declare-fun m!1442355 () Bool)

(assert (=> b!1291635 m!1442355))

(declare-fun m!1442357 () Bool)

(assert (=> b!1291635 m!1442357))

(declare-fun m!1442359 () Bool)

(assert (=> start!113502 m!1442359))

(declare-fun m!1442361 () Bool)

(assert (=> start!113502 m!1442361))

(declare-fun m!1442363 () Bool)

(assert (=> b!1291636 m!1442363))

(declare-fun m!1442365 () Bool)

(assert (=> b!1291649 m!1442365))

(declare-fun m!1442367 () Bool)

(assert (=> b!1291634 m!1442367))

(declare-fun m!1442369 () Bool)

(assert (=> b!1291645 m!1442369))

(declare-fun m!1442371 () Bool)

(assert (=> b!1291639 m!1442371))

(declare-fun m!1442373 () Bool)

(assert (=> b!1291639 m!1442373))

(declare-fun m!1442375 () Bool)

(assert (=> b!1291639 m!1442375))

(declare-fun m!1442377 () Bool)

(assert (=> b!1291639 m!1442377))

(declare-fun m!1442379 () Bool)

(assert (=> b!1291639 m!1442379))

(assert (=> b!1291639 m!1442371))

(assert (=> b!1291639 m!1442373))

(declare-fun m!1442381 () Bool)

(assert (=> b!1291639 m!1442381))

(declare-fun m!1442383 () Bool)

(assert (=> b!1291648 m!1442383))

(declare-fun m!1442385 () Bool)

(assert (=> b!1291642 m!1442385))

(assert (=> b!1291642 m!1442385))

(declare-fun m!1442387 () Bool)

(assert (=> b!1291642 m!1442387))

(declare-fun m!1442389 () Bool)

(assert (=> b!1291642 m!1442389))

(declare-fun m!1442391 () Bool)

(assert (=> b!1291640 m!1442391))

(declare-fun m!1442393 () Bool)

(assert (=> b!1291640 m!1442393))

(declare-fun m!1442395 () Bool)

(assert (=> b!1291644 m!1442395))

(assert (=> b!1291644 m!1442395))

(declare-fun m!1442397 () Bool)

(assert (=> b!1291644 m!1442397))

(declare-fun m!1442399 () Bool)

(assert (=> b!1291633 m!1442399))

(declare-fun m!1442401 () Bool)

(assert (=> b!1291643 m!1442401))

(declare-fun m!1442403 () Bool)

(assert (=> b!1291651 m!1442403))

(declare-fun m!1442405 () Bool)

(assert (=> b!1291651 m!1442405))

(check-sat (not b!1291646) (not b!1291639) (not b!1291649) (not b!1291651) (not b!1291648) b_and!86077 (not b_next!31263) (not b!1291647) (not b!1291640) (not b!1291635) (not start!113502) (not b_next!31259) (not b!1291634) b_and!86081 b_and!86073 (not b_next!31261) b_and!86075 b_and!86071 (not b_next!31269) (not b!1291643) b_and!86079 (not b_next!31265) (not b_next!31267) (not b!1291644) (not b!1291633) (not b!1291650) (not b!1291645) (not b!1291642) (not b!1291636))
(check-sat (not b_next!31259) b_and!86077 (not b_next!31263) b_and!86079 b_and!86081 b_and!86073 (not b_next!31261) b_and!86075 b_and!86071 (not b_next!31269) (not b_next!31265) (not b_next!31267))
(get-model)

(declare-fun d!364097 () Bool)

(declare-fun lt!425171 () Int)

(assert (=> d!364097 (>= lt!425171 0)))

(declare-fun e!828411 () Int)

(assert (=> d!364097 (= lt!425171 e!828411)))

(declare-fun c!212573 () Bool)

(assert (=> d!364097 (= c!212573 ((_ is Nil!12916) (pickWitness!2 lambda!50751)))))

(assert (=> d!364097 (= (size!10543 (pickWitness!2 lambda!50751)) lt!425171)))

(declare-fun b!1291660 () Bool)

(assert (=> b!1291660 (= e!828411 0)))

(declare-fun b!1291661 () Bool)

(assert (=> b!1291661 (= e!828411 (+ 1 (size!10543 (t!117205 (pickWitness!2 lambda!50751)))))))

(assert (= (and d!364097 c!212573) b!1291660))

(assert (= (and d!364097 (not c!212573)) b!1291661))

(declare-fun m!1442407 () Bool)

(assert (=> b!1291661 m!1442407))

(assert (=> b!1291642 d!364097))

(declare-fun d!364099 () Bool)

(declare-fun lt!425174 () List!12982)

(declare-fun dynLambda!5635 (Int List!12982) Bool)

(assert (=> d!364099 (dynLambda!5635 lambda!50751 lt!425174)))

(declare-fun choose!7925 (Int) List!12982)

(assert (=> d!364099 (= lt!425174 (choose!7925 lambda!50751))))

(assert (=> d!364099 (Exists!697 lambda!50751)))

(assert (=> d!364099 (= (pickWitness!2 lambda!50751) lt!425174)))

(declare-fun b_lambda!36895 () Bool)

(assert (=> (not b_lambda!36895) (not d!364099)))

(declare-fun bs!328577 () Bool)

(assert (= bs!328577 d!364099))

(declare-fun m!1442409 () Bool)

(assert (=> bs!328577 m!1442409))

(declare-fun m!1442411 () Bool)

(assert (=> bs!328577 m!1442411))

(assert (=> bs!328577 m!1442395))

(assert (=> b!1291642 d!364099))

(declare-fun d!364103 () Bool)

(declare-fun lt!425175 () Int)

(assert (=> d!364103 (>= lt!425175 0)))

(declare-fun e!828412 () Int)

(assert (=> d!364103 (= lt!425175 e!828412)))

(declare-fun c!212574 () Bool)

(assert (=> d!364103 (= c!212574 ((_ is Nil!12916) lt!425167))))

(assert (=> d!364103 (= (size!10543 lt!425167) lt!425175)))

(declare-fun b!1291662 () Bool)

(assert (=> b!1291662 (= e!828412 0)))

(declare-fun b!1291663 () Bool)

(assert (=> b!1291663 (= e!828412 (+ 1 (size!10543 (t!117205 lt!425167))))))

(assert (= (and d!364103 c!212574) b!1291662))

(assert (= (and d!364103 (not c!212574)) b!1291663))

(declare-fun m!1442413 () Bool)

(assert (=> b!1291663 m!1442413))

(assert (=> b!1291642 d!364103))

(declare-fun d!364105 () Bool)

(declare-fun res!578889 () Bool)

(declare-fun e!828418 () Bool)

(assert (=> d!364105 (=> (not res!578889) (not e!828418))))

(declare-fun rulesValid!813 (LexerInterface!1920 List!12983) Bool)

(assert (=> d!364105 (= res!578889 (rulesValid!813 thiss!19762 rules!2550))))

(assert (=> d!364105 (= (rulesInvariant!1790 thiss!19762 rules!2550) e!828418)))

(declare-fun b!1291672 () Bool)

(declare-datatypes ((List!12984 0))(
  ( (Nil!12918) (Cons!12918 (h!18319 String!15811) (t!117241 List!12984)) )
))
(declare-fun noDuplicateTag!813 (LexerInterface!1920 List!12983 List!12984) Bool)

(assert (=> b!1291672 (= e!828418 (noDuplicateTag!813 thiss!19762 rules!2550 Nil!12918))))

(assert (= (and d!364105 res!578889) b!1291672))

(declare-fun m!1442417 () Bool)

(assert (=> d!364105 m!1442417))

(declare-fun m!1442419 () Bool)

(assert (=> b!1291672 m!1442419))

(assert (=> b!1291643 d!364105))

(declare-fun d!364109 () Bool)

(declare-fun choose!7927 (Int) Bool)

(assert (=> d!364109 (= (Exists!697 lambda!50751) (choose!7927 lambda!50751))))

(declare-fun bs!328578 () Bool)

(assert (= bs!328578 d!364109))

(declare-fun m!1442421 () Bool)

(assert (=> bs!328578 m!1442421))

(assert (=> b!1291644 d!364109))

(declare-fun bs!328580 () Bool)

(declare-fun d!364111 () Bool)

(assert (= bs!328580 (and d!364111 b!1291644)))

(declare-fun lambda!50754 () Int)

(assert (=> bs!328580 (= lambda!50754 lambda!50751)))

(assert (=> d!364111 true))

(assert (=> d!364111 true))

(assert (=> d!364111 (Exists!697 lambda!50754)))

(declare-fun lt!425185 () Unit!19068)

(declare-fun choose!7928 (Regex!3539 List!12982) Unit!19068)

(assert (=> d!364111 (= lt!425185 (choose!7928 lt!425168 lt!425167))))

(declare-fun validRegex!1524 (Regex!3539) Bool)

(assert (=> d!364111 (validRegex!1524 lt!425168)))

(assert (=> d!364111 (= (lemmaPrefixMatchThenExistsStringThatMatches!15 lt!425168 lt!425167) lt!425185)))

(declare-fun bs!328581 () Bool)

(assert (= bs!328581 d!364111))

(declare-fun m!1442433 () Bool)

(assert (=> bs!328581 m!1442433))

(declare-fun m!1442435 () Bool)

(assert (=> bs!328581 m!1442435))

(declare-fun m!1442437 () Bool)

(assert (=> bs!328581 m!1442437))

(assert (=> b!1291644 d!364111))

(declare-fun d!364119 () Bool)

(declare-fun lt!425191 () Bool)

(declare-fun e!828439 () Bool)

(assert (=> d!364119 (= lt!425191 e!828439)))

(declare-fun res!578906 () Bool)

(assert (=> d!364119 (=> (not res!578906) (not e!828439))))

(declare-datatypes ((List!12986 0))(
  ( (Nil!12920) (Cons!12920 (h!18321 Token!4112) (t!117243 List!12986)) )
))
(declare-datatypes ((IArray!8493 0))(
  ( (IArray!8494 (innerList!4304 List!12986)) )
))
(declare-datatypes ((Conc!4244 0))(
  ( (Node!4244 (left!11114 Conc!4244) (right!11444 Conc!4244) (csize!8718 Int) (cheight!4455 Int)) (Leaf!6553 (xs!6955 IArray!8493) (csize!8719 Int)) (Empty!4244) )
))
(declare-datatypes ((BalanceConc!8428 0))(
  ( (BalanceConc!8429 (c!212607 Conc!4244)) )
))
(declare-fun list!4822 (BalanceConc!8428) List!12986)

(declare-datatypes ((tuple2!12668 0))(
  ( (tuple2!12669 (_1!7220 BalanceConc!8428) (_2!7220 BalanceConc!8426)) )
))
(declare-fun lex!782 (LexerInterface!1920 List!12983 BalanceConc!8426) tuple2!12668)

(declare-fun print!719 (LexerInterface!1920 BalanceConc!8428) BalanceConc!8426)

(declare-fun singletonSeq!803 (Token!4112) BalanceConc!8428)

(assert (=> d!364119 (= res!578906 (= (list!4822 (_1!7220 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t2!34))))) (list!4822 (singletonSeq!803 t2!34))))))

(declare-fun e!828438 () Bool)

(assert (=> d!364119 (= lt!425191 e!828438)))

(declare-fun res!578904 () Bool)

(assert (=> d!364119 (=> (not res!578904) (not e!828438))))

(declare-fun lt!425190 () tuple2!12668)

(declare-fun size!10544 (BalanceConc!8428) Int)

(assert (=> d!364119 (= res!578904 (= (size!10544 (_1!7220 lt!425190)) 1))))

(assert (=> d!364119 (= lt!425190 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t2!34))))))

(assert (=> d!364119 (not (isEmpty!7665 rules!2550))))

(assert (=> d!364119 (= (rulesProduceIndividualToken!889 thiss!19762 rules!2550 t2!34) lt!425191)))

(declare-fun b!1291701 () Bool)

(declare-fun res!578905 () Bool)

(assert (=> b!1291701 (=> (not res!578905) (not e!828438))))

(declare-fun apply!2824 (BalanceConc!8428 Int) Token!4112)

(assert (=> b!1291701 (= res!578905 (= (apply!2824 (_1!7220 lt!425190) 0) t2!34))))

(declare-fun b!1291702 () Bool)

(declare-fun isEmpty!7666 (BalanceConc!8426) Bool)

(assert (=> b!1291702 (= e!828438 (isEmpty!7666 (_2!7220 lt!425190)))))

(declare-fun b!1291703 () Bool)

(assert (=> b!1291703 (= e!828439 (isEmpty!7666 (_2!7220 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t2!34))))))))

(assert (= (and d!364119 res!578904) b!1291701))

(assert (= (and b!1291701 res!578905) b!1291702))

(assert (= (and d!364119 res!578906) b!1291703))

(assert (=> d!364119 m!1442369))

(declare-fun m!1442445 () Bool)

(assert (=> d!364119 m!1442445))

(declare-fun m!1442447 () Bool)

(assert (=> d!364119 m!1442447))

(assert (=> d!364119 m!1442445))

(declare-fun m!1442449 () Bool)

(assert (=> d!364119 m!1442449))

(declare-fun m!1442451 () Bool)

(assert (=> d!364119 m!1442451))

(assert (=> d!364119 m!1442449))

(declare-fun m!1442453 () Bool)

(assert (=> d!364119 m!1442453))

(declare-fun m!1442455 () Bool)

(assert (=> d!364119 m!1442455))

(assert (=> d!364119 m!1442445))

(declare-fun m!1442457 () Bool)

(assert (=> b!1291701 m!1442457))

(declare-fun m!1442459 () Bool)

(assert (=> b!1291702 m!1442459))

(assert (=> b!1291703 m!1442445))

(assert (=> b!1291703 m!1442445))

(assert (=> b!1291703 m!1442449))

(assert (=> b!1291703 m!1442449))

(assert (=> b!1291703 m!1442453))

(declare-fun m!1442461 () Bool)

(assert (=> b!1291703 m!1442461))

(assert (=> b!1291633 d!364119))

(declare-fun d!364123 () Bool)

(declare-fun prefixMatchZipperSequence!139 (Regex!3539 BalanceConc!8426) Bool)

(declare-fun ++!3273 (BalanceConc!8426 BalanceConc!8426) BalanceConc!8426)

(declare-fun singletonSeq!804 (C!7368) BalanceConc!8426)

(assert (=> d!364123 (= (separableTokensPredicate!203 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!139 (rulesRegex!110 thiss!19762 rules!2550) (++!3273 (charsOf!1197 t1!34) (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0))))))))

(declare-fun bs!328582 () Bool)

(assert (= bs!328582 d!364123))

(assert (=> bs!328582 m!1442357))

(assert (=> bs!328582 m!1442357))

(declare-fun m!1442491 () Bool)

(assert (=> bs!328582 m!1442491))

(assert (=> bs!328582 m!1442491))

(declare-fun m!1442493 () Bool)

(assert (=> bs!328582 m!1442493))

(assert (=> bs!328582 m!1442377))

(assert (=> bs!328582 m!1442371))

(assert (=> bs!328582 m!1442371))

(assert (=> bs!328582 m!1442493))

(declare-fun m!1442495 () Bool)

(assert (=> bs!328582 m!1442495))

(assert (=> bs!328582 m!1442377))

(assert (=> bs!328582 m!1442495))

(declare-fun m!1442497 () Bool)

(assert (=> bs!328582 m!1442497))

(assert (=> b!1291634 d!364123))

(declare-fun d!364133 () Bool)

(assert (=> d!364133 (= (isEmpty!7665 rules!2550) ((_ is Nil!12917) rules!2550))))

(assert (=> b!1291645 d!364133))

(declare-fun d!364135 () Bool)

(declare-fun lt!425199 () Bool)

(declare-fun e!828453 () Bool)

(assert (=> d!364135 (= lt!425199 e!828453)))

(declare-fun res!578922 () Bool)

(assert (=> d!364135 (=> (not res!578922) (not e!828453))))

(assert (=> d!364135 (= res!578922 (= (list!4822 (_1!7220 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t1!34))))) (list!4822 (singletonSeq!803 t1!34))))))

(declare-fun e!828452 () Bool)

(assert (=> d!364135 (= lt!425199 e!828452)))

(declare-fun res!578920 () Bool)

(assert (=> d!364135 (=> (not res!578920) (not e!828452))))

(declare-fun lt!425198 () tuple2!12668)

(assert (=> d!364135 (= res!578920 (= (size!10544 (_1!7220 lt!425198)) 1))))

(assert (=> d!364135 (= lt!425198 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t1!34))))))

(assert (=> d!364135 (not (isEmpty!7665 rules!2550))))

(assert (=> d!364135 (= (rulesProduceIndividualToken!889 thiss!19762 rules!2550 t1!34) lt!425199)))

(declare-fun b!1291721 () Bool)

(declare-fun res!578921 () Bool)

(assert (=> b!1291721 (=> (not res!578921) (not e!828452))))

(assert (=> b!1291721 (= res!578921 (= (apply!2824 (_1!7220 lt!425198) 0) t1!34))))

(declare-fun b!1291722 () Bool)

(assert (=> b!1291722 (= e!828452 (isEmpty!7666 (_2!7220 lt!425198)))))

(declare-fun b!1291723 () Bool)

(assert (=> b!1291723 (= e!828453 (isEmpty!7666 (_2!7220 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t1!34))))))))

(assert (= (and d!364135 res!578920) b!1291721))

(assert (= (and b!1291721 res!578921) b!1291722))

(assert (= (and d!364135 res!578922) b!1291723))

(assert (=> d!364135 m!1442369))

(declare-fun m!1442499 () Bool)

(assert (=> d!364135 m!1442499))

(declare-fun m!1442501 () Bool)

(assert (=> d!364135 m!1442501))

(assert (=> d!364135 m!1442499))

(declare-fun m!1442503 () Bool)

(assert (=> d!364135 m!1442503))

(declare-fun m!1442505 () Bool)

(assert (=> d!364135 m!1442505))

(assert (=> d!364135 m!1442503))

(declare-fun m!1442507 () Bool)

(assert (=> d!364135 m!1442507))

(declare-fun m!1442509 () Bool)

(assert (=> d!364135 m!1442509))

(assert (=> d!364135 m!1442499))

(declare-fun m!1442511 () Bool)

(assert (=> b!1291721 m!1442511))

(declare-fun m!1442513 () Bool)

(assert (=> b!1291722 m!1442513))

(assert (=> b!1291723 m!1442499))

(assert (=> b!1291723 m!1442499))

(assert (=> b!1291723 m!1442503))

(assert (=> b!1291723 m!1442503))

(assert (=> b!1291723 m!1442507))

(declare-fun m!1442515 () Bool)

(assert (=> b!1291723 m!1442515))

(assert (=> b!1291646 d!364135))

(declare-fun d!364137 () Bool)

(declare-fun lt!425202 () Int)

(assert (=> d!364137 (= lt!425202 (size!10543 (list!4821 lt!425166)))))

(declare-fun size!10546 (Conc!4243) Int)

(assert (=> d!364137 (= lt!425202 (size!10546 (c!212569 lt!425166)))))

(assert (=> d!364137 (= (size!10542 lt!425166) lt!425202)))

(declare-fun bs!328583 () Bool)

(assert (= bs!328583 d!364137))

(declare-fun m!1442517 () Bool)

(assert (=> bs!328583 m!1442517))

(assert (=> bs!328583 m!1442517))

(declare-fun m!1442519 () Bool)

(assert (=> bs!328583 m!1442519))

(declare-fun m!1442521 () Bool)

(assert (=> bs!328583 m!1442521))

(assert (=> b!1291635 d!364137))

(declare-fun d!364139 () Bool)

(declare-fun lt!425205 () BalanceConc!8426)

(assert (=> d!364139 (= (list!4821 lt!425205) (originalCharacters!3087 t2!34))))

(declare-fun dynLambda!5637 (Int TokenValue!2315) BalanceConc!8426)

(assert (=> d!364139 (= lt!425205 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34)))))

(assert (=> d!364139 (= (charsOf!1197 t2!34) lt!425205)))

(declare-fun b_lambda!36899 () Bool)

(assert (=> (not b_lambda!36899) (not d!364139)))

(declare-fun tb!69353 () Bool)

(declare-fun t!117210 () Bool)

(assert (=> (and b!1291641 (= (toChars!3283 (transformation!2225 (h!18318 rules!2550))) (toChars!3283 (transformation!2225 (rule!3964 t2!34)))) t!117210) tb!69353))

(declare-fun b!1291728 () Bool)

(declare-fun e!828456 () Bool)

(declare-fun tp!376575 () Bool)

(declare-fun inv!17339 (Conc!4243) Bool)

(assert (=> b!1291728 (= e!828456 (and (inv!17339 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34)))) tp!376575))))

(declare-fun result!84050 () Bool)

(declare-fun inv!17340 (BalanceConc!8426) Bool)

(assert (=> tb!69353 (= result!84050 (and (inv!17340 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34))) e!828456))))

(assert (= tb!69353 b!1291728))

(declare-fun m!1442523 () Bool)

(assert (=> b!1291728 m!1442523))

(declare-fun m!1442525 () Bool)

(assert (=> tb!69353 m!1442525))

(assert (=> d!364139 t!117210))

(declare-fun b_and!86083 () Bool)

(assert (= b_and!86073 (and (=> t!117210 result!84050) b_and!86083)))

(declare-fun tb!69355 () Bool)

(declare-fun t!117212 () Bool)

(assert (=> (and b!1291632 (= (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (toChars!3283 (transformation!2225 (rule!3964 t2!34)))) t!117212) tb!69355))

(declare-fun result!84054 () Bool)

(assert (= result!84054 result!84050))

(assert (=> d!364139 t!117212))

(declare-fun b_and!86085 () Bool)

(assert (= b_and!86077 (and (=> t!117212 result!84054) b_and!86085)))

(declare-fun t!117214 () Bool)

(declare-fun tb!69357 () Bool)

(assert (=> (and b!1291637 (= (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (toChars!3283 (transformation!2225 (rule!3964 t2!34)))) t!117214) tb!69357))

(declare-fun result!84056 () Bool)

(assert (= result!84056 result!84050))

(assert (=> d!364139 t!117214))

(declare-fun b_and!86087 () Bool)

(assert (= b_and!86081 (and (=> t!117214 result!84056) b_and!86087)))

(declare-fun m!1442527 () Bool)

(assert (=> d!364139 m!1442527))

(declare-fun m!1442529 () Bool)

(assert (=> d!364139 m!1442529))

(assert (=> b!1291635 d!364139))

(declare-fun b!1291744 () Bool)

(declare-fun e!828467 () Bool)

(declare-fun inv!17 (TokenValue!2315) Bool)

(assert (=> b!1291744 (= e!828467 (inv!17 (value!73045 t1!34)))))

(declare-fun b!1291745 () Bool)

(declare-fun res!578930 () Bool)

(declare-fun e!828466 () Bool)

(assert (=> b!1291745 (=> res!578930 e!828466)))

(assert (=> b!1291745 (= res!578930 (not ((_ is IntegerValue!6947) (value!73045 t1!34))))))

(assert (=> b!1291745 (= e!828467 e!828466)))

(declare-fun b!1291746 () Bool)

(declare-fun e!828468 () Bool)

(declare-fun inv!16 (TokenValue!2315) Bool)

(assert (=> b!1291746 (= e!828468 (inv!16 (value!73045 t1!34)))))

(declare-fun b!1291747 () Bool)

(assert (=> b!1291747 (= e!828468 e!828467)))

(declare-fun c!212592 () Bool)

(assert (=> b!1291747 (= c!212592 ((_ is IntegerValue!6946) (value!73045 t1!34)))))

(declare-fun b!1291748 () Bool)

(declare-fun inv!15 (TokenValue!2315) Bool)

(assert (=> b!1291748 (= e!828466 (inv!15 (value!73045 t1!34)))))

(declare-fun d!364141 () Bool)

(declare-fun c!212591 () Bool)

(assert (=> d!364141 (= c!212591 ((_ is IntegerValue!6945) (value!73045 t1!34)))))

(assert (=> d!364141 (= (inv!21 (value!73045 t1!34)) e!828468)))

(assert (= (and d!364141 c!212591) b!1291746))

(assert (= (and d!364141 (not c!212591)) b!1291747))

(assert (= (and b!1291747 c!212592) b!1291744))

(assert (= (and b!1291747 (not c!212592)) b!1291745))

(assert (= (and b!1291745 (not res!578930)) b!1291748))

(declare-fun m!1442543 () Bool)

(assert (=> b!1291744 m!1442543))

(declare-fun m!1442545 () Bool)

(assert (=> b!1291746 m!1442545))

(declare-fun m!1442547 () Bool)

(assert (=> b!1291748 m!1442547))

(assert (=> b!1291636 d!364141))

(declare-fun d!364149 () Bool)

(assert (=> d!364149 (= (inv!17334 (tag!2487 (h!18318 rules!2550))) (= (mod (str.len (value!73044 (tag!2487 (h!18318 rules!2550)))) 2) 0))))

(assert (=> b!1291647 d!364149))

(declare-fun d!364151 () Bool)

(declare-fun res!578937 () Bool)

(declare-fun e!828477 () Bool)

(assert (=> d!364151 (=> (not res!578937) (not e!828477))))

(declare-fun semiInverseModEq!844 (Int Int) Bool)

(assert (=> d!364151 (= res!578937 (semiInverseModEq!844 (toChars!3283 (transformation!2225 (h!18318 rules!2550))) (toValue!3424 (transformation!2225 (h!18318 rules!2550)))))))

(assert (=> d!364151 (= (inv!17337 (transformation!2225 (h!18318 rules!2550))) e!828477)))

(declare-fun b!1291761 () Bool)

(declare-fun equivClasses!803 (Int Int) Bool)

(assert (=> b!1291761 (= e!828477 (equivClasses!803 (toChars!3283 (transformation!2225 (h!18318 rules!2550))) (toValue!3424 (transformation!2225 (h!18318 rules!2550)))))))

(assert (= (and d!364151 res!578937) b!1291761))

(declare-fun m!1442573 () Bool)

(assert (=> d!364151 m!1442573))

(declare-fun m!1442577 () Bool)

(assert (=> b!1291761 m!1442577))

(assert (=> b!1291647 d!364151))

(declare-fun b!1291762 () Bool)

(declare-fun e!828479 () Bool)

(assert (=> b!1291762 (= e!828479 (inv!17 (value!73045 t2!34)))))

(declare-fun b!1291763 () Bool)

(declare-fun res!578938 () Bool)

(declare-fun e!828478 () Bool)

(assert (=> b!1291763 (=> res!578938 e!828478)))

(assert (=> b!1291763 (= res!578938 (not ((_ is IntegerValue!6947) (value!73045 t2!34))))))

(assert (=> b!1291763 (= e!828479 e!828478)))

(declare-fun b!1291764 () Bool)

(declare-fun e!828480 () Bool)

(assert (=> b!1291764 (= e!828480 (inv!16 (value!73045 t2!34)))))

(declare-fun b!1291765 () Bool)

(assert (=> b!1291765 (= e!828480 e!828479)))

(declare-fun c!212594 () Bool)

(assert (=> b!1291765 (= c!212594 ((_ is IntegerValue!6946) (value!73045 t2!34)))))

(declare-fun b!1291766 () Bool)

(assert (=> b!1291766 (= e!828478 (inv!15 (value!73045 t2!34)))))

(declare-fun d!364159 () Bool)

(declare-fun c!212593 () Bool)

(assert (=> d!364159 (= c!212593 ((_ is IntegerValue!6945) (value!73045 t2!34)))))

(assert (=> d!364159 (= (inv!21 (value!73045 t2!34)) e!828480)))

(assert (= (and d!364159 c!212593) b!1291764))

(assert (= (and d!364159 (not c!212593)) b!1291765))

(assert (= (and b!1291765 c!212594) b!1291762))

(assert (= (and b!1291765 (not c!212594)) b!1291763))

(assert (= (and b!1291763 (not res!578938)) b!1291766))

(declare-fun m!1442579 () Bool)

(assert (=> b!1291762 m!1442579))

(declare-fun m!1442581 () Bool)

(assert (=> b!1291764 m!1442581))

(declare-fun m!1442583 () Bool)

(assert (=> b!1291766 m!1442583))

(assert (=> b!1291648 d!364159))

(declare-fun d!364161 () Bool)

(declare-fun res!578943 () Bool)

(declare-fun e!828485 () Bool)

(assert (=> d!364161 (=> res!578943 e!828485)))

(assert (=> d!364161 (= res!578943 (not ((_ is Cons!12917) rules!2550)))))

(assert (=> d!364161 (= (sepAndNonSepRulesDisjointChars!598 rules!2550 rules!2550) e!828485)))

(declare-fun b!1291771 () Bool)

(declare-fun e!828486 () Bool)

(assert (=> b!1291771 (= e!828485 e!828486)))

(declare-fun res!578944 () Bool)

(assert (=> b!1291771 (=> (not res!578944) (not e!828486))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!287 (Rule!4250 List!12983) Bool)

(assert (=> b!1291771 (= res!578944 (ruleDisjointCharsFromAllFromOtherType!287 (h!18318 rules!2550) rules!2550))))

(declare-fun b!1291772 () Bool)

(assert (=> b!1291772 (= e!828486 (sepAndNonSepRulesDisjointChars!598 rules!2550 (t!117206 rules!2550)))))

(assert (= (and d!364161 (not res!578943)) b!1291771))

(assert (= (and b!1291771 res!578944) b!1291772))

(declare-fun m!1442585 () Bool)

(assert (=> b!1291771 m!1442585))

(declare-fun m!1442587 () Bool)

(assert (=> b!1291772 m!1442587))

(assert (=> b!1291649 d!364161))

(declare-fun d!364163 () Bool)

(declare-fun res!578951 () Bool)

(declare-fun e!828491 () Bool)

(assert (=> d!364163 (=> (not res!578951) (not e!828491))))

(declare-fun isEmpty!7669 (List!12982) Bool)

(assert (=> d!364163 (= res!578951 (not (isEmpty!7669 (originalCharacters!3087 t1!34))))))

(assert (=> d!364163 (= (inv!17338 t1!34) e!828491)))

(declare-fun b!1291779 () Bool)

(declare-fun res!578952 () Bool)

(assert (=> b!1291779 (=> (not res!578952) (not e!828491))))

(assert (=> b!1291779 (= res!578952 (= (originalCharacters!3087 t1!34) (list!4821 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34)))))))

(declare-fun b!1291780 () Bool)

(assert (=> b!1291780 (= e!828491 (= (size!10541 t1!34) (size!10543 (originalCharacters!3087 t1!34))))))

(assert (= (and d!364163 res!578951) b!1291779))

(assert (= (and b!1291779 res!578952) b!1291780))

(declare-fun b_lambda!36905 () Bool)

(assert (=> (not b_lambda!36905) (not b!1291779)))

(declare-fun tb!69371 () Bool)

(declare-fun t!117228 () Bool)

(assert (=> (and b!1291641 (= (toChars!3283 (transformation!2225 (h!18318 rules!2550))) (toChars!3283 (transformation!2225 (rule!3964 t1!34)))) t!117228) tb!69371))

(declare-fun b!1291781 () Bool)

(declare-fun e!828492 () Bool)

(declare-fun tp!376580 () Bool)

(assert (=> b!1291781 (= e!828492 (and (inv!17339 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34)))) tp!376580))))

(declare-fun result!84072 () Bool)

(assert (=> tb!69371 (= result!84072 (and (inv!17340 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34))) e!828492))))

(assert (= tb!69371 b!1291781))

(declare-fun m!1442595 () Bool)

(assert (=> b!1291781 m!1442595))

(declare-fun m!1442597 () Bool)

(assert (=> tb!69371 m!1442597))

(assert (=> b!1291779 t!117228))

(declare-fun b_and!86101 () Bool)

(assert (= b_and!86083 (and (=> t!117228 result!84072) b_and!86101)))

(declare-fun t!117230 () Bool)

(declare-fun tb!69373 () Bool)

(assert (=> (and b!1291632 (= (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (toChars!3283 (transformation!2225 (rule!3964 t1!34)))) t!117230) tb!69373))

(declare-fun result!84074 () Bool)

(assert (= result!84074 result!84072))

(assert (=> b!1291779 t!117230))

(declare-fun b_and!86103 () Bool)

(assert (= b_and!86085 (and (=> t!117230 result!84074) b_and!86103)))

(declare-fun tb!69375 () Bool)

(declare-fun t!117232 () Bool)

(assert (=> (and b!1291637 (= (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (toChars!3283 (transformation!2225 (rule!3964 t1!34)))) t!117232) tb!69375))

(declare-fun result!84076 () Bool)

(assert (= result!84076 result!84072))

(assert (=> b!1291779 t!117232))

(declare-fun b_and!86105 () Bool)

(assert (= b_and!86087 (and (=> t!117232 result!84076) b_and!86105)))

(declare-fun m!1442599 () Bool)

(assert (=> d!364163 m!1442599))

(declare-fun m!1442601 () Bool)

(assert (=> b!1291779 m!1442601))

(assert (=> b!1291779 m!1442601))

(declare-fun m!1442603 () Bool)

(assert (=> b!1291779 m!1442603))

(declare-fun m!1442605 () Bool)

(assert (=> b!1291780 m!1442605))

(assert (=> start!113502 d!364163))

(declare-fun d!364167 () Bool)

(declare-fun res!578953 () Bool)

(declare-fun e!828493 () Bool)

(assert (=> d!364167 (=> (not res!578953) (not e!828493))))

(assert (=> d!364167 (= res!578953 (not (isEmpty!7669 (originalCharacters!3087 t2!34))))))

(assert (=> d!364167 (= (inv!17338 t2!34) e!828493)))

(declare-fun b!1291782 () Bool)

(declare-fun res!578954 () Bool)

(assert (=> b!1291782 (=> (not res!578954) (not e!828493))))

(assert (=> b!1291782 (= res!578954 (= (originalCharacters!3087 t2!34) (list!4821 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34)))))))

(declare-fun b!1291783 () Bool)

(assert (=> b!1291783 (= e!828493 (= (size!10541 t2!34) (size!10543 (originalCharacters!3087 t2!34))))))

(assert (= (and d!364167 res!578953) b!1291782))

(assert (= (and b!1291782 res!578954) b!1291783))

(declare-fun b_lambda!36907 () Bool)

(assert (=> (not b_lambda!36907) (not b!1291782)))

(assert (=> b!1291782 t!117210))

(declare-fun b_and!86107 () Bool)

(assert (= b_and!86101 (and (=> t!117210 result!84050) b_and!86107)))

(assert (=> b!1291782 t!117212))

(declare-fun b_and!86109 () Bool)

(assert (= b_and!86103 (and (=> t!117212 result!84054) b_and!86109)))

(assert (=> b!1291782 t!117214))

(declare-fun b_and!86111 () Bool)

(assert (= b_and!86105 (and (=> t!117214 result!84056) b_and!86111)))

(declare-fun m!1442607 () Bool)

(assert (=> d!364167 m!1442607))

(assert (=> b!1291782 m!1442529))

(assert (=> b!1291782 m!1442529))

(declare-fun m!1442609 () Bool)

(assert (=> b!1291782 m!1442609))

(declare-fun m!1442611 () Bool)

(assert (=> b!1291783 m!1442611))

(assert (=> start!113502 d!364167))

(declare-fun d!364169 () Bool)

(declare-fun c!212597 () Bool)

(assert (=> d!364169 (= c!212597 (isEmpty!7669 lt!425167))))

(declare-fun e!828505 () Bool)

(assert (=> d!364169 (= (prefixMatch!52 lt!425168 lt!425167) e!828505)))

(declare-fun b!1291798 () Bool)

(declare-fun lostCause!251 (Regex!3539) Bool)

(assert (=> b!1291798 (= e!828505 (not (lostCause!251 lt!425168)))))

(declare-fun b!1291799 () Bool)

(declare-fun derivativeStep!874 (Regex!3539 C!7368) Regex!3539)

(declare-fun head!2213 (List!12982) C!7368)

(declare-fun tail!1841 (List!12982) List!12982)

(assert (=> b!1291799 (= e!828505 (prefixMatch!52 (derivativeStep!874 lt!425168 (head!2213 lt!425167)) (tail!1841 lt!425167)))))

(assert (= (and d!364169 c!212597) b!1291798))

(assert (= (and d!364169 (not c!212597)) b!1291799))

(declare-fun m!1442639 () Bool)

(assert (=> d!364169 m!1442639))

(declare-fun m!1442641 () Bool)

(assert (=> b!1291798 m!1442641))

(declare-fun m!1442643 () Bool)

(assert (=> b!1291799 m!1442643))

(assert (=> b!1291799 m!1442643))

(declare-fun m!1442645 () Bool)

(assert (=> b!1291799 m!1442645))

(declare-fun m!1442647 () Bool)

(assert (=> b!1291799 m!1442647))

(assert (=> b!1291799 m!1442645))

(assert (=> b!1291799 m!1442647))

(declare-fun m!1442649 () Bool)

(assert (=> b!1291799 m!1442649))

(assert (=> b!1291639 d!364169))

(declare-fun d!364181 () Bool)

(declare-fun list!4824 (Conc!4243) List!12982)

(assert (=> d!364181 (= (list!4821 (charsOf!1197 t1!34)) (list!4824 (c!212569 (charsOf!1197 t1!34))))))

(declare-fun bs!328588 () Bool)

(assert (= bs!328588 d!364181))

(declare-fun m!1442651 () Bool)

(assert (=> bs!328588 m!1442651))

(assert (=> b!1291639 d!364181))

(declare-fun b!1291814 () Bool)

(declare-fun e!828514 () Bool)

(declare-fun lt!425216 () List!12982)

(assert (=> b!1291814 (= e!828514 (or (not (= (Cons!12916 (apply!2823 lt!425166 0) Nil!12916) Nil!12916)) (= lt!425216 (list!4821 (charsOf!1197 t1!34)))))))

(declare-fun b!1291812 () Bool)

(declare-fun e!828513 () List!12982)

(assert (=> b!1291812 (= e!828513 (Cons!12916 (h!18317 (list!4821 (charsOf!1197 t1!34))) (++!3272 (t!117205 (list!4821 (charsOf!1197 t1!34))) (Cons!12916 (apply!2823 lt!425166 0) Nil!12916))))))

(declare-fun b!1291813 () Bool)

(declare-fun res!578973 () Bool)

(assert (=> b!1291813 (=> (not res!578973) (not e!828514))))

(assert (=> b!1291813 (= res!578973 (= (size!10543 lt!425216) (+ (size!10543 (list!4821 (charsOf!1197 t1!34))) (size!10543 (Cons!12916 (apply!2823 lt!425166 0) Nil!12916)))))))

(declare-fun b!1291811 () Bool)

(assert (=> b!1291811 (= e!828513 (Cons!12916 (apply!2823 lt!425166 0) Nil!12916))))

(declare-fun d!364183 () Bool)

(assert (=> d!364183 e!828514))

(declare-fun res!578972 () Bool)

(assert (=> d!364183 (=> (not res!578972) (not e!828514))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1824 (List!12982) (InoxSet C!7368))

(assert (=> d!364183 (= res!578972 (= (content!1824 lt!425216) ((_ map or) (content!1824 (list!4821 (charsOf!1197 t1!34))) (content!1824 (Cons!12916 (apply!2823 lt!425166 0) Nil!12916)))))))

(assert (=> d!364183 (= lt!425216 e!828513)))

(declare-fun c!212600 () Bool)

(assert (=> d!364183 (= c!212600 ((_ is Nil!12916) (list!4821 (charsOf!1197 t1!34))))))

(assert (=> d!364183 (= (++!3272 (list!4821 (charsOf!1197 t1!34)) (Cons!12916 (apply!2823 lt!425166 0) Nil!12916)) lt!425216)))

(assert (= (and d!364183 c!212600) b!1291811))

(assert (= (and d!364183 (not c!212600)) b!1291812))

(assert (= (and d!364183 res!578972) b!1291813))

(assert (= (and b!1291813 res!578973) b!1291814))

(declare-fun m!1442659 () Bool)

(assert (=> b!1291812 m!1442659))

(declare-fun m!1442661 () Bool)

(assert (=> b!1291813 m!1442661))

(assert (=> b!1291813 m!1442373))

(declare-fun m!1442663 () Bool)

(assert (=> b!1291813 m!1442663))

(declare-fun m!1442665 () Bool)

(assert (=> b!1291813 m!1442665))

(declare-fun m!1442667 () Bool)

(assert (=> d!364183 m!1442667))

(assert (=> d!364183 m!1442373))

(declare-fun m!1442669 () Bool)

(assert (=> d!364183 m!1442669))

(declare-fun m!1442671 () Bool)

(assert (=> d!364183 m!1442671))

(assert (=> b!1291639 d!364183))

(declare-fun d!364187 () Bool)

(declare-fun lt!425219 () Unit!19068)

(declare-fun lemma!45 (List!12983 LexerInterface!1920 List!12983) Unit!19068)

(assert (=> d!364187 (= lt!425219 (lemma!45 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!50760 () Int)

(declare-datatypes ((List!12988 0))(
  ( (Nil!12922) (Cons!12922 (h!18323 Regex!3539) (t!117245 List!12988)) )
))
(declare-fun generalisedUnion!49 (List!12988) Regex!3539)

(declare-fun map!2811 (List!12983 Int) List!12988)

(assert (=> d!364187 (= (rulesRegex!110 thiss!19762 rules!2550) (generalisedUnion!49 (map!2811 rules!2550 lambda!50760)))))

(declare-fun bs!328590 () Bool)

(assert (= bs!328590 d!364187))

(declare-fun m!1442687 () Bool)

(assert (=> bs!328590 m!1442687))

(declare-fun m!1442689 () Bool)

(assert (=> bs!328590 m!1442689))

(assert (=> bs!328590 m!1442689))

(declare-fun m!1442691 () Bool)

(assert (=> bs!328590 m!1442691))

(assert (=> b!1291639 d!364187))

(declare-fun d!364193 () Bool)

(declare-fun lt!425220 () BalanceConc!8426)

(assert (=> d!364193 (= (list!4821 lt!425220) (originalCharacters!3087 t1!34))))

(assert (=> d!364193 (= lt!425220 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34)))))

(assert (=> d!364193 (= (charsOf!1197 t1!34) lt!425220)))

(declare-fun b_lambda!36909 () Bool)

(assert (=> (not b_lambda!36909) (not d!364193)))

(assert (=> d!364193 t!117228))

(declare-fun b_and!86113 () Bool)

(assert (= b_and!86107 (and (=> t!117228 result!84072) b_and!86113)))

(assert (=> d!364193 t!117230))

(declare-fun b_and!86115 () Bool)

(assert (= b_and!86109 (and (=> t!117230 result!84074) b_and!86115)))

(assert (=> d!364193 t!117232))

(declare-fun b_and!86117 () Bool)

(assert (= b_and!86111 (and (=> t!117232 result!84076) b_and!86117)))

(declare-fun m!1442693 () Bool)

(assert (=> d!364193 m!1442693))

(assert (=> d!364193 m!1442601))

(assert (=> b!1291639 d!364193))

(declare-fun d!364195 () Bool)

(declare-fun lt!425228 () C!7368)

(declare-fun apply!2828 (List!12982 Int) C!7368)

(assert (=> d!364195 (= lt!425228 (apply!2828 (list!4821 lt!425166) 0))))

(declare-fun apply!2829 (Conc!4243 Int) C!7368)

(assert (=> d!364195 (= lt!425228 (apply!2829 (c!212569 lt!425166) 0))))

(declare-fun e!828524 () Bool)

(assert (=> d!364195 e!828524))

(declare-fun res!578980 () Bool)

(assert (=> d!364195 (=> (not res!578980) (not e!828524))))

(assert (=> d!364195 (= res!578980 (<= 0 0))))

(assert (=> d!364195 (= (apply!2823 lt!425166 0) lt!425228)))

(declare-fun b!1291831 () Bool)

(assert (=> b!1291831 (= e!828524 (< 0 (size!10542 lt!425166)))))

(assert (= (and d!364195 res!578980) b!1291831))

(assert (=> d!364195 m!1442517))

(assert (=> d!364195 m!1442517))

(declare-fun m!1442697 () Bool)

(assert (=> d!364195 m!1442697))

(declare-fun m!1442699 () Bool)

(assert (=> d!364195 m!1442699))

(assert (=> b!1291831 m!1442355))

(assert (=> b!1291639 d!364195))

(declare-fun d!364199 () Bool)

(assert (=> d!364199 (= (inv!17334 (tag!2487 (rule!3964 t1!34))) (= (mod (str.len (value!73044 (tag!2487 (rule!3964 t1!34)))) 2) 0))))

(assert (=> b!1291640 d!364199))

(declare-fun d!364201 () Bool)

(declare-fun res!578981 () Bool)

(declare-fun e!828525 () Bool)

(assert (=> d!364201 (=> (not res!578981) (not e!828525))))

(assert (=> d!364201 (= res!578981 (semiInverseModEq!844 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (toValue!3424 (transformation!2225 (rule!3964 t1!34)))))))

(assert (=> d!364201 (= (inv!17337 (transformation!2225 (rule!3964 t1!34))) e!828525)))

(declare-fun b!1291832 () Bool)

(assert (=> b!1291832 (= e!828525 (equivClasses!803 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (toValue!3424 (transformation!2225 (rule!3964 t1!34)))))))

(assert (= (and d!364201 res!578981) b!1291832))

(declare-fun m!1442701 () Bool)

(assert (=> d!364201 m!1442701))

(declare-fun m!1442703 () Bool)

(assert (=> b!1291832 m!1442703))

(assert (=> b!1291640 d!364201))

(declare-fun d!364203 () Bool)

(assert (=> d!364203 (= (inv!17334 (tag!2487 (rule!3964 t2!34))) (= (mod (str.len (value!73044 (tag!2487 (rule!3964 t2!34)))) 2) 0))))

(assert (=> b!1291651 d!364203))

(declare-fun d!364205 () Bool)

(declare-fun res!578984 () Bool)

(declare-fun e!828528 () Bool)

(assert (=> d!364205 (=> (not res!578984) (not e!828528))))

(assert (=> d!364205 (= res!578984 (semiInverseModEq!844 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (toValue!3424 (transformation!2225 (rule!3964 t2!34)))))))

(assert (=> d!364205 (= (inv!17337 (transformation!2225 (rule!3964 t2!34))) e!828528)))

(declare-fun b!1291837 () Bool)

(assert (=> b!1291837 (= e!828528 (equivClasses!803 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (toValue!3424 (transformation!2225 (rule!3964 t2!34)))))))

(assert (= (and d!364205 res!578984) b!1291837))

(declare-fun m!1442705 () Bool)

(assert (=> d!364205 m!1442705))

(declare-fun m!1442707 () Bool)

(assert (=> b!1291837 m!1442707))

(assert (=> b!1291651 d!364205))

(declare-fun e!828531 () Bool)

(assert (=> b!1291647 (= tp!376571 e!828531)))

(declare-fun b!1291849 () Bool)

(declare-fun tp!376595 () Bool)

(declare-fun tp!376594 () Bool)

(assert (=> b!1291849 (= e!828531 (and tp!376595 tp!376594))))

(declare-fun b!1291851 () Bool)

(declare-fun tp!376591 () Bool)

(declare-fun tp!376592 () Bool)

(assert (=> b!1291851 (= e!828531 (and tp!376591 tp!376592))))

(declare-fun b!1291850 () Bool)

(declare-fun tp!376593 () Bool)

(assert (=> b!1291850 (= e!828531 tp!376593)))

(declare-fun b!1291848 () Bool)

(declare-fun tp_is_empty!6569 () Bool)

(assert (=> b!1291848 (= e!828531 tp_is_empty!6569)))

(assert (= (and b!1291647 ((_ is ElementMatch!3539) (regex!2225 (h!18318 rules!2550)))) b!1291848))

(assert (= (and b!1291647 ((_ is Concat!5855) (regex!2225 (h!18318 rules!2550)))) b!1291849))

(assert (= (and b!1291647 ((_ is Star!3539) (regex!2225 (h!18318 rules!2550)))) b!1291850))

(assert (= (and b!1291647 ((_ is Union!3539) (regex!2225 (h!18318 rules!2550)))) b!1291851))

(declare-fun b!1291856 () Bool)

(declare-fun e!828534 () Bool)

(declare-fun tp!376598 () Bool)

(assert (=> b!1291856 (= e!828534 (and tp_is_empty!6569 tp!376598))))

(assert (=> b!1291648 (= tp!376570 e!828534)))

(assert (= (and b!1291648 ((_ is Cons!12916) (originalCharacters!3087 t2!34))) b!1291856))

(declare-fun b!1291867 () Bool)

(declare-fun b_free!30567 () Bool)

(declare-fun b_next!31271 () Bool)

(assert (=> b!1291867 (= b_free!30567 (not b_next!31271))))

(declare-fun tp!376609 () Bool)

(declare-fun b_and!86125 () Bool)

(assert (=> b!1291867 (= tp!376609 b_and!86125)))

(declare-fun b_free!30569 () Bool)

(declare-fun b_next!31273 () Bool)

(assert (=> b!1291867 (= b_free!30569 (not b_next!31273))))

(declare-fun tb!69377 () Bool)

(declare-fun t!117234 () Bool)

(assert (=> (and b!1291867 (= (toChars!3283 (transformation!2225 (h!18318 (t!117206 rules!2550)))) (toChars!3283 (transformation!2225 (rule!3964 t2!34)))) t!117234) tb!69377))

(declare-fun result!84084 () Bool)

(assert (= result!84084 result!84050))

(assert (=> d!364139 t!117234))

(declare-fun t!117236 () Bool)

(declare-fun tb!69379 () Bool)

(assert (=> (and b!1291867 (= (toChars!3283 (transformation!2225 (h!18318 (t!117206 rules!2550)))) (toChars!3283 (transformation!2225 (rule!3964 t1!34)))) t!117236) tb!69379))

(declare-fun result!84086 () Bool)

(assert (= result!84086 result!84072))

(assert (=> b!1291779 t!117236))

(assert (=> b!1291782 t!117234))

(assert (=> d!364193 t!117236))

(declare-fun tp!376610 () Bool)

(declare-fun b_and!86127 () Bool)

(assert (=> b!1291867 (= tp!376610 (and (=> t!117234 result!84084) (=> t!117236 result!84086) b_and!86127))))

(declare-fun e!828544 () Bool)

(assert (=> b!1291867 (= e!828544 (and tp!376609 tp!376610))))

(declare-fun tp!376607 () Bool)

(declare-fun b!1291866 () Bool)

(declare-fun e!828543 () Bool)

(assert (=> b!1291866 (= e!828543 (and tp!376607 (inv!17334 (tag!2487 (h!18318 (t!117206 rules!2550)))) (inv!17337 (transformation!2225 (h!18318 (t!117206 rules!2550)))) e!828544))))

(declare-fun b!1291865 () Bool)

(declare-fun e!828545 () Bool)

(declare-fun tp!376608 () Bool)

(assert (=> b!1291865 (= e!828545 (and e!828543 tp!376608))))

(assert (=> b!1291650 (= tp!376572 e!828545)))

(assert (= b!1291866 b!1291867))

(assert (= b!1291865 b!1291866))

(assert (= (and b!1291650 ((_ is Cons!12917) (t!117206 rules!2550))) b!1291865))

(declare-fun m!1442729 () Bool)

(assert (=> b!1291866 m!1442729))

(declare-fun m!1442731 () Bool)

(assert (=> b!1291866 m!1442731))

(declare-fun e!828547 () Bool)

(assert (=> b!1291640 (= tp!376562 e!828547)))

(declare-fun b!1291869 () Bool)

(declare-fun tp!376615 () Bool)

(declare-fun tp!376614 () Bool)

(assert (=> b!1291869 (= e!828547 (and tp!376615 tp!376614))))

(declare-fun b!1291871 () Bool)

(declare-fun tp!376611 () Bool)

(declare-fun tp!376612 () Bool)

(assert (=> b!1291871 (= e!828547 (and tp!376611 tp!376612))))

(declare-fun b!1291870 () Bool)

(declare-fun tp!376613 () Bool)

(assert (=> b!1291870 (= e!828547 tp!376613)))

(declare-fun b!1291868 () Bool)

(assert (=> b!1291868 (= e!828547 tp_is_empty!6569)))

(assert (= (and b!1291640 ((_ is ElementMatch!3539) (regex!2225 (rule!3964 t1!34)))) b!1291868))

(assert (= (and b!1291640 ((_ is Concat!5855) (regex!2225 (rule!3964 t1!34)))) b!1291869))

(assert (= (and b!1291640 ((_ is Star!3539) (regex!2225 (rule!3964 t1!34)))) b!1291870))

(assert (= (and b!1291640 ((_ is Union!3539) (regex!2225 (rule!3964 t1!34)))) b!1291871))

(declare-fun e!828548 () Bool)

(assert (=> b!1291651 (= tp!376568 e!828548)))

(declare-fun b!1291873 () Bool)

(declare-fun tp!376620 () Bool)

(declare-fun tp!376619 () Bool)

(assert (=> b!1291873 (= e!828548 (and tp!376620 tp!376619))))

(declare-fun b!1291875 () Bool)

(declare-fun tp!376616 () Bool)

(declare-fun tp!376617 () Bool)

(assert (=> b!1291875 (= e!828548 (and tp!376616 tp!376617))))

(declare-fun b!1291874 () Bool)

(declare-fun tp!376618 () Bool)

(assert (=> b!1291874 (= e!828548 tp!376618)))

(declare-fun b!1291872 () Bool)

(assert (=> b!1291872 (= e!828548 tp_is_empty!6569)))

(assert (= (and b!1291651 ((_ is ElementMatch!3539) (regex!2225 (rule!3964 t2!34)))) b!1291872))

(assert (= (and b!1291651 ((_ is Concat!5855) (regex!2225 (rule!3964 t2!34)))) b!1291873))

(assert (= (and b!1291651 ((_ is Star!3539) (regex!2225 (rule!3964 t2!34)))) b!1291874))

(assert (= (and b!1291651 ((_ is Union!3539) (regex!2225 (rule!3964 t2!34)))) b!1291875))

(declare-fun b!1291876 () Bool)

(declare-fun e!828549 () Bool)

(declare-fun tp!376621 () Bool)

(assert (=> b!1291876 (= e!828549 (and tp_is_empty!6569 tp!376621))))

(assert (=> b!1291636 (= tp!376569 e!828549)))

(assert (= (and b!1291636 ((_ is Cons!12916) (originalCharacters!3087 t1!34))) b!1291876))

(declare-fun b_lambda!36913 () Bool)

(assert (= b_lambda!36905 (or (and b!1291641 b_free!30557 (= (toChars!3283 (transformation!2225 (h!18318 rules!2550))) (toChars!3283 (transformation!2225 (rule!3964 t1!34))))) (and b!1291632 b_free!30561) (and b!1291637 b_free!30565 (= (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (toChars!3283 (transformation!2225 (rule!3964 t1!34))))) (and b!1291867 b_free!30569 (= (toChars!3283 (transformation!2225 (h!18318 (t!117206 rules!2550)))) (toChars!3283 (transformation!2225 (rule!3964 t1!34))))) b_lambda!36913)))

(declare-fun b_lambda!36915 () Bool)

(assert (= b_lambda!36895 (or b!1291644 b_lambda!36915)))

(declare-fun bs!328592 () Bool)

(declare-fun d!364211 () Bool)

(assert (= bs!328592 (and d!364211 b!1291644)))

(declare-fun res!578985 () Bool)

(declare-fun e!828550 () Bool)

(assert (=> bs!328592 (=> (not res!578985) (not e!828550))))

(declare-fun matchR!1547 (Regex!3539 List!12982) Bool)

(assert (=> bs!328592 (= res!578985 (matchR!1547 lt!425168 lt!425174))))

(assert (=> bs!328592 (= (dynLambda!5635 lambda!50751 lt!425174) e!828550)))

(declare-fun b!1291877 () Bool)

(declare-fun isPrefix!1049 (List!12982 List!12982) Bool)

(assert (=> b!1291877 (= e!828550 (isPrefix!1049 lt!425167 lt!425174))))

(assert (= (and bs!328592 res!578985) b!1291877))

(declare-fun m!1442733 () Bool)

(assert (=> bs!328592 m!1442733))

(declare-fun m!1442735 () Bool)

(assert (=> b!1291877 m!1442735))

(assert (=> d!364099 d!364211))

(declare-fun b_lambda!36917 () Bool)

(assert (= b_lambda!36907 (or (and b!1291641 b_free!30557 (= (toChars!3283 (transformation!2225 (h!18318 rules!2550))) (toChars!3283 (transformation!2225 (rule!3964 t2!34))))) (and b!1291632 b_free!30561 (= (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (toChars!3283 (transformation!2225 (rule!3964 t2!34))))) (and b!1291637 b_free!30565) (and b!1291867 b_free!30569 (= (toChars!3283 (transformation!2225 (h!18318 (t!117206 rules!2550)))) (toChars!3283 (transformation!2225 (rule!3964 t2!34))))) b_lambda!36917)))

(declare-fun b_lambda!36919 () Bool)

(assert (= b_lambda!36899 (or (and b!1291641 b_free!30557 (= (toChars!3283 (transformation!2225 (h!18318 rules!2550))) (toChars!3283 (transformation!2225 (rule!3964 t2!34))))) (and b!1291632 b_free!30561 (= (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (toChars!3283 (transformation!2225 (rule!3964 t2!34))))) (and b!1291637 b_free!30565) (and b!1291867 b_free!30569 (= (toChars!3283 (transformation!2225 (h!18318 (t!117206 rules!2550)))) (toChars!3283 (transformation!2225 (rule!3964 t2!34))))) b_lambda!36919)))

(declare-fun b_lambda!36921 () Bool)

(assert (= b_lambda!36909 (or (and b!1291641 b_free!30557 (= (toChars!3283 (transformation!2225 (h!18318 rules!2550))) (toChars!3283 (transformation!2225 (rule!3964 t1!34))))) (and b!1291632 b_free!30561) (and b!1291637 b_free!30565 (= (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (toChars!3283 (transformation!2225 (rule!3964 t1!34))))) (and b!1291867 b_free!30569 (= (toChars!3283 (transformation!2225 (h!18318 (t!117206 rules!2550)))) (toChars!3283 (transformation!2225 (rule!3964 t1!34))))) b_lambda!36921)))

(check-sat (not b!1291877) tp_is_empty!6569 (not b!1291722) (not d!364193) (not b!1291663) (not b!1291866) (not tb!69371) (not d!364119) (not b!1291813) (not d!364167) b_and!86113 (not b!1291779) (not b_next!31273) (not d!364183) (not b!1291723) (not d!364099) (not b_next!31259) (not b!1291781) (not b!1291780) (not b!1291748) (not b_lambda!36915) (not b!1291875) (not b!1291783) (not d!364109) b_and!86115 (not b!1291873) (not d!364187) (not d!364169) (not b!1291764) (not b!1291746) (not b_lambda!36919) (not b!1291799) (not d!364123) (not b!1291865) (not d!364111) (not d!364201) (not b_lambda!36913) (not b!1291761) (not b_lambda!36917) (not b!1291850) (not tb!69353) (not b!1291849) (not b!1291831) (not b!1291701) (not b_lambda!36921) (not b!1291870) (not b!1291766) (not b!1291869) (not d!364139) (not bs!328592) b_and!86127 (not b!1291721) (not b!1291876) (not b!1291832) b_and!86117 (not b!1291728) (not b_next!31263) (not d!364163) (not d!364105) (not b_next!31261) b_and!86075 b_and!86071 (not b_next!31269) (not d!364195) (not b!1291661) (not b!1291782) (not b!1291744) (not b!1291812) (not b!1291672) (not b!1291871) (not b_next!31271) (not b!1291798) (not b!1291772) (not d!364135) b_and!86079 (not b!1291874) (not b!1291837) (not b!1291851) (not b_next!31265) (not d!364181) (not b!1291762) (not d!364205) (not b_next!31267) (not b!1291771) (not d!364151) (not b!1291702) b_and!86125 (not b!1291856) (not b!1291703) (not d!364137))
(check-sat (not b_next!31259) b_and!86115 b_and!86127 b_and!86117 (not b_next!31263) (not b_next!31271) b_and!86079 b_and!86125 b_and!86113 (not b_next!31273) (not b_next!31261) b_and!86075 b_and!86071 (not b_next!31269) (not b_next!31265) (not b_next!31267))
(get-model)

(declare-fun d!364217 () Bool)

(declare-fun charsToBigInt!1 (List!12981) Int)

(assert (=> d!364217 (= (inv!17 (value!73045 t1!34)) (= (charsToBigInt!1 (text!16653 (value!73045 t1!34))) (value!73037 (value!73045 t1!34))))))

(declare-fun bs!328595 () Bool)

(assert (= bs!328595 d!364217))

(declare-fun m!1442751 () Bool)

(assert (=> bs!328595 m!1442751))

(assert (=> b!1291744 d!364217))

(declare-fun d!364219 () Bool)

(assert (=> d!364219 (= (inv!17334 (tag!2487 (h!18318 (t!117206 rules!2550)))) (= (mod (str.len (value!73044 (tag!2487 (h!18318 (t!117206 rules!2550))))) 2) 0))))

(assert (=> b!1291866 d!364219))

(declare-fun d!364221 () Bool)

(declare-fun res!578991 () Bool)

(declare-fun e!828573 () Bool)

(assert (=> d!364221 (=> (not res!578991) (not e!828573))))

(assert (=> d!364221 (= res!578991 (semiInverseModEq!844 (toChars!3283 (transformation!2225 (h!18318 (t!117206 rules!2550)))) (toValue!3424 (transformation!2225 (h!18318 (t!117206 rules!2550))))))))

(assert (=> d!364221 (= (inv!17337 (transformation!2225 (h!18318 (t!117206 rules!2550)))) e!828573)))

(declare-fun b!1291918 () Bool)

(assert (=> b!1291918 (= e!828573 (equivClasses!803 (toChars!3283 (transformation!2225 (h!18318 (t!117206 rules!2550)))) (toValue!3424 (transformation!2225 (h!18318 (t!117206 rules!2550))))))))

(assert (= (and d!364221 res!578991) b!1291918))

(declare-fun m!1442753 () Bool)

(assert (=> d!364221 m!1442753))

(declare-fun m!1442755 () Bool)

(assert (=> b!1291918 m!1442755))

(assert (=> b!1291866 d!364221))

(declare-fun d!364223 () Bool)

(declare-fun charsToInt!0 (List!12981) (_ BitVec 32))

(assert (=> d!364223 (= (inv!16 (value!73045 t1!34)) (= (charsToInt!0 (text!16652 (value!73045 t1!34))) (value!73036 (value!73045 t1!34))))))

(declare-fun bs!328596 () Bool)

(assert (= bs!328596 d!364223))

(declare-fun m!1442757 () Bool)

(assert (=> bs!328596 m!1442757))

(assert (=> b!1291746 d!364223))

(declare-fun d!364225 () Bool)

(assert (=> d!364225 (= (Exists!697 lambda!50754) (choose!7927 lambda!50754))))

(declare-fun bs!328597 () Bool)

(assert (= bs!328597 d!364225))

(declare-fun m!1442759 () Bool)

(assert (=> bs!328597 m!1442759))

(assert (=> d!364111 d!364225))

(declare-fun bs!328598 () Bool)

(declare-fun d!364227 () Bool)

(assert (= bs!328598 (and d!364227 b!1291644)))

(declare-fun lambda!50766 () Int)

(assert (=> bs!328598 (= lambda!50766 lambda!50751)))

(declare-fun bs!328599 () Bool)

(assert (= bs!328599 (and d!364227 d!364111)))

(assert (=> bs!328599 (= lambda!50766 lambda!50754)))

(assert (=> d!364227 true))

(assert (=> d!364227 true))

(assert (=> d!364227 (Exists!697 lambda!50766)))

(assert (=> d!364227 true))

(declare-fun _$103!38 () Unit!19068)

(assert (=> d!364227 (= (choose!7928 lt!425168 lt!425167) _$103!38)))

(declare-fun bs!328600 () Bool)

(assert (= bs!328600 d!364227))

(declare-fun m!1442761 () Bool)

(assert (=> bs!328600 m!1442761))

(assert (=> d!364111 d!364227))

(declare-fun call!88675 () Bool)

(declare-fun c!212613 () Bool)

(declare-fun c!212614 () Bool)

(declare-fun bm!88669 () Bool)

(assert (=> bm!88669 (= call!88675 (validRegex!1524 (ite c!212614 (reg!3868 lt!425168) (ite c!212613 (regOne!7591 lt!425168) (regOne!7590 lt!425168)))))))

(declare-fun b!1291940 () Bool)

(declare-fun e!828595 () Bool)

(declare-fun e!828594 () Bool)

(assert (=> b!1291940 (= e!828595 e!828594)))

(assert (=> b!1291940 (= c!212613 ((_ is Union!3539) lt!425168))))

(declare-fun bm!88670 () Bool)

(declare-fun call!88676 () Bool)

(assert (=> bm!88670 (= call!88676 call!88675)))

(declare-fun b!1291941 () Bool)

(declare-fun e!828590 () Bool)

(assert (=> b!1291941 (= e!828595 e!828590)))

(declare-fun res!579006 () Bool)

(declare-fun nullable!1126 (Regex!3539) Bool)

(assert (=> b!1291941 (= res!579006 (not (nullable!1126 (reg!3868 lt!425168))))))

(assert (=> b!1291941 (=> (not res!579006) (not e!828590))))

(declare-fun bm!88671 () Bool)

(declare-fun call!88674 () Bool)

(assert (=> bm!88671 (= call!88674 (validRegex!1524 (ite c!212613 (regTwo!7591 lt!425168) (regTwo!7590 lt!425168))))))

(declare-fun b!1291942 () Bool)

(declare-fun res!579008 () Bool)

(declare-fun e!828593 () Bool)

(assert (=> b!1291942 (=> res!579008 e!828593)))

(assert (=> b!1291942 (= res!579008 (not ((_ is Concat!5855) lt!425168)))))

(assert (=> b!1291942 (= e!828594 e!828593)))

(declare-fun b!1291943 () Bool)

(assert (=> b!1291943 (= e!828590 call!88675)))

(declare-fun b!1291944 () Bool)

(declare-fun res!579007 () Bool)

(declare-fun e!828592 () Bool)

(assert (=> b!1291944 (=> (not res!579007) (not e!828592))))

(assert (=> b!1291944 (= res!579007 call!88676)))

(assert (=> b!1291944 (= e!828594 e!828592)))

(declare-fun b!1291945 () Bool)

(assert (=> b!1291945 (= e!828592 call!88674)))

(declare-fun b!1291939 () Bool)

(declare-fun e!828591 () Bool)

(assert (=> b!1291939 (= e!828591 call!88674)))

(declare-fun d!364229 () Bool)

(declare-fun res!579005 () Bool)

(declare-fun e!828596 () Bool)

(assert (=> d!364229 (=> res!579005 e!828596)))

(assert (=> d!364229 (= res!579005 ((_ is ElementMatch!3539) lt!425168))))

(assert (=> d!364229 (= (validRegex!1524 lt!425168) e!828596)))

(declare-fun b!1291946 () Bool)

(assert (=> b!1291946 (= e!828596 e!828595)))

(assert (=> b!1291946 (= c!212614 ((_ is Star!3539) lt!425168))))

(declare-fun b!1291947 () Bool)

(assert (=> b!1291947 (= e!828593 e!828591)))

(declare-fun res!579004 () Bool)

(assert (=> b!1291947 (=> (not res!579004) (not e!828591))))

(assert (=> b!1291947 (= res!579004 call!88676)))

(assert (= (and d!364229 (not res!579005)) b!1291946))

(assert (= (and b!1291946 c!212614) b!1291941))

(assert (= (and b!1291946 (not c!212614)) b!1291940))

(assert (= (and b!1291941 res!579006) b!1291943))

(assert (= (and b!1291940 c!212613) b!1291944))

(assert (= (and b!1291940 (not c!212613)) b!1291942))

(assert (= (and b!1291944 res!579007) b!1291945))

(assert (= (and b!1291942 (not res!579008)) b!1291947))

(assert (= (and b!1291947 res!579004) b!1291939))

(assert (= (or b!1291944 b!1291947) bm!88670))

(assert (= (or b!1291945 b!1291939) bm!88671))

(assert (= (or b!1291943 bm!88670) bm!88669))

(declare-fun m!1442763 () Bool)

(assert (=> bm!88669 m!1442763))

(declare-fun m!1442765 () Bool)

(assert (=> b!1291941 m!1442765))

(declare-fun m!1442767 () Bool)

(assert (=> bm!88671 m!1442767))

(assert (=> d!364111 d!364229))

(declare-fun d!364231 () Bool)

(declare-fun charsToBigInt!0 (List!12981 Int) Int)

(assert (=> d!364231 (= (inv!15 (value!73045 t1!34)) (= (charsToBigInt!0 (text!16654 (value!73045 t1!34)) 0) (value!73040 (value!73045 t1!34))))))

(declare-fun bs!328601 () Bool)

(assert (= bs!328601 d!364231))

(declare-fun m!1442769 () Bool)

(assert (=> bs!328601 m!1442769))

(assert (=> b!1291748 d!364231))

(declare-fun d!364233 () Bool)

(declare-fun lt!425239 () Bool)

(assert (=> d!364233 (= lt!425239 (isEmpty!7669 (list!4821 (_2!7220 lt!425198))))))

(declare-fun isEmpty!7670 (Conc!4243) Bool)

(assert (=> d!364233 (= lt!425239 (isEmpty!7670 (c!212569 (_2!7220 lt!425198))))))

(assert (=> d!364233 (= (isEmpty!7666 (_2!7220 lt!425198)) lt!425239)))

(declare-fun bs!328602 () Bool)

(assert (= bs!328602 d!364233))

(declare-fun m!1442771 () Bool)

(assert (=> bs!328602 m!1442771))

(assert (=> bs!328602 m!1442771))

(declare-fun m!1442773 () Bool)

(assert (=> bs!328602 m!1442773))

(declare-fun m!1442775 () Bool)

(assert (=> bs!328602 m!1442775))

(assert (=> b!1291722 d!364233))

(declare-fun d!364235 () Bool)

(declare-fun lt!425240 () Int)

(assert (=> d!364235 (>= lt!425240 0)))

(declare-fun e!828597 () Int)

(assert (=> d!364235 (= lt!425240 e!828597)))

(declare-fun c!212615 () Bool)

(assert (=> d!364235 (= c!212615 ((_ is Nil!12916) (list!4821 lt!425166)))))

(assert (=> d!364235 (= (size!10543 (list!4821 lt!425166)) lt!425240)))

(declare-fun b!1291948 () Bool)

(assert (=> b!1291948 (= e!828597 0)))

(declare-fun b!1291949 () Bool)

(assert (=> b!1291949 (= e!828597 (+ 1 (size!10543 (t!117205 (list!4821 lt!425166)))))))

(assert (= (and d!364235 c!212615) b!1291948))

(assert (= (and d!364235 (not c!212615)) b!1291949))

(declare-fun m!1442777 () Bool)

(assert (=> b!1291949 m!1442777))

(assert (=> d!364137 d!364235))

(declare-fun d!364237 () Bool)

(assert (=> d!364237 (= (list!4821 lt!425166) (list!4824 (c!212569 lt!425166)))))

(declare-fun bs!328603 () Bool)

(assert (= bs!328603 d!364237))

(declare-fun m!1442779 () Bool)

(assert (=> bs!328603 m!1442779))

(assert (=> d!364137 d!364237))

(declare-fun d!364239 () Bool)

(declare-fun lt!425243 () Int)

(assert (=> d!364239 (= lt!425243 (size!10543 (list!4824 (c!212569 lt!425166))))))

(assert (=> d!364239 (= lt!425243 (ite ((_ is Empty!4243) (c!212569 lt!425166)) 0 (ite ((_ is Leaf!6552) (c!212569 lt!425166)) (csize!8717 (c!212569 lt!425166)) (csize!8716 (c!212569 lt!425166)))))))

(assert (=> d!364239 (= (size!10546 (c!212569 lt!425166)) lt!425243)))

(declare-fun bs!328604 () Bool)

(assert (= bs!328604 d!364239))

(assert (=> bs!328604 m!1442779))

(assert (=> bs!328604 m!1442779))

(declare-fun m!1442781 () Bool)

(assert (=> bs!328604 m!1442781))

(assert (=> d!364137 d!364239))

(declare-fun d!364241 () Bool)

(assert (=> d!364241 true))

(assert (=> d!364241 true))

(declare-fun res!579011 () Bool)

(assert (=> d!364241 (= (choose!7927 lambda!50751) res!579011)))

(assert (=> d!364109 d!364241))

(declare-fun d!364243 () Bool)

(declare-fun lt!425244 () Int)

(assert (=> d!364243 (>= lt!425244 0)))

(declare-fun e!828598 () Int)

(assert (=> d!364243 (= lt!425244 e!828598)))

(declare-fun c!212616 () Bool)

(assert (=> d!364243 (= c!212616 ((_ is Nil!12916) (originalCharacters!3087 t2!34)))))

(assert (=> d!364243 (= (size!10543 (originalCharacters!3087 t2!34)) lt!425244)))

(declare-fun b!1291950 () Bool)

(assert (=> b!1291950 (= e!828598 0)))

(declare-fun b!1291951 () Bool)

(assert (=> b!1291951 (= e!828598 (+ 1 (size!10543 (t!117205 (originalCharacters!3087 t2!34)))))))

(assert (= (and d!364243 c!212616) b!1291950))

(assert (= (and d!364243 (not c!212616)) b!1291951))

(declare-fun m!1442783 () Bool)

(assert (=> b!1291951 m!1442783))

(assert (=> b!1291783 d!364243))

(declare-fun d!364245 () Bool)

(declare-fun c!212619 () Bool)

(assert (=> d!364245 (= c!212619 ((_ is Nil!12916) lt!425216))))

(declare-fun e!828601 () (InoxSet C!7368))

(assert (=> d!364245 (= (content!1824 lt!425216) e!828601)))

(declare-fun b!1291956 () Bool)

(assert (=> b!1291956 (= e!828601 ((as const (Array C!7368 Bool)) false))))

(declare-fun b!1291957 () Bool)

(assert (=> b!1291957 (= e!828601 ((_ map or) (store ((as const (Array C!7368 Bool)) false) (h!18317 lt!425216) true) (content!1824 (t!117205 lt!425216))))))

(assert (= (and d!364245 c!212619) b!1291956))

(assert (= (and d!364245 (not c!212619)) b!1291957))

(declare-fun m!1442785 () Bool)

(assert (=> b!1291957 m!1442785))

(declare-fun m!1442787 () Bool)

(assert (=> b!1291957 m!1442787))

(assert (=> d!364183 d!364245))

(declare-fun d!364247 () Bool)

(declare-fun c!212620 () Bool)

(assert (=> d!364247 (= c!212620 ((_ is Nil!12916) (list!4821 (charsOf!1197 t1!34))))))

(declare-fun e!828602 () (InoxSet C!7368))

(assert (=> d!364247 (= (content!1824 (list!4821 (charsOf!1197 t1!34))) e!828602)))

(declare-fun b!1291958 () Bool)

(assert (=> b!1291958 (= e!828602 ((as const (Array C!7368 Bool)) false))))

(declare-fun b!1291959 () Bool)

(assert (=> b!1291959 (= e!828602 ((_ map or) (store ((as const (Array C!7368 Bool)) false) (h!18317 (list!4821 (charsOf!1197 t1!34))) true) (content!1824 (t!117205 (list!4821 (charsOf!1197 t1!34))))))))

(assert (= (and d!364247 c!212620) b!1291958))

(assert (= (and d!364247 (not c!212620)) b!1291959))

(declare-fun m!1442789 () Bool)

(assert (=> b!1291959 m!1442789))

(declare-fun m!1442791 () Bool)

(assert (=> b!1291959 m!1442791))

(assert (=> d!364183 d!364247))

(declare-fun d!364249 () Bool)

(declare-fun c!212621 () Bool)

(assert (=> d!364249 (= c!212621 ((_ is Nil!12916) (Cons!12916 (apply!2823 lt!425166 0) Nil!12916)))))

(declare-fun e!828603 () (InoxSet C!7368))

(assert (=> d!364249 (= (content!1824 (Cons!12916 (apply!2823 lt!425166 0) Nil!12916)) e!828603)))

(declare-fun b!1291960 () Bool)

(assert (=> b!1291960 (= e!828603 ((as const (Array C!7368 Bool)) false))))

(declare-fun b!1291961 () Bool)

(assert (=> b!1291961 (= e!828603 ((_ map or) (store ((as const (Array C!7368 Bool)) false) (h!18317 (Cons!12916 (apply!2823 lt!425166 0) Nil!12916)) true) (content!1824 (t!117205 (Cons!12916 (apply!2823 lt!425166 0) Nil!12916)))))))

(assert (= (and d!364249 c!212621) b!1291960))

(assert (= (and d!364249 (not c!212621)) b!1291961))

(declare-fun m!1442793 () Bool)

(assert (=> b!1291961 m!1442793))

(declare-fun m!1442795 () Bool)

(assert (=> b!1291961 m!1442795))

(assert (=> d!364183 d!364249))

(declare-fun d!364251 () Bool)

(declare-fun isBalanced!1245 (Conc!4243) Bool)

(assert (=> d!364251 (= (inv!17340 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34))) (isBalanced!1245 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34)))))))

(declare-fun bs!328605 () Bool)

(assert (= bs!328605 d!364251))

(declare-fun m!1442797 () Bool)

(assert (=> bs!328605 m!1442797))

(assert (=> tb!69371 d!364251))

(declare-fun b!1291973 () Bool)

(declare-fun e!828611 () Bool)

(assert (=> b!1291973 (= e!828611 (>= (size!10543 lt!425174) (size!10543 lt!425167)))))

(declare-fun b!1291971 () Bool)

(declare-fun res!579020 () Bool)

(declare-fun e!828610 () Bool)

(assert (=> b!1291971 (=> (not res!579020) (not e!828610))))

(assert (=> b!1291971 (= res!579020 (= (head!2213 lt!425167) (head!2213 lt!425174)))))

(declare-fun d!364253 () Bool)

(assert (=> d!364253 e!828611))

(declare-fun res!579021 () Bool)

(assert (=> d!364253 (=> res!579021 e!828611)))

(declare-fun lt!425247 () Bool)

(assert (=> d!364253 (= res!579021 (not lt!425247))))

(declare-fun e!828612 () Bool)

(assert (=> d!364253 (= lt!425247 e!828612)))

(declare-fun res!579022 () Bool)

(assert (=> d!364253 (=> res!579022 e!828612)))

(assert (=> d!364253 (= res!579022 ((_ is Nil!12916) lt!425167))))

(assert (=> d!364253 (= (isPrefix!1049 lt!425167 lt!425174) lt!425247)))

(declare-fun b!1291972 () Bool)

(assert (=> b!1291972 (= e!828610 (isPrefix!1049 (tail!1841 lt!425167) (tail!1841 lt!425174)))))

(declare-fun b!1291970 () Bool)

(assert (=> b!1291970 (= e!828612 e!828610)))

(declare-fun res!579023 () Bool)

(assert (=> b!1291970 (=> (not res!579023) (not e!828610))))

(assert (=> b!1291970 (= res!579023 (not ((_ is Nil!12916) lt!425174)))))

(assert (= (and d!364253 (not res!579022)) b!1291970))

(assert (= (and b!1291970 res!579023) b!1291971))

(assert (= (and b!1291971 res!579020) b!1291972))

(assert (= (and d!364253 (not res!579021)) b!1291973))

(declare-fun m!1442799 () Bool)

(assert (=> b!1291973 m!1442799))

(assert (=> b!1291973 m!1442389))

(assert (=> b!1291971 m!1442643))

(declare-fun m!1442801 () Bool)

(assert (=> b!1291971 m!1442801))

(assert (=> b!1291972 m!1442647))

(declare-fun m!1442803 () Bool)

(assert (=> b!1291972 m!1442803))

(assert (=> b!1291972 m!1442647))

(assert (=> b!1291972 m!1442803))

(declare-fun m!1442805 () Bool)

(assert (=> b!1291972 m!1442805))

(assert (=> b!1291877 d!364253))

(declare-fun d!364255 () Bool)

(assert (=> d!364255 (= (list!4821 lt!425205) (list!4824 (c!212569 lt!425205)))))

(declare-fun bs!328606 () Bool)

(assert (= bs!328606 d!364255))

(declare-fun m!1442807 () Bool)

(assert (=> bs!328606 m!1442807))

(assert (=> d!364139 d!364255))

(declare-fun d!364257 () Bool)

(assert (=> d!364257 true))

(declare-fun order!7859 () Int)

(declare-fun order!7861 () Int)

(declare-fun lambda!50769 () Int)

(declare-fun dynLambda!5639 (Int Int) Int)

(declare-fun dynLambda!5640 (Int Int) Int)

(assert (=> d!364257 (< (dynLambda!5639 order!7859 (toChars!3283 (transformation!2225 (rule!3964 t2!34)))) (dynLambda!5640 order!7861 lambda!50769))))

(assert (=> d!364257 true))

(declare-fun order!7863 () Int)

(declare-fun dynLambda!5641 (Int Int) Int)

(assert (=> d!364257 (< (dynLambda!5641 order!7863 (toValue!3424 (transformation!2225 (rule!3964 t2!34)))) (dynLambda!5640 order!7861 lambda!50769))))

(declare-fun Forall!504 (Int) Bool)

(assert (=> d!364257 (= (semiInverseModEq!844 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (toValue!3424 (transformation!2225 (rule!3964 t2!34)))) (Forall!504 lambda!50769))))

(declare-fun bs!328607 () Bool)

(assert (= bs!328607 d!364257))

(declare-fun m!1442809 () Bool)

(assert (=> bs!328607 m!1442809))

(assert (=> d!364205 d!364257))

(declare-fun bs!328608 () Bool)

(declare-fun d!364259 () Bool)

(assert (= bs!328608 (and d!364259 d!364257)))

(declare-fun lambda!50770 () Int)

(assert (=> bs!328608 (= (and (= (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (toChars!3283 (transformation!2225 (rule!3964 t2!34)))) (= (toValue!3424 (transformation!2225 (rule!3964 t1!34))) (toValue!3424 (transformation!2225 (rule!3964 t2!34))))) (= lambda!50770 lambda!50769))))

(assert (=> d!364259 true))

(assert (=> d!364259 (< (dynLambda!5639 order!7859 (toChars!3283 (transformation!2225 (rule!3964 t1!34)))) (dynLambda!5640 order!7861 lambda!50770))))

(assert (=> d!364259 true))

(assert (=> d!364259 (< (dynLambda!5641 order!7863 (toValue!3424 (transformation!2225 (rule!3964 t1!34)))) (dynLambda!5640 order!7861 lambda!50770))))

(assert (=> d!364259 (= (semiInverseModEq!844 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (toValue!3424 (transformation!2225 (rule!3964 t1!34)))) (Forall!504 lambda!50770))))

(declare-fun bs!328609 () Bool)

(assert (= bs!328609 d!364259))

(declare-fun m!1442811 () Bool)

(assert (=> bs!328609 m!1442811))

(assert (=> d!364201 d!364259))

(declare-fun d!364261 () Bool)

(declare-fun res!579028 () Bool)

(declare-fun e!828617 () Bool)

(assert (=> d!364261 (=> res!579028 e!828617)))

(assert (=> d!364261 (= res!579028 ((_ is Nil!12917) rules!2550))))

(assert (=> d!364261 (= (noDuplicateTag!813 thiss!19762 rules!2550 Nil!12918) e!828617)))

(declare-fun b!1291982 () Bool)

(declare-fun e!828618 () Bool)

(assert (=> b!1291982 (= e!828617 e!828618)))

(declare-fun res!579029 () Bool)

(assert (=> b!1291982 (=> (not res!579029) (not e!828618))))

(declare-fun contains!2156 (List!12984 String!15811) Bool)

(assert (=> b!1291982 (= res!579029 (not (contains!2156 Nil!12918 (tag!2487 (h!18318 rules!2550)))))))

(declare-fun b!1291983 () Bool)

(assert (=> b!1291983 (= e!828618 (noDuplicateTag!813 thiss!19762 (t!117206 rules!2550) (Cons!12918 (tag!2487 (h!18318 rules!2550)) Nil!12918)))))

(assert (= (and d!364261 (not res!579028)) b!1291982))

(assert (= (and b!1291982 res!579029) b!1291983))

(declare-fun m!1442813 () Bool)

(assert (=> b!1291982 m!1442813))

(declare-fun m!1442815 () Bool)

(assert (=> b!1291983 m!1442815))

(assert (=> b!1291672 d!364261))

(declare-fun d!364263 () Bool)

(assert (=> d!364263 (= (inv!16 (value!73045 t2!34)) (= (charsToInt!0 (text!16652 (value!73045 t2!34))) (value!73036 (value!73045 t2!34))))))

(declare-fun bs!328610 () Bool)

(assert (= bs!328610 d!364263))

(declare-fun m!1442817 () Bool)

(assert (=> bs!328610 m!1442817))

(assert (=> b!1291764 d!364263))

(declare-fun d!364265 () Bool)

(declare-fun lt!425248 () Int)

(assert (=> d!364265 (>= lt!425248 0)))

(declare-fun e!828619 () Int)

(assert (=> d!364265 (= lt!425248 e!828619)))

(declare-fun c!212622 () Bool)

(assert (=> d!364265 (= c!212622 ((_ is Nil!12916) (originalCharacters!3087 t1!34)))))

(assert (=> d!364265 (= (size!10543 (originalCharacters!3087 t1!34)) lt!425248)))

(declare-fun b!1291984 () Bool)

(assert (=> b!1291984 (= e!828619 0)))

(declare-fun b!1291985 () Bool)

(assert (=> b!1291985 (= e!828619 (+ 1 (size!10543 (t!117205 (originalCharacters!3087 t1!34)))))))

(assert (= (and d!364265 c!212622) b!1291984))

(assert (= (and d!364265 (not c!212622)) b!1291985))

(declare-fun m!1442819 () Bool)

(assert (=> b!1291985 m!1442819))

(assert (=> b!1291780 d!364265))

(assert (=> b!1291831 d!364137))

(declare-fun d!364267 () Bool)

(assert (=> d!364267 (= (inv!15 (value!73045 t2!34)) (= (charsToBigInt!0 (text!16654 (value!73045 t2!34)) 0) (value!73040 (value!73045 t2!34))))))

(declare-fun bs!328611 () Bool)

(assert (= bs!328611 d!364267))

(declare-fun m!1442821 () Bool)

(assert (=> bs!328611 m!1442821))

(assert (=> b!1291766 d!364267))

(declare-fun d!364269 () Bool)

(declare-fun res!579032 () List!12982)

(assert (=> d!364269 (dynLambda!5635 lambda!50751 res!579032)))

(declare-fun e!828622 () Bool)

(assert (=> d!364269 e!828622))

(assert (=> d!364269 (= (choose!7925 lambda!50751) res!579032)))

(declare-fun b!1291988 () Bool)

(declare-fun tp!376665 () Bool)

(assert (=> b!1291988 (= e!828622 (and tp_is_empty!6569 tp!376665))))

(assert (= (and d!364269 ((_ is Cons!12916) res!579032)) b!1291988))

(declare-fun b_lambda!36935 () Bool)

(assert (=> (not b_lambda!36935) (not d!364269)))

(declare-fun m!1442823 () Bool)

(assert (=> d!364269 m!1442823))

(assert (=> d!364099 d!364269))

(assert (=> d!364099 d!364109))

(declare-fun d!364271 () Bool)

(declare-fun lostCauseFct!99 (Regex!3539) Bool)

(assert (=> d!364271 (= (lostCause!251 lt!425168) (lostCauseFct!99 lt!425168))))

(declare-fun bs!328612 () Bool)

(assert (= bs!328612 d!364271))

(declare-fun m!1442825 () Bool)

(assert (=> bs!328612 m!1442825))

(assert (=> b!1291798 d!364271))

(declare-fun bs!328613 () Bool)

(declare-fun d!364273 () Bool)

(assert (= bs!328613 (and d!364273 d!364187)))

(declare-fun lambda!50775 () Int)

(assert (=> bs!328613 (= lambda!50775 lambda!50760)))

(declare-fun lambda!50776 () Int)

(declare-fun forall!3249 (List!12988 Int) Bool)

(assert (=> d!364273 (forall!3249 (map!2811 rules!2550 lambda!50775) lambda!50776)))

(declare-fun lt!425253 () Unit!19068)

(declare-fun e!828625 () Unit!19068)

(assert (=> d!364273 (= lt!425253 e!828625)))

(declare-fun c!212625 () Bool)

(assert (=> d!364273 (= c!212625 ((_ is Nil!12917) rules!2550))))

(declare-fun rulesValidInductive!703 (LexerInterface!1920 List!12983) Bool)

(assert (=> d!364273 (rulesValidInductive!703 thiss!19762 rules!2550)))

(assert (=> d!364273 (= (lemma!45 rules!2550 thiss!19762 rules!2550) lt!425253)))

(declare-fun b!1291993 () Bool)

(declare-fun Unit!19070 () Unit!19068)

(assert (=> b!1291993 (= e!828625 Unit!19070)))

(declare-fun b!1291994 () Bool)

(declare-fun Unit!19071 () Unit!19068)

(assert (=> b!1291994 (= e!828625 Unit!19071)))

(declare-fun lt!425254 () Unit!19068)

(assert (=> b!1291994 (= lt!425254 (lemma!45 rules!2550 thiss!19762 (t!117206 rules!2550)))))

(assert (= (and d!364273 c!212625) b!1291993))

(assert (= (and d!364273 (not c!212625)) b!1291994))

(declare-fun m!1442827 () Bool)

(assert (=> d!364273 m!1442827))

(assert (=> d!364273 m!1442827))

(declare-fun m!1442829 () Bool)

(assert (=> d!364273 m!1442829))

(declare-fun m!1442831 () Bool)

(assert (=> d!364273 m!1442831))

(declare-fun m!1442833 () Bool)

(assert (=> b!1291994 m!1442833))

(assert (=> d!364187 d!364273))

(declare-fun bs!328614 () Bool)

(declare-fun d!364275 () Bool)

(assert (= bs!328614 (and d!364275 d!364273)))

(declare-fun lambda!50779 () Int)

(assert (=> bs!328614 (= lambda!50779 lambda!50776)))

(declare-fun b!1292015 () Bool)

(declare-fun e!828638 () Bool)

(declare-fun e!828643 () Bool)

(assert (=> b!1292015 (= e!828638 e!828643)))

(declare-fun c!212634 () Bool)

(declare-fun isEmpty!7671 (List!12988) Bool)

(declare-fun tail!1843 (List!12988) List!12988)

(assert (=> b!1292015 (= c!212634 (isEmpty!7671 (tail!1843 (map!2811 rules!2550 lambda!50760))))))

(declare-fun b!1292016 () Bool)

(declare-fun e!828640 () Regex!3539)

(declare-fun e!828641 () Regex!3539)

(assert (=> b!1292016 (= e!828640 e!828641)))

(declare-fun c!212635 () Bool)

(assert (=> b!1292016 (= c!212635 ((_ is Cons!12922) (map!2811 rules!2550 lambda!50760)))))

(declare-fun b!1292017 () Bool)

(assert (=> b!1292017 (= e!828641 (Union!3539 (h!18323 (map!2811 rules!2550 lambda!50760)) (generalisedUnion!49 (t!117245 (map!2811 rules!2550 lambda!50760)))))))

(declare-fun b!1292018 () Bool)

(assert (=> b!1292018 (= e!828640 (h!18323 (map!2811 rules!2550 lambda!50760)))))

(declare-fun lt!425257 () Regex!3539)

(declare-fun b!1292019 () Bool)

(declare-fun head!2215 (List!12988) Regex!3539)

(assert (=> b!1292019 (= e!828643 (= lt!425257 (head!2215 (map!2811 rules!2550 lambda!50760))))))

(declare-fun b!1292020 () Bool)

(declare-fun isUnion!10 (Regex!3539) Bool)

(assert (=> b!1292020 (= e!828643 (isUnion!10 lt!425257))))

(declare-fun e!828639 () Bool)

(assert (=> d!364275 e!828639))

(declare-fun res!579038 () Bool)

(assert (=> d!364275 (=> (not res!579038) (not e!828639))))

(assert (=> d!364275 (= res!579038 (validRegex!1524 lt!425257))))

(assert (=> d!364275 (= lt!425257 e!828640)))

(declare-fun c!212637 () Bool)

(declare-fun e!828642 () Bool)

(assert (=> d!364275 (= c!212637 e!828642)))

(declare-fun res!579037 () Bool)

(assert (=> d!364275 (=> (not res!579037) (not e!828642))))

(assert (=> d!364275 (= res!579037 ((_ is Cons!12922) (map!2811 rules!2550 lambda!50760)))))

(assert (=> d!364275 (forall!3249 (map!2811 rules!2550 lambda!50760) lambda!50779)))

(assert (=> d!364275 (= (generalisedUnion!49 (map!2811 rules!2550 lambda!50760)) lt!425257)))

(declare-fun b!1292021 () Bool)

(assert (=> b!1292021 (= e!828639 e!828638)))

(declare-fun c!212636 () Bool)

(assert (=> b!1292021 (= c!212636 (isEmpty!7671 (map!2811 rules!2550 lambda!50760)))))

(declare-fun b!1292022 () Bool)

(assert (=> b!1292022 (= e!828642 (isEmpty!7671 (t!117245 (map!2811 rules!2550 lambda!50760))))))

(declare-fun b!1292023 () Bool)

(declare-fun isEmptyLang!10 (Regex!3539) Bool)

(assert (=> b!1292023 (= e!828638 (isEmptyLang!10 lt!425257))))

(declare-fun b!1292024 () Bool)

(assert (=> b!1292024 (= e!828641 EmptyLang!3539)))

(assert (= (and d!364275 res!579037) b!1292022))

(assert (= (and d!364275 c!212637) b!1292018))

(assert (= (and d!364275 (not c!212637)) b!1292016))

(assert (= (and b!1292016 c!212635) b!1292017))

(assert (= (and b!1292016 (not c!212635)) b!1292024))

(assert (= (and d!364275 res!579038) b!1292021))

(assert (= (and b!1292021 c!212636) b!1292023))

(assert (= (and b!1292021 (not c!212636)) b!1292015))

(assert (= (and b!1292015 c!212634) b!1292019))

(assert (= (and b!1292015 (not c!212634)) b!1292020))

(assert (=> b!1292019 m!1442689))

(declare-fun m!1442835 () Bool)

(assert (=> b!1292019 m!1442835))

(declare-fun m!1442837 () Bool)

(assert (=> b!1292017 m!1442837))

(declare-fun m!1442839 () Bool)

(assert (=> b!1292020 m!1442839))

(declare-fun m!1442841 () Bool)

(assert (=> b!1292022 m!1442841))

(assert (=> b!1292021 m!1442689))

(declare-fun m!1442843 () Bool)

(assert (=> b!1292021 m!1442843))

(declare-fun m!1442845 () Bool)

(assert (=> d!364275 m!1442845))

(assert (=> d!364275 m!1442689))

(declare-fun m!1442847 () Bool)

(assert (=> d!364275 m!1442847))

(assert (=> b!1292015 m!1442689))

(declare-fun m!1442849 () Bool)

(assert (=> b!1292015 m!1442849))

(assert (=> b!1292015 m!1442849))

(declare-fun m!1442851 () Bool)

(assert (=> b!1292015 m!1442851))

(declare-fun m!1442853 () Bool)

(assert (=> b!1292023 m!1442853))

(assert (=> d!364187 d!364275))

(declare-fun d!364277 () Bool)

(declare-fun lt!425260 () List!12988)

(declare-fun size!10548 (List!12988) Int)

(declare-fun size!10549 (List!12983) Int)

(assert (=> d!364277 (= (size!10548 lt!425260) (size!10549 rules!2550))))

(declare-fun e!828646 () List!12988)

(assert (=> d!364277 (= lt!425260 e!828646)))

(declare-fun c!212640 () Bool)

(assert (=> d!364277 (= c!212640 ((_ is Nil!12917) rules!2550))))

(assert (=> d!364277 (= (map!2811 rules!2550 lambda!50760) lt!425260)))

(declare-fun b!1292029 () Bool)

(assert (=> b!1292029 (= e!828646 Nil!12922)))

(declare-fun b!1292030 () Bool)

(declare-fun $colon$colon!132 (List!12988 Regex!3539) List!12988)

(declare-fun dynLambda!5642 (Int Rule!4250) Regex!3539)

(assert (=> b!1292030 (= e!828646 ($colon$colon!132 (map!2811 (t!117206 rules!2550) lambda!50760) (dynLambda!5642 lambda!50760 (h!18318 rules!2550))))))

(assert (= (and d!364277 c!212640) b!1292029))

(assert (= (and d!364277 (not c!212640)) b!1292030))

(declare-fun b_lambda!36937 () Bool)

(assert (=> (not b_lambda!36937) (not b!1292030)))

(declare-fun m!1442855 () Bool)

(assert (=> d!364277 m!1442855))

(declare-fun m!1442857 () Bool)

(assert (=> d!364277 m!1442857))

(declare-fun m!1442859 () Bool)

(assert (=> b!1292030 m!1442859))

(declare-fun m!1442861 () Bool)

(assert (=> b!1292030 m!1442861))

(assert (=> b!1292030 m!1442859))

(assert (=> b!1292030 m!1442861))

(declare-fun m!1442863 () Bool)

(assert (=> b!1292030 m!1442863))

(assert (=> d!364187 d!364277))

(declare-fun lt!425261 () Bool)

(declare-fun d!364279 () Bool)

(assert (=> d!364279 (= lt!425261 (isEmpty!7669 (list!4821 (_2!7220 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t2!34)))))))))

(assert (=> d!364279 (= lt!425261 (isEmpty!7670 (c!212569 (_2!7220 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t2!34)))))))))

(assert (=> d!364279 (= (isEmpty!7666 (_2!7220 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t2!34))))) lt!425261)))

(declare-fun bs!328615 () Bool)

(assert (= bs!328615 d!364279))

(declare-fun m!1442865 () Bool)

(assert (=> bs!328615 m!1442865))

(assert (=> bs!328615 m!1442865))

(declare-fun m!1442867 () Bool)

(assert (=> bs!328615 m!1442867))

(declare-fun m!1442869 () Bool)

(assert (=> bs!328615 m!1442869))

(assert (=> b!1291703 d!364279))

(declare-fun b!1292092 () Bool)

(declare-fun res!579065 () Bool)

(declare-fun e!828687 () Bool)

(assert (=> b!1292092 (=> (not res!579065) (not e!828687))))

(declare-fun lt!425266 () tuple2!12668)

(declare-datatypes ((tuple2!12672 0))(
  ( (tuple2!12673 (_1!7222 List!12986) (_2!7222 List!12982)) )
))
(declare-fun lexList!497 (LexerInterface!1920 List!12983 List!12982) tuple2!12672)

(assert (=> b!1292092 (= res!579065 (= (list!4822 (_1!7220 lt!425266)) (_1!7222 (lexList!497 thiss!19762 rules!2550 (list!4821 (print!719 thiss!19762 (singletonSeq!803 t2!34)))))))))

(declare-fun b!1292093 () Bool)

(declare-fun e!828689 () Bool)

(declare-fun e!828688 () Bool)

(assert (=> b!1292093 (= e!828689 e!828688)))

(declare-fun res!579064 () Bool)

(assert (=> b!1292093 (= res!579064 (< (size!10542 (_2!7220 lt!425266)) (size!10542 (print!719 thiss!19762 (singletonSeq!803 t2!34)))))))

(assert (=> b!1292093 (=> (not res!579064) (not e!828688))))

(declare-fun d!364281 () Bool)

(assert (=> d!364281 e!828687))

(declare-fun res!579063 () Bool)

(assert (=> d!364281 (=> (not res!579063) (not e!828687))))

(assert (=> d!364281 (= res!579063 e!828689)))

(declare-fun c!212661 () Bool)

(assert (=> d!364281 (= c!212661 (> (size!10544 (_1!7220 lt!425266)) 0))))

(declare-fun lexTailRecV2!346 (LexerInterface!1920 List!12983 BalanceConc!8426 BalanceConc!8426 BalanceConc!8426 BalanceConc!8428) tuple2!12668)

(assert (=> d!364281 (= lt!425266 (lexTailRecV2!346 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t2!34)) (BalanceConc!8427 Empty!4243) (print!719 thiss!19762 (singletonSeq!803 t2!34)) (BalanceConc!8429 Empty!4244)))))

(assert (=> d!364281 (= (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t2!34))) lt!425266)))

(declare-fun b!1292094 () Bool)

(assert (=> b!1292094 (= e!828689 (= (_2!7220 lt!425266) (print!719 thiss!19762 (singletonSeq!803 t2!34))))))

(declare-fun b!1292095 () Bool)

(declare-fun isEmpty!7672 (BalanceConc!8428) Bool)

(assert (=> b!1292095 (= e!828688 (not (isEmpty!7672 (_1!7220 lt!425266))))))

(declare-fun b!1292096 () Bool)

(assert (=> b!1292096 (= e!828687 (= (list!4821 (_2!7220 lt!425266)) (_2!7222 (lexList!497 thiss!19762 rules!2550 (list!4821 (print!719 thiss!19762 (singletonSeq!803 t2!34)))))))))

(assert (= (and d!364281 c!212661) b!1292093))

(assert (= (and d!364281 (not c!212661)) b!1292094))

(assert (= (and b!1292093 res!579064) b!1292095))

(assert (= (and d!364281 res!579063) b!1292092))

(assert (= (and b!1292092 res!579065) b!1292096))

(declare-fun m!1442893 () Bool)

(assert (=> b!1292095 m!1442893))

(declare-fun m!1442895 () Bool)

(assert (=> b!1292092 m!1442895))

(assert (=> b!1292092 m!1442449))

(declare-fun m!1442897 () Bool)

(assert (=> b!1292092 m!1442897))

(assert (=> b!1292092 m!1442897))

(declare-fun m!1442899 () Bool)

(assert (=> b!1292092 m!1442899))

(declare-fun m!1442901 () Bool)

(assert (=> d!364281 m!1442901))

(assert (=> d!364281 m!1442449))

(assert (=> d!364281 m!1442449))

(declare-fun m!1442903 () Bool)

(assert (=> d!364281 m!1442903))

(declare-fun m!1442905 () Bool)

(assert (=> b!1292093 m!1442905))

(assert (=> b!1292093 m!1442449))

(declare-fun m!1442907 () Bool)

(assert (=> b!1292093 m!1442907))

(declare-fun m!1442909 () Bool)

(assert (=> b!1292096 m!1442909))

(assert (=> b!1292096 m!1442449))

(assert (=> b!1292096 m!1442897))

(assert (=> b!1292096 m!1442897))

(assert (=> b!1292096 m!1442899))

(assert (=> b!1291703 d!364281))

(declare-fun d!364293 () Bool)

(declare-fun lt!425273 () BalanceConc!8426)

(declare-fun printList!541 (LexerInterface!1920 List!12986) List!12982)

(assert (=> d!364293 (= (list!4821 lt!425273) (printList!541 thiss!19762 (list!4822 (singletonSeq!803 t2!34))))))

(declare-fun printTailRec!523 (LexerInterface!1920 BalanceConc!8428 Int BalanceConc!8426) BalanceConc!8426)

(assert (=> d!364293 (= lt!425273 (printTailRec!523 thiss!19762 (singletonSeq!803 t2!34) 0 (BalanceConc!8427 Empty!4243)))))

(assert (=> d!364293 (= (print!719 thiss!19762 (singletonSeq!803 t2!34)) lt!425273)))

(declare-fun bs!328622 () Bool)

(assert (= bs!328622 d!364293))

(declare-fun m!1442927 () Bool)

(assert (=> bs!328622 m!1442927))

(assert (=> bs!328622 m!1442445))

(assert (=> bs!328622 m!1442447))

(assert (=> bs!328622 m!1442447))

(declare-fun m!1442929 () Bool)

(assert (=> bs!328622 m!1442929))

(assert (=> bs!328622 m!1442445))

(declare-fun m!1442931 () Bool)

(assert (=> bs!328622 m!1442931))

(assert (=> b!1291703 d!364293))

(declare-fun d!364307 () Bool)

(declare-fun e!828702 () Bool)

(assert (=> d!364307 e!828702))

(declare-fun res!579072 () Bool)

(assert (=> d!364307 (=> (not res!579072) (not e!828702))))

(declare-fun lt!425277 () BalanceConc!8428)

(assert (=> d!364307 (= res!579072 (= (list!4822 lt!425277) (Cons!12920 t2!34 Nil!12920)))))

(declare-fun singleton!351 (Token!4112) BalanceConc!8428)

(assert (=> d!364307 (= lt!425277 (singleton!351 t2!34))))

(assert (=> d!364307 (= (singletonSeq!803 t2!34) lt!425277)))

(declare-fun b!1292115 () Bool)

(declare-fun isBalanced!1246 (Conc!4244) Bool)

(assert (=> b!1292115 (= e!828702 (isBalanced!1246 (c!212607 lt!425277)))))

(assert (= (and d!364307 res!579072) b!1292115))

(declare-fun m!1442939 () Bool)

(assert (=> d!364307 m!1442939))

(declare-fun m!1442941 () Bool)

(assert (=> d!364307 m!1442941))

(declare-fun m!1442943 () Bool)

(assert (=> b!1292115 m!1442943))

(assert (=> b!1291703 d!364307))

(declare-fun lt!425278 () Bool)

(declare-fun d!364315 () Bool)

(assert (=> d!364315 (= lt!425278 (isEmpty!7669 (list!4821 (_2!7220 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t1!34)))))))))

(assert (=> d!364315 (= lt!425278 (isEmpty!7670 (c!212569 (_2!7220 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t1!34)))))))))

(assert (=> d!364315 (= (isEmpty!7666 (_2!7220 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t1!34))))) lt!425278)))

(declare-fun bs!328625 () Bool)

(assert (= bs!328625 d!364315))

(declare-fun m!1442945 () Bool)

(assert (=> bs!328625 m!1442945))

(assert (=> bs!328625 m!1442945))

(declare-fun m!1442947 () Bool)

(assert (=> bs!328625 m!1442947))

(declare-fun m!1442949 () Bool)

(assert (=> bs!328625 m!1442949))

(assert (=> b!1291723 d!364315))

(declare-fun b!1292116 () Bool)

(declare-fun res!579075 () Bool)

(declare-fun e!828703 () Bool)

(assert (=> b!1292116 (=> (not res!579075) (not e!828703))))

(declare-fun lt!425279 () tuple2!12668)

(assert (=> b!1292116 (= res!579075 (= (list!4822 (_1!7220 lt!425279)) (_1!7222 (lexList!497 thiss!19762 rules!2550 (list!4821 (print!719 thiss!19762 (singletonSeq!803 t1!34)))))))))

(declare-fun b!1292117 () Bool)

(declare-fun e!828705 () Bool)

(declare-fun e!828704 () Bool)

(assert (=> b!1292117 (= e!828705 e!828704)))

(declare-fun res!579074 () Bool)

(assert (=> b!1292117 (= res!579074 (< (size!10542 (_2!7220 lt!425279)) (size!10542 (print!719 thiss!19762 (singletonSeq!803 t1!34)))))))

(assert (=> b!1292117 (=> (not res!579074) (not e!828704))))

(declare-fun d!364317 () Bool)

(assert (=> d!364317 e!828703))

(declare-fun res!579073 () Bool)

(assert (=> d!364317 (=> (not res!579073) (not e!828703))))

(assert (=> d!364317 (= res!579073 e!828705)))

(declare-fun c!212668 () Bool)

(assert (=> d!364317 (= c!212668 (> (size!10544 (_1!7220 lt!425279)) 0))))

(assert (=> d!364317 (= lt!425279 (lexTailRecV2!346 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t1!34)) (BalanceConc!8427 Empty!4243) (print!719 thiss!19762 (singletonSeq!803 t1!34)) (BalanceConc!8429 Empty!4244)))))

(assert (=> d!364317 (= (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t1!34))) lt!425279)))

(declare-fun b!1292118 () Bool)

(assert (=> b!1292118 (= e!828705 (= (_2!7220 lt!425279) (print!719 thiss!19762 (singletonSeq!803 t1!34))))))

(declare-fun b!1292119 () Bool)

(assert (=> b!1292119 (= e!828704 (not (isEmpty!7672 (_1!7220 lt!425279))))))

(declare-fun b!1292120 () Bool)

(assert (=> b!1292120 (= e!828703 (= (list!4821 (_2!7220 lt!425279)) (_2!7222 (lexList!497 thiss!19762 rules!2550 (list!4821 (print!719 thiss!19762 (singletonSeq!803 t1!34)))))))))

(assert (= (and d!364317 c!212668) b!1292117))

(assert (= (and d!364317 (not c!212668)) b!1292118))

(assert (= (and b!1292117 res!579074) b!1292119))

(assert (= (and d!364317 res!579073) b!1292116))

(assert (= (and b!1292116 res!579075) b!1292120))

(declare-fun m!1442955 () Bool)

(assert (=> b!1292119 m!1442955))

(declare-fun m!1442957 () Bool)

(assert (=> b!1292116 m!1442957))

(assert (=> b!1292116 m!1442503))

(declare-fun m!1442959 () Bool)

(assert (=> b!1292116 m!1442959))

(assert (=> b!1292116 m!1442959))

(declare-fun m!1442961 () Bool)

(assert (=> b!1292116 m!1442961))

(declare-fun m!1442963 () Bool)

(assert (=> d!364317 m!1442963))

(assert (=> d!364317 m!1442503))

(assert (=> d!364317 m!1442503))

(declare-fun m!1442965 () Bool)

(assert (=> d!364317 m!1442965))

(declare-fun m!1442967 () Bool)

(assert (=> b!1292117 m!1442967))

(assert (=> b!1292117 m!1442503))

(declare-fun m!1442969 () Bool)

(assert (=> b!1292117 m!1442969))

(declare-fun m!1442971 () Bool)

(assert (=> b!1292120 m!1442971))

(assert (=> b!1292120 m!1442503))

(assert (=> b!1292120 m!1442959))

(assert (=> b!1292120 m!1442959))

(assert (=> b!1292120 m!1442961))

(assert (=> b!1291723 d!364317))

(declare-fun d!364321 () Bool)

(declare-fun lt!425280 () BalanceConc!8426)

(assert (=> d!364321 (= (list!4821 lt!425280) (printList!541 thiss!19762 (list!4822 (singletonSeq!803 t1!34))))))

(assert (=> d!364321 (= lt!425280 (printTailRec!523 thiss!19762 (singletonSeq!803 t1!34) 0 (BalanceConc!8427 Empty!4243)))))

(assert (=> d!364321 (= (print!719 thiss!19762 (singletonSeq!803 t1!34)) lt!425280)))

(declare-fun bs!328626 () Bool)

(assert (= bs!328626 d!364321))

(declare-fun m!1442973 () Bool)

(assert (=> bs!328626 m!1442973))

(assert (=> bs!328626 m!1442499))

(assert (=> bs!328626 m!1442501))

(assert (=> bs!328626 m!1442501))

(declare-fun m!1442975 () Bool)

(assert (=> bs!328626 m!1442975))

(assert (=> bs!328626 m!1442499))

(declare-fun m!1442977 () Bool)

(assert (=> bs!328626 m!1442977))

(assert (=> b!1291723 d!364321))

(declare-fun d!364323 () Bool)

(declare-fun e!828708 () Bool)

(assert (=> d!364323 e!828708))

(declare-fun res!579078 () Bool)

(assert (=> d!364323 (=> (not res!579078) (not e!828708))))

(declare-fun lt!425281 () BalanceConc!8428)

(assert (=> d!364323 (= res!579078 (= (list!4822 lt!425281) (Cons!12920 t1!34 Nil!12920)))))

(assert (=> d!364323 (= lt!425281 (singleton!351 t1!34))))

(assert (=> d!364323 (= (singletonSeq!803 t1!34) lt!425281)))

(declare-fun b!1292123 () Bool)

(assert (=> b!1292123 (= e!828708 (isBalanced!1246 (c!212607 lt!425281)))))

(assert (= (and d!364323 res!579078) b!1292123))

(declare-fun m!1442979 () Bool)

(assert (=> d!364323 m!1442979))

(declare-fun m!1442981 () Bool)

(assert (=> d!364323 m!1442981))

(declare-fun m!1442983 () Bool)

(assert (=> b!1292123 m!1442983))

(assert (=> b!1291723 d!364323))

(declare-fun d!364325 () Bool)

(assert (=> d!364325 (= (isEmpty!7669 lt!425167) ((_ is Nil!12916) lt!425167))))

(assert (=> d!364169 d!364325))

(declare-fun d!364327 () Bool)

(declare-fun res!579079 () Bool)

(declare-fun e!828709 () Bool)

(assert (=> d!364327 (=> res!579079 e!828709)))

(assert (=> d!364327 (= res!579079 (not ((_ is Cons!12917) (t!117206 rules!2550))))))

(assert (=> d!364327 (= (sepAndNonSepRulesDisjointChars!598 rules!2550 (t!117206 rules!2550)) e!828709)))

(declare-fun b!1292124 () Bool)

(declare-fun e!828710 () Bool)

(assert (=> b!1292124 (= e!828709 e!828710)))

(declare-fun res!579080 () Bool)

(assert (=> b!1292124 (=> (not res!579080) (not e!828710))))

(assert (=> b!1292124 (= res!579080 (ruleDisjointCharsFromAllFromOtherType!287 (h!18318 (t!117206 rules!2550)) rules!2550))))

(declare-fun b!1292125 () Bool)

(assert (=> b!1292125 (= e!828710 (sepAndNonSepRulesDisjointChars!598 rules!2550 (t!117206 (t!117206 rules!2550))))))

(assert (= (and d!364327 (not res!579079)) b!1292124))

(assert (= (and b!1292124 res!579080) b!1292125))

(declare-fun m!1442985 () Bool)

(assert (=> b!1292124 m!1442985))

(declare-fun m!1442987 () Bool)

(assert (=> b!1292125 m!1442987))

(assert (=> b!1291772 d!364327))

(declare-fun bs!328627 () Bool)

(declare-fun d!364329 () Bool)

(assert (= bs!328627 (and d!364329 d!364257)))

(declare-fun lambda!50783 () Int)

(assert (=> bs!328627 (= (and (= (toChars!3283 (transformation!2225 (h!18318 rules!2550))) (toChars!3283 (transformation!2225 (rule!3964 t2!34)))) (= (toValue!3424 (transformation!2225 (h!18318 rules!2550))) (toValue!3424 (transformation!2225 (rule!3964 t2!34))))) (= lambda!50783 lambda!50769))))

(declare-fun bs!328628 () Bool)

(assert (= bs!328628 (and d!364329 d!364259)))

(assert (=> bs!328628 (= (and (= (toChars!3283 (transformation!2225 (h!18318 rules!2550))) (toChars!3283 (transformation!2225 (rule!3964 t1!34)))) (= (toValue!3424 (transformation!2225 (h!18318 rules!2550))) (toValue!3424 (transformation!2225 (rule!3964 t1!34))))) (= lambda!50783 lambda!50770))))

(assert (=> d!364329 true))

(assert (=> d!364329 (< (dynLambda!5639 order!7859 (toChars!3283 (transformation!2225 (h!18318 rules!2550)))) (dynLambda!5640 order!7861 lambda!50783))))

(assert (=> d!364329 true))

(assert (=> d!364329 (< (dynLambda!5641 order!7863 (toValue!3424 (transformation!2225 (h!18318 rules!2550)))) (dynLambda!5640 order!7861 lambda!50783))))

(assert (=> d!364329 (= (semiInverseModEq!844 (toChars!3283 (transformation!2225 (h!18318 rules!2550))) (toValue!3424 (transformation!2225 (h!18318 rules!2550)))) (Forall!504 lambda!50783))))

(declare-fun bs!328629 () Bool)

(assert (= bs!328629 d!364329))

(declare-fun m!1442989 () Bool)

(assert (=> bs!328629 m!1442989))

(assert (=> d!364151 d!364329))

(declare-fun d!364331 () Bool)

(assert (=> d!364331 (= (inv!17 (value!73045 t2!34)) (= (charsToBigInt!1 (text!16653 (value!73045 t2!34))) (value!73037 (value!73045 t2!34))))))

(declare-fun bs!328630 () Bool)

(assert (= bs!328630 d!364331))

(declare-fun m!1442991 () Bool)

(assert (=> bs!328630 m!1442991))

(assert (=> b!1291762 d!364331))

(declare-fun d!364333 () Bool)

(declare-fun c!212676 () Bool)

(assert (=> d!364333 (= c!212676 ((_ is Empty!4243) (c!212569 (charsOf!1197 t1!34))))))

(declare-fun e!828715 () List!12982)

(assert (=> d!364333 (= (list!4824 (c!212569 (charsOf!1197 t1!34))) e!828715)))

(declare-fun b!1292135 () Bool)

(declare-fun e!828716 () List!12982)

(assert (=> b!1292135 (= e!828715 e!828716)))

(declare-fun c!212677 () Bool)

(assert (=> b!1292135 (= c!212677 ((_ is Leaf!6552) (c!212569 (charsOf!1197 t1!34))))))

(declare-fun b!1292136 () Bool)

(declare-fun list!4826 (IArray!8491) List!12982)

(assert (=> b!1292136 (= e!828716 (list!4826 (xs!6954 (c!212569 (charsOf!1197 t1!34)))))))

(declare-fun b!1292134 () Bool)

(assert (=> b!1292134 (= e!828715 Nil!12916)))

(declare-fun b!1292137 () Bool)

(assert (=> b!1292137 (= e!828716 (++!3272 (list!4824 (left!11113 (c!212569 (charsOf!1197 t1!34)))) (list!4824 (right!11443 (c!212569 (charsOf!1197 t1!34))))))))

(assert (= (and d!364333 c!212676) b!1292134))

(assert (= (and d!364333 (not c!212676)) b!1292135))

(assert (= (and b!1292135 c!212677) b!1292136))

(assert (= (and b!1292135 (not c!212677)) b!1292137))

(declare-fun m!1442993 () Bool)

(assert (=> b!1292136 m!1442993))

(declare-fun m!1442995 () Bool)

(assert (=> b!1292137 m!1442995))

(declare-fun m!1442997 () Bool)

(assert (=> b!1292137 m!1442997))

(assert (=> b!1292137 m!1442995))

(assert (=> b!1292137 m!1442997))

(declare-fun m!1442999 () Bool)

(assert (=> b!1292137 m!1442999))

(assert (=> d!364181 d!364333))

(declare-fun d!364335 () Bool)

(declare-fun lt!425282 () Int)

(assert (=> d!364335 (>= lt!425282 0)))

(declare-fun e!828717 () Int)

(assert (=> d!364335 (= lt!425282 e!828717)))

(declare-fun c!212678 () Bool)

(assert (=> d!364335 (= c!212678 ((_ is Nil!12916) lt!425216))))

(assert (=> d!364335 (= (size!10543 lt!425216) lt!425282)))

(declare-fun b!1292138 () Bool)

(assert (=> b!1292138 (= e!828717 0)))

(declare-fun b!1292139 () Bool)

(assert (=> b!1292139 (= e!828717 (+ 1 (size!10543 (t!117205 lt!425216))))))

(assert (= (and d!364335 c!212678) b!1292138))

(assert (= (and d!364335 (not c!212678)) b!1292139))

(declare-fun m!1443001 () Bool)

(assert (=> b!1292139 m!1443001))

(assert (=> b!1291813 d!364335))

(declare-fun d!364337 () Bool)

(declare-fun lt!425283 () Int)

(assert (=> d!364337 (>= lt!425283 0)))

(declare-fun e!828718 () Int)

(assert (=> d!364337 (= lt!425283 e!828718)))

(declare-fun c!212679 () Bool)

(assert (=> d!364337 (= c!212679 ((_ is Nil!12916) (list!4821 (charsOf!1197 t1!34))))))

(assert (=> d!364337 (= (size!10543 (list!4821 (charsOf!1197 t1!34))) lt!425283)))

(declare-fun b!1292140 () Bool)

(assert (=> b!1292140 (= e!828718 0)))

(declare-fun b!1292141 () Bool)

(assert (=> b!1292141 (= e!828718 (+ 1 (size!10543 (t!117205 (list!4821 (charsOf!1197 t1!34))))))))

(assert (= (and d!364337 c!212679) b!1292140))

(assert (= (and d!364337 (not c!212679)) b!1292141))

(declare-fun m!1443003 () Bool)

(assert (=> b!1292141 m!1443003))

(assert (=> b!1291813 d!364337))

(declare-fun d!364339 () Bool)

(declare-fun lt!425286 () Int)

(assert (=> d!364339 (>= lt!425286 0)))

(declare-fun e!828719 () Int)

(assert (=> d!364339 (= lt!425286 e!828719)))

(declare-fun c!212680 () Bool)

(assert (=> d!364339 (= c!212680 ((_ is Nil!12916) (Cons!12916 (apply!2823 lt!425166 0) Nil!12916)))))

(assert (=> d!364339 (= (size!10543 (Cons!12916 (apply!2823 lt!425166 0) Nil!12916)) lt!425286)))

(declare-fun b!1292142 () Bool)

(assert (=> b!1292142 (= e!828719 0)))

(declare-fun b!1292143 () Bool)

(assert (=> b!1292143 (= e!828719 (+ 1 (size!10543 (t!117205 (Cons!12916 (apply!2823 lt!425166 0) Nil!12916)))))))

(assert (= (and d!364339 c!212680) b!1292142))

(assert (= (and d!364339 (not c!212680)) b!1292143))

(declare-fun m!1443005 () Bool)

(assert (=> b!1292143 m!1443005))

(assert (=> b!1291813 d!364339))

(declare-fun d!364341 () Bool)

(declare-fun lt!425287 () Int)

(assert (=> d!364341 (>= lt!425287 0)))

(declare-fun e!828722 () Int)

(assert (=> d!364341 (= lt!425287 e!828722)))

(declare-fun c!212681 () Bool)

(assert (=> d!364341 (= c!212681 ((_ is Nil!12916) (t!117205 (pickWitness!2 lambda!50751))))))

(assert (=> d!364341 (= (size!10543 (t!117205 (pickWitness!2 lambda!50751))) lt!425287)))

(declare-fun b!1292150 () Bool)

(assert (=> b!1292150 (= e!828722 0)))

(declare-fun b!1292151 () Bool)

(assert (=> b!1292151 (= e!828722 (+ 1 (size!10543 (t!117205 (t!117205 (pickWitness!2 lambda!50751))))))))

(assert (= (and d!364341 c!212681) b!1292150))

(assert (= (and d!364341 (not c!212681)) b!1292151))

(declare-fun m!1443007 () Bool)

(assert (=> b!1292151 m!1443007))

(assert (=> b!1291661 d!364341))

(declare-fun d!364343 () Bool)

(assert (=> d!364343 (= (isEmpty!7669 (originalCharacters!3087 t1!34)) ((_ is Nil!12916) (originalCharacters!3087 t1!34)))))

(assert (=> d!364163 d!364343))

(declare-fun d!364345 () Bool)

(declare-fun lt!425291 () C!7368)

(declare-fun contains!2157 (List!12982 C!7368) Bool)

(assert (=> d!364345 (contains!2157 (list!4821 lt!425166) lt!425291)))

(declare-fun e!828728 () C!7368)

(assert (=> d!364345 (= lt!425291 e!828728)))

(declare-fun c!212684 () Bool)

(assert (=> d!364345 (= c!212684 (= 0 0))))

(declare-fun e!828729 () Bool)

(assert (=> d!364345 e!828729))

(declare-fun res!579095 () Bool)

(assert (=> d!364345 (=> (not res!579095) (not e!828729))))

(assert (=> d!364345 (= res!579095 (<= 0 0))))

(assert (=> d!364345 (= (apply!2828 (list!4821 lt!425166) 0) lt!425291)))

(declare-fun b!1292164 () Bool)

(assert (=> b!1292164 (= e!828729 (< 0 (size!10543 (list!4821 lt!425166))))))

(declare-fun b!1292165 () Bool)

(assert (=> b!1292165 (= e!828728 (head!2213 (list!4821 lt!425166)))))

(declare-fun b!1292166 () Bool)

(assert (=> b!1292166 (= e!828728 (apply!2828 (tail!1841 (list!4821 lt!425166)) (- 0 1)))))

(assert (= (and d!364345 res!579095) b!1292164))

(assert (= (and d!364345 c!212684) b!1292165))

(assert (= (and d!364345 (not c!212684)) b!1292166))

(assert (=> d!364345 m!1442517))

(declare-fun m!1443017 () Bool)

(assert (=> d!364345 m!1443017))

(assert (=> b!1292164 m!1442517))

(assert (=> b!1292164 m!1442519))

(assert (=> b!1292165 m!1442517))

(declare-fun m!1443021 () Bool)

(assert (=> b!1292165 m!1443021))

(assert (=> b!1292166 m!1442517))

(declare-fun m!1443025 () Bool)

(assert (=> b!1292166 m!1443025))

(assert (=> b!1292166 m!1443025))

(declare-fun m!1443031 () Bool)

(assert (=> b!1292166 m!1443031))

(assert (=> d!364195 d!364345))

(assert (=> d!364195 d!364237))

(declare-fun b!1292181 () Bool)

(declare-fun e!828738 () C!7368)

(declare-fun apply!2830 (IArray!8491 Int) C!7368)

(assert (=> b!1292181 (= e!828738 (apply!2830 (xs!6954 (c!212569 lt!425166)) 0))))

(declare-fun b!1292182 () Bool)

(declare-fun e!828741 () C!7368)

(assert (=> b!1292182 (= e!828738 e!828741)))

(declare-fun lt!425296 () Bool)

(declare-fun appendIndex!126 (List!12982 List!12982 Int) Bool)

(assert (=> b!1292182 (= lt!425296 (appendIndex!126 (list!4824 (left!11113 (c!212569 lt!425166))) (list!4824 (right!11443 (c!212569 lt!425166))) 0))))

(declare-fun c!212693 () Bool)

(assert (=> b!1292182 (= c!212693 (< 0 (size!10546 (left!11113 (c!212569 lt!425166)))))))

(declare-fun b!1292183 () Bool)

(declare-fun call!88700 () C!7368)

(assert (=> b!1292183 (= e!828741 call!88700)))

(declare-fun b!1292184 () Bool)

(declare-fun e!828740 () Bool)

(assert (=> b!1292184 (= e!828740 (< 0 (size!10546 (c!212569 lt!425166))))))

(declare-fun bm!88695 () Bool)

(declare-fun c!212691 () Bool)

(assert (=> bm!88695 (= c!212691 c!212693)))

(declare-fun e!828739 () Int)

(assert (=> bm!88695 (= call!88700 (apply!2829 (ite c!212693 (left!11113 (c!212569 lt!425166)) (right!11443 (c!212569 lt!425166))) e!828739))))

(declare-fun b!1292185 () Bool)

(assert (=> b!1292185 (= e!828741 call!88700)))

(declare-fun b!1292187 () Bool)

(assert (=> b!1292187 (= e!828739 (- 0 (size!10546 (left!11113 (c!212569 lt!425166)))))))

(declare-fun d!364347 () Bool)

(declare-fun lt!425297 () C!7368)

(assert (=> d!364347 (= lt!425297 (apply!2828 (list!4824 (c!212569 lt!425166)) 0))))

(assert (=> d!364347 (= lt!425297 e!828738)))

(declare-fun c!212692 () Bool)

(assert (=> d!364347 (= c!212692 ((_ is Leaf!6552) (c!212569 lt!425166)))))

(assert (=> d!364347 e!828740))

(declare-fun res!579098 () Bool)

(assert (=> d!364347 (=> (not res!579098) (not e!828740))))

(assert (=> d!364347 (= res!579098 (<= 0 0))))

(assert (=> d!364347 (= (apply!2829 (c!212569 lt!425166) 0) lt!425297)))

(declare-fun b!1292186 () Bool)

(assert (=> b!1292186 (= e!828739 0)))

(assert (= (and d!364347 res!579098) b!1292184))

(assert (= (and d!364347 c!212692) b!1292181))

(assert (= (and d!364347 (not c!212692)) b!1292182))

(assert (= (and b!1292182 c!212693) b!1292185))

(assert (= (and b!1292182 (not c!212693)) b!1292183))

(assert (= (or b!1292185 b!1292183) bm!88695))

(assert (= (and bm!88695 c!212691) b!1292186))

(assert (= (and bm!88695 (not c!212691)) b!1292187))

(declare-fun m!1443037 () Bool)

(assert (=> bm!88695 m!1443037))

(declare-fun m!1443039 () Bool)

(assert (=> b!1292182 m!1443039))

(declare-fun m!1443041 () Bool)

(assert (=> b!1292182 m!1443041))

(assert (=> b!1292182 m!1443039))

(assert (=> b!1292182 m!1443041))

(declare-fun m!1443043 () Bool)

(assert (=> b!1292182 m!1443043))

(declare-fun m!1443045 () Bool)

(assert (=> b!1292182 m!1443045))

(assert (=> b!1292187 m!1443045))

(declare-fun m!1443047 () Bool)

(assert (=> b!1292181 m!1443047))

(assert (=> b!1292184 m!1442521))

(assert (=> d!364347 m!1442779))

(assert (=> d!364347 m!1442779))

(declare-fun m!1443049 () Bool)

(assert (=> d!364347 m!1443049))

(assert (=> d!364195 d!364347))

(declare-fun d!364351 () Bool)

(assert (=> d!364351 true))

(declare-fun lambda!50786 () Int)

(declare-fun order!7865 () Int)

(declare-fun dynLambda!5643 (Int Int) Int)

(assert (=> d!364351 (< (dynLambda!5641 order!7863 (toValue!3424 (transformation!2225 (rule!3964 t2!34)))) (dynLambda!5643 order!7865 lambda!50786))))

(declare-fun Forall2!406 (Int) Bool)

(assert (=> d!364351 (= (equivClasses!803 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (toValue!3424 (transformation!2225 (rule!3964 t2!34)))) (Forall2!406 lambda!50786))))

(declare-fun bs!328631 () Bool)

(assert (= bs!328631 d!364351))

(declare-fun m!1443051 () Bool)

(assert (=> bs!328631 m!1443051))

(assert (=> b!1291837 d!364351))

(declare-fun d!364353 () Bool)

(declare-fun c!212696 () Bool)

(assert (=> d!364353 (= c!212696 ((_ is Node!4243) (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34)))))))

(declare-fun e!828748 () Bool)

(assert (=> d!364353 (= (inv!17339 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34)))) e!828748)))

(declare-fun b!1292198 () Bool)

(declare-fun inv!17343 (Conc!4243) Bool)

(assert (=> b!1292198 (= e!828748 (inv!17343 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34)))))))

(declare-fun b!1292199 () Bool)

(declare-fun e!828749 () Bool)

(assert (=> b!1292199 (= e!828748 e!828749)))

(declare-fun res!579103 () Bool)

(assert (=> b!1292199 (= res!579103 (not ((_ is Leaf!6552) (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34))))))))

(assert (=> b!1292199 (=> res!579103 e!828749)))

(declare-fun b!1292200 () Bool)

(declare-fun inv!17344 (Conc!4243) Bool)

(assert (=> b!1292200 (= e!828749 (inv!17344 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34)))))))

(assert (= (and d!364353 c!212696) b!1292198))

(assert (= (and d!364353 (not c!212696)) b!1292199))

(assert (= (and b!1292199 (not res!579103)) b!1292200))

(declare-fun m!1443053 () Bool)

(assert (=> b!1292198 m!1443053))

(declare-fun m!1443055 () Bool)

(assert (=> b!1292200 m!1443055))

(assert (=> b!1291781 d!364353))

(declare-fun bs!328632 () Bool)

(declare-fun d!364355 () Bool)

(assert (= bs!328632 (and d!364355 d!364351)))

(declare-fun lambda!50787 () Int)

(assert (=> bs!328632 (= (= (toValue!3424 (transformation!2225 (rule!3964 t1!34))) (toValue!3424 (transformation!2225 (rule!3964 t2!34)))) (= lambda!50787 lambda!50786))))

(assert (=> d!364355 true))

(assert (=> d!364355 (< (dynLambda!5641 order!7863 (toValue!3424 (transformation!2225 (rule!3964 t1!34)))) (dynLambda!5643 order!7865 lambda!50787))))

(assert (=> d!364355 (= (equivClasses!803 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (toValue!3424 (transformation!2225 (rule!3964 t1!34)))) (Forall2!406 lambda!50787))))

(declare-fun bs!328633 () Bool)

(assert (= bs!328633 d!364355))

(declare-fun m!1443057 () Bool)

(assert (=> bs!328633 m!1443057))

(assert (=> b!1291832 d!364355))

(declare-fun d!364357 () Bool)

(declare-fun lt!425300 () Token!4112)

(declare-fun apply!2831 (List!12986 Int) Token!4112)

(assert (=> d!364357 (= lt!425300 (apply!2831 (list!4822 (_1!7220 lt!425190)) 0))))

(declare-fun apply!2832 (Conc!4244 Int) Token!4112)

(assert (=> d!364357 (= lt!425300 (apply!2832 (c!212607 (_1!7220 lt!425190)) 0))))

(declare-fun e!828752 () Bool)

(assert (=> d!364357 e!828752))

(declare-fun res!579106 () Bool)

(assert (=> d!364357 (=> (not res!579106) (not e!828752))))

(assert (=> d!364357 (= res!579106 (<= 0 0))))

(assert (=> d!364357 (= (apply!2824 (_1!7220 lt!425190) 0) lt!425300)))

(declare-fun b!1292203 () Bool)

(assert (=> b!1292203 (= e!828752 (< 0 (size!10544 (_1!7220 lt!425190))))))

(assert (= (and d!364357 res!579106) b!1292203))

(declare-fun m!1443059 () Bool)

(assert (=> d!364357 m!1443059))

(assert (=> d!364357 m!1443059))

(declare-fun m!1443061 () Bool)

(assert (=> d!364357 m!1443061))

(declare-fun m!1443063 () Bool)

(assert (=> d!364357 m!1443063))

(assert (=> b!1292203 m!1442451))

(assert (=> b!1291701 d!364357))

(declare-fun d!364359 () Bool)

(declare-fun lt!425301 () Token!4112)

(assert (=> d!364359 (= lt!425301 (apply!2831 (list!4822 (_1!7220 lt!425198)) 0))))

(assert (=> d!364359 (= lt!425301 (apply!2832 (c!212607 (_1!7220 lt!425198)) 0))))

(declare-fun e!828753 () Bool)

(assert (=> d!364359 e!828753))

(declare-fun res!579107 () Bool)

(assert (=> d!364359 (=> (not res!579107) (not e!828753))))

(assert (=> d!364359 (= res!579107 (<= 0 0))))

(assert (=> d!364359 (= (apply!2824 (_1!7220 lt!425198) 0) lt!425301)))

(declare-fun b!1292204 () Bool)

(assert (=> b!1292204 (= e!828753 (< 0 (size!10544 (_1!7220 lt!425198))))))

(assert (= (and d!364359 res!579107) b!1292204))

(declare-fun m!1443065 () Bool)

(assert (=> d!364359 m!1443065))

(assert (=> d!364359 m!1443065))

(declare-fun m!1443067 () Bool)

(assert (=> d!364359 m!1443067))

(declare-fun m!1443069 () Bool)

(assert (=> d!364359 m!1443069))

(assert (=> b!1292204 m!1442505))

(assert (=> b!1291721 d!364359))

(declare-fun d!364361 () Bool)

(assert (=> d!364361 (= (list!4821 lt!425220) (list!4824 (c!212569 lt!425220)))))

(declare-fun bs!328634 () Bool)

(assert (= bs!328634 d!364361))

(declare-fun m!1443071 () Bool)

(assert (=> bs!328634 m!1443071))

(assert (=> d!364193 d!364361))

(declare-fun d!364363 () Bool)

(assert (=> d!364363 (= (list!4821 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34))) (list!4824 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34)))))))

(declare-fun bs!328635 () Bool)

(assert (= bs!328635 d!364363))

(declare-fun m!1443073 () Bool)

(assert (=> bs!328635 m!1443073))

(assert (=> b!1291782 d!364363))

(declare-fun d!364365 () Bool)

(declare-fun c!212697 () Bool)

(assert (=> d!364365 (= c!212697 (isEmpty!7669 (tail!1841 lt!425167)))))

(declare-fun e!828754 () Bool)

(assert (=> d!364365 (= (prefixMatch!52 (derivativeStep!874 lt!425168 (head!2213 lt!425167)) (tail!1841 lt!425167)) e!828754)))

(declare-fun b!1292205 () Bool)

(assert (=> b!1292205 (= e!828754 (not (lostCause!251 (derivativeStep!874 lt!425168 (head!2213 lt!425167)))))))

(declare-fun b!1292206 () Bool)

(assert (=> b!1292206 (= e!828754 (prefixMatch!52 (derivativeStep!874 (derivativeStep!874 lt!425168 (head!2213 lt!425167)) (head!2213 (tail!1841 lt!425167))) (tail!1841 (tail!1841 lt!425167))))))

(assert (= (and d!364365 c!212697) b!1292205))

(assert (= (and d!364365 (not c!212697)) b!1292206))

(assert (=> d!364365 m!1442647))

(declare-fun m!1443075 () Bool)

(assert (=> d!364365 m!1443075))

(assert (=> b!1292205 m!1442645))

(declare-fun m!1443077 () Bool)

(assert (=> b!1292205 m!1443077))

(assert (=> b!1292206 m!1442647))

(declare-fun m!1443079 () Bool)

(assert (=> b!1292206 m!1443079))

(assert (=> b!1292206 m!1442645))

(assert (=> b!1292206 m!1443079))

(declare-fun m!1443081 () Bool)

(assert (=> b!1292206 m!1443081))

(assert (=> b!1292206 m!1442647))

(declare-fun m!1443083 () Bool)

(assert (=> b!1292206 m!1443083))

(assert (=> b!1292206 m!1443081))

(assert (=> b!1292206 m!1443083))

(declare-fun m!1443085 () Bool)

(assert (=> b!1292206 m!1443085))

(assert (=> b!1291799 d!364365))

(declare-fun b!1292236 () Bool)

(declare-fun c!212710 () Bool)

(assert (=> b!1292236 (= c!212710 ((_ is Union!3539) lt!425168))))

(declare-fun e!828772 () Regex!3539)

(declare-fun e!828773 () Regex!3539)

(assert (=> b!1292236 (= e!828772 e!828773)))

(declare-fun b!1292237 () Bool)

(declare-fun e!828776 () Regex!3539)

(assert (=> b!1292237 (= e!828776 e!828772)))

(declare-fun c!212713 () Bool)

(assert (=> b!1292237 (= c!212713 ((_ is ElementMatch!3539) lt!425168))))

(declare-fun d!364367 () Bool)

(declare-fun lt!425341 () Regex!3539)

(assert (=> d!364367 (validRegex!1524 lt!425341)))

(assert (=> d!364367 (= lt!425341 e!828776)))

(declare-fun c!212711 () Bool)

(assert (=> d!364367 (= c!212711 (or ((_ is EmptyExpr!3539) lt!425168) ((_ is EmptyLang!3539) lt!425168)))))

(assert (=> d!364367 (validRegex!1524 lt!425168)))

(assert (=> d!364367 (= (derivativeStep!874 lt!425168 (head!2213 lt!425167)) lt!425341)))

(declare-fun call!88711 () Regex!3539)

(declare-fun e!828775 () Regex!3539)

(declare-fun call!88709 () Regex!3539)

(declare-fun b!1292238 () Bool)

(assert (=> b!1292238 (= e!828775 (Union!3539 (Concat!5855 call!88709 (regTwo!7590 lt!425168)) call!88711))))

(declare-fun bm!88704 () Bool)

(declare-fun call!88710 () Regex!3539)

(declare-fun c!212712 () Bool)

(assert (=> bm!88704 (= call!88710 (derivativeStep!874 (ite c!212710 (regOne!7591 lt!425168) (ite c!212712 (regTwo!7590 lt!425168) (regOne!7590 lt!425168))) (head!2213 lt!425167)))))

(declare-fun bm!88705 () Bool)

(declare-fun call!88712 () Regex!3539)

(declare-fun c!212714 () Bool)

(assert (=> bm!88705 (= call!88712 (derivativeStep!874 (ite c!212710 (regTwo!7591 lt!425168) (ite c!212714 (reg!3868 lt!425168) (regOne!7590 lt!425168))) (head!2213 lt!425167)))))

(declare-fun bm!88706 () Bool)

(assert (=> bm!88706 (= call!88709 call!88712)))

(declare-fun b!1292239 () Bool)

(declare-fun e!828774 () Regex!3539)

(assert (=> b!1292239 (= e!828773 e!828774)))

(assert (=> b!1292239 (= c!212714 ((_ is Star!3539) lt!425168))))

(declare-fun b!1292240 () Bool)

(assert (=> b!1292240 (= e!828774 (Concat!5855 call!88709 lt!425168))))

(declare-fun b!1292241 () Bool)

(assert (=> b!1292241 (= c!212712 (nullable!1126 (regOne!7590 lt!425168)))))

(assert (=> b!1292241 (= e!828774 e!828775)))

(declare-fun b!1292242 () Bool)

(assert (=> b!1292242 (= e!828772 (ite (= (head!2213 lt!425167) (c!212570 lt!425168)) EmptyExpr!3539 EmptyLang!3539))))

(declare-fun bm!88707 () Bool)

(assert (=> bm!88707 (= call!88711 call!88710)))

(declare-fun b!1292243 () Bool)

(assert (=> b!1292243 (= e!828773 (Union!3539 call!88710 call!88712))))

(declare-fun b!1292244 () Bool)

(assert (=> b!1292244 (= e!828776 EmptyLang!3539)))

(declare-fun b!1292245 () Bool)

(assert (=> b!1292245 (= e!828775 (Union!3539 (Concat!5855 call!88711 (regTwo!7590 lt!425168)) EmptyLang!3539))))

(assert (= (and d!364367 c!212711) b!1292244))

(assert (= (and d!364367 (not c!212711)) b!1292237))

(assert (= (and b!1292237 c!212713) b!1292242))

(assert (= (and b!1292237 (not c!212713)) b!1292236))

(assert (= (and b!1292236 c!212710) b!1292243))

(assert (= (and b!1292236 (not c!212710)) b!1292239))

(assert (= (and b!1292239 c!212714) b!1292240))

(assert (= (and b!1292239 (not c!212714)) b!1292241))

(assert (= (and b!1292241 c!212712) b!1292238))

(assert (= (and b!1292241 (not c!212712)) b!1292245))

(assert (= (or b!1292238 b!1292245) bm!88707))

(assert (= (or b!1292240 b!1292238) bm!88706))

(assert (= (or b!1292243 bm!88707) bm!88704))

(assert (= (or b!1292243 bm!88706) bm!88705))

(declare-fun m!1443141 () Bool)

(assert (=> d!364367 m!1443141))

(assert (=> d!364367 m!1442437))

(assert (=> bm!88704 m!1442643))

(declare-fun m!1443143 () Bool)

(assert (=> bm!88704 m!1443143))

(assert (=> bm!88705 m!1442643))

(declare-fun m!1443145 () Bool)

(assert (=> bm!88705 m!1443145))

(declare-fun m!1443147 () Bool)

(assert (=> b!1292241 m!1443147))

(assert (=> b!1291799 d!364367))

(declare-fun d!364385 () Bool)

(assert (=> d!364385 (= (head!2213 lt!425167) (h!18317 lt!425167))))

(assert (=> b!1291799 d!364385))

(declare-fun d!364387 () Bool)

(assert (=> d!364387 (= (tail!1841 lt!425167) (t!117205 lt!425167))))

(assert (=> b!1291799 d!364387))

(assert (=> d!364135 d!364317))

(assert (=> d!364135 d!364321))

(declare-fun d!364389 () Bool)

(declare-fun lt!425344 () Int)

(declare-fun size!10550 (List!12986) Int)

(assert (=> d!364389 (= lt!425344 (size!10550 (list!4822 (_1!7220 lt!425198))))))

(declare-fun size!10551 (Conc!4244) Int)

(assert (=> d!364389 (= lt!425344 (size!10551 (c!212607 (_1!7220 lt!425198))))))

(assert (=> d!364389 (= (size!10544 (_1!7220 lt!425198)) lt!425344)))

(declare-fun bs!328639 () Bool)

(assert (= bs!328639 d!364389))

(assert (=> bs!328639 m!1443065))

(assert (=> bs!328639 m!1443065))

(declare-fun m!1443155 () Bool)

(assert (=> bs!328639 m!1443155))

(declare-fun m!1443157 () Bool)

(assert (=> bs!328639 m!1443157))

(assert (=> d!364135 d!364389))

(assert (=> d!364135 d!364323))

(declare-fun d!364395 () Bool)

(declare-fun list!4827 (Conc!4244) List!12986)

(assert (=> d!364395 (= (list!4822 (_1!7220 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t1!34))))) (list!4827 (c!212607 (_1!7220 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t1!34)))))))))

(declare-fun bs!328640 () Bool)

(assert (= bs!328640 d!364395))

(declare-fun m!1443159 () Bool)

(assert (=> bs!328640 m!1443159))

(assert (=> d!364135 d!364395))

(declare-fun d!364397 () Bool)

(assert (=> d!364397 (= (list!4822 (singletonSeq!803 t1!34)) (list!4827 (c!212607 (singletonSeq!803 t1!34))))))

(declare-fun bs!328641 () Bool)

(assert (= bs!328641 d!364397))

(declare-fun m!1443165 () Bool)

(assert (=> bs!328641 m!1443165))

(assert (=> d!364135 d!364397))

(assert (=> d!364135 d!364133))

(declare-fun d!364401 () Bool)

(assert (=> d!364401 true))

(declare-fun lt!425349 () Bool)

(assert (=> d!364401 (= lt!425349 (rulesValidInductive!703 thiss!19762 rules!2550))))

(declare-fun lambda!50795 () Int)

(declare-fun forall!3250 (List!12983 Int) Bool)

(assert (=> d!364401 (= lt!425349 (forall!3250 rules!2550 lambda!50795))))

(assert (=> d!364401 (= (rulesValid!813 thiss!19762 rules!2550) lt!425349)))

(declare-fun bs!328643 () Bool)

(assert (= bs!328643 d!364401))

(assert (=> bs!328643 m!1442831))

(declare-fun m!1443177 () Bool)

(assert (=> bs!328643 m!1443177))

(assert (=> d!364105 d!364401))

(declare-fun d!364409 () Bool)

(assert (=> d!364409 (= (list!4821 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34))) (list!4824 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34)))))))

(declare-fun bs!328644 () Bool)

(assert (= bs!328644 d!364409))

(declare-fun m!1443179 () Bool)

(assert (=> bs!328644 m!1443179))

(assert (=> b!1291779 d!364409))

(declare-fun d!364411 () Bool)

(assert (=> d!364411 (= (isEmpty!7669 (originalCharacters!3087 t2!34)) ((_ is Nil!12916) (originalCharacters!3087 t2!34)))))

(assert (=> d!364167 d!364411))

(declare-fun d!364413 () Bool)

(declare-fun c!212720 () Bool)

(assert (=> d!364413 (= c!212720 ((_ is Node!4243) (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34)))))))

(declare-fun e!828786 () Bool)

(assert (=> d!364413 (= (inv!17339 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34)))) e!828786)))

(declare-fun b!1292264 () Bool)

(assert (=> b!1292264 (= e!828786 (inv!17343 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34)))))))

(declare-fun b!1292265 () Bool)

(declare-fun e!828787 () Bool)

(assert (=> b!1292265 (= e!828786 e!828787)))

(declare-fun res!579117 () Bool)

(assert (=> b!1292265 (= res!579117 (not ((_ is Leaf!6552) (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34))))))))

(assert (=> b!1292265 (=> res!579117 e!828787)))

(declare-fun b!1292266 () Bool)

(assert (=> b!1292266 (= e!828787 (inv!17344 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34)))))))

(assert (= (and d!364413 c!212720) b!1292264))

(assert (= (and d!364413 (not c!212720)) b!1292265))

(assert (= (and b!1292265 (not res!579117)) b!1292266))

(declare-fun m!1443181 () Bool)

(assert (=> b!1292264 m!1443181))

(declare-fun m!1443183 () Bool)

(assert (=> b!1292266 m!1443183))

(assert (=> b!1291728 d!364413))

(declare-fun bs!328646 () Bool)

(declare-fun d!364415 () Bool)

(assert (= bs!328646 (and d!364415 d!364351)))

(declare-fun lambda!50797 () Int)

(assert (=> bs!328646 (= (= (toValue!3424 (transformation!2225 (h!18318 rules!2550))) (toValue!3424 (transformation!2225 (rule!3964 t2!34)))) (= lambda!50797 lambda!50786))))

(declare-fun bs!328647 () Bool)

(assert (= bs!328647 (and d!364415 d!364355)))

(assert (=> bs!328647 (= (= (toValue!3424 (transformation!2225 (h!18318 rules!2550))) (toValue!3424 (transformation!2225 (rule!3964 t1!34)))) (= lambda!50797 lambda!50787))))

(assert (=> d!364415 true))

(assert (=> d!364415 (< (dynLambda!5641 order!7863 (toValue!3424 (transformation!2225 (h!18318 rules!2550)))) (dynLambda!5643 order!7865 lambda!50797))))

(assert (=> d!364415 (= (equivClasses!803 (toChars!3283 (transformation!2225 (h!18318 rules!2550))) (toValue!3424 (transformation!2225 (h!18318 rules!2550)))) (Forall2!406 lambda!50797))))

(declare-fun bs!328648 () Bool)

(assert (= bs!328648 d!364415))

(declare-fun m!1443189 () Bool)

(assert (=> bs!328648 m!1443189))

(assert (=> b!1291761 d!364415))

(declare-fun d!364419 () Bool)

(assert (=> d!364419 (= (list!4822 (_1!7220 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t2!34))))) (list!4827 (c!212607 (_1!7220 (lex!782 thiss!19762 rules!2550 (print!719 thiss!19762 (singletonSeq!803 t2!34)))))))))

(declare-fun bs!328649 () Bool)

(assert (= bs!328649 d!364419))

(declare-fun m!1443191 () Bool)

(assert (=> bs!328649 m!1443191))

(assert (=> d!364119 d!364419))

(declare-fun d!364421 () Bool)

(declare-fun lt!425351 () Int)

(assert (=> d!364421 (= lt!425351 (size!10550 (list!4822 (_1!7220 lt!425190))))))

(assert (=> d!364421 (= lt!425351 (size!10551 (c!212607 (_1!7220 lt!425190))))))

(assert (=> d!364421 (= (size!10544 (_1!7220 lt!425190)) lt!425351)))

(declare-fun bs!328650 () Bool)

(assert (= bs!328650 d!364421))

(assert (=> bs!328650 m!1443059))

(assert (=> bs!328650 m!1443059))

(declare-fun m!1443193 () Bool)

(assert (=> bs!328650 m!1443193))

(declare-fun m!1443195 () Bool)

(assert (=> bs!328650 m!1443195))

(assert (=> d!364119 d!364421))

(assert (=> d!364119 d!364293))

(assert (=> d!364119 d!364307))

(assert (=> d!364119 d!364133))

(assert (=> d!364119 d!364281))

(declare-fun d!364423 () Bool)

(assert (=> d!364423 (= (list!4822 (singletonSeq!803 t2!34)) (list!4827 (c!212607 (singletonSeq!803 t2!34))))))

(declare-fun bs!328651 () Bool)

(assert (= bs!328651 d!364423))

(declare-fun m!1443197 () Bool)

(assert (=> bs!328651 m!1443197))

(assert (=> d!364119 d!364423))

(declare-fun d!364425 () Bool)

(declare-fun lt!425352 () Int)

(assert (=> d!364425 (>= lt!425352 0)))

(declare-fun e!828788 () Int)

(assert (=> d!364425 (= lt!425352 e!828788)))

(declare-fun c!212721 () Bool)

(assert (=> d!364425 (= c!212721 ((_ is Nil!12916) (t!117205 lt!425167)))))

(assert (=> d!364425 (= (size!10543 (t!117205 lt!425167)) lt!425352)))

(declare-fun b!1292269 () Bool)

(assert (=> b!1292269 (= e!828788 0)))

(declare-fun b!1292270 () Bool)

(assert (=> b!1292270 (= e!828788 (+ 1 (size!10543 (t!117205 (t!117205 lt!425167)))))))

(assert (= (and d!364425 c!212721) b!1292269))

(assert (= (and d!364425 (not c!212721)) b!1292270))

(declare-fun m!1443199 () Bool)

(assert (=> b!1292270 m!1443199))

(assert (=> b!1291663 d!364425))

(declare-fun b!1292345 () Bool)

(declare-fun e!828831 () Bool)

(declare-fun e!828828 () Bool)

(assert (=> b!1292345 (= e!828831 e!828828)))

(declare-fun res!579162 () Bool)

(assert (=> b!1292345 (=> (not res!579162) (not e!828828))))

(declare-fun lt!425359 () Bool)

(assert (=> b!1292345 (= res!579162 (not lt!425359))))

(declare-fun b!1292346 () Bool)

(declare-fun e!828830 () Bool)

(assert (=> b!1292346 (= e!828830 (matchR!1547 (derivativeStep!874 lt!425168 (head!2213 lt!425174)) (tail!1841 lt!425174)))))

(declare-fun b!1292347 () Bool)

(declare-fun res!579167 () Bool)

(declare-fun e!828832 () Bool)

(assert (=> b!1292347 (=> (not res!579167) (not e!828832))))

(declare-fun call!88718 () Bool)

(assert (=> b!1292347 (= res!579167 (not call!88718))))

(declare-fun b!1292348 () Bool)

(declare-fun e!828829 () Bool)

(assert (=> b!1292348 (= e!828829 (not lt!425359))))

(declare-fun b!1292349 () Bool)

(declare-fun res!579166 () Bool)

(assert (=> b!1292349 (=> res!579166 e!828831)))

(assert (=> b!1292349 (= res!579166 e!828832)))

(declare-fun res!579165 () Bool)

(assert (=> b!1292349 (=> (not res!579165) (not e!828832))))

(assert (=> b!1292349 (= res!579165 lt!425359)))

(declare-fun bm!88713 () Bool)

(assert (=> bm!88713 (= call!88718 (isEmpty!7669 lt!425174))))

(declare-fun b!1292350 () Bool)

(declare-fun res!579161 () Bool)

(declare-fun e!828827 () Bool)

(assert (=> b!1292350 (=> res!579161 e!828827)))

(assert (=> b!1292350 (= res!579161 (not (isEmpty!7669 (tail!1841 lt!425174))))))

(declare-fun b!1292351 () Bool)

(assert (=> b!1292351 (= e!828832 (= (head!2213 lt!425174) (c!212570 lt!425168)))))

(declare-fun d!364427 () Bool)

(declare-fun e!828826 () Bool)

(assert (=> d!364427 e!828826))

(declare-fun c!212740 () Bool)

(assert (=> d!364427 (= c!212740 ((_ is EmptyExpr!3539) lt!425168))))

(assert (=> d!364427 (= lt!425359 e!828830)))

(declare-fun c!212739 () Bool)

(assert (=> d!364427 (= c!212739 (isEmpty!7669 lt!425174))))

(assert (=> d!364427 (validRegex!1524 lt!425168)))

(assert (=> d!364427 (= (matchR!1547 lt!425168 lt!425174) lt!425359)))

(declare-fun b!1292352 () Bool)

(assert (=> b!1292352 (= e!828827 (not (= (head!2213 lt!425174) (c!212570 lt!425168))))))

(declare-fun b!1292353 () Bool)

(assert (=> b!1292353 (= e!828826 e!828829)))

(declare-fun c!212738 () Bool)

(assert (=> b!1292353 (= c!212738 ((_ is EmptyLang!3539) lt!425168))))

(declare-fun b!1292354 () Bool)

(assert (=> b!1292354 (= e!828830 (nullable!1126 lt!425168))))

(declare-fun b!1292355 () Bool)

(declare-fun res!579164 () Bool)

(assert (=> b!1292355 (=> res!579164 e!828831)))

(assert (=> b!1292355 (= res!579164 (not ((_ is ElementMatch!3539) lt!425168)))))

(assert (=> b!1292355 (= e!828829 e!828831)))

(declare-fun b!1292356 () Bool)

(assert (=> b!1292356 (= e!828826 (= lt!425359 call!88718))))

(declare-fun b!1292357 () Bool)

(declare-fun res!579160 () Bool)

(assert (=> b!1292357 (=> (not res!579160) (not e!828832))))

(assert (=> b!1292357 (= res!579160 (isEmpty!7669 (tail!1841 lt!425174)))))

(declare-fun b!1292358 () Bool)

(assert (=> b!1292358 (= e!828828 e!828827)))

(declare-fun res!579163 () Bool)

(assert (=> b!1292358 (=> res!579163 e!828827)))

(assert (=> b!1292358 (= res!579163 call!88718)))

(assert (= (and d!364427 c!212739) b!1292354))

(assert (= (and d!364427 (not c!212739)) b!1292346))

(assert (= (and d!364427 c!212740) b!1292356))

(assert (= (and d!364427 (not c!212740)) b!1292353))

(assert (= (and b!1292353 c!212738) b!1292348))

(assert (= (and b!1292353 (not c!212738)) b!1292355))

(assert (= (and b!1292355 (not res!579164)) b!1292349))

(assert (= (and b!1292349 res!579165) b!1292347))

(assert (= (and b!1292347 res!579167) b!1292357))

(assert (= (and b!1292357 res!579160) b!1292351))

(assert (= (and b!1292349 (not res!579166)) b!1292345))

(assert (= (and b!1292345 res!579162) b!1292358))

(assert (= (and b!1292358 (not res!579163)) b!1292350))

(assert (= (and b!1292350 (not res!579161)) b!1292352))

(assert (= (or b!1292356 b!1292347 b!1292358) bm!88713))

(declare-fun m!1443223 () Bool)

(assert (=> d!364427 m!1443223))

(assert (=> d!364427 m!1442437))

(assert (=> b!1292346 m!1442801))

(assert (=> b!1292346 m!1442801))

(declare-fun m!1443225 () Bool)

(assert (=> b!1292346 m!1443225))

(assert (=> b!1292346 m!1442803))

(assert (=> b!1292346 m!1443225))

(assert (=> b!1292346 m!1442803))

(declare-fun m!1443227 () Bool)

(assert (=> b!1292346 m!1443227))

(declare-fun m!1443229 () Bool)

(assert (=> b!1292354 m!1443229))

(assert (=> bm!88713 m!1443223))

(assert (=> b!1292350 m!1442803))

(assert (=> b!1292350 m!1442803))

(declare-fun m!1443231 () Bool)

(assert (=> b!1292350 m!1443231))

(assert (=> b!1292352 m!1442801))

(assert (=> b!1292357 m!1442803))

(assert (=> b!1292357 m!1442803))

(assert (=> b!1292357 m!1443231))

(assert (=> b!1292351 m!1442801))

(assert (=> bs!328592 d!364427))

(declare-fun d!364433 () Bool)

(declare-fun lt!425360 () Bool)

(assert (=> d!364433 (= lt!425360 (isEmpty!7669 (list!4821 (_2!7220 lt!425190))))))

(assert (=> d!364433 (= lt!425360 (isEmpty!7670 (c!212569 (_2!7220 lt!425190))))))

(assert (=> d!364433 (= (isEmpty!7666 (_2!7220 lt!425190)) lt!425360)))

(declare-fun bs!328652 () Bool)

(assert (= bs!328652 d!364433))

(declare-fun m!1443233 () Bool)

(assert (=> bs!328652 m!1443233))

(assert (=> bs!328652 m!1443233))

(declare-fun m!1443235 () Bool)

(assert (=> bs!328652 m!1443235))

(declare-fun m!1443237 () Bool)

(assert (=> bs!328652 m!1443237))

(assert (=> b!1291702 d!364433))

(declare-fun b!1292373 () Bool)

(declare-fun e!828840 () Bool)

(declare-fun e!828842 () Bool)

(assert (=> b!1292373 (= e!828840 e!828842)))

(declare-fun res!579173 () Bool)

(declare-fun rulesUseDisjointChars!147 (Rule!4250 Rule!4250) Bool)

(assert (=> b!1292373 (= res!579173 (rulesUseDisjointChars!147 (h!18318 rules!2550) (h!18318 rules!2550)))))

(assert (=> b!1292373 (=> (not res!579173) (not e!828842))))

(declare-fun bm!88716 () Bool)

(declare-fun call!88721 () Bool)

(assert (=> bm!88716 (= call!88721 (ruleDisjointCharsFromAllFromOtherType!287 (h!18318 rules!2550) (t!117206 rules!2550)))))

(declare-fun b!1292375 () Bool)

(declare-fun e!828841 () Bool)

(assert (=> b!1292375 (= e!828841 call!88721)))

(declare-fun b!1292376 () Bool)

(assert (=> b!1292376 (= e!828842 call!88721)))

(declare-fun b!1292374 () Bool)

(assert (=> b!1292374 (= e!828840 e!828841)))

(declare-fun res!579172 () Bool)

(assert (=> b!1292374 (= res!579172 (not ((_ is Cons!12917) rules!2550)))))

(assert (=> b!1292374 (=> res!579172 e!828841)))

(declare-fun d!364435 () Bool)

(declare-fun c!212744 () Bool)

(assert (=> d!364435 (= c!212744 (and ((_ is Cons!12917) rules!2550) (not (= (isSeparator!2225 (h!18318 rules!2550)) (isSeparator!2225 (h!18318 rules!2550))))))))

(assert (=> d!364435 (= (ruleDisjointCharsFromAllFromOtherType!287 (h!18318 rules!2550) rules!2550) e!828840)))

(assert (= (and d!364435 c!212744) b!1292373))

(assert (= (and d!364435 (not c!212744)) b!1292374))

(assert (= (and b!1292373 res!579173) b!1292376))

(assert (= (and b!1292374 (not res!579172)) b!1292375))

(assert (= (or b!1292376 b!1292375) bm!88716))

(declare-fun m!1443247 () Bool)

(assert (=> b!1292373 m!1443247))

(declare-fun m!1443249 () Bool)

(assert (=> bm!88716 m!1443249))

(assert (=> b!1291771 d!364435))

(declare-fun b!1292387 () Bool)

(declare-fun res!579185 () Bool)

(declare-fun e!828845 () Bool)

(assert (=> b!1292387 (=> (not res!579185) (not e!828845))))

(declare-fun height!607 (Conc!4243) Int)

(declare-fun ++!3276 (Conc!4243 Conc!4243) Conc!4243)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1292387 (= res!579185 (>= (height!607 (++!3276 (c!212569 (charsOf!1197 t1!34)) (c!212569 (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0))))) (max!0 (height!607 (c!212569 (charsOf!1197 t1!34))) (height!607 (c!212569 (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0)))))))))

(declare-fun d!364445 () Bool)

(assert (=> d!364445 e!828845))

(declare-fun res!579182 () Bool)

(assert (=> d!364445 (=> (not res!579182) (not e!828845))))

(declare-fun appendAssocInst!247 (Conc!4243 Conc!4243) Bool)

(assert (=> d!364445 (= res!579182 (appendAssocInst!247 (c!212569 (charsOf!1197 t1!34)) (c!212569 (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0)))))))

(declare-fun lt!425368 () BalanceConc!8426)

(assert (=> d!364445 (= lt!425368 (BalanceConc!8427 (++!3276 (c!212569 (charsOf!1197 t1!34)) (c!212569 (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0))))))))

(assert (=> d!364445 (= (++!3273 (charsOf!1197 t1!34) (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0))) lt!425368)))

(declare-fun b!1292388 () Bool)

(assert (=> b!1292388 (= e!828845 (= (list!4821 lt!425368) (++!3272 (list!4821 (charsOf!1197 t1!34)) (list!4821 (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0))))))))

(declare-fun b!1292385 () Bool)

(declare-fun res!579183 () Bool)

(assert (=> b!1292385 (=> (not res!579183) (not e!828845))))

(assert (=> b!1292385 (= res!579183 (isBalanced!1245 (++!3276 (c!212569 (charsOf!1197 t1!34)) (c!212569 (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0))))))))

(declare-fun b!1292386 () Bool)

(declare-fun res!579184 () Bool)

(assert (=> b!1292386 (=> (not res!579184) (not e!828845))))

(assert (=> b!1292386 (= res!579184 (<= (height!607 (++!3276 (c!212569 (charsOf!1197 t1!34)) (c!212569 (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0))))) (+ (max!0 (height!607 (c!212569 (charsOf!1197 t1!34))) (height!607 (c!212569 (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0))))) 1)))))

(assert (= (and d!364445 res!579182) b!1292385))

(assert (= (and b!1292385 res!579183) b!1292386))

(assert (= (and b!1292386 res!579184) b!1292387))

(assert (= (and b!1292387 res!579185) b!1292388))

(declare-fun m!1443257 () Bool)

(assert (=> b!1292387 m!1443257))

(declare-fun m!1443259 () Bool)

(assert (=> b!1292387 m!1443259))

(assert (=> b!1292387 m!1443257))

(declare-fun m!1443261 () Bool)

(assert (=> b!1292387 m!1443261))

(declare-fun m!1443263 () Bool)

(assert (=> b!1292387 m!1443263))

(assert (=> b!1292387 m!1443263))

(assert (=> b!1292387 m!1443261))

(declare-fun m!1443265 () Bool)

(assert (=> b!1292387 m!1443265))

(declare-fun m!1443267 () Bool)

(assert (=> d!364445 m!1443267))

(assert (=> d!364445 m!1443257))

(assert (=> b!1292385 m!1443257))

(assert (=> b!1292385 m!1443257))

(declare-fun m!1443269 () Bool)

(assert (=> b!1292385 m!1443269))

(declare-fun m!1443271 () Bool)

(assert (=> b!1292388 m!1443271))

(assert (=> b!1292388 m!1442371))

(assert (=> b!1292388 m!1442373))

(assert (=> b!1292388 m!1442493))

(declare-fun m!1443273 () Bool)

(assert (=> b!1292388 m!1443273))

(assert (=> b!1292388 m!1442373))

(assert (=> b!1292388 m!1443273))

(declare-fun m!1443275 () Bool)

(assert (=> b!1292388 m!1443275))

(assert (=> b!1292386 m!1443257))

(assert (=> b!1292386 m!1443259))

(assert (=> b!1292386 m!1443257))

(assert (=> b!1292386 m!1443261))

(assert (=> b!1292386 m!1443263))

(assert (=> b!1292386 m!1443263))

(assert (=> b!1292386 m!1443261))

(assert (=> b!1292386 m!1443265))

(assert (=> d!364123 d!364445))

(declare-fun d!364449 () Bool)

(declare-fun lt!425390 () Bool)

(assert (=> d!364449 (= lt!425390 (prefixMatch!52 (rulesRegex!110 thiss!19762 rules!2550) (list!4821 (++!3273 (charsOf!1197 t1!34) (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0))))))))

(declare-datatypes ((Context!1138 0))(
  ( (Context!1139 (exprs!1069 List!12988)) )
))
(declare-fun prefixMatchZipperSequence!142 ((InoxSet Context!1138) BalanceConc!8426 Int) Bool)

(declare-fun focus!60 (Regex!3539) (InoxSet Context!1138))

(assert (=> d!364449 (= lt!425390 (prefixMatchZipperSequence!142 (focus!60 (rulesRegex!110 thiss!19762 rules!2550)) (++!3273 (charsOf!1197 t1!34) (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0))) 0))))

(declare-fun lt!425393 () Unit!19068)

(declare-fun lt!425389 () Unit!19068)

(assert (=> d!364449 (= lt!425393 lt!425389)))

(declare-fun lt!425397 () List!12982)

(declare-fun lt!425395 () (InoxSet Context!1138))

(declare-fun prefixMatchZipper!40 ((InoxSet Context!1138) List!12982) Bool)

(assert (=> d!364449 (= (prefixMatch!52 (rulesRegex!110 thiss!19762 rules!2550) lt!425397) (prefixMatchZipper!40 lt!425395 lt!425397))))

(declare-datatypes ((List!12991 0))(
  ( (Nil!12925) (Cons!12925 (h!18326 Context!1138) (t!117266 List!12991)) )
))
(declare-fun lt!425396 () List!12991)

(declare-fun prefixMatchZipperRegexEquiv!40 ((InoxSet Context!1138) List!12991 Regex!3539 List!12982) Unit!19068)

(assert (=> d!364449 (= lt!425389 (prefixMatchZipperRegexEquiv!40 lt!425395 lt!425396 (rulesRegex!110 thiss!19762 rules!2550) lt!425397))))

(assert (=> d!364449 (= lt!425397 (list!4821 (++!3273 (charsOf!1197 t1!34) (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0)))))))

(declare-fun toList!724 ((InoxSet Context!1138)) List!12991)

(assert (=> d!364449 (= lt!425396 (toList!724 (focus!60 (rulesRegex!110 thiss!19762 rules!2550))))))

(assert (=> d!364449 (= lt!425395 (focus!60 (rulesRegex!110 thiss!19762 rules!2550)))))

(declare-fun lt!425392 () Unit!19068)

(declare-fun lt!425391 () Unit!19068)

(assert (=> d!364449 (= lt!425392 lt!425391)))

(declare-fun lt!425398 () Int)

(declare-fun lt!425394 () (InoxSet Context!1138))

(declare-fun dropList!350 (BalanceConc!8426 Int) List!12982)

(assert (=> d!364449 (= (prefixMatchZipper!40 lt!425394 (dropList!350 (++!3273 (charsOf!1197 t1!34) (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0))) lt!425398)) (prefixMatchZipperSequence!142 lt!425394 (++!3273 (charsOf!1197 t1!34) (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0))) lt!425398))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!40 ((InoxSet Context!1138) BalanceConc!8426 Int) Unit!19068)

(assert (=> d!364449 (= lt!425391 (lemmaprefixMatchZipperSequenceEquivalent!40 lt!425394 (++!3273 (charsOf!1197 t1!34) (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0))) lt!425398))))

(assert (=> d!364449 (= lt!425398 0)))

(assert (=> d!364449 (= lt!425394 (focus!60 (rulesRegex!110 thiss!19762 rules!2550)))))

(assert (=> d!364449 (validRegex!1524 (rulesRegex!110 thiss!19762 rules!2550))))

(assert (=> d!364449 (= (prefixMatchZipperSequence!139 (rulesRegex!110 thiss!19762 rules!2550) (++!3273 (charsOf!1197 t1!34) (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0)))) lt!425390)))

(declare-fun bs!328657 () Bool)

(assert (= bs!328657 d!364449))

(assert (=> bs!328657 m!1442377))

(declare-fun m!1443277 () Bool)

(assert (=> bs!328657 m!1443277))

(assert (=> bs!328657 m!1442377))

(declare-fun m!1443279 () Bool)

(assert (=> bs!328657 m!1443279))

(assert (=> bs!328657 m!1442377))

(declare-fun m!1443281 () Bool)

(assert (=> bs!328657 m!1443281))

(assert (=> bs!328657 m!1442377))

(declare-fun m!1443283 () Bool)

(assert (=> bs!328657 m!1443283))

(declare-fun m!1443285 () Bool)

(assert (=> bs!328657 m!1443285))

(declare-fun m!1443287 () Bool)

(assert (=> bs!328657 m!1443287))

(assert (=> bs!328657 m!1442495))

(declare-fun m!1443289 () Bool)

(assert (=> bs!328657 m!1443289))

(declare-fun m!1443291 () Bool)

(assert (=> bs!328657 m!1443291))

(declare-fun m!1443293 () Bool)

(assert (=> bs!328657 m!1443293))

(declare-fun m!1443295 () Bool)

(assert (=> bs!328657 m!1443295))

(declare-fun m!1443297 () Bool)

(assert (=> bs!328657 m!1443297))

(assert (=> bs!328657 m!1442495))

(assert (=> bs!328657 m!1443283))

(assert (=> bs!328657 m!1442495))

(assert (=> bs!328657 m!1443295))

(assert (=> bs!328657 m!1442377))

(assert (=> bs!328657 m!1443291))

(assert (=> bs!328657 m!1442495))

(declare-fun m!1443299 () Bool)

(assert (=> bs!328657 m!1443299))

(assert (=> bs!328657 m!1443291))

(assert (=> bs!328657 m!1442495))

(declare-fun m!1443301 () Bool)

(assert (=> bs!328657 m!1443301))

(assert (=> d!364123 d!364449))

(declare-fun d!364451 () Bool)

(declare-fun e!828848 () Bool)

(assert (=> d!364451 e!828848))

(declare-fun res!579188 () Bool)

(assert (=> d!364451 (=> (not res!579188) (not e!828848))))

(declare-fun lt!425401 () BalanceConc!8426)

(assert (=> d!364451 (= res!579188 (= (list!4821 lt!425401) (Cons!12916 (apply!2823 (charsOf!1197 t2!34) 0) Nil!12916)))))

(declare-fun singleton!353 (C!7368) BalanceConc!8426)

(assert (=> d!364451 (= lt!425401 (singleton!353 (apply!2823 (charsOf!1197 t2!34) 0)))))

(assert (=> d!364451 (= (singletonSeq!804 (apply!2823 (charsOf!1197 t2!34) 0)) lt!425401)))

(declare-fun b!1292391 () Bool)

(assert (=> b!1292391 (= e!828848 (isBalanced!1245 (c!212569 lt!425401)))))

(assert (= (and d!364451 res!579188) b!1292391))

(declare-fun m!1443303 () Bool)

(assert (=> d!364451 m!1443303))

(assert (=> d!364451 m!1442491))

(declare-fun m!1443305 () Bool)

(assert (=> d!364451 m!1443305))

(declare-fun m!1443307 () Bool)

(assert (=> b!1292391 m!1443307))

(assert (=> d!364123 d!364451))

(assert (=> d!364123 d!364187))

(declare-fun d!364453 () Bool)

(declare-fun lt!425402 () C!7368)

(assert (=> d!364453 (= lt!425402 (apply!2828 (list!4821 (charsOf!1197 t2!34)) 0))))

(assert (=> d!364453 (= lt!425402 (apply!2829 (c!212569 (charsOf!1197 t2!34)) 0))))

(declare-fun e!828849 () Bool)

(assert (=> d!364453 e!828849))

(declare-fun res!579189 () Bool)

(assert (=> d!364453 (=> (not res!579189) (not e!828849))))

(assert (=> d!364453 (= res!579189 (<= 0 0))))

(assert (=> d!364453 (= (apply!2823 (charsOf!1197 t2!34) 0) lt!425402)))

(declare-fun b!1292392 () Bool)

(assert (=> b!1292392 (= e!828849 (< 0 (size!10542 (charsOf!1197 t2!34))))))

(assert (= (and d!364453 res!579189) b!1292392))

(assert (=> d!364453 m!1442357))

(declare-fun m!1443309 () Bool)

(assert (=> d!364453 m!1443309))

(assert (=> d!364453 m!1443309))

(declare-fun m!1443311 () Bool)

(assert (=> d!364453 m!1443311))

(declare-fun m!1443313 () Bool)

(assert (=> d!364453 m!1443313))

(assert (=> b!1292392 m!1442357))

(declare-fun m!1443315 () Bool)

(assert (=> b!1292392 m!1443315))

(assert (=> d!364123 d!364453))

(assert (=> d!364123 d!364193))

(assert (=> d!364123 d!364139))

(declare-fun lt!425403 () List!12982)

(declare-fun b!1292396 () Bool)

(declare-fun e!828851 () Bool)

(assert (=> b!1292396 (= e!828851 (or (not (= (Cons!12916 (apply!2823 lt!425166 0) Nil!12916) Nil!12916)) (= lt!425403 (t!117205 (list!4821 (charsOf!1197 t1!34))))))))

(declare-fun b!1292394 () Bool)

(declare-fun e!828850 () List!12982)

(assert (=> b!1292394 (= e!828850 (Cons!12916 (h!18317 (t!117205 (list!4821 (charsOf!1197 t1!34)))) (++!3272 (t!117205 (t!117205 (list!4821 (charsOf!1197 t1!34)))) (Cons!12916 (apply!2823 lt!425166 0) Nil!12916))))))

(declare-fun b!1292395 () Bool)

(declare-fun res!579191 () Bool)

(assert (=> b!1292395 (=> (not res!579191) (not e!828851))))

(assert (=> b!1292395 (= res!579191 (= (size!10543 lt!425403) (+ (size!10543 (t!117205 (list!4821 (charsOf!1197 t1!34)))) (size!10543 (Cons!12916 (apply!2823 lt!425166 0) Nil!12916)))))))

(declare-fun b!1292393 () Bool)

(assert (=> b!1292393 (= e!828850 (Cons!12916 (apply!2823 lt!425166 0) Nil!12916))))

(declare-fun d!364455 () Bool)

(assert (=> d!364455 e!828851))

(declare-fun res!579190 () Bool)

(assert (=> d!364455 (=> (not res!579190) (not e!828851))))

(assert (=> d!364455 (= res!579190 (= (content!1824 lt!425403) ((_ map or) (content!1824 (t!117205 (list!4821 (charsOf!1197 t1!34)))) (content!1824 (Cons!12916 (apply!2823 lt!425166 0) Nil!12916)))))))

(assert (=> d!364455 (= lt!425403 e!828850)))

(declare-fun c!212748 () Bool)

(assert (=> d!364455 (= c!212748 ((_ is Nil!12916) (t!117205 (list!4821 (charsOf!1197 t1!34)))))))

(assert (=> d!364455 (= (++!3272 (t!117205 (list!4821 (charsOf!1197 t1!34))) (Cons!12916 (apply!2823 lt!425166 0) Nil!12916)) lt!425403)))

(assert (= (and d!364455 c!212748) b!1292393))

(assert (= (and d!364455 (not c!212748)) b!1292394))

(assert (= (and d!364455 res!579190) b!1292395))

(assert (= (and b!1292395 res!579191) b!1292396))

(declare-fun m!1443317 () Bool)

(assert (=> b!1292394 m!1443317))

(declare-fun m!1443319 () Bool)

(assert (=> b!1292395 m!1443319))

(assert (=> b!1292395 m!1443003))

(assert (=> b!1292395 m!1442665))

(declare-fun m!1443321 () Bool)

(assert (=> d!364455 m!1443321))

(assert (=> d!364455 m!1442791))

(assert (=> d!364455 m!1442671))

(assert (=> b!1291812 d!364455))

(declare-fun d!364457 () Bool)

(assert (=> d!364457 (= (inv!17340 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34))) (isBalanced!1245 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34)))))))

(declare-fun bs!328658 () Bool)

(assert (= bs!328658 d!364457))

(declare-fun m!1443323 () Bool)

(assert (=> bs!328658 m!1443323))

(assert (=> tb!69353 d!364457))

(declare-fun e!828852 () Bool)

(assert (=> b!1291866 (= tp!376607 e!828852)))

(declare-fun b!1292398 () Bool)

(declare-fun tp!376670 () Bool)

(declare-fun tp!376669 () Bool)

(assert (=> b!1292398 (= e!828852 (and tp!376670 tp!376669))))

(declare-fun b!1292400 () Bool)

(declare-fun tp!376666 () Bool)

(declare-fun tp!376667 () Bool)

(assert (=> b!1292400 (= e!828852 (and tp!376666 tp!376667))))

(declare-fun b!1292399 () Bool)

(declare-fun tp!376668 () Bool)

(assert (=> b!1292399 (= e!828852 tp!376668)))

(declare-fun b!1292397 () Bool)

(assert (=> b!1292397 (= e!828852 tp_is_empty!6569)))

(assert (= (and b!1291866 ((_ is ElementMatch!3539) (regex!2225 (h!18318 (t!117206 rules!2550))))) b!1292397))

(assert (= (and b!1291866 ((_ is Concat!5855) (regex!2225 (h!18318 (t!117206 rules!2550))))) b!1292398))

(assert (= (and b!1291866 ((_ is Star!3539) (regex!2225 (h!18318 (t!117206 rules!2550))))) b!1292399))

(assert (= (and b!1291866 ((_ is Union!3539) (regex!2225 (h!18318 (t!117206 rules!2550))))) b!1292400))

(declare-fun b!1292409 () Bool)

(declare-fun e!828858 () Bool)

(declare-fun tp!376678 () Bool)

(declare-fun tp!376677 () Bool)

(assert (=> b!1292409 (= e!828858 (and (inv!17339 (left!11113 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34))))) tp!376677 (inv!17339 (right!11443 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34))))) tp!376678))))

(declare-fun b!1292411 () Bool)

(declare-fun e!828857 () Bool)

(declare-fun tp!376679 () Bool)

(assert (=> b!1292411 (= e!828857 tp!376679)))

(declare-fun b!1292410 () Bool)

(declare-fun inv!17345 (IArray!8491) Bool)

(assert (=> b!1292410 (= e!828858 (and (inv!17345 (xs!6954 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34))))) e!828857))))

(assert (=> b!1291781 (= tp!376580 (and (inv!17339 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34)))) e!828858))))

(assert (= (and b!1291781 ((_ is Node!4243) (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34))))) b!1292409))

(assert (= b!1292410 b!1292411))

(assert (= (and b!1291781 ((_ is Leaf!6552) (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t1!34))) (value!73045 t1!34))))) b!1292410))

(declare-fun m!1443325 () Bool)

(assert (=> b!1292409 m!1443325))

(declare-fun m!1443327 () Bool)

(assert (=> b!1292409 m!1443327))

(declare-fun m!1443329 () Bool)

(assert (=> b!1292410 m!1443329))

(assert (=> b!1291781 m!1442595))

(declare-fun tp!376680 () Bool)

(declare-fun b!1292412 () Bool)

(declare-fun tp!376681 () Bool)

(declare-fun e!828860 () Bool)

(assert (=> b!1292412 (= e!828860 (and (inv!17339 (left!11113 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34))))) tp!376680 (inv!17339 (right!11443 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34))))) tp!376681))))

(declare-fun b!1292414 () Bool)

(declare-fun e!828859 () Bool)

(declare-fun tp!376682 () Bool)

(assert (=> b!1292414 (= e!828859 tp!376682)))

(declare-fun b!1292413 () Bool)

(assert (=> b!1292413 (= e!828860 (and (inv!17345 (xs!6954 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34))))) e!828859))))

(assert (=> b!1291728 (= tp!376575 (and (inv!17339 (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34)))) e!828860))))

(assert (= (and b!1291728 ((_ is Node!4243) (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34))))) b!1292412))

(assert (= b!1292413 b!1292414))

(assert (= (and b!1291728 ((_ is Leaf!6552) (c!212569 (dynLambda!5637 (toChars!3283 (transformation!2225 (rule!3964 t2!34))) (value!73045 t2!34))))) b!1292413))

(declare-fun m!1443331 () Bool)

(assert (=> b!1292412 m!1443331))

(declare-fun m!1443333 () Bool)

(assert (=> b!1292412 m!1443333))

(declare-fun m!1443335 () Bool)

(assert (=> b!1292413 m!1443335))

(assert (=> b!1291728 m!1442523))

(declare-fun e!828861 () Bool)

(assert (=> b!1291873 (= tp!376620 e!828861)))

(declare-fun b!1292416 () Bool)

(declare-fun tp!376687 () Bool)

(declare-fun tp!376686 () Bool)

(assert (=> b!1292416 (= e!828861 (and tp!376687 tp!376686))))

(declare-fun b!1292418 () Bool)

(declare-fun tp!376683 () Bool)

(declare-fun tp!376684 () Bool)

(assert (=> b!1292418 (= e!828861 (and tp!376683 tp!376684))))

(declare-fun b!1292417 () Bool)

(declare-fun tp!376685 () Bool)

(assert (=> b!1292417 (= e!828861 tp!376685)))

(declare-fun b!1292415 () Bool)

(assert (=> b!1292415 (= e!828861 tp_is_empty!6569)))

(assert (= (and b!1291873 ((_ is ElementMatch!3539) (regOne!7590 (regex!2225 (rule!3964 t2!34))))) b!1292415))

(assert (= (and b!1291873 ((_ is Concat!5855) (regOne!7590 (regex!2225 (rule!3964 t2!34))))) b!1292416))

(assert (= (and b!1291873 ((_ is Star!3539) (regOne!7590 (regex!2225 (rule!3964 t2!34))))) b!1292417))

(assert (= (and b!1291873 ((_ is Union!3539) (regOne!7590 (regex!2225 (rule!3964 t2!34))))) b!1292418))

(declare-fun e!828862 () Bool)

(assert (=> b!1291873 (= tp!376619 e!828862)))

(declare-fun b!1292420 () Bool)

(declare-fun tp!376692 () Bool)

(declare-fun tp!376691 () Bool)

(assert (=> b!1292420 (= e!828862 (and tp!376692 tp!376691))))

(declare-fun b!1292422 () Bool)

(declare-fun tp!376688 () Bool)

(declare-fun tp!376689 () Bool)

(assert (=> b!1292422 (= e!828862 (and tp!376688 tp!376689))))

(declare-fun b!1292421 () Bool)

(declare-fun tp!376690 () Bool)

(assert (=> b!1292421 (= e!828862 tp!376690)))

(declare-fun b!1292419 () Bool)

(assert (=> b!1292419 (= e!828862 tp_is_empty!6569)))

(assert (= (and b!1291873 ((_ is ElementMatch!3539) (regTwo!7590 (regex!2225 (rule!3964 t2!34))))) b!1292419))

(assert (= (and b!1291873 ((_ is Concat!5855) (regTwo!7590 (regex!2225 (rule!3964 t2!34))))) b!1292420))

(assert (= (and b!1291873 ((_ is Star!3539) (regTwo!7590 (regex!2225 (rule!3964 t2!34))))) b!1292421))

(assert (= (and b!1291873 ((_ is Union!3539) (regTwo!7590 (regex!2225 (rule!3964 t2!34))))) b!1292422))

(declare-fun e!828863 () Bool)

(assert (=> b!1291869 (= tp!376615 e!828863)))

(declare-fun b!1292424 () Bool)

(declare-fun tp!376697 () Bool)

(declare-fun tp!376696 () Bool)

(assert (=> b!1292424 (= e!828863 (and tp!376697 tp!376696))))

(declare-fun b!1292426 () Bool)

(declare-fun tp!376693 () Bool)

(declare-fun tp!376694 () Bool)

(assert (=> b!1292426 (= e!828863 (and tp!376693 tp!376694))))

(declare-fun b!1292425 () Bool)

(declare-fun tp!376695 () Bool)

(assert (=> b!1292425 (= e!828863 tp!376695)))

(declare-fun b!1292423 () Bool)

(assert (=> b!1292423 (= e!828863 tp_is_empty!6569)))

(assert (= (and b!1291869 ((_ is ElementMatch!3539) (regOne!7590 (regex!2225 (rule!3964 t1!34))))) b!1292423))

(assert (= (and b!1291869 ((_ is Concat!5855) (regOne!7590 (regex!2225 (rule!3964 t1!34))))) b!1292424))

(assert (= (and b!1291869 ((_ is Star!3539) (regOne!7590 (regex!2225 (rule!3964 t1!34))))) b!1292425))

(assert (= (and b!1291869 ((_ is Union!3539) (regOne!7590 (regex!2225 (rule!3964 t1!34))))) b!1292426))

(declare-fun e!828864 () Bool)

(assert (=> b!1291869 (= tp!376614 e!828864)))

(declare-fun b!1292428 () Bool)

(declare-fun tp!376702 () Bool)

(declare-fun tp!376701 () Bool)

(assert (=> b!1292428 (= e!828864 (and tp!376702 tp!376701))))

(declare-fun b!1292430 () Bool)

(declare-fun tp!376698 () Bool)

(declare-fun tp!376699 () Bool)

(assert (=> b!1292430 (= e!828864 (and tp!376698 tp!376699))))

(declare-fun b!1292429 () Bool)

(declare-fun tp!376700 () Bool)

(assert (=> b!1292429 (= e!828864 tp!376700)))

(declare-fun b!1292427 () Bool)

(assert (=> b!1292427 (= e!828864 tp_is_empty!6569)))

(assert (= (and b!1291869 ((_ is ElementMatch!3539) (regTwo!7590 (regex!2225 (rule!3964 t1!34))))) b!1292427))

(assert (= (and b!1291869 ((_ is Concat!5855) (regTwo!7590 (regex!2225 (rule!3964 t1!34))))) b!1292428))

(assert (= (and b!1291869 ((_ is Star!3539) (regTwo!7590 (regex!2225 (rule!3964 t1!34))))) b!1292429))

(assert (= (and b!1291869 ((_ is Union!3539) (regTwo!7590 (regex!2225 (rule!3964 t1!34))))) b!1292430))

(declare-fun e!828865 () Bool)

(assert (=> b!1291849 (= tp!376595 e!828865)))

(declare-fun b!1292432 () Bool)

(declare-fun tp!376707 () Bool)

(declare-fun tp!376706 () Bool)

(assert (=> b!1292432 (= e!828865 (and tp!376707 tp!376706))))

(declare-fun b!1292434 () Bool)

(declare-fun tp!376703 () Bool)

(declare-fun tp!376704 () Bool)

(assert (=> b!1292434 (= e!828865 (and tp!376703 tp!376704))))

(declare-fun b!1292433 () Bool)

(declare-fun tp!376705 () Bool)

(assert (=> b!1292433 (= e!828865 tp!376705)))

(declare-fun b!1292431 () Bool)

(assert (=> b!1292431 (= e!828865 tp_is_empty!6569)))

(assert (= (and b!1291849 ((_ is ElementMatch!3539) (regOne!7590 (regex!2225 (h!18318 rules!2550))))) b!1292431))

(assert (= (and b!1291849 ((_ is Concat!5855) (regOne!7590 (regex!2225 (h!18318 rules!2550))))) b!1292432))

(assert (= (and b!1291849 ((_ is Star!3539) (regOne!7590 (regex!2225 (h!18318 rules!2550))))) b!1292433))

(assert (= (and b!1291849 ((_ is Union!3539) (regOne!7590 (regex!2225 (h!18318 rules!2550))))) b!1292434))

(declare-fun e!828866 () Bool)

(assert (=> b!1291849 (= tp!376594 e!828866)))

(declare-fun b!1292436 () Bool)

(declare-fun tp!376712 () Bool)

(declare-fun tp!376711 () Bool)

(assert (=> b!1292436 (= e!828866 (and tp!376712 tp!376711))))

(declare-fun b!1292438 () Bool)

(declare-fun tp!376708 () Bool)

(declare-fun tp!376709 () Bool)

(assert (=> b!1292438 (= e!828866 (and tp!376708 tp!376709))))

(declare-fun b!1292437 () Bool)

(declare-fun tp!376710 () Bool)

(assert (=> b!1292437 (= e!828866 tp!376710)))

(declare-fun b!1292435 () Bool)

(assert (=> b!1292435 (= e!828866 tp_is_empty!6569)))

(assert (= (and b!1291849 ((_ is ElementMatch!3539) (regTwo!7590 (regex!2225 (h!18318 rules!2550))))) b!1292435))

(assert (= (and b!1291849 ((_ is Concat!5855) (regTwo!7590 (regex!2225 (h!18318 rules!2550))))) b!1292436))

(assert (= (and b!1291849 ((_ is Star!3539) (regTwo!7590 (regex!2225 (h!18318 rules!2550))))) b!1292437))

(assert (= (and b!1291849 ((_ is Union!3539) (regTwo!7590 (regex!2225 (h!18318 rules!2550))))) b!1292438))

(declare-fun e!828867 () Bool)

(assert (=> b!1291874 (= tp!376618 e!828867)))

(declare-fun b!1292440 () Bool)

(declare-fun tp!376717 () Bool)

(declare-fun tp!376716 () Bool)

(assert (=> b!1292440 (= e!828867 (and tp!376717 tp!376716))))

(declare-fun b!1292442 () Bool)

(declare-fun tp!376713 () Bool)

(declare-fun tp!376714 () Bool)

(assert (=> b!1292442 (= e!828867 (and tp!376713 tp!376714))))

(declare-fun b!1292441 () Bool)

(declare-fun tp!376715 () Bool)

(assert (=> b!1292441 (= e!828867 tp!376715)))

(declare-fun b!1292439 () Bool)

(assert (=> b!1292439 (= e!828867 tp_is_empty!6569)))

(assert (= (and b!1291874 ((_ is ElementMatch!3539) (reg!3868 (regex!2225 (rule!3964 t2!34))))) b!1292439))

(assert (= (and b!1291874 ((_ is Concat!5855) (reg!3868 (regex!2225 (rule!3964 t2!34))))) b!1292440))

(assert (= (and b!1291874 ((_ is Star!3539) (reg!3868 (regex!2225 (rule!3964 t2!34))))) b!1292441))

(assert (= (and b!1291874 ((_ is Union!3539) (reg!3868 (regex!2225 (rule!3964 t2!34))))) b!1292442))

(declare-fun e!828868 () Bool)

(assert (=> b!1291870 (= tp!376613 e!828868)))

(declare-fun b!1292444 () Bool)

(declare-fun tp!376722 () Bool)

(declare-fun tp!376721 () Bool)

(assert (=> b!1292444 (= e!828868 (and tp!376722 tp!376721))))

(declare-fun b!1292446 () Bool)

(declare-fun tp!376718 () Bool)

(declare-fun tp!376719 () Bool)

(assert (=> b!1292446 (= e!828868 (and tp!376718 tp!376719))))

(declare-fun b!1292445 () Bool)

(declare-fun tp!376720 () Bool)

(assert (=> b!1292445 (= e!828868 tp!376720)))

(declare-fun b!1292443 () Bool)

(assert (=> b!1292443 (= e!828868 tp_is_empty!6569)))

(assert (= (and b!1291870 ((_ is ElementMatch!3539) (reg!3868 (regex!2225 (rule!3964 t1!34))))) b!1292443))

(assert (= (and b!1291870 ((_ is Concat!5855) (reg!3868 (regex!2225 (rule!3964 t1!34))))) b!1292444))

(assert (= (and b!1291870 ((_ is Star!3539) (reg!3868 (regex!2225 (rule!3964 t1!34))))) b!1292445))

(assert (= (and b!1291870 ((_ is Union!3539) (reg!3868 (regex!2225 (rule!3964 t1!34))))) b!1292446))

(declare-fun e!828869 () Bool)

(assert (=> b!1291850 (= tp!376593 e!828869)))

(declare-fun b!1292448 () Bool)

(declare-fun tp!376727 () Bool)

(declare-fun tp!376726 () Bool)

(assert (=> b!1292448 (= e!828869 (and tp!376727 tp!376726))))

(declare-fun b!1292450 () Bool)

(declare-fun tp!376723 () Bool)

(declare-fun tp!376724 () Bool)

(assert (=> b!1292450 (= e!828869 (and tp!376723 tp!376724))))

(declare-fun b!1292449 () Bool)

(declare-fun tp!376725 () Bool)

(assert (=> b!1292449 (= e!828869 tp!376725)))

(declare-fun b!1292447 () Bool)

(assert (=> b!1292447 (= e!828869 tp_is_empty!6569)))

(assert (= (and b!1291850 ((_ is ElementMatch!3539) (reg!3868 (regex!2225 (h!18318 rules!2550))))) b!1292447))

(assert (= (and b!1291850 ((_ is Concat!5855) (reg!3868 (regex!2225 (h!18318 rules!2550))))) b!1292448))

(assert (= (and b!1291850 ((_ is Star!3539) (reg!3868 (regex!2225 (h!18318 rules!2550))))) b!1292449))

(assert (= (and b!1291850 ((_ is Union!3539) (reg!3868 (regex!2225 (h!18318 rules!2550))))) b!1292450))

(declare-fun e!828870 () Bool)

(assert (=> b!1291875 (= tp!376616 e!828870)))

(declare-fun b!1292452 () Bool)

(declare-fun tp!376732 () Bool)

(declare-fun tp!376731 () Bool)

(assert (=> b!1292452 (= e!828870 (and tp!376732 tp!376731))))

(declare-fun b!1292454 () Bool)

(declare-fun tp!376728 () Bool)

(declare-fun tp!376729 () Bool)

(assert (=> b!1292454 (= e!828870 (and tp!376728 tp!376729))))

(declare-fun b!1292453 () Bool)

(declare-fun tp!376730 () Bool)

(assert (=> b!1292453 (= e!828870 tp!376730)))

(declare-fun b!1292451 () Bool)

(assert (=> b!1292451 (= e!828870 tp_is_empty!6569)))

(assert (= (and b!1291875 ((_ is ElementMatch!3539) (regOne!7591 (regex!2225 (rule!3964 t2!34))))) b!1292451))

(assert (= (and b!1291875 ((_ is Concat!5855) (regOne!7591 (regex!2225 (rule!3964 t2!34))))) b!1292452))

(assert (= (and b!1291875 ((_ is Star!3539) (regOne!7591 (regex!2225 (rule!3964 t2!34))))) b!1292453))

(assert (= (and b!1291875 ((_ is Union!3539) (regOne!7591 (regex!2225 (rule!3964 t2!34))))) b!1292454))

(declare-fun e!828871 () Bool)

(assert (=> b!1291875 (= tp!376617 e!828871)))

(declare-fun b!1292456 () Bool)

(declare-fun tp!376737 () Bool)

(declare-fun tp!376736 () Bool)

(assert (=> b!1292456 (= e!828871 (and tp!376737 tp!376736))))

(declare-fun b!1292458 () Bool)

(declare-fun tp!376733 () Bool)

(declare-fun tp!376734 () Bool)

(assert (=> b!1292458 (= e!828871 (and tp!376733 tp!376734))))

(declare-fun b!1292457 () Bool)

(declare-fun tp!376735 () Bool)

(assert (=> b!1292457 (= e!828871 tp!376735)))

(declare-fun b!1292455 () Bool)

(assert (=> b!1292455 (= e!828871 tp_is_empty!6569)))

(assert (= (and b!1291875 ((_ is ElementMatch!3539) (regTwo!7591 (regex!2225 (rule!3964 t2!34))))) b!1292455))

(assert (= (and b!1291875 ((_ is Concat!5855) (regTwo!7591 (regex!2225 (rule!3964 t2!34))))) b!1292456))

(assert (= (and b!1291875 ((_ is Star!3539) (regTwo!7591 (regex!2225 (rule!3964 t2!34))))) b!1292457))

(assert (= (and b!1291875 ((_ is Union!3539) (regTwo!7591 (regex!2225 (rule!3964 t2!34))))) b!1292458))

(declare-fun e!828872 () Bool)

(assert (=> b!1291871 (= tp!376611 e!828872)))

(declare-fun b!1292460 () Bool)

(declare-fun tp!376742 () Bool)

(declare-fun tp!376741 () Bool)

(assert (=> b!1292460 (= e!828872 (and tp!376742 tp!376741))))

(declare-fun b!1292462 () Bool)

(declare-fun tp!376738 () Bool)

(declare-fun tp!376739 () Bool)

(assert (=> b!1292462 (= e!828872 (and tp!376738 tp!376739))))

(declare-fun b!1292461 () Bool)

(declare-fun tp!376740 () Bool)

(assert (=> b!1292461 (= e!828872 tp!376740)))

(declare-fun b!1292459 () Bool)

(assert (=> b!1292459 (= e!828872 tp_is_empty!6569)))

(assert (= (and b!1291871 ((_ is ElementMatch!3539) (regOne!7591 (regex!2225 (rule!3964 t1!34))))) b!1292459))

(assert (= (and b!1291871 ((_ is Concat!5855) (regOne!7591 (regex!2225 (rule!3964 t1!34))))) b!1292460))

(assert (= (and b!1291871 ((_ is Star!3539) (regOne!7591 (regex!2225 (rule!3964 t1!34))))) b!1292461))

(assert (= (and b!1291871 ((_ is Union!3539) (regOne!7591 (regex!2225 (rule!3964 t1!34))))) b!1292462))

(declare-fun e!828873 () Bool)

(assert (=> b!1291871 (= tp!376612 e!828873)))

(declare-fun b!1292464 () Bool)

(declare-fun tp!376747 () Bool)

(declare-fun tp!376746 () Bool)

(assert (=> b!1292464 (= e!828873 (and tp!376747 tp!376746))))

(declare-fun b!1292466 () Bool)

(declare-fun tp!376743 () Bool)

(declare-fun tp!376744 () Bool)

(assert (=> b!1292466 (= e!828873 (and tp!376743 tp!376744))))

(declare-fun b!1292465 () Bool)

(declare-fun tp!376745 () Bool)

(assert (=> b!1292465 (= e!828873 tp!376745)))

(declare-fun b!1292463 () Bool)

(assert (=> b!1292463 (= e!828873 tp_is_empty!6569)))

(assert (= (and b!1291871 ((_ is ElementMatch!3539) (regTwo!7591 (regex!2225 (rule!3964 t1!34))))) b!1292463))

(assert (= (and b!1291871 ((_ is Concat!5855) (regTwo!7591 (regex!2225 (rule!3964 t1!34))))) b!1292464))

(assert (= (and b!1291871 ((_ is Star!3539) (regTwo!7591 (regex!2225 (rule!3964 t1!34))))) b!1292465))

(assert (= (and b!1291871 ((_ is Union!3539) (regTwo!7591 (regex!2225 (rule!3964 t1!34))))) b!1292466))

(declare-fun e!828874 () Bool)

(assert (=> b!1291851 (= tp!376591 e!828874)))

(declare-fun b!1292468 () Bool)

(declare-fun tp!376752 () Bool)

(declare-fun tp!376751 () Bool)

(assert (=> b!1292468 (= e!828874 (and tp!376752 tp!376751))))

(declare-fun b!1292470 () Bool)

(declare-fun tp!376748 () Bool)

(declare-fun tp!376749 () Bool)

(assert (=> b!1292470 (= e!828874 (and tp!376748 tp!376749))))

(declare-fun b!1292469 () Bool)

(declare-fun tp!376750 () Bool)

(assert (=> b!1292469 (= e!828874 tp!376750)))

(declare-fun b!1292467 () Bool)

(assert (=> b!1292467 (= e!828874 tp_is_empty!6569)))

(assert (= (and b!1291851 ((_ is ElementMatch!3539) (regOne!7591 (regex!2225 (h!18318 rules!2550))))) b!1292467))

(assert (= (and b!1291851 ((_ is Concat!5855) (regOne!7591 (regex!2225 (h!18318 rules!2550))))) b!1292468))

(assert (= (and b!1291851 ((_ is Star!3539) (regOne!7591 (regex!2225 (h!18318 rules!2550))))) b!1292469))

(assert (= (and b!1291851 ((_ is Union!3539) (regOne!7591 (regex!2225 (h!18318 rules!2550))))) b!1292470))

(declare-fun e!828875 () Bool)

(assert (=> b!1291851 (= tp!376592 e!828875)))

(declare-fun b!1292472 () Bool)

(declare-fun tp!376757 () Bool)

(declare-fun tp!376756 () Bool)

(assert (=> b!1292472 (= e!828875 (and tp!376757 tp!376756))))

(declare-fun b!1292474 () Bool)

(declare-fun tp!376753 () Bool)

(declare-fun tp!376754 () Bool)

(assert (=> b!1292474 (= e!828875 (and tp!376753 tp!376754))))

(declare-fun b!1292473 () Bool)

(declare-fun tp!376755 () Bool)

(assert (=> b!1292473 (= e!828875 tp!376755)))

(declare-fun b!1292471 () Bool)

(assert (=> b!1292471 (= e!828875 tp_is_empty!6569)))

(assert (= (and b!1291851 ((_ is ElementMatch!3539) (regTwo!7591 (regex!2225 (h!18318 rules!2550))))) b!1292471))

(assert (= (and b!1291851 ((_ is Concat!5855) (regTwo!7591 (regex!2225 (h!18318 rules!2550))))) b!1292472))

(assert (= (and b!1291851 ((_ is Star!3539) (regTwo!7591 (regex!2225 (h!18318 rules!2550))))) b!1292473))

(assert (= (and b!1291851 ((_ is Union!3539) (regTwo!7591 (regex!2225 (h!18318 rules!2550))))) b!1292474))

(declare-fun b!1292475 () Bool)

(declare-fun e!828876 () Bool)

(declare-fun tp!376758 () Bool)

(assert (=> b!1292475 (= e!828876 (and tp_is_empty!6569 tp!376758))))

(assert (=> b!1291876 (= tp!376621 e!828876)))

(assert (= (and b!1291876 ((_ is Cons!12916) (t!117205 (originalCharacters!3087 t1!34)))) b!1292475))

(declare-fun b!1292478 () Bool)

(declare-fun b_free!30575 () Bool)

(declare-fun b_next!31279 () Bool)

(assert (=> b!1292478 (= b_free!30575 (not b_next!31279))))

(declare-fun tp!376761 () Bool)

(declare-fun b_and!86139 () Bool)

(assert (=> b!1292478 (= tp!376761 b_and!86139)))

(declare-fun b_free!30577 () Bool)

(declare-fun b_next!31281 () Bool)

(assert (=> b!1292478 (= b_free!30577 (not b_next!31281))))

(declare-fun tb!69385 () Bool)

(declare-fun t!117255 () Bool)

(assert (=> (and b!1292478 (= (toChars!3283 (transformation!2225 (h!18318 (t!117206 (t!117206 rules!2550))))) (toChars!3283 (transformation!2225 (rule!3964 t2!34)))) t!117255) tb!69385))

(declare-fun result!84100 () Bool)

(assert (= result!84100 result!84050))

(assert (=> d!364139 t!117255))

(declare-fun t!117257 () Bool)

(declare-fun tb!69387 () Bool)

(assert (=> (and b!1292478 (= (toChars!3283 (transformation!2225 (h!18318 (t!117206 (t!117206 rules!2550))))) (toChars!3283 (transformation!2225 (rule!3964 t1!34)))) t!117257) tb!69387))

(declare-fun result!84102 () Bool)

(assert (= result!84102 result!84072))

(assert (=> b!1291779 t!117257))

(assert (=> b!1291782 t!117255))

(assert (=> d!364193 t!117257))

(declare-fun b_and!86141 () Bool)

(declare-fun tp!376762 () Bool)

(assert (=> b!1292478 (= tp!376762 (and (=> t!117255 result!84100) (=> t!117257 result!84102) b_and!86141))))

(declare-fun e!828878 () Bool)

(assert (=> b!1292478 (= e!828878 (and tp!376761 tp!376762))))

(declare-fun tp!376759 () Bool)

(declare-fun e!828877 () Bool)

(declare-fun b!1292477 () Bool)

(assert (=> b!1292477 (= e!828877 (and tp!376759 (inv!17334 (tag!2487 (h!18318 (t!117206 (t!117206 rules!2550))))) (inv!17337 (transformation!2225 (h!18318 (t!117206 (t!117206 rules!2550))))) e!828878))))

(declare-fun b!1292476 () Bool)

(declare-fun e!828879 () Bool)

(declare-fun tp!376760 () Bool)

(assert (=> b!1292476 (= e!828879 (and e!828877 tp!376760))))

(assert (=> b!1291865 (= tp!376608 e!828879)))

(assert (= b!1292477 b!1292478))

(assert (= b!1292476 b!1292477))

(assert (= (and b!1291865 ((_ is Cons!12917) (t!117206 (t!117206 rules!2550)))) b!1292476))

(declare-fun m!1443337 () Bool)

(assert (=> b!1292477 m!1443337))

(declare-fun m!1443339 () Bool)

(assert (=> b!1292477 m!1443339))

(declare-fun b!1292479 () Bool)

(declare-fun e!828881 () Bool)

(declare-fun tp!376763 () Bool)

(assert (=> b!1292479 (= e!828881 (and tp_is_empty!6569 tp!376763))))

(assert (=> b!1291856 (= tp!376598 e!828881)))

(assert (= (and b!1291856 ((_ is Cons!12916) (t!117205 (originalCharacters!3087 t2!34)))) b!1292479))

(declare-fun b_lambda!36939 () Bool)

(assert (= b_lambda!36935 (or b!1291644 b_lambda!36939)))

(declare-fun bs!328659 () Bool)

(declare-fun d!364459 () Bool)

(assert (= bs!328659 (and d!364459 b!1291644)))

(declare-fun res!579192 () Bool)

(declare-fun e!828882 () Bool)

(assert (=> bs!328659 (=> (not res!579192) (not e!828882))))

(assert (=> bs!328659 (= res!579192 (matchR!1547 lt!425168 res!579032))))

(assert (=> bs!328659 (= (dynLambda!5635 lambda!50751 res!579032) e!828882)))

(declare-fun b!1292480 () Bool)

(assert (=> b!1292480 (= e!828882 (isPrefix!1049 lt!425167 res!579032))))

(assert (= (and bs!328659 res!579192) b!1292480))

(declare-fun m!1443341 () Bool)

(assert (=> bs!328659 m!1443341))

(declare-fun m!1443343 () Bool)

(assert (=> b!1292480 m!1443343))

(assert (=> d!364269 d!364459))

(declare-fun b_lambda!36941 () Bool)

(assert (= b_lambda!36937 (or d!364187 b_lambda!36941)))

(declare-fun bs!328660 () Bool)

(declare-fun d!364461 () Bool)

(assert (= bs!328660 (and d!364461 d!364187)))

(assert (=> bs!328660 (= (dynLambda!5642 lambda!50760 (h!18318 rules!2550)) (regex!2225 (h!18318 rules!2550)))))

(assert (=> b!1292030 d!364461))

(check-sat (not bm!88669) (not d!364449) (not b!1292461) (not b!1292206) (not b!1292020) (not b!1292414) (not bm!88713) b_and!86141 (not d!364457) (not b!1291985) (not d!364395) (not b!1292117) (not d!364451) (not b!1292466) (not d!364367) (not b!1292125) (not b!1292399) (not b!1292430) (not d!364271) (not d!364225) (not b!1292446) (not b!1292413) (not b!1292434) b_and!86113 (not d!364351) (not b!1292426) (not b!1291918) (not b!1292354) (not b_next!31273) (not d!364257) tp_is_empty!6569 (not b!1292387) (not b!1292465) (not b!1291951) (not b_next!31259) (not d!364267) (not b!1291781) (not b!1292151) (not d!364279) (not b!1291961) (not b!1292357) (not d!364347) (not d!364365) (not b!1292116) (not b!1291972) (not b_lambda!36915) (not b!1292184) (not b!1292096) (not d!364355) (not b!1291983) (not b!1292458) (not d!364445) (not b!1291973) (not d!364455) (not d!364323) (not b!1292137) (not d!364359) b_and!86115 (not d!364421) (not b!1292450) (not d!364329) (not b!1292093) (not b!1292409) (not b!1291949) (not b!1292119) (not b!1292203) (not b!1292475) b_and!86139 (not b_lambda!36919) (not b!1292412) (not d!364251) (not b_lambda!36913) (not b!1292438) (not b!1292270) (not b!1292017) (not b!1292420) (not b!1292418) (not d!364415) (not b!1292477) (not b!1291941) (not b!1292444) (not b_lambda!36917) (not d!364427) (not b!1292200) (not b_lambda!36921) (not b!1292241) (not b!1291994) (not b!1292386) (not b!1292350) (not d!364433) (not d!364315) (not d!364321) (not b!1292388) (not b_next!31281) b_and!86127 (not b!1292436) (not b!1292021) (not d!364401) (not b!1292410) (not d!364273) (not b!1292030) (not b!1292198) (not b!1292445) (not b!1292166) (not b!1292453) (not b!1292141) (not d!364233) (not d!364423) (not b!1292421) (not b!1292474) (not b!1292124) (not bm!88695) (not b!1292092) (not b!1292266) (not b!1292120) (not b!1292022) (not b!1292095) (not d!364453) (not b!1292437) (not b!1292187) (not b!1292441) (not b!1291959) (not b!1292143) (not b!1292457) (not d!364419) b_and!86117 (not b!1291728) (not d!364237) (not b!1292428) (not b!1292433) (not d!364221) (not d!364331) (not b!1292440) (not b!1292398) (not b!1292429) (not b!1292442) (not b!1292411) (not d!364293) (not d!364307) (not b!1292139) (not b!1292452) (not b!1292460) (not d!364227) (not b!1292470) (not b!1292449) (not b!1292464) (not b_next!31263) (not b!1291988) (not b_next!31261) b_and!86075 (not b!1292395) (not b!1292023) (not d!364345) b_and!86071 (not b!1292476) (not bm!88705) (not b_next!31269) (not b!1292473) (not d!364281) (not b!1292394) (not b!1292182) (not d!364357) (not b!1292472) (not b_next!31279) (not d!364259) (not bm!88716) (not b_lambda!36941) (not d!364231) (not d!364389) (not b!1291971) (not b_lambda!36939) (not b!1292115) (not b!1292385) (not d!364217) (not b_next!31271) (not b!1292469) b_and!86079 (not b!1292205) (not b!1292181) (not b!1292424) (not d!364317) (not b!1292456) (not b!1292479) (not b!1291982) (not b!1292392) (not b!1292417) (not d!364397) (not b!1292346) (not b_next!31265) (not b!1292164) (not b!1292448) (not b!1292123) (not b_next!31267) (not b!1292165) (not b!1292462) (not b!1292454) (not b!1292019) (not b!1292264) (not bs!328659) (not d!364363) (not b!1292468) (not d!364255) (not b!1292015) (not b!1292136) (not b!1292400) (not b!1292422) (not bm!88704) (not d!364275) b_and!86125 (not b!1292432) (not d!364361) (not b!1291957) (not b!1292480) (not b!1292373) (not b!1292204) (not d!364409) (not d!364223) (not b!1292391) (not d!364239) (not b!1292416) (not b!1292351) (not b!1292352) (not d!364263) (not b!1292425) (not d!364277) (not bm!88671))
(check-sat b_and!86141 (not b_next!31259) b_and!86115 b_and!86139 b_and!86117 (not b_next!31263) (not b_next!31279) (not b_next!31271) b_and!86079 b_and!86125 b_and!86113 (not b_next!31273) (not b_next!31281) b_and!86127 (not b_next!31261) b_and!86075 b_and!86071 (not b_next!31269) (not b_next!31265) (not b_next!31267))
