; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116054 () Bool)

(assert start!116054)

(declare-fun b!1312559 () Bool)

(declare-fun b_free!31603 () Bool)

(declare-fun b_next!32307 () Bool)

(assert (=> b!1312559 (= b_free!31603 (not b_next!32307))))

(declare-fun tp!382326 () Bool)

(declare-fun b_and!87663 () Bool)

(assert (=> b!1312559 (= tp!382326 b_and!87663)))

(declare-fun b_free!31605 () Bool)

(declare-fun b_next!32309 () Bool)

(assert (=> b!1312559 (= b_free!31605 (not b_next!32309))))

(declare-fun tp!382333 () Bool)

(declare-fun b_and!87665 () Bool)

(assert (=> b!1312559 (= tp!382333 b_and!87665)))

(declare-fun b!1312530 () Bool)

(declare-fun b_free!31607 () Bool)

(declare-fun b_next!32311 () Bool)

(assert (=> b!1312530 (= b_free!31607 (not b_next!32311))))

(declare-fun tp!382336 () Bool)

(declare-fun b_and!87667 () Bool)

(assert (=> b!1312530 (= tp!382336 b_and!87667)))

(declare-fun b_free!31609 () Bool)

(declare-fun b_next!32313 () Bool)

(assert (=> b!1312530 (= b_free!31609 (not b_next!32313))))

(declare-fun tp!382334 () Bool)

(declare-fun b_and!87669 () Bool)

(assert (=> b!1312530 (= tp!382334 b_and!87669)))

(declare-fun b!1312545 () Bool)

(declare-fun b_free!31611 () Bool)

(declare-fun b_next!32315 () Bool)

(assert (=> b!1312545 (= b_free!31611 (not b_next!32315))))

(declare-fun tp!382332 () Bool)

(declare-fun b_and!87671 () Bool)

(assert (=> b!1312545 (= tp!382332 b_and!87671)))

(declare-fun b_free!31613 () Bool)

(declare-fun b_next!32317 () Bool)

(assert (=> b!1312545 (= b_free!31613 (not b_next!32317))))

(declare-fun tp!382327 () Bool)

(declare-fun b_and!87673 () Bool)

(assert (=> b!1312545 (= tp!382327 b_and!87673)))

(declare-fun b!1312533 () Bool)

(assert (=> b!1312533 true))

(assert (=> b!1312533 true))

(declare-fun b!1312541 () Bool)

(assert (=> b!1312541 true))

(declare-fun b!1312521 () Bool)

(assert (=> b!1312521 true))

(declare-fun bs!330092 () Bool)

(declare-fun b!1312555 () Bool)

(assert (= bs!330092 (and b!1312555 b!1312521)))

(declare-fun lambda!53137 () Int)

(declare-fun lambda!53136 () Int)

(assert (=> bs!330092 (not (= lambda!53137 lambda!53136))))

(assert (=> b!1312555 true))

(declare-fun b!1312520 () Bool)

(declare-fun res!589288 () Bool)

(declare-fun e!841543 () Bool)

(assert (=> b!1312520 (=> res!589288 e!841543)))

(declare-datatypes ((List!13362 0))(
  ( (Nil!13296) (Cons!13296 (h!18697 (_ BitVec 16)) (t!118163 List!13362)) )
))
(declare-datatypes ((TokenValue!2391 0))(
  ( (FloatLiteralValue!4782 (text!17182 List!13362)) (TokenValueExt!2390 (__x!8611 Int)) (Broken!11955 (value!75185 List!13362)) (Object!2456) (End!2391) (Def!2391) (Underscore!2391) (Match!2391) (Else!2391) (Error!2391) (Case!2391) (If!2391) (Extends!2391) (Abstract!2391) (Class!2391) (Val!2391) (DelimiterValue!4782 (del!2451 List!13362)) (KeywordValue!2397 (value!75186 List!13362)) (CommentValue!4782 (value!75187 List!13362)) (WhitespaceValue!4782 (value!75188 List!13362)) (IndentationValue!2391 (value!75189 List!13362)) (String!16190) (Int32!2391) (Broken!11956 (value!75190 List!13362)) (Boolean!2392) (Unit!19363) (OperatorValue!2394 (op!2451 List!13362)) (IdentifierValue!4782 (value!75191 List!13362)) (IdentifierValue!4783 (value!75192 List!13362)) (WhitespaceValue!4783 (value!75193 List!13362)) (True!4782) (False!4782) (Broken!11957 (value!75194 List!13362)) (Broken!11958 (value!75195 List!13362)) (True!4783) (RightBrace!2391) (RightBracket!2391) (Colon!2391) (Null!2391) (Comma!2391) (LeftBracket!2391) (False!4783) (LeftBrace!2391) (ImaginaryLiteralValue!2391 (text!17183 List!13362)) (StringLiteralValue!7173 (value!75196 List!13362)) (EOFValue!2391 (value!75197 List!13362)) (IdentValue!2391 (value!75198 List!13362)) (DelimiterValue!4783 (value!75199 List!13362)) (DedentValue!2391 (value!75200 List!13362)) (NewLineValue!2391 (value!75201 List!13362)) (IntegerValue!7173 (value!75202 (_ BitVec 32)) (text!17184 List!13362)) (IntegerValue!7174 (value!75203 Int) (text!17185 List!13362)) (Times!2391) (Or!2391) (Equal!2391) (Minus!2391) (Broken!11959 (value!75204 List!13362)) (And!2391) (Div!2391) (LessEqual!2391) (Mod!2391) (Concat!6006) (Not!2391) (Plus!2391) (SpaceValue!2391 (value!75205 List!13362)) (IntegerValue!7175 (value!75206 Int) (text!17186 List!13362)) (StringLiteralValue!7174 (text!17187 List!13362)) (FloatLiteralValue!4783 (text!17188 List!13362)) (BytesLiteralValue!2391 (value!75207 List!13362)) (CommentValue!4783 (value!75208 List!13362)) (StringLiteralValue!7175 (value!75209 List!13362)) (ErrorTokenValue!2391 (msg!2452 List!13362)) )
))
(declare-datatypes ((C!7520 0))(
  ( (C!7521 (val!4320 Int)) )
))
(declare-datatypes ((List!13363 0))(
  ( (Nil!13297) (Cons!13297 (h!18698 C!7520) (t!118164 List!13363)) )
))
(declare-datatypes ((IArray!8749 0))(
  ( (IArray!8750 (innerList!4432 List!13363)) )
))
(declare-datatypes ((String!16191 0))(
  ( (String!16192 (value!75210 String)) )
))
(declare-datatypes ((Conc!4372 0))(
  ( (Node!4372 (left!11432 Conc!4372) (right!11762 Conc!4372) (csize!8974 Int) (cheight!4583 Int)) (Leaf!6719 (xs!7087 IArray!8749) (csize!8975 Int)) (Empty!4372) )
))
(declare-datatypes ((BalanceConc!8684 0))(
  ( (BalanceConc!8685 (c!215456 Conc!4372)) )
))
(declare-datatypes ((Regex!3615 0))(
  ( (ElementMatch!3615 (c!215457 C!7520)) (Concat!6007 (regOne!7742 Regex!3615) (regTwo!7742 Regex!3615)) (EmptyExpr!3615) (Star!3615 (reg!3944 Regex!3615)) (EmptyLang!3615) (Union!3615 (regOne!7743 Regex!3615) (regTwo!7743 Regex!3615)) )
))
(declare-datatypes ((TokenValueInjection!4442 0))(
  ( (TokenValueInjection!4443 (toValue!3524 Int) (toChars!3383 Int)) )
))
(declare-datatypes ((Rule!4402 0))(
  ( (Rule!4403 (regex!2301 Regex!3615) (tag!2563 String!16191) (isSeparator!2301 Bool) (transformation!2301 TokenValueInjection!4442)) )
))
(declare-datatypes ((Token!4264 0))(
  ( (Token!4265 (value!75211 TokenValue!2391) (rule!4042 Rule!4402) (size!10808 Int) (originalCharacters!3163 List!13363)) )
))
(declare-datatypes ((List!13364 0))(
  ( (Nil!13298) (Cons!13298 (h!18699 Token!4264) (t!118165 List!13364)) )
))
(declare-fun lt!432542 () List!13364)

(declare-fun lt!432546 () BalanceConc!8684)

(declare-datatypes ((LexerInterface!1996 0))(
  ( (LexerInterfaceExt!1993 (__x!8612 Int)) (Lexer!1994) )
))
(declare-fun thiss!19762 () LexerInterface!1996)

(declare-datatypes ((List!13365 0))(
  ( (Nil!13299) (Cons!13299 (h!18700 Rule!4402) (t!118166 List!13365)) )
))
(declare-fun rules!2550 () List!13365)

(declare-datatypes ((tuple2!12910 0))(
  ( (tuple2!12911 (_1!7341 List!13364) (_2!7341 List!13363)) )
))
(declare-fun lexList!534 (LexerInterface!1996 List!13365 List!13363) tuple2!12910)

(declare-fun list!4998 (BalanceConc!8684) List!13363)

(assert (=> b!1312520 (= res!589288 (not (= (lexList!534 thiss!19762 rules!2550 (list!4998 lt!432546)) (tuple2!12911 lt!432542 Nil!13297))))))

(declare-fun e!841549 () Bool)

(declare-fun e!841546 () Bool)

(assert (=> b!1312521 (= e!841549 e!841546)))

(declare-fun res!589283 () Bool)

(assert (=> b!1312521 (=> res!589283 e!841546)))

(declare-fun exists!304 (List!13365 Int) Bool)

(assert (=> b!1312521 (= res!589283 (not (exists!304 rules!2550 lambda!53136)))))

(assert (=> b!1312521 (exists!304 rules!2550 lambda!53136)))

(declare-fun lt!432549 () Regex!3615)

(declare-fun lambda!53134 () Int)

(declare-datatypes ((Unit!19364 0))(
  ( (Unit!19365) )
))
(declare-fun lt!432548 () Unit!19364)

(declare-fun lemmaMapContains!44 (List!13365 Int Regex!3615) Unit!19364)

(assert (=> b!1312521 (= lt!432548 (lemmaMapContains!44 rules!2550 lambda!53134 lt!432549))))

(declare-fun b!1312522 () Bool)

(declare-fun res!589301 () Bool)

(declare-fun e!841545 () Bool)

(assert (=> b!1312522 (=> (not res!589301) (not e!841545))))

(declare-fun t1!34 () Token!4264)

(declare-fun rulesProduceIndividualToken!965 (LexerInterface!1996 List!13365 Token!4264) Bool)

(assert (=> b!1312522 (= res!589301 (rulesProduceIndividualToken!965 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1312523 () Bool)

(declare-fun e!841536 () Bool)

(assert (=> b!1312523 (= e!841536 e!841543)))

(declare-fun res!589282 () Bool)

(assert (=> b!1312523 (=> res!589282 e!841543)))

(declare-datatypes ((IArray!8751 0))(
  ( (IArray!8752 (innerList!4433 List!13364)) )
))
(declare-datatypes ((Conc!4373 0))(
  ( (Node!4373 (left!11433 Conc!4373) (right!11763 Conc!4373) (csize!8976 Int) (cheight!4584 Int)) (Leaf!6720 (xs!7088 IArray!8751) (csize!8977 Int)) (Empty!4373) )
))
(declare-datatypes ((BalanceConc!8686 0))(
  ( (BalanceConc!8687 (c!215458 Conc!4373)) )
))
(declare-datatypes ((tuple2!12912 0))(
  ( (tuple2!12913 (_1!7342 BalanceConc!8686) (_2!7342 BalanceConc!8684)) )
))
(declare-fun lt!432551 () tuple2!12912)

(declare-fun list!4999 (BalanceConc!8686) List!13364)

(assert (=> b!1312523 (= res!589282 (not (= (list!4999 (_1!7342 lt!432551)) lt!432542)))))

(declare-fun t2!34 () Token!4264)

(assert (=> b!1312523 (= lt!432542 (Cons!13298 t2!34 Nil!13298))))

(declare-fun lex!831 (LexerInterface!1996 List!13365 BalanceConc!8684) tuple2!12912)

(assert (=> b!1312523 (= lt!432551 (lex!831 thiss!19762 rules!2550 lt!432546))))

(declare-fun print!770 (LexerInterface!1996 BalanceConc!8686) BalanceConc!8684)

(declare-fun singletonSeq!876 (Token!4264) BalanceConc!8686)

(assert (=> b!1312523 (= lt!432546 (print!770 thiss!19762 (singletonSeq!876 t2!34)))))

(declare-fun b!1312524 () Bool)

(declare-fun res!589277 () Bool)

(assert (=> b!1312524 (=> res!589277 e!841536)))

(declare-fun contains!2315 (List!13365 Rule!4402) Bool)

(assert (=> b!1312524 (= res!589277 (not (contains!2315 rules!2550 (rule!4042 t1!34))))))

(declare-fun tp!382330 () Bool)

(declare-fun e!841538 () Bool)

(declare-fun e!841553 () Bool)

(declare-fun b!1312525 () Bool)

(declare-fun inv!17675 (String!16191) Bool)

(declare-fun inv!17678 (TokenValueInjection!4442) Bool)

(assert (=> b!1312525 (= e!841538 (and tp!382330 (inv!17675 (tag!2563 (h!18700 rules!2550))) (inv!17678 (transformation!2301 (h!18700 rules!2550))) e!841553))))

(declare-fun b!1312526 () Bool)

(declare-fun e!841557 () Bool)

(assert (=> b!1312526 (= e!841557 e!841549)))

(declare-fun res!589276 () Bool)

(assert (=> b!1312526 (=> res!589276 e!841549)))

(declare-datatypes ((List!13366 0))(
  ( (Nil!13300) (Cons!13300 (h!18701 Regex!3615) (t!118167 List!13366)) )
))
(declare-fun contains!2316 (List!13366 Regex!3615) Bool)

(declare-fun map!2918 (List!13365 Int) List!13366)

(assert (=> b!1312526 (= res!589276 (not (contains!2316 (map!2918 rules!2550 lambda!53134) lt!432549)))))

(declare-fun lambda!53135 () Int)

(declare-fun getWitness!196 (List!13366 Int) Regex!3615)

(assert (=> b!1312526 (= lt!432549 (getWitness!196 (map!2918 rules!2550 lambda!53134) lambda!53135))))

(declare-fun b!1312528 () Bool)

(declare-fun res!589297 () Bool)

(declare-fun e!841552 () Bool)

(assert (=> b!1312528 (=> res!589297 e!841552)))

(declare-fun lt!432534 () List!13363)

(declare-fun lt!432540 () C!7520)

(declare-fun contains!2317 (List!13363 C!7520) Bool)

(assert (=> b!1312528 (= res!589297 (not (contains!2317 lt!432534 lt!432540)))))

(declare-fun b!1312529 () Bool)

(declare-fun res!589284 () Bool)

(assert (=> b!1312529 (=> (not res!589284) (not e!841545))))

(assert (=> b!1312529 (= res!589284 (not (= (isSeparator!2301 (rule!4042 t1!34)) (isSeparator!2301 (rule!4042 t2!34)))))))

(declare-fun e!841547 () Bool)

(assert (=> b!1312530 (= e!841547 (and tp!382336 tp!382334))))

(declare-fun b!1312531 () Bool)

(declare-fun res!589295 () Bool)

(assert (=> b!1312531 (=> res!589295 e!841552)))

(declare-fun lt!432538 () Regex!3615)

(declare-fun lt!432550 () List!13363)

(declare-fun matchR!1617 (Regex!3615 List!13363) Bool)

(assert (=> b!1312531 (= res!589295 (not (matchR!1617 lt!432538 lt!432550)))))

(declare-fun b!1312532 () Bool)

(declare-fun res!589302 () Bool)

(assert (=> b!1312532 (=> (not res!589302) (not e!841545))))

(declare-fun isEmpty!7870 (List!13365) Bool)

(assert (=> b!1312532 (= res!589302 (not (isEmpty!7870 rules!2550)))))

(declare-fun e!841537 () Bool)

(declare-fun e!841542 () Bool)

(assert (=> b!1312533 (= e!841537 (not e!841542))))

(declare-fun res!589296 () Bool)

(assert (=> b!1312533 (=> res!589296 e!841542)))

(declare-fun lambda!53133 () Int)

(declare-fun Exists!773 (Int) Bool)

(assert (=> b!1312533 (= res!589296 (not (Exists!773 lambda!53133)))))

(assert (=> b!1312533 (Exists!773 lambda!53133)))

(declare-fun lt!432536 () Unit!19364)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!91 (Regex!3615 List!13363) Unit!19364)

(assert (=> b!1312533 (= lt!432536 (lemmaPrefixMatchThenExistsStringThatMatches!91 lt!432538 lt!432534))))

(declare-fun e!841541 () Bool)

(declare-fun tp!382328 () Bool)

(declare-fun b!1312534 () Bool)

(declare-fun e!841558 () Bool)

(assert (=> b!1312534 (= e!841541 (and tp!382328 (inv!17675 (tag!2563 (rule!4042 t2!34))) (inv!17678 (transformation!2301 (rule!4042 t2!34))) e!841558))))

(declare-fun e!841555 () Bool)

(declare-fun b!1312535 () Bool)

(declare-fun tp!382325 () Bool)

(assert (=> b!1312535 (= e!841555 (and tp!382325 (inv!17675 (tag!2563 (rule!4042 t1!34))) (inv!17678 (transformation!2301 (rule!4042 t1!34))) e!841547))))

(declare-fun b!1312536 () Bool)

(declare-fun res!589290 () Bool)

(assert (=> b!1312536 (=> res!589290 e!841536)))

(declare-fun lt!432541 () tuple2!12912)

(declare-fun isEmpty!7871 (BalanceConc!8684) Bool)

(assert (=> b!1312536 (= res!589290 (not (isEmpty!7871 (_2!7342 lt!432541))))))

(declare-fun b!1312537 () Bool)

(declare-fun res!589285 () Bool)

(assert (=> b!1312537 (=> (not res!589285) (not e!841545))))

(assert (=> b!1312537 (= res!589285 (rulesProduceIndividualToken!965 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1312538 () Bool)

(declare-fun res!589291 () Bool)

(declare-fun e!841539 () Bool)

(assert (=> b!1312538 (=> (not res!589291) (not e!841539))))

(declare-fun separableTokensPredicate!279 (LexerInterface!1996 Token!4264 Token!4264 List!13365) Bool)

(assert (=> b!1312538 (= res!589291 (not (separableTokensPredicate!279 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1312539 () Bool)

(declare-fun res!589280 () Bool)

(assert (=> b!1312539 (=> res!589280 e!841552)))

(assert (=> b!1312539 (= res!589280 (not (contains!2317 lt!432550 lt!432540)))))

(declare-fun b!1312540 () Bool)

(assert (=> b!1312540 (= e!841539 e!841537)))

(declare-fun res!589298 () Bool)

(assert (=> b!1312540 (=> (not res!589298) (not e!841537))))

(declare-fun prefixMatch!128 (Regex!3615 List!13363) Bool)

(assert (=> b!1312540 (= res!589298 (prefixMatch!128 lt!432538 lt!432534))))

(declare-fun rulesRegex!186 (LexerInterface!1996 List!13365) Regex!3615)

(assert (=> b!1312540 (= lt!432538 (rulesRegex!186 thiss!19762 rules!2550))))

(declare-fun lt!432554 () List!13363)

(declare-fun ++!3386 (List!13363 List!13363) List!13363)

(assert (=> b!1312540 (= lt!432534 (++!3386 lt!432554 (Cons!13297 lt!432540 Nil!13297)))))

(declare-fun lt!432552 () BalanceConc!8684)

(declare-fun apply!3003 (BalanceConc!8684 Int) C!7520)

(assert (=> b!1312540 (= lt!432540 (apply!3003 lt!432552 0))))

(declare-fun lt!432535 () BalanceConc!8684)

(assert (=> b!1312540 (= lt!432554 (list!4998 lt!432535))))

(declare-fun charsOf!1273 (Token!4264) BalanceConc!8684)

(assert (=> b!1312540 (= lt!432535 (charsOf!1273 t1!34))))

(assert (=> b!1312541 (= e!841552 e!841557)))

(declare-fun res!589289 () Bool)

(assert (=> b!1312541 (=> res!589289 e!841557)))

(declare-fun exists!305 (List!13366 Int) Bool)

(assert (=> b!1312541 (= res!589289 (not (exists!305 (map!2918 rules!2550 lambda!53134) lambda!53135)))))

(declare-fun lt!432543 () List!13366)

(assert (=> b!1312541 (exists!305 lt!432543 lambda!53135)))

(declare-fun lt!432547 () Unit!19364)

(declare-fun matchRGenUnionSpec!52 (Regex!3615 List!13366 List!13363) Unit!19364)

(assert (=> b!1312541 (= lt!432547 (matchRGenUnionSpec!52 lt!432538 lt!432543 lt!432550))))

(assert (=> b!1312541 (= lt!432543 (map!2918 rules!2550 lambda!53134))))

(declare-fun b!1312542 () Bool)

(declare-fun res!589293 () Bool)

(assert (=> b!1312542 (=> (not res!589293) (not e!841545))))

(declare-fun rulesInvariant!1866 (LexerInterface!1996 List!13365) Bool)

(assert (=> b!1312542 (= res!589293 (rulesInvariant!1866 thiss!19762 rules!2550))))

(declare-fun b!1312543 () Bool)

(declare-fun res!589300 () Bool)

(assert (=> b!1312543 (=> res!589300 e!841552)))

(declare-fun lt!432544 () C!7520)

(assert (=> b!1312543 (= res!589300 (not (contains!2317 lt!432550 lt!432544)))))

(declare-fun b!1312544 () Bool)

(declare-fun res!589305 () Bool)

(assert (=> b!1312544 (=> res!589305 e!841543)))

(assert (=> b!1312544 (= res!589305 (not (contains!2315 rules!2550 (rule!4042 t2!34))))))

(assert (=> b!1312545 (= e!841558 (and tp!382332 tp!382327))))

(declare-fun b!1312546 () Bool)

(declare-fun res!589299 () Bool)

(assert (=> b!1312546 (=> (not res!589299) (not e!841539))))

(declare-fun sepAndNonSepRulesDisjointChars!674 (List!13365 List!13365) Bool)

(assert (=> b!1312546 (= res!589299 (sepAndNonSepRulesDisjointChars!674 rules!2550 rules!2550))))

(declare-fun b!1312547 () Bool)

(declare-fun res!589304 () Bool)

(assert (=> b!1312547 (=> res!589304 e!841543)))

(assert (=> b!1312547 (= res!589304 (not (isEmpty!7871 (_2!7342 lt!432551))))))

(declare-fun b!1312548 () Bool)

(declare-fun res!589281 () Bool)

(assert (=> b!1312548 (=> res!589281 e!841543)))

(declare-datatypes ((tuple2!12914 0))(
  ( (tuple2!12915 (_1!7343 Token!4264) (_2!7343 List!13363)) )
))
(declare-datatypes ((Option!2568 0))(
  ( (None!2567) (Some!2567 (v!21094 tuple2!12914)) )
))
(declare-fun maxPrefix!1006 (LexerInterface!1996 List!13365 List!13363) Option!2568)

(assert (=> b!1312548 (= res!589281 (not (= (maxPrefix!1006 thiss!19762 rules!2550 (list!4998 lt!432552)) (Some!2567 (tuple2!12915 t2!34 Nil!13297)))))))

(declare-fun e!841548 () Bool)

(declare-fun b!1312549 () Bool)

(declare-fun tp!382331 () Bool)

(declare-fun inv!21 (TokenValue!2391) Bool)

(assert (=> b!1312549 (= e!841548 (and (inv!21 (value!75211 t1!34)) e!841555 tp!382331))))

(declare-fun b!1312550 () Bool)

(declare-fun e!841540 () Bool)

(assert (=> b!1312550 (= e!841542 e!841540)))

(declare-fun res!589287 () Bool)

(assert (=> b!1312550 (=> res!589287 e!841540)))

(declare-fun getSuffix!471 (List!13363 List!13363) List!13363)

(assert (=> b!1312550 (= res!589287 (not (= lt!432550 (++!3386 lt!432534 (getSuffix!471 lt!432550 lt!432534)))))))

(declare-fun pickWitness!78 (Int) List!13363)

(assert (=> b!1312550 (= lt!432550 (pickWitness!78 lambda!53133))))

(declare-fun b!1312551 () Bool)

(assert (=> b!1312551 (= e!841540 e!841552)))

(declare-fun res!589279 () Bool)

(assert (=> b!1312551 (=> res!589279 e!841552)))

(assert (=> b!1312551 (= res!589279 (not (contains!2317 lt!432534 lt!432544)))))

(assert (=> b!1312551 (= lt!432544 (apply!3003 lt!432535 0))))

(declare-fun b!1312552 () Bool)

(declare-fun res!589292 () Bool)

(assert (=> b!1312552 (=> res!589292 e!841536)))

(declare-fun lt!432553 () BalanceConc!8684)

(declare-fun lt!432537 () List!13364)

(assert (=> b!1312552 (= res!589292 (not (= (lexList!534 thiss!19762 rules!2550 (list!4998 lt!432553)) (tuple2!12911 lt!432537 Nil!13297))))))

(declare-fun e!841551 () Bool)

(declare-fun tp!382329 () Bool)

(declare-fun b!1312553 () Bool)

(assert (=> b!1312553 (= e!841551 (and (inv!21 (value!75211 t2!34)) e!841541 tp!382329))))

(declare-fun b!1312554 () Bool)

(assert (=> b!1312554 (= e!841545 e!841539)))

(declare-fun res!589303 () Bool)

(assert (=> b!1312554 (=> (not res!589303) (not e!841539))))

(declare-fun size!10809 (BalanceConc!8684) Int)

(assert (=> b!1312554 (= res!589303 (> (size!10809 lt!432552) 0))))

(assert (=> b!1312554 (= lt!432552 (charsOf!1273 t2!34))))

(assert (=> b!1312555 (= e!841543 true)))

(declare-fun lt!432545 () Unit!19364)

(declare-fun lt!432539 () Rule!4402)

(declare-fun forallContained!552 (List!13365 Int Rule!4402) Unit!19364)

(assert (=> b!1312555 (= lt!432545 (forallContained!552 rules!2550 lambda!53137 lt!432539))))

(declare-fun b!1312556 () Bool)

(declare-fun res!589278 () Bool)

(assert (=> b!1312556 (=> res!589278 e!841543)))

(assert (=> b!1312556 (= res!589278 (not (contains!2315 rules!2550 lt!432539)))))

(declare-fun res!589275 () Bool)

(assert (=> start!116054 (=> (not res!589275) (not e!841545))))

(get-info :version)

(assert (=> start!116054 (= res!589275 ((_ is Lexer!1994) thiss!19762))))

(assert (=> start!116054 e!841545))

(assert (=> start!116054 true))

(declare-fun e!841544 () Bool)

(assert (=> start!116054 e!841544))

(declare-fun inv!17679 (Token!4264) Bool)

(assert (=> start!116054 (and (inv!17679 t1!34) e!841548)))

(assert (=> start!116054 (and (inv!17679 t2!34) e!841551)))

(declare-fun b!1312527 () Bool)

(declare-fun res!589294 () Bool)

(assert (=> b!1312527 (=> res!589294 e!841536)))

(assert (=> b!1312527 (= res!589294 (not (= (maxPrefix!1006 thiss!19762 rules!2550 lt!432554) (Some!2567 (tuple2!12915 t1!34 Nil!13297)))))))

(declare-fun b!1312557 () Bool)

(declare-fun tp!382335 () Bool)

(assert (=> b!1312557 (= e!841544 (and e!841538 tp!382335))))

(declare-fun b!1312558 () Bool)

(assert (=> b!1312558 (= e!841546 e!841536)))

(declare-fun res!589286 () Bool)

(assert (=> b!1312558 (=> res!589286 e!841536)))

(assert (=> b!1312558 (= res!589286 (not (= (list!4999 (_1!7342 lt!432541)) lt!432537)))))

(assert (=> b!1312558 (= lt!432537 (Cons!13298 t1!34 Nil!13298))))

(assert (=> b!1312558 (= lt!432541 (lex!831 thiss!19762 rules!2550 lt!432553))))

(assert (=> b!1312558 (= lt!432553 (print!770 thiss!19762 (singletonSeq!876 t1!34)))))

(declare-fun getWitness!197 (List!13365 Int) Rule!4402)

(assert (=> b!1312558 (= lt!432539 (getWitness!197 rules!2550 lambda!53136))))

(assert (=> b!1312559 (= e!841553 (and tp!382326 tp!382333))))

(assert (= (and start!116054 res!589275) b!1312532))

(assert (= (and b!1312532 res!589302) b!1312542))

(assert (= (and b!1312542 res!589293) b!1312522))

(assert (= (and b!1312522 res!589301) b!1312537))

(assert (= (and b!1312537 res!589285) b!1312529))

(assert (= (and b!1312529 res!589284) b!1312554))

(assert (= (and b!1312554 res!589303) b!1312546))

(assert (= (and b!1312546 res!589299) b!1312538))

(assert (= (and b!1312538 res!589291) b!1312540))

(assert (= (and b!1312540 res!589298) b!1312533))

(assert (= (and b!1312533 (not res!589296)) b!1312550))

(assert (= (and b!1312550 (not res!589287)) b!1312551))

(assert (= (and b!1312551 (not res!589279)) b!1312543))

(assert (= (and b!1312543 (not res!589300)) b!1312528))

(assert (= (and b!1312528 (not res!589297)) b!1312539))

(assert (= (and b!1312539 (not res!589280)) b!1312531))

(assert (= (and b!1312531 (not res!589295)) b!1312541))

(assert (= (and b!1312541 (not res!589289)) b!1312526))

(assert (= (and b!1312526 (not res!589276)) b!1312521))

(assert (= (and b!1312521 (not res!589283)) b!1312558))

(assert (= (and b!1312558 (not res!589286)) b!1312536))

(assert (= (and b!1312536 (not res!589290)) b!1312552))

(assert (= (and b!1312552 (not res!589292)) b!1312527))

(assert (= (and b!1312527 (not res!589294)) b!1312524))

(assert (= (and b!1312524 (not res!589277)) b!1312523))

(assert (= (and b!1312523 (not res!589282)) b!1312547))

(assert (= (and b!1312547 (not res!589304)) b!1312520))

(assert (= (and b!1312520 (not res!589288)) b!1312548))

(assert (= (and b!1312548 (not res!589281)) b!1312544))

(assert (= (and b!1312544 (not res!589305)) b!1312556))

(assert (= (and b!1312556 (not res!589278)) b!1312555))

(assert (= b!1312525 b!1312559))

(assert (= b!1312557 b!1312525))

(assert (= (and start!116054 ((_ is Cons!13299) rules!2550)) b!1312557))

(assert (= b!1312535 b!1312530))

(assert (= b!1312549 b!1312535))

(assert (= start!116054 b!1312549))

(assert (= b!1312534 b!1312545))

(assert (= b!1312553 b!1312534))

(assert (= start!116054 b!1312553))

(declare-fun m!1465377 () Bool)

(assert (=> start!116054 m!1465377))

(declare-fun m!1465379 () Bool)

(assert (=> start!116054 m!1465379))

(declare-fun m!1465381 () Bool)

(assert (=> b!1312546 m!1465381))

(declare-fun m!1465383 () Bool)

(assert (=> b!1312551 m!1465383))

(declare-fun m!1465385 () Bool)

(assert (=> b!1312551 m!1465385))

(declare-fun m!1465387 () Bool)

(assert (=> b!1312537 m!1465387))

(declare-fun m!1465389 () Bool)

(assert (=> b!1312539 m!1465389))

(declare-fun m!1465391 () Bool)

(assert (=> b!1312538 m!1465391))

(declare-fun m!1465393 () Bool)

(assert (=> b!1312547 m!1465393))

(declare-fun m!1465395 () Bool)

(assert (=> b!1312556 m!1465395))

(declare-fun m!1465397 () Bool)

(assert (=> b!1312526 m!1465397))

(assert (=> b!1312526 m!1465397))

(declare-fun m!1465399 () Bool)

(assert (=> b!1312526 m!1465399))

(assert (=> b!1312526 m!1465397))

(assert (=> b!1312526 m!1465397))

(declare-fun m!1465401 () Bool)

(assert (=> b!1312526 m!1465401))

(declare-fun m!1465403 () Bool)

(assert (=> b!1312548 m!1465403))

(assert (=> b!1312548 m!1465403))

(declare-fun m!1465405 () Bool)

(assert (=> b!1312548 m!1465405))

(declare-fun m!1465407 () Bool)

(assert (=> b!1312554 m!1465407))

(declare-fun m!1465409 () Bool)

(assert (=> b!1312554 m!1465409))

(declare-fun m!1465411 () Bool)

(assert (=> b!1312543 m!1465411))

(declare-fun m!1465413 () Bool)

(assert (=> b!1312536 m!1465413))

(declare-fun m!1465415 () Bool)

(assert (=> b!1312553 m!1465415))

(declare-fun m!1465417 () Bool)

(assert (=> b!1312531 m!1465417))

(declare-fun m!1465419 () Bool)

(assert (=> b!1312558 m!1465419))

(declare-fun m!1465421 () Bool)

(assert (=> b!1312558 m!1465421))

(declare-fun m!1465423 () Bool)

(assert (=> b!1312558 m!1465423))

(assert (=> b!1312558 m!1465421))

(declare-fun m!1465425 () Bool)

(assert (=> b!1312558 m!1465425))

(declare-fun m!1465427 () Bool)

(assert (=> b!1312558 m!1465427))

(declare-fun m!1465429 () Bool)

(assert (=> b!1312534 m!1465429))

(declare-fun m!1465431 () Bool)

(assert (=> b!1312534 m!1465431))

(declare-fun m!1465433 () Bool)

(assert (=> b!1312524 m!1465433))

(declare-fun m!1465435 () Bool)

(assert (=> b!1312527 m!1465435))

(declare-fun m!1465437 () Bool)

(assert (=> b!1312522 m!1465437))

(declare-fun m!1465439 () Bool)

(assert (=> b!1312541 m!1465439))

(assert (=> b!1312541 m!1465397))

(assert (=> b!1312541 m!1465397))

(declare-fun m!1465441 () Bool)

(assert (=> b!1312541 m!1465441))

(assert (=> b!1312541 m!1465397))

(declare-fun m!1465443 () Bool)

(assert (=> b!1312541 m!1465443))

(declare-fun m!1465445 () Bool)

(assert (=> b!1312521 m!1465445))

(assert (=> b!1312521 m!1465445))

(declare-fun m!1465447 () Bool)

(assert (=> b!1312521 m!1465447))

(declare-fun m!1465449 () Bool)

(assert (=> b!1312544 m!1465449))

(declare-fun m!1465451 () Bool)

(assert (=> b!1312520 m!1465451))

(assert (=> b!1312520 m!1465451))

(declare-fun m!1465453 () Bool)

(assert (=> b!1312520 m!1465453))

(declare-fun m!1465455 () Bool)

(assert (=> b!1312535 m!1465455))

(declare-fun m!1465457 () Bool)

(assert (=> b!1312535 m!1465457))

(declare-fun m!1465459 () Bool)

(assert (=> b!1312525 m!1465459))

(declare-fun m!1465461 () Bool)

(assert (=> b!1312525 m!1465461))

(declare-fun m!1465463 () Bool)

(assert (=> b!1312552 m!1465463))

(assert (=> b!1312552 m!1465463))

(declare-fun m!1465465 () Bool)

(assert (=> b!1312552 m!1465465))

(declare-fun m!1465467 () Bool)

(assert (=> b!1312528 m!1465467))

(declare-fun m!1465469 () Bool)

(assert (=> b!1312550 m!1465469))

(assert (=> b!1312550 m!1465469))

(declare-fun m!1465471 () Bool)

(assert (=> b!1312550 m!1465471))

(declare-fun m!1465473 () Bool)

(assert (=> b!1312550 m!1465473))

(declare-fun m!1465475 () Bool)

(assert (=> b!1312532 m!1465475))

(declare-fun m!1465477 () Bool)

(assert (=> b!1312533 m!1465477))

(assert (=> b!1312533 m!1465477))

(declare-fun m!1465479 () Bool)

(assert (=> b!1312533 m!1465479))

(declare-fun m!1465481 () Bool)

(assert (=> b!1312540 m!1465481))

(declare-fun m!1465483 () Bool)

(assert (=> b!1312540 m!1465483))

(declare-fun m!1465485 () Bool)

(assert (=> b!1312540 m!1465485))

(declare-fun m!1465487 () Bool)

(assert (=> b!1312540 m!1465487))

(declare-fun m!1465489 () Bool)

(assert (=> b!1312540 m!1465489))

(declare-fun m!1465491 () Bool)

(assert (=> b!1312540 m!1465491))

(declare-fun m!1465493 () Bool)

(assert (=> b!1312523 m!1465493))

(declare-fun m!1465495 () Bool)

(assert (=> b!1312523 m!1465495))

(declare-fun m!1465497 () Bool)

(assert (=> b!1312523 m!1465497))

(assert (=> b!1312523 m!1465497))

(declare-fun m!1465499 () Bool)

(assert (=> b!1312523 m!1465499))

(declare-fun m!1465501 () Bool)

(assert (=> b!1312555 m!1465501))

(declare-fun m!1465503 () Bool)

(assert (=> b!1312542 m!1465503))

(declare-fun m!1465505 () Bool)

(assert (=> b!1312549 m!1465505))

(check-sat (not b!1312557) (not b!1312540) (not b!1312552) (not b!1312553) (not b!1312531) (not b_next!32313) (not b!1312532) (not b!1312538) (not b!1312520) (not b_next!32307) (not b!1312521) (not b!1312525) (not b!1312550) (not b!1312539) (not b!1312556) b_and!87669 b_and!87673 (not b!1312528) (not b!1312527) b_and!87665 (not b!1312533) (not b!1312547) (not b!1312542) (not b!1312546) (not b!1312524) (not b!1312536) (not b!1312541) (not b!1312537) b_and!87667 (not b!1312526) (not b!1312522) (not b!1312544) b_and!87663 (not b!1312555) (not start!116054) (not b!1312543) (not b!1312534) (not b_next!32317) (not b!1312523) (not b_next!32311) b_and!87671 (not b!1312535) (not b!1312551) (not b!1312558) (not b_next!32309) (not b!1312549) (not b_next!32315) (not b!1312554) (not b!1312548))
(check-sat (not b_next!32307) b_and!87665 b_and!87667 b_and!87663 (not b_next!32313) (not b_next!32317) (not b_next!32309) (not b_next!32315) b_and!87669 b_and!87673 (not b_next!32311) b_and!87671)
