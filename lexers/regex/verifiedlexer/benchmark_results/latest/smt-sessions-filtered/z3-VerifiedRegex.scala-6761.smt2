; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352972 () Bool)

(assert start!352972)

(declare-fun b!3760018 () Bool)

(declare-fun b_free!100641 () Bool)

(declare-fun b_next!101345 () Bool)

(assert (=> b!3760018 (= b_free!100641 (not b_next!101345))))

(declare-fun tp!1148821 () Bool)

(declare-fun b_and!279251 () Bool)

(assert (=> b!3760018 (= tp!1148821 b_and!279251)))

(declare-fun b_free!100643 () Bool)

(declare-fun b_next!101347 () Bool)

(assert (=> b!3760018 (= b_free!100643 (not b_next!101347))))

(declare-fun tp!1148819 () Bool)

(declare-fun b_and!279253 () Bool)

(assert (=> b!3760018 (= tp!1148819 b_and!279253)))

(declare-fun b!3760012 () Bool)

(declare-fun b_free!100645 () Bool)

(declare-fun b_next!101349 () Bool)

(assert (=> b!3760012 (= b_free!100645 (not b_next!101349))))

(declare-fun tp!1148820 () Bool)

(declare-fun b_and!279255 () Bool)

(assert (=> b!3760012 (= tp!1148820 b_and!279255)))

(declare-fun b_free!100647 () Bool)

(declare-fun b_next!101351 () Bool)

(assert (=> b!3760012 (= b_free!100647 (not b_next!101351))))

(declare-fun tp!1148826 () Bool)

(declare-fun b_and!279257 () Bool)

(assert (=> b!3760012 (= tp!1148826 b_and!279257)))

(declare-fun e!2325381 () Bool)

(assert (=> b!3760012 (= e!2325381 (and tp!1148820 tp!1148826))))

(declare-fun b!3760013 () Bool)

(declare-fun e!2325374 () Bool)

(declare-fun tp_is_empty!19085 () Bool)

(declare-fun tp!1148825 () Bool)

(assert (=> b!3760013 (= e!2325374 (and tp_is_empty!19085 tp!1148825))))

(declare-fun tp!1148828 () Bool)

(declare-fun b!3760014 () Bool)

(declare-datatypes ((List!40203 0))(
  ( (Nil!40079) (Cons!40079 (h!45499 (_ BitVec 16)) (t!303756 List!40203)) )
))
(declare-datatypes ((TokenValue!6370 0))(
  ( (FloatLiteralValue!12740 (text!45035 List!40203)) (TokenValueExt!6369 (__x!24957 Int)) (Broken!31850 (value!195553 List!40203)) (Object!6493) (End!6370) (Def!6370) (Underscore!6370) (Match!6370) (Else!6370) (Error!6370) (Case!6370) (If!6370) (Extends!6370) (Abstract!6370) (Class!6370) (Val!6370) (DelimiterValue!12740 (del!6430 List!40203)) (KeywordValue!6376 (value!195554 List!40203)) (CommentValue!12740 (value!195555 List!40203)) (WhitespaceValue!12740 (value!195556 List!40203)) (IndentationValue!6370 (value!195557 List!40203)) (String!45507) (Int32!6370) (Broken!31851 (value!195558 List!40203)) (Boolean!6371) (Unit!57803) (OperatorValue!6373 (op!6430 List!40203)) (IdentifierValue!12740 (value!195559 List!40203)) (IdentifierValue!12741 (value!195560 List!40203)) (WhitespaceValue!12741 (value!195561 List!40203)) (True!12740) (False!12740) (Broken!31852 (value!195562 List!40203)) (Broken!31853 (value!195563 List!40203)) (True!12741) (RightBrace!6370) (RightBracket!6370) (Colon!6370) (Null!6370) (Comma!6370) (LeftBracket!6370) (False!12741) (LeftBrace!6370) (ImaginaryLiteralValue!6370 (text!45036 List!40203)) (StringLiteralValue!19110 (value!195564 List!40203)) (EOFValue!6370 (value!195565 List!40203)) (IdentValue!6370 (value!195566 List!40203)) (DelimiterValue!12741 (value!195567 List!40203)) (DedentValue!6370 (value!195568 List!40203)) (NewLineValue!6370 (value!195569 List!40203)) (IntegerValue!19110 (value!195570 (_ BitVec 32)) (text!45037 List!40203)) (IntegerValue!19111 (value!195571 Int) (text!45038 List!40203)) (Times!6370) (Or!6370) (Equal!6370) (Minus!6370) (Broken!31854 (value!195572 List!40203)) (And!6370) (Div!6370) (LessEqual!6370) (Mod!6370) (Concat!17415) (Not!6370) (Plus!6370) (SpaceValue!6370 (value!195573 List!40203)) (IntegerValue!19112 (value!195574 Int) (text!45039 List!40203)) (StringLiteralValue!19111 (text!45040 List!40203)) (FloatLiteralValue!12741 (text!45041 List!40203)) (BytesLiteralValue!6370 (value!195575 List!40203)) (CommentValue!12741 (value!195576 List!40203)) (StringLiteralValue!19112 (value!195577 List!40203)) (ErrorTokenValue!6370 (msg!6431 List!40203)) )
))
(declare-datatypes ((C!22276 0))(
  ( (C!22277 (val!13202 Int)) )
))
(declare-datatypes ((List!40204 0))(
  ( (Nil!40080) (Cons!40080 (h!45500 C!22276) (t!303757 List!40204)) )
))
(declare-datatypes ((IArray!24551 0))(
  ( (IArray!24552 (innerList!12333 List!40204)) )
))
(declare-datatypes ((Conc!12273 0))(
  ( (Node!12273 (left!31034 Conc!12273) (right!31364 Conc!12273) (csize!24776 Int) (cheight!12484 Int)) (Leaf!19035 (xs!15479 IArray!24551) (csize!24777 Int)) (Empty!12273) )
))
(declare-datatypes ((BalanceConc!24140 0))(
  ( (BalanceConc!24141 (c!651074 Conc!12273)) )
))
(declare-datatypes ((Regex!11045 0))(
  ( (ElementMatch!11045 (c!651075 C!22276)) (Concat!17416 (regOne!22602 Regex!11045) (regTwo!22602 Regex!11045)) (EmptyExpr!11045) (Star!11045 (reg!11374 Regex!11045)) (EmptyLang!11045) (Union!11045 (regOne!22603 Regex!11045) (regTwo!22603 Regex!11045)) )
))
(declare-datatypes ((String!45508 0))(
  ( (String!45509 (value!195578 String)) )
))
(declare-datatypes ((TokenValueInjection!12168 0))(
  ( (TokenValueInjection!12169 (toValue!8496 Int) (toChars!8355 Int)) )
))
(declare-datatypes ((Rule!12080 0))(
  ( (Rule!12081 (regex!6140 Regex!11045) (tag!7000 String!45508) (isSeparator!6140 Bool) (transformation!6140 TokenValueInjection!12168)) )
))
(declare-datatypes ((Token!11418 0))(
  ( (Token!11419 (value!195579 TokenValue!6370) (rule!8904 Rule!12080) (size!30164 Int) (originalCharacters!6740 List!40204)) )
))
(declare-fun separatorToken!124 () Token!11418)

(declare-fun e!2325380 () Bool)

(declare-fun e!2325375 () Bool)

(declare-fun inv!53740 (String!45508) Bool)

(declare-fun inv!53743 (TokenValueInjection!12168) Bool)

(assert (=> b!3760014 (= e!2325375 (and tp!1148828 (inv!53740 (tag!7000 (rule!8904 separatorToken!124))) (inv!53743 (transformation!6140 (rule!8904 separatorToken!124))) e!2325380))))

(declare-fun b!3760015 () Bool)

(declare-fun e!2325383 () Bool)

(declare-fun tp!1148823 () Bool)

(declare-fun inv!21 (TokenValue!6370) Bool)

(assert (=> b!3760015 (= e!2325383 (and (inv!21 (value!195579 separatorToken!124)) e!2325375 tp!1148823))))

(declare-fun tp!1148822 () Bool)

(declare-datatypes ((List!40205 0))(
  ( (Nil!40081) (Cons!40081 (h!45501 Token!11418) (t!303758 List!40205)) )
))
(declare-fun l!4295 () List!40205)

(declare-fun b!3760016 () Bool)

(declare-fun e!2325377 () Bool)

(assert (=> b!3760016 (= e!2325377 (and tp!1148822 (inv!53740 (tag!7000 (rule!8904 (h!45501 l!4295)))) (inv!53743 (transformation!6140 (rule!8904 (h!45501 l!4295)))) e!2325381))))

(declare-fun tp!1148824 () Bool)

(declare-fun e!2325376 () Bool)

(declare-fun b!3760017 () Bool)

(assert (=> b!3760017 (= e!2325376 (and (inv!21 (value!195579 (h!45501 l!4295))) e!2325377 tp!1148824))))

(declare-fun res!1522701 () Bool)

(declare-fun e!2325379 () Bool)

(assert (=> start!352972 (=> (not res!1522701) (not e!2325379))))

(declare-datatypes ((LexerInterface!5729 0))(
  ( (LexerInterfaceExt!5726 (__x!24958 Int)) (Lexer!5727) )
))
(declare-fun thiss!13942 () LexerInterface!5729)

(get-info :version)

(assert (=> start!352972 (= res!1522701 (and ((_ is Lexer!5727) thiss!13942) (isSeparator!6140 (rule!8904 separatorToken!124)) ((_ is Cons!40081) l!4295)))))

(assert (=> start!352972 e!2325379))

(assert (=> start!352972 true))

(declare-fun inv!53744 (Token!11418) Bool)

(assert (=> start!352972 (and (inv!53744 separatorToken!124) e!2325383)))

(declare-fun e!2325372 () Bool)

(assert (=> start!352972 e!2325372))

(assert (=> start!352972 e!2325374))

(assert (=> b!3760018 (= e!2325380 (and tp!1148821 tp!1148819))))

(declare-fun tp!1148827 () Bool)

(declare-fun b!3760019 () Bool)

(assert (=> b!3760019 (= e!2325372 (and (inv!53744 (h!45501 l!4295)) e!2325376 tp!1148827))))

(declare-fun b!3760020 () Bool)

(declare-fun ListPrimitiveSize!267 (List!40205) Int)

(assert (=> b!3760020 (= e!2325379 (not (< (ListPrimitiveSize!267 (t!303758 l!4295)) (ListPrimitiveSize!267 l!4295))))))

(declare-fun lt!1301531 () List!40204)

(declare-fun lt!1301533 () List!40204)

(declare-fun acc!415 () List!40204)

(declare-fun lt!1301532 () List!40204)

(declare-fun ++!9937 (List!40204 List!40204) List!40204)

(assert (=> b!3760020 (= (++!9937 (++!9937 acc!415 lt!1301533) lt!1301532) lt!1301531)))

(declare-datatypes ((Unit!57804 0))(
  ( (Unit!57805) )
))
(declare-fun lt!1301534 () Unit!57804)

(declare-fun lemmaConcatAssociativity!2100 (List!40204 List!40204 List!40204) Unit!57804)

(assert (=> b!3760020 (= lt!1301534 (lemmaConcatAssociativity!2100 acc!415 lt!1301533 lt!1301532))))

(declare-fun lt!1301535 () List!40204)

(declare-fun lt!1301537 () List!40204)

(assert (=> b!3760020 (= (++!9937 lt!1301531 lt!1301537) (++!9937 acc!415 (++!9937 lt!1301535 lt!1301537)))))

(assert (=> b!3760020 (= lt!1301531 (++!9937 acc!415 lt!1301535))))

(declare-fun lt!1301536 () Unit!57804)

(assert (=> b!3760020 (= lt!1301536 (lemmaConcatAssociativity!2100 acc!415 lt!1301535 lt!1301537))))

(declare-fun printWithSeparatorTokenList!408 (LexerInterface!5729 List!40205 Token!11418) List!40204)

(assert (=> b!3760020 (= lt!1301537 (printWithSeparatorTokenList!408 thiss!13942 (t!303758 l!4295) separatorToken!124))))

(assert (=> b!3760020 (= lt!1301535 (++!9937 lt!1301533 lt!1301532))))

(declare-fun list!14792 (BalanceConc!24140) List!40204)

(declare-fun charsOf!3993 (Token!11418) BalanceConc!24140)

(assert (=> b!3760020 (= lt!1301532 (list!14792 (charsOf!3993 separatorToken!124)))))

(assert (=> b!3760020 (= lt!1301533 (list!14792 (charsOf!3993 (h!45501 l!4295))))))

(assert (= (and start!352972 res!1522701) b!3760020))

(assert (= b!3760014 b!3760018))

(assert (= b!3760015 b!3760014))

(assert (= start!352972 b!3760015))

(assert (= b!3760016 b!3760012))

(assert (= b!3760017 b!3760016))

(assert (= b!3760019 b!3760017))

(assert (= (and start!352972 ((_ is Cons!40081) l!4295)) b!3760019))

(assert (= (and start!352972 ((_ is Cons!40080) acc!415)) b!3760013))

(declare-fun m!4253849 () Bool)

(assert (=> b!3760017 m!4253849))

(declare-fun m!4253851 () Bool)

(assert (=> b!3760019 m!4253851))

(declare-fun m!4253853 () Bool)

(assert (=> b!3760020 m!4253853))

(declare-fun m!4253855 () Bool)

(assert (=> b!3760020 m!4253855))

(declare-fun m!4253857 () Bool)

(assert (=> b!3760020 m!4253857))

(declare-fun m!4253859 () Bool)

(assert (=> b!3760020 m!4253859))

(declare-fun m!4253861 () Bool)

(assert (=> b!3760020 m!4253861))

(assert (=> b!3760020 m!4253853))

(declare-fun m!4253863 () Bool)

(assert (=> b!3760020 m!4253863))

(declare-fun m!4253865 () Bool)

(assert (=> b!3760020 m!4253865))

(declare-fun m!4253867 () Bool)

(assert (=> b!3760020 m!4253867))

(declare-fun m!4253869 () Bool)

(assert (=> b!3760020 m!4253869))

(declare-fun m!4253871 () Bool)

(assert (=> b!3760020 m!4253871))

(declare-fun m!4253873 () Bool)

(assert (=> b!3760020 m!4253873))

(declare-fun m!4253875 () Bool)

(assert (=> b!3760020 m!4253875))

(assert (=> b!3760020 m!4253867))

(declare-fun m!4253877 () Bool)

(assert (=> b!3760020 m!4253877))

(assert (=> b!3760020 m!4253871))

(assert (=> b!3760020 m!4253863))

(declare-fun m!4253879 () Bool)

(assert (=> b!3760020 m!4253879))

(declare-fun m!4253881 () Bool)

(assert (=> b!3760020 m!4253881))

(declare-fun m!4253883 () Bool)

(assert (=> b!3760020 m!4253883))

(declare-fun m!4253885 () Bool)

(assert (=> start!352972 m!4253885))

(declare-fun m!4253887 () Bool)

(assert (=> b!3760015 m!4253887))

(declare-fun m!4253889 () Bool)

(assert (=> b!3760014 m!4253889))

(declare-fun m!4253891 () Bool)

(assert (=> b!3760014 m!4253891))

(declare-fun m!4253893 () Bool)

(assert (=> b!3760016 m!4253893))

(declare-fun m!4253895 () Bool)

(assert (=> b!3760016 m!4253895))

(check-sat b_and!279255 (not b!3760014) (not b!3760016) (not b_next!101345) (not start!352972) (not b_next!101351) (not b_next!101347) b_and!279253 (not b!3760013) tp_is_empty!19085 (not b_next!101349) b_and!279251 (not b!3760015) (not b!3760019) (not b!3760017) (not b!3760020) b_and!279257)
(check-sat b_and!279253 b_and!279255 (not b_next!101349) b_and!279251 (not b_next!101345) b_and!279257 (not b_next!101351) (not b_next!101347))
(get-model)

(declare-fun b!3760036 () Bool)

(declare-fun e!2325396 () Bool)

(declare-fun inv!15 (TokenValue!6370) Bool)

(assert (=> b!3760036 (= e!2325396 (inv!15 (value!195579 (h!45501 l!4295))))))

(declare-fun d!1098290 () Bool)

(declare-fun c!651081 () Bool)

(assert (=> d!1098290 (= c!651081 ((_ is IntegerValue!19110) (value!195579 (h!45501 l!4295))))))

(declare-fun e!2325394 () Bool)

(assert (=> d!1098290 (= (inv!21 (value!195579 (h!45501 l!4295))) e!2325394)))

(declare-fun b!3760037 () Bool)

(declare-fun e!2325395 () Bool)

(declare-fun inv!17 (TokenValue!6370) Bool)

(assert (=> b!3760037 (= e!2325395 (inv!17 (value!195579 (h!45501 l!4295))))))

(declare-fun b!3760038 () Bool)

(declare-fun res!1522711 () Bool)

(assert (=> b!3760038 (=> res!1522711 e!2325396)))

(assert (=> b!3760038 (= res!1522711 (not ((_ is IntegerValue!19112) (value!195579 (h!45501 l!4295)))))))

(assert (=> b!3760038 (= e!2325395 e!2325396)))

(declare-fun b!3760039 () Bool)

(declare-fun inv!16 (TokenValue!6370) Bool)

(assert (=> b!3760039 (= e!2325394 (inv!16 (value!195579 (h!45501 l!4295))))))

(declare-fun b!3760040 () Bool)

(assert (=> b!3760040 (= e!2325394 e!2325395)))

(declare-fun c!651080 () Bool)

(assert (=> b!3760040 (= c!651080 ((_ is IntegerValue!19111) (value!195579 (h!45501 l!4295))))))

(assert (= (and d!1098290 c!651081) b!3760039))

(assert (= (and d!1098290 (not c!651081)) b!3760040))

(assert (= (and b!3760040 c!651080) b!3760037))

(assert (= (and b!3760040 (not c!651080)) b!3760038))

(assert (= (and b!3760038 (not res!1522711)) b!3760036))

(declare-fun m!4253907 () Bool)

(assert (=> b!3760036 m!4253907))

(declare-fun m!4253909 () Bool)

(assert (=> b!3760037 m!4253909))

(declare-fun m!4253911 () Bool)

(assert (=> b!3760039 m!4253911))

(assert (=> b!3760017 d!1098290))

(declare-fun d!1098296 () Bool)

(declare-fun res!1522722 () Bool)

(declare-fun e!2325405 () Bool)

(assert (=> d!1098296 (=> (not res!1522722) (not e!2325405))))

(declare-fun isEmpty!23570 (List!40204) Bool)

(assert (=> d!1098296 (= res!1522722 (not (isEmpty!23570 (originalCharacters!6740 (h!45501 l!4295)))))))

(assert (=> d!1098296 (= (inv!53744 (h!45501 l!4295)) e!2325405)))

(declare-fun b!3760057 () Bool)

(declare-fun res!1522723 () Bool)

(assert (=> b!3760057 (=> (not res!1522723) (not e!2325405))))

(declare-fun dynLambda!17330 (Int TokenValue!6370) BalanceConc!24140)

(assert (=> b!3760057 (= res!1522723 (= (originalCharacters!6740 (h!45501 l!4295)) (list!14792 (dynLambda!17330 (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295)))) (value!195579 (h!45501 l!4295))))))))

(declare-fun b!3760058 () Bool)

(declare-fun size!30166 (List!40204) Int)

(assert (=> b!3760058 (= e!2325405 (= (size!30164 (h!45501 l!4295)) (size!30166 (originalCharacters!6740 (h!45501 l!4295)))))))

(assert (= (and d!1098296 res!1522722) b!3760057))

(assert (= (and b!3760057 res!1522723) b!3760058))

(declare-fun b_lambda!110285 () Bool)

(assert (=> (not b_lambda!110285) (not b!3760057)))

(declare-fun tb!215161 () Bool)

(declare-fun t!303764 () Bool)

(assert (=> (and b!3760018 (= (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124))) (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295))))) t!303764) tb!215161))

(declare-fun b!3760071 () Bool)

(declare-fun e!2325412 () Bool)

(declare-fun tp!1148834 () Bool)

(declare-fun inv!53747 (Conc!12273) Bool)

(assert (=> b!3760071 (= e!2325412 (and (inv!53747 (c!651074 (dynLambda!17330 (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295)))) (value!195579 (h!45501 l!4295))))) tp!1148834))))

(declare-fun result!262716 () Bool)

(declare-fun inv!53748 (BalanceConc!24140) Bool)

(assert (=> tb!215161 (= result!262716 (and (inv!53748 (dynLambda!17330 (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295)))) (value!195579 (h!45501 l!4295)))) e!2325412))))

(assert (= tb!215161 b!3760071))

(declare-fun m!4253951 () Bool)

(assert (=> b!3760071 m!4253951))

(declare-fun m!4253953 () Bool)

(assert (=> tb!215161 m!4253953))

(assert (=> b!3760057 t!303764))

(declare-fun b_and!279263 () Bool)

(assert (= b_and!279253 (and (=> t!303764 result!262716) b_and!279263)))

(declare-fun t!303766 () Bool)

(declare-fun tb!215163 () Bool)

(assert (=> (and b!3760012 (= (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295)))) (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295))))) t!303766) tb!215163))

(declare-fun result!262720 () Bool)

(assert (= result!262720 result!262716))

(assert (=> b!3760057 t!303766))

(declare-fun b_and!279265 () Bool)

(assert (= b_and!279257 (and (=> t!303766 result!262720) b_and!279265)))

(declare-fun m!4253955 () Bool)

(assert (=> d!1098296 m!4253955))

(declare-fun m!4253957 () Bool)

(assert (=> b!3760057 m!4253957))

(assert (=> b!3760057 m!4253957))

(declare-fun m!4253959 () Bool)

(assert (=> b!3760057 m!4253959))

(declare-fun m!4253961 () Bool)

(assert (=> b!3760058 m!4253961))

(assert (=> b!3760019 d!1098296))

(declare-fun d!1098304 () Bool)

(declare-fun lt!1301552 () BalanceConc!24140)

(assert (=> d!1098304 (= (list!14792 lt!1301552) (originalCharacters!6740 separatorToken!124))))

(assert (=> d!1098304 (= lt!1301552 (dynLambda!17330 (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124))) (value!195579 separatorToken!124)))))

(assert (=> d!1098304 (= (charsOf!3993 separatorToken!124) lt!1301552)))

(declare-fun b_lambda!110287 () Bool)

(assert (=> (not b_lambda!110287) (not d!1098304)))

(declare-fun t!303768 () Bool)

(declare-fun tb!215165 () Bool)

(assert (=> (and b!3760018 (= (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124))) (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124)))) t!303768) tb!215165))

(declare-fun b!3760076 () Bool)

(declare-fun e!2325415 () Bool)

(declare-fun tp!1148835 () Bool)

(assert (=> b!3760076 (= e!2325415 (and (inv!53747 (c!651074 (dynLambda!17330 (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124))) (value!195579 separatorToken!124)))) tp!1148835))))

(declare-fun result!262722 () Bool)

(assert (=> tb!215165 (= result!262722 (and (inv!53748 (dynLambda!17330 (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124))) (value!195579 separatorToken!124))) e!2325415))))

(assert (= tb!215165 b!3760076))

(declare-fun m!4253975 () Bool)

(assert (=> b!3760076 m!4253975))

(declare-fun m!4253979 () Bool)

(assert (=> tb!215165 m!4253979))

(assert (=> d!1098304 t!303768))

(declare-fun b_and!279267 () Bool)

(assert (= b_and!279263 (and (=> t!303768 result!262722) b_and!279267)))

(declare-fun t!303770 () Bool)

(declare-fun tb!215167 () Bool)

(assert (=> (and b!3760012 (= (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295)))) (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124)))) t!303770) tb!215167))

(declare-fun result!262724 () Bool)

(assert (= result!262724 result!262722))

(assert (=> d!1098304 t!303770))

(declare-fun b_and!279269 () Bool)

(assert (= b_and!279265 (and (=> t!303770 result!262724) b_and!279269)))

(declare-fun m!4253981 () Bool)

(assert (=> d!1098304 m!4253981))

(declare-fun m!4253983 () Bool)

(assert (=> d!1098304 m!4253983))

(assert (=> b!3760020 d!1098304))

(declare-fun d!1098310 () Bool)

(declare-fun e!2325430 () Bool)

(assert (=> d!1098310 e!2325430))

(declare-fun res!1522739 () Bool)

(assert (=> d!1098310 (=> (not res!1522739) (not e!2325430))))

(declare-fun lt!1301560 () List!40204)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5882 (List!40204) (InoxSet C!22276))

(assert (=> d!1098310 (= res!1522739 (= (content!5882 lt!1301560) ((_ map or) (content!5882 lt!1301535) (content!5882 lt!1301537))))))

(declare-fun e!2325429 () List!40204)

(assert (=> d!1098310 (= lt!1301560 e!2325429)))

(declare-fun c!651097 () Bool)

(assert (=> d!1098310 (= c!651097 ((_ is Nil!40080) lt!1301535))))

(assert (=> d!1098310 (= (++!9937 lt!1301535 lt!1301537) lt!1301560)))

(declare-fun b!3760104 () Bool)

(assert (=> b!3760104 (= e!2325429 (Cons!40080 (h!45500 lt!1301535) (++!9937 (t!303757 lt!1301535) lt!1301537)))))

(declare-fun b!3760105 () Bool)

(declare-fun res!1522738 () Bool)

(assert (=> b!3760105 (=> (not res!1522738) (not e!2325430))))

(assert (=> b!3760105 (= res!1522738 (= (size!30166 lt!1301560) (+ (size!30166 lt!1301535) (size!30166 lt!1301537))))))

(declare-fun b!3760106 () Bool)

(assert (=> b!3760106 (= e!2325430 (or (not (= lt!1301537 Nil!40080)) (= lt!1301560 lt!1301535)))))

(declare-fun b!3760103 () Bool)

(assert (=> b!3760103 (= e!2325429 lt!1301537)))

(assert (= (and d!1098310 c!651097) b!3760103))

(assert (= (and d!1098310 (not c!651097)) b!3760104))

(assert (= (and d!1098310 res!1522739) b!3760105))

(assert (= (and b!3760105 res!1522738) b!3760106))

(declare-fun m!4254003 () Bool)

(assert (=> d!1098310 m!4254003))

(declare-fun m!4254005 () Bool)

(assert (=> d!1098310 m!4254005))

(declare-fun m!4254007 () Bool)

(assert (=> d!1098310 m!4254007))

(declare-fun m!4254009 () Bool)

(assert (=> b!3760104 m!4254009))

(declare-fun m!4254011 () Bool)

(assert (=> b!3760105 m!4254011))

(declare-fun m!4254013 () Bool)

(assert (=> b!3760105 m!4254013))

(declare-fun m!4254015 () Bool)

(assert (=> b!3760105 m!4254015))

(assert (=> b!3760020 d!1098310))

(declare-fun d!1098318 () Bool)

(declare-fun e!2325432 () Bool)

(assert (=> d!1098318 e!2325432))

(declare-fun res!1522741 () Bool)

(assert (=> d!1098318 (=> (not res!1522741) (not e!2325432))))

(declare-fun lt!1301561 () List!40204)

(assert (=> d!1098318 (= res!1522741 (= (content!5882 lt!1301561) ((_ map or) (content!5882 acc!415) (content!5882 (++!9937 lt!1301535 lt!1301537)))))))

(declare-fun e!2325431 () List!40204)

(assert (=> d!1098318 (= lt!1301561 e!2325431)))

(declare-fun c!651098 () Bool)

(assert (=> d!1098318 (= c!651098 ((_ is Nil!40080) acc!415))))

(assert (=> d!1098318 (= (++!9937 acc!415 (++!9937 lt!1301535 lt!1301537)) lt!1301561)))

(declare-fun b!3760108 () Bool)

(assert (=> b!3760108 (= e!2325431 (Cons!40080 (h!45500 acc!415) (++!9937 (t!303757 acc!415) (++!9937 lt!1301535 lt!1301537))))))

(declare-fun b!3760109 () Bool)

(declare-fun res!1522740 () Bool)

(assert (=> b!3760109 (=> (not res!1522740) (not e!2325432))))

(assert (=> b!3760109 (= res!1522740 (= (size!30166 lt!1301561) (+ (size!30166 acc!415) (size!30166 (++!9937 lt!1301535 lt!1301537)))))))

(declare-fun b!3760110 () Bool)

(assert (=> b!3760110 (= e!2325432 (or (not (= (++!9937 lt!1301535 lt!1301537) Nil!40080)) (= lt!1301561 acc!415)))))

(declare-fun b!3760107 () Bool)

(assert (=> b!3760107 (= e!2325431 (++!9937 lt!1301535 lt!1301537))))

(assert (= (and d!1098318 c!651098) b!3760107))

(assert (= (and d!1098318 (not c!651098)) b!3760108))

(assert (= (and d!1098318 res!1522741) b!3760109))

(assert (= (and b!3760109 res!1522740) b!3760110))

(declare-fun m!4254017 () Bool)

(assert (=> d!1098318 m!4254017))

(declare-fun m!4254019 () Bool)

(assert (=> d!1098318 m!4254019))

(assert (=> d!1098318 m!4253871))

(declare-fun m!4254021 () Bool)

(assert (=> d!1098318 m!4254021))

(assert (=> b!3760108 m!4253871))

(declare-fun m!4254023 () Bool)

(assert (=> b!3760108 m!4254023))

(declare-fun m!4254025 () Bool)

(assert (=> b!3760109 m!4254025))

(declare-fun m!4254027 () Bool)

(assert (=> b!3760109 m!4254027))

(assert (=> b!3760109 m!4253871))

(declare-fun m!4254029 () Bool)

(assert (=> b!3760109 m!4254029))

(assert (=> b!3760020 d!1098318))

(declare-fun d!1098320 () Bool)

(declare-fun e!2325434 () Bool)

(assert (=> d!1098320 e!2325434))

(declare-fun res!1522743 () Bool)

(assert (=> d!1098320 (=> (not res!1522743) (not e!2325434))))

(declare-fun lt!1301562 () List!40204)

(assert (=> d!1098320 (= res!1522743 (= (content!5882 lt!1301562) ((_ map or) (content!5882 (++!9937 acc!415 lt!1301533)) (content!5882 lt!1301532))))))

(declare-fun e!2325433 () List!40204)

(assert (=> d!1098320 (= lt!1301562 e!2325433)))

(declare-fun c!651099 () Bool)

(assert (=> d!1098320 (= c!651099 ((_ is Nil!40080) (++!9937 acc!415 lt!1301533)))))

(assert (=> d!1098320 (= (++!9937 (++!9937 acc!415 lt!1301533) lt!1301532) lt!1301562)))

(declare-fun b!3760112 () Bool)

(assert (=> b!3760112 (= e!2325433 (Cons!40080 (h!45500 (++!9937 acc!415 lt!1301533)) (++!9937 (t!303757 (++!9937 acc!415 lt!1301533)) lt!1301532)))))

(declare-fun b!3760113 () Bool)

(declare-fun res!1522742 () Bool)

(assert (=> b!3760113 (=> (not res!1522742) (not e!2325434))))

(assert (=> b!3760113 (= res!1522742 (= (size!30166 lt!1301562) (+ (size!30166 (++!9937 acc!415 lt!1301533)) (size!30166 lt!1301532))))))

(declare-fun b!3760114 () Bool)

(assert (=> b!3760114 (= e!2325434 (or (not (= lt!1301532 Nil!40080)) (= lt!1301562 (++!9937 acc!415 lt!1301533))))))

(declare-fun b!3760111 () Bool)

(assert (=> b!3760111 (= e!2325433 lt!1301532)))

(assert (= (and d!1098320 c!651099) b!3760111))

(assert (= (and d!1098320 (not c!651099)) b!3760112))

(assert (= (and d!1098320 res!1522743) b!3760113))

(assert (= (and b!3760113 res!1522742) b!3760114))

(declare-fun m!4254031 () Bool)

(assert (=> d!1098320 m!4254031))

(assert (=> d!1098320 m!4253853))

(declare-fun m!4254033 () Bool)

(assert (=> d!1098320 m!4254033))

(declare-fun m!4254035 () Bool)

(assert (=> d!1098320 m!4254035))

(declare-fun m!4254037 () Bool)

(assert (=> b!3760112 m!4254037))

(declare-fun m!4254039 () Bool)

(assert (=> b!3760113 m!4254039))

(assert (=> b!3760113 m!4253853))

(declare-fun m!4254041 () Bool)

(assert (=> b!3760113 m!4254041))

(declare-fun m!4254043 () Bool)

(assert (=> b!3760113 m!4254043))

(assert (=> b!3760020 d!1098320))

(declare-fun d!1098322 () Bool)

(declare-fun list!14794 (Conc!12273) List!40204)

(assert (=> d!1098322 (= (list!14792 (charsOf!3993 separatorToken!124)) (list!14794 (c!651074 (charsOf!3993 separatorToken!124))))))

(declare-fun bs!575744 () Bool)

(assert (= bs!575744 d!1098322))

(declare-fun m!4254057 () Bool)

(assert (=> bs!575744 m!4254057))

(assert (=> b!3760020 d!1098322))

(declare-fun d!1098328 () Bool)

(declare-fun e!2325439 () Bool)

(assert (=> d!1098328 e!2325439))

(declare-fun res!1522747 () Bool)

(assert (=> d!1098328 (=> (not res!1522747) (not e!2325439))))

(declare-fun lt!1301564 () List!40204)

(assert (=> d!1098328 (= res!1522747 (= (content!5882 lt!1301564) ((_ map or) (content!5882 lt!1301533) (content!5882 lt!1301532))))))

(declare-fun e!2325438 () List!40204)

(assert (=> d!1098328 (= lt!1301564 e!2325438)))

(declare-fun c!651102 () Bool)

(assert (=> d!1098328 (= c!651102 ((_ is Nil!40080) lt!1301533))))

(assert (=> d!1098328 (= (++!9937 lt!1301533 lt!1301532) lt!1301564)))

(declare-fun b!3760122 () Bool)

(assert (=> b!3760122 (= e!2325438 (Cons!40080 (h!45500 lt!1301533) (++!9937 (t!303757 lt!1301533) lt!1301532)))))

(declare-fun b!3760123 () Bool)

(declare-fun res!1522746 () Bool)

(assert (=> b!3760123 (=> (not res!1522746) (not e!2325439))))

(assert (=> b!3760123 (= res!1522746 (= (size!30166 lt!1301564) (+ (size!30166 lt!1301533) (size!30166 lt!1301532))))))

(declare-fun b!3760124 () Bool)

(assert (=> b!3760124 (= e!2325439 (or (not (= lt!1301532 Nil!40080)) (= lt!1301564 lt!1301533)))))

(declare-fun b!3760121 () Bool)

(assert (=> b!3760121 (= e!2325438 lt!1301532)))

(assert (= (and d!1098328 c!651102) b!3760121))

(assert (= (and d!1098328 (not c!651102)) b!3760122))

(assert (= (and d!1098328 res!1522747) b!3760123))

(assert (= (and b!3760123 res!1522746) b!3760124))

(declare-fun m!4254069 () Bool)

(assert (=> d!1098328 m!4254069))

(declare-fun m!4254071 () Bool)

(assert (=> d!1098328 m!4254071))

(assert (=> d!1098328 m!4254035))

(declare-fun m!4254073 () Bool)

(assert (=> b!3760122 m!4254073))

(declare-fun m!4254075 () Bool)

(assert (=> b!3760123 m!4254075))

(declare-fun m!4254077 () Bool)

(assert (=> b!3760123 m!4254077))

(assert (=> b!3760123 m!4254043))

(assert (=> b!3760020 d!1098328))

(declare-fun d!1098332 () Bool)

(declare-fun e!2325441 () Bool)

(assert (=> d!1098332 e!2325441))

(declare-fun res!1522749 () Bool)

(assert (=> d!1098332 (=> (not res!1522749) (not e!2325441))))

(declare-fun lt!1301566 () List!40204)

(assert (=> d!1098332 (= res!1522749 (= (content!5882 lt!1301566) ((_ map or) (content!5882 lt!1301531) (content!5882 lt!1301537))))))

(declare-fun e!2325440 () List!40204)

(assert (=> d!1098332 (= lt!1301566 e!2325440)))

(declare-fun c!651103 () Bool)

(assert (=> d!1098332 (= c!651103 ((_ is Nil!40080) lt!1301531))))

(assert (=> d!1098332 (= (++!9937 lt!1301531 lt!1301537) lt!1301566)))

(declare-fun b!3760126 () Bool)

(assert (=> b!3760126 (= e!2325440 (Cons!40080 (h!45500 lt!1301531) (++!9937 (t!303757 lt!1301531) lt!1301537)))))

(declare-fun b!3760127 () Bool)

(declare-fun res!1522748 () Bool)

(assert (=> b!3760127 (=> (not res!1522748) (not e!2325441))))

(assert (=> b!3760127 (= res!1522748 (= (size!30166 lt!1301566) (+ (size!30166 lt!1301531) (size!30166 lt!1301537))))))

(declare-fun b!3760128 () Bool)

(assert (=> b!3760128 (= e!2325441 (or (not (= lt!1301537 Nil!40080)) (= lt!1301566 lt!1301531)))))

(declare-fun b!3760125 () Bool)

(assert (=> b!3760125 (= e!2325440 lt!1301537)))

(assert (= (and d!1098332 c!651103) b!3760125))

(assert (= (and d!1098332 (not c!651103)) b!3760126))

(assert (= (and d!1098332 res!1522749) b!3760127))

(assert (= (and b!3760127 res!1522748) b!3760128))

(declare-fun m!4254083 () Bool)

(assert (=> d!1098332 m!4254083))

(declare-fun m!4254085 () Bool)

(assert (=> d!1098332 m!4254085))

(assert (=> d!1098332 m!4254007))

(declare-fun m!4254087 () Bool)

(assert (=> b!3760126 m!4254087))

(declare-fun m!4254089 () Bool)

(assert (=> b!3760127 m!4254089))

(declare-fun m!4254091 () Bool)

(assert (=> b!3760127 m!4254091))

(assert (=> b!3760127 m!4254015))

(assert (=> b!3760020 d!1098332))

(declare-fun d!1098338 () Bool)

(declare-fun e!2325444 () Bool)

(assert (=> d!1098338 e!2325444))

(declare-fun res!1522751 () Bool)

(assert (=> d!1098338 (=> (not res!1522751) (not e!2325444))))

(declare-fun lt!1301569 () List!40204)

(assert (=> d!1098338 (= res!1522751 (= (content!5882 lt!1301569) ((_ map or) (content!5882 acc!415) (content!5882 lt!1301535))))))

(declare-fun e!2325443 () List!40204)

(assert (=> d!1098338 (= lt!1301569 e!2325443)))

(declare-fun c!651105 () Bool)

(assert (=> d!1098338 (= c!651105 ((_ is Nil!40080) acc!415))))

(assert (=> d!1098338 (= (++!9937 acc!415 lt!1301535) lt!1301569)))

(declare-fun b!3760132 () Bool)

(assert (=> b!3760132 (= e!2325443 (Cons!40080 (h!45500 acc!415) (++!9937 (t!303757 acc!415) lt!1301535)))))

(declare-fun b!3760133 () Bool)

(declare-fun res!1522750 () Bool)

(assert (=> b!3760133 (=> (not res!1522750) (not e!2325444))))

(assert (=> b!3760133 (= res!1522750 (= (size!30166 lt!1301569) (+ (size!30166 acc!415) (size!30166 lt!1301535))))))

(declare-fun b!3760134 () Bool)

(assert (=> b!3760134 (= e!2325444 (or (not (= lt!1301535 Nil!40080)) (= lt!1301569 acc!415)))))

(declare-fun b!3760131 () Bool)

(assert (=> b!3760131 (= e!2325443 lt!1301535)))

(assert (= (and d!1098338 c!651105) b!3760131))

(assert (= (and d!1098338 (not c!651105)) b!3760132))

(assert (= (and d!1098338 res!1522751) b!3760133))

(assert (= (and b!3760133 res!1522750) b!3760134))

(declare-fun m!4254093 () Bool)

(assert (=> d!1098338 m!4254093))

(assert (=> d!1098338 m!4254019))

(assert (=> d!1098338 m!4254005))

(declare-fun m!4254095 () Bool)

(assert (=> b!3760132 m!4254095))

(declare-fun m!4254099 () Bool)

(assert (=> b!3760133 m!4254099))

(assert (=> b!3760133 m!4254027))

(assert (=> b!3760133 m!4254013))

(assert (=> b!3760020 d!1098338))

(declare-fun d!1098340 () Bool)

(assert (=> d!1098340 (= (++!9937 (++!9937 acc!415 lt!1301533) lt!1301532) (++!9937 acc!415 (++!9937 lt!1301533 lt!1301532)))))

(declare-fun lt!1301572 () Unit!57804)

(declare-fun choose!22276 (List!40204 List!40204 List!40204) Unit!57804)

(assert (=> d!1098340 (= lt!1301572 (choose!22276 acc!415 lt!1301533 lt!1301532))))

(assert (=> d!1098340 (= (lemmaConcatAssociativity!2100 acc!415 lt!1301533 lt!1301532) lt!1301572)))

(declare-fun bs!575746 () Bool)

(assert (= bs!575746 d!1098340))

(assert (=> bs!575746 m!4253853))

(assert (=> bs!575746 m!4253859))

(declare-fun m!4254107 () Bool)

(assert (=> bs!575746 m!4254107))

(assert (=> bs!575746 m!4253853))

(assert (=> bs!575746 m!4253855))

(assert (=> bs!575746 m!4253859))

(declare-fun m!4254109 () Bool)

(assert (=> bs!575746 m!4254109))

(assert (=> b!3760020 d!1098340))

(declare-fun d!1098346 () Bool)

(declare-fun lt!1301575 () Int)

(assert (=> d!1098346 (>= lt!1301575 0)))

(declare-fun e!2325451 () Int)

(assert (=> d!1098346 (= lt!1301575 e!2325451)))

(declare-fun c!651108 () Bool)

(assert (=> d!1098346 (= c!651108 ((_ is Nil!40081) (t!303758 l!4295)))))

(assert (=> d!1098346 (= (ListPrimitiveSize!267 (t!303758 l!4295)) lt!1301575)))

(declare-fun b!3760143 () Bool)

(assert (=> b!3760143 (= e!2325451 0)))

(declare-fun b!3760144 () Bool)

(assert (=> b!3760144 (= e!2325451 (+ 1 (ListPrimitiveSize!267 (t!303758 (t!303758 l!4295)))))))

(assert (= (and d!1098346 c!651108) b!3760143))

(assert (= (and d!1098346 (not c!651108)) b!3760144))

(declare-fun m!4254115 () Bool)

(assert (=> b!3760144 m!4254115))

(assert (=> b!3760020 d!1098346))

(declare-fun d!1098350 () Bool)

(declare-fun c!651117 () Bool)

(assert (=> d!1098350 (= c!651117 ((_ is Cons!40081) (t!303758 l!4295)))))

(declare-fun e!2325465 () List!40204)

(assert (=> d!1098350 (= (printWithSeparatorTokenList!408 thiss!13942 (t!303758 l!4295) separatorToken!124) e!2325465)))

(declare-fun b!3760166 () Bool)

(assert (=> b!3760166 (= e!2325465 (++!9937 (++!9937 (list!14792 (charsOf!3993 (h!45501 (t!303758 l!4295)))) (list!14792 (charsOf!3993 separatorToken!124))) (printWithSeparatorTokenList!408 thiss!13942 (t!303758 (t!303758 l!4295)) separatorToken!124)))))

(declare-fun b!3760167 () Bool)

(assert (=> b!3760167 (= e!2325465 Nil!40080)))

(assert (= (and d!1098350 c!651117) b!3760166))

(assert (= (and d!1098350 (not c!651117)) b!3760167))

(declare-fun m!4254123 () Bool)

(assert (=> b!3760166 m!4254123))

(declare-fun m!4254125 () Bool)

(assert (=> b!3760166 m!4254125))

(declare-fun m!4254127 () Bool)

(assert (=> b!3760166 m!4254127))

(declare-fun m!4254129 () Bool)

(assert (=> b!3760166 m!4254129))

(assert (=> b!3760166 m!4253879))

(assert (=> b!3760166 m!4254123))

(assert (=> b!3760166 m!4254125))

(declare-fun m!4254131 () Bool)

(assert (=> b!3760166 m!4254131))

(assert (=> b!3760166 m!4253863))

(assert (=> b!3760166 m!4253863))

(assert (=> b!3760166 m!4253879))

(assert (=> b!3760166 m!4254131))

(assert (=> b!3760166 m!4254129))

(assert (=> b!3760020 d!1098350))

(declare-fun d!1098354 () Bool)

(assert (=> d!1098354 (= (++!9937 (++!9937 acc!415 lt!1301535) lt!1301537) (++!9937 acc!415 (++!9937 lt!1301535 lt!1301537)))))

(declare-fun lt!1301576 () Unit!57804)

(assert (=> d!1098354 (= lt!1301576 (choose!22276 acc!415 lt!1301535 lt!1301537))))

(assert (=> d!1098354 (= (lemmaConcatAssociativity!2100 acc!415 lt!1301535 lt!1301537) lt!1301576)))

(declare-fun bs!575747 () Bool)

(assert (= bs!575747 d!1098354))

(assert (=> bs!575747 m!4253881))

(assert (=> bs!575747 m!4253871))

(declare-fun m!4254133 () Bool)

(assert (=> bs!575747 m!4254133))

(assert (=> bs!575747 m!4253881))

(declare-fun m!4254135 () Bool)

(assert (=> bs!575747 m!4254135))

(assert (=> bs!575747 m!4253871))

(assert (=> bs!575747 m!4253873))

(assert (=> b!3760020 d!1098354))

(declare-fun d!1098356 () Bool)

(declare-fun e!2325468 () Bool)

(assert (=> d!1098356 e!2325468))

(declare-fun res!1522765 () Bool)

(assert (=> d!1098356 (=> (not res!1522765) (not e!2325468))))

(declare-fun lt!1301577 () List!40204)

(assert (=> d!1098356 (= res!1522765 (= (content!5882 lt!1301577) ((_ map or) (content!5882 acc!415) (content!5882 lt!1301533))))))

(declare-fun e!2325467 () List!40204)

(assert (=> d!1098356 (= lt!1301577 e!2325467)))

(declare-fun c!651118 () Bool)

(assert (=> d!1098356 (= c!651118 ((_ is Nil!40080) acc!415))))

(assert (=> d!1098356 (= (++!9937 acc!415 lt!1301533) lt!1301577)))

(declare-fun b!3760173 () Bool)

(assert (=> b!3760173 (= e!2325467 (Cons!40080 (h!45500 acc!415) (++!9937 (t!303757 acc!415) lt!1301533)))))

(declare-fun b!3760174 () Bool)

(declare-fun res!1522764 () Bool)

(assert (=> b!3760174 (=> (not res!1522764) (not e!2325468))))

(assert (=> b!3760174 (= res!1522764 (= (size!30166 lt!1301577) (+ (size!30166 acc!415) (size!30166 lt!1301533))))))

(declare-fun b!3760175 () Bool)

(assert (=> b!3760175 (= e!2325468 (or (not (= lt!1301533 Nil!40080)) (= lt!1301577 acc!415)))))

(declare-fun b!3760172 () Bool)

(assert (=> b!3760172 (= e!2325467 lt!1301533)))

(assert (= (and d!1098356 c!651118) b!3760172))

(assert (= (and d!1098356 (not c!651118)) b!3760173))

(assert (= (and d!1098356 res!1522765) b!3760174))

(assert (= (and b!3760174 res!1522764) b!3760175))

(declare-fun m!4254143 () Bool)

(assert (=> d!1098356 m!4254143))

(assert (=> d!1098356 m!4254019))

(assert (=> d!1098356 m!4254071))

(declare-fun m!4254145 () Bool)

(assert (=> b!3760173 m!4254145))

(declare-fun m!4254147 () Bool)

(assert (=> b!3760174 m!4254147))

(assert (=> b!3760174 m!4254027))

(assert (=> b!3760174 m!4254077))

(assert (=> b!3760020 d!1098356))

(declare-fun d!1098360 () Bool)

(assert (=> d!1098360 (= (list!14792 (charsOf!3993 (h!45501 l!4295))) (list!14794 (c!651074 (charsOf!3993 (h!45501 l!4295)))))))

(declare-fun bs!575748 () Bool)

(assert (= bs!575748 d!1098360))

(declare-fun m!4254151 () Bool)

(assert (=> bs!575748 m!4254151))

(assert (=> b!3760020 d!1098360))

(declare-fun d!1098362 () Bool)

(declare-fun lt!1301578 () Int)

(assert (=> d!1098362 (>= lt!1301578 0)))

(declare-fun e!2325470 () Int)

(assert (=> d!1098362 (= lt!1301578 e!2325470)))

(declare-fun c!651119 () Bool)

(assert (=> d!1098362 (= c!651119 ((_ is Nil!40081) l!4295))))

(assert (=> d!1098362 (= (ListPrimitiveSize!267 l!4295) lt!1301578)))

(declare-fun b!3760178 () Bool)

(assert (=> b!3760178 (= e!2325470 0)))

(declare-fun b!3760179 () Bool)

(assert (=> b!3760179 (= e!2325470 (+ 1 (ListPrimitiveSize!267 (t!303758 l!4295))))))

(assert (= (and d!1098362 c!651119) b!3760178))

(assert (= (and d!1098362 (not c!651119)) b!3760179))

(assert (=> b!3760179 m!4253857))

(assert (=> b!3760020 d!1098362))

(declare-fun d!1098366 () Bool)

(declare-fun lt!1301579 () BalanceConc!24140)

(assert (=> d!1098366 (= (list!14792 lt!1301579) (originalCharacters!6740 (h!45501 l!4295)))))

(assert (=> d!1098366 (= lt!1301579 (dynLambda!17330 (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295)))) (value!195579 (h!45501 l!4295))))))

(assert (=> d!1098366 (= (charsOf!3993 (h!45501 l!4295)) lt!1301579)))

(declare-fun b_lambda!110295 () Bool)

(assert (=> (not b_lambda!110295) (not d!1098366)))

(assert (=> d!1098366 t!303764))

(declare-fun b_and!279283 () Bool)

(assert (= b_and!279267 (and (=> t!303764 result!262716) b_and!279283)))

(assert (=> d!1098366 t!303766))

(declare-fun b_and!279285 () Bool)

(assert (= b_and!279269 (and (=> t!303766 result!262720) b_and!279285)))

(declare-fun m!4254163 () Bool)

(assert (=> d!1098366 m!4254163))

(assert (=> d!1098366 m!4253957))

(assert (=> b!3760020 d!1098366))

(declare-fun b!3760186 () Bool)

(declare-fun e!2325477 () Bool)

(assert (=> b!3760186 (= e!2325477 (inv!15 (value!195579 separatorToken!124)))))

(declare-fun d!1098372 () Bool)

(declare-fun c!651123 () Bool)

(assert (=> d!1098372 (= c!651123 ((_ is IntegerValue!19110) (value!195579 separatorToken!124)))))

(declare-fun e!2325475 () Bool)

(assert (=> d!1098372 (= (inv!21 (value!195579 separatorToken!124)) e!2325475)))

(declare-fun b!3760187 () Bool)

(declare-fun e!2325476 () Bool)

(assert (=> b!3760187 (= e!2325476 (inv!17 (value!195579 separatorToken!124)))))

(declare-fun b!3760188 () Bool)

(declare-fun res!1522770 () Bool)

(assert (=> b!3760188 (=> res!1522770 e!2325477)))

(assert (=> b!3760188 (= res!1522770 (not ((_ is IntegerValue!19112) (value!195579 separatorToken!124))))))

(assert (=> b!3760188 (= e!2325476 e!2325477)))

(declare-fun b!3760189 () Bool)

(assert (=> b!3760189 (= e!2325475 (inv!16 (value!195579 separatorToken!124)))))

(declare-fun b!3760190 () Bool)

(assert (=> b!3760190 (= e!2325475 e!2325476)))

(declare-fun c!651122 () Bool)

(assert (=> b!3760190 (= c!651122 ((_ is IntegerValue!19111) (value!195579 separatorToken!124)))))

(assert (= (and d!1098372 c!651123) b!3760189))

(assert (= (and d!1098372 (not c!651123)) b!3760190))

(assert (= (and b!3760190 c!651122) b!3760187))

(assert (= (and b!3760190 (not c!651122)) b!3760188))

(assert (= (and b!3760188 (not res!1522770)) b!3760186))

(declare-fun m!4254169 () Bool)

(assert (=> b!3760186 m!4254169))

(declare-fun m!4254171 () Bool)

(assert (=> b!3760187 m!4254171))

(declare-fun m!4254173 () Bool)

(assert (=> b!3760189 m!4254173))

(assert (=> b!3760015 d!1098372))

(declare-fun d!1098374 () Bool)

(assert (=> d!1098374 (= (inv!53740 (tag!7000 (rule!8904 separatorToken!124))) (= (mod (str.len (value!195578 (tag!7000 (rule!8904 separatorToken!124)))) 2) 0))))

(assert (=> b!3760014 d!1098374))

(declare-fun d!1098376 () Bool)

(declare-fun res!1522773 () Bool)

(declare-fun e!2325499 () Bool)

(assert (=> d!1098376 (=> (not res!1522773) (not e!2325499))))

(declare-fun semiInverseModEq!2627 (Int Int) Bool)

(assert (=> d!1098376 (= res!1522773 (semiInverseModEq!2627 (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124))) (toValue!8496 (transformation!6140 (rule!8904 separatorToken!124)))))))

(assert (=> d!1098376 (= (inv!53743 (transformation!6140 (rule!8904 separatorToken!124))) e!2325499)))

(declare-fun b!3760223 () Bool)

(declare-fun equivClasses!2526 (Int Int) Bool)

(assert (=> b!3760223 (= e!2325499 (equivClasses!2526 (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124))) (toValue!8496 (transformation!6140 (rule!8904 separatorToken!124)))))))

(assert (= (and d!1098376 res!1522773) b!3760223))

(declare-fun m!4254175 () Bool)

(assert (=> d!1098376 m!4254175))

(declare-fun m!4254177 () Bool)

(assert (=> b!3760223 m!4254177))

(assert (=> b!3760014 d!1098376))

(declare-fun d!1098378 () Bool)

(assert (=> d!1098378 (= (inv!53740 (tag!7000 (rule!8904 (h!45501 l!4295)))) (= (mod (str.len (value!195578 (tag!7000 (rule!8904 (h!45501 l!4295))))) 2) 0))))

(assert (=> b!3760016 d!1098378))

(declare-fun d!1098380 () Bool)

(declare-fun res!1522774 () Bool)

(declare-fun e!2325506 () Bool)

(assert (=> d!1098380 (=> (not res!1522774) (not e!2325506))))

(assert (=> d!1098380 (= res!1522774 (semiInverseModEq!2627 (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295)))) (toValue!8496 (transformation!6140 (rule!8904 (h!45501 l!4295))))))))

(assert (=> d!1098380 (= (inv!53743 (transformation!6140 (rule!8904 (h!45501 l!4295)))) e!2325506)))

(declare-fun b!3760228 () Bool)

(assert (=> b!3760228 (= e!2325506 (equivClasses!2526 (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295)))) (toValue!8496 (transformation!6140 (rule!8904 (h!45501 l!4295))))))))

(assert (= (and d!1098380 res!1522774) b!3760228))

(declare-fun m!4254179 () Bool)

(assert (=> d!1098380 m!4254179))

(declare-fun m!4254181 () Bool)

(assert (=> b!3760228 m!4254181))

(assert (=> b!3760016 d!1098380))

(declare-fun d!1098382 () Bool)

(declare-fun res!1522775 () Bool)

(declare-fun e!2325507 () Bool)

(assert (=> d!1098382 (=> (not res!1522775) (not e!2325507))))

(assert (=> d!1098382 (= res!1522775 (not (isEmpty!23570 (originalCharacters!6740 separatorToken!124))))))

(assert (=> d!1098382 (= (inv!53744 separatorToken!124) e!2325507)))

(declare-fun b!3760229 () Bool)

(declare-fun res!1522776 () Bool)

(assert (=> b!3760229 (=> (not res!1522776) (not e!2325507))))

(assert (=> b!3760229 (= res!1522776 (= (originalCharacters!6740 separatorToken!124) (list!14792 (dynLambda!17330 (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124))) (value!195579 separatorToken!124)))))))

(declare-fun b!3760230 () Bool)

(assert (=> b!3760230 (= e!2325507 (= (size!30164 separatorToken!124) (size!30166 (originalCharacters!6740 separatorToken!124))))))

(assert (= (and d!1098382 res!1522775) b!3760229))

(assert (= (and b!3760229 res!1522776) b!3760230))

(declare-fun b_lambda!110297 () Bool)

(assert (=> (not b_lambda!110297) (not b!3760229)))

(assert (=> b!3760229 t!303768))

(declare-fun b_and!279291 () Bool)

(assert (= b_and!279283 (and (=> t!303768 result!262722) b_and!279291)))

(assert (=> b!3760229 t!303770))

(declare-fun b_and!279293 () Bool)

(assert (= b_and!279285 (and (=> t!303770 result!262724) b_and!279293)))

(declare-fun m!4254191 () Bool)

(assert (=> d!1098382 m!4254191))

(assert (=> b!3760229 m!4253983))

(assert (=> b!3760229 m!4253983))

(declare-fun m!4254193 () Bool)

(assert (=> b!3760229 m!4254193))

(declare-fun m!4254195 () Bool)

(assert (=> b!3760230 m!4254195))

(assert (=> start!352972 d!1098382))

(declare-fun b!3760240 () Bool)

(declare-fun e!2325512 () Bool)

(declare-fun tp!1148879 () Bool)

(assert (=> b!3760240 (= e!2325512 (and tp_is_empty!19085 tp!1148879))))

(assert (=> b!3760017 (= tp!1148824 e!2325512)))

(assert (= (and b!3760017 ((_ is Cons!40080) (originalCharacters!6740 (h!45501 l!4295)))) b!3760240))

(declare-fun b!3760254 () Bool)

(declare-fun b_free!100653 () Bool)

(declare-fun b_next!101357 () Bool)

(assert (=> b!3760254 (= b_free!100653 (not b_next!101357))))

(declare-fun tp!1148891 () Bool)

(declare-fun b_and!279295 () Bool)

(assert (=> b!3760254 (= tp!1148891 b_and!279295)))

(declare-fun b_free!100655 () Bool)

(declare-fun b_next!101359 () Bool)

(assert (=> b!3760254 (= b_free!100655 (not b_next!101359))))

(declare-fun t!303780 () Bool)

(declare-fun tb!215177 () Bool)

(assert (=> (and b!3760254 (= (toChars!8355 (transformation!6140 (rule!8904 (h!45501 (t!303758 l!4295))))) (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295))))) t!303780) tb!215177))

(declare-fun result!262744 () Bool)

(assert (= result!262744 result!262716))

(assert (=> b!3760057 t!303780))

(declare-fun t!303782 () Bool)

(declare-fun tb!215179 () Bool)

(assert (=> (and b!3760254 (= (toChars!8355 (transformation!6140 (rule!8904 (h!45501 (t!303758 l!4295))))) (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124)))) t!303782) tb!215179))

(declare-fun result!262746 () Bool)

(assert (= result!262746 result!262722))

(assert (=> d!1098304 t!303782))

(assert (=> d!1098366 t!303780))

(assert (=> b!3760229 t!303782))

(declare-fun tp!1148892 () Bool)

(declare-fun b_and!279297 () Bool)

(assert (=> b!3760254 (= tp!1148892 (and (=> t!303780 result!262744) (=> t!303782 result!262746) b_and!279297))))

(declare-fun e!2325525 () Bool)

(assert (=> b!3760019 (= tp!1148827 e!2325525)))

(declare-fun tp!1148894 () Bool)

(declare-fun e!2325527 () Bool)

(declare-fun e!2325528 () Bool)

(declare-fun b!3760253 () Bool)

(assert (=> b!3760253 (= e!2325527 (and tp!1148894 (inv!53740 (tag!7000 (rule!8904 (h!45501 (t!303758 l!4295))))) (inv!53743 (transformation!6140 (rule!8904 (h!45501 (t!303758 l!4295))))) e!2325528))))

(assert (=> b!3760254 (= e!2325528 (and tp!1148891 tp!1148892))))

(declare-fun e!2325529 () Bool)

(declare-fun b!3760252 () Bool)

(declare-fun tp!1148893 () Bool)

(assert (=> b!3760252 (= e!2325529 (and (inv!21 (value!195579 (h!45501 (t!303758 l!4295)))) e!2325527 tp!1148893))))

(declare-fun tp!1148890 () Bool)

(declare-fun b!3760251 () Bool)

(assert (=> b!3760251 (= e!2325525 (and (inv!53744 (h!45501 (t!303758 l!4295))) e!2325529 tp!1148890))))

(assert (= b!3760253 b!3760254))

(assert (= b!3760252 b!3760253))

(assert (= b!3760251 b!3760252))

(assert (= (and b!3760019 ((_ is Cons!40081) (t!303758 l!4295))) b!3760251))

(declare-fun m!4254197 () Bool)

(assert (=> b!3760253 m!4254197))

(declare-fun m!4254199 () Bool)

(assert (=> b!3760253 m!4254199))

(declare-fun m!4254201 () Bool)

(assert (=> b!3760252 m!4254201))

(declare-fun m!4254203 () Bool)

(assert (=> b!3760251 m!4254203))

(declare-fun b!3760255 () Bool)

(declare-fun e!2325531 () Bool)

(declare-fun tp!1148895 () Bool)

(assert (=> b!3760255 (= e!2325531 (and tp_is_empty!19085 tp!1148895))))

(assert (=> b!3760013 (= tp!1148825 e!2325531)))

(assert (= (and b!3760013 ((_ is Cons!40080) (t!303757 acc!415))) b!3760255))

(declare-fun b!3760256 () Bool)

(declare-fun e!2325532 () Bool)

(declare-fun tp!1148896 () Bool)

(assert (=> b!3760256 (= e!2325532 (and tp_is_empty!19085 tp!1148896))))

(assert (=> b!3760015 (= tp!1148823 e!2325532)))

(assert (= (and b!3760015 ((_ is Cons!40080) (originalCharacters!6740 separatorToken!124))) b!3760256))

(declare-fun b!3760267 () Bool)

(declare-fun e!2325535 () Bool)

(assert (=> b!3760267 (= e!2325535 tp_is_empty!19085)))

(declare-fun b!3760268 () Bool)

(declare-fun tp!1148910 () Bool)

(declare-fun tp!1148907 () Bool)

(assert (=> b!3760268 (= e!2325535 (and tp!1148910 tp!1148907))))

(declare-fun b!3760269 () Bool)

(declare-fun tp!1148909 () Bool)

(assert (=> b!3760269 (= e!2325535 tp!1148909)))

(assert (=> b!3760014 (= tp!1148828 e!2325535)))

(declare-fun b!3760270 () Bool)

(declare-fun tp!1148908 () Bool)

(declare-fun tp!1148911 () Bool)

(assert (=> b!3760270 (= e!2325535 (and tp!1148908 tp!1148911))))

(assert (= (and b!3760014 ((_ is ElementMatch!11045) (regex!6140 (rule!8904 separatorToken!124)))) b!3760267))

(assert (= (and b!3760014 ((_ is Concat!17416) (regex!6140 (rule!8904 separatorToken!124)))) b!3760268))

(assert (= (and b!3760014 ((_ is Star!11045) (regex!6140 (rule!8904 separatorToken!124)))) b!3760269))

(assert (= (and b!3760014 ((_ is Union!11045) (regex!6140 (rule!8904 separatorToken!124)))) b!3760270))

(declare-fun b!3760271 () Bool)

(declare-fun e!2325536 () Bool)

(assert (=> b!3760271 (= e!2325536 tp_is_empty!19085)))

(declare-fun b!3760272 () Bool)

(declare-fun tp!1148915 () Bool)

(declare-fun tp!1148912 () Bool)

(assert (=> b!3760272 (= e!2325536 (and tp!1148915 tp!1148912))))

(declare-fun b!3760273 () Bool)

(declare-fun tp!1148914 () Bool)

(assert (=> b!3760273 (= e!2325536 tp!1148914)))

(assert (=> b!3760016 (= tp!1148822 e!2325536)))

(declare-fun b!3760274 () Bool)

(declare-fun tp!1148913 () Bool)

(declare-fun tp!1148916 () Bool)

(assert (=> b!3760274 (= e!2325536 (and tp!1148913 tp!1148916))))

(assert (= (and b!3760016 ((_ is ElementMatch!11045) (regex!6140 (rule!8904 (h!45501 l!4295))))) b!3760271))

(assert (= (and b!3760016 ((_ is Concat!17416) (regex!6140 (rule!8904 (h!45501 l!4295))))) b!3760272))

(assert (= (and b!3760016 ((_ is Star!11045) (regex!6140 (rule!8904 (h!45501 l!4295))))) b!3760273))

(assert (= (and b!3760016 ((_ is Union!11045) (regex!6140 (rule!8904 (h!45501 l!4295))))) b!3760274))

(declare-fun b_lambda!110307 () Bool)

(assert (= b_lambda!110285 (or (and b!3760018 b_free!100643 (= (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124))) (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295)))))) (and b!3760012 b_free!100647) (and b!3760254 b_free!100655 (= (toChars!8355 (transformation!6140 (rule!8904 (h!45501 (t!303758 l!4295))))) (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295)))))) b_lambda!110307)))

(declare-fun b_lambda!110309 () Bool)

(assert (= b_lambda!110297 (or (and b!3760018 b_free!100643) (and b!3760012 b_free!100647 (= (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295)))) (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124))))) (and b!3760254 b_free!100655 (= (toChars!8355 (transformation!6140 (rule!8904 (h!45501 (t!303758 l!4295))))) (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124))))) b_lambda!110309)))

(declare-fun b_lambda!110311 () Bool)

(assert (= b_lambda!110295 (or (and b!3760018 b_free!100643 (= (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124))) (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295)))))) (and b!3760012 b_free!100647) (and b!3760254 b_free!100655 (= (toChars!8355 (transformation!6140 (rule!8904 (h!45501 (t!303758 l!4295))))) (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295)))))) b_lambda!110311)))

(declare-fun b_lambda!110313 () Bool)

(assert (= b_lambda!110287 (or (and b!3760018 b_free!100643) (and b!3760012 b_free!100647 (= (toChars!8355 (transformation!6140 (rule!8904 (h!45501 l!4295)))) (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124))))) (and b!3760254 b_free!100655 (= (toChars!8355 (transformation!6140 (rule!8904 (h!45501 (t!303758 l!4295))))) (toChars!8355 (transformation!6140 (rule!8904 separatorToken!124))))) b_lambda!110313)))

(check-sat b_and!279291 (not d!1098380) (not tb!215165) (not b_next!101357) (not b!3760228) (not b!3760252) (not d!1098382) b_and!279255 (not d!1098356) (not b!3760057) (not d!1098338) tp_is_empty!19085 (not d!1098354) (not b_next!101349) (not b!3760127) b_and!279295 (not b!3760189) (not b!3760174) (not d!1098304) b_and!279251 (not b!3760173) (not b_lambda!110309) (not b!3760122) (not b_next!101359) (not d!1098360) (not d!1098376) (not b!3760144) (not b!3760187) (not b_next!101345) (not b!3760251) b_and!279293 (not b!3760037) (not b!3760109) (not b!3760223) (not b_lambda!110307) (not b!3760105) (not b_lambda!110311) (not d!1098366) (not b!3760108) (not b!3760230) (not tb!215161) (not b!3760240) (not b!3760179) (not b!3760132) (not d!1098310) (not d!1098296) (not b_lambda!110313) (not d!1098328) (not b!3760104) (not b!3760273) (not b!3760270) (not b!3760036) (not d!1098340) (not b!3760229) (not b!3760272) (not b!3760123) (not b!3760256) (not b!3760133) (not d!1098318) (not b!3760186) (not b!3760255) (not b_next!101351) (not d!1098322) b_and!279297 (not b!3760071) (not b!3760058) (not b!3760274) (not b!3760039) (not b!3760076) (not b!3760253) (not d!1098332) (not b!3760113) (not b!3760126) (not d!1098320) (not b!3760268) (not b!3760112) (not b!3760269) (not b!3760166) (not b_next!101347))
(check-sat b_and!279291 b_and!279255 (not b_next!101349) b_and!279295 b_and!279251 (not b_next!101359) (not b_next!101357) (not b_next!101351) b_and!279297 (not b_next!101347) (not b_next!101345) b_and!279293)
