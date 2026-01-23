; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388160 () Bool)

(assert start!388160)

(declare-fun b!4097815 () Bool)

(declare-fun b_free!114609 () Bool)

(declare-fun b_next!115313 () Bool)

(assert (=> b!4097815 (= b_free!114609 (not b_next!115313))))

(declare-fun tp!1240224 () Bool)

(declare-fun b_and!316263 () Bool)

(assert (=> b!4097815 (= tp!1240224 b_and!316263)))

(declare-fun b_free!114611 () Bool)

(declare-fun b_next!115315 () Bool)

(assert (=> b!4097815 (= b_free!114611 (not b_next!115315))))

(declare-fun tp!1240218 () Bool)

(declare-fun b_and!316265 () Bool)

(assert (=> b!4097815 (= tp!1240218 b_and!316265)))

(declare-fun b!4097809 () Bool)

(declare-fun b_free!114613 () Bool)

(declare-fun b_next!115317 () Bool)

(assert (=> b!4097809 (= b_free!114613 (not b_next!115317))))

(declare-fun tp!1240217 () Bool)

(declare-fun b_and!316267 () Bool)

(assert (=> b!4097809 (= tp!1240217 b_and!316267)))

(declare-fun b_free!114615 () Bool)

(declare-fun b_next!115319 () Bool)

(assert (=> b!4097809 (= b_free!114615 (not b_next!115319))))

(declare-fun tp!1240223 () Bool)

(declare-fun b_and!316269 () Bool)

(assert (=> b!4097809 (= tp!1240223 b_and!316269)))

(declare-fun b!4097805 () Bool)

(declare-fun e!2542872 () Bool)

(declare-fun e!2542870 () Bool)

(declare-fun tp!1240222 () Bool)

(assert (=> b!4097805 (= e!2542872 (and e!2542870 tp!1240222))))

(declare-fun b!4097806 () Bool)

(declare-fun res!1675193 () Bool)

(declare-fun e!2542868 () Bool)

(assert (=> b!4097806 (=> (not res!1675193) (not e!2542868))))

(declare-datatypes ((List!44063 0))(
  ( (Nil!43939) (Cons!43939 (h!49359 (_ BitVec 16)) (t!339534 List!44063)) )
))
(declare-datatypes ((TokenValue!7344 0))(
  ( (FloatLiteralValue!14688 (text!51853 List!44063)) (TokenValueExt!7343 (__x!26905 Int)) (Broken!36720 (value!223375 List!44063)) (Object!7467) (End!7344) (Def!7344) (Underscore!7344) (Match!7344) (Else!7344) (Error!7344) (Case!7344) (If!7344) (Extends!7344) (Abstract!7344) (Class!7344) (Val!7344) (DelimiterValue!14688 (del!7404 List!44063)) (KeywordValue!7350 (value!223376 List!44063)) (CommentValue!14688 (value!223377 List!44063)) (WhitespaceValue!14688 (value!223378 List!44063)) (IndentationValue!7344 (value!223379 List!44063)) (String!50469) (Int32!7344) (Broken!36721 (value!223380 List!44063)) (Boolean!7345) (Unit!63480) (OperatorValue!7347 (op!7404 List!44063)) (IdentifierValue!14688 (value!223381 List!44063)) (IdentifierValue!14689 (value!223382 List!44063)) (WhitespaceValue!14689 (value!223383 List!44063)) (True!14688) (False!14688) (Broken!36722 (value!223384 List!44063)) (Broken!36723 (value!223385 List!44063)) (True!14689) (RightBrace!7344) (RightBracket!7344) (Colon!7344) (Null!7344) (Comma!7344) (LeftBracket!7344) (False!14689) (LeftBrace!7344) (ImaginaryLiteralValue!7344 (text!51854 List!44063)) (StringLiteralValue!22032 (value!223386 List!44063)) (EOFValue!7344 (value!223387 List!44063)) (IdentValue!7344 (value!223388 List!44063)) (DelimiterValue!14689 (value!223389 List!44063)) (DedentValue!7344 (value!223390 List!44063)) (NewLineValue!7344 (value!223391 List!44063)) (IntegerValue!22032 (value!223392 (_ BitVec 32)) (text!51855 List!44063)) (IntegerValue!22033 (value!223393 Int) (text!51856 List!44063)) (Times!7344) (Or!7344) (Equal!7344) (Minus!7344) (Broken!36724 (value!223394 List!44063)) (And!7344) (Div!7344) (LessEqual!7344) (Mod!7344) (Concat!19363) (Not!7344) (Plus!7344) (SpaceValue!7344 (value!223395 List!44063)) (IntegerValue!22034 (value!223396 Int) (text!51857 List!44063)) (StringLiteralValue!22033 (text!51858 List!44063)) (FloatLiteralValue!14689 (text!51859 List!44063)) (BytesLiteralValue!7344 (value!223397 List!44063)) (CommentValue!14689 (value!223398 List!44063)) (StringLiteralValue!22034 (value!223399 List!44063)) (ErrorTokenValue!7344 (msg!7405 List!44063)) )
))
(declare-datatypes ((C!24224 0))(
  ( (C!24225 (val!14222 Int)) )
))
(declare-datatypes ((Regex!12019 0))(
  ( (ElementMatch!12019 (c!706146 C!24224)) (Concat!19364 (regOne!24550 Regex!12019) (regTwo!24550 Regex!12019)) (EmptyExpr!12019) (Star!12019 (reg!12348 Regex!12019)) (EmptyLang!12019) (Union!12019 (regOne!24551 Regex!12019) (regTwo!24551 Regex!12019)) )
))
(declare-datatypes ((String!50470 0))(
  ( (String!50471 (value!223400 String)) )
))
(declare-datatypes ((List!44064 0))(
  ( (Nil!43940) (Cons!43940 (h!49360 C!24224) (t!339535 List!44064)) )
))
(declare-datatypes ((IArray!26655 0))(
  ( (IArray!26656 (innerList!13385 List!44064)) )
))
(declare-datatypes ((Conc!13325 0))(
  ( (Node!13325 (left!33032 Conc!13325) (right!33362 Conc!13325) (csize!26880 Int) (cheight!13536 Int)) (Leaf!20597 (xs!16631 IArray!26655) (csize!26881 Int)) (Empty!13325) )
))
(declare-datatypes ((BalanceConc!26244 0))(
  ( (BalanceConc!26245 (c!706147 Conc!13325)) )
))
(declare-datatypes ((TokenValueInjection!14116 0))(
  ( (TokenValueInjection!14117 (toValue!9718 Int) (toChars!9577 Int)) )
))
(declare-datatypes ((Rule!14028 0))(
  ( (Rule!14029 (regex!7114 Regex!12019) (tag!7974 String!50470) (isSeparator!7114 Bool) (transformation!7114 TokenValueInjection!14116)) )
))
(declare-datatypes ((List!44065 0))(
  ( (Nil!43941) (Cons!43941 (h!49361 Rule!14028) (t!339536 List!44065)) )
))
(declare-fun rules!3870 () List!44065)

(declare-fun isEmpty!26294 (List!44065) Bool)

(assert (=> b!4097806 (= res!1675193 (not (isEmpty!26294 rules!3870)))))

(declare-fun b!4097807 () Bool)

(declare-fun e!2542879 () Bool)

(declare-fun r!4213 () Rule!14028)

(get-info :version)

(assert (=> b!4097807 (= e!2542879 (or (and ((_ is Cons!43941) rules!3870) (= (h!49361 rules!3870) r!4213)) (and ((_ is Cons!43941) rules!3870) (not (= (h!49361 rules!3870) r!4213))) (not ((_ is Nil!43941) rules!3870))))))

(declare-fun e!2542875 () Bool)

(assert (=> b!4097809 (= e!2542875 (and tp!1240217 tp!1240223))))

(declare-fun b!4097810 () Bool)

(declare-fun e!2542869 () Bool)

(assert (=> b!4097810 (= e!2542869 (not e!2542879))))

(declare-fun res!1675199 () Bool)

(assert (=> b!4097810 (=> res!1675199 e!2542879)))

(declare-fun p!2988 () List!44064)

(declare-fun matchR!5960 (Regex!12019 List!44064) Bool)

(assert (=> b!4097810 (= res!1675199 (not (matchR!5960 (regex!7114 r!4213) p!2988)))))

(declare-datatypes ((LexerInterface!6703 0))(
  ( (LexerInterfaceExt!6700 (__x!26906 Int)) (Lexer!6701) )
))
(declare-fun thiss!26199 () LexerInterface!6703)

(declare-fun ruleValid!3034 (LexerInterface!6703 Rule!14028) Bool)

(assert (=> b!4097810 (ruleValid!3034 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63481 0))(
  ( (Unit!63482) )
))
(declare-fun lt!1465794 () Unit!63481)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2100 (LexerInterface!6703 Rule!14028 List!44065) Unit!63481)

(assert (=> b!4097810 (= lt!1465794 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2100 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4097811 () Bool)

(declare-fun e!2542877 () Bool)

(declare-fun tp_is_empty!21041 () Bool)

(declare-fun tp!1240226 () Bool)

(assert (=> b!4097811 (= e!2542877 (and tp_is_empty!21041 tp!1240226))))

(declare-fun b!4097812 () Bool)

(declare-fun res!1675197 () Bool)

(assert (=> b!4097812 (=> (not res!1675197) (not e!2542868))))

(declare-fun rulesInvariant!6046 (LexerInterface!6703 List!44065) Bool)

(assert (=> b!4097812 (= res!1675197 (rulesInvariant!6046 thiss!26199 rules!3870))))

(declare-fun b!4097813 () Bool)

(assert (=> b!4097813 (= e!2542868 e!2542869)))

(declare-fun res!1675194 () Bool)

(assert (=> b!4097813 (=> (not res!1675194) (not e!2542869))))

(declare-fun suffix!1518 () List!44064)

(declare-fun lt!1465793 () BalanceConc!26244)

(declare-fun input!3411 () List!44064)

(declare-datatypes ((Token!13354 0))(
  ( (Token!13355 (value!223401 TokenValue!7344) (rule!10270 Rule!14028) (size!32830 Int) (originalCharacters!7708 List!44064)) )
))
(declare-datatypes ((tuple2!42868 0))(
  ( (tuple2!42869 (_1!24568 Token!13354) (_2!24568 List!44064)) )
))
(declare-datatypes ((Option!9520 0))(
  ( (None!9519) (Some!9519 (v!40021 tuple2!42868)) )
))
(declare-fun maxPrefix!3993 (LexerInterface!6703 List!44065 List!44064) Option!9520)

(declare-fun apply!10297 (TokenValueInjection!14116 BalanceConc!26244) TokenValue!7344)

(declare-fun size!32831 (List!44064) Int)

(assert (=> b!4097813 (= res!1675194 (= (maxPrefix!3993 thiss!26199 rules!3870 input!3411) (Some!9519 (tuple2!42869 (Token!13355 (apply!10297 (transformation!7114 r!4213) lt!1465793) r!4213 (size!32831 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1465795 () Unit!63481)

(declare-fun lemmaSemiInverse!2081 (TokenValueInjection!14116 BalanceConc!26244) Unit!63481)

(assert (=> b!4097813 (= lt!1465795 (lemmaSemiInverse!2081 (transformation!7114 r!4213) lt!1465793))))

(declare-fun seqFromList!5331 (List!44064) BalanceConc!26244)

(assert (=> b!4097813 (= lt!1465793 (seqFromList!5331 p!2988))))

(declare-fun b!4097814 () Bool)

(declare-fun res!1675192 () Bool)

(assert (=> b!4097814 (=> (not res!1675192) (not e!2542868))))

(declare-fun ++!11520 (List!44064 List!44064) List!44064)

(assert (=> b!4097814 (= res!1675192 (= input!3411 (++!11520 p!2988 suffix!1518)))))

(declare-fun e!2542874 () Bool)

(assert (=> b!4097815 (= e!2542874 (and tp!1240224 tp!1240218))))

(declare-fun b!4097816 () Bool)

(declare-fun e!2542876 () Bool)

(declare-fun tp!1240219 () Bool)

(assert (=> b!4097816 (= e!2542876 (and tp_is_empty!21041 tp!1240219))))

(declare-fun b!4097817 () Bool)

(declare-fun e!2542880 () Bool)

(declare-fun tp!1240220 () Bool)

(assert (=> b!4097817 (= e!2542880 (and tp_is_empty!21041 tp!1240220))))

(declare-fun tp!1240221 () Bool)

(declare-fun b!4097818 () Bool)

(declare-fun e!2542878 () Bool)

(declare-fun inv!58672 (String!50470) Bool)

(declare-fun inv!58674 (TokenValueInjection!14116) Bool)

(assert (=> b!4097818 (= e!2542878 (and tp!1240221 (inv!58672 (tag!7974 r!4213)) (inv!58674 (transformation!7114 r!4213)) e!2542875))))

(declare-fun b!4097819 () Bool)

(declare-fun res!1675196 () Bool)

(assert (=> b!4097819 (=> (not res!1675196) (not e!2542868))))

(declare-fun contains!8801 (List!44065 Rule!14028) Bool)

(assert (=> b!4097819 (= res!1675196 (contains!8801 rules!3870 r!4213))))

(declare-fun tp!1240225 () Bool)

(declare-fun b!4097820 () Bool)

(assert (=> b!4097820 (= e!2542870 (and tp!1240225 (inv!58672 (tag!7974 (h!49361 rules!3870))) (inv!58674 (transformation!7114 (h!49361 rules!3870))) e!2542874))))

(declare-fun res!1675198 () Bool)

(assert (=> start!388160 (=> (not res!1675198) (not e!2542868))))

(assert (=> start!388160 (= res!1675198 ((_ is Lexer!6701) thiss!26199))))

(assert (=> start!388160 e!2542868))

(assert (=> start!388160 true))

(assert (=> start!388160 e!2542876))

(assert (=> start!388160 e!2542872))

(assert (=> start!388160 e!2542880))

(assert (=> start!388160 e!2542877))

(assert (=> start!388160 e!2542878))

(declare-fun b!4097808 () Bool)

(declare-fun res!1675195 () Bool)

(assert (=> b!4097808 (=> (not res!1675195) (not e!2542868))))

(declare-fun isEmpty!26295 (List!44064) Bool)

(assert (=> b!4097808 (= res!1675195 (not (isEmpty!26295 p!2988)))))

(assert (= (and start!388160 res!1675198) b!4097806))

(assert (= (and b!4097806 res!1675193) b!4097812))

(assert (= (and b!4097812 res!1675197) b!4097819))

(assert (= (and b!4097819 res!1675196) b!4097814))

(assert (= (and b!4097814 res!1675192) b!4097808))

(assert (= (and b!4097808 res!1675195) b!4097813))

(assert (= (and b!4097813 res!1675194) b!4097810))

(assert (= (and b!4097810 (not res!1675199)) b!4097807))

(assert (= (and start!388160 ((_ is Cons!43940) suffix!1518)) b!4097816))

(assert (= b!4097820 b!4097815))

(assert (= b!4097805 b!4097820))

(assert (= (and start!388160 ((_ is Cons!43941) rules!3870)) b!4097805))

(assert (= (and start!388160 ((_ is Cons!43940) p!2988)) b!4097817))

(assert (= (and start!388160 ((_ is Cons!43940) input!3411)) b!4097811))

(assert (= b!4097818 b!4097809))

(assert (= start!388160 b!4097818))

(declare-fun m!4704971 () Bool)

(assert (=> b!4097813 m!4704971))

(declare-fun m!4704973 () Bool)

(assert (=> b!4097813 m!4704973))

(declare-fun m!4704975 () Bool)

(assert (=> b!4097813 m!4704975))

(declare-fun m!4704977 () Bool)

(assert (=> b!4097813 m!4704977))

(declare-fun m!4704979 () Bool)

(assert (=> b!4097813 m!4704979))

(declare-fun m!4704981 () Bool)

(assert (=> b!4097812 m!4704981))

(declare-fun m!4704983 () Bool)

(assert (=> b!4097819 m!4704983))

(declare-fun m!4704985 () Bool)

(assert (=> b!4097814 m!4704985))

(declare-fun m!4704987 () Bool)

(assert (=> b!4097808 m!4704987))

(declare-fun m!4704989 () Bool)

(assert (=> b!4097810 m!4704989))

(declare-fun m!4704991 () Bool)

(assert (=> b!4097810 m!4704991))

(declare-fun m!4704993 () Bool)

(assert (=> b!4097810 m!4704993))

(declare-fun m!4704995 () Bool)

(assert (=> b!4097806 m!4704995))

(declare-fun m!4704997 () Bool)

(assert (=> b!4097818 m!4704997))

(declare-fun m!4704999 () Bool)

(assert (=> b!4097818 m!4704999))

(declare-fun m!4705001 () Bool)

(assert (=> b!4097820 m!4705001))

(declare-fun m!4705003 () Bool)

(assert (=> b!4097820 m!4705003))

(check-sat (not b_next!115319) (not b!4097814) (not b!4097805) tp_is_empty!21041 (not b!4097813) (not b!4097818) (not b!4097817) (not b!4097811) (not b!4097808) b_and!316265 (not b!4097812) b_and!316269 (not b!4097806) (not b!4097810) (not b_next!115317) (not b!4097819) b_and!316263 (not b_next!115313) (not b!4097816) (not b_next!115315) b_and!316267 (not b!4097820))
(check-sat (not b_next!115319) b_and!316269 (not b_next!115317) b_and!316263 (not b_next!115313) b_and!316265 (not b_next!115315) b_and!316267)
(get-model)

(declare-fun b!4097849 () Bool)

(declare-fun res!1675224 () Bool)

(declare-fun e!2542898 () Bool)

(assert (=> b!4097849 (=> (not res!1675224) (not e!2542898))))

(declare-fun tail!6396 (List!44064) List!44064)

(assert (=> b!4097849 (= res!1675224 (isEmpty!26295 (tail!6396 p!2988)))))

(declare-fun b!4097850 () Bool)

(declare-fun head!8662 (List!44064) C!24224)

(assert (=> b!4097850 (= e!2542898 (= (head!8662 p!2988) (c!706146 (regex!7114 r!4213))))))

(declare-fun b!4097851 () Bool)

(declare-fun e!2542899 () Bool)

(declare-fun lt!1465798 () Bool)

(assert (=> b!4097851 (= e!2542899 (not lt!1465798))))

(declare-fun b!4097852 () Bool)

(declare-fun e!2542897 () Bool)

(declare-fun nullable!4250 (Regex!12019) Bool)

(assert (=> b!4097852 (= e!2542897 (nullable!4250 (regex!7114 r!4213)))))

(declare-fun b!4097853 () Bool)

(declare-fun e!2542901 () Bool)

(declare-fun e!2542895 () Bool)

(assert (=> b!4097853 (= e!2542901 e!2542895)))

(declare-fun res!1675220 () Bool)

(assert (=> b!4097853 (=> (not res!1675220) (not e!2542895))))

(assert (=> b!4097853 (= res!1675220 (not lt!1465798))))

(declare-fun b!4097854 () Bool)

(declare-fun e!2542896 () Bool)

(assert (=> b!4097854 (= e!2542896 e!2542899)))

(declare-fun c!706156 () Bool)

(assert (=> b!4097854 (= c!706156 ((_ is EmptyLang!12019) (regex!7114 r!4213)))))

(declare-fun bm!289630 () Bool)

(declare-fun call!289635 () Bool)

(assert (=> bm!289630 (= call!289635 (isEmpty!26295 p!2988))))

(declare-fun b!4097855 () Bool)

(declare-fun res!1675223 () Bool)

(declare-fun e!2542900 () Bool)

(assert (=> b!4097855 (=> res!1675223 e!2542900)))

(assert (=> b!4097855 (= res!1675223 (not (isEmpty!26295 (tail!6396 p!2988))))))

(declare-fun d!1216764 () Bool)

(assert (=> d!1216764 e!2542896))

(declare-fun c!706155 () Bool)

(assert (=> d!1216764 (= c!706155 ((_ is EmptyExpr!12019) (regex!7114 r!4213)))))

(assert (=> d!1216764 (= lt!1465798 e!2542897)))

(declare-fun c!706154 () Bool)

(assert (=> d!1216764 (= c!706154 (isEmpty!26295 p!2988))))

(declare-fun validRegex!5451 (Regex!12019) Bool)

(assert (=> d!1216764 (validRegex!5451 (regex!7114 r!4213))))

(assert (=> d!1216764 (= (matchR!5960 (regex!7114 r!4213) p!2988) lt!1465798)))

(declare-fun b!4097856 () Bool)

(assert (=> b!4097856 (= e!2542896 (= lt!1465798 call!289635))))

(declare-fun b!4097857 () Bool)

(assert (=> b!4097857 (= e!2542895 e!2542900)))

(declare-fun res!1675221 () Bool)

(assert (=> b!4097857 (=> res!1675221 e!2542900)))

(assert (=> b!4097857 (= res!1675221 call!289635)))

(declare-fun b!4097858 () Bool)

(declare-fun res!1675225 () Bool)

(assert (=> b!4097858 (=> res!1675225 e!2542901)))

(assert (=> b!4097858 (= res!1675225 e!2542898)))

(declare-fun res!1675226 () Bool)

(assert (=> b!4097858 (=> (not res!1675226) (not e!2542898))))

(assert (=> b!4097858 (= res!1675226 lt!1465798)))

(declare-fun b!4097859 () Bool)

(declare-fun res!1675222 () Bool)

(assert (=> b!4097859 (=> (not res!1675222) (not e!2542898))))

(assert (=> b!4097859 (= res!1675222 (not call!289635))))

(declare-fun b!4097860 () Bool)

(declare-fun derivativeStep!3652 (Regex!12019 C!24224) Regex!12019)

(assert (=> b!4097860 (= e!2542897 (matchR!5960 (derivativeStep!3652 (regex!7114 r!4213) (head!8662 p!2988)) (tail!6396 p!2988)))))

(declare-fun b!4097861 () Bool)

(assert (=> b!4097861 (= e!2542900 (not (= (head!8662 p!2988) (c!706146 (regex!7114 r!4213)))))))

(declare-fun b!4097862 () Bool)

(declare-fun res!1675227 () Bool)

(assert (=> b!4097862 (=> res!1675227 e!2542901)))

(assert (=> b!4097862 (= res!1675227 (not ((_ is ElementMatch!12019) (regex!7114 r!4213))))))

(assert (=> b!4097862 (= e!2542899 e!2542901)))

(assert (= (and d!1216764 c!706154) b!4097852))

(assert (= (and d!1216764 (not c!706154)) b!4097860))

(assert (= (and d!1216764 c!706155) b!4097856))

(assert (= (and d!1216764 (not c!706155)) b!4097854))

(assert (= (and b!4097854 c!706156) b!4097851))

(assert (= (and b!4097854 (not c!706156)) b!4097862))

(assert (= (and b!4097862 (not res!1675227)) b!4097858))

(assert (= (and b!4097858 res!1675226) b!4097859))

(assert (= (and b!4097859 res!1675222) b!4097849))

(assert (= (and b!4097849 res!1675224) b!4097850))

(assert (= (and b!4097858 (not res!1675225)) b!4097853))

(assert (= (and b!4097853 res!1675220) b!4097857))

(assert (= (and b!4097857 (not res!1675221)) b!4097855))

(assert (= (and b!4097855 (not res!1675223)) b!4097861))

(assert (= (or b!4097856 b!4097859 b!4097857) bm!289630))

(declare-fun m!4705005 () Bool)

(assert (=> b!4097855 m!4705005))

(assert (=> b!4097855 m!4705005))

(declare-fun m!4705007 () Bool)

(assert (=> b!4097855 m!4705007))

(declare-fun m!4705009 () Bool)

(assert (=> b!4097861 m!4705009))

(assert (=> bm!289630 m!4704987))

(declare-fun m!4705011 () Bool)

(assert (=> b!4097852 m!4705011))

(assert (=> d!1216764 m!4704987))

(declare-fun m!4705013 () Bool)

(assert (=> d!1216764 m!4705013))

(assert (=> b!4097850 m!4705009))

(assert (=> b!4097849 m!4705005))

(assert (=> b!4097849 m!4705005))

(assert (=> b!4097849 m!4705007))

(assert (=> b!4097860 m!4705009))

(assert (=> b!4097860 m!4705009))

(declare-fun m!4705015 () Bool)

(assert (=> b!4097860 m!4705015))

(assert (=> b!4097860 m!4705005))

(assert (=> b!4097860 m!4705015))

(assert (=> b!4097860 m!4705005))

(declare-fun m!4705017 () Bool)

(assert (=> b!4097860 m!4705017))

(assert (=> b!4097810 d!1216764))

(declare-fun d!1216768 () Bool)

(declare-fun res!1675232 () Bool)

(declare-fun e!2542904 () Bool)

(assert (=> d!1216768 (=> (not res!1675232) (not e!2542904))))

(assert (=> d!1216768 (= res!1675232 (validRegex!5451 (regex!7114 r!4213)))))

(assert (=> d!1216768 (= (ruleValid!3034 thiss!26199 r!4213) e!2542904)))

(declare-fun b!4097867 () Bool)

(declare-fun res!1675233 () Bool)

(assert (=> b!4097867 (=> (not res!1675233) (not e!2542904))))

(assert (=> b!4097867 (= res!1675233 (not (nullable!4250 (regex!7114 r!4213))))))

(declare-fun b!4097868 () Bool)

(assert (=> b!4097868 (= e!2542904 (not (= (tag!7974 r!4213) (String!50471 ""))))))

(assert (= (and d!1216768 res!1675232) b!4097867))

(assert (= (and b!4097867 res!1675233) b!4097868))

(assert (=> d!1216768 m!4705013))

(assert (=> b!4097867 m!4705011))

(assert (=> b!4097810 d!1216768))

(declare-fun d!1216770 () Bool)

(assert (=> d!1216770 (ruleValid!3034 thiss!26199 r!4213)))

(declare-fun lt!1465801 () Unit!63481)

(declare-fun choose!25040 (LexerInterface!6703 Rule!14028 List!44065) Unit!63481)

(assert (=> d!1216770 (= lt!1465801 (choose!25040 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1216770 (contains!8801 rules!3870 r!4213)))

(assert (=> d!1216770 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2100 thiss!26199 r!4213 rules!3870) lt!1465801)))

(declare-fun bs!593681 () Bool)

(assert (= bs!593681 d!1216770))

(assert (=> bs!593681 m!4704991))

(declare-fun m!4705019 () Bool)

(assert (=> bs!593681 m!4705019))

(assert (=> bs!593681 m!4704983))

(assert (=> b!4097810 d!1216770))

(declare-fun d!1216772 () Bool)

(declare-fun res!1675236 () Bool)

(declare-fun e!2542909 () Bool)

(assert (=> d!1216772 (=> (not res!1675236) (not e!2542909))))

(declare-fun rulesValid!2797 (LexerInterface!6703 List!44065) Bool)

(assert (=> d!1216772 (= res!1675236 (rulesValid!2797 thiss!26199 rules!3870))))

(assert (=> d!1216772 (= (rulesInvariant!6046 thiss!26199 rules!3870) e!2542909)))

(declare-fun b!4097876 () Bool)

(declare-datatypes ((List!44066 0))(
  ( (Nil!43942) (Cons!43942 (h!49362 String!50470) (t!339561 List!44066)) )
))
(declare-fun noDuplicateTag!2798 (LexerInterface!6703 List!44065 List!44066) Bool)

(assert (=> b!4097876 (= e!2542909 (noDuplicateTag!2798 thiss!26199 rules!3870 Nil!43942))))

(assert (= (and d!1216772 res!1675236) b!4097876))

(declare-fun m!4705021 () Bool)

(assert (=> d!1216772 m!4705021))

(declare-fun m!4705023 () Bool)

(assert (=> b!4097876 m!4705023))

(assert (=> b!4097812 d!1216772))

(declare-fun d!1216774 () Bool)

(assert (=> d!1216774 (= (isEmpty!26294 rules!3870) ((_ is Nil!43941) rules!3870))))

(assert (=> b!4097806 d!1216774))

(declare-fun d!1216776 () Bool)

(assert (=> d!1216776 (= (isEmpty!26295 p!2988) ((_ is Nil!43940) p!2988))))

(assert (=> b!4097808 d!1216776))

(declare-fun d!1216778 () Bool)

(declare-fun e!2542956 () Bool)

(assert (=> d!1216778 e!2542956))

(declare-fun res!1675301 () Bool)

(assert (=> d!1216778 (=> res!1675301 e!2542956)))

(declare-fun lt!1465824 () Option!9520)

(declare-fun isEmpty!26296 (Option!9520) Bool)

(assert (=> d!1216778 (= res!1675301 (isEmpty!26296 lt!1465824))))

(declare-fun e!2542958 () Option!9520)

(assert (=> d!1216778 (= lt!1465824 e!2542958)))

(declare-fun c!706171 () Bool)

(assert (=> d!1216778 (= c!706171 (and ((_ is Cons!43941) rules!3870) ((_ is Nil!43941) (t!339536 rules!3870))))))

(declare-fun lt!1465827 () Unit!63481)

(declare-fun lt!1465828 () Unit!63481)

(assert (=> d!1216778 (= lt!1465827 lt!1465828)))

(declare-fun isPrefix!4154 (List!44064 List!44064) Bool)

(assert (=> d!1216778 (isPrefix!4154 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2705 (List!44064 List!44064) Unit!63481)

(assert (=> d!1216778 (= lt!1465828 (lemmaIsPrefixRefl!2705 input!3411 input!3411))))

(declare-fun rulesValidInductive!2636 (LexerInterface!6703 List!44065) Bool)

(assert (=> d!1216778 (rulesValidInductive!2636 thiss!26199 rules!3870)))

(assert (=> d!1216778 (= (maxPrefix!3993 thiss!26199 rules!3870 input!3411) lt!1465824)))

(declare-fun b!4097962 () Bool)

(declare-fun call!289641 () Option!9520)

(assert (=> b!4097962 (= e!2542958 call!289641)))

(declare-fun b!4097963 () Bool)

(declare-fun e!2542957 () Bool)

(declare-fun get!14414 (Option!9520) tuple2!42868)

(assert (=> b!4097963 (= e!2542957 (contains!8801 rules!3870 (rule!10270 (_1!24568 (get!14414 lt!1465824)))))))

(declare-fun b!4097964 () Bool)

(declare-fun res!1675300 () Bool)

(assert (=> b!4097964 (=> (not res!1675300) (not e!2542957))))

(declare-fun list!16305 (BalanceConc!26244) List!44064)

(declare-fun charsOf!4869 (Token!13354) BalanceConc!26244)

(assert (=> b!4097964 (= res!1675300 (= (++!11520 (list!16305 (charsOf!4869 (_1!24568 (get!14414 lt!1465824)))) (_2!24568 (get!14414 lt!1465824))) input!3411))))

(declare-fun b!4097965 () Bool)

(declare-fun res!1675299 () Bool)

(assert (=> b!4097965 (=> (not res!1675299) (not e!2542957))))

(assert (=> b!4097965 (= res!1675299 (= (list!16305 (charsOf!4869 (_1!24568 (get!14414 lt!1465824)))) (originalCharacters!7708 (_1!24568 (get!14414 lt!1465824)))))))

(declare-fun b!4097966 () Bool)

(declare-fun lt!1465825 () Option!9520)

(declare-fun lt!1465826 () Option!9520)

(assert (=> b!4097966 (= e!2542958 (ite (and ((_ is None!9519) lt!1465825) ((_ is None!9519) lt!1465826)) None!9519 (ite ((_ is None!9519) lt!1465826) lt!1465825 (ite ((_ is None!9519) lt!1465825) lt!1465826 (ite (>= (size!32830 (_1!24568 (v!40021 lt!1465825))) (size!32830 (_1!24568 (v!40021 lt!1465826)))) lt!1465825 lt!1465826)))))))

(assert (=> b!4097966 (= lt!1465825 call!289641)))

(assert (=> b!4097966 (= lt!1465826 (maxPrefix!3993 thiss!26199 (t!339536 rules!3870) input!3411))))

(declare-fun b!4097967 () Bool)

(declare-fun res!1675303 () Bool)

(assert (=> b!4097967 (=> (not res!1675303) (not e!2542957))))

(assert (=> b!4097967 (= res!1675303 (= (value!223401 (_1!24568 (get!14414 lt!1465824))) (apply!10297 (transformation!7114 (rule!10270 (_1!24568 (get!14414 lt!1465824)))) (seqFromList!5331 (originalCharacters!7708 (_1!24568 (get!14414 lt!1465824)))))))))

(declare-fun bm!289636 () Bool)

(declare-fun maxPrefixOneRule!2974 (LexerInterface!6703 Rule!14028 List!44064) Option!9520)

(assert (=> bm!289636 (= call!289641 (maxPrefixOneRule!2974 thiss!26199 (h!49361 rules!3870) input!3411))))

(declare-fun b!4097968 () Bool)

(declare-fun res!1675302 () Bool)

(assert (=> b!4097968 (=> (not res!1675302) (not e!2542957))))

(assert (=> b!4097968 (= res!1675302 (matchR!5960 (regex!7114 (rule!10270 (_1!24568 (get!14414 lt!1465824)))) (list!16305 (charsOf!4869 (_1!24568 (get!14414 lt!1465824))))))))

(declare-fun b!4097969 () Bool)

(assert (=> b!4097969 (= e!2542956 e!2542957)))

(declare-fun res!1675305 () Bool)

(assert (=> b!4097969 (=> (not res!1675305) (not e!2542957))))

(declare-fun isDefined!7203 (Option!9520) Bool)

(assert (=> b!4097969 (= res!1675305 (isDefined!7203 lt!1465824))))

(declare-fun b!4097970 () Bool)

(declare-fun res!1675304 () Bool)

(assert (=> b!4097970 (=> (not res!1675304) (not e!2542957))))

(assert (=> b!4097970 (= res!1675304 (< (size!32831 (_2!24568 (get!14414 lt!1465824))) (size!32831 input!3411)))))

(assert (= (and d!1216778 c!706171) b!4097962))

(assert (= (and d!1216778 (not c!706171)) b!4097966))

(assert (= (or b!4097962 b!4097966) bm!289636))

(assert (= (and d!1216778 (not res!1675301)) b!4097969))

(assert (= (and b!4097969 res!1675305) b!4097965))

(assert (= (and b!4097965 res!1675299) b!4097970))

(assert (= (and b!4097970 res!1675304) b!4097964))

(assert (= (and b!4097964 res!1675300) b!4097967))

(assert (= (and b!4097967 res!1675303) b!4097968))

(assert (= (and b!4097968 res!1675302) b!4097963))

(declare-fun m!4705067 () Bool)

(assert (=> b!4097967 m!4705067))

(declare-fun m!4705069 () Bool)

(assert (=> b!4097967 m!4705069))

(assert (=> b!4097967 m!4705069))

(declare-fun m!4705071 () Bool)

(assert (=> b!4097967 m!4705071))

(assert (=> b!4097968 m!4705067))

(declare-fun m!4705073 () Bool)

(assert (=> b!4097968 m!4705073))

(assert (=> b!4097968 m!4705073))

(declare-fun m!4705075 () Bool)

(assert (=> b!4097968 m!4705075))

(assert (=> b!4097968 m!4705075))

(declare-fun m!4705077 () Bool)

(assert (=> b!4097968 m!4705077))

(declare-fun m!4705079 () Bool)

(assert (=> b!4097966 m!4705079))

(declare-fun m!4705081 () Bool)

(assert (=> b!4097969 m!4705081))

(assert (=> b!4097965 m!4705067))

(assert (=> b!4097965 m!4705073))

(assert (=> b!4097965 m!4705073))

(assert (=> b!4097965 m!4705075))

(assert (=> b!4097964 m!4705067))

(assert (=> b!4097964 m!4705073))

(assert (=> b!4097964 m!4705073))

(assert (=> b!4097964 m!4705075))

(assert (=> b!4097964 m!4705075))

(declare-fun m!4705083 () Bool)

(assert (=> b!4097964 m!4705083))

(assert (=> b!4097963 m!4705067))

(declare-fun m!4705085 () Bool)

(assert (=> b!4097963 m!4705085))

(assert (=> b!4097970 m!4705067))

(declare-fun m!4705087 () Bool)

(assert (=> b!4097970 m!4705087))

(declare-fun m!4705089 () Bool)

(assert (=> b!4097970 m!4705089))

(declare-fun m!4705091 () Bool)

(assert (=> bm!289636 m!4705091))

(declare-fun m!4705093 () Bool)

(assert (=> d!1216778 m!4705093))

(declare-fun m!4705095 () Bool)

(assert (=> d!1216778 m!4705095))

(declare-fun m!4705097 () Bool)

(assert (=> d!1216778 m!4705097))

(declare-fun m!4705099 () Bool)

(assert (=> d!1216778 m!4705099))

(assert (=> b!4097813 d!1216778))

(declare-fun d!1216796 () Bool)

(declare-fun lt!1465831 () Int)

(assert (=> d!1216796 (>= lt!1465831 0)))

(declare-fun e!2542961 () Int)

(assert (=> d!1216796 (= lt!1465831 e!2542961)))

(declare-fun c!706174 () Bool)

(assert (=> d!1216796 (= c!706174 ((_ is Nil!43940) p!2988))))

(assert (=> d!1216796 (= (size!32831 p!2988) lt!1465831)))

(declare-fun b!4097975 () Bool)

(assert (=> b!4097975 (= e!2542961 0)))

(declare-fun b!4097976 () Bool)

(assert (=> b!4097976 (= e!2542961 (+ 1 (size!32831 (t!339535 p!2988))))))

(assert (= (and d!1216796 c!706174) b!4097975))

(assert (= (and d!1216796 (not c!706174)) b!4097976))

(declare-fun m!4705101 () Bool)

(assert (=> b!4097976 m!4705101))

(assert (=> b!4097813 d!1216796))

(declare-fun d!1216798 () Bool)

(declare-fun fromListB!2447 (List!44064) BalanceConc!26244)

(assert (=> d!1216798 (= (seqFromList!5331 p!2988) (fromListB!2447 p!2988))))

(declare-fun bs!593683 () Bool)

(assert (= bs!593683 d!1216798))

(declare-fun m!4705103 () Bool)

(assert (=> bs!593683 m!4705103))

(assert (=> b!4097813 d!1216798))

(declare-fun b!4098014 () Bool)

(declare-fun e!2542976 () Bool)

(assert (=> b!4098014 (= e!2542976 true)))

(declare-fun d!1216800 () Bool)

(assert (=> d!1216800 e!2542976))

(assert (= d!1216800 b!4098014))

(declare-fun order!23171 () Int)

(declare-fun lambda!128176 () Int)

(declare-fun order!23173 () Int)

(declare-fun dynLambda!18848 (Int Int) Int)

(declare-fun dynLambda!18849 (Int Int) Int)

(assert (=> b!4098014 (< (dynLambda!18848 order!23171 (toValue!9718 (transformation!7114 r!4213))) (dynLambda!18849 order!23173 lambda!128176))))

(declare-fun order!23175 () Int)

(declare-fun dynLambda!18850 (Int Int) Int)

(assert (=> b!4098014 (< (dynLambda!18850 order!23175 (toChars!9577 (transformation!7114 r!4213))) (dynLambda!18849 order!23173 lambda!128176))))

(declare-fun dynLambda!18851 (Int TokenValue!7344) BalanceConc!26244)

(declare-fun dynLambda!18852 (Int BalanceConc!26244) TokenValue!7344)

(assert (=> d!1216800 (= (list!16305 (dynLambda!18851 (toChars!9577 (transformation!7114 r!4213)) (dynLambda!18852 (toValue!9718 (transformation!7114 r!4213)) lt!1465793))) (list!16305 lt!1465793))))

(declare-fun lt!1465854 () Unit!63481)

(declare-fun ForallOf!900 (Int BalanceConc!26244) Unit!63481)

(assert (=> d!1216800 (= lt!1465854 (ForallOf!900 lambda!128176 lt!1465793))))

(assert (=> d!1216800 (= (lemmaSemiInverse!2081 (transformation!7114 r!4213) lt!1465793) lt!1465854)))

(declare-fun b_lambda!120399 () Bool)

(assert (=> (not b_lambda!120399) (not d!1216800)))

(declare-fun t!339538 () Bool)

(declare-fun tb!246697 () Bool)

(assert (=> (and b!4097815 (= (toChars!9577 (transformation!7114 (h!49361 rules!3870))) (toChars!9577 (transformation!7114 r!4213))) t!339538) tb!246697))

(declare-fun b!4098019 () Bool)

(declare-fun e!2542979 () Bool)

(declare-fun tp!1240229 () Bool)

(declare-fun inv!58675 (Conc!13325) Bool)

(assert (=> b!4098019 (= e!2542979 (and (inv!58675 (c!706147 (dynLambda!18851 (toChars!9577 (transformation!7114 r!4213)) (dynLambda!18852 (toValue!9718 (transformation!7114 r!4213)) lt!1465793)))) tp!1240229))))

(declare-fun result!299342 () Bool)

(declare-fun inv!58676 (BalanceConc!26244) Bool)

(assert (=> tb!246697 (= result!299342 (and (inv!58676 (dynLambda!18851 (toChars!9577 (transformation!7114 r!4213)) (dynLambda!18852 (toValue!9718 (transformation!7114 r!4213)) lt!1465793))) e!2542979))))

(assert (= tb!246697 b!4098019))

(declare-fun m!4705143 () Bool)

(assert (=> b!4098019 m!4705143))

(declare-fun m!4705145 () Bool)

(assert (=> tb!246697 m!4705145))

(assert (=> d!1216800 t!339538))

(declare-fun b_and!316271 () Bool)

(assert (= b_and!316265 (and (=> t!339538 result!299342) b_and!316271)))

(declare-fun t!339540 () Bool)

(declare-fun tb!246699 () Bool)

(assert (=> (and b!4097809 (= (toChars!9577 (transformation!7114 r!4213)) (toChars!9577 (transformation!7114 r!4213))) t!339540) tb!246699))

(declare-fun result!299346 () Bool)

(assert (= result!299346 result!299342))

(assert (=> d!1216800 t!339540))

(declare-fun b_and!316273 () Bool)

(assert (= b_and!316269 (and (=> t!339540 result!299346) b_and!316273)))

(declare-fun b_lambda!120401 () Bool)

(assert (=> (not b_lambda!120401) (not d!1216800)))

(declare-fun tb!246701 () Bool)

(declare-fun t!339542 () Bool)

(assert (=> (and b!4097815 (= (toValue!9718 (transformation!7114 (h!49361 rules!3870))) (toValue!9718 (transformation!7114 r!4213))) t!339542) tb!246701))

(declare-fun result!299348 () Bool)

(declare-fun inv!21 (TokenValue!7344) Bool)

(assert (=> tb!246701 (= result!299348 (inv!21 (dynLambda!18852 (toValue!9718 (transformation!7114 r!4213)) lt!1465793)))))

(declare-fun m!4705147 () Bool)

(assert (=> tb!246701 m!4705147))

(assert (=> d!1216800 t!339542))

(declare-fun b_and!316275 () Bool)

(assert (= b_and!316263 (and (=> t!339542 result!299348) b_and!316275)))

(declare-fun t!339544 () Bool)

(declare-fun tb!246703 () Bool)

(assert (=> (and b!4097809 (= (toValue!9718 (transformation!7114 r!4213)) (toValue!9718 (transformation!7114 r!4213))) t!339544) tb!246703))

(declare-fun result!299352 () Bool)

(assert (= result!299352 result!299348))

(assert (=> d!1216800 t!339544))

(declare-fun b_and!316277 () Bool)

(assert (= b_and!316267 (and (=> t!339544 result!299352) b_and!316277)))

(declare-fun m!4705149 () Bool)

(assert (=> d!1216800 m!4705149))

(declare-fun m!4705151 () Bool)

(assert (=> d!1216800 m!4705151))

(declare-fun m!4705153 () Bool)

(assert (=> d!1216800 m!4705153))

(assert (=> d!1216800 m!4705151))

(declare-fun m!4705155 () Bool)

(assert (=> d!1216800 m!4705155))

(assert (=> d!1216800 m!4705155))

(declare-fun m!4705157 () Bool)

(assert (=> d!1216800 m!4705157))

(assert (=> b!4097813 d!1216800))

(declare-fun d!1216808 () Bool)

(assert (=> d!1216808 (= (apply!10297 (transformation!7114 r!4213) lt!1465793) (dynLambda!18852 (toValue!9718 (transformation!7114 r!4213)) lt!1465793))))

(declare-fun b_lambda!120403 () Bool)

(assert (=> (not b_lambda!120403) (not d!1216808)))

(assert (=> d!1216808 t!339542))

(declare-fun b_and!316279 () Bool)

(assert (= b_and!316275 (and (=> t!339542 result!299348) b_and!316279)))

(assert (=> d!1216808 t!339544))

(declare-fun b_and!316281 () Bool)

(assert (= b_and!316277 (and (=> t!339544 result!299352) b_and!316281)))

(assert (=> d!1216808 m!4705151))

(assert (=> b!4097813 d!1216808))

(declare-fun d!1216810 () Bool)

(assert (=> d!1216810 (= (inv!58672 (tag!7974 r!4213)) (= (mod (str.len (value!223400 (tag!7974 r!4213))) 2) 0))))

(assert (=> b!4097818 d!1216810))

(declare-fun d!1216812 () Bool)

(declare-fun res!1675329 () Bool)

(declare-fun e!2542990 () Bool)

(assert (=> d!1216812 (=> (not res!1675329) (not e!2542990))))

(declare-fun semiInverseModEq!3063 (Int Int) Bool)

(assert (=> d!1216812 (= res!1675329 (semiInverseModEq!3063 (toChars!9577 (transformation!7114 r!4213)) (toValue!9718 (transformation!7114 r!4213))))))

(assert (=> d!1216812 (= (inv!58674 (transformation!7114 r!4213)) e!2542990)))

(declare-fun b!4098031 () Bool)

(declare-fun equivClasses!2962 (Int Int) Bool)

(assert (=> b!4098031 (= e!2542990 (equivClasses!2962 (toChars!9577 (transformation!7114 r!4213)) (toValue!9718 (transformation!7114 r!4213))))))

(assert (= (and d!1216812 res!1675329) b!4098031))

(declare-fun m!4705159 () Bool)

(assert (=> d!1216812 m!4705159))

(declare-fun m!4705161 () Bool)

(assert (=> b!4098031 m!4705161))

(assert (=> b!4097818 d!1216812))

(declare-fun d!1216814 () Bool)

(assert (=> d!1216814 (= (inv!58672 (tag!7974 (h!49361 rules!3870))) (= (mod (str.len (value!223400 (tag!7974 (h!49361 rules!3870)))) 2) 0))))

(assert (=> b!4097820 d!1216814))

(declare-fun d!1216816 () Bool)

(declare-fun res!1675330 () Bool)

(declare-fun e!2542991 () Bool)

(assert (=> d!1216816 (=> (not res!1675330) (not e!2542991))))

(assert (=> d!1216816 (= res!1675330 (semiInverseModEq!3063 (toChars!9577 (transformation!7114 (h!49361 rules!3870))) (toValue!9718 (transformation!7114 (h!49361 rules!3870)))))))

(assert (=> d!1216816 (= (inv!58674 (transformation!7114 (h!49361 rules!3870))) e!2542991)))

(declare-fun b!4098034 () Bool)

(assert (=> b!4098034 (= e!2542991 (equivClasses!2962 (toChars!9577 (transformation!7114 (h!49361 rules!3870))) (toValue!9718 (transformation!7114 (h!49361 rules!3870)))))))

(assert (= (and d!1216816 res!1675330) b!4098034))

(declare-fun m!4705163 () Bool)

(assert (=> d!1216816 m!4705163))

(declare-fun m!4705165 () Bool)

(assert (=> b!4098034 m!4705165))

(assert (=> b!4097820 d!1216816))

(declare-fun b!4098060 () Bool)

(declare-fun e!2543004 () Bool)

(declare-fun lt!1465858 () List!44064)

(assert (=> b!4098060 (= e!2543004 (or (not (= suffix!1518 Nil!43940)) (= lt!1465858 p!2988)))))

(declare-fun b!4098057 () Bool)

(declare-fun e!2543003 () List!44064)

(assert (=> b!4098057 (= e!2543003 suffix!1518)))

(declare-fun d!1216818 () Bool)

(assert (=> d!1216818 e!2543004))

(declare-fun res!1675336 () Bool)

(assert (=> d!1216818 (=> (not res!1675336) (not e!2543004))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6787 (List!44064) (InoxSet C!24224))

(assert (=> d!1216818 (= res!1675336 (= (content!6787 lt!1465858) ((_ map or) (content!6787 p!2988) (content!6787 suffix!1518))))))

(assert (=> d!1216818 (= lt!1465858 e!2543003)))

(declare-fun c!706185 () Bool)

(assert (=> d!1216818 (= c!706185 ((_ is Nil!43940) p!2988))))

(assert (=> d!1216818 (= (++!11520 p!2988 suffix!1518) lt!1465858)))

(declare-fun b!4098058 () Bool)

(assert (=> b!4098058 (= e!2543003 (Cons!43940 (h!49360 p!2988) (++!11520 (t!339535 p!2988) suffix!1518)))))

(declare-fun b!4098059 () Bool)

(declare-fun res!1675337 () Bool)

(assert (=> b!4098059 (=> (not res!1675337) (not e!2543004))))

(assert (=> b!4098059 (= res!1675337 (= (size!32831 lt!1465858) (+ (size!32831 p!2988) (size!32831 suffix!1518))))))

(assert (= (and d!1216818 c!706185) b!4098057))

(assert (= (and d!1216818 (not c!706185)) b!4098058))

(assert (= (and d!1216818 res!1675336) b!4098059))

(assert (= (and b!4098059 res!1675337) b!4098060))

(declare-fun m!4705187 () Bool)

(assert (=> d!1216818 m!4705187))

(declare-fun m!4705189 () Bool)

(assert (=> d!1216818 m!4705189))

(declare-fun m!4705191 () Bool)

(assert (=> d!1216818 m!4705191))

(declare-fun m!4705193 () Bool)

(assert (=> b!4098058 m!4705193))

(declare-fun m!4705195 () Bool)

(assert (=> b!4098059 m!4705195))

(assert (=> b!4098059 m!4704979))

(declare-fun m!4705197 () Bool)

(assert (=> b!4098059 m!4705197))

(assert (=> b!4097814 d!1216818))

(declare-fun d!1216830 () Bool)

(declare-fun lt!1465861 () Bool)

(declare-fun content!6788 (List!44065) (InoxSet Rule!14028))

(assert (=> d!1216830 (= lt!1465861 (select (content!6788 rules!3870) r!4213))))

(declare-fun e!2543024 () Bool)

(assert (=> d!1216830 (= lt!1465861 e!2543024)))

(declare-fun res!1675342 () Bool)

(assert (=> d!1216830 (=> (not res!1675342) (not e!2543024))))

(assert (=> d!1216830 (= res!1675342 ((_ is Cons!43941) rules!3870))))

(assert (=> d!1216830 (= (contains!8801 rules!3870 r!4213) lt!1465861)))

(declare-fun b!4098088 () Bool)

(declare-fun e!2543025 () Bool)

(assert (=> b!4098088 (= e!2543024 e!2543025)))

(declare-fun res!1675343 () Bool)

(assert (=> b!4098088 (=> res!1675343 e!2543025)))

(assert (=> b!4098088 (= res!1675343 (= (h!49361 rules!3870) r!4213))))

(declare-fun b!4098089 () Bool)

(assert (=> b!4098089 (= e!2543025 (contains!8801 (t!339536 rules!3870) r!4213))))

(assert (= (and d!1216830 res!1675342) b!4098088))

(assert (= (and b!4098088 (not res!1675343)) b!4098089))

(declare-fun m!4705199 () Bool)

(assert (=> d!1216830 m!4705199))

(declare-fun m!4705201 () Bool)

(assert (=> d!1216830 m!4705201))

(declare-fun m!4705203 () Bool)

(assert (=> b!4098089 m!4705203))

(assert (=> b!4097819 d!1216830))

(declare-fun b!4098097 () Bool)

(declare-fun e!2543032 () Bool)

(declare-fun tp!1240272 () Bool)

(assert (=> b!4098097 (= e!2543032 (and tp_is_empty!21041 tp!1240272))))

(assert (=> b!4097816 (= tp!1240219 e!2543032)))

(assert (= (and b!4097816 ((_ is Cons!43940) (t!339535 suffix!1518))) b!4098097))

(declare-fun b!4098108 () Bool)

(declare-fun b_free!114621 () Bool)

(declare-fun b_next!115325 () Bool)

(assert (=> b!4098108 (= b_free!114621 (not b_next!115325))))

(declare-fun tb!246717 () Bool)

(declare-fun t!339558 () Bool)

(assert (=> (and b!4098108 (= (toValue!9718 (transformation!7114 (h!49361 (t!339536 rules!3870)))) (toValue!9718 (transformation!7114 r!4213))) t!339558) tb!246717))

(declare-fun result!299380 () Bool)

(assert (= result!299380 result!299348))

(assert (=> d!1216800 t!339558))

(assert (=> d!1216808 t!339558))

(declare-fun b_and!316299 () Bool)

(declare-fun tp!1240282 () Bool)

(assert (=> b!4098108 (= tp!1240282 (and (=> t!339558 result!299380) b_and!316299))))

(declare-fun b_free!114623 () Bool)

(declare-fun b_next!115327 () Bool)

(assert (=> b!4098108 (= b_free!114623 (not b_next!115327))))

(declare-fun tb!246719 () Bool)

(declare-fun t!339560 () Bool)

(assert (=> (and b!4098108 (= (toChars!9577 (transformation!7114 (h!49361 (t!339536 rules!3870)))) (toChars!9577 (transformation!7114 r!4213))) t!339560) tb!246719))

(declare-fun result!299382 () Bool)

(assert (= result!299382 result!299342))

(assert (=> d!1216800 t!339560))

(declare-fun tp!1240281 () Bool)

(declare-fun b_and!316301 () Bool)

(assert (=> b!4098108 (= tp!1240281 (and (=> t!339560 result!299382) b_and!316301))))

(declare-fun e!2543042 () Bool)

(assert (=> b!4098108 (= e!2543042 (and tp!1240282 tp!1240281))))

(declare-fun e!2543043 () Bool)

(declare-fun b!4098107 () Bool)

(declare-fun tp!1240283 () Bool)

(assert (=> b!4098107 (= e!2543043 (and tp!1240283 (inv!58672 (tag!7974 (h!49361 (t!339536 rules!3870)))) (inv!58674 (transformation!7114 (h!49361 (t!339536 rules!3870)))) e!2543042))))

(declare-fun b!4098106 () Bool)

(declare-fun e!2543044 () Bool)

(declare-fun tp!1240284 () Bool)

(assert (=> b!4098106 (= e!2543044 (and e!2543043 tp!1240284))))

(assert (=> b!4097805 (= tp!1240222 e!2543044)))

(assert (= b!4098107 b!4098108))

(assert (= b!4098106 b!4098107))

(assert (= (and b!4097805 ((_ is Cons!43941) (t!339536 rules!3870))) b!4098106))

(declare-fun m!4705209 () Bool)

(assert (=> b!4098107 m!4705209))

(declare-fun m!4705211 () Bool)

(assert (=> b!4098107 m!4705211))

(declare-fun b!4098109 () Bool)

(declare-fun e!2543045 () Bool)

(declare-fun tp!1240285 () Bool)

(assert (=> b!4098109 (= e!2543045 (and tp_is_empty!21041 tp!1240285))))

(assert (=> b!4097817 (= tp!1240220 e!2543045)))

(assert (= (and b!4097817 ((_ is Cons!43940) (t!339535 p!2988))) b!4098109))

(declare-fun b!4098110 () Bool)

(declare-fun e!2543046 () Bool)

(declare-fun tp!1240286 () Bool)

(assert (=> b!4098110 (= e!2543046 (and tp_is_empty!21041 tp!1240286))))

(assert (=> b!4097811 (= tp!1240226 e!2543046)))

(assert (= (and b!4097811 ((_ is Cons!43940) (t!339535 input!3411))) b!4098110))

(declare-fun b!4098122 () Bool)

(declare-fun e!2543049 () Bool)

(declare-fun tp!1240300 () Bool)

(declare-fun tp!1240301 () Bool)

(assert (=> b!4098122 (= e!2543049 (and tp!1240300 tp!1240301))))

(declare-fun b!4098121 () Bool)

(assert (=> b!4098121 (= e!2543049 tp_is_empty!21041)))

(assert (=> b!4097818 (= tp!1240221 e!2543049)))

(declare-fun b!4098123 () Bool)

(declare-fun tp!1240299 () Bool)

(assert (=> b!4098123 (= e!2543049 tp!1240299)))

(declare-fun b!4098124 () Bool)

(declare-fun tp!1240297 () Bool)

(declare-fun tp!1240298 () Bool)

(assert (=> b!4098124 (= e!2543049 (and tp!1240297 tp!1240298))))

(assert (= (and b!4097818 ((_ is ElementMatch!12019) (regex!7114 r!4213))) b!4098121))

(assert (= (and b!4097818 ((_ is Concat!19364) (regex!7114 r!4213))) b!4098122))

(assert (= (and b!4097818 ((_ is Star!12019) (regex!7114 r!4213))) b!4098123))

(assert (= (and b!4097818 ((_ is Union!12019) (regex!7114 r!4213))) b!4098124))

(declare-fun b!4098126 () Bool)

(declare-fun e!2543050 () Bool)

(declare-fun tp!1240305 () Bool)

(declare-fun tp!1240306 () Bool)

(assert (=> b!4098126 (= e!2543050 (and tp!1240305 tp!1240306))))

(declare-fun b!4098125 () Bool)

(assert (=> b!4098125 (= e!2543050 tp_is_empty!21041)))

(assert (=> b!4097820 (= tp!1240225 e!2543050)))

(declare-fun b!4098127 () Bool)

(declare-fun tp!1240304 () Bool)

(assert (=> b!4098127 (= e!2543050 tp!1240304)))

(declare-fun b!4098128 () Bool)

(declare-fun tp!1240302 () Bool)

(declare-fun tp!1240303 () Bool)

(assert (=> b!4098128 (= e!2543050 (and tp!1240302 tp!1240303))))

(assert (= (and b!4097820 ((_ is ElementMatch!12019) (regex!7114 (h!49361 rules!3870)))) b!4098125))

(assert (= (and b!4097820 ((_ is Concat!19364) (regex!7114 (h!49361 rules!3870)))) b!4098126))

(assert (= (and b!4097820 ((_ is Star!12019) (regex!7114 (h!49361 rules!3870)))) b!4098127))

(assert (= (and b!4097820 ((_ is Union!12019) (regex!7114 (h!49361 rules!3870)))) b!4098128))

(declare-fun b_lambda!120417 () Bool)

(assert (= b_lambda!120403 (or (and b!4097815 b_free!114609 (= (toValue!9718 (transformation!7114 (h!49361 rules!3870))) (toValue!9718 (transformation!7114 r!4213)))) (and b!4097809 b_free!114613) (and b!4098108 b_free!114621 (= (toValue!9718 (transformation!7114 (h!49361 (t!339536 rules!3870)))) (toValue!9718 (transformation!7114 r!4213)))) b_lambda!120417)))

(declare-fun b_lambda!120419 () Bool)

(assert (= b_lambda!120399 (or (and b!4097815 b_free!114611 (= (toChars!9577 (transformation!7114 (h!49361 rules!3870))) (toChars!9577 (transformation!7114 r!4213)))) (and b!4097809 b_free!114615) (and b!4098108 b_free!114623 (= (toChars!9577 (transformation!7114 (h!49361 (t!339536 rules!3870)))) (toChars!9577 (transformation!7114 r!4213)))) b_lambda!120419)))

(declare-fun b_lambda!120421 () Bool)

(assert (= b_lambda!120401 (or (and b!4097815 b_free!114609 (= (toValue!9718 (transformation!7114 (h!49361 rules!3870))) (toValue!9718 (transformation!7114 r!4213)))) (and b!4097809 b_free!114613) (and b!4098108 b_free!114621 (= (toValue!9718 (transformation!7114 (h!49361 (t!339536 rules!3870)))) (toValue!9718 (transformation!7114 r!4213)))) b_lambda!120421)))

(check-sat (not b!4098019) (not b!4097963) (not b!4098107) b_and!316301 (not b_next!115325) (not tb!246697) (not bm!289630) (not d!1216800) (not d!1216772) (not tb!246701) (not b!4097970) (not b!4097867) (not b!4098110) (not b!4097861) b_and!316281 b_and!316299 (not b_next!115319) (not b!4097964) (not b!4097965) (not d!1216770) (not d!1216764) (not b!4098128) (not d!1216818) (not b_lambda!120419) (not d!1216778) (not d!1216798) (not d!1216816) (not b!4097855) (not b!4097976) (not b!4098031) (not b!4098122) b_and!316271 (not b!4098058) (not b!4097852) (not b!4097850) b_and!316273 (not b_next!115317) tp_is_empty!21041 b_and!316279 (not b!4097849) (not b!4097966) (not b!4097860) (not b_lambda!120417) (not b!4098106) (not b!4098089) (not b!4097969) (not b!4098127) (not b!4098124) (not b!4097967) (not b!4097876) (not b!4098109) (not bm!289636) (not b_next!115327) (not b!4098059) (not d!1216830) (not b_lambda!120421) (not b!4098123) (not b!4098126) (not b!4097968) (not b_next!115313) (not b_next!115315) (not b!4098034) (not d!1216812) (not d!1216768) (not b!4098097))
(check-sat (not b_next!115319) b_and!316271 b_and!316279 b_and!316301 (not b_next!115325) (not b_next!115327) (not b_next!115313) (not b_next!115315) b_and!316281 b_and!316299 b_and!316273 (not b_next!115317))
