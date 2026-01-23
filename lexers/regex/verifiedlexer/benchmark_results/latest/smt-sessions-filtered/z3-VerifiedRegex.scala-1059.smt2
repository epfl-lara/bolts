; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53636 () Bool)

(assert start!53636)

(declare-fun b!579433 () Bool)

(declare-fun b_free!16117 () Bool)

(declare-fun b_next!16133 () Bool)

(assert (=> b!579433 (= b_free!16117 (not b_next!16133))))

(declare-fun tp!181231 () Bool)

(declare-fun b_and!56899 () Bool)

(assert (=> b!579433 (= tp!181231 b_and!56899)))

(declare-fun b_free!16119 () Bool)

(declare-fun b_next!16135 () Bool)

(assert (=> b!579433 (= b_free!16119 (not b_next!16135))))

(declare-fun tp!181224 () Bool)

(declare-fun b_and!56901 () Bool)

(assert (=> b!579433 (= tp!181224 b_and!56901)))

(declare-fun b!579460 () Bool)

(declare-fun b_free!16121 () Bool)

(declare-fun b_next!16137 () Bool)

(assert (=> b!579460 (= b_free!16121 (not b_next!16137))))

(declare-fun tp!181223 () Bool)

(declare-fun b_and!56903 () Bool)

(assert (=> b!579460 (= tp!181223 b_and!56903)))

(declare-fun b_free!16123 () Bool)

(declare-fun b_next!16139 () Bool)

(assert (=> b!579460 (= b_free!16123 (not b_next!16139))))

(declare-fun tp!181225 () Bool)

(declare-fun b_and!56905 () Bool)

(assert (=> b!579460 (= tp!181225 b_and!56905)))

(declare-fun b!579423 () Bool)

(declare-fun res!249373 () Bool)

(declare-fun e!350173 () Bool)

(assert (=> b!579423 (=> (not res!249373) (not e!350173))))

(declare-datatypes ((C!3800 0))(
  ( (C!3801 (val!2126 Int)) )
))
(declare-datatypes ((Regex!1439 0))(
  ( (ElementMatch!1439 (c!108451 C!3800)) (Concat!2568 (regOne!3390 Regex!1439) (regTwo!3390 Regex!1439)) (EmptyExpr!1439) (Star!1439 (reg!1768 Regex!1439)) (EmptyLang!1439) (Union!1439 (regOne!3391 Regex!1439) (regTwo!3391 Regex!1439)) )
))
(declare-datatypes ((String!7388 0))(
  ( (String!7389 (value!36333 String)) )
))
(declare-datatypes ((List!5700 0))(
  ( (Nil!5690) (Cons!5690 (h!11091 (_ BitVec 16)) (t!77819 List!5700)) )
))
(declare-datatypes ((TokenValue!1129 0))(
  ( (FloatLiteralValue!2258 (text!8348 List!5700)) (TokenValueExt!1128 (__x!4156 Int)) (Broken!5645 (value!36334 List!5700)) (Object!1138) (End!1129) (Def!1129) (Underscore!1129) (Match!1129) (Else!1129) (Error!1129) (Case!1129) (If!1129) (Extends!1129) (Abstract!1129) (Class!1129) (Val!1129) (DelimiterValue!2258 (del!1189 List!5700)) (KeywordValue!1135 (value!36335 List!5700)) (CommentValue!2258 (value!36336 List!5700)) (WhitespaceValue!2258 (value!36337 List!5700)) (IndentationValue!1129 (value!36338 List!5700)) (String!7390) (Int32!1129) (Broken!5646 (value!36339 List!5700)) (Boolean!1130) (Unit!10308) (OperatorValue!1132 (op!1189 List!5700)) (IdentifierValue!2258 (value!36340 List!5700)) (IdentifierValue!2259 (value!36341 List!5700)) (WhitespaceValue!2259 (value!36342 List!5700)) (True!2258) (False!2258) (Broken!5647 (value!36343 List!5700)) (Broken!5648 (value!36344 List!5700)) (True!2259) (RightBrace!1129) (RightBracket!1129) (Colon!1129) (Null!1129) (Comma!1129) (LeftBracket!1129) (False!2259) (LeftBrace!1129) (ImaginaryLiteralValue!1129 (text!8349 List!5700)) (StringLiteralValue!3387 (value!36345 List!5700)) (EOFValue!1129 (value!36346 List!5700)) (IdentValue!1129 (value!36347 List!5700)) (DelimiterValue!2259 (value!36348 List!5700)) (DedentValue!1129 (value!36349 List!5700)) (NewLineValue!1129 (value!36350 List!5700)) (IntegerValue!3387 (value!36351 (_ BitVec 32)) (text!8350 List!5700)) (IntegerValue!3388 (value!36352 Int) (text!8351 List!5700)) (Times!1129) (Or!1129) (Equal!1129) (Minus!1129) (Broken!5649 (value!36353 List!5700)) (And!1129) (Div!1129) (LessEqual!1129) (Mod!1129) (Concat!2569) (Not!1129) (Plus!1129) (SpaceValue!1129 (value!36354 List!5700)) (IntegerValue!3389 (value!36355 Int) (text!8352 List!5700)) (StringLiteralValue!3388 (text!8353 List!5700)) (FloatLiteralValue!2259 (text!8354 List!5700)) (BytesLiteralValue!1129 (value!36356 List!5700)) (CommentValue!2259 (value!36357 List!5700)) (StringLiteralValue!3389 (value!36358 List!5700)) (ErrorTokenValue!1129 (msg!1190 List!5700)) )
))
(declare-datatypes ((List!5701 0))(
  ( (Nil!5691) (Cons!5691 (h!11092 C!3800) (t!77820 List!5701)) )
))
(declare-datatypes ((IArray!3645 0))(
  ( (IArray!3646 (innerList!1880 List!5701)) )
))
(declare-datatypes ((Conc!1822 0))(
  ( (Node!1822 (left!4647 Conc!1822) (right!4977 Conc!1822) (csize!3874 Int) (cheight!2033 Int)) (Leaf!2882 (xs!4459 IArray!3645) (csize!3875 Int)) (Empty!1822) )
))
(declare-datatypes ((BalanceConc!3652 0))(
  ( (BalanceConc!3653 (c!108452 Conc!1822)) )
))
(declare-datatypes ((TokenValueInjection!2026 0))(
  ( (TokenValueInjection!2027 (toValue!1968 Int) (toChars!1827 Int)) )
))
(declare-datatypes ((Rule!2010 0))(
  ( (Rule!2011 (regex!1105 Regex!1439) (tag!1367 String!7388) (isSeparator!1105 Bool) (transformation!1105 TokenValueInjection!2026)) )
))
(declare-datatypes ((List!5702 0))(
  ( (Nil!5692) (Cons!5692 (h!11093 Rule!2010) (t!77821 List!5702)) )
))
(declare-fun rules!3103 () List!5702)

(declare-fun isEmpty!4109 (List!5702) Bool)

(assert (=> b!579423 (= res!249373 (not (isEmpty!4109 rules!3103)))))

(declare-fun b!579424 () Bool)

(declare-fun res!249376 () Bool)

(declare-fun e!350162 () Bool)

(assert (=> b!579424 (=> (not res!249376) (not e!350162))))

(declare-datatypes ((Token!1946 0))(
  ( (Token!1947 (value!36359 TokenValue!1129) (rule!1859 Rule!2010) (size!4530 Int) (originalCharacters!1144 List!5701)) )
))
(declare-fun token!491 () Token!1946)

(declare-fun size!4531 (List!5701) Int)

(assert (=> b!579424 (= res!249376 (= (size!4530 token!491) (size!4531 (originalCharacters!1144 token!491))))))

(declare-fun b!579425 () Bool)

(declare-fun res!249372 () Bool)

(declare-fun e!350180 () Bool)

(assert (=> b!579425 (=> (not res!249372) (not e!350180))))

(declare-datatypes ((tuple2!6672 0))(
  ( (tuple2!6673 (_1!3600 Token!1946) (_2!3600 List!5701)) )
))
(declare-datatypes ((Option!1456 0))(
  ( (None!1455) (Some!1455 (v!16320 tuple2!6672)) )
))
(declare-fun lt!245592 () Option!1456)

(declare-fun get!2172 (Option!1456) tuple2!6672)

(assert (=> b!579425 (= res!249372 (= (_1!3600 (get!2172 lt!245592)) (_1!3600 (v!16320 lt!245592))))))

(declare-fun b!579426 () Bool)

(declare-fun e!350175 () Bool)

(assert (=> b!579426 (= e!350175 false)))

(declare-fun b!579427 () Bool)

(declare-datatypes ((Unit!10309 0))(
  ( (Unit!10310) )
))
(declare-fun e!350167 () Unit!10309)

(declare-fun Unit!10311 () Unit!10309)

(assert (=> b!579427 (= e!350167 Unit!10311)))

(assert (=> b!579427 false))

(declare-fun b!579428 () Bool)

(declare-fun res!249364 () Bool)

(declare-fun e!350166 () Bool)

(assert (=> b!579428 (=> res!249364 e!350166)))

(declare-fun contains!1337 (List!5702 Rule!2010) Bool)

(assert (=> b!579428 (= res!249364 (not (contains!1337 rules!3103 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun b!579429 () Bool)

(declare-fun e!350183 () Bool)

(assert (=> b!579429 (= e!350166 e!350183)))

(declare-fun res!249388 () Bool)

(assert (=> b!579429 (=> res!249388 e!350183)))

(declare-fun lt!245600 () Int)

(declare-fun lt!245609 () Int)

(assert (=> b!579429 (= res!249388 (<= lt!245600 lt!245609))))

(declare-fun lt!245581 () Unit!10309)

(declare-fun e!350176 () Unit!10309)

(assert (=> b!579429 (= lt!245581 e!350176)))

(declare-fun c!108448 () Bool)

(assert (=> b!579429 (= c!108448 (< lt!245600 lt!245609))))

(declare-fun getIndex!44 (List!5702 Rule!2010) Int)

(assert (=> b!579429 (= lt!245609 (getIndex!44 rules!3103 (rule!1859 token!491)))))

(assert (=> b!579429 (= lt!245600 (getIndex!44 rules!3103 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(declare-fun b!579430 () Bool)

(declare-fun res!249374 () Bool)

(assert (=> b!579430 (=> (not res!249374) (not e!350173))))

(declare-datatypes ((LexerInterface!991 0))(
  ( (LexerInterfaceExt!988 (__x!4157 Int)) (Lexer!989) )
))
(declare-fun thiss!22590 () LexerInterface!991)

(declare-fun rulesInvariant!954 (LexerInterface!991 List!5702) Bool)

(assert (=> b!579430 (= res!249374 (rulesInvariant!954 thiss!22590 rules!3103))))

(declare-fun b!579431 () Bool)

(declare-fun e!350188 () Bool)

(declare-fun tp_is_empty!3233 () Bool)

(declare-fun tp!181229 () Bool)

(assert (=> b!579431 (= e!350188 (and tp_is_empty!3233 tp!181229))))

(declare-fun e!350177 () Bool)

(assert (=> b!579433 (= e!350177 (and tp!181231 tp!181224))))

(declare-fun b!579434 () Bool)

(declare-fun e!350189 () Bool)

(declare-fun e!350165 () Bool)

(declare-fun tp!181230 () Bool)

(assert (=> b!579434 (= e!350189 (and e!350165 tp!181230))))

(declare-fun b!579435 () Bool)

(declare-fun res!249381 () Bool)

(assert (=> b!579435 (=> res!249381 e!350166)))

(assert (=> b!579435 (= res!249381 (= (rule!1859 (_1!3600 (v!16320 lt!245592))) (rule!1859 token!491)))))

(declare-fun b!579436 () Bool)

(declare-fun res!249371 () Bool)

(assert (=> b!579436 (=> res!249371 e!350166)))

(assert (=> b!579436 (= res!249371 (not (contains!1337 rules!3103 (rule!1859 token!491))))))

(declare-fun b!579437 () Bool)

(declare-fun e!350168 () Unit!10309)

(declare-fun Unit!10312 () Unit!10309)

(assert (=> b!579437 (= e!350168 Unit!10312)))

(declare-fun lt!245591 () Unit!10309)

(declare-fun lt!245610 () BalanceConc!3652)

(declare-fun lemmaSemiInverse!208 (TokenValueInjection!2026 BalanceConc!3652) Unit!10309)

(assert (=> b!579437 (= lt!245591 (lemmaSemiInverse!208 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) lt!245610))))

(declare-fun lt!245599 () Unit!10309)

(declare-fun input!2705 () List!5701)

(declare-fun lt!245578 () List!5701)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!64 (LexerInterface!991 List!5702 Rule!2010 List!5701 List!5701 List!5701 Rule!2010) Unit!10309)

(assert (=> b!579437 (= lt!245599 (lemmaMaxPrefixOutputsMaxPrefix!64 thiss!22590 rules!3103 (rule!1859 (_1!3600 (v!16320 lt!245592))) lt!245578 input!2705 input!2705 (rule!1859 token!491)))))

(declare-fun res!249389 () Bool)

(declare-fun matchR!586 (Regex!1439 List!5701) Bool)

(assert (=> b!579437 (= res!249389 (not (matchR!586 (regex!1105 (rule!1859 token!491)) input!2705)))))

(assert (=> b!579437 (=> (not res!249389) (not e!350175))))

(assert (=> b!579437 e!350175))

(declare-fun b!579438 () Bool)

(declare-fun res!249365 () Bool)

(assert (=> b!579438 (=> res!249365 e!350166)))

(declare-fun isEmpty!4110 (List!5701) Bool)

(assert (=> b!579438 (= res!249365 (not (isEmpty!4110 (_2!3600 (v!16320 lt!245592)))))))

(declare-fun b!579439 () Bool)

(declare-fun res!249385 () Bool)

(assert (=> b!579439 (=> res!249385 e!350166)))

(declare-fun lt!245601 () List!5701)

(assert (=> b!579439 (= res!249385 (or (not (= lt!245578 lt!245601)) (not (= (originalCharacters!1144 (_1!3600 (v!16320 lt!245592))) (originalCharacters!1144 token!491)))))))

(declare-fun e!350181 () Bool)

(declare-fun tp!181226 () Bool)

(declare-fun b!579440 () Bool)

(declare-fun inv!7164 (String!7388) Bool)

(declare-fun inv!7167 (TokenValueInjection!2026) Bool)

(assert (=> b!579440 (= e!350165 (and tp!181226 (inv!7164 (tag!1367 (h!11093 rules!3103))) (inv!7167 (transformation!1105 (h!11093 rules!3103))) e!350181))))

(declare-fun b!579441 () Bool)

(declare-fun e!350178 () Bool)

(declare-fun e!350163 () Bool)

(assert (=> b!579441 (= e!350178 e!350163)))

(declare-fun res!249383 () Bool)

(assert (=> b!579441 (=> (not res!249383) (not e!350163))))

(declare-fun lt!245584 () List!5701)

(declare-fun lt!245595 () List!5701)

(assert (=> b!579441 (= res!249383 (= lt!245584 lt!245595))))

(declare-fun suffix!1342 () List!5701)

(declare-fun ++!1593 (List!5701 List!5701) List!5701)

(assert (=> b!579441 (= lt!245584 (++!1593 lt!245601 suffix!1342))))

(declare-fun b!579442 () Bool)

(declare-fun e!350184 () Bool)

(assert (=> b!579442 (= e!350184 false)))

(declare-fun b!579443 () Bool)

(declare-fun e!350187 () Bool)

(declare-fun tp!181227 () Bool)

(assert (=> b!579443 (= e!350187 (and tp!181227 (inv!7164 (tag!1367 (rule!1859 token!491))) (inv!7167 (transformation!1105 (rule!1859 token!491))) e!350177))))

(declare-fun b!579444 () Bool)

(declare-fun e!350191 () Bool)

(assert (=> b!579444 (= e!350191 e!350180)))

(declare-fun res!249382 () Bool)

(assert (=> b!579444 (=> (not res!249382) (not e!350180))))

(declare-fun isDefined!1267 (Option!1456) Bool)

(assert (=> b!579444 (= res!249382 (isDefined!1267 lt!245592))))

(declare-fun b!579445 () Bool)

(declare-fun e!350164 () Bool)

(assert (=> b!579445 (= e!350163 (not e!350164))))

(declare-fun res!249370 () Bool)

(assert (=> b!579445 (=> res!249370 e!350164)))

(declare-fun isPrefix!739 (List!5701 List!5701) Bool)

(assert (=> b!579445 (= res!249370 (not (isPrefix!739 input!2705 lt!245584)))))

(assert (=> b!579445 (isPrefix!739 lt!245601 lt!245584)))

(declare-fun lt!245572 () Unit!10309)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!586 (List!5701 List!5701) Unit!10309)

(assert (=> b!579445 (= lt!245572 (lemmaConcatTwoListThenFirstIsPrefix!586 lt!245601 suffix!1342))))

(assert (=> b!579445 (isPrefix!739 input!2705 lt!245595)))

(declare-fun lt!245583 () Unit!10309)

(assert (=> b!579445 (= lt!245583 (lemmaConcatTwoListThenFirstIsPrefix!586 input!2705 suffix!1342))))

(declare-fun e!350186 () Bool)

(assert (=> b!579445 e!350186))

(declare-fun res!249367 () Bool)

(assert (=> b!579445 (=> (not res!249367) (not e!350186))))

(declare-fun lt!245580 () TokenValue!1129)

(assert (=> b!579445 (= res!249367 (= (value!36359 (_1!3600 (v!16320 lt!245592))) lt!245580))))

(declare-fun apply!1370 (TokenValueInjection!2026 BalanceConc!3652) TokenValue!1129)

(assert (=> b!579445 (= lt!245580 (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) lt!245610))))

(declare-fun seqFromList!1293 (List!5701) BalanceConc!3652)

(assert (=> b!579445 (= lt!245610 (seqFromList!1293 lt!245578))))

(declare-fun lt!245607 () Unit!10309)

(declare-fun lemmaInv!241 (TokenValueInjection!2026) Unit!10309)

(assert (=> b!579445 (= lt!245607 (lemmaInv!241 (transformation!1105 (rule!1859 token!491))))))

(declare-fun lt!245588 () Unit!10309)

(assert (=> b!579445 (= lt!245588 (lemmaInv!241 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun ruleValid!315 (LexerInterface!991 Rule!2010) Bool)

(assert (=> b!579445 (ruleValid!315 thiss!22590 (rule!1859 token!491))))

(declare-fun lt!245576 () Unit!10309)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!172 (LexerInterface!991 Rule!2010 List!5702) Unit!10309)

(assert (=> b!579445 (= lt!245576 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!172 thiss!22590 (rule!1859 token!491) rules!3103))))

(assert (=> b!579445 (ruleValid!315 thiss!22590 (rule!1859 (_1!3600 (v!16320 lt!245592))))))

(declare-fun lt!245575 () Unit!10309)

(assert (=> b!579445 (= lt!245575 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!172 thiss!22590 (rule!1859 (_1!3600 (v!16320 lt!245592))) rules!3103))))

(assert (=> b!579445 (isPrefix!739 input!2705 input!2705)))

(declare-fun lt!245597 () Unit!10309)

(declare-fun lemmaIsPrefixRefl!477 (List!5701 List!5701) Unit!10309)

(assert (=> b!579445 (= lt!245597 (lemmaIsPrefixRefl!477 input!2705 input!2705))))

(declare-fun lt!245590 () List!5701)

(assert (=> b!579445 (= (_2!3600 (v!16320 lt!245592)) lt!245590)))

(declare-fun lt!245579 () Unit!10309)

(declare-fun lemmaSamePrefixThenSameSuffix!462 (List!5701 List!5701 List!5701 List!5701 List!5701) Unit!10309)

(assert (=> b!579445 (= lt!245579 (lemmaSamePrefixThenSameSuffix!462 lt!245578 (_2!3600 (v!16320 lt!245592)) lt!245578 lt!245590 input!2705))))

(declare-fun getSuffix!258 (List!5701 List!5701) List!5701)

(assert (=> b!579445 (= lt!245590 (getSuffix!258 input!2705 lt!245578))))

(declare-fun lt!245587 () List!5701)

(assert (=> b!579445 (isPrefix!739 lt!245578 lt!245587)))

(assert (=> b!579445 (= lt!245587 (++!1593 lt!245578 (_2!3600 (v!16320 lt!245592))))))

(declare-fun lt!245603 () Unit!10309)

(assert (=> b!579445 (= lt!245603 (lemmaConcatTwoListThenFirstIsPrefix!586 lt!245578 (_2!3600 (v!16320 lt!245592))))))

(declare-fun lt!245569 () Unit!10309)

(declare-fun lemmaCharactersSize!172 (Token!1946) Unit!10309)

(assert (=> b!579445 (= lt!245569 (lemmaCharactersSize!172 token!491))))

(declare-fun lt!245606 () Unit!10309)

(assert (=> b!579445 (= lt!245606 (lemmaCharactersSize!172 (_1!3600 (v!16320 lt!245592))))))

(declare-fun lt!245573 () Unit!10309)

(assert (=> b!579445 (= lt!245573 e!350167)))

(declare-fun c!108449 () Bool)

(declare-fun lt!245608 () Int)

(declare-fun lt!245602 () Int)

(assert (=> b!579445 (= c!108449 (> lt!245608 lt!245602))))

(assert (=> b!579445 (= lt!245602 (size!4531 lt!245601))))

(assert (=> b!579445 (= lt!245608 (size!4531 lt!245578))))

(declare-fun list!2367 (BalanceConc!3652) List!5701)

(declare-fun charsOf!734 (Token!1946) BalanceConc!3652)

(assert (=> b!579445 (= lt!245578 (list!2367 (charsOf!734 (_1!3600 (v!16320 lt!245592)))))))

(declare-fun lt!245586 () tuple2!6672)

(assert (=> b!579445 (= lt!245592 (Some!1455 lt!245586))))

(assert (=> b!579445 (= lt!245586 (tuple2!6673 (_1!3600 (v!16320 lt!245592)) (_2!3600 (v!16320 lt!245592))))))

(declare-fun lt!245585 () Unit!10309)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!182 (List!5701 List!5701 List!5701 List!5701) Unit!10309)

(assert (=> b!579445 (= lt!245585 (lemmaConcatSameAndSameSizesThenSameLists!182 lt!245601 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!579446 () Bool)

(declare-fun Unit!10313 () Unit!10309)

(assert (=> b!579446 (= e!350176 Unit!10313)))

(declare-fun b!579447 () Bool)

(assert (=> b!579447 (= e!350186 (and (= (size!4530 (_1!3600 (v!16320 lt!245592))) lt!245608) (= (originalCharacters!1144 (_1!3600 (v!16320 lt!245592))) lt!245578) (= lt!245586 (tuple2!6673 (Token!1947 lt!245580 (rule!1859 (_1!3600 (v!16320 lt!245592))) lt!245608 lt!245578) lt!245590))))))

(declare-fun b!579448 () Bool)

(declare-fun e!350174 () Bool)

(assert (=> b!579448 (= e!350174 e!350191)))

(declare-fun res!249375 () Bool)

(assert (=> b!579448 (=> res!249375 e!350191)))

(assert (=> b!579448 (= res!249375 (>= lt!245608 lt!245602))))

(declare-fun lt!245594 () List!5701)

(declare-fun lt!245596 () TokenValue!1129)

(declare-fun b!579449 () Bool)

(assert (=> b!579449 (= e!350162 (and (= (size!4530 token!491) lt!245602) (= (originalCharacters!1144 token!491) lt!245601) (= (tuple2!6673 token!491 suffix!1342) (tuple2!6673 (Token!1947 lt!245596 (rule!1859 token!491) lt!245602 lt!245601) lt!245594))))))

(declare-fun res!249387 () Bool)

(assert (=> start!53636 (=> (not res!249387) (not e!350173))))

(get-info :version)

(assert (=> start!53636 (= res!249387 ((_ is Lexer!989) thiss!22590))))

(assert (=> start!53636 e!350173))

(assert (=> start!53636 e!350188))

(assert (=> start!53636 e!350189))

(declare-fun e!350169 () Bool)

(declare-fun inv!7168 (Token!1946) Bool)

(assert (=> start!53636 (and (inv!7168 token!491) e!350169)))

(assert (=> start!53636 true))

(declare-fun e!350172 () Bool)

(assert (=> start!53636 e!350172))

(declare-fun b!579432 () Bool)

(declare-fun e!350171 () Bool)

(assert (=> b!579432 (= e!350171 e!350178)))

(declare-fun res!249384 () Bool)

(assert (=> b!579432 (=> (not res!249384) (not e!350178))))

(assert (=> b!579432 (= res!249384 ((_ is Some!1455) lt!245592))))

(declare-fun maxPrefix!689 (LexerInterface!991 List!5702 List!5701) Option!1456)

(assert (=> b!579432 (= lt!245592 (maxPrefix!689 thiss!22590 rules!3103 input!2705))))

(declare-fun b!579450 () Bool)

(declare-fun e!350170 () Bool)

(assert (=> b!579450 (= e!350173 e!350170)))

(declare-fun res!249380 () Bool)

(assert (=> b!579450 (=> (not res!249380) (not e!350170))))

(assert (=> b!579450 (= res!249380 (= lt!245601 input!2705))))

(assert (=> b!579450 (= lt!245601 (list!2367 (charsOf!734 token!491)))))

(declare-fun b!579451 () Bool)

(assert (=> b!579451 (= e!350164 e!350166)))

(declare-fun res!249368 () Bool)

(assert (=> b!579451 (=> res!249368 e!350166)))

(assert (=> b!579451 (= res!249368 (or (not (= lt!245608 lt!245602)) (not (= lt!245587 input!2705)) (not (= lt!245587 lt!245601))))))

(declare-fun lt!245604 () Unit!10309)

(declare-fun lt!245574 () BalanceConc!3652)

(assert (=> b!579451 (= lt!245604 (lemmaSemiInverse!208 (transformation!1105 (rule!1859 token!491)) lt!245574))))

(declare-fun lt!245589 () Unit!10309)

(assert (=> b!579451 (= lt!245589 (lemmaSemiInverse!208 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) lt!245610))))

(declare-fun lt!245577 () Unit!10309)

(assert (=> b!579451 (= lt!245577 e!350168)))

(declare-fun c!108450 () Bool)

(assert (=> b!579451 (= c!108450 (< lt!245608 lt!245602))))

(assert (=> b!579451 e!350174))

(declare-fun res!249378 () Bool)

(assert (=> b!579451 (=> (not res!249378) (not e!350174))))

(declare-fun maxPrefixOneRule!390 (LexerInterface!991 Rule!2010 List!5701) Option!1456)

(assert (=> b!579451 (= res!249378 (= (maxPrefixOneRule!390 thiss!22590 (rule!1859 token!491) lt!245595) (Some!1455 (tuple2!6673 (Token!1947 lt!245596 (rule!1859 token!491) lt!245602 lt!245601) suffix!1342))))))

(declare-fun lt!245570 () Unit!10309)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!140 (LexerInterface!991 List!5702 List!5701 List!5701 List!5701 Rule!2010) Unit!10309)

(assert (=> b!579451 (= lt!245570 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!140 thiss!22590 rules!3103 lt!245601 lt!245595 suffix!1342 (rule!1859 token!491)))))

(assert (=> b!579451 (= (maxPrefixOneRule!390 thiss!22590 (rule!1859 (_1!3600 (v!16320 lt!245592))) input!2705) (Some!1455 (tuple2!6673 (Token!1947 lt!245580 (rule!1859 (_1!3600 (v!16320 lt!245592))) lt!245608 lt!245578) (_2!3600 (v!16320 lt!245592)))))))

(declare-fun lt!245571 () Unit!10309)

(assert (=> b!579451 (= lt!245571 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!140 thiss!22590 rules!3103 lt!245578 input!2705 (_2!3600 (v!16320 lt!245592)) (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(assert (=> b!579451 e!350162))

(declare-fun res!249369 () Bool)

(assert (=> b!579451 (=> (not res!249369) (not e!350162))))

(assert (=> b!579451 (= res!249369 (= (value!36359 token!491) lt!245596))))

(assert (=> b!579451 (= lt!245596 (apply!1370 (transformation!1105 (rule!1859 token!491)) lt!245574))))

(assert (=> b!579451 (= lt!245574 (seqFromList!1293 lt!245601))))

(assert (=> b!579451 (= suffix!1342 lt!245594)))

(declare-fun lt!245605 () Unit!10309)

(assert (=> b!579451 (= lt!245605 (lemmaSamePrefixThenSameSuffix!462 lt!245601 suffix!1342 lt!245601 lt!245594 lt!245595))))

(assert (=> b!579451 (= lt!245594 (getSuffix!258 lt!245595 lt!245601))))

(declare-fun b!579452 () Bool)

(declare-fun Unit!10314 () Unit!10309)

(assert (=> b!579452 (= e!350167 Unit!10314)))

(declare-fun b!579453 () Bool)

(declare-fun Unit!10315 () Unit!10309)

(assert (=> b!579453 (= e!350168 Unit!10315)))

(declare-fun b!579454 () Bool)

(declare-fun tp!181232 () Bool)

(declare-fun inv!21 (TokenValue!1129) Bool)

(assert (=> b!579454 (= e!350169 (and (inv!21 (value!36359 token!491)) e!350187 tp!181232))))

(declare-fun b!579455 () Bool)

(declare-fun Unit!10316 () Unit!10309)

(assert (=> b!579455 (= e!350176 Unit!10316)))

(declare-fun lt!245598 () Unit!10309)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!20 (LexerInterface!991 List!5702 Rule!2010 List!5701 List!5701 Rule!2010) Unit!10309)

(assert (=> b!579455 (= lt!245598 (lemmaMaxPrefNoSmallerRuleMatches!20 thiss!22590 rules!3103 (rule!1859 token!491) input!2705 lt!245595 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(declare-fun res!249366 () Bool)

(assert (=> b!579455 (= res!249366 (not (matchR!586 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) input!2705)))))

(assert (=> b!579455 (=> (not res!249366) (not e!350184))))

(assert (=> b!579455 e!350184))

(declare-fun b!579456 () Bool)

(assert (=> b!579456 (= e!350183 (matchR!586 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) input!2705))))

(declare-fun b!579457 () Bool)

(assert (=> b!579457 (= e!350180 (= lt!245590 (_2!3600 (v!16320 lt!245592))))))

(declare-fun b!579458 () Bool)

(declare-fun tp!181228 () Bool)

(assert (=> b!579458 (= e!350172 (and tp_is_empty!3233 tp!181228))))

(declare-fun b!579459 () Bool)

(declare-fun res!249386 () Bool)

(assert (=> b!579459 (=> (not res!249386) (not e!350186))))

(assert (=> b!579459 (= res!249386 (= (size!4530 (_1!3600 (v!16320 lt!245592))) (size!4531 (originalCharacters!1144 (_1!3600 (v!16320 lt!245592))))))))

(assert (=> b!579460 (= e!350181 (and tp!181223 tp!181225))))

(declare-fun b!579461 () Bool)

(declare-fun res!249379 () Bool)

(assert (=> b!579461 (=> (not res!249379) (not e!350173))))

(assert (=> b!579461 (= res!249379 (not (isEmpty!4110 input!2705)))))

(declare-fun b!579462 () Bool)

(declare-fun e!350182 () Bool)

(assert (=> b!579462 (= e!350170 e!350182)))

(declare-fun res!249377 () Bool)

(assert (=> b!579462 (=> (not res!249377) (not e!350182))))

(declare-fun lt!245582 () Option!1456)

(assert (=> b!579462 (= res!249377 (isDefined!1267 lt!245582))))

(assert (=> b!579462 (= lt!245582 (maxPrefix!689 thiss!22590 rules!3103 lt!245595))))

(assert (=> b!579462 (= lt!245595 (++!1593 input!2705 suffix!1342))))

(declare-fun b!579463 () Bool)

(assert (=> b!579463 (= e!350182 e!350171)))

(declare-fun res!249390 () Bool)

(assert (=> b!579463 (=> (not res!249390) (not e!350171))))

(declare-fun lt!245593 () tuple2!6672)

(assert (=> b!579463 (= res!249390 (and (= (_1!3600 lt!245593) token!491) (= (_2!3600 lt!245593) suffix!1342)))))

(assert (=> b!579463 (= lt!245593 (get!2172 lt!245582))))

(assert (= (and start!53636 res!249387) b!579423))

(assert (= (and b!579423 res!249373) b!579430))

(assert (= (and b!579430 res!249374) b!579461))

(assert (= (and b!579461 res!249379) b!579450))

(assert (= (and b!579450 res!249380) b!579462))

(assert (= (and b!579462 res!249377) b!579463))

(assert (= (and b!579463 res!249390) b!579432))

(assert (= (and b!579432 res!249384) b!579441))

(assert (= (and b!579441 res!249383) b!579445))

(assert (= (and b!579445 c!108449) b!579427))

(assert (= (and b!579445 (not c!108449)) b!579452))

(assert (= (and b!579445 res!249367) b!579459))

(assert (= (and b!579459 res!249386) b!579447))

(assert (= (and b!579445 (not res!249370)) b!579451))

(assert (= (and b!579451 res!249369) b!579424))

(assert (= (and b!579424 res!249376) b!579449))

(assert (= (and b!579451 res!249378) b!579448))

(assert (= (and b!579448 (not res!249375)) b!579444))

(assert (= (and b!579444 res!249382) b!579425))

(assert (= (and b!579425 res!249372) b!579457))

(assert (= (and b!579451 c!108450) b!579437))

(assert (= (and b!579451 (not c!108450)) b!579453))

(assert (= (and b!579437 res!249389) b!579426))

(assert (= (and b!579451 (not res!249368)) b!579438))

(assert (= (and b!579438 (not res!249365)) b!579439))

(assert (= (and b!579439 (not res!249385)) b!579428))

(assert (= (and b!579428 (not res!249364)) b!579436))

(assert (= (and b!579436 (not res!249371)) b!579435))

(assert (= (and b!579435 (not res!249381)) b!579429))

(assert (= (and b!579429 c!108448) b!579455))

(assert (= (and b!579429 (not c!108448)) b!579446))

(assert (= (and b!579455 res!249366) b!579442))

(assert (= (and b!579429 (not res!249388)) b!579456))

(assert (= (and start!53636 ((_ is Cons!5691) suffix!1342)) b!579431))

(assert (= b!579440 b!579460))

(assert (= b!579434 b!579440))

(assert (= (and start!53636 ((_ is Cons!5692) rules!3103)) b!579434))

(assert (= b!579443 b!579433))

(assert (= b!579454 b!579443))

(assert (= start!53636 b!579454))

(assert (= (and start!53636 ((_ is Cons!5691) input!2705)) b!579458))

(declare-fun m!837887 () Bool)

(assert (=> b!579451 m!837887))

(declare-fun m!837889 () Bool)

(assert (=> b!579451 m!837889))

(declare-fun m!837891 () Bool)

(assert (=> b!579451 m!837891))

(declare-fun m!837893 () Bool)

(assert (=> b!579451 m!837893))

(declare-fun m!837895 () Bool)

(assert (=> b!579451 m!837895))

(declare-fun m!837897 () Bool)

(assert (=> b!579451 m!837897))

(declare-fun m!837899 () Bool)

(assert (=> b!579451 m!837899))

(declare-fun m!837901 () Bool)

(assert (=> b!579451 m!837901))

(declare-fun m!837903 () Bool)

(assert (=> b!579451 m!837903))

(declare-fun m!837905 () Bool)

(assert (=> b!579451 m!837905))

(declare-fun m!837907 () Bool)

(assert (=> b!579455 m!837907))

(declare-fun m!837909 () Bool)

(assert (=> b!579455 m!837909))

(declare-fun m!837911 () Bool)

(assert (=> b!579441 m!837911))

(declare-fun m!837913 () Bool)

(assert (=> b!579438 m!837913))

(declare-fun m!837915 () Bool)

(assert (=> b!579444 m!837915))

(declare-fun m!837917 () Bool)

(assert (=> b!579430 m!837917))

(declare-fun m!837919 () Bool)

(assert (=> b!579443 m!837919))

(declare-fun m!837921 () Bool)

(assert (=> b!579443 m!837921))

(declare-fun m!837923 () Bool)

(assert (=> b!579459 m!837923))

(declare-fun m!837925 () Bool)

(assert (=> b!579432 m!837925))

(declare-fun m!837927 () Bool)

(assert (=> b!579424 m!837927))

(declare-fun m!837929 () Bool)

(assert (=> b!579428 m!837929))

(declare-fun m!837931 () Bool)

(assert (=> b!579454 m!837931))

(declare-fun m!837933 () Bool)

(assert (=> start!53636 m!837933))

(declare-fun m!837935 () Bool)

(assert (=> b!579423 m!837935))

(declare-fun m!837937 () Bool)

(assert (=> b!579440 m!837937))

(declare-fun m!837939 () Bool)

(assert (=> b!579440 m!837939))

(declare-fun m!837941 () Bool)

(assert (=> b!579429 m!837941))

(declare-fun m!837943 () Bool)

(assert (=> b!579429 m!837943))

(declare-fun m!837945 () Bool)

(assert (=> b!579461 m!837945))

(assert (=> b!579437 m!837897))

(declare-fun m!837947 () Bool)

(assert (=> b!579437 m!837947))

(declare-fun m!837949 () Bool)

(assert (=> b!579437 m!837949))

(declare-fun m!837951 () Bool)

(assert (=> b!579450 m!837951))

(assert (=> b!579450 m!837951))

(declare-fun m!837953 () Bool)

(assert (=> b!579450 m!837953))

(declare-fun m!837955 () Bool)

(assert (=> b!579445 m!837955))

(declare-fun m!837957 () Bool)

(assert (=> b!579445 m!837957))

(declare-fun m!837959 () Bool)

(assert (=> b!579445 m!837959))

(declare-fun m!837961 () Bool)

(assert (=> b!579445 m!837961))

(declare-fun m!837963 () Bool)

(assert (=> b!579445 m!837963))

(declare-fun m!837965 () Bool)

(assert (=> b!579445 m!837965))

(declare-fun m!837967 () Bool)

(assert (=> b!579445 m!837967))

(declare-fun m!837969 () Bool)

(assert (=> b!579445 m!837969))

(declare-fun m!837971 () Bool)

(assert (=> b!579445 m!837971))

(declare-fun m!837973 () Bool)

(assert (=> b!579445 m!837973))

(declare-fun m!837975 () Bool)

(assert (=> b!579445 m!837975))

(declare-fun m!837977 () Bool)

(assert (=> b!579445 m!837977))

(declare-fun m!837979 () Bool)

(assert (=> b!579445 m!837979))

(declare-fun m!837981 () Bool)

(assert (=> b!579445 m!837981))

(declare-fun m!837983 () Bool)

(assert (=> b!579445 m!837983))

(declare-fun m!837985 () Bool)

(assert (=> b!579445 m!837985))

(declare-fun m!837987 () Bool)

(assert (=> b!579445 m!837987))

(declare-fun m!837989 () Bool)

(assert (=> b!579445 m!837989))

(declare-fun m!837991 () Bool)

(assert (=> b!579445 m!837991))

(declare-fun m!837993 () Bool)

(assert (=> b!579445 m!837993))

(declare-fun m!837995 () Bool)

(assert (=> b!579445 m!837995))

(declare-fun m!837997 () Bool)

(assert (=> b!579445 m!837997))

(assert (=> b!579445 m!837963))

(declare-fun m!837999 () Bool)

(assert (=> b!579445 m!837999))

(declare-fun m!838001 () Bool)

(assert (=> b!579445 m!838001))

(declare-fun m!838003 () Bool)

(assert (=> b!579445 m!838003))

(declare-fun m!838005 () Bool)

(assert (=> b!579445 m!838005))

(declare-fun m!838007 () Bool)

(assert (=> b!579445 m!838007))

(declare-fun m!838009 () Bool)

(assert (=> b!579436 m!838009))

(assert (=> b!579456 m!837909))

(declare-fun m!838011 () Bool)

(assert (=> b!579463 m!838011))

(declare-fun m!838013 () Bool)

(assert (=> b!579462 m!838013))

(declare-fun m!838015 () Bool)

(assert (=> b!579462 m!838015))

(declare-fun m!838017 () Bool)

(assert (=> b!579462 m!838017))

(declare-fun m!838019 () Bool)

(assert (=> b!579425 m!838019))

(check-sat tp_is_empty!3233 b_and!56901 (not b!579450) (not b!579428) (not b!579430) (not start!53636) (not b!579463) (not b!579432) (not b!579423) (not b!579458) (not b!579436) (not b!579461) (not b!579456) (not b!579425) (not b_next!16139) (not b_next!16135) (not b!579454) (not b!579459) (not b!579451) (not b!579444) (not b!579424) (not b!579429) (not b!579441) (not b!579443) (not b!579434) (not b!579440) (not b!579437) (not b!579462) (not b!579445) b_and!56903 b_and!56905 (not b!579431) b_and!56899 (not b!579438) (not b!579455) (not b_next!16137) (not b_next!16133))
(check-sat (not b_next!16135) b_and!56901 b_and!56903 (not b_next!16139) b_and!56905 b_and!56899 (not b_next!16137) (not b_next!16133))
(get-model)

(declare-fun b!579513 () Bool)

(declare-fun res!249425 () Bool)

(declare-fun e!350218 () Bool)

(assert (=> b!579513 (=> res!249425 e!350218)))

(declare-fun tail!757 (List!5701) List!5701)

(assert (=> b!579513 (= res!249425 (not (isEmpty!4110 (tail!757 input!2705))))))

(declare-fun b!579514 () Bool)

(declare-fun e!350220 () Bool)

(declare-fun derivativeStep!303 (Regex!1439 C!3800) Regex!1439)

(declare-fun head!1227 (List!5701) C!3800)

(assert (=> b!579514 (= e!350220 (matchR!586 (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (head!1227 input!2705)) (tail!757 input!2705)))))

(declare-fun b!579515 () Bool)

(declare-fun res!249429 () Bool)

(declare-fun e!350219 () Bool)

(assert (=> b!579515 (=> (not res!249429) (not e!350219))))

(declare-fun call!39990 () Bool)

(assert (=> b!579515 (= res!249429 (not call!39990))))

(declare-fun b!579516 () Bool)

(declare-fun res!249432 () Bool)

(declare-fun e!350221 () Bool)

(assert (=> b!579516 (=> res!249432 e!350221)))

(assert (=> b!579516 (= res!249432 (not ((_ is ElementMatch!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))))

(declare-fun e!350222 () Bool)

(assert (=> b!579516 (= e!350222 e!350221)))

(declare-fun b!579517 () Bool)

(assert (=> b!579517 (= e!350218 (not (= (head!1227 input!2705) (c!108451 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))))

(declare-fun b!579518 () Bool)

(declare-fun e!350223 () Bool)

(assert (=> b!579518 (= e!350223 e!350222)))

(declare-fun c!108462 () Bool)

(assert (=> b!579518 (= c!108462 ((_ is EmptyLang!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun b!579519 () Bool)

(assert (=> b!579519 (= e!350219 (= (head!1227 input!2705) (c!108451 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))))

(declare-fun d!203636 () Bool)

(assert (=> d!203636 e!350223))

(declare-fun c!108463 () Bool)

(assert (=> d!203636 (= c!108463 ((_ is EmptyExpr!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun lt!245623 () Bool)

(assert (=> d!203636 (= lt!245623 e!350220)))

(declare-fun c!108461 () Bool)

(assert (=> d!203636 (= c!108461 (isEmpty!4110 input!2705))))

(declare-fun validRegex!485 (Regex!1439) Bool)

(assert (=> d!203636 (validRegex!485 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(assert (=> d!203636 (= (matchR!586 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) input!2705) lt!245623)))

(declare-fun b!579520 () Bool)

(declare-fun e!350224 () Bool)

(assert (=> b!579520 (= e!350221 e!350224)))

(declare-fun res!249426 () Bool)

(assert (=> b!579520 (=> (not res!249426) (not e!350224))))

(assert (=> b!579520 (= res!249426 (not lt!245623))))

(declare-fun bm!39985 () Bool)

(assert (=> bm!39985 (= call!39990 (isEmpty!4110 input!2705))))

(declare-fun b!579521 () Bool)

(assert (=> b!579521 (= e!350223 (= lt!245623 call!39990))))

(declare-fun b!579524 () Bool)

(declare-fun res!249433 () Bool)

(assert (=> b!579524 (=> (not res!249433) (not e!350219))))

(assert (=> b!579524 (= res!249433 (isEmpty!4110 (tail!757 input!2705)))))

(declare-fun b!579525 () Bool)

(declare-fun nullable!390 (Regex!1439) Bool)

(assert (=> b!579525 (= e!350220 (nullable!390 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun b!579526 () Bool)

(assert (=> b!579526 (= e!350224 e!350218)))

(declare-fun res!249427 () Bool)

(assert (=> b!579526 (=> res!249427 e!350218)))

(assert (=> b!579526 (= res!249427 call!39990)))

(declare-fun b!579527 () Bool)

(assert (=> b!579527 (= e!350222 (not lt!245623))))

(declare-fun b!579528 () Bool)

(declare-fun res!249434 () Bool)

(assert (=> b!579528 (=> res!249434 e!350221)))

(assert (=> b!579528 (= res!249434 e!350219)))

(declare-fun res!249428 () Bool)

(assert (=> b!579528 (=> (not res!249428) (not e!350219))))

(assert (=> b!579528 (= res!249428 lt!245623)))

(assert (= (and d!203636 c!108461) b!579525))

(assert (= (and d!203636 (not c!108461)) b!579514))

(assert (= (and d!203636 c!108463) b!579521))

(assert (= (and d!203636 (not c!108463)) b!579518))

(assert (= (and b!579518 c!108462) b!579527))

(assert (= (and b!579518 (not c!108462)) b!579516))

(assert (= (and b!579516 (not res!249432)) b!579528))

(assert (= (and b!579528 res!249428) b!579515))

(assert (= (and b!579515 res!249429) b!579524))

(assert (= (and b!579524 res!249433) b!579519))

(assert (= (and b!579528 (not res!249434)) b!579520))

(assert (= (and b!579520 res!249426) b!579526))

(assert (= (and b!579526 (not res!249427)) b!579513))

(assert (= (and b!579513 (not res!249425)) b!579517))

(assert (= (or b!579521 b!579515 b!579526) bm!39985))

(declare-fun m!838031 () Bool)

(assert (=> b!579513 m!838031))

(assert (=> b!579513 m!838031))

(declare-fun m!838033 () Bool)

(assert (=> b!579513 m!838033))

(assert (=> d!203636 m!837945))

(declare-fun m!838035 () Bool)

(assert (=> d!203636 m!838035))

(declare-fun m!838037 () Bool)

(assert (=> b!579514 m!838037))

(assert (=> b!579514 m!838037))

(declare-fun m!838039 () Bool)

(assert (=> b!579514 m!838039))

(assert (=> b!579514 m!838031))

(assert (=> b!579514 m!838039))

(assert (=> b!579514 m!838031))

(declare-fun m!838041 () Bool)

(assert (=> b!579514 m!838041))

(assert (=> b!579524 m!838031))

(assert (=> b!579524 m!838031))

(assert (=> b!579524 m!838033))

(assert (=> b!579517 m!838037))

(declare-fun m!838043 () Bool)

(assert (=> b!579525 m!838043))

(assert (=> bm!39985 m!837945))

(assert (=> b!579519 m!838037))

(assert (=> b!579456 d!203636))

(declare-fun d!203640 () Bool)

(assert (=> d!203640 (not (matchR!586 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) input!2705))))

(declare-fun lt!245631 () Unit!10309)

(declare-fun choose!4159 (LexerInterface!991 List!5702 Rule!2010 List!5701 List!5701 Rule!2010) Unit!10309)

(assert (=> d!203640 (= lt!245631 (choose!4159 thiss!22590 rules!3103 (rule!1859 token!491) input!2705 lt!245595 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(assert (=> d!203640 (isPrefix!739 input!2705 lt!245595)))

(assert (=> d!203640 (= (lemmaMaxPrefNoSmallerRuleMatches!20 thiss!22590 rules!3103 (rule!1859 token!491) input!2705 lt!245595 (rule!1859 (_1!3600 (v!16320 lt!245592)))) lt!245631)))

(declare-fun bs!69620 () Bool)

(assert (= bs!69620 d!203640))

(assert (=> bs!69620 m!837909))

(declare-fun m!838079 () Bool)

(assert (=> bs!69620 m!838079))

(assert (=> bs!69620 m!837967))

(assert (=> b!579455 d!203640))

(assert (=> b!579455 d!203636))

(declare-fun b!579569 () Bool)

(declare-fun e!350248 () Bool)

(declare-fun inv!17 (TokenValue!1129) Bool)

(assert (=> b!579569 (= e!350248 (inv!17 (value!36359 token!491)))))

(declare-fun b!579570 () Bool)

(declare-fun res!249461 () Bool)

(declare-fun e!350246 () Bool)

(assert (=> b!579570 (=> res!249461 e!350246)))

(assert (=> b!579570 (= res!249461 (not ((_ is IntegerValue!3389) (value!36359 token!491))))))

(assert (=> b!579570 (= e!350248 e!350246)))

(declare-fun b!579571 () Bool)

(declare-fun e!350247 () Bool)

(assert (=> b!579571 (= e!350247 e!350248)))

(declare-fun c!108472 () Bool)

(assert (=> b!579571 (= c!108472 ((_ is IntegerValue!3388) (value!36359 token!491)))))

(declare-fun b!579572 () Bool)

(declare-fun inv!15 (TokenValue!1129) Bool)

(assert (=> b!579572 (= e!350246 (inv!15 (value!36359 token!491)))))

(declare-fun b!579573 () Bool)

(declare-fun inv!16 (TokenValue!1129) Bool)

(assert (=> b!579573 (= e!350247 (inv!16 (value!36359 token!491)))))

(declare-fun d!203646 () Bool)

(declare-fun c!108473 () Bool)

(assert (=> d!203646 (= c!108473 ((_ is IntegerValue!3387) (value!36359 token!491)))))

(assert (=> d!203646 (= (inv!21 (value!36359 token!491)) e!350247)))

(assert (= (and d!203646 c!108473) b!579573))

(assert (= (and d!203646 (not c!108473)) b!579571))

(assert (= (and b!579571 c!108472) b!579569))

(assert (= (and b!579571 (not c!108472)) b!579570))

(assert (= (and b!579570 (not res!249461)) b!579572))

(declare-fun m!838093 () Bool)

(assert (=> b!579569 m!838093))

(declare-fun m!838095 () Bool)

(assert (=> b!579572 m!838095))

(declare-fun m!838097 () Bool)

(assert (=> b!579573 m!838097))

(assert (=> b!579454 d!203646))

(declare-fun b!579636 () Bool)

(declare-fun e!350279 () Bool)

(declare-fun e!350277 () Bool)

(assert (=> b!579636 (= e!350279 e!350277)))

(declare-fun res!249504 () Bool)

(assert (=> b!579636 (=> (not res!249504) (not e!350277))))

(declare-fun lt!245678 () Option!1456)

(assert (=> b!579636 (= res!249504 (isDefined!1267 lt!245678))))

(declare-fun b!579637 () Bool)

(declare-fun e!350278 () Option!1456)

(declare-fun lt!245677 () Option!1456)

(declare-fun lt!245674 () Option!1456)

(assert (=> b!579637 (= e!350278 (ite (and ((_ is None!1455) lt!245677) ((_ is None!1455) lt!245674)) None!1455 (ite ((_ is None!1455) lt!245674) lt!245677 (ite ((_ is None!1455) lt!245677) lt!245674 (ite (>= (size!4530 (_1!3600 (v!16320 lt!245677))) (size!4530 (_1!3600 (v!16320 lt!245674)))) lt!245677 lt!245674)))))))

(declare-fun call!39994 () Option!1456)

(assert (=> b!579637 (= lt!245677 call!39994)))

(assert (=> b!579637 (= lt!245674 (maxPrefix!689 thiss!22590 (t!77821 rules!3103) input!2705))))

(declare-fun b!579638 () Bool)

(declare-fun res!249506 () Bool)

(assert (=> b!579638 (=> (not res!249506) (not e!350277))))

(assert (=> b!579638 (= res!249506 (matchR!586 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678))))))))

(declare-fun d!203656 () Bool)

(assert (=> d!203656 e!350279))

(declare-fun res!249507 () Bool)

(assert (=> d!203656 (=> res!249507 e!350279)))

(declare-fun isEmpty!4112 (Option!1456) Bool)

(assert (=> d!203656 (= res!249507 (isEmpty!4112 lt!245678))))

(assert (=> d!203656 (= lt!245678 e!350278)))

(declare-fun c!108483 () Bool)

(assert (=> d!203656 (= c!108483 (and ((_ is Cons!5692) rules!3103) ((_ is Nil!5692) (t!77821 rules!3103))))))

(declare-fun lt!245675 () Unit!10309)

(declare-fun lt!245676 () Unit!10309)

(assert (=> d!203656 (= lt!245675 lt!245676)))

(assert (=> d!203656 (isPrefix!739 input!2705 input!2705)))

(assert (=> d!203656 (= lt!245676 (lemmaIsPrefixRefl!477 input!2705 input!2705))))

(declare-fun rulesValidInductive!398 (LexerInterface!991 List!5702) Bool)

(assert (=> d!203656 (rulesValidInductive!398 thiss!22590 rules!3103)))

(assert (=> d!203656 (= (maxPrefix!689 thiss!22590 rules!3103 input!2705) lt!245678)))

(declare-fun bm!39989 () Bool)

(assert (=> bm!39989 (= call!39994 (maxPrefixOneRule!390 thiss!22590 (h!11093 rules!3103) input!2705))))

(declare-fun b!579639 () Bool)

(assert (=> b!579639 (= e!350278 call!39994)))

(declare-fun b!579640 () Bool)

(declare-fun res!249509 () Bool)

(assert (=> b!579640 (=> (not res!249509) (not e!350277))))

(assert (=> b!579640 (= res!249509 (= (++!1593 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678)))) (_2!3600 (get!2172 lt!245678))) input!2705))))

(declare-fun b!579641 () Bool)

(declare-fun res!249510 () Bool)

(assert (=> b!579641 (=> (not res!249510) (not e!350277))))

(assert (=> b!579641 (= res!249510 (< (size!4531 (_2!3600 (get!2172 lt!245678))) (size!4531 input!2705)))))

(declare-fun b!579642 () Bool)

(declare-fun res!249505 () Bool)

(assert (=> b!579642 (=> (not res!249505) (not e!350277))))

(assert (=> b!579642 (= res!249505 (= (value!36359 (_1!3600 (get!2172 lt!245678))) (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245678)))))))))

(declare-fun b!579643 () Bool)

(assert (=> b!579643 (= e!350277 (contains!1337 rules!3103 (rule!1859 (_1!3600 (get!2172 lt!245678)))))))

(declare-fun b!579644 () Bool)

(declare-fun res!249508 () Bool)

(assert (=> b!579644 (=> (not res!249508) (not e!350277))))

(assert (=> b!579644 (= res!249508 (= (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678)))) (originalCharacters!1144 (_1!3600 (get!2172 lt!245678)))))))

(assert (= (and d!203656 c!108483) b!579639))

(assert (= (and d!203656 (not c!108483)) b!579637))

(assert (= (or b!579639 b!579637) bm!39989))

(assert (= (and d!203656 (not res!249507)) b!579636))

(assert (= (and b!579636 res!249504) b!579644))

(assert (= (and b!579644 res!249508) b!579641))

(assert (= (and b!579641 res!249510) b!579640))

(assert (= (and b!579640 res!249509) b!579642))

(assert (= (and b!579642 res!249505) b!579638))

(assert (= (and b!579638 res!249506) b!579643))

(declare-fun m!838193 () Bool)

(assert (=> b!579641 m!838193))

(declare-fun m!838195 () Bool)

(assert (=> b!579641 m!838195))

(declare-fun m!838197 () Bool)

(assert (=> b!579641 m!838197))

(declare-fun m!838199 () Bool)

(assert (=> d!203656 m!838199))

(assert (=> d!203656 m!838005))

(assert (=> d!203656 m!837981))

(declare-fun m!838201 () Bool)

(assert (=> d!203656 m!838201))

(assert (=> b!579644 m!838193))

(declare-fun m!838203 () Bool)

(assert (=> b!579644 m!838203))

(assert (=> b!579644 m!838203))

(declare-fun m!838205 () Bool)

(assert (=> b!579644 m!838205))

(declare-fun m!838207 () Bool)

(assert (=> bm!39989 m!838207))

(assert (=> b!579642 m!838193))

(declare-fun m!838209 () Bool)

(assert (=> b!579642 m!838209))

(assert (=> b!579642 m!838209))

(declare-fun m!838211 () Bool)

(assert (=> b!579642 m!838211))

(declare-fun m!838213 () Bool)

(assert (=> b!579636 m!838213))

(assert (=> b!579643 m!838193))

(declare-fun m!838215 () Bool)

(assert (=> b!579643 m!838215))

(assert (=> b!579640 m!838193))

(assert (=> b!579640 m!838203))

(assert (=> b!579640 m!838203))

(assert (=> b!579640 m!838205))

(assert (=> b!579640 m!838205))

(declare-fun m!838217 () Bool)

(assert (=> b!579640 m!838217))

(declare-fun m!838219 () Bool)

(assert (=> b!579637 m!838219))

(assert (=> b!579638 m!838193))

(assert (=> b!579638 m!838203))

(assert (=> b!579638 m!838203))

(assert (=> b!579638 m!838205))

(assert (=> b!579638 m!838205))

(declare-fun m!838221 () Bool)

(assert (=> b!579638 m!838221))

(assert (=> b!579432 d!203656))

(declare-fun d!203666 () Bool)

(declare-fun res!249513 () Bool)

(declare-fun e!350282 () Bool)

(assert (=> d!203666 (=> (not res!249513) (not e!350282))))

(declare-fun rulesValid!393 (LexerInterface!991 List!5702) Bool)

(assert (=> d!203666 (= res!249513 (rulesValid!393 thiss!22590 rules!3103))))

(assert (=> d!203666 (= (rulesInvariant!954 thiss!22590 rules!3103) e!350282)))

(declare-fun b!579647 () Bool)

(declare-datatypes ((List!5704 0))(
  ( (Nil!5694) (Cons!5694 (h!11095 String!7388) (t!77895 List!5704)) )
))
(declare-fun noDuplicateTag!393 (LexerInterface!991 List!5702 List!5704) Bool)

(assert (=> b!579647 (= e!350282 (noDuplicateTag!393 thiss!22590 rules!3103 Nil!5694))))

(assert (= (and d!203666 res!249513) b!579647))

(declare-fun m!838227 () Bool)

(assert (=> d!203666 m!838227))

(declare-fun m!838229 () Bool)

(assert (=> b!579647 m!838229))

(assert (=> b!579430 d!203666))

(declare-fun d!203670 () Bool)

(assert (=> d!203670 (= (inv!7164 (tag!1367 (h!11093 rules!3103))) (= (mod (str.len (value!36333 (tag!1367 (h!11093 rules!3103)))) 2) 0))))

(assert (=> b!579440 d!203670))

(declare-fun d!203676 () Bool)

(declare-fun res!249516 () Bool)

(declare-fun e!350285 () Bool)

(assert (=> d!203676 (=> (not res!249516) (not e!350285))))

(declare-fun semiInverseModEq!428 (Int Int) Bool)

(assert (=> d!203676 (= res!249516 (semiInverseModEq!428 (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (h!11093 rules!3103)))))))

(assert (=> d!203676 (= (inv!7167 (transformation!1105 (h!11093 rules!3103))) e!350285)))

(declare-fun b!579650 () Bool)

(declare-fun equivClasses!411 (Int Int) Bool)

(assert (=> b!579650 (= e!350285 (equivClasses!411 (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (h!11093 rules!3103)))))))

(assert (= (and d!203676 res!249516) b!579650))

(declare-fun m!838241 () Bool)

(assert (=> d!203676 m!838241))

(declare-fun m!838243 () Bool)

(assert (=> b!579650 m!838243))

(assert (=> b!579440 d!203676))

(declare-fun d!203680 () Bool)

(assert (=> d!203680 (= (isEmpty!4110 input!2705) ((_ is Nil!5691) input!2705))))

(assert (=> b!579461 d!203680))

(declare-fun d!203682 () Bool)

(assert (=> d!203682 (= (isEmpty!4110 (_2!3600 (v!16320 lt!245592))) ((_ is Nil!5691) (_2!3600 (v!16320 lt!245592))))))

(assert (=> b!579438 d!203682))

(declare-fun d!203684 () Bool)

(declare-fun lt!245690 () Int)

(assert (=> d!203684 (>= lt!245690 0)))

(declare-fun e!350288 () Int)

(assert (=> d!203684 (= lt!245690 e!350288)))

(declare-fun c!108487 () Bool)

(assert (=> d!203684 (= c!108487 ((_ is Nil!5691) (originalCharacters!1144 (_1!3600 (v!16320 lt!245592)))))))

(assert (=> d!203684 (= (size!4531 (originalCharacters!1144 (_1!3600 (v!16320 lt!245592)))) lt!245690)))

(declare-fun b!579655 () Bool)

(assert (=> b!579655 (= e!350288 0)))

(declare-fun b!579656 () Bool)

(assert (=> b!579656 (= e!350288 (+ 1 (size!4531 (t!77820 (originalCharacters!1144 (_1!3600 (v!16320 lt!245592)))))))))

(assert (= (and d!203684 c!108487) b!579655))

(assert (= (and d!203684 (not c!108487)) b!579656))

(declare-fun m!838245 () Bool)

(assert (=> b!579656 m!838245))

(assert (=> b!579459 d!203684))

(declare-fun b!579734 () Bool)

(declare-fun e!350340 () Bool)

(assert (=> b!579734 (= e!350340 true)))

(declare-fun d!203686 () Bool)

(assert (=> d!203686 e!350340))

(assert (= d!203686 b!579734))

(declare-fun order!4653 () Int)

(declare-fun lambda!15765 () Int)

(declare-fun order!4655 () Int)

(declare-fun dynLambda!3315 (Int Int) Int)

(declare-fun dynLambda!3316 (Int Int) Int)

(assert (=> b!579734 (< (dynLambda!3315 order!4653 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (dynLambda!3316 order!4655 lambda!15765))))

(declare-fun order!4657 () Int)

(declare-fun dynLambda!3317 (Int Int) Int)

(assert (=> b!579734 (< (dynLambda!3317 order!4657 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (dynLambda!3316 order!4655 lambda!15765))))

(declare-fun dynLambda!3318 (Int TokenValue!1129) BalanceConc!3652)

(declare-fun dynLambda!3319 (Int BalanceConc!3652) TokenValue!1129)

(assert (=> d!203686 (= (list!2367 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610))) (list!2367 lt!245610))))

(declare-fun lt!245720 () Unit!10309)

(declare-fun ForallOf!112 (Int BalanceConc!3652) Unit!10309)

(assert (=> d!203686 (= lt!245720 (ForallOf!112 lambda!15765 lt!245610))))

(assert (=> d!203686 (= (lemmaSemiInverse!208 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) lt!245610) lt!245720)))

(declare-fun b_lambda!22755 () Bool)

(assert (=> (not b_lambda!22755) (not d!203686)))

(declare-fun tb!50695 () Bool)

(declare-fun t!77847 () Bool)

(assert (=> (and b!579433 (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77847) tb!50695))

(declare-fun e!350345 () Bool)

(declare-fun b!579743 () Bool)

(declare-fun tp!181241 () Bool)

(declare-fun inv!7171 (Conc!1822) Bool)

(assert (=> b!579743 (= e!350345 (and (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610)))) tp!181241))))

(declare-fun result!56750 () Bool)

(declare-fun inv!7172 (BalanceConc!3652) Bool)

(assert (=> tb!50695 (= result!56750 (and (inv!7172 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610))) e!350345))))

(assert (= tb!50695 b!579743))

(declare-fun m!838375 () Bool)

(assert (=> b!579743 m!838375))

(declare-fun m!838379 () Bool)

(assert (=> tb!50695 m!838379))

(assert (=> d!203686 t!77847))

(declare-fun b_and!56943 () Bool)

(assert (= b_and!56901 (and (=> t!77847 result!56750) b_and!56943)))

(declare-fun tb!50697 () Bool)

(declare-fun t!77849 () Bool)

(assert (=> (and b!579460 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77849) tb!50697))

(declare-fun result!56754 () Bool)

(assert (= result!56754 result!56750))

(assert (=> d!203686 t!77849))

(declare-fun b_and!56945 () Bool)

(assert (= b_and!56905 (and (=> t!77849 result!56754) b_and!56945)))

(declare-fun b_lambda!22757 () Bool)

(assert (=> (not b_lambda!22757) (not d!203686)))

(declare-fun tb!50699 () Bool)

(declare-fun t!77851 () Bool)

(assert (=> (and b!579433 (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77851) tb!50699))

(declare-fun result!56756 () Bool)

(assert (=> tb!50699 (= result!56756 (inv!21 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610)))))

(declare-fun m!838387 () Bool)

(assert (=> tb!50699 m!838387))

(assert (=> d!203686 t!77851))

(declare-fun b_and!56947 () Bool)

(assert (= b_and!56899 (and (=> t!77851 result!56756) b_and!56947)))

(declare-fun tb!50701 () Bool)

(declare-fun t!77853 () Bool)

(assert (=> (and b!579460 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77853) tb!50701))

(declare-fun result!56760 () Bool)

(assert (= result!56760 result!56756))

(assert (=> d!203686 t!77853))

(declare-fun b_and!56949 () Bool)

(assert (= b_and!56903 (and (=> t!77853 result!56760) b_and!56949)))

(declare-fun m!838391 () Bool)

(assert (=> d!203686 m!838391))

(declare-fun m!838393 () Bool)

(assert (=> d!203686 m!838393))

(declare-fun m!838395 () Bool)

(assert (=> d!203686 m!838395))

(declare-fun m!838397 () Bool)

(assert (=> d!203686 m!838397))

(declare-fun m!838399 () Bool)

(assert (=> d!203686 m!838399))

(assert (=> d!203686 m!838391))

(assert (=> d!203686 m!838397))

(assert (=> b!579437 d!203686))

(declare-fun d!203748 () Bool)

(assert (=> d!203748 (not (matchR!586 (regex!1105 (rule!1859 token!491)) input!2705))))

(declare-fun lt!245728 () Unit!10309)

(declare-fun choose!4160 (LexerInterface!991 List!5702 Rule!2010 List!5701 List!5701 List!5701 Rule!2010) Unit!10309)

(assert (=> d!203748 (= lt!245728 (choose!4160 thiss!22590 rules!3103 (rule!1859 (_1!3600 (v!16320 lt!245592))) lt!245578 input!2705 input!2705 (rule!1859 token!491)))))

(assert (=> d!203748 (isPrefix!739 lt!245578 input!2705)))

(assert (=> d!203748 (= (lemmaMaxPrefixOutputsMaxPrefix!64 thiss!22590 rules!3103 (rule!1859 (_1!3600 (v!16320 lt!245592))) lt!245578 input!2705 input!2705 (rule!1859 token!491)) lt!245728)))

(declare-fun bs!69639 () Bool)

(assert (= bs!69639 d!203748))

(assert (=> bs!69639 m!837949))

(declare-fun m!838405 () Bool)

(assert (=> bs!69639 m!838405))

(declare-fun m!838407 () Bool)

(assert (=> bs!69639 m!838407))

(assert (=> b!579437 d!203748))

(declare-fun b!579751 () Bool)

(declare-fun res!249566 () Bool)

(declare-fun e!350353 () Bool)

(assert (=> b!579751 (=> res!249566 e!350353)))

(assert (=> b!579751 (= res!249566 (not (isEmpty!4110 (tail!757 input!2705))))))

(declare-fun b!579752 () Bool)

(declare-fun e!350355 () Bool)

(assert (=> b!579752 (= e!350355 (matchR!586 (derivativeStep!303 (regex!1105 (rule!1859 token!491)) (head!1227 input!2705)) (tail!757 input!2705)))))

(declare-fun b!579753 () Bool)

(declare-fun res!249570 () Bool)

(declare-fun e!350354 () Bool)

(assert (=> b!579753 (=> (not res!249570) (not e!350354))))

(declare-fun call!39995 () Bool)

(assert (=> b!579753 (= res!249570 (not call!39995))))

(declare-fun b!579754 () Bool)

(declare-fun res!249571 () Bool)

(declare-fun e!350356 () Bool)

(assert (=> b!579754 (=> res!249571 e!350356)))

(assert (=> b!579754 (= res!249571 (not ((_ is ElementMatch!1439) (regex!1105 (rule!1859 token!491)))))))

(declare-fun e!350357 () Bool)

(assert (=> b!579754 (= e!350357 e!350356)))

(declare-fun b!579755 () Bool)

(assert (=> b!579755 (= e!350353 (not (= (head!1227 input!2705) (c!108451 (regex!1105 (rule!1859 token!491))))))))

(declare-fun b!579756 () Bool)

(declare-fun e!350358 () Bool)

(assert (=> b!579756 (= e!350358 e!350357)))

(declare-fun c!108502 () Bool)

(assert (=> b!579756 (= c!108502 ((_ is EmptyLang!1439) (regex!1105 (rule!1859 token!491))))))

(declare-fun b!579757 () Bool)

(assert (=> b!579757 (= e!350354 (= (head!1227 input!2705) (c!108451 (regex!1105 (rule!1859 token!491)))))))

(declare-fun d!203750 () Bool)

(assert (=> d!203750 e!350358))

(declare-fun c!108503 () Bool)

(assert (=> d!203750 (= c!108503 ((_ is EmptyExpr!1439) (regex!1105 (rule!1859 token!491))))))

(declare-fun lt!245729 () Bool)

(assert (=> d!203750 (= lt!245729 e!350355)))

(declare-fun c!108501 () Bool)

(assert (=> d!203750 (= c!108501 (isEmpty!4110 input!2705))))

(assert (=> d!203750 (validRegex!485 (regex!1105 (rule!1859 token!491)))))

(assert (=> d!203750 (= (matchR!586 (regex!1105 (rule!1859 token!491)) input!2705) lt!245729)))

(declare-fun b!579758 () Bool)

(declare-fun e!350359 () Bool)

(assert (=> b!579758 (= e!350356 e!350359)))

(declare-fun res!249567 () Bool)

(assert (=> b!579758 (=> (not res!249567) (not e!350359))))

(assert (=> b!579758 (= res!249567 (not lt!245729))))

(declare-fun bm!39990 () Bool)

(assert (=> bm!39990 (= call!39995 (isEmpty!4110 input!2705))))

(declare-fun b!579759 () Bool)

(assert (=> b!579759 (= e!350358 (= lt!245729 call!39995))))

(declare-fun b!579760 () Bool)

(declare-fun res!249572 () Bool)

(assert (=> b!579760 (=> (not res!249572) (not e!350354))))

(assert (=> b!579760 (= res!249572 (isEmpty!4110 (tail!757 input!2705)))))

(declare-fun b!579761 () Bool)

(assert (=> b!579761 (= e!350355 (nullable!390 (regex!1105 (rule!1859 token!491))))))

(declare-fun b!579762 () Bool)

(assert (=> b!579762 (= e!350359 e!350353)))

(declare-fun res!249568 () Bool)

(assert (=> b!579762 (=> res!249568 e!350353)))

(assert (=> b!579762 (= res!249568 call!39995)))

(declare-fun b!579763 () Bool)

(assert (=> b!579763 (= e!350357 (not lt!245729))))

(declare-fun b!579764 () Bool)

(declare-fun res!249573 () Bool)

(assert (=> b!579764 (=> res!249573 e!350356)))

(assert (=> b!579764 (= res!249573 e!350354)))

(declare-fun res!249569 () Bool)

(assert (=> b!579764 (=> (not res!249569) (not e!350354))))

(assert (=> b!579764 (= res!249569 lt!245729)))

(assert (= (and d!203750 c!108501) b!579761))

(assert (= (and d!203750 (not c!108501)) b!579752))

(assert (= (and d!203750 c!108503) b!579759))

(assert (= (and d!203750 (not c!108503)) b!579756))

(assert (= (and b!579756 c!108502) b!579763))

(assert (= (and b!579756 (not c!108502)) b!579754))

(assert (= (and b!579754 (not res!249571)) b!579764))

(assert (= (and b!579764 res!249569) b!579753))

(assert (= (and b!579753 res!249570) b!579760))

(assert (= (and b!579760 res!249572) b!579757))

(assert (= (and b!579764 (not res!249573)) b!579758))

(assert (= (and b!579758 res!249567) b!579762))

(assert (= (and b!579762 (not res!249568)) b!579751))

(assert (= (and b!579751 (not res!249566)) b!579755))

(assert (= (or b!579759 b!579753 b!579762) bm!39990))

(assert (=> b!579751 m!838031))

(assert (=> b!579751 m!838031))

(assert (=> b!579751 m!838033))

(assert (=> d!203750 m!837945))

(declare-fun m!838409 () Bool)

(assert (=> d!203750 m!838409))

(assert (=> b!579752 m!838037))

(assert (=> b!579752 m!838037))

(declare-fun m!838411 () Bool)

(assert (=> b!579752 m!838411))

(assert (=> b!579752 m!838031))

(assert (=> b!579752 m!838411))

(assert (=> b!579752 m!838031))

(declare-fun m!838413 () Bool)

(assert (=> b!579752 m!838413))

(assert (=> b!579760 m!838031))

(assert (=> b!579760 m!838031))

(assert (=> b!579760 m!838033))

(assert (=> b!579755 m!838037))

(declare-fun m!838415 () Bool)

(assert (=> b!579761 m!838415))

(assert (=> bm!39990 m!837945))

(assert (=> b!579757 m!838037))

(assert (=> b!579437 d!203750))

(declare-fun d!203752 () Bool)

(declare-fun lt!245734 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1009 (List!5702) (InoxSet Rule!2010))

(assert (=> d!203752 (= lt!245734 (select (content!1009 rules!3103) (rule!1859 token!491)))))

(declare-fun e!350379 () Bool)

(assert (=> d!203752 (= lt!245734 e!350379)))

(declare-fun res!249595 () Bool)

(assert (=> d!203752 (=> (not res!249595) (not e!350379))))

(assert (=> d!203752 (= res!249595 ((_ is Cons!5692) rules!3103))))

(assert (=> d!203752 (= (contains!1337 rules!3103 (rule!1859 token!491)) lt!245734)))

(declare-fun b!579797 () Bool)

(declare-fun e!350378 () Bool)

(assert (=> b!579797 (= e!350379 e!350378)))

(declare-fun res!249594 () Bool)

(assert (=> b!579797 (=> res!249594 e!350378)))

(assert (=> b!579797 (= res!249594 (= (h!11093 rules!3103) (rule!1859 token!491)))))

(declare-fun b!579798 () Bool)

(assert (=> b!579798 (= e!350378 (contains!1337 (t!77821 rules!3103) (rule!1859 token!491)))))

(assert (= (and d!203752 res!249595) b!579797))

(assert (= (and b!579797 (not res!249594)) b!579798))

(declare-fun m!838417 () Bool)

(assert (=> d!203752 m!838417))

(declare-fun m!838419 () Bool)

(assert (=> d!203752 m!838419))

(declare-fun m!838421 () Bool)

(assert (=> b!579798 m!838421))

(assert (=> b!579436 d!203752))

(declare-fun d!203754 () Bool)

(declare-fun lt!245735 () Int)

(assert (=> d!203754 (>= lt!245735 0)))

(declare-fun e!350380 () Int)

(assert (=> d!203754 (= lt!245735 e!350380)))

(declare-fun c!108510 () Bool)

(assert (=> d!203754 (= c!108510 ((_ is Nil!5691) (originalCharacters!1144 token!491)))))

(assert (=> d!203754 (= (size!4531 (originalCharacters!1144 token!491)) lt!245735)))

(declare-fun b!579799 () Bool)

(assert (=> b!579799 (= e!350380 0)))

(declare-fun b!579800 () Bool)

(assert (=> b!579800 (= e!350380 (+ 1 (size!4531 (t!77820 (originalCharacters!1144 token!491)))))))

(assert (= (and d!203754 c!108510) b!579799))

(assert (= (and d!203754 (not c!108510)) b!579800))

(declare-fun m!838423 () Bool)

(assert (=> b!579800 m!838423))

(assert (=> b!579424 d!203754))

(declare-fun d!203756 () Bool)

(assert (=> d!203756 (isPrefix!739 lt!245578 (++!1593 lt!245578 (_2!3600 (v!16320 lt!245592))))))

(declare-fun lt!245738 () Unit!10309)

(declare-fun choose!4162 (List!5701 List!5701) Unit!10309)

(assert (=> d!203756 (= lt!245738 (choose!4162 lt!245578 (_2!3600 (v!16320 lt!245592))))))

(assert (=> d!203756 (= (lemmaConcatTwoListThenFirstIsPrefix!586 lt!245578 (_2!3600 (v!16320 lt!245592))) lt!245738)))

(declare-fun bs!69640 () Bool)

(assert (= bs!69640 d!203756))

(assert (=> bs!69640 m!837959))

(assert (=> bs!69640 m!837959))

(declare-fun m!838425 () Bool)

(assert (=> bs!69640 m!838425))

(declare-fun m!838427 () Bool)

(assert (=> bs!69640 m!838427))

(assert (=> b!579445 d!203756))

(declare-fun d!203758 () Bool)

(declare-fun lt!245744 () List!5701)

(assert (=> d!203758 (= (++!1593 lt!245578 lt!245744) input!2705)))

(declare-fun e!350393 () List!5701)

(assert (=> d!203758 (= lt!245744 e!350393)))

(declare-fun c!108518 () Bool)

(assert (=> d!203758 (= c!108518 ((_ is Cons!5691) lt!245578))))

(assert (=> d!203758 (>= (size!4531 input!2705) (size!4531 lt!245578))))

(assert (=> d!203758 (= (getSuffix!258 input!2705 lt!245578) lt!245744)))

(declare-fun b!579825 () Bool)

(assert (=> b!579825 (= e!350393 (getSuffix!258 (tail!757 input!2705) (t!77820 lt!245578)))))

(declare-fun b!579826 () Bool)

(assert (=> b!579826 (= e!350393 input!2705)))

(assert (= (and d!203758 c!108518) b!579825))

(assert (= (and d!203758 (not c!108518)) b!579826))

(declare-fun m!838449 () Bool)

(assert (=> d!203758 m!838449))

(assert (=> d!203758 m!838197))

(assert (=> d!203758 m!837993))

(assert (=> b!579825 m!838031))

(assert (=> b!579825 m!838031))

(declare-fun m!838451 () Bool)

(assert (=> b!579825 m!838451))

(assert (=> b!579445 d!203758))

(declare-fun d!203766 () Bool)

(assert (=> d!203766 (and (= lt!245601 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!245749 () Unit!10309)

(declare-fun choose!4164 (List!5701 List!5701 List!5701 List!5701) Unit!10309)

(assert (=> d!203766 (= lt!245749 (choose!4164 lt!245601 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!203766 (= (++!1593 lt!245601 suffix!1342) (++!1593 input!2705 suffix!1342))))

(assert (=> d!203766 (= (lemmaConcatSameAndSameSizesThenSameLists!182 lt!245601 suffix!1342 input!2705 suffix!1342) lt!245749)))

(declare-fun bs!69641 () Bool)

(assert (= bs!69641 d!203766))

(declare-fun m!838453 () Bool)

(assert (=> bs!69641 m!838453))

(assert (=> bs!69641 m!837911))

(assert (=> bs!69641 m!838017))

(assert (=> b!579445 d!203766))

(declare-fun d!203768 () Bool)

(declare-fun fromListB!565 (List!5701) BalanceConc!3652)

(assert (=> d!203768 (= (seqFromList!1293 lt!245578) (fromListB!565 lt!245578))))

(declare-fun bs!69642 () Bool)

(assert (= bs!69642 d!203768))

(declare-fun m!838459 () Bool)

(assert (=> bs!69642 m!838459))

(assert (=> b!579445 d!203768))

(declare-fun lt!245754 () List!5701)

(declare-fun e!350411 () Bool)

(declare-fun b!579857 () Bool)

(assert (=> b!579857 (= e!350411 (or (not (= (_2!3600 (v!16320 lt!245592)) Nil!5691)) (= lt!245754 lt!245578)))))

(declare-fun d!203778 () Bool)

(assert (=> d!203778 e!350411))

(declare-fun res!249613 () Bool)

(assert (=> d!203778 (=> (not res!249613) (not e!350411))))

(declare-fun content!1010 (List!5701) (InoxSet C!3800))

(assert (=> d!203778 (= res!249613 (= (content!1010 lt!245754) ((_ map or) (content!1010 lt!245578) (content!1010 (_2!3600 (v!16320 lt!245592))))))))

(declare-fun e!350410 () List!5701)

(assert (=> d!203778 (= lt!245754 e!350410)))

(declare-fun c!108529 () Bool)

(assert (=> d!203778 (= c!108529 ((_ is Nil!5691) lt!245578))))

(assert (=> d!203778 (= (++!1593 lt!245578 (_2!3600 (v!16320 lt!245592))) lt!245754)))

(declare-fun b!579856 () Bool)

(declare-fun res!249614 () Bool)

(assert (=> b!579856 (=> (not res!249614) (not e!350411))))

(assert (=> b!579856 (= res!249614 (= (size!4531 lt!245754) (+ (size!4531 lt!245578) (size!4531 (_2!3600 (v!16320 lt!245592))))))))

(declare-fun b!579854 () Bool)

(assert (=> b!579854 (= e!350410 (_2!3600 (v!16320 lt!245592)))))

(declare-fun b!579855 () Bool)

(assert (=> b!579855 (= e!350410 (Cons!5691 (h!11092 lt!245578) (++!1593 (t!77820 lt!245578) (_2!3600 (v!16320 lt!245592)))))))

(assert (= (and d!203778 c!108529) b!579854))

(assert (= (and d!203778 (not c!108529)) b!579855))

(assert (= (and d!203778 res!249613) b!579856))

(assert (= (and b!579856 res!249614) b!579857))

(declare-fun m!838465 () Bool)

(assert (=> d!203778 m!838465))

(declare-fun m!838467 () Bool)

(assert (=> d!203778 m!838467))

(declare-fun m!838469 () Bool)

(assert (=> d!203778 m!838469))

(declare-fun m!838471 () Bool)

(assert (=> b!579856 m!838471))

(assert (=> b!579856 m!837993))

(declare-fun m!838473 () Bool)

(assert (=> b!579856 m!838473))

(declare-fun m!838475 () Bool)

(assert (=> b!579855 m!838475))

(assert (=> b!579445 d!203778))

(declare-fun d!203784 () Bool)

(assert (=> d!203784 (= (_2!3600 (v!16320 lt!245592)) lt!245590)))

(declare-fun lt!245760 () Unit!10309)

(declare-fun choose!4166 (List!5701 List!5701 List!5701 List!5701 List!5701) Unit!10309)

(assert (=> d!203784 (= lt!245760 (choose!4166 lt!245578 (_2!3600 (v!16320 lt!245592)) lt!245578 lt!245590 input!2705))))

(assert (=> d!203784 (isPrefix!739 lt!245578 input!2705)))

(assert (=> d!203784 (= (lemmaSamePrefixThenSameSuffix!462 lt!245578 (_2!3600 (v!16320 lt!245592)) lt!245578 lt!245590 input!2705) lt!245760)))

(declare-fun bs!69644 () Bool)

(assert (= bs!69644 d!203784))

(declare-fun m!838479 () Bool)

(assert (=> bs!69644 m!838479))

(assert (=> bs!69644 m!838407))

(assert (=> b!579445 d!203784))

(declare-fun d!203788 () Bool)

(declare-fun lt!245761 () Int)

(assert (=> d!203788 (>= lt!245761 0)))

(declare-fun e!350412 () Int)

(assert (=> d!203788 (= lt!245761 e!350412)))

(declare-fun c!108530 () Bool)

(assert (=> d!203788 (= c!108530 ((_ is Nil!5691) lt!245578))))

(assert (=> d!203788 (= (size!4531 lt!245578) lt!245761)))

(declare-fun b!579858 () Bool)

(assert (=> b!579858 (= e!350412 0)))

(declare-fun b!579859 () Bool)

(assert (=> b!579859 (= e!350412 (+ 1 (size!4531 (t!77820 lt!245578))))))

(assert (= (and d!203788 c!108530) b!579858))

(assert (= (and d!203788 (not c!108530)) b!579859))

(declare-fun m!838481 () Bool)

(assert (=> b!579859 m!838481))

(assert (=> b!579445 d!203788))

(declare-fun d!203790 () Bool)

(declare-fun res!249619 () Bool)

(declare-fun e!350415 () Bool)

(assert (=> d!203790 (=> (not res!249619) (not e!350415))))

(assert (=> d!203790 (= res!249619 (validRegex!485 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(assert (=> d!203790 (= (ruleValid!315 thiss!22590 (rule!1859 (_1!3600 (v!16320 lt!245592)))) e!350415)))

(declare-fun b!579864 () Bool)

(declare-fun res!249620 () Bool)

(assert (=> b!579864 (=> (not res!249620) (not e!350415))))

(assert (=> b!579864 (= res!249620 (not (nullable!390 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))))

(declare-fun b!579865 () Bool)

(assert (=> b!579865 (= e!350415 (not (= (tag!1367 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (String!7389 ""))))))

(assert (= (and d!203790 res!249619) b!579864))

(assert (= (and b!579864 res!249620) b!579865))

(assert (=> d!203790 m!838035))

(assert (=> b!579864 m!838043))

(assert (=> b!579445 d!203790))

(declare-fun d!203792 () Bool)

(declare-fun lt!245768 () BalanceConc!3652)

(assert (=> d!203792 (= (list!2367 lt!245768) (originalCharacters!1144 (_1!3600 (v!16320 lt!245592))))))

(assert (=> d!203792 (= lt!245768 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592)))))))

(assert (=> d!203792 (= (charsOf!734 (_1!3600 (v!16320 lt!245592))) lt!245768)))

(declare-fun b_lambda!22759 () Bool)

(assert (=> (not b_lambda!22759) (not d!203792)))

(declare-fun t!77855 () Bool)

(declare-fun tb!50703 () Bool)

(assert (=> (and b!579433 (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77855) tb!50703))

(declare-fun b!579883 () Bool)

(declare-fun e!350426 () Bool)

(declare-fun tp!181242 () Bool)

(assert (=> b!579883 (= e!350426 (and (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592)))))) tp!181242))))

(declare-fun result!56762 () Bool)

(assert (=> tb!50703 (= result!56762 (and (inv!7172 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592))))) e!350426))))

(assert (= tb!50703 b!579883))

(declare-fun m!838489 () Bool)

(assert (=> b!579883 m!838489))

(declare-fun m!838493 () Bool)

(assert (=> tb!50703 m!838493))

(assert (=> d!203792 t!77855))

(declare-fun b_and!56951 () Bool)

(assert (= b_and!56943 (and (=> t!77855 result!56762) b_and!56951)))

(declare-fun t!77857 () Bool)

(declare-fun tb!50705 () Bool)

(assert (=> (and b!579460 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77857) tb!50705))

(declare-fun result!56764 () Bool)

(assert (= result!56764 result!56762))

(assert (=> d!203792 t!77857))

(declare-fun b_and!56953 () Bool)

(assert (= b_and!56945 (and (=> t!77857 result!56764) b_and!56953)))

(declare-fun m!838497 () Bool)

(assert (=> d!203792 m!838497))

(declare-fun m!838499 () Bool)

(assert (=> d!203792 m!838499))

(assert (=> b!579445 d!203792))

(declare-fun b!579906 () Bool)

(declare-fun res!249650 () Bool)

(declare-fun e!350439 () Bool)

(assert (=> b!579906 (=> (not res!249650) (not e!350439))))

(assert (=> b!579906 (= res!249650 (= (head!1227 input!2705) (head!1227 lt!245595)))))

(declare-fun d!203806 () Bool)

(declare-fun e!350440 () Bool)

(assert (=> d!203806 e!350440))

(declare-fun res!249651 () Bool)

(assert (=> d!203806 (=> res!249651 e!350440)))

(declare-fun lt!245778 () Bool)

(assert (=> d!203806 (= res!249651 (not lt!245778))))

(declare-fun e!350438 () Bool)

(assert (=> d!203806 (= lt!245778 e!350438)))

(declare-fun res!249652 () Bool)

(assert (=> d!203806 (=> res!249652 e!350438)))

(assert (=> d!203806 (= res!249652 ((_ is Nil!5691) input!2705))))

(assert (=> d!203806 (= (isPrefix!739 input!2705 lt!245595) lt!245778)))

(declare-fun b!579908 () Bool)

(assert (=> b!579908 (= e!350440 (>= (size!4531 lt!245595) (size!4531 input!2705)))))

(declare-fun b!579905 () Bool)

(assert (=> b!579905 (= e!350438 e!350439)))

(declare-fun res!249649 () Bool)

(assert (=> b!579905 (=> (not res!249649) (not e!350439))))

(assert (=> b!579905 (= res!249649 (not ((_ is Nil!5691) lt!245595)))))

(declare-fun b!579907 () Bool)

(assert (=> b!579907 (= e!350439 (isPrefix!739 (tail!757 input!2705) (tail!757 lt!245595)))))

(assert (= (and d!203806 (not res!249652)) b!579905))

(assert (= (and b!579905 res!249649) b!579906))

(assert (= (and b!579906 res!249650) b!579907))

(assert (= (and d!203806 (not res!249651)) b!579908))

(assert (=> b!579906 m!838037))

(declare-fun m!838543 () Bool)

(assert (=> b!579906 m!838543))

(declare-fun m!838545 () Bool)

(assert (=> b!579908 m!838545))

(assert (=> b!579908 m!838197))

(assert (=> b!579907 m!838031))

(declare-fun m!838547 () Bool)

(assert (=> b!579907 m!838547))

(assert (=> b!579907 m!838031))

(assert (=> b!579907 m!838547))

(declare-fun m!838549 () Bool)

(assert (=> b!579907 m!838549))

(assert (=> b!579445 d!203806))

(declare-fun d!203816 () Bool)

(assert (=> d!203816 (isPrefix!739 lt!245601 (++!1593 lt!245601 suffix!1342))))

(declare-fun lt!245779 () Unit!10309)

(assert (=> d!203816 (= lt!245779 (choose!4162 lt!245601 suffix!1342))))

(assert (=> d!203816 (= (lemmaConcatTwoListThenFirstIsPrefix!586 lt!245601 suffix!1342) lt!245779)))

(declare-fun bs!69648 () Bool)

(assert (= bs!69648 d!203816))

(assert (=> bs!69648 m!837911))

(assert (=> bs!69648 m!837911))

(declare-fun m!838551 () Bool)

(assert (=> bs!69648 m!838551))

(declare-fun m!838553 () Bool)

(assert (=> bs!69648 m!838553))

(assert (=> b!579445 d!203816))

(declare-fun b!579914 () Bool)

(declare-fun res!249654 () Bool)

(declare-fun e!350444 () Bool)

(assert (=> b!579914 (=> (not res!249654) (not e!350444))))

(assert (=> b!579914 (= res!249654 (= (head!1227 input!2705) (head!1227 lt!245584)))))

(declare-fun d!203818 () Bool)

(declare-fun e!350445 () Bool)

(assert (=> d!203818 e!350445))

(declare-fun res!249655 () Bool)

(assert (=> d!203818 (=> res!249655 e!350445)))

(declare-fun lt!245780 () Bool)

(assert (=> d!203818 (= res!249655 (not lt!245780))))

(declare-fun e!350443 () Bool)

(assert (=> d!203818 (= lt!245780 e!350443)))

(declare-fun res!249656 () Bool)

(assert (=> d!203818 (=> res!249656 e!350443)))

(assert (=> d!203818 (= res!249656 ((_ is Nil!5691) input!2705))))

(assert (=> d!203818 (= (isPrefix!739 input!2705 lt!245584) lt!245780)))

(declare-fun b!579916 () Bool)

(assert (=> b!579916 (= e!350445 (>= (size!4531 lt!245584) (size!4531 input!2705)))))

(declare-fun b!579913 () Bool)

(assert (=> b!579913 (= e!350443 e!350444)))

(declare-fun res!249653 () Bool)

(assert (=> b!579913 (=> (not res!249653) (not e!350444))))

(assert (=> b!579913 (= res!249653 (not ((_ is Nil!5691) lt!245584)))))

(declare-fun b!579915 () Bool)

(assert (=> b!579915 (= e!350444 (isPrefix!739 (tail!757 input!2705) (tail!757 lt!245584)))))

(assert (= (and d!203818 (not res!249656)) b!579913))

(assert (= (and b!579913 res!249653) b!579914))

(assert (= (and b!579914 res!249654) b!579915))

(assert (= (and d!203818 (not res!249655)) b!579916))

(assert (=> b!579914 m!838037))

(declare-fun m!838555 () Bool)

(assert (=> b!579914 m!838555))

(declare-fun m!838557 () Bool)

(assert (=> b!579916 m!838557))

(assert (=> b!579916 m!838197))

(assert (=> b!579915 m!838031))

(declare-fun m!838559 () Bool)

(assert (=> b!579915 m!838559))

(assert (=> b!579915 m!838031))

(assert (=> b!579915 m!838559))

(declare-fun m!838561 () Bool)

(assert (=> b!579915 m!838561))

(assert (=> b!579445 d!203818))

(declare-fun d!203820 () Bool)

(assert (=> d!203820 (= (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) lt!245610) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610))))

(declare-fun b_lambda!22761 () Bool)

(assert (=> (not b_lambda!22761) (not d!203820)))

(assert (=> d!203820 t!77851))

(declare-fun b_and!56955 () Bool)

(assert (= b_and!56947 (and (=> t!77851 result!56756) b_and!56955)))

(assert (=> d!203820 t!77853))

(declare-fun b_and!56957 () Bool)

(assert (= b_and!56949 (and (=> t!77853 result!56760) b_and!56957)))

(assert (=> d!203820 m!838391))

(assert (=> b!579445 d!203820))

(declare-fun d!203822 () Bool)

(declare-fun list!2369 (Conc!1822) List!5701)

(assert (=> d!203822 (= (list!2367 (charsOf!734 (_1!3600 (v!16320 lt!245592)))) (list!2369 (c!108452 (charsOf!734 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun bs!69649 () Bool)

(assert (= bs!69649 d!203822))

(declare-fun m!838563 () Bool)

(assert (=> bs!69649 m!838563))

(assert (=> b!579445 d!203822))

(declare-fun d!203824 () Bool)

(assert (=> d!203824 (ruleValid!315 thiss!22590 (rule!1859 (_1!3600 (v!16320 lt!245592))))))

(declare-fun lt!245783 () Unit!10309)

(declare-fun choose!4168 (LexerInterface!991 Rule!2010 List!5702) Unit!10309)

(assert (=> d!203824 (= lt!245783 (choose!4168 thiss!22590 (rule!1859 (_1!3600 (v!16320 lt!245592))) rules!3103))))

(assert (=> d!203824 (contains!1337 rules!3103 (rule!1859 (_1!3600 (v!16320 lt!245592))))))

(assert (=> d!203824 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!172 thiss!22590 (rule!1859 (_1!3600 (v!16320 lt!245592))) rules!3103) lt!245783)))

(declare-fun bs!69650 () Bool)

(assert (= bs!69650 d!203824))

(assert (=> bs!69650 m!837985))

(declare-fun m!838569 () Bool)

(assert (=> bs!69650 m!838569))

(assert (=> bs!69650 m!837929))

(assert (=> b!579445 d!203824))

(declare-fun b!579950 () Bool)

(declare-fun res!249658 () Bool)

(declare-fun e!350466 () Bool)

(assert (=> b!579950 (=> (not res!249658) (not e!350466))))

(assert (=> b!579950 (= res!249658 (= (head!1227 input!2705) (head!1227 input!2705)))))

(declare-fun d!203826 () Bool)

(declare-fun e!350467 () Bool)

(assert (=> d!203826 e!350467))

(declare-fun res!249659 () Bool)

(assert (=> d!203826 (=> res!249659 e!350467)))

(declare-fun lt!245784 () Bool)

(assert (=> d!203826 (= res!249659 (not lt!245784))))

(declare-fun e!350465 () Bool)

(assert (=> d!203826 (= lt!245784 e!350465)))

(declare-fun res!249660 () Bool)

(assert (=> d!203826 (=> res!249660 e!350465)))

(assert (=> d!203826 (= res!249660 ((_ is Nil!5691) input!2705))))

(assert (=> d!203826 (= (isPrefix!739 input!2705 input!2705) lt!245784)))

(declare-fun b!579952 () Bool)

(assert (=> b!579952 (= e!350467 (>= (size!4531 input!2705) (size!4531 input!2705)))))

(declare-fun b!579949 () Bool)

(assert (=> b!579949 (= e!350465 e!350466)))

(declare-fun res!249657 () Bool)

(assert (=> b!579949 (=> (not res!249657) (not e!350466))))

(assert (=> b!579949 (= res!249657 (not ((_ is Nil!5691) input!2705)))))

(declare-fun b!579951 () Bool)

(assert (=> b!579951 (= e!350466 (isPrefix!739 (tail!757 input!2705) (tail!757 input!2705)))))

(assert (= (and d!203826 (not res!249660)) b!579949))

(assert (= (and b!579949 res!249657) b!579950))

(assert (= (and b!579950 res!249658) b!579951))

(assert (= (and d!203826 (not res!249659)) b!579952))

(assert (=> b!579950 m!838037))

(assert (=> b!579950 m!838037))

(assert (=> b!579952 m!838197))

(assert (=> b!579952 m!838197))

(assert (=> b!579951 m!838031))

(assert (=> b!579951 m!838031))

(assert (=> b!579951 m!838031))

(assert (=> b!579951 m!838031))

(declare-fun m!838571 () Bool)

(assert (=> b!579951 m!838571))

(assert (=> b!579445 d!203826))

(declare-fun d!203828 () Bool)

(assert (=> d!203828 (ruleValid!315 thiss!22590 (rule!1859 token!491))))

(declare-fun lt!245785 () Unit!10309)

(assert (=> d!203828 (= lt!245785 (choose!4168 thiss!22590 (rule!1859 token!491) rules!3103))))

(assert (=> d!203828 (contains!1337 rules!3103 (rule!1859 token!491))))

(assert (=> d!203828 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!172 thiss!22590 (rule!1859 token!491) rules!3103) lt!245785)))

(declare-fun bs!69651 () Bool)

(assert (= bs!69651 d!203828))

(assert (=> bs!69651 m!837961))

(declare-fun m!838573 () Bool)

(assert (=> bs!69651 m!838573))

(assert (=> bs!69651 m!838009))

(assert (=> b!579445 d!203828))

(declare-fun d!203830 () Bool)

(assert (=> d!203830 (isPrefix!739 input!2705 (++!1593 input!2705 suffix!1342))))

(declare-fun lt!245786 () Unit!10309)

(assert (=> d!203830 (= lt!245786 (choose!4162 input!2705 suffix!1342))))

(assert (=> d!203830 (= (lemmaConcatTwoListThenFirstIsPrefix!586 input!2705 suffix!1342) lt!245786)))

(declare-fun bs!69652 () Bool)

(assert (= bs!69652 d!203830))

(assert (=> bs!69652 m!838017))

(assert (=> bs!69652 m!838017))

(declare-fun m!838575 () Bool)

(assert (=> bs!69652 m!838575))

(declare-fun m!838577 () Bool)

(assert (=> bs!69652 m!838577))

(assert (=> b!579445 d!203830))

(declare-fun d!203832 () Bool)

(declare-fun res!249661 () Bool)

(declare-fun e!350468 () Bool)

(assert (=> d!203832 (=> (not res!249661) (not e!350468))))

(assert (=> d!203832 (= res!249661 (validRegex!485 (regex!1105 (rule!1859 token!491))))))

(assert (=> d!203832 (= (ruleValid!315 thiss!22590 (rule!1859 token!491)) e!350468)))

(declare-fun b!579953 () Bool)

(declare-fun res!249662 () Bool)

(assert (=> b!579953 (=> (not res!249662) (not e!350468))))

(assert (=> b!579953 (= res!249662 (not (nullable!390 (regex!1105 (rule!1859 token!491)))))))

(declare-fun b!579954 () Bool)

(assert (=> b!579954 (= e!350468 (not (= (tag!1367 (rule!1859 token!491)) (String!7389 ""))))))

(assert (= (and d!203832 res!249661) b!579953))

(assert (= (and b!579953 res!249662) b!579954))

(assert (=> d!203832 m!838409))

(assert (=> b!579953 m!838415))

(assert (=> b!579445 d!203832))

(declare-fun d!203834 () Bool)

(assert (=> d!203834 (= (size!4530 (_1!3600 (v!16320 lt!245592))) (size!4531 (originalCharacters!1144 (_1!3600 (v!16320 lt!245592)))))))

(declare-fun Unit!10319 () Unit!10309)

(assert (=> d!203834 (= (lemmaCharactersSize!172 (_1!3600 (v!16320 lt!245592))) Unit!10319)))

(declare-fun bs!69653 () Bool)

(assert (= bs!69653 d!203834))

(assert (=> bs!69653 m!837923))

(assert (=> b!579445 d!203834))

(declare-fun d!203836 () Bool)

(declare-fun lt!245787 () Int)

(assert (=> d!203836 (>= lt!245787 0)))

(declare-fun e!350469 () Int)

(assert (=> d!203836 (= lt!245787 e!350469)))

(declare-fun c!108536 () Bool)

(assert (=> d!203836 (= c!108536 ((_ is Nil!5691) lt!245601))))

(assert (=> d!203836 (= (size!4531 lt!245601) lt!245787)))

(declare-fun b!579955 () Bool)

(assert (=> b!579955 (= e!350469 0)))

(declare-fun b!579956 () Bool)

(assert (=> b!579956 (= e!350469 (+ 1 (size!4531 (t!77820 lt!245601))))))

(assert (= (and d!203836 c!108536) b!579955))

(assert (= (and d!203836 (not c!108536)) b!579956))

(declare-fun m!838579 () Bool)

(assert (=> b!579956 m!838579))

(assert (=> b!579445 d!203836))

(declare-fun d!203838 () Bool)

(assert (=> d!203838 (isPrefix!739 input!2705 input!2705)))

(declare-fun lt!245790 () Unit!10309)

(declare-fun choose!4169 (List!5701 List!5701) Unit!10309)

(assert (=> d!203838 (= lt!245790 (choose!4169 input!2705 input!2705))))

(assert (=> d!203838 (= (lemmaIsPrefixRefl!477 input!2705 input!2705) lt!245790)))

(declare-fun bs!69654 () Bool)

(assert (= bs!69654 d!203838))

(assert (=> bs!69654 m!838005))

(declare-fun m!838581 () Bool)

(assert (=> bs!69654 m!838581))

(assert (=> b!579445 d!203838))

(declare-fun d!203840 () Bool)

(declare-fun e!350472 () Bool)

(assert (=> d!203840 e!350472))

(declare-fun res!249665 () Bool)

(assert (=> d!203840 (=> (not res!249665) (not e!350472))))

(assert (=> d!203840 (= res!249665 (semiInverseModEq!428 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))))

(declare-fun Unit!10321 () Unit!10309)

(assert (=> d!203840 (= (lemmaInv!241 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) Unit!10321)))

(declare-fun b!579959 () Bool)

(assert (=> b!579959 (= e!350472 (equivClasses!411 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))))

(assert (= (and d!203840 res!249665) b!579959))

(declare-fun m!838583 () Bool)

(assert (=> d!203840 m!838583))

(declare-fun m!838585 () Bool)

(assert (=> b!579959 m!838585))

(assert (=> b!579445 d!203840))

(declare-fun b!579961 () Bool)

(declare-fun res!249667 () Bool)

(declare-fun e!350474 () Bool)

(assert (=> b!579961 (=> (not res!249667) (not e!350474))))

(assert (=> b!579961 (= res!249667 (= (head!1227 lt!245578) (head!1227 lt!245587)))))

(declare-fun d!203842 () Bool)

(declare-fun e!350475 () Bool)

(assert (=> d!203842 e!350475))

(declare-fun res!249668 () Bool)

(assert (=> d!203842 (=> res!249668 e!350475)))

(declare-fun lt!245791 () Bool)

(assert (=> d!203842 (= res!249668 (not lt!245791))))

(declare-fun e!350473 () Bool)

(assert (=> d!203842 (= lt!245791 e!350473)))

(declare-fun res!249669 () Bool)

(assert (=> d!203842 (=> res!249669 e!350473)))

(assert (=> d!203842 (= res!249669 ((_ is Nil!5691) lt!245578))))

(assert (=> d!203842 (= (isPrefix!739 lt!245578 lt!245587) lt!245791)))

(declare-fun b!579963 () Bool)

(assert (=> b!579963 (= e!350475 (>= (size!4531 lt!245587) (size!4531 lt!245578)))))

(declare-fun b!579960 () Bool)

(assert (=> b!579960 (= e!350473 e!350474)))

(declare-fun res!249666 () Bool)

(assert (=> b!579960 (=> (not res!249666) (not e!350474))))

(assert (=> b!579960 (= res!249666 (not ((_ is Nil!5691) lt!245587)))))

(declare-fun b!579962 () Bool)

(assert (=> b!579962 (= e!350474 (isPrefix!739 (tail!757 lt!245578) (tail!757 lt!245587)))))

(assert (= (and d!203842 (not res!249669)) b!579960))

(assert (= (and b!579960 res!249666) b!579961))

(assert (= (and b!579961 res!249667) b!579962))

(assert (= (and d!203842 (not res!249668)) b!579963))

(declare-fun m!838587 () Bool)

(assert (=> b!579961 m!838587))

(declare-fun m!838589 () Bool)

(assert (=> b!579961 m!838589))

(declare-fun m!838591 () Bool)

(assert (=> b!579963 m!838591))

(assert (=> b!579963 m!837993))

(declare-fun m!838593 () Bool)

(assert (=> b!579962 m!838593))

(declare-fun m!838595 () Bool)

(assert (=> b!579962 m!838595))

(assert (=> b!579962 m!838593))

(assert (=> b!579962 m!838595))

(declare-fun m!838597 () Bool)

(assert (=> b!579962 m!838597))

(assert (=> b!579445 d!203842))

(declare-fun d!203844 () Bool)

(declare-fun e!350476 () Bool)

(assert (=> d!203844 e!350476))

(declare-fun res!249670 () Bool)

(assert (=> d!203844 (=> (not res!249670) (not e!350476))))

(assert (=> d!203844 (= res!249670 (semiInverseModEq!428 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))))))

(declare-fun Unit!10323 () Unit!10309)

(assert (=> d!203844 (= (lemmaInv!241 (transformation!1105 (rule!1859 token!491))) Unit!10323)))

(declare-fun b!579964 () Bool)

(assert (=> b!579964 (= e!350476 (equivClasses!411 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))))))

(assert (= (and d!203844 res!249670) b!579964))

(declare-fun m!838599 () Bool)

(assert (=> d!203844 m!838599))

(declare-fun m!838601 () Bool)

(assert (=> b!579964 m!838601))

(assert (=> b!579445 d!203844))

(declare-fun d!203846 () Bool)

(assert (=> d!203846 (= (size!4530 token!491) (size!4531 (originalCharacters!1144 token!491)))))

(declare-fun Unit!10324 () Unit!10309)

(assert (=> d!203846 (= (lemmaCharactersSize!172 token!491) Unit!10324)))

(declare-fun bs!69655 () Bool)

(assert (= bs!69655 d!203846))

(assert (=> bs!69655 m!837927))

(assert (=> b!579445 d!203846))

(declare-fun b!579966 () Bool)

(declare-fun res!249672 () Bool)

(declare-fun e!350478 () Bool)

(assert (=> b!579966 (=> (not res!249672) (not e!350478))))

(assert (=> b!579966 (= res!249672 (= (head!1227 lt!245601) (head!1227 lt!245584)))))

(declare-fun d!203848 () Bool)

(declare-fun e!350479 () Bool)

(assert (=> d!203848 e!350479))

(declare-fun res!249673 () Bool)

(assert (=> d!203848 (=> res!249673 e!350479)))

(declare-fun lt!245792 () Bool)

(assert (=> d!203848 (= res!249673 (not lt!245792))))

(declare-fun e!350477 () Bool)

(assert (=> d!203848 (= lt!245792 e!350477)))

(declare-fun res!249674 () Bool)

(assert (=> d!203848 (=> res!249674 e!350477)))

(assert (=> d!203848 (= res!249674 ((_ is Nil!5691) lt!245601))))

(assert (=> d!203848 (= (isPrefix!739 lt!245601 lt!245584) lt!245792)))

(declare-fun b!579968 () Bool)

(assert (=> b!579968 (= e!350479 (>= (size!4531 lt!245584) (size!4531 lt!245601)))))

(declare-fun b!579965 () Bool)

(assert (=> b!579965 (= e!350477 e!350478)))

(declare-fun res!249671 () Bool)

(assert (=> b!579965 (=> (not res!249671) (not e!350478))))

(assert (=> b!579965 (= res!249671 (not ((_ is Nil!5691) lt!245584)))))

(declare-fun b!579967 () Bool)

(assert (=> b!579967 (= e!350478 (isPrefix!739 (tail!757 lt!245601) (tail!757 lt!245584)))))

(assert (= (and d!203848 (not res!249674)) b!579965))

(assert (= (and b!579965 res!249671) b!579966))

(assert (= (and b!579966 res!249672) b!579967))

(assert (= (and d!203848 (not res!249673)) b!579968))

(declare-fun m!838603 () Bool)

(assert (=> b!579966 m!838603))

(assert (=> b!579966 m!838555))

(assert (=> b!579968 m!838557))

(assert (=> b!579968 m!837991))

(declare-fun m!838605 () Bool)

(assert (=> b!579967 m!838605))

(assert (=> b!579967 m!838559))

(assert (=> b!579967 m!838605))

(assert (=> b!579967 m!838559))

(declare-fun m!838607 () Bool)

(assert (=> b!579967 m!838607))

(assert (=> b!579445 d!203848))

(declare-fun d!203850 () Bool)

(assert (=> d!203850 (= (isDefined!1267 lt!245592) (not (isEmpty!4112 lt!245592)))))

(declare-fun bs!69656 () Bool)

(assert (= bs!69656 d!203850))

(declare-fun m!838609 () Bool)

(assert (=> bs!69656 m!838609))

(assert (=> b!579444 d!203850))

(declare-fun d!203852 () Bool)

(assert (=> d!203852 (= (isEmpty!4109 rules!3103) ((_ is Nil!5692) rules!3103))))

(assert (=> b!579423 d!203852))

(declare-fun d!203854 () Bool)

(assert (=> d!203854 (= (inv!7164 (tag!1367 (rule!1859 token!491))) (= (mod (str.len (value!36333 (tag!1367 (rule!1859 token!491)))) 2) 0))))

(assert (=> b!579443 d!203854))

(declare-fun d!203856 () Bool)

(declare-fun res!249675 () Bool)

(declare-fun e!350480 () Bool)

(assert (=> d!203856 (=> (not res!249675) (not e!350480))))

(assert (=> d!203856 (= res!249675 (semiInverseModEq!428 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))))))

(assert (=> d!203856 (= (inv!7167 (transformation!1105 (rule!1859 token!491))) e!350480)))

(declare-fun b!579969 () Bool)

(assert (=> b!579969 (= e!350480 (equivClasses!411 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))))))

(assert (= (and d!203856 res!249675) b!579969))

(assert (=> d!203856 m!838599))

(assert (=> b!579969 m!838601))

(assert (=> b!579443 d!203856))

(declare-fun d!203858 () Bool)

(assert (=> d!203858 (= (get!2172 lt!245582) (v!16320 lt!245582))))

(assert (=> b!579463 d!203858))

(declare-fun d!203860 () Bool)

(declare-fun res!249680 () Bool)

(declare-fun e!350483 () Bool)

(assert (=> d!203860 (=> (not res!249680) (not e!350483))))

(assert (=> d!203860 (= res!249680 (not (isEmpty!4110 (originalCharacters!1144 token!491))))))

(assert (=> d!203860 (= (inv!7168 token!491) e!350483)))

(declare-fun b!579974 () Bool)

(declare-fun res!249681 () Bool)

(assert (=> b!579974 (=> (not res!249681) (not e!350483))))

(assert (=> b!579974 (= res!249681 (= (originalCharacters!1144 token!491) (list!2367 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491)))))))

(declare-fun b!579975 () Bool)

(assert (=> b!579975 (= e!350483 (= (size!4530 token!491) (size!4531 (originalCharacters!1144 token!491))))))

(assert (= (and d!203860 res!249680) b!579974))

(assert (= (and b!579974 res!249681) b!579975))

(declare-fun b_lambda!22773 () Bool)

(assert (=> (not b_lambda!22773) (not b!579974)))

(declare-fun t!77871 () Bool)

(declare-fun tb!50719 () Bool)

(assert (=> (and b!579433 (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) t!77871) tb!50719))

(declare-fun b!579976 () Bool)

(declare-fun e!350484 () Bool)

(declare-fun tp!181280 () Bool)

(assert (=> b!579976 (= e!350484 (and (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491)))) tp!181280))))

(declare-fun result!56784 () Bool)

(assert (=> tb!50719 (= result!56784 (and (inv!7172 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491))) e!350484))))

(assert (= tb!50719 b!579976))

(declare-fun m!838611 () Bool)

(assert (=> b!579976 m!838611))

(declare-fun m!838613 () Bool)

(assert (=> tb!50719 m!838613))

(assert (=> b!579974 t!77871))

(declare-fun b_and!56963 () Bool)

(assert (= b_and!56951 (and (=> t!77871 result!56784) b_and!56963)))

(declare-fun tb!50721 () Bool)

(declare-fun t!77873 () Bool)

(assert (=> (and b!579460 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) t!77873) tb!50721))

(declare-fun result!56786 () Bool)

(assert (= result!56786 result!56784))

(assert (=> b!579974 t!77873))

(declare-fun b_and!56965 () Bool)

(assert (= b_and!56953 (and (=> t!77873 result!56786) b_and!56965)))

(declare-fun m!838615 () Bool)

(assert (=> d!203860 m!838615))

(declare-fun m!838617 () Bool)

(assert (=> b!579974 m!838617))

(assert (=> b!579974 m!838617))

(declare-fun m!838619 () Bool)

(assert (=> b!579974 m!838619))

(assert (=> b!579975 m!837927))

(assert (=> start!53636 d!203860))

(declare-fun d!203862 () Bool)

(assert (=> d!203862 (= (isDefined!1267 lt!245582) (not (isEmpty!4112 lt!245582)))))

(declare-fun bs!69657 () Bool)

(assert (= bs!69657 d!203862))

(declare-fun m!838621 () Bool)

(assert (=> bs!69657 m!838621))

(assert (=> b!579462 d!203862))

(declare-fun b!579977 () Bool)

(declare-fun e!350487 () Bool)

(declare-fun e!350485 () Bool)

(assert (=> b!579977 (= e!350487 e!350485)))

(declare-fun res!249682 () Bool)

(assert (=> b!579977 (=> (not res!249682) (not e!350485))))

(declare-fun lt!245797 () Option!1456)

(assert (=> b!579977 (= res!249682 (isDefined!1267 lt!245797))))

(declare-fun b!579978 () Bool)

(declare-fun e!350486 () Option!1456)

(declare-fun lt!245796 () Option!1456)

(declare-fun lt!245793 () Option!1456)

(assert (=> b!579978 (= e!350486 (ite (and ((_ is None!1455) lt!245796) ((_ is None!1455) lt!245793)) None!1455 (ite ((_ is None!1455) lt!245793) lt!245796 (ite ((_ is None!1455) lt!245796) lt!245793 (ite (>= (size!4530 (_1!3600 (v!16320 lt!245796))) (size!4530 (_1!3600 (v!16320 lt!245793)))) lt!245796 lt!245793)))))))

(declare-fun call!40001 () Option!1456)

(assert (=> b!579978 (= lt!245796 call!40001)))

(assert (=> b!579978 (= lt!245793 (maxPrefix!689 thiss!22590 (t!77821 rules!3103) lt!245595))))

(declare-fun b!579979 () Bool)

(declare-fun res!249684 () Bool)

(assert (=> b!579979 (=> (not res!249684) (not e!350485))))

(assert (=> b!579979 (= res!249684 (matchR!586 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797))))))))

(declare-fun d!203864 () Bool)

(assert (=> d!203864 e!350487))

(declare-fun res!249685 () Bool)

(assert (=> d!203864 (=> res!249685 e!350487)))

(assert (=> d!203864 (= res!249685 (isEmpty!4112 lt!245797))))

(assert (=> d!203864 (= lt!245797 e!350486)))

(declare-fun c!108537 () Bool)

(assert (=> d!203864 (= c!108537 (and ((_ is Cons!5692) rules!3103) ((_ is Nil!5692) (t!77821 rules!3103))))))

(declare-fun lt!245794 () Unit!10309)

(declare-fun lt!245795 () Unit!10309)

(assert (=> d!203864 (= lt!245794 lt!245795)))

(assert (=> d!203864 (isPrefix!739 lt!245595 lt!245595)))

(assert (=> d!203864 (= lt!245795 (lemmaIsPrefixRefl!477 lt!245595 lt!245595))))

(assert (=> d!203864 (rulesValidInductive!398 thiss!22590 rules!3103)))

(assert (=> d!203864 (= (maxPrefix!689 thiss!22590 rules!3103 lt!245595) lt!245797)))

(declare-fun bm!39996 () Bool)

(assert (=> bm!39996 (= call!40001 (maxPrefixOneRule!390 thiss!22590 (h!11093 rules!3103) lt!245595))))

(declare-fun b!579980 () Bool)

(assert (=> b!579980 (= e!350486 call!40001)))

(declare-fun b!579981 () Bool)

(declare-fun res!249687 () Bool)

(assert (=> b!579981 (=> (not res!249687) (not e!350485))))

(assert (=> b!579981 (= res!249687 (= (++!1593 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797)))) (_2!3600 (get!2172 lt!245797))) lt!245595))))

(declare-fun b!579982 () Bool)

(declare-fun res!249688 () Bool)

(assert (=> b!579982 (=> (not res!249688) (not e!350485))))

(assert (=> b!579982 (= res!249688 (< (size!4531 (_2!3600 (get!2172 lt!245797))) (size!4531 lt!245595)))))

(declare-fun b!579983 () Bool)

(declare-fun res!249683 () Bool)

(assert (=> b!579983 (=> (not res!249683) (not e!350485))))

(assert (=> b!579983 (= res!249683 (= (value!36359 (_1!3600 (get!2172 lt!245797))) (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245797)))))))))

(declare-fun b!579984 () Bool)

(assert (=> b!579984 (= e!350485 (contains!1337 rules!3103 (rule!1859 (_1!3600 (get!2172 lt!245797)))))))

(declare-fun b!579985 () Bool)

(declare-fun res!249686 () Bool)

(assert (=> b!579985 (=> (not res!249686) (not e!350485))))

(assert (=> b!579985 (= res!249686 (= (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797)))) (originalCharacters!1144 (_1!3600 (get!2172 lt!245797)))))))

(assert (= (and d!203864 c!108537) b!579980))

(assert (= (and d!203864 (not c!108537)) b!579978))

(assert (= (or b!579980 b!579978) bm!39996))

(assert (= (and d!203864 (not res!249685)) b!579977))

(assert (= (and b!579977 res!249682) b!579985))

(assert (= (and b!579985 res!249686) b!579982))

(assert (= (and b!579982 res!249688) b!579981))

(assert (= (and b!579981 res!249687) b!579983))

(assert (= (and b!579983 res!249683) b!579979))

(assert (= (and b!579979 res!249684) b!579984))

(declare-fun m!838623 () Bool)

(assert (=> b!579982 m!838623))

(declare-fun m!838625 () Bool)

(assert (=> b!579982 m!838625))

(assert (=> b!579982 m!838545))

(declare-fun m!838627 () Bool)

(assert (=> d!203864 m!838627))

(declare-fun m!838629 () Bool)

(assert (=> d!203864 m!838629))

(declare-fun m!838631 () Bool)

(assert (=> d!203864 m!838631))

(assert (=> d!203864 m!838201))

(assert (=> b!579985 m!838623))

(declare-fun m!838633 () Bool)

(assert (=> b!579985 m!838633))

(assert (=> b!579985 m!838633))

(declare-fun m!838635 () Bool)

(assert (=> b!579985 m!838635))

(declare-fun m!838637 () Bool)

(assert (=> bm!39996 m!838637))

(assert (=> b!579983 m!838623))

(declare-fun m!838639 () Bool)

(assert (=> b!579983 m!838639))

(assert (=> b!579983 m!838639))

(declare-fun m!838641 () Bool)

(assert (=> b!579983 m!838641))

(declare-fun m!838643 () Bool)

(assert (=> b!579977 m!838643))

(assert (=> b!579984 m!838623))

(declare-fun m!838645 () Bool)

(assert (=> b!579984 m!838645))

(assert (=> b!579981 m!838623))

(assert (=> b!579981 m!838633))

(assert (=> b!579981 m!838633))

(assert (=> b!579981 m!838635))

(assert (=> b!579981 m!838635))

(declare-fun m!838647 () Bool)

(assert (=> b!579981 m!838647))

(declare-fun m!838649 () Bool)

(assert (=> b!579978 m!838649))

(assert (=> b!579979 m!838623))

(assert (=> b!579979 m!838633))

(assert (=> b!579979 m!838633))

(assert (=> b!579979 m!838635))

(assert (=> b!579979 m!838635))

(declare-fun m!838651 () Bool)

(assert (=> b!579979 m!838651))

(assert (=> b!579462 d!203864))

(declare-fun b!579989 () Bool)

(declare-fun e!350489 () Bool)

(declare-fun lt!245798 () List!5701)

(assert (=> b!579989 (= e!350489 (or (not (= suffix!1342 Nil!5691)) (= lt!245798 input!2705)))))

(declare-fun d!203866 () Bool)

(assert (=> d!203866 e!350489))

(declare-fun res!249689 () Bool)

(assert (=> d!203866 (=> (not res!249689) (not e!350489))))

(assert (=> d!203866 (= res!249689 (= (content!1010 lt!245798) ((_ map or) (content!1010 input!2705) (content!1010 suffix!1342))))))

(declare-fun e!350488 () List!5701)

(assert (=> d!203866 (= lt!245798 e!350488)))

(declare-fun c!108538 () Bool)

(assert (=> d!203866 (= c!108538 ((_ is Nil!5691) input!2705))))

(assert (=> d!203866 (= (++!1593 input!2705 suffix!1342) lt!245798)))

(declare-fun b!579988 () Bool)

(declare-fun res!249690 () Bool)

(assert (=> b!579988 (=> (not res!249690) (not e!350489))))

(assert (=> b!579988 (= res!249690 (= (size!4531 lt!245798) (+ (size!4531 input!2705) (size!4531 suffix!1342))))))

(declare-fun b!579986 () Bool)

(assert (=> b!579986 (= e!350488 suffix!1342)))

(declare-fun b!579987 () Bool)

(assert (=> b!579987 (= e!350488 (Cons!5691 (h!11092 input!2705) (++!1593 (t!77820 input!2705) suffix!1342)))))

(assert (= (and d!203866 c!108538) b!579986))

(assert (= (and d!203866 (not c!108538)) b!579987))

(assert (= (and d!203866 res!249689) b!579988))

(assert (= (and b!579988 res!249690) b!579989))

(declare-fun m!838653 () Bool)

(assert (=> d!203866 m!838653))

(declare-fun m!838655 () Bool)

(assert (=> d!203866 m!838655))

(declare-fun m!838657 () Bool)

(assert (=> d!203866 m!838657))

(declare-fun m!838659 () Bool)

(assert (=> b!579988 m!838659))

(assert (=> b!579988 m!838197))

(declare-fun m!838661 () Bool)

(assert (=> b!579988 m!838661))

(declare-fun m!838663 () Bool)

(assert (=> b!579987 m!838663))

(assert (=> b!579462 d!203866))

(declare-fun lt!245799 () List!5701)

(declare-fun e!350491 () Bool)

(declare-fun b!579993 () Bool)

(assert (=> b!579993 (= e!350491 (or (not (= suffix!1342 Nil!5691)) (= lt!245799 lt!245601)))))

(declare-fun d!203868 () Bool)

(assert (=> d!203868 e!350491))

(declare-fun res!249691 () Bool)

(assert (=> d!203868 (=> (not res!249691) (not e!350491))))

(assert (=> d!203868 (= res!249691 (= (content!1010 lt!245799) ((_ map or) (content!1010 lt!245601) (content!1010 suffix!1342))))))

(declare-fun e!350490 () List!5701)

(assert (=> d!203868 (= lt!245799 e!350490)))

(declare-fun c!108539 () Bool)

(assert (=> d!203868 (= c!108539 ((_ is Nil!5691) lt!245601))))

(assert (=> d!203868 (= (++!1593 lt!245601 suffix!1342) lt!245799)))

(declare-fun b!579992 () Bool)

(declare-fun res!249692 () Bool)

(assert (=> b!579992 (=> (not res!249692) (not e!350491))))

(assert (=> b!579992 (= res!249692 (= (size!4531 lt!245799) (+ (size!4531 lt!245601) (size!4531 suffix!1342))))))

(declare-fun b!579990 () Bool)

(assert (=> b!579990 (= e!350490 suffix!1342)))

(declare-fun b!579991 () Bool)

(assert (=> b!579991 (= e!350490 (Cons!5691 (h!11092 lt!245601) (++!1593 (t!77820 lt!245601) suffix!1342)))))

(assert (= (and d!203868 c!108539) b!579990))

(assert (= (and d!203868 (not c!108539)) b!579991))

(assert (= (and d!203868 res!249691) b!579992))

(assert (= (and b!579992 res!249692) b!579993))

(declare-fun m!838665 () Bool)

(assert (=> d!203868 m!838665))

(declare-fun m!838667 () Bool)

(assert (=> d!203868 m!838667))

(assert (=> d!203868 m!838657))

(declare-fun m!838669 () Bool)

(assert (=> b!579992 m!838669))

(assert (=> b!579992 m!837991))

(assert (=> b!579992 m!838661))

(declare-fun m!838671 () Bool)

(assert (=> b!579991 m!838671))

(assert (=> b!579441 d!203868))

(declare-fun b!580012 () Bool)

(declare-fun res!249709 () Bool)

(declare-fun e!350502 () Bool)

(assert (=> b!580012 (=> (not res!249709) (not e!350502))))

(declare-fun lt!245813 () Option!1456)

(assert (=> b!580012 (= res!249709 (= (value!36359 (_1!3600 (get!2172 lt!245813))) (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245813)))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245813)))))))))

(declare-fun b!580013 () Bool)

(declare-fun res!249710 () Bool)

(assert (=> b!580013 (=> (not res!249710) (not e!350502))))

(assert (=> b!580013 (= res!249710 (= (rule!1859 (_1!3600 (get!2172 lt!245813))) (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(declare-fun b!580014 () Bool)

(declare-fun e!350500 () Bool)

(assert (=> b!580014 (= e!350500 e!350502)))

(declare-fun res!249707 () Bool)

(assert (=> b!580014 (=> (not res!249707) (not e!350502))))

(assert (=> b!580014 (= res!249707 (matchR!586 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813))))))))

(declare-fun b!580015 () Bool)

(declare-fun e!350501 () Bool)

(declare-datatypes ((tuple2!6676 0))(
  ( (tuple2!6677 (_1!3602 List!5701) (_2!3602 List!5701)) )
))
(declare-fun findLongestMatchInner!175 (Regex!1439 List!5701 Int List!5701 List!5701 Int) tuple2!6676)

(assert (=> b!580015 (= e!350501 (matchR!586 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705)))))))

(declare-fun b!580016 () Bool)

(declare-fun res!249712 () Bool)

(assert (=> b!580016 (=> (not res!249712) (not e!350502))))

(assert (=> b!580016 (= res!249712 (= (++!1593 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813)))) (_2!3600 (get!2172 lt!245813))) input!2705))))

(declare-fun b!580017 () Bool)

(declare-fun res!249711 () Bool)

(assert (=> b!580017 (=> (not res!249711) (not e!350502))))

(assert (=> b!580017 (= res!249711 (< (size!4531 (_2!3600 (get!2172 lt!245813))) (size!4531 input!2705)))))

(declare-fun b!580019 () Bool)

(assert (=> b!580019 (= e!350502 (= (size!4530 (_1!3600 (get!2172 lt!245813))) (size!4531 (originalCharacters!1144 (_1!3600 (get!2172 lt!245813))))))))

(declare-fun b!580020 () Bool)

(declare-fun e!350503 () Option!1456)

(declare-fun lt!245810 () tuple2!6676)

(declare-fun size!4533 (BalanceConc!3652) Int)

(assert (=> b!580020 (= e!350503 (Some!1455 (tuple2!6673 (Token!1947 (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (seqFromList!1293 (_1!3602 lt!245810))) (rule!1859 (_1!3600 (v!16320 lt!245592))) (size!4533 (seqFromList!1293 (_1!3602 lt!245810))) (_1!3602 lt!245810)) (_2!3602 lt!245810))))))

(declare-fun lt!245811 () Unit!10309)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!159 (Regex!1439 List!5701) Unit!10309)

(assert (=> b!580020 (= lt!245811 (longestMatchIsAcceptedByMatchOrIsEmpty!159 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) input!2705))))

(declare-fun res!249713 () Bool)

(assert (=> b!580020 (= res!249713 (isEmpty!4110 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705)))))))

(assert (=> b!580020 (=> res!249713 e!350501)))

(assert (=> b!580020 e!350501))

(declare-fun lt!245812 () Unit!10309)

(assert (=> b!580020 (= lt!245812 lt!245811)))

(declare-fun lt!245814 () Unit!10309)

(assert (=> b!580020 (= lt!245814 (lemmaSemiInverse!208 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (seqFromList!1293 (_1!3602 lt!245810))))))

(declare-fun b!580018 () Bool)

(assert (=> b!580018 (= e!350503 None!1455)))

(declare-fun d!203870 () Bool)

(assert (=> d!203870 e!350500))

(declare-fun res!249708 () Bool)

(assert (=> d!203870 (=> res!249708 e!350500)))

(assert (=> d!203870 (= res!249708 (isEmpty!4112 lt!245813))))

(assert (=> d!203870 (= lt!245813 e!350503)))

(declare-fun c!108542 () Bool)

(assert (=> d!203870 (= c!108542 (isEmpty!4110 (_1!3602 lt!245810)))))

(declare-fun findLongestMatch!154 (Regex!1439 List!5701) tuple2!6676)

(assert (=> d!203870 (= lt!245810 (findLongestMatch!154 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) input!2705))))

(assert (=> d!203870 (ruleValid!315 thiss!22590 (rule!1859 (_1!3600 (v!16320 lt!245592))))))

(assert (=> d!203870 (= (maxPrefixOneRule!390 thiss!22590 (rule!1859 (_1!3600 (v!16320 lt!245592))) input!2705) lt!245813)))

(assert (= (and d!203870 c!108542) b!580018))

(assert (= (and d!203870 (not c!108542)) b!580020))

(assert (= (and b!580020 (not res!249713)) b!580015))

(assert (= (and d!203870 (not res!249708)) b!580014))

(assert (= (and b!580014 res!249707) b!580016))

(assert (= (and b!580016 res!249712) b!580017))

(assert (= (and b!580017 res!249711) b!580013))

(assert (= (and b!580013 res!249710) b!580012))

(assert (= (and b!580012 res!249709) b!580019))

(declare-fun m!838673 () Bool)

(assert (=> b!580012 m!838673))

(declare-fun m!838675 () Bool)

(assert (=> b!580012 m!838675))

(assert (=> b!580012 m!838675))

(declare-fun m!838677 () Bool)

(assert (=> b!580012 m!838677))

(declare-fun m!838679 () Bool)

(assert (=> b!580020 m!838679))

(declare-fun m!838681 () Bool)

(assert (=> b!580020 m!838681))

(declare-fun m!838683 () Bool)

(assert (=> b!580020 m!838683))

(declare-fun m!838685 () Bool)

(assert (=> b!580020 m!838685))

(declare-fun m!838687 () Bool)

(assert (=> b!580020 m!838687))

(assert (=> b!580020 m!838197))

(declare-fun m!838689 () Bool)

(assert (=> b!580020 m!838689))

(assert (=> b!580020 m!838687))

(assert (=> b!580020 m!838679))

(declare-fun m!838691 () Bool)

(assert (=> b!580020 m!838691))

(assert (=> b!580020 m!838197))

(assert (=> b!580020 m!838679))

(declare-fun m!838693 () Bool)

(assert (=> b!580020 m!838693))

(assert (=> b!580020 m!838679))

(assert (=> b!580017 m!838673))

(declare-fun m!838695 () Bool)

(assert (=> b!580017 m!838695))

(assert (=> b!580017 m!838197))

(assert (=> b!580016 m!838673))

(declare-fun m!838697 () Bool)

(assert (=> b!580016 m!838697))

(assert (=> b!580016 m!838697))

(declare-fun m!838699 () Bool)

(assert (=> b!580016 m!838699))

(assert (=> b!580016 m!838699))

(declare-fun m!838701 () Bool)

(assert (=> b!580016 m!838701))

(assert (=> b!580013 m!838673))

(assert (=> b!580014 m!838673))

(assert (=> b!580014 m!838697))

(assert (=> b!580014 m!838697))

(assert (=> b!580014 m!838699))

(assert (=> b!580014 m!838699))

(declare-fun m!838703 () Bool)

(assert (=> b!580014 m!838703))

(declare-fun m!838705 () Bool)

(assert (=> d!203870 m!838705))

(declare-fun m!838707 () Bool)

(assert (=> d!203870 m!838707))

(declare-fun m!838709 () Bool)

(assert (=> d!203870 m!838709))

(assert (=> d!203870 m!837985))

(assert (=> b!580015 m!838687))

(assert (=> b!580015 m!838197))

(assert (=> b!580015 m!838687))

(assert (=> b!580015 m!838197))

(assert (=> b!580015 m!838689))

(declare-fun m!838711 () Bool)

(assert (=> b!580015 m!838711))

(assert (=> b!580019 m!838673))

(declare-fun m!838713 () Bool)

(assert (=> b!580019 m!838713))

(assert (=> b!579451 d!203870))

(declare-fun d!203872 () Bool)

(assert (=> d!203872 (= (maxPrefixOneRule!390 thiss!22590 (rule!1859 token!491) lt!245595) (Some!1455 (tuple2!6673 (Token!1947 (apply!1370 (transformation!1105 (rule!1859 token!491)) (seqFromList!1293 lt!245601)) (rule!1859 token!491) (size!4531 lt!245601) lt!245601) suffix!1342)))))

(declare-fun lt!245817 () Unit!10309)

(declare-fun choose!4172 (LexerInterface!991 List!5702 List!5701 List!5701 List!5701 Rule!2010) Unit!10309)

(assert (=> d!203872 (= lt!245817 (choose!4172 thiss!22590 rules!3103 lt!245601 lt!245595 suffix!1342 (rule!1859 token!491)))))

(assert (=> d!203872 (not (isEmpty!4109 rules!3103))))

(assert (=> d!203872 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!140 thiss!22590 rules!3103 lt!245601 lt!245595 suffix!1342 (rule!1859 token!491)) lt!245817)))

(declare-fun bs!69658 () Bool)

(assert (= bs!69658 d!203872))

(assert (=> bs!69658 m!837895))

(declare-fun m!838715 () Bool)

(assert (=> bs!69658 m!838715))

(assert (=> bs!69658 m!837891))

(declare-fun m!838717 () Bool)

(assert (=> bs!69658 m!838717))

(assert (=> bs!69658 m!837895))

(assert (=> bs!69658 m!837935))

(assert (=> bs!69658 m!837991))

(assert (=> b!579451 d!203872))

(declare-fun d!203874 () Bool)

(assert (=> d!203874 (= (apply!1370 (transformation!1105 (rule!1859 token!491)) lt!245574) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574))))

(declare-fun b_lambda!22775 () Bool)

(assert (=> (not b_lambda!22775) (not d!203874)))

(declare-fun t!77876 () Bool)

(declare-fun tb!50723 () Bool)

(assert (=> (and b!579433 (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) t!77876) tb!50723))

(declare-fun result!56788 () Bool)

(assert (=> tb!50723 (= result!56788 (inv!21 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574)))))

(declare-fun m!838719 () Bool)

(assert (=> tb!50723 m!838719))

(assert (=> d!203874 t!77876))

(declare-fun b_and!56967 () Bool)

(assert (= b_and!56955 (and (=> t!77876 result!56788) b_and!56967)))

(declare-fun t!77878 () Bool)

(declare-fun tb!50725 () Bool)

(assert (=> (and b!579460 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) t!77878) tb!50725))

(declare-fun result!56790 () Bool)

(assert (= result!56790 result!56788))

(assert (=> d!203874 t!77878))

(declare-fun b_and!56969 () Bool)

(assert (= b_and!56957 (and (=> t!77878 result!56790) b_and!56969)))

(declare-fun m!838721 () Bool)

(assert (=> d!203874 m!838721))

(assert (=> b!579451 d!203874))

(declare-fun b!580021 () Bool)

(declare-fun res!249716 () Bool)

(declare-fun e!350507 () Bool)

(assert (=> b!580021 (=> (not res!249716) (not e!350507))))

(declare-fun lt!245821 () Option!1456)

(assert (=> b!580021 (= res!249716 (= (value!36359 (_1!3600 (get!2172 lt!245821))) (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245821)))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245821)))))))))

(declare-fun b!580022 () Bool)

(declare-fun res!249717 () Bool)

(assert (=> b!580022 (=> (not res!249717) (not e!350507))))

(assert (=> b!580022 (= res!249717 (= (rule!1859 (_1!3600 (get!2172 lt!245821))) (rule!1859 token!491)))))

(declare-fun b!580023 () Bool)

(declare-fun e!350505 () Bool)

(assert (=> b!580023 (= e!350505 e!350507)))

(declare-fun res!249714 () Bool)

(assert (=> b!580023 (=> (not res!249714) (not e!350507))))

(assert (=> b!580023 (= res!249714 (matchR!586 (regex!1105 (rule!1859 token!491)) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821))))))))

(declare-fun b!580024 () Bool)

(declare-fun e!350506 () Bool)

(assert (=> b!580024 (= e!350506 (matchR!586 (regex!1105 (rule!1859 token!491)) (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595)))))))

(declare-fun b!580025 () Bool)

(declare-fun res!249719 () Bool)

(assert (=> b!580025 (=> (not res!249719) (not e!350507))))

(assert (=> b!580025 (= res!249719 (= (++!1593 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821)))) (_2!3600 (get!2172 lt!245821))) lt!245595))))

(declare-fun b!580026 () Bool)

(declare-fun res!249718 () Bool)

(assert (=> b!580026 (=> (not res!249718) (not e!350507))))

(assert (=> b!580026 (= res!249718 (< (size!4531 (_2!3600 (get!2172 lt!245821))) (size!4531 lt!245595)))))

(declare-fun b!580028 () Bool)

(assert (=> b!580028 (= e!350507 (= (size!4530 (_1!3600 (get!2172 lt!245821))) (size!4531 (originalCharacters!1144 (_1!3600 (get!2172 lt!245821))))))))

(declare-fun b!580029 () Bool)

(declare-fun e!350508 () Option!1456)

(declare-fun lt!245818 () tuple2!6676)

(assert (=> b!580029 (= e!350508 (Some!1455 (tuple2!6673 (Token!1947 (apply!1370 (transformation!1105 (rule!1859 token!491)) (seqFromList!1293 (_1!3602 lt!245818))) (rule!1859 token!491) (size!4533 (seqFromList!1293 (_1!3602 lt!245818))) (_1!3602 lt!245818)) (_2!3602 lt!245818))))))

(declare-fun lt!245819 () Unit!10309)

(assert (=> b!580029 (= lt!245819 (longestMatchIsAcceptedByMatchOrIsEmpty!159 (regex!1105 (rule!1859 token!491)) lt!245595))))

(declare-fun res!249720 () Bool)

(assert (=> b!580029 (= res!249720 (isEmpty!4110 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595)))))))

(assert (=> b!580029 (=> res!249720 e!350506)))

(assert (=> b!580029 e!350506))

(declare-fun lt!245820 () Unit!10309)

(assert (=> b!580029 (= lt!245820 lt!245819)))

(declare-fun lt!245822 () Unit!10309)

(assert (=> b!580029 (= lt!245822 (lemmaSemiInverse!208 (transformation!1105 (rule!1859 token!491)) (seqFromList!1293 (_1!3602 lt!245818))))))

(declare-fun b!580027 () Bool)

(assert (=> b!580027 (= e!350508 None!1455)))

(declare-fun d!203876 () Bool)

(assert (=> d!203876 e!350505))

(declare-fun res!249715 () Bool)

(assert (=> d!203876 (=> res!249715 e!350505)))

(assert (=> d!203876 (= res!249715 (isEmpty!4112 lt!245821))))

(assert (=> d!203876 (= lt!245821 e!350508)))

(declare-fun c!108543 () Bool)

(assert (=> d!203876 (= c!108543 (isEmpty!4110 (_1!3602 lt!245818)))))

(assert (=> d!203876 (= lt!245818 (findLongestMatch!154 (regex!1105 (rule!1859 token!491)) lt!245595))))

(assert (=> d!203876 (ruleValid!315 thiss!22590 (rule!1859 token!491))))

(assert (=> d!203876 (= (maxPrefixOneRule!390 thiss!22590 (rule!1859 token!491) lt!245595) lt!245821)))

(assert (= (and d!203876 c!108543) b!580027))

(assert (= (and d!203876 (not c!108543)) b!580029))

(assert (= (and b!580029 (not res!249720)) b!580024))

(assert (= (and d!203876 (not res!249715)) b!580023))

(assert (= (and b!580023 res!249714) b!580025))

(assert (= (and b!580025 res!249719) b!580026))

(assert (= (and b!580026 res!249718) b!580022))

(assert (= (and b!580022 res!249717) b!580021))

(assert (= (and b!580021 res!249716) b!580028))

(declare-fun m!838723 () Bool)

(assert (=> b!580021 m!838723))

(declare-fun m!838725 () Bool)

(assert (=> b!580021 m!838725))

(assert (=> b!580021 m!838725))

(declare-fun m!838727 () Bool)

(assert (=> b!580021 m!838727))

(declare-fun m!838729 () Bool)

(assert (=> b!580029 m!838729))

(declare-fun m!838731 () Bool)

(assert (=> b!580029 m!838731))

(declare-fun m!838733 () Bool)

(assert (=> b!580029 m!838733))

(declare-fun m!838735 () Bool)

(assert (=> b!580029 m!838735))

(assert (=> b!580029 m!838687))

(assert (=> b!580029 m!838545))

(declare-fun m!838737 () Bool)

(assert (=> b!580029 m!838737))

(assert (=> b!580029 m!838687))

(assert (=> b!580029 m!838729))

(declare-fun m!838739 () Bool)

(assert (=> b!580029 m!838739))

(assert (=> b!580029 m!838545))

(assert (=> b!580029 m!838729))

(declare-fun m!838741 () Bool)

(assert (=> b!580029 m!838741))

(assert (=> b!580029 m!838729))

(assert (=> b!580026 m!838723))

(declare-fun m!838743 () Bool)

(assert (=> b!580026 m!838743))

(assert (=> b!580026 m!838545))

(assert (=> b!580025 m!838723))

(declare-fun m!838745 () Bool)

(assert (=> b!580025 m!838745))

(assert (=> b!580025 m!838745))

(declare-fun m!838747 () Bool)

(assert (=> b!580025 m!838747))

(assert (=> b!580025 m!838747))

(declare-fun m!838749 () Bool)

(assert (=> b!580025 m!838749))

(assert (=> b!580022 m!838723))

(assert (=> b!580023 m!838723))

(assert (=> b!580023 m!838745))

(assert (=> b!580023 m!838745))

(assert (=> b!580023 m!838747))

(assert (=> b!580023 m!838747))

(declare-fun m!838751 () Bool)

(assert (=> b!580023 m!838751))

(declare-fun m!838753 () Bool)

(assert (=> d!203876 m!838753))

(declare-fun m!838755 () Bool)

(assert (=> d!203876 m!838755))

(declare-fun m!838757 () Bool)

(assert (=> d!203876 m!838757))

(assert (=> d!203876 m!837961))

(assert (=> b!580024 m!838687))

(assert (=> b!580024 m!838545))

(assert (=> b!580024 m!838687))

(assert (=> b!580024 m!838545))

(assert (=> b!580024 m!838737))

(declare-fun m!838759 () Bool)

(assert (=> b!580024 m!838759))

(assert (=> b!580028 m!838723))

(declare-fun m!838761 () Bool)

(assert (=> b!580028 m!838761))

(assert (=> b!579451 d!203876))

(assert (=> b!579451 d!203686))

(declare-fun bs!69659 () Bool)

(declare-fun d!203878 () Bool)

(assert (= bs!69659 (and d!203878 d!203686)))

(declare-fun lambda!15766 () Int)

(assert (=> bs!69659 (= (and (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (= lambda!15766 lambda!15765))))

(declare-fun b!580030 () Bool)

(declare-fun e!350509 () Bool)

(assert (=> b!580030 (= e!350509 true)))

(assert (=> d!203878 e!350509))

(assert (= d!203878 b!580030))

(assert (=> b!580030 (< (dynLambda!3315 order!4653 (toValue!1968 (transformation!1105 (rule!1859 token!491)))) (dynLambda!3316 order!4655 lambda!15766))))

(assert (=> b!580030 (< (dynLambda!3317 order!4657 (toChars!1827 (transformation!1105 (rule!1859 token!491)))) (dynLambda!3316 order!4655 lambda!15766))))

(assert (=> d!203878 (= (list!2367 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574))) (list!2367 lt!245574))))

(declare-fun lt!245823 () Unit!10309)

(assert (=> d!203878 (= lt!245823 (ForallOf!112 lambda!15766 lt!245574))))

(assert (=> d!203878 (= (lemmaSemiInverse!208 (transformation!1105 (rule!1859 token!491)) lt!245574) lt!245823)))

(declare-fun b_lambda!22777 () Bool)

(assert (=> (not b_lambda!22777) (not d!203878)))

(declare-fun t!77880 () Bool)

(declare-fun tb!50727 () Bool)

(assert (=> (and b!579433 (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) t!77880) tb!50727))

(declare-fun b!580031 () Bool)

(declare-fun tp!181281 () Bool)

(declare-fun e!350510 () Bool)

(assert (=> b!580031 (= e!350510 (and (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574)))) tp!181281))))

(declare-fun result!56792 () Bool)

(assert (=> tb!50727 (= result!56792 (and (inv!7172 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574))) e!350510))))

(assert (= tb!50727 b!580031))

(declare-fun m!838763 () Bool)

(assert (=> b!580031 m!838763))

(declare-fun m!838765 () Bool)

(assert (=> tb!50727 m!838765))

(assert (=> d!203878 t!77880))

(declare-fun b_and!56971 () Bool)

(assert (= b_and!56963 (and (=> t!77880 result!56792) b_and!56971)))

(declare-fun t!77882 () Bool)

(declare-fun tb!50729 () Bool)

(assert (=> (and b!579460 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) t!77882) tb!50729))

(declare-fun result!56794 () Bool)

(assert (= result!56794 result!56792))

(assert (=> d!203878 t!77882))

(declare-fun b_and!56973 () Bool)

(assert (= b_and!56965 (and (=> t!77882 result!56794) b_and!56973)))

(declare-fun b_lambda!22779 () Bool)

(assert (=> (not b_lambda!22779) (not d!203878)))

(assert (=> d!203878 t!77876))

(declare-fun b_and!56975 () Bool)

(assert (= b_and!56967 (and (=> t!77876 result!56788) b_and!56975)))

(assert (=> d!203878 t!77878))

(declare-fun b_and!56977 () Bool)

(assert (= b_and!56969 (and (=> t!77878 result!56790) b_and!56977)))

(assert (=> d!203878 m!838721))

(declare-fun m!838767 () Bool)

(assert (=> d!203878 m!838767))

(declare-fun m!838769 () Bool)

(assert (=> d!203878 m!838769))

(declare-fun m!838771 () Bool)

(assert (=> d!203878 m!838771))

(declare-fun m!838773 () Bool)

(assert (=> d!203878 m!838773))

(assert (=> d!203878 m!838721))

(assert (=> d!203878 m!838771))

(assert (=> b!579451 d!203878))

(declare-fun d!203880 () Bool)

(assert (=> d!203880 (= (seqFromList!1293 lt!245601) (fromListB!565 lt!245601))))

(declare-fun bs!69660 () Bool)

(assert (= bs!69660 d!203880))

(declare-fun m!838775 () Bool)

(assert (=> bs!69660 m!838775))

(assert (=> b!579451 d!203880))

(declare-fun d!203882 () Bool)

(assert (=> d!203882 (= suffix!1342 lt!245594)))

(declare-fun lt!245824 () Unit!10309)

(assert (=> d!203882 (= lt!245824 (choose!4166 lt!245601 suffix!1342 lt!245601 lt!245594 lt!245595))))

(assert (=> d!203882 (isPrefix!739 lt!245601 lt!245595)))

(assert (=> d!203882 (= (lemmaSamePrefixThenSameSuffix!462 lt!245601 suffix!1342 lt!245601 lt!245594 lt!245595) lt!245824)))

(declare-fun bs!69661 () Bool)

(assert (= bs!69661 d!203882))

(declare-fun m!838777 () Bool)

(assert (=> bs!69661 m!838777))

(declare-fun m!838779 () Bool)

(assert (=> bs!69661 m!838779))

(assert (=> b!579451 d!203882))

(declare-fun d!203884 () Bool)

(assert (=> d!203884 (= (maxPrefixOneRule!390 thiss!22590 (rule!1859 (_1!3600 (v!16320 lt!245592))) input!2705) (Some!1455 (tuple2!6673 (Token!1947 (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (seqFromList!1293 lt!245578)) (rule!1859 (_1!3600 (v!16320 lt!245592))) (size!4531 lt!245578) lt!245578) (_2!3600 (v!16320 lt!245592)))))))

(declare-fun lt!245825 () Unit!10309)

(assert (=> d!203884 (= lt!245825 (choose!4172 thiss!22590 rules!3103 lt!245578 input!2705 (_2!3600 (v!16320 lt!245592)) (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(assert (=> d!203884 (not (isEmpty!4109 rules!3103))))

(assert (=> d!203884 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!140 thiss!22590 rules!3103 lt!245578 input!2705 (_2!3600 (v!16320 lt!245592)) (rule!1859 (_1!3600 (v!16320 lt!245592)))) lt!245825)))

(declare-fun bs!69662 () Bool)

(assert (= bs!69662 d!203884))

(assert (=> bs!69662 m!837979))

(declare-fun m!838781 () Bool)

(assert (=> bs!69662 m!838781))

(assert (=> bs!69662 m!837887))

(declare-fun m!838783 () Bool)

(assert (=> bs!69662 m!838783))

(assert (=> bs!69662 m!837979))

(assert (=> bs!69662 m!837935))

(assert (=> bs!69662 m!837993))

(assert (=> b!579451 d!203884))

(declare-fun d!203886 () Bool)

(declare-fun lt!245826 () List!5701)

(assert (=> d!203886 (= (++!1593 lt!245601 lt!245826) lt!245595)))

(declare-fun e!350511 () List!5701)

(assert (=> d!203886 (= lt!245826 e!350511)))

(declare-fun c!108544 () Bool)

(assert (=> d!203886 (= c!108544 ((_ is Cons!5691) lt!245601))))

(assert (=> d!203886 (>= (size!4531 lt!245595) (size!4531 lt!245601))))

(assert (=> d!203886 (= (getSuffix!258 lt!245595 lt!245601) lt!245826)))

(declare-fun b!580032 () Bool)

(assert (=> b!580032 (= e!350511 (getSuffix!258 (tail!757 lt!245595) (t!77820 lt!245601)))))

(declare-fun b!580033 () Bool)

(assert (=> b!580033 (= e!350511 lt!245595)))

(assert (= (and d!203886 c!108544) b!580032))

(assert (= (and d!203886 (not c!108544)) b!580033))

(declare-fun m!838785 () Bool)

(assert (=> d!203886 m!838785))

(assert (=> d!203886 m!838545))

(assert (=> d!203886 m!837991))

(assert (=> b!580032 m!838547))

(assert (=> b!580032 m!838547))

(declare-fun m!838787 () Bool)

(assert (=> b!580032 m!838787))

(assert (=> b!579451 d!203886))

(declare-fun d!203888 () Bool)

(assert (=> d!203888 (= (list!2367 (charsOf!734 token!491)) (list!2369 (c!108452 (charsOf!734 token!491))))))

(declare-fun bs!69663 () Bool)

(assert (= bs!69663 d!203888))

(declare-fun m!838789 () Bool)

(assert (=> bs!69663 m!838789))

(assert (=> b!579450 d!203888))

(declare-fun d!203890 () Bool)

(declare-fun lt!245827 () BalanceConc!3652)

(assert (=> d!203890 (= (list!2367 lt!245827) (originalCharacters!1144 token!491))))

(assert (=> d!203890 (= lt!245827 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491)))))

(assert (=> d!203890 (= (charsOf!734 token!491) lt!245827)))

(declare-fun b_lambda!22781 () Bool)

(assert (=> (not b_lambda!22781) (not d!203890)))

(assert (=> d!203890 t!77871))

(declare-fun b_and!56979 () Bool)

(assert (= b_and!56971 (and (=> t!77871 result!56784) b_and!56979)))

(assert (=> d!203890 t!77873))

(declare-fun b_and!56981 () Bool)

(assert (= b_and!56973 (and (=> t!77873 result!56786) b_and!56981)))

(declare-fun m!838791 () Bool)

(assert (=> d!203890 m!838791))

(assert (=> d!203890 m!838617))

(assert (=> b!579450 d!203890))

(declare-fun b!580045 () Bool)

(declare-fun e!350518 () Int)

(assert (=> b!580045 (= e!350518 (- 1))))

(declare-fun b!580042 () Bool)

(declare-fun e!350517 () Int)

(assert (=> b!580042 (= e!350517 0)))

(declare-fun b!580044 () Bool)

(assert (=> b!580044 (= e!350518 (+ 1 (getIndex!44 (t!77821 rules!3103) (rule!1859 token!491))))))

(declare-fun b!580043 () Bool)

(assert (=> b!580043 (= e!350517 e!350518)))

(declare-fun c!108549 () Bool)

(assert (=> b!580043 (= c!108549 (and ((_ is Cons!5692) rules!3103) (not (= (h!11093 rules!3103) (rule!1859 token!491)))))))

(declare-fun d!203892 () Bool)

(declare-fun lt!245830 () Int)

(assert (=> d!203892 (>= lt!245830 0)))

(assert (=> d!203892 (= lt!245830 e!350517)))

(declare-fun c!108550 () Bool)

(assert (=> d!203892 (= c!108550 (and ((_ is Cons!5692) rules!3103) (= (h!11093 rules!3103) (rule!1859 token!491))))))

(assert (=> d!203892 (contains!1337 rules!3103 (rule!1859 token!491))))

(assert (=> d!203892 (= (getIndex!44 rules!3103 (rule!1859 token!491)) lt!245830)))

(assert (= (and d!203892 c!108550) b!580042))

(assert (= (and d!203892 (not c!108550)) b!580043))

(assert (= (and b!580043 c!108549) b!580044))

(assert (= (and b!580043 (not c!108549)) b!580045))

(declare-fun m!838793 () Bool)

(assert (=> b!580044 m!838793))

(assert (=> d!203892 m!838009))

(assert (=> b!579429 d!203892))

(declare-fun b!580049 () Bool)

(declare-fun e!350520 () Int)

(assert (=> b!580049 (= e!350520 (- 1))))

(declare-fun b!580046 () Bool)

(declare-fun e!350519 () Int)

(assert (=> b!580046 (= e!350519 0)))

(declare-fun b!580048 () Bool)

(assert (=> b!580048 (= e!350520 (+ 1 (getIndex!44 (t!77821 rules!3103) (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun b!580047 () Bool)

(assert (=> b!580047 (= e!350519 e!350520)))

(declare-fun c!108551 () Bool)

(assert (=> b!580047 (= c!108551 (and ((_ is Cons!5692) rules!3103) (not (= (h!11093 rules!3103) (rule!1859 (_1!3600 (v!16320 lt!245592)))))))))

(declare-fun d!203894 () Bool)

(declare-fun lt!245831 () Int)

(assert (=> d!203894 (>= lt!245831 0)))

(assert (=> d!203894 (= lt!245831 e!350519)))

(declare-fun c!108552 () Bool)

(assert (=> d!203894 (= c!108552 (and ((_ is Cons!5692) rules!3103) (= (h!11093 rules!3103) (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(assert (=> d!203894 (contains!1337 rules!3103 (rule!1859 (_1!3600 (v!16320 lt!245592))))))

(assert (=> d!203894 (= (getIndex!44 rules!3103 (rule!1859 (_1!3600 (v!16320 lt!245592)))) lt!245831)))

(assert (= (and d!203894 c!108552) b!580046))

(assert (= (and d!203894 (not c!108552)) b!580047))

(assert (= (and b!580047 c!108551) b!580048))

(assert (= (and b!580047 (not c!108551)) b!580049))

(declare-fun m!838795 () Bool)

(assert (=> b!580048 m!838795))

(assert (=> d!203894 m!837929))

(assert (=> b!579429 d!203894))

(declare-fun d!203896 () Bool)

(declare-fun lt!245832 () Bool)

(assert (=> d!203896 (= lt!245832 (select (content!1009 rules!3103) (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(declare-fun e!350522 () Bool)

(assert (=> d!203896 (= lt!245832 e!350522)))

(declare-fun res!249722 () Bool)

(assert (=> d!203896 (=> (not res!249722) (not e!350522))))

(assert (=> d!203896 (= res!249722 ((_ is Cons!5692) rules!3103))))

(assert (=> d!203896 (= (contains!1337 rules!3103 (rule!1859 (_1!3600 (v!16320 lt!245592)))) lt!245832)))

(declare-fun b!580050 () Bool)

(declare-fun e!350521 () Bool)

(assert (=> b!580050 (= e!350522 e!350521)))

(declare-fun res!249721 () Bool)

(assert (=> b!580050 (=> res!249721 e!350521)))

(assert (=> b!580050 (= res!249721 (= (h!11093 rules!3103) (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(declare-fun b!580051 () Bool)

(assert (=> b!580051 (= e!350521 (contains!1337 (t!77821 rules!3103) (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(assert (= (and d!203896 res!249722) b!580050))

(assert (= (and b!580050 (not res!249721)) b!580051))

(assert (=> d!203896 m!838417))

(declare-fun m!838797 () Bool)

(assert (=> d!203896 m!838797))

(declare-fun m!838799 () Bool)

(assert (=> b!580051 m!838799))

(assert (=> b!579428 d!203896))

(declare-fun d!203898 () Bool)

(assert (=> d!203898 (= (get!2172 lt!245592) (v!16320 lt!245592))))

(assert (=> b!579425 d!203898))

(declare-fun b!580065 () Bool)

(declare-fun e!350525 () Bool)

(declare-fun tp!181294 () Bool)

(declare-fun tp!181295 () Bool)

(assert (=> b!580065 (= e!350525 (and tp!181294 tp!181295))))

(declare-fun b!580064 () Bool)

(declare-fun tp!181292 () Bool)

(assert (=> b!580064 (= e!350525 tp!181292)))

(declare-fun b!580062 () Bool)

(assert (=> b!580062 (= e!350525 tp_is_empty!3233)))

(assert (=> b!579440 (= tp!181226 e!350525)))

(declare-fun b!580063 () Bool)

(declare-fun tp!181296 () Bool)

(declare-fun tp!181293 () Bool)

(assert (=> b!580063 (= e!350525 (and tp!181296 tp!181293))))

(assert (= (and b!579440 ((_ is ElementMatch!1439) (regex!1105 (h!11093 rules!3103)))) b!580062))

(assert (= (and b!579440 ((_ is Concat!2568) (regex!1105 (h!11093 rules!3103)))) b!580063))

(assert (= (and b!579440 ((_ is Star!1439) (regex!1105 (h!11093 rules!3103)))) b!580064))

(assert (= (and b!579440 ((_ is Union!1439) (regex!1105 (h!11093 rules!3103)))) b!580065))

(declare-fun b!580076 () Bool)

(declare-fun b_free!16129 () Bool)

(declare-fun b_next!16145 () Bool)

(assert (=> b!580076 (= b_free!16129 (not b_next!16145))))

(declare-fun t!77884 () Bool)

(declare-fun tb!50731 () Bool)

(assert (=> (and b!580076 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77884) tb!50731))

(declare-fun result!56800 () Bool)

(assert (= result!56800 result!56756))

(assert (=> d!203686 t!77884))

(assert (=> d!203820 t!77884))

(declare-fun t!77886 () Bool)

(declare-fun tb!50733 () Bool)

(assert (=> (and b!580076 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) t!77886) tb!50733))

(declare-fun result!56802 () Bool)

(assert (= result!56802 result!56788))

(assert (=> d!203874 t!77886))

(assert (=> d!203878 t!77886))

(declare-fun tp!181306 () Bool)

(declare-fun b_and!56983 () Bool)

(assert (=> b!580076 (= tp!181306 (and (=> t!77884 result!56800) (=> t!77886 result!56802) b_and!56983))))

(declare-fun b_free!16131 () Bool)

(declare-fun b_next!16147 () Bool)

(assert (=> b!580076 (= b_free!16131 (not b_next!16147))))

(declare-fun tb!50735 () Bool)

(declare-fun t!77888 () Bool)

(assert (=> (and b!580076 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) t!77888) tb!50735))

(declare-fun result!56804 () Bool)

(assert (= result!56804 result!56784))

(assert (=> d!203890 t!77888))

(declare-fun tb!50737 () Bool)

(declare-fun t!77890 () Bool)

(assert (=> (and b!580076 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) t!77890) tb!50737))

(declare-fun result!56806 () Bool)

(assert (= result!56806 result!56792))

(assert (=> d!203878 t!77890))

(declare-fun tb!50739 () Bool)

(declare-fun t!77892 () Bool)

(assert (=> (and b!580076 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77892) tb!50739))

(declare-fun result!56808 () Bool)

(assert (= result!56808 result!56750))

(assert (=> d!203686 t!77892))

(assert (=> b!579974 t!77888))

(declare-fun tb!50741 () Bool)

(declare-fun t!77894 () Bool)

(assert (=> (and b!580076 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77894) tb!50741))

(declare-fun result!56810 () Bool)

(assert (= result!56810 result!56762))

(assert (=> d!203792 t!77894))

(declare-fun b_and!56985 () Bool)

(declare-fun tp!181308 () Bool)

(assert (=> b!580076 (= tp!181308 (and (=> t!77892 result!56808) (=> t!77890 result!56806) (=> t!77888 result!56804) (=> t!77894 result!56810) b_and!56985))))

(declare-fun e!350535 () Bool)

(assert (=> b!580076 (= e!350535 (and tp!181306 tp!181308))))

(declare-fun e!350536 () Bool)

(declare-fun b!580075 () Bool)

(declare-fun tp!181305 () Bool)

(assert (=> b!580075 (= e!350536 (and tp!181305 (inv!7164 (tag!1367 (h!11093 (t!77821 rules!3103)))) (inv!7167 (transformation!1105 (h!11093 (t!77821 rules!3103)))) e!350535))))

(declare-fun b!580074 () Bool)

(declare-fun e!350534 () Bool)

(declare-fun tp!181307 () Bool)

(assert (=> b!580074 (= e!350534 (and e!350536 tp!181307))))

(assert (=> b!579434 (= tp!181230 e!350534)))

(assert (= b!580075 b!580076))

(assert (= b!580074 b!580075))

(assert (= (and b!579434 ((_ is Cons!5692) (t!77821 rules!3103))) b!580074))

(declare-fun m!838801 () Bool)

(assert (=> b!580075 m!838801))

(declare-fun m!838803 () Bool)

(assert (=> b!580075 m!838803))

(declare-fun b!580081 () Bool)

(declare-fun e!350540 () Bool)

(declare-fun tp!181311 () Bool)

(assert (=> b!580081 (= e!350540 (and tp_is_empty!3233 tp!181311))))

(assert (=> b!579454 (= tp!181232 e!350540)))

(assert (= (and b!579454 ((_ is Cons!5691) (originalCharacters!1144 token!491))) b!580081))

(declare-fun b!580085 () Bool)

(declare-fun e!350541 () Bool)

(declare-fun tp!181314 () Bool)

(declare-fun tp!181315 () Bool)

(assert (=> b!580085 (= e!350541 (and tp!181314 tp!181315))))

(declare-fun b!580084 () Bool)

(declare-fun tp!181312 () Bool)

(assert (=> b!580084 (= e!350541 tp!181312)))

(declare-fun b!580082 () Bool)

(assert (=> b!580082 (= e!350541 tp_is_empty!3233)))

(assert (=> b!579443 (= tp!181227 e!350541)))

(declare-fun b!580083 () Bool)

(declare-fun tp!181316 () Bool)

(declare-fun tp!181313 () Bool)

(assert (=> b!580083 (= e!350541 (and tp!181316 tp!181313))))

(assert (= (and b!579443 ((_ is ElementMatch!1439) (regex!1105 (rule!1859 token!491)))) b!580082))

(assert (= (and b!579443 ((_ is Concat!2568) (regex!1105 (rule!1859 token!491)))) b!580083))

(assert (= (and b!579443 ((_ is Star!1439) (regex!1105 (rule!1859 token!491)))) b!580084))

(assert (= (and b!579443 ((_ is Union!1439) (regex!1105 (rule!1859 token!491)))) b!580085))

(declare-fun b!580086 () Bool)

(declare-fun e!350542 () Bool)

(declare-fun tp!181317 () Bool)

(assert (=> b!580086 (= e!350542 (and tp_is_empty!3233 tp!181317))))

(assert (=> b!579458 (= tp!181228 e!350542)))

(assert (= (and b!579458 ((_ is Cons!5691) (t!77820 input!2705))) b!580086))

(declare-fun b!580087 () Bool)

(declare-fun e!350543 () Bool)

(declare-fun tp!181318 () Bool)

(assert (=> b!580087 (= e!350543 (and tp_is_empty!3233 tp!181318))))

(assert (=> b!579431 (= tp!181229 e!350543)))

(assert (= (and b!579431 ((_ is Cons!5691) (t!77820 suffix!1342))) b!580087))

(declare-fun b_lambda!22783 () Bool)

(assert (= b_lambda!22775 (or (and b!579433 b_free!16117) (and b!579460 b_free!16121 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) (and b!580076 b_free!16129 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) b_lambda!22783)))

(declare-fun b_lambda!22785 () Bool)

(assert (= b_lambda!22773 (or (and b!579433 b_free!16119) (and b!579460 b_free!16123 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 token!491))))) (and b!580076 b_free!16131 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 token!491))))) b_lambda!22785)))

(declare-fun b_lambda!22787 () Bool)

(assert (= b_lambda!22777 (or (and b!579433 b_free!16119) (and b!579460 b_free!16123 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 token!491))))) (and b!580076 b_free!16131 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 token!491))))) b_lambda!22787)))

(declare-fun b_lambda!22789 () Bool)

(assert (= b_lambda!22779 (or (and b!579433 b_free!16117) (and b!579460 b_free!16121 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) (and b!580076 b_free!16129 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) b_lambda!22789)))

(declare-fun b_lambda!22791 () Bool)

(assert (= b_lambda!22781 (or (and b!579433 b_free!16119) (and b!579460 b_free!16123 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 token!491))))) (and b!580076 b_free!16131 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 token!491))))) b_lambda!22791)))

(check-sat (not b!579988) tp_is_empty!3233 (not d!203784) b_and!56979 (not b!579992) (not d!203778) (not bm!39989) (not d!203870) (not b_next!16135) (not b!579979) (not b!579573) (not b!580019) (not b!579798) b_and!56985 (not d!203838) (not b!580065) (not b!579525) (not b!579953) (not b!579755) (not b!579572) (not d!203878) (not b!579513) (not tb!50699) (not b!579864) (not bm!39996) (not d!203892) (not d!203890) (not tb!50703) (not b!580026) (not b!580081) (not b!580021) (not tb!50727) (not b!580015) (not d!203834) (not d!203822) (not b!579825) (not b!579517) (not b!579966) (not b!579636) (not b!579519) (not tb!50719) (not b!580016) (not b!579985) (not d!203666) (not b!580023) (not d!203880) (not d!203640) (not d!203844) (not b!579956) (not b!579984) (not b!579751) (not d!203828) (not d!203882) (not b!579643) (not b!580012) (not b!579760) (not b!580017) (not b!580022) (not d!203766) (not d!203748) (not b_next!16145) (not d!203888) (not b!579569) (not b!579524) (not d!203860) (not b!580074) (not b!579987) (not b!580048) (not b!579640) (not b!579974) (not d!203850) (not d!203792) (not b!579650) (not b!579977) (not d!203816) (not tb!50723) (not b!579916) (not b!580025) (not b!580013) (not b!579883) (not b_lambda!22783) (not b!579991) (not d!203884) (not d!203840) (not b!579647) (not b!580014) (not b!580031) (not b!579914) (not d!203872) (not d!203830) (not b!579975) (not b!580086) (not d!203656) (not b!579906) (not b!579800) (not b!579952) (not b!579908) (not b!579982) (not b!580020) b_and!56977 (not d!203756) (not b!579514) (not b!580084) (not b!579978) (not d!203750) (not d!203868) (not b!580029) (not b!579981) (not b!580024) (not b!579743) (not d!203636) (not b!579761) (not bm!39990) (not b!580028) (not d!203866) (not b!580083) (not b!580085) (not b!579907) (not tb!50695) (not bm!39985) (not d!203832) (not b!580087) (not b!579962) (not d!203886) (not b_lambda!22759) (not b!579642) (not b!579968) (not b_lambda!22787) (not b_lambda!22789) (not d!203686) (not b_lambda!22761) (not b!580051) (not d!203856) (not b!579983) (not d!203846) (not d!203864) (not b!579859) (not b!580044) (not b!579950) (not b!579656) (not b!579915) (not b!580032) (not d!203876) (not b!579963) (not b!579959) (not d!203676) (not b!579976) (not d!203758) (not b!579964) (not d!203894) (not b_lambda!22757) (not b_next!16147) (not b!579641) (not b!579967) (not b!579638) (not b!579961) (not b!579856) (not d!203752) (not b!579855) (not d!203790) (not b_lambda!22791) (not b!580075) b_and!56981 (not d!203824) b_and!56983 (not b!580063) (not b!579644) (not b_next!16137) (not d!203768) (not b_next!16133) (not b!580064) (not b_lambda!22755) (not d!203896) (not b_next!16139) (not b!579951) (not b!579969) (not d!203862) b_and!56975 (not b!579637) (not b_lambda!22785) (not b!579752) (not b!579757))
(check-sat b_and!56979 (not b_next!16145) b_and!56977 (not b_next!16147) (not b_next!16139) b_and!56975 (not b_next!16135) b_and!56985 b_and!56983 b_and!56981 (not b_next!16137) (not b_next!16133))
(get-model)

(declare-fun d!203900 () Bool)

(declare-fun lt!245833 () Int)

(assert (=> d!203900 (>= lt!245833 0)))

(declare-fun e!350544 () Int)

(assert (=> d!203900 (= lt!245833 e!350544)))

(declare-fun c!108553 () Bool)

(assert (=> d!203900 (= c!108553 ((_ is Nil!5691) (t!77820 (originalCharacters!1144 (_1!3600 (v!16320 lt!245592))))))))

(assert (=> d!203900 (= (size!4531 (t!77820 (originalCharacters!1144 (_1!3600 (v!16320 lt!245592))))) lt!245833)))

(declare-fun b!580088 () Bool)

(assert (=> b!580088 (= e!350544 0)))

(declare-fun b!580089 () Bool)

(assert (=> b!580089 (= e!350544 (+ 1 (size!4531 (t!77820 (t!77820 (originalCharacters!1144 (_1!3600 (v!16320 lt!245592))))))))))

(assert (= (and d!203900 c!108553) b!580088))

(assert (= (and d!203900 (not c!108553)) b!580089))

(declare-fun m!838805 () Bool)

(assert (=> b!580089 m!838805))

(assert (=> b!579656 d!203900))

(declare-fun d!203902 () Bool)

(assert (=> d!203902 (= (isEmpty!4110 (tail!757 input!2705)) ((_ is Nil!5691) (tail!757 input!2705)))))

(assert (=> b!579513 d!203902))

(declare-fun d!203904 () Bool)

(assert (=> d!203904 (= (tail!757 input!2705) (t!77820 input!2705))))

(assert (=> b!579513 d!203904))

(declare-fun d!203906 () Bool)

(declare-fun lt!245834 () Int)

(assert (=> d!203906 (>= lt!245834 0)))

(declare-fun e!350545 () Int)

(assert (=> d!203906 (= lt!245834 e!350545)))

(declare-fun c!108554 () Bool)

(assert (=> d!203906 (= c!108554 ((_ is Nil!5691) input!2705))))

(assert (=> d!203906 (= (size!4531 input!2705) lt!245834)))

(declare-fun b!580090 () Bool)

(assert (=> b!580090 (= e!350545 0)))

(declare-fun b!580091 () Bool)

(assert (=> b!580091 (= e!350545 (+ 1 (size!4531 (t!77820 input!2705))))))

(assert (= (and d!203906 c!108554) b!580090))

(assert (= (and d!203906 (not c!108554)) b!580091))

(declare-fun m!838807 () Bool)

(assert (=> b!580091 m!838807))

(assert (=> b!579952 d!203906))

(declare-fun d!203908 () Bool)

(assert (=> d!203908 (= (get!2172 lt!245821) (v!16320 lt!245821))))

(assert (=> b!580021 d!203908))

(declare-fun d!203910 () Bool)

(assert (=> d!203910 (= (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245821)))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245821))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245821))))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245821))))))))

(declare-fun b_lambda!22793 () Bool)

(assert (=> (not b_lambda!22793) (not d!203910)))

(declare-fun t!77897 () Bool)

(declare-fun tb!50743 () Bool)

(assert (=> (and b!579433 (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245821)))))) t!77897) tb!50743))

(declare-fun result!56814 () Bool)

(assert (=> tb!50743 (= result!56814 (inv!21 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245821))))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245821)))))))))

(declare-fun m!838809 () Bool)

(assert (=> tb!50743 m!838809))

(assert (=> d!203910 t!77897))

(declare-fun b_and!56987 () Bool)

(assert (= b_and!56975 (and (=> t!77897 result!56814) b_and!56987)))

(declare-fun tb!50745 () Bool)

(declare-fun t!77899 () Bool)

(assert (=> (and b!579460 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245821)))))) t!77899) tb!50745))

(declare-fun result!56816 () Bool)

(assert (= result!56816 result!56814))

(assert (=> d!203910 t!77899))

(declare-fun b_and!56989 () Bool)

(assert (= b_and!56977 (and (=> t!77899 result!56816) b_and!56989)))

(declare-fun t!77901 () Bool)

(declare-fun tb!50747 () Bool)

(assert (=> (and b!580076 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245821)))))) t!77901) tb!50747))

(declare-fun result!56818 () Bool)

(assert (= result!56818 result!56814))

(assert (=> d!203910 t!77901))

(declare-fun b_and!56991 () Bool)

(assert (= b_and!56983 (and (=> t!77901 result!56818) b_and!56991)))

(assert (=> d!203910 m!838725))

(declare-fun m!838811 () Bool)

(assert (=> d!203910 m!838811))

(assert (=> b!580021 d!203910))

(declare-fun d!203912 () Bool)

(assert (=> d!203912 (= (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245821)))) (fromListB!565 (originalCharacters!1144 (_1!3600 (get!2172 lt!245821)))))))

(declare-fun bs!69664 () Bool)

(assert (= bs!69664 d!203912))

(declare-fun m!838813 () Bool)

(assert (=> bs!69664 m!838813))

(assert (=> b!580021 d!203912))

(declare-fun b!580092 () Bool)

(declare-fun e!350549 () Bool)

(assert (=> b!580092 (= e!350549 (inv!17 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610)))))

(declare-fun b!580093 () Bool)

(declare-fun res!249723 () Bool)

(declare-fun e!350547 () Bool)

(assert (=> b!580093 (=> res!249723 e!350547)))

(assert (=> b!580093 (= res!249723 (not ((_ is IntegerValue!3389) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610))))))

(assert (=> b!580093 (= e!350549 e!350547)))

(declare-fun b!580094 () Bool)

(declare-fun e!350548 () Bool)

(assert (=> b!580094 (= e!350548 e!350549)))

(declare-fun c!108555 () Bool)

(assert (=> b!580094 (= c!108555 ((_ is IntegerValue!3388) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610)))))

(declare-fun b!580095 () Bool)

(assert (=> b!580095 (= e!350547 (inv!15 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610)))))

(declare-fun b!580096 () Bool)

(assert (=> b!580096 (= e!350548 (inv!16 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610)))))

(declare-fun d!203914 () Bool)

(declare-fun c!108556 () Bool)

(assert (=> d!203914 (= c!108556 ((_ is IntegerValue!3387) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610)))))

(assert (=> d!203914 (= (inv!21 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610)) e!350548)))

(assert (= (and d!203914 c!108556) b!580096))

(assert (= (and d!203914 (not c!108556)) b!580094))

(assert (= (and b!580094 c!108555) b!580092))

(assert (= (and b!580094 (not c!108555)) b!580093))

(assert (= (and b!580093 (not res!249723)) b!580095))

(declare-fun m!838815 () Bool)

(assert (=> b!580092 m!838815))

(declare-fun m!838817 () Bool)

(assert (=> b!580095 m!838817))

(declare-fun m!838819 () Bool)

(assert (=> b!580096 m!838819))

(assert (=> tb!50699 d!203914))

(declare-fun d!203916 () Bool)

(declare-fun lt!245835 () Int)

(assert (=> d!203916 (>= lt!245835 0)))

(declare-fun e!350550 () Int)

(assert (=> d!203916 (= lt!245835 e!350550)))

(declare-fun c!108557 () Bool)

(assert (=> d!203916 (= c!108557 ((_ is Nil!5691) lt!245799))))

(assert (=> d!203916 (= (size!4531 lt!245799) lt!245835)))

(declare-fun b!580097 () Bool)

(assert (=> b!580097 (= e!350550 0)))

(declare-fun b!580098 () Bool)

(assert (=> b!580098 (= e!350550 (+ 1 (size!4531 (t!77820 lt!245799))))))

(assert (= (and d!203916 c!108557) b!580097))

(assert (= (and d!203916 (not c!108557)) b!580098))

(declare-fun m!838821 () Bool)

(assert (=> b!580098 m!838821))

(assert (=> b!579992 d!203916))

(assert (=> b!579992 d!203836))

(declare-fun d!203918 () Bool)

(declare-fun lt!245836 () Int)

(assert (=> d!203918 (>= lt!245836 0)))

(declare-fun e!350551 () Int)

(assert (=> d!203918 (= lt!245836 e!350551)))

(declare-fun c!108558 () Bool)

(assert (=> d!203918 (= c!108558 ((_ is Nil!5691) suffix!1342))))

(assert (=> d!203918 (= (size!4531 suffix!1342) lt!245836)))

(declare-fun b!580099 () Bool)

(assert (=> b!580099 (= e!350551 0)))

(declare-fun b!580100 () Bool)

(assert (=> b!580100 (= e!350551 (+ 1 (size!4531 (t!77820 suffix!1342))))))

(assert (= (and d!203918 c!108558) b!580099))

(assert (= (and d!203918 (not c!108558)) b!580100))

(declare-fun m!838823 () Bool)

(assert (=> b!580100 m!838823))

(assert (=> b!579992 d!203918))

(declare-fun b!580104 () Bool)

(declare-fun e!350553 () Bool)

(declare-fun lt!245837 () List!5701)

(assert (=> b!580104 (= e!350553 (or (not (= (_2!3600 (get!2172 lt!245813)) Nil!5691)) (= lt!245837 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813)))))))))

(declare-fun d!203920 () Bool)

(assert (=> d!203920 e!350553))

(declare-fun res!249724 () Bool)

(assert (=> d!203920 (=> (not res!249724) (not e!350553))))

(assert (=> d!203920 (= res!249724 (= (content!1010 lt!245837) ((_ map or) (content!1010 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813))))) (content!1010 (_2!3600 (get!2172 lt!245813))))))))

(declare-fun e!350552 () List!5701)

(assert (=> d!203920 (= lt!245837 e!350552)))

(declare-fun c!108559 () Bool)

(assert (=> d!203920 (= c!108559 ((_ is Nil!5691) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813))))))))

(assert (=> d!203920 (= (++!1593 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813)))) (_2!3600 (get!2172 lt!245813))) lt!245837)))

(declare-fun b!580103 () Bool)

(declare-fun res!249725 () Bool)

(assert (=> b!580103 (=> (not res!249725) (not e!350553))))

(assert (=> b!580103 (= res!249725 (= (size!4531 lt!245837) (+ (size!4531 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813))))) (size!4531 (_2!3600 (get!2172 lt!245813))))))))

(declare-fun b!580101 () Bool)

(assert (=> b!580101 (= e!350552 (_2!3600 (get!2172 lt!245813)))))

(declare-fun b!580102 () Bool)

(assert (=> b!580102 (= e!350552 (Cons!5691 (h!11092 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813))))) (++!1593 (t!77820 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813))))) (_2!3600 (get!2172 lt!245813)))))))

(assert (= (and d!203920 c!108559) b!580101))

(assert (= (and d!203920 (not c!108559)) b!580102))

(assert (= (and d!203920 res!249724) b!580103))

(assert (= (and b!580103 res!249725) b!580104))

(declare-fun m!838825 () Bool)

(assert (=> d!203920 m!838825))

(assert (=> d!203920 m!838699))

(declare-fun m!838827 () Bool)

(assert (=> d!203920 m!838827))

(declare-fun m!838829 () Bool)

(assert (=> d!203920 m!838829))

(declare-fun m!838831 () Bool)

(assert (=> b!580103 m!838831))

(assert (=> b!580103 m!838699))

(declare-fun m!838833 () Bool)

(assert (=> b!580103 m!838833))

(assert (=> b!580103 m!838695))

(declare-fun m!838835 () Bool)

(assert (=> b!580102 m!838835))

(assert (=> b!580016 d!203920))

(declare-fun d!203922 () Bool)

(assert (=> d!203922 (= (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813)))) (list!2369 (c!108452 (charsOf!734 (_1!3600 (get!2172 lt!245813))))))))

(declare-fun bs!69665 () Bool)

(assert (= bs!69665 d!203922))

(declare-fun m!838837 () Bool)

(assert (=> bs!69665 m!838837))

(assert (=> b!580016 d!203922))

(declare-fun d!203924 () Bool)

(declare-fun lt!245838 () BalanceConc!3652)

(assert (=> d!203924 (= (list!2367 lt!245838) (originalCharacters!1144 (_1!3600 (get!2172 lt!245813))))))

(assert (=> d!203924 (= lt!245838 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245813))))) (value!36359 (_1!3600 (get!2172 lt!245813)))))))

(assert (=> d!203924 (= (charsOf!734 (_1!3600 (get!2172 lt!245813))) lt!245838)))

(declare-fun b_lambda!22795 () Bool)

(assert (=> (not b_lambda!22795) (not d!203924)))

(declare-fun t!77903 () Bool)

(declare-fun tb!50749 () Bool)

(assert (=> (and b!579433 (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245813)))))) t!77903) tb!50749))

(declare-fun b!580105 () Bool)

(declare-fun e!350554 () Bool)

(declare-fun tp!181319 () Bool)

(assert (=> b!580105 (= e!350554 (and (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245813))))) (value!36359 (_1!3600 (get!2172 lt!245813)))))) tp!181319))))

(declare-fun result!56820 () Bool)

(assert (=> tb!50749 (= result!56820 (and (inv!7172 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245813))))) (value!36359 (_1!3600 (get!2172 lt!245813))))) e!350554))))

(assert (= tb!50749 b!580105))

(declare-fun m!838839 () Bool)

(assert (=> b!580105 m!838839))

(declare-fun m!838841 () Bool)

(assert (=> tb!50749 m!838841))

(assert (=> d!203924 t!77903))

(declare-fun b_and!56993 () Bool)

(assert (= b_and!56979 (and (=> t!77903 result!56820) b_and!56993)))

(declare-fun tb!50751 () Bool)

(declare-fun t!77905 () Bool)

(assert (=> (and b!579460 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245813)))))) t!77905) tb!50751))

(declare-fun result!56822 () Bool)

(assert (= result!56822 result!56820))

(assert (=> d!203924 t!77905))

(declare-fun b_and!56995 () Bool)

(assert (= b_and!56981 (and (=> t!77905 result!56822) b_and!56995)))

(declare-fun t!77907 () Bool)

(declare-fun tb!50753 () Bool)

(assert (=> (and b!580076 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245813)))))) t!77907) tb!50753))

(declare-fun result!56824 () Bool)

(assert (= result!56824 result!56820))

(assert (=> d!203924 t!77907))

(declare-fun b_and!56997 () Bool)

(assert (= b_and!56985 (and (=> t!77907 result!56824) b_and!56997)))

(declare-fun m!838843 () Bool)

(assert (=> d!203924 m!838843))

(declare-fun m!838845 () Bool)

(assert (=> d!203924 m!838845))

(assert (=> b!580016 d!203924))

(declare-fun d!203926 () Bool)

(assert (=> d!203926 (= (get!2172 lt!245813) (v!16320 lt!245813))))

(assert (=> b!580016 d!203926))

(declare-fun b!580109 () Bool)

(declare-fun e!350556 () Int)

(assert (=> b!580109 (= e!350556 (- 1))))

(declare-fun b!580106 () Bool)

(declare-fun e!350555 () Int)

(assert (=> b!580106 (= e!350555 0)))

(declare-fun b!580108 () Bool)

(assert (=> b!580108 (= e!350556 (+ 1 (getIndex!44 (t!77821 (t!77821 rules!3103)) (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun b!580107 () Bool)

(assert (=> b!580107 (= e!350555 e!350556)))

(declare-fun c!108560 () Bool)

(assert (=> b!580107 (= c!108560 (and ((_ is Cons!5692) (t!77821 rules!3103)) (not (= (h!11093 (t!77821 rules!3103)) (rule!1859 (_1!3600 (v!16320 lt!245592)))))))))

(declare-fun d!203928 () Bool)

(declare-fun lt!245839 () Int)

(assert (=> d!203928 (>= lt!245839 0)))

(assert (=> d!203928 (= lt!245839 e!350555)))

(declare-fun c!108561 () Bool)

(assert (=> d!203928 (= c!108561 (and ((_ is Cons!5692) (t!77821 rules!3103)) (= (h!11093 (t!77821 rules!3103)) (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(assert (=> d!203928 (contains!1337 (t!77821 rules!3103) (rule!1859 (_1!3600 (v!16320 lt!245592))))))

(assert (=> d!203928 (= (getIndex!44 (t!77821 rules!3103) (rule!1859 (_1!3600 (v!16320 lt!245592)))) lt!245839)))

(assert (= (and d!203928 c!108561) b!580106))

(assert (= (and d!203928 (not c!108561)) b!580107))

(assert (= (and b!580107 c!108560) b!580108))

(assert (= (and b!580107 (not c!108560)) b!580109))

(declare-fun m!838847 () Bool)

(assert (=> b!580108 m!838847))

(assert (=> d!203928 m!838799))

(assert (=> b!580048 d!203928))

(declare-fun b!580113 () Bool)

(declare-fun e!350558 () Bool)

(declare-fun lt!245840 () List!5701)

(assert (=> b!580113 (= e!350558 (or (not (= (_2!3600 (get!2172 lt!245821)) Nil!5691)) (= lt!245840 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821)))))))))

(declare-fun d!203930 () Bool)

(assert (=> d!203930 e!350558))

(declare-fun res!249726 () Bool)

(assert (=> d!203930 (=> (not res!249726) (not e!350558))))

(assert (=> d!203930 (= res!249726 (= (content!1010 lt!245840) ((_ map or) (content!1010 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821))))) (content!1010 (_2!3600 (get!2172 lt!245821))))))))

(declare-fun e!350557 () List!5701)

(assert (=> d!203930 (= lt!245840 e!350557)))

(declare-fun c!108562 () Bool)

(assert (=> d!203930 (= c!108562 ((_ is Nil!5691) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821))))))))

(assert (=> d!203930 (= (++!1593 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821)))) (_2!3600 (get!2172 lt!245821))) lt!245840)))

(declare-fun b!580112 () Bool)

(declare-fun res!249727 () Bool)

(assert (=> b!580112 (=> (not res!249727) (not e!350558))))

(assert (=> b!580112 (= res!249727 (= (size!4531 lt!245840) (+ (size!4531 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821))))) (size!4531 (_2!3600 (get!2172 lt!245821))))))))

(declare-fun b!580110 () Bool)

(assert (=> b!580110 (= e!350557 (_2!3600 (get!2172 lt!245821)))))

(declare-fun b!580111 () Bool)

(assert (=> b!580111 (= e!350557 (Cons!5691 (h!11092 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821))))) (++!1593 (t!77820 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821))))) (_2!3600 (get!2172 lt!245821)))))))

(assert (= (and d!203930 c!108562) b!580110))

(assert (= (and d!203930 (not c!108562)) b!580111))

(assert (= (and d!203930 res!249726) b!580112))

(assert (= (and b!580112 res!249727) b!580113))

(declare-fun m!838849 () Bool)

(assert (=> d!203930 m!838849))

(assert (=> d!203930 m!838747))

(declare-fun m!838851 () Bool)

(assert (=> d!203930 m!838851))

(declare-fun m!838853 () Bool)

(assert (=> d!203930 m!838853))

(declare-fun m!838855 () Bool)

(assert (=> b!580112 m!838855))

(assert (=> b!580112 m!838747))

(declare-fun m!838857 () Bool)

(assert (=> b!580112 m!838857))

(assert (=> b!580112 m!838743))

(declare-fun m!838859 () Bool)

(assert (=> b!580111 m!838859))

(assert (=> b!580025 d!203930))

(declare-fun d!203932 () Bool)

(assert (=> d!203932 (= (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821)))) (list!2369 (c!108452 (charsOf!734 (_1!3600 (get!2172 lt!245821))))))))

(declare-fun bs!69666 () Bool)

(assert (= bs!69666 d!203932))

(declare-fun m!838861 () Bool)

(assert (=> bs!69666 m!838861))

(assert (=> b!580025 d!203932))

(declare-fun d!203934 () Bool)

(declare-fun lt!245841 () BalanceConc!3652)

(assert (=> d!203934 (= (list!2367 lt!245841) (originalCharacters!1144 (_1!3600 (get!2172 lt!245821))))))

(assert (=> d!203934 (= lt!245841 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245821))))) (value!36359 (_1!3600 (get!2172 lt!245821)))))))

(assert (=> d!203934 (= (charsOf!734 (_1!3600 (get!2172 lt!245821))) lt!245841)))

(declare-fun b_lambda!22797 () Bool)

(assert (=> (not b_lambda!22797) (not d!203934)))

(declare-fun t!77909 () Bool)

(declare-fun tb!50755 () Bool)

(assert (=> (and b!579433 (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245821)))))) t!77909) tb!50755))

(declare-fun b!580114 () Bool)

(declare-fun e!350559 () Bool)

(declare-fun tp!181320 () Bool)

(assert (=> b!580114 (= e!350559 (and (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245821))))) (value!36359 (_1!3600 (get!2172 lt!245821)))))) tp!181320))))

(declare-fun result!56826 () Bool)

(assert (=> tb!50755 (= result!56826 (and (inv!7172 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245821))))) (value!36359 (_1!3600 (get!2172 lt!245821))))) e!350559))))

(assert (= tb!50755 b!580114))

(declare-fun m!838863 () Bool)

(assert (=> b!580114 m!838863))

(declare-fun m!838865 () Bool)

(assert (=> tb!50755 m!838865))

(assert (=> d!203934 t!77909))

(declare-fun b_and!56999 () Bool)

(assert (= b_and!56993 (and (=> t!77909 result!56826) b_and!56999)))

(declare-fun t!77911 () Bool)

(declare-fun tb!50757 () Bool)

(assert (=> (and b!579460 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245821)))))) t!77911) tb!50757))

(declare-fun result!56828 () Bool)

(assert (= result!56828 result!56826))

(assert (=> d!203934 t!77911))

(declare-fun b_and!57001 () Bool)

(assert (= b_and!56995 (and (=> t!77911 result!56828) b_and!57001)))

(declare-fun tb!50759 () Bool)

(declare-fun t!77913 () Bool)

(assert (=> (and b!580076 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245821)))))) t!77913) tb!50759))

(declare-fun result!56830 () Bool)

(assert (= result!56830 result!56826))

(assert (=> d!203934 t!77913))

(declare-fun b_and!57003 () Bool)

(assert (= b_and!56997 (and (=> t!77913 result!56830) b_and!57003)))

(declare-fun m!838867 () Bool)

(assert (=> d!203934 m!838867))

(declare-fun m!838869 () Bool)

(assert (=> d!203934 m!838869))

(assert (=> b!580025 d!203934))

(assert (=> b!580025 d!203908))

(declare-fun d!203936 () Bool)

(declare-fun lt!245842 () Int)

(assert (=> d!203936 (>= lt!245842 0)))

(declare-fun e!350560 () Int)

(assert (=> d!203936 (= lt!245842 e!350560)))

(declare-fun c!108563 () Bool)

(assert (=> d!203936 (= c!108563 ((_ is Nil!5691) (t!77820 lt!245601)))))

(assert (=> d!203936 (= (size!4531 (t!77820 lt!245601)) lt!245842)))

(declare-fun b!580115 () Bool)

(assert (=> b!580115 (= e!350560 0)))

(declare-fun b!580116 () Bool)

(assert (=> b!580116 (= e!350560 (+ 1 (size!4531 (t!77820 (t!77820 lt!245601)))))))

(assert (= (and d!203936 c!108563) b!580115))

(assert (= (and d!203936 (not c!108563)) b!580116))

(declare-fun m!838871 () Bool)

(assert (=> b!580116 m!838871))

(assert (=> b!579956 d!203936))

(declare-fun d!203938 () Bool)

(assert (=> d!203938 (= (list!2367 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610))) (list!2369 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610)))))))

(declare-fun bs!69667 () Bool)

(assert (= bs!69667 d!203938))

(declare-fun m!838873 () Bool)

(assert (=> bs!69667 m!838873))

(assert (=> d!203686 d!203938))

(declare-fun d!203940 () Bool)

(assert (=> d!203940 (= (list!2367 lt!245610) (list!2369 (c!108452 lt!245610)))))

(declare-fun bs!69668 () Bool)

(assert (= bs!69668 d!203940))

(declare-fun m!838875 () Bool)

(assert (=> bs!69668 m!838875))

(assert (=> d!203686 d!203940))

(declare-fun d!203942 () Bool)

(declare-fun dynLambda!3320 (Int BalanceConc!3652) Bool)

(assert (=> d!203942 (dynLambda!3320 lambda!15765 lt!245610)))

(declare-fun lt!245845 () Unit!10309)

(declare-fun choose!4173 (Int BalanceConc!3652) Unit!10309)

(assert (=> d!203942 (= lt!245845 (choose!4173 lambda!15765 lt!245610))))

(declare-fun Forall!285 (Int) Bool)

(assert (=> d!203942 (Forall!285 lambda!15765)))

(assert (=> d!203942 (= (ForallOf!112 lambda!15765 lt!245610) lt!245845)))

(declare-fun b_lambda!22799 () Bool)

(assert (=> (not b_lambda!22799) (not d!203942)))

(declare-fun bs!69669 () Bool)

(assert (= bs!69669 d!203942))

(declare-fun m!838877 () Bool)

(assert (=> bs!69669 m!838877))

(declare-fun m!838879 () Bool)

(assert (=> bs!69669 m!838879))

(declare-fun m!838881 () Bool)

(assert (=> bs!69669 m!838881))

(assert (=> d!203686 d!203942))

(assert (=> d!203748 d!203750))

(declare-fun d!203944 () Bool)

(assert (=> d!203944 (not (matchR!586 (regex!1105 (rule!1859 token!491)) input!2705))))

(assert (=> d!203944 true))

(declare-fun _$57!88 () Unit!10309)

(assert (=> d!203944 (= (choose!4160 thiss!22590 rules!3103 (rule!1859 (_1!3600 (v!16320 lt!245592))) lt!245578 input!2705 input!2705 (rule!1859 token!491)) _$57!88)))

(declare-fun bs!69670 () Bool)

(assert (= bs!69670 d!203944))

(assert (=> bs!69670 m!837949))

(assert (=> d!203748 d!203944))

(declare-fun b!580118 () Bool)

(declare-fun res!249729 () Bool)

(declare-fun e!350562 () Bool)

(assert (=> b!580118 (=> (not res!249729) (not e!350562))))

(assert (=> b!580118 (= res!249729 (= (head!1227 lt!245578) (head!1227 input!2705)))))

(declare-fun d!203946 () Bool)

(declare-fun e!350563 () Bool)

(assert (=> d!203946 e!350563))

(declare-fun res!249730 () Bool)

(assert (=> d!203946 (=> res!249730 e!350563)))

(declare-fun lt!245846 () Bool)

(assert (=> d!203946 (= res!249730 (not lt!245846))))

(declare-fun e!350561 () Bool)

(assert (=> d!203946 (= lt!245846 e!350561)))

(declare-fun res!249731 () Bool)

(assert (=> d!203946 (=> res!249731 e!350561)))

(assert (=> d!203946 (= res!249731 ((_ is Nil!5691) lt!245578))))

(assert (=> d!203946 (= (isPrefix!739 lt!245578 input!2705) lt!245846)))

(declare-fun b!580120 () Bool)

(assert (=> b!580120 (= e!350563 (>= (size!4531 input!2705) (size!4531 lt!245578)))))

(declare-fun b!580117 () Bool)

(assert (=> b!580117 (= e!350561 e!350562)))

(declare-fun res!249728 () Bool)

(assert (=> b!580117 (=> (not res!249728) (not e!350562))))

(assert (=> b!580117 (= res!249728 (not ((_ is Nil!5691) input!2705)))))

(declare-fun b!580119 () Bool)

(assert (=> b!580119 (= e!350562 (isPrefix!739 (tail!757 lt!245578) (tail!757 input!2705)))))

(assert (= (and d!203946 (not res!249731)) b!580117))

(assert (= (and b!580117 res!249728) b!580118))

(assert (= (and b!580118 res!249729) b!580119))

(assert (= (and d!203946 (not res!249730)) b!580120))

(assert (=> b!580118 m!838587))

(assert (=> b!580118 m!838037))

(assert (=> b!580120 m!838197))

(assert (=> b!580120 m!837993))

(assert (=> b!580119 m!838593))

(assert (=> b!580119 m!838031))

(assert (=> b!580119 m!838593))

(assert (=> b!580119 m!838031))

(declare-fun m!838883 () Bool)

(assert (=> b!580119 m!838883))

(assert (=> d!203748 d!203946))

(declare-fun b!580122 () Bool)

(declare-fun res!249733 () Bool)

(declare-fun e!350565 () Bool)

(assert (=> b!580122 (=> (not res!249733) (not e!350565))))

(assert (=> b!580122 (= res!249733 (= (head!1227 (tail!757 input!2705)) (head!1227 (tail!757 lt!245595))))))

(declare-fun d!203948 () Bool)

(declare-fun e!350566 () Bool)

(assert (=> d!203948 e!350566))

(declare-fun res!249734 () Bool)

(assert (=> d!203948 (=> res!249734 e!350566)))

(declare-fun lt!245847 () Bool)

(assert (=> d!203948 (= res!249734 (not lt!245847))))

(declare-fun e!350564 () Bool)

(assert (=> d!203948 (= lt!245847 e!350564)))

(declare-fun res!249735 () Bool)

(assert (=> d!203948 (=> res!249735 e!350564)))

(assert (=> d!203948 (= res!249735 ((_ is Nil!5691) (tail!757 input!2705)))))

(assert (=> d!203948 (= (isPrefix!739 (tail!757 input!2705) (tail!757 lt!245595)) lt!245847)))

(declare-fun b!580124 () Bool)

(assert (=> b!580124 (= e!350566 (>= (size!4531 (tail!757 lt!245595)) (size!4531 (tail!757 input!2705))))))

(declare-fun b!580121 () Bool)

(assert (=> b!580121 (= e!350564 e!350565)))

(declare-fun res!249732 () Bool)

(assert (=> b!580121 (=> (not res!249732) (not e!350565))))

(assert (=> b!580121 (= res!249732 (not ((_ is Nil!5691) (tail!757 lt!245595))))))

(declare-fun b!580123 () Bool)

(assert (=> b!580123 (= e!350565 (isPrefix!739 (tail!757 (tail!757 input!2705)) (tail!757 (tail!757 lt!245595))))))

(assert (= (and d!203948 (not res!249735)) b!580121))

(assert (= (and b!580121 res!249732) b!580122))

(assert (= (and b!580122 res!249733) b!580123))

(assert (= (and d!203948 (not res!249734)) b!580124))

(assert (=> b!580122 m!838031))

(declare-fun m!838885 () Bool)

(assert (=> b!580122 m!838885))

(assert (=> b!580122 m!838547))

(declare-fun m!838887 () Bool)

(assert (=> b!580122 m!838887))

(assert (=> b!580124 m!838547))

(declare-fun m!838889 () Bool)

(assert (=> b!580124 m!838889))

(assert (=> b!580124 m!838031))

(declare-fun m!838891 () Bool)

(assert (=> b!580124 m!838891))

(assert (=> b!580123 m!838031))

(declare-fun m!838893 () Bool)

(assert (=> b!580123 m!838893))

(assert (=> b!580123 m!838547))

(declare-fun m!838895 () Bool)

(assert (=> b!580123 m!838895))

(assert (=> b!580123 m!838893))

(assert (=> b!580123 m!838895))

(declare-fun m!838897 () Bool)

(assert (=> b!580123 m!838897))

(assert (=> b!579907 d!203948))

(assert (=> b!579907 d!203904))

(declare-fun d!203950 () Bool)

(assert (=> d!203950 (= (tail!757 lt!245595) (t!77820 lt!245595))))

(assert (=> b!579907 d!203950))

(assert (=> d!203640 d!203636))

(declare-fun d!203952 () Bool)

(assert (=> d!203952 (not (matchR!586 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) input!2705))))

(assert (=> d!203952 true))

(declare-fun _$56!329 () Unit!10309)

(assert (=> d!203952 (= (choose!4159 thiss!22590 rules!3103 (rule!1859 token!491) input!2705 lt!245595 (rule!1859 (_1!3600 (v!16320 lt!245592)))) _$56!329)))

(declare-fun bs!69671 () Bool)

(assert (= bs!69671 d!203952))

(assert (=> bs!69671 m!837909))

(assert (=> d!203640 d!203952))

(assert (=> d!203640 d!203806))

(declare-fun b!580153 () Bool)

(declare-fun e!350588 () tuple2!6676)

(assert (=> b!580153 (= e!350588 (tuple2!6677 Nil!5691 input!2705))))

(declare-fun b!580154 () Bool)

(declare-fun e!350584 () tuple2!6676)

(declare-fun e!350583 () tuple2!6676)

(assert (=> b!580154 (= e!350584 e!350583)))

(declare-fun c!108579 () Bool)

(assert (=> b!580154 (= c!108579 (= (size!4531 Nil!5691) (size!4531 input!2705)))))

(declare-fun bm!40013 () Bool)

(declare-fun call!40018 () List!5701)

(assert (=> bm!40013 (= call!40018 (tail!757 input!2705))))

(declare-fun b!580155 () Bool)

(declare-fun lt!245925 () tuple2!6676)

(assert (=> b!580155 (= e!350588 lt!245925)))

(declare-fun b!580156 () Bool)

(declare-fun e!350585 () tuple2!6676)

(declare-fun call!40021 () tuple2!6676)

(assert (=> b!580156 (= e!350585 call!40021)))

(declare-fun b!580157 () Bool)

(assert (=> b!580157 (= e!350585 e!350588)))

(assert (=> b!580157 (= lt!245925 call!40021)))

(declare-fun c!108576 () Bool)

(assert (=> b!580157 (= c!108576 (isEmpty!4110 (_1!3602 lt!245925)))))

(declare-fun b!580158 () Bool)

(declare-fun e!350586 () Bool)

(declare-fun e!350589 () Bool)

(assert (=> b!580158 (= e!350586 e!350589)))

(declare-fun res!249740 () Bool)

(assert (=> b!580158 (=> res!249740 e!350589)))

(declare-fun lt!245918 () tuple2!6676)

(assert (=> b!580158 (= res!249740 (isEmpty!4110 (_1!3602 lt!245918)))))

(declare-fun bm!40014 () Bool)

(declare-fun call!40023 () Bool)

(assert (=> bm!40014 (= call!40023 (nullable!390 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun bm!40015 () Bool)

(declare-fun call!40019 () Unit!10309)

(assert (=> bm!40015 (= call!40019 (lemmaIsPrefixRefl!477 input!2705 input!2705))))

(declare-fun b!580159 () Bool)

(declare-fun e!350590 () Unit!10309)

(declare-fun Unit!10325 () Unit!10309)

(assert (=> b!580159 (= e!350590 Unit!10325)))

(declare-fun lt!245917 () Unit!10309)

(assert (=> b!580159 (= lt!245917 call!40019)))

(declare-fun call!40022 () Bool)

(assert (=> b!580159 call!40022))

(declare-fun lt!245911 () Unit!10309)

(assert (=> b!580159 (= lt!245911 lt!245917)))

(declare-fun lt!245923 () Unit!10309)

(declare-fun call!40025 () Unit!10309)

(assert (=> b!580159 (= lt!245923 call!40025)))

(assert (=> b!580159 (= input!2705 Nil!5691)))

(declare-fun lt!245919 () Unit!10309)

(assert (=> b!580159 (= lt!245919 lt!245923)))

(assert (=> b!580159 false))

(declare-fun bm!40016 () Bool)

(declare-fun call!40020 () Regex!1439)

(declare-fun call!40024 () C!3800)

(assert (=> bm!40016 (= call!40020 (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) call!40024))))

(declare-fun bm!40017 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!73 (List!5701 List!5701 List!5701) Unit!10309)

(assert (=> bm!40017 (= call!40025 (lemmaIsPrefixSameLengthThenSameList!73 input!2705 Nil!5691 input!2705))))

(declare-fun b!580160 () Bool)

(assert (=> b!580160 (= e!350584 (tuple2!6677 Nil!5691 input!2705))))

(declare-fun b!580161 () Bool)

(assert (=> b!580161 (= e!350589 (>= (size!4531 (_1!3602 lt!245918)) (size!4531 Nil!5691)))))

(declare-fun bm!40018 () Bool)

(assert (=> bm!40018 (= call!40022 (isPrefix!739 input!2705 input!2705))))

(declare-fun b!580162 () Bool)

(declare-fun e!350587 () tuple2!6676)

(assert (=> b!580162 (= e!350587 (tuple2!6677 Nil!5691 input!2705))))

(declare-fun bm!40019 () Bool)

(assert (=> bm!40019 (= call!40024 (head!1227 input!2705))))

(declare-fun b!580163 () Bool)

(declare-fun c!108577 () Bool)

(assert (=> b!580163 (= c!108577 call!40023)))

(declare-fun lt!245905 () Unit!10309)

(declare-fun lt!245931 () Unit!10309)

(assert (=> b!580163 (= lt!245905 lt!245931)))

(declare-fun lt!245909 () C!3800)

(declare-fun lt!245912 () List!5701)

(assert (=> b!580163 (= (++!1593 (++!1593 Nil!5691 (Cons!5691 lt!245909 Nil!5691)) lt!245912) input!2705)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!56 (List!5701 C!3800 List!5701 List!5701) Unit!10309)

(assert (=> b!580163 (= lt!245931 (lemmaMoveElementToOtherListKeepsConcatEq!56 Nil!5691 lt!245909 lt!245912 input!2705))))

(assert (=> b!580163 (= lt!245912 (tail!757 input!2705))))

(assert (=> b!580163 (= lt!245909 (head!1227 input!2705))))

(declare-fun lt!245914 () Unit!10309)

(declare-fun lt!245913 () Unit!10309)

(assert (=> b!580163 (= lt!245914 lt!245913)))

(assert (=> b!580163 (isPrefix!739 (++!1593 Nil!5691 (Cons!5691 (head!1227 (getSuffix!258 input!2705 Nil!5691)) Nil!5691)) input!2705)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!62 (List!5701 List!5701) Unit!10309)

(assert (=> b!580163 (= lt!245913 (lemmaAddHeadSuffixToPrefixStillPrefix!62 Nil!5691 input!2705))))

(declare-fun lt!245916 () Unit!10309)

(declare-fun lt!245907 () Unit!10309)

(assert (=> b!580163 (= lt!245916 lt!245907)))

(assert (=> b!580163 (= lt!245907 (lemmaAddHeadSuffixToPrefixStillPrefix!62 Nil!5691 input!2705))))

(declare-fun lt!245929 () List!5701)

(assert (=> b!580163 (= lt!245929 (++!1593 Nil!5691 (Cons!5691 (head!1227 input!2705) Nil!5691)))))

(declare-fun lt!245926 () Unit!10309)

(assert (=> b!580163 (= lt!245926 e!350590)))

(declare-fun c!108580 () Bool)

(assert (=> b!580163 (= c!108580 (= (size!4531 Nil!5691) (size!4531 input!2705)))))

(declare-fun lt!245920 () Unit!10309)

(declare-fun lt!245915 () Unit!10309)

(assert (=> b!580163 (= lt!245920 lt!245915)))

(assert (=> b!580163 (<= (size!4531 Nil!5691) (size!4531 input!2705))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!73 (List!5701 List!5701) Unit!10309)

(assert (=> b!580163 (= lt!245915 (lemmaIsPrefixThenSmallerEqSize!73 Nil!5691 input!2705))))

(assert (=> b!580163 (= e!350583 e!350585)))

(declare-fun b!580164 () Bool)

(declare-fun c!108578 () Bool)

(assert (=> b!580164 (= c!108578 call!40023)))

(declare-fun lt!245922 () Unit!10309)

(declare-fun lt!245924 () Unit!10309)

(assert (=> b!580164 (= lt!245922 lt!245924)))

(assert (=> b!580164 (= input!2705 Nil!5691)))

(assert (=> b!580164 (= lt!245924 call!40025)))

(declare-fun lt!245927 () Unit!10309)

(declare-fun lt!245921 () Unit!10309)

(assert (=> b!580164 (= lt!245927 lt!245921)))

(assert (=> b!580164 call!40022))

(assert (=> b!580164 (= lt!245921 call!40019)))

(assert (=> b!580164 (= e!350583 e!350587)))

(declare-fun b!580165 () Bool)

(declare-fun Unit!10326 () Unit!10309)

(assert (=> b!580165 (= e!350590 Unit!10326)))

(declare-fun b!580166 () Bool)

(assert (=> b!580166 (= e!350587 (tuple2!6677 Nil!5691 Nil!5691))))

(declare-fun d!203954 () Bool)

(assert (=> d!203954 e!350586))

(declare-fun res!249741 () Bool)

(assert (=> d!203954 (=> (not res!249741) (not e!350586))))

(assert (=> d!203954 (= res!249741 (= (++!1593 (_1!3602 lt!245918) (_2!3602 lt!245918)) input!2705))))

(assert (=> d!203954 (= lt!245918 e!350584)))

(declare-fun c!108581 () Bool)

(declare-fun lostCause!188 (Regex!1439) Bool)

(assert (=> d!203954 (= c!108581 (lostCause!188 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun lt!245908 () Unit!10309)

(declare-fun Unit!10327 () Unit!10309)

(assert (=> d!203954 (= lt!245908 Unit!10327)))

(assert (=> d!203954 (= (getSuffix!258 input!2705 Nil!5691) input!2705)))

(declare-fun lt!245904 () Unit!10309)

(declare-fun lt!245930 () Unit!10309)

(assert (=> d!203954 (= lt!245904 lt!245930)))

(declare-fun lt!245910 () List!5701)

(assert (=> d!203954 (= input!2705 lt!245910)))

(assert (=> d!203954 (= lt!245930 (lemmaSamePrefixThenSameSuffix!462 Nil!5691 input!2705 Nil!5691 lt!245910 input!2705))))

(assert (=> d!203954 (= lt!245910 (getSuffix!258 input!2705 Nil!5691))))

(declare-fun lt!245906 () Unit!10309)

(declare-fun lt!245928 () Unit!10309)

(assert (=> d!203954 (= lt!245906 lt!245928)))

(assert (=> d!203954 (isPrefix!739 Nil!5691 (++!1593 Nil!5691 input!2705))))

(assert (=> d!203954 (= lt!245928 (lemmaConcatTwoListThenFirstIsPrefix!586 Nil!5691 input!2705))))

(assert (=> d!203954 (validRegex!485 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(assert (=> d!203954 (= (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705)) lt!245918)))

(declare-fun bm!40020 () Bool)

(assert (=> bm!40020 (= call!40021 (findLongestMatchInner!175 call!40020 lt!245929 (+ (size!4531 Nil!5691) 1) call!40018 input!2705 (size!4531 input!2705)))))

(assert (= (and d!203954 c!108581) b!580160))

(assert (= (and d!203954 (not c!108581)) b!580154))

(assert (= (and b!580154 c!108579) b!580164))

(assert (= (and b!580154 (not c!108579)) b!580163))

(assert (= (and b!580164 c!108578) b!580166))

(assert (= (and b!580164 (not c!108578)) b!580162))

(assert (= (and b!580163 c!108580) b!580159))

(assert (= (and b!580163 (not c!108580)) b!580165))

(assert (= (and b!580163 c!108577) b!580157))

(assert (= (and b!580163 (not c!108577)) b!580156))

(assert (= (and b!580157 c!108576) b!580153))

(assert (= (and b!580157 (not c!108576)) b!580155))

(assert (= (or b!580157 b!580156) bm!40019))

(assert (= (or b!580157 b!580156) bm!40013))

(assert (= (or b!580157 b!580156) bm!40016))

(assert (= (or b!580157 b!580156) bm!40020))

(assert (= (or b!580164 b!580159) bm!40018))

(assert (= (or b!580164 b!580159) bm!40017))

(assert (= (or b!580164 b!580163) bm!40014))

(assert (= (or b!580164 b!580159) bm!40015))

(assert (= (and d!203954 res!249741) b!580158))

(assert (= (and b!580158 (not res!249740)) b!580161))

(declare-fun m!838899 () Bool)

(assert (=> b!580158 m!838899))

(declare-fun m!838901 () Bool)

(assert (=> b!580157 m!838901))

(assert (=> bm!40019 m!838037))

(assert (=> bm!40020 m!838197))

(declare-fun m!838903 () Bool)

(assert (=> bm!40020 m!838903))

(assert (=> bm!40018 m!838005))

(assert (=> b!580163 m!838197))

(declare-fun m!838905 () Bool)

(assert (=> b!580163 m!838905))

(declare-fun m!838907 () Bool)

(assert (=> b!580163 m!838907))

(declare-fun m!838909 () Bool)

(assert (=> b!580163 m!838909))

(declare-fun m!838911 () Bool)

(assert (=> b!580163 m!838911))

(declare-fun m!838913 () Bool)

(assert (=> b!580163 m!838913))

(assert (=> b!580163 m!838031))

(declare-fun m!838915 () Bool)

(assert (=> b!580163 m!838915))

(assert (=> b!580163 m!838037))

(declare-fun m!838917 () Bool)

(assert (=> b!580163 m!838917))

(declare-fun m!838919 () Bool)

(assert (=> b!580163 m!838919))

(assert (=> b!580163 m!838909))

(assert (=> b!580163 m!838905))

(assert (=> b!580163 m!838687))

(assert (=> b!580163 m!838917))

(declare-fun m!838921 () Bool)

(assert (=> b!580163 m!838921))

(declare-fun m!838923 () Bool)

(assert (=> b!580163 m!838923))

(declare-fun m!838925 () Bool)

(assert (=> bm!40017 m!838925))

(declare-fun m!838927 () Bool)

(assert (=> b!580161 m!838927))

(assert (=> b!580161 m!838687))

(assert (=> bm!40013 m!838031))

(assert (=> bm!40015 m!837981))

(declare-fun m!838929 () Bool)

(assert (=> d!203954 m!838929))

(assert (=> d!203954 m!838035))

(declare-fun m!838931 () Bool)

(assert (=> d!203954 m!838931))

(assert (=> d!203954 m!838917))

(declare-fun m!838933 () Bool)

(assert (=> d!203954 m!838933))

(declare-fun m!838935 () Bool)

(assert (=> d!203954 m!838935))

(declare-fun m!838937 () Bool)

(assert (=> d!203954 m!838937))

(assert (=> d!203954 m!838933))

(declare-fun m!838939 () Bool)

(assert (=> d!203954 m!838939))

(declare-fun m!838941 () Bool)

(assert (=> bm!40016 m!838941))

(assert (=> bm!40014 m!838043))

(assert (=> b!580020 d!203954))

(declare-fun d!203956 () Bool)

(assert (=> d!203956 (= (isEmpty!4110 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705)))) ((_ is Nil!5691) (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705)))))))

(assert (=> b!580020 d!203956))

(declare-fun d!203958 () Bool)

(declare-fun lt!245934 () Int)

(assert (=> d!203958 (= lt!245934 (size!4531 (list!2367 (seqFromList!1293 (_1!3602 lt!245810)))))))

(declare-fun size!4534 (Conc!1822) Int)

(assert (=> d!203958 (= lt!245934 (size!4534 (c!108452 (seqFromList!1293 (_1!3602 lt!245810)))))))

(assert (=> d!203958 (= (size!4533 (seqFromList!1293 (_1!3602 lt!245810))) lt!245934)))

(declare-fun bs!69672 () Bool)

(assert (= bs!69672 d!203958))

(assert (=> bs!69672 m!838679))

(declare-fun m!838943 () Bool)

(assert (=> bs!69672 m!838943))

(assert (=> bs!69672 m!838943))

(declare-fun m!838945 () Bool)

(assert (=> bs!69672 m!838945))

(declare-fun m!838947 () Bool)

(assert (=> bs!69672 m!838947))

(assert (=> b!580020 d!203958))

(declare-fun d!203960 () Bool)

(assert (=> d!203960 (= (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (seqFromList!1293 (_1!3602 lt!245810))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (seqFromList!1293 (_1!3602 lt!245810))))))

(declare-fun b_lambda!22801 () Bool)

(assert (=> (not b_lambda!22801) (not d!203960)))

(declare-fun t!77915 () Bool)

(declare-fun tb!50761 () Bool)

(assert (=> (and b!579433 (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77915) tb!50761))

(declare-fun result!56832 () Bool)

(assert (=> tb!50761 (= result!56832 (inv!21 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (seqFromList!1293 (_1!3602 lt!245810)))))))

(declare-fun m!838949 () Bool)

(assert (=> tb!50761 m!838949))

(assert (=> d!203960 t!77915))

(declare-fun b_and!57005 () Bool)

(assert (= b_and!56987 (and (=> t!77915 result!56832) b_and!57005)))

(declare-fun tb!50763 () Bool)

(declare-fun t!77917 () Bool)

(assert (=> (and b!579460 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77917) tb!50763))

(declare-fun result!56834 () Bool)

(assert (= result!56834 result!56832))

(assert (=> d!203960 t!77917))

(declare-fun b_and!57007 () Bool)

(assert (= b_and!56989 (and (=> t!77917 result!56834) b_and!57007)))

(declare-fun tb!50765 () Bool)

(declare-fun t!77919 () Bool)

(assert (=> (and b!580076 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77919) tb!50765))

(declare-fun result!56836 () Bool)

(assert (= result!56836 result!56832))

(assert (=> d!203960 t!77919))

(declare-fun b_and!57009 () Bool)

(assert (= b_and!56991 (and (=> t!77919 result!56836) b_and!57009)))

(assert (=> d!203960 m!838679))

(declare-fun m!838951 () Bool)

(assert (=> d!203960 m!838951))

(assert (=> b!580020 d!203960))

(assert (=> b!580020 d!203906))

(declare-fun bs!69673 () Bool)

(declare-fun d!203962 () Bool)

(assert (= bs!69673 (and d!203962 d!203686)))

(declare-fun lambda!15767 () Int)

(assert (=> bs!69673 (= lambda!15767 lambda!15765)))

(declare-fun bs!69674 () Bool)

(assert (= bs!69674 (and d!203962 d!203878)))

(assert (=> bs!69674 (= (and (= (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) (= (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) (= lambda!15767 lambda!15766))))

(declare-fun b!580167 () Bool)

(declare-fun e!350592 () Bool)

(assert (=> b!580167 (= e!350592 true)))

(assert (=> d!203962 e!350592))

(assert (= d!203962 b!580167))

(assert (=> b!580167 (< (dynLambda!3315 order!4653 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (dynLambda!3316 order!4655 lambda!15767))))

(assert (=> b!580167 (< (dynLambda!3317 order!4657 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (dynLambda!3316 order!4655 lambda!15767))))

(assert (=> d!203962 (= (list!2367 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (seqFromList!1293 (_1!3602 lt!245810))))) (list!2367 (seqFromList!1293 (_1!3602 lt!245810))))))

(declare-fun lt!245935 () Unit!10309)

(assert (=> d!203962 (= lt!245935 (ForallOf!112 lambda!15767 (seqFromList!1293 (_1!3602 lt!245810))))))

(assert (=> d!203962 (= (lemmaSemiInverse!208 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (seqFromList!1293 (_1!3602 lt!245810))) lt!245935)))

(declare-fun b_lambda!22803 () Bool)

(assert (=> (not b_lambda!22803) (not d!203962)))

(declare-fun tb!50767 () Bool)

(declare-fun t!77921 () Bool)

(assert (=> (and b!579433 (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77921) tb!50767))

(declare-fun e!350593 () Bool)

(declare-fun tp!181321 () Bool)

(declare-fun b!580168 () Bool)

(assert (=> b!580168 (= e!350593 (and (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (seqFromList!1293 (_1!3602 lt!245810)))))) tp!181321))))

(declare-fun result!56838 () Bool)

(assert (=> tb!50767 (= result!56838 (and (inv!7172 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (seqFromList!1293 (_1!3602 lt!245810))))) e!350593))))

(assert (= tb!50767 b!580168))

(declare-fun m!838953 () Bool)

(assert (=> b!580168 m!838953))

(declare-fun m!838955 () Bool)

(assert (=> tb!50767 m!838955))

(assert (=> d!203962 t!77921))

(declare-fun b_and!57011 () Bool)

(assert (= b_and!56999 (and (=> t!77921 result!56838) b_and!57011)))

(declare-fun tb!50769 () Bool)

(declare-fun t!77923 () Bool)

(assert (=> (and b!579460 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77923) tb!50769))

(declare-fun result!56840 () Bool)

(assert (= result!56840 result!56838))

(assert (=> d!203962 t!77923))

(declare-fun b_and!57013 () Bool)

(assert (= b_and!57001 (and (=> t!77923 result!56840) b_and!57013)))

(declare-fun tb!50771 () Bool)

(declare-fun t!77925 () Bool)

(assert (=> (and b!580076 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77925) tb!50771))

(declare-fun result!56842 () Bool)

(assert (= result!56842 result!56838))

(assert (=> d!203962 t!77925))

(declare-fun b_and!57015 () Bool)

(assert (= b_and!57003 (and (=> t!77925 result!56842) b_and!57015)))

(declare-fun b_lambda!22805 () Bool)

(assert (=> (not b_lambda!22805) (not d!203962)))

(assert (=> d!203962 t!77915))

(declare-fun b_and!57017 () Bool)

(assert (= b_and!57005 (and (=> t!77915 result!56832) b_and!57017)))

(assert (=> d!203962 t!77917))

(declare-fun b_and!57019 () Bool)

(assert (= b_and!57007 (and (=> t!77917 result!56834) b_and!57019)))

(assert (=> d!203962 t!77919))

(declare-fun b_and!57021 () Bool)

(assert (= b_and!57009 (and (=> t!77919 result!56836) b_and!57021)))

(assert (=> d!203962 m!838679))

(assert (=> d!203962 m!838951))

(assert (=> d!203962 m!838679))

(assert (=> d!203962 m!838943))

(assert (=> d!203962 m!838679))

(declare-fun m!838957 () Bool)

(assert (=> d!203962 m!838957))

(declare-fun m!838959 () Bool)

(assert (=> d!203962 m!838959))

(declare-fun m!838961 () Bool)

(assert (=> d!203962 m!838961))

(assert (=> d!203962 m!838951))

(assert (=> d!203962 m!838959))

(assert (=> b!580020 d!203962))

(declare-fun d!203964 () Bool)

(declare-fun e!350596 () Bool)

(assert (=> d!203964 e!350596))

(declare-fun res!249744 () Bool)

(assert (=> d!203964 (=> res!249744 e!350596)))

(assert (=> d!203964 (= res!249744 (isEmpty!4110 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705)))))))

(declare-fun lt!245938 () Unit!10309)

(declare-fun choose!4174 (Regex!1439 List!5701) Unit!10309)

(assert (=> d!203964 (= lt!245938 (choose!4174 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) input!2705))))

(assert (=> d!203964 (validRegex!485 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(assert (=> d!203964 (= (longestMatchIsAcceptedByMatchOrIsEmpty!159 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) input!2705) lt!245938)))

(declare-fun b!580171 () Bool)

(assert (=> b!580171 (= e!350596 (matchR!586 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705)))))))

(assert (= (and d!203964 (not res!249744)) b!580171))

(assert (=> d!203964 m!838197))

(assert (=> d!203964 m!838687))

(assert (=> d!203964 m!838197))

(assert (=> d!203964 m!838689))

(assert (=> d!203964 m!838685))

(assert (=> d!203964 m!838687))

(declare-fun m!838963 () Bool)

(assert (=> d!203964 m!838963))

(assert (=> d!203964 m!838035))

(assert (=> b!580171 m!838687))

(assert (=> b!580171 m!838197))

(assert (=> b!580171 m!838687))

(assert (=> b!580171 m!838197))

(assert (=> b!580171 m!838689))

(assert (=> b!580171 m!838711))

(assert (=> b!580020 d!203964))

(declare-fun d!203966 () Bool)

(assert (=> d!203966 (= (seqFromList!1293 (_1!3602 lt!245810)) (fromListB!565 (_1!3602 lt!245810)))))

(declare-fun bs!69675 () Bool)

(assert (= bs!69675 d!203966))

(declare-fun m!838965 () Bool)

(assert (=> bs!69675 m!838965))

(assert (=> b!580020 d!203966))

(declare-fun d!203968 () Bool)

(declare-fun lt!245939 () Int)

(assert (=> d!203968 (>= lt!245939 0)))

(declare-fun e!350597 () Int)

(assert (=> d!203968 (= lt!245939 e!350597)))

(declare-fun c!108582 () Bool)

(assert (=> d!203968 (= c!108582 ((_ is Nil!5691) Nil!5691))))

(assert (=> d!203968 (= (size!4531 Nil!5691) lt!245939)))

(declare-fun b!580172 () Bool)

(assert (=> b!580172 (= e!350597 0)))

(declare-fun b!580173 () Bool)

(assert (=> b!580173 (= e!350597 (+ 1 (size!4531 (t!77820 Nil!5691))))))

(assert (= (and d!203968 c!108582) b!580172))

(assert (= (and d!203968 (not c!108582)) b!580173))

(declare-fun m!838967 () Bool)

(assert (=> b!580173 m!838967))

(assert (=> b!580020 d!203968))

(declare-fun d!203970 () Bool)

(declare-fun e!350600 () Bool)

(assert (=> d!203970 e!350600))

(declare-fun res!249747 () Bool)

(assert (=> d!203970 (=> (not res!249747) (not e!350600))))

(declare-fun lt!245942 () BalanceConc!3652)

(assert (=> d!203970 (= res!249747 (= (list!2367 lt!245942) lt!245578))))

(declare-fun fromList!270 (List!5701) Conc!1822)

(assert (=> d!203970 (= lt!245942 (BalanceConc!3653 (fromList!270 lt!245578)))))

(assert (=> d!203970 (= (fromListB!565 lt!245578) lt!245942)))

(declare-fun b!580176 () Bool)

(declare-fun isBalanced!511 (Conc!1822) Bool)

(assert (=> b!580176 (= e!350600 (isBalanced!511 (fromList!270 lt!245578)))))

(assert (= (and d!203970 res!249747) b!580176))

(declare-fun m!838969 () Bool)

(assert (=> d!203970 m!838969))

(declare-fun m!838971 () Bool)

(assert (=> d!203970 m!838971))

(assert (=> b!580176 m!838971))

(assert (=> b!580176 m!838971))

(declare-fun m!838973 () Bool)

(assert (=> b!580176 m!838973))

(assert (=> d!203768 d!203970))

(assert (=> d!203884 d!203870))

(assert (=> d!203884 d!203768))

(declare-fun d!203972 () Bool)

(assert (=> d!203972 (= (maxPrefixOneRule!390 thiss!22590 (rule!1859 (_1!3600 (v!16320 lt!245592))) input!2705) (Some!1455 (tuple2!6673 (Token!1947 (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (seqFromList!1293 lt!245578)) (rule!1859 (_1!3600 (v!16320 lt!245592))) (size!4531 lt!245578) lt!245578) (_2!3600 (v!16320 lt!245592)))))))

(assert (=> d!203972 true))

(declare-fun _$59!254 () Unit!10309)

(assert (=> d!203972 (= (choose!4172 thiss!22590 rules!3103 lt!245578 input!2705 (_2!3600 (v!16320 lt!245592)) (rule!1859 (_1!3600 (v!16320 lt!245592)))) _$59!254)))

(declare-fun bs!69676 () Bool)

(assert (= bs!69676 d!203972))

(assert (=> bs!69676 m!837887))

(assert (=> bs!69676 m!837979))

(assert (=> bs!69676 m!837979))

(assert (=> bs!69676 m!838781))

(assert (=> bs!69676 m!837993))

(assert (=> d!203884 d!203972))

(assert (=> d!203884 d!203852))

(assert (=> d!203884 d!203788))

(declare-fun d!203978 () Bool)

(assert (=> d!203978 (= (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (seqFromList!1293 lt!245578)) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (seqFromList!1293 lt!245578)))))

(declare-fun b_lambda!22807 () Bool)

(assert (=> (not b_lambda!22807) (not d!203978)))

(declare-fun t!77927 () Bool)

(declare-fun tb!50773 () Bool)

(assert (=> (and b!579433 (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77927) tb!50773))

(declare-fun result!56844 () Bool)

(assert (=> tb!50773 (= result!56844 (inv!21 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (seqFromList!1293 lt!245578))))))

(declare-fun m!838989 () Bool)

(assert (=> tb!50773 m!838989))

(assert (=> d!203978 t!77927))

(declare-fun b_and!57023 () Bool)

(assert (= b_and!57017 (and (=> t!77927 result!56844) b_and!57023)))

(declare-fun tb!50775 () Bool)

(declare-fun t!77929 () Bool)

(assert (=> (and b!579460 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77929) tb!50775))

(declare-fun result!56846 () Bool)

(assert (= result!56846 result!56844))

(assert (=> d!203978 t!77929))

(declare-fun b_and!57025 () Bool)

(assert (= b_and!57019 (and (=> t!77929 result!56846) b_and!57025)))

(declare-fun t!77931 () Bool)

(declare-fun tb!50777 () Bool)

(assert (=> (and b!580076 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77931) tb!50777))

(declare-fun result!56848 () Bool)

(assert (= result!56848 result!56844))

(assert (=> d!203978 t!77931))

(declare-fun b_and!57027 () Bool)

(assert (= b_and!57021 (and (=> t!77931 result!56848) b_and!57027)))

(assert (=> d!203978 m!837979))

(declare-fun m!838991 () Bool)

(assert (=> d!203978 m!838991))

(assert (=> d!203884 d!203978))

(declare-fun b!580192 () Bool)

(declare-fun res!249757 () Bool)

(declare-fun e!350610 () Bool)

(assert (=> b!580192 (=> (not res!249757) (not e!350610))))

(assert (=> b!580192 (= res!249757 (= (head!1227 (tail!757 lt!245601)) (head!1227 (tail!757 lt!245584))))))

(declare-fun d!203980 () Bool)

(declare-fun e!350611 () Bool)

(assert (=> d!203980 e!350611))

(declare-fun res!249758 () Bool)

(assert (=> d!203980 (=> res!249758 e!350611)))

(declare-fun lt!245944 () Bool)

(assert (=> d!203980 (= res!249758 (not lt!245944))))

(declare-fun e!350609 () Bool)

(assert (=> d!203980 (= lt!245944 e!350609)))

(declare-fun res!249759 () Bool)

(assert (=> d!203980 (=> res!249759 e!350609)))

(assert (=> d!203980 (= res!249759 ((_ is Nil!5691) (tail!757 lt!245601)))))

(assert (=> d!203980 (= (isPrefix!739 (tail!757 lt!245601) (tail!757 lt!245584)) lt!245944)))

(declare-fun b!580194 () Bool)

(assert (=> b!580194 (= e!350611 (>= (size!4531 (tail!757 lt!245584)) (size!4531 (tail!757 lt!245601))))))

(declare-fun b!580191 () Bool)

(assert (=> b!580191 (= e!350609 e!350610)))

(declare-fun res!249756 () Bool)

(assert (=> b!580191 (=> (not res!249756) (not e!350610))))

(assert (=> b!580191 (= res!249756 (not ((_ is Nil!5691) (tail!757 lt!245584))))))

(declare-fun b!580193 () Bool)

(assert (=> b!580193 (= e!350610 (isPrefix!739 (tail!757 (tail!757 lt!245601)) (tail!757 (tail!757 lt!245584))))))

(assert (= (and d!203980 (not res!249759)) b!580191))

(assert (= (and b!580191 res!249756) b!580192))

(assert (= (and b!580192 res!249757) b!580193))

(assert (= (and d!203980 (not res!249758)) b!580194))

(assert (=> b!580192 m!838605))

(declare-fun m!838993 () Bool)

(assert (=> b!580192 m!838993))

(assert (=> b!580192 m!838559))

(declare-fun m!838995 () Bool)

(assert (=> b!580192 m!838995))

(assert (=> b!580194 m!838559))

(declare-fun m!838997 () Bool)

(assert (=> b!580194 m!838997))

(assert (=> b!580194 m!838605))

(declare-fun m!838999 () Bool)

(assert (=> b!580194 m!838999))

(assert (=> b!580193 m!838605))

(declare-fun m!839001 () Bool)

(assert (=> b!580193 m!839001))

(assert (=> b!580193 m!838559))

(declare-fun m!839003 () Bool)

(assert (=> b!580193 m!839003))

(assert (=> b!580193 m!839001))

(assert (=> b!580193 m!839003))

(declare-fun m!839005 () Bool)

(assert (=> b!580193 m!839005))

(assert (=> b!579967 d!203980))

(declare-fun d!203982 () Bool)

(assert (=> d!203982 (= (tail!757 lt!245601) (t!77820 lt!245601))))

(assert (=> b!579967 d!203982))

(declare-fun d!203984 () Bool)

(assert (=> d!203984 (= (tail!757 lt!245584) (t!77820 lt!245584))))

(assert (=> b!579967 d!203984))

(declare-fun d!203986 () Bool)

(assert (=> d!203986 true))

(declare-fun lt!245947 () Bool)

(assert (=> d!203986 (= lt!245947 (rulesValidInductive!398 thiss!22590 rules!3103))))

(declare-fun lambda!15770 () Int)

(declare-fun forall!1537 (List!5702 Int) Bool)

(assert (=> d!203986 (= lt!245947 (forall!1537 rules!3103 lambda!15770))))

(assert (=> d!203986 (= (rulesValid!393 thiss!22590 rules!3103) lt!245947)))

(declare-fun bs!69677 () Bool)

(assert (= bs!69677 d!203986))

(assert (=> bs!69677 m!838201))

(declare-fun m!839007 () Bool)

(assert (=> bs!69677 m!839007))

(assert (=> d!203666 d!203986))

(declare-fun d!203988 () Bool)

(assert (=> d!203988 (= (get!2172 lt!245678) (v!16320 lt!245678))))

(assert (=> b!579642 d!203988))

(declare-fun d!203990 () Bool)

(assert (=> d!203990 (= (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245678))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245678))))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245678))))))))

(declare-fun b_lambda!22809 () Bool)

(assert (=> (not b_lambda!22809) (not d!203990)))

(declare-fun tb!50779 () Bool)

(declare-fun t!77933 () Bool)

(assert (=> (and b!579433 (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))))) t!77933) tb!50779))

(declare-fun result!56850 () Bool)

(assert (=> tb!50779 (= result!56850 (inv!21 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245678))))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245678)))))))))

(declare-fun m!839009 () Bool)

(assert (=> tb!50779 m!839009))

(assert (=> d!203990 t!77933))

(declare-fun b_and!57029 () Bool)

(assert (= b_and!57023 (and (=> t!77933 result!56850) b_and!57029)))

(declare-fun tb!50781 () Bool)

(declare-fun t!77935 () Bool)

(assert (=> (and b!579460 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))))) t!77935) tb!50781))

(declare-fun result!56852 () Bool)

(assert (= result!56852 result!56850))

(assert (=> d!203990 t!77935))

(declare-fun b_and!57031 () Bool)

(assert (= b_and!57025 (and (=> t!77935 result!56852) b_and!57031)))

(declare-fun t!77937 () Bool)

(declare-fun tb!50783 () Bool)

(assert (=> (and b!580076 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))))) t!77937) tb!50783))

(declare-fun result!56854 () Bool)

(assert (= result!56854 result!56850))

(assert (=> d!203990 t!77937))

(declare-fun b_and!57033 () Bool)

(assert (= b_and!57027 (and (=> t!77937 result!56854) b_and!57033)))

(assert (=> d!203990 m!838209))

(declare-fun m!839011 () Bool)

(assert (=> d!203990 m!839011))

(assert (=> b!579642 d!203990))

(declare-fun d!203992 () Bool)

(assert (=> d!203992 (= (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245678)))) (fromListB!565 (originalCharacters!1144 (_1!3600 (get!2172 lt!245678)))))))

(declare-fun bs!69678 () Bool)

(assert (= bs!69678 d!203992))

(declare-fun m!839013 () Bool)

(assert (=> bs!69678 m!839013))

(assert (=> b!579642 d!203992))

(assert (=> d!203894 d!203896))

(declare-fun d!203994 () Bool)

(declare-fun lt!245948 () Bool)

(assert (=> d!203994 (= lt!245948 (select (content!1009 (t!77821 rules!3103)) (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(declare-fun e!350614 () Bool)

(assert (=> d!203994 (= lt!245948 e!350614)))

(declare-fun res!249761 () Bool)

(assert (=> d!203994 (=> (not res!249761) (not e!350614))))

(assert (=> d!203994 (= res!249761 ((_ is Cons!5692) (t!77821 rules!3103)))))

(assert (=> d!203994 (= (contains!1337 (t!77821 rules!3103) (rule!1859 (_1!3600 (v!16320 lt!245592)))) lt!245948)))

(declare-fun b!580197 () Bool)

(declare-fun e!350613 () Bool)

(assert (=> b!580197 (= e!350614 e!350613)))

(declare-fun res!249760 () Bool)

(assert (=> b!580197 (=> res!249760 e!350613)))

(assert (=> b!580197 (= res!249760 (= (h!11093 (t!77821 rules!3103)) (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(declare-fun b!580198 () Bool)

(assert (=> b!580198 (= e!350613 (contains!1337 (t!77821 (t!77821 rules!3103)) (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(assert (= (and d!203994 res!249761) b!580197))

(assert (= (and b!580197 (not res!249760)) b!580198))

(declare-fun m!839015 () Bool)

(assert (=> d!203994 m!839015))

(declare-fun m!839017 () Bool)

(assert (=> d!203994 m!839017))

(declare-fun m!839019 () Bool)

(assert (=> b!580198 m!839019))

(assert (=> b!580051 d!203994))

(declare-fun d!203996 () Bool)

(assert (=> d!203996 (= (isEmpty!4112 lt!245797) (not ((_ is Some!1455) lt!245797)))))

(assert (=> d!203864 d!203996))

(declare-fun b!580200 () Bool)

(declare-fun res!249763 () Bool)

(declare-fun e!350616 () Bool)

(assert (=> b!580200 (=> (not res!249763) (not e!350616))))

(assert (=> b!580200 (= res!249763 (= (head!1227 lt!245595) (head!1227 lt!245595)))))

(declare-fun d!203998 () Bool)

(declare-fun e!350617 () Bool)

(assert (=> d!203998 e!350617))

(declare-fun res!249764 () Bool)

(assert (=> d!203998 (=> res!249764 e!350617)))

(declare-fun lt!245949 () Bool)

(assert (=> d!203998 (= res!249764 (not lt!245949))))

(declare-fun e!350615 () Bool)

(assert (=> d!203998 (= lt!245949 e!350615)))

(declare-fun res!249765 () Bool)

(assert (=> d!203998 (=> res!249765 e!350615)))

(assert (=> d!203998 (= res!249765 ((_ is Nil!5691) lt!245595))))

(assert (=> d!203998 (= (isPrefix!739 lt!245595 lt!245595) lt!245949)))

(declare-fun b!580202 () Bool)

(assert (=> b!580202 (= e!350617 (>= (size!4531 lt!245595) (size!4531 lt!245595)))))

(declare-fun b!580199 () Bool)

(assert (=> b!580199 (= e!350615 e!350616)))

(declare-fun res!249762 () Bool)

(assert (=> b!580199 (=> (not res!249762) (not e!350616))))

(assert (=> b!580199 (= res!249762 (not ((_ is Nil!5691) lt!245595)))))

(declare-fun b!580201 () Bool)

(assert (=> b!580201 (= e!350616 (isPrefix!739 (tail!757 lt!245595) (tail!757 lt!245595)))))

(assert (= (and d!203998 (not res!249765)) b!580199))

(assert (= (and b!580199 res!249762) b!580200))

(assert (= (and b!580200 res!249763) b!580201))

(assert (= (and d!203998 (not res!249764)) b!580202))

(assert (=> b!580200 m!838543))

(assert (=> b!580200 m!838543))

(assert (=> b!580202 m!838545))

(assert (=> b!580202 m!838545))

(assert (=> b!580201 m!838547))

(assert (=> b!580201 m!838547))

(assert (=> b!580201 m!838547))

(assert (=> b!580201 m!838547))

(declare-fun m!839021 () Bool)

(assert (=> b!580201 m!839021))

(assert (=> d!203864 d!203998))

(declare-fun d!204000 () Bool)

(assert (=> d!204000 (isPrefix!739 lt!245595 lt!245595)))

(declare-fun lt!245950 () Unit!10309)

(assert (=> d!204000 (= lt!245950 (choose!4169 lt!245595 lt!245595))))

(assert (=> d!204000 (= (lemmaIsPrefixRefl!477 lt!245595 lt!245595) lt!245950)))

(declare-fun bs!69679 () Bool)

(assert (= bs!69679 d!204000))

(assert (=> bs!69679 m!838629))

(declare-fun m!839023 () Bool)

(assert (=> bs!69679 m!839023))

(assert (=> d!203864 d!204000))

(declare-fun bs!69680 () Bool)

(declare-fun d!204002 () Bool)

(assert (= bs!69680 (and d!204002 d!203986)))

(declare-fun lambda!15773 () Int)

(assert (=> bs!69680 (= lambda!15773 lambda!15770)))

(assert (=> d!204002 true))

(declare-fun lt!245955 () Bool)

(assert (=> d!204002 (= lt!245955 (forall!1537 rules!3103 lambda!15773))))

(declare-fun e!350632 () Bool)

(assert (=> d!204002 (= lt!245955 e!350632)))

(declare-fun res!249770 () Bool)

(assert (=> d!204002 (=> res!249770 e!350632)))

(assert (=> d!204002 (= res!249770 (not ((_ is Cons!5692) rules!3103)))))

(assert (=> d!204002 (= (rulesValidInductive!398 thiss!22590 rules!3103) lt!245955)))

(declare-fun b!580227 () Bool)

(declare-fun e!350633 () Bool)

(assert (=> b!580227 (= e!350632 e!350633)))

(declare-fun res!249771 () Bool)

(assert (=> b!580227 (=> (not res!249771) (not e!350633))))

(assert (=> b!580227 (= res!249771 (ruleValid!315 thiss!22590 (h!11093 rules!3103)))))

(declare-fun b!580228 () Bool)

(assert (=> b!580228 (= e!350633 (rulesValidInductive!398 thiss!22590 (t!77821 rules!3103)))))

(assert (= (and d!204002 (not res!249770)) b!580227))

(assert (= (and b!580227 res!249771) b!580228))

(declare-fun m!839025 () Bool)

(assert (=> d!204002 m!839025))

(declare-fun m!839027 () Bool)

(assert (=> b!580227 m!839027))

(declare-fun m!839029 () Bool)

(assert (=> b!580228 m!839029))

(assert (=> d!203864 d!204002))

(declare-fun b!580229 () Bool)

(declare-fun res!249774 () Bool)

(declare-fun e!350636 () Bool)

(assert (=> b!580229 (=> (not res!249774) (not e!350636))))

(declare-fun lt!245959 () Option!1456)

(assert (=> b!580229 (= res!249774 (= (value!36359 (_1!3600 (get!2172 lt!245959))) (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245959)))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245959)))))))))

(declare-fun b!580230 () Bool)

(declare-fun res!249775 () Bool)

(assert (=> b!580230 (=> (not res!249775) (not e!350636))))

(assert (=> b!580230 (= res!249775 (= (rule!1859 (_1!3600 (get!2172 lt!245959))) (h!11093 rules!3103)))))

(declare-fun b!580231 () Bool)

(declare-fun e!350634 () Bool)

(assert (=> b!580231 (= e!350634 e!350636)))

(declare-fun res!249772 () Bool)

(assert (=> b!580231 (=> (not res!249772) (not e!350636))))

(assert (=> b!580231 (= res!249772 (matchR!586 (regex!1105 (h!11093 rules!3103)) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245959))))))))

(declare-fun b!580232 () Bool)

(declare-fun e!350635 () Bool)

(assert (=> b!580232 (= e!350635 (matchR!586 (regex!1105 (h!11093 rules!3103)) (_1!3602 (findLongestMatchInner!175 (regex!1105 (h!11093 rules!3103)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595)))))))

(declare-fun b!580233 () Bool)

(declare-fun res!249777 () Bool)

(assert (=> b!580233 (=> (not res!249777) (not e!350636))))

(assert (=> b!580233 (= res!249777 (= (++!1593 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245959)))) (_2!3600 (get!2172 lt!245959))) lt!245595))))

(declare-fun b!580234 () Bool)

(declare-fun res!249776 () Bool)

(assert (=> b!580234 (=> (not res!249776) (not e!350636))))

(assert (=> b!580234 (= res!249776 (< (size!4531 (_2!3600 (get!2172 lt!245959))) (size!4531 lt!245595)))))

(declare-fun b!580236 () Bool)

(assert (=> b!580236 (= e!350636 (= (size!4530 (_1!3600 (get!2172 lt!245959))) (size!4531 (originalCharacters!1144 (_1!3600 (get!2172 lt!245959))))))))

(declare-fun b!580237 () Bool)

(declare-fun e!350637 () Option!1456)

(declare-fun lt!245956 () tuple2!6676)

(assert (=> b!580237 (= e!350637 (Some!1455 (tuple2!6673 (Token!1947 (apply!1370 (transformation!1105 (h!11093 rules!3103)) (seqFromList!1293 (_1!3602 lt!245956))) (h!11093 rules!3103) (size!4533 (seqFromList!1293 (_1!3602 lt!245956))) (_1!3602 lt!245956)) (_2!3602 lt!245956))))))

(declare-fun lt!245957 () Unit!10309)

(assert (=> b!580237 (= lt!245957 (longestMatchIsAcceptedByMatchOrIsEmpty!159 (regex!1105 (h!11093 rules!3103)) lt!245595))))

(declare-fun res!249778 () Bool)

(assert (=> b!580237 (= res!249778 (isEmpty!4110 (_1!3602 (findLongestMatchInner!175 (regex!1105 (h!11093 rules!3103)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595)))))))

(assert (=> b!580237 (=> res!249778 e!350635)))

(assert (=> b!580237 e!350635))

(declare-fun lt!245958 () Unit!10309)

(assert (=> b!580237 (= lt!245958 lt!245957)))

(declare-fun lt!245960 () Unit!10309)

(assert (=> b!580237 (= lt!245960 (lemmaSemiInverse!208 (transformation!1105 (h!11093 rules!3103)) (seqFromList!1293 (_1!3602 lt!245956))))))

(declare-fun b!580235 () Bool)

(assert (=> b!580235 (= e!350637 None!1455)))

(declare-fun d!204004 () Bool)

(assert (=> d!204004 e!350634))

(declare-fun res!249773 () Bool)

(assert (=> d!204004 (=> res!249773 e!350634)))

(assert (=> d!204004 (= res!249773 (isEmpty!4112 lt!245959))))

(assert (=> d!204004 (= lt!245959 e!350637)))

(declare-fun c!108597 () Bool)

(assert (=> d!204004 (= c!108597 (isEmpty!4110 (_1!3602 lt!245956)))))

(assert (=> d!204004 (= lt!245956 (findLongestMatch!154 (regex!1105 (h!11093 rules!3103)) lt!245595))))

(assert (=> d!204004 (ruleValid!315 thiss!22590 (h!11093 rules!3103))))

(assert (=> d!204004 (= (maxPrefixOneRule!390 thiss!22590 (h!11093 rules!3103) lt!245595) lt!245959)))

(assert (= (and d!204004 c!108597) b!580235))

(assert (= (and d!204004 (not c!108597)) b!580237))

(assert (= (and b!580237 (not res!249778)) b!580232))

(assert (= (and d!204004 (not res!249773)) b!580231))

(assert (= (and b!580231 res!249772) b!580233))

(assert (= (and b!580233 res!249777) b!580234))

(assert (= (and b!580234 res!249776) b!580230))

(assert (= (and b!580230 res!249775) b!580229))

(assert (= (and b!580229 res!249774) b!580236))

(declare-fun m!839031 () Bool)

(assert (=> b!580229 m!839031))

(declare-fun m!839033 () Bool)

(assert (=> b!580229 m!839033))

(assert (=> b!580229 m!839033))

(declare-fun m!839035 () Bool)

(assert (=> b!580229 m!839035))

(declare-fun m!839037 () Bool)

(assert (=> b!580237 m!839037))

(declare-fun m!839039 () Bool)

(assert (=> b!580237 m!839039))

(declare-fun m!839041 () Bool)

(assert (=> b!580237 m!839041))

(declare-fun m!839043 () Bool)

(assert (=> b!580237 m!839043))

(assert (=> b!580237 m!838687))

(assert (=> b!580237 m!838545))

(declare-fun m!839045 () Bool)

(assert (=> b!580237 m!839045))

(assert (=> b!580237 m!838687))

(assert (=> b!580237 m!839037))

(declare-fun m!839047 () Bool)

(assert (=> b!580237 m!839047))

(assert (=> b!580237 m!838545))

(assert (=> b!580237 m!839037))

(declare-fun m!839049 () Bool)

(assert (=> b!580237 m!839049))

(assert (=> b!580237 m!839037))

(assert (=> b!580234 m!839031))

(declare-fun m!839051 () Bool)

(assert (=> b!580234 m!839051))

(assert (=> b!580234 m!838545))

(assert (=> b!580233 m!839031))

(declare-fun m!839053 () Bool)

(assert (=> b!580233 m!839053))

(assert (=> b!580233 m!839053))

(declare-fun m!839055 () Bool)

(assert (=> b!580233 m!839055))

(assert (=> b!580233 m!839055))

(declare-fun m!839057 () Bool)

(assert (=> b!580233 m!839057))

(assert (=> b!580230 m!839031))

(assert (=> b!580231 m!839031))

(assert (=> b!580231 m!839053))

(assert (=> b!580231 m!839053))

(assert (=> b!580231 m!839055))

(assert (=> b!580231 m!839055))

(declare-fun m!839059 () Bool)

(assert (=> b!580231 m!839059))

(declare-fun m!839061 () Bool)

(assert (=> d!204004 m!839061))

(declare-fun m!839063 () Bool)

(assert (=> d!204004 m!839063))

(declare-fun m!839065 () Bool)

(assert (=> d!204004 m!839065))

(assert (=> d!204004 m!839027))

(assert (=> b!580232 m!838687))

(assert (=> b!580232 m!838545))

(assert (=> b!580232 m!838687))

(assert (=> b!580232 m!838545))

(assert (=> b!580232 m!839045))

(declare-fun m!839067 () Bool)

(assert (=> b!580232 m!839067))

(assert (=> b!580236 m!839031))

(declare-fun m!839069 () Bool)

(assert (=> b!580236 m!839069))

(assert (=> bm!39996 d!204004))

(declare-fun d!204006 () Bool)

(declare-fun e!350638 () Bool)

(assert (=> d!204006 e!350638))

(declare-fun res!249779 () Bool)

(assert (=> d!204006 (=> (not res!249779) (not e!350638))))

(declare-fun lt!245961 () BalanceConc!3652)

(assert (=> d!204006 (= res!249779 (= (list!2367 lt!245961) lt!245601))))

(assert (=> d!204006 (= lt!245961 (BalanceConc!3653 (fromList!270 lt!245601)))))

(assert (=> d!204006 (= (fromListB!565 lt!245601) lt!245961)))

(declare-fun b!580238 () Bool)

(assert (=> b!580238 (= e!350638 (isBalanced!511 (fromList!270 lt!245601)))))

(assert (= (and d!204006 res!249779) b!580238))

(declare-fun m!839071 () Bool)

(assert (=> d!204006 m!839071))

(declare-fun m!839073 () Bool)

(assert (=> d!204006 m!839073))

(assert (=> b!580238 m!839073))

(assert (=> b!580238 m!839073))

(declare-fun m!839075 () Bool)

(assert (=> b!580238 m!839075))

(assert (=> d!203880 d!204006))

(declare-fun d!204008 () Bool)

(declare-fun lt!245962 () Int)

(assert (=> d!204008 (>= lt!245962 0)))

(declare-fun e!350639 () Int)

(assert (=> d!204008 (= lt!245962 e!350639)))

(declare-fun c!108598 () Bool)

(assert (=> d!204008 (= c!108598 ((_ is Nil!5691) (t!77820 (originalCharacters!1144 token!491))))))

(assert (=> d!204008 (= (size!4531 (t!77820 (originalCharacters!1144 token!491))) lt!245962)))

(declare-fun b!580239 () Bool)

(assert (=> b!580239 (= e!350639 0)))

(declare-fun b!580240 () Bool)

(assert (=> b!580240 (= e!350639 (+ 1 (size!4531 (t!77820 (t!77820 (originalCharacters!1144 token!491))))))))

(assert (= (and d!204008 c!108598) b!580239))

(assert (= (and d!204008 (not c!108598)) b!580240))

(declare-fun m!839077 () Bool)

(assert (=> b!580240 m!839077))

(assert (=> b!579800 d!204008))

(declare-fun b!580244 () Bool)

(declare-fun lt!245963 () List!5701)

(declare-fun e!350641 () Bool)

(assert (=> b!580244 (= e!350641 (or (not (= lt!245826 Nil!5691)) (= lt!245963 lt!245601)))))

(declare-fun d!204010 () Bool)

(assert (=> d!204010 e!350641))

(declare-fun res!249780 () Bool)

(assert (=> d!204010 (=> (not res!249780) (not e!350641))))

(assert (=> d!204010 (= res!249780 (= (content!1010 lt!245963) ((_ map or) (content!1010 lt!245601) (content!1010 lt!245826))))))

(declare-fun e!350640 () List!5701)

(assert (=> d!204010 (= lt!245963 e!350640)))

(declare-fun c!108599 () Bool)

(assert (=> d!204010 (= c!108599 ((_ is Nil!5691) lt!245601))))

(assert (=> d!204010 (= (++!1593 lt!245601 lt!245826) lt!245963)))

(declare-fun b!580243 () Bool)

(declare-fun res!249781 () Bool)

(assert (=> b!580243 (=> (not res!249781) (not e!350641))))

(assert (=> b!580243 (= res!249781 (= (size!4531 lt!245963) (+ (size!4531 lt!245601) (size!4531 lt!245826))))))

(declare-fun b!580241 () Bool)

(assert (=> b!580241 (= e!350640 lt!245826)))

(declare-fun b!580242 () Bool)

(assert (=> b!580242 (= e!350640 (Cons!5691 (h!11092 lt!245601) (++!1593 (t!77820 lt!245601) lt!245826)))))

(assert (= (and d!204010 c!108599) b!580241))

(assert (= (and d!204010 (not c!108599)) b!580242))

(assert (= (and d!204010 res!249780) b!580243))

(assert (= (and b!580243 res!249781) b!580244))

(declare-fun m!839079 () Bool)

(assert (=> d!204010 m!839079))

(assert (=> d!204010 m!838667))

(declare-fun m!839081 () Bool)

(assert (=> d!204010 m!839081))

(declare-fun m!839083 () Bool)

(assert (=> b!580243 m!839083))

(assert (=> b!580243 m!837991))

(declare-fun m!839085 () Bool)

(assert (=> b!580243 m!839085))

(declare-fun m!839087 () Bool)

(assert (=> b!580242 m!839087))

(assert (=> d!203886 d!204010))

(declare-fun d!204012 () Bool)

(declare-fun lt!245964 () Int)

(assert (=> d!204012 (>= lt!245964 0)))

(declare-fun e!350642 () Int)

(assert (=> d!204012 (= lt!245964 e!350642)))

(declare-fun c!108600 () Bool)

(assert (=> d!204012 (= c!108600 ((_ is Nil!5691) lt!245595))))

(assert (=> d!204012 (= (size!4531 lt!245595) lt!245964)))

(declare-fun b!580245 () Bool)

(assert (=> b!580245 (= e!350642 0)))

(declare-fun b!580246 () Bool)

(assert (=> b!580246 (= e!350642 (+ 1 (size!4531 (t!77820 lt!245595))))))

(assert (= (and d!204012 c!108600) b!580245))

(assert (= (and d!204012 (not c!108600)) b!580246))

(declare-fun m!839089 () Bool)

(assert (=> b!580246 m!839089))

(assert (=> d!203886 d!204012))

(assert (=> d!203886 d!203836))

(declare-fun d!204014 () Bool)

(assert (=> d!204014 true))

(declare-fun order!4659 () Int)

(declare-fun lambda!15776 () Int)

(declare-fun dynLambda!3321 (Int Int) Int)

(assert (=> d!204014 (< (dynLambda!3315 order!4653 (toValue!1968 (transformation!1105 (rule!1859 token!491)))) (dynLambda!3321 order!4659 lambda!15776))))

(declare-fun Forall2!211 (Int) Bool)

(assert (=> d!204014 (= (equivClasses!411 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) (Forall2!211 lambda!15776))))

(declare-fun bs!69681 () Bool)

(assert (= bs!69681 d!204014))

(declare-fun m!839093 () Bool)

(assert (=> bs!69681 m!839093))

(assert (=> b!579969 d!204014))

(declare-fun d!204016 () Bool)

(assert (=> d!204016 (= (head!1227 input!2705) (h!11092 input!2705))))

(assert (=> b!579757 d!204016))

(declare-fun b!580262 () Bool)

(declare-fun res!249785 () Bool)

(declare-fun e!350651 () Bool)

(assert (=> b!580262 (=> (not res!249785) (not e!350651))))

(assert (=> b!580262 (= res!249785 (= (head!1227 (tail!757 lt!245578)) (head!1227 (tail!757 lt!245587))))))

(declare-fun d!204020 () Bool)

(declare-fun e!350652 () Bool)

(assert (=> d!204020 e!350652))

(declare-fun res!249786 () Bool)

(assert (=> d!204020 (=> res!249786 e!350652)))

(declare-fun lt!245966 () Bool)

(assert (=> d!204020 (= res!249786 (not lt!245966))))

(declare-fun e!350650 () Bool)

(assert (=> d!204020 (= lt!245966 e!350650)))

(declare-fun res!249787 () Bool)

(assert (=> d!204020 (=> res!249787 e!350650)))

(assert (=> d!204020 (= res!249787 ((_ is Nil!5691) (tail!757 lt!245578)))))

(assert (=> d!204020 (= (isPrefix!739 (tail!757 lt!245578) (tail!757 lt!245587)) lt!245966)))

(declare-fun b!580264 () Bool)

(assert (=> b!580264 (= e!350652 (>= (size!4531 (tail!757 lt!245587)) (size!4531 (tail!757 lt!245578))))))

(declare-fun b!580261 () Bool)

(assert (=> b!580261 (= e!350650 e!350651)))

(declare-fun res!249784 () Bool)

(assert (=> b!580261 (=> (not res!249784) (not e!350651))))

(assert (=> b!580261 (= res!249784 (not ((_ is Nil!5691) (tail!757 lt!245587))))))

(declare-fun b!580263 () Bool)

(assert (=> b!580263 (= e!350651 (isPrefix!739 (tail!757 (tail!757 lt!245578)) (tail!757 (tail!757 lt!245587))))))

(assert (= (and d!204020 (not res!249787)) b!580261))

(assert (= (and b!580261 res!249784) b!580262))

(assert (= (and b!580262 res!249785) b!580263))

(assert (= (and d!204020 (not res!249786)) b!580264))

(assert (=> b!580262 m!838593))

(declare-fun m!839101 () Bool)

(assert (=> b!580262 m!839101))

(assert (=> b!580262 m!838595))

(declare-fun m!839103 () Bool)

(assert (=> b!580262 m!839103))

(assert (=> b!580264 m!838595))

(declare-fun m!839105 () Bool)

(assert (=> b!580264 m!839105))

(assert (=> b!580264 m!838593))

(declare-fun m!839107 () Bool)

(assert (=> b!580264 m!839107))

(assert (=> b!580263 m!838593))

(declare-fun m!839109 () Bool)

(assert (=> b!580263 m!839109))

(assert (=> b!580263 m!838595))

(declare-fun m!839111 () Bool)

(assert (=> b!580263 m!839111))

(assert (=> b!580263 m!839109))

(assert (=> b!580263 m!839111))

(declare-fun m!839113 () Bool)

(assert (=> b!580263 m!839113))

(assert (=> b!579962 d!204020))

(declare-fun d!204022 () Bool)

(assert (=> d!204022 (= (tail!757 lt!245578) (t!77820 lt!245578))))

(assert (=> b!579962 d!204022))

(declare-fun d!204025 () Bool)

(assert (=> d!204025 (= (tail!757 lt!245587) (t!77820 lt!245587))))

(assert (=> b!579962 d!204025))

(assert (=> b!579519 d!204016))

(declare-fun b!580265 () Bool)

(declare-fun res!249790 () Bool)

(declare-fun e!350655 () Bool)

(assert (=> b!580265 (=> (not res!249790) (not e!350655))))

(declare-fun lt!245970 () Option!1456)

(assert (=> b!580265 (= res!249790 (= (value!36359 (_1!3600 (get!2172 lt!245970))) (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245970)))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245970)))))))))

(declare-fun b!580266 () Bool)

(declare-fun res!249791 () Bool)

(assert (=> b!580266 (=> (not res!249791) (not e!350655))))

(assert (=> b!580266 (= res!249791 (= (rule!1859 (_1!3600 (get!2172 lt!245970))) (h!11093 rules!3103)))))

(declare-fun b!580267 () Bool)

(declare-fun e!350653 () Bool)

(assert (=> b!580267 (= e!350653 e!350655)))

(declare-fun res!249788 () Bool)

(assert (=> b!580267 (=> (not res!249788) (not e!350655))))

(assert (=> b!580267 (= res!249788 (matchR!586 (regex!1105 (h!11093 rules!3103)) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245970))))))))

(declare-fun b!580268 () Bool)

(declare-fun e!350654 () Bool)

(assert (=> b!580268 (= e!350654 (matchR!586 (regex!1105 (h!11093 rules!3103)) (_1!3602 (findLongestMatchInner!175 (regex!1105 (h!11093 rules!3103)) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705)))))))

(declare-fun b!580269 () Bool)

(declare-fun res!249793 () Bool)

(assert (=> b!580269 (=> (not res!249793) (not e!350655))))

(assert (=> b!580269 (= res!249793 (= (++!1593 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245970)))) (_2!3600 (get!2172 lt!245970))) input!2705))))

(declare-fun b!580270 () Bool)

(declare-fun res!249792 () Bool)

(assert (=> b!580270 (=> (not res!249792) (not e!350655))))

(assert (=> b!580270 (= res!249792 (< (size!4531 (_2!3600 (get!2172 lt!245970))) (size!4531 input!2705)))))

(declare-fun b!580272 () Bool)

(assert (=> b!580272 (= e!350655 (= (size!4530 (_1!3600 (get!2172 lt!245970))) (size!4531 (originalCharacters!1144 (_1!3600 (get!2172 lt!245970))))))))

(declare-fun b!580273 () Bool)

(declare-fun e!350656 () Option!1456)

(declare-fun lt!245967 () tuple2!6676)

(assert (=> b!580273 (= e!350656 (Some!1455 (tuple2!6673 (Token!1947 (apply!1370 (transformation!1105 (h!11093 rules!3103)) (seqFromList!1293 (_1!3602 lt!245967))) (h!11093 rules!3103) (size!4533 (seqFromList!1293 (_1!3602 lt!245967))) (_1!3602 lt!245967)) (_2!3602 lt!245967))))))

(declare-fun lt!245968 () Unit!10309)

(assert (=> b!580273 (= lt!245968 (longestMatchIsAcceptedByMatchOrIsEmpty!159 (regex!1105 (h!11093 rules!3103)) input!2705))))

(declare-fun res!249794 () Bool)

(assert (=> b!580273 (= res!249794 (isEmpty!4110 (_1!3602 (findLongestMatchInner!175 (regex!1105 (h!11093 rules!3103)) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705)))))))

(assert (=> b!580273 (=> res!249794 e!350654)))

(assert (=> b!580273 e!350654))

(declare-fun lt!245969 () Unit!10309)

(assert (=> b!580273 (= lt!245969 lt!245968)))

(declare-fun lt!245971 () Unit!10309)

(assert (=> b!580273 (= lt!245971 (lemmaSemiInverse!208 (transformation!1105 (h!11093 rules!3103)) (seqFromList!1293 (_1!3602 lt!245967))))))

(declare-fun b!580271 () Bool)

(assert (=> b!580271 (= e!350656 None!1455)))

(declare-fun d!204028 () Bool)

(assert (=> d!204028 e!350653))

(declare-fun res!249789 () Bool)

(assert (=> d!204028 (=> res!249789 e!350653)))

(assert (=> d!204028 (= res!249789 (isEmpty!4112 lt!245970))))

(assert (=> d!204028 (= lt!245970 e!350656)))

(declare-fun c!108606 () Bool)

(assert (=> d!204028 (= c!108606 (isEmpty!4110 (_1!3602 lt!245967)))))

(assert (=> d!204028 (= lt!245967 (findLongestMatch!154 (regex!1105 (h!11093 rules!3103)) input!2705))))

(assert (=> d!204028 (ruleValid!315 thiss!22590 (h!11093 rules!3103))))

(assert (=> d!204028 (= (maxPrefixOneRule!390 thiss!22590 (h!11093 rules!3103) input!2705) lt!245970)))

(assert (= (and d!204028 c!108606) b!580271))

(assert (= (and d!204028 (not c!108606)) b!580273))

(assert (= (and b!580273 (not res!249794)) b!580268))

(assert (= (and d!204028 (not res!249789)) b!580267))

(assert (= (and b!580267 res!249788) b!580269))

(assert (= (and b!580269 res!249793) b!580270))

(assert (= (and b!580270 res!249792) b!580266))

(assert (= (and b!580266 res!249791) b!580265))

(assert (= (and b!580265 res!249790) b!580272))

(declare-fun m!839115 () Bool)

(assert (=> b!580265 m!839115))

(declare-fun m!839117 () Bool)

(assert (=> b!580265 m!839117))

(assert (=> b!580265 m!839117))

(declare-fun m!839119 () Bool)

(assert (=> b!580265 m!839119))

(declare-fun m!839121 () Bool)

(assert (=> b!580273 m!839121))

(declare-fun m!839123 () Bool)

(assert (=> b!580273 m!839123))

(declare-fun m!839125 () Bool)

(assert (=> b!580273 m!839125))

(declare-fun m!839127 () Bool)

(assert (=> b!580273 m!839127))

(assert (=> b!580273 m!838687))

(assert (=> b!580273 m!838197))

(declare-fun m!839129 () Bool)

(assert (=> b!580273 m!839129))

(assert (=> b!580273 m!838687))

(assert (=> b!580273 m!839121))

(declare-fun m!839131 () Bool)

(assert (=> b!580273 m!839131))

(assert (=> b!580273 m!838197))

(assert (=> b!580273 m!839121))

(declare-fun m!839133 () Bool)

(assert (=> b!580273 m!839133))

(assert (=> b!580273 m!839121))

(assert (=> b!580270 m!839115))

(declare-fun m!839135 () Bool)

(assert (=> b!580270 m!839135))

(assert (=> b!580270 m!838197))

(assert (=> b!580269 m!839115))

(declare-fun m!839137 () Bool)

(assert (=> b!580269 m!839137))

(assert (=> b!580269 m!839137))

(declare-fun m!839139 () Bool)

(assert (=> b!580269 m!839139))

(assert (=> b!580269 m!839139))

(declare-fun m!839141 () Bool)

(assert (=> b!580269 m!839141))

(assert (=> b!580266 m!839115))

(assert (=> b!580267 m!839115))

(assert (=> b!580267 m!839137))

(assert (=> b!580267 m!839137))

(assert (=> b!580267 m!839139))

(assert (=> b!580267 m!839139))

(declare-fun m!839143 () Bool)

(assert (=> b!580267 m!839143))

(declare-fun m!839145 () Bool)

(assert (=> d!204028 m!839145))

(declare-fun m!839147 () Bool)

(assert (=> d!204028 m!839147))

(declare-fun m!839149 () Bool)

(assert (=> d!204028 m!839149))

(assert (=> d!204028 m!839027))

(assert (=> b!580268 m!838687))

(assert (=> b!580268 m!838197))

(assert (=> b!580268 m!838687))

(assert (=> b!580268 m!838197))

(assert (=> b!580268 m!839129))

(declare-fun m!839151 () Bool)

(assert (=> b!580268 m!839151))

(assert (=> b!580272 m!839115))

(declare-fun m!839153 () Bool)

(assert (=> b!580272 m!839153))

(assert (=> bm!39989 d!204028))

(assert (=> b!580029 d!204012))

(declare-fun d!204034 () Bool)

(assert (=> d!204034 (= (apply!1370 (transformation!1105 (rule!1859 token!491)) (seqFromList!1293 (_1!3602 lt!245818))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) (seqFromList!1293 (_1!3602 lt!245818))))))

(declare-fun b_lambda!22811 () Bool)

(assert (=> (not b_lambda!22811) (not d!204034)))

(declare-fun t!77939 () Bool)

(declare-fun tb!50785 () Bool)

(assert (=> (and b!579433 (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) t!77939) tb!50785))

(declare-fun result!56856 () Bool)

(assert (=> tb!50785 (= result!56856 (inv!21 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) (seqFromList!1293 (_1!3602 lt!245818)))))))

(declare-fun m!839155 () Bool)

(assert (=> tb!50785 m!839155))

(assert (=> d!204034 t!77939))

(declare-fun b_and!57035 () Bool)

(assert (= b_and!57029 (and (=> t!77939 result!56856) b_and!57035)))

(declare-fun tb!50787 () Bool)

(declare-fun t!77941 () Bool)

(assert (=> (and b!579460 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) t!77941) tb!50787))

(declare-fun result!56858 () Bool)

(assert (= result!56858 result!56856))

(assert (=> d!204034 t!77941))

(declare-fun b_and!57037 () Bool)

(assert (= b_and!57031 (and (=> t!77941 result!56858) b_and!57037)))

(declare-fun t!77943 () Bool)

(declare-fun tb!50789 () Bool)

(assert (=> (and b!580076 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) t!77943) tb!50789))

(declare-fun result!56860 () Bool)

(assert (= result!56860 result!56856))

(assert (=> d!204034 t!77943))

(declare-fun b_and!57039 () Bool)

(assert (= b_and!57033 (and (=> t!77943 result!56860) b_and!57039)))

(assert (=> d!204034 m!838729))

(declare-fun m!839157 () Bool)

(assert (=> d!204034 m!839157))

(assert (=> b!580029 d!204034))

(declare-fun d!204036 () Bool)

(declare-fun lt!245972 () Int)

(assert (=> d!204036 (= lt!245972 (size!4531 (list!2367 (seqFromList!1293 (_1!3602 lt!245818)))))))

(assert (=> d!204036 (= lt!245972 (size!4534 (c!108452 (seqFromList!1293 (_1!3602 lt!245818)))))))

(assert (=> d!204036 (= (size!4533 (seqFromList!1293 (_1!3602 lt!245818))) lt!245972)))

(declare-fun bs!69682 () Bool)

(assert (= bs!69682 d!204036))

(assert (=> bs!69682 m!838729))

(declare-fun m!839159 () Bool)

(assert (=> bs!69682 m!839159))

(assert (=> bs!69682 m!839159))

(declare-fun m!839161 () Bool)

(assert (=> bs!69682 m!839161))

(declare-fun m!839163 () Bool)

(assert (=> bs!69682 m!839163))

(assert (=> b!580029 d!204036))

(declare-fun bs!69683 () Bool)

(declare-fun d!204038 () Bool)

(assert (= bs!69683 (and d!204038 d!203686)))

(declare-fun lambda!15777 () Int)

(assert (=> bs!69683 (= (and (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (= lambda!15777 lambda!15765))))

(declare-fun bs!69684 () Bool)

(assert (= bs!69684 (and d!204038 d!203878)))

(assert (=> bs!69684 (= lambda!15777 lambda!15766)))

(declare-fun bs!69685 () Bool)

(assert (= bs!69685 (and d!204038 d!203962)))

(assert (=> bs!69685 (= (and (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (= lambda!15777 lambda!15767))))

(declare-fun b!580282 () Bool)

(declare-fun e!350662 () Bool)

(assert (=> b!580282 (= e!350662 true)))

(assert (=> d!204038 e!350662))

(assert (= d!204038 b!580282))

(assert (=> b!580282 (< (dynLambda!3315 order!4653 (toValue!1968 (transformation!1105 (rule!1859 token!491)))) (dynLambda!3316 order!4655 lambda!15777))))

(assert (=> b!580282 (< (dynLambda!3317 order!4657 (toChars!1827 (transformation!1105 (rule!1859 token!491)))) (dynLambda!3316 order!4655 lambda!15777))))

(assert (=> d!204038 (= (list!2367 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) (seqFromList!1293 (_1!3602 lt!245818))))) (list!2367 (seqFromList!1293 (_1!3602 lt!245818))))))

(declare-fun lt!245973 () Unit!10309)

(assert (=> d!204038 (= lt!245973 (ForallOf!112 lambda!15777 (seqFromList!1293 (_1!3602 lt!245818))))))

(assert (=> d!204038 (= (lemmaSemiInverse!208 (transformation!1105 (rule!1859 token!491)) (seqFromList!1293 (_1!3602 lt!245818))) lt!245973)))

(declare-fun b_lambda!22813 () Bool)

(assert (=> (not b_lambda!22813) (not d!204038)))

(declare-fun t!77945 () Bool)

(declare-fun tb!50791 () Bool)

(assert (=> (and b!579433 (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) t!77945) tb!50791))

(declare-fun tp!181322 () Bool)

(declare-fun b!580285 () Bool)

(declare-fun e!350664 () Bool)

(assert (=> b!580285 (= e!350664 (and (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) (seqFromList!1293 (_1!3602 lt!245818)))))) tp!181322))))

(declare-fun result!56862 () Bool)

(assert (=> tb!50791 (= result!56862 (and (inv!7172 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) (seqFromList!1293 (_1!3602 lt!245818))))) e!350664))))

(assert (= tb!50791 b!580285))

(declare-fun m!839177 () Bool)

(assert (=> b!580285 m!839177))

(declare-fun m!839179 () Bool)

(assert (=> tb!50791 m!839179))

(assert (=> d!204038 t!77945))

(declare-fun b_and!57041 () Bool)

(assert (= b_and!57011 (and (=> t!77945 result!56862) b_and!57041)))

(declare-fun t!77947 () Bool)

(declare-fun tb!50793 () Bool)

(assert (=> (and b!579460 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) t!77947) tb!50793))

(declare-fun result!56864 () Bool)

(assert (= result!56864 result!56862))

(assert (=> d!204038 t!77947))

(declare-fun b_and!57043 () Bool)

(assert (= b_and!57013 (and (=> t!77947 result!56864) b_and!57043)))

(declare-fun t!77949 () Bool)

(declare-fun tb!50795 () Bool)

(assert (=> (and b!580076 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) t!77949) tb!50795))

(declare-fun result!56866 () Bool)

(assert (= result!56866 result!56862))

(assert (=> d!204038 t!77949))

(declare-fun b_and!57045 () Bool)

(assert (= b_and!57015 (and (=> t!77949 result!56866) b_and!57045)))

(declare-fun b_lambda!22815 () Bool)

(assert (=> (not b_lambda!22815) (not d!204038)))

(assert (=> d!204038 t!77939))

(declare-fun b_and!57047 () Bool)

(assert (= b_and!57035 (and (=> t!77939 result!56856) b_and!57047)))

(assert (=> d!204038 t!77941))

(declare-fun b_and!57049 () Bool)

(assert (= b_and!57037 (and (=> t!77941 result!56858) b_and!57049)))

(assert (=> d!204038 t!77943))

(declare-fun b_and!57051 () Bool)

(assert (= b_and!57039 (and (=> t!77943 result!56860) b_and!57051)))

(assert (=> d!204038 m!838729))

(assert (=> d!204038 m!839157))

(assert (=> d!204038 m!838729))

(assert (=> d!204038 m!839159))

(assert (=> d!204038 m!838729))

(declare-fun m!839181 () Bool)

(assert (=> d!204038 m!839181))

(declare-fun m!839183 () Bool)

(assert (=> d!204038 m!839183))

(declare-fun m!839185 () Bool)

(assert (=> d!204038 m!839185))

(assert (=> d!204038 m!839157))

(assert (=> d!204038 m!839183))

(assert (=> b!580029 d!204038))

(assert (=> b!580029 d!203968))

(declare-fun d!204046 () Bool)

(assert (=> d!204046 (= (seqFromList!1293 (_1!3602 lt!245818)) (fromListB!565 (_1!3602 lt!245818)))))

(declare-fun bs!69686 () Bool)

(assert (= bs!69686 d!204046))

(declare-fun m!839187 () Bool)

(assert (=> bs!69686 m!839187))

(assert (=> b!580029 d!204046))

(declare-fun d!204048 () Bool)

(assert (=> d!204048 (= (isEmpty!4110 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595)))) ((_ is Nil!5691) (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595)))))))

(assert (=> b!580029 d!204048))

(declare-fun b!580286 () Bool)

(declare-fun e!350670 () tuple2!6676)

(assert (=> b!580286 (= e!350670 (tuple2!6677 Nil!5691 lt!245595))))

(declare-fun b!580287 () Bool)

(declare-fun e!350666 () tuple2!6676)

(declare-fun e!350665 () tuple2!6676)

(assert (=> b!580287 (= e!350666 e!350665)))

(declare-fun c!108615 () Bool)

(assert (=> b!580287 (= c!108615 (= (size!4531 Nil!5691) (size!4531 lt!245595)))))

(declare-fun bm!40034 () Bool)

(declare-fun call!40039 () List!5701)

(assert (=> bm!40034 (= call!40039 (tail!757 lt!245595))))

(declare-fun b!580288 () Bool)

(declare-fun lt!245995 () tuple2!6676)

(assert (=> b!580288 (= e!350670 lt!245995)))

(declare-fun b!580289 () Bool)

(declare-fun e!350667 () tuple2!6676)

(declare-fun call!40042 () tuple2!6676)

(assert (=> b!580289 (= e!350667 call!40042)))

(declare-fun b!580290 () Bool)

(assert (=> b!580290 (= e!350667 e!350670)))

(assert (=> b!580290 (= lt!245995 call!40042)))

(declare-fun c!108612 () Bool)

(assert (=> b!580290 (= c!108612 (isEmpty!4110 (_1!3602 lt!245995)))))

(declare-fun b!580291 () Bool)

(declare-fun e!350668 () Bool)

(declare-fun e!350671 () Bool)

(assert (=> b!580291 (= e!350668 e!350671)))

(declare-fun res!249795 () Bool)

(assert (=> b!580291 (=> res!249795 e!350671)))

(declare-fun lt!245988 () tuple2!6676)

(assert (=> b!580291 (= res!249795 (isEmpty!4110 (_1!3602 lt!245988)))))

(declare-fun bm!40035 () Bool)

(declare-fun call!40044 () Bool)

(assert (=> bm!40035 (= call!40044 (nullable!390 (regex!1105 (rule!1859 token!491))))))

(declare-fun bm!40036 () Bool)

(declare-fun call!40040 () Unit!10309)

(assert (=> bm!40036 (= call!40040 (lemmaIsPrefixRefl!477 lt!245595 lt!245595))))

(declare-fun b!580292 () Bool)

(declare-fun e!350672 () Unit!10309)

(declare-fun Unit!10330 () Unit!10309)

(assert (=> b!580292 (= e!350672 Unit!10330)))

(declare-fun lt!245987 () Unit!10309)

(assert (=> b!580292 (= lt!245987 call!40040)))

(declare-fun call!40043 () Bool)

(assert (=> b!580292 call!40043))

(declare-fun lt!245981 () Unit!10309)

(assert (=> b!580292 (= lt!245981 lt!245987)))

(declare-fun lt!245993 () Unit!10309)

(declare-fun call!40046 () Unit!10309)

(assert (=> b!580292 (= lt!245993 call!40046)))

(assert (=> b!580292 (= lt!245595 Nil!5691)))

(declare-fun lt!245989 () Unit!10309)

(assert (=> b!580292 (= lt!245989 lt!245993)))

(assert (=> b!580292 false))

(declare-fun bm!40037 () Bool)

(declare-fun call!40041 () Regex!1439)

(declare-fun call!40045 () C!3800)

(assert (=> bm!40037 (= call!40041 (derivativeStep!303 (regex!1105 (rule!1859 token!491)) call!40045))))

(declare-fun bm!40038 () Bool)

(assert (=> bm!40038 (= call!40046 (lemmaIsPrefixSameLengthThenSameList!73 lt!245595 Nil!5691 lt!245595))))

(declare-fun b!580293 () Bool)

(assert (=> b!580293 (= e!350666 (tuple2!6677 Nil!5691 lt!245595))))

(declare-fun b!580294 () Bool)

(assert (=> b!580294 (= e!350671 (>= (size!4531 (_1!3602 lt!245988)) (size!4531 Nil!5691)))))

(declare-fun bm!40039 () Bool)

(assert (=> bm!40039 (= call!40043 (isPrefix!739 lt!245595 lt!245595))))

(declare-fun b!580295 () Bool)

(declare-fun e!350669 () tuple2!6676)

(assert (=> b!580295 (= e!350669 (tuple2!6677 Nil!5691 lt!245595))))

(declare-fun bm!40040 () Bool)

(assert (=> bm!40040 (= call!40045 (head!1227 lt!245595))))

(declare-fun b!580296 () Bool)

(declare-fun c!108613 () Bool)

(assert (=> b!580296 (= c!108613 call!40044)))

(declare-fun lt!245975 () Unit!10309)

(declare-fun lt!246001 () Unit!10309)

(assert (=> b!580296 (= lt!245975 lt!246001)))

(declare-fun lt!245979 () C!3800)

(declare-fun lt!245982 () List!5701)

(assert (=> b!580296 (= (++!1593 (++!1593 Nil!5691 (Cons!5691 lt!245979 Nil!5691)) lt!245982) lt!245595)))

(assert (=> b!580296 (= lt!246001 (lemmaMoveElementToOtherListKeepsConcatEq!56 Nil!5691 lt!245979 lt!245982 lt!245595))))

(assert (=> b!580296 (= lt!245982 (tail!757 lt!245595))))

(assert (=> b!580296 (= lt!245979 (head!1227 lt!245595))))

(declare-fun lt!245984 () Unit!10309)

(declare-fun lt!245983 () Unit!10309)

(assert (=> b!580296 (= lt!245984 lt!245983)))

(assert (=> b!580296 (isPrefix!739 (++!1593 Nil!5691 (Cons!5691 (head!1227 (getSuffix!258 lt!245595 Nil!5691)) Nil!5691)) lt!245595)))

(assert (=> b!580296 (= lt!245983 (lemmaAddHeadSuffixToPrefixStillPrefix!62 Nil!5691 lt!245595))))

(declare-fun lt!245986 () Unit!10309)

(declare-fun lt!245977 () Unit!10309)

(assert (=> b!580296 (= lt!245986 lt!245977)))

(assert (=> b!580296 (= lt!245977 (lemmaAddHeadSuffixToPrefixStillPrefix!62 Nil!5691 lt!245595))))

(declare-fun lt!245999 () List!5701)

(assert (=> b!580296 (= lt!245999 (++!1593 Nil!5691 (Cons!5691 (head!1227 lt!245595) Nil!5691)))))

(declare-fun lt!245996 () Unit!10309)

(assert (=> b!580296 (= lt!245996 e!350672)))

(declare-fun c!108616 () Bool)

(assert (=> b!580296 (= c!108616 (= (size!4531 Nil!5691) (size!4531 lt!245595)))))

(declare-fun lt!245990 () Unit!10309)

(declare-fun lt!245985 () Unit!10309)

(assert (=> b!580296 (= lt!245990 lt!245985)))

(assert (=> b!580296 (<= (size!4531 Nil!5691) (size!4531 lt!245595))))

(assert (=> b!580296 (= lt!245985 (lemmaIsPrefixThenSmallerEqSize!73 Nil!5691 lt!245595))))

(assert (=> b!580296 (= e!350665 e!350667)))

(declare-fun b!580297 () Bool)

(declare-fun c!108614 () Bool)

(assert (=> b!580297 (= c!108614 call!40044)))

(declare-fun lt!245992 () Unit!10309)

(declare-fun lt!245994 () Unit!10309)

(assert (=> b!580297 (= lt!245992 lt!245994)))

(assert (=> b!580297 (= lt!245595 Nil!5691)))

(assert (=> b!580297 (= lt!245994 call!40046)))

(declare-fun lt!245997 () Unit!10309)

(declare-fun lt!245991 () Unit!10309)

(assert (=> b!580297 (= lt!245997 lt!245991)))

(assert (=> b!580297 call!40043))

(assert (=> b!580297 (= lt!245991 call!40040)))

(assert (=> b!580297 (= e!350665 e!350669)))

(declare-fun b!580298 () Bool)

(declare-fun Unit!10332 () Unit!10309)

(assert (=> b!580298 (= e!350672 Unit!10332)))

(declare-fun b!580299 () Bool)

(assert (=> b!580299 (= e!350669 (tuple2!6677 Nil!5691 Nil!5691))))

(declare-fun d!204050 () Bool)

(assert (=> d!204050 e!350668))

(declare-fun res!249796 () Bool)

(assert (=> d!204050 (=> (not res!249796) (not e!350668))))

(assert (=> d!204050 (= res!249796 (= (++!1593 (_1!3602 lt!245988) (_2!3602 lt!245988)) lt!245595))))

(assert (=> d!204050 (= lt!245988 e!350666)))

(declare-fun c!108617 () Bool)

(assert (=> d!204050 (= c!108617 (lostCause!188 (regex!1105 (rule!1859 token!491))))))

(declare-fun lt!245978 () Unit!10309)

(declare-fun Unit!10333 () Unit!10309)

(assert (=> d!204050 (= lt!245978 Unit!10333)))

(assert (=> d!204050 (= (getSuffix!258 lt!245595 Nil!5691) lt!245595)))

(declare-fun lt!245974 () Unit!10309)

(declare-fun lt!246000 () Unit!10309)

(assert (=> d!204050 (= lt!245974 lt!246000)))

(declare-fun lt!245980 () List!5701)

(assert (=> d!204050 (= lt!245595 lt!245980)))

(assert (=> d!204050 (= lt!246000 (lemmaSamePrefixThenSameSuffix!462 Nil!5691 lt!245595 Nil!5691 lt!245980 lt!245595))))

(assert (=> d!204050 (= lt!245980 (getSuffix!258 lt!245595 Nil!5691))))

(declare-fun lt!245976 () Unit!10309)

(declare-fun lt!245998 () Unit!10309)

(assert (=> d!204050 (= lt!245976 lt!245998)))

(assert (=> d!204050 (isPrefix!739 Nil!5691 (++!1593 Nil!5691 lt!245595))))

(assert (=> d!204050 (= lt!245998 (lemmaConcatTwoListThenFirstIsPrefix!586 Nil!5691 lt!245595))))

(assert (=> d!204050 (validRegex!485 (regex!1105 (rule!1859 token!491)))))

(assert (=> d!204050 (= (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595)) lt!245988)))

(declare-fun bm!40041 () Bool)

(assert (=> bm!40041 (= call!40042 (findLongestMatchInner!175 call!40041 lt!245999 (+ (size!4531 Nil!5691) 1) call!40039 lt!245595 (size!4531 lt!245595)))))

(assert (= (and d!204050 c!108617) b!580293))

(assert (= (and d!204050 (not c!108617)) b!580287))

(assert (= (and b!580287 c!108615) b!580297))

(assert (= (and b!580287 (not c!108615)) b!580296))

(assert (= (and b!580297 c!108614) b!580299))

(assert (= (and b!580297 (not c!108614)) b!580295))

(assert (= (and b!580296 c!108616) b!580292))

(assert (= (and b!580296 (not c!108616)) b!580298))

(assert (= (and b!580296 c!108613) b!580290))

(assert (= (and b!580296 (not c!108613)) b!580289))

(assert (= (and b!580290 c!108612) b!580286))

(assert (= (and b!580290 (not c!108612)) b!580288))

(assert (= (or b!580290 b!580289) bm!40040))

(assert (= (or b!580290 b!580289) bm!40034))

(assert (= (or b!580290 b!580289) bm!40037))

(assert (= (or b!580290 b!580289) bm!40041))

(assert (= (or b!580297 b!580292) bm!40039))

(assert (= (or b!580297 b!580292) bm!40038))

(assert (= (or b!580297 b!580296) bm!40035))

(assert (= (or b!580297 b!580292) bm!40036))

(assert (= (and d!204050 res!249796) b!580291))

(assert (= (and b!580291 (not res!249795)) b!580294))

(declare-fun m!839189 () Bool)

(assert (=> b!580291 m!839189))

(declare-fun m!839191 () Bool)

(assert (=> b!580290 m!839191))

(assert (=> bm!40040 m!838543))

(assert (=> bm!40041 m!838545))

(declare-fun m!839193 () Bool)

(assert (=> bm!40041 m!839193))

(assert (=> bm!40039 m!838629))

(assert (=> b!580296 m!838545))

(declare-fun m!839195 () Bool)

(assert (=> b!580296 m!839195))

(declare-fun m!839197 () Bool)

(assert (=> b!580296 m!839197))

(declare-fun m!839199 () Bool)

(assert (=> b!580296 m!839199))

(declare-fun m!839201 () Bool)

(assert (=> b!580296 m!839201))

(declare-fun m!839203 () Bool)

(assert (=> b!580296 m!839203))

(assert (=> b!580296 m!838547))

(declare-fun m!839205 () Bool)

(assert (=> b!580296 m!839205))

(assert (=> b!580296 m!838543))

(declare-fun m!839207 () Bool)

(assert (=> b!580296 m!839207))

(declare-fun m!839209 () Bool)

(assert (=> b!580296 m!839209))

(assert (=> b!580296 m!839199))

(assert (=> b!580296 m!839195))

(assert (=> b!580296 m!838687))

(assert (=> b!580296 m!839207))

(declare-fun m!839211 () Bool)

(assert (=> b!580296 m!839211))

(declare-fun m!839213 () Bool)

(assert (=> b!580296 m!839213))

(declare-fun m!839215 () Bool)

(assert (=> bm!40038 m!839215))

(declare-fun m!839217 () Bool)

(assert (=> b!580294 m!839217))

(assert (=> b!580294 m!838687))

(assert (=> bm!40034 m!838547))

(assert (=> bm!40036 m!838631))

(declare-fun m!839219 () Bool)

(assert (=> d!204050 m!839219))

(assert (=> d!204050 m!838409))

(declare-fun m!839221 () Bool)

(assert (=> d!204050 m!839221))

(assert (=> d!204050 m!839207))

(declare-fun m!839223 () Bool)

(assert (=> d!204050 m!839223))

(declare-fun m!839225 () Bool)

(assert (=> d!204050 m!839225))

(declare-fun m!839227 () Bool)

(assert (=> d!204050 m!839227))

(assert (=> d!204050 m!839223))

(declare-fun m!839231 () Bool)

(assert (=> d!204050 m!839231))

(declare-fun m!839233 () Bool)

(assert (=> bm!40037 m!839233))

(assert (=> bm!40035 m!838415))

(assert (=> b!580029 d!204050))

(declare-fun d!204056 () Bool)

(declare-fun e!350676 () Bool)

(assert (=> d!204056 e!350676))

(declare-fun res!249801 () Bool)

(assert (=> d!204056 (=> res!249801 e!350676)))

(assert (=> d!204056 (= res!249801 (isEmpty!4110 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595)))))))

(declare-fun lt!246003 () Unit!10309)

(assert (=> d!204056 (= lt!246003 (choose!4174 (regex!1105 (rule!1859 token!491)) lt!245595))))

(assert (=> d!204056 (validRegex!485 (regex!1105 (rule!1859 token!491)))))

(assert (=> d!204056 (= (longestMatchIsAcceptedByMatchOrIsEmpty!159 (regex!1105 (rule!1859 token!491)) lt!245595) lt!246003)))

(declare-fun b!580304 () Bool)

(assert (=> b!580304 (= e!350676 (matchR!586 (regex!1105 (rule!1859 token!491)) (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595)))))))

(assert (= (and d!204056 (not res!249801)) b!580304))

(assert (=> d!204056 m!838545))

(assert (=> d!204056 m!838687))

(assert (=> d!204056 m!838545))

(assert (=> d!204056 m!838737))

(assert (=> d!204056 m!838735))

(assert (=> d!204056 m!838687))

(declare-fun m!839235 () Bool)

(assert (=> d!204056 m!839235))

(assert (=> d!204056 m!838409))

(assert (=> b!580304 m!838687))

(assert (=> b!580304 m!838545))

(assert (=> b!580304 m!838687))

(assert (=> b!580304 m!838545))

(assert (=> b!580304 m!838737))

(assert (=> b!580304 m!838759))

(assert (=> b!580029 d!204056))

(declare-fun d!204058 () Bool)

(declare-fun c!108620 () Bool)

(assert (=> d!204058 (= c!108620 ((_ is Nil!5691) lt!245799))))

(declare-fun e!350679 () (InoxSet C!3800))

(assert (=> d!204058 (= (content!1010 lt!245799) e!350679)))

(declare-fun b!580309 () Bool)

(assert (=> b!580309 (= e!350679 ((as const (Array C!3800 Bool)) false))))

(declare-fun b!580310 () Bool)

(assert (=> b!580310 (= e!350679 ((_ map or) (store ((as const (Array C!3800 Bool)) false) (h!11092 lt!245799) true) (content!1010 (t!77820 lt!245799))))))

(assert (= (and d!204058 c!108620) b!580309))

(assert (= (and d!204058 (not c!108620)) b!580310))

(declare-fun m!839237 () Bool)

(assert (=> b!580310 m!839237))

(declare-fun m!839239 () Bool)

(assert (=> b!580310 m!839239))

(assert (=> d!203868 d!204058))

(declare-fun d!204060 () Bool)

(declare-fun c!108621 () Bool)

(assert (=> d!204060 (= c!108621 ((_ is Nil!5691) lt!245601))))

(declare-fun e!350680 () (InoxSet C!3800))

(assert (=> d!204060 (= (content!1010 lt!245601) e!350680)))

(declare-fun b!580311 () Bool)

(assert (=> b!580311 (= e!350680 ((as const (Array C!3800 Bool)) false))))

(declare-fun b!580312 () Bool)

(assert (=> b!580312 (= e!350680 ((_ map or) (store ((as const (Array C!3800 Bool)) false) (h!11092 lt!245601) true) (content!1010 (t!77820 lt!245601))))))

(assert (= (and d!204060 c!108621) b!580311))

(assert (= (and d!204060 (not c!108621)) b!580312))

(declare-fun m!839241 () Bool)

(assert (=> b!580312 m!839241))

(declare-fun m!839243 () Bool)

(assert (=> b!580312 m!839243))

(assert (=> d!203868 d!204060))

(declare-fun d!204062 () Bool)

(declare-fun c!108622 () Bool)

(assert (=> d!204062 (= c!108622 ((_ is Nil!5691) suffix!1342))))

(declare-fun e!350681 () (InoxSet C!3800))

(assert (=> d!204062 (= (content!1010 suffix!1342) e!350681)))

(declare-fun b!580313 () Bool)

(assert (=> b!580313 (= e!350681 ((as const (Array C!3800 Bool)) false))))

(declare-fun b!580314 () Bool)

(assert (=> b!580314 (= e!350681 ((_ map or) (store ((as const (Array C!3800 Bool)) false) (h!11092 suffix!1342) true) (content!1010 (t!77820 suffix!1342))))))

(assert (= (and d!204062 c!108622) b!580313))

(assert (= (and d!204062 (not c!108622)) b!580314))

(declare-fun m!839245 () Bool)

(assert (=> b!580314 m!839245))

(declare-fun m!839247 () Bool)

(assert (=> b!580314 m!839247))

(assert (=> d!203868 d!204062))

(assert (=> d!203838 d!203826))

(declare-fun d!204064 () Bool)

(assert (=> d!204064 (isPrefix!739 input!2705 input!2705)))

(assert (=> d!204064 true))

(declare-fun _$45!1285 () Unit!10309)

(assert (=> d!204064 (= (choose!4169 input!2705 input!2705) _$45!1285)))

(declare-fun bs!69688 () Bool)

(assert (= bs!69688 d!204064))

(assert (=> bs!69688 m!838005))

(assert (=> d!203838 d!204064))

(declare-fun d!204066 () Bool)

(assert (=> d!204066 (= (list!2367 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574))) (list!2369 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574)))))))

(declare-fun bs!69689 () Bool)

(assert (= bs!69689 d!204066))

(declare-fun m!839249 () Bool)

(assert (=> bs!69689 m!839249))

(assert (=> d!203878 d!204066))

(declare-fun d!204068 () Bool)

(assert (=> d!204068 (= (list!2367 lt!245574) (list!2369 (c!108452 lt!245574)))))

(declare-fun bs!69690 () Bool)

(assert (= bs!69690 d!204068))

(declare-fun m!839251 () Bool)

(assert (=> bs!69690 m!839251))

(assert (=> d!203878 d!204068))

(declare-fun d!204070 () Bool)

(assert (=> d!204070 (dynLambda!3320 lambda!15766 lt!245574)))

(declare-fun lt!246006 () Unit!10309)

(assert (=> d!204070 (= lt!246006 (choose!4173 lambda!15766 lt!245574))))

(assert (=> d!204070 (Forall!285 lambda!15766)))

(assert (=> d!204070 (= (ForallOf!112 lambda!15766 lt!245574) lt!246006)))

(declare-fun b_lambda!22817 () Bool)

(assert (=> (not b_lambda!22817) (not d!204070)))

(declare-fun bs!69691 () Bool)

(assert (= bs!69691 d!204070))

(declare-fun m!839253 () Bool)

(assert (=> bs!69691 m!839253))

(declare-fun m!839255 () Bool)

(assert (=> bs!69691 m!839255))

(declare-fun m!839257 () Bool)

(assert (=> bs!69691 m!839257))

(assert (=> d!203878 d!204070))

(declare-fun d!204072 () Bool)

(declare-fun lt!246008 () List!5701)

(assert (=> d!204072 (= (++!1593 (t!77820 lt!245601) lt!246008) (tail!757 lt!245595))))

(declare-fun e!350682 () List!5701)

(assert (=> d!204072 (= lt!246008 e!350682)))

(declare-fun c!108623 () Bool)

(assert (=> d!204072 (= c!108623 ((_ is Cons!5691) (t!77820 lt!245601)))))

(assert (=> d!204072 (>= (size!4531 (tail!757 lt!245595)) (size!4531 (t!77820 lt!245601)))))

(assert (=> d!204072 (= (getSuffix!258 (tail!757 lt!245595) (t!77820 lt!245601)) lt!246008)))

(declare-fun b!580315 () Bool)

(assert (=> b!580315 (= e!350682 (getSuffix!258 (tail!757 (tail!757 lt!245595)) (t!77820 (t!77820 lt!245601))))))

(declare-fun b!580316 () Bool)

(assert (=> b!580316 (= e!350682 (tail!757 lt!245595))))

(assert (= (and d!204072 c!108623) b!580315))

(assert (= (and d!204072 (not c!108623)) b!580316))

(declare-fun m!839259 () Bool)

(assert (=> d!204072 m!839259))

(assert (=> d!204072 m!838547))

(assert (=> d!204072 m!838889))

(assert (=> d!204072 m!838579))

(assert (=> b!580315 m!838547))

(assert (=> b!580315 m!838895))

(assert (=> b!580315 m!838895))

(declare-fun m!839261 () Bool)

(assert (=> b!580315 m!839261))

(assert (=> b!580032 d!204072))

(assert (=> b!580032 d!203950))

(declare-fun e!350684 () Bool)

(declare-fun lt!246009 () List!5701)

(declare-fun b!580322 () Bool)

(assert (=> b!580322 (= e!350684 (or (not (= suffix!1342 Nil!5691)) (= lt!246009 (t!77820 lt!245601))))))

(declare-fun d!204074 () Bool)

(assert (=> d!204074 e!350684))

(declare-fun res!249802 () Bool)

(assert (=> d!204074 (=> (not res!249802) (not e!350684))))

(assert (=> d!204074 (= res!249802 (= (content!1010 lt!246009) ((_ map or) (content!1010 (t!77820 lt!245601)) (content!1010 suffix!1342))))))

(declare-fun e!350683 () List!5701)

(assert (=> d!204074 (= lt!246009 e!350683)))

(declare-fun c!108624 () Bool)

(assert (=> d!204074 (= c!108624 ((_ is Nil!5691) (t!77820 lt!245601)))))

(assert (=> d!204074 (= (++!1593 (t!77820 lt!245601) suffix!1342) lt!246009)))

(declare-fun b!580321 () Bool)

(declare-fun res!249803 () Bool)

(assert (=> b!580321 (=> (not res!249803) (not e!350684))))

(assert (=> b!580321 (= res!249803 (= (size!4531 lt!246009) (+ (size!4531 (t!77820 lt!245601)) (size!4531 suffix!1342))))))

(declare-fun b!580319 () Bool)

(assert (=> b!580319 (= e!350683 suffix!1342)))

(declare-fun b!580320 () Bool)

(assert (=> b!580320 (= e!350683 (Cons!5691 (h!11092 (t!77820 lt!245601)) (++!1593 (t!77820 (t!77820 lt!245601)) suffix!1342)))))

(assert (= (and d!204074 c!108624) b!580319))

(assert (= (and d!204074 (not c!108624)) b!580320))

(assert (= (and d!204074 res!249802) b!580321))

(assert (= (and b!580321 res!249803) b!580322))

(declare-fun m!839265 () Bool)

(assert (=> d!204074 m!839265))

(assert (=> d!204074 m!839243))

(assert (=> d!204074 m!838657))

(declare-fun m!839267 () Bool)

(assert (=> b!580321 m!839267))

(assert (=> b!580321 m!838579))

(assert (=> b!580321 m!838661))

(declare-fun m!839269 () Bool)

(assert (=> b!580320 m!839269))

(assert (=> b!579991 d!204074))

(declare-fun b!580326 () Bool)

(declare-fun res!249805 () Bool)

(declare-fun e!350687 () Bool)

(assert (=> b!580326 (=> (not res!249805) (not e!350687))))

(assert (=> b!580326 (= res!249805 (= (head!1227 lt!245578) (head!1227 (++!1593 lt!245578 (_2!3600 (v!16320 lt!245592))))))))

(declare-fun d!204078 () Bool)

(declare-fun e!350688 () Bool)

(assert (=> d!204078 e!350688))

(declare-fun res!249806 () Bool)

(assert (=> d!204078 (=> res!249806 e!350688)))

(declare-fun lt!246011 () Bool)

(assert (=> d!204078 (= res!249806 (not lt!246011))))

(declare-fun e!350686 () Bool)

(assert (=> d!204078 (= lt!246011 e!350686)))

(declare-fun res!249807 () Bool)

(assert (=> d!204078 (=> res!249807 e!350686)))

(assert (=> d!204078 (= res!249807 ((_ is Nil!5691) lt!245578))))

(assert (=> d!204078 (= (isPrefix!739 lt!245578 (++!1593 lt!245578 (_2!3600 (v!16320 lt!245592)))) lt!246011)))

(declare-fun b!580328 () Bool)

(assert (=> b!580328 (= e!350688 (>= (size!4531 (++!1593 lt!245578 (_2!3600 (v!16320 lt!245592)))) (size!4531 lt!245578)))))

(declare-fun b!580325 () Bool)

(assert (=> b!580325 (= e!350686 e!350687)))

(declare-fun res!249804 () Bool)

(assert (=> b!580325 (=> (not res!249804) (not e!350687))))

(assert (=> b!580325 (= res!249804 (not ((_ is Nil!5691) (++!1593 lt!245578 (_2!3600 (v!16320 lt!245592))))))))

(declare-fun b!580327 () Bool)

(assert (=> b!580327 (= e!350687 (isPrefix!739 (tail!757 lt!245578) (tail!757 (++!1593 lt!245578 (_2!3600 (v!16320 lt!245592))))))))

(assert (= (and d!204078 (not res!249807)) b!580325))

(assert (= (and b!580325 res!249804) b!580326))

(assert (= (and b!580326 res!249805) b!580327))

(assert (= (and d!204078 (not res!249806)) b!580328))

(assert (=> b!580326 m!838587))

(assert (=> b!580326 m!837959))

(declare-fun m!839273 () Bool)

(assert (=> b!580326 m!839273))

(assert (=> b!580328 m!837959))

(declare-fun m!839275 () Bool)

(assert (=> b!580328 m!839275))

(assert (=> b!580328 m!837993))

(assert (=> b!580327 m!838593))

(assert (=> b!580327 m!837959))

(declare-fun m!839277 () Bool)

(assert (=> b!580327 m!839277))

(assert (=> b!580327 m!838593))

(assert (=> b!580327 m!839277))

(declare-fun m!839279 () Bool)

(assert (=> b!580327 m!839279))

(assert (=> d!203756 d!204078))

(assert (=> d!203756 d!203778))

(declare-fun d!204084 () Bool)

(assert (=> d!204084 (isPrefix!739 lt!245578 (++!1593 lt!245578 (_2!3600 (v!16320 lt!245592))))))

(assert (=> d!204084 true))

(declare-fun _$46!928 () Unit!10309)

(assert (=> d!204084 (= (choose!4162 lt!245578 (_2!3600 (v!16320 lt!245592))) _$46!928)))

(declare-fun bs!69693 () Bool)

(assert (= bs!69693 d!204084))

(assert (=> bs!69693 m!837959))

(assert (=> bs!69693 m!837959))

(assert (=> bs!69693 m!838425))

(assert (=> d!203756 d!204084))

(declare-fun bs!69694 () Bool)

(declare-fun d!204088 () Bool)

(assert (= bs!69694 (and d!204088 d!204014)))

(declare-fun lambda!15781 () Int)

(assert (=> bs!69694 (= (= (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) (= lambda!15781 lambda!15776))))

(assert (=> d!204088 true))

(assert (=> d!204088 (< (dynLambda!3315 order!4653 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (dynLambda!3321 order!4659 lambda!15781))))

(assert (=> d!204088 (= (equivClasses!411 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (Forall2!211 lambda!15781))))

(declare-fun bs!69695 () Bool)

(assert (= bs!69695 d!204088))

(declare-fun m!839283 () Bool)

(assert (=> bs!69695 m!839283))

(assert (=> b!579959 d!204088))

(assert (=> b!579760 d!203902))

(assert (=> b!579760 d!203904))

(assert (=> b!579975 d!203754))

(declare-fun b!580332 () Bool)

(declare-fun res!249809 () Bool)

(declare-fun e!350691 () Bool)

(assert (=> b!580332 (=> (not res!249809) (not e!350691))))

(assert (=> b!580332 (= res!249809 (= (head!1227 (tail!757 input!2705)) (head!1227 (tail!757 lt!245584))))))

(declare-fun d!204090 () Bool)

(declare-fun e!350692 () Bool)

(assert (=> d!204090 e!350692))

(declare-fun res!249810 () Bool)

(assert (=> d!204090 (=> res!249810 e!350692)))

(declare-fun lt!246013 () Bool)

(assert (=> d!204090 (= res!249810 (not lt!246013))))

(declare-fun e!350690 () Bool)

(assert (=> d!204090 (= lt!246013 e!350690)))

(declare-fun res!249811 () Bool)

(assert (=> d!204090 (=> res!249811 e!350690)))

(assert (=> d!204090 (= res!249811 ((_ is Nil!5691) (tail!757 input!2705)))))

(assert (=> d!204090 (= (isPrefix!739 (tail!757 input!2705) (tail!757 lt!245584)) lt!246013)))

(declare-fun b!580334 () Bool)

(assert (=> b!580334 (= e!350692 (>= (size!4531 (tail!757 lt!245584)) (size!4531 (tail!757 input!2705))))))

(declare-fun b!580331 () Bool)

(assert (=> b!580331 (= e!350690 e!350691)))

(declare-fun res!249808 () Bool)

(assert (=> b!580331 (=> (not res!249808) (not e!350691))))

(assert (=> b!580331 (= res!249808 (not ((_ is Nil!5691) (tail!757 lt!245584))))))

(declare-fun b!580333 () Bool)

(assert (=> b!580333 (= e!350691 (isPrefix!739 (tail!757 (tail!757 input!2705)) (tail!757 (tail!757 lt!245584))))))

(assert (= (and d!204090 (not res!249811)) b!580331))

(assert (= (and b!580331 res!249808) b!580332))

(assert (= (and b!580332 res!249809) b!580333))

(assert (= (and d!204090 (not res!249810)) b!580334))

(assert (=> b!580332 m!838031))

(assert (=> b!580332 m!838885))

(assert (=> b!580332 m!838559))

(assert (=> b!580332 m!838995))

(assert (=> b!580334 m!838559))

(assert (=> b!580334 m!838997))

(assert (=> b!580334 m!838031))

(assert (=> b!580334 m!838891))

(assert (=> b!580333 m!838031))

(assert (=> b!580333 m!838893))

(assert (=> b!580333 m!838559))

(assert (=> b!580333 m!839003))

(assert (=> b!580333 m!838893))

(assert (=> b!580333 m!839003))

(declare-fun m!839291 () Bool)

(assert (=> b!580333 m!839291))

(assert (=> b!579915 d!204090))

(assert (=> b!579915 d!203904))

(assert (=> b!579915 d!203984))

(declare-fun b!580340 () Bool)

(declare-fun res!249813 () Bool)

(declare-fun e!350696 () Bool)

(assert (=> b!580340 (=> (not res!249813) (not e!350696))))

(assert (=> b!580340 (= res!249813 (= (head!1227 lt!245601) (head!1227 (++!1593 lt!245601 suffix!1342))))))

(declare-fun d!204096 () Bool)

(declare-fun e!350697 () Bool)

(assert (=> d!204096 e!350697))

(declare-fun res!249814 () Bool)

(assert (=> d!204096 (=> res!249814 e!350697)))

(declare-fun lt!246014 () Bool)

(assert (=> d!204096 (= res!249814 (not lt!246014))))

(declare-fun e!350695 () Bool)

(assert (=> d!204096 (= lt!246014 e!350695)))

(declare-fun res!249815 () Bool)

(assert (=> d!204096 (=> res!249815 e!350695)))

(assert (=> d!204096 (= res!249815 ((_ is Nil!5691) lt!245601))))

(assert (=> d!204096 (= (isPrefix!739 lt!245601 (++!1593 lt!245601 suffix!1342)) lt!246014)))

(declare-fun b!580342 () Bool)

(assert (=> b!580342 (= e!350697 (>= (size!4531 (++!1593 lt!245601 suffix!1342)) (size!4531 lt!245601)))))

(declare-fun b!580339 () Bool)

(assert (=> b!580339 (= e!350695 e!350696)))

(declare-fun res!249812 () Bool)

(assert (=> b!580339 (=> (not res!249812) (not e!350696))))

(assert (=> b!580339 (= res!249812 (not ((_ is Nil!5691) (++!1593 lt!245601 suffix!1342))))))

(declare-fun b!580341 () Bool)

(assert (=> b!580341 (= e!350696 (isPrefix!739 (tail!757 lt!245601) (tail!757 (++!1593 lt!245601 suffix!1342))))))

(assert (= (and d!204096 (not res!249815)) b!580339))

(assert (= (and b!580339 res!249812) b!580340))

(assert (= (and b!580340 res!249813) b!580341))

(assert (= (and d!204096 (not res!249814)) b!580342))

(assert (=> b!580340 m!838603))

(assert (=> b!580340 m!837911))

(declare-fun m!839297 () Bool)

(assert (=> b!580340 m!839297))

(assert (=> b!580342 m!837911))

(declare-fun m!839301 () Bool)

(assert (=> b!580342 m!839301))

(assert (=> b!580342 m!837991))

(assert (=> b!580341 m!838605))

(assert (=> b!580341 m!837911))

(declare-fun m!839305 () Bool)

(assert (=> b!580341 m!839305))

(assert (=> b!580341 m!838605))

(assert (=> b!580341 m!839305))

(declare-fun m!839307 () Bool)

(assert (=> b!580341 m!839307))

(assert (=> d!203816 d!204096))

(assert (=> d!203816 d!203868))

(declare-fun d!204102 () Bool)

(assert (=> d!204102 (isPrefix!739 lt!245601 (++!1593 lt!245601 suffix!1342))))

(assert (=> d!204102 true))

(declare-fun _$46!929 () Unit!10309)

(assert (=> d!204102 (= (choose!4162 lt!245601 suffix!1342) _$46!929)))

(declare-fun bs!69697 () Bool)

(assert (= bs!69697 d!204102))

(assert (=> bs!69697 m!837911))

(assert (=> bs!69697 m!837911))

(assert (=> bs!69697 m!838551))

(assert (=> d!203816 d!204102))

(declare-fun d!204104 () Bool)

(assert (=> d!204104 (= (get!2172 lt!245797) (v!16320 lt!245797))))

(assert (=> b!579983 d!204104))

(declare-fun d!204106 () Bool)

(assert (=> d!204106 (= (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245797))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245797))))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245797))))))))

(declare-fun b_lambda!22819 () Bool)

(assert (=> (not b_lambda!22819) (not d!204106)))

(declare-fun t!77951 () Bool)

(declare-fun tb!50797 () Bool)

(assert (=> (and b!579433 (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))))) t!77951) tb!50797))

(declare-fun result!56868 () Bool)

(assert (=> tb!50797 (= result!56868 (inv!21 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245797))))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245797)))))))))

(declare-fun m!839309 () Bool)

(assert (=> tb!50797 m!839309))

(assert (=> d!204106 t!77951))

(declare-fun b_and!57053 () Bool)

(assert (= b_and!57047 (and (=> t!77951 result!56868) b_and!57053)))

(declare-fun t!77953 () Bool)

(declare-fun tb!50799 () Bool)

(assert (=> (and b!579460 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))))) t!77953) tb!50799))

(declare-fun result!56870 () Bool)

(assert (= result!56870 result!56868))

(assert (=> d!204106 t!77953))

(declare-fun b_and!57055 () Bool)

(assert (= b_and!57049 (and (=> t!77953 result!56870) b_and!57055)))

(declare-fun t!77955 () Bool)

(declare-fun tb!50801 () Bool)

(assert (=> (and b!580076 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))))) t!77955) tb!50801))

(declare-fun result!56872 () Bool)

(assert (= result!56872 result!56868))

(assert (=> d!204106 t!77955))

(declare-fun b_and!57057 () Bool)

(assert (= b_and!57051 (and (=> t!77955 result!56872) b_and!57057)))

(assert (=> d!204106 m!838639))

(declare-fun m!839311 () Bool)

(assert (=> d!204106 m!839311))

(assert (=> b!579983 d!204106))

(declare-fun d!204108 () Bool)

(assert (=> d!204108 (= (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245797)))) (fromListB!565 (originalCharacters!1144 (_1!3600 (get!2172 lt!245797)))))))

(declare-fun bs!69698 () Bool)

(assert (= bs!69698 d!204108))

(declare-fun m!839313 () Bool)

(assert (=> bs!69698 m!839313))

(assert (=> b!579983 d!204108))

(declare-fun d!204110 () Bool)

(declare-fun lt!246016 () Int)

(assert (=> d!204110 (>= lt!246016 0)))

(declare-fun e!350707 () Int)

(assert (=> d!204110 (= lt!246016 e!350707)))

(declare-fun c!108633 () Bool)

(assert (=> d!204110 (= c!108633 ((_ is Nil!5691) (_2!3600 (get!2172 lt!245813))))))

(assert (=> d!204110 (= (size!4531 (_2!3600 (get!2172 lt!245813))) lt!246016)))

(declare-fun b!580359 () Bool)

(assert (=> b!580359 (= e!350707 0)))

(declare-fun b!580360 () Bool)

(assert (=> b!580360 (= e!350707 (+ 1 (size!4531 (t!77820 (_2!3600 (get!2172 lt!245813))))))))

(assert (= (and d!204110 c!108633) b!580359))

(assert (= (and d!204110 (not c!108633)) b!580360))

(declare-fun m!839315 () Bool)

(assert (=> b!580360 m!839315))

(assert (=> b!580017 d!204110))

(assert (=> b!580017 d!203926))

(assert (=> b!580017 d!203906))

(declare-fun d!204112 () Bool)

(assert (=> d!204112 (= (inv!7172 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491))) (isBalanced!511 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491)))))))

(declare-fun bs!69699 () Bool)

(assert (= bs!69699 d!204112))

(declare-fun m!839327 () Bool)

(assert (=> bs!69699 m!839327))

(assert (=> tb!50719 d!204112))

(declare-fun d!204116 () Bool)

(assert (=> d!204116 (and (= lt!245601 input!2705) (= suffix!1342 suffix!1342))))

(assert (=> d!204116 true))

(declare-fun _$50!229 () Unit!10309)

(assert (=> d!204116 (= (choose!4164 lt!245601 suffix!1342 input!2705 suffix!1342) _$50!229)))

(assert (=> d!203766 d!204116))

(assert (=> d!203766 d!203868))

(assert (=> d!203766 d!203866))

(assert (=> b!579908 d!204012))

(assert (=> b!579908 d!203906))

(assert (=> b!579964 d!204014))

(declare-fun d!204118 () Bool)

(declare-fun lt!246017 () Int)

(assert (=> d!204118 (>= lt!246017 0)))

(declare-fun e!350708 () Int)

(assert (=> d!204118 (= lt!246017 e!350708)))

(declare-fun c!108634 () Bool)

(assert (=> d!204118 (= c!108634 ((_ is Nil!5691) lt!245584))))

(assert (=> d!204118 (= (size!4531 lt!245584) lt!246017)))

(declare-fun b!580361 () Bool)

(assert (=> b!580361 (= e!350708 0)))

(declare-fun b!580362 () Bool)

(assert (=> b!580362 (= e!350708 (+ 1 (size!4531 (t!77820 lt!245584))))))

(assert (= (and d!204118 c!108634) b!580361))

(assert (= (and d!204118 (not c!108634)) b!580362))

(declare-fun m!839329 () Bool)

(assert (=> b!580362 m!839329))

(assert (=> b!579968 d!204118))

(assert (=> b!579968 d!203836))

(declare-fun b!580363 () Bool)

(declare-fun e!350711 () Bool)

(assert (=> b!580363 (= e!350711 (inv!17 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574)))))

(declare-fun b!580364 () Bool)

(declare-fun res!249824 () Bool)

(declare-fun e!350709 () Bool)

(assert (=> b!580364 (=> res!249824 e!350709)))

(assert (=> b!580364 (= res!249824 (not ((_ is IntegerValue!3389) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574))))))

(assert (=> b!580364 (= e!350711 e!350709)))

(declare-fun b!580365 () Bool)

(declare-fun e!350710 () Bool)

(assert (=> b!580365 (= e!350710 e!350711)))

(declare-fun c!108635 () Bool)

(assert (=> b!580365 (= c!108635 ((_ is IntegerValue!3388) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574)))))

(declare-fun b!580366 () Bool)

(assert (=> b!580366 (= e!350709 (inv!15 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574)))))

(declare-fun b!580367 () Bool)

(assert (=> b!580367 (= e!350710 (inv!16 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574)))))

(declare-fun d!204120 () Bool)

(declare-fun c!108636 () Bool)

(assert (=> d!204120 (= c!108636 ((_ is IntegerValue!3387) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574)))))

(assert (=> d!204120 (= (inv!21 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574)) e!350710)))

(assert (= (and d!204120 c!108636) b!580367))

(assert (= (and d!204120 (not c!108636)) b!580365))

(assert (= (and b!580365 c!108635) b!580363))

(assert (= (and b!580365 (not c!108635)) b!580364))

(assert (= (and b!580364 (not res!249824)) b!580366))

(declare-fun m!839331 () Bool)

(assert (=> b!580363 m!839331))

(declare-fun m!839333 () Bool)

(assert (=> b!580366 m!839333))

(declare-fun m!839335 () Bool)

(assert (=> b!580367 m!839335))

(assert (=> tb!50723 d!204120))

(declare-fun d!204122 () Bool)

(assert (=> d!204122 (= (isDefined!1267 lt!245797) (not (isEmpty!4112 lt!245797)))))

(declare-fun bs!69700 () Bool)

(assert (= bs!69700 d!204122))

(assert (=> bs!69700 m!838627))

(assert (=> b!579977 d!204122))

(assert (=> d!203636 d!203680))

(declare-fun b!580386 () Bool)

(declare-fun e!350726 () Bool)

(declare-fun call!40054 () Bool)

(assert (=> b!580386 (= e!350726 call!40054)))

(declare-fun b!580387 () Bool)

(declare-fun e!350729 () Bool)

(declare-fun e!350731 () Bool)

(assert (=> b!580387 (= e!350729 e!350731)))

(declare-fun c!108642 () Bool)

(assert (=> b!580387 (= c!108642 ((_ is Union!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun d!204124 () Bool)

(declare-fun res!249837 () Bool)

(declare-fun e!350727 () Bool)

(assert (=> d!204124 (=> res!249837 e!350727)))

(assert (=> d!204124 (= res!249837 ((_ is ElementMatch!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(assert (=> d!204124 (= (validRegex!485 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) e!350727)))

(declare-fun b!580388 () Bool)

(assert (=> b!580388 (= e!350727 e!350729)))

(declare-fun c!108641 () Bool)

(assert (=> b!580388 (= c!108641 ((_ is Star!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun b!580389 () Bool)

(declare-fun e!350732 () Bool)

(declare-fun call!40055 () Bool)

(assert (=> b!580389 (= e!350732 call!40055)))

(declare-fun b!580390 () Bool)

(declare-fun e!350730 () Bool)

(assert (=> b!580390 (= e!350730 e!350726)))

(declare-fun res!249839 () Bool)

(assert (=> b!580390 (=> (not res!249839) (not e!350726))))

(declare-fun call!40056 () Bool)

(assert (=> b!580390 (= res!249839 call!40056)))

(declare-fun b!580391 () Bool)

(declare-fun e!350728 () Bool)

(assert (=> b!580391 (= e!350728 call!40056)))

(declare-fun bm!40049 () Bool)

(assert (=> bm!40049 (= call!40055 (validRegex!485 (ite c!108641 (reg!1768 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (ite c!108642 (regTwo!3391 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (regOne!3390 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))))))

(declare-fun bm!40050 () Bool)

(assert (=> bm!40050 (= call!40054 (validRegex!485 (ite c!108642 (regOne!3391 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (regTwo!3390 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))))

(declare-fun b!580392 () Bool)

(declare-fun res!249838 () Bool)

(assert (=> b!580392 (=> res!249838 e!350730)))

(assert (=> b!580392 (= res!249838 (not ((_ is Concat!2568) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))))

(assert (=> b!580392 (= e!350731 e!350730)))

(declare-fun bm!40051 () Bool)

(assert (=> bm!40051 (= call!40056 call!40055)))

(declare-fun b!580393 () Bool)

(declare-fun res!249835 () Bool)

(assert (=> b!580393 (=> (not res!249835) (not e!350728))))

(assert (=> b!580393 (= res!249835 call!40054)))

(assert (=> b!580393 (= e!350731 e!350728)))

(declare-fun b!580394 () Bool)

(assert (=> b!580394 (= e!350729 e!350732)))

(declare-fun res!249836 () Bool)

(assert (=> b!580394 (= res!249836 (not (nullable!390 (reg!1768 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))))

(assert (=> b!580394 (=> (not res!249836) (not e!350732))))

(assert (= (and d!204124 (not res!249837)) b!580388))

(assert (= (and b!580388 c!108641) b!580394))

(assert (= (and b!580388 (not c!108641)) b!580387))

(assert (= (and b!580394 res!249836) b!580389))

(assert (= (and b!580387 c!108642) b!580393))

(assert (= (and b!580387 (not c!108642)) b!580392))

(assert (= (and b!580393 res!249835) b!580391))

(assert (= (and b!580392 (not res!249838)) b!580390))

(assert (= (and b!580390 res!249839) b!580386))

(assert (= (or b!580393 b!580386) bm!40050))

(assert (= (or b!580391 b!580390) bm!40051))

(assert (= (or b!580389 bm!40051) bm!40049))

(declare-fun m!839337 () Bool)

(assert (=> bm!40049 m!839337))

(declare-fun m!839339 () Bool)

(assert (=> bm!40050 m!839339))

(declare-fun m!839341 () Bool)

(assert (=> b!580394 m!839341))

(assert (=> d!203636 d!204124))

(declare-fun d!204126 () Bool)

(declare-fun lt!246018 () Int)

(assert (=> d!204126 (>= lt!246018 0)))

(declare-fun e!350733 () Int)

(assert (=> d!204126 (= lt!246018 e!350733)))

(declare-fun c!108643 () Bool)

(assert (=> d!204126 (= c!108643 ((_ is Nil!5691) (_2!3600 (get!2172 lt!245821))))))

(assert (=> d!204126 (= (size!4531 (_2!3600 (get!2172 lt!245821))) lt!246018)))

(declare-fun b!580395 () Bool)

(assert (=> b!580395 (= e!350733 0)))

(declare-fun b!580396 () Bool)

(assert (=> b!580396 (= e!350733 (+ 1 (size!4531 (t!77820 (_2!3600 (get!2172 lt!245821))))))))

(assert (= (and d!204126 c!108643) b!580395))

(assert (= (and d!204126 (not c!108643)) b!580396))

(declare-fun m!839343 () Bool)

(assert (=> b!580396 m!839343))

(assert (=> b!580026 d!204126))

(assert (=> b!580026 d!203908))

(assert (=> b!580026 d!204012))

(declare-fun d!204128 () Bool)

(declare-fun c!108644 () Bool)

(assert (=> d!204128 (= c!108644 ((_ is Nil!5691) lt!245798))))

(declare-fun e!350734 () (InoxSet C!3800))

(assert (=> d!204128 (= (content!1010 lt!245798) e!350734)))

(declare-fun b!580397 () Bool)

(assert (=> b!580397 (= e!350734 ((as const (Array C!3800 Bool)) false))))

(declare-fun b!580398 () Bool)

(assert (=> b!580398 (= e!350734 ((_ map or) (store ((as const (Array C!3800 Bool)) false) (h!11092 lt!245798) true) (content!1010 (t!77820 lt!245798))))))

(assert (= (and d!204128 c!108644) b!580397))

(assert (= (and d!204128 (not c!108644)) b!580398))

(declare-fun m!839345 () Bool)

(assert (=> b!580398 m!839345))

(declare-fun m!839347 () Bool)

(assert (=> b!580398 m!839347))

(assert (=> d!203866 d!204128))

(declare-fun d!204130 () Bool)

(declare-fun c!108645 () Bool)

(assert (=> d!204130 (= c!108645 ((_ is Nil!5691) input!2705))))

(declare-fun e!350735 () (InoxSet C!3800))

(assert (=> d!204130 (= (content!1010 input!2705) e!350735)))

(declare-fun b!580399 () Bool)

(assert (=> b!580399 (= e!350735 ((as const (Array C!3800 Bool)) false))))

(declare-fun b!580400 () Bool)

(assert (=> b!580400 (= e!350735 ((_ map or) (store ((as const (Array C!3800 Bool)) false) (h!11092 input!2705) true) (content!1010 (t!77820 input!2705))))))

(assert (= (and d!204130 c!108645) b!580399))

(assert (= (and d!204130 (not c!108645)) b!580400))

(declare-fun m!839349 () Bool)

(assert (=> b!580400 m!839349))

(declare-fun m!839351 () Bool)

(assert (=> b!580400 m!839351))

(assert (=> d!203866 d!204130))

(assert (=> d!203866 d!204062))

(declare-fun d!204132 () Bool)

(assert (=> d!204132 (= (inv!7164 (tag!1367 (h!11093 (t!77821 rules!3103)))) (= (mod (str.len (value!36333 (tag!1367 (h!11093 (t!77821 rules!3103))))) 2) 0))))

(assert (=> b!580075 d!204132))

(declare-fun d!204134 () Bool)

(declare-fun res!249840 () Bool)

(declare-fun e!350736 () Bool)

(assert (=> d!204134 (=> (not res!249840) (not e!350736))))

(assert (=> d!204134 (= res!249840 (semiInverseModEq!428 (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103))))))))

(assert (=> d!204134 (= (inv!7167 (transformation!1105 (h!11093 (t!77821 rules!3103)))) e!350736)))

(declare-fun b!580401 () Bool)

(assert (=> b!580401 (= e!350736 (equivClasses!411 (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103))))))))

(assert (= (and d!204134 res!249840) b!580401))

(declare-fun m!839353 () Bool)

(assert (=> d!204134 m!839353))

(declare-fun m!839355 () Bool)

(assert (=> b!580401 m!839355))

(assert (=> b!580075 d!204134))

(declare-fun d!204136 () Bool)

(assert (=> d!204136 (= (_2!3600 (v!16320 lt!245592)) lt!245590)))

(assert (=> d!204136 true))

(declare-fun _$63!704 () Unit!10309)

(assert (=> d!204136 (= (choose!4166 lt!245578 (_2!3600 (v!16320 lt!245592)) lt!245578 lt!245590 input!2705) _$63!704)))

(assert (=> d!203784 d!204136))

(assert (=> d!203784 d!203946))

(declare-fun d!204138 () Bool)

(assert (=> d!204138 (= (isDefined!1267 lt!245678) (not (isEmpty!4112 lt!245678)))))

(declare-fun bs!69701 () Bool)

(assert (= bs!69701 d!204138))

(assert (=> bs!69701 m!838199))

(assert (=> b!579636 d!204138))

(assert (=> b!580022 d!203908))

(declare-fun d!204140 () Bool)

(declare-fun c!108648 () Bool)

(assert (=> d!204140 (= c!108648 ((_ is Nil!5692) rules!3103))))

(declare-fun e!350739 () (InoxSet Rule!2010))

(assert (=> d!204140 (= (content!1009 rules!3103) e!350739)))

(declare-fun b!580406 () Bool)

(assert (=> b!580406 (= e!350739 ((as const (Array Rule!2010 Bool)) false))))

(declare-fun b!580407 () Bool)

(assert (=> b!580407 (= e!350739 ((_ map or) (store ((as const (Array Rule!2010 Bool)) false) (h!11093 rules!3103) true) (content!1009 (t!77821 rules!3103))))))

(assert (= (and d!204140 c!108648) b!580406))

(assert (= (and d!204140 (not c!108648)) b!580407))

(declare-fun m!839357 () Bool)

(assert (=> b!580407 m!839357))

(assert (=> b!580407 m!839015))

(assert (=> d!203896 d!204140))

(declare-fun d!204142 () Bool)

(declare-fun lt!246019 () Bool)

(assert (=> d!204142 (= lt!246019 (select (content!1009 rules!3103) (rule!1859 (_1!3600 (get!2172 lt!245678)))))))

(declare-fun e!350741 () Bool)

(assert (=> d!204142 (= lt!246019 e!350741)))

(declare-fun res!249842 () Bool)

(assert (=> d!204142 (=> (not res!249842) (not e!350741))))

(assert (=> d!204142 (= res!249842 ((_ is Cons!5692) rules!3103))))

(assert (=> d!204142 (= (contains!1337 rules!3103 (rule!1859 (_1!3600 (get!2172 lt!245678)))) lt!246019)))

(declare-fun b!580408 () Bool)

(declare-fun e!350740 () Bool)

(assert (=> b!580408 (= e!350741 e!350740)))

(declare-fun res!249841 () Bool)

(assert (=> b!580408 (=> res!249841 e!350740)))

(assert (=> b!580408 (= res!249841 (= (h!11093 rules!3103) (rule!1859 (_1!3600 (get!2172 lt!245678)))))))

(declare-fun b!580409 () Bool)

(assert (=> b!580409 (= e!350740 (contains!1337 (t!77821 rules!3103) (rule!1859 (_1!3600 (get!2172 lt!245678)))))))

(assert (= (and d!204142 res!249842) b!580408))

(assert (= (and b!580408 (not res!249841)) b!580409))

(assert (=> d!204142 m!838417))

(declare-fun m!839359 () Bool)

(assert (=> d!204142 m!839359))

(declare-fun m!839361 () Bool)

(assert (=> b!580409 m!839361))

(assert (=> b!579643 d!204142))

(assert (=> b!579643 d!203988))

(declare-fun bs!69702 () Bool)

(declare-fun d!204144 () Bool)

(assert (= bs!69702 (and d!204144 d!203686)))

(declare-fun lambda!15784 () Int)

(assert (=> bs!69702 (= (and (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (= lambda!15784 lambda!15765))))

(declare-fun bs!69703 () Bool)

(assert (= bs!69703 (and d!204144 d!203878)))

(assert (=> bs!69703 (= lambda!15784 lambda!15766)))

(declare-fun bs!69704 () Bool)

(assert (= bs!69704 (and d!204144 d!203962)))

(assert (=> bs!69704 (= (and (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (= lambda!15784 lambda!15767))))

(declare-fun bs!69705 () Bool)

(assert (= bs!69705 (and d!204144 d!204038)))

(assert (=> bs!69705 (= lambda!15784 lambda!15777)))

(assert (=> d!204144 true))

(assert (=> d!204144 (< (dynLambda!3317 order!4657 (toChars!1827 (transformation!1105 (rule!1859 token!491)))) (dynLambda!3316 order!4655 lambda!15784))))

(assert (=> d!204144 true))

(assert (=> d!204144 (< (dynLambda!3315 order!4653 (toValue!1968 (transformation!1105 (rule!1859 token!491)))) (dynLambda!3316 order!4655 lambda!15784))))

(assert (=> d!204144 (= (semiInverseModEq!428 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) (Forall!285 lambda!15784))))

(declare-fun bs!69706 () Bool)

(assert (= bs!69706 d!204144))

(declare-fun m!839363 () Bool)

(assert (=> bs!69706 m!839363))

(assert (=> d!203856 d!204144))

(declare-fun d!204146 () Bool)

(declare-fun lt!246020 () Int)

(assert (=> d!204146 (>= lt!246020 0)))

(declare-fun e!350742 () Int)

(assert (=> d!204146 (= lt!246020 e!350742)))

(declare-fun c!108649 () Bool)

(assert (=> d!204146 (= c!108649 ((_ is Nil!5691) lt!245587))))

(assert (=> d!204146 (= (size!4531 lt!245587) lt!246020)))

(declare-fun b!580414 () Bool)

(assert (=> b!580414 (= e!350742 0)))

(declare-fun b!580415 () Bool)

(assert (=> b!580415 (= e!350742 (+ 1 (size!4531 (t!77820 lt!245587))))))

(assert (= (and d!204146 c!108649) b!580414))

(assert (= (and d!204146 (not c!108649)) b!580415))

(declare-fun m!839365 () Bool)

(assert (=> b!580415 m!839365))

(assert (=> b!579963 d!204146))

(assert (=> b!579963 d!203788))

(assert (=> b!580012 d!203926))

(declare-fun d!204148 () Bool)

(assert (=> d!204148 (= (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245813)))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245813))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245813))))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245813))))))))

(declare-fun b_lambda!22821 () Bool)

(assert (=> (not b_lambda!22821) (not d!204148)))

(declare-fun tb!50803 () Bool)

(declare-fun t!77957 () Bool)

(assert (=> (and b!579433 (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245813)))))) t!77957) tb!50803))

(declare-fun result!56874 () Bool)

(assert (=> tb!50803 (= result!56874 (inv!21 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245813))))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245813)))))))))

(declare-fun m!839367 () Bool)

(assert (=> tb!50803 m!839367))

(assert (=> d!204148 t!77957))

(declare-fun b_and!57059 () Bool)

(assert (= b_and!57053 (and (=> t!77957 result!56874) b_and!57059)))

(declare-fun t!77959 () Bool)

(declare-fun tb!50805 () Bool)

(assert (=> (and b!579460 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245813)))))) t!77959) tb!50805))

(declare-fun result!56876 () Bool)

(assert (= result!56876 result!56874))

(assert (=> d!204148 t!77959))

(declare-fun b_and!57061 () Bool)

(assert (= b_and!57055 (and (=> t!77959 result!56876) b_and!57061)))

(declare-fun t!77961 () Bool)

(declare-fun tb!50807 () Bool)

(assert (=> (and b!580076 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245813)))))) t!77961) tb!50807))

(declare-fun result!56878 () Bool)

(assert (= result!56878 result!56874))

(assert (=> d!204148 t!77961))

(declare-fun b_and!57063 () Bool)

(assert (= b_and!57057 (and (=> t!77961 result!56878) b_and!57063)))

(assert (=> d!204148 m!838675))

(declare-fun m!839369 () Bool)

(assert (=> d!204148 m!839369))

(assert (=> b!580012 d!204148))

(declare-fun d!204150 () Bool)

(assert (=> d!204150 (= (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!245813)))) (fromListB!565 (originalCharacters!1144 (_1!3600 (get!2172 lt!245813)))))))

(declare-fun bs!69707 () Bool)

(assert (= bs!69707 d!204150))

(declare-fun m!839371 () Bool)

(assert (=> bs!69707 m!839371))

(assert (=> b!580012 d!204150))

(declare-fun d!204152 () Bool)

(assert (=> d!204152 (= (inv!7172 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592))))) (isBalanced!511 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592)))))))))

(declare-fun bs!69708 () Bool)

(assert (= bs!69708 d!204152))

(declare-fun m!839373 () Bool)

(assert (=> bs!69708 m!839373))

(assert (=> tb!50703 d!204152))

(declare-fun d!204154 () Bool)

(assert (=> d!204154 (= suffix!1342 lt!245594)))

(assert (=> d!204154 true))

(declare-fun _$63!705 () Unit!10309)

(assert (=> d!204154 (= (choose!4166 lt!245601 suffix!1342 lt!245601 lt!245594 lt!245595) _$63!705)))

(assert (=> d!203882 d!204154))

(declare-fun b!580417 () Bool)

(declare-fun res!249844 () Bool)

(declare-fun e!350745 () Bool)

(assert (=> b!580417 (=> (not res!249844) (not e!350745))))

(assert (=> b!580417 (= res!249844 (= (head!1227 lt!245601) (head!1227 lt!245595)))))

(declare-fun d!204156 () Bool)

(declare-fun e!350746 () Bool)

(assert (=> d!204156 e!350746))

(declare-fun res!249845 () Bool)

(assert (=> d!204156 (=> res!249845 e!350746)))

(declare-fun lt!246021 () Bool)

(assert (=> d!204156 (= res!249845 (not lt!246021))))

(declare-fun e!350744 () Bool)

(assert (=> d!204156 (= lt!246021 e!350744)))

(declare-fun res!249846 () Bool)

(assert (=> d!204156 (=> res!249846 e!350744)))

(assert (=> d!204156 (= res!249846 ((_ is Nil!5691) lt!245601))))

(assert (=> d!204156 (= (isPrefix!739 lt!245601 lt!245595) lt!246021)))

(declare-fun b!580419 () Bool)

(assert (=> b!580419 (= e!350746 (>= (size!4531 lt!245595) (size!4531 lt!245601)))))

(declare-fun b!580416 () Bool)

(assert (=> b!580416 (= e!350744 e!350745)))

(declare-fun res!249843 () Bool)

(assert (=> b!580416 (=> (not res!249843) (not e!350745))))

(assert (=> b!580416 (= res!249843 (not ((_ is Nil!5691) lt!245595)))))

(declare-fun b!580418 () Bool)

(assert (=> b!580418 (= e!350745 (isPrefix!739 (tail!757 lt!245601) (tail!757 lt!245595)))))

(assert (= (and d!204156 (not res!249846)) b!580416))

(assert (= (and b!580416 res!249843) b!580417))

(assert (= (and b!580417 res!249844) b!580418))

(assert (= (and d!204156 (not res!249845)) b!580419))

(assert (=> b!580417 m!838603))

(assert (=> b!580417 m!838543))

(assert (=> b!580419 m!838545))

(assert (=> b!580419 m!837991))

(assert (=> b!580418 m!838605))

(assert (=> b!580418 m!838547))

(assert (=> b!580418 m!838605))

(assert (=> b!580418 m!838547))

(declare-fun m!839375 () Bool)

(assert (=> b!580418 m!839375))

(assert (=> d!203882 d!204156))

(assert (=> b!579916 d!204118))

(assert (=> b!579916 d!203906))

(declare-fun d!204158 () Bool)

(declare-fun lt!246022 () Bool)

(assert (=> d!204158 (= lt!246022 (select (content!1009 rules!3103) (rule!1859 (_1!3600 (get!2172 lt!245797)))))))

(declare-fun e!350748 () Bool)

(assert (=> d!204158 (= lt!246022 e!350748)))

(declare-fun res!249848 () Bool)

(assert (=> d!204158 (=> (not res!249848) (not e!350748))))

(assert (=> d!204158 (= res!249848 ((_ is Cons!5692) rules!3103))))

(assert (=> d!204158 (= (contains!1337 rules!3103 (rule!1859 (_1!3600 (get!2172 lt!245797)))) lt!246022)))

(declare-fun b!580420 () Bool)

(declare-fun e!350747 () Bool)

(assert (=> b!580420 (= e!350748 e!350747)))

(declare-fun res!249847 () Bool)

(assert (=> b!580420 (=> res!249847 e!350747)))

(assert (=> b!580420 (= res!249847 (= (h!11093 rules!3103) (rule!1859 (_1!3600 (get!2172 lt!245797)))))))

(declare-fun b!580421 () Bool)

(assert (=> b!580421 (= e!350747 (contains!1337 (t!77821 rules!3103) (rule!1859 (_1!3600 (get!2172 lt!245797)))))))

(assert (= (and d!204158 res!249848) b!580420))

(assert (= (and b!580420 (not res!249847)) b!580421))

(assert (=> d!204158 m!838417))

(declare-fun m!839377 () Bool)

(assert (=> d!204158 m!839377))

(declare-fun m!839379 () Bool)

(assert (=> b!580421 m!839379))

(assert (=> b!579984 d!204158))

(assert (=> b!579984 d!204104))

(declare-fun b!580425 () Bool)

(declare-fun e!350750 () Bool)

(declare-fun lt!246023 () List!5701)

(assert (=> b!580425 (= e!350750 (or (not (= suffix!1342 Nil!5691)) (= lt!246023 (t!77820 input!2705))))))

(declare-fun d!204160 () Bool)

(assert (=> d!204160 e!350750))

(declare-fun res!249849 () Bool)

(assert (=> d!204160 (=> (not res!249849) (not e!350750))))

(assert (=> d!204160 (= res!249849 (= (content!1010 lt!246023) ((_ map or) (content!1010 (t!77820 input!2705)) (content!1010 suffix!1342))))))

(declare-fun e!350749 () List!5701)

(assert (=> d!204160 (= lt!246023 e!350749)))

(declare-fun c!108650 () Bool)

(assert (=> d!204160 (= c!108650 ((_ is Nil!5691) (t!77820 input!2705)))))

(assert (=> d!204160 (= (++!1593 (t!77820 input!2705) suffix!1342) lt!246023)))

(declare-fun b!580424 () Bool)

(declare-fun res!249850 () Bool)

(assert (=> b!580424 (=> (not res!249850) (not e!350750))))

(assert (=> b!580424 (= res!249850 (= (size!4531 lt!246023) (+ (size!4531 (t!77820 input!2705)) (size!4531 suffix!1342))))))

(declare-fun b!580422 () Bool)

(assert (=> b!580422 (= e!350749 suffix!1342)))

(declare-fun b!580423 () Bool)

(assert (=> b!580423 (= e!350749 (Cons!5691 (h!11092 (t!77820 input!2705)) (++!1593 (t!77820 (t!77820 input!2705)) suffix!1342)))))

(assert (= (and d!204160 c!108650) b!580422))

(assert (= (and d!204160 (not c!108650)) b!580423))

(assert (= (and d!204160 res!249849) b!580424))

(assert (= (and b!580424 res!249850) b!580425))

(declare-fun m!839381 () Bool)

(assert (=> d!204160 m!839381))

(assert (=> d!204160 m!839351))

(assert (=> d!204160 m!838657))

(declare-fun m!839383 () Bool)

(assert (=> b!580424 m!839383))

(assert (=> b!580424 m!838807))

(assert (=> b!580424 m!838661))

(declare-fun m!839385 () Bool)

(assert (=> b!580423 m!839385))

(assert (=> b!579987 d!204160))

(declare-fun d!204162 () Bool)

(declare-fun nullableFct!134 (Regex!1439) Bool)

(assert (=> d!204162 (= (nullable!390 (regex!1105 (rule!1859 token!491))) (nullableFct!134 (regex!1105 (rule!1859 token!491))))))

(declare-fun bs!69709 () Bool)

(assert (= bs!69709 d!204162))

(declare-fun m!839387 () Bool)

(assert (=> bs!69709 m!839387))

(assert (=> b!579761 d!204162))

(assert (=> b!579950 d!204016))

(declare-fun lt!246024 () List!5701)

(declare-fun e!350752 () Bool)

(declare-fun b!580429 () Bool)

(assert (=> b!580429 (= e!350752 (or (not (= lt!245744 Nil!5691)) (= lt!246024 lt!245578)))))

(declare-fun d!204164 () Bool)

(assert (=> d!204164 e!350752))

(declare-fun res!249851 () Bool)

(assert (=> d!204164 (=> (not res!249851) (not e!350752))))

(assert (=> d!204164 (= res!249851 (= (content!1010 lt!246024) ((_ map or) (content!1010 lt!245578) (content!1010 lt!245744))))))

(declare-fun e!350751 () List!5701)

(assert (=> d!204164 (= lt!246024 e!350751)))

(declare-fun c!108651 () Bool)

(assert (=> d!204164 (= c!108651 ((_ is Nil!5691) lt!245578))))

(assert (=> d!204164 (= (++!1593 lt!245578 lt!245744) lt!246024)))

(declare-fun b!580428 () Bool)

(declare-fun res!249852 () Bool)

(assert (=> b!580428 (=> (not res!249852) (not e!350752))))

(assert (=> b!580428 (= res!249852 (= (size!4531 lt!246024) (+ (size!4531 lt!245578) (size!4531 lt!245744))))))

(declare-fun b!580426 () Bool)

(assert (=> b!580426 (= e!350751 lt!245744)))

(declare-fun b!580427 () Bool)

(assert (=> b!580427 (= e!350751 (Cons!5691 (h!11092 lt!245578) (++!1593 (t!77820 lt!245578) lt!245744)))))

(assert (= (and d!204164 c!108651) b!580426))

(assert (= (and d!204164 (not c!108651)) b!580427))

(assert (= (and d!204164 res!249851) b!580428))

(assert (= (and b!580428 res!249852) b!580429))

(declare-fun m!839389 () Bool)

(assert (=> d!204164 m!839389))

(assert (=> d!204164 m!838467))

(declare-fun m!839391 () Bool)

(assert (=> d!204164 m!839391))

(declare-fun m!839393 () Bool)

(assert (=> b!580428 m!839393))

(assert (=> b!580428 m!837993))

(declare-fun m!839395 () Bool)

(assert (=> b!580428 m!839395))

(declare-fun m!839397 () Bool)

(assert (=> b!580427 m!839397))

(assert (=> d!203758 d!204164))

(assert (=> d!203758 d!203906))

(assert (=> d!203758 d!203788))

(declare-fun b!580438 () Bool)

(declare-fun e!350757 () List!5701)

(assert (=> b!580438 (= e!350757 Nil!5691)))

(declare-fun b!580440 () Bool)

(declare-fun e!350758 () List!5701)

(declare-fun list!2370 (IArray!3645) List!5701)

(assert (=> b!580440 (= e!350758 (list!2370 (xs!4459 (c!108452 (charsOf!734 token!491)))))))

(declare-fun d!204166 () Bool)

(declare-fun c!108656 () Bool)

(assert (=> d!204166 (= c!108656 ((_ is Empty!1822) (c!108452 (charsOf!734 token!491))))))

(assert (=> d!204166 (= (list!2369 (c!108452 (charsOf!734 token!491))) e!350757)))

(declare-fun b!580441 () Bool)

(assert (=> b!580441 (= e!350758 (++!1593 (list!2369 (left!4647 (c!108452 (charsOf!734 token!491)))) (list!2369 (right!4977 (c!108452 (charsOf!734 token!491))))))))

(declare-fun b!580439 () Bool)

(assert (=> b!580439 (= e!350757 e!350758)))

(declare-fun c!108657 () Bool)

(assert (=> b!580439 (= c!108657 ((_ is Leaf!2882) (c!108452 (charsOf!734 token!491))))))

(assert (= (and d!204166 c!108656) b!580438))

(assert (= (and d!204166 (not c!108656)) b!580439))

(assert (= (and b!580439 c!108657) b!580440))

(assert (= (and b!580439 (not c!108657)) b!580441))

(declare-fun m!839399 () Bool)

(assert (=> b!580440 m!839399))

(declare-fun m!839401 () Bool)

(assert (=> b!580441 m!839401))

(declare-fun m!839403 () Bool)

(assert (=> b!580441 m!839403))

(assert (=> b!580441 m!839401))

(assert (=> b!580441 m!839403))

(declare-fun m!839405 () Bool)

(assert (=> b!580441 m!839405))

(assert (=> d!203888 d!204166))

(declare-fun b!580442 () Bool)

(declare-fun res!249853 () Bool)

(declare-fun e!350759 () Bool)

(assert (=> b!580442 (=> res!249853 e!350759)))

(assert (=> b!580442 (= res!249853 (not (isEmpty!4110 (tail!757 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813))))))))))

(declare-fun b!580443 () Bool)

(declare-fun e!350761 () Bool)

(assert (=> b!580443 (= e!350761 (matchR!586 (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (head!1227 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813)))))) (tail!757 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813)))))))))

(declare-fun b!580444 () Bool)

(declare-fun res!249857 () Bool)

(declare-fun e!350760 () Bool)

(assert (=> b!580444 (=> (not res!249857) (not e!350760))))

(declare-fun call!40057 () Bool)

(assert (=> b!580444 (= res!249857 (not call!40057))))

(declare-fun b!580445 () Bool)

(declare-fun res!249858 () Bool)

(declare-fun e!350762 () Bool)

(assert (=> b!580445 (=> res!249858 e!350762)))

(assert (=> b!580445 (= res!249858 (not ((_ is ElementMatch!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))))

(declare-fun e!350763 () Bool)

(assert (=> b!580445 (= e!350763 e!350762)))

(declare-fun b!580446 () Bool)

(assert (=> b!580446 (= e!350759 (not (= (head!1227 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813))))) (c!108451 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))))

(declare-fun b!580447 () Bool)

(declare-fun e!350764 () Bool)

(assert (=> b!580447 (= e!350764 e!350763)))

(declare-fun c!108659 () Bool)

(assert (=> b!580447 (= c!108659 ((_ is EmptyLang!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun b!580448 () Bool)

(assert (=> b!580448 (= e!350760 (= (head!1227 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813))))) (c!108451 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))))

(declare-fun d!204168 () Bool)

(assert (=> d!204168 e!350764))

(declare-fun c!108660 () Bool)

(assert (=> d!204168 (= c!108660 ((_ is EmptyExpr!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun lt!246025 () Bool)

(assert (=> d!204168 (= lt!246025 e!350761)))

(declare-fun c!108658 () Bool)

(assert (=> d!204168 (= c!108658 (isEmpty!4110 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813))))))))

(assert (=> d!204168 (validRegex!485 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(assert (=> d!204168 (= (matchR!586 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813))))) lt!246025)))

(declare-fun b!580449 () Bool)

(declare-fun e!350765 () Bool)

(assert (=> b!580449 (= e!350762 e!350765)))

(declare-fun res!249854 () Bool)

(assert (=> b!580449 (=> (not res!249854) (not e!350765))))

(assert (=> b!580449 (= res!249854 (not lt!246025))))

(declare-fun bm!40052 () Bool)

(assert (=> bm!40052 (= call!40057 (isEmpty!4110 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813))))))))

(declare-fun b!580450 () Bool)

(assert (=> b!580450 (= e!350764 (= lt!246025 call!40057))))

(declare-fun b!580451 () Bool)

(declare-fun res!249859 () Bool)

(assert (=> b!580451 (=> (not res!249859) (not e!350760))))

(assert (=> b!580451 (= res!249859 (isEmpty!4110 (tail!757 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245813)))))))))

(declare-fun b!580452 () Bool)

(assert (=> b!580452 (= e!350761 (nullable!390 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun b!580453 () Bool)

(assert (=> b!580453 (= e!350765 e!350759)))

(declare-fun res!249855 () Bool)

(assert (=> b!580453 (=> res!249855 e!350759)))

(assert (=> b!580453 (= res!249855 call!40057)))

(declare-fun b!580454 () Bool)

(assert (=> b!580454 (= e!350763 (not lt!246025))))

(declare-fun b!580455 () Bool)

(declare-fun res!249860 () Bool)

(assert (=> b!580455 (=> res!249860 e!350762)))

(assert (=> b!580455 (= res!249860 e!350760)))

(declare-fun res!249856 () Bool)

(assert (=> b!580455 (=> (not res!249856) (not e!350760))))

(assert (=> b!580455 (= res!249856 lt!246025)))

(assert (= (and d!204168 c!108658) b!580452))

(assert (= (and d!204168 (not c!108658)) b!580443))

(assert (= (and d!204168 c!108660) b!580450))

(assert (= (and d!204168 (not c!108660)) b!580447))

(assert (= (and b!580447 c!108659) b!580454))

(assert (= (and b!580447 (not c!108659)) b!580445))

(assert (= (and b!580445 (not res!249858)) b!580455))

(assert (= (and b!580455 res!249856) b!580444))

(assert (= (and b!580444 res!249857) b!580451))

(assert (= (and b!580451 res!249859) b!580448))

(assert (= (and b!580455 (not res!249860)) b!580449))

(assert (= (and b!580449 res!249854) b!580453))

(assert (= (and b!580453 (not res!249855)) b!580442))

(assert (= (and b!580442 (not res!249853)) b!580446))

(assert (= (or b!580450 b!580444 b!580453) bm!40052))

(assert (=> b!580442 m!838699))

(declare-fun m!839407 () Bool)

(assert (=> b!580442 m!839407))

(assert (=> b!580442 m!839407))

(declare-fun m!839409 () Bool)

(assert (=> b!580442 m!839409))

(assert (=> d!204168 m!838699))

(declare-fun m!839411 () Bool)

(assert (=> d!204168 m!839411))

(assert (=> d!204168 m!838035))

(assert (=> b!580443 m!838699))

(declare-fun m!839413 () Bool)

(assert (=> b!580443 m!839413))

(assert (=> b!580443 m!839413))

(declare-fun m!839415 () Bool)

(assert (=> b!580443 m!839415))

(assert (=> b!580443 m!838699))

(assert (=> b!580443 m!839407))

(assert (=> b!580443 m!839415))

(assert (=> b!580443 m!839407))

(declare-fun m!839417 () Bool)

(assert (=> b!580443 m!839417))

(assert (=> b!580451 m!838699))

(assert (=> b!580451 m!839407))

(assert (=> b!580451 m!839407))

(assert (=> b!580451 m!839409))

(assert (=> b!580446 m!838699))

(assert (=> b!580446 m!839413))

(assert (=> b!580452 m!838043))

(assert (=> bm!40052 m!838699))

(assert (=> bm!40052 m!839411))

(assert (=> b!580448 m!838699))

(assert (=> b!580448 m!839413))

(assert (=> b!580014 d!204168))

(assert (=> b!580014 d!203922))

(assert (=> b!580014 d!203924))

(assert (=> b!580014 d!203926))

(declare-fun d!204170 () Bool)

(assert (=> d!204170 (= (isEmpty!4110 (originalCharacters!1144 token!491)) ((_ is Nil!5691) (originalCharacters!1144 token!491)))))

(assert (=> d!203860 d!204170))

(assert (=> d!203824 d!203790))

(declare-fun d!204172 () Bool)

(assert (=> d!204172 (ruleValid!315 thiss!22590 (rule!1859 (_1!3600 (v!16320 lt!245592))))))

(assert (=> d!204172 true))

(declare-fun _$65!836 () Unit!10309)

(assert (=> d!204172 (= (choose!4168 thiss!22590 (rule!1859 (_1!3600 (v!16320 lt!245592))) rules!3103) _$65!836)))

(declare-fun bs!69710 () Bool)

(assert (= bs!69710 d!204172))

(assert (=> bs!69710 m!837985))

(assert (=> d!203824 d!204172))

(assert (=> d!203824 d!203896))

(declare-fun d!204174 () Bool)

(assert (=> d!204174 (= (inv!7172 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574))) (isBalanced!511 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574)))))))

(declare-fun bs!69711 () Bool)

(assert (= bs!69711 d!204174))

(declare-fun m!839419 () Bool)

(assert (=> bs!69711 m!839419))

(assert (=> tb!50727 d!204174))

(assert (=> b!579517 d!204016))

(declare-fun d!204176 () Bool)

(declare-fun c!108663 () Bool)

(assert (=> d!204176 (= c!108663 ((_ is Node!1822) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592)))))))))

(declare-fun e!350770 () Bool)

(assert (=> d!204176 (= (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592)))))) e!350770)))

(declare-fun b!580462 () Bool)

(declare-fun inv!7175 (Conc!1822) Bool)

(assert (=> b!580462 (= e!350770 (inv!7175 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592)))))))))

(declare-fun b!580463 () Bool)

(declare-fun e!350771 () Bool)

(assert (=> b!580463 (= e!350770 e!350771)))

(declare-fun res!249863 () Bool)

(assert (=> b!580463 (= res!249863 (not ((_ is Leaf!2882) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592))))))))))

(assert (=> b!580463 (=> res!249863 e!350771)))

(declare-fun b!580464 () Bool)

(declare-fun inv!7176 (Conc!1822) Bool)

(assert (=> b!580464 (= e!350771 (inv!7176 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592)))))))))

(assert (= (and d!204176 c!108663) b!580462))

(assert (= (and d!204176 (not c!108663)) b!580463))

(assert (= (and b!580463 (not res!249863)) b!580464))

(declare-fun m!839421 () Bool)

(assert (=> b!580462 m!839421))

(declare-fun m!839423 () Bool)

(assert (=> b!580464 m!839423))

(assert (=> b!579883 d!204176))

(assert (=> b!579755 d!204016))

(declare-fun d!204178 () Bool)

(assert (=> d!204178 (= (isEmpty!4112 lt!245678) (not ((_ is Some!1455) lt!245678)))))

(assert (=> d!203656 d!204178))

(assert (=> d!203656 d!203826))

(assert (=> d!203656 d!203838))

(assert (=> d!203656 d!204002))

(declare-fun d!204180 () Bool)

(declare-fun c!108664 () Bool)

(assert (=> d!204180 (= c!108664 ((_ is Node!1822) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491)))))))

(declare-fun e!350772 () Bool)

(assert (=> d!204180 (= (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491)))) e!350772)))

(declare-fun b!580465 () Bool)

(assert (=> b!580465 (= e!350772 (inv!7175 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491)))))))

(declare-fun b!580466 () Bool)

(declare-fun e!350773 () Bool)

(assert (=> b!580466 (= e!350772 e!350773)))

(declare-fun res!249864 () Bool)

(assert (=> b!580466 (= res!249864 (not ((_ is Leaf!2882) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491))))))))

(assert (=> b!580466 (=> res!249864 e!350773)))

(declare-fun b!580467 () Bool)

(assert (=> b!580467 (= e!350773 (inv!7176 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491)))))))

(assert (= (and d!204180 c!108664) b!580465))

(assert (= (and d!204180 (not c!108664)) b!580466))

(assert (= (and b!580466 (not res!249864)) b!580467))

(declare-fun m!839425 () Bool)

(assert (=> b!580465 m!839425))

(declare-fun m!839427 () Bool)

(assert (=> b!580467 m!839427))

(assert (=> b!579976 d!204180))

(declare-fun b!580468 () Bool)

(declare-fun e!350776 () Bool)

(declare-fun e!350774 () Bool)

(assert (=> b!580468 (= e!350776 e!350774)))

(declare-fun res!249865 () Bool)

(assert (=> b!580468 (=> (not res!249865) (not e!350774))))

(declare-fun lt!246030 () Option!1456)

(assert (=> b!580468 (= res!249865 (isDefined!1267 lt!246030))))

(declare-fun b!580469 () Bool)

(declare-fun e!350775 () Option!1456)

(declare-fun lt!246029 () Option!1456)

(declare-fun lt!246026 () Option!1456)

(assert (=> b!580469 (= e!350775 (ite (and ((_ is None!1455) lt!246029) ((_ is None!1455) lt!246026)) None!1455 (ite ((_ is None!1455) lt!246026) lt!246029 (ite ((_ is None!1455) lt!246029) lt!246026 (ite (>= (size!4530 (_1!3600 (v!16320 lt!246029))) (size!4530 (_1!3600 (v!16320 lt!246026)))) lt!246029 lt!246026)))))))

(declare-fun call!40058 () Option!1456)

(assert (=> b!580469 (= lt!246029 call!40058)))

(assert (=> b!580469 (= lt!246026 (maxPrefix!689 thiss!22590 (t!77821 (t!77821 rules!3103)) input!2705))))

(declare-fun b!580470 () Bool)

(declare-fun res!249867 () Bool)

(assert (=> b!580470 (=> (not res!249867) (not e!350774))))

(assert (=> b!580470 (= res!249867 (matchR!586 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!246030)))) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!246030))))))))

(declare-fun d!204182 () Bool)

(assert (=> d!204182 e!350776))

(declare-fun res!249868 () Bool)

(assert (=> d!204182 (=> res!249868 e!350776)))

(assert (=> d!204182 (= res!249868 (isEmpty!4112 lt!246030))))

(assert (=> d!204182 (= lt!246030 e!350775)))

(declare-fun c!108665 () Bool)

(assert (=> d!204182 (= c!108665 (and ((_ is Cons!5692) (t!77821 rules!3103)) ((_ is Nil!5692) (t!77821 (t!77821 rules!3103)))))))

(declare-fun lt!246027 () Unit!10309)

(declare-fun lt!246028 () Unit!10309)

(assert (=> d!204182 (= lt!246027 lt!246028)))

(assert (=> d!204182 (isPrefix!739 input!2705 input!2705)))

(assert (=> d!204182 (= lt!246028 (lemmaIsPrefixRefl!477 input!2705 input!2705))))

(assert (=> d!204182 (rulesValidInductive!398 thiss!22590 (t!77821 rules!3103))))

(assert (=> d!204182 (= (maxPrefix!689 thiss!22590 (t!77821 rules!3103) input!2705) lt!246030)))

(declare-fun bm!40053 () Bool)

(assert (=> bm!40053 (= call!40058 (maxPrefixOneRule!390 thiss!22590 (h!11093 (t!77821 rules!3103)) input!2705))))

(declare-fun b!580471 () Bool)

(assert (=> b!580471 (= e!350775 call!40058)))

(declare-fun b!580472 () Bool)

(declare-fun res!249870 () Bool)

(assert (=> b!580472 (=> (not res!249870) (not e!350774))))

(assert (=> b!580472 (= res!249870 (= (++!1593 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!246030)))) (_2!3600 (get!2172 lt!246030))) input!2705))))

(declare-fun b!580473 () Bool)

(declare-fun res!249871 () Bool)

(assert (=> b!580473 (=> (not res!249871) (not e!350774))))

(assert (=> b!580473 (= res!249871 (< (size!4531 (_2!3600 (get!2172 lt!246030))) (size!4531 input!2705)))))

(declare-fun b!580474 () Bool)

(declare-fun res!249866 () Bool)

(assert (=> b!580474 (=> (not res!249866) (not e!350774))))

(assert (=> b!580474 (= res!249866 (= (value!36359 (_1!3600 (get!2172 lt!246030))) (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!246030)))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!246030)))))))))

(declare-fun b!580475 () Bool)

(assert (=> b!580475 (= e!350774 (contains!1337 (t!77821 rules!3103) (rule!1859 (_1!3600 (get!2172 lt!246030)))))))

(declare-fun b!580476 () Bool)

(declare-fun res!249869 () Bool)

(assert (=> b!580476 (=> (not res!249869) (not e!350774))))

(assert (=> b!580476 (= res!249869 (= (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!246030)))) (originalCharacters!1144 (_1!3600 (get!2172 lt!246030)))))))

(assert (= (and d!204182 c!108665) b!580471))

(assert (= (and d!204182 (not c!108665)) b!580469))

(assert (= (or b!580471 b!580469) bm!40053))

(assert (= (and d!204182 (not res!249868)) b!580468))

(assert (= (and b!580468 res!249865) b!580476))

(assert (= (and b!580476 res!249869) b!580473))

(assert (= (and b!580473 res!249871) b!580472))

(assert (= (and b!580472 res!249870) b!580474))

(assert (= (and b!580474 res!249866) b!580470))

(assert (= (and b!580470 res!249867) b!580475))

(declare-fun m!839429 () Bool)

(assert (=> b!580473 m!839429))

(declare-fun m!839431 () Bool)

(assert (=> b!580473 m!839431))

(assert (=> b!580473 m!838197))

(declare-fun m!839433 () Bool)

(assert (=> d!204182 m!839433))

(assert (=> d!204182 m!838005))

(assert (=> d!204182 m!837981))

(assert (=> d!204182 m!839029))

(assert (=> b!580476 m!839429))

(declare-fun m!839435 () Bool)

(assert (=> b!580476 m!839435))

(assert (=> b!580476 m!839435))

(declare-fun m!839437 () Bool)

(assert (=> b!580476 m!839437))

(declare-fun m!839439 () Bool)

(assert (=> bm!40053 m!839439))

(assert (=> b!580474 m!839429))

(declare-fun m!839441 () Bool)

(assert (=> b!580474 m!839441))

(assert (=> b!580474 m!839441))

(declare-fun m!839443 () Bool)

(assert (=> b!580474 m!839443))

(declare-fun m!839445 () Bool)

(assert (=> b!580468 m!839445))

(assert (=> b!580475 m!839429))

(declare-fun m!839447 () Bool)

(assert (=> b!580475 m!839447))

(assert (=> b!580472 m!839429))

(assert (=> b!580472 m!839435))

(assert (=> b!580472 m!839435))

(assert (=> b!580472 m!839437))

(assert (=> b!580472 m!839437))

(declare-fun m!839449 () Bool)

(assert (=> b!580472 m!839449))

(declare-fun m!839451 () Bool)

(assert (=> b!580469 m!839451))

(assert (=> b!580470 m!839429))

(assert (=> b!580470 m!839435))

(assert (=> b!580470 m!839435))

(assert (=> b!580470 m!839437))

(assert (=> b!580470 m!839437))

(declare-fun m!839453 () Bool)

(assert (=> b!580470 m!839453))

(assert (=> b!579637 d!204182))

(assert (=> d!203844 d!204144))

(declare-fun d!204184 () Bool)

(declare-fun charsToBigInt!0 (List!5700 Int) Int)

(assert (=> d!204184 (= (inv!15 (value!36359 token!491)) (= (charsToBigInt!0 (text!8352 (value!36359 token!491)) 0) (value!36355 (value!36359 token!491))))))

(declare-fun bs!69712 () Bool)

(assert (= bs!69712 d!204184))

(declare-fun m!839455 () Bool)

(assert (=> bs!69712 m!839455))

(assert (=> b!579572 d!204184))

(declare-fun d!204186 () Bool)

(assert (=> d!204186 (= (maxPrefixOneRule!390 thiss!22590 (rule!1859 token!491) lt!245595) (Some!1455 (tuple2!6673 (Token!1947 (apply!1370 (transformation!1105 (rule!1859 token!491)) (seqFromList!1293 lt!245601)) (rule!1859 token!491) (size!4531 lt!245601) lt!245601) suffix!1342)))))

(assert (=> d!204186 true))

(declare-fun _$59!255 () Unit!10309)

(assert (=> d!204186 (= (choose!4172 thiss!22590 rules!3103 lt!245601 lt!245595 suffix!1342 (rule!1859 token!491)) _$59!255)))

(declare-fun bs!69713 () Bool)

(assert (= bs!69713 d!204186))

(assert (=> bs!69713 m!837891))

(assert (=> bs!69713 m!837895))

(assert (=> bs!69713 m!837895))

(assert (=> bs!69713 m!838715))

(assert (=> bs!69713 m!837991))

(assert (=> d!203872 d!204186))

(assert (=> d!203872 d!203876))

(assert (=> d!203872 d!203852))

(assert (=> d!203872 d!203880))

(assert (=> d!203872 d!203836))

(declare-fun d!204188 () Bool)

(assert (=> d!204188 (= (apply!1370 (transformation!1105 (rule!1859 token!491)) (seqFromList!1293 lt!245601)) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) (seqFromList!1293 lt!245601)))))

(declare-fun b_lambda!22823 () Bool)

(assert (=> (not b_lambda!22823) (not d!204188)))

(declare-fun t!77964 () Bool)

(declare-fun tb!50809 () Bool)

(assert (=> (and b!579433 (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) t!77964) tb!50809))

(declare-fun result!56880 () Bool)

(assert (=> tb!50809 (= result!56880 (inv!21 (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) (seqFromList!1293 lt!245601))))))

(declare-fun m!839457 () Bool)

(assert (=> tb!50809 m!839457))

(assert (=> d!204188 t!77964))

(declare-fun b_and!57065 () Bool)

(assert (= b_and!57059 (and (=> t!77964 result!56880) b_and!57065)))

(declare-fun t!77966 () Bool)

(declare-fun tb!50811 () Bool)

(assert (=> (and b!579460 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) t!77966) tb!50811))

(declare-fun result!56882 () Bool)

(assert (= result!56882 result!56880))

(assert (=> d!204188 t!77966))

(declare-fun b_and!57067 () Bool)

(assert (= b_and!57061 (and (=> t!77966 result!56882) b_and!57067)))

(declare-fun t!77968 () Bool)

(declare-fun tb!50813 () Bool)

(assert (=> (and b!580076 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) t!77968) tb!50813))

(declare-fun result!56884 () Bool)

(assert (= result!56884 result!56880))

(assert (=> d!204188 t!77968))

(declare-fun b_and!57069 () Bool)

(assert (= b_and!57063 (and (=> t!77968 result!56884) b_and!57069)))

(assert (=> d!204188 m!837895))

(declare-fun m!839459 () Bool)

(assert (=> d!204188 m!839459))

(assert (=> d!203872 d!204188))

(assert (=> b!579751 d!203902))

(assert (=> b!579751 d!203904))

(assert (=> d!203750 d!203680))

(declare-fun b!580477 () Bool)

(declare-fun e!350778 () Bool)

(declare-fun call!40059 () Bool)

(assert (=> b!580477 (= e!350778 call!40059)))

(declare-fun b!580478 () Bool)

(declare-fun e!350781 () Bool)

(declare-fun e!350783 () Bool)

(assert (=> b!580478 (= e!350781 e!350783)))

(declare-fun c!108667 () Bool)

(assert (=> b!580478 (= c!108667 ((_ is Union!1439) (regex!1105 (rule!1859 token!491))))))

(declare-fun d!204190 () Bool)

(declare-fun res!249874 () Bool)

(declare-fun e!350779 () Bool)

(assert (=> d!204190 (=> res!249874 e!350779)))

(assert (=> d!204190 (= res!249874 ((_ is ElementMatch!1439) (regex!1105 (rule!1859 token!491))))))

(assert (=> d!204190 (= (validRegex!485 (regex!1105 (rule!1859 token!491))) e!350779)))

(declare-fun b!580479 () Bool)

(assert (=> b!580479 (= e!350779 e!350781)))

(declare-fun c!108666 () Bool)

(assert (=> b!580479 (= c!108666 ((_ is Star!1439) (regex!1105 (rule!1859 token!491))))))

(declare-fun b!580480 () Bool)

(declare-fun e!350784 () Bool)

(declare-fun call!40060 () Bool)

(assert (=> b!580480 (= e!350784 call!40060)))

(declare-fun b!580481 () Bool)

(declare-fun e!350782 () Bool)

(assert (=> b!580481 (= e!350782 e!350778)))

(declare-fun res!249876 () Bool)

(assert (=> b!580481 (=> (not res!249876) (not e!350778))))

(declare-fun call!40061 () Bool)

(assert (=> b!580481 (= res!249876 call!40061)))

(declare-fun b!580482 () Bool)

(declare-fun e!350780 () Bool)

(assert (=> b!580482 (= e!350780 call!40061)))

(declare-fun bm!40054 () Bool)

(assert (=> bm!40054 (= call!40060 (validRegex!485 (ite c!108666 (reg!1768 (regex!1105 (rule!1859 token!491))) (ite c!108667 (regTwo!3391 (regex!1105 (rule!1859 token!491))) (regOne!3390 (regex!1105 (rule!1859 token!491)))))))))

(declare-fun bm!40055 () Bool)

(assert (=> bm!40055 (= call!40059 (validRegex!485 (ite c!108667 (regOne!3391 (regex!1105 (rule!1859 token!491))) (regTwo!3390 (regex!1105 (rule!1859 token!491))))))))

(declare-fun b!580483 () Bool)

(declare-fun res!249875 () Bool)

(assert (=> b!580483 (=> res!249875 e!350782)))

(assert (=> b!580483 (= res!249875 (not ((_ is Concat!2568) (regex!1105 (rule!1859 token!491)))))))

(assert (=> b!580483 (= e!350783 e!350782)))

(declare-fun bm!40056 () Bool)

(assert (=> bm!40056 (= call!40061 call!40060)))

(declare-fun b!580484 () Bool)

(declare-fun res!249872 () Bool)

(assert (=> b!580484 (=> (not res!249872) (not e!350780))))

(assert (=> b!580484 (= res!249872 call!40059)))

(assert (=> b!580484 (= e!350783 e!350780)))

(declare-fun b!580485 () Bool)

(assert (=> b!580485 (= e!350781 e!350784)))

(declare-fun res!249873 () Bool)

(assert (=> b!580485 (= res!249873 (not (nullable!390 (reg!1768 (regex!1105 (rule!1859 token!491))))))))

(assert (=> b!580485 (=> (not res!249873) (not e!350784))))

(assert (= (and d!204190 (not res!249874)) b!580479))

(assert (= (and b!580479 c!108666) b!580485))

(assert (= (and b!580479 (not c!108666)) b!580478))

(assert (= (and b!580485 res!249873) b!580480))

(assert (= (and b!580478 c!108667) b!580484))

(assert (= (and b!580478 (not c!108667)) b!580483))

(assert (= (and b!580484 res!249872) b!580482))

(assert (= (and b!580483 (not res!249875)) b!580481))

(assert (= (and b!580481 res!249876) b!580477))

(assert (= (or b!580484 b!580477) bm!40055))

(assert (= (or b!580482 b!580481) bm!40056))

(assert (= (or b!580480 bm!40056) bm!40054))

(declare-fun m!839461 () Bool)

(assert (=> bm!40054 m!839461))

(declare-fun m!839463 () Bool)

(assert (=> bm!40055 m!839463))

(declare-fun m!839465 () Bool)

(assert (=> b!580485 m!839465))

(assert (=> d!203750 d!204190))

(declare-fun b!580486 () Bool)

(declare-fun res!249877 () Bool)

(declare-fun e!350785 () Bool)

(assert (=> b!580486 (=> res!249877 e!350785)))

(assert (=> b!580486 (= res!249877 (not (isEmpty!4110 (tail!757 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821))))))))))

(declare-fun b!580487 () Bool)

(declare-fun e!350787 () Bool)

(assert (=> b!580487 (= e!350787 (matchR!586 (derivativeStep!303 (regex!1105 (rule!1859 token!491)) (head!1227 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821)))))) (tail!757 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821)))))))))

(declare-fun b!580488 () Bool)

(declare-fun res!249881 () Bool)

(declare-fun e!350786 () Bool)

(assert (=> b!580488 (=> (not res!249881) (not e!350786))))

(declare-fun call!40062 () Bool)

(assert (=> b!580488 (= res!249881 (not call!40062))))

(declare-fun b!580489 () Bool)

(declare-fun res!249882 () Bool)

(declare-fun e!350788 () Bool)

(assert (=> b!580489 (=> res!249882 e!350788)))

(assert (=> b!580489 (= res!249882 (not ((_ is ElementMatch!1439) (regex!1105 (rule!1859 token!491)))))))

(declare-fun e!350789 () Bool)

(assert (=> b!580489 (= e!350789 e!350788)))

(declare-fun b!580490 () Bool)

(assert (=> b!580490 (= e!350785 (not (= (head!1227 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821))))) (c!108451 (regex!1105 (rule!1859 token!491))))))))

(declare-fun b!580491 () Bool)

(declare-fun e!350790 () Bool)

(assert (=> b!580491 (= e!350790 e!350789)))

(declare-fun c!108669 () Bool)

(assert (=> b!580491 (= c!108669 ((_ is EmptyLang!1439) (regex!1105 (rule!1859 token!491))))))

(declare-fun b!580492 () Bool)

(assert (=> b!580492 (= e!350786 (= (head!1227 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821))))) (c!108451 (regex!1105 (rule!1859 token!491)))))))

(declare-fun d!204192 () Bool)

(assert (=> d!204192 e!350790))

(declare-fun c!108670 () Bool)

(assert (=> d!204192 (= c!108670 ((_ is EmptyExpr!1439) (regex!1105 (rule!1859 token!491))))))

(declare-fun lt!246031 () Bool)

(assert (=> d!204192 (= lt!246031 e!350787)))

(declare-fun c!108668 () Bool)

(assert (=> d!204192 (= c!108668 (isEmpty!4110 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821))))))))

(assert (=> d!204192 (validRegex!485 (regex!1105 (rule!1859 token!491)))))

(assert (=> d!204192 (= (matchR!586 (regex!1105 (rule!1859 token!491)) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821))))) lt!246031)))

(declare-fun b!580493 () Bool)

(declare-fun e!350791 () Bool)

(assert (=> b!580493 (= e!350788 e!350791)))

(declare-fun res!249878 () Bool)

(assert (=> b!580493 (=> (not res!249878) (not e!350791))))

(assert (=> b!580493 (= res!249878 (not lt!246031))))

(declare-fun bm!40057 () Bool)

(assert (=> bm!40057 (= call!40062 (isEmpty!4110 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821))))))))

(declare-fun b!580494 () Bool)

(assert (=> b!580494 (= e!350790 (= lt!246031 call!40062))))

(declare-fun b!580495 () Bool)

(declare-fun res!249883 () Bool)

(assert (=> b!580495 (=> (not res!249883) (not e!350786))))

(assert (=> b!580495 (= res!249883 (isEmpty!4110 (tail!757 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245821)))))))))

(declare-fun b!580496 () Bool)

(assert (=> b!580496 (= e!350787 (nullable!390 (regex!1105 (rule!1859 token!491))))))

(declare-fun b!580497 () Bool)

(assert (=> b!580497 (= e!350791 e!350785)))

(declare-fun res!249879 () Bool)

(assert (=> b!580497 (=> res!249879 e!350785)))

(assert (=> b!580497 (= res!249879 call!40062)))

(declare-fun b!580498 () Bool)

(assert (=> b!580498 (= e!350789 (not lt!246031))))

(declare-fun b!580499 () Bool)

(declare-fun res!249884 () Bool)

(assert (=> b!580499 (=> res!249884 e!350788)))

(assert (=> b!580499 (= res!249884 e!350786)))

(declare-fun res!249880 () Bool)

(assert (=> b!580499 (=> (not res!249880) (not e!350786))))

(assert (=> b!580499 (= res!249880 lt!246031)))

(assert (= (and d!204192 c!108668) b!580496))

(assert (= (and d!204192 (not c!108668)) b!580487))

(assert (= (and d!204192 c!108670) b!580494))

(assert (= (and d!204192 (not c!108670)) b!580491))

(assert (= (and b!580491 c!108669) b!580498))

(assert (= (and b!580491 (not c!108669)) b!580489))

(assert (= (and b!580489 (not res!249882)) b!580499))

(assert (= (and b!580499 res!249880) b!580488))

(assert (= (and b!580488 res!249881) b!580495))

(assert (= (and b!580495 res!249883) b!580492))

(assert (= (and b!580499 (not res!249884)) b!580493))

(assert (= (and b!580493 res!249878) b!580497))

(assert (= (and b!580497 (not res!249879)) b!580486))

(assert (= (and b!580486 (not res!249877)) b!580490))

(assert (= (or b!580494 b!580488 b!580497) bm!40057))

(assert (=> b!580486 m!838747))

(declare-fun m!839467 () Bool)

(assert (=> b!580486 m!839467))

(assert (=> b!580486 m!839467))

(declare-fun m!839469 () Bool)

(assert (=> b!580486 m!839469))

(assert (=> d!204192 m!838747))

(declare-fun m!839471 () Bool)

(assert (=> d!204192 m!839471))

(assert (=> d!204192 m!838409))

(assert (=> b!580487 m!838747))

(declare-fun m!839473 () Bool)

(assert (=> b!580487 m!839473))

(assert (=> b!580487 m!839473))

(declare-fun m!839475 () Bool)

(assert (=> b!580487 m!839475))

(assert (=> b!580487 m!838747))

(assert (=> b!580487 m!839467))

(assert (=> b!580487 m!839475))

(assert (=> b!580487 m!839467))

(declare-fun m!839477 () Bool)

(assert (=> b!580487 m!839477))

(assert (=> b!580495 m!838747))

(assert (=> b!580495 m!839467))

(assert (=> b!580495 m!839467))

(assert (=> b!580495 m!839469))

(assert (=> b!580490 m!838747))

(assert (=> b!580490 m!839473))

(assert (=> b!580496 m!838415))

(assert (=> bm!40057 m!838747))

(assert (=> bm!40057 m!839471))

(assert (=> b!580492 m!838747))

(assert (=> b!580492 m!839473))

(assert (=> b!580023 d!204192))

(assert (=> b!580023 d!203932))

(assert (=> b!580023 d!203934))

(assert (=> b!580023 d!203908))

(declare-fun d!204194 () Bool)

(declare-fun res!249889 () Bool)

(declare-fun e!350796 () Bool)

(assert (=> d!204194 (=> res!249889 e!350796)))

(assert (=> d!204194 (= res!249889 ((_ is Nil!5692) rules!3103))))

(assert (=> d!204194 (= (noDuplicateTag!393 thiss!22590 rules!3103 Nil!5694) e!350796)))

(declare-fun b!580504 () Bool)

(declare-fun e!350797 () Bool)

(assert (=> b!580504 (= e!350796 e!350797)))

(declare-fun res!249890 () Bool)

(assert (=> b!580504 (=> (not res!249890) (not e!350797))))

(declare-fun contains!1338 (List!5704 String!7388) Bool)

(assert (=> b!580504 (= res!249890 (not (contains!1338 Nil!5694 (tag!1367 (h!11093 rules!3103)))))))

(declare-fun b!580505 () Bool)

(assert (=> b!580505 (= e!350797 (noDuplicateTag!393 thiss!22590 (t!77821 rules!3103) (Cons!5694 (tag!1367 (h!11093 rules!3103)) Nil!5694)))))

(assert (= (and d!204194 (not res!249889)) b!580504))

(assert (= (and b!580504 res!249890) b!580505))

(declare-fun m!839479 () Bool)

(assert (=> b!580504 m!839479))

(declare-fun m!839481 () Bool)

(assert (=> b!580505 m!839481))

(assert (=> b!579647 d!204194))

(assert (=> bm!39985 d!203680))

(declare-fun b!580509 () Bool)

(declare-fun e!350799 () Bool)

(declare-fun lt!246032 () List!5701)

(assert (=> b!580509 (= e!350799 (or (not (= (_2!3600 (get!2172 lt!245797)) Nil!5691)) (= lt!246032 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797)))))))))

(declare-fun d!204196 () Bool)

(assert (=> d!204196 e!350799))

(declare-fun res!249891 () Bool)

(assert (=> d!204196 (=> (not res!249891) (not e!350799))))

(assert (=> d!204196 (= res!249891 (= (content!1010 lt!246032) ((_ map or) (content!1010 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797))))) (content!1010 (_2!3600 (get!2172 lt!245797))))))))

(declare-fun e!350798 () List!5701)

(assert (=> d!204196 (= lt!246032 e!350798)))

(declare-fun c!108671 () Bool)

(assert (=> d!204196 (= c!108671 ((_ is Nil!5691) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797))))))))

(assert (=> d!204196 (= (++!1593 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797)))) (_2!3600 (get!2172 lt!245797))) lt!246032)))

(declare-fun b!580508 () Bool)

(declare-fun res!249892 () Bool)

(assert (=> b!580508 (=> (not res!249892) (not e!350799))))

(assert (=> b!580508 (= res!249892 (= (size!4531 lt!246032) (+ (size!4531 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797))))) (size!4531 (_2!3600 (get!2172 lt!245797))))))))

(declare-fun b!580506 () Bool)

(assert (=> b!580506 (= e!350798 (_2!3600 (get!2172 lt!245797)))))

(declare-fun b!580507 () Bool)

(assert (=> b!580507 (= e!350798 (Cons!5691 (h!11092 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797))))) (++!1593 (t!77820 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797))))) (_2!3600 (get!2172 lt!245797)))))))

(assert (= (and d!204196 c!108671) b!580506))

(assert (= (and d!204196 (not c!108671)) b!580507))

(assert (= (and d!204196 res!249891) b!580508))

(assert (= (and b!580508 res!249892) b!580509))

(declare-fun m!839483 () Bool)

(assert (=> d!204196 m!839483))

(assert (=> d!204196 m!838635))

(declare-fun m!839485 () Bool)

(assert (=> d!204196 m!839485))

(declare-fun m!839487 () Bool)

(assert (=> d!204196 m!839487))

(declare-fun m!839489 () Bool)

(assert (=> b!580508 m!839489))

(assert (=> b!580508 m!838635))

(declare-fun m!839491 () Bool)

(assert (=> b!580508 m!839491))

(assert (=> b!580508 m!838625))

(declare-fun m!839493 () Bool)

(assert (=> b!580507 m!839493))

(assert (=> b!579981 d!204196))

(declare-fun d!204198 () Bool)

(assert (=> d!204198 (= (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797)))) (list!2369 (c!108452 (charsOf!734 (_1!3600 (get!2172 lt!245797))))))))

(declare-fun bs!69714 () Bool)

(assert (= bs!69714 d!204198))

(declare-fun m!839495 () Bool)

(assert (=> bs!69714 m!839495))

(assert (=> b!579981 d!204198))

(declare-fun d!204200 () Bool)

(declare-fun lt!246033 () BalanceConc!3652)

(assert (=> d!204200 (= (list!2367 lt!246033) (originalCharacters!1144 (_1!3600 (get!2172 lt!245797))))))

(assert (=> d!204200 (= lt!246033 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245797))))) (value!36359 (_1!3600 (get!2172 lt!245797)))))))

(assert (=> d!204200 (= (charsOf!734 (_1!3600 (get!2172 lt!245797))) lt!246033)))

(declare-fun b_lambda!22825 () Bool)

(assert (=> (not b_lambda!22825) (not d!204200)))

(declare-fun tb!50815 () Bool)

(declare-fun t!77970 () Bool)

(assert (=> (and b!579433 (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))))) t!77970) tb!50815))

(declare-fun b!580510 () Bool)

(declare-fun e!350800 () Bool)

(declare-fun tp!181323 () Bool)

(assert (=> b!580510 (= e!350800 (and (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245797))))) (value!36359 (_1!3600 (get!2172 lt!245797)))))) tp!181323))))

(declare-fun result!56886 () Bool)

(assert (=> tb!50815 (= result!56886 (and (inv!7172 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245797))))) (value!36359 (_1!3600 (get!2172 lt!245797))))) e!350800))))

(assert (= tb!50815 b!580510))

(declare-fun m!839497 () Bool)

(assert (=> b!580510 m!839497))

(declare-fun m!839499 () Bool)

(assert (=> tb!50815 m!839499))

(assert (=> d!204200 t!77970))

(declare-fun b_and!57071 () Bool)

(assert (= b_and!57041 (and (=> t!77970 result!56886) b_and!57071)))

(declare-fun t!77972 () Bool)

(declare-fun tb!50817 () Bool)

(assert (=> (and b!579460 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))))) t!77972) tb!50817))

(declare-fun result!56888 () Bool)

(assert (= result!56888 result!56886))

(assert (=> d!204200 t!77972))

(declare-fun b_and!57073 () Bool)

(assert (= b_and!57043 (and (=> t!77972 result!56888) b_and!57073)))

(declare-fun t!77974 () Bool)

(declare-fun tb!50819 () Bool)

(assert (=> (and b!580076 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))))) t!77974) tb!50819))

(declare-fun result!56890 () Bool)

(assert (= result!56890 result!56886))

(assert (=> d!204200 t!77974))

(declare-fun b_and!57075 () Bool)

(assert (= b_and!57045 (and (=> t!77974 result!56890) b_and!57075)))

(declare-fun m!839501 () Bool)

(assert (=> d!204200 m!839501))

(declare-fun m!839503 () Bool)

(assert (=> d!204200 m!839503))

(assert (=> b!579981 d!204200))

(assert (=> b!579981 d!204104))

(assert (=> bm!39990 d!203680))

(declare-fun e!350802 () Bool)

(declare-fun b!580514 () Bool)

(declare-fun lt!246034 () List!5701)

(assert (=> b!580514 (= e!350802 (or (not (= (_2!3600 (v!16320 lt!245592)) Nil!5691)) (= lt!246034 (t!77820 lt!245578))))))

(declare-fun d!204202 () Bool)

(assert (=> d!204202 e!350802))

(declare-fun res!249893 () Bool)

(assert (=> d!204202 (=> (not res!249893) (not e!350802))))

(assert (=> d!204202 (= res!249893 (= (content!1010 lt!246034) ((_ map or) (content!1010 (t!77820 lt!245578)) (content!1010 (_2!3600 (v!16320 lt!245592))))))))

(declare-fun e!350801 () List!5701)

(assert (=> d!204202 (= lt!246034 e!350801)))

(declare-fun c!108672 () Bool)

(assert (=> d!204202 (= c!108672 ((_ is Nil!5691) (t!77820 lt!245578)))))

(assert (=> d!204202 (= (++!1593 (t!77820 lt!245578) (_2!3600 (v!16320 lt!245592))) lt!246034)))

(declare-fun b!580513 () Bool)

(declare-fun res!249894 () Bool)

(assert (=> b!580513 (=> (not res!249894) (not e!350802))))

(assert (=> b!580513 (= res!249894 (= (size!4531 lt!246034) (+ (size!4531 (t!77820 lt!245578)) (size!4531 (_2!3600 (v!16320 lt!245592))))))))

(declare-fun b!580511 () Bool)

(assert (=> b!580511 (= e!350801 (_2!3600 (v!16320 lt!245592)))))

(declare-fun b!580512 () Bool)

(assert (=> b!580512 (= e!350801 (Cons!5691 (h!11092 (t!77820 lt!245578)) (++!1593 (t!77820 (t!77820 lt!245578)) (_2!3600 (v!16320 lt!245592)))))))

(assert (= (and d!204202 c!108672) b!580511))

(assert (= (and d!204202 (not c!108672)) b!580512))

(assert (= (and d!204202 res!249893) b!580513))

(assert (= (and b!580513 res!249894) b!580514))

(declare-fun m!839505 () Bool)

(assert (=> d!204202 m!839505))

(declare-fun m!839507 () Bool)

(assert (=> d!204202 m!839507))

(assert (=> d!204202 m!838469))

(declare-fun m!839509 () Bool)

(assert (=> b!580513 m!839509))

(assert (=> b!580513 m!838481))

(assert (=> b!580513 m!838473))

(declare-fun m!839511 () Bool)

(assert (=> b!580512 m!839511))

(assert (=> b!579855 d!204202))

(declare-fun b!580515 () Bool)

(declare-fun e!350805 () Bool)

(declare-fun e!350803 () Bool)

(assert (=> b!580515 (= e!350805 e!350803)))

(declare-fun res!249895 () Bool)

(assert (=> b!580515 (=> (not res!249895) (not e!350803))))

(declare-fun lt!246039 () Option!1456)

(assert (=> b!580515 (= res!249895 (isDefined!1267 lt!246039))))

(declare-fun b!580516 () Bool)

(declare-fun e!350804 () Option!1456)

(declare-fun lt!246038 () Option!1456)

(declare-fun lt!246035 () Option!1456)

(assert (=> b!580516 (= e!350804 (ite (and ((_ is None!1455) lt!246038) ((_ is None!1455) lt!246035)) None!1455 (ite ((_ is None!1455) lt!246035) lt!246038 (ite ((_ is None!1455) lt!246038) lt!246035 (ite (>= (size!4530 (_1!3600 (v!16320 lt!246038))) (size!4530 (_1!3600 (v!16320 lt!246035)))) lt!246038 lt!246035)))))))

(declare-fun call!40063 () Option!1456)

(assert (=> b!580516 (= lt!246038 call!40063)))

(assert (=> b!580516 (= lt!246035 (maxPrefix!689 thiss!22590 (t!77821 (t!77821 rules!3103)) lt!245595))))

(declare-fun b!580517 () Bool)

(declare-fun res!249897 () Bool)

(assert (=> b!580517 (=> (not res!249897) (not e!350803))))

(assert (=> b!580517 (= res!249897 (matchR!586 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!246039)))) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!246039))))))))

(declare-fun d!204204 () Bool)

(assert (=> d!204204 e!350805))

(declare-fun res!249898 () Bool)

(assert (=> d!204204 (=> res!249898 e!350805)))

(assert (=> d!204204 (= res!249898 (isEmpty!4112 lt!246039))))

(assert (=> d!204204 (= lt!246039 e!350804)))

(declare-fun c!108673 () Bool)

(assert (=> d!204204 (= c!108673 (and ((_ is Cons!5692) (t!77821 rules!3103)) ((_ is Nil!5692) (t!77821 (t!77821 rules!3103)))))))

(declare-fun lt!246036 () Unit!10309)

(declare-fun lt!246037 () Unit!10309)

(assert (=> d!204204 (= lt!246036 lt!246037)))

(assert (=> d!204204 (isPrefix!739 lt!245595 lt!245595)))

(assert (=> d!204204 (= lt!246037 (lemmaIsPrefixRefl!477 lt!245595 lt!245595))))

(assert (=> d!204204 (rulesValidInductive!398 thiss!22590 (t!77821 rules!3103))))

(assert (=> d!204204 (= (maxPrefix!689 thiss!22590 (t!77821 rules!3103) lt!245595) lt!246039)))

(declare-fun bm!40058 () Bool)

(assert (=> bm!40058 (= call!40063 (maxPrefixOneRule!390 thiss!22590 (h!11093 (t!77821 rules!3103)) lt!245595))))

(declare-fun b!580518 () Bool)

(assert (=> b!580518 (= e!350804 call!40063)))

(declare-fun b!580519 () Bool)

(declare-fun res!249900 () Bool)

(assert (=> b!580519 (=> (not res!249900) (not e!350803))))

(assert (=> b!580519 (= res!249900 (= (++!1593 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!246039)))) (_2!3600 (get!2172 lt!246039))) lt!245595))))

(declare-fun b!580520 () Bool)

(declare-fun res!249901 () Bool)

(assert (=> b!580520 (=> (not res!249901) (not e!350803))))

(assert (=> b!580520 (= res!249901 (< (size!4531 (_2!3600 (get!2172 lt!246039))) (size!4531 lt!245595)))))

(declare-fun b!580521 () Bool)

(declare-fun res!249896 () Bool)

(assert (=> b!580521 (=> (not res!249896) (not e!350803))))

(assert (=> b!580521 (= res!249896 (= (value!36359 (_1!3600 (get!2172 lt!246039))) (apply!1370 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!246039)))) (seqFromList!1293 (originalCharacters!1144 (_1!3600 (get!2172 lt!246039)))))))))

(declare-fun b!580522 () Bool)

(assert (=> b!580522 (= e!350803 (contains!1337 (t!77821 rules!3103) (rule!1859 (_1!3600 (get!2172 lt!246039)))))))

(declare-fun b!580523 () Bool)

(declare-fun res!249899 () Bool)

(assert (=> b!580523 (=> (not res!249899) (not e!350803))))

(assert (=> b!580523 (= res!249899 (= (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!246039)))) (originalCharacters!1144 (_1!3600 (get!2172 lt!246039)))))))

(assert (= (and d!204204 c!108673) b!580518))

(assert (= (and d!204204 (not c!108673)) b!580516))

(assert (= (or b!580518 b!580516) bm!40058))

(assert (= (and d!204204 (not res!249898)) b!580515))

(assert (= (and b!580515 res!249895) b!580523))

(assert (= (and b!580523 res!249899) b!580520))

(assert (= (and b!580520 res!249901) b!580519))

(assert (= (and b!580519 res!249900) b!580521))

(assert (= (and b!580521 res!249896) b!580517))

(assert (= (and b!580517 res!249897) b!580522))

(declare-fun m!839513 () Bool)

(assert (=> b!580520 m!839513))

(declare-fun m!839515 () Bool)

(assert (=> b!580520 m!839515))

(assert (=> b!580520 m!838545))

(declare-fun m!839517 () Bool)

(assert (=> d!204204 m!839517))

(assert (=> d!204204 m!838629))

(assert (=> d!204204 m!838631))

(assert (=> d!204204 m!839029))

(assert (=> b!580523 m!839513))

(declare-fun m!839519 () Bool)

(assert (=> b!580523 m!839519))

(assert (=> b!580523 m!839519))

(declare-fun m!839521 () Bool)

(assert (=> b!580523 m!839521))

(declare-fun m!839523 () Bool)

(assert (=> bm!40058 m!839523))

(assert (=> b!580521 m!839513))

(declare-fun m!839525 () Bool)

(assert (=> b!580521 m!839525))

(assert (=> b!580521 m!839525))

(declare-fun m!839527 () Bool)

(assert (=> b!580521 m!839527))

(declare-fun m!839529 () Bool)

(assert (=> b!580515 m!839529))

(assert (=> b!580522 m!839513))

(declare-fun m!839531 () Bool)

(assert (=> b!580522 m!839531))

(assert (=> b!580519 m!839513))

(assert (=> b!580519 m!839519))

(assert (=> b!580519 m!839519))

(assert (=> b!580519 m!839521))

(assert (=> b!580519 m!839521))

(declare-fun m!839533 () Bool)

(assert (=> b!580519 m!839533))

(declare-fun m!839535 () Bool)

(assert (=> b!580516 m!839535))

(assert (=> b!580517 m!839513))

(assert (=> b!580517 m!839519))

(assert (=> b!580517 m!839519))

(assert (=> b!580517 m!839521))

(assert (=> b!580517 m!839521))

(declare-fun m!839537 () Bool)

(assert (=> b!580517 m!839537))

(assert (=> b!579978 d!204204))

(declare-fun b!580527 () Bool)

(declare-fun e!350807 () Bool)

(declare-fun lt!246040 () List!5701)

(assert (=> b!580527 (= e!350807 (or (not (= (_2!3600 (get!2172 lt!245678)) Nil!5691)) (= lt!246040 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678)))))))))

(declare-fun d!204206 () Bool)

(assert (=> d!204206 e!350807))

(declare-fun res!249902 () Bool)

(assert (=> d!204206 (=> (not res!249902) (not e!350807))))

(assert (=> d!204206 (= res!249902 (= (content!1010 lt!246040) ((_ map or) (content!1010 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678))))) (content!1010 (_2!3600 (get!2172 lt!245678))))))))

(declare-fun e!350806 () List!5701)

(assert (=> d!204206 (= lt!246040 e!350806)))

(declare-fun c!108674 () Bool)

(assert (=> d!204206 (= c!108674 ((_ is Nil!5691) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678))))))))

(assert (=> d!204206 (= (++!1593 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678)))) (_2!3600 (get!2172 lt!245678))) lt!246040)))

(declare-fun b!580526 () Bool)

(declare-fun res!249903 () Bool)

(assert (=> b!580526 (=> (not res!249903) (not e!350807))))

(assert (=> b!580526 (= res!249903 (= (size!4531 lt!246040) (+ (size!4531 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678))))) (size!4531 (_2!3600 (get!2172 lt!245678))))))))

(declare-fun b!580524 () Bool)

(assert (=> b!580524 (= e!350806 (_2!3600 (get!2172 lt!245678)))))

(declare-fun b!580525 () Bool)

(assert (=> b!580525 (= e!350806 (Cons!5691 (h!11092 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678))))) (++!1593 (t!77820 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678))))) (_2!3600 (get!2172 lt!245678)))))))

(assert (= (and d!204206 c!108674) b!580524))

(assert (= (and d!204206 (not c!108674)) b!580525))

(assert (= (and d!204206 res!249902) b!580526))

(assert (= (and b!580526 res!249903) b!580527))

(declare-fun m!839539 () Bool)

(assert (=> d!204206 m!839539))

(assert (=> d!204206 m!838205))

(declare-fun m!839541 () Bool)

(assert (=> d!204206 m!839541))

(declare-fun m!839543 () Bool)

(assert (=> d!204206 m!839543))

(declare-fun m!839545 () Bool)

(assert (=> b!580526 m!839545))

(assert (=> b!580526 m!838205))

(declare-fun m!839547 () Bool)

(assert (=> b!580526 m!839547))

(assert (=> b!580526 m!838195))

(declare-fun m!839549 () Bool)

(assert (=> b!580525 m!839549))

(assert (=> b!579640 d!204206))

(declare-fun d!204208 () Bool)

(assert (=> d!204208 (= (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678)))) (list!2369 (c!108452 (charsOf!734 (_1!3600 (get!2172 lt!245678))))))))

(declare-fun bs!69715 () Bool)

(assert (= bs!69715 d!204208))

(declare-fun m!839551 () Bool)

(assert (=> bs!69715 m!839551))

(assert (=> b!579640 d!204208))

(declare-fun d!204210 () Bool)

(declare-fun lt!246041 () BalanceConc!3652)

(assert (=> d!204210 (= (list!2367 lt!246041) (originalCharacters!1144 (_1!3600 (get!2172 lt!245678))))))

(assert (=> d!204210 (= lt!246041 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245678))))) (value!36359 (_1!3600 (get!2172 lt!245678)))))))

(assert (=> d!204210 (= (charsOf!734 (_1!3600 (get!2172 lt!245678))) lt!246041)))

(declare-fun b_lambda!22827 () Bool)

(assert (=> (not b_lambda!22827) (not d!204210)))

(declare-fun tb!50821 () Bool)

(declare-fun t!77976 () Bool)

(assert (=> (and b!579433 (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))))) t!77976) tb!50821))

(declare-fun b!580528 () Bool)

(declare-fun e!350808 () Bool)

(declare-fun tp!181324 () Bool)

(assert (=> b!580528 (= e!350808 (and (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245678))))) (value!36359 (_1!3600 (get!2172 lt!245678)))))) tp!181324))))

(declare-fun result!56892 () Bool)

(assert (=> tb!50821 (= result!56892 (and (inv!7172 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245678))))) (value!36359 (_1!3600 (get!2172 lt!245678))))) e!350808))))

(assert (= tb!50821 b!580528))

(declare-fun m!839553 () Bool)

(assert (=> b!580528 m!839553))

(declare-fun m!839555 () Bool)

(assert (=> tb!50821 m!839555))

(assert (=> d!204210 t!77976))

(declare-fun b_and!57077 () Bool)

(assert (= b_and!57071 (and (=> t!77976 result!56892) b_and!57077)))

(declare-fun t!77978 () Bool)

(declare-fun tb!50823 () Bool)

(assert (=> (and b!579460 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))))) t!77978) tb!50823))

(declare-fun result!56894 () Bool)

(assert (= result!56894 result!56892))

(assert (=> d!204210 t!77978))

(declare-fun b_and!57079 () Bool)

(assert (= b_and!57073 (and (=> t!77978 result!56894) b_and!57079)))

(declare-fun tb!50825 () Bool)

(declare-fun t!77980 () Bool)

(assert (=> (and b!580076 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))))) t!77980) tb!50825))

(declare-fun result!56896 () Bool)

(assert (= result!56896 result!56892))

(assert (=> d!204210 t!77980))

(declare-fun b_and!57081 () Bool)

(assert (= b_and!57075 (and (=> t!77980 result!56896) b_and!57081)))

(declare-fun m!839557 () Bool)

(assert (=> d!204210 m!839557))

(declare-fun m!839559 () Bool)

(assert (=> d!204210 m!839559))

(assert (=> b!579640 d!204210))

(assert (=> b!579640 d!203988))

(assert (=> b!579985 d!204198))

(assert (=> b!579985 d!204200))

(assert (=> b!579985 d!204104))

(declare-fun d!204212 () Bool)

(assert (=> d!204212 (= (inv!7172 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610))) (isBalanced!511 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610)))))))

(declare-fun bs!69716 () Bool)

(assert (= bs!69716 d!204212))

(declare-fun m!839561 () Bool)

(assert (=> bs!69716 m!839561))

(assert (=> tb!50695 d!204212))

(assert (=> d!203828 d!203832))

(declare-fun d!204214 () Bool)

(assert (=> d!204214 (ruleValid!315 thiss!22590 (rule!1859 token!491))))

(assert (=> d!204214 true))

(declare-fun _$65!837 () Unit!10309)

(assert (=> d!204214 (= (choose!4168 thiss!22590 (rule!1859 token!491) rules!3103) _$65!837)))

(declare-fun bs!69717 () Bool)

(assert (= bs!69717 d!204214))

(assert (=> bs!69717 m!837961))

(assert (=> d!203828 d!204214))

(assert (=> d!203828 d!203752))

(declare-fun d!204216 () Bool)

(declare-fun c!108675 () Bool)

(assert (=> d!204216 (= c!108675 ((_ is Nil!5691) lt!245754))))

(declare-fun e!350809 () (InoxSet C!3800))

(assert (=> d!204216 (= (content!1010 lt!245754) e!350809)))

(declare-fun b!580529 () Bool)

(assert (=> b!580529 (= e!350809 ((as const (Array C!3800 Bool)) false))))

(declare-fun b!580530 () Bool)

(assert (=> b!580530 (= e!350809 ((_ map or) (store ((as const (Array C!3800 Bool)) false) (h!11092 lt!245754) true) (content!1010 (t!77820 lt!245754))))))

(assert (= (and d!204216 c!108675) b!580529))

(assert (= (and d!204216 (not c!108675)) b!580530))

(declare-fun m!839563 () Bool)

(assert (=> b!580530 m!839563))

(declare-fun m!839565 () Bool)

(assert (=> b!580530 m!839565))

(assert (=> d!203778 d!204216))

(declare-fun d!204218 () Bool)

(declare-fun c!108676 () Bool)

(assert (=> d!204218 (= c!108676 ((_ is Nil!5691) lt!245578))))

(declare-fun e!350810 () (InoxSet C!3800))

(assert (=> d!204218 (= (content!1010 lt!245578) e!350810)))

(declare-fun b!580531 () Bool)

(assert (=> b!580531 (= e!350810 ((as const (Array C!3800 Bool)) false))))

(declare-fun b!580532 () Bool)

(assert (=> b!580532 (= e!350810 ((_ map or) (store ((as const (Array C!3800 Bool)) false) (h!11092 lt!245578) true) (content!1010 (t!77820 lt!245578))))))

(assert (= (and d!204218 c!108676) b!580531))

(assert (= (and d!204218 (not c!108676)) b!580532))

(declare-fun m!839567 () Bool)

(assert (=> b!580532 m!839567))

(assert (=> b!580532 m!839507))

(assert (=> d!203778 d!204218))

(declare-fun d!204220 () Bool)

(declare-fun c!108677 () Bool)

(assert (=> d!204220 (= c!108677 ((_ is Nil!5691) (_2!3600 (v!16320 lt!245592))))))

(declare-fun e!350811 () (InoxSet C!3800))

(assert (=> d!204220 (= (content!1010 (_2!3600 (v!16320 lt!245592))) e!350811)))

(declare-fun b!580533 () Bool)

(assert (=> b!580533 (= e!350811 ((as const (Array C!3800 Bool)) false))))

(declare-fun b!580534 () Bool)

(assert (=> b!580534 (= e!350811 ((_ map or) (store ((as const (Array C!3800 Bool)) false) (h!11092 (_2!3600 (v!16320 lt!245592))) true) (content!1010 (t!77820 (_2!3600 (v!16320 lt!245592))))))))

(assert (= (and d!204220 c!108677) b!580533))

(assert (= (and d!204220 (not c!108677)) b!580534))

(declare-fun m!839569 () Bool)

(assert (=> b!580534 m!839569))

(declare-fun m!839571 () Bool)

(assert (=> b!580534 m!839571))

(assert (=> d!203778 d!204220))

(declare-fun d!204222 () Bool)

(declare-fun lt!246042 () Int)

(assert (=> d!204222 (>= lt!246042 0)))

(declare-fun e!350812 () Int)

(assert (=> d!204222 (= lt!246042 e!350812)))

(declare-fun c!108678 () Bool)

(assert (=> d!204222 (= c!108678 ((_ is Nil!5691) lt!245798))))

(assert (=> d!204222 (= (size!4531 lt!245798) lt!246042)))

(declare-fun b!580535 () Bool)

(assert (=> b!580535 (= e!350812 0)))

(declare-fun b!580536 () Bool)

(assert (=> b!580536 (= e!350812 (+ 1 (size!4531 (t!77820 lt!245798))))))

(assert (= (and d!204222 c!108678) b!580535))

(assert (= (and d!204222 (not c!108678)) b!580536))

(declare-fun m!839573 () Bool)

(assert (=> b!580536 m!839573))

(assert (=> b!579988 d!204222))

(assert (=> b!579988 d!203906))

(assert (=> b!579988 d!203918))

(assert (=> d!203834 d!203684))

(assert (=> d!203892 d!203752))

(assert (=> b!580013 d!203926))

(assert (=> b!579524 d!203902))

(assert (=> b!579524 d!203904))

(assert (=> d!203752 d!204140))

(declare-fun d!204224 () Bool)

(assert (=> d!204224 (= (isEmpty!4112 lt!245592) (not ((_ is Some!1455) lt!245592)))))

(assert (=> d!203850 d!204224))

(assert (=> b!579644 d!204208))

(assert (=> b!579644 d!204210))

(assert (=> b!579644 d!203988))

(assert (=> d!203790 d!204124))

(declare-fun b!580538 () Bool)

(declare-fun res!249905 () Bool)

(declare-fun e!350814 () Bool)

(assert (=> b!580538 (=> (not res!249905) (not e!350814))))

(assert (=> b!580538 (= res!249905 (= (head!1227 input!2705) (head!1227 (++!1593 input!2705 suffix!1342))))))

(declare-fun d!204226 () Bool)

(declare-fun e!350815 () Bool)

(assert (=> d!204226 e!350815))

(declare-fun res!249906 () Bool)

(assert (=> d!204226 (=> res!249906 e!350815)))

(declare-fun lt!246043 () Bool)

(assert (=> d!204226 (= res!249906 (not lt!246043))))

(declare-fun e!350813 () Bool)

(assert (=> d!204226 (= lt!246043 e!350813)))

(declare-fun res!249907 () Bool)

(assert (=> d!204226 (=> res!249907 e!350813)))

(assert (=> d!204226 (= res!249907 ((_ is Nil!5691) input!2705))))

(assert (=> d!204226 (= (isPrefix!739 input!2705 (++!1593 input!2705 suffix!1342)) lt!246043)))

(declare-fun b!580540 () Bool)

(assert (=> b!580540 (= e!350815 (>= (size!4531 (++!1593 input!2705 suffix!1342)) (size!4531 input!2705)))))

(declare-fun b!580537 () Bool)

(assert (=> b!580537 (= e!350813 e!350814)))

(declare-fun res!249904 () Bool)

(assert (=> b!580537 (=> (not res!249904) (not e!350814))))

(assert (=> b!580537 (= res!249904 (not ((_ is Nil!5691) (++!1593 input!2705 suffix!1342))))))

(declare-fun b!580539 () Bool)

(assert (=> b!580539 (= e!350814 (isPrefix!739 (tail!757 input!2705) (tail!757 (++!1593 input!2705 suffix!1342))))))

(assert (= (and d!204226 (not res!249907)) b!580537))

(assert (= (and b!580537 res!249904) b!580538))

(assert (= (and b!580538 res!249905) b!580539))

(assert (= (and d!204226 (not res!249906)) b!580540))

(assert (=> b!580538 m!838037))

(assert (=> b!580538 m!838017))

(declare-fun m!839575 () Bool)

(assert (=> b!580538 m!839575))

(assert (=> b!580540 m!838017))

(declare-fun m!839577 () Bool)

(assert (=> b!580540 m!839577))

(assert (=> b!580540 m!838197))

(assert (=> b!580539 m!838031))

(assert (=> b!580539 m!838017))

(declare-fun m!839579 () Bool)

(assert (=> b!580539 m!839579))

(assert (=> b!580539 m!838031))

(assert (=> b!580539 m!839579))

(declare-fun m!839581 () Bool)

(assert (=> b!580539 m!839581))

(assert (=> d!203830 d!204226))

(assert (=> d!203830 d!203866))

(declare-fun d!204228 () Bool)

(assert (=> d!204228 (isPrefix!739 input!2705 (++!1593 input!2705 suffix!1342))))

(assert (=> d!204228 true))

(declare-fun _$46!930 () Unit!10309)

(assert (=> d!204228 (= (choose!4162 input!2705 suffix!1342) _$46!930)))

(declare-fun bs!69718 () Bool)

(assert (= bs!69718 d!204228))

(assert (=> bs!69718 m!838017))

(assert (=> bs!69718 m!838017))

(assert (=> bs!69718 m!838575))

(assert (=> d!203830 d!204228))

(declare-fun bs!69719 () Bool)

(declare-fun d!204230 () Bool)

(assert (= bs!69719 (and d!204230 d!203686)))

(declare-fun lambda!15785 () Int)

(assert (=> bs!69719 (= lambda!15785 lambda!15765)))

(declare-fun bs!69720 () Bool)

(assert (= bs!69720 (and d!204230 d!204144)))

(assert (=> bs!69720 (= (and (= (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) (= (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) (= lambda!15785 lambda!15784))))

(declare-fun bs!69721 () Bool)

(assert (= bs!69721 (and d!204230 d!204038)))

(assert (=> bs!69721 (= (and (= (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) (= (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) (= lambda!15785 lambda!15777))))

(declare-fun bs!69722 () Bool)

(assert (= bs!69722 (and d!204230 d!203878)))

(assert (=> bs!69722 (= (and (= (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) (= (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) (= lambda!15785 lambda!15766))))

(declare-fun bs!69723 () Bool)

(assert (= bs!69723 (and d!204230 d!203962)))

(assert (=> bs!69723 (= lambda!15785 lambda!15767)))

(assert (=> d!204230 true))

(assert (=> d!204230 (< (dynLambda!3317 order!4657 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (dynLambda!3316 order!4655 lambda!15785))))

(assert (=> d!204230 true))

(assert (=> d!204230 (< (dynLambda!3315 order!4653 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (dynLambda!3316 order!4655 lambda!15785))))

(assert (=> d!204230 (= (semiInverseModEq!428 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (Forall!285 lambda!15785))))

(declare-fun bs!69724 () Bool)

(assert (= bs!69724 d!204230))

(declare-fun m!839583 () Bool)

(assert (=> bs!69724 m!839583))

(assert (=> d!203840 d!204230))

(declare-fun d!204232 () Bool)

(declare-fun charsToBigInt!1 (List!5700) Int)

(assert (=> d!204232 (= (inv!17 (value!36359 token!491)) (= (charsToBigInt!1 (text!8351 (value!36359 token!491))) (value!36352 (value!36359 token!491))))))

(declare-fun bs!69725 () Bool)

(assert (= bs!69725 d!204232))

(declare-fun m!839585 () Bool)

(assert (=> bs!69725 m!839585))

(assert (=> b!579569 d!204232))

(declare-fun b!580542 () Bool)

(declare-fun res!249909 () Bool)

(declare-fun e!350817 () Bool)

(assert (=> b!580542 (=> (not res!249909) (not e!350817))))

(assert (=> b!580542 (= res!249909 (= (head!1227 (tail!757 input!2705)) (head!1227 (tail!757 input!2705))))))

(declare-fun d!204234 () Bool)

(declare-fun e!350818 () Bool)

(assert (=> d!204234 e!350818))

(declare-fun res!249910 () Bool)

(assert (=> d!204234 (=> res!249910 e!350818)))

(declare-fun lt!246044 () Bool)

(assert (=> d!204234 (= res!249910 (not lt!246044))))

(declare-fun e!350816 () Bool)

(assert (=> d!204234 (= lt!246044 e!350816)))

(declare-fun res!249911 () Bool)

(assert (=> d!204234 (=> res!249911 e!350816)))

(assert (=> d!204234 (= res!249911 ((_ is Nil!5691) (tail!757 input!2705)))))

(assert (=> d!204234 (= (isPrefix!739 (tail!757 input!2705) (tail!757 input!2705)) lt!246044)))

(declare-fun b!580544 () Bool)

(assert (=> b!580544 (= e!350818 (>= (size!4531 (tail!757 input!2705)) (size!4531 (tail!757 input!2705))))))

(declare-fun b!580541 () Bool)

(assert (=> b!580541 (= e!350816 e!350817)))

(declare-fun res!249908 () Bool)

(assert (=> b!580541 (=> (not res!249908) (not e!350817))))

(assert (=> b!580541 (= res!249908 (not ((_ is Nil!5691) (tail!757 input!2705))))))

(declare-fun b!580543 () Bool)

(assert (=> b!580543 (= e!350817 (isPrefix!739 (tail!757 (tail!757 input!2705)) (tail!757 (tail!757 input!2705))))))

(assert (= (and d!204234 (not res!249911)) b!580541))

(assert (= (and b!580541 res!249908) b!580542))

(assert (= (and b!580542 res!249909) b!580543))

(assert (= (and d!204234 (not res!249910)) b!580544))

(assert (=> b!580542 m!838031))

(assert (=> b!580542 m!838885))

(assert (=> b!580542 m!838031))

(assert (=> b!580542 m!838885))

(assert (=> b!580544 m!838031))

(assert (=> b!580544 m!838891))

(assert (=> b!580544 m!838031))

(assert (=> b!580544 m!838891))

(assert (=> b!580543 m!838031))

(assert (=> b!580543 m!838893))

(assert (=> b!580543 m!838031))

(assert (=> b!580543 m!838893))

(assert (=> b!580543 m!838893))

(assert (=> b!580543 m!838893))

(declare-fun m!839587 () Bool)

(assert (=> b!580543 m!839587))

(assert (=> b!579951 d!204234))

(assert (=> b!579951 d!203904))

(declare-fun d!204236 () Bool)

(declare-fun lt!246045 () Int)

(assert (=> d!204236 (>= lt!246045 0)))

(declare-fun e!350819 () Int)

(assert (=> d!204236 (= lt!246045 e!350819)))

(declare-fun c!108679 () Bool)

(assert (=> d!204236 (= c!108679 ((_ is Nil!5691) (t!77820 lt!245578)))))

(assert (=> d!204236 (= (size!4531 (t!77820 lt!245578)) lt!246045)))

(declare-fun b!580545 () Bool)

(assert (=> b!580545 (= e!350819 0)))

(declare-fun b!580546 () Bool)

(assert (=> b!580546 (= e!350819 (+ 1 (size!4531 (t!77820 (t!77820 lt!245578)))))))

(assert (= (and d!204236 c!108679) b!580545))

(assert (= (and d!204236 (not c!108679)) b!580546))

(declare-fun m!839589 () Bool)

(assert (=> b!580546 m!839589))

(assert (=> b!579859 d!204236))

(declare-fun bs!69726 () Bool)

(declare-fun d!204238 () Bool)

(assert (= bs!69726 (and d!204238 d!203686)))

(declare-fun lambda!15786 () Int)

(assert (=> bs!69726 (= (and (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (= lambda!15786 lambda!15765))))

(declare-fun bs!69727 () Bool)

(assert (= bs!69727 (and d!204238 d!204144)))

(assert (=> bs!69727 (= (and (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) (= lambda!15786 lambda!15784))))

(declare-fun bs!69728 () Bool)

(assert (= bs!69728 (and d!204238 d!204230)))

(assert (=> bs!69728 (= (and (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (= lambda!15786 lambda!15785))))

(declare-fun bs!69729 () Bool)

(assert (= bs!69729 (and d!204238 d!204038)))

(assert (=> bs!69729 (= (and (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) (= lambda!15786 lambda!15777))))

(declare-fun bs!69730 () Bool)

(assert (= bs!69730 (and d!204238 d!203878)))

(assert (=> bs!69730 (= (and (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) (= lambda!15786 lambda!15766))))

(declare-fun bs!69731 () Bool)

(assert (= bs!69731 (and d!204238 d!203962)))

(assert (=> bs!69731 (= (and (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (= lambda!15786 lambda!15767))))

(assert (=> d!204238 true))

(assert (=> d!204238 (< (dynLambda!3317 order!4657 (toChars!1827 (transformation!1105 (h!11093 rules!3103)))) (dynLambda!3316 order!4655 lambda!15786))))

(assert (=> d!204238 true))

(assert (=> d!204238 (< (dynLambda!3315 order!4653 (toValue!1968 (transformation!1105 (h!11093 rules!3103)))) (dynLambda!3316 order!4655 lambda!15786))))

(assert (=> d!204238 (= (semiInverseModEq!428 (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (h!11093 rules!3103)))) (Forall!285 lambda!15786))))

(declare-fun bs!69732 () Bool)

(assert (= bs!69732 d!204238))

(declare-fun m!839591 () Bool)

(assert (=> bs!69732 m!839591))

(assert (=> d!203676 d!204238))

(declare-fun d!204240 () Bool)

(declare-fun lt!246046 () Bool)

(assert (=> d!204240 (= lt!246046 (select (content!1009 (t!77821 rules!3103)) (rule!1859 token!491)))))

(declare-fun e!350821 () Bool)

(assert (=> d!204240 (= lt!246046 e!350821)))

(declare-fun res!249913 () Bool)

(assert (=> d!204240 (=> (not res!249913) (not e!350821))))

(assert (=> d!204240 (= res!249913 ((_ is Cons!5692) (t!77821 rules!3103)))))

(assert (=> d!204240 (= (contains!1337 (t!77821 rules!3103) (rule!1859 token!491)) lt!246046)))

(declare-fun b!580547 () Bool)

(declare-fun e!350820 () Bool)

(assert (=> b!580547 (= e!350821 e!350820)))

(declare-fun res!249912 () Bool)

(assert (=> b!580547 (=> res!249912 e!350820)))

(assert (=> b!580547 (= res!249912 (= (h!11093 (t!77821 rules!3103)) (rule!1859 token!491)))))

(declare-fun b!580548 () Bool)

(assert (=> b!580548 (= e!350820 (contains!1337 (t!77821 (t!77821 rules!3103)) (rule!1859 token!491)))))

(assert (= (and d!204240 res!249913) b!580547))

(assert (= (and b!580547 (not res!249912)) b!580548))

(assert (=> d!204240 m!839015))

(declare-fun m!839593 () Bool)

(assert (=> d!204240 m!839593))

(declare-fun m!839595 () Bool)

(assert (=> b!580548 m!839595))

(assert (=> b!579798 d!204240))

(declare-fun b!580549 () Bool)

(declare-fun res!249914 () Bool)

(declare-fun e!350822 () Bool)

(assert (=> b!580549 (=> res!249914 e!350822)))

(assert (=> b!580549 (= res!249914 (not (isEmpty!4110 (tail!757 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705)))))))))

(declare-fun b!580550 () Bool)

(declare-fun e!350824 () Bool)

(assert (=> b!580550 (= e!350824 (matchR!586 (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (head!1227 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705))))) (tail!757 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705))))))))

(declare-fun b!580551 () Bool)

(declare-fun res!249918 () Bool)

(declare-fun e!350823 () Bool)

(assert (=> b!580551 (=> (not res!249918) (not e!350823))))

(declare-fun call!40064 () Bool)

(assert (=> b!580551 (= res!249918 (not call!40064))))

(declare-fun b!580552 () Bool)

(declare-fun res!249919 () Bool)

(declare-fun e!350825 () Bool)

(assert (=> b!580552 (=> res!249919 e!350825)))

(assert (=> b!580552 (= res!249919 (not ((_ is ElementMatch!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))))

(declare-fun e!350826 () Bool)

(assert (=> b!580552 (= e!350826 e!350825)))

(declare-fun b!580553 () Bool)

(assert (=> b!580553 (= e!350822 (not (= (head!1227 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705)))) (c!108451 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))))

(declare-fun b!580554 () Bool)

(declare-fun e!350827 () Bool)

(assert (=> b!580554 (= e!350827 e!350826)))

(declare-fun c!108681 () Bool)

(assert (=> b!580554 (= c!108681 ((_ is EmptyLang!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun b!580555 () Bool)

(assert (=> b!580555 (= e!350823 (= (head!1227 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705)))) (c!108451 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))))

(declare-fun d!204242 () Bool)

(assert (=> d!204242 e!350827))

(declare-fun c!108682 () Bool)

(assert (=> d!204242 (= c!108682 ((_ is EmptyExpr!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun lt!246047 () Bool)

(assert (=> d!204242 (= lt!246047 e!350824)))

(declare-fun c!108680 () Bool)

(assert (=> d!204242 (= c!108680 (isEmpty!4110 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705)))))))

(assert (=> d!204242 (validRegex!485 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(assert (=> d!204242 (= (matchR!586 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705)))) lt!246047)))

(declare-fun b!580556 () Bool)

(declare-fun e!350828 () Bool)

(assert (=> b!580556 (= e!350825 e!350828)))

(declare-fun res!249915 () Bool)

(assert (=> b!580556 (=> (not res!249915) (not e!350828))))

(assert (=> b!580556 (= res!249915 (not lt!246047))))

(declare-fun bm!40059 () Bool)

(assert (=> bm!40059 (= call!40064 (isEmpty!4110 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705)))))))

(declare-fun b!580557 () Bool)

(assert (=> b!580557 (= e!350827 (= lt!246047 call!40064))))

(declare-fun b!580558 () Bool)

(declare-fun res!249920 () Bool)

(assert (=> b!580558 (=> (not res!249920) (not e!350823))))

(assert (=> b!580558 (= res!249920 (isEmpty!4110 (tail!757 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 (size!4531 Nil!5691) input!2705 input!2705 (size!4531 input!2705))))))))

(declare-fun b!580559 () Bool)

(assert (=> b!580559 (= e!350824 (nullable!390 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun b!580560 () Bool)

(assert (=> b!580560 (= e!350828 e!350822)))

(declare-fun res!249916 () Bool)

(assert (=> b!580560 (=> res!249916 e!350822)))

(assert (=> b!580560 (= res!249916 call!40064)))

(declare-fun b!580561 () Bool)

(assert (=> b!580561 (= e!350826 (not lt!246047))))

(declare-fun b!580562 () Bool)

(declare-fun res!249921 () Bool)

(assert (=> b!580562 (=> res!249921 e!350825)))

(assert (=> b!580562 (= res!249921 e!350823)))

(declare-fun res!249917 () Bool)

(assert (=> b!580562 (=> (not res!249917) (not e!350823))))

(assert (=> b!580562 (= res!249917 lt!246047)))

(assert (= (and d!204242 c!108680) b!580559))

(assert (= (and d!204242 (not c!108680)) b!580550))

(assert (= (and d!204242 c!108682) b!580557))

(assert (= (and d!204242 (not c!108682)) b!580554))

(assert (= (and b!580554 c!108681) b!580561))

(assert (= (and b!580554 (not c!108681)) b!580552))

(assert (= (and b!580552 (not res!249919)) b!580562))

(assert (= (and b!580562 res!249917) b!580551))

(assert (= (and b!580551 res!249918) b!580558))

(assert (= (and b!580558 res!249920) b!580555))

(assert (= (and b!580562 (not res!249921)) b!580556))

(assert (= (and b!580556 res!249915) b!580560))

(assert (= (and b!580560 (not res!249916)) b!580549))

(assert (= (and b!580549 (not res!249914)) b!580553))

(assert (= (or b!580557 b!580551 b!580560) bm!40059))

(declare-fun m!839597 () Bool)

(assert (=> b!580549 m!839597))

(assert (=> b!580549 m!839597))

(declare-fun m!839599 () Bool)

(assert (=> b!580549 m!839599))

(assert (=> d!204242 m!838685))

(assert (=> d!204242 m!838035))

(declare-fun m!839601 () Bool)

(assert (=> b!580550 m!839601))

(assert (=> b!580550 m!839601))

(declare-fun m!839603 () Bool)

(assert (=> b!580550 m!839603))

(assert (=> b!580550 m!839597))

(assert (=> b!580550 m!839603))

(assert (=> b!580550 m!839597))

(declare-fun m!839605 () Bool)

(assert (=> b!580550 m!839605))

(assert (=> b!580558 m!839597))

(assert (=> b!580558 m!839597))

(assert (=> b!580558 m!839599))

(assert (=> b!580553 m!839601))

(assert (=> b!580559 m!838043))

(assert (=> bm!40059 m!838685))

(assert (=> b!580555 m!839601))

(assert (=> b!580015 d!204242))

(assert (=> b!580015 d!203954))

(assert (=> b!580015 d!203968))

(assert (=> b!580015 d!203906))

(declare-fun b!580563 () Bool)

(declare-fun res!249922 () Bool)

(declare-fun e!350829 () Bool)

(assert (=> b!580563 (=> res!249922 e!350829)))

(assert (=> b!580563 (= res!249922 (not (isEmpty!4110 (tail!757 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678))))))))))

(declare-fun b!580564 () Bool)

(declare-fun e!350831 () Bool)

(assert (=> b!580564 (= e!350831 (matchR!586 (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))) (head!1227 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678)))))) (tail!757 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678)))))))))

(declare-fun b!580565 () Bool)

(declare-fun res!249926 () Bool)

(declare-fun e!350830 () Bool)

(assert (=> b!580565 (=> (not res!249926) (not e!350830))))

(declare-fun call!40065 () Bool)

(assert (=> b!580565 (= res!249926 (not call!40065))))

(declare-fun b!580566 () Bool)

(declare-fun res!249927 () Bool)

(declare-fun e!350832 () Bool)

(assert (=> b!580566 (=> res!249927 e!350832)))

(assert (=> b!580566 (= res!249927 (not ((_ is ElementMatch!1439) (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))))))))

(declare-fun e!350833 () Bool)

(assert (=> b!580566 (= e!350833 e!350832)))

(declare-fun b!580567 () Bool)

(assert (=> b!580567 (= e!350829 (not (= (head!1227 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678))))) (c!108451 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245678))))))))))

(declare-fun b!580568 () Bool)

(declare-fun e!350834 () Bool)

(assert (=> b!580568 (= e!350834 e!350833)))

(declare-fun c!108684 () Bool)

(assert (=> b!580568 (= c!108684 ((_ is EmptyLang!1439) (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245678))))))))

(declare-fun b!580569 () Bool)

(assert (=> b!580569 (= e!350830 (= (head!1227 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678))))) (c!108451 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))))))))

(declare-fun d!204244 () Bool)

(assert (=> d!204244 e!350834))

(declare-fun c!108685 () Bool)

(assert (=> d!204244 (= c!108685 ((_ is EmptyExpr!1439) (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245678))))))))

(declare-fun lt!246048 () Bool)

(assert (=> d!204244 (= lt!246048 e!350831)))

(declare-fun c!108683 () Bool)

(assert (=> d!204244 (= c!108683 (isEmpty!4110 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678))))))))

(assert (=> d!204244 (validRegex!485 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))))))

(assert (=> d!204244 (= (matchR!586 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678))))) lt!246048)))

(declare-fun b!580570 () Bool)

(declare-fun e!350835 () Bool)

(assert (=> b!580570 (= e!350832 e!350835)))

(declare-fun res!249923 () Bool)

(assert (=> b!580570 (=> (not res!249923) (not e!350835))))

(assert (=> b!580570 (= res!249923 (not lt!246048))))

(declare-fun bm!40060 () Bool)

(assert (=> bm!40060 (= call!40065 (isEmpty!4110 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678))))))))

(declare-fun b!580571 () Bool)

(assert (=> b!580571 (= e!350834 (= lt!246048 call!40065))))

(declare-fun b!580572 () Bool)

(declare-fun res!249928 () Bool)

(assert (=> b!580572 (=> (not res!249928) (not e!350830))))

(assert (=> b!580572 (= res!249928 (isEmpty!4110 (tail!757 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245678)))))))))

(declare-fun b!580573 () Bool)

(assert (=> b!580573 (= e!350831 (nullable!390 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245678))))))))

(declare-fun b!580574 () Bool)

(assert (=> b!580574 (= e!350835 e!350829)))

(declare-fun res!249924 () Bool)

(assert (=> b!580574 (=> res!249924 e!350829)))

(assert (=> b!580574 (= res!249924 call!40065)))

(declare-fun b!580575 () Bool)

(assert (=> b!580575 (= e!350833 (not lt!246048))))

(declare-fun b!580576 () Bool)

(declare-fun res!249929 () Bool)

(assert (=> b!580576 (=> res!249929 e!350832)))

(assert (=> b!580576 (= res!249929 e!350830)))

(declare-fun res!249925 () Bool)

(assert (=> b!580576 (=> (not res!249925) (not e!350830))))

(assert (=> b!580576 (= res!249925 lt!246048)))

(assert (= (and d!204244 c!108683) b!580573))

(assert (= (and d!204244 (not c!108683)) b!580564))

(assert (= (and d!204244 c!108685) b!580571))

(assert (= (and d!204244 (not c!108685)) b!580568))

(assert (= (and b!580568 c!108684) b!580575))

(assert (= (and b!580568 (not c!108684)) b!580566))

(assert (= (and b!580566 (not res!249927)) b!580576))

(assert (= (and b!580576 res!249925) b!580565))

(assert (= (and b!580565 res!249926) b!580572))

(assert (= (and b!580572 res!249928) b!580569))

(assert (= (and b!580576 (not res!249929)) b!580570))

(assert (= (and b!580570 res!249923) b!580574))

(assert (= (and b!580574 (not res!249924)) b!580563))

(assert (= (and b!580563 (not res!249922)) b!580567))

(assert (= (or b!580571 b!580565 b!580574) bm!40060))

(assert (=> b!580563 m!838205))

(declare-fun m!839607 () Bool)

(assert (=> b!580563 m!839607))

(assert (=> b!580563 m!839607))

(declare-fun m!839609 () Bool)

(assert (=> b!580563 m!839609))

(assert (=> d!204244 m!838205))

(declare-fun m!839611 () Bool)

(assert (=> d!204244 m!839611))

(declare-fun m!839613 () Bool)

(assert (=> d!204244 m!839613))

(assert (=> b!580564 m!838205))

(declare-fun m!839615 () Bool)

(assert (=> b!580564 m!839615))

(assert (=> b!580564 m!839615))

(declare-fun m!839617 () Bool)

(assert (=> b!580564 m!839617))

(assert (=> b!580564 m!838205))

(assert (=> b!580564 m!839607))

(assert (=> b!580564 m!839617))

(assert (=> b!580564 m!839607))

(declare-fun m!839619 () Bool)

(assert (=> b!580564 m!839619))

(assert (=> b!580572 m!838205))

(assert (=> b!580572 m!839607))

(assert (=> b!580572 m!839607))

(assert (=> b!580572 m!839609))

(assert (=> b!580567 m!838205))

(assert (=> b!580567 m!839615))

(declare-fun m!839621 () Bool)

(assert (=> b!580573 m!839621))

(assert (=> bm!40060 m!838205))

(assert (=> bm!40060 m!839611))

(assert (=> b!580569 m!838205))

(assert (=> b!580569 m!839615))

(assert (=> b!579638 d!204244))

(assert (=> b!579638 d!203988))

(assert (=> b!579638 d!204208))

(assert (=> b!579638 d!204210))

(declare-fun b!580580 () Bool)

(declare-fun e!350837 () Int)

(assert (=> b!580580 (= e!350837 (- 1))))

(declare-fun b!580577 () Bool)

(declare-fun e!350836 () Int)

(assert (=> b!580577 (= e!350836 0)))

(declare-fun b!580579 () Bool)

(assert (=> b!580579 (= e!350837 (+ 1 (getIndex!44 (t!77821 (t!77821 rules!3103)) (rule!1859 token!491))))))

(declare-fun b!580578 () Bool)

(assert (=> b!580578 (= e!350836 e!350837)))

(declare-fun c!108686 () Bool)

(assert (=> b!580578 (= c!108686 (and ((_ is Cons!5692) (t!77821 rules!3103)) (not (= (h!11093 (t!77821 rules!3103)) (rule!1859 token!491)))))))

(declare-fun d!204246 () Bool)

(declare-fun lt!246049 () Int)

(assert (=> d!204246 (>= lt!246049 0)))

(assert (=> d!204246 (= lt!246049 e!350836)))

(declare-fun c!108687 () Bool)

(assert (=> d!204246 (= c!108687 (and ((_ is Cons!5692) (t!77821 rules!3103)) (= (h!11093 (t!77821 rules!3103)) (rule!1859 token!491))))))

(assert (=> d!204246 (contains!1337 (t!77821 rules!3103) (rule!1859 token!491))))

(assert (=> d!204246 (= (getIndex!44 (t!77821 rules!3103) (rule!1859 token!491)) lt!246049)))

(assert (= (and d!204246 c!108687) b!580577))

(assert (= (and d!204246 (not c!108687)) b!580578))

(assert (= (and b!580578 c!108686) b!580579))

(assert (= (and b!580578 (not c!108686)) b!580580))

(declare-fun m!839623 () Bool)

(assert (=> b!580579 m!839623))

(assert (=> d!204246 m!838421))

(assert (=> b!580044 d!204246))

(declare-fun d!204248 () Bool)

(assert (=> d!204248 (= (isEmpty!4112 lt!245582) (not ((_ is Some!1455) lt!245582)))))

(assert (=> d!203862 d!204248))

(declare-fun d!204250 () Bool)

(assert (=> d!204250 (= (isEmpty!4112 lt!245821) (not ((_ is Some!1455) lt!245821)))))

(assert (=> d!203876 d!204250))

(declare-fun d!204252 () Bool)

(assert (=> d!204252 (= (isEmpty!4110 (_1!3602 lt!245818)) ((_ is Nil!5691) (_1!3602 lt!245818)))))

(assert (=> d!203876 d!204252))

(declare-fun d!204254 () Bool)

(declare-fun lt!246127 () tuple2!6676)

(assert (=> d!204254 (= (++!1593 (_1!3602 lt!246127) (_2!3602 lt!246127)) lt!245595)))

(declare-fun sizeTr!34 (List!5701 Int) Int)

(assert (=> d!204254 (= lt!246127 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 0 lt!245595 lt!245595 (sizeTr!34 lt!245595 0)))))

(declare-fun lt!246129 () Unit!10309)

(declare-fun lt!246124 () Unit!10309)

(assert (=> d!204254 (= lt!246129 lt!246124)))

(declare-fun lt!246122 () List!5701)

(declare-fun lt!246123 () Int)

(assert (=> d!204254 (= (sizeTr!34 lt!246122 lt!246123) (+ (size!4531 lt!246122) lt!246123))))

(declare-fun lemmaSizeTrEqualsSize!34 (List!5701 Int) Unit!10309)

(assert (=> d!204254 (= lt!246124 (lemmaSizeTrEqualsSize!34 lt!246122 lt!246123))))

(assert (=> d!204254 (= lt!246123 0)))

(assert (=> d!204254 (= lt!246122 Nil!5691)))

(declare-fun lt!246125 () Unit!10309)

(declare-fun lt!246126 () Unit!10309)

(assert (=> d!204254 (= lt!246125 lt!246126)))

(declare-fun lt!246128 () Int)

(assert (=> d!204254 (= (sizeTr!34 lt!245595 lt!246128) (+ (size!4531 lt!245595) lt!246128))))

(assert (=> d!204254 (= lt!246126 (lemmaSizeTrEqualsSize!34 lt!245595 lt!246128))))

(assert (=> d!204254 (= lt!246128 0)))

(assert (=> d!204254 (validRegex!485 (regex!1105 (rule!1859 token!491)))))

(assert (=> d!204254 (= (findLongestMatch!154 (regex!1105 (rule!1859 token!491)) lt!245595) lt!246127)))

(declare-fun bs!69733 () Bool)

(assert (= bs!69733 d!204254))

(assert (=> bs!69733 m!838409))

(declare-fun m!839625 () Bool)

(assert (=> bs!69733 m!839625))

(declare-fun m!839627 () Bool)

(assert (=> bs!69733 m!839627))

(declare-fun m!839629 () Bool)

(assert (=> bs!69733 m!839629))

(declare-fun m!839631 () Bool)

(assert (=> bs!69733 m!839631))

(declare-fun m!839633 () Bool)

(assert (=> bs!69733 m!839633))

(declare-fun m!839635 () Bool)

(assert (=> bs!69733 m!839635))

(assert (=> bs!69733 m!838545))

(assert (=> bs!69733 m!839629))

(declare-fun m!839637 () Bool)

(assert (=> bs!69733 m!839637))

(declare-fun m!839639 () Bool)

(assert (=> bs!69733 m!839639))

(assert (=> d!203876 d!204254))

(assert (=> d!203876 d!203832))

(assert (=> b!579906 d!204016))

(declare-fun d!204256 () Bool)

(assert (=> d!204256 (= (head!1227 lt!245595) (h!11092 lt!245595))))

(assert (=> b!579906 d!204256))

(declare-fun d!204258 () Bool)

(assert (=> d!204258 (= (list!2367 lt!245827) (list!2369 (c!108452 lt!245827)))))

(declare-fun bs!69734 () Bool)

(assert (= bs!69734 d!204258))

(declare-fun m!839641 () Bool)

(assert (=> bs!69734 m!839641))

(assert (=> d!203890 d!204258))

(declare-fun b!580605 () Bool)

(declare-fun res!249930 () Bool)

(declare-fun e!350850 () Bool)

(assert (=> b!580605 (=> res!249930 e!350850)))

(assert (=> b!580605 (= res!249930 (not (isEmpty!4110 (tail!757 (tail!757 input!2705)))))))

(declare-fun b!580606 () Bool)

(declare-fun e!350852 () Bool)

(assert (=> b!580606 (= e!350852 (matchR!586 (derivativeStep!303 (derivativeStep!303 (regex!1105 (rule!1859 token!491)) (head!1227 input!2705)) (head!1227 (tail!757 input!2705))) (tail!757 (tail!757 input!2705))))))

(declare-fun b!580607 () Bool)

(declare-fun res!249934 () Bool)

(declare-fun e!350851 () Bool)

(assert (=> b!580607 (=> (not res!249934) (not e!350851))))

(declare-fun call!40082 () Bool)

(assert (=> b!580607 (= res!249934 (not call!40082))))

(declare-fun b!580608 () Bool)

(declare-fun res!249935 () Bool)

(declare-fun e!350853 () Bool)

(assert (=> b!580608 (=> res!249935 e!350853)))

(assert (=> b!580608 (= res!249935 (not ((_ is ElementMatch!1439) (derivativeStep!303 (regex!1105 (rule!1859 token!491)) (head!1227 input!2705)))))))

(declare-fun e!350854 () Bool)

(assert (=> b!580608 (= e!350854 e!350853)))

(declare-fun b!580609 () Bool)

(assert (=> b!580609 (= e!350850 (not (= (head!1227 (tail!757 input!2705)) (c!108451 (derivativeStep!303 (regex!1105 (rule!1859 token!491)) (head!1227 input!2705))))))))

(declare-fun b!580610 () Bool)

(declare-fun e!350855 () Bool)

(assert (=> b!580610 (= e!350855 e!350854)))

(declare-fun c!108701 () Bool)

(assert (=> b!580610 (= c!108701 ((_ is EmptyLang!1439) (derivativeStep!303 (regex!1105 (rule!1859 token!491)) (head!1227 input!2705))))))

(declare-fun b!580611 () Bool)

(assert (=> b!580611 (= e!350851 (= (head!1227 (tail!757 input!2705)) (c!108451 (derivativeStep!303 (regex!1105 (rule!1859 token!491)) (head!1227 input!2705)))))))

(declare-fun d!204260 () Bool)

(assert (=> d!204260 e!350855))

(declare-fun c!108702 () Bool)

(assert (=> d!204260 (= c!108702 ((_ is EmptyExpr!1439) (derivativeStep!303 (regex!1105 (rule!1859 token!491)) (head!1227 input!2705))))))

(declare-fun lt!246130 () Bool)

(assert (=> d!204260 (= lt!246130 e!350852)))

(declare-fun c!108700 () Bool)

(assert (=> d!204260 (= c!108700 (isEmpty!4110 (tail!757 input!2705)))))

(assert (=> d!204260 (validRegex!485 (derivativeStep!303 (regex!1105 (rule!1859 token!491)) (head!1227 input!2705)))))

(assert (=> d!204260 (= (matchR!586 (derivativeStep!303 (regex!1105 (rule!1859 token!491)) (head!1227 input!2705)) (tail!757 input!2705)) lt!246130)))

(declare-fun b!580612 () Bool)

(declare-fun e!350856 () Bool)

(assert (=> b!580612 (= e!350853 e!350856)))

(declare-fun res!249931 () Bool)

(assert (=> b!580612 (=> (not res!249931) (not e!350856))))

(assert (=> b!580612 (= res!249931 (not lt!246130))))

(declare-fun bm!40077 () Bool)

(assert (=> bm!40077 (= call!40082 (isEmpty!4110 (tail!757 input!2705)))))

(declare-fun b!580613 () Bool)

(assert (=> b!580613 (= e!350855 (= lt!246130 call!40082))))

(declare-fun b!580614 () Bool)

(declare-fun res!249936 () Bool)

(assert (=> b!580614 (=> (not res!249936) (not e!350851))))

(assert (=> b!580614 (= res!249936 (isEmpty!4110 (tail!757 (tail!757 input!2705))))))

(declare-fun b!580615 () Bool)

(assert (=> b!580615 (= e!350852 (nullable!390 (derivativeStep!303 (regex!1105 (rule!1859 token!491)) (head!1227 input!2705))))))

(declare-fun b!580616 () Bool)

(assert (=> b!580616 (= e!350856 e!350850)))

(declare-fun res!249932 () Bool)

(assert (=> b!580616 (=> res!249932 e!350850)))

(assert (=> b!580616 (= res!249932 call!40082)))

(declare-fun b!580617 () Bool)

(assert (=> b!580617 (= e!350854 (not lt!246130))))

(declare-fun b!580618 () Bool)

(declare-fun res!249937 () Bool)

(assert (=> b!580618 (=> res!249937 e!350853)))

(assert (=> b!580618 (= res!249937 e!350851)))

(declare-fun res!249933 () Bool)

(assert (=> b!580618 (=> (not res!249933) (not e!350851))))

(assert (=> b!580618 (= res!249933 lt!246130)))

(assert (= (and d!204260 c!108700) b!580615))

(assert (= (and d!204260 (not c!108700)) b!580606))

(assert (= (and d!204260 c!108702) b!580613))

(assert (= (and d!204260 (not c!108702)) b!580610))

(assert (= (and b!580610 c!108701) b!580617))

(assert (= (and b!580610 (not c!108701)) b!580608))

(assert (= (and b!580608 (not res!249935)) b!580618))

(assert (= (and b!580618 res!249933) b!580607))

(assert (= (and b!580607 res!249934) b!580614))

(assert (= (and b!580614 res!249936) b!580611))

(assert (= (and b!580618 (not res!249937)) b!580612))

(assert (= (and b!580612 res!249931) b!580616))

(assert (= (and b!580616 (not res!249932)) b!580605))

(assert (= (and b!580605 (not res!249930)) b!580609))

(assert (= (or b!580613 b!580607 b!580616) bm!40077))

(assert (=> b!580605 m!838031))

(assert (=> b!580605 m!838893))

(assert (=> b!580605 m!838893))

(declare-fun m!839643 () Bool)

(assert (=> b!580605 m!839643))

(assert (=> d!204260 m!838031))

(assert (=> d!204260 m!838033))

(assert (=> d!204260 m!838411))

(declare-fun m!839645 () Bool)

(assert (=> d!204260 m!839645))

(assert (=> b!580606 m!838031))

(assert (=> b!580606 m!838885))

(assert (=> b!580606 m!838411))

(assert (=> b!580606 m!838885))

(declare-fun m!839647 () Bool)

(assert (=> b!580606 m!839647))

(assert (=> b!580606 m!838031))

(assert (=> b!580606 m!838893))

(assert (=> b!580606 m!839647))

(assert (=> b!580606 m!838893))

(declare-fun m!839649 () Bool)

(assert (=> b!580606 m!839649))

(assert (=> b!580614 m!838031))

(assert (=> b!580614 m!838893))

(assert (=> b!580614 m!838893))

(assert (=> b!580614 m!839643))

(assert (=> b!580609 m!838031))

(assert (=> b!580609 m!838885))

(assert (=> b!580615 m!838411))

(declare-fun m!839651 () Bool)

(assert (=> b!580615 m!839651))

(assert (=> bm!40077 m!838031))

(assert (=> bm!40077 m!838033))

(assert (=> b!580611 m!838031))

(assert (=> b!580611 m!838885))

(assert (=> b!579752 d!204260))

(declare-fun e!350881 () Regex!1439)

(declare-fun call!40100 () Regex!1439)

(declare-fun call!40102 () Regex!1439)

(declare-fun b!580657 () Bool)

(assert (=> b!580657 (= e!350881 (Union!1439 (Concat!2568 call!40100 (regTwo!3390 (regex!1105 (rule!1859 token!491)))) call!40102))))

(declare-fun b!580658 () Bool)

(declare-fun c!108720 () Bool)

(assert (=> b!580658 (= c!108720 ((_ is Union!1439) (regex!1105 (rule!1859 token!491))))))

(declare-fun e!350883 () Regex!1439)

(declare-fun e!350879 () Regex!1439)

(assert (=> b!580658 (= e!350883 e!350879)))

(declare-fun b!580659 () Bool)

(declare-fun call!40101 () Regex!1439)

(assert (=> b!580659 (= e!350879 (Union!1439 call!40102 call!40101))))

(declare-fun b!580660 () Bool)

(declare-fun e!350882 () Regex!1439)

(assert (=> b!580660 (= e!350882 EmptyLang!1439)))

(declare-fun b!580661 () Bool)

(declare-fun e!350880 () Regex!1439)

(assert (=> b!580661 (= e!350879 e!350880)))

(declare-fun c!108722 () Bool)

(assert (=> b!580661 (= c!108722 ((_ is Star!1439) (regex!1105 (rule!1859 token!491))))))

(declare-fun d!204262 () Bool)

(declare-fun lt!246161 () Regex!1439)

(assert (=> d!204262 (validRegex!485 lt!246161)))

(assert (=> d!204262 (= lt!246161 e!350882)))

(declare-fun c!108723 () Bool)

(assert (=> d!204262 (= c!108723 (or ((_ is EmptyExpr!1439) (regex!1105 (rule!1859 token!491))) ((_ is EmptyLang!1439) (regex!1105 (rule!1859 token!491)))))))

(assert (=> d!204262 (validRegex!485 (regex!1105 (rule!1859 token!491)))))

(assert (=> d!204262 (= (derivativeStep!303 (regex!1105 (rule!1859 token!491)) (head!1227 input!2705)) lt!246161)))

(declare-fun bm!40094 () Bool)

(assert (=> bm!40094 (= call!40102 (derivativeStep!303 (ite c!108720 (regOne!3391 (regex!1105 (rule!1859 token!491))) (regTwo!3390 (regex!1105 (rule!1859 token!491)))) (head!1227 input!2705)))))

(declare-fun b!580662 () Bool)

(assert (=> b!580662 (= e!350883 (ite (= (head!1227 input!2705) (c!108451 (regex!1105 (rule!1859 token!491)))) EmptyExpr!1439 EmptyLang!1439))))

(declare-fun b!580663 () Bool)

(assert (=> b!580663 (= e!350882 e!350883)))

(declare-fun c!108721 () Bool)

(assert (=> b!580663 (= c!108721 ((_ is ElementMatch!1439) (regex!1105 (rule!1859 token!491))))))

(declare-fun bm!40095 () Bool)

(assert (=> bm!40095 (= call!40101 (derivativeStep!303 (ite c!108720 (regTwo!3391 (regex!1105 (rule!1859 token!491))) (ite c!108722 (reg!1768 (regex!1105 (rule!1859 token!491))) (regOne!3390 (regex!1105 (rule!1859 token!491))))) (head!1227 input!2705)))))

(declare-fun b!580664 () Bool)

(assert (=> b!580664 (= e!350881 (Union!1439 (Concat!2568 call!40100 (regTwo!3390 (regex!1105 (rule!1859 token!491)))) EmptyLang!1439))))

(declare-fun b!580665 () Bool)

(declare-fun c!108719 () Bool)

(assert (=> b!580665 (= c!108719 (nullable!390 (regOne!3390 (regex!1105 (rule!1859 token!491)))))))

(assert (=> b!580665 (= e!350880 e!350881)))

(declare-fun bm!40096 () Bool)

(declare-fun call!40099 () Regex!1439)

(assert (=> bm!40096 (= call!40100 call!40099)))

(declare-fun b!580666 () Bool)

(assert (=> b!580666 (= e!350880 (Concat!2568 call!40099 (regex!1105 (rule!1859 token!491))))))

(declare-fun bm!40097 () Bool)

(assert (=> bm!40097 (= call!40099 call!40101)))

(assert (= (and d!204262 c!108723) b!580660))

(assert (= (and d!204262 (not c!108723)) b!580663))

(assert (= (and b!580663 c!108721) b!580662))

(assert (= (and b!580663 (not c!108721)) b!580658))

(assert (= (and b!580658 c!108720) b!580659))

(assert (= (and b!580658 (not c!108720)) b!580661))

(assert (= (and b!580661 c!108722) b!580666))

(assert (= (and b!580661 (not c!108722)) b!580665))

(assert (= (and b!580665 c!108719) b!580657))

(assert (= (and b!580665 (not c!108719)) b!580664))

(assert (= (or b!580657 b!580664) bm!40096))

(assert (= (or b!580666 bm!40096) bm!40097))

(assert (= (or b!580659 bm!40097) bm!40095))

(assert (= (or b!580659 b!580657) bm!40094))

(declare-fun m!839697 () Bool)

(assert (=> d!204262 m!839697))

(assert (=> d!204262 m!838409))

(assert (=> bm!40094 m!838037))

(declare-fun m!839701 () Bool)

(assert (=> bm!40094 m!839701))

(assert (=> bm!40095 m!838037))

(declare-fun m!839703 () Bool)

(assert (=> bm!40095 m!839703))

(declare-fun m!839705 () Bool)

(assert (=> b!580665 m!839705))

(assert (=> b!579752 d!204262))

(assert (=> b!579752 d!204016))

(assert (=> b!579752 d!203904))

(declare-fun d!204268 () Bool)

(assert (=> d!204268 (= (head!1227 lt!245601) (h!11092 lt!245601))))

(assert (=> b!579966 d!204268))

(declare-fun d!204272 () Bool)

(assert (=> d!204272 (= (head!1227 lt!245584) (h!11092 lt!245584))))

(assert (=> b!579966 d!204272))

(declare-fun d!204274 () Bool)

(declare-fun charsToInt!0 (List!5700) (_ BitVec 32))

(assert (=> d!204274 (= (inv!16 (value!36359 token!491)) (= (charsToInt!0 (text!8350 (value!36359 token!491))) (value!36351 (value!36359 token!491))))))

(declare-fun bs!69735 () Bool)

(assert (= bs!69735 d!204274))

(declare-fun m!839709 () Bool)

(assert (=> bs!69735 m!839709))

(assert (=> b!579573 d!204274))

(declare-fun b!580680 () Bool)

(declare-fun res!249951 () Bool)

(declare-fun e!350890 () Bool)

(assert (=> b!580680 (=> res!249951 e!350890)))

(assert (=> b!580680 (= res!249951 (not (isEmpty!4110 (tail!757 (tail!757 input!2705)))))))

(declare-fun b!580681 () Bool)

(declare-fun e!350892 () Bool)

(assert (=> b!580681 (= e!350892 (matchR!586 (derivativeStep!303 (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (head!1227 input!2705)) (head!1227 (tail!757 input!2705))) (tail!757 (tail!757 input!2705))))))

(declare-fun b!580682 () Bool)

(declare-fun res!249955 () Bool)

(declare-fun e!350891 () Bool)

(assert (=> b!580682 (=> (not res!249955) (not e!350891))))

(declare-fun call!40103 () Bool)

(assert (=> b!580682 (= res!249955 (not call!40103))))

(declare-fun b!580683 () Bool)

(declare-fun res!249956 () Bool)

(declare-fun e!350893 () Bool)

(assert (=> b!580683 (=> res!249956 e!350893)))

(assert (=> b!580683 (= res!249956 (not ((_ is ElementMatch!1439) (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (head!1227 input!2705)))))))

(declare-fun e!350894 () Bool)

(assert (=> b!580683 (= e!350894 e!350893)))

(declare-fun b!580684 () Bool)

(assert (=> b!580684 (= e!350890 (not (= (head!1227 (tail!757 input!2705)) (c!108451 (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (head!1227 input!2705))))))))

(declare-fun b!580685 () Bool)

(declare-fun e!350895 () Bool)

(assert (=> b!580685 (= e!350895 e!350894)))

(declare-fun c!108728 () Bool)

(assert (=> b!580685 (= c!108728 ((_ is EmptyLang!1439) (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (head!1227 input!2705))))))

(declare-fun b!580686 () Bool)

(assert (=> b!580686 (= e!350891 (= (head!1227 (tail!757 input!2705)) (c!108451 (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (head!1227 input!2705)))))))

(declare-fun d!204276 () Bool)

(assert (=> d!204276 e!350895))

(declare-fun c!108729 () Bool)

(assert (=> d!204276 (= c!108729 ((_ is EmptyExpr!1439) (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (head!1227 input!2705))))))

(declare-fun lt!246169 () Bool)

(assert (=> d!204276 (= lt!246169 e!350892)))

(declare-fun c!108727 () Bool)

(assert (=> d!204276 (= c!108727 (isEmpty!4110 (tail!757 input!2705)))))

(assert (=> d!204276 (validRegex!485 (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (head!1227 input!2705)))))

(assert (=> d!204276 (= (matchR!586 (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (head!1227 input!2705)) (tail!757 input!2705)) lt!246169)))

(declare-fun b!580687 () Bool)

(declare-fun e!350896 () Bool)

(assert (=> b!580687 (= e!350893 e!350896)))

(declare-fun res!249952 () Bool)

(assert (=> b!580687 (=> (not res!249952) (not e!350896))))

(assert (=> b!580687 (= res!249952 (not lt!246169))))

(declare-fun bm!40098 () Bool)

(assert (=> bm!40098 (= call!40103 (isEmpty!4110 (tail!757 input!2705)))))

(declare-fun b!580688 () Bool)

(assert (=> b!580688 (= e!350895 (= lt!246169 call!40103))))

(declare-fun b!580689 () Bool)

(declare-fun res!249957 () Bool)

(assert (=> b!580689 (=> (not res!249957) (not e!350891))))

(assert (=> b!580689 (= res!249957 (isEmpty!4110 (tail!757 (tail!757 input!2705))))))

(declare-fun b!580690 () Bool)

(assert (=> b!580690 (= e!350892 (nullable!390 (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (head!1227 input!2705))))))

(declare-fun b!580691 () Bool)

(assert (=> b!580691 (= e!350896 e!350890)))

(declare-fun res!249953 () Bool)

(assert (=> b!580691 (=> res!249953 e!350890)))

(assert (=> b!580691 (= res!249953 call!40103)))

(declare-fun b!580692 () Bool)

(assert (=> b!580692 (= e!350894 (not lt!246169))))

(declare-fun b!580693 () Bool)

(declare-fun res!249958 () Bool)

(assert (=> b!580693 (=> res!249958 e!350893)))

(assert (=> b!580693 (= res!249958 e!350891)))

(declare-fun res!249954 () Bool)

(assert (=> b!580693 (=> (not res!249954) (not e!350891))))

(assert (=> b!580693 (= res!249954 lt!246169)))

(assert (= (and d!204276 c!108727) b!580690))

(assert (= (and d!204276 (not c!108727)) b!580681))

(assert (= (and d!204276 c!108729) b!580688))

(assert (= (and d!204276 (not c!108729)) b!580685))

(assert (= (and b!580685 c!108728) b!580692))

(assert (= (and b!580685 (not c!108728)) b!580683))

(assert (= (and b!580683 (not res!249956)) b!580693))

(assert (= (and b!580693 res!249954) b!580682))

(assert (= (and b!580682 res!249955) b!580689))

(assert (= (and b!580689 res!249957) b!580686))

(assert (= (and b!580693 (not res!249958)) b!580687))

(assert (= (and b!580687 res!249952) b!580691))

(assert (= (and b!580691 (not res!249953)) b!580680))

(assert (= (and b!580680 (not res!249951)) b!580684))

(assert (= (or b!580688 b!580682 b!580691) bm!40098))

(assert (=> b!580680 m!838031))

(assert (=> b!580680 m!838893))

(assert (=> b!580680 m!838893))

(assert (=> b!580680 m!839643))

(assert (=> d!204276 m!838031))

(assert (=> d!204276 m!838033))

(assert (=> d!204276 m!838039))

(declare-fun m!839727 () Bool)

(assert (=> d!204276 m!839727))

(assert (=> b!580681 m!838031))

(assert (=> b!580681 m!838885))

(assert (=> b!580681 m!838039))

(assert (=> b!580681 m!838885))

(declare-fun m!839731 () Bool)

(assert (=> b!580681 m!839731))

(assert (=> b!580681 m!838031))

(assert (=> b!580681 m!838893))

(assert (=> b!580681 m!839731))

(assert (=> b!580681 m!838893))

(declare-fun m!839737 () Bool)

(assert (=> b!580681 m!839737))

(assert (=> b!580689 m!838031))

(assert (=> b!580689 m!838893))

(assert (=> b!580689 m!838893))

(assert (=> b!580689 m!839643))

(assert (=> b!580684 m!838031))

(assert (=> b!580684 m!838885))

(assert (=> b!580690 m!838039))

(declare-fun m!839743 () Bool)

(assert (=> b!580690 m!839743))

(assert (=> bm!40098 m!838031))

(assert (=> bm!40098 m!838033))

(assert (=> b!580686 m!838031))

(assert (=> b!580686 m!838885))

(assert (=> b!579514 d!204276))

(declare-fun e!350899 () Regex!1439)

(declare-fun call!40107 () Regex!1439)

(declare-fun call!40105 () Regex!1439)

(declare-fun b!580694 () Bool)

(assert (=> b!580694 (= e!350899 (Union!1439 (Concat!2568 call!40105 (regTwo!3390 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) call!40107))))

(declare-fun b!580695 () Bool)

(declare-fun c!108731 () Bool)

(assert (=> b!580695 (= c!108731 ((_ is Union!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun e!350901 () Regex!1439)

(declare-fun e!350897 () Regex!1439)

(assert (=> b!580695 (= e!350901 e!350897)))

(declare-fun b!580696 () Bool)

(declare-fun call!40106 () Regex!1439)

(assert (=> b!580696 (= e!350897 (Union!1439 call!40107 call!40106))))

(declare-fun b!580697 () Bool)

(declare-fun e!350900 () Regex!1439)

(assert (=> b!580697 (= e!350900 EmptyLang!1439)))

(declare-fun b!580698 () Bool)

(declare-fun e!350898 () Regex!1439)

(assert (=> b!580698 (= e!350897 e!350898)))

(declare-fun c!108733 () Bool)

(assert (=> b!580698 (= c!108733 ((_ is Star!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun d!204278 () Bool)

(declare-fun lt!246170 () Regex!1439)

(assert (=> d!204278 (validRegex!485 lt!246170)))

(assert (=> d!204278 (= lt!246170 e!350900)))

(declare-fun c!108734 () Bool)

(assert (=> d!204278 (= c!108734 (or ((_ is EmptyExpr!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) ((_ is EmptyLang!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))))

(assert (=> d!204278 (validRegex!485 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(assert (=> d!204278 (= (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) (head!1227 input!2705)) lt!246170)))

(declare-fun bm!40099 () Bool)

(assert (=> bm!40099 (= call!40107 (derivativeStep!303 (ite c!108731 (regOne!3391 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (regTwo!3390 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (head!1227 input!2705)))))

(declare-fun b!580699 () Bool)

(assert (=> b!580699 (= e!350901 (ite (= (head!1227 input!2705) (c!108451 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) EmptyExpr!1439 EmptyLang!1439))))

(declare-fun b!580700 () Bool)

(assert (=> b!580700 (= e!350900 e!350901)))

(declare-fun c!108732 () Bool)

(assert (=> b!580700 (= c!108732 ((_ is ElementMatch!1439) (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun bm!40100 () Bool)

(assert (=> bm!40100 (= call!40106 (derivativeStep!303 (ite c!108731 (regTwo!3391 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (ite c!108733 (reg!1768 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (regOne!3390 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (head!1227 input!2705)))))

(declare-fun b!580701 () Bool)

(assert (=> b!580701 (= e!350899 (Union!1439 (Concat!2568 call!40105 (regTwo!3390 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) EmptyLang!1439))))

(declare-fun b!580702 () Bool)

(declare-fun c!108730 () Bool)

(assert (=> b!580702 (= c!108730 (nullable!390 (regOne!3390 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))))

(assert (=> b!580702 (= e!350898 e!350899)))

(declare-fun bm!40101 () Bool)

(declare-fun call!40104 () Regex!1439)

(assert (=> bm!40101 (= call!40105 call!40104)))

(declare-fun b!580703 () Bool)

(assert (=> b!580703 (= e!350898 (Concat!2568 call!40104 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun bm!40102 () Bool)

(assert (=> bm!40102 (= call!40104 call!40106)))

(assert (= (and d!204278 c!108734) b!580697))

(assert (= (and d!204278 (not c!108734)) b!580700))

(assert (= (and b!580700 c!108732) b!580699))

(assert (= (and b!580700 (not c!108732)) b!580695))

(assert (= (and b!580695 c!108731) b!580696))

(assert (= (and b!580695 (not c!108731)) b!580698))

(assert (= (and b!580698 c!108733) b!580703))

(assert (= (and b!580698 (not c!108733)) b!580702))

(assert (= (and b!580702 c!108730) b!580694))

(assert (= (and b!580702 (not c!108730)) b!580701))

(assert (= (or b!580694 b!580701) bm!40101))

(assert (= (or b!580703 bm!40101) bm!40102))

(assert (= (or b!580696 bm!40102) bm!40100))

(assert (= (or b!580696 b!580694) bm!40099))

(declare-fun m!839761 () Bool)

(assert (=> d!204278 m!839761))

(assert (=> d!204278 m!838035))

(assert (=> bm!40099 m!838037))

(declare-fun m!839763 () Bool)

(assert (=> bm!40099 m!839763))

(assert (=> bm!40100 m!838037))

(declare-fun m!839765 () Bool)

(assert (=> bm!40100 m!839765))

(declare-fun m!839767 () Bool)

(assert (=> b!580702 m!839767))

(assert (=> b!579514 d!204278))

(assert (=> b!579514 d!204016))

(assert (=> b!579514 d!203904))

(assert (=> b!580019 d!203926))

(declare-fun d!204282 () Bool)

(declare-fun lt!246171 () Int)

(assert (=> d!204282 (>= lt!246171 0)))

(declare-fun e!350902 () Int)

(assert (=> d!204282 (= lt!246171 e!350902)))

(declare-fun c!108735 () Bool)

(assert (=> d!204282 (= c!108735 ((_ is Nil!5691) (originalCharacters!1144 (_1!3600 (get!2172 lt!245813)))))))

(assert (=> d!204282 (= (size!4531 (originalCharacters!1144 (_1!3600 (get!2172 lt!245813)))) lt!246171)))

(declare-fun b!580704 () Bool)

(assert (=> b!580704 (= e!350902 0)))

(declare-fun b!580705 () Bool)

(assert (=> b!580705 (= e!350902 (+ 1 (size!4531 (t!77820 (originalCharacters!1144 (_1!3600 (get!2172 lt!245813)))))))))

(assert (= (and d!204282 c!108735) b!580704))

(assert (= (and d!204282 (not c!108735)) b!580705))

(declare-fun m!839769 () Bool)

(assert (=> b!580705 m!839769))

(assert (=> b!580019 d!204282))

(declare-fun b!580706 () Bool)

(declare-fun res!249959 () Bool)

(declare-fun e!350903 () Bool)

(assert (=> b!580706 (=> res!249959 e!350903)))

(assert (=> b!580706 (= res!249959 (not (isEmpty!4110 (tail!757 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595)))))))))

(declare-fun b!580707 () Bool)

(declare-fun e!350905 () Bool)

(assert (=> b!580707 (= e!350905 (matchR!586 (derivativeStep!303 (regex!1105 (rule!1859 token!491)) (head!1227 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595))))) (tail!757 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595))))))))

(declare-fun b!580708 () Bool)

(declare-fun res!249963 () Bool)

(declare-fun e!350904 () Bool)

(assert (=> b!580708 (=> (not res!249963) (not e!350904))))

(declare-fun call!40108 () Bool)

(assert (=> b!580708 (= res!249963 (not call!40108))))

(declare-fun b!580709 () Bool)

(declare-fun res!249964 () Bool)

(declare-fun e!350906 () Bool)

(assert (=> b!580709 (=> res!249964 e!350906)))

(assert (=> b!580709 (= res!249964 (not ((_ is ElementMatch!1439) (regex!1105 (rule!1859 token!491)))))))

(declare-fun e!350907 () Bool)

(assert (=> b!580709 (= e!350907 e!350906)))

(declare-fun b!580710 () Bool)

(assert (=> b!580710 (= e!350903 (not (= (head!1227 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595)))) (c!108451 (regex!1105 (rule!1859 token!491))))))))

(declare-fun b!580711 () Bool)

(declare-fun e!350908 () Bool)

(assert (=> b!580711 (= e!350908 e!350907)))

(declare-fun c!108737 () Bool)

(assert (=> b!580711 (= c!108737 ((_ is EmptyLang!1439) (regex!1105 (rule!1859 token!491))))))

(declare-fun b!580712 () Bool)

(assert (=> b!580712 (= e!350904 (= (head!1227 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595)))) (c!108451 (regex!1105 (rule!1859 token!491)))))))

(declare-fun d!204284 () Bool)

(assert (=> d!204284 e!350908))

(declare-fun c!108738 () Bool)

(assert (=> d!204284 (= c!108738 ((_ is EmptyExpr!1439) (regex!1105 (rule!1859 token!491))))))

(declare-fun lt!246172 () Bool)

(assert (=> d!204284 (= lt!246172 e!350905)))

(declare-fun c!108736 () Bool)

(assert (=> d!204284 (= c!108736 (isEmpty!4110 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595)))))))

(assert (=> d!204284 (validRegex!485 (regex!1105 (rule!1859 token!491)))))

(assert (=> d!204284 (= (matchR!586 (regex!1105 (rule!1859 token!491)) (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595)))) lt!246172)))

(declare-fun b!580713 () Bool)

(declare-fun e!350909 () Bool)

(assert (=> b!580713 (= e!350906 e!350909)))

(declare-fun res!249960 () Bool)

(assert (=> b!580713 (=> (not res!249960) (not e!350909))))

(assert (=> b!580713 (= res!249960 (not lt!246172))))

(declare-fun bm!40103 () Bool)

(assert (=> bm!40103 (= call!40108 (isEmpty!4110 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595)))))))

(declare-fun b!580714 () Bool)

(assert (=> b!580714 (= e!350908 (= lt!246172 call!40108))))

(declare-fun b!580715 () Bool)

(declare-fun res!249965 () Bool)

(assert (=> b!580715 (=> (not res!249965) (not e!350904))))

(assert (=> b!580715 (= res!249965 (isEmpty!4110 (tail!757 (_1!3602 (findLongestMatchInner!175 (regex!1105 (rule!1859 token!491)) Nil!5691 (size!4531 Nil!5691) lt!245595 lt!245595 (size!4531 lt!245595))))))))

(declare-fun b!580716 () Bool)

(assert (=> b!580716 (= e!350905 (nullable!390 (regex!1105 (rule!1859 token!491))))))

(declare-fun b!580717 () Bool)

(assert (=> b!580717 (= e!350909 e!350903)))

(declare-fun res!249961 () Bool)

(assert (=> b!580717 (=> res!249961 e!350903)))

(assert (=> b!580717 (= res!249961 call!40108)))

(declare-fun b!580718 () Bool)

(assert (=> b!580718 (= e!350907 (not lt!246172))))

(declare-fun b!580719 () Bool)

(declare-fun res!249966 () Bool)

(assert (=> b!580719 (=> res!249966 e!350906)))

(assert (=> b!580719 (= res!249966 e!350904)))

(declare-fun res!249962 () Bool)

(assert (=> b!580719 (=> (not res!249962) (not e!350904))))

(assert (=> b!580719 (= res!249962 lt!246172)))

(assert (= (and d!204284 c!108736) b!580716))

(assert (= (and d!204284 (not c!108736)) b!580707))

(assert (= (and d!204284 c!108738) b!580714))

(assert (= (and d!204284 (not c!108738)) b!580711))

(assert (= (and b!580711 c!108737) b!580718))

(assert (= (and b!580711 (not c!108737)) b!580709))

(assert (= (and b!580709 (not res!249964)) b!580719))

(assert (= (and b!580719 res!249962) b!580708))

(assert (= (and b!580708 res!249963) b!580715))

(assert (= (and b!580715 res!249965) b!580712))

(assert (= (and b!580719 (not res!249966)) b!580713))

(assert (= (and b!580713 res!249960) b!580717))

(assert (= (and b!580717 (not res!249961)) b!580706))

(assert (= (and b!580706 (not res!249959)) b!580710))

(assert (= (or b!580714 b!580708 b!580717) bm!40103))

(declare-fun m!839771 () Bool)

(assert (=> b!580706 m!839771))

(assert (=> b!580706 m!839771))

(declare-fun m!839773 () Bool)

(assert (=> b!580706 m!839773))

(assert (=> d!204284 m!838735))

(assert (=> d!204284 m!838409))

(declare-fun m!839775 () Bool)

(assert (=> b!580707 m!839775))

(assert (=> b!580707 m!839775))

(declare-fun m!839777 () Bool)

(assert (=> b!580707 m!839777))

(assert (=> b!580707 m!839771))

(assert (=> b!580707 m!839777))

(assert (=> b!580707 m!839771))

(declare-fun m!839779 () Bool)

(assert (=> b!580707 m!839779))

(assert (=> b!580715 m!839771))

(assert (=> b!580715 m!839771))

(assert (=> b!580715 m!839773))

(assert (=> b!580710 m!839775))

(assert (=> b!580716 m!838415))

(assert (=> bm!40103 m!838735))

(assert (=> b!580712 m!839775))

(assert (=> b!580024 d!204284))

(assert (=> b!580024 d!204050))

(assert (=> b!580024 d!203968))

(assert (=> b!580024 d!204012))

(declare-fun d!204286 () Bool)

(declare-fun c!108739 () Bool)

(assert (=> d!204286 (= c!108739 ((_ is Node!1822) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610)))))))

(declare-fun e!350910 () Bool)

(assert (=> d!204286 (= (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610)))) e!350910)))

(declare-fun b!580720 () Bool)

(assert (=> b!580720 (= e!350910 (inv!7175 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610)))))))

(declare-fun b!580721 () Bool)

(declare-fun e!350911 () Bool)

(assert (=> b!580721 (= e!350910 e!350911)))

(declare-fun res!249967 () Bool)

(assert (=> b!580721 (= res!249967 (not ((_ is Leaf!2882) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610))))))))

(assert (=> b!580721 (=> res!249967 e!350911)))

(declare-fun b!580722 () Bool)

(assert (=> b!580722 (= e!350911 (inv!7176 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610)))))))

(assert (= (and d!204286 c!108739) b!580720))

(assert (= (and d!204286 (not c!108739)) b!580721))

(assert (= (and b!580721 (not res!249967)) b!580722))

(declare-fun m!839781 () Bool)

(assert (=> b!580720 m!839781))

(declare-fun m!839783 () Bool)

(assert (=> b!580722 m!839783))

(assert (=> b!579743 d!204286))

(declare-fun b!580725 () Bool)

(declare-fun e!350914 () List!5701)

(assert (=> b!580725 (= e!350914 Nil!5691)))

(declare-fun b!580727 () Bool)

(declare-fun e!350915 () List!5701)

(assert (=> b!580727 (= e!350915 (list!2370 (xs!4459 (c!108452 (charsOf!734 (_1!3600 (v!16320 lt!245592)))))))))

(declare-fun d!204288 () Bool)

(declare-fun c!108740 () Bool)

(assert (=> d!204288 (= c!108740 ((_ is Empty!1822) (c!108452 (charsOf!734 (_1!3600 (v!16320 lt!245592))))))))

(assert (=> d!204288 (= (list!2369 (c!108452 (charsOf!734 (_1!3600 (v!16320 lt!245592))))) e!350914)))

(declare-fun b!580728 () Bool)

(assert (=> b!580728 (= e!350915 (++!1593 (list!2369 (left!4647 (c!108452 (charsOf!734 (_1!3600 (v!16320 lt!245592)))))) (list!2369 (right!4977 (c!108452 (charsOf!734 (_1!3600 (v!16320 lt!245592))))))))))

(declare-fun b!580726 () Bool)

(assert (=> b!580726 (= e!350914 e!350915)))

(declare-fun c!108741 () Bool)

(assert (=> b!580726 (= c!108741 ((_ is Leaf!2882) (c!108452 (charsOf!734 (_1!3600 (v!16320 lt!245592))))))))

(assert (= (and d!204288 c!108740) b!580725))

(assert (= (and d!204288 (not c!108740)) b!580726))

(assert (= (and b!580726 c!108741) b!580727))

(assert (= (and b!580726 (not c!108741)) b!580728))

(declare-fun m!839785 () Bool)

(assert (=> b!580727 m!839785))

(declare-fun m!839787 () Bool)

(assert (=> b!580728 m!839787))

(declare-fun m!839789 () Bool)

(assert (=> b!580728 m!839789))

(assert (=> b!580728 m!839787))

(assert (=> b!580728 m!839789))

(declare-fun m!839791 () Bool)

(assert (=> b!580728 m!839791))

(assert (=> d!203822 d!204288))

(declare-fun d!204290 () Bool)

(declare-fun c!108742 () Bool)

(assert (=> d!204290 (= c!108742 ((_ is Node!1822) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574)))))))

(declare-fun e!350916 () Bool)

(assert (=> d!204290 (= (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574)))) e!350916)))

(declare-fun b!580729 () Bool)

(assert (=> b!580729 (= e!350916 (inv!7175 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574)))))))

(declare-fun b!580730 () Bool)

(declare-fun e!350917 () Bool)

(assert (=> b!580730 (= e!350916 e!350917)))

(declare-fun res!249970 () Bool)

(assert (=> b!580730 (= res!249970 (not ((_ is Leaf!2882) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574))))))))

(assert (=> b!580730 (=> res!249970 e!350917)))

(declare-fun b!580731 () Bool)

(assert (=> b!580731 (= e!350917 (inv!7176 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574)))))))

(assert (= (and d!204290 c!108742) b!580729))

(assert (= (and d!204290 (not c!108742)) b!580730))

(assert (= (and b!580730 (not res!249970)) b!580731))

(declare-fun m!839793 () Bool)

(assert (=> b!580729 m!839793))

(declare-fun m!839795 () Bool)

(assert (=> b!580731 m!839795))

(assert (=> b!580031 d!204290))

(assert (=> d!203846 d!203754))

(declare-fun bs!69736 () Bool)

(declare-fun d!204292 () Bool)

(assert (= bs!69736 (and d!204292 d!204014)))

(declare-fun lambda!15789 () Int)

(assert (=> bs!69736 (= (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) (= lambda!15789 lambda!15776))))

(declare-fun bs!69737 () Bool)

(assert (= bs!69737 (and d!204292 d!204088)))

(assert (=> bs!69737 (= (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) (= lambda!15789 lambda!15781))))

(assert (=> d!204292 true))

(assert (=> d!204292 (< (dynLambda!3315 order!4653 (toValue!1968 (transformation!1105 (h!11093 rules!3103)))) (dynLambda!3321 order!4659 lambda!15789))))

(assert (=> d!204292 (= (equivClasses!411 (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (h!11093 rules!3103)))) (Forall2!211 lambda!15789))))

(declare-fun bs!69738 () Bool)

(assert (= bs!69738 d!204292))

(declare-fun m!839797 () Bool)

(assert (=> bs!69738 m!839797))

(assert (=> b!579650 d!204292))

(assert (=> b!579914 d!204016))

(assert (=> b!579914 d!204272))

(declare-fun d!204294 () Bool)

(assert (=> d!204294 (= (list!2367 lt!245768) (list!2369 (c!108452 lt!245768)))))

(declare-fun bs!69739 () Bool)

(assert (= bs!69739 d!204294))

(declare-fun m!839799 () Bool)

(assert (=> bs!69739 m!839799))

(assert (=> d!203792 d!204294))

(declare-fun d!204296 () Bool)

(declare-fun lt!246173 () Int)

(assert (=> d!204296 (>= lt!246173 0)))

(declare-fun e!350918 () Int)

(assert (=> d!204296 (= lt!246173 e!350918)))

(declare-fun c!108743 () Bool)

(assert (=> d!204296 (= c!108743 ((_ is Nil!5691) (_2!3600 (get!2172 lt!245678))))))

(assert (=> d!204296 (= (size!4531 (_2!3600 (get!2172 lt!245678))) lt!246173)))

(declare-fun b!580734 () Bool)

(assert (=> b!580734 (= e!350918 0)))

(declare-fun b!580735 () Bool)

(assert (=> b!580735 (= e!350918 (+ 1 (size!4531 (t!77820 (_2!3600 (get!2172 lt!245678))))))))

(assert (= (and d!204296 c!108743) b!580734))

(assert (= (and d!204296 (not c!108743)) b!580735))

(declare-fun m!839803 () Bool)

(assert (=> b!580735 m!839803))

(assert (=> b!579641 d!204296))

(assert (=> b!579641 d!203988))

(assert (=> b!579641 d!203906))

(assert (=> b!579953 d!204162))

(assert (=> b!580028 d!203908))

(declare-fun d!204298 () Bool)

(declare-fun lt!246174 () Int)

(assert (=> d!204298 (>= lt!246174 0)))

(declare-fun e!350919 () Int)

(assert (=> d!204298 (= lt!246174 e!350919)))

(declare-fun c!108744 () Bool)

(assert (=> d!204298 (= c!108744 ((_ is Nil!5691) (originalCharacters!1144 (_1!3600 (get!2172 lt!245821)))))))

(assert (=> d!204298 (= (size!4531 (originalCharacters!1144 (_1!3600 (get!2172 lt!245821)))) lt!246174)))

(declare-fun b!580736 () Bool)

(assert (=> b!580736 (= e!350919 0)))

(declare-fun b!580737 () Bool)

(assert (=> b!580737 (= e!350919 (+ 1 (size!4531 (t!77820 (originalCharacters!1144 (_1!3600 (get!2172 lt!245821)))))))))

(assert (= (and d!204298 c!108744) b!580736))

(assert (= (and d!204298 (not c!108744)) b!580737))

(declare-fun m!839807 () Bool)

(assert (=> b!580737 m!839807))

(assert (=> b!580028 d!204298))

(assert (=> d!203832 d!204190))

(declare-fun d!204304 () Bool)

(assert (=> d!204304 (= (isEmpty!4112 lt!245813) (not ((_ is Some!1455) lt!245813)))))

(assert (=> d!203870 d!204304))

(declare-fun d!204306 () Bool)

(assert (=> d!204306 (= (isEmpty!4110 (_1!3602 lt!245810)) ((_ is Nil!5691) (_1!3602 lt!245810)))))

(assert (=> d!203870 d!204306))

(declare-fun d!204308 () Bool)

(declare-fun lt!246181 () tuple2!6676)

(assert (=> d!204308 (= (++!1593 (_1!3602 lt!246181) (_2!3602 lt!246181)) input!2705)))

(assert (=> d!204308 (= lt!246181 (findLongestMatchInner!175 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) Nil!5691 0 input!2705 input!2705 (sizeTr!34 input!2705 0)))))

(declare-fun lt!246183 () Unit!10309)

(declare-fun lt!246178 () Unit!10309)

(assert (=> d!204308 (= lt!246183 lt!246178)))

(declare-fun lt!246176 () List!5701)

(declare-fun lt!246177 () Int)

(assert (=> d!204308 (= (sizeTr!34 lt!246176 lt!246177) (+ (size!4531 lt!246176) lt!246177))))

(assert (=> d!204308 (= lt!246178 (lemmaSizeTrEqualsSize!34 lt!246176 lt!246177))))

(assert (=> d!204308 (= lt!246177 0)))

(assert (=> d!204308 (= lt!246176 Nil!5691)))

(declare-fun lt!246179 () Unit!10309)

(declare-fun lt!246180 () Unit!10309)

(assert (=> d!204308 (= lt!246179 lt!246180)))

(declare-fun lt!246182 () Int)

(assert (=> d!204308 (= (sizeTr!34 input!2705 lt!246182) (+ (size!4531 input!2705) lt!246182))))

(assert (=> d!204308 (= lt!246180 (lemmaSizeTrEqualsSize!34 input!2705 lt!246182))))

(assert (=> d!204308 (= lt!246182 0)))

(assert (=> d!204308 (validRegex!485 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))))

(assert (=> d!204308 (= (findLongestMatch!154 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))) input!2705) lt!246181)))

(declare-fun bs!69742 () Bool)

(assert (= bs!69742 d!204308))

(assert (=> bs!69742 m!838035))

(declare-fun m!839809 () Bool)

(assert (=> bs!69742 m!839809))

(declare-fun m!839811 () Bool)

(assert (=> bs!69742 m!839811))

(declare-fun m!839815 () Bool)

(assert (=> bs!69742 m!839815))

(declare-fun m!839819 () Bool)

(assert (=> bs!69742 m!839819))

(declare-fun m!839821 () Bool)

(assert (=> bs!69742 m!839821))

(declare-fun m!839823 () Bool)

(assert (=> bs!69742 m!839823))

(assert (=> bs!69742 m!838197))

(assert (=> bs!69742 m!839815))

(declare-fun m!839825 () Bool)

(assert (=> bs!69742 m!839825))

(declare-fun m!839827 () Bool)

(assert (=> bs!69742 m!839827))

(assert (=> d!203870 d!204308))

(assert (=> d!203870 d!203790))

(declare-fun d!204310 () Bool)

(declare-fun lt!246184 () Int)

(assert (=> d!204310 (>= lt!246184 0)))

(declare-fun e!350921 () Int)

(assert (=> d!204310 (= lt!246184 e!350921)))

(declare-fun c!108745 () Bool)

(assert (=> d!204310 (= c!108745 ((_ is Nil!5691) lt!245754))))

(assert (=> d!204310 (= (size!4531 lt!245754) lt!246184)))

(declare-fun b!580739 () Bool)

(assert (=> b!580739 (= e!350921 0)))

(declare-fun b!580740 () Bool)

(assert (=> b!580740 (= e!350921 (+ 1 (size!4531 (t!77820 lt!245754))))))

(assert (= (and d!204310 c!108745) b!580739))

(assert (= (and d!204310 (not c!108745)) b!580740))

(declare-fun m!839833 () Bool)

(assert (=> b!580740 m!839833))

(assert (=> b!579856 d!204310))

(assert (=> b!579856 d!203788))

(declare-fun d!204316 () Bool)

(declare-fun lt!246185 () Int)

(assert (=> d!204316 (>= lt!246185 0)))

(declare-fun e!350922 () Int)

(assert (=> d!204316 (= lt!246185 e!350922)))

(declare-fun c!108746 () Bool)

(assert (=> d!204316 (= c!108746 ((_ is Nil!5691) (_2!3600 (v!16320 lt!245592))))))

(assert (=> d!204316 (= (size!4531 (_2!3600 (v!16320 lt!245592))) lt!246185)))

(declare-fun b!580741 () Bool)

(assert (=> b!580741 (= e!350922 0)))

(declare-fun b!580742 () Bool)

(assert (=> b!580742 (= e!350922 (+ 1 (size!4531 (t!77820 (_2!3600 (v!16320 lt!245592))))))))

(assert (= (and d!204316 c!108746) b!580741))

(assert (= (and d!204316 (not c!108746)) b!580742))

(declare-fun m!839835 () Bool)

(assert (=> b!580742 m!839835))

(assert (=> b!579856 d!204316))

(declare-fun d!204318 () Bool)

(assert (=> d!204318 (= (head!1227 lt!245578) (h!11092 lt!245578))))

(assert (=> b!579961 d!204318))

(declare-fun d!204320 () Bool)

(assert (=> d!204320 (= (head!1227 lt!245587) (h!11092 lt!245587))))

(assert (=> b!579961 d!204320))

(declare-fun b!580743 () Bool)

(declare-fun res!249971 () Bool)

(declare-fun e!350923 () Bool)

(assert (=> b!580743 (=> res!249971 e!350923)))

(assert (=> b!580743 (= res!249971 (not (isEmpty!4110 (tail!757 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797))))))))))

(declare-fun b!580744 () Bool)

(declare-fun e!350925 () Bool)

(assert (=> b!580744 (= e!350925 (matchR!586 (derivativeStep!303 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))) (head!1227 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797)))))) (tail!757 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797)))))))))

(declare-fun b!580745 () Bool)

(declare-fun res!249975 () Bool)

(declare-fun e!350924 () Bool)

(assert (=> b!580745 (=> (not res!249975) (not e!350924))))

(declare-fun call!40109 () Bool)

(assert (=> b!580745 (= res!249975 (not call!40109))))

(declare-fun b!580746 () Bool)

(declare-fun res!249976 () Bool)

(declare-fun e!350926 () Bool)

(assert (=> b!580746 (=> res!249976 e!350926)))

(assert (=> b!580746 (= res!249976 (not ((_ is ElementMatch!1439) (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))))))))

(declare-fun e!350927 () Bool)

(assert (=> b!580746 (= e!350927 e!350926)))

(declare-fun b!580747 () Bool)

(assert (=> b!580747 (= e!350923 (not (= (head!1227 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797))))) (c!108451 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245797))))))))))

(declare-fun b!580748 () Bool)

(declare-fun e!350928 () Bool)

(assert (=> b!580748 (= e!350928 e!350927)))

(declare-fun c!108748 () Bool)

(assert (=> b!580748 (= c!108748 ((_ is EmptyLang!1439) (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245797))))))))

(declare-fun b!580749 () Bool)

(assert (=> b!580749 (= e!350924 (= (head!1227 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797))))) (c!108451 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))))))))

(declare-fun d!204322 () Bool)

(assert (=> d!204322 e!350928))

(declare-fun c!108749 () Bool)

(assert (=> d!204322 (= c!108749 ((_ is EmptyExpr!1439) (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245797))))))))

(declare-fun lt!246186 () Bool)

(assert (=> d!204322 (= lt!246186 e!350925)))

(declare-fun c!108747 () Bool)

(assert (=> d!204322 (= c!108747 (isEmpty!4110 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797))))))))

(assert (=> d!204322 (validRegex!485 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))))))

(assert (=> d!204322 (= (matchR!586 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))) (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797))))) lt!246186)))

(declare-fun b!580750 () Bool)

(declare-fun e!350929 () Bool)

(assert (=> b!580750 (= e!350926 e!350929)))

(declare-fun res!249972 () Bool)

(assert (=> b!580750 (=> (not res!249972) (not e!350929))))

(assert (=> b!580750 (= res!249972 (not lt!246186))))

(declare-fun bm!40104 () Bool)

(assert (=> bm!40104 (= call!40109 (isEmpty!4110 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797))))))))

(declare-fun b!580751 () Bool)

(assert (=> b!580751 (= e!350928 (= lt!246186 call!40109))))

(declare-fun b!580752 () Bool)

(declare-fun res!249977 () Bool)

(assert (=> b!580752 (=> (not res!249977) (not e!350924))))

(assert (=> b!580752 (= res!249977 (isEmpty!4110 (tail!757 (list!2367 (charsOf!734 (_1!3600 (get!2172 lt!245797)))))))))

(declare-fun b!580753 () Bool)

(assert (=> b!580753 (= e!350925 (nullable!390 (regex!1105 (rule!1859 (_1!3600 (get!2172 lt!245797))))))))

(declare-fun b!580754 () Bool)

(assert (=> b!580754 (= e!350929 e!350923)))

(declare-fun res!249973 () Bool)

(assert (=> b!580754 (=> res!249973 e!350923)))

(assert (=> b!580754 (= res!249973 call!40109)))

(declare-fun b!580755 () Bool)

(assert (=> b!580755 (= e!350927 (not lt!246186))))

(declare-fun b!580756 () Bool)

(declare-fun res!249978 () Bool)

(assert (=> b!580756 (=> res!249978 e!350926)))

(assert (=> b!580756 (= res!249978 e!350924)))

(declare-fun res!249974 () Bool)

(assert (=> b!580756 (=> (not res!249974) (not e!350924))))

(assert (=> b!580756 (= res!249974 lt!246186)))

(assert (= (and d!204322 c!108747) b!580753))

(assert (= (and d!204322 (not c!108747)) b!580744))

(assert (= (and d!204322 c!108749) b!580751))

(assert (= (and d!204322 (not c!108749)) b!580748))

(assert (= (and b!580748 c!108748) b!580755))

(assert (= (and b!580748 (not c!108748)) b!580746))

(assert (= (and b!580746 (not res!249976)) b!580756))

(assert (= (and b!580756 res!249974) b!580745))

(assert (= (and b!580745 res!249975) b!580752))

(assert (= (and b!580752 res!249977) b!580749))

(assert (= (and b!580756 (not res!249978)) b!580750))

(assert (= (and b!580750 res!249972) b!580754))

(assert (= (and b!580754 (not res!249973)) b!580743))

(assert (= (and b!580743 (not res!249971)) b!580747))

(assert (= (or b!580751 b!580745 b!580754) bm!40104))

(assert (=> b!580743 m!838635))

(declare-fun m!839837 () Bool)

(assert (=> b!580743 m!839837))

(assert (=> b!580743 m!839837))

(declare-fun m!839839 () Bool)

(assert (=> b!580743 m!839839))

(assert (=> d!204322 m!838635))

(declare-fun m!839841 () Bool)

(assert (=> d!204322 m!839841))

(declare-fun m!839843 () Bool)

(assert (=> d!204322 m!839843))

(assert (=> b!580744 m!838635))

(declare-fun m!839845 () Bool)

(assert (=> b!580744 m!839845))

(assert (=> b!580744 m!839845))

(declare-fun m!839847 () Bool)

(assert (=> b!580744 m!839847))

(assert (=> b!580744 m!838635))

(assert (=> b!580744 m!839837))

(assert (=> b!580744 m!839847))

(assert (=> b!580744 m!839837))

(declare-fun m!839849 () Bool)

(assert (=> b!580744 m!839849))

(assert (=> b!580752 m!838635))

(assert (=> b!580752 m!839837))

(assert (=> b!580752 m!839837))

(assert (=> b!580752 m!839839))

(assert (=> b!580747 m!838635))

(assert (=> b!580747 m!839845))

(declare-fun m!839851 () Bool)

(assert (=> b!580753 m!839851))

(assert (=> bm!40104 m!838635))

(assert (=> bm!40104 m!839841))

(assert (=> b!580749 m!838635))

(assert (=> b!580749 m!839845))

(assert (=> b!579979 d!204322))

(assert (=> b!579979 d!204104))

(assert (=> b!579979 d!204198))

(assert (=> b!579979 d!204200))

(declare-fun d!204324 () Bool)

(assert (=> d!204324 (= (nullable!390 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (nullableFct!134 (regex!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))))

(declare-fun bs!69743 () Bool)

(assert (= bs!69743 d!204324))

(declare-fun m!839853 () Bool)

(assert (=> bs!69743 m!839853))

(assert (=> b!579864 d!204324))

(declare-fun d!204326 () Bool)

(declare-fun lt!246187 () List!5701)

(assert (=> d!204326 (= (++!1593 (t!77820 lt!245578) lt!246187) (tail!757 input!2705))))

(declare-fun e!350934 () List!5701)

(assert (=> d!204326 (= lt!246187 e!350934)))

(declare-fun c!108752 () Bool)

(assert (=> d!204326 (= c!108752 ((_ is Cons!5691) (t!77820 lt!245578)))))

(assert (=> d!204326 (>= (size!4531 (tail!757 input!2705)) (size!4531 (t!77820 lt!245578)))))

(assert (=> d!204326 (= (getSuffix!258 (tail!757 input!2705) (t!77820 lt!245578)) lt!246187)))

(declare-fun b!580763 () Bool)

(assert (=> b!580763 (= e!350934 (getSuffix!258 (tail!757 (tail!757 input!2705)) (t!77820 (t!77820 lt!245578))))))

(declare-fun b!580764 () Bool)

(assert (=> b!580764 (= e!350934 (tail!757 input!2705))))

(assert (= (and d!204326 c!108752) b!580763))

(assert (= (and d!204326 (not c!108752)) b!580764))

(declare-fun m!839855 () Bool)

(assert (=> d!204326 m!839855))

(assert (=> d!204326 m!838031))

(assert (=> d!204326 m!838891))

(assert (=> d!204326 m!838481))

(assert (=> b!580763 m!838031))

(assert (=> b!580763 m!838893))

(assert (=> b!580763 m!838893))

(declare-fun m!839857 () Bool)

(assert (=> b!580763 m!839857))

(assert (=> b!579825 d!204326))

(assert (=> b!579825 d!203904))

(assert (=> b!579525 d!204324))

(declare-fun d!204328 () Bool)

(declare-fun lt!246188 () Int)

(assert (=> d!204328 (>= lt!246188 0)))

(declare-fun e!350935 () Int)

(assert (=> d!204328 (= lt!246188 e!350935)))

(declare-fun c!108753 () Bool)

(assert (=> d!204328 (= c!108753 ((_ is Nil!5691) (_2!3600 (get!2172 lt!245797))))))

(assert (=> d!204328 (= (size!4531 (_2!3600 (get!2172 lt!245797))) lt!246188)))

(declare-fun b!580765 () Bool)

(assert (=> b!580765 (= e!350935 0)))

(declare-fun b!580766 () Bool)

(assert (=> b!580766 (= e!350935 (+ 1 (size!4531 (t!77820 (_2!3600 (get!2172 lt!245797))))))))

(assert (= (and d!204328 c!108753) b!580765))

(assert (= (and d!204328 (not c!108753)) b!580766))

(declare-fun m!839859 () Bool)

(assert (=> b!580766 m!839859))

(assert (=> b!579982 d!204328))

(assert (=> b!579982 d!204104))

(assert (=> b!579982 d!204012))

(declare-fun d!204330 () Bool)

(assert (=> d!204330 (= (list!2367 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491))) (list!2369 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491)))))))

(declare-fun bs!69744 () Bool)

(assert (= bs!69744 d!204330))

(declare-fun m!839861 () Bool)

(assert (=> bs!69744 m!839861))

(assert (=> b!579974 d!204330))

(declare-fun b!580770 () Bool)

(declare-fun e!350938 () Bool)

(declare-fun tp!181326 () Bool)

(assert (=> b!580770 (= e!350938 (and tp_is_empty!3233 tp!181326))))

(assert (=> b!580081 (= tp!181311 e!350938)))

(assert (= (and b!580081 ((_ is Cons!5691) (t!77820 (originalCharacters!1144 token!491)))) b!580770))

(declare-fun b!580775 () Bool)

(declare-fun e!350942 () Bool)

(declare-fun tp!181327 () Bool)

(assert (=> b!580775 (= e!350942 (and tp_is_empty!3233 tp!181327))))

(assert (=> b!580086 (= tp!181317 e!350942)))

(assert (= (and b!580086 ((_ is Cons!5691) (t!77820 (t!77820 input!2705)))) b!580775))

(declare-fun b!580779 () Bool)

(declare-fun e!350943 () Bool)

(declare-fun tp!181330 () Bool)

(declare-fun tp!181331 () Bool)

(assert (=> b!580779 (= e!350943 (and tp!181330 tp!181331))))

(declare-fun b!580778 () Bool)

(declare-fun tp!181328 () Bool)

(assert (=> b!580778 (= e!350943 tp!181328)))

(declare-fun b!580776 () Bool)

(assert (=> b!580776 (= e!350943 tp_is_empty!3233)))

(assert (=> b!580084 (= tp!181312 e!350943)))

(declare-fun b!580777 () Bool)

(declare-fun tp!181332 () Bool)

(declare-fun tp!181329 () Bool)

(assert (=> b!580777 (= e!350943 (and tp!181332 tp!181329))))

(assert (= (and b!580084 ((_ is ElementMatch!1439) (reg!1768 (regex!1105 (rule!1859 token!491))))) b!580776))

(assert (= (and b!580084 ((_ is Concat!2568) (reg!1768 (regex!1105 (rule!1859 token!491))))) b!580777))

(assert (= (and b!580084 ((_ is Star!1439) (reg!1768 (regex!1105 (rule!1859 token!491))))) b!580778))

(assert (= (and b!580084 ((_ is Union!1439) (reg!1768 (regex!1105 (rule!1859 token!491))))) b!580779))

(declare-fun b!580783 () Bool)

(declare-fun e!350944 () Bool)

(declare-fun tp!181335 () Bool)

(declare-fun tp!181336 () Bool)

(assert (=> b!580783 (= e!350944 (and tp!181335 tp!181336))))

(declare-fun b!580782 () Bool)

(declare-fun tp!181333 () Bool)

(assert (=> b!580782 (= e!350944 tp!181333)))

(declare-fun b!580780 () Bool)

(assert (=> b!580780 (= e!350944 tp_is_empty!3233)))

(assert (=> b!580063 (= tp!181296 e!350944)))

(declare-fun b!580781 () Bool)

(declare-fun tp!181337 () Bool)

(declare-fun tp!181334 () Bool)

(assert (=> b!580781 (= e!350944 (and tp!181337 tp!181334))))

(assert (= (and b!580063 ((_ is ElementMatch!1439) (regOne!3390 (regex!1105 (h!11093 rules!3103))))) b!580780))

(assert (= (and b!580063 ((_ is Concat!2568) (regOne!3390 (regex!1105 (h!11093 rules!3103))))) b!580781))

(assert (= (and b!580063 ((_ is Star!1439) (regOne!3390 (regex!1105 (h!11093 rules!3103))))) b!580782))

(assert (= (and b!580063 ((_ is Union!1439) (regOne!3390 (regex!1105 (h!11093 rules!3103))))) b!580783))

(declare-fun b!580787 () Bool)

(declare-fun e!350945 () Bool)

(declare-fun tp!181340 () Bool)

(declare-fun tp!181341 () Bool)

(assert (=> b!580787 (= e!350945 (and tp!181340 tp!181341))))

(declare-fun b!580786 () Bool)

(declare-fun tp!181338 () Bool)

(assert (=> b!580786 (= e!350945 tp!181338)))

(declare-fun b!580784 () Bool)

(assert (=> b!580784 (= e!350945 tp_is_empty!3233)))

(assert (=> b!580063 (= tp!181293 e!350945)))

(declare-fun b!580785 () Bool)

(declare-fun tp!181342 () Bool)

(declare-fun tp!181339 () Bool)

(assert (=> b!580785 (= e!350945 (and tp!181342 tp!181339))))

(assert (= (and b!580063 ((_ is ElementMatch!1439) (regTwo!3390 (regex!1105 (h!11093 rules!3103))))) b!580784))

(assert (= (and b!580063 ((_ is Concat!2568) (regTwo!3390 (regex!1105 (h!11093 rules!3103))))) b!580785))

(assert (= (and b!580063 ((_ is Star!1439) (regTwo!3390 (regex!1105 (h!11093 rules!3103))))) b!580786))

(assert (= (and b!580063 ((_ is Union!1439) (regTwo!3390 (regex!1105 (h!11093 rules!3103))))) b!580787))

(declare-fun b!580795 () Bool)

(declare-fun e!350949 () Bool)

(declare-fun tp!181345 () Bool)

(declare-fun tp!181346 () Bool)

(assert (=> b!580795 (= e!350949 (and tp!181345 tp!181346))))

(declare-fun b!580794 () Bool)

(declare-fun tp!181343 () Bool)

(assert (=> b!580794 (= e!350949 tp!181343)))

(declare-fun b!580792 () Bool)

(assert (=> b!580792 (= e!350949 tp_is_empty!3233)))

(assert (=> b!580083 (= tp!181316 e!350949)))

(declare-fun b!580793 () Bool)

(declare-fun tp!181347 () Bool)

(declare-fun tp!181344 () Bool)

(assert (=> b!580793 (= e!350949 (and tp!181347 tp!181344))))

(assert (= (and b!580083 ((_ is ElementMatch!1439) (regOne!3390 (regex!1105 (rule!1859 token!491))))) b!580792))

(assert (= (and b!580083 ((_ is Concat!2568) (regOne!3390 (regex!1105 (rule!1859 token!491))))) b!580793))

(assert (= (and b!580083 ((_ is Star!1439) (regOne!3390 (regex!1105 (rule!1859 token!491))))) b!580794))

(assert (= (and b!580083 ((_ is Union!1439) (regOne!3390 (regex!1105 (rule!1859 token!491))))) b!580795))

(declare-fun b!580799 () Bool)

(declare-fun e!350950 () Bool)

(declare-fun tp!181350 () Bool)

(declare-fun tp!181351 () Bool)

(assert (=> b!580799 (= e!350950 (and tp!181350 tp!181351))))

(declare-fun b!580798 () Bool)

(declare-fun tp!181348 () Bool)

(assert (=> b!580798 (= e!350950 tp!181348)))

(declare-fun b!580796 () Bool)

(assert (=> b!580796 (= e!350950 tp_is_empty!3233)))

(assert (=> b!580083 (= tp!181313 e!350950)))

(declare-fun b!580797 () Bool)

(declare-fun tp!181352 () Bool)

(declare-fun tp!181349 () Bool)

(assert (=> b!580797 (= e!350950 (and tp!181352 tp!181349))))

(assert (= (and b!580083 ((_ is ElementMatch!1439) (regTwo!3390 (regex!1105 (rule!1859 token!491))))) b!580796))

(assert (= (and b!580083 ((_ is Concat!2568) (regTwo!3390 (regex!1105 (rule!1859 token!491))))) b!580797))

(assert (= (and b!580083 ((_ is Star!1439) (regTwo!3390 (regex!1105 (rule!1859 token!491))))) b!580798))

(assert (= (and b!580083 ((_ is Union!1439) (regTwo!3390 (regex!1105 (rule!1859 token!491))))) b!580799))

(declare-fun b!580803 () Bool)

(declare-fun e!350951 () Bool)

(declare-fun tp!181355 () Bool)

(declare-fun tp!181356 () Bool)

(assert (=> b!580803 (= e!350951 (and tp!181355 tp!181356))))

(declare-fun b!580802 () Bool)

(declare-fun tp!181353 () Bool)

(assert (=> b!580802 (= e!350951 tp!181353)))

(declare-fun b!580800 () Bool)

(assert (=> b!580800 (= e!350951 tp_is_empty!3233)))

(assert (=> b!580065 (= tp!181294 e!350951)))

(declare-fun b!580801 () Bool)

(declare-fun tp!181357 () Bool)

(declare-fun tp!181354 () Bool)

(assert (=> b!580801 (= e!350951 (and tp!181357 tp!181354))))

(assert (= (and b!580065 ((_ is ElementMatch!1439) (regOne!3391 (regex!1105 (h!11093 rules!3103))))) b!580800))

(assert (= (and b!580065 ((_ is Concat!2568) (regOne!3391 (regex!1105 (h!11093 rules!3103))))) b!580801))

(assert (= (and b!580065 ((_ is Star!1439) (regOne!3391 (regex!1105 (h!11093 rules!3103))))) b!580802))

(assert (= (and b!580065 ((_ is Union!1439) (regOne!3391 (regex!1105 (h!11093 rules!3103))))) b!580803))

(declare-fun b!580807 () Bool)

(declare-fun e!350952 () Bool)

(declare-fun tp!181360 () Bool)

(declare-fun tp!181361 () Bool)

(assert (=> b!580807 (= e!350952 (and tp!181360 tp!181361))))

(declare-fun b!580806 () Bool)

(declare-fun tp!181358 () Bool)

(assert (=> b!580806 (= e!350952 tp!181358)))

(declare-fun b!580804 () Bool)

(assert (=> b!580804 (= e!350952 tp_is_empty!3233)))

(assert (=> b!580065 (= tp!181295 e!350952)))

(declare-fun b!580805 () Bool)

(declare-fun tp!181362 () Bool)

(declare-fun tp!181359 () Bool)

(assert (=> b!580805 (= e!350952 (and tp!181362 tp!181359))))

(assert (= (and b!580065 ((_ is ElementMatch!1439) (regTwo!3391 (regex!1105 (h!11093 rules!3103))))) b!580804))

(assert (= (and b!580065 ((_ is Concat!2568) (regTwo!3391 (regex!1105 (h!11093 rules!3103))))) b!580805))

(assert (= (and b!580065 ((_ is Star!1439) (regTwo!3391 (regex!1105 (h!11093 rules!3103))))) b!580806))

(assert (= (and b!580065 ((_ is Union!1439) (regTwo!3391 (regex!1105 (h!11093 rules!3103))))) b!580807))

(declare-fun b!580811 () Bool)

(declare-fun e!350953 () Bool)

(declare-fun tp!181365 () Bool)

(declare-fun tp!181366 () Bool)

(assert (=> b!580811 (= e!350953 (and tp!181365 tp!181366))))

(declare-fun b!580810 () Bool)

(declare-fun tp!181363 () Bool)

(assert (=> b!580810 (= e!350953 tp!181363)))

(declare-fun b!580808 () Bool)

(assert (=> b!580808 (= e!350953 tp_is_empty!3233)))

(assert (=> b!580085 (= tp!181314 e!350953)))

(declare-fun b!580809 () Bool)

(declare-fun tp!181367 () Bool)

(declare-fun tp!181364 () Bool)

(assert (=> b!580809 (= e!350953 (and tp!181367 tp!181364))))

(assert (= (and b!580085 ((_ is ElementMatch!1439) (regOne!3391 (regex!1105 (rule!1859 token!491))))) b!580808))

(assert (= (and b!580085 ((_ is Concat!2568) (regOne!3391 (regex!1105 (rule!1859 token!491))))) b!580809))

(assert (= (and b!580085 ((_ is Star!1439) (regOne!3391 (regex!1105 (rule!1859 token!491))))) b!580810))

(assert (= (and b!580085 ((_ is Union!1439) (regOne!3391 (regex!1105 (rule!1859 token!491))))) b!580811))

(declare-fun b!580815 () Bool)

(declare-fun e!350954 () Bool)

(declare-fun tp!181370 () Bool)

(declare-fun tp!181371 () Bool)

(assert (=> b!580815 (= e!350954 (and tp!181370 tp!181371))))

(declare-fun b!580814 () Bool)

(declare-fun tp!181368 () Bool)

(assert (=> b!580814 (= e!350954 tp!181368)))

(declare-fun b!580812 () Bool)

(assert (=> b!580812 (= e!350954 tp_is_empty!3233)))

(assert (=> b!580085 (= tp!181315 e!350954)))

(declare-fun b!580813 () Bool)

(declare-fun tp!181372 () Bool)

(declare-fun tp!181369 () Bool)

(assert (=> b!580813 (= e!350954 (and tp!181372 tp!181369))))

(assert (= (and b!580085 ((_ is ElementMatch!1439) (regTwo!3391 (regex!1105 (rule!1859 token!491))))) b!580812))

(assert (= (and b!580085 ((_ is Concat!2568) (regTwo!3391 (regex!1105 (rule!1859 token!491))))) b!580813))

(assert (= (and b!580085 ((_ is Star!1439) (regTwo!3391 (regex!1105 (rule!1859 token!491))))) b!580814))

(assert (= (and b!580085 ((_ is Union!1439) (regTwo!3391 (regex!1105 (rule!1859 token!491))))) b!580815))

(declare-fun b!580819 () Bool)

(declare-fun e!350955 () Bool)

(declare-fun tp!181375 () Bool)

(declare-fun tp!181376 () Bool)

(assert (=> b!580819 (= e!350955 (and tp!181375 tp!181376))))

(declare-fun b!580818 () Bool)

(declare-fun tp!181373 () Bool)

(assert (=> b!580818 (= e!350955 tp!181373)))

(declare-fun b!580816 () Bool)

(assert (=> b!580816 (= e!350955 tp_is_empty!3233)))

(assert (=> b!580064 (= tp!181292 e!350955)))

(declare-fun b!580817 () Bool)

(declare-fun tp!181377 () Bool)

(declare-fun tp!181374 () Bool)

(assert (=> b!580817 (= e!350955 (and tp!181377 tp!181374))))

(assert (= (and b!580064 ((_ is ElementMatch!1439) (reg!1768 (regex!1105 (h!11093 rules!3103))))) b!580816))

(assert (= (and b!580064 ((_ is Concat!2568) (reg!1768 (regex!1105 (h!11093 rules!3103))))) b!580817))

(assert (= (and b!580064 ((_ is Star!1439) (reg!1768 (regex!1105 (h!11093 rules!3103))))) b!580818))

(assert (= (and b!580064 ((_ is Union!1439) (reg!1768 (regex!1105 (h!11093 rules!3103))))) b!580819))

(declare-fun b!580828 () Bool)

(declare-fun tp!181384 () Bool)

(declare-fun e!350961 () Bool)

(declare-fun tp!181385 () Bool)

(assert (=> b!580828 (= e!350961 (and (inv!7171 (left!4647 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592))))))) tp!181384 (inv!7171 (right!4977 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592))))))) tp!181385))))

(declare-fun b!580830 () Bool)

(declare-fun e!350962 () Bool)

(declare-fun tp!181386 () Bool)

(assert (=> b!580830 (= e!350962 tp!181386)))

(declare-fun b!580829 () Bool)

(declare-fun inv!7177 (IArray!3645) Bool)

(assert (=> b!580829 (= e!350961 (and (inv!7177 (xs!4459 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592))))))) e!350962))))

(assert (=> b!579883 (= tp!181242 (and (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592)))))) e!350961))))

(assert (= (and b!579883 ((_ is Node!1822) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592))))))) b!580828))

(assert (= b!580829 b!580830))

(assert (= (and b!579883 ((_ is Leaf!2882) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (value!36359 (_1!3600 (v!16320 lt!245592))))))) b!580829))

(declare-fun m!839889 () Bool)

(assert (=> b!580828 m!839889))

(declare-fun m!839891 () Bool)

(assert (=> b!580828 m!839891))

(declare-fun m!839893 () Bool)

(assert (=> b!580829 m!839893))

(assert (=> b!579883 m!838489))

(declare-fun b!580833 () Bool)

(declare-fun b_free!16133 () Bool)

(declare-fun b_next!16149 () Bool)

(assert (=> b!580833 (= b_free!16133 (not b_next!16149))))

(declare-fun t!77994 () Bool)

(declare-fun tb!50839 () Bool)

(assert (=> (and b!580833 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))))) t!77994) tb!50839))

(declare-fun result!56912 () Bool)

(assert (= result!56912 result!56868))

(assert (=> d!204106 t!77994))

(declare-fun tb!50841 () Bool)

(declare-fun t!77996 () Bool)

(assert (=> (and b!580833 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) t!77996) tb!50841))

(declare-fun result!56914 () Bool)

(assert (= result!56914 result!56856))

(assert (=> d!204038 t!77996))

(declare-fun t!77998 () Bool)

(declare-fun tb!50843 () Bool)

(assert (=> (and b!580833 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!77998) tb!50843))

(declare-fun result!56916 () Bool)

(assert (= result!56916 result!56832))

(assert (=> d!203962 t!77998))

(declare-fun tb!50845 () Bool)

(declare-fun t!78000 () Bool)

(assert (=> (and b!580833 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) t!78000) tb!50845))

(declare-fun result!56918 () Bool)

(assert (= result!56918 result!56788))

(assert (=> d!203878 t!78000))

(assert (=> d!203960 t!77998))

(declare-fun tb!50847 () Bool)

(declare-fun t!78002 () Bool)

(assert (=> (and b!580833 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!78002) tb!50847))

(declare-fun result!56920 () Bool)

(assert (= result!56920 result!56844))

(assert (=> d!203978 t!78002))

(declare-fun tb!50849 () Bool)

(declare-fun t!78004 () Bool)

(assert (=> (and b!580833 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!78004) tb!50849))

(declare-fun result!56922 () Bool)

(assert (= result!56922 result!56756))

(assert (=> d!203820 t!78004))

(assert (=> d!203686 t!78004))

(declare-fun tb!50851 () Bool)

(declare-fun t!78006 () Bool)

(assert (=> (and b!580833 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245813)))))) t!78006) tb!50851))

(declare-fun result!56924 () Bool)

(assert (= result!56924 result!56874))

(assert (=> d!204148 t!78006))

(declare-fun t!78008 () Bool)

(declare-fun tb!50853 () Bool)

(assert (=> (and b!580833 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toValue!1968 (transformation!1105 (rule!1859 token!491)))) t!78008) tb!50853))

(declare-fun result!56926 () Bool)

(assert (= result!56926 result!56880))

(assert (=> d!204188 t!78008))

(declare-fun tb!50855 () Bool)

(declare-fun t!78010 () Bool)

(assert (=> (and b!580833 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245821)))))) t!78010) tb!50855))

(declare-fun result!56928 () Bool)

(assert (= result!56928 result!56814))

(assert (=> d!203910 t!78010))

(declare-fun t!78012 () Bool)

(declare-fun tb!50857 () Bool)

(assert (=> (and b!580833 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))))) t!78012) tb!50857))

(declare-fun result!56930 () Bool)

(assert (= result!56930 result!56850))

(assert (=> d!203990 t!78012))

(assert (=> d!204034 t!77996))

(assert (=> d!203874 t!78000))

(declare-fun tp!181388 () Bool)

(declare-fun b_and!57095 () Bool)

(assert (=> b!580833 (= tp!181388 (and (=> t!78008 result!56926) (=> t!77996 result!56914) (=> t!78010 result!56928) (=> t!78012 result!56930) (=> t!78004 result!56922) (=> t!78006 result!56924) (=> t!78000 result!56918) (=> t!78002 result!56920) (=> t!77994 result!56912) (=> t!77998 result!56916) b_and!57095))))

(declare-fun b_free!16135 () Bool)

(declare-fun b_next!16151 () Bool)

(assert (=> b!580833 (= b_free!16135 (not b_next!16151))))

(declare-fun t!78014 () Bool)

(declare-fun tb!50859 () Bool)

(assert (=> (and b!580833 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) t!78014) tb!50859))

(declare-fun result!56932 () Bool)

(assert (= result!56932 result!56784))

(assert (=> d!203890 t!78014))

(declare-fun t!78016 () Bool)

(declare-fun tb!50861 () Bool)

(assert (=> (and b!580833 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) t!78016) tb!50861))

(declare-fun result!56934 () Bool)

(assert (= result!56934 result!56792))

(assert (=> d!203878 t!78016))

(declare-fun tb!50863 () Bool)

(declare-fun t!78018 () Bool)

(assert (=> (and b!580833 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!78018) tb!50863))

(declare-fun result!56936 () Bool)

(assert (= result!56936 result!56838))

(assert (=> d!203962 t!78018))

(declare-fun t!78020 () Bool)

(declare-fun tb!50865 () Bool)

(assert (=> (and b!580833 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toChars!1827 (transformation!1105 (rule!1859 token!491)))) t!78020) tb!50865))

(declare-fun result!56938 () Bool)

(assert (= result!56938 result!56862))

(assert (=> d!204038 t!78020))

(declare-fun t!78022 () Bool)

(declare-fun tb!50867 () Bool)

(assert (=> (and b!580833 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245678)))))) t!78022) tb!50867))

(declare-fun result!56940 () Bool)

(assert (= result!56940 result!56892))

(assert (=> d!204210 t!78022))

(declare-fun tb!50869 () Bool)

(declare-fun t!78024 () Bool)

(assert (=> (and b!580833 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245813)))))) t!78024) tb!50869))

(declare-fun result!56942 () Bool)

(assert (= result!56942 result!56820))

(assert (=> d!203924 t!78024))

(declare-fun t!78026 () Bool)

(declare-fun tb!50871 () Bool)

(assert (=> (and b!580833 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245797)))))) t!78026) tb!50871))

(declare-fun result!56944 () Bool)

(assert (= result!56944 result!56886))

(assert (=> d!204200 t!78026))

(assert (=> b!579974 t!78014))

(declare-fun tb!50873 () Bool)

(declare-fun t!78028 () Bool)

(assert (=> (and b!580833 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!78028) tb!50873))

(declare-fun result!56946 () Bool)

(assert (= result!56946 result!56762))

(assert (=> d!203792 t!78028))

(declare-fun t!78030 () Bool)

(declare-fun tb!50875 () Bool)

(assert (=> (and b!580833 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592)))))) t!78030) tb!50875))

(declare-fun result!56948 () Bool)

(assert (= result!56948 result!56750))

(assert (=> d!203686 t!78030))

(declare-fun t!78032 () Bool)

(declare-fun tb!50877 () Bool)

(assert (=> (and b!580833 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (get!2172 lt!245821)))))) t!78032) tb!50877))

(declare-fun result!56950 () Bool)

(assert (= result!56950 result!56826))

(assert (=> d!203934 t!78032))

(declare-fun b_and!57097 () Bool)

(declare-fun tp!181390 () Bool)

(assert (=> b!580833 (= tp!181390 (and (=> t!78028 result!56946) (=> t!78020 result!56938) (=> t!78026 result!56944) (=> t!78030 result!56948) (=> t!78022 result!56940) (=> t!78024 result!56942) (=> t!78032 result!56950) (=> t!78016 result!56934) (=> t!78014 result!56932) (=> t!78018 result!56936) b_and!57097))))

(declare-fun e!350964 () Bool)

(assert (=> b!580833 (= e!350964 (and tp!181388 tp!181390))))

(declare-fun tp!181387 () Bool)

(declare-fun e!350965 () Bool)

(declare-fun b!580832 () Bool)

(assert (=> b!580832 (= e!350965 (and tp!181387 (inv!7164 (tag!1367 (h!11093 (t!77821 (t!77821 rules!3103))))) (inv!7167 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) e!350964))))

(declare-fun b!580831 () Bool)

(declare-fun e!350963 () Bool)

(declare-fun tp!181389 () Bool)

(assert (=> b!580831 (= e!350963 (and e!350965 tp!181389))))

(assert (=> b!580074 (= tp!181307 e!350963)))

(assert (= b!580832 b!580833))

(assert (= b!580831 b!580832))

(assert (= (and b!580074 ((_ is Cons!5692) (t!77821 (t!77821 rules!3103)))) b!580831))

(declare-fun m!839895 () Bool)

(assert (=> b!580832 m!839895))

(declare-fun m!839897 () Bool)

(assert (=> b!580832 m!839897))

(declare-fun b!580834 () Bool)

(declare-fun e!350967 () Bool)

(declare-fun tp!181391 () Bool)

(assert (=> b!580834 (= e!350967 (and tp_is_empty!3233 tp!181391))))

(assert (=> b!580087 (= tp!181318 e!350967)))

(assert (= (and b!580087 ((_ is Cons!5691) (t!77820 (t!77820 suffix!1342)))) b!580834))

(declare-fun b!580835 () Bool)

(declare-fun e!350968 () Bool)

(declare-fun tp!181392 () Bool)

(declare-fun tp!181393 () Bool)

(assert (=> b!580835 (= e!350968 (and (inv!7171 (left!4647 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491))))) tp!181392 (inv!7171 (right!4977 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491))))) tp!181393))))

(declare-fun b!580837 () Bool)

(declare-fun e!350969 () Bool)

(declare-fun tp!181394 () Bool)

(assert (=> b!580837 (= e!350969 tp!181394)))

(declare-fun b!580836 () Bool)

(assert (=> b!580836 (= e!350968 (and (inv!7177 (xs!4459 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491))))) e!350969))))

(assert (=> b!579976 (= tp!181280 (and (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491)))) e!350968))))

(assert (= (and b!579976 ((_ is Node!1822) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491))))) b!580835))

(assert (= b!580836 b!580837))

(assert (= (and b!579976 ((_ is Leaf!2882) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (value!36359 token!491))))) b!580836))

(declare-fun m!839899 () Bool)

(assert (=> b!580835 m!839899))

(declare-fun m!839901 () Bool)

(assert (=> b!580835 m!839901))

(declare-fun m!839903 () Bool)

(assert (=> b!580836 m!839903))

(assert (=> b!579976 m!838611))

(declare-fun b!580841 () Bool)

(declare-fun e!350970 () Bool)

(declare-fun tp!181397 () Bool)

(declare-fun tp!181398 () Bool)

(assert (=> b!580841 (= e!350970 (and tp!181397 tp!181398))))

(declare-fun b!580840 () Bool)

(declare-fun tp!181395 () Bool)

(assert (=> b!580840 (= e!350970 tp!181395)))

(declare-fun b!580838 () Bool)

(assert (=> b!580838 (= e!350970 tp_is_empty!3233)))

(assert (=> b!580075 (= tp!181305 e!350970)))

(declare-fun b!580839 () Bool)

(declare-fun tp!181399 () Bool)

(declare-fun tp!181396 () Bool)

(assert (=> b!580839 (= e!350970 (and tp!181399 tp!181396))))

(assert (= (and b!580075 ((_ is ElementMatch!1439) (regex!1105 (h!11093 (t!77821 rules!3103))))) b!580838))

(assert (= (and b!580075 ((_ is Concat!2568) (regex!1105 (h!11093 (t!77821 rules!3103))))) b!580839))

(assert (= (and b!580075 ((_ is Star!1439) (regex!1105 (h!11093 (t!77821 rules!3103))))) b!580840))

(assert (= (and b!580075 ((_ is Union!1439) (regex!1105 (h!11093 (t!77821 rules!3103))))) b!580841))

(declare-fun tp!181401 () Bool)

(declare-fun e!350971 () Bool)

(declare-fun b!580842 () Bool)

(declare-fun tp!181400 () Bool)

(assert (=> b!580842 (= e!350971 (and (inv!7171 (left!4647 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610))))) tp!181400 (inv!7171 (right!4977 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610))))) tp!181401))))

(declare-fun b!580844 () Bool)

(declare-fun e!350972 () Bool)

(declare-fun tp!181402 () Bool)

(assert (=> b!580844 (= e!350972 tp!181402)))

(declare-fun b!580843 () Bool)

(assert (=> b!580843 (= e!350971 (and (inv!7177 (xs!4459 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610))))) e!350972))))

(assert (=> b!579743 (= tp!181241 (and (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610)))) e!350971))))

(assert (= (and b!579743 ((_ is Node!1822) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610))))) b!580842))

(assert (= b!580843 b!580844))

(assert (= (and b!579743 ((_ is Leaf!2882) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610))))) b!580843))

(declare-fun m!839905 () Bool)

(assert (=> b!580842 m!839905))

(declare-fun m!839907 () Bool)

(assert (=> b!580842 m!839907))

(declare-fun m!839909 () Bool)

(assert (=> b!580843 m!839909))

(assert (=> b!579743 m!838375))

(declare-fun tp!181404 () Bool)

(declare-fun tp!181403 () Bool)

(declare-fun b!580845 () Bool)

(declare-fun e!350973 () Bool)

(assert (=> b!580845 (= e!350973 (and (inv!7171 (left!4647 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574))))) tp!181403 (inv!7171 (right!4977 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574))))) tp!181404))))

(declare-fun b!580847 () Bool)

(declare-fun e!350974 () Bool)

(declare-fun tp!181405 () Bool)

(assert (=> b!580847 (= e!350974 tp!181405)))

(declare-fun b!580846 () Bool)

(assert (=> b!580846 (= e!350973 (and (inv!7177 (xs!4459 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574))))) e!350974))))

(assert (=> b!580031 (= tp!181281 (and (inv!7171 (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574)))) e!350973))))

(assert (= (and b!580031 ((_ is Node!1822) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574))))) b!580845))

(assert (= b!580846 b!580847))

(assert (= (and b!580031 ((_ is Leaf!2882) (c!108452 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574))))) b!580846))

(declare-fun m!839911 () Bool)

(assert (=> b!580845 m!839911))

(declare-fun m!839913 () Bool)

(assert (=> b!580845 m!839913))

(declare-fun m!839915 () Bool)

(assert (=> b!580846 m!839915))

(assert (=> b!580031 m!838763))

(declare-fun b_lambda!22833 () Bool)

(assert (= b_lambda!22755 (or (and b!579433 b_free!16119 (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (and b!579460 b_free!16123 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (and b!580076 b_free!16131 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (and b!580833 b_free!16135 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) b_lambda!22833)))

(declare-fun b_lambda!22835 () Bool)

(assert (= b_lambda!22811 (or (and b!579433 b_free!16117) (and b!579460 b_free!16121 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) (and b!580076 b_free!16129 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) (and b!580833 b_free!16133 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) b_lambda!22835)))

(declare-fun b_lambda!22837 () Bool)

(assert (= b_lambda!22759 (or (and b!579433 b_free!16119 (= (toChars!1827 (transformation!1105 (rule!1859 token!491))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (and b!579460 b_free!16123 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (and b!580076 b_free!16131 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (and b!580833 b_free!16135 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) b_lambda!22837)))

(declare-fun b_lambda!22839 () Bool)

(assert (= b_lambda!22761 (or (and b!579433 b_free!16117 (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (and b!579460 b_free!16121 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (and b!580076 b_free!16129 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (and b!580833 b_free!16133 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) b_lambda!22839)))

(declare-fun b_lambda!22841 () Bool)

(assert (= b_lambda!22823 (or (and b!579433 b_free!16117) (and b!579460 b_free!16121 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) (and b!580076 b_free!16129 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) (and b!580833 b_free!16133 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) b_lambda!22841)))

(declare-fun b_lambda!22843 () Bool)

(assert (= b_lambda!22799 (or d!203686 b_lambda!22843)))

(declare-fun bs!69746 () Bool)

(declare-fun d!204348 () Bool)

(assert (= bs!69746 (and d!204348 d!203686)))

(assert (=> bs!69746 (= (dynLambda!3320 lambda!15765 lt!245610) (= (list!2367 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))) lt!245610))) (list!2367 lt!245610)))))

(declare-fun b_lambda!22853 () Bool)

(assert (=> (not b_lambda!22853) (not bs!69746)))

(assert (=> bs!69746 t!77847))

(declare-fun b_and!57099 () Bool)

(assert (= b_and!57077 (and (=> t!77847 result!56750) b_and!57099)))

(assert (=> bs!69746 t!77849))

(declare-fun b_and!57101 () Bool)

(assert (= b_and!57079 (and (=> t!77849 result!56754) b_and!57101)))

(assert (=> bs!69746 t!77892))

(declare-fun b_and!57103 () Bool)

(assert (= b_and!57081 (and (=> t!77892 result!56808) b_and!57103)))

(assert (=> bs!69746 t!78030))

(declare-fun b_and!57105 () Bool)

(assert (= b_and!57097 (and (=> t!78030 result!56948) b_and!57105)))

(declare-fun b_lambda!22855 () Bool)

(assert (=> (not b_lambda!22855) (not bs!69746)))

(assert (=> bs!69746 t!77851))

(declare-fun b_and!57107 () Bool)

(assert (= b_and!57065 (and (=> t!77851 result!56756) b_and!57107)))

(assert (=> bs!69746 t!77853))

(declare-fun b_and!57109 () Bool)

(assert (= b_and!57067 (and (=> t!77853 result!56760) b_and!57109)))

(assert (=> bs!69746 t!77884))

(declare-fun b_and!57111 () Bool)

(assert (= b_and!57069 (and (=> t!77884 result!56800) b_and!57111)))

(assert (=> bs!69746 t!78004))

(declare-fun b_and!57113 () Bool)

(assert (= b_and!57095 (and (=> t!78004 result!56922) b_and!57113)))

(assert (=> bs!69746 m!838391))

(assert (=> bs!69746 m!838397))

(assert (=> bs!69746 m!838393))

(assert (=> bs!69746 m!838391))

(assert (=> bs!69746 m!838397))

(assert (=> bs!69746 m!838399))

(assert (=> d!203942 d!204348))

(declare-fun b_lambda!22845 () Bool)

(assert (= b_lambda!22813 (or (and b!579433 b_free!16119) (and b!579460 b_free!16123 (= (toChars!1827 (transformation!1105 (h!11093 rules!3103))) (toChars!1827 (transformation!1105 (rule!1859 token!491))))) (and b!580076 b_free!16131 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toChars!1827 (transformation!1105 (rule!1859 token!491))))) (and b!580833 b_free!16135 (= (toChars!1827 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toChars!1827 (transformation!1105 (rule!1859 token!491))))) b_lambda!22845)))

(declare-fun b_lambda!22847 () Bool)

(assert (= b_lambda!22817 (or d!203878 b_lambda!22847)))

(declare-fun bs!69747 () Bool)

(declare-fun d!204350 () Bool)

(assert (= bs!69747 (and d!204350 d!203878)))

(assert (=> bs!69747 (= (dynLambda!3320 lambda!15766 lt!245574) (= (list!2367 (dynLambda!3318 (toChars!1827 (transformation!1105 (rule!1859 token!491))) (dynLambda!3319 (toValue!1968 (transformation!1105 (rule!1859 token!491))) lt!245574))) (list!2367 lt!245574)))))

(declare-fun b_lambda!22857 () Bool)

(assert (=> (not b_lambda!22857) (not bs!69747)))

(assert (=> bs!69747 t!77880))

(declare-fun b_and!57115 () Bool)

(assert (= b_and!57099 (and (=> t!77880 result!56792) b_and!57115)))

(assert (=> bs!69747 t!77882))

(declare-fun b_and!57117 () Bool)

(assert (= b_and!57101 (and (=> t!77882 result!56794) b_and!57117)))

(assert (=> bs!69747 t!77890))

(declare-fun b_and!57119 () Bool)

(assert (= b_and!57103 (and (=> t!77890 result!56806) b_and!57119)))

(assert (=> bs!69747 t!78016))

(declare-fun b_and!57121 () Bool)

(assert (= b_and!57105 (and (=> t!78016 result!56934) b_and!57121)))

(declare-fun b_lambda!22859 () Bool)

(assert (=> (not b_lambda!22859) (not bs!69747)))

(assert (=> bs!69747 t!77876))

(declare-fun b_and!57123 () Bool)

(assert (= b_and!57107 (and (=> t!77876 result!56788) b_and!57123)))

(assert (=> bs!69747 t!77878))

(declare-fun b_and!57125 () Bool)

(assert (= b_and!57109 (and (=> t!77878 result!56790) b_and!57125)))

(assert (=> bs!69747 t!77886))

(declare-fun b_and!57127 () Bool)

(assert (= b_and!57111 (and (=> t!77886 result!56802) b_and!57127)))

(assert (=> bs!69747 t!78000))

(declare-fun b_and!57129 () Bool)

(assert (= b_and!57113 (and (=> t!78000 result!56918) b_and!57129)))

(assert (=> bs!69747 m!838721))

(assert (=> bs!69747 m!838771))

(assert (=> bs!69747 m!838767))

(assert (=> bs!69747 m!838721))

(assert (=> bs!69747 m!838771))

(assert (=> bs!69747 m!838773))

(assert (=> d!204070 d!204350))

(declare-fun b_lambda!22849 () Bool)

(assert (= b_lambda!22815 (or (and b!579433 b_free!16117) (and b!579460 b_free!16121 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) (and b!580076 b_free!16129 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) (and b!580833 b_free!16133 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toValue!1968 (transformation!1105 (rule!1859 token!491))))) b_lambda!22849)))

(declare-fun b_lambda!22851 () Bool)

(assert (= b_lambda!22757 (or (and b!579433 b_free!16117 (= (toValue!1968 (transformation!1105 (rule!1859 token!491))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (and b!579460 b_free!16121 (= (toValue!1968 (transformation!1105 (h!11093 rules!3103))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (and b!580076 b_free!16129 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 rules!3103)))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) (and b!580833 b_free!16133 (= (toValue!1968 (transformation!1105 (h!11093 (t!77821 (t!77821 rules!3103))))) (toValue!1968 (transformation!1105 (rule!1859 (_1!3600 (v!16320 lt!245592))))))) b_lambda!22851)))

(check-sat (not b!580519) tp_is_empty!3233 (not b!580332) (not b!580689) (not b!580201) (not b!580112) (not b!580495) (not b!580396) (not bm!40036) (not bm!40050) (not d!204066) (not b!580263) (not b!580443) (not bm!40039) (not b!580157) (not b!580840) (not b_lambda!22833) (not d!204278) (not b_next!16135) (not b!580778) (not tb!50761) (not b!580753) (not d!204330) (not d!204122) (not bm!40038) (not b!580528) (not d!204138) (not b!580294) (not b!580525) (not b!580242) b_and!57129 (not b!580752) (not b!580233) (not d!204168) (not b!580611) (not b!580609) (not b!580829) (not b!580516) (not b!580273) (not b!580615) (not b!580114) (not b!580193) (not b!580521) (not b!580111) (not b!580474) (not b_lambda!22801) (not d!203942) (not b!580116) (not b!580843) (not d!204192) (not b!580423) (not b!580367) (not d!204028) (not d!204260) (not tb!50773) (not d!203958) (not bm!40103) (not bm!40020) (not b!580441) (not d!204242) (not b!580801) (not d!203912) (not b!580794) (not d!204112) (not b!580715) (not bm!40099) (not tb!50821) (not b!580766) (not d!204070) (not d!204006) (not d!204238) (not b!580171) (not b!580847) (not bm!40059) (not b!580465) (not b!580844) (not d!204294) (not b!580710) (not b!580340) (not d!204068) (not d!204254) (not b_lambda!22839) (not b_lambda!22821) (not d!203966) (not b!580686) (not b!580779) (not b!580469) (not d!203922) (not b!580267) (not d!203992) (not b!580786) (not b_lambda!22827) (not b!580681) (not d!203964) (not b!580120) (not b!580819) (not bm!40094) (not b_lambda!22803) (not b!580362) (not b!580451) (not b!580232) (not b!580546) (not b_lambda!22809) (not b!580834) (not d!204246) (not b!580490) (not d!204150) (not b!580811) (not d!204202) (not d!204162) (not b!580095) (not b!580785) (not b!580108) (not d!204292) (not b!580237) (not b!580320) (not b!580310) (not b!580839) (not b!580806) (not b!580496) (not b_next!16145) (not d!204088) (not b!580262) (not bm!40017) (not b!580775) (not b!580782) (not b!580421) (not b!580787) (not b!580550) (not b!580417) (not b!580228) (not d!204142) (not b!580522) (not b!580665) (not bm!40034) (not b_lambda!22855) (not b!580468) (not b!580805) (not b!580507) (not d!203952) (not b!580842) (not b!580841) (not b!580342) (not b!580744) (not b!580555) (not bm!40019) (not b_lambda!22857) (not b!580227) (not b!580559) (not b!580198) (not b!580809) (not d!203962) (not b!580706) (not d!204206) (not b!580845) (not d!204258) (not b!580427) (not b_lambda!22851) (not d!204038) (not d!204074) (not d!204072) (not d!204046) (not tb!50803) (not b!580836) (not b!580573) (not b_lambda!22853) (not b!580702) (not b!579883) (not b!580176) (not b_lambda!22783) (not b!580400) (not b!580832) (not b!580240) (not b!580549) (not b!580517) (not b!580315) (not b!580727) (not b!580333) (not b!580735) (not b!580553) (not b!580763) (not b_lambda!22859) (not bm!40041) (not b!580442) (not b_lambda!22825) (not tb!50809) (not d!204326) (not b!580326) (not b_lambda!22797) (not b!580737) (not b!580098) (not bm!40037) (not b!580238) (not b!580815) (not d!204198) (not b!580817) (not d!203994) b_and!57121 (not b!580530) (not b!580031) (not d!204274) (not d!204186) (not bm!40098) (not b!580542) (not d!204322) (not b!580720) (not b!580487) (not b!580424) (not b!580163) (not d!204276) (not b!580272) (not b!580102) (not b!580158) (not b!580243) (not b!580777) (not b_lambda!22819) (not d!203928) (not b!580513) (not tb!50743) (not b!580523) (not bm!40014) (not d!204152) (not d!204174) (not d!204172) (not d!204284) (not b!580265) (not b_lambda!22795) (not b_lambda!22805) b_and!57123 (not b!580089) (not d!204014) (not b!580504) (not d!203924) (not bm!40058) (not b!580124) (not d!204184) (not b!580100) (not d!204004) b_and!57127 (not tb!50815) (not b!580269) (not b!580540) (not d!204036) (not b!580830) (not b!580464) (not b!580712) (not b!580452) (not d!204134) (not b!580810) (not tb!50797) (not b!580492) (not b!580236) (not b!580192) (not b!580749) (not b!580835) (not b!580092) (not bm!40057) (not b!580418) (not b!580327) (not b!580103) (not d!203986) (not d!204182) (not bs!69747) (not b!579743) (not b!580161) (not b!580122) (not b!580508) (not b!580304) (not b!580270) (not bm!40035) (not d!204000) (not b!580515) (not b!580485) (not b!580520) (not tb!50755) (not b!580742) (not d!204230) (not b!580398) (not d!204308) (not b!580246) (not b!580407) (not d!203954) (not b!580579) (not b!580538) (not d!203972) (not b!580680) (not b_lambda!22835) (not b!580548) (not b!580119) (not bm!40055) (not d!204056) (not d!204240) (not b!580569) (not d!204002) (not b!580486) (not b!580366) (not b!580409) (not b!580747) (not b!580467) (not b!580722) (not b!580731) (not b!580173) (not b!580828) (not b!580544) (not b!580230) (not d!203934) (not b!580705) (not d!204214) (not b!580285) (not d!204158) (not b!580783) (not bm!40104) (not b_lambda!22843) (not b!580096) (not b_lambda!22787) (not b_lambda!22789) (not d!204160) (not bm!40095) (not b!580526) (not b!580200) (not b!580567) (not b!580202) (not d!204200) (not d!204144) (not d!204084) (not b!580428) (not bs!69746) (not b!580605) (not b!580312) (not b!580419) (not b!580168) (not b!580558) (not d!203944) (not bm!40015) (not tb!50749) (not bm!40077) (not b!580363) (not b_lambda!22841) (not b!580472) (not b!580229) (not b_next!16149) (not b!580729) (not b!580606) (not d!204102) (not b!580334) (not b!580813) (not b!580475) (not d!203938) (not d!204212) (not b!579976) (not b!580797) (not bm!40100) (not d!204108) (not b!580473) (not bm!40053) (not b!580360) b_and!57117 (not b!580707) (not b!580532) (not b!580846) (not b_lambda!22849) (not b!580268) (not b!580505) (not b!580512) (not b!580690) (not bm!40016) (not b!580716) (not b!580563) (not b_next!16147) (not bm!40040) (not d!204228) (not b!580814) (not bm!40060) (not d!204204) (not b!580401) (not b!580118) (not b!580795) (not b!580728) (not b!580105) (not b!580394) (not b!580470) (not b!580321) (not b!580539) (not bm!40054) (not bm!40052) (not d!203932) (not b!580341) (not b_lambda!22793) (not d!203940) (not b!580291) (not b!580781) (not b!580818) (not b!580266) (not b_next!16151) (not bm!40049) (not b!580536) (not d!203920) (not b!580296) (not b_lambda!22791) (not tb!50779) (not b!580314) (not b!580803) (not tb!50767) (not d!204244) (not d!204208) (not b_lambda!22837) (not b!580446) b_and!57115 (not b!580328) (not tb!50785) (not b!580564) b_and!57125 (not b!580793) (not b_next!16137) (not b!580831) (not b!580572) (not b!580194) (not b!580231) (not b!580462) (not b!580807) (not b!580234) (not d!204232) (not b_lambda!22847) (not d!204262) (not b!580510) (not b_next!16133) (not b!580837) (not b!580091) (not d!204064) (not tb!50791) (not d!204010) (not b!580802) (not b!580415) (not b!580290) (not b_lambda!22807) (not d!204196) (not b!580740) (not b!580476) (not d!203930) (not b_lambda!22845) (not bm!40018) (not b_next!16139) (not b!580614) (not b!580264) (not b!580743) (not b!580123) (not d!204324) (not b!580534) (not d!203970) (not b!580684) b_and!57119 (not d!204210) (not bm!40013) (not b!580543) (not d!204050) (not b!580448) (not d!204164) (not b_lambda!22785) (not b!580770) (not b!580440) (not b!580798) (not b!580799))
(check-sat (not b_next!16135) b_and!57129 (not b_next!16145) b_and!57121 (not b_next!16149) b_and!57117 (not b_next!16147) (not b_next!16151) (not b_next!16139) b_and!57119 b_and!57123 b_and!57127 b_and!57115 b_and!57125 (not b_next!16137) (not b_next!16133))
