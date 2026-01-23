; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!146806 () Bool)

(assert start!146806)

(declare-fun b!1573288 () Bool)

(declare-fun b_free!42151 () Bool)

(declare-fun b_next!42855 () Bool)

(assert (=> b!1573288 (= b_free!42151 (not b_next!42855))))

(declare-fun tp!462807 () Bool)

(declare-fun b_and!109957 () Bool)

(assert (=> b!1573288 (= tp!462807 b_and!109957)))

(declare-fun b_free!42153 () Bool)

(declare-fun b_next!42857 () Bool)

(assert (=> b!1573288 (= b_free!42153 (not b_next!42857))))

(declare-fun tp!462808 () Bool)

(declare-fun b_and!109959 () Bool)

(assert (=> b!1573288 (= tp!462808 b_and!109959)))

(declare-fun b!1573289 () Bool)

(declare-fun b_free!42155 () Bool)

(declare-fun b_next!42859 () Bool)

(assert (=> b!1573289 (= b_free!42155 (not b_next!42859))))

(declare-fun tp!462804 () Bool)

(declare-fun b_and!109961 () Bool)

(assert (=> b!1573289 (= tp!462804 b_and!109961)))

(declare-fun b_free!42157 () Bool)

(declare-fun b_next!42861 () Bool)

(assert (=> b!1573289 (= b_free!42157 (not b_next!42861))))

(declare-fun tp!462805 () Bool)

(declare-fun b_and!109963 () Bool)

(assert (=> b!1573289 (= tp!462805 b_and!109963)))

(declare-fun b!1573280 () Bool)

(declare-fun res!701176 () Bool)

(declare-fun e!1010287 () Bool)

(assert (=> b!1573280 (=> (not res!701176) (not e!1010287))))

(declare-datatypes ((LexerInterface!2640 0))(
  ( (LexerInterfaceExt!2637 (__x!11504 Int)) (Lexer!2638) )
))
(declare-fun thiss!17113 () LexerInterface!2640)

(declare-datatypes ((List!17223 0))(
  ( (Nil!17153) (Cons!17153 (h!22554 (_ BitVec 16)) (t!143126 List!17223)) )
))
(declare-datatypes ((TokenValue!3101 0))(
  ( (FloatLiteralValue!6202 (text!22152 List!17223)) (TokenValueExt!3100 (__x!11505 Int)) (Broken!15505 (value!95460 List!17223)) (Object!3170) (End!3101) (Def!3101) (Underscore!3101) (Match!3101) (Else!3101) (Error!3101) (Case!3101) (If!3101) (Extends!3101) (Abstract!3101) (Class!3101) (Val!3101) (DelimiterValue!6202 (del!3161 List!17223)) (KeywordValue!3107 (value!95461 List!17223)) (CommentValue!6202 (value!95462 List!17223)) (WhitespaceValue!6202 (value!95463 List!17223)) (IndentationValue!3101 (value!95464 List!17223)) (String!19836) (Int32!3101) (Broken!15506 (value!95465 List!17223)) (Boolean!3102) (Unit!26550) (OperatorValue!3104 (op!3161 List!17223)) (IdentifierValue!6202 (value!95466 List!17223)) (IdentifierValue!6203 (value!95467 List!17223)) (WhitespaceValue!6203 (value!95468 List!17223)) (True!6202) (False!6202) (Broken!15507 (value!95469 List!17223)) (Broken!15508 (value!95470 List!17223)) (True!6203) (RightBrace!3101) (RightBracket!3101) (Colon!3101) (Null!3101) (Comma!3101) (LeftBracket!3101) (False!6203) (LeftBrace!3101) (ImaginaryLiteralValue!3101 (text!22153 List!17223)) (StringLiteralValue!9303 (value!95471 List!17223)) (EOFValue!3101 (value!95472 List!17223)) (IdentValue!3101 (value!95473 List!17223)) (DelimiterValue!6203 (value!95474 List!17223)) (DedentValue!3101 (value!95475 List!17223)) (NewLineValue!3101 (value!95476 List!17223)) (IntegerValue!9303 (value!95477 (_ BitVec 32)) (text!22154 List!17223)) (IntegerValue!9304 (value!95478 Int) (text!22155 List!17223)) (Times!3101) (Or!3101) (Equal!3101) (Minus!3101) (Broken!15509 (value!95479 List!17223)) (And!3101) (Div!3101) (LessEqual!3101) (Mod!3101) (Concat!7440) (Not!3101) (Plus!3101) (SpaceValue!3101 (value!95480 List!17223)) (IntegerValue!9305 (value!95481 Int) (text!22156 List!17223)) (StringLiteralValue!9304 (text!22157 List!17223)) (FloatLiteralValue!6203 (text!22158 List!17223)) (BytesLiteralValue!3101 (value!95482 List!17223)) (CommentValue!6203 (value!95483 List!17223)) (StringLiteralValue!9305 (value!95484 List!17223)) (ErrorTokenValue!3101 (msg!3162 List!17223)) )
))
(declare-datatypes ((C!8852 0))(
  ( (C!8853 (val!5022 Int)) )
))
(declare-datatypes ((List!17224 0))(
  ( (Nil!17154) (Cons!17154 (h!22555 C!8852) (t!143127 List!17224)) )
))
(declare-datatypes ((IArray!11345 0))(
  ( (IArray!11346 (innerList!5730 List!17224)) )
))
(declare-datatypes ((Conc!5670 0))(
  ( (Node!5670 (left!13881 Conc!5670) (right!14211 Conc!5670) (csize!11570 Int) (cheight!5881 Int)) (Leaf!8396 (xs!8474 IArray!11345) (csize!11571 Int)) (Empty!5670) )
))
(declare-datatypes ((BalanceConc!11284 0))(
  ( (BalanceConc!11285 (c!255167 Conc!5670)) )
))
(declare-datatypes ((Regex!4339 0))(
  ( (ElementMatch!4339 (c!255168 C!8852)) (Concat!7441 (regOne!9190 Regex!4339) (regTwo!9190 Regex!4339)) (EmptyExpr!4339) (Star!4339 (reg!4668 Regex!4339)) (EmptyLang!4339) (Union!4339 (regOne!9191 Regex!4339) (regTwo!9191 Regex!4339)) )
))
(declare-datatypes ((String!19837 0))(
  ( (String!19838 (value!95485 String)) )
))
(declare-datatypes ((TokenValueInjection!5862 0))(
  ( (TokenValueInjection!5863 (toValue!4406 Int) (toChars!4265 Int)) )
))
(declare-datatypes ((Rule!5822 0))(
  ( (Rule!5823 (regex!3011 Regex!4339) (tag!3277 String!19837) (isSeparator!3011 Bool) (transformation!3011 TokenValueInjection!5862)) )
))
(declare-datatypes ((List!17225 0))(
  ( (Nil!17155) (Cons!17155 (h!22556 Rule!5822) (t!143128 List!17225)) )
))
(declare-fun rules!1846 () List!17225)

(declare-fun rulesInvariant!2309 (LexerInterface!2640 List!17225) Bool)

(assert (=> b!1573280 (= res!701176 (rulesInvariant!2309 thiss!17113 rules!1846))))

(declare-fun res!701175 () Bool)

(assert (=> start!146806 (=> (not res!701175) (not e!1010287))))

(get-info :version)

(assert (=> start!146806 (= res!701175 ((_ is Lexer!2638) thiss!17113))))

(assert (=> start!146806 e!1010287))

(assert (=> start!146806 true))

(declare-fun e!1010286 () Bool)

(assert (=> start!146806 e!1010286))

(declare-fun e!1010281 () Bool)

(assert (=> start!146806 e!1010281))

(declare-fun e!1010278 () Bool)

(declare-fun b!1573281 () Bool)

(declare-datatypes ((Token!5588 0))(
  ( (Token!5589 (value!95486 TokenValue!3101) (rule!4803 Rule!5822) (size!13864 Int) (originalCharacters!3825 List!17224)) )
))
(declare-datatypes ((List!17226 0))(
  ( (Nil!17156) (Cons!17156 (h!22557 Token!5588) (t!143129 List!17226)) )
))
(declare-fun tokens!457 () List!17226)

(declare-fun tp!462806 () Bool)

(declare-fun e!1010285 () Bool)

(declare-fun inv!21 (TokenValue!3101) Bool)

(assert (=> b!1573281 (= e!1010278 (and (inv!21 (value!95486 (h!22557 tokens!457))) e!1010285 tp!462806))))

(declare-fun tp!462801 () Bool)

(declare-fun b!1573282 () Bool)

(declare-fun inv!22569 (Token!5588) Bool)

(assert (=> b!1573282 (= e!1010281 (and (inv!22569 (h!22557 tokens!457)) e!1010278 tp!462801))))

(declare-fun b!1573283 () Bool)

(declare-fun res!701177 () Bool)

(assert (=> b!1573283 (=> (not res!701177) (not e!1010287))))

(assert (=> b!1573283 (= res!701177 (and (not ((_ is Nil!17156) tokens!457)) ((_ is Nil!17156) (t!143129 tokens!457))))))

(declare-fun b!1573284 () Bool)

(declare-fun res!701179 () Bool)

(assert (=> b!1573284 (=> (not res!701179) (not e!1010287))))

(declare-fun rulesProduceEachTokenIndividuallyList!842 (LexerInterface!2640 List!17225 List!17226) Bool)

(assert (=> b!1573284 (= res!701179 (rulesProduceEachTokenIndividuallyList!842 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1573285 () Bool)

(declare-fun e!1010283 () Bool)

(declare-fun tp!462802 () Bool)

(assert (=> b!1573285 (= e!1010286 (and e!1010283 tp!462802))))

(declare-fun b!1573286 () Bool)

(declare-fun res!701180 () Bool)

(assert (=> b!1573286 (=> (not res!701180) (not e!1010287))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!333 (LexerInterface!2640 List!17226 List!17225) Bool)

(assert (=> b!1573286 (= res!701180 (tokensListTwoByTwoPredicateSeparableList!333 thiss!17113 tokens!457 rules!1846))))

(declare-fun e!1010284 () Bool)

(declare-fun b!1573287 () Bool)

(declare-fun tp!462800 () Bool)

(declare-fun inv!22566 (String!19837) Bool)

(declare-fun inv!22570 (TokenValueInjection!5862) Bool)

(assert (=> b!1573287 (= e!1010285 (and tp!462800 (inv!22566 (tag!3277 (rule!4803 (h!22557 tokens!457)))) (inv!22570 (transformation!3011 (rule!4803 (h!22557 tokens!457)))) e!1010284))))

(assert (=> b!1573288 (= e!1010284 (and tp!462807 tp!462808))))

(declare-fun e!1010282 () Bool)

(assert (=> b!1573289 (= e!1010282 (and tp!462804 tp!462805))))

(declare-fun b!1573290 () Bool)

(assert (=> b!1573290 (= e!1010287 false)))

(declare-fun lt!546906 () List!17226)

(declare-datatypes ((IArray!11347 0))(
  ( (IArray!11348 (innerList!5731 List!17226)) )
))
(declare-datatypes ((Conc!5671 0))(
  ( (Node!5671 (left!13882 Conc!5671) (right!14212 Conc!5671) (csize!11572 Int) (cheight!5882 Int)) (Leaf!8397 (xs!8475 IArray!11347) (csize!11573 Int)) (Empty!5671) )
))
(declare-datatypes ((BalanceConc!11286 0))(
  ( (BalanceConc!11287 (c!255169 Conc!5671)) )
))
(declare-fun list!6600 (BalanceConc!11286) List!17226)

(declare-datatypes ((tuple2!16670 0))(
  ( (tuple2!16671 (_1!9737 BalanceConc!11286) (_2!9737 BalanceConc!11284)) )
))
(declare-fun lex!1130 (LexerInterface!2640 List!17225 BalanceConc!11284) tuple2!16670)

(declare-fun print!1173 (LexerInterface!2640 BalanceConc!11286) BalanceConc!11284)

(declare-fun seqFromList!1808 (List!17226) BalanceConc!11286)

(assert (=> b!1573290 (= lt!546906 (list!6600 (_1!9737 (lex!1130 thiss!17113 rules!1846 (print!1173 thiss!17113 (seqFromList!1808 tokens!457))))))))

(declare-fun tp!462803 () Bool)

(declare-fun b!1573291 () Bool)

(assert (=> b!1573291 (= e!1010283 (and tp!462803 (inv!22566 (tag!3277 (h!22556 rules!1846))) (inv!22570 (transformation!3011 (h!22556 rules!1846))) e!1010282))))

(declare-fun b!1573292 () Bool)

(declare-fun res!701178 () Bool)

(assert (=> b!1573292 (=> (not res!701178) (not e!1010287))))

(declare-fun isEmpty!10261 (List!17225) Bool)

(assert (=> b!1573292 (= res!701178 (not (isEmpty!10261 rules!1846)))))

(assert (= (and start!146806 res!701175) b!1573292))

(assert (= (and b!1573292 res!701178) b!1573280))

(assert (= (and b!1573280 res!701176) b!1573284))

(assert (= (and b!1573284 res!701179) b!1573286))

(assert (= (and b!1573286 res!701180) b!1573283))

(assert (= (and b!1573283 res!701177) b!1573290))

(assert (= b!1573291 b!1573289))

(assert (= b!1573285 b!1573291))

(assert (= (and start!146806 ((_ is Cons!17155) rules!1846)) b!1573285))

(assert (= b!1573287 b!1573288))

(assert (= b!1573281 b!1573287))

(assert (= b!1573282 b!1573281))

(assert (= (and start!146806 ((_ is Cons!17156) tokens!457)) b!1573282))

(declare-fun m!1852289 () Bool)

(assert (=> b!1573286 m!1852289))

(declare-fun m!1852291 () Bool)

(assert (=> b!1573284 m!1852291))

(declare-fun m!1852293 () Bool)

(assert (=> b!1573287 m!1852293))

(declare-fun m!1852295 () Bool)

(assert (=> b!1573287 m!1852295))

(declare-fun m!1852297 () Bool)

(assert (=> b!1573281 m!1852297))

(declare-fun m!1852299 () Bool)

(assert (=> b!1573290 m!1852299))

(assert (=> b!1573290 m!1852299))

(declare-fun m!1852301 () Bool)

(assert (=> b!1573290 m!1852301))

(assert (=> b!1573290 m!1852301))

(declare-fun m!1852303 () Bool)

(assert (=> b!1573290 m!1852303))

(declare-fun m!1852305 () Bool)

(assert (=> b!1573290 m!1852305))

(declare-fun m!1852307 () Bool)

(assert (=> b!1573292 m!1852307))

(declare-fun m!1852309 () Bool)

(assert (=> b!1573280 m!1852309))

(declare-fun m!1852311 () Bool)

(assert (=> b!1573291 m!1852311))

(declare-fun m!1852313 () Bool)

(assert (=> b!1573291 m!1852313))

(declare-fun m!1852315 () Bool)

(assert (=> b!1573282 m!1852315))

(check-sat (not b!1573287) b_and!109961 (not b_next!42859) (not b!1573280) (not b!1573290) (not b!1573291) (not b_next!42861) b_and!109959 (not b!1573285) (not b!1573281) (not b!1573284) (not b_next!42857) (not b!1573282) (not b_next!42855) b_and!109963 (not b!1573292) (not b!1573286) b_and!109957)
(check-sat b_and!109961 (not b_next!42859) (not b_next!42857) (not b_next!42855) b_and!109963 b_and!109957 (not b_next!42861) b_and!109959)
