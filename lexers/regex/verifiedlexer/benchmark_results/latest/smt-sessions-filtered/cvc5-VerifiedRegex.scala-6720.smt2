; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!351716 () Bool)

(assert start!351716)

(declare-fun b!3746424 () Bool)

(declare-fun b_free!99757 () Bool)

(declare-fun b_next!100461 () Bool)

(assert (=> b!3746424 (= b_free!99757 (not b_next!100461))))

(declare-fun tp!1142847 () Bool)

(declare-fun b_and!277991 () Bool)

(assert (=> b!3746424 (= tp!1142847 b_and!277991)))

(declare-fun b_free!99759 () Bool)

(declare-fun b_next!100463 () Bool)

(assert (=> b!3746424 (= b_free!99759 (not b_next!100463))))

(declare-fun tp!1142842 () Bool)

(declare-fun b_and!277993 () Bool)

(assert (=> b!3746424 (= tp!1142842 b_and!277993)))

(declare-fun b!3746423 () Bool)

(declare-fun b_free!99761 () Bool)

(declare-fun b_next!100465 () Bool)

(assert (=> b!3746423 (= b_free!99761 (not b_next!100465))))

(declare-fun tp!1142848 () Bool)

(declare-fun b_and!277995 () Bool)

(assert (=> b!3746423 (= tp!1142848 b_and!277995)))

(declare-fun b_free!99763 () Bool)

(declare-fun b_next!100467 () Bool)

(assert (=> b!3746423 (= b_free!99763 (not b_next!100467))))

(declare-fun tp!1142843 () Bool)

(declare-fun b_and!277997 () Bool)

(assert (=> b!3746423 (= tp!1142843 b_and!277997)))

(declare-fun b!3746419 () Bool)

(declare-fun b_free!99765 () Bool)

(declare-fun b_next!100469 () Bool)

(assert (=> b!3746419 (= b_free!99765 (not b_next!100469))))

(declare-fun tp!1142845 () Bool)

(declare-fun b_and!277999 () Bool)

(assert (=> b!3746419 (= tp!1142845 b_and!277999)))

(declare-fun b_free!99767 () Bool)

(declare-fun b_next!100471 () Bool)

(assert (=> b!3746419 (= b_free!99767 (not b_next!100471))))

(declare-fun tp!1142846 () Bool)

(declare-fun b_and!278001 () Bool)

(assert (=> b!3746419 (= tp!1142846 b_and!278001)))

(declare-fun b!3746436 () Bool)

(declare-fun e!2316624 () Bool)

(assert (=> b!3746436 (= e!2316624 true)))

(declare-fun b!3746435 () Bool)

(declare-fun e!2316623 () Bool)

(assert (=> b!3746435 (= e!2316623 e!2316624)))

(declare-fun b!3746428 () Bool)

(assert (=> b!3746428 e!2316623))

(assert (= b!3746435 b!3746436))

(assert (= b!3746428 b!3746435))

(declare-fun lambda!125178 () Int)

(declare-fun order!21753 () Int)

(declare-fun order!21751 () Int)

(declare-datatypes ((List!39939 0))(
  ( (Nil!39815) (Cons!39815 (h!45235 (_ BitVec 16)) (t!302622 List!39939)) )
))
(declare-datatypes ((TokenValue!6303 0))(
  ( (FloatLiteralValue!12606 (text!44566 List!39939)) (TokenValueExt!6302 (__x!24823 Int)) (Broken!31515 (value!193641 List!39939)) (Object!6426) (End!6303) (Def!6303) (Underscore!6303) (Match!6303) (Else!6303) (Error!6303) (Case!6303) (If!6303) (Extends!6303) (Abstract!6303) (Class!6303) (Val!6303) (DelimiterValue!12606 (del!6363 List!39939)) (KeywordValue!6309 (value!193642 List!39939)) (CommentValue!12606 (value!193643 List!39939)) (WhitespaceValue!12606 (value!193644 List!39939)) (IndentationValue!6303 (value!193645 List!39939)) (String!45142) (Int32!6303) (Broken!31516 (value!193646 List!39939)) (Boolean!6304) (Unit!57650) (OperatorValue!6306 (op!6363 List!39939)) (IdentifierValue!12606 (value!193647 List!39939)) (IdentifierValue!12607 (value!193648 List!39939)) (WhitespaceValue!12607 (value!193649 List!39939)) (True!12606) (False!12606) (Broken!31517 (value!193650 List!39939)) (Broken!31518 (value!193651 List!39939)) (True!12607) (RightBrace!6303) (RightBracket!6303) (Colon!6303) (Null!6303) (Comma!6303) (LeftBracket!6303) (False!12607) (LeftBrace!6303) (ImaginaryLiteralValue!6303 (text!44567 List!39939)) (StringLiteralValue!18909 (value!193652 List!39939)) (EOFValue!6303 (value!193653 List!39939)) (IdentValue!6303 (value!193654 List!39939)) (DelimiterValue!12607 (value!193655 List!39939)) (DedentValue!6303 (value!193656 List!39939)) (NewLineValue!6303 (value!193657 List!39939)) (IntegerValue!18909 (value!193658 (_ BitVec 32)) (text!44568 List!39939)) (IntegerValue!18910 (value!193659 Int) (text!44569 List!39939)) (Times!6303) (Or!6303) (Equal!6303) (Minus!6303) (Broken!31519 (value!193660 List!39939)) (And!6303) (Div!6303) (LessEqual!6303) (Mod!6303) (Concat!17281) (Not!6303) (Plus!6303) (SpaceValue!6303 (value!193661 List!39939)) (IntegerValue!18911 (value!193662 Int) (text!44570 List!39939)) (StringLiteralValue!18910 (text!44571 List!39939)) (FloatLiteralValue!12607 (text!44572 List!39939)) (BytesLiteralValue!6303 (value!193663 List!39939)) (CommentValue!12607 (value!193664 List!39939)) (StringLiteralValue!18911 (value!193665 List!39939)) (ErrorTokenValue!6303 (msg!6364 List!39939)) )
))
(declare-datatypes ((C!22142 0))(
  ( (C!22143 (val!13119 Int)) )
))
(declare-datatypes ((List!39940 0))(
  ( (Nil!39816) (Cons!39816 (h!45236 C!22142) (t!302623 List!39940)) )
))
(declare-datatypes ((IArray!24345 0))(
  ( (IArray!24346 (innerList!12230 List!39940)) )
))
(declare-datatypes ((Conc!12170 0))(
  ( (Node!12170 (left!30844 Conc!12170) (right!31174 Conc!12170) (csize!24570 Int) (cheight!12381 Int)) (Leaf!18891 (xs!15372 IArray!24345) (csize!24571 Int)) (Empty!12170) )
))
(declare-datatypes ((BalanceConc!23954 0))(
  ( (BalanceConc!23955 (c!648826 Conc!12170)) )
))
(declare-datatypes ((TokenValueInjection!12034 0))(
  ( (TokenValueInjection!12035 (toValue!8421 Int) (toChars!8280 Int)) )
))
(declare-datatypes ((Regex!10978 0))(
  ( (ElementMatch!10978 (c!648827 C!22142)) (Concat!17282 (regOne!22468 Regex!10978) (regTwo!22468 Regex!10978)) (EmptyExpr!10978) (Star!10978 (reg!11307 Regex!10978)) (EmptyLang!10978) (Union!10978 (regOne!22469 Regex!10978) (regTwo!22469 Regex!10978)) )
))
(declare-datatypes ((String!45143 0))(
  ( (String!45144 (value!193666 String)) )
))
(declare-datatypes ((Rule!11946 0))(
  ( (Rule!11947 (regex!6073 Regex!10978) (tag!6933 String!45143) (isSeparator!6073 Bool) (transformation!6073 TokenValueInjection!12034)) )
))
(declare-fun rSep!170 () Rule!11946)

(declare-fun dynLambda!17219 (Int Int) Int)

(declare-fun dynLambda!17220 (Int Int) Int)

(assert (=> b!3746436 (< (dynLambda!17219 order!21751 (toValue!8421 (transformation!6073 rSep!170))) (dynLambda!17220 order!21753 lambda!125178))))

(declare-fun order!21755 () Int)

(declare-fun dynLambda!17221 (Int Int) Int)

(assert (=> b!3746436 (< (dynLambda!17221 order!21755 (toChars!8280 (transformation!6073 rSep!170))) (dynLambda!17220 order!21753 lambda!125178))))

(declare-fun b!3746415 () Bool)

(declare-fun res!1518565 () Bool)

(declare-fun e!2316618 () Bool)

(assert (=> b!3746415 (=> (not res!1518565) (not e!2316618))))

(declare-datatypes ((LexerInterface!5662 0))(
  ( (LexerInterfaceExt!5659 (__x!24824 Int)) (Lexer!5660) )
))
(declare-fun thiss!27193 () LexerInterface!5662)

(declare-datatypes ((List!39941 0))(
  ( (Nil!39817) (Cons!39817 (h!45237 Rule!11946) (t!302624 List!39941)) )
))
(declare-fun rules!4213 () List!39941)

(declare-fun rulesInvariant!5059 (LexerInterface!5662 List!39941) Bool)

(assert (=> b!3746415 (= res!1518565 (rulesInvariant!5059 thiss!27193 rules!4213))))

(declare-fun rNSep!170 () Rule!11946)

(declare-fun e!2316615 () Bool)

(declare-fun e!2316612 () Bool)

(declare-fun b!3746416 () Bool)

(declare-fun tp!1142841 () Bool)

(declare-fun inv!53340 (String!45143) Bool)

(declare-fun inv!53343 (TokenValueInjection!12034) Bool)

(assert (=> b!3746416 (= e!2316612 (and tp!1142841 (inv!53340 (tag!6933 rNSep!170)) (inv!53343 (transformation!6073 rNSep!170)) e!2316615))))

(declare-fun b!3746417 () Bool)

(declare-fun e!2316617 () Bool)

(declare-fun e!2316611 () Bool)

(declare-fun tp!1142850 () Bool)

(assert (=> b!3746417 (= e!2316611 (and tp!1142850 (inv!53340 (tag!6933 (h!45237 rules!4213))) (inv!53343 (transformation!6073 (h!45237 rules!4213))) e!2316617))))

(declare-fun b!3746418 () Bool)

(declare-fun e!2316616 () Bool)

(assert (=> b!3746418 (= e!2316618 e!2316616)))

(declare-fun res!1518564 () Bool)

(assert (=> b!3746418 (=> (not res!1518564) (not e!2316616))))

(declare-fun lt!1299502 () List!39940)

(declare-fun c!6920 () C!22142)

(declare-fun contains!8105 (List!39940 C!22142) Bool)

(assert (=> b!3746418 (= res!1518564 (contains!8105 lt!1299502 c!6920))))

(declare-fun usedCharacters!1241 (Regex!10978) List!39940)

(assert (=> b!3746418 (= lt!1299502 (usedCharacters!1241 (regex!6073 rNSep!170)))))

(assert (=> b!3746419 (= e!2316617 (and tp!1142845 tp!1142846))))

(declare-fun b!3746420 () Bool)

(declare-fun res!1518562 () Bool)

(assert (=> b!3746420 (=> (not res!1518562) (not e!2316616))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!946 (Rule!11946 List!39941) Bool)

(assert (=> b!3746420 (= res!1518562 (ruleDisjointCharsFromAllFromOtherType!946 rNSep!170 rules!4213))))

(declare-fun b!3746421 () Bool)

(declare-fun e!2316608 () Bool)

(declare-fun tp!1142844 () Bool)

(assert (=> b!3746421 (= e!2316608 (and e!2316611 tp!1142844))))

(declare-fun b!3746422 () Bool)

(declare-fun res!1518561 () Bool)

(assert (=> b!3746422 (=> (not res!1518561) (not e!2316616))))

(assert (=> b!3746422 (= res!1518561 (and (not (isSeparator!6073 rNSep!170)) (isSeparator!6073 rSep!170)))))

(declare-fun e!2316607 () Bool)

(assert (=> b!3746423 (= e!2316607 (and tp!1142848 tp!1142843))))

(declare-fun res!1518563 () Bool)

(assert (=> start!351716 (=> (not res!1518563) (not e!2316618))))

(assert (=> start!351716 (= res!1518563 (is-Lexer!5660 thiss!27193))))

(assert (=> start!351716 e!2316618))

(assert (=> start!351716 e!2316612))

(assert (=> start!351716 e!2316608))

(assert (=> start!351716 true))

(declare-fun tp_is_empty!18971 () Bool)

(assert (=> start!351716 tp_is_empty!18971))

(declare-fun e!2316610 () Bool)

(assert (=> start!351716 e!2316610))

(assert (=> b!3746424 (= e!2316615 (and tp!1142847 tp!1142842))))

(declare-fun b!3746425 () Bool)

(declare-fun res!1518566 () Bool)

(assert (=> b!3746425 (=> (not res!1518566) (not e!2316618))))

(declare-fun contains!8106 (List!39941 Rule!11946) Bool)

(assert (=> b!3746425 (= res!1518566 (contains!8106 rules!4213 rSep!170))))

(declare-fun tp!1142849 () Bool)

(declare-fun b!3746426 () Bool)

(assert (=> b!3746426 (= e!2316610 (and tp!1142849 (inv!53340 (tag!6933 rSep!170)) (inv!53343 (transformation!6073 rSep!170)) e!2316607))))

(declare-fun b!3746427 () Bool)

(declare-fun res!1518567 () Bool)

(assert (=> b!3746427 (=> (not res!1518567) (not e!2316616))))

(assert (=> b!3746427 (= res!1518567 (and (is-Cons!39817 rules!4213) (= (h!45237 rules!4213) rSep!170)))))

(assert (=> b!3746428 (= e!2316616 (contains!8105 (usedCharacters!1241 (regex!6073 rSep!170)) c!6920))))

(declare-datatypes ((Unit!57651 0))(
  ( (Unit!57652) )
))
(declare-fun lt!1299501 () Unit!57651)

(declare-fun forallContained!1470 (List!39940 Int C!22142) Unit!57651)

(assert (=> b!3746428 (= lt!1299501 (forallContained!1470 lt!1299502 lambda!125178 c!6920))))

(assert (= (and start!351716 res!1518563) b!3746415))

(assert (= (and b!3746415 res!1518565) b!3746425))

(assert (= (and b!3746425 res!1518566) b!3746418))

(assert (= (and b!3746418 res!1518564) b!3746422))

(assert (= (and b!3746422 res!1518561) b!3746420))

(assert (= (and b!3746420 res!1518562) b!3746427))

(assert (= (and b!3746427 res!1518567) b!3746428))

(assert (= b!3746416 b!3746424))

(assert (= start!351716 b!3746416))

(assert (= b!3746417 b!3746419))

(assert (= b!3746421 b!3746417))

(assert (= (and start!351716 (is-Cons!39817 rules!4213)) b!3746421))

(assert (= b!3746426 b!3746423))

(assert (= start!351716 b!3746426))

(declare-fun m!4238973 () Bool)

(assert (=> b!3746420 m!4238973))

(declare-fun m!4238975 () Bool)

(assert (=> b!3746417 m!4238975))

(declare-fun m!4238977 () Bool)

(assert (=> b!3746417 m!4238977))

(declare-fun m!4238979 () Bool)

(assert (=> b!3746428 m!4238979))

(assert (=> b!3746428 m!4238979))

(declare-fun m!4238981 () Bool)

(assert (=> b!3746428 m!4238981))

(declare-fun m!4238983 () Bool)

(assert (=> b!3746428 m!4238983))

(declare-fun m!4238985 () Bool)

(assert (=> b!3746416 m!4238985))

(declare-fun m!4238987 () Bool)

(assert (=> b!3746416 m!4238987))

(declare-fun m!4238989 () Bool)

(assert (=> b!3746418 m!4238989))

(declare-fun m!4238991 () Bool)

(assert (=> b!3746418 m!4238991))

(declare-fun m!4238993 () Bool)

(assert (=> b!3746426 m!4238993))

(declare-fun m!4238995 () Bool)

(assert (=> b!3746426 m!4238995))

(declare-fun m!4238997 () Bool)

(assert (=> b!3746425 m!4238997))

(declare-fun m!4238999 () Bool)

(assert (=> b!3746415 m!4238999))

(push 1)

(assert (not b_next!100469))

(assert b_and!277991)

(assert (not b_next!100461))

(assert (not b_next!100471))

(assert (not b_next!100465))

(assert b_and!277999)

(assert (not b_next!100467))

(assert (not b!3746416))

(assert (not b!3746418))

(assert (not b!3746415))

(assert (not b!3746421))

(assert (not b!3746420))

(assert b_and!277997)

(assert b_and!278001)

(assert (not b_next!100463))

(assert (not b!3746417))

(assert b_and!277993)

(assert b_and!277995)

(assert tp_is_empty!18971)

(assert (not b!3746428))

(assert (not b!3746425))

(assert (not b!3746426))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!100469))

(assert b_and!277991)

(assert (not b_next!100461))

(assert (not b_next!100471))

(assert (not b_next!100465))

(assert b_and!277999)

(assert (not b_next!100463))

(assert (not b_next!100467))

(assert b_and!277997)

(assert b_and!278001)

(assert b_and!277993)

(assert b_and!277995)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1093415 () Bool)

(declare-fun lt!1299511 () Bool)

(declare-fun content!5835 (List!39940) (Set C!22142))

(assert (=> d!1093415 (= lt!1299511 (set.member c!6920 (content!5835 lt!1299502)))))

(declare-fun e!2316671 () Bool)

(assert (=> d!1093415 (= lt!1299511 e!2316671)))

(declare-fun res!1518599 () Bool)

(assert (=> d!1093415 (=> (not res!1518599) (not e!2316671))))

(assert (=> d!1093415 (= res!1518599 (is-Cons!39816 lt!1299502))))

(assert (=> d!1093415 (= (contains!8105 lt!1299502 c!6920) lt!1299511)))

(declare-fun b!3746491 () Bool)

(declare-fun e!2316672 () Bool)

(assert (=> b!3746491 (= e!2316671 e!2316672)))

(declare-fun res!1518598 () Bool)

(assert (=> b!3746491 (=> res!1518598 e!2316672)))

(assert (=> b!3746491 (= res!1518598 (= (h!45236 lt!1299502) c!6920))))

(declare-fun b!3746492 () Bool)

(assert (=> b!3746492 (= e!2316672 (contains!8105 (t!302623 lt!1299502) c!6920))))

(assert (= (and d!1093415 res!1518599) b!3746491))

(assert (= (and b!3746491 (not res!1518598)) b!3746492))

(declare-fun m!4239029 () Bool)

(assert (=> d!1093415 m!4239029))

(declare-fun m!4239031 () Bool)

(assert (=> d!1093415 m!4239031))

(declare-fun m!4239033 () Bool)

(assert (=> b!3746492 m!4239033))

(assert (=> b!3746418 d!1093415))

(declare-fun b!3746509 () Bool)

(declare-fun e!2316684 () List!39940)

(declare-fun call!275093 () List!39940)

(assert (=> b!3746509 (= e!2316684 call!275093)))

(declare-fun bm!275088 () Bool)

(declare-fun call!275094 () List!39940)

(declare-fun call!275095 () List!39940)

(assert (=> bm!275088 (= call!275094 call!275095)))

(declare-fun b!3746510 () Bool)

(declare-fun e!2316682 () List!39940)

(declare-fun e!2316683 () List!39940)

(assert (=> b!3746510 (= e!2316682 e!2316683)))

(declare-fun c!648839 () Bool)

(assert (=> b!3746510 (= c!648839 (is-ElementMatch!10978 (regex!6073 rNSep!170)))))

(declare-fun b!3746511 () Bool)

(declare-fun e!2316681 () List!39940)

(assert (=> b!3746511 (= e!2316681 call!275095)))

(declare-fun b!3746512 () Bool)

(declare-fun c!648841 () Bool)

(assert (=> b!3746512 (= c!648841 (is-Star!10978 (regex!6073 rNSep!170)))))

(assert (=> b!3746512 (= e!2316683 e!2316681)))

(declare-fun bm!275089 () Bool)

(declare-fun call!275096 () List!39940)

(declare-fun ++!9886 (List!39940 List!39940) List!39940)

(assert (=> bm!275089 (= call!275093 (++!9886 call!275094 call!275096))))

(declare-fun b!3746514 () Bool)

(assert (=> b!3746514 (= e!2316682 Nil!39816)))

(declare-fun bm!275090 () Bool)

(declare-fun c!648840 () Bool)

(assert (=> bm!275090 (= call!275096 (usedCharacters!1241 (ite c!648840 (regTwo!22469 (regex!6073 rNSep!170)) (regTwo!22468 (regex!6073 rNSep!170)))))))

(declare-fun bm!275091 () Bool)

(assert (=> bm!275091 (= call!275095 (usedCharacters!1241 (ite c!648841 (reg!11307 (regex!6073 rNSep!170)) (ite c!648840 (regOne!22469 (regex!6073 rNSep!170)) (regOne!22468 (regex!6073 rNSep!170))))))))

(declare-fun b!3746515 () Bool)

(assert (=> b!3746515 (= e!2316681 e!2316684)))

(assert (=> b!3746515 (= c!648840 (is-Union!10978 (regex!6073 rNSep!170)))))

(declare-fun b!3746516 () Bool)

(assert (=> b!3746516 (= e!2316683 (Cons!39816 (c!648827 (regex!6073 rNSep!170)) Nil!39816))))

(declare-fun d!1093417 () Bool)

(declare-fun c!648838 () Bool)

(assert (=> d!1093417 (= c!648838 (or (is-EmptyExpr!10978 (regex!6073 rNSep!170)) (is-EmptyLang!10978 (regex!6073 rNSep!170))))))

(assert (=> d!1093417 (= (usedCharacters!1241 (regex!6073 rNSep!170)) e!2316682)))

(declare-fun b!3746513 () Bool)

(assert (=> b!3746513 (= e!2316684 call!275093)))

(assert (= (and d!1093417 c!648838) b!3746514))

(assert (= (and d!1093417 (not c!648838)) b!3746510))

(assert (= (and b!3746510 c!648839) b!3746516))

(assert (= (and b!3746510 (not c!648839)) b!3746512))

(assert (= (and b!3746512 c!648841) b!3746511))

(assert (= (and b!3746512 (not c!648841)) b!3746515))

(assert (= (and b!3746515 c!648840) b!3746509))

(assert (= (and b!3746515 (not c!648840)) b!3746513))

(assert (= (or b!3746509 b!3746513) bm!275088))

(assert (= (or b!3746509 b!3746513) bm!275090))

(assert (= (or b!3746509 b!3746513) bm!275089))

(assert (= (or b!3746511 bm!275088) bm!275091))

(declare-fun m!4239035 () Bool)

(assert (=> bm!275089 m!4239035))

(declare-fun m!4239037 () Bool)

(assert (=> bm!275090 m!4239037))

(declare-fun m!4239039 () Bool)

(assert (=> bm!275091 m!4239039))

(assert (=> b!3746418 d!1093417))

(declare-fun d!1093419 () Bool)

(assert (=> d!1093419 (= (inv!53340 (tag!6933 (h!45237 rules!4213))) (= (mod (str.len (value!193666 (tag!6933 (h!45237 rules!4213)))) 2) 0))))

(assert (=> b!3746417 d!1093419))

(declare-fun d!1093421 () Bool)

(declare-fun res!1518604 () Bool)

(declare-fun e!2316687 () Bool)

(assert (=> d!1093421 (=> (not res!1518604) (not e!2316687))))

(declare-fun semiInverseModEq!2600 (Int Int) Bool)

(assert (=> d!1093421 (= res!1518604 (semiInverseModEq!2600 (toChars!8280 (transformation!6073 (h!45237 rules!4213))) (toValue!8421 (transformation!6073 (h!45237 rules!4213)))))))

(assert (=> d!1093421 (= (inv!53343 (transformation!6073 (h!45237 rules!4213))) e!2316687)))

(declare-fun b!3746519 () Bool)

(declare-fun equivClasses!2499 (Int Int) Bool)

(assert (=> b!3746519 (= e!2316687 (equivClasses!2499 (toChars!8280 (transformation!6073 (h!45237 rules!4213))) (toValue!8421 (transformation!6073 (h!45237 rules!4213)))))))

(assert (= (and d!1093421 res!1518604) b!3746519))

(declare-fun m!4239041 () Bool)

(assert (=> d!1093421 m!4239041))

(declare-fun m!4239043 () Bool)

(assert (=> b!3746519 m!4239043))

(assert (=> b!3746417 d!1093421))

(declare-fun d!1093423 () Bool)

(declare-fun lt!1299512 () Bool)

(assert (=> d!1093423 (= lt!1299512 (set.member c!6920 (content!5835 (usedCharacters!1241 (regex!6073 rSep!170)))))))

(declare-fun e!2316688 () Bool)

(assert (=> d!1093423 (= lt!1299512 e!2316688)))

(declare-fun res!1518606 () Bool)

(assert (=> d!1093423 (=> (not res!1518606) (not e!2316688))))

(assert (=> d!1093423 (= res!1518606 (is-Cons!39816 (usedCharacters!1241 (regex!6073 rSep!170))))))

(assert (=> d!1093423 (= (contains!8105 (usedCharacters!1241 (regex!6073 rSep!170)) c!6920) lt!1299512)))

(declare-fun b!3746520 () Bool)

(declare-fun e!2316689 () Bool)

(assert (=> b!3746520 (= e!2316688 e!2316689)))

(declare-fun res!1518605 () Bool)

(assert (=> b!3746520 (=> res!1518605 e!2316689)))

(assert (=> b!3746520 (= res!1518605 (= (h!45236 (usedCharacters!1241 (regex!6073 rSep!170))) c!6920))))

(declare-fun b!3746521 () Bool)

(assert (=> b!3746521 (= e!2316689 (contains!8105 (t!302623 (usedCharacters!1241 (regex!6073 rSep!170))) c!6920))))

(assert (= (and d!1093423 res!1518606) b!3746520))

(assert (= (and b!3746520 (not res!1518605)) b!3746521))

(assert (=> d!1093423 m!4238979))

(declare-fun m!4239045 () Bool)

(assert (=> d!1093423 m!4239045))

(declare-fun m!4239047 () Bool)

(assert (=> d!1093423 m!4239047))

(declare-fun m!4239049 () Bool)

(assert (=> b!3746521 m!4239049))

(assert (=> b!3746428 d!1093423))

(declare-fun b!3746522 () Bool)

(declare-fun e!2316693 () List!39940)

(declare-fun call!275097 () List!39940)

(assert (=> b!3746522 (= e!2316693 call!275097)))

(declare-fun bm!275092 () Bool)

(declare-fun call!275098 () List!39940)

(declare-fun call!275099 () List!39940)

(assert (=> bm!275092 (= call!275098 call!275099)))

(declare-fun b!3746523 () Bool)

(declare-fun e!2316691 () List!39940)

(declare-fun e!2316692 () List!39940)

(assert (=> b!3746523 (= e!2316691 e!2316692)))

(declare-fun c!648843 () Bool)

(assert (=> b!3746523 (= c!648843 (is-ElementMatch!10978 (regex!6073 rSep!170)))))

(declare-fun b!3746524 () Bool)

(declare-fun e!2316690 () List!39940)

(assert (=> b!3746524 (= e!2316690 call!275099)))

(declare-fun b!3746525 () Bool)

(declare-fun c!648845 () Bool)

(assert (=> b!3746525 (= c!648845 (is-Star!10978 (regex!6073 rSep!170)))))

(assert (=> b!3746525 (= e!2316692 e!2316690)))

(declare-fun bm!275093 () Bool)

(declare-fun call!275100 () List!39940)

(assert (=> bm!275093 (= call!275097 (++!9886 call!275098 call!275100))))

(declare-fun b!3746527 () Bool)

(assert (=> b!3746527 (= e!2316691 Nil!39816)))

(declare-fun bm!275094 () Bool)

(declare-fun c!648844 () Bool)

(assert (=> bm!275094 (= call!275100 (usedCharacters!1241 (ite c!648844 (regTwo!22469 (regex!6073 rSep!170)) (regTwo!22468 (regex!6073 rSep!170)))))))

(declare-fun bm!275095 () Bool)

(assert (=> bm!275095 (= call!275099 (usedCharacters!1241 (ite c!648845 (reg!11307 (regex!6073 rSep!170)) (ite c!648844 (regOne!22469 (regex!6073 rSep!170)) (regOne!22468 (regex!6073 rSep!170))))))))

(declare-fun b!3746528 () Bool)

(assert (=> b!3746528 (= e!2316690 e!2316693)))

(assert (=> b!3746528 (= c!648844 (is-Union!10978 (regex!6073 rSep!170)))))

(declare-fun b!3746529 () Bool)

(assert (=> b!3746529 (= e!2316692 (Cons!39816 (c!648827 (regex!6073 rSep!170)) Nil!39816))))

(declare-fun d!1093425 () Bool)

(declare-fun c!648842 () Bool)

(assert (=> d!1093425 (= c!648842 (or (is-EmptyExpr!10978 (regex!6073 rSep!170)) (is-EmptyLang!10978 (regex!6073 rSep!170))))))

(assert (=> d!1093425 (= (usedCharacters!1241 (regex!6073 rSep!170)) e!2316691)))

(declare-fun b!3746526 () Bool)

(assert (=> b!3746526 (= e!2316693 call!275097)))

(assert (= (and d!1093425 c!648842) b!3746527))

(assert (= (and d!1093425 (not c!648842)) b!3746523))

(assert (= (and b!3746523 c!648843) b!3746529))

(assert (= (and b!3746523 (not c!648843)) b!3746525))

(assert (= (and b!3746525 c!648845) b!3746524))

(assert (= (and b!3746525 (not c!648845)) b!3746528))

(assert (= (and b!3746528 c!648844) b!3746522))

(assert (= (and b!3746528 (not c!648844)) b!3746526))

(assert (= (or b!3746522 b!3746526) bm!275092))

(assert (= (or b!3746522 b!3746526) bm!275094))

(assert (= (or b!3746522 b!3746526) bm!275093))

(assert (= (or b!3746524 bm!275092) bm!275095))

(declare-fun m!4239051 () Bool)

(assert (=> bm!275093 m!4239051))

(declare-fun m!4239053 () Bool)

(assert (=> bm!275094 m!4239053))

(declare-fun m!4239055 () Bool)

(assert (=> bm!275095 m!4239055))

(assert (=> b!3746428 d!1093425))

(declare-fun d!1093427 () Bool)

(declare-fun dynLambda!17225 (Int C!22142) Bool)

(assert (=> d!1093427 (dynLambda!17225 lambda!125178 c!6920)))

(declare-fun lt!1299515 () Unit!57651)

(declare-fun choose!22244 (List!39940 Int C!22142) Unit!57651)

(assert (=> d!1093427 (= lt!1299515 (choose!22244 lt!1299502 lambda!125178 c!6920))))

(declare-fun e!2316696 () Bool)

(assert (=> d!1093427 e!2316696))

(declare-fun res!1518609 () Bool)

(assert (=> d!1093427 (=> (not res!1518609) (not e!2316696))))

(declare-fun forall!8190 (List!39940 Int) Bool)

(assert (=> d!1093427 (= res!1518609 (forall!8190 lt!1299502 lambda!125178))))

(assert (=> d!1093427 (= (forallContained!1470 lt!1299502 lambda!125178 c!6920) lt!1299515)))

(declare-fun b!3746532 () Bool)

(assert (=> b!3746532 (= e!2316696 (contains!8105 lt!1299502 c!6920))))

(assert (= (and d!1093427 res!1518609) b!3746532))

(declare-fun b_lambda!109859 () Bool)

(assert (=> (not b_lambda!109859) (not d!1093427)))

(declare-fun m!4239057 () Bool)

(assert (=> d!1093427 m!4239057))

(declare-fun m!4239059 () Bool)

(assert (=> d!1093427 m!4239059))

(declare-fun m!4239061 () Bool)

(assert (=> d!1093427 m!4239061))

(assert (=> b!3746532 m!4238989))

(assert (=> b!3746428 d!1093427))

(declare-fun d!1093429 () Bool)

(declare-fun res!1518612 () Bool)

(declare-fun e!2316699 () Bool)

(assert (=> d!1093429 (=> (not res!1518612) (not e!2316699))))

(declare-fun rulesValid!2356 (LexerInterface!5662 List!39941) Bool)

(assert (=> d!1093429 (= res!1518612 (rulesValid!2356 thiss!27193 rules!4213))))

(assert (=> d!1093429 (= (rulesInvariant!5059 thiss!27193 rules!4213) e!2316699)))

(declare-fun b!3746535 () Bool)

(declare-datatypes ((List!39945 0))(
  ( (Nil!39821) (Cons!39821 (h!45241 String!45143) (t!302628 List!39945)) )
))
(declare-fun noDuplicateTag!2357 (LexerInterface!5662 List!39941 List!39945) Bool)

(assert (=> b!3746535 (= e!2316699 (noDuplicateTag!2357 thiss!27193 rules!4213 Nil!39821))))

(assert (= (and d!1093429 res!1518612) b!3746535))

(declare-fun m!4239063 () Bool)

(assert (=> d!1093429 m!4239063))

(declare-fun m!4239065 () Bool)

(assert (=> b!3746535 m!4239065))

(assert (=> b!3746415 d!1093429))

(declare-fun d!1093431 () Bool)

(assert (=> d!1093431 (= (inv!53340 (tag!6933 rSep!170)) (= (mod (str.len (value!193666 (tag!6933 rSep!170))) 2) 0))))

(assert (=> b!3746426 d!1093431))

(declare-fun d!1093433 () Bool)

(declare-fun res!1518613 () Bool)

(declare-fun e!2316700 () Bool)

(assert (=> d!1093433 (=> (not res!1518613) (not e!2316700))))

(assert (=> d!1093433 (= res!1518613 (semiInverseModEq!2600 (toChars!8280 (transformation!6073 rSep!170)) (toValue!8421 (transformation!6073 rSep!170))))))

(assert (=> d!1093433 (= (inv!53343 (transformation!6073 rSep!170)) e!2316700)))

(declare-fun b!3746536 () Bool)

(assert (=> b!3746536 (= e!2316700 (equivClasses!2499 (toChars!8280 (transformation!6073 rSep!170)) (toValue!8421 (transformation!6073 rSep!170))))))

(assert (= (and d!1093433 res!1518613) b!3746536))

(declare-fun m!4239067 () Bool)

(assert (=> d!1093433 m!4239067))

(declare-fun m!4239069 () Bool)

(assert (=> b!3746536 m!4239069))

(assert (=> b!3746426 d!1093433))

(declare-fun d!1093435 () Bool)

(declare-fun lt!1299518 () Bool)

(declare-fun content!5836 (List!39941) (Set Rule!11946))

(assert (=> d!1093435 (= lt!1299518 (set.member rSep!170 (content!5836 rules!4213)))))

(declare-fun e!2316705 () Bool)

(assert (=> d!1093435 (= lt!1299518 e!2316705)))

(declare-fun res!1518618 () Bool)

(assert (=> d!1093435 (=> (not res!1518618) (not e!2316705))))

(assert (=> d!1093435 (= res!1518618 (is-Cons!39817 rules!4213))))

(assert (=> d!1093435 (= (contains!8106 rules!4213 rSep!170) lt!1299518)))

(declare-fun b!3746541 () Bool)

(declare-fun e!2316706 () Bool)

(assert (=> b!3746541 (= e!2316705 e!2316706)))

(declare-fun res!1518619 () Bool)

(assert (=> b!3746541 (=> res!1518619 e!2316706)))

(assert (=> b!3746541 (= res!1518619 (= (h!45237 rules!4213) rSep!170))))

(declare-fun b!3746542 () Bool)

(assert (=> b!3746542 (= e!2316706 (contains!8106 (t!302624 rules!4213) rSep!170))))

(assert (= (and d!1093435 res!1518618) b!3746541))

(assert (= (and b!3746541 (not res!1518619)) b!3746542))

(declare-fun m!4239071 () Bool)

(assert (=> d!1093435 m!4239071))

(declare-fun m!4239073 () Bool)

(assert (=> d!1093435 m!4239073))

(declare-fun m!4239075 () Bool)

(assert (=> b!3746542 m!4239075))

(assert (=> b!3746425 d!1093435))

(declare-fun b!3746551 () Bool)

(declare-fun e!2316715 () Bool)

(declare-fun call!275103 () Bool)

(assert (=> b!3746551 (= e!2316715 call!275103)))

(declare-fun b!3746552 () Bool)

(declare-fun e!2316714 () Bool)

(assert (=> b!3746552 (= e!2316714 e!2316715)))

(declare-fun res!1518625 () Bool)

(declare-fun rulesUseDisjointChars!379 (Rule!11946 Rule!11946) Bool)

(assert (=> b!3746552 (= res!1518625 (rulesUseDisjointChars!379 rNSep!170 (h!45237 rules!4213)))))

(assert (=> b!3746552 (=> (not res!1518625) (not e!2316715))))

(declare-fun b!3746553 () Bool)

(declare-fun e!2316713 () Bool)

(assert (=> b!3746553 (= e!2316713 call!275103)))

(declare-fun bm!275098 () Bool)

(assert (=> bm!275098 (= call!275103 (ruleDisjointCharsFromAllFromOtherType!946 rNSep!170 (t!302624 rules!4213)))))

(declare-fun b!3746554 () Bool)

(assert (=> b!3746554 (= e!2316714 e!2316713)))

(declare-fun res!1518624 () Bool)

(assert (=> b!3746554 (= res!1518624 (not (is-Cons!39817 rules!4213)))))

(assert (=> b!3746554 (=> res!1518624 e!2316713)))

(declare-fun d!1093437 () Bool)

(declare-fun c!648848 () Bool)

(assert (=> d!1093437 (= c!648848 (and (is-Cons!39817 rules!4213) (not (= (isSeparator!6073 (h!45237 rules!4213)) (isSeparator!6073 rNSep!170)))))))

(assert (=> d!1093437 (= (ruleDisjointCharsFromAllFromOtherType!946 rNSep!170 rules!4213) e!2316714)))

(assert (= (and d!1093437 c!648848) b!3746552))

(assert (= (and d!1093437 (not c!648848)) b!3746554))

(assert (= (and b!3746552 res!1518625) b!3746551))

(assert (= (and b!3746554 (not res!1518624)) b!3746553))

(assert (= (or b!3746551 b!3746553) bm!275098))

(declare-fun m!4239077 () Bool)

(assert (=> b!3746552 m!4239077))

(declare-fun m!4239079 () Bool)

(assert (=> bm!275098 m!4239079))

(assert (=> b!3746420 d!1093437))

(declare-fun d!1093439 () Bool)

(assert (=> d!1093439 (= (inv!53340 (tag!6933 rNSep!170)) (= (mod (str.len (value!193666 (tag!6933 rNSep!170))) 2) 0))))

(assert (=> b!3746416 d!1093439))

(declare-fun d!1093441 () Bool)

(declare-fun res!1518626 () Bool)

(declare-fun e!2316716 () Bool)

(assert (=> d!1093441 (=> (not res!1518626) (not e!2316716))))

(assert (=> d!1093441 (= res!1518626 (semiInverseModEq!2600 (toChars!8280 (transformation!6073 rNSep!170)) (toValue!8421 (transformation!6073 rNSep!170))))))

(assert (=> d!1093441 (= (inv!53343 (transformation!6073 rNSep!170)) e!2316716)))

(declare-fun b!3746555 () Bool)

(assert (=> b!3746555 (= e!2316716 (equivClasses!2499 (toChars!8280 (transformation!6073 rNSep!170)) (toValue!8421 (transformation!6073 rNSep!170))))))

(assert (= (and d!1093441 res!1518626) b!3746555))

(declare-fun m!4239081 () Bool)

(assert (=> d!1093441 m!4239081))

(declare-fun m!4239083 () Bool)

(assert (=> b!3746555 m!4239083))

(assert (=> b!3746416 d!1093441))

(declare-fun b!3746566 () Bool)

(declare-fun e!2316719 () Bool)

(assert (=> b!3746566 (= e!2316719 tp_is_empty!18971)))

(declare-fun b!3746568 () Bool)

(declare-fun tp!1142894 () Bool)

(assert (=> b!3746568 (= e!2316719 tp!1142894)))

(declare-fun b!3746569 () Bool)

(declare-fun tp!1142893 () Bool)

(declare-fun tp!1142891 () Bool)

(assert (=> b!3746569 (= e!2316719 (and tp!1142893 tp!1142891))))

(assert (=> b!3746417 (= tp!1142850 e!2316719)))

(declare-fun b!3746567 () Bool)

(declare-fun tp!1142895 () Bool)

(declare-fun tp!1142892 () Bool)

(assert (=> b!3746567 (= e!2316719 (and tp!1142895 tp!1142892))))

(assert (= (and b!3746417 (is-ElementMatch!10978 (regex!6073 (h!45237 rules!4213)))) b!3746566))

(assert (= (and b!3746417 (is-Concat!17282 (regex!6073 (h!45237 rules!4213)))) b!3746567))

(assert (= (and b!3746417 (is-Star!10978 (regex!6073 (h!45237 rules!4213)))) b!3746568))

(assert (= (and b!3746417 (is-Union!10978 (regex!6073 (h!45237 rules!4213)))) b!3746569))

(declare-fun b!3746570 () Bool)

(declare-fun e!2316720 () Bool)

(assert (=> b!3746570 (= e!2316720 tp_is_empty!18971)))

(declare-fun b!3746572 () Bool)

(declare-fun tp!1142899 () Bool)

(assert (=> b!3746572 (= e!2316720 tp!1142899)))

(declare-fun b!3746573 () Bool)

(declare-fun tp!1142898 () Bool)

(declare-fun tp!1142896 () Bool)

(assert (=> b!3746573 (= e!2316720 (and tp!1142898 tp!1142896))))

(assert (=> b!3746426 (= tp!1142849 e!2316720)))

(declare-fun b!3746571 () Bool)

(declare-fun tp!1142900 () Bool)

(declare-fun tp!1142897 () Bool)

(assert (=> b!3746571 (= e!2316720 (and tp!1142900 tp!1142897))))

(assert (= (and b!3746426 (is-ElementMatch!10978 (regex!6073 rSep!170))) b!3746570))

(assert (= (and b!3746426 (is-Concat!17282 (regex!6073 rSep!170))) b!3746571))

(assert (= (and b!3746426 (is-Star!10978 (regex!6073 rSep!170))) b!3746572))

(assert (= (and b!3746426 (is-Union!10978 (regex!6073 rSep!170))) b!3746573))

(declare-fun b!3746584 () Bool)

(declare-fun b_free!99781 () Bool)

(declare-fun b_next!100485 () Bool)

(assert (=> b!3746584 (= b_free!99781 (not b_next!100485))))

(declare-fun tp!1142910 () Bool)

(declare-fun b_and!278015 () Bool)

(assert (=> b!3746584 (= tp!1142910 b_and!278015)))

(declare-fun b_free!99783 () Bool)

(declare-fun b_next!100487 () Bool)

(assert (=> b!3746584 (= b_free!99783 (not b_next!100487))))

(declare-fun tp!1142912 () Bool)

(declare-fun b_and!278017 () Bool)

(assert (=> b!3746584 (= tp!1142912 b_and!278017)))

(declare-fun e!2316731 () Bool)

(assert (=> b!3746584 (= e!2316731 (and tp!1142910 tp!1142912))))

(declare-fun e!2316729 () Bool)

(declare-fun b!3746583 () Bool)

(declare-fun tp!1142911 () Bool)

(assert (=> b!3746583 (= e!2316729 (and tp!1142911 (inv!53340 (tag!6933 (h!45237 (t!302624 rules!4213)))) (inv!53343 (transformation!6073 (h!45237 (t!302624 rules!4213)))) e!2316731))))

(declare-fun b!3746582 () Bool)

(declare-fun e!2316732 () Bool)

(declare-fun tp!1142909 () Bool)

(assert (=> b!3746582 (= e!2316732 (and e!2316729 tp!1142909))))

(assert (=> b!3746421 (= tp!1142844 e!2316732)))

(assert (= b!3746583 b!3746584))

(assert (= b!3746582 b!3746583))

(assert (= (and b!3746421 (is-Cons!39817 (t!302624 rules!4213))) b!3746582))

(declare-fun m!4239085 () Bool)

(assert (=> b!3746583 m!4239085))

(declare-fun m!4239087 () Bool)

(assert (=> b!3746583 m!4239087))

(declare-fun b!3746585 () Bool)

(declare-fun e!2316733 () Bool)

(assert (=> b!3746585 (= e!2316733 tp_is_empty!18971)))

(declare-fun b!3746587 () Bool)

(declare-fun tp!1142916 () Bool)

(assert (=> b!3746587 (= e!2316733 tp!1142916)))

(declare-fun b!3746588 () Bool)

(declare-fun tp!1142915 () Bool)

(declare-fun tp!1142913 () Bool)

(assert (=> b!3746588 (= e!2316733 (and tp!1142915 tp!1142913))))

(assert (=> b!3746416 (= tp!1142841 e!2316733)))

(declare-fun b!3746586 () Bool)

(declare-fun tp!1142917 () Bool)

(declare-fun tp!1142914 () Bool)

(assert (=> b!3746586 (= e!2316733 (and tp!1142917 tp!1142914))))

(assert (= (and b!3746416 (is-ElementMatch!10978 (regex!6073 rNSep!170))) b!3746585))

(assert (= (and b!3746416 (is-Concat!17282 (regex!6073 rNSep!170))) b!3746586))

(assert (= (and b!3746416 (is-Star!10978 (regex!6073 rNSep!170))) b!3746587))

(assert (= (and b!3746416 (is-Union!10978 (regex!6073 rNSep!170))) b!3746588))

(declare-fun b_lambda!109861 () Bool)

(assert (= b_lambda!109859 (or b!3746428 b_lambda!109861)))

(declare-fun bs!575318 () Bool)

(declare-fun d!1093443 () Bool)

(assert (= bs!575318 (and d!1093443 b!3746428)))

(assert (=> bs!575318 (= (dynLambda!17225 lambda!125178 c!6920) (not (contains!8105 (usedCharacters!1241 (regex!6073 rSep!170)) c!6920)))))

(assert (=> bs!575318 m!4238979))

(assert (=> bs!575318 m!4238979))

(assert (=> bs!575318 m!4238981))

(assert (=> d!1093427 d!1093443))

(push 1)

(assert (not b!3746532))

(assert (not b_next!100469))

(assert (not bm!275091))

(assert (not b_next!100471))

(assert (not bm!275098))

(assert (not d!1093421))

(assert (not b_next!100467))

(assert (not b!3746573))

(assert (not b!3746572))

(assert (not b!3746583))

(assert (not bm!275090))

(assert (not bm!275094))

(assert (not b!3746582))

(assert (not b!3746542))

(assert b_and!277991)

(assert (not bm!275093))

(assert (not b!3746521))

(assert (not b_next!100461))

(assert (not b!3746567))

(assert b_and!277997)

(assert b_and!278001)

(assert (not b_next!100465))

(assert (not d!1093433))

(assert (not b!3746535))

(assert (not bm!275095))

(assert (not b!3746587))

(assert b_and!277999)

(assert (not bm!275089))

(assert (not b_next!100487))

(assert (not b!3746569))

(assert (not b_lambda!109861))

(assert (not b!3746571))

(assert (not b!3746536))

(assert (not b_next!100485))

(assert b_and!278015)

(assert b_and!278017)

(assert (not b_next!100463))

(assert (not d!1093415))

(assert b_and!277993)

(assert b_and!277995)

(assert (not d!1093441))

(assert (not b!3746568))

(assert (not d!1093423))

(assert (not bs!575318))

(assert (not b!3746555))

(assert tp_is_empty!18971)

(assert (not d!1093427))

(assert (not b!3746519))

(assert (not d!1093435))

(assert (not b!3746588))

(assert (not b!3746586))

(assert (not d!1093429))

(assert (not b!3746552))

(assert (not b!3746492))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!100469))

(assert b_and!277991)

(assert (not b_next!100461))

(assert (not b_next!100471))

(assert (not b_next!100465))

(assert b_and!277999)

(assert (not b_next!100487))

(assert (not b_next!100485))

(assert (not b_next!100463))

(assert (not b_next!100467))

(assert b_and!277997)

(assert b_and!278001)

(assert b_and!278015)

(assert b_and!278017)

(assert b_and!277993)

(assert b_and!277995)

(check-sat)

(pop 1)

