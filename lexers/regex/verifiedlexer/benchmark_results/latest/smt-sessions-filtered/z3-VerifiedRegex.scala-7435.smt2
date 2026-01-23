; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395342 () Bool)

(assert start!395342)

(declare-fun b!4153308 () Bool)

(declare-fun b_free!118851 () Bool)

(declare-fun b_next!119555 () Bool)

(assert (=> b!4153308 (= b_free!118851 (not b_next!119555))))

(declare-fun tp!1266096 () Bool)

(declare-fun b_and!323213 () Bool)

(assert (=> b!4153308 (= tp!1266096 b_and!323213)))

(declare-fun b_free!118853 () Bool)

(declare-fun b_next!119557 () Bool)

(assert (=> b!4153308 (= b_free!118853 (not b_next!119557))))

(declare-fun tp!1266100 () Bool)

(declare-fun b_and!323215 () Bool)

(assert (=> b!4153308 (= tp!1266100 b_and!323215)))

(declare-fun b!4153305 () Bool)

(declare-fun b_free!118855 () Bool)

(declare-fun b_next!119559 () Bool)

(assert (=> b!4153305 (= b_free!118855 (not b_next!119559))))

(declare-fun tp!1266095 () Bool)

(declare-fun b_and!323217 () Bool)

(assert (=> b!4153305 (= tp!1266095 b_and!323217)))

(declare-fun b_free!118857 () Bool)

(declare-fun b_next!119561 () Bool)

(assert (=> b!4153305 (= b_free!118857 (not b_next!119561))))

(declare-fun tp!1266101 () Bool)

(declare-fun b_and!323219 () Bool)

(assert (=> b!4153305 (= tp!1266101 b_and!323219)))

(declare-fun b!4153309 () Bool)

(declare-fun b_free!118859 () Bool)

(declare-fun b_next!119563 () Bool)

(assert (=> b!4153309 (= b_free!118859 (not b_next!119563))))

(declare-fun tp!1266102 () Bool)

(declare-fun b_and!323221 () Bool)

(assert (=> b!4153309 (= tp!1266102 b_and!323221)))

(declare-fun b_free!118861 () Bool)

(declare-fun b_next!119565 () Bool)

(assert (=> b!4153309 (= b_free!118861 (not b_next!119565))))

(declare-fun tp!1266093 () Bool)

(declare-fun b_and!323223 () Bool)

(assert (=> b!4153309 (= tp!1266093 b_and!323223)))

(declare-fun e!2576918 () Bool)

(assert (=> b!4153305 (= e!2576918 (and tp!1266095 tp!1266101))))

(declare-fun b!4153306 () Bool)

(declare-fun res!1700954 () Bool)

(declare-fun e!2576910 () Bool)

(assert (=> b!4153306 (=> (not res!1700954) (not e!2576910))))

(declare-datatypes ((List!45268 0))(
  ( (Nil!45144) (Cons!45144 (h!50564 (_ BitVec 16)) (t!343299 List!45268)) )
))
(declare-datatypes ((TokenValue!7672 0))(
  ( (FloatLiteralValue!15344 (text!54149 List!45268)) (TokenValueExt!7671 (__x!27561 Int)) (Broken!38360 (value!232620 List!45268)) (Object!7795) (End!7672) (Def!7672) (Underscore!7672) (Match!7672) (Else!7672) (Error!7672) (Case!7672) (If!7672) (Extends!7672) (Abstract!7672) (Class!7672) (Val!7672) (DelimiterValue!15344 (del!7732 List!45268)) (KeywordValue!7678 (value!232621 List!45268)) (CommentValue!15344 (value!232622 List!45268)) (WhitespaceValue!15344 (value!232623 List!45268)) (IndentationValue!7672 (value!232624 List!45268)) (String!52109) (Int32!7672) (Broken!38361 (value!232625 List!45268)) (Boolean!7673) (Unit!64398) (OperatorValue!7675 (op!7732 List!45268)) (IdentifierValue!15344 (value!232626 List!45268)) (IdentifierValue!15345 (value!232627 List!45268)) (WhitespaceValue!15345 (value!232628 List!45268)) (True!15344) (False!15344) (Broken!38362 (value!232629 List!45268)) (Broken!38363 (value!232630 List!45268)) (True!15345) (RightBrace!7672) (RightBracket!7672) (Colon!7672) (Null!7672) (Comma!7672) (LeftBracket!7672) (False!15345) (LeftBrace!7672) (ImaginaryLiteralValue!7672 (text!54150 List!45268)) (StringLiteralValue!23016 (value!232631 List!45268)) (EOFValue!7672 (value!232632 List!45268)) (IdentValue!7672 (value!232633 List!45268)) (DelimiterValue!15345 (value!232634 List!45268)) (DedentValue!7672 (value!232635 List!45268)) (NewLineValue!7672 (value!232636 List!45268)) (IntegerValue!23016 (value!232637 (_ BitVec 32)) (text!54151 List!45268)) (IntegerValue!23017 (value!232638 Int) (text!54152 List!45268)) (Times!7672) (Or!7672) (Equal!7672) (Minus!7672) (Broken!38364 (value!232639 List!45268)) (And!7672) (Div!7672) (LessEqual!7672) (Mod!7672) (Concat!20019) (Not!7672) (Plus!7672) (SpaceValue!7672 (value!232640 List!45268)) (IntegerValue!23018 (value!232641 Int) (text!54153 List!45268)) (StringLiteralValue!23017 (text!54154 List!45268)) (FloatLiteralValue!15345 (text!54155 List!45268)) (BytesLiteralValue!7672 (value!232642 List!45268)) (CommentValue!15345 (value!232643 List!45268)) (StringLiteralValue!23018 (value!232644 List!45268)) (ErrorTokenValue!7672 (msg!7733 List!45268)) )
))
(declare-datatypes ((C!24880 0))(
  ( (C!24881 (val!14550 Int)) )
))
(declare-datatypes ((List!45269 0))(
  ( (Nil!45145) (Cons!45145 (h!50565 C!24880) (t!343300 List!45269)) )
))
(declare-datatypes ((IArray!27311 0))(
  ( (IArray!27312 (innerList!13713 List!45269)) )
))
(declare-datatypes ((Conc!13653 0))(
  ( (Node!13653 (left!33796 Conc!13653) (right!34126 Conc!13653) (csize!27536 Int) (cheight!13864 Int)) (Leaf!21089 (xs!16959 IArray!27311) (csize!27537 Int)) (Empty!13653) )
))
(declare-datatypes ((Regex!12347 0))(
  ( (ElementMatch!12347 (c!711182 C!24880)) (Concat!20020 (regOne!25206 Regex!12347) (regTwo!25206 Regex!12347)) (EmptyExpr!12347) (Star!12347 (reg!12676 Regex!12347)) (EmptyLang!12347) (Union!12347 (regOne!25207 Regex!12347) (regTwo!25207 Regex!12347)) )
))
(declare-datatypes ((String!52110 0))(
  ( (String!52111 (value!232645 String)) )
))
(declare-datatypes ((BalanceConc!26900 0))(
  ( (BalanceConc!26901 (c!711183 Conc!13653)) )
))
(declare-datatypes ((TokenValueInjection!14772 0))(
  ( (TokenValueInjection!14773 (toValue!10106 Int) (toChars!9965 Int)) )
))
(declare-datatypes ((Rule!14684 0))(
  ( (Rule!14685 (regex!7442 Regex!12347) (tag!8302 String!52110) (isSeparator!7442 Bool) (transformation!7442 TokenValueInjection!14772)) )
))
(declare-datatypes ((List!45270 0))(
  ( (Nil!45146) (Cons!45146 (h!50566 Rule!14684) (t!343301 List!45270)) )
))
(declare-fun rules!4102 () List!45270)

(declare-fun r1!615 () Rule!14684)

(declare-fun contains!9128 (List!45270 Rule!14684) Bool)

(assert (=> b!4153306 (= res!1700954 (contains!9128 rules!4102 r1!615))))

(declare-fun b!4153307 () Bool)

(declare-fun res!1700956 () Bool)

(assert (=> b!4153307 (=> (not res!1700956) (not e!2576910))))

(declare-fun r2!597 () Rule!14684)

(declare-fun getIndex!784 (List!45270 Rule!14684) Int)

(assert (=> b!4153307 (= res!1700956 (< (getIndex!784 rules!4102 r1!615) (getIndex!784 rules!4102 r2!597)))))

(declare-fun e!2576911 () Bool)

(assert (=> b!4153308 (= e!2576911 (and tp!1266096 tp!1266100))))

(declare-fun res!1700955 () Bool)

(assert (=> start!395342 (=> (not res!1700955) (not e!2576910))))

(declare-datatypes ((LexerInterface!7031 0))(
  ( (LexerInterfaceExt!7028 (__x!27562 Int)) (Lexer!7029) )
))
(declare-fun thiss!26968 () LexerInterface!7031)

(get-info :version)

(assert (=> start!395342 (= res!1700955 ((_ is Lexer!7029) thiss!26968))))

(assert (=> start!395342 e!2576910))

(assert (=> start!395342 true))

(declare-fun e!2576920 () Bool)

(assert (=> start!395342 e!2576920))

(declare-fun e!2576914 () Bool)

(assert (=> start!395342 e!2576914))

(declare-fun e!2576916 () Bool)

(assert (=> start!395342 e!2576916))

(declare-fun e!2576912 () Bool)

(assert (=> b!4153309 (= e!2576912 (and tp!1266102 tp!1266093))))

(declare-fun b!4153310 () Bool)

(declare-fun tp!1266099 () Bool)

(declare-fun inv!59750 (String!52110) Bool)

(declare-fun inv!59752 (TokenValueInjection!14772) Bool)

(assert (=> b!4153310 (= e!2576914 (and tp!1266099 (inv!59750 (tag!8302 r1!615)) (inv!59752 (transformation!7442 r1!615)) e!2576912))))

(declare-fun b!4153311 () Bool)

(declare-fun e!2576917 () Bool)

(declare-fun tp!1266097 () Bool)

(assert (=> b!4153311 (= e!2576920 (and e!2576917 tp!1266097))))

(declare-fun b!4153312 () Bool)

(assert (=> b!4153312 (= e!2576910 (= rules!4102 Nil!45146))))

(declare-fun b!4153313 () Bool)

(declare-fun tp!1266094 () Bool)

(assert (=> b!4153313 (= e!2576916 (and tp!1266094 (inv!59750 (tag!8302 r2!597)) (inv!59752 (transformation!7442 r2!597)) e!2576911))))

(declare-fun b!4153314 () Bool)

(declare-fun res!1700957 () Bool)

(assert (=> b!4153314 (=> (not res!1700957) (not e!2576910))))

(assert (=> b!4153314 (= res!1700957 (contains!9128 rules!4102 r2!597))))

(declare-fun b!4153315 () Bool)

(declare-fun tp!1266098 () Bool)

(assert (=> b!4153315 (= e!2576917 (and tp!1266098 (inv!59750 (tag!8302 (h!50566 rules!4102))) (inv!59752 (transformation!7442 (h!50566 rules!4102))) e!2576918))))

(declare-fun b!4153316 () Bool)

(declare-fun res!1700958 () Bool)

(assert (=> b!4153316 (=> (not res!1700958) (not e!2576910))))

(declare-datatypes ((List!45271 0))(
  ( (Nil!45147) (Cons!45147 (h!50567 String!52110) (t!343302 List!45271)) )
))
(declare-fun noDuplicateTag!3019 (LexerInterface!7031 List!45270 List!45271) Bool)

(declare-fun noDuplicateTag$default$2!24 (LexerInterface!7031) List!45271)

(assert (=> b!4153316 (= res!1700958 (noDuplicateTag!3019 thiss!26968 rules!4102 (noDuplicateTag$default$2!24 thiss!26968)))))

(assert (= (and start!395342 res!1700955) b!4153306))

(assert (= (and b!4153306 res!1700954) b!4153314))

(assert (= (and b!4153314 res!1700957) b!4153316))

(assert (= (and b!4153316 res!1700958) b!4153307))

(assert (= (and b!4153307 res!1700956) b!4153312))

(assert (= b!4153315 b!4153305))

(assert (= b!4153311 b!4153315))

(assert (= (and start!395342 ((_ is Cons!45146) rules!4102)) b!4153311))

(assert (= b!4153310 b!4153309))

(assert (= start!395342 b!4153310))

(assert (= b!4153313 b!4153308))

(assert (= start!395342 b!4153313))

(declare-fun m!4748509 () Bool)

(assert (=> b!4153313 m!4748509))

(declare-fun m!4748511 () Bool)

(assert (=> b!4153313 m!4748511))

(declare-fun m!4748513 () Bool)

(assert (=> b!4153307 m!4748513))

(declare-fun m!4748515 () Bool)

(assert (=> b!4153307 m!4748515))

(declare-fun m!4748517 () Bool)

(assert (=> b!4153316 m!4748517))

(assert (=> b!4153316 m!4748517))

(declare-fun m!4748519 () Bool)

(assert (=> b!4153316 m!4748519))

(declare-fun m!4748521 () Bool)

(assert (=> b!4153315 m!4748521))

(declare-fun m!4748523 () Bool)

(assert (=> b!4153315 m!4748523))

(declare-fun m!4748525 () Bool)

(assert (=> b!4153306 m!4748525))

(declare-fun m!4748527 () Bool)

(assert (=> b!4153314 m!4748527))

(declare-fun m!4748529 () Bool)

(assert (=> b!4153310 m!4748529))

(declare-fun m!4748531 () Bool)

(assert (=> b!4153310 m!4748531))

(check-sat (not b!4153310) b_and!323213 (not b!4153313) b_and!323215 (not b_next!119561) (not b!4153316) (not b_next!119555) (not b_next!119563) (not b_next!119559) (not b!4153306) (not b_next!119557) b_and!323223 b_and!323217 (not b!4153314) (not b!4153311) (not b!4153315) (not b!4153307) b_and!323219 (not b_next!119565) b_and!323221)
(check-sat b_and!323217 b_and!323213 b_and!323215 (not b_next!119561) (not b_next!119555) (not b_next!119563) (not b_next!119559) (not b_next!119557) b_and!323223 b_and!323219 (not b_next!119565) b_and!323221)
(get-model)

(declare-fun d!1228358 () Bool)

(declare-fun lt!1481063 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6982 (List!45270) (InoxSet Rule!14684))

(assert (=> d!1228358 (= lt!1481063 (select (content!6982 rules!4102) r1!615))))

(declare-fun e!2576930 () Bool)

(assert (=> d!1228358 (= lt!1481063 e!2576930)))

(declare-fun res!1700970 () Bool)

(assert (=> d!1228358 (=> (not res!1700970) (not e!2576930))))

(assert (=> d!1228358 (= res!1700970 ((_ is Cons!45146) rules!4102))))

(assert (=> d!1228358 (= (contains!9128 rules!4102 r1!615) lt!1481063)))

(declare-fun b!4153329 () Bool)

(declare-fun e!2576931 () Bool)

(assert (=> b!4153329 (= e!2576930 e!2576931)))

(declare-fun res!1700971 () Bool)

(assert (=> b!4153329 (=> res!1700971 e!2576931)))

(assert (=> b!4153329 (= res!1700971 (= (h!50566 rules!4102) r1!615))))

(declare-fun b!4153330 () Bool)

(assert (=> b!4153330 (= e!2576931 (contains!9128 (t!343301 rules!4102) r1!615))))

(assert (= (and d!1228358 res!1700970) b!4153329))

(assert (= (and b!4153329 (not res!1700971)) b!4153330))

(declare-fun m!4748533 () Bool)

(assert (=> d!1228358 m!4748533))

(declare-fun m!4748535 () Bool)

(assert (=> d!1228358 m!4748535))

(declare-fun m!4748537 () Bool)

(assert (=> b!4153330 m!4748537))

(assert (=> b!4153306 d!1228358))

(declare-fun d!1228360 () Bool)

(assert (=> d!1228360 (= (inv!59750 (tag!8302 r2!597)) (= (mod (str.len (value!232645 (tag!8302 r2!597))) 2) 0))))

(assert (=> b!4153313 d!1228360))

(declare-fun d!1228364 () Bool)

(declare-fun res!1700974 () Bool)

(declare-fun e!2576938 () Bool)

(assert (=> d!1228364 (=> (not res!1700974) (not e!2576938))))

(declare-fun semiInverseModEq!3220 (Int Int) Bool)

(assert (=> d!1228364 (= res!1700974 (semiInverseModEq!3220 (toChars!9965 (transformation!7442 r2!597)) (toValue!10106 (transformation!7442 r2!597))))))

(assert (=> d!1228364 (= (inv!59752 (transformation!7442 r2!597)) e!2576938)))

(declare-fun b!4153341 () Bool)

(declare-fun equivClasses!3119 (Int Int) Bool)

(assert (=> b!4153341 (= e!2576938 (equivClasses!3119 (toChars!9965 (transformation!7442 r2!597)) (toValue!10106 (transformation!7442 r2!597))))))

(assert (= (and d!1228364 res!1700974) b!4153341))

(declare-fun m!4748543 () Bool)

(assert (=> d!1228364 m!4748543))

(declare-fun m!4748545 () Bool)

(assert (=> b!4153341 m!4748545))

(assert (=> b!4153313 d!1228364))

(declare-fun b!4153363 () Bool)

(declare-fun e!2576955 () Int)

(assert (=> b!4153363 (= e!2576955 (+ 1 (getIndex!784 (t!343301 rules!4102) r1!615)))))

(declare-fun d!1228370 () Bool)

(declare-fun lt!1481072 () Int)

(assert (=> d!1228370 (>= lt!1481072 0)))

(declare-fun e!2576956 () Int)

(assert (=> d!1228370 (= lt!1481072 e!2576956)))

(declare-fun c!711197 () Bool)

(assert (=> d!1228370 (= c!711197 (and ((_ is Cons!45146) rules!4102) (= (h!50566 rules!4102) r1!615)))))

(assert (=> d!1228370 (contains!9128 rules!4102 r1!615)))

(assert (=> d!1228370 (= (getIndex!784 rules!4102 r1!615) lt!1481072)))

(declare-fun b!4153362 () Bool)

(assert (=> b!4153362 (= e!2576956 e!2576955)))

(declare-fun c!711196 () Bool)

(assert (=> b!4153362 (= c!711196 (and ((_ is Cons!45146) rules!4102) (not (= (h!50566 rules!4102) r1!615))))))

(declare-fun b!4153361 () Bool)

(assert (=> b!4153361 (= e!2576956 0)))

(declare-fun b!4153364 () Bool)

(assert (=> b!4153364 (= e!2576955 (- 1))))

(assert (= (and d!1228370 c!711197) b!4153361))

(assert (= (and d!1228370 (not c!711197)) b!4153362))

(assert (= (and b!4153362 c!711196) b!4153363))

(assert (= (and b!4153362 (not c!711196)) b!4153364))

(declare-fun m!4748561 () Bool)

(assert (=> b!4153363 m!4748561))

(assert (=> d!1228370 m!4748525))

(assert (=> b!4153307 d!1228370))

(declare-fun b!4153368 () Bool)

(declare-fun e!2576958 () Int)

(assert (=> b!4153368 (= e!2576958 (+ 1 (getIndex!784 (t!343301 rules!4102) r2!597)))))

(declare-fun d!1228380 () Bool)

(declare-fun lt!1481073 () Int)

(assert (=> d!1228380 (>= lt!1481073 0)))

(declare-fun e!2576959 () Int)

(assert (=> d!1228380 (= lt!1481073 e!2576959)))

(declare-fun c!711199 () Bool)

(assert (=> d!1228380 (= c!711199 (and ((_ is Cons!45146) rules!4102) (= (h!50566 rules!4102) r2!597)))))

(assert (=> d!1228380 (contains!9128 rules!4102 r2!597)))

(assert (=> d!1228380 (= (getIndex!784 rules!4102 r2!597) lt!1481073)))

(declare-fun b!4153367 () Bool)

(assert (=> b!4153367 (= e!2576959 e!2576958)))

(declare-fun c!711198 () Bool)

(assert (=> b!4153367 (= c!711198 (and ((_ is Cons!45146) rules!4102) (not (= (h!50566 rules!4102) r2!597))))))

(declare-fun b!4153366 () Bool)

(assert (=> b!4153366 (= e!2576959 0)))

(declare-fun b!4153369 () Bool)

(assert (=> b!4153369 (= e!2576958 (- 1))))

(assert (= (and d!1228380 c!711199) b!4153366))

(assert (= (and d!1228380 (not c!711199)) b!4153367))

(assert (= (and b!4153367 c!711198) b!4153368))

(assert (= (and b!4153367 (not c!711198)) b!4153369))

(declare-fun m!4748567 () Bool)

(assert (=> b!4153368 m!4748567))

(assert (=> d!1228380 m!4748527))

(assert (=> b!4153307 d!1228380))

(declare-fun d!1228384 () Bool)

(declare-fun lt!1481074 () Bool)

(assert (=> d!1228384 (= lt!1481074 (select (content!6982 rules!4102) r2!597))))

(declare-fun e!2576960 () Bool)

(assert (=> d!1228384 (= lt!1481074 e!2576960)))

(declare-fun res!1700987 () Bool)

(assert (=> d!1228384 (=> (not res!1700987) (not e!2576960))))

(assert (=> d!1228384 (= res!1700987 ((_ is Cons!45146) rules!4102))))

(assert (=> d!1228384 (= (contains!9128 rules!4102 r2!597) lt!1481074)))

(declare-fun b!4153370 () Bool)

(declare-fun e!2576961 () Bool)

(assert (=> b!4153370 (= e!2576960 e!2576961)))

(declare-fun res!1700988 () Bool)

(assert (=> b!4153370 (=> res!1700988 e!2576961)))

(assert (=> b!4153370 (= res!1700988 (= (h!50566 rules!4102) r2!597))))

(declare-fun b!4153371 () Bool)

(assert (=> b!4153371 (= e!2576961 (contains!9128 (t!343301 rules!4102) r2!597))))

(assert (= (and d!1228384 res!1700987) b!4153370))

(assert (= (and b!4153370 (not res!1700988)) b!4153371))

(assert (=> d!1228384 m!4748533))

(declare-fun m!4748569 () Bool)

(assert (=> d!1228384 m!4748569))

(declare-fun m!4748571 () Bool)

(assert (=> b!4153371 m!4748571))

(assert (=> b!4153314 d!1228384))

(declare-fun d!1228386 () Bool)

(declare-fun res!1700999 () Bool)

(declare-fun e!2576972 () Bool)

(assert (=> d!1228386 (=> res!1700999 e!2576972)))

(assert (=> d!1228386 (= res!1700999 ((_ is Nil!45146) rules!4102))))

(assert (=> d!1228386 (= (noDuplicateTag!3019 thiss!26968 rules!4102 (noDuplicateTag$default$2!24 thiss!26968)) e!2576972)))

(declare-fun b!4153382 () Bool)

(declare-fun e!2576973 () Bool)

(assert (=> b!4153382 (= e!2576972 e!2576973)))

(declare-fun res!1701000 () Bool)

(assert (=> b!4153382 (=> (not res!1701000) (not e!2576973))))

(declare-fun contains!9129 (List!45271 String!52110) Bool)

(assert (=> b!4153382 (= res!1701000 (not (contains!9129 (noDuplicateTag$default$2!24 thiss!26968) (tag!8302 (h!50566 rules!4102)))))))

(declare-fun b!4153383 () Bool)

(assert (=> b!4153383 (= e!2576973 (noDuplicateTag!3019 thiss!26968 (t!343301 rules!4102) (Cons!45147 (tag!8302 (h!50566 rules!4102)) (noDuplicateTag$default$2!24 thiss!26968))))))

(assert (= (and d!1228386 (not res!1700999)) b!4153382))

(assert (= (and b!4153382 res!1701000) b!4153383))

(assert (=> b!4153382 m!4748517))

(declare-fun m!4748581 () Bool)

(assert (=> b!4153382 m!4748581))

(declare-fun m!4748583 () Bool)

(assert (=> b!4153383 m!4748583))

(assert (=> b!4153316 d!1228386))

(declare-fun d!1228394 () Bool)

(assert (=> d!1228394 (= (noDuplicateTag$default$2!24 thiss!26968) Nil!45147)))

(assert (=> b!4153316 d!1228394))

(declare-fun d!1228396 () Bool)

(assert (=> d!1228396 (= (inv!59750 (tag!8302 r1!615)) (= (mod (str.len (value!232645 (tag!8302 r1!615))) 2) 0))))

(assert (=> b!4153310 d!1228396))

(declare-fun d!1228398 () Bool)

(declare-fun res!1701002 () Bool)

(declare-fun e!2576981 () Bool)

(assert (=> d!1228398 (=> (not res!1701002) (not e!2576981))))

(assert (=> d!1228398 (= res!1701002 (semiInverseModEq!3220 (toChars!9965 (transformation!7442 r1!615)) (toValue!10106 (transformation!7442 r1!615))))))

(assert (=> d!1228398 (= (inv!59752 (transformation!7442 r1!615)) e!2576981)))

(declare-fun b!4153391 () Bool)

(assert (=> b!4153391 (= e!2576981 (equivClasses!3119 (toChars!9965 (transformation!7442 r1!615)) (toValue!10106 (transformation!7442 r1!615))))))

(assert (= (and d!1228398 res!1701002) b!4153391))

(declare-fun m!4748585 () Bool)

(assert (=> d!1228398 m!4748585))

(declare-fun m!4748587 () Bool)

(assert (=> b!4153391 m!4748587))

(assert (=> b!4153310 d!1228398))

(declare-fun d!1228400 () Bool)

(assert (=> d!1228400 (= (inv!59750 (tag!8302 (h!50566 rules!4102))) (= (mod (str.len (value!232645 (tag!8302 (h!50566 rules!4102)))) 2) 0))))

(assert (=> b!4153315 d!1228400))

(declare-fun d!1228402 () Bool)

(declare-fun res!1701003 () Bool)

(declare-fun e!2576984 () Bool)

(assert (=> d!1228402 (=> (not res!1701003) (not e!2576984))))

(assert (=> d!1228402 (= res!1701003 (semiInverseModEq!3220 (toChars!9965 (transformation!7442 (h!50566 rules!4102))) (toValue!10106 (transformation!7442 (h!50566 rules!4102)))))))

(assert (=> d!1228402 (= (inv!59752 (transformation!7442 (h!50566 rules!4102))) e!2576984)))

(declare-fun b!4153394 () Bool)

(assert (=> b!4153394 (= e!2576984 (equivClasses!3119 (toChars!9965 (transformation!7442 (h!50566 rules!4102))) (toValue!10106 (transformation!7442 (h!50566 rules!4102)))))))

(assert (= (and d!1228402 res!1701003) b!4153394))

(declare-fun m!4748589 () Bool)

(assert (=> d!1228402 m!4748589))

(declare-fun m!4748591 () Bool)

(assert (=> b!4153394 m!4748591))

(assert (=> b!4153315 d!1228402))

(declare-fun b!4153418 () Bool)

(declare-fun b_free!118867 () Bool)

(declare-fun b_next!119571 () Bool)

(assert (=> b!4153418 (= b_free!118867 (not b_next!119571))))

(declare-fun tp!1266135 () Bool)

(declare-fun b_and!323229 () Bool)

(assert (=> b!4153418 (= tp!1266135 b_and!323229)))

(declare-fun b_free!118869 () Bool)

(declare-fun b_next!119573 () Bool)

(assert (=> b!4153418 (= b_free!118869 (not b_next!119573))))

(declare-fun tp!1266136 () Bool)

(declare-fun b_and!323231 () Bool)

(assert (=> b!4153418 (= tp!1266136 b_and!323231)))

(declare-fun e!2577002 () Bool)

(assert (=> b!4153418 (= e!2577002 (and tp!1266135 tp!1266136))))

(declare-fun e!2577001 () Bool)

(declare-fun tp!1266134 () Bool)

(declare-fun b!4153417 () Bool)

(assert (=> b!4153417 (= e!2577001 (and tp!1266134 (inv!59750 (tag!8302 (h!50566 (t!343301 rules!4102)))) (inv!59752 (transformation!7442 (h!50566 (t!343301 rules!4102)))) e!2577002))))

(declare-fun b!4153416 () Bool)

(declare-fun e!2577000 () Bool)

(declare-fun tp!1266133 () Bool)

(assert (=> b!4153416 (= e!2577000 (and e!2577001 tp!1266133))))

(assert (=> b!4153311 (= tp!1266097 e!2577000)))

(assert (= b!4153417 b!4153418))

(assert (= b!4153416 b!4153417))

(assert (= (and b!4153311 ((_ is Cons!45146) (t!343301 rules!4102))) b!4153416))

(declare-fun m!4748597 () Bool)

(assert (=> b!4153417 m!4748597))

(declare-fun m!4748599 () Bool)

(assert (=> b!4153417 m!4748599))

(declare-fun b!4153441 () Bool)

(declare-fun e!2577008 () Bool)

(declare-fun tp_is_empty!21609 () Bool)

(assert (=> b!4153441 (= e!2577008 tp_is_empty!21609)))

(declare-fun b!4153443 () Bool)

(declare-fun tp!1266163 () Bool)

(assert (=> b!4153443 (= e!2577008 tp!1266163)))

(assert (=> b!4153313 (= tp!1266094 e!2577008)))

(declare-fun b!4153442 () Bool)

(declare-fun tp!1266165 () Bool)

(declare-fun tp!1266164 () Bool)

(assert (=> b!4153442 (= e!2577008 (and tp!1266165 tp!1266164))))

(declare-fun b!4153444 () Bool)

(declare-fun tp!1266162 () Bool)

(declare-fun tp!1266166 () Bool)

(assert (=> b!4153444 (= e!2577008 (and tp!1266162 tp!1266166))))

(assert (= (and b!4153313 ((_ is ElementMatch!12347) (regex!7442 r2!597))) b!4153441))

(assert (= (and b!4153313 ((_ is Concat!20020) (regex!7442 r2!597))) b!4153442))

(assert (= (and b!4153313 ((_ is Star!12347) (regex!7442 r2!597))) b!4153443))

(assert (= (and b!4153313 ((_ is Union!12347) (regex!7442 r2!597))) b!4153444))

(declare-fun b!4153445 () Bool)

(declare-fun e!2577009 () Bool)

(assert (=> b!4153445 (= e!2577009 tp_is_empty!21609)))

(declare-fun b!4153447 () Bool)

(declare-fun tp!1266168 () Bool)

(assert (=> b!4153447 (= e!2577009 tp!1266168)))

(assert (=> b!4153310 (= tp!1266099 e!2577009)))

(declare-fun b!4153446 () Bool)

(declare-fun tp!1266170 () Bool)

(declare-fun tp!1266169 () Bool)

(assert (=> b!4153446 (= e!2577009 (and tp!1266170 tp!1266169))))

(declare-fun b!4153448 () Bool)

(declare-fun tp!1266167 () Bool)

(declare-fun tp!1266171 () Bool)

(assert (=> b!4153448 (= e!2577009 (and tp!1266167 tp!1266171))))

(assert (= (and b!4153310 ((_ is ElementMatch!12347) (regex!7442 r1!615))) b!4153445))

(assert (= (and b!4153310 ((_ is Concat!20020) (regex!7442 r1!615))) b!4153446))

(assert (= (and b!4153310 ((_ is Star!12347) (regex!7442 r1!615))) b!4153447))

(assert (= (and b!4153310 ((_ is Union!12347) (regex!7442 r1!615))) b!4153448))

(declare-fun b!4153449 () Bool)

(declare-fun e!2577010 () Bool)

(assert (=> b!4153449 (= e!2577010 tp_is_empty!21609)))

(declare-fun b!4153451 () Bool)

(declare-fun tp!1266173 () Bool)

(assert (=> b!4153451 (= e!2577010 tp!1266173)))

(assert (=> b!4153315 (= tp!1266098 e!2577010)))

(declare-fun b!4153450 () Bool)

(declare-fun tp!1266175 () Bool)

(declare-fun tp!1266174 () Bool)

(assert (=> b!4153450 (= e!2577010 (and tp!1266175 tp!1266174))))

(declare-fun b!4153452 () Bool)

(declare-fun tp!1266172 () Bool)

(declare-fun tp!1266176 () Bool)

(assert (=> b!4153452 (= e!2577010 (and tp!1266172 tp!1266176))))

(assert (= (and b!4153315 ((_ is ElementMatch!12347) (regex!7442 (h!50566 rules!4102)))) b!4153449))

(assert (= (and b!4153315 ((_ is Concat!20020) (regex!7442 (h!50566 rules!4102)))) b!4153450))

(assert (= (and b!4153315 ((_ is Star!12347) (regex!7442 (h!50566 rules!4102)))) b!4153451))

(assert (= (and b!4153315 ((_ is Union!12347) (regex!7442 (h!50566 rules!4102)))) b!4153452))

(check-sat b_and!323213 (not b!4153452) b_and!323215 (not b_next!119571) (not b!4153391) (not b!4153417) (not b!4153450) (not b_next!119561) (not b!4153451) (not b_next!119555) (not b!4153443) (not b!4153447) (not b_next!119557) (not b!4153363) (not d!1228384) tp_is_empty!21609 (not b!4153330) (not b!4153394) (not b!4153444) (not d!1228398) b_and!323217 (not d!1228402) (not b!4153446) (not b!4153448) b_and!323231 (not b!4153341) (not d!1228358) (not b!4153383) (not d!1228364) b_and!323229 (not b!4153382) (not b_next!119563) (not b!4153371) (not b!4153368) (not b_next!119559) (not b_next!119573) b_and!323223 (not b!4153442) (not b!4153416) (not d!1228370) (not d!1228380) b_and!323219 (not b_next!119565) b_and!323221)
(check-sat b_and!323217 b_and!323213 b_and!323215 (not b_next!119571) b_and!323231 b_and!323229 (not b_next!119561) (not b_next!119555) (not b_next!119563) (not b_next!119559) (not b_next!119557) (not b_next!119573) b_and!323223 b_and!323219 (not b_next!119565) b_and!323221)
