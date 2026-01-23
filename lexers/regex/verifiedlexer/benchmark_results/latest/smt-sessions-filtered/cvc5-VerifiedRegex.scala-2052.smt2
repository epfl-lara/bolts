; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!104448 () Bool)

(assert start!104448)

(declare-fun b!1180379 () Bool)

(declare-fun b_free!28069 () Bool)

(declare-fun b_next!28773 () Bool)

(assert (=> b!1180379 (= b_free!28069 (not b_next!28773))))

(declare-fun tp!336117 () Bool)

(declare-fun b_and!81021 () Bool)

(assert (=> b!1180379 (= tp!336117 b_and!81021)))

(declare-fun b_free!28071 () Bool)

(declare-fun b_next!28775 () Bool)

(assert (=> b!1180379 (= b_free!28071 (not b_next!28775))))

(declare-fun tp!336115 () Bool)

(declare-fun b_and!81023 () Bool)

(assert (=> b!1180379 (= tp!336115 b_and!81023)))

(declare-fun b!1180384 () Bool)

(declare-fun b_free!28073 () Bool)

(declare-fun b_next!28777 () Bool)

(assert (=> b!1180384 (= b_free!28073 (not b_next!28777))))

(declare-fun tp!336113 () Bool)

(declare-fun b_and!81025 () Bool)

(assert (=> b!1180384 (= tp!336113 b_and!81025)))

(declare-fun b_free!28075 () Bool)

(declare-fun b_next!28779 () Bool)

(assert (=> b!1180384 (= b_free!28075 (not b_next!28779))))

(declare-fun tp!336110 () Bool)

(declare-fun b_and!81027 () Bool)

(assert (=> b!1180384 (= tp!336110 b_and!81027)))

(declare-fun b!1180396 () Bool)

(declare-fun e!757564 () Bool)

(assert (=> b!1180396 (= e!757564 true)))

(declare-fun b!1180395 () Bool)

(declare-fun e!757563 () Bool)

(assert (=> b!1180395 (= e!757563 e!757564)))

(declare-fun b!1180394 () Bool)

(declare-fun e!757562 () Bool)

(assert (=> b!1180394 (= e!757562 e!757563)))

(declare-fun b!1180375 () Bool)

(assert (=> b!1180375 e!757562))

(assert (= b!1180395 b!1180396))

(assert (= b!1180394 b!1180395))

(declare-datatypes ((C!6946 0))(
  ( (C!6947 (val!3769 Int)) )
))
(declare-datatypes ((List!11762 0))(
  ( (Nil!11738) (Cons!11738 (h!17139 C!6946) (t!111364 List!11762)) )
))
(declare-datatypes ((IArray!7701 0))(
  ( (IArray!7702 (innerList!3908 List!11762)) )
))
(declare-datatypes ((Conc!3848 0))(
  ( (Node!3848 (left!10242 Conc!3848) (right!10572 Conc!3848) (csize!7926 Int) (cheight!4059 Int)) (Leaf!5901 (xs!6553 IArray!7701) (csize!7927 Int)) (Empty!3848) )
))
(declare-datatypes ((List!11763 0))(
  ( (Nil!11739) (Cons!11739 (h!17140 (_ BitVec 16)) (t!111365 List!11763)) )
))
(declare-datatypes ((BalanceConc!7718 0))(
  ( (BalanceConc!7719 (c!196699 Conc!3848)) )
))
(declare-datatypes ((TokenValue!2110 0))(
  ( (FloatLiteralValue!4220 (text!15215 List!11763)) (TokenValueExt!2109 (__x!7931 Int)) (Broken!10550 (value!66286 List!11763)) (Object!2133) (End!2110) (Def!2110) (Underscore!2110) (Match!2110) (Else!2110) (Error!2110) (Case!2110) (If!2110) (Extends!2110) (Abstract!2110) (Class!2110) (Val!2110) (DelimiterValue!4220 (del!2170 List!11763)) (KeywordValue!2116 (value!66287 List!11763)) (CommentValue!4220 (value!66288 List!11763)) (WhitespaceValue!4220 (value!66289 List!11763)) (IndentationValue!2110 (value!66290 List!11763)) (String!14219) (Int32!2110) (Broken!10551 (value!66291 List!11763)) (Boolean!2111) (Unit!18060) (OperatorValue!2113 (op!2170 List!11763)) (IdentifierValue!4220 (value!66292 List!11763)) (IdentifierValue!4221 (value!66293 List!11763)) (WhitespaceValue!4221 (value!66294 List!11763)) (True!4220) (False!4220) (Broken!10552 (value!66295 List!11763)) (Broken!10553 (value!66296 List!11763)) (True!4221) (RightBrace!2110) (RightBracket!2110) (Colon!2110) (Null!2110) (Comma!2110) (LeftBracket!2110) (False!4221) (LeftBrace!2110) (ImaginaryLiteralValue!2110 (text!15216 List!11763)) (StringLiteralValue!6330 (value!66297 List!11763)) (EOFValue!2110 (value!66298 List!11763)) (IdentValue!2110 (value!66299 List!11763)) (DelimiterValue!4221 (value!66300 List!11763)) (DedentValue!2110 (value!66301 List!11763)) (NewLineValue!2110 (value!66302 List!11763)) (IntegerValue!6330 (value!66303 (_ BitVec 32)) (text!15217 List!11763)) (IntegerValue!6331 (value!66304 Int) (text!15218 List!11763)) (Times!2110) (Or!2110) (Equal!2110) (Minus!2110) (Broken!10554 (value!66305 List!11763)) (And!2110) (Div!2110) (LessEqual!2110) (Mod!2110) (Concat!5424) (Not!2110) (Plus!2110) (SpaceValue!2110 (value!66306 List!11763)) (IntegerValue!6332 (value!66307 Int) (text!15219 List!11763)) (StringLiteralValue!6331 (text!15220 List!11763)) (FloatLiteralValue!4221 (text!15221 List!11763)) (BytesLiteralValue!2110 (value!66308 List!11763)) (CommentValue!4221 (value!66309 List!11763)) (StringLiteralValue!6332 (value!66310 List!11763)) (ErrorTokenValue!2110 (msg!2171 List!11763)) )
))
(declare-datatypes ((Regex!3314 0))(
  ( (ElementMatch!3314 (c!196700 C!6946)) (Concat!5425 (regOne!7140 Regex!3314) (regTwo!7140 Regex!3314)) (EmptyExpr!3314) (Star!3314 (reg!3643 Regex!3314)) (EmptyLang!3314) (Union!3314 (regOne!7141 Regex!3314) (regTwo!7141 Regex!3314)) )
))
(declare-datatypes ((String!14220 0))(
  ( (String!14221 (value!66311 String)) )
))
(declare-datatypes ((TokenValueInjection!3920 0))(
  ( (TokenValueInjection!3921 (toValue!3149 Int) (toChars!3008 Int)) )
))
(declare-datatypes ((Rule!3888 0))(
  ( (Rule!3889 (regex!2044 Regex!3314) (tag!2306 String!14220) (isSeparator!2044 Bool) (transformation!2044 TokenValueInjection!3920)) )
))
(declare-datatypes ((List!11764 0))(
  ( (Nil!11740) (Cons!11740 (h!17141 Rule!3888) (t!111366 List!11764)) )
))
(declare-fun rules!4386 () List!11764)

(assert (= (and b!1180375 (is-Cons!11740 rules!4386)) b!1180394))

(declare-fun lambda!48612 () Int)

(declare-fun order!7225 () Int)

(declare-fun order!7223 () Int)

(declare-fun dynLambda!5197 (Int Int) Int)

(declare-fun dynLambda!5198 (Int Int) Int)

(assert (=> b!1180396 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48612))))

(declare-fun order!7227 () Int)

(declare-fun dynLambda!5199 (Int Int) Int)

(assert (=> b!1180396 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48612))))

(declare-fun e!757542 () Bool)

(declare-fun b!1180370 () Bool)

(declare-datatypes ((Token!3750 0))(
  ( (Token!3751 (value!66312 TokenValue!2110) (rule!3465 Rule!3888) (size!9284 Int) (originalCharacters!2598 List!11762)) )
))
(declare-datatypes ((List!11765 0))(
  ( (Nil!11741) (Cons!11741 (h!17142 Token!3750) (t!111367 List!11765)) )
))
(declare-fun lt!406517 () List!11765)

(declare-datatypes ((LexerInterface!1739 0))(
  ( (LexerInterfaceExt!1736 (__x!7932 Int)) (Lexer!1737) )
))
(declare-fun thiss!27592 () LexerInterface!1739)

(declare-fun rulesProduceEachTokenIndividuallyList!605 (LexerInterface!1739 List!11764 List!11765) Bool)

(assert (=> b!1180370 (= e!757542 (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 (t!111367 lt!406517)))))

(declare-fun b!1180371 () Bool)

(declare-fun e!757548 () Bool)

(assert (=> b!1180371 (= e!757548 e!757542)))

(declare-fun res!533545 () Bool)

(assert (=> b!1180371 (=> (not res!533545) (not e!757542))))

(declare-fun rulesProduceIndividualToken!772 (LexerInterface!1739 List!11764 Token!3750) Bool)

(assert (=> b!1180371 (= res!533545 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 lt!406517)))))

(declare-fun b!1180372 () Bool)

(declare-fun e!757543 () Bool)

(declare-fun e!757555 () Bool)

(declare-fun tp!336116 () Bool)

(assert (=> b!1180372 (= e!757543 (and e!757555 tp!336116))))

(declare-fun e!757550 () Bool)

(declare-fun l!6534 () List!11765)

(declare-fun b!1180373 () Bool)

(declare-fun e!757549 () Bool)

(declare-fun tp!336111 () Bool)

(declare-fun inv!15556 (String!14220) Bool)

(declare-fun inv!15559 (TokenValueInjection!3920) Bool)

(assert (=> b!1180373 (= e!757549 (and tp!336111 (inv!15556 (tag!2306 (rule!3465 (h!17142 l!6534)))) (inv!15559 (transformation!2044 (rule!3465 (h!17142 l!6534)))) e!757550))))

(declare-fun e!757547 () Bool)

(declare-fun tp!336114 () Bool)

(declare-fun b!1180374 () Bool)

(assert (=> b!1180374 (= e!757555 (and tp!336114 (inv!15556 (tag!2306 (h!17141 rules!4386))) (inv!15559 (transformation!2044 (h!17141 rules!4386))) e!757547))))

(declare-fun e!757546 () Bool)

(declare-fun e!757544 () Bool)

(assert (=> b!1180375 (= e!757546 (not e!757544))))

(declare-fun res!533547 () Bool)

(assert (=> b!1180375 (=> res!533547 e!757544)))

(declare-fun lt!406515 () Bool)

(assert (=> b!1180375 (= res!533547 (not lt!406515))))

(declare-fun forall!3109 (List!11765 Int) Bool)

(assert (=> b!1180375 (forall!3109 lt!406517 lambda!48612)))

(declare-datatypes ((Unit!18061 0))(
  ( (Unit!18062) )
))
(declare-fun lt!406518 () Unit!18061)

(declare-fun lemmaForallSubseq!172 (List!11765 List!11765 Int) Unit!18061)

(assert (=> b!1180375 (= lt!406518 (lemmaForallSubseq!172 lt!406517 l!6534 lambda!48612))))

(declare-fun subseq!302 (List!11765 List!11765) Bool)

(assert (=> b!1180375 (subseq!302 lt!406517 l!6534)))

(declare-fun lt!406516 () Unit!18061)

(declare-fun i!1621 () Int)

(declare-fun lemmaDropSubseq!65 (List!11765 Int) Unit!18061)

(assert (=> b!1180375 (= lt!406516 (lemmaDropSubseq!65 l!6534 i!1621))))

(assert (=> b!1180375 (= lt!406515 e!757548)))

(declare-fun res!533546 () Bool)

(assert (=> b!1180375 (=> res!533546 e!757548)))

(assert (=> b!1180375 (= res!533546 (not (is-Cons!11741 lt!406517)))))

(assert (=> b!1180375 (= lt!406515 (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 lt!406517))))

(declare-fun drop!524 (List!11765 Int) List!11765)

(assert (=> b!1180375 (= lt!406517 (drop!524 l!6534 i!1621))))

(declare-fun b!1180376 () Bool)

(declare-fun res!533542 () Bool)

(assert (=> b!1180376 (=> (not res!533542) (not e!757546))))

(assert (=> b!1180376 (= res!533542 (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 l!6534))))

(declare-fun res!533541 () Bool)

(assert (=> start!104448 (=> (not res!533541) (not e!757546))))

(assert (=> start!104448 (= res!533541 (is-Lexer!1737 thiss!27592))))

(assert (=> start!104448 e!757546))

(assert (=> start!104448 true))

(assert (=> start!104448 e!757543))

(declare-fun e!757551 () Bool)

(assert (=> start!104448 e!757551))

(declare-fun b!1180377 () Bool)

(declare-fun res!533540 () Bool)

(assert (=> b!1180377 (=> (not res!533540) (not e!757546))))

(declare-fun rulesInvariant!1613 (LexerInterface!1739 List!11764) Bool)

(assert (=> b!1180377 (= res!533540 (rulesInvariant!1613 thiss!27592 rules!4386))))

(declare-fun b!1180378 () Bool)

(declare-fun res!533544 () Bool)

(assert (=> b!1180378 (=> (not res!533544) (not e!757546))))

(assert (=> b!1180378 (= res!533544 (is-Nil!11741 l!6534))))

(assert (=> b!1180379 (= e!757547 (and tp!336117 tp!336115))))

(declare-fun b!1180380 () Bool)

(declare-fun res!533543 () Bool)

(assert (=> b!1180380 (=> (not res!533543) (not e!757546))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!133 (LexerInterface!1739 List!11765 List!11764) Bool)

(assert (=> b!1180380 (= res!533543 (tokensListTwoByTwoPredicateSeparableList!133 thiss!27592 l!6534 rules!4386))))

(declare-fun e!757552 () Bool)

(declare-fun tp!336112 () Bool)

(declare-fun b!1180381 () Bool)

(declare-fun inv!21 (TokenValue!2110) Bool)

(assert (=> b!1180381 (= e!757552 (and (inv!21 (value!66312 (h!17142 l!6534))) e!757549 tp!336112))))

(declare-fun b!1180382 () Bool)

(declare-datatypes ((IArray!7703 0))(
  ( (IArray!7704 (innerList!3909 List!11765)) )
))
(declare-datatypes ((Conc!3849 0))(
  ( (Node!3849 (left!10243 Conc!3849) (right!10573 Conc!3849) (csize!7928 Int) (cheight!4060 Int)) (Leaf!5902 (xs!6554 IArray!7703) (csize!7929 Int)) (Empty!3849) )
))
(declare-datatypes ((BalanceConc!7720 0))(
  ( (BalanceConc!7721 (c!196701 Conc!3849)) )
))
(declare-fun rulesProduceEachTokenIndividually!765 (LexerInterface!1739 List!11764 BalanceConc!7720) Bool)

(declare-fun seqFromList!1531 (List!11765) BalanceConc!7720)

(assert (=> b!1180382 (= e!757544 (rulesProduceEachTokenIndividually!765 thiss!27592 rules!4386 (seqFromList!1531 lt!406517)))))

(declare-fun tp!336109 () Bool)

(declare-fun b!1180383 () Bool)

(declare-fun inv!15560 (Token!3750) Bool)

(assert (=> b!1180383 (= e!757551 (and (inv!15560 (h!17142 l!6534)) e!757552 tp!336109))))

(assert (=> b!1180384 (= e!757550 (and tp!336113 tp!336110))))

(declare-fun b!1180385 () Bool)

(declare-fun res!533548 () Bool)

(assert (=> b!1180385 (=> (not res!533548) (not e!757546))))

(declare-fun isEmpty!7089 (List!11764) Bool)

(assert (=> b!1180385 (= res!533548 (not (isEmpty!7089 rules!4386)))))

(assert (= (and start!104448 res!533541) b!1180385))

(assert (= (and b!1180385 res!533548) b!1180377))

(assert (= (and b!1180377 res!533540) b!1180376))

(assert (= (and b!1180376 res!533542) b!1180380))

(assert (= (and b!1180380 res!533543) b!1180378))

(assert (= (and b!1180378 res!533544) b!1180375))

(assert (= (and b!1180375 (not res!533546)) b!1180371))

(assert (= (and b!1180371 res!533545) b!1180370))

(assert (= (and b!1180375 (not res!533547)) b!1180382))

(assert (= b!1180374 b!1180379))

(assert (= b!1180372 b!1180374))

(assert (= (and start!104448 (is-Cons!11740 rules!4386)) b!1180372))

(assert (= b!1180373 b!1180384))

(assert (= b!1180381 b!1180373))

(assert (= b!1180383 b!1180381))

(assert (= (and start!104448 (is-Cons!11741 l!6534)) b!1180383))

(declare-fun m!1356501 () Bool)

(assert (=> b!1180373 m!1356501))

(declare-fun m!1356503 () Bool)

(assert (=> b!1180373 m!1356503))

(declare-fun m!1356505 () Bool)

(assert (=> b!1180374 m!1356505))

(declare-fun m!1356507 () Bool)

(assert (=> b!1180374 m!1356507))

(declare-fun m!1356509 () Bool)

(assert (=> b!1180375 m!1356509))

(declare-fun m!1356511 () Bool)

(assert (=> b!1180375 m!1356511))

(declare-fun m!1356513 () Bool)

(assert (=> b!1180375 m!1356513))

(declare-fun m!1356515 () Bool)

(assert (=> b!1180375 m!1356515))

(declare-fun m!1356517 () Bool)

(assert (=> b!1180375 m!1356517))

(declare-fun m!1356519 () Bool)

(assert (=> b!1180375 m!1356519))

(declare-fun m!1356521 () Bool)

(assert (=> b!1180376 m!1356521))

(declare-fun m!1356523 () Bool)

(assert (=> b!1180371 m!1356523))

(declare-fun m!1356525 () Bool)

(assert (=> b!1180383 m!1356525))

(declare-fun m!1356527 () Bool)

(assert (=> b!1180370 m!1356527))

(declare-fun m!1356529 () Bool)

(assert (=> b!1180381 m!1356529))

(declare-fun m!1356531 () Bool)

(assert (=> b!1180385 m!1356531))

(declare-fun m!1356533 () Bool)

(assert (=> b!1180377 m!1356533))

(declare-fun m!1356535 () Bool)

(assert (=> b!1180380 m!1356535))

(declare-fun m!1356537 () Bool)

(assert (=> b!1180382 m!1356537))

(assert (=> b!1180382 m!1356537))

(declare-fun m!1356539 () Bool)

(assert (=> b!1180382 m!1356539))

(push 1)

(assert b_and!81025)

(assert (not b!1180371))

(assert (not b!1180373))

(assert b_and!81021)

(assert (not b!1180383))

(assert (not b!1180370))

(assert (not b_next!28777))

(assert b_and!81027)

(assert (not b!1180382))

(assert (not b!1180374))

(assert (not b!1180372))

(assert (not b_next!28775))

(assert (not b!1180377))

(assert (not b_next!28779))

(assert (not b!1180394))

(assert (not b!1180385))

(assert b_and!81023)

(assert (not b!1180376))

(assert (not b!1180375))

(assert (not b_next!28773))

(assert (not b!1180380))

(assert (not b!1180381))

(check-sat)

(pop 1)

(push 1)

(assert b_and!81025)

(assert (not b_next!28775))

(assert (not b_next!28779))

(assert b_and!81023)

(assert b_and!81021)

(assert (not b_next!28773))

(assert (not b_next!28777))

(assert b_and!81027)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!337807 () Bool)

(declare-fun lt!406535 () Bool)

(declare-fun e!757629 () Bool)

(assert (=> d!337807 (= lt!406535 e!757629)))

(declare-fun res!533593 () Bool)

(assert (=> d!337807 (=> (not res!533593) (not e!757629))))

(declare-fun list!4335 (BalanceConc!7720) List!11765)

(declare-datatypes ((tuple2!12078 0))(
  ( (tuple2!12079 (_1!6886 BalanceConc!7720) (_2!6886 BalanceConc!7718)) )
))
(declare-fun lex!727 (LexerInterface!1739 List!11764 BalanceConc!7718) tuple2!12078)

(declare-fun print!664 (LexerInterface!1739 BalanceConc!7720) BalanceConc!7718)

(declare-fun singletonSeq!706 (Token!3750) BalanceConc!7720)

(assert (=> d!337807 (= res!533593 (= (list!4335 (_1!6886 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517)))))) (list!4335 (singletonSeq!706 (h!17142 lt!406517)))))))

(declare-fun e!757630 () Bool)

(assert (=> d!337807 (= lt!406535 e!757630)))

(declare-fun res!533595 () Bool)

(assert (=> d!337807 (=> (not res!533595) (not e!757630))))

(declare-fun lt!406536 () tuple2!12078)

(declare-fun size!9286 (BalanceConc!7720) Int)

(assert (=> d!337807 (= res!533595 (= (size!9286 (_1!6886 lt!406536)) 1))))

(assert (=> d!337807 (= lt!406536 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517)))))))

(assert (=> d!337807 (not (isEmpty!7089 rules!4386))))

(assert (=> d!337807 (= (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 lt!406517)) lt!406535)))

(declare-fun b!1180476 () Bool)

(declare-fun res!533594 () Bool)

(assert (=> b!1180476 (=> (not res!533594) (not e!757630))))

(declare-fun apply!2565 (BalanceConc!7720 Int) Token!3750)

(assert (=> b!1180476 (= res!533594 (= (apply!2565 (_1!6886 lt!406536) 0) (h!17142 lt!406517)))))

(declare-fun b!1180477 () Bool)

(declare-fun isEmpty!7091 (BalanceConc!7718) Bool)

(assert (=> b!1180477 (= e!757630 (isEmpty!7091 (_2!6886 lt!406536)))))

(declare-fun b!1180478 () Bool)

(assert (=> b!1180478 (= e!757629 (isEmpty!7091 (_2!6886 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517)))))))))

(assert (= (and d!337807 res!533595) b!1180476))

(assert (= (and b!1180476 res!533594) b!1180477))

(assert (= (and d!337807 res!533593) b!1180478))

(declare-fun m!1356597 () Bool)

(assert (=> d!337807 m!1356597))

(declare-fun m!1356599 () Bool)

(assert (=> d!337807 m!1356599))

(declare-fun m!1356601 () Bool)

(assert (=> d!337807 m!1356601))

(declare-fun m!1356603 () Bool)

(assert (=> d!337807 m!1356603))

(declare-fun m!1356605 () Bool)

(assert (=> d!337807 m!1356605))

(assert (=> d!337807 m!1356603))

(assert (=> d!337807 m!1356603))

(assert (=> d!337807 m!1356599))

(declare-fun m!1356607 () Bool)

(assert (=> d!337807 m!1356607))

(assert (=> d!337807 m!1356531))

(declare-fun m!1356609 () Bool)

(assert (=> b!1180476 m!1356609))

(declare-fun m!1356611 () Bool)

(assert (=> b!1180477 m!1356611))

(assert (=> b!1180478 m!1356603))

(assert (=> b!1180478 m!1356603))

(assert (=> b!1180478 m!1356599))

(assert (=> b!1180478 m!1356599))

(assert (=> b!1180478 m!1356601))

(declare-fun m!1356613 () Bool)

(assert (=> b!1180478 m!1356613))

(assert (=> b!1180371 d!337807))

(declare-fun bs!286868 () Bool)

(declare-fun d!337817 () Bool)

(assert (= bs!286868 (and d!337817 b!1180375)))

(declare-fun lambda!48620 () Int)

(assert (=> bs!286868 (= (= thiss!27592 Lexer!1737) (= lambda!48620 lambda!48612))))

(declare-fun b!1180484 () Bool)

(declare-fun e!757636 () Bool)

(assert (=> b!1180484 (= e!757636 true)))

(declare-fun b!1180483 () Bool)

(declare-fun e!757635 () Bool)

(assert (=> b!1180483 (= e!757635 e!757636)))

(declare-fun b!1180482 () Bool)

(declare-fun e!757634 () Bool)

(assert (=> b!1180482 (= e!757634 e!757635)))

(assert (=> d!337817 e!757634))

(assert (= b!1180483 b!1180484))

(assert (= b!1180482 b!1180483))

(assert (= (and d!337817 (is-Cons!11740 rules!4386)) b!1180482))

(assert (=> b!1180484 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48620))))

(assert (=> b!1180484 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48620))))

(assert (=> d!337817 true))

(declare-fun e!757633 () Bool)

(assert (=> d!337817 e!757633))

(declare-fun res!533598 () Bool)

(assert (=> d!337817 (=> (not res!533598) (not e!757633))))

(declare-fun lt!406539 () Bool)

(assert (=> d!337817 (= res!533598 (= lt!406539 (forall!3109 (list!4335 (seqFromList!1531 lt!406517)) lambda!48620)))))

(declare-fun forall!3111 (BalanceConc!7720 Int) Bool)

(assert (=> d!337817 (= lt!406539 (forall!3111 (seqFromList!1531 lt!406517) lambda!48620))))

(assert (=> d!337817 (not (isEmpty!7089 rules!4386))))

(assert (=> d!337817 (= (rulesProduceEachTokenIndividually!765 thiss!27592 rules!4386 (seqFromList!1531 lt!406517)) lt!406539)))

(declare-fun b!1180481 () Bool)

(assert (=> b!1180481 (= e!757633 (= lt!406539 (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 (list!4335 (seqFromList!1531 lt!406517)))))))

(assert (= (and d!337817 res!533598) b!1180481))

(assert (=> d!337817 m!1356537))

(declare-fun m!1356615 () Bool)

(assert (=> d!337817 m!1356615))

(assert (=> d!337817 m!1356615))

(declare-fun m!1356617 () Bool)

(assert (=> d!337817 m!1356617))

(assert (=> d!337817 m!1356537))

(declare-fun m!1356619 () Bool)

(assert (=> d!337817 m!1356619))

(assert (=> d!337817 m!1356531))

(assert (=> b!1180481 m!1356537))

(assert (=> b!1180481 m!1356615))

(assert (=> b!1180481 m!1356615))

(declare-fun m!1356621 () Bool)

(assert (=> b!1180481 m!1356621))

(assert (=> b!1180382 d!337817))

(declare-fun d!337819 () Bool)

(declare-fun fromListB!678 (List!11765) BalanceConc!7720)

(assert (=> d!337819 (= (seqFromList!1531 lt!406517) (fromListB!678 lt!406517))))

(declare-fun bs!286869 () Bool)

(assert (= bs!286869 d!337819))

(declare-fun m!1356623 () Bool)

(assert (=> bs!286869 m!1356623))

(assert (=> b!1180382 d!337819))

(declare-fun d!337821 () Bool)

(declare-fun res!533614 () Bool)

(declare-fun e!757655 () Bool)

(assert (=> d!337821 (=> res!533614 e!757655)))

(assert (=> d!337821 (= res!533614 (or (not (is-Cons!11741 l!6534)) (not (is-Cons!11741 (t!111367 l!6534)))))))

(assert (=> d!337821 (= (tokensListTwoByTwoPredicateSeparableList!133 thiss!27592 l!6534 rules!4386) e!757655)))

(declare-fun b!1180507 () Bool)

(declare-fun e!757656 () Bool)

(assert (=> b!1180507 (= e!757655 e!757656)))

(declare-fun res!533615 () Bool)

(assert (=> b!1180507 (=> (not res!533615) (not e!757656))))

(declare-fun separableTokensPredicate!149 (LexerInterface!1739 Token!3750 Token!3750 List!11764) Bool)

(assert (=> b!1180507 (= res!533615 (separableTokensPredicate!149 thiss!27592 (h!17142 l!6534) (h!17142 (t!111367 l!6534)) rules!4386))))

(declare-fun lt!406567 () Unit!18061)

(declare-fun Unit!18066 () Unit!18061)

(assert (=> b!1180507 (= lt!406567 Unit!18066)))

(declare-fun size!9287 (BalanceConc!7718) Int)

(declare-fun charsOf!1087 (Token!3750) BalanceConc!7718)

(assert (=> b!1180507 (> (size!9287 (charsOf!1087 (h!17142 (t!111367 l!6534)))) 0)))

(declare-fun lt!406565 () Unit!18061)

(declare-fun Unit!18067 () Unit!18061)

(assert (=> b!1180507 (= lt!406565 Unit!18067)))

(assert (=> b!1180507 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 (t!111367 l!6534)))))

(declare-fun lt!406568 () Unit!18061)

(declare-fun Unit!18068 () Unit!18061)

(assert (=> b!1180507 (= lt!406568 Unit!18068)))

(assert (=> b!1180507 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 l!6534))))

(declare-fun lt!406569 () Unit!18061)

(declare-fun lt!406566 () Unit!18061)

(assert (=> b!1180507 (= lt!406569 lt!406566)))

(assert (=> b!1180507 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 (t!111367 l!6534)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!308 (LexerInterface!1739 List!11764 List!11765 Token!3750) Unit!18061)

(assert (=> b!1180507 (= lt!406566 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!308 thiss!27592 rules!4386 l!6534 (h!17142 (t!111367 l!6534))))))

(declare-fun lt!406563 () Unit!18061)

(declare-fun lt!406564 () Unit!18061)

(assert (=> b!1180507 (= lt!406563 lt!406564)))

(assert (=> b!1180507 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 l!6534))))

(assert (=> b!1180507 (= lt!406564 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!308 thiss!27592 rules!4386 l!6534 (h!17142 l!6534)))))

(declare-fun b!1180508 () Bool)

(assert (=> b!1180508 (= e!757656 (tokensListTwoByTwoPredicateSeparableList!133 thiss!27592 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534))) rules!4386))))

(assert (= (and d!337821 (not res!533614)) b!1180507))

(assert (= (and b!1180507 res!533615) b!1180508))

(declare-fun m!1356647 () Bool)

(assert (=> b!1180507 m!1356647))

(declare-fun m!1356649 () Bool)

(assert (=> b!1180507 m!1356649))

(declare-fun m!1356651 () Bool)

(assert (=> b!1180507 m!1356651))

(declare-fun m!1356653 () Bool)

(assert (=> b!1180507 m!1356653))

(declare-fun m!1356655 () Bool)

(assert (=> b!1180507 m!1356655))

(assert (=> b!1180507 m!1356651))

(declare-fun m!1356657 () Bool)

(assert (=> b!1180507 m!1356657))

(declare-fun m!1356659 () Bool)

(assert (=> b!1180507 m!1356659))

(declare-fun m!1356661 () Bool)

(assert (=> b!1180508 m!1356661))

(assert (=> b!1180380 d!337821))

(declare-fun b!1180531 () Bool)

(declare-fun e!757671 () Bool)

(declare-fun inv!16 (TokenValue!2110) Bool)

(assert (=> b!1180531 (= e!757671 (inv!16 (value!66312 (h!17142 l!6534))))))

(declare-fun b!1180532 () Bool)

(declare-fun e!757673 () Bool)

(assert (=> b!1180532 (= e!757671 e!757673)))

(declare-fun c!196715 () Bool)

(assert (=> b!1180532 (= c!196715 (is-IntegerValue!6331 (value!66312 (h!17142 l!6534))))))

(declare-fun d!337833 () Bool)

(declare-fun c!196714 () Bool)

(assert (=> d!337833 (= c!196714 (is-IntegerValue!6330 (value!66312 (h!17142 l!6534))))))

(assert (=> d!337833 (= (inv!21 (value!66312 (h!17142 l!6534))) e!757671)))

(declare-fun b!1180533 () Bool)

(declare-fun e!757672 () Bool)

(declare-fun inv!15 (TokenValue!2110) Bool)

(assert (=> b!1180533 (= e!757672 (inv!15 (value!66312 (h!17142 l!6534))))))

(declare-fun b!1180534 () Bool)

(declare-fun inv!17 (TokenValue!2110) Bool)

(assert (=> b!1180534 (= e!757673 (inv!17 (value!66312 (h!17142 l!6534))))))

(declare-fun b!1180535 () Bool)

(declare-fun res!533622 () Bool)

(assert (=> b!1180535 (=> res!533622 e!757672)))

(assert (=> b!1180535 (= res!533622 (not (is-IntegerValue!6332 (value!66312 (h!17142 l!6534)))))))

(assert (=> b!1180535 (= e!757673 e!757672)))

(assert (= (and d!337833 c!196714) b!1180531))

(assert (= (and d!337833 (not c!196714)) b!1180532))

(assert (= (and b!1180532 c!196715) b!1180534))

(assert (= (and b!1180532 (not c!196715)) b!1180535))

(assert (= (and b!1180535 (not res!533622)) b!1180533))

(declare-fun m!1356663 () Bool)

(assert (=> b!1180531 m!1356663))

(declare-fun m!1356665 () Bool)

(assert (=> b!1180533 m!1356665))

(declare-fun m!1356667 () Bool)

(assert (=> b!1180534 m!1356667))

(assert (=> b!1180381 d!337833))

(declare-fun bs!286874 () Bool)

(declare-fun d!337835 () Bool)

(assert (= bs!286874 (and d!337835 b!1180375)))

(declare-fun lambda!48628 () Int)

(assert (=> bs!286874 (= (= thiss!27592 Lexer!1737) (= lambda!48628 lambda!48612))))

(declare-fun bs!286875 () Bool)

(assert (= bs!286875 (and d!337835 d!337817)))

(assert (=> bs!286875 (= lambda!48628 lambda!48620)))

(declare-fun b!1180569 () Bool)

(declare-fun e!757699 () Bool)

(assert (=> b!1180569 (= e!757699 true)))

(declare-fun b!1180568 () Bool)

(declare-fun e!757698 () Bool)

(assert (=> b!1180568 (= e!757698 e!757699)))

(declare-fun b!1180567 () Bool)

(declare-fun e!757697 () Bool)

(assert (=> b!1180567 (= e!757697 e!757698)))

(assert (=> d!337835 e!757697))

(assert (= b!1180568 b!1180569))

(assert (= b!1180567 b!1180568))

(assert (= (and d!337835 (is-Cons!11740 rules!4386)) b!1180567))

(assert (=> b!1180569 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48628))))

(assert (=> b!1180569 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48628))))

(assert (=> d!337835 true))

(declare-fun lt!406575 () Bool)

(assert (=> d!337835 (= lt!406575 (forall!3109 (t!111367 lt!406517) lambda!48628))))

(declare-fun e!757695 () Bool)

(assert (=> d!337835 (= lt!406575 e!757695)))

(declare-fun res!533637 () Bool)

(assert (=> d!337835 (=> res!533637 e!757695)))

(assert (=> d!337835 (= res!533637 (not (is-Cons!11741 (t!111367 lt!406517))))))

(assert (=> d!337835 (not (isEmpty!7089 rules!4386))))

(assert (=> d!337835 (= (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 (t!111367 lt!406517)) lt!406575)))

(declare-fun b!1180565 () Bool)

(declare-fun e!757696 () Bool)

(assert (=> b!1180565 (= e!757695 e!757696)))

(declare-fun res!533636 () Bool)

(assert (=> b!1180565 (=> (not res!533636) (not e!757696))))

(assert (=> b!1180565 (= res!533636 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 (t!111367 lt!406517))))))

(declare-fun b!1180566 () Bool)

(assert (=> b!1180566 (= e!757696 (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 (t!111367 (t!111367 lt!406517))))))

(assert (= (and d!337835 (not res!533637)) b!1180565))

(assert (= (and b!1180565 res!533636) b!1180566))

(declare-fun m!1356683 () Bool)

(assert (=> d!337835 m!1356683))

(assert (=> d!337835 m!1356531))

(declare-fun m!1356685 () Bool)

(assert (=> b!1180565 m!1356685))

(declare-fun m!1356687 () Bool)

(assert (=> b!1180566 m!1356687))

(assert (=> b!1180370 d!337835))

(declare-fun bs!286876 () Bool)

(declare-fun d!337841 () Bool)

(assert (= bs!286876 (and d!337841 b!1180375)))

(declare-fun lambda!48629 () Int)

(assert (=> bs!286876 (= (= thiss!27592 Lexer!1737) (= lambda!48629 lambda!48612))))

(declare-fun bs!286877 () Bool)

(assert (= bs!286877 (and d!337841 d!337817)))

(assert (=> bs!286877 (= lambda!48629 lambda!48620)))

(declare-fun bs!286878 () Bool)

(assert (= bs!286878 (and d!337841 d!337835)))

(assert (=> bs!286878 (= lambda!48629 lambda!48628)))

(declare-fun b!1180574 () Bool)

(declare-fun e!757704 () Bool)

(assert (=> b!1180574 (= e!757704 true)))

(declare-fun b!1180573 () Bool)

(declare-fun e!757703 () Bool)

(assert (=> b!1180573 (= e!757703 e!757704)))

(declare-fun b!1180572 () Bool)

(declare-fun e!757702 () Bool)

(assert (=> b!1180572 (= e!757702 e!757703)))

(assert (=> d!337841 e!757702))

(assert (= b!1180573 b!1180574))

(assert (= b!1180572 b!1180573))

(assert (= (and d!337841 (is-Cons!11740 rules!4386)) b!1180572))

(assert (=> b!1180574 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48629))))

(assert (=> b!1180574 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48629))))

(assert (=> d!337841 true))

(declare-fun lt!406576 () Bool)

(assert (=> d!337841 (= lt!406576 (forall!3109 l!6534 lambda!48629))))

(declare-fun e!757700 () Bool)

(assert (=> d!337841 (= lt!406576 e!757700)))

(declare-fun res!533639 () Bool)

(assert (=> d!337841 (=> res!533639 e!757700)))

(assert (=> d!337841 (= res!533639 (not (is-Cons!11741 l!6534)))))

(assert (=> d!337841 (not (isEmpty!7089 rules!4386))))

(assert (=> d!337841 (= (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 l!6534) lt!406576)))

(declare-fun b!1180570 () Bool)

(declare-fun e!757701 () Bool)

(assert (=> b!1180570 (= e!757700 e!757701)))

(declare-fun res!533638 () Bool)

(assert (=> b!1180570 (=> (not res!533638) (not e!757701))))

(assert (=> b!1180570 (= res!533638 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 l!6534)))))

(declare-fun b!1180571 () Bool)

(assert (=> b!1180571 (= e!757701 (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 (t!111367 l!6534)))))

(assert (= (and d!337841 (not res!533639)) b!1180570))

(assert (= (and b!1180570 res!533638) b!1180571))

(declare-fun m!1356689 () Bool)

(assert (=> d!337841 m!1356689))

(assert (=> d!337841 m!1356531))

(assert (=> b!1180570 m!1356657))

(declare-fun m!1356691 () Bool)

(assert (=> b!1180571 m!1356691))

(assert (=> b!1180376 d!337841))

(declare-fun d!337843 () Bool)

(declare-fun res!533646 () Bool)

(declare-fun e!757711 () Bool)

(assert (=> d!337843 (=> (not res!533646) (not e!757711))))

(declare-fun rulesValid!726 (LexerInterface!1739 List!11764) Bool)

(assert (=> d!337843 (= res!533646 (rulesValid!726 thiss!27592 rules!4386))))

(assert (=> d!337843 (= (rulesInvariant!1613 thiss!27592 rules!4386) e!757711)))

(declare-fun b!1180581 () Bool)

(declare-datatypes ((List!11770 0))(
  ( (Nil!11746) (Cons!11746 (h!17147 String!14220) (t!111400 List!11770)) )
))
(declare-fun noDuplicateTag!726 (LexerInterface!1739 List!11764 List!11770) Bool)

(assert (=> b!1180581 (= e!757711 (noDuplicateTag!726 thiss!27592 rules!4386 Nil!11746))))

(assert (= (and d!337843 res!533646) b!1180581))

(declare-fun m!1356693 () Bool)

(assert (=> d!337843 m!1356693))

(declare-fun m!1356695 () Bool)

(assert (=> b!1180581 m!1356695))

(assert (=> b!1180377 d!337843))

(declare-fun bs!286879 () Bool)

(declare-fun d!337845 () Bool)

(assert (= bs!286879 (and d!337845 b!1180375)))

(declare-fun lambda!48632 () Int)

(assert (=> bs!286879 (= (= thiss!27592 Lexer!1737) (= lambda!48632 lambda!48612))))

(declare-fun bs!286880 () Bool)

(assert (= bs!286880 (and d!337845 d!337817)))

(assert (=> bs!286880 (= lambda!48632 lambda!48620)))

(declare-fun bs!286881 () Bool)

(assert (= bs!286881 (and d!337845 d!337835)))

(assert (=> bs!286881 (= lambda!48632 lambda!48628)))

(declare-fun bs!286882 () Bool)

(assert (= bs!286882 (and d!337845 d!337841)))

(assert (=> bs!286882 (= lambda!48632 lambda!48629)))

(declare-fun b!1180586 () Bool)

(declare-fun e!757716 () Bool)

(assert (=> b!1180586 (= e!757716 true)))

(declare-fun b!1180585 () Bool)

(declare-fun e!757715 () Bool)

(assert (=> b!1180585 (= e!757715 e!757716)))

(declare-fun b!1180584 () Bool)

(declare-fun e!757714 () Bool)

(assert (=> b!1180584 (= e!757714 e!757715)))

(assert (=> d!337845 e!757714))

(assert (= b!1180585 b!1180586))

(assert (= b!1180584 b!1180585))

(assert (= (and d!337845 (is-Cons!11740 rules!4386)) b!1180584))

(assert (=> b!1180586 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48632))))

(assert (=> b!1180586 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48632))))

(assert (=> d!337845 true))

(declare-fun lt!406579 () Bool)

(assert (=> d!337845 (= lt!406579 (forall!3109 lt!406517 lambda!48632))))

(declare-fun e!757712 () Bool)

(assert (=> d!337845 (= lt!406579 e!757712)))

(declare-fun res!533648 () Bool)

(assert (=> d!337845 (=> res!533648 e!757712)))

(assert (=> d!337845 (= res!533648 (not (is-Cons!11741 lt!406517)))))

(assert (=> d!337845 (not (isEmpty!7089 rules!4386))))

(assert (=> d!337845 (= (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 lt!406517) lt!406579)))

(declare-fun b!1180582 () Bool)

(declare-fun e!757713 () Bool)

(assert (=> b!1180582 (= e!757712 e!757713)))

(declare-fun res!533647 () Bool)

(assert (=> b!1180582 (=> (not res!533647) (not e!757713))))

(assert (=> b!1180582 (= res!533647 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 lt!406517)))))

(declare-fun b!1180583 () Bool)

(assert (=> b!1180583 (= e!757713 (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 (t!111367 lt!406517)))))

(assert (= (and d!337845 (not res!533648)) b!1180582))

(assert (= (and b!1180582 res!533647) b!1180583))

(declare-fun m!1356697 () Bool)

(assert (=> d!337845 m!1356697))

(assert (=> d!337845 m!1356531))

(assert (=> b!1180582 m!1356523))

(assert (=> b!1180583 m!1356527))

(assert (=> b!1180375 d!337845))

(declare-fun d!337847 () Bool)

(assert (=> d!337847 (subseq!302 (drop!524 l!6534 i!1621) l!6534)))

(declare-fun lt!406583 () Unit!18061)

(declare-fun choose!7640 (List!11765 Int) Unit!18061)

(assert (=> d!337847 (= lt!406583 (choose!7640 l!6534 i!1621))))

(assert (=> d!337847 (= (lemmaDropSubseq!65 l!6534 i!1621) lt!406583)))

(declare-fun bs!286885 () Bool)

(assert (= bs!286885 d!337847))

(assert (=> bs!286885 m!1356509))

(assert (=> bs!286885 m!1356509))

(declare-fun m!1356701 () Bool)

(assert (=> bs!286885 m!1356701))

(declare-fun m!1356703 () Bool)

(assert (=> bs!286885 m!1356703))

(assert (=> b!1180375 d!337847))

(declare-fun d!337851 () Bool)

(assert (=> d!337851 (forall!3109 lt!406517 lambda!48612)))

(declare-fun lt!406586 () Unit!18061)

(declare-fun choose!7641 (List!11765 List!11765 Int) Unit!18061)

(assert (=> d!337851 (= lt!406586 (choose!7641 lt!406517 l!6534 lambda!48612))))

(assert (=> d!337851 (forall!3109 l!6534 lambda!48612)))

(assert (=> d!337851 (= (lemmaForallSubseq!172 lt!406517 l!6534 lambda!48612) lt!406586)))

(declare-fun bs!286886 () Bool)

(assert (= bs!286886 d!337851))

(assert (=> bs!286886 m!1356517))

(declare-fun m!1356705 () Bool)

(assert (=> bs!286886 m!1356705))

(declare-fun m!1356707 () Bool)

(assert (=> bs!286886 m!1356707))

(assert (=> b!1180375 d!337851))

(declare-fun d!337853 () Bool)

(declare-fun res!533655 () Bool)

(declare-fun e!757726 () Bool)

(assert (=> d!337853 (=> res!533655 e!757726)))

(assert (=> d!337853 (= res!533655 (is-Nil!11741 lt!406517))))

(assert (=> d!337853 (= (forall!3109 lt!406517 lambda!48612) e!757726)))

(declare-fun b!1180596 () Bool)

(declare-fun e!757727 () Bool)

(assert (=> b!1180596 (= e!757726 e!757727)))

(declare-fun res!533656 () Bool)

(assert (=> b!1180596 (=> (not res!533656) (not e!757727))))

(declare-fun dynLambda!5203 (Int Token!3750) Bool)

(assert (=> b!1180596 (= res!533656 (dynLambda!5203 lambda!48612 (h!17142 lt!406517)))))

(declare-fun b!1180597 () Bool)

(assert (=> b!1180597 (= e!757727 (forall!3109 (t!111367 lt!406517) lambda!48612))))

(assert (= (and d!337853 (not res!533655)) b!1180596))

(assert (= (and b!1180596 res!533656) b!1180597))

(declare-fun b_lambda!35247 () Bool)

(assert (=> (not b_lambda!35247) (not b!1180596)))

(declare-fun m!1356709 () Bool)

(assert (=> b!1180596 m!1356709))

(declare-fun m!1356711 () Bool)

(assert (=> b!1180597 m!1356711))

(assert (=> b!1180375 d!337853))

(declare-fun b!1180609 () Bool)

(declare-fun e!757738 () Bool)

(assert (=> b!1180609 (= e!757738 (subseq!302 lt!406517 (t!111367 l!6534)))))

(declare-fun b!1180606 () Bool)

(declare-fun e!757739 () Bool)

(declare-fun e!757737 () Bool)

(assert (=> b!1180606 (= e!757739 e!757737)))

(declare-fun res!533666 () Bool)

(assert (=> b!1180606 (=> (not res!533666) (not e!757737))))

(assert (=> b!1180606 (= res!533666 (is-Cons!11741 l!6534))))

(declare-fun b!1180607 () Bool)

(assert (=> b!1180607 (= e!757737 e!757738)))

(declare-fun res!533665 () Bool)

(assert (=> b!1180607 (=> res!533665 e!757738)))

(declare-fun e!757736 () Bool)

(assert (=> b!1180607 (= res!533665 e!757736)))

(declare-fun res!533668 () Bool)

(assert (=> b!1180607 (=> (not res!533668) (not e!757736))))

(assert (=> b!1180607 (= res!533668 (= (h!17142 lt!406517) (h!17142 l!6534)))))

(declare-fun b!1180608 () Bool)

(assert (=> b!1180608 (= e!757736 (subseq!302 (t!111367 lt!406517) (t!111367 l!6534)))))

(declare-fun d!337855 () Bool)

(declare-fun res!533667 () Bool)

(assert (=> d!337855 (=> res!533667 e!757739)))

(assert (=> d!337855 (= res!533667 (is-Nil!11741 lt!406517))))

(assert (=> d!337855 (= (subseq!302 lt!406517 l!6534) e!757739)))

(assert (= (and d!337855 (not res!533667)) b!1180606))

(assert (= (and b!1180606 res!533666) b!1180607))

(assert (= (and b!1180607 res!533668) b!1180608))

(assert (= (and b!1180607 (not res!533665)) b!1180609))

(declare-fun m!1356713 () Bool)

(assert (=> b!1180609 m!1356713))

(declare-fun m!1356715 () Bool)

(assert (=> b!1180608 m!1356715))

(assert (=> b!1180375 d!337855))

(declare-fun b!1180628 () Bool)

(declare-fun e!757753 () List!11765)

(assert (=> b!1180628 (= e!757753 Nil!11741)))

(declare-fun b!1180629 () Bool)

(declare-fun e!757751 () Int)

(declare-fun e!757750 () Int)

(assert (=> b!1180629 (= e!757751 e!757750)))

(declare-fun c!196733 () Bool)

(declare-fun call!82588 () Int)

(assert (=> b!1180629 (= c!196733 (>= i!1621 call!82588))))

(declare-fun b!1180630 () Bool)

(declare-fun e!757754 () List!11765)

(assert (=> b!1180630 (= e!757753 e!757754)))

(declare-fun c!196732 () Bool)

(assert (=> b!1180630 (= c!196732 (<= i!1621 0))))

(declare-fun b!1180631 () Bool)

(declare-fun e!757752 () Bool)

(declare-fun lt!406589 () List!11765)

(declare-fun size!9288 (List!11765) Int)

(assert (=> b!1180631 (= e!757752 (= (size!9288 lt!406589) e!757751))))

(declare-fun c!196734 () Bool)

(assert (=> b!1180631 (= c!196734 (<= i!1621 0))))

(declare-fun d!337857 () Bool)

(assert (=> d!337857 e!757752))

(declare-fun res!533671 () Bool)

(assert (=> d!337857 (=> (not res!533671) (not e!757752))))

(declare-fun content!1633 (List!11765) (Set Token!3750))

(assert (=> d!337857 (= res!533671 (set.subset (content!1633 lt!406589) (content!1633 l!6534)))))

(assert (=> d!337857 (= lt!406589 e!757753)))

(declare-fun c!196735 () Bool)

(assert (=> d!337857 (= c!196735 (is-Nil!11741 l!6534))))

(assert (=> d!337857 (= (drop!524 l!6534 i!1621) lt!406589)))

(declare-fun b!1180632 () Bool)

(assert (=> b!1180632 (= e!757750 0)))

(declare-fun b!1180633 () Bool)

(assert (=> b!1180633 (= e!757751 call!82588)))

(declare-fun bm!82583 () Bool)

(assert (=> bm!82583 (= call!82588 (size!9288 l!6534))))

(declare-fun b!1180634 () Bool)

(assert (=> b!1180634 (= e!757754 l!6534)))

(declare-fun b!1180635 () Bool)

(assert (=> b!1180635 (= e!757750 (- call!82588 i!1621))))

(declare-fun b!1180636 () Bool)

(assert (=> b!1180636 (= e!757754 (drop!524 (t!111367 l!6534) (- i!1621 1)))))

(assert (= (and d!337857 c!196735) b!1180628))

(assert (= (and d!337857 (not c!196735)) b!1180630))

(assert (= (and b!1180630 c!196732) b!1180634))

(assert (= (and b!1180630 (not c!196732)) b!1180636))

(assert (= (and d!337857 res!533671) b!1180631))

(assert (= (and b!1180631 c!196734) b!1180633))

(assert (= (and b!1180631 (not c!196734)) b!1180629))

(assert (= (and b!1180629 c!196733) b!1180632))

(assert (= (and b!1180629 (not c!196733)) b!1180635))

(assert (= (or b!1180633 b!1180629 b!1180635) bm!82583))

(declare-fun m!1356717 () Bool)

(assert (=> b!1180631 m!1356717))

(declare-fun m!1356719 () Bool)

(assert (=> d!337857 m!1356719))

(declare-fun m!1356721 () Bool)

(assert (=> d!337857 m!1356721))

(declare-fun m!1356723 () Bool)

(assert (=> bm!82583 m!1356723))

(declare-fun m!1356725 () Bool)

(assert (=> b!1180636 m!1356725))

(assert (=> b!1180375 d!337857))

(declare-fun d!337859 () Bool)

(assert (=> d!337859 (= (isEmpty!7089 rules!4386) (is-Nil!11740 rules!4386))))

(assert (=> b!1180385 d!337859))

(declare-fun d!337861 () Bool)

(assert (=> d!337861 (= (inv!15556 (tag!2306 (h!17141 rules!4386))) (= (mod (str.len (value!66311 (tag!2306 (h!17141 rules!4386)))) 2) 0))))

(assert (=> b!1180374 d!337861))

(declare-fun d!337863 () Bool)

(declare-fun res!533674 () Bool)

(declare-fun e!757757 () Bool)

(assert (=> d!337863 (=> (not res!533674) (not e!757757))))

(declare-fun semiInverseModEq!738 (Int Int) Bool)

(assert (=> d!337863 (= res!533674 (semiInverseModEq!738 (toChars!3008 (transformation!2044 (h!17141 rules!4386))) (toValue!3149 (transformation!2044 (h!17141 rules!4386)))))))

(assert (=> d!337863 (= (inv!15559 (transformation!2044 (h!17141 rules!4386))) e!757757)))

(declare-fun b!1180639 () Bool)

(declare-fun equivClasses!705 (Int Int) Bool)

(assert (=> b!1180639 (= e!757757 (equivClasses!705 (toChars!3008 (transformation!2044 (h!17141 rules!4386))) (toValue!3149 (transformation!2044 (h!17141 rules!4386)))))))

(assert (= (and d!337863 res!533674) b!1180639))

(declare-fun m!1356727 () Bool)

(assert (=> d!337863 m!1356727))

(declare-fun m!1356729 () Bool)

(assert (=> b!1180639 m!1356729))

(assert (=> b!1180374 d!337863))

(declare-fun d!337865 () Bool)

(declare-fun res!533679 () Bool)

(declare-fun e!757760 () Bool)

(assert (=> d!337865 (=> (not res!533679) (not e!757760))))

(declare-fun isEmpty!7092 (List!11762) Bool)

(assert (=> d!337865 (= res!533679 (not (isEmpty!7092 (originalCharacters!2598 (h!17142 l!6534)))))))

(assert (=> d!337865 (= (inv!15560 (h!17142 l!6534)) e!757760)))

(declare-fun b!1180644 () Bool)

(declare-fun res!533680 () Bool)

(assert (=> b!1180644 (=> (not res!533680) (not e!757760))))

(declare-fun list!4336 (BalanceConc!7718) List!11762)

(declare-fun dynLambda!5204 (Int TokenValue!2110) BalanceConc!7718)

(assert (=> b!1180644 (= res!533680 (= (originalCharacters!2598 (h!17142 l!6534)) (list!4336 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534))))))))

(declare-fun b!1180645 () Bool)

(declare-fun size!9289 (List!11762) Int)

(assert (=> b!1180645 (= e!757760 (= (size!9284 (h!17142 l!6534)) (size!9289 (originalCharacters!2598 (h!17142 l!6534)))))))

(assert (= (and d!337865 res!533679) b!1180644))

(assert (= (and b!1180644 res!533680) b!1180645))

(declare-fun b_lambda!35249 () Bool)

(assert (=> (not b_lambda!35249) (not b!1180644)))

(declare-fun t!111392 () Bool)

(declare-fun tb!66097 () Bool)

(assert (=> (and b!1180379 (= (toChars!3008 (transformation!2044 (h!17141 rules!4386))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534))))) t!111392) tb!66097))

(declare-fun b!1180650 () Bool)

(declare-fun e!757763 () Bool)

(declare-fun tp!336150 () Bool)

(declare-fun inv!15563 (Conc!3848) Bool)

(assert (=> b!1180650 (= e!757763 (and (inv!15563 (c!196699 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534))))) tp!336150))))

(declare-fun result!79292 () Bool)

(declare-fun inv!15564 (BalanceConc!7718) Bool)

(assert (=> tb!66097 (= result!79292 (and (inv!15564 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534)))) e!757763))))

(assert (= tb!66097 b!1180650))

(declare-fun m!1356731 () Bool)

(assert (=> b!1180650 m!1356731))

(declare-fun m!1356733 () Bool)

(assert (=> tb!66097 m!1356733))

(assert (=> b!1180644 t!111392))

(declare-fun b_and!81041 () Bool)

(assert (= b_and!81023 (and (=> t!111392 result!79292) b_and!81041)))

(declare-fun t!111394 () Bool)

(declare-fun tb!66099 () Bool)

(assert (=> (and b!1180384 (= (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534))))) t!111394) tb!66099))

(declare-fun result!79296 () Bool)

(assert (= result!79296 result!79292))

(assert (=> b!1180644 t!111394))

(declare-fun b_and!81043 () Bool)

(assert (= b_and!81027 (and (=> t!111394 result!79296) b_and!81043)))

(declare-fun m!1356735 () Bool)

(assert (=> d!337865 m!1356735))

(declare-fun m!1356737 () Bool)

(assert (=> b!1180644 m!1356737))

(assert (=> b!1180644 m!1356737))

(declare-fun m!1356739 () Bool)

(assert (=> b!1180644 m!1356739))

(declare-fun m!1356741 () Bool)

(assert (=> b!1180645 m!1356741))

(assert (=> b!1180383 d!337865))

(declare-fun d!337867 () Bool)

(assert (=> d!337867 (= (inv!15556 (tag!2306 (rule!3465 (h!17142 l!6534)))) (= (mod (str.len (value!66311 (tag!2306 (rule!3465 (h!17142 l!6534))))) 2) 0))))

(assert (=> b!1180373 d!337867))

(declare-fun d!337869 () Bool)

(declare-fun res!533681 () Bool)

(declare-fun e!757764 () Bool)

(assert (=> d!337869 (=> (not res!533681) (not e!757764))))

(assert (=> d!337869 (= res!533681 (semiInverseModEq!738 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (toValue!3149 (transformation!2044 (rule!3465 (h!17142 l!6534))))))))

(assert (=> d!337869 (= (inv!15559 (transformation!2044 (rule!3465 (h!17142 l!6534)))) e!757764)))

(declare-fun b!1180651 () Bool)

(assert (=> b!1180651 (= e!757764 (equivClasses!705 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (toValue!3149 (transformation!2044 (rule!3465 (h!17142 l!6534))))))))

(assert (= (and d!337869 res!533681) b!1180651))

(declare-fun m!1356743 () Bool)

(assert (=> d!337869 m!1356743))

(declare-fun m!1356745 () Bool)

(assert (=> b!1180651 m!1356745))

(assert (=> b!1180373 d!337869))

(declare-fun b!1180656 () Bool)

(declare-fun e!757767 () Bool)

(declare-fun tp_is_empty!5805 () Bool)

(declare-fun tp!336153 () Bool)

(assert (=> b!1180656 (= e!757767 (and tp_is_empty!5805 tp!336153))))

(assert (=> b!1180381 (= tp!336112 e!757767)))

(assert (= (and b!1180381 (is-Cons!11738 (originalCharacters!2598 (h!17142 l!6534)))) b!1180656))

(declare-fun b!1180659 () Bool)

(declare-fun e!757770 () Bool)

(assert (=> b!1180659 (= e!757770 true)))

(declare-fun b!1180658 () Bool)

(declare-fun e!757769 () Bool)

(assert (=> b!1180658 (= e!757769 e!757770)))

(declare-fun b!1180657 () Bool)

(declare-fun e!757768 () Bool)

(assert (=> b!1180657 (= e!757768 e!757769)))

(assert (=> b!1180394 e!757768))

(assert (= b!1180658 b!1180659))

(assert (= b!1180657 b!1180658))

(assert (= (and b!1180394 (is-Cons!11740 (t!111366 rules!4386))) b!1180657))

(assert (=> b!1180659 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 (t!111366 rules!4386))))) (dynLambda!5198 order!7225 lambda!48612))))

(assert (=> b!1180659 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (h!17141 (t!111366 rules!4386))))) (dynLambda!5198 order!7225 lambda!48612))))

(declare-fun b!1180671 () Bool)

(declare-fun e!757773 () Bool)

(declare-fun tp!336167 () Bool)

(declare-fun tp!336164 () Bool)

(assert (=> b!1180671 (= e!757773 (and tp!336167 tp!336164))))

(declare-fun b!1180673 () Bool)

(declare-fun tp!336168 () Bool)

(declare-fun tp!336165 () Bool)

(assert (=> b!1180673 (= e!757773 (and tp!336168 tp!336165))))

(declare-fun b!1180670 () Bool)

(assert (=> b!1180670 (= e!757773 tp_is_empty!5805)))

(declare-fun b!1180672 () Bool)

(declare-fun tp!336166 () Bool)

(assert (=> b!1180672 (= e!757773 tp!336166)))

(assert (=> b!1180374 (= tp!336114 e!757773)))

(assert (= (and b!1180374 (is-ElementMatch!3314 (regex!2044 (h!17141 rules!4386)))) b!1180670))

(assert (= (and b!1180374 (is-Concat!5425 (regex!2044 (h!17141 rules!4386)))) b!1180671))

(assert (= (and b!1180374 (is-Star!3314 (regex!2044 (h!17141 rules!4386)))) b!1180672))

(assert (= (and b!1180374 (is-Union!3314 (regex!2044 (h!17141 rules!4386)))) b!1180673))

(declare-fun b!1180687 () Bool)

(declare-fun b_free!28085 () Bool)

(declare-fun b_next!28789 () Bool)

(assert (=> b!1180687 (= b_free!28085 (not b_next!28789))))

(declare-fun tp!336182 () Bool)

(declare-fun b_and!81045 () Bool)

(assert (=> b!1180687 (= tp!336182 b_and!81045)))

(declare-fun b_free!28087 () Bool)

(declare-fun b_next!28791 () Bool)

(assert (=> b!1180687 (= b_free!28087 (not b_next!28791))))

(declare-fun t!111396 () Bool)

(declare-fun tb!66101 () Bool)

(assert (=> (and b!1180687 (= (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534))))) t!111396) tb!66101))

(declare-fun result!79304 () Bool)

(assert (= result!79304 result!79292))

(assert (=> b!1180644 t!111396))

(declare-fun tp!336179 () Bool)

(declare-fun b_and!81047 () Bool)

(assert (=> b!1180687 (= tp!336179 (and (=> t!111396 result!79304) b_and!81047))))

(declare-fun e!757790 () Bool)

(declare-fun e!757789 () Bool)

(declare-fun b!1180686 () Bool)

(declare-fun tp!336180 () Bool)

(assert (=> b!1180686 (= e!757789 (and tp!336180 (inv!15556 (tag!2306 (rule!3465 (h!17142 (t!111367 l!6534))))) (inv!15559 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))) e!757790))))

(declare-fun e!757786 () Bool)

(declare-fun b!1180685 () Bool)

(declare-fun tp!336183 () Bool)

(assert (=> b!1180685 (= e!757786 (and (inv!21 (value!66312 (h!17142 (t!111367 l!6534)))) e!757789 tp!336183))))

(declare-fun b!1180684 () Bool)

(declare-fun tp!336181 () Bool)

(declare-fun e!757787 () Bool)

(assert (=> b!1180684 (= e!757787 (and (inv!15560 (h!17142 (t!111367 l!6534))) e!757786 tp!336181))))

(assert (=> b!1180687 (= e!757790 (and tp!336182 tp!336179))))

(assert (=> b!1180383 (= tp!336109 e!757787)))

(assert (= b!1180686 b!1180687))

(assert (= b!1180685 b!1180686))

(assert (= b!1180684 b!1180685))

(assert (= (and b!1180383 (is-Cons!11741 (t!111367 l!6534))) b!1180684))

(declare-fun m!1356747 () Bool)

(assert (=> b!1180686 m!1356747))

(declare-fun m!1356749 () Bool)

(assert (=> b!1180686 m!1356749))

(declare-fun m!1356751 () Bool)

(assert (=> b!1180685 m!1356751))

(declare-fun m!1356753 () Bool)

(assert (=> b!1180684 m!1356753))

(declare-fun b!1180698 () Bool)

(declare-fun b_free!28089 () Bool)

(declare-fun b_next!28793 () Bool)

(assert (=> b!1180698 (= b_free!28089 (not b_next!28793))))

(declare-fun tp!336193 () Bool)

(declare-fun b_and!81049 () Bool)

(assert (=> b!1180698 (= tp!336193 b_and!81049)))

(declare-fun b_free!28091 () Bool)

(declare-fun b_next!28795 () Bool)

(assert (=> b!1180698 (= b_free!28091 (not b_next!28795))))

(declare-fun t!111398 () Bool)

(declare-fun tb!66103 () Bool)

(assert (=> (and b!1180698 (= (toChars!3008 (transformation!2044 (h!17141 (t!111366 rules!4386)))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534))))) t!111398) tb!66103))

(declare-fun result!79308 () Bool)

(assert (= result!79308 result!79292))

(assert (=> b!1180644 t!111398))

(declare-fun tp!336192 () Bool)

(declare-fun b_and!81051 () Bool)

(assert (=> b!1180698 (= tp!336192 (and (=> t!111398 result!79308) b_and!81051))))

(declare-fun e!757800 () Bool)

(assert (=> b!1180698 (= e!757800 (and tp!336193 tp!336192))))

(declare-fun e!757802 () Bool)

(declare-fun tp!336195 () Bool)

(declare-fun b!1180697 () Bool)

(assert (=> b!1180697 (= e!757802 (and tp!336195 (inv!15556 (tag!2306 (h!17141 (t!111366 rules!4386)))) (inv!15559 (transformation!2044 (h!17141 (t!111366 rules!4386)))) e!757800))))

(declare-fun b!1180696 () Bool)

(declare-fun e!757801 () Bool)

(declare-fun tp!336194 () Bool)

(assert (=> b!1180696 (= e!757801 (and e!757802 tp!336194))))

(assert (=> b!1180372 (= tp!336116 e!757801)))

(assert (= b!1180697 b!1180698))

(assert (= b!1180696 b!1180697))

(assert (= (and b!1180372 (is-Cons!11740 (t!111366 rules!4386))) b!1180696))

(declare-fun m!1356755 () Bool)

(assert (=> b!1180697 m!1356755))

(declare-fun m!1356757 () Bool)

(assert (=> b!1180697 m!1356757))

(declare-fun b!1180700 () Bool)

(declare-fun e!757804 () Bool)

(declare-fun tp!336199 () Bool)

(declare-fun tp!336196 () Bool)

(assert (=> b!1180700 (= e!757804 (and tp!336199 tp!336196))))

(declare-fun b!1180702 () Bool)

(declare-fun tp!336200 () Bool)

(declare-fun tp!336197 () Bool)

(assert (=> b!1180702 (= e!757804 (and tp!336200 tp!336197))))

(declare-fun b!1180699 () Bool)

(assert (=> b!1180699 (= e!757804 tp_is_empty!5805)))

(declare-fun b!1180701 () Bool)

(declare-fun tp!336198 () Bool)

(assert (=> b!1180701 (= e!757804 tp!336198)))

(assert (=> b!1180373 (= tp!336111 e!757804)))

(assert (= (and b!1180373 (is-ElementMatch!3314 (regex!2044 (rule!3465 (h!17142 l!6534))))) b!1180699))

(assert (= (and b!1180373 (is-Concat!5425 (regex!2044 (rule!3465 (h!17142 l!6534))))) b!1180700))

(assert (= (and b!1180373 (is-Star!3314 (regex!2044 (rule!3465 (h!17142 l!6534))))) b!1180701))

(assert (= (and b!1180373 (is-Union!3314 (regex!2044 (rule!3465 (h!17142 l!6534))))) b!1180702))

(declare-fun b_lambda!35251 () Bool)

(assert (= b_lambda!35249 (or (and b!1180379 b_free!28071 (= (toChars!3008 (transformation!2044 (h!17141 rules!4386))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))))) (and b!1180384 b_free!28075) (and b!1180687 b_free!28087 (= (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))))) (and b!1180698 b_free!28091 (= (toChars!3008 (transformation!2044 (h!17141 (t!111366 rules!4386)))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))))) b_lambda!35251)))

(declare-fun b_lambda!35253 () Bool)

(assert (= b_lambda!35247 (or b!1180375 b_lambda!35253)))

(declare-fun bs!286887 () Bool)

(declare-fun d!337871 () Bool)

(assert (= bs!286887 (and d!337871 b!1180375)))

(assert (=> bs!286887 (= (dynLambda!5203 lambda!48612 (h!17142 lt!406517)) (rulesProduceIndividualToken!772 Lexer!1737 rules!4386 (h!17142 lt!406517)))))

(declare-fun m!1356759 () Bool)

(assert (=> bs!286887 m!1356759))

(assert (=> b!1180596 d!337871))

(push 1)

(assert (not bm!82583))

(assert (not b_next!28789))

(assert (not b!1180476))

(assert b_and!81051)

(assert b_and!81021)

(assert (not b_next!28773))

(assert (not b!1180531))

(assert (not b!1180534))

(assert b_and!81025)

(assert (not d!337863))

(assert (not b!1180508))

(assert (not b!1180685))

(assert b_and!81043)

(assert b_and!81041)

(assert (not b_next!28793))

(assert (not b!1180702))

(assert (not d!337869))

(assert (not d!337843))

(assert (not b_next!28791))

(assert (not b!1180696))

(assert (not b!1180609))

(assert (not b_next!28795))

(assert (not bs!286887))

(assert (not b!1180582))

(assert (not d!337851))

(assert (not b!1180571))

(assert (not b_next!28775))

(assert (not b!1180478))

(assert (not b!1180572))

(assert (not b_lambda!35253))

(assert (not b!1180697))

(assert (not b!1180581))

(assert (not b!1180657))

(assert (not b!1180656))

(assert (not d!337841))

(assert (not b!1180650))

(assert (not b!1180672))

(assert (not b!1180651))

(assert (not b!1180533))

(assert (not b!1180700))

(assert (not d!337847))

(assert (not d!337807))

(assert (not b!1180686))

(assert (not b_next!28779))

(assert (not b!1180645))

(assert (not tb!66097))

(assert (not b!1180597))

(assert tp_is_empty!5805)

(assert (not b!1180565))

(assert (not b!1180673))

(assert (not b!1180570))

(assert (not d!337857))

(assert (not d!337865))

(assert (not b!1180684))

(assert (not b!1180631))

(assert (not b!1180639))

(assert (not b!1180566))

(assert (not b!1180482))

(assert (not b!1180584))

(assert b_and!81047)

(assert (not b!1180583))

(assert (not b!1180701))

(assert (not b!1180481))

(assert b_and!81045)

(assert (not b!1180644))

(assert (not d!337817))

(assert b_and!81049)

(assert (not b_lambda!35251))

(assert (not d!337835))

(assert (not b_next!28777))

(assert (not b!1180671))

(assert (not d!337845))

(assert (not b!1180507))

(assert (not b!1180608))

(assert (not b!1180636))

(assert (not b!1180477))

(assert (not d!337819))

(assert (not b!1180567))

(check-sat)

(pop 1)

(push 1)

(assert b_and!81025)

(assert (not b_next!28791))

(assert (not b_next!28795))

(assert (not b_next!28775))

(assert (not b_next!28789))

(assert (not b_next!28779))

(assert b_and!81051)

(assert b_and!81021)

(assert b_and!81047)

(assert (not b_next!28773))

(assert b_and!81045)

(assert b_and!81049)

(assert (not b_next!28777))

(assert b_and!81043)

(assert b_and!81041)

(assert (not b_next!28793))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!286896 () Bool)

(declare-fun d!337891 () Bool)

(assert (= bs!286896 (and d!337891 d!337841)))

(declare-fun lambda!48636 () Int)

(assert (=> bs!286896 (= lambda!48636 lambda!48629)))

(declare-fun bs!286897 () Bool)

(assert (= bs!286897 (and d!337891 d!337835)))

(assert (=> bs!286897 (= lambda!48636 lambda!48628)))

(declare-fun bs!286898 () Bool)

(assert (= bs!286898 (and d!337891 d!337817)))

(assert (=> bs!286898 (= lambda!48636 lambda!48620)))

(declare-fun bs!286899 () Bool)

(assert (= bs!286899 (and d!337891 b!1180375)))

(assert (=> bs!286899 (= (= thiss!27592 Lexer!1737) (= lambda!48636 lambda!48612))))

(declare-fun bs!286900 () Bool)

(assert (= bs!286900 (and d!337891 d!337845)))

(assert (=> bs!286900 (= lambda!48636 lambda!48632)))

(declare-fun b!1180802 () Bool)

(declare-fun e!757884 () Bool)

(assert (=> b!1180802 (= e!757884 true)))

(declare-fun b!1180801 () Bool)

(declare-fun e!757883 () Bool)

(assert (=> b!1180801 (= e!757883 e!757884)))

(declare-fun b!1180800 () Bool)

(declare-fun e!757882 () Bool)

(assert (=> b!1180800 (= e!757882 e!757883)))

(assert (=> d!337891 e!757882))

(assert (= b!1180801 b!1180802))

(assert (= b!1180800 b!1180801))

(assert (= (and d!337891 (is-Cons!11740 rules!4386)) b!1180800))

(assert (=> b!1180802 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48636))))

(assert (=> b!1180802 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48636))))

(assert (=> d!337891 true))

(declare-fun lt!406619 () Bool)

(assert (=> d!337891 (= lt!406619 (forall!3109 (t!111367 l!6534) lambda!48636))))

(declare-fun e!757880 () Bool)

(assert (=> d!337891 (= lt!406619 e!757880)))

(declare-fun res!533710 () Bool)

(assert (=> d!337891 (=> res!533710 e!757880)))

(assert (=> d!337891 (= res!533710 (not (is-Cons!11741 (t!111367 l!6534))))))

(assert (=> d!337891 (not (isEmpty!7089 rules!4386))))

(assert (=> d!337891 (= (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 (t!111367 l!6534)) lt!406619)))

(declare-fun b!1180798 () Bool)

(declare-fun e!757881 () Bool)

(assert (=> b!1180798 (= e!757880 e!757881)))

(declare-fun res!533709 () Bool)

(assert (=> b!1180798 (=> (not res!533709) (not e!757881))))

(assert (=> b!1180798 (= res!533709 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 (t!111367 l!6534))))))

(declare-fun b!1180799 () Bool)

(assert (=> b!1180799 (= e!757881 (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 (t!111367 (t!111367 l!6534))))))

(assert (= (and d!337891 (not res!533710)) b!1180798))

(assert (= (and b!1180798 res!533709) b!1180799))

(declare-fun m!1356833 () Bool)

(assert (=> d!337891 m!1356833))

(assert (=> d!337891 m!1356531))

(assert (=> b!1180798 m!1356659))

(declare-fun m!1356835 () Bool)

(assert (=> b!1180799 m!1356835))

(assert (=> b!1180571 d!337891))

(declare-fun b!1180803 () Bool)

(declare-fun e!757888 () List!11765)

(assert (=> b!1180803 (= e!757888 Nil!11741)))

(declare-fun b!1180804 () Bool)

(declare-fun e!757886 () Int)

(declare-fun e!757885 () Int)

(assert (=> b!1180804 (= e!757886 e!757885)))

(declare-fun c!196743 () Bool)

(declare-fun call!82589 () Int)

(assert (=> b!1180804 (= c!196743 (>= (- i!1621 1) call!82589))))

(declare-fun b!1180805 () Bool)

(declare-fun e!757889 () List!11765)

(assert (=> b!1180805 (= e!757888 e!757889)))

(declare-fun c!196742 () Bool)

(assert (=> b!1180805 (= c!196742 (<= (- i!1621 1) 0))))

(declare-fun b!1180806 () Bool)

(declare-fun e!757887 () Bool)

(declare-fun lt!406620 () List!11765)

(assert (=> b!1180806 (= e!757887 (= (size!9288 lt!406620) e!757886))))

(declare-fun c!196744 () Bool)

(assert (=> b!1180806 (= c!196744 (<= (- i!1621 1) 0))))

(declare-fun d!337893 () Bool)

(assert (=> d!337893 e!757887))

(declare-fun res!533711 () Bool)

(assert (=> d!337893 (=> (not res!533711) (not e!757887))))

(assert (=> d!337893 (= res!533711 (set.subset (content!1633 lt!406620) (content!1633 (t!111367 l!6534))))))

(assert (=> d!337893 (= lt!406620 e!757888)))

(declare-fun c!196745 () Bool)

(assert (=> d!337893 (= c!196745 (is-Nil!11741 (t!111367 l!6534)))))

(assert (=> d!337893 (= (drop!524 (t!111367 l!6534) (- i!1621 1)) lt!406620)))

(declare-fun b!1180807 () Bool)

(assert (=> b!1180807 (= e!757885 0)))

(declare-fun b!1180808 () Bool)

(assert (=> b!1180808 (= e!757886 call!82589)))

(declare-fun bm!82584 () Bool)

(assert (=> bm!82584 (= call!82589 (size!9288 (t!111367 l!6534)))))

(declare-fun b!1180809 () Bool)

(assert (=> b!1180809 (= e!757889 (t!111367 l!6534))))

(declare-fun b!1180810 () Bool)

(assert (=> b!1180810 (= e!757885 (- call!82589 (- i!1621 1)))))

(declare-fun b!1180811 () Bool)

(assert (=> b!1180811 (= e!757889 (drop!524 (t!111367 (t!111367 l!6534)) (- (- i!1621 1) 1)))))

(assert (= (and d!337893 c!196745) b!1180803))

(assert (= (and d!337893 (not c!196745)) b!1180805))

(assert (= (and b!1180805 c!196742) b!1180809))

(assert (= (and b!1180805 (not c!196742)) b!1180811))

(assert (= (and d!337893 res!533711) b!1180806))

(assert (= (and b!1180806 c!196744) b!1180808))

(assert (= (and b!1180806 (not c!196744)) b!1180804))

(assert (= (and b!1180804 c!196743) b!1180807))

(assert (= (and b!1180804 (not c!196743)) b!1180810))

(assert (= (or b!1180808 b!1180804 b!1180810) bm!82584))

(declare-fun m!1356837 () Bool)

(assert (=> b!1180806 m!1356837))

(declare-fun m!1356839 () Bool)

(assert (=> d!337893 m!1356839))

(declare-fun m!1356841 () Bool)

(assert (=> d!337893 m!1356841))

(declare-fun m!1356843 () Bool)

(assert (=> bm!82584 m!1356843))

(declare-fun m!1356845 () Bool)

(assert (=> b!1180811 m!1356845))

(assert (=> b!1180636 d!337893))

(declare-fun d!337895 () Bool)

(declare-fun isBalanced!1096 (Conc!3848) Bool)

(assert (=> d!337895 (= (inv!15564 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534)))) (isBalanced!1096 (c!196699 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534))))))))

(declare-fun bs!286901 () Bool)

(assert (= bs!286901 d!337895))

(declare-fun m!1356847 () Bool)

(assert (=> bs!286901 m!1356847))

(assert (=> tb!66097 d!337895))

(declare-fun d!337897 () Bool)

(declare-fun lt!406623 () Bool)

(assert (=> d!337897 (= lt!406623 (isEmpty!7092 (list!4336 (_2!6886 lt!406536))))))

(declare-fun isEmpty!7095 (Conc!3848) Bool)

(assert (=> d!337897 (= lt!406623 (isEmpty!7095 (c!196699 (_2!6886 lt!406536))))))

(assert (=> d!337897 (= (isEmpty!7091 (_2!6886 lt!406536)) lt!406623)))

(declare-fun bs!286902 () Bool)

(assert (= bs!286902 d!337897))

(declare-fun m!1356849 () Bool)

(assert (=> bs!286902 m!1356849))

(assert (=> bs!286902 m!1356849))

(declare-fun m!1356851 () Bool)

(assert (=> bs!286902 m!1356851))

(declare-fun m!1356853 () Bool)

(assert (=> bs!286902 m!1356853))

(assert (=> b!1180477 d!337897))

(declare-fun d!337899 () Bool)

(declare-fun lt!406624 () Bool)

(declare-fun e!757890 () Bool)

(assert (=> d!337899 (= lt!406624 e!757890)))

(declare-fun res!533712 () Bool)

(assert (=> d!337899 (=> (not res!533712) (not e!757890))))

(assert (=> d!337899 (= res!533712 (= (list!4335 (_1!6886 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 l!6534)))))) (list!4335 (singletonSeq!706 (h!17142 l!6534)))))))

(declare-fun e!757891 () Bool)

(assert (=> d!337899 (= lt!406624 e!757891)))

(declare-fun res!533714 () Bool)

(assert (=> d!337899 (=> (not res!533714) (not e!757891))))

(declare-fun lt!406625 () tuple2!12078)

(assert (=> d!337899 (= res!533714 (= (size!9286 (_1!6886 lt!406625)) 1))))

(assert (=> d!337899 (= lt!406625 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 l!6534)))))))

(assert (=> d!337899 (not (isEmpty!7089 rules!4386))))

(assert (=> d!337899 (= (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 l!6534)) lt!406624)))

(declare-fun b!1180812 () Bool)

(declare-fun res!533713 () Bool)

(assert (=> b!1180812 (=> (not res!533713) (not e!757891))))

(assert (=> b!1180812 (= res!533713 (= (apply!2565 (_1!6886 lt!406625) 0) (h!17142 l!6534)))))

(declare-fun b!1180813 () Bool)

(assert (=> b!1180813 (= e!757891 (isEmpty!7091 (_2!6886 lt!406625)))))

(declare-fun b!1180814 () Bool)

(assert (=> b!1180814 (= e!757890 (isEmpty!7091 (_2!6886 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 l!6534)))))))))

(assert (= (and d!337899 res!533714) b!1180812))

(assert (= (and b!1180812 res!533713) b!1180813))

(assert (= (and d!337899 res!533712) b!1180814))

(declare-fun m!1356855 () Bool)

(assert (=> d!337899 m!1356855))

(declare-fun m!1356857 () Bool)

(assert (=> d!337899 m!1356857))

(declare-fun m!1356859 () Bool)

(assert (=> d!337899 m!1356859))

(declare-fun m!1356861 () Bool)

(assert (=> d!337899 m!1356861))

(declare-fun m!1356863 () Bool)

(assert (=> d!337899 m!1356863))

(assert (=> d!337899 m!1356861))

(assert (=> d!337899 m!1356861))

(assert (=> d!337899 m!1356857))

(declare-fun m!1356865 () Bool)

(assert (=> d!337899 m!1356865))

(assert (=> d!337899 m!1356531))

(declare-fun m!1356867 () Bool)

(assert (=> b!1180812 m!1356867))

(declare-fun m!1356869 () Bool)

(assert (=> b!1180813 m!1356869))

(assert (=> b!1180814 m!1356861))

(assert (=> b!1180814 m!1356861))

(assert (=> b!1180814 m!1356857))

(assert (=> b!1180814 m!1356857))

(assert (=> b!1180814 m!1356859))

(declare-fun m!1356871 () Bool)

(assert (=> b!1180814 m!1356871))

(assert (=> b!1180570 d!337899))

(declare-fun d!337901 () Bool)

(assert (=> d!337901 true))

(declare-fun lambda!48639 () Int)

(declare-fun order!7235 () Int)

(declare-fun dynLambda!5207 (Int Int) Int)

(assert (=> d!337901 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5207 order!7235 lambda!48639))))

(assert (=> d!337901 true))

(assert (=> d!337901 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5207 order!7235 lambda!48639))))

(declare-fun Forall!443 (Int) Bool)

(assert (=> d!337901 (= (semiInverseModEq!738 (toChars!3008 (transformation!2044 (h!17141 rules!4386))) (toValue!3149 (transformation!2044 (h!17141 rules!4386)))) (Forall!443 lambda!48639))))

(declare-fun bs!286903 () Bool)

(assert (= bs!286903 d!337901))

(declare-fun m!1356873 () Bool)

(assert (=> bs!286903 m!1356873))

(assert (=> d!337863 d!337901))

(declare-fun d!337903 () Bool)

(declare-fun lt!406626 () Bool)

(assert (=> d!337903 (= lt!406626 (isEmpty!7092 (list!4336 (_2!6886 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517))))))))))

(assert (=> d!337903 (= lt!406626 (isEmpty!7095 (c!196699 (_2!6886 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517))))))))))

(assert (=> d!337903 (= (isEmpty!7091 (_2!6886 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517)))))) lt!406626)))

(declare-fun bs!286904 () Bool)

(assert (= bs!286904 d!337903))

(declare-fun m!1356875 () Bool)

(assert (=> bs!286904 m!1356875))

(assert (=> bs!286904 m!1356875))

(declare-fun m!1356877 () Bool)

(assert (=> bs!286904 m!1356877))

(declare-fun m!1356879 () Bool)

(assert (=> bs!286904 m!1356879))

(assert (=> b!1180478 d!337903))

(declare-fun lt!406629 () tuple2!12078)

(declare-fun b!1180829 () Bool)

(declare-fun e!757900 () Bool)

(assert (=> b!1180829 (= e!757900 (= (_2!6886 lt!406629) (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517)))))))

(declare-fun b!1180830 () Bool)

(declare-fun e!757899 () Bool)

(assert (=> b!1180830 (= e!757900 e!757899)))

(declare-fun res!533722 () Bool)

(assert (=> b!1180830 (= res!533722 (< (size!9287 (_2!6886 lt!406629)) (size!9287 (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517))))))))

(assert (=> b!1180830 (=> (not res!533722) (not e!757899))))

(declare-fun b!1180831 () Bool)

(declare-fun res!533721 () Bool)

(declare-fun e!757898 () Bool)

(assert (=> b!1180831 (=> (not res!533721) (not e!757898))))

(declare-datatypes ((tuple2!12082 0))(
  ( (tuple2!12083 (_1!6888 List!11765) (_2!6888 List!11762)) )
))
(declare-fun lexList!417 (LexerInterface!1739 List!11764 List!11762) tuple2!12082)

(assert (=> b!1180831 (= res!533721 (= (list!4335 (_1!6886 lt!406629)) (_1!6888 (lexList!417 thiss!27592 rules!4386 (list!4336 (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517))))))))))

(declare-fun b!1180832 () Bool)

(declare-fun isEmpty!7096 (BalanceConc!7720) Bool)

(assert (=> b!1180832 (= e!757899 (not (isEmpty!7096 (_1!6886 lt!406629))))))

(declare-fun b!1180833 () Bool)

(assert (=> b!1180833 (= e!757898 (= (list!4336 (_2!6886 lt!406629)) (_2!6888 (lexList!417 thiss!27592 rules!4386 (list!4336 (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517))))))))))

(declare-fun d!337905 () Bool)

(assert (=> d!337905 e!757898))

(declare-fun res!533723 () Bool)

(assert (=> d!337905 (=> (not res!533723) (not e!757898))))

(assert (=> d!337905 (= res!533723 e!757900)))

(declare-fun c!196748 () Bool)

(assert (=> d!337905 (= c!196748 (> (size!9286 (_1!6886 lt!406629)) 0))))

(declare-fun lexTailRecV2!324 (LexerInterface!1739 List!11764 BalanceConc!7718 BalanceConc!7718 BalanceConc!7718 BalanceConc!7720) tuple2!12078)

(assert (=> d!337905 (= lt!406629 (lexTailRecV2!324 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517))) (BalanceConc!7719 Empty!3848) (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517))) (BalanceConc!7721 Empty!3849)))))

(assert (=> d!337905 (= (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517)))) lt!406629)))

(assert (= (and d!337905 c!196748) b!1180830))

(assert (= (and d!337905 (not c!196748)) b!1180829))

(assert (= (and b!1180830 res!533722) b!1180832))

(assert (= (and d!337905 res!533723) b!1180831))

(assert (= (and b!1180831 res!533721) b!1180833))

(declare-fun m!1356881 () Bool)

(assert (=> b!1180831 m!1356881))

(assert (=> b!1180831 m!1356599))

(declare-fun m!1356883 () Bool)

(assert (=> b!1180831 m!1356883))

(assert (=> b!1180831 m!1356883))

(declare-fun m!1356885 () Bool)

(assert (=> b!1180831 m!1356885))

(declare-fun m!1356887 () Bool)

(assert (=> b!1180833 m!1356887))

(assert (=> b!1180833 m!1356599))

(assert (=> b!1180833 m!1356883))

(assert (=> b!1180833 m!1356883))

(assert (=> b!1180833 m!1356885))

(declare-fun m!1356889 () Bool)

(assert (=> d!337905 m!1356889))

(assert (=> d!337905 m!1356599))

(assert (=> d!337905 m!1356599))

(declare-fun m!1356891 () Bool)

(assert (=> d!337905 m!1356891))

(declare-fun m!1356893 () Bool)

(assert (=> b!1180832 m!1356893))

(declare-fun m!1356895 () Bool)

(assert (=> b!1180830 m!1356895))

(assert (=> b!1180830 m!1356599))

(declare-fun m!1356897 () Bool)

(assert (=> b!1180830 m!1356897))

(assert (=> b!1180478 d!337905))

(declare-fun d!337907 () Bool)

(declare-fun lt!406632 () BalanceConc!7718)

(declare-fun printList!517 (LexerInterface!1739 List!11765) List!11762)

(assert (=> d!337907 (= (list!4336 lt!406632) (printList!517 thiss!27592 (list!4335 (singletonSeq!706 (h!17142 lt!406517)))))))

(declare-fun printTailRec!499 (LexerInterface!1739 BalanceConc!7720 Int BalanceConc!7718) BalanceConc!7718)

(assert (=> d!337907 (= lt!406632 (printTailRec!499 thiss!27592 (singletonSeq!706 (h!17142 lt!406517)) 0 (BalanceConc!7719 Empty!3848)))))

(assert (=> d!337907 (= (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517))) lt!406632)))

(declare-fun bs!286905 () Bool)

(assert (= bs!286905 d!337907))

(declare-fun m!1356899 () Bool)

(assert (=> bs!286905 m!1356899))

(assert (=> bs!286905 m!1356603))

(assert (=> bs!286905 m!1356605))

(assert (=> bs!286905 m!1356605))

(declare-fun m!1356901 () Bool)

(assert (=> bs!286905 m!1356901))

(assert (=> bs!286905 m!1356603))

(declare-fun m!1356903 () Bool)

(assert (=> bs!286905 m!1356903))

(assert (=> b!1180478 d!337907))

(declare-fun d!337909 () Bool)

(declare-fun e!757903 () Bool)

(assert (=> d!337909 e!757903))

(declare-fun res!533726 () Bool)

(assert (=> d!337909 (=> (not res!533726) (not e!757903))))

(declare-fun lt!406635 () BalanceConc!7720)

(assert (=> d!337909 (= res!533726 (= (list!4335 lt!406635) (Cons!11741 (h!17142 lt!406517) Nil!11741)))))

(declare-fun singleton!307 (Token!3750) BalanceConc!7720)

(assert (=> d!337909 (= lt!406635 (singleton!307 (h!17142 lt!406517)))))

(assert (=> d!337909 (= (singletonSeq!706 (h!17142 lt!406517)) lt!406635)))

(declare-fun b!1180836 () Bool)

(declare-fun isBalanced!1097 (Conc!3849) Bool)

(assert (=> b!1180836 (= e!757903 (isBalanced!1097 (c!196701 lt!406635)))))

(assert (= (and d!337909 res!533726) b!1180836))

(declare-fun m!1356905 () Bool)

(assert (=> d!337909 m!1356905))

(declare-fun m!1356907 () Bool)

(assert (=> d!337909 m!1356907))

(declare-fun m!1356909 () Bool)

(assert (=> b!1180836 m!1356909))

(assert (=> b!1180478 d!337909))

(declare-fun bs!286906 () Bool)

(declare-fun d!337911 () Bool)

(assert (= bs!286906 (and d!337911 d!337901)))

(declare-fun lambda!48640 () Int)

(assert (=> bs!286906 (= (and (= (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (toChars!3008 (transformation!2044 (h!17141 rules!4386)))) (= (toValue!3149 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (toValue!3149 (transformation!2044 (h!17141 rules!4386))))) (= lambda!48640 lambda!48639))))

(assert (=> d!337911 true))

(assert (=> d!337911 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534))))) (dynLambda!5207 order!7235 lambda!48640))))

(assert (=> d!337911 true))

(assert (=> d!337911 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (rule!3465 (h!17142 l!6534))))) (dynLambda!5207 order!7235 lambda!48640))))

(assert (=> d!337911 (= (semiInverseModEq!738 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (toValue!3149 (transformation!2044 (rule!3465 (h!17142 l!6534))))) (Forall!443 lambda!48640))))

(declare-fun bs!286907 () Bool)

(assert (= bs!286907 d!337911))

(declare-fun m!1356911 () Bool)

(assert (=> bs!286907 m!1356911))

(assert (=> d!337869 d!337911))

(declare-fun bs!286908 () Bool)

(declare-fun d!337913 () Bool)

(assert (= bs!286908 (and d!337913 d!337841)))

(declare-fun lambda!48641 () Int)

(assert (=> bs!286908 (= lambda!48641 lambda!48629)))

(declare-fun bs!286909 () Bool)

(assert (= bs!286909 (and d!337913 d!337835)))

(assert (=> bs!286909 (= lambda!48641 lambda!48628)))

(declare-fun bs!286910 () Bool)

(assert (= bs!286910 (and d!337913 d!337817)))

(assert (=> bs!286910 (= lambda!48641 lambda!48620)))

(declare-fun bs!286911 () Bool)

(assert (= bs!286911 (and d!337913 b!1180375)))

(assert (=> bs!286911 (= (= thiss!27592 Lexer!1737) (= lambda!48641 lambda!48612))))

(declare-fun bs!286912 () Bool)

(assert (= bs!286912 (and d!337913 d!337845)))

(assert (=> bs!286912 (= lambda!48641 lambda!48632)))

(declare-fun bs!286913 () Bool)

(assert (= bs!286913 (and d!337913 d!337891)))

(assert (=> bs!286913 (= lambda!48641 lambda!48636)))

(declare-fun b!1180841 () Bool)

(declare-fun e!757908 () Bool)

(assert (=> b!1180841 (= e!757908 true)))

(declare-fun b!1180840 () Bool)

(declare-fun e!757907 () Bool)

(assert (=> b!1180840 (= e!757907 e!757908)))

(declare-fun b!1180839 () Bool)

(declare-fun e!757906 () Bool)

(assert (=> b!1180839 (= e!757906 e!757907)))

(assert (=> d!337913 e!757906))

(assert (= b!1180840 b!1180841))

(assert (= b!1180839 b!1180840))

(assert (= (and d!337913 (is-Cons!11740 rules!4386)) b!1180839))

(assert (=> b!1180841 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48641))))

(assert (=> b!1180841 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48641))))

(assert (=> d!337913 true))

(declare-fun lt!406636 () Bool)

(assert (=> d!337913 (= lt!406636 (forall!3109 (t!111367 (t!111367 lt!406517)) lambda!48641))))

(declare-fun e!757904 () Bool)

(assert (=> d!337913 (= lt!406636 e!757904)))

(declare-fun res!533728 () Bool)

(assert (=> d!337913 (=> res!533728 e!757904)))

(assert (=> d!337913 (= res!533728 (not (is-Cons!11741 (t!111367 (t!111367 lt!406517)))))))

(assert (=> d!337913 (not (isEmpty!7089 rules!4386))))

(assert (=> d!337913 (= (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 (t!111367 (t!111367 lt!406517))) lt!406636)))

(declare-fun b!1180837 () Bool)

(declare-fun e!757905 () Bool)

(assert (=> b!1180837 (= e!757904 e!757905)))

(declare-fun res!533727 () Bool)

(assert (=> b!1180837 (=> (not res!533727) (not e!757905))))

(assert (=> b!1180837 (= res!533727 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 (t!111367 (t!111367 lt!406517)))))))

(declare-fun b!1180838 () Bool)

(assert (=> b!1180838 (= e!757905 (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 (t!111367 (t!111367 (t!111367 lt!406517)))))))

(assert (= (and d!337913 (not res!533728)) b!1180837))

(assert (= (and b!1180837 res!533727) b!1180838))

(declare-fun m!1356913 () Bool)

(assert (=> d!337913 m!1356913))

(assert (=> d!337913 m!1356531))

(declare-fun m!1356915 () Bool)

(assert (=> b!1180837 m!1356915))

(declare-fun m!1356917 () Bool)

(assert (=> b!1180838 m!1356917))

(assert (=> b!1180566 d!337913))

(declare-fun d!337915 () Bool)

(assert (=> d!337915 (= (isEmpty!7092 (originalCharacters!2598 (h!17142 l!6534))) (is-Nil!11738 (originalCharacters!2598 (h!17142 l!6534))))))

(assert (=> d!337865 d!337915))

(declare-fun d!337917 () Bool)

(declare-fun lt!406639 () Token!3750)

(declare-fun apply!2567 (List!11765 Int) Token!3750)

(assert (=> d!337917 (= lt!406639 (apply!2567 (list!4335 (_1!6886 lt!406536)) 0))))

(declare-fun apply!2568 (Conc!3849 Int) Token!3750)

(assert (=> d!337917 (= lt!406639 (apply!2568 (c!196701 (_1!6886 lt!406536)) 0))))

(declare-fun e!757911 () Bool)

(assert (=> d!337917 e!757911))

(declare-fun res!533731 () Bool)

(assert (=> d!337917 (=> (not res!533731) (not e!757911))))

(assert (=> d!337917 (= res!533731 (<= 0 0))))

(assert (=> d!337917 (= (apply!2565 (_1!6886 lt!406536) 0) lt!406639)))

(declare-fun b!1180844 () Bool)

(assert (=> b!1180844 (= e!757911 (< 0 (size!9286 (_1!6886 lt!406536))))))

(assert (= (and d!337917 res!533731) b!1180844))

(declare-fun m!1356919 () Bool)

(assert (=> d!337917 m!1356919))

(assert (=> d!337917 m!1356919))

(declare-fun m!1356921 () Bool)

(assert (=> d!337917 m!1356921))

(declare-fun m!1356923 () Bool)

(assert (=> d!337917 m!1356923))

(assert (=> b!1180844 m!1356597))

(assert (=> b!1180476 d!337917))

(declare-fun d!337919 () Bool)

(declare-fun res!533732 () Bool)

(declare-fun e!757912 () Bool)

(assert (=> d!337919 (=> res!533732 e!757912)))

(assert (=> d!337919 (= res!533732 (is-Nil!11741 (list!4335 (seqFromList!1531 lt!406517))))))

(assert (=> d!337919 (= (forall!3109 (list!4335 (seqFromList!1531 lt!406517)) lambda!48620) e!757912)))

(declare-fun b!1180845 () Bool)

(declare-fun e!757913 () Bool)

(assert (=> b!1180845 (= e!757912 e!757913)))

(declare-fun res!533733 () Bool)

(assert (=> b!1180845 (=> (not res!533733) (not e!757913))))

(assert (=> b!1180845 (= res!533733 (dynLambda!5203 lambda!48620 (h!17142 (list!4335 (seqFromList!1531 lt!406517)))))))

(declare-fun b!1180846 () Bool)

(assert (=> b!1180846 (= e!757913 (forall!3109 (t!111367 (list!4335 (seqFromList!1531 lt!406517))) lambda!48620))))

(assert (= (and d!337919 (not res!533732)) b!1180845))

(assert (= (and b!1180845 res!533733) b!1180846))

(declare-fun b_lambda!35259 () Bool)

(assert (=> (not b_lambda!35259) (not b!1180845)))

(declare-fun m!1356925 () Bool)

(assert (=> b!1180845 m!1356925))

(declare-fun m!1356927 () Bool)

(assert (=> b!1180846 m!1356927))

(assert (=> d!337817 d!337919))

(declare-fun d!337921 () Bool)

(declare-fun list!4339 (Conc!3849) List!11765)

(assert (=> d!337921 (= (list!4335 (seqFromList!1531 lt!406517)) (list!4339 (c!196701 (seqFromList!1531 lt!406517))))))

(declare-fun bs!286914 () Bool)

(assert (= bs!286914 d!337921))

(declare-fun m!1356929 () Bool)

(assert (=> bs!286914 m!1356929))

(assert (=> d!337817 d!337921))

(declare-fun d!337923 () Bool)

(declare-fun lt!406642 () Bool)

(assert (=> d!337923 (= lt!406642 (forall!3109 (list!4335 (seqFromList!1531 lt!406517)) lambda!48620))))

(declare-fun forall!3113 (Conc!3849 Int) Bool)

(assert (=> d!337923 (= lt!406642 (forall!3113 (c!196701 (seqFromList!1531 lt!406517)) lambda!48620))))

(assert (=> d!337923 (= (forall!3111 (seqFromList!1531 lt!406517) lambda!48620) lt!406642)))

(declare-fun bs!286915 () Bool)

(assert (= bs!286915 d!337923))

(assert (=> bs!286915 m!1356537))

(assert (=> bs!286915 m!1356615))

(assert (=> bs!286915 m!1356615))

(assert (=> bs!286915 m!1356617))

(declare-fun m!1356931 () Bool)

(assert (=> bs!286915 m!1356931))

(assert (=> d!337817 d!337923))

(assert (=> d!337817 d!337859))

(declare-fun d!337925 () Bool)

(declare-fun res!533734 () Bool)

(declare-fun e!757914 () Bool)

(assert (=> d!337925 (=> res!533734 e!757914)))

(assert (=> d!337925 (= res!533734 (is-Nil!11741 lt!406517))))

(assert (=> d!337925 (= (forall!3109 lt!406517 lambda!48632) e!757914)))

(declare-fun b!1180847 () Bool)

(declare-fun e!757915 () Bool)

(assert (=> b!1180847 (= e!757914 e!757915)))

(declare-fun res!533735 () Bool)

(assert (=> b!1180847 (=> (not res!533735) (not e!757915))))

(assert (=> b!1180847 (= res!533735 (dynLambda!5203 lambda!48632 (h!17142 lt!406517)))))

(declare-fun b!1180848 () Bool)

(assert (=> b!1180848 (= e!757915 (forall!3109 (t!111367 lt!406517) lambda!48632))))

(assert (= (and d!337925 (not res!533734)) b!1180847))

(assert (= (and b!1180847 res!533735) b!1180848))

(declare-fun b_lambda!35261 () Bool)

(assert (=> (not b_lambda!35261) (not b!1180847)))

(declare-fun m!1356933 () Bool)

(assert (=> b!1180847 m!1356933))

(declare-fun m!1356935 () Bool)

(assert (=> b!1180848 m!1356935))

(assert (=> d!337845 d!337925))

(assert (=> d!337845 d!337859))

(declare-fun d!337927 () Bool)

(declare-fun lt!406643 () Bool)

(declare-fun e!757916 () Bool)

(assert (=> d!337927 (= lt!406643 e!757916)))

(declare-fun res!533736 () Bool)

(assert (=> d!337927 (=> (not res!533736) (not e!757916))))

(assert (=> d!337927 (= res!533736 (= (list!4335 (_1!6886 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 (t!111367 lt!406517))))))) (list!4335 (singletonSeq!706 (h!17142 (t!111367 lt!406517))))))))

(declare-fun e!757917 () Bool)

(assert (=> d!337927 (= lt!406643 e!757917)))

(declare-fun res!533738 () Bool)

(assert (=> d!337927 (=> (not res!533738) (not e!757917))))

(declare-fun lt!406644 () tuple2!12078)

(assert (=> d!337927 (= res!533738 (= (size!9286 (_1!6886 lt!406644)) 1))))

(assert (=> d!337927 (= lt!406644 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 (t!111367 lt!406517))))))))

(assert (=> d!337927 (not (isEmpty!7089 rules!4386))))

(assert (=> d!337927 (= (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 (t!111367 lt!406517))) lt!406643)))

(declare-fun b!1180849 () Bool)

(declare-fun res!533737 () Bool)

(assert (=> b!1180849 (=> (not res!533737) (not e!757917))))

(assert (=> b!1180849 (= res!533737 (= (apply!2565 (_1!6886 lt!406644) 0) (h!17142 (t!111367 lt!406517))))))

(declare-fun b!1180850 () Bool)

(assert (=> b!1180850 (= e!757917 (isEmpty!7091 (_2!6886 lt!406644)))))

(declare-fun b!1180851 () Bool)

(assert (=> b!1180851 (= e!757916 (isEmpty!7091 (_2!6886 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 (t!111367 lt!406517))))))))))

(assert (= (and d!337927 res!533738) b!1180849))

(assert (= (and b!1180849 res!533737) b!1180850))

(assert (= (and d!337927 res!533736) b!1180851))

(declare-fun m!1356937 () Bool)

(assert (=> d!337927 m!1356937))

(declare-fun m!1356939 () Bool)

(assert (=> d!337927 m!1356939))

(declare-fun m!1356941 () Bool)

(assert (=> d!337927 m!1356941))

(declare-fun m!1356943 () Bool)

(assert (=> d!337927 m!1356943))

(declare-fun m!1356945 () Bool)

(assert (=> d!337927 m!1356945))

(assert (=> d!337927 m!1356943))

(assert (=> d!337927 m!1356943))

(assert (=> d!337927 m!1356939))

(declare-fun m!1356947 () Bool)

(assert (=> d!337927 m!1356947))

(assert (=> d!337927 m!1356531))

(declare-fun m!1356949 () Bool)

(assert (=> b!1180849 m!1356949))

(declare-fun m!1356951 () Bool)

(assert (=> b!1180850 m!1356951))

(assert (=> b!1180851 m!1356943))

(assert (=> b!1180851 m!1356943))

(assert (=> b!1180851 m!1356939))

(assert (=> b!1180851 m!1356939))

(assert (=> b!1180851 m!1356941))

(declare-fun m!1356953 () Bool)

(assert (=> b!1180851 m!1356953))

(assert (=> b!1180565 d!337927))

(declare-fun d!337929 () Bool)

(declare-fun lt!406647 () Int)

(assert (=> d!337929 (>= lt!406647 0)))

(declare-fun e!757920 () Int)

(assert (=> d!337929 (= lt!406647 e!757920)))

(declare-fun c!196751 () Bool)

(assert (=> d!337929 (= c!196751 (is-Nil!11741 l!6534))))

(assert (=> d!337929 (= (size!9288 l!6534) lt!406647)))

(declare-fun b!1180856 () Bool)

(assert (=> b!1180856 (= e!757920 0)))

(declare-fun b!1180857 () Bool)

(assert (=> b!1180857 (= e!757920 (+ 1 (size!9288 (t!111367 l!6534))))))

(assert (= (and d!337929 c!196751) b!1180856))

(assert (= (and d!337929 (not c!196751)) b!1180857))

(assert (=> b!1180857 m!1356843))

(assert (=> bm!82583 d!337929))

(declare-fun bs!286916 () Bool)

(declare-fun d!337931 () Bool)

(assert (= bs!286916 (and d!337931 d!337841)))

(declare-fun lambda!48642 () Int)

(assert (=> bs!286916 (= lambda!48642 lambda!48629)))

(declare-fun bs!286917 () Bool)

(assert (= bs!286917 (and d!337931 d!337913)))

(assert (=> bs!286917 (= lambda!48642 lambda!48641)))

(declare-fun bs!286918 () Bool)

(assert (= bs!286918 (and d!337931 d!337835)))

(assert (=> bs!286918 (= lambda!48642 lambda!48628)))

(declare-fun bs!286919 () Bool)

(assert (= bs!286919 (and d!337931 d!337817)))

(assert (=> bs!286919 (= lambda!48642 lambda!48620)))

(declare-fun bs!286920 () Bool)

(assert (= bs!286920 (and d!337931 b!1180375)))

(assert (=> bs!286920 (= (= thiss!27592 Lexer!1737) (= lambda!48642 lambda!48612))))

(declare-fun bs!286921 () Bool)

(assert (= bs!286921 (and d!337931 d!337845)))

(assert (=> bs!286921 (= lambda!48642 lambda!48632)))

(declare-fun bs!286922 () Bool)

(assert (= bs!286922 (and d!337931 d!337891)))

(assert (=> bs!286922 (= lambda!48642 lambda!48636)))

(declare-fun b!1180862 () Bool)

(declare-fun e!757925 () Bool)

(assert (=> b!1180862 (= e!757925 true)))

(declare-fun b!1180861 () Bool)

(declare-fun e!757924 () Bool)

(assert (=> b!1180861 (= e!757924 e!757925)))

(declare-fun b!1180860 () Bool)

(declare-fun e!757923 () Bool)

(assert (=> b!1180860 (= e!757923 e!757924)))

(assert (=> d!337931 e!757923))

(assert (= b!1180861 b!1180862))

(assert (= b!1180860 b!1180861))

(assert (= (and d!337931 (is-Cons!11740 rules!4386)) b!1180860))

(assert (=> b!1180862 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48642))))

(assert (=> b!1180862 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5198 order!7225 lambda!48642))))

(assert (=> d!337931 true))

(declare-fun lt!406648 () Bool)

(assert (=> d!337931 (= lt!406648 (forall!3109 (list!4335 (seqFromList!1531 lt!406517)) lambda!48642))))

(declare-fun e!757921 () Bool)

(assert (=> d!337931 (= lt!406648 e!757921)))

(declare-fun res!533740 () Bool)

(assert (=> d!337931 (=> res!533740 e!757921)))

(assert (=> d!337931 (= res!533740 (not (is-Cons!11741 (list!4335 (seqFromList!1531 lt!406517)))))))

(assert (=> d!337931 (not (isEmpty!7089 rules!4386))))

(assert (=> d!337931 (= (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 (list!4335 (seqFromList!1531 lt!406517))) lt!406648)))

(declare-fun b!1180858 () Bool)

(declare-fun e!757922 () Bool)

(assert (=> b!1180858 (= e!757921 e!757922)))

(declare-fun res!533739 () Bool)

(assert (=> b!1180858 (=> (not res!533739) (not e!757922))))

(assert (=> b!1180858 (= res!533739 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 (list!4335 (seqFromList!1531 lt!406517)))))))

(declare-fun b!1180859 () Bool)

(assert (=> b!1180859 (= e!757922 (rulesProduceEachTokenIndividuallyList!605 thiss!27592 rules!4386 (t!111367 (list!4335 (seqFromList!1531 lt!406517)))))))

(assert (= (and d!337931 (not res!533740)) b!1180858))

(assert (= (and b!1180858 res!533739) b!1180859))

(assert (=> d!337931 m!1356615))

(declare-fun m!1356955 () Bool)

(assert (=> d!337931 m!1356955))

(assert (=> d!337931 m!1356531))

(declare-fun m!1356957 () Bool)

(assert (=> b!1180858 m!1356957))

(declare-fun m!1356959 () Bool)

(assert (=> b!1180859 m!1356959))

(assert (=> b!1180481 d!337931))

(assert (=> b!1180481 d!337921))

(declare-fun d!337933 () Bool)

(declare-fun res!533741 () Bool)

(declare-fun e!757926 () Bool)

(assert (=> d!337933 (=> res!533741 e!757926)))

(assert (=> d!337933 (= res!533741 (is-Nil!11741 (t!111367 lt!406517)))))

(assert (=> d!337933 (= (forall!3109 (t!111367 lt!406517) lambda!48628) e!757926)))

(declare-fun b!1180863 () Bool)

(declare-fun e!757927 () Bool)

(assert (=> b!1180863 (= e!757926 e!757927)))

(declare-fun res!533742 () Bool)

(assert (=> b!1180863 (=> (not res!533742) (not e!757927))))

(assert (=> b!1180863 (= res!533742 (dynLambda!5203 lambda!48628 (h!17142 (t!111367 lt!406517))))))

(declare-fun b!1180864 () Bool)

(assert (=> b!1180864 (= e!757927 (forall!3109 (t!111367 (t!111367 lt!406517)) lambda!48628))))

(assert (= (and d!337933 (not res!533741)) b!1180863))

(assert (= (and b!1180863 res!533742) b!1180864))

(declare-fun b_lambda!35263 () Bool)

(assert (=> (not b_lambda!35263) (not b!1180863)))

(declare-fun m!1356961 () Bool)

(assert (=> b!1180863 m!1356961))

(declare-fun m!1356963 () Bool)

(assert (=> b!1180864 m!1356963))

(assert (=> d!337835 d!337933))

(assert (=> d!337835 d!337859))

(assert (=> b!1180583 d!337835))

(declare-fun d!337935 () Bool)

(declare-fun res!533743 () Bool)

(declare-fun e!757928 () Bool)

(assert (=> d!337935 (=> res!533743 e!757928)))

(assert (=> d!337935 (= res!533743 (is-Nil!11741 (t!111367 lt!406517)))))

(assert (=> d!337935 (= (forall!3109 (t!111367 lt!406517) lambda!48612) e!757928)))

(declare-fun b!1180865 () Bool)

(declare-fun e!757929 () Bool)

(assert (=> b!1180865 (= e!757928 e!757929)))

(declare-fun res!533744 () Bool)

(assert (=> b!1180865 (=> (not res!533744) (not e!757929))))

(assert (=> b!1180865 (= res!533744 (dynLambda!5203 lambda!48612 (h!17142 (t!111367 lt!406517))))))

(declare-fun b!1180866 () Bool)

(assert (=> b!1180866 (= e!757929 (forall!3109 (t!111367 (t!111367 lt!406517)) lambda!48612))))

(assert (= (and d!337935 (not res!533743)) b!1180865))

(assert (= (and b!1180865 res!533744) b!1180866))

(declare-fun b_lambda!35265 () Bool)

(assert (=> (not b_lambda!35265) (not b!1180865)))

(declare-fun m!1356965 () Bool)

(assert (=> b!1180865 m!1356965))

(declare-fun m!1356967 () Bool)

(assert (=> b!1180866 m!1356967))

(assert (=> b!1180597 d!337935))

(assert (=> b!1180582 d!337807))

(declare-fun d!337937 () Bool)

(assert (=> d!337937 true))

(declare-fun order!7237 () Int)

(declare-fun lambda!48645 () Int)

(declare-fun dynLambda!5208 (Int Int) Int)

(assert (=> d!337937 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (rule!3465 (h!17142 l!6534))))) (dynLambda!5208 order!7237 lambda!48645))))

(declare-fun Forall2!353 (Int) Bool)

(assert (=> d!337937 (= (equivClasses!705 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (toValue!3149 (transformation!2044 (rule!3465 (h!17142 l!6534))))) (Forall2!353 lambda!48645))))

(declare-fun bs!286923 () Bool)

(assert (= bs!286923 d!337937))

(declare-fun m!1356969 () Bool)

(assert (=> bs!286923 m!1356969))

(assert (=> b!1180651 d!337937))

(assert (=> d!337807 d!337859))

(assert (=> d!337807 d!337907))

(assert (=> d!337807 d!337905))

(declare-fun d!337939 () Bool)

(assert (=> d!337939 (= (list!4335 (_1!6886 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517)))))) (list!4339 (c!196701 (_1!6886 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 lt!406517))))))))))

(declare-fun bs!286924 () Bool)

(assert (= bs!286924 d!337939))

(declare-fun m!1356971 () Bool)

(assert (=> bs!286924 m!1356971))

(assert (=> d!337807 d!337939))

(assert (=> d!337807 d!337909))

(declare-fun d!337941 () Bool)

(assert (=> d!337941 (= (list!4335 (singletonSeq!706 (h!17142 lt!406517))) (list!4339 (c!196701 (singletonSeq!706 (h!17142 lt!406517)))))))

(declare-fun bs!286925 () Bool)

(assert (= bs!286925 d!337941))

(declare-fun m!1356973 () Bool)

(assert (=> bs!286925 m!1356973))

(assert (=> d!337807 d!337941))

(declare-fun d!337943 () Bool)

(declare-fun lt!406651 () Int)

(assert (=> d!337943 (= lt!406651 (size!9288 (list!4335 (_1!6886 lt!406536))))))

(declare-fun size!9294 (Conc!3849) Int)

(assert (=> d!337943 (= lt!406651 (size!9294 (c!196701 (_1!6886 lt!406536))))))

(assert (=> d!337943 (= (size!9286 (_1!6886 lt!406536)) lt!406651)))

(declare-fun bs!286926 () Bool)

(assert (= bs!286926 d!337943))

(assert (=> bs!286926 m!1356919))

(assert (=> bs!286926 m!1356919))

(declare-fun m!1356975 () Bool)

(assert (=> bs!286926 m!1356975))

(declare-fun m!1356977 () Bool)

(assert (=> bs!286926 m!1356977))

(assert (=> d!337807 d!337943))

(declare-fun b!1180874 () Bool)

(declare-fun e!757934 () Bool)

(assert (=> b!1180874 (= e!757934 (subseq!302 (drop!524 l!6534 i!1621) (t!111367 l!6534)))))

(declare-fun b!1180871 () Bool)

(declare-fun e!757935 () Bool)

(declare-fun e!757933 () Bool)

(assert (=> b!1180871 (= e!757935 e!757933)))

(declare-fun res!533748 () Bool)

(assert (=> b!1180871 (=> (not res!533748) (not e!757933))))

(assert (=> b!1180871 (= res!533748 (is-Cons!11741 l!6534))))

(declare-fun b!1180872 () Bool)

(assert (=> b!1180872 (= e!757933 e!757934)))

(declare-fun res!533747 () Bool)

(assert (=> b!1180872 (=> res!533747 e!757934)))

(declare-fun e!757932 () Bool)

(assert (=> b!1180872 (= res!533747 e!757932)))

(declare-fun res!533750 () Bool)

(assert (=> b!1180872 (=> (not res!533750) (not e!757932))))

(assert (=> b!1180872 (= res!533750 (= (h!17142 (drop!524 l!6534 i!1621)) (h!17142 l!6534)))))

(declare-fun b!1180873 () Bool)

(assert (=> b!1180873 (= e!757932 (subseq!302 (t!111367 (drop!524 l!6534 i!1621)) (t!111367 l!6534)))))

(declare-fun d!337945 () Bool)

(declare-fun res!533749 () Bool)

(assert (=> d!337945 (=> res!533749 e!757935)))

(assert (=> d!337945 (= res!533749 (is-Nil!11741 (drop!524 l!6534 i!1621)))))

(assert (=> d!337945 (= (subseq!302 (drop!524 l!6534 i!1621) l!6534) e!757935)))

(assert (= (and d!337945 (not res!533749)) b!1180871))

(assert (= (and b!1180871 res!533748) b!1180872))

(assert (= (and b!1180872 res!533750) b!1180873))

(assert (= (and b!1180872 (not res!533747)) b!1180874))

(assert (=> b!1180874 m!1356509))

(declare-fun m!1356979 () Bool)

(assert (=> b!1180874 m!1356979))

(declare-fun m!1356981 () Bool)

(assert (=> b!1180873 m!1356981))

(assert (=> d!337847 d!337945))

(assert (=> d!337847 d!337857))

(declare-fun d!337947 () Bool)

(assert (=> d!337947 (subseq!302 (drop!524 l!6534 i!1621) l!6534)))

(assert (=> d!337947 true))

(declare-fun _$26!168 () Unit!18061)

(assert (=> d!337947 (= (choose!7640 l!6534 i!1621) _$26!168)))

(declare-fun bs!286927 () Bool)

(assert (= bs!286927 d!337947))

(assert (=> bs!286927 m!1356509))

(assert (=> bs!286927 m!1356509))

(assert (=> bs!286927 m!1356701))

(assert (=> d!337847 d!337947))

(declare-fun d!337949 () Bool)

(assert (=> d!337949 (= (inv!15556 (tag!2306 (h!17141 (t!111366 rules!4386)))) (= (mod (str.len (value!66311 (tag!2306 (h!17141 (t!111366 rules!4386))))) 2) 0))))

(assert (=> b!1180697 d!337949))

(declare-fun d!337951 () Bool)

(declare-fun res!533751 () Bool)

(declare-fun e!757936 () Bool)

(assert (=> d!337951 (=> (not res!533751) (not e!757936))))

(assert (=> d!337951 (= res!533751 (semiInverseModEq!738 (toChars!3008 (transformation!2044 (h!17141 (t!111366 rules!4386)))) (toValue!3149 (transformation!2044 (h!17141 (t!111366 rules!4386))))))))

(assert (=> d!337951 (= (inv!15559 (transformation!2044 (h!17141 (t!111366 rules!4386)))) e!757936)))

(declare-fun b!1180875 () Bool)

(assert (=> b!1180875 (= e!757936 (equivClasses!705 (toChars!3008 (transformation!2044 (h!17141 (t!111366 rules!4386)))) (toValue!3149 (transformation!2044 (h!17141 (t!111366 rules!4386))))))))

(assert (= (and d!337951 res!533751) b!1180875))

(declare-fun m!1356983 () Bool)

(assert (=> d!337951 m!1356983))

(declare-fun m!1356985 () Bool)

(assert (=> b!1180875 m!1356985))

(assert (=> b!1180697 d!337951))

(declare-fun d!337953 () Bool)

(declare-fun res!533756 () Bool)

(declare-fun e!757941 () Bool)

(assert (=> d!337953 (=> res!533756 e!757941)))

(assert (=> d!337953 (= res!533756 (is-Nil!11740 rules!4386))))

(assert (=> d!337953 (= (noDuplicateTag!726 thiss!27592 rules!4386 Nil!11746) e!757941)))

(declare-fun b!1180880 () Bool)

(declare-fun e!757942 () Bool)

(assert (=> b!1180880 (= e!757941 e!757942)))

(declare-fun res!533757 () Bool)

(assert (=> b!1180880 (=> (not res!533757) (not e!757942))))

(declare-fun contains!2015 (List!11770 String!14220) Bool)

(assert (=> b!1180880 (= res!533757 (not (contains!2015 Nil!11746 (tag!2306 (h!17141 rules!4386)))))))

(declare-fun b!1180881 () Bool)

(assert (=> b!1180881 (= e!757942 (noDuplicateTag!726 thiss!27592 (t!111366 rules!4386) (Cons!11746 (tag!2306 (h!17141 rules!4386)) Nil!11746)))))

(assert (= (and d!337953 (not res!533756)) b!1180880))

(assert (= (and b!1180880 res!533757) b!1180881))

(declare-fun m!1356987 () Bool)

(assert (=> b!1180880 m!1356987))

(declare-fun m!1356989 () Bool)

(assert (=> b!1180881 m!1356989))

(assert (=> b!1180581 d!337953))

(declare-fun d!337955 () Bool)

(assert (=> d!337955 (= (inv!15556 (tag!2306 (rule!3465 (h!17142 (t!111367 l!6534))))) (= (mod (str.len (value!66311 (tag!2306 (rule!3465 (h!17142 (t!111367 l!6534)))))) 2) 0))))

(assert (=> b!1180686 d!337955))

(declare-fun d!337957 () Bool)

(declare-fun res!533758 () Bool)

(declare-fun e!757943 () Bool)

(assert (=> d!337957 (=> (not res!533758) (not e!757943))))

(assert (=> d!337957 (= res!533758 (semiInverseModEq!738 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))) (toValue!3149 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534)))))))))

(assert (=> d!337957 (= (inv!15559 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))) e!757943)))

(declare-fun b!1180882 () Bool)

(assert (=> b!1180882 (= e!757943 (equivClasses!705 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))) (toValue!3149 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534)))))))))

(assert (= (and d!337957 res!533758) b!1180882))

(declare-fun m!1356991 () Bool)

(assert (=> d!337957 m!1356991))

(declare-fun m!1356993 () Bool)

(assert (=> b!1180882 m!1356993))

(assert (=> b!1180686 d!337957))

(assert (=> d!337851 d!337853))

(declare-fun d!337959 () Bool)

(assert (=> d!337959 (forall!3109 lt!406517 lambda!48612)))

(assert (=> d!337959 true))

(declare-fun _$37!325 () Unit!18061)

(assert (=> d!337959 (= (choose!7641 lt!406517 l!6534 lambda!48612) _$37!325)))

(declare-fun bs!286928 () Bool)

(assert (= bs!286928 d!337959))

(assert (=> bs!286928 m!1356517))

(assert (=> d!337851 d!337959))

(declare-fun d!337961 () Bool)

(declare-fun res!533759 () Bool)

(declare-fun e!757944 () Bool)

(assert (=> d!337961 (=> res!533759 e!757944)))

(assert (=> d!337961 (= res!533759 (is-Nil!11741 l!6534))))

(assert (=> d!337961 (= (forall!3109 l!6534 lambda!48612) e!757944)))

(declare-fun b!1180883 () Bool)

(declare-fun e!757945 () Bool)

(assert (=> b!1180883 (= e!757944 e!757945)))

(declare-fun res!533760 () Bool)

(assert (=> b!1180883 (=> (not res!533760) (not e!757945))))

(assert (=> b!1180883 (= res!533760 (dynLambda!5203 lambda!48612 (h!17142 l!6534)))))

(declare-fun b!1180884 () Bool)

(assert (=> b!1180884 (= e!757945 (forall!3109 (t!111367 l!6534) lambda!48612))))

(assert (= (and d!337961 (not res!533759)) b!1180883))

(assert (= (and b!1180883 res!533760) b!1180884))

(declare-fun b_lambda!35267 () Bool)

(assert (=> (not b_lambda!35267) (not b!1180883)))

(declare-fun m!1356995 () Bool)

(assert (=> b!1180883 m!1356995))

(declare-fun m!1356997 () Bool)

(assert (=> b!1180884 m!1356997))

(assert (=> d!337851 d!337961))

(declare-fun d!337963 () Bool)

(declare-fun res!533761 () Bool)

(declare-fun e!757946 () Bool)

(assert (=> d!337963 (=> res!533761 e!757946)))

(assert (=> d!337963 (= res!533761 (or (not (is-Cons!11741 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534))))) (not (is-Cons!11741 (t!111367 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534))))))))))

(assert (=> d!337963 (= (tokensListTwoByTwoPredicateSeparableList!133 thiss!27592 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534))) rules!4386) e!757946)))

(declare-fun b!1180885 () Bool)

(declare-fun e!757947 () Bool)

(assert (=> b!1180885 (= e!757946 e!757947)))

(declare-fun res!533762 () Bool)

(assert (=> b!1180885 (=> (not res!533762) (not e!757947))))

(assert (=> b!1180885 (= res!533762 (separableTokensPredicate!149 thiss!27592 (h!17142 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534)))) (h!17142 (t!111367 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534))))) rules!4386))))

(declare-fun lt!406656 () Unit!18061)

(declare-fun Unit!18072 () Unit!18061)

(assert (=> b!1180885 (= lt!406656 Unit!18072)))

(assert (=> b!1180885 (> (size!9287 (charsOf!1087 (h!17142 (t!111367 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534))))))) 0)))

(declare-fun lt!406654 () Unit!18061)

(declare-fun Unit!18073 () Unit!18061)

(assert (=> b!1180885 (= lt!406654 Unit!18073)))

(assert (=> b!1180885 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 (t!111367 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534))))))))

(declare-fun lt!406657 () Unit!18061)

(declare-fun Unit!18074 () Unit!18061)

(assert (=> b!1180885 (= lt!406657 Unit!18074)))

(assert (=> b!1180885 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534)))))))

(declare-fun lt!406658 () Unit!18061)

(declare-fun lt!406655 () Unit!18061)

(assert (=> b!1180885 (= lt!406658 lt!406655)))

(assert (=> b!1180885 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 (t!111367 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534))))))))

(assert (=> b!1180885 (= lt!406655 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!308 thiss!27592 rules!4386 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534))) (h!17142 (t!111367 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534)))))))))

(declare-fun lt!406652 () Unit!18061)

(declare-fun lt!406653 () Unit!18061)

(assert (=> b!1180885 (= lt!406652 lt!406653)))

(assert (=> b!1180885 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534)))))))

(assert (=> b!1180885 (= lt!406653 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!308 thiss!27592 rules!4386 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534))) (h!17142 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534))))))))

(declare-fun b!1180886 () Bool)

(assert (=> b!1180886 (= e!757947 (tokensListTwoByTwoPredicateSeparableList!133 thiss!27592 (Cons!11741 (h!17142 (t!111367 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534))))) (t!111367 (t!111367 (Cons!11741 (h!17142 (t!111367 l!6534)) (t!111367 (t!111367 l!6534)))))) rules!4386))))

(assert (= (and d!337963 (not res!533761)) b!1180885))

(assert (= (and b!1180885 res!533762) b!1180886))

(declare-fun m!1356999 () Bool)

(assert (=> b!1180885 m!1356999))

(declare-fun m!1357001 () Bool)

(assert (=> b!1180885 m!1357001))

(declare-fun m!1357003 () Bool)

(assert (=> b!1180885 m!1357003))

(declare-fun m!1357005 () Bool)

(assert (=> b!1180885 m!1357005))

(declare-fun m!1357007 () Bool)

(assert (=> b!1180885 m!1357007))

(assert (=> b!1180885 m!1357003))

(declare-fun m!1357009 () Bool)

(assert (=> b!1180885 m!1357009))

(declare-fun m!1357011 () Bool)

(assert (=> b!1180885 m!1357011))

(declare-fun m!1357013 () Bool)

(assert (=> b!1180886 m!1357013))

(assert (=> b!1180508 d!337963))

(declare-fun b!1180890 () Bool)

(declare-fun e!757950 () Bool)

(assert (=> b!1180890 (= e!757950 (subseq!302 (t!111367 lt!406517) (t!111367 (t!111367 l!6534))))))

(declare-fun b!1180887 () Bool)

(declare-fun e!757951 () Bool)

(declare-fun e!757949 () Bool)

(assert (=> b!1180887 (= e!757951 e!757949)))

(declare-fun res!533764 () Bool)

(assert (=> b!1180887 (=> (not res!533764) (not e!757949))))

(assert (=> b!1180887 (= res!533764 (is-Cons!11741 (t!111367 l!6534)))))

(declare-fun b!1180888 () Bool)

(assert (=> b!1180888 (= e!757949 e!757950)))

(declare-fun res!533763 () Bool)

(assert (=> b!1180888 (=> res!533763 e!757950)))

(declare-fun e!757948 () Bool)

(assert (=> b!1180888 (= res!533763 e!757948)))

(declare-fun res!533766 () Bool)

(assert (=> b!1180888 (=> (not res!533766) (not e!757948))))

(assert (=> b!1180888 (= res!533766 (= (h!17142 (t!111367 lt!406517)) (h!17142 (t!111367 l!6534))))))

(declare-fun b!1180889 () Bool)

(assert (=> b!1180889 (= e!757948 (subseq!302 (t!111367 (t!111367 lt!406517)) (t!111367 (t!111367 l!6534))))))

(declare-fun d!337965 () Bool)

(declare-fun res!533765 () Bool)

(assert (=> d!337965 (=> res!533765 e!757951)))

(assert (=> d!337965 (= res!533765 (is-Nil!11741 (t!111367 lt!406517)))))

(assert (=> d!337965 (= (subseq!302 (t!111367 lt!406517) (t!111367 l!6534)) e!757951)))

(assert (= (and d!337965 (not res!533765)) b!1180887))

(assert (= (and b!1180887 res!533764) b!1180888))

(assert (= (and b!1180888 res!533766) b!1180889))

(assert (= (and b!1180888 (not res!533763)) b!1180890))

(declare-fun m!1357015 () Bool)

(assert (=> b!1180890 m!1357015))

(declare-fun m!1357017 () Bool)

(assert (=> b!1180889 m!1357017))

(assert (=> b!1180608 d!337965))

(declare-fun d!337967 () Bool)

(declare-fun lt!406659 () Bool)

(declare-fun e!757952 () Bool)

(assert (=> d!337967 (= lt!406659 e!757952)))

(declare-fun res!533767 () Bool)

(assert (=> d!337967 (=> (not res!533767) (not e!757952))))

(assert (=> d!337967 (= res!533767 (= (list!4335 (_1!6886 (lex!727 Lexer!1737 rules!4386 (print!664 Lexer!1737 (singletonSeq!706 (h!17142 lt!406517)))))) (list!4335 (singletonSeq!706 (h!17142 lt!406517)))))))

(declare-fun e!757953 () Bool)

(assert (=> d!337967 (= lt!406659 e!757953)))

(declare-fun res!533769 () Bool)

(assert (=> d!337967 (=> (not res!533769) (not e!757953))))

(declare-fun lt!406660 () tuple2!12078)

(assert (=> d!337967 (= res!533769 (= (size!9286 (_1!6886 lt!406660)) 1))))

(assert (=> d!337967 (= lt!406660 (lex!727 Lexer!1737 rules!4386 (print!664 Lexer!1737 (singletonSeq!706 (h!17142 lt!406517)))))))

(assert (=> d!337967 (not (isEmpty!7089 rules!4386))))

(assert (=> d!337967 (= (rulesProduceIndividualToken!772 Lexer!1737 rules!4386 (h!17142 lt!406517)) lt!406659)))

(declare-fun b!1180891 () Bool)

(declare-fun res!533768 () Bool)

(assert (=> b!1180891 (=> (not res!533768) (not e!757953))))

(assert (=> b!1180891 (= res!533768 (= (apply!2565 (_1!6886 lt!406660) 0) (h!17142 lt!406517)))))

(declare-fun b!1180892 () Bool)

(assert (=> b!1180892 (= e!757953 (isEmpty!7091 (_2!6886 lt!406660)))))

(declare-fun b!1180893 () Bool)

(assert (=> b!1180893 (= e!757952 (isEmpty!7091 (_2!6886 (lex!727 Lexer!1737 rules!4386 (print!664 Lexer!1737 (singletonSeq!706 (h!17142 lt!406517)))))))))

(assert (= (and d!337967 res!533769) b!1180891))

(assert (= (and b!1180891 res!533768) b!1180892))

(assert (= (and d!337967 res!533767) b!1180893))

(declare-fun m!1357019 () Bool)

(assert (=> d!337967 m!1357019))

(declare-fun m!1357021 () Bool)

(assert (=> d!337967 m!1357021))

(declare-fun m!1357023 () Bool)

(assert (=> d!337967 m!1357023))

(assert (=> d!337967 m!1356603))

(assert (=> d!337967 m!1356605))

(assert (=> d!337967 m!1356603))

(assert (=> d!337967 m!1356603))

(assert (=> d!337967 m!1357021))

(declare-fun m!1357025 () Bool)

(assert (=> d!337967 m!1357025))

(assert (=> d!337967 m!1356531))

(declare-fun m!1357027 () Bool)

(assert (=> b!1180891 m!1357027))

(declare-fun m!1357029 () Bool)

(assert (=> b!1180892 m!1357029))

(assert (=> b!1180893 m!1356603))

(assert (=> b!1180893 m!1356603))

(assert (=> b!1180893 m!1357021))

(assert (=> b!1180893 m!1357021))

(assert (=> b!1180893 m!1357023))

(declare-fun m!1357031 () Bool)

(assert (=> b!1180893 m!1357031))

(assert (=> bs!286887 d!337967))

(declare-fun d!337969 () Bool)

(declare-fun res!533770 () Bool)

(declare-fun e!757954 () Bool)

(assert (=> d!337969 (=> (not res!533770) (not e!757954))))

(assert (=> d!337969 (= res!533770 (not (isEmpty!7092 (originalCharacters!2598 (h!17142 (t!111367 l!6534))))))))

(assert (=> d!337969 (= (inv!15560 (h!17142 (t!111367 l!6534))) e!757954)))

(declare-fun b!1180894 () Bool)

(declare-fun res!533771 () Bool)

(assert (=> b!1180894 (=> (not res!533771) (not e!757954))))

(assert (=> b!1180894 (= res!533771 (= (originalCharacters!2598 (h!17142 (t!111367 l!6534))) (list!4336 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))) (value!66312 (h!17142 (t!111367 l!6534)))))))))

(declare-fun b!1180895 () Bool)

(assert (=> b!1180895 (= e!757954 (= (size!9284 (h!17142 (t!111367 l!6534))) (size!9289 (originalCharacters!2598 (h!17142 (t!111367 l!6534))))))))

(assert (= (and d!337969 res!533770) b!1180894))

(assert (= (and b!1180894 res!533771) b!1180895))

(declare-fun b_lambda!35269 () Bool)

(assert (=> (not b_lambda!35269) (not b!1180894)))

(declare-fun tb!66109 () Bool)

(declare-fun t!111408 () Bool)

(assert (=> (and b!1180379 (= (toChars!3008 (transformation!2044 (h!17141 rules!4386))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534)))))) t!111408) tb!66109))

(declare-fun b!1180896 () Bool)

(declare-fun e!757955 () Bool)

(declare-fun tp!336251 () Bool)

(assert (=> b!1180896 (= e!757955 (and (inv!15563 (c!196699 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))) (value!66312 (h!17142 (t!111367 l!6534)))))) tp!336251))))

(declare-fun result!79322 () Bool)

(assert (=> tb!66109 (= result!79322 (and (inv!15564 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))) (value!66312 (h!17142 (t!111367 l!6534))))) e!757955))))

(assert (= tb!66109 b!1180896))

(declare-fun m!1357033 () Bool)

(assert (=> b!1180896 m!1357033))

(declare-fun m!1357035 () Bool)

(assert (=> tb!66109 m!1357035))

(assert (=> b!1180894 t!111408))

(declare-fun b_and!81061 () Bool)

(assert (= b_and!81041 (and (=> t!111408 result!79322) b_and!81061)))

(declare-fun t!111410 () Bool)

(declare-fun tb!66111 () Bool)

(assert (=> (and b!1180384 (= (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534)))))) t!111410) tb!66111))

(declare-fun result!79324 () Bool)

(assert (= result!79324 result!79322))

(assert (=> b!1180894 t!111410))

(declare-fun b_and!81063 () Bool)

(assert (= b_and!81043 (and (=> t!111410 result!79324) b_and!81063)))

(declare-fun t!111412 () Bool)

(declare-fun tb!66113 () Bool)

(assert (=> (and b!1180687 (= (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534)))))) t!111412) tb!66113))

(declare-fun result!79326 () Bool)

(assert (= result!79326 result!79322))

(assert (=> b!1180894 t!111412))

(declare-fun b_and!81065 () Bool)

(assert (= b_and!81047 (and (=> t!111412 result!79326) b_and!81065)))

(declare-fun t!111414 () Bool)

(declare-fun tb!66115 () Bool)

(assert (=> (and b!1180698 (= (toChars!3008 (transformation!2044 (h!17141 (t!111366 rules!4386)))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534)))))) t!111414) tb!66115))

(declare-fun result!79328 () Bool)

(assert (= result!79328 result!79322))

(assert (=> b!1180894 t!111414))

(declare-fun b_and!81067 () Bool)

(assert (= b_and!81051 (and (=> t!111414 result!79328) b_and!81067)))

(declare-fun m!1357037 () Bool)

(assert (=> d!337969 m!1357037))

(declare-fun m!1357039 () Bool)

(assert (=> b!1180894 m!1357039))

(assert (=> b!1180894 m!1357039))

(declare-fun m!1357041 () Bool)

(assert (=> b!1180894 m!1357041))

(declare-fun m!1357043 () Bool)

(assert (=> b!1180895 m!1357043))

(assert (=> b!1180684 d!337969))

(declare-fun d!337971 () Bool)

(declare-fun e!757958 () Bool)

(assert (=> d!337971 e!757958))

(declare-fun res!533774 () Bool)

(assert (=> d!337971 (=> (not res!533774) (not e!757958))))

(declare-fun lt!406663 () BalanceConc!7720)

(assert (=> d!337971 (= res!533774 (= (list!4335 lt!406663) lt!406517))))

(declare-fun fromList!319 (List!11765) Conc!3849)

(assert (=> d!337971 (= lt!406663 (BalanceConc!7721 (fromList!319 lt!406517)))))

(assert (=> d!337971 (= (fromListB!678 lt!406517) lt!406663)))

(declare-fun b!1180899 () Bool)

(assert (=> b!1180899 (= e!757958 (isBalanced!1097 (fromList!319 lt!406517)))))

(assert (= (and d!337971 res!533774) b!1180899))

(declare-fun m!1357045 () Bool)

(assert (=> d!337971 m!1357045))

(declare-fun m!1357047 () Bool)

(assert (=> d!337971 m!1357047))

(assert (=> b!1180899 m!1357047))

(assert (=> b!1180899 m!1357047))

(declare-fun m!1357049 () Bool)

(assert (=> b!1180899 m!1357049))

(assert (=> d!337819 d!337971))

(declare-fun b!1180903 () Bool)

(declare-fun e!757961 () Bool)

(assert (=> b!1180903 (= e!757961 (subseq!302 lt!406517 (t!111367 (t!111367 l!6534))))))

(declare-fun b!1180900 () Bool)

(declare-fun e!757962 () Bool)

(declare-fun e!757960 () Bool)

(assert (=> b!1180900 (= e!757962 e!757960)))

(declare-fun res!533776 () Bool)

(assert (=> b!1180900 (=> (not res!533776) (not e!757960))))

(assert (=> b!1180900 (= res!533776 (is-Cons!11741 (t!111367 l!6534)))))

(declare-fun b!1180901 () Bool)

(assert (=> b!1180901 (= e!757960 e!757961)))

(declare-fun res!533775 () Bool)

(assert (=> b!1180901 (=> res!533775 e!757961)))

(declare-fun e!757959 () Bool)

(assert (=> b!1180901 (= res!533775 e!757959)))

(declare-fun res!533778 () Bool)

(assert (=> b!1180901 (=> (not res!533778) (not e!757959))))

(assert (=> b!1180901 (= res!533778 (= (h!17142 lt!406517) (h!17142 (t!111367 l!6534))))))

(declare-fun b!1180902 () Bool)

(assert (=> b!1180902 (= e!757959 (subseq!302 (t!111367 lt!406517) (t!111367 (t!111367 l!6534))))))

(declare-fun d!337973 () Bool)

(declare-fun res!533777 () Bool)

(assert (=> d!337973 (=> res!533777 e!757962)))

(assert (=> d!337973 (= res!533777 (is-Nil!11741 lt!406517))))

(assert (=> d!337973 (= (subseq!302 lt!406517 (t!111367 l!6534)) e!757962)))

(assert (= (and d!337973 (not res!533777)) b!1180900))

(assert (= (and b!1180900 res!533776) b!1180901))

(assert (= (and b!1180901 res!533778) b!1180902))

(assert (= (and b!1180901 (not res!533775)) b!1180903))

(declare-fun m!1357051 () Bool)

(assert (=> b!1180903 m!1357051))

(assert (=> b!1180902 m!1357015))

(assert (=> b!1180609 d!337973))

(declare-fun d!337975 () Bool)

(assert (=> d!337975 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 (t!111367 l!6534)))))

(declare-fun lt!406673 () Unit!18061)

(declare-fun choose!7644 (LexerInterface!1739 List!11764 List!11765 Token!3750) Unit!18061)

(assert (=> d!337975 (= lt!406673 (choose!7644 thiss!27592 rules!4386 l!6534 (h!17142 (t!111367 l!6534))))))

(assert (=> d!337975 (not (isEmpty!7089 rules!4386))))

(assert (=> d!337975 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!308 thiss!27592 rules!4386 l!6534 (h!17142 (t!111367 l!6534))) lt!406673)))

(declare-fun bs!286931 () Bool)

(assert (= bs!286931 d!337975))

(assert (=> bs!286931 m!1356659))

(declare-fun m!1357095 () Bool)

(assert (=> bs!286931 m!1357095))

(assert (=> bs!286931 m!1356531))

(assert (=> b!1180507 d!337975))

(declare-fun d!337993 () Bool)

(assert (=> d!337993 (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 l!6534))))

(declare-fun lt!406674 () Unit!18061)

(assert (=> d!337993 (= lt!406674 (choose!7644 thiss!27592 rules!4386 l!6534 (h!17142 l!6534)))))

(assert (=> d!337993 (not (isEmpty!7089 rules!4386))))

(assert (=> d!337993 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!308 thiss!27592 rules!4386 l!6534 (h!17142 l!6534)) lt!406674)))

(declare-fun bs!286932 () Bool)

(assert (= bs!286932 d!337993))

(assert (=> bs!286932 m!1356657))

(declare-fun m!1357097 () Bool)

(assert (=> bs!286932 m!1357097))

(assert (=> bs!286932 m!1356531))

(assert (=> b!1180507 d!337993))

(assert (=> b!1180507 d!337899))

(declare-fun d!337995 () Bool)

(declare-fun lt!406675 () Bool)

(declare-fun e!757980 () Bool)

(assert (=> d!337995 (= lt!406675 e!757980)))

(declare-fun res!533797 () Bool)

(assert (=> d!337995 (=> (not res!533797) (not e!757980))))

(assert (=> d!337995 (= res!533797 (= (list!4335 (_1!6886 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 (t!111367 l!6534))))))) (list!4335 (singletonSeq!706 (h!17142 (t!111367 l!6534))))))))

(declare-fun e!757981 () Bool)

(assert (=> d!337995 (= lt!406675 e!757981)))

(declare-fun res!533799 () Bool)

(assert (=> d!337995 (=> (not res!533799) (not e!757981))))

(declare-fun lt!406676 () tuple2!12078)

(assert (=> d!337995 (= res!533799 (= (size!9286 (_1!6886 lt!406676)) 1))))

(assert (=> d!337995 (= lt!406676 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 (t!111367 l!6534))))))))

(assert (=> d!337995 (not (isEmpty!7089 rules!4386))))

(assert (=> d!337995 (= (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 (t!111367 l!6534))) lt!406675)))

(declare-fun b!1180922 () Bool)

(declare-fun res!533798 () Bool)

(assert (=> b!1180922 (=> (not res!533798) (not e!757981))))

(assert (=> b!1180922 (= res!533798 (= (apply!2565 (_1!6886 lt!406676) 0) (h!17142 (t!111367 l!6534))))))

(declare-fun b!1180923 () Bool)

(assert (=> b!1180923 (= e!757981 (isEmpty!7091 (_2!6886 lt!406676)))))

(declare-fun b!1180924 () Bool)

(assert (=> b!1180924 (= e!757980 (isEmpty!7091 (_2!6886 (lex!727 thiss!27592 rules!4386 (print!664 thiss!27592 (singletonSeq!706 (h!17142 (t!111367 l!6534))))))))))

(assert (= (and d!337995 res!533799) b!1180922))

(assert (= (and b!1180922 res!533798) b!1180923))

(assert (= (and d!337995 res!533797) b!1180924))

(declare-fun m!1357099 () Bool)

(assert (=> d!337995 m!1357099))

(declare-fun m!1357101 () Bool)

(assert (=> d!337995 m!1357101))

(declare-fun m!1357103 () Bool)

(assert (=> d!337995 m!1357103))

(declare-fun m!1357105 () Bool)

(assert (=> d!337995 m!1357105))

(declare-fun m!1357107 () Bool)

(assert (=> d!337995 m!1357107))

(assert (=> d!337995 m!1357105))

(assert (=> d!337995 m!1357105))

(assert (=> d!337995 m!1357101))

(declare-fun m!1357109 () Bool)

(assert (=> d!337995 m!1357109))

(assert (=> d!337995 m!1356531))

(declare-fun m!1357111 () Bool)

(assert (=> b!1180922 m!1357111))

(declare-fun m!1357113 () Bool)

(assert (=> b!1180923 m!1357113))

(assert (=> b!1180924 m!1357105))

(assert (=> b!1180924 m!1357105))

(assert (=> b!1180924 m!1357101))

(assert (=> b!1180924 m!1357101))

(assert (=> b!1180924 m!1357103))

(declare-fun m!1357115 () Bool)

(assert (=> b!1180924 m!1357115))

(assert (=> b!1180507 d!337995))

(declare-fun d!337997 () Bool)

(declare-fun lt!406679 () BalanceConc!7718)

(assert (=> d!337997 (= (list!4336 lt!406679) (originalCharacters!2598 (h!17142 (t!111367 l!6534))))))

(assert (=> d!337997 (= lt!406679 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))) (value!66312 (h!17142 (t!111367 l!6534)))))))

(assert (=> d!337997 (= (charsOf!1087 (h!17142 (t!111367 l!6534))) lt!406679)))

(declare-fun b_lambda!35275 () Bool)

(assert (=> (not b_lambda!35275) (not d!337997)))

(assert (=> d!337997 t!111408))

(declare-fun b_and!81077 () Bool)

(assert (= b_and!81061 (and (=> t!111408 result!79322) b_and!81077)))

(assert (=> d!337997 t!111410))

(declare-fun b_and!81079 () Bool)

(assert (= b_and!81063 (and (=> t!111410 result!79324) b_and!81079)))

(assert (=> d!337997 t!111412))

(declare-fun b_and!81081 () Bool)

(assert (= b_and!81065 (and (=> t!111412 result!79326) b_and!81081)))

(assert (=> d!337997 t!111414))

(declare-fun b_and!81083 () Bool)

(assert (= b_and!81067 (and (=> t!111414 result!79328) b_and!81083)))

(declare-fun m!1357117 () Bool)

(assert (=> d!337997 m!1357117))

(assert (=> d!337997 m!1357039))

(assert (=> b!1180507 d!337997))

(declare-fun d!337999 () Bool)

(declare-fun prefixMatchZipperSequence!110 (Regex!3314 BalanceConc!7718) Bool)

(declare-fun rulesRegex!81 (LexerInterface!1739 List!11764) Regex!3314)

(declare-fun ++!3023 (BalanceConc!7718 BalanceConc!7718) BalanceConc!7718)

(declare-fun singletonSeq!708 (C!6946) BalanceConc!7718)

(declare-fun apply!2569 (BalanceConc!7718 Int) C!6946)

(assert (=> d!337999 (= (separableTokensPredicate!149 thiss!27592 (h!17142 l!6534) (h!17142 (t!111367 l!6534)) rules!4386) (not (prefixMatchZipperSequence!110 (rulesRegex!81 thiss!27592 rules!4386) (++!3023 (charsOf!1087 (h!17142 l!6534)) (singletonSeq!708 (apply!2569 (charsOf!1087 (h!17142 (t!111367 l!6534))) 0))))))))

(declare-fun bs!286933 () Bool)

(assert (= bs!286933 d!337999))

(declare-fun m!1357119 () Bool)

(assert (=> bs!286933 m!1357119))

(assert (=> bs!286933 m!1356651))

(declare-fun m!1357121 () Bool)

(assert (=> bs!286933 m!1357121))

(declare-fun m!1357123 () Bool)

(assert (=> bs!286933 m!1357123))

(declare-fun m!1357125 () Bool)

(assert (=> bs!286933 m!1357125))

(declare-fun m!1357127 () Bool)

(assert (=> bs!286933 m!1357127))

(assert (=> bs!286933 m!1357119))

(assert (=> bs!286933 m!1357127))

(declare-fun m!1357129 () Bool)

(assert (=> bs!286933 m!1357129))

(assert (=> bs!286933 m!1357121))

(assert (=> bs!286933 m!1357125))

(assert (=> bs!286933 m!1357123))

(assert (=> bs!286933 m!1356651))

(assert (=> b!1180507 d!337999))

(declare-fun d!338001 () Bool)

(declare-fun lt!406682 () Int)

(assert (=> d!338001 (= lt!406682 (size!9289 (list!4336 (charsOf!1087 (h!17142 (t!111367 l!6534))))))))

(declare-fun size!9295 (Conc!3848) Int)

(assert (=> d!338001 (= lt!406682 (size!9295 (c!196699 (charsOf!1087 (h!17142 (t!111367 l!6534))))))))

(assert (=> d!338001 (= (size!9287 (charsOf!1087 (h!17142 (t!111367 l!6534)))) lt!406682)))

(declare-fun bs!286934 () Bool)

(assert (= bs!286934 d!338001))

(assert (=> bs!286934 m!1356651))

(declare-fun m!1357131 () Bool)

(assert (=> bs!286934 m!1357131))

(assert (=> bs!286934 m!1357131))

(declare-fun m!1357133 () Bool)

(assert (=> bs!286934 m!1357133))

(declare-fun m!1357135 () Bool)

(assert (=> bs!286934 m!1357135))

(assert (=> b!1180507 d!338001))

(declare-fun b!1180925 () Bool)

(declare-fun e!757982 () Bool)

(assert (=> b!1180925 (= e!757982 (inv!16 (value!66312 (h!17142 (t!111367 l!6534)))))))

(declare-fun b!1180926 () Bool)

(declare-fun e!757984 () Bool)

(assert (=> b!1180926 (= e!757982 e!757984)))

(declare-fun c!196754 () Bool)

(assert (=> b!1180926 (= c!196754 (is-IntegerValue!6331 (value!66312 (h!17142 (t!111367 l!6534)))))))

(declare-fun d!338003 () Bool)

(declare-fun c!196753 () Bool)

(assert (=> d!338003 (= c!196753 (is-IntegerValue!6330 (value!66312 (h!17142 (t!111367 l!6534)))))))

(assert (=> d!338003 (= (inv!21 (value!66312 (h!17142 (t!111367 l!6534)))) e!757982)))

(declare-fun b!1180927 () Bool)

(declare-fun e!757983 () Bool)

(assert (=> b!1180927 (= e!757983 (inv!15 (value!66312 (h!17142 (t!111367 l!6534)))))))

(declare-fun b!1180928 () Bool)

(assert (=> b!1180928 (= e!757984 (inv!17 (value!66312 (h!17142 (t!111367 l!6534)))))))

(declare-fun b!1180929 () Bool)

(declare-fun res!533800 () Bool)

(assert (=> b!1180929 (=> res!533800 e!757983)))

(assert (=> b!1180929 (= res!533800 (not (is-IntegerValue!6332 (value!66312 (h!17142 (t!111367 l!6534))))))))

(assert (=> b!1180929 (= e!757984 e!757983)))

(assert (= (and d!338003 c!196753) b!1180925))

(assert (= (and d!338003 (not c!196753)) b!1180926))

(assert (= (and b!1180926 c!196754) b!1180928))

(assert (= (and b!1180926 (not c!196754)) b!1180929))

(assert (= (and b!1180929 (not res!533800)) b!1180927))

(declare-fun m!1357137 () Bool)

(assert (=> b!1180925 m!1357137))

(declare-fun m!1357139 () Bool)

(assert (=> b!1180927 m!1357139))

(declare-fun m!1357141 () Bool)

(assert (=> b!1180928 m!1357141))

(assert (=> b!1180685 d!338003))

(declare-fun d!338005 () Bool)

(declare-fun lt!406685 () Int)

(assert (=> d!338005 (>= lt!406685 0)))

(declare-fun e!757987 () Int)

(assert (=> d!338005 (= lt!406685 e!757987)))

(declare-fun c!196757 () Bool)

(assert (=> d!338005 (= c!196757 (is-Nil!11738 (originalCharacters!2598 (h!17142 l!6534))))))

(assert (=> d!338005 (= (size!9289 (originalCharacters!2598 (h!17142 l!6534))) lt!406685)))

(declare-fun b!1180934 () Bool)

(assert (=> b!1180934 (= e!757987 0)))

(declare-fun b!1180935 () Bool)

(assert (=> b!1180935 (= e!757987 (+ 1 (size!9289 (t!111364 (originalCharacters!2598 (h!17142 l!6534))))))))

(assert (= (and d!338005 c!196757) b!1180934))

(assert (= (and d!338005 (not c!196757)) b!1180935))

(declare-fun m!1357143 () Bool)

(assert (=> b!1180935 m!1357143))

(assert (=> b!1180645 d!338005))

(declare-fun d!338007 () Bool)

(declare-fun charsToBigInt!0 (List!11763 Int) Int)

(assert (=> d!338007 (= (inv!15 (value!66312 (h!17142 l!6534))) (= (charsToBigInt!0 (text!15219 (value!66312 (h!17142 l!6534))) 0) (value!66307 (value!66312 (h!17142 l!6534)))))))

(declare-fun bs!286935 () Bool)

(assert (= bs!286935 d!338007))

(declare-fun m!1357145 () Bool)

(assert (=> bs!286935 m!1357145))

(assert (=> b!1180533 d!338007))

(declare-fun d!338009 () Bool)

(declare-fun c!196760 () Bool)

(assert (=> d!338009 (= c!196760 (is-Nil!11741 lt!406589))))

(declare-fun e!757990 () (Set Token!3750))

(assert (=> d!338009 (= (content!1633 lt!406589) e!757990)))

(declare-fun b!1180940 () Bool)

(assert (=> b!1180940 (= e!757990 (as set.empty (Set Token!3750)))))

(declare-fun b!1180941 () Bool)

(assert (=> b!1180941 (= e!757990 (set.union (set.insert (h!17142 lt!406589) (as set.empty (Set Token!3750))) (content!1633 (t!111367 lt!406589))))))

(assert (= (and d!338009 c!196760) b!1180940))

(assert (= (and d!338009 (not c!196760)) b!1180941))

(declare-fun m!1357147 () Bool)

(assert (=> b!1180941 m!1357147))

(declare-fun m!1357149 () Bool)

(assert (=> b!1180941 m!1357149))

(assert (=> d!337857 d!338009))

(declare-fun d!338011 () Bool)

(declare-fun c!196761 () Bool)

(assert (=> d!338011 (= c!196761 (is-Nil!11741 l!6534))))

(declare-fun e!757991 () (Set Token!3750))

(assert (=> d!338011 (= (content!1633 l!6534) e!757991)))

(declare-fun b!1180942 () Bool)

(assert (=> b!1180942 (= e!757991 (as set.empty (Set Token!3750)))))

(declare-fun b!1180943 () Bool)

(assert (=> b!1180943 (= e!757991 (set.union (set.insert (h!17142 l!6534) (as set.empty (Set Token!3750))) (content!1633 (t!111367 l!6534))))))

(assert (= (and d!338011 c!196761) b!1180942))

(assert (= (and d!338011 (not c!196761)) b!1180943))

(declare-fun m!1357151 () Bool)

(assert (=> b!1180943 m!1357151))

(assert (=> b!1180943 m!1356841))

(assert (=> d!337857 d!338011))

(declare-fun d!338013 () Bool)

(declare-fun lt!406686 () Int)

(assert (=> d!338013 (>= lt!406686 0)))

(declare-fun e!757992 () Int)

(assert (=> d!338013 (= lt!406686 e!757992)))

(declare-fun c!196762 () Bool)

(assert (=> d!338013 (= c!196762 (is-Nil!11741 lt!406589))))

(assert (=> d!338013 (= (size!9288 lt!406589) lt!406686)))

(declare-fun b!1180944 () Bool)

(assert (=> b!1180944 (= e!757992 0)))

(declare-fun b!1180945 () Bool)

(assert (=> b!1180945 (= e!757992 (+ 1 (size!9288 (t!111367 lt!406589))))))

(assert (= (and d!338013 c!196762) b!1180944))

(assert (= (and d!338013 (not c!196762)) b!1180945))

(declare-fun m!1357153 () Bool)

(assert (=> b!1180945 m!1357153))

(assert (=> b!1180631 d!338013))

(declare-fun d!338015 () Bool)

(declare-fun c!196765 () Bool)

(assert (=> d!338015 (= c!196765 (is-Node!3848 (c!196699 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534))))))))

(declare-fun e!757997 () Bool)

(assert (=> d!338015 (= (inv!15563 (c!196699 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534))))) e!757997)))

(declare-fun b!1180952 () Bool)

(declare-fun inv!15567 (Conc!3848) Bool)

(assert (=> b!1180952 (= e!757997 (inv!15567 (c!196699 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534))))))))

(declare-fun b!1180953 () Bool)

(declare-fun e!757998 () Bool)

(assert (=> b!1180953 (= e!757997 e!757998)))

(declare-fun res!533803 () Bool)

(assert (=> b!1180953 (= res!533803 (not (is-Leaf!5901 (c!196699 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534)))))))))

(assert (=> b!1180953 (=> res!533803 e!757998)))

(declare-fun b!1180954 () Bool)

(declare-fun inv!15568 (Conc!3848) Bool)

(assert (=> b!1180954 (= e!757998 (inv!15568 (c!196699 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534))))))))

(assert (= (and d!338015 c!196765) b!1180952))

(assert (= (and d!338015 (not c!196765)) b!1180953))

(assert (= (and b!1180953 (not res!533803)) b!1180954))

(declare-fun m!1357155 () Bool)

(assert (=> b!1180952 m!1357155))

(declare-fun m!1357157 () Bool)

(assert (=> b!1180954 m!1357157))

(assert (=> b!1180650 d!338015))

(declare-fun d!338017 () Bool)

(declare-fun charsToBigInt!1 (List!11763) Int)

(assert (=> d!338017 (= (inv!17 (value!66312 (h!17142 l!6534))) (= (charsToBigInt!1 (text!15218 (value!66312 (h!17142 l!6534)))) (value!66304 (value!66312 (h!17142 l!6534)))))))

(declare-fun bs!286936 () Bool)

(assert (= bs!286936 d!338017))

(declare-fun m!1357159 () Bool)

(assert (=> bs!286936 m!1357159))

(assert (=> b!1180534 d!338017))

(declare-fun d!338019 () Bool)

(assert (=> d!338019 true))

(declare-fun lt!406689 () Bool)

(declare-fun rulesValidInductive!646 (LexerInterface!1739 List!11764) Bool)

(assert (=> d!338019 (= lt!406689 (rulesValidInductive!646 thiss!27592 rules!4386))))

(declare-fun lambda!48648 () Int)

(declare-fun forall!3114 (List!11764 Int) Bool)

(assert (=> d!338019 (= lt!406689 (forall!3114 rules!4386 lambda!48648))))

(assert (=> d!338019 (= (rulesValid!726 thiss!27592 rules!4386) lt!406689)))

(declare-fun bs!286937 () Bool)

(assert (= bs!286937 d!338019))

(declare-fun m!1357161 () Bool)

(assert (=> bs!286937 m!1357161))

(declare-fun m!1357163 () Bool)

(assert (=> bs!286937 m!1357163))

(assert (=> d!337843 d!338019))

(declare-fun bs!286938 () Bool)

(declare-fun d!338021 () Bool)

(assert (= bs!286938 (and d!338021 d!337937)))

(declare-fun lambda!48649 () Int)

(assert (=> bs!286938 (= (= (toValue!3149 (transformation!2044 (h!17141 rules!4386))) (toValue!3149 (transformation!2044 (rule!3465 (h!17142 l!6534))))) (= lambda!48649 lambda!48645))))

(assert (=> d!338021 true))

(assert (=> d!338021 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 rules!4386)))) (dynLambda!5208 order!7237 lambda!48649))))

(assert (=> d!338021 (= (equivClasses!705 (toChars!3008 (transformation!2044 (h!17141 rules!4386))) (toValue!3149 (transformation!2044 (h!17141 rules!4386)))) (Forall2!353 lambda!48649))))

(declare-fun bs!286939 () Bool)

(assert (= bs!286939 d!338021))

(declare-fun m!1357165 () Bool)

(assert (=> bs!286939 m!1357165))

(assert (=> b!1180639 d!338021))

(declare-fun d!338023 () Bool)

(declare-fun res!533804 () Bool)

(declare-fun e!757999 () Bool)

(assert (=> d!338023 (=> res!533804 e!757999)))

(assert (=> d!338023 (= res!533804 (is-Nil!11741 l!6534))))

(assert (=> d!338023 (= (forall!3109 l!6534 lambda!48629) e!757999)))

(declare-fun b!1180957 () Bool)

(declare-fun e!758000 () Bool)

(assert (=> b!1180957 (= e!757999 e!758000)))

(declare-fun res!533805 () Bool)

(assert (=> b!1180957 (=> (not res!533805) (not e!758000))))

(assert (=> b!1180957 (= res!533805 (dynLambda!5203 lambda!48629 (h!17142 l!6534)))))

(declare-fun b!1180958 () Bool)

(assert (=> b!1180958 (= e!758000 (forall!3109 (t!111367 l!6534) lambda!48629))))

(assert (= (and d!338023 (not res!533804)) b!1180957))

(assert (= (and b!1180957 res!533805) b!1180958))

(declare-fun b_lambda!35277 () Bool)

(assert (=> (not b_lambda!35277) (not b!1180957)))

(declare-fun m!1357167 () Bool)

(assert (=> b!1180957 m!1357167))

(declare-fun m!1357169 () Bool)

(assert (=> b!1180958 m!1357169))

(assert (=> d!337841 d!338023))

(assert (=> d!337841 d!337859))

(declare-fun d!338025 () Bool)

(declare-fun list!4340 (Conc!3848) List!11762)

(assert (=> d!338025 (= (list!4336 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534)))) (list!4340 (c!196699 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534))))))))

(declare-fun bs!286940 () Bool)

(assert (= bs!286940 d!338025))

(declare-fun m!1357171 () Bool)

(assert (=> bs!286940 m!1357171))

(assert (=> b!1180644 d!338025))

(declare-fun d!338027 () Bool)

(declare-fun charsToInt!0 (List!11763) (_ BitVec 32))

(assert (=> d!338027 (= (inv!16 (value!66312 (h!17142 l!6534))) (= (charsToInt!0 (text!15217 (value!66312 (h!17142 l!6534)))) (value!66303 (value!66312 (h!17142 l!6534)))))))

(declare-fun bs!286941 () Bool)

(assert (= bs!286941 d!338027))

(declare-fun m!1357173 () Bool)

(assert (=> bs!286941 m!1357173))

(assert (=> b!1180531 d!338027))

(declare-fun b!1180960 () Bool)

(declare-fun e!758001 () Bool)

(declare-fun tp!336256 () Bool)

(declare-fun tp!336253 () Bool)

(assert (=> b!1180960 (= e!758001 (and tp!336256 tp!336253))))

(declare-fun b!1180962 () Bool)

(declare-fun tp!336257 () Bool)

(declare-fun tp!336254 () Bool)

(assert (=> b!1180962 (= e!758001 (and tp!336257 tp!336254))))

(declare-fun b!1180959 () Bool)

(assert (=> b!1180959 (= e!758001 tp_is_empty!5805)))

(declare-fun b!1180961 () Bool)

(declare-fun tp!336255 () Bool)

(assert (=> b!1180961 (= e!758001 tp!336255)))

(assert (=> b!1180697 (= tp!336195 e!758001)))

(assert (= (and b!1180697 (is-ElementMatch!3314 (regex!2044 (h!17141 (t!111366 rules!4386))))) b!1180959))

(assert (= (and b!1180697 (is-Concat!5425 (regex!2044 (h!17141 (t!111366 rules!4386))))) b!1180960))

(assert (= (and b!1180697 (is-Star!3314 (regex!2044 (h!17141 (t!111366 rules!4386))))) b!1180961))

(assert (= (and b!1180697 (is-Union!3314 (regex!2044 (h!17141 (t!111366 rules!4386))))) b!1180962))

(declare-fun b!1180964 () Bool)

(declare-fun e!758002 () Bool)

(declare-fun tp!336261 () Bool)

(declare-fun tp!336258 () Bool)

(assert (=> b!1180964 (= e!758002 (and tp!336261 tp!336258))))

(declare-fun b!1180966 () Bool)

(declare-fun tp!336262 () Bool)

(declare-fun tp!336259 () Bool)

(assert (=> b!1180966 (= e!758002 (and tp!336262 tp!336259))))

(declare-fun b!1180963 () Bool)

(assert (=> b!1180963 (= e!758002 tp_is_empty!5805)))

(declare-fun b!1180965 () Bool)

(declare-fun tp!336260 () Bool)

(assert (=> b!1180965 (= e!758002 tp!336260)))

(assert (=> b!1180701 (= tp!336198 e!758002)))

(assert (= (and b!1180701 (is-ElementMatch!3314 (reg!3643 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180963))

(assert (= (and b!1180701 (is-Concat!5425 (reg!3643 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180964))

(assert (= (and b!1180701 (is-Star!3314 (reg!3643 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180965))

(assert (= (and b!1180701 (is-Union!3314 (reg!3643 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180966))

(declare-fun b!1180969 () Bool)

(declare-fun e!758005 () Bool)

(assert (=> b!1180969 (= e!758005 true)))

(declare-fun b!1180968 () Bool)

(declare-fun e!758004 () Bool)

(assert (=> b!1180968 (= e!758004 e!758005)))

(declare-fun b!1180967 () Bool)

(declare-fun e!758003 () Bool)

(assert (=> b!1180967 (= e!758003 e!758004)))

(assert (=> b!1180482 e!758003))

(assert (= b!1180968 b!1180969))

(assert (= b!1180967 b!1180968))

(assert (= (and b!1180482 (is-Cons!11740 (t!111366 rules!4386))) b!1180967))

(assert (=> b!1180969 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 (t!111366 rules!4386))))) (dynLambda!5198 order!7225 lambda!48620))))

(assert (=> b!1180969 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (h!17141 (t!111366 rules!4386))))) (dynLambda!5198 order!7225 lambda!48620))))

(declare-fun b!1180971 () Bool)

(declare-fun e!758006 () Bool)

(declare-fun tp!336266 () Bool)

(declare-fun tp!336263 () Bool)

(assert (=> b!1180971 (= e!758006 (and tp!336266 tp!336263))))

(declare-fun b!1180973 () Bool)

(declare-fun tp!336267 () Bool)

(declare-fun tp!336264 () Bool)

(assert (=> b!1180973 (= e!758006 (and tp!336267 tp!336264))))

(declare-fun b!1180970 () Bool)

(assert (=> b!1180970 (= e!758006 tp_is_empty!5805)))

(declare-fun b!1180972 () Bool)

(declare-fun tp!336265 () Bool)

(assert (=> b!1180972 (= e!758006 tp!336265)))

(assert (=> b!1180686 (= tp!336180 e!758006)))

(assert (= (and b!1180686 (is-ElementMatch!3314 (regex!2044 (rule!3465 (h!17142 (t!111367 l!6534)))))) b!1180970))

(assert (= (and b!1180686 (is-Concat!5425 (regex!2044 (rule!3465 (h!17142 (t!111367 l!6534)))))) b!1180971))

(assert (= (and b!1180686 (is-Star!3314 (regex!2044 (rule!3465 (h!17142 (t!111367 l!6534)))))) b!1180972))

(assert (= (and b!1180686 (is-Union!3314 (regex!2044 (rule!3465 (h!17142 (t!111367 l!6534)))))) b!1180973))

(declare-fun b!1180976 () Bool)

(declare-fun b_free!28101 () Bool)

(declare-fun b_next!28805 () Bool)

(assert (=> b!1180976 (= b_free!28101 (not b_next!28805))))

(declare-fun tp!336269 () Bool)

(declare-fun b_and!81085 () Bool)

(assert (=> b!1180976 (= tp!336269 b_and!81085)))

(declare-fun b_free!28103 () Bool)

(declare-fun b_next!28807 () Bool)

(assert (=> b!1180976 (= b_free!28103 (not b_next!28807))))

(declare-fun t!111425 () Bool)

(declare-fun tb!66125 () Bool)

(assert (=> (and b!1180976 (= (toChars!3008 (transformation!2044 (h!17141 (t!111366 (t!111366 rules!4386))))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534))))) t!111425) tb!66125))

(declare-fun result!79338 () Bool)

(assert (= result!79338 result!79292))

(assert (=> b!1180644 t!111425))

(declare-fun tb!66127 () Bool)

(declare-fun t!111427 () Bool)

(assert (=> (and b!1180976 (= (toChars!3008 (transformation!2044 (h!17141 (t!111366 (t!111366 rules!4386))))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534)))))) t!111427) tb!66127))

(declare-fun result!79340 () Bool)

(assert (= result!79340 result!79322))

(assert (=> b!1180894 t!111427))

(assert (=> d!337997 t!111427))

(declare-fun tp!336268 () Bool)

(declare-fun b_and!81087 () Bool)

(assert (=> b!1180976 (= tp!336268 (and (=> t!111425 result!79338) (=> t!111427 result!79340) b_and!81087))))

(declare-fun e!758007 () Bool)

(assert (=> b!1180976 (= e!758007 (and tp!336269 tp!336268))))

(declare-fun b!1180975 () Bool)

(declare-fun tp!336271 () Bool)

(declare-fun e!758009 () Bool)

(assert (=> b!1180975 (= e!758009 (and tp!336271 (inv!15556 (tag!2306 (h!17141 (t!111366 (t!111366 rules!4386))))) (inv!15559 (transformation!2044 (h!17141 (t!111366 (t!111366 rules!4386))))) e!758007))))

(declare-fun b!1180974 () Bool)

(declare-fun e!758008 () Bool)

(declare-fun tp!336270 () Bool)

(assert (=> b!1180974 (= e!758008 (and e!758009 tp!336270))))

(assert (=> b!1180696 (= tp!336194 e!758008)))

(assert (= b!1180975 b!1180976))

(assert (= b!1180974 b!1180975))

(assert (= (and b!1180696 (is-Cons!11740 (t!111366 (t!111366 rules!4386)))) b!1180974))

(declare-fun m!1357175 () Bool)

(assert (=> b!1180975 m!1357175))

(declare-fun m!1357177 () Bool)

(assert (=> b!1180975 m!1357177))

(declare-fun b!1180978 () Bool)

(declare-fun e!758011 () Bool)

(declare-fun tp!336275 () Bool)

(declare-fun tp!336272 () Bool)

(assert (=> b!1180978 (= e!758011 (and tp!336275 tp!336272))))

(declare-fun b!1180980 () Bool)

(declare-fun tp!336276 () Bool)

(declare-fun tp!336273 () Bool)

(assert (=> b!1180980 (= e!758011 (and tp!336276 tp!336273))))

(declare-fun b!1180977 () Bool)

(assert (=> b!1180977 (= e!758011 tp_is_empty!5805)))

(declare-fun b!1180979 () Bool)

(declare-fun tp!336274 () Bool)

(assert (=> b!1180979 (= e!758011 tp!336274)))

(assert (=> b!1180700 (= tp!336199 e!758011)))

(assert (= (and b!1180700 (is-ElementMatch!3314 (regOne!7140 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180977))

(assert (= (and b!1180700 (is-Concat!5425 (regOne!7140 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180978))

(assert (= (and b!1180700 (is-Star!3314 (regOne!7140 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180979))

(assert (= (and b!1180700 (is-Union!3314 (regOne!7140 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180980))

(declare-fun b!1180982 () Bool)

(declare-fun e!758012 () Bool)

(declare-fun tp!336280 () Bool)

(declare-fun tp!336277 () Bool)

(assert (=> b!1180982 (= e!758012 (and tp!336280 tp!336277))))

(declare-fun b!1180984 () Bool)

(declare-fun tp!336281 () Bool)

(declare-fun tp!336278 () Bool)

(assert (=> b!1180984 (= e!758012 (and tp!336281 tp!336278))))

(declare-fun b!1180981 () Bool)

(assert (=> b!1180981 (= e!758012 tp_is_empty!5805)))

(declare-fun b!1180983 () Bool)

(declare-fun tp!336279 () Bool)

(assert (=> b!1180983 (= e!758012 tp!336279)))

(assert (=> b!1180700 (= tp!336196 e!758012)))

(assert (= (and b!1180700 (is-ElementMatch!3314 (regTwo!7140 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180981))

(assert (= (and b!1180700 (is-Concat!5425 (regTwo!7140 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180982))

(assert (= (and b!1180700 (is-Star!3314 (regTwo!7140 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180983))

(assert (= (and b!1180700 (is-Union!3314 (regTwo!7140 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180984))

(declare-fun b!1180986 () Bool)

(declare-fun e!758013 () Bool)

(declare-fun tp!336285 () Bool)

(declare-fun tp!336282 () Bool)

(assert (=> b!1180986 (= e!758013 (and tp!336285 tp!336282))))

(declare-fun b!1180988 () Bool)

(declare-fun tp!336286 () Bool)

(declare-fun tp!336283 () Bool)

(assert (=> b!1180988 (= e!758013 (and tp!336286 tp!336283))))

(declare-fun b!1180985 () Bool)

(assert (=> b!1180985 (= e!758013 tp_is_empty!5805)))

(declare-fun b!1180987 () Bool)

(declare-fun tp!336284 () Bool)

(assert (=> b!1180987 (= e!758013 tp!336284)))

(assert (=> b!1180672 (= tp!336166 e!758013)))

(assert (= (and b!1180672 (is-ElementMatch!3314 (reg!3643 (regex!2044 (h!17141 rules!4386))))) b!1180985))

(assert (= (and b!1180672 (is-Concat!5425 (reg!3643 (regex!2044 (h!17141 rules!4386))))) b!1180986))

(assert (= (and b!1180672 (is-Star!3314 (reg!3643 (regex!2044 (h!17141 rules!4386))))) b!1180987))

(assert (= (and b!1180672 (is-Union!3314 (reg!3643 (regex!2044 (h!17141 rules!4386))))) b!1180988))

(declare-fun b!1180990 () Bool)

(declare-fun e!758014 () Bool)

(declare-fun tp!336290 () Bool)

(declare-fun tp!336287 () Bool)

(assert (=> b!1180990 (= e!758014 (and tp!336290 tp!336287))))

(declare-fun b!1180992 () Bool)

(declare-fun tp!336291 () Bool)

(declare-fun tp!336288 () Bool)

(assert (=> b!1180992 (= e!758014 (and tp!336291 tp!336288))))

(declare-fun b!1180989 () Bool)

(assert (=> b!1180989 (= e!758014 tp_is_empty!5805)))

(declare-fun b!1180991 () Bool)

(declare-fun tp!336289 () Bool)

(assert (=> b!1180991 (= e!758014 tp!336289)))

(assert (=> b!1180702 (= tp!336200 e!758014)))

(assert (= (and b!1180702 (is-ElementMatch!3314 (regOne!7141 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180989))

(assert (= (and b!1180702 (is-Concat!5425 (regOne!7141 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180990))

(assert (= (and b!1180702 (is-Star!3314 (regOne!7141 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180991))

(assert (= (and b!1180702 (is-Union!3314 (regOne!7141 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180992))

(declare-fun b!1180994 () Bool)

(declare-fun e!758015 () Bool)

(declare-fun tp!336295 () Bool)

(declare-fun tp!336292 () Bool)

(assert (=> b!1180994 (= e!758015 (and tp!336295 tp!336292))))

(declare-fun b!1180996 () Bool)

(declare-fun tp!336296 () Bool)

(declare-fun tp!336293 () Bool)

(assert (=> b!1180996 (= e!758015 (and tp!336296 tp!336293))))

(declare-fun b!1180993 () Bool)

(assert (=> b!1180993 (= e!758015 tp_is_empty!5805)))

(declare-fun b!1180995 () Bool)

(declare-fun tp!336294 () Bool)

(assert (=> b!1180995 (= e!758015 tp!336294)))

(assert (=> b!1180702 (= tp!336197 e!758015)))

(assert (= (and b!1180702 (is-ElementMatch!3314 (regTwo!7141 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180993))

(assert (= (and b!1180702 (is-Concat!5425 (regTwo!7141 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180994))

(assert (= (and b!1180702 (is-Star!3314 (regTwo!7141 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180995))

(assert (= (and b!1180702 (is-Union!3314 (regTwo!7141 (regex!2044 (rule!3465 (h!17142 l!6534)))))) b!1180996))

(declare-fun b!1180998 () Bool)

(declare-fun e!758016 () Bool)

(declare-fun tp!336300 () Bool)

(declare-fun tp!336297 () Bool)

(assert (=> b!1180998 (= e!758016 (and tp!336300 tp!336297))))

(declare-fun b!1181000 () Bool)

(declare-fun tp!336301 () Bool)

(declare-fun tp!336298 () Bool)

(assert (=> b!1181000 (= e!758016 (and tp!336301 tp!336298))))

(declare-fun b!1180997 () Bool)

(assert (=> b!1180997 (= e!758016 tp_is_empty!5805)))

(declare-fun b!1180999 () Bool)

(declare-fun tp!336299 () Bool)

(assert (=> b!1180999 (= e!758016 tp!336299)))

(assert (=> b!1180671 (= tp!336167 e!758016)))

(assert (= (and b!1180671 (is-ElementMatch!3314 (regOne!7140 (regex!2044 (h!17141 rules!4386))))) b!1180997))

(assert (= (and b!1180671 (is-Concat!5425 (regOne!7140 (regex!2044 (h!17141 rules!4386))))) b!1180998))

(assert (= (and b!1180671 (is-Star!3314 (regOne!7140 (regex!2044 (h!17141 rules!4386))))) b!1180999))

(assert (= (and b!1180671 (is-Union!3314 (regOne!7140 (regex!2044 (h!17141 rules!4386))))) b!1181000))

(declare-fun b!1181002 () Bool)

(declare-fun e!758017 () Bool)

(declare-fun tp!336305 () Bool)

(declare-fun tp!336302 () Bool)

(assert (=> b!1181002 (= e!758017 (and tp!336305 tp!336302))))

(declare-fun b!1181004 () Bool)

(declare-fun tp!336306 () Bool)

(declare-fun tp!336303 () Bool)

(assert (=> b!1181004 (= e!758017 (and tp!336306 tp!336303))))

(declare-fun b!1181001 () Bool)

(assert (=> b!1181001 (= e!758017 tp_is_empty!5805)))

(declare-fun b!1181003 () Bool)

(declare-fun tp!336304 () Bool)

(assert (=> b!1181003 (= e!758017 tp!336304)))

(assert (=> b!1180671 (= tp!336164 e!758017)))

(assert (= (and b!1180671 (is-ElementMatch!3314 (regTwo!7140 (regex!2044 (h!17141 rules!4386))))) b!1181001))

(assert (= (and b!1180671 (is-Concat!5425 (regTwo!7140 (regex!2044 (h!17141 rules!4386))))) b!1181002))

(assert (= (and b!1180671 (is-Star!3314 (regTwo!7140 (regex!2044 (h!17141 rules!4386))))) b!1181003))

(assert (= (and b!1180671 (is-Union!3314 (regTwo!7140 (regex!2044 (h!17141 rules!4386))))) b!1181004))

(declare-fun b!1181007 () Bool)

(declare-fun e!758020 () Bool)

(assert (=> b!1181007 (= e!758020 true)))

(declare-fun b!1181006 () Bool)

(declare-fun e!758019 () Bool)

(assert (=> b!1181006 (= e!758019 e!758020)))

(declare-fun b!1181005 () Bool)

(declare-fun e!758018 () Bool)

(assert (=> b!1181005 (= e!758018 e!758019)))

(assert (=> b!1180584 e!758018))

(assert (= b!1181006 b!1181007))

(assert (= b!1181005 b!1181006))

(assert (= (and b!1180584 (is-Cons!11740 (t!111366 rules!4386))) b!1181005))

(assert (=> b!1181007 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 (t!111366 rules!4386))))) (dynLambda!5198 order!7225 lambda!48632))))

(assert (=> b!1181007 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (h!17141 (t!111366 rules!4386))))) (dynLambda!5198 order!7225 lambda!48632))))

(declare-fun b!1181011 () Bool)

(declare-fun b_free!28105 () Bool)

(declare-fun b_next!28809 () Bool)

(assert (=> b!1181011 (= b_free!28105 (not b_next!28809))))

(declare-fun tp!336310 () Bool)

(declare-fun b_and!81089 () Bool)

(assert (=> b!1181011 (= tp!336310 b_and!81089)))

(declare-fun b_free!28107 () Bool)

(declare-fun b_next!28811 () Bool)

(assert (=> b!1181011 (= b_free!28107 (not b_next!28811))))

(declare-fun t!111429 () Bool)

(declare-fun tb!66129 () Bool)

(assert (=> (and b!1181011 (= (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 (t!111367 l!6534)))))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534))))) t!111429) tb!66129))

(declare-fun result!79342 () Bool)

(assert (= result!79342 result!79292))

(assert (=> b!1180644 t!111429))

(declare-fun t!111431 () Bool)

(declare-fun tb!66131 () Bool)

(assert (=> (and b!1181011 (= (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 (t!111367 l!6534)))))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534)))))) t!111431) tb!66131))

(declare-fun result!79344 () Bool)

(assert (= result!79344 result!79322))

(assert (=> b!1180894 t!111431))

(assert (=> d!337997 t!111431))

(declare-fun tp!336307 () Bool)

(declare-fun b_and!81091 () Bool)

(assert (=> b!1181011 (= tp!336307 (and (=> t!111429 result!79342) (=> t!111431 result!79344) b_and!81091))))

(declare-fun e!758025 () Bool)

(declare-fun e!758024 () Bool)

(declare-fun tp!336308 () Bool)

(declare-fun b!1181010 () Bool)

(assert (=> b!1181010 (= e!758024 (and tp!336308 (inv!15556 (tag!2306 (rule!3465 (h!17142 (t!111367 (t!111367 l!6534)))))) (inv!15559 (transformation!2044 (rule!3465 (h!17142 (t!111367 (t!111367 l!6534)))))) e!758025))))

(declare-fun e!758021 () Bool)

(declare-fun b!1181009 () Bool)

(declare-fun tp!336311 () Bool)

(assert (=> b!1181009 (= e!758021 (and (inv!21 (value!66312 (h!17142 (t!111367 (t!111367 l!6534))))) e!758024 tp!336311))))

(declare-fun e!758022 () Bool)

(declare-fun tp!336309 () Bool)

(declare-fun b!1181008 () Bool)

(assert (=> b!1181008 (= e!758022 (and (inv!15560 (h!17142 (t!111367 (t!111367 l!6534)))) e!758021 tp!336309))))

(assert (=> b!1181011 (= e!758025 (and tp!336310 tp!336307))))

(assert (=> b!1180684 (= tp!336181 e!758022)))

(assert (= b!1181010 b!1181011))

(assert (= b!1181009 b!1181010))

(assert (= b!1181008 b!1181009))

(assert (= (and b!1180684 (is-Cons!11741 (t!111367 (t!111367 l!6534)))) b!1181008))

(declare-fun m!1357179 () Bool)

(assert (=> b!1181010 m!1357179))

(declare-fun m!1357181 () Bool)

(assert (=> b!1181010 m!1357181))

(declare-fun m!1357183 () Bool)

(assert (=> b!1181009 m!1357183))

(declare-fun m!1357185 () Bool)

(assert (=> b!1181008 m!1357185))

(declare-fun b!1181014 () Bool)

(declare-fun e!758029 () Bool)

(assert (=> b!1181014 (= e!758029 true)))

(declare-fun b!1181013 () Bool)

(declare-fun e!758028 () Bool)

(assert (=> b!1181013 (= e!758028 e!758029)))

(declare-fun b!1181012 () Bool)

(declare-fun e!758027 () Bool)

(assert (=> b!1181012 (= e!758027 e!758028)))

(assert (=> b!1180657 e!758027))

(assert (= b!1181013 b!1181014))

(assert (= b!1181012 b!1181013))

(assert (= (and b!1180657 (is-Cons!11740 (t!111366 (t!111366 rules!4386)))) b!1181012))

(assert (=> b!1181014 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 (t!111366 (t!111366 rules!4386)))))) (dynLambda!5198 order!7225 lambda!48612))))

(assert (=> b!1181014 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (h!17141 (t!111366 (t!111366 rules!4386)))))) (dynLambda!5198 order!7225 lambda!48612))))

(declare-fun b!1181015 () Bool)

(declare-fun e!758030 () Bool)

(declare-fun tp!336312 () Bool)

(assert (=> b!1181015 (= e!758030 (and tp_is_empty!5805 tp!336312))))

(assert (=> b!1180685 (= tp!336183 e!758030)))

(assert (= (and b!1180685 (is-Cons!11738 (originalCharacters!2598 (h!17142 (t!111367 l!6534))))) b!1181015))

(declare-fun b!1181024 () Bool)

(declare-fun tp!336320 () Bool)

(declare-fun e!758035 () Bool)

(declare-fun tp!336319 () Bool)

(assert (=> b!1181024 (= e!758035 (and (inv!15563 (left!10242 (c!196699 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534)))))) tp!336320 (inv!15563 (right!10572 (c!196699 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534)))))) tp!336319))))

(declare-fun b!1181026 () Bool)

(declare-fun e!758036 () Bool)

(declare-fun tp!336321 () Bool)

(assert (=> b!1181026 (= e!758036 tp!336321)))

(declare-fun b!1181025 () Bool)

(declare-fun inv!15569 (IArray!7701) Bool)

(assert (=> b!1181025 (= e!758035 (and (inv!15569 (xs!6553 (c!196699 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534)))))) e!758036))))

(assert (=> b!1180650 (= tp!336150 (and (inv!15563 (c!196699 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534))))) e!758035))))

(assert (= (and b!1180650 (is-Node!3848 (c!196699 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534)))))) b!1181024))

(assert (= b!1181025 b!1181026))

(assert (= (and b!1180650 (is-Leaf!5901 (c!196699 (dynLambda!5204 (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (value!66312 (h!17142 l!6534)))))) b!1181025))

(declare-fun m!1357187 () Bool)

(assert (=> b!1181024 m!1357187))

(declare-fun m!1357189 () Bool)

(assert (=> b!1181024 m!1357189))

(declare-fun m!1357191 () Bool)

(assert (=> b!1181025 m!1357191))

(assert (=> b!1180650 m!1356731))

(declare-fun b!1181029 () Bool)

(declare-fun e!758039 () Bool)

(assert (=> b!1181029 (= e!758039 true)))

(declare-fun b!1181028 () Bool)

(declare-fun e!758038 () Bool)

(assert (=> b!1181028 (= e!758038 e!758039)))

(declare-fun b!1181027 () Bool)

(declare-fun e!758037 () Bool)

(assert (=> b!1181027 (= e!758037 e!758038)))

(assert (=> b!1180572 e!758037))

(assert (= b!1181028 b!1181029))

(assert (= b!1181027 b!1181028))

(assert (= (and b!1180572 (is-Cons!11740 (t!111366 rules!4386))) b!1181027))

(assert (=> b!1181029 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 (t!111366 rules!4386))))) (dynLambda!5198 order!7225 lambda!48629))))

(assert (=> b!1181029 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (h!17141 (t!111366 rules!4386))))) (dynLambda!5198 order!7225 lambda!48629))))

(declare-fun b!1181031 () Bool)

(declare-fun e!758040 () Bool)

(declare-fun tp!336325 () Bool)

(declare-fun tp!336322 () Bool)

(assert (=> b!1181031 (= e!758040 (and tp!336325 tp!336322))))

(declare-fun b!1181033 () Bool)

(declare-fun tp!336326 () Bool)

(declare-fun tp!336323 () Bool)

(assert (=> b!1181033 (= e!758040 (and tp!336326 tp!336323))))

(declare-fun b!1181030 () Bool)

(assert (=> b!1181030 (= e!758040 tp_is_empty!5805)))

(declare-fun b!1181032 () Bool)

(declare-fun tp!336324 () Bool)

(assert (=> b!1181032 (= e!758040 tp!336324)))

(assert (=> b!1180673 (= tp!336168 e!758040)))

(assert (= (and b!1180673 (is-ElementMatch!3314 (regOne!7141 (regex!2044 (h!17141 rules!4386))))) b!1181030))

(assert (= (and b!1180673 (is-Concat!5425 (regOne!7141 (regex!2044 (h!17141 rules!4386))))) b!1181031))

(assert (= (and b!1180673 (is-Star!3314 (regOne!7141 (regex!2044 (h!17141 rules!4386))))) b!1181032))

(assert (= (and b!1180673 (is-Union!3314 (regOne!7141 (regex!2044 (h!17141 rules!4386))))) b!1181033))

(declare-fun b!1181035 () Bool)

(declare-fun e!758041 () Bool)

(declare-fun tp!336330 () Bool)

(declare-fun tp!336327 () Bool)

(assert (=> b!1181035 (= e!758041 (and tp!336330 tp!336327))))

(declare-fun b!1181037 () Bool)

(declare-fun tp!336331 () Bool)

(declare-fun tp!336328 () Bool)

(assert (=> b!1181037 (= e!758041 (and tp!336331 tp!336328))))

(declare-fun b!1181034 () Bool)

(assert (=> b!1181034 (= e!758041 tp_is_empty!5805)))

(declare-fun b!1181036 () Bool)

(declare-fun tp!336329 () Bool)

(assert (=> b!1181036 (= e!758041 tp!336329)))

(assert (=> b!1180673 (= tp!336165 e!758041)))

(assert (= (and b!1180673 (is-ElementMatch!3314 (regTwo!7141 (regex!2044 (h!17141 rules!4386))))) b!1181034))

(assert (= (and b!1180673 (is-Concat!5425 (regTwo!7141 (regex!2044 (h!17141 rules!4386))))) b!1181035))

(assert (= (and b!1180673 (is-Star!3314 (regTwo!7141 (regex!2044 (h!17141 rules!4386))))) b!1181036))

(assert (= (and b!1180673 (is-Union!3314 (regTwo!7141 (regex!2044 (h!17141 rules!4386))))) b!1181037))

(declare-fun b!1181040 () Bool)

(declare-fun e!758044 () Bool)

(assert (=> b!1181040 (= e!758044 true)))

(declare-fun b!1181039 () Bool)

(declare-fun e!758043 () Bool)

(assert (=> b!1181039 (= e!758043 e!758044)))

(declare-fun b!1181038 () Bool)

(declare-fun e!758042 () Bool)

(assert (=> b!1181038 (= e!758042 e!758043)))

(assert (=> b!1180567 e!758042))

(assert (= b!1181039 b!1181040))

(assert (= b!1181038 b!1181039))

(assert (= (and b!1180567 (is-Cons!11740 (t!111366 rules!4386))) b!1181038))

(assert (=> b!1181040 (< (dynLambda!5197 order!7223 (toValue!3149 (transformation!2044 (h!17141 (t!111366 rules!4386))))) (dynLambda!5198 order!7225 lambda!48628))))

(assert (=> b!1181040 (< (dynLambda!5199 order!7227 (toChars!3008 (transformation!2044 (h!17141 (t!111366 rules!4386))))) (dynLambda!5198 order!7225 lambda!48628))))

(declare-fun b!1181041 () Bool)

(declare-fun e!758045 () Bool)

(declare-fun tp!336332 () Bool)

(assert (=> b!1181041 (= e!758045 (and tp_is_empty!5805 tp!336332))))

(assert (=> b!1180656 (= tp!336153 e!758045)))

(assert (= (and b!1180656 (is-Cons!11738 (t!111364 (originalCharacters!2598 (h!17142 l!6534))))) b!1181041))

(declare-fun b_lambda!35279 () Bool)

(assert (= b_lambda!35263 (or d!337835 b_lambda!35279)))

(declare-fun bs!286942 () Bool)

(declare-fun d!338029 () Bool)

(assert (= bs!286942 (and d!338029 d!337835)))

(assert (=> bs!286942 (= (dynLambda!5203 lambda!48628 (h!17142 (t!111367 lt!406517))) (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 (t!111367 lt!406517))))))

(assert (=> bs!286942 m!1356685))

(assert (=> b!1180863 d!338029))

(declare-fun b_lambda!35281 () Bool)

(assert (= b_lambda!35259 (or d!337817 b_lambda!35281)))

(declare-fun bs!286943 () Bool)

(declare-fun d!338031 () Bool)

(assert (= bs!286943 (and d!338031 d!337817)))

(assert (=> bs!286943 (= (dynLambda!5203 lambda!48620 (h!17142 (list!4335 (seqFromList!1531 lt!406517)))) (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 (list!4335 (seqFromList!1531 lt!406517)))))))

(assert (=> bs!286943 m!1356957))

(assert (=> b!1180845 d!338031))

(declare-fun b_lambda!35283 () Bool)

(assert (= b_lambda!35265 (or b!1180375 b_lambda!35283)))

(declare-fun bs!286944 () Bool)

(declare-fun d!338033 () Bool)

(assert (= bs!286944 (and d!338033 b!1180375)))

(assert (=> bs!286944 (= (dynLambda!5203 lambda!48612 (h!17142 (t!111367 lt!406517))) (rulesProduceIndividualToken!772 Lexer!1737 rules!4386 (h!17142 (t!111367 lt!406517))))))

(declare-fun m!1357193 () Bool)

(assert (=> bs!286944 m!1357193))

(assert (=> b!1180865 d!338033))

(declare-fun b_lambda!35285 () Bool)

(assert (= b_lambda!35261 (or d!337845 b_lambda!35285)))

(declare-fun bs!286945 () Bool)

(declare-fun d!338035 () Bool)

(assert (= bs!286945 (and d!338035 d!337845)))

(assert (=> bs!286945 (= (dynLambda!5203 lambda!48632 (h!17142 lt!406517)) (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 lt!406517)))))

(assert (=> bs!286945 m!1356523))

(assert (=> b!1180847 d!338035))

(declare-fun b_lambda!35287 () Bool)

(assert (= b_lambda!35267 (or b!1180375 b_lambda!35287)))

(declare-fun bs!286946 () Bool)

(declare-fun d!338037 () Bool)

(assert (= bs!286946 (and d!338037 b!1180375)))

(assert (=> bs!286946 (= (dynLambda!5203 lambda!48612 (h!17142 l!6534)) (rulesProduceIndividualToken!772 Lexer!1737 rules!4386 (h!17142 l!6534)))))

(declare-fun m!1357195 () Bool)

(assert (=> bs!286946 m!1357195))

(assert (=> b!1180883 d!338037))

(declare-fun b_lambda!35289 () Bool)

(assert (= b_lambda!35275 (or (and b!1180976 b_free!28103 (= (toChars!3008 (transformation!2044 (h!17141 (t!111366 (t!111366 rules!4386))))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))))) (and b!1180384 b_free!28075 (= (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))))) (and b!1180379 b_free!28071 (= (toChars!3008 (transformation!2044 (h!17141 rules!4386))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))))) (and b!1181011 b_free!28107 (= (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 (t!111367 l!6534)))))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))))) (and b!1180698 b_free!28091 (= (toChars!3008 (transformation!2044 (h!17141 (t!111366 rules!4386)))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))))) (and b!1180687 b_free!28087) b_lambda!35289)))

(declare-fun b_lambda!35291 () Bool)

(assert (= b_lambda!35269 (or (and b!1180976 b_free!28103 (= (toChars!3008 (transformation!2044 (h!17141 (t!111366 (t!111366 rules!4386))))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))))) (and b!1180384 b_free!28075 (= (toChars!3008 (transformation!2044 (rule!3465 (h!17142 l!6534)))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))))) (and b!1180379 b_free!28071 (= (toChars!3008 (transformation!2044 (h!17141 rules!4386))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))))) (and b!1181011 b_free!28107 (= (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 (t!111367 l!6534)))))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))))) (and b!1180698 b_free!28091 (= (toChars!3008 (transformation!2044 (h!17141 (t!111366 rules!4386)))) (toChars!3008 (transformation!2044 (rule!3465 (h!17142 (t!111367 l!6534))))))) (and b!1180687 b_free!28087) b_lambda!35291)))

(declare-fun b_lambda!35293 () Bool)

(assert (= b_lambda!35277 (or d!337841 b_lambda!35293)))

(declare-fun bs!286947 () Bool)

(declare-fun d!338039 () Bool)

(assert (= bs!286947 (and d!338039 d!337841)))

(assert (=> bs!286947 (= (dynLambda!5203 lambda!48629 (h!17142 l!6534)) (rulesProduceIndividualToken!772 thiss!27592 rules!4386 (h!17142 l!6534)))))

(assert (=> bs!286947 m!1356657))

(assert (=> b!1180957 d!338039))

(push 1)

(assert (not b!1180849))

(assert (not d!338021))

(assert (not bs!286947))

(assert (not d!337895))

(assert b_and!81025)

(assert (not b!1180848))

(assert (not b!1180998))

(assert (not b!1181012))

(assert (not b!1180880))

(assert (not d!337943))

(assert (not b!1180980))

(assert (not d!337975))

(assert (not b!1180964))

(assert (not b!1180866))

(assert (not b!1180994))

(assert (not b_next!28793))

(assert (not d!337999))

(assert (not d!337971))

(assert (not b!1180999))

(assert (not b!1181031))

(assert (not b!1180894))

(assert (not d!337951))

(assert (not b!1180988))

(assert (not b!1180832))

(assert (not d!337909))

(assert (not b!1180844))

(assert (not bs!286943))

(assert (not b!1181026))

(assert (not b!1180971))

(assert (not b!1180924))

(assert (not b!1181000))

(assert (not b!1180864))

(assert (not b!1180961))

(assert (not b!1180814))

(assert (not d!337917))

(assert (not d!337995))

(assert (not b!1180811))

(assert b_and!81083)

(assert (not b!1180978))

(assert (not b!1180813))

(assert (not b!1180922))

(assert (not b!1180996))

(assert (not b_next!28791))

(assert (not d!337941))

(assert (not d!338017))

(assert (not b!1180831))

(assert (not d!337967))

(assert (not b!1180995))

(assert (not b_next!28795))

(assert (not b_next!28809))

(assert b_and!81077)

(assert (not b!1180923))

(assert (not b!1180882))

(assert (not b!1181041))

(assert (not d!337927))

(assert (not b!1180860))

(assert (not b!1180806))

(assert (not b_lambda!35281))

(assert (not b!1180833))

(assert (not b!1180799))

(assert (not b_next!28775))

(assert (not b!1181037))

(assert (not b!1180935))

(assert (not b!1180975))

(assert (not b!1180945))

(assert (not d!337905))

(assert (not b_lambda!35253))

(assert (not b!1180965))

(assert (not b!1180874))

(assert (not b!1180886))

(assert (not b!1181010))

(assert (not b!1181004))

(assert (not d!337891))

(assert (not d!337947))

(assert (not b!1180650))

(assert (not b!1180896))

(assert (not d!337923))

(assert (not b!1180902))

(assert (not b!1181027))

(assert (not b_next!28789))

(assert (not d!337907))

(assert (not tb!66109))

(assert (not b!1181038))

(assert (not b!1180954))

(assert (not b!1180885))

(assert (not bm!82584))

(assert (not b!1180899))

(assert b_and!81085)

(assert (not d!338001))

(assert b_and!81089)

(assert (not b_next!28779))

(assert (not b!1181008))

(assert (not b!1180859))

(assert (not b!1180830))

(assert (not b!1180857))

(assert (not b!1181009))

(assert (not b!1180973))

(assert (not b!1180892))

(assert (not b!1180925))

(assert (not b!1181036))

(assert (not b!1180891))

(assert (not b!1180990))

(assert (not b!1180992))

(assert (not d!337939))

(assert tp_is_empty!5805)

(assert (not d!337959))

(assert b_and!81081)

(assert (not d!338025))

(assert (not b_lambda!35287))

(assert (not d!337897))

(assert (not b!1181015))

(assert (not b_lambda!35293))

(assert (not b!1180858))

(assert (not d!337997))

(assert (not d!337969))

(assert (not b!1180986))

(assert (not b!1180839))

(assert (not d!337901))

(assert (not b!1180890))

(assert (not b!1181005))

(assert (not b!1180991))

(assert (not b!1180974))

(assert (not b!1180798))

(assert (not d!338019))

(assert (not b_next!28811))

(assert b_and!81021)

(assert (not bs!286945))

(assert (not b!1180967))

(assert (not d!337957))

(assert (not b!1180836))

(assert (not b!1180875))

(assert (not b!1180850))

(assert (not b!1180941))

(assert (not b!1180873))

(assert (not b!1180958))

(assert (not b!1180982))

(assert (not d!337911))

(assert (not b!1180893))

(assert (not b!1181002))

(assert (not b!1180903))

(assert (not b!1180972))

(assert (not bs!286942))

(assert (not b_next!28773))

(assert (not b!1181033))

(assert (not b!1180984))

(assert (not b!1181032))

(assert (not b!1180966))

(assert b_and!81087)

(assert (not b_lambda!35285))

(assert b_and!81045)

(assert (not b_lambda!35283))

(assert (not d!338027))

(assert (not b_next!28805))

(assert b_and!81091)

(assert (not b!1181024))

(assert (not bs!286946))

(assert b_and!81049)

(assert (not b_lambda!35251))

(assert b_and!81079)

(assert (not b!1180838))

(assert (not b!1180928))

(assert (not bs!286944))

(assert (not b_next!28777))

(assert (not b!1180962))

(assert (not d!337893))

(assert (not b!1180837))

(assert (not b!1180960))

(assert (not b!1180952))

(assert (not d!337937))

(assert (not b!1181025))

(assert (not b!1180884))

(assert (not b!1180851))

(assert (not b!1180812))

(assert (not d!337993))

(assert (not d!337921))

(assert (not d!337899))

(assert (not b!1180895))

(assert (not b!1180881))

(assert (not b!1180983))

(assert (not d!337931))

(assert (not b!1181003))

(assert (not b!1180979))

(assert (not d!337903))

(assert (not b!1180943))

(assert (not b_lambda!35279))

(assert (not b!1180846))

(assert (not d!337913))

(assert (not b!1180927))

(assert (not b!1180800))

(assert (not b!1181035))

(assert (not b_lambda!35291))

(assert (not b!1180987))

(assert (not b_lambda!35289))

(assert (not d!338007))

(assert (not b_next!28807))

(assert (not b!1180889))

(check-sat)

(pop 1)

(push 1)

(assert b_and!81025)

(assert (not b_next!28793))

(assert (not b_next!28775))

(assert (not b_next!28789))

(assert b_and!81081)

(assert (not b_next!28773))

(assert (not b_next!28777))

(assert (not b_next!28807))

(assert b_and!81083)

(assert (not b_next!28791))

(assert (not b_next!28795))

(assert (not b_next!28809))

(assert b_and!81077)

(assert b_and!81085)

(assert b_and!81089)

(assert (not b_next!28779))

(assert (not b_next!28811))

(assert b_and!81021)

(assert b_and!81045)

(assert b_and!81087)

(assert b_and!81079)

(assert (not b_next!28805))

(assert b_and!81091)

(assert b_and!81049)

(check-sat)

(pop 1)

