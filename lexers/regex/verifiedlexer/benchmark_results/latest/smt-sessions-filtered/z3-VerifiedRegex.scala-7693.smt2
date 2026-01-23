; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404890 () Bool)

(assert start!404890)

(declare-fun b!4232737 () Bool)

(declare-fun b_free!125015 () Bool)

(declare-fun b_next!125719 () Bool)

(assert (=> b!4232737 (= b_free!125015 (not b_next!125719))))

(declare-fun tp!1296404 () Bool)

(declare-fun b_and!334345 () Bool)

(assert (=> b!4232737 (= tp!1296404 b_and!334345)))

(declare-fun b_free!125017 () Bool)

(declare-fun b_next!125721 () Bool)

(assert (=> b!4232737 (= b_free!125017 (not b_next!125721))))

(declare-fun tp!1296400 () Bool)

(declare-fun b_and!334347 () Bool)

(assert (=> b!4232737 (= tp!1296400 b_and!334347)))

(declare-fun b!4232731 () Bool)

(declare-fun res!1740858 () Bool)

(declare-fun e!2628187 () Bool)

(assert (=> b!4232731 (=> (not res!1740858) (not e!2628187))))

(declare-datatypes ((C!25804 0))(
  ( (C!25805 (val!15064 Int)) )
))
(declare-datatypes ((List!46860 0))(
  ( (Nil!46736) (Cons!46736 (h!52156 C!25804) (t!349547 List!46860)) )
))
(declare-fun input!3600 () List!46860)

(declare-fun isPrefix!4713 (List!46860 List!46860) Bool)

(assert (=> b!4232731 (= res!1740858 (isPrefix!4713 Nil!46736 input!3600))))

(declare-fun b!4232732 () Bool)

(declare-fun res!1740857 () Bool)

(assert (=> b!4232732 (=> (not res!1740857) (not e!2628187))))

(declare-datatypes ((List!46861 0))(
  ( (Nil!46737) (Cons!46737 (h!52157 (_ BitVec 16)) (t!349548 List!46861)) )
))
(declare-datatypes ((TokenValue!8128 0))(
  ( (FloatLiteralValue!16256 (text!57341 List!46861)) (TokenValueExt!8127 (__x!28479 Int)) (Broken!40640 (value!245563 List!46861)) (Object!8251) (End!8128) (Def!8128) (Underscore!8128) (Match!8128) (Else!8128) (Error!8128) (Case!8128) (If!8128) (Extends!8128) (Abstract!8128) (Class!8128) (Val!8128) (DelimiterValue!16256 (del!8188 List!46861)) (KeywordValue!8134 (value!245564 List!46861)) (CommentValue!16256 (value!245565 List!46861)) (WhitespaceValue!16256 (value!245566 List!46861)) (IndentationValue!8128 (value!245567 List!46861)) (String!54513) (Int32!8128) (Broken!40641 (value!245568 List!46861)) (Boolean!8129) (Unit!65886) (OperatorValue!8131 (op!8188 List!46861)) (IdentifierValue!16256 (value!245569 List!46861)) (IdentifierValue!16257 (value!245570 List!46861)) (WhitespaceValue!16257 (value!245571 List!46861)) (True!16256) (False!16256) (Broken!40642 (value!245572 List!46861)) (Broken!40643 (value!245573 List!46861)) (True!16257) (RightBrace!8128) (RightBracket!8128) (Colon!8128) (Null!8128) (Comma!8128) (LeftBracket!8128) (False!16257) (LeftBrace!8128) (ImaginaryLiteralValue!8128 (text!57342 List!46861)) (StringLiteralValue!24384 (value!245574 List!46861)) (EOFValue!8128 (value!245575 List!46861)) (IdentValue!8128 (value!245576 List!46861)) (DelimiterValue!16257 (value!245577 List!46861)) (DedentValue!8128 (value!245578 List!46861)) (NewLineValue!8128 (value!245579 List!46861)) (IntegerValue!24384 (value!245580 (_ BitVec 32)) (text!57343 List!46861)) (IntegerValue!24385 (value!245581 Int) (text!57344 List!46861)) (Times!8128) (Or!8128) (Equal!8128) (Minus!8128) (Broken!40644 (value!245582 List!46861)) (And!8128) (Div!8128) (LessEqual!8128) (Mod!8128) (Concat!20931) (Not!8128) (Plus!8128) (SpaceValue!8128 (value!245583 List!46861)) (IntegerValue!24386 (value!245584 Int) (text!57345 List!46861)) (StringLiteralValue!24385 (text!57346 List!46861)) (FloatLiteralValue!16257 (text!57347 List!46861)) (BytesLiteralValue!8128 (value!245585 List!46861)) (CommentValue!16257 (value!245586 List!46861)) (StringLiteralValue!24386 (value!245587 List!46861)) (ErrorTokenValue!8128 (msg!8189 List!46861)) )
))
(declare-datatypes ((String!54514 0))(
  ( (String!54515 (value!245588 String)) )
))
(declare-datatypes ((Regex!12803 0))(
  ( (ElementMatch!12803 (c!719430 C!25804)) (Concat!20932 (regOne!26118 Regex!12803) (regTwo!26118 Regex!12803)) (EmptyExpr!12803) (Star!12803 (reg!13132 Regex!12803)) (EmptyLang!12803) (Union!12803 (regOne!26119 Regex!12803) (regTwo!26119 Regex!12803)) )
))
(declare-datatypes ((IArray!28223 0))(
  ( (IArray!28224 (innerList!14169 List!46860)) )
))
(declare-datatypes ((Conc!14109 0))(
  ( (Node!14109 (left!34770 Conc!14109) (right!35100 Conc!14109) (csize!28448 Int) (cheight!14320 Int)) (Leaf!21803 (xs!17415 IArray!28223) (csize!28449 Int)) (Empty!14109) )
))
(declare-datatypes ((BalanceConc!27812 0))(
  ( (BalanceConc!27813 (c!719431 Conc!14109)) )
))
(declare-datatypes ((TokenValueInjection!15684 0))(
  ( (TokenValueInjection!15685 (toValue!10634 Int) (toChars!10493 Int)) )
))
(declare-datatypes ((Rule!15596 0))(
  ( (Rule!15597 (regex!7898 Regex!12803) (tag!8762 String!54514) (isSeparator!7898 Bool) (transformation!7898 TokenValueInjection!15684)) )
))
(declare-fun r!4353 () Rule!15596)

(declare-fun validRegex!5819 (Regex!12803) Bool)

(assert (=> b!4232732 (= res!1740857 (validRegex!5819 (regex!7898 r!4353)))))

(declare-fun b!4232733 () Bool)

(declare-fun res!1740853 () Bool)

(assert (=> b!4232733 (=> (not res!1740853) (not e!2628187))))

(declare-datatypes ((LexerInterface!7493 0))(
  ( (LexerInterfaceExt!7490 (__x!28480 Int)) (Lexer!7491) )
))
(declare-fun thiss!26814 () LexerInterface!7493)

(declare-datatypes ((Token!14426 0))(
  ( (Token!14427 (value!245589 TokenValue!8128) (rule!11022 Rule!15596) (size!34262 Int) (originalCharacters!8244 List!46860)) )
))
(declare-datatypes ((tuple2!44366 0))(
  ( (tuple2!44367 (_1!25317 Token!14426) (_2!25317 List!46860)) )
))
(declare-datatypes ((Option!10044 0))(
  ( (None!10043) (Some!10043 (v!40971 tuple2!44366)) )
))
(declare-fun maxPrefixOneRule!3438 (LexerInterface!7493 Rule!15596 List!46860) Option!10044)

(assert (=> b!4232733 (= res!1740853 (= (maxPrefixOneRule!3438 thiss!26814 r!4353 input!3600) None!10043))))

(declare-fun b!4232734 () Bool)

(declare-fun e!2628184 () Bool)

(declare-fun p!3018 () List!46860)

(declare-fun matchR!6435 (Regex!12803 List!46860) Bool)

(assert (=> b!4232734 (= e!2628184 (not (matchR!6435 (regex!7898 r!4353) p!3018)))))

(declare-fun b!4232735 () Bool)

(declare-fun e!2628190 () Bool)

(declare-fun tp_is_empty!22541 () Bool)

(declare-fun tp!1296402 () Bool)

(assert (=> b!4232735 (= e!2628190 (and tp_is_empty!22541 tp!1296402))))

(declare-fun b!4232736 () Bool)

(declare-fun e!2628188 () Bool)

(declare-fun tp!1296401 () Bool)

(assert (=> b!4232736 (= e!2628188 (and tp_is_empty!22541 tp!1296401))))

(declare-fun e!2628183 () Bool)

(assert (=> b!4232737 (= e!2628183 (and tp!1296404 tp!1296400))))

(declare-fun b!4232738 () Bool)

(declare-fun e!2628189 () Bool)

(assert (=> b!4232738 (= e!2628187 e!2628189)))

(declare-fun res!1740851 () Bool)

(assert (=> b!4232738 (=> (not res!1740851) (not e!2628189))))

(declare-fun lt!1504808 () Int)

(declare-fun lt!1504807 () Int)

(assert (=> b!4232738 (= res!1740851 (>= lt!1504808 lt!1504807))))

(declare-fun size!34263 (List!46860) Int)

(assert (=> b!4232738 (= lt!1504807 (size!34263 Nil!46736))))

(assert (=> b!4232738 (= lt!1504808 (size!34263 p!3018))))

(declare-fun b!4232739 () Bool)

(declare-fun res!1740852 () Bool)

(assert (=> b!4232739 (=> (not res!1740852) (not e!2628187))))

(assert (=> b!4232739 (= res!1740852 (isPrefix!4713 p!3018 input!3600))))

(declare-fun b!4232740 () Bool)

(declare-fun res!1740850 () Bool)

(assert (=> b!4232740 (=> (not res!1740850) (not e!2628189))))

(declare-datatypes ((tuple2!44368 0))(
  ( (tuple2!44369 (_1!25318 List!46860) (_2!25318 List!46860)) )
))
(declare-fun findLongestMatchInner!1700 (Regex!12803 List!46860 Int List!46860 List!46860 Int) tuple2!44368)

(assert (=> b!4232740 (= res!1740850 (= (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 lt!1504807 input!3600 input!3600 (size!34263 input!3600))) Nil!46736))))

(declare-fun b!4232730 () Bool)

(declare-fun res!1740856 () Bool)

(assert (=> b!4232730 (=> (not res!1740856) (not e!2628187))))

(declare-fun ruleValid!3594 (LexerInterface!7493 Rule!15596) Bool)

(assert (=> b!4232730 (= res!1740856 (ruleValid!3594 thiss!26814 r!4353))))

(declare-fun res!1740854 () Bool)

(assert (=> start!404890 (=> (not res!1740854) (not e!2628187))))

(get-info :version)

(assert (=> start!404890 (= res!1740854 ((_ is Lexer!7491) thiss!26814))))

(assert (=> start!404890 e!2628187))

(assert (=> start!404890 true))

(assert (=> start!404890 e!2628188))

(assert (=> start!404890 e!2628190))

(declare-fun e!2628186 () Bool)

(assert (=> start!404890 e!2628186))

(declare-fun b!4232741 () Bool)

(assert (=> b!4232741 (= e!2628189 (not (not (matchR!6435 (regex!7898 r!4353) p!3018))))))

(assert (=> b!4232741 e!2628184))

(declare-fun res!1740855 () Bool)

(assert (=> b!4232741 (=> res!1740855 e!2628184)))

(assert (=> b!4232741 (= res!1740855 (= p!3018 Nil!46736))))

(declare-datatypes ((Unit!65887 0))(
  ( (Unit!65888) )
))
(declare-fun lt!1504806 () Unit!65887)

(declare-fun longestMatchNoBiggerStringMatch!13 (Regex!12803 List!46860 List!46860 List!46860) Unit!65887)

(assert (=> b!4232741 (= lt!1504806 (longestMatchNoBiggerStringMatch!13 (regex!7898 r!4353) input!3600 Nil!46736 p!3018))))

(declare-fun tp!1296403 () Bool)

(declare-fun b!4232742 () Bool)

(declare-fun inv!61445 (String!54514) Bool)

(declare-fun inv!61447 (TokenValueInjection!15684) Bool)

(assert (=> b!4232742 (= e!2628186 (and tp!1296403 (inv!61445 (tag!8762 r!4353)) (inv!61447 (transformation!7898 r!4353)) e!2628183))))

(assert (= (and start!404890 res!1740854) b!4232739))

(assert (= (and b!4232739 res!1740852) b!4232730))

(assert (= (and b!4232730 res!1740856) b!4232733))

(assert (= (and b!4232733 res!1740853) b!4232732))

(assert (= (and b!4232732 res!1740857) b!4232731))

(assert (= (and b!4232731 res!1740858) b!4232738))

(assert (= (and b!4232738 res!1740851) b!4232740))

(assert (= (and b!4232740 res!1740850) b!4232741))

(assert (= (and b!4232741 (not res!1740855)) b!4232734))

(assert (= (and start!404890 ((_ is Cons!46736) p!3018)) b!4232736))

(assert (= (and start!404890 ((_ is Cons!46736) input!3600)) b!4232735))

(assert (= b!4232742 b!4232737))

(assert (= start!404890 b!4232742))

(declare-fun m!4819077 () Bool)

(assert (=> b!4232739 m!4819077))

(declare-fun m!4819079 () Bool)

(assert (=> b!4232734 m!4819079))

(declare-fun m!4819081 () Bool)

(assert (=> b!4232733 m!4819081))

(declare-fun m!4819083 () Bool)

(assert (=> b!4232732 m!4819083))

(declare-fun m!4819085 () Bool)

(assert (=> b!4232730 m!4819085))

(declare-fun m!4819087 () Bool)

(assert (=> b!4232742 m!4819087))

(declare-fun m!4819089 () Bool)

(assert (=> b!4232742 m!4819089))

(assert (=> b!4232741 m!4819079))

(declare-fun m!4819091 () Bool)

(assert (=> b!4232741 m!4819091))

(declare-fun m!4819093 () Bool)

(assert (=> b!4232740 m!4819093))

(assert (=> b!4232740 m!4819093))

(declare-fun m!4819095 () Bool)

(assert (=> b!4232740 m!4819095))

(declare-fun m!4819097 () Bool)

(assert (=> b!4232738 m!4819097))

(declare-fun m!4819099 () Bool)

(assert (=> b!4232738 m!4819099))

(declare-fun m!4819101 () Bool)

(assert (=> b!4232731 m!4819101))

(check-sat (not b!4232733) tp_is_empty!22541 (not b_next!125721) (not b!4232735) (not b!4232738) (not b_next!125719) (not b!4232731) (not b!4232732) b_and!334345 b_and!334347 (not b!4232730) (not b!4232736) (not b!4232734) (not b!4232740) (not b!4232742) (not b!4232739) (not b!4232741))
(check-sat b_and!334345 b_and!334347 (not b_next!125721) (not b_next!125719))
(get-model)

(declare-fun d!1245496 () Bool)

(declare-fun lt!1504815 () Int)

(assert (=> d!1245496 (>= lt!1504815 0)))

(declare-fun e!2628197 () Int)

(assert (=> d!1245496 (= lt!1504815 e!2628197)))

(declare-fun c!719438 () Bool)

(assert (=> d!1245496 (= c!719438 ((_ is Nil!46736) Nil!46736))))

(assert (=> d!1245496 (= (size!34263 Nil!46736) lt!1504815)))

(declare-fun b!4232755 () Bool)

(assert (=> b!4232755 (= e!2628197 0)))

(declare-fun b!4232756 () Bool)

(assert (=> b!4232756 (= e!2628197 (+ 1 (size!34263 (t!349547 Nil!46736))))))

(assert (= (and d!1245496 c!719438) b!4232755))

(assert (= (and d!1245496 (not c!719438)) b!4232756))

(declare-fun m!4819107 () Bool)

(assert (=> b!4232756 m!4819107))

(assert (=> b!4232738 d!1245496))

(declare-fun d!1245498 () Bool)

(declare-fun lt!1504816 () Int)

(assert (=> d!1245498 (>= lt!1504816 0)))

(declare-fun e!2628198 () Int)

(assert (=> d!1245498 (= lt!1504816 e!2628198)))

(declare-fun c!719439 () Bool)

(assert (=> d!1245498 (= c!719439 ((_ is Nil!46736) p!3018))))

(assert (=> d!1245498 (= (size!34263 p!3018) lt!1504816)))

(declare-fun b!4232757 () Bool)

(assert (=> b!4232757 (= e!2628198 0)))

(declare-fun b!4232758 () Bool)

(assert (=> b!4232758 (= e!2628198 (+ 1 (size!34263 (t!349547 p!3018))))))

(assert (= (and d!1245498 c!719439) b!4232757))

(assert (= (and d!1245498 (not c!719439)) b!4232758))

(declare-fun m!4819109 () Bool)

(assert (=> b!4232758 m!4819109))

(assert (=> b!4232738 d!1245498))

(declare-fun d!1245500 () Bool)

(declare-fun res!1740901 () Bool)

(declare-fun e!2628237 () Bool)

(assert (=> d!1245500 (=> res!1740901 e!2628237)))

(assert (=> d!1245500 (= res!1740901 ((_ is ElementMatch!12803) (regex!7898 r!4353)))))

(assert (=> d!1245500 (= (validRegex!5819 (regex!7898 r!4353)) e!2628237)))

(declare-fun b!4232819 () Bool)

(declare-fun e!2628239 () Bool)

(declare-fun e!2628238 () Bool)

(assert (=> b!4232819 (= e!2628239 e!2628238)))

(declare-fun res!1740899 () Bool)

(assert (=> b!4232819 (=> (not res!1740899) (not e!2628238))))

(declare-fun call!293635 () Bool)

(assert (=> b!4232819 (= res!1740899 call!293635)))

(declare-fun b!4232820 () Bool)

(declare-fun e!2628240 () Bool)

(declare-fun e!2628236 () Bool)

(assert (=> b!4232820 (= e!2628240 e!2628236)))

(declare-fun c!719453 () Bool)

(assert (=> b!4232820 (= c!719453 ((_ is Union!12803) (regex!7898 r!4353)))))

(declare-fun b!4232821 () Bool)

(declare-fun e!2628234 () Bool)

(assert (=> b!4232821 (= e!2628234 call!293635)))

(declare-fun b!4232822 () Bool)

(declare-fun e!2628235 () Bool)

(declare-fun call!293636 () Bool)

(assert (=> b!4232822 (= e!2628235 call!293636)))

(declare-fun b!4232823 () Bool)

(declare-fun res!1740897 () Bool)

(assert (=> b!4232823 (=> (not res!1740897) (not e!2628234))))

(declare-fun call!293634 () Bool)

(assert (=> b!4232823 (= res!1740897 call!293634)))

(assert (=> b!4232823 (= e!2628236 e!2628234)))

(declare-fun b!4232824 () Bool)

(declare-fun res!1740898 () Bool)

(assert (=> b!4232824 (=> res!1740898 e!2628239)))

(assert (=> b!4232824 (= res!1740898 (not ((_ is Concat!20932) (regex!7898 r!4353))))))

(assert (=> b!4232824 (= e!2628236 e!2628239)))

(declare-fun bm!293629 () Bool)

(assert (=> bm!293629 (= call!293634 call!293636)))

(declare-fun b!4232825 () Bool)

(assert (=> b!4232825 (= e!2628240 e!2628235)))

(declare-fun res!1740900 () Bool)

(declare-fun nullable!4512 (Regex!12803) Bool)

(assert (=> b!4232825 (= res!1740900 (not (nullable!4512 (reg!13132 (regex!7898 r!4353)))))))

(assert (=> b!4232825 (=> (not res!1740900) (not e!2628235))))

(declare-fun c!719454 () Bool)

(declare-fun bm!293630 () Bool)

(assert (=> bm!293630 (= call!293636 (validRegex!5819 (ite c!719454 (reg!13132 (regex!7898 r!4353)) (ite c!719453 (regOne!26119 (regex!7898 r!4353)) (regTwo!26118 (regex!7898 r!4353))))))))

(declare-fun b!4232826 () Bool)

(assert (=> b!4232826 (= e!2628238 call!293634)))

(declare-fun bm!293631 () Bool)

(assert (=> bm!293631 (= call!293635 (validRegex!5819 (ite c!719453 (regTwo!26119 (regex!7898 r!4353)) (regOne!26118 (regex!7898 r!4353)))))))

(declare-fun b!4232827 () Bool)

(assert (=> b!4232827 (= e!2628237 e!2628240)))

(assert (=> b!4232827 (= c!719454 ((_ is Star!12803) (regex!7898 r!4353)))))

(assert (= (and d!1245500 (not res!1740901)) b!4232827))

(assert (= (and b!4232827 c!719454) b!4232825))

(assert (= (and b!4232827 (not c!719454)) b!4232820))

(assert (= (and b!4232825 res!1740900) b!4232822))

(assert (= (and b!4232820 c!719453) b!4232823))

(assert (= (and b!4232820 (not c!719453)) b!4232824))

(assert (= (and b!4232823 res!1740897) b!4232821))

(assert (= (and b!4232824 (not res!1740898)) b!4232819))

(assert (= (and b!4232819 res!1740899) b!4232826))

(assert (= (or b!4232821 b!4232819) bm!293631))

(assert (= (or b!4232823 b!4232826) bm!293629))

(assert (= (or b!4232822 bm!293629) bm!293630))

(declare-fun m!4819125 () Bool)

(assert (=> b!4232825 m!4819125))

(declare-fun m!4819127 () Bool)

(assert (=> bm!293630 m!4819127))

(declare-fun m!4819129 () Bool)

(assert (=> bm!293631 m!4819129))

(assert (=> b!4232732 d!1245500))

(declare-fun d!1245504 () Bool)

(declare-fun e!2628260 () Bool)

(assert (=> d!1245504 e!2628260))

(declare-fun c!719462 () Bool)

(assert (=> d!1245504 (= c!719462 ((_ is EmptyExpr!12803) (regex!7898 r!4353)))))

(declare-fun lt!1504825 () Bool)

(declare-fun e!2628258 () Bool)

(assert (=> d!1245504 (= lt!1504825 e!2628258)))

(declare-fun c!719463 () Bool)

(declare-fun isEmpty!27626 (List!46860) Bool)

(assert (=> d!1245504 (= c!719463 (isEmpty!27626 p!3018))))

(assert (=> d!1245504 (validRegex!5819 (regex!7898 r!4353))))

(assert (=> d!1245504 (= (matchR!6435 (regex!7898 r!4353) p!3018) lt!1504825)))

(declare-fun b!4232859 () Bool)

(declare-fun derivativeStep!3845 (Regex!12803 C!25804) Regex!12803)

(declare-fun head!8975 (List!46860) C!25804)

(declare-fun tail!6822 (List!46860) List!46860)

(assert (=> b!4232859 (= e!2628258 (matchR!6435 (derivativeStep!3845 (regex!7898 r!4353) (head!8975 p!3018)) (tail!6822 p!3018)))))

(declare-fun b!4232860 () Bool)

(declare-fun res!1740922 () Bool)

(declare-fun e!2628264 () Bool)

(assert (=> b!4232860 (=> (not res!1740922) (not e!2628264))))

(assert (=> b!4232860 (= res!1740922 (isEmpty!27626 (tail!6822 p!3018)))))

(declare-fun b!4232861 () Bool)

(declare-fun call!293639 () Bool)

(assert (=> b!4232861 (= e!2628260 (= lt!1504825 call!293639))))

(declare-fun b!4232862 () Bool)

(declare-fun res!1740926 () Bool)

(assert (=> b!4232862 (=> (not res!1740926) (not e!2628264))))

(assert (=> b!4232862 (= res!1740926 (not call!293639))))

(declare-fun bm!293634 () Bool)

(assert (=> bm!293634 (= call!293639 (isEmpty!27626 p!3018))))

(declare-fun b!4232863 () Bool)

(declare-fun res!1740925 () Bool)

(declare-fun e!2628259 () Bool)

(assert (=> b!4232863 (=> res!1740925 e!2628259)))

(assert (=> b!4232863 (= res!1740925 (not (isEmpty!27626 (tail!6822 p!3018))))))

(declare-fun b!4232864 () Bool)

(declare-fun e!2628261 () Bool)

(assert (=> b!4232864 (= e!2628261 e!2628259)))

(declare-fun res!1740927 () Bool)

(assert (=> b!4232864 (=> res!1740927 e!2628259)))

(assert (=> b!4232864 (= res!1740927 call!293639)))

(declare-fun b!4232865 () Bool)

(declare-fun res!1740923 () Bool)

(declare-fun e!2628263 () Bool)

(assert (=> b!4232865 (=> res!1740923 e!2628263)))

(assert (=> b!4232865 (= res!1740923 (not ((_ is ElementMatch!12803) (regex!7898 r!4353))))))

(declare-fun e!2628262 () Bool)

(assert (=> b!4232865 (= e!2628262 e!2628263)))

(declare-fun b!4232866 () Bool)

(assert (=> b!4232866 (= e!2628262 (not lt!1504825))))

(declare-fun b!4232867 () Bool)

(assert (=> b!4232867 (= e!2628258 (nullable!4512 (regex!7898 r!4353)))))

(declare-fun b!4232868 () Bool)

(assert (=> b!4232868 (= e!2628260 e!2628262)))

(declare-fun c!719461 () Bool)

(assert (=> b!4232868 (= c!719461 ((_ is EmptyLang!12803) (regex!7898 r!4353)))))

(declare-fun b!4232869 () Bool)

(declare-fun res!1740928 () Bool)

(assert (=> b!4232869 (=> res!1740928 e!2628263)))

(assert (=> b!4232869 (= res!1740928 e!2628264)))

(declare-fun res!1740921 () Bool)

(assert (=> b!4232869 (=> (not res!1740921) (not e!2628264))))

(assert (=> b!4232869 (= res!1740921 lt!1504825)))

(declare-fun b!4232870 () Bool)

(assert (=> b!4232870 (= e!2628259 (not (= (head!8975 p!3018) (c!719430 (regex!7898 r!4353)))))))

(declare-fun b!4232871 () Bool)

(assert (=> b!4232871 (= e!2628264 (= (head!8975 p!3018) (c!719430 (regex!7898 r!4353))))))

(declare-fun b!4232872 () Bool)

(assert (=> b!4232872 (= e!2628263 e!2628261)))

(declare-fun res!1740924 () Bool)

(assert (=> b!4232872 (=> (not res!1740924) (not e!2628261))))

(assert (=> b!4232872 (= res!1740924 (not lt!1504825))))

(assert (= (and d!1245504 c!719463) b!4232867))

(assert (= (and d!1245504 (not c!719463)) b!4232859))

(assert (= (and d!1245504 c!719462) b!4232861))

(assert (= (and d!1245504 (not c!719462)) b!4232868))

(assert (= (and b!4232868 c!719461) b!4232866))

(assert (= (and b!4232868 (not c!719461)) b!4232865))

(assert (= (and b!4232865 (not res!1740923)) b!4232869))

(assert (= (and b!4232869 res!1740921) b!4232862))

(assert (= (and b!4232862 res!1740926) b!4232860))

(assert (= (and b!4232860 res!1740922) b!4232871))

(assert (= (and b!4232869 (not res!1740928)) b!4232872))

(assert (= (and b!4232872 res!1740924) b!4232864))

(assert (= (and b!4232864 (not res!1740927)) b!4232863))

(assert (= (and b!4232863 (not res!1740925)) b!4232870))

(assert (= (or b!4232861 b!4232862 b!4232864) bm!293634))

(declare-fun m!4819133 () Bool)

(assert (=> b!4232871 m!4819133))

(declare-fun m!4819135 () Bool)

(assert (=> b!4232863 m!4819135))

(assert (=> b!4232863 m!4819135))

(declare-fun m!4819137 () Bool)

(assert (=> b!4232863 m!4819137))

(assert (=> b!4232860 m!4819135))

(assert (=> b!4232860 m!4819135))

(assert (=> b!4232860 m!4819137))

(declare-fun m!4819139 () Bool)

(assert (=> bm!293634 m!4819139))

(declare-fun m!4819141 () Bool)

(assert (=> b!4232867 m!4819141))

(assert (=> d!1245504 m!4819139))

(assert (=> d!1245504 m!4819083))

(assert (=> b!4232870 m!4819133))

(assert (=> b!4232859 m!4819133))

(assert (=> b!4232859 m!4819133))

(declare-fun m!4819143 () Bool)

(assert (=> b!4232859 m!4819143))

(assert (=> b!4232859 m!4819135))

(assert (=> b!4232859 m!4819143))

(assert (=> b!4232859 m!4819135))

(declare-fun m!4819145 () Bool)

(assert (=> b!4232859 m!4819145))

(assert (=> b!4232734 d!1245504))

(declare-fun b!4232882 () Bool)

(declare-fun res!1740939 () Bool)

(declare-fun e!2628272 () Bool)

(assert (=> b!4232882 (=> (not res!1740939) (not e!2628272))))

(assert (=> b!4232882 (= res!1740939 (= (head!8975 p!3018) (head!8975 input!3600)))))

(declare-fun d!1245508 () Bool)

(declare-fun e!2628271 () Bool)

(assert (=> d!1245508 e!2628271))

(declare-fun res!1740938 () Bool)

(assert (=> d!1245508 (=> res!1740938 e!2628271)))

(declare-fun lt!1504828 () Bool)

(assert (=> d!1245508 (= res!1740938 (not lt!1504828))))

(declare-fun e!2628273 () Bool)

(assert (=> d!1245508 (= lt!1504828 e!2628273)))

(declare-fun res!1740937 () Bool)

(assert (=> d!1245508 (=> res!1740937 e!2628273)))

(assert (=> d!1245508 (= res!1740937 ((_ is Nil!46736) p!3018))))

(assert (=> d!1245508 (= (isPrefix!4713 p!3018 input!3600) lt!1504828)))

(declare-fun b!4232881 () Bool)

(assert (=> b!4232881 (= e!2628273 e!2628272)))

(declare-fun res!1740940 () Bool)

(assert (=> b!4232881 (=> (not res!1740940) (not e!2628272))))

(assert (=> b!4232881 (= res!1740940 (not ((_ is Nil!46736) input!3600)))))

(declare-fun b!4232883 () Bool)

(assert (=> b!4232883 (= e!2628272 (isPrefix!4713 (tail!6822 p!3018) (tail!6822 input!3600)))))

(declare-fun b!4232884 () Bool)

(assert (=> b!4232884 (= e!2628271 (>= (size!34263 input!3600) (size!34263 p!3018)))))

(assert (= (and d!1245508 (not res!1740937)) b!4232881))

(assert (= (and b!4232881 res!1740940) b!4232882))

(assert (= (and b!4232882 res!1740939) b!4232883))

(assert (= (and d!1245508 (not res!1740938)) b!4232884))

(assert (=> b!4232882 m!4819133))

(declare-fun m!4819147 () Bool)

(assert (=> b!4232882 m!4819147))

(assert (=> b!4232883 m!4819135))

(declare-fun m!4819149 () Bool)

(assert (=> b!4232883 m!4819149))

(assert (=> b!4232883 m!4819135))

(assert (=> b!4232883 m!4819149))

(declare-fun m!4819151 () Bool)

(assert (=> b!4232883 m!4819151))

(assert (=> b!4232884 m!4819093))

(assert (=> b!4232884 m!4819099))

(assert (=> b!4232739 d!1245508))

(declare-fun d!1245510 () Bool)

(declare-fun e!2628296 () Bool)

(assert (=> d!1245510 e!2628296))

(declare-fun res!1740976 () Bool)

(assert (=> d!1245510 (=> res!1740976 e!2628296)))

(declare-fun lt!1504857 () Option!10044)

(declare-fun isEmpty!27627 (Option!10044) Bool)

(assert (=> d!1245510 (= res!1740976 (isEmpty!27627 lt!1504857))))

(declare-fun e!2628297 () Option!10044)

(assert (=> d!1245510 (= lt!1504857 e!2628297)))

(declare-fun c!719471 () Bool)

(declare-fun lt!1504856 () tuple2!44368)

(assert (=> d!1245510 (= c!719471 (isEmpty!27626 (_1!25318 lt!1504856)))))

(declare-fun findLongestMatch!1603 (Regex!12803 List!46860) tuple2!44368)

(assert (=> d!1245510 (= lt!1504856 (findLongestMatch!1603 (regex!7898 r!4353) input!3600))))

(assert (=> d!1245510 (ruleValid!3594 thiss!26814 r!4353)))

(assert (=> d!1245510 (= (maxPrefixOneRule!3438 thiss!26814 r!4353 input!3600) lt!1504857)))

(declare-fun b!4232930 () Bool)

(declare-fun e!2628294 () Bool)

(assert (=> b!4232930 (= e!2628296 e!2628294)))

(declare-fun res!1740979 () Bool)

(assert (=> b!4232930 (=> (not res!1740979) (not e!2628294))))

(declare-fun list!16875 (BalanceConc!27812) List!46860)

(declare-fun charsOf!5264 (Token!14426) BalanceConc!27812)

(declare-fun get!15205 (Option!10044) tuple2!44366)

(assert (=> b!4232930 (= res!1740979 (matchR!6435 (regex!7898 r!4353) (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857))))))))

(declare-fun b!4232931 () Bool)

(assert (=> b!4232931 (= e!2628294 (= (size!34262 (_1!25317 (get!15205 lt!1504857))) (size!34263 (originalCharacters!8244 (_1!25317 (get!15205 lt!1504857))))))))

(declare-fun b!4232932 () Bool)

(declare-fun res!1740977 () Bool)

(assert (=> b!4232932 (=> (not res!1740977) (not e!2628294))))

(declare-fun apply!10740 (TokenValueInjection!15684 BalanceConc!27812) TokenValue!8128)

(declare-fun seqFromList!5800 (List!46860) BalanceConc!27812)

(assert (=> b!4232932 (= res!1740977 (= (value!245589 (_1!25317 (get!15205 lt!1504857))) (apply!10740 (transformation!7898 (rule!11022 (_1!25317 (get!15205 lt!1504857)))) (seqFromList!5800 (originalCharacters!8244 (_1!25317 (get!15205 lt!1504857)))))))))

(declare-fun b!4232933 () Bool)

(declare-fun res!1740980 () Bool)

(assert (=> b!4232933 (=> (not res!1740980) (not e!2628294))))

(assert (=> b!4232933 (= res!1740980 (< (size!34263 (_2!25317 (get!15205 lt!1504857))) (size!34263 input!3600)))))

(declare-fun b!4232934 () Bool)

(declare-fun e!2628295 () Bool)

(assert (=> b!4232934 (= e!2628295 (matchR!6435 (regex!7898 r!4353) (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600)))))))

(declare-fun b!4232935 () Bool)

(assert (=> b!4232935 (= e!2628297 None!10043)))

(declare-fun b!4232936 () Bool)

(declare-fun res!1740982 () Bool)

(assert (=> b!4232936 (=> (not res!1740982) (not e!2628294))))

(assert (=> b!4232936 (= res!1740982 (= (rule!11022 (_1!25317 (get!15205 lt!1504857))) r!4353))))

(declare-fun b!4232937 () Bool)

(declare-fun size!34265 (BalanceConc!27812) Int)

(assert (=> b!4232937 (= e!2628297 (Some!10043 (tuple2!44367 (Token!14427 (apply!10740 (transformation!7898 r!4353) (seqFromList!5800 (_1!25318 lt!1504856))) r!4353 (size!34265 (seqFromList!5800 (_1!25318 lt!1504856))) (_1!25318 lt!1504856)) (_2!25318 lt!1504856))))))

(declare-fun lt!1504854 () Unit!65887)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1663 (Regex!12803 List!46860) Unit!65887)

(assert (=> b!4232937 (= lt!1504854 (longestMatchIsAcceptedByMatchOrIsEmpty!1663 (regex!7898 r!4353) input!3600))))

(declare-fun res!1740978 () Bool)

(assert (=> b!4232937 (= res!1740978 (isEmpty!27626 (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600)))))))

(assert (=> b!4232937 (=> res!1740978 e!2628295)))

(assert (=> b!4232937 e!2628295))

(declare-fun lt!1504855 () Unit!65887)

(assert (=> b!4232937 (= lt!1504855 lt!1504854)))

(declare-fun lt!1504858 () Unit!65887)

(declare-fun lemmaSemiInverse!2531 (TokenValueInjection!15684 BalanceConc!27812) Unit!65887)

(assert (=> b!4232937 (= lt!1504858 (lemmaSemiInverse!2531 (transformation!7898 r!4353) (seqFromList!5800 (_1!25318 lt!1504856))))))

(declare-fun b!4232938 () Bool)

(declare-fun res!1740981 () Bool)

(assert (=> b!4232938 (=> (not res!1740981) (not e!2628294))))

(declare-fun ++!11919 (List!46860 List!46860) List!46860)

(assert (=> b!4232938 (= res!1740981 (= (++!11919 (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857)))) (_2!25317 (get!15205 lt!1504857))) input!3600))))

(assert (= (and d!1245510 c!719471) b!4232935))

(assert (= (and d!1245510 (not c!719471)) b!4232937))

(assert (= (and b!4232937 (not res!1740978)) b!4232934))

(assert (= (and d!1245510 (not res!1740976)) b!4232930))

(assert (= (and b!4232930 res!1740979) b!4232938))

(assert (= (and b!4232938 res!1740981) b!4232933))

(assert (= (and b!4232933 res!1740980) b!4232936))

(assert (= (and b!4232936 res!1740982) b!4232932))

(assert (= (and b!4232932 res!1740977) b!4232931))

(assert (=> b!4232934 m!4819097))

(assert (=> b!4232934 m!4819093))

(assert (=> b!4232934 m!4819097))

(assert (=> b!4232934 m!4819093))

(declare-fun m!4819193 () Bool)

(assert (=> b!4232934 m!4819193))

(declare-fun m!4819195 () Bool)

(assert (=> b!4232934 m!4819195))

(declare-fun m!4819197 () Bool)

(assert (=> b!4232933 m!4819197))

(declare-fun m!4819199 () Bool)

(assert (=> b!4232933 m!4819199))

(assert (=> b!4232933 m!4819093))

(declare-fun m!4819201 () Bool)

(assert (=> d!1245510 m!4819201))

(declare-fun m!4819203 () Bool)

(assert (=> d!1245510 m!4819203))

(declare-fun m!4819205 () Bool)

(assert (=> d!1245510 m!4819205))

(assert (=> d!1245510 m!4819085))

(declare-fun m!4819207 () Bool)

(assert (=> b!4232937 m!4819207))

(declare-fun m!4819209 () Bool)

(assert (=> b!4232937 m!4819209))

(declare-fun m!4819211 () Bool)

(assert (=> b!4232937 m!4819211))

(assert (=> b!4232937 m!4819209))

(declare-fun m!4819213 () Bool)

(assert (=> b!4232937 m!4819213))

(assert (=> b!4232937 m!4819209))

(declare-fun m!4819215 () Bool)

(assert (=> b!4232937 m!4819215))

(assert (=> b!4232937 m!4819093))

(assert (=> b!4232937 m!4819097))

(assert (=> b!4232937 m!4819093))

(assert (=> b!4232937 m!4819193))

(assert (=> b!4232937 m!4819209))

(declare-fun m!4819217 () Bool)

(assert (=> b!4232937 m!4819217))

(assert (=> b!4232937 m!4819097))

(assert (=> b!4232938 m!4819197))

(declare-fun m!4819219 () Bool)

(assert (=> b!4232938 m!4819219))

(assert (=> b!4232938 m!4819219))

(declare-fun m!4819221 () Bool)

(assert (=> b!4232938 m!4819221))

(assert (=> b!4232938 m!4819221))

(declare-fun m!4819223 () Bool)

(assert (=> b!4232938 m!4819223))

(assert (=> b!4232936 m!4819197))

(assert (=> b!4232930 m!4819197))

(assert (=> b!4232930 m!4819219))

(assert (=> b!4232930 m!4819219))

(assert (=> b!4232930 m!4819221))

(assert (=> b!4232930 m!4819221))

(declare-fun m!4819225 () Bool)

(assert (=> b!4232930 m!4819225))

(assert (=> b!4232932 m!4819197))

(declare-fun m!4819227 () Bool)

(assert (=> b!4232932 m!4819227))

(assert (=> b!4232932 m!4819227))

(declare-fun m!4819229 () Bool)

(assert (=> b!4232932 m!4819229))

(assert (=> b!4232931 m!4819197))

(declare-fun m!4819231 () Bool)

(assert (=> b!4232931 m!4819231))

(assert (=> b!4232733 d!1245510))

(declare-fun d!1245514 () Bool)

(declare-fun res!1740987 () Bool)

(declare-fun e!2628310 () Bool)

(assert (=> d!1245514 (=> (not res!1740987) (not e!2628310))))

(assert (=> d!1245514 (= res!1740987 (validRegex!5819 (regex!7898 r!4353)))))

(assert (=> d!1245514 (= (ruleValid!3594 thiss!26814 r!4353) e!2628310)))

(declare-fun b!4232963 () Bool)

(declare-fun res!1740988 () Bool)

(assert (=> b!4232963 (=> (not res!1740988) (not e!2628310))))

(assert (=> b!4232963 (= res!1740988 (not (nullable!4512 (regex!7898 r!4353))))))

(declare-fun b!4232966 () Bool)

(assert (=> b!4232966 (= e!2628310 (not (= (tag!8762 r!4353) (String!54515 ""))))))

(assert (= (and d!1245514 res!1740987) b!4232963))

(assert (= (and b!4232963 res!1740988) b!4232966))

(assert (=> d!1245514 m!4819083))

(assert (=> b!4232963 m!4819141))

(assert (=> b!4232730 d!1245514))

(declare-fun b!4233089 () Bool)

(declare-fun e!2628395 () Unit!65887)

(declare-fun Unit!65892 () Unit!65887)

(assert (=> b!4233089 (= e!2628395 Unit!65892)))

(declare-fun b!4233090 () Bool)

(declare-fun e!2628394 () tuple2!44368)

(declare-fun e!2628393 () tuple2!44368)

(assert (=> b!4233090 (= e!2628394 e!2628393)))

(declare-fun c!719509 () Bool)

(assert (=> b!4233090 (= c!719509 (= lt!1504807 (size!34263 input!3600)))))

(declare-fun b!4233091 () Bool)

(declare-fun e!2628389 () Bool)

(declare-fun lt!1505012 () tuple2!44368)

(assert (=> b!4233091 (= e!2628389 (>= (size!34263 (_1!25318 lt!1505012)) (size!34263 Nil!46736)))))

(declare-fun bm!293684 () Bool)

(declare-fun call!293690 () Unit!65887)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1037 (List!46860 List!46860 List!46860) Unit!65887)

(assert (=> bm!293684 (= call!293690 (lemmaIsPrefixSameLengthThenSameList!1037 input!3600 Nil!46736 input!3600))))

(declare-fun b!4233092 () Bool)

(declare-fun e!2628388 () tuple2!44368)

(declare-fun e!2628390 () tuple2!44368)

(assert (=> b!4233092 (= e!2628388 e!2628390)))

(declare-fun lt!1505025 () tuple2!44368)

(declare-fun call!293696 () tuple2!44368)

(assert (=> b!4233092 (= lt!1505025 call!293696)))

(declare-fun c!719510 () Bool)

(assert (=> b!4233092 (= c!719510 (isEmpty!27626 (_1!25318 lt!1505025)))))

(declare-fun bm!293685 () Bool)

(declare-fun call!293694 () Regex!12803)

(declare-fun call!293695 () C!25804)

(assert (=> bm!293685 (= call!293694 (derivativeStep!3845 (regex!7898 r!4353) call!293695))))

(declare-fun bm!293686 () Bool)

(declare-fun call!293692 () Unit!65887)

(declare-fun lemmaIsPrefixRefl!3110 (List!46860 List!46860) Unit!65887)

(assert (=> bm!293686 (= call!293692 (lemmaIsPrefixRefl!3110 input!3600 input!3600))))

(declare-fun b!4233093 () Bool)

(assert (=> b!4233093 (= e!2628390 (tuple2!44369 Nil!46736 input!3600))))

(declare-fun bm!293687 () Bool)

(assert (=> bm!293687 (= call!293695 (head!8975 input!3600))))

(declare-fun lt!1505018 () List!46860)

(declare-fun bm!293688 () Bool)

(declare-fun call!293689 () List!46860)

(assert (=> bm!293688 (= call!293696 (findLongestMatchInner!1700 call!293694 lt!1505018 (+ lt!1504807 1) call!293689 input!3600 (size!34263 input!3600)))))

(declare-fun b!4233094 () Bool)

(declare-fun Unit!65893 () Unit!65887)

(assert (=> b!4233094 (= e!2628395 Unit!65893)))

(declare-fun lt!1505019 () Unit!65887)

(assert (=> b!4233094 (= lt!1505019 call!293692)))

(declare-fun call!293693 () Bool)

(assert (=> b!4233094 call!293693))

(declare-fun lt!1505008 () Unit!65887)

(assert (=> b!4233094 (= lt!1505008 lt!1505019)))

(declare-fun lt!1505023 () Unit!65887)

(assert (=> b!4233094 (= lt!1505023 call!293690)))

(assert (=> b!4233094 (= input!3600 Nil!46736)))

(declare-fun lt!1505007 () Unit!65887)

(assert (=> b!4233094 (= lt!1505007 lt!1505023)))

(assert (=> b!4233094 false))

(declare-fun b!4233095 () Bool)

(declare-fun c!719514 () Bool)

(declare-fun call!293691 () Bool)

(assert (=> b!4233095 (= c!719514 call!293691)))

(declare-fun lt!1505016 () Unit!65887)

(declare-fun lt!1505020 () Unit!65887)

(assert (=> b!4233095 (= lt!1505016 lt!1505020)))

(assert (=> b!4233095 (= input!3600 Nil!46736)))

(assert (=> b!4233095 (= lt!1505020 call!293690)))

(declare-fun lt!1505028 () Unit!65887)

(declare-fun lt!1505014 () Unit!65887)

(assert (=> b!4233095 (= lt!1505028 lt!1505014)))

(assert (=> b!4233095 call!293693))

(assert (=> b!4233095 (= lt!1505014 call!293692)))

(declare-fun e!2628392 () tuple2!44368)

(assert (=> b!4233095 (= e!2628393 e!2628392)))

(declare-fun b!4233096 () Bool)

(assert (=> b!4233096 (= e!2628392 (tuple2!44369 Nil!46736 input!3600))))

(declare-fun bm!293689 () Bool)

(assert (=> bm!293689 (= call!293689 (tail!6822 input!3600))))

(declare-fun b!4233097 () Bool)

(assert (=> b!4233097 (= e!2628388 call!293696)))

(declare-fun b!4233098 () Bool)

(assert (=> b!4233098 (= e!2628394 (tuple2!44369 Nil!46736 input!3600))))

(declare-fun b!4233099 () Bool)

(assert (=> b!4233099 (= e!2628392 (tuple2!44369 Nil!46736 Nil!46736))))

(declare-fun b!4233100 () Bool)

(declare-fun c!719511 () Bool)

(assert (=> b!4233100 (= c!719511 call!293691)))

(declare-fun lt!1505021 () Unit!65887)

(declare-fun lt!1505029 () Unit!65887)

(assert (=> b!4233100 (= lt!1505021 lt!1505029)))

(declare-fun lt!1505006 () C!25804)

(declare-fun lt!1505009 () List!46860)

(assert (=> b!4233100 (= (++!11919 (++!11919 Nil!46736 (Cons!46736 lt!1505006 Nil!46736)) lt!1505009) input!3600)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1309 (List!46860 C!25804 List!46860 List!46860) Unit!65887)

(assert (=> b!4233100 (= lt!1505029 (lemmaMoveElementToOtherListKeepsConcatEq!1309 Nil!46736 lt!1505006 lt!1505009 input!3600))))

(assert (=> b!4233100 (= lt!1505009 (tail!6822 input!3600))))

(assert (=> b!4233100 (= lt!1505006 (head!8975 input!3600))))

(declare-fun lt!1505010 () Unit!65887)

(declare-fun lt!1505024 () Unit!65887)

(assert (=> b!4233100 (= lt!1505010 lt!1505024)))

(declare-fun getSuffix!2866 (List!46860 List!46860) List!46860)

(assert (=> b!4233100 (isPrefix!4713 (++!11919 Nil!46736 (Cons!46736 (head!8975 (getSuffix!2866 input!3600 Nil!46736)) Nil!46736)) input!3600)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!691 (List!46860 List!46860) Unit!65887)

(assert (=> b!4233100 (= lt!1505024 (lemmaAddHeadSuffixToPrefixStillPrefix!691 Nil!46736 input!3600))))

(declare-fun lt!1505022 () Unit!65887)

(declare-fun lt!1505005 () Unit!65887)

(assert (=> b!4233100 (= lt!1505022 lt!1505005)))

(assert (=> b!4233100 (= lt!1505005 (lemmaAddHeadSuffixToPrefixStillPrefix!691 Nil!46736 input!3600))))

(assert (=> b!4233100 (= lt!1505018 (++!11919 Nil!46736 (Cons!46736 (head!8975 input!3600) Nil!46736)))))

(declare-fun lt!1505017 () Unit!65887)

(assert (=> b!4233100 (= lt!1505017 e!2628395)))

(declare-fun c!719513 () Bool)

(assert (=> b!4233100 (= c!719513 (= (size!34263 Nil!46736) (size!34263 input!3600)))))

(declare-fun lt!1505030 () Unit!65887)

(declare-fun lt!1505011 () Unit!65887)

(assert (=> b!4233100 (= lt!1505030 lt!1505011)))

(assert (=> b!4233100 (<= (size!34263 Nil!46736) (size!34263 input!3600))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!603 (List!46860 List!46860) Unit!65887)

(assert (=> b!4233100 (= lt!1505011 (lemmaIsPrefixThenSmallerEqSize!603 Nil!46736 input!3600))))

(assert (=> b!4233100 (= e!2628393 e!2628388)))

(declare-fun b!4233101 () Bool)

(declare-fun e!2628391 () Bool)

(assert (=> b!4233101 (= e!2628391 e!2628389)))

(declare-fun res!1741039 () Bool)

(assert (=> b!4233101 (=> res!1741039 e!2628389)))

(assert (=> b!4233101 (= res!1741039 (isEmpty!27626 (_1!25318 lt!1505012)))))

(declare-fun bm!293690 () Bool)

(assert (=> bm!293690 (= call!293691 (nullable!4512 (regex!7898 r!4353)))))

(declare-fun bm!293691 () Bool)

(assert (=> bm!293691 (= call!293693 (isPrefix!4713 input!3600 input!3600))))

(declare-fun d!1245516 () Bool)

(assert (=> d!1245516 e!2628391))

(declare-fun res!1741040 () Bool)

(assert (=> d!1245516 (=> (not res!1741040) (not e!2628391))))

(assert (=> d!1245516 (= res!1741040 (= (++!11919 (_1!25318 lt!1505012) (_2!25318 lt!1505012)) input!3600))))

(assert (=> d!1245516 (= lt!1505012 e!2628394)))

(declare-fun c!719512 () Bool)

(declare-fun lostCause!1065 (Regex!12803) Bool)

(assert (=> d!1245516 (= c!719512 (lostCause!1065 (regex!7898 r!4353)))))

(declare-fun lt!1505027 () Unit!65887)

(declare-fun Unit!65894 () Unit!65887)

(assert (=> d!1245516 (= lt!1505027 Unit!65894)))

(assert (=> d!1245516 (= (getSuffix!2866 input!3600 Nil!46736) input!3600)))

(declare-fun lt!1505026 () Unit!65887)

(declare-fun lt!1505004 () Unit!65887)

(assert (=> d!1245516 (= lt!1505026 lt!1505004)))

(declare-fun lt!1505015 () List!46860)

(assert (=> d!1245516 (= input!3600 lt!1505015)))

(declare-fun lemmaSamePrefixThenSameSuffix!2282 (List!46860 List!46860 List!46860 List!46860 List!46860) Unit!65887)

(assert (=> d!1245516 (= lt!1505004 (lemmaSamePrefixThenSameSuffix!2282 Nil!46736 input!3600 Nil!46736 lt!1505015 input!3600))))

(assert (=> d!1245516 (= lt!1505015 (getSuffix!2866 input!3600 Nil!46736))))

(declare-fun lt!1505013 () Unit!65887)

(declare-fun lt!1505031 () Unit!65887)

(assert (=> d!1245516 (= lt!1505013 lt!1505031)))

(assert (=> d!1245516 (isPrefix!4713 Nil!46736 (++!11919 Nil!46736 input!3600))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3102 (List!46860 List!46860) Unit!65887)

(assert (=> d!1245516 (= lt!1505031 (lemmaConcatTwoListThenFirstIsPrefix!3102 Nil!46736 input!3600))))

(assert (=> d!1245516 (validRegex!5819 (regex!7898 r!4353))))

(assert (=> d!1245516 (= (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 lt!1504807 input!3600 input!3600 (size!34263 input!3600)) lt!1505012)))

(declare-fun b!4233102 () Bool)

(assert (=> b!4233102 (= e!2628390 lt!1505025)))

(assert (= (and d!1245516 c!719512) b!4233098))

(assert (= (and d!1245516 (not c!719512)) b!4233090))

(assert (= (and b!4233090 c!719509) b!4233095))

(assert (= (and b!4233090 (not c!719509)) b!4233100))

(assert (= (and b!4233095 c!719514) b!4233099))

(assert (= (and b!4233095 (not c!719514)) b!4233096))

(assert (= (and b!4233100 c!719513) b!4233094))

(assert (= (and b!4233100 (not c!719513)) b!4233089))

(assert (= (and b!4233100 c!719511) b!4233092))

(assert (= (and b!4233100 (not c!719511)) b!4233097))

(assert (= (and b!4233092 c!719510) b!4233093))

(assert (= (and b!4233092 (not c!719510)) b!4233102))

(assert (= (or b!4233092 b!4233097) bm!293687))

(assert (= (or b!4233092 b!4233097) bm!293689))

(assert (= (or b!4233092 b!4233097) bm!293685))

(assert (= (or b!4233092 b!4233097) bm!293688))

(assert (= (or b!4233095 b!4233094) bm!293684))

(assert (= (or b!4233095 b!4233094) bm!293686))

(assert (= (or b!4233095 b!4233094) bm!293691))

(assert (= (or b!4233095 b!4233100) bm!293690))

(assert (= (and d!1245516 res!1741040) b!4233101))

(assert (= (and b!4233101 (not res!1741039)) b!4233091))

(declare-fun m!4819305 () Bool)

(assert (=> d!1245516 m!4819305))

(declare-fun m!4819307 () Bool)

(assert (=> d!1245516 m!4819307))

(declare-fun m!4819309 () Bool)

(assert (=> d!1245516 m!4819309))

(declare-fun m!4819311 () Bool)

(assert (=> d!1245516 m!4819311))

(declare-fun m!4819313 () Bool)

(assert (=> d!1245516 m!4819313))

(declare-fun m!4819315 () Bool)

(assert (=> d!1245516 m!4819315))

(assert (=> d!1245516 m!4819083))

(assert (=> d!1245516 m!4819305))

(declare-fun m!4819317 () Bool)

(assert (=> d!1245516 m!4819317))

(assert (=> bm!293690 m!4819141))

(declare-fun m!4819319 () Bool)

(assert (=> b!4233101 m!4819319))

(declare-fun m!4819321 () Bool)

(assert (=> bm!293684 m!4819321))

(declare-fun m!4819323 () Bool)

(assert (=> bm!293691 m!4819323))

(assert (=> bm!293687 m!4819147))

(declare-fun m!4819325 () Bool)

(assert (=> b!4233091 m!4819325))

(assert (=> b!4233091 m!4819097))

(declare-fun m!4819327 () Bool)

(assert (=> bm!293685 m!4819327))

(declare-fun m!4819329 () Bool)

(assert (=> bm!293686 m!4819329))

(declare-fun m!4819331 () Bool)

(assert (=> b!4233100 m!4819331))

(declare-fun m!4819333 () Bool)

(assert (=> b!4233100 m!4819333))

(declare-fun m!4819335 () Bool)

(assert (=> b!4233100 m!4819335))

(declare-fun m!4819337 () Bool)

(assert (=> b!4233100 m!4819337))

(declare-fun m!4819339 () Bool)

(assert (=> b!4233100 m!4819339))

(assert (=> b!4233100 m!4819337))

(declare-fun m!4819341 () Bool)

(assert (=> b!4233100 m!4819341))

(assert (=> b!4233100 m!4819313))

(declare-fun m!4819343 () Bool)

(assert (=> b!4233100 m!4819343))

(assert (=> b!4233100 m!4819097))

(assert (=> b!4233100 m!4819313))

(assert (=> b!4233100 m!4819093))

(assert (=> b!4233100 m!4819149))

(declare-fun m!4819345 () Bool)

(assert (=> b!4233100 m!4819345))

(assert (=> b!4233100 m!4819335))

(declare-fun m!4819347 () Bool)

(assert (=> b!4233100 m!4819347))

(assert (=> b!4233100 m!4819147))

(assert (=> bm!293688 m!4819093))

(declare-fun m!4819349 () Bool)

(assert (=> bm!293688 m!4819349))

(declare-fun m!4819351 () Bool)

(assert (=> b!4233092 m!4819351))

(assert (=> bm!293689 m!4819149))

(assert (=> b!4232740 d!1245516))

(declare-fun d!1245532 () Bool)

(declare-fun lt!1505032 () Int)

(assert (=> d!1245532 (>= lt!1505032 0)))

(declare-fun e!2628396 () Int)

(assert (=> d!1245532 (= lt!1505032 e!2628396)))

(declare-fun c!719515 () Bool)

(assert (=> d!1245532 (= c!719515 ((_ is Nil!46736) input!3600))))

(assert (=> d!1245532 (= (size!34263 input!3600) lt!1505032)))

(declare-fun b!4233103 () Bool)

(assert (=> b!4233103 (= e!2628396 0)))

(declare-fun b!4233104 () Bool)

(assert (=> b!4233104 (= e!2628396 (+ 1 (size!34263 (t!349547 input!3600))))))

(assert (= (and d!1245532 c!719515) b!4233103))

(assert (= (and d!1245532 (not c!719515)) b!4233104))

(declare-fun m!4819353 () Bool)

(assert (=> b!4233104 m!4819353))

(assert (=> b!4232740 d!1245532))

(declare-fun d!1245534 () Bool)

(assert (=> d!1245534 (= (inv!61445 (tag!8762 r!4353)) (= (mod (str.len (value!245588 (tag!8762 r!4353))) 2) 0))))

(assert (=> b!4232742 d!1245534))

(declare-fun d!1245536 () Bool)

(declare-fun res!1741043 () Bool)

(declare-fun e!2628399 () Bool)

(assert (=> d!1245536 (=> (not res!1741043) (not e!2628399))))

(declare-fun semiInverseModEq!3437 (Int Int) Bool)

(assert (=> d!1245536 (= res!1741043 (semiInverseModEq!3437 (toChars!10493 (transformation!7898 r!4353)) (toValue!10634 (transformation!7898 r!4353))))))

(assert (=> d!1245536 (= (inv!61447 (transformation!7898 r!4353)) e!2628399)))

(declare-fun b!4233107 () Bool)

(declare-fun equivClasses!3336 (Int Int) Bool)

(assert (=> b!4233107 (= e!2628399 (equivClasses!3336 (toChars!10493 (transformation!7898 r!4353)) (toValue!10634 (transformation!7898 r!4353))))))

(assert (= (and d!1245536 res!1741043) b!4233107))

(declare-fun m!4819355 () Bool)

(assert (=> d!1245536 m!4819355))

(declare-fun m!4819357 () Bool)

(assert (=> b!4233107 m!4819357))

(assert (=> b!4232742 d!1245536))

(declare-fun b!4233109 () Bool)

(declare-fun res!1741046 () Bool)

(declare-fun e!2628401 () Bool)

(assert (=> b!4233109 (=> (not res!1741046) (not e!2628401))))

(assert (=> b!4233109 (= res!1741046 (= (head!8975 Nil!46736) (head!8975 input!3600)))))

(declare-fun d!1245538 () Bool)

(declare-fun e!2628400 () Bool)

(assert (=> d!1245538 e!2628400))

(declare-fun res!1741045 () Bool)

(assert (=> d!1245538 (=> res!1741045 e!2628400)))

(declare-fun lt!1505033 () Bool)

(assert (=> d!1245538 (= res!1741045 (not lt!1505033))))

(declare-fun e!2628402 () Bool)

(assert (=> d!1245538 (= lt!1505033 e!2628402)))

(declare-fun res!1741044 () Bool)

(assert (=> d!1245538 (=> res!1741044 e!2628402)))

(assert (=> d!1245538 (= res!1741044 ((_ is Nil!46736) Nil!46736))))

(assert (=> d!1245538 (= (isPrefix!4713 Nil!46736 input!3600) lt!1505033)))

(declare-fun b!4233108 () Bool)

(assert (=> b!4233108 (= e!2628402 e!2628401)))

(declare-fun res!1741047 () Bool)

(assert (=> b!4233108 (=> (not res!1741047) (not e!2628401))))

(assert (=> b!4233108 (= res!1741047 (not ((_ is Nil!46736) input!3600)))))

(declare-fun b!4233110 () Bool)

(assert (=> b!4233110 (= e!2628401 (isPrefix!4713 (tail!6822 Nil!46736) (tail!6822 input!3600)))))

(declare-fun b!4233111 () Bool)

(assert (=> b!4233111 (= e!2628400 (>= (size!34263 input!3600) (size!34263 Nil!46736)))))

(assert (= (and d!1245538 (not res!1741044)) b!4233108))

(assert (= (and b!4233108 res!1741047) b!4233109))

(assert (= (and b!4233109 res!1741046) b!4233110))

(assert (= (and d!1245538 (not res!1741045)) b!4233111))

(declare-fun m!4819359 () Bool)

(assert (=> b!4233109 m!4819359))

(assert (=> b!4233109 m!4819147))

(declare-fun m!4819361 () Bool)

(assert (=> b!4233110 m!4819361))

(assert (=> b!4233110 m!4819149))

(assert (=> b!4233110 m!4819361))

(assert (=> b!4233110 m!4819149))

(declare-fun m!4819363 () Bool)

(assert (=> b!4233110 m!4819363))

(assert (=> b!4233111 m!4819093))

(assert (=> b!4233111 m!4819097))

(assert (=> b!4232731 d!1245538))

(assert (=> b!4232741 d!1245504))

(declare-fun d!1245540 () Bool)

(declare-fun e!2628405 () Bool)

(assert (=> d!1245540 e!2628405))

(declare-fun res!1741050 () Bool)

(assert (=> d!1245540 (=> res!1741050 e!2628405)))

(assert (=> d!1245540 (= res!1741050 (= p!3018 Nil!46736))))

(declare-fun lt!1505036 () Unit!65887)

(declare-fun choose!25926 (Regex!12803 List!46860 List!46860 List!46860) Unit!65887)

(assert (=> d!1245540 (= lt!1505036 (choose!25926 (regex!7898 r!4353) input!3600 Nil!46736 p!3018))))

(assert (=> d!1245540 (validRegex!5819 (regex!7898 r!4353))))

(assert (=> d!1245540 (= (longestMatchNoBiggerStringMatch!13 (regex!7898 r!4353) input!3600 Nil!46736 p!3018) lt!1505036)))

(declare-fun b!4233114 () Bool)

(assert (=> b!4233114 (= e!2628405 (not (matchR!6435 (regex!7898 r!4353) p!3018)))))

(assert (= (and d!1245540 (not res!1741050)) b!4233114))

(declare-fun m!4819365 () Bool)

(assert (=> d!1245540 m!4819365))

(assert (=> d!1245540 m!4819083))

(assert (=> b!4233114 m!4819079))

(assert (=> b!4232741 d!1245540))

(declare-fun b!4233119 () Bool)

(declare-fun e!2628408 () Bool)

(declare-fun tp!1296426 () Bool)

(assert (=> b!4233119 (= e!2628408 (and tp_is_empty!22541 tp!1296426))))

(assert (=> b!4232735 (= tp!1296402 e!2628408)))

(assert (= (and b!4232735 ((_ is Cons!46736) (t!349547 input!3600))) b!4233119))

(declare-fun b!4233130 () Bool)

(declare-fun e!2628411 () Bool)

(assert (=> b!4233130 (= e!2628411 tp_is_empty!22541)))

(declare-fun b!4233131 () Bool)

(declare-fun tp!1296439 () Bool)

(declare-fun tp!1296441 () Bool)

(assert (=> b!4233131 (= e!2628411 (and tp!1296439 tp!1296441))))

(assert (=> b!4232742 (= tp!1296403 e!2628411)))

(declare-fun b!4233132 () Bool)

(declare-fun tp!1296440 () Bool)

(assert (=> b!4233132 (= e!2628411 tp!1296440)))

(declare-fun b!4233133 () Bool)

(declare-fun tp!1296437 () Bool)

(declare-fun tp!1296438 () Bool)

(assert (=> b!4233133 (= e!2628411 (and tp!1296437 tp!1296438))))

(assert (= (and b!4232742 ((_ is ElementMatch!12803) (regex!7898 r!4353))) b!4233130))

(assert (= (and b!4232742 ((_ is Concat!20932) (regex!7898 r!4353))) b!4233131))

(assert (= (and b!4232742 ((_ is Star!12803) (regex!7898 r!4353))) b!4233132))

(assert (= (and b!4232742 ((_ is Union!12803) (regex!7898 r!4353))) b!4233133))

(declare-fun b!4233134 () Bool)

(declare-fun e!2628412 () Bool)

(declare-fun tp!1296442 () Bool)

(assert (=> b!4233134 (= e!2628412 (and tp_is_empty!22541 tp!1296442))))

(assert (=> b!4232736 (= tp!1296401 e!2628412)))

(assert (= (and b!4232736 ((_ is Cons!46736) (t!349547 p!3018))) b!4233134))

(check-sat (not b!4232934) (not b!4232758) (not bm!293688) (not b!4233109) (not b!4232756) (not b!4232937) tp_is_empty!22541 (not b!4233107) (not b!4233101) (not d!1245516) (not b!4233092) (not b!4233133) (not d!1245510) (not b!4233131) (not bm!293687) (not bm!293689) (not b_next!125721) (not b!4232859) (not b!4232882) (not b!4232963) (not bm!293685) (not b!4232867) (not b!4232870) (not bm!293686) (not b!4233134) (not d!1245540) (not bm!293684) (not b_next!125719) (not d!1245514) (not b!4233132) (not b!4232933) (not b!4233100) (not bm!293630) b_and!334345 (not b!4233114) (not b!4232883) (not b!4232931) b_and!334347 (not b!4233111) (not b!4232863) (not b!4232936) (not d!1245536) (not bm!293634) (not b!4232938) (not b!4233091) (not b!4233104) (not b!4232871) (not b!4233110) (not b!4233119) (not d!1245504) (not b!4232825) (not b!4232932) (not bm!293690) (not b!4232884) (not bm!293691) (not b!4232860) (not b!4232930) (not bm!293631))
(check-sat b_and!334345 b_and!334347 (not b_next!125721) (not b_next!125719))
(get-model)

(declare-fun d!1245542 () Bool)

(assert (=> d!1245542 (= (isEmpty!27626 (_1!25318 lt!1505012)) ((_ is Nil!46736) (_1!25318 lt!1505012)))))

(assert (=> b!4233101 d!1245542))

(declare-fun d!1245544 () Bool)

(assert (not d!1245544))

(assert (=> b!4233110 d!1245544))

(declare-fun d!1245546 () Bool)

(assert (not d!1245546))

(assert (=> b!4233110 d!1245546))

(declare-fun d!1245548 () Bool)

(assert (=> d!1245548 (= (tail!6822 input!3600) (t!349547 input!3600))))

(assert (=> b!4233110 d!1245548))

(declare-fun d!1245550 () Bool)

(assert (=> d!1245550 (= (head!8975 p!3018) (h!52156 p!3018))))

(assert (=> b!4232871 d!1245550))

(declare-fun d!1245552 () Bool)

(assert (=> d!1245552 (= (isEmpty!27627 lt!1504857) (not ((_ is Some!10043) lt!1504857)))))

(assert (=> d!1245510 d!1245552))

(declare-fun d!1245554 () Bool)

(assert (=> d!1245554 (= (isEmpty!27626 (_1!25318 lt!1504856)) ((_ is Nil!46736) (_1!25318 lt!1504856)))))

(assert (=> d!1245510 d!1245554))

(declare-fun d!1245556 () Bool)

(declare-fun lt!1505059 () tuple2!44368)

(assert (=> d!1245556 (= (++!11919 (_1!25318 lt!1505059) (_2!25318 lt!1505059)) input!3600)))

(declare-fun sizeTr!327 (List!46860 Int) Int)

(assert (=> d!1245556 (= lt!1505059 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 0 input!3600 input!3600 (sizeTr!327 input!3600 0)))))

(declare-fun lt!1505062 () Unit!65887)

(declare-fun lt!1505056 () Unit!65887)

(assert (=> d!1245556 (= lt!1505062 lt!1505056)))

(declare-fun lt!1505060 () List!46860)

(declare-fun lt!1505061 () Int)

(assert (=> d!1245556 (= (sizeTr!327 lt!1505060 lt!1505061) (+ (size!34263 lt!1505060) lt!1505061))))

(declare-fun lemmaSizeTrEqualsSize!326 (List!46860 Int) Unit!65887)

(assert (=> d!1245556 (= lt!1505056 (lemmaSizeTrEqualsSize!326 lt!1505060 lt!1505061))))

(assert (=> d!1245556 (= lt!1505061 0)))

(assert (=> d!1245556 (= lt!1505060 Nil!46736)))

(declare-fun lt!1505063 () Unit!65887)

(declare-fun lt!1505057 () Unit!65887)

(assert (=> d!1245556 (= lt!1505063 lt!1505057)))

(declare-fun lt!1505058 () Int)

(assert (=> d!1245556 (= (sizeTr!327 input!3600 lt!1505058) (+ (size!34263 input!3600) lt!1505058))))

(assert (=> d!1245556 (= lt!1505057 (lemmaSizeTrEqualsSize!326 input!3600 lt!1505058))))

(assert (=> d!1245556 (= lt!1505058 0)))

(assert (=> d!1245556 (validRegex!5819 (regex!7898 r!4353))))

(assert (=> d!1245556 (= (findLongestMatch!1603 (regex!7898 r!4353) input!3600) lt!1505059)))

(declare-fun bs!598022 () Bool)

(assert (= bs!598022 d!1245556))

(assert (=> bs!598022 m!4819093))

(declare-fun m!4819381 () Bool)

(assert (=> bs!598022 m!4819381))

(assert (=> bs!598022 m!4819083))

(declare-fun m!4819383 () Bool)

(assert (=> bs!598022 m!4819383))

(declare-fun m!4819385 () Bool)

(assert (=> bs!598022 m!4819385))

(declare-fun m!4819387 () Bool)

(assert (=> bs!598022 m!4819387))

(declare-fun m!4819389 () Bool)

(assert (=> bs!598022 m!4819389))

(declare-fun m!4819391 () Bool)

(assert (=> bs!598022 m!4819391))

(assert (=> bs!598022 m!4819383))

(declare-fun m!4819393 () Bool)

(assert (=> bs!598022 m!4819393))

(declare-fun m!4819395 () Bool)

(assert (=> bs!598022 m!4819395))

(assert (=> d!1245510 d!1245556))

(assert (=> d!1245510 d!1245514))

(declare-fun b!4233187 () Bool)

(declare-fun e!2628440 () List!46860)

(assert (=> b!4233187 (= e!2628440 (_2!25317 (get!15205 lt!1504857)))))

(declare-fun b!4233189 () Bool)

(declare-fun res!1741068 () Bool)

(declare-fun e!2628439 () Bool)

(assert (=> b!4233189 (=> (not res!1741068) (not e!2628439))))

(declare-fun lt!1505067 () List!46860)

(assert (=> b!4233189 (= res!1741068 (= (size!34263 lt!1505067) (+ (size!34263 (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857))))) (size!34263 (_2!25317 (get!15205 lt!1504857))))))))

(declare-fun b!4233190 () Bool)

(assert (=> b!4233190 (= e!2628439 (or (not (= (_2!25317 (get!15205 lt!1504857)) Nil!46736)) (= lt!1505067 (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857)))))))))

(declare-fun b!4233188 () Bool)

(assert (=> b!4233188 (= e!2628440 (Cons!46736 (h!52156 (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857))))) (++!11919 (t!349547 (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857))))) (_2!25317 (get!15205 lt!1504857)))))))

(declare-fun d!1245562 () Bool)

(assert (=> d!1245562 e!2628439))

(declare-fun res!1741067 () Bool)

(assert (=> d!1245562 (=> (not res!1741067) (not e!2628439))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7340 (List!46860) (InoxSet C!25804))

(assert (=> d!1245562 (= res!1741067 (= (content!7340 lt!1505067) ((_ map or) (content!7340 (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857))))) (content!7340 (_2!25317 (get!15205 lt!1504857))))))))

(assert (=> d!1245562 (= lt!1505067 e!2628440)))

(declare-fun c!719536 () Bool)

(assert (=> d!1245562 (= c!719536 ((_ is Nil!46736) (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857))))))))

(assert (=> d!1245562 (= (++!11919 (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857)))) (_2!25317 (get!15205 lt!1504857))) lt!1505067)))

(assert (= (and d!1245562 c!719536) b!4233187))

(assert (= (and d!1245562 (not c!719536)) b!4233188))

(assert (= (and d!1245562 res!1741067) b!4233189))

(assert (= (and b!4233189 res!1741068) b!4233190))

(declare-fun m!4819405 () Bool)

(assert (=> b!4233189 m!4819405))

(assert (=> b!4233189 m!4819221))

(declare-fun m!4819407 () Bool)

(assert (=> b!4233189 m!4819407))

(assert (=> b!4233189 m!4819199))

(declare-fun m!4819409 () Bool)

(assert (=> b!4233188 m!4819409))

(declare-fun m!4819411 () Bool)

(assert (=> d!1245562 m!4819411))

(assert (=> d!1245562 m!4819221))

(declare-fun m!4819413 () Bool)

(assert (=> d!1245562 m!4819413))

(declare-fun m!4819417 () Bool)

(assert (=> d!1245562 m!4819417))

(assert (=> b!4232938 d!1245562))

(declare-fun d!1245574 () Bool)

(declare-fun list!16876 (Conc!14109) List!46860)

(assert (=> d!1245574 (= (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857)))) (list!16876 (c!719431 (charsOf!5264 (_1!25317 (get!15205 lt!1504857))))))))

(declare-fun bs!598023 () Bool)

(assert (= bs!598023 d!1245574))

(declare-fun m!4819421 () Bool)

(assert (=> bs!598023 m!4819421))

(assert (=> b!4232938 d!1245574))

(declare-fun d!1245582 () Bool)

(declare-fun lt!1505072 () BalanceConc!27812)

(assert (=> d!1245582 (= (list!16875 lt!1505072) (originalCharacters!8244 (_1!25317 (get!15205 lt!1504857))))))

(declare-fun dynLambda!20049 (Int TokenValue!8128) BalanceConc!27812)

(assert (=> d!1245582 (= lt!1505072 (dynLambda!20049 (toChars!10493 (transformation!7898 (rule!11022 (_1!25317 (get!15205 lt!1504857))))) (value!245589 (_1!25317 (get!15205 lt!1504857)))))))

(assert (=> d!1245582 (= (charsOf!5264 (_1!25317 (get!15205 lt!1504857))) lt!1505072)))

(declare-fun b_lambda!124611 () Bool)

(assert (=> (not b_lambda!124611) (not d!1245582)))

(declare-fun tb!253879 () Bool)

(declare-fun t!349550 () Bool)

(assert (=> (and b!4232737 (= (toChars!10493 (transformation!7898 r!4353)) (toChars!10493 (transformation!7898 (rule!11022 (_1!25317 (get!15205 lt!1504857)))))) t!349550) tb!253879))

(declare-fun b!4233199 () Bool)

(declare-fun e!2628445 () Bool)

(declare-fun tp!1296445 () Bool)

(declare-fun inv!61448 (Conc!14109) Bool)

(assert (=> b!4233199 (= e!2628445 (and (inv!61448 (c!719431 (dynLambda!20049 (toChars!10493 (transformation!7898 (rule!11022 (_1!25317 (get!15205 lt!1504857))))) (value!245589 (_1!25317 (get!15205 lt!1504857)))))) tp!1296445))))

(declare-fun result!309660 () Bool)

(declare-fun inv!61449 (BalanceConc!27812) Bool)

(assert (=> tb!253879 (= result!309660 (and (inv!61449 (dynLambda!20049 (toChars!10493 (transformation!7898 (rule!11022 (_1!25317 (get!15205 lt!1504857))))) (value!245589 (_1!25317 (get!15205 lt!1504857))))) e!2628445))))

(assert (= tb!253879 b!4233199))

(declare-fun m!4819423 () Bool)

(assert (=> b!4233199 m!4819423))

(declare-fun m!4819425 () Bool)

(assert (=> tb!253879 m!4819425))

(assert (=> d!1245582 t!349550))

(declare-fun b_and!334349 () Bool)

(assert (= b_and!334347 (and (=> t!349550 result!309660) b_and!334349)))

(declare-fun m!4819427 () Bool)

(assert (=> d!1245582 m!4819427))

(declare-fun m!4819429 () Bool)

(assert (=> d!1245582 m!4819429))

(assert (=> b!4232938 d!1245582))

(declare-fun d!1245584 () Bool)

(assert (=> d!1245584 (= (get!15205 lt!1504857) (v!40971 lt!1504857))))

(assert (=> b!4232938 d!1245584))

(declare-fun d!1245586 () Bool)

(assert (=> d!1245586 (= (isEmpty!27626 p!3018) ((_ is Nil!46736) p!3018))))

(assert (=> d!1245504 d!1245586))

(assert (=> d!1245504 d!1245500))

(assert (=> d!1245514 d!1245500))

(declare-fun d!1245590 () Bool)

(assert (=> d!1245590 (= (head!8975 input!3600) (h!52156 input!3600))))

(assert (=> bm!293687 d!1245590))

(assert (=> b!4232936 d!1245584))

(declare-fun d!1245592 () Bool)

(declare-fun nullableFct!1235 (Regex!12803) Bool)

(assert (=> d!1245592 (= (nullable!4512 (regex!7898 r!4353)) (nullableFct!1235 (regex!7898 r!4353)))))

(declare-fun bs!598025 () Bool)

(assert (= bs!598025 d!1245592))

(declare-fun m!4819433 () Bool)

(assert (=> bs!598025 m!4819433))

(assert (=> b!4232867 d!1245592))

(declare-fun d!1245594 () Bool)

(declare-fun lt!1505076 () Int)

(assert (=> d!1245594 (>= lt!1505076 0)))

(declare-fun e!2628446 () Int)

(assert (=> d!1245594 (= lt!1505076 e!2628446)))

(declare-fun c!719539 () Bool)

(assert (=> d!1245594 (= c!719539 ((_ is Nil!46736) (_2!25317 (get!15205 lt!1504857))))))

(assert (=> d!1245594 (= (size!34263 (_2!25317 (get!15205 lt!1504857))) lt!1505076)))

(declare-fun b!4233200 () Bool)

(assert (=> b!4233200 (= e!2628446 0)))

(declare-fun b!4233201 () Bool)

(assert (=> b!4233201 (= e!2628446 (+ 1 (size!34263 (t!349547 (_2!25317 (get!15205 lt!1504857))))))))

(assert (= (and d!1245594 c!719539) b!4233200))

(assert (= (and d!1245594 (not c!719539)) b!4233201))

(declare-fun m!4819435 () Bool)

(assert (=> b!4233201 m!4819435))

(assert (=> b!4232933 d!1245594))

(assert (=> b!4232933 d!1245584))

(assert (=> b!4232933 d!1245532))

(declare-fun b!4233203 () Bool)

(declare-fun res!1741071 () Bool)

(declare-fun e!2628448 () Bool)

(assert (=> b!4233203 (=> (not res!1741071) (not e!2628448))))

(assert (=> b!4233203 (= res!1741071 (= (head!8975 (tail!6822 p!3018)) (head!8975 (tail!6822 input!3600))))))

(declare-fun d!1245596 () Bool)

(declare-fun e!2628447 () Bool)

(assert (=> d!1245596 e!2628447))

(declare-fun res!1741070 () Bool)

(assert (=> d!1245596 (=> res!1741070 e!2628447)))

(declare-fun lt!1505077 () Bool)

(assert (=> d!1245596 (= res!1741070 (not lt!1505077))))

(declare-fun e!2628449 () Bool)

(assert (=> d!1245596 (= lt!1505077 e!2628449)))

(declare-fun res!1741069 () Bool)

(assert (=> d!1245596 (=> res!1741069 e!2628449)))

(assert (=> d!1245596 (= res!1741069 ((_ is Nil!46736) (tail!6822 p!3018)))))

(assert (=> d!1245596 (= (isPrefix!4713 (tail!6822 p!3018) (tail!6822 input!3600)) lt!1505077)))

(declare-fun b!4233202 () Bool)

(assert (=> b!4233202 (= e!2628449 e!2628448)))

(declare-fun res!1741072 () Bool)

(assert (=> b!4233202 (=> (not res!1741072) (not e!2628448))))

(assert (=> b!4233202 (= res!1741072 (not ((_ is Nil!46736) (tail!6822 input!3600))))))

(declare-fun b!4233204 () Bool)

(assert (=> b!4233204 (= e!2628448 (isPrefix!4713 (tail!6822 (tail!6822 p!3018)) (tail!6822 (tail!6822 input!3600))))))

(declare-fun b!4233205 () Bool)

(assert (=> b!4233205 (= e!2628447 (>= (size!34263 (tail!6822 input!3600)) (size!34263 (tail!6822 p!3018))))))

(assert (= (and d!1245596 (not res!1741069)) b!4233202))

(assert (= (and b!4233202 res!1741072) b!4233203))

(assert (= (and b!4233203 res!1741071) b!4233204))

(assert (= (and d!1245596 (not res!1741070)) b!4233205))

(assert (=> b!4233203 m!4819135))

(declare-fun m!4819437 () Bool)

(assert (=> b!4233203 m!4819437))

(assert (=> b!4233203 m!4819149))

(declare-fun m!4819439 () Bool)

(assert (=> b!4233203 m!4819439))

(assert (=> b!4233204 m!4819135))

(declare-fun m!4819441 () Bool)

(assert (=> b!4233204 m!4819441))

(assert (=> b!4233204 m!4819149))

(declare-fun m!4819443 () Bool)

(assert (=> b!4233204 m!4819443))

(assert (=> b!4233204 m!4819441))

(assert (=> b!4233204 m!4819443))

(declare-fun m!4819445 () Bool)

(assert (=> b!4233204 m!4819445))

(assert (=> b!4233205 m!4819149))

(declare-fun m!4819447 () Bool)

(assert (=> b!4233205 m!4819447))

(assert (=> b!4233205 m!4819135))

(declare-fun m!4819449 () Bool)

(assert (=> b!4233205 m!4819449))

(assert (=> b!4232883 d!1245596))

(declare-fun d!1245598 () Bool)

(assert (=> d!1245598 (= (tail!6822 p!3018) (t!349547 p!3018))))

(assert (=> b!4232883 d!1245598))

(assert (=> b!4232883 d!1245548))

(declare-fun d!1245600 () Bool)

(assert (=> d!1245600 (= input!3600 Nil!46736)))

(declare-fun lt!1505082 () Unit!65887)

(declare-fun choose!25927 (List!46860 List!46860 List!46860) Unit!65887)

(assert (=> d!1245600 (= lt!1505082 (choose!25927 input!3600 Nil!46736 input!3600))))

(assert (=> d!1245600 (isPrefix!4713 input!3600 input!3600)))

(assert (=> d!1245600 (= (lemmaIsPrefixSameLengthThenSameList!1037 input!3600 Nil!46736 input!3600) lt!1505082)))

(declare-fun bs!598026 () Bool)

(assert (= bs!598026 d!1245600))

(declare-fun m!4819451 () Bool)

(assert (=> bs!598026 m!4819451))

(assert (=> bs!598026 m!4819323))

(assert (=> bm!293684 d!1245600))

(assert (=> bm!293634 d!1245586))

(declare-fun b!4233236 () Bool)

(declare-fun c!719557 () Bool)

(assert (=> b!4233236 (= c!719557 (nullable!4512 (regOne!26118 (regex!7898 r!4353))))))

(declare-fun e!2628467 () Regex!12803)

(declare-fun e!2628468 () Regex!12803)

(assert (=> b!4233236 (= e!2628467 e!2628468)))

(declare-fun call!293720 () Regex!12803)

(declare-fun c!719555 () Bool)

(declare-fun bm!293713 () Bool)

(assert (=> bm!293713 (= call!293720 (derivativeStep!3845 (ite c!719555 (regOne!26119 (regex!7898 r!4353)) (regTwo!26118 (regex!7898 r!4353))) call!293695))))

(declare-fun b!4233237 () Bool)

(declare-fun e!2628466 () Regex!12803)

(declare-fun e!2628469 () Regex!12803)

(assert (=> b!4233237 (= e!2628466 e!2628469)))

(declare-fun c!719554 () Bool)

(assert (=> b!4233237 (= c!719554 ((_ is ElementMatch!12803) (regex!7898 r!4353)))))

(declare-fun b!4233238 () Bool)

(declare-fun call!293718 () Regex!12803)

(assert (=> b!4233238 (= e!2628468 (Union!12803 (Concat!20932 call!293718 (regTwo!26118 (regex!7898 r!4353))) EmptyLang!12803))))

(declare-fun bm!293714 () Bool)

(declare-fun call!293721 () Regex!12803)

(declare-fun call!293719 () Regex!12803)

(assert (=> bm!293714 (= call!293721 call!293719)))

(declare-fun b!4233239 () Bool)

(assert (=> b!4233239 (= e!2628469 (ite (= call!293695 (c!719430 (regex!7898 r!4353))) EmptyExpr!12803 EmptyLang!12803))))

(declare-fun b!4233240 () Bool)

(declare-fun e!2628470 () Regex!12803)

(assert (=> b!4233240 (= e!2628470 (Union!12803 call!293720 call!293719))))

(declare-fun b!4233241 () Bool)

(assert (=> b!4233241 (= c!719555 ((_ is Union!12803) (regex!7898 r!4353)))))

(assert (=> b!4233241 (= e!2628469 e!2628470)))

(declare-fun b!4233242 () Bool)

(assert (=> b!4233242 (= e!2628466 EmptyLang!12803)))

(declare-fun c!719553 () Bool)

(declare-fun bm!293716 () Bool)

(assert (=> bm!293716 (= call!293719 (derivativeStep!3845 (ite c!719555 (regTwo!26119 (regex!7898 r!4353)) (ite c!719553 (reg!13132 (regex!7898 r!4353)) (regOne!26118 (regex!7898 r!4353)))) call!293695))))

(declare-fun b!4233243 () Bool)

(assert (=> b!4233243 (= e!2628467 (Concat!20932 call!293721 (regex!7898 r!4353)))))

(declare-fun bm!293715 () Bool)

(assert (=> bm!293715 (= call!293718 call!293721)))

(declare-fun d!1245602 () Bool)

(declare-fun lt!1505090 () Regex!12803)

(assert (=> d!1245602 (validRegex!5819 lt!1505090)))

(assert (=> d!1245602 (= lt!1505090 e!2628466)))

(declare-fun c!719556 () Bool)

(assert (=> d!1245602 (= c!719556 (or ((_ is EmptyExpr!12803) (regex!7898 r!4353)) ((_ is EmptyLang!12803) (regex!7898 r!4353))))))

(assert (=> d!1245602 (validRegex!5819 (regex!7898 r!4353))))

(assert (=> d!1245602 (= (derivativeStep!3845 (regex!7898 r!4353) call!293695) lt!1505090)))

(declare-fun b!4233244 () Bool)

(assert (=> b!4233244 (= e!2628468 (Union!12803 (Concat!20932 call!293718 (regTwo!26118 (regex!7898 r!4353))) call!293720))))

(declare-fun b!4233245 () Bool)

(assert (=> b!4233245 (= e!2628470 e!2628467)))

(assert (=> b!4233245 (= c!719553 ((_ is Star!12803) (regex!7898 r!4353)))))

(assert (= (and d!1245602 c!719556) b!4233242))

(assert (= (and d!1245602 (not c!719556)) b!4233237))

(assert (= (and b!4233237 c!719554) b!4233239))

(assert (= (and b!4233237 (not c!719554)) b!4233241))

(assert (= (and b!4233241 c!719555) b!4233240))

(assert (= (and b!4233241 (not c!719555)) b!4233245))

(assert (= (and b!4233245 c!719553) b!4233243))

(assert (= (and b!4233245 (not c!719553)) b!4233236))

(assert (= (and b!4233236 c!719557) b!4233244))

(assert (= (and b!4233236 (not c!719557)) b!4233238))

(assert (= (or b!4233244 b!4233238) bm!293715))

(assert (= (or b!4233243 bm!293715) bm!293714))

(assert (= (or b!4233240 b!4233244) bm!293713))

(assert (= (or b!4233240 bm!293714) bm!293716))

(declare-fun m!4819469 () Bool)

(assert (=> b!4233236 m!4819469))

(declare-fun m!4819471 () Bool)

(assert (=> bm!293713 m!4819471))

(declare-fun m!4819473 () Bool)

(assert (=> bm!293716 m!4819473))

(declare-fun m!4819475 () Bool)

(assert (=> d!1245602 m!4819475))

(assert (=> d!1245602 m!4819083))

(assert (=> bm!293685 d!1245602))

(assert (=> b!4232931 d!1245584))

(declare-fun d!1245612 () Bool)

(declare-fun lt!1505091 () Int)

(assert (=> d!1245612 (>= lt!1505091 0)))

(declare-fun e!2628471 () Int)

(assert (=> d!1245612 (= lt!1505091 e!2628471)))

(declare-fun c!719558 () Bool)

(assert (=> d!1245612 (= c!719558 ((_ is Nil!46736) (originalCharacters!8244 (_1!25317 (get!15205 lt!1504857)))))))

(assert (=> d!1245612 (= (size!34263 (originalCharacters!8244 (_1!25317 (get!15205 lt!1504857)))) lt!1505091)))

(declare-fun b!4233246 () Bool)

(assert (=> b!4233246 (= e!2628471 0)))

(declare-fun b!4233247 () Bool)

(assert (=> b!4233247 (= e!2628471 (+ 1 (size!34263 (t!349547 (originalCharacters!8244 (_1!25317 (get!15205 lt!1504857)))))))))

(assert (= (and d!1245612 c!719558) b!4233246))

(assert (= (and d!1245612 (not c!719558)) b!4233247))

(declare-fun m!4819477 () Bool)

(assert (=> b!4233247 m!4819477))

(assert (=> b!4232931 d!1245612))

(declare-fun d!1245614 () Bool)

(declare-fun e!2628474 () Bool)

(assert (=> d!1245614 e!2628474))

(declare-fun c!719560 () Bool)

(assert (=> d!1245614 (= c!719560 ((_ is EmptyExpr!12803) (derivativeStep!3845 (regex!7898 r!4353) (head!8975 p!3018))))))

(declare-fun lt!1505092 () Bool)

(declare-fun e!2628472 () Bool)

(assert (=> d!1245614 (= lt!1505092 e!2628472)))

(declare-fun c!719561 () Bool)

(assert (=> d!1245614 (= c!719561 (isEmpty!27626 (tail!6822 p!3018)))))

(assert (=> d!1245614 (validRegex!5819 (derivativeStep!3845 (regex!7898 r!4353) (head!8975 p!3018)))))

(assert (=> d!1245614 (= (matchR!6435 (derivativeStep!3845 (regex!7898 r!4353) (head!8975 p!3018)) (tail!6822 p!3018)) lt!1505092)))

(declare-fun b!4233248 () Bool)

(assert (=> b!4233248 (= e!2628472 (matchR!6435 (derivativeStep!3845 (derivativeStep!3845 (regex!7898 r!4353) (head!8975 p!3018)) (head!8975 (tail!6822 p!3018))) (tail!6822 (tail!6822 p!3018))))))

(declare-fun b!4233249 () Bool)

(declare-fun res!1741078 () Bool)

(declare-fun e!2628478 () Bool)

(assert (=> b!4233249 (=> (not res!1741078) (not e!2628478))))

(assert (=> b!4233249 (= res!1741078 (isEmpty!27626 (tail!6822 (tail!6822 p!3018))))))

(declare-fun b!4233250 () Bool)

(declare-fun call!293722 () Bool)

(assert (=> b!4233250 (= e!2628474 (= lt!1505092 call!293722))))

(declare-fun b!4233251 () Bool)

(declare-fun res!1741082 () Bool)

(assert (=> b!4233251 (=> (not res!1741082) (not e!2628478))))

(assert (=> b!4233251 (= res!1741082 (not call!293722))))

(declare-fun bm!293717 () Bool)

(assert (=> bm!293717 (= call!293722 (isEmpty!27626 (tail!6822 p!3018)))))

(declare-fun b!4233252 () Bool)

(declare-fun res!1741081 () Bool)

(declare-fun e!2628473 () Bool)

(assert (=> b!4233252 (=> res!1741081 e!2628473)))

(assert (=> b!4233252 (= res!1741081 (not (isEmpty!27626 (tail!6822 (tail!6822 p!3018)))))))

(declare-fun b!4233253 () Bool)

(declare-fun e!2628475 () Bool)

(assert (=> b!4233253 (= e!2628475 e!2628473)))

(declare-fun res!1741083 () Bool)

(assert (=> b!4233253 (=> res!1741083 e!2628473)))

(assert (=> b!4233253 (= res!1741083 call!293722)))

(declare-fun b!4233254 () Bool)

(declare-fun res!1741079 () Bool)

(declare-fun e!2628477 () Bool)

(assert (=> b!4233254 (=> res!1741079 e!2628477)))

(assert (=> b!4233254 (= res!1741079 (not ((_ is ElementMatch!12803) (derivativeStep!3845 (regex!7898 r!4353) (head!8975 p!3018)))))))

(declare-fun e!2628476 () Bool)

(assert (=> b!4233254 (= e!2628476 e!2628477)))

(declare-fun b!4233255 () Bool)

(assert (=> b!4233255 (= e!2628476 (not lt!1505092))))

(declare-fun b!4233256 () Bool)

(assert (=> b!4233256 (= e!2628472 (nullable!4512 (derivativeStep!3845 (regex!7898 r!4353) (head!8975 p!3018))))))

(declare-fun b!4233257 () Bool)

(assert (=> b!4233257 (= e!2628474 e!2628476)))

(declare-fun c!719559 () Bool)

(assert (=> b!4233257 (= c!719559 ((_ is EmptyLang!12803) (derivativeStep!3845 (regex!7898 r!4353) (head!8975 p!3018))))))

(declare-fun b!4233258 () Bool)

(declare-fun res!1741084 () Bool)

(assert (=> b!4233258 (=> res!1741084 e!2628477)))

(assert (=> b!4233258 (= res!1741084 e!2628478)))

(declare-fun res!1741077 () Bool)

(assert (=> b!4233258 (=> (not res!1741077) (not e!2628478))))

(assert (=> b!4233258 (= res!1741077 lt!1505092)))

(declare-fun b!4233259 () Bool)

(assert (=> b!4233259 (= e!2628473 (not (= (head!8975 (tail!6822 p!3018)) (c!719430 (derivativeStep!3845 (regex!7898 r!4353) (head!8975 p!3018))))))))

(declare-fun b!4233260 () Bool)

(assert (=> b!4233260 (= e!2628478 (= (head!8975 (tail!6822 p!3018)) (c!719430 (derivativeStep!3845 (regex!7898 r!4353) (head!8975 p!3018)))))))

(declare-fun b!4233261 () Bool)

(assert (=> b!4233261 (= e!2628477 e!2628475)))

(declare-fun res!1741080 () Bool)

(assert (=> b!4233261 (=> (not res!1741080) (not e!2628475))))

(assert (=> b!4233261 (= res!1741080 (not lt!1505092))))

(assert (= (and d!1245614 c!719561) b!4233256))

(assert (= (and d!1245614 (not c!719561)) b!4233248))

(assert (= (and d!1245614 c!719560) b!4233250))

(assert (= (and d!1245614 (not c!719560)) b!4233257))

(assert (= (and b!4233257 c!719559) b!4233255))

(assert (= (and b!4233257 (not c!719559)) b!4233254))

(assert (= (and b!4233254 (not res!1741079)) b!4233258))

(assert (= (and b!4233258 res!1741077) b!4233251))

(assert (= (and b!4233251 res!1741082) b!4233249))

(assert (= (and b!4233249 res!1741078) b!4233260))

(assert (= (and b!4233258 (not res!1741084)) b!4233261))

(assert (= (and b!4233261 res!1741080) b!4233253))

(assert (= (and b!4233253 (not res!1741083)) b!4233252))

(assert (= (and b!4233252 (not res!1741081)) b!4233259))

(assert (= (or b!4233250 b!4233251 b!4233253) bm!293717))

(assert (=> b!4233260 m!4819135))

(assert (=> b!4233260 m!4819437))

(assert (=> b!4233252 m!4819135))

(assert (=> b!4233252 m!4819441))

(assert (=> b!4233252 m!4819441))

(declare-fun m!4819479 () Bool)

(assert (=> b!4233252 m!4819479))

(assert (=> b!4233249 m!4819135))

(assert (=> b!4233249 m!4819441))

(assert (=> b!4233249 m!4819441))

(assert (=> b!4233249 m!4819479))

(assert (=> bm!293717 m!4819135))

(assert (=> bm!293717 m!4819137))

(assert (=> b!4233256 m!4819143))

(declare-fun m!4819481 () Bool)

(assert (=> b!4233256 m!4819481))

(assert (=> d!1245614 m!4819135))

(assert (=> d!1245614 m!4819137))

(assert (=> d!1245614 m!4819143))

(declare-fun m!4819483 () Bool)

(assert (=> d!1245614 m!4819483))

(assert (=> b!4233259 m!4819135))

(assert (=> b!4233259 m!4819437))

(assert (=> b!4233248 m!4819135))

(assert (=> b!4233248 m!4819437))

(assert (=> b!4233248 m!4819143))

(assert (=> b!4233248 m!4819437))

(declare-fun m!4819485 () Bool)

(assert (=> b!4233248 m!4819485))

(assert (=> b!4233248 m!4819135))

(assert (=> b!4233248 m!4819441))

(assert (=> b!4233248 m!4819485))

(assert (=> b!4233248 m!4819441))

(declare-fun m!4819487 () Bool)

(assert (=> b!4233248 m!4819487))

(assert (=> b!4232859 d!1245614))

(declare-fun b!4233262 () Bool)

(declare-fun c!719566 () Bool)

(assert (=> b!4233262 (= c!719566 (nullable!4512 (regOne!26118 (regex!7898 r!4353))))))

(declare-fun e!2628480 () Regex!12803)

(declare-fun e!2628481 () Regex!12803)

(assert (=> b!4233262 (= e!2628480 e!2628481)))

(declare-fun c!719564 () Bool)

(declare-fun bm!293718 () Bool)

(declare-fun call!293725 () Regex!12803)

(assert (=> bm!293718 (= call!293725 (derivativeStep!3845 (ite c!719564 (regOne!26119 (regex!7898 r!4353)) (regTwo!26118 (regex!7898 r!4353))) (head!8975 p!3018)))))

(declare-fun b!4233263 () Bool)

(declare-fun e!2628479 () Regex!12803)

(declare-fun e!2628482 () Regex!12803)

(assert (=> b!4233263 (= e!2628479 e!2628482)))

(declare-fun c!719563 () Bool)

(assert (=> b!4233263 (= c!719563 ((_ is ElementMatch!12803) (regex!7898 r!4353)))))

(declare-fun b!4233264 () Bool)

(declare-fun call!293723 () Regex!12803)

(assert (=> b!4233264 (= e!2628481 (Union!12803 (Concat!20932 call!293723 (regTwo!26118 (regex!7898 r!4353))) EmptyLang!12803))))

(declare-fun bm!293719 () Bool)

(declare-fun call!293726 () Regex!12803)

(declare-fun call!293724 () Regex!12803)

(assert (=> bm!293719 (= call!293726 call!293724)))

(declare-fun b!4233265 () Bool)

(assert (=> b!4233265 (= e!2628482 (ite (= (head!8975 p!3018) (c!719430 (regex!7898 r!4353))) EmptyExpr!12803 EmptyLang!12803))))

(declare-fun b!4233266 () Bool)

(declare-fun e!2628483 () Regex!12803)

(assert (=> b!4233266 (= e!2628483 (Union!12803 call!293725 call!293724))))

(declare-fun b!4233267 () Bool)

(assert (=> b!4233267 (= c!719564 ((_ is Union!12803) (regex!7898 r!4353)))))

(assert (=> b!4233267 (= e!2628482 e!2628483)))

(declare-fun b!4233268 () Bool)

(assert (=> b!4233268 (= e!2628479 EmptyLang!12803)))

(declare-fun c!719562 () Bool)

(declare-fun bm!293721 () Bool)

(assert (=> bm!293721 (= call!293724 (derivativeStep!3845 (ite c!719564 (regTwo!26119 (regex!7898 r!4353)) (ite c!719562 (reg!13132 (regex!7898 r!4353)) (regOne!26118 (regex!7898 r!4353)))) (head!8975 p!3018)))))

(declare-fun b!4233269 () Bool)

(assert (=> b!4233269 (= e!2628480 (Concat!20932 call!293726 (regex!7898 r!4353)))))

(declare-fun bm!293720 () Bool)

(assert (=> bm!293720 (= call!293723 call!293726)))

(declare-fun d!1245616 () Bool)

(declare-fun lt!1505093 () Regex!12803)

(assert (=> d!1245616 (validRegex!5819 lt!1505093)))

(assert (=> d!1245616 (= lt!1505093 e!2628479)))

(declare-fun c!719565 () Bool)

(assert (=> d!1245616 (= c!719565 (or ((_ is EmptyExpr!12803) (regex!7898 r!4353)) ((_ is EmptyLang!12803) (regex!7898 r!4353))))))

(assert (=> d!1245616 (validRegex!5819 (regex!7898 r!4353))))

(assert (=> d!1245616 (= (derivativeStep!3845 (regex!7898 r!4353) (head!8975 p!3018)) lt!1505093)))

(declare-fun b!4233270 () Bool)

(assert (=> b!4233270 (= e!2628481 (Union!12803 (Concat!20932 call!293723 (regTwo!26118 (regex!7898 r!4353))) call!293725))))

(declare-fun b!4233271 () Bool)

(assert (=> b!4233271 (= e!2628483 e!2628480)))

(assert (=> b!4233271 (= c!719562 ((_ is Star!12803) (regex!7898 r!4353)))))

(assert (= (and d!1245616 c!719565) b!4233268))

(assert (= (and d!1245616 (not c!719565)) b!4233263))

(assert (= (and b!4233263 c!719563) b!4233265))

(assert (= (and b!4233263 (not c!719563)) b!4233267))

(assert (= (and b!4233267 c!719564) b!4233266))

(assert (= (and b!4233267 (not c!719564)) b!4233271))

(assert (= (and b!4233271 c!719562) b!4233269))

(assert (= (and b!4233271 (not c!719562)) b!4233262))

(assert (= (and b!4233262 c!719566) b!4233270))

(assert (= (and b!4233262 (not c!719566)) b!4233264))

(assert (= (or b!4233270 b!4233264) bm!293720))

(assert (= (or b!4233269 bm!293720) bm!293719))

(assert (= (or b!4233266 b!4233270) bm!293718))

(assert (= (or b!4233266 bm!293719) bm!293721))

(assert (=> b!4233262 m!4819469))

(assert (=> bm!293718 m!4819133))

(declare-fun m!4819489 () Bool)

(assert (=> bm!293718 m!4819489))

(assert (=> bm!293721 m!4819133))

(declare-fun m!4819491 () Bool)

(assert (=> bm!293721 m!4819491))

(declare-fun m!4819493 () Bool)

(assert (=> d!1245616 m!4819493))

(assert (=> d!1245616 m!4819083))

(assert (=> b!4232859 d!1245616))

(assert (=> b!4232859 d!1245550))

(assert (=> b!4232859 d!1245598))

(declare-fun d!1245618 () Bool)

(declare-fun res!1741091 () Bool)

(declare-fun e!2628491 () Bool)

(assert (=> d!1245618 (=> res!1741091 e!2628491)))

(assert (=> d!1245618 (= res!1741091 ((_ is ElementMatch!12803) (ite c!719453 (regTwo!26119 (regex!7898 r!4353)) (regOne!26118 (regex!7898 r!4353)))))))

(assert (=> d!1245618 (= (validRegex!5819 (ite c!719453 (regTwo!26119 (regex!7898 r!4353)) (regOne!26118 (regex!7898 r!4353)))) e!2628491)))

(declare-fun b!4233278 () Bool)

(declare-fun e!2628493 () Bool)

(declare-fun e!2628492 () Bool)

(assert (=> b!4233278 (= e!2628493 e!2628492)))

(declare-fun res!1741089 () Bool)

(assert (=> b!4233278 (=> (not res!1741089) (not e!2628492))))

(declare-fun call!293728 () Bool)

(assert (=> b!4233278 (= res!1741089 call!293728)))

(declare-fun b!4233279 () Bool)

(declare-fun e!2628494 () Bool)

(declare-fun e!2628490 () Bool)

(assert (=> b!4233279 (= e!2628494 e!2628490)))

(declare-fun c!719569 () Bool)

(assert (=> b!4233279 (= c!719569 ((_ is Union!12803) (ite c!719453 (regTwo!26119 (regex!7898 r!4353)) (regOne!26118 (regex!7898 r!4353)))))))

(declare-fun b!4233280 () Bool)

(declare-fun e!2628486 () Bool)

(assert (=> b!4233280 (= e!2628486 call!293728)))

(declare-fun b!4233281 () Bool)

(declare-fun e!2628489 () Bool)

(declare-fun call!293729 () Bool)

(assert (=> b!4233281 (= e!2628489 call!293729)))

(declare-fun b!4233282 () Bool)

(declare-fun res!1741085 () Bool)

(assert (=> b!4233282 (=> (not res!1741085) (not e!2628486))))

(declare-fun call!293727 () Bool)

(assert (=> b!4233282 (= res!1741085 call!293727)))

(assert (=> b!4233282 (= e!2628490 e!2628486)))

(declare-fun b!4233283 () Bool)

(declare-fun res!1741086 () Bool)

(assert (=> b!4233283 (=> res!1741086 e!2628493)))

(assert (=> b!4233283 (= res!1741086 (not ((_ is Concat!20932) (ite c!719453 (regTwo!26119 (regex!7898 r!4353)) (regOne!26118 (regex!7898 r!4353))))))))

(assert (=> b!4233283 (= e!2628490 e!2628493)))

(declare-fun bm!293722 () Bool)

(assert (=> bm!293722 (= call!293727 call!293729)))

(declare-fun b!4233284 () Bool)

(assert (=> b!4233284 (= e!2628494 e!2628489)))

(declare-fun res!1741090 () Bool)

(assert (=> b!4233284 (= res!1741090 (not (nullable!4512 (reg!13132 (ite c!719453 (regTwo!26119 (regex!7898 r!4353)) (regOne!26118 (regex!7898 r!4353)))))))))

(assert (=> b!4233284 (=> (not res!1741090) (not e!2628489))))

(declare-fun c!719570 () Bool)

(declare-fun bm!293723 () Bool)

(assert (=> bm!293723 (= call!293729 (validRegex!5819 (ite c!719570 (reg!13132 (ite c!719453 (regTwo!26119 (regex!7898 r!4353)) (regOne!26118 (regex!7898 r!4353)))) (ite c!719569 (regOne!26119 (ite c!719453 (regTwo!26119 (regex!7898 r!4353)) (regOne!26118 (regex!7898 r!4353)))) (regTwo!26118 (ite c!719453 (regTwo!26119 (regex!7898 r!4353)) (regOne!26118 (regex!7898 r!4353))))))))))

(declare-fun b!4233285 () Bool)

(assert (=> b!4233285 (= e!2628492 call!293727)))

(declare-fun bm!293724 () Bool)

(assert (=> bm!293724 (= call!293728 (validRegex!5819 (ite c!719569 (regTwo!26119 (ite c!719453 (regTwo!26119 (regex!7898 r!4353)) (regOne!26118 (regex!7898 r!4353)))) (regOne!26118 (ite c!719453 (regTwo!26119 (regex!7898 r!4353)) (regOne!26118 (regex!7898 r!4353)))))))))

(declare-fun b!4233286 () Bool)

(assert (=> b!4233286 (= e!2628491 e!2628494)))

(assert (=> b!4233286 (= c!719570 ((_ is Star!12803) (ite c!719453 (regTwo!26119 (regex!7898 r!4353)) (regOne!26118 (regex!7898 r!4353)))))))

(assert (= (and d!1245618 (not res!1741091)) b!4233286))

(assert (= (and b!4233286 c!719570) b!4233284))

(assert (= (and b!4233286 (not c!719570)) b!4233279))

(assert (= (and b!4233284 res!1741090) b!4233281))

(assert (= (and b!4233279 c!719569) b!4233282))

(assert (= (and b!4233279 (not c!719569)) b!4233283))

(assert (= (and b!4233282 res!1741085) b!4233280))

(assert (= (and b!4233283 (not res!1741086)) b!4233278))

(assert (= (and b!4233278 res!1741089) b!4233285))

(assert (= (or b!4233280 b!4233278) bm!293724))

(assert (= (or b!4233282 b!4233285) bm!293722))

(assert (= (or b!4233281 bm!293722) bm!293723))

(declare-fun m!4819495 () Bool)

(assert (=> b!4233284 m!4819495))

(declare-fun m!4819497 () Bool)

(assert (=> bm!293723 m!4819497))

(declare-fun m!4819499 () Bool)

(assert (=> bm!293724 m!4819499))

(assert (=> bm!293631 d!1245618))

(assert (=> b!4233114 d!1245504))

(declare-fun d!1245620 () Bool)

(declare-fun lt!1505096 () Int)

(assert (=> d!1245620 (>= lt!1505096 0)))

(declare-fun e!2628495 () Int)

(assert (=> d!1245620 (= lt!1505096 e!2628495)))

(declare-fun c!719571 () Bool)

(assert (=> d!1245620 (= c!719571 ((_ is Nil!46736) (t!349547 p!3018)))))

(assert (=> d!1245620 (= (size!34263 (t!349547 p!3018)) lt!1505096)))

(declare-fun b!4233289 () Bool)

(assert (=> b!4233289 (= e!2628495 0)))

(declare-fun b!4233290 () Bool)

(assert (=> b!4233290 (= e!2628495 (+ 1 (size!34263 (t!349547 (t!349547 p!3018)))))))

(assert (= (and d!1245620 c!719571) b!4233289))

(assert (= (and d!1245620 (not c!719571)) b!4233290))

(declare-fun m!4819501 () Bool)

(assert (=> b!4233290 m!4819501))

(assert (=> b!4232758 d!1245620))

(declare-fun d!1245622 () Bool)

(assert (=> d!1245622 true))

(declare-fun order!24617 () Int)

(declare-fun lambda!130007 () Int)

(declare-fun order!24619 () Int)

(declare-fun dynLambda!20050 (Int Int) Int)

(declare-fun dynLambda!20051 (Int Int) Int)

(assert (=> d!1245622 (< (dynLambda!20050 order!24617 (toValue!10634 (transformation!7898 r!4353))) (dynLambda!20051 order!24619 lambda!130007))))

(declare-fun Forall2!1186 (Int) Bool)

(assert (=> d!1245622 (= (equivClasses!3336 (toChars!10493 (transformation!7898 r!4353)) (toValue!10634 (transformation!7898 r!4353))) (Forall2!1186 lambda!130007))))

(declare-fun bs!598030 () Bool)

(assert (= bs!598030 d!1245622))

(declare-fun m!4819595 () Bool)

(assert (=> bs!598030 m!4819595))

(assert (=> b!4233107 d!1245622))

(declare-fun b!4233338 () Bool)

(declare-fun res!1741112 () Bool)

(declare-fun e!2628519 () Bool)

(assert (=> b!4233338 (=> (not res!1741112) (not e!2628519))))

(assert (=> b!4233338 (= res!1741112 (= (head!8975 input!3600) (head!8975 input!3600)))))

(declare-fun d!1245636 () Bool)

(declare-fun e!2628518 () Bool)

(assert (=> d!1245636 e!2628518))

(declare-fun res!1741111 () Bool)

(assert (=> d!1245636 (=> res!1741111 e!2628518)))

(declare-fun lt!1505129 () Bool)

(assert (=> d!1245636 (= res!1741111 (not lt!1505129))))

(declare-fun e!2628520 () Bool)

(assert (=> d!1245636 (= lt!1505129 e!2628520)))

(declare-fun res!1741110 () Bool)

(assert (=> d!1245636 (=> res!1741110 e!2628520)))

(assert (=> d!1245636 (= res!1741110 ((_ is Nil!46736) input!3600))))

(assert (=> d!1245636 (= (isPrefix!4713 input!3600 input!3600) lt!1505129)))

(declare-fun b!4233337 () Bool)

(assert (=> b!4233337 (= e!2628520 e!2628519)))

(declare-fun res!1741113 () Bool)

(assert (=> b!4233337 (=> (not res!1741113) (not e!2628519))))

(assert (=> b!4233337 (= res!1741113 (not ((_ is Nil!46736) input!3600)))))

(declare-fun b!4233339 () Bool)

(assert (=> b!4233339 (= e!2628519 (isPrefix!4713 (tail!6822 input!3600) (tail!6822 input!3600)))))

(declare-fun b!4233340 () Bool)

(assert (=> b!4233340 (= e!2628518 (>= (size!34263 input!3600) (size!34263 input!3600)))))

(assert (= (and d!1245636 (not res!1741110)) b!4233337))

(assert (= (and b!4233337 res!1741113) b!4233338))

(assert (= (and b!4233338 res!1741112) b!4233339))

(assert (= (and d!1245636 (not res!1741111)) b!4233340))

(assert (=> b!4233338 m!4819147))

(assert (=> b!4233338 m!4819147))

(assert (=> b!4233339 m!4819149))

(assert (=> b!4233339 m!4819149))

(assert (=> b!4233339 m!4819149))

(assert (=> b!4233339 m!4819149))

(declare-fun m!4819597 () Bool)

(assert (=> b!4233339 m!4819597))

(assert (=> b!4233340 m!4819093))

(assert (=> b!4233340 m!4819093))

(assert (=> bm!293691 d!1245636))

(declare-fun d!1245638 () Bool)

(declare-fun res!1741118 () Bool)

(declare-fun e!2628524 () Bool)

(assert (=> d!1245638 (=> res!1741118 e!2628524)))

(assert (=> d!1245638 (= res!1741118 ((_ is ElementMatch!12803) (ite c!719454 (reg!13132 (regex!7898 r!4353)) (ite c!719453 (regOne!26119 (regex!7898 r!4353)) (regTwo!26118 (regex!7898 r!4353))))))))

(assert (=> d!1245638 (= (validRegex!5819 (ite c!719454 (reg!13132 (regex!7898 r!4353)) (ite c!719453 (regOne!26119 (regex!7898 r!4353)) (regTwo!26118 (regex!7898 r!4353))))) e!2628524)))

(declare-fun b!4233341 () Bool)

(declare-fun e!2628526 () Bool)

(declare-fun e!2628525 () Bool)

(assert (=> b!4233341 (= e!2628526 e!2628525)))

(declare-fun res!1741116 () Bool)

(assert (=> b!4233341 (=> (not res!1741116) (not e!2628525))))

(declare-fun call!293740 () Bool)

(assert (=> b!4233341 (= res!1741116 call!293740)))

(declare-fun b!4233342 () Bool)

(declare-fun e!2628527 () Bool)

(declare-fun e!2628523 () Bool)

(assert (=> b!4233342 (= e!2628527 e!2628523)))

(declare-fun c!719584 () Bool)

(assert (=> b!4233342 (= c!719584 ((_ is Union!12803) (ite c!719454 (reg!13132 (regex!7898 r!4353)) (ite c!719453 (regOne!26119 (regex!7898 r!4353)) (regTwo!26118 (regex!7898 r!4353))))))))

(declare-fun b!4233343 () Bool)

(declare-fun e!2628521 () Bool)

(assert (=> b!4233343 (= e!2628521 call!293740)))

(declare-fun b!4233344 () Bool)

(declare-fun e!2628522 () Bool)

(declare-fun call!293741 () Bool)

(assert (=> b!4233344 (= e!2628522 call!293741)))

(declare-fun b!4233345 () Bool)

(declare-fun res!1741114 () Bool)

(assert (=> b!4233345 (=> (not res!1741114) (not e!2628521))))

(declare-fun call!293739 () Bool)

(assert (=> b!4233345 (= res!1741114 call!293739)))

(assert (=> b!4233345 (= e!2628523 e!2628521)))

(declare-fun b!4233346 () Bool)

(declare-fun res!1741115 () Bool)

(assert (=> b!4233346 (=> res!1741115 e!2628526)))

(assert (=> b!4233346 (= res!1741115 (not ((_ is Concat!20932) (ite c!719454 (reg!13132 (regex!7898 r!4353)) (ite c!719453 (regOne!26119 (regex!7898 r!4353)) (regTwo!26118 (regex!7898 r!4353)))))))))

(assert (=> b!4233346 (= e!2628523 e!2628526)))

(declare-fun bm!293734 () Bool)

(assert (=> bm!293734 (= call!293739 call!293741)))

(declare-fun b!4233347 () Bool)

(assert (=> b!4233347 (= e!2628527 e!2628522)))

(declare-fun res!1741117 () Bool)

(assert (=> b!4233347 (= res!1741117 (not (nullable!4512 (reg!13132 (ite c!719454 (reg!13132 (regex!7898 r!4353)) (ite c!719453 (regOne!26119 (regex!7898 r!4353)) (regTwo!26118 (regex!7898 r!4353))))))))))

(assert (=> b!4233347 (=> (not res!1741117) (not e!2628522))))

(declare-fun c!719585 () Bool)

(declare-fun bm!293735 () Bool)

(assert (=> bm!293735 (= call!293741 (validRegex!5819 (ite c!719585 (reg!13132 (ite c!719454 (reg!13132 (regex!7898 r!4353)) (ite c!719453 (regOne!26119 (regex!7898 r!4353)) (regTwo!26118 (regex!7898 r!4353))))) (ite c!719584 (regOne!26119 (ite c!719454 (reg!13132 (regex!7898 r!4353)) (ite c!719453 (regOne!26119 (regex!7898 r!4353)) (regTwo!26118 (regex!7898 r!4353))))) (regTwo!26118 (ite c!719454 (reg!13132 (regex!7898 r!4353)) (ite c!719453 (regOne!26119 (regex!7898 r!4353)) (regTwo!26118 (regex!7898 r!4353)))))))))))

(declare-fun b!4233348 () Bool)

(assert (=> b!4233348 (= e!2628525 call!293739)))

(declare-fun bm!293736 () Bool)

(assert (=> bm!293736 (= call!293740 (validRegex!5819 (ite c!719584 (regTwo!26119 (ite c!719454 (reg!13132 (regex!7898 r!4353)) (ite c!719453 (regOne!26119 (regex!7898 r!4353)) (regTwo!26118 (regex!7898 r!4353))))) (regOne!26118 (ite c!719454 (reg!13132 (regex!7898 r!4353)) (ite c!719453 (regOne!26119 (regex!7898 r!4353)) (regTwo!26118 (regex!7898 r!4353))))))))))

(declare-fun b!4233349 () Bool)

(assert (=> b!4233349 (= e!2628524 e!2628527)))

(assert (=> b!4233349 (= c!719585 ((_ is Star!12803) (ite c!719454 (reg!13132 (regex!7898 r!4353)) (ite c!719453 (regOne!26119 (regex!7898 r!4353)) (regTwo!26118 (regex!7898 r!4353))))))))

(assert (= (and d!1245638 (not res!1741118)) b!4233349))

(assert (= (and b!4233349 c!719585) b!4233347))

(assert (= (and b!4233349 (not c!719585)) b!4233342))

(assert (= (and b!4233347 res!1741117) b!4233344))

(assert (= (and b!4233342 c!719584) b!4233345))

(assert (= (and b!4233342 (not c!719584)) b!4233346))

(assert (= (and b!4233345 res!1741114) b!4233343))

(assert (= (and b!4233346 (not res!1741115)) b!4233341))

(assert (= (and b!4233341 res!1741116) b!4233348))

(assert (= (or b!4233343 b!4233341) bm!293736))

(assert (= (or b!4233345 b!4233348) bm!293734))

(assert (= (or b!4233344 bm!293734) bm!293735))

(declare-fun m!4819601 () Bool)

(assert (=> b!4233347 m!4819601))

(declare-fun m!4819603 () Bool)

(assert (=> bm!293735 m!4819603))

(declare-fun m!4819605 () Bool)

(assert (=> bm!293736 m!4819605))

(assert (=> bm!293630 d!1245638))

(declare-fun d!1245642 () Bool)

(declare-fun lt!1505130 () Int)

(assert (=> d!1245642 (>= lt!1505130 0)))

(declare-fun e!2628528 () Int)

(assert (=> d!1245642 (= lt!1505130 e!2628528)))

(declare-fun c!719586 () Bool)

(assert (=> d!1245642 (= c!719586 ((_ is Nil!46736) (t!349547 input!3600)))))

(assert (=> d!1245642 (= (size!34263 (t!349547 input!3600)) lt!1505130)))

(declare-fun b!4233350 () Bool)

(assert (=> b!4233350 (= e!2628528 0)))

(declare-fun b!4233351 () Bool)

(assert (=> b!4233351 (= e!2628528 (+ 1 (size!34263 (t!349547 (t!349547 input!3600)))))))

(assert (= (and d!1245642 c!719586) b!4233350))

(assert (= (and d!1245642 (not c!719586)) b!4233351))

(declare-fun m!4819607 () Bool)

(assert (=> b!4233351 m!4819607))

(assert (=> b!4233104 d!1245642))

(declare-fun b!4233352 () Bool)

(declare-fun e!2628530 () List!46860)

(assert (=> b!4233352 (= e!2628530 (Cons!46736 (head!8975 input!3600) Nil!46736))))

(declare-fun b!4233354 () Bool)

(declare-fun res!1741120 () Bool)

(declare-fun e!2628529 () Bool)

(assert (=> b!4233354 (=> (not res!1741120) (not e!2628529))))

(declare-fun lt!1505131 () List!46860)

(assert (=> b!4233354 (= res!1741120 (= (size!34263 lt!1505131) (+ (size!34263 Nil!46736) (size!34263 (Cons!46736 (head!8975 input!3600) Nil!46736)))))))

(declare-fun b!4233355 () Bool)

(assert (=> b!4233355 (= e!2628529 (or (not (= (Cons!46736 (head!8975 input!3600) Nil!46736) Nil!46736)) (= lt!1505131 Nil!46736)))))

(declare-fun b!4233353 () Bool)

(assert (=> b!4233353 (= e!2628530 (Cons!46736 (h!52156 Nil!46736) (++!11919 (t!349547 Nil!46736) (Cons!46736 (head!8975 input!3600) Nil!46736))))))

(declare-fun d!1245644 () Bool)

(assert (=> d!1245644 e!2628529))

(declare-fun res!1741119 () Bool)

(assert (=> d!1245644 (=> (not res!1741119) (not e!2628529))))

(assert (=> d!1245644 (= res!1741119 (= (content!7340 lt!1505131) ((_ map or) (content!7340 Nil!46736) (content!7340 (Cons!46736 (head!8975 input!3600) Nil!46736)))))))

(assert (=> d!1245644 (= lt!1505131 e!2628530)))

(declare-fun c!719587 () Bool)

(assert (=> d!1245644 (= c!719587 ((_ is Nil!46736) Nil!46736))))

(assert (=> d!1245644 (= (++!11919 Nil!46736 (Cons!46736 (head!8975 input!3600) Nil!46736)) lt!1505131)))

(assert (= (and d!1245644 c!719587) b!4233352))

(assert (= (and d!1245644 (not c!719587)) b!4233353))

(assert (= (and d!1245644 res!1741119) b!4233354))

(assert (= (and b!4233354 res!1741120) b!4233355))

(declare-fun m!4819609 () Bool)

(assert (=> b!4233354 m!4819609))

(assert (=> b!4233354 m!4819097))

(declare-fun m!4819611 () Bool)

(assert (=> b!4233354 m!4819611))

(declare-fun m!4819613 () Bool)

(assert (=> b!4233353 m!4819613))

(declare-fun m!4819615 () Bool)

(assert (=> d!1245644 m!4819615))

(declare-fun m!4819617 () Bool)

(assert (=> d!1245644 m!4819617))

(declare-fun m!4819619 () Bool)

(assert (=> d!1245644 m!4819619))

(assert (=> b!4233100 d!1245644))

(assert (=> b!4233100 d!1245532))

(declare-fun d!1245646 () Bool)

(assert (=> d!1245646 (= (++!11919 (++!11919 Nil!46736 (Cons!46736 lt!1505006 Nil!46736)) lt!1505009) input!3600)))

(declare-fun lt!1505139 () Unit!65887)

(declare-fun choose!25930 (List!46860 C!25804 List!46860 List!46860) Unit!65887)

(assert (=> d!1245646 (= lt!1505139 (choose!25930 Nil!46736 lt!1505006 lt!1505009 input!3600))))

(assert (=> d!1245646 (= (++!11919 Nil!46736 (Cons!46736 lt!1505006 lt!1505009)) input!3600)))

(assert (=> d!1245646 (= (lemmaMoveElementToOtherListKeepsConcatEq!1309 Nil!46736 lt!1505006 lt!1505009 input!3600) lt!1505139)))

(declare-fun bs!598032 () Bool)

(assert (= bs!598032 d!1245646))

(assert (=> bs!598032 m!4819335))

(assert (=> bs!598032 m!4819335))

(assert (=> bs!598032 m!4819347))

(declare-fun m!4819637 () Bool)

(assert (=> bs!598032 m!4819637))

(declare-fun m!4819639 () Bool)

(assert (=> bs!598032 m!4819639))

(assert (=> b!4233100 d!1245646))

(assert (=> b!4233100 d!1245548))

(declare-fun d!1245654 () Bool)

(assert (=> d!1245654 (= (head!8975 (getSuffix!2866 input!3600 Nil!46736)) (h!52156 (getSuffix!2866 input!3600 Nil!46736)))))

(assert (=> b!4233100 d!1245654))

(declare-fun d!1245656 () Bool)

(declare-fun lt!1505142 () List!46860)

(assert (=> d!1245656 (= (++!11919 Nil!46736 lt!1505142) input!3600)))

(declare-fun e!2628544 () List!46860)

(assert (=> d!1245656 (= lt!1505142 e!2628544)))

(declare-fun c!719596 () Bool)

(assert (=> d!1245656 (= c!719596 ((_ is Cons!46736) Nil!46736))))

(assert (=> d!1245656 (>= (size!34263 input!3600) (size!34263 Nil!46736))))

(assert (=> d!1245656 (= (getSuffix!2866 input!3600 Nil!46736) lt!1505142)))

(declare-fun b!4233379 () Bool)

(assert (=> b!4233379 (= e!2628544 (getSuffix!2866 (tail!6822 input!3600) (t!349547 Nil!46736)))))

(declare-fun b!4233380 () Bool)

(assert (=> b!4233380 (= e!2628544 input!3600)))

(assert (= (and d!1245656 c!719596) b!4233379))

(assert (= (and d!1245656 (not c!719596)) b!4233380))

(declare-fun m!4819641 () Bool)

(assert (=> d!1245656 m!4819641))

(assert (=> d!1245656 m!4819093))

(assert (=> d!1245656 m!4819097))

(assert (=> b!4233379 m!4819149))

(assert (=> b!4233379 m!4819149))

(declare-fun m!4819643 () Bool)

(assert (=> b!4233379 m!4819643))

(assert (=> b!4233100 d!1245656))

(declare-fun b!4233382 () Bool)

(declare-fun res!1741125 () Bool)

(declare-fun e!2628546 () Bool)

(assert (=> b!4233382 (=> (not res!1741125) (not e!2628546))))

(assert (=> b!4233382 (= res!1741125 (= (head!8975 (++!11919 Nil!46736 (Cons!46736 (head!8975 (getSuffix!2866 input!3600 Nil!46736)) Nil!46736))) (head!8975 input!3600)))))

(declare-fun d!1245658 () Bool)

(declare-fun e!2628545 () Bool)

(assert (=> d!1245658 e!2628545))

(declare-fun res!1741124 () Bool)

(assert (=> d!1245658 (=> res!1741124 e!2628545)))

(declare-fun lt!1505143 () Bool)

(assert (=> d!1245658 (= res!1741124 (not lt!1505143))))

(declare-fun e!2628547 () Bool)

(assert (=> d!1245658 (= lt!1505143 e!2628547)))

(declare-fun res!1741123 () Bool)

(assert (=> d!1245658 (=> res!1741123 e!2628547)))

(assert (=> d!1245658 (= res!1741123 ((_ is Nil!46736) (++!11919 Nil!46736 (Cons!46736 (head!8975 (getSuffix!2866 input!3600 Nil!46736)) Nil!46736))))))

(assert (=> d!1245658 (= (isPrefix!4713 (++!11919 Nil!46736 (Cons!46736 (head!8975 (getSuffix!2866 input!3600 Nil!46736)) Nil!46736)) input!3600) lt!1505143)))

(declare-fun b!4233381 () Bool)

(assert (=> b!4233381 (= e!2628547 e!2628546)))

(declare-fun res!1741126 () Bool)

(assert (=> b!4233381 (=> (not res!1741126) (not e!2628546))))

(assert (=> b!4233381 (= res!1741126 (not ((_ is Nil!46736) input!3600)))))

(declare-fun b!4233383 () Bool)

(assert (=> b!4233383 (= e!2628546 (isPrefix!4713 (tail!6822 (++!11919 Nil!46736 (Cons!46736 (head!8975 (getSuffix!2866 input!3600 Nil!46736)) Nil!46736))) (tail!6822 input!3600)))))

(declare-fun b!4233384 () Bool)

(assert (=> b!4233384 (= e!2628545 (>= (size!34263 input!3600) (size!34263 (++!11919 Nil!46736 (Cons!46736 (head!8975 (getSuffix!2866 input!3600 Nil!46736)) Nil!46736)))))))

(assert (= (and d!1245658 (not res!1741123)) b!4233381))

(assert (= (and b!4233381 res!1741126) b!4233382))

(assert (= (and b!4233382 res!1741125) b!4233383))

(assert (= (and d!1245658 (not res!1741124)) b!4233384))

(assert (=> b!4233382 m!4819337))

(declare-fun m!4819647 () Bool)

(assert (=> b!4233382 m!4819647))

(assert (=> b!4233382 m!4819147))

(assert (=> b!4233383 m!4819337))

(declare-fun m!4819649 () Bool)

(assert (=> b!4233383 m!4819649))

(assert (=> b!4233383 m!4819149))

(assert (=> b!4233383 m!4819649))

(assert (=> b!4233383 m!4819149))

(declare-fun m!4819651 () Bool)

(assert (=> b!4233383 m!4819651))

(assert (=> b!4233384 m!4819093))

(assert (=> b!4233384 m!4819337))

(declare-fun m!4819653 () Bool)

(assert (=> b!4233384 m!4819653))

(assert (=> b!4233100 d!1245658))

(declare-fun d!1245664 () Bool)

(assert (=> d!1245664 (isPrefix!4713 (++!11919 Nil!46736 (Cons!46736 (head!8975 (getSuffix!2866 input!3600 Nil!46736)) Nil!46736)) input!3600)))

(declare-fun lt!1505149 () Unit!65887)

(declare-fun choose!25931 (List!46860 List!46860) Unit!65887)

(assert (=> d!1245664 (= lt!1505149 (choose!25931 Nil!46736 input!3600))))

(assert (=> d!1245664 (isPrefix!4713 Nil!46736 input!3600)))

(assert (=> d!1245664 (= (lemmaAddHeadSuffixToPrefixStillPrefix!691 Nil!46736 input!3600) lt!1505149)))

(declare-fun bs!598035 () Bool)

(assert (= bs!598035 d!1245664))

(assert (=> bs!598035 m!4819313))

(assert (=> bs!598035 m!4819343))

(assert (=> bs!598035 m!4819337))

(assert (=> bs!598035 m!4819337))

(assert (=> bs!598035 m!4819339))

(declare-fun m!4819679 () Bool)

(assert (=> bs!598035 m!4819679))

(assert (=> bs!598035 m!4819313))

(assert (=> bs!598035 m!4819101))

(assert (=> b!4233100 d!1245664))

(declare-fun b!4233399 () Bool)

(declare-fun e!2628557 () List!46860)

(assert (=> b!4233399 (= e!2628557 lt!1505009)))

(declare-fun b!4233401 () Bool)

(declare-fun res!1741138 () Bool)

(declare-fun e!2628556 () Bool)

(assert (=> b!4233401 (=> (not res!1741138) (not e!2628556))))

(declare-fun lt!1505150 () List!46860)

(assert (=> b!4233401 (= res!1741138 (= (size!34263 lt!1505150) (+ (size!34263 (++!11919 Nil!46736 (Cons!46736 lt!1505006 Nil!46736))) (size!34263 lt!1505009))))))

(declare-fun b!4233402 () Bool)

(assert (=> b!4233402 (= e!2628556 (or (not (= lt!1505009 Nil!46736)) (= lt!1505150 (++!11919 Nil!46736 (Cons!46736 lt!1505006 Nil!46736)))))))

(declare-fun b!4233400 () Bool)

(assert (=> b!4233400 (= e!2628557 (Cons!46736 (h!52156 (++!11919 Nil!46736 (Cons!46736 lt!1505006 Nil!46736))) (++!11919 (t!349547 (++!11919 Nil!46736 (Cons!46736 lt!1505006 Nil!46736))) lt!1505009)))))

(declare-fun d!1245682 () Bool)

(assert (=> d!1245682 e!2628556))

(declare-fun res!1741137 () Bool)

(assert (=> d!1245682 (=> (not res!1741137) (not e!2628556))))

(assert (=> d!1245682 (= res!1741137 (= (content!7340 lt!1505150) ((_ map or) (content!7340 (++!11919 Nil!46736 (Cons!46736 lt!1505006 Nil!46736))) (content!7340 lt!1505009))))))

(assert (=> d!1245682 (= lt!1505150 e!2628557)))

(declare-fun c!719598 () Bool)

(assert (=> d!1245682 (= c!719598 ((_ is Nil!46736) (++!11919 Nil!46736 (Cons!46736 lt!1505006 Nil!46736))))))

(assert (=> d!1245682 (= (++!11919 (++!11919 Nil!46736 (Cons!46736 lt!1505006 Nil!46736)) lt!1505009) lt!1505150)))

(assert (= (and d!1245682 c!719598) b!4233399))

(assert (= (and d!1245682 (not c!719598)) b!4233400))

(assert (= (and d!1245682 res!1741137) b!4233401))

(assert (= (and b!4233401 res!1741138) b!4233402))

(declare-fun m!4819681 () Bool)

(assert (=> b!4233401 m!4819681))

(assert (=> b!4233401 m!4819335))

(declare-fun m!4819683 () Bool)

(assert (=> b!4233401 m!4819683))

(declare-fun m!4819685 () Bool)

(assert (=> b!4233401 m!4819685))

(declare-fun m!4819687 () Bool)

(assert (=> b!4233400 m!4819687))

(declare-fun m!4819689 () Bool)

(assert (=> d!1245682 m!4819689))

(assert (=> d!1245682 m!4819335))

(declare-fun m!4819691 () Bool)

(assert (=> d!1245682 m!4819691))

(declare-fun m!4819693 () Bool)

(assert (=> d!1245682 m!4819693))

(assert (=> b!4233100 d!1245682))

(declare-fun b!4233403 () Bool)

(declare-fun e!2628559 () List!46860)

(assert (=> b!4233403 (= e!2628559 (Cons!46736 lt!1505006 Nil!46736))))

(declare-fun b!4233405 () Bool)

(declare-fun res!1741140 () Bool)

(declare-fun e!2628558 () Bool)

(assert (=> b!4233405 (=> (not res!1741140) (not e!2628558))))

(declare-fun lt!1505151 () List!46860)

(assert (=> b!4233405 (= res!1741140 (= (size!34263 lt!1505151) (+ (size!34263 Nil!46736) (size!34263 (Cons!46736 lt!1505006 Nil!46736)))))))

(declare-fun b!4233406 () Bool)

(assert (=> b!4233406 (= e!2628558 (or (not (= (Cons!46736 lt!1505006 Nil!46736) Nil!46736)) (= lt!1505151 Nil!46736)))))

(declare-fun b!4233404 () Bool)

(assert (=> b!4233404 (= e!2628559 (Cons!46736 (h!52156 Nil!46736) (++!11919 (t!349547 Nil!46736) (Cons!46736 lt!1505006 Nil!46736))))))

(declare-fun d!1245684 () Bool)

(assert (=> d!1245684 e!2628558))

(declare-fun res!1741139 () Bool)

(assert (=> d!1245684 (=> (not res!1741139) (not e!2628558))))

(assert (=> d!1245684 (= res!1741139 (= (content!7340 lt!1505151) ((_ map or) (content!7340 Nil!46736) (content!7340 (Cons!46736 lt!1505006 Nil!46736)))))))

(assert (=> d!1245684 (= lt!1505151 e!2628559)))

(declare-fun c!719599 () Bool)

(assert (=> d!1245684 (= c!719599 ((_ is Nil!46736) Nil!46736))))

(assert (=> d!1245684 (= (++!11919 Nil!46736 (Cons!46736 lt!1505006 Nil!46736)) lt!1505151)))

(assert (= (and d!1245684 c!719599) b!4233403))

(assert (= (and d!1245684 (not c!719599)) b!4233404))

(assert (= (and d!1245684 res!1741139) b!4233405))

(assert (= (and b!4233405 res!1741140) b!4233406))

(declare-fun m!4819695 () Bool)

(assert (=> b!4233405 m!4819695))

(assert (=> b!4233405 m!4819097))

(declare-fun m!4819697 () Bool)

(assert (=> b!4233405 m!4819697))

(declare-fun m!4819699 () Bool)

(assert (=> b!4233404 m!4819699))

(declare-fun m!4819701 () Bool)

(assert (=> d!1245684 m!4819701))

(assert (=> d!1245684 m!4819617))

(declare-fun m!4819703 () Bool)

(assert (=> d!1245684 m!4819703))

(assert (=> b!4233100 d!1245684))

(declare-fun d!1245686 () Bool)

(assert (=> d!1245686 (<= (size!34263 Nil!46736) (size!34263 input!3600))))

(declare-fun lt!1505157 () Unit!65887)

(declare-fun choose!25932 (List!46860 List!46860) Unit!65887)

(assert (=> d!1245686 (= lt!1505157 (choose!25932 Nil!46736 input!3600))))

(assert (=> d!1245686 (isPrefix!4713 Nil!46736 input!3600)))

(assert (=> d!1245686 (= (lemmaIsPrefixThenSmallerEqSize!603 Nil!46736 input!3600) lt!1505157)))

(declare-fun bs!598037 () Bool)

(assert (= bs!598037 d!1245686))

(assert (=> bs!598037 m!4819097))

(assert (=> bs!598037 m!4819093))

(declare-fun m!4819709 () Bool)

(assert (=> bs!598037 m!4819709))

(assert (=> bs!598037 m!4819101))

(assert (=> b!4233100 d!1245686))

(declare-fun b!4233411 () Bool)

(declare-fun e!2628563 () List!46860)

(assert (=> b!4233411 (= e!2628563 (Cons!46736 (head!8975 (getSuffix!2866 input!3600 Nil!46736)) Nil!46736))))

(declare-fun b!4233413 () Bool)

(declare-fun res!1741144 () Bool)

(declare-fun e!2628562 () Bool)

(assert (=> b!4233413 (=> (not res!1741144) (not e!2628562))))

(declare-fun lt!1505159 () List!46860)

(assert (=> b!4233413 (= res!1741144 (= (size!34263 lt!1505159) (+ (size!34263 Nil!46736) (size!34263 (Cons!46736 (head!8975 (getSuffix!2866 input!3600 Nil!46736)) Nil!46736)))))))

(declare-fun b!4233414 () Bool)

(assert (=> b!4233414 (= e!2628562 (or (not (= (Cons!46736 (head!8975 (getSuffix!2866 input!3600 Nil!46736)) Nil!46736) Nil!46736)) (= lt!1505159 Nil!46736)))))

(declare-fun b!4233412 () Bool)

(assert (=> b!4233412 (= e!2628563 (Cons!46736 (h!52156 Nil!46736) (++!11919 (t!349547 Nil!46736) (Cons!46736 (head!8975 (getSuffix!2866 input!3600 Nil!46736)) Nil!46736))))))

(declare-fun d!1245692 () Bool)

(assert (=> d!1245692 e!2628562))

(declare-fun res!1741143 () Bool)

(assert (=> d!1245692 (=> (not res!1741143) (not e!2628562))))

(assert (=> d!1245692 (= res!1741143 (= (content!7340 lt!1505159) ((_ map or) (content!7340 Nil!46736) (content!7340 (Cons!46736 (head!8975 (getSuffix!2866 input!3600 Nil!46736)) Nil!46736)))))))

(assert (=> d!1245692 (= lt!1505159 e!2628563)))

(declare-fun c!719601 () Bool)

(assert (=> d!1245692 (= c!719601 ((_ is Nil!46736) Nil!46736))))

(assert (=> d!1245692 (= (++!11919 Nil!46736 (Cons!46736 (head!8975 (getSuffix!2866 input!3600 Nil!46736)) Nil!46736)) lt!1505159)))

(assert (= (and d!1245692 c!719601) b!4233411))

(assert (= (and d!1245692 (not c!719601)) b!4233412))

(assert (= (and d!1245692 res!1741143) b!4233413))

(assert (= (and b!4233413 res!1741144) b!4233414))

(declare-fun m!4819721 () Bool)

(assert (=> b!4233413 m!4819721))

(assert (=> b!4233413 m!4819097))

(declare-fun m!4819723 () Bool)

(assert (=> b!4233413 m!4819723))

(declare-fun m!4819725 () Bool)

(assert (=> b!4233412 m!4819725))

(declare-fun m!4819727 () Bool)

(assert (=> d!1245692 m!4819727))

(assert (=> d!1245692 m!4819617))

(declare-fun m!4819729 () Bool)

(assert (=> d!1245692 m!4819729))

(assert (=> b!4233100 d!1245692))

(assert (=> b!4233100 d!1245496))

(assert (=> b!4233100 d!1245590))

(assert (=> d!1245516 d!1245500))

(declare-fun d!1245696 () Bool)

(assert (=> d!1245696 (= input!3600 lt!1505015)))

(declare-fun lt!1505163 () Unit!65887)

(declare-fun choose!25933 (List!46860 List!46860 List!46860 List!46860 List!46860) Unit!65887)

(assert (=> d!1245696 (= lt!1505163 (choose!25933 Nil!46736 input!3600 Nil!46736 lt!1505015 input!3600))))

(assert (=> d!1245696 (isPrefix!4713 Nil!46736 input!3600)))

(assert (=> d!1245696 (= (lemmaSamePrefixThenSameSuffix!2282 Nil!46736 input!3600 Nil!46736 lt!1505015 input!3600) lt!1505163)))

(declare-fun bs!598038 () Bool)

(assert (= bs!598038 d!1245696))

(declare-fun m!4819739 () Bool)

(assert (=> bs!598038 m!4819739))

(assert (=> bs!598038 m!4819101))

(assert (=> d!1245516 d!1245696))

(declare-fun b!4233419 () Bool)

(declare-fun e!2628568 () List!46860)

(assert (=> b!4233419 (= e!2628568 (_2!25318 lt!1505012))))

(declare-fun b!4233421 () Bool)

(declare-fun res!1741150 () Bool)

(declare-fun e!2628567 () Bool)

(assert (=> b!4233421 (=> (not res!1741150) (not e!2628567))))

(declare-fun lt!1505164 () List!46860)

(assert (=> b!4233421 (= res!1741150 (= (size!34263 lt!1505164) (+ (size!34263 (_1!25318 lt!1505012)) (size!34263 (_2!25318 lt!1505012)))))))

(declare-fun b!4233422 () Bool)

(assert (=> b!4233422 (= e!2628567 (or (not (= (_2!25318 lt!1505012) Nil!46736)) (= lt!1505164 (_1!25318 lt!1505012))))))

(declare-fun b!4233420 () Bool)

(assert (=> b!4233420 (= e!2628568 (Cons!46736 (h!52156 (_1!25318 lt!1505012)) (++!11919 (t!349547 (_1!25318 lt!1505012)) (_2!25318 lt!1505012))))))

(declare-fun d!1245700 () Bool)

(assert (=> d!1245700 e!2628567))

(declare-fun res!1741149 () Bool)

(assert (=> d!1245700 (=> (not res!1741149) (not e!2628567))))

(assert (=> d!1245700 (= res!1741149 (= (content!7340 lt!1505164) ((_ map or) (content!7340 (_1!25318 lt!1505012)) (content!7340 (_2!25318 lt!1505012)))))))

(assert (=> d!1245700 (= lt!1505164 e!2628568)))

(declare-fun c!719602 () Bool)

(assert (=> d!1245700 (= c!719602 ((_ is Nil!46736) (_1!25318 lt!1505012)))))

(assert (=> d!1245700 (= (++!11919 (_1!25318 lt!1505012) (_2!25318 lt!1505012)) lt!1505164)))

(assert (= (and d!1245700 c!719602) b!4233419))

(assert (= (and d!1245700 (not c!719602)) b!4233420))

(assert (= (and d!1245700 res!1741149) b!4233421))

(assert (= (and b!4233421 res!1741150) b!4233422))

(declare-fun m!4819741 () Bool)

(assert (=> b!4233421 m!4819741))

(assert (=> b!4233421 m!4819325))

(declare-fun m!4819743 () Bool)

(assert (=> b!4233421 m!4819743))

(declare-fun m!4819745 () Bool)

(assert (=> b!4233420 m!4819745))

(declare-fun m!4819747 () Bool)

(assert (=> d!1245700 m!4819747))

(declare-fun m!4819749 () Bool)

(assert (=> d!1245700 m!4819749))

(declare-fun m!4819751 () Bool)

(assert (=> d!1245700 m!4819751))

(assert (=> d!1245516 d!1245700))

(assert (=> d!1245516 d!1245656))

(declare-fun b!4233423 () Bool)

(declare-fun e!2628570 () List!46860)

(assert (=> b!4233423 (= e!2628570 input!3600)))

(declare-fun b!4233425 () Bool)

(declare-fun res!1741152 () Bool)

(declare-fun e!2628569 () Bool)

(assert (=> b!4233425 (=> (not res!1741152) (not e!2628569))))

(declare-fun lt!1505167 () List!46860)

(assert (=> b!4233425 (= res!1741152 (= (size!34263 lt!1505167) (+ (size!34263 Nil!46736) (size!34263 input!3600))))))

(declare-fun b!4233426 () Bool)

(assert (=> b!4233426 (= e!2628569 (or (not (= input!3600 Nil!46736)) (= lt!1505167 Nil!46736)))))

(declare-fun b!4233424 () Bool)

(assert (=> b!4233424 (= e!2628570 (Cons!46736 (h!52156 Nil!46736) (++!11919 (t!349547 Nil!46736) input!3600)))))

(declare-fun d!1245702 () Bool)

(assert (=> d!1245702 e!2628569))

(declare-fun res!1741151 () Bool)

(assert (=> d!1245702 (=> (not res!1741151) (not e!2628569))))

(assert (=> d!1245702 (= res!1741151 (= (content!7340 lt!1505167) ((_ map or) (content!7340 Nil!46736) (content!7340 input!3600))))))

(assert (=> d!1245702 (= lt!1505167 e!2628570)))

(declare-fun c!719603 () Bool)

(assert (=> d!1245702 (= c!719603 ((_ is Nil!46736) Nil!46736))))

(assert (=> d!1245702 (= (++!11919 Nil!46736 input!3600) lt!1505167)))

(assert (= (and d!1245702 c!719603) b!4233423))

(assert (= (and d!1245702 (not c!719603)) b!4233424))

(assert (= (and d!1245702 res!1741151) b!4233425))

(assert (= (and b!4233425 res!1741152) b!4233426))

(declare-fun m!4819753 () Bool)

(assert (=> b!4233425 m!4819753))

(assert (=> b!4233425 m!4819097))

(assert (=> b!4233425 m!4819093))

(declare-fun m!4819755 () Bool)

(assert (=> b!4233424 m!4819755))

(declare-fun m!4819757 () Bool)

(assert (=> d!1245702 m!4819757))

(assert (=> d!1245702 m!4819617))

(declare-fun m!4819759 () Bool)

(assert (=> d!1245702 m!4819759))

(assert (=> d!1245516 d!1245702))

(declare-fun d!1245704 () Bool)

(declare-fun lostCauseFct!270 (Regex!12803) Bool)

(assert (=> d!1245704 (= (lostCause!1065 (regex!7898 r!4353)) (lostCauseFct!270 (regex!7898 r!4353)))))

(declare-fun bs!598040 () Bool)

(assert (= bs!598040 d!1245704))

(declare-fun m!4819763 () Bool)

(assert (=> bs!598040 m!4819763))

(assert (=> d!1245516 d!1245704))

(declare-fun d!1245708 () Bool)

(assert (=> d!1245708 (isPrefix!4713 Nil!46736 (++!11919 Nil!46736 input!3600))))

(declare-fun lt!1505174 () Unit!65887)

(declare-fun choose!25934 (List!46860 List!46860) Unit!65887)

(assert (=> d!1245708 (= lt!1505174 (choose!25934 Nil!46736 input!3600))))

(assert (=> d!1245708 (= (lemmaConcatTwoListThenFirstIsPrefix!3102 Nil!46736 input!3600) lt!1505174)))

(declare-fun bs!598042 () Bool)

(assert (= bs!598042 d!1245708))

(assert (=> bs!598042 m!4819305))

(assert (=> bs!598042 m!4819305))

(assert (=> bs!598042 m!4819307))

(declare-fun m!4819767 () Bool)

(assert (=> bs!598042 m!4819767))

(assert (=> d!1245516 d!1245708))

(declare-fun b!4233432 () Bool)

(declare-fun res!1741157 () Bool)

(declare-fun e!2628574 () Bool)

(assert (=> b!4233432 (=> (not res!1741157) (not e!2628574))))

(assert (=> b!4233432 (= res!1741157 (= (head!8975 Nil!46736) (head!8975 (++!11919 Nil!46736 input!3600))))))

(declare-fun d!1245712 () Bool)

(declare-fun e!2628573 () Bool)

(assert (=> d!1245712 e!2628573))

(declare-fun res!1741156 () Bool)

(assert (=> d!1245712 (=> res!1741156 e!2628573)))

(declare-fun lt!1505176 () Bool)

(assert (=> d!1245712 (= res!1741156 (not lt!1505176))))

(declare-fun e!2628575 () Bool)

(assert (=> d!1245712 (= lt!1505176 e!2628575)))

(declare-fun res!1741155 () Bool)

(assert (=> d!1245712 (=> res!1741155 e!2628575)))

(assert (=> d!1245712 (= res!1741155 ((_ is Nil!46736) Nil!46736))))

(assert (=> d!1245712 (= (isPrefix!4713 Nil!46736 (++!11919 Nil!46736 input!3600)) lt!1505176)))

(declare-fun b!4233431 () Bool)

(assert (=> b!4233431 (= e!2628575 e!2628574)))

(declare-fun res!1741158 () Bool)

(assert (=> b!4233431 (=> (not res!1741158) (not e!2628574))))

(assert (=> b!4233431 (= res!1741158 (not ((_ is Nil!46736) (++!11919 Nil!46736 input!3600))))))

(declare-fun b!4233433 () Bool)

(assert (=> b!4233433 (= e!2628574 (isPrefix!4713 (tail!6822 Nil!46736) (tail!6822 (++!11919 Nil!46736 input!3600))))))

(declare-fun b!4233434 () Bool)

(assert (=> b!4233434 (= e!2628573 (>= (size!34263 (++!11919 Nil!46736 input!3600)) (size!34263 Nil!46736)))))

(assert (= (and d!1245712 (not res!1741155)) b!4233431))

(assert (= (and b!4233431 res!1741158) b!4233432))

(assert (= (and b!4233432 res!1741157) b!4233433))

(assert (= (and d!1245712 (not res!1741156)) b!4233434))

(assert (=> b!4233432 m!4819359))

(assert (=> b!4233432 m!4819305))

(declare-fun m!4819779 () Bool)

(assert (=> b!4233432 m!4819779))

(assert (=> b!4233433 m!4819361))

(assert (=> b!4233433 m!4819305))

(declare-fun m!4819781 () Bool)

(assert (=> b!4233433 m!4819781))

(assert (=> b!4233433 m!4819361))

(assert (=> b!4233433 m!4819781))

(declare-fun m!4819783 () Bool)

(assert (=> b!4233433 m!4819783))

(assert (=> b!4233434 m!4819305))

(declare-fun m!4819785 () Bool)

(assert (=> b!4233434 m!4819785))

(assert (=> b!4233434 m!4819097))

(assert (=> d!1245516 d!1245712))

(declare-fun d!1245716 () Bool)

(assert (not d!1245716))

(assert (=> b!4233109 d!1245716))

(assert (=> b!4233109 d!1245590))

(assert (=> b!4233111 d!1245532))

(assert (=> b!4233111 d!1245496))

(assert (=> b!4232870 d!1245550))

(assert (=> bm!293689 d!1245548))

(declare-fun b!4233439 () Bool)

(declare-fun e!2628585 () Unit!65887)

(declare-fun Unit!65898 () Unit!65887)

(assert (=> b!4233439 (= e!2628585 Unit!65898)))

(declare-fun b!4233440 () Bool)

(declare-fun e!2628584 () tuple2!44368)

(declare-fun e!2628583 () tuple2!44368)

(assert (=> b!4233440 (= e!2628584 e!2628583)))

(declare-fun c!719606 () Bool)

(assert (=> b!4233440 (= c!719606 (= (+ lt!1504807 1) (size!34263 input!3600)))))

(declare-fun b!4233441 () Bool)

(declare-fun e!2628579 () Bool)

(declare-fun lt!1505186 () tuple2!44368)

(assert (=> b!4233441 (= e!2628579 (>= (size!34263 (_1!25318 lt!1505186)) (size!34263 lt!1505018)))))

(declare-fun bm!293741 () Bool)

(declare-fun call!293747 () Unit!65887)

(assert (=> bm!293741 (= call!293747 (lemmaIsPrefixSameLengthThenSameList!1037 input!3600 lt!1505018 input!3600))))

(declare-fun b!4233442 () Bool)

(declare-fun e!2628578 () tuple2!44368)

(declare-fun e!2628580 () tuple2!44368)

(assert (=> b!4233442 (= e!2628578 e!2628580)))

(declare-fun lt!1505199 () tuple2!44368)

(declare-fun call!293753 () tuple2!44368)

(assert (=> b!4233442 (= lt!1505199 call!293753)))

(declare-fun c!719607 () Bool)

(assert (=> b!4233442 (= c!719607 (isEmpty!27626 (_1!25318 lt!1505199)))))

(declare-fun bm!293742 () Bool)

(declare-fun call!293751 () Regex!12803)

(declare-fun call!293752 () C!25804)

(assert (=> bm!293742 (= call!293751 (derivativeStep!3845 call!293694 call!293752))))

(declare-fun bm!293743 () Bool)

(declare-fun call!293749 () Unit!65887)

(assert (=> bm!293743 (= call!293749 (lemmaIsPrefixRefl!3110 input!3600 input!3600))))

(declare-fun b!4233443 () Bool)

(assert (=> b!4233443 (= e!2628580 (tuple2!44369 lt!1505018 call!293689))))

(declare-fun bm!293744 () Bool)

(assert (=> bm!293744 (= call!293752 (head!8975 call!293689))))

(declare-fun bm!293745 () Bool)

(declare-fun call!293746 () List!46860)

(declare-fun lt!1505192 () List!46860)

(assert (=> bm!293745 (= call!293753 (findLongestMatchInner!1700 call!293751 lt!1505192 (+ lt!1504807 1 1) call!293746 input!3600 (size!34263 input!3600)))))

(declare-fun b!4233444 () Bool)

(declare-fun Unit!65899 () Unit!65887)

(assert (=> b!4233444 (= e!2628585 Unit!65899)))

(declare-fun lt!1505193 () Unit!65887)

(assert (=> b!4233444 (= lt!1505193 call!293749)))

(declare-fun call!293750 () Bool)

(assert (=> b!4233444 call!293750))

(declare-fun lt!1505182 () Unit!65887)

(assert (=> b!4233444 (= lt!1505182 lt!1505193)))

(declare-fun lt!1505197 () Unit!65887)

(assert (=> b!4233444 (= lt!1505197 call!293747)))

(assert (=> b!4233444 (= input!3600 lt!1505018)))

(declare-fun lt!1505181 () Unit!65887)

(assert (=> b!4233444 (= lt!1505181 lt!1505197)))

(assert (=> b!4233444 false))

(declare-fun b!4233445 () Bool)

(declare-fun c!719611 () Bool)

(declare-fun call!293748 () Bool)

(assert (=> b!4233445 (= c!719611 call!293748)))

(declare-fun lt!1505190 () Unit!65887)

(declare-fun lt!1505194 () Unit!65887)

(assert (=> b!4233445 (= lt!1505190 lt!1505194)))

(assert (=> b!4233445 (= input!3600 lt!1505018)))

(assert (=> b!4233445 (= lt!1505194 call!293747)))

(declare-fun lt!1505202 () Unit!65887)

(declare-fun lt!1505188 () Unit!65887)

(assert (=> b!4233445 (= lt!1505202 lt!1505188)))

(assert (=> b!4233445 call!293750))

(assert (=> b!4233445 (= lt!1505188 call!293749)))

(declare-fun e!2628582 () tuple2!44368)

(assert (=> b!4233445 (= e!2628583 e!2628582)))

(declare-fun b!4233446 () Bool)

(assert (=> b!4233446 (= e!2628582 (tuple2!44369 Nil!46736 input!3600))))

(declare-fun bm!293746 () Bool)

(assert (=> bm!293746 (= call!293746 (tail!6822 call!293689))))

(declare-fun b!4233447 () Bool)

(assert (=> b!4233447 (= e!2628578 call!293753)))

(declare-fun b!4233448 () Bool)

(assert (=> b!4233448 (= e!2628584 (tuple2!44369 Nil!46736 input!3600))))

(declare-fun b!4233449 () Bool)

(assert (=> b!4233449 (= e!2628582 (tuple2!44369 lt!1505018 Nil!46736))))

(declare-fun b!4233450 () Bool)

(declare-fun c!719608 () Bool)

(assert (=> b!4233450 (= c!719608 call!293748)))

(declare-fun lt!1505195 () Unit!65887)

(declare-fun lt!1505203 () Unit!65887)

(assert (=> b!4233450 (= lt!1505195 lt!1505203)))

(declare-fun lt!1505180 () C!25804)

(declare-fun lt!1505183 () List!46860)

(assert (=> b!4233450 (= (++!11919 (++!11919 lt!1505018 (Cons!46736 lt!1505180 Nil!46736)) lt!1505183) input!3600)))

(assert (=> b!4233450 (= lt!1505203 (lemmaMoveElementToOtherListKeepsConcatEq!1309 lt!1505018 lt!1505180 lt!1505183 input!3600))))

(assert (=> b!4233450 (= lt!1505183 (tail!6822 call!293689))))

(assert (=> b!4233450 (= lt!1505180 (head!8975 call!293689))))

(declare-fun lt!1505184 () Unit!65887)

(declare-fun lt!1505198 () Unit!65887)

(assert (=> b!4233450 (= lt!1505184 lt!1505198)))

(assert (=> b!4233450 (isPrefix!4713 (++!11919 lt!1505018 (Cons!46736 (head!8975 (getSuffix!2866 input!3600 lt!1505018)) Nil!46736)) input!3600)))

(assert (=> b!4233450 (= lt!1505198 (lemmaAddHeadSuffixToPrefixStillPrefix!691 lt!1505018 input!3600))))

(declare-fun lt!1505196 () Unit!65887)

(declare-fun lt!1505179 () Unit!65887)

(assert (=> b!4233450 (= lt!1505196 lt!1505179)))

(assert (=> b!4233450 (= lt!1505179 (lemmaAddHeadSuffixToPrefixStillPrefix!691 lt!1505018 input!3600))))

(assert (=> b!4233450 (= lt!1505192 (++!11919 lt!1505018 (Cons!46736 (head!8975 call!293689) Nil!46736)))))

(declare-fun lt!1505191 () Unit!65887)

(assert (=> b!4233450 (= lt!1505191 e!2628585)))

(declare-fun c!719610 () Bool)

(assert (=> b!4233450 (= c!719610 (= (size!34263 lt!1505018) (size!34263 input!3600)))))

(declare-fun lt!1505204 () Unit!65887)

(declare-fun lt!1505185 () Unit!65887)

(assert (=> b!4233450 (= lt!1505204 lt!1505185)))

(assert (=> b!4233450 (<= (size!34263 lt!1505018) (size!34263 input!3600))))

(assert (=> b!4233450 (= lt!1505185 (lemmaIsPrefixThenSmallerEqSize!603 lt!1505018 input!3600))))

(assert (=> b!4233450 (= e!2628583 e!2628578)))

(declare-fun b!4233451 () Bool)

(declare-fun e!2628581 () Bool)

(assert (=> b!4233451 (= e!2628581 e!2628579)))

(declare-fun res!1741161 () Bool)

(assert (=> b!4233451 (=> res!1741161 e!2628579)))

(assert (=> b!4233451 (= res!1741161 (isEmpty!27626 (_1!25318 lt!1505186)))))

(declare-fun bm!293747 () Bool)

(assert (=> bm!293747 (= call!293748 (nullable!4512 call!293694))))

(declare-fun bm!293748 () Bool)

(assert (=> bm!293748 (= call!293750 (isPrefix!4713 input!3600 input!3600))))

(declare-fun d!1245720 () Bool)

(assert (=> d!1245720 e!2628581))

(declare-fun res!1741162 () Bool)

(assert (=> d!1245720 (=> (not res!1741162) (not e!2628581))))

(assert (=> d!1245720 (= res!1741162 (= (++!11919 (_1!25318 lt!1505186) (_2!25318 lt!1505186)) input!3600))))

(assert (=> d!1245720 (= lt!1505186 e!2628584)))

(declare-fun c!719609 () Bool)

(assert (=> d!1245720 (= c!719609 (lostCause!1065 call!293694))))

(declare-fun lt!1505201 () Unit!65887)

(declare-fun Unit!65900 () Unit!65887)

(assert (=> d!1245720 (= lt!1505201 Unit!65900)))

(assert (=> d!1245720 (= (getSuffix!2866 input!3600 lt!1505018) call!293689)))

(declare-fun lt!1505200 () Unit!65887)

(declare-fun lt!1505178 () Unit!65887)

(assert (=> d!1245720 (= lt!1505200 lt!1505178)))

(declare-fun lt!1505189 () List!46860)

(assert (=> d!1245720 (= call!293689 lt!1505189)))

(assert (=> d!1245720 (= lt!1505178 (lemmaSamePrefixThenSameSuffix!2282 lt!1505018 call!293689 lt!1505018 lt!1505189 input!3600))))

(assert (=> d!1245720 (= lt!1505189 (getSuffix!2866 input!3600 lt!1505018))))

(declare-fun lt!1505187 () Unit!65887)

(declare-fun lt!1505205 () Unit!65887)

(assert (=> d!1245720 (= lt!1505187 lt!1505205)))

(assert (=> d!1245720 (isPrefix!4713 lt!1505018 (++!11919 lt!1505018 call!293689))))

(assert (=> d!1245720 (= lt!1505205 (lemmaConcatTwoListThenFirstIsPrefix!3102 lt!1505018 call!293689))))

(assert (=> d!1245720 (validRegex!5819 call!293694)))

(assert (=> d!1245720 (= (findLongestMatchInner!1700 call!293694 lt!1505018 (+ lt!1504807 1) call!293689 input!3600 (size!34263 input!3600)) lt!1505186)))

(declare-fun b!4233452 () Bool)

(assert (=> b!4233452 (= e!2628580 lt!1505199)))

(assert (= (and d!1245720 c!719609) b!4233448))

(assert (= (and d!1245720 (not c!719609)) b!4233440))

(assert (= (and b!4233440 c!719606) b!4233445))

(assert (= (and b!4233440 (not c!719606)) b!4233450))

(assert (= (and b!4233445 c!719611) b!4233449))

(assert (= (and b!4233445 (not c!719611)) b!4233446))

(assert (= (and b!4233450 c!719610) b!4233444))

(assert (= (and b!4233450 (not c!719610)) b!4233439))

(assert (= (and b!4233450 c!719608) b!4233442))

(assert (= (and b!4233450 (not c!719608)) b!4233447))

(assert (= (and b!4233442 c!719607) b!4233443))

(assert (= (and b!4233442 (not c!719607)) b!4233452))

(assert (= (or b!4233442 b!4233447) bm!293744))

(assert (= (or b!4233442 b!4233447) bm!293746))

(assert (= (or b!4233442 b!4233447) bm!293742))

(assert (= (or b!4233442 b!4233447) bm!293745))

(assert (= (or b!4233445 b!4233444) bm!293741))

(assert (= (or b!4233445 b!4233444) bm!293743))

(assert (= (or b!4233445 b!4233444) bm!293748))

(assert (= (or b!4233445 b!4233450) bm!293747))

(assert (= (and d!1245720 res!1741162) b!4233451))

(assert (= (and b!4233451 (not res!1741161)) b!4233441))

(declare-fun m!4819803 () Bool)

(assert (=> d!1245720 m!4819803))

(declare-fun m!4819805 () Bool)

(assert (=> d!1245720 m!4819805))

(declare-fun m!4819807 () Bool)

(assert (=> d!1245720 m!4819807))

(declare-fun m!4819809 () Bool)

(assert (=> d!1245720 m!4819809))

(declare-fun m!4819811 () Bool)

(assert (=> d!1245720 m!4819811))

(declare-fun m!4819813 () Bool)

(assert (=> d!1245720 m!4819813))

(declare-fun m!4819815 () Bool)

(assert (=> d!1245720 m!4819815))

(assert (=> d!1245720 m!4819803))

(declare-fun m!4819817 () Bool)

(assert (=> d!1245720 m!4819817))

(declare-fun m!4819819 () Bool)

(assert (=> bm!293747 m!4819819))

(declare-fun m!4819821 () Bool)

(assert (=> b!4233451 m!4819821))

(declare-fun m!4819823 () Bool)

(assert (=> bm!293741 m!4819823))

(assert (=> bm!293748 m!4819323))

(declare-fun m!4819825 () Bool)

(assert (=> bm!293744 m!4819825))

(declare-fun m!4819827 () Bool)

(assert (=> b!4233441 m!4819827))

(declare-fun m!4819829 () Bool)

(assert (=> b!4233441 m!4819829))

(declare-fun m!4819831 () Bool)

(assert (=> bm!293742 m!4819831))

(assert (=> bm!293743 m!4819329))

(declare-fun m!4819833 () Bool)

(assert (=> b!4233450 m!4819833))

(declare-fun m!4819835 () Bool)

(assert (=> b!4233450 m!4819835))

(declare-fun m!4819837 () Bool)

(assert (=> b!4233450 m!4819837))

(declare-fun m!4819839 () Bool)

(assert (=> b!4233450 m!4819839))

(declare-fun m!4819841 () Bool)

(assert (=> b!4233450 m!4819841))

(assert (=> b!4233450 m!4819839))

(declare-fun m!4819843 () Bool)

(assert (=> b!4233450 m!4819843))

(assert (=> b!4233450 m!4819811))

(declare-fun m!4819845 () Bool)

(assert (=> b!4233450 m!4819845))

(assert (=> b!4233450 m!4819829))

(assert (=> b!4233450 m!4819811))

(assert (=> b!4233450 m!4819093))

(declare-fun m!4819847 () Bool)

(assert (=> b!4233450 m!4819847))

(declare-fun m!4819849 () Bool)

(assert (=> b!4233450 m!4819849))

(assert (=> b!4233450 m!4819837))

(declare-fun m!4819853 () Bool)

(assert (=> b!4233450 m!4819853))

(assert (=> b!4233450 m!4819825))

(assert (=> bm!293745 m!4819093))

(declare-fun m!4819855 () Bool)

(assert (=> bm!293745 m!4819855))

(declare-fun m!4819857 () Bool)

(assert (=> b!4233442 m!4819857))

(assert (=> bm!293746 m!4819847))

(assert (=> bm!293688 d!1245720))

(declare-fun d!1245726 () Bool)

(assert (not d!1245726))

(assert (=> b!4232756 d!1245726))

(declare-fun d!1245728 () Bool)

(declare-fun e!2628591 () Bool)

(assert (=> d!1245728 e!2628591))

(declare-fun res!1741165 () Bool)

(assert (=> d!1245728 (=> res!1741165 e!2628591)))

(assert (=> d!1245728 (= res!1741165 (isEmpty!27626 (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600)))))))

(declare-fun lt!1505214 () Unit!65887)

(declare-fun choose!25938 (Regex!12803 List!46860) Unit!65887)

(assert (=> d!1245728 (= lt!1505214 (choose!25938 (regex!7898 r!4353) input!3600))))

(assert (=> d!1245728 (validRegex!5819 (regex!7898 r!4353))))

(assert (=> d!1245728 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1663 (regex!7898 r!4353) input!3600) lt!1505214)))

(declare-fun b!4233457 () Bool)

(assert (=> b!4233457 (= e!2628591 (matchR!6435 (regex!7898 r!4353) (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600)))))))

(assert (= (and d!1245728 (not res!1741165)) b!4233457))

(declare-fun m!4819865 () Bool)

(assert (=> d!1245728 m!4819865))

(assert (=> d!1245728 m!4819083))

(assert (=> d!1245728 m!4819097))

(assert (=> d!1245728 m!4819093))

(assert (=> d!1245728 m!4819193))

(assert (=> d!1245728 m!4819093))

(assert (=> d!1245728 m!4819213))

(assert (=> d!1245728 m!4819097))

(assert (=> b!4233457 m!4819097))

(assert (=> b!4233457 m!4819093))

(assert (=> b!4233457 m!4819097))

(assert (=> b!4233457 m!4819093))

(assert (=> b!4233457 m!4819193))

(assert (=> b!4233457 m!4819195))

(assert (=> b!4232937 d!1245728))

(declare-fun d!1245738 () Bool)

(declare-fun dynLambda!20057 (Int BalanceConc!27812) TokenValue!8128)

(assert (=> d!1245738 (= (apply!10740 (transformation!7898 r!4353) (seqFromList!5800 (_1!25318 lt!1504856))) (dynLambda!20057 (toValue!10634 (transformation!7898 r!4353)) (seqFromList!5800 (_1!25318 lt!1504856))))))

(declare-fun b_lambda!124617 () Bool)

(assert (=> (not b_lambda!124617) (not d!1245738)))

(declare-fun t!349556 () Bool)

(declare-fun tb!253885 () Bool)

(assert (=> (and b!4232737 (= (toValue!10634 (transformation!7898 r!4353)) (toValue!10634 (transformation!7898 r!4353))) t!349556) tb!253885))

(declare-fun result!309672 () Bool)

(declare-fun inv!21 (TokenValue!8128) Bool)

(assert (=> tb!253885 (= result!309672 (inv!21 (dynLambda!20057 (toValue!10634 (transformation!7898 r!4353)) (seqFromList!5800 (_1!25318 lt!1504856)))))))

(declare-fun m!4819867 () Bool)

(assert (=> tb!253885 m!4819867))

(assert (=> d!1245738 t!349556))

(declare-fun b_and!334355 () Bool)

(assert (= b_and!334345 (and (=> t!349556 result!309672) b_and!334355)))

(assert (=> d!1245738 m!4819209))

(declare-fun m!4819869 () Bool)

(assert (=> d!1245738 m!4819869))

(assert (=> b!4232937 d!1245738))

(declare-fun d!1245740 () Bool)

(declare-fun fromListB!2643 (List!46860) BalanceConc!27812)

(assert (=> d!1245740 (= (seqFromList!5800 (_1!25318 lt!1504856)) (fromListB!2643 (_1!25318 lt!1504856)))))

(declare-fun bs!598046 () Bool)

(assert (= bs!598046 d!1245740))

(declare-fun m!4819871 () Bool)

(assert (=> bs!598046 m!4819871))

(assert (=> b!4232937 d!1245740))

(declare-fun d!1245742 () Bool)

(assert (=> d!1245742 (= (isEmpty!27626 (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600)))) ((_ is Nil!46736) (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600)))))))

(assert (=> b!4232937 d!1245742))

(assert (=> b!4232937 d!1245496))

(declare-fun b!4233464 () Bool)

(declare-fun e!2628598 () Bool)

(assert (=> b!4233464 (= e!2628598 true)))

(declare-fun d!1245744 () Bool)

(assert (=> d!1245744 e!2628598))

(assert (= d!1245744 b!4233464))

(declare-fun lambda!130013 () Int)

(declare-fun order!24623 () Int)

(declare-fun dynLambda!20059 (Int Int) Int)

(assert (=> b!4233464 (< (dynLambda!20050 order!24617 (toValue!10634 (transformation!7898 r!4353))) (dynLambda!20059 order!24623 lambda!130013))))

(declare-fun order!24625 () Int)

(declare-fun dynLambda!20060 (Int Int) Int)

(assert (=> b!4233464 (< (dynLambda!20060 order!24625 (toChars!10493 (transformation!7898 r!4353))) (dynLambda!20059 order!24623 lambda!130013))))

(assert (=> d!1245744 (= (list!16875 (dynLambda!20049 (toChars!10493 (transformation!7898 r!4353)) (dynLambda!20057 (toValue!10634 (transformation!7898 r!4353)) (seqFromList!5800 (_1!25318 lt!1504856))))) (list!16875 (seqFromList!5800 (_1!25318 lt!1504856))))))

(declare-fun lt!1505241 () Unit!65887)

(declare-fun ForallOf!1092 (Int BalanceConc!27812) Unit!65887)

(assert (=> d!1245744 (= lt!1505241 (ForallOf!1092 lambda!130013 (seqFromList!5800 (_1!25318 lt!1504856))))))

(assert (=> d!1245744 (= (lemmaSemiInverse!2531 (transformation!7898 r!4353) (seqFromList!5800 (_1!25318 lt!1504856))) lt!1505241)))

(declare-fun b_lambda!124621 () Bool)

(assert (=> (not b_lambda!124621) (not d!1245744)))

(declare-fun t!349560 () Bool)

(declare-fun tb!253889 () Bool)

(assert (=> (and b!4232737 (= (toChars!10493 (transformation!7898 r!4353)) (toChars!10493 (transformation!7898 r!4353))) t!349560) tb!253889))

(declare-fun b!4233465 () Bool)

(declare-fun e!2628599 () Bool)

(declare-fun tp!1296449 () Bool)

(assert (=> b!4233465 (= e!2628599 (and (inv!61448 (c!719431 (dynLambda!20049 (toChars!10493 (transformation!7898 r!4353)) (dynLambda!20057 (toValue!10634 (transformation!7898 r!4353)) (seqFromList!5800 (_1!25318 lt!1504856)))))) tp!1296449))))

(declare-fun result!309678 () Bool)

(assert (=> tb!253889 (= result!309678 (and (inv!61449 (dynLambda!20049 (toChars!10493 (transformation!7898 r!4353)) (dynLambda!20057 (toValue!10634 (transformation!7898 r!4353)) (seqFromList!5800 (_1!25318 lt!1504856))))) e!2628599))))

(assert (= tb!253889 b!4233465))

(declare-fun m!4819901 () Bool)

(assert (=> b!4233465 m!4819901))

(declare-fun m!4819903 () Bool)

(assert (=> tb!253889 m!4819903))

(assert (=> d!1245744 t!349560))

(declare-fun b_and!334359 () Bool)

(assert (= b_and!334349 (and (=> t!349560 result!309678) b_and!334359)))

(declare-fun b_lambda!124623 () Bool)

(assert (=> (not b_lambda!124623) (not d!1245744)))

(assert (=> d!1245744 t!349556))

(declare-fun b_and!334361 () Bool)

(assert (= b_and!334355 (and (=> t!349556 result!309672) b_and!334361)))

(assert (=> d!1245744 m!4819209))

(assert (=> d!1245744 m!4819869))

(assert (=> d!1245744 m!4819209))

(declare-fun m!4819905 () Bool)

(assert (=> d!1245744 m!4819905))

(assert (=> d!1245744 m!4819869))

(declare-fun m!4819907 () Bool)

(assert (=> d!1245744 m!4819907))

(assert (=> d!1245744 m!4819209))

(declare-fun m!4819909 () Bool)

(assert (=> d!1245744 m!4819909))

(assert (=> d!1245744 m!4819907))

(declare-fun m!4819911 () Bool)

(assert (=> d!1245744 m!4819911))

(assert (=> b!4232937 d!1245744))

(assert (=> b!4232937 d!1245532))

(declare-fun d!1245754 () Bool)

(declare-fun lt!1505247 () Int)

(assert (=> d!1245754 (= lt!1505247 (size!34263 (list!16875 (seqFromList!5800 (_1!25318 lt!1504856)))))))

(declare-fun size!34266 (Conc!14109) Int)

(assert (=> d!1245754 (= lt!1505247 (size!34266 (c!719431 (seqFromList!5800 (_1!25318 lt!1504856)))))))

(assert (=> d!1245754 (= (size!34265 (seqFromList!5800 (_1!25318 lt!1504856))) lt!1505247)))

(declare-fun bs!598050 () Bool)

(assert (= bs!598050 d!1245754))

(assert (=> bs!598050 m!4819209))

(assert (=> bs!598050 m!4819905))

(assert (=> bs!598050 m!4819905))

(declare-fun m!4819913 () Bool)

(assert (=> bs!598050 m!4819913))

(declare-fun m!4819915 () Bool)

(assert (=> bs!598050 m!4819915))

(assert (=> b!4232937 d!1245754))

(declare-fun b!4233466 () Bool)

(declare-fun e!2628607 () Unit!65887)

(declare-fun Unit!65901 () Unit!65887)

(assert (=> b!4233466 (= e!2628607 Unit!65901)))

(declare-fun b!4233467 () Bool)

(declare-fun e!2628606 () tuple2!44368)

(declare-fun e!2628605 () tuple2!44368)

(assert (=> b!4233467 (= e!2628606 e!2628605)))

(declare-fun c!719613 () Bool)

(assert (=> b!4233467 (= c!719613 (= (size!34263 Nil!46736) (size!34263 input!3600)))))

(declare-fun b!4233468 () Bool)

(declare-fun e!2628601 () Bool)

(declare-fun lt!1505256 () tuple2!44368)

(assert (=> b!4233468 (= e!2628601 (>= (size!34263 (_1!25318 lt!1505256)) (size!34263 Nil!46736)))))

(declare-fun bm!293749 () Bool)

(declare-fun call!293755 () Unit!65887)

(assert (=> bm!293749 (= call!293755 (lemmaIsPrefixSameLengthThenSameList!1037 input!3600 Nil!46736 input!3600))))

(declare-fun b!4233469 () Bool)

(declare-fun e!2628600 () tuple2!44368)

(declare-fun e!2628602 () tuple2!44368)

(assert (=> b!4233469 (= e!2628600 e!2628602)))

(declare-fun lt!1505269 () tuple2!44368)

(declare-fun call!293761 () tuple2!44368)

(assert (=> b!4233469 (= lt!1505269 call!293761)))

(declare-fun c!719614 () Bool)

(assert (=> b!4233469 (= c!719614 (isEmpty!27626 (_1!25318 lt!1505269)))))

(declare-fun bm!293750 () Bool)

(declare-fun call!293759 () Regex!12803)

(declare-fun call!293760 () C!25804)

(assert (=> bm!293750 (= call!293759 (derivativeStep!3845 (regex!7898 r!4353) call!293760))))

(declare-fun bm!293751 () Bool)

(declare-fun call!293757 () Unit!65887)

(assert (=> bm!293751 (= call!293757 (lemmaIsPrefixRefl!3110 input!3600 input!3600))))

(declare-fun b!4233470 () Bool)

(assert (=> b!4233470 (= e!2628602 (tuple2!44369 Nil!46736 input!3600))))

(declare-fun bm!293752 () Bool)

(assert (=> bm!293752 (= call!293760 (head!8975 input!3600))))

(declare-fun call!293754 () List!46860)

(declare-fun lt!1505262 () List!46860)

(declare-fun bm!293753 () Bool)

(assert (=> bm!293753 (= call!293761 (findLongestMatchInner!1700 call!293759 lt!1505262 (+ (size!34263 Nil!46736) 1) call!293754 input!3600 (size!34263 input!3600)))))

(declare-fun b!4233471 () Bool)

(declare-fun Unit!65902 () Unit!65887)

(assert (=> b!4233471 (= e!2628607 Unit!65902)))

(declare-fun lt!1505263 () Unit!65887)

(assert (=> b!4233471 (= lt!1505263 call!293757)))

(declare-fun call!293758 () Bool)

(assert (=> b!4233471 call!293758))

(declare-fun lt!1505252 () Unit!65887)

(assert (=> b!4233471 (= lt!1505252 lt!1505263)))

(declare-fun lt!1505267 () Unit!65887)

(assert (=> b!4233471 (= lt!1505267 call!293755)))

(assert (=> b!4233471 (= input!3600 Nil!46736)))

(declare-fun lt!1505251 () Unit!65887)

(assert (=> b!4233471 (= lt!1505251 lt!1505267)))

(assert (=> b!4233471 false))

(declare-fun b!4233472 () Bool)

(declare-fun c!719618 () Bool)

(declare-fun call!293756 () Bool)

(assert (=> b!4233472 (= c!719618 call!293756)))

(declare-fun lt!1505260 () Unit!65887)

(declare-fun lt!1505264 () Unit!65887)

(assert (=> b!4233472 (= lt!1505260 lt!1505264)))

(assert (=> b!4233472 (= input!3600 Nil!46736)))

(assert (=> b!4233472 (= lt!1505264 call!293755)))

(declare-fun lt!1505272 () Unit!65887)

(declare-fun lt!1505258 () Unit!65887)

(assert (=> b!4233472 (= lt!1505272 lt!1505258)))

(assert (=> b!4233472 call!293758))

(assert (=> b!4233472 (= lt!1505258 call!293757)))

(declare-fun e!2628604 () tuple2!44368)

(assert (=> b!4233472 (= e!2628605 e!2628604)))

(declare-fun b!4233473 () Bool)

(assert (=> b!4233473 (= e!2628604 (tuple2!44369 Nil!46736 input!3600))))

(declare-fun bm!293754 () Bool)

(assert (=> bm!293754 (= call!293754 (tail!6822 input!3600))))

(declare-fun b!4233474 () Bool)

(assert (=> b!4233474 (= e!2628600 call!293761)))

(declare-fun b!4233475 () Bool)

(assert (=> b!4233475 (= e!2628606 (tuple2!44369 Nil!46736 input!3600))))

(declare-fun b!4233476 () Bool)

(assert (=> b!4233476 (= e!2628604 (tuple2!44369 Nil!46736 Nil!46736))))

(declare-fun b!4233477 () Bool)

(declare-fun c!719615 () Bool)

(assert (=> b!4233477 (= c!719615 call!293756)))

(declare-fun lt!1505265 () Unit!65887)

(declare-fun lt!1505273 () Unit!65887)

(assert (=> b!4233477 (= lt!1505265 lt!1505273)))

(declare-fun lt!1505250 () C!25804)

(declare-fun lt!1505253 () List!46860)

(assert (=> b!4233477 (= (++!11919 (++!11919 Nil!46736 (Cons!46736 lt!1505250 Nil!46736)) lt!1505253) input!3600)))

(assert (=> b!4233477 (= lt!1505273 (lemmaMoveElementToOtherListKeepsConcatEq!1309 Nil!46736 lt!1505250 lt!1505253 input!3600))))

(assert (=> b!4233477 (= lt!1505253 (tail!6822 input!3600))))

(assert (=> b!4233477 (= lt!1505250 (head!8975 input!3600))))

(declare-fun lt!1505254 () Unit!65887)

(declare-fun lt!1505268 () Unit!65887)

(assert (=> b!4233477 (= lt!1505254 lt!1505268)))

(assert (=> b!4233477 (isPrefix!4713 (++!11919 Nil!46736 (Cons!46736 (head!8975 (getSuffix!2866 input!3600 Nil!46736)) Nil!46736)) input!3600)))

(assert (=> b!4233477 (= lt!1505268 (lemmaAddHeadSuffixToPrefixStillPrefix!691 Nil!46736 input!3600))))

(declare-fun lt!1505266 () Unit!65887)

(declare-fun lt!1505249 () Unit!65887)

(assert (=> b!4233477 (= lt!1505266 lt!1505249)))

(assert (=> b!4233477 (= lt!1505249 (lemmaAddHeadSuffixToPrefixStillPrefix!691 Nil!46736 input!3600))))

(assert (=> b!4233477 (= lt!1505262 (++!11919 Nil!46736 (Cons!46736 (head!8975 input!3600) Nil!46736)))))

(declare-fun lt!1505261 () Unit!65887)

(assert (=> b!4233477 (= lt!1505261 e!2628607)))

(declare-fun c!719617 () Bool)

(assert (=> b!4233477 (= c!719617 (= (size!34263 Nil!46736) (size!34263 input!3600)))))

(declare-fun lt!1505274 () Unit!65887)

(declare-fun lt!1505255 () Unit!65887)

(assert (=> b!4233477 (= lt!1505274 lt!1505255)))

(assert (=> b!4233477 (<= (size!34263 Nil!46736) (size!34263 input!3600))))

(assert (=> b!4233477 (= lt!1505255 (lemmaIsPrefixThenSmallerEqSize!603 Nil!46736 input!3600))))

(assert (=> b!4233477 (= e!2628605 e!2628600)))

(declare-fun b!4233478 () Bool)

(declare-fun e!2628603 () Bool)

(assert (=> b!4233478 (= e!2628603 e!2628601)))

(declare-fun res!1741166 () Bool)

(assert (=> b!4233478 (=> res!1741166 e!2628601)))

(assert (=> b!4233478 (= res!1741166 (isEmpty!27626 (_1!25318 lt!1505256)))))

(declare-fun bm!293755 () Bool)

(assert (=> bm!293755 (= call!293756 (nullable!4512 (regex!7898 r!4353)))))

(declare-fun bm!293756 () Bool)

(assert (=> bm!293756 (= call!293758 (isPrefix!4713 input!3600 input!3600))))

(declare-fun d!1245756 () Bool)

(assert (=> d!1245756 e!2628603))

(declare-fun res!1741167 () Bool)

(assert (=> d!1245756 (=> (not res!1741167) (not e!2628603))))

(assert (=> d!1245756 (= res!1741167 (= (++!11919 (_1!25318 lt!1505256) (_2!25318 lt!1505256)) input!3600))))

(assert (=> d!1245756 (= lt!1505256 e!2628606)))

(declare-fun c!719616 () Bool)

(assert (=> d!1245756 (= c!719616 (lostCause!1065 (regex!7898 r!4353)))))

(declare-fun lt!1505271 () Unit!65887)

(declare-fun Unit!65903 () Unit!65887)

(assert (=> d!1245756 (= lt!1505271 Unit!65903)))

(assert (=> d!1245756 (= (getSuffix!2866 input!3600 Nil!46736) input!3600)))

(declare-fun lt!1505270 () Unit!65887)

(declare-fun lt!1505248 () Unit!65887)

(assert (=> d!1245756 (= lt!1505270 lt!1505248)))

(declare-fun lt!1505259 () List!46860)

(assert (=> d!1245756 (= input!3600 lt!1505259)))

(assert (=> d!1245756 (= lt!1505248 (lemmaSamePrefixThenSameSuffix!2282 Nil!46736 input!3600 Nil!46736 lt!1505259 input!3600))))

(assert (=> d!1245756 (= lt!1505259 (getSuffix!2866 input!3600 Nil!46736))))

(declare-fun lt!1505257 () Unit!65887)

(declare-fun lt!1505275 () Unit!65887)

(assert (=> d!1245756 (= lt!1505257 lt!1505275)))

(assert (=> d!1245756 (isPrefix!4713 Nil!46736 (++!11919 Nil!46736 input!3600))))

(assert (=> d!1245756 (= lt!1505275 (lemmaConcatTwoListThenFirstIsPrefix!3102 Nil!46736 input!3600))))

(assert (=> d!1245756 (validRegex!5819 (regex!7898 r!4353))))

(assert (=> d!1245756 (= (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600)) lt!1505256)))

(declare-fun b!4233479 () Bool)

(assert (=> b!4233479 (= e!2628602 lt!1505269)))

(assert (= (and d!1245756 c!719616) b!4233475))

(assert (= (and d!1245756 (not c!719616)) b!4233467))

(assert (= (and b!4233467 c!719613) b!4233472))

(assert (= (and b!4233467 (not c!719613)) b!4233477))

(assert (= (and b!4233472 c!719618) b!4233476))

(assert (= (and b!4233472 (not c!719618)) b!4233473))

(assert (= (and b!4233477 c!719617) b!4233471))

(assert (= (and b!4233477 (not c!719617)) b!4233466))

(assert (= (and b!4233477 c!719615) b!4233469))

(assert (= (and b!4233477 (not c!719615)) b!4233474))

(assert (= (and b!4233469 c!719614) b!4233470))

(assert (= (and b!4233469 (not c!719614)) b!4233479))

(assert (= (or b!4233469 b!4233474) bm!293752))

(assert (= (or b!4233469 b!4233474) bm!293754))

(assert (= (or b!4233469 b!4233474) bm!293750))

(assert (= (or b!4233469 b!4233474) bm!293753))

(assert (= (or b!4233472 b!4233471) bm!293749))

(assert (= (or b!4233472 b!4233471) bm!293751))

(assert (= (or b!4233472 b!4233471) bm!293756))

(assert (= (or b!4233472 b!4233477) bm!293755))

(assert (= (and d!1245756 res!1741167) b!4233478))

(assert (= (and b!4233478 (not res!1741166)) b!4233468))

(assert (=> d!1245756 m!4819305))

(assert (=> d!1245756 m!4819307))

(assert (=> d!1245756 m!4819309))

(declare-fun m!4819917 () Bool)

(assert (=> d!1245756 m!4819917))

(assert (=> d!1245756 m!4819313))

(declare-fun m!4819919 () Bool)

(assert (=> d!1245756 m!4819919))

(assert (=> d!1245756 m!4819083))

(assert (=> d!1245756 m!4819305))

(assert (=> d!1245756 m!4819317))

(assert (=> bm!293755 m!4819141))

(declare-fun m!4819921 () Bool)

(assert (=> b!4233478 m!4819921))

(assert (=> bm!293749 m!4819321))

(assert (=> bm!293756 m!4819323))

(assert (=> bm!293752 m!4819147))

(declare-fun m!4819923 () Bool)

(assert (=> b!4233468 m!4819923))

(assert (=> b!4233468 m!4819097))

(declare-fun m!4819925 () Bool)

(assert (=> bm!293750 m!4819925))

(assert (=> bm!293751 m!4819329))

(assert (=> b!4233477 m!4819331))

(assert (=> b!4233477 m!4819333))

(declare-fun m!4819927 () Bool)

(assert (=> b!4233477 m!4819927))

(assert (=> b!4233477 m!4819337))

(assert (=> b!4233477 m!4819339))

(assert (=> b!4233477 m!4819337))

(assert (=> b!4233477 m!4819341))

(assert (=> b!4233477 m!4819313))

(assert (=> b!4233477 m!4819343))

(assert (=> b!4233477 m!4819097))

(assert (=> b!4233477 m!4819313))

(assert (=> b!4233477 m!4819093))

(assert (=> b!4233477 m!4819149))

(declare-fun m!4819929 () Bool)

(assert (=> b!4233477 m!4819929))

(assert (=> b!4233477 m!4819927))

(declare-fun m!4819931 () Bool)

(assert (=> b!4233477 m!4819931))

(assert (=> b!4233477 m!4819147))

(assert (=> bm!293753 m!4819093))

(declare-fun m!4819933 () Bool)

(assert (=> bm!293753 m!4819933))

(declare-fun m!4819935 () Bool)

(assert (=> b!4233469 m!4819935))

(assert (=> bm!293754 m!4819149))

(assert (=> b!4232937 d!1245756))

(assert (=> b!4232932 d!1245584))

(declare-fun d!1245758 () Bool)

(assert (=> d!1245758 (= (apply!10740 (transformation!7898 (rule!11022 (_1!25317 (get!15205 lt!1504857)))) (seqFromList!5800 (originalCharacters!8244 (_1!25317 (get!15205 lt!1504857))))) (dynLambda!20057 (toValue!10634 (transformation!7898 (rule!11022 (_1!25317 (get!15205 lt!1504857))))) (seqFromList!5800 (originalCharacters!8244 (_1!25317 (get!15205 lt!1504857))))))))

(declare-fun b_lambda!124625 () Bool)

(assert (=> (not b_lambda!124625) (not d!1245758)))

(declare-fun t!349562 () Bool)

(declare-fun tb!253891 () Bool)

(assert (=> (and b!4232737 (= (toValue!10634 (transformation!7898 r!4353)) (toValue!10634 (transformation!7898 (rule!11022 (_1!25317 (get!15205 lt!1504857)))))) t!349562) tb!253891))

(declare-fun result!309680 () Bool)

(assert (=> tb!253891 (= result!309680 (inv!21 (dynLambda!20057 (toValue!10634 (transformation!7898 (rule!11022 (_1!25317 (get!15205 lt!1504857))))) (seqFromList!5800 (originalCharacters!8244 (_1!25317 (get!15205 lt!1504857)))))))))

(declare-fun m!4819937 () Bool)

(assert (=> tb!253891 m!4819937))

(assert (=> d!1245758 t!349562))

(declare-fun b_and!334363 () Bool)

(assert (= b_and!334361 (and (=> t!349562 result!309680) b_and!334363)))

(assert (=> d!1245758 m!4819227))

(declare-fun m!4819939 () Bool)

(assert (=> d!1245758 m!4819939))

(assert (=> b!4232932 d!1245758))

(declare-fun d!1245760 () Bool)

(assert (=> d!1245760 (= (seqFromList!5800 (originalCharacters!8244 (_1!25317 (get!15205 lt!1504857)))) (fromListB!2643 (originalCharacters!8244 (_1!25317 (get!15205 lt!1504857)))))))

(declare-fun bs!598051 () Bool)

(assert (= bs!598051 d!1245760))

(declare-fun m!4819941 () Bool)

(assert (=> bs!598051 m!4819941))

(assert (=> b!4232932 d!1245760))

(declare-fun d!1245762 () Bool)

(assert (=> d!1245762 (= (isEmpty!27626 (tail!6822 p!3018)) ((_ is Nil!46736) (tail!6822 p!3018)))))

(assert (=> b!4232863 d!1245762))

(assert (=> b!4232863 d!1245598))

(declare-fun d!1245764 () Bool)

(assert (=> d!1245764 (isPrefix!4713 input!3600 input!3600)))

(declare-fun lt!1505281 () Unit!65887)

(declare-fun choose!25942 (List!46860 List!46860) Unit!65887)

(assert (=> d!1245764 (= lt!1505281 (choose!25942 input!3600 input!3600))))

(assert (=> d!1245764 (= (lemmaIsPrefixRefl!3110 input!3600 input!3600) lt!1505281)))

(declare-fun bs!598052 () Bool)

(assert (= bs!598052 d!1245764))

(assert (=> bs!598052 m!4819323))

(declare-fun m!4819945 () Bool)

(assert (=> bs!598052 m!4819945))

(assert (=> bm!293686 d!1245764))

(declare-fun d!1245768 () Bool)

(declare-fun e!2628614 () Bool)

(assert (=> d!1245768 e!2628614))

(declare-fun c!719620 () Bool)

(assert (=> d!1245768 (= c!719620 ((_ is EmptyExpr!12803) (regex!7898 r!4353)))))

(declare-fun lt!1505282 () Bool)

(declare-fun e!2628612 () Bool)

(assert (=> d!1245768 (= lt!1505282 e!2628612)))

(declare-fun c!719621 () Bool)

(assert (=> d!1245768 (= c!719621 (isEmpty!27626 (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600)))))))

(assert (=> d!1245768 (validRegex!5819 (regex!7898 r!4353))))

(assert (=> d!1245768 (= (matchR!6435 (regex!7898 r!4353) (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600)))) lt!1505282)))

(declare-fun b!4233483 () Bool)

(assert (=> b!4233483 (= e!2628612 (matchR!6435 (derivativeStep!3845 (regex!7898 r!4353) (head!8975 (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600))))) (tail!6822 (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600))))))))

(declare-fun b!4233484 () Bool)

(declare-fun res!1741172 () Bool)

(declare-fun e!2628618 () Bool)

(assert (=> b!4233484 (=> (not res!1741172) (not e!2628618))))

(assert (=> b!4233484 (= res!1741172 (isEmpty!27626 (tail!6822 (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600))))))))

(declare-fun b!4233485 () Bool)

(declare-fun call!293762 () Bool)

(assert (=> b!4233485 (= e!2628614 (= lt!1505282 call!293762))))

(declare-fun b!4233486 () Bool)

(declare-fun res!1741176 () Bool)

(assert (=> b!4233486 (=> (not res!1741176) (not e!2628618))))

(assert (=> b!4233486 (= res!1741176 (not call!293762))))

(declare-fun bm!293757 () Bool)

(assert (=> bm!293757 (= call!293762 (isEmpty!27626 (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600)))))))

(declare-fun b!4233487 () Bool)

(declare-fun res!1741175 () Bool)

(declare-fun e!2628613 () Bool)

(assert (=> b!4233487 (=> res!1741175 e!2628613)))

(assert (=> b!4233487 (= res!1741175 (not (isEmpty!27626 (tail!6822 (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600)))))))))

(declare-fun b!4233488 () Bool)

(declare-fun e!2628615 () Bool)

(assert (=> b!4233488 (= e!2628615 e!2628613)))

(declare-fun res!1741177 () Bool)

(assert (=> b!4233488 (=> res!1741177 e!2628613)))

(assert (=> b!4233488 (= res!1741177 call!293762)))

(declare-fun b!4233489 () Bool)

(declare-fun res!1741173 () Bool)

(declare-fun e!2628617 () Bool)

(assert (=> b!4233489 (=> res!1741173 e!2628617)))

(assert (=> b!4233489 (= res!1741173 (not ((_ is ElementMatch!12803) (regex!7898 r!4353))))))

(declare-fun e!2628616 () Bool)

(assert (=> b!4233489 (= e!2628616 e!2628617)))

(declare-fun b!4233490 () Bool)

(assert (=> b!4233490 (= e!2628616 (not lt!1505282))))

(declare-fun b!4233491 () Bool)

(assert (=> b!4233491 (= e!2628612 (nullable!4512 (regex!7898 r!4353)))))

(declare-fun b!4233492 () Bool)

(assert (=> b!4233492 (= e!2628614 e!2628616)))

(declare-fun c!719619 () Bool)

(assert (=> b!4233492 (= c!719619 ((_ is EmptyLang!12803) (regex!7898 r!4353)))))

(declare-fun b!4233493 () Bool)

(declare-fun res!1741178 () Bool)

(assert (=> b!4233493 (=> res!1741178 e!2628617)))

(assert (=> b!4233493 (= res!1741178 e!2628618)))

(declare-fun res!1741171 () Bool)

(assert (=> b!4233493 (=> (not res!1741171) (not e!2628618))))

(assert (=> b!4233493 (= res!1741171 lt!1505282)))

(declare-fun b!4233494 () Bool)

(assert (=> b!4233494 (= e!2628613 (not (= (head!8975 (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600)))) (c!719430 (regex!7898 r!4353)))))))

(declare-fun b!4233495 () Bool)

(assert (=> b!4233495 (= e!2628618 (= (head!8975 (_1!25318 (findLongestMatchInner!1700 (regex!7898 r!4353) Nil!46736 (size!34263 Nil!46736) input!3600 input!3600 (size!34263 input!3600)))) (c!719430 (regex!7898 r!4353))))))

(declare-fun b!4233496 () Bool)

(assert (=> b!4233496 (= e!2628617 e!2628615)))

(declare-fun res!1741174 () Bool)

(assert (=> b!4233496 (=> (not res!1741174) (not e!2628615))))

(assert (=> b!4233496 (= res!1741174 (not lt!1505282))))

(assert (= (and d!1245768 c!719621) b!4233491))

(assert (= (and d!1245768 (not c!719621)) b!4233483))

(assert (= (and d!1245768 c!719620) b!4233485))

(assert (= (and d!1245768 (not c!719620)) b!4233492))

(assert (= (and b!4233492 c!719619) b!4233490))

(assert (= (and b!4233492 (not c!719619)) b!4233489))

(assert (= (and b!4233489 (not res!1741173)) b!4233493))

(assert (= (and b!4233493 res!1741171) b!4233486))

(assert (= (and b!4233486 res!1741176) b!4233484))

(assert (= (and b!4233484 res!1741172) b!4233495))

(assert (= (and b!4233493 (not res!1741178)) b!4233496))

(assert (= (and b!4233496 res!1741174) b!4233488))

(assert (= (and b!4233488 (not res!1741177)) b!4233487))

(assert (= (and b!4233487 (not res!1741175)) b!4233494))

(assert (= (or b!4233485 b!4233486 b!4233488) bm!293757))

(declare-fun m!4819947 () Bool)

(assert (=> b!4233495 m!4819947))

(declare-fun m!4819949 () Bool)

(assert (=> b!4233487 m!4819949))

(assert (=> b!4233487 m!4819949))

(declare-fun m!4819951 () Bool)

(assert (=> b!4233487 m!4819951))

(assert (=> b!4233484 m!4819949))

(assert (=> b!4233484 m!4819949))

(assert (=> b!4233484 m!4819951))

(assert (=> bm!293757 m!4819213))

(assert (=> b!4233491 m!4819141))

(assert (=> d!1245768 m!4819213))

(assert (=> d!1245768 m!4819083))

(assert (=> b!4233494 m!4819947))

(assert (=> b!4233483 m!4819947))

(assert (=> b!4233483 m!4819947))

(declare-fun m!4819953 () Bool)

(assert (=> b!4233483 m!4819953))

(assert (=> b!4233483 m!4819949))

(assert (=> b!4233483 m!4819953))

(assert (=> b!4233483 m!4819949))

(declare-fun m!4819955 () Bool)

(assert (=> b!4233483 m!4819955))

(assert (=> b!4232934 d!1245768))

(assert (=> b!4232934 d!1245756))

(assert (=> b!4232934 d!1245496))

(assert (=> b!4232934 d!1245532))

(assert (=> b!4232884 d!1245532))

(assert (=> b!4232884 d!1245498))

(declare-fun d!1245770 () Bool)

(declare-fun e!2628621 () Bool)

(assert (=> d!1245770 e!2628621))

(declare-fun c!719624 () Bool)

(assert (=> d!1245770 (= c!719624 ((_ is EmptyExpr!12803) (regex!7898 r!4353)))))

(declare-fun lt!1505285 () Bool)

(declare-fun e!2628619 () Bool)

(assert (=> d!1245770 (= lt!1505285 e!2628619)))

(declare-fun c!719625 () Bool)

(assert (=> d!1245770 (= c!719625 (isEmpty!27626 (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857))))))))

(assert (=> d!1245770 (validRegex!5819 (regex!7898 r!4353))))

(assert (=> d!1245770 (= (matchR!6435 (regex!7898 r!4353) (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857))))) lt!1505285)))

(declare-fun b!4233497 () Bool)

(assert (=> b!4233497 (= e!2628619 (matchR!6435 (derivativeStep!3845 (regex!7898 r!4353) (head!8975 (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857)))))) (tail!6822 (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857)))))))))

(declare-fun b!4233498 () Bool)

(declare-fun res!1741180 () Bool)

(declare-fun e!2628625 () Bool)

(assert (=> b!4233498 (=> (not res!1741180) (not e!2628625))))

(assert (=> b!4233498 (= res!1741180 (isEmpty!27626 (tail!6822 (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857)))))))))

(declare-fun b!4233499 () Bool)

(declare-fun call!293763 () Bool)

(assert (=> b!4233499 (= e!2628621 (= lt!1505285 call!293763))))

(declare-fun b!4233500 () Bool)

(declare-fun res!1741184 () Bool)

(assert (=> b!4233500 (=> (not res!1741184) (not e!2628625))))

(assert (=> b!4233500 (= res!1741184 (not call!293763))))

(declare-fun bm!293758 () Bool)

(assert (=> bm!293758 (= call!293763 (isEmpty!27626 (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857))))))))

(declare-fun b!4233501 () Bool)

(declare-fun res!1741183 () Bool)

(declare-fun e!2628620 () Bool)

(assert (=> b!4233501 (=> res!1741183 e!2628620)))

(assert (=> b!4233501 (= res!1741183 (not (isEmpty!27626 (tail!6822 (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857))))))))))

(declare-fun b!4233502 () Bool)

(declare-fun e!2628622 () Bool)

(assert (=> b!4233502 (= e!2628622 e!2628620)))

(declare-fun res!1741185 () Bool)

(assert (=> b!4233502 (=> res!1741185 e!2628620)))

(assert (=> b!4233502 (= res!1741185 call!293763)))

(declare-fun b!4233503 () Bool)

(declare-fun res!1741181 () Bool)

(declare-fun e!2628624 () Bool)

(assert (=> b!4233503 (=> res!1741181 e!2628624)))

(assert (=> b!4233503 (= res!1741181 (not ((_ is ElementMatch!12803) (regex!7898 r!4353))))))

(declare-fun e!2628623 () Bool)

(assert (=> b!4233503 (= e!2628623 e!2628624)))

(declare-fun b!4233504 () Bool)

(assert (=> b!4233504 (= e!2628623 (not lt!1505285))))

(declare-fun b!4233505 () Bool)

(assert (=> b!4233505 (= e!2628619 (nullable!4512 (regex!7898 r!4353)))))

(declare-fun b!4233506 () Bool)

(assert (=> b!4233506 (= e!2628621 e!2628623)))

(declare-fun c!719623 () Bool)

(assert (=> b!4233506 (= c!719623 ((_ is EmptyLang!12803) (regex!7898 r!4353)))))

(declare-fun b!4233507 () Bool)

(declare-fun res!1741186 () Bool)

(assert (=> b!4233507 (=> res!1741186 e!2628624)))

(assert (=> b!4233507 (= res!1741186 e!2628625)))

(declare-fun res!1741179 () Bool)

(assert (=> b!4233507 (=> (not res!1741179) (not e!2628625))))

(assert (=> b!4233507 (= res!1741179 lt!1505285)))

(declare-fun b!4233508 () Bool)

(assert (=> b!4233508 (= e!2628620 (not (= (head!8975 (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857))))) (c!719430 (regex!7898 r!4353)))))))

(declare-fun b!4233509 () Bool)

(assert (=> b!4233509 (= e!2628625 (= (head!8975 (list!16875 (charsOf!5264 (_1!25317 (get!15205 lt!1504857))))) (c!719430 (regex!7898 r!4353))))))

(declare-fun b!4233510 () Bool)

(assert (=> b!4233510 (= e!2628624 e!2628622)))

(declare-fun res!1741182 () Bool)

(assert (=> b!4233510 (=> (not res!1741182) (not e!2628622))))

(assert (=> b!4233510 (= res!1741182 (not lt!1505285))))

(assert (= (and d!1245770 c!719625) b!4233505))

(assert (= (and d!1245770 (not c!719625)) b!4233497))

(assert (= (and d!1245770 c!719624) b!4233499))

(assert (= (and d!1245770 (not c!719624)) b!4233506))

(assert (= (and b!4233506 c!719623) b!4233504))

(assert (= (and b!4233506 (not c!719623)) b!4233503))

(assert (= (and b!4233503 (not res!1741181)) b!4233507))

(assert (= (and b!4233507 res!1741179) b!4233500))

(assert (= (and b!4233500 res!1741184) b!4233498))

(assert (= (and b!4233498 res!1741180) b!4233509))

(assert (= (and b!4233507 (not res!1741186)) b!4233510))

(assert (= (and b!4233510 res!1741182) b!4233502))

(assert (= (and b!4233502 (not res!1741185)) b!4233501))

(assert (= (and b!4233501 (not res!1741183)) b!4233508))

(assert (= (or b!4233499 b!4233500 b!4233502) bm!293758))

(assert (=> b!4233509 m!4819221))

(declare-fun m!4819957 () Bool)

(assert (=> b!4233509 m!4819957))

(assert (=> b!4233501 m!4819221))

(declare-fun m!4819959 () Bool)

(assert (=> b!4233501 m!4819959))

(assert (=> b!4233501 m!4819959))

(declare-fun m!4819961 () Bool)

(assert (=> b!4233501 m!4819961))

(assert (=> b!4233498 m!4819221))

(assert (=> b!4233498 m!4819959))

(assert (=> b!4233498 m!4819959))

(assert (=> b!4233498 m!4819961))

(assert (=> bm!293758 m!4819221))

(declare-fun m!4819963 () Bool)

(assert (=> bm!293758 m!4819963))

(assert (=> b!4233505 m!4819141))

(assert (=> d!1245770 m!4819221))

(assert (=> d!1245770 m!4819963))

(assert (=> d!1245770 m!4819083))

(assert (=> b!4233508 m!4819221))

(assert (=> b!4233508 m!4819957))

(assert (=> b!4233497 m!4819221))

(assert (=> b!4233497 m!4819957))

(assert (=> b!4233497 m!4819957))

(declare-fun m!4819965 () Bool)

(assert (=> b!4233497 m!4819965))

(assert (=> b!4233497 m!4819221))

(assert (=> b!4233497 m!4819959))

(assert (=> b!4233497 m!4819965))

(assert (=> b!4233497 m!4819959))

(declare-fun m!4819967 () Bool)

(assert (=> b!4233497 m!4819967))

(assert (=> b!4232930 d!1245770))

(assert (=> b!4232930 d!1245574))

(assert (=> b!4232930 d!1245582))

(assert (=> b!4232930 d!1245584))

(assert (=> b!4232882 d!1245550))

(assert (=> b!4232882 d!1245590))

(assert (=> b!4232963 d!1245592))

(declare-fun d!1245772 () Bool)

(assert (=> d!1245772 (= (isEmpty!27626 (_1!25318 lt!1505025)) ((_ is Nil!46736) (_1!25318 lt!1505025)))))

(assert (=> b!4233092 d!1245772))

(declare-fun bs!598054 () Bool)

(declare-fun d!1245774 () Bool)

(assert (= bs!598054 (and d!1245774 d!1245744)))

(declare-fun lambda!130019 () Int)

(assert (=> bs!598054 (= lambda!130019 lambda!130013)))

(assert (=> d!1245774 true))

(assert (=> d!1245774 (< (dynLambda!20060 order!24625 (toChars!10493 (transformation!7898 r!4353))) (dynLambda!20059 order!24623 lambda!130019))))

(assert (=> d!1245774 true))

(assert (=> d!1245774 (< (dynLambda!20050 order!24617 (toValue!10634 (transformation!7898 r!4353))) (dynLambda!20059 order!24623 lambda!130019))))

(declare-fun Forall!1588 (Int) Bool)

(assert (=> d!1245774 (= (semiInverseModEq!3437 (toChars!10493 (transformation!7898 r!4353)) (toValue!10634 (transformation!7898 r!4353))) (Forall!1588 lambda!130019))))

(declare-fun bs!598055 () Bool)

(assert (= bs!598055 d!1245774))

(declare-fun m!4819979 () Bool)

(assert (=> bs!598055 m!4819979))

(assert (=> d!1245536 d!1245774))

(assert (=> b!4232860 d!1245762))

(assert (=> b!4232860 d!1245598))

(declare-fun d!1245780 () Bool)

(declare-fun lt!1505287 () Int)

(assert (=> d!1245780 (>= lt!1505287 0)))

(declare-fun e!2628630 () Int)

(assert (=> d!1245780 (= lt!1505287 e!2628630)))

(declare-fun c!719626 () Bool)

(assert (=> d!1245780 (= c!719626 ((_ is Nil!46736) (_1!25318 lt!1505012)))))

(assert (=> d!1245780 (= (size!34263 (_1!25318 lt!1505012)) lt!1505287)))

(declare-fun b!4233521 () Bool)

(assert (=> b!4233521 (= e!2628630 0)))

(declare-fun b!4233522 () Bool)

(assert (=> b!4233522 (= e!2628630 (+ 1 (size!34263 (t!349547 (_1!25318 lt!1505012)))))))

(assert (= (and d!1245780 c!719626) b!4233521))

(assert (= (and d!1245780 (not c!719626)) b!4233522))

(declare-fun m!4819981 () Bool)

(assert (=> b!4233522 m!4819981))

(assert (=> b!4233091 d!1245780))

(assert (=> b!4233091 d!1245496))

(declare-fun d!1245782 () Bool)

(declare-fun e!2628641 () Bool)

(assert (=> d!1245782 e!2628641))

(declare-fun res!1741191 () Bool)

(assert (=> d!1245782 (=> res!1741191 e!2628641)))

(assert (=> d!1245782 (= res!1741191 (= p!3018 Nil!46736))))

(assert (=> d!1245782 true))

(declare-fun _$93!64 () Unit!65887)

(assert (=> d!1245782 (= (choose!25926 (regex!7898 r!4353) input!3600 Nil!46736 p!3018) _$93!64)))

(declare-fun b!4233539 () Bool)

(assert (=> b!4233539 (= e!2628641 (not (matchR!6435 (regex!7898 r!4353) p!3018)))))

(assert (= (and d!1245782 (not res!1741191)) b!4233539))

(assert (=> b!4233539 m!4819079))

(assert (=> d!1245540 d!1245782))

(assert (=> d!1245540 d!1245500))

(assert (=> bm!293690 d!1245592))

(declare-fun d!1245784 () Bool)

(assert (=> d!1245784 (= (nullable!4512 (reg!13132 (regex!7898 r!4353))) (nullableFct!1235 (reg!13132 (regex!7898 r!4353))))))

(declare-fun bs!598056 () Bool)

(assert (= bs!598056 d!1245784))

(declare-fun m!4819991 () Bool)

(assert (=> bs!598056 m!4819991))

(assert (=> b!4232825 d!1245784))

(declare-fun b!4233540 () Bool)

(declare-fun e!2628642 () Bool)

(assert (=> b!4233540 (= e!2628642 tp_is_empty!22541)))

(declare-fun b!4233541 () Bool)

(declare-fun tp!1296453 () Bool)

(declare-fun tp!1296455 () Bool)

(assert (=> b!4233541 (= e!2628642 (and tp!1296453 tp!1296455))))

(assert (=> b!4233132 (= tp!1296440 e!2628642)))

(declare-fun b!4233542 () Bool)

(declare-fun tp!1296454 () Bool)

(assert (=> b!4233542 (= e!2628642 tp!1296454)))

(declare-fun b!4233543 () Bool)

(declare-fun tp!1296451 () Bool)

(declare-fun tp!1296452 () Bool)

(assert (=> b!4233543 (= e!2628642 (and tp!1296451 tp!1296452))))

(assert (= (and b!4233132 ((_ is ElementMatch!12803) (reg!13132 (regex!7898 r!4353)))) b!4233540))

(assert (= (and b!4233132 ((_ is Concat!20932) (reg!13132 (regex!7898 r!4353)))) b!4233541))

(assert (= (and b!4233132 ((_ is Star!12803) (reg!13132 (regex!7898 r!4353)))) b!4233542))

(assert (= (and b!4233132 ((_ is Union!12803) (reg!13132 (regex!7898 r!4353)))) b!4233543))

(declare-fun b!4233544 () Bool)

(declare-fun e!2628643 () Bool)

(assert (=> b!4233544 (= e!2628643 tp_is_empty!22541)))

(declare-fun b!4233545 () Bool)

(declare-fun tp!1296458 () Bool)

(declare-fun tp!1296460 () Bool)

(assert (=> b!4233545 (= e!2628643 (and tp!1296458 tp!1296460))))

(assert (=> b!4233133 (= tp!1296437 e!2628643)))

(declare-fun b!4233546 () Bool)

(declare-fun tp!1296459 () Bool)

(assert (=> b!4233546 (= e!2628643 tp!1296459)))

(declare-fun b!4233547 () Bool)

(declare-fun tp!1296456 () Bool)

(declare-fun tp!1296457 () Bool)

(assert (=> b!4233547 (= e!2628643 (and tp!1296456 tp!1296457))))

(assert (= (and b!4233133 ((_ is ElementMatch!12803) (regOne!26119 (regex!7898 r!4353)))) b!4233544))

(assert (= (and b!4233133 ((_ is Concat!20932) (regOne!26119 (regex!7898 r!4353)))) b!4233545))

(assert (= (and b!4233133 ((_ is Star!12803) (regOne!26119 (regex!7898 r!4353)))) b!4233546))

(assert (= (and b!4233133 ((_ is Union!12803) (regOne!26119 (regex!7898 r!4353)))) b!4233547))

(declare-fun b!4233548 () Bool)

(declare-fun e!2628644 () Bool)

(assert (=> b!4233548 (= e!2628644 tp_is_empty!22541)))

(declare-fun b!4233549 () Bool)

(declare-fun tp!1296463 () Bool)

(declare-fun tp!1296465 () Bool)

(assert (=> b!4233549 (= e!2628644 (and tp!1296463 tp!1296465))))

(assert (=> b!4233133 (= tp!1296438 e!2628644)))

(declare-fun b!4233550 () Bool)

(declare-fun tp!1296464 () Bool)

(assert (=> b!4233550 (= e!2628644 tp!1296464)))

(declare-fun b!4233551 () Bool)

(declare-fun tp!1296461 () Bool)

(declare-fun tp!1296462 () Bool)

(assert (=> b!4233551 (= e!2628644 (and tp!1296461 tp!1296462))))

(assert (= (and b!4233133 ((_ is ElementMatch!12803) (regTwo!26119 (regex!7898 r!4353)))) b!4233548))

(assert (= (and b!4233133 ((_ is Concat!20932) (regTwo!26119 (regex!7898 r!4353)))) b!4233549))

(assert (= (and b!4233133 ((_ is Star!12803) (regTwo!26119 (regex!7898 r!4353)))) b!4233550))

(assert (= (and b!4233133 ((_ is Union!12803) (regTwo!26119 (regex!7898 r!4353)))) b!4233551))

(declare-fun b!4233552 () Bool)

(declare-fun e!2628645 () Bool)

(declare-fun tp!1296466 () Bool)

(assert (=> b!4233552 (= e!2628645 (and tp_is_empty!22541 tp!1296466))))

(assert (=> b!4233119 (= tp!1296426 e!2628645)))

(assert (= (and b!4233119 ((_ is Cons!46736) (t!349547 (t!349547 input!3600)))) b!4233552))

(declare-fun b!4233553 () Bool)

(declare-fun e!2628646 () Bool)

(declare-fun tp!1296467 () Bool)

(assert (=> b!4233553 (= e!2628646 (and tp_is_empty!22541 tp!1296467))))

(assert (=> b!4233134 (= tp!1296442 e!2628646)))

(assert (= (and b!4233134 ((_ is Cons!46736) (t!349547 (t!349547 p!3018)))) b!4233553))

(declare-fun b!4233554 () Bool)

(declare-fun e!2628651 () Bool)

(assert (=> b!4233554 (= e!2628651 tp_is_empty!22541)))

(declare-fun b!4233555 () Bool)

(declare-fun tp!1296470 () Bool)

(declare-fun tp!1296472 () Bool)

(assert (=> b!4233555 (= e!2628651 (and tp!1296470 tp!1296472))))

(assert (=> b!4233131 (= tp!1296439 e!2628651)))

(declare-fun b!4233556 () Bool)

(declare-fun tp!1296471 () Bool)

(assert (=> b!4233556 (= e!2628651 tp!1296471)))

(declare-fun b!4233557 () Bool)

(declare-fun tp!1296468 () Bool)

(declare-fun tp!1296469 () Bool)

(assert (=> b!4233557 (= e!2628651 (and tp!1296468 tp!1296469))))

(assert (= (and b!4233131 ((_ is ElementMatch!12803) (regOne!26118 (regex!7898 r!4353)))) b!4233554))

(assert (= (and b!4233131 ((_ is Concat!20932) (regOne!26118 (regex!7898 r!4353)))) b!4233555))

(assert (= (and b!4233131 ((_ is Star!12803) (regOne!26118 (regex!7898 r!4353)))) b!4233556))

(assert (= (and b!4233131 ((_ is Union!12803) (regOne!26118 (regex!7898 r!4353)))) b!4233557))

(declare-fun b!4233572 () Bool)

(declare-fun e!2628655 () Bool)

(assert (=> b!4233572 (= e!2628655 tp_is_empty!22541)))

(declare-fun b!4233573 () Bool)

(declare-fun tp!1296475 () Bool)

(declare-fun tp!1296477 () Bool)

(assert (=> b!4233573 (= e!2628655 (and tp!1296475 tp!1296477))))

(assert (=> b!4233131 (= tp!1296441 e!2628655)))

(declare-fun b!4233574 () Bool)

(declare-fun tp!1296476 () Bool)

(assert (=> b!4233574 (= e!2628655 tp!1296476)))

(declare-fun b!4233575 () Bool)

(declare-fun tp!1296473 () Bool)

(declare-fun tp!1296474 () Bool)

(assert (=> b!4233575 (= e!2628655 (and tp!1296473 tp!1296474))))

(assert (= (and b!4233131 ((_ is ElementMatch!12803) (regTwo!26118 (regex!7898 r!4353)))) b!4233572))

(assert (= (and b!4233131 ((_ is Concat!20932) (regTwo!26118 (regex!7898 r!4353)))) b!4233573))

(assert (= (and b!4233131 ((_ is Star!12803) (regTwo!26118 (regex!7898 r!4353)))) b!4233574))

(assert (= (and b!4233131 ((_ is Union!12803) (regTwo!26118 (regex!7898 r!4353)))) b!4233575))

(declare-fun b_lambda!124631 () Bool)

(assert (= b_lambda!124623 (or (and b!4232737 b_free!125015) b_lambda!124631)))

(declare-fun b_lambda!124633 () Bool)

(assert (= b_lambda!124621 (or (and b!4232737 b_free!125017) b_lambda!124633)))

(declare-fun b_lambda!124635 () Bool)

(assert (= b_lambda!124617 (or (and b!4232737 b_free!125015) b_lambda!124635)))

(check-sat (not b!4233495) (not d!1245696) b_and!334359 (not b!4233441) (not b!4233404) (not d!1245744) (not bm!293750) (not b!4233433) (not b!4233413) (not bm!293735) (not tb!253891) (not bm!293756) (not d!1245728) (not tb!253889) (not b!4233248) (not b!4233549) (not bm!293721) (not b_lambda!124611) (not b!4233262) (not b!4233188) (not b!4233338) (not d!1245760) (not b!4233478) (not d!1245664) (not b!4233487) (not d!1245682) (not d!1245656) (not d!1245600) (not b!4233491) (not b!4233382) (not b!4233509) (not d!1245592) (not bm!293724) (not b!4233468) (not b!4233205) (not b!4233522) (not b!4233553) (not bm!293751) (not b!4233457) b_and!334363 (not b!4233501) (not b!4233204) (not b!4233539) (not b_lambda!124633) (not b!4233555) (not b!4233557) (not bm!293754) (not b!4233505) (not bm!293753) (not b!4233483) tp_is_empty!22541 (not b!4233259) (not bm!293752) (not b!4233543) (not b_next!125721) (not d!1245646) (not b!4233405) (not bm!293713) (not d!1245686) (not b!4233199) (not bm!293747) (not b!4233284) (not b!4233545) (not d!1245556) (not b!4233189) (not d!1245764) (not b!4233249) (not d!1245720) (not b!4233432) (not b!4233575) (not b!4233351) (not b!4233383) (not b!4233556) (not d!1245644) (not b!4233203) (not d!1245616) (not d!1245756) (not bm!293717) (not d!1245770) (not b!4233347) (not b!4233508) (not b_next!125719) (not d!1245692) (not b!4233401) (not d!1245602) (not b!4233442) (not bm!293746) (not b!4233465) (not d!1245684) (not b!4233412) (not b!4233384) (not d!1245574) (not d!1245562) (not b!4233497) (not b!4233477) (not b!4233494) (not d!1245768) (not b!4233573) (not b!4233290) (not bm!293743) (not b!4233425) (not b!4233551) (not d!1245700) (not b!4233484) (not bm!293718) (not bm!293723) (not bm!293749) (not b_lambda!124625) (not bm!293745) (not b!4233201) (not d!1245740) (not d!1245774) (not bm!293742) (not bm!293758) (not b!4233339) (not d!1245614) (not b!4233498) (not d!1245784) (not b!4233552) (not b!4233421) (not b!4233469) (not b!4233541) (not bm!293736) (not bm!293757) (not bm!293716) (not b!4233260) (not b_lambda!124635) (not b!4233400) (not bm!293755) (not bm!293744) (not b!4233247) (not b!4233354) (not b_lambda!124631) (not b!4233340) (not tb!253879) (not bm!293748) (not tb!253885) (not b!4233451) (not d!1245708) (not b!4233424) (not b!4233252) (not b!4233546) (not b!4233450) (not b!4233420) (not b!4233542) (not d!1245704) (not b!4233574) (not b!4233353) (not d!1245582) (not b!4233434) (not b!4233547) (not d!1245622) (not b!4233550) (not b!4233236) (not b!4233256) (not d!1245702) (not d!1245754) (not b!4233379) (not bm!293741))
(check-sat b_and!334363 b_and!334359 (not b_next!125721) (not b_next!125719))
