; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!510664 () Bool)

(assert start!510664)

(declare-fun b!4881207 () Bool)

(declare-fun b_free!130875 () Bool)

(declare-fun b_next!131665 () Bool)

(assert (=> b!4881207 (= b_free!130875 (not b_next!131665))))

(declare-fun tp!1373197 () Bool)

(declare-fun b_and!343707 () Bool)

(assert (=> b!4881207 (= tp!1373197 b_and!343707)))

(declare-fun b_free!130877 () Bool)

(declare-fun b_next!131667 () Bool)

(assert (=> b!4881207 (= b_free!130877 (not b_next!131667))))

(declare-fun tp!1373198 () Bool)

(declare-fun b_and!343709 () Bool)

(assert (=> b!4881207 (= tp!1373198 b_and!343709)))

(declare-fun b!4881202 () Bool)

(declare-fun e!3050545 () Bool)

(declare-fun e!3050546 () Bool)

(declare-fun tp!1373199 () Bool)

(assert (=> b!4881202 (= e!3050545 (and e!3050546 tp!1373199))))

(declare-fun b!4881203 () Bool)

(declare-fun e!3050548 () Bool)

(declare-datatypes ((C!26460 0))(
  ( (C!26461 (val!22564 Int)) )
))
(declare-datatypes ((List!56173 0))(
  ( (Nil!56049) (Cons!56049 (h!62497 C!26460) (t!364819 List!56173)) )
))
(declare-datatypes ((IArray!29309 0))(
  ( (IArray!29310 (innerList!14712 List!56173)) )
))
(declare-datatypes ((Conc!14624 0))(
  ( (Node!14624 (left!40722 Conc!14624) (right!41052 Conc!14624) (csize!29478 Int) (cheight!14835 Int)) (Leaf!24369 (xs!17940 IArray!29309) (csize!29479 Int)) (Empty!14624) )
))
(declare-datatypes ((BalanceConc!28678 0))(
  ( (BalanceConc!28679 (c!830273 Conc!14624)) )
))
(declare-fun input!1236 () BalanceConc!28678)

(declare-fun tp!1373196 () Bool)

(declare-fun inv!72053 (Conc!14624) Bool)

(assert (=> b!4881203 (= e!3050548 (and (inv!72053 (c!830273 input!1236)) tp!1373196))))

(declare-fun res!2083610 () Bool)

(declare-fun e!3050547 () Bool)

(assert (=> start!510664 (=> (not res!2083610) (not e!3050547))))

(declare-datatypes ((LexerInterface!7648 0))(
  ( (LexerInterfaceExt!7645 (__x!34025 Int)) (Lexer!7646) )
))
(declare-fun thiss!14805 () LexerInterface!7648)

(get-info :version)

(assert (=> start!510664 (= res!2083610 ((_ is Lexer!7646) thiss!14805))))

(assert (=> start!510664 e!3050547))

(assert (=> start!510664 true))

(assert (=> start!510664 e!3050545))

(declare-fun inv!72054 (BalanceConc!28678) Bool)

(assert (=> start!510664 (and (inv!72054 input!1236) e!3050548)))

(declare-fun b!4881204 () Bool)

(declare-fun res!2083607 () Bool)

(assert (=> b!4881204 (=> (not res!2083607) (not e!3050547))))

(declare-datatypes ((List!56174 0))(
  ( (Nil!56050) (Cons!56050 (h!62498 (_ BitVec 16)) (t!364820 List!56174)) )
))
(declare-datatypes ((TokenValue!8366 0))(
  ( (FloatLiteralValue!16732 (text!59007 List!56174)) (TokenValueExt!8365 (__x!34026 Int)) (Broken!41830 (value!258725 List!56174)) (Object!8489) (End!8366) (Def!8366) (Underscore!8366) (Match!8366) (Else!8366) (Error!8366) (Case!8366) (If!8366) (Extends!8366) (Abstract!8366) (Class!8366) (Val!8366) (DelimiterValue!16732 (del!8426 List!56174)) (KeywordValue!8372 (value!258726 List!56174)) (CommentValue!16732 (value!258727 List!56174)) (WhitespaceValue!16732 (value!258728 List!56174)) (IndentationValue!8366 (value!258729 List!56174)) (String!63271) (Int32!8366) (Broken!41831 (value!258730 List!56174)) (Boolean!8367) (Unit!146039) (OperatorValue!8369 (op!8426 List!56174)) (IdentifierValue!16732 (value!258731 List!56174)) (IdentifierValue!16733 (value!258732 List!56174)) (WhitespaceValue!16733 (value!258733 List!56174)) (True!16732) (False!16732) (Broken!41832 (value!258734 List!56174)) (Broken!41833 (value!258735 List!56174)) (True!16733) (RightBrace!8366) (RightBracket!8366) (Colon!8366) (Null!8366) (Comma!8366) (LeftBracket!8366) (False!16733) (LeftBrace!8366) (ImaginaryLiteralValue!8366 (text!59008 List!56174)) (StringLiteralValue!25098 (value!258736 List!56174)) (EOFValue!8366 (value!258737 List!56174)) (IdentValue!8366 (value!258738 List!56174)) (DelimiterValue!16733 (value!258739 List!56174)) (DedentValue!8366 (value!258740 List!56174)) (NewLineValue!8366 (value!258741 List!56174)) (IntegerValue!25098 (value!258742 (_ BitVec 32)) (text!59009 List!56174)) (IntegerValue!25099 (value!258743 Int) (text!59010 List!56174)) (Times!8366) (Or!8366) (Equal!8366) (Minus!8366) (Broken!41834 (value!258744 List!56174)) (And!8366) (Div!8366) (LessEqual!8366) (Mod!8366) (Concat!21497) (Not!8366) (Plus!8366) (SpaceValue!8366 (value!258745 List!56174)) (IntegerValue!25100 (value!258746 Int) (text!59011 List!56174)) (StringLiteralValue!25099 (text!59012 List!56174)) (FloatLiteralValue!16733 (text!59013 List!56174)) (BytesLiteralValue!8366 (value!258747 List!56174)) (CommentValue!16733 (value!258748 List!56174)) (StringLiteralValue!25100 (value!258749 List!56174)) (ErrorTokenValue!8366 (msg!8427 List!56174)) )
))
(declare-datatypes ((Regex!13131 0))(
  ( (ElementMatch!13131 (c!830274 C!26460)) (Concat!21498 (regOne!26774 Regex!13131) (regTwo!26774 Regex!13131)) (EmptyExpr!13131) (Star!13131 (reg!13460 Regex!13131)) (EmptyLang!13131) (Union!13131 (regOne!26775 Regex!13131) (regTwo!26775 Regex!13131)) )
))
(declare-datatypes ((String!63272 0))(
  ( (String!63273 (value!258750 String)) )
))
(declare-datatypes ((TokenValueInjection!16040 0))(
  ( (TokenValueInjection!16041 (toValue!10943 Int) (toChars!10802 Int)) )
))
(declare-datatypes ((Rule!15912 0))(
  ( (Rule!15913 (regex!8056 Regex!13131) (tag!8920 String!63272) (isSeparator!8056 Bool) (transformation!8056 TokenValueInjection!16040)) )
))
(declare-datatypes ((List!56175 0))(
  ( (Nil!56051) (Cons!56051 (h!62499 Rule!15912) (t!364821 List!56175)) )
))
(declare-fun rulesArg!165 () List!56175)

(declare-fun isEmpty!30039 (List!56175) Bool)

(assert (=> b!4881204 (= res!2083607 (not (isEmpty!30039 rulesArg!165)))))

(declare-fun b!4881205 () Bool)

(declare-fun e!3050543 () Bool)

(declare-fun ruleValid!3640 (LexerInterface!7648 Rule!15912) Bool)

(assert (=> b!4881205 (= e!3050543 (ruleValid!3640 thiss!14805 (h!62499 rulesArg!165)))))

(declare-fun b!4881206 () Bool)

(assert (=> b!4881206 (= e!3050547 (not e!3050543))))

(declare-fun res!2083609 () Bool)

(assert (=> b!4881206 (=> res!2083609 e!3050543)))

(assert (=> b!4881206 (= res!2083609 (or (not ((_ is Cons!56051) rulesArg!165)) (not ((_ is Nil!56051) (t!364821 rulesArg!165)))))))

(declare-fun lt!1999403 () List!56173)

(declare-fun isPrefix!4778 (List!56173 List!56173) Bool)

(assert (=> b!4881206 (isPrefix!4778 lt!1999403 lt!1999403)))

(declare-datatypes ((Unit!146040 0))(
  ( (Unit!146041) )
))
(declare-fun lt!1999404 () Unit!146040)

(declare-fun lemmaIsPrefixRefl!3175 (List!56173 List!56173) Unit!146040)

(assert (=> b!4881206 (= lt!1999404 (lemmaIsPrefixRefl!3175 lt!1999403 lt!1999403))))

(declare-fun list!17573 (BalanceConc!28678) List!56173)

(assert (=> b!4881206 (= lt!1999403 (list!17573 input!1236))))

(declare-fun e!3050544 () Bool)

(assert (=> b!4881207 (= e!3050544 (and tp!1373197 tp!1373198))))

(declare-fun b!4881208 () Bool)

(declare-fun tp!1373195 () Bool)

(declare-fun inv!72049 (String!63272) Bool)

(declare-fun inv!72055 (TokenValueInjection!16040) Bool)

(assert (=> b!4881208 (= e!3050546 (and tp!1373195 (inv!72049 (tag!8920 (h!62499 rulesArg!165))) (inv!72055 (transformation!8056 (h!62499 rulesArg!165))) e!3050544))))

(declare-fun b!4881209 () Bool)

(declare-fun res!2083608 () Bool)

(assert (=> b!4881209 (=> (not res!2083608) (not e!3050547))))

(declare-fun rulesValidInductive!3035 (LexerInterface!7648 List!56175) Bool)

(assert (=> b!4881209 (= res!2083608 (rulesValidInductive!3035 thiss!14805 rulesArg!165))))

(assert (= (and start!510664 res!2083610) b!4881209))

(assert (= (and b!4881209 res!2083608) b!4881204))

(assert (= (and b!4881204 res!2083607) b!4881206))

(assert (= (and b!4881206 (not res!2083609)) b!4881205))

(assert (= b!4881208 b!4881207))

(assert (= b!4881202 b!4881208))

(assert (= (and start!510664 ((_ is Cons!56051) rulesArg!165)) b!4881202))

(assert (= start!510664 b!4881203))

(declare-fun m!5885536 () Bool)

(assert (=> b!4881203 m!5885536))

(declare-fun m!5885538 () Bool)

(assert (=> b!4881208 m!5885538))

(declare-fun m!5885540 () Bool)

(assert (=> b!4881208 m!5885540))

(declare-fun m!5885542 () Bool)

(assert (=> b!4881209 m!5885542))

(declare-fun m!5885544 () Bool)

(assert (=> start!510664 m!5885544))

(declare-fun m!5885546 () Bool)

(assert (=> b!4881204 m!5885546))

(declare-fun m!5885548 () Bool)

(assert (=> b!4881206 m!5885548))

(declare-fun m!5885550 () Bool)

(assert (=> b!4881206 m!5885550))

(declare-fun m!5885552 () Bool)

(assert (=> b!4881206 m!5885552))

(declare-fun m!5885554 () Bool)

(assert (=> b!4881205 m!5885554))

(check-sat (not b!4881203) (not b!4881205) (not b_next!131665) b_and!343709 (not b!4881209) (not b_next!131667) (not b!4881202) (not b!4881204) (not start!510664) b_and!343707 (not b!4881206) (not b!4881208))
(check-sat b_and!343709 b_and!343707 (not b_next!131665) (not b_next!131667))
(get-model)

(declare-fun b!4881218 () Bool)

(declare-fun e!3050557 () Bool)

(declare-fun e!3050558 () Bool)

(assert (=> b!4881218 (= e!3050557 e!3050558)))

(declare-fun res!2083626 () Bool)

(assert (=> b!4881218 (=> (not res!2083626) (not e!3050558))))

(assert (=> b!4881218 (= res!2083626 (not ((_ is Nil!56049) lt!1999403)))))

(declare-fun b!4881220 () Bool)

(declare-fun tail!9569 (List!56173) List!56173)

(assert (=> b!4881220 (= e!3050558 (isPrefix!4778 (tail!9569 lt!1999403) (tail!9569 lt!1999403)))))

(declare-fun b!4881219 () Bool)

(declare-fun res!2083623 () Bool)

(assert (=> b!4881219 (=> (not res!2083623) (not e!3050558))))

(declare-fun head!10423 (List!56173) C!26460)

(assert (=> b!4881219 (= res!2083623 (= (head!10423 lt!1999403) (head!10423 lt!1999403)))))

(declare-fun b!4881221 () Bool)

(declare-fun e!3050556 () Bool)

(declare-fun size!36964 (List!56173) Int)

(assert (=> b!4881221 (= e!3050556 (>= (size!36964 lt!1999403) (size!36964 lt!1999403)))))

(declare-fun d!1568883 () Bool)

(assert (=> d!1568883 e!3050556))

(declare-fun res!2083625 () Bool)

(assert (=> d!1568883 (=> res!2083625 e!3050556)))

(declare-fun lt!1999407 () Bool)

(assert (=> d!1568883 (= res!2083625 (not lt!1999407))))

(assert (=> d!1568883 (= lt!1999407 e!3050557)))

(declare-fun res!2083624 () Bool)

(assert (=> d!1568883 (=> res!2083624 e!3050557)))

(assert (=> d!1568883 (= res!2083624 ((_ is Nil!56049) lt!1999403))))

(assert (=> d!1568883 (= (isPrefix!4778 lt!1999403 lt!1999403) lt!1999407)))

(assert (= (and d!1568883 (not res!2083624)) b!4881218))

(assert (= (and b!4881218 res!2083626) b!4881219))

(assert (= (and b!4881219 res!2083623) b!4881220))

(assert (= (and d!1568883 (not res!2083625)) b!4881221))

(declare-fun m!5885558 () Bool)

(assert (=> b!4881220 m!5885558))

(assert (=> b!4881220 m!5885558))

(assert (=> b!4881220 m!5885558))

(assert (=> b!4881220 m!5885558))

(declare-fun m!5885560 () Bool)

(assert (=> b!4881220 m!5885560))

(declare-fun m!5885562 () Bool)

(assert (=> b!4881219 m!5885562))

(assert (=> b!4881219 m!5885562))

(declare-fun m!5885564 () Bool)

(assert (=> b!4881221 m!5885564))

(assert (=> b!4881221 m!5885564))

(assert (=> b!4881206 d!1568883))

(declare-fun d!1568889 () Bool)

(assert (=> d!1568889 (isPrefix!4778 lt!1999403 lt!1999403)))

(declare-fun lt!1999412 () Unit!146040)

(declare-fun choose!35662 (List!56173 List!56173) Unit!146040)

(assert (=> d!1568889 (= lt!1999412 (choose!35662 lt!1999403 lt!1999403))))

(assert (=> d!1568889 (= (lemmaIsPrefixRefl!3175 lt!1999403 lt!1999403) lt!1999412)))

(declare-fun bs!1175412 () Bool)

(assert (= bs!1175412 d!1568889))

(assert (=> bs!1175412 m!5885548))

(declare-fun m!5885566 () Bool)

(assert (=> bs!1175412 m!5885566))

(assert (=> b!4881206 d!1568889))

(declare-fun d!1568891 () Bool)

(declare-fun list!17574 (Conc!14624) List!56173)

(assert (=> d!1568891 (= (list!17573 input!1236) (list!17574 (c!830273 input!1236)))))

(declare-fun bs!1175413 () Bool)

(assert (= bs!1175413 d!1568891))

(declare-fun m!5885568 () Bool)

(assert (=> bs!1175413 m!5885568))

(assert (=> b!4881206 d!1568891))

(declare-fun d!1568893 () Bool)

(declare-fun isBalanced!3981 (Conc!14624) Bool)

(assert (=> d!1568893 (= (inv!72054 input!1236) (isBalanced!3981 (c!830273 input!1236)))))

(declare-fun bs!1175414 () Bool)

(assert (= bs!1175414 d!1568893))

(declare-fun m!5885570 () Bool)

(assert (=> bs!1175414 m!5885570))

(assert (=> start!510664 d!1568893))

(declare-fun d!1568895 () Bool)

(declare-fun res!2083635 () Bool)

(declare-fun e!3050565 () Bool)

(assert (=> d!1568895 (=> (not res!2083635) (not e!3050565))))

(declare-fun validRegex!5877 (Regex!13131) Bool)

(assert (=> d!1568895 (= res!2083635 (validRegex!5877 (regex!8056 (h!62499 rulesArg!165))))))

(assert (=> d!1568895 (= (ruleValid!3640 thiss!14805 (h!62499 rulesArg!165)) e!3050565)))

(declare-fun b!4881230 () Bool)

(declare-fun res!2083636 () Bool)

(assert (=> b!4881230 (=> (not res!2083636) (not e!3050565))))

(declare-fun nullable!4550 (Regex!13131) Bool)

(assert (=> b!4881230 (= res!2083636 (not (nullable!4550 (regex!8056 (h!62499 rulesArg!165)))))))

(declare-fun b!4881231 () Bool)

(assert (=> b!4881231 (= e!3050565 (not (= (tag!8920 (h!62499 rulesArg!165)) (String!63273 ""))))))

(assert (= (and d!1568895 res!2083635) b!4881230))

(assert (= (and b!4881230 res!2083636) b!4881231))

(declare-fun m!5885572 () Bool)

(assert (=> d!1568895 m!5885572))

(declare-fun m!5885574 () Bool)

(assert (=> b!4881230 m!5885574))

(assert (=> b!4881205 d!1568895))

(declare-fun d!1568897 () Bool)

(assert (=> d!1568897 (= (isEmpty!30039 rulesArg!165) ((_ is Nil!56051) rulesArg!165))))

(assert (=> b!4881204 d!1568897))

(declare-fun d!1568899 () Bool)

(assert (=> d!1568899 true))

(declare-fun lt!1999415 () Bool)

(declare-fun lambda!243690 () Int)

(declare-fun forall!13059 (List!56175 Int) Bool)

(assert (=> d!1568899 (= lt!1999415 (forall!13059 rulesArg!165 lambda!243690))))

(declare-fun e!3050570 () Bool)

(assert (=> d!1568899 (= lt!1999415 e!3050570)))

(declare-fun res!2083641 () Bool)

(assert (=> d!1568899 (=> res!2083641 e!3050570)))

(assert (=> d!1568899 (= res!2083641 (not ((_ is Cons!56051) rulesArg!165)))))

(assert (=> d!1568899 (= (rulesValidInductive!3035 thiss!14805 rulesArg!165) lt!1999415)))

(declare-fun b!4881236 () Bool)

(declare-fun e!3050571 () Bool)

(assert (=> b!4881236 (= e!3050570 e!3050571)))

(declare-fun res!2083642 () Bool)

(assert (=> b!4881236 (=> (not res!2083642) (not e!3050571))))

(assert (=> b!4881236 (= res!2083642 (ruleValid!3640 thiss!14805 (h!62499 rulesArg!165)))))

(declare-fun b!4881237 () Bool)

(assert (=> b!4881237 (= e!3050571 (rulesValidInductive!3035 thiss!14805 (t!364821 rulesArg!165)))))

(assert (= (and d!1568899 (not res!2083641)) b!4881236))

(assert (= (and b!4881236 res!2083642) b!4881237))

(declare-fun m!5885576 () Bool)

(assert (=> d!1568899 m!5885576))

(assert (=> b!4881236 m!5885554))

(declare-fun m!5885578 () Bool)

(assert (=> b!4881237 m!5885578))

(assert (=> b!4881209 d!1568899))

(declare-fun d!1568901 () Bool)

(declare-fun c!830277 () Bool)

(assert (=> d!1568901 (= c!830277 ((_ is Node!14624) (c!830273 input!1236)))))

(declare-fun e!3050576 () Bool)

(assert (=> d!1568901 (= (inv!72053 (c!830273 input!1236)) e!3050576)))

(declare-fun b!4881246 () Bool)

(declare-fun inv!72056 (Conc!14624) Bool)

(assert (=> b!4881246 (= e!3050576 (inv!72056 (c!830273 input!1236)))))

(declare-fun b!4881247 () Bool)

(declare-fun e!3050577 () Bool)

(assert (=> b!4881247 (= e!3050576 e!3050577)))

(declare-fun res!2083645 () Bool)

(assert (=> b!4881247 (= res!2083645 (not ((_ is Leaf!24369) (c!830273 input!1236))))))

(assert (=> b!4881247 (=> res!2083645 e!3050577)))

(declare-fun b!4881248 () Bool)

(declare-fun inv!72057 (Conc!14624) Bool)

(assert (=> b!4881248 (= e!3050577 (inv!72057 (c!830273 input!1236)))))

(assert (= (and d!1568901 c!830277) b!4881246))

(assert (= (and d!1568901 (not c!830277)) b!4881247))

(assert (= (and b!4881247 (not res!2083645)) b!4881248))

(declare-fun m!5885580 () Bool)

(assert (=> b!4881246 m!5885580))

(declare-fun m!5885582 () Bool)

(assert (=> b!4881248 m!5885582))

(assert (=> b!4881203 d!1568901))

(declare-fun d!1568903 () Bool)

(assert (=> d!1568903 (= (inv!72049 (tag!8920 (h!62499 rulesArg!165))) (= (mod (str.len (value!258750 (tag!8920 (h!62499 rulesArg!165)))) 2) 0))))

(assert (=> b!4881208 d!1568903))

(declare-fun d!1568905 () Bool)

(declare-fun res!2083648 () Bool)

(declare-fun e!3050580 () Bool)

(assert (=> d!1568905 (=> (not res!2083648) (not e!3050580))))

(declare-fun semiInverseModEq!3555 (Int Int) Bool)

(assert (=> d!1568905 (= res!2083648 (semiInverseModEq!3555 (toChars!10802 (transformation!8056 (h!62499 rulesArg!165))) (toValue!10943 (transformation!8056 (h!62499 rulesArg!165)))))))

(assert (=> d!1568905 (= (inv!72055 (transformation!8056 (h!62499 rulesArg!165))) e!3050580)))

(declare-fun b!4881251 () Bool)

(declare-fun equivClasses!3434 (Int Int) Bool)

(assert (=> b!4881251 (= e!3050580 (equivClasses!3434 (toChars!10802 (transformation!8056 (h!62499 rulesArg!165))) (toValue!10943 (transformation!8056 (h!62499 rulesArg!165)))))))

(assert (= (and d!1568905 res!2083648) b!4881251))

(declare-fun m!5885584 () Bool)

(assert (=> d!1568905 m!5885584))

(declare-fun m!5885586 () Bool)

(assert (=> b!4881251 m!5885586))

(assert (=> b!4881208 d!1568905))

(declare-fun b!4881262 () Bool)

(declare-fun b_free!130879 () Bool)

(declare-fun b_next!131669 () Bool)

(assert (=> b!4881262 (= b_free!130879 (not b_next!131669))))

(declare-fun tp!1373211 () Bool)

(declare-fun b_and!343711 () Bool)

(assert (=> b!4881262 (= tp!1373211 b_and!343711)))

(declare-fun b_free!130881 () Bool)

(declare-fun b_next!131671 () Bool)

(assert (=> b!4881262 (= b_free!130881 (not b_next!131671))))

(declare-fun tp!1373209 () Bool)

(declare-fun b_and!343713 () Bool)

(assert (=> b!4881262 (= tp!1373209 b_and!343713)))

(declare-fun e!3050591 () Bool)

(assert (=> b!4881262 (= e!3050591 (and tp!1373211 tp!1373209))))

(declare-fun e!3050592 () Bool)

(declare-fun tp!1373208 () Bool)

(declare-fun b!4881261 () Bool)

(assert (=> b!4881261 (= e!3050592 (and tp!1373208 (inv!72049 (tag!8920 (h!62499 (t!364821 rulesArg!165)))) (inv!72055 (transformation!8056 (h!62499 (t!364821 rulesArg!165)))) e!3050591))))

(declare-fun b!4881260 () Bool)

(declare-fun e!3050589 () Bool)

(declare-fun tp!1373210 () Bool)

(assert (=> b!4881260 (= e!3050589 (and e!3050592 tp!1373210))))

(assert (=> b!4881202 (= tp!1373199 e!3050589)))

(assert (= b!4881261 b!4881262))

(assert (= b!4881260 b!4881261))

(assert (= (and b!4881202 ((_ is Cons!56051) (t!364821 rulesArg!165))) b!4881260))

(declare-fun m!5885588 () Bool)

(assert (=> b!4881261 m!5885588))

(declare-fun m!5885590 () Bool)

(assert (=> b!4881261 m!5885590))

(declare-fun e!3050598 () Bool)

(declare-fun b!4881271 () Bool)

(declare-fun tp!1373219 () Bool)

(declare-fun tp!1373218 () Bool)

(assert (=> b!4881271 (= e!3050598 (and (inv!72053 (left!40722 (c!830273 input!1236))) tp!1373218 (inv!72053 (right!41052 (c!830273 input!1236))) tp!1373219))))

(declare-fun b!4881273 () Bool)

(declare-fun e!3050597 () Bool)

(declare-fun tp!1373220 () Bool)

(assert (=> b!4881273 (= e!3050597 tp!1373220)))

(declare-fun b!4881272 () Bool)

(declare-fun inv!72058 (IArray!29309) Bool)

(assert (=> b!4881272 (= e!3050598 (and (inv!72058 (xs!17940 (c!830273 input!1236))) e!3050597))))

(assert (=> b!4881203 (= tp!1373196 (and (inv!72053 (c!830273 input!1236)) e!3050598))))

(assert (= (and b!4881203 ((_ is Node!14624) (c!830273 input!1236))) b!4881271))

(assert (= b!4881272 b!4881273))

(assert (= (and b!4881203 ((_ is Leaf!24369) (c!830273 input!1236))) b!4881272))

(declare-fun m!5885592 () Bool)

(assert (=> b!4881271 m!5885592))

(declare-fun m!5885594 () Bool)

(assert (=> b!4881271 m!5885594))

(declare-fun m!5885596 () Bool)

(assert (=> b!4881272 m!5885596))

(assert (=> b!4881203 m!5885536))

(declare-fun e!3050601 () Bool)

(assert (=> b!4881208 (= tp!1373195 e!3050601)))

(declare-fun b!4881286 () Bool)

(declare-fun tp!1373232 () Bool)

(assert (=> b!4881286 (= e!3050601 tp!1373232)))

(declare-fun b!4881284 () Bool)

(declare-fun tp_is_empty!35701 () Bool)

(assert (=> b!4881284 (= e!3050601 tp_is_empty!35701)))

(declare-fun b!4881287 () Bool)

(declare-fun tp!1373235 () Bool)

(declare-fun tp!1373234 () Bool)

(assert (=> b!4881287 (= e!3050601 (and tp!1373235 tp!1373234))))

(declare-fun b!4881285 () Bool)

(declare-fun tp!1373231 () Bool)

(declare-fun tp!1373233 () Bool)

(assert (=> b!4881285 (= e!3050601 (and tp!1373231 tp!1373233))))

(assert (= (and b!4881208 ((_ is ElementMatch!13131) (regex!8056 (h!62499 rulesArg!165)))) b!4881284))

(assert (= (and b!4881208 ((_ is Concat!21498) (regex!8056 (h!62499 rulesArg!165)))) b!4881285))

(assert (= (and b!4881208 ((_ is Star!13131) (regex!8056 (h!62499 rulesArg!165)))) b!4881286))

(assert (= (and b!4881208 ((_ is Union!13131) (regex!8056 (h!62499 rulesArg!165)))) b!4881287))

(check-sat (not b!4881272) (not b!4881285) b_and!343711 (not b_next!131667) (not b!4881236) (not b_next!131671) (not b!4881248) (not b!4881237) (not b!4881260) (not b!4881221) (not b!4881286) tp_is_empty!35701 b_and!343707 (not b!4881203) (not b!4881271) (not d!1568905) (not b_next!131665) (not b_next!131669) (not b!4881219) (not d!1568891) (not b!4881246) (not d!1568895) b_and!343709 (not b!4881230) (not d!1568899) (not b!4881251) (not b!4881287) (not b!4881261) (not b!4881220) b_and!343713 (not d!1568893) (not d!1568889) (not b!4881273))
(check-sat b_and!343709 b_and!343711 (not b_next!131667) (not b_next!131671) b_and!343713 b_and!343707 (not b_next!131665) (not b_next!131669))
