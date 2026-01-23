; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395490 () Bool)

(assert start!395490)

(declare-fun b!4154495 () Bool)

(declare-fun b_free!119075 () Bool)

(declare-fun b_next!119779 () Bool)

(assert (=> b!4154495 (= b_free!119075 (not b_next!119779))))

(declare-fun tp!1266876 () Bool)

(declare-fun b_and!323437 () Bool)

(assert (=> b!4154495 (= tp!1266876 b_and!323437)))

(declare-fun b_free!119077 () Bool)

(declare-fun b_next!119781 () Bool)

(assert (=> b!4154495 (= b_free!119077 (not b_next!119781))))

(declare-fun tp!1266877 () Bool)

(declare-fun b_and!323439 () Bool)

(assert (=> b!4154495 (= tp!1266877 b_and!323439)))

(declare-fun b!4154499 () Bool)

(declare-fun b_free!119079 () Bool)

(declare-fun b_next!119783 () Bool)

(assert (=> b!4154499 (= b_free!119079 (not b_next!119783))))

(declare-fun tp!1266872 () Bool)

(declare-fun b_and!323441 () Bool)

(assert (=> b!4154499 (= tp!1266872 b_and!323441)))

(declare-fun b_free!119081 () Bool)

(declare-fun b_next!119785 () Bool)

(assert (=> b!4154499 (= b_free!119081 (not b_next!119785))))

(declare-fun tp!1266878 () Bool)

(declare-fun b_and!323443 () Bool)

(assert (=> b!4154499 (= tp!1266878 b_and!323443)))

(declare-fun b!4154497 () Bool)

(declare-fun b_free!119083 () Bool)

(declare-fun b_next!119787 () Bool)

(assert (=> b!4154497 (= b_free!119083 (not b_next!119787))))

(declare-fun tp!1266873 () Bool)

(declare-fun b_and!323445 () Bool)

(assert (=> b!4154497 (= tp!1266873 b_and!323445)))

(declare-fun b_free!119085 () Bool)

(declare-fun b_next!119789 () Bool)

(assert (=> b!4154497 (= b_free!119085 (not b_next!119789))))

(declare-fun tp!1266871 () Bool)

(declare-fun b_and!323447 () Bool)

(assert (=> b!4154497 (= tp!1266871 b_and!323447)))

(declare-fun b!4154490 () Bool)

(declare-fun res!1701442 () Bool)

(declare-fun e!2577834 () Bool)

(assert (=> b!4154490 (=> (not res!1701442) (not e!2577834))))

(declare-datatypes ((List!45332 0))(
  ( (Nil!45208) (Cons!45208 (h!50628 (_ BitVec 16)) (t!343363 List!45332)) )
))
(declare-datatypes ((TokenValue!7688 0))(
  ( (FloatLiteralValue!15376 (text!54261 List!45332)) (TokenValueExt!7687 (__x!27593 Int)) (Broken!38440 (value!233060 List!45332)) (Object!7811) (End!7688) (Def!7688) (Underscore!7688) (Match!7688) (Else!7688) (Error!7688) (Case!7688) (If!7688) (Extends!7688) (Abstract!7688) (Class!7688) (Val!7688) (DelimiterValue!15376 (del!7748 List!45332)) (KeywordValue!7694 (value!233061 List!45332)) (CommentValue!15376 (value!233062 List!45332)) (WhitespaceValue!15376 (value!233063 List!45332)) (IndentationValue!7688 (value!233064 List!45332)) (String!52189) (Int32!7688) (Broken!38441 (value!233065 List!45332)) (Boolean!7689) (Unit!64428) (OperatorValue!7691 (op!7748 List!45332)) (IdentifierValue!15376 (value!233066 List!45332)) (IdentifierValue!15377 (value!233067 List!45332)) (WhitespaceValue!15377 (value!233068 List!45332)) (True!15376) (False!15376) (Broken!38442 (value!233069 List!45332)) (Broken!38443 (value!233070 List!45332)) (True!15377) (RightBrace!7688) (RightBracket!7688) (Colon!7688) (Null!7688) (Comma!7688) (LeftBracket!7688) (False!15377) (LeftBrace!7688) (ImaginaryLiteralValue!7688 (text!54262 List!45332)) (StringLiteralValue!23064 (value!233071 List!45332)) (EOFValue!7688 (value!233072 List!45332)) (IdentValue!7688 (value!233073 List!45332)) (DelimiterValue!15377 (value!233074 List!45332)) (DedentValue!7688 (value!233075 List!45332)) (NewLineValue!7688 (value!233076 List!45332)) (IntegerValue!23064 (value!233077 (_ BitVec 32)) (text!54263 List!45332)) (IntegerValue!23065 (value!233078 Int) (text!54264 List!45332)) (Times!7688) (Or!7688) (Equal!7688) (Minus!7688) (Broken!38444 (value!233079 List!45332)) (And!7688) (Div!7688) (LessEqual!7688) (Mod!7688) (Concat!20051) (Not!7688) (Plus!7688) (SpaceValue!7688 (value!233080 List!45332)) (IntegerValue!23066 (value!233081 Int) (text!54265 List!45332)) (StringLiteralValue!23065 (text!54266 List!45332)) (FloatLiteralValue!15377 (text!54267 List!45332)) (BytesLiteralValue!7688 (value!233082 List!45332)) (CommentValue!15377 (value!233083 List!45332)) (StringLiteralValue!23066 (value!233084 List!45332)) (ErrorTokenValue!7688 (msg!7749 List!45332)) )
))
(declare-datatypes ((C!24912 0))(
  ( (C!24913 (val!14566 Int)) )
))
(declare-datatypes ((List!45333 0))(
  ( (Nil!45209) (Cons!45209 (h!50629 C!24912) (t!343364 List!45333)) )
))
(declare-datatypes ((IArray!27343 0))(
  ( (IArray!27344 (innerList!13729 List!45333)) )
))
(declare-datatypes ((Regex!12363 0))(
  ( (ElementMatch!12363 (c!711278 C!24912)) (Concat!20052 (regOne!25238 Regex!12363) (regTwo!25238 Regex!12363)) (EmptyExpr!12363) (Star!12363 (reg!12692 Regex!12363)) (EmptyLang!12363) (Union!12363 (regOne!25239 Regex!12363) (regTwo!25239 Regex!12363)) )
))
(declare-datatypes ((String!52190 0))(
  ( (String!52191 (value!233085 String)) )
))
(declare-datatypes ((Conc!13669 0))(
  ( (Node!13669 (left!33820 Conc!13669) (right!34150 Conc!13669) (csize!27568 Int) (cheight!13880 Int)) (Leaf!21113 (xs!16975 IArray!27343) (csize!27569 Int)) (Empty!13669) )
))
(declare-datatypes ((BalanceConc!26932 0))(
  ( (BalanceConc!26933 (c!711279 Conc!13669)) )
))
(declare-datatypes ((TokenValueInjection!14804 0))(
  ( (TokenValueInjection!14805 (toValue!10122 Int) (toChars!9981 Int)) )
))
(declare-datatypes ((Rule!14716 0))(
  ( (Rule!14717 (regex!7458 Regex!12363) (tag!8320 String!52190) (isSeparator!7458 Bool) (transformation!7458 TokenValueInjection!14804)) )
))
(declare-datatypes ((List!45334 0))(
  ( (Nil!45210) (Cons!45210 (h!50630 Rule!14716) (t!343365 List!45334)) )
))
(declare-fun rules!4102 () List!45334)

(declare-fun r1!615 () Rule!14716)

(declare-fun contains!9153 (List!45334 Rule!14716) Bool)

(assert (=> b!4154490 (= res!1701442 (contains!9153 rules!4102 r1!615))))

(declare-fun tp!1266875 () Bool)

(declare-fun b!4154491 () Bool)

(declare-fun e!2577833 () Bool)

(declare-fun e!2577831 () Bool)

(declare-fun inv!59790 (String!52190) Bool)

(declare-fun inv!59792 (TokenValueInjection!14804) Bool)

(assert (=> b!4154491 (= e!2577833 (and tp!1266875 (inv!59790 (tag!8320 (h!50630 rules!4102))) (inv!59792 (transformation!7458 (h!50630 rules!4102))) e!2577831))))

(declare-fun b!4154492 () Bool)

(declare-fun e!2577838 () Bool)

(assert (=> b!4154492 (= e!2577834 e!2577838)))

(declare-fun res!1701443 () Bool)

(assert (=> b!4154492 (=> (not res!1701443) (not e!2577838))))

(declare-fun lt!1481216 () Rule!14716)

(assert (=> b!4154492 (= res!1701443 (not (= lt!1481216 r1!615)))))

(declare-fun head!8784 (List!45334) Rule!14716)

(assert (=> b!4154492 (= lt!1481216 (head!8784 rules!4102))))

(declare-fun b!4154493 () Bool)

(declare-fun res!1701444 () Bool)

(assert (=> b!4154493 (=> (not res!1701444) (not e!2577834))))

(declare-fun r2!597 () Rule!14716)

(assert (=> b!4154493 (= res!1701444 (contains!9153 rules!4102 r2!597))))

(declare-fun b!4154494 () Bool)

(declare-fun res!1701439 () Bool)

(assert (=> b!4154494 (=> (not res!1701439) (not e!2577834))))

(declare-datatypes ((LexerInterface!7047 0))(
  ( (LexerInterfaceExt!7044 (__x!27594 Int)) (Lexer!7045) )
))
(declare-fun thiss!26968 () LexerInterface!7047)

(declare-datatypes ((List!45335 0))(
  ( (Nil!45211) (Cons!45211 (h!50631 String!52190) (t!343366 List!45335)) )
))
(declare-fun noDuplicateTag!3035 (LexerInterface!7047 List!45334 List!45335) Bool)

(declare-fun noDuplicateTag$default$2!40 (LexerInterface!7047) List!45335)

(assert (=> b!4154494 (= res!1701439 (noDuplicateTag!3035 thiss!26968 rules!4102 (noDuplicateTag$default$2!40 thiss!26968)))))

(assert (=> b!4154495 (= e!2577831 (and tp!1266876 tp!1266877))))

(declare-fun b!4154496 () Bool)

(declare-fun e!2577832 () Bool)

(declare-fun tp!1266874 () Bool)

(declare-fun e!2577835 () Bool)

(assert (=> b!4154496 (= e!2577832 (and tp!1266874 (inv!59790 (tag!8320 r1!615)) (inv!59792 (transformation!7458 r1!615)) e!2577835))))

(declare-fun res!1701441 () Bool)

(assert (=> start!395490 (=> (not res!1701441) (not e!2577834))))

(get-info :version)

(assert (=> start!395490 (= res!1701441 ((_ is Lexer!7045) thiss!26968))))

(assert (=> start!395490 e!2577834))

(assert (=> start!395490 true))

(declare-fun e!2577829 () Bool)

(assert (=> start!395490 e!2577829))

(assert (=> start!395490 e!2577832))

(declare-fun e!2577828 () Bool)

(assert (=> start!395490 e!2577828))

(assert (=> b!4154497 (= e!2577835 (and tp!1266873 tp!1266871))))

(declare-fun tp!1266869 () Bool)

(declare-fun e!2577827 () Bool)

(declare-fun b!4154498 () Bool)

(assert (=> b!4154498 (= e!2577828 (and tp!1266869 (inv!59790 (tag!8320 r2!597)) (inv!59792 (transformation!7458 r2!597)) e!2577827))))

(assert (=> b!4154499 (= e!2577827 (and tp!1266872 tp!1266878))))

(declare-fun b!4154500 () Bool)

(declare-fun tp!1266870 () Bool)

(assert (=> b!4154500 (= e!2577829 (and e!2577833 tp!1266870))))

(declare-fun b!4154501 () Bool)

(assert (=> b!4154501 (= e!2577838 (not (not (= rules!4102 Nil!45210))))))

(declare-fun lt!1481218 () List!45334)

(assert (=> b!4154501 (contains!9153 lt!1481218 r2!597)))

(declare-datatypes ((Unit!64429 0))(
  ( (Unit!64430) )
))
(declare-fun lt!1481215 () Unit!64429)

(declare-fun lemmaGetIndexBiggerAndHeadNotEqThenTailContains!2 (List!45334 Rule!14716 Rule!14716) Unit!64429)

(assert (=> b!4154501 (= lt!1481215 (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!2 rules!4102 r1!615 r2!597))))

(assert (=> b!4154501 (noDuplicateTag!3035 thiss!26968 lt!1481218 Nil!45211)))

(declare-fun lt!1481217 () Unit!64429)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!28 (LexerInterface!7047 List!45335 List!45335 List!45334) Unit!64429)

(assert (=> b!4154501 (= lt!1481217 (lemmaNoDupTagThenAlsoWithSubListAcc!28 thiss!26968 (Cons!45211 (tag!8320 lt!1481216) Nil!45211) Nil!45211 lt!1481218))))

(declare-fun tail!6621 (List!45334) List!45334)

(assert (=> b!4154501 (= lt!1481218 (tail!6621 rules!4102))))

(declare-fun b!4154502 () Bool)

(declare-fun res!1701440 () Bool)

(assert (=> b!4154502 (=> (not res!1701440) (not e!2577834))))

(declare-fun getIndex!800 (List!45334 Rule!14716) Int)

(assert (=> b!4154502 (= res!1701440 (< (getIndex!800 rules!4102 r1!615) (getIndex!800 rules!4102 r2!597)))))

(assert (= (and start!395490 res!1701441) b!4154490))

(assert (= (and b!4154490 res!1701442) b!4154493))

(assert (= (and b!4154493 res!1701444) b!4154494))

(assert (= (and b!4154494 res!1701439) b!4154502))

(assert (= (and b!4154502 res!1701440) b!4154492))

(assert (= (and b!4154492 res!1701443) b!4154501))

(assert (= b!4154491 b!4154495))

(assert (= b!4154500 b!4154491))

(assert (= (and start!395490 ((_ is Cons!45210) rules!4102)) b!4154500))

(assert (= b!4154496 b!4154497))

(assert (= start!395490 b!4154496))

(assert (= b!4154498 b!4154499))

(assert (= start!395490 b!4154498))

(declare-fun m!4749269 () Bool)

(assert (=> b!4154501 m!4749269))

(declare-fun m!4749271 () Bool)

(assert (=> b!4154501 m!4749271))

(declare-fun m!4749273 () Bool)

(assert (=> b!4154501 m!4749273))

(declare-fun m!4749275 () Bool)

(assert (=> b!4154501 m!4749275))

(declare-fun m!4749277 () Bool)

(assert (=> b!4154501 m!4749277))

(declare-fun m!4749279 () Bool)

(assert (=> b!4154490 m!4749279))

(declare-fun m!4749281 () Bool)

(assert (=> b!4154491 m!4749281))

(declare-fun m!4749283 () Bool)

(assert (=> b!4154491 m!4749283))

(declare-fun m!4749285 () Bool)

(assert (=> b!4154498 m!4749285))

(declare-fun m!4749287 () Bool)

(assert (=> b!4154498 m!4749287))

(declare-fun m!4749289 () Bool)

(assert (=> b!4154502 m!4749289))

(declare-fun m!4749291 () Bool)

(assert (=> b!4154502 m!4749291))

(declare-fun m!4749293 () Bool)

(assert (=> b!4154492 m!4749293))

(declare-fun m!4749295 () Bool)

(assert (=> b!4154494 m!4749295))

(assert (=> b!4154494 m!4749295))

(declare-fun m!4749297 () Bool)

(assert (=> b!4154494 m!4749297))

(declare-fun m!4749299 () Bool)

(assert (=> b!4154493 m!4749299))

(declare-fun m!4749301 () Bool)

(assert (=> b!4154496 m!4749301))

(declare-fun m!4749303 () Bool)

(assert (=> b!4154496 m!4749303))

(check-sat (not b!4154491) b_and!323439 (not b!4154500) (not b_next!119785) (not b!4154496) (not b!4154493) b_and!323437 (not b_next!119781) b_and!323447 (not b!4154501) (not b!4154490) (not b!4154492) b_and!323445 (not b!4154498) b_and!323441 b_and!323443 (not b_next!119783) (not b_next!119779) (not b_next!119789) (not b_next!119787) (not b!4154502) (not b!4154494))
(check-sat b_and!323447 b_and!323439 b_and!323445 b_and!323441 (not b_next!119785) b_and!323437 (not b_next!119781) b_and!323443 (not b_next!119783) (not b_next!119779) (not b_next!119789) (not b_next!119787))
(get-model)

(declare-fun b!4154531 () Bool)

(declare-fun e!2577856 () Int)

(declare-fun e!2577857 () Int)

(assert (=> b!4154531 (= e!2577856 e!2577857)))

(declare-fun c!711293 () Bool)

(assert (=> b!4154531 (= c!711293 (and ((_ is Cons!45210) rules!4102) (not (= (h!50630 rules!4102) r1!615))))))

(declare-fun d!1228584 () Bool)

(declare-fun lt!1481225 () Int)

(assert (=> d!1228584 (>= lt!1481225 0)))

(assert (=> d!1228584 (= lt!1481225 e!2577856)))

(declare-fun c!711292 () Bool)

(assert (=> d!1228584 (= c!711292 (and ((_ is Cons!45210) rules!4102) (= (h!50630 rules!4102) r1!615)))))

(assert (=> d!1228584 (contains!9153 rules!4102 r1!615)))

(assert (=> d!1228584 (= (getIndex!800 rules!4102 r1!615) lt!1481225)))

(declare-fun b!4154530 () Bool)

(assert (=> b!4154530 (= e!2577856 0)))

(declare-fun b!4154532 () Bool)

(assert (=> b!4154532 (= e!2577857 (+ 1 (getIndex!800 (t!343365 rules!4102) r1!615)))))

(declare-fun b!4154533 () Bool)

(assert (=> b!4154533 (= e!2577857 (- 1))))

(assert (= (and d!1228584 c!711292) b!4154530))

(assert (= (and d!1228584 (not c!711292)) b!4154531))

(assert (= (and b!4154531 c!711293) b!4154532))

(assert (= (and b!4154531 (not c!711293)) b!4154533))

(assert (=> d!1228584 m!4749279))

(declare-fun m!4749313 () Bool)

(assert (=> b!4154532 m!4749313))

(assert (=> b!4154502 d!1228584))

(declare-fun b!4154539 () Bool)

(declare-fun e!2577862 () Int)

(declare-fun e!2577863 () Int)

(assert (=> b!4154539 (= e!2577862 e!2577863)))

(declare-fun c!711295 () Bool)

(assert (=> b!4154539 (= c!711295 (and ((_ is Cons!45210) rules!4102) (not (= (h!50630 rules!4102) r2!597))))))

(declare-fun d!1228590 () Bool)

(declare-fun lt!1481228 () Int)

(assert (=> d!1228590 (>= lt!1481228 0)))

(assert (=> d!1228590 (= lt!1481228 e!2577862)))

(declare-fun c!711294 () Bool)

(assert (=> d!1228590 (= c!711294 (and ((_ is Cons!45210) rules!4102) (= (h!50630 rules!4102) r2!597)))))

(assert (=> d!1228590 (contains!9153 rules!4102 r2!597)))

(assert (=> d!1228590 (= (getIndex!800 rules!4102 r2!597) lt!1481228)))

(declare-fun b!4154538 () Bool)

(assert (=> b!4154538 (= e!2577862 0)))

(declare-fun b!4154540 () Bool)

(assert (=> b!4154540 (= e!2577863 (+ 1 (getIndex!800 (t!343365 rules!4102) r2!597)))))

(declare-fun b!4154541 () Bool)

(assert (=> b!4154541 (= e!2577863 (- 1))))

(assert (= (and d!1228590 c!711294) b!4154538))

(assert (= (and d!1228590 (not c!711294)) b!4154539))

(assert (= (and b!4154539 c!711295) b!4154540))

(assert (= (and b!4154539 (not c!711295)) b!4154541))

(assert (=> d!1228590 m!4749299))

(declare-fun m!4749315 () Bool)

(assert (=> b!4154540 m!4749315))

(assert (=> b!4154502 d!1228590))

(declare-fun d!1228592 () Bool)

(assert (=> d!1228592 (= (inv!59790 (tag!8320 (h!50630 rules!4102))) (= (mod (str.len (value!233085 (tag!8320 (h!50630 rules!4102)))) 2) 0))))

(assert (=> b!4154491 d!1228592))

(declare-fun d!1228594 () Bool)

(declare-fun res!1701474 () Bool)

(declare-fun e!2577873 () Bool)

(assert (=> d!1228594 (=> (not res!1701474) (not e!2577873))))

(declare-fun semiInverseModEq!3229 (Int Int) Bool)

(assert (=> d!1228594 (= res!1701474 (semiInverseModEq!3229 (toChars!9981 (transformation!7458 (h!50630 rules!4102))) (toValue!10122 (transformation!7458 (h!50630 rules!4102)))))))

(assert (=> d!1228594 (= (inv!59792 (transformation!7458 (h!50630 rules!4102))) e!2577873)))

(declare-fun b!4154551 () Bool)

(declare-fun equivClasses!3128 (Int Int) Bool)

(assert (=> b!4154551 (= e!2577873 (equivClasses!3128 (toChars!9981 (transformation!7458 (h!50630 rules!4102))) (toValue!10122 (transformation!7458 (h!50630 rules!4102)))))))

(assert (= (and d!1228594 res!1701474) b!4154551))

(declare-fun m!4749327 () Bool)

(assert (=> d!1228594 m!4749327))

(declare-fun m!4749329 () Bool)

(assert (=> b!4154551 m!4749329))

(assert (=> b!4154491 d!1228594))

(declare-fun d!1228602 () Bool)

(assert (=> d!1228602 (= (inv!59790 (tag!8320 r1!615)) (= (mod (str.len (value!233085 (tag!8320 r1!615))) 2) 0))))

(assert (=> b!4154496 d!1228602))

(declare-fun d!1228604 () Bool)

(declare-fun res!1701477 () Bool)

(declare-fun e!2577876 () Bool)

(assert (=> d!1228604 (=> (not res!1701477) (not e!2577876))))

(assert (=> d!1228604 (= res!1701477 (semiInverseModEq!3229 (toChars!9981 (transformation!7458 r1!615)) (toValue!10122 (transformation!7458 r1!615))))))

(assert (=> d!1228604 (= (inv!59792 (transformation!7458 r1!615)) e!2577876)))

(declare-fun b!4154554 () Bool)

(assert (=> b!4154554 (= e!2577876 (equivClasses!3128 (toChars!9981 (transformation!7458 r1!615)) (toValue!10122 (transformation!7458 r1!615))))))

(assert (= (and d!1228604 res!1701477) b!4154554))

(declare-fun m!4749331 () Bool)

(assert (=> d!1228604 m!4749331))

(declare-fun m!4749333 () Bool)

(assert (=> b!4154554 m!4749333))

(assert (=> b!4154496 d!1228604))

(declare-fun d!1228606 () Bool)

(declare-fun lt!1481234 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6991 (List!45334) (InoxSet Rule!14716))

(assert (=> d!1228606 (= lt!1481234 (select (content!6991 rules!4102) r2!597))))

(declare-fun e!2577884 () Bool)

(assert (=> d!1228606 (= lt!1481234 e!2577884)))

(declare-fun res!1701485 () Bool)

(assert (=> d!1228606 (=> (not res!1701485) (not e!2577884))))

(assert (=> d!1228606 (= res!1701485 ((_ is Cons!45210) rules!4102))))

(assert (=> d!1228606 (= (contains!9153 rules!4102 r2!597) lt!1481234)))

(declare-fun b!4154561 () Bool)

(declare-fun e!2577883 () Bool)

(assert (=> b!4154561 (= e!2577884 e!2577883)))

(declare-fun res!1701484 () Bool)

(assert (=> b!4154561 (=> res!1701484 e!2577883)))

(assert (=> b!4154561 (= res!1701484 (= (h!50630 rules!4102) r2!597))))

(declare-fun b!4154562 () Bool)

(assert (=> b!4154562 (= e!2577883 (contains!9153 (t!343365 rules!4102) r2!597))))

(assert (= (and d!1228606 res!1701485) b!4154561))

(assert (= (and b!4154561 (not res!1701484)) b!4154562))

(declare-fun m!4749339 () Bool)

(assert (=> d!1228606 m!4749339))

(declare-fun m!4749341 () Bool)

(assert (=> d!1228606 m!4749341))

(declare-fun m!4749343 () Bool)

(assert (=> b!4154562 m!4749343))

(assert (=> b!4154493 d!1228606))

(declare-fun d!1228610 () Bool)

(assert (=> d!1228610 (= (inv!59790 (tag!8320 r2!597)) (= (mod (str.len (value!233085 (tag!8320 r2!597))) 2) 0))))

(assert (=> b!4154498 d!1228610))

(declare-fun d!1228612 () Bool)

(declare-fun res!1701487 () Bool)

(declare-fun e!2577886 () Bool)

(assert (=> d!1228612 (=> (not res!1701487) (not e!2577886))))

(assert (=> d!1228612 (= res!1701487 (semiInverseModEq!3229 (toChars!9981 (transformation!7458 r2!597)) (toValue!10122 (transformation!7458 r2!597))))))

(assert (=> d!1228612 (= (inv!59792 (transformation!7458 r2!597)) e!2577886)))

(declare-fun b!4154564 () Bool)

(assert (=> b!4154564 (= e!2577886 (equivClasses!3128 (toChars!9981 (transformation!7458 r2!597)) (toValue!10122 (transformation!7458 r2!597))))))

(assert (= (and d!1228612 res!1701487) b!4154564))

(declare-fun m!4749349 () Bool)

(assert (=> d!1228612 m!4749349))

(declare-fun m!4749351 () Bool)

(assert (=> b!4154564 m!4749351))

(assert (=> b!4154498 d!1228612))

(declare-fun d!1228616 () Bool)

(assert (=> d!1228616 (= (head!8784 rules!4102) (h!50630 rules!4102))))

(assert (=> b!4154492 d!1228616))

(declare-fun d!1228620 () Bool)

(declare-fun res!1701494 () Bool)

(declare-fun e!2577893 () Bool)

(assert (=> d!1228620 (=> res!1701494 e!2577893)))

(assert (=> d!1228620 (= res!1701494 ((_ is Nil!45210) rules!4102))))

(assert (=> d!1228620 (= (noDuplicateTag!3035 thiss!26968 rules!4102 (noDuplicateTag$default$2!40 thiss!26968)) e!2577893)))

(declare-fun b!4154571 () Bool)

(declare-fun e!2577894 () Bool)

(assert (=> b!4154571 (= e!2577893 e!2577894)))

(declare-fun res!1701495 () Bool)

(assert (=> b!4154571 (=> (not res!1701495) (not e!2577894))))

(declare-fun contains!9155 (List!45335 String!52190) Bool)

(assert (=> b!4154571 (= res!1701495 (not (contains!9155 (noDuplicateTag$default$2!40 thiss!26968) (tag!8320 (h!50630 rules!4102)))))))

(declare-fun b!4154572 () Bool)

(assert (=> b!4154572 (= e!2577894 (noDuplicateTag!3035 thiss!26968 (t!343365 rules!4102) (Cons!45211 (tag!8320 (h!50630 rules!4102)) (noDuplicateTag$default$2!40 thiss!26968))))))

(assert (= (and d!1228620 (not res!1701494)) b!4154571))

(assert (= (and b!4154571 res!1701495) b!4154572))

(assert (=> b!4154571 m!4749295))

(declare-fun m!4749359 () Bool)

(assert (=> b!4154571 m!4749359))

(declare-fun m!4749361 () Bool)

(assert (=> b!4154572 m!4749361))

(assert (=> b!4154494 d!1228620))

(declare-fun d!1228624 () Bool)

(assert (=> d!1228624 (= (noDuplicateTag$default$2!40 thiss!26968) Nil!45211)))

(assert (=> b!4154494 d!1228624))

(declare-fun d!1228626 () Bool)

(declare-fun lt!1481240 () Bool)

(assert (=> d!1228626 (= lt!1481240 (select (content!6991 lt!1481218) r2!597))))

(declare-fun e!2577896 () Bool)

(assert (=> d!1228626 (= lt!1481240 e!2577896)))

(declare-fun res!1701497 () Bool)

(assert (=> d!1228626 (=> (not res!1701497) (not e!2577896))))

(assert (=> d!1228626 (= res!1701497 ((_ is Cons!45210) lt!1481218))))

(assert (=> d!1228626 (= (contains!9153 lt!1481218 r2!597) lt!1481240)))

(declare-fun b!4154573 () Bool)

(declare-fun e!2577895 () Bool)

(assert (=> b!4154573 (= e!2577896 e!2577895)))

(declare-fun res!1701496 () Bool)

(assert (=> b!4154573 (=> res!1701496 e!2577895)))

(assert (=> b!4154573 (= res!1701496 (= (h!50630 lt!1481218) r2!597))))

(declare-fun b!4154574 () Bool)

(assert (=> b!4154574 (= e!2577895 (contains!9153 (t!343365 lt!1481218) r2!597))))

(assert (= (and d!1228626 res!1701497) b!4154573))

(assert (= (and b!4154573 (not res!1701496)) b!4154574))

(declare-fun m!4749367 () Bool)

(assert (=> d!1228626 m!4749367))

(declare-fun m!4749369 () Bool)

(assert (=> d!1228626 m!4749369))

(declare-fun m!4749371 () Bool)

(assert (=> b!4154574 m!4749371))

(assert (=> b!4154501 d!1228626))

(declare-fun d!1228630 () Bool)

(assert (=> d!1228630 (noDuplicateTag!3035 thiss!26968 lt!1481218 Nil!45211)))

(declare-fun lt!1481244 () Unit!64429)

(declare-fun choose!25438 (LexerInterface!7047 List!45335 List!45335 List!45334) Unit!64429)

(assert (=> d!1228630 (= lt!1481244 (choose!25438 thiss!26968 (Cons!45211 (tag!8320 lt!1481216) Nil!45211) Nil!45211 lt!1481218))))

(declare-fun subseq!557 (List!45335 List!45335) Bool)

(assert (=> d!1228630 (subseq!557 Nil!45211 (Cons!45211 (tag!8320 lt!1481216) Nil!45211))))

(assert (=> d!1228630 (= (lemmaNoDupTagThenAlsoWithSubListAcc!28 thiss!26968 (Cons!45211 (tag!8320 lt!1481216) Nil!45211) Nil!45211 lt!1481218) lt!1481244)))

(declare-fun bs!595505 () Bool)

(assert (= bs!595505 d!1228630))

(assert (=> bs!595505 m!4749277))

(declare-fun m!4749385 () Bool)

(assert (=> bs!595505 m!4749385))

(declare-fun m!4749387 () Bool)

(assert (=> bs!595505 m!4749387))

(assert (=> b!4154501 d!1228630))

(declare-fun d!1228640 () Bool)

(assert (=> d!1228640 (contains!9153 (tail!6621 rules!4102) r2!597)))

(declare-fun lt!1481247 () Unit!64429)

(declare-fun choose!25439 (List!45334 Rule!14716 Rule!14716) Unit!64429)

(assert (=> d!1228640 (= lt!1481247 (choose!25439 rules!4102 r1!615 r2!597))))

(declare-fun e!2577921 () Bool)

(assert (=> d!1228640 e!2577921))

(declare-fun res!1701505 () Bool)

(assert (=> d!1228640 (=> (not res!1701505) (not e!2577921))))

(assert (=> d!1228640 (= res!1701505 (contains!9153 rules!4102 r1!615))))

(assert (=> d!1228640 (= (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!2 rules!4102 r1!615 r2!597) lt!1481247)))

(declare-fun b!4154615 () Bool)

(assert (=> b!4154615 (= e!2577921 (contains!9153 rules!4102 r2!597))))

(assert (= (and d!1228640 res!1701505) b!4154615))

(assert (=> d!1228640 m!4749275))

(assert (=> d!1228640 m!4749275))

(declare-fun m!4749393 () Bool)

(assert (=> d!1228640 m!4749393))

(declare-fun m!4749395 () Bool)

(assert (=> d!1228640 m!4749395))

(assert (=> d!1228640 m!4749279))

(assert (=> b!4154615 m!4749299))

(assert (=> b!4154501 d!1228640))

(declare-fun d!1228642 () Bool)

(declare-fun res!1701506 () Bool)

(declare-fun e!2577922 () Bool)

(assert (=> d!1228642 (=> res!1701506 e!2577922)))

(assert (=> d!1228642 (= res!1701506 ((_ is Nil!45210) lt!1481218))))

(assert (=> d!1228642 (= (noDuplicateTag!3035 thiss!26968 lt!1481218 Nil!45211) e!2577922)))

(declare-fun b!4154616 () Bool)

(declare-fun e!2577923 () Bool)

(assert (=> b!4154616 (= e!2577922 e!2577923)))

(declare-fun res!1701507 () Bool)

(assert (=> b!4154616 (=> (not res!1701507) (not e!2577923))))

(assert (=> b!4154616 (= res!1701507 (not (contains!9155 Nil!45211 (tag!8320 (h!50630 lt!1481218)))))))

(declare-fun b!4154617 () Bool)

(assert (=> b!4154617 (= e!2577923 (noDuplicateTag!3035 thiss!26968 (t!343365 lt!1481218) (Cons!45211 (tag!8320 (h!50630 lt!1481218)) Nil!45211)))))

(assert (= (and d!1228642 (not res!1701506)) b!4154616))

(assert (= (and b!4154616 res!1701507) b!4154617))

(declare-fun m!4749397 () Bool)

(assert (=> b!4154616 m!4749397))

(declare-fun m!4749399 () Bool)

(assert (=> b!4154617 m!4749399))

(assert (=> b!4154501 d!1228642))

(declare-fun d!1228644 () Bool)

(assert (=> d!1228644 (= (tail!6621 rules!4102) (t!343365 rules!4102))))

(assert (=> b!4154501 d!1228644))

(declare-fun d!1228646 () Bool)

(declare-fun lt!1481248 () Bool)

(assert (=> d!1228646 (= lt!1481248 (select (content!6991 rules!4102) r1!615))))

(declare-fun e!2577925 () Bool)

(assert (=> d!1228646 (= lt!1481248 e!2577925)))

(declare-fun res!1701509 () Bool)

(assert (=> d!1228646 (=> (not res!1701509) (not e!2577925))))

(assert (=> d!1228646 (= res!1701509 ((_ is Cons!45210) rules!4102))))

(assert (=> d!1228646 (= (contains!9153 rules!4102 r1!615) lt!1481248)))

(declare-fun b!4154618 () Bool)

(declare-fun e!2577924 () Bool)

(assert (=> b!4154618 (= e!2577925 e!2577924)))

(declare-fun res!1701508 () Bool)

(assert (=> b!4154618 (=> res!1701508 e!2577924)))

(assert (=> b!4154618 (= res!1701508 (= (h!50630 rules!4102) r1!615))))

(declare-fun b!4154619 () Bool)

(assert (=> b!4154619 (= e!2577924 (contains!9153 (t!343365 rules!4102) r1!615))))

(assert (= (and d!1228646 res!1701509) b!4154618))

(assert (= (and b!4154618 (not res!1701508)) b!4154619))

(assert (=> d!1228646 m!4749339))

(declare-fun m!4749401 () Bool)

(assert (=> d!1228646 m!4749401))

(declare-fun m!4749403 () Bool)

(assert (=> b!4154619 m!4749403))

(assert (=> b!4154490 d!1228646))

(declare-fun b!4154631 () Bool)

(declare-fun e!2577928 () Bool)

(declare-fun tp!1266930 () Bool)

(declare-fun tp!1266929 () Bool)

(assert (=> b!4154631 (= e!2577928 (and tp!1266930 tp!1266929))))

(assert (=> b!4154491 (= tp!1266875 e!2577928)))

(declare-fun b!4154633 () Bool)

(declare-fun tp!1266926 () Bool)

(declare-fun tp!1266928 () Bool)

(assert (=> b!4154633 (= e!2577928 (and tp!1266926 tp!1266928))))

(declare-fun b!4154630 () Bool)

(declare-fun tp_is_empty!21625 () Bool)

(assert (=> b!4154630 (= e!2577928 tp_is_empty!21625)))

(declare-fun b!4154632 () Bool)

(declare-fun tp!1266927 () Bool)

(assert (=> b!4154632 (= e!2577928 tp!1266927)))

(assert (= (and b!4154491 ((_ is ElementMatch!12363) (regex!7458 (h!50630 rules!4102)))) b!4154630))

(assert (= (and b!4154491 ((_ is Concat!20052) (regex!7458 (h!50630 rules!4102)))) b!4154631))

(assert (= (and b!4154491 ((_ is Star!12363) (regex!7458 (h!50630 rules!4102)))) b!4154632))

(assert (= (and b!4154491 ((_ is Union!12363) (regex!7458 (h!50630 rules!4102)))) b!4154633))

(declare-fun b!4154635 () Bool)

(declare-fun e!2577929 () Bool)

(declare-fun tp!1266935 () Bool)

(declare-fun tp!1266934 () Bool)

(assert (=> b!4154635 (= e!2577929 (and tp!1266935 tp!1266934))))

(assert (=> b!4154496 (= tp!1266874 e!2577929)))

(declare-fun b!4154637 () Bool)

(declare-fun tp!1266931 () Bool)

(declare-fun tp!1266933 () Bool)

(assert (=> b!4154637 (= e!2577929 (and tp!1266931 tp!1266933))))

(declare-fun b!4154634 () Bool)

(assert (=> b!4154634 (= e!2577929 tp_is_empty!21625)))

(declare-fun b!4154636 () Bool)

(declare-fun tp!1266932 () Bool)

(assert (=> b!4154636 (= e!2577929 tp!1266932)))

(assert (= (and b!4154496 ((_ is ElementMatch!12363) (regex!7458 r1!615))) b!4154634))

(assert (= (and b!4154496 ((_ is Concat!20052) (regex!7458 r1!615))) b!4154635))

(assert (= (and b!4154496 ((_ is Star!12363) (regex!7458 r1!615))) b!4154636))

(assert (= (and b!4154496 ((_ is Union!12363) (regex!7458 r1!615))) b!4154637))

(declare-fun b!4154639 () Bool)

(declare-fun e!2577930 () Bool)

(declare-fun tp!1266940 () Bool)

(declare-fun tp!1266939 () Bool)

(assert (=> b!4154639 (= e!2577930 (and tp!1266940 tp!1266939))))

(assert (=> b!4154498 (= tp!1266869 e!2577930)))

(declare-fun b!4154641 () Bool)

(declare-fun tp!1266936 () Bool)

(declare-fun tp!1266938 () Bool)

(assert (=> b!4154641 (= e!2577930 (and tp!1266936 tp!1266938))))

(declare-fun b!4154638 () Bool)

(assert (=> b!4154638 (= e!2577930 tp_is_empty!21625)))

(declare-fun b!4154640 () Bool)

(declare-fun tp!1266937 () Bool)

(assert (=> b!4154640 (= e!2577930 tp!1266937)))

(assert (= (and b!4154498 ((_ is ElementMatch!12363) (regex!7458 r2!597))) b!4154638))

(assert (= (and b!4154498 ((_ is Concat!20052) (regex!7458 r2!597))) b!4154639))

(assert (= (and b!4154498 ((_ is Star!12363) (regex!7458 r2!597))) b!4154640))

(assert (= (and b!4154498 ((_ is Union!12363) (regex!7458 r2!597))) b!4154641))

(declare-fun b!4154652 () Bool)

(declare-fun b_free!119091 () Bool)

(declare-fun b_next!119795 () Bool)

(assert (=> b!4154652 (= b_free!119091 (not b_next!119795))))

(declare-fun tp!1266950 () Bool)

(declare-fun b_and!323453 () Bool)

(assert (=> b!4154652 (= tp!1266950 b_and!323453)))

(declare-fun b_free!119093 () Bool)

(declare-fun b_next!119797 () Bool)

(assert (=> b!4154652 (= b_free!119093 (not b_next!119797))))

(declare-fun tp!1266949 () Bool)

(declare-fun b_and!323455 () Bool)

(assert (=> b!4154652 (= tp!1266949 b_and!323455)))

(declare-fun e!2577941 () Bool)

(assert (=> b!4154652 (= e!2577941 (and tp!1266950 tp!1266949))))

(declare-fun e!2577942 () Bool)

(declare-fun tp!1266951 () Bool)

(declare-fun b!4154651 () Bool)

(assert (=> b!4154651 (= e!2577942 (and tp!1266951 (inv!59790 (tag!8320 (h!50630 (t!343365 rules!4102)))) (inv!59792 (transformation!7458 (h!50630 (t!343365 rules!4102)))) e!2577941))))

(declare-fun b!4154650 () Bool)

(declare-fun e!2577940 () Bool)

(declare-fun tp!1266952 () Bool)

(assert (=> b!4154650 (= e!2577940 (and e!2577942 tp!1266952))))

(assert (=> b!4154500 (= tp!1266870 e!2577940)))

(assert (= b!4154651 b!4154652))

(assert (= b!4154650 b!4154651))

(assert (= (and b!4154500 ((_ is Cons!45210) (t!343365 rules!4102))) b!4154650))

(declare-fun m!4749405 () Bool)

(assert (=> b!4154651 m!4749405))

(declare-fun m!4749407 () Bool)

(assert (=> b!4154651 m!4749407))

(check-sat (not b!4154641) (not b!4154619) (not b_next!119795) b_and!323455 (not b!4154631) (not d!1228606) (not d!1228630) (not b!4154639) b_and!323437 (not b!4154572) (not b!4154551) (not d!1228612) (not b!4154637) b_and!323447 (not d!1228604) (not d!1228626) (not b_next!119797) (not b!4154650) (not b!4154636) b_and!323439 (not b!4154632) (not b!4154616) b_and!323445 b_and!323441 (not b!4154635) (not b_next!119785) (not d!1228584) tp_is_empty!21625 (not b!4154571) (not b!4154540) (not d!1228594) b_and!323453 b_and!323443 (not b_next!119783) (not b_next!119779) (not b!4154562) (not b_next!119789) (not b!4154617) (not d!1228590) (not b_next!119787) (not d!1228640) (not b!4154554) (not b!4154615) (not b!4154532) (not b!4154633) (not b!4154640) (not d!1228646) (not b!4154651) (not b!4154574) (not b_next!119781) (not b!4154564))
(check-sat b_and!323447 (not b_next!119797) b_and!323439 b_and!323445 b_and!323441 (not b_next!119785) (not b_next!119795) b_and!323455 b_and!323437 (not b_next!119781) b_and!323453 b_and!323443 (not b_next!119783) (not b_next!119779) (not b_next!119789) (not b_next!119787))
