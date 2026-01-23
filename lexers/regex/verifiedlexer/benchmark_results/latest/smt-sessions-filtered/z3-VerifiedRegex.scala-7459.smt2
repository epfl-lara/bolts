; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395910 () Bool)

(assert start!395910)

(declare-fun b!4157316 () Bool)

(declare-fun b_free!119539 () Bool)

(declare-fun b_next!120243 () Bool)

(assert (=> b!4157316 (= b_free!119539 (not b_next!120243))))

(declare-fun tp!1268571 () Bool)

(declare-fun b_and!323901 () Bool)

(assert (=> b!4157316 (= tp!1268571 b_and!323901)))

(declare-fun b_free!119541 () Bool)

(declare-fun b_next!120245 () Bool)

(assert (=> b!4157316 (= b_free!119541 (not b_next!120245))))

(declare-fun tp!1268577 () Bool)

(declare-fun b_and!323903 () Bool)

(assert (=> b!4157316 (= tp!1268577 b_and!323903)))

(declare-fun b!4157321 () Bool)

(declare-fun b_free!119543 () Bool)

(declare-fun b_next!120247 () Bool)

(assert (=> b!4157321 (= b_free!119543 (not b_next!120247))))

(declare-fun tp!1268569 () Bool)

(declare-fun b_and!323905 () Bool)

(assert (=> b!4157321 (= tp!1268569 b_and!323905)))

(declare-fun b_free!119545 () Bool)

(declare-fun b_next!120249 () Bool)

(assert (=> b!4157321 (= b_free!119545 (not b_next!120249))))

(declare-fun tp!1268572 () Bool)

(declare-fun b_and!323907 () Bool)

(assert (=> b!4157321 (= tp!1268572 b_and!323907)))

(declare-fun b!4157319 () Bool)

(declare-fun b_free!119547 () Bool)

(declare-fun b_next!120251 () Bool)

(assert (=> b!4157319 (= b_free!119547 (not b_next!120251))))

(declare-fun tp!1268573 () Bool)

(declare-fun b_and!323909 () Bool)

(assert (=> b!4157319 (= tp!1268573 b_and!323909)))

(declare-fun b_free!119549 () Bool)

(declare-fun b_next!120253 () Bool)

(assert (=> b!4157319 (= b_free!119549 (not b_next!120253))))

(declare-fun tp!1268570 () Bool)

(declare-fun b_and!323911 () Bool)

(assert (=> b!4157319 (= tp!1268570 b_and!323911)))

(declare-datatypes ((List!45460 0))(
  ( (Nil!45336) (Cons!45336 (h!50756 (_ BitVec 16)) (t!343491 List!45460)) )
))
(declare-datatypes ((TokenValue!7720 0))(
  ( (FloatLiteralValue!15440 (text!54485 List!45460)) (TokenValueExt!7719 (__x!27657 Int)) (Broken!38600 (value!233940 List!45460)) (Object!7843) (End!7720) (Def!7720) (Underscore!7720) (Match!7720) (Else!7720) (Error!7720) (Case!7720) (If!7720) (Extends!7720) (Abstract!7720) (Class!7720) (Val!7720) (DelimiterValue!15440 (del!7780 List!45460)) (KeywordValue!7726 (value!233941 List!45460)) (CommentValue!15440 (value!233942 List!45460)) (WhitespaceValue!15440 (value!233943 List!45460)) (IndentationValue!7720 (value!233944 List!45460)) (String!52349) (Int32!7720) (Broken!38601 (value!233945 List!45460)) (Boolean!7721) (Unit!64496) (OperatorValue!7723 (op!7780 List!45460)) (IdentifierValue!15440 (value!233946 List!45460)) (IdentifierValue!15441 (value!233947 List!45460)) (WhitespaceValue!15441 (value!233948 List!45460)) (True!15440) (False!15440) (Broken!38602 (value!233949 List!45460)) (Broken!38603 (value!233950 List!45460)) (True!15441) (RightBrace!7720) (RightBracket!7720) (Colon!7720) (Null!7720) (Comma!7720) (LeftBracket!7720) (False!15441) (LeftBrace!7720) (ImaginaryLiteralValue!7720 (text!54486 List!45460)) (StringLiteralValue!23160 (value!233951 List!45460)) (EOFValue!7720 (value!233952 List!45460)) (IdentValue!7720 (value!233953 List!45460)) (DelimiterValue!15441 (value!233954 List!45460)) (DedentValue!7720 (value!233955 List!45460)) (NewLineValue!7720 (value!233956 List!45460)) (IntegerValue!23160 (value!233957 (_ BitVec 32)) (text!54487 List!45460)) (IntegerValue!23161 (value!233958 Int) (text!54488 List!45460)) (Times!7720) (Or!7720) (Equal!7720) (Minus!7720) (Broken!38604 (value!233959 List!45460)) (And!7720) (Div!7720) (LessEqual!7720) (Mod!7720) (Concat!20115) (Not!7720) (Plus!7720) (SpaceValue!7720 (value!233960 List!45460)) (IntegerValue!23162 (value!233961 Int) (text!54489 List!45460)) (StringLiteralValue!23161 (text!54490 List!45460)) (FloatLiteralValue!15441 (text!54491 List!45460)) (BytesLiteralValue!7720 (value!233962 List!45460)) (CommentValue!15441 (value!233963 List!45460)) (StringLiteralValue!23162 (value!233964 List!45460)) (ErrorTokenValue!7720 (msg!7781 List!45460)) )
))
(declare-datatypes ((C!24976 0))(
  ( (C!24977 (val!14598 Int)) )
))
(declare-datatypes ((List!45461 0))(
  ( (Nil!45337) (Cons!45337 (h!50757 C!24976) (t!343492 List!45461)) )
))
(declare-datatypes ((IArray!27407 0))(
  ( (IArray!27408 (innerList!13761 List!45461)) )
))
(declare-datatypes ((Conc!13701 0))(
  ( (Node!13701 (left!33868 Conc!13701) (right!34198 Conc!13701) (csize!27632 Int) (cheight!13912 Int)) (Leaf!21161 (xs!17007 IArray!27407) (csize!27633 Int)) (Empty!13701) )
))
(declare-datatypes ((Regex!12395 0))(
  ( (ElementMatch!12395 (c!711508 C!24976)) (Concat!20116 (regOne!25302 Regex!12395) (regTwo!25302 Regex!12395)) (EmptyExpr!12395) (Star!12395 (reg!12724 Regex!12395)) (EmptyLang!12395) (Union!12395 (regOne!25303 Regex!12395) (regTwo!25303 Regex!12395)) )
))
(declare-datatypes ((String!52350 0))(
  ( (String!52351 (value!233965 String)) )
))
(declare-datatypes ((BalanceConc!26996 0))(
  ( (BalanceConc!26997 (c!711509 Conc!13701)) )
))
(declare-datatypes ((TokenValueInjection!14868 0))(
  ( (TokenValueInjection!14869 (toValue!10154 Int) (toChars!10013 Int)) )
))
(declare-datatypes ((Rule!14780 0))(
  ( (Rule!14781 (regex!7490 Regex!12395) (tag!8354 String!52350) (isSeparator!7490 Bool) (transformation!7490 TokenValueInjection!14868)) )
))
(declare-datatypes ((List!45462 0))(
  ( (Nil!45338) (Cons!45338 (h!50758 Rule!14780) (t!343493 List!45462)) )
))
(declare-fun rules!4102 () List!45462)

(declare-fun e!2580060 () Bool)

(declare-fun tp!1268574 () Bool)

(declare-fun b!4157308 () Bool)

(declare-fun e!2580059 () Bool)

(declare-fun inv!59870 (String!52350) Bool)

(declare-fun inv!59872 (TokenValueInjection!14868) Bool)

(assert (=> b!4157308 (= e!2580059 (and tp!1268574 (inv!59870 (tag!8354 (h!50758 rules!4102))) (inv!59872 (transformation!7490 (h!50758 rules!4102))) e!2580060))))

(declare-fun b!4157309 () Bool)

(declare-fun e!2580064 () Bool)

(declare-fun tp!1268575 () Bool)

(assert (=> b!4157309 (= e!2580064 (and e!2580059 tp!1268575))))

(declare-fun e!2580072 () Bool)

(declare-fun r2!597 () Rule!14780)

(declare-fun b!4157310 () Bool)

(declare-fun lt!1481735 () List!45462)

(declare-fun r1!615 () Rule!14780)

(declare-fun getIndex!832 (List!45462 Rule!14780) Int)

(assert (=> b!4157310 (= e!2580072 (< (getIndex!832 lt!1481735 r1!615) (getIndex!832 lt!1481735 r2!597)))))

(declare-fun b!4157311 () Bool)

(declare-fun res!1702704 () Bool)

(declare-fun e!2580068 () Bool)

(assert (=> b!4157311 (=> (not res!1702704) (not e!2580068))))

(declare-fun contains!9205 (List!45462 Rule!14780) Bool)

(assert (=> b!4157311 (= res!1702704 (contains!9205 rules!4102 r2!597))))

(declare-fun b!4157312 () Bool)

(declare-fun res!1702701 () Bool)

(declare-fun e!2580069 () Bool)

(assert (=> b!4157312 (=> (not res!1702701) (not e!2580069))))

(assert (=> b!4157312 (= res!1702701 (< (getIndex!832 rules!4102 r1!615) (getIndex!832 rules!4102 r2!597)))))

(declare-fun tp!1268576 () Bool)

(declare-fun e!2580065 () Bool)

(declare-fun e!2580071 () Bool)

(declare-fun b!4157313 () Bool)

(assert (=> b!4157313 (= e!2580065 (and tp!1268576 (inv!59870 (tag!8354 r2!597)) (inv!59872 (transformation!7490 r2!597)) e!2580071))))

(declare-fun b!4157315 () Bool)

(declare-fun res!1702703 () Bool)

(assert (=> b!4157315 (=> (not res!1702703) (not e!2580068))))

(assert (=> b!4157315 (= res!1702703 (contains!9205 rules!4102 r1!615))))

(assert (=> b!4157316 (= e!2580060 (and tp!1268571 tp!1268577))))

(declare-fun e!2580063 () Bool)

(declare-fun tp!1268578 () Bool)

(declare-fun e!2580066 () Bool)

(declare-fun b!4157317 () Bool)

(assert (=> b!4157317 (= e!2580063 (and tp!1268578 (inv!59870 (tag!8354 r1!615)) (inv!59872 (transformation!7490 r1!615)) e!2580066))))

(declare-fun b!4157318 () Bool)

(declare-fun e!2580062 () Bool)

(assert (=> b!4157318 (= e!2580069 e!2580062)))

(declare-fun res!1702698 () Bool)

(assert (=> b!4157318 (=> (not res!1702698) (not e!2580062))))

(declare-fun lt!1481734 () Rule!14780)

(assert (=> b!4157318 (= res!1702698 (not (= lt!1481734 r1!615)))))

(declare-fun head!8812 (List!45462) Rule!14780)

(assert (=> b!4157318 (= lt!1481734 (head!8812 rules!4102))))

(declare-fun res!1702702 () Bool)

(assert (=> start!395910 (=> (not res!1702702) (not e!2580068))))

(declare-datatypes ((LexerInterface!7079 0))(
  ( (LexerInterfaceExt!7076 (__x!27658 Int)) (Lexer!7077) )
))
(declare-fun thiss!26968 () LexerInterface!7079)

(get-info :version)

(assert (=> start!395910 (= res!1702702 ((_ is Lexer!7077) thiss!26968))))

(assert (=> start!395910 e!2580068))

(assert (=> start!395910 true))

(assert (=> start!395910 e!2580064))

(assert (=> start!395910 e!2580063))

(assert (=> start!395910 e!2580065))

(declare-fun b!4157314 () Bool)

(assert (=> b!4157314 (= e!2580062 (not e!2580072))))

(declare-fun res!1702700 () Bool)

(assert (=> b!4157314 (=> res!1702700 e!2580072)))

(assert (=> b!4157314 (= res!1702700 (not (contains!9205 lt!1481735 r1!615)))))

(assert (=> b!4157314 (contains!9205 lt!1481735 r2!597)))

(declare-datatypes ((Unit!64497 0))(
  ( (Unit!64498) )
))
(declare-fun lt!1481737 () Unit!64497)

(declare-fun lemmaGetIndexBiggerAndHeadNotEqThenTailContains!14 (List!45462 Rule!14780 Rule!14780) Unit!64497)

(assert (=> b!4157314 (= lt!1481737 (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!14 rules!4102 r1!615 r2!597))))

(declare-datatypes ((List!45463 0))(
  ( (Nil!45339) (Cons!45339 (h!50759 String!52350) (t!343494 List!45463)) )
))
(declare-fun noDuplicateTag!3067 (LexerInterface!7079 List!45462 List!45463) Bool)

(assert (=> b!4157314 (noDuplicateTag!3067 thiss!26968 lt!1481735 Nil!45339)))

(declare-fun lt!1481738 () Unit!64497)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!42 (LexerInterface!7079 List!45463 List!45463 List!45462) Unit!64497)

(assert (=> b!4157314 (= lt!1481738 (lemmaNoDupTagThenAlsoWithSubListAcc!42 thiss!26968 (Cons!45339 (tag!8354 lt!1481734) Nil!45339) Nil!45339 lt!1481735))))

(declare-fun tail!6645 (List!45462) List!45462)

(assert (=> b!4157314 (= lt!1481735 (tail!6645 rules!4102))))

(assert (=> b!4157319 (= e!2580071 (and tp!1268573 tp!1268570))))

(declare-fun b!4157320 () Bool)

(declare-fun res!1702699 () Bool)

(assert (=> b!4157320 (=> res!1702699 e!2580072)))

(declare-fun lt!1481736 () List!45463)

(assert (=> b!4157320 (= res!1702699 (not (noDuplicateTag!3067 thiss!26968 lt!1481735 lt!1481736)))))

(assert (=> b!4157321 (= e!2580066 (and tp!1268569 tp!1268572))))

(declare-fun b!4157322 () Bool)

(assert (=> b!4157322 (= e!2580068 e!2580069)))

(declare-fun res!1702697 () Bool)

(assert (=> b!4157322 (=> (not res!1702697) (not e!2580069))))

(assert (=> b!4157322 (= res!1702697 (noDuplicateTag!3067 thiss!26968 rules!4102 lt!1481736))))

(declare-fun noDuplicateTag$default$2!72 (LexerInterface!7079) List!45463)

(assert (=> b!4157322 (= lt!1481736 (noDuplicateTag$default$2!72 thiss!26968))))

(assert (= (and start!395910 res!1702702) b!4157315))

(assert (= (and b!4157315 res!1702703) b!4157311))

(assert (= (and b!4157311 res!1702704) b!4157322))

(assert (= (and b!4157322 res!1702697) b!4157312))

(assert (= (and b!4157312 res!1702701) b!4157318))

(assert (= (and b!4157318 res!1702698) b!4157314))

(assert (= (and b!4157314 (not res!1702700)) b!4157320))

(assert (= (and b!4157320 (not res!1702699)) b!4157310))

(assert (= b!4157308 b!4157316))

(assert (= b!4157309 b!4157308))

(assert (= (and start!395910 ((_ is Cons!45338) rules!4102)) b!4157309))

(assert (= b!4157317 b!4157321))

(assert (= start!395910 b!4157317))

(assert (= b!4157313 b!4157319))

(assert (= start!395910 b!4157313))

(declare-fun m!4751261 () Bool)

(assert (=> b!4157320 m!4751261))

(declare-fun m!4751263 () Bool)

(assert (=> b!4157317 m!4751263))

(declare-fun m!4751265 () Bool)

(assert (=> b!4157317 m!4751265))

(declare-fun m!4751267 () Bool)

(assert (=> b!4157315 m!4751267))

(declare-fun m!4751269 () Bool)

(assert (=> b!4157311 m!4751269))

(declare-fun m!4751271 () Bool)

(assert (=> b!4157310 m!4751271))

(declare-fun m!4751273 () Bool)

(assert (=> b!4157310 m!4751273))

(declare-fun m!4751275 () Bool)

(assert (=> b!4157322 m!4751275))

(declare-fun m!4751277 () Bool)

(assert (=> b!4157322 m!4751277))

(declare-fun m!4751279 () Bool)

(assert (=> b!4157308 m!4751279))

(declare-fun m!4751281 () Bool)

(assert (=> b!4157308 m!4751281))

(declare-fun m!4751283 () Bool)

(assert (=> b!4157318 m!4751283))

(declare-fun m!4751285 () Bool)

(assert (=> b!4157314 m!4751285))

(declare-fun m!4751287 () Bool)

(assert (=> b!4157314 m!4751287))

(declare-fun m!4751289 () Bool)

(assert (=> b!4157314 m!4751289))

(declare-fun m!4751291 () Bool)

(assert (=> b!4157314 m!4751291))

(declare-fun m!4751293 () Bool)

(assert (=> b!4157314 m!4751293))

(declare-fun m!4751295 () Bool)

(assert (=> b!4157314 m!4751295))

(declare-fun m!4751297 () Bool)

(assert (=> b!4157312 m!4751297))

(declare-fun m!4751299 () Bool)

(assert (=> b!4157312 m!4751299))

(declare-fun m!4751301 () Bool)

(assert (=> b!4157313 m!4751301))

(declare-fun m!4751303 () Bool)

(assert (=> b!4157313 m!4751303))

(check-sat b_and!323903 (not b_next!120243) b_and!323901 b_and!323911 (not b_next!120247) b_and!323909 (not b_next!120253) b_and!323907 (not b_next!120249) (not b!4157310) (not b!4157311) (not b!4157308) (not b!4157318) (not b!4157317) b_and!323905 (not b!4157322) (not b!4157312) (not b!4157315) (not b_next!120245) (not b!4157309) (not b!4157313) (not b!4157314) (not b!4157320) (not b_next!120251))
(check-sat b_and!323903 (not b_next!120243) b_and!323905 b_and!323901 b_and!323911 (not b_next!120247) b_and!323909 (not b_next!120245) (not b_next!120253) b_and!323907 (not b_next!120249) (not b_next!120251))
(get-model)

(declare-fun d!1229244 () Bool)

(assert (=> d!1229244 (= (inv!59870 (tag!8354 (h!50758 rules!4102))) (= (mod (str.len (value!233965 (tag!8354 (h!50758 rules!4102)))) 2) 0))))

(assert (=> b!4157308 d!1229244))

(declare-fun d!1229246 () Bool)

(declare-fun res!1702719 () Bool)

(declare-fun e!2580075 () Bool)

(assert (=> d!1229246 (=> (not res!1702719) (not e!2580075))))

(declare-fun semiInverseModEq!3248 (Int Int) Bool)

(assert (=> d!1229246 (= res!1702719 (semiInverseModEq!3248 (toChars!10013 (transformation!7490 (h!50758 rules!4102))) (toValue!10154 (transformation!7490 (h!50758 rules!4102)))))))

(assert (=> d!1229246 (= (inv!59872 (transformation!7490 (h!50758 rules!4102))) e!2580075)))

(declare-fun b!4157325 () Bool)

(declare-fun equivClasses!3147 (Int Int) Bool)

(assert (=> b!4157325 (= e!2580075 (equivClasses!3147 (toChars!10013 (transformation!7490 (h!50758 rules!4102))) (toValue!10154 (transformation!7490 (h!50758 rules!4102)))))))

(assert (= (and d!1229246 res!1702719) b!4157325))

(declare-fun m!4751305 () Bool)

(assert (=> d!1229246 m!4751305))

(declare-fun m!4751307 () Bool)

(assert (=> b!4157325 m!4751307))

(assert (=> b!4157308 d!1229246))

(declare-fun d!1229250 () Bool)

(assert (=> d!1229250 (= (head!8812 rules!4102) (h!50758 rules!4102))))

(assert (=> b!4157318 d!1229250))

(declare-fun d!1229252 () Bool)

(assert (=> d!1229252 (= (inv!59870 (tag!8354 r1!615)) (= (mod (str.len (value!233965 (tag!8354 r1!615))) 2) 0))))

(assert (=> b!4157317 d!1229252))

(declare-fun d!1229254 () Bool)

(declare-fun res!1702720 () Bool)

(declare-fun e!2580076 () Bool)

(assert (=> d!1229254 (=> (not res!1702720) (not e!2580076))))

(assert (=> d!1229254 (= res!1702720 (semiInverseModEq!3248 (toChars!10013 (transformation!7490 r1!615)) (toValue!10154 (transformation!7490 r1!615))))))

(assert (=> d!1229254 (= (inv!59872 (transformation!7490 r1!615)) e!2580076)))

(declare-fun b!4157326 () Bool)

(assert (=> b!4157326 (= e!2580076 (equivClasses!3147 (toChars!10013 (transformation!7490 r1!615)) (toValue!10154 (transformation!7490 r1!615))))))

(assert (= (and d!1229254 res!1702720) b!4157326))

(declare-fun m!4751309 () Bool)

(assert (=> d!1229254 m!4751309))

(declare-fun m!4751311 () Bool)

(assert (=> b!4157326 m!4751311))

(assert (=> b!4157317 d!1229254))

(declare-fun d!1229256 () Bool)

(declare-fun lt!1481744 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7015 (List!45462) (InoxSet Rule!14780))

(assert (=> d!1229256 (= lt!1481744 (select (content!7015 rules!4102) r2!597))))

(declare-fun e!2580082 () Bool)

(assert (=> d!1229256 (= lt!1481744 e!2580082)))

(declare-fun res!1702726 () Bool)

(assert (=> d!1229256 (=> (not res!1702726) (not e!2580082))))

(assert (=> d!1229256 (= res!1702726 ((_ is Cons!45338) rules!4102))))

(assert (=> d!1229256 (= (contains!9205 rules!4102 r2!597) lt!1481744)))

(declare-fun b!4157331 () Bool)

(declare-fun e!2580081 () Bool)

(assert (=> b!4157331 (= e!2580082 e!2580081)))

(declare-fun res!1702725 () Bool)

(assert (=> b!4157331 (=> res!1702725 e!2580081)))

(assert (=> b!4157331 (= res!1702725 (= (h!50758 rules!4102) r2!597))))

(declare-fun b!4157332 () Bool)

(assert (=> b!4157332 (= e!2580081 (contains!9205 (t!343493 rules!4102) r2!597))))

(assert (= (and d!1229256 res!1702726) b!4157331))

(assert (= (and b!4157331 (not res!1702725)) b!4157332))

(declare-fun m!4751317 () Bool)

(assert (=> d!1229256 m!4751317))

(declare-fun m!4751319 () Bool)

(assert (=> d!1229256 m!4751319))

(declare-fun m!4751321 () Bool)

(assert (=> b!4157332 m!4751321))

(assert (=> b!4157311 d!1229256))

(declare-fun b!4157354 () Bool)

(declare-fun e!2580100 () Int)

(declare-fun e!2580101 () Int)

(assert (=> b!4157354 (= e!2580100 e!2580101)))

(declare-fun c!711515 () Bool)

(assert (=> b!4157354 (= c!711515 (and ((_ is Cons!45338) lt!1481735) (not (= (h!50758 lt!1481735) r1!615))))))

(declare-fun b!4157355 () Bool)

(assert (=> b!4157355 (= e!2580101 (+ 1 (getIndex!832 (t!343493 lt!1481735) r1!615)))))

(declare-fun b!4157353 () Bool)

(assert (=> b!4157353 (= e!2580100 0)))

(declare-fun d!1229260 () Bool)

(declare-fun lt!1481751 () Int)

(assert (=> d!1229260 (>= lt!1481751 0)))

(assert (=> d!1229260 (= lt!1481751 e!2580100)))

(declare-fun c!711514 () Bool)

(assert (=> d!1229260 (= c!711514 (and ((_ is Cons!45338) lt!1481735) (= (h!50758 lt!1481735) r1!615)))))

(assert (=> d!1229260 (contains!9205 lt!1481735 r1!615)))

(assert (=> d!1229260 (= (getIndex!832 lt!1481735 r1!615) lt!1481751)))

(declare-fun b!4157356 () Bool)

(assert (=> b!4157356 (= e!2580101 (- 1))))

(assert (= (and d!1229260 c!711514) b!4157353))

(assert (= (and d!1229260 (not c!711514)) b!4157354))

(assert (= (and b!4157354 c!711515) b!4157355))

(assert (= (and b!4157354 (not c!711515)) b!4157356))

(declare-fun m!4751333 () Bool)

(assert (=> b!4157355 m!4751333))

(assert (=> d!1229260 m!4751293))

(assert (=> b!4157310 d!1229260))

(declare-fun b!4157358 () Bool)

(declare-fun e!2580102 () Int)

(declare-fun e!2580103 () Int)

(assert (=> b!4157358 (= e!2580102 e!2580103)))

(declare-fun c!711517 () Bool)

(assert (=> b!4157358 (= c!711517 (and ((_ is Cons!45338) lt!1481735) (not (= (h!50758 lt!1481735) r2!597))))))

(declare-fun b!4157359 () Bool)

(assert (=> b!4157359 (= e!2580103 (+ 1 (getIndex!832 (t!343493 lt!1481735) r2!597)))))

(declare-fun b!4157357 () Bool)

(assert (=> b!4157357 (= e!2580102 0)))

(declare-fun d!1229266 () Bool)

(declare-fun lt!1481752 () Int)

(assert (=> d!1229266 (>= lt!1481752 0)))

(assert (=> d!1229266 (= lt!1481752 e!2580102)))

(declare-fun c!711516 () Bool)

(assert (=> d!1229266 (= c!711516 (and ((_ is Cons!45338) lt!1481735) (= (h!50758 lt!1481735) r2!597)))))

(assert (=> d!1229266 (contains!9205 lt!1481735 r2!597)))

(assert (=> d!1229266 (= (getIndex!832 lt!1481735 r2!597) lt!1481752)))

(declare-fun b!4157360 () Bool)

(assert (=> b!4157360 (= e!2580103 (- 1))))

(assert (= (and d!1229266 c!711516) b!4157357))

(assert (= (and d!1229266 (not c!711516)) b!4157358))

(assert (= (and b!4157358 c!711517) b!4157359))

(assert (= (and b!4157358 (not c!711517)) b!4157360))

(declare-fun m!4751335 () Bool)

(assert (=> b!4157359 m!4751335))

(assert (=> d!1229266 m!4751287))

(assert (=> b!4157310 d!1229266))

(declare-fun d!1229268 () Bool)

(declare-fun res!1702747 () Bool)

(declare-fun e!2580112 () Bool)

(assert (=> d!1229268 (=> res!1702747 e!2580112)))

(assert (=> d!1229268 (= res!1702747 ((_ is Nil!45338) lt!1481735))))

(assert (=> d!1229268 (= (noDuplicateTag!3067 thiss!26968 lt!1481735 lt!1481736) e!2580112)))

(declare-fun b!4157369 () Bool)

(declare-fun e!2580113 () Bool)

(assert (=> b!4157369 (= e!2580112 e!2580113)))

(declare-fun res!1702748 () Bool)

(assert (=> b!4157369 (=> (not res!1702748) (not e!2580113))))

(declare-fun contains!9207 (List!45463 String!52350) Bool)

(assert (=> b!4157369 (= res!1702748 (not (contains!9207 lt!1481736 (tag!8354 (h!50758 lt!1481735)))))))

(declare-fun b!4157370 () Bool)

(assert (=> b!4157370 (= e!2580113 (noDuplicateTag!3067 thiss!26968 (t!343493 lt!1481735) (Cons!45339 (tag!8354 (h!50758 lt!1481735)) lt!1481736)))))

(assert (= (and d!1229268 (not res!1702747)) b!4157369))

(assert (= (and b!4157369 res!1702748) b!4157370))

(declare-fun m!4751341 () Bool)

(assert (=> b!4157369 m!4751341))

(declare-fun m!4751343 () Bool)

(assert (=> b!4157370 m!4751343))

(assert (=> b!4157320 d!1229268))

(declare-fun d!1229272 () Bool)

(assert (=> d!1229272 (= (inv!59870 (tag!8354 r2!597)) (= (mod (str.len (value!233965 (tag!8354 r2!597))) 2) 0))))

(assert (=> b!4157313 d!1229272))

(declare-fun d!1229274 () Bool)

(declare-fun res!1702749 () Bool)

(declare-fun e!2580114 () Bool)

(assert (=> d!1229274 (=> (not res!1702749) (not e!2580114))))

(assert (=> d!1229274 (= res!1702749 (semiInverseModEq!3248 (toChars!10013 (transformation!7490 r2!597)) (toValue!10154 (transformation!7490 r2!597))))))

(assert (=> d!1229274 (= (inv!59872 (transformation!7490 r2!597)) e!2580114)))

(declare-fun b!4157371 () Bool)

(assert (=> b!4157371 (= e!2580114 (equivClasses!3147 (toChars!10013 (transformation!7490 r2!597)) (toValue!10154 (transformation!7490 r2!597))))))

(assert (= (and d!1229274 res!1702749) b!4157371))

(declare-fun m!4751345 () Bool)

(assert (=> d!1229274 m!4751345))

(declare-fun m!4751347 () Bool)

(assert (=> b!4157371 m!4751347))

(assert (=> b!4157313 d!1229274))

(declare-fun b!4157374 () Bool)

(declare-fun e!2580116 () Int)

(declare-fun e!2580117 () Int)

(assert (=> b!4157374 (= e!2580116 e!2580117)))

(declare-fun c!711519 () Bool)

(assert (=> b!4157374 (= c!711519 (and ((_ is Cons!45338) rules!4102) (not (= (h!50758 rules!4102) r1!615))))))

(declare-fun b!4157375 () Bool)

(assert (=> b!4157375 (= e!2580117 (+ 1 (getIndex!832 (t!343493 rules!4102) r1!615)))))

(declare-fun b!4157373 () Bool)

(assert (=> b!4157373 (= e!2580116 0)))

(declare-fun d!1229276 () Bool)

(declare-fun lt!1481756 () Int)

(assert (=> d!1229276 (>= lt!1481756 0)))

(assert (=> d!1229276 (= lt!1481756 e!2580116)))

(declare-fun c!711518 () Bool)

(assert (=> d!1229276 (= c!711518 (and ((_ is Cons!45338) rules!4102) (= (h!50758 rules!4102) r1!615)))))

(assert (=> d!1229276 (contains!9205 rules!4102 r1!615)))

(assert (=> d!1229276 (= (getIndex!832 rules!4102 r1!615) lt!1481756)))

(declare-fun b!4157376 () Bool)

(assert (=> b!4157376 (= e!2580117 (- 1))))

(assert (= (and d!1229276 c!711518) b!4157373))

(assert (= (and d!1229276 (not c!711518)) b!4157374))

(assert (= (and b!4157374 c!711519) b!4157375))

(assert (= (and b!4157374 (not c!711519)) b!4157376))

(declare-fun m!4751353 () Bool)

(assert (=> b!4157375 m!4751353))

(assert (=> d!1229276 m!4751267))

(assert (=> b!4157312 d!1229276))

(declare-fun b!4157378 () Bool)

(declare-fun e!2580118 () Int)

(declare-fun e!2580119 () Int)

(assert (=> b!4157378 (= e!2580118 e!2580119)))

(declare-fun c!711521 () Bool)

(assert (=> b!4157378 (= c!711521 (and ((_ is Cons!45338) rules!4102) (not (= (h!50758 rules!4102) r2!597))))))

(declare-fun b!4157379 () Bool)

(assert (=> b!4157379 (= e!2580119 (+ 1 (getIndex!832 (t!343493 rules!4102) r2!597)))))

(declare-fun b!4157377 () Bool)

(assert (=> b!4157377 (= e!2580118 0)))

(declare-fun d!1229280 () Bool)

(declare-fun lt!1481757 () Int)

(assert (=> d!1229280 (>= lt!1481757 0)))

(assert (=> d!1229280 (= lt!1481757 e!2580118)))

(declare-fun c!711520 () Bool)

(assert (=> d!1229280 (= c!711520 (and ((_ is Cons!45338) rules!4102) (= (h!50758 rules!4102) r2!597)))))

(assert (=> d!1229280 (contains!9205 rules!4102 r2!597)))

(assert (=> d!1229280 (= (getIndex!832 rules!4102 r2!597) lt!1481757)))

(declare-fun b!4157380 () Bool)

(assert (=> b!4157380 (= e!2580119 (- 1))))

(assert (= (and d!1229280 c!711520) b!4157377))

(assert (= (and d!1229280 (not c!711520)) b!4157378))

(assert (= (and b!4157378 c!711521) b!4157379))

(assert (= (and b!4157378 (not c!711521)) b!4157380))

(declare-fun m!4751355 () Bool)

(assert (=> b!4157379 m!4751355))

(assert (=> d!1229280 m!4751269))

(assert (=> b!4157312 d!1229280))

(declare-fun d!1229282 () Bool)

(declare-fun res!1702751 () Bool)

(declare-fun e!2580120 () Bool)

(assert (=> d!1229282 (=> res!1702751 e!2580120)))

(assert (=> d!1229282 (= res!1702751 ((_ is Nil!45338) rules!4102))))

(assert (=> d!1229282 (= (noDuplicateTag!3067 thiss!26968 rules!4102 lt!1481736) e!2580120)))

(declare-fun b!4157381 () Bool)

(declare-fun e!2580121 () Bool)

(assert (=> b!4157381 (= e!2580120 e!2580121)))

(declare-fun res!1702752 () Bool)

(assert (=> b!4157381 (=> (not res!1702752) (not e!2580121))))

(assert (=> b!4157381 (= res!1702752 (not (contains!9207 lt!1481736 (tag!8354 (h!50758 rules!4102)))))))

(declare-fun b!4157382 () Bool)

(assert (=> b!4157382 (= e!2580121 (noDuplicateTag!3067 thiss!26968 (t!343493 rules!4102) (Cons!45339 (tag!8354 (h!50758 rules!4102)) lt!1481736)))))

(assert (= (and d!1229282 (not res!1702751)) b!4157381))

(assert (= (and b!4157381 res!1702752) b!4157382))

(declare-fun m!4751357 () Bool)

(assert (=> b!4157381 m!4751357))

(declare-fun m!4751361 () Bool)

(assert (=> b!4157382 m!4751361))

(assert (=> b!4157322 d!1229282))

(declare-fun d!1229286 () Bool)

(assert (=> d!1229286 (= (noDuplicateTag$default$2!72 thiss!26968) Nil!45339)))

(assert (=> b!4157322 d!1229286))

(declare-fun d!1229290 () Bool)

(declare-fun lt!1481759 () Bool)

(assert (=> d!1229290 (= lt!1481759 (select (content!7015 rules!4102) r1!615))))

(declare-fun e!2580127 () Bool)

(assert (=> d!1229290 (= lt!1481759 e!2580127)))

(declare-fun res!1702758 () Bool)

(assert (=> d!1229290 (=> (not res!1702758) (not e!2580127))))

(assert (=> d!1229290 (= res!1702758 ((_ is Cons!45338) rules!4102))))

(assert (=> d!1229290 (= (contains!9205 rules!4102 r1!615) lt!1481759)))

(declare-fun b!4157387 () Bool)

(declare-fun e!2580126 () Bool)

(assert (=> b!4157387 (= e!2580127 e!2580126)))

(declare-fun res!1702757 () Bool)

(assert (=> b!4157387 (=> res!1702757 e!2580126)))

(assert (=> b!4157387 (= res!1702757 (= (h!50758 rules!4102) r1!615))))

(declare-fun b!4157388 () Bool)

(assert (=> b!4157388 (= e!2580126 (contains!9205 (t!343493 rules!4102) r1!615))))

(assert (= (and d!1229290 res!1702758) b!4157387))

(assert (= (and b!4157387 (not res!1702757)) b!4157388))

(assert (=> d!1229290 m!4751317))

(declare-fun m!4751371 () Bool)

(assert (=> d!1229290 m!4751371))

(declare-fun m!4751373 () Bool)

(assert (=> b!4157388 m!4751373))

(assert (=> b!4157315 d!1229290))

(declare-fun d!1229294 () Bool)

(declare-fun lt!1481760 () Bool)

(assert (=> d!1229294 (= lt!1481760 (select (content!7015 lt!1481735) r2!597))))

(declare-fun e!2580129 () Bool)

(assert (=> d!1229294 (= lt!1481760 e!2580129)))

(declare-fun res!1702760 () Bool)

(assert (=> d!1229294 (=> (not res!1702760) (not e!2580129))))

(assert (=> d!1229294 (= res!1702760 ((_ is Cons!45338) lt!1481735))))

(assert (=> d!1229294 (= (contains!9205 lt!1481735 r2!597) lt!1481760)))

(declare-fun b!4157389 () Bool)

(declare-fun e!2580128 () Bool)

(assert (=> b!4157389 (= e!2580129 e!2580128)))

(declare-fun res!1702759 () Bool)

(assert (=> b!4157389 (=> res!1702759 e!2580128)))

(assert (=> b!4157389 (= res!1702759 (= (h!50758 lt!1481735) r2!597))))

(declare-fun b!4157390 () Bool)

(assert (=> b!4157390 (= e!2580128 (contains!9205 (t!343493 lt!1481735) r2!597))))

(assert (= (and d!1229294 res!1702760) b!4157389))

(assert (= (and b!4157389 (not res!1702759)) b!4157390))

(declare-fun m!4751375 () Bool)

(assert (=> d!1229294 m!4751375))

(declare-fun m!4751377 () Bool)

(assert (=> d!1229294 m!4751377))

(declare-fun m!4751379 () Bool)

(assert (=> b!4157390 m!4751379))

(assert (=> b!4157314 d!1229294))

(declare-fun d!1229298 () Bool)

(declare-fun lt!1481761 () Bool)

(assert (=> d!1229298 (= lt!1481761 (select (content!7015 lt!1481735) r1!615))))

(declare-fun e!2580131 () Bool)

(assert (=> d!1229298 (= lt!1481761 e!2580131)))

(declare-fun res!1702762 () Bool)

(assert (=> d!1229298 (=> (not res!1702762) (not e!2580131))))

(assert (=> d!1229298 (= res!1702762 ((_ is Cons!45338) lt!1481735))))

(assert (=> d!1229298 (= (contains!9205 lt!1481735 r1!615) lt!1481761)))

(declare-fun b!4157391 () Bool)

(declare-fun e!2580130 () Bool)

(assert (=> b!4157391 (= e!2580131 e!2580130)))

(declare-fun res!1702761 () Bool)

(assert (=> b!4157391 (=> res!1702761 e!2580130)))

(assert (=> b!4157391 (= res!1702761 (= (h!50758 lt!1481735) r1!615))))

(declare-fun b!4157392 () Bool)

(assert (=> b!4157392 (= e!2580130 (contains!9205 (t!343493 lt!1481735) r1!615))))

(assert (= (and d!1229298 res!1702762) b!4157391))

(assert (= (and b!4157391 (not res!1702761)) b!4157392))

(assert (=> d!1229298 m!4751375))

(declare-fun m!4751381 () Bool)

(assert (=> d!1229298 m!4751381))

(declare-fun m!4751383 () Bool)

(assert (=> b!4157392 m!4751383))

(assert (=> b!4157314 d!1229298))

(declare-fun d!1229302 () Bool)

(assert (=> d!1229302 (noDuplicateTag!3067 thiss!26968 lt!1481735 Nil!45339)))

(declare-fun lt!1481764 () Unit!64497)

(declare-fun choose!25452 (LexerInterface!7079 List!45463 List!45463 List!45462) Unit!64497)

(assert (=> d!1229302 (= lt!1481764 (choose!25452 thiss!26968 (Cons!45339 (tag!8354 lt!1481734) Nil!45339) Nil!45339 lt!1481735))))

(declare-fun subseq!567 (List!45463 List!45463) Bool)

(assert (=> d!1229302 (subseq!567 Nil!45339 (Cons!45339 (tag!8354 lt!1481734) Nil!45339))))

(assert (=> d!1229302 (= (lemmaNoDupTagThenAlsoWithSubListAcc!42 thiss!26968 (Cons!45339 (tag!8354 lt!1481734) Nil!45339) Nil!45339 lt!1481735) lt!1481764)))

(declare-fun bs!595545 () Bool)

(assert (= bs!595545 d!1229302))

(assert (=> bs!595545 m!4751295))

(declare-fun m!4751385 () Bool)

(assert (=> bs!595545 m!4751385))

(declare-fun m!4751387 () Bool)

(assert (=> bs!595545 m!4751387))

(assert (=> b!4157314 d!1229302))

(declare-fun d!1229304 () Bool)

(assert (=> d!1229304 (= (tail!6645 rules!4102) (t!343493 rules!4102))))

(assert (=> b!4157314 d!1229304))

(declare-fun d!1229306 () Bool)

(assert (=> d!1229306 (contains!9205 (tail!6645 rules!4102) r2!597)))

(declare-fun lt!1481767 () Unit!64497)

(declare-fun choose!25453 (List!45462 Rule!14780 Rule!14780) Unit!64497)

(assert (=> d!1229306 (= lt!1481767 (choose!25453 rules!4102 r1!615 r2!597))))

(declare-fun e!2580137 () Bool)

(assert (=> d!1229306 e!2580137))

(declare-fun res!1702768 () Bool)

(assert (=> d!1229306 (=> (not res!1702768) (not e!2580137))))

(assert (=> d!1229306 (= res!1702768 (contains!9205 rules!4102 r1!615))))

(assert (=> d!1229306 (= (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!14 rules!4102 r1!615 r2!597) lt!1481767)))

(declare-fun b!4157398 () Bool)

(assert (=> b!4157398 (= e!2580137 (contains!9205 rules!4102 r2!597))))

(assert (= (and d!1229306 res!1702768) b!4157398))

(assert (=> d!1229306 m!4751291))

(assert (=> d!1229306 m!4751291))

(declare-fun m!4751393 () Bool)

(assert (=> d!1229306 m!4751393))

(declare-fun m!4751395 () Bool)

(assert (=> d!1229306 m!4751395))

(assert (=> d!1229306 m!4751267))

(assert (=> b!4157398 m!4751269))

(assert (=> b!4157314 d!1229306))

(declare-fun d!1229310 () Bool)

(declare-fun res!1702769 () Bool)

(declare-fun e!2580143 () Bool)

(assert (=> d!1229310 (=> res!1702769 e!2580143)))

(assert (=> d!1229310 (= res!1702769 ((_ is Nil!45338) lt!1481735))))

(assert (=> d!1229310 (= (noDuplicateTag!3067 thiss!26968 lt!1481735 Nil!45339) e!2580143)))

(declare-fun b!4157407 () Bool)

(declare-fun e!2580144 () Bool)

(assert (=> b!4157407 (= e!2580143 e!2580144)))

(declare-fun res!1702770 () Bool)

(assert (=> b!4157407 (=> (not res!1702770) (not e!2580144))))

(assert (=> b!4157407 (= res!1702770 (not (contains!9207 Nil!45339 (tag!8354 (h!50758 lt!1481735)))))))

(declare-fun b!4157408 () Bool)

(assert (=> b!4157408 (= e!2580144 (noDuplicateTag!3067 thiss!26968 (t!343493 lt!1481735) (Cons!45339 (tag!8354 (h!50758 lt!1481735)) Nil!45339)))))

(assert (= (and d!1229310 (not res!1702769)) b!4157407))

(assert (= (and b!4157407 res!1702770) b!4157408))

(declare-fun m!4751397 () Bool)

(assert (=> b!4157407 m!4751397))

(declare-fun m!4751399 () Bool)

(assert (=> b!4157408 m!4751399))

(assert (=> b!4157314 d!1229310))

(declare-fun b!4157426 () Bool)

(declare-fun e!2580149 () Bool)

(declare-fun tp!1268589 () Bool)

(declare-fun tp!1268591 () Bool)

(assert (=> b!4157426 (= e!2580149 (and tp!1268589 tp!1268591))))

(assert (=> b!4157308 (= tp!1268574 e!2580149)))

(declare-fun b!4157423 () Bool)

(declare-fun tp_is_empty!21663 () Bool)

(assert (=> b!4157423 (= e!2580149 tp_is_empty!21663)))

(declare-fun b!4157424 () Bool)

(declare-fun tp!1268592 () Bool)

(declare-fun tp!1268590 () Bool)

(assert (=> b!4157424 (= e!2580149 (and tp!1268592 tp!1268590))))

(declare-fun b!4157425 () Bool)

(declare-fun tp!1268593 () Bool)

(assert (=> b!4157425 (= e!2580149 tp!1268593)))

(assert (= (and b!4157308 ((_ is ElementMatch!12395) (regex!7490 (h!50758 rules!4102)))) b!4157423))

(assert (= (and b!4157308 ((_ is Concat!20116) (regex!7490 (h!50758 rules!4102)))) b!4157424))

(assert (= (and b!4157308 ((_ is Star!12395) (regex!7490 (h!50758 rules!4102)))) b!4157425))

(assert (= (and b!4157308 ((_ is Union!12395) (regex!7490 (h!50758 rules!4102)))) b!4157426))

(declare-fun b!4157430 () Bool)

(declare-fun e!2580150 () Bool)

(declare-fun tp!1268594 () Bool)

(declare-fun tp!1268596 () Bool)

(assert (=> b!4157430 (= e!2580150 (and tp!1268594 tp!1268596))))

(assert (=> b!4157313 (= tp!1268576 e!2580150)))

(declare-fun b!4157427 () Bool)

(assert (=> b!4157427 (= e!2580150 tp_is_empty!21663)))

(declare-fun b!4157428 () Bool)

(declare-fun tp!1268597 () Bool)

(declare-fun tp!1268595 () Bool)

(assert (=> b!4157428 (= e!2580150 (and tp!1268597 tp!1268595))))

(declare-fun b!4157429 () Bool)

(declare-fun tp!1268598 () Bool)

(assert (=> b!4157429 (= e!2580150 tp!1268598)))

(assert (= (and b!4157313 ((_ is ElementMatch!12395) (regex!7490 r2!597))) b!4157427))

(assert (= (and b!4157313 ((_ is Concat!20116) (regex!7490 r2!597))) b!4157428))

(assert (= (and b!4157313 ((_ is Star!12395) (regex!7490 r2!597))) b!4157429))

(assert (= (and b!4157313 ((_ is Union!12395) (regex!7490 r2!597))) b!4157430))

(declare-fun b!4157438 () Bool)

(declare-fun e!2580153 () Bool)

(declare-fun tp!1268599 () Bool)

(declare-fun tp!1268601 () Bool)

(assert (=> b!4157438 (= e!2580153 (and tp!1268599 tp!1268601))))

(assert (=> b!4157317 (= tp!1268578 e!2580153)))

(declare-fun b!4157435 () Bool)

(assert (=> b!4157435 (= e!2580153 tp_is_empty!21663)))

(declare-fun b!4157436 () Bool)

(declare-fun tp!1268602 () Bool)

(declare-fun tp!1268600 () Bool)

(assert (=> b!4157436 (= e!2580153 (and tp!1268602 tp!1268600))))

(declare-fun b!4157437 () Bool)

(declare-fun tp!1268603 () Bool)

(assert (=> b!4157437 (= e!2580153 tp!1268603)))

(assert (= (and b!4157317 ((_ is ElementMatch!12395) (regex!7490 r1!615))) b!4157435))

(assert (= (and b!4157317 ((_ is Concat!20116) (regex!7490 r1!615))) b!4157436))

(assert (= (and b!4157317 ((_ is Star!12395) (regex!7490 r1!615))) b!4157437))

(assert (= (and b!4157317 ((_ is Union!12395) (regex!7490 r1!615))) b!4157438))

(declare-fun b!4157460 () Bool)

(declare-fun b_free!119551 () Bool)

(declare-fun b_next!120255 () Bool)

(assert (=> b!4157460 (= b_free!119551 (not b_next!120255))))

(declare-fun tp!1268615 () Bool)

(declare-fun b_and!323913 () Bool)

(assert (=> b!4157460 (= tp!1268615 b_and!323913)))

(declare-fun b_free!119553 () Bool)

(declare-fun b_next!120257 () Bool)

(assert (=> b!4157460 (= b_free!119553 (not b_next!120257))))

(declare-fun tp!1268612 () Bool)

(declare-fun b_and!323915 () Bool)

(assert (=> b!4157460 (= tp!1268612 b_and!323915)))

(declare-fun e!2580172 () Bool)

(assert (=> b!4157460 (= e!2580172 (and tp!1268615 tp!1268612))))

(declare-fun b!4157459 () Bool)

(declare-fun e!2580171 () Bool)

(declare-fun tp!1268613 () Bool)

(assert (=> b!4157459 (= e!2580171 (and tp!1268613 (inv!59870 (tag!8354 (h!50758 (t!343493 rules!4102)))) (inv!59872 (transformation!7490 (h!50758 (t!343493 rules!4102)))) e!2580172))))

(declare-fun b!4157458 () Bool)

(declare-fun e!2580169 () Bool)

(declare-fun tp!1268614 () Bool)

(assert (=> b!4157458 (= e!2580169 (and e!2580171 tp!1268614))))

(assert (=> b!4157309 (= tp!1268575 e!2580169)))

(assert (= b!4157459 b!4157460))

(assert (= b!4157458 b!4157459))

(assert (= (and b!4157309 ((_ is Cons!45338) (t!343493 rules!4102))) b!4157458))

(declare-fun m!4751417 () Bool)

(assert (=> b!4157459 m!4751417))

(declare-fun m!4751423 () Bool)

(assert (=> b!4157459 m!4751423))

(check-sat (not d!1229274) (not b!4157436) (not b!4157398) (not d!1229280) (not b_next!120245) (not b!4157425) (not d!1229276) (not b!4157382) (not b!4157375) (not b!4157381) (not b_next!120257) (not b!4157392) (not d!1229298) b_and!323903 (not b!4157359) (not b!4157332) (not b!4157424) (not b!4157388) (not b_next!120243) (not b!4157326) (not b!4157355) b_and!323913 (not d!1229306) (not d!1229256) (not d!1229294) b_and!323905 b_and!323901 (not b!4157430) b_and!323915 (not b!4157426) tp_is_empty!21663 b_and!323911 (not b!4157458) (not b_next!120247) (not d!1229260) (not b!4157438) (not b!4157407) b_and!323909 (not b!4157371) (not b!4157429) (not b!4157325) (not d!1229290) (not b!4157408) (not b!4157370) (not b_next!120253) b_and!323907 (not b!4157390) (not d!1229254) (not b_next!120249) (not b!4157379) (not b!4157428) (not b!4157437) (not b!4157459) (not d!1229246) (not b_next!120255) (not b_next!120251) (not d!1229266) (not d!1229302) (not b!4157369))
(check-sat (not b_next!120257) b_and!323903 (not b_next!120243) b_and!323913 b_and!323905 b_and!323901 b_and!323915 b_and!323911 (not b_next!120247) b_and!323909 (not b_next!120245) (not b_next!120253) b_and!323907 (not b_next!120249) (not b_next!120255) (not b_next!120251))
