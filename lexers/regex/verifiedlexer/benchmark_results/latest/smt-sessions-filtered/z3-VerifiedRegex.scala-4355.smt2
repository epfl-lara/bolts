; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231594 () Bool)

(assert start!231594)

(declare-fun b!2360619 () Bool)

(declare-fun b_free!70505 () Bool)

(declare-fun b_next!71209 () Bool)

(assert (=> b!2360619 (= b_free!70505 (not b_next!71209))))

(declare-fun tp!754939 () Bool)

(declare-fun b_and!185461 () Bool)

(assert (=> b!2360619 (= tp!754939 b_and!185461)))

(declare-fun b_free!70507 () Bool)

(declare-fun b_next!71211 () Bool)

(assert (=> b!2360619 (= b_free!70507 (not b_next!71211))))

(declare-fun tp!754943 () Bool)

(declare-fun b_and!185463 () Bool)

(assert (=> b!2360619 (= tp!754943 b_and!185463)))

(declare-fun b!2360615 () Bool)

(declare-fun e!1507818 () Bool)

(declare-datatypes ((List!28033 0))(
  ( (Nil!27935) (Cons!27935 (h!33336 (_ BitVec 16)) (t!207948 List!28033)) )
))
(declare-datatypes ((TokenValue!4631 0))(
  ( (FloatLiteralValue!9262 (text!32862 List!28033)) (TokenValueExt!4630 (__x!18517 Int)) (Broken!23155 (value!141532 List!28033)) (Object!4728) (End!4631) (Def!4631) (Underscore!4631) (Match!4631) (Else!4631) (Error!4631) (Case!4631) (If!4631) (Extends!4631) (Abstract!4631) (Class!4631) (Val!4631) (DelimiterValue!9262 (del!4691 List!28033)) (KeywordValue!4637 (value!141533 List!28033)) (CommentValue!9262 (value!141534 List!28033)) (WhitespaceValue!9262 (value!141535 List!28033)) (IndentationValue!4631 (value!141536 List!28033)) (String!30754) (Int32!4631) (Broken!23156 (value!141537 List!28033)) (Boolean!4632) (Unit!40842) (OperatorValue!4634 (op!4691 List!28033)) (IdentifierValue!9262 (value!141538 List!28033)) (IdentifierValue!9263 (value!141539 List!28033)) (WhitespaceValue!9263 (value!141540 List!28033)) (True!9262) (False!9262) (Broken!23157 (value!141541 List!28033)) (Broken!23158 (value!141542 List!28033)) (True!9263) (RightBrace!4631) (RightBracket!4631) (Colon!4631) (Null!4631) (Comma!4631) (LeftBracket!4631) (False!9263) (LeftBrace!4631) (ImaginaryLiteralValue!4631 (text!32863 List!28033)) (StringLiteralValue!13893 (value!141543 List!28033)) (EOFValue!4631 (value!141544 List!28033)) (IdentValue!4631 (value!141545 List!28033)) (DelimiterValue!9263 (value!141546 List!28033)) (DedentValue!4631 (value!141547 List!28033)) (NewLineValue!4631 (value!141548 List!28033)) (IntegerValue!13893 (value!141549 (_ BitVec 32)) (text!32864 List!28033)) (IntegerValue!13894 (value!141550 Int) (text!32865 List!28033)) (Times!4631) (Or!4631) (Equal!4631) (Minus!4631) (Broken!23159 (value!141551 List!28033)) (And!4631) (Div!4631) (LessEqual!4631) (Mod!4631) (Concat!11534) (Not!4631) (Plus!4631) (SpaceValue!4631 (value!141552 List!28033)) (IntegerValue!13895 (value!141553 Int) (text!32866 List!28033)) (StringLiteralValue!13894 (text!32867 List!28033)) (FloatLiteralValue!9263 (text!32868 List!28033)) (BytesLiteralValue!4631 (value!141554 List!28033)) (CommentValue!9263 (value!141555 List!28033)) (StringLiteralValue!13895 (value!141556 List!28033)) (ErrorTokenValue!4631 (msg!4692 List!28033)) )
))
(declare-datatypes ((C!13964 0))(
  ( (C!13965 (val!8224 Int)) )
))
(declare-datatypes ((Regex!6903 0))(
  ( (ElementMatch!6903 (c!375220 C!13964)) (Concat!11535 (regOne!14318 Regex!6903) (regTwo!14318 Regex!6903)) (EmptyExpr!6903) (Star!6903 (reg!7232 Regex!6903)) (EmptyLang!6903) (Union!6903 (regOne!14319 Regex!6903) (regTwo!14319 Regex!6903)) )
))
(declare-datatypes ((String!30755 0))(
  ( (String!30756 (value!141557 String)) )
))
(declare-datatypes ((List!28034 0))(
  ( (Nil!27936) (Cons!27936 (h!33337 C!13964) (t!207949 List!28034)) )
))
(declare-datatypes ((IArray!18299 0))(
  ( (IArray!18300 (innerList!9207 List!28034)) )
))
(declare-datatypes ((Conc!9147 0))(
  ( (Node!9147 (left!21238 Conc!9147) (right!21568 Conc!9147) (csize!18524 Int) (cheight!9358 Int)) (Leaf!13503 (xs!12127 IArray!18299) (csize!18525 Int)) (Empty!9147) )
))
(declare-datatypes ((BalanceConc!17906 0))(
  ( (BalanceConc!17907 (c!375221 Conc!9147)) )
))
(declare-datatypes ((TokenValueInjection!8762 0))(
  ( (TokenValueInjection!8763 (toValue!6289 Int) (toChars!6148 Int)) )
))
(declare-datatypes ((Rule!8690 0))(
  ( (Rule!8691 (regex!4445 Regex!6903) (tag!4935 String!30755) (isSeparator!4445 Bool) (transformation!4445 TokenValueInjection!8762)) )
))
(declare-datatypes ((Token!8360 0))(
  ( (Token!8361 (value!141558 TokenValue!4631) (rule!6799 Rule!8690) (size!22120 Int) (originalCharacters!5211 List!28034)) )
))
(declare-datatypes ((tuple2!27670 0))(
  ( (tuple2!27671 (_1!16376 Token!8360) (_2!16376 List!28034)) )
))
(declare-datatypes ((Option!5452 0))(
  ( (None!5451) (Some!5451 (v!30855 tuple2!27670)) )
))
(declare-fun lt!864280 () Option!5452)

(declare-fun input!1160 () List!28034)

(declare-fun size!22121 (List!28034) Int)

(assert (=> b!2360615 (= e!1507818 (>= (size!22121 (_2!16376 (v!30855 lt!864280))) (size!22121 input!1160)))))

(declare-fun b!2360616 () Bool)

(declare-fun res!1001817 () Bool)

(declare-fun e!1507813 () Bool)

(assert (=> b!2360616 (=> (not res!1001817) (not e!1507813))))

(declare-datatypes ((List!28035 0))(
  ( (Nil!27937) (Cons!27937 (h!33338 Rule!8690) (t!207950 List!28035)) )
))
(declare-fun rules!1706 () List!28035)

(declare-fun isEmpty!15869 (List!28035) Bool)

(assert (=> b!2360616 (= res!1001817 (not (isEmpty!15869 rules!1706)))))

(declare-fun b!2360617 () Bool)

(declare-fun res!1001820 () Bool)

(assert (=> b!2360617 (=> (not res!1001820) (not e!1507813))))

(declare-datatypes ((LexerInterface!4042 0))(
  ( (LexerInterfaceExt!4039 (__x!18518 Int)) (Lexer!4040) )
))
(declare-fun thiss!13512 () LexerInterface!4042)

(declare-fun rulesInvariant!3542 (LexerInterface!4042 List!28035) Bool)

(assert (=> b!2360617 (= res!1001820 (rulesInvariant!3542 thiss!13512 rules!1706))))

(declare-fun b!2360618 () Bool)

(declare-fun e!1507814 () Bool)

(declare-fun e!1507817 () Bool)

(declare-fun tp!754942 () Bool)

(assert (=> b!2360618 (= e!1507814 (and e!1507817 tp!754942))))

(declare-fun e!1507815 () Bool)

(assert (=> b!2360619 (= e!1507815 (and tp!754939 tp!754943))))

(declare-fun b!2360620 () Bool)

(assert (=> b!2360620 (= e!1507813 e!1507818)))

(declare-fun res!1001818 () Bool)

(assert (=> b!2360620 (=> (not res!1001818) (not e!1507818))))

(get-info :version)

(assert (=> b!2360620 (= res!1001818 ((_ is Some!5451) lt!864280))))

(declare-fun maxPrefix!2272 (LexerInterface!4042 List!28035 List!28034) Option!5452)

(assert (=> b!2360620 (= lt!864280 (maxPrefix!2272 thiss!13512 rules!1706 input!1160))))

(declare-fun res!1001819 () Bool)

(assert (=> start!231594 (=> (not res!1001819) (not e!1507813))))

(assert (=> start!231594 (= res!1001819 ((_ is Lexer!4040) thiss!13512))))

(assert (=> start!231594 e!1507813))

(assert (=> start!231594 true))

(assert (=> start!231594 e!1507814))

(declare-fun e!1507816 () Bool)

(assert (=> start!231594 e!1507816))

(declare-fun tp!754941 () Bool)

(declare-fun b!2360621 () Bool)

(declare-fun inv!38158 (String!30755) Bool)

(declare-fun inv!38160 (TokenValueInjection!8762) Bool)

(assert (=> b!2360621 (= e!1507817 (and tp!754941 (inv!38158 (tag!4935 (h!33338 rules!1706))) (inv!38160 (transformation!4445 (h!33338 rules!1706))) e!1507815))))

(declare-fun b!2360622 () Bool)

(declare-fun tp_is_empty!11223 () Bool)

(declare-fun tp!754940 () Bool)

(assert (=> b!2360622 (= e!1507816 (and tp_is_empty!11223 tp!754940))))

(assert (= (and start!231594 res!1001819) b!2360616))

(assert (= (and b!2360616 res!1001817) b!2360617))

(assert (= (and b!2360617 res!1001820) b!2360620))

(assert (= (and b!2360620 res!1001818) b!2360615))

(assert (= b!2360621 b!2360619))

(assert (= b!2360618 b!2360621))

(assert (= (and start!231594 ((_ is Cons!27937) rules!1706)) b!2360618))

(assert (= (and start!231594 ((_ is Cons!27936) input!1160)) b!2360622))

(declare-fun m!2772977 () Bool)

(assert (=> b!2360617 m!2772977))

(declare-fun m!2772979 () Bool)

(assert (=> b!2360615 m!2772979))

(declare-fun m!2772981 () Bool)

(assert (=> b!2360615 m!2772981))

(declare-fun m!2772983 () Bool)

(assert (=> b!2360616 m!2772983))

(declare-fun m!2772985 () Bool)

(assert (=> b!2360621 m!2772985))

(declare-fun m!2772987 () Bool)

(assert (=> b!2360621 m!2772987))

(declare-fun m!2772989 () Bool)

(assert (=> b!2360620 m!2772989))

(check-sat b_and!185463 (not b_next!71209) (not b!2360621) b_and!185461 (not b_next!71211) tp_is_empty!11223 (not b!2360615) (not b!2360616) (not b!2360620) (not b!2360618) (not b!2360617) (not b!2360622))
(check-sat b_and!185463 b_and!185461 (not b_next!71209) (not b_next!71211))
(get-model)

(declare-fun d!693850 () Bool)

(declare-fun lt!864283 () Int)

(assert (=> d!693850 (>= lt!864283 0)))

(declare-fun e!1507824 () Int)

(assert (=> d!693850 (= lt!864283 e!1507824)))

(declare-fun c!375224 () Bool)

(assert (=> d!693850 (= c!375224 ((_ is Nil!27936) (_2!16376 (v!30855 lt!864280))))))

(assert (=> d!693850 (= (size!22121 (_2!16376 (v!30855 lt!864280))) lt!864283)))

(declare-fun b!2360630 () Bool)

(assert (=> b!2360630 (= e!1507824 0)))

(declare-fun b!2360631 () Bool)

(assert (=> b!2360631 (= e!1507824 (+ 1 (size!22121 (t!207949 (_2!16376 (v!30855 lt!864280))))))))

(assert (= (and d!693850 c!375224) b!2360630))

(assert (= (and d!693850 (not c!375224)) b!2360631))

(declare-fun m!2772995 () Bool)

(assert (=> b!2360631 m!2772995))

(assert (=> b!2360615 d!693850))

(declare-fun d!693856 () Bool)

(declare-fun lt!864284 () Int)

(assert (=> d!693856 (>= lt!864284 0)))

(declare-fun e!1507825 () Int)

(assert (=> d!693856 (= lt!864284 e!1507825)))

(declare-fun c!375225 () Bool)

(assert (=> d!693856 (= c!375225 ((_ is Nil!27936) input!1160))))

(assert (=> d!693856 (= (size!22121 input!1160) lt!864284)))

(declare-fun b!2360632 () Bool)

(assert (=> b!2360632 (= e!1507825 0)))

(declare-fun b!2360633 () Bool)

(assert (=> b!2360633 (= e!1507825 (+ 1 (size!22121 (t!207949 input!1160))))))

(assert (= (and d!693856 c!375225) b!2360632))

(assert (= (and d!693856 (not c!375225)) b!2360633))

(declare-fun m!2772997 () Bool)

(assert (=> b!2360633 m!2772997))

(assert (=> b!2360615 d!693856))

(declare-fun b!2360696 () Bool)

(declare-fun e!1507851 () Option!5452)

(declare-fun lt!864316 () Option!5452)

(declare-fun lt!864315 () Option!5452)

(assert (=> b!2360696 (= e!1507851 (ite (and ((_ is None!5451) lt!864316) ((_ is None!5451) lt!864315)) None!5451 (ite ((_ is None!5451) lt!864315) lt!864316 (ite ((_ is None!5451) lt!864316) lt!864315 (ite (>= (size!22120 (_1!16376 (v!30855 lt!864316))) (size!22120 (_1!16376 (v!30855 lt!864315)))) lt!864316 lt!864315)))))))

(declare-fun call!143652 () Option!5452)

(assert (=> b!2360696 (= lt!864316 call!143652)))

(assert (=> b!2360696 (= lt!864315 (maxPrefix!2272 thiss!13512 (t!207950 rules!1706) input!1160))))

(declare-fun b!2360697 () Bool)

(declare-fun res!1001868 () Bool)

(declare-fun e!1507852 () Bool)

(assert (=> b!2360697 (=> (not res!1001868) (not e!1507852))))

(declare-fun lt!864314 () Option!5452)

(declare-fun get!8475 (Option!5452) tuple2!27670)

(declare-fun apply!6712 (TokenValueInjection!8762 BalanceConc!17906) TokenValue!4631)

(declare-fun seqFromList!3131 (List!28034) BalanceConc!17906)

(assert (=> b!2360697 (= res!1001868 (= (value!141558 (_1!16376 (get!8475 lt!864314))) (apply!6712 (transformation!4445 (rule!6799 (_1!16376 (get!8475 lt!864314)))) (seqFromList!3131 (originalCharacters!5211 (_1!16376 (get!8475 lt!864314)))))))))

(declare-fun b!2360698 () Bool)

(declare-fun contains!4880 (List!28035 Rule!8690) Bool)

(assert (=> b!2360698 (= e!1507852 (contains!4880 rules!1706 (rule!6799 (_1!16376 (get!8475 lt!864314)))))))

(declare-fun d!693858 () Bool)

(declare-fun e!1507848 () Bool)

(assert (=> d!693858 e!1507848))

(declare-fun res!1001867 () Bool)

(assert (=> d!693858 (=> res!1001867 e!1507848)))

(declare-fun isEmpty!15871 (Option!5452) Bool)

(assert (=> d!693858 (= res!1001867 (isEmpty!15871 lt!864314))))

(assert (=> d!693858 (= lt!864314 e!1507851)))

(declare-fun c!375235 () Bool)

(assert (=> d!693858 (= c!375235 (and ((_ is Cons!27937) rules!1706) ((_ is Nil!27937) (t!207950 rules!1706))))))

(declare-datatypes ((Unit!40845 0))(
  ( (Unit!40846) )
))
(declare-fun lt!864318 () Unit!40845)

(declare-fun lt!864317 () Unit!40845)

(assert (=> d!693858 (= lt!864318 lt!864317)))

(declare-fun isPrefix!2407 (List!28034 List!28034) Bool)

(assert (=> d!693858 (isPrefix!2407 input!1160 input!1160)))

(declare-fun lemmaIsPrefixRefl!1533 (List!28034 List!28034) Unit!40845)

(assert (=> d!693858 (= lt!864317 (lemmaIsPrefixRefl!1533 input!1160 input!1160))))

(declare-fun rulesValidInductive!1575 (LexerInterface!4042 List!28035) Bool)

(assert (=> d!693858 (rulesValidInductive!1575 thiss!13512 rules!1706)))

(assert (=> d!693858 (= (maxPrefix!2272 thiss!13512 rules!1706 input!1160) lt!864314)))

(declare-fun b!2360699 () Bool)

(assert (=> b!2360699 (= e!1507848 e!1507852)))

(declare-fun res!1001872 () Bool)

(assert (=> b!2360699 (=> (not res!1001872) (not e!1507852))))

(declare-fun isDefined!4280 (Option!5452) Bool)

(assert (=> b!2360699 (= res!1001872 (isDefined!4280 lt!864314))))

(declare-fun b!2360700 () Bool)

(declare-fun res!1001871 () Bool)

(assert (=> b!2360700 (=> (not res!1001871) (not e!1507852))))

(assert (=> b!2360700 (= res!1001871 (< (size!22121 (_2!16376 (get!8475 lt!864314))) (size!22121 input!1160)))))

(declare-fun b!2360701 () Bool)

(declare-fun res!1001866 () Bool)

(assert (=> b!2360701 (=> (not res!1001866) (not e!1507852))))

(declare-fun list!11083 (BalanceConc!17906) List!28034)

(declare-fun charsOf!2805 (Token!8360) BalanceConc!17906)

(assert (=> b!2360701 (= res!1001866 (= (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314)))) (originalCharacters!5211 (_1!16376 (get!8475 lt!864314)))))))

(declare-fun b!2360702 () Bool)

(declare-fun res!1001870 () Bool)

(assert (=> b!2360702 (=> (not res!1001870) (not e!1507852))))

(declare-fun ++!6878 (List!28034 List!28034) List!28034)

(assert (=> b!2360702 (= res!1001870 (= (++!6878 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314)))) (_2!16376 (get!8475 lt!864314))) input!1160))))

(declare-fun bm!143647 () Bool)

(declare-fun maxPrefixOneRule!1440 (LexerInterface!4042 Rule!8690 List!28034) Option!5452)

(assert (=> bm!143647 (= call!143652 (maxPrefixOneRule!1440 thiss!13512 (h!33338 rules!1706) input!1160))))

(declare-fun b!2360703 () Bool)

(assert (=> b!2360703 (= e!1507851 call!143652)))

(declare-fun b!2360704 () Bool)

(declare-fun res!1001869 () Bool)

(assert (=> b!2360704 (=> (not res!1001869) (not e!1507852))))

(declare-fun matchR!3024 (Regex!6903 List!28034) Bool)

(assert (=> b!2360704 (= res!1001869 (matchR!3024 (regex!4445 (rule!6799 (_1!16376 (get!8475 lt!864314)))) (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314))))))))

(assert (= (and d!693858 c!375235) b!2360703))

(assert (= (and d!693858 (not c!375235)) b!2360696))

(assert (= (or b!2360703 b!2360696) bm!143647))

(assert (= (and d!693858 (not res!1001867)) b!2360699))

(assert (= (and b!2360699 res!1001872) b!2360701))

(assert (= (and b!2360701 res!1001866) b!2360700))

(assert (= (and b!2360700 res!1001871) b!2360702))

(assert (= (and b!2360702 res!1001870) b!2360697))

(assert (= (and b!2360697 res!1001868) b!2360704))

(assert (= (and b!2360704 res!1001869) b!2360698))

(declare-fun m!2773039 () Bool)

(assert (=> b!2360699 m!2773039))

(declare-fun m!2773041 () Bool)

(assert (=> b!2360697 m!2773041))

(declare-fun m!2773043 () Bool)

(assert (=> b!2360697 m!2773043))

(assert (=> b!2360697 m!2773043))

(declare-fun m!2773045 () Bool)

(assert (=> b!2360697 m!2773045))

(assert (=> b!2360704 m!2773041))

(declare-fun m!2773047 () Bool)

(assert (=> b!2360704 m!2773047))

(assert (=> b!2360704 m!2773047))

(declare-fun m!2773049 () Bool)

(assert (=> b!2360704 m!2773049))

(assert (=> b!2360704 m!2773049))

(declare-fun m!2773051 () Bool)

(assert (=> b!2360704 m!2773051))

(assert (=> b!2360702 m!2773041))

(assert (=> b!2360702 m!2773047))

(assert (=> b!2360702 m!2773047))

(assert (=> b!2360702 m!2773049))

(assert (=> b!2360702 m!2773049))

(declare-fun m!2773057 () Bool)

(assert (=> b!2360702 m!2773057))

(assert (=> b!2360701 m!2773041))

(assert (=> b!2360701 m!2773047))

(assert (=> b!2360701 m!2773047))

(assert (=> b!2360701 m!2773049))

(assert (=> b!2360698 m!2773041))

(declare-fun m!2773059 () Bool)

(assert (=> b!2360698 m!2773059))

(assert (=> b!2360700 m!2773041))

(declare-fun m!2773061 () Bool)

(assert (=> b!2360700 m!2773061))

(assert (=> b!2360700 m!2772981))

(declare-fun m!2773063 () Bool)

(assert (=> b!2360696 m!2773063))

(declare-fun m!2773065 () Bool)

(assert (=> d!693858 m!2773065))

(declare-fun m!2773067 () Bool)

(assert (=> d!693858 m!2773067))

(declare-fun m!2773069 () Bool)

(assert (=> d!693858 m!2773069))

(declare-fun m!2773071 () Bool)

(assert (=> d!693858 m!2773071))

(declare-fun m!2773073 () Bool)

(assert (=> bm!143647 m!2773073))

(assert (=> b!2360620 d!693858))

(declare-fun d!693866 () Bool)

(assert (=> d!693866 (= (inv!38158 (tag!4935 (h!33338 rules!1706))) (= (mod (str.len (value!141557 (tag!4935 (h!33338 rules!1706)))) 2) 0))))

(assert (=> b!2360621 d!693866))

(declare-fun d!693868 () Bool)

(declare-fun res!1001875 () Bool)

(declare-fun e!1507871 () Bool)

(assert (=> d!693868 (=> (not res!1001875) (not e!1507871))))

(declare-fun semiInverseModEq!1826 (Int Int) Bool)

(assert (=> d!693868 (= res!1001875 (semiInverseModEq!1826 (toChars!6148 (transformation!4445 (h!33338 rules!1706))) (toValue!6289 (transformation!4445 (h!33338 rules!1706)))))))

(assert (=> d!693868 (= (inv!38160 (transformation!4445 (h!33338 rules!1706))) e!1507871)))

(declare-fun b!2360731 () Bool)

(declare-fun equivClasses!1737 (Int Int) Bool)

(assert (=> b!2360731 (= e!1507871 (equivClasses!1737 (toChars!6148 (transformation!4445 (h!33338 rules!1706))) (toValue!6289 (transformation!4445 (h!33338 rules!1706)))))))

(assert (= (and d!693868 res!1001875) b!2360731))

(declare-fun m!2773075 () Bool)

(assert (=> d!693868 m!2773075))

(declare-fun m!2773077 () Bool)

(assert (=> b!2360731 m!2773077))

(assert (=> b!2360621 d!693868))

(declare-fun d!693870 () Bool)

(assert (=> d!693870 (= (isEmpty!15869 rules!1706) ((_ is Nil!27937) rules!1706))))

(assert (=> b!2360616 d!693870))

(declare-fun d!693872 () Bool)

(declare-fun res!1001878 () Bool)

(declare-fun e!1507874 () Bool)

(assert (=> d!693872 (=> (not res!1001878) (not e!1507874))))

(declare-fun rulesValid!1651 (LexerInterface!4042 List!28035) Bool)

(assert (=> d!693872 (= res!1001878 (rulesValid!1651 thiss!13512 rules!1706))))

(assert (=> d!693872 (= (rulesInvariant!3542 thiss!13512 rules!1706) e!1507874)))

(declare-fun b!2360734 () Bool)

(declare-datatypes ((List!28037 0))(
  ( (Nil!27939) (Cons!27939 (h!33340 String!30755) (t!207952 List!28037)) )
))
(declare-fun noDuplicateTag!1649 (LexerInterface!4042 List!28035 List!28037) Bool)

(assert (=> b!2360734 (= e!1507874 (noDuplicateTag!1649 thiss!13512 rules!1706 Nil!27939))))

(assert (= (and d!693872 res!1001878) b!2360734))

(declare-fun m!2773079 () Bool)

(assert (=> d!693872 m!2773079))

(declare-fun m!2773081 () Bool)

(assert (=> b!2360734 m!2773081))

(assert (=> b!2360617 d!693872))

(declare-fun b!2360739 () Bool)

(declare-fun e!1507877 () Bool)

(declare-fun tp!754976 () Bool)

(assert (=> b!2360739 (= e!1507877 (and tp_is_empty!11223 tp!754976))))

(assert (=> b!2360622 (= tp!754940 e!1507877)))

(assert (= (and b!2360622 ((_ is Cons!27936) (t!207949 input!1160))) b!2360739))

(declare-fun b!2360753 () Bool)

(declare-fun e!1507880 () Bool)

(declare-fun tp!754989 () Bool)

(declare-fun tp!754988 () Bool)

(assert (=> b!2360753 (= e!1507880 (and tp!754989 tp!754988))))

(assert (=> b!2360621 (= tp!754941 e!1507880)))

(declare-fun b!2360750 () Bool)

(assert (=> b!2360750 (= e!1507880 tp_is_empty!11223)))

(declare-fun b!2360752 () Bool)

(declare-fun tp!754991 () Bool)

(assert (=> b!2360752 (= e!1507880 tp!754991)))

(declare-fun b!2360751 () Bool)

(declare-fun tp!754990 () Bool)

(declare-fun tp!754987 () Bool)

(assert (=> b!2360751 (= e!1507880 (and tp!754990 tp!754987))))

(assert (= (and b!2360621 ((_ is ElementMatch!6903) (regex!4445 (h!33338 rules!1706)))) b!2360750))

(assert (= (and b!2360621 ((_ is Concat!11535) (regex!4445 (h!33338 rules!1706)))) b!2360751))

(assert (= (and b!2360621 ((_ is Star!6903) (regex!4445 (h!33338 rules!1706)))) b!2360752))

(assert (= (and b!2360621 ((_ is Union!6903) (regex!4445 (h!33338 rules!1706)))) b!2360753))

(declare-fun b!2360764 () Bool)

(declare-fun b_free!70513 () Bool)

(declare-fun b_next!71217 () Bool)

(assert (=> b!2360764 (= b_free!70513 (not b_next!71217))))

(declare-fun tp!755002 () Bool)

(declare-fun b_and!185469 () Bool)

(assert (=> b!2360764 (= tp!755002 b_and!185469)))

(declare-fun b_free!70515 () Bool)

(declare-fun b_next!71219 () Bool)

(assert (=> b!2360764 (= b_free!70515 (not b_next!71219))))

(declare-fun tp!755000 () Bool)

(declare-fun b_and!185471 () Bool)

(assert (=> b!2360764 (= tp!755000 b_and!185471)))

(declare-fun e!1507890 () Bool)

(assert (=> b!2360764 (= e!1507890 (and tp!755002 tp!755000))))

(declare-fun e!1507891 () Bool)

(declare-fun tp!755003 () Bool)

(declare-fun b!2360763 () Bool)

(assert (=> b!2360763 (= e!1507891 (and tp!755003 (inv!38158 (tag!4935 (h!33338 (t!207950 rules!1706)))) (inv!38160 (transformation!4445 (h!33338 (t!207950 rules!1706)))) e!1507890))))

(declare-fun b!2360762 () Bool)

(declare-fun e!1507892 () Bool)

(declare-fun tp!755001 () Bool)

(assert (=> b!2360762 (= e!1507892 (and e!1507891 tp!755001))))

(assert (=> b!2360618 (= tp!754942 e!1507892)))

(assert (= b!2360763 b!2360764))

(assert (= b!2360762 b!2360763))

(assert (= (and b!2360618 ((_ is Cons!27937) (t!207950 rules!1706))) b!2360762))

(declare-fun m!2773083 () Bool)

(assert (=> b!2360763 m!2773083))

(declare-fun m!2773085 () Bool)

(assert (=> b!2360763 m!2773085))

(check-sat (not b!2360752) (not b!2360631) (not b!2360762) (not b!2360751) (not d!693858) (not b!2360696) (not b!2360633) (not b!2360700) (not b!2360704) (not b!2360701) (not b!2360753) (not b!2360763) b_and!185463 (not b!2360698) (not b_next!71209) b_and!185461 (not b!2360734) (not b_next!71211) (not b_next!71219) (not b_next!71217) tp_is_empty!11223 (not d!693872) (not bm!143647) b_and!185471 (not d!693868) (not b!2360697) (not b!2360731) b_and!185469 (not b!2360699) (not b!2360739) (not b!2360702))
(check-sat b_and!185463 (not b_next!71209) b_and!185461 (not b_next!71217) b_and!185471 b_and!185469 (not b_next!71211) (not b_next!71219))
(get-model)

(declare-fun d!693892 () Bool)

(declare-fun lt!864327 () Int)

(assert (=> d!693892 (>= lt!864327 0)))

(declare-fun e!1507905 () Int)

(assert (=> d!693892 (= lt!864327 e!1507905)))

(declare-fun c!375241 () Bool)

(assert (=> d!693892 (= c!375241 ((_ is Nil!27936) (_2!16376 (get!8475 lt!864314))))))

(assert (=> d!693892 (= (size!22121 (_2!16376 (get!8475 lt!864314))) lt!864327)))

(declare-fun b!2360787 () Bool)

(assert (=> b!2360787 (= e!1507905 0)))

(declare-fun b!2360788 () Bool)

(assert (=> b!2360788 (= e!1507905 (+ 1 (size!22121 (t!207949 (_2!16376 (get!8475 lt!864314))))))))

(assert (= (and d!693892 c!375241) b!2360787))

(assert (= (and d!693892 (not c!375241)) b!2360788))

(declare-fun m!2773117 () Bool)

(assert (=> b!2360788 m!2773117))

(assert (=> b!2360700 d!693892))

(declare-fun d!693896 () Bool)

(assert (=> d!693896 (= (get!8475 lt!864314) (v!30855 lt!864314))))

(assert (=> b!2360700 d!693896))

(assert (=> b!2360700 d!693856))

(declare-fun d!693898 () Bool)

(declare-fun lt!864328 () Int)

(assert (=> d!693898 (>= lt!864328 0)))

(declare-fun e!1507906 () Int)

(assert (=> d!693898 (= lt!864328 e!1507906)))

(declare-fun c!375242 () Bool)

(assert (=> d!693898 (= c!375242 ((_ is Nil!27936) (t!207949 input!1160)))))

(assert (=> d!693898 (= (size!22121 (t!207949 input!1160)) lt!864328)))

(declare-fun b!2360789 () Bool)

(assert (=> b!2360789 (= e!1507906 0)))

(declare-fun b!2360790 () Bool)

(assert (=> b!2360790 (= e!1507906 (+ 1 (size!22121 (t!207949 (t!207949 input!1160)))))))

(assert (= (and d!693898 c!375242) b!2360789))

(assert (= (and d!693898 (not c!375242)) b!2360790))

(declare-fun m!2773119 () Bool)

(assert (=> b!2360790 m!2773119))

(assert (=> b!2360633 d!693898))

(declare-fun b!2360813 () Bool)

(declare-fun res!1001914 () Bool)

(declare-fun e!1507921 () Bool)

(assert (=> b!2360813 (=> (not res!1001914) (not e!1507921))))

(declare-fun lt!864337 () List!28034)

(assert (=> b!2360813 (= res!1001914 (= (size!22121 lt!864337) (+ (size!22121 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314))))) (size!22121 (_2!16376 (get!8475 lt!864314))))))))

(declare-fun b!2360814 () Bool)

(assert (=> b!2360814 (= e!1507921 (or (not (= (_2!16376 (get!8475 lt!864314)) Nil!27936)) (= lt!864337 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314)))))))))

(declare-fun b!2360811 () Bool)

(declare-fun e!1507920 () List!28034)

(assert (=> b!2360811 (= e!1507920 (_2!16376 (get!8475 lt!864314)))))

(declare-fun b!2360812 () Bool)

(assert (=> b!2360812 (= e!1507920 (Cons!27936 (h!33337 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314))))) (++!6878 (t!207949 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314))))) (_2!16376 (get!8475 lt!864314)))))))

(declare-fun d!693900 () Bool)

(assert (=> d!693900 e!1507921))

(declare-fun res!1001913 () Bool)

(assert (=> d!693900 (=> (not res!1001913) (not e!1507921))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3793 (List!28034) (InoxSet C!13964))

(assert (=> d!693900 (= res!1001913 (= (content!3793 lt!864337) ((_ map or) (content!3793 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314))))) (content!3793 (_2!16376 (get!8475 lt!864314))))))))

(assert (=> d!693900 (= lt!864337 e!1507920)))

(declare-fun c!375245 () Bool)

(assert (=> d!693900 (= c!375245 ((_ is Nil!27936) (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314))))))))

(assert (=> d!693900 (= (++!6878 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314)))) (_2!16376 (get!8475 lt!864314))) lt!864337)))

(assert (= (and d!693900 c!375245) b!2360811))

(assert (= (and d!693900 (not c!375245)) b!2360812))

(assert (= (and d!693900 res!1001913) b!2360813))

(assert (= (and b!2360813 res!1001914) b!2360814))

(declare-fun m!2773129 () Bool)

(assert (=> b!2360813 m!2773129))

(assert (=> b!2360813 m!2773049))

(declare-fun m!2773131 () Bool)

(assert (=> b!2360813 m!2773131))

(assert (=> b!2360813 m!2773061))

(declare-fun m!2773133 () Bool)

(assert (=> b!2360812 m!2773133))

(declare-fun m!2773135 () Bool)

(assert (=> d!693900 m!2773135))

(assert (=> d!693900 m!2773049))

(declare-fun m!2773137 () Bool)

(assert (=> d!693900 m!2773137))

(declare-fun m!2773139 () Bool)

(assert (=> d!693900 m!2773139))

(assert (=> b!2360702 d!693900))

(declare-fun d!693906 () Bool)

(declare-fun list!11085 (Conc!9147) List!28034)

(assert (=> d!693906 (= (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314)))) (list!11085 (c!375221 (charsOf!2805 (_1!16376 (get!8475 lt!864314))))))))

(declare-fun bs!460528 () Bool)

(assert (= bs!460528 d!693906))

(declare-fun m!2773141 () Bool)

(assert (=> bs!460528 m!2773141))

(assert (=> b!2360702 d!693906))

(declare-fun d!693908 () Bool)

(declare-fun lt!864342 () BalanceConc!17906)

(assert (=> d!693908 (= (list!11083 lt!864342) (originalCharacters!5211 (_1!16376 (get!8475 lt!864314))))))

(declare-fun dynLambda!12029 (Int TokenValue!4631) BalanceConc!17906)

(assert (=> d!693908 (= lt!864342 (dynLambda!12029 (toChars!6148 (transformation!4445 (rule!6799 (_1!16376 (get!8475 lt!864314))))) (value!141558 (_1!16376 (get!8475 lt!864314)))))))

(assert (=> d!693908 (= (charsOf!2805 (_1!16376 (get!8475 lt!864314))) lt!864342)))

(declare-fun b_lambda!73781 () Bool)

(assert (=> (not b_lambda!73781) (not d!693908)))

(declare-fun tb!138781 () Bool)

(declare-fun t!207958 () Bool)

(assert (=> (and b!2360619 (= (toChars!6148 (transformation!4445 (h!33338 rules!1706))) (toChars!6148 (transformation!4445 (rule!6799 (_1!16376 (get!8475 lt!864314)))))) t!207958) tb!138781))

(declare-fun b!2360823 () Bool)

(declare-fun e!1507928 () Bool)

(declare-fun tp!755009 () Bool)

(declare-fun inv!38163 (Conc!9147) Bool)

(assert (=> b!2360823 (= e!1507928 (and (inv!38163 (c!375221 (dynLambda!12029 (toChars!6148 (transformation!4445 (rule!6799 (_1!16376 (get!8475 lt!864314))))) (value!141558 (_1!16376 (get!8475 lt!864314)))))) tp!755009))))

(declare-fun result!169726 () Bool)

(declare-fun inv!38164 (BalanceConc!17906) Bool)

(assert (=> tb!138781 (= result!169726 (and (inv!38164 (dynLambda!12029 (toChars!6148 (transformation!4445 (rule!6799 (_1!16376 (get!8475 lt!864314))))) (value!141558 (_1!16376 (get!8475 lt!864314))))) e!1507928))))

(assert (= tb!138781 b!2360823))

(declare-fun m!2773143 () Bool)

(assert (=> b!2360823 m!2773143))

(declare-fun m!2773145 () Bool)

(assert (=> tb!138781 m!2773145))

(assert (=> d!693908 t!207958))

(declare-fun b_and!185477 () Bool)

(assert (= b_and!185463 (and (=> t!207958 result!169726) b_and!185477)))

(declare-fun tb!138783 () Bool)

(declare-fun t!207960 () Bool)

(assert (=> (and b!2360764 (= (toChars!6148 (transformation!4445 (h!33338 (t!207950 rules!1706)))) (toChars!6148 (transformation!4445 (rule!6799 (_1!16376 (get!8475 lt!864314)))))) t!207960) tb!138783))

(declare-fun result!169730 () Bool)

(assert (= result!169730 result!169726))

(assert (=> d!693908 t!207960))

(declare-fun b_and!185479 () Bool)

(assert (= b_and!185471 (and (=> t!207960 result!169730) b_and!185479)))

(declare-fun m!2773147 () Bool)

(assert (=> d!693908 m!2773147))

(declare-fun m!2773149 () Bool)

(assert (=> d!693908 m!2773149))

(assert (=> b!2360702 d!693908))

(assert (=> b!2360702 d!693896))

(assert (=> b!2360701 d!693906))

(assert (=> b!2360701 d!693908))

(assert (=> b!2360701 d!693896))

(declare-fun d!693910 () Bool)

(assert (=> d!693910 true))

(declare-fun lt!864349 () Bool)

(assert (=> d!693910 (= lt!864349 (rulesValidInductive!1575 thiss!13512 rules!1706))))

(declare-fun lambda!86836 () Int)

(declare-fun forall!5539 (List!28035 Int) Bool)

(assert (=> d!693910 (= lt!864349 (forall!5539 rules!1706 lambda!86836))))

(assert (=> d!693910 (= (rulesValid!1651 thiss!13512 rules!1706) lt!864349)))

(declare-fun bs!460530 () Bool)

(assert (= bs!460530 d!693910))

(assert (=> bs!460530 m!2773071))

(declare-fun m!2773165 () Bool)

(assert (=> bs!460530 m!2773165))

(assert (=> d!693872 d!693910))

(declare-fun d!693918 () Bool)

(declare-fun lt!864352 () Bool)

(declare-fun content!3795 (List!28035) (InoxSet Rule!8690))

(assert (=> d!693918 (= lt!864352 (select (content!3795 rules!1706) (rule!6799 (_1!16376 (get!8475 lt!864314)))))))

(declare-fun e!1507947 () Bool)

(assert (=> d!693918 (= lt!864352 e!1507947)))

(declare-fun res!1001937 () Bool)

(assert (=> d!693918 (=> (not res!1001937) (not e!1507947))))

(assert (=> d!693918 (= res!1001937 ((_ is Cons!27937) rules!1706))))

(assert (=> d!693918 (= (contains!4880 rules!1706 (rule!6799 (_1!16376 (get!8475 lt!864314)))) lt!864352)))

(declare-fun b!2360850 () Bool)

(declare-fun e!1507948 () Bool)

(assert (=> b!2360850 (= e!1507947 e!1507948)))

(declare-fun res!1001938 () Bool)

(assert (=> b!2360850 (=> res!1001938 e!1507948)))

(assert (=> b!2360850 (= res!1001938 (= (h!33338 rules!1706) (rule!6799 (_1!16376 (get!8475 lt!864314)))))))

(declare-fun b!2360851 () Bool)

(assert (=> b!2360851 (= e!1507948 (contains!4880 (t!207950 rules!1706) (rule!6799 (_1!16376 (get!8475 lt!864314)))))))

(assert (= (and d!693918 res!1001937) b!2360850))

(assert (= (and b!2360850 (not res!1001938)) b!2360851))

(declare-fun m!2773171 () Bool)

(assert (=> d!693918 m!2773171))

(declare-fun m!2773173 () Bool)

(assert (=> d!693918 m!2773173))

(declare-fun m!2773175 () Bool)

(assert (=> b!2360851 m!2773175))

(assert (=> b!2360698 d!693918))

(assert (=> b!2360698 d!693896))

(declare-fun d!693922 () Bool)

(assert (=> d!693922 (= (inv!38158 (tag!4935 (h!33338 (t!207950 rules!1706)))) (= (mod (str.len (value!141557 (tag!4935 (h!33338 (t!207950 rules!1706))))) 2) 0))))

(assert (=> b!2360763 d!693922))

(declare-fun d!693924 () Bool)

(declare-fun res!1001939 () Bool)

(declare-fun e!1507951 () Bool)

(assert (=> d!693924 (=> (not res!1001939) (not e!1507951))))

(assert (=> d!693924 (= res!1001939 (semiInverseModEq!1826 (toChars!6148 (transformation!4445 (h!33338 (t!207950 rules!1706)))) (toValue!6289 (transformation!4445 (h!33338 (t!207950 rules!1706))))))))

(assert (=> d!693924 (= (inv!38160 (transformation!4445 (h!33338 (t!207950 rules!1706)))) e!1507951)))

(declare-fun b!2360854 () Bool)

(assert (=> b!2360854 (= e!1507951 (equivClasses!1737 (toChars!6148 (transformation!4445 (h!33338 (t!207950 rules!1706)))) (toValue!6289 (transformation!4445 (h!33338 (t!207950 rules!1706))))))))

(assert (= (and d!693924 res!1001939) b!2360854))

(declare-fun m!2773179 () Bool)

(assert (=> d!693924 m!2773179))

(declare-fun m!2773181 () Bool)

(assert (=> b!2360854 m!2773181))

(assert (=> b!2360763 d!693924))

(assert (=> b!2360697 d!693896))

(declare-fun d!693926 () Bool)

(declare-fun dynLambda!12033 (Int BalanceConc!17906) TokenValue!4631)

(assert (=> d!693926 (= (apply!6712 (transformation!4445 (rule!6799 (_1!16376 (get!8475 lt!864314)))) (seqFromList!3131 (originalCharacters!5211 (_1!16376 (get!8475 lt!864314))))) (dynLambda!12033 (toValue!6289 (transformation!4445 (rule!6799 (_1!16376 (get!8475 lt!864314))))) (seqFromList!3131 (originalCharacters!5211 (_1!16376 (get!8475 lt!864314))))))))

(declare-fun b_lambda!73785 () Bool)

(assert (=> (not b_lambda!73785) (not d!693926)))

(declare-fun t!207966 () Bool)

(declare-fun tb!138789 () Bool)

(assert (=> (and b!2360619 (= (toValue!6289 (transformation!4445 (h!33338 rules!1706))) (toValue!6289 (transformation!4445 (rule!6799 (_1!16376 (get!8475 lt!864314)))))) t!207966) tb!138789))

(declare-fun result!169738 () Bool)

(declare-fun inv!21 (TokenValue!4631) Bool)

(assert (=> tb!138789 (= result!169738 (inv!21 (dynLambda!12033 (toValue!6289 (transformation!4445 (rule!6799 (_1!16376 (get!8475 lt!864314))))) (seqFromList!3131 (originalCharacters!5211 (_1!16376 (get!8475 lt!864314)))))))))

(declare-fun m!2773185 () Bool)

(assert (=> tb!138789 m!2773185))

(assert (=> d!693926 t!207966))

(declare-fun b_and!185485 () Bool)

(assert (= b_and!185461 (and (=> t!207966 result!169738) b_and!185485)))

(declare-fun t!207968 () Bool)

(declare-fun tb!138791 () Bool)

(assert (=> (and b!2360764 (= (toValue!6289 (transformation!4445 (h!33338 (t!207950 rules!1706)))) (toValue!6289 (transformation!4445 (rule!6799 (_1!16376 (get!8475 lt!864314)))))) t!207968) tb!138791))

(declare-fun result!169742 () Bool)

(assert (= result!169742 result!169738))

(assert (=> d!693926 t!207968))

(declare-fun b_and!185487 () Bool)

(assert (= b_and!185469 (and (=> t!207968 result!169742) b_and!185487)))

(assert (=> d!693926 m!2773043))

(declare-fun m!2773189 () Bool)

(assert (=> d!693926 m!2773189))

(assert (=> b!2360697 d!693926))

(declare-fun d!693930 () Bool)

(declare-fun fromListB!1414 (List!28034) BalanceConc!17906)

(assert (=> d!693930 (= (seqFromList!3131 (originalCharacters!5211 (_1!16376 (get!8475 lt!864314)))) (fromListB!1414 (originalCharacters!5211 (_1!16376 (get!8475 lt!864314)))))))

(declare-fun bs!460532 () Bool)

(assert (= bs!460532 d!693930))

(declare-fun m!2773191 () Bool)

(assert (=> bs!460532 m!2773191))

(assert (=> b!2360697 d!693930))

(declare-fun d!693934 () Bool)

(assert (=> d!693934 (= (isDefined!4280 lt!864314) (not (isEmpty!15871 lt!864314)))))

(declare-fun bs!460533 () Bool)

(assert (= bs!460533 d!693934))

(assert (=> bs!460533 m!2773065))

(assert (=> b!2360699 d!693934))

(declare-fun d!693936 () Bool)

(assert (=> d!693936 true))

(declare-fun lambda!86839 () Int)

(declare-fun order!15471 () Int)

(declare-fun order!15473 () Int)

(declare-fun dynLambda!12035 (Int Int) Int)

(declare-fun dynLambda!12036 (Int Int) Int)

(assert (=> d!693936 (< (dynLambda!12035 order!15471 (toChars!6148 (transformation!4445 (h!33338 rules!1706)))) (dynLambda!12036 order!15473 lambda!86839))))

(assert (=> d!693936 true))

(declare-fun order!15475 () Int)

(declare-fun dynLambda!12037 (Int Int) Int)

(assert (=> d!693936 (< (dynLambda!12037 order!15475 (toValue!6289 (transformation!4445 (h!33338 rules!1706)))) (dynLambda!12036 order!15473 lambda!86839))))

(declare-fun Forall!1130 (Int) Bool)

(assert (=> d!693936 (= (semiInverseModEq!1826 (toChars!6148 (transformation!4445 (h!33338 rules!1706))) (toValue!6289 (transformation!4445 (h!33338 rules!1706)))) (Forall!1130 lambda!86839))))

(declare-fun bs!460534 () Bool)

(assert (= bs!460534 d!693936))

(declare-fun m!2773219 () Bool)

(assert (=> bs!460534 m!2773219))

(assert (=> d!693868 d!693936))

(declare-fun d!693940 () Bool)

(assert (=> d!693940 (= (isEmpty!15871 lt!864314) (not ((_ is Some!5451) lt!864314)))))

(assert (=> d!693858 d!693940))

(declare-fun b!2360887 () Bool)

(declare-fun e!1507969 () Bool)

(assert (=> b!2360887 (= e!1507969 (>= (size!22121 input!1160) (size!22121 input!1160)))))

(declare-fun b!2360886 () Bool)

(declare-fun e!1507968 () Bool)

(declare-fun tail!3347 (List!28034) List!28034)

(assert (=> b!2360886 (= e!1507968 (isPrefix!2407 (tail!3347 input!1160) (tail!3347 input!1160)))))

(declare-fun b!2360885 () Bool)

(declare-fun res!1001957 () Bool)

(assert (=> b!2360885 (=> (not res!1001957) (not e!1507968))))

(declare-fun head!5078 (List!28034) C!13964)

(assert (=> b!2360885 (= res!1001957 (= (head!5078 input!1160) (head!5078 input!1160)))))

(declare-fun b!2360884 () Bool)

(declare-fun e!1507970 () Bool)

(assert (=> b!2360884 (= e!1507970 e!1507968)))

(declare-fun res!1001959 () Bool)

(assert (=> b!2360884 (=> (not res!1001959) (not e!1507968))))

(assert (=> b!2360884 (= res!1001959 (not ((_ is Nil!27936) input!1160)))))

(declare-fun d!693942 () Bool)

(assert (=> d!693942 e!1507969))

(declare-fun res!1001958 () Bool)

(assert (=> d!693942 (=> res!1001958 e!1507969)))

(declare-fun lt!864361 () Bool)

(assert (=> d!693942 (= res!1001958 (not lt!864361))))

(assert (=> d!693942 (= lt!864361 e!1507970)))

(declare-fun res!1001960 () Bool)

(assert (=> d!693942 (=> res!1001960 e!1507970)))

(assert (=> d!693942 (= res!1001960 ((_ is Nil!27936) input!1160))))

(assert (=> d!693942 (= (isPrefix!2407 input!1160 input!1160) lt!864361)))

(assert (= (and d!693942 (not res!1001960)) b!2360884))

(assert (= (and b!2360884 res!1001959) b!2360885))

(assert (= (and b!2360885 res!1001957) b!2360886))

(assert (= (and d!693942 (not res!1001958)) b!2360887))

(assert (=> b!2360887 m!2772981))

(assert (=> b!2360887 m!2772981))

(declare-fun m!2773225 () Bool)

(assert (=> b!2360886 m!2773225))

(assert (=> b!2360886 m!2773225))

(assert (=> b!2360886 m!2773225))

(assert (=> b!2360886 m!2773225))

(declare-fun m!2773227 () Bool)

(assert (=> b!2360886 m!2773227))

(declare-fun m!2773229 () Bool)

(assert (=> b!2360885 m!2773229))

(assert (=> b!2360885 m!2773229))

(assert (=> d!693858 d!693942))

(declare-fun d!693950 () Bool)

(assert (=> d!693950 (isPrefix!2407 input!1160 input!1160)))

(declare-fun lt!864364 () Unit!40845)

(declare-fun choose!13692 (List!28034 List!28034) Unit!40845)

(assert (=> d!693950 (= lt!864364 (choose!13692 input!1160 input!1160))))

(assert (=> d!693950 (= (lemmaIsPrefixRefl!1533 input!1160 input!1160) lt!864364)))

(declare-fun bs!460537 () Bool)

(assert (= bs!460537 d!693950))

(assert (=> bs!460537 m!2773067))

(declare-fun m!2773231 () Bool)

(assert (=> bs!460537 m!2773231))

(assert (=> d!693858 d!693950))

(declare-fun bs!460538 () Bool)

(declare-fun d!693952 () Bool)

(assert (= bs!460538 (and d!693952 d!693910)))

(declare-fun lambda!86845 () Int)

(assert (=> bs!460538 (= lambda!86845 lambda!86836)))

(assert (=> d!693952 true))

(declare-fun lt!864367 () Bool)

(assert (=> d!693952 (= lt!864367 (forall!5539 rules!1706 lambda!86845))))

(declare-fun e!1507975 () Bool)

(assert (=> d!693952 (= lt!864367 e!1507975)))

(declare-fun res!1001965 () Bool)

(assert (=> d!693952 (=> res!1001965 e!1507975)))

(assert (=> d!693952 (= res!1001965 (not ((_ is Cons!27937) rules!1706)))))

(assert (=> d!693952 (= (rulesValidInductive!1575 thiss!13512 rules!1706) lt!864367)))

(declare-fun b!2360892 () Bool)

(declare-fun e!1507976 () Bool)

(assert (=> b!2360892 (= e!1507975 e!1507976)))

(declare-fun res!1001966 () Bool)

(assert (=> b!2360892 (=> (not res!1001966) (not e!1507976))))

(declare-fun ruleValid!1509 (LexerInterface!4042 Rule!8690) Bool)

(assert (=> b!2360892 (= res!1001966 (ruleValid!1509 thiss!13512 (h!33338 rules!1706)))))

(declare-fun b!2360893 () Bool)

(assert (=> b!2360893 (= e!1507976 (rulesValidInductive!1575 thiss!13512 (t!207950 rules!1706)))))

(assert (= (and d!693952 (not res!1001965)) b!2360892))

(assert (= (and b!2360892 res!1001966) b!2360893))

(declare-fun m!2773233 () Bool)

(assert (=> d!693952 m!2773233))

(declare-fun m!2773235 () Bool)

(assert (=> b!2360892 m!2773235))

(declare-fun m!2773237 () Bool)

(assert (=> b!2360893 m!2773237))

(assert (=> d!693858 d!693952))

(declare-fun b!2360939 () Bool)

(declare-fun e!1507998 () Option!5452)

(declare-datatypes ((tuple2!27672 0))(
  ( (tuple2!27673 (_1!16377 List!28034) (_2!16377 List!28034)) )
))
(declare-fun lt!864397 () tuple2!27672)

(declare-fun size!22122 (BalanceConc!17906) Int)

(assert (=> b!2360939 (= e!1507998 (Some!5451 (tuple2!27671 (Token!8361 (apply!6712 (transformation!4445 (h!33338 rules!1706)) (seqFromList!3131 (_1!16377 lt!864397))) (h!33338 rules!1706) (size!22122 (seqFromList!3131 (_1!16377 lt!864397))) (_1!16377 lt!864397)) (_2!16377 lt!864397))))))

(declare-fun lt!864399 () Unit!40845)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!717 (Regex!6903 List!28034) Unit!40845)

(assert (=> b!2360939 (= lt!864399 (longestMatchIsAcceptedByMatchOrIsEmpty!717 (regex!4445 (h!33338 rules!1706)) input!1160))))

(declare-fun res!1002004 () Bool)

(declare-fun isEmpty!15872 (List!28034) Bool)

(declare-fun findLongestMatchInner!744 (Regex!6903 List!28034 Int List!28034 List!28034 Int) tuple2!27672)

(assert (=> b!2360939 (= res!1002004 (isEmpty!15872 (_1!16377 (findLongestMatchInner!744 (regex!4445 (h!33338 rules!1706)) Nil!27936 (size!22121 Nil!27936) input!1160 input!1160 (size!22121 input!1160)))))))

(declare-fun e!1507999 () Bool)

(assert (=> b!2360939 (=> res!1002004 e!1507999)))

(assert (=> b!2360939 e!1507999))

(declare-fun lt!864398 () Unit!40845)

(assert (=> b!2360939 (= lt!864398 lt!864399)))

(declare-fun lt!864400 () Unit!40845)

(declare-fun lemmaSemiInverse!1095 (TokenValueInjection!8762 BalanceConc!17906) Unit!40845)

(assert (=> b!2360939 (= lt!864400 (lemmaSemiInverse!1095 (transformation!4445 (h!33338 rules!1706)) (seqFromList!3131 (_1!16377 lt!864397))))))

(declare-fun b!2360940 () Bool)

(assert (=> b!2360940 (= e!1507998 None!5451)))

(declare-fun b!2360941 () Bool)

(declare-fun res!1002008 () Bool)

(declare-fun e!1508000 () Bool)

(assert (=> b!2360941 (=> (not res!1002008) (not e!1508000))))

(declare-fun lt!864396 () Option!5452)

(assert (=> b!2360941 (= res!1002008 (= (rule!6799 (_1!16376 (get!8475 lt!864396))) (h!33338 rules!1706)))))

(declare-fun b!2360942 () Bool)

(assert (=> b!2360942 (= e!1508000 (= (size!22120 (_1!16376 (get!8475 lt!864396))) (size!22121 (originalCharacters!5211 (_1!16376 (get!8475 lt!864396))))))))

(declare-fun b!2360943 () Bool)

(declare-fun res!1002007 () Bool)

(assert (=> b!2360943 (=> (not res!1002007) (not e!1508000))))

(assert (=> b!2360943 (= res!1002007 (= (value!141558 (_1!16376 (get!8475 lt!864396))) (apply!6712 (transformation!4445 (rule!6799 (_1!16376 (get!8475 lt!864396)))) (seqFromList!3131 (originalCharacters!5211 (_1!16376 (get!8475 lt!864396)))))))))

(declare-fun b!2360944 () Bool)

(assert (=> b!2360944 (= e!1507999 (matchR!3024 (regex!4445 (h!33338 rules!1706)) (_1!16377 (findLongestMatchInner!744 (regex!4445 (h!33338 rules!1706)) Nil!27936 (size!22121 Nil!27936) input!1160 input!1160 (size!22121 input!1160)))))))

(declare-fun d!693954 () Bool)

(declare-fun e!1507997 () Bool)

(assert (=> d!693954 e!1507997))

(declare-fun res!1002006 () Bool)

(assert (=> d!693954 (=> res!1002006 e!1507997)))

(assert (=> d!693954 (= res!1002006 (isEmpty!15871 lt!864396))))

(assert (=> d!693954 (= lt!864396 e!1507998)))

(declare-fun c!375253 () Bool)

(assert (=> d!693954 (= c!375253 (isEmpty!15872 (_1!16377 lt!864397)))))

(declare-fun findLongestMatch!673 (Regex!6903 List!28034) tuple2!27672)

(assert (=> d!693954 (= lt!864397 (findLongestMatch!673 (regex!4445 (h!33338 rules!1706)) input!1160))))

(assert (=> d!693954 (ruleValid!1509 thiss!13512 (h!33338 rules!1706))))

(assert (=> d!693954 (= (maxPrefixOneRule!1440 thiss!13512 (h!33338 rules!1706) input!1160) lt!864396)))

(declare-fun b!2360945 () Bool)

(assert (=> b!2360945 (= e!1507997 e!1508000)))

(declare-fun res!1002005 () Bool)

(assert (=> b!2360945 (=> (not res!1002005) (not e!1508000))))

(assert (=> b!2360945 (= res!1002005 (matchR!3024 (regex!4445 (h!33338 rules!1706)) (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864396))))))))

(declare-fun b!2360946 () Bool)

(declare-fun res!1002003 () Bool)

(assert (=> b!2360946 (=> (not res!1002003) (not e!1508000))))

(assert (=> b!2360946 (= res!1002003 (< (size!22121 (_2!16376 (get!8475 lt!864396))) (size!22121 input!1160)))))

(declare-fun b!2360947 () Bool)

(declare-fun res!1002002 () Bool)

(assert (=> b!2360947 (=> (not res!1002002) (not e!1508000))))

(assert (=> b!2360947 (= res!1002002 (= (++!6878 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864396)))) (_2!16376 (get!8475 lt!864396))) input!1160))))

(assert (= (and d!693954 c!375253) b!2360940))

(assert (= (and d!693954 (not c!375253)) b!2360939))

(assert (= (and b!2360939 (not res!1002004)) b!2360944))

(assert (= (and d!693954 (not res!1002006)) b!2360945))

(assert (= (and b!2360945 res!1002005) b!2360947))

(assert (= (and b!2360947 res!1002002) b!2360946))

(assert (= (and b!2360946 res!1002003) b!2360941))

(assert (= (and b!2360941 res!1002008) b!2360943))

(assert (= (and b!2360943 res!1002007) b!2360942))

(declare-fun m!2773283 () Bool)

(assert (=> b!2360947 m!2773283))

(declare-fun m!2773285 () Bool)

(assert (=> b!2360947 m!2773285))

(assert (=> b!2360947 m!2773285))

(declare-fun m!2773287 () Bool)

(assert (=> b!2360947 m!2773287))

(assert (=> b!2360947 m!2773287))

(declare-fun m!2773289 () Bool)

(assert (=> b!2360947 m!2773289))

(assert (=> b!2360945 m!2773283))

(assert (=> b!2360945 m!2773285))

(assert (=> b!2360945 m!2773285))

(assert (=> b!2360945 m!2773287))

(assert (=> b!2360945 m!2773287))

(declare-fun m!2773291 () Bool)

(assert (=> b!2360945 m!2773291))

(assert (=> b!2360943 m!2773283))

(declare-fun m!2773293 () Bool)

(assert (=> b!2360943 m!2773293))

(assert (=> b!2360943 m!2773293))

(declare-fun m!2773295 () Bool)

(assert (=> b!2360943 m!2773295))

(declare-fun m!2773297 () Bool)

(assert (=> b!2360944 m!2773297))

(assert (=> b!2360944 m!2772981))

(assert (=> b!2360944 m!2773297))

(assert (=> b!2360944 m!2772981))

(declare-fun m!2773299 () Bool)

(assert (=> b!2360944 m!2773299))

(declare-fun m!2773301 () Bool)

(assert (=> b!2360944 m!2773301))

(declare-fun m!2773303 () Bool)

(assert (=> b!2360939 m!2773303))

(declare-fun m!2773305 () Bool)

(assert (=> b!2360939 m!2773305))

(declare-fun m!2773307 () Bool)

(assert (=> b!2360939 m!2773307))

(assert (=> b!2360939 m!2773297))

(assert (=> b!2360939 m!2772981))

(assert (=> b!2360939 m!2773299))

(assert (=> b!2360939 m!2773305))

(assert (=> b!2360939 m!2773305))

(declare-fun m!2773309 () Bool)

(assert (=> b!2360939 m!2773309))

(declare-fun m!2773311 () Bool)

(assert (=> b!2360939 m!2773311))

(assert (=> b!2360939 m!2772981))

(assert (=> b!2360939 m!2773305))

(declare-fun m!2773313 () Bool)

(assert (=> b!2360939 m!2773313))

(assert (=> b!2360939 m!2773297))

(assert (=> b!2360946 m!2773283))

(declare-fun m!2773315 () Bool)

(assert (=> b!2360946 m!2773315))

(assert (=> b!2360946 m!2772981))

(declare-fun m!2773317 () Bool)

(assert (=> d!693954 m!2773317))

(declare-fun m!2773319 () Bool)

(assert (=> d!693954 m!2773319))

(declare-fun m!2773321 () Bool)

(assert (=> d!693954 m!2773321))

(assert (=> d!693954 m!2773235))

(assert (=> b!2360941 m!2773283))

(assert (=> b!2360942 m!2773283))

(declare-fun m!2773323 () Bool)

(assert (=> b!2360942 m!2773323))

(assert (=> bm!143647 d!693954))

(declare-fun d!693960 () Bool)

(declare-fun res!1002029 () Bool)

(declare-fun e!1508019 () Bool)

(assert (=> d!693960 (=> res!1002029 e!1508019)))

(assert (=> d!693960 (= res!1002029 ((_ is Nil!27937) rules!1706))))

(assert (=> d!693960 (= (noDuplicateTag!1649 thiss!13512 rules!1706 Nil!27939) e!1508019)))

(declare-fun b!2360980 () Bool)

(declare-fun e!1508020 () Bool)

(assert (=> b!2360980 (= e!1508019 e!1508020)))

(declare-fun res!1002030 () Bool)

(assert (=> b!2360980 (=> (not res!1002030) (not e!1508020))))

(declare-fun contains!4882 (List!28037 String!30755) Bool)

(assert (=> b!2360980 (= res!1002030 (not (contains!4882 Nil!27939 (tag!4935 (h!33338 rules!1706)))))))

(declare-fun b!2360981 () Bool)

(assert (=> b!2360981 (= e!1508020 (noDuplicateTag!1649 thiss!13512 (t!207950 rules!1706) (Cons!27939 (tag!4935 (h!33338 rules!1706)) Nil!27939)))))

(assert (= (and d!693960 (not res!1002029)) b!2360980))

(assert (= (and b!2360980 res!1002030) b!2360981))

(declare-fun m!2773325 () Bool)

(assert (=> b!2360980 m!2773325))

(declare-fun m!2773327 () Bool)

(assert (=> b!2360981 m!2773327))

(assert (=> b!2360734 d!693960))

(declare-fun b!2361052 () Bool)

(declare-fun e!1508059 () Bool)

(assert (=> b!2361052 (= e!1508059 (= (head!5078 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314))))) (c!375220 (regex!4445 (rule!6799 (_1!16376 (get!8475 lt!864314)))))))))

(declare-fun b!2361053 () Bool)

(declare-fun e!1508058 () Bool)

(declare-fun e!1508055 () Bool)

(assert (=> b!2361053 (= e!1508058 e!1508055)))

(declare-fun c!375269 () Bool)

(assert (=> b!2361053 (= c!375269 ((_ is EmptyLang!6903) (regex!4445 (rule!6799 (_1!16376 (get!8475 lt!864314))))))))

(declare-fun b!2361054 () Bool)

(declare-fun res!1002057 () Bool)

(assert (=> b!2361054 (=> (not res!1002057) (not e!1508059))))

(assert (=> b!2361054 (= res!1002057 (isEmpty!15872 (tail!3347 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314)))))))))

(declare-fun b!2361055 () Bool)

(declare-fun res!1002061 () Bool)

(declare-fun e!1508054 () Bool)

(assert (=> b!2361055 (=> res!1002061 e!1508054)))

(assert (=> b!2361055 (= res!1002061 (not ((_ is ElementMatch!6903) (regex!4445 (rule!6799 (_1!16376 (get!8475 lt!864314)))))))))

(assert (=> b!2361055 (= e!1508055 e!1508054)))

(declare-fun b!2361056 () Bool)

(declare-fun e!1508053 () Bool)

(declare-fun e!1508057 () Bool)

(assert (=> b!2361056 (= e!1508053 e!1508057)))

(declare-fun res!1002058 () Bool)

(assert (=> b!2361056 (=> res!1002058 e!1508057)))

(declare-fun call!143659 () Bool)

(assert (=> b!2361056 (= res!1002058 call!143659)))

(declare-fun b!2361057 () Bool)

(declare-fun res!1002056 () Bool)

(assert (=> b!2361057 (=> res!1002056 e!1508057)))

(assert (=> b!2361057 (= res!1002056 (not (isEmpty!15872 (tail!3347 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314))))))))))

(declare-fun b!2361058 () Bool)

(declare-fun e!1508056 () Bool)

(declare-fun nullable!1976 (Regex!6903) Bool)

(assert (=> b!2361058 (= e!1508056 (nullable!1976 (regex!4445 (rule!6799 (_1!16376 (get!8475 lt!864314))))))))

(declare-fun bm!143654 () Bool)

(assert (=> bm!143654 (= call!143659 (isEmpty!15872 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314))))))))

(declare-fun b!2361059 () Bool)

(declare-fun derivativeStep!1635 (Regex!6903 C!13964) Regex!6903)

(assert (=> b!2361059 (= e!1508056 (matchR!3024 (derivativeStep!1635 (regex!4445 (rule!6799 (_1!16376 (get!8475 lt!864314)))) (head!5078 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314)))))) (tail!3347 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314)))))))))

(declare-fun b!2361060 () Bool)

(declare-fun res!1002055 () Bool)

(assert (=> b!2361060 (=> (not res!1002055) (not e!1508059))))

(assert (=> b!2361060 (= res!1002055 (not call!143659))))

(declare-fun b!2361061 () Bool)

(assert (=> b!2361061 (= e!1508054 e!1508053)))

(declare-fun res!1002059 () Bool)

(assert (=> b!2361061 (=> (not res!1002059) (not e!1508053))))

(declare-fun lt!864406 () Bool)

(assert (=> b!2361061 (= res!1002059 (not lt!864406))))

(declare-fun b!2361062 () Bool)

(assert (=> b!2361062 (= e!1508058 (= lt!864406 call!143659))))

(declare-fun b!2361063 () Bool)

(assert (=> b!2361063 (= e!1508055 (not lt!864406))))

(declare-fun d!693962 () Bool)

(assert (=> d!693962 e!1508058))

(declare-fun c!375270 () Bool)

(assert (=> d!693962 (= c!375270 ((_ is EmptyExpr!6903) (regex!4445 (rule!6799 (_1!16376 (get!8475 lt!864314))))))))

(assert (=> d!693962 (= lt!864406 e!1508056)))

(declare-fun c!375271 () Bool)

(assert (=> d!693962 (= c!375271 (isEmpty!15872 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314))))))))

(declare-fun validRegex!2642 (Regex!6903) Bool)

(assert (=> d!693962 (validRegex!2642 (regex!4445 (rule!6799 (_1!16376 (get!8475 lt!864314)))))))

(assert (=> d!693962 (= (matchR!3024 (regex!4445 (rule!6799 (_1!16376 (get!8475 lt!864314)))) (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314))))) lt!864406)))

(declare-fun b!2361064 () Bool)

(assert (=> b!2361064 (= e!1508057 (not (= (head!5078 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864314))))) (c!375220 (regex!4445 (rule!6799 (_1!16376 (get!8475 lt!864314))))))))))

(declare-fun b!2361065 () Bool)

(declare-fun res!1002060 () Bool)

(assert (=> b!2361065 (=> res!1002060 e!1508054)))

(assert (=> b!2361065 (= res!1002060 e!1508059)))

(declare-fun res!1002062 () Bool)

(assert (=> b!2361065 (=> (not res!1002062) (not e!1508059))))

(assert (=> b!2361065 (= res!1002062 lt!864406)))

(assert (= (and d!693962 c!375271) b!2361058))

(assert (= (and d!693962 (not c!375271)) b!2361059))

(assert (= (and d!693962 c!375270) b!2361062))

(assert (= (and d!693962 (not c!375270)) b!2361053))

(assert (= (and b!2361053 c!375269) b!2361063))

(assert (= (and b!2361053 (not c!375269)) b!2361055))

(assert (= (and b!2361055 (not res!1002061)) b!2361065))

(assert (= (and b!2361065 res!1002062) b!2361060))

(assert (= (and b!2361060 res!1002055) b!2361054))

(assert (= (and b!2361054 res!1002057) b!2361052))

(assert (= (and b!2361065 (not res!1002060)) b!2361061))

(assert (= (and b!2361061 res!1002059) b!2361056))

(assert (= (and b!2361056 (not res!1002058)) b!2361057))

(assert (= (and b!2361057 (not res!1002056)) b!2361064))

(assert (= (or b!2361062 b!2361056 b!2361060) bm!143654))

(assert (=> b!2361052 m!2773049))

(declare-fun m!2773349 () Bool)

(assert (=> b!2361052 m!2773349))

(assert (=> b!2361057 m!2773049))

(declare-fun m!2773351 () Bool)

(assert (=> b!2361057 m!2773351))

(assert (=> b!2361057 m!2773351))

(declare-fun m!2773353 () Bool)

(assert (=> b!2361057 m!2773353))

(declare-fun m!2773355 () Bool)

(assert (=> b!2361058 m!2773355))

(assert (=> b!2361064 m!2773049))

(assert (=> b!2361064 m!2773349))

(assert (=> d!693962 m!2773049))

(declare-fun m!2773357 () Bool)

(assert (=> d!693962 m!2773357))

(declare-fun m!2773359 () Bool)

(assert (=> d!693962 m!2773359))

(assert (=> b!2361054 m!2773049))

(assert (=> b!2361054 m!2773351))

(assert (=> b!2361054 m!2773351))

(assert (=> b!2361054 m!2773353))

(assert (=> bm!143654 m!2773049))

(assert (=> bm!143654 m!2773357))

(assert (=> b!2361059 m!2773049))

(assert (=> b!2361059 m!2773349))

(assert (=> b!2361059 m!2773349))

(declare-fun m!2773361 () Bool)

(assert (=> b!2361059 m!2773361))

(assert (=> b!2361059 m!2773049))

(assert (=> b!2361059 m!2773351))

(assert (=> b!2361059 m!2773361))

(assert (=> b!2361059 m!2773351))

(declare-fun m!2773363 () Bool)

(assert (=> b!2361059 m!2773363))

(assert (=> b!2360704 d!693962))

(assert (=> b!2360704 d!693896))

(assert (=> b!2360704 d!693906))

(assert (=> b!2360704 d!693908))

(declare-fun d!693964 () Bool)

(assert (=> d!693964 true))

(declare-fun order!15479 () Int)

(declare-fun lambda!86851 () Int)

(declare-fun dynLambda!12039 (Int Int) Int)

(assert (=> d!693964 (< (dynLambda!12037 order!15475 (toValue!6289 (transformation!4445 (h!33338 rules!1706)))) (dynLambda!12039 order!15479 lambda!86851))))

(declare-fun Forall2!739 (Int) Bool)

(assert (=> d!693964 (= (equivClasses!1737 (toChars!6148 (transformation!4445 (h!33338 rules!1706))) (toValue!6289 (transformation!4445 (h!33338 rules!1706)))) (Forall2!739 lambda!86851))))

(declare-fun bs!460541 () Bool)

(assert (= bs!460541 d!693964))

(declare-fun m!2773365 () Bool)

(assert (=> bs!460541 m!2773365))

(assert (=> b!2360731 d!693964))

(declare-fun b!2361070 () Bool)

(declare-fun e!1508063 () Option!5452)

(declare-fun lt!864409 () Option!5452)

(declare-fun lt!864408 () Option!5452)

(assert (=> b!2361070 (= e!1508063 (ite (and ((_ is None!5451) lt!864409) ((_ is None!5451) lt!864408)) None!5451 (ite ((_ is None!5451) lt!864408) lt!864409 (ite ((_ is None!5451) lt!864409) lt!864408 (ite (>= (size!22120 (_1!16376 (v!30855 lt!864409))) (size!22120 (_1!16376 (v!30855 lt!864408)))) lt!864409 lt!864408)))))))

(declare-fun call!143660 () Option!5452)

(assert (=> b!2361070 (= lt!864409 call!143660)))

(assert (=> b!2361070 (= lt!864408 (maxPrefix!2272 thiss!13512 (t!207950 (t!207950 rules!1706)) input!1160))))

(declare-fun b!2361071 () Bool)

(declare-fun res!1002067 () Bool)

(declare-fun e!1508064 () Bool)

(assert (=> b!2361071 (=> (not res!1002067) (not e!1508064))))

(declare-fun lt!864407 () Option!5452)

(assert (=> b!2361071 (= res!1002067 (= (value!141558 (_1!16376 (get!8475 lt!864407))) (apply!6712 (transformation!4445 (rule!6799 (_1!16376 (get!8475 lt!864407)))) (seqFromList!3131 (originalCharacters!5211 (_1!16376 (get!8475 lt!864407)))))))))

(declare-fun b!2361072 () Bool)

(assert (=> b!2361072 (= e!1508064 (contains!4880 (t!207950 rules!1706) (rule!6799 (_1!16376 (get!8475 lt!864407)))))))

(declare-fun d!693966 () Bool)

(declare-fun e!1508062 () Bool)

(assert (=> d!693966 e!1508062))

(declare-fun res!1002066 () Bool)

(assert (=> d!693966 (=> res!1002066 e!1508062)))

(assert (=> d!693966 (= res!1002066 (isEmpty!15871 lt!864407))))

(assert (=> d!693966 (= lt!864407 e!1508063)))

(declare-fun c!375272 () Bool)

(assert (=> d!693966 (= c!375272 (and ((_ is Cons!27937) (t!207950 rules!1706)) ((_ is Nil!27937) (t!207950 (t!207950 rules!1706)))))))

(declare-fun lt!864411 () Unit!40845)

(declare-fun lt!864410 () Unit!40845)

(assert (=> d!693966 (= lt!864411 lt!864410)))

(assert (=> d!693966 (isPrefix!2407 input!1160 input!1160)))

(assert (=> d!693966 (= lt!864410 (lemmaIsPrefixRefl!1533 input!1160 input!1160))))

(assert (=> d!693966 (rulesValidInductive!1575 thiss!13512 (t!207950 rules!1706))))

(assert (=> d!693966 (= (maxPrefix!2272 thiss!13512 (t!207950 rules!1706) input!1160) lt!864407)))

(declare-fun b!2361073 () Bool)

(assert (=> b!2361073 (= e!1508062 e!1508064)))

(declare-fun res!1002071 () Bool)

(assert (=> b!2361073 (=> (not res!1002071) (not e!1508064))))

(assert (=> b!2361073 (= res!1002071 (isDefined!4280 lt!864407))))

(declare-fun b!2361074 () Bool)

(declare-fun res!1002070 () Bool)

(assert (=> b!2361074 (=> (not res!1002070) (not e!1508064))))

(assert (=> b!2361074 (= res!1002070 (< (size!22121 (_2!16376 (get!8475 lt!864407))) (size!22121 input!1160)))))

(declare-fun b!2361075 () Bool)

(declare-fun res!1002065 () Bool)

(assert (=> b!2361075 (=> (not res!1002065) (not e!1508064))))

(assert (=> b!2361075 (= res!1002065 (= (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864407)))) (originalCharacters!5211 (_1!16376 (get!8475 lt!864407)))))))

(declare-fun b!2361076 () Bool)

(declare-fun res!1002069 () Bool)

(assert (=> b!2361076 (=> (not res!1002069) (not e!1508064))))

(assert (=> b!2361076 (= res!1002069 (= (++!6878 (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864407)))) (_2!16376 (get!8475 lt!864407))) input!1160))))

(declare-fun bm!143655 () Bool)

(assert (=> bm!143655 (= call!143660 (maxPrefixOneRule!1440 thiss!13512 (h!33338 (t!207950 rules!1706)) input!1160))))

(declare-fun b!2361077 () Bool)

(assert (=> b!2361077 (= e!1508063 call!143660)))

(declare-fun b!2361078 () Bool)

(declare-fun res!1002068 () Bool)

(assert (=> b!2361078 (=> (not res!1002068) (not e!1508064))))

(assert (=> b!2361078 (= res!1002068 (matchR!3024 (regex!4445 (rule!6799 (_1!16376 (get!8475 lt!864407)))) (list!11083 (charsOf!2805 (_1!16376 (get!8475 lt!864407))))))))

(assert (= (and d!693966 c!375272) b!2361077))

(assert (= (and d!693966 (not c!375272)) b!2361070))

(assert (= (or b!2361077 b!2361070) bm!143655))

(assert (= (and d!693966 (not res!1002066)) b!2361073))

(assert (= (and b!2361073 res!1002071) b!2361075))

(assert (= (and b!2361075 res!1002065) b!2361074))

(assert (= (and b!2361074 res!1002070) b!2361076))

(assert (= (and b!2361076 res!1002069) b!2361071))

(assert (= (and b!2361071 res!1002067) b!2361078))

(assert (= (and b!2361078 res!1002068) b!2361072))

(declare-fun m!2773367 () Bool)

(assert (=> b!2361073 m!2773367))

(declare-fun m!2773369 () Bool)

(assert (=> b!2361071 m!2773369))

(declare-fun m!2773371 () Bool)

(assert (=> b!2361071 m!2773371))

(assert (=> b!2361071 m!2773371))

(declare-fun m!2773373 () Bool)

(assert (=> b!2361071 m!2773373))

(assert (=> b!2361078 m!2773369))

(declare-fun m!2773375 () Bool)

(assert (=> b!2361078 m!2773375))

(assert (=> b!2361078 m!2773375))

(declare-fun m!2773377 () Bool)

(assert (=> b!2361078 m!2773377))

(assert (=> b!2361078 m!2773377))

(declare-fun m!2773379 () Bool)

(assert (=> b!2361078 m!2773379))

(assert (=> b!2361076 m!2773369))

(assert (=> b!2361076 m!2773375))

(assert (=> b!2361076 m!2773375))

(assert (=> b!2361076 m!2773377))

(assert (=> b!2361076 m!2773377))

(declare-fun m!2773381 () Bool)

(assert (=> b!2361076 m!2773381))

(assert (=> b!2361075 m!2773369))

(assert (=> b!2361075 m!2773375))

(assert (=> b!2361075 m!2773375))

(assert (=> b!2361075 m!2773377))

(assert (=> b!2361072 m!2773369))

(declare-fun m!2773383 () Bool)

(assert (=> b!2361072 m!2773383))

(assert (=> b!2361074 m!2773369))

(declare-fun m!2773385 () Bool)

(assert (=> b!2361074 m!2773385))

(assert (=> b!2361074 m!2772981))

(declare-fun m!2773387 () Bool)

(assert (=> b!2361070 m!2773387))

(declare-fun m!2773389 () Bool)

(assert (=> d!693966 m!2773389))

(assert (=> d!693966 m!2773067))

(assert (=> d!693966 m!2773069))

(assert (=> d!693966 m!2773237))

(declare-fun m!2773391 () Bool)

(assert (=> bm!143655 m!2773391))

(assert (=> b!2360696 d!693966))

(declare-fun d!693968 () Bool)

(declare-fun lt!864412 () Int)

(assert (=> d!693968 (>= lt!864412 0)))

(declare-fun e!1508065 () Int)

(assert (=> d!693968 (= lt!864412 e!1508065)))

(declare-fun c!375273 () Bool)

(assert (=> d!693968 (= c!375273 ((_ is Nil!27936) (t!207949 (_2!16376 (v!30855 lt!864280)))))))

(assert (=> d!693968 (= (size!22121 (t!207949 (_2!16376 (v!30855 lt!864280)))) lt!864412)))

(declare-fun b!2361079 () Bool)

(assert (=> b!2361079 (= e!1508065 0)))

(declare-fun b!2361080 () Bool)

(assert (=> b!2361080 (= e!1508065 (+ 1 (size!22121 (t!207949 (t!207949 (_2!16376 (v!30855 lt!864280)))))))))

(assert (= (and d!693968 c!375273) b!2361079))

(assert (= (and d!693968 (not c!375273)) b!2361080))

(declare-fun m!2773393 () Bool)

(assert (=> b!2361080 m!2773393))

(assert (=> b!2360631 d!693968))

(declare-fun b!2361081 () Bool)

(declare-fun e!1508066 () Bool)

(declare-fun tp!755045 () Bool)

(assert (=> b!2361081 (= e!1508066 (and tp_is_empty!11223 tp!755045))))

(assert (=> b!2360739 (= tp!754976 e!1508066)))

(assert (= (and b!2360739 ((_ is Cons!27936) (t!207949 (t!207949 input!1160)))) b!2361081))

(declare-fun b!2361085 () Bool)

(declare-fun e!1508067 () Bool)

(declare-fun tp!755048 () Bool)

(declare-fun tp!755047 () Bool)

(assert (=> b!2361085 (= e!1508067 (and tp!755048 tp!755047))))

(assert (=> b!2360752 (= tp!754991 e!1508067)))

(declare-fun b!2361082 () Bool)

(assert (=> b!2361082 (= e!1508067 tp_is_empty!11223)))

(declare-fun b!2361084 () Bool)

(declare-fun tp!755050 () Bool)

(assert (=> b!2361084 (= e!1508067 tp!755050)))

(declare-fun b!2361083 () Bool)

(declare-fun tp!755049 () Bool)

(declare-fun tp!755046 () Bool)

(assert (=> b!2361083 (= e!1508067 (and tp!755049 tp!755046))))

(assert (= (and b!2360752 ((_ is ElementMatch!6903) (reg!7232 (regex!4445 (h!33338 rules!1706))))) b!2361082))

(assert (= (and b!2360752 ((_ is Concat!11535) (reg!7232 (regex!4445 (h!33338 rules!1706))))) b!2361083))

(assert (= (and b!2360752 ((_ is Star!6903) (reg!7232 (regex!4445 (h!33338 rules!1706))))) b!2361084))

(assert (= (and b!2360752 ((_ is Union!6903) (reg!7232 (regex!4445 (h!33338 rules!1706))))) b!2361085))

(declare-fun b!2361089 () Bool)

(declare-fun e!1508068 () Bool)

(declare-fun tp!755053 () Bool)

(declare-fun tp!755052 () Bool)

(assert (=> b!2361089 (= e!1508068 (and tp!755053 tp!755052))))

(assert (=> b!2360753 (= tp!754989 e!1508068)))

(declare-fun b!2361086 () Bool)

(assert (=> b!2361086 (= e!1508068 tp_is_empty!11223)))

(declare-fun b!2361088 () Bool)

(declare-fun tp!755055 () Bool)

(assert (=> b!2361088 (= e!1508068 tp!755055)))

(declare-fun b!2361087 () Bool)

(declare-fun tp!755054 () Bool)

(declare-fun tp!755051 () Bool)

(assert (=> b!2361087 (= e!1508068 (and tp!755054 tp!755051))))

(assert (= (and b!2360753 ((_ is ElementMatch!6903) (regOne!14319 (regex!4445 (h!33338 rules!1706))))) b!2361086))

(assert (= (and b!2360753 ((_ is Concat!11535) (regOne!14319 (regex!4445 (h!33338 rules!1706))))) b!2361087))

(assert (= (and b!2360753 ((_ is Star!6903) (regOne!14319 (regex!4445 (h!33338 rules!1706))))) b!2361088))

(assert (= (and b!2360753 ((_ is Union!6903) (regOne!14319 (regex!4445 (h!33338 rules!1706))))) b!2361089))

(declare-fun b!2361093 () Bool)

(declare-fun e!1508069 () Bool)

(declare-fun tp!755058 () Bool)

(declare-fun tp!755057 () Bool)

(assert (=> b!2361093 (= e!1508069 (and tp!755058 tp!755057))))

(assert (=> b!2360753 (= tp!754988 e!1508069)))

(declare-fun b!2361090 () Bool)

(assert (=> b!2361090 (= e!1508069 tp_is_empty!11223)))

(declare-fun b!2361092 () Bool)

(declare-fun tp!755060 () Bool)

(assert (=> b!2361092 (= e!1508069 tp!755060)))

(declare-fun b!2361091 () Bool)

(declare-fun tp!755059 () Bool)

(declare-fun tp!755056 () Bool)

(assert (=> b!2361091 (= e!1508069 (and tp!755059 tp!755056))))

(assert (= (and b!2360753 ((_ is ElementMatch!6903) (regTwo!14319 (regex!4445 (h!33338 rules!1706))))) b!2361090))

(assert (= (and b!2360753 ((_ is Concat!11535) (regTwo!14319 (regex!4445 (h!33338 rules!1706))))) b!2361091))

(assert (= (and b!2360753 ((_ is Star!6903) (regTwo!14319 (regex!4445 (h!33338 rules!1706))))) b!2361092))

(assert (= (and b!2360753 ((_ is Union!6903) (regTwo!14319 (regex!4445 (h!33338 rules!1706))))) b!2361093))

(declare-fun b!2361096 () Bool)

(declare-fun b_free!70521 () Bool)

(declare-fun b_next!71225 () Bool)

(assert (=> b!2361096 (= b_free!70521 (not b_next!71225))))

(declare-fun tb!138797 () Bool)

(declare-fun t!207974 () Bool)

(assert (=> (and b!2361096 (= (toValue!6289 (transformation!4445 (h!33338 (t!207950 (t!207950 rules!1706))))) (toValue!6289 (transformation!4445 (rule!6799 (_1!16376 (get!8475 lt!864314)))))) t!207974) tb!138797))

(declare-fun result!169748 () Bool)

(assert (= result!169748 result!169738))

(assert (=> d!693926 t!207974))

(declare-fun tp!755063 () Bool)

(declare-fun b_and!185493 () Bool)

(assert (=> b!2361096 (= tp!755063 (and (=> t!207974 result!169748) b_and!185493))))

(declare-fun b_free!70523 () Bool)

(declare-fun b_next!71227 () Bool)

(assert (=> b!2361096 (= b_free!70523 (not b_next!71227))))

(declare-fun tb!138799 () Bool)

(declare-fun t!207976 () Bool)

(assert (=> (and b!2361096 (= (toChars!6148 (transformation!4445 (h!33338 (t!207950 (t!207950 rules!1706))))) (toChars!6148 (transformation!4445 (rule!6799 (_1!16376 (get!8475 lt!864314)))))) t!207976) tb!138799))

(declare-fun result!169750 () Bool)

(assert (= result!169750 result!169726))

(assert (=> d!693908 t!207976))

(declare-fun b_and!185495 () Bool)

(declare-fun tp!755061 () Bool)

(assert (=> b!2361096 (= tp!755061 (and (=> t!207976 result!169750) b_and!185495))))

(declare-fun e!1508071 () Bool)

(assert (=> b!2361096 (= e!1508071 (and tp!755063 tp!755061))))

(declare-fun tp!755064 () Bool)

(declare-fun e!1508072 () Bool)

(declare-fun b!2361095 () Bool)

(assert (=> b!2361095 (= e!1508072 (and tp!755064 (inv!38158 (tag!4935 (h!33338 (t!207950 (t!207950 rules!1706))))) (inv!38160 (transformation!4445 (h!33338 (t!207950 (t!207950 rules!1706))))) e!1508071))))

(declare-fun b!2361094 () Bool)

(declare-fun e!1508073 () Bool)

(declare-fun tp!755062 () Bool)

(assert (=> b!2361094 (= e!1508073 (and e!1508072 tp!755062))))

(assert (=> b!2360762 (= tp!755001 e!1508073)))

(assert (= b!2361095 b!2361096))

(assert (= b!2361094 b!2361095))

(assert (= (and b!2360762 ((_ is Cons!27937) (t!207950 (t!207950 rules!1706)))) b!2361094))

(declare-fun m!2773395 () Bool)

(assert (=> b!2361095 m!2773395))

(declare-fun m!2773397 () Bool)

(assert (=> b!2361095 m!2773397))

(declare-fun b!2361100 () Bool)

(declare-fun e!1508074 () Bool)

(declare-fun tp!755067 () Bool)

(declare-fun tp!755066 () Bool)

(assert (=> b!2361100 (= e!1508074 (and tp!755067 tp!755066))))

(assert (=> b!2360763 (= tp!755003 e!1508074)))

(declare-fun b!2361097 () Bool)

(assert (=> b!2361097 (= e!1508074 tp_is_empty!11223)))

(declare-fun b!2361099 () Bool)

(declare-fun tp!755069 () Bool)

(assert (=> b!2361099 (= e!1508074 tp!755069)))

(declare-fun b!2361098 () Bool)

(declare-fun tp!755068 () Bool)

(declare-fun tp!755065 () Bool)

(assert (=> b!2361098 (= e!1508074 (and tp!755068 tp!755065))))

(assert (= (and b!2360763 ((_ is ElementMatch!6903) (regex!4445 (h!33338 (t!207950 rules!1706))))) b!2361097))

(assert (= (and b!2360763 ((_ is Concat!11535) (regex!4445 (h!33338 (t!207950 rules!1706))))) b!2361098))

(assert (= (and b!2360763 ((_ is Star!6903) (regex!4445 (h!33338 (t!207950 rules!1706))))) b!2361099))

(assert (= (and b!2360763 ((_ is Union!6903) (regex!4445 (h!33338 (t!207950 rules!1706))))) b!2361100))

(declare-fun b!2361104 () Bool)

(declare-fun e!1508075 () Bool)

(declare-fun tp!755072 () Bool)

(declare-fun tp!755071 () Bool)

(assert (=> b!2361104 (= e!1508075 (and tp!755072 tp!755071))))

(assert (=> b!2360751 (= tp!754990 e!1508075)))

(declare-fun b!2361101 () Bool)

(assert (=> b!2361101 (= e!1508075 tp_is_empty!11223)))

(declare-fun b!2361103 () Bool)

(declare-fun tp!755074 () Bool)

(assert (=> b!2361103 (= e!1508075 tp!755074)))

(declare-fun b!2361102 () Bool)

(declare-fun tp!755073 () Bool)

(declare-fun tp!755070 () Bool)

(assert (=> b!2361102 (= e!1508075 (and tp!755073 tp!755070))))

(assert (= (and b!2360751 ((_ is ElementMatch!6903) (regOne!14318 (regex!4445 (h!33338 rules!1706))))) b!2361101))

(assert (= (and b!2360751 ((_ is Concat!11535) (regOne!14318 (regex!4445 (h!33338 rules!1706))))) b!2361102))

(assert (= (and b!2360751 ((_ is Star!6903) (regOne!14318 (regex!4445 (h!33338 rules!1706))))) b!2361103))

(assert (= (and b!2360751 ((_ is Union!6903) (regOne!14318 (regex!4445 (h!33338 rules!1706))))) b!2361104))

(declare-fun b!2361108 () Bool)

(declare-fun e!1508076 () Bool)

(declare-fun tp!755077 () Bool)

(declare-fun tp!755076 () Bool)

(assert (=> b!2361108 (= e!1508076 (and tp!755077 tp!755076))))

(assert (=> b!2360751 (= tp!754987 e!1508076)))

(declare-fun b!2361105 () Bool)

(assert (=> b!2361105 (= e!1508076 tp_is_empty!11223)))

(declare-fun b!2361107 () Bool)

(declare-fun tp!755079 () Bool)

(assert (=> b!2361107 (= e!1508076 tp!755079)))

(declare-fun b!2361106 () Bool)

(declare-fun tp!755078 () Bool)

(declare-fun tp!755075 () Bool)

(assert (=> b!2361106 (= e!1508076 (and tp!755078 tp!755075))))

(assert (= (and b!2360751 ((_ is ElementMatch!6903) (regTwo!14318 (regex!4445 (h!33338 rules!1706))))) b!2361105))

(assert (= (and b!2360751 ((_ is Concat!11535) (regTwo!14318 (regex!4445 (h!33338 rules!1706))))) b!2361106))

(assert (= (and b!2360751 ((_ is Star!6903) (regTwo!14318 (regex!4445 (h!33338 rules!1706))))) b!2361107))

(assert (= (and b!2360751 ((_ is Union!6903) (regTwo!14318 (regex!4445 (h!33338 rules!1706))))) b!2361108))

(check-sat (not d!693910) (not b!2361083) (not b!2361058) b_and!185479 (not b!2360941) (not b!2361064) (not b!2361103) (not b!2361054) (not b!2360886) (not b!2360790) (not b_next!71209) (not b!2360812) (not b!2361104) (not b!2360893) (not tb!138781) (not d!693964) (not d!693962) b_and!185493 (not b!2361093) (not b!2360887) (not bm!143655) (not b_next!71211) (not b_next!71219) b_and!185487 (not b!2361100) (not d!693906) (not b!2360947) (not b!2361084) (not b_lambda!73781) (not b!2361106) (not b!2361072) (not bm!143654) (not b!2361099) (not d!693936) (not b!2361102) b_and!185485 (not b!2361092) (not tb!138789) (not b!2361094) (not b!2361098) (not b!2360851) (not d!693966) (not d!693908) (not b!2360945) (not d!693900) (not b!2361052) (not b_next!71227) (not b!2360823) (not b!2361088) (not b!2360788) b_and!185477 (not b_next!71225) (not b!2360944) (not b_next!71217) tp_is_empty!11223 (not b!2361108) (not b!2360946) (not b!2361073) (not b!2361080) (not b!2361081) (not b!2361074) b_and!185495 (not d!693934) (not d!693950) (not b!2360942) (not b!2361085) (not b!2360981) (not b!2361075) (not b!2361070) (not b!2361078) (not b!2360813) (not b!2360885) (not d!693924) (not b!2361071) (not b!2360980) (not d!693952) (not b!2361087) (not d!693918) (not b!2360854) (not d!693930) (not b!2361091) (not b!2361089) (not b!2360939) (not b!2361057) (not b!2361107) (not d!693954) (not b!2361095) (not b!2361059) (not b_lambda!73785) (not b!2361076) (not b!2360892) (not b!2360943))
(check-sat (not b_next!71209) b_and!185493 b_and!185485 (not b_next!71227) b_and!185495 b_and!185479 (not b_next!71211) (not b_next!71219) b_and!185487 b_and!185477 (not b_next!71225) (not b_next!71217))
