; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127866 () Bool)

(assert start!127866)

(declare-fun b!1402427 () Bool)

(declare-fun b_free!34171 () Bool)

(declare-fun b_next!34875 () Bool)

(assert (=> b!1402427 (= b_free!34171 (not b_next!34875))))

(declare-fun tp!398873 () Bool)

(declare-fun b_and!93899 () Bool)

(assert (=> b!1402427 (= tp!398873 b_and!93899)))

(declare-fun b_free!34173 () Bool)

(declare-fun b_next!34877 () Bool)

(assert (=> b!1402427 (= b_free!34173 (not b_next!34877))))

(declare-fun tp!398884 () Bool)

(declare-fun b_and!93901 () Bool)

(assert (=> b!1402427 (= tp!398884 b_and!93901)))

(declare-fun b!1402435 () Bool)

(declare-fun b_free!34175 () Bool)

(declare-fun b_next!34879 () Bool)

(assert (=> b!1402435 (= b_free!34175 (not b_next!34879))))

(declare-fun tp!398882 () Bool)

(declare-fun b_and!93903 () Bool)

(assert (=> b!1402435 (= tp!398882 b_and!93903)))

(declare-fun b_free!34177 () Bool)

(declare-fun b_next!34881 () Bool)

(assert (=> b!1402435 (= b_free!34177 (not b_next!34881))))

(declare-fun tp!398878 () Bool)

(declare-fun b_and!93905 () Bool)

(assert (=> b!1402435 (= tp!398878 b_and!93905)))

(declare-fun b!1402438 () Bool)

(declare-fun b_free!34179 () Bool)

(declare-fun b_next!34883 () Bool)

(assert (=> b!1402438 (= b_free!34179 (not b_next!34883))))

(declare-fun tp!398879 () Bool)

(declare-fun b_and!93907 () Bool)

(assert (=> b!1402438 (= tp!398879 b_and!93907)))

(declare-fun b_free!34181 () Bool)

(declare-fun b_next!34885 () Bool)

(assert (=> b!1402438 (= b_free!34181 (not b_next!34885))))

(declare-fun tp!398874 () Bool)

(declare-fun b_and!93909 () Bool)

(assert (=> b!1402438 (= tp!398874 b_and!93909)))

(declare-fun b!1402419 () Bool)

(assert (=> b!1402419 true))

(assert (=> b!1402419 true))

(declare-fun b!1402422 () Bool)

(assert (=> b!1402422 true))

(declare-fun b!1402431 () Bool)

(assert (=> b!1402431 true))

(declare-fun bs!338324 () Bool)

(declare-fun b!1402434 () Bool)

(assert (= bs!338324 (and b!1402434 b!1402431)))

(declare-fun lambda!61507 () Int)

(declare-fun lambda!61506 () Int)

(assert (=> bs!338324 (not (= lambda!61507 lambda!61506))))

(assert (=> b!1402434 true))

(declare-fun res!634370 () Bool)

(declare-fun e!895383 () Bool)

(assert (=> start!127866 (=> (not res!634370) (not e!895383))))

(declare-datatypes ((LexerInterface!2164 0))(
  ( (LexerInterfaceExt!2161 (__x!8947 Int)) (Lexer!2162) )
))
(declare-fun thiss!19762 () LexerInterface!2164)

(get-info :version)

(assert (=> start!127866 (= res!634370 ((_ is Lexer!2162) thiss!19762))))

(assert (=> start!127866 e!895383))

(assert (=> start!127866 true))

(declare-fun e!895392 () Bool)

(assert (=> start!127866 e!895392))

(declare-datatypes ((List!14318 0))(
  ( (Nil!14252) (Cons!14252 (h!19653 (_ BitVec 16)) (t!122915 List!14318)) )
))
(declare-datatypes ((TokenValue!2559 0))(
  ( (FloatLiteralValue!5118 (text!18358 List!14318)) (TokenValueExt!2558 (__x!8948 Int)) (Broken!12795 (value!79973 List!14318)) (Object!2624) (End!2559) (Def!2559) (Underscore!2559) (Match!2559) (Else!2559) (Error!2559) (Case!2559) (If!2559) (Extends!2559) (Abstract!2559) (Class!2559) (Val!2559) (DelimiterValue!5118 (del!2619 List!14318)) (KeywordValue!2565 (value!79974 List!14318)) (CommentValue!5118 (value!79975 List!14318)) (WhitespaceValue!5118 (value!79976 List!14318)) (IndentationValue!2559 (value!79977 List!14318)) (String!17030) (Int32!2559) (Broken!12796 (value!79978 List!14318)) (Boolean!2560) (Unit!20586) (OperatorValue!2562 (op!2619 List!14318)) (IdentifierValue!5118 (value!79979 List!14318)) (IdentifierValue!5119 (value!79980 List!14318)) (WhitespaceValue!5119 (value!79981 List!14318)) (True!5118) (False!5118) (Broken!12797 (value!79982 List!14318)) (Broken!12798 (value!79983 List!14318)) (True!5119) (RightBrace!2559) (RightBracket!2559) (Colon!2559) (Null!2559) (Comma!2559) (LeftBracket!2559) (False!5119) (LeftBrace!2559) (ImaginaryLiteralValue!2559 (text!18359 List!14318)) (StringLiteralValue!7677 (value!79984 List!14318)) (EOFValue!2559 (value!79985 List!14318)) (IdentValue!2559 (value!79986 List!14318)) (DelimiterValue!5119 (value!79987 List!14318)) (DedentValue!2559 (value!79988 List!14318)) (NewLineValue!2559 (value!79989 List!14318)) (IntegerValue!7677 (value!79990 (_ BitVec 32)) (text!18360 List!14318)) (IntegerValue!7678 (value!79991 Int) (text!18361 List!14318)) (Times!2559) (Or!2559) (Equal!2559) (Minus!2559) (Broken!12799 (value!79992 List!14318)) (And!2559) (Div!2559) (LessEqual!2559) (Mod!2559) (Concat!6342) (Not!2559) (Plus!2559) (SpaceValue!2559 (value!79993 List!14318)) (IntegerValue!7679 (value!79994 Int) (text!18362 List!14318)) (StringLiteralValue!7678 (text!18363 List!14318)) (FloatLiteralValue!5119 (text!18364 List!14318)) (BytesLiteralValue!2559 (value!79995 List!14318)) (CommentValue!5119 (value!79996 List!14318)) (StringLiteralValue!7679 (value!79997 List!14318)) (ErrorTokenValue!2559 (msg!2620 List!14318)) )
))
(declare-datatypes ((C!7856 0))(
  ( (C!7857 (val!4488 Int)) )
))
(declare-datatypes ((List!14319 0))(
  ( (Nil!14253) (Cons!14253 (h!19654 C!7856) (t!122916 List!14319)) )
))
(declare-datatypes ((IArray!9401 0))(
  ( (IArray!9402 (innerList!4758 List!14319)) )
))
(declare-datatypes ((Conc!4698 0))(
  ( (Node!4698 (left!12170 Conc!4698) (right!12500 Conc!4698) (csize!9626 Int) (cheight!4909 Int)) (Leaf!7129 (xs!7425 IArray!9401) (csize!9627 Int)) (Empty!4698) )
))
(declare-datatypes ((BalanceConc!9336 0))(
  ( (BalanceConc!9337 (c!230726 Conc!4698)) )
))
(declare-datatypes ((TokenValueInjection!4778 0))(
  ( (TokenValueInjection!4779 (toValue!3760 Int) (toChars!3619 Int)) )
))
(declare-datatypes ((Regex!3783 0))(
  ( (ElementMatch!3783 (c!230727 C!7856)) (Concat!6343 (regOne!8078 Regex!3783) (regTwo!8078 Regex!3783)) (EmptyExpr!3783) (Star!3783 (reg!4112 Regex!3783)) (EmptyLang!3783) (Union!3783 (regOne!8079 Regex!3783) (regTwo!8079 Regex!3783)) )
))
(declare-datatypes ((String!17031 0))(
  ( (String!17032 (value!79998 String)) )
))
(declare-datatypes ((Rule!4738 0))(
  ( (Rule!4739 (regex!2469 Regex!3783) (tag!2731 String!17031) (isSeparator!2469 Bool) (transformation!2469 TokenValueInjection!4778)) )
))
(declare-datatypes ((Token!4600 0))(
  ( (Token!4601 (value!79999 TokenValue!2559) (rule!4232 Rule!4738) (size!11733 Int) (originalCharacters!3331 List!14319)) )
))
(declare-fun t1!34 () Token!4600)

(declare-fun e!895395 () Bool)

(declare-fun inv!18568 (Token!4600) Bool)

(assert (=> start!127866 (and (inv!18568 t1!34) e!895395)))

(declare-fun t2!34 () Token!4600)

(declare-fun e!895398 () Bool)

(assert (=> start!127866 (and (inv!18568 t2!34) e!895398)))

(declare-fun b!1402411 () Bool)

(declare-fun e!895373 () Bool)

(declare-fun e!895394 () Bool)

(assert (=> b!1402411 (= e!895373 e!895394)))

(declare-fun res!634360 () Bool)

(assert (=> b!1402411 (=> res!634360 e!895394)))

(declare-datatypes ((List!14320 0))(
  ( (Nil!14254) (Cons!14254 (h!19655 Token!4600) (t!122917 List!14320)) )
))
(declare-datatypes ((IArray!9403 0))(
  ( (IArray!9404 (innerList!4759 List!14320)) )
))
(declare-datatypes ((Conc!4699 0))(
  ( (Node!4699 (left!12171 Conc!4699) (right!12501 Conc!4699) (csize!9628 Int) (cheight!4910 Int)) (Leaf!7130 (xs!7426 IArray!9403) (csize!9629 Int)) (Empty!4699) )
))
(declare-datatypes ((BalanceConc!9338 0))(
  ( (BalanceConc!9339 (c!230728 Conc!4699)) )
))
(declare-datatypes ((tuple2!13874 0))(
  ( (tuple2!13875 (_1!7823 BalanceConc!9338) (_2!7823 BalanceConc!9336)) )
))
(declare-fun lt!467645 () tuple2!13874)

(declare-fun lt!467648 () List!14320)

(declare-fun list!5561 (BalanceConc!9338) List!14320)

(assert (=> b!1402411 (= res!634360 (not (= (list!5561 (_1!7823 lt!467645)) lt!467648)))))

(assert (=> b!1402411 (= lt!467648 (Cons!14254 t2!34 Nil!14254))))

(declare-fun lt!467627 () BalanceConc!9336)

(declare-datatypes ((List!14321 0))(
  ( (Nil!14255) (Cons!14255 (h!19656 Rule!4738) (t!122918 List!14321)) )
))
(declare-fun rules!2550 () List!14321)

(declare-fun lex!989 (LexerInterface!2164 List!14321 BalanceConc!9336) tuple2!13874)

(assert (=> b!1402411 (= lt!467645 (lex!989 thiss!19762 rules!2550 lt!467627))))

(declare-fun print!928 (LexerInterface!2164 BalanceConc!9338) BalanceConc!9336)

(declare-fun singletonSeq!1132 (Token!4600) BalanceConc!9338)

(assert (=> b!1402411 (= lt!467627 (print!928 thiss!19762 (singletonSeq!1132 t2!34)))))

(declare-fun b!1402412 () Bool)

(declare-fun res!634353 () Bool)

(declare-fun e!895385 () Bool)

(assert (=> b!1402412 (=> res!634353 e!895385)))

(declare-fun lt!467642 () List!14319)

(declare-fun lt!467647 () C!7856)

(declare-fun contains!2789 (List!14319 C!7856) Bool)

(assert (=> b!1402412 (= res!634353 (not (contains!2789 lt!467642 lt!467647)))))

(declare-fun b!1402413 () Bool)

(declare-datatypes ((Unit!20587 0))(
  ( (Unit!20588) )
))
(declare-fun e!895389 () Unit!20587)

(declare-fun Unit!20589 () Unit!20587)

(assert (=> b!1402413 (= e!895389 Unit!20589)))

(declare-fun b!1402414 () Bool)

(declare-fun res!634366 () Bool)

(assert (=> b!1402414 (=> (not res!634366) (not e!895383))))

(assert (=> b!1402414 (= res!634366 (not (= (isSeparator!2469 (rule!4232 t1!34)) (isSeparator!2469 (rule!4232 t2!34)))))))

(declare-fun b!1402415 () Bool)

(declare-fun res!634338 () Bool)

(assert (=> b!1402415 (=> res!634338 e!895394)))

(declare-datatypes ((tuple2!13876 0))(
  ( (tuple2!13877 (_1!7824 List!14320) (_2!7824 List!14319)) )
))
(declare-fun lexList!678 (LexerInterface!2164 List!14321 List!14319) tuple2!13876)

(declare-fun list!5562 (BalanceConc!9336) List!14319)

(assert (=> b!1402415 (= res!634338 (not (= (lexList!678 thiss!19762 rules!2550 (list!5562 lt!467627)) (tuple2!13877 lt!467648 Nil!14253))))))

(declare-fun b!1402416 () Bool)

(declare-fun Unit!20590 () Unit!20587)

(assert (=> b!1402416 (= e!895389 Unit!20590)))

(declare-fun lt!467643 () Unit!20587)

(declare-fun lt!467640 () List!14319)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!214 (Regex!3783 List!14319 C!7856) Unit!20587)

(declare-fun head!2599 (List!14319) C!7856)

(assert (=> b!1402416 (= lt!467643 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!214 (regex!2469 (rule!4232 t2!34)) lt!467640 (head!2599 lt!467640)))))

(assert (=> b!1402416 false))

(declare-fun b!1402417 () Bool)

(declare-fun res!634352 () Bool)

(assert (=> b!1402417 (=> res!634352 e!895373)))

(declare-fun lt!467638 () tuple2!13874)

(declare-fun isEmpty!8672 (BalanceConc!9336) Bool)

(assert (=> b!1402417 (= res!634352 (not (isEmpty!8672 (_2!7823 lt!467638))))))

(declare-fun b!1402418 () Bool)

(declare-fun e!895384 () Bool)

(declare-fun e!895387 () Bool)

(assert (=> b!1402418 (= e!895384 e!895387)))

(declare-fun res!634351 () Bool)

(assert (=> b!1402418 (=> res!634351 e!895387)))

(declare-fun lambda!61504 () Int)

(declare-fun lt!467639 () Regex!3783)

(declare-datatypes ((List!14322 0))(
  ( (Nil!14256) (Cons!14256 (h!19657 Regex!3783) (t!122919 List!14322)) )
))
(declare-fun contains!2790 (List!14322 Regex!3783) Bool)

(declare-fun map!3164 (List!14321 Int) List!14322)

(assert (=> b!1402418 (= res!634351 (not (contains!2790 (map!3164 rules!2550 lambda!61504) lt!467639)))))

(declare-fun lambda!61505 () Int)

(declare-fun getWitness!470 (List!14322 Int) Regex!3783)

(assert (=> b!1402418 (= lt!467639 (getWitness!470 (map!3164 rules!2550 lambda!61504) lambda!61505))))

(declare-fun e!895380 () Bool)

(declare-fun e!895376 () Bool)

(assert (=> b!1402419 (= e!895380 (not e!895376))))

(declare-fun res!634369 () Bool)

(assert (=> b!1402419 (=> res!634369 e!895376)))

(declare-fun lambda!61503 () Int)

(declare-fun Exists!933 (Int) Bool)

(assert (=> b!1402419 (= res!634369 (not (Exists!933 lambda!61503)))))

(assert (=> b!1402419 (Exists!933 lambda!61503)))

(declare-fun lt!467625 () Unit!20587)

(declare-fun lt!467635 () Regex!3783)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!251 (Regex!3783 List!14319) Unit!20587)

(assert (=> b!1402419 (= lt!467625 (lemmaPrefixMatchThenExistsStringThatMatches!251 lt!467635 lt!467642))))

(declare-fun b!1402420 () Bool)

(declare-fun res!634368 () Bool)

(declare-fun e!895400 () Bool)

(assert (=> b!1402420 (=> res!634368 e!895400)))

(declare-fun lt!467651 () Rule!4738)

(declare-fun contains!2791 (List!14321 Rule!4738) Bool)

(assert (=> b!1402420 (= res!634368 (not (contains!2791 rules!2550 lt!467651)))))

(declare-fun tp!398876 () Bool)

(declare-fun e!895381 () Bool)

(declare-fun e!895399 () Bool)

(declare-fun b!1402421 () Bool)

(declare-fun inv!18565 (String!17031) Bool)

(declare-fun inv!18569 (TokenValueInjection!4778) Bool)

(assert (=> b!1402421 (= e!895399 (and tp!398876 (inv!18565 (tag!2731 (h!19656 rules!2550))) (inv!18569 (transformation!2469 (h!19656 rules!2550))) e!895381))))

(assert (=> b!1402422 (= e!895385 e!895384)))

(declare-fun res!634357 () Bool)

(assert (=> b!1402422 (=> res!634357 e!895384)))

(declare-fun exists!582 (List!14322 Int) Bool)

(assert (=> b!1402422 (= res!634357 (not (exists!582 (map!3164 rules!2550 lambda!61504) lambda!61505)))))

(declare-fun lt!467623 () List!14322)

(assert (=> b!1402422 (exists!582 lt!467623 lambda!61505)))

(declare-fun lt!467629 () List!14319)

(declare-fun lt!467649 () Unit!20587)

(declare-fun matchRGenUnionSpec!194 (Regex!3783 List!14322 List!14319) Unit!20587)

(assert (=> b!1402422 (= lt!467649 (matchRGenUnionSpec!194 lt!467635 lt!467623 lt!467629))))

(assert (=> b!1402422 (= lt!467623 (map!3164 rules!2550 lambda!61504))))

(declare-fun b!1402423 () Bool)

(declare-fun e!895382 () Bool)

(assert (=> b!1402423 (= e!895382 e!895385)))

(declare-fun res!634361 () Bool)

(assert (=> b!1402423 (=> res!634361 e!895385)))

(declare-fun lt!467641 () C!7856)

(assert (=> b!1402423 (= res!634361 (not (contains!2789 lt!467642 lt!467641)))))

(declare-fun lt!467637 () BalanceConc!9336)

(declare-fun apply!3637 (BalanceConc!9336 Int) C!7856)

(assert (=> b!1402423 (= lt!467641 (apply!3637 lt!467637 0))))

(declare-fun b!1402424 () Bool)

(declare-fun tp!398880 () Bool)

(assert (=> b!1402424 (= e!895392 (and e!895399 tp!398880))))

(declare-fun tp!398881 () Bool)

(declare-fun e!895404 () Bool)

(declare-fun b!1402425 () Bool)

(declare-fun e!895379 () Bool)

(assert (=> b!1402425 (= e!895379 (and tp!398881 (inv!18565 (tag!2731 (rule!4232 t2!34))) (inv!18569 (transformation!2469 (rule!4232 t2!34))) e!895404))))

(declare-fun b!1402426 () Bool)

(declare-fun res!634335 () Bool)

(assert (=> b!1402426 (=> res!634335 e!895373)))

(assert (=> b!1402426 (= res!634335 (not (contains!2791 rules!2550 (rule!4232 t1!34))))))

(assert (=> b!1402427 (= e!895381 (and tp!398873 tp!398884))))

(declare-fun b!1402428 () Bool)

(assert (=> b!1402428 (= e!895394 e!895400)))

(declare-fun res!634349 () Bool)

(assert (=> b!1402428 (=> res!634349 e!895400)))

(declare-datatypes ((tuple2!13878 0))(
  ( (tuple2!13879 (_1!7825 Token!4600) (_2!7825 List!14319)) )
))
(declare-datatypes ((Option!2732 0))(
  ( (None!2731) (Some!2731 (v!21675 tuple2!13878)) )
))
(declare-fun maxPrefix!1138 (LexerInterface!2164 List!14321 List!14319) Option!2732)

(assert (=> b!1402428 (= res!634349 (not (= (maxPrefix!1138 thiss!19762 rules!2550 lt!467640) (Some!2731 (tuple2!13879 t2!34 Nil!14253)))))))

(declare-fun lt!467634 () BalanceConc!9336)

(assert (=> b!1402428 (= lt!467640 (list!5562 lt!467634))))

(declare-fun b!1402429 () Bool)

(declare-fun e!895374 () Bool)

(assert (=> b!1402429 (= e!895374 e!895380)))

(declare-fun res!634359 () Bool)

(assert (=> b!1402429 (=> (not res!634359) (not e!895380))))

(declare-fun prefixMatch!292 (Regex!3783 List!14319) Bool)

(assert (=> b!1402429 (= res!634359 (prefixMatch!292 lt!467635 lt!467642))))

(declare-fun rulesRegex!352 (LexerInterface!2164 List!14321) Regex!3783)

(assert (=> b!1402429 (= lt!467635 (rulesRegex!352 thiss!19762 rules!2550))))

(declare-fun lt!467630 () List!14319)

(declare-fun ++!3708 (List!14319 List!14319) List!14319)

(assert (=> b!1402429 (= lt!467642 (++!3708 lt!467630 (Cons!14253 lt!467647 Nil!14253)))))

(assert (=> b!1402429 (= lt!467647 (apply!3637 lt!467634 0))))

(assert (=> b!1402429 (= lt!467630 (list!5562 lt!467637))))

(declare-fun charsOf!1441 (Token!4600) BalanceConc!9336)

(assert (=> b!1402429 (= lt!467637 (charsOf!1441 t1!34))))

(declare-fun b!1402430 () Bool)

(declare-fun e!895386 () Bool)

(assert (=> b!1402430 (= e!895386 e!895373)))

(declare-fun res!634362 () Bool)

(assert (=> b!1402430 (=> res!634362 e!895373)))

(declare-fun lt!467626 () List!14320)

(assert (=> b!1402430 (= res!634362 (not (= (list!5561 (_1!7823 lt!467638)) lt!467626)))))

(assert (=> b!1402430 (= lt!467626 (Cons!14254 t1!34 Nil!14254))))

(declare-fun lt!467632 () BalanceConc!9336)

(assert (=> b!1402430 (= lt!467638 (lex!989 thiss!19762 rules!2550 lt!467632))))

(assert (=> b!1402430 (= lt!467632 (print!928 thiss!19762 (singletonSeq!1132 t1!34)))))

(declare-fun getWitness!471 (List!14321 Int) Rule!4738)

(assert (=> b!1402430 (= lt!467651 (getWitness!471 rules!2550 lambda!61506))))

(assert (=> b!1402431 (= e!895387 e!895386)))

(declare-fun res!634340 () Bool)

(assert (=> b!1402431 (=> res!634340 e!895386)))

(declare-fun exists!583 (List!14321 Int) Bool)

(assert (=> b!1402431 (= res!634340 (not (exists!583 rules!2550 lambda!61506)))))

(assert (=> b!1402431 (exists!583 rules!2550 lambda!61506)))

(declare-fun lt!467624 () Unit!20587)

(declare-fun lemmaMapContains!180 (List!14321 Int Regex!3783) Unit!20587)

(assert (=> b!1402431 (= lt!467624 (lemmaMapContains!180 rules!2550 lambda!61504 lt!467639))))

(declare-fun b!1402432 () Bool)

(declare-fun res!634336 () Bool)

(assert (=> b!1402432 (=> res!634336 e!895373)))

(assert (=> b!1402432 (= res!634336 (not (= (lexList!678 thiss!19762 rules!2550 (list!5562 lt!467632)) (tuple2!13877 lt!467626 Nil!14253))))))

(declare-fun b!1402433 () Bool)

(declare-fun res!634358 () Bool)

(assert (=> b!1402433 (=> res!634358 e!895394)))

(assert (=> b!1402433 (= res!634358 (not (isEmpty!8672 (_2!7823 lt!467645))))))

(declare-fun e!895378 () Bool)

(assert (=> b!1402434 (= e!895400 e!895378)))

(declare-fun res!634345 () Bool)

(assert (=> b!1402434 (=> res!634345 e!895378)))

(declare-fun matchR!1774 (Regex!3783 List!14319) Bool)

(assert (=> b!1402434 (= res!634345 (not (matchR!1774 (regex!2469 (rule!4232 t1!34)) lt!467630)))))

(declare-fun lt!467631 () Unit!20587)

(declare-fun forallContained!664 (List!14321 Int Rule!4738) Unit!20587)

(assert (=> b!1402434 (= lt!467631 (forallContained!664 rules!2550 lambda!61507 (rule!4232 t2!34)))))

(declare-fun lt!467646 () Unit!20587)

(assert (=> b!1402434 (= lt!467646 (forallContained!664 rules!2550 lambda!61507 (rule!4232 t1!34)))))

(declare-fun lt!467622 () Unit!20587)

(assert (=> b!1402434 (= lt!467622 (forallContained!664 rules!2550 lambda!61507 lt!467651))))

(declare-fun e!895391 () Bool)

(assert (=> b!1402435 (= e!895391 (and tp!398882 tp!398878))))

(declare-fun b!1402436 () Bool)

(assert (=> b!1402436 (= e!895383 e!895374)))

(declare-fun res!634367 () Bool)

(assert (=> b!1402436 (=> (not res!634367) (not e!895374))))

(declare-fun size!11734 (BalanceConc!9336) Int)

(assert (=> b!1402436 (= res!634367 (> (size!11734 lt!467634) 0))))

(assert (=> b!1402436 (= lt!467634 (charsOf!1441 t2!34))))

(declare-fun b!1402437 () Bool)

(declare-fun e!895402 () Bool)

(assert (=> b!1402437 (= e!895378 e!895402)))

(declare-fun res!634342 () Bool)

(assert (=> b!1402437 (=> res!634342 e!895402)))

(declare-fun lt!467628 () Bool)

(assert (=> b!1402437 (= res!634342 lt!467628)))

(declare-fun lt!467636 () Unit!20587)

(declare-fun e!895377 () Unit!20587)

(assert (=> b!1402437 (= lt!467636 e!895377)))

(declare-fun c!230725 () Bool)

(assert (=> b!1402437 (= c!230725 lt!467628)))

(declare-fun usedCharacters!280 (Regex!3783) List!14319)

(assert (=> b!1402437 (= lt!467628 (not (contains!2789 (usedCharacters!280 (regex!2469 (rule!4232 t1!34))) lt!467641)))))

(assert (=> b!1402438 (= e!895404 (and tp!398879 tp!398874))))

(declare-fun b!1402439 () Bool)

(declare-fun e!895397 () Bool)

(assert (=> b!1402439 (= e!895402 e!895397)))

(declare-fun res!634363 () Bool)

(assert (=> b!1402439 (=> res!634363 e!895397)))

(declare-fun lt!467650 () Bool)

(assert (=> b!1402439 (= res!634363 lt!467650)))

(declare-fun lt!467633 () Unit!20587)

(assert (=> b!1402439 (= lt!467633 e!895389)))

(declare-fun c!230724 () Bool)

(assert (=> b!1402439 (= c!230724 lt!467650)))

(assert (=> b!1402439 (= lt!467650 (not (contains!2789 (usedCharacters!280 (regex!2469 (rule!4232 t2!34))) lt!467647)))))

(declare-fun b!1402440 () Bool)

(declare-fun res!634355 () Bool)

(assert (=> b!1402440 (=> (not res!634355) (not e!895374))))

(declare-fun sepAndNonSepRulesDisjointChars!842 (List!14321 List!14321) Bool)

(assert (=> b!1402440 (= res!634355 (sepAndNonSepRulesDisjointChars!842 rules!2550 rules!2550))))

(declare-fun b!1402441 () Bool)

(declare-fun e!895388 () Bool)

(assert (=> b!1402441 (= e!895388 true)))

(assert (=> b!1402441 (not (contains!2789 (usedCharacters!280 (regex!2469 lt!467651)) lt!467641))))

(declare-fun lt!467644 () Unit!20587)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!18 (LexerInterface!2164 List!14321 List!14321 Rule!4738 Rule!4738 C!7856) Unit!20587)

(assert (=> b!1402441 (= lt!467644 (lemmaNonSepRuleNotContainsCharContainedInASepRule!18 thiss!19762 rules!2550 rules!2550 lt!467651 (rule!4232 t1!34) lt!467641))))

(declare-fun b!1402442 () Bool)

(declare-fun res!634348 () Bool)

(assert (=> b!1402442 (=> res!634348 e!895378)))

(assert (=> b!1402442 (= res!634348 (not (matchR!1774 (regex!2469 (rule!4232 t2!34)) lt!467640)))))

(declare-fun b!1402443 () Bool)

(declare-fun res!634365 () Bool)

(assert (=> b!1402443 (=> (not res!634365) (not e!895383))))

(declare-fun rulesInvariant!2034 (LexerInterface!2164 List!14321) Bool)

(assert (=> b!1402443 (= res!634365 (rulesInvariant!2034 thiss!19762 rules!2550))))

(declare-fun b!1402444 () Bool)

(declare-fun res!634346 () Bool)

(assert (=> b!1402444 (=> res!634346 e!895385)))

(assert (=> b!1402444 (= res!634346 (not (matchR!1774 lt!467635 lt!467629)))))

(declare-fun b!1402445 () Bool)

(declare-fun res!634339 () Bool)

(assert (=> b!1402445 (=> res!634339 e!895373)))

(assert (=> b!1402445 (= res!634339 (not (= (maxPrefix!1138 thiss!19762 rules!2550 lt!467630) (Some!2731 (tuple2!13879 t1!34 Nil!14253)))))))

(declare-fun b!1402446 () Bool)

(declare-fun res!634344 () Bool)

(assert (=> b!1402446 (=> (not res!634344) (not e!895383))))

(declare-fun rulesProduceIndividualToken!1133 (LexerInterface!2164 List!14321 Token!4600) Bool)

(assert (=> b!1402446 (= res!634344 (rulesProduceIndividualToken!1133 thiss!19762 rules!2550 t1!34))))

(declare-fun tp!398877 () Bool)

(declare-fun b!1402447 () Bool)

(declare-fun inv!21 (TokenValue!2559) Bool)

(assert (=> b!1402447 (= e!895398 (and (inv!21 (value!79999 t2!34)) e!895379 tp!398877))))

(declare-fun b!1402448 () Bool)

(declare-fun Unit!20591 () Unit!20587)

(assert (=> b!1402448 (= e!895377 Unit!20591)))

(declare-fun lt!467652 () Unit!20587)

(assert (=> b!1402448 (= lt!467652 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!214 (regex!2469 (rule!4232 t1!34)) lt!467630 (head!2599 lt!467630)))))

(assert (=> b!1402448 false))

(declare-fun b!1402449 () Bool)

(declare-fun res!634356 () Bool)

(assert (=> b!1402449 (=> res!634356 e!895385)))

(assert (=> b!1402449 (= res!634356 (not (contains!2789 lt!467629 lt!467647)))))

(declare-fun b!1402450 () Bool)

(declare-fun tp!398883 () Bool)

(declare-fun e!895401 () Bool)

(assert (=> b!1402450 (= e!895401 (and tp!398883 (inv!18565 (tag!2731 (rule!4232 t1!34))) (inv!18569 (transformation!2469 (rule!4232 t1!34))) e!895391))))

(declare-fun b!1402451 () Bool)

(declare-fun res!634350 () Bool)

(assert (=> b!1402451 (=> res!634350 e!895385)))

(assert (=> b!1402451 (= res!634350 (not (contains!2789 lt!467629 lt!467641)))))

(declare-fun b!1402452 () Bool)

(assert (=> b!1402452 (= e!895397 e!895388)))

(declare-fun res!634364 () Bool)

(assert (=> b!1402452 (=> res!634364 e!895388)))

(assert (=> b!1402452 (= res!634364 (or (isSeparator!2469 lt!467651) (not (isSeparator!2469 (rule!4232 t1!34))) (isSeparator!2469 (rule!4232 t2!34))))))

(assert (=> b!1402452 (= (regex!2469 lt!467651) lt!467639)))

(declare-fun b!1402453 () Bool)

(declare-fun res!634337 () Bool)

(assert (=> b!1402453 (=> (not res!634337) (not e!895383))))

(assert (=> b!1402453 (= res!634337 (rulesProduceIndividualToken!1133 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1402454 () Bool)

(assert (=> b!1402454 (= e!895376 e!895382)))

(declare-fun res!634343 () Bool)

(assert (=> b!1402454 (=> res!634343 e!895382)))

(declare-fun getSuffix!629 (List!14319 List!14319) List!14319)

(assert (=> b!1402454 (= res!634343 (not (= lt!467629 (++!3708 lt!467642 (getSuffix!629 lt!467629 lt!467642)))))))

(declare-fun pickWitness!236 (Int) List!14319)

(assert (=> b!1402454 (= lt!467629 (pickWitness!236 lambda!61503))))

(declare-fun b!1402455 () Bool)

(declare-fun tp!398875 () Bool)

(assert (=> b!1402455 (= e!895395 (and (inv!21 (value!79999 t1!34)) e!895401 tp!398875))))

(declare-fun b!1402456 () Bool)

(declare-fun res!634354 () Bool)

(assert (=> b!1402456 (=> res!634354 e!895400)))

(assert (=> b!1402456 (= res!634354 (not (contains!2791 rules!2550 (rule!4232 t2!34))))))

(declare-fun b!1402457 () Bool)

(declare-fun res!634341 () Bool)

(assert (=> b!1402457 (=> (not res!634341) (not e!895374))))

(declare-fun separableTokensPredicate!447 (LexerInterface!2164 Token!4600 Token!4600 List!14321) Bool)

(assert (=> b!1402457 (= res!634341 (not (separableTokensPredicate!447 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1402458 () Bool)

(declare-fun Unit!20592 () Unit!20587)

(assert (=> b!1402458 (= e!895377 Unit!20592)))

(declare-fun b!1402459 () Bool)

(declare-fun res!634347 () Bool)

(assert (=> b!1402459 (=> (not res!634347) (not e!895383))))

(declare-fun isEmpty!8673 (List!14321) Bool)

(assert (=> b!1402459 (= res!634347 (not (isEmpty!8673 rules!2550)))))

(assert (= (and start!127866 res!634370) b!1402459))

(assert (= (and b!1402459 res!634347) b!1402443))

(assert (= (and b!1402443 res!634365) b!1402446))

(assert (= (and b!1402446 res!634344) b!1402453))

(assert (= (and b!1402453 res!634337) b!1402414))

(assert (= (and b!1402414 res!634366) b!1402436))

(assert (= (and b!1402436 res!634367) b!1402440))

(assert (= (and b!1402440 res!634355) b!1402457))

(assert (= (and b!1402457 res!634341) b!1402429))

(assert (= (and b!1402429 res!634359) b!1402419))

(assert (= (and b!1402419 (not res!634369)) b!1402454))

(assert (= (and b!1402454 (not res!634343)) b!1402423))

(assert (= (and b!1402423 (not res!634361)) b!1402451))

(assert (= (and b!1402451 (not res!634350)) b!1402412))

(assert (= (and b!1402412 (not res!634353)) b!1402449))

(assert (= (and b!1402449 (not res!634356)) b!1402444))

(assert (= (and b!1402444 (not res!634346)) b!1402422))

(assert (= (and b!1402422 (not res!634357)) b!1402418))

(assert (= (and b!1402418 (not res!634351)) b!1402431))

(assert (= (and b!1402431 (not res!634340)) b!1402430))

(assert (= (and b!1402430 (not res!634362)) b!1402417))

(assert (= (and b!1402417 (not res!634352)) b!1402432))

(assert (= (and b!1402432 (not res!634336)) b!1402445))

(assert (= (and b!1402445 (not res!634339)) b!1402426))

(assert (= (and b!1402426 (not res!634335)) b!1402411))

(assert (= (and b!1402411 (not res!634360)) b!1402433))

(assert (= (and b!1402433 (not res!634358)) b!1402415))

(assert (= (and b!1402415 (not res!634338)) b!1402428))

(assert (= (and b!1402428 (not res!634349)) b!1402456))

(assert (= (and b!1402456 (not res!634354)) b!1402420))

(assert (= (and b!1402420 (not res!634368)) b!1402434))

(assert (= (and b!1402434 (not res!634345)) b!1402442))

(assert (= (and b!1402442 (not res!634348)) b!1402437))

(assert (= (and b!1402437 c!230725) b!1402448))

(assert (= (and b!1402437 (not c!230725)) b!1402458))

(assert (= (and b!1402437 (not res!634342)) b!1402439))

(assert (= (and b!1402439 c!230724) b!1402416))

(assert (= (and b!1402439 (not c!230724)) b!1402413))

(assert (= (and b!1402439 (not res!634363)) b!1402452))

(assert (= (and b!1402452 (not res!634364)) b!1402441))

(assert (= b!1402421 b!1402427))

(assert (= b!1402424 b!1402421))

(assert (= (and start!127866 ((_ is Cons!14255) rules!2550)) b!1402424))

(assert (= b!1402450 b!1402435))

(assert (= b!1402455 b!1402450))

(assert (= start!127866 b!1402455))

(assert (= b!1402425 b!1402438))

(assert (= b!1402447 b!1402425))

(assert (= start!127866 b!1402447))

(declare-fun m!1579615 () Bool)

(assert (=> b!1402423 m!1579615))

(declare-fun m!1579617 () Bool)

(assert (=> b!1402423 m!1579617))

(declare-fun m!1579619 () Bool)

(assert (=> b!1402434 m!1579619))

(declare-fun m!1579621 () Bool)

(assert (=> b!1402434 m!1579621))

(declare-fun m!1579623 () Bool)

(assert (=> b!1402434 m!1579623))

(declare-fun m!1579625 () Bool)

(assert (=> b!1402434 m!1579625))

(declare-fun m!1579627 () Bool)

(assert (=> b!1402417 m!1579627))

(declare-fun m!1579629 () Bool)

(assert (=> b!1402441 m!1579629))

(assert (=> b!1402441 m!1579629))

(declare-fun m!1579631 () Bool)

(assert (=> b!1402441 m!1579631))

(declare-fun m!1579633 () Bool)

(assert (=> b!1402441 m!1579633))

(declare-fun m!1579635 () Bool)

(assert (=> b!1402432 m!1579635))

(assert (=> b!1402432 m!1579635))

(declare-fun m!1579637 () Bool)

(assert (=> b!1402432 m!1579637))

(declare-fun m!1579639 () Bool)

(assert (=> b!1402411 m!1579639))

(declare-fun m!1579641 () Bool)

(assert (=> b!1402411 m!1579641))

(declare-fun m!1579643 () Bool)

(assert (=> b!1402411 m!1579643))

(assert (=> b!1402411 m!1579643))

(declare-fun m!1579645 () Bool)

(assert (=> b!1402411 m!1579645))

(declare-fun m!1579647 () Bool)

(assert (=> b!1402440 m!1579647))

(declare-fun m!1579649 () Bool)

(assert (=> b!1402453 m!1579649))

(declare-fun m!1579651 () Bool)

(assert (=> b!1402437 m!1579651))

(assert (=> b!1402437 m!1579651))

(declare-fun m!1579653 () Bool)

(assert (=> b!1402437 m!1579653))

(declare-fun m!1579655 () Bool)

(assert (=> b!1402448 m!1579655))

(assert (=> b!1402448 m!1579655))

(declare-fun m!1579657 () Bool)

(assert (=> b!1402448 m!1579657))

(declare-fun m!1579659 () Bool)

(assert (=> b!1402428 m!1579659))

(declare-fun m!1579661 () Bool)

(assert (=> b!1402428 m!1579661))

(declare-fun m!1579663 () Bool)

(assert (=> start!127866 m!1579663))

(declare-fun m!1579665 () Bool)

(assert (=> start!127866 m!1579665))

(declare-fun m!1579667 () Bool)

(assert (=> b!1402418 m!1579667))

(assert (=> b!1402418 m!1579667))

(declare-fun m!1579669 () Bool)

(assert (=> b!1402418 m!1579669))

(assert (=> b!1402418 m!1579667))

(assert (=> b!1402418 m!1579667))

(declare-fun m!1579671 () Bool)

(assert (=> b!1402418 m!1579671))

(declare-fun m!1579673 () Bool)

(assert (=> b!1402426 m!1579673))

(declare-fun m!1579675 () Bool)

(assert (=> b!1402420 m!1579675))

(declare-fun m!1579677 () Bool)

(assert (=> b!1402456 m!1579677))

(declare-fun m!1579679 () Bool)

(assert (=> b!1402439 m!1579679))

(assert (=> b!1402439 m!1579679))

(declare-fun m!1579681 () Bool)

(assert (=> b!1402439 m!1579681))

(declare-fun m!1579683 () Bool)

(assert (=> b!1402443 m!1579683))

(declare-fun m!1579685 () Bool)

(assert (=> b!1402446 m!1579685))

(declare-fun m!1579687 () Bool)

(assert (=> b!1402429 m!1579687))

(declare-fun m!1579689 () Bool)

(assert (=> b!1402429 m!1579689))

(declare-fun m!1579691 () Bool)

(assert (=> b!1402429 m!1579691))

(declare-fun m!1579693 () Bool)

(assert (=> b!1402429 m!1579693))

(declare-fun m!1579695 () Bool)

(assert (=> b!1402429 m!1579695))

(declare-fun m!1579697 () Bool)

(assert (=> b!1402429 m!1579697))

(declare-fun m!1579699 () Bool)

(assert (=> b!1402449 m!1579699))

(declare-fun m!1579701 () Bool)

(assert (=> b!1402430 m!1579701))

(declare-fun m!1579703 () Bool)

(assert (=> b!1402430 m!1579703))

(declare-fun m!1579705 () Bool)

(assert (=> b!1402430 m!1579705))

(assert (=> b!1402430 m!1579701))

(declare-fun m!1579707 () Bool)

(assert (=> b!1402430 m!1579707))

(declare-fun m!1579709 () Bool)

(assert (=> b!1402430 m!1579709))

(declare-fun m!1579711 () Bool)

(assert (=> b!1402447 m!1579711))

(declare-fun m!1579713 () Bool)

(assert (=> b!1402459 m!1579713))

(declare-fun m!1579715 () Bool)

(assert (=> b!1402451 m!1579715))

(declare-fun m!1579717 () Bool)

(assert (=> b!1402416 m!1579717))

(assert (=> b!1402416 m!1579717))

(declare-fun m!1579719 () Bool)

(assert (=> b!1402416 m!1579719))

(declare-fun m!1579721 () Bool)

(assert (=> b!1402421 m!1579721))

(declare-fun m!1579723 () Bool)

(assert (=> b!1402421 m!1579723))

(declare-fun m!1579725 () Bool)

(assert (=> b!1402444 m!1579725))

(declare-fun m!1579727 () Bool)

(assert (=> b!1402419 m!1579727))

(assert (=> b!1402419 m!1579727))

(declare-fun m!1579729 () Bool)

(assert (=> b!1402419 m!1579729))

(declare-fun m!1579731 () Bool)

(assert (=> b!1402455 m!1579731))

(declare-fun m!1579733 () Bool)

(assert (=> b!1402445 m!1579733))

(declare-fun m!1579735 () Bool)

(assert (=> b!1402442 m!1579735))

(declare-fun m!1579737 () Bool)

(assert (=> b!1402454 m!1579737))

(assert (=> b!1402454 m!1579737))

(declare-fun m!1579739 () Bool)

(assert (=> b!1402454 m!1579739))

(declare-fun m!1579741 () Bool)

(assert (=> b!1402454 m!1579741))

(declare-fun m!1579743 () Bool)

(assert (=> b!1402433 m!1579743))

(declare-fun m!1579745 () Bool)

(assert (=> b!1402450 m!1579745))

(declare-fun m!1579747 () Bool)

(assert (=> b!1402450 m!1579747))

(declare-fun m!1579749 () Bool)

(assert (=> b!1402436 m!1579749))

(declare-fun m!1579751 () Bool)

(assert (=> b!1402436 m!1579751))

(declare-fun m!1579753 () Bool)

(assert (=> b!1402425 m!1579753))

(declare-fun m!1579755 () Bool)

(assert (=> b!1402425 m!1579755))

(declare-fun m!1579757 () Bool)

(assert (=> b!1402415 m!1579757))

(assert (=> b!1402415 m!1579757))

(declare-fun m!1579759 () Bool)

(assert (=> b!1402415 m!1579759))

(declare-fun m!1579761 () Bool)

(assert (=> b!1402412 m!1579761))

(declare-fun m!1579763 () Bool)

(assert (=> b!1402431 m!1579763))

(assert (=> b!1402431 m!1579763))

(declare-fun m!1579765 () Bool)

(assert (=> b!1402431 m!1579765))

(declare-fun m!1579767 () Bool)

(assert (=> b!1402457 m!1579767))

(declare-fun m!1579769 () Bool)

(assert (=> b!1402422 m!1579769))

(assert (=> b!1402422 m!1579667))

(assert (=> b!1402422 m!1579667))

(declare-fun m!1579771 () Bool)

(assert (=> b!1402422 m!1579771))

(assert (=> b!1402422 m!1579667))

(declare-fun m!1579773 () Bool)

(assert (=> b!1402422 m!1579773))

(check-sat (not b!1402420) (not b!1402415) (not b!1402430) (not b!1402419) (not b!1402449) (not b_next!34881) (not b_next!34883) (not b!1402450) (not b!1402417) b_and!93907 (not b!1402425) (not b!1402459) (not b!1402453) (not b!1402421) b_and!93909 (not b_next!34885) (not b!1402436) (not b!1402440) (not b!1402451) (not b!1402434) (not b!1402412) (not b!1402423) b_and!93903 (not b!1402437) b_and!93905 (not b_next!34875) (not b!1402445) (not b_next!34877) (not b!1402428) (not b!1402433) b_and!93899 b_and!93901 (not b!1402454) (not b!1402442) (not b!1402432) (not b!1402422) (not b!1402418) (not b!1402446) (not b!1402424) (not b!1402426) (not start!127866) (not b!1402448) (not b!1402443) (not b!1402431) (not b!1402441) (not b_next!34879) (not b!1402455) (not b!1402416) (not b!1402439) (not b!1402456) (not b!1402429) (not b!1402444) (not b!1402411) (not b!1402447) (not b!1402457))
(check-sat (not b_next!34885) b_and!93903 b_and!93901 (not b_next!34881) (not b_next!34883) (not b_next!34879) b_and!93907 b_and!93909 b_and!93905 (not b_next!34875) (not b_next!34877) b_and!93899)
