; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404254 () Bool)

(assert start!404254)

(declare-fun b!4227399 () Bool)

(declare-fun b_free!124691 () Bool)

(declare-fun b_next!125395 () Bool)

(assert (=> b!4227399 (= b_free!124691 (not b_next!125395))))

(declare-fun tp!1294578 () Bool)

(declare-fun b_and!333925 () Bool)

(assert (=> b!4227399 (= tp!1294578 b_and!333925)))

(declare-fun b_free!124693 () Bool)

(declare-fun b_next!125397 () Bool)

(assert (=> b!4227399 (= b_free!124693 (not b_next!125397))))

(declare-fun tp!1294576 () Bool)

(declare-fun b_and!333927 () Bool)

(assert (=> b!4227399 (= tp!1294576 b_and!333927)))

(declare-fun b!4227403 () Bool)

(declare-fun b_free!124695 () Bool)

(declare-fun b_next!125399 () Bool)

(assert (=> b!4227403 (= b_free!124695 (not b_next!125399))))

(declare-fun tp!1294579 () Bool)

(declare-fun b_and!333929 () Bool)

(assert (=> b!4227403 (= tp!1294579 b_and!333929)))

(declare-fun b_free!124697 () Bool)

(declare-fun b_next!125401 () Bool)

(assert (=> b!4227403 (= b_free!124697 (not b_next!125401))))

(declare-fun tp!1294582 () Bool)

(declare-fun b_and!333931 () Bool)

(assert (=> b!4227403 (= tp!1294582 b_and!333931)))

(declare-fun b!4227398 () Bool)

(declare-fun res!1738305 () Bool)

(declare-fun e!2624790 () Bool)

(assert (=> b!4227398 (=> (not res!1738305) (not e!2624790))))

(declare-datatypes ((C!25704 0))(
  ( (C!25705 (val!15014 Int)) )
))
(declare-datatypes ((List!46753 0))(
  ( (Nil!46629) (Cons!46629 (h!52049 C!25704) (t!349370 List!46753)) )
))
(declare-datatypes ((IArray!28127 0))(
  ( (IArray!28128 (innerList!14121 List!46753)) )
))
(declare-datatypes ((Conc!14061 0))(
  ( (Node!14061 (left!34677 Conc!14061) (right!35007 Conc!14061) (csize!28352 Int) (cheight!14272 Int)) (Leaf!21730 (xs!17367 IArray!28127) (csize!28353 Int)) (Empty!14061) )
))
(declare-datatypes ((List!46754 0))(
  ( (Nil!46630) (Cons!46630 (h!52050 (_ BitVec 16)) (t!349371 List!46754)) )
))
(declare-datatypes ((Regex!12755 0))(
  ( (ElementMatch!12755 (c!718722 C!25704)) (Concat!20835 (regOne!26022 Regex!12755) (regTwo!26022 Regex!12755)) (EmptyExpr!12755) (Star!12755 (reg!13084 Regex!12755)) (EmptyLang!12755) (Union!12755 (regOne!26023 Regex!12755) (regTwo!26023 Regex!12755)) )
))
(declare-datatypes ((String!54269 0))(
  ( (String!54270 (value!244205 String)) )
))
(declare-datatypes ((TokenValue!8080 0))(
  ( (FloatLiteralValue!16160 (text!57005 List!46754)) (TokenValueExt!8079 (__x!28383 Int)) (Broken!40400 (value!244206 List!46754)) (Object!8203) (End!8080) (Def!8080) (Underscore!8080) (Match!8080) (Else!8080) (Error!8080) (Case!8080) (If!8080) (Extends!8080) (Abstract!8080) (Class!8080) (Val!8080) (DelimiterValue!16160 (del!8140 List!46754)) (KeywordValue!8086 (value!244207 List!46754)) (CommentValue!16160 (value!244208 List!46754)) (WhitespaceValue!16160 (value!244209 List!46754)) (IndentationValue!8080 (value!244210 List!46754)) (String!54271) (Int32!8080) (Broken!40401 (value!244211 List!46754)) (Boolean!8081) (Unit!65750) (OperatorValue!8083 (op!8140 List!46754)) (IdentifierValue!16160 (value!244212 List!46754)) (IdentifierValue!16161 (value!244213 List!46754)) (WhitespaceValue!16161 (value!244214 List!46754)) (True!16160) (False!16160) (Broken!40402 (value!244215 List!46754)) (Broken!40403 (value!244216 List!46754)) (True!16161) (RightBrace!8080) (RightBracket!8080) (Colon!8080) (Null!8080) (Comma!8080) (LeftBracket!8080) (False!16161) (LeftBrace!8080) (ImaginaryLiteralValue!8080 (text!57006 List!46754)) (StringLiteralValue!24240 (value!244217 List!46754)) (EOFValue!8080 (value!244218 List!46754)) (IdentValue!8080 (value!244219 List!46754)) (DelimiterValue!16161 (value!244220 List!46754)) (DedentValue!8080 (value!244221 List!46754)) (NewLineValue!8080 (value!244222 List!46754)) (IntegerValue!24240 (value!244223 (_ BitVec 32)) (text!57007 List!46754)) (IntegerValue!24241 (value!244224 Int) (text!57008 List!46754)) (Times!8080) (Or!8080) (Equal!8080) (Minus!8080) (Broken!40404 (value!244225 List!46754)) (And!8080) (Div!8080) (LessEqual!8080) (Mod!8080) (Concat!20836) (Not!8080) (Plus!8080) (SpaceValue!8080 (value!244226 List!46754)) (IntegerValue!24242 (value!244227 Int) (text!57009 List!46754)) (StringLiteralValue!24241 (text!57010 List!46754)) (FloatLiteralValue!16161 (text!57011 List!46754)) (BytesLiteralValue!8080 (value!244228 List!46754)) (CommentValue!16161 (value!244229 List!46754)) (StringLiteralValue!24242 (value!244230 List!46754)) (ErrorTokenValue!8080 (msg!8141 List!46754)) )
))
(declare-datatypes ((BalanceConc!27716 0))(
  ( (BalanceConc!27717 (c!718723 Conc!14061)) )
))
(declare-datatypes ((TokenValueInjection!15588 0))(
  ( (TokenValueInjection!15589 (toValue!10578 Int) (toChars!10437 Int)) )
))
(declare-datatypes ((Rule!15500 0))(
  ( (Rule!15501 (regex!7850 Regex!12755) (tag!8714 String!54269) (isSeparator!7850 Bool) (transformation!7850 TokenValueInjection!15588)) )
))
(declare-datatypes ((List!46755 0))(
  ( (Nil!46631) (Cons!46631 (h!52051 Rule!15500) (t!349372 List!46755)) )
))
(declare-fun rules!4024 () List!46755)

(declare-fun r!4367 () Rule!15500)

(get-info :version)

(assert (=> b!4227398 (= res!1738305 (and (or (not ((_ is Cons!46631) rules!4024)) (not (= (h!52051 rules!4024) r!4367))) ((_ is Cons!46631) rules!4024) (not (= (h!52051 rules!4024) r!4367))))))

(declare-fun e!2624793 () Bool)

(assert (=> b!4227399 (= e!2624793 (and tp!1294578 tp!1294576))))

(declare-fun b!4227400 () Bool)

(declare-fun res!1738302 () Bool)

(assert (=> b!4227400 (=> (not res!1738302) (not e!2624790))))

(declare-fun contains!9673 (List!46755 Rule!15500) Bool)

(assert (=> b!4227400 (= res!1738302 (contains!9673 (t!349372 rules!4024) r!4367))))

(declare-fun b!4227401 () Bool)

(declare-fun res!1738306 () Bool)

(assert (=> b!4227401 (=> (not res!1738306) (not e!2624790))))

(assert (=> b!4227401 (= res!1738306 (contains!9673 rules!4024 r!4367))))

(declare-fun b!4227402 () Bool)

(declare-fun res!1738304 () Bool)

(assert (=> b!4227402 (=> (not res!1738304) (not e!2624790))))

(declare-datatypes ((LexerInterface!7445 0))(
  ( (LexerInterfaceExt!7442 (__x!28384 Int)) (Lexer!7443) )
))
(declare-fun thiss!26827 () LexerInterface!7445)

(declare-fun rulesValidInductive!2952 (LexerInterface!7445 List!46755) Bool)

(assert (=> b!4227402 (= res!1738304 (rulesValidInductive!2952 thiss!26827 (t!349372 rules!4024)))))

(declare-fun res!1738307 () Bool)

(assert (=> start!404254 (=> (not res!1738307) (not e!2624790))))

(assert (=> start!404254 (= res!1738307 ((_ is Lexer!7443) thiss!26827))))

(assert (=> start!404254 e!2624790))

(assert (=> start!404254 true))

(declare-fun e!2624791 () Bool)

(assert (=> start!404254 e!2624791))

(declare-fun e!2624794 () Bool)

(assert (=> start!404254 e!2624794))

(declare-fun e!2624796 () Bool)

(assert (=> b!4227403 (= e!2624796 (and tp!1294579 tp!1294582))))

(declare-fun b!4227404 () Bool)

(declare-fun res!1738303 () Bool)

(assert (=> b!4227404 (=> (not res!1738303) (not e!2624790))))

(assert (=> b!4227404 (= res!1738303 (rulesValidInductive!2952 thiss!26827 rules!4024))))

(declare-fun b!4227405 () Bool)

(declare-fun ListPrimitiveSize!309 (List!46755) Int)

(assert (=> b!4227405 (= e!2624790 (>= (ListPrimitiveSize!309 (t!349372 rules!4024)) (ListPrimitiveSize!309 rules!4024)))))

(declare-fun b!4227406 () Bool)

(declare-fun tp!1294577 () Bool)

(declare-fun inv!61281 (String!54269) Bool)

(declare-fun inv!61283 (TokenValueInjection!15588) Bool)

(assert (=> b!4227406 (= e!2624794 (and tp!1294577 (inv!61281 (tag!8714 r!4367)) (inv!61283 (transformation!7850 r!4367)) e!2624796))))

(declare-fun e!2624795 () Bool)

(declare-fun tp!1294581 () Bool)

(declare-fun b!4227407 () Bool)

(assert (=> b!4227407 (= e!2624795 (and tp!1294581 (inv!61281 (tag!8714 (h!52051 rules!4024))) (inv!61283 (transformation!7850 (h!52051 rules!4024))) e!2624793))))

(declare-fun b!4227408 () Bool)

(declare-fun tp!1294580 () Bool)

(assert (=> b!4227408 (= e!2624791 (and e!2624795 tp!1294580))))

(assert (= (and start!404254 res!1738307) b!4227401))

(assert (= (and b!4227401 res!1738306) b!4227404))

(assert (= (and b!4227404 res!1738303) b!4227398))

(assert (= (and b!4227398 res!1738305) b!4227400))

(assert (= (and b!4227400 res!1738302) b!4227402))

(assert (= (and b!4227402 res!1738304) b!4227405))

(assert (= b!4227407 b!4227399))

(assert (= b!4227408 b!4227407))

(assert (= (and start!404254 ((_ is Cons!46631) rules!4024)) b!4227408))

(assert (= b!4227406 b!4227403))

(assert (= start!404254 b!4227406))

(declare-fun m!4814875 () Bool)

(assert (=> b!4227402 m!4814875))

(declare-fun m!4814877 () Bool)

(assert (=> b!4227407 m!4814877))

(declare-fun m!4814879 () Bool)

(assert (=> b!4227407 m!4814879))

(declare-fun m!4814881 () Bool)

(assert (=> b!4227401 m!4814881))

(declare-fun m!4814883 () Bool)

(assert (=> b!4227404 m!4814883))

(declare-fun m!4814885 () Bool)

(assert (=> b!4227405 m!4814885))

(declare-fun m!4814887 () Bool)

(assert (=> b!4227405 m!4814887))

(declare-fun m!4814889 () Bool)

(assert (=> b!4227406 m!4814889))

(declare-fun m!4814891 () Bool)

(assert (=> b!4227406 m!4814891))

(declare-fun m!4814893 () Bool)

(assert (=> b!4227400 m!4814893))

(check-sat (not b_next!125401) b_and!333929 (not b!4227400) b_and!333927 (not b!4227405) b_and!333925 b_and!333931 (not b!4227407) (not b_next!125399) (not b!4227408) (not b_next!125397) (not b!4227404) (not b!4227401) (not b_next!125395) (not b!4227406) (not b!4227402))
(check-sat (not b_next!125401) (not b_next!125397) b_and!333929 (not b_next!125395) b_and!333927 b_and!333925 b_and!333931 (not b_next!125399))
(get-model)

(declare-fun d!1244477 () Bool)

(assert (=> d!1244477 (= (inv!61281 (tag!8714 (h!52051 rules!4024))) (= (mod (str.len (value!244205 (tag!8714 (h!52051 rules!4024)))) 2) 0))))

(assert (=> b!4227407 d!1244477))

(declare-fun d!1244479 () Bool)

(declare-fun res!1738325 () Bool)

(declare-fun e!2624807 () Bool)

(assert (=> d!1244479 (=> (not res!1738325) (not e!2624807))))

(declare-fun semiInverseModEq!3417 (Int Int) Bool)

(assert (=> d!1244479 (= res!1738325 (semiInverseModEq!3417 (toChars!10437 (transformation!7850 (h!52051 rules!4024))) (toValue!10578 (transformation!7850 (h!52051 rules!4024)))))))

(assert (=> d!1244479 (= (inv!61283 (transformation!7850 (h!52051 rules!4024))) e!2624807)))

(declare-fun b!4227419 () Bool)

(declare-fun equivClasses!3316 (Int Int) Bool)

(assert (=> b!4227419 (= e!2624807 (equivClasses!3316 (toChars!10437 (transformation!7850 (h!52051 rules!4024))) (toValue!10578 (transformation!7850 (h!52051 rules!4024)))))))

(assert (= (and d!1244479 res!1738325) b!4227419))

(declare-fun m!4814903 () Bool)

(assert (=> d!1244479 m!4814903))

(declare-fun m!4814905 () Bool)

(assert (=> b!4227419 m!4814905))

(assert (=> b!4227407 d!1244479))

(declare-fun d!1244487 () Bool)

(assert (=> d!1244487 true))

(declare-fun lt!1503271 () Bool)

(declare-fun lambda!129948 () Int)

(declare-fun forall!8524 (List!46755 Int) Bool)

(assert (=> d!1244487 (= lt!1503271 (forall!8524 (t!349372 rules!4024) lambda!129948))))

(declare-fun e!2624844 () Bool)

(assert (=> d!1244487 (= lt!1503271 e!2624844)))

(declare-fun res!1738343 () Bool)

(assert (=> d!1244487 (=> res!1738343 e!2624844)))

(assert (=> d!1244487 (= res!1738343 (not ((_ is Cons!46631) (t!349372 rules!4024))))))

(assert (=> d!1244487 (= (rulesValidInductive!2952 thiss!26827 (t!349372 rules!4024)) lt!1503271)))

(declare-fun b!4227475 () Bool)

(declare-fun e!2624845 () Bool)

(assert (=> b!4227475 (= e!2624844 e!2624845)))

(declare-fun res!1738342 () Bool)

(assert (=> b!4227475 (=> (not res!1738342) (not e!2624845))))

(declare-fun ruleValid!3550 (LexerInterface!7445 Rule!15500) Bool)

(assert (=> b!4227475 (= res!1738342 (ruleValid!3550 thiss!26827 (h!52051 (t!349372 rules!4024))))))

(declare-fun b!4227476 () Bool)

(assert (=> b!4227476 (= e!2624845 (rulesValidInductive!2952 thiss!26827 (t!349372 (t!349372 rules!4024))))))

(assert (= (and d!1244487 (not res!1738343)) b!4227475))

(assert (= (and b!4227475 res!1738342) b!4227476))

(declare-fun m!4814933 () Bool)

(assert (=> d!1244487 m!4814933))

(declare-fun m!4814935 () Bool)

(assert (=> b!4227475 m!4814935))

(declare-fun m!4814937 () Bool)

(assert (=> b!4227476 m!4814937))

(assert (=> b!4227402 d!1244487))

(declare-fun d!1244499 () Bool)

(declare-fun lt!1503274 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7329 (List!46755) (InoxSet Rule!15500))

(assert (=> d!1244499 (= lt!1503274 (select (content!7329 (t!349372 rules!4024)) r!4367))))

(declare-fun e!2624851 () Bool)

(assert (=> d!1244499 (= lt!1503274 e!2624851)))

(declare-fun res!1738348 () Bool)

(assert (=> d!1244499 (=> (not res!1738348) (not e!2624851))))

(assert (=> d!1244499 (= res!1738348 ((_ is Cons!46631) (t!349372 rules!4024)))))

(assert (=> d!1244499 (= (contains!9673 (t!349372 rules!4024) r!4367) lt!1503274)))

(declare-fun b!4227483 () Bool)

(declare-fun e!2624850 () Bool)

(assert (=> b!4227483 (= e!2624851 e!2624850)))

(declare-fun res!1738349 () Bool)

(assert (=> b!4227483 (=> res!1738349 e!2624850)))

(assert (=> b!4227483 (= res!1738349 (= (h!52051 (t!349372 rules!4024)) r!4367))))

(declare-fun b!4227484 () Bool)

(assert (=> b!4227484 (= e!2624850 (contains!9673 (t!349372 (t!349372 rules!4024)) r!4367))))

(assert (= (and d!1244499 res!1738348) b!4227483))

(assert (= (and b!4227483 (not res!1738349)) b!4227484))

(declare-fun m!4814939 () Bool)

(assert (=> d!1244499 m!4814939))

(declare-fun m!4814941 () Bool)

(assert (=> d!1244499 m!4814941))

(declare-fun m!4814943 () Bool)

(assert (=> b!4227484 m!4814943))

(assert (=> b!4227400 d!1244499))

(declare-fun d!1244501 () Bool)

(declare-fun lt!1503275 () Bool)

(assert (=> d!1244501 (= lt!1503275 (select (content!7329 rules!4024) r!4367))))

(declare-fun e!2624853 () Bool)

(assert (=> d!1244501 (= lt!1503275 e!2624853)))

(declare-fun res!1738350 () Bool)

(assert (=> d!1244501 (=> (not res!1738350) (not e!2624853))))

(assert (=> d!1244501 (= res!1738350 ((_ is Cons!46631) rules!4024))))

(assert (=> d!1244501 (= (contains!9673 rules!4024 r!4367) lt!1503275)))

(declare-fun b!4227485 () Bool)

(declare-fun e!2624852 () Bool)

(assert (=> b!4227485 (= e!2624853 e!2624852)))

(declare-fun res!1738351 () Bool)

(assert (=> b!4227485 (=> res!1738351 e!2624852)))

(assert (=> b!4227485 (= res!1738351 (= (h!52051 rules!4024) r!4367))))

(declare-fun b!4227486 () Bool)

(assert (=> b!4227486 (= e!2624852 (contains!9673 (t!349372 rules!4024) r!4367))))

(assert (= (and d!1244501 res!1738350) b!4227485))

(assert (= (and b!4227485 (not res!1738351)) b!4227486))

(declare-fun m!4814945 () Bool)

(assert (=> d!1244501 m!4814945))

(declare-fun m!4814947 () Bool)

(assert (=> d!1244501 m!4814947))

(assert (=> b!4227486 m!4814893))

(assert (=> b!4227401 d!1244501))

(declare-fun d!1244503 () Bool)

(assert (=> d!1244503 (= (inv!61281 (tag!8714 r!4367)) (= (mod (str.len (value!244205 (tag!8714 r!4367))) 2) 0))))

(assert (=> b!4227406 d!1244503))

(declare-fun d!1244505 () Bool)

(declare-fun res!1738352 () Bool)

(declare-fun e!2624854 () Bool)

(assert (=> d!1244505 (=> (not res!1738352) (not e!2624854))))

(assert (=> d!1244505 (= res!1738352 (semiInverseModEq!3417 (toChars!10437 (transformation!7850 r!4367)) (toValue!10578 (transformation!7850 r!4367))))))

(assert (=> d!1244505 (= (inv!61283 (transformation!7850 r!4367)) e!2624854)))

(declare-fun b!4227487 () Bool)

(assert (=> b!4227487 (= e!2624854 (equivClasses!3316 (toChars!10437 (transformation!7850 r!4367)) (toValue!10578 (transformation!7850 r!4367))))))

(assert (= (and d!1244505 res!1738352) b!4227487))

(declare-fun m!4814949 () Bool)

(assert (=> d!1244505 m!4814949))

(declare-fun m!4814951 () Bool)

(assert (=> b!4227487 m!4814951))

(assert (=> b!4227406 d!1244505))

(declare-fun bs!597869 () Bool)

(declare-fun d!1244507 () Bool)

(assert (= bs!597869 (and d!1244507 d!1244487)))

(declare-fun lambda!129949 () Int)

(assert (=> bs!597869 (= lambda!129949 lambda!129948)))

(assert (=> d!1244507 true))

(declare-fun lt!1503276 () Bool)

(assert (=> d!1244507 (= lt!1503276 (forall!8524 rules!4024 lambda!129949))))

(declare-fun e!2624855 () Bool)

(assert (=> d!1244507 (= lt!1503276 e!2624855)))

(declare-fun res!1738354 () Bool)

(assert (=> d!1244507 (=> res!1738354 e!2624855)))

(assert (=> d!1244507 (= res!1738354 (not ((_ is Cons!46631) rules!4024)))))

(assert (=> d!1244507 (= (rulesValidInductive!2952 thiss!26827 rules!4024) lt!1503276)))

(declare-fun b!4227488 () Bool)

(declare-fun e!2624856 () Bool)

(assert (=> b!4227488 (= e!2624855 e!2624856)))

(declare-fun res!1738353 () Bool)

(assert (=> b!4227488 (=> (not res!1738353) (not e!2624856))))

(assert (=> b!4227488 (= res!1738353 (ruleValid!3550 thiss!26827 (h!52051 rules!4024)))))

(declare-fun b!4227489 () Bool)

(assert (=> b!4227489 (= e!2624856 (rulesValidInductive!2952 thiss!26827 (t!349372 rules!4024)))))

(assert (= (and d!1244507 (not res!1738354)) b!4227488))

(assert (= (and b!4227488 res!1738353) b!4227489))

(declare-fun m!4814953 () Bool)

(assert (=> d!1244507 m!4814953))

(declare-fun m!4814955 () Bool)

(assert (=> b!4227488 m!4814955))

(assert (=> b!4227489 m!4814875))

(assert (=> b!4227404 d!1244507))

(declare-fun d!1244509 () Bool)

(declare-fun lt!1503279 () Int)

(assert (=> d!1244509 (>= lt!1503279 0)))

(declare-fun e!2624859 () Int)

(assert (=> d!1244509 (= lt!1503279 e!2624859)))

(declare-fun c!718730 () Bool)

(assert (=> d!1244509 (= c!718730 ((_ is Nil!46631) (t!349372 rules!4024)))))

(assert (=> d!1244509 (= (ListPrimitiveSize!309 (t!349372 rules!4024)) lt!1503279)))

(declare-fun b!4227494 () Bool)

(assert (=> b!4227494 (= e!2624859 0)))

(declare-fun b!4227495 () Bool)

(assert (=> b!4227495 (= e!2624859 (+ 1 (ListPrimitiveSize!309 (t!349372 (t!349372 rules!4024)))))))

(assert (= (and d!1244509 c!718730) b!4227494))

(assert (= (and d!1244509 (not c!718730)) b!4227495))

(declare-fun m!4814957 () Bool)

(assert (=> b!4227495 m!4814957))

(assert (=> b!4227405 d!1244509))

(declare-fun d!1244511 () Bool)

(declare-fun lt!1503280 () Int)

(assert (=> d!1244511 (>= lt!1503280 0)))

(declare-fun e!2624860 () Int)

(assert (=> d!1244511 (= lt!1503280 e!2624860)))

(declare-fun c!718731 () Bool)

(assert (=> d!1244511 (= c!718731 ((_ is Nil!46631) rules!4024))))

(assert (=> d!1244511 (= (ListPrimitiveSize!309 rules!4024) lt!1503280)))

(declare-fun b!4227496 () Bool)

(assert (=> b!4227496 (= e!2624860 0)))

(declare-fun b!4227497 () Bool)

(assert (=> b!4227497 (= e!2624860 (+ 1 (ListPrimitiveSize!309 (t!349372 rules!4024))))))

(assert (= (and d!1244511 c!718731) b!4227496))

(assert (= (and d!1244511 (not c!718731)) b!4227497))

(assert (=> b!4227497 m!4814885))

(assert (=> b!4227405 d!1244511))

(declare-fun b!4227508 () Bool)

(declare-fun b_free!124703 () Bool)

(declare-fun b_next!125407 () Bool)

(assert (=> b!4227508 (= b_free!124703 (not b_next!125407))))

(declare-fun tp!1294626 () Bool)

(declare-fun b_and!333937 () Bool)

(assert (=> b!4227508 (= tp!1294626 b_and!333937)))

(declare-fun b_free!124705 () Bool)

(declare-fun b_next!125409 () Bool)

(assert (=> b!4227508 (= b_free!124705 (not b_next!125409))))

(declare-fun tp!1294624 () Bool)

(declare-fun b_and!333939 () Bool)

(assert (=> b!4227508 (= tp!1294624 b_and!333939)))

(declare-fun e!2624870 () Bool)

(assert (=> b!4227508 (= e!2624870 (and tp!1294626 tp!1294624))))

(declare-fun tp!1294623 () Bool)

(declare-fun b!4227507 () Bool)

(declare-fun e!2624872 () Bool)

(assert (=> b!4227507 (= e!2624872 (and tp!1294623 (inv!61281 (tag!8714 (h!52051 (t!349372 rules!4024)))) (inv!61283 (transformation!7850 (h!52051 (t!349372 rules!4024)))) e!2624870))))

(declare-fun b!4227506 () Bool)

(declare-fun e!2624869 () Bool)

(declare-fun tp!1294625 () Bool)

(assert (=> b!4227506 (= e!2624869 (and e!2624872 tp!1294625))))

(assert (=> b!4227408 (= tp!1294580 e!2624869)))

(assert (= b!4227507 b!4227508))

(assert (= b!4227506 b!4227507))

(assert (= (and b!4227408 ((_ is Cons!46631) (t!349372 rules!4024))) b!4227506))

(declare-fun m!4814959 () Bool)

(assert (=> b!4227507 m!4814959))

(declare-fun m!4814961 () Bool)

(assert (=> b!4227507 m!4814961))

(declare-fun b!4227522 () Bool)

(declare-fun e!2624875 () Bool)

(declare-fun tp!1294640 () Bool)

(declare-fun tp!1294639 () Bool)

(assert (=> b!4227522 (= e!2624875 (and tp!1294640 tp!1294639))))

(declare-fun b!4227520 () Bool)

(declare-fun tp!1294641 () Bool)

(declare-fun tp!1294638 () Bool)

(assert (=> b!4227520 (= e!2624875 (and tp!1294641 tp!1294638))))

(declare-fun b!4227521 () Bool)

(declare-fun tp!1294637 () Bool)

(assert (=> b!4227521 (= e!2624875 tp!1294637)))

(assert (=> b!4227407 (= tp!1294581 e!2624875)))

(declare-fun b!4227519 () Bool)

(declare-fun tp_is_empty!22449 () Bool)

(assert (=> b!4227519 (= e!2624875 tp_is_empty!22449)))

(assert (= (and b!4227407 ((_ is ElementMatch!12755) (regex!7850 (h!52051 rules!4024)))) b!4227519))

(assert (= (and b!4227407 ((_ is Concat!20835) (regex!7850 (h!52051 rules!4024)))) b!4227520))

(assert (= (and b!4227407 ((_ is Star!12755) (regex!7850 (h!52051 rules!4024)))) b!4227521))

(assert (= (and b!4227407 ((_ is Union!12755) (regex!7850 (h!52051 rules!4024)))) b!4227522))

(declare-fun b!4227526 () Bool)

(declare-fun e!2624876 () Bool)

(declare-fun tp!1294645 () Bool)

(declare-fun tp!1294644 () Bool)

(assert (=> b!4227526 (= e!2624876 (and tp!1294645 tp!1294644))))

(declare-fun b!4227524 () Bool)

(declare-fun tp!1294646 () Bool)

(declare-fun tp!1294643 () Bool)

(assert (=> b!4227524 (= e!2624876 (and tp!1294646 tp!1294643))))

(declare-fun b!4227525 () Bool)

(declare-fun tp!1294642 () Bool)

(assert (=> b!4227525 (= e!2624876 tp!1294642)))

(assert (=> b!4227406 (= tp!1294577 e!2624876)))

(declare-fun b!4227523 () Bool)

(assert (=> b!4227523 (= e!2624876 tp_is_empty!22449)))

(assert (= (and b!4227406 ((_ is ElementMatch!12755) (regex!7850 r!4367))) b!4227523))

(assert (= (and b!4227406 ((_ is Concat!20835) (regex!7850 r!4367))) b!4227524))

(assert (= (and b!4227406 ((_ is Star!12755) (regex!7850 r!4367))) b!4227525))

(assert (= (and b!4227406 ((_ is Union!12755) (regex!7850 r!4367))) b!4227526))

(check-sat (not b_next!125401) (not b_next!125397) (not b!4227525) (not b!4227419) (not b!4227484) (not b_next!125395) (not b!4227520) (not b!4227506) (not d!1244505) b_and!333937 b_and!333931 (not d!1244501) (not b_next!125409) (not b_next!125399) (not d!1244479) (not d!1244499) (not b!4227476) b_and!333929 (not b!4227524) (not d!1244487) (not b!4227521) (not b!4227507) (not b!4227486) (not d!1244507) (not b!4227487) (not b!4227488) b_and!333927 (not b!4227522) b_and!333925 (not b!4227475) (not b_next!125407) (not b!4227495) tp_is_empty!22449 (not b!4227497) (not b!4227526) (not b!4227489) b_and!333939)
(check-sat (not b_next!125401) (not b_next!125397) b_and!333929 (not b_next!125395) b_and!333927 b_and!333925 (not b_next!125407) b_and!333937 b_and!333931 (not b_next!125409) (not b_next!125399) b_and!333939)
