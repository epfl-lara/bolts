; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59728 () Bool)

(assert start!59728)

(declare-fun b!620933 () Bool)

(declare-fun b_free!18097 () Bool)

(declare-fun b_next!18113 () Bool)

(assert (=> b!620933 (= b_free!18097 (not b_next!18113))))

(declare-fun tp!192727 () Bool)

(declare-fun b_and!61691 () Bool)

(assert (=> b!620933 (= tp!192727 b_and!61691)))

(declare-fun b_free!18099 () Bool)

(declare-fun b_next!18115 () Bool)

(assert (=> b!620933 (= b_free!18099 (not b_next!18115))))

(declare-fun tp!192719 () Bool)

(declare-fun b_and!61693 () Bool)

(assert (=> b!620933 (= tp!192719 b_and!61693)))

(declare-fun b!620937 () Bool)

(declare-fun b_free!18101 () Bool)

(declare-fun b_next!18117 () Bool)

(assert (=> b!620937 (= b_free!18101 (not b_next!18117))))

(declare-fun tp!192718 () Bool)

(declare-fun b_and!61695 () Bool)

(assert (=> b!620937 (= tp!192718 b_and!61695)))

(declare-fun b_free!18103 () Bool)

(declare-fun b_next!18119 () Bool)

(assert (=> b!620937 (= b_free!18103 (not b_next!18119))))

(declare-fun tp!192722 () Bool)

(declare-fun b_and!61697 () Bool)

(assert (=> b!620937 (= tp!192722 b_and!61697)))

(declare-fun b!620925 () Bool)

(declare-fun res!270295 () Bool)

(declare-fun e!376866 () Bool)

(assert (=> b!620925 (=> (not res!270295) (not e!376866))))

(declare-datatypes ((List!6357 0))(
  ( (Nil!6347) (Cons!6347 (h!11748 (_ BitVec 16)) (t!81748 List!6357)) )
))
(declare-datatypes ((TokenValue!1313 0))(
  ( (FloatLiteralValue!2626 (text!9636 List!6357)) (TokenValueExt!1312 (__x!4526 Int)) (Broken!6565 (value!41574 List!6357)) (Object!1322) (End!1313) (Def!1313) (Underscore!1313) (Match!1313) (Else!1313) (Error!1313) (Case!1313) (If!1313) (Extends!1313) (Abstract!1313) (Class!1313) (Val!1313) (DelimiterValue!2626 (del!1373 List!6357)) (KeywordValue!1319 (value!41575 List!6357)) (CommentValue!2626 (value!41576 List!6357)) (WhitespaceValue!2626 (value!41577 List!6357)) (IndentationValue!1313 (value!41578 List!6357)) (String!8312) (Int32!1313) (Broken!6566 (value!41579 List!6357)) (Boolean!1314) (Unit!11445) (OperatorValue!1316 (op!1373 List!6357)) (IdentifierValue!2626 (value!41580 List!6357)) (IdentifierValue!2627 (value!41581 List!6357)) (WhitespaceValue!2627 (value!41582 List!6357)) (True!2626) (False!2626) (Broken!6567 (value!41583 List!6357)) (Broken!6568 (value!41584 List!6357)) (True!2627) (RightBrace!1313) (RightBracket!1313) (Colon!1313) (Null!1313) (Comma!1313) (LeftBracket!1313) (False!2627) (LeftBrace!1313) (ImaginaryLiteralValue!1313 (text!9637 List!6357)) (StringLiteralValue!3939 (value!41585 List!6357)) (EOFValue!1313 (value!41586 List!6357)) (IdentValue!1313 (value!41587 List!6357)) (DelimiterValue!2627 (value!41588 List!6357)) (DedentValue!1313 (value!41589 List!6357)) (NewLineValue!1313 (value!41590 List!6357)) (IntegerValue!3939 (value!41591 (_ BitVec 32)) (text!9638 List!6357)) (IntegerValue!3940 (value!41592 Int) (text!9639 List!6357)) (Times!1313) (Or!1313) (Equal!1313) (Minus!1313) (Broken!6569 (value!41593 List!6357)) (And!1313) (Div!1313) (LessEqual!1313) (Mod!1313) (Concat!2936) (Not!1313) (Plus!1313) (SpaceValue!1313 (value!41594 List!6357)) (IntegerValue!3941 (value!41595 Int) (text!9640 List!6357)) (StringLiteralValue!3940 (text!9641 List!6357)) (FloatLiteralValue!2627 (text!9642 List!6357)) (BytesLiteralValue!1313 (value!41596 List!6357)) (CommentValue!2627 (value!41597 List!6357)) (StringLiteralValue!3941 (value!41598 List!6357)) (ErrorTokenValue!1313 (msg!1374 List!6357)) )
))
(declare-datatypes ((C!4172 0))(
  ( (C!4173 (val!2312 Int)) )
))
(declare-datatypes ((String!8313 0))(
  ( (String!8314 (value!41599 String)) )
))
(declare-datatypes ((List!6358 0))(
  ( (Nil!6348) (Cons!6348 (h!11749 C!4172) (t!81749 List!6358)) )
))
(declare-datatypes ((IArray!4039 0))(
  ( (IArray!4040 (innerList!2077 List!6358)) )
))
(declare-datatypes ((Conc!2019 0))(
  ( (Node!2019 (left!5033 Conc!2019) (right!5363 Conc!2019) (csize!4268 Int) (cheight!2230 Int)) (Leaf!3172 (xs!4656 IArray!4039) (csize!4269 Int)) (Empty!2019) )
))
(declare-datatypes ((BalanceConc!4046 0))(
  ( (BalanceConc!4047 (c!114187 Conc!2019)) )
))
(declare-datatypes ((Regex!1623 0))(
  ( (ElementMatch!1623 (c!114188 C!4172)) (Concat!2937 (regOne!3758 Regex!1623) (regTwo!3758 Regex!1623)) (EmptyExpr!1623) (Star!1623 (reg!1952 Regex!1623)) (EmptyLang!1623) (Union!1623 (regOne!3759 Regex!1623) (regTwo!3759 Regex!1623)) )
))
(declare-datatypes ((TokenValueInjection!2394 0))(
  ( (TokenValueInjection!2395 (toValue!2210 Int) (toChars!2069 Int)) )
))
(declare-datatypes ((Rule!2378 0))(
  ( (Rule!2379 (regex!1289 Regex!1623) (tag!1551 String!8313) (isSeparator!1289 Bool) (transformation!1289 TokenValueInjection!2394)) )
))
(declare-datatypes ((List!6359 0))(
  ( (Nil!6349) (Cons!6349 (h!11750 Rule!2378) (t!81750 List!6359)) )
))
(declare-fun rules!3735 () List!6359)

(declare-fun isEmpty!4552 (List!6359) Bool)

(assert (=> b!620925 (= res!270295 (not (isEmpty!4552 rules!3735)))))

(declare-fun e!376869 () Bool)

(declare-fun tp!192721 () Bool)

(declare-fun e!376863 () Bool)

(declare-fun b!620926 () Bool)

(declare-fun inv!8025 (String!8313) Bool)

(declare-fun inv!8028 (TokenValueInjection!2394) Bool)

(assert (=> b!620926 (= e!376863 (and tp!192721 (inv!8025 (tag!1551 (h!11750 rules!3735))) (inv!8028 (transformation!1289 (h!11750 rules!3735))) e!376869))))

(declare-fun b!620927 () Bool)

(declare-fun res!270294 () Bool)

(assert (=> b!620927 (=> (not res!270294) (not e!376866))))

(declare-datatypes ((Token!2302 0))(
  ( (Token!2303 (value!41600 TokenValue!1313) (rule!2083 Rule!2378) (size!4940 Int) (originalCharacters!1322 List!6358)) )
))
(declare-datatypes ((List!6360 0))(
  ( (Nil!6350) (Cons!6350 (h!11751 Token!2302) (t!81751 List!6360)) )
))
(declare-fun producedTokens!8 () List!6360)

(declare-fun size!4941 (List!6360) Int)

(assert (=> b!620927 (= res!270294 (> (size!4941 producedTokens!8) 0))))

(declare-fun b!620928 () Bool)

(declare-fun e!376859 () Bool)

(assert (=> b!620928 (= e!376859 (= producedTokens!8 Nil!6350))))

(declare-datatypes ((IArray!4041 0))(
  ( (IArray!4042 (innerList!2078 List!6360)) )
))
(declare-datatypes ((Conc!2020 0))(
  ( (Node!2020 (left!5034 Conc!2020) (right!5364 Conc!2020) (csize!4270 Int) (cheight!2231 Int)) (Leaf!3173 (xs!4657 IArray!4041) (csize!4271 Int)) (Empty!2020) )
))
(declare-datatypes ((BalanceConc!4048 0))(
  ( (BalanceConc!4049 (c!114189 Conc!2020)) )
))
(declare-datatypes ((tuple2!7144 0))(
  ( (tuple2!7145 (_1!3836 BalanceConc!4048) (_2!3836 BalanceConc!4046)) )
))
(declare-fun lt!265602 () tuple2!7144)

(declare-datatypes ((LexerInterface!1177 0))(
  ( (LexerInterfaceExt!1174 (__x!4527 Int)) (Lexer!1175) )
))
(declare-fun thiss!25571 () LexerInterface!1177)

(declare-fun input!3206 () List!6358)

(declare-fun lex!572 (LexerInterface!1177 List!6359 BalanceConc!4046) tuple2!7144)

(declare-fun seqFromList!1444 (List!6358) BalanceConc!4046)

(declare-datatypes ((tuple2!7146 0))(
  ( (tuple2!7147 (_1!3837 Token!2302) (_2!3837 List!6358)) )
))
(declare-datatypes ((Option!1629 0))(
  ( (None!1628) (Some!1628 (v!16557 tuple2!7146)) )
))
(declare-fun get!2420 (Option!1629) tuple2!7146)

(declare-fun maxPrefix!859 (LexerInterface!1177 List!6359 List!6358) Option!1629)

(assert (=> b!620928 (= lt!265602 (lex!572 thiss!25571 rules!3735 (seqFromList!1444 (_2!3837 (get!2420 (maxPrefix!859 thiss!25571 rules!3735 input!3206))))))))

(declare-fun b!620929 () Bool)

(declare-fun e!376872 () Bool)

(declare-fun e!376871 () Bool)

(declare-fun tp!192720 () Bool)

(assert (=> b!620929 (= e!376871 (and tp!192720 (inv!8025 (tag!1551 (rule!2083 (h!11751 producedTokens!8)))) (inv!8028 (transformation!1289 (rule!2083 (h!11751 producedTokens!8)))) e!376872))))

(declare-fun b!620930 () Bool)

(declare-fun e!376864 () Bool)

(declare-fun tp!192725 () Bool)

(declare-fun e!376861 () Bool)

(declare-fun inv!8029 (Token!2302) Bool)

(assert (=> b!620930 (= e!376861 (and (inv!8029 (h!11751 producedTokens!8)) e!376864 tp!192725))))

(declare-fun b!620931 () Bool)

(declare-fun e!376868 () Bool)

(declare-fun tp_is_empty!3605 () Bool)

(declare-fun tp!192724 () Bool)

(assert (=> b!620931 (= e!376868 (and tp_is_empty!3605 tp!192724))))

(declare-fun b!620932 () Bool)

(declare-fun tp!192717 () Bool)

(declare-fun inv!21 (TokenValue!1313) Bool)

(assert (=> b!620932 (= e!376864 (and (inv!21 (value!41600 (h!11751 producedTokens!8))) e!376871 tp!192717))))

(assert (=> b!620933 (= e!376872 (and tp!192727 tp!192719))))

(declare-fun b!620934 () Bool)

(declare-fun e!376862 () Bool)

(declare-fun tp!192723 () Bool)

(assert (=> b!620934 (= e!376862 (and tp_is_empty!3605 tp!192723))))

(declare-fun b!620935 () Bool)

(assert (=> b!620935 (= e!376866 e!376859)))

(declare-fun res!270293 () Bool)

(assert (=> b!620935 (=> (not res!270293) (not e!376859))))

(declare-fun lt!265601 () tuple2!7144)

(declare-fun list!2656 (BalanceConc!4048) List!6360)

(assert (=> b!620935 (= res!270293 (= (list!2656 (_1!3836 lt!265601)) producedTokens!8))))

(assert (=> b!620935 (= lt!265601 (lex!572 thiss!25571 rules!3735 (seqFromList!1444 input!3206)))))

(declare-fun b!620936 () Bool)

(declare-fun e!376865 () Bool)

(declare-fun tp!192726 () Bool)

(assert (=> b!620936 (= e!376865 (and e!376863 tp!192726))))

(assert (=> b!620937 (= e!376869 (and tp!192718 tp!192722))))

(declare-fun b!620938 () Bool)

(declare-fun res!270292 () Bool)

(assert (=> b!620938 (=> (not res!270292) (not e!376866))))

(declare-fun rulesInvariant!1138 (LexerInterface!1177 List!6359) Bool)

(assert (=> b!620938 (= res!270292 (rulesInvariant!1138 thiss!25571 rules!3735))))

(declare-fun b!620939 () Bool)

(declare-fun res!270291 () Bool)

(assert (=> b!620939 (=> (not res!270291) (not e!376859))))

(declare-fun suffix!1461 () List!6358)

(declare-fun list!2657 (BalanceConc!4046) List!6358)

(assert (=> b!620939 (= res!270291 (= (list!2657 (_2!3836 lt!265601)) suffix!1461))))

(declare-fun res!270290 () Bool)

(assert (=> start!59728 (=> (not res!270290) (not e!376866))))

(get-info :version)

(assert (=> start!59728 (= res!270290 ((_ is Lexer!1175) thiss!25571))))

(assert (=> start!59728 e!376866))

(assert (=> start!59728 e!376861))

(assert (=> start!59728 true))

(assert (=> start!59728 e!376862))

(assert (=> start!59728 e!376868))

(assert (=> start!59728 e!376865))

(assert (= (and start!59728 res!270290) b!620938))

(assert (= (and b!620938 res!270292) b!620925))

(assert (= (and b!620925 res!270295) b!620927))

(assert (= (and b!620927 res!270294) b!620935))

(assert (= (and b!620935 res!270293) b!620939))

(assert (= (and b!620939 res!270291) b!620928))

(assert (= b!620929 b!620933))

(assert (= b!620932 b!620929))

(assert (= b!620930 b!620932))

(assert (= (and start!59728 ((_ is Cons!6350) producedTokens!8)) b!620930))

(assert (= (and start!59728 ((_ is Cons!6348) suffix!1461)) b!620934))

(assert (= (and start!59728 ((_ is Cons!6348) input!3206)) b!620931))

(assert (= b!620926 b!620937))

(assert (= b!620936 b!620926))

(assert (= (and start!59728 ((_ is Cons!6349) rules!3735)) b!620936))

(declare-fun m!888765 () Bool)

(assert (=> b!620935 m!888765))

(declare-fun m!888767 () Bool)

(assert (=> b!620935 m!888767))

(assert (=> b!620935 m!888767))

(declare-fun m!888769 () Bool)

(assert (=> b!620935 m!888769))

(declare-fun m!888771 () Bool)

(assert (=> b!620927 m!888771))

(declare-fun m!888773 () Bool)

(assert (=> b!620925 m!888773))

(declare-fun m!888775 () Bool)

(assert (=> b!620929 m!888775))

(declare-fun m!888777 () Bool)

(assert (=> b!620929 m!888777))

(declare-fun m!888779 () Bool)

(assert (=> b!620926 m!888779))

(declare-fun m!888781 () Bool)

(assert (=> b!620926 m!888781))

(declare-fun m!888783 () Bool)

(assert (=> b!620930 m!888783))

(declare-fun m!888785 () Bool)

(assert (=> b!620932 m!888785))

(declare-fun m!888787 () Bool)

(assert (=> b!620939 m!888787))

(declare-fun m!888789 () Bool)

(assert (=> b!620928 m!888789))

(assert (=> b!620928 m!888789))

(declare-fun m!888791 () Bool)

(assert (=> b!620928 m!888791))

(declare-fun m!888793 () Bool)

(assert (=> b!620928 m!888793))

(assert (=> b!620928 m!888793))

(declare-fun m!888795 () Bool)

(assert (=> b!620928 m!888795))

(declare-fun m!888797 () Bool)

(assert (=> b!620938 m!888797))

(check-sat (not b!620932) (not b!620927) b_and!61697 (not b!620926) tp_is_empty!3605 (not b!620935) (not b!620928) (not b!620934) (not b!620925) (not b!620938) (not b!620931) (not b!620930) (not b_next!18115) b_and!61693 (not b!620936) (not b!620929) (not b_next!18119) (not b_next!18117) b_and!61691 b_and!61695 (not b_next!18113) (not b!620939))
(check-sat b_and!61697 (not b_next!18115) b_and!61693 (not b_next!18113) (not b_next!18119) (not b_next!18117) b_and!61691 b_and!61695)
(get-model)

(declare-fun d!217397 () Bool)

(declare-fun lt!265605 () Int)

(assert (=> d!217397 (>= lt!265605 0)))

(declare-fun e!376878 () Int)

(assert (=> d!217397 (= lt!265605 e!376878)))

(declare-fun c!114192 () Bool)

(assert (=> d!217397 (= c!114192 ((_ is Nil!6350) producedTokens!8))))

(assert (=> d!217397 (= (size!4941 producedTokens!8) lt!265605)))

(declare-fun b!620947 () Bool)

(assert (=> b!620947 (= e!376878 0)))

(declare-fun b!620948 () Bool)

(assert (=> b!620948 (= e!376878 (+ 1 (size!4941 (t!81751 producedTokens!8))))))

(assert (= (and d!217397 c!114192) b!620947))

(assert (= (and d!217397 (not c!114192)) b!620948))

(declare-fun m!888803 () Bool)

(assert (=> b!620948 m!888803))

(assert (=> b!620927 d!217397))

(declare-fun b!620959 () Bool)

(declare-fun e!376885 () Bool)

(declare-fun inv!17 (TokenValue!1313) Bool)

(assert (=> b!620959 (= e!376885 (inv!17 (value!41600 (h!11751 producedTokens!8))))))

(declare-fun d!217403 () Bool)

(declare-fun c!114197 () Bool)

(assert (=> d!217403 (= c!114197 ((_ is IntegerValue!3939) (value!41600 (h!11751 producedTokens!8))))))

(declare-fun e!376886 () Bool)

(assert (=> d!217403 (= (inv!21 (value!41600 (h!11751 producedTokens!8))) e!376886)))

(declare-fun b!620960 () Bool)

(declare-fun res!270301 () Bool)

(declare-fun e!376887 () Bool)

(assert (=> b!620960 (=> res!270301 e!376887)))

(assert (=> b!620960 (= res!270301 (not ((_ is IntegerValue!3941) (value!41600 (h!11751 producedTokens!8)))))))

(assert (=> b!620960 (= e!376885 e!376887)))

(declare-fun b!620961 () Bool)

(assert (=> b!620961 (= e!376886 e!376885)))

(declare-fun c!114198 () Bool)

(assert (=> b!620961 (= c!114198 ((_ is IntegerValue!3940) (value!41600 (h!11751 producedTokens!8))))))

(declare-fun b!620962 () Bool)

(declare-fun inv!16 (TokenValue!1313) Bool)

(assert (=> b!620962 (= e!376886 (inv!16 (value!41600 (h!11751 producedTokens!8))))))

(declare-fun b!620963 () Bool)

(declare-fun inv!15 (TokenValue!1313) Bool)

(assert (=> b!620963 (= e!376887 (inv!15 (value!41600 (h!11751 producedTokens!8))))))

(assert (= (and d!217403 c!114197) b!620962))

(assert (= (and d!217403 (not c!114197)) b!620961))

(assert (= (and b!620961 c!114198) b!620959))

(assert (= (and b!620961 (not c!114198)) b!620960))

(assert (= (and b!620960 (not res!270301)) b!620963))

(declare-fun m!888805 () Bool)

(assert (=> b!620959 m!888805))

(declare-fun m!888807 () Bool)

(assert (=> b!620962 m!888807))

(declare-fun m!888809 () Bool)

(assert (=> b!620963 m!888809))

(assert (=> b!620932 d!217403))

(declare-fun d!217405 () Bool)

(assert (=> d!217405 (= (inv!8025 (tag!1551 (h!11750 rules!3735))) (= (mod (str.len (value!41599 (tag!1551 (h!11750 rules!3735)))) 2) 0))))

(assert (=> b!620926 d!217405))

(declare-fun d!217407 () Bool)

(declare-fun res!270304 () Bool)

(declare-fun e!376890 () Bool)

(assert (=> d!217407 (=> (not res!270304) (not e!376890))))

(declare-fun semiInverseModEq!518 (Int Int) Bool)

(assert (=> d!217407 (= res!270304 (semiInverseModEq!518 (toChars!2069 (transformation!1289 (h!11750 rules!3735))) (toValue!2210 (transformation!1289 (h!11750 rules!3735)))))))

(assert (=> d!217407 (= (inv!8028 (transformation!1289 (h!11750 rules!3735))) e!376890)))

(declare-fun b!620966 () Bool)

(declare-fun equivClasses!501 (Int Int) Bool)

(assert (=> b!620966 (= e!376890 (equivClasses!501 (toChars!2069 (transformation!1289 (h!11750 rules!3735))) (toValue!2210 (transformation!1289 (h!11750 rules!3735)))))))

(assert (= (and d!217407 res!270304) b!620966))

(declare-fun m!888811 () Bool)

(assert (=> d!217407 m!888811))

(declare-fun m!888813 () Bool)

(assert (=> b!620966 m!888813))

(assert (=> b!620926 d!217407))

(declare-fun d!217409 () Bool)

(assert (=> d!217409 (= (isEmpty!4552 rules!3735) ((_ is Nil!6349) rules!3735))))

(assert (=> b!620925 d!217409))

(declare-fun d!217411 () Bool)

(declare-fun res!270309 () Bool)

(declare-fun e!376893 () Bool)

(assert (=> d!217411 (=> (not res!270309) (not e!376893))))

(declare-fun isEmpty!4554 (List!6358) Bool)

(assert (=> d!217411 (= res!270309 (not (isEmpty!4554 (originalCharacters!1322 (h!11751 producedTokens!8)))))))

(assert (=> d!217411 (= (inv!8029 (h!11751 producedTokens!8)) e!376893)))

(declare-fun b!620971 () Bool)

(declare-fun res!270310 () Bool)

(assert (=> b!620971 (=> (not res!270310) (not e!376893))))

(declare-fun dynLambda!3608 (Int TokenValue!1313) BalanceConc!4046)

(assert (=> b!620971 (= res!270310 (= (originalCharacters!1322 (h!11751 producedTokens!8)) (list!2657 (dynLambda!3608 (toChars!2069 (transformation!1289 (rule!2083 (h!11751 producedTokens!8)))) (value!41600 (h!11751 producedTokens!8))))))))

(declare-fun b!620972 () Bool)

(declare-fun size!4945 (List!6358) Int)

(assert (=> b!620972 (= e!376893 (= (size!4940 (h!11751 producedTokens!8)) (size!4945 (originalCharacters!1322 (h!11751 producedTokens!8)))))))

(assert (= (and d!217411 res!270309) b!620971))

(assert (= (and b!620971 res!270310) b!620972))

(declare-fun b_lambda!24569 () Bool)

(assert (=> (not b_lambda!24569) (not b!620971)))

(declare-fun t!81753 () Bool)

(declare-fun tb!53911 () Bool)

(assert (=> (and b!620933 (= (toChars!2069 (transformation!1289 (rule!2083 (h!11751 producedTokens!8)))) (toChars!2069 (transformation!1289 (rule!2083 (h!11751 producedTokens!8))))) t!81753) tb!53911))

(declare-fun b!620977 () Bool)

(declare-fun e!376896 () Bool)

(declare-fun tp!192730 () Bool)

(declare-fun inv!8030 (Conc!2019) Bool)

(assert (=> b!620977 (= e!376896 (and (inv!8030 (c!114187 (dynLambda!3608 (toChars!2069 (transformation!1289 (rule!2083 (h!11751 producedTokens!8)))) (value!41600 (h!11751 producedTokens!8))))) tp!192730))))

(declare-fun result!60850 () Bool)

(declare-fun inv!8031 (BalanceConc!4046) Bool)

(assert (=> tb!53911 (= result!60850 (and (inv!8031 (dynLambda!3608 (toChars!2069 (transformation!1289 (rule!2083 (h!11751 producedTokens!8)))) (value!41600 (h!11751 producedTokens!8)))) e!376896))))

(assert (= tb!53911 b!620977))

(declare-fun m!888815 () Bool)

(assert (=> b!620977 m!888815))

(declare-fun m!888817 () Bool)

(assert (=> tb!53911 m!888817))

(assert (=> b!620971 t!81753))

(declare-fun b_and!61699 () Bool)

(assert (= b_and!61693 (and (=> t!81753 result!60850) b_and!61699)))

(declare-fun t!81755 () Bool)

(declare-fun tb!53913 () Bool)

(assert (=> (and b!620937 (= (toChars!2069 (transformation!1289 (h!11750 rules!3735))) (toChars!2069 (transformation!1289 (rule!2083 (h!11751 producedTokens!8))))) t!81755) tb!53913))

(declare-fun result!60854 () Bool)

(assert (= result!60854 result!60850))

(assert (=> b!620971 t!81755))

(declare-fun b_and!61701 () Bool)

(assert (= b_and!61697 (and (=> t!81755 result!60854) b_and!61701)))

(declare-fun m!888819 () Bool)

(assert (=> d!217411 m!888819))

(declare-fun m!888821 () Bool)

(assert (=> b!620971 m!888821))

(assert (=> b!620971 m!888821))

(declare-fun m!888823 () Bool)

(assert (=> b!620971 m!888823))

(declare-fun m!888825 () Bool)

(assert (=> b!620972 m!888825))

(assert (=> b!620930 d!217411))

(declare-fun d!217413 () Bool)

(declare-fun list!2658 (Conc!2020) List!6360)

(assert (=> d!217413 (= (list!2656 (_1!3836 lt!265601)) (list!2658 (c!114189 (_1!3836 lt!265601))))))

(declare-fun bs!72001 () Bool)

(assert (= bs!72001 d!217413))

(declare-fun m!888827 () Bool)

(assert (=> bs!72001 m!888827))

(assert (=> b!620935 d!217413))

(declare-fun e!376913 () Bool)

(declare-fun b!621003 () Bool)

(declare-fun lt!265611 () tuple2!7144)

(declare-datatypes ((tuple2!7150 0))(
  ( (tuple2!7151 (_1!3839 List!6360) (_2!3839 List!6358)) )
))
(declare-fun lexList!311 (LexerInterface!1177 List!6359 List!6358) tuple2!7150)

(assert (=> b!621003 (= e!376913 (= (list!2657 (_2!3836 lt!265611)) (_2!3839 (lexList!311 thiss!25571 rules!3735 (list!2657 (seqFromList!1444 input!3206))))))))

(declare-fun b!621004 () Bool)

(declare-fun e!376912 () Bool)

(declare-fun e!376914 () Bool)

(assert (=> b!621004 (= e!376912 e!376914)))

(declare-fun res!270327 () Bool)

(declare-fun size!4946 (BalanceConc!4046) Int)

(assert (=> b!621004 (= res!270327 (< (size!4946 (_2!3836 lt!265611)) (size!4946 (seqFromList!1444 input!3206))))))

(assert (=> b!621004 (=> (not res!270327) (not e!376914))))

(declare-fun d!217415 () Bool)

(assert (=> d!217415 e!376913))

(declare-fun res!270328 () Bool)

(assert (=> d!217415 (=> (not res!270328) (not e!376913))))

(assert (=> d!217415 (= res!270328 e!376912)))

(declare-fun c!114204 () Bool)

(declare-fun size!4947 (BalanceConc!4048) Int)

(assert (=> d!217415 (= c!114204 (> (size!4947 (_1!3836 lt!265611)) 0))))

(declare-fun lexTailRecV2!273 (LexerInterface!1177 List!6359 BalanceConc!4046 BalanceConc!4046 BalanceConc!4046 BalanceConc!4048) tuple2!7144)

(assert (=> d!217415 (= lt!265611 (lexTailRecV2!273 thiss!25571 rules!3735 (seqFromList!1444 input!3206) (BalanceConc!4047 Empty!2019) (seqFromList!1444 input!3206) (BalanceConc!4049 Empty!2020)))))

(assert (=> d!217415 (= (lex!572 thiss!25571 rules!3735 (seqFromList!1444 input!3206)) lt!265611)))

(declare-fun b!621005 () Bool)

(declare-fun res!270326 () Bool)

(assert (=> b!621005 (=> (not res!270326) (not e!376913))))

(assert (=> b!621005 (= res!270326 (= (list!2656 (_1!3836 lt!265611)) (_1!3839 (lexList!311 thiss!25571 rules!3735 (list!2657 (seqFromList!1444 input!3206))))))))

(declare-fun b!621006 () Bool)

(declare-fun isEmpty!4556 (BalanceConc!4048) Bool)

(assert (=> b!621006 (= e!376914 (not (isEmpty!4556 (_1!3836 lt!265611))))))

(declare-fun b!621007 () Bool)

(assert (=> b!621007 (= e!376912 (= (_2!3836 lt!265611) (seqFromList!1444 input!3206)))))

(assert (= (and d!217415 c!114204) b!621004))

(assert (= (and d!217415 (not c!114204)) b!621007))

(assert (= (and b!621004 res!270327) b!621006))

(assert (= (and d!217415 res!270328) b!621005))

(assert (= (and b!621005 res!270326) b!621003))

(declare-fun m!888849 () Bool)

(assert (=> d!217415 m!888849))

(assert (=> d!217415 m!888767))

(assert (=> d!217415 m!888767))

(declare-fun m!888851 () Bool)

(assert (=> d!217415 m!888851))

(declare-fun m!888853 () Bool)

(assert (=> b!621004 m!888853))

(assert (=> b!621004 m!888767))

(declare-fun m!888855 () Bool)

(assert (=> b!621004 m!888855))

(declare-fun m!888857 () Bool)

(assert (=> b!621005 m!888857))

(assert (=> b!621005 m!888767))

(declare-fun m!888859 () Bool)

(assert (=> b!621005 m!888859))

(assert (=> b!621005 m!888859))

(declare-fun m!888861 () Bool)

(assert (=> b!621005 m!888861))

(declare-fun m!888863 () Bool)

(assert (=> b!621003 m!888863))

(assert (=> b!621003 m!888767))

(assert (=> b!621003 m!888859))

(assert (=> b!621003 m!888859))

(assert (=> b!621003 m!888861))

(declare-fun m!888865 () Bool)

(assert (=> b!621006 m!888865))

(assert (=> b!620935 d!217415))

(declare-fun d!217423 () Bool)

(declare-fun fromListB!628 (List!6358) BalanceConc!4046)

(assert (=> d!217423 (= (seqFromList!1444 input!3206) (fromListB!628 input!3206))))

(declare-fun bs!72003 () Bool)

(assert (= bs!72003 d!217423))

(declare-fun m!888867 () Bool)

(assert (=> bs!72003 m!888867))

(assert (=> b!620935 d!217423))

(declare-fun d!217425 () Bool)

(assert (=> d!217425 (= (inv!8025 (tag!1551 (rule!2083 (h!11751 producedTokens!8)))) (= (mod (str.len (value!41599 (tag!1551 (rule!2083 (h!11751 producedTokens!8))))) 2) 0))))

(assert (=> b!620929 d!217425))

(declare-fun d!217427 () Bool)

(declare-fun res!270329 () Bool)

(declare-fun e!376915 () Bool)

(assert (=> d!217427 (=> (not res!270329) (not e!376915))))

(assert (=> d!217427 (= res!270329 (semiInverseModEq!518 (toChars!2069 (transformation!1289 (rule!2083 (h!11751 producedTokens!8)))) (toValue!2210 (transformation!1289 (rule!2083 (h!11751 producedTokens!8))))))))

(assert (=> d!217427 (= (inv!8028 (transformation!1289 (rule!2083 (h!11751 producedTokens!8)))) e!376915)))

(declare-fun b!621008 () Bool)

(assert (=> b!621008 (= e!376915 (equivClasses!501 (toChars!2069 (transformation!1289 (rule!2083 (h!11751 producedTokens!8)))) (toValue!2210 (transformation!1289 (rule!2083 (h!11751 producedTokens!8))))))))

(assert (= (and d!217427 res!270329) b!621008))

(declare-fun m!888869 () Bool)

(assert (=> d!217427 m!888869))

(declare-fun m!888871 () Bool)

(assert (=> b!621008 m!888871))

(assert (=> b!620929 d!217427))

(declare-fun d!217429 () Bool)

(declare-fun list!2659 (Conc!2019) List!6358)

(assert (=> d!217429 (= (list!2657 (_2!3836 lt!265601)) (list!2659 (c!114187 (_2!3836 lt!265601))))))

(declare-fun bs!72004 () Bool)

(assert (= bs!72004 d!217429))

(declare-fun m!888873 () Bool)

(assert (=> bs!72004 m!888873))

(assert (=> b!620939 d!217429))

(declare-fun e!376917 () Bool)

(declare-fun b!621009 () Bool)

(declare-fun lt!265612 () tuple2!7144)

(assert (=> b!621009 (= e!376917 (= (list!2657 (_2!3836 lt!265612)) (_2!3839 (lexList!311 thiss!25571 rules!3735 (list!2657 (seqFromList!1444 (_2!3837 (get!2420 (maxPrefix!859 thiss!25571 rules!3735 input!3206)))))))))))

(declare-fun b!621010 () Bool)

(declare-fun e!376916 () Bool)

(declare-fun e!376918 () Bool)

(assert (=> b!621010 (= e!376916 e!376918)))

(declare-fun res!270331 () Bool)

(assert (=> b!621010 (= res!270331 (< (size!4946 (_2!3836 lt!265612)) (size!4946 (seqFromList!1444 (_2!3837 (get!2420 (maxPrefix!859 thiss!25571 rules!3735 input!3206)))))))))

(assert (=> b!621010 (=> (not res!270331) (not e!376918))))

(declare-fun d!217431 () Bool)

(assert (=> d!217431 e!376917))

(declare-fun res!270332 () Bool)

(assert (=> d!217431 (=> (not res!270332) (not e!376917))))

(assert (=> d!217431 (= res!270332 e!376916)))

(declare-fun c!114205 () Bool)

(assert (=> d!217431 (= c!114205 (> (size!4947 (_1!3836 lt!265612)) 0))))

(assert (=> d!217431 (= lt!265612 (lexTailRecV2!273 thiss!25571 rules!3735 (seqFromList!1444 (_2!3837 (get!2420 (maxPrefix!859 thiss!25571 rules!3735 input!3206)))) (BalanceConc!4047 Empty!2019) (seqFromList!1444 (_2!3837 (get!2420 (maxPrefix!859 thiss!25571 rules!3735 input!3206)))) (BalanceConc!4049 Empty!2020)))))

(assert (=> d!217431 (= (lex!572 thiss!25571 rules!3735 (seqFromList!1444 (_2!3837 (get!2420 (maxPrefix!859 thiss!25571 rules!3735 input!3206))))) lt!265612)))

(declare-fun b!621011 () Bool)

(declare-fun res!270330 () Bool)

(assert (=> b!621011 (=> (not res!270330) (not e!376917))))

(assert (=> b!621011 (= res!270330 (= (list!2656 (_1!3836 lt!265612)) (_1!3839 (lexList!311 thiss!25571 rules!3735 (list!2657 (seqFromList!1444 (_2!3837 (get!2420 (maxPrefix!859 thiss!25571 rules!3735 input!3206)))))))))))

(declare-fun b!621012 () Bool)

(assert (=> b!621012 (= e!376918 (not (isEmpty!4556 (_1!3836 lt!265612))))))

(declare-fun b!621013 () Bool)

(assert (=> b!621013 (= e!376916 (= (_2!3836 lt!265612) (seqFromList!1444 (_2!3837 (get!2420 (maxPrefix!859 thiss!25571 rules!3735 input!3206))))))))

(assert (= (and d!217431 c!114205) b!621010))

(assert (= (and d!217431 (not c!114205)) b!621013))

(assert (= (and b!621010 res!270331) b!621012))

(assert (= (and d!217431 res!270332) b!621011))

(assert (= (and b!621011 res!270330) b!621009))

(declare-fun m!888875 () Bool)

(assert (=> d!217431 m!888875))

(assert (=> d!217431 m!888793))

(assert (=> d!217431 m!888793))

(declare-fun m!888877 () Bool)

(assert (=> d!217431 m!888877))

(declare-fun m!888879 () Bool)

(assert (=> b!621010 m!888879))

(assert (=> b!621010 m!888793))

(declare-fun m!888881 () Bool)

(assert (=> b!621010 m!888881))

(declare-fun m!888883 () Bool)

(assert (=> b!621011 m!888883))

(assert (=> b!621011 m!888793))

(declare-fun m!888885 () Bool)

(assert (=> b!621011 m!888885))

(assert (=> b!621011 m!888885))

(declare-fun m!888887 () Bool)

(assert (=> b!621011 m!888887))

(declare-fun m!888889 () Bool)

(assert (=> b!621009 m!888889))

(assert (=> b!621009 m!888793))

(assert (=> b!621009 m!888885))

(assert (=> b!621009 m!888885))

(assert (=> b!621009 m!888887))

(declare-fun m!888891 () Bool)

(assert (=> b!621012 m!888891))

(assert (=> b!620928 d!217431))

(declare-fun d!217433 () Bool)

(assert (=> d!217433 (= (seqFromList!1444 (_2!3837 (get!2420 (maxPrefix!859 thiss!25571 rules!3735 input!3206)))) (fromListB!628 (_2!3837 (get!2420 (maxPrefix!859 thiss!25571 rules!3735 input!3206)))))))

(declare-fun bs!72005 () Bool)

(assert (= bs!72005 d!217433))

(declare-fun m!888893 () Bool)

(assert (=> bs!72005 m!888893))

(assert (=> b!620928 d!217433))

(declare-fun d!217435 () Bool)

(assert (=> d!217435 (= (get!2420 (maxPrefix!859 thiss!25571 rules!3735 input!3206)) (v!16557 (maxPrefix!859 thiss!25571 rules!3735 input!3206)))))

(assert (=> b!620928 d!217435))

(declare-fun b!621089 () Bool)

(declare-fun e!376954 () Option!1629)

(declare-fun lt!265639 () Option!1629)

(declare-fun lt!265642 () Option!1629)

(assert (=> b!621089 (= e!376954 (ite (and ((_ is None!1628) lt!265639) ((_ is None!1628) lt!265642)) None!1628 (ite ((_ is None!1628) lt!265642) lt!265639 (ite ((_ is None!1628) lt!265639) lt!265642 (ite (>= (size!4940 (_1!3837 (v!16557 lt!265639))) (size!4940 (_1!3837 (v!16557 lt!265642)))) lt!265639 lt!265642)))))))

(declare-fun call!41119 () Option!1629)

(assert (=> b!621089 (= lt!265639 call!41119)))

(assert (=> b!621089 (= lt!265642 (maxPrefix!859 thiss!25571 (t!81750 rules!3735) input!3206))))

(declare-fun b!621090 () Bool)

(declare-fun e!376953 () Bool)

(declare-fun lt!265641 () Option!1629)

(declare-fun contains!1498 (List!6359 Rule!2378) Bool)

(assert (=> b!621090 (= e!376953 (contains!1498 rules!3735 (rule!2083 (_1!3837 (get!2420 lt!265641)))))))

(declare-fun b!621091 () Bool)

(assert (=> b!621091 (= e!376954 call!41119)))

(declare-fun b!621092 () Bool)

(declare-fun e!376955 () Bool)

(assert (=> b!621092 (= e!376955 e!376953)))

(declare-fun res!270387 () Bool)

(assert (=> b!621092 (=> (not res!270387) (not e!376953))))

(declare-fun isDefined!1420 (Option!1629) Bool)

(assert (=> b!621092 (= res!270387 (isDefined!1420 lt!265641))))

(declare-fun b!621093 () Bool)

(declare-fun res!270386 () Bool)

(assert (=> b!621093 (=> (not res!270386) (not e!376953))))

(declare-fun apply!1509 (TokenValueInjection!2394 BalanceConc!4046) TokenValue!1313)

(assert (=> b!621093 (= res!270386 (= (value!41600 (_1!3837 (get!2420 lt!265641))) (apply!1509 (transformation!1289 (rule!2083 (_1!3837 (get!2420 lt!265641)))) (seqFromList!1444 (originalCharacters!1322 (_1!3837 (get!2420 lt!265641)))))))))

(declare-fun b!621094 () Bool)

(declare-fun res!270383 () Bool)

(assert (=> b!621094 (=> (not res!270383) (not e!376953))))

(declare-fun matchR!695 (Regex!1623 List!6358) Bool)

(declare-fun charsOf!888 (Token!2302) BalanceConc!4046)

(assert (=> b!621094 (= res!270383 (matchR!695 (regex!1289 (rule!2083 (_1!3837 (get!2420 lt!265641)))) (list!2657 (charsOf!888 (_1!3837 (get!2420 lt!265641))))))))

(declare-fun b!621096 () Bool)

(declare-fun res!270384 () Bool)

(assert (=> b!621096 (=> (not res!270384) (not e!376953))))

(assert (=> b!621096 (= res!270384 (= (list!2657 (charsOf!888 (_1!3837 (get!2420 lt!265641)))) (originalCharacters!1322 (_1!3837 (get!2420 lt!265641)))))))

(declare-fun b!621097 () Bool)

(declare-fun res!270381 () Bool)

(assert (=> b!621097 (=> (not res!270381) (not e!376953))))

(assert (=> b!621097 (= res!270381 (< (size!4945 (_2!3837 (get!2420 lt!265641))) (size!4945 input!3206)))))

(declare-fun bm!41114 () Bool)

(declare-fun maxPrefixOneRule!507 (LexerInterface!1177 Rule!2378 List!6358) Option!1629)

(assert (=> bm!41114 (= call!41119 (maxPrefixOneRule!507 thiss!25571 (h!11750 rules!3735) input!3206))))

(declare-fun b!621095 () Bool)

(declare-fun res!270385 () Bool)

(assert (=> b!621095 (=> (not res!270385) (not e!376953))))

(declare-fun ++!1755 (List!6358 List!6358) List!6358)

(assert (=> b!621095 (= res!270385 (= (++!1755 (list!2657 (charsOf!888 (_1!3837 (get!2420 lt!265641)))) (_2!3837 (get!2420 lt!265641))) input!3206))))

(declare-fun d!217437 () Bool)

(assert (=> d!217437 e!376955))

(declare-fun res!270382 () Bool)

(assert (=> d!217437 (=> res!270382 e!376955)))

(declare-fun isEmpty!4558 (Option!1629) Bool)

(assert (=> d!217437 (= res!270382 (isEmpty!4558 lt!265641))))

(assert (=> d!217437 (= lt!265641 e!376954)))

(declare-fun c!114217 () Bool)

(assert (=> d!217437 (= c!114217 (and ((_ is Cons!6349) rules!3735) ((_ is Nil!6349) (t!81750 rules!3735))))))

(declare-datatypes ((Unit!11448 0))(
  ( (Unit!11449) )
))
(declare-fun lt!265638 () Unit!11448)

(declare-fun lt!265640 () Unit!11448)

(assert (=> d!217437 (= lt!265638 lt!265640)))

(declare-fun isPrefix!907 (List!6358 List!6358) Bool)

(assert (=> d!217437 (isPrefix!907 input!3206 input!3206)))

(declare-fun lemmaIsPrefixRefl!620 (List!6358 List!6358) Unit!11448)

(assert (=> d!217437 (= lt!265640 (lemmaIsPrefixRefl!620 input!3206 input!3206))))

(declare-fun rulesValidInductive!496 (LexerInterface!1177 List!6359) Bool)

(assert (=> d!217437 (rulesValidInductive!496 thiss!25571 rules!3735)))

(assert (=> d!217437 (= (maxPrefix!859 thiss!25571 rules!3735 input!3206) lt!265641)))

(assert (= (and d!217437 c!114217) b!621091))

(assert (= (and d!217437 (not c!114217)) b!621089))

(assert (= (or b!621091 b!621089) bm!41114))

(assert (= (and d!217437 (not res!270382)) b!621092))

(assert (= (and b!621092 res!270387) b!621096))

(assert (= (and b!621096 res!270384) b!621097))

(assert (= (and b!621097 res!270381) b!621095))

(assert (= (and b!621095 res!270385) b!621093))

(assert (= (and b!621093 res!270386) b!621094))

(assert (= (and b!621094 res!270383) b!621090))

(declare-fun m!888957 () Bool)

(assert (=> b!621089 m!888957))

(declare-fun m!888959 () Bool)

(assert (=> b!621090 m!888959))

(declare-fun m!888961 () Bool)

(assert (=> b!621090 m!888961))

(assert (=> b!621096 m!888959))

(declare-fun m!888963 () Bool)

(assert (=> b!621096 m!888963))

(assert (=> b!621096 m!888963))

(declare-fun m!888965 () Bool)

(assert (=> b!621096 m!888965))

(declare-fun m!888967 () Bool)

(assert (=> b!621092 m!888967))

(assert (=> b!621095 m!888959))

(assert (=> b!621095 m!888963))

(assert (=> b!621095 m!888963))

(assert (=> b!621095 m!888965))

(assert (=> b!621095 m!888965))

(declare-fun m!888969 () Bool)

(assert (=> b!621095 m!888969))

(assert (=> b!621094 m!888959))

(assert (=> b!621094 m!888963))

(assert (=> b!621094 m!888963))

(assert (=> b!621094 m!888965))

(assert (=> b!621094 m!888965))

(declare-fun m!888973 () Bool)

(assert (=> b!621094 m!888973))

(declare-fun m!888975 () Bool)

(assert (=> d!217437 m!888975))

(declare-fun m!888977 () Bool)

(assert (=> d!217437 m!888977))

(declare-fun m!888979 () Bool)

(assert (=> d!217437 m!888979))

(declare-fun m!888981 () Bool)

(assert (=> d!217437 m!888981))

(assert (=> b!621097 m!888959))

(declare-fun m!888983 () Bool)

(assert (=> b!621097 m!888983))

(declare-fun m!888985 () Bool)

(assert (=> b!621097 m!888985))

(assert (=> b!621093 m!888959))

(declare-fun m!888987 () Bool)

(assert (=> b!621093 m!888987))

(assert (=> b!621093 m!888987))

(declare-fun m!888989 () Bool)

(assert (=> b!621093 m!888989))

(declare-fun m!888991 () Bool)

(assert (=> bm!41114 m!888991))

(assert (=> b!620928 d!217437))

(declare-fun d!217457 () Bool)

(declare-fun res!270393 () Bool)

(declare-fun e!376968 () Bool)

(assert (=> d!217457 (=> (not res!270393) (not e!376968))))

(declare-fun rulesValid!481 (LexerInterface!1177 List!6359) Bool)

(assert (=> d!217457 (= res!270393 (rulesValid!481 thiss!25571 rules!3735))))

(assert (=> d!217457 (= (rulesInvariant!1138 thiss!25571 rules!3735) e!376968)))

(declare-fun b!621118 () Bool)

(declare-datatypes ((List!6362 0))(
  ( (Nil!6352) (Cons!6352 (h!11753 String!8313) (t!81769 List!6362)) )
))
(declare-fun noDuplicateTag!481 (LexerInterface!1177 List!6359 List!6362) Bool)

(assert (=> b!621118 (= e!376968 (noDuplicateTag!481 thiss!25571 rules!3735 Nil!6352))))

(assert (= (and d!217457 res!270393) b!621118))

(declare-fun m!889015 () Bool)

(assert (=> d!217457 m!889015))

(declare-fun m!889017 () Bool)

(assert (=> b!621118 m!889017))

(assert (=> b!620938 d!217457))

(declare-fun b!621132 () Bool)

(declare-fun e!376973 () Bool)

(declare-fun tp!192750 () Bool)

(assert (=> b!621132 (= e!376973 (and tp_is_empty!3605 tp!192750))))

(assert (=> b!620932 (= tp!192717 e!376973)))

(assert (= (and b!620932 ((_ is Cons!6348) (originalCharacters!1322 (h!11751 producedTokens!8)))) b!621132))

(declare-fun b!621154 () Bool)

(declare-fun e!376979 () Bool)

(declare-fun tp!192766 () Bool)

(declare-fun tp!192768 () Bool)

(assert (=> b!621154 (= e!376979 (and tp!192766 tp!192768))))

(declare-fun b!621155 () Bool)

(declare-fun tp!192767 () Bool)

(assert (=> b!621155 (= e!376979 tp!192767)))

(declare-fun b!621153 () Bool)

(assert (=> b!621153 (= e!376979 tp_is_empty!3605)))

(assert (=> b!620926 (= tp!192721 e!376979)))

(declare-fun b!621156 () Bool)

(declare-fun tp!192770 () Bool)

(declare-fun tp!192769 () Bool)

(assert (=> b!621156 (= e!376979 (and tp!192770 tp!192769))))

(assert (= (and b!620926 ((_ is ElementMatch!1623) (regex!1289 (h!11750 rules!3735)))) b!621153))

(assert (= (and b!620926 ((_ is Concat!2937) (regex!1289 (h!11750 rules!3735)))) b!621154))

(assert (= (and b!620926 ((_ is Star!1623) (regex!1289 (h!11750 rules!3735)))) b!621155))

(assert (= (and b!620926 ((_ is Union!1623) (regex!1289 (h!11750 rules!3735)))) b!621156))

(declare-fun b!621157 () Bool)

(declare-fun e!376984 () Bool)

(declare-fun tp!192771 () Bool)

(assert (=> b!621157 (= e!376984 (and tp_is_empty!3605 tp!192771))))

(assert (=> b!620931 (= tp!192724 e!376984)))

(assert (= (and b!620931 ((_ is Cons!6348) (t!81749 input!3206))) b!621157))

(declare-fun b!621172 () Bool)

(declare-fun b_free!18105 () Bool)

(declare-fun b_next!18121 () Bool)

(assert (=> b!621172 (= b_free!18105 (not b_next!18121))))

(declare-fun tp!192791 () Bool)

(declare-fun b_and!61707 () Bool)

(assert (=> b!621172 (= tp!192791 b_and!61707)))

(declare-fun b_free!18109 () Bool)

(declare-fun b_next!18123 () Bool)

(assert (=> b!621172 (= b_free!18109 (not b_next!18123))))

(declare-fun t!81761 () Bool)

(declare-fun tb!53919 () Bool)

(assert (=> (and b!621172 (= (toChars!2069 (transformation!1289 (h!11750 (t!81750 rules!3735)))) (toChars!2069 (transformation!1289 (rule!2083 (h!11751 producedTokens!8))))) t!81761) tb!53919))

(declare-fun result!60874 () Bool)

(assert (= result!60874 result!60850))

(assert (=> b!620971 t!81761))

(declare-fun tp!192792 () Bool)

(declare-fun b_and!61709 () Bool)

(assert (=> b!621172 (= tp!192792 (and (=> t!81761 result!60874) b_and!61709))))

(declare-fun e!376999 () Bool)

(assert (=> b!621172 (= e!376999 (and tp!192791 tp!192792))))

(declare-fun e!377001 () Bool)

(declare-fun b!621171 () Bool)

(declare-fun tp!192793 () Bool)

(assert (=> b!621171 (= e!377001 (and tp!192793 (inv!8025 (tag!1551 (h!11750 (t!81750 rules!3735)))) (inv!8028 (transformation!1289 (h!11750 (t!81750 rules!3735)))) e!376999))))

(declare-fun b!621170 () Bool)

(declare-fun e!377000 () Bool)

(declare-fun tp!192790 () Bool)

(assert (=> b!621170 (= e!377000 (and e!377001 tp!192790))))

(assert (=> b!620936 (= tp!192726 e!377000)))

(assert (= b!621171 b!621172))

(assert (= b!621170 b!621171))

(assert (= (and b!620936 ((_ is Cons!6349) (t!81750 rules!3735))) b!621170))

(declare-fun m!889019 () Bool)

(assert (=> b!621171 m!889019))

(declare-fun m!889021 () Bool)

(assert (=> b!621171 m!889021))

(declare-fun b!621206 () Bool)

(declare-fun b_free!18117 () Bool)

(declare-fun b_next!18133 () Bool)

(assert (=> b!621206 (= b_free!18117 (not b_next!18133))))

(declare-fun tp!192828 () Bool)

(declare-fun b_and!61719 () Bool)

(assert (=> b!621206 (= tp!192828 b_and!61719)))

(declare-fun b_free!18119 () Bool)

(declare-fun b_next!18135 () Bool)

(assert (=> b!621206 (= b_free!18119 (not b_next!18135))))

(declare-fun t!81767 () Bool)

(declare-fun tb!53925 () Bool)

(assert (=> (and b!621206 (= (toChars!2069 (transformation!1289 (rule!2083 (h!11751 (t!81751 producedTokens!8))))) (toChars!2069 (transformation!1289 (rule!2083 (h!11751 producedTokens!8))))) t!81767) tb!53925))

(declare-fun result!60884 () Bool)

(assert (= result!60884 result!60850))

(assert (=> b!620971 t!81767))

(declare-fun tp!192827 () Bool)

(declare-fun b_and!61721 () Bool)

(assert (=> b!621206 (= tp!192827 (and (=> t!81767 result!60884) b_and!61721))))

(declare-fun e!377040 () Bool)

(assert (=> b!621206 (= e!377040 (and tp!192828 tp!192827))))

(declare-fun tp!192830 () Bool)

(declare-fun b!621203 () Bool)

(declare-fun e!377037 () Bool)

(declare-fun e!377039 () Bool)

(assert (=> b!621203 (= e!377037 (and (inv!8029 (h!11751 (t!81751 producedTokens!8))) e!377039 tp!192830))))

(assert (=> b!620930 (= tp!192725 e!377037)))

(declare-fun tp!192829 () Bool)

(declare-fun b!621205 () Bool)

(declare-fun e!377038 () Bool)

(assert (=> b!621205 (= e!377038 (and tp!192829 (inv!8025 (tag!1551 (rule!2083 (h!11751 (t!81751 producedTokens!8))))) (inv!8028 (transformation!1289 (rule!2083 (h!11751 (t!81751 producedTokens!8))))) e!377040))))

(declare-fun tp!192831 () Bool)

(declare-fun b!621204 () Bool)

(assert (=> b!621204 (= e!377039 (and (inv!21 (value!41600 (h!11751 (t!81751 producedTokens!8)))) e!377038 tp!192831))))

(assert (= b!621205 b!621206))

(assert (= b!621204 b!621205))

(assert (= b!621203 b!621204))

(assert (= (and b!620930 ((_ is Cons!6350) (t!81751 producedTokens!8))) b!621203))

(declare-fun m!889035 () Bool)

(assert (=> b!621203 m!889035))

(declare-fun m!889037 () Bool)

(assert (=> b!621205 m!889037))

(declare-fun m!889039 () Bool)

(assert (=> b!621205 m!889039))

(declare-fun m!889041 () Bool)

(assert (=> b!621204 m!889041))

(declare-fun b!621208 () Bool)

(declare-fun e!377041 () Bool)

(declare-fun tp!192832 () Bool)

(declare-fun tp!192834 () Bool)

(assert (=> b!621208 (= e!377041 (and tp!192832 tp!192834))))

(declare-fun b!621209 () Bool)

(declare-fun tp!192833 () Bool)

(assert (=> b!621209 (= e!377041 tp!192833)))

(declare-fun b!621207 () Bool)

(assert (=> b!621207 (= e!377041 tp_is_empty!3605)))

(assert (=> b!620929 (= tp!192720 e!377041)))

(declare-fun b!621210 () Bool)

(declare-fun tp!192836 () Bool)

(declare-fun tp!192835 () Bool)

(assert (=> b!621210 (= e!377041 (and tp!192836 tp!192835))))

(assert (= (and b!620929 ((_ is ElementMatch!1623) (regex!1289 (rule!2083 (h!11751 producedTokens!8))))) b!621207))

(assert (= (and b!620929 ((_ is Concat!2937) (regex!1289 (rule!2083 (h!11751 producedTokens!8))))) b!621208))

(assert (= (and b!620929 ((_ is Star!1623) (regex!1289 (rule!2083 (h!11751 producedTokens!8))))) b!621209))

(assert (= (and b!620929 ((_ is Union!1623) (regex!1289 (rule!2083 (h!11751 producedTokens!8))))) b!621210))

(declare-fun b!621211 () Bool)

(declare-fun e!377042 () Bool)

(declare-fun tp!192837 () Bool)

(assert (=> b!621211 (= e!377042 (and tp_is_empty!3605 tp!192837))))

(assert (=> b!620934 (= tp!192723 e!377042)))

(assert (= (and b!620934 ((_ is Cons!6348) (t!81749 suffix!1461))) b!621211))

(declare-fun b_lambda!24575 () Bool)

(assert (= b_lambda!24569 (or (and b!620933 b_free!18099) (and b!620937 b_free!18103 (= (toChars!2069 (transformation!1289 (h!11750 rules!3735))) (toChars!2069 (transformation!1289 (rule!2083 (h!11751 producedTokens!8)))))) (and b!621172 b_free!18109 (= (toChars!2069 (transformation!1289 (h!11750 (t!81750 rules!3735)))) (toChars!2069 (transformation!1289 (rule!2083 (h!11751 producedTokens!8)))))) (and b!621206 b_free!18119 (= (toChars!2069 (transformation!1289 (rule!2083 (h!11751 (t!81751 producedTokens!8))))) (toChars!2069 (transformation!1289 (rule!2083 (h!11751 producedTokens!8)))))) b_lambda!24575)))

(check-sat (not b!621154) (not b!620959) (not d!217411) (not d!217429) (not b!621004) (not b!620972) (not b_next!18113) (not b!621095) (not b!621003) (not b!620962) (not b_next!18135) (not b!621118) (not b!621170) (not b!620977) (not d!217423) (not b!621009) (not bm!41114) (not b!621204) (not b_lambda!24575) tp_is_empty!3605 (not b!621012) (not b!621155) (not b!621171) (not b!620963) (not b!621010) (not b_next!18121) (not d!217427) (not b!620966) (not d!217433) (not b!621205) (not b!621090) (not d!217457) (not b!621011) b_and!61707 (not b_next!18123) (not d!217431) (not b!621208) b_and!61701 (not b!621211) (not b!621209) (not b!621005) b_and!61719 b_and!61709 (not b!620948) (not b!621093) (not b!621092) (not b!621210) (not b!621089) (not b_next!18119) (not b_next!18117) (not b!621094) (not b!621203) (not b!621157) (not d!217437) (not b!621008) (not b!620971) b_and!61691 b_and!61695 b_and!61721 (not b_next!18115) (not b!621006) (not b!621156) (not b!621097) b_and!61699 (not d!217413) (not d!217415) (not tb!53911) (not b_next!18133) (not d!217407) (not b!621096) (not b!621132))
(check-sat (not b_next!18135) (not b_next!18121) b_and!61701 b_and!61699 (not b_next!18113) (not b_next!18133) b_and!61707 (not b_next!18123) b_and!61719 b_and!61709 (not b_next!18119) (not b_next!18117) b_and!61691 b_and!61695 b_and!61721 (not b_next!18115))
