; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398482 () Bool)

(assert start!398482)

(declare-fun b!4179321 () Bool)

(declare-fun b_free!121415 () Bool)

(declare-fun b_next!122119 () Bool)

(assert (=> b!4179321 (= b_free!121415 (not b_next!122119))))

(declare-fun tp!1277252 () Bool)

(declare-fun b_and!326789 () Bool)

(assert (=> b!4179321 (= tp!1277252 b_and!326789)))

(declare-fun b_free!121417 () Bool)

(declare-fun b_next!122121 () Bool)

(assert (=> b!4179321 (= b_free!121417 (not b_next!122121))))

(declare-fun tp!1277255 () Bool)

(declare-fun b_and!326791 () Bool)

(assert (=> b!4179321 (= tp!1277255 b_and!326791)))

(declare-fun b!4179326 () Bool)

(declare-fun b_free!121419 () Bool)

(declare-fun b_next!122123 () Bool)

(assert (=> b!4179326 (= b_free!121419 (not b_next!122123))))

(declare-fun tp!1277253 () Bool)

(declare-fun b_and!326793 () Bool)

(assert (=> b!4179326 (= tp!1277253 b_and!326793)))

(declare-fun b_free!121421 () Bool)

(declare-fun b_next!122125 () Bool)

(assert (=> b!4179326 (= b_free!121421 (not b_next!122125))))

(declare-fun tp!1277251 () Bool)

(declare-fun b_and!326795 () Bool)

(assert (=> b!4179326 (= tp!1277251 b_and!326795)))

(declare-fun b!4179325 () Bool)

(declare-fun b_free!121423 () Bool)

(declare-fun b_next!122127 () Bool)

(assert (=> b!4179325 (= b_free!121423 (not b_next!122127))))

(declare-fun tp!1277254 () Bool)

(declare-fun b_and!326797 () Bool)

(assert (=> b!4179325 (= tp!1277254 b_and!326797)))

(declare-fun b_free!121425 () Bool)

(declare-fun b_next!122129 () Bool)

(assert (=> b!4179325 (= b_free!121425 (not b_next!122129))))

(declare-fun tp!1277250 () Bool)

(declare-fun b_and!326799 () Bool)

(assert (=> b!4179325 (= tp!1277250 b_and!326799)))

(declare-fun b!4179307 () Bool)

(declare-fun res!1713740 () Bool)

(declare-fun e!2594664 () Bool)

(assert (=> b!4179307 (=> (not res!1713740) (not e!2594664))))

(declare-datatypes ((LexerInterface!7225 0))(
  ( (LexerInterfaceExt!7222 (__x!27945 Int)) (Lexer!7223) )
))
(declare-fun thiss!25986 () LexerInterface!7225)

(declare-datatypes ((List!46005 0))(
  ( (Nil!45881) (Cons!45881 (h!51301 (_ BitVec 16)) (t!344910 List!46005)) )
))
(declare-datatypes ((TokenValue!7862 0))(
  ( (FloatLiteralValue!15724 (text!55479 List!46005)) (TokenValueExt!7861 (__x!27946 Int)) (Broken!39310 (value!238018 List!46005)) (Object!7985) (End!7862) (Def!7862) (Underscore!7862) (Match!7862) (Else!7862) (Error!7862) (Case!7862) (If!7862) (Extends!7862) (Abstract!7862) (Class!7862) (Val!7862) (DelimiterValue!15724 (del!7922 List!46005)) (KeywordValue!7868 (value!238019 List!46005)) (CommentValue!15724 (value!238020 List!46005)) (WhitespaceValue!15724 (value!238021 List!46005)) (IndentationValue!7862 (value!238022 List!46005)) (String!53175) (Int32!7862) (Broken!39311 (value!238023 List!46005)) (Boolean!7863) (Unit!64968) (OperatorValue!7865 (op!7922 List!46005)) (IdentifierValue!15724 (value!238024 List!46005)) (IdentifierValue!15725 (value!238025 List!46005)) (WhitespaceValue!15725 (value!238026 List!46005)) (True!15724) (False!15724) (Broken!39312 (value!238027 List!46005)) (Broken!39313 (value!238028 List!46005)) (True!15725) (RightBrace!7862) (RightBracket!7862) (Colon!7862) (Null!7862) (Comma!7862) (LeftBracket!7862) (False!15725) (LeftBrace!7862) (ImaginaryLiteralValue!7862 (text!55480 List!46005)) (StringLiteralValue!23586 (value!238029 List!46005)) (EOFValue!7862 (value!238030 List!46005)) (IdentValue!7862 (value!238031 List!46005)) (DelimiterValue!15725 (value!238032 List!46005)) (DedentValue!7862 (value!238033 List!46005)) (NewLineValue!7862 (value!238034 List!46005)) (IntegerValue!23586 (value!238035 (_ BitVec 32)) (text!55481 List!46005)) (IntegerValue!23587 (value!238036 Int) (text!55482 List!46005)) (Times!7862) (Or!7862) (Equal!7862) (Minus!7862) (Broken!39314 (value!238037 List!46005)) (And!7862) (Div!7862) (LessEqual!7862) (Mod!7862) (Concat!20399) (Not!7862) (Plus!7862) (SpaceValue!7862 (value!238038 List!46005)) (IntegerValue!23588 (value!238039 Int) (text!55483 List!46005)) (StringLiteralValue!23587 (text!55484 List!46005)) (FloatLiteralValue!15725 (text!55485 List!46005)) (BytesLiteralValue!7862 (value!238040 List!46005)) (CommentValue!15725 (value!238041 List!46005)) (StringLiteralValue!23588 (value!238042 List!46005)) (ErrorTokenValue!7862 (msg!7923 List!46005)) )
))
(declare-datatypes ((C!25264 0))(
  ( (C!25265 (val!14794 Int)) )
))
(declare-datatypes ((List!46006 0))(
  ( (Nil!45882) (Cons!45882 (h!51302 C!25264) (t!344911 List!46006)) )
))
(declare-datatypes ((IArray!27691 0))(
  ( (IArray!27692 (innerList!13903 List!46006)) )
))
(declare-datatypes ((Conc!13843 0))(
  ( (Node!13843 (left!34177 Conc!13843) (right!34507 Conc!13843) (csize!27916 Int) (cheight!14054 Int)) (Leaf!21402 (xs!17149 IArray!27691) (csize!27917 Int)) (Empty!13843) )
))
(declare-datatypes ((BalanceConc!27280 0))(
  ( (BalanceConc!27281 (c!713706 Conc!13843)) )
))
(declare-datatypes ((Regex!12537 0))(
  ( (ElementMatch!12537 (c!713707 C!25264)) (Concat!20400 (regOne!25586 Regex!12537) (regTwo!25586 Regex!12537)) (EmptyExpr!12537) (Star!12537 (reg!12866 Regex!12537)) (EmptyLang!12537) (Union!12537 (regOne!25587 Regex!12537) (regTwo!25587 Regex!12537)) )
))
(declare-datatypes ((String!53176 0))(
  ( (String!53177 (value!238043 String)) )
))
(declare-datatypes ((TokenValueInjection!15152 0))(
  ( (TokenValueInjection!15153 (toValue!10316 Int) (toChars!10175 Int)) )
))
(declare-datatypes ((Rule!15064 0))(
  ( (Rule!15065 (regex!7632 Regex!12537) (tag!8496 String!53176) (isSeparator!7632 Bool) (transformation!7632 TokenValueInjection!15152)) )
))
(declare-datatypes ((List!46007 0))(
  ( (Nil!45883) (Cons!45883 (h!51303 Rule!15064) (t!344912 List!46007)) )
))
(declare-fun rules!3843 () List!46007)

(declare-fun rulesInvariant!6438 (LexerInterface!7225 List!46007) Bool)

(assert (=> b!4179307 (= res!1713740 (rulesInvariant!6438 thiss!25986 rules!3843))))

(declare-fun b!4179308 () Bool)

(declare-fun res!1713735 () Bool)

(assert (=> b!4179308 (=> (not res!1713735) (not e!2594664))))

(declare-fun rBis!167 () Rule!15064)

(declare-fun contains!9435 (List!46007 Rule!15064) Bool)

(assert (=> b!4179308 (= res!1713735 (contains!9435 rules!3843 rBis!167))))

(declare-fun e!2594662 () Bool)

(declare-fun r!4142 () Rule!15064)

(declare-fun b!4179309 () Bool)

(declare-fun e!2594663 () Bool)

(declare-fun tp!1277249 () Bool)

(declare-fun inv!60401 (String!53176) Bool)

(declare-fun inv!60404 (TokenValueInjection!15152) Bool)

(assert (=> b!4179309 (= e!2594662 (and tp!1277249 (inv!60401 (tag!8496 r!4142)) (inv!60404 (transformation!7632 r!4142)) e!2594663))))

(declare-fun b!4179310 () Bool)

(declare-fun e!2594657 () Bool)

(declare-fun tp!1277259 () Bool)

(declare-fun e!2594656 () Bool)

(assert (=> b!4179310 (= e!2594657 (and tp!1277259 (inv!60401 (tag!8496 rBis!167)) (inv!60404 (transformation!7632 rBis!167)) e!2594656))))

(declare-fun b!4179311 () Bool)

(declare-fun res!1713736 () Bool)

(assert (=> b!4179311 (=> (not res!1713736) (not e!2594664))))

(declare-fun p!2959 () List!46006)

(declare-fun input!3342 () List!46006)

(declare-fun isPrefix!4489 (List!46006 List!46006) Bool)

(assert (=> b!4179311 (= res!1713736 (isPrefix!4489 p!2959 input!3342))))

(declare-fun b!4179312 () Bool)

(declare-fun e!2594666 () Bool)

(declare-fun e!2594660 () Bool)

(declare-fun tp!1277257 () Bool)

(assert (=> b!4179312 (= e!2594666 (and e!2594660 tp!1277257))))

(declare-fun b!4179313 () Bool)

(declare-fun e!2594653 () Bool)

(declare-fun tp_is_empty!22037 () Bool)

(declare-fun tp!1277248 () Bool)

(assert (=> b!4179313 (= e!2594653 (and tp_is_empty!22037 tp!1277248))))

(declare-fun e!2594658 () Bool)

(declare-fun b!4179314 () Bool)

(declare-fun tp!1277256 () Bool)

(assert (=> b!4179314 (= e!2594660 (and tp!1277256 (inv!60401 (tag!8496 (h!51303 rules!3843))) (inv!60404 (transformation!7632 (h!51303 rules!3843))) e!2594658))))

(declare-fun b!4179315 () Bool)

(declare-fun lt!1488574 () BalanceConc!27280)

(declare-datatypes ((Token!13978 0))(
  ( (Token!13979 (value!238044 TokenValue!7862) (rule!10692 Rule!15064) (size!33695 Int) (originalCharacters!8020 List!46006)) )
))
(declare-fun inv!60405 (Token!13978) Bool)

(declare-fun apply!10597 (TokenValueInjection!15152 BalanceConc!27280) TokenValue!7862)

(declare-fun size!33696 (List!46006) Int)

(assert (=> b!4179315 (= e!2594664 (not (inv!60405 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))))

(assert (=> b!4179315 (isPrefix!4489 input!3342 input!3342)))

(declare-datatypes ((Unit!64969 0))(
  ( (Unit!64970) )
))
(declare-fun lt!1488575 () Unit!64969)

(declare-fun lemmaIsPrefixRefl!2918 (List!46006 List!46006) Unit!64969)

(assert (=> b!4179315 (= lt!1488575 (lemmaIsPrefixRefl!2918 input!3342 input!3342))))

(declare-fun lt!1488576 () Unit!64969)

(declare-fun lemmaSemiInverse!2398 (TokenValueInjection!15152 BalanceConc!27280) Unit!64969)

(assert (=> b!4179315 (= lt!1488576 (lemmaSemiInverse!2398 (transformation!7632 r!4142) lt!1488574))))

(declare-fun seqFromList!5657 (List!46006) BalanceConc!27280)

(assert (=> b!4179315 (= lt!1488574 (seqFromList!5657 p!2959))))

(declare-fun b!4179316 () Bool)

(declare-fun res!1713734 () Bool)

(assert (=> b!4179316 (=> (not res!1713734) (not e!2594664))))

(declare-fun pBis!107 () List!46006)

(assert (=> b!4179316 (= res!1713734 (isPrefix!4489 pBis!107 input!3342))))

(declare-fun b!4179317 () Bool)

(declare-fun e!2594659 () Bool)

(declare-fun tp!1277260 () Bool)

(assert (=> b!4179317 (= e!2594659 (and tp_is_empty!22037 tp!1277260))))

(declare-fun b!4179318 () Bool)

(declare-fun res!1713738 () Bool)

(assert (=> b!4179318 (=> (not res!1713738) (not e!2594664))))

(declare-fun isEmpty!27147 (List!46007) Bool)

(assert (=> b!4179318 (= res!1713738 (not (isEmpty!27147 rules!3843)))))

(declare-fun b!4179319 () Bool)

(declare-fun res!1713732 () Bool)

(assert (=> b!4179319 (=> (not res!1713732) (not e!2594664))))

(declare-fun validRegex!5654 (Regex!12537) Bool)

(assert (=> b!4179319 (= res!1713732 (validRegex!5654 (regex!7632 r!4142)))))

(declare-fun b!4179320 () Bool)

(declare-fun res!1713731 () Bool)

(assert (=> b!4179320 (=> (not res!1713731) (not e!2594664))))

(declare-fun ruleValid!3350 (LexerInterface!7225 Rule!15064) Bool)

(assert (=> b!4179320 (= res!1713731 (ruleValid!3350 thiss!25986 r!4142))))

(declare-fun res!1713737 () Bool)

(assert (=> start!398482 (=> (not res!1713737) (not e!2594664))))

(get-info :version)

(assert (=> start!398482 (= res!1713737 ((_ is Lexer!7223) thiss!25986))))

(assert (=> start!398482 e!2594664))

(assert (=> start!398482 true))

(assert (=> start!398482 e!2594657))

(assert (=> start!398482 e!2594662))

(assert (=> start!398482 e!2594666))

(declare-fun e!2594665 () Bool)

(assert (=> start!398482 e!2594665))

(assert (=> start!398482 e!2594653))

(assert (=> start!398482 e!2594659))

(assert (=> b!4179321 (= e!2594663 (and tp!1277252 tp!1277255))))

(declare-fun b!4179322 () Bool)

(declare-fun tp!1277258 () Bool)

(assert (=> b!4179322 (= e!2594665 (and tp_is_empty!22037 tp!1277258))))

(declare-fun b!4179323 () Bool)

(declare-fun res!1713733 () Bool)

(assert (=> b!4179323 (=> (not res!1713733) (not e!2594664))))

(assert (=> b!4179323 (= res!1713733 (contains!9435 rules!3843 r!4142))))

(declare-fun b!4179324 () Bool)

(declare-fun res!1713739 () Bool)

(assert (=> b!4179324 (=> (not res!1713739) (not e!2594664))))

(declare-fun matchR!6276 (Regex!12537 List!46006) Bool)

(assert (=> b!4179324 (= res!1713739 (matchR!6276 (regex!7632 r!4142) p!2959))))

(assert (=> b!4179325 (= e!2594658 (and tp!1277254 tp!1277250))))

(assert (=> b!4179326 (= e!2594656 (and tp!1277253 tp!1277251))))

(assert (= (and start!398482 res!1713737) b!4179311))

(assert (= (and b!4179311 res!1713736) b!4179316))

(assert (= (and b!4179316 res!1713734) b!4179318))

(assert (= (and b!4179318 res!1713738) b!4179307))

(assert (= (and b!4179307 res!1713740) b!4179323))

(assert (= (and b!4179323 res!1713733) b!4179308))

(assert (= (and b!4179308 res!1713735) b!4179319))

(assert (= (and b!4179319 res!1713732) b!4179324))

(assert (= (and b!4179324 res!1713739) b!4179320))

(assert (= (and b!4179320 res!1713731) b!4179315))

(assert (= b!4179310 b!4179326))

(assert (= start!398482 b!4179310))

(assert (= b!4179309 b!4179321))

(assert (= start!398482 b!4179309))

(assert (= b!4179314 b!4179325))

(assert (= b!4179312 b!4179314))

(assert (= (and start!398482 ((_ is Cons!45883) rules!3843)) b!4179312))

(assert (= (and start!398482 ((_ is Cons!45882) input!3342)) b!4179322))

(assert (= (and start!398482 ((_ is Cons!45882) pBis!107)) b!4179313))

(assert (= (and start!398482 ((_ is Cons!45882) p!2959)) b!4179317))

(declare-fun m!4768823 () Bool)

(assert (=> b!4179314 m!4768823))

(declare-fun m!4768825 () Bool)

(assert (=> b!4179314 m!4768825))

(declare-fun m!4768827 () Bool)

(assert (=> b!4179307 m!4768827))

(declare-fun m!4768829 () Bool)

(assert (=> b!4179310 m!4768829))

(declare-fun m!4768831 () Bool)

(assert (=> b!4179310 m!4768831))

(declare-fun m!4768833 () Bool)

(assert (=> b!4179318 m!4768833))

(declare-fun m!4768835 () Bool)

(assert (=> b!4179320 m!4768835))

(declare-fun m!4768837 () Bool)

(assert (=> b!4179308 m!4768837))

(declare-fun m!4768839 () Bool)

(assert (=> b!4179309 m!4768839))

(declare-fun m!4768841 () Bool)

(assert (=> b!4179309 m!4768841))

(declare-fun m!4768843 () Bool)

(assert (=> b!4179323 m!4768843))

(declare-fun m!4768845 () Bool)

(assert (=> b!4179316 m!4768845))

(declare-fun m!4768847 () Bool)

(assert (=> b!4179319 m!4768847))

(declare-fun m!4768849 () Bool)

(assert (=> b!4179324 m!4768849))

(declare-fun m!4768851 () Bool)

(assert (=> b!4179315 m!4768851))

(declare-fun m!4768853 () Bool)

(assert (=> b!4179315 m!4768853))

(declare-fun m!4768855 () Bool)

(assert (=> b!4179315 m!4768855))

(declare-fun m!4768857 () Bool)

(assert (=> b!4179315 m!4768857))

(declare-fun m!4768859 () Bool)

(assert (=> b!4179315 m!4768859))

(declare-fun m!4768861 () Bool)

(assert (=> b!4179315 m!4768861))

(declare-fun m!4768863 () Bool)

(assert (=> b!4179315 m!4768863))

(declare-fun m!4768865 () Bool)

(assert (=> b!4179311 m!4768865))

(check-sat (not b!4179312) (not b!4179322) b_and!326797 (not b_next!122129) (not b!4179307) b_and!326799 (not b!4179316) (not b!4179323) (not b!4179310) b_and!326793 (not b!4179311) (not b!4179317) (not b!4179319) (not b!4179314) (not b!4179313) (not b!4179308) (not b!4179318) b_and!326789 (not b_next!122119) (not b_next!122123) b_and!326795 (not b!4179320) (not b!4179324) b_and!326791 (not b_next!122127) (not b!4179309) tp_is_empty!22037 (not b_next!122121) (not b!4179315) (not b_next!122125))
(check-sat b_and!326797 (not b_next!122129) b_and!326791 b_and!326799 (not b_next!122127) (not b_next!122121) (not b_next!122125) b_and!326793 b_and!326789 (not b_next!122119) (not b_next!122123) b_and!326795)
(get-model)

(declare-fun b!4179348 () Bool)

(declare-fun e!2594684 () Bool)

(assert (=> b!4179348 (= e!2594684 (>= (size!33696 input!3342) (size!33696 input!3342)))))

(declare-fun b!4179346 () Bool)

(declare-fun res!1713768 () Bool)

(declare-fun e!2594685 () Bool)

(assert (=> b!4179346 (=> (not res!1713768) (not e!2594685))))

(declare-fun head!8870 (List!46006) C!25264)

(assert (=> b!4179346 (= res!1713768 (= (head!8870 input!3342) (head!8870 input!3342)))))

(declare-fun b!4179345 () Bool)

(declare-fun e!2594683 () Bool)

(assert (=> b!4179345 (= e!2594683 e!2594685)))

(declare-fun res!1713770 () Bool)

(assert (=> b!4179345 (=> (not res!1713770) (not e!2594685))))

(assert (=> b!4179345 (= res!1713770 (not ((_ is Nil!45882) input!3342)))))

(declare-fun d!1233399 () Bool)

(assert (=> d!1233399 e!2594684))

(declare-fun res!1713769 () Bool)

(assert (=> d!1233399 (=> res!1713769 e!2594684)))

(declare-fun lt!1488582 () Bool)

(assert (=> d!1233399 (= res!1713769 (not lt!1488582))))

(assert (=> d!1233399 (= lt!1488582 e!2594683)))

(declare-fun res!1713767 () Bool)

(assert (=> d!1233399 (=> res!1713767 e!2594683)))

(assert (=> d!1233399 (= res!1713767 ((_ is Nil!45882) input!3342))))

(assert (=> d!1233399 (= (isPrefix!4489 input!3342 input!3342) lt!1488582)))

(declare-fun b!4179347 () Bool)

(declare-fun tail!6717 (List!46006) List!46006)

(assert (=> b!4179347 (= e!2594685 (isPrefix!4489 (tail!6717 input!3342) (tail!6717 input!3342)))))

(assert (= (and d!1233399 (not res!1713767)) b!4179345))

(assert (= (and b!4179345 res!1713770) b!4179346))

(assert (= (and b!4179346 res!1713768) b!4179347))

(assert (= (and d!1233399 (not res!1713769)) b!4179348))

(declare-fun m!4768881 () Bool)

(assert (=> b!4179348 m!4768881))

(assert (=> b!4179348 m!4768881))

(declare-fun m!4768883 () Bool)

(assert (=> b!4179346 m!4768883))

(assert (=> b!4179346 m!4768883))

(declare-fun m!4768885 () Bool)

(assert (=> b!4179347 m!4768885))

(assert (=> b!4179347 m!4768885))

(assert (=> b!4179347 m!4768885))

(assert (=> b!4179347 m!4768885))

(declare-fun m!4768887 () Bool)

(assert (=> b!4179347 m!4768887))

(assert (=> b!4179315 d!1233399))

(declare-fun d!1233411 () Bool)

(declare-fun fromListB!2585 (List!46006) BalanceConc!27280)

(assert (=> d!1233411 (= (seqFromList!5657 p!2959) (fromListB!2585 p!2959))))

(declare-fun bs!596216 () Bool)

(assert (= bs!596216 d!1233411))

(declare-fun m!4768889 () Bool)

(assert (=> bs!596216 m!4768889))

(assert (=> b!4179315 d!1233411))

(declare-fun d!1233413 () Bool)

(assert (=> d!1233413 (isPrefix!4489 input!3342 input!3342)))

(declare-fun lt!1488588 () Unit!64969)

(declare-fun choose!25582 (List!46006 List!46006) Unit!64969)

(assert (=> d!1233413 (= lt!1488588 (choose!25582 input!3342 input!3342))))

(assert (=> d!1233413 (= (lemmaIsPrefixRefl!2918 input!3342 input!3342) lt!1488588)))

(declare-fun bs!596217 () Bool)

(assert (= bs!596217 d!1233413))

(assert (=> bs!596217 m!4768851))

(declare-fun m!4768891 () Bool)

(assert (=> bs!596217 m!4768891))

(assert (=> b!4179315 d!1233413))

(declare-fun b!4179519 () Bool)

(declare-fun e!2594792 () Bool)

(assert (=> b!4179519 (= e!2594792 true)))

(declare-fun d!1233415 () Bool)

(assert (=> d!1233415 e!2594792))

(assert (= d!1233415 b!4179519))

(declare-fun order!24193 () Int)

(declare-fun lambda!129313 () Int)

(declare-fun order!24195 () Int)

(declare-fun dynLambda!19673 (Int Int) Int)

(declare-fun dynLambda!19674 (Int Int) Int)

(assert (=> b!4179519 (< (dynLambda!19673 order!24193 (toValue!10316 (transformation!7632 r!4142))) (dynLambda!19674 order!24195 lambda!129313))))

(declare-fun order!24197 () Int)

(declare-fun dynLambda!19675 (Int Int) Int)

(assert (=> b!4179519 (< (dynLambda!19675 order!24197 (toChars!10175 (transformation!7632 r!4142))) (dynLambda!19674 order!24195 lambda!129313))))

(declare-fun list!16573 (BalanceConc!27280) List!46006)

(declare-fun dynLambda!19676 (Int TokenValue!7862) BalanceConc!27280)

(declare-fun dynLambda!19677 (Int BalanceConc!27280) TokenValue!7862)

(assert (=> d!1233415 (= (list!16573 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574))) (list!16573 lt!1488574))))

(declare-fun lt!1488606 () Unit!64969)

(declare-fun ForallOf!1036 (Int BalanceConc!27280) Unit!64969)

(assert (=> d!1233415 (= lt!1488606 (ForallOf!1036 lambda!129313 lt!1488574))))

(assert (=> d!1233415 (= (lemmaSemiInverse!2398 (transformation!7632 r!4142) lt!1488574) lt!1488606)))

(declare-fun b_lambda!122753 () Bool)

(assert (=> (not b_lambda!122753) (not d!1233415)))

(declare-fun t!344938 () Bool)

(declare-fun tb!250147 () Bool)

(assert (=> (and b!4179321 (= (toChars!10175 (transformation!7632 r!4142)) (toChars!10175 (transformation!7632 r!4142))) t!344938) tb!250147))

(declare-fun tp!1277309 () Bool)

(declare-fun e!2594795 () Bool)

(declare-fun b!4179524 () Bool)

(declare-fun inv!60408 (Conc!13843) Bool)

(assert (=> b!4179524 (= e!2594795 (and (inv!60408 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574)))) tp!1277309))))

(declare-fun result!304810 () Bool)

(declare-fun inv!60409 (BalanceConc!27280) Bool)

(assert (=> tb!250147 (= result!304810 (and (inv!60409 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574))) e!2594795))))

(assert (= tb!250147 b!4179524))

(declare-fun m!4768981 () Bool)

(assert (=> b!4179524 m!4768981))

(declare-fun m!4768983 () Bool)

(assert (=> tb!250147 m!4768983))

(assert (=> d!1233415 t!344938))

(declare-fun b_and!326829 () Bool)

(assert (= b_and!326791 (and (=> t!344938 result!304810) b_and!326829)))

(declare-fun t!344940 () Bool)

(declare-fun tb!250149 () Bool)

(assert (=> (and b!4179326 (= (toChars!10175 (transformation!7632 rBis!167)) (toChars!10175 (transformation!7632 r!4142))) t!344940) tb!250149))

(declare-fun result!304814 () Bool)

(assert (= result!304814 result!304810))

(assert (=> d!1233415 t!344940))

(declare-fun b_and!326831 () Bool)

(assert (= b_and!326795 (and (=> t!344940 result!304814) b_and!326831)))

(declare-fun tb!250151 () Bool)

(declare-fun t!344942 () Bool)

(assert (=> (and b!4179325 (= (toChars!10175 (transformation!7632 (h!51303 rules!3843))) (toChars!10175 (transformation!7632 r!4142))) t!344942) tb!250151))

(declare-fun result!304816 () Bool)

(assert (= result!304816 result!304810))

(assert (=> d!1233415 t!344942))

(declare-fun b_and!326833 () Bool)

(assert (= b_and!326799 (and (=> t!344942 result!304816) b_and!326833)))

(declare-fun b_lambda!122755 () Bool)

(assert (=> (not b_lambda!122755) (not d!1233415)))

(declare-fun t!344944 () Bool)

(declare-fun tb!250153 () Bool)

(assert (=> (and b!4179321 (= (toValue!10316 (transformation!7632 r!4142)) (toValue!10316 (transformation!7632 r!4142))) t!344944) tb!250153))

(declare-fun result!304818 () Bool)

(declare-fun inv!21 (TokenValue!7862) Bool)

(assert (=> tb!250153 (= result!304818 (inv!21 (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574)))))

(declare-fun m!4768985 () Bool)

(assert (=> tb!250153 m!4768985))

(assert (=> d!1233415 t!344944))

(declare-fun b_and!326835 () Bool)

(assert (= b_and!326789 (and (=> t!344944 result!304818) b_and!326835)))

(declare-fun tb!250155 () Bool)

(declare-fun t!344946 () Bool)

(assert (=> (and b!4179326 (= (toValue!10316 (transformation!7632 rBis!167)) (toValue!10316 (transformation!7632 r!4142))) t!344946) tb!250155))

(declare-fun result!304822 () Bool)

(assert (= result!304822 result!304818))

(assert (=> d!1233415 t!344946))

(declare-fun b_and!326837 () Bool)

(assert (= b_and!326793 (and (=> t!344946 result!304822) b_and!326837)))

(declare-fun tb!250157 () Bool)

(declare-fun t!344948 () Bool)

(assert (=> (and b!4179325 (= (toValue!10316 (transformation!7632 (h!51303 rules!3843))) (toValue!10316 (transformation!7632 r!4142))) t!344948) tb!250157))

(declare-fun result!304824 () Bool)

(assert (= result!304824 result!304818))

(assert (=> d!1233415 t!344948))

(declare-fun b_and!326839 () Bool)

(assert (= b_and!326797 (and (=> t!344948 result!304824) b_and!326839)))

(declare-fun m!4768987 () Bool)

(assert (=> d!1233415 m!4768987))

(declare-fun m!4768989 () Bool)

(assert (=> d!1233415 m!4768989))

(declare-fun m!4768991 () Bool)

(assert (=> d!1233415 m!4768991))

(declare-fun m!4768993 () Bool)

(assert (=> d!1233415 m!4768993))

(declare-fun m!4768995 () Bool)

(assert (=> d!1233415 m!4768995))

(assert (=> d!1233415 m!4768987))

(assert (=> d!1233415 m!4768991))

(assert (=> b!4179315 d!1233415))

(declare-fun d!1233447 () Bool)

(declare-fun res!1713852 () Bool)

(declare-fun e!2594801 () Bool)

(assert (=> d!1233447 (=> (not res!1713852) (not e!2594801))))

(declare-fun isEmpty!27149 (List!46006) Bool)

(assert (=> d!1233447 (= res!1713852 (not (isEmpty!27149 (originalCharacters!8020 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))))))

(assert (=> d!1233447 (= (inv!60405 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)) e!2594801)))

(declare-fun b!4179531 () Bool)

(declare-fun res!1713853 () Bool)

(assert (=> b!4179531 (=> (not res!1713853) (not e!2594801))))

(assert (=> b!4179531 (= res!1713853 (= (originalCharacters!8020 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)) (list!16573 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))))))

(declare-fun b!4179532 () Bool)

(assert (=> b!4179532 (= e!2594801 (= (size!33695 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)) (size!33696 (originalCharacters!8020 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))))))

(assert (= (and d!1233447 res!1713852) b!4179531))

(assert (= (and b!4179531 res!1713853) b!4179532))

(declare-fun b_lambda!122757 () Bool)

(assert (=> (not b_lambda!122757) (not b!4179531)))

(declare-fun t!344950 () Bool)

(declare-fun tb!250159 () Bool)

(assert (=> (and b!4179321 (= (toChars!10175 (transformation!7632 r!4142)) (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))) t!344950) tb!250159))

(declare-fun tp!1277310 () Bool)

(declare-fun b!4179533 () Bool)

(declare-fun e!2594802 () Bool)

(assert (=> b!4179533 (= e!2594802 (and (inv!60408 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))) tp!1277310))))

(declare-fun result!304826 () Bool)

(assert (=> tb!250159 (= result!304826 (and (inv!60409 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) e!2594802))))

(assert (= tb!250159 b!4179533))

(declare-fun m!4768997 () Bool)

(assert (=> b!4179533 m!4768997))

(declare-fun m!4768999 () Bool)

(assert (=> tb!250159 m!4768999))

(assert (=> b!4179531 t!344950))

(declare-fun b_and!326841 () Bool)

(assert (= b_and!326829 (and (=> t!344950 result!304826) b_and!326841)))

(declare-fun tb!250161 () Bool)

(declare-fun t!344952 () Bool)

(assert (=> (and b!4179326 (= (toChars!10175 (transformation!7632 rBis!167)) (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))) t!344952) tb!250161))

(declare-fun result!304828 () Bool)

(assert (= result!304828 result!304826))

(assert (=> b!4179531 t!344952))

(declare-fun b_and!326843 () Bool)

(assert (= b_and!326831 (and (=> t!344952 result!304828) b_and!326843)))

(declare-fun tb!250163 () Bool)

(declare-fun t!344954 () Bool)

(assert (=> (and b!4179325 (= (toChars!10175 (transformation!7632 (h!51303 rules!3843))) (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))) t!344954) tb!250163))

(declare-fun result!304830 () Bool)

(assert (= result!304830 result!304826))

(assert (=> b!4179531 t!344954))

(declare-fun b_and!326845 () Bool)

(assert (= b_and!326833 (and (=> t!344954 result!304830) b_and!326845)))

(declare-fun m!4769001 () Bool)

(assert (=> d!1233447 m!4769001))

(declare-fun m!4769003 () Bool)

(assert (=> b!4179531 m!4769003))

(assert (=> b!4179531 m!4769003))

(declare-fun m!4769005 () Bool)

(assert (=> b!4179531 m!4769005))

(declare-fun m!4769007 () Bool)

(assert (=> b!4179532 m!4769007))

(assert (=> b!4179315 d!1233447))

(declare-fun d!1233449 () Bool)

(declare-fun lt!1488609 () Int)

(assert (=> d!1233449 (>= lt!1488609 0)))

(declare-fun e!2594805 () Int)

(assert (=> d!1233449 (= lt!1488609 e!2594805)))

(declare-fun c!713730 () Bool)

(assert (=> d!1233449 (= c!713730 ((_ is Nil!45882) p!2959))))

(assert (=> d!1233449 (= (size!33696 p!2959) lt!1488609)))

(declare-fun b!4179538 () Bool)

(assert (=> b!4179538 (= e!2594805 0)))

(declare-fun b!4179539 () Bool)

(assert (=> b!4179539 (= e!2594805 (+ 1 (size!33696 (t!344911 p!2959))))))

(assert (= (and d!1233449 c!713730) b!4179538))

(assert (= (and d!1233449 (not c!713730)) b!4179539))

(declare-fun m!4769009 () Bool)

(assert (=> b!4179539 m!4769009))

(assert (=> b!4179315 d!1233449))

(declare-fun d!1233451 () Bool)

(assert (=> d!1233451 (= (apply!10597 (transformation!7632 r!4142) lt!1488574) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574))))

(declare-fun b_lambda!122759 () Bool)

(assert (=> (not b_lambda!122759) (not d!1233451)))

(assert (=> d!1233451 t!344944))

(declare-fun b_and!326847 () Bool)

(assert (= b_and!326835 (and (=> t!344944 result!304818) b_and!326847)))

(assert (=> d!1233451 t!344946))

(declare-fun b_and!326849 () Bool)

(assert (= b_and!326837 (and (=> t!344946 result!304822) b_and!326849)))

(assert (=> d!1233451 t!344948))

(declare-fun b_and!326851 () Bool)

(assert (= b_and!326839 (and (=> t!344948 result!304824) b_and!326851)))

(assert (=> d!1233451 m!4768987))

(assert (=> b!4179315 d!1233451))

(declare-fun b!4179543 () Bool)

(declare-fun e!2594807 () Bool)

(assert (=> b!4179543 (= e!2594807 (>= (size!33696 input!3342) (size!33696 pBis!107)))))

(declare-fun b!4179541 () Bool)

(declare-fun res!1713855 () Bool)

(declare-fun e!2594808 () Bool)

(assert (=> b!4179541 (=> (not res!1713855) (not e!2594808))))

(assert (=> b!4179541 (= res!1713855 (= (head!8870 pBis!107) (head!8870 input!3342)))))

(declare-fun b!4179540 () Bool)

(declare-fun e!2594806 () Bool)

(assert (=> b!4179540 (= e!2594806 e!2594808)))

(declare-fun res!1713857 () Bool)

(assert (=> b!4179540 (=> (not res!1713857) (not e!2594808))))

(assert (=> b!4179540 (= res!1713857 (not ((_ is Nil!45882) input!3342)))))

(declare-fun d!1233453 () Bool)

(assert (=> d!1233453 e!2594807))

(declare-fun res!1713856 () Bool)

(assert (=> d!1233453 (=> res!1713856 e!2594807)))

(declare-fun lt!1488610 () Bool)

(assert (=> d!1233453 (= res!1713856 (not lt!1488610))))

(assert (=> d!1233453 (= lt!1488610 e!2594806)))

(declare-fun res!1713854 () Bool)

(assert (=> d!1233453 (=> res!1713854 e!2594806)))

(assert (=> d!1233453 (= res!1713854 ((_ is Nil!45882) pBis!107))))

(assert (=> d!1233453 (= (isPrefix!4489 pBis!107 input!3342) lt!1488610)))

(declare-fun b!4179542 () Bool)

(assert (=> b!4179542 (= e!2594808 (isPrefix!4489 (tail!6717 pBis!107) (tail!6717 input!3342)))))

(assert (= (and d!1233453 (not res!1713854)) b!4179540))

(assert (= (and b!4179540 res!1713857) b!4179541))

(assert (= (and b!4179541 res!1713855) b!4179542))

(assert (= (and d!1233453 (not res!1713856)) b!4179543))

(assert (=> b!4179543 m!4768881))

(declare-fun m!4769011 () Bool)

(assert (=> b!4179543 m!4769011))

(declare-fun m!4769013 () Bool)

(assert (=> b!4179541 m!4769013))

(assert (=> b!4179541 m!4768883))

(declare-fun m!4769015 () Bool)

(assert (=> b!4179542 m!4769015))

(assert (=> b!4179542 m!4768885))

(assert (=> b!4179542 m!4769015))

(assert (=> b!4179542 m!4768885))

(declare-fun m!4769017 () Bool)

(assert (=> b!4179542 m!4769017))

(assert (=> b!4179316 d!1233453))

(declare-fun d!1233455 () Bool)

(assert (=> d!1233455 (= (inv!60401 (tag!8496 (h!51303 rules!3843))) (= (mod (str.len (value!238043 (tag!8496 (h!51303 rules!3843)))) 2) 0))))

(assert (=> b!4179314 d!1233455))

(declare-fun d!1233457 () Bool)

(declare-fun res!1713860 () Bool)

(declare-fun e!2594811 () Bool)

(assert (=> d!1233457 (=> (not res!1713860) (not e!2594811))))

(declare-fun semiInverseModEq!3302 (Int Int) Bool)

(assert (=> d!1233457 (= res!1713860 (semiInverseModEq!3302 (toChars!10175 (transformation!7632 (h!51303 rules!3843))) (toValue!10316 (transformation!7632 (h!51303 rules!3843)))))))

(assert (=> d!1233457 (= (inv!60404 (transformation!7632 (h!51303 rules!3843))) e!2594811)))

(declare-fun b!4179546 () Bool)

(declare-fun equivClasses!3201 (Int Int) Bool)

(assert (=> b!4179546 (= e!2594811 (equivClasses!3201 (toChars!10175 (transformation!7632 (h!51303 rules!3843))) (toValue!10316 (transformation!7632 (h!51303 rules!3843)))))))

(assert (= (and d!1233457 res!1713860) b!4179546))

(declare-fun m!4769019 () Bool)

(assert (=> d!1233457 m!4769019))

(declare-fun m!4769021 () Bool)

(assert (=> b!4179546 m!4769021))

(assert (=> b!4179314 d!1233457))

(declare-fun d!1233459 () Bool)

(declare-fun lt!1488613 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7126 (List!46007) (InoxSet Rule!15064))

(assert (=> d!1233459 (= lt!1488613 (select (content!7126 rules!3843) r!4142))))

(declare-fun e!2594816 () Bool)

(assert (=> d!1233459 (= lt!1488613 e!2594816)))

(declare-fun res!1713865 () Bool)

(assert (=> d!1233459 (=> (not res!1713865) (not e!2594816))))

(assert (=> d!1233459 (= res!1713865 ((_ is Cons!45883) rules!3843))))

(assert (=> d!1233459 (= (contains!9435 rules!3843 r!4142) lt!1488613)))

(declare-fun b!4179551 () Bool)

(declare-fun e!2594817 () Bool)

(assert (=> b!4179551 (= e!2594816 e!2594817)))

(declare-fun res!1713866 () Bool)

(assert (=> b!4179551 (=> res!1713866 e!2594817)))

(assert (=> b!4179551 (= res!1713866 (= (h!51303 rules!3843) r!4142))))

(declare-fun b!4179552 () Bool)

(assert (=> b!4179552 (= e!2594817 (contains!9435 (t!344912 rules!3843) r!4142))))

(assert (= (and d!1233459 res!1713865) b!4179551))

(assert (= (and b!4179551 (not res!1713866)) b!4179552))

(declare-fun m!4769023 () Bool)

(assert (=> d!1233459 m!4769023))

(declare-fun m!4769025 () Bool)

(assert (=> d!1233459 m!4769025))

(declare-fun m!4769027 () Bool)

(assert (=> b!4179552 m!4769027))

(assert (=> b!4179323 d!1233459))

(declare-fun d!1233461 () Bool)

(declare-fun e!2594835 () Bool)

(assert (=> d!1233461 e!2594835))

(declare-fun c!713739 () Bool)

(assert (=> d!1233461 (= c!713739 ((_ is EmptyExpr!12537) (regex!7632 r!4142)))))

(declare-fun lt!1488616 () Bool)

(declare-fun e!2594833 () Bool)

(assert (=> d!1233461 (= lt!1488616 e!2594833)))

(declare-fun c!713738 () Bool)

(assert (=> d!1233461 (= c!713738 (isEmpty!27149 p!2959))))

(assert (=> d!1233461 (validRegex!5654 (regex!7632 r!4142))))

(assert (=> d!1233461 (= (matchR!6276 (regex!7632 r!4142) p!2959) lt!1488616)))

(declare-fun b!4179581 () Bool)

(declare-fun e!2594834 () Bool)

(assert (=> b!4179581 (= e!2594835 e!2594834)))

(declare-fun c!713737 () Bool)

(assert (=> b!4179581 (= c!713737 ((_ is EmptyLang!12537) (regex!7632 r!4142)))))

(declare-fun b!4179582 () Bool)

(declare-fun e!2594838 () Bool)

(assert (=> b!4179582 (= e!2594838 (= (head!8870 p!2959) (c!713707 (regex!7632 r!4142))))))

(declare-fun b!4179583 () Bool)

(declare-fun e!2594836 () Bool)

(declare-fun e!2594837 () Bool)

(assert (=> b!4179583 (= e!2594836 e!2594837)))

(declare-fun res!1713889 () Bool)

(assert (=> b!4179583 (=> res!1713889 e!2594837)))

(declare-fun call!291539 () Bool)

(assert (=> b!4179583 (= res!1713889 call!291539)))

(declare-fun b!4179584 () Bool)

(declare-fun e!2594832 () Bool)

(assert (=> b!4179584 (= e!2594832 e!2594836)))

(declare-fun res!1713885 () Bool)

(assert (=> b!4179584 (=> (not res!1713885) (not e!2594836))))

(assert (=> b!4179584 (= res!1713885 (not lt!1488616))))

(declare-fun b!4179585 () Bool)

(assert (=> b!4179585 (= e!2594837 (not (= (head!8870 p!2959) (c!713707 (regex!7632 r!4142)))))))

(declare-fun b!4179586 () Bool)

(declare-fun res!1713883 () Bool)

(assert (=> b!4179586 (=> res!1713883 e!2594832)))

(assert (=> b!4179586 (= res!1713883 (not ((_ is ElementMatch!12537) (regex!7632 r!4142))))))

(assert (=> b!4179586 (= e!2594834 e!2594832)))

(declare-fun bm!291534 () Bool)

(assert (=> bm!291534 (= call!291539 (isEmpty!27149 p!2959))))

(declare-fun b!4179587 () Bool)

(assert (=> b!4179587 (= e!2594835 (= lt!1488616 call!291539))))

(declare-fun b!4179588 () Bool)

(declare-fun res!1713884 () Bool)

(assert (=> b!4179588 (=> (not res!1713884) (not e!2594838))))

(assert (=> b!4179588 (= res!1713884 (isEmpty!27149 (tail!6717 p!2959)))))

(declare-fun b!4179589 () Bool)

(declare-fun res!1713888 () Bool)

(assert (=> b!4179589 (=> (not res!1713888) (not e!2594838))))

(assert (=> b!4179589 (= res!1713888 (not call!291539))))

(declare-fun b!4179590 () Bool)

(declare-fun res!1713890 () Bool)

(assert (=> b!4179590 (=> res!1713890 e!2594832)))

(assert (=> b!4179590 (= res!1713890 e!2594838)))

(declare-fun res!1713886 () Bool)

(assert (=> b!4179590 (=> (not res!1713886) (not e!2594838))))

(assert (=> b!4179590 (= res!1713886 lt!1488616)))

(declare-fun b!4179591 () Bool)

(assert (=> b!4179591 (= e!2594834 (not lt!1488616))))

(declare-fun b!4179592 () Bool)

(declare-fun derivativeStep!3783 (Regex!12537 C!25264) Regex!12537)

(assert (=> b!4179592 (= e!2594833 (matchR!6276 (derivativeStep!3783 (regex!7632 r!4142) (head!8870 p!2959)) (tail!6717 p!2959)))))

(declare-fun b!4179593 () Bool)

(declare-fun nullable!4393 (Regex!12537) Bool)

(assert (=> b!4179593 (= e!2594833 (nullable!4393 (regex!7632 r!4142)))))

(declare-fun b!4179594 () Bool)

(declare-fun res!1713887 () Bool)

(assert (=> b!4179594 (=> res!1713887 e!2594837)))

(assert (=> b!4179594 (= res!1713887 (not (isEmpty!27149 (tail!6717 p!2959))))))

(assert (= (and d!1233461 c!713738) b!4179593))

(assert (= (and d!1233461 (not c!713738)) b!4179592))

(assert (= (and d!1233461 c!713739) b!4179587))

(assert (= (and d!1233461 (not c!713739)) b!4179581))

(assert (= (and b!4179581 c!713737) b!4179591))

(assert (= (and b!4179581 (not c!713737)) b!4179586))

(assert (= (and b!4179586 (not res!1713883)) b!4179590))

(assert (= (and b!4179590 res!1713886) b!4179589))

(assert (= (and b!4179589 res!1713888) b!4179588))

(assert (= (and b!4179588 res!1713884) b!4179582))

(assert (= (and b!4179590 (not res!1713890)) b!4179584))

(assert (= (and b!4179584 res!1713885) b!4179583))

(assert (= (and b!4179583 (not res!1713889)) b!4179594))

(assert (= (and b!4179594 (not res!1713887)) b!4179585))

(assert (= (or b!4179587 b!4179583 b!4179589) bm!291534))

(declare-fun m!4769029 () Bool)

(assert (=> b!4179593 m!4769029))

(declare-fun m!4769031 () Bool)

(assert (=> b!4179592 m!4769031))

(assert (=> b!4179592 m!4769031))

(declare-fun m!4769033 () Bool)

(assert (=> b!4179592 m!4769033))

(declare-fun m!4769035 () Bool)

(assert (=> b!4179592 m!4769035))

(assert (=> b!4179592 m!4769033))

(assert (=> b!4179592 m!4769035))

(declare-fun m!4769037 () Bool)

(assert (=> b!4179592 m!4769037))

(assert (=> b!4179585 m!4769031))

(declare-fun m!4769039 () Bool)

(assert (=> d!1233461 m!4769039))

(assert (=> d!1233461 m!4768847))

(assert (=> bm!291534 m!4769039))

(assert (=> b!4179588 m!4769035))

(assert (=> b!4179588 m!4769035))

(declare-fun m!4769041 () Bool)

(assert (=> b!4179588 m!4769041))

(assert (=> b!4179582 m!4769031))

(assert (=> b!4179594 m!4769035))

(assert (=> b!4179594 m!4769035))

(assert (=> b!4179594 m!4769041))

(assert (=> b!4179324 d!1233461))

(declare-fun b!4179598 () Bool)

(declare-fun e!2594840 () Bool)

(assert (=> b!4179598 (= e!2594840 (>= (size!33696 input!3342) (size!33696 p!2959)))))

(declare-fun b!4179596 () Bool)

(declare-fun res!1713892 () Bool)

(declare-fun e!2594841 () Bool)

(assert (=> b!4179596 (=> (not res!1713892) (not e!2594841))))

(assert (=> b!4179596 (= res!1713892 (= (head!8870 p!2959) (head!8870 input!3342)))))

(declare-fun b!4179595 () Bool)

(declare-fun e!2594839 () Bool)

(assert (=> b!4179595 (= e!2594839 e!2594841)))

(declare-fun res!1713894 () Bool)

(assert (=> b!4179595 (=> (not res!1713894) (not e!2594841))))

(assert (=> b!4179595 (= res!1713894 (not ((_ is Nil!45882) input!3342)))))

(declare-fun d!1233463 () Bool)

(assert (=> d!1233463 e!2594840))

(declare-fun res!1713893 () Bool)

(assert (=> d!1233463 (=> res!1713893 e!2594840)))

(declare-fun lt!1488617 () Bool)

(assert (=> d!1233463 (= res!1713893 (not lt!1488617))))

(assert (=> d!1233463 (= lt!1488617 e!2594839)))

(declare-fun res!1713891 () Bool)

(assert (=> d!1233463 (=> res!1713891 e!2594839)))

(assert (=> d!1233463 (= res!1713891 ((_ is Nil!45882) p!2959))))

(assert (=> d!1233463 (= (isPrefix!4489 p!2959 input!3342) lt!1488617)))

(declare-fun b!4179597 () Bool)

(assert (=> b!4179597 (= e!2594841 (isPrefix!4489 (tail!6717 p!2959) (tail!6717 input!3342)))))

(assert (= (and d!1233463 (not res!1713891)) b!4179595))

(assert (= (and b!4179595 res!1713894) b!4179596))

(assert (= (and b!4179596 res!1713892) b!4179597))

(assert (= (and d!1233463 (not res!1713893)) b!4179598))

(assert (=> b!4179598 m!4768881))

(assert (=> b!4179598 m!4768861))

(assert (=> b!4179596 m!4769031))

(assert (=> b!4179596 m!4768883))

(assert (=> b!4179597 m!4769035))

(assert (=> b!4179597 m!4768885))

(assert (=> b!4179597 m!4769035))

(assert (=> b!4179597 m!4768885))

(declare-fun m!4769043 () Bool)

(assert (=> b!4179597 m!4769043))

(assert (=> b!4179311 d!1233463))

(declare-fun d!1233465 () Bool)

(assert (=> d!1233465 (= (inv!60401 (tag!8496 rBis!167)) (= (mod (str.len (value!238043 (tag!8496 rBis!167))) 2) 0))))

(assert (=> b!4179310 d!1233465))

(declare-fun d!1233467 () Bool)

(declare-fun res!1713895 () Bool)

(declare-fun e!2594842 () Bool)

(assert (=> d!1233467 (=> (not res!1713895) (not e!2594842))))

(assert (=> d!1233467 (= res!1713895 (semiInverseModEq!3302 (toChars!10175 (transformation!7632 rBis!167)) (toValue!10316 (transformation!7632 rBis!167))))))

(assert (=> d!1233467 (= (inv!60404 (transformation!7632 rBis!167)) e!2594842)))

(declare-fun b!4179599 () Bool)

(assert (=> b!4179599 (= e!2594842 (equivClasses!3201 (toChars!10175 (transformation!7632 rBis!167)) (toValue!10316 (transformation!7632 rBis!167))))))

(assert (= (and d!1233467 res!1713895) b!4179599))

(declare-fun m!4769045 () Bool)

(assert (=> d!1233467 m!4769045))

(declare-fun m!4769047 () Bool)

(assert (=> b!4179599 m!4769047))

(assert (=> b!4179310 d!1233467))

(declare-fun d!1233469 () Bool)

(declare-fun res!1713910 () Bool)

(declare-fun e!2594861 () Bool)

(assert (=> d!1233469 (=> res!1713910 e!2594861)))

(assert (=> d!1233469 (= res!1713910 ((_ is ElementMatch!12537) (regex!7632 r!4142)))))

(assert (=> d!1233469 (= (validRegex!5654 (regex!7632 r!4142)) e!2594861)))

(declare-fun b!4179618 () Bool)

(declare-fun res!1713909 () Bool)

(declare-fun e!2594859 () Bool)

(assert (=> b!4179618 (=> res!1713909 e!2594859)))

(assert (=> b!4179618 (= res!1713909 (not ((_ is Concat!20400) (regex!7632 r!4142))))))

(declare-fun e!2594860 () Bool)

(assert (=> b!4179618 (= e!2594860 e!2594859)))

(declare-fun b!4179619 () Bool)

(declare-fun e!2594863 () Bool)

(assert (=> b!4179619 (= e!2594861 e!2594863)))

(declare-fun c!713745 () Bool)

(assert (=> b!4179619 (= c!713745 ((_ is Star!12537) (regex!7632 r!4142)))))

(declare-fun b!4179620 () Bool)

(declare-fun res!1713906 () Bool)

(declare-fun e!2594862 () Bool)

(assert (=> b!4179620 (=> (not res!1713906) (not e!2594862))))

(declare-fun call!291547 () Bool)

(assert (=> b!4179620 (= res!1713906 call!291547)))

(assert (=> b!4179620 (= e!2594860 e!2594862)))

(declare-fun b!4179621 () Bool)

(declare-fun e!2594858 () Bool)

(declare-fun call!291546 () Bool)

(assert (=> b!4179621 (= e!2594858 call!291546)))

(declare-fun b!4179622 () Bool)

(assert (=> b!4179622 (= e!2594863 e!2594860)))

(declare-fun c!713744 () Bool)

(assert (=> b!4179622 (= c!713744 ((_ is Union!12537) (regex!7632 r!4142)))))

(declare-fun bm!291541 () Bool)

(assert (=> bm!291541 (= call!291547 (validRegex!5654 (ite c!713744 (regOne!25587 (regex!7632 r!4142)) (regOne!25586 (regex!7632 r!4142)))))))

(declare-fun b!4179623 () Bool)

(assert (=> b!4179623 (= e!2594859 e!2594858)))

(declare-fun res!1713908 () Bool)

(assert (=> b!4179623 (=> (not res!1713908) (not e!2594858))))

(assert (=> b!4179623 (= res!1713908 call!291547)))

(declare-fun bm!291542 () Bool)

(declare-fun call!291548 () Bool)

(assert (=> bm!291542 (= call!291546 call!291548)))

(declare-fun bm!291543 () Bool)

(assert (=> bm!291543 (= call!291548 (validRegex!5654 (ite c!713745 (reg!12866 (regex!7632 r!4142)) (ite c!713744 (regTwo!25587 (regex!7632 r!4142)) (regTwo!25586 (regex!7632 r!4142))))))))

(declare-fun b!4179624 () Bool)

(declare-fun e!2594857 () Bool)

(assert (=> b!4179624 (= e!2594857 call!291548)))

(declare-fun b!4179625 () Bool)

(assert (=> b!4179625 (= e!2594862 call!291546)))

(declare-fun b!4179626 () Bool)

(assert (=> b!4179626 (= e!2594863 e!2594857)))

(declare-fun res!1713907 () Bool)

(assert (=> b!4179626 (= res!1713907 (not (nullable!4393 (reg!12866 (regex!7632 r!4142)))))))

(assert (=> b!4179626 (=> (not res!1713907) (not e!2594857))))

(assert (= (and d!1233469 (not res!1713910)) b!4179619))

(assert (= (and b!4179619 c!713745) b!4179626))

(assert (= (and b!4179619 (not c!713745)) b!4179622))

(assert (= (and b!4179626 res!1713907) b!4179624))

(assert (= (and b!4179622 c!713744) b!4179620))

(assert (= (and b!4179622 (not c!713744)) b!4179618))

(assert (= (and b!4179620 res!1713906) b!4179625))

(assert (= (and b!4179618 (not res!1713909)) b!4179623))

(assert (= (and b!4179623 res!1713908) b!4179621))

(assert (= (or b!4179625 b!4179621) bm!291542))

(assert (= (or b!4179620 b!4179623) bm!291541))

(assert (= (or b!4179624 bm!291542) bm!291543))

(declare-fun m!4769049 () Bool)

(assert (=> bm!291541 m!4769049))

(declare-fun m!4769051 () Bool)

(assert (=> bm!291543 m!4769051))

(declare-fun m!4769053 () Bool)

(assert (=> b!4179626 m!4769053))

(assert (=> b!4179319 d!1233469))

(declare-fun d!1233471 () Bool)

(declare-fun res!1713915 () Bool)

(declare-fun e!2594866 () Bool)

(assert (=> d!1233471 (=> (not res!1713915) (not e!2594866))))

(assert (=> d!1233471 (= res!1713915 (validRegex!5654 (regex!7632 r!4142)))))

(assert (=> d!1233471 (= (ruleValid!3350 thiss!25986 r!4142) e!2594866)))

(declare-fun b!4179631 () Bool)

(declare-fun res!1713916 () Bool)

(assert (=> b!4179631 (=> (not res!1713916) (not e!2594866))))

(assert (=> b!4179631 (= res!1713916 (not (nullable!4393 (regex!7632 r!4142))))))

(declare-fun b!4179632 () Bool)

(assert (=> b!4179632 (= e!2594866 (not (= (tag!8496 r!4142) (String!53177 ""))))))

(assert (= (and d!1233471 res!1713915) b!4179631))

(assert (= (and b!4179631 res!1713916) b!4179632))

(assert (=> d!1233471 m!4768847))

(assert (=> b!4179631 m!4769029))

(assert (=> b!4179320 d!1233471))

(declare-fun d!1233473 () Bool)

(assert (=> d!1233473 (= (inv!60401 (tag!8496 r!4142)) (= (mod (str.len (value!238043 (tag!8496 r!4142))) 2) 0))))

(assert (=> b!4179309 d!1233473))

(declare-fun d!1233475 () Bool)

(declare-fun res!1713917 () Bool)

(declare-fun e!2594867 () Bool)

(assert (=> d!1233475 (=> (not res!1713917) (not e!2594867))))

(assert (=> d!1233475 (= res!1713917 (semiInverseModEq!3302 (toChars!10175 (transformation!7632 r!4142)) (toValue!10316 (transformation!7632 r!4142))))))

(assert (=> d!1233475 (= (inv!60404 (transformation!7632 r!4142)) e!2594867)))

(declare-fun b!4179633 () Bool)

(assert (=> b!4179633 (= e!2594867 (equivClasses!3201 (toChars!10175 (transformation!7632 r!4142)) (toValue!10316 (transformation!7632 r!4142))))))

(assert (= (and d!1233475 res!1713917) b!4179633))

(declare-fun m!4769055 () Bool)

(assert (=> d!1233475 m!4769055))

(declare-fun m!4769057 () Bool)

(assert (=> b!4179633 m!4769057))

(assert (=> b!4179309 d!1233475))

(declare-fun d!1233477 () Bool)

(assert (=> d!1233477 (= (isEmpty!27147 rules!3843) ((_ is Nil!45883) rules!3843))))

(assert (=> b!4179318 d!1233477))

(declare-fun d!1233479 () Bool)

(declare-fun res!1713920 () Bool)

(declare-fun e!2594870 () Bool)

(assert (=> d!1233479 (=> (not res!1713920) (not e!2594870))))

(declare-fun rulesValid!2970 (LexerInterface!7225 List!46007) Bool)

(assert (=> d!1233479 (= res!1713920 (rulesValid!2970 thiss!25986 rules!3843))))

(assert (=> d!1233479 (= (rulesInvariant!6438 thiss!25986 rules!3843) e!2594870)))

(declare-fun b!4179636 () Bool)

(declare-datatypes ((List!46009 0))(
  ( (Nil!45885) (Cons!45885 (h!51305 String!53176) (t!344962 List!46009)) )
))
(declare-fun noDuplicateTag!3131 (LexerInterface!7225 List!46007 List!46009) Bool)

(assert (=> b!4179636 (= e!2594870 (noDuplicateTag!3131 thiss!25986 rules!3843 Nil!45885))))

(assert (= (and d!1233479 res!1713920) b!4179636))

(declare-fun m!4769059 () Bool)

(assert (=> d!1233479 m!4769059))

(declare-fun m!4769061 () Bool)

(assert (=> b!4179636 m!4769061))

(assert (=> b!4179307 d!1233479))

(declare-fun d!1233481 () Bool)

(declare-fun lt!1488618 () Bool)

(assert (=> d!1233481 (= lt!1488618 (select (content!7126 rules!3843) rBis!167))))

(declare-fun e!2594871 () Bool)

(assert (=> d!1233481 (= lt!1488618 e!2594871)))

(declare-fun res!1713921 () Bool)

(assert (=> d!1233481 (=> (not res!1713921) (not e!2594871))))

(assert (=> d!1233481 (= res!1713921 ((_ is Cons!45883) rules!3843))))

(assert (=> d!1233481 (= (contains!9435 rules!3843 rBis!167) lt!1488618)))

(declare-fun b!4179637 () Bool)

(declare-fun e!2594872 () Bool)

(assert (=> b!4179637 (= e!2594871 e!2594872)))

(declare-fun res!1713922 () Bool)

(assert (=> b!4179637 (=> res!1713922 e!2594872)))

(assert (=> b!4179637 (= res!1713922 (= (h!51303 rules!3843) rBis!167))))

(declare-fun b!4179638 () Bool)

(assert (=> b!4179638 (= e!2594872 (contains!9435 (t!344912 rules!3843) rBis!167))))

(assert (= (and d!1233481 res!1713921) b!4179637))

(assert (= (and b!4179637 (not res!1713922)) b!4179638))

(assert (=> d!1233481 m!4769023))

(declare-fun m!4769063 () Bool)

(assert (=> d!1233481 m!4769063))

(declare-fun m!4769065 () Bool)

(assert (=> b!4179638 m!4769065))

(assert (=> b!4179308 d!1233481))

(declare-fun b!4179651 () Bool)

(declare-fun e!2594875 () Bool)

(declare-fun tp!1277325 () Bool)

(assert (=> b!4179651 (= e!2594875 tp!1277325)))

(declare-fun b!4179649 () Bool)

(assert (=> b!4179649 (= e!2594875 tp_is_empty!22037)))

(declare-fun b!4179652 () Bool)

(declare-fun tp!1277321 () Bool)

(declare-fun tp!1277322 () Bool)

(assert (=> b!4179652 (= e!2594875 (and tp!1277321 tp!1277322))))

(declare-fun b!4179650 () Bool)

(declare-fun tp!1277323 () Bool)

(declare-fun tp!1277324 () Bool)

(assert (=> b!4179650 (= e!2594875 (and tp!1277323 tp!1277324))))

(assert (=> b!4179310 (= tp!1277259 e!2594875)))

(assert (= (and b!4179310 ((_ is ElementMatch!12537) (regex!7632 rBis!167))) b!4179649))

(assert (= (and b!4179310 ((_ is Concat!20400) (regex!7632 rBis!167))) b!4179650))

(assert (= (and b!4179310 ((_ is Star!12537) (regex!7632 rBis!167))) b!4179651))

(assert (= (and b!4179310 ((_ is Union!12537) (regex!7632 rBis!167))) b!4179652))

(declare-fun b!4179655 () Bool)

(declare-fun e!2594876 () Bool)

(declare-fun tp!1277330 () Bool)

(assert (=> b!4179655 (= e!2594876 tp!1277330)))

(declare-fun b!4179653 () Bool)

(assert (=> b!4179653 (= e!2594876 tp_is_empty!22037)))

(declare-fun b!4179656 () Bool)

(declare-fun tp!1277326 () Bool)

(declare-fun tp!1277327 () Bool)

(assert (=> b!4179656 (= e!2594876 (and tp!1277326 tp!1277327))))

(declare-fun b!4179654 () Bool)

(declare-fun tp!1277328 () Bool)

(declare-fun tp!1277329 () Bool)

(assert (=> b!4179654 (= e!2594876 (and tp!1277328 tp!1277329))))

(assert (=> b!4179314 (= tp!1277256 e!2594876)))

(assert (= (and b!4179314 ((_ is ElementMatch!12537) (regex!7632 (h!51303 rules!3843)))) b!4179653))

(assert (= (and b!4179314 ((_ is Concat!20400) (regex!7632 (h!51303 rules!3843)))) b!4179654))

(assert (= (and b!4179314 ((_ is Star!12537) (regex!7632 (h!51303 rules!3843)))) b!4179655))

(assert (= (and b!4179314 ((_ is Union!12537) (regex!7632 (h!51303 rules!3843)))) b!4179656))

(declare-fun b!4179659 () Bool)

(declare-fun e!2594877 () Bool)

(declare-fun tp!1277335 () Bool)

(assert (=> b!4179659 (= e!2594877 tp!1277335)))

(declare-fun b!4179657 () Bool)

(assert (=> b!4179657 (= e!2594877 tp_is_empty!22037)))

(declare-fun b!4179660 () Bool)

(declare-fun tp!1277331 () Bool)

(declare-fun tp!1277332 () Bool)

(assert (=> b!4179660 (= e!2594877 (and tp!1277331 tp!1277332))))

(declare-fun b!4179658 () Bool)

(declare-fun tp!1277333 () Bool)

(declare-fun tp!1277334 () Bool)

(assert (=> b!4179658 (= e!2594877 (and tp!1277333 tp!1277334))))

(assert (=> b!4179309 (= tp!1277249 e!2594877)))

(assert (= (and b!4179309 ((_ is ElementMatch!12537) (regex!7632 r!4142))) b!4179657))

(assert (= (and b!4179309 ((_ is Concat!20400) (regex!7632 r!4142))) b!4179658))

(assert (= (and b!4179309 ((_ is Star!12537) (regex!7632 r!4142))) b!4179659))

(assert (= (and b!4179309 ((_ is Union!12537) (regex!7632 r!4142))) b!4179660))

(declare-fun b!4179665 () Bool)

(declare-fun e!2594880 () Bool)

(declare-fun tp!1277338 () Bool)

(assert (=> b!4179665 (= e!2594880 (and tp_is_empty!22037 tp!1277338))))

(assert (=> b!4179313 (= tp!1277248 e!2594880)))

(assert (= (and b!4179313 ((_ is Cons!45882) (t!344911 pBis!107))) b!4179665))

(declare-fun b!4179666 () Bool)

(declare-fun e!2594881 () Bool)

(declare-fun tp!1277339 () Bool)

(assert (=> b!4179666 (= e!2594881 (and tp_is_empty!22037 tp!1277339))))

(assert (=> b!4179322 (= tp!1277258 e!2594881)))

(assert (= (and b!4179322 ((_ is Cons!45882) (t!344911 input!3342))) b!4179666))

(declare-fun b!4179677 () Bool)

(declare-fun b_free!121431 () Bool)

(declare-fun b_next!122135 () Bool)

(assert (=> b!4179677 (= b_free!121431 (not b_next!122135))))

(declare-fun tb!250165 () Bool)

(declare-fun t!344956 () Bool)

(assert (=> (and b!4179677 (= (toValue!10316 (transformation!7632 (h!51303 (t!344912 rules!3843)))) (toValue!10316 (transformation!7632 r!4142))) t!344956) tb!250165))

(declare-fun result!304838 () Bool)

(assert (= result!304838 result!304818))

(assert (=> d!1233415 t!344956))

(assert (=> d!1233451 t!344956))

(declare-fun b_and!326853 () Bool)

(declare-fun tp!1277348 () Bool)

(assert (=> b!4179677 (= tp!1277348 (and (=> t!344956 result!304838) b_and!326853))))

(declare-fun b_free!121433 () Bool)

(declare-fun b_next!122137 () Bool)

(assert (=> b!4179677 (= b_free!121433 (not b_next!122137))))

(declare-fun t!344958 () Bool)

(declare-fun tb!250167 () Bool)

(assert (=> (and b!4179677 (= (toChars!10175 (transformation!7632 (h!51303 (t!344912 rules!3843)))) (toChars!10175 (transformation!7632 r!4142))) t!344958) tb!250167))

(declare-fun result!304840 () Bool)

(assert (= result!304840 result!304810))

(assert (=> d!1233415 t!344958))

(declare-fun t!344960 () Bool)

(declare-fun tb!250169 () Bool)

(assert (=> (and b!4179677 (= (toChars!10175 (transformation!7632 (h!51303 (t!344912 rules!3843)))) (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))) t!344960) tb!250169))

(declare-fun result!304842 () Bool)

(assert (= result!304842 result!304826))

(assert (=> b!4179531 t!344960))

(declare-fun b_and!326855 () Bool)

(declare-fun tp!1277349 () Bool)

(assert (=> b!4179677 (= tp!1277349 (and (=> t!344958 result!304840) (=> t!344960 result!304842) b_and!326855))))

(declare-fun e!2594893 () Bool)

(assert (=> b!4179677 (= e!2594893 (and tp!1277348 tp!1277349))))

(declare-fun b!4179676 () Bool)

(declare-fun e!2594891 () Bool)

(declare-fun tp!1277350 () Bool)

(assert (=> b!4179676 (= e!2594891 (and tp!1277350 (inv!60401 (tag!8496 (h!51303 (t!344912 rules!3843)))) (inv!60404 (transformation!7632 (h!51303 (t!344912 rules!3843)))) e!2594893))))

(declare-fun b!4179675 () Bool)

(declare-fun e!2594890 () Bool)

(declare-fun tp!1277351 () Bool)

(assert (=> b!4179675 (= e!2594890 (and e!2594891 tp!1277351))))

(assert (=> b!4179312 (= tp!1277257 e!2594890)))

(assert (= b!4179676 b!4179677))

(assert (= b!4179675 b!4179676))

(assert (= (and b!4179312 ((_ is Cons!45883) (t!344912 rules!3843))) b!4179675))

(declare-fun m!4769067 () Bool)

(assert (=> b!4179676 m!4769067))

(declare-fun m!4769069 () Bool)

(assert (=> b!4179676 m!4769069))

(declare-fun b!4179678 () Bool)

(declare-fun e!2594894 () Bool)

(declare-fun tp!1277352 () Bool)

(assert (=> b!4179678 (= e!2594894 (and tp_is_empty!22037 tp!1277352))))

(assert (=> b!4179317 (= tp!1277260 e!2594894)))

(assert (= (and b!4179317 ((_ is Cons!45882) (t!344911 p!2959))) b!4179678))

(declare-fun b_lambda!122761 () Bool)

(assert (= b_lambda!122755 (or (and b!4179321 b_free!121415) (and b!4179326 b_free!121419 (= (toValue!10316 (transformation!7632 rBis!167)) (toValue!10316 (transformation!7632 r!4142)))) (and b!4179325 b_free!121423 (= (toValue!10316 (transformation!7632 (h!51303 rules!3843))) (toValue!10316 (transformation!7632 r!4142)))) (and b!4179677 b_free!121431 (= (toValue!10316 (transformation!7632 (h!51303 (t!344912 rules!3843)))) (toValue!10316 (transformation!7632 r!4142)))) b_lambda!122761)))

(declare-fun b_lambda!122763 () Bool)

(assert (= b_lambda!122753 (or (and b!4179321 b_free!121417) (and b!4179326 b_free!121421 (= (toChars!10175 (transformation!7632 rBis!167)) (toChars!10175 (transformation!7632 r!4142)))) (and b!4179325 b_free!121425 (= (toChars!10175 (transformation!7632 (h!51303 rules!3843))) (toChars!10175 (transformation!7632 r!4142)))) (and b!4179677 b_free!121433 (= (toChars!10175 (transformation!7632 (h!51303 (t!344912 rules!3843)))) (toChars!10175 (transformation!7632 r!4142)))) b_lambda!122763)))

(declare-fun b_lambda!122765 () Bool)

(assert (= b_lambda!122759 (or (and b!4179321 b_free!121415) (and b!4179326 b_free!121419 (= (toValue!10316 (transformation!7632 rBis!167)) (toValue!10316 (transformation!7632 r!4142)))) (and b!4179325 b_free!121423 (= (toValue!10316 (transformation!7632 (h!51303 rules!3843))) (toValue!10316 (transformation!7632 r!4142)))) (and b!4179677 b_free!121431 (= (toValue!10316 (transformation!7632 (h!51303 (t!344912 rules!3843)))) (toValue!10316 (transformation!7632 r!4142)))) b_lambda!122765)))

(check-sat (not b!4179633) b_and!326855 (not d!1233459) (not b!4179654) (not b!4179651) (not b!4179659) (not d!1233413) b_and!326845 (not b!4179626) (not b!4179346) (not b_next!122135) (not b!4179585) (not b!4179596) b_and!326849 (not b!4179533) (not b!4179539) (not b!4179598) (not b_lambda!122765) (not b!4179546) (not d!1233481) (not d!1233467) b_and!326841 (not b!4179524) (not b_next!122119) (not b!4179658) (not b!4179593) (not b!4179678) (not tb!250153) (not b!4179652) (not bm!291534) (not b_next!122137) (not b!4179347) (not d!1233479) (not b!4179597) (not d!1233471) (not b!4179650) (not b!4179592) (not b!4179675) (not b!4179599) (not b!4179676) (not d!1233461) (not b!4179638) (not b_next!122129) (not d!1233475) (not b!4179541) (not b_lambda!122761) (not b_next!122123) (not bm!291541) (not tb!250159) (not b!4179655) (not b!4179588) (not b!4179582) (not d!1233447) (not b!4179543) b_and!326843 (not b!4179631) b_and!326853 (not b!4179542) (not b!4179594) b_and!326851 (not d!1233411) (not b!4179348) (not b!4179636) (not b!4179665) (not bm!291543) (not b_lambda!122763) (not b_next!122127) (not b!4179552) (not b!4179532) (not d!1233457) tp_is_empty!22037 (not b_next!122121) (not b!4179656) (not b_lambda!122757) (not b_next!122125) (not b!4179531) (not b!4179660) (not d!1233415) b_and!326847 (not tb!250147) (not b!4179666))
(check-sat b_and!326855 (not b_next!122135) b_and!326849 (not b_next!122137) (not b_next!122129) (not b_next!122123) b_and!326843 b_and!326853 b_and!326851 (not b_next!122127) (not b_next!122121) (not b_next!122125) b_and!326847 b_and!326845 b_and!326841 (not b_next!122119))
(get-model)

(declare-fun d!1233491 () Bool)

(assert (=> d!1233491 (= (head!8870 p!2959) (h!51302 p!2959))))

(assert (=> b!4179596 d!1233491))

(declare-fun d!1233493 () Bool)

(assert (=> d!1233493 (= (head!8870 input!3342) (h!51302 input!3342))))

(assert (=> b!4179596 d!1233493))

(declare-fun d!1233495 () Bool)

(declare-fun c!713753 () Bool)

(assert (=> d!1233495 (= c!713753 ((_ is Nil!45883) rules!3843))))

(declare-fun e!2594912 () (InoxSet Rule!15064))

(assert (=> d!1233495 (= (content!7126 rules!3843) e!2594912)))

(declare-fun b!4179705 () Bool)

(assert (=> b!4179705 (= e!2594912 ((as const (Array Rule!15064 Bool)) false))))

(declare-fun b!4179706 () Bool)

(assert (=> b!4179706 (= e!2594912 ((_ map or) (store ((as const (Array Rule!15064 Bool)) false) (h!51303 rules!3843) true) (content!7126 (t!344912 rules!3843))))))

(assert (= (and d!1233495 c!713753) b!4179705))

(assert (= (and d!1233495 (not c!713753)) b!4179706))

(declare-fun m!4769083 () Bool)

(assert (=> b!4179706 m!4769083))

(declare-fun m!4769085 () Bool)

(assert (=> b!4179706 m!4769085))

(assert (=> d!1233481 d!1233495))

(declare-fun d!1233499 () Bool)

(declare-fun nullableFct!1211 (Regex!12537) Bool)

(assert (=> d!1233499 (= (nullable!4393 (reg!12866 (regex!7632 r!4142))) (nullableFct!1211 (reg!12866 (regex!7632 r!4142))))))

(declare-fun bs!596221 () Bool)

(assert (= bs!596221 d!1233499))

(declare-fun m!4769087 () Bool)

(assert (=> bs!596221 m!4769087))

(assert (=> b!4179626 d!1233499))

(declare-fun d!1233503 () Bool)

(declare-fun lt!1488620 () Int)

(assert (=> d!1233503 (>= lt!1488620 0)))

(declare-fun e!2594915 () Int)

(assert (=> d!1233503 (= lt!1488620 e!2594915)))

(declare-fun c!713754 () Bool)

(assert (=> d!1233503 (= c!713754 ((_ is Nil!45882) (originalCharacters!8020 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))))

(assert (=> d!1233503 (= (size!33696 (originalCharacters!8020 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))) lt!1488620)))

(declare-fun b!4179709 () Bool)

(assert (=> b!4179709 (= e!2594915 0)))

(declare-fun b!4179710 () Bool)

(assert (=> b!4179710 (= e!2594915 (+ 1 (size!33696 (t!344911 (originalCharacters!8020 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))))))

(assert (= (and d!1233503 c!713754) b!4179709))

(assert (= (and d!1233503 (not c!713754)) b!4179710))

(declare-fun m!4769095 () Bool)

(assert (=> b!4179710 m!4769095))

(assert (=> b!4179532 d!1233503))

(declare-fun b!4179732 () Bool)

(declare-fun e!2594931 () Bool)

(declare-fun inv!16 (TokenValue!7862) Bool)

(assert (=> b!4179732 (= e!2594931 (inv!16 (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574)))))

(declare-fun b!4179733 () Bool)

(declare-fun res!1713942 () Bool)

(declare-fun e!2594932 () Bool)

(assert (=> b!4179733 (=> res!1713942 e!2594932)))

(assert (=> b!4179733 (= res!1713942 (not ((_ is IntegerValue!23588) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574))))))

(declare-fun e!2594930 () Bool)

(assert (=> b!4179733 (= e!2594930 e!2594932)))

(declare-fun d!1233507 () Bool)

(declare-fun c!713762 () Bool)

(assert (=> d!1233507 (= c!713762 ((_ is IntegerValue!23586) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574)))))

(assert (=> d!1233507 (= (inv!21 (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574)) e!2594931)))

(declare-fun b!4179734 () Bool)

(assert (=> b!4179734 (= e!2594931 e!2594930)))

(declare-fun c!713763 () Bool)

(assert (=> b!4179734 (= c!713763 ((_ is IntegerValue!23587) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574)))))

(declare-fun b!4179735 () Bool)

(declare-fun inv!17 (TokenValue!7862) Bool)

(assert (=> b!4179735 (= e!2594930 (inv!17 (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574)))))

(declare-fun b!4179736 () Bool)

(declare-fun inv!15 (TokenValue!7862) Bool)

(assert (=> b!4179736 (= e!2594932 (inv!15 (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574)))))

(assert (= (and d!1233507 c!713762) b!4179732))

(assert (= (and d!1233507 (not c!713762)) b!4179734))

(assert (= (and b!4179734 c!713763) b!4179735))

(assert (= (and b!4179734 (not c!713763)) b!4179733))

(assert (= (and b!4179733 (not res!1713942)) b!4179736))

(declare-fun m!4769107 () Bool)

(assert (=> b!4179732 m!4769107))

(declare-fun m!4769109 () Bool)

(assert (=> b!4179735 m!4769109))

(declare-fun m!4769111 () Bool)

(assert (=> b!4179736 m!4769111))

(assert (=> tb!250153 d!1233507))

(declare-fun d!1233517 () Bool)

(assert (=> d!1233517 (= (nullable!4393 (regex!7632 r!4142)) (nullableFct!1211 (regex!7632 r!4142)))))

(declare-fun bs!596223 () Bool)

(assert (= bs!596223 d!1233517))

(declare-fun m!4769113 () Bool)

(assert (=> bs!596223 m!4769113))

(assert (=> b!4179593 d!1233517))

(declare-fun d!1233519 () Bool)

(declare-fun res!1713947 () Bool)

(declare-fun e!2594937 () Bool)

(assert (=> d!1233519 (=> res!1713947 e!2594937)))

(assert (=> d!1233519 (= res!1713947 ((_ is ElementMatch!12537) (ite c!713744 (regOne!25587 (regex!7632 r!4142)) (regOne!25586 (regex!7632 r!4142)))))))

(assert (=> d!1233519 (= (validRegex!5654 (ite c!713744 (regOne!25587 (regex!7632 r!4142)) (regOne!25586 (regex!7632 r!4142)))) e!2594937)))

(declare-fun b!4179737 () Bool)

(declare-fun res!1713946 () Bool)

(declare-fun e!2594935 () Bool)

(assert (=> b!4179737 (=> res!1713946 e!2594935)))

(assert (=> b!4179737 (= res!1713946 (not ((_ is Concat!20400) (ite c!713744 (regOne!25587 (regex!7632 r!4142)) (regOne!25586 (regex!7632 r!4142))))))))

(declare-fun e!2594936 () Bool)

(assert (=> b!4179737 (= e!2594936 e!2594935)))

(declare-fun b!4179738 () Bool)

(declare-fun e!2594939 () Bool)

(assert (=> b!4179738 (= e!2594937 e!2594939)))

(declare-fun c!713765 () Bool)

(assert (=> b!4179738 (= c!713765 ((_ is Star!12537) (ite c!713744 (regOne!25587 (regex!7632 r!4142)) (regOne!25586 (regex!7632 r!4142)))))))

(declare-fun b!4179739 () Bool)

(declare-fun res!1713943 () Bool)

(declare-fun e!2594938 () Bool)

(assert (=> b!4179739 (=> (not res!1713943) (not e!2594938))))

(declare-fun call!291556 () Bool)

(assert (=> b!4179739 (= res!1713943 call!291556)))

(assert (=> b!4179739 (= e!2594936 e!2594938)))

(declare-fun b!4179740 () Bool)

(declare-fun e!2594934 () Bool)

(declare-fun call!291555 () Bool)

(assert (=> b!4179740 (= e!2594934 call!291555)))

(declare-fun b!4179741 () Bool)

(assert (=> b!4179741 (= e!2594939 e!2594936)))

(declare-fun c!713764 () Bool)

(assert (=> b!4179741 (= c!713764 ((_ is Union!12537) (ite c!713744 (regOne!25587 (regex!7632 r!4142)) (regOne!25586 (regex!7632 r!4142)))))))

(declare-fun bm!291550 () Bool)

(assert (=> bm!291550 (= call!291556 (validRegex!5654 (ite c!713764 (regOne!25587 (ite c!713744 (regOne!25587 (regex!7632 r!4142)) (regOne!25586 (regex!7632 r!4142)))) (regOne!25586 (ite c!713744 (regOne!25587 (regex!7632 r!4142)) (regOne!25586 (regex!7632 r!4142)))))))))

(declare-fun b!4179742 () Bool)

(assert (=> b!4179742 (= e!2594935 e!2594934)))

(declare-fun res!1713945 () Bool)

(assert (=> b!4179742 (=> (not res!1713945) (not e!2594934))))

(assert (=> b!4179742 (= res!1713945 call!291556)))

(declare-fun bm!291551 () Bool)

(declare-fun call!291557 () Bool)

(assert (=> bm!291551 (= call!291555 call!291557)))

(declare-fun bm!291552 () Bool)

(assert (=> bm!291552 (= call!291557 (validRegex!5654 (ite c!713765 (reg!12866 (ite c!713744 (regOne!25587 (regex!7632 r!4142)) (regOne!25586 (regex!7632 r!4142)))) (ite c!713764 (regTwo!25587 (ite c!713744 (regOne!25587 (regex!7632 r!4142)) (regOne!25586 (regex!7632 r!4142)))) (regTwo!25586 (ite c!713744 (regOne!25587 (regex!7632 r!4142)) (regOne!25586 (regex!7632 r!4142))))))))))

(declare-fun b!4179743 () Bool)

(declare-fun e!2594933 () Bool)

(assert (=> b!4179743 (= e!2594933 call!291557)))

(declare-fun b!4179744 () Bool)

(assert (=> b!4179744 (= e!2594938 call!291555)))

(declare-fun b!4179745 () Bool)

(assert (=> b!4179745 (= e!2594939 e!2594933)))

(declare-fun res!1713944 () Bool)

(assert (=> b!4179745 (= res!1713944 (not (nullable!4393 (reg!12866 (ite c!713744 (regOne!25587 (regex!7632 r!4142)) (regOne!25586 (regex!7632 r!4142)))))))))

(assert (=> b!4179745 (=> (not res!1713944) (not e!2594933))))

(assert (= (and d!1233519 (not res!1713947)) b!4179738))

(assert (= (and b!4179738 c!713765) b!4179745))

(assert (= (and b!4179738 (not c!713765)) b!4179741))

(assert (= (and b!4179745 res!1713944) b!4179743))

(assert (= (and b!4179741 c!713764) b!4179739))

(assert (= (and b!4179741 (not c!713764)) b!4179737))

(assert (= (and b!4179739 res!1713943) b!4179744))

(assert (= (and b!4179737 (not res!1713946)) b!4179742))

(assert (= (and b!4179742 res!1713945) b!4179740))

(assert (= (or b!4179744 b!4179740) bm!291551))

(assert (= (or b!4179739 b!4179742) bm!291550))

(assert (= (or b!4179743 bm!291551) bm!291552))

(declare-fun m!4769115 () Bool)

(assert (=> bm!291550 m!4769115))

(declare-fun m!4769117 () Bool)

(assert (=> bm!291552 m!4769117))

(declare-fun m!4769119 () Bool)

(assert (=> b!4179745 m!4769119))

(assert (=> bm!291541 d!1233519))

(declare-fun d!1233521 () Bool)

(declare-fun res!1713952 () Bool)

(declare-fun e!2594944 () Bool)

(assert (=> d!1233521 (=> res!1713952 e!2594944)))

(assert (=> d!1233521 (= res!1713952 ((_ is Nil!45883) rules!3843))))

(assert (=> d!1233521 (= (noDuplicateTag!3131 thiss!25986 rules!3843 Nil!45885) e!2594944)))

(declare-fun b!4179750 () Bool)

(declare-fun e!2594945 () Bool)

(assert (=> b!4179750 (= e!2594944 e!2594945)))

(declare-fun res!1713953 () Bool)

(assert (=> b!4179750 (=> (not res!1713953) (not e!2594945))))

(declare-fun contains!9436 (List!46009 String!53176) Bool)

(assert (=> b!4179750 (= res!1713953 (not (contains!9436 Nil!45885 (tag!8496 (h!51303 rules!3843)))))))

(declare-fun b!4179751 () Bool)

(assert (=> b!4179751 (= e!2594945 (noDuplicateTag!3131 thiss!25986 (t!344912 rules!3843) (Cons!45885 (tag!8496 (h!51303 rules!3843)) Nil!45885)))))

(assert (= (and d!1233521 (not res!1713952)) b!4179750))

(assert (= (and b!4179750 res!1713953) b!4179751))

(declare-fun m!4769123 () Bool)

(assert (=> b!4179750 m!4769123))

(declare-fun m!4769125 () Bool)

(assert (=> b!4179751 m!4769125))

(assert (=> b!4179636 d!1233521))

(declare-fun d!1233525 () Bool)

(assert (=> d!1233525 true))

(declare-fun lambda!129322 () Int)

(declare-fun order!24201 () Int)

(declare-fun dynLambda!19678 (Int Int) Int)

(assert (=> d!1233525 (< (dynLambda!19673 order!24193 (toValue!10316 (transformation!7632 r!4142))) (dynLambda!19678 order!24201 lambda!129322))))

(declare-fun Forall2!1160 (Int) Bool)

(assert (=> d!1233525 (= (equivClasses!3201 (toChars!10175 (transformation!7632 r!4142)) (toValue!10316 (transformation!7632 r!4142))) (Forall2!1160 lambda!129322))))

(declare-fun bs!596227 () Bool)

(assert (= bs!596227 d!1233525))

(declare-fun m!4769129 () Bool)

(assert (=> bs!596227 m!4769129))

(assert (=> b!4179633 d!1233525))

(declare-fun d!1233529 () Bool)

(declare-fun lt!1488623 () Int)

(assert (=> d!1233529 (>= lt!1488623 0)))

(declare-fun e!2594955 () Int)

(assert (=> d!1233529 (= lt!1488623 e!2594955)))

(declare-fun c!713769 () Bool)

(assert (=> d!1233529 (= c!713769 ((_ is Nil!45882) input!3342))))

(assert (=> d!1233529 (= (size!33696 input!3342) lt!1488623)))

(declare-fun b!4179773 () Bool)

(assert (=> b!4179773 (= e!2594955 0)))

(declare-fun b!4179775 () Bool)

(assert (=> b!4179775 (= e!2594955 (+ 1 (size!33696 (t!344911 input!3342))))))

(assert (= (and d!1233529 c!713769) b!4179773))

(assert (= (and d!1233529 (not c!713769)) b!4179775))

(declare-fun m!4769131 () Bool)

(assert (=> b!4179775 m!4769131))

(assert (=> b!4179348 d!1233529))

(declare-fun d!1233531 () Bool)

(assert (=> d!1233531 (= (isEmpty!27149 (tail!6717 p!2959)) ((_ is Nil!45882) (tail!6717 p!2959)))))

(assert (=> b!4179588 d!1233531))

(declare-fun d!1233533 () Bool)

(assert (=> d!1233533 (= (tail!6717 p!2959) (t!344911 p!2959))))

(assert (=> b!4179588 d!1233533))

(declare-fun bs!596228 () Bool)

(declare-fun d!1233535 () Bool)

(assert (= bs!596228 (and d!1233535 d!1233415)))

(declare-fun lambda!129325 () Int)

(assert (=> bs!596228 (= lambda!129325 lambda!129313)))

(assert (=> d!1233535 true))

(assert (=> d!1233535 (< (dynLambda!19675 order!24197 (toChars!10175 (transformation!7632 r!4142))) (dynLambda!19674 order!24195 lambda!129325))))

(assert (=> d!1233535 true))

(assert (=> d!1233535 (< (dynLambda!19673 order!24193 (toValue!10316 (transformation!7632 r!4142))) (dynLambda!19674 order!24195 lambda!129325))))

(declare-fun Forall!1561 (Int) Bool)

(assert (=> d!1233535 (= (semiInverseModEq!3302 (toChars!10175 (transformation!7632 r!4142)) (toValue!10316 (transformation!7632 r!4142))) (Forall!1561 lambda!129325))))

(declare-fun bs!596229 () Bool)

(assert (= bs!596229 d!1233535))

(declare-fun m!4769147 () Bool)

(assert (=> bs!596229 m!4769147))

(assert (=> d!1233475 d!1233535))

(declare-fun bs!596230 () Bool)

(declare-fun d!1233539 () Bool)

(assert (= bs!596230 (and d!1233539 d!1233415)))

(declare-fun lambda!129326 () Int)

(assert (=> bs!596230 (= (and (= (toChars!10175 (transformation!7632 rBis!167)) (toChars!10175 (transformation!7632 r!4142))) (= (toValue!10316 (transformation!7632 rBis!167)) (toValue!10316 (transformation!7632 r!4142)))) (= lambda!129326 lambda!129313))))

(declare-fun bs!596231 () Bool)

(assert (= bs!596231 (and d!1233539 d!1233535)))

(assert (=> bs!596231 (= (and (= (toChars!10175 (transformation!7632 rBis!167)) (toChars!10175 (transformation!7632 r!4142))) (= (toValue!10316 (transformation!7632 rBis!167)) (toValue!10316 (transformation!7632 r!4142)))) (= lambda!129326 lambda!129325))))

(assert (=> d!1233539 true))

(assert (=> d!1233539 (< (dynLambda!19675 order!24197 (toChars!10175 (transformation!7632 rBis!167))) (dynLambda!19674 order!24195 lambda!129326))))

(assert (=> d!1233539 true))

(assert (=> d!1233539 (< (dynLambda!19673 order!24193 (toValue!10316 (transformation!7632 rBis!167))) (dynLambda!19674 order!24195 lambda!129326))))

(assert (=> d!1233539 (= (semiInverseModEq!3302 (toChars!10175 (transformation!7632 rBis!167)) (toValue!10316 (transformation!7632 rBis!167))) (Forall!1561 lambda!129326))))

(declare-fun bs!596232 () Bool)

(assert (= bs!596232 d!1233539))

(declare-fun m!4769149 () Bool)

(assert (=> bs!596232 m!4769149))

(assert (=> d!1233467 d!1233539))

(declare-fun d!1233541 () Bool)

(assert (=> d!1233541 (= (isEmpty!27149 p!2959) ((_ is Nil!45882) p!2959))))

(assert (=> bm!291534 d!1233541))

(declare-fun c!713772 () Bool)

(declare-fun d!1233543 () Bool)

(assert (=> d!1233543 (= c!713772 ((_ is Node!13843) (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))))))

(declare-fun e!2594960 () Bool)

(assert (=> d!1233543 (= (inv!60408 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))) e!2594960)))

(declare-fun b!4179786 () Bool)

(declare-fun inv!60412 (Conc!13843) Bool)

(assert (=> b!4179786 (= e!2594960 (inv!60412 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))))))

(declare-fun b!4179787 () Bool)

(declare-fun e!2594961 () Bool)

(assert (=> b!4179787 (= e!2594960 e!2594961)))

(declare-fun res!1713966 () Bool)

(assert (=> b!4179787 (= res!1713966 (not ((_ is Leaf!21402) (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))))))))

(assert (=> b!4179787 (=> res!1713966 e!2594961)))

(declare-fun b!4179788 () Bool)

(declare-fun inv!60413 (Conc!13843) Bool)

(assert (=> b!4179788 (= e!2594961 (inv!60413 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))))))

(assert (= (and d!1233543 c!713772) b!4179786))

(assert (= (and d!1233543 (not c!713772)) b!4179787))

(assert (= (and b!4179787 (not res!1713966)) b!4179788))

(declare-fun m!4769151 () Bool)

(assert (=> b!4179786 m!4769151))

(declare-fun m!4769153 () Bool)

(assert (=> b!4179788 m!4769153))

(assert (=> b!4179533 d!1233543))

(assert (=> d!1233471 d!1233469))

(assert (=> b!4179543 d!1233529))

(declare-fun d!1233545 () Bool)

(declare-fun lt!1488624 () Int)

(assert (=> d!1233545 (>= lt!1488624 0)))

(declare-fun e!2594962 () Int)

(assert (=> d!1233545 (= lt!1488624 e!2594962)))

(declare-fun c!713773 () Bool)

(assert (=> d!1233545 (= c!713773 ((_ is Nil!45882) pBis!107))))

(assert (=> d!1233545 (= (size!33696 pBis!107) lt!1488624)))

(declare-fun b!4179789 () Bool)

(assert (=> b!4179789 (= e!2594962 0)))

(declare-fun b!4179790 () Bool)

(assert (=> b!4179790 (= e!2594962 (+ 1 (size!33696 (t!344911 pBis!107))))))

(assert (= (and d!1233545 c!713773) b!4179789))

(assert (= (and d!1233545 (not c!713773)) b!4179790))

(declare-fun m!4769155 () Bool)

(assert (=> b!4179790 m!4769155))

(assert (=> b!4179543 d!1233545))

(assert (=> b!4179585 d!1233491))

(declare-fun d!1233547 () Bool)

(declare-fun list!16574 (Conc!13843) List!46006)

(assert (=> d!1233547 (= (list!16573 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574))) (list!16574 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574)))))))

(declare-fun bs!596233 () Bool)

(assert (= bs!596233 d!1233547))

(declare-fun m!4769157 () Bool)

(assert (=> bs!596233 m!4769157))

(assert (=> d!1233415 d!1233547))

(declare-fun d!1233549 () Bool)

(assert (=> d!1233549 (= (list!16573 lt!1488574) (list!16574 (c!713706 lt!1488574)))))

(declare-fun bs!596234 () Bool)

(assert (= bs!596234 d!1233549))

(declare-fun m!4769159 () Bool)

(assert (=> bs!596234 m!4769159))

(assert (=> d!1233415 d!1233549))

(declare-fun d!1233551 () Bool)

(declare-fun dynLambda!19680 (Int BalanceConc!27280) Bool)

(assert (=> d!1233551 (dynLambda!19680 lambda!129313 lt!1488574)))

(declare-fun lt!1488629 () Unit!64969)

(declare-fun choose!25583 (Int BalanceConc!27280) Unit!64969)

(assert (=> d!1233551 (= lt!1488629 (choose!25583 lambda!129313 lt!1488574))))

(assert (=> d!1233551 (Forall!1561 lambda!129313)))

(assert (=> d!1233551 (= (ForallOf!1036 lambda!129313 lt!1488574) lt!1488629)))

(declare-fun b_lambda!122767 () Bool)

(assert (=> (not b_lambda!122767) (not d!1233551)))

(declare-fun bs!596235 () Bool)

(assert (= bs!596235 d!1233551))

(declare-fun m!4769161 () Bool)

(assert (=> bs!596235 m!4769161))

(declare-fun m!4769163 () Bool)

(assert (=> bs!596235 m!4769163))

(declare-fun m!4769165 () Bool)

(assert (=> bs!596235 m!4769165))

(assert (=> d!1233415 d!1233551))

(assert (=> b!4179598 d!1233529))

(assert (=> b!4179598 d!1233449))

(declare-fun d!1233553 () Bool)

(assert (=> d!1233553 true))

(declare-fun lt!1488632 () Bool)

(declare-fun rulesValidInductive!2807 (LexerInterface!7225 List!46007) Bool)

(assert (=> d!1233553 (= lt!1488632 (rulesValidInductive!2807 thiss!25986 rules!3843))))

(declare-fun lambda!129329 () Int)

(declare-fun forall!8471 (List!46007 Int) Bool)

(assert (=> d!1233553 (= lt!1488632 (forall!8471 rules!3843 lambda!129329))))

(assert (=> d!1233553 (= (rulesValid!2970 thiss!25986 rules!3843) lt!1488632)))

(declare-fun bs!596236 () Bool)

(assert (= bs!596236 d!1233553))

(declare-fun m!4769167 () Bool)

(assert (=> bs!596236 m!4769167))

(declare-fun m!4769169 () Bool)

(assert (=> bs!596236 m!4769169))

(assert (=> d!1233479 d!1233553))

(declare-fun d!1233555 () Bool)

(assert (=> d!1233555 (= (head!8870 pBis!107) (h!51302 pBis!107))))

(assert (=> b!4179541 d!1233555))

(assert (=> b!4179541 d!1233493))

(declare-fun bs!596237 () Bool)

(declare-fun d!1233557 () Bool)

(assert (= bs!596237 (and d!1233557 d!1233415)))

(declare-fun lambda!129330 () Int)

(assert (=> bs!596237 (= (and (= (toChars!10175 (transformation!7632 (h!51303 rules!3843))) (toChars!10175 (transformation!7632 r!4142))) (= (toValue!10316 (transformation!7632 (h!51303 rules!3843))) (toValue!10316 (transformation!7632 r!4142)))) (= lambda!129330 lambda!129313))))

(declare-fun bs!596238 () Bool)

(assert (= bs!596238 (and d!1233557 d!1233535)))

(assert (=> bs!596238 (= (and (= (toChars!10175 (transformation!7632 (h!51303 rules!3843))) (toChars!10175 (transformation!7632 r!4142))) (= (toValue!10316 (transformation!7632 (h!51303 rules!3843))) (toValue!10316 (transformation!7632 r!4142)))) (= lambda!129330 lambda!129325))))

(declare-fun bs!596239 () Bool)

(assert (= bs!596239 (and d!1233557 d!1233539)))

(assert (=> bs!596239 (= (and (= (toChars!10175 (transformation!7632 (h!51303 rules!3843))) (toChars!10175 (transformation!7632 rBis!167))) (= (toValue!10316 (transformation!7632 (h!51303 rules!3843))) (toValue!10316 (transformation!7632 rBis!167)))) (= lambda!129330 lambda!129326))))

(assert (=> d!1233557 true))

(assert (=> d!1233557 (< (dynLambda!19675 order!24197 (toChars!10175 (transformation!7632 (h!51303 rules!3843)))) (dynLambda!19674 order!24195 lambda!129330))))

(assert (=> d!1233557 true))

(assert (=> d!1233557 (< (dynLambda!19673 order!24193 (toValue!10316 (transformation!7632 (h!51303 rules!3843)))) (dynLambda!19674 order!24195 lambda!129330))))

(assert (=> d!1233557 (= (semiInverseModEq!3302 (toChars!10175 (transformation!7632 (h!51303 rules!3843))) (toValue!10316 (transformation!7632 (h!51303 rules!3843)))) (Forall!1561 lambda!129330))))

(declare-fun bs!596240 () Bool)

(assert (= bs!596240 d!1233557))

(declare-fun m!4769171 () Bool)

(assert (=> bs!596240 m!4769171))

(assert (=> d!1233457 d!1233557))

(assert (=> d!1233413 d!1233399))

(declare-fun d!1233559 () Bool)

(assert (=> d!1233559 (isPrefix!4489 input!3342 input!3342)))

(assert (=> d!1233559 true))

(declare-fun _$45!2048 () Unit!64969)

(assert (=> d!1233559 (= (choose!25582 input!3342 input!3342) _$45!2048)))

(declare-fun bs!596241 () Bool)

(assert (= bs!596241 d!1233559))

(assert (=> bs!596241 m!4768851))

(assert (=> d!1233413 d!1233559))

(declare-fun d!1233561 () Bool)

(declare-fun lt!1488633 () Bool)

(assert (=> d!1233561 (= lt!1488633 (select (content!7126 (t!344912 rules!3843)) r!4142))))

(declare-fun e!2594973 () Bool)

(assert (=> d!1233561 (= lt!1488633 e!2594973)))

(declare-fun res!1713967 () Bool)

(assert (=> d!1233561 (=> (not res!1713967) (not e!2594973))))

(assert (=> d!1233561 (= res!1713967 ((_ is Cons!45883) (t!344912 rules!3843)))))

(assert (=> d!1233561 (= (contains!9435 (t!344912 rules!3843) r!4142) lt!1488633)))

(declare-fun b!4179813 () Bool)

(declare-fun e!2594974 () Bool)

(assert (=> b!4179813 (= e!2594973 e!2594974)))

(declare-fun res!1713968 () Bool)

(assert (=> b!4179813 (=> res!1713968 e!2594974)))

(assert (=> b!4179813 (= res!1713968 (= (h!51303 (t!344912 rules!3843)) r!4142))))

(declare-fun b!4179814 () Bool)

(assert (=> b!4179814 (= e!2594974 (contains!9435 (t!344912 (t!344912 rules!3843)) r!4142))))

(assert (= (and d!1233561 res!1713967) b!4179813))

(assert (= (and b!4179813 (not res!1713968)) b!4179814))

(assert (=> d!1233561 m!4769085))

(declare-fun m!4769173 () Bool)

(assert (=> d!1233561 m!4769173))

(declare-fun m!4769175 () Bool)

(assert (=> b!4179814 m!4769175))

(assert (=> b!4179552 d!1233561))

(declare-fun b!4179818 () Bool)

(declare-fun e!2594976 () Bool)

(assert (=> b!4179818 (= e!2594976 (>= (size!33696 (tail!6717 input!3342)) (size!33696 (tail!6717 p!2959))))))

(declare-fun b!4179816 () Bool)

(declare-fun res!1713970 () Bool)

(declare-fun e!2594977 () Bool)

(assert (=> b!4179816 (=> (not res!1713970) (not e!2594977))))

(assert (=> b!4179816 (= res!1713970 (= (head!8870 (tail!6717 p!2959)) (head!8870 (tail!6717 input!3342))))))

(declare-fun b!4179815 () Bool)

(declare-fun e!2594975 () Bool)

(assert (=> b!4179815 (= e!2594975 e!2594977)))

(declare-fun res!1713972 () Bool)

(assert (=> b!4179815 (=> (not res!1713972) (not e!2594977))))

(assert (=> b!4179815 (= res!1713972 (not ((_ is Nil!45882) (tail!6717 input!3342))))))

(declare-fun d!1233563 () Bool)

(assert (=> d!1233563 e!2594976))

(declare-fun res!1713971 () Bool)

(assert (=> d!1233563 (=> res!1713971 e!2594976)))

(declare-fun lt!1488634 () Bool)

(assert (=> d!1233563 (= res!1713971 (not lt!1488634))))

(assert (=> d!1233563 (= lt!1488634 e!2594975)))

(declare-fun res!1713969 () Bool)

(assert (=> d!1233563 (=> res!1713969 e!2594975)))

(assert (=> d!1233563 (= res!1713969 ((_ is Nil!45882) (tail!6717 p!2959)))))

(assert (=> d!1233563 (= (isPrefix!4489 (tail!6717 p!2959) (tail!6717 input!3342)) lt!1488634)))

(declare-fun b!4179817 () Bool)

(assert (=> b!4179817 (= e!2594977 (isPrefix!4489 (tail!6717 (tail!6717 p!2959)) (tail!6717 (tail!6717 input!3342))))))

(assert (= (and d!1233563 (not res!1713969)) b!4179815))

(assert (= (and b!4179815 res!1713972) b!4179816))

(assert (= (and b!4179816 res!1713970) b!4179817))

(assert (= (and d!1233563 (not res!1713971)) b!4179818))

(assert (=> b!4179818 m!4768885))

(declare-fun m!4769177 () Bool)

(assert (=> b!4179818 m!4769177))

(assert (=> b!4179818 m!4769035))

(declare-fun m!4769179 () Bool)

(assert (=> b!4179818 m!4769179))

(assert (=> b!4179816 m!4769035))

(declare-fun m!4769181 () Bool)

(assert (=> b!4179816 m!4769181))

(assert (=> b!4179816 m!4768885))

(declare-fun m!4769183 () Bool)

(assert (=> b!4179816 m!4769183))

(assert (=> b!4179817 m!4769035))

(declare-fun m!4769185 () Bool)

(assert (=> b!4179817 m!4769185))

(assert (=> b!4179817 m!4768885))

(declare-fun m!4769187 () Bool)

(assert (=> b!4179817 m!4769187))

(assert (=> b!4179817 m!4769185))

(assert (=> b!4179817 m!4769187))

(declare-fun m!4769189 () Bool)

(assert (=> b!4179817 m!4769189))

(assert (=> b!4179597 d!1233563))

(assert (=> b!4179597 d!1233533))

(declare-fun d!1233565 () Bool)

(assert (=> d!1233565 (= (tail!6717 input!3342) (t!344911 input!3342))))

(assert (=> b!4179597 d!1233565))

(declare-fun d!1233567 () Bool)

(declare-fun res!1713977 () Bool)

(declare-fun e!2594982 () Bool)

(assert (=> d!1233567 (=> res!1713977 e!2594982)))

(assert (=> d!1233567 (= res!1713977 ((_ is ElementMatch!12537) (ite c!713745 (reg!12866 (regex!7632 r!4142)) (ite c!713744 (regTwo!25587 (regex!7632 r!4142)) (regTwo!25586 (regex!7632 r!4142))))))))

(assert (=> d!1233567 (= (validRegex!5654 (ite c!713745 (reg!12866 (regex!7632 r!4142)) (ite c!713744 (regTwo!25587 (regex!7632 r!4142)) (regTwo!25586 (regex!7632 r!4142))))) e!2594982)))

(declare-fun b!4179819 () Bool)

(declare-fun res!1713976 () Bool)

(declare-fun e!2594980 () Bool)

(assert (=> b!4179819 (=> res!1713976 e!2594980)))

(assert (=> b!4179819 (= res!1713976 (not ((_ is Concat!20400) (ite c!713745 (reg!12866 (regex!7632 r!4142)) (ite c!713744 (regTwo!25587 (regex!7632 r!4142)) (regTwo!25586 (regex!7632 r!4142)))))))))

(declare-fun e!2594981 () Bool)

(assert (=> b!4179819 (= e!2594981 e!2594980)))

(declare-fun b!4179820 () Bool)

(declare-fun e!2594984 () Bool)

(assert (=> b!4179820 (= e!2594982 e!2594984)))

(declare-fun c!713785 () Bool)

(assert (=> b!4179820 (= c!713785 ((_ is Star!12537) (ite c!713745 (reg!12866 (regex!7632 r!4142)) (ite c!713744 (regTwo!25587 (regex!7632 r!4142)) (regTwo!25586 (regex!7632 r!4142))))))))

(declare-fun b!4179821 () Bool)

(declare-fun res!1713973 () Bool)

(declare-fun e!2594983 () Bool)

(assert (=> b!4179821 (=> (not res!1713973) (not e!2594983))))

(declare-fun call!291568 () Bool)

(assert (=> b!4179821 (= res!1713973 call!291568)))

(assert (=> b!4179821 (= e!2594981 e!2594983)))

(declare-fun b!4179822 () Bool)

(declare-fun e!2594979 () Bool)

(declare-fun call!291567 () Bool)

(assert (=> b!4179822 (= e!2594979 call!291567)))

(declare-fun b!4179823 () Bool)

(assert (=> b!4179823 (= e!2594984 e!2594981)))

(declare-fun c!713784 () Bool)

(assert (=> b!4179823 (= c!713784 ((_ is Union!12537) (ite c!713745 (reg!12866 (regex!7632 r!4142)) (ite c!713744 (regTwo!25587 (regex!7632 r!4142)) (regTwo!25586 (regex!7632 r!4142))))))))

(declare-fun bm!291562 () Bool)

(assert (=> bm!291562 (= call!291568 (validRegex!5654 (ite c!713784 (regOne!25587 (ite c!713745 (reg!12866 (regex!7632 r!4142)) (ite c!713744 (regTwo!25587 (regex!7632 r!4142)) (regTwo!25586 (regex!7632 r!4142))))) (regOne!25586 (ite c!713745 (reg!12866 (regex!7632 r!4142)) (ite c!713744 (regTwo!25587 (regex!7632 r!4142)) (regTwo!25586 (regex!7632 r!4142))))))))))

(declare-fun b!4179824 () Bool)

(assert (=> b!4179824 (= e!2594980 e!2594979)))

(declare-fun res!1713975 () Bool)

(assert (=> b!4179824 (=> (not res!1713975) (not e!2594979))))

(assert (=> b!4179824 (= res!1713975 call!291568)))

(declare-fun bm!291563 () Bool)

(declare-fun call!291569 () Bool)

(assert (=> bm!291563 (= call!291567 call!291569)))

(declare-fun bm!291564 () Bool)

(assert (=> bm!291564 (= call!291569 (validRegex!5654 (ite c!713785 (reg!12866 (ite c!713745 (reg!12866 (regex!7632 r!4142)) (ite c!713744 (regTwo!25587 (regex!7632 r!4142)) (regTwo!25586 (regex!7632 r!4142))))) (ite c!713784 (regTwo!25587 (ite c!713745 (reg!12866 (regex!7632 r!4142)) (ite c!713744 (regTwo!25587 (regex!7632 r!4142)) (regTwo!25586 (regex!7632 r!4142))))) (regTwo!25586 (ite c!713745 (reg!12866 (regex!7632 r!4142)) (ite c!713744 (regTwo!25587 (regex!7632 r!4142)) (regTwo!25586 (regex!7632 r!4142)))))))))))

(declare-fun b!4179825 () Bool)

(declare-fun e!2594978 () Bool)

(assert (=> b!4179825 (= e!2594978 call!291569)))

(declare-fun b!4179826 () Bool)

(assert (=> b!4179826 (= e!2594983 call!291567)))

(declare-fun b!4179827 () Bool)

(assert (=> b!4179827 (= e!2594984 e!2594978)))

(declare-fun res!1713974 () Bool)

(assert (=> b!4179827 (= res!1713974 (not (nullable!4393 (reg!12866 (ite c!713745 (reg!12866 (regex!7632 r!4142)) (ite c!713744 (regTwo!25587 (regex!7632 r!4142)) (regTwo!25586 (regex!7632 r!4142))))))))))

(assert (=> b!4179827 (=> (not res!1713974) (not e!2594978))))

(assert (= (and d!1233567 (not res!1713977)) b!4179820))

(assert (= (and b!4179820 c!713785) b!4179827))

(assert (= (and b!4179820 (not c!713785)) b!4179823))

(assert (= (and b!4179827 res!1713974) b!4179825))

(assert (= (and b!4179823 c!713784) b!4179821))

(assert (= (and b!4179823 (not c!713784)) b!4179819))

(assert (= (and b!4179821 res!1713973) b!4179826))

(assert (= (and b!4179819 (not res!1713976)) b!4179824))

(assert (= (and b!4179824 res!1713975) b!4179822))

(assert (= (or b!4179826 b!4179822) bm!291563))

(assert (= (or b!4179821 b!4179824) bm!291562))

(assert (= (or b!4179825 bm!291563) bm!291564))

(declare-fun m!4769191 () Bool)

(assert (=> bm!291562 m!4769191))

(declare-fun m!4769193 () Bool)

(assert (=> bm!291564 m!4769193))

(declare-fun m!4769195 () Bool)

(assert (=> b!4179827 m!4769195))

(assert (=> bm!291543 d!1233567))

(declare-fun d!1233569 () Bool)

(declare-fun lt!1488635 () Int)

(assert (=> d!1233569 (>= lt!1488635 0)))

(declare-fun e!2594985 () Int)

(assert (=> d!1233569 (= lt!1488635 e!2594985)))

(declare-fun c!713786 () Bool)

(assert (=> d!1233569 (= c!713786 ((_ is Nil!45882) (t!344911 p!2959)))))

(assert (=> d!1233569 (= (size!33696 (t!344911 p!2959)) lt!1488635)))

(declare-fun b!4179828 () Bool)

(assert (=> b!4179828 (= e!2594985 0)))

(declare-fun b!4179829 () Bool)

(assert (=> b!4179829 (= e!2594985 (+ 1 (size!33696 (t!344911 (t!344911 p!2959)))))))

(assert (= (and d!1233569 c!713786) b!4179828))

(assert (= (and d!1233569 (not c!713786)) b!4179829))

(declare-fun m!4769197 () Bool)

(assert (=> b!4179829 m!4769197))

(assert (=> b!4179539 d!1233569))

(declare-fun d!1233571 () Bool)

(assert (=> d!1233571 (= (inv!60401 (tag!8496 (h!51303 (t!344912 rules!3843)))) (= (mod (str.len (value!238043 (tag!8496 (h!51303 (t!344912 rules!3843))))) 2) 0))))

(assert (=> b!4179676 d!1233571))

(declare-fun d!1233573 () Bool)

(declare-fun res!1713978 () Bool)

(declare-fun e!2594986 () Bool)

(assert (=> d!1233573 (=> (not res!1713978) (not e!2594986))))

(assert (=> d!1233573 (= res!1713978 (semiInverseModEq!3302 (toChars!10175 (transformation!7632 (h!51303 (t!344912 rules!3843)))) (toValue!10316 (transformation!7632 (h!51303 (t!344912 rules!3843))))))))

(assert (=> d!1233573 (= (inv!60404 (transformation!7632 (h!51303 (t!344912 rules!3843)))) e!2594986)))

(declare-fun b!4179830 () Bool)

(assert (=> b!4179830 (= e!2594986 (equivClasses!3201 (toChars!10175 (transformation!7632 (h!51303 (t!344912 rules!3843)))) (toValue!10316 (transformation!7632 (h!51303 (t!344912 rules!3843))))))))

(assert (= (and d!1233573 res!1713978) b!4179830))

(declare-fun m!4769199 () Bool)

(assert (=> d!1233573 m!4769199))

(declare-fun m!4769201 () Bool)

(assert (=> b!4179830 m!4769201))

(assert (=> b!4179676 d!1233573))

(declare-fun d!1233575 () Bool)

(assert (=> d!1233575 (= (isEmpty!27149 (originalCharacters!8020 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))) ((_ is Nil!45882) (originalCharacters!8020 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))))

(assert (=> d!1233447 d!1233575))

(assert (=> d!1233459 d!1233495))

(declare-fun d!1233577 () Bool)

(assert (=> d!1233577 (= (list!16573 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (list!16574 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))))))

(declare-fun bs!596242 () Bool)

(assert (= bs!596242 d!1233577))

(declare-fun m!4769203 () Bool)

(assert (=> bs!596242 m!4769203))

(assert (=> b!4179531 d!1233577))

(assert (=> b!4179594 d!1233531))

(assert (=> b!4179594 d!1233533))

(declare-fun d!1233579 () Bool)

(declare-fun isBalanced!3731 (Conc!13843) Bool)

(assert (=> d!1233579 (= (inv!60409 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574))) (isBalanced!3731 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574)))))))

(declare-fun bs!596243 () Bool)

(assert (= bs!596243 d!1233579))

(declare-fun m!4769205 () Bool)

(assert (=> bs!596243 m!4769205))

(assert (=> tb!250147 d!1233579))

(declare-fun bs!596244 () Bool)

(declare-fun d!1233581 () Bool)

(assert (= bs!596244 (and d!1233581 d!1233525)))

(declare-fun lambda!129331 () Int)

(assert (=> bs!596244 (= (= (toValue!10316 (transformation!7632 (h!51303 rules!3843))) (toValue!10316 (transformation!7632 r!4142))) (= lambda!129331 lambda!129322))))

(assert (=> d!1233581 true))

(assert (=> d!1233581 (< (dynLambda!19673 order!24193 (toValue!10316 (transformation!7632 (h!51303 rules!3843)))) (dynLambda!19678 order!24201 lambda!129331))))

(assert (=> d!1233581 (= (equivClasses!3201 (toChars!10175 (transformation!7632 (h!51303 rules!3843))) (toValue!10316 (transformation!7632 (h!51303 rules!3843)))) (Forall2!1160 lambda!129331))))

(declare-fun bs!596245 () Bool)

(assert (= bs!596245 d!1233581))

(declare-fun m!4769207 () Bool)

(assert (=> bs!596245 m!4769207))

(assert (=> b!4179546 d!1233581))

(declare-fun d!1233583 () Bool)

(declare-fun c!713787 () Bool)

(assert (=> d!1233583 (= c!713787 ((_ is Node!13843) (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574)))))))

(declare-fun e!2594987 () Bool)

(assert (=> d!1233583 (= (inv!60408 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574)))) e!2594987)))

(declare-fun b!4179831 () Bool)

(assert (=> b!4179831 (= e!2594987 (inv!60412 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574)))))))

(declare-fun b!4179832 () Bool)

(declare-fun e!2594988 () Bool)

(assert (=> b!4179832 (= e!2594987 e!2594988)))

(declare-fun res!1713979 () Bool)

(assert (=> b!4179832 (= res!1713979 (not ((_ is Leaf!21402) (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574))))))))

(assert (=> b!4179832 (=> res!1713979 e!2594988)))

(declare-fun b!4179833 () Bool)

(assert (=> b!4179833 (= e!2594988 (inv!60413 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574)))))))

(assert (= (and d!1233583 c!713787) b!4179831))

(assert (= (and d!1233583 (not c!713787)) b!4179832))

(assert (= (and b!4179832 (not res!1713979)) b!4179833))

(declare-fun m!4769209 () Bool)

(assert (=> b!4179831 m!4769209))

(declare-fun m!4769211 () Bool)

(assert (=> b!4179833 m!4769211))

(assert (=> b!4179524 d!1233583))

(declare-fun b!4179847 () Bool)

(declare-fun e!2594995 () Bool)

(assert (=> b!4179847 (= e!2594995 (>= (size!33696 (tail!6717 input!3342)) (size!33696 (tail!6717 input!3342))))))

(declare-fun b!4179845 () Bool)

(declare-fun res!1713981 () Bool)

(declare-fun e!2594996 () Bool)

(assert (=> b!4179845 (=> (not res!1713981) (not e!2594996))))

(assert (=> b!4179845 (= res!1713981 (= (head!8870 (tail!6717 input!3342)) (head!8870 (tail!6717 input!3342))))))

(declare-fun b!4179844 () Bool)

(declare-fun e!2594994 () Bool)

(assert (=> b!4179844 (= e!2594994 e!2594996)))

(declare-fun res!1713983 () Bool)

(assert (=> b!4179844 (=> (not res!1713983) (not e!2594996))))

(assert (=> b!4179844 (= res!1713983 (not ((_ is Nil!45882) (tail!6717 input!3342))))))

(declare-fun d!1233585 () Bool)

(assert (=> d!1233585 e!2594995))

(declare-fun res!1713982 () Bool)

(assert (=> d!1233585 (=> res!1713982 e!2594995)))

(declare-fun lt!1488637 () Bool)

(assert (=> d!1233585 (= res!1713982 (not lt!1488637))))

(assert (=> d!1233585 (= lt!1488637 e!2594994)))

(declare-fun res!1713980 () Bool)

(assert (=> d!1233585 (=> res!1713980 e!2594994)))

(assert (=> d!1233585 (= res!1713980 ((_ is Nil!45882) (tail!6717 input!3342)))))

(assert (=> d!1233585 (= (isPrefix!4489 (tail!6717 input!3342) (tail!6717 input!3342)) lt!1488637)))

(declare-fun b!4179846 () Bool)

(assert (=> b!4179846 (= e!2594996 (isPrefix!4489 (tail!6717 (tail!6717 input!3342)) (tail!6717 (tail!6717 input!3342))))))

(assert (= (and d!1233585 (not res!1713980)) b!4179844))

(assert (= (and b!4179844 res!1713983) b!4179845))

(assert (= (and b!4179845 res!1713981) b!4179846))

(assert (= (and d!1233585 (not res!1713982)) b!4179847))

(assert (=> b!4179847 m!4768885))

(assert (=> b!4179847 m!4769177))

(assert (=> b!4179847 m!4768885))

(assert (=> b!4179847 m!4769177))

(assert (=> b!4179845 m!4768885))

(assert (=> b!4179845 m!4769183))

(assert (=> b!4179845 m!4768885))

(assert (=> b!4179845 m!4769183))

(assert (=> b!4179846 m!4768885))

(assert (=> b!4179846 m!4769187))

(assert (=> b!4179846 m!4768885))

(assert (=> b!4179846 m!4769187))

(assert (=> b!4179846 m!4769187))

(assert (=> b!4179846 m!4769187))

(declare-fun m!4769213 () Bool)

(assert (=> b!4179846 m!4769213))

(assert (=> b!4179347 d!1233585))

(assert (=> b!4179347 d!1233565))

(declare-fun d!1233587 () Bool)

(declare-fun e!2595000 () Bool)

(assert (=> d!1233587 e!2595000))

(declare-fun c!713795 () Bool)

(assert (=> d!1233587 (= c!713795 ((_ is EmptyExpr!12537) (derivativeStep!3783 (regex!7632 r!4142) (head!8870 p!2959))))))

(declare-fun lt!1488638 () Bool)

(declare-fun e!2594998 () Bool)

(assert (=> d!1233587 (= lt!1488638 e!2594998)))

(declare-fun c!713794 () Bool)

(assert (=> d!1233587 (= c!713794 (isEmpty!27149 (tail!6717 p!2959)))))

(assert (=> d!1233587 (validRegex!5654 (derivativeStep!3783 (regex!7632 r!4142) (head!8870 p!2959)))))

(assert (=> d!1233587 (= (matchR!6276 (derivativeStep!3783 (regex!7632 r!4142) (head!8870 p!2959)) (tail!6717 p!2959)) lt!1488638)))

(declare-fun b!4179848 () Bool)

(declare-fun e!2594999 () Bool)

(assert (=> b!4179848 (= e!2595000 e!2594999)))

(declare-fun c!713793 () Bool)

(assert (=> b!4179848 (= c!713793 ((_ is EmptyLang!12537) (derivativeStep!3783 (regex!7632 r!4142) (head!8870 p!2959))))))

(declare-fun b!4179849 () Bool)

(declare-fun e!2595003 () Bool)

(assert (=> b!4179849 (= e!2595003 (= (head!8870 (tail!6717 p!2959)) (c!713707 (derivativeStep!3783 (regex!7632 r!4142) (head!8870 p!2959)))))))

(declare-fun b!4179850 () Bool)

(declare-fun e!2595001 () Bool)

(declare-fun e!2595002 () Bool)

(assert (=> b!4179850 (= e!2595001 e!2595002)))

(declare-fun res!1713990 () Bool)

(assert (=> b!4179850 (=> res!1713990 e!2595002)))

(declare-fun call!291574 () Bool)

(assert (=> b!4179850 (= res!1713990 call!291574)))

(declare-fun b!4179851 () Bool)

(declare-fun e!2594997 () Bool)

(assert (=> b!4179851 (= e!2594997 e!2595001)))

(declare-fun res!1713986 () Bool)

(assert (=> b!4179851 (=> (not res!1713986) (not e!2595001))))

(assert (=> b!4179851 (= res!1713986 (not lt!1488638))))

(declare-fun b!4179852 () Bool)

(assert (=> b!4179852 (= e!2595002 (not (= (head!8870 (tail!6717 p!2959)) (c!713707 (derivativeStep!3783 (regex!7632 r!4142) (head!8870 p!2959))))))))

(declare-fun b!4179853 () Bool)

(declare-fun res!1713984 () Bool)

(assert (=> b!4179853 (=> res!1713984 e!2594997)))

(assert (=> b!4179853 (= res!1713984 (not ((_ is ElementMatch!12537) (derivativeStep!3783 (regex!7632 r!4142) (head!8870 p!2959)))))))

(assert (=> b!4179853 (= e!2594999 e!2594997)))

(declare-fun bm!291569 () Bool)

(assert (=> bm!291569 (= call!291574 (isEmpty!27149 (tail!6717 p!2959)))))

(declare-fun b!4179854 () Bool)

(assert (=> b!4179854 (= e!2595000 (= lt!1488638 call!291574))))

(declare-fun b!4179855 () Bool)

(declare-fun res!1713985 () Bool)

(assert (=> b!4179855 (=> (not res!1713985) (not e!2595003))))

(assert (=> b!4179855 (= res!1713985 (isEmpty!27149 (tail!6717 (tail!6717 p!2959))))))

(declare-fun b!4179856 () Bool)

(declare-fun res!1713989 () Bool)

(assert (=> b!4179856 (=> (not res!1713989) (not e!2595003))))

(assert (=> b!4179856 (= res!1713989 (not call!291574))))

(declare-fun b!4179857 () Bool)

(declare-fun res!1713991 () Bool)

(assert (=> b!4179857 (=> res!1713991 e!2594997)))

(assert (=> b!4179857 (= res!1713991 e!2595003)))

(declare-fun res!1713987 () Bool)

(assert (=> b!4179857 (=> (not res!1713987) (not e!2595003))))

(assert (=> b!4179857 (= res!1713987 lt!1488638)))

(declare-fun b!4179858 () Bool)

(assert (=> b!4179858 (= e!2594999 (not lt!1488638))))

(declare-fun b!4179859 () Bool)

(assert (=> b!4179859 (= e!2594998 (matchR!6276 (derivativeStep!3783 (derivativeStep!3783 (regex!7632 r!4142) (head!8870 p!2959)) (head!8870 (tail!6717 p!2959))) (tail!6717 (tail!6717 p!2959))))))

(declare-fun b!4179860 () Bool)

(assert (=> b!4179860 (= e!2594998 (nullable!4393 (derivativeStep!3783 (regex!7632 r!4142) (head!8870 p!2959))))))

(declare-fun b!4179861 () Bool)

(declare-fun res!1713988 () Bool)

(assert (=> b!4179861 (=> res!1713988 e!2595002)))

(assert (=> b!4179861 (= res!1713988 (not (isEmpty!27149 (tail!6717 (tail!6717 p!2959)))))))

(assert (= (and d!1233587 c!713794) b!4179860))

(assert (= (and d!1233587 (not c!713794)) b!4179859))

(assert (= (and d!1233587 c!713795) b!4179854))

(assert (= (and d!1233587 (not c!713795)) b!4179848))

(assert (= (and b!4179848 c!713793) b!4179858))

(assert (= (and b!4179848 (not c!713793)) b!4179853))

(assert (= (and b!4179853 (not res!1713984)) b!4179857))

(assert (= (and b!4179857 res!1713987) b!4179856))

(assert (= (and b!4179856 res!1713989) b!4179855))

(assert (= (and b!4179855 res!1713985) b!4179849))

(assert (= (and b!4179857 (not res!1713991)) b!4179851))

(assert (= (and b!4179851 res!1713986) b!4179850))

(assert (= (and b!4179850 (not res!1713990)) b!4179861))

(assert (= (and b!4179861 (not res!1713988)) b!4179852))

(assert (= (or b!4179854 b!4179850 b!4179856) bm!291569))

(assert (=> b!4179860 m!4769033))

(declare-fun m!4769223 () Bool)

(assert (=> b!4179860 m!4769223))

(assert (=> b!4179859 m!4769035))

(assert (=> b!4179859 m!4769181))

(assert (=> b!4179859 m!4769033))

(assert (=> b!4179859 m!4769181))

(declare-fun m!4769225 () Bool)

(assert (=> b!4179859 m!4769225))

(assert (=> b!4179859 m!4769035))

(assert (=> b!4179859 m!4769185))

(assert (=> b!4179859 m!4769225))

(assert (=> b!4179859 m!4769185))

(declare-fun m!4769227 () Bool)

(assert (=> b!4179859 m!4769227))

(assert (=> b!4179852 m!4769035))

(assert (=> b!4179852 m!4769181))

(assert (=> d!1233587 m!4769035))

(assert (=> d!1233587 m!4769041))

(assert (=> d!1233587 m!4769033))

(declare-fun m!4769229 () Bool)

(assert (=> d!1233587 m!4769229))

(assert (=> bm!291569 m!4769035))

(assert (=> bm!291569 m!4769041))

(assert (=> b!4179855 m!4769035))

(assert (=> b!4179855 m!4769185))

(assert (=> b!4179855 m!4769185))

(declare-fun m!4769231 () Bool)

(assert (=> b!4179855 m!4769231))

(assert (=> b!4179849 m!4769035))

(assert (=> b!4179849 m!4769181))

(assert (=> b!4179861 m!4769035))

(assert (=> b!4179861 m!4769185))

(assert (=> b!4179861 m!4769185))

(assert (=> b!4179861 m!4769231))

(assert (=> b!4179592 d!1233587))

(declare-fun b!4179899 () Bool)

(declare-fun e!2595027 () Regex!12537)

(declare-fun call!291586 () Regex!12537)

(declare-fun call!291585 () Regex!12537)

(assert (=> b!4179899 (= e!2595027 (Union!12537 (Concat!20400 call!291585 (regTwo!25586 (regex!7632 r!4142))) call!291586))))

(declare-fun bm!291578 () Bool)

(declare-fun call!291584 () Regex!12537)

(declare-fun call!291583 () Regex!12537)

(assert (=> bm!291578 (= call!291584 call!291583)))

(declare-fun b!4179900 () Bool)

(declare-fun c!713811 () Bool)

(assert (=> b!4179900 (= c!713811 (nullable!4393 (regOne!25586 (regex!7632 r!4142))))))

(declare-fun e!2595031 () Regex!12537)

(assert (=> b!4179900 (= e!2595031 e!2595027)))

(declare-fun b!4179901 () Bool)

(declare-fun e!2595030 () Regex!12537)

(assert (=> b!4179901 (= e!2595030 EmptyLang!12537)))

(declare-fun b!4179902 () Bool)

(declare-fun e!2595029 () Regex!12537)

(assert (=> b!4179902 (= e!2595030 e!2595029)))

(declare-fun c!713813 () Bool)

(assert (=> b!4179902 (= c!713813 ((_ is ElementMatch!12537) (regex!7632 r!4142)))))

(declare-fun c!713810 () Bool)

(declare-fun bm!291579 () Bool)

(declare-fun c!713812 () Bool)

(assert (=> bm!291579 (= call!291583 (derivativeStep!3783 (ite c!713810 (regTwo!25587 (regex!7632 r!4142)) (ite c!713812 (reg!12866 (regex!7632 r!4142)) (ite c!713811 (regTwo!25586 (regex!7632 r!4142)) (regOne!25586 (regex!7632 r!4142))))) (head!8870 p!2959)))))

(declare-fun bm!291580 () Bool)

(assert (=> bm!291580 (= call!291586 call!291584)))

(declare-fun b!4179903 () Bool)

(declare-fun e!2595028 () Regex!12537)

(assert (=> b!4179903 (= e!2595028 e!2595031)))

(assert (=> b!4179903 (= c!713812 ((_ is Star!12537) (regex!7632 r!4142)))))

(declare-fun d!1233593 () Bool)

(declare-fun lt!1488645 () Regex!12537)

(assert (=> d!1233593 (validRegex!5654 lt!1488645)))

(assert (=> d!1233593 (= lt!1488645 e!2595030)))

(declare-fun c!713809 () Bool)

(assert (=> d!1233593 (= c!713809 (or ((_ is EmptyExpr!12537) (regex!7632 r!4142)) ((_ is EmptyLang!12537) (regex!7632 r!4142))))))

(assert (=> d!1233593 (validRegex!5654 (regex!7632 r!4142))))

(assert (=> d!1233593 (= (derivativeStep!3783 (regex!7632 r!4142) (head!8870 p!2959)) lt!1488645)))

(declare-fun bm!291581 () Bool)

(assert (=> bm!291581 (= call!291585 (derivativeStep!3783 (ite c!713810 (regOne!25587 (regex!7632 r!4142)) (regOne!25586 (regex!7632 r!4142))) (head!8870 p!2959)))))

(declare-fun b!4179904 () Bool)

(assert (=> b!4179904 (= c!713810 ((_ is Union!12537) (regex!7632 r!4142)))))

(assert (=> b!4179904 (= e!2595029 e!2595028)))

(declare-fun b!4179905 () Bool)

(assert (=> b!4179905 (= e!2595031 (Concat!20400 call!291584 (regex!7632 r!4142)))))

(declare-fun b!4179906 () Bool)

(assert (=> b!4179906 (= e!2595027 (Union!12537 (Concat!20400 call!291586 (regTwo!25586 (regex!7632 r!4142))) EmptyLang!12537))))

(declare-fun b!4179907 () Bool)

(assert (=> b!4179907 (= e!2595028 (Union!12537 call!291585 call!291583))))

(declare-fun b!4179908 () Bool)

(assert (=> b!4179908 (= e!2595029 (ite (= (head!8870 p!2959) (c!713707 (regex!7632 r!4142))) EmptyExpr!12537 EmptyLang!12537))))

(assert (= (and d!1233593 c!713809) b!4179901))

(assert (= (and d!1233593 (not c!713809)) b!4179902))

(assert (= (and b!4179902 c!713813) b!4179908))

(assert (= (and b!4179902 (not c!713813)) b!4179904))

(assert (= (and b!4179904 c!713810) b!4179907))

(assert (= (and b!4179904 (not c!713810)) b!4179903))

(assert (= (and b!4179903 c!713812) b!4179905))

(assert (= (and b!4179903 (not c!713812)) b!4179900))

(assert (= (and b!4179900 c!713811) b!4179899))

(assert (= (and b!4179900 (not c!713811)) b!4179906))

(assert (= (or b!4179899 b!4179906) bm!291580))

(assert (= (or b!4179905 bm!291580) bm!291578))

(assert (= (or b!4179907 bm!291578) bm!291579))

(assert (= (or b!4179907 b!4179899) bm!291581))

(declare-fun m!4769271 () Bool)

(assert (=> b!4179900 m!4769271))

(assert (=> bm!291579 m!4769031))

(declare-fun m!4769273 () Bool)

(assert (=> bm!291579 m!4769273))

(declare-fun m!4769275 () Bool)

(assert (=> d!1233593 m!4769275))

(assert (=> d!1233593 m!4768847))

(assert (=> bm!291581 m!4769031))

(declare-fun m!4769278 () Bool)

(assert (=> bm!291581 m!4769278))

(assert (=> b!4179592 d!1233593))

(assert (=> b!4179592 d!1233491))

(assert (=> b!4179592 d!1233533))

(assert (=> b!4179346 d!1233493))

(declare-fun bs!596254 () Bool)

(declare-fun d!1233621 () Bool)

(assert (= bs!596254 (and d!1233621 d!1233525)))

(declare-fun lambda!129333 () Int)

(assert (=> bs!596254 (= (= (toValue!10316 (transformation!7632 rBis!167)) (toValue!10316 (transformation!7632 r!4142))) (= lambda!129333 lambda!129322))))

(declare-fun bs!596255 () Bool)

(assert (= bs!596255 (and d!1233621 d!1233581)))

(assert (=> bs!596255 (= (= (toValue!10316 (transformation!7632 rBis!167)) (toValue!10316 (transformation!7632 (h!51303 rules!3843)))) (= lambda!129333 lambda!129331))))

(assert (=> d!1233621 true))

(assert (=> d!1233621 (< (dynLambda!19673 order!24193 (toValue!10316 (transformation!7632 rBis!167))) (dynLambda!19678 order!24201 lambda!129333))))

(assert (=> d!1233621 (= (equivClasses!3201 (toChars!10175 (transformation!7632 rBis!167)) (toValue!10316 (transformation!7632 rBis!167))) (Forall2!1160 lambda!129333))))

(declare-fun bs!596256 () Bool)

(assert (= bs!596256 d!1233621))

(declare-fun m!4769281 () Bool)

(assert (=> bs!596256 m!4769281))

(assert (=> b!4179599 d!1233621))

(declare-fun d!1233625 () Bool)

(declare-fun e!2595040 () Bool)

(assert (=> d!1233625 e!2595040))

(declare-fun res!1714010 () Bool)

(assert (=> d!1233625 (=> (not res!1714010) (not e!2595040))))

(declare-fun lt!1488650 () BalanceConc!27280)

(assert (=> d!1233625 (= res!1714010 (= (list!16573 lt!1488650) p!2959))))

(declare-fun fromList!910 (List!46006) Conc!13843)

(assert (=> d!1233625 (= lt!1488650 (BalanceConc!27281 (fromList!910 p!2959)))))

(assert (=> d!1233625 (= (fromListB!2585 p!2959) lt!1488650)))

(declare-fun b!4179920 () Bool)

(assert (=> b!4179920 (= e!2595040 (isBalanced!3731 (fromList!910 p!2959)))))

(assert (= (and d!1233625 res!1714010) b!4179920))

(declare-fun m!4769297 () Bool)

(assert (=> d!1233625 m!4769297))

(declare-fun m!4769299 () Bool)

(assert (=> d!1233625 m!4769299))

(assert (=> b!4179920 m!4769299))

(assert (=> b!4179920 m!4769299))

(declare-fun m!4769301 () Bool)

(assert (=> b!4179920 m!4769301))

(assert (=> d!1233411 d!1233625))

(assert (=> d!1233461 d!1233541))

(assert (=> d!1233461 d!1233469))

(declare-fun d!1233641 () Bool)

(declare-fun lt!1488651 () Bool)

(assert (=> d!1233641 (= lt!1488651 (select (content!7126 (t!344912 rules!3843)) rBis!167))))

(declare-fun e!2595041 () Bool)

(assert (=> d!1233641 (= lt!1488651 e!2595041)))

(declare-fun res!1714011 () Bool)

(assert (=> d!1233641 (=> (not res!1714011) (not e!2595041))))

(assert (=> d!1233641 (= res!1714011 ((_ is Cons!45883) (t!344912 rules!3843)))))

(assert (=> d!1233641 (= (contains!9435 (t!344912 rules!3843) rBis!167) lt!1488651)))

(declare-fun b!4179921 () Bool)

(declare-fun e!2595042 () Bool)

(assert (=> b!4179921 (= e!2595041 e!2595042)))

(declare-fun res!1714012 () Bool)

(assert (=> b!4179921 (=> res!1714012 e!2595042)))

(assert (=> b!4179921 (= res!1714012 (= (h!51303 (t!344912 rules!3843)) rBis!167))))

(declare-fun b!4179922 () Bool)

(assert (=> b!4179922 (= e!2595042 (contains!9435 (t!344912 (t!344912 rules!3843)) rBis!167))))

(assert (= (and d!1233641 res!1714011) b!4179921))

(assert (= (and b!4179921 (not res!1714012)) b!4179922))

(assert (=> d!1233641 m!4769085))

(declare-fun m!4769303 () Bool)

(assert (=> d!1233641 m!4769303))

(declare-fun m!4769305 () Bool)

(assert (=> b!4179922 m!4769305))

(assert (=> b!4179638 d!1233641))

(assert (=> b!4179631 d!1233517))

(declare-fun b!4179926 () Bool)

(declare-fun e!2595044 () Bool)

(assert (=> b!4179926 (= e!2595044 (>= (size!33696 (tail!6717 input!3342)) (size!33696 (tail!6717 pBis!107))))))

(declare-fun b!4179924 () Bool)

(declare-fun res!1714014 () Bool)

(declare-fun e!2595045 () Bool)

(assert (=> b!4179924 (=> (not res!1714014) (not e!2595045))))

(assert (=> b!4179924 (= res!1714014 (= (head!8870 (tail!6717 pBis!107)) (head!8870 (tail!6717 input!3342))))))

(declare-fun b!4179923 () Bool)

(declare-fun e!2595043 () Bool)

(assert (=> b!4179923 (= e!2595043 e!2595045)))

(declare-fun res!1714016 () Bool)

(assert (=> b!4179923 (=> (not res!1714016) (not e!2595045))))

(assert (=> b!4179923 (= res!1714016 (not ((_ is Nil!45882) (tail!6717 input!3342))))))

(declare-fun d!1233645 () Bool)

(assert (=> d!1233645 e!2595044))

(declare-fun res!1714015 () Bool)

(assert (=> d!1233645 (=> res!1714015 e!2595044)))

(declare-fun lt!1488652 () Bool)

(assert (=> d!1233645 (= res!1714015 (not lt!1488652))))

(assert (=> d!1233645 (= lt!1488652 e!2595043)))

(declare-fun res!1714013 () Bool)

(assert (=> d!1233645 (=> res!1714013 e!2595043)))

(assert (=> d!1233645 (= res!1714013 ((_ is Nil!45882) (tail!6717 pBis!107)))))

(assert (=> d!1233645 (= (isPrefix!4489 (tail!6717 pBis!107) (tail!6717 input!3342)) lt!1488652)))

(declare-fun b!4179925 () Bool)

(assert (=> b!4179925 (= e!2595045 (isPrefix!4489 (tail!6717 (tail!6717 pBis!107)) (tail!6717 (tail!6717 input!3342))))))

(assert (= (and d!1233645 (not res!1714013)) b!4179923))

(assert (= (and b!4179923 res!1714016) b!4179924))

(assert (= (and b!4179924 res!1714014) b!4179925))

(assert (= (and d!1233645 (not res!1714015)) b!4179926))

(assert (=> b!4179926 m!4768885))

(assert (=> b!4179926 m!4769177))

(assert (=> b!4179926 m!4769015))

(declare-fun m!4769307 () Bool)

(assert (=> b!4179926 m!4769307))

(assert (=> b!4179924 m!4769015))

(declare-fun m!4769309 () Bool)

(assert (=> b!4179924 m!4769309))

(assert (=> b!4179924 m!4768885))

(assert (=> b!4179924 m!4769183))

(assert (=> b!4179925 m!4769015))

(declare-fun m!4769311 () Bool)

(assert (=> b!4179925 m!4769311))

(assert (=> b!4179925 m!4768885))

(assert (=> b!4179925 m!4769187))

(assert (=> b!4179925 m!4769311))

(assert (=> b!4179925 m!4769187))

(declare-fun m!4769313 () Bool)

(assert (=> b!4179925 m!4769313))

(assert (=> b!4179542 d!1233645))

(declare-fun d!1233647 () Bool)

(assert (=> d!1233647 (= (tail!6717 pBis!107) (t!344911 pBis!107))))

(assert (=> b!4179542 d!1233647))

(assert (=> b!4179542 d!1233565))

(assert (=> b!4179582 d!1233491))

(declare-fun d!1233649 () Bool)

(assert (=> d!1233649 (= (inv!60409 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (isBalanced!3731 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))))))

(declare-fun bs!596265 () Bool)

(assert (= bs!596265 d!1233649))

(declare-fun m!4769315 () Bool)

(assert (=> bs!596265 m!4769315))

(assert (=> tb!250159 d!1233649))

(declare-fun b!4179927 () Bool)

(declare-fun e!2595046 () Bool)

(declare-fun tp!1277353 () Bool)

(assert (=> b!4179927 (= e!2595046 (and tp_is_empty!22037 tp!1277353))))

(assert (=> b!4179666 (= tp!1277339 e!2595046)))

(assert (= (and b!4179666 ((_ is Cons!45882) (t!344911 (t!344911 input!3342)))) b!4179927))

(declare-fun b!4179930 () Bool)

(declare-fun e!2595047 () Bool)

(declare-fun tp!1277358 () Bool)

(assert (=> b!4179930 (= e!2595047 tp!1277358)))

(declare-fun b!4179928 () Bool)

(assert (=> b!4179928 (= e!2595047 tp_is_empty!22037)))

(declare-fun b!4179931 () Bool)

(declare-fun tp!1277354 () Bool)

(declare-fun tp!1277355 () Bool)

(assert (=> b!4179931 (= e!2595047 (and tp!1277354 tp!1277355))))

(declare-fun b!4179929 () Bool)

(declare-fun tp!1277356 () Bool)

(declare-fun tp!1277357 () Bool)

(assert (=> b!4179929 (= e!2595047 (and tp!1277356 tp!1277357))))

(assert (=> b!4179676 (= tp!1277350 e!2595047)))

(assert (= (and b!4179676 ((_ is ElementMatch!12537) (regex!7632 (h!51303 (t!344912 rules!3843))))) b!4179928))

(assert (= (and b!4179676 ((_ is Concat!20400) (regex!7632 (h!51303 (t!344912 rules!3843))))) b!4179929))

(assert (= (and b!4179676 ((_ is Star!12537) (regex!7632 (h!51303 (t!344912 rules!3843))))) b!4179930))

(assert (= (and b!4179676 ((_ is Union!12537) (regex!7632 (h!51303 (t!344912 rules!3843))))) b!4179931))

(declare-fun tp!1277367 () Bool)

(declare-fun tp!1277365 () Bool)

(declare-fun e!2595055 () Bool)

(declare-fun b!4179943 () Bool)

(assert (=> b!4179943 (= e!2595055 (and (inv!60408 (left!34177 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))))) tp!1277365 (inv!60408 (right!34507 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))))) tp!1277367))))

(declare-fun b!4179945 () Bool)

(declare-fun e!2595056 () Bool)

(declare-fun tp!1277366 () Bool)

(assert (=> b!4179945 (= e!2595056 tp!1277366)))

(declare-fun b!4179944 () Bool)

(declare-fun inv!60414 (IArray!27691) Bool)

(assert (=> b!4179944 (= e!2595055 (and (inv!60414 (xs!17149 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))))) e!2595056))))

(assert (=> b!4179533 (= tp!1277310 (and (inv!60408 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))) e!2595055))))

(assert (= (and b!4179533 ((_ is Node!13843) (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))))) b!4179943))

(assert (= b!4179944 b!4179945))

(assert (= (and b!4179533 ((_ is Leaf!21402) (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))) (value!238044 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))))) b!4179944))

(declare-fun m!4769323 () Bool)

(assert (=> b!4179943 m!4769323))

(declare-fun m!4769325 () Bool)

(assert (=> b!4179943 m!4769325))

(declare-fun m!4769327 () Bool)

(assert (=> b!4179944 m!4769327))

(assert (=> b!4179533 m!4768997))

(declare-fun b!4179946 () Bool)

(declare-fun e!2595057 () Bool)

(declare-fun tp!1277368 () Bool)

(assert (=> b!4179946 (= e!2595057 (and tp_is_empty!22037 tp!1277368))))

(assert (=> b!4179665 (= tp!1277338 e!2595057)))

(assert (= (and b!4179665 ((_ is Cons!45882) (t!344911 (t!344911 pBis!107)))) b!4179946))

(declare-fun b!4179949 () Bool)

(declare-fun e!2595058 () Bool)

(declare-fun tp!1277373 () Bool)

(assert (=> b!4179949 (= e!2595058 tp!1277373)))

(declare-fun b!4179947 () Bool)

(assert (=> b!4179947 (= e!2595058 tp_is_empty!22037)))

(declare-fun b!4179950 () Bool)

(declare-fun tp!1277369 () Bool)

(declare-fun tp!1277370 () Bool)

(assert (=> b!4179950 (= e!2595058 (and tp!1277369 tp!1277370))))

(declare-fun b!4179948 () Bool)

(declare-fun tp!1277371 () Bool)

(declare-fun tp!1277372 () Bool)

(assert (=> b!4179948 (= e!2595058 (and tp!1277371 tp!1277372))))

(assert (=> b!4179656 (= tp!1277326 e!2595058)))

(assert (= (and b!4179656 ((_ is ElementMatch!12537) (regOne!25587 (regex!7632 (h!51303 rules!3843))))) b!4179947))

(assert (= (and b!4179656 ((_ is Concat!20400) (regOne!25587 (regex!7632 (h!51303 rules!3843))))) b!4179948))

(assert (= (and b!4179656 ((_ is Star!12537) (regOne!25587 (regex!7632 (h!51303 rules!3843))))) b!4179949))

(assert (= (and b!4179656 ((_ is Union!12537) (regOne!25587 (regex!7632 (h!51303 rules!3843))))) b!4179950))

(declare-fun b!4179953 () Bool)

(declare-fun e!2595059 () Bool)

(declare-fun tp!1277378 () Bool)

(assert (=> b!4179953 (= e!2595059 tp!1277378)))

(declare-fun b!4179951 () Bool)

(assert (=> b!4179951 (= e!2595059 tp_is_empty!22037)))

(declare-fun b!4179954 () Bool)

(declare-fun tp!1277374 () Bool)

(declare-fun tp!1277375 () Bool)

(assert (=> b!4179954 (= e!2595059 (and tp!1277374 tp!1277375))))

(declare-fun b!4179952 () Bool)

(declare-fun tp!1277376 () Bool)

(declare-fun tp!1277377 () Bool)

(assert (=> b!4179952 (= e!2595059 (and tp!1277376 tp!1277377))))

(assert (=> b!4179656 (= tp!1277327 e!2595059)))

(assert (= (and b!4179656 ((_ is ElementMatch!12537) (regTwo!25587 (regex!7632 (h!51303 rules!3843))))) b!4179951))

(assert (= (and b!4179656 ((_ is Concat!20400) (regTwo!25587 (regex!7632 (h!51303 rules!3843))))) b!4179952))

(assert (= (and b!4179656 ((_ is Star!12537) (regTwo!25587 (regex!7632 (h!51303 rules!3843))))) b!4179953))

(assert (= (and b!4179656 ((_ is Union!12537) (regTwo!25587 (regex!7632 (h!51303 rules!3843))))) b!4179954))

(declare-fun b!4179957 () Bool)

(declare-fun e!2595060 () Bool)

(declare-fun tp!1277383 () Bool)

(assert (=> b!4179957 (= e!2595060 tp!1277383)))

(declare-fun b!4179955 () Bool)

(assert (=> b!4179955 (= e!2595060 tp_is_empty!22037)))

(declare-fun b!4179958 () Bool)

(declare-fun tp!1277379 () Bool)

(declare-fun tp!1277380 () Bool)

(assert (=> b!4179958 (= e!2595060 (and tp!1277379 tp!1277380))))

(declare-fun b!4179956 () Bool)

(declare-fun tp!1277381 () Bool)

(declare-fun tp!1277382 () Bool)

(assert (=> b!4179956 (= e!2595060 (and tp!1277381 tp!1277382))))

(assert (=> b!4179651 (= tp!1277325 e!2595060)))

(assert (= (and b!4179651 ((_ is ElementMatch!12537) (reg!12866 (regex!7632 rBis!167)))) b!4179955))

(assert (= (and b!4179651 ((_ is Concat!20400) (reg!12866 (regex!7632 rBis!167)))) b!4179956))

(assert (= (and b!4179651 ((_ is Star!12537) (reg!12866 (regex!7632 rBis!167)))) b!4179957))

(assert (= (and b!4179651 ((_ is Union!12537) (reg!12866 (regex!7632 rBis!167)))) b!4179958))

(declare-fun b!4179961 () Bool)

(declare-fun e!2595061 () Bool)

(declare-fun tp!1277388 () Bool)

(assert (=> b!4179961 (= e!2595061 tp!1277388)))

(declare-fun b!4179959 () Bool)

(assert (=> b!4179959 (= e!2595061 tp_is_empty!22037)))

(declare-fun b!4179962 () Bool)

(declare-fun tp!1277384 () Bool)

(declare-fun tp!1277385 () Bool)

(assert (=> b!4179962 (= e!2595061 (and tp!1277384 tp!1277385))))

(declare-fun b!4179960 () Bool)

(declare-fun tp!1277386 () Bool)

(declare-fun tp!1277387 () Bool)

(assert (=> b!4179960 (= e!2595061 (and tp!1277386 tp!1277387))))

(assert (=> b!4179660 (= tp!1277331 e!2595061)))

(assert (= (and b!4179660 ((_ is ElementMatch!12537) (regOne!25587 (regex!7632 r!4142)))) b!4179959))

(assert (= (and b!4179660 ((_ is Concat!20400) (regOne!25587 (regex!7632 r!4142)))) b!4179960))

(assert (= (and b!4179660 ((_ is Star!12537) (regOne!25587 (regex!7632 r!4142)))) b!4179961))

(assert (= (and b!4179660 ((_ is Union!12537) (regOne!25587 (regex!7632 r!4142)))) b!4179962))

(declare-fun b!4179965 () Bool)

(declare-fun e!2595062 () Bool)

(declare-fun tp!1277393 () Bool)

(assert (=> b!4179965 (= e!2595062 tp!1277393)))

(declare-fun b!4179963 () Bool)

(assert (=> b!4179963 (= e!2595062 tp_is_empty!22037)))

(declare-fun b!4179966 () Bool)

(declare-fun tp!1277389 () Bool)

(declare-fun tp!1277390 () Bool)

(assert (=> b!4179966 (= e!2595062 (and tp!1277389 tp!1277390))))

(declare-fun b!4179964 () Bool)

(declare-fun tp!1277391 () Bool)

(declare-fun tp!1277392 () Bool)

(assert (=> b!4179964 (= e!2595062 (and tp!1277391 tp!1277392))))

(assert (=> b!4179660 (= tp!1277332 e!2595062)))

(assert (= (and b!4179660 ((_ is ElementMatch!12537) (regTwo!25587 (regex!7632 r!4142)))) b!4179963))

(assert (= (and b!4179660 ((_ is Concat!20400) (regTwo!25587 (regex!7632 r!4142)))) b!4179964))

(assert (= (and b!4179660 ((_ is Star!12537) (regTwo!25587 (regex!7632 r!4142)))) b!4179965))

(assert (= (and b!4179660 ((_ is Union!12537) (regTwo!25587 (regex!7632 r!4142)))) b!4179966))

(declare-fun b!4179969 () Bool)

(declare-fun b_free!121435 () Bool)

(declare-fun b_next!122139 () Bool)

(assert (=> b!4179969 (= b_free!121435 (not b_next!122139))))

(declare-fun t!344964 () Bool)

(declare-fun tb!250171 () Bool)

(assert (=> (and b!4179969 (= (toValue!10316 (transformation!7632 (h!51303 (t!344912 (t!344912 rules!3843))))) (toValue!10316 (transformation!7632 r!4142))) t!344964) tb!250171))

(declare-fun result!304846 () Bool)

(assert (= result!304846 result!304818))

(assert (=> d!1233415 t!344964))

(assert (=> d!1233451 t!344964))

(declare-fun tp!1277394 () Bool)

(declare-fun b_and!326857 () Bool)

(assert (=> b!4179969 (= tp!1277394 (and (=> t!344964 result!304846) b_and!326857))))

(declare-fun b_free!121437 () Bool)

(declare-fun b_next!122141 () Bool)

(assert (=> b!4179969 (= b_free!121437 (not b_next!122141))))

(declare-fun tb!250173 () Bool)

(declare-fun t!344966 () Bool)

(assert (=> (and b!4179969 (= (toChars!10175 (transformation!7632 (h!51303 (t!344912 (t!344912 rules!3843))))) (toChars!10175 (transformation!7632 r!4142))) t!344966) tb!250173))

(declare-fun result!304848 () Bool)

(assert (= result!304848 result!304810))

(assert (=> d!1233415 t!344966))

(declare-fun tb!250175 () Bool)

(declare-fun t!344968 () Bool)

(assert (=> (and b!4179969 (= (toChars!10175 (transformation!7632 (h!51303 (t!344912 (t!344912 rules!3843))))) (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959))))) t!344968) tb!250175))

(declare-fun result!304850 () Bool)

(assert (= result!304850 result!304826))

(assert (=> b!4179531 t!344968))

(declare-fun tp!1277395 () Bool)

(declare-fun b_and!326859 () Bool)

(assert (=> b!4179969 (= tp!1277395 (and (=> t!344966 result!304848) (=> t!344968 result!304850) b_and!326859))))

(declare-fun e!2595066 () Bool)

(assert (=> b!4179969 (= e!2595066 (and tp!1277394 tp!1277395))))

(declare-fun tp!1277396 () Bool)

(declare-fun b!4179968 () Bool)

(declare-fun e!2595064 () Bool)

(assert (=> b!4179968 (= e!2595064 (and tp!1277396 (inv!60401 (tag!8496 (h!51303 (t!344912 (t!344912 rules!3843))))) (inv!60404 (transformation!7632 (h!51303 (t!344912 (t!344912 rules!3843))))) e!2595066))))

(declare-fun b!4179967 () Bool)

(declare-fun e!2595063 () Bool)

(declare-fun tp!1277397 () Bool)

(assert (=> b!4179967 (= e!2595063 (and e!2595064 tp!1277397))))

(assert (=> b!4179675 (= tp!1277351 e!2595063)))

(assert (= b!4179968 b!4179969))

(assert (= b!4179967 b!4179968))

(assert (= (and b!4179675 ((_ is Cons!45883) (t!344912 (t!344912 rules!3843)))) b!4179967))

(declare-fun m!4769329 () Bool)

(assert (=> b!4179968 m!4769329))

(declare-fun m!4769331 () Bool)

(assert (=> b!4179968 m!4769331))

(declare-fun b!4179972 () Bool)

(declare-fun e!2595067 () Bool)

(declare-fun tp!1277402 () Bool)

(assert (=> b!4179972 (= e!2595067 tp!1277402)))

(declare-fun b!4179970 () Bool)

(assert (=> b!4179970 (= e!2595067 tp_is_empty!22037)))

(declare-fun b!4179973 () Bool)

(declare-fun tp!1277398 () Bool)

(declare-fun tp!1277399 () Bool)

(assert (=> b!4179973 (= e!2595067 (and tp!1277398 tp!1277399))))

(declare-fun b!4179971 () Bool)

(declare-fun tp!1277400 () Bool)

(declare-fun tp!1277401 () Bool)

(assert (=> b!4179971 (= e!2595067 (and tp!1277400 tp!1277401))))

(assert (=> b!4179652 (= tp!1277321 e!2595067)))

(assert (= (and b!4179652 ((_ is ElementMatch!12537) (regOne!25587 (regex!7632 rBis!167)))) b!4179970))

(assert (= (and b!4179652 ((_ is Concat!20400) (regOne!25587 (regex!7632 rBis!167)))) b!4179971))

(assert (= (and b!4179652 ((_ is Star!12537) (regOne!25587 (regex!7632 rBis!167)))) b!4179972))

(assert (= (and b!4179652 ((_ is Union!12537) (regOne!25587 (regex!7632 rBis!167)))) b!4179973))

(declare-fun b!4179978 () Bool)

(declare-fun e!2595068 () Bool)

(declare-fun tp!1277407 () Bool)

(assert (=> b!4179978 (= e!2595068 tp!1277407)))

(declare-fun b!4179976 () Bool)

(assert (=> b!4179976 (= e!2595068 tp_is_empty!22037)))

(declare-fun b!4179979 () Bool)

(declare-fun tp!1277403 () Bool)

(declare-fun tp!1277404 () Bool)

(assert (=> b!4179979 (= e!2595068 (and tp!1277403 tp!1277404))))

(declare-fun b!4179977 () Bool)

(declare-fun tp!1277405 () Bool)

(declare-fun tp!1277406 () Bool)

(assert (=> b!4179977 (= e!2595068 (and tp!1277405 tp!1277406))))

(assert (=> b!4179652 (= tp!1277322 e!2595068)))

(assert (= (and b!4179652 ((_ is ElementMatch!12537) (regTwo!25587 (regex!7632 rBis!167)))) b!4179976))

(assert (= (and b!4179652 ((_ is Concat!20400) (regTwo!25587 (regex!7632 rBis!167)))) b!4179977))

(assert (= (and b!4179652 ((_ is Star!12537) (regTwo!25587 (regex!7632 rBis!167)))) b!4179978))

(assert (= (and b!4179652 ((_ is Union!12537) (regTwo!25587 (regex!7632 rBis!167)))) b!4179979))

(declare-fun b!4179982 () Bool)

(declare-fun e!2595069 () Bool)

(declare-fun tp!1277412 () Bool)

(assert (=> b!4179982 (= e!2595069 tp!1277412)))

(declare-fun b!4179980 () Bool)

(assert (=> b!4179980 (= e!2595069 tp_is_empty!22037)))

(declare-fun b!4179983 () Bool)

(declare-fun tp!1277408 () Bool)

(declare-fun tp!1277409 () Bool)

(assert (=> b!4179983 (= e!2595069 (and tp!1277408 tp!1277409))))

(declare-fun b!4179981 () Bool)

(declare-fun tp!1277410 () Bool)

(declare-fun tp!1277411 () Bool)

(assert (=> b!4179981 (= e!2595069 (and tp!1277410 tp!1277411))))

(assert (=> b!4179658 (= tp!1277333 e!2595069)))

(assert (= (and b!4179658 ((_ is ElementMatch!12537) (regOne!25586 (regex!7632 r!4142)))) b!4179980))

(assert (= (and b!4179658 ((_ is Concat!20400) (regOne!25586 (regex!7632 r!4142)))) b!4179981))

(assert (= (and b!4179658 ((_ is Star!12537) (regOne!25586 (regex!7632 r!4142)))) b!4179982))

(assert (= (and b!4179658 ((_ is Union!12537) (regOne!25586 (regex!7632 r!4142)))) b!4179983))

(declare-fun b!4179990 () Bool)

(declare-fun e!2595073 () Bool)

(declare-fun tp!1277417 () Bool)

(assert (=> b!4179990 (= e!2595073 tp!1277417)))

(declare-fun b!4179988 () Bool)

(assert (=> b!4179988 (= e!2595073 tp_is_empty!22037)))

(declare-fun b!4179991 () Bool)

(declare-fun tp!1277413 () Bool)

(declare-fun tp!1277414 () Bool)

(assert (=> b!4179991 (= e!2595073 (and tp!1277413 tp!1277414))))

(declare-fun b!4179989 () Bool)

(declare-fun tp!1277415 () Bool)

(declare-fun tp!1277416 () Bool)

(assert (=> b!4179989 (= e!2595073 (and tp!1277415 tp!1277416))))

(assert (=> b!4179658 (= tp!1277334 e!2595073)))

(assert (= (and b!4179658 ((_ is ElementMatch!12537) (regTwo!25586 (regex!7632 r!4142)))) b!4179988))

(assert (= (and b!4179658 ((_ is Concat!20400) (regTwo!25586 (regex!7632 r!4142)))) b!4179989))

(assert (= (and b!4179658 ((_ is Star!12537) (regTwo!25586 (regex!7632 r!4142)))) b!4179990))

(assert (= (and b!4179658 ((_ is Union!12537) (regTwo!25586 (regex!7632 r!4142)))) b!4179991))

(declare-fun b!4179992 () Bool)

(declare-fun e!2595074 () Bool)

(declare-fun tp!1277418 () Bool)

(assert (=> b!4179992 (= e!2595074 (and tp_is_empty!22037 tp!1277418))))

(assert (=> b!4179678 (= tp!1277352 e!2595074)))

(assert (= (and b!4179678 ((_ is Cons!45882) (t!344911 (t!344911 p!2959)))) b!4179992))

(declare-fun tp!1277419 () Bool)

(declare-fun e!2595075 () Bool)

(declare-fun b!4179993 () Bool)

(declare-fun tp!1277421 () Bool)

(assert (=> b!4179993 (= e!2595075 (and (inv!60408 (left!34177 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574))))) tp!1277419 (inv!60408 (right!34507 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574))))) tp!1277421))))

(declare-fun b!4179995 () Bool)

(declare-fun e!2595076 () Bool)

(declare-fun tp!1277420 () Bool)

(assert (=> b!4179995 (= e!2595076 tp!1277420)))

(declare-fun b!4179994 () Bool)

(assert (=> b!4179994 (= e!2595075 (and (inv!60414 (xs!17149 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574))))) e!2595076))))

(assert (=> b!4179524 (= tp!1277309 (and (inv!60408 (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574)))) e!2595075))))

(assert (= (and b!4179524 ((_ is Node!13843) (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574))))) b!4179993))

(assert (= b!4179994 b!4179995))

(assert (= (and b!4179524 ((_ is Leaf!21402) (c!713706 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574))))) b!4179994))

(declare-fun m!4769341 () Bool)

(assert (=> b!4179993 m!4769341))

(declare-fun m!4769343 () Bool)

(assert (=> b!4179993 m!4769343))

(declare-fun m!4769345 () Bool)

(assert (=> b!4179994 m!4769345))

(assert (=> b!4179524 m!4768981))

(declare-fun b!4180000 () Bool)

(declare-fun e!2595078 () Bool)

(declare-fun tp!1277426 () Bool)

(assert (=> b!4180000 (= e!2595078 tp!1277426)))

(declare-fun b!4179998 () Bool)

(assert (=> b!4179998 (= e!2595078 tp_is_empty!22037)))

(declare-fun b!4180001 () Bool)

(declare-fun tp!1277422 () Bool)

(declare-fun tp!1277423 () Bool)

(assert (=> b!4180001 (= e!2595078 (and tp!1277422 tp!1277423))))

(declare-fun b!4179999 () Bool)

(declare-fun tp!1277424 () Bool)

(declare-fun tp!1277425 () Bool)

(assert (=> b!4179999 (= e!2595078 (and tp!1277424 tp!1277425))))

(assert (=> b!4179655 (= tp!1277330 e!2595078)))

(assert (= (and b!4179655 ((_ is ElementMatch!12537) (reg!12866 (regex!7632 (h!51303 rules!3843))))) b!4179998))

(assert (= (and b!4179655 ((_ is Concat!20400) (reg!12866 (regex!7632 (h!51303 rules!3843))))) b!4179999))

(assert (= (and b!4179655 ((_ is Star!12537) (reg!12866 (regex!7632 (h!51303 rules!3843))))) b!4180000))

(assert (= (and b!4179655 ((_ is Union!12537) (reg!12866 (regex!7632 (h!51303 rules!3843))))) b!4180001))

(declare-fun b!4180004 () Bool)

(declare-fun e!2595079 () Bool)

(declare-fun tp!1277431 () Bool)

(assert (=> b!4180004 (= e!2595079 tp!1277431)))

(declare-fun b!4180002 () Bool)

(assert (=> b!4180002 (= e!2595079 tp_is_empty!22037)))

(declare-fun b!4180005 () Bool)

(declare-fun tp!1277427 () Bool)

(declare-fun tp!1277428 () Bool)

(assert (=> b!4180005 (= e!2595079 (and tp!1277427 tp!1277428))))

(declare-fun b!4180003 () Bool)

(declare-fun tp!1277429 () Bool)

(declare-fun tp!1277430 () Bool)

(assert (=> b!4180003 (= e!2595079 (and tp!1277429 tp!1277430))))

(assert (=> b!4179650 (= tp!1277323 e!2595079)))

(assert (= (and b!4179650 ((_ is ElementMatch!12537) (regOne!25586 (regex!7632 rBis!167)))) b!4180002))

(assert (= (and b!4179650 ((_ is Concat!20400) (regOne!25586 (regex!7632 rBis!167)))) b!4180003))

(assert (= (and b!4179650 ((_ is Star!12537) (regOne!25586 (regex!7632 rBis!167)))) b!4180004))

(assert (= (and b!4179650 ((_ is Union!12537) (regOne!25586 (regex!7632 rBis!167)))) b!4180005))

(declare-fun b!4180008 () Bool)

(declare-fun e!2595080 () Bool)

(declare-fun tp!1277436 () Bool)

(assert (=> b!4180008 (= e!2595080 tp!1277436)))

(declare-fun b!4180006 () Bool)

(assert (=> b!4180006 (= e!2595080 tp_is_empty!22037)))

(declare-fun b!4180009 () Bool)

(declare-fun tp!1277432 () Bool)

(declare-fun tp!1277433 () Bool)

(assert (=> b!4180009 (= e!2595080 (and tp!1277432 tp!1277433))))

(declare-fun b!4180007 () Bool)

(declare-fun tp!1277434 () Bool)

(declare-fun tp!1277435 () Bool)

(assert (=> b!4180007 (= e!2595080 (and tp!1277434 tp!1277435))))

(assert (=> b!4179650 (= tp!1277324 e!2595080)))

(assert (= (and b!4179650 ((_ is ElementMatch!12537) (regTwo!25586 (regex!7632 rBis!167)))) b!4180006))

(assert (= (and b!4179650 ((_ is Concat!20400) (regTwo!25586 (regex!7632 rBis!167)))) b!4180007))

(assert (= (and b!4179650 ((_ is Star!12537) (regTwo!25586 (regex!7632 rBis!167)))) b!4180008))

(assert (= (and b!4179650 ((_ is Union!12537) (regTwo!25586 (regex!7632 rBis!167)))) b!4180009))

(declare-fun b!4180012 () Bool)

(declare-fun e!2595081 () Bool)

(declare-fun tp!1277441 () Bool)

(assert (=> b!4180012 (= e!2595081 tp!1277441)))

(declare-fun b!4180010 () Bool)

(assert (=> b!4180010 (= e!2595081 tp_is_empty!22037)))

(declare-fun b!4180013 () Bool)

(declare-fun tp!1277437 () Bool)

(declare-fun tp!1277438 () Bool)

(assert (=> b!4180013 (= e!2595081 (and tp!1277437 tp!1277438))))

(declare-fun b!4180011 () Bool)

(declare-fun tp!1277439 () Bool)

(declare-fun tp!1277440 () Bool)

(assert (=> b!4180011 (= e!2595081 (and tp!1277439 tp!1277440))))

(assert (=> b!4179659 (= tp!1277335 e!2595081)))

(assert (= (and b!4179659 ((_ is ElementMatch!12537) (reg!12866 (regex!7632 r!4142)))) b!4180010))

(assert (= (and b!4179659 ((_ is Concat!20400) (reg!12866 (regex!7632 r!4142)))) b!4180011))

(assert (= (and b!4179659 ((_ is Star!12537) (reg!12866 (regex!7632 r!4142)))) b!4180012))

(assert (= (and b!4179659 ((_ is Union!12537) (reg!12866 (regex!7632 r!4142)))) b!4180013))

(declare-fun b!4180016 () Bool)

(declare-fun e!2595082 () Bool)

(declare-fun tp!1277446 () Bool)

(assert (=> b!4180016 (= e!2595082 tp!1277446)))

(declare-fun b!4180014 () Bool)

(assert (=> b!4180014 (= e!2595082 tp_is_empty!22037)))

(declare-fun b!4180017 () Bool)

(declare-fun tp!1277442 () Bool)

(declare-fun tp!1277443 () Bool)

(assert (=> b!4180017 (= e!2595082 (and tp!1277442 tp!1277443))))

(declare-fun b!4180015 () Bool)

(declare-fun tp!1277444 () Bool)

(declare-fun tp!1277445 () Bool)

(assert (=> b!4180015 (= e!2595082 (and tp!1277444 tp!1277445))))

(assert (=> b!4179654 (= tp!1277328 e!2595082)))

(assert (= (and b!4179654 ((_ is ElementMatch!12537) (regOne!25586 (regex!7632 (h!51303 rules!3843))))) b!4180014))

(assert (= (and b!4179654 ((_ is Concat!20400) (regOne!25586 (regex!7632 (h!51303 rules!3843))))) b!4180015))

(assert (= (and b!4179654 ((_ is Star!12537) (regOne!25586 (regex!7632 (h!51303 rules!3843))))) b!4180016))

(assert (= (and b!4179654 ((_ is Union!12537) (regOne!25586 (regex!7632 (h!51303 rules!3843))))) b!4180017))

(declare-fun b!4180020 () Bool)

(declare-fun e!2595083 () Bool)

(declare-fun tp!1277451 () Bool)

(assert (=> b!4180020 (= e!2595083 tp!1277451)))

(declare-fun b!4180018 () Bool)

(assert (=> b!4180018 (= e!2595083 tp_is_empty!22037)))

(declare-fun b!4180021 () Bool)

(declare-fun tp!1277447 () Bool)

(declare-fun tp!1277448 () Bool)

(assert (=> b!4180021 (= e!2595083 (and tp!1277447 tp!1277448))))

(declare-fun b!4180019 () Bool)

(declare-fun tp!1277449 () Bool)

(declare-fun tp!1277450 () Bool)

(assert (=> b!4180019 (= e!2595083 (and tp!1277449 tp!1277450))))

(assert (=> b!4179654 (= tp!1277329 e!2595083)))

(assert (= (and b!4179654 ((_ is ElementMatch!12537) (regTwo!25586 (regex!7632 (h!51303 rules!3843))))) b!4180018))

(assert (= (and b!4179654 ((_ is Concat!20400) (regTwo!25586 (regex!7632 (h!51303 rules!3843))))) b!4180019))

(assert (= (and b!4179654 ((_ is Star!12537) (regTwo!25586 (regex!7632 (h!51303 rules!3843))))) b!4180020))

(assert (= (and b!4179654 ((_ is Union!12537) (regTwo!25586 (regex!7632 (h!51303 rules!3843))))) b!4180021))

(declare-fun b_lambda!122771 () Bool)

(assert (= b_lambda!122757 (or (and b!4179969 b_free!121437 (= (toChars!10175 (transformation!7632 (h!51303 (t!344912 (t!344912 rules!3843))))) (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))))) (and b!4179326 b_free!121421 (= (toChars!10175 (transformation!7632 rBis!167)) (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))))) (and b!4179325 b_free!121425 (= (toChars!10175 (transformation!7632 (h!51303 rules!3843))) (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))))) (and b!4179321 b_free!121417 (= (toChars!10175 (transformation!7632 r!4142)) (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))))) (and b!4179677 b_free!121433 (= (toChars!10175 (transformation!7632 (h!51303 (t!344912 rules!3843)))) (toChars!10175 (transformation!7632 (rule!10692 (Token!13979 (apply!10597 (transformation!7632 r!4142) lt!1488574) r!4142 (size!33696 p!2959) p!2959)))))) b_lambda!122771)))

(declare-fun b_lambda!122773 () Bool)

(assert (= b_lambda!122767 (or d!1233415 b_lambda!122773)))

(declare-fun bs!596270 () Bool)

(declare-fun d!1233663 () Bool)

(assert (= bs!596270 (and d!1233663 d!1233415)))

(assert (=> bs!596270 (= (dynLambda!19680 lambda!129313 lt!1488574) (= (list!16573 (dynLambda!19676 (toChars!10175 (transformation!7632 r!4142)) (dynLambda!19677 (toValue!10316 (transformation!7632 r!4142)) lt!1488574))) (list!16573 lt!1488574)))))

(declare-fun b_lambda!122775 () Bool)

(assert (=> (not b_lambda!122775) (not bs!596270)))

(assert (=> bs!596270 t!344942))

(declare-fun b_and!326861 () Bool)

(assert (= b_and!326845 (and (=> t!344942 result!304816) b_and!326861)))

(assert (=> bs!596270 t!344966))

(declare-fun b_and!326863 () Bool)

(assert (= b_and!326859 (and (=> t!344966 result!304848) b_and!326863)))

(assert (=> bs!596270 t!344958))

(declare-fun b_and!326865 () Bool)

(assert (= b_and!326855 (and (=> t!344958 result!304840) b_and!326865)))

(assert (=> bs!596270 t!344940))

(declare-fun b_and!326867 () Bool)

(assert (= b_and!326843 (and (=> t!344940 result!304814) b_and!326867)))

(assert (=> bs!596270 t!344938))

(declare-fun b_and!326869 () Bool)

(assert (= b_and!326841 (and (=> t!344938 result!304810) b_and!326869)))

(declare-fun b_lambda!122777 () Bool)

(assert (=> (not b_lambda!122777) (not bs!596270)))

(assert (=> bs!596270 t!344956))

(declare-fun b_and!326871 () Bool)

(assert (= b_and!326853 (and (=> t!344956 result!304838) b_and!326871)))

(assert (=> bs!596270 t!344944))

(declare-fun b_and!326873 () Bool)

(assert (= b_and!326847 (and (=> t!344944 result!304818) b_and!326873)))

(assert (=> bs!596270 t!344948))

(declare-fun b_and!326875 () Bool)

(assert (= b_and!326851 (and (=> t!344948 result!304824) b_and!326875)))

(assert (=> bs!596270 t!344946))

(declare-fun b_and!326877 () Bool)

(assert (= b_and!326849 (and (=> t!344946 result!304822) b_and!326877)))

(assert (=> bs!596270 t!344964))

(declare-fun b_and!326879 () Bool)

(assert (= b_and!326857 (and (=> t!344964 result!304846) b_and!326879)))

(assert (=> bs!596270 m!4768987))

(assert (=> bs!596270 m!4768987))

(assert (=> bs!596270 m!4768991))

(assert (=> bs!596270 m!4768991))

(assert (=> bs!596270 m!4768993))

(assert (=> bs!596270 m!4768989))

(assert (=> d!1233551 d!1233663))

(check-sat (not b!4180004) (not b!4179954) (not d!1233579) (not b!4179958) (not b!4179831) (not b!4180013) (not b!4179814) (not d!1233549) (not b!4179859) (not b!4179991) (not d!1233547) (not b!4179710) (not b_lambda!122775) (not b!4179983) (not b_next!122135) b_and!326869 (not b!4179999) (not b!4179735) (not b!4179533) (not d!1233621) (not d!1233499) (not b!4179973) (not b!4179736) (not b!4179929) (not b!4179750) (not b!4179817) (not b_lambda!122765) (not b!4179960) (not d!1233525) (not b!4179732) b_and!326861 b_and!326877 (not b!4179953) (not b!4180003) (not b!4179524) (not b_next!122119) (not bm!291562) (not b!4179926) (not b!4180015) (not d!1233517) (not b!4179855) (not b!4179818) (not b!4180017) (not b!4179788) (not b!4180001) (not d!1233587) (not bs!596270) (not b!4179995) (not d!1233593) (not b!4180020) (not d!1233539) b_and!326879 (not d!1233561) (not d!1233551) (not b!4179920) (not bm!291581) (not b!4179972) (not b!4179925) (not b!4179981) (not b_next!122137) (not d!1233577) (not b!4179861) (not b!4179949) (not b!4180008) (not b!4179847) (not b!4179827) (not b_next!122139) b_and!326867 (not b!4179860) (not b!4179965) (not b!4179994) (not b!4179992) (not bm!291550) (not b!4179786) (not b!4180021) (not b_next!122129) (not b!4179956) (not b!4179977) (not b!4179845) (not b!4179924) b_and!326871 (not b!4179964) (not b_lambda!122761) (not b_next!122123) (not b!4179922) (not d!1233641) (not b!4179946) (not b!4179948) (not b!4180000) (not d!1233649) (not d!1233553) (not b_lambda!122773) (not b!4179706) (not b!4179944) (not d!1233573) (not b!4179950) (not b!4179943) (not b!4180011) (not bm!291552) (not b!4179978) (not b!4179952) b_and!326875 (not bm!291569) (not b!4180012) (not b!4179900) (not bm!291564) (not d!1233581) (not b!4180019) (not b!4179957) (not b!4179833) (not b!4179945) (not bm!291579) (not b!4179989) (not b_lambda!122763) (not b!4180005) (not b!4179852) (not b_next!122127) (not b!4180007) b_and!326873 (not b!4179849) (not b!4179930) (not b!4179830) (not b_next!122141) (not d!1233625) (not d!1233559) (not b!4179982) (not b!4179745) (not b!4179829) (not b_lambda!122771) tp_is_empty!22037 (not b!4179816) (not b_next!122121) (not b!4179790) (not d!1233557) (not b!4179846) (not b!4179751) (not b!4179990) (not b!4179962) (not b!4179775) (not b!4179979) (not b_next!122125) (not b_lambda!122777) (not b!4179927) (not b!4179967) (not b!4180009) (not b!4179993) (not d!1233535) (not b!4179971) b_and!326863 (not b!4180016) (not b!4179968) (not b!4179931) b_and!326865 (not b!4179966) (not b!4179961))
(check-sat (not b_next!122135) b_and!326869 b_and!326861 b_and!326879 (not b_next!122137) (not b_next!122129) b_and!326871 (not b_next!122123) b_and!326875 (not b_next!122127) (not b_next!122121) (not b_next!122125) b_and!326863 b_and!326865 b_and!326877 (not b_next!122119) (not b_next!122139) b_and!326867 b_and!326873 (not b_next!122141))
