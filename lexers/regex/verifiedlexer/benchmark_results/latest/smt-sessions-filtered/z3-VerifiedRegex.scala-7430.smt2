; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395254 () Bool)

(assert start!395254)

(declare-fun b!4152504 () Bool)

(declare-fun b_free!118723 () Bool)

(declare-fun b_next!119427 () Bool)

(assert (=> b!4152504 (= b_free!118723 (not b_next!119427))))

(declare-fun tp!1265687 () Bool)

(declare-fun b_and!323049 () Bool)

(assert (=> b!4152504 (= tp!1265687 b_and!323049)))

(declare-fun b_free!118725 () Bool)

(declare-fun b_next!119429 () Bool)

(assert (=> b!4152504 (= b_free!118725 (not b_next!119429))))

(declare-fun tp!1265685 () Bool)

(declare-fun b_and!323051 () Bool)

(assert (=> b!4152504 (= tp!1265685 b_and!323051)))

(declare-fun b!4152501 () Bool)

(declare-fun b_free!118727 () Bool)

(declare-fun b_next!119431 () Bool)

(assert (=> b!4152501 (= b_free!118727 (not b_next!119431))))

(declare-fun tp!1265679 () Bool)

(declare-fun b_and!323053 () Bool)

(assert (=> b!4152501 (= tp!1265679 b_and!323053)))

(declare-fun b_free!118729 () Bool)

(declare-fun b_next!119433 () Bool)

(assert (=> b!4152501 (= b_free!118729 (not b_next!119433))))

(declare-fun tp!1265688 () Bool)

(declare-fun b_and!323055 () Bool)

(assert (=> b!4152501 (= tp!1265688 b_and!323055)))

(declare-fun b!4152502 () Bool)

(declare-fun b_free!118731 () Bool)

(declare-fun b_next!119435 () Bool)

(assert (=> b!4152502 (= b_free!118731 (not b_next!119435))))

(declare-fun tp!1265680 () Bool)

(declare-fun b_and!323057 () Bool)

(assert (=> b!4152502 (= tp!1265680 b_and!323057)))

(declare-fun b_free!118733 () Bool)

(declare-fun b_next!119437 () Bool)

(assert (=> b!4152502 (= b_free!118733 (not b_next!119437))))

(declare-fun tp!1265683 () Bool)

(declare-fun b_and!323059 () Bool)

(assert (=> b!4152502 (= tp!1265683 b_and!323059)))

(declare-fun b!4152497 () Bool)

(declare-fun res!1700588 () Bool)

(declare-fun e!2576329 () Bool)

(assert (=> b!4152497 (=> (not res!1700588) (not e!2576329))))

(declare-datatypes ((List!45233 0))(
  ( (Nil!45109) (Cons!45109 (h!50529 (_ BitVec 16)) (t!343232 List!45233)) )
))
(declare-datatypes ((TokenValue!7662 0))(
  ( (FloatLiteralValue!15324 (text!54079 List!45233)) (TokenValueExt!7661 (__x!27541 Int)) (Broken!38310 (value!232340 List!45233)) (Object!7785) (End!7662) (Def!7662) (Underscore!7662) (Match!7662) (Else!7662) (Error!7662) (Case!7662) (If!7662) (Extends!7662) (Abstract!7662) (Class!7662) (Val!7662) (DelimiterValue!15324 (del!7722 List!45233)) (KeywordValue!7668 (value!232341 List!45233)) (CommentValue!15324 (value!232342 List!45233)) (WhitespaceValue!15324 (value!232343 List!45233)) (IndentationValue!7662 (value!232344 List!45233)) (String!52059) (Int32!7662) (Broken!38311 (value!232345 List!45233)) (Boolean!7663) (Unit!64378) (OperatorValue!7665 (op!7722 List!45233)) (IdentifierValue!15324 (value!232346 List!45233)) (IdentifierValue!15325 (value!232347 List!45233)) (WhitespaceValue!15325 (value!232348 List!45233)) (True!15324) (False!15324) (Broken!38312 (value!232349 List!45233)) (Broken!38313 (value!232350 List!45233)) (True!15325) (RightBrace!7662) (RightBracket!7662) (Colon!7662) (Null!7662) (Comma!7662) (LeftBracket!7662) (False!15325) (LeftBrace!7662) (ImaginaryLiteralValue!7662 (text!54080 List!45233)) (StringLiteralValue!22986 (value!232351 List!45233)) (EOFValue!7662 (value!232352 List!45233)) (IdentValue!7662 (value!232353 List!45233)) (DelimiterValue!15325 (value!232354 List!45233)) (DedentValue!7662 (value!232355 List!45233)) (NewLineValue!7662 (value!232356 List!45233)) (IntegerValue!22986 (value!232357 (_ BitVec 32)) (text!54081 List!45233)) (IntegerValue!22987 (value!232358 Int) (text!54082 List!45233)) (Times!7662) (Or!7662) (Equal!7662) (Minus!7662) (Broken!38314 (value!232359 List!45233)) (And!7662) (Div!7662) (LessEqual!7662) (Mod!7662) (Concat!19999) (Not!7662) (Plus!7662) (SpaceValue!7662 (value!232360 List!45233)) (IntegerValue!22988 (value!232361 Int) (text!54083 List!45233)) (StringLiteralValue!22987 (text!54084 List!45233)) (FloatLiteralValue!15325 (text!54085 List!45233)) (BytesLiteralValue!7662 (value!232362 List!45233)) (CommentValue!15325 (value!232363 List!45233)) (StringLiteralValue!22988 (value!232364 List!45233)) (ErrorTokenValue!7662 (msg!7723 List!45233)) )
))
(declare-datatypes ((C!24860 0))(
  ( (C!24861 (val!14540 Int)) )
))
(declare-datatypes ((List!45234 0))(
  ( (Nil!45110) (Cons!45110 (h!50530 C!24860) (t!343233 List!45234)) )
))
(declare-datatypes ((IArray!27291 0))(
  ( (IArray!27292 (innerList!13703 List!45234)) )
))
(declare-datatypes ((Conc!13643 0))(
  ( (Node!13643 (left!33777 Conc!13643) (right!34107 Conc!13643) (csize!27516 Int) (cheight!13854 Int)) (Leaf!21074 (xs!16949 IArray!27291) (csize!27517 Int)) (Empty!13643) )
))
(declare-datatypes ((BalanceConc!26880 0))(
  ( (BalanceConc!26881 (c!711104 Conc!13643)) )
))
(declare-datatypes ((Regex!12337 0))(
  ( (ElementMatch!12337 (c!711105 C!24860)) (Concat!20000 (regOne!25186 Regex!12337) (regTwo!25186 Regex!12337)) (EmptyExpr!12337) (Star!12337 (reg!12666 Regex!12337)) (EmptyLang!12337) (Union!12337 (regOne!25187 Regex!12337) (regTwo!25187 Regex!12337)) )
))
(declare-datatypes ((String!52060 0))(
  ( (String!52061 (value!232365 String)) )
))
(declare-datatypes ((TokenValueInjection!14752 0))(
  ( (TokenValueInjection!14753 (toValue!10096 Int) (toChars!9955 Int)) )
))
(declare-datatypes ((Rule!14664 0))(
  ( (Rule!14665 (regex!7432 Regex!12337) (tag!8292 String!52060) (isSeparator!7432 Bool) (transformation!7432 TokenValueInjection!14752)) )
))
(declare-datatypes ((List!45235 0))(
  ( (Nil!45111) (Cons!45111 (h!50531 Rule!14664) (t!343234 List!45235)) )
))
(declare-fun rules!3756 () List!45235)

(declare-fun rBis!149 () Rule!14664)

(declare-fun r!4008 () Rule!14664)

(declare-fun getIndex!778 (List!45235 Rule!14664) Int)

(assert (=> b!4152497 (= res!1700588 (< (getIndex!778 rules!3756 rBis!149) (getIndex!778 rules!3756 r!4008)))))

(declare-fun b!4152498 () Bool)

(declare-fun e!2576332 () Bool)

(declare-fun tp_is_empty!21597 () Bool)

(declare-fun tp!1265689 () Bool)

(assert (=> b!4152498 (= e!2576332 (and tp_is_empty!21597 tp!1265689))))

(declare-fun b!4152499 () Bool)

(declare-fun res!1700586 () Bool)

(declare-fun e!2576334 () Bool)

(assert (=> b!4152499 (=> (not res!1700586) (not e!2576334))))

(declare-fun p!2912 () List!45234)

(declare-fun isEmpty!26936 (List!45234) Bool)

(assert (=> b!4152499 (= res!1700586 (not (isEmpty!26936 p!2912)))))

(declare-fun b!4152500 () Bool)

(get-info :version)

(assert (=> b!4152500 (= e!2576329 (not (or (and ((_ is Cons!45111) rules!3756) (= (h!50531 rules!3756) rBis!149)) (and ((_ is Cons!45111) rules!3756) (not (= (h!50531 rules!3756) rBis!149))) (not ((_ is Nil!45111) rules!3756)))))))

(declare-datatypes ((Unit!64379 0))(
  ( (Unit!64380) )
))
(declare-fun lt!1480914 () Unit!64379)

(declare-datatypes ((LexerInterface!7021 0))(
  ( (LexerInterfaceExt!7018 (__x!27542 Int)) (Lexer!7019) )
))
(declare-fun thiss!25645 () LexerInterface!7021)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2278 (LexerInterface!7021 Rule!14664 List!45235) Unit!64379)

(assert (=> b!4152500 (= lt!1480914 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2278 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3238 (LexerInterface!7021 Rule!14664) Bool)

(assert (=> b!4152500 (ruleValid!3238 thiss!25645 rBis!149)))

(declare-fun lt!1480911 () Unit!64379)

(assert (=> b!4152500 (= lt!1480911 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2278 thiss!25645 rBis!149 rules!3756))))

(declare-fun e!2576331 () Bool)

(assert (=> b!4152501 (= e!2576331 (and tp!1265679 tp!1265688))))

(declare-fun res!1700584 () Bool)

(assert (=> start!395254 (=> (not res!1700584) (not e!2576334))))

(assert (=> start!395254 (= res!1700584 ((_ is Lexer!7019) thiss!25645))))

(assert (=> start!395254 e!2576334))

(declare-fun e!2576338 () Bool)

(assert (=> start!395254 e!2576338))

(declare-fun e!2576330 () Bool)

(assert (=> start!395254 e!2576330))

(assert (=> start!395254 true))

(declare-fun e!2576335 () Bool)

(assert (=> start!395254 e!2576335))

(assert (=> start!395254 e!2576332))

(declare-fun e!2576327 () Bool)

(assert (=> start!395254 e!2576327))

(declare-fun e!2576340 () Bool)

(assert (=> b!4152502 (= e!2576340 (and tp!1265680 tp!1265683))))

(declare-fun b!4152503 () Bool)

(declare-fun res!1700590 () Bool)

(assert (=> b!4152503 (=> (not res!1700590) (not e!2576334))))

(declare-fun contains!9118 (List!45235 Rule!14664) Bool)

(assert (=> b!4152503 (= res!1700590 (contains!9118 rules!3756 r!4008))))

(declare-fun e!2576333 () Bool)

(assert (=> b!4152504 (= e!2576333 (and tp!1265687 tp!1265685))))

(declare-fun b!4152505 () Bool)

(declare-fun res!1700589 () Bool)

(assert (=> b!4152505 (=> (not res!1700589) (not e!2576334))))

(declare-fun rulesInvariant!6318 (LexerInterface!7021 List!45235) Bool)

(assert (=> b!4152505 (= res!1700589 (rulesInvariant!6318 thiss!25645 rules!3756))))

(declare-fun b!4152506 () Bool)

(declare-fun tp!1265684 () Bool)

(assert (=> b!4152506 (= e!2576330 (and tp_is_empty!21597 tp!1265684))))

(declare-fun b!4152507 () Bool)

(declare-fun e!2576336 () Bool)

(declare-fun tp!1265682 () Bool)

(assert (=> b!4152507 (= e!2576338 (and e!2576336 tp!1265682))))

(declare-fun b!4152508 () Bool)

(declare-fun res!1700582 () Bool)

(assert (=> b!4152508 (=> (not res!1700582) (not e!2576334))))

(assert (=> b!4152508 (= res!1700582 (contains!9118 rules!3756 rBis!149))))

(declare-fun b!4152509 () Bool)

(declare-fun tp!1265686 () Bool)

(declare-fun inv!59721 (String!52060) Bool)

(declare-fun inv!59723 (TokenValueInjection!14752) Bool)

(assert (=> b!4152509 (= e!2576327 (and tp!1265686 (inv!59721 (tag!8292 rBis!149)) (inv!59723 (transformation!7432 rBis!149)) e!2576331))))

(declare-fun tp!1265690 () Bool)

(declare-fun b!4152510 () Bool)

(assert (=> b!4152510 (= e!2576335 (and tp!1265690 (inv!59721 (tag!8292 r!4008)) (inv!59723 (transformation!7432 r!4008)) e!2576333))))

(declare-fun b!4152511 () Bool)

(declare-fun res!1700583 () Bool)

(assert (=> b!4152511 (=> (not res!1700583) (not e!2576329))))

(assert (=> b!4152511 (= res!1700583 (ruleValid!3238 thiss!25645 r!4008))))

(declare-fun b!4152512 () Bool)

(assert (=> b!4152512 (= e!2576334 e!2576329)))

(declare-fun res!1700585 () Bool)

(assert (=> b!4152512 (=> (not res!1700585) (not e!2576329))))

(declare-fun input!3238 () List!45234)

(declare-fun lt!1480913 () BalanceConc!26880)

(declare-datatypes ((Token!13794 0))(
  ( (Token!13795 (value!232366 TokenValue!7662) (rule!10574 Rule!14664) (size!33441 Int) (originalCharacters!7928 List!45234)) )
))
(declare-datatypes ((tuple2!43470 0))(
  ( (tuple2!43471 (_1!24869 Token!13794) (_2!24869 List!45234)) )
))
(declare-datatypes ((Option!9738 0))(
  ( (None!9737) (Some!9737 (v!40407 tuple2!43470)) )
))
(declare-fun maxPrefix!4211 (LexerInterface!7021 List!45235 List!45234) Option!9738)

(declare-fun apply!10505 (TokenValueInjection!14752 BalanceConc!26880) TokenValue!7662)

(declare-fun size!33442 (List!45234) Int)

(declare-fun getSuffix!2694 (List!45234 List!45234) List!45234)

(assert (=> b!4152512 (= res!1700585 (= (maxPrefix!4211 thiss!25645 rules!3756 input!3238) (Some!9737 (tuple2!43471 (Token!13795 (apply!10505 (transformation!7432 r!4008) lt!1480913) r!4008 (size!33442 p!2912) p!2912) (getSuffix!2694 input!3238 p!2912)))))))

(declare-fun lt!1480912 () Unit!64379)

(declare-fun lemmaSemiInverse!2290 (TokenValueInjection!14752 BalanceConc!26880) Unit!64379)

(assert (=> b!4152512 (= lt!1480912 (lemmaSemiInverse!2290 (transformation!7432 r!4008) lt!1480913))))

(declare-fun seqFromList!5549 (List!45234) BalanceConc!26880)

(assert (=> b!4152512 (= lt!1480913 (seqFromList!5549 p!2912))))

(declare-fun b!4152513 () Bool)

(declare-fun tp!1265681 () Bool)

(assert (=> b!4152513 (= e!2576336 (and tp!1265681 (inv!59721 (tag!8292 (h!50531 rules!3756))) (inv!59723 (transformation!7432 (h!50531 rules!3756))) e!2576340))))

(declare-fun b!4152514 () Bool)

(declare-fun res!1700581 () Bool)

(assert (=> b!4152514 (=> (not res!1700581) (not e!2576334))))

(declare-fun isEmpty!26937 (List!45235) Bool)

(assert (=> b!4152514 (= res!1700581 (not (isEmpty!26937 rules!3756)))))

(declare-fun b!4152515 () Bool)

(declare-fun res!1700587 () Bool)

(assert (=> b!4152515 (=> (not res!1700587) (not e!2576334))))

(declare-fun isPrefix!4367 (List!45234 List!45234) Bool)

(assert (=> b!4152515 (= res!1700587 (isPrefix!4367 p!2912 input!3238))))

(declare-fun b!4152516 () Bool)

(declare-fun res!1700580 () Bool)

(assert (=> b!4152516 (=> (not res!1700580) (not e!2576329))))

(declare-fun matchR!6166 (Regex!12337 List!45234) Bool)

(assert (=> b!4152516 (= res!1700580 (matchR!6166 (regex!7432 r!4008) p!2912))))

(assert (= (and start!395254 res!1700584) b!4152515))

(assert (= (and b!4152515 res!1700587) b!4152514))

(assert (= (and b!4152514 res!1700581) b!4152505))

(assert (= (and b!4152505 res!1700589) b!4152503))

(assert (= (and b!4152503 res!1700590) b!4152508))

(assert (= (and b!4152508 res!1700582) b!4152499))

(assert (= (and b!4152499 res!1700586) b!4152512))

(assert (= (and b!4152512 res!1700585) b!4152516))

(assert (= (and b!4152516 res!1700580) b!4152497))

(assert (= (and b!4152497 res!1700588) b!4152511))

(assert (= (and b!4152511 res!1700583) b!4152500))

(assert (= b!4152513 b!4152502))

(assert (= b!4152507 b!4152513))

(assert (= (and start!395254 ((_ is Cons!45111) rules!3756)) b!4152507))

(assert (= (and start!395254 ((_ is Cons!45110) p!2912)) b!4152506))

(assert (= b!4152510 b!4152504))

(assert (= start!395254 b!4152510))

(assert (= (and start!395254 ((_ is Cons!45110) input!3238)) b!4152498))

(assert (= b!4152509 b!4152501))

(assert (= start!395254 b!4152509))

(declare-fun m!4747919 () Bool)

(assert (=> b!4152505 m!4747919))

(declare-fun m!4747921 () Bool)

(assert (=> b!4152508 m!4747921))

(declare-fun m!4747923 () Bool)

(assert (=> b!4152513 m!4747923))

(declare-fun m!4747925 () Bool)

(assert (=> b!4152513 m!4747925))

(declare-fun m!4747927 () Bool)

(assert (=> b!4152511 m!4747927))

(declare-fun m!4747929 () Bool)

(assert (=> b!4152512 m!4747929))

(declare-fun m!4747931 () Bool)

(assert (=> b!4152512 m!4747931))

(declare-fun m!4747933 () Bool)

(assert (=> b!4152512 m!4747933))

(declare-fun m!4747935 () Bool)

(assert (=> b!4152512 m!4747935))

(declare-fun m!4747937 () Bool)

(assert (=> b!4152512 m!4747937))

(declare-fun m!4747939 () Bool)

(assert (=> b!4152512 m!4747939))

(declare-fun m!4747941 () Bool)

(assert (=> b!4152510 m!4747941))

(declare-fun m!4747943 () Bool)

(assert (=> b!4152510 m!4747943))

(declare-fun m!4747945 () Bool)

(assert (=> b!4152503 m!4747945))

(declare-fun m!4747947 () Bool)

(assert (=> b!4152514 m!4747947))

(declare-fun m!4747949 () Bool)

(assert (=> b!4152516 m!4747949))

(declare-fun m!4747951 () Bool)

(assert (=> b!4152515 m!4747951))

(declare-fun m!4747953 () Bool)

(assert (=> b!4152509 m!4747953))

(declare-fun m!4747955 () Bool)

(assert (=> b!4152509 m!4747955))

(declare-fun m!4747957 () Bool)

(assert (=> b!4152499 m!4747957))

(declare-fun m!4747959 () Bool)

(assert (=> b!4152497 m!4747959))

(declare-fun m!4747961 () Bool)

(assert (=> b!4152497 m!4747961))

(declare-fun m!4747963 () Bool)

(assert (=> b!4152500 m!4747963))

(declare-fun m!4747965 () Bool)

(assert (=> b!4152500 m!4747965))

(declare-fun m!4747967 () Bool)

(assert (=> b!4152500 m!4747967))

(check-sat (not b_next!119435) (not b!4152513) (not b!4152497) (not b!4152508) b_and!323057 b_and!323055 (not b!4152511) (not b!4152503) b_and!323049 (not b_next!119429) (not b!4152509) (not b!4152516) b_and!323059 (not b!4152498) (not b!4152514) (not b!4152506) (not b_next!119427) b_and!323053 tp_is_empty!21597 (not b!4152499) (not b!4152510) (not b!4152512) (not b!4152505) (not b_next!119431) (not b!4152507) (not b_next!119433) b_and!323051 (not b!4152515) (not b_next!119437) (not b!4152500))
(check-sat (not b_next!119429) (not b_next!119435) b_and!323059 b_and!323057 b_and!323055 (not b_next!119431) (not b_next!119437) b_and!323049 (not b_next!119427) b_and!323053 b_and!323051 (not b_next!119433))
(get-model)

(declare-fun d!1228251 () Bool)

(declare-fun lt!1480917 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6980 (List!45235) (InoxSet Rule!14664))

(assert (=> d!1228251 (= lt!1480917 (select (content!6980 rules!3756) rBis!149))))

(declare-fun e!2576345 () Bool)

(assert (=> d!1228251 (= lt!1480917 e!2576345)))

(declare-fun res!1700603 () Bool)

(assert (=> d!1228251 (=> (not res!1700603) (not e!2576345))))

(assert (=> d!1228251 (= res!1700603 ((_ is Cons!45111) rules!3756))))

(assert (=> d!1228251 (= (contains!9118 rules!3756 rBis!149) lt!1480917)))

(declare-fun b!4152521 () Bool)

(declare-fun e!2576346 () Bool)

(assert (=> b!4152521 (= e!2576345 e!2576346)))

(declare-fun res!1700604 () Bool)

(assert (=> b!4152521 (=> res!1700604 e!2576346)))

(assert (=> b!4152521 (= res!1700604 (= (h!50531 rules!3756) rBis!149))))

(declare-fun b!4152522 () Bool)

(assert (=> b!4152522 (= e!2576346 (contains!9118 (t!343234 rules!3756) rBis!149))))

(assert (= (and d!1228251 res!1700603) b!4152521))

(assert (= (and b!4152521 (not res!1700604)) b!4152522))

(declare-fun m!4747969 () Bool)

(assert (=> d!1228251 m!4747969))

(declare-fun m!4747971 () Bool)

(assert (=> d!1228251 m!4747971))

(declare-fun m!4747973 () Bool)

(assert (=> b!4152522 m!4747973))

(assert (=> b!4152508 d!1228251))

(declare-fun b!4152539 () Bool)

(declare-fun e!2576359 () Int)

(assert (=> b!4152539 (= e!2576359 0)))

(declare-fun b!4152542 () Bool)

(declare-fun e!2576358 () Int)

(assert (=> b!4152542 (= e!2576358 (- 1))))

(declare-fun d!1228253 () Bool)

(declare-fun lt!1480922 () Int)

(assert (=> d!1228253 (>= lt!1480922 0)))

(assert (=> d!1228253 (= lt!1480922 e!2576359)))

(declare-fun c!711111 () Bool)

(assert (=> d!1228253 (= c!711111 (and ((_ is Cons!45111) rules!3756) (= (h!50531 rules!3756) rBis!149)))))

(assert (=> d!1228253 (contains!9118 rules!3756 rBis!149)))

(assert (=> d!1228253 (= (getIndex!778 rules!3756 rBis!149) lt!1480922)))

(declare-fun b!4152540 () Bool)

(assert (=> b!4152540 (= e!2576359 e!2576358)))

(declare-fun c!711110 () Bool)

(assert (=> b!4152540 (= c!711110 (and ((_ is Cons!45111) rules!3756) (not (= (h!50531 rules!3756) rBis!149))))))

(declare-fun b!4152541 () Bool)

(assert (=> b!4152541 (= e!2576358 (+ 1 (getIndex!778 (t!343234 rules!3756) rBis!149)))))

(assert (= (and d!1228253 c!711111) b!4152539))

(assert (= (and d!1228253 (not c!711111)) b!4152540))

(assert (= (and b!4152540 c!711110) b!4152541))

(assert (= (and b!4152540 (not c!711110)) b!4152542))

(assert (=> d!1228253 m!4747921))

(declare-fun m!4747975 () Bool)

(assert (=> b!4152541 m!4747975))

(assert (=> b!4152497 d!1228253))

(declare-fun b!4152543 () Bool)

(declare-fun e!2576361 () Int)

(assert (=> b!4152543 (= e!2576361 0)))

(declare-fun b!4152546 () Bool)

(declare-fun e!2576360 () Int)

(assert (=> b!4152546 (= e!2576360 (- 1))))

(declare-fun d!1228257 () Bool)

(declare-fun lt!1480923 () Int)

(assert (=> d!1228257 (>= lt!1480923 0)))

(assert (=> d!1228257 (= lt!1480923 e!2576361)))

(declare-fun c!711113 () Bool)

(assert (=> d!1228257 (= c!711113 (and ((_ is Cons!45111) rules!3756) (= (h!50531 rules!3756) r!4008)))))

(assert (=> d!1228257 (contains!9118 rules!3756 r!4008)))

(assert (=> d!1228257 (= (getIndex!778 rules!3756 r!4008) lt!1480923)))

(declare-fun b!4152544 () Bool)

(assert (=> b!4152544 (= e!2576361 e!2576360)))

(declare-fun c!711112 () Bool)

(assert (=> b!4152544 (= c!711112 (and ((_ is Cons!45111) rules!3756) (not (= (h!50531 rules!3756) r!4008))))))

(declare-fun b!4152545 () Bool)

(assert (=> b!4152545 (= e!2576360 (+ 1 (getIndex!778 (t!343234 rules!3756) r!4008)))))

(assert (= (and d!1228257 c!711113) b!4152543))

(assert (= (and d!1228257 (not c!711113)) b!4152544))

(assert (= (and b!4152544 c!711112) b!4152545))

(assert (= (and b!4152544 (not c!711112)) b!4152546))

(assert (=> d!1228257 m!4747945))

(declare-fun m!4747977 () Bool)

(assert (=> b!4152545 m!4747977))

(assert (=> b!4152497 d!1228257))

(declare-fun d!1228259 () Bool)

(assert (=> d!1228259 (= (inv!59721 (tag!8292 rBis!149)) (= (mod (str.len (value!232365 (tag!8292 rBis!149))) 2) 0))))

(assert (=> b!4152509 d!1228259))

(declare-fun d!1228263 () Bool)

(declare-fun res!1700622 () Bool)

(declare-fun e!2576370 () Bool)

(assert (=> d!1228263 (=> (not res!1700622) (not e!2576370))))

(declare-fun semiInverseModEq!3219 (Int Int) Bool)

(assert (=> d!1228263 (= res!1700622 (semiInverseModEq!3219 (toChars!9955 (transformation!7432 rBis!149)) (toValue!10096 (transformation!7432 rBis!149))))))

(assert (=> d!1228263 (= (inv!59723 (transformation!7432 rBis!149)) e!2576370)))

(declare-fun b!4152556 () Bool)

(declare-fun equivClasses!3118 (Int Int) Bool)

(assert (=> b!4152556 (= e!2576370 (equivClasses!3118 (toChars!9955 (transformation!7432 rBis!149)) (toValue!10096 (transformation!7432 rBis!149))))))

(assert (= (and d!1228263 res!1700622) b!4152556))

(declare-fun m!4747995 () Bool)

(assert (=> d!1228263 m!4747995))

(declare-fun m!4747997 () Bool)

(assert (=> b!4152556 m!4747997))

(assert (=> b!4152509 d!1228263))

(declare-fun d!1228269 () Bool)

(assert (=> d!1228269 (= (inv!59721 (tag!8292 r!4008)) (= (mod (str.len (value!232365 (tag!8292 r!4008))) 2) 0))))

(assert (=> b!4152510 d!1228269))

(declare-fun d!1228271 () Bool)

(declare-fun res!1700623 () Bool)

(declare-fun e!2576371 () Bool)

(assert (=> d!1228271 (=> (not res!1700623) (not e!2576371))))

(assert (=> d!1228271 (= res!1700623 (semiInverseModEq!3219 (toChars!9955 (transformation!7432 r!4008)) (toValue!10096 (transformation!7432 r!4008))))))

(assert (=> d!1228271 (= (inv!59723 (transformation!7432 r!4008)) e!2576371)))

(declare-fun b!4152557 () Bool)

(assert (=> b!4152557 (= e!2576371 (equivClasses!3118 (toChars!9955 (transformation!7432 r!4008)) (toValue!10096 (transformation!7432 r!4008))))))

(assert (= (and d!1228271 res!1700623) b!4152557))

(declare-fun m!4747999 () Bool)

(assert (=> d!1228271 m!4747999))

(declare-fun m!4748001 () Bool)

(assert (=> b!4152557 m!4748001))

(assert (=> b!4152510 d!1228271))

(declare-fun d!1228273 () Bool)

(assert (=> d!1228273 (= (isEmpty!26936 p!2912) ((_ is Nil!45110) p!2912))))

(assert (=> b!4152499 d!1228273))

(declare-fun b!4152586 () Bool)

(declare-fun e!2576392 () Bool)

(declare-fun e!2576387 () Bool)

(assert (=> b!4152586 (= e!2576392 e!2576387)))

(declare-fun res!1700643 () Bool)

(assert (=> b!4152586 (=> (not res!1700643) (not e!2576387))))

(declare-fun lt!1480929 () Bool)

(assert (=> b!4152586 (= res!1700643 (not lt!1480929))))

(declare-fun b!4152587 () Bool)

(declare-fun e!2576390 () Bool)

(declare-fun e!2576391 () Bool)

(assert (=> b!4152587 (= e!2576390 e!2576391)))

(declare-fun c!711121 () Bool)

(assert (=> b!4152587 (= c!711121 ((_ is EmptyLang!12337) (regex!7432 r!4008)))))

(declare-fun b!4152588 () Bool)

(assert (=> b!4152588 (= e!2576391 (not lt!1480929))))

(declare-fun b!4152589 () Bool)

(declare-fun e!2576389 () Bool)

(declare-fun derivativeStep!3748 (Regex!12337 C!24860) Regex!12337)

(declare-fun head!8768 (List!45234) C!24860)

(declare-fun tail!6609 (List!45234) List!45234)

(assert (=> b!4152589 (= e!2576389 (matchR!6166 (derivativeStep!3748 (regex!7432 r!4008) (head!8768 p!2912)) (tail!6609 p!2912)))))

(declare-fun b!4152590 () Bool)

(declare-fun res!1700642 () Bool)

(assert (=> b!4152590 (=> res!1700642 e!2576392)))

(declare-fun e!2576386 () Bool)

(assert (=> b!4152590 (= res!1700642 e!2576386)))

(declare-fun res!1700646 () Bool)

(assert (=> b!4152590 (=> (not res!1700646) (not e!2576386))))

(assert (=> b!4152590 (= res!1700646 lt!1480929)))

(declare-fun b!4152591 () Bool)

(declare-fun call!290769 () Bool)

(assert (=> b!4152591 (= e!2576390 (= lt!1480929 call!290769))))

(declare-fun b!4152592 () Bool)

(declare-fun res!1700645 () Bool)

(assert (=> b!4152592 (=> res!1700645 e!2576392)))

(assert (=> b!4152592 (= res!1700645 (not ((_ is ElementMatch!12337) (regex!7432 r!4008))))))

(assert (=> b!4152592 (= e!2576391 e!2576392)))

(declare-fun b!4152593 () Bool)

(assert (=> b!4152593 (= e!2576386 (= (head!8768 p!2912) (c!711105 (regex!7432 r!4008))))))

(declare-fun b!4152594 () Bool)

(declare-fun e!2576388 () Bool)

(assert (=> b!4152594 (= e!2576388 (not (= (head!8768 p!2912) (c!711105 (regex!7432 r!4008)))))))

(declare-fun d!1228275 () Bool)

(assert (=> d!1228275 e!2576390))

(declare-fun c!711123 () Bool)

(assert (=> d!1228275 (= c!711123 ((_ is EmptyExpr!12337) (regex!7432 r!4008)))))

(assert (=> d!1228275 (= lt!1480929 e!2576389)))

(declare-fun c!711122 () Bool)

(assert (=> d!1228275 (= c!711122 (isEmpty!26936 p!2912))))

(declare-fun validRegex!5565 (Regex!12337) Bool)

(assert (=> d!1228275 (validRegex!5565 (regex!7432 r!4008))))

(assert (=> d!1228275 (= (matchR!6166 (regex!7432 r!4008) p!2912) lt!1480929)))

(declare-fun b!4152595 () Bool)

(declare-fun res!1700640 () Bool)

(assert (=> b!4152595 (=> res!1700640 e!2576388)))

(assert (=> b!4152595 (= res!1700640 (not (isEmpty!26936 (tail!6609 p!2912))))))

(declare-fun b!4152596 () Bool)

(declare-fun res!1700647 () Bool)

(assert (=> b!4152596 (=> (not res!1700647) (not e!2576386))))

(assert (=> b!4152596 (= res!1700647 (not call!290769))))

(declare-fun b!4152597 () Bool)

(assert (=> b!4152597 (= e!2576387 e!2576388)))

(declare-fun res!1700641 () Bool)

(assert (=> b!4152597 (=> res!1700641 e!2576388)))

(assert (=> b!4152597 (= res!1700641 call!290769)))

(declare-fun bm!290764 () Bool)

(assert (=> bm!290764 (= call!290769 (isEmpty!26936 p!2912))))

(declare-fun b!4152598 () Bool)

(declare-fun res!1700644 () Bool)

(assert (=> b!4152598 (=> (not res!1700644) (not e!2576386))))

(assert (=> b!4152598 (= res!1700644 (isEmpty!26936 (tail!6609 p!2912)))))

(declare-fun b!4152599 () Bool)

(declare-fun nullable!4355 (Regex!12337) Bool)

(assert (=> b!4152599 (= e!2576389 (nullable!4355 (regex!7432 r!4008)))))

(assert (= (and d!1228275 c!711122) b!4152599))

(assert (= (and d!1228275 (not c!711122)) b!4152589))

(assert (= (and d!1228275 c!711123) b!4152591))

(assert (= (and d!1228275 (not c!711123)) b!4152587))

(assert (= (and b!4152587 c!711121) b!4152588))

(assert (= (and b!4152587 (not c!711121)) b!4152592))

(assert (= (and b!4152592 (not res!1700645)) b!4152590))

(assert (= (and b!4152590 res!1700646) b!4152596))

(assert (= (and b!4152596 res!1700647) b!4152598))

(assert (= (and b!4152598 res!1700644) b!4152593))

(assert (= (and b!4152590 (not res!1700642)) b!4152586))

(assert (= (and b!4152586 res!1700643) b!4152597))

(assert (= (and b!4152597 (not res!1700641)) b!4152595))

(assert (= (and b!4152595 (not res!1700640)) b!4152594))

(assert (= (or b!4152591 b!4152596 b!4152597) bm!290764))

(declare-fun m!4748003 () Bool)

(assert (=> b!4152589 m!4748003))

(assert (=> b!4152589 m!4748003))

(declare-fun m!4748005 () Bool)

(assert (=> b!4152589 m!4748005))

(declare-fun m!4748007 () Bool)

(assert (=> b!4152589 m!4748007))

(assert (=> b!4152589 m!4748005))

(assert (=> b!4152589 m!4748007))

(declare-fun m!4748009 () Bool)

(assert (=> b!4152589 m!4748009))

(declare-fun m!4748011 () Bool)

(assert (=> b!4152599 m!4748011))

(assert (=> b!4152598 m!4748007))

(assert (=> b!4152598 m!4748007))

(declare-fun m!4748013 () Bool)

(assert (=> b!4152598 m!4748013))

(assert (=> b!4152593 m!4748003))

(assert (=> b!4152595 m!4748007))

(assert (=> b!4152595 m!4748007))

(assert (=> b!4152595 m!4748013))

(assert (=> bm!290764 m!4747957))

(assert (=> b!4152594 m!4748003))

(assert (=> d!1228275 m!4747957))

(declare-fun m!4748015 () Bool)

(assert (=> d!1228275 m!4748015))

(assert (=> b!4152516 d!1228275))

(declare-fun d!1228277 () Bool)

(declare-fun res!1700650 () Bool)

(declare-fun e!2576395 () Bool)

(assert (=> d!1228277 (=> (not res!1700650) (not e!2576395))))

(declare-fun rulesValid!2932 (LexerInterface!7021 List!45235) Bool)

(assert (=> d!1228277 (= res!1700650 (rulesValid!2932 thiss!25645 rules!3756))))

(assert (=> d!1228277 (= (rulesInvariant!6318 thiss!25645 rules!3756) e!2576395)))

(declare-fun b!4152602 () Bool)

(declare-datatypes ((List!45237 0))(
  ( (Nil!45113) (Cons!45113 (h!50533 String!52060) (t!343268 List!45237)) )
))
(declare-fun noDuplicateTag!3015 (LexerInterface!7021 List!45235 List!45237) Bool)

(assert (=> b!4152602 (= e!2576395 (noDuplicateTag!3015 thiss!25645 rules!3756 Nil!45113))))

(assert (= (and d!1228277 res!1700650) b!4152602))

(declare-fun m!4748017 () Bool)

(assert (=> d!1228277 m!4748017))

(declare-fun m!4748019 () Bool)

(assert (=> b!4152602 m!4748019))

(assert (=> b!4152505 d!1228277))

(declare-fun d!1228279 () Bool)

(assert (=> d!1228279 (= (inv!59721 (tag!8292 (h!50531 rules!3756))) (= (mod (str.len (value!232365 (tag!8292 (h!50531 rules!3756)))) 2) 0))))

(assert (=> b!4152513 d!1228279))

(declare-fun d!1228281 () Bool)

(declare-fun res!1700651 () Bool)

(declare-fun e!2576396 () Bool)

(assert (=> d!1228281 (=> (not res!1700651) (not e!2576396))))

(assert (=> d!1228281 (= res!1700651 (semiInverseModEq!3219 (toChars!9955 (transformation!7432 (h!50531 rules!3756))) (toValue!10096 (transformation!7432 (h!50531 rules!3756)))))))

(assert (=> d!1228281 (= (inv!59723 (transformation!7432 (h!50531 rules!3756))) e!2576396)))

(declare-fun b!4152603 () Bool)

(assert (=> b!4152603 (= e!2576396 (equivClasses!3118 (toChars!9955 (transformation!7432 (h!50531 rules!3756))) (toValue!10096 (transformation!7432 (h!50531 rules!3756)))))))

(assert (= (and d!1228281 res!1700651) b!4152603))

(declare-fun m!4748021 () Bool)

(assert (=> d!1228281 m!4748021))

(declare-fun m!4748023 () Bool)

(assert (=> b!4152603 m!4748023))

(assert (=> b!4152513 d!1228281))

(declare-fun d!1228283 () Bool)

(assert (=> d!1228283 (= (isEmpty!26937 rules!3756) ((_ is Nil!45111) rules!3756))))

(assert (=> b!4152514 d!1228283))

(declare-fun d!1228285 () Bool)

(declare-fun lt!1480930 () Bool)

(assert (=> d!1228285 (= lt!1480930 (select (content!6980 rules!3756) r!4008))))

(declare-fun e!2576397 () Bool)

(assert (=> d!1228285 (= lt!1480930 e!2576397)))

(declare-fun res!1700652 () Bool)

(assert (=> d!1228285 (=> (not res!1700652) (not e!2576397))))

(assert (=> d!1228285 (= res!1700652 ((_ is Cons!45111) rules!3756))))

(assert (=> d!1228285 (= (contains!9118 rules!3756 r!4008) lt!1480930)))

(declare-fun b!4152604 () Bool)

(declare-fun e!2576398 () Bool)

(assert (=> b!4152604 (= e!2576397 e!2576398)))

(declare-fun res!1700653 () Bool)

(assert (=> b!4152604 (=> res!1700653 e!2576398)))

(assert (=> b!4152604 (= res!1700653 (= (h!50531 rules!3756) r!4008))))

(declare-fun b!4152605 () Bool)

(assert (=> b!4152605 (= e!2576398 (contains!9118 (t!343234 rules!3756) r!4008))))

(assert (= (and d!1228285 res!1700652) b!4152604))

(assert (= (and b!4152604 (not res!1700653)) b!4152605))

(assert (=> d!1228285 m!4747969))

(declare-fun m!4748025 () Bool)

(assert (=> d!1228285 m!4748025))

(declare-fun m!4748027 () Bool)

(assert (=> b!4152605 m!4748027))

(assert (=> b!4152503 d!1228285))

(declare-fun b!4152615 () Bool)

(declare-fun res!1700665 () Bool)

(declare-fun e!2576405 () Bool)

(assert (=> b!4152615 (=> (not res!1700665) (not e!2576405))))

(assert (=> b!4152615 (= res!1700665 (= (head!8768 p!2912) (head!8768 input!3238)))))

(declare-fun d!1228287 () Bool)

(declare-fun e!2576406 () Bool)

(assert (=> d!1228287 e!2576406))

(declare-fun res!1700663 () Bool)

(assert (=> d!1228287 (=> res!1700663 e!2576406)))

(declare-fun lt!1480933 () Bool)

(assert (=> d!1228287 (= res!1700663 (not lt!1480933))))

(declare-fun e!2576407 () Bool)

(assert (=> d!1228287 (= lt!1480933 e!2576407)))

(declare-fun res!1700662 () Bool)

(assert (=> d!1228287 (=> res!1700662 e!2576407)))

(assert (=> d!1228287 (= res!1700662 ((_ is Nil!45110) p!2912))))

(assert (=> d!1228287 (= (isPrefix!4367 p!2912 input!3238) lt!1480933)))

(declare-fun b!4152617 () Bool)

(assert (=> b!4152617 (= e!2576406 (>= (size!33442 input!3238) (size!33442 p!2912)))))

(declare-fun b!4152616 () Bool)

(assert (=> b!4152616 (= e!2576405 (isPrefix!4367 (tail!6609 p!2912) (tail!6609 input!3238)))))

(declare-fun b!4152614 () Bool)

(assert (=> b!4152614 (= e!2576407 e!2576405)))

(declare-fun res!1700664 () Bool)

(assert (=> b!4152614 (=> (not res!1700664) (not e!2576405))))

(assert (=> b!4152614 (= res!1700664 (not ((_ is Nil!45110) input!3238)))))

(assert (= (and d!1228287 (not res!1700662)) b!4152614))

(assert (= (and b!4152614 res!1700664) b!4152615))

(assert (= (and b!4152615 res!1700665) b!4152616))

(assert (= (and d!1228287 (not res!1700663)) b!4152617))

(assert (=> b!4152615 m!4748003))

(declare-fun m!4748029 () Bool)

(assert (=> b!4152615 m!4748029))

(declare-fun m!4748031 () Bool)

(assert (=> b!4152617 m!4748031))

(assert (=> b!4152617 m!4747929))

(assert (=> b!4152616 m!4748007))

(declare-fun m!4748033 () Bool)

(assert (=> b!4152616 m!4748033))

(assert (=> b!4152616 m!4748007))

(assert (=> b!4152616 m!4748033))

(declare-fun m!4748035 () Bool)

(assert (=> b!4152616 m!4748035))

(assert (=> b!4152515 d!1228287))

(declare-fun d!1228289 () Bool)

(assert (=> d!1228289 (ruleValid!3238 thiss!25645 r!4008)))

(declare-fun lt!1480936 () Unit!64379)

(declare-fun choose!25433 (LexerInterface!7021 Rule!14664 List!45235) Unit!64379)

(assert (=> d!1228289 (= lt!1480936 (choose!25433 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1228289 (contains!9118 rules!3756 r!4008)))

(assert (=> d!1228289 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2278 thiss!25645 r!4008 rules!3756) lt!1480936)))

(declare-fun bs!595470 () Bool)

(assert (= bs!595470 d!1228289))

(assert (=> bs!595470 m!4747927))

(declare-fun m!4748037 () Bool)

(assert (=> bs!595470 m!4748037))

(assert (=> bs!595470 m!4747945))

(assert (=> b!4152500 d!1228289))

(declare-fun d!1228291 () Bool)

(declare-fun res!1700670 () Bool)

(declare-fun e!2576410 () Bool)

(assert (=> d!1228291 (=> (not res!1700670) (not e!2576410))))

(assert (=> d!1228291 (= res!1700670 (validRegex!5565 (regex!7432 rBis!149)))))

(assert (=> d!1228291 (= (ruleValid!3238 thiss!25645 rBis!149) e!2576410)))

(declare-fun b!4152622 () Bool)

(declare-fun res!1700671 () Bool)

(assert (=> b!4152622 (=> (not res!1700671) (not e!2576410))))

(assert (=> b!4152622 (= res!1700671 (not (nullable!4355 (regex!7432 rBis!149))))))

(declare-fun b!4152623 () Bool)

(assert (=> b!4152623 (= e!2576410 (not (= (tag!8292 rBis!149) (String!52061 ""))))))

(assert (= (and d!1228291 res!1700670) b!4152622))

(assert (= (and b!4152622 res!1700671) b!4152623))

(declare-fun m!4748039 () Bool)

(assert (=> d!1228291 m!4748039))

(declare-fun m!4748041 () Bool)

(assert (=> b!4152622 m!4748041))

(assert (=> b!4152500 d!1228291))

(declare-fun d!1228293 () Bool)

(assert (=> d!1228293 (ruleValid!3238 thiss!25645 rBis!149)))

(declare-fun lt!1480937 () Unit!64379)

(assert (=> d!1228293 (= lt!1480937 (choose!25433 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1228293 (contains!9118 rules!3756 rBis!149)))

(assert (=> d!1228293 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2278 thiss!25645 rBis!149 rules!3756) lt!1480937)))

(declare-fun bs!595471 () Bool)

(assert (= bs!595471 d!1228293))

(assert (=> bs!595471 m!4747965))

(declare-fun m!4748043 () Bool)

(assert (=> bs!595471 m!4748043))

(assert (=> bs!595471 m!4747921))

(assert (=> b!4152500 d!1228293))

(declare-fun d!1228295 () Bool)

(declare-fun res!1700672 () Bool)

(declare-fun e!2576411 () Bool)

(assert (=> d!1228295 (=> (not res!1700672) (not e!2576411))))

(assert (=> d!1228295 (= res!1700672 (validRegex!5565 (regex!7432 r!4008)))))

(assert (=> d!1228295 (= (ruleValid!3238 thiss!25645 r!4008) e!2576411)))

(declare-fun b!4152624 () Bool)

(declare-fun res!1700673 () Bool)

(assert (=> b!4152624 (=> (not res!1700673) (not e!2576411))))

(assert (=> b!4152624 (= res!1700673 (not (nullable!4355 (regex!7432 r!4008))))))

(declare-fun b!4152625 () Bool)

(assert (=> b!4152625 (= e!2576411 (not (= (tag!8292 r!4008) (String!52061 ""))))))

(assert (= (and d!1228295 res!1700672) b!4152624))

(assert (= (and b!4152624 res!1700673) b!4152625))

(assert (=> d!1228295 m!4748015))

(assert (=> b!4152624 m!4748011))

(assert (=> b!4152511 d!1228295))

(declare-fun b!4152799 () Bool)

(declare-fun e!2576506 () Bool)

(assert (=> b!4152799 (= e!2576506 true)))

(declare-fun d!1228297 () Bool)

(assert (=> d!1228297 e!2576506))

(assert (= d!1228297 b!4152799))

(declare-fun lambda!129045 () Int)

(declare-fun order!23957 () Int)

(declare-fun order!23959 () Int)

(declare-fun dynLambda!19473 (Int Int) Int)

(declare-fun dynLambda!19474 (Int Int) Int)

(assert (=> b!4152799 (< (dynLambda!19473 order!23957 (toValue!10096 (transformation!7432 r!4008))) (dynLambda!19474 order!23959 lambda!129045))))

(declare-fun order!23961 () Int)

(declare-fun dynLambda!19475 (Int Int) Int)

(assert (=> b!4152799 (< (dynLambda!19475 order!23961 (toChars!9955 (transformation!7432 r!4008))) (dynLambda!19474 order!23959 lambda!129045))))

(declare-fun list!16499 (BalanceConc!26880) List!45234)

(declare-fun dynLambda!19476 (Int TokenValue!7662) BalanceConc!26880)

(declare-fun dynLambda!19477 (Int BalanceConc!26880) TokenValue!7662)

(assert (=> d!1228297 (= (list!16499 (dynLambda!19476 (toChars!9955 (transformation!7432 r!4008)) (dynLambda!19477 (toValue!10096 (transformation!7432 r!4008)) lt!1480913))) (list!16499 lt!1480913))))

(declare-fun lt!1480977 () Unit!64379)

(declare-fun ForallOf!1002 (Int BalanceConc!26880) Unit!64379)

(assert (=> d!1228297 (= lt!1480977 (ForallOf!1002 lambda!129045 lt!1480913))))

(assert (=> d!1228297 (= (lemmaSemiInverse!2290 (transformation!7432 r!4008) lt!1480913) lt!1480977)))

(declare-fun b_lambda!122147 () Bool)

(assert (=> (not b_lambda!122147) (not d!1228297)))

(declare-fun t!343252 () Bool)

(declare-fun tb!249235 () Bool)

(assert (=> (and b!4152504 (= (toChars!9955 (transformation!7432 r!4008)) (toChars!9955 (transformation!7432 r!4008))) t!343252) tb!249235))

(declare-fun b!4152804 () Bool)

(declare-fun e!2576509 () Bool)

(declare-fun tp!1265737 () Bool)

(declare-fun inv!59726 (Conc!13643) Bool)

(assert (=> b!4152804 (= e!2576509 (and (inv!59726 (c!711104 (dynLambda!19476 (toChars!9955 (transformation!7432 r!4008)) (dynLambda!19477 (toValue!10096 (transformation!7432 r!4008)) lt!1480913)))) tp!1265737))))

(declare-fun result!303242 () Bool)

(declare-fun inv!59727 (BalanceConc!26880) Bool)

(assert (=> tb!249235 (= result!303242 (and (inv!59727 (dynLambda!19476 (toChars!9955 (transformation!7432 r!4008)) (dynLambda!19477 (toValue!10096 (transformation!7432 r!4008)) lt!1480913))) e!2576509))))

(assert (= tb!249235 b!4152804))

(declare-fun m!4748149 () Bool)

(assert (=> b!4152804 m!4748149))

(declare-fun m!4748151 () Bool)

(assert (=> tb!249235 m!4748151))

(assert (=> d!1228297 t!343252))

(declare-fun b_and!323083 () Bool)

(assert (= b_and!323051 (and (=> t!343252 result!303242) b_and!323083)))

(declare-fun tb!249237 () Bool)

(declare-fun t!343254 () Bool)

(assert (=> (and b!4152501 (= (toChars!9955 (transformation!7432 rBis!149)) (toChars!9955 (transformation!7432 r!4008))) t!343254) tb!249237))

(declare-fun result!303246 () Bool)

(assert (= result!303246 result!303242))

(assert (=> d!1228297 t!343254))

(declare-fun b_and!323085 () Bool)

(assert (= b_and!323055 (and (=> t!343254 result!303246) b_and!323085)))

(declare-fun t!343256 () Bool)

(declare-fun tb!249239 () Bool)

(assert (=> (and b!4152502 (= (toChars!9955 (transformation!7432 (h!50531 rules!3756))) (toChars!9955 (transformation!7432 r!4008))) t!343256) tb!249239))

(declare-fun result!303248 () Bool)

(assert (= result!303248 result!303242))

(assert (=> d!1228297 t!343256))

(declare-fun b_and!323087 () Bool)

(assert (= b_and!323059 (and (=> t!343256 result!303248) b_and!323087)))

(declare-fun b_lambda!122149 () Bool)

(assert (=> (not b_lambda!122149) (not d!1228297)))

(declare-fun t!343258 () Bool)

(declare-fun tb!249241 () Bool)

(assert (=> (and b!4152504 (= (toValue!10096 (transformation!7432 r!4008)) (toValue!10096 (transformation!7432 r!4008))) t!343258) tb!249241))

(declare-fun result!303250 () Bool)

(declare-fun inv!21 (TokenValue!7662) Bool)

(assert (=> tb!249241 (= result!303250 (inv!21 (dynLambda!19477 (toValue!10096 (transformation!7432 r!4008)) lt!1480913)))))

(declare-fun m!4748153 () Bool)

(assert (=> tb!249241 m!4748153))

(assert (=> d!1228297 t!343258))

(declare-fun b_and!323089 () Bool)

(assert (= b_and!323049 (and (=> t!343258 result!303250) b_and!323089)))

(declare-fun tb!249243 () Bool)

(declare-fun t!343260 () Bool)

(assert (=> (and b!4152501 (= (toValue!10096 (transformation!7432 rBis!149)) (toValue!10096 (transformation!7432 r!4008))) t!343260) tb!249243))

(declare-fun result!303254 () Bool)

(assert (= result!303254 result!303250))

(assert (=> d!1228297 t!343260))

(declare-fun b_and!323091 () Bool)

(assert (= b_and!323053 (and (=> t!343260 result!303254) b_and!323091)))

(declare-fun t!343262 () Bool)

(declare-fun tb!249245 () Bool)

(assert (=> (and b!4152502 (= (toValue!10096 (transformation!7432 (h!50531 rules!3756))) (toValue!10096 (transformation!7432 r!4008))) t!343262) tb!249245))

(declare-fun result!303256 () Bool)

(assert (= result!303256 result!303250))

(assert (=> d!1228297 t!343262))

(declare-fun b_and!323093 () Bool)

(assert (= b_and!323057 (and (=> t!343262 result!303256) b_and!323093)))

(declare-fun m!4748155 () Bool)

(assert (=> d!1228297 m!4748155))

(declare-fun m!4748157 () Bool)

(assert (=> d!1228297 m!4748157))

(declare-fun m!4748159 () Bool)

(assert (=> d!1228297 m!4748159))

(declare-fun m!4748161 () Bool)

(assert (=> d!1228297 m!4748161))

(declare-fun m!4748163 () Bool)

(assert (=> d!1228297 m!4748163))

(assert (=> d!1228297 m!4748159))

(assert (=> d!1228297 m!4748155))

(assert (=> b!4152512 d!1228297))

(declare-fun d!1228341 () Bool)

(declare-fun lt!1480980 () List!45234)

(declare-fun ++!11656 (List!45234 List!45234) List!45234)

(assert (=> d!1228341 (= (++!11656 p!2912 lt!1480980) input!3238)))

(declare-fun e!2576515 () List!45234)

(assert (=> d!1228341 (= lt!1480980 e!2576515)))

(declare-fun c!711153 () Bool)

(assert (=> d!1228341 (= c!711153 ((_ is Cons!45110) p!2912))))

(assert (=> d!1228341 (>= (size!33442 input!3238) (size!33442 p!2912))))

(assert (=> d!1228341 (= (getSuffix!2694 input!3238 p!2912) lt!1480980)))

(declare-fun b!4152811 () Bool)

(assert (=> b!4152811 (= e!2576515 (getSuffix!2694 (tail!6609 input!3238) (t!343233 p!2912)))))

(declare-fun b!4152812 () Bool)

(assert (=> b!4152812 (= e!2576515 input!3238)))

(assert (= (and d!1228341 c!711153) b!4152811))

(assert (= (and d!1228341 (not c!711153)) b!4152812))

(declare-fun m!4748165 () Bool)

(assert (=> d!1228341 m!4748165))

(assert (=> d!1228341 m!4748031))

(assert (=> d!1228341 m!4747929))

(assert (=> b!4152811 m!4748033))

(assert (=> b!4152811 m!4748033))

(declare-fun m!4748167 () Bool)

(assert (=> b!4152811 m!4748167))

(assert (=> b!4152512 d!1228341))

(declare-fun d!1228343 () Bool)

(assert (=> d!1228343 (= (apply!10505 (transformation!7432 r!4008) lt!1480913) (dynLambda!19477 (toValue!10096 (transformation!7432 r!4008)) lt!1480913))))

(declare-fun b_lambda!122151 () Bool)

(assert (=> (not b_lambda!122151) (not d!1228343)))

(assert (=> d!1228343 t!343258))

(declare-fun b_and!323095 () Bool)

(assert (= b_and!323089 (and (=> t!343258 result!303250) b_and!323095)))

(assert (=> d!1228343 t!343260))

(declare-fun b_and!323097 () Bool)

(assert (= b_and!323091 (and (=> t!343260 result!303254) b_and!323097)))

(assert (=> d!1228343 t!343262))

(declare-fun b_and!323099 () Bool)

(assert (= b_and!323093 (and (=> t!343262 result!303256) b_and!323099)))

(assert (=> d!1228343 m!4748159))

(assert (=> b!4152512 d!1228343))

(declare-fun b!4152831 () Bool)

(declare-fun e!2576522 () Bool)

(declare-fun e!2576524 () Bool)

(assert (=> b!4152831 (= e!2576522 e!2576524)))

(declare-fun res!1700759 () Bool)

(assert (=> b!4152831 (=> (not res!1700759) (not e!2576524))))

(declare-fun lt!1480992 () Option!9738)

(declare-fun isDefined!7310 (Option!9738) Bool)

(assert (=> b!4152831 (= res!1700759 (isDefined!7310 lt!1480992))))

(declare-fun b!4152832 () Bool)

(declare-fun res!1700760 () Bool)

(assert (=> b!4152832 (=> (not res!1700760) (not e!2576524))))

(declare-fun get!14731 (Option!9738) tuple2!43470)

(declare-fun charsOf!5019 (Token!13794) BalanceConc!26880)

(assert (=> b!4152832 (= res!1700760 (matchR!6166 (regex!7432 (rule!10574 (_1!24869 (get!14731 lt!1480992)))) (list!16499 (charsOf!5019 (_1!24869 (get!14731 lt!1480992))))))))

(declare-fun d!1228345 () Bool)

(assert (=> d!1228345 e!2576522))

(declare-fun res!1700758 () Bool)

(assert (=> d!1228345 (=> res!1700758 e!2576522)))

(declare-fun isEmpty!26939 (Option!9738) Bool)

(assert (=> d!1228345 (= res!1700758 (isEmpty!26939 lt!1480992))))

(declare-fun e!2576523 () Option!9738)

(assert (=> d!1228345 (= lt!1480992 e!2576523)))

(declare-fun c!711156 () Bool)

(assert (=> d!1228345 (= c!711156 (and ((_ is Cons!45111) rules!3756) ((_ is Nil!45111) (t!343234 rules!3756))))))

(declare-fun lt!1480994 () Unit!64379)

(declare-fun lt!1480995 () Unit!64379)

(assert (=> d!1228345 (= lt!1480994 lt!1480995)))

(assert (=> d!1228345 (isPrefix!4367 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2818 (List!45234 List!45234) Unit!64379)

(assert (=> d!1228345 (= lt!1480995 (lemmaIsPrefixRefl!2818 input!3238 input!3238))))

(declare-fun rulesValidInductive!2770 (LexerInterface!7021 List!45235) Bool)

(assert (=> d!1228345 (rulesValidInductive!2770 thiss!25645 rules!3756)))

(assert (=> d!1228345 (= (maxPrefix!4211 thiss!25645 rules!3756 input!3238) lt!1480992)))

(declare-fun b!4152833 () Bool)

(declare-fun lt!1480993 () Option!9738)

(declare-fun lt!1480991 () Option!9738)

(assert (=> b!4152833 (= e!2576523 (ite (and ((_ is None!9737) lt!1480993) ((_ is None!9737) lt!1480991)) None!9737 (ite ((_ is None!9737) lt!1480991) lt!1480993 (ite ((_ is None!9737) lt!1480993) lt!1480991 (ite (>= (size!33441 (_1!24869 (v!40407 lt!1480993))) (size!33441 (_1!24869 (v!40407 lt!1480991)))) lt!1480993 lt!1480991)))))))

(declare-fun call!290778 () Option!9738)

(assert (=> b!4152833 (= lt!1480993 call!290778)))

(assert (=> b!4152833 (= lt!1480991 (maxPrefix!4211 thiss!25645 (t!343234 rules!3756) input!3238))))

(declare-fun b!4152834 () Bool)

(declare-fun res!1700754 () Bool)

(assert (=> b!4152834 (=> (not res!1700754) (not e!2576524))))

(assert (=> b!4152834 (= res!1700754 (= (value!232366 (_1!24869 (get!14731 lt!1480992))) (apply!10505 (transformation!7432 (rule!10574 (_1!24869 (get!14731 lt!1480992)))) (seqFromList!5549 (originalCharacters!7928 (_1!24869 (get!14731 lt!1480992)))))))))

(declare-fun b!4152835 () Bool)

(declare-fun res!1700756 () Bool)

(assert (=> b!4152835 (=> (not res!1700756) (not e!2576524))))

(assert (=> b!4152835 (= res!1700756 (= (++!11656 (list!16499 (charsOf!5019 (_1!24869 (get!14731 lt!1480992)))) (_2!24869 (get!14731 lt!1480992))) input!3238))))

(declare-fun b!4152836 () Bool)

(declare-fun res!1700757 () Bool)

(assert (=> b!4152836 (=> (not res!1700757) (not e!2576524))))

(assert (=> b!4152836 (= res!1700757 (< (size!33442 (_2!24869 (get!14731 lt!1480992))) (size!33442 input!3238)))))

(declare-fun b!4152837 () Bool)

(declare-fun res!1700755 () Bool)

(assert (=> b!4152837 (=> (not res!1700755) (not e!2576524))))

(assert (=> b!4152837 (= res!1700755 (= (list!16499 (charsOf!5019 (_1!24869 (get!14731 lt!1480992)))) (originalCharacters!7928 (_1!24869 (get!14731 lt!1480992)))))))

(declare-fun b!4152838 () Bool)

(assert (=> b!4152838 (= e!2576523 call!290778)))

(declare-fun bm!290773 () Bool)

(declare-fun maxPrefixOneRule!3150 (LexerInterface!7021 Rule!14664 List!45234) Option!9738)

(assert (=> bm!290773 (= call!290778 (maxPrefixOneRule!3150 thiss!25645 (h!50531 rules!3756) input!3238))))

(declare-fun b!4152839 () Bool)

(assert (=> b!4152839 (= e!2576524 (contains!9118 rules!3756 (rule!10574 (_1!24869 (get!14731 lt!1480992)))))))

(assert (= (and d!1228345 c!711156) b!4152838))

(assert (= (and d!1228345 (not c!711156)) b!4152833))

(assert (= (or b!4152838 b!4152833) bm!290773))

(assert (= (and d!1228345 (not res!1700758)) b!4152831))

(assert (= (and b!4152831 res!1700759) b!4152837))

(assert (= (and b!4152837 res!1700755) b!4152836))

(assert (= (and b!4152836 res!1700757) b!4152835))

(assert (= (and b!4152835 res!1700756) b!4152834))

(assert (= (and b!4152834 res!1700754) b!4152832))

(assert (= (and b!4152832 res!1700760) b!4152839))

(declare-fun m!4748169 () Bool)

(assert (=> b!4152834 m!4748169))

(declare-fun m!4748171 () Bool)

(assert (=> b!4152834 m!4748171))

(assert (=> b!4152834 m!4748171))

(declare-fun m!4748173 () Bool)

(assert (=> b!4152834 m!4748173))

(declare-fun m!4748175 () Bool)

(assert (=> bm!290773 m!4748175))

(assert (=> b!4152839 m!4748169))

(declare-fun m!4748177 () Bool)

(assert (=> b!4152839 m!4748177))

(declare-fun m!4748179 () Bool)

(assert (=> b!4152833 m!4748179))

(assert (=> b!4152836 m!4748169))

(declare-fun m!4748181 () Bool)

(assert (=> b!4152836 m!4748181))

(assert (=> b!4152836 m!4748031))

(declare-fun m!4748183 () Bool)

(assert (=> b!4152831 m!4748183))

(assert (=> b!4152837 m!4748169))

(declare-fun m!4748185 () Bool)

(assert (=> b!4152837 m!4748185))

(assert (=> b!4152837 m!4748185))

(declare-fun m!4748187 () Bool)

(assert (=> b!4152837 m!4748187))

(declare-fun m!4748189 () Bool)

(assert (=> d!1228345 m!4748189))

(declare-fun m!4748191 () Bool)

(assert (=> d!1228345 m!4748191))

(declare-fun m!4748193 () Bool)

(assert (=> d!1228345 m!4748193))

(declare-fun m!4748195 () Bool)

(assert (=> d!1228345 m!4748195))

(assert (=> b!4152835 m!4748169))

(assert (=> b!4152835 m!4748185))

(assert (=> b!4152835 m!4748185))

(assert (=> b!4152835 m!4748187))

(assert (=> b!4152835 m!4748187))

(declare-fun m!4748197 () Bool)

(assert (=> b!4152835 m!4748197))

(assert (=> b!4152832 m!4748169))

(assert (=> b!4152832 m!4748185))

(assert (=> b!4152832 m!4748185))

(assert (=> b!4152832 m!4748187))

(assert (=> b!4152832 m!4748187))

(declare-fun m!4748199 () Bool)

(assert (=> b!4152832 m!4748199))

(assert (=> b!4152512 d!1228345))

(declare-fun d!1228347 () Bool)

(declare-fun fromListB!2551 (List!45234) BalanceConc!26880)

(assert (=> d!1228347 (= (seqFromList!5549 p!2912) (fromListB!2551 p!2912))))

(declare-fun bs!595475 () Bool)

(assert (= bs!595475 d!1228347))

(declare-fun m!4748201 () Bool)

(assert (=> bs!595475 m!4748201))

(assert (=> b!4152512 d!1228347))

(declare-fun d!1228349 () Bool)

(declare-fun lt!1480998 () Int)

(assert (=> d!1228349 (>= lt!1480998 0)))

(declare-fun e!2576527 () Int)

(assert (=> d!1228349 (= lt!1480998 e!2576527)))

(declare-fun c!711159 () Bool)

(assert (=> d!1228349 (= c!711159 ((_ is Nil!45110) p!2912))))

(assert (=> d!1228349 (= (size!33442 p!2912) lt!1480998)))

(declare-fun b!4152844 () Bool)

(assert (=> b!4152844 (= e!2576527 0)))

(declare-fun b!4152845 () Bool)

(assert (=> b!4152845 (= e!2576527 (+ 1 (size!33442 (t!343233 p!2912))))))

(assert (= (and d!1228349 c!711159) b!4152844))

(assert (= (and d!1228349 (not c!711159)) b!4152845))

(declare-fun m!4748203 () Bool)

(assert (=> b!4152845 m!4748203))

(assert (=> b!4152512 d!1228349))

(declare-fun b!4152859 () Bool)

(declare-fun e!2576530 () Bool)

(declare-fun tp!1265751 () Bool)

(declare-fun tp!1265749 () Bool)

(assert (=> b!4152859 (= e!2576530 (and tp!1265751 tp!1265749))))

(declare-fun b!4152857 () Bool)

(declare-fun tp!1265748 () Bool)

(declare-fun tp!1265752 () Bool)

(assert (=> b!4152857 (= e!2576530 (and tp!1265748 tp!1265752))))

(declare-fun b!4152856 () Bool)

(assert (=> b!4152856 (= e!2576530 tp_is_empty!21597)))

(declare-fun b!4152858 () Bool)

(declare-fun tp!1265750 () Bool)

(assert (=> b!4152858 (= e!2576530 tp!1265750)))

(assert (=> b!4152513 (= tp!1265681 e!2576530)))

(assert (= (and b!4152513 ((_ is ElementMatch!12337) (regex!7432 (h!50531 rules!3756)))) b!4152856))

(assert (= (and b!4152513 ((_ is Concat!20000) (regex!7432 (h!50531 rules!3756)))) b!4152857))

(assert (= (and b!4152513 ((_ is Star!12337) (regex!7432 (h!50531 rules!3756)))) b!4152858))

(assert (= (and b!4152513 ((_ is Union!12337) (regex!7432 (h!50531 rules!3756)))) b!4152859))

(declare-fun b!4152864 () Bool)

(declare-fun e!2576533 () Bool)

(declare-fun tp!1265755 () Bool)

(assert (=> b!4152864 (= e!2576533 (and tp_is_empty!21597 tp!1265755))))

(assert (=> b!4152498 (= tp!1265689 e!2576533)))

(assert (= (and b!4152498 ((_ is Cons!45110) (t!343233 input!3238))) b!4152864))

(declare-fun b!4152868 () Bool)

(declare-fun e!2576534 () Bool)

(declare-fun tp!1265759 () Bool)

(declare-fun tp!1265757 () Bool)

(assert (=> b!4152868 (= e!2576534 (and tp!1265759 tp!1265757))))

(declare-fun b!4152866 () Bool)

(declare-fun tp!1265756 () Bool)

(declare-fun tp!1265760 () Bool)

(assert (=> b!4152866 (= e!2576534 (and tp!1265756 tp!1265760))))

(declare-fun b!4152865 () Bool)

(assert (=> b!4152865 (= e!2576534 tp_is_empty!21597)))

(declare-fun b!4152867 () Bool)

(declare-fun tp!1265758 () Bool)

(assert (=> b!4152867 (= e!2576534 tp!1265758)))

(assert (=> b!4152509 (= tp!1265686 e!2576534)))

(assert (= (and b!4152509 ((_ is ElementMatch!12337) (regex!7432 rBis!149))) b!4152865))

(assert (= (and b!4152509 ((_ is Concat!20000) (regex!7432 rBis!149))) b!4152866))

(assert (= (and b!4152509 ((_ is Star!12337) (regex!7432 rBis!149))) b!4152867))

(assert (= (and b!4152509 ((_ is Union!12337) (regex!7432 rBis!149))) b!4152868))

(declare-fun b!4152872 () Bool)

(declare-fun e!2576535 () Bool)

(declare-fun tp!1265764 () Bool)

(declare-fun tp!1265762 () Bool)

(assert (=> b!4152872 (= e!2576535 (and tp!1265764 tp!1265762))))

(declare-fun b!4152870 () Bool)

(declare-fun tp!1265761 () Bool)

(declare-fun tp!1265765 () Bool)

(assert (=> b!4152870 (= e!2576535 (and tp!1265761 tp!1265765))))

(declare-fun b!4152869 () Bool)

(assert (=> b!4152869 (= e!2576535 tp_is_empty!21597)))

(declare-fun b!4152871 () Bool)

(declare-fun tp!1265763 () Bool)

(assert (=> b!4152871 (= e!2576535 tp!1265763)))

(assert (=> b!4152510 (= tp!1265690 e!2576535)))

(assert (= (and b!4152510 ((_ is ElementMatch!12337) (regex!7432 r!4008))) b!4152869))

(assert (= (and b!4152510 ((_ is Concat!20000) (regex!7432 r!4008))) b!4152870))

(assert (= (and b!4152510 ((_ is Star!12337) (regex!7432 r!4008))) b!4152871))

(assert (= (and b!4152510 ((_ is Union!12337) (regex!7432 r!4008))) b!4152872))

(declare-fun b!4152873 () Bool)

(declare-fun e!2576536 () Bool)

(declare-fun tp!1265766 () Bool)

(assert (=> b!4152873 (= e!2576536 (and tp_is_empty!21597 tp!1265766))))

(assert (=> b!4152506 (= tp!1265684 e!2576536)))

(assert (= (and b!4152506 ((_ is Cons!45110) (t!343233 p!2912))) b!4152873))

(declare-fun b!4152884 () Bool)

(declare-fun b_free!118739 () Bool)

(declare-fun b_next!119443 () Bool)

(assert (=> b!4152884 (= b_free!118739 (not b_next!119443))))

(declare-fun t!343264 () Bool)

(declare-fun tb!249247 () Bool)

(assert (=> (and b!4152884 (= (toValue!10096 (transformation!7432 (h!50531 (t!343234 rules!3756)))) (toValue!10096 (transformation!7432 r!4008))) t!343264) tb!249247))

(declare-fun result!303264 () Bool)

(assert (= result!303264 result!303250))

(assert (=> d!1228297 t!343264))

(assert (=> d!1228343 t!343264))

(declare-fun b_and!323101 () Bool)

(declare-fun tp!1265778 () Bool)

(assert (=> b!4152884 (= tp!1265778 (and (=> t!343264 result!303264) b_and!323101))))

(declare-fun b_free!118741 () Bool)

(declare-fun b_next!119445 () Bool)

(assert (=> b!4152884 (= b_free!118741 (not b_next!119445))))

(declare-fun tb!249249 () Bool)

(declare-fun t!343266 () Bool)

(assert (=> (and b!4152884 (= (toChars!9955 (transformation!7432 (h!50531 (t!343234 rules!3756)))) (toChars!9955 (transformation!7432 r!4008))) t!343266) tb!249249))

(declare-fun result!303266 () Bool)

(assert (= result!303266 result!303242))

(assert (=> d!1228297 t!343266))

(declare-fun b_and!323103 () Bool)

(declare-fun tp!1265776 () Bool)

(assert (=> b!4152884 (= tp!1265776 (and (=> t!343266 result!303266) b_and!323103))))

(declare-fun e!2576546 () Bool)

(assert (=> b!4152884 (= e!2576546 (and tp!1265778 tp!1265776))))

(declare-fun b!4152883 () Bool)

(declare-fun tp!1265775 () Bool)

(declare-fun e!2576545 () Bool)

(assert (=> b!4152883 (= e!2576545 (and tp!1265775 (inv!59721 (tag!8292 (h!50531 (t!343234 rules!3756)))) (inv!59723 (transformation!7432 (h!50531 (t!343234 rules!3756)))) e!2576546))))

(declare-fun b!4152882 () Bool)

(declare-fun e!2576548 () Bool)

(declare-fun tp!1265777 () Bool)

(assert (=> b!4152882 (= e!2576548 (and e!2576545 tp!1265777))))

(assert (=> b!4152507 (= tp!1265682 e!2576548)))

(assert (= b!4152883 b!4152884))

(assert (= b!4152882 b!4152883))

(assert (= (and b!4152507 ((_ is Cons!45111) (t!343234 rules!3756))) b!4152882))

(declare-fun m!4748205 () Bool)

(assert (=> b!4152883 m!4748205))

(declare-fun m!4748207 () Bool)

(assert (=> b!4152883 m!4748207))

(declare-fun b_lambda!122153 () Bool)

(assert (= b_lambda!122151 (or (and b!4152504 b_free!118723) (and b!4152501 b_free!118727 (= (toValue!10096 (transformation!7432 rBis!149)) (toValue!10096 (transformation!7432 r!4008)))) (and b!4152502 b_free!118731 (= (toValue!10096 (transformation!7432 (h!50531 rules!3756))) (toValue!10096 (transformation!7432 r!4008)))) (and b!4152884 b_free!118739 (= (toValue!10096 (transformation!7432 (h!50531 (t!343234 rules!3756)))) (toValue!10096 (transformation!7432 r!4008)))) b_lambda!122153)))

(declare-fun b_lambda!122155 () Bool)

(assert (= b_lambda!122147 (or (and b!4152504 b_free!118725) (and b!4152501 b_free!118729 (= (toChars!9955 (transformation!7432 rBis!149)) (toChars!9955 (transformation!7432 r!4008)))) (and b!4152502 b_free!118733 (= (toChars!9955 (transformation!7432 (h!50531 rules!3756))) (toChars!9955 (transformation!7432 r!4008)))) (and b!4152884 b_free!118741 (= (toChars!9955 (transformation!7432 (h!50531 (t!343234 rules!3756)))) (toChars!9955 (transformation!7432 r!4008)))) b_lambda!122155)))

(declare-fun b_lambda!122157 () Bool)

(assert (= b_lambda!122149 (or (and b!4152504 b_free!118723) (and b!4152501 b_free!118727 (= (toValue!10096 (transformation!7432 rBis!149)) (toValue!10096 (transformation!7432 r!4008)))) (and b!4152502 b_free!118731 (= (toValue!10096 (transformation!7432 (h!50531 rules!3756))) (toValue!10096 (transformation!7432 r!4008)))) (and b!4152884 b_free!118739 (= (toValue!10096 (transformation!7432 (h!50531 (t!343234 rules!3756)))) (toValue!10096 (transformation!7432 r!4008)))) b_lambda!122157)))

(check-sat (not d!1228263) (not b!4152868) (not b!4152598) (not b!4152541) (not d!1228257) (not b!4152873) (not b_next!119437) (not b!4152804) (not b_next!119429) (not b!4152811) (not b!4152857) (not b!4152595) (not b!4152833) (not b!4152522) (not b!4152859) (not b!4152835) b_and!323095 (not d!1228281) b_and!323101 (not b_lambda!122155) (not d!1228291) (not b!4152864) (not b_next!119435) (not b!4152545) (not b!4152593) (not b_lambda!122157) (not bm!290773) (not b!4152872) (not bm!290764) (not b!4152617) b_and!323087 (not b!4152867) (not tb!249241) (not b!4152832) (not b!4152602) (not b!4152599) (not d!1228295) (not b!4152603) b_and!323099 (not b!4152831) (not b!4152870) (not b!4152557) (not d!1228253) b_and!323083 (not d!1228297) (not b_next!119427) (not b!4152624) (not b!4152836) (not b!4152594) (not b!4152615) (not b_next!119443) (not b_lambda!122153) b_and!323085 (not b!4152556) (not d!1228277) (not d!1228271) tp_is_empty!21597 (not b!4152871) (not b!4152622) (not b!4152837) (not b!4152845) b_and!323097 (not b!4152858) (not d!1228341) (not d!1228289) (not b_next!119445) (not d!1228345) (not b!4152839) (not d!1228293) (not b!4152882) (not d!1228251) (not b_next!119431) (not b!4152866) (not b!4152834) (not b_next!119433) (not b!4152616) (not b!4152589) (not d!1228285) (not tb!249235) (not d!1228347) (not b!4152883) b_and!323103 (not b!4152605) (not d!1228275))
(check-sat (not b_next!119429) (not b_next!119435) b_and!323087 b_and!323099 b_and!323083 (not b_next!119427) (not b_next!119443) b_and!323085 b_and!323097 (not b_next!119445) (not b_next!119431) (not b_next!119433) (not b_next!119437) b_and!323103 b_and!323095 b_and!323101)
