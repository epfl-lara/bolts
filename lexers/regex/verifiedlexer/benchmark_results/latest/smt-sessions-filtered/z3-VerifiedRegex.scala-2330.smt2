; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115050 () Bool)

(assert start!115050)

(declare-fun b!1303591 () Bool)

(declare-fun b_free!31179 () Bool)

(declare-fun b_next!31883 () Bool)

(assert (=> b!1303591 (= b_free!31179 (not b_next!31883))))

(declare-fun tp!380502 () Bool)

(declare-fun b_and!87031 () Bool)

(assert (=> b!1303591 (= tp!380502 b_and!87031)))

(declare-fun b_free!31181 () Bool)

(declare-fun b_next!31885 () Bool)

(assert (=> b!1303591 (= b_free!31181 (not b_next!31885))))

(declare-fun tp!380504 () Bool)

(declare-fun b_and!87033 () Bool)

(assert (=> b!1303591 (= tp!380504 b_and!87033)))

(declare-fun b!1303609 () Bool)

(declare-fun b_free!31183 () Bool)

(declare-fun b_next!31887 () Bool)

(assert (=> b!1303609 (= b_free!31183 (not b_next!31887))))

(declare-fun tp!380499 () Bool)

(declare-fun b_and!87035 () Bool)

(assert (=> b!1303609 (= tp!380499 b_and!87035)))

(declare-fun b_free!31185 () Bool)

(declare-fun b_next!31889 () Bool)

(assert (=> b!1303609 (= b_free!31185 (not b_next!31889))))

(declare-fun tp!380501 () Bool)

(declare-fun b_and!87037 () Bool)

(assert (=> b!1303609 (= tp!380501 b_and!87037)))

(declare-fun b!1303582 () Bool)

(declare-fun b_free!31187 () Bool)

(declare-fun b_next!31891 () Bool)

(assert (=> b!1303582 (= b_free!31187 (not b_next!31891))))

(declare-fun tp!380496 () Bool)

(declare-fun b_and!87039 () Bool)

(assert (=> b!1303582 (= tp!380496 b_and!87039)))

(declare-fun b_free!31189 () Bool)

(declare-fun b_next!31893 () Bool)

(assert (=> b!1303582 (= b_free!31189 (not b_next!31893))))

(declare-fun tp!380495 () Bool)

(declare-fun b_and!87041 () Bool)

(assert (=> b!1303582 (= tp!380495 b_and!87041)))

(declare-fun b!1303605 () Bool)

(assert (=> b!1303605 true))

(assert (=> b!1303605 true))

(declare-fun b!1303596 () Bool)

(assert (=> b!1303596 true))

(declare-fun b!1303585 () Bool)

(assert (=> b!1303585 true))

(declare-fun b!1303580 () Bool)

(declare-fun res!584281 () Bool)

(declare-fun e!835978 () Bool)

(assert (=> b!1303580 (=> (not res!584281) (not e!835978))))

(declare-datatypes ((List!13192 0))(
  ( (Nil!13126) (Cons!13126 (h!18527 (_ BitVec 16)) (t!117753 List!13192)) )
))
(declare-datatypes ((TokenValue!2359 0))(
  ( (FloatLiteralValue!4718 (text!16958 List!13192)) (TokenValueExt!2358 (__x!8547 Int)) (Broken!11795 (value!74273 List!13192)) (Object!2424) (End!2359) (Def!2359) (Underscore!2359) (Match!2359) (Else!2359) (Error!2359) (Case!2359) (If!2359) (Extends!2359) (Abstract!2359) (Class!2359) (Val!2359) (DelimiterValue!4718 (del!2419 List!13192)) (KeywordValue!2365 (value!74274 List!13192)) (CommentValue!4718 (value!74275 List!13192)) (WhitespaceValue!4718 (value!74276 List!13192)) (IndentationValue!2359 (value!74277 List!13192)) (String!16030) (Int32!2359) (Broken!11796 (value!74278 List!13192)) (Boolean!2360) (Unit!19227) (OperatorValue!2362 (op!2419 List!13192)) (IdentifierValue!4718 (value!74279 List!13192)) (IdentifierValue!4719 (value!74280 List!13192)) (WhitespaceValue!4719 (value!74281 List!13192)) (True!4718) (False!4718) (Broken!11797 (value!74282 List!13192)) (Broken!11798 (value!74283 List!13192)) (True!4719) (RightBrace!2359) (RightBracket!2359) (Colon!2359) (Null!2359) (Comma!2359) (LeftBracket!2359) (False!4719) (LeftBrace!2359) (ImaginaryLiteralValue!2359 (text!16959 List!13192)) (StringLiteralValue!7077 (value!74284 List!13192)) (EOFValue!2359 (value!74285 List!13192)) (IdentValue!2359 (value!74286 List!13192)) (DelimiterValue!4719 (value!74287 List!13192)) (DedentValue!2359 (value!74288 List!13192)) (NewLineValue!2359 (value!74289 List!13192)) (IntegerValue!7077 (value!74290 (_ BitVec 32)) (text!16960 List!13192)) (IntegerValue!7078 (value!74291 Int) (text!16961 List!13192)) (Times!2359) (Or!2359) (Equal!2359) (Minus!2359) (Broken!11799 (value!74292 List!13192)) (And!2359) (Div!2359) (LessEqual!2359) (Mod!2359) (Concat!5942) (Not!2359) (Plus!2359) (SpaceValue!2359 (value!74293 List!13192)) (IntegerValue!7079 (value!74294 Int) (text!16962 List!13192)) (StringLiteralValue!7078 (text!16963 List!13192)) (FloatLiteralValue!4719 (text!16964 List!13192)) (BytesLiteralValue!2359 (value!74295 List!13192)) (CommentValue!4719 (value!74296 List!13192)) (StringLiteralValue!7079 (value!74297 List!13192)) (ErrorTokenValue!2359 (msg!2420 List!13192)) )
))
(declare-datatypes ((C!7456 0))(
  ( (C!7457 (val!4288 Int)) )
))
(declare-datatypes ((List!13193 0))(
  ( (Nil!13127) (Cons!13127 (h!18528 C!7456) (t!117754 List!13193)) )
))
(declare-datatypes ((IArray!8621 0))(
  ( (IArray!8622 (innerList!4368 List!13193)) )
))
(declare-datatypes ((Conc!4308 0))(
  ( (Node!4308 (left!11288 Conc!4308) (right!11618 Conc!4308) (csize!8846 Int) (cheight!4519 Int)) (Leaf!6639 (xs!7023 IArray!8621) (csize!8847 Int)) (Empty!4308) )
))
(declare-datatypes ((BalanceConc!8556 0))(
  ( (BalanceConc!8557 (c!214270 Conc!4308)) )
))
(declare-datatypes ((Regex!3583 0))(
  ( (ElementMatch!3583 (c!214271 C!7456)) (Concat!5943 (regOne!7678 Regex!3583) (regTwo!7678 Regex!3583)) (EmptyExpr!3583) (Star!3583 (reg!3912 Regex!3583)) (EmptyLang!3583) (Union!3583 (regOne!7679 Regex!3583) (regTwo!7679 Regex!3583)) )
))
(declare-datatypes ((String!16031 0))(
  ( (String!16032 (value!74298 String)) )
))
(declare-datatypes ((TokenValueInjection!4378 0))(
  ( (TokenValueInjection!4379 (toValue!3484 Int) (toChars!3343 Int)) )
))
(declare-datatypes ((Rule!4338 0))(
  ( (Rule!4339 (regex!2269 Regex!3583) (tag!2531 String!16031) (isSeparator!2269 Bool) (transformation!2269 TokenValueInjection!4378)) )
))
(declare-datatypes ((List!13194 0))(
  ( (Nil!13128) (Cons!13128 (h!18529 Rule!4338) (t!117755 List!13194)) )
))
(declare-fun rules!2550 () List!13194)

(declare-fun sepAndNonSepRulesDisjointChars!642 (List!13194 List!13194) Bool)

(assert (=> b!1303580 (= res!584281 (sepAndNonSepRulesDisjointChars!642 rules!2550 rules!2550))))

(declare-fun b!1303581 () Bool)

(declare-fun res!584266 () Bool)

(declare-fun e!835958 () Bool)

(assert (=> b!1303581 (=> res!584266 e!835958)))

(declare-fun lt!428703 () List!13193)

(declare-fun lt!428714 () C!7456)

(declare-fun contains!2222 (List!13193 C!7456) Bool)

(assert (=> b!1303581 (= res!584266 (not (contains!2222 lt!428703 lt!428714)))))

(declare-fun e!835975 () Bool)

(assert (=> b!1303582 (= e!835975 (and tp!380496 tp!380495))))

(declare-fun b!1303583 () Bool)

(declare-fun res!584263 () Bool)

(declare-fun e!835979 () Bool)

(assert (=> b!1303583 (=> (not res!584263) (not e!835979))))

(declare-datatypes ((Token!4200 0))(
  ( (Token!4201 (value!74299 TokenValue!2359) (rule!4008 Rule!4338) (size!10704 Int) (originalCharacters!3131 List!13193)) )
))
(declare-fun t1!34 () Token!4200)

(declare-fun t2!34 () Token!4200)

(assert (=> b!1303583 (= res!584263 (not (= (isSeparator!2269 (rule!4008 t1!34)) (isSeparator!2269 (rule!4008 t2!34)))))))

(declare-fun b!1303584 () Bool)

(declare-fun e!835963 () Bool)

(declare-fun e!835973 () Bool)

(declare-fun tp!380498 () Bool)

(assert (=> b!1303584 (= e!835963 (and e!835973 tp!380498))))

(declare-fun e!835976 () Bool)

(declare-fun e!835964 () Bool)

(assert (=> b!1303585 (= e!835976 e!835964)))

(declare-fun res!584276 () Bool)

(assert (=> b!1303585 (=> res!584276 e!835964)))

(declare-fun lambda!51817 () Int)

(declare-fun exists!240 (List!13194 Int) Bool)

(assert (=> b!1303585 (= res!584276 (not (exists!240 rules!2550 lambda!51817)))))

(assert (=> b!1303585 (exists!240 rules!2550 lambda!51817)))

(declare-fun lt!428702 () Regex!3583)

(declare-datatypes ((Unit!19228 0))(
  ( (Unit!19229) )
))
(declare-fun lt!428715 () Unit!19228)

(declare-fun lambda!51815 () Int)

(declare-fun lemmaMapContains!12 (List!13194 Int Regex!3583) Unit!19228)

(assert (=> b!1303585 (= lt!428715 (lemmaMapContains!12 rules!2550 lambda!51815 lt!428702))))

(declare-fun b!1303586 () Bool)

(declare-fun e!835974 () Bool)

(assert (=> b!1303586 (= e!835974 e!835958)))

(declare-fun res!584272 () Bool)

(assert (=> b!1303586 (=> res!584272 e!835958)))

(declare-fun lt!428709 () List!13193)

(assert (=> b!1303586 (= res!584272 (not (contains!2222 lt!428709 lt!428714)))))

(declare-fun lt!428711 () BalanceConc!8556)

(declare-fun apply!2935 (BalanceConc!8556 Int) C!7456)

(assert (=> b!1303586 (= lt!428714 (apply!2935 lt!428711 0))))

(declare-fun b!1303588 () Bool)

(assert (=> b!1303588 (= e!835979 e!835978)))

(declare-fun res!584279 () Bool)

(assert (=> b!1303588 (=> (not res!584279) (not e!835978))))

(declare-fun lt!428704 () BalanceConc!8556)

(declare-fun size!10705 (BalanceConc!8556) Int)

(assert (=> b!1303588 (= res!584279 (> (size!10705 lt!428704) 0))))

(declare-fun charsOf!1241 (Token!4200) BalanceConc!8556)

(assert (=> b!1303588 (= lt!428704 (charsOf!1241 t2!34))))

(declare-fun e!835977 () Bool)

(declare-fun b!1303589 () Bool)

(declare-fun tp!380500 () Bool)

(declare-fun inv!17539 (String!16031) Bool)

(declare-fun inv!17542 (TokenValueInjection!4378) Bool)

(assert (=> b!1303589 (= e!835977 (and tp!380500 (inv!17539 (tag!2531 (rule!4008 t1!34))) (inv!17542 (transformation!2269 (rule!4008 t1!34))) e!835975))))

(declare-fun b!1303590 () Bool)

(declare-fun res!584268 () Bool)

(assert (=> b!1303590 (=> (not res!584268) (not e!835979))))

(declare-fun isEmpty!7768 (List!13194) Bool)

(assert (=> b!1303590 (= res!584268 (not (isEmpty!7768 rules!2550)))))

(declare-fun e!835969 () Bool)

(assert (=> b!1303591 (= e!835969 (and tp!380502 tp!380504))))

(declare-fun b!1303592 () Bool)

(declare-fun res!584275 () Bool)

(assert (=> b!1303592 (=> res!584275 e!835958)))

(declare-fun lt!428712 () C!7456)

(assert (=> b!1303592 (= res!584275 (not (contains!2222 lt!428703 lt!428712)))))

(declare-fun tp!380503 () Bool)

(declare-fun b!1303593 () Bool)

(declare-fun e!835968 () Bool)

(assert (=> b!1303593 (= e!835968 (and tp!380503 (inv!17539 (tag!2531 (rule!4008 t2!34))) (inv!17542 (transformation!2269 (rule!4008 t2!34))) e!835969))))

(declare-fun b!1303594 () Bool)

(declare-fun res!584274 () Bool)

(assert (=> b!1303594 (=> (not res!584274) (not e!835979))))

(declare-datatypes ((LexerInterface!1964 0))(
  ( (LexerInterfaceExt!1961 (__x!8548 Int)) (Lexer!1962) )
))
(declare-fun thiss!19762 () LexerInterface!1964)

(declare-fun rulesInvariant!1834 (LexerInterface!1964 List!13194) Bool)

(assert (=> b!1303594 (= res!584274 (rulesInvariant!1834 thiss!19762 rules!2550))))

(declare-fun b!1303595 () Bool)

(declare-fun e!835962 () Bool)

(assert (=> b!1303595 (= e!835962 true)))

(declare-fun lt!428710 () Bool)

(declare-datatypes ((List!13195 0))(
  ( (Nil!13129) (Cons!13129 (h!18530 Token!4200) (t!117756 List!13195)) )
))
(declare-datatypes ((IArray!8623 0))(
  ( (IArray!8624 (innerList!4369 List!13195)) )
))
(declare-datatypes ((Conc!4309 0))(
  ( (Node!4309 (left!11289 Conc!4309) (right!11619 Conc!4309) (csize!8848 Int) (cheight!4520 Int)) (Leaf!6640 (xs!7024 IArray!8623) (csize!8849 Int)) (Empty!4309) )
))
(declare-datatypes ((BalanceConc!8558 0))(
  ( (BalanceConc!8559 (c!214272 Conc!4309)) )
))
(declare-datatypes ((tuple2!12726 0))(
  ( (tuple2!12727 (_1!7249 BalanceConc!8558) (_2!7249 BalanceConc!8556)) )
))
(declare-fun lt!428716 () tuple2!12726)

(declare-fun isEmpty!7769 (BalanceConc!8556) Bool)

(assert (=> b!1303595 (= lt!428710 (isEmpty!7769 (_2!7249 lt!428716)))))

(declare-fun e!835957 () Bool)

(assert (=> b!1303596 (= e!835958 e!835957)))

(declare-fun res!584262 () Bool)

(assert (=> b!1303596 (=> res!584262 e!835957)))

(declare-fun lambda!51816 () Int)

(declare-datatypes ((List!13196 0))(
  ( (Nil!13130) (Cons!13130 (h!18531 Regex!3583) (t!117757 List!13196)) )
))
(declare-fun exists!241 (List!13196 Int) Bool)

(declare-fun map!2870 (List!13194 Int) List!13196)

(assert (=> b!1303596 (= res!584262 (not (exists!241 (map!2870 rules!2550 lambda!51815) lambda!51816)))))

(declare-fun lt!428705 () List!13196)

(assert (=> b!1303596 (exists!241 lt!428705 lambda!51816)))

(declare-fun lt!428713 () Regex!3583)

(declare-fun lt!428708 () Unit!19228)

(declare-fun matchRGenUnionSpec!20 (Regex!3583 List!13196 List!13193) Unit!19228)

(assert (=> b!1303596 (= lt!428708 (matchRGenUnionSpec!20 lt!428713 lt!428705 lt!428703))))

(assert (=> b!1303596 (= lt!428705 (map!2870 rules!2550 lambda!51815))))

(declare-fun b!1303597 () Bool)

(declare-fun res!584265 () Bool)

(assert (=> b!1303597 (=> (not res!584265) (not e!835979))))

(declare-fun rulesProduceIndividualToken!933 (LexerInterface!1964 List!13194 Token!4200) Bool)

(assert (=> b!1303597 (= res!584265 (rulesProduceIndividualToken!933 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1303598 () Bool)

(declare-fun res!584277 () Bool)

(assert (=> b!1303598 (=> res!584277 e!835958)))

(declare-fun matchR!1585 (Regex!3583 List!13193) Bool)

(assert (=> b!1303598 (= res!584277 (not (matchR!1585 lt!428713 lt!428703)))))

(declare-fun e!835972 () Bool)

(declare-fun b!1303599 () Bool)

(declare-fun tp!380505 () Bool)

(assert (=> b!1303599 (= e!835973 (and tp!380505 (inv!17539 (tag!2531 (h!18529 rules!2550))) (inv!17542 (transformation!2269 (h!18529 rules!2550))) e!835972))))

(declare-fun b!1303600 () Bool)

(assert (=> b!1303600 (= e!835964 e!835962)))

(declare-fun res!584267 () Bool)

(assert (=> b!1303600 (=> res!584267 e!835962)))

(declare-fun list!4914 (BalanceConc!8558) List!13195)

(assert (=> b!1303600 (= res!584267 (not (= (list!4914 (_1!7249 lt!428716)) (Cons!13129 t1!34 Nil!13129))))))

(declare-fun lex!799 (LexerInterface!1964 List!13194 BalanceConc!8556) tuple2!12726)

(declare-fun print!738 (LexerInterface!1964 BalanceConc!8558) BalanceConc!8556)

(declare-fun singletonSeq!838 (Token!4200) BalanceConc!8558)

(assert (=> b!1303600 (= lt!428716 (lex!799 thiss!19762 rules!2550 (print!738 thiss!19762 (singletonSeq!838 t1!34))))))

(declare-fun lt!428706 () Rule!4338)

(declare-fun getWitness!132 (List!13194 Int) Rule!4338)

(assert (=> b!1303600 (= lt!428706 (getWitness!132 rules!2550 lambda!51817))))

(declare-fun b!1303601 () Bool)

(declare-fun res!584269 () Bool)

(assert (=> b!1303601 (=> (not res!584269) (not e!835978))))

(declare-fun separableTokensPredicate!247 (LexerInterface!1964 Token!4200 Token!4200 List!13194) Bool)

(assert (=> b!1303601 (= res!584269 (not (separableTokensPredicate!247 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun e!835959 () Bool)

(declare-fun b!1303602 () Bool)

(declare-fun tp!380506 () Bool)

(declare-fun inv!21 (TokenValue!2359) Bool)

(assert (=> b!1303602 (= e!835959 (and (inv!21 (value!74299 t1!34)) e!835977 tp!380506))))

(declare-fun b!1303603 () Bool)

(declare-fun res!584273 () Bool)

(assert (=> b!1303603 (=> res!584273 e!835958)))

(assert (=> b!1303603 (= res!584273 (not (contains!2222 lt!428709 lt!428712)))))

(declare-fun res!584270 () Bool)

(assert (=> start!115050 (=> (not res!584270) (not e!835979))))

(get-info :version)

(assert (=> start!115050 (= res!584270 ((_ is Lexer!1962) thiss!19762))))

(assert (=> start!115050 e!835979))

(assert (=> start!115050 true))

(assert (=> start!115050 e!835963))

(declare-fun inv!17543 (Token!4200) Bool)

(assert (=> start!115050 (and (inv!17543 t1!34) e!835959)))

(declare-fun e!835970 () Bool)

(assert (=> start!115050 (and (inv!17543 t2!34) e!835970)))

(declare-fun b!1303587 () Bool)

(declare-fun res!584264 () Bool)

(assert (=> b!1303587 (=> (not res!584264) (not e!835979))))

(assert (=> b!1303587 (= res!584264 (rulesProduceIndividualToken!933 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1303604 () Bool)

(declare-fun e!835966 () Bool)

(assert (=> b!1303604 (= e!835978 e!835966)))

(declare-fun res!584282 () Bool)

(assert (=> b!1303604 (=> (not res!584282) (not e!835966))))

(declare-fun prefixMatch!96 (Regex!3583 List!13193) Bool)

(assert (=> b!1303604 (= res!584282 (prefixMatch!96 lt!428713 lt!428709))))

(declare-fun rulesRegex!154 (LexerInterface!1964 List!13194) Regex!3583)

(assert (=> b!1303604 (= lt!428713 (rulesRegex!154 thiss!19762 rules!2550))))

(declare-fun lt!428701 () List!13193)

(declare-fun ++!3340 (List!13193 List!13193) List!13193)

(assert (=> b!1303604 (= lt!428709 (++!3340 lt!428701 (Cons!13127 lt!428712 Nil!13127)))))

(assert (=> b!1303604 (= lt!428712 (apply!2935 lt!428704 0))))

(declare-fun list!4915 (BalanceConc!8556) List!13193)

(assert (=> b!1303604 (= lt!428701 (list!4915 lt!428711))))

(assert (=> b!1303604 (= lt!428711 (charsOf!1241 t1!34))))

(declare-fun e!835967 () Bool)

(assert (=> b!1303605 (= e!835966 (not e!835967))))

(declare-fun res!584278 () Bool)

(assert (=> b!1303605 (=> res!584278 e!835967)))

(declare-fun lambda!51814 () Int)

(declare-fun Exists!741 (Int) Bool)

(assert (=> b!1303605 (= res!584278 (not (Exists!741 lambda!51814)))))

(assert (=> b!1303605 (Exists!741 lambda!51814)))

(declare-fun lt!428707 () Unit!19228)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!59 (Regex!3583 List!13193) Unit!19228)

(assert (=> b!1303605 (= lt!428707 (lemmaPrefixMatchThenExistsStringThatMatches!59 lt!428713 lt!428709))))

(declare-fun b!1303606 () Bool)

(declare-fun tp!380497 () Bool)

(assert (=> b!1303606 (= e!835970 (and (inv!21 (value!74299 t2!34)) e!835968 tp!380497))))

(declare-fun b!1303607 () Bool)

(assert (=> b!1303607 (= e!835967 e!835974)))

(declare-fun res!584271 () Bool)

(assert (=> b!1303607 (=> res!584271 e!835974)))

(declare-fun getSuffix!439 (List!13193 List!13193) List!13193)

(assert (=> b!1303607 (= res!584271 (not (= lt!428703 (++!3340 lt!428709 (getSuffix!439 lt!428703 lt!428709)))))))

(declare-fun pickWitness!46 (Int) List!13193)

(assert (=> b!1303607 (= lt!428703 (pickWitness!46 lambda!51814))))

(declare-fun b!1303608 () Bool)

(assert (=> b!1303608 (= e!835957 e!835976)))

(declare-fun res!584280 () Bool)

(assert (=> b!1303608 (=> res!584280 e!835976)))

(declare-fun contains!2223 (List!13196 Regex!3583) Bool)

(assert (=> b!1303608 (= res!584280 (not (contains!2223 (map!2870 rules!2550 lambda!51815) lt!428702)))))

(declare-fun getWitness!133 (List!13196 Int) Regex!3583)

(assert (=> b!1303608 (= lt!428702 (getWitness!133 (map!2870 rules!2550 lambda!51815) lambda!51816))))

(assert (=> b!1303609 (= e!835972 (and tp!380499 tp!380501))))

(assert (= (and start!115050 res!584270) b!1303590))

(assert (= (and b!1303590 res!584268) b!1303594))

(assert (= (and b!1303594 res!584274) b!1303587))

(assert (= (and b!1303587 res!584264) b!1303597))

(assert (= (and b!1303597 res!584265) b!1303583))

(assert (= (and b!1303583 res!584263) b!1303588))

(assert (= (and b!1303588 res!584279) b!1303580))

(assert (= (and b!1303580 res!584281) b!1303601))

(assert (= (and b!1303601 res!584269) b!1303604))

(assert (= (and b!1303604 res!584282) b!1303605))

(assert (= (and b!1303605 (not res!584278)) b!1303607))

(assert (= (and b!1303607 (not res!584271)) b!1303586))

(assert (= (and b!1303586 (not res!584272)) b!1303581))

(assert (= (and b!1303581 (not res!584266)) b!1303603))

(assert (= (and b!1303603 (not res!584273)) b!1303592))

(assert (= (and b!1303592 (not res!584275)) b!1303598))

(assert (= (and b!1303598 (not res!584277)) b!1303596))

(assert (= (and b!1303596 (not res!584262)) b!1303608))

(assert (= (and b!1303608 (not res!584280)) b!1303585))

(assert (= (and b!1303585 (not res!584276)) b!1303600))

(assert (= (and b!1303600 (not res!584267)) b!1303595))

(assert (= b!1303599 b!1303609))

(assert (= b!1303584 b!1303599))

(assert (= (and start!115050 ((_ is Cons!13128) rules!2550)) b!1303584))

(assert (= b!1303589 b!1303582))

(assert (= b!1303602 b!1303589))

(assert (= start!115050 b!1303602))

(assert (= b!1303593 b!1303591))

(assert (= b!1303606 b!1303593))

(assert (= start!115050 b!1303606))

(declare-fun m!1454877 () Bool)

(assert (=> b!1303589 m!1454877))

(declare-fun m!1454879 () Bool)

(assert (=> b!1303589 m!1454879))

(declare-fun m!1454881 () Bool)

(assert (=> b!1303580 m!1454881))

(declare-fun m!1454883 () Bool)

(assert (=> b!1303586 m!1454883))

(declare-fun m!1454885 () Bool)

(assert (=> b!1303586 m!1454885))

(declare-fun m!1454887 () Bool)

(assert (=> b!1303588 m!1454887))

(declare-fun m!1454889 () Bool)

(assert (=> b!1303588 m!1454889))

(declare-fun m!1454891 () Bool)

(assert (=> b!1303592 m!1454891))

(declare-fun m!1454893 () Bool)

(assert (=> b!1303606 m!1454893))

(declare-fun m!1454895 () Bool)

(assert (=> b!1303595 m!1454895))

(declare-fun m!1454897 () Bool)

(assert (=> b!1303605 m!1454897))

(assert (=> b!1303605 m!1454897))

(declare-fun m!1454899 () Bool)

(assert (=> b!1303605 m!1454899))

(declare-fun m!1454901 () Bool)

(assert (=> b!1303594 m!1454901))

(declare-fun m!1454903 () Bool)

(assert (=> b!1303602 m!1454903))

(declare-fun m!1454905 () Bool)

(assert (=> b!1303604 m!1454905))

(declare-fun m!1454907 () Bool)

(assert (=> b!1303604 m!1454907))

(declare-fun m!1454909 () Bool)

(assert (=> b!1303604 m!1454909))

(declare-fun m!1454911 () Bool)

(assert (=> b!1303604 m!1454911))

(declare-fun m!1454913 () Bool)

(assert (=> b!1303604 m!1454913))

(declare-fun m!1454915 () Bool)

(assert (=> b!1303604 m!1454915))

(declare-fun m!1454917 () Bool)

(assert (=> b!1303596 m!1454917))

(assert (=> b!1303596 m!1454917))

(declare-fun m!1454919 () Bool)

(assert (=> b!1303596 m!1454919))

(assert (=> b!1303596 m!1454917))

(declare-fun m!1454921 () Bool)

(assert (=> b!1303596 m!1454921))

(declare-fun m!1454923 () Bool)

(assert (=> b!1303596 m!1454923))

(declare-fun m!1454925 () Bool)

(assert (=> b!1303600 m!1454925))

(declare-fun m!1454927 () Bool)

(assert (=> b!1303600 m!1454927))

(declare-fun m!1454929 () Bool)

(assert (=> b!1303600 m!1454929))

(declare-fun m!1454931 () Bool)

(assert (=> b!1303600 m!1454931))

(declare-fun m!1454933 () Bool)

(assert (=> b!1303600 m!1454933))

(assert (=> b!1303600 m!1454927))

(assert (=> b!1303600 m!1454933))

(declare-fun m!1454935 () Bool)

(assert (=> b!1303601 m!1454935))

(declare-fun m!1454937 () Bool)

(assert (=> b!1303597 m!1454937))

(declare-fun m!1454939 () Bool)

(assert (=> b!1303581 m!1454939))

(declare-fun m!1454941 () Bool)

(assert (=> b!1303607 m!1454941))

(assert (=> b!1303607 m!1454941))

(declare-fun m!1454943 () Bool)

(assert (=> b!1303607 m!1454943))

(declare-fun m!1454945 () Bool)

(assert (=> b!1303607 m!1454945))

(declare-fun m!1454947 () Bool)

(assert (=> b!1303598 m!1454947))

(assert (=> b!1303608 m!1454917))

(assert (=> b!1303608 m!1454917))

(declare-fun m!1454949 () Bool)

(assert (=> b!1303608 m!1454949))

(assert (=> b!1303608 m!1454917))

(assert (=> b!1303608 m!1454917))

(declare-fun m!1454951 () Bool)

(assert (=> b!1303608 m!1454951))

(declare-fun m!1454953 () Bool)

(assert (=> b!1303599 m!1454953))

(declare-fun m!1454955 () Bool)

(assert (=> b!1303599 m!1454955))

(declare-fun m!1454957 () Bool)

(assert (=> b!1303590 m!1454957))

(declare-fun m!1454959 () Bool)

(assert (=> b!1303603 m!1454959))

(declare-fun m!1454961 () Bool)

(assert (=> b!1303587 m!1454961))

(declare-fun m!1454963 () Bool)

(assert (=> b!1303593 m!1454963))

(declare-fun m!1454965 () Bool)

(assert (=> b!1303593 m!1454965))

(declare-fun m!1454967 () Bool)

(assert (=> start!115050 m!1454967))

(declare-fun m!1454969 () Bool)

(assert (=> start!115050 m!1454969))

(declare-fun m!1454971 () Bool)

(assert (=> b!1303585 m!1454971))

(assert (=> b!1303585 m!1454971))

(declare-fun m!1454973 () Bool)

(assert (=> b!1303585 m!1454973))

(check-sat (not b!1303588) b_and!87031 b_and!87037 b_and!87033 (not b!1303592) (not b!1303586) (not b_next!31893) (not b_next!31883) (not b!1303590) (not b!1303580) (not b!1303593) (not b!1303585) (not b!1303603) b_and!87041 (not b!1303608) (not b!1303604) (not b_next!31885) (not b!1303587) (not b!1303595) (not b!1303581) (not b!1303598) (not b!1303589) (not start!115050) (not b_next!31889) (not b!1303599) (not b!1303602) (not b!1303601) (not b!1303605) (not b!1303584) (not b_next!31891) (not b!1303607) b_and!87035 (not b!1303594) (not b!1303596) (not b!1303606) (not b!1303600) (not b_next!31887) b_and!87039 (not b!1303597))
(check-sat (not b_next!31885) b_and!87031 b_and!87037 (not b_next!31889) b_and!87033 (not b_next!31891) b_and!87035 (not b_next!31893) (not b_next!31883) (not b_next!31887) b_and!87039 b_and!87041)
