; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117230 () Bool)

(assert start!117230)

(declare-fun b!1320503 () Bool)

(declare-fun b_free!31795 () Bool)

(declare-fun b_next!32499 () Bool)

(assert (=> b!1320503 (= b_free!31795 (not b_next!32499))))

(declare-fun tp!383536 () Bool)

(declare-fun b_and!88175 () Bool)

(assert (=> b!1320503 (= tp!383536 b_and!88175)))

(declare-fun b_free!31797 () Bool)

(declare-fun b_next!32501 () Bool)

(assert (=> b!1320503 (= b_free!31797 (not b_next!32501))))

(declare-fun tp!383529 () Bool)

(declare-fun b_and!88177 () Bool)

(assert (=> b!1320503 (= tp!383529 b_and!88177)))

(declare-fun b!1320521 () Bool)

(declare-fun b_free!31799 () Bool)

(declare-fun b_next!32503 () Bool)

(assert (=> b!1320521 (= b_free!31799 (not b_next!32503))))

(declare-fun tp!383534 () Bool)

(declare-fun b_and!88179 () Bool)

(assert (=> b!1320521 (= tp!383534 b_and!88179)))

(declare-fun b_free!31801 () Bool)

(declare-fun b_next!32505 () Bool)

(assert (=> b!1320521 (= b_free!31801 (not b_next!32505))))

(declare-fun tp!383531 () Bool)

(declare-fun b_and!88181 () Bool)

(assert (=> b!1320521 (= tp!383531 b_and!88181)))

(declare-fun b!1320507 () Bool)

(declare-fun b_free!31803 () Bool)

(declare-fun b_next!32507 () Bool)

(assert (=> b!1320507 (= b_free!31803 (not b_next!32507))))

(declare-fun tp!383532 () Bool)

(declare-fun b_and!88183 () Bool)

(assert (=> b!1320507 (= tp!383532 b_and!88183)))

(declare-fun b_free!31805 () Bool)

(declare-fun b_next!32509 () Bool)

(assert (=> b!1320507 (= b_free!31805 (not b_next!32509))))

(declare-fun tp!383538 () Bool)

(declare-fun b_and!88185 () Bool)

(assert (=> b!1320507 (= tp!383538 b_and!88185)))

(declare-fun b!1320524 () Bool)

(assert (=> b!1320524 true))

(assert (=> b!1320524 true))

(declare-fun b!1320532 () Bool)

(assert (=> b!1320532 true))

(declare-fun b!1320518 () Bool)

(assert (=> b!1320518 true))

(declare-fun bs!331008 () Bool)

(declare-fun b!1320512 () Bool)

(assert (= bs!331008 (and b!1320512 b!1320518)))

(declare-fun lambda!53917 () Int)

(declare-fun lambda!53916 () Int)

(assert (=> bs!331008 (not (= lambda!53917 lambda!53916))))

(assert (=> b!1320512 true))

(declare-fun b!1320496 () Bool)

(declare-fun e!846286 () Bool)

(declare-fun e!846261 () Bool)

(assert (=> b!1320496 (= e!846286 e!846261)))

(declare-fun res!593479 () Bool)

(assert (=> b!1320496 (=> (not res!593479) (not e!846261))))

(declare-datatypes ((C!7544 0))(
  ( (C!7545 (val!4332 Int)) )
))
(declare-datatypes ((List!13434 0))(
  ( (Nil!13368) (Cons!13368 (h!18769 C!7544) (t!118591 List!13434)) )
))
(declare-datatypes ((IArray!8797 0))(
  ( (IArray!8798 (innerList!4456 List!13434)) )
))
(declare-datatypes ((Conc!4396 0))(
  ( (Node!4396 (left!11486 Conc!4396) (right!11816 Conc!4396) (csize!9022 Int) (cheight!4607 Int)) (Leaf!6749 (xs!7111 IArray!8797) (csize!9023 Int)) (Empty!4396) )
))
(declare-datatypes ((BalanceConc!8732 0))(
  ( (BalanceConc!8733 (c!216814 Conc!4396)) )
))
(declare-fun lt!435896 () BalanceConc!8732)

(declare-fun size!10884 (BalanceConc!8732) Int)

(assert (=> b!1320496 (= res!593479 (> (size!10884 lt!435896) 0))))

(declare-datatypes ((List!13435 0))(
  ( (Nil!13369) (Cons!13369 (h!18770 (_ BitVec 16)) (t!118592 List!13435)) )
))
(declare-datatypes ((TokenValue!2403 0))(
  ( (FloatLiteralValue!4806 (text!17266 List!13435)) (TokenValueExt!2402 (__x!8635 Int)) (Broken!12015 (value!75527 List!13435)) (Object!2468) (End!2403) (Def!2403) (Underscore!2403) (Match!2403) (Else!2403) (Error!2403) (Case!2403) (If!2403) (Extends!2403) (Abstract!2403) (Class!2403) (Val!2403) (DelimiterValue!4806 (del!2463 List!13435)) (KeywordValue!2409 (value!75528 List!13435)) (CommentValue!4806 (value!75529 List!13435)) (WhitespaceValue!4806 (value!75530 List!13435)) (IndentationValue!2403 (value!75531 List!13435)) (String!16250) (Int32!2403) (Broken!12016 (value!75532 List!13435)) (Boolean!2404) (Unit!19447) (OperatorValue!2406 (op!2463 List!13435)) (IdentifierValue!4806 (value!75533 List!13435)) (IdentifierValue!4807 (value!75534 List!13435)) (WhitespaceValue!4807 (value!75535 List!13435)) (True!4806) (False!4806) (Broken!12017 (value!75536 List!13435)) (Broken!12018 (value!75537 List!13435)) (True!4807) (RightBrace!2403) (RightBracket!2403) (Colon!2403) (Null!2403) (Comma!2403) (LeftBracket!2403) (False!4807) (LeftBrace!2403) (ImaginaryLiteralValue!2403 (text!17267 List!13435)) (StringLiteralValue!7209 (value!75538 List!13435)) (EOFValue!2403 (value!75539 List!13435)) (IdentValue!2403 (value!75540 List!13435)) (DelimiterValue!4807 (value!75541 List!13435)) (DedentValue!2403 (value!75542 List!13435)) (NewLineValue!2403 (value!75543 List!13435)) (IntegerValue!7209 (value!75544 (_ BitVec 32)) (text!17268 List!13435)) (IntegerValue!7210 (value!75545 Int) (text!17269 List!13435)) (Times!2403) (Or!2403) (Equal!2403) (Minus!2403) (Broken!12019 (value!75546 List!13435)) (And!2403) (Div!2403) (LessEqual!2403) (Mod!2403) (Concat!6030) (Not!2403) (Plus!2403) (SpaceValue!2403 (value!75547 List!13435)) (IntegerValue!7211 (value!75548 Int) (text!17270 List!13435)) (StringLiteralValue!7210 (text!17271 List!13435)) (FloatLiteralValue!4807 (text!17272 List!13435)) (BytesLiteralValue!2403 (value!75549 List!13435)) (CommentValue!4807 (value!75550 List!13435)) (StringLiteralValue!7211 (value!75551 List!13435)) (ErrorTokenValue!2403 (msg!2464 List!13435)) )
))
(declare-datatypes ((Regex!3627 0))(
  ( (ElementMatch!3627 (c!216815 C!7544)) (Concat!6031 (regOne!7766 Regex!3627) (regTwo!7766 Regex!3627)) (EmptyExpr!3627) (Star!3627 (reg!3956 Regex!3627)) (EmptyLang!3627) (Union!3627 (regOne!7767 Regex!3627) (regTwo!7767 Regex!3627)) )
))
(declare-datatypes ((String!16251 0))(
  ( (String!16252 (value!75552 String)) )
))
(declare-datatypes ((TokenValueInjection!4466 0))(
  ( (TokenValueInjection!4467 (toValue!3544 Int) (toChars!3403 Int)) )
))
(declare-datatypes ((Rule!4426 0))(
  ( (Rule!4427 (regex!2313 Regex!3627) (tag!2575 String!16251) (isSeparator!2313 Bool) (transformation!2313 TokenValueInjection!4466)) )
))
(declare-datatypes ((Token!4288 0))(
  ( (Token!4289 (value!75553 TokenValue!2403) (rule!4058 Rule!4426) (size!10885 Int) (originalCharacters!3175 List!13434)) )
))
(declare-fun t2!34 () Token!4288)

(declare-fun charsOf!1285 (Token!4288) BalanceConc!8732)

(assert (=> b!1320496 (= lt!435896 (charsOf!1285 t2!34))))

(declare-fun b!1320497 () Bool)

(declare-fun tp!383537 () Bool)

(declare-fun e!846284 () Bool)

(declare-fun t1!34 () Token!4288)

(declare-fun e!846274 () Bool)

(declare-fun inv!21 (TokenValue!2403) Bool)

(assert (=> b!1320497 (= e!846284 (and (inv!21 (value!75553 t1!34)) e!846274 tp!383537))))

(declare-fun b!1320498 () Bool)

(declare-fun e!846271 () Bool)

(declare-fun lt!435907 () BalanceConc!8732)

(assert (=> b!1320498 (= e!846271 (< 0 (size!10884 lt!435907)))))

(declare-fun lt!435910 () List!13434)

(declare-fun usedCharacters!178 (Regex!3627) List!13434)

(assert (=> b!1320498 (= lt!435910 (usedCharacters!178 (regex!2313 (rule!4058 t1!34))))))

(declare-fun b!1320499 () Bool)

(declare-fun e!846268 () Bool)

(assert (=> b!1320499 (= e!846261 e!846268)))

(declare-fun res!593449 () Bool)

(assert (=> b!1320499 (=> (not res!593449) (not e!846268))))

(declare-fun lt!435888 () Regex!3627)

(declare-fun lt!435905 () List!13434)

(declare-fun prefixMatch!140 (Regex!3627 List!13434) Bool)

(assert (=> b!1320499 (= res!593449 (prefixMatch!140 lt!435888 lt!435905))))

(declare-datatypes ((LexerInterface!2008 0))(
  ( (LexerInterfaceExt!2005 (__x!8636 Int)) (Lexer!2006) )
))
(declare-fun thiss!19762 () LexerInterface!2008)

(declare-datatypes ((List!13436 0))(
  ( (Nil!13370) (Cons!13370 (h!18771 Rule!4426) (t!118593 List!13436)) )
))
(declare-fun rules!2550 () List!13436)

(declare-fun rulesRegex!198 (LexerInterface!2008 List!13436) Regex!3627)

(assert (=> b!1320499 (= lt!435888 (rulesRegex!198 thiss!19762 rules!2550))))

(declare-fun lt!435895 () List!13434)

(declare-fun lt!435893 () C!7544)

(declare-fun ++!3414 (List!13434 List!13434) List!13434)

(assert (=> b!1320499 (= lt!435905 (++!3414 lt!435895 (Cons!13368 lt!435893 Nil!13368)))))

(declare-fun apply!3059 (BalanceConc!8732 Int) C!7544)

(assert (=> b!1320499 (= lt!435893 (apply!3059 lt!435896 0))))

(declare-fun list!5046 (BalanceConc!8732) List!13434)

(assert (=> b!1320499 (= lt!435895 (list!5046 lt!435907))))

(assert (=> b!1320499 (= lt!435907 (charsOf!1285 t1!34))))

(declare-fun b!1320500 () Bool)

(declare-fun res!593454 () Bool)

(declare-fun e!846262 () Bool)

(assert (=> b!1320500 (=> res!593454 e!846262)))

(declare-datatypes ((tuple2!12998 0))(
  ( (tuple2!12999 (_1!7385 Token!4288) (_2!7385 List!13434)) )
))
(declare-datatypes ((Option!2584 0))(
  ( (None!2583) (Some!2583 (v!21156 tuple2!12998)) )
))
(declare-fun maxPrefix!1018 (LexerInterface!2008 List!13436 List!13434) Option!2584)

(assert (=> b!1320500 (= res!593454 (not (= (maxPrefix!1018 thiss!19762 rules!2550 lt!435895) (Some!2583 (tuple2!12999 t1!34 Nil!13368)))))))

(declare-fun b!1320501 () Bool)

(declare-fun res!593471 () Bool)

(assert (=> b!1320501 (=> res!593471 e!846262)))

(declare-datatypes ((List!13437 0))(
  ( (Nil!13371) (Cons!13371 (h!18772 Token!4288) (t!118594 List!13437)) )
))
(declare-datatypes ((IArray!8799 0))(
  ( (IArray!8800 (innerList!4457 List!13437)) )
))
(declare-datatypes ((Conc!4397 0))(
  ( (Node!4397 (left!11487 Conc!4397) (right!11817 Conc!4397) (csize!9024 Int) (cheight!4608 Int)) (Leaf!6750 (xs!7112 IArray!8799) (csize!9025 Int)) (Empty!4397) )
))
(declare-datatypes ((BalanceConc!8734 0))(
  ( (BalanceConc!8735 (c!216816 Conc!4397)) )
))
(declare-datatypes ((tuple2!13000 0))(
  ( (tuple2!13001 (_1!7386 BalanceConc!8734) (_2!7386 BalanceConc!8732)) )
))
(declare-fun lt!435897 () tuple2!13000)

(declare-fun isEmpty!7942 (BalanceConc!8732) Bool)

(assert (=> b!1320501 (= res!593471 (not (isEmpty!7942 (_2!7386 lt!435897))))))

(declare-fun b!1320502 () Bool)

(declare-fun res!593474 () Bool)

(declare-fun e!846279 () Bool)

(assert (=> b!1320502 (=> res!593474 e!846279)))

(declare-fun lt!435901 () List!13434)

(declare-fun contains!2355 (List!13434 C!7544) Bool)

(assert (=> b!1320502 (= res!593474 (not (contains!2355 lt!435901 lt!435893)))))

(declare-fun e!846265 () Bool)

(assert (=> b!1320503 (= e!846265 (and tp!383536 tp!383529))))

(declare-fun b!1320505 () Bool)

(declare-fun e!846277 () Bool)

(assert (=> b!1320505 (= e!846277 e!846279)))

(declare-fun res!593466 () Bool)

(assert (=> b!1320505 (=> res!593466 e!846279)))

(declare-fun lt!435902 () C!7544)

(assert (=> b!1320505 (= res!593466 (not (contains!2355 lt!435905 lt!435902)))))

(assert (=> b!1320505 (= lt!435902 (apply!3059 lt!435907 0))))

(declare-fun b!1320506 () Bool)

(declare-fun res!593480 () Bool)

(assert (=> b!1320506 (=> res!593480 e!846279)))

(assert (=> b!1320506 (= res!593480 (not (contains!2355 lt!435905 lt!435893)))))

(declare-fun e!846272 () Bool)

(assert (=> b!1320507 (= e!846272 (and tp!383532 tp!383538))))

(declare-fun b!1320508 () Bool)

(declare-fun res!593453 () Bool)

(assert (=> b!1320508 (=> res!593453 e!846271)))

(declare-fun lt!435886 () List!13434)

(declare-fun matchR!1629 (Regex!3627 List!13434) Bool)

(assert (=> b!1320508 (= res!593453 (not (matchR!1629 (regex!2313 (rule!4058 t2!34)) lt!435886)))))

(declare-fun b!1320509 () Bool)

(declare-fun res!593458 () Bool)

(assert (=> b!1320509 (=> (not res!593458) (not e!846286))))

(declare-fun rulesProduceIndividualToken!977 (LexerInterface!2008 List!13436 Token!4288) Bool)

(assert (=> b!1320509 (= res!593458 (rulesProduceIndividualToken!977 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1320510 () Bool)

(declare-fun res!593463 () Bool)

(assert (=> b!1320510 (=> res!593463 e!846262)))

(declare-fun contains!2356 (List!13436 Rule!4426) Bool)

(assert (=> b!1320510 (= res!593463 (not (contains!2356 rules!2550 (rule!4058 t1!34))))))

(declare-fun tp!383539 () Bool)

(declare-fun e!846275 () Bool)

(declare-fun b!1320511 () Bool)

(declare-fun e!846267 () Bool)

(declare-fun inv!17745 (String!16251) Bool)

(declare-fun inv!17748 (TokenValueInjection!4466) Bool)

(assert (=> b!1320511 (= e!846275 (and tp!383539 (inv!17745 (tag!2575 (rule!4058 t2!34))) (inv!17748 (transformation!2313 (rule!4058 t2!34))) e!846267))))

(declare-fun e!846281 () Bool)

(assert (=> b!1320512 (= e!846281 e!846271)))

(declare-fun res!593477 () Bool)

(assert (=> b!1320512 (=> res!593477 e!846271)))

(assert (=> b!1320512 (= res!593477 (not (matchR!1629 (regex!2313 (rule!4058 t1!34)) lt!435895)))))

(declare-datatypes ((Unit!19448 0))(
  ( (Unit!19449) )
))
(declare-fun lt!435900 () Unit!19448)

(declare-fun forallContained!564 (List!13436 Int Rule!4426) Unit!19448)

(assert (=> b!1320512 (= lt!435900 (forallContained!564 rules!2550 lambda!53917 (rule!4058 t2!34)))))

(declare-fun lt!435909 () Unit!19448)

(assert (=> b!1320512 (= lt!435909 (forallContained!564 rules!2550 lambda!53917 (rule!4058 t1!34)))))

(declare-fun lt!435892 () Rule!4426)

(declare-fun lt!435889 () Unit!19448)

(assert (=> b!1320512 (= lt!435889 (forallContained!564 rules!2550 lambda!53917 lt!435892))))

(declare-fun b!1320513 () Bool)

(declare-fun res!593459 () Bool)

(assert (=> b!1320513 (=> res!593459 e!846279)))

(assert (=> b!1320513 (= res!593459 (not (contains!2355 lt!435901 lt!435902)))))

(declare-fun b!1320514 () Bool)

(declare-fun res!593465 () Bool)

(declare-fun e!846273 () Bool)

(assert (=> b!1320514 (=> res!593465 e!846273)))

(declare-fun lt!435908 () List!13437)

(declare-fun lt!435898 () BalanceConc!8732)

(declare-datatypes ((tuple2!13002 0))(
  ( (tuple2!13003 (_1!7387 List!13437) (_2!7387 List!13434)) )
))
(declare-fun lexList!546 (LexerInterface!2008 List!13436 List!13434) tuple2!13002)

(assert (=> b!1320514 (= res!593465 (not (= (lexList!546 thiss!19762 rules!2550 (list!5046 lt!435898)) (tuple2!13003 lt!435908 Nil!13368))))))

(declare-fun b!1320515 () Bool)

(declare-fun res!593457 () Bool)

(assert (=> b!1320515 (=> res!593457 e!846262)))

(declare-fun lt!435891 () List!13437)

(declare-fun lt!435890 () BalanceConc!8732)

(assert (=> b!1320515 (= res!593457 (not (= (lexList!546 thiss!19762 rules!2550 (list!5046 lt!435890)) (tuple2!13003 lt!435891 Nil!13368))))))

(declare-fun tp!383533 () Bool)

(declare-fun e!846278 () Bool)

(declare-fun b!1320516 () Bool)

(assert (=> b!1320516 (= e!846278 (and tp!383533 (inv!17745 (tag!2575 (h!18771 rules!2550))) (inv!17748 (transformation!2313 (h!18771 rules!2550))) e!846265))))

(declare-fun b!1320517 () Bool)

(declare-fun res!593470 () Bool)

(assert (=> b!1320517 (=> res!593470 e!846273)))

(declare-fun lt!435903 () tuple2!13000)

(assert (=> b!1320517 (= res!593470 (not (isEmpty!7942 (_2!7386 lt!435903))))))

(declare-fun e!846280 () Bool)

(declare-fun b!1320504 () Bool)

(declare-fun tp!383535 () Bool)

(assert (=> b!1320504 (= e!846280 (and (inv!21 (value!75553 t2!34)) e!846275 tp!383535))))

(declare-fun res!593450 () Bool)

(assert (=> start!117230 (=> (not res!593450) (not e!846286))))

(get-info :version)

(assert (=> start!117230 (= res!593450 ((_ is Lexer!2006) thiss!19762))))

(assert (=> start!117230 e!846286))

(assert (=> start!117230 true))

(declare-fun e!846283 () Bool)

(assert (=> start!117230 e!846283))

(declare-fun inv!17749 (Token!4288) Bool)

(assert (=> start!117230 (and (inv!17749 t1!34) e!846284)))

(assert (=> start!117230 (and (inv!17749 t2!34) e!846280)))

(declare-fun e!846264 () Bool)

(declare-fun e!846266 () Bool)

(assert (=> b!1320518 (= e!846264 e!846266)))

(declare-fun res!593475 () Bool)

(assert (=> b!1320518 (=> res!593475 e!846266)))

(declare-fun exists!328 (List!13436 Int) Bool)

(assert (=> b!1320518 (= res!593475 (not (exists!328 rules!2550 lambda!53916)))))

(assert (=> b!1320518 (exists!328 rules!2550 lambda!53916)))

(declare-fun lt!435887 () Unit!19448)

(declare-fun lt!435906 () Regex!3627)

(declare-fun lambda!53914 () Int)

(declare-fun lemmaMapContains!56 (List!13436 Int Regex!3627) Unit!19448)

(assert (=> b!1320518 (= lt!435887 (lemmaMapContains!56 rules!2550 lambda!53914 lt!435906))))

(declare-fun b!1320519 () Bool)

(declare-fun res!593462 () Bool)

(assert (=> b!1320519 (=> res!593462 e!846281)))

(assert (=> b!1320519 (= res!593462 (not (contains!2356 rules!2550 (rule!4058 t2!34))))))

(declare-fun b!1320520 () Bool)

(declare-fun res!593481 () Bool)

(assert (=> b!1320520 (=> (not res!593481) (not e!846286))))

(assert (=> b!1320520 (= res!593481 (rulesProduceIndividualToken!977 thiss!19762 rules!2550 t1!34))))

(assert (=> b!1320521 (= e!846267 (and tp!383534 tp!383531))))

(declare-fun b!1320522 () Bool)

(declare-fun res!593455 () Bool)

(assert (=> b!1320522 (=> (not res!593455) (not e!846286))))

(declare-fun isEmpty!7943 (List!13436) Bool)

(assert (=> b!1320522 (= res!593455 (not (isEmpty!7943 rules!2550)))))

(declare-fun b!1320523 () Bool)

(declare-fun res!593469 () Bool)

(assert (=> b!1320523 (=> (not res!593469) (not e!846286))))

(assert (=> b!1320523 (= res!593469 (not (= (isSeparator!2313 (rule!4058 t1!34)) (isSeparator!2313 (rule!4058 t2!34)))))))

(declare-fun e!846260 () Bool)

(assert (=> b!1320524 (= e!846268 (not e!846260))))

(declare-fun res!593456 () Bool)

(assert (=> b!1320524 (=> res!593456 e!846260)))

(declare-fun lambda!53913 () Int)

(declare-fun Exists!785 (Int) Bool)

(assert (=> b!1320524 (= res!593456 (not (Exists!785 lambda!53913)))))

(assert (=> b!1320524 (Exists!785 lambda!53913)))

(declare-fun lt!435894 () Unit!19448)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!103 (Regex!3627 List!13434) Unit!19448)

(assert (=> b!1320524 (= lt!435894 (lemmaPrefixMatchThenExistsStringThatMatches!103 lt!435888 lt!435905))))

(declare-fun b!1320525 () Bool)

(assert (=> b!1320525 (= e!846262 e!846273)))

(declare-fun res!593464 () Bool)

(assert (=> b!1320525 (=> res!593464 e!846273)))

(declare-fun list!5047 (BalanceConc!8734) List!13437)

(assert (=> b!1320525 (= res!593464 (not (= (list!5047 (_1!7386 lt!435903)) lt!435908)))))

(assert (=> b!1320525 (= lt!435908 (Cons!13371 t2!34 Nil!13371))))

(declare-fun lex!843 (LexerInterface!2008 List!13436 BalanceConc!8732) tuple2!13000)

(assert (=> b!1320525 (= lt!435903 (lex!843 thiss!19762 rules!2550 lt!435898))))

(declare-fun print!782 (LexerInterface!2008 BalanceConc!8734) BalanceConc!8732)

(declare-fun singletonSeq!896 (Token!4288) BalanceConc!8734)

(assert (=> b!1320525 (= lt!435898 (print!782 thiss!19762 (singletonSeq!896 t2!34)))))

(declare-fun b!1320526 () Bool)

(assert (=> b!1320526 (= e!846260 e!846277)))

(declare-fun res!593460 () Bool)

(assert (=> b!1320526 (=> res!593460 e!846277)))

(declare-fun getSuffix!483 (List!13434 List!13434) List!13434)

(assert (=> b!1320526 (= res!593460 (not (= lt!435901 (++!3414 lt!435905 (getSuffix!483 lt!435901 lt!435905)))))))

(declare-fun pickWitness!90 (Int) List!13434)

(assert (=> b!1320526 (= lt!435901 (pickWitness!90 lambda!53913))))

(declare-fun b!1320527 () Bool)

(declare-fun e!846276 () Bool)

(assert (=> b!1320527 (= e!846276 e!846264)))

(declare-fun res!593478 () Bool)

(assert (=> b!1320527 (=> res!593478 e!846264)))

(declare-datatypes ((List!13438 0))(
  ( (Nil!13372) (Cons!13372 (h!18773 Regex!3627) (t!118595 List!13438)) )
))
(declare-fun contains!2357 (List!13438 Regex!3627) Bool)

(declare-fun map!2936 (List!13436 Int) List!13438)

(assert (=> b!1320527 (= res!593478 (not (contains!2357 (map!2936 rules!2550 lambda!53914) lt!435906)))))

(declare-fun lambda!53915 () Int)

(declare-fun getWitness!220 (List!13438 Int) Regex!3627)

(assert (=> b!1320527 (= lt!435906 (getWitness!220 (map!2936 rules!2550 lambda!53914) lambda!53915))))

(declare-fun b!1320528 () Bool)

(declare-fun tp!383540 () Bool)

(assert (=> b!1320528 (= e!846274 (and tp!383540 (inv!17745 (tag!2575 (rule!4058 t1!34))) (inv!17748 (transformation!2313 (rule!4058 t1!34))) e!846272))))

(declare-fun b!1320529 () Bool)

(declare-fun res!593473 () Bool)

(assert (=> b!1320529 (=> res!593473 e!846281)))

(assert (=> b!1320529 (= res!593473 (not (contains!2356 rules!2550 lt!435892)))))

(declare-fun b!1320530 () Bool)

(declare-fun res!593472 () Bool)

(assert (=> b!1320530 (=> (not res!593472) (not e!846261))))

(declare-fun separableTokensPredicate!291 (LexerInterface!2008 Token!4288 Token!4288 List!13436) Bool)

(assert (=> b!1320530 (= res!593472 (not (separableTokensPredicate!291 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1320531 () Bool)

(assert (=> b!1320531 (= e!846273 e!846281)))

(declare-fun res!593451 () Bool)

(assert (=> b!1320531 (=> res!593451 e!846281)))

(assert (=> b!1320531 (= res!593451 (not (= (maxPrefix!1018 thiss!19762 rules!2550 lt!435886) (Some!2583 (tuple2!12999 t2!34 Nil!13368)))))))

(assert (=> b!1320531 (= lt!435886 (list!5046 lt!435896))))

(assert (=> b!1320532 (= e!846279 e!846276)))

(declare-fun res!593452 () Bool)

(assert (=> b!1320532 (=> res!593452 e!846276)))

(declare-fun exists!329 (List!13438 Int) Bool)

(assert (=> b!1320532 (= res!593452 (not (exists!329 (map!2936 rules!2550 lambda!53914) lambda!53915)))))

(declare-fun lt!435904 () List!13438)

(assert (=> b!1320532 (exists!329 lt!435904 lambda!53915)))

(declare-fun lt!435899 () Unit!19448)

(declare-fun matchRGenUnionSpec!64 (Regex!3627 List!13438 List!13434) Unit!19448)

(assert (=> b!1320532 (= lt!435899 (matchRGenUnionSpec!64 lt!435888 lt!435904 lt!435901))))

(assert (=> b!1320532 (= lt!435904 (map!2936 rules!2550 lambda!53914))))

(declare-fun b!1320533 () Bool)

(declare-fun tp!383530 () Bool)

(assert (=> b!1320533 (= e!846283 (and e!846278 tp!383530))))

(declare-fun b!1320534 () Bool)

(declare-fun res!593467 () Bool)

(assert (=> b!1320534 (=> (not res!593467) (not e!846286))))

(declare-fun rulesInvariant!1878 (LexerInterface!2008 List!13436) Bool)

(assert (=> b!1320534 (= res!593467 (rulesInvariant!1878 thiss!19762 rules!2550))))

(declare-fun b!1320535 () Bool)

(declare-fun res!593461 () Bool)

(assert (=> b!1320535 (=> res!593461 e!846279)))

(assert (=> b!1320535 (= res!593461 (not (matchR!1629 lt!435888 lt!435901)))))

(declare-fun b!1320536 () Bool)

(declare-fun res!593468 () Bool)

(assert (=> b!1320536 (=> (not res!593468) (not e!846261))))

(declare-fun sepAndNonSepRulesDisjointChars!686 (List!13436 List!13436) Bool)

(assert (=> b!1320536 (= res!593468 (sepAndNonSepRulesDisjointChars!686 rules!2550 rules!2550))))

(declare-fun b!1320537 () Bool)

(assert (=> b!1320537 (= e!846266 e!846262)))

(declare-fun res!593476 () Bool)

(assert (=> b!1320537 (=> res!593476 e!846262)))

(assert (=> b!1320537 (= res!593476 (not (= (list!5047 (_1!7386 lt!435897)) lt!435891)))))

(assert (=> b!1320537 (= lt!435891 (Cons!13371 t1!34 Nil!13371))))

(assert (=> b!1320537 (= lt!435897 (lex!843 thiss!19762 rules!2550 lt!435890))))

(assert (=> b!1320537 (= lt!435890 (print!782 thiss!19762 (singletonSeq!896 t1!34)))))

(declare-fun getWitness!221 (List!13436 Int) Rule!4426)

(assert (=> b!1320537 (= lt!435892 (getWitness!221 rules!2550 lambda!53916))))

(assert (= (and start!117230 res!593450) b!1320522))

(assert (= (and b!1320522 res!593455) b!1320534))

(assert (= (and b!1320534 res!593467) b!1320520))

(assert (= (and b!1320520 res!593481) b!1320509))

(assert (= (and b!1320509 res!593458) b!1320523))

(assert (= (and b!1320523 res!593469) b!1320496))

(assert (= (and b!1320496 res!593479) b!1320536))

(assert (= (and b!1320536 res!593468) b!1320530))

(assert (= (and b!1320530 res!593472) b!1320499))

(assert (= (and b!1320499 res!593449) b!1320524))

(assert (= (and b!1320524 (not res!593456)) b!1320526))

(assert (= (and b!1320526 (not res!593460)) b!1320505))

(assert (= (and b!1320505 (not res!593466)) b!1320513))

(assert (= (and b!1320513 (not res!593459)) b!1320506))

(assert (= (and b!1320506 (not res!593480)) b!1320502))

(assert (= (and b!1320502 (not res!593474)) b!1320535))

(assert (= (and b!1320535 (not res!593461)) b!1320532))

(assert (= (and b!1320532 (not res!593452)) b!1320527))

(assert (= (and b!1320527 (not res!593478)) b!1320518))

(assert (= (and b!1320518 (not res!593475)) b!1320537))

(assert (= (and b!1320537 (not res!593476)) b!1320501))

(assert (= (and b!1320501 (not res!593471)) b!1320515))

(assert (= (and b!1320515 (not res!593457)) b!1320500))

(assert (= (and b!1320500 (not res!593454)) b!1320510))

(assert (= (and b!1320510 (not res!593463)) b!1320525))

(assert (= (and b!1320525 (not res!593464)) b!1320517))

(assert (= (and b!1320517 (not res!593470)) b!1320514))

(assert (= (and b!1320514 (not res!593465)) b!1320531))

(assert (= (and b!1320531 (not res!593451)) b!1320519))

(assert (= (and b!1320519 (not res!593462)) b!1320529))

(assert (= (and b!1320529 (not res!593473)) b!1320512))

(assert (= (and b!1320512 (not res!593477)) b!1320508))

(assert (= (and b!1320508 (not res!593453)) b!1320498))

(assert (= b!1320516 b!1320503))

(assert (= b!1320533 b!1320516))

(assert (= (and start!117230 ((_ is Cons!13370) rules!2550)) b!1320533))

(assert (= b!1320528 b!1320507))

(assert (= b!1320497 b!1320528))

(assert (= start!117230 b!1320497))

(assert (= b!1320511 b!1320521))

(assert (= b!1320504 b!1320511))

(assert (= start!117230 b!1320504))

(declare-fun m!1476321 () Bool)

(assert (=> b!1320511 m!1476321))

(declare-fun m!1476323 () Bool)

(assert (=> b!1320511 m!1476323))

(declare-fun m!1476325 () Bool)

(assert (=> b!1320529 m!1476325))

(declare-fun m!1476327 () Bool)

(assert (=> b!1320517 m!1476327))

(declare-fun m!1476329 () Bool)

(assert (=> b!1320531 m!1476329))

(declare-fun m!1476331 () Bool)

(assert (=> b!1320531 m!1476331))

(declare-fun m!1476333 () Bool)

(assert (=> b!1320501 m!1476333))

(declare-fun m!1476335 () Bool)

(assert (=> b!1320520 m!1476335))

(declare-fun m!1476337 () Bool)

(assert (=> b!1320524 m!1476337))

(assert (=> b!1320524 m!1476337))

(declare-fun m!1476339 () Bool)

(assert (=> b!1320524 m!1476339))

(declare-fun m!1476341 () Bool)

(assert (=> b!1320518 m!1476341))

(assert (=> b!1320518 m!1476341))

(declare-fun m!1476343 () Bool)

(assert (=> b!1320518 m!1476343))

(declare-fun m!1476345 () Bool)

(assert (=> b!1320497 m!1476345))

(declare-fun m!1476347 () Bool)

(assert (=> b!1320515 m!1476347))

(assert (=> b!1320515 m!1476347))

(declare-fun m!1476349 () Bool)

(assert (=> b!1320515 m!1476349))

(declare-fun m!1476351 () Bool)

(assert (=> b!1320506 m!1476351))

(declare-fun m!1476353 () Bool)

(assert (=> b!1320510 m!1476353))

(declare-fun m!1476355 () Bool)

(assert (=> b!1320522 m!1476355))

(declare-fun m!1476357 () Bool)

(assert (=> b!1320534 m!1476357))

(declare-fun m!1476359 () Bool)

(assert (=> b!1320499 m!1476359))

(declare-fun m!1476361 () Bool)

(assert (=> b!1320499 m!1476361))

(declare-fun m!1476363 () Bool)

(assert (=> b!1320499 m!1476363))

(declare-fun m!1476365 () Bool)

(assert (=> b!1320499 m!1476365))

(declare-fun m!1476367 () Bool)

(assert (=> b!1320499 m!1476367))

(declare-fun m!1476369 () Bool)

(assert (=> b!1320499 m!1476369))

(declare-fun m!1476371 () Bool)

(assert (=> b!1320536 m!1476371))

(declare-fun m!1476373 () Bool)

(assert (=> b!1320505 m!1476373))

(declare-fun m!1476375 () Bool)

(assert (=> b!1320505 m!1476375))

(declare-fun m!1476377 () Bool)

(assert (=> b!1320535 m!1476377))

(declare-fun m!1476379 () Bool)

(assert (=> b!1320500 m!1476379))

(declare-fun m!1476381 () Bool)

(assert (=> b!1320519 m!1476381))

(declare-fun m!1476383 () Bool)

(assert (=> b!1320496 m!1476383))

(declare-fun m!1476385 () Bool)

(assert (=> b!1320496 m!1476385))

(declare-fun m!1476387 () Bool)

(assert (=> b!1320504 m!1476387))

(declare-fun m!1476389 () Bool)

(assert (=> b!1320526 m!1476389))

(assert (=> b!1320526 m!1476389))

(declare-fun m!1476391 () Bool)

(assert (=> b!1320526 m!1476391))

(declare-fun m!1476393 () Bool)

(assert (=> b!1320526 m!1476393))

(declare-fun m!1476395 () Bool)

(assert (=> b!1320508 m!1476395))

(declare-fun m!1476397 () Bool)

(assert (=> b!1320528 m!1476397))

(declare-fun m!1476399 () Bool)

(assert (=> b!1320528 m!1476399))

(declare-fun m!1476401 () Bool)

(assert (=> b!1320498 m!1476401))

(declare-fun m!1476403 () Bool)

(assert (=> b!1320498 m!1476403))

(declare-fun m!1476405 () Bool)

(assert (=> b!1320516 m!1476405))

(declare-fun m!1476407 () Bool)

(assert (=> b!1320516 m!1476407))

(declare-fun m!1476409 () Bool)

(assert (=> b!1320527 m!1476409))

(assert (=> b!1320527 m!1476409))

(declare-fun m!1476411 () Bool)

(assert (=> b!1320527 m!1476411))

(assert (=> b!1320527 m!1476409))

(assert (=> b!1320527 m!1476409))

(declare-fun m!1476413 () Bool)

(assert (=> b!1320527 m!1476413))

(declare-fun m!1476415 () Bool)

(assert (=> b!1320502 m!1476415))

(declare-fun m!1476417 () Bool)

(assert (=> start!117230 m!1476417))

(declare-fun m!1476419 () Bool)

(assert (=> start!117230 m!1476419))

(declare-fun m!1476421 () Bool)

(assert (=> b!1320530 m!1476421))

(declare-fun m!1476423 () Bool)

(assert (=> b!1320512 m!1476423))

(declare-fun m!1476425 () Bool)

(assert (=> b!1320512 m!1476425))

(declare-fun m!1476427 () Bool)

(assert (=> b!1320512 m!1476427))

(declare-fun m!1476429 () Bool)

(assert (=> b!1320512 m!1476429))

(declare-fun m!1476431 () Bool)

(assert (=> b!1320532 m!1476431))

(assert (=> b!1320532 m!1476409))

(assert (=> b!1320532 m!1476409))

(declare-fun m!1476433 () Bool)

(assert (=> b!1320532 m!1476433))

(assert (=> b!1320532 m!1476409))

(declare-fun m!1476435 () Bool)

(assert (=> b!1320532 m!1476435))

(declare-fun m!1476437 () Bool)

(assert (=> b!1320514 m!1476437))

(assert (=> b!1320514 m!1476437))

(declare-fun m!1476439 () Bool)

(assert (=> b!1320514 m!1476439))

(declare-fun m!1476441 () Bool)

(assert (=> b!1320525 m!1476441))

(declare-fun m!1476443 () Bool)

(assert (=> b!1320525 m!1476443))

(declare-fun m!1476445 () Bool)

(assert (=> b!1320525 m!1476445))

(assert (=> b!1320525 m!1476445))

(declare-fun m!1476447 () Bool)

(assert (=> b!1320525 m!1476447))

(declare-fun m!1476449 () Bool)

(assert (=> b!1320509 m!1476449))

(declare-fun m!1476451 () Bool)

(assert (=> b!1320537 m!1476451))

(declare-fun m!1476453 () Bool)

(assert (=> b!1320537 m!1476453))

(declare-fun m!1476455 () Bool)

(assert (=> b!1320537 m!1476455))

(declare-fun m!1476457 () Bool)

(assert (=> b!1320537 m!1476457))

(declare-fun m!1476459 () Bool)

(assert (=> b!1320537 m!1476459))

(assert (=> b!1320537 m!1476451))

(declare-fun m!1476461 () Bool)

(assert (=> b!1320513 m!1476461))

(check-sat (not b!1320530) (not b_next!32507) (not b!1320499) (not b!1320510) (not b!1320509) (not b!1320516) (not b!1320527) (not b!1320524) (not b!1320522) (not b!1320518) (not b!1320534) (not b!1320512) (not b!1320501) (not b!1320514) (not b!1320500) (not b!1320497) b_and!88175 (not b_next!32509) (not b!1320520) (not b!1320532) (not b!1320505) b_and!88177 (not b!1320517) b_and!88181 (not b!1320537) (not b_next!32499) b_and!88185 (not b!1320525) (not b!1320508) (not b!1320515) (not start!117230) (not b!1320531) b_and!88183 (not b!1320536) (not b!1320533) (not b!1320519) (not b!1320498) (not b!1320535) (not b_next!32505) (not b!1320506) (not b!1320526) (not b_next!32503) (not b!1320511) (not b!1320513) (not b_next!32501) (not b!1320502) b_and!88179 (not b!1320496) (not b!1320528) (not b!1320529) (not b!1320504))
(check-sat (not b_next!32507) b_and!88177 b_and!88185 b_and!88183 (not b_next!32505) (not b_next!32503) b_and!88175 (not b_next!32509) b_and!88181 (not b_next!32499) (not b_next!32501) b_and!88179)
(get-model)

(declare-fun d!373037 () Bool)

(declare-fun res!593555 () Bool)

(declare-fun e!846348 () Bool)

(assert (=> d!373037 (=> (not res!593555) (not e!846348))))

(declare-fun isEmpty!7948 (List!13434) Bool)

(assert (=> d!373037 (= res!593555 (not (isEmpty!7948 (originalCharacters!3175 t1!34))))))

(assert (=> d!373037 (= (inv!17749 t1!34) e!846348)))

(declare-fun b!1320641 () Bool)

(declare-fun res!593556 () Bool)

(assert (=> b!1320641 (=> (not res!593556) (not e!846348))))

(declare-fun dynLambda!5867 (Int TokenValue!2403) BalanceConc!8732)

(assert (=> b!1320641 (= res!593556 (= (originalCharacters!3175 t1!34) (list!5046 (dynLambda!5867 (toChars!3403 (transformation!2313 (rule!4058 t1!34))) (value!75553 t1!34)))))))

(declare-fun b!1320642 () Bool)

(declare-fun size!10891 (List!13434) Int)

(assert (=> b!1320642 (= e!846348 (= (size!10885 t1!34) (size!10891 (originalCharacters!3175 t1!34))))))

(assert (= (and d!373037 res!593555) b!1320641))

(assert (= (and b!1320641 res!593556) b!1320642))

(declare-fun b_lambda!38495 () Bool)

(assert (=> (not b_lambda!38495) (not b!1320641)))

(declare-fun t!118598 () Bool)

(declare-fun tb!70113 () Bool)

(assert (=> (and b!1320503 (= (toChars!3403 (transformation!2313 (h!18771 rules!2550))) (toChars!3403 (transformation!2313 (rule!4058 t1!34)))) t!118598) tb!70113))

(declare-fun b!1320647 () Bool)

(declare-fun e!846351 () Bool)

(declare-fun tp!383543 () Bool)

(declare-fun inv!17752 (Conc!4396) Bool)

(assert (=> b!1320647 (= e!846351 (and (inv!17752 (c!216814 (dynLambda!5867 (toChars!3403 (transformation!2313 (rule!4058 t1!34))) (value!75553 t1!34)))) tp!383543))))

(declare-fun result!85078 () Bool)

(declare-fun inv!17753 (BalanceConc!8732) Bool)

(assert (=> tb!70113 (= result!85078 (and (inv!17753 (dynLambda!5867 (toChars!3403 (transformation!2313 (rule!4058 t1!34))) (value!75553 t1!34))) e!846351))))

(assert (= tb!70113 b!1320647))

(declare-fun m!1476533 () Bool)

(assert (=> b!1320647 m!1476533))

(declare-fun m!1476535 () Bool)

(assert (=> tb!70113 m!1476535))

(assert (=> b!1320641 t!118598))

(declare-fun b_and!88187 () Bool)

(assert (= b_and!88177 (and (=> t!118598 result!85078) b_and!88187)))

(declare-fun tb!70115 () Bool)

(declare-fun t!118600 () Bool)

(assert (=> (and b!1320521 (= (toChars!3403 (transformation!2313 (rule!4058 t2!34))) (toChars!3403 (transformation!2313 (rule!4058 t1!34)))) t!118600) tb!70115))

(declare-fun result!85082 () Bool)

(assert (= result!85082 result!85078))

(assert (=> b!1320641 t!118600))

(declare-fun b_and!88189 () Bool)

(assert (= b_and!88181 (and (=> t!118600 result!85082) b_and!88189)))

(declare-fun t!118602 () Bool)

(declare-fun tb!70117 () Bool)

(assert (=> (and b!1320507 (= (toChars!3403 (transformation!2313 (rule!4058 t1!34))) (toChars!3403 (transformation!2313 (rule!4058 t1!34)))) t!118602) tb!70117))

(declare-fun result!85084 () Bool)

(assert (= result!85084 result!85078))

(assert (=> b!1320641 t!118602))

(declare-fun b_and!88191 () Bool)

(assert (= b_and!88185 (and (=> t!118602 result!85084) b_and!88191)))

(declare-fun m!1476537 () Bool)

(assert (=> d!373037 m!1476537))

(declare-fun m!1476539 () Bool)

(assert (=> b!1320641 m!1476539))

(assert (=> b!1320641 m!1476539))

(declare-fun m!1476541 () Bool)

(assert (=> b!1320641 m!1476541))

(declare-fun m!1476543 () Bool)

(assert (=> b!1320642 m!1476543))

(assert (=> start!117230 d!373037))

(declare-fun d!373049 () Bool)

(declare-fun res!593557 () Bool)

(declare-fun e!846352 () Bool)

(assert (=> d!373049 (=> (not res!593557) (not e!846352))))

(assert (=> d!373049 (= res!593557 (not (isEmpty!7948 (originalCharacters!3175 t2!34))))))

(assert (=> d!373049 (= (inv!17749 t2!34) e!846352)))

(declare-fun b!1320648 () Bool)

(declare-fun res!593558 () Bool)

(assert (=> b!1320648 (=> (not res!593558) (not e!846352))))

(assert (=> b!1320648 (= res!593558 (= (originalCharacters!3175 t2!34) (list!5046 (dynLambda!5867 (toChars!3403 (transformation!2313 (rule!4058 t2!34))) (value!75553 t2!34)))))))

(declare-fun b!1320649 () Bool)

(assert (=> b!1320649 (= e!846352 (= (size!10885 t2!34) (size!10891 (originalCharacters!3175 t2!34))))))

(assert (= (and d!373049 res!593557) b!1320648))

(assert (= (and b!1320648 res!593558) b!1320649))

(declare-fun b_lambda!38497 () Bool)

(assert (=> (not b_lambda!38497) (not b!1320648)))

(declare-fun t!118604 () Bool)

(declare-fun tb!70119 () Bool)

(assert (=> (and b!1320503 (= (toChars!3403 (transformation!2313 (h!18771 rules!2550))) (toChars!3403 (transformation!2313 (rule!4058 t2!34)))) t!118604) tb!70119))

(declare-fun b!1320650 () Bool)

(declare-fun e!846353 () Bool)

(declare-fun tp!383544 () Bool)

(assert (=> b!1320650 (= e!846353 (and (inv!17752 (c!216814 (dynLambda!5867 (toChars!3403 (transformation!2313 (rule!4058 t2!34))) (value!75553 t2!34)))) tp!383544))))

(declare-fun result!85086 () Bool)

(assert (=> tb!70119 (= result!85086 (and (inv!17753 (dynLambda!5867 (toChars!3403 (transformation!2313 (rule!4058 t2!34))) (value!75553 t2!34))) e!846353))))

(assert (= tb!70119 b!1320650))

(declare-fun m!1476545 () Bool)

(assert (=> b!1320650 m!1476545))

(declare-fun m!1476547 () Bool)

(assert (=> tb!70119 m!1476547))

(assert (=> b!1320648 t!118604))

(declare-fun b_and!88193 () Bool)

(assert (= b_and!88187 (and (=> t!118604 result!85086) b_and!88193)))

(declare-fun t!118606 () Bool)

(declare-fun tb!70121 () Bool)

(assert (=> (and b!1320521 (= (toChars!3403 (transformation!2313 (rule!4058 t2!34))) (toChars!3403 (transformation!2313 (rule!4058 t2!34)))) t!118606) tb!70121))

(declare-fun result!85088 () Bool)

(assert (= result!85088 result!85086))

(assert (=> b!1320648 t!118606))

(declare-fun b_and!88195 () Bool)

(assert (= b_and!88189 (and (=> t!118606 result!85088) b_and!88195)))

(declare-fun tb!70123 () Bool)

(declare-fun t!118608 () Bool)

(assert (=> (and b!1320507 (= (toChars!3403 (transformation!2313 (rule!4058 t1!34))) (toChars!3403 (transformation!2313 (rule!4058 t2!34)))) t!118608) tb!70123))

(declare-fun result!85090 () Bool)

(assert (= result!85090 result!85086))

(assert (=> b!1320648 t!118608))

(declare-fun b_and!88197 () Bool)

(assert (= b_and!88191 (and (=> t!118608 result!85090) b_and!88197)))

(declare-fun m!1476549 () Bool)

(assert (=> d!373049 m!1476549))

(declare-fun m!1476551 () Bool)

(assert (=> b!1320648 m!1476551))

(assert (=> b!1320648 m!1476551))

(declare-fun m!1476553 () Bool)

(assert (=> b!1320648 m!1476553))

(declare-fun m!1476555 () Bool)

(assert (=> b!1320649 m!1476555))

(assert (=> start!117230 d!373049))

(declare-fun d!373051 () Bool)

(declare-fun lt!435941 () Int)

(assert (=> d!373051 (= lt!435941 (size!10891 (list!5046 lt!435896)))))

(declare-fun size!10893 (Conc!4396) Int)

(assert (=> d!373051 (= lt!435941 (size!10893 (c!216814 lt!435896)))))

(assert (=> d!373051 (= (size!10884 lt!435896) lt!435941)))

(declare-fun bs!331010 () Bool)

(assert (= bs!331010 d!373051))

(assert (=> bs!331010 m!1476331))

(assert (=> bs!331010 m!1476331))

(declare-fun m!1476557 () Bool)

(assert (=> bs!331010 m!1476557))

(declare-fun m!1476559 () Bool)

(assert (=> bs!331010 m!1476559))

(assert (=> b!1320496 d!373051))

(declare-fun d!373053 () Bool)

(declare-fun lt!435948 () BalanceConc!8732)

(assert (=> d!373053 (= (list!5046 lt!435948) (originalCharacters!3175 t2!34))))

(assert (=> d!373053 (= lt!435948 (dynLambda!5867 (toChars!3403 (transformation!2313 (rule!4058 t2!34))) (value!75553 t2!34)))))

(assert (=> d!373053 (= (charsOf!1285 t2!34) lt!435948)))

(declare-fun b_lambda!38499 () Bool)

(assert (=> (not b_lambda!38499) (not d!373053)))

(assert (=> d!373053 t!118604))

(declare-fun b_and!88199 () Bool)

(assert (= b_and!88193 (and (=> t!118604 result!85086) b_and!88199)))

(assert (=> d!373053 t!118606))

(declare-fun b_and!88201 () Bool)

(assert (= b_and!88195 (and (=> t!118606 result!85088) b_and!88201)))

(assert (=> d!373053 t!118608))

(declare-fun b_and!88203 () Bool)

(assert (= b_and!88197 (and (=> t!118608 result!85090) b_and!88203)))

(declare-fun m!1476579 () Bool)

(assert (=> d!373053 m!1476579))

(assert (=> d!373053 m!1476551))

(assert (=> b!1320496 d!373053))

(declare-fun b!1320690 () Bool)

(declare-fun e!846380 () Bool)

(declare-fun e!846381 () Bool)

(assert (=> b!1320690 (= e!846380 e!846381)))

(declare-fun c!216845 () Bool)

(assert (=> b!1320690 (= c!216845 ((_ is IntegerValue!7210) (value!75553 t1!34)))))

(declare-fun d!373061 () Bool)

(declare-fun c!216846 () Bool)

(assert (=> d!373061 (= c!216846 ((_ is IntegerValue!7209) (value!75553 t1!34)))))

(assert (=> d!373061 (= (inv!21 (value!75553 t1!34)) e!846380)))

(declare-fun b!1320691 () Bool)

(declare-fun inv!16 (TokenValue!2403) Bool)

(assert (=> b!1320691 (= e!846380 (inv!16 (value!75553 t1!34)))))

(declare-fun b!1320692 () Bool)

(declare-fun inv!17 (TokenValue!2403) Bool)

(assert (=> b!1320692 (= e!846381 (inv!17 (value!75553 t1!34)))))

(declare-fun b!1320693 () Bool)

(declare-fun e!846382 () Bool)

(declare-fun inv!15 (TokenValue!2403) Bool)

(assert (=> b!1320693 (= e!846382 (inv!15 (value!75553 t1!34)))))

(declare-fun b!1320694 () Bool)

(declare-fun res!593572 () Bool)

(assert (=> b!1320694 (=> res!593572 e!846382)))

(assert (=> b!1320694 (= res!593572 (not ((_ is IntegerValue!7211) (value!75553 t1!34))))))

(assert (=> b!1320694 (= e!846381 e!846382)))

(assert (= (and d!373061 c!216846) b!1320691))

(assert (= (and d!373061 (not c!216846)) b!1320690))

(assert (= (and b!1320690 c!216845) b!1320692))

(assert (= (and b!1320690 (not c!216845)) b!1320694))

(assert (= (and b!1320694 (not res!593572)) b!1320693))

(declare-fun m!1476597 () Bool)

(assert (=> b!1320691 m!1476597))

(declare-fun m!1476599 () Bool)

(assert (=> b!1320692 m!1476599))

(declare-fun m!1476601 () Bool)

(assert (=> b!1320693 m!1476601))

(assert (=> b!1320497 d!373061))

(declare-fun bs!331012 () Bool)

(declare-fun d!373067 () Bool)

(assert (= bs!331012 (and d!373067 b!1320518)))

(declare-fun lambda!53920 () Int)

(assert (=> bs!331012 (not (= lambda!53920 lambda!53916))))

(declare-fun bs!331013 () Bool)

(assert (= bs!331013 (and d!373067 b!1320512)))

(assert (=> bs!331013 (not (= lambda!53920 lambda!53917))))

(assert (=> d!373067 true))

(declare-fun order!8075 () Int)

(declare-fun dynLambda!5869 (Int Int) Int)

(assert (=> d!373067 (< (dynLambda!5869 order!8075 lambda!53916) (dynLambda!5869 order!8075 lambda!53920))))

(declare-fun forall!3300 (List!13436 Int) Bool)

(assert (=> d!373067 (= (exists!328 rules!2550 lambda!53916) (not (forall!3300 rules!2550 lambda!53920)))))

(declare-fun bs!331014 () Bool)

(assert (= bs!331014 d!373067))

(declare-fun m!1476639 () Bool)

(assert (=> bs!331014 m!1476639))

(assert (=> b!1320518 d!373067))

(declare-fun bs!331015 () Bool)

(declare-fun d!373079 () Bool)

(assert (= bs!331015 (and d!373079 b!1320518)))

(declare-fun lambda!53923 () Int)

(assert (=> bs!331015 (not (= lambda!53923 lambda!53916))))

(declare-fun bs!331016 () Bool)

(assert (= bs!331016 (and d!373079 b!1320512)))

(assert (=> bs!331016 (not (= lambda!53923 lambda!53917))))

(declare-fun bs!331017 () Bool)

(assert (= bs!331017 (and d!373079 d!373067)))

(assert (=> bs!331017 (not (= lambda!53923 lambda!53920))))

(assert (=> d!373079 true))

(assert (=> d!373079 true))

(declare-fun order!8077 () Int)

(declare-fun dynLambda!5871 (Int Int) Int)

(assert (=> d!373079 (< (dynLambda!5871 order!8077 lambda!53914) (dynLambda!5869 order!8075 lambda!53923))))

(assert (=> d!373079 (exists!328 rules!2550 lambda!53923)))

(declare-fun lt!435970 () Unit!19448)

(declare-fun choose!8075 (List!13436 Int Regex!3627) Unit!19448)

(assert (=> d!373079 (= lt!435970 (choose!8075 rules!2550 lambda!53914 lt!435906))))

(assert (=> d!373079 (contains!2357 (map!2936 rules!2550 lambda!53914) lt!435906)))

(assert (=> d!373079 (= (lemmaMapContains!56 rules!2550 lambda!53914 lt!435906) lt!435970)))

(declare-fun bs!331018 () Bool)

(assert (= bs!331018 d!373079))

(declare-fun m!1476655 () Bool)

(assert (=> bs!331018 m!1476655))

(declare-fun m!1476657 () Bool)

(assert (=> bs!331018 m!1476657))

(assert (=> bs!331018 m!1476409))

(assert (=> bs!331018 m!1476409))

(assert (=> bs!331018 m!1476411))

(assert (=> b!1320518 d!373079))

(declare-fun d!373087 () Bool)

(declare-fun lt!435973 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1887 (List!13436) (InoxSet Rule!4426))

(assert (=> d!373087 (= lt!435973 (select (content!1887 rules!2550) (rule!4058 t2!34)))))

(declare-fun e!846414 () Bool)

(assert (=> d!373087 (= lt!435973 e!846414)))

(declare-fun res!593599 () Bool)

(assert (=> d!373087 (=> (not res!593599) (not e!846414))))

(assert (=> d!373087 (= res!593599 ((_ is Cons!13370) rules!2550))))

(assert (=> d!373087 (= (contains!2356 rules!2550 (rule!4058 t2!34)) lt!435973)))

(declare-fun b!1320745 () Bool)

(declare-fun e!846415 () Bool)

(assert (=> b!1320745 (= e!846414 e!846415)))

(declare-fun res!593600 () Bool)

(assert (=> b!1320745 (=> res!593600 e!846415)))

(assert (=> b!1320745 (= res!593600 (= (h!18771 rules!2550) (rule!4058 t2!34)))))

(declare-fun b!1320746 () Bool)

(assert (=> b!1320746 (= e!846415 (contains!2356 (t!118593 rules!2550) (rule!4058 t2!34)))))

(assert (= (and d!373087 res!593599) b!1320745))

(assert (= (and b!1320745 (not res!593600)) b!1320746))

(declare-fun m!1476659 () Bool)

(assert (=> d!373087 m!1476659))

(declare-fun m!1476661 () Bool)

(assert (=> d!373087 m!1476661))

(declare-fun m!1476663 () Bool)

(assert (=> b!1320746 m!1476663))

(assert (=> b!1320519 d!373087))

(declare-fun d!373089 () Bool)

(declare-fun lt!435974 () Int)

(assert (=> d!373089 (= lt!435974 (size!10891 (list!5046 lt!435907)))))

(assert (=> d!373089 (= lt!435974 (size!10893 (c!216814 lt!435907)))))

(assert (=> d!373089 (= (size!10884 lt!435907) lt!435974)))

(declare-fun bs!331019 () Bool)

(assert (= bs!331019 d!373089))

(assert (=> bs!331019 m!1476359))

(assert (=> bs!331019 m!1476359))

(declare-fun m!1476665 () Bool)

(assert (=> bs!331019 m!1476665))

(declare-fun m!1476667 () Bool)

(assert (=> bs!331019 m!1476667))

(assert (=> b!1320498 d!373089))

(declare-fun b!1320768 () Bool)

(declare-fun e!846430 () List!13434)

(declare-fun call!89670 () List!13434)

(assert (=> b!1320768 (= e!846430 call!89670)))

(declare-fun b!1320769 () Bool)

(declare-fun e!846427 () List!13434)

(declare-fun e!846429 () List!13434)

(assert (=> b!1320769 (= e!846427 e!846429)))

(declare-fun c!216867 () Bool)

(assert (=> b!1320769 (= c!216867 ((_ is ElementMatch!3627) (regex!2313 (rule!4058 t1!34))))))

(declare-fun call!89672 () List!13434)

(declare-fun c!216869 () Bool)

(declare-fun call!89671 () List!13434)

(declare-fun bm!89665 () Bool)

(declare-fun call!89673 () List!13434)

(assert (=> bm!89665 (= call!89673 (++!3414 (ite c!216869 call!89672 call!89671) (ite c!216869 call!89671 call!89672)))))

(declare-fun b!1320770 () Bool)

(declare-fun e!846428 () List!13434)

(assert (=> b!1320770 (= e!846430 e!846428)))

(assert (=> b!1320770 (= c!216869 ((_ is Union!3627) (regex!2313 (rule!4058 t1!34))))))

(declare-fun c!216868 () Bool)

(declare-fun bm!89666 () Bool)

(assert (=> bm!89666 (= call!89670 (usedCharacters!178 (ite c!216868 (reg!3956 (regex!2313 (rule!4058 t1!34))) (ite c!216869 (regTwo!7767 (regex!2313 (rule!4058 t1!34))) (regOne!7766 (regex!2313 (rule!4058 t1!34)))))))))

(declare-fun bm!89667 () Bool)

(assert (=> bm!89667 (= call!89671 call!89670)))

(declare-fun b!1320771 () Bool)

(assert (=> b!1320771 (= e!846427 Nil!13368)))

(declare-fun b!1320772 () Bool)

(assert (=> b!1320772 (= e!846428 call!89673)))

(declare-fun b!1320773 () Bool)

(assert (=> b!1320773 (= e!846429 (Cons!13368 (c!216815 (regex!2313 (rule!4058 t1!34))) Nil!13368))))

(declare-fun b!1320774 () Bool)

(assert (=> b!1320774 (= e!846428 call!89673)))

(declare-fun b!1320775 () Bool)

(assert (=> b!1320775 (= c!216868 ((_ is Star!3627) (regex!2313 (rule!4058 t1!34))))))

(assert (=> b!1320775 (= e!846429 e!846430)))

(declare-fun bm!89668 () Bool)

(assert (=> bm!89668 (= call!89672 (usedCharacters!178 (ite c!216869 (regOne!7767 (regex!2313 (rule!4058 t1!34))) (regTwo!7766 (regex!2313 (rule!4058 t1!34))))))))

(declare-fun d!373091 () Bool)

(declare-fun c!216866 () Bool)

(assert (=> d!373091 (= c!216866 (or ((_ is EmptyExpr!3627) (regex!2313 (rule!4058 t1!34))) ((_ is EmptyLang!3627) (regex!2313 (rule!4058 t1!34)))))))

(assert (=> d!373091 (= (usedCharacters!178 (regex!2313 (rule!4058 t1!34))) e!846427)))

(assert (= (and d!373091 c!216866) b!1320771))

(assert (= (and d!373091 (not c!216866)) b!1320769))

(assert (= (and b!1320769 c!216867) b!1320773))

(assert (= (and b!1320769 (not c!216867)) b!1320775))

(assert (= (and b!1320775 c!216868) b!1320768))

(assert (= (and b!1320775 (not c!216868)) b!1320770))

(assert (= (and b!1320770 c!216869) b!1320772))

(assert (= (and b!1320770 (not c!216869)) b!1320774))

(assert (= (or b!1320772 b!1320774) bm!89668))

(assert (= (or b!1320772 b!1320774) bm!89667))

(assert (= (or b!1320772 b!1320774) bm!89665))

(assert (= (or b!1320768 bm!89667) bm!89666))

(declare-fun m!1476691 () Bool)

(assert (=> bm!89665 m!1476691))

(declare-fun m!1476693 () Bool)

(assert (=> bm!89666 m!1476693))

(declare-fun m!1476695 () Bool)

(assert (=> bm!89668 m!1476695))

(assert (=> b!1320498 d!373091))

(declare-fun d!373099 () Bool)

(declare-fun list!5049 (Conc!4396) List!13434)

(assert (=> d!373099 (= (list!5046 lt!435907) (list!5049 (c!216814 lt!435907)))))

(declare-fun bs!331022 () Bool)

(assert (= bs!331022 d!373099))

(declare-fun m!1476697 () Bool)

(assert (=> bs!331022 m!1476697))

(assert (=> b!1320499 d!373099))

(declare-fun d!373101 () Bool)

(declare-fun c!216872 () Bool)

(assert (=> d!373101 (= c!216872 (isEmpty!7948 lt!435905))))

(declare-fun e!846433 () Bool)

(assert (=> d!373101 (= (prefixMatch!140 lt!435888 lt!435905) e!846433)))

(declare-fun b!1320780 () Bool)

(declare-fun lostCause!278 (Regex!3627) Bool)

(assert (=> b!1320780 (= e!846433 (not (lostCause!278 lt!435888)))))

(declare-fun b!1320781 () Bool)

(declare-fun derivativeStep!903 (Regex!3627 C!7544) Regex!3627)

(declare-fun head!2289 (List!13434) C!7544)

(declare-fun tail!1896 (List!13434) List!13434)

(assert (=> b!1320781 (= e!846433 (prefixMatch!140 (derivativeStep!903 lt!435888 (head!2289 lt!435905)) (tail!1896 lt!435905)))))

(assert (= (and d!373101 c!216872) b!1320780))

(assert (= (and d!373101 (not c!216872)) b!1320781))

(declare-fun m!1476699 () Bool)

(assert (=> d!373101 m!1476699))

(declare-fun m!1476701 () Bool)

(assert (=> b!1320780 m!1476701))

(declare-fun m!1476703 () Bool)

(assert (=> b!1320781 m!1476703))

(assert (=> b!1320781 m!1476703))

(declare-fun m!1476705 () Bool)

(assert (=> b!1320781 m!1476705))

(declare-fun m!1476707 () Bool)

(assert (=> b!1320781 m!1476707))

(assert (=> b!1320781 m!1476705))

(assert (=> b!1320781 m!1476707))

(declare-fun m!1476709 () Bool)

(assert (=> b!1320781 m!1476709))

(assert (=> b!1320499 d!373101))

(declare-fun b!1320794 () Bool)

(declare-fun e!846440 () List!13434)

(assert (=> b!1320794 (= e!846440 (Cons!13368 lt!435893 Nil!13368))))

(declare-fun d!373103 () Bool)

(declare-fun e!846441 () Bool)

(assert (=> d!373103 e!846441))

(declare-fun res!593607 () Bool)

(assert (=> d!373103 (=> (not res!593607) (not e!846441))))

(declare-fun lt!435990 () List!13434)

(declare-fun content!1888 (List!13434) (InoxSet C!7544))

(assert (=> d!373103 (= res!593607 (= (content!1888 lt!435990) ((_ map or) (content!1888 lt!435895) (content!1888 (Cons!13368 lt!435893 Nil!13368)))))))

(assert (=> d!373103 (= lt!435990 e!846440)))

(declare-fun c!216877 () Bool)

(assert (=> d!373103 (= c!216877 ((_ is Nil!13368) lt!435895))))

(assert (=> d!373103 (= (++!3414 lt!435895 (Cons!13368 lt!435893 Nil!13368)) lt!435990)))

(declare-fun b!1320796 () Bool)

(declare-fun res!593606 () Bool)

(assert (=> b!1320796 (=> (not res!593606) (not e!846441))))

(assert (=> b!1320796 (= res!593606 (= (size!10891 lt!435990) (+ (size!10891 lt!435895) (size!10891 (Cons!13368 lt!435893 Nil!13368)))))))

(declare-fun b!1320797 () Bool)

(assert (=> b!1320797 (= e!846441 (or (not (= (Cons!13368 lt!435893 Nil!13368) Nil!13368)) (= lt!435990 lt!435895)))))

(declare-fun b!1320795 () Bool)

(assert (=> b!1320795 (= e!846440 (Cons!13368 (h!18769 lt!435895) (++!3414 (t!118591 lt!435895) (Cons!13368 lt!435893 Nil!13368))))))

(assert (= (and d!373103 c!216877) b!1320794))

(assert (= (and d!373103 (not c!216877)) b!1320795))

(assert (= (and d!373103 res!593607) b!1320796))

(assert (= (and b!1320796 res!593606) b!1320797))

(declare-fun m!1476711 () Bool)

(assert (=> d!373103 m!1476711))

(declare-fun m!1476713 () Bool)

(assert (=> d!373103 m!1476713))

(declare-fun m!1476715 () Bool)

(assert (=> d!373103 m!1476715))

(declare-fun m!1476717 () Bool)

(assert (=> b!1320796 m!1476717))

(declare-fun m!1476719 () Bool)

(assert (=> b!1320796 m!1476719))

(declare-fun m!1476721 () Bool)

(assert (=> b!1320796 m!1476721))

(declare-fun m!1476723 () Bool)

(assert (=> b!1320795 m!1476723))

(assert (=> b!1320499 d!373103))

(declare-fun d!373105 () Bool)

(declare-fun lt!435999 () C!7544)

(declare-fun apply!3064 (List!13434 Int) C!7544)

(assert (=> d!373105 (= lt!435999 (apply!3064 (list!5046 lt!435896) 0))))

(declare-fun apply!3065 (Conc!4396 Int) C!7544)

(assert (=> d!373105 (= lt!435999 (apply!3065 (c!216814 lt!435896) 0))))

(declare-fun e!846453 () Bool)

(assert (=> d!373105 e!846453))

(declare-fun res!593633 () Bool)

(assert (=> d!373105 (=> (not res!593633) (not e!846453))))

(assert (=> d!373105 (= res!593633 (<= 0 0))))

(assert (=> d!373105 (= (apply!3059 lt!435896 0) lt!435999)))

(declare-fun b!1320825 () Bool)

(assert (=> b!1320825 (= e!846453 (< 0 (size!10884 lt!435896)))))

(assert (= (and d!373105 res!593633) b!1320825))

(assert (=> d!373105 m!1476331))

(assert (=> d!373105 m!1476331))

(declare-fun m!1476765 () Bool)

(assert (=> d!373105 m!1476765))

(declare-fun m!1476767 () Bool)

(assert (=> d!373105 m!1476767))

(assert (=> b!1320825 m!1476383))

(assert (=> b!1320499 d!373105))

(declare-fun d!373113 () Bool)

(declare-fun lt!436000 () BalanceConc!8732)

(assert (=> d!373113 (= (list!5046 lt!436000) (originalCharacters!3175 t1!34))))

(assert (=> d!373113 (= lt!436000 (dynLambda!5867 (toChars!3403 (transformation!2313 (rule!4058 t1!34))) (value!75553 t1!34)))))

(assert (=> d!373113 (= (charsOf!1285 t1!34) lt!436000)))

(declare-fun b_lambda!38513 () Bool)

(assert (=> (not b_lambda!38513) (not d!373113)))

(assert (=> d!373113 t!118598))

(declare-fun b_and!88205 () Bool)

(assert (= b_and!88199 (and (=> t!118598 result!85078) b_and!88205)))

(assert (=> d!373113 t!118600))

(declare-fun b_and!88207 () Bool)

(assert (= b_and!88201 (and (=> t!118600 result!85082) b_and!88207)))

(assert (=> d!373113 t!118602))

(declare-fun b_and!88209 () Bool)

(assert (= b_and!88203 (and (=> t!118602 result!85084) b_and!88209)))

(declare-fun m!1476769 () Bool)

(assert (=> d!373113 m!1476769))

(assert (=> d!373113 m!1476539))

(assert (=> b!1320499 d!373113))

(declare-fun bs!331024 () Bool)

(declare-fun d!373115 () Bool)

(assert (= bs!331024 (and d!373115 b!1320532)))

(declare-fun lambda!53926 () Int)

(assert (=> bs!331024 (= lambda!53926 lambda!53914)))

(declare-fun lt!436003 () Unit!19448)

(declare-fun lemma!72 (List!13436 LexerInterface!2008 List!13436) Unit!19448)

(assert (=> d!373115 (= lt!436003 (lemma!72 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!80 (List!13438) Regex!3627)

(assert (=> d!373115 (= (rulesRegex!198 thiss!19762 rules!2550) (generalisedUnion!80 (map!2936 rules!2550 lambda!53926)))))

(declare-fun bs!331025 () Bool)

(assert (= bs!331025 d!373115))

(declare-fun m!1476805 () Bool)

(assert (=> bs!331025 m!1476805))

(declare-fun m!1476807 () Bool)

(assert (=> bs!331025 m!1476807))

(assert (=> bs!331025 m!1476807))

(declare-fun m!1476809 () Bool)

(assert (=> bs!331025 m!1476809))

(assert (=> b!1320499 d!373115))

(declare-fun d!373127 () Bool)

(declare-fun lt!436037 () Bool)

(declare-fun e!846500 () Bool)

(assert (=> d!373127 (= lt!436037 e!846500)))

(declare-fun res!593669 () Bool)

(assert (=> d!373127 (=> (not res!593669) (not e!846500))))

(assert (=> d!373127 (= res!593669 (= (list!5047 (_1!7386 (lex!843 thiss!19762 rules!2550 (print!782 thiss!19762 (singletonSeq!896 t1!34))))) (list!5047 (singletonSeq!896 t1!34))))))

(declare-fun e!846501 () Bool)

(assert (=> d!373127 (= lt!436037 e!846501)))

(declare-fun res!593670 () Bool)

(assert (=> d!373127 (=> (not res!593670) (not e!846501))))

(declare-fun lt!436036 () tuple2!13000)

(declare-fun size!10894 (BalanceConc!8734) Int)

(assert (=> d!373127 (= res!593670 (= (size!10894 (_1!7386 lt!436036)) 1))))

(assert (=> d!373127 (= lt!436036 (lex!843 thiss!19762 rules!2550 (print!782 thiss!19762 (singletonSeq!896 t1!34))))))

(assert (=> d!373127 (not (isEmpty!7943 rules!2550))))

(assert (=> d!373127 (= (rulesProduceIndividualToken!977 thiss!19762 rules!2550 t1!34) lt!436037)))

(declare-fun b!1320917 () Bool)

(declare-fun res!593671 () Bool)

(assert (=> b!1320917 (=> (not res!593671) (not e!846501))))

(declare-fun apply!3066 (BalanceConc!8734 Int) Token!4288)

(assert (=> b!1320917 (= res!593671 (= (apply!3066 (_1!7386 lt!436036) 0) t1!34))))

(declare-fun b!1320918 () Bool)

(assert (=> b!1320918 (= e!846501 (isEmpty!7942 (_2!7386 lt!436036)))))

(declare-fun b!1320919 () Bool)

(assert (=> b!1320919 (= e!846500 (isEmpty!7942 (_2!7386 (lex!843 thiss!19762 rules!2550 (print!782 thiss!19762 (singletonSeq!896 t1!34))))))))

(assert (= (and d!373127 res!593670) b!1320917))

(assert (= (and b!1320917 res!593671) b!1320918))

(assert (= (and d!373127 res!593669) b!1320919))

(assert (=> d!373127 m!1476451))

(assert (=> d!373127 m!1476453))

(assert (=> d!373127 m!1476451))

(assert (=> d!373127 m!1476451))

(declare-fun m!1476913 () Bool)

(assert (=> d!373127 m!1476913))

(assert (=> d!373127 m!1476453))

(declare-fun m!1476915 () Bool)

(assert (=> d!373127 m!1476915))

(assert (=> d!373127 m!1476355))

(declare-fun m!1476917 () Bool)

(assert (=> d!373127 m!1476917))

(declare-fun m!1476919 () Bool)

(assert (=> d!373127 m!1476919))

(declare-fun m!1476921 () Bool)

(assert (=> b!1320917 m!1476921))

(declare-fun m!1476923 () Bool)

(assert (=> b!1320918 m!1476923))

(assert (=> b!1320919 m!1476451))

(assert (=> b!1320919 m!1476451))

(assert (=> b!1320919 m!1476453))

(assert (=> b!1320919 m!1476453))

(assert (=> b!1320919 m!1476915))

(declare-fun m!1476925 () Bool)

(assert (=> b!1320919 m!1476925))

(assert (=> b!1320520 d!373127))

(declare-fun d!373161 () Bool)

(declare-fun e!846518 () Bool)

(assert (=> d!373161 e!846518))

(declare-fun res!593698 () Bool)

(assert (=> d!373161 (=> res!593698 e!846518)))

(declare-fun lt!436055 () Option!2584)

(declare-fun isEmpty!7949 (Option!2584) Bool)

(assert (=> d!373161 (= res!593698 (isEmpty!7949 lt!436055))))

(declare-fun e!846517 () Option!2584)

(assert (=> d!373161 (= lt!436055 e!846517)))

(declare-fun c!216905 () Bool)

(assert (=> d!373161 (= c!216905 (and ((_ is Cons!13370) rules!2550) ((_ is Nil!13370) (t!118593 rules!2550))))))

(declare-fun lt!436054 () Unit!19448)

(declare-fun lt!436052 () Unit!19448)

(assert (=> d!373161 (= lt!436054 lt!436052)))

(declare-fun isPrefix!1078 (List!13434 List!13434) Bool)

(assert (=> d!373161 (isPrefix!1078 lt!435895 lt!435895)))

(declare-fun lemmaIsPrefixRefl!757 (List!13434 List!13434) Unit!19448)

(assert (=> d!373161 (= lt!436052 (lemmaIsPrefixRefl!757 lt!435895 lt!435895))))

(declare-fun rulesValidInductive!730 (LexerInterface!2008 List!13436) Bool)

(assert (=> d!373161 (rulesValidInductive!730 thiss!19762 rules!2550)))

(assert (=> d!373161 (= (maxPrefix!1018 thiss!19762 rules!2550 lt!435895) lt!436055)))

(declare-fun call!89692 () Option!2584)

(declare-fun bm!89687 () Bool)

(declare-fun maxPrefixOneRule!583 (LexerInterface!2008 Rule!4426 List!13434) Option!2584)

(assert (=> bm!89687 (= call!89692 (maxPrefixOneRule!583 thiss!19762 (h!18771 rules!2550) lt!435895))))

(declare-fun b!1320953 () Bool)

(declare-fun res!593700 () Bool)

(declare-fun e!846519 () Bool)

(assert (=> b!1320953 (=> (not res!593700) (not e!846519))))

(declare-fun get!4263 (Option!2584) tuple2!12998)

(assert (=> b!1320953 (= res!593700 (= (list!5046 (charsOf!1285 (_1!7385 (get!4263 lt!436055)))) (originalCharacters!3175 (_1!7385 (get!4263 lt!436055)))))))

(declare-fun b!1320954 () Bool)

(declare-fun res!593696 () Bool)

(assert (=> b!1320954 (=> (not res!593696) (not e!846519))))

(assert (=> b!1320954 (= res!593696 (= (++!3414 (list!5046 (charsOf!1285 (_1!7385 (get!4263 lt!436055)))) (_2!7385 (get!4263 lt!436055))) lt!435895))))

(declare-fun b!1320955 () Bool)

(declare-fun res!593697 () Bool)

(assert (=> b!1320955 (=> (not res!593697) (not e!846519))))

(assert (=> b!1320955 (= res!593697 (matchR!1629 (regex!2313 (rule!4058 (_1!7385 (get!4263 lt!436055)))) (list!5046 (charsOf!1285 (_1!7385 (get!4263 lt!436055))))))))

(declare-fun b!1320956 () Bool)

(assert (=> b!1320956 (= e!846519 (contains!2356 rules!2550 (rule!4058 (_1!7385 (get!4263 lt!436055)))))))

(declare-fun b!1320957 () Bool)

(declare-fun res!593701 () Bool)

(assert (=> b!1320957 (=> (not res!593701) (not e!846519))))

(declare-fun apply!3067 (TokenValueInjection!4466 BalanceConc!8732) TokenValue!2403)

(declare-fun seqFromList!1601 (List!13434) BalanceConc!8732)

(assert (=> b!1320957 (= res!593701 (= (value!75553 (_1!7385 (get!4263 lt!436055))) (apply!3067 (transformation!2313 (rule!4058 (_1!7385 (get!4263 lt!436055)))) (seqFromList!1601 (originalCharacters!3175 (_1!7385 (get!4263 lt!436055)))))))))

(declare-fun b!1320958 () Bool)

(declare-fun res!593699 () Bool)

(assert (=> b!1320958 (=> (not res!593699) (not e!846519))))

(assert (=> b!1320958 (= res!593699 (< (size!10891 (_2!7385 (get!4263 lt!436055))) (size!10891 lt!435895)))))

(declare-fun b!1320959 () Bool)

(declare-fun lt!436051 () Option!2584)

(declare-fun lt!436053 () Option!2584)

(assert (=> b!1320959 (= e!846517 (ite (and ((_ is None!2583) lt!436051) ((_ is None!2583) lt!436053)) None!2583 (ite ((_ is None!2583) lt!436053) lt!436051 (ite ((_ is None!2583) lt!436051) lt!436053 (ite (>= (size!10885 (_1!7385 (v!21156 lt!436051))) (size!10885 (_1!7385 (v!21156 lt!436053)))) lt!436051 lt!436053)))))))

(assert (=> b!1320959 (= lt!436051 call!89692)))

(assert (=> b!1320959 (= lt!436053 (maxPrefix!1018 thiss!19762 (t!118593 rules!2550) lt!435895))))

(declare-fun b!1320960 () Bool)

(assert (=> b!1320960 (= e!846517 call!89692)))

(declare-fun b!1320961 () Bool)

(assert (=> b!1320961 (= e!846518 e!846519)))

(declare-fun res!593695 () Bool)

(assert (=> b!1320961 (=> (not res!593695) (not e!846519))))

(declare-fun isDefined!2181 (Option!2584) Bool)

(assert (=> b!1320961 (= res!593695 (isDefined!2181 lt!436055))))

(assert (= (and d!373161 c!216905) b!1320960))

(assert (= (and d!373161 (not c!216905)) b!1320959))

(assert (= (or b!1320960 b!1320959) bm!89687))

(assert (= (and d!373161 (not res!593698)) b!1320961))

(assert (= (and b!1320961 res!593695) b!1320953))

(assert (= (and b!1320953 res!593700) b!1320958))

(assert (= (and b!1320958 res!593699) b!1320954))

(assert (= (and b!1320954 res!593696) b!1320957))

(assert (= (and b!1320957 res!593701) b!1320955))

(assert (= (and b!1320955 res!593697) b!1320956))

(declare-fun m!1476941 () Bool)

(assert (=> b!1320961 m!1476941))

(declare-fun m!1476943 () Bool)

(assert (=> b!1320955 m!1476943))

(declare-fun m!1476945 () Bool)

(assert (=> b!1320955 m!1476945))

(assert (=> b!1320955 m!1476945))

(declare-fun m!1476947 () Bool)

(assert (=> b!1320955 m!1476947))

(assert (=> b!1320955 m!1476947))

(declare-fun m!1476949 () Bool)

(assert (=> b!1320955 m!1476949))

(assert (=> b!1320957 m!1476943))

(declare-fun m!1476951 () Bool)

(assert (=> b!1320957 m!1476951))

(assert (=> b!1320957 m!1476951))

(declare-fun m!1476953 () Bool)

(assert (=> b!1320957 m!1476953))

(declare-fun m!1476955 () Bool)

(assert (=> bm!89687 m!1476955))

(assert (=> b!1320954 m!1476943))

(assert (=> b!1320954 m!1476945))

(assert (=> b!1320954 m!1476945))

(assert (=> b!1320954 m!1476947))

(assert (=> b!1320954 m!1476947))

(declare-fun m!1476957 () Bool)

(assert (=> b!1320954 m!1476957))

(assert (=> b!1320958 m!1476943))

(declare-fun m!1476959 () Bool)

(assert (=> b!1320958 m!1476959))

(assert (=> b!1320958 m!1476719))

(declare-fun m!1476961 () Bool)

(assert (=> d!373161 m!1476961))

(declare-fun m!1476963 () Bool)

(assert (=> d!373161 m!1476963))

(declare-fun m!1476965 () Bool)

(assert (=> d!373161 m!1476965))

(declare-fun m!1476967 () Bool)

(assert (=> d!373161 m!1476967))

(assert (=> b!1320953 m!1476943))

(assert (=> b!1320953 m!1476945))

(assert (=> b!1320953 m!1476945))

(assert (=> b!1320953 m!1476947))

(declare-fun m!1476969 () Bool)

(assert (=> b!1320959 m!1476969))

(assert (=> b!1320956 m!1476943))

(declare-fun m!1476971 () Bool)

(assert (=> b!1320956 m!1476971))

(assert (=> b!1320500 d!373161))

(declare-fun d!373165 () Bool)

(declare-fun lt!436058 () Bool)

(assert (=> d!373165 (= lt!436058 (isEmpty!7948 (list!5046 (_2!7386 lt!435897))))))

(declare-fun isEmpty!7951 (Conc!4396) Bool)

(assert (=> d!373165 (= lt!436058 (isEmpty!7951 (c!216814 (_2!7386 lt!435897))))))

(assert (=> d!373165 (= (isEmpty!7942 (_2!7386 lt!435897)) lt!436058)))

(declare-fun bs!331049 () Bool)

(assert (= bs!331049 d!373165))

(declare-fun m!1476973 () Bool)

(assert (=> bs!331049 m!1476973))

(assert (=> bs!331049 m!1476973))

(declare-fun m!1476975 () Bool)

(assert (=> bs!331049 m!1476975))

(declare-fun m!1476977 () Bool)

(assert (=> bs!331049 m!1476977))

(assert (=> b!1320501 d!373165))

(declare-fun d!373167 () Bool)

(assert (=> d!373167 (= (isEmpty!7943 rules!2550) ((_ is Nil!13370) rules!2550))))

(assert (=> b!1320522 d!373167))

(declare-fun d!373169 () Bool)

(declare-fun lt!436063 () Bool)

(assert (=> d!373169 (= lt!436063 (select (content!1888 lt!435901) lt!435893))))

(declare-fun e!846524 () Bool)

(assert (=> d!373169 (= lt!436063 e!846524)))

(declare-fun res!593707 () Bool)

(assert (=> d!373169 (=> (not res!593707) (not e!846524))))

(assert (=> d!373169 (= res!593707 ((_ is Cons!13368) lt!435901))))

(assert (=> d!373169 (= (contains!2355 lt!435901 lt!435893) lt!436063)))

(declare-fun b!1320966 () Bool)

(declare-fun e!846525 () Bool)

(assert (=> b!1320966 (= e!846524 e!846525)))

(declare-fun res!593706 () Bool)

(assert (=> b!1320966 (=> res!593706 e!846525)))

(assert (=> b!1320966 (= res!593706 (= (h!18769 lt!435901) lt!435893))))

(declare-fun b!1320967 () Bool)

(assert (=> b!1320967 (= e!846525 (contains!2355 (t!118591 lt!435901) lt!435893))))

(assert (= (and d!373169 res!593707) b!1320966))

(assert (= (and b!1320966 (not res!593706)) b!1320967))

(declare-fun m!1476981 () Bool)

(assert (=> d!373169 m!1476981))

(declare-fun m!1476985 () Bool)

(assert (=> d!373169 m!1476985))

(declare-fun m!1476987 () Bool)

(assert (=> b!1320967 m!1476987))

(assert (=> b!1320502 d!373169))

(declare-fun d!373173 () Bool)

(declare-fun choose!8080 (Int) Bool)

(assert (=> d!373173 (= (Exists!785 lambda!53913) (choose!8080 lambda!53913))))

(declare-fun bs!331051 () Bool)

(assert (= bs!331051 d!373173))

(declare-fun m!1476991 () Bool)

(assert (=> bs!331051 m!1476991))

(assert (=> b!1320524 d!373173))

(declare-fun bs!331052 () Bool)

(declare-fun d!373175 () Bool)

(assert (= bs!331052 (and d!373175 b!1320524)))

(declare-fun lambda!53948 () Int)

(assert (=> bs!331052 (= lambda!53948 lambda!53913)))

(assert (=> d!373175 true))

(assert (=> d!373175 true))

(assert (=> d!373175 (Exists!785 lambda!53948)))

(declare-fun lt!436070 () Unit!19448)

(declare-fun choose!8081 (Regex!3627 List!13434) Unit!19448)

(assert (=> d!373175 (= lt!436070 (choose!8081 lt!435888 lt!435905))))

(declare-fun validRegex!1553 (Regex!3627) Bool)

(assert (=> d!373175 (validRegex!1553 lt!435888)))

(assert (=> d!373175 (= (lemmaPrefixMatchThenExistsStringThatMatches!103 lt!435888 lt!435905) lt!436070)))

(declare-fun bs!331053 () Bool)

(assert (= bs!331053 d!373175))

(declare-fun m!1476999 () Bool)

(assert (=> bs!331053 m!1476999))

(declare-fun m!1477001 () Bool)

(assert (=> bs!331053 m!1477001))

(declare-fun m!1477003 () Bool)

(assert (=> bs!331053 m!1477003))

(assert (=> b!1320524 d!373175))

(declare-fun d!373179 () Bool)

(declare-fun list!5051 (Conc!4397) List!13437)

(assert (=> d!373179 (= (list!5047 (_1!7386 lt!435903)) (list!5051 (c!216816 (_1!7386 lt!435903))))))

(declare-fun bs!331054 () Bool)

(assert (= bs!331054 d!373179))

(declare-fun m!1477007 () Bool)

(assert (=> bs!331054 m!1477007))

(assert (=> b!1320525 d!373179))

(declare-fun b!1321083 () Bool)

(declare-fun e!846598 () Bool)

(declare-fun lt!436095 () tuple2!13000)

(declare-fun isEmpty!7952 (BalanceConc!8734) Bool)

(assert (=> b!1321083 (= e!846598 (not (isEmpty!7952 (_1!7386 lt!436095))))))

(declare-fun b!1321084 () Bool)

(declare-fun e!846600 () Bool)

(assert (=> b!1321084 (= e!846600 e!846598)))

(declare-fun res!593752 () Bool)

(assert (=> b!1321084 (= res!593752 (< (size!10884 (_2!7386 lt!436095)) (size!10884 lt!435898)))))

(assert (=> b!1321084 (=> (not res!593752) (not e!846598))))

(declare-fun b!1321085 () Bool)

(declare-fun e!846599 () Bool)

(assert (=> b!1321085 (= e!846599 (= (list!5046 (_2!7386 lt!436095)) (_2!7387 (lexList!546 thiss!19762 rules!2550 (list!5046 lt!435898)))))))

(declare-fun b!1321086 () Bool)

(assert (=> b!1321086 (= e!846600 (= (_2!7386 lt!436095) lt!435898))))

(declare-fun b!1321087 () Bool)

(declare-fun res!593754 () Bool)

(assert (=> b!1321087 (=> (not res!593754) (not e!846599))))

(assert (=> b!1321087 (= res!593754 (= (list!5047 (_1!7386 lt!436095)) (_1!7387 (lexList!546 thiss!19762 rules!2550 (list!5046 lt!435898)))))))

(declare-fun d!373183 () Bool)

(assert (=> d!373183 e!846599))

(declare-fun res!593753 () Bool)

(assert (=> d!373183 (=> (not res!593753) (not e!846599))))

(assert (=> d!373183 (= res!593753 e!846600)))

(declare-fun c!216922 () Bool)

(assert (=> d!373183 (= c!216922 (> (size!10894 (_1!7386 lt!436095)) 0))))

(declare-fun lexTailRecV2!369 (LexerInterface!2008 List!13436 BalanceConc!8732 BalanceConc!8732 BalanceConc!8732 BalanceConc!8734) tuple2!13000)

(assert (=> d!373183 (= lt!436095 (lexTailRecV2!369 thiss!19762 rules!2550 lt!435898 (BalanceConc!8733 Empty!4396) lt!435898 (BalanceConc!8735 Empty!4397)))))

(assert (=> d!373183 (= (lex!843 thiss!19762 rules!2550 lt!435898) lt!436095)))

(assert (= (and d!373183 c!216922) b!1321084))

(assert (= (and d!373183 (not c!216922)) b!1321086))

(assert (= (and b!1321084 res!593752) b!1321083))

(assert (= (and d!373183 res!593753) b!1321087))

(assert (= (and b!1321087 res!593754) b!1321085))

(declare-fun m!1477141 () Bool)

(assert (=> b!1321087 m!1477141))

(assert (=> b!1321087 m!1476437))

(assert (=> b!1321087 m!1476437))

(assert (=> b!1321087 m!1476439))

(declare-fun m!1477143 () Bool)

(assert (=> b!1321083 m!1477143))

(declare-fun m!1477145 () Bool)

(assert (=> d!373183 m!1477145))

(declare-fun m!1477147 () Bool)

(assert (=> d!373183 m!1477147))

(declare-fun m!1477149 () Bool)

(assert (=> b!1321084 m!1477149))

(declare-fun m!1477151 () Bool)

(assert (=> b!1321084 m!1477151))

(declare-fun m!1477153 () Bool)

(assert (=> b!1321085 m!1477153))

(assert (=> b!1321085 m!1476437))

(assert (=> b!1321085 m!1476437))

(assert (=> b!1321085 m!1476439))

(assert (=> b!1320525 d!373183))

(declare-fun d!373231 () Bool)

(declare-fun lt!436098 () BalanceConc!8732)

(declare-fun printList!564 (LexerInterface!2008 List!13437) List!13434)

(assert (=> d!373231 (= (list!5046 lt!436098) (printList!564 thiss!19762 (list!5047 (singletonSeq!896 t2!34))))))

(declare-fun printTailRec!546 (LexerInterface!2008 BalanceConc!8734 Int BalanceConc!8732) BalanceConc!8732)

(assert (=> d!373231 (= lt!436098 (printTailRec!546 thiss!19762 (singletonSeq!896 t2!34) 0 (BalanceConc!8733 Empty!4396)))))

(assert (=> d!373231 (= (print!782 thiss!19762 (singletonSeq!896 t2!34)) lt!436098)))

(declare-fun bs!331070 () Bool)

(assert (= bs!331070 d!373231))

(declare-fun m!1477155 () Bool)

(assert (=> bs!331070 m!1477155))

(assert (=> bs!331070 m!1476445))

(declare-fun m!1477157 () Bool)

(assert (=> bs!331070 m!1477157))

(assert (=> bs!331070 m!1477157))

(declare-fun m!1477159 () Bool)

(assert (=> bs!331070 m!1477159))

(assert (=> bs!331070 m!1476445))

(declare-fun m!1477161 () Bool)

(assert (=> bs!331070 m!1477161))

(assert (=> b!1320525 d!373231))

(declare-fun d!373233 () Bool)

(declare-fun e!846603 () Bool)

(assert (=> d!373233 e!846603))

(declare-fun res!593757 () Bool)

(assert (=> d!373233 (=> (not res!593757) (not e!846603))))

(declare-fun lt!436101 () BalanceConc!8734)

(assert (=> d!373233 (= res!593757 (= (list!5047 lt!436101) (Cons!13371 t2!34 Nil!13371)))))

(declare-fun singleton!390 (Token!4288) BalanceConc!8734)

(assert (=> d!373233 (= lt!436101 (singleton!390 t2!34))))

(assert (=> d!373233 (= (singletonSeq!896 t2!34) lt!436101)))

(declare-fun b!1321090 () Bool)

(declare-fun isBalanced!1284 (Conc!4397) Bool)

(assert (=> b!1321090 (= e!846603 (isBalanced!1284 (c!216816 lt!436101)))))

(assert (= (and d!373233 res!593757) b!1321090))

(declare-fun m!1477163 () Bool)

(assert (=> d!373233 m!1477163))

(declare-fun m!1477165 () Bool)

(assert (=> d!373233 m!1477165))

(declare-fun m!1477167 () Bool)

(assert (=> b!1321090 m!1477167))

(assert (=> b!1320525 d!373233))

(declare-fun b!1321091 () Bool)

(declare-fun e!846604 () Bool)

(declare-fun e!846605 () Bool)

(assert (=> b!1321091 (= e!846604 e!846605)))

(declare-fun c!216923 () Bool)

(assert (=> b!1321091 (= c!216923 ((_ is IntegerValue!7210) (value!75553 t2!34)))))

(declare-fun d!373235 () Bool)

(declare-fun c!216924 () Bool)

(assert (=> d!373235 (= c!216924 ((_ is IntegerValue!7209) (value!75553 t2!34)))))

(assert (=> d!373235 (= (inv!21 (value!75553 t2!34)) e!846604)))

(declare-fun b!1321092 () Bool)

(assert (=> b!1321092 (= e!846604 (inv!16 (value!75553 t2!34)))))

(declare-fun b!1321093 () Bool)

(assert (=> b!1321093 (= e!846605 (inv!17 (value!75553 t2!34)))))

(declare-fun b!1321094 () Bool)

(declare-fun e!846606 () Bool)

(assert (=> b!1321094 (= e!846606 (inv!15 (value!75553 t2!34)))))

(declare-fun b!1321095 () Bool)

(declare-fun res!593758 () Bool)

(assert (=> b!1321095 (=> res!593758 e!846606)))

(assert (=> b!1321095 (= res!593758 (not ((_ is IntegerValue!7211) (value!75553 t2!34))))))

(assert (=> b!1321095 (= e!846605 e!846606)))

(assert (= (and d!373235 c!216924) b!1321092))

(assert (= (and d!373235 (not c!216924)) b!1321091))

(assert (= (and b!1321091 c!216923) b!1321093))

(assert (= (and b!1321091 (not c!216923)) b!1321095))

(assert (= (and b!1321095 (not res!593758)) b!1321094))

(declare-fun m!1477169 () Bool)

(assert (=> b!1321092 m!1477169))

(declare-fun m!1477171 () Bool)

(assert (=> b!1321093 m!1477171))

(declare-fun m!1477173 () Bool)

(assert (=> b!1321094 m!1477173))

(assert (=> b!1320504 d!373235))

(declare-fun d!373237 () Bool)

(declare-fun lt!436102 () Bool)

(assert (=> d!373237 (= lt!436102 (select (content!1888 lt!435905) lt!435902))))

(declare-fun e!846607 () Bool)

(assert (=> d!373237 (= lt!436102 e!846607)))

(declare-fun res!593760 () Bool)

(assert (=> d!373237 (=> (not res!593760) (not e!846607))))

(assert (=> d!373237 (= res!593760 ((_ is Cons!13368) lt!435905))))

(assert (=> d!373237 (= (contains!2355 lt!435905 lt!435902) lt!436102)))

(declare-fun b!1321096 () Bool)

(declare-fun e!846608 () Bool)

(assert (=> b!1321096 (= e!846607 e!846608)))

(declare-fun res!593759 () Bool)

(assert (=> b!1321096 (=> res!593759 e!846608)))

(assert (=> b!1321096 (= res!593759 (= (h!18769 lt!435905) lt!435902))))

(declare-fun b!1321097 () Bool)

(assert (=> b!1321097 (= e!846608 (contains!2355 (t!118591 lt!435905) lt!435902))))

(assert (= (and d!373237 res!593760) b!1321096))

(assert (= (and b!1321096 (not res!593759)) b!1321097))

(declare-fun m!1477175 () Bool)

(assert (=> d!373237 m!1477175))

(declare-fun m!1477177 () Bool)

(assert (=> d!373237 m!1477177))

(declare-fun m!1477179 () Bool)

(assert (=> b!1321097 m!1477179))

(assert (=> b!1320505 d!373237))

(declare-fun d!373239 () Bool)

(declare-fun lt!436103 () C!7544)

(assert (=> d!373239 (= lt!436103 (apply!3064 (list!5046 lt!435907) 0))))

(assert (=> d!373239 (= lt!436103 (apply!3065 (c!216814 lt!435907) 0))))

(declare-fun e!846609 () Bool)

(assert (=> d!373239 e!846609))

(declare-fun res!593761 () Bool)

(assert (=> d!373239 (=> (not res!593761) (not e!846609))))

(assert (=> d!373239 (= res!593761 (<= 0 0))))

(assert (=> d!373239 (= (apply!3059 lt!435907 0) lt!436103)))

(declare-fun b!1321098 () Bool)

(assert (=> b!1321098 (= e!846609 (< 0 (size!10884 lt!435907)))))

(assert (= (and d!373239 res!593761) b!1321098))

(assert (=> d!373239 m!1476359))

(assert (=> d!373239 m!1476359))

(declare-fun m!1477181 () Bool)

(assert (=> d!373239 m!1477181))

(declare-fun m!1477183 () Bool)

(assert (=> d!373239 m!1477183))

(assert (=> b!1321098 m!1476401))

(assert (=> b!1320505 d!373239))

(declare-fun b!1321099 () Bool)

(declare-fun e!846610 () List!13434)

(assert (=> b!1321099 (= e!846610 (getSuffix!483 lt!435901 lt!435905))))

(declare-fun d!373241 () Bool)

(declare-fun e!846611 () Bool)

(assert (=> d!373241 e!846611))

(declare-fun res!593763 () Bool)

(assert (=> d!373241 (=> (not res!593763) (not e!846611))))

(declare-fun lt!436104 () List!13434)

(assert (=> d!373241 (= res!593763 (= (content!1888 lt!436104) ((_ map or) (content!1888 lt!435905) (content!1888 (getSuffix!483 lt!435901 lt!435905)))))))

(assert (=> d!373241 (= lt!436104 e!846610)))

(declare-fun c!216925 () Bool)

(assert (=> d!373241 (= c!216925 ((_ is Nil!13368) lt!435905))))

(assert (=> d!373241 (= (++!3414 lt!435905 (getSuffix!483 lt!435901 lt!435905)) lt!436104)))

(declare-fun b!1321101 () Bool)

(declare-fun res!593762 () Bool)

(assert (=> b!1321101 (=> (not res!593762) (not e!846611))))

(assert (=> b!1321101 (= res!593762 (= (size!10891 lt!436104) (+ (size!10891 lt!435905) (size!10891 (getSuffix!483 lt!435901 lt!435905)))))))

(declare-fun b!1321102 () Bool)

(assert (=> b!1321102 (= e!846611 (or (not (= (getSuffix!483 lt!435901 lt!435905) Nil!13368)) (= lt!436104 lt!435905)))))

(declare-fun b!1321100 () Bool)

(assert (=> b!1321100 (= e!846610 (Cons!13368 (h!18769 lt!435905) (++!3414 (t!118591 lt!435905) (getSuffix!483 lt!435901 lt!435905))))))

(assert (= (and d!373241 c!216925) b!1321099))

(assert (= (and d!373241 (not c!216925)) b!1321100))

(assert (= (and d!373241 res!593763) b!1321101))

(assert (= (and b!1321101 res!593762) b!1321102))

(declare-fun m!1477185 () Bool)

(assert (=> d!373241 m!1477185))

(assert (=> d!373241 m!1477175))

(assert (=> d!373241 m!1476389))

(declare-fun m!1477187 () Bool)

(assert (=> d!373241 m!1477187))

(declare-fun m!1477189 () Bool)

(assert (=> b!1321101 m!1477189))

(declare-fun m!1477191 () Bool)

(assert (=> b!1321101 m!1477191))

(assert (=> b!1321101 m!1476389))

(declare-fun m!1477193 () Bool)

(assert (=> b!1321101 m!1477193))

(assert (=> b!1321100 m!1476389))

(declare-fun m!1477195 () Bool)

(assert (=> b!1321100 m!1477195))

(assert (=> b!1320526 d!373241))

(declare-fun d!373243 () Bool)

(declare-fun lt!436107 () List!13434)

(assert (=> d!373243 (= (++!3414 lt!435905 lt!436107) lt!435901)))

(declare-fun e!846614 () List!13434)

(assert (=> d!373243 (= lt!436107 e!846614)))

(declare-fun c!216928 () Bool)

(assert (=> d!373243 (= c!216928 ((_ is Cons!13368) lt!435905))))

(assert (=> d!373243 (>= (size!10891 lt!435901) (size!10891 lt!435905))))

(assert (=> d!373243 (= (getSuffix!483 lt!435901 lt!435905) lt!436107)))

(declare-fun b!1321107 () Bool)

(assert (=> b!1321107 (= e!846614 (getSuffix!483 (tail!1896 lt!435901) (t!118591 lt!435905)))))

(declare-fun b!1321108 () Bool)

(assert (=> b!1321108 (= e!846614 lt!435901)))

(assert (= (and d!373243 c!216928) b!1321107))

(assert (= (and d!373243 (not c!216928)) b!1321108))

(declare-fun m!1477197 () Bool)

(assert (=> d!373243 m!1477197))

(declare-fun m!1477199 () Bool)

(assert (=> d!373243 m!1477199))

(assert (=> d!373243 m!1477191))

(declare-fun m!1477201 () Bool)

(assert (=> b!1321107 m!1477201))

(assert (=> b!1321107 m!1477201))

(declare-fun m!1477203 () Bool)

(assert (=> b!1321107 m!1477203))

(assert (=> b!1320526 d!373243))

(declare-fun d!373245 () Bool)

(declare-fun lt!436110 () List!13434)

(declare-fun dynLambda!5874 (Int List!13434) Bool)

(assert (=> d!373245 (dynLambda!5874 lambda!53913 lt!436110)))

(declare-fun choose!8082 (Int) List!13434)

(assert (=> d!373245 (= lt!436110 (choose!8082 lambda!53913))))

(assert (=> d!373245 (Exists!785 lambda!53913)))

(assert (=> d!373245 (= (pickWitness!90 lambda!53913) lt!436110)))

(declare-fun b_lambda!38555 () Bool)

(assert (=> (not b_lambda!38555) (not d!373245)))

(declare-fun bs!331071 () Bool)

(assert (= bs!331071 d!373245))

(declare-fun m!1477205 () Bool)

(assert (=> bs!331071 m!1477205))

(declare-fun m!1477207 () Bool)

(assert (=> bs!331071 m!1477207))

(assert (=> bs!331071 m!1476337))

(assert (=> b!1320526 d!373245))

(declare-fun d!373247 () Bool)

(declare-fun lt!436113 () Bool)

(declare-fun content!1889 (List!13438) (InoxSet Regex!3627))

(assert (=> d!373247 (= lt!436113 (select (content!1889 (map!2936 rules!2550 lambda!53914)) lt!435906))))

(declare-fun e!846619 () Bool)

(assert (=> d!373247 (= lt!436113 e!846619)))

(declare-fun res!593769 () Bool)

(assert (=> d!373247 (=> (not res!593769) (not e!846619))))

(assert (=> d!373247 (= res!593769 ((_ is Cons!13372) (map!2936 rules!2550 lambda!53914)))))

(assert (=> d!373247 (= (contains!2357 (map!2936 rules!2550 lambda!53914) lt!435906) lt!436113)))

(declare-fun b!1321113 () Bool)

(declare-fun e!846620 () Bool)

(assert (=> b!1321113 (= e!846619 e!846620)))

(declare-fun res!593768 () Bool)

(assert (=> b!1321113 (=> res!593768 e!846620)))

(assert (=> b!1321113 (= res!593768 (= (h!18773 (map!2936 rules!2550 lambda!53914)) lt!435906))))

(declare-fun b!1321114 () Bool)

(assert (=> b!1321114 (= e!846620 (contains!2357 (t!118595 (map!2936 rules!2550 lambda!53914)) lt!435906))))

(assert (= (and d!373247 res!593769) b!1321113))

(assert (= (and b!1321113 (not res!593768)) b!1321114))

(assert (=> d!373247 m!1476409))

(declare-fun m!1477209 () Bool)

(assert (=> d!373247 m!1477209))

(declare-fun m!1477211 () Bool)

(assert (=> d!373247 m!1477211))

(declare-fun m!1477213 () Bool)

(assert (=> b!1321114 m!1477213))

(assert (=> b!1320527 d!373247))

(declare-fun d!373249 () Bool)

(declare-fun lt!436116 () List!13438)

(declare-fun size!10895 (List!13438) Int)

(declare-fun size!10896 (List!13436) Int)

(assert (=> d!373249 (= (size!10895 lt!436116) (size!10896 rules!2550))))

(declare-fun e!846623 () List!13438)

(assert (=> d!373249 (= lt!436116 e!846623)))

(declare-fun c!216931 () Bool)

(assert (=> d!373249 (= c!216931 ((_ is Nil!13370) rules!2550))))

(assert (=> d!373249 (= (map!2936 rules!2550 lambda!53914) lt!436116)))

(declare-fun b!1321119 () Bool)

(assert (=> b!1321119 (= e!846623 Nil!13372)))

(declare-fun b!1321120 () Bool)

(declare-fun $colon$colon!155 (List!13438 Regex!3627) List!13438)

(declare-fun dynLambda!5875 (Int Rule!4426) Regex!3627)

(assert (=> b!1321120 (= e!846623 ($colon$colon!155 (map!2936 (t!118593 rules!2550) lambda!53914) (dynLambda!5875 lambda!53914 (h!18771 rules!2550))))))

(assert (= (and d!373249 c!216931) b!1321119))

(assert (= (and d!373249 (not c!216931)) b!1321120))

(declare-fun b_lambda!38557 () Bool)

(assert (=> (not b_lambda!38557) (not b!1321120)))

(declare-fun m!1477215 () Bool)

(assert (=> d!373249 m!1477215))

(declare-fun m!1477217 () Bool)

(assert (=> d!373249 m!1477217))

(declare-fun m!1477219 () Bool)

(assert (=> b!1321120 m!1477219))

(declare-fun m!1477221 () Bool)

(assert (=> b!1321120 m!1477221))

(assert (=> b!1321120 m!1477219))

(assert (=> b!1321120 m!1477221))

(declare-fun m!1477223 () Bool)

(assert (=> b!1321120 m!1477223))

(assert (=> b!1320527 d!373249))

(declare-fun b!1321133 () Bool)

(declare-fun e!846632 () Regex!3627)

(assert (=> b!1321133 (= e!846632 (h!18773 (map!2936 rules!2550 lambda!53914)))))

(declare-fun d!373251 () Bool)

(declare-fun e!846633 () Bool)

(assert (=> d!373251 e!846633))

(declare-fun res!593774 () Bool)

(assert (=> d!373251 (=> (not res!593774) (not e!846633))))

(declare-fun lt!436122 () Regex!3627)

(declare-fun dynLambda!5876 (Int Regex!3627) Bool)

(assert (=> d!373251 (= res!593774 (dynLambda!5876 lambda!53915 lt!436122))))

(assert (=> d!373251 (= lt!436122 e!846632)))

(declare-fun c!216936 () Bool)

(declare-fun e!846634 () Bool)

(assert (=> d!373251 (= c!216936 e!846634)))

(declare-fun res!593775 () Bool)

(assert (=> d!373251 (=> (not res!593775) (not e!846634))))

(assert (=> d!373251 (= res!593775 ((_ is Cons!13372) (map!2936 rules!2550 lambda!53914)))))

(assert (=> d!373251 (exists!329 (map!2936 rules!2550 lambda!53914) lambda!53915)))

(assert (=> d!373251 (= (getWitness!220 (map!2936 rules!2550 lambda!53914) lambda!53915) lt!436122)))

(declare-fun b!1321134 () Bool)

(assert (=> b!1321134 (= e!846633 (contains!2357 (map!2936 rules!2550 lambda!53914) lt!436122))))

(declare-fun e!846635 () Regex!3627)

(declare-fun b!1321135 () Bool)

(assert (=> b!1321135 (= e!846635 (getWitness!220 (t!118595 (map!2936 rules!2550 lambda!53914)) lambda!53915))))

(declare-fun b!1321136 () Bool)

(assert (=> b!1321136 (= e!846632 e!846635)))

(declare-fun c!216937 () Bool)

(assert (=> b!1321136 (= c!216937 ((_ is Cons!13372) (map!2936 rules!2550 lambda!53914)))))

(declare-fun b!1321137 () Bool)

(declare-fun lt!436121 () Unit!19448)

(declare-fun Unit!19452 () Unit!19448)

(assert (=> b!1321137 (= lt!436121 Unit!19452)))

(assert (=> b!1321137 false))

(declare-fun head!2291 (List!13438) Regex!3627)

(assert (=> b!1321137 (= e!846635 (head!2291 (map!2936 rules!2550 lambda!53914)))))

(declare-fun b!1321138 () Bool)

(assert (=> b!1321138 (= e!846634 (dynLambda!5876 lambda!53915 (h!18773 (map!2936 rules!2550 lambda!53914))))))

(assert (= (and d!373251 res!593775) b!1321138))

(assert (= (and d!373251 c!216936) b!1321133))

(assert (= (and d!373251 (not c!216936)) b!1321136))

(assert (= (and b!1321136 c!216937) b!1321135))

(assert (= (and b!1321136 (not c!216937)) b!1321137))

(assert (= (and d!373251 res!593774) b!1321134))

(declare-fun b_lambda!38559 () Bool)

(assert (=> (not b_lambda!38559) (not d!373251)))

(declare-fun b_lambda!38561 () Bool)

(assert (=> (not b_lambda!38561) (not b!1321138)))

(assert (=> b!1321134 m!1476409))

(declare-fun m!1477225 () Bool)

(assert (=> b!1321134 m!1477225))

(declare-fun m!1477227 () Bool)

(assert (=> b!1321135 m!1477227))

(declare-fun m!1477229 () Bool)

(assert (=> b!1321138 m!1477229))

(assert (=> b!1321137 m!1476409))

(declare-fun m!1477231 () Bool)

(assert (=> b!1321137 m!1477231))

(declare-fun m!1477233 () Bool)

(assert (=> d!373251 m!1477233))

(assert (=> d!373251 m!1476409))

(assert (=> d!373251 m!1476435))

(assert (=> b!1320527 d!373251))

(declare-fun d!373253 () Bool)

(declare-fun lt!436123 () Bool)

(assert (=> d!373253 (= lt!436123 (select (content!1888 lt!435905) lt!435893))))

(declare-fun e!846636 () Bool)

(assert (=> d!373253 (= lt!436123 e!846636)))

(declare-fun res!593777 () Bool)

(assert (=> d!373253 (=> (not res!593777) (not e!846636))))

(assert (=> d!373253 (= res!593777 ((_ is Cons!13368) lt!435905))))

(assert (=> d!373253 (= (contains!2355 lt!435905 lt!435893) lt!436123)))

(declare-fun b!1321139 () Bool)

(declare-fun e!846637 () Bool)

(assert (=> b!1321139 (= e!846636 e!846637)))

(declare-fun res!593776 () Bool)

(assert (=> b!1321139 (=> res!593776 e!846637)))

(assert (=> b!1321139 (= res!593776 (= (h!18769 lt!435905) lt!435893))))

(declare-fun b!1321140 () Bool)

(assert (=> b!1321140 (= e!846637 (contains!2355 (t!118591 lt!435905) lt!435893))))

(assert (= (and d!373253 res!593777) b!1321139))

(assert (= (and b!1321139 (not res!593776)) b!1321140))

(assert (=> d!373253 m!1477175))

(declare-fun m!1477235 () Bool)

(assert (=> d!373253 m!1477235))

(declare-fun m!1477237 () Bool)

(assert (=> b!1321140 m!1477237))

(assert (=> b!1320506 d!373253))

(declare-fun d!373255 () Bool)

(assert (=> d!373255 (= (inv!17745 (tag!2575 (rule!4058 t1!34))) (= (mod (str.len (value!75552 (tag!2575 (rule!4058 t1!34)))) 2) 0))))

(assert (=> b!1320528 d!373255))

(declare-fun d!373257 () Bool)

(declare-fun res!593780 () Bool)

(declare-fun e!846640 () Bool)

(assert (=> d!373257 (=> (not res!593780) (not e!846640))))

(declare-fun semiInverseModEq!872 (Int Int) Bool)

(assert (=> d!373257 (= res!593780 (semiInverseModEq!872 (toChars!3403 (transformation!2313 (rule!4058 t1!34))) (toValue!3544 (transformation!2313 (rule!4058 t1!34)))))))

(assert (=> d!373257 (= (inv!17748 (transformation!2313 (rule!4058 t1!34))) e!846640)))

(declare-fun b!1321143 () Bool)

(declare-fun equivClasses!831 (Int Int) Bool)

(assert (=> b!1321143 (= e!846640 (equivClasses!831 (toChars!3403 (transformation!2313 (rule!4058 t1!34))) (toValue!3544 (transformation!2313 (rule!4058 t1!34)))))))

(assert (= (and d!373257 res!593780) b!1321143))

(declare-fun m!1477239 () Bool)

(assert (=> d!373257 m!1477239))

(declare-fun m!1477241 () Bool)

(assert (=> b!1321143 m!1477241))

(assert (=> b!1320528 d!373257))

(declare-fun d!373259 () Bool)

(declare-fun lt!436124 () Bool)

(assert (=> d!373259 (= lt!436124 (select (content!1887 rules!2550) lt!435892))))

(declare-fun e!846641 () Bool)

(assert (=> d!373259 (= lt!436124 e!846641)))

(declare-fun res!593781 () Bool)

(assert (=> d!373259 (=> (not res!593781) (not e!846641))))

(assert (=> d!373259 (= res!593781 ((_ is Cons!13370) rules!2550))))

(assert (=> d!373259 (= (contains!2356 rules!2550 lt!435892) lt!436124)))

(declare-fun b!1321144 () Bool)

(declare-fun e!846642 () Bool)

(assert (=> b!1321144 (= e!846641 e!846642)))

(declare-fun res!593782 () Bool)

(assert (=> b!1321144 (=> res!593782 e!846642)))

(assert (=> b!1321144 (= res!593782 (= (h!18771 rules!2550) lt!435892))))

(declare-fun b!1321145 () Bool)

(assert (=> b!1321145 (= e!846642 (contains!2356 (t!118593 rules!2550) lt!435892))))

(assert (= (and d!373259 res!593781) b!1321144))

(assert (= (and b!1321144 (not res!593782)) b!1321145))

(assert (=> d!373259 m!1476659))

(declare-fun m!1477243 () Bool)

(assert (=> d!373259 m!1477243))

(declare-fun m!1477245 () Bool)

(assert (=> b!1321145 m!1477245))

(assert (=> b!1320529 d!373259))

(declare-fun b!1321174 () Bool)

(declare-fun e!846657 () Bool)

(declare-fun lt!436127 () Bool)

(declare-fun call!89696 () Bool)

(assert (=> b!1321174 (= e!846657 (= lt!436127 call!89696))))

(declare-fun b!1321175 () Bool)

(declare-fun e!846659 () Bool)

(declare-fun e!846658 () Bool)

(assert (=> b!1321175 (= e!846659 e!846658)))

(declare-fun res!593806 () Bool)

(assert (=> b!1321175 (=> (not res!593806) (not e!846658))))

(assert (=> b!1321175 (= res!593806 (not lt!436127))))

(declare-fun b!1321176 () Bool)

(declare-fun e!846660 () Bool)

(assert (=> b!1321176 (= e!846660 (matchR!1629 (derivativeStep!903 (regex!2313 (rule!4058 t2!34)) (head!2289 lt!435886)) (tail!1896 lt!435886)))))

(declare-fun b!1321177 () Bool)

(declare-fun res!593804 () Bool)

(declare-fun e!846663 () Bool)

(assert (=> b!1321177 (=> (not res!593804) (not e!846663))))

(assert (=> b!1321177 (= res!593804 (not call!89696))))

(declare-fun d!373261 () Bool)

(assert (=> d!373261 e!846657))

(declare-fun c!216946 () Bool)

(assert (=> d!373261 (= c!216946 ((_ is EmptyExpr!3627) (regex!2313 (rule!4058 t2!34))))))

(assert (=> d!373261 (= lt!436127 e!846660)))

(declare-fun c!216944 () Bool)

(assert (=> d!373261 (= c!216944 (isEmpty!7948 lt!435886))))

(assert (=> d!373261 (validRegex!1553 (regex!2313 (rule!4058 t2!34)))))

(assert (=> d!373261 (= (matchR!1629 (regex!2313 (rule!4058 t2!34)) lt!435886) lt!436127)))

(declare-fun b!1321178 () Bool)

(declare-fun res!593803 () Bool)

(assert (=> b!1321178 (=> res!593803 e!846659)))

(assert (=> b!1321178 (= res!593803 e!846663)))

(declare-fun res!593805 () Bool)

(assert (=> b!1321178 (=> (not res!593805) (not e!846663))))

(assert (=> b!1321178 (= res!593805 lt!436127)))

(declare-fun b!1321179 () Bool)

(declare-fun e!846661 () Bool)

(assert (=> b!1321179 (= e!846661 (not (= (head!2289 lt!435886) (c!216815 (regex!2313 (rule!4058 t2!34))))))))

(declare-fun b!1321180 () Bool)

(declare-fun res!593801 () Bool)

(assert (=> b!1321180 (=> res!593801 e!846659)))

(assert (=> b!1321180 (= res!593801 (not ((_ is ElementMatch!3627) (regex!2313 (rule!4058 t2!34)))))))

(declare-fun e!846662 () Bool)

(assert (=> b!1321180 (= e!846662 e!846659)))

(declare-fun b!1321181 () Bool)

(assert (=> b!1321181 (= e!846658 e!846661)))

(declare-fun res!593799 () Bool)

(assert (=> b!1321181 (=> res!593799 e!846661)))

(assert (=> b!1321181 (= res!593799 call!89696)))

(declare-fun b!1321182 () Bool)

(declare-fun res!593800 () Bool)

(assert (=> b!1321182 (=> (not res!593800) (not e!846663))))

(assert (=> b!1321182 (= res!593800 (isEmpty!7948 (tail!1896 lt!435886)))))

(declare-fun b!1321183 () Bool)

(declare-fun nullable!1151 (Regex!3627) Bool)

(assert (=> b!1321183 (= e!846660 (nullable!1151 (regex!2313 (rule!4058 t2!34))))))

(declare-fun b!1321184 () Bool)

(declare-fun res!593802 () Bool)

(assert (=> b!1321184 (=> res!593802 e!846661)))

(assert (=> b!1321184 (= res!593802 (not (isEmpty!7948 (tail!1896 lt!435886))))))

(declare-fun bm!89691 () Bool)

(assert (=> bm!89691 (= call!89696 (isEmpty!7948 lt!435886))))

(declare-fun b!1321185 () Bool)

(assert (=> b!1321185 (= e!846657 e!846662)))

(declare-fun c!216945 () Bool)

(assert (=> b!1321185 (= c!216945 ((_ is EmptyLang!3627) (regex!2313 (rule!4058 t2!34))))))

(declare-fun b!1321186 () Bool)

(assert (=> b!1321186 (= e!846663 (= (head!2289 lt!435886) (c!216815 (regex!2313 (rule!4058 t2!34)))))))

(declare-fun b!1321187 () Bool)

(assert (=> b!1321187 (= e!846662 (not lt!436127))))

(assert (= (and d!373261 c!216944) b!1321183))

(assert (= (and d!373261 (not c!216944)) b!1321176))

(assert (= (and d!373261 c!216946) b!1321174))

(assert (= (and d!373261 (not c!216946)) b!1321185))

(assert (= (and b!1321185 c!216945) b!1321187))

(assert (= (and b!1321185 (not c!216945)) b!1321180))

(assert (= (and b!1321180 (not res!593801)) b!1321178))

(assert (= (and b!1321178 res!593805) b!1321177))

(assert (= (and b!1321177 res!593804) b!1321182))

(assert (= (and b!1321182 res!593800) b!1321186))

(assert (= (and b!1321178 (not res!593803)) b!1321175))

(assert (= (and b!1321175 res!593806) b!1321181))

(assert (= (and b!1321181 (not res!593799)) b!1321184))

(assert (= (and b!1321184 (not res!593802)) b!1321179))

(assert (= (or b!1321174 b!1321177 b!1321181) bm!89691))

(declare-fun m!1477247 () Bool)

(assert (=> b!1321182 m!1477247))

(assert (=> b!1321182 m!1477247))

(declare-fun m!1477249 () Bool)

(assert (=> b!1321182 m!1477249))

(declare-fun m!1477251 () Bool)

(assert (=> d!373261 m!1477251))

(declare-fun m!1477253 () Bool)

(assert (=> d!373261 m!1477253))

(assert (=> bm!89691 m!1477251))

(declare-fun m!1477255 () Bool)

(assert (=> b!1321179 m!1477255))

(declare-fun m!1477257 () Bool)

(assert (=> b!1321183 m!1477257))

(assert (=> b!1321184 m!1477247))

(assert (=> b!1321184 m!1477247))

(assert (=> b!1321184 m!1477249))

(assert (=> b!1321176 m!1477255))

(assert (=> b!1321176 m!1477255))

(declare-fun m!1477259 () Bool)

(assert (=> b!1321176 m!1477259))

(assert (=> b!1321176 m!1477247))

(assert (=> b!1321176 m!1477259))

(assert (=> b!1321176 m!1477247))

(declare-fun m!1477261 () Bool)

(assert (=> b!1321176 m!1477261))

(assert (=> b!1321186 m!1477255))

(assert (=> b!1320508 d!373261))

(declare-fun d!373263 () Bool)

(declare-fun lt!436129 () Bool)

(declare-fun e!846664 () Bool)

(assert (=> d!373263 (= lt!436129 e!846664)))

(declare-fun res!593807 () Bool)

(assert (=> d!373263 (=> (not res!593807) (not e!846664))))

(assert (=> d!373263 (= res!593807 (= (list!5047 (_1!7386 (lex!843 thiss!19762 rules!2550 (print!782 thiss!19762 (singletonSeq!896 t2!34))))) (list!5047 (singletonSeq!896 t2!34))))))

(declare-fun e!846665 () Bool)

(assert (=> d!373263 (= lt!436129 e!846665)))

(declare-fun res!593808 () Bool)

(assert (=> d!373263 (=> (not res!593808) (not e!846665))))

(declare-fun lt!436128 () tuple2!13000)

(assert (=> d!373263 (= res!593808 (= (size!10894 (_1!7386 lt!436128)) 1))))

(assert (=> d!373263 (= lt!436128 (lex!843 thiss!19762 rules!2550 (print!782 thiss!19762 (singletonSeq!896 t2!34))))))

(assert (=> d!373263 (not (isEmpty!7943 rules!2550))))

(assert (=> d!373263 (= (rulesProduceIndividualToken!977 thiss!19762 rules!2550 t2!34) lt!436129)))

(declare-fun b!1321188 () Bool)

(declare-fun res!593809 () Bool)

(assert (=> b!1321188 (=> (not res!593809) (not e!846665))))

(assert (=> b!1321188 (= res!593809 (= (apply!3066 (_1!7386 lt!436128) 0) t2!34))))

(declare-fun b!1321189 () Bool)

(assert (=> b!1321189 (= e!846665 (isEmpty!7942 (_2!7386 lt!436128)))))

(declare-fun b!1321190 () Bool)

(assert (=> b!1321190 (= e!846664 (isEmpty!7942 (_2!7386 (lex!843 thiss!19762 rules!2550 (print!782 thiss!19762 (singletonSeq!896 t2!34))))))))

(assert (= (and d!373263 res!593808) b!1321188))

(assert (= (and b!1321188 res!593809) b!1321189))

(assert (= (and d!373263 res!593807) b!1321190))

(assert (=> d!373263 m!1476445))

(assert (=> d!373263 m!1476447))

(assert (=> d!373263 m!1476445))

(assert (=> d!373263 m!1476445))

(assert (=> d!373263 m!1477157))

(assert (=> d!373263 m!1476447))

(declare-fun m!1477263 () Bool)

(assert (=> d!373263 m!1477263))

(assert (=> d!373263 m!1476355))

(declare-fun m!1477265 () Bool)

(assert (=> d!373263 m!1477265))

(declare-fun m!1477267 () Bool)

(assert (=> d!373263 m!1477267))

(declare-fun m!1477269 () Bool)

(assert (=> b!1321188 m!1477269))

(declare-fun m!1477271 () Bool)

(assert (=> b!1321189 m!1477271))

(assert (=> b!1321190 m!1476445))

(assert (=> b!1321190 m!1476445))

(assert (=> b!1321190 m!1476447))

(assert (=> b!1321190 m!1476447))

(assert (=> b!1321190 m!1477263))

(declare-fun m!1477273 () Bool)

(assert (=> b!1321190 m!1477273))

(assert (=> b!1320509 d!373263))

(declare-fun d!373265 () Bool)

(declare-fun prefixMatchZipperSequence!184 (Regex!3627 BalanceConc!8732) Bool)

(declare-fun ++!3416 (BalanceConc!8732 BalanceConc!8732) BalanceConc!8732)

(declare-fun singletonSeq!898 (C!7544) BalanceConc!8732)

(assert (=> d!373265 (= (separableTokensPredicate!291 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!184 (rulesRegex!198 thiss!19762 rules!2550) (++!3416 (charsOf!1285 t1!34) (singletonSeq!898 (apply!3059 (charsOf!1285 t2!34) 0))))))))

(declare-fun bs!331072 () Bool)

(assert (= bs!331072 d!373265))

(assert (=> bs!331072 m!1476385))

(assert (=> bs!331072 m!1476365))

(declare-fun m!1477275 () Bool)

(assert (=> bs!331072 m!1477275))

(declare-fun m!1477277 () Bool)

(assert (=> bs!331072 m!1477277))

(assert (=> bs!331072 m!1476361))

(assert (=> bs!331072 m!1476361))

(declare-fun m!1477279 () Bool)

(assert (=> bs!331072 m!1477279))

(assert (=> bs!331072 m!1477275))

(assert (=> bs!331072 m!1476385))

(declare-fun m!1477281 () Bool)

(assert (=> bs!331072 m!1477281))

(assert (=> bs!331072 m!1476365))

(assert (=> bs!331072 m!1477281))

(assert (=> bs!331072 m!1477279))

(assert (=> b!1320530 d!373265))

(declare-fun d!373267 () Bool)

(declare-fun e!846667 () Bool)

(assert (=> d!373267 e!846667))

(declare-fun res!593813 () Bool)

(assert (=> d!373267 (=> res!593813 e!846667)))

(declare-fun lt!436134 () Option!2584)

(assert (=> d!373267 (= res!593813 (isEmpty!7949 lt!436134))))

(declare-fun e!846666 () Option!2584)

(assert (=> d!373267 (= lt!436134 e!846666)))

(declare-fun c!216947 () Bool)

(assert (=> d!373267 (= c!216947 (and ((_ is Cons!13370) rules!2550) ((_ is Nil!13370) (t!118593 rules!2550))))))

(declare-fun lt!436133 () Unit!19448)

(declare-fun lt!436131 () Unit!19448)

(assert (=> d!373267 (= lt!436133 lt!436131)))

(assert (=> d!373267 (isPrefix!1078 lt!435886 lt!435886)))

(assert (=> d!373267 (= lt!436131 (lemmaIsPrefixRefl!757 lt!435886 lt!435886))))

(assert (=> d!373267 (rulesValidInductive!730 thiss!19762 rules!2550)))

(assert (=> d!373267 (= (maxPrefix!1018 thiss!19762 rules!2550 lt!435886) lt!436134)))

(declare-fun bm!89692 () Bool)

(declare-fun call!89697 () Option!2584)

(assert (=> bm!89692 (= call!89697 (maxPrefixOneRule!583 thiss!19762 (h!18771 rules!2550) lt!435886))))

(declare-fun b!1321191 () Bool)

(declare-fun res!593815 () Bool)

(declare-fun e!846668 () Bool)

(assert (=> b!1321191 (=> (not res!593815) (not e!846668))))

(assert (=> b!1321191 (= res!593815 (= (list!5046 (charsOf!1285 (_1!7385 (get!4263 lt!436134)))) (originalCharacters!3175 (_1!7385 (get!4263 lt!436134)))))))

(declare-fun b!1321192 () Bool)

(declare-fun res!593811 () Bool)

(assert (=> b!1321192 (=> (not res!593811) (not e!846668))))

(assert (=> b!1321192 (= res!593811 (= (++!3414 (list!5046 (charsOf!1285 (_1!7385 (get!4263 lt!436134)))) (_2!7385 (get!4263 lt!436134))) lt!435886))))

(declare-fun b!1321193 () Bool)

(declare-fun res!593812 () Bool)

(assert (=> b!1321193 (=> (not res!593812) (not e!846668))))

(assert (=> b!1321193 (= res!593812 (matchR!1629 (regex!2313 (rule!4058 (_1!7385 (get!4263 lt!436134)))) (list!5046 (charsOf!1285 (_1!7385 (get!4263 lt!436134))))))))

(declare-fun b!1321194 () Bool)

(assert (=> b!1321194 (= e!846668 (contains!2356 rules!2550 (rule!4058 (_1!7385 (get!4263 lt!436134)))))))

(declare-fun b!1321195 () Bool)

(declare-fun res!593816 () Bool)

(assert (=> b!1321195 (=> (not res!593816) (not e!846668))))

(assert (=> b!1321195 (= res!593816 (= (value!75553 (_1!7385 (get!4263 lt!436134))) (apply!3067 (transformation!2313 (rule!4058 (_1!7385 (get!4263 lt!436134)))) (seqFromList!1601 (originalCharacters!3175 (_1!7385 (get!4263 lt!436134)))))))))

(declare-fun b!1321196 () Bool)

(declare-fun res!593814 () Bool)

(assert (=> b!1321196 (=> (not res!593814) (not e!846668))))

(assert (=> b!1321196 (= res!593814 (< (size!10891 (_2!7385 (get!4263 lt!436134))) (size!10891 lt!435886)))))

(declare-fun b!1321197 () Bool)

(declare-fun lt!436130 () Option!2584)

(declare-fun lt!436132 () Option!2584)

(assert (=> b!1321197 (= e!846666 (ite (and ((_ is None!2583) lt!436130) ((_ is None!2583) lt!436132)) None!2583 (ite ((_ is None!2583) lt!436132) lt!436130 (ite ((_ is None!2583) lt!436130) lt!436132 (ite (>= (size!10885 (_1!7385 (v!21156 lt!436130))) (size!10885 (_1!7385 (v!21156 lt!436132)))) lt!436130 lt!436132)))))))

(assert (=> b!1321197 (= lt!436130 call!89697)))

(assert (=> b!1321197 (= lt!436132 (maxPrefix!1018 thiss!19762 (t!118593 rules!2550) lt!435886))))

(declare-fun b!1321198 () Bool)

(assert (=> b!1321198 (= e!846666 call!89697)))

(declare-fun b!1321199 () Bool)

(assert (=> b!1321199 (= e!846667 e!846668)))

(declare-fun res!593810 () Bool)

(assert (=> b!1321199 (=> (not res!593810) (not e!846668))))

(assert (=> b!1321199 (= res!593810 (isDefined!2181 lt!436134))))

(assert (= (and d!373267 c!216947) b!1321198))

(assert (= (and d!373267 (not c!216947)) b!1321197))

(assert (= (or b!1321198 b!1321197) bm!89692))

(assert (= (and d!373267 (not res!593813)) b!1321199))

(assert (= (and b!1321199 res!593810) b!1321191))

(assert (= (and b!1321191 res!593815) b!1321196))

(assert (= (and b!1321196 res!593814) b!1321192))

(assert (= (and b!1321192 res!593811) b!1321195))

(assert (= (and b!1321195 res!593816) b!1321193))

(assert (= (and b!1321193 res!593812) b!1321194))

(declare-fun m!1477283 () Bool)

(assert (=> b!1321199 m!1477283))

(declare-fun m!1477285 () Bool)

(assert (=> b!1321193 m!1477285))

(declare-fun m!1477287 () Bool)

(assert (=> b!1321193 m!1477287))

(assert (=> b!1321193 m!1477287))

(declare-fun m!1477289 () Bool)

(assert (=> b!1321193 m!1477289))

(assert (=> b!1321193 m!1477289))

(declare-fun m!1477291 () Bool)

(assert (=> b!1321193 m!1477291))

(assert (=> b!1321195 m!1477285))

(declare-fun m!1477293 () Bool)

(assert (=> b!1321195 m!1477293))

(assert (=> b!1321195 m!1477293))

(declare-fun m!1477295 () Bool)

(assert (=> b!1321195 m!1477295))

(declare-fun m!1477297 () Bool)

(assert (=> bm!89692 m!1477297))

(assert (=> b!1321192 m!1477285))

(assert (=> b!1321192 m!1477287))

(assert (=> b!1321192 m!1477287))

(assert (=> b!1321192 m!1477289))

(assert (=> b!1321192 m!1477289))

(declare-fun m!1477299 () Bool)

(assert (=> b!1321192 m!1477299))

(assert (=> b!1321196 m!1477285))

(declare-fun m!1477301 () Bool)

(assert (=> b!1321196 m!1477301))

(declare-fun m!1477303 () Bool)

(assert (=> b!1321196 m!1477303))

(declare-fun m!1477305 () Bool)

(assert (=> d!373267 m!1477305))

(declare-fun m!1477307 () Bool)

(assert (=> d!373267 m!1477307))

(declare-fun m!1477309 () Bool)

(assert (=> d!373267 m!1477309))

(assert (=> d!373267 m!1476967))

(assert (=> b!1321191 m!1477285))

(assert (=> b!1321191 m!1477287))

(assert (=> b!1321191 m!1477287))

(assert (=> b!1321191 m!1477289))

(declare-fun m!1477311 () Bool)

(assert (=> b!1321197 m!1477311))

(assert (=> b!1321194 m!1477285))

(declare-fun m!1477313 () Bool)

(assert (=> b!1321194 m!1477313))

(assert (=> b!1320531 d!373267))

(declare-fun d!373269 () Bool)

(assert (=> d!373269 (= (list!5046 lt!435896) (list!5049 (c!216814 lt!435896)))))

(declare-fun bs!331073 () Bool)

(assert (= bs!331073 d!373269))

(declare-fun m!1477315 () Bool)

(assert (=> bs!331073 m!1477315))

(assert (=> b!1320531 d!373269))

(declare-fun d!373271 () Bool)

(declare-fun lt!436135 () Bool)

(assert (=> d!373271 (= lt!436135 (select (content!1887 rules!2550) (rule!4058 t1!34)))))

(declare-fun e!846669 () Bool)

(assert (=> d!373271 (= lt!436135 e!846669)))

(declare-fun res!593817 () Bool)

(assert (=> d!373271 (=> (not res!593817) (not e!846669))))

(assert (=> d!373271 (= res!593817 ((_ is Cons!13370) rules!2550))))

(assert (=> d!373271 (= (contains!2356 rules!2550 (rule!4058 t1!34)) lt!436135)))

(declare-fun b!1321200 () Bool)

(declare-fun e!846670 () Bool)

(assert (=> b!1321200 (= e!846669 e!846670)))

(declare-fun res!593818 () Bool)

(assert (=> b!1321200 (=> res!593818 e!846670)))

(assert (=> b!1321200 (= res!593818 (= (h!18771 rules!2550) (rule!4058 t1!34)))))

(declare-fun b!1321201 () Bool)

(assert (=> b!1321201 (= e!846670 (contains!2356 (t!118593 rules!2550) (rule!4058 t1!34)))))

(assert (= (and d!373271 res!593817) b!1321200))

(assert (= (and b!1321200 (not res!593818)) b!1321201))

(assert (=> d!373271 m!1476659))

(declare-fun m!1477317 () Bool)

(assert (=> d!373271 m!1477317))

(declare-fun m!1477319 () Bool)

(assert (=> b!1321201 m!1477319))

(assert (=> b!1320510 d!373271))

(declare-fun d!373273 () Bool)

(assert (=> d!373273 (= (inv!17745 (tag!2575 (rule!4058 t2!34))) (= (mod (str.len (value!75552 (tag!2575 (rule!4058 t2!34)))) 2) 0))))

(assert (=> b!1320511 d!373273))

(declare-fun d!373275 () Bool)

(declare-fun res!593819 () Bool)

(declare-fun e!846671 () Bool)

(assert (=> d!373275 (=> (not res!593819) (not e!846671))))

(assert (=> d!373275 (= res!593819 (semiInverseModEq!872 (toChars!3403 (transformation!2313 (rule!4058 t2!34))) (toValue!3544 (transformation!2313 (rule!4058 t2!34)))))))

(assert (=> d!373275 (= (inv!17748 (transformation!2313 (rule!4058 t2!34))) e!846671)))

(declare-fun b!1321202 () Bool)

(assert (=> b!1321202 (= e!846671 (equivClasses!831 (toChars!3403 (transformation!2313 (rule!4058 t2!34))) (toValue!3544 (transformation!2313 (rule!4058 t2!34)))))))

(assert (= (and d!373275 res!593819) b!1321202))

(declare-fun m!1477321 () Bool)

(assert (=> d!373275 m!1477321))

(declare-fun m!1477323 () Bool)

(assert (=> b!1321202 m!1477323))

(assert (=> b!1320511 d!373275))

(declare-fun bs!331074 () Bool)

(declare-fun d!373277 () Bool)

(assert (= bs!331074 (and d!373277 b!1320532)))

(declare-fun lambda!53956 () Int)

(assert (=> bs!331074 (not (= lambda!53956 lambda!53915))))

(declare-fun lambda!53957 () Int)

(assert (=> bs!331074 (= lambda!53957 lambda!53915)))

(declare-fun bs!331075 () Bool)

(assert (= bs!331075 d!373277))

(assert (=> bs!331075 (not (= lambda!53957 lambda!53956))))

(assert (=> d!373277 true))

(assert (=> d!373277 (= (matchR!1629 lt!435888 lt!435901) (exists!329 lt!435904 lambda!53957))))

(declare-fun lt!436138 () Unit!19448)

(declare-fun choose!8083 (Regex!3627 List!13438 List!13434) Unit!19448)

(assert (=> d!373277 (= lt!436138 (choose!8083 lt!435888 lt!435904 lt!435901))))

(declare-fun forall!3302 (List!13438 Int) Bool)

(assert (=> d!373277 (forall!3302 lt!435904 lambda!53956)))

(assert (=> d!373277 (= (matchRGenUnionSpec!64 lt!435888 lt!435904 lt!435901) lt!436138)))

(assert (=> bs!331075 m!1476377))

(declare-fun m!1477325 () Bool)

(assert (=> bs!331075 m!1477325))

(declare-fun m!1477327 () Bool)

(assert (=> bs!331075 m!1477327))

(declare-fun m!1477329 () Bool)

(assert (=> bs!331075 m!1477329))

(assert (=> b!1320532 d!373277))

(assert (=> b!1320532 d!373249))

(declare-fun bs!331076 () Bool)

(declare-fun d!373279 () Bool)

(assert (= bs!331076 (and d!373279 b!1320532)))

(declare-fun lambda!53960 () Int)

(assert (=> bs!331076 (not (= lambda!53960 lambda!53915))))

(declare-fun bs!331077 () Bool)

(assert (= bs!331077 (and d!373279 d!373277)))

(assert (=> bs!331077 (not (= lambda!53960 lambda!53956))))

(assert (=> bs!331077 (not (= lambda!53960 lambda!53957))))

(assert (=> d!373279 true))

(declare-fun order!8085 () Int)

(declare-fun dynLambda!5877 (Int Int) Int)

(assert (=> d!373279 (< (dynLambda!5877 order!8085 lambda!53915) (dynLambda!5877 order!8085 lambda!53960))))

(assert (=> d!373279 (= (exists!329 (map!2936 rules!2550 lambda!53914) lambda!53915) (not (forall!3302 (map!2936 rules!2550 lambda!53914) lambda!53960)))))

(declare-fun bs!331078 () Bool)

(assert (= bs!331078 d!373279))

(assert (=> bs!331078 m!1476409))

(declare-fun m!1477331 () Bool)

(assert (=> bs!331078 m!1477331))

(assert (=> b!1320532 d!373279))

(declare-fun bs!331079 () Bool)

(declare-fun d!373281 () Bool)

(assert (= bs!331079 (and d!373281 b!1320532)))

(declare-fun lambda!53961 () Int)

(assert (=> bs!331079 (not (= lambda!53961 lambda!53915))))

(declare-fun bs!331080 () Bool)

(assert (= bs!331080 (and d!373281 d!373277)))

(assert (=> bs!331080 (not (= lambda!53961 lambda!53956))))

(assert (=> bs!331080 (not (= lambda!53961 lambda!53957))))

(declare-fun bs!331081 () Bool)

(assert (= bs!331081 (and d!373281 d!373279)))

(assert (=> bs!331081 (= lambda!53961 lambda!53960)))

(assert (=> d!373281 true))

(assert (=> d!373281 (< (dynLambda!5877 order!8085 lambda!53915) (dynLambda!5877 order!8085 lambda!53961))))

(assert (=> d!373281 (= (exists!329 lt!435904 lambda!53915) (not (forall!3302 lt!435904 lambda!53961)))))

(declare-fun bs!331082 () Bool)

(assert (= bs!331082 d!373281))

(declare-fun m!1477333 () Bool)

(assert (=> bs!331082 m!1477333))

(assert (=> b!1320532 d!373281))

(declare-fun b!1321207 () Bool)

(declare-fun e!846674 () Bool)

(declare-fun lt!436139 () Bool)

(declare-fun call!89698 () Bool)

(assert (=> b!1321207 (= e!846674 (= lt!436139 call!89698))))

(declare-fun b!1321208 () Bool)

(declare-fun e!846676 () Bool)

(declare-fun e!846675 () Bool)

(assert (=> b!1321208 (= e!846676 e!846675)))

(declare-fun res!593829 () Bool)

(assert (=> b!1321208 (=> (not res!593829) (not e!846675))))

(assert (=> b!1321208 (= res!593829 (not lt!436139))))

(declare-fun b!1321209 () Bool)

(declare-fun e!846677 () Bool)

(assert (=> b!1321209 (= e!846677 (matchR!1629 (derivativeStep!903 (regex!2313 (rule!4058 t1!34)) (head!2289 lt!435895)) (tail!1896 lt!435895)))))

(declare-fun b!1321210 () Bool)

(declare-fun res!593827 () Bool)

(declare-fun e!846680 () Bool)

(assert (=> b!1321210 (=> (not res!593827) (not e!846680))))

(assert (=> b!1321210 (= res!593827 (not call!89698))))

(declare-fun d!373283 () Bool)

(assert (=> d!373283 e!846674))

(declare-fun c!216950 () Bool)

(assert (=> d!373283 (= c!216950 ((_ is EmptyExpr!3627) (regex!2313 (rule!4058 t1!34))))))

(assert (=> d!373283 (= lt!436139 e!846677)))

(declare-fun c!216948 () Bool)

(assert (=> d!373283 (= c!216948 (isEmpty!7948 lt!435895))))

(assert (=> d!373283 (validRegex!1553 (regex!2313 (rule!4058 t1!34)))))

(assert (=> d!373283 (= (matchR!1629 (regex!2313 (rule!4058 t1!34)) lt!435895) lt!436139)))

(declare-fun b!1321211 () Bool)

(declare-fun res!593826 () Bool)

(assert (=> b!1321211 (=> res!593826 e!846676)))

(assert (=> b!1321211 (= res!593826 e!846680)))

(declare-fun res!593828 () Bool)

(assert (=> b!1321211 (=> (not res!593828) (not e!846680))))

(assert (=> b!1321211 (= res!593828 lt!436139)))

(declare-fun b!1321212 () Bool)

(declare-fun e!846678 () Bool)

(assert (=> b!1321212 (= e!846678 (not (= (head!2289 lt!435895) (c!216815 (regex!2313 (rule!4058 t1!34))))))))

(declare-fun b!1321213 () Bool)

(declare-fun res!593824 () Bool)

(assert (=> b!1321213 (=> res!593824 e!846676)))

(assert (=> b!1321213 (= res!593824 (not ((_ is ElementMatch!3627) (regex!2313 (rule!4058 t1!34)))))))

(declare-fun e!846679 () Bool)

(assert (=> b!1321213 (= e!846679 e!846676)))

(declare-fun b!1321214 () Bool)

(assert (=> b!1321214 (= e!846675 e!846678)))

(declare-fun res!593822 () Bool)

(assert (=> b!1321214 (=> res!593822 e!846678)))

(assert (=> b!1321214 (= res!593822 call!89698)))

(declare-fun b!1321215 () Bool)

(declare-fun res!593823 () Bool)

(assert (=> b!1321215 (=> (not res!593823) (not e!846680))))

(assert (=> b!1321215 (= res!593823 (isEmpty!7948 (tail!1896 lt!435895)))))

(declare-fun b!1321216 () Bool)

(assert (=> b!1321216 (= e!846677 (nullable!1151 (regex!2313 (rule!4058 t1!34))))))

(declare-fun b!1321217 () Bool)

(declare-fun res!593825 () Bool)

(assert (=> b!1321217 (=> res!593825 e!846678)))

(assert (=> b!1321217 (= res!593825 (not (isEmpty!7948 (tail!1896 lt!435895))))))

(declare-fun bm!89693 () Bool)

(assert (=> bm!89693 (= call!89698 (isEmpty!7948 lt!435895))))

(declare-fun b!1321218 () Bool)

(assert (=> b!1321218 (= e!846674 e!846679)))

(declare-fun c!216949 () Bool)

(assert (=> b!1321218 (= c!216949 ((_ is EmptyLang!3627) (regex!2313 (rule!4058 t1!34))))))

(declare-fun b!1321219 () Bool)

(assert (=> b!1321219 (= e!846680 (= (head!2289 lt!435895) (c!216815 (regex!2313 (rule!4058 t1!34)))))))

(declare-fun b!1321220 () Bool)

(assert (=> b!1321220 (= e!846679 (not lt!436139))))

(assert (= (and d!373283 c!216948) b!1321216))

(assert (= (and d!373283 (not c!216948)) b!1321209))

(assert (= (and d!373283 c!216950) b!1321207))

(assert (= (and d!373283 (not c!216950)) b!1321218))

(assert (= (and b!1321218 c!216949) b!1321220))

(assert (= (and b!1321218 (not c!216949)) b!1321213))

(assert (= (and b!1321213 (not res!593824)) b!1321211))

(assert (= (and b!1321211 res!593828) b!1321210))

(assert (= (and b!1321210 res!593827) b!1321215))

(assert (= (and b!1321215 res!593823) b!1321219))

(assert (= (and b!1321211 (not res!593826)) b!1321208))

(assert (= (and b!1321208 res!593829) b!1321214))

(assert (= (and b!1321214 (not res!593822)) b!1321217))

(assert (= (and b!1321217 (not res!593825)) b!1321212))

(assert (= (or b!1321207 b!1321210 b!1321214) bm!89693))

(declare-fun m!1477335 () Bool)

(assert (=> b!1321215 m!1477335))

(assert (=> b!1321215 m!1477335))

(declare-fun m!1477337 () Bool)

(assert (=> b!1321215 m!1477337))

(declare-fun m!1477339 () Bool)

(assert (=> d!373283 m!1477339))

(declare-fun m!1477341 () Bool)

(assert (=> d!373283 m!1477341))

(assert (=> bm!89693 m!1477339))

(declare-fun m!1477343 () Bool)

(assert (=> b!1321212 m!1477343))

(declare-fun m!1477345 () Bool)

(assert (=> b!1321216 m!1477345))

(assert (=> b!1321217 m!1477335))

(assert (=> b!1321217 m!1477335))

(assert (=> b!1321217 m!1477337))

(assert (=> b!1321209 m!1477343))

(assert (=> b!1321209 m!1477343))

(declare-fun m!1477347 () Bool)

(assert (=> b!1321209 m!1477347))

(assert (=> b!1321209 m!1477335))

(assert (=> b!1321209 m!1477347))

(assert (=> b!1321209 m!1477335))

(declare-fun m!1477349 () Bool)

(assert (=> b!1321209 m!1477349))

(assert (=> b!1321219 m!1477343))

(assert (=> b!1320512 d!373283))

(declare-fun d!373285 () Bool)

(declare-fun dynLambda!5878 (Int Rule!4426) Bool)

(assert (=> d!373285 (dynLambda!5878 lambda!53917 (rule!4058 t2!34))))

(declare-fun lt!436142 () Unit!19448)

(declare-fun choose!8084 (List!13436 Int Rule!4426) Unit!19448)

(assert (=> d!373285 (= lt!436142 (choose!8084 rules!2550 lambda!53917 (rule!4058 t2!34)))))

(declare-fun e!846683 () Bool)

(assert (=> d!373285 e!846683))

(declare-fun res!593832 () Bool)

(assert (=> d!373285 (=> (not res!593832) (not e!846683))))

(assert (=> d!373285 (= res!593832 (forall!3300 rules!2550 lambda!53917))))

(assert (=> d!373285 (= (forallContained!564 rules!2550 lambda!53917 (rule!4058 t2!34)) lt!436142)))

(declare-fun b!1321223 () Bool)

(assert (=> b!1321223 (= e!846683 (contains!2356 rules!2550 (rule!4058 t2!34)))))

(assert (= (and d!373285 res!593832) b!1321223))

(declare-fun b_lambda!38563 () Bool)

(assert (=> (not b_lambda!38563) (not d!373285)))

(declare-fun m!1477351 () Bool)

(assert (=> d!373285 m!1477351))

(declare-fun m!1477353 () Bool)

(assert (=> d!373285 m!1477353))

(declare-fun m!1477355 () Bool)

(assert (=> d!373285 m!1477355))

(assert (=> b!1321223 m!1476381))

(assert (=> b!1320512 d!373285))

(declare-fun d!373287 () Bool)

(assert (=> d!373287 (dynLambda!5878 lambda!53917 (rule!4058 t1!34))))

(declare-fun lt!436143 () Unit!19448)

(assert (=> d!373287 (= lt!436143 (choose!8084 rules!2550 lambda!53917 (rule!4058 t1!34)))))

(declare-fun e!846684 () Bool)

(assert (=> d!373287 e!846684))

(declare-fun res!593833 () Bool)

(assert (=> d!373287 (=> (not res!593833) (not e!846684))))

(assert (=> d!373287 (= res!593833 (forall!3300 rules!2550 lambda!53917))))

(assert (=> d!373287 (= (forallContained!564 rules!2550 lambda!53917 (rule!4058 t1!34)) lt!436143)))

(declare-fun b!1321224 () Bool)

(assert (=> b!1321224 (= e!846684 (contains!2356 rules!2550 (rule!4058 t1!34)))))

(assert (= (and d!373287 res!593833) b!1321224))

(declare-fun b_lambda!38565 () Bool)

(assert (=> (not b_lambda!38565) (not d!373287)))

(declare-fun m!1477357 () Bool)

(assert (=> d!373287 m!1477357))

(declare-fun m!1477359 () Bool)

(assert (=> d!373287 m!1477359))

(assert (=> d!373287 m!1477355))

(assert (=> b!1321224 m!1476353))

(assert (=> b!1320512 d!373287))

(declare-fun d!373289 () Bool)

(assert (=> d!373289 (dynLambda!5878 lambda!53917 lt!435892)))

(declare-fun lt!436144 () Unit!19448)

(assert (=> d!373289 (= lt!436144 (choose!8084 rules!2550 lambda!53917 lt!435892))))

(declare-fun e!846685 () Bool)

(assert (=> d!373289 e!846685))

(declare-fun res!593834 () Bool)

(assert (=> d!373289 (=> (not res!593834) (not e!846685))))

(assert (=> d!373289 (= res!593834 (forall!3300 rules!2550 lambda!53917))))

(assert (=> d!373289 (= (forallContained!564 rules!2550 lambda!53917 lt!435892) lt!436144)))

(declare-fun b!1321225 () Bool)

(assert (=> b!1321225 (= e!846685 (contains!2356 rules!2550 lt!435892))))

(assert (= (and d!373289 res!593834) b!1321225))

(declare-fun b_lambda!38567 () Bool)

(assert (=> (not b_lambda!38567) (not d!373289)))

(declare-fun m!1477361 () Bool)

(assert (=> d!373289 m!1477361))

(declare-fun m!1477363 () Bool)

(assert (=> d!373289 m!1477363))

(assert (=> d!373289 m!1477355))

(assert (=> b!1321225 m!1476325))

(assert (=> b!1320512 d!373289))

(declare-fun d!373291 () Bool)

(declare-fun lt!436145 () Bool)

(assert (=> d!373291 (= lt!436145 (select (content!1888 lt!435901) lt!435902))))

(declare-fun e!846686 () Bool)

(assert (=> d!373291 (= lt!436145 e!846686)))

(declare-fun res!593836 () Bool)

(assert (=> d!373291 (=> (not res!593836) (not e!846686))))

(assert (=> d!373291 (= res!593836 ((_ is Cons!13368) lt!435901))))

(assert (=> d!373291 (= (contains!2355 lt!435901 lt!435902) lt!436145)))

(declare-fun b!1321226 () Bool)

(declare-fun e!846687 () Bool)

(assert (=> b!1321226 (= e!846686 e!846687)))

(declare-fun res!593835 () Bool)

(assert (=> b!1321226 (=> res!593835 e!846687)))

(assert (=> b!1321226 (= res!593835 (= (h!18769 lt!435901) lt!435902))))

(declare-fun b!1321227 () Bool)

(assert (=> b!1321227 (= e!846687 (contains!2355 (t!118591 lt!435901) lt!435902))))

(assert (= (and d!373291 res!593836) b!1321226))

(assert (= (and b!1321226 (not res!593835)) b!1321227))

(assert (=> d!373291 m!1476981))

(declare-fun m!1477365 () Bool)

(assert (=> d!373291 m!1477365))

(declare-fun m!1477367 () Bool)

(assert (=> b!1321227 m!1477367))

(assert (=> b!1320513 d!373291))

(declare-fun d!373293 () Bool)

(declare-fun res!593839 () Bool)

(declare-fun e!846690 () Bool)

(assert (=> d!373293 (=> (not res!593839) (not e!846690))))

(declare-fun rulesValid!841 (LexerInterface!2008 List!13436) Bool)

(assert (=> d!373293 (= res!593839 (rulesValid!841 thiss!19762 rules!2550))))

(assert (=> d!373293 (= (rulesInvariant!1878 thiss!19762 rules!2550) e!846690)))

(declare-fun b!1321230 () Bool)

(declare-datatypes ((List!13440 0))(
  ( (Nil!13374) (Cons!13374 (h!18775 String!16251) (t!118633 List!13440)) )
))
(declare-fun noDuplicateTag!841 (LexerInterface!2008 List!13436 List!13440) Bool)

(assert (=> b!1321230 (= e!846690 (noDuplicateTag!841 thiss!19762 rules!2550 Nil!13374))))

(assert (= (and d!373293 res!593839) b!1321230))

(declare-fun m!1477369 () Bool)

(assert (=> d!373293 m!1477369))

(declare-fun m!1477371 () Bool)

(assert (=> b!1321230 m!1477371))

(assert (=> b!1320534 d!373293))

(declare-fun b!1321231 () Bool)

(declare-fun e!846691 () Bool)

(declare-fun lt!436146 () Bool)

(declare-fun call!89699 () Bool)

(assert (=> b!1321231 (= e!846691 (= lt!436146 call!89699))))

(declare-fun b!1321232 () Bool)

(declare-fun e!846693 () Bool)

(declare-fun e!846692 () Bool)

(assert (=> b!1321232 (= e!846693 e!846692)))

(declare-fun res!593847 () Bool)

(assert (=> b!1321232 (=> (not res!593847) (not e!846692))))

(assert (=> b!1321232 (= res!593847 (not lt!436146))))

(declare-fun b!1321233 () Bool)

(declare-fun e!846694 () Bool)

(assert (=> b!1321233 (= e!846694 (matchR!1629 (derivativeStep!903 lt!435888 (head!2289 lt!435901)) (tail!1896 lt!435901)))))

(declare-fun b!1321234 () Bool)

(declare-fun res!593845 () Bool)

(declare-fun e!846697 () Bool)

(assert (=> b!1321234 (=> (not res!593845) (not e!846697))))

(assert (=> b!1321234 (= res!593845 (not call!89699))))

(declare-fun d!373295 () Bool)

(assert (=> d!373295 e!846691))

(declare-fun c!216953 () Bool)

(assert (=> d!373295 (= c!216953 ((_ is EmptyExpr!3627) lt!435888))))

(assert (=> d!373295 (= lt!436146 e!846694)))

(declare-fun c!216951 () Bool)

(assert (=> d!373295 (= c!216951 (isEmpty!7948 lt!435901))))

(assert (=> d!373295 (validRegex!1553 lt!435888)))

(assert (=> d!373295 (= (matchR!1629 lt!435888 lt!435901) lt!436146)))

(declare-fun b!1321235 () Bool)

(declare-fun res!593844 () Bool)

(assert (=> b!1321235 (=> res!593844 e!846693)))

(assert (=> b!1321235 (= res!593844 e!846697)))

(declare-fun res!593846 () Bool)

(assert (=> b!1321235 (=> (not res!593846) (not e!846697))))

(assert (=> b!1321235 (= res!593846 lt!436146)))

(declare-fun b!1321236 () Bool)

(declare-fun e!846695 () Bool)

(assert (=> b!1321236 (= e!846695 (not (= (head!2289 lt!435901) (c!216815 lt!435888))))))

(declare-fun b!1321237 () Bool)

(declare-fun res!593842 () Bool)

(assert (=> b!1321237 (=> res!593842 e!846693)))

(assert (=> b!1321237 (= res!593842 (not ((_ is ElementMatch!3627) lt!435888)))))

(declare-fun e!846696 () Bool)

(assert (=> b!1321237 (= e!846696 e!846693)))

(declare-fun b!1321238 () Bool)

(assert (=> b!1321238 (= e!846692 e!846695)))

(declare-fun res!593840 () Bool)

(assert (=> b!1321238 (=> res!593840 e!846695)))

(assert (=> b!1321238 (= res!593840 call!89699)))

(declare-fun b!1321239 () Bool)

(declare-fun res!593841 () Bool)

(assert (=> b!1321239 (=> (not res!593841) (not e!846697))))

(assert (=> b!1321239 (= res!593841 (isEmpty!7948 (tail!1896 lt!435901)))))

(declare-fun b!1321240 () Bool)

(assert (=> b!1321240 (= e!846694 (nullable!1151 lt!435888))))

(declare-fun b!1321241 () Bool)

(declare-fun res!593843 () Bool)

(assert (=> b!1321241 (=> res!593843 e!846695)))

(assert (=> b!1321241 (= res!593843 (not (isEmpty!7948 (tail!1896 lt!435901))))))

(declare-fun bm!89694 () Bool)

(assert (=> bm!89694 (= call!89699 (isEmpty!7948 lt!435901))))

(declare-fun b!1321242 () Bool)

(assert (=> b!1321242 (= e!846691 e!846696)))

(declare-fun c!216952 () Bool)

(assert (=> b!1321242 (= c!216952 ((_ is EmptyLang!3627) lt!435888))))

(declare-fun b!1321243 () Bool)

(assert (=> b!1321243 (= e!846697 (= (head!2289 lt!435901) (c!216815 lt!435888)))))

(declare-fun b!1321244 () Bool)

(assert (=> b!1321244 (= e!846696 (not lt!436146))))

(assert (= (and d!373295 c!216951) b!1321240))

(assert (= (and d!373295 (not c!216951)) b!1321233))

(assert (= (and d!373295 c!216953) b!1321231))

(assert (= (and d!373295 (not c!216953)) b!1321242))

(assert (= (and b!1321242 c!216952) b!1321244))

(assert (= (and b!1321242 (not c!216952)) b!1321237))

(assert (= (and b!1321237 (not res!593842)) b!1321235))

(assert (= (and b!1321235 res!593846) b!1321234))

(assert (= (and b!1321234 res!593845) b!1321239))

(assert (= (and b!1321239 res!593841) b!1321243))

(assert (= (and b!1321235 (not res!593844)) b!1321232))

(assert (= (and b!1321232 res!593847) b!1321238))

(assert (= (and b!1321238 (not res!593840)) b!1321241))

(assert (= (and b!1321241 (not res!593843)) b!1321236))

(assert (= (or b!1321231 b!1321234 b!1321238) bm!89694))

(assert (=> b!1321239 m!1477201))

(assert (=> b!1321239 m!1477201))

(declare-fun m!1477373 () Bool)

(assert (=> b!1321239 m!1477373))

(declare-fun m!1477375 () Bool)

(assert (=> d!373295 m!1477375))

(assert (=> d!373295 m!1477003))

(assert (=> bm!89694 m!1477375))

(declare-fun m!1477377 () Bool)

(assert (=> b!1321236 m!1477377))

(declare-fun m!1477379 () Bool)

(assert (=> b!1321240 m!1477379))

(assert (=> b!1321241 m!1477201))

(assert (=> b!1321241 m!1477201))

(assert (=> b!1321241 m!1477373))

(assert (=> b!1321233 m!1477377))

(assert (=> b!1321233 m!1477377))

(declare-fun m!1477381 () Bool)

(assert (=> b!1321233 m!1477381))

(assert (=> b!1321233 m!1477201))

(assert (=> b!1321233 m!1477381))

(assert (=> b!1321233 m!1477201))

(declare-fun m!1477383 () Bool)

(assert (=> b!1321233 m!1477383))

(assert (=> b!1321243 m!1477377))

(assert (=> b!1320535 d!373295))

(declare-fun d!373297 () Bool)

(declare-fun e!846706 () Bool)

(assert (=> d!373297 e!846706))

(declare-fun c!216959 () Bool)

(declare-fun lt!436155 () tuple2!13002)

(declare-fun size!10897 (List!13437) Int)

(assert (=> d!373297 (= c!216959 (> (size!10897 (_1!7387 lt!436155)) 0))))

(declare-fun e!846705 () tuple2!13002)

(assert (=> d!373297 (= lt!436155 e!846705)))

(declare-fun c!216958 () Bool)

(declare-fun lt!436153 () Option!2584)

(assert (=> d!373297 (= c!216958 ((_ is Some!2583) lt!436153))))

(assert (=> d!373297 (= lt!436153 (maxPrefix!1018 thiss!19762 rules!2550 (list!5046 lt!435898)))))

(assert (=> d!373297 (= (lexList!546 thiss!19762 rules!2550 (list!5046 lt!435898)) lt!436155)))

(declare-fun b!1321255 () Bool)

(assert (=> b!1321255 (= e!846705 (tuple2!13003 Nil!13371 (list!5046 lt!435898)))))

(declare-fun b!1321256 () Bool)

(declare-fun lt!436154 () tuple2!13002)

(assert (=> b!1321256 (= e!846705 (tuple2!13003 (Cons!13371 (_1!7385 (v!21156 lt!436153)) (_1!7387 lt!436154)) (_2!7387 lt!436154)))))

(assert (=> b!1321256 (= lt!436154 (lexList!546 thiss!19762 rules!2550 (_2!7385 (v!21156 lt!436153))))))

(declare-fun b!1321257 () Bool)

(declare-fun e!846704 () Bool)

(declare-fun isEmpty!7953 (List!13437) Bool)

(assert (=> b!1321257 (= e!846704 (not (isEmpty!7953 (_1!7387 lt!436155))))))

(declare-fun b!1321258 () Bool)

(assert (=> b!1321258 (= e!846706 (= (_2!7387 lt!436155) (list!5046 lt!435898)))))

(declare-fun b!1321259 () Bool)

(assert (=> b!1321259 (= e!846706 e!846704)))

(declare-fun res!593850 () Bool)

(assert (=> b!1321259 (= res!593850 (< (size!10891 (_2!7387 lt!436155)) (size!10891 (list!5046 lt!435898))))))

(assert (=> b!1321259 (=> (not res!593850) (not e!846704))))

(assert (= (and d!373297 c!216958) b!1321256))

(assert (= (and d!373297 (not c!216958)) b!1321255))

(assert (= (and d!373297 c!216959) b!1321259))

(assert (= (and d!373297 (not c!216959)) b!1321258))

(assert (= (and b!1321259 res!593850) b!1321257))

(declare-fun m!1477385 () Bool)

(assert (=> d!373297 m!1477385))

(assert (=> d!373297 m!1476437))

(declare-fun m!1477387 () Bool)

(assert (=> d!373297 m!1477387))

(declare-fun m!1477389 () Bool)

(assert (=> b!1321256 m!1477389))

(declare-fun m!1477391 () Bool)

(assert (=> b!1321257 m!1477391))

(declare-fun m!1477393 () Bool)

(assert (=> b!1321259 m!1477393))

(assert (=> b!1321259 m!1476437))

(declare-fun m!1477395 () Bool)

(assert (=> b!1321259 m!1477395))

(assert (=> b!1320514 d!373297))

(declare-fun d!373299 () Bool)

(assert (=> d!373299 (= (list!5046 lt!435898) (list!5049 (c!216814 lt!435898)))))

(declare-fun bs!331083 () Bool)

(assert (= bs!331083 d!373299))

(declare-fun m!1477397 () Bool)

(assert (=> bs!331083 m!1477397))

(assert (=> b!1320514 d!373299))

(declare-fun d!373301 () Bool)

(declare-fun e!846709 () Bool)

(assert (=> d!373301 e!846709))

(declare-fun c!216961 () Bool)

(declare-fun lt!436158 () tuple2!13002)

(assert (=> d!373301 (= c!216961 (> (size!10897 (_1!7387 lt!436158)) 0))))

(declare-fun e!846708 () tuple2!13002)

(assert (=> d!373301 (= lt!436158 e!846708)))

(declare-fun c!216960 () Bool)

(declare-fun lt!436156 () Option!2584)

(assert (=> d!373301 (= c!216960 ((_ is Some!2583) lt!436156))))

(assert (=> d!373301 (= lt!436156 (maxPrefix!1018 thiss!19762 rules!2550 (list!5046 lt!435890)))))

(assert (=> d!373301 (= (lexList!546 thiss!19762 rules!2550 (list!5046 lt!435890)) lt!436158)))

(declare-fun b!1321260 () Bool)

(assert (=> b!1321260 (= e!846708 (tuple2!13003 Nil!13371 (list!5046 lt!435890)))))

(declare-fun b!1321261 () Bool)

(declare-fun lt!436157 () tuple2!13002)

(assert (=> b!1321261 (= e!846708 (tuple2!13003 (Cons!13371 (_1!7385 (v!21156 lt!436156)) (_1!7387 lt!436157)) (_2!7387 lt!436157)))))

(assert (=> b!1321261 (= lt!436157 (lexList!546 thiss!19762 rules!2550 (_2!7385 (v!21156 lt!436156))))))

(declare-fun b!1321262 () Bool)

(declare-fun e!846707 () Bool)

(assert (=> b!1321262 (= e!846707 (not (isEmpty!7953 (_1!7387 lt!436158))))))

(declare-fun b!1321263 () Bool)

(assert (=> b!1321263 (= e!846709 (= (_2!7387 lt!436158) (list!5046 lt!435890)))))

(declare-fun b!1321264 () Bool)

(assert (=> b!1321264 (= e!846709 e!846707)))

(declare-fun res!593851 () Bool)

(assert (=> b!1321264 (= res!593851 (< (size!10891 (_2!7387 lt!436158)) (size!10891 (list!5046 lt!435890))))))

(assert (=> b!1321264 (=> (not res!593851) (not e!846707))))

(assert (= (and d!373301 c!216960) b!1321261))

(assert (= (and d!373301 (not c!216960)) b!1321260))

(assert (= (and d!373301 c!216961) b!1321264))

(assert (= (and d!373301 (not c!216961)) b!1321263))

(assert (= (and b!1321264 res!593851) b!1321262))

(declare-fun m!1477399 () Bool)

(assert (=> d!373301 m!1477399))

(assert (=> d!373301 m!1476347))

(declare-fun m!1477401 () Bool)

(assert (=> d!373301 m!1477401))

(declare-fun m!1477403 () Bool)

(assert (=> b!1321261 m!1477403))

(declare-fun m!1477405 () Bool)

(assert (=> b!1321262 m!1477405))

(declare-fun m!1477407 () Bool)

(assert (=> b!1321264 m!1477407))

(assert (=> b!1321264 m!1476347))

(declare-fun m!1477409 () Bool)

(assert (=> b!1321264 m!1477409))

(assert (=> b!1320515 d!373301))

(declare-fun d!373303 () Bool)

(assert (=> d!373303 (= (list!5046 lt!435890) (list!5049 (c!216814 lt!435890)))))

(declare-fun bs!331084 () Bool)

(assert (= bs!331084 d!373303))

(declare-fun m!1477411 () Bool)

(assert (=> bs!331084 m!1477411))

(assert (=> b!1320515 d!373303))

(declare-fun d!373305 () Bool)

(declare-fun res!593856 () Bool)

(declare-fun e!846714 () Bool)

(assert (=> d!373305 (=> res!593856 e!846714)))

(assert (=> d!373305 (= res!593856 (not ((_ is Cons!13370) rules!2550)))))

(assert (=> d!373305 (= (sepAndNonSepRulesDisjointChars!686 rules!2550 rules!2550) e!846714)))

(declare-fun b!1321269 () Bool)

(declare-fun e!846715 () Bool)

(assert (=> b!1321269 (= e!846714 e!846715)))

(declare-fun res!593857 () Bool)

(assert (=> b!1321269 (=> (not res!593857) (not e!846715))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!316 (Rule!4426 List!13436) Bool)

(assert (=> b!1321269 (= res!593857 (ruleDisjointCharsFromAllFromOtherType!316 (h!18771 rules!2550) rules!2550))))

(declare-fun b!1321270 () Bool)

(assert (=> b!1321270 (= e!846715 (sepAndNonSepRulesDisjointChars!686 rules!2550 (t!118593 rules!2550)))))

(assert (= (and d!373305 (not res!593856)) b!1321269))

(assert (= (and b!1321269 res!593857) b!1321270))

(declare-fun m!1477413 () Bool)

(assert (=> b!1321269 m!1477413))

(declare-fun m!1477415 () Bool)

(assert (=> b!1321270 m!1477415))

(assert (=> b!1320536 d!373305))

(declare-fun d!373307 () Bool)

(declare-fun lt!436159 () BalanceConc!8732)

(assert (=> d!373307 (= (list!5046 lt!436159) (printList!564 thiss!19762 (list!5047 (singletonSeq!896 t1!34))))))

(assert (=> d!373307 (= lt!436159 (printTailRec!546 thiss!19762 (singletonSeq!896 t1!34) 0 (BalanceConc!8733 Empty!4396)))))

(assert (=> d!373307 (= (print!782 thiss!19762 (singletonSeq!896 t1!34)) lt!436159)))

(declare-fun bs!331085 () Bool)

(assert (= bs!331085 d!373307))

(declare-fun m!1477417 () Bool)

(assert (=> bs!331085 m!1477417))

(assert (=> bs!331085 m!1476451))

(assert (=> bs!331085 m!1476913))

(assert (=> bs!331085 m!1476913))

(declare-fun m!1477419 () Bool)

(assert (=> bs!331085 m!1477419))

(assert (=> bs!331085 m!1476451))

(declare-fun m!1477421 () Bool)

(assert (=> bs!331085 m!1477421))

(assert (=> b!1320537 d!373307))

(declare-fun b!1321283 () Bool)

(declare-fun e!846725 () Rule!4426)

(assert (=> b!1321283 (= e!846725 (h!18771 rules!2550))))

(declare-fun b!1321284 () Bool)

(declare-fun e!846727 () Bool)

(assert (=> b!1321284 (= e!846727 (dynLambda!5878 lambda!53916 (h!18771 rules!2550)))))

(declare-fun b!1321285 () Bool)

(declare-fun e!846724 () Bool)

(declare-fun lt!436164 () Rule!4426)

(assert (=> b!1321285 (= e!846724 (contains!2356 rules!2550 lt!436164))))

(declare-fun b!1321286 () Bool)

(declare-fun lt!436165 () Unit!19448)

(declare-fun Unit!19453 () Unit!19448)

(assert (=> b!1321286 (= lt!436165 Unit!19453)))

(assert (=> b!1321286 false))

(declare-fun e!846726 () Rule!4426)

(declare-fun head!2292 (List!13436) Rule!4426)

(assert (=> b!1321286 (= e!846726 (head!2292 rules!2550))))

(declare-fun b!1321287 () Bool)

(assert (=> b!1321287 (= e!846726 (getWitness!221 (t!118593 rules!2550) lambda!53916))))

(declare-fun b!1321288 () Bool)

(assert (=> b!1321288 (= e!846725 e!846726)))

(declare-fun c!216967 () Bool)

(assert (=> b!1321288 (= c!216967 ((_ is Cons!13370) rules!2550))))

(declare-fun d!373309 () Bool)

(assert (=> d!373309 e!846724))

(declare-fun res!593862 () Bool)

(assert (=> d!373309 (=> (not res!593862) (not e!846724))))

(assert (=> d!373309 (= res!593862 (dynLambda!5878 lambda!53916 lt!436164))))

(assert (=> d!373309 (= lt!436164 e!846725)))

(declare-fun c!216966 () Bool)

(assert (=> d!373309 (= c!216966 e!846727)))

(declare-fun res!593863 () Bool)

(assert (=> d!373309 (=> (not res!593863) (not e!846727))))

(assert (=> d!373309 (= res!593863 ((_ is Cons!13370) rules!2550))))

(assert (=> d!373309 (exists!328 rules!2550 lambda!53916)))

(assert (=> d!373309 (= (getWitness!221 rules!2550 lambda!53916) lt!436164)))

(assert (= (and d!373309 res!593863) b!1321284))

(assert (= (and d!373309 c!216966) b!1321283))

(assert (= (and d!373309 (not c!216966)) b!1321288))

(assert (= (and b!1321288 c!216967) b!1321287))

(assert (= (and b!1321288 (not c!216967)) b!1321286))

(assert (= (and d!373309 res!593862) b!1321285))

(declare-fun b_lambda!38569 () Bool)

(assert (=> (not b_lambda!38569) (not b!1321284)))

(declare-fun b_lambda!38571 () Bool)

(assert (=> (not b_lambda!38571) (not d!373309)))

(declare-fun m!1477423 () Bool)

(assert (=> d!373309 m!1477423))

(assert (=> d!373309 m!1476341))

(declare-fun m!1477425 () Bool)

(assert (=> b!1321284 m!1477425))

(declare-fun m!1477427 () Bool)

(assert (=> b!1321287 m!1477427))

(declare-fun m!1477429 () Bool)

(assert (=> b!1321285 m!1477429))

(declare-fun m!1477431 () Bool)

(assert (=> b!1321286 m!1477431))

(assert (=> b!1320537 d!373309))

(declare-fun b!1321289 () Bool)

(declare-fun e!846728 () Bool)

(declare-fun lt!436166 () tuple2!13000)

(assert (=> b!1321289 (= e!846728 (not (isEmpty!7952 (_1!7386 lt!436166))))))

(declare-fun b!1321290 () Bool)

(declare-fun e!846730 () Bool)

(assert (=> b!1321290 (= e!846730 e!846728)))

(declare-fun res!593864 () Bool)

(assert (=> b!1321290 (= res!593864 (< (size!10884 (_2!7386 lt!436166)) (size!10884 lt!435890)))))

(assert (=> b!1321290 (=> (not res!593864) (not e!846728))))

(declare-fun e!846729 () Bool)

(declare-fun b!1321291 () Bool)

(assert (=> b!1321291 (= e!846729 (= (list!5046 (_2!7386 lt!436166)) (_2!7387 (lexList!546 thiss!19762 rules!2550 (list!5046 lt!435890)))))))

(declare-fun b!1321292 () Bool)

(assert (=> b!1321292 (= e!846730 (= (_2!7386 lt!436166) lt!435890))))

(declare-fun b!1321293 () Bool)

(declare-fun res!593866 () Bool)

(assert (=> b!1321293 (=> (not res!593866) (not e!846729))))

(assert (=> b!1321293 (= res!593866 (= (list!5047 (_1!7386 lt!436166)) (_1!7387 (lexList!546 thiss!19762 rules!2550 (list!5046 lt!435890)))))))

(declare-fun d!373311 () Bool)

(assert (=> d!373311 e!846729))

(declare-fun res!593865 () Bool)

(assert (=> d!373311 (=> (not res!593865) (not e!846729))))

(assert (=> d!373311 (= res!593865 e!846730)))

(declare-fun c!216968 () Bool)

(assert (=> d!373311 (= c!216968 (> (size!10894 (_1!7386 lt!436166)) 0))))

(assert (=> d!373311 (= lt!436166 (lexTailRecV2!369 thiss!19762 rules!2550 lt!435890 (BalanceConc!8733 Empty!4396) lt!435890 (BalanceConc!8735 Empty!4397)))))

(assert (=> d!373311 (= (lex!843 thiss!19762 rules!2550 lt!435890) lt!436166)))

(assert (= (and d!373311 c!216968) b!1321290))

(assert (= (and d!373311 (not c!216968)) b!1321292))

(assert (= (and b!1321290 res!593864) b!1321289))

(assert (= (and d!373311 res!593865) b!1321293))

(assert (= (and b!1321293 res!593866) b!1321291))

(declare-fun m!1477433 () Bool)

(assert (=> b!1321293 m!1477433))

(assert (=> b!1321293 m!1476347))

(assert (=> b!1321293 m!1476347))

(assert (=> b!1321293 m!1476349))

(declare-fun m!1477435 () Bool)

(assert (=> b!1321289 m!1477435))

(declare-fun m!1477437 () Bool)

(assert (=> d!373311 m!1477437))

(declare-fun m!1477439 () Bool)

(assert (=> d!373311 m!1477439))

(declare-fun m!1477441 () Bool)

(assert (=> b!1321290 m!1477441))

(declare-fun m!1477443 () Bool)

(assert (=> b!1321290 m!1477443))

(declare-fun m!1477445 () Bool)

(assert (=> b!1321291 m!1477445))

(assert (=> b!1321291 m!1476347))

(assert (=> b!1321291 m!1476347))

(assert (=> b!1321291 m!1476349))

(assert (=> b!1320537 d!373311))

(declare-fun d!373313 () Bool)

(assert (=> d!373313 (= (list!5047 (_1!7386 lt!435897)) (list!5051 (c!216816 (_1!7386 lt!435897))))))

(declare-fun bs!331086 () Bool)

(assert (= bs!331086 d!373313))

(declare-fun m!1477447 () Bool)

(assert (=> bs!331086 m!1477447))

(assert (=> b!1320537 d!373313))

(declare-fun d!373315 () Bool)

(declare-fun e!846731 () Bool)

(assert (=> d!373315 e!846731))

(declare-fun res!593867 () Bool)

(assert (=> d!373315 (=> (not res!593867) (not e!846731))))

(declare-fun lt!436167 () BalanceConc!8734)

(assert (=> d!373315 (= res!593867 (= (list!5047 lt!436167) (Cons!13371 t1!34 Nil!13371)))))

(assert (=> d!373315 (= lt!436167 (singleton!390 t1!34))))

(assert (=> d!373315 (= (singletonSeq!896 t1!34) lt!436167)))

(declare-fun b!1321294 () Bool)

(assert (=> b!1321294 (= e!846731 (isBalanced!1284 (c!216816 lt!436167)))))

(assert (= (and d!373315 res!593867) b!1321294))

(declare-fun m!1477449 () Bool)

(assert (=> d!373315 m!1477449))

(declare-fun m!1477451 () Bool)

(assert (=> d!373315 m!1477451))

(declare-fun m!1477453 () Bool)

(assert (=> b!1321294 m!1477453))

(assert (=> b!1320537 d!373315))

(declare-fun d!373317 () Bool)

(assert (=> d!373317 (= (inv!17745 (tag!2575 (h!18771 rules!2550))) (= (mod (str.len (value!75552 (tag!2575 (h!18771 rules!2550)))) 2) 0))))

(assert (=> b!1320516 d!373317))

(declare-fun d!373319 () Bool)

(declare-fun res!593868 () Bool)

(declare-fun e!846732 () Bool)

(assert (=> d!373319 (=> (not res!593868) (not e!846732))))

(assert (=> d!373319 (= res!593868 (semiInverseModEq!872 (toChars!3403 (transformation!2313 (h!18771 rules!2550))) (toValue!3544 (transformation!2313 (h!18771 rules!2550)))))))

(assert (=> d!373319 (= (inv!17748 (transformation!2313 (h!18771 rules!2550))) e!846732)))

(declare-fun b!1321295 () Bool)

(assert (=> b!1321295 (= e!846732 (equivClasses!831 (toChars!3403 (transformation!2313 (h!18771 rules!2550))) (toValue!3544 (transformation!2313 (h!18771 rules!2550)))))))

(assert (= (and d!373319 res!593868) b!1321295))

(declare-fun m!1477455 () Bool)

(assert (=> d!373319 m!1477455))

(declare-fun m!1477457 () Bool)

(assert (=> b!1321295 m!1477457))

(assert (=> b!1320516 d!373319))

(declare-fun d!373321 () Bool)

(declare-fun lt!436168 () Bool)

(assert (=> d!373321 (= lt!436168 (isEmpty!7948 (list!5046 (_2!7386 lt!435903))))))

(assert (=> d!373321 (= lt!436168 (isEmpty!7951 (c!216814 (_2!7386 lt!435903))))))

(assert (=> d!373321 (= (isEmpty!7942 (_2!7386 lt!435903)) lt!436168)))

(declare-fun bs!331087 () Bool)

(assert (= bs!331087 d!373321))

(declare-fun m!1477459 () Bool)

(assert (=> bs!331087 m!1477459))

(assert (=> bs!331087 m!1477459))

(declare-fun m!1477461 () Bool)

(assert (=> bs!331087 m!1477461))

(declare-fun m!1477463 () Bool)

(assert (=> bs!331087 m!1477463))

(assert (=> b!1320517 d!373321))

(declare-fun b!1321308 () Bool)

(declare-fun e!846735 () Bool)

(declare-fun tp!383601 () Bool)

(assert (=> b!1321308 (= e!846735 tp!383601)))

(declare-fun b!1321306 () Bool)

(declare-fun tp_is_empty!6635 () Bool)

(assert (=> b!1321306 (= e!846735 tp_is_empty!6635)))

(assert (=> b!1320528 (= tp!383540 e!846735)))

(declare-fun b!1321309 () Bool)

(declare-fun tp!383604 () Bool)

(declare-fun tp!383602 () Bool)

(assert (=> b!1321309 (= e!846735 (and tp!383604 tp!383602))))

(declare-fun b!1321307 () Bool)

(declare-fun tp!383603 () Bool)

(declare-fun tp!383600 () Bool)

(assert (=> b!1321307 (= e!846735 (and tp!383603 tp!383600))))

(assert (= (and b!1320528 ((_ is ElementMatch!3627) (regex!2313 (rule!4058 t1!34)))) b!1321306))

(assert (= (and b!1320528 ((_ is Concat!6031) (regex!2313 (rule!4058 t1!34)))) b!1321307))

(assert (= (and b!1320528 ((_ is Star!3627) (regex!2313 (rule!4058 t1!34)))) b!1321308))

(assert (= (and b!1320528 ((_ is Union!3627) (regex!2313 (rule!4058 t1!34)))) b!1321309))

(declare-fun b!1321314 () Bool)

(declare-fun e!846738 () Bool)

(declare-fun tp!383607 () Bool)

(assert (=> b!1321314 (= e!846738 (and tp_is_empty!6635 tp!383607))))

(assert (=> b!1320497 (= tp!383537 e!846738)))

(assert (= (and b!1320497 ((_ is Cons!13368) (originalCharacters!3175 t1!34))) b!1321314))

(declare-fun b!1321315 () Bool)

(declare-fun e!846739 () Bool)

(declare-fun tp!383608 () Bool)

(assert (=> b!1321315 (= e!846739 (and tp_is_empty!6635 tp!383608))))

(assert (=> b!1320504 (= tp!383535 e!846739)))

(assert (= (and b!1320504 ((_ is Cons!13368) (originalCharacters!3175 t2!34))) b!1321315))

(declare-fun b!1321318 () Bool)

(declare-fun e!846740 () Bool)

(declare-fun tp!383610 () Bool)

(assert (=> b!1321318 (= e!846740 tp!383610)))

(declare-fun b!1321316 () Bool)

(assert (=> b!1321316 (= e!846740 tp_is_empty!6635)))

(assert (=> b!1320511 (= tp!383539 e!846740)))

(declare-fun b!1321319 () Bool)

(declare-fun tp!383613 () Bool)

(declare-fun tp!383611 () Bool)

(assert (=> b!1321319 (= e!846740 (and tp!383613 tp!383611))))

(declare-fun b!1321317 () Bool)

(declare-fun tp!383612 () Bool)

(declare-fun tp!383609 () Bool)

(assert (=> b!1321317 (= e!846740 (and tp!383612 tp!383609))))

(assert (= (and b!1320511 ((_ is ElementMatch!3627) (regex!2313 (rule!4058 t2!34)))) b!1321316))

(assert (= (and b!1320511 ((_ is Concat!6031) (regex!2313 (rule!4058 t2!34)))) b!1321317))

(assert (= (and b!1320511 ((_ is Star!3627) (regex!2313 (rule!4058 t2!34)))) b!1321318))

(assert (= (and b!1320511 ((_ is Union!3627) (regex!2313 (rule!4058 t2!34)))) b!1321319))

(declare-fun b!1321322 () Bool)

(declare-fun e!846741 () Bool)

(declare-fun tp!383615 () Bool)

(assert (=> b!1321322 (= e!846741 tp!383615)))

(declare-fun b!1321320 () Bool)

(assert (=> b!1321320 (= e!846741 tp_is_empty!6635)))

(assert (=> b!1320516 (= tp!383533 e!846741)))

(declare-fun b!1321323 () Bool)

(declare-fun tp!383618 () Bool)

(declare-fun tp!383616 () Bool)

(assert (=> b!1321323 (= e!846741 (and tp!383618 tp!383616))))

(declare-fun b!1321321 () Bool)

(declare-fun tp!383617 () Bool)

(declare-fun tp!383614 () Bool)

(assert (=> b!1321321 (= e!846741 (and tp!383617 tp!383614))))

(assert (= (and b!1320516 ((_ is ElementMatch!3627) (regex!2313 (h!18771 rules!2550)))) b!1321320))

(assert (= (and b!1320516 ((_ is Concat!6031) (regex!2313 (h!18771 rules!2550)))) b!1321321))

(assert (= (and b!1320516 ((_ is Star!3627) (regex!2313 (h!18771 rules!2550)))) b!1321322))

(assert (= (and b!1320516 ((_ is Union!3627) (regex!2313 (h!18771 rules!2550)))) b!1321323))

(declare-fun b!1321334 () Bool)

(declare-fun b_free!31811 () Bool)

(declare-fun b_next!32515 () Bool)

(assert (=> b!1321334 (= b_free!31811 (not b_next!32515))))

(declare-fun tp!383629 () Bool)

(declare-fun b_and!88239 () Bool)

(assert (=> b!1321334 (= tp!383629 b_and!88239)))

(declare-fun b_free!31813 () Bool)

(declare-fun b_next!32517 () Bool)

(assert (=> b!1321334 (= b_free!31813 (not b_next!32517))))

(declare-fun t!118630 () Bool)

(declare-fun tb!70141 () Bool)

(assert (=> (and b!1321334 (= (toChars!3403 (transformation!2313 (h!18771 (t!118593 rules!2550)))) (toChars!3403 (transformation!2313 (rule!4058 t1!34)))) t!118630) tb!70141))

(declare-fun result!85122 () Bool)

(assert (= result!85122 result!85078))

(assert (=> b!1320641 t!118630))

(declare-fun tb!70143 () Bool)

(declare-fun t!118632 () Bool)

(assert (=> (and b!1321334 (= (toChars!3403 (transformation!2313 (h!18771 (t!118593 rules!2550)))) (toChars!3403 (transformation!2313 (rule!4058 t2!34)))) t!118632) tb!70143))

(declare-fun result!85124 () Bool)

(assert (= result!85124 result!85086))

(assert (=> b!1320648 t!118632))

(assert (=> d!373053 t!118632))

(assert (=> d!373113 t!118630))

(declare-fun b_and!88241 () Bool)

(declare-fun tp!383630 () Bool)

(assert (=> b!1321334 (= tp!383630 (and (=> t!118630 result!85122) (=> t!118632 result!85124) b_and!88241))))

(declare-fun e!846750 () Bool)

(assert (=> b!1321334 (= e!846750 (and tp!383629 tp!383630))))

(declare-fun e!846751 () Bool)

(declare-fun tp!383627 () Bool)

(declare-fun b!1321333 () Bool)

(assert (=> b!1321333 (= e!846751 (and tp!383627 (inv!17745 (tag!2575 (h!18771 (t!118593 rules!2550)))) (inv!17748 (transformation!2313 (h!18771 (t!118593 rules!2550)))) e!846750))))

(declare-fun b!1321332 () Bool)

(declare-fun e!846753 () Bool)

(declare-fun tp!383628 () Bool)

(assert (=> b!1321332 (= e!846753 (and e!846751 tp!383628))))

(assert (=> b!1320533 (= tp!383530 e!846753)))

(assert (= b!1321333 b!1321334))

(assert (= b!1321332 b!1321333))

(assert (= (and b!1320533 ((_ is Cons!13370) (t!118593 rules!2550))) b!1321332))

(declare-fun m!1477465 () Bool)

(assert (=> b!1321333 m!1477465))

(declare-fun m!1477467 () Bool)

(assert (=> b!1321333 m!1477467))

(declare-fun b_lambda!38573 () Bool)

(assert (= b_lambda!38497 (or (and b!1320503 b_free!31797 (= (toChars!3403 (transformation!2313 (h!18771 rules!2550))) (toChars!3403 (transformation!2313 (rule!4058 t2!34))))) (and b!1320521 b_free!31801) (and b!1320507 b_free!31805 (= (toChars!3403 (transformation!2313 (rule!4058 t1!34))) (toChars!3403 (transformation!2313 (rule!4058 t2!34))))) (and b!1321334 b_free!31813 (= (toChars!3403 (transformation!2313 (h!18771 (t!118593 rules!2550)))) (toChars!3403 (transformation!2313 (rule!4058 t2!34))))) b_lambda!38573)))

(declare-fun b_lambda!38575 () Bool)

(assert (= b_lambda!38513 (or (and b!1320503 b_free!31797 (= (toChars!3403 (transformation!2313 (h!18771 rules!2550))) (toChars!3403 (transformation!2313 (rule!4058 t1!34))))) (and b!1320521 b_free!31801 (= (toChars!3403 (transformation!2313 (rule!4058 t2!34))) (toChars!3403 (transformation!2313 (rule!4058 t1!34))))) (and b!1320507 b_free!31805) (and b!1321334 b_free!31813 (= (toChars!3403 (transformation!2313 (h!18771 (t!118593 rules!2550)))) (toChars!3403 (transformation!2313 (rule!4058 t1!34))))) b_lambda!38575)))

(declare-fun b_lambda!38577 () Bool)

(assert (= b_lambda!38565 (or b!1320512 b_lambda!38577)))

(declare-fun bs!331088 () Bool)

(declare-fun d!373323 () Bool)

(assert (= bs!331088 (and d!373323 b!1320512)))

(declare-fun ruleValid!566 (LexerInterface!2008 Rule!4426) Bool)

(assert (=> bs!331088 (= (dynLambda!5878 lambda!53917 (rule!4058 t1!34)) (ruleValid!566 thiss!19762 (rule!4058 t1!34)))))

(declare-fun m!1477469 () Bool)

(assert (=> bs!331088 m!1477469))

(assert (=> d!373287 d!373323))

(declare-fun b_lambda!38579 () Bool)

(assert (= b_lambda!38555 (or b!1320524 b_lambda!38579)))

(declare-fun bs!331089 () Bool)

(declare-fun d!373325 () Bool)

(assert (= bs!331089 (and d!373325 b!1320524)))

(declare-fun res!593869 () Bool)

(declare-fun e!846754 () Bool)

(assert (=> bs!331089 (=> (not res!593869) (not e!846754))))

(assert (=> bs!331089 (= res!593869 (matchR!1629 lt!435888 lt!436110))))

(assert (=> bs!331089 (= (dynLambda!5874 lambda!53913 lt!436110) e!846754)))

(declare-fun b!1321335 () Bool)

(assert (=> b!1321335 (= e!846754 (isPrefix!1078 lt!435905 lt!436110))))

(assert (= (and bs!331089 res!593869) b!1321335))

(declare-fun m!1477471 () Bool)

(assert (=> bs!331089 m!1477471))

(declare-fun m!1477473 () Bool)

(assert (=> b!1321335 m!1477473))

(assert (=> d!373245 d!373325))

(declare-fun b_lambda!38581 () Bool)

(assert (= b_lambda!38567 (or b!1320512 b_lambda!38581)))

(declare-fun bs!331090 () Bool)

(declare-fun d!373327 () Bool)

(assert (= bs!331090 (and d!373327 b!1320512)))

(assert (=> bs!331090 (= (dynLambda!5878 lambda!53917 lt!435892) (ruleValid!566 thiss!19762 lt!435892))))

(declare-fun m!1477475 () Bool)

(assert (=> bs!331090 m!1477475))

(assert (=> d!373289 d!373327))

(declare-fun b_lambda!38583 () Bool)

(assert (= b_lambda!38571 (or b!1320518 b_lambda!38583)))

(declare-fun bs!331091 () Bool)

(declare-fun d!373329 () Bool)

(assert (= bs!331091 (and d!373329 b!1320518)))

(assert (=> bs!331091 (= (dynLambda!5878 lambda!53916 lt!436164) (= (regex!2313 lt!436164) lt!435906))))

(assert (=> d!373309 d!373329))

(declare-fun b_lambda!38585 () Bool)

(assert (= b_lambda!38563 (or b!1320512 b_lambda!38585)))

(declare-fun bs!331092 () Bool)

(declare-fun d!373331 () Bool)

(assert (= bs!331092 (and d!373331 b!1320512)))

(assert (=> bs!331092 (= (dynLambda!5878 lambda!53917 (rule!4058 t2!34)) (ruleValid!566 thiss!19762 (rule!4058 t2!34)))))

(declare-fun m!1477477 () Bool)

(assert (=> bs!331092 m!1477477))

(assert (=> d!373285 d!373331))

(declare-fun b_lambda!38587 () Bool)

(assert (= b_lambda!38495 (or (and b!1320503 b_free!31797 (= (toChars!3403 (transformation!2313 (h!18771 rules!2550))) (toChars!3403 (transformation!2313 (rule!4058 t1!34))))) (and b!1320521 b_free!31801 (= (toChars!3403 (transformation!2313 (rule!4058 t2!34))) (toChars!3403 (transformation!2313 (rule!4058 t1!34))))) (and b!1320507 b_free!31805) (and b!1321334 b_free!31813 (= (toChars!3403 (transformation!2313 (h!18771 (t!118593 rules!2550)))) (toChars!3403 (transformation!2313 (rule!4058 t1!34))))) b_lambda!38587)))

(declare-fun b_lambda!38589 () Bool)

(assert (= b_lambda!38499 (or (and b!1320503 b_free!31797 (= (toChars!3403 (transformation!2313 (h!18771 rules!2550))) (toChars!3403 (transformation!2313 (rule!4058 t2!34))))) (and b!1320521 b_free!31801) (and b!1320507 b_free!31805 (= (toChars!3403 (transformation!2313 (rule!4058 t1!34))) (toChars!3403 (transformation!2313 (rule!4058 t2!34))))) (and b!1321334 b_free!31813 (= (toChars!3403 (transformation!2313 (h!18771 (t!118593 rules!2550)))) (toChars!3403 (transformation!2313 (rule!4058 t2!34))))) b_lambda!38589)))

(declare-fun b_lambda!38591 () Bool)

(assert (= b_lambda!38561 (or b!1320532 b_lambda!38591)))

(declare-fun bs!331093 () Bool)

(declare-fun d!373333 () Bool)

(assert (= bs!331093 (and d!373333 b!1320532)))

(declare-fun res!593870 () Bool)

(declare-fun e!846755 () Bool)

(assert (=> bs!331093 (=> (not res!593870) (not e!846755))))

(assert (=> bs!331093 (= res!593870 (validRegex!1553 (h!18773 (map!2936 rules!2550 lambda!53914))))))

(assert (=> bs!331093 (= (dynLambda!5876 lambda!53915 (h!18773 (map!2936 rules!2550 lambda!53914))) e!846755)))

(declare-fun b!1321336 () Bool)

(assert (=> b!1321336 (= e!846755 (matchR!1629 (h!18773 (map!2936 rules!2550 lambda!53914)) lt!435901))))

(assert (= (and bs!331093 res!593870) b!1321336))

(declare-fun m!1477479 () Bool)

(assert (=> bs!331093 m!1477479))

(declare-fun m!1477481 () Bool)

(assert (=> b!1321336 m!1477481))

(assert (=> b!1321138 d!373333))

(declare-fun b_lambda!38593 () Bool)

(assert (= b_lambda!38557 (or b!1320532 b_lambda!38593)))

(declare-fun bs!331094 () Bool)

(declare-fun d!373335 () Bool)

(assert (= bs!331094 (and d!373335 b!1320532)))

(assert (=> bs!331094 (= (dynLambda!5875 lambda!53914 (h!18771 rules!2550)) (regex!2313 (h!18771 rules!2550)))))

(assert (=> b!1321120 d!373335))

(declare-fun b_lambda!38595 () Bool)

(assert (= b_lambda!38559 (or b!1320532 b_lambda!38595)))

(declare-fun bs!331095 () Bool)

(declare-fun d!373337 () Bool)

(assert (= bs!331095 (and d!373337 b!1320532)))

(declare-fun res!593871 () Bool)

(declare-fun e!846756 () Bool)

(assert (=> bs!331095 (=> (not res!593871) (not e!846756))))

(assert (=> bs!331095 (= res!593871 (validRegex!1553 lt!436122))))

(assert (=> bs!331095 (= (dynLambda!5876 lambda!53915 lt!436122) e!846756)))

(declare-fun b!1321337 () Bool)

(assert (=> b!1321337 (= e!846756 (matchR!1629 lt!436122 lt!435901))))

(assert (= (and bs!331095 res!593871) b!1321337))

(declare-fun m!1477483 () Bool)

(assert (=> bs!331095 m!1477483))

(declare-fun m!1477485 () Bool)

(assert (=> b!1321337 m!1477485))

(assert (=> d!373251 d!373337))

(declare-fun b_lambda!38597 () Bool)

(assert (= b_lambda!38569 (or b!1320518 b_lambda!38597)))

(declare-fun bs!331096 () Bool)

(declare-fun d!373339 () Bool)

(assert (= bs!331096 (and d!373339 b!1320518)))

(assert (=> bs!331096 (= (dynLambda!5878 lambda!53916 (h!18771 rules!2550)) (= (regex!2313 (h!18771 rules!2550)) lt!435906))))

(assert (=> b!1321284 d!373339))

(check-sat (not d!373169) (not d!373313) (not b_lambda!38583) b_and!88205 (not b_lambda!38589) (not b!1321199) (not b!1321085) (not d!373321) (not d!373307) (not b!1321189) (not b!1321233) (not b_next!32507) (not b!1320647) (not b!1321194) (not b!1321186) (not b!1321183) (not d!373115) (not b!1320956) (not d!373253) (not b!1321314) (not b!1321319) (not d!373291) (not b!1321241) (not b!1321195) (not b!1321120) (not b!1320781) (not d!373173) (not b!1321307) (not b!1321225) (not b!1321322) (not b_lambda!38585) (not b!1321257) (not d!373105) (not d!373179) (not tb!70113) (not d!373301) (not b_lambda!38595) (not b!1321294) tp_is_empty!6635 (not bm!89692) (not b!1321114) (not bs!331092) (not d!373037) (not b!1321335) (not d!373259) (not b!1320692) (not b!1321179) (not b!1321215) (not b!1321308) (not b!1321190) (not b!1321332) (not d!373103) (not d!373241) (not b!1321270) (not d!373183) (not b!1321219) (not bs!331090) (not d!373175) (not b!1320693) b_and!88175 (not b!1321230) (not b_next!32509) (not b!1321094) (not b_lambda!38591) (not b!1321309) (not d!373087) (not b_lambda!38575) (not d!373067) (not b!1321098) (not b!1320642) (not d!373247) (not d!373309) (not d!373053) (not d!373289) (not d!373245) (not d!373049) (not d!373319) (not b!1320650) (not b!1321092) (not b!1321287) (not b!1320955) (not b!1320959) (not d!373261) (not b!1320919) (not d!373311) (not b!1321262) (not d!373263) (not d!373285) (not b!1321227) (not bm!89665) (not b!1321321) (not d!373275) (not d!373283) (not b_next!32517) (not b!1321192) (not b!1320691) (not bm!89694) (not b!1321286) (not bm!89668) (not d!373237) (not d!373265) (not d!373267) (not bs!331093) (not b!1321090) (not b!1321201) (not b!1320825) (not b_next!32499) (not d!373299) (not bm!89691) (not b!1321212) (not b!1321264) (not d!373233) (not d!373251) (not b!1320957) (not d!373099) (not d!373269) (not b!1320795) b_and!88239 (not b!1320954) (not b!1320746) (not b!1321202) (not b!1321236) (not b!1321134) (not b!1320641) (not b_lambda!38597) (not b!1321285) (not b!1321184) (not b!1321191) (not b!1321093) (not b_next!32515) (not d!373239) b_and!88183 (not d!373113) (not d!373249) (not d!373293) (not b!1321240) (not b!1321087) (not d!373287) (not d!373279) (not d!373231) (not b!1321315) (not d!373271) (not b!1321196) (not b_lambda!38581) (not bs!331089) (not b!1321193) (not d!373281) (not b!1321176) (not b!1321140) (not d!373303) (not b!1321083) (not b!1321289) (not d!373297) (not b!1321269) (not b_lambda!38573) b_and!88209 (not b!1321243) (not b!1321101) (not b!1320967) (not b_lambda!38593) (not b!1320917) (not bm!89666) (not b!1320780) (not b!1321107) (not b!1321333) (not b_next!32505) (not b!1321188) (not b!1320961) (not b!1321216) (not b!1320648) (not b!1321084) (not tb!70119) (not b_next!32503) (not d!373089) (not b!1321143) (not b!1321291) (not b!1320918) (not b!1320958) (not b!1321209) (not b!1320953) (not b!1321293) (not b_lambda!38579) (not b!1321135) (not d!373161) (not b!1321295) (not b!1321100) (not b!1321290) (not b!1321337) (not b!1321137) (not b_lambda!38587) (not b_next!32501) (not bm!89687) b_and!88179 (not bm!89693) (not b!1321323) (not d!373257) (not b!1321239) (not d!373051) (not d!373243) (not b!1321259) (not b!1321145) (not d!373127) (not d!373295) (not d!373165) (not b!1321182) (not b!1321261) (not d!373315) (not b!1321197) (not b!1321256) (not b!1321224) (not d!373079) (not b!1320796) (not b_lambda!38577) (not b!1321217) (not b!1321223) (not d!373277) (not bs!331095) b_and!88207 (not b!1320649) (not b!1321097) (not d!373101) b_and!88241 (not b!1321318) (not b!1321317) (not b!1321336) (not bs!331088))
(check-sat b_and!88205 (not b_next!32507) (not b_next!32517) (not b_next!32499) b_and!88239 b_and!88209 (not b_next!32505) (not b_next!32503) b_and!88207 b_and!88241 b_and!88175 (not b_next!32509) (not b_next!32515) b_and!88183 (not b_next!32501) b_and!88179)
