; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189172 () Bool)

(assert start!189172)

(declare-fun b!1889549 () Bool)

(declare-fun b_free!52525 () Bool)

(declare-fun b_next!53229 () Bool)

(assert (=> b!1889549 (= b_free!52525 (not b_next!53229))))

(declare-fun tp!538815 () Bool)

(declare-fun b_and!145339 () Bool)

(assert (=> b!1889549 (= tp!538815 b_and!145339)))

(declare-fun b_free!52527 () Bool)

(declare-fun b_next!53231 () Bool)

(assert (=> b!1889549 (= b_free!52527 (not b_next!53231))))

(declare-fun tp!538817 () Bool)

(declare-fun b_and!145341 () Bool)

(assert (=> b!1889549 (= tp!538817 b_and!145341)))

(declare-fun b!1889547 () Bool)

(declare-fun b_free!52529 () Bool)

(declare-fun b_next!53233 () Bool)

(assert (=> b!1889547 (= b_free!52529 (not b_next!53233))))

(declare-fun tp!538819 () Bool)

(declare-fun b_and!145343 () Bool)

(assert (=> b!1889547 (= tp!538819 b_and!145343)))

(declare-fun b_free!52531 () Bool)

(declare-fun b_next!53235 () Bool)

(assert (=> b!1889547 (= b_free!52531 (not b_next!53235))))

(declare-fun tp!538809 () Bool)

(declare-fun b_and!145345 () Bool)

(assert (=> b!1889547 (= tp!538809 b_and!145345)))

(declare-fun b!1889534 () Bool)

(declare-fun b_free!52533 () Bool)

(declare-fun b_next!53237 () Bool)

(assert (=> b!1889534 (= b_free!52533 (not b_next!53237))))

(declare-fun tp!538808 () Bool)

(declare-fun b_and!145347 () Bool)

(assert (=> b!1889534 (= tp!538808 b_and!145347)))

(declare-fun b_free!52535 () Bool)

(declare-fun b_next!53239 () Bool)

(assert (=> b!1889534 (= b_free!52535 (not b_next!53239))))

(declare-fun tp!538816 () Bool)

(declare-fun b_and!145349 () Bool)

(assert (=> b!1889534 (= tp!538816 b_and!145349)))

(declare-fun b!1889560 () Bool)

(declare-fun e!1206066 () Bool)

(assert (=> b!1889560 (= e!1206066 true)))

(declare-fun b!1889559 () Bool)

(declare-fun e!1206065 () Bool)

(assert (=> b!1889559 (= e!1206065 e!1206066)))

(declare-fun b!1889558 () Bool)

(declare-fun e!1206064 () Bool)

(assert (=> b!1889558 (= e!1206064 e!1206065)))

(declare-fun b!1889533 () Bool)

(assert (=> b!1889533 e!1206064))

(assert (= b!1889559 b!1889560))

(assert (= b!1889558 b!1889559))

(declare-datatypes ((List!21183 0))(
  ( (Nil!21101) (Cons!21101 (h!26502 (_ BitVec 16)) (t!175242 List!21183)) )
))
(declare-datatypes ((TokenValue!3866 0))(
  ( (FloatLiteralValue!7732 (text!27507 List!21183)) (TokenValueExt!3865 (__x!13230 Int)) (Broken!19330 (value!117870 List!21183)) (Object!3947) (End!3866) (Def!3866) (Underscore!3866) (Match!3866) (Else!3866) (Error!3866) (Case!3866) (If!3866) (Extends!3866) (Abstract!3866) (Class!3866) (Val!3866) (DelimiterValue!7732 (del!3926 List!21183)) (KeywordValue!3872 (value!117871 List!21183)) (CommentValue!7732 (value!117872 List!21183)) (WhitespaceValue!7732 (value!117873 List!21183)) (IndentationValue!3866 (value!117874 List!21183)) (String!24447) (Int32!3866) (Broken!19331 (value!117875 List!21183)) (Boolean!3867) (Unit!35507) (OperatorValue!3869 (op!3926 List!21183)) (IdentifierValue!7732 (value!117876 List!21183)) (IdentifierValue!7733 (value!117877 List!21183)) (WhitespaceValue!7733 (value!117878 List!21183)) (True!7732) (False!7732) (Broken!19332 (value!117879 List!21183)) (Broken!19333 (value!117880 List!21183)) (True!7733) (RightBrace!3866) (RightBracket!3866) (Colon!3866) (Null!3866) (Comma!3866) (LeftBracket!3866) (False!7733) (LeftBrace!3866) (ImaginaryLiteralValue!3866 (text!27508 List!21183)) (StringLiteralValue!11598 (value!117881 List!21183)) (EOFValue!3866 (value!117882 List!21183)) (IdentValue!3866 (value!117883 List!21183)) (DelimiterValue!7733 (value!117884 List!21183)) (DedentValue!3866 (value!117885 List!21183)) (NewLineValue!3866 (value!117886 List!21183)) (IntegerValue!11598 (value!117887 (_ BitVec 32)) (text!27509 List!21183)) (IntegerValue!11599 (value!117888 Int) (text!27510 List!21183)) (Times!3866) (Or!3866) (Equal!3866) (Minus!3866) (Broken!19334 (value!117889 List!21183)) (And!3866) (Div!3866) (LessEqual!3866) (Mod!3866) (Concat!9021) (Not!3866) (Plus!3866) (SpaceValue!3866 (value!117890 List!21183)) (IntegerValue!11600 (value!117891 Int) (text!27511 List!21183)) (StringLiteralValue!11599 (text!27512 List!21183)) (FloatLiteralValue!7733 (text!27513 List!21183)) (BytesLiteralValue!3866 (value!117892 List!21183)) (CommentValue!7733 (value!117893 List!21183)) (StringLiteralValue!11600 (value!117894 List!21183)) (ErrorTokenValue!3866 (msg!3927 List!21183)) )
))
(declare-datatypes ((C!10456 0))(
  ( (C!10457 (val!6180 Int)) )
))
(declare-datatypes ((List!21184 0))(
  ( (Nil!21102) (Cons!21102 (h!26503 C!10456) (t!175243 List!21184)) )
))
(declare-datatypes ((IArray!14011 0))(
  ( (IArray!14012 (innerList!7063 List!21184)) )
))
(declare-datatypes ((Conc!7003 0))(
  ( (Node!7003 (left!16934 Conc!7003) (right!17264 Conc!7003) (csize!14236 Int) (cheight!7214 Int)) (Leaf!10331 (xs!9893 IArray!14011) (csize!14237 Int)) (Empty!7003) )
))
(declare-datatypes ((BalanceConc!13822 0))(
  ( (BalanceConc!13823 (c!308217 Conc!7003)) )
))
(declare-datatypes ((Regex!5155 0))(
  ( (ElementMatch!5155 (c!308218 C!10456)) (Concat!9022 (regOne!10822 Regex!5155) (regTwo!10822 Regex!5155)) (EmptyExpr!5155) (Star!5155 (reg!5484 Regex!5155)) (EmptyLang!5155) (Union!5155 (regOne!10823 Regex!5155) (regTwo!10823 Regex!5155)) )
))
(declare-datatypes ((TokenValueInjection!7316 0))(
  ( (TokenValueInjection!7317 (toValue!5335 Int) (toChars!5194 Int)) )
))
(declare-datatypes ((String!24448 0))(
  ( (String!24449 (value!117895 String)) )
))
(declare-datatypes ((Rule!7260 0))(
  ( (Rule!7261 (regex!3730 Regex!5155) (tag!4144 String!24448) (isSeparator!3730 Bool) (transformation!3730 TokenValueInjection!7316)) )
))
(declare-datatypes ((List!21185 0))(
  ( (Nil!21103) (Cons!21103 (h!26504 Rule!7260) (t!175244 List!21185)) )
))
(declare-fun rules!4265 () List!21185)

(get-info :version)

(assert (= (and b!1889533 ((_ is Cons!21103) rules!4265)) b!1889558))

(declare-fun order!13337 () Int)

(declare-fun order!13335 () Int)

(declare-fun lambda!73891 () Int)

(declare-fun dynLambda!10262 (Int Int) Int)

(declare-fun dynLambda!10263 (Int Int) Int)

(assert (=> b!1889560 (< (dynLambda!10262 order!13335 (toValue!5335 (transformation!3730 (h!26504 rules!4265)))) (dynLambda!10263 order!13337 lambda!73891))))

(declare-fun order!13339 () Int)

(declare-fun dynLambda!10264 (Int Int) Int)

(assert (=> b!1889560 (< (dynLambda!10264 order!13339 (toChars!5194 (transformation!3730 (h!26504 rules!4265)))) (dynLambda!10263 order!13337 lambda!73891))))

(assert (=> b!1889533 true))

(declare-fun e!1206040 () Bool)

(declare-fun e!1206045 () Bool)

(assert (=> b!1889533 (= e!1206040 e!1206045)))

(declare-fun res!843863 () Bool)

(assert (=> b!1889533 (=> (not res!843863) (not e!1206045))))

(declare-datatypes ((Token!7012 0))(
  ( (Token!7013 (value!117896 TokenValue!3866) (rule!5923 Rule!7260) (size!16729 Int) (originalCharacters!4537 List!21184)) )
))
(declare-datatypes ((List!21186 0))(
  ( (Nil!21104) (Cons!21104 (h!26505 Token!7012) (t!175245 List!21186)) )
))
(declare-fun ts1!17 () List!21186)

(declare-fun forall!4431 (List!21186 Int) Bool)

(assert (=> b!1889533 (= res!843863 (forall!4431 ts1!17 lambda!73891))))

(declare-fun e!1206054 () Bool)

(assert (=> b!1889534 (= e!1206054 (and tp!538808 tp!538816))))

(declare-fun e!1206051 () Bool)

(declare-fun tp!538814 () Bool)

(declare-fun b!1889535 () Bool)

(declare-fun inv!28140 (String!24448) Bool)

(declare-fun inv!28143 (TokenValueInjection!7316) Bool)

(assert (=> b!1889535 (= e!1206051 (and tp!538814 (inv!28140 (tag!4144 (h!26504 rules!4265))) (inv!28143 (transformation!3730 (h!26504 rules!4265))) e!1206054))))

(declare-fun b!1889537 () Bool)

(declare-fun e!1206056 () Bool)

(declare-fun tp!538820 () Bool)

(assert (=> b!1889537 (= e!1206056 (and e!1206051 tp!538820))))

(declare-fun b!1889538 () Bool)

(declare-fun e!1206055 () Bool)

(declare-fun tp!538807 () Bool)

(declare-fun e!1206052 () Bool)

(assert (=> b!1889538 (= e!1206055 (and tp!538807 (inv!28140 (tag!4144 (rule!5923 (h!26505 ts1!17)))) (inv!28143 (transformation!3730 (rule!5923 (h!26505 ts1!17)))) e!1206052))))

(declare-fun b!1889539 () Bool)

(declare-fun ts2!17 () List!21186)

(assert (=> b!1889539 (= e!1206045 (not (forall!4431 ts2!17 lambda!73891)))))

(declare-fun b!1889540 () Bool)

(declare-fun tp!538810 () Bool)

(declare-fun e!1206046 () Bool)

(declare-fun inv!21 (TokenValue!3866) Bool)

(assert (=> b!1889540 (= e!1206046 (and (inv!21 (value!117896 (h!26505 ts1!17))) e!1206055 tp!538810))))

(declare-fun b!1889541 () Bool)

(declare-fun tp!538812 () Bool)

(declare-fun e!1206041 () Bool)

(declare-fun e!1206053 () Bool)

(assert (=> b!1889541 (= e!1206053 (and (inv!21 (value!117896 (h!26505 ts2!17))) e!1206041 tp!538812))))

(declare-fun b!1889536 () Bool)

(declare-fun res!843860 () Bool)

(assert (=> b!1889536 (=> (not res!843860) (not e!1206040))))

(declare-fun isEmpty!12997 (List!21185) Bool)

(assert (=> b!1889536 (= res!843860 (not (isEmpty!12997 rules!4265)))))

(declare-fun res!843861 () Bool)

(assert (=> start!189172 (=> (not res!843861) (not e!1206040))))

(declare-datatypes ((LexerInterface!3343 0))(
  ( (LexerInterfaceExt!3340 (__x!13231 Int)) (Lexer!3341) )
))
(declare-fun thiss!27307 () LexerInterface!3343)

(assert (=> start!189172 (= res!843861 ((_ is Lexer!3341) thiss!27307))))

(assert (=> start!189172 e!1206040))

(assert (=> start!189172 true))

(assert (=> start!189172 e!1206056))

(declare-fun e!1206049 () Bool)

(assert (=> start!189172 e!1206049))

(declare-fun e!1206044 () Bool)

(assert (=> start!189172 e!1206044))

(declare-fun b!1889542 () Bool)

(declare-fun res!843859 () Bool)

(assert (=> b!1889542 (=> (not res!843859) (not e!1206040))))

(declare-fun rulesProduceEachTokenIndividuallyList!1100 (LexerInterface!3343 List!21185 List!21186) Bool)

(assert (=> b!1889542 (= res!843859 (rulesProduceEachTokenIndividuallyList!1100 thiss!27307 rules!4265 ts1!17))))

(declare-fun b!1889543 () Bool)

(declare-fun res!843862 () Bool)

(assert (=> b!1889543 (=> (not res!843862) (not e!1206040))))

(assert (=> b!1889543 (= res!843862 (rulesProduceEachTokenIndividuallyList!1100 thiss!27307 rules!4265 ts2!17))))

(declare-fun b!1889544 () Bool)

(declare-fun e!1206043 () Bool)

(declare-fun tp!538818 () Bool)

(assert (=> b!1889544 (= e!1206041 (and tp!538818 (inv!28140 (tag!4144 (rule!5923 (h!26505 ts2!17)))) (inv!28143 (transformation!3730 (rule!5923 (h!26505 ts2!17)))) e!1206043))))

(declare-fun tp!538811 () Bool)

(declare-fun b!1889545 () Bool)

(declare-fun inv!28144 (Token!7012) Bool)

(assert (=> b!1889545 (= e!1206049 (and (inv!28144 (h!26505 ts1!17)) e!1206046 tp!538811))))

(declare-fun b!1889546 () Bool)

(declare-fun res!843864 () Bool)

(assert (=> b!1889546 (=> (not res!843864) (not e!1206040))))

(declare-fun rulesInvariant!2976 (LexerInterface!3343 List!21185) Bool)

(assert (=> b!1889546 (= res!843864 (rulesInvariant!2976 thiss!27307 rules!4265))))

(assert (=> b!1889547 (= e!1206052 (and tp!538819 tp!538809))))

(declare-fun b!1889548 () Bool)

(declare-fun tp!538813 () Bool)

(assert (=> b!1889548 (= e!1206044 (and (inv!28144 (h!26505 ts2!17)) e!1206053 tp!538813))))

(assert (=> b!1889549 (= e!1206043 (and tp!538815 tp!538817))))

(assert (= (and start!189172 res!843861) b!1889536))

(assert (= (and b!1889536 res!843860) b!1889546))

(assert (= (and b!1889546 res!843864) b!1889542))

(assert (= (and b!1889542 res!843859) b!1889543))

(assert (= (and b!1889543 res!843862) b!1889533))

(assert (= (and b!1889533 res!843863) b!1889539))

(assert (= b!1889535 b!1889534))

(assert (= b!1889537 b!1889535))

(assert (= (and start!189172 ((_ is Cons!21103) rules!4265)) b!1889537))

(assert (= b!1889538 b!1889547))

(assert (= b!1889540 b!1889538))

(assert (= b!1889545 b!1889540))

(assert (= (and start!189172 ((_ is Cons!21104) ts1!17)) b!1889545))

(assert (= b!1889544 b!1889549))

(assert (= b!1889541 b!1889544))

(assert (= b!1889548 b!1889541))

(assert (= (and start!189172 ((_ is Cons!21104) ts2!17)) b!1889548))

(declare-fun m!2320399 () Bool)

(assert (=> b!1889544 m!2320399))

(declare-fun m!2320401 () Bool)

(assert (=> b!1889544 m!2320401))

(declare-fun m!2320403 () Bool)

(assert (=> b!1889538 m!2320403))

(declare-fun m!2320405 () Bool)

(assert (=> b!1889538 m!2320405))

(declare-fun m!2320407 () Bool)

(assert (=> b!1889542 m!2320407))

(declare-fun m!2320409 () Bool)

(assert (=> b!1889541 m!2320409))

(declare-fun m!2320411 () Bool)

(assert (=> b!1889535 m!2320411))

(declare-fun m!2320413 () Bool)

(assert (=> b!1889535 m!2320413))

(declare-fun m!2320415 () Bool)

(assert (=> b!1889539 m!2320415))

(declare-fun m!2320417 () Bool)

(assert (=> b!1889533 m!2320417))

(declare-fun m!2320419 () Bool)

(assert (=> b!1889546 m!2320419))

(declare-fun m!2320421 () Bool)

(assert (=> b!1889536 m!2320421))

(declare-fun m!2320423 () Bool)

(assert (=> b!1889548 m!2320423))

(declare-fun m!2320425 () Bool)

(assert (=> b!1889543 m!2320425))

(declare-fun m!2320427 () Bool)

(assert (=> b!1889540 m!2320427))

(declare-fun m!2320429 () Bool)

(assert (=> b!1889545 m!2320429))

(check-sat (not b!1889538) (not b!1889539) b_and!145343 (not b_next!53239) (not b!1889541) (not b!1889558) (not b_next!53235) (not b_next!53231) b_and!145339 (not b!1889536) (not b!1889540) b_and!145341 (not b_next!53233) (not b_next!53237) b_and!145349 (not b!1889546) (not b!1889542) (not b!1889545) b_and!145347 (not b!1889537) (not b!1889543) (not b!1889533) b_and!145345 (not b_next!53229) (not b!1889544) (not b!1889548) (not b!1889535))
(check-sat b_and!145343 (not b_next!53239) (not b_next!53235) b_and!145347 b_and!145345 (not b_next!53231) (not b_next!53229) b_and!145339 b_and!145341 (not b_next!53233) (not b_next!53237) b_and!145349)
(get-model)

(declare-fun d!578618 () Bool)

(assert (=> d!578618 (= (inv!28140 (tag!4144 (h!26504 rules!4265))) (= (mod (str.len (value!117895 (tag!4144 (h!26504 rules!4265)))) 2) 0))))

(assert (=> b!1889535 d!578618))

(declare-fun d!578620 () Bool)

(declare-fun res!843872 () Bool)

(declare-fun e!1206069 () Bool)

(assert (=> d!578620 (=> (not res!843872) (not e!1206069))))

(declare-fun semiInverseModEq!1520 (Int Int) Bool)

(assert (=> d!578620 (= res!843872 (semiInverseModEq!1520 (toChars!5194 (transformation!3730 (h!26504 rules!4265))) (toValue!5335 (transformation!3730 (h!26504 rules!4265)))))))

(assert (=> d!578620 (= (inv!28143 (transformation!3730 (h!26504 rules!4265))) e!1206069)))

(declare-fun b!1889565 () Bool)

(declare-fun equivClasses!1447 (Int Int) Bool)

(assert (=> b!1889565 (= e!1206069 (equivClasses!1447 (toChars!5194 (transformation!3730 (h!26504 rules!4265))) (toValue!5335 (transformation!3730 (h!26504 rules!4265)))))))

(assert (= (and d!578620 res!843872) b!1889565))

(declare-fun m!2320431 () Bool)

(assert (=> d!578620 m!2320431))

(declare-fun m!2320433 () Bool)

(assert (=> b!1889565 m!2320433))

(assert (=> b!1889535 d!578620))

(declare-fun d!578622 () Bool)

(declare-fun res!843875 () Bool)

(declare-fun e!1206072 () Bool)

(assert (=> d!578622 (=> (not res!843875) (not e!1206072))))

(declare-fun rulesValid!1409 (LexerInterface!3343 List!21185) Bool)

(assert (=> d!578622 (= res!843875 (rulesValid!1409 thiss!27307 rules!4265))))

(assert (=> d!578622 (= (rulesInvariant!2976 thiss!27307 rules!4265) e!1206072)))

(declare-fun b!1889568 () Bool)

(declare-datatypes ((List!21188 0))(
  ( (Nil!21106) (Cons!21106 (h!26507 String!24448) (t!175299 List!21188)) )
))
(declare-fun noDuplicateTag!1407 (LexerInterface!3343 List!21185 List!21188) Bool)

(assert (=> b!1889568 (= e!1206072 (noDuplicateTag!1407 thiss!27307 rules!4265 Nil!21106))))

(assert (= (and d!578622 res!843875) b!1889568))

(declare-fun m!2320435 () Bool)

(assert (=> d!578622 m!2320435))

(declare-fun m!2320437 () Bool)

(assert (=> b!1889568 m!2320437))

(assert (=> b!1889546 d!578622))

(declare-fun d!578624 () Bool)

(assert (=> d!578624 (= (isEmpty!12997 rules!4265) ((_ is Nil!21103) rules!4265))))

(assert (=> b!1889536 d!578624))

(declare-fun d!578626 () Bool)

(declare-fun res!843880 () Bool)

(declare-fun e!1206075 () Bool)

(assert (=> d!578626 (=> (not res!843880) (not e!1206075))))

(declare-fun isEmpty!12999 (List!21184) Bool)

(assert (=> d!578626 (= res!843880 (not (isEmpty!12999 (originalCharacters!4537 (h!26505 ts2!17)))))))

(assert (=> d!578626 (= (inv!28144 (h!26505 ts2!17)) e!1206075)))

(declare-fun b!1889573 () Bool)

(declare-fun res!843881 () Bool)

(assert (=> b!1889573 (=> (not res!843881) (not e!1206075))))

(declare-fun list!8570 (BalanceConc!13822) List!21184)

(declare-fun dynLambda!10267 (Int TokenValue!3866) BalanceConc!13822)

(assert (=> b!1889573 (= res!843881 (= (originalCharacters!4537 (h!26505 ts2!17)) (list!8570 (dynLambda!10267 (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17)))) (value!117896 (h!26505 ts2!17))))))))

(declare-fun b!1889574 () Bool)

(declare-fun size!16731 (List!21184) Int)

(assert (=> b!1889574 (= e!1206075 (= (size!16729 (h!26505 ts2!17)) (size!16731 (originalCharacters!4537 (h!26505 ts2!17)))))))

(assert (= (and d!578626 res!843880) b!1889573))

(assert (= (and b!1889573 res!843881) b!1889574))

(declare-fun b_lambda!61941 () Bool)

(assert (=> (not b_lambda!61941) (not b!1889573)))

(declare-fun t!175247 () Bool)

(declare-fun tb!114729 () Bool)

(assert (=> (and b!1889549 (= (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17)))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17))))) t!175247) tb!114729))

(declare-fun b!1889579 () Bool)

(declare-fun e!1206078 () Bool)

(declare-fun tp!538823 () Bool)

(declare-fun inv!28147 (Conc!7003) Bool)

(assert (=> b!1889579 (= e!1206078 (and (inv!28147 (c!308217 (dynLambda!10267 (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17)))) (value!117896 (h!26505 ts2!17))))) tp!538823))))

(declare-fun result!138720 () Bool)

(declare-fun inv!28148 (BalanceConc!13822) Bool)

(assert (=> tb!114729 (= result!138720 (and (inv!28148 (dynLambda!10267 (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17)))) (value!117896 (h!26505 ts2!17)))) e!1206078))))

(assert (= tb!114729 b!1889579))

(declare-fun m!2320439 () Bool)

(assert (=> b!1889579 m!2320439))

(declare-fun m!2320441 () Bool)

(assert (=> tb!114729 m!2320441))

(assert (=> b!1889573 t!175247))

(declare-fun b_and!145351 () Bool)

(assert (= b_and!145341 (and (=> t!175247 result!138720) b_and!145351)))

(declare-fun t!175249 () Bool)

(declare-fun tb!114731 () Bool)

(assert (=> (and b!1889547 (= (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17)))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17))))) t!175249) tb!114731))

(declare-fun result!138724 () Bool)

(assert (= result!138724 result!138720))

(assert (=> b!1889573 t!175249))

(declare-fun b_and!145353 () Bool)

(assert (= b_and!145345 (and (=> t!175249 result!138724) b_and!145353)))

(declare-fun t!175251 () Bool)

(declare-fun tb!114733 () Bool)

(assert (=> (and b!1889534 (= (toChars!5194 (transformation!3730 (h!26504 rules!4265))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17))))) t!175251) tb!114733))

(declare-fun result!138726 () Bool)

(assert (= result!138726 result!138720))

(assert (=> b!1889573 t!175251))

(declare-fun b_and!145355 () Bool)

(assert (= b_and!145349 (and (=> t!175251 result!138726) b_and!145355)))

(declare-fun m!2320443 () Bool)

(assert (=> d!578626 m!2320443))

(declare-fun m!2320445 () Bool)

(assert (=> b!1889573 m!2320445))

(assert (=> b!1889573 m!2320445))

(declare-fun m!2320447 () Bool)

(assert (=> b!1889573 m!2320447))

(declare-fun m!2320449 () Bool)

(assert (=> b!1889574 m!2320449))

(assert (=> b!1889548 d!578626))

(declare-fun d!578628 () Bool)

(assert (=> d!578628 (= (inv!28140 (tag!4144 (rule!5923 (h!26505 ts1!17)))) (= (mod (str.len (value!117895 (tag!4144 (rule!5923 (h!26505 ts1!17))))) 2) 0))))

(assert (=> b!1889538 d!578628))

(declare-fun d!578630 () Bool)

(declare-fun res!843882 () Bool)

(declare-fun e!1206079 () Bool)

(assert (=> d!578630 (=> (not res!843882) (not e!1206079))))

(assert (=> d!578630 (= res!843882 (semiInverseModEq!1520 (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17)))) (toValue!5335 (transformation!3730 (rule!5923 (h!26505 ts1!17))))))))

(assert (=> d!578630 (= (inv!28143 (transformation!3730 (rule!5923 (h!26505 ts1!17)))) e!1206079)))

(declare-fun b!1889580 () Bool)

(assert (=> b!1889580 (= e!1206079 (equivClasses!1447 (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17)))) (toValue!5335 (transformation!3730 (rule!5923 (h!26505 ts1!17))))))))

(assert (= (and d!578630 res!843882) b!1889580))

(declare-fun m!2320451 () Bool)

(assert (=> d!578630 m!2320451))

(declare-fun m!2320453 () Bool)

(assert (=> b!1889580 m!2320453))

(assert (=> b!1889538 d!578630))

(declare-fun d!578632 () Bool)

(declare-fun res!843887 () Bool)

(declare-fun e!1206084 () Bool)

(assert (=> d!578632 (=> res!843887 e!1206084)))

(assert (=> d!578632 (= res!843887 ((_ is Nil!21104) ts2!17))))

(assert (=> d!578632 (= (forall!4431 ts2!17 lambda!73891) e!1206084)))

(declare-fun b!1889585 () Bool)

(declare-fun e!1206085 () Bool)

(assert (=> b!1889585 (= e!1206084 e!1206085)))

(declare-fun res!843888 () Bool)

(assert (=> b!1889585 (=> (not res!843888) (not e!1206085))))

(declare-fun dynLambda!10268 (Int Token!7012) Bool)

(assert (=> b!1889585 (= res!843888 (dynLambda!10268 lambda!73891 (h!26505 ts2!17)))))

(declare-fun b!1889586 () Bool)

(assert (=> b!1889586 (= e!1206085 (forall!4431 (t!175245 ts2!17) lambda!73891))))

(assert (= (and d!578632 (not res!843887)) b!1889585))

(assert (= (and b!1889585 res!843888) b!1889586))

(declare-fun b_lambda!61943 () Bool)

(assert (=> (not b_lambda!61943) (not b!1889585)))

(declare-fun m!2320455 () Bool)

(assert (=> b!1889585 m!2320455))

(declare-fun m!2320457 () Bool)

(assert (=> b!1889586 m!2320457))

(assert (=> b!1889539 d!578632))

(declare-fun b!1889597 () Bool)

(declare-fun e!1206094 () Bool)

(declare-fun e!1206092 () Bool)

(assert (=> b!1889597 (= e!1206094 e!1206092)))

(declare-fun c!308223 () Bool)

(assert (=> b!1889597 (= c!308223 ((_ is IntegerValue!11599) (value!117896 (h!26505 ts1!17))))))

(declare-fun b!1889598 () Bool)

(declare-fun e!1206093 () Bool)

(declare-fun inv!15 (TokenValue!3866) Bool)

(assert (=> b!1889598 (= e!1206093 (inv!15 (value!117896 (h!26505 ts1!17))))))

(declare-fun b!1889599 () Bool)

(declare-fun inv!16 (TokenValue!3866) Bool)

(assert (=> b!1889599 (= e!1206094 (inv!16 (value!117896 (h!26505 ts1!17))))))

(declare-fun b!1889600 () Bool)

(declare-fun res!843891 () Bool)

(assert (=> b!1889600 (=> res!843891 e!1206093)))

(assert (=> b!1889600 (= res!843891 (not ((_ is IntegerValue!11600) (value!117896 (h!26505 ts1!17)))))))

(assert (=> b!1889600 (= e!1206092 e!1206093)))

(declare-fun d!578634 () Bool)

(declare-fun c!308224 () Bool)

(assert (=> d!578634 (= c!308224 ((_ is IntegerValue!11598) (value!117896 (h!26505 ts1!17))))))

(assert (=> d!578634 (= (inv!21 (value!117896 (h!26505 ts1!17))) e!1206094)))

(declare-fun b!1889601 () Bool)

(declare-fun inv!17 (TokenValue!3866) Bool)

(assert (=> b!1889601 (= e!1206092 (inv!17 (value!117896 (h!26505 ts1!17))))))

(assert (= (and d!578634 c!308224) b!1889599))

(assert (= (and d!578634 (not c!308224)) b!1889597))

(assert (= (and b!1889597 c!308223) b!1889601))

(assert (= (and b!1889597 (not c!308223)) b!1889600))

(assert (= (and b!1889600 (not res!843891)) b!1889598))

(declare-fun m!2320459 () Bool)

(assert (=> b!1889598 m!2320459))

(declare-fun m!2320461 () Bool)

(assert (=> b!1889599 m!2320461))

(declare-fun m!2320463 () Bool)

(assert (=> b!1889601 m!2320463))

(assert (=> b!1889540 d!578634))

(declare-fun b!1889602 () Bool)

(declare-fun e!1206097 () Bool)

(declare-fun e!1206095 () Bool)

(assert (=> b!1889602 (= e!1206097 e!1206095)))

(declare-fun c!308225 () Bool)

(assert (=> b!1889602 (= c!308225 ((_ is IntegerValue!11599) (value!117896 (h!26505 ts2!17))))))

(declare-fun b!1889603 () Bool)

(declare-fun e!1206096 () Bool)

(assert (=> b!1889603 (= e!1206096 (inv!15 (value!117896 (h!26505 ts2!17))))))

(declare-fun b!1889604 () Bool)

(assert (=> b!1889604 (= e!1206097 (inv!16 (value!117896 (h!26505 ts2!17))))))

(declare-fun b!1889605 () Bool)

(declare-fun res!843892 () Bool)

(assert (=> b!1889605 (=> res!843892 e!1206096)))

(assert (=> b!1889605 (= res!843892 (not ((_ is IntegerValue!11600) (value!117896 (h!26505 ts2!17)))))))

(assert (=> b!1889605 (= e!1206095 e!1206096)))

(declare-fun d!578636 () Bool)

(declare-fun c!308226 () Bool)

(assert (=> d!578636 (= c!308226 ((_ is IntegerValue!11598) (value!117896 (h!26505 ts2!17))))))

(assert (=> d!578636 (= (inv!21 (value!117896 (h!26505 ts2!17))) e!1206097)))

(declare-fun b!1889606 () Bool)

(assert (=> b!1889606 (= e!1206095 (inv!17 (value!117896 (h!26505 ts2!17))))))

(assert (= (and d!578636 c!308226) b!1889604))

(assert (= (and d!578636 (not c!308226)) b!1889602))

(assert (= (and b!1889602 c!308225) b!1889606))

(assert (= (and b!1889602 (not c!308225)) b!1889605))

(assert (= (and b!1889605 (not res!843892)) b!1889603))

(declare-fun m!2320465 () Bool)

(assert (=> b!1889603 m!2320465))

(declare-fun m!2320467 () Bool)

(assert (=> b!1889604 m!2320467))

(declare-fun m!2320469 () Bool)

(assert (=> b!1889606 m!2320469))

(assert (=> b!1889541 d!578636))

(declare-fun bs!413042 () Bool)

(declare-fun d!578638 () Bool)

(assert (= bs!413042 (and d!578638 b!1889533)))

(declare-fun lambda!73898 () Int)

(assert (=> bs!413042 (= lambda!73898 lambda!73891)))

(declare-fun b!1889739 () Bool)

(declare-fun e!1206204 () Bool)

(assert (=> b!1889739 (= e!1206204 true)))

(declare-fun b!1889738 () Bool)

(declare-fun e!1206203 () Bool)

(assert (=> b!1889738 (= e!1206203 e!1206204)))

(declare-fun b!1889737 () Bool)

(declare-fun e!1206202 () Bool)

(assert (=> b!1889737 (= e!1206202 e!1206203)))

(assert (=> d!578638 e!1206202))

(assert (= b!1889738 b!1889739))

(assert (= b!1889737 b!1889738))

(assert (= (and d!578638 ((_ is Cons!21103) rules!4265)) b!1889737))

(assert (=> b!1889739 (< (dynLambda!10262 order!13335 (toValue!5335 (transformation!3730 (h!26504 rules!4265)))) (dynLambda!10263 order!13337 lambda!73898))))

(assert (=> b!1889739 (< (dynLambda!10264 order!13339 (toChars!5194 (transformation!3730 (h!26504 rules!4265)))) (dynLambda!10263 order!13337 lambda!73898))))

(assert (=> d!578638 true))

(declare-fun lt!723867 () Bool)

(assert (=> d!578638 (= lt!723867 (forall!4431 ts1!17 lambda!73898))))

(declare-fun e!1206200 () Bool)

(assert (=> d!578638 (= lt!723867 e!1206200)))

(declare-fun res!843934 () Bool)

(assert (=> d!578638 (=> res!843934 e!1206200)))

(assert (=> d!578638 (= res!843934 (not ((_ is Cons!21104) ts1!17)))))

(assert (=> d!578638 (not (isEmpty!12997 rules!4265))))

(assert (=> d!578638 (= (rulesProduceEachTokenIndividuallyList!1100 thiss!27307 rules!4265 ts1!17) lt!723867)))

(declare-fun b!1889735 () Bool)

(declare-fun e!1206201 () Bool)

(assert (=> b!1889735 (= e!1206200 e!1206201)))

(declare-fun res!843933 () Bool)

(assert (=> b!1889735 (=> (not res!843933) (not e!1206201))))

(declare-fun rulesProduceIndividualToken!1544 (LexerInterface!3343 List!21185 Token!7012) Bool)

(assert (=> b!1889735 (= res!843933 (rulesProduceIndividualToken!1544 thiss!27307 rules!4265 (h!26505 ts1!17)))))

(declare-fun b!1889736 () Bool)

(assert (=> b!1889736 (= e!1206201 (rulesProduceEachTokenIndividuallyList!1100 thiss!27307 rules!4265 (t!175245 ts1!17)))))

(assert (= (and d!578638 (not res!843934)) b!1889735))

(assert (= (and b!1889735 res!843933) b!1889736))

(declare-fun m!2320563 () Bool)

(assert (=> d!578638 m!2320563))

(assert (=> d!578638 m!2320421))

(declare-fun m!2320565 () Bool)

(assert (=> b!1889735 m!2320565))

(declare-fun m!2320567 () Bool)

(assert (=> b!1889736 m!2320567))

(assert (=> b!1889542 d!578638))

(declare-fun bs!413043 () Bool)

(declare-fun d!578674 () Bool)

(assert (= bs!413043 (and d!578674 b!1889533)))

(declare-fun lambda!73899 () Int)

(assert (=> bs!413043 (= lambda!73899 lambda!73891)))

(declare-fun bs!413044 () Bool)

(assert (= bs!413044 (and d!578674 d!578638)))

(assert (=> bs!413044 (= lambda!73899 lambda!73898)))

(declare-fun b!1889744 () Bool)

(declare-fun e!1206209 () Bool)

(assert (=> b!1889744 (= e!1206209 true)))

(declare-fun b!1889743 () Bool)

(declare-fun e!1206208 () Bool)

(assert (=> b!1889743 (= e!1206208 e!1206209)))

(declare-fun b!1889742 () Bool)

(declare-fun e!1206207 () Bool)

(assert (=> b!1889742 (= e!1206207 e!1206208)))

(assert (=> d!578674 e!1206207))

(assert (= b!1889743 b!1889744))

(assert (= b!1889742 b!1889743))

(assert (= (and d!578674 ((_ is Cons!21103) rules!4265)) b!1889742))

(assert (=> b!1889744 (< (dynLambda!10262 order!13335 (toValue!5335 (transformation!3730 (h!26504 rules!4265)))) (dynLambda!10263 order!13337 lambda!73899))))

(assert (=> b!1889744 (< (dynLambda!10264 order!13339 (toChars!5194 (transformation!3730 (h!26504 rules!4265)))) (dynLambda!10263 order!13337 lambda!73899))))

(assert (=> d!578674 true))

(declare-fun lt!723868 () Bool)

(assert (=> d!578674 (= lt!723868 (forall!4431 ts2!17 lambda!73899))))

(declare-fun e!1206205 () Bool)

(assert (=> d!578674 (= lt!723868 e!1206205)))

(declare-fun res!843936 () Bool)

(assert (=> d!578674 (=> res!843936 e!1206205)))

(assert (=> d!578674 (= res!843936 (not ((_ is Cons!21104) ts2!17)))))

(assert (=> d!578674 (not (isEmpty!12997 rules!4265))))

(assert (=> d!578674 (= (rulesProduceEachTokenIndividuallyList!1100 thiss!27307 rules!4265 ts2!17) lt!723868)))

(declare-fun b!1889740 () Bool)

(declare-fun e!1206206 () Bool)

(assert (=> b!1889740 (= e!1206205 e!1206206)))

(declare-fun res!843935 () Bool)

(assert (=> b!1889740 (=> (not res!843935) (not e!1206206))))

(assert (=> b!1889740 (= res!843935 (rulesProduceIndividualToken!1544 thiss!27307 rules!4265 (h!26505 ts2!17)))))

(declare-fun b!1889741 () Bool)

(assert (=> b!1889741 (= e!1206206 (rulesProduceEachTokenIndividuallyList!1100 thiss!27307 rules!4265 (t!175245 ts2!17)))))

(assert (= (and d!578674 (not res!843936)) b!1889740))

(assert (= (and b!1889740 res!843935) b!1889741))

(declare-fun m!2320569 () Bool)

(assert (=> d!578674 m!2320569))

(assert (=> d!578674 m!2320421))

(declare-fun m!2320571 () Bool)

(assert (=> b!1889740 m!2320571))

(declare-fun m!2320573 () Bool)

(assert (=> b!1889741 m!2320573))

(assert (=> b!1889543 d!578674))

(declare-fun d!578676 () Bool)

(declare-fun res!843937 () Bool)

(declare-fun e!1206210 () Bool)

(assert (=> d!578676 (=> res!843937 e!1206210)))

(assert (=> d!578676 (= res!843937 ((_ is Nil!21104) ts1!17))))

(assert (=> d!578676 (= (forall!4431 ts1!17 lambda!73891) e!1206210)))

(declare-fun b!1889745 () Bool)

(declare-fun e!1206211 () Bool)

(assert (=> b!1889745 (= e!1206210 e!1206211)))

(declare-fun res!843938 () Bool)

(assert (=> b!1889745 (=> (not res!843938) (not e!1206211))))

(assert (=> b!1889745 (= res!843938 (dynLambda!10268 lambda!73891 (h!26505 ts1!17)))))

(declare-fun b!1889746 () Bool)

(assert (=> b!1889746 (= e!1206211 (forall!4431 (t!175245 ts1!17) lambda!73891))))

(assert (= (and d!578676 (not res!843937)) b!1889745))

(assert (= (and b!1889745 res!843938) b!1889746))

(declare-fun b_lambda!61961 () Bool)

(assert (=> (not b_lambda!61961) (not b!1889745)))

(declare-fun m!2320575 () Bool)

(assert (=> b!1889745 m!2320575))

(declare-fun m!2320577 () Bool)

(assert (=> b!1889746 m!2320577))

(assert (=> b!1889533 d!578676))

(declare-fun d!578678 () Bool)

(assert (=> d!578678 (= (inv!28140 (tag!4144 (rule!5923 (h!26505 ts2!17)))) (= (mod (str.len (value!117895 (tag!4144 (rule!5923 (h!26505 ts2!17))))) 2) 0))))

(assert (=> b!1889544 d!578678))

(declare-fun d!578680 () Bool)

(declare-fun res!843939 () Bool)

(declare-fun e!1206212 () Bool)

(assert (=> d!578680 (=> (not res!843939) (not e!1206212))))

(assert (=> d!578680 (= res!843939 (semiInverseModEq!1520 (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17)))) (toValue!5335 (transformation!3730 (rule!5923 (h!26505 ts2!17))))))))

(assert (=> d!578680 (= (inv!28143 (transformation!3730 (rule!5923 (h!26505 ts2!17)))) e!1206212)))

(declare-fun b!1889747 () Bool)

(assert (=> b!1889747 (= e!1206212 (equivClasses!1447 (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17)))) (toValue!5335 (transformation!3730 (rule!5923 (h!26505 ts2!17))))))))

(assert (= (and d!578680 res!843939) b!1889747))

(declare-fun m!2320579 () Bool)

(assert (=> d!578680 m!2320579))

(declare-fun m!2320581 () Bool)

(assert (=> b!1889747 m!2320581))

(assert (=> b!1889544 d!578680))

(declare-fun d!578682 () Bool)

(declare-fun res!843940 () Bool)

(declare-fun e!1206213 () Bool)

(assert (=> d!578682 (=> (not res!843940) (not e!1206213))))

(assert (=> d!578682 (= res!843940 (not (isEmpty!12999 (originalCharacters!4537 (h!26505 ts1!17)))))))

(assert (=> d!578682 (= (inv!28144 (h!26505 ts1!17)) e!1206213)))

(declare-fun b!1889748 () Bool)

(declare-fun res!843941 () Bool)

(assert (=> b!1889748 (=> (not res!843941) (not e!1206213))))

(assert (=> b!1889748 (= res!843941 (= (originalCharacters!4537 (h!26505 ts1!17)) (list!8570 (dynLambda!10267 (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17)))) (value!117896 (h!26505 ts1!17))))))))

(declare-fun b!1889749 () Bool)

(assert (=> b!1889749 (= e!1206213 (= (size!16729 (h!26505 ts1!17)) (size!16731 (originalCharacters!4537 (h!26505 ts1!17)))))))

(assert (= (and d!578682 res!843940) b!1889748))

(assert (= (and b!1889748 res!843941) b!1889749))

(declare-fun b_lambda!61963 () Bool)

(assert (=> (not b_lambda!61963) (not b!1889748)))

(declare-fun t!175282 () Bool)

(declare-fun tb!114759 () Bool)

(assert (=> (and b!1889549 (= (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17)))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17))))) t!175282) tb!114759))

(declare-fun b!1889750 () Bool)

(declare-fun e!1206214 () Bool)

(declare-fun tp!538889 () Bool)

(assert (=> b!1889750 (= e!1206214 (and (inv!28147 (c!308217 (dynLambda!10267 (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17)))) (value!117896 (h!26505 ts1!17))))) tp!538889))))

(declare-fun result!138762 () Bool)

(assert (=> tb!114759 (= result!138762 (and (inv!28148 (dynLambda!10267 (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17)))) (value!117896 (h!26505 ts1!17)))) e!1206214))))

(assert (= tb!114759 b!1889750))

(declare-fun m!2320583 () Bool)

(assert (=> b!1889750 m!2320583))

(declare-fun m!2320585 () Bool)

(assert (=> tb!114759 m!2320585))

(assert (=> b!1889748 t!175282))

(declare-fun b_and!145381 () Bool)

(assert (= b_and!145351 (and (=> t!175282 result!138762) b_and!145381)))

(declare-fun t!175284 () Bool)

(declare-fun tb!114761 () Bool)

(assert (=> (and b!1889547 (= (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17)))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17))))) t!175284) tb!114761))

(declare-fun result!138764 () Bool)

(assert (= result!138764 result!138762))

(assert (=> b!1889748 t!175284))

(declare-fun b_and!145383 () Bool)

(assert (= b_and!145353 (and (=> t!175284 result!138764) b_and!145383)))

(declare-fun t!175286 () Bool)

(declare-fun tb!114763 () Bool)

(assert (=> (and b!1889534 (= (toChars!5194 (transformation!3730 (h!26504 rules!4265))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17))))) t!175286) tb!114763))

(declare-fun result!138766 () Bool)

(assert (= result!138766 result!138762))

(assert (=> b!1889748 t!175286))

(declare-fun b_and!145385 () Bool)

(assert (= b_and!145355 (and (=> t!175286 result!138766) b_and!145385)))

(declare-fun m!2320587 () Bool)

(assert (=> d!578682 m!2320587))

(declare-fun m!2320589 () Bool)

(assert (=> b!1889748 m!2320589))

(assert (=> b!1889748 m!2320589))

(declare-fun m!2320591 () Bool)

(assert (=> b!1889748 m!2320591))

(declare-fun m!2320593 () Bool)

(assert (=> b!1889749 m!2320593))

(assert (=> b!1889545 d!578682))

(declare-fun b!1889762 () Bool)

(declare-fun e!1206217 () Bool)

(declare-fun tp!538903 () Bool)

(declare-fun tp!538901 () Bool)

(assert (=> b!1889762 (= e!1206217 (and tp!538903 tp!538901))))

(declare-fun b!1889764 () Bool)

(declare-fun tp!538904 () Bool)

(declare-fun tp!538900 () Bool)

(assert (=> b!1889764 (= e!1206217 (and tp!538904 tp!538900))))

(assert (=> b!1889535 (= tp!538814 e!1206217)))

(declare-fun b!1889763 () Bool)

(declare-fun tp!538902 () Bool)

(assert (=> b!1889763 (= e!1206217 tp!538902)))

(declare-fun b!1889761 () Bool)

(declare-fun tp_is_empty!9045 () Bool)

(assert (=> b!1889761 (= e!1206217 tp_is_empty!9045)))

(assert (= (and b!1889535 ((_ is ElementMatch!5155) (regex!3730 (h!26504 rules!4265)))) b!1889761))

(assert (= (and b!1889535 ((_ is Concat!9022) (regex!3730 (h!26504 rules!4265)))) b!1889762))

(assert (= (and b!1889535 ((_ is Star!5155) (regex!3730 (h!26504 rules!4265)))) b!1889763))

(assert (= (and b!1889535 ((_ is Union!5155) (regex!3730 (h!26504 rules!4265)))) b!1889764))

(declare-fun b!1889775 () Bool)

(declare-fun b_free!52549 () Bool)

(declare-fun b_next!53253 () Bool)

(assert (=> b!1889775 (= b_free!52549 (not b_next!53253))))

(declare-fun tp!538916 () Bool)

(declare-fun b_and!145387 () Bool)

(assert (=> b!1889775 (= tp!538916 b_and!145387)))

(declare-fun b_free!52551 () Bool)

(declare-fun b_next!53255 () Bool)

(assert (=> b!1889775 (= b_free!52551 (not b_next!53255))))

(declare-fun tb!114765 () Bool)

(declare-fun t!175288 () Bool)

(assert (=> (and b!1889775 (= (toChars!5194 (transformation!3730 (h!26504 (t!175244 rules!4265)))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17))))) t!175288) tb!114765))

(declare-fun result!138772 () Bool)

(assert (= result!138772 result!138720))

(assert (=> b!1889573 t!175288))

(declare-fun t!175290 () Bool)

(declare-fun tb!114767 () Bool)

(assert (=> (and b!1889775 (= (toChars!5194 (transformation!3730 (h!26504 (t!175244 rules!4265)))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17))))) t!175290) tb!114767))

(declare-fun result!138774 () Bool)

(assert (= result!138774 result!138762))

(assert (=> b!1889748 t!175290))

(declare-fun b_and!145389 () Bool)

(declare-fun tp!538913 () Bool)

(assert (=> b!1889775 (= tp!538913 (and (=> t!175288 result!138772) (=> t!175290 result!138774) b_and!145389))))

(declare-fun e!1206226 () Bool)

(assert (=> b!1889775 (= e!1206226 (and tp!538916 tp!538913))))

(declare-fun tp!538915 () Bool)

(declare-fun b!1889774 () Bool)

(declare-fun e!1206228 () Bool)

(assert (=> b!1889774 (= e!1206228 (and tp!538915 (inv!28140 (tag!4144 (h!26504 (t!175244 rules!4265)))) (inv!28143 (transformation!3730 (h!26504 (t!175244 rules!4265)))) e!1206226))))

(declare-fun b!1889773 () Bool)

(declare-fun e!1206227 () Bool)

(declare-fun tp!538914 () Bool)

(assert (=> b!1889773 (= e!1206227 (and e!1206228 tp!538914))))

(assert (=> b!1889537 (= tp!538820 e!1206227)))

(assert (= b!1889774 b!1889775))

(assert (= b!1889773 b!1889774))

(assert (= (and b!1889537 ((_ is Cons!21103) (t!175244 rules!4265))) b!1889773))

(declare-fun m!2320595 () Bool)

(assert (=> b!1889774 m!2320595))

(declare-fun m!2320597 () Bool)

(assert (=> b!1889774 m!2320597))

(declare-fun b!1889789 () Bool)

(declare-fun b_free!52553 () Bool)

(declare-fun b_next!53257 () Bool)

(assert (=> b!1889789 (= b_free!52553 (not b_next!53257))))

(declare-fun tp!538927 () Bool)

(declare-fun b_and!145391 () Bool)

(assert (=> b!1889789 (= tp!538927 b_and!145391)))

(declare-fun b_free!52555 () Bool)

(declare-fun b_next!53259 () Bool)

(assert (=> b!1889789 (= b_free!52555 (not b_next!53259))))

(declare-fun t!175292 () Bool)

(declare-fun tb!114769 () Bool)

(assert (=> (and b!1889789 (= (toChars!5194 (transformation!3730 (rule!5923 (h!26505 (t!175245 ts2!17))))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17))))) t!175292) tb!114769))

(declare-fun result!138778 () Bool)

(assert (= result!138778 result!138720))

(assert (=> b!1889573 t!175292))

(declare-fun t!175294 () Bool)

(declare-fun tb!114771 () Bool)

(assert (=> (and b!1889789 (= (toChars!5194 (transformation!3730 (rule!5923 (h!26505 (t!175245 ts2!17))))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17))))) t!175294) tb!114771))

(declare-fun result!138780 () Bool)

(assert (= result!138780 result!138762))

(assert (=> b!1889748 t!175294))

(declare-fun tp!538931 () Bool)

(declare-fun b_and!145393 () Bool)

(assert (=> b!1889789 (= tp!538931 (and (=> t!175292 result!138778) (=> t!175294 result!138780) b_and!145393))))

(declare-fun e!1206244 () Bool)

(declare-fun b!1889786 () Bool)

(declare-fun tp!538928 () Bool)

(declare-fun e!1206247 () Bool)

(assert (=> b!1889786 (= e!1206247 (and (inv!28144 (h!26505 (t!175245 ts2!17))) e!1206244 tp!538928))))

(declare-fun e!1206246 () Bool)

(assert (=> b!1889789 (= e!1206246 (and tp!538927 tp!538931))))

(assert (=> b!1889548 (= tp!538813 e!1206247)))

(declare-fun b!1889788 () Bool)

(declare-fun tp!538929 () Bool)

(declare-fun e!1206245 () Bool)

(assert (=> b!1889788 (= e!1206245 (and tp!538929 (inv!28140 (tag!4144 (rule!5923 (h!26505 (t!175245 ts2!17))))) (inv!28143 (transformation!3730 (rule!5923 (h!26505 (t!175245 ts2!17))))) e!1206246))))

(declare-fun tp!538930 () Bool)

(declare-fun b!1889787 () Bool)

(assert (=> b!1889787 (= e!1206244 (and (inv!21 (value!117896 (h!26505 (t!175245 ts2!17)))) e!1206245 tp!538930))))

(assert (= b!1889788 b!1889789))

(assert (= b!1889787 b!1889788))

(assert (= b!1889786 b!1889787))

(assert (= (and b!1889548 ((_ is Cons!21104) (t!175245 ts2!17))) b!1889786))

(declare-fun m!2320599 () Bool)

(assert (=> b!1889786 m!2320599))

(declare-fun m!2320601 () Bool)

(assert (=> b!1889788 m!2320601))

(declare-fun m!2320603 () Bool)

(assert (=> b!1889788 m!2320603))

(declare-fun m!2320605 () Bool)

(assert (=> b!1889787 m!2320605))

(declare-fun b!1889791 () Bool)

(declare-fun e!1206248 () Bool)

(declare-fun tp!538935 () Bool)

(declare-fun tp!538933 () Bool)

(assert (=> b!1889791 (= e!1206248 (and tp!538935 tp!538933))))

(declare-fun b!1889793 () Bool)

(declare-fun tp!538936 () Bool)

(declare-fun tp!538932 () Bool)

(assert (=> b!1889793 (= e!1206248 (and tp!538936 tp!538932))))

(assert (=> b!1889538 (= tp!538807 e!1206248)))

(declare-fun b!1889792 () Bool)

(declare-fun tp!538934 () Bool)

(assert (=> b!1889792 (= e!1206248 tp!538934)))

(declare-fun b!1889790 () Bool)

(assert (=> b!1889790 (= e!1206248 tp_is_empty!9045)))

(assert (= (and b!1889538 ((_ is ElementMatch!5155) (regex!3730 (rule!5923 (h!26505 ts1!17))))) b!1889790))

(assert (= (and b!1889538 ((_ is Concat!9022) (regex!3730 (rule!5923 (h!26505 ts1!17))))) b!1889791))

(assert (= (and b!1889538 ((_ is Star!5155) (regex!3730 (rule!5923 (h!26505 ts1!17))))) b!1889792))

(assert (= (and b!1889538 ((_ is Union!5155) (regex!3730 (rule!5923 (h!26505 ts1!17))))) b!1889793))

(declare-fun b!1889796 () Bool)

(declare-fun e!1206251 () Bool)

(assert (=> b!1889796 (= e!1206251 true)))

(declare-fun b!1889795 () Bool)

(declare-fun e!1206250 () Bool)

(assert (=> b!1889795 (= e!1206250 e!1206251)))

(declare-fun b!1889794 () Bool)

(declare-fun e!1206249 () Bool)

(assert (=> b!1889794 (= e!1206249 e!1206250)))

(assert (=> b!1889558 e!1206249))

(assert (= b!1889795 b!1889796))

(assert (= b!1889794 b!1889795))

(assert (= (and b!1889558 ((_ is Cons!21103) (t!175244 rules!4265))) b!1889794))

(assert (=> b!1889796 (< (dynLambda!10262 order!13335 (toValue!5335 (transformation!3730 (h!26504 (t!175244 rules!4265))))) (dynLambda!10263 order!13337 lambda!73891))))

(assert (=> b!1889796 (< (dynLambda!10264 order!13339 (toChars!5194 (transformation!3730 (h!26504 (t!175244 rules!4265))))) (dynLambda!10263 order!13337 lambda!73891))))

(declare-fun b!1889801 () Bool)

(declare-fun e!1206254 () Bool)

(declare-fun tp!538939 () Bool)

(assert (=> b!1889801 (= e!1206254 (and tp_is_empty!9045 tp!538939))))

(assert (=> b!1889540 (= tp!538810 e!1206254)))

(assert (= (and b!1889540 ((_ is Cons!21102) (originalCharacters!4537 (h!26505 ts1!17)))) b!1889801))

(declare-fun b!1889802 () Bool)

(declare-fun e!1206255 () Bool)

(declare-fun tp!538940 () Bool)

(assert (=> b!1889802 (= e!1206255 (and tp_is_empty!9045 tp!538940))))

(assert (=> b!1889541 (= tp!538812 e!1206255)))

(assert (= (and b!1889541 ((_ is Cons!21102) (originalCharacters!4537 (h!26505 ts2!17)))) b!1889802))

(declare-fun b!1889804 () Bool)

(declare-fun e!1206256 () Bool)

(declare-fun tp!538944 () Bool)

(declare-fun tp!538942 () Bool)

(assert (=> b!1889804 (= e!1206256 (and tp!538944 tp!538942))))

(declare-fun b!1889806 () Bool)

(declare-fun tp!538945 () Bool)

(declare-fun tp!538941 () Bool)

(assert (=> b!1889806 (= e!1206256 (and tp!538945 tp!538941))))

(assert (=> b!1889544 (= tp!538818 e!1206256)))

(declare-fun b!1889805 () Bool)

(declare-fun tp!538943 () Bool)

(assert (=> b!1889805 (= e!1206256 tp!538943)))

(declare-fun b!1889803 () Bool)

(assert (=> b!1889803 (= e!1206256 tp_is_empty!9045)))

(assert (= (and b!1889544 ((_ is ElementMatch!5155) (regex!3730 (rule!5923 (h!26505 ts2!17))))) b!1889803))

(assert (= (and b!1889544 ((_ is Concat!9022) (regex!3730 (rule!5923 (h!26505 ts2!17))))) b!1889804))

(assert (= (and b!1889544 ((_ is Star!5155) (regex!3730 (rule!5923 (h!26505 ts2!17))))) b!1889805))

(assert (= (and b!1889544 ((_ is Union!5155) (regex!3730 (rule!5923 (h!26505 ts2!17))))) b!1889806))

(declare-fun b!1889810 () Bool)

(declare-fun b_free!52557 () Bool)

(declare-fun b_next!53261 () Bool)

(assert (=> b!1889810 (= b_free!52557 (not b_next!53261))))

(declare-fun tp!538946 () Bool)

(declare-fun b_and!145395 () Bool)

(assert (=> b!1889810 (= tp!538946 b_and!145395)))

(declare-fun b_free!52559 () Bool)

(declare-fun b_next!53263 () Bool)

(assert (=> b!1889810 (= b_free!52559 (not b_next!53263))))

(declare-fun t!175296 () Bool)

(declare-fun tb!114773 () Bool)

(assert (=> (and b!1889810 (= (toChars!5194 (transformation!3730 (rule!5923 (h!26505 (t!175245 ts1!17))))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17))))) t!175296) tb!114773))

(declare-fun result!138784 () Bool)

(assert (= result!138784 result!138720))

(assert (=> b!1889573 t!175296))

(declare-fun t!175298 () Bool)

(declare-fun tb!114775 () Bool)

(assert (=> (and b!1889810 (= (toChars!5194 (transformation!3730 (rule!5923 (h!26505 (t!175245 ts1!17))))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17))))) t!175298) tb!114775))

(declare-fun result!138786 () Bool)

(assert (= result!138786 result!138762))

(assert (=> b!1889748 t!175298))

(declare-fun tp!538950 () Bool)

(declare-fun b_and!145397 () Bool)

(assert (=> b!1889810 (= tp!538950 (and (=> t!175296 result!138784) (=> t!175298 result!138786) b_and!145397))))

(declare-fun tp!538947 () Bool)

(declare-fun e!1206262 () Bool)

(declare-fun b!1889807 () Bool)

(declare-fun e!1206259 () Bool)

(assert (=> b!1889807 (= e!1206262 (and (inv!28144 (h!26505 (t!175245 ts1!17))) e!1206259 tp!538947))))

(declare-fun e!1206261 () Bool)

(assert (=> b!1889810 (= e!1206261 (and tp!538946 tp!538950))))

(assert (=> b!1889545 (= tp!538811 e!1206262)))

(declare-fun b!1889809 () Bool)

(declare-fun e!1206260 () Bool)

(declare-fun tp!538948 () Bool)

(assert (=> b!1889809 (= e!1206260 (and tp!538948 (inv!28140 (tag!4144 (rule!5923 (h!26505 (t!175245 ts1!17))))) (inv!28143 (transformation!3730 (rule!5923 (h!26505 (t!175245 ts1!17))))) e!1206261))))

(declare-fun b!1889808 () Bool)

(declare-fun tp!538949 () Bool)

(assert (=> b!1889808 (= e!1206259 (and (inv!21 (value!117896 (h!26505 (t!175245 ts1!17)))) e!1206260 tp!538949))))

(assert (= b!1889809 b!1889810))

(assert (= b!1889808 b!1889809))

(assert (= b!1889807 b!1889808))

(assert (= (and b!1889545 ((_ is Cons!21104) (t!175245 ts1!17))) b!1889807))

(declare-fun m!2320607 () Bool)

(assert (=> b!1889807 m!2320607))

(declare-fun m!2320609 () Bool)

(assert (=> b!1889809 m!2320609))

(declare-fun m!2320611 () Bool)

(assert (=> b!1889809 m!2320611))

(declare-fun m!2320613 () Bool)

(assert (=> b!1889808 m!2320613))

(declare-fun b_lambda!61965 () Bool)

(assert (= b_lambda!61941 (or (and b!1889549 b_free!52527) (and b!1889775 b_free!52551 (= (toChars!5194 (transformation!3730 (h!26504 (t!175244 rules!4265)))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17)))))) (and b!1889534 b_free!52535 (= (toChars!5194 (transformation!3730 (h!26504 rules!4265))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17)))))) (and b!1889547 b_free!52531 (= (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17)))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17)))))) (and b!1889810 b_free!52559 (= (toChars!5194 (transformation!3730 (rule!5923 (h!26505 (t!175245 ts1!17))))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17)))))) (and b!1889789 b_free!52555 (= (toChars!5194 (transformation!3730 (rule!5923 (h!26505 (t!175245 ts2!17))))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17)))))) b_lambda!61965)))

(declare-fun b_lambda!61967 () Bool)

(assert (= b_lambda!61943 (or b!1889533 b_lambda!61967)))

(declare-fun bs!413045 () Bool)

(declare-fun d!578684 () Bool)

(assert (= bs!413045 (and d!578684 b!1889533)))

(assert (=> bs!413045 (= (dynLambda!10268 lambda!73891 (h!26505 ts2!17)) (rulesProduceIndividualToken!1544 thiss!27307 rules!4265 (h!26505 ts2!17)))))

(assert (=> bs!413045 m!2320571))

(assert (=> b!1889585 d!578684))

(declare-fun b_lambda!61969 () Bool)

(assert (= b_lambda!61961 (or b!1889533 b_lambda!61969)))

(declare-fun bs!413046 () Bool)

(declare-fun d!578686 () Bool)

(assert (= bs!413046 (and d!578686 b!1889533)))

(assert (=> bs!413046 (= (dynLambda!10268 lambda!73891 (h!26505 ts1!17)) (rulesProduceIndividualToken!1544 thiss!27307 rules!4265 (h!26505 ts1!17)))))

(assert (=> bs!413046 m!2320565))

(assert (=> b!1889745 d!578686))

(declare-fun b_lambda!61971 () Bool)

(assert (= b_lambda!61963 (or (and b!1889534 b_free!52535 (= (toChars!5194 (transformation!3730 (h!26504 rules!4265))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17)))))) (and b!1889810 b_free!52559 (= (toChars!5194 (transformation!3730 (rule!5923 (h!26505 (t!175245 ts1!17))))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17)))))) (and b!1889547 b_free!52531) (and b!1889789 b_free!52555 (= (toChars!5194 (transformation!3730 (rule!5923 (h!26505 (t!175245 ts2!17))))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17)))))) (and b!1889775 b_free!52551 (= (toChars!5194 (transformation!3730 (h!26504 (t!175244 rules!4265)))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17)))))) (and b!1889549 b_free!52527 (= (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts2!17)))) (toChars!5194 (transformation!3730 (rule!5923 (h!26505 ts1!17)))))) b_lambda!61971)))

(check-sat (not b!1889737) (not b_next!53235) (not b_next!53259) (not b!1889748) (not b_next!53253) (not b!1889735) (not b!1889736) (not b!1889747) (not d!578630) (not b_next!53233) (not b!1889791) (not b!1889749) (not b!1889601) (not b_next!53237) (not b!1889568) (not b!1889806) (not b!1889603) (not b!1889741) (not d!578674) (not b!1889794) (not b!1889574) (not b!1889807) (not b!1889786) b_and!145343 b_and!145385 (not b!1889586) b_and!145391 (not b_next!53261) (not b!1889573) (not b!1889787) (not d!578620) (not b!1889750) b_and!145381 (not b!1889801) (not b_lambda!61967) (not b_next!53239) (not bs!413046) (not b!1889763) (not b!1889565) (not b!1889805) b_and!145347 (not b!1889793) (not b!1889746) (not b!1889764) (not b_next!53257) (not b!1889579) (not b_next!53231) (not b!1889788) (not b!1889804) (not b_next!53229) b_and!145387 (not b!1889604) (not b!1889606) b_and!145339 (not b!1889762) (not d!578626) b_and!145395 (not b!1889809) (not d!578622) (not b_lambda!61971) (not b!1889802) tp_is_empty!9045 (not d!578680) (not b_next!53255) (not b!1889808) (not b_lambda!61965) (not tb!114759) (not d!578682) (not tb!114729) (not b!1889774) (not b!1889792) (not b_next!53263) (not b!1889599) b_and!145397 (not b!1889740) b_and!145393 (not d!578638) (not b_lambda!61969) (not b!1889580) b_and!145383 (not b!1889742) (not b!1889773) b_and!145389 (not b!1889598) (not bs!413045))
(check-sat (not b_next!53253) b_and!145343 (not b_next!53261) b_and!145381 (not b_next!53239) (not b_next!53235) (not b_next!53259) b_and!145347 (not b_next!53257) (not b_next!53231) (not b_next!53255) b_and!145393 (not b_next!53233) (not b_next!53237) b_and!145385 b_and!145391 (not b_next!53229) b_and!145387 b_and!145339 b_and!145395 (not b_next!53263) b_and!145397 b_and!145383 b_and!145389)
