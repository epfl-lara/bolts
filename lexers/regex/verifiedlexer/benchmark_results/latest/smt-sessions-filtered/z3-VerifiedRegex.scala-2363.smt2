; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117930 () Bool)

(assert start!117930)

(declare-fun b!1327318 () Bool)

(declare-fun b_free!32091 () Bool)

(declare-fun b_next!32795 () Bool)

(assert (=> b!1327318 (= b_free!32091 (not b_next!32795))))

(declare-fun tp!384685 () Bool)

(declare-fun b_and!88663 () Bool)

(assert (=> b!1327318 (= tp!384685 b_and!88663)))

(declare-fun b_free!32093 () Bool)

(declare-fun b_next!32797 () Bool)

(assert (=> b!1327318 (= b_free!32093 (not b_next!32797))))

(declare-fun tp!384690 () Bool)

(declare-fun b_and!88665 () Bool)

(assert (=> b!1327318 (= tp!384690 b_and!88665)))

(declare-fun b!1327333 () Bool)

(declare-fun b_free!32095 () Bool)

(declare-fun b_next!32799 () Bool)

(assert (=> b!1327333 (= b_free!32095 (not b_next!32799))))

(declare-fun tp!384688 () Bool)

(declare-fun b_and!88667 () Bool)

(assert (=> b!1327333 (= tp!384688 b_and!88667)))

(declare-fun b_free!32097 () Bool)

(declare-fun b_next!32801 () Bool)

(assert (=> b!1327333 (= b_free!32097 (not b_next!32801))))

(declare-fun tp!384682 () Bool)

(declare-fun b_and!88669 () Bool)

(assert (=> b!1327333 (= tp!384682 b_and!88669)))

(declare-fun b!1327314 () Bool)

(declare-fun b_free!32099 () Bool)

(declare-fun b_next!32803 () Bool)

(assert (=> b!1327314 (= b_free!32099 (not b_next!32803))))

(declare-fun tp!384692 () Bool)

(declare-fun b_and!88671 () Bool)

(assert (=> b!1327314 (= tp!384692 b_and!88671)))

(declare-fun b_free!32101 () Bool)

(declare-fun b_next!32805 () Bool)

(assert (=> b!1327314 (= b_free!32101 (not b_next!32805))))

(declare-fun tp!384691 () Bool)

(declare-fun b_and!88673 () Bool)

(assert (=> b!1327314 (= tp!384691 b_and!88673)))

(declare-fun b!1327292 () Bool)

(assert (=> b!1327292 true))

(assert (=> b!1327292 true))

(declare-fun b!1327332 () Bool)

(assert (=> b!1327332 true))

(declare-fun b!1327311 () Bool)

(assert (=> b!1327311 true))

(declare-fun bs!331404 () Bool)

(declare-fun b!1327316 () Bool)

(assert (= bs!331404 (and b!1327316 b!1327311)))

(declare-fun lambda!54951 () Int)

(declare-fun lambda!54950 () Int)

(assert (=> bs!331404 (not (= lambda!54951 lambda!54950))))

(assert (=> b!1327316 true))

(declare-fun b!1327286 () Bool)

(declare-fun e!850402 () Bool)

(declare-fun e!850408 () Bool)

(assert (=> b!1327286 (= e!850402 e!850408)))

(declare-fun res!597609 () Bool)

(assert (=> b!1327286 (=> res!597609 e!850408)))

(declare-datatypes ((C!7588 0))(
  ( (C!7589 (val!4354 Int)) )
))
(declare-datatypes ((List!13552 0))(
  ( (Nil!13486) (Cons!13486 (h!18887 C!7588) (t!118853 List!13552)) )
))
(declare-fun lt!438866 () List!13552)

(declare-fun lt!438865 () List!13552)

(declare-fun ++!3444 (List!13552 List!13552) List!13552)

(declare-fun getSuffix!505 (List!13552 List!13552) List!13552)

(assert (=> b!1327286 (= res!597609 (not (= lt!438866 (++!3444 lt!438865 (getSuffix!505 lt!438866 lt!438865)))))))

(declare-fun lambda!54947 () Int)

(declare-fun pickWitness!112 (Int) List!13552)

(assert (=> b!1327286 (= lt!438866 (pickWitness!112 lambda!54947))))

(declare-fun b!1327287 () Bool)

(declare-fun e!850418 () Bool)

(declare-fun e!850412 () Bool)

(assert (=> b!1327287 (= e!850418 e!850412)))

(declare-fun res!597613 () Bool)

(assert (=> b!1327287 (=> res!597613 e!850412)))

(declare-datatypes ((Regex!3649 0))(
  ( (ElementMatch!3649 (c!217606 C!7588)) (Concat!6074 (regOne!7810 Regex!3649) (regTwo!7810 Regex!3649)) (EmptyExpr!3649) (Star!3649 (reg!3978 Regex!3649)) (EmptyLang!3649) (Union!3649 (regOne!7811 Regex!3649) (regTwo!7811 Regex!3649)) )
))
(declare-fun lt!438855 () Regex!3649)

(declare-fun validRegex!1565 (Regex!3649) Bool)

(assert (=> b!1327287 (= res!597613 (not (validRegex!1565 lt!438855)))))

(declare-datatypes ((List!13553 0))(
  ( (Nil!13487) (Cons!13487 (h!18888 (_ BitVec 16)) (t!118854 List!13553)) )
))
(declare-datatypes ((TokenValue!2425 0))(
  ( (FloatLiteralValue!4850 (text!17420 List!13553)) (TokenValueExt!2424 (__x!8679 Int)) (Broken!12125 (value!76154 List!13553)) (Object!2490) (End!2425) (Def!2425) (Underscore!2425) (Match!2425) (Else!2425) (Error!2425) (Case!2425) (If!2425) (Extends!2425) (Abstract!2425) (Class!2425) (Val!2425) (DelimiterValue!4850 (del!2485 List!13553)) (KeywordValue!2431 (value!76155 List!13553)) (CommentValue!4850 (value!76156 List!13553)) (WhitespaceValue!4850 (value!76157 List!13553)) (IndentationValue!2425 (value!76158 List!13553)) (String!16360) (Int32!2425) (Broken!12126 (value!76159 List!13553)) (Boolean!2426) (Unit!19581) (OperatorValue!2428 (op!2485 List!13553)) (IdentifierValue!4850 (value!76160 List!13553)) (IdentifierValue!4851 (value!76161 List!13553)) (WhitespaceValue!4851 (value!76162 List!13553)) (True!4850) (False!4850) (Broken!12127 (value!76163 List!13553)) (Broken!12128 (value!76164 List!13553)) (True!4851) (RightBrace!2425) (RightBracket!2425) (Colon!2425) (Null!2425) (Comma!2425) (LeftBracket!2425) (False!4851) (LeftBrace!2425) (ImaginaryLiteralValue!2425 (text!17421 List!13553)) (StringLiteralValue!7275 (value!76165 List!13553)) (EOFValue!2425 (value!76166 List!13553)) (IdentValue!2425 (value!76167 List!13553)) (DelimiterValue!4851 (value!76168 List!13553)) (DedentValue!2425 (value!76169 List!13553)) (NewLineValue!2425 (value!76170 List!13553)) (IntegerValue!7275 (value!76171 (_ BitVec 32)) (text!17422 List!13553)) (IntegerValue!7276 (value!76172 Int) (text!17423 List!13553)) (Times!2425) (Or!2425) (Equal!2425) (Minus!2425) (Broken!12129 (value!76173 List!13553)) (And!2425) (Div!2425) (LessEqual!2425) (Mod!2425) (Concat!6075) (Not!2425) (Plus!2425) (SpaceValue!2425 (value!76174 List!13553)) (IntegerValue!7277 (value!76175 Int) (text!17424 List!13553)) (StringLiteralValue!7276 (text!17425 List!13553)) (FloatLiteralValue!4851 (text!17426 List!13553)) (BytesLiteralValue!2425 (value!76176 List!13553)) (CommentValue!4851 (value!76177 List!13553)) (StringLiteralValue!7277 (value!76178 List!13553)) (ErrorTokenValue!2425 (msg!2486 List!13553)) )
))
(declare-datatypes ((String!16361 0))(
  ( (String!16362 (value!76179 String)) )
))
(declare-datatypes ((IArray!8885 0))(
  ( (IArray!8886 (innerList!4500 List!13552)) )
))
(declare-datatypes ((Conc!4440 0))(
  ( (Node!4440 (left!11585 Conc!4440) (right!11915 Conc!4440) (csize!9110 Int) (cheight!4651 Int)) (Leaf!6804 (xs!7155 IArray!8885) (csize!9111 Int)) (Empty!4440) )
))
(declare-datatypes ((BalanceConc!8820 0))(
  ( (BalanceConc!8821 (c!217607 Conc!4440)) )
))
(declare-datatypes ((TokenValueInjection!4510 0))(
  ( (TokenValueInjection!4511 (toValue!3566 Int) (toChars!3425 Int)) )
))
(declare-datatypes ((Rule!4470 0))(
  ( (Rule!4471 (regex!2335 Regex!3649) (tag!2597 String!16361) (isSeparator!2335 Bool) (transformation!2335 TokenValueInjection!4510)) )
))
(declare-fun lt!438856 () Rule!4470)

(declare-fun lt!438853 () C!7588)

(declare-fun contains!2421 (List!13552 C!7588) Bool)

(declare-fun usedCharacters!200 (Regex!3649) List!13552)

(assert (=> b!1327287 (not (contains!2421 (usedCharacters!200 (regex!2335 lt!438856)) lt!438853))))

(declare-datatypes ((LexerInterface!2030 0))(
  ( (LexerInterfaceExt!2027 (__x!8680 Int)) (Lexer!2028) )
))
(declare-fun thiss!19762 () LexerInterface!2030)

(declare-datatypes ((Unit!19582 0))(
  ( (Unit!19583) )
))
(declare-fun lt!438862 () Unit!19582)

(declare-datatypes ((List!13554 0))(
  ( (Nil!13488) (Cons!13488 (h!18889 Rule!4470) (t!118855 List!13554)) )
))
(declare-fun rules!2550 () List!13554)

(declare-datatypes ((Token!4332 0))(
  ( (Token!4333 (value!76180 TokenValue!2425) (rule!4080 Rule!4470) (size!10976 Int) (originalCharacters!3197 List!13552)) )
))
(declare-fun t2!34 () Token!4332)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!112 (LexerInterface!2030 List!13554 List!13554 Rule!4470 Rule!4470 C!7588) Unit!19582)

(assert (=> b!1327287 (= lt!438862 (lemmaSepRuleNotContainsCharContainedInANonSepRule!112 thiss!19762 rules!2550 rules!2550 (rule!4080 t2!34) lt!438856 lt!438853))))

(declare-fun b!1327288 () Bool)

(assert (=> b!1327288 (= e!850412 true)))

(declare-fun lt!438860 () Bool)

(assert (=> b!1327288 (= lt!438860 (contains!2421 (usedCharacters!200 lt!438855) lt!438853))))

(declare-fun b!1327289 () Bool)

(declare-fun res!597595 () Bool)

(declare-fun e!850406 () Bool)

(assert (=> b!1327289 (=> (not res!597595) (not e!850406))))

(declare-fun isEmpty!8026 (List!13554) Bool)

(assert (=> b!1327289 (= res!597595 (not (isEmpty!8026 rules!2550)))))

(declare-fun b!1327290 () Bool)

(declare-fun e!850413 () Unit!19582)

(declare-fun Unit!19584 () Unit!19582)

(assert (=> b!1327290 (= e!850413 Unit!19584)))

(declare-fun e!850423 () Bool)

(declare-fun t1!34 () Token!4332)

(declare-fun b!1327291 () Bool)

(declare-fun e!850434 () Bool)

(declare-fun tp!384689 () Bool)

(declare-fun inv!21 (TokenValue!2425) Bool)

(assert (=> b!1327291 (= e!850423 (and (inv!21 (value!76180 t1!34)) e!850434 tp!384689))))

(declare-fun e!850409 () Bool)

(assert (=> b!1327292 (= e!850409 (not e!850402))))

(declare-fun res!597596 () Bool)

(assert (=> b!1327292 (=> res!597596 e!850402)))

(declare-fun Exists!807 (Int) Bool)

(assert (=> b!1327292 (= res!597596 (not (Exists!807 lambda!54947)))))

(assert (=> b!1327292 (Exists!807 lambda!54947)))

(declare-fun lt!438850 () Unit!19582)

(declare-fun lt!438851 () Regex!3649)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!125 (Regex!3649 List!13552) Unit!19582)

(assert (=> b!1327292 (= lt!438850 (lemmaPrefixMatchThenExistsStringThatMatches!125 lt!438851 lt!438865))))

(declare-fun b!1327293 () Bool)

(declare-fun res!597598 () Bool)

(assert (=> b!1327293 (=> (not res!597598) (not e!850406))))

(declare-fun rulesInvariant!1900 (LexerInterface!2030 List!13554) Bool)

(assert (=> b!1327293 (= res!597598 (rulesInvariant!1900 thiss!19762 rules!2550))))

(declare-fun b!1327294 () Bool)

(declare-fun e!850415 () Unit!19582)

(declare-fun Unit!19585 () Unit!19582)

(assert (=> b!1327294 (= e!850415 Unit!19585)))

(declare-fun e!850426 () Bool)

(declare-fun b!1327295 () Bool)

(declare-fun e!850422 () Bool)

(declare-fun tp!384684 () Bool)

(declare-fun inv!17838 (String!16361) Bool)

(declare-fun inv!17841 (TokenValueInjection!4510) Bool)

(assert (=> b!1327295 (= e!850422 (and tp!384684 (inv!17838 (tag!2597 (rule!4080 t2!34))) (inv!17841 (transformation!2335 (rule!4080 t2!34))) e!850426))))

(declare-fun b!1327296 () Bool)

(declare-fun res!597607 () Bool)

(declare-fun e!850416 () Bool)

(assert (=> b!1327296 (=> res!597607 e!850416)))

(declare-fun lt!438852 () BalanceConc!8820)

(declare-datatypes ((List!13555 0))(
  ( (Nil!13489) (Cons!13489 (h!18890 Token!4332) (t!118856 List!13555)) )
))
(declare-fun lt!438837 () List!13555)

(declare-datatypes ((tuple2!13130 0))(
  ( (tuple2!13131 (_1!7451 List!13555) (_2!7451 List!13552)) )
))
(declare-fun lexList!568 (LexerInterface!2030 List!13554 List!13552) tuple2!13130)

(declare-fun list!5106 (BalanceConc!8820) List!13552)

(assert (=> b!1327296 (= res!597607 (not (= (lexList!568 thiss!19762 rules!2550 (list!5106 lt!438852)) (tuple2!13131 lt!438837 Nil!13486))))))

(declare-fun b!1327297 () Bool)

(declare-fun res!597610 () Bool)

(declare-fun e!850421 () Bool)

(assert (=> b!1327297 (=> res!597610 e!850421)))

(assert (=> b!1327297 (= res!597610 (not (contains!2421 lt!438866 lt!438853)))))

(declare-fun b!1327298 () Bool)

(declare-fun e!850424 () Bool)

(declare-fun e!850419 () Bool)

(assert (=> b!1327298 (= e!850424 e!850419)))

(declare-fun res!597612 () Bool)

(assert (=> b!1327298 (=> res!597612 e!850419)))

(declare-fun lt!438838 () Bool)

(assert (=> b!1327298 (= res!597612 lt!438838)))

(declare-fun lt!438854 () Unit!19582)

(assert (=> b!1327298 (= lt!438854 e!850413)))

(declare-fun c!217605 () Bool)

(assert (=> b!1327298 (= c!217605 lt!438838)))

(assert (=> b!1327298 (= lt!438838 (not (contains!2421 (usedCharacters!200 (regex!2335 (rule!4080 t2!34))) lt!438853)))))

(declare-fun b!1327299 () Bool)

(declare-fun res!597627 () Bool)

(assert (=> b!1327299 (=> (not res!597627) (not e!850406))))

(assert (=> b!1327299 (= res!597627 (not (= (isSeparator!2335 (rule!4080 t1!34)) (isSeparator!2335 (rule!4080 t2!34)))))))

(declare-fun b!1327300 () Bool)

(declare-fun res!597606 () Bool)

(assert (=> b!1327300 (=> res!597606 e!850421)))

(assert (=> b!1327300 (= res!597606 (not (contains!2421 lt!438865 lt!438853)))))

(declare-fun b!1327301 () Bool)

(declare-fun res!597619 () Bool)

(assert (=> b!1327301 (=> res!597619 e!850421)))

(declare-fun matchR!1651 (Regex!3649 List!13552) Bool)

(assert (=> b!1327301 (= res!597619 (not (matchR!1651 lt!438851 lt!438866)))))

(declare-fun b!1327302 () Bool)

(declare-fun e!850405 () Bool)

(declare-fun e!850430 () Bool)

(assert (=> b!1327302 (= e!850405 e!850430)))

(declare-fun res!597620 () Bool)

(assert (=> b!1327302 (=> res!597620 e!850430)))

(declare-fun lambda!54948 () Int)

(declare-datatypes ((List!13556 0))(
  ( (Nil!13490) (Cons!13490 (h!18891 Regex!3649) (t!118857 List!13556)) )
))
(declare-fun contains!2422 (List!13556 Regex!3649) Bool)

(declare-fun map!2969 (List!13554 Int) List!13556)

(assert (=> b!1327302 (= res!597620 (not (contains!2422 (map!2969 rules!2550 lambda!54948) lt!438855)))))

(declare-fun lambda!54949 () Int)

(declare-fun getWitness!264 (List!13556 Int) Regex!3649)

(assert (=> b!1327302 (= lt!438855 (getWitness!264 (map!2969 rules!2550 lambda!54948) lambda!54949))))

(declare-fun b!1327303 () Bool)

(declare-fun res!597616 () Bool)

(declare-fun e!850428 () Bool)

(assert (=> b!1327303 (=> res!597616 e!850428)))

(declare-fun lt!438848 () List!13552)

(assert (=> b!1327303 (= res!597616 (not (matchR!1651 (regex!2335 (rule!4080 t2!34)) lt!438848)))))

(declare-fun b!1327304 () Bool)

(declare-fun e!850420 () Bool)

(assert (=> b!1327304 (= e!850416 e!850420)))

(declare-fun res!597605 () Bool)

(assert (=> b!1327304 (=> res!597605 e!850420)))

(declare-datatypes ((IArray!8887 0))(
  ( (IArray!8888 (innerList!4501 List!13555)) )
))
(declare-datatypes ((Conc!4441 0))(
  ( (Node!4441 (left!11586 Conc!4441) (right!11916 Conc!4441) (csize!9112 Int) (cheight!4652 Int)) (Leaf!6805 (xs!7156 IArray!8887) (csize!9113 Int)) (Empty!4441) )
))
(declare-datatypes ((BalanceConc!8822 0))(
  ( (BalanceConc!8823 (c!217608 Conc!4441)) )
))
(declare-datatypes ((tuple2!13132 0))(
  ( (tuple2!13133 (_1!7452 BalanceConc!8822) (_2!7452 BalanceConc!8820)) )
))
(declare-fun lt!438858 () tuple2!13132)

(declare-fun lt!438840 () List!13555)

(declare-fun list!5107 (BalanceConc!8822) List!13555)

(assert (=> b!1327304 (= res!597605 (not (= (list!5107 (_1!7452 lt!438858)) lt!438840)))))

(assert (=> b!1327304 (= lt!438840 (Cons!13489 t2!34 Nil!13489))))

(declare-fun lt!438841 () BalanceConc!8820)

(declare-fun lex!865 (LexerInterface!2030 List!13554 BalanceConc!8820) tuple2!13132)

(assert (=> b!1327304 (= lt!438858 (lex!865 thiss!19762 rules!2550 lt!438841))))

(declare-fun print!804 (LexerInterface!2030 BalanceConc!8822) BalanceConc!8820)

(declare-fun singletonSeq!926 (Token!4332) BalanceConc!8822)

(assert (=> b!1327304 (= lt!438841 (print!804 thiss!19762 (singletonSeq!926 t2!34)))))

(declare-fun b!1327305 () Bool)

(assert (=> b!1327305 (= e!850408 e!850421)))

(declare-fun res!597621 () Bool)

(assert (=> b!1327305 (=> res!597621 e!850421)))

(declare-fun lt!438845 () C!7588)

(assert (=> b!1327305 (= res!597621 (not (contains!2421 lt!438865 lt!438845)))))

(declare-fun lt!438842 () BalanceConc!8820)

(declare-fun apply!3113 (BalanceConc!8820 Int) C!7588)

(assert (=> b!1327305 (= lt!438845 (apply!3113 lt!438842 0))))

(declare-fun b!1327306 () Bool)

(declare-fun res!597601 () Bool)

(assert (=> b!1327306 (=> (not res!597601) (not e!850406))))

(declare-fun rulesProduceIndividualToken!999 (LexerInterface!2030 List!13554 Token!4332) Bool)

(assert (=> b!1327306 (= res!597601 (rulesProduceIndividualToken!999 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1327307 () Bool)

(declare-fun e!850414 () Bool)

(assert (=> b!1327307 (= e!850414 e!850416)))

(declare-fun res!597602 () Bool)

(assert (=> b!1327307 (=> res!597602 e!850416)))

(declare-fun lt!438847 () tuple2!13132)

(assert (=> b!1327307 (= res!597602 (not (= (list!5107 (_1!7452 lt!438847)) lt!438837)))))

(assert (=> b!1327307 (= lt!438837 (Cons!13489 t1!34 Nil!13489))))

(assert (=> b!1327307 (= lt!438847 (lex!865 thiss!19762 rules!2550 lt!438852))))

(assert (=> b!1327307 (= lt!438852 (print!804 thiss!19762 (singletonSeq!926 t1!34)))))

(declare-fun getWitness!265 (List!13554 Int) Rule!4470)

(assert (=> b!1327307 (= lt!438856 (getWitness!265 rules!2550 lambda!54950))))

(declare-fun b!1327308 () Bool)

(declare-fun res!597617 () Bool)

(assert (=> b!1327308 (=> res!597617 e!850420)))

(assert (=> b!1327308 (= res!597617 (not (= (lexList!568 thiss!19762 rules!2550 (list!5106 lt!438841)) (tuple2!13131 lt!438840 Nil!13486))))))

(declare-fun tp!384686 () Bool)

(declare-fun e!850427 () Bool)

(declare-fun e!850429 () Bool)

(declare-fun b!1327309 () Bool)

(assert (=> b!1327309 (= e!850429 (and tp!384686 (inv!17838 (tag!2597 (h!18889 rules!2550))) (inv!17841 (transformation!2335 (h!18889 rules!2550))) e!850427))))

(declare-fun b!1327310 () Bool)

(declare-fun e!850411 () Bool)

(assert (=> b!1327310 (= e!850406 e!850411)))

(declare-fun res!597631 () Bool)

(assert (=> b!1327310 (=> (not res!597631) (not e!850411))))

(declare-fun lt!438836 () BalanceConc!8820)

(declare-fun size!10977 (BalanceConc!8820) Int)

(assert (=> b!1327310 (= res!597631 (> (size!10977 lt!438836) 0))))

(declare-fun charsOf!1307 (Token!4332) BalanceConc!8820)

(assert (=> b!1327310 (= lt!438836 (charsOf!1307 t2!34))))

(assert (=> b!1327311 (= e!850430 e!850414)))

(declare-fun res!597600 () Bool)

(assert (=> b!1327311 (=> res!597600 e!850414)))

(declare-fun exists!372 (List!13554 Int) Bool)

(assert (=> b!1327311 (= res!597600 (not (exists!372 rules!2550 lambda!54950)))))

(assert (=> b!1327311 (exists!372 rules!2550 lambda!54950)))

(declare-fun lt!438864 () Unit!19582)

(declare-fun lemmaMapContains!78 (List!13554 Int Regex!3649) Unit!19582)

(assert (=> b!1327311 (= lt!438864 (lemmaMapContains!78 rules!2550 lambda!54948 lt!438855))))

(declare-fun b!1327312 () Bool)

(declare-fun res!597618 () Bool)

(assert (=> b!1327312 (=> res!597618 e!850416)))

(declare-fun lt!438843 () List!13552)

(declare-datatypes ((tuple2!13134 0))(
  ( (tuple2!13135 (_1!7453 Token!4332) (_2!7453 List!13552)) )
))
(declare-datatypes ((Option!2606 0))(
  ( (None!2605) (Some!2605 (v!21210 tuple2!13134)) )
))
(declare-fun maxPrefix!1040 (LexerInterface!2030 List!13554 List!13552) Option!2606)

(assert (=> b!1327312 (= res!597618 (not (= (maxPrefix!1040 thiss!19762 rules!2550 lt!438843) (Some!2605 (tuple2!13135 t1!34 Nil!13486)))))))

(declare-fun b!1327313 () Bool)

(declare-fun res!597614 () Bool)

(assert (=> b!1327313 (=> res!597614 e!850421)))

(assert (=> b!1327313 (= res!597614 (not (contains!2421 lt!438866 lt!438845)))))

(assert (=> b!1327314 (= e!850426 (and tp!384692 tp!384691))))

(declare-fun b!1327315 () Bool)

(declare-fun Unit!19586 () Unit!19582)

(assert (=> b!1327315 (= e!850415 Unit!19586)))

(declare-fun lt!438846 () Unit!19582)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!146 (Regex!3649 List!13552 C!7588) Unit!19582)

(declare-fun head!2326 (List!13552) C!7588)

(assert (=> b!1327315 (= lt!438846 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!146 (regex!2335 (rule!4080 t1!34)) lt!438843 (head!2326 lt!438843)))))

(assert (=> b!1327315 false))

(declare-fun e!850407 () Bool)

(assert (=> b!1327316 (= e!850407 e!850428)))

(declare-fun res!597622 () Bool)

(assert (=> b!1327316 (=> res!597622 e!850428)))

(assert (=> b!1327316 (= res!597622 (not (matchR!1651 (regex!2335 (rule!4080 t1!34)) lt!438843)))))

(declare-fun lt!438844 () Unit!19582)

(declare-fun forallContained!586 (List!13554 Int Rule!4470) Unit!19582)

(assert (=> b!1327316 (= lt!438844 (forallContained!586 rules!2550 lambda!54951 (rule!4080 t2!34)))))

(declare-fun lt!438857 () Unit!19582)

(assert (=> b!1327316 (= lt!438857 (forallContained!586 rules!2550 lambda!54951 (rule!4080 t1!34)))))

(declare-fun lt!438861 () Unit!19582)

(assert (=> b!1327316 (= lt!438861 (forallContained!586 rules!2550 lambda!54951 lt!438856))))

(declare-fun b!1327317 () Bool)

(declare-fun Unit!19587 () Unit!19582)

(assert (=> b!1327317 (= e!850413 Unit!19587)))

(declare-fun lt!438839 () Unit!19582)

(assert (=> b!1327317 (= lt!438839 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!146 (regex!2335 (rule!4080 t2!34)) lt!438848 (head!2326 lt!438848)))))

(assert (=> b!1327317 false))

(declare-fun e!850425 () Bool)

(assert (=> b!1327318 (= e!850425 (and tp!384685 tp!384690))))

(declare-fun b!1327319 () Bool)

(declare-fun res!597615 () Bool)

(assert (=> b!1327319 (=> (not res!597615) (not e!850406))))

(assert (=> b!1327319 (= res!597615 (rulesProduceIndividualToken!999 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1327320 () Bool)

(assert (=> b!1327320 (= e!850420 e!850407)))

(declare-fun res!597625 () Bool)

(assert (=> b!1327320 (=> res!597625 e!850407)))

(assert (=> b!1327320 (= res!597625 (not (= (maxPrefix!1040 thiss!19762 rules!2550 lt!438848) (Some!2605 (tuple2!13135 t2!34 Nil!13486)))))))

(assert (=> b!1327320 (= lt!438848 (list!5106 lt!438836))))

(declare-fun b!1327321 () Bool)

(declare-fun res!597623 () Bool)

(assert (=> b!1327321 (=> res!597623 e!850416)))

(declare-fun isEmpty!8027 (BalanceConc!8820) Bool)

(assert (=> b!1327321 (= res!597623 (not (isEmpty!8027 (_2!7452 lt!438847))))))

(declare-fun b!1327322 () Bool)

(declare-fun res!597630 () Bool)

(assert (=> b!1327322 (=> (not res!597630) (not e!850411))))

(declare-fun sepAndNonSepRulesDisjointChars!708 (List!13554 List!13554) Bool)

(assert (=> b!1327322 (= res!597630 (sepAndNonSepRulesDisjointChars!708 rules!2550 rules!2550))))

(declare-fun tp!384687 () Bool)

(declare-fun e!850403 () Bool)

(declare-fun b!1327323 () Bool)

(assert (=> b!1327323 (= e!850403 (and (inv!21 (value!76180 t2!34)) e!850422 tp!384687))))

(declare-fun b!1327324 () Bool)

(assert (=> b!1327324 (= e!850419 e!850418)))

(declare-fun res!597604 () Bool)

(assert (=> b!1327324 (=> res!597604 e!850418)))

(assert (=> b!1327324 (= res!597604 (or (not (isSeparator!2335 lt!438856)) (not (isSeparator!2335 (rule!4080 t1!34)))))))

(assert (=> b!1327324 (= (regex!2335 lt!438856) lt!438855)))

(declare-fun b!1327325 () Bool)

(declare-fun res!597599 () Bool)

(assert (=> b!1327325 (=> res!597599 e!850420)))

(assert (=> b!1327325 (= res!597599 (not (isEmpty!8027 (_2!7452 lt!438858))))))

(declare-fun tp!384683 () Bool)

(declare-fun b!1327326 () Bool)

(assert (=> b!1327326 (= e!850434 (and tp!384683 (inv!17838 (tag!2597 (rule!4080 t1!34))) (inv!17841 (transformation!2335 (rule!4080 t1!34))) e!850425))))

(declare-fun b!1327327 () Bool)

(declare-fun res!597628 () Bool)

(assert (=> b!1327327 (=> res!597628 e!850416)))

(declare-fun contains!2423 (List!13554 Rule!4470) Bool)

(assert (=> b!1327327 (= res!597628 (not (contains!2423 rules!2550 (rule!4080 t1!34))))))

(declare-fun b!1327328 () Bool)

(assert (=> b!1327328 (= e!850428 e!850424)))

(declare-fun res!597611 () Bool)

(assert (=> b!1327328 (=> res!597611 e!850424)))

(declare-fun lt!438859 () Bool)

(assert (=> b!1327328 (= res!597611 lt!438859)))

(declare-fun lt!438835 () Unit!19582)

(assert (=> b!1327328 (= lt!438835 e!850415)))

(declare-fun c!217604 () Bool)

(assert (=> b!1327328 (= c!217604 lt!438859)))

(assert (=> b!1327328 (= lt!438859 (not (contains!2421 (usedCharacters!200 (regex!2335 (rule!4080 t1!34))) lt!438845)))))

(declare-fun b!1327329 () Bool)

(declare-fun e!850431 () Bool)

(declare-fun tp!384681 () Bool)

(assert (=> b!1327329 (= e!850431 (and e!850429 tp!384681))))

(declare-fun b!1327330 () Bool)

(declare-fun res!597624 () Bool)

(assert (=> b!1327330 (=> res!597624 e!850407)))

(assert (=> b!1327330 (= res!597624 (not (contains!2423 rules!2550 (rule!4080 t2!34))))))

(declare-fun b!1327331 () Bool)

(declare-fun res!597603 () Bool)

(assert (=> b!1327331 (=> (not res!597603) (not e!850411))))

(declare-fun separableTokensPredicate!313 (LexerInterface!2030 Token!4332 Token!4332 List!13554) Bool)

(assert (=> b!1327331 (= res!597603 (not (separableTokensPredicate!313 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (=> b!1327332 (= e!850421 e!850405)))

(declare-fun res!597629 () Bool)

(assert (=> b!1327332 (=> res!597629 e!850405)))

(declare-fun exists!373 (List!13556 Int) Bool)

(assert (=> b!1327332 (= res!597629 (not (exists!373 (map!2969 rules!2550 lambda!54948) lambda!54949)))))

(declare-fun lt!438849 () List!13556)

(assert (=> b!1327332 (exists!373 lt!438849 lambda!54949)))

(declare-fun lt!438863 () Unit!19582)

(declare-fun matchRGenUnionSpec!86 (Regex!3649 List!13556 List!13552) Unit!19582)

(assert (=> b!1327332 (= lt!438863 (matchRGenUnionSpec!86 lt!438851 lt!438849 lt!438866))))

(assert (=> b!1327332 (= lt!438849 (map!2969 rules!2550 lambda!54948))))

(assert (=> b!1327333 (= e!850427 (and tp!384688 tp!384682))))

(declare-fun res!597608 () Bool)

(assert (=> start!117930 (=> (not res!597608) (not e!850406))))

(get-info :version)

(assert (=> start!117930 (= res!597608 ((_ is Lexer!2028) thiss!19762))))

(assert (=> start!117930 e!850406))

(assert (=> start!117930 true))

(assert (=> start!117930 e!850431))

(declare-fun inv!17842 (Token!4332) Bool)

(assert (=> start!117930 (and (inv!17842 t1!34) e!850423)))

(assert (=> start!117930 (and (inv!17842 t2!34) e!850403)))

(declare-fun b!1327334 () Bool)

(declare-fun res!597626 () Bool)

(assert (=> b!1327334 (=> res!597626 e!850407)))

(assert (=> b!1327334 (= res!597626 (not (contains!2423 rules!2550 lt!438856)))))

(declare-fun b!1327335 () Bool)

(assert (=> b!1327335 (= e!850411 e!850409)))

(declare-fun res!597597 () Bool)

(assert (=> b!1327335 (=> (not res!597597) (not e!850409))))

(declare-fun prefixMatch!162 (Regex!3649 List!13552) Bool)

(assert (=> b!1327335 (= res!597597 (prefixMatch!162 lt!438851 lt!438865))))

(declare-fun rulesRegex!220 (LexerInterface!2030 List!13554) Regex!3649)

(assert (=> b!1327335 (= lt!438851 (rulesRegex!220 thiss!19762 rules!2550))))

(assert (=> b!1327335 (= lt!438865 (++!3444 lt!438843 (Cons!13486 lt!438853 Nil!13486)))))

(assert (=> b!1327335 (= lt!438853 (apply!3113 lt!438836 0))))

(assert (=> b!1327335 (= lt!438843 (list!5106 lt!438842))))

(assert (=> b!1327335 (= lt!438842 (charsOf!1307 t1!34))))

(assert (= (and start!117930 res!597608) b!1327289))

(assert (= (and b!1327289 res!597595) b!1327293))

(assert (= (and b!1327293 res!597598) b!1327306))

(assert (= (and b!1327306 res!597601) b!1327319))

(assert (= (and b!1327319 res!597615) b!1327299))

(assert (= (and b!1327299 res!597627) b!1327310))

(assert (= (and b!1327310 res!597631) b!1327322))

(assert (= (and b!1327322 res!597630) b!1327331))

(assert (= (and b!1327331 res!597603) b!1327335))

(assert (= (and b!1327335 res!597597) b!1327292))

(assert (= (and b!1327292 (not res!597596)) b!1327286))

(assert (= (and b!1327286 (not res!597609)) b!1327305))

(assert (= (and b!1327305 (not res!597621)) b!1327313))

(assert (= (and b!1327313 (not res!597614)) b!1327300))

(assert (= (and b!1327300 (not res!597606)) b!1327297))

(assert (= (and b!1327297 (not res!597610)) b!1327301))

(assert (= (and b!1327301 (not res!597619)) b!1327332))

(assert (= (and b!1327332 (not res!597629)) b!1327302))

(assert (= (and b!1327302 (not res!597620)) b!1327311))

(assert (= (and b!1327311 (not res!597600)) b!1327307))

(assert (= (and b!1327307 (not res!597602)) b!1327321))

(assert (= (and b!1327321 (not res!597623)) b!1327296))

(assert (= (and b!1327296 (not res!597607)) b!1327312))

(assert (= (and b!1327312 (not res!597618)) b!1327327))

(assert (= (and b!1327327 (not res!597628)) b!1327304))

(assert (= (and b!1327304 (not res!597605)) b!1327325))

(assert (= (and b!1327325 (not res!597599)) b!1327308))

(assert (= (and b!1327308 (not res!597617)) b!1327320))

(assert (= (and b!1327320 (not res!597625)) b!1327330))

(assert (= (and b!1327330 (not res!597624)) b!1327334))

(assert (= (and b!1327334 (not res!597626)) b!1327316))

(assert (= (and b!1327316 (not res!597622)) b!1327303))

(assert (= (and b!1327303 (not res!597616)) b!1327328))

(assert (= (and b!1327328 c!217604) b!1327315))

(assert (= (and b!1327328 (not c!217604)) b!1327294))

(assert (= (and b!1327328 (not res!597611)) b!1327298))

(assert (= (and b!1327298 c!217605) b!1327317))

(assert (= (and b!1327298 (not c!217605)) b!1327290))

(assert (= (and b!1327298 (not res!597612)) b!1327324))

(assert (= (and b!1327324 (not res!597604)) b!1327287))

(assert (= (and b!1327287 (not res!597613)) b!1327288))

(assert (= b!1327309 b!1327333))

(assert (= b!1327329 b!1327309))

(assert (= (and start!117930 ((_ is Cons!13488) rules!2550)) b!1327329))

(assert (= b!1327326 b!1327318))

(assert (= b!1327291 b!1327326))

(assert (= start!117930 b!1327291))

(assert (= b!1327295 b!1327314))

(assert (= b!1327323 b!1327295))

(assert (= start!117930 b!1327323))

(declare-fun m!1483813 () Bool)

(assert (=> b!1327319 m!1483813))

(declare-fun m!1483815 () Bool)

(assert (=> b!1327326 m!1483815))

(declare-fun m!1483817 () Bool)

(assert (=> b!1327326 m!1483817))

(declare-fun m!1483819 () Bool)

(assert (=> b!1327303 m!1483819))

(declare-fun m!1483821 () Bool)

(assert (=> b!1327309 m!1483821))

(declare-fun m!1483823 () Bool)

(assert (=> b!1327309 m!1483823))

(declare-fun m!1483825 () Bool)

(assert (=> b!1327310 m!1483825))

(declare-fun m!1483827 () Bool)

(assert (=> b!1327310 m!1483827))

(declare-fun m!1483829 () Bool)

(assert (=> b!1327335 m!1483829))

(declare-fun m!1483831 () Bool)

(assert (=> b!1327335 m!1483831))

(declare-fun m!1483833 () Bool)

(assert (=> b!1327335 m!1483833))

(declare-fun m!1483835 () Bool)

(assert (=> b!1327335 m!1483835))

(declare-fun m!1483837 () Bool)

(assert (=> b!1327335 m!1483837))

(declare-fun m!1483839 () Bool)

(assert (=> b!1327335 m!1483839))

(declare-fun m!1483841 () Bool)

(assert (=> b!1327297 m!1483841))

(declare-fun m!1483843 () Bool)

(assert (=> b!1327296 m!1483843))

(assert (=> b!1327296 m!1483843))

(declare-fun m!1483845 () Bool)

(assert (=> b!1327296 m!1483845))

(declare-fun m!1483847 () Bool)

(assert (=> b!1327301 m!1483847))

(declare-fun m!1483849 () Bool)

(assert (=> b!1327313 m!1483849))

(declare-fun m!1483851 () Bool)

(assert (=> b!1327289 m!1483851))

(declare-fun m!1483853 () Bool)

(assert (=> b!1327320 m!1483853))

(declare-fun m!1483855 () Bool)

(assert (=> b!1327320 m!1483855))

(declare-fun m!1483857 () Bool)

(assert (=> b!1327323 m!1483857))

(declare-fun m!1483859 () Bool)

(assert (=> b!1327328 m!1483859))

(assert (=> b!1327328 m!1483859))

(declare-fun m!1483861 () Bool)

(assert (=> b!1327328 m!1483861))

(declare-fun m!1483863 () Bool)

(assert (=> b!1327286 m!1483863))

(assert (=> b!1327286 m!1483863))

(declare-fun m!1483865 () Bool)

(assert (=> b!1327286 m!1483865))

(declare-fun m!1483867 () Bool)

(assert (=> b!1327286 m!1483867))

(declare-fun m!1483869 () Bool)

(assert (=> b!1327331 m!1483869))

(declare-fun m!1483871 () Bool)

(assert (=> b!1327330 m!1483871))

(declare-fun m!1483873 () Bool)

(assert (=> b!1327292 m!1483873))

(assert (=> b!1327292 m!1483873))

(declare-fun m!1483875 () Bool)

(assert (=> b!1327292 m!1483875))

(declare-fun m!1483877 () Bool)

(assert (=> b!1327316 m!1483877))

(declare-fun m!1483879 () Bool)

(assert (=> b!1327316 m!1483879))

(declare-fun m!1483881 () Bool)

(assert (=> b!1327316 m!1483881))

(declare-fun m!1483883 () Bool)

(assert (=> b!1327316 m!1483883))

(declare-fun m!1483885 () Bool)

(assert (=> b!1327312 m!1483885))

(declare-fun m!1483887 () Bool)

(assert (=> b!1327308 m!1483887))

(assert (=> b!1327308 m!1483887))

(declare-fun m!1483889 () Bool)

(assert (=> b!1327308 m!1483889))

(declare-fun m!1483891 () Bool)

(assert (=> start!117930 m!1483891))

(declare-fun m!1483893 () Bool)

(assert (=> start!117930 m!1483893))

(declare-fun m!1483895 () Bool)

(assert (=> b!1327302 m!1483895))

(assert (=> b!1327302 m!1483895))

(declare-fun m!1483897 () Bool)

(assert (=> b!1327302 m!1483897))

(assert (=> b!1327302 m!1483895))

(assert (=> b!1327302 m!1483895))

(declare-fun m!1483899 () Bool)

(assert (=> b!1327302 m!1483899))

(declare-fun m!1483901 () Bool)

(assert (=> b!1327321 m!1483901))

(declare-fun m!1483903 () Bool)

(assert (=> b!1327306 m!1483903))

(declare-fun m!1483905 () Bool)

(assert (=> b!1327334 m!1483905))

(declare-fun m!1483907 () Bool)

(assert (=> b!1327307 m!1483907))

(declare-fun m!1483909 () Bool)

(assert (=> b!1327307 m!1483909))

(assert (=> b!1327307 m!1483907))

(declare-fun m!1483911 () Bool)

(assert (=> b!1327307 m!1483911))

(declare-fun m!1483913 () Bool)

(assert (=> b!1327307 m!1483913))

(declare-fun m!1483915 () Bool)

(assert (=> b!1327307 m!1483915))

(declare-fun m!1483917 () Bool)

(assert (=> b!1327291 m!1483917))

(declare-fun m!1483919 () Bool)

(assert (=> b!1327295 m!1483919))

(declare-fun m!1483921 () Bool)

(assert (=> b!1327295 m!1483921))

(declare-fun m!1483923 () Bool)

(assert (=> b!1327293 m!1483923))

(declare-fun m!1483925 () Bool)

(assert (=> b!1327304 m!1483925))

(declare-fun m!1483927 () Bool)

(assert (=> b!1327304 m!1483927))

(declare-fun m!1483929 () Bool)

(assert (=> b!1327304 m!1483929))

(assert (=> b!1327304 m!1483929))

(declare-fun m!1483931 () Bool)

(assert (=> b!1327304 m!1483931))

(declare-fun m!1483933 () Bool)

(assert (=> b!1327332 m!1483933))

(assert (=> b!1327332 m!1483895))

(declare-fun m!1483935 () Bool)

(assert (=> b!1327332 m!1483935))

(assert (=> b!1327332 m!1483895))

(declare-fun m!1483937 () Bool)

(assert (=> b!1327332 m!1483937))

(assert (=> b!1327332 m!1483895))

(declare-fun m!1483939 () Bool)

(assert (=> b!1327317 m!1483939))

(assert (=> b!1327317 m!1483939))

(declare-fun m!1483941 () Bool)

(assert (=> b!1327317 m!1483941))

(declare-fun m!1483943 () Bool)

(assert (=> b!1327298 m!1483943))

(assert (=> b!1327298 m!1483943))

(declare-fun m!1483945 () Bool)

(assert (=> b!1327298 m!1483945))

(declare-fun m!1483947 () Bool)

(assert (=> b!1327287 m!1483947))

(declare-fun m!1483949 () Bool)

(assert (=> b!1327287 m!1483949))

(assert (=> b!1327287 m!1483949))

(declare-fun m!1483951 () Bool)

(assert (=> b!1327287 m!1483951))

(declare-fun m!1483953 () Bool)

(assert (=> b!1327287 m!1483953))

(declare-fun m!1483955 () Bool)

(assert (=> b!1327327 m!1483955))

(declare-fun m!1483957 () Bool)

(assert (=> b!1327315 m!1483957))

(assert (=> b!1327315 m!1483957))

(declare-fun m!1483959 () Bool)

(assert (=> b!1327315 m!1483959))

(declare-fun m!1483961 () Bool)

(assert (=> b!1327305 m!1483961))

(declare-fun m!1483963 () Bool)

(assert (=> b!1327305 m!1483963))

(declare-fun m!1483965 () Bool)

(assert (=> b!1327311 m!1483965))

(assert (=> b!1327311 m!1483965))

(declare-fun m!1483967 () Bool)

(assert (=> b!1327311 m!1483967))

(declare-fun m!1483969 () Bool)

(assert (=> b!1327300 m!1483969))

(declare-fun m!1483971 () Bool)

(assert (=> b!1327322 m!1483971))

(declare-fun m!1483973 () Bool)

(assert (=> b!1327288 m!1483973))

(assert (=> b!1327288 m!1483973))

(declare-fun m!1483975 () Bool)

(assert (=> b!1327288 m!1483975))

(declare-fun m!1483977 () Bool)

(assert (=> b!1327325 m!1483977))

(check-sat (not b_next!32805) (not b!1327302) (not b!1327304) (not b!1327309) (not b!1327305) (not b!1327295) (not b_next!32797) (not b!1327288) (not b!1327297) (not b!1327301) b_and!88669 (not b!1327326) b_and!88671 b_and!88673 (not b!1327312) (not b!1327327) (not b!1327296) b_and!88667 (not b!1327328) (not b!1327334) (not b_next!32795) (not b!1327313) (not b!1327329) (not b!1327323) (not b!1327331) (not b!1327291) (not b!1327322) (not b!1327308) (not b!1327310) (not b_next!32803) (not b!1327307) b_and!88665 (not b!1327317) (not b!1327289) (not b!1327287) (not b!1327330) (not b!1327306) (not start!117930) (not b!1327320) (not b!1327298) (not b!1327293) (not b!1327286) (not b!1327325) (not b!1327292) (not b!1327303) (not b_next!32799) (not b!1327321) (not b!1327315) (not b!1327311) (not b!1327300) (not b!1327335) (not b!1327316) (not b!1327319) b_and!88663 (not b_next!32801) (not b!1327332))
(check-sat (not b_next!32805) b_and!88667 (not b_next!32795) (not b_next!32803) (not b_next!32797) b_and!88665 b_and!88669 (not b_next!32799) b_and!88671 b_and!88673 b_and!88663 (not b_next!32801))
