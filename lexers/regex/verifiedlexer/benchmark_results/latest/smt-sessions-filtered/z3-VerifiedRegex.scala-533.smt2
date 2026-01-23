; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14554 () Bool)

(assert start!14554)

(declare-fun b!138757 () Bool)

(declare-fun b_free!4267 () Bool)

(declare-fun b_next!4267 () Bool)

(assert (=> b!138757 (= b_free!4267 (not b_next!4267))))

(declare-fun tp!72808 () Bool)

(declare-fun b_and!6473 () Bool)

(assert (=> b!138757 (= tp!72808 b_and!6473)))

(declare-fun b_free!4269 () Bool)

(declare-fun b_next!4269 () Bool)

(assert (=> b!138757 (= b_free!4269 (not b_next!4269))))

(declare-fun tp!72809 () Bool)

(declare-fun b_and!6475 () Bool)

(assert (=> b!138757 (= tp!72809 b_and!6475)))

(declare-fun b!138752 () Bool)

(declare-fun b_free!4271 () Bool)

(declare-fun b_next!4271 () Bool)

(assert (=> b!138752 (= b_free!4271 (not b_next!4271))))

(declare-fun tp!72806 () Bool)

(declare-fun b_and!6477 () Bool)

(assert (=> b!138752 (= tp!72806 b_and!6477)))

(declare-fun b_free!4273 () Bool)

(declare-fun b_next!4273 () Bool)

(assert (=> b!138752 (= b_free!4273 (not b_next!4273))))

(declare-fun tp!72795 () Bool)

(declare-fun b_and!6479 () Bool)

(assert (=> b!138752 (= tp!72795 b_and!6479)))

(declare-fun b_free!4275 () Bool)

(declare-fun b_next!4275 () Bool)

(assert (=> start!14554 (= b_free!4275 (not b_next!4275))))

(declare-fun tp!72799 () Bool)

(declare-fun b_and!6481 () Bool)

(assert (=> start!14554 (= tp!72799 b_and!6481)))

(declare-fun b!138765 () Bool)

(declare-fun b_free!4277 () Bool)

(declare-fun b_next!4277 () Bool)

(assert (=> b!138765 (= b_free!4277 (not b_next!4277))))

(declare-fun tp!72798 () Bool)

(declare-fun b_and!6483 () Bool)

(assert (=> b!138765 (= tp!72798 b_and!6483)))

(declare-fun b_free!4279 () Bool)

(declare-fun b_next!4279 () Bool)

(assert (=> b!138765 (= b_free!4279 (not b_next!4279))))

(declare-fun tp!72796 () Bool)

(declare-fun b_and!6485 () Bool)

(assert (=> b!138765 (= tp!72796 b_and!6485)))

(declare-fun e!81335 () Bool)

(assert (=> b!138752 (= e!81335 (and tp!72806 tp!72795))))

(declare-fun e!81332 () Bool)

(declare-fun tp!72807 () Bool)

(declare-datatypes ((List!2353 0))(
  ( (Nil!2343) (Cons!2343 (h!7740 (_ BitVec 16)) (t!23019 List!2353)) )
))
(declare-datatypes ((TokenValue!411 0))(
  ( (FloatLiteralValue!822 (text!3322 List!2353)) (TokenValueExt!410 (__x!2311 Int)) (Broken!2055 (value!15376 List!2353)) (Object!420) (End!411) (Def!411) (Underscore!411) (Match!411) (Else!411) (Error!411) (Case!411) (If!411) (Extends!411) (Abstract!411) (Class!411) (Val!411) (DelimiterValue!822 (del!471 List!2353)) (KeywordValue!417 (value!15377 List!2353)) (CommentValue!822 (value!15378 List!2353)) (WhitespaceValue!822 (value!15379 List!2353)) (IndentationValue!411 (value!15380 List!2353)) (String!3134) (Int32!411) (Broken!2056 (value!15381 List!2353)) (Boolean!412) (Unit!1795) (OperatorValue!414 (op!471 List!2353)) (IdentifierValue!822 (value!15382 List!2353)) (IdentifierValue!823 (value!15383 List!2353)) (WhitespaceValue!823 (value!15384 List!2353)) (True!822) (False!822) (Broken!2057 (value!15385 List!2353)) (Broken!2058 (value!15386 List!2353)) (True!823) (RightBrace!411) (RightBracket!411) (Colon!411) (Null!411) (Comma!411) (LeftBracket!411) (False!823) (LeftBrace!411) (ImaginaryLiteralValue!411 (text!3323 List!2353)) (StringLiteralValue!1233 (value!15387 List!2353)) (EOFValue!411 (value!15388 List!2353)) (IdentValue!411 (value!15389 List!2353)) (DelimiterValue!823 (value!15390 List!2353)) (DedentValue!411 (value!15391 List!2353)) (NewLineValue!411 (value!15392 List!2353)) (IntegerValue!1233 (value!15393 (_ BitVec 32)) (text!3324 List!2353)) (IntegerValue!1234 (value!15394 Int) (text!3325 List!2353)) (Times!411) (Or!411) (Equal!411) (Minus!411) (Broken!2059 (value!15395 List!2353)) (And!411) (Div!411) (LessEqual!411) (Mod!411) (Concat!1024) (Not!411) (Plus!411) (SpaceValue!411 (value!15396 List!2353)) (IntegerValue!1235 (value!15397 Int) (text!3326 List!2353)) (StringLiteralValue!1234 (text!3327 List!2353)) (FloatLiteralValue!823 (text!3328 List!2353)) (BytesLiteralValue!411 (value!15398 List!2353)) (CommentValue!823 (value!15399 List!2353)) (StringLiteralValue!1235 (value!15400 List!2353)) (ErrorTokenValue!411 (msg!472 List!2353)) )
))
(declare-datatypes ((C!2148 0))(
  ( (C!2149 (val!960 Int)) )
))
(declare-datatypes ((List!2354 0))(
  ( (Nil!2344) (Cons!2344 (h!7741 C!2148) (t!23020 List!2354)) )
))
(declare-datatypes ((IArray!1239 0))(
  ( (IArray!1240 (innerList!677 List!2354)) )
))
(declare-datatypes ((Conc!619 0))(
  ( (Node!619 (left!1800 Conc!619) (right!2130 Conc!619) (csize!1468 Int) (cheight!830 Int)) (Leaf!1153 (xs!3214 IArray!1239) (csize!1469 Int)) (Empty!619) )
))
(declare-datatypes ((BalanceConc!1246 0))(
  ( (BalanceConc!1247 (c!29106 Conc!619)) )
))
(declare-datatypes ((TokenValueInjection!594 0))(
  ( (TokenValueInjection!595 (toValue!1000 Int) (toChars!859 Int)) )
))
(declare-datatypes ((Regex!613 0))(
  ( (ElementMatch!613 (c!29107 C!2148)) (Concat!1025 (regOne!1738 Regex!613) (regTwo!1738 Regex!613)) (EmptyExpr!613) (Star!613 (reg!942 Regex!613)) (EmptyLang!613) (Union!613 (regOne!1739 Regex!613) (regTwo!1739 Regex!613)) )
))
(declare-datatypes ((String!3135 0))(
  ( (String!3136 (value!15401 String)) )
))
(declare-datatypes ((Rule!578 0))(
  ( (Rule!579 (regex!389 Regex!613) (tag!567 String!3135) (isSeparator!389 Bool) (transformation!389 TokenValueInjection!594)) )
))
(declare-datatypes ((Token!522 0))(
  ( (Token!523 (value!15402 TokenValue!411) (rule!896 Rule!578) (size!2076 Int) (originalCharacters!432 List!2354)) )
))
(declare-datatypes ((List!2355 0))(
  ( (Nil!2345) (Cons!2345 (h!7742 Token!522) (t!23021 List!2355)) )
))
(declare-fun l1!3130 () List!2355)

(declare-fun e!81333 () Bool)

(declare-fun b!138753 () Bool)

(declare-fun inv!21 (TokenValue!411) Bool)

(assert (=> b!138753 (= e!81332 (and (inv!21 (value!15402 (h!7742 l1!3130))) e!81333 tp!72807))))

(declare-fun b!138755 () Bool)

(declare-fun res!64752 () Bool)

(declare-fun e!81328 () Bool)

(assert (=> b!138755 (=> (not res!64752) (not e!81328))))

(declare-fun isEmpty!896 (List!2355) Bool)

(assert (=> b!138755 (= res!64752 (not (isEmpty!896 l1!3130)))))

(declare-fun b!138756 () Bool)

(declare-fun res!64750 () Bool)

(assert (=> b!138756 (=> (not res!64750) (not e!81328))))

(declare-datatypes ((List!2356 0))(
  ( (Nil!2346) (Cons!2346 (h!7743 Rule!578) (t!23022 List!2356)) )
))
(declare-fun rules!4268 () List!2356)

(declare-fun p!3028 () Int)

(declare-fun l2!3099 () List!2355)

(declare-fun dynLambda!777 (Int Token!522 Token!522 List!2356) Bool)

(declare-fun last!25 (List!2355) Token!522)

(declare-fun head!552 (List!2355) Token!522)

(assert (=> b!138756 (= res!64750 (dynLambda!777 p!3028 (last!25 l1!3130) (head!552 l2!3099) rules!4268))))

(declare-fun e!81323 () Bool)

(assert (=> b!138757 (= e!81323 (and tp!72808 tp!72809))))

(declare-fun tp!72804 () Bool)

(declare-fun e!81334 () Bool)

(declare-fun b!138758 () Bool)

(declare-fun inv!3085 (String!3135) Bool)

(declare-fun inv!3088 (TokenValueInjection!594) Bool)

(assert (=> b!138758 (= e!81334 (and tp!72804 (inv!3085 (tag!567 (rule!896 (h!7742 l2!3099)))) (inv!3088 (transformation!389 (rule!896 (h!7742 l2!3099)))) e!81323))))

(declare-fun tp!72800 () Bool)

(declare-fun e!81326 () Bool)

(declare-fun b!138759 () Bool)

(assert (=> b!138759 (= e!81326 (and tp!72800 (inv!3085 (tag!567 (h!7743 rules!4268))) (inv!3088 (transformation!389 (h!7743 rules!4268))) e!81335))))

(declare-fun b!138760 () Bool)

(declare-fun size!2077 (List!2355) Int)

(assert (=> b!138760 (= e!81328 (< (size!2077 l1!3130) 0))))

(declare-fun b!138761 () Bool)

(declare-fun res!64751 () Bool)

(assert (=> b!138761 (=> (not res!64751) (not e!81328))))

(assert (=> b!138761 (= res!64751 (not (isEmpty!896 l2!3099)))))

(declare-fun b!138762 () Bool)

(declare-fun res!64753 () Bool)

(assert (=> b!138762 (=> (not res!64753) (not e!81328))))

(declare-datatypes ((LexerInterface!277 0))(
  ( (LexerInterfaceExt!274 (__x!2312 Int)) (Lexer!275) )
))
(declare-fun thiss!27322 () LexerInterface!277)

(declare-fun tokensListTwoByTwoPredicateList!16 (LexerInterface!277 List!2355 List!2356 Int) Bool)

(assert (=> b!138762 (= res!64753 (tokensListTwoByTwoPredicateList!16 thiss!27322 l2!3099 rules!4268 p!3028))))

(declare-fun e!81331 () Bool)

(declare-fun tp!72802 () Bool)

(declare-fun b!138754 () Bool)

(declare-fun inv!3089 (Token!522) Bool)

(assert (=> b!138754 (= e!81331 (and (inv!3089 (h!7742 l1!3130)) e!81332 tp!72802))))

(declare-fun res!64748 () Bool)

(assert (=> start!14554 (=> (not res!64748) (not e!81328))))

(get-info :version)

(assert (=> start!14554 (= res!64748 ((_ is Lexer!275) thiss!27322))))

(assert (=> start!14554 e!81328))

(assert (=> start!14554 true))

(declare-fun e!81321 () Bool)

(assert (=> start!14554 e!81321))

(assert (=> start!14554 tp!72799))

(assert (=> start!14554 e!81331))

(declare-fun e!81324 () Bool)

(assert (=> start!14554 e!81324))

(declare-fun e!81325 () Bool)

(declare-fun tp!72797 () Bool)

(declare-fun b!138763 () Bool)

(assert (=> b!138763 (= e!81333 (and tp!72797 (inv!3085 (tag!567 (rule!896 (h!7742 l1!3130)))) (inv!3088 (transformation!389 (rule!896 (h!7742 l1!3130)))) e!81325))))

(declare-fun e!81329 () Bool)

(declare-fun b!138764 () Bool)

(declare-fun tp!72805 () Bool)

(assert (=> b!138764 (= e!81324 (and (inv!3089 (h!7742 l2!3099)) e!81329 tp!72805))))

(assert (=> b!138765 (= e!81325 (and tp!72798 tp!72796))))

(declare-fun b!138766 () Bool)

(declare-fun tp!72803 () Bool)

(assert (=> b!138766 (= e!81321 (and e!81326 tp!72803))))

(declare-fun b!138767 () Bool)

(declare-fun res!64749 () Bool)

(assert (=> b!138767 (=> (not res!64749) (not e!81328))))

(assert (=> b!138767 (= res!64749 (tokensListTwoByTwoPredicateList!16 thiss!27322 l1!3130 rules!4268 p!3028))))

(declare-fun tp!72801 () Bool)

(declare-fun b!138768 () Bool)

(assert (=> b!138768 (= e!81329 (and (inv!21 (value!15402 (h!7742 l2!3099))) e!81334 tp!72801))))

(assert (= (and start!14554 res!64748) b!138767))

(assert (= (and b!138767 res!64749) b!138762))

(assert (= (and b!138762 res!64753) b!138755))

(assert (= (and b!138755 res!64752) b!138761))

(assert (= (and b!138761 res!64751) b!138756))

(assert (= (and b!138756 res!64750) b!138760))

(assert (= b!138759 b!138752))

(assert (= b!138766 b!138759))

(assert (= (and start!14554 ((_ is Cons!2346) rules!4268)) b!138766))

(assert (= b!138763 b!138765))

(assert (= b!138753 b!138763))

(assert (= b!138754 b!138753))

(assert (= (and start!14554 ((_ is Cons!2345) l1!3130)) b!138754))

(assert (= b!138758 b!138757))

(assert (= b!138768 b!138758))

(assert (= b!138764 b!138768))

(assert (= (and start!14554 ((_ is Cons!2345) l2!3099)) b!138764))

(declare-fun b_lambda!1801 () Bool)

(assert (=> (not b_lambda!1801) (not b!138756)))

(declare-fun t!23018 () Bool)

(declare-fun tb!3747 () Bool)

(assert (=> (and start!14554 (= p!3028 p!3028) t!23018) tb!3747))

(declare-fun result!5858 () Bool)

(assert (=> tb!3747 (= result!5858 true)))

(assert (=> b!138756 t!23018))

(declare-fun b_and!6487 () Bool)

(assert (= b_and!6481 (and (=> t!23018 result!5858) b_and!6487)))

(declare-fun m!122463 () Bool)

(assert (=> b!138764 m!122463))

(declare-fun m!122465 () Bool)

(assert (=> b!138754 m!122465))

(declare-fun m!122467 () Bool)

(assert (=> b!138768 m!122467))

(declare-fun m!122469 () Bool)

(assert (=> b!138755 m!122469))

(declare-fun m!122471 () Bool)

(assert (=> b!138762 m!122471))

(declare-fun m!122473 () Bool)

(assert (=> b!138758 m!122473))

(declare-fun m!122475 () Bool)

(assert (=> b!138758 m!122475))

(declare-fun m!122477 () Bool)

(assert (=> b!138763 m!122477))

(declare-fun m!122479 () Bool)

(assert (=> b!138763 m!122479))

(declare-fun m!122481 () Bool)

(assert (=> b!138761 m!122481))

(declare-fun m!122483 () Bool)

(assert (=> b!138767 m!122483))

(declare-fun m!122485 () Bool)

(assert (=> b!138753 m!122485))

(declare-fun m!122487 () Bool)

(assert (=> b!138759 m!122487))

(declare-fun m!122489 () Bool)

(assert (=> b!138759 m!122489))

(declare-fun m!122491 () Bool)

(assert (=> b!138760 m!122491))

(declare-fun m!122493 () Bool)

(assert (=> b!138756 m!122493))

(declare-fun m!122495 () Bool)

(assert (=> b!138756 m!122495))

(assert (=> b!138756 m!122493))

(assert (=> b!138756 m!122495))

(declare-fun m!122497 () Bool)

(assert (=> b!138756 m!122497))

(check-sat (not b_next!4279) b_and!6477 b_and!6473 b_and!6475 (not b!138762) (not b!138759) (not b!138767) (not b_next!4273) b_and!6479 (not b!138760) (not b!138758) b_and!6485 (not b!138764) b_and!6483 (not b_lambda!1801) (not b!138763) (not b!138755) (not b!138754) (not b!138768) (not b!138766) (not b_next!4269) b_and!6487 (not b_next!4267) (not b_next!4271) (not b!138756) (not b!138753) (not b_next!4277) (not b_next!4275) (not b!138761))
(check-sat b_and!6485 b_and!6483 (not b_next!4279) b_and!6477 b_and!6473 b_and!6475 (not b_next!4273) b_and!6479 (not b_next!4277) (not b_next!4275) (not b_next!4269) b_and!6487 (not b_next!4267) (not b_next!4271))
(get-model)

(declare-fun b_lambda!1803 () Bool)

(assert (= b_lambda!1801 (or (and start!14554 b_free!4275) b_lambda!1803)))

(check-sat b_and!6483 (not b_next!4279) b_and!6477 b_and!6473 b_and!6475 (not b!138762) (not b!138759) (not b!138767) (not b_next!4273) b_and!6479 (not b!138760) (not b!138758) b_and!6485 (not b!138764) (not b!138763) (not b!138755) (not b!138754) (not b!138768) (not b!138766) (not b_next!4269) b_and!6487 (not b_next!4267) (not b_next!4271) (not b!138756) (not b!138753) (not b_next!4277) (not b_next!4275) (not b_lambda!1803) (not b!138761))
(check-sat b_and!6485 b_and!6483 (not b_next!4279) b_and!6477 b_and!6473 b_and!6475 (not b_next!4273) b_and!6479 (not b_next!4277) (not b_next!4275) (not b_next!4269) b_and!6487 (not b_next!4267) (not b_next!4271))
(get-model)

(declare-fun d!33006 () Bool)

(assert (=> d!33006 (= (inv!3085 (tag!567 (rule!896 (h!7742 l2!3099)))) (= (mod (str.len (value!15401 (tag!567 (rule!896 (h!7742 l2!3099))))) 2) 0))))

(assert (=> b!138758 d!33006))

(declare-fun d!33008 () Bool)

(declare-fun res!64756 () Bool)

(declare-fun e!81338 () Bool)

(assert (=> d!33008 (=> (not res!64756) (not e!81338))))

(declare-fun semiInverseModEq!126 (Int Int) Bool)

(assert (=> d!33008 (= res!64756 (semiInverseModEq!126 (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099)))) (toValue!1000 (transformation!389 (rule!896 (h!7742 l2!3099))))))))

(assert (=> d!33008 (= (inv!3088 (transformation!389 (rule!896 (h!7742 l2!3099)))) e!81338)))

(declare-fun b!138771 () Bool)

(declare-fun equivClasses!109 (Int Int) Bool)

(assert (=> b!138771 (= e!81338 (equivClasses!109 (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099)))) (toValue!1000 (transformation!389 (rule!896 (h!7742 l2!3099))))))))

(assert (= (and d!33008 res!64756) b!138771))

(declare-fun m!122499 () Bool)

(assert (=> d!33008 m!122499))

(declare-fun m!122501 () Bool)

(assert (=> b!138771 m!122501))

(assert (=> b!138758 d!33008))

(declare-fun d!33010 () Bool)

(assert (=> d!33010 (= (inv!3085 (tag!567 (h!7743 rules!4268))) (= (mod (str.len (value!15401 (tag!567 (h!7743 rules!4268)))) 2) 0))))

(assert (=> b!138759 d!33010))

(declare-fun d!33012 () Bool)

(declare-fun res!64757 () Bool)

(declare-fun e!81339 () Bool)

(assert (=> d!33012 (=> (not res!64757) (not e!81339))))

(assert (=> d!33012 (= res!64757 (semiInverseModEq!126 (toChars!859 (transformation!389 (h!7743 rules!4268))) (toValue!1000 (transformation!389 (h!7743 rules!4268)))))))

(assert (=> d!33012 (= (inv!3088 (transformation!389 (h!7743 rules!4268))) e!81339)))

(declare-fun b!138772 () Bool)

(assert (=> b!138772 (= e!81339 (equivClasses!109 (toChars!859 (transformation!389 (h!7743 rules!4268))) (toValue!1000 (transformation!389 (h!7743 rules!4268)))))))

(assert (= (and d!33012 res!64757) b!138772))

(declare-fun m!122503 () Bool)

(assert (=> d!33012 m!122503))

(declare-fun m!122505 () Bool)

(assert (=> b!138772 m!122505))

(assert (=> b!138759 d!33012))

(declare-fun d!33014 () Bool)

(declare-fun lt!41071 () Int)

(assert (=> d!33014 (>= lt!41071 0)))

(declare-fun e!81342 () Int)

(assert (=> d!33014 (= lt!41071 e!81342)))

(declare-fun c!29110 () Bool)

(assert (=> d!33014 (= c!29110 ((_ is Nil!2345) l1!3130))))

(assert (=> d!33014 (= (size!2077 l1!3130) lt!41071)))

(declare-fun b!138777 () Bool)

(assert (=> b!138777 (= e!81342 0)))

(declare-fun b!138778 () Bool)

(assert (=> b!138778 (= e!81342 (+ 1 (size!2077 (t!23021 l1!3130))))))

(assert (= (and d!33014 c!29110) b!138777))

(assert (= (and d!33014 (not c!29110)) b!138778))

(declare-fun m!122507 () Bool)

(assert (=> b!138778 m!122507))

(assert (=> b!138760 d!33014))

(declare-fun d!33016 () Bool)

(assert (=> d!33016 (= (isEmpty!896 l2!3099) ((_ is Nil!2345) l2!3099))))

(assert (=> b!138761 d!33016))

(declare-fun d!33018 () Bool)

(declare-fun res!64762 () Bool)

(declare-fun e!81347 () Bool)

(assert (=> d!33018 (=> res!64762 e!81347)))

(assert (=> d!33018 (= res!64762 (or (not ((_ is Cons!2345) l2!3099)) (not ((_ is Cons!2345) (t!23021 l2!3099)))))))

(assert (=> d!33018 (= (tokensListTwoByTwoPredicateList!16 thiss!27322 l2!3099 rules!4268 p!3028) e!81347)))

(declare-fun b!138783 () Bool)

(declare-fun e!81348 () Bool)

(assert (=> b!138783 (= e!81347 e!81348)))

(declare-fun res!64763 () Bool)

(assert (=> b!138783 (=> (not res!64763) (not e!81348))))

(assert (=> b!138783 (= res!64763 (dynLambda!777 p!3028 (h!7742 l2!3099) (h!7742 (t!23021 l2!3099)) rules!4268))))

(declare-fun b!138784 () Bool)

(assert (=> b!138784 (= e!81348 (tokensListTwoByTwoPredicateList!16 thiss!27322 (Cons!2345 (h!7742 (t!23021 l2!3099)) (t!23021 (t!23021 l2!3099))) rules!4268 p!3028))))

(assert (= (and d!33018 (not res!64762)) b!138783))

(assert (= (and b!138783 res!64763) b!138784))

(declare-fun b_lambda!1807 () Bool)

(assert (=> (not b_lambda!1807) (not b!138783)))

(declare-fun t!23024 () Bool)

(declare-fun tb!3749 () Bool)

(assert (=> (and start!14554 (= p!3028 p!3028) t!23024) tb!3749))

(declare-fun result!5860 () Bool)

(assert (=> tb!3749 (= result!5860 true)))

(assert (=> b!138783 t!23024))

(declare-fun b_and!6489 () Bool)

(assert (= b_and!6487 (and (=> t!23024 result!5860) b_and!6489)))

(declare-fun m!122509 () Bool)

(assert (=> b!138783 m!122509))

(declare-fun m!122511 () Bool)

(assert (=> b!138784 m!122511))

(assert (=> b!138762 d!33018))

(declare-fun d!33020 () Bool)

(assert (=> d!33020 (= (inv!3085 (tag!567 (rule!896 (h!7742 l1!3130)))) (= (mod (str.len (value!15401 (tag!567 (rule!896 (h!7742 l1!3130))))) 2) 0))))

(assert (=> b!138763 d!33020))

(declare-fun d!33022 () Bool)

(declare-fun res!64764 () Bool)

(declare-fun e!81349 () Bool)

(assert (=> d!33022 (=> (not res!64764) (not e!81349))))

(assert (=> d!33022 (= res!64764 (semiInverseModEq!126 (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130)))) (toValue!1000 (transformation!389 (rule!896 (h!7742 l1!3130))))))))

(assert (=> d!33022 (= (inv!3088 (transformation!389 (rule!896 (h!7742 l1!3130)))) e!81349)))

(declare-fun b!138785 () Bool)

(assert (=> b!138785 (= e!81349 (equivClasses!109 (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130)))) (toValue!1000 (transformation!389 (rule!896 (h!7742 l1!3130))))))))

(assert (= (and d!33022 res!64764) b!138785))

(declare-fun m!122513 () Bool)

(assert (=> d!33022 m!122513))

(declare-fun m!122515 () Bool)

(assert (=> b!138785 m!122515))

(assert (=> b!138763 d!33022))

(declare-fun b!138802 () Bool)

(declare-fun e!81359 () Bool)

(declare-fun e!81360 () Bool)

(assert (=> b!138802 (= e!81359 e!81360)))

(declare-fun c!29119 () Bool)

(assert (=> b!138802 (= c!29119 ((_ is IntegerValue!1234) (value!15402 (h!7742 l1!3130))))))

(declare-fun b!138803 () Bool)

(declare-fun res!64767 () Bool)

(declare-fun e!81361 () Bool)

(assert (=> b!138803 (=> res!64767 e!81361)))

(assert (=> b!138803 (= res!64767 (not ((_ is IntegerValue!1235) (value!15402 (h!7742 l1!3130)))))))

(assert (=> b!138803 (= e!81360 e!81361)))

(declare-fun b!138804 () Bool)

(declare-fun inv!16 (TokenValue!411) Bool)

(assert (=> b!138804 (= e!81359 (inv!16 (value!15402 (h!7742 l1!3130))))))

(declare-fun d!33026 () Bool)

(declare-fun c!29118 () Bool)

(assert (=> d!33026 (= c!29118 ((_ is IntegerValue!1233) (value!15402 (h!7742 l1!3130))))))

(assert (=> d!33026 (= (inv!21 (value!15402 (h!7742 l1!3130))) e!81359)))

(declare-fun b!138805 () Bool)

(declare-fun inv!17 (TokenValue!411) Bool)

(assert (=> b!138805 (= e!81360 (inv!17 (value!15402 (h!7742 l1!3130))))))

(declare-fun b!138806 () Bool)

(declare-fun inv!15 (TokenValue!411) Bool)

(assert (=> b!138806 (= e!81361 (inv!15 (value!15402 (h!7742 l1!3130))))))

(assert (= (and d!33026 c!29118) b!138804))

(assert (= (and d!33026 (not c!29118)) b!138802))

(assert (= (and b!138802 c!29119) b!138805))

(assert (= (and b!138802 (not c!29119)) b!138803))

(assert (= (and b!138803 (not res!64767)) b!138806))

(declare-fun m!122519 () Bool)

(assert (=> b!138804 m!122519))

(declare-fun m!122521 () Bool)

(assert (=> b!138805 m!122521))

(declare-fun m!122523 () Bool)

(assert (=> b!138806 m!122523))

(assert (=> b!138753 d!33026))

(declare-fun d!33030 () Bool)

(declare-fun res!64772 () Bool)

(declare-fun e!81364 () Bool)

(assert (=> d!33030 (=> (not res!64772) (not e!81364))))

(declare-fun isEmpty!897 (List!2354) Bool)

(assert (=> d!33030 (= res!64772 (not (isEmpty!897 (originalCharacters!432 (h!7742 l2!3099)))))))

(assert (=> d!33030 (= (inv!3089 (h!7742 l2!3099)) e!81364)))

(declare-fun b!138811 () Bool)

(declare-fun res!64773 () Bool)

(assert (=> b!138811 (=> (not res!64773) (not e!81364))))

(declare-fun list!828 (BalanceConc!1246) List!2354)

(declare-fun dynLambda!778 (Int TokenValue!411) BalanceConc!1246)

(assert (=> b!138811 (= res!64773 (= (originalCharacters!432 (h!7742 l2!3099)) (list!828 (dynLambda!778 (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099)))) (value!15402 (h!7742 l2!3099))))))))

(declare-fun b!138812 () Bool)

(declare-fun size!2078 (List!2354) Int)

(assert (=> b!138812 (= e!81364 (= (size!2076 (h!7742 l2!3099)) (size!2078 (originalCharacters!432 (h!7742 l2!3099)))))))

(assert (= (and d!33030 res!64772) b!138811))

(assert (= (and b!138811 res!64773) b!138812))

(declare-fun b_lambda!1809 () Bool)

(assert (=> (not b_lambda!1809) (not b!138811)))

(declare-fun t!23026 () Bool)

(declare-fun tb!3751 () Bool)

(assert (=> (and b!138757 (= (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099)))) (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099))))) t!23026) tb!3751))

(declare-fun b!138820 () Bool)

(declare-fun e!81370 () Bool)

(declare-fun tp!72812 () Bool)

(declare-fun inv!3090 (Conc!619) Bool)

(assert (=> b!138820 (= e!81370 (and (inv!3090 (c!29106 (dynLambda!778 (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099)))) (value!15402 (h!7742 l2!3099))))) tp!72812))))

(declare-fun result!5862 () Bool)

(declare-fun inv!3091 (BalanceConc!1246) Bool)

(assert (=> tb!3751 (= result!5862 (and (inv!3091 (dynLambda!778 (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099)))) (value!15402 (h!7742 l2!3099)))) e!81370))))

(assert (= tb!3751 b!138820))

(declare-fun m!122529 () Bool)

(assert (=> b!138820 m!122529))

(declare-fun m!122531 () Bool)

(assert (=> tb!3751 m!122531))

(assert (=> b!138811 t!23026))

(declare-fun b_and!6491 () Bool)

(assert (= b_and!6475 (and (=> t!23026 result!5862) b_and!6491)))

(declare-fun t!23028 () Bool)

(declare-fun tb!3753 () Bool)

(assert (=> (and b!138752 (= (toChars!859 (transformation!389 (h!7743 rules!4268))) (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099))))) t!23028) tb!3753))

(declare-fun result!5866 () Bool)

(assert (= result!5866 result!5862))

(assert (=> b!138811 t!23028))

(declare-fun b_and!6493 () Bool)

(assert (= b_and!6479 (and (=> t!23028 result!5866) b_and!6493)))

(declare-fun tb!3755 () Bool)

(declare-fun t!23030 () Bool)

(assert (=> (and b!138765 (= (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130)))) (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099))))) t!23030) tb!3755))

(declare-fun result!5868 () Bool)

(assert (= result!5868 result!5862))

(assert (=> b!138811 t!23030))

(declare-fun b_and!6495 () Bool)

(assert (= b_and!6485 (and (=> t!23030 result!5868) b_and!6495)))

(declare-fun m!122533 () Bool)

(assert (=> d!33030 m!122533))

(declare-fun m!122535 () Bool)

(assert (=> b!138811 m!122535))

(assert (=> b!138811 m!122535))

(declare-fun m!122537 () Bool)

(assert (=> b!138811 m!122537))

(declare-fun m!122539 () Bool)

(assert (=> b!138812 m!122539))

(assert (=> b!138764 d!33030))

(declare-fun d!33036 () Bool)

(declare-fun res!64777 () Bool)

(declare-fun e!81371 () Bool)

(assert (=> d!33036 (=> (not res!64777) (not e!81371))))

(assert (=> d!33036 (= res!64777 (not (isEmpty!897 (originalCharacters!432 (h!7742 l1!3130)))))))

(assert (=> d!33036 (= (inv!3089 (h!7742 l1!3130)) e!81371)))

(declare-fun b!138821 () Bool)

(declare-fun res!64778 () Bool)

(assert (=> b!138821 (=> (not res!64778) (not e!81371))))

(assert (=> b!138821 (= res!64778 (= (originalCharacters!432 (h!7742 l1!3130)) (list!828 (dynLambda!778 (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130)))) (value!15402 (h!7742 l1!3130))))))))

(declare-fun b!138822 () Bool)

(assert (=> b!138822 (= e!81371 (= (size!2076 (h!7742 l1!3130)) (size!2078 (originalCharacters!432 (h!7742 l1!3130)))))))

(assert (= (and d!33036 res!64777) b!138821))

(assert (= (and b!138821 res!64778) b!138822))

(declare-fun b_lambda!1811 () Bool)

(assert (=> (not b_lambda!1811) (not b!138821)))

(declare-fun t!23032 () Bool)

(declare-fun tb!3757 () Bool)

(assert (=> (and b!138757 (= (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099)))) (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130))))) t!23032) tb!3757))

(declare-fun b!138823 () Bool)

(declare-fun e!81372 () Bool)

(declare-fun tp!72813 () Bool)

(assert (=> b!138823 (= e!81372 (and (inv!3090 (c!29106 (dynLambda!778 (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130)))) (value!15402 (h!7742 l1!3130))))) tp!72813))))

(declare-fun result!5870 () Bool)

(assert (=> tb!3757 (= result!5870 (and (inv!3091 (dynLambda!778 (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130)))) (value!15402 (h!7742 l1!3130)))) e!81372))))

(assert (= tb!3757 b!138823))

(declare-fun m!122541 () Bool)

(assert (=> b!138823 m!122541))

(declare-fun m!122543 () Bool)

(assert (=> tb!3757 m!122543))

(assert (=> b!138821 t!23032))

(declare-fun b_and!6497 () Bool)

(assert (= b_and!6491 (and (=> t!23032 result!5870) b_and!6497)))

(declare-fun t!23034 () Bool)

(declare-fun tb!3759 () Bool)

(assert (=> (and b!138752 (= (toChars!859 (transformation!389 (h!7743 rules!4268))) (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130))))) t!23034) tb!3759))

(declare-fun result!5872 () Bool)

(assert (= result!5872 result!5870))

(assert (=> b!138821 t!23034))

(declare-fun b_and!6499 () Bool)

(assert (= b_and!6493 (and (=> t!23034 result!5872) b_and!6499)))

(declare-fun t!23036 () Bool)

(declare-fun tb!3761 () Bool)

(assert (=> (and b!138765 (= (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130)))) (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130))))) t!23036) tb!3761))

(declare-fun result!5874 () Bool)

(assert (= result!5874 result!5870))

(assert (=> b!138821 t!23036))

(declare-fun b_and!6501 () Bool)

(assert (= b_and!6495 (and (=> t!23036 result!5874) b_and!6501)))

(declare-fun m!122545 () Bool)

(assert (=> d!33036 m!122545))

(declare-fun m!122547 () Bool)

(assert (=> b!138821 m!122547))

(assert (=> b!138821 m!122547))

(declare-fun m!122549 () Bool)

(assert (=> b!138821 m!122549))

(declare-fun m!122551 () Bool)

(assert (=> b!138822 m!122551))

(assert (=> b!138754 d!33036))

(declare-fun d!33038 () Bool)

(assert (=> d!33038 (= (isEmpty!896 l1!3130) ((_ is Nil!2345) l1!3130))))

(assert (=> b!138755 d!33038))

(declare-fun d!33040 () Bool)

(declare-fun lt!41077 () Token!522)

(declare-fun contains!373 (List!2355 Token!522) Bool)

(assert (=> d!33040 (contains!373 l1!3130 lt!41077)))

(declare-fun e!81382 () Token!522)

(assert (=> d!33040 (= lt!41077 e!81382)))

(declare-fun c!29122 () Bool)

(assert (=> d!33040 (= c!29122 (and ((_ is Cons!2345) l1!3130) ((_ is Nil!2345) (t!23021 l1!3130))))))

(assert (=> d!33040 (not (isEmpty!896 l1!3130))))

(assert (=> d!33040 (= (last!25 l1!3130) lt!41077)))

(declare-fun b!138835 () Bool)

(assert (=> b!138835 (= e!81382 (h!7742 l1!3130))))

(declare-fun b!138836 () Bool)

(assert (=> b!138836 (= e!81382 (last!25 (t!23021 l1!3130)))))

(assert (= (and d!33040 c!29122) b!138835))

(assert (= (and d!33040 (not c!29122)) b!138836))

(declare-fun m!122561 () Bool)

(assert (=> d!33040 m!122561))

(assert (=> d!33040 m!122469))

(declare-fun m!122563 () Bool)

(assert (=> b!138836 m!122563))

(assert (=> b!138756 d!33040))

(declare-fun d!33048 () Bool)

(assert (=> d!33048 (= (head!552 l2!3099) (h!7742 l2!3099))))

(assert (=> b!138756 d!33048))

(declare-fun d!33050 () Bool)

(declare-fun res!64788 () Bool)

(declare-fun e!81385 () Bool)

(assert (=> d!33050 (=> res!64788 e!81385)))

(assert (=> d!33050 (= res!64788 (or (not ((_ is Cons!2345) l1!3130)) (not ((_ is Cons!2345) (t!23021 l1!3130)))))))

(assert (=> d!33050 (= (tokensListTwoByTwoPredicateList!16 thiss!27322 l1!3130 rules!4268 p!3028) e!81385)))

(declare-fun b!138839 () Bool)

(declare-fun e!81386 () Bool)

(assert (=> b!138839 (= e!81385 e!81386)))

(declare-fun res!64789 () Bool)

(assert (=> b!138839 (=> (not res!64789) (not e!81386))))

(assert (=> b!138839 (= res!64789 (dynLambda!777 p!3028 (h!7742 l1!3130) (h!7742 (t!23021 l1!3130)) rules!4268))))

(declare-fun b!138840 () Bool)

(assert (=> b!138840 (= e!81386 (tokensListTwoByTwoPredicateList!16 thiss!27322 (Cons!2345 (h!7742 (t!23021 l1!3130)) (t!23021 (t!23021 l1!3130))) rules!4268 p!3028))))

(assert (= (and d!33050 (not res!64788)) b!138839))

(assert (= (and b!138839 res!64789) b!138840))

(declare-fun b_lambda!1817 () Bool)

(assert (=> (not b_lambda!1817) (not b!138839)))

(declare-fun t!23042 () Bool)

(declare-fun tb!3767 () Bool)

(assert (=> (and start!14554 (= p!3028 p!3028) t!23042) tb!3767))

(declare-fun result!5880 () Bool)

(assert (=> tb!3767 (= result!5880 true)))

(assert (=> b!138839 t!23042))

(declare-fun b_and!6507 () Bool)

(assert (= b_and!6489 (and (=> t!23042 result!5880) b_and!6507)))

(declare-fun m!122569 () Bool)

(assert (=> b!138839 m!122569))

(declare-fun m!122571 () Bool)

(assert (=> b!138840 m!122571))

(assert (=> b!138767 d!33050))

(declare-fun b!138841 () Bool)

(declare-fun e!81387 () Bool)

(declare-fun e!81388 () Bool)

(assert (=> b!138841 (= e!81387 e!81388)))

(declare-fun c!29124 () Bool)

(assert (=> b!138841 (= c!29124 ((_ is IntegerValue!1234) (value!15402 (h!7742 l2!3099))))))

(declare-fun b!138842 () Bool)

(declare-fun res!64790 () Bool)

(declare-fun e!81389 () Bool)

(assert (=> b!138842 (=> res!64790 e!81389)))

(assert (=> b!138842 (= res!64790 (not ((_ is IntegerValue!1235) (value!15402 (h!7742 l2!3099)))))))

(assert (=> b!138842 (= e!81388 e!81389)))

(declare-fun b!138843 () Bool)

(assert (=> b!138843 (= e!81387 (inv!16 (value!15402 (h!7742 l2!3099))))))

(declare-fun d!33054 () Bool)

(declare-fun c!29123 () Bool)

(assert (=> d!33054 (= c!29123 ((_ is IntegerValue!1233) (value!15402 (h!7742 l2!3099))))))

(assert (=> d!33054 (= (inv!21 (value!15402 (h!7742 l2!3099))) e!81387)))

(declare-fun b!138844 () Bool)

(assert (=> b!138844 (= e!81388 (inv!17 (value!15402 (h!7742 l2!3099))))))

(declare-fun b!138845 () Bool)

(assert (=> b!138845 (= e!81389 (inv!15 (value!15402 (h!7742 l2!3099))))))

(assert (= (and d!33054 c!29123) b!138843))

(assert (= (and d!33054 (not c!29123)) b!138841))

(assert (= (and b!138841 c!29124) b!138844))

(assert (= (and b!138841 (not c!29124)) b!138842))

(assert (= (and b!138842 (not res!64790)) b!138845))

(declare-fun m!122573 () Bool)

(assert (=> b!138843 m!122573))

(declare-fun m!122575 () Bool)

(assert (=> b!138844 m!122575))

(declare-fun m!122577 () Bool)

(assert (=> b!138845 m!122577))

(assert (=> b!138768 d!33054))

(declare-fun b!138856 () Bool)

(declare-fun e!81392 () Bool)

(declare-fun tp_is_empty!1549 () Bool)

(assert (=> b!138856 (= e!81392 tp_is_empty!1549)))

(declare-fun b!138857 () Bool)

(declare-fun tp!72824 () Bool)

(declare-fun tp!72828 () Bool)

(assert (=> b!138857 (= e!81392 (and tp!72824 tp!72828))))

(declare-fun b!138858 () Bool)

(declare-fun tp!72826 () Bool)

(assert (=> b!138858 (= e!81392 tp!72826)))

(declare-fun b!138859 () Bool)

(declare-fun tp!72827 () Bool)

(declare-fun tp!72825 () Bool)

(assert (=> b!138859 (= e!81392 (and tp!72827 tp!72825))))

(assert (=> b!138763 (= tp!72797 e!81392)))

(assert (= (and b!138763 ((_ is ElementMatch!613) (regex!389 (rule!896 (h!7742 l1!3130))))) b!138856))

(assert (= (and b!138763 ((_ is Concat!1025) (regex!389 (rule!896 (h!7742 l1!3130))))) b!138857))

(assert (= (and b!138763 ((_ is Star!613) (regex!389 (rule!896 (h!7742 l1!3130))))) b!138858))

(assert (= (and b!138763 ((_ is Union!613) (regex!389 (rule!896 (h!7742 l1!3130))))) b!138859))

(declare-fun b!138864 () Bool)

(declare-fun e!81395 () Bool)

(assert (=> b!138864 (= e!81395 tp_is_empty!1549)))

(declare-fun b!138865 () Bool)

(declare-fun tp!72829 () Bool)

(declare-fun tp!72833 () Bool)

(assert (=> b!138865 (= e!81395 (and tp!72829 tp!72833))))

(declare-fun b!138866 () Bool)

(declare-fun tp!72831 () Bool)

(assert (=> b!138866 (= e!81395 tp!72831)))

(declare-fun b!138867 () Bool)

(declare-fun tp!72832 () Bool)

(declare-fun tp!72830 () Bool)

(assert (=> b!138867 (= e!81395 (and tp!72832 tp!72830))))

(assert (=> b!138758 (= tp!72804 e!81395)))

(assert (= (and b!138758 ((_ is ElementMatch!613) (regex!389 (rule!896 (h!7742 l2!3099))))) b!138864))

(assert (= (and b!138758 ((_ is Concat!1025) (regex!389 (rule!896 (h!7742 l2!3099))))) b!138865))

(assert (= (and b!138758 ((_ is Star!613) (regex!389 (rule!896 (h!7742 l2!3099))))) b!138866))

(assert (= (and b!138758 ((_ is Union!613) (regex!389 (rule!896 (h!7742 l2!3099))))) b!138867))

(declare-fun b!138878 () Bool)

(declare-fun e!81402 () Bool)

(declare-fun tp!72836 () Bool)

(assert (=> b!138878 (= e!81402 (and tp_is_empty!1549 tp!72836))))

(assert (=> b!138753 (= tp!72807 e!81402)))

(assert (= (and b!138753 ((_ is Cons!2344) (originalCharacters!432 (h!7742 l1!3130)))) b!138878))

(declare-fun b!138898 () Bool)

(declare-fun b_free!4281 () Bool)

(declare-fun b_next!4281 () Bool)

(assert (=> b!138898 (= b_free!4281 (not b_next!4281))))

(declare-fun tp!72851 () Bool)

(declare-fun b_and!6509 () Bool)

(assert (=> b!138898 (= tp!72851 b_and!6509)))

(declare-fun b_free!4283 () Bool)

(declare-fun b_next!4283 () Bool)

(assert (=> b!138898 (= b_free!4283 (not b_next!4283))))

(declare-fun t!23044 () Bool)

(declare-fun tb!3769 () Bool)

(assert (=> (and b!138898 (= (toChars!859 (transformation!389 (rule!896 (h!7742 (t!23021 l2!3099))))) (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099))))) t!23044) tb!3769))

(declare-fun result!5888 () Bool)

(assert (= result!5888 result!5862))

(assert (=> b!138811 t!23044))

(declare-fun tb!3771 () Bool)

(declare-fun t!23046 () Bool)

(assert (=> (and b!138898 (= (toChars!859 (transformation!389 (rule!896 (h!7742 (t!23021 l2!3099))))) (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130))))) t!23046) tb!3771))

(declare-fun result!5890 () Bool)

(assert (= result!5890 result!5870))

(assert (=> b!138821 t!23046))

(declare-fun b_and!6511 () Bool)

(declare-fun tp!72850 () Bool)

(assert (=> b!138898 (= tp!72850 (and (=> t!23044 result!5888) (=> t!23046 result!5890) b_and!6511))))

(declare-fun e!81421 () Bool)

(assert (=> b!138764 (= tp!72805 e!81421)))

(declare-fun b!138895 () Bool)

(declare-fun e!81424 () Bool)

(declare-fun tp!72849 () Bool)

(assert (=> b!138895 (= e!81421 (and (inv!3089 (h!7742 (t!23021 l2!3099))) e!81424 tp!72849))))

(declare-fun e!81420 () Bool)

(assert (=> b!138898 (= e!81420 (and tp!72851 tp!72850))))

(declare-fun b!138897 () Bool)

(declare-fun tp!72848 () Bool)

(declare-fun e!81422 () Bool)

(assert (=> b!138897 (= e!81422 (and tp!72848 (inv!3085 (tag!567 (rule!896 (h!7742 (t!23021 l2!3099))))) (inv!3088 (transformation!389 (rule!896 (h!7742 (t!23021 l2!3099))))) e!81420))))

(declare-fun tp!72847 () Bool)

(declare-fun b!138896 () Bool)

(assert (=> b!138896 (= e!81424 (and (inv!21 (value!15402 (h!7742 (t!23021 l2!3099)))) e!81422 tp!72847))))

(assert (= b!138897 b!138898))

(assert (= b!138896 b!138897))

(assert (= b!138895 b!138896))

(assert (= (and b!138764 ((_ is Cons!2345) (t!23021 l2!3099))) b!138895))

(declare-fun m!122589 () Bool)

(assert (=> b!138895 m!122589))

(declare-fun m!122591 () Bool)

(assert (=> b!138897 m!122591))

(declare-fun m!122593 () Bool)

(assert (=> b!138897 m!122593))

(declare-fun m!122595 () Bool)

(assert (=> b!138896 m!122595))

(declare-fun b!138899 () Bool)

(declare-fun e!81425 () Bool)

(assert (=> b!138899 (= e!81425 tp_is_empty!1549)))

(declare-fun b!138900 () Bool)

(declare-fun tp!72852 () Bool)

(declare-fun tp!72856 () Bool)

(assert (=> b!138900 (= e!81425 (and tp!72852 tp!72856))))

(declare-fun b!138901 () Bool)

(declare-fun tp!72854 () Bool)

(assert (=> b!138901 (= e!81425 tp!72854)))

(declare-fun b!138902 () Bool)

(declare-fun tp!72855 () Bool)

(declare-fun tp!72853 () Bool)

(assert (=> b!138902 (= e!81425 (and tp!72855 tp!72853))))

(assert (=> b!138759 (= tp!72800 e!81425)))

(assert (= (and b!138759 ((_ is ElementMatch!613) (regex!389 (h!7743 rules!4268)))) b!138899))

(assert (= (and b!138759 ((_ is Concat!1025) (regex!389 (h!7743 rules!4268)))) b!138900))

(assert (= (and b!138759 ((_ is Star!613) (regex!389 (h!7743 rules!4268)))) b!138901))

(assert (= (and b!138759 ((_ is Union!613) (regex!389 (h!7743 rules!4268)))) b!138902))

(declare-fun b!138906 () Bool)

(declare-fun b_free!4285 () Bool)

(declare-fun b_next!4285 () Bool)

(assert (=> b!138906 (= b_free!4285 (not b_next!4285))))

(declare-fun tp!72861 () Bool)

(declare-fun b_and!6513 () Bool)

(assert (=> b!138906 (= tp!72861 b_and!6513)))

(declare-fun b_free!4287 () Bool)

(declare-fun b_next!4287 () Bool)

(assert (=> b!138906 (= b_free!4287 (not b_next!4287))))

(declare-fun t!23048 () Bool)

(declare-fun tb!3773 () Bool)

(assert (=> (and b!138906 (= (toChars!859 (transformation!389 (rule!896 (h!7742 (t!23021 l1!3130))))) (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099))))) t!23048) tb!3773))

(declare-fun result!5892 () Bool)

(assert (= result!5892 result!5862))

(assert (=> b!138811 t!23048))

(declare-fun t!23050 () Bool)

(declare-fun tb!3775 () Bool)

(assert (=> (and b!138906 (= (toChars!859 (transformation!389 (rule!896 (h!7742 (t!23021 l1!3130))))) (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130))))) t!23050) tb!3775))

(declare-fun result!5894 () Bool)

(assert (= result!5894 result!5870))

(assert (=> b!138821 t!23050))

(declare-fun tp!72860 () Bool)

(declare-fun b_and!6515 () Bool)

(assert (=> b!138906 (= tp!72860 (and (=> t!23048 result!5892) (=> t!23050 result!5894) b_and!6515))))

(declare-fun e!81428 () Bool)

(assert (=> b!138754 (= tp!72802 e!81428)))

(declare-fun tp!72859 () Bool)

(declare-fun b!138903 () Bool)

(declare-fun e!81431 () Bool)

(assert (=> b!138903 (= e!81428 (and (inv!3089 (h!7742 (t!23021 l1!3130))) e!81431 tp!72859))))

(declare-fun e!81427 () Bool)

(assert (=> b!138906 (= e!81427 (and tp!72861 tp!72860))))

(declare-fun e!81429 () Bool)

(declare-fun tp!72858 () Bool)

(declare-fun b!138905 () Bool)

(assert (=> b!138905 (= e!81429 (and tp!72858 (inv!3085 (tag!567 (rule!896 (h!7742 (t!23021 l1!3130))))) (inv!3088 (transformation!389 (rule!896 (h!7742 (t!23021 l1!3130))))) e!81427))))

(declare-fun tp!72857 () Bool)

(declare-fun b!138904 () Bool)

(assert (=> b!138904 (= e!81431 (and (inv!21 (value!15402 (h!7742 (t!23021 l1!3130)))) e!81429 tp!72857))))

(assert (= b!138905 b!138906))

(assert (= b!138904 b!138905))

(assert (= b!138903 b!138904))

(assert (= (and b!138754 ((_ is Cons!2345) (t!23021 l1!3130))) b!138903))

(declare-fun m!122597 () Bool)

(assert (=> b!138903 m!122597))

(declare-fun m!122599 () Bool)

(assert (=> b!138905 m!122599))

(declare-fun m!122601 () Bool)

(assert (=> b!138905 m!122601))

(declare-fun m!122603 () Bool)

(assert (=> b!138904 m!122603))

(declare-fun b!138923 () Bool)

(declare-fun b_free!4289 () Bool)

(declare-fun b_next!4289 () Bool)

(assert (=> b!138923 (= b_free!4289 (not b_next!4289))))

(declare-fun tp!72873 () Bool)

(declare-fun b_and!6517 () Bool)

(assert (=> b!138923 (= tp!72873 b_and!6517)))

(declare-fun b_free!4291 () Bool)

(declare-fun b_next!4291 () Bool)

(assert (=> b!138923 (= b_free!4291 (not b_next!4291))))

(declare-fun tb!3777 () Bool)

(declare-fun t!23052 () Bool)

(assert (=> (and b!138923 (= (toChars!859 (transformation!389 (h!7743 (t!23022 rules!4268)))) (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099))))) t!23052) tb!3777))

(declare-fun result!5898 () Bool)

(assert (= result!5898 result!5862))

(assert (=> b!138811 t!23052))

(declare-fun tb!3779 () Bool)

(declare-fun t!23054 () Bool)

(assert (=> (and b!138923 (= (toChars!859 (transformation!389 (h!7743 (t!23022 rules!4268)))) (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130))))) t!23054) tb!3779))

(declare-fun result!5900 () Bool)

(assert (= result!5900 result!5870))

(assert (=> b!138821 t!23054))

(declare-fun tp!72872 () Bool)

(declare-fun b_and!6519 () Bool)

(assert (=> b!138923 (= tp!72872 (and (=> t!23052 result!5898) (=> t!23054 result!5900) b_and!6519))))

(declare-fun e!81446 () Bool)

(assert (=> b!138923 (= e!81446 (and tp!72873 tp!72872))))

(declare-fun e!81445 () Bool)

(declare-fun tp!72870 () Bool)

(declare-fun b!138922 () Bool)

(assert (=> b!138922 (= e!81445 (and tp!72870 (inv!3085 (tag!567 (h!7743 (t!23022 rules!4268)))) (inv!3088 (transformation!389 (h!7743 (t!23022 rules!4268)))) e!81446))))

(declare-fun b!138921 () Bool)

(declare-fun e!81444 () Bool)

(declare-fun tp!72871 () Bool)

(assert (=> b!138921 (= e!81444 (and e!81445 tp!72871))))

(assert (=> b!138766 (= tp!72803 e!81444)))

(assert (= b!138922 b!138923))

(assert (= b!138921 b!138922))

(assert (= (and b!138766 ((_ is Cons!2346) (t!23022 rules!4268))) b!138921))

(declare-fun m!122609 () Bool)

(assert (=> b!138922 m!122609))

(declare-fun m!122611 () Bool)

(assert (=> b!138922 m!122611))

(declare-fun b!138924 () Bool)

(declare-fun e!81447 () Bool)

(declare-fun tp!72874 () Bool)

(assert (=> b!138924 (= e!81447 (and tp_is_empty!1549 tp!72874))))

(assert (=> b!138768 (= tp!72801 e!81447)))

(assert (= (and b!138768 ((_ is Cons!2344) (originalCharacters!432 (h!7742 l2!3099)))) b!138924))

(declare-fun b_lambda!1819 () Bool)

(assert (= b_lambda!1817 (or (and start!14554 b_free!4275) b_lambda!1819)))

(declare-fun b_lambda!1821 () Bool)

(assert (= b_lambda!1809 (or (and b!138898 b_free!4283 (= (toChars!859 (transformation!389 (rule!896 (h!7742 (t!23021 l2!3099))))) (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099)))))) (and b!138765 b_free!4279 (= (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130)))) (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099)))))) (and b!138923 b_free!4291 (= (toChars!859 (transformation!389 (h!7743 (t!23022 rules!4268)))) (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099)))))) (and b!138906 b_free!4287 (= (toChars!859 (transformation!389 (rule!896 (h!7742 (t!23021 l1!3130))))) (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099)))))) (and b!138757 b_free!4269) (and b!138752 b_free!4273 (= (toChars!859 (transformation!389 (h!7743 rules!4268))) (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099)))))) b_lambda!1821)))

(declare-fun b_lambda!1823 () Bool)

(assert (= b_lambda!1811 (or (and b!138898 b_free!4283 (= (toChars!859 (transformation!389 (rule!896 (h!7742 (t!23021 l2!3099))))) (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130)))))) (and b!138923 b_free!4291 (= (toChars!859 (transformation!389 (h!7743 (t!23022 rules!4268)))) (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130)))))) (and b!138752 b_free!4273 (= (toChars!859 (transformation!389 (h!7743 rules!4268))) (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130)))))) (and b!138906 b_free!4287 (= (toChars!859 (transformation!389 (rule!896 (h!7742 (t!23021 l1!3130))))) (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130)))))) (and b!138757 b_free!4269 (= (toChars!859 (transformation!389 (rule!896 (h!7742 l2!3099)))) (toChars!859 (transformation!389 (rule!896 (h!7742 l1!3130)))))) (and b!138765 b_free!4279) b_lambda!1823)))

(declare-fun b_lambda!1825 () Bool)

(assert (= b_lambda!1807 (or (and start!14554 b_free!4275) b_lambda!1825)))

(check-sat (not b!138895) b_and!6501 (not d!33008) (not b!138836) (not b_lambda!1819) (not d!33012) (not b_next!4287) (not b_lambda!1823) b_and!6483 (not tb!3757) (not b_next!4279) b_and!6519 (not b!138865) (not b!138921) (not b!138843) (not b!138820) b_and!6477 (not b!138901) b_and!6473 (not b!138804) tp_is_empty!1549 (not b!138903) (not d!33022) (not d!33040) (not b!138904) (not b!138806) (not b!138859) (not b!138771) (not b!138905) (not tb!3751) (not b!138922) (not b!138785) (not b!138811) (not b_next!4281) (not b!138878) (not b!138805) (not b_next!4289) (not b_next!4285) (not b!138844) (not b_lambda!1825) (not b!138840) (not d!33036) b_and!6515 (not b!138778) (not b!138822) (not b!138821) (not b_next!4273) (not b!138858) (not b!138784) (not d!33030) (not b!138900) (not b_next!4269) (not b_next!4283) b_and!6513 b_and!6497 (not b!138866) (not b_next!4267) (not b!138812) (not b_next!4271) b_and!6511 (not b_next!4291) b_and!6499 (not b!138845) (not b!138823) (not b_lambda!1821) (not b!138772) (not b!138896) (not b_next!4277) (not b!138897) (not b_next!4275) (not b_lambda!1803) (not b!138867) b_and!6509 b_and!6517 b_and!6507 (not b!138902) (not b!138857) (not b!138924))
(check-sat (not b_next!4287) b_and!6483 b_and!6477 b_and!6473 (not b_next!4281) b_and!6515 (not b_next!4273) (not b_next!4277) b_and!6501 b_and!6507 (not b_next!4279) b_and!6519 (not b_next!4289) (not b_next!4285) (not b_next!4269) (not b_next!4283) b_and!6497 b_and!6513 (not b_next!4267) (not b_next!4271) b_and!6511 (not b_next!4291) b_and!6499 (not b_next!4275) b_and!6509 b_and!6517)
