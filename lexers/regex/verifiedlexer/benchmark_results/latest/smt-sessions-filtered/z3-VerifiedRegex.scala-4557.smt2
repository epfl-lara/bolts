; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241310 () Bool)

(assert start!241310)

(declare-fun b!2474201 () Bool)

(declare-fun b_free!71669 () Bool)

(declare-fun b_next!72373 () Bool)

(assert (=> b!2474201 (= b_free!71669 (not b_next!72373))))

(declare-fun tp!791026 () Bool)

(declare-fun b_and!187797 () Bool)

(assert (=> b!2474201 (= tp!791026 b_and!187797)))

(declare-fun b_free!71671 () Bool)

(declare-fun b_next!72375 () Bool)

(assert (=> b!2474201 (= b_free!71671 (not b_next!72375))))

(declare-fun tp!791031 () Bool)

(declare-fun b_and!187799 () Bool)

(assert (=> b!2474201 (= tp!791031 b_and!187799)))

(declare-fun b!2474194 () Bool)

(declare-fun b_free!71673 () Bool)

(declare-fun b_next!72377 () Bool)

(assert (=> b!2474194 (= b_free!71673 (not b_next!72377))))

(declare-fun tp!791035 () Bool)

(declare-fun b_and!187801 () Bool)

(assert (=> b!2474194 (= tp!791035 b_and!187801)))

(declare-fun b_free!71675 () Bool)

(declare-fun b_next!72379 () Bool)

(assert (=> b!2474194 (= b_free!71675 (not b_next!72379))))

(declare-fun tp!791030 () Bool)

(declare-fun b_and!187803 () Bool)

(assert (=> b!2474194 (= tp!791030 b_and!187803)))

(declare-fun b!2474209 () Bool)

(declare-fun b_free!71677 () Bool)

(declare-fun b_next!72381 () Bool)

(assert (=> b!2474209 (= b_free!71677 (not b_next!72381))))

(declare-fun tp!791028 () Bool)

(declare-fun b_and!187805 () Bool)

(assert (=> b!2474209 (= tp!791028 b_and!187805)))

(declare-fun b_free!71679 () Bool)

(declare-fun b_next!72383 () Bool)

(assert (=> b!2474209 (= b_free!71679 (not b_next!72383))))

(declare-fun tp!791040 () Bool)

(declare-fun b_and!187807 () Bool)

(assert (=> b!2474209 (= tp!791040 b_and!187807)))

(declare-fun b!2474210 () Bool)

(declare-fun b_free!71681 () Bool)

(declare-fun b_next!72385 () Bool)

(assert (=> b!2474210 (= b_free!71681 (not b_next!72385))))

(declare-fun tp!791041 () Bool)

(declare-fun b_and!187809 () Bool)

(assert (=> b!2474210 (= tp!791041 b_and!187809)))

(declare-fun b_free!71683 () Bool)

(declare-fun b_next!72387 () Bool)

(assert (=> b!2474210 (= b_free!71683 (not b_next!72387))))

(declare-fun tp!791032 () Bool)

(declare-fun b_and!187811 () Bool)

(assert (=> b!2474210 (= tp!791032 b_and!187811)))

(declare-fun b!2474184 () Bool)

(declare-fun e!1569545 () Bool)

(declare-fun i!1803 () Int)

(assert (=> b!2474184 (= e!1569545 (>= (- i!1803 1) i!1803))))

(declare-fun b!2474185 () Bool)

(declare-fun res!1047459 () Bool)

(declare-fun e!1569532 () Bool)

(assert (=> b!2474185 (=> (not res!1047459) (not e!1569532))))

(declare-datatypes ((List!28970 0))(
  ( (Nil!28870) (Cons!28870 (h!34271 (_ BitVec 16)) (t!210441 List!28970)) )
))
(declare-datatypes ((TokenValue!4687 0))(
  ( (FloatLiteralValue!9374 (text!33254 List!28970)) (TokenValueExt!4686 (__x!18629 Int)) (Broken!23435 (value!143658 List!28970)) (Object!4786) (End!4687) (Def!4687) (Underscore!4687) (Match!4687) (Else!4687) (Error!4687) (Case!4687) (If!4687) (Extends!4687) (Abstract!4687) (Class!4687) (Val!4687) (DelimiterValue!9374 (del!4747 List!28970)) (KeywordValue!4693 (value!143659 List!28970)) (CommentValue!9374 (value!143660 List!28970)) (WhitespaceValue!9374 (value!143661 List!28970)) (IndentationValue!4687 (value!143662 List!28970)) (String!31730) (Int32!4687) (Broken!23436 (value!143663 List!28970)) (Boolean!4688) (Unit!42241) (OperatorValue!4690 (op!4747 List!28970)) (IdentifierValue!9374 (value!143664 List!28970)) (IdentifierValue!9375 (value!143665 List!28970)) (WhitespaceValue!9375 (value!143666 List!28970)) (True!9374) (False!9374) (Broken!23437 (value!143667 List!28970)) (Broken!23438 (value!143668 List!28970)) (True!9375) (RightBrace!4687) (RightBracket!4687) (Colon!4687) (Null!4687) (Comma!4687) (LeftBracket!4687) (False!9375) (LeftBrace!4687) (ImaginaryLiteralValue!4687 (text!33255 List!28970)) (StringLiteralValue!14061 (value!143669 List!28970)) (EOFValue!4687 (value!143670 List!28970)) (IdentValue!4687 (value!143671 List!28970)) (DelimiterValue!9375 (value!143672 List!28970)) (DedentValue!4687 (value!143673 List!28970)) (NewLineValue!4687 (value!143674 List!28970)) (IntegerValue!14061 (value!143675 (_ BitVec 32)) (text!33256 List!28970)) (IntegerValue!14062 (value!143676 Int) (text!33257 List!28970)) (Times!4687) (Or!4687) (Equal!4687) (Minus!4687) (Broken!23439 (value!143677 List!28970)) (And!4687) (Div!4687) (LessEqual!4687) (Mod!4687) (Concat!11976) (Not!4687) (Plus!4687) (SpaceValue!4687 (value!143678 List!28970)) (IntegerValue!14063 (value!143679 Int) (text!33258 List!28970)) (StringLiteralValue!14062 (text!33259 List!28970)) (FloatLiteralValue!9375 (text!33260 List!28970)) (BytesLiteralValue!4687 (value!143680 List!28970)) (CommentValue!9375 (value!143681 List!28970)) (StringLiteralValue!14063 (value!143682 List!28970)) (ErrorTokenValue!4687 (msg!4748 List!28970)) )
))
(declare-datatypes ((C!14736 0))(
  ( (C!14737 (val!8628 Int)) )
))
(declare-datatypes ((List!28971 0))(
  ( (Nil!28871) (Cons!28871 (h!34272 C!14736) (t!210442 List!28971)) )
))
(declare-datatypes ((IArray!18443 0))(
  ( (IArray!18444 (innerList!9279 List!28971)) )
))
(declare-datatypes ((Conc!9219 0))(
  ( (Node!9219 (left!22144 Conc!9219) (right!22474 Conc!9219) (csize!18668 Int) (cheight!9430 Int)) (Leaf!13777 (xs!12203 IArray!18443) (csize!18669 Int)) (Empty!9219) )
))
(declare-datatypes ((BalanceConc!18052 0))(
  ( (BalanceConc!18053 (c!393934 Conc!9219)) )
))
(declare-datatypes ((Regex!7289 0))(
  ( (ElementMatch!7289 (c!393935 C!14736)) (Concat!11977 (regOne!15090 Regex!7289) (regTwo!15090 Regex!7289)) (EmptyExpr!7289) (Star!7289 (reg!7618 Regex!7289)) (EmptyLang!7289) (Union!7289 (regOne!15091 Regex!7289) (regTwo!15091 Regex!7289)) )
))
(declare-datatypes ((String!31731 0))(
  ( (String!31732 (value!143683 String)) )
))
(declare-datatypes ((TokenValueInjection!8874 0))(
  ( (TokenValueInjection!8875 (toValue!6365 Int) (toChars!6224 Int)) )
))
(declare-datatypes ((Rule!8802 0))(
  ( (Rule!8803 (regex!4501 Regex!7289) (tag!4991 String!31731) (isSeparator!4501 Bool) (transformation!4501 TokenValueInjection!8874)) )
))
(declare-datatypes ((Token!8472 0))(
  ( (Token!8473 (value!143684 TokenValue!4687) (rule!6859 Rule!8802) (size!22469 Int) (originalCharacters!5267 List!28971)) )
))
(declare-datatypes ((List!28972 0))(
  ( (Nil!28872) (Cons!28872 (h!34273 Token!8472) (t!210443 List!28972)) )
))
(declare-fun l!6611 () List!28972)

(declare-fun size!22470 (List!28972) Int)

(assert (=> b!2474185 (= res!1047459 (< (+ 1 i!1803) (size!22470 l!6611)))))

(declare-fun b!2474186 () Bool)

(declare-fun res!1047455 () Bool)

(assert (=> b!2474186 (=> (not res!1047455) (not e!1569532))))

(declare-datatypes ((List!28973 0))(
  ( (Nil!28873) (Cons!28873 (h!34274 Rule!8802) (t!210444 List!28973)) )
))
(declare-fun rules!4472 () List!28973)

(declare-fun isEmpty!16760 (List!28973) Bool)

(assert (=> b!2474186 (= res!1047455 (not (isEmpty!16760 rules!4472)))))

(declare-fun b!2474187 () Bool)

(declare-fun res!1047461 () Bool)

(assert (=> b!2474187 (=> (not res!1047461) (not e!1569545))))

(declare-fun lt!883708 () List!28972)

(declare-fun t1!67 () Token!8472)

(declare-fun apply!6810 (List!28972 Int) Token!8472)

(assert (=> b!2474187 (= res!1047461 (= (apply!6810 lt!883708 (- i!1803 1)) t1!67))))

(declare-fun tp!791025 () Bool)

(declare-fun b!2474188 () Bool)

(declare-fun e!1569528 () Bool)

(declare-fun e!1569546 () Bool)

(declare-fun inv!21 (TokenValue!4687) Bool)

(assert (=> b!2474188 (= e!1569546 (and (inv!21 (value!143684 t1!67)) e!1569528 tp!791025))))

(declare-fun e!1569542 () Bool)

(declare-fun tp!791029 () Bool)

(declare-fun b!2474190 () Bool)

(declare-fun inv!38962 (String!31731) Bool)

(declare-fun inv!38965 (TokenValueInjection!8874) Bool)

(assert (=> b!2474190 (= e!1569528 (and tp!791029 (inv!38962 (tag!4991 (rule!6859 t1!67))) (inv!38965 (transformation!4501 (rule!6859 t1!67))) e!1569542))))

(declare-fun b!2474191 () Bool)

(declare-fun res!1047454 () Bool)

(assert (=> b!2474191 (=> (not res!1047454) (not e!1569532))))

(declare-datatypes ((LexerInterface!4098 0))(
  ( (LexerInterfaceExt!4095 (__x!18630 Int)) (Lexer!4096) )
))
(declare-fun thiss!27932 () LexerInterface!4098)

(declare-fun rulesInvariant!3598 (LexerInterface!4098 List!28973) Bool)

(assert (=> b!2474191 (= res!1047454 (rulesInvariant!3598 thiss!27932 rules!4472))))

(declare-fun e!1569539 () Bool)

(declare-fun tp!791038 () Bool)

(declare-fun t2!67 () Token!8472)

(declare-fun e!1569526 () Bool)

(declare-fun b!2474192 () Bool)

(assert (=> b!2474192 (= e!1569526 (and (inv!21 (value!143684 t2!67)) e!1569539 tp!791038))))

(declare-fun b!2474193 () Bool)

(declare-fun res!1047467 () Bool)

(assert (=> b!2474193 (=> (not res!1047467) (not e!1569532))))

(assert (=> b!2474193 (= res!1047467 (= (apply!6810 l!6611 i!1803) t1!67))))

(declare-fun e!1569540 () Bool)

(assert (=> b!2474194 (= e!1569540 (and tp!791035 tp!791030))))

(declare-fun b!2474195 () Bool)

(declare-fun res!1047456 () Bool)

(assert (=> b!2474195 (=> (not res!1047456) (not e!1569532))))

(assert (=> b!2474195 (= res!1047456 (not (= i!1803 0)))))

(declare-fun b!2474196 () Bool)

(declare-fun res!1047462 () Bool)

(assert (=> b!2474196 (=> (not res!1047462) (not e!1569532))))

(assert (=> b!2474196 (= res!1047462 (= (apply!6810 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun tp!791027 () Bool)

(declare-fun e!1569530 () Bool)

(declare-fun b!2474197 () Bool)

(declare-fun e!1569533 () Bool)

(assert (=> b!2474197 (= e!1569533 (and (inv!21 (value!143684 (h!34273 l!6611))) e!1569530 tp!791027))))

(declare-fun b!2474198 () Bool)

(declare-fun e!1569536 () Bool)

(assert (=> b!2474198 (= e!1569532 e!1569536)))

(declare-fun res!1047465 () Bool)

(assert (=> b!2474198 (=> (not res!1047465) (not e!1569536))))

(declare-fun rulesProduceEachTokenIndividuallyList!1414 (LexerInterface!4098 List!28973 List!28972) Bool)

(assert (=> b!2474198 (= res!1047465 (rulesProduceEachTokenIndividuallyList!1414 thiss!27932 rules!4472 lt!883708))))

(declare-fun tail!3934 (List!28972) List!28972)

(assert (=> b!2474198 (= lt!883708 (tail!3934 l!6611))))

(declare-fun e!1569525 () Bool)

(declare-fun tp!791037 () Bool)

(declare-fun b!2474199 () Bool)

(assert (=> b!2474199 (= e!1569530 (and tp!791037 (inv!38962 (tag!4991 (rule!6859 (h!34273 l!6611)))) (inv!38965 (transformation!4501 (rule!6859 (h!34273 l!6611)))) e!1569525))))

(declare-fun b!2474200 () Bool)

(assert (=> b!2474200 (= e!1569536 e!1569545)))

(declare-fun res!1047464 () Bool)

(assert (=> b!2474200 (=> (not res!1047464) (not e!1569545))))

(declare-fun lt!883707 () Int)

(assert (=> b!2474200 (= res!1047464 (< lt!883707 (size!22470 lt!883708)))))

(assert (=> b!2474200 (= lt!883707 (+ 1 (- i!1803 1)))))

(declare-fun res!1047463 () Bool)

(assert (=> start!241310 (=> (not res!1047463) (not e!1569532))))

(get-info :version)

(assert (=> start!241310 (= res!1047463 ((_ is Lexer!4096) thiss!27932))))

(assert (=> start!241310 e!1569532))

(assert (=> start!241310 true))

(declare-fun e!1569544 () Bool)

(assert (=> start!241310 e!1569544))

(declare-fun inv!38966 (Token!8472) Bool)

(assert (=> start!241310 (and (inv!38966 t2!67) e!1569526)))

(declare-fun e!1569538 () Bool)

(assert (=> start!241310 e!1569538))

(assert (=> start!241310 (and (inv!38966 t1!67) e!1569546)))

(declare-fun b!2474189 () Bool)

(declare-fun res!1047453 () Bool)

(assert (=> b!2474189 (=> (not res!1047453) (not e!1569536))))

(assert (=> b!2474189 (= res!1047453 (>= (- i!1803 1) 0))))

(declare-fun e!1569541 () Bool)

(assert (=> b!2474201 (= e!1569541 (and tp!791026 tp!791031))))

(declare-fun b!2474202 () Bool)

(declare-fun res!1047458 () Bool)

(assert (=> b!2474202 (=> (not res!1047458) (not e!1569532))))

(assert (=> b!2474202 (= res!1047458 (>= i!1803 0))))

(declare-fun b!2474203 () Bool)

(declare-fun e!1569535 () Bool)

(declare-fun tp!791039 () Bool)

(assert (=> b!2474203 (= e!1569544 (and e!1569535 tp!791039))))

(declare-fun tp!791034 () Bool)

(declare-fun b!2474204 () Bool)

(assert (=> b!2474204 (= e!1569538 (and (inv!38966 (h!34273 l!6611)) e!1569533 tp!791034))))

(declare-fun tp!791036 () Bool)

(declare-fun b!2474205 () Bool)

(assert (=> b!2474205 (= e!1569539 (and tp!791036 (inv!38962 (tag!4991 (rule!6859 t2!67))) (inv!38965 (transformation!4501 (rule!6859 t2!67))) e!1569540))))

(declare-fun b!2474206 () Bool)

(declare-fun res!1047452 () Bool)

(assert (=> b!2474206 (=> (not res!1047452) (not e!1569532))))

(assert (=> b!2474206 (= res!1047452 (rulesProduceEachTokenIndividuallyList!1414 thiss!27932 rules!4472 l!6611))))

(declare-fun tp!791033 () Bool)

(declare-fun b!2474207 () Bool)

(assert (=> b!2474207 (= e!1569535 (and tp!791033 (inv!38962 (tag!4991 (h!34274 rules!4472))) (inv!38965 (transformation!4501 (h!34274 rules!4472))) e!1569541))))

(declare-fun b!2474208 () Bool)

(declare-fun res!1047460 () Bool)

(assert (=> b!2474208 (=> (not res!1047460) (not e!1569532))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!637 (LexerInterface!4098 List!28972 List!28973) Bool)

(assert (=> b!2474208 (= res!1047460 (tokensListTwoByTwoPredicateSeparableList!637 thiss!27932 l!6611 rules!4472))))

(assert (=> b!2474209 (= e!1569525 (and tp!791028 tp!791040))))

(assert (=> b!2474210 (= e!1569542 (and tp!791041 tp!791032))))

(declare-fun b!2474211 () Bool)

(declare-fun res!1047466 () Bool)

(assert (=> b!2474211 (=> (not res!1047466) (not e!1569536))))

(assert (=> b!2474211 (= res!1047466 (tokensListTwoByTwoPredicateSeparableList!637 thiss!27932 lt!883708 rules!4472))))

(declare-fun b!2474212 () Bool)

(declare-fun res!1047457 () Bool)

(assert (=> b!2474212 (=> (not res!1047457) (not e!1569545))))

(assert (=> b!2474212 (= res!1047457 (= (apply!6810 lt!883708 lt!883707) t2!67))))

(assert (= (and start!241310 res!1047463) b!2474186))

(assert (= (and b!2474186 res!1047455) b!2474191))

(assert (= (and b!2474191 res!1047454) b!2474206))

(assert (= (and b!2474206 res!1047452) b!2474208))

(assert (= (and b!2474208 res!1047460) b!2474202))

(assert (= (and b!2474202 res!1047458) b!2474185))

(assert (= (and b!2474185 res!1047459) b!2474193))

(assert (= (and b!2474193 res!1047467) b!2474196))

(assert (= (and b!2474196 res!1047462) b!2474195))

(assert (= (and b!2474195 res!1047456) b!2474198))

(assert (= (and b!2474198 res!1047465) b!2474211))

(assert (= (and b!2474211 res!1047466) b!2474189))

(assert (= (and b!2474189 res!1047453) b!2474200))

(assert (= (and b!2474200 res!1047464) b!2474187))

(assert (= (and b!2474187 res!1047461) b!2474212))

(assert (= (and b!2474212 res!1047457) b!2474184))

(assert (= b!2474207 b!2474201))

(assert (= b!2474203 b!2474207))

(assert (= (and start!241310 ((_ is Cons!28873) rules!4472)) b!2474203))

(assert (= b!2474205 b!2474194))

(assert (= b!2474192 b!2474205))

(assert (= start!241310 b!2474192))

(assert (= b!2474199 b!2474209))

(assert (= b!2474197 b!2474199))

(assert (= b!2474204 b!2474197))

(assert (= (and start!241310 ((_ is Cons!28872) l!6611)) b!2474204))

(assert (= b!2474190 b!2474210))

(assert (= b!2474188 b!2474190))

(assert (= start!241310 b!2474188))

(declare-fun m!2842517 () Bool)

(assert (=> b!2474192 m!2842517))

(declare-fun m!2842519 () Bool)

(assert (=> b!2474191 m!2842519))

(declare-fun m!2842521 () Bool)

(assert (=> b!2474186 m!2842521))

(declare-fun m!2842523 () Bool)

(assert (=> b!2474198 m!2842523))

(declare-fun m!2842525 () Bool)

(assert (=> b!2474198 m!2842525))

(declare-fun m!2842527 () Bool)

(assert (=> b!2474205 m!2842527))

(declare-fun m!2842529 () Bool)

(assert (=> b!2474205 m!2842529))

(declare-fun m!2842531 () Bool)

(assert (=> b!2474206 m!2842531))

(declare-fun m!2842533 () Bool)

(assert (=> b!2474188 m!2842533))

(declare-fun m!2842535 () Bool)

(assert (=> b!2474185 m!2842535))

(declare-fun m!2842537 () Bool)

(assert (=> b!2474204 m!2842537))

(declare-fun m!2842539 () Bool)

(assert (=> b!2474199 m!2842539))

(declare-fun m!2842541 () Bool)

(assert (=> b!2474199 m!2842541))

(declare-fun m!2842543 () Bool)

(assert (=> b!2474193 m!2842543))

(declare-fun m!2842545 () Bool)

(assert (=> b!2474212 m!2842545))

(declare-fun m!2842547 () Bool)

(assert (=> b!2474207 m!2842547))

(declare-fun m!2842549 () Bool)

(assert (=> b!2474207 m!2842549))

(declare-fun m!2842551 () Bool)

(assert (=> b!2474200 m!2842551))

(declare-fun m!2842553 () Bool)

(assert (=> b!2474211 m!2842553))

(declare-fun m!2842555 () Bool)

(assert (=> b!2474196 m!2842555))

(declare-fun m!2842557 () Bool)

(assert (=> b!2474190 m!2842557))

(declare-fun m!2842559 () Bool)

(assert (=> b!2474190 m!2842559))

(declare-fun m!2842561 () Bool)

(assert (=> b!2474197 m!2842561))

(declare-fun m!2842563 () Bool)

(assert (=> start!241310 m!2842563))

(declare-fun m!2842565 () Bool)

(assert (=> start!241310 m!2842565))

(declare-fun m!2842567 () Bool)

(assert (=> b!2474187 m!2842567))

(declare-fun m!2842569 () Bool)

(assert (=> b!2474208 m!2842569))

(check-sat b_and!187799 (not b_next!72381) (not b!2474212) (not b!2474192) b_and!187797 (not b!2474196) (not b!2474188) b_and!187805 (not b!2474186) (not b!2474190) (not b_next!72375) b_and!187811 b_and!187807 (not b!2474208) (not b_next!72373) (not b!2474187) (not b!2474197) (not b!2474207) (not b!2474199) (not b!2474191) (not b!2474193) (not b!2474203) (not b!2474185) (not b_next!72385) (not b!2474200) b_and!187801 (not b!2474204) (not b!2474206) (not b_next!72377) b_and!187803 (not b!2474205) (not b!2474198) b_and!187809 (not b_next!72379) (not b_next!72387) (not b_next!72383) (not start!241310) (not b!2474211))
(check-sat b_and!187799 (not b_next!72381) (not b_next!72373) b_and!187797 (not b_next!72385) b_and!187801 b_and!187805 (not b_next!72375) b_and!187811 b_and!187807 (not b_next!72377) b_and!187803 b_and!187809 (not b_next!72379) (not b_next!72387) (not b_next!72383))
