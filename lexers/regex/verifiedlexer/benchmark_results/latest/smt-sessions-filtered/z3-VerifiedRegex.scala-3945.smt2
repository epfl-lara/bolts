; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216064 () Bool)

(assert start!216064)

(declare-fun b!2217975 () Bool)

(declare-fun b_free!64291 () Bool)

(declare-fun b_next!64995 () Bool)

(assert (=> b!2217975 (= b_free!64291 (not b_next!64995))))

(declare-fun tp!691023 () Bool)

(declare-fun b_and!174249 () Bool)

(assert (=> b!2217975 (= tp!691023 b_and!174249)))

(declare-fun b_free!64293 () Bool)

(declare-fun b_next!64997 () Bool)

(assert (=> b!2217975 (= b_free!64293 (not b_next!64997))))

(declare-fun tp!691010 () Bool)

(declare-fun b_and!174251 () Bool)

(assert (=> b!2217975 (= tp!691010 b_and!174251)))

(declare-fun b!2217978 () Bool)

(declare-fun b_free!64295 () Bool)

(declare-fun b_next!64999 () Bool)

(assert (=> b!2217978 (= b_free!64295 (not b_next!64999))))

(declare-fun tp!691012 () Bool)

(declare-fun b_and!174253 () Bool)

(assert (=> b!2217978 (= tp!691012 b_and!174253)))

(declare-fun b_free!64297 () Bool)

(declare-fun b_next!65001 () Bool)

(assert (=> b!2217978 (= b_free!64297 (not b_next!65001))))

(declare-fun tp!691009 () Bool)

(declare-fun b_and!174255 () Bool)

(assert (=> b!2217978 (= tp!691009 b_and!174255)))

(declare-fun b_free!64299 () Bool)

(declare-fun b_next!65003 () Bool)

(assert (=> start!216064 (= b_free!64299 (not b_next!65003))))

(declare-fun tp!691011 () Bool)

(declare-fun b_and!174257 () Bool)

(assert (=> start!216064 (= tp!691011 b_and!174257)))

(declare-fun b!2217969 () Bool)

(declare-fun b_free!64301 () Bool)

(declare-fun b_next!65005 () Bool)

(assert (=> b!2217969 (= b_free!64301 (not b_next!65005))))

(declare-fun tp!691020 () Bool)

(declare-fun b_and!174259 () Bool)

(assert (=> b!2217969 (= tp!691020 b_and!174259)))

(declare-fun b_free!64303 () Bool)

(declare-fun b_next!65007 () Bool)

(assert (=> b!2217969 (= b_free!64303 (not b_next!65007))))

(declare-fun tp!691021 () Bool)

(declare-fun b_and!174261 () Bool)

(assert (=> b!2217969 (= tp!691021 b_and!174261)))

(declare-fun b!2217970 () Bool)

(declare-fun b_free!64305 () Bool)

(declare-fun b_next!65009 () Bool)

(assert (=> b!2217970 (= b_free!64305 (not b_next!65009))))

(declare-fun tp!691007 () Bool)

(declare-fun b_and!174263 () Bool)

(assert (=> b!2217970 (= tp!691007 b_and!174263)))

(declare-fun b_free!64307 () Bool)

(declare-fun b_next!65011 () Bool)

(assert (=> b!2217970 (= b_free!64307 (not b_next!65011))))

(declare-fun tp!691024 () Bool)

(declare-fun b_and!174265 () Bool)

(assert (=> b!2217970 (= tp!691024 b_and!174265)))

(declare-fun e!1416418 () Bool)

(declare-fun b!2217956 () Bool)

(declare-fun tp!691015 () Bool)

(declare-fun e!1416416 () Bool)

(declare-datatypes ((List!26041 0))(
  ( (Nil!25957) (Cons!25957 (h!31358 (_ BitVec 16)) (t!199357 List!26041)) )
))
(declare-datatypes ((TokenValue!4323 0))(
  ( (FloatLiteralValue!8646 (text!30706 List!26041)) (TokenValueExt!4322 (__x!17099 Int)) (Broken!21615 (value!132036 List!26041)) (Object!4406) (End!4323) (Def!4323) (Underscore!4323) (Match!4323) (Else!4323) (Error!4323) (Case!4323) (If!4323) (Extends!4323) (Abstract!4323) (Class!4323) (Val!4323) (DelimiterValue!8646 (del!4383 List!26041)) (KeywordValue!4329 (value!132037 List!26041)) (CommentValue!8646 (value!132038 List!26041)) (WhitespaceValue!8646 (value!132039 List!26041)) (IndentationValue!4323 (value!132040 List!26041)) (String!28290) (Int32!4323) (Broken!21616 (value!132041 List!26041)) (Boolean!4324) (Unit!38937) (OperatorValue!4326 (op!4383 List!26041)) (IdentifierValue!8646 (value!132042 List!26041)) (IdentifierValue!8647 (value!132043 List!26041)) (WhitespaceValue!8647 (value!132044 List!26041)) (True!8646) (False!8646) (Broken!21617 (value!132045 List!26041)) (Broken!21618 (value!132046 List!26041)) (True!8647) (RightBrace!4323) (RightBracket!4323) (Colon!4323) (Null!4323) (Comma!4323) (LeftBracket!4323) (False!8647) (LeftBrace!4323) (ImaginaryLiteralValue!4323 (text!30707 List!26041)) (StringLiteralValue!12969 (value!132047 List!26041)) (EOFValue!4323 (value!132048 List!26041)) (IdentValue!4323 (value!132049 List!26041)) (DelimiterValue!8647 (value!132050 List!26041)) (DedentValue!4323 (value!132051 List!26041)) (NewLineValue!4323 (value!132052 List!26041)) (IntegerValue!12969 (value!132053 (_ BitVec 32)) (text!30708 List!26041)) (IntegerValue!12970 (value!132054 Int) (text!30709 List!26041)) (Times!4323) (Or!4323) (Equal!4323) (Minus!4323) (Broken!21619 (value!132055 List!26041)) (And!4323) (Div!4323) (LessEqual!4323) (Mod!4323) (Concat!10654) (Not!4323) (Plus!4323) (SpaceValue!4323 (value!132056 List!26041)) (IntegerValue!12971 (value!132057 Int) (text!30710 List!26041)) (StringLiteralValue!12970 (text!30711 List!26041)) (FloatLiteralValue!8647 (text!30712 List!26041)) (BytesLiteralValue!4323 (value!132058 List!26041)) (CommentValue!8647 (value!132059 List!26041)) (StringLiteralValue!12971 (value!132060 List!26041)) (ErrorTokenValue!4323 (msg!4384 List!26041)) )
))
(declare-datatypes ((C!12808 0))(
  ( (C!12809 (val!7416 Int)) )
))
(declare-datatypes ((List!26042 0))(
  ( (Nil!25958) (Cons!25958 (h!31359 C!12808) (t!199358 List!26042)) )
))
(declare-datatypes ((IArray!16983 0))(
  ( (IArray!16984 (innerList!8549 List!26042)) )
))
(declare-datatypes ((Conc!8489 0))(
  ( (Node!8489 (left!19942 Conc!8489) (right!20272 Conc!8489) (csize!17208 Int) (cheight!8700 Int)) (Leaf!12435 (xs!11431 IArray!16983) (csize!17209 Int)) (Empty!8489) )
))
(declare-datatypes ((BalanceConc!16696 0))(
  ( (BalanceConc!16697 (c!354127 Conc!8489)) )
))
(declare-datatypes ((Regex!6331 0))(
  ( (ElementMatch!6331 (c!354128 C!12808)) (Concat!10655 (regOne!13174 Regex!6331) (regTwo!13174 Regex!6331)) (EmptyExpr!6331) (Star!6331 (reg!6660 Regex!6331)) (EmptyLang!6331) (Union!6331 (regOne!13175 Regex!6331) (regTwo!13175 Regex!6331)) )
))
(declare-datatypes ((TokenValueInjection!8230 0))(
  ( (TokenValueInjection!8231 (toValue!5902 Int) (toChars!5761 Int)) )
))
(declare-datatypes ((String!28291 0))(
  ( (String!28292 (value!132061 String)) )
))
(declare-datatypes ((Rule!8174 0))(
  ( (Rule!8175 (regex!4187 Regex!6331) (tag!4677 String!28291) (isSeparator!4187 Bool) (transformation!4187 TokenValueInjection!8230)) )
))
(declare-datatypes ((Token!7856 0))(
  ( (Token!7857 (value!132062 TokenValue!4323) (rule!6487 Rule!8174) (size!20259 Int) (originalCharacters!4959 List!26042)) )
))
(declare-datatypes ((List!26043 0))(
  ( (Nil!25959) (Cons!25959 (h!31360 Token!7856) (t!199359 List!26043)) )
))
(declare-fun l!6601 () List!26043)

(declare-fun inv!35176 (Token!7856) Bool)

(assert (=> b!2217956 (= e!1416416 (and (inv!35176 (h!31360 l!6601)) e!1416418 tp!691015))))

(declare-fun b!2217957 () Bool)

(declare-fun res!952521 () Bool)

(declare-fun e!1416410 () Bool)

(assert (=> b!2217957 (=> (not res!952521) (not e!1416410))))

(declare-fun i!1797 () Int)

(declare-fun t2!61 () Token!7856)

(declare-fun apply!6433 (List!26043 Int) Token!7856)

(assert (=> b!2217957 (= res!952521 (= (apply!6433 l!6601 (+ 1 i!1797)) t2!61))))

(declare-fun b!2217958 () Bool)

(declare-fun res!952530 () Bool)

(declare-fun e!1416427 () Bool)

(assert (=> b!2217958 (=> (not res!952530) (not e!1416427))))

(declare-fun lt!826922 () List!26043)

(declare-fun t1!61 () Token!7856)

(assert (=> b!2217958 (= res!952530 (= (apply!6433 lt!826922 (- i!1797 1)) t1!61))))

(declare-fun tp!691014 () Bool)

(declare-fun b!2217959 () Bool)

(declare-fun e!1416417 () Bool)

(declare-fun e!1416424 () Bool)

(declare-fun inv!35173 (String!28291) Bool)

(declare-fun inv!35177 (TokenValueInjection!8230) Bool)

(assert (=> b!2217959 (= e!1416417 (and tp!691014 (inv!35173 (tag!4677 (rule!6487 (h!31360 l!6601)))) (inv!35177 (transformation!4187 (rule!6487 (h!31360 l!6601)))) e!1416424))))

(declare-fun b!2217960 () Bool)

(declare-fun e!1416425 () Bool)

(declare-fun tp!691022 () Bool)

(declare-fun e!1416426 () Bool)

(assert (=> b!2217960 (= e!1416425 (and tp!691022 (inv!35173 (tag!4677 (rule!6487 t1!61))) (inv!35177 (transformation!4187 (rule!6487 t1!61))) e!1416426))))

(declare-datatypes ((List!26044 0))(
  ( (Nil!25960) (Cons!25960 (h!31361 Rule!8174) (t!199360 List!26044)) )
))
(declare-fun rules!4462 () List!26044)

(declare-fun e!1416421 () Bool)

(declare-fun e!1416407 () Bool)

(declare-fun b!2217961 () Bool)

(declare-fun tp!691018 () Bool)

(assert (=> b!2217961 (= e!1416407 (and tp!691018 (inv!35173 (tag!4677 (h!31361 rules!4462))) (inv!35177 (transformation!4187 (h!31361 rules!4462))) e!1416421))))

(declare-fun b!2217962 () Bool)

(declare-fun e!1416420 () Bool)

(declare-fun e!1416415 () Bool)

(declare-fun tp!691019 () Bool)

(assert (=> b!2217962 (= e!1416415 (and tp!691019 (inv!35173 (tag!4677 (rule!6487 t2!61))) (inv!35177 (transformation!4187 (rule!6487 t2!61))) e!1416420))))

(declare-fun b!2217963 () Bool)

(declare-fun res!952528 () Bool)

(assert (=> b!2217963 (=> (not res!952528) (not e!1416410))))

(assert (=> b!2217963 (= res!952528 (not (= i!1797 0)))))

(declare-fun b!2217964 () Bool)

(declare-fun res!952520 () Bool)

(assert (=> b!2217964 (=> (not res!952520) (not e!1416427))))

(declare-fun lt!826921 () Int)

(assert (=> b!2217964 (= res!952520 (= (apply!6433 lt!826922 lt!826921) t2!61))))

(declare-fun b!2217965 () Bool)

(declare-fun e!1416419 () Bool)

(assert (=> b!2217965 (= e!1416419 e!1416427)))

(declare-fun res!952523 () Bool)

(assert (=> b!2217965 (=> (not res!952523) (not e!1416427))))

(declare-fun size!20260 (List!26043) Int)

(assert (=> b!2217965 (= res!952523 (< lt!826921 (size!20260 lt!826922)))))

(assert (=> b!2217965 (= lt!826921 (+ 1 (- i!1797 1)))))

(declare-fun b!2217966 () Bool)

(declare-fun e!1416423 () Bool)

(declare-fun tp!691013 () Bool)

(assert (=> b!2217966 (= e!1416423 (and e!1416407 tp!691013))))

(declare-fun b!2217967 () Bool)

(declare-fun res!952526 () Bool)

(assert (=> b!2217967 (=> (not res!952526) (not e!1416410))))

(declare-datatypes ((LexerInterface!3784 0))(
  ( (LexerInterfaceExt!3781 (__x!17100 Int)) (Lexer!3782) )
))
(declare-fun thiss!27908 () LexerInterface!3784)

(declare-fun p!3128 () Int)

(declare-fun tokensListTwoByTwoPredicateList!54 (LexerInterface!3784 List!26043 List!26044 Int) Bool)

(assert (=> b!2217967 (= res!952526 (tokensListTwoByTwoPredicateList!54 thiss!27908 l!6601 rules!4462 p!3128))))

(declare-fun b!2217968 () Bool)

(declare-fun res!952519 () Bool)

(assert (=> b!2217968 (=> (not res!952519) (not e!1416410))))

(assert (=> b!2217968 (= res!952519 (= (apply!6433 l!6601 i!1797) t1!61))))

(assert (=> b!2217969 (= e!1416424 (and tp!691020 tp!691021))))

(assert (=> b!2217970 (= e!1416426 (and tp!691007 tp!691024))))

(declare-fun res!952529 () Bool)

(assert (=> start!216064 (=> (not res!952529) (not e!1416410))))

(get-info :version)

(assert (=> start!216064 (= res!952529 ((_ is Lexer!3782) thiss!27908))))

(assert (=> start!216064 e!1416410))

(assert (=> start!216064 true))

(assert (=> start!216064 e!1416423))

(declare-fun e!1416409 () Bool)

(assert (=> start!216064 (and (inv!35176 t2!61) e!1416409)))

(assert (=> start!216064 tp!691011))

(assert (=> start!216064 e!1416416))

(declare-fun e!1416412 () Bool)

(assert (=> start!216064 (and (inv!35176 t1!61) e!1416412)))

(declare-fun b!2217971 () Bool)

(assert (=> b!2217971 (= e!1416410 e!1416419)))

(declare-fun res!952527 () Bool)

(assert (=> b!2217971 (=> (not res!952527) (not e!1416419))))

(assert (=> b!2217971 (= res!952527 (tokensListTwoByTwoPredicateList!54 thiss!27908 lt!826922 rules!4462 p!3128))))

(declare-fun tail!3228 (List!26043) List!26043)

(assert (=> b!2217971 (= lt!826922 (tail!3228 l!6601))))

(declare-fun b!2217972 () Bool)

(assert (=> b!2217972 (= e!1416427 (not true))))

(declare-fun dynLambda!11491 (Int Token!7856 Token!7856 List!26044) Bool)

(assert (=> b!2217972 (dynLambda!11491 p!3128 t1!61 t2!61 rules!4462)))

(declare-datatypes ((Unit!38938 0))(
  ( (Unit!38939) )
))
(declare-fun lt!826923 () Unit!38938)

(declare-fun tokensListTwoByTwoPredicateInstantiate!2 (LexerInterface!3784 List!26043 List!26044 Int Token!7856 Token!7856 Int) Unit!38938)

(assert (=> b!2217972 (= lt!826923 (tokensListTwoByTwoPredicateInstantiate!2 thiss!27908 lt!826922 rules!4462 p!3128 t1!61 t2!61 (- i!1797 1)))))

(declare-fun tp!691008 () Bool)

(declare-fun b!2217973 () Bool)

(declare-fun inv!21 (TokenValue!4323) Bool)

(assert (=> b!2217973 (= e!1416418 (and (inv!21 (value!132062 (h!31360 l!6601))) e!1416417 tp!691008))))

(declare-fun b!2217974 () Bool)

(declare-fun tp!691017 () Bool)

(assert (=> b!2217974 (= e!1416412 (and (inv!21 (value!132062 t1!61)) e!1416425 tp!691017))))

(assert (=> b!2217975 (= e!1416420 (and tp!691023 tp!691010))))

(declare-fun b!2217976 () Bool)

(declare-fun res!952522 () Bool)

(assert (=> b!2217976 (=> (not res!952522) (not e!1416410))))

(assert (=> b!2217976 (= res!952522 (>= i!1797 0))))

(declare-fun tp!691016 () Bool)

(declare-fun b!2217977 () Bool)

(assert (=> b!2217977 (= e!1416409 (and (inv!21 (value!132062 t2!61)) e!1416415 tp!691016))))

(assert (=> b!2217978 (= e!1416421 (and tp!691012 tp!691009))))

(declare-fun b!2217979 () Bool)

(declare-fun res!952524 () Bool)

(assert (=> b!2217979 (=> (not res!952524) (not e!1416410))))

(assert (=> b!2217979 (= res!952524 (< (+ 1 i!1797) (size!20260 l!6601)))))

(declare-fun b!2217980 () Bool)

(declare-fun res!952525 () Bool)

(assert (=> b!2217980 (=> (not res!952525) (not e!1416419))))

(assert (=> b!2217980 (= res!952525 (>= (- i!1797 1) 0))))

(assert (= (and start!216064 res!952529) b!2217967))

(assert (= (and b!2217967 res!952526) b!2217976))

(assert (= (and b!2217976 res!952522) b!2217979))

(assert (= (and b!2217979 res!952524) b!2217968))

(assert (= (and b!2217968 res!952519) b!2217957))

(assert (= (and b!2217957 res!952521) b!2217963))

(assert (= (and b!2217963 res!952528) b!2217971))

(assert (= (and b!2217971 res!952527) b!2217980))

(assert (= (and b!2217980 res!952525) b!2217965))

(assert (= (and b!2217965 res!952523) b!2217958))

(assert (= (and b!2217958 res!952530) b!2217964))

(assert (= (and b!2217964 res!952520) b!2217972))

(assert (= b!2217961 b!2217978))

(assert (= b!2217966 b!2217961))

(assert (= (and start!216064 ((_ is Cons!25960) rules!4462)) b!2217966))

(assert (= b!2217962 b!2217975))

(assert (= b!2217977 b!2217962))

(assert (= start!216064 b!2217977))

(assert (= b!2217959 b!2217969))

(assert (= b!2217973 b!2217959))

(assert (= b!2217956 b!2217973))

(assert (= (and start!216064 ((_ is Cons!25959) l!6601)) b!2217956))

(assert (= b!2217960 b!2217970))

(assert (= b!2217974 b!2217960))

(assert (= start!216064 b!2217974))

(declare-fun b_lambda!71511 () Bool)

(assert (=> (not b_lambda!71511) (not b!2217972)))

(declare-fun t!199356 () Bool)

(declare-fun tb!132835 () Bool)

(assert (=> (and start!216064 (= p!3128 p!3128) t!199356) tb!132835))

(declare-fun result!161152 () Bool)

(assert (=> tb!132835 (= result!161152 true)))

(assert (=> b!2217972 t!199356))

(declare-fun b_and!174267 () Bool)

(assert (= b_and!174257 (and (=> t!199356 result!161152) b_and!174267)))

(declare-fun m!2658825 () Bool)

(assert (=> b!2217960 m!2658825))

(declare-fun m!2658827 () Bool)

(assert (=> b!2217960 m!2658827))

(declare-fun m!2658829 () Bool)

(assert (=> b!2217974 m!2658829))

(declare-fun m!2658831 () Bool)

(assert (=> b!2217958 m!2658831))

(declare-fun m!2658833 () Bool)

(assert (=> b!2217967 m!2658833))

(declare-fun m!2658835 () Bool)

(assert (=> b!2217972 m!2658835))

(declare-fun m!2658837 () Bool)

(assert (=> b!2217972 m!2658837))

(declare-fun m!2658839 () Bool)

(assert (=> b!2217971 m!2658839))

(declare-fun m!2658841 () Bool)

(assert (=> b!2217971 m!2658841))

(declare-fun m!2658843 () Bool)

(assert (=> b!2217968 m!2658843))

(declare-fun m!2658845 () Bool)

(assert (=> b!2217964 m!2658845))

(declare-fun m!2658847 () Bool)

(assert (=> start!216064 m!2658847))

(declare-fun m!2658849 () Bool)

(assert (=> start!216064 m!2658849))

(declare-fun m!2658851 () Bool)

(assert (=> b!2217956 m!2658851))

(declare-fun m!2658853 () Bool)

(assert (=> b!2217959 m!2658853))

(declare-fun m!2658855 () Bool)

(assert (=> b!2217959 m!2658855))

(declare-fun m!2658857 () Bool)

(assert (=> b!2217961 m!2658857))

(declare-fun m!2658859 () Bool)

(assert (=> b!2217961 m!2658859))

(declare-fun m!2658861 () Bool)

(assert (=> b!2217979 m!2658861))

(declare-fun m!2658863 () Bool)

(assert (=> b!2217962 m!2658863))

(declare-fun m!2658865 () Bool)

(assert (=> b!2217962 m!2658865))

(declare-fun m!2658867 () Bool)

(assert (=> b!2217977 m!2658867))

(declare-fun m!2658869 () Bool)

(assert (=> b!2217965 m!2658869))

(declare-fun m!2658871 () Bool)

(assert (=> b!2217957 m!2658871))

(declare-fun m!2658873 () Bool)

(assert (=> b!2217973 m!2658873))

(check-sat (not b!2217967) (not b!2217957) b_and!174259 (not b!2217977) (not b_next!65011) (not b!2217960) b_and!174251 (not b_next!65005) (not b_next!65007) (not b!2217959) (not b_next!64999) (not b!2217974) (not b!2217961) (not b!2217973) b_and!174255 b_and!174253 (not b!2217979) (not b_next!64995) b_and!174267 (not b!2217965) (not b_lambda!71511) (not b!2217972) (not b_next!65003) b_and!174263 (not b!2217962) (not b!2217956) b_and!174249 (not b!2217958) (not b!2217966) (not b!2217971) b_and!174265 (not b_next!65009) (not b_next!65001) (not b_next!64997) (not start!216064) (not b!2217964) (not b!2217968) b_and!174261)
(check-sat (not b_next!64999) (not b_next!64995) b_and!174267 (not b_next!65003) b_and!174259 b_and!174263 (not b_next!65011) b_and!174249 b_and!174251 b_and!174265 (not b_next!65005) b_and!174261 (not b_next!65007) b_and!174255 b_and!174253 (not b_next!65009) (not b_next!65001) (not b_next!64997))
