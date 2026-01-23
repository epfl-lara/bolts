; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!56478 () Bool)

(assert start!56478)

(declare-fun b!597563 () Bool)

(declare-fun b_free!16965 () Bool)

(declare-fun b_next!16981 () Bool)

(assert (=> b!597563 (= b_free!16965 (not b_next!16981))))

(declare-fun tp!186336 () Bool)

(declare-fun b_and!58987 () Bool)

(assert (=> b!597563 (= tp!186336 b_and!58987)))

(declare-fun b_free!16967 () Bool)

(declare-fun b_next!16983 () Bool)

(assert (=> b!597563 (= b_free!16967 (not b_next!16983))))

(declare-fun tp!186335 () Bool)

(declare-fun b_and!58989 () Bool)

(assert (=> b!597563 (= tp!186335 b_and!58989)))

(declare-fun b!597558 () Bool)

(declare-fun b_free!16969 () Bool)

(declare-fun b_next!16985 () Bool)

(assert (=> b!597558 (= b_free!16969 (not b_next!16985))))

(declare-fun tp!186339 () Bool)

(declare-fun b_and!58991 () Bool)

(assert (=> b!597558 (= tp!186339 b_and!58991)))

(declare-fun b_free!16971 () Bool)

(declare-fun b_next!16987 () Bool)

(assert (=> b!597558 (= b_free!16971 (not b_next!16987))))

(declare-fun tp!186342 () Bool)

(declare-fun b_and!58993 () Bool)

(assert (=> b!597558 (= tp!186342 b_and!58993)))

(declare-fun b!597548 () Bool)

(declare-fun res!258177 () Bool)

(declare-fun e!361893 () Bool)

(assert (=> b!597548 (=> (not res!258177) (not e!361893))))

(declare-datatypes ((C!3958 0))(
  ( (C!3959 (val!2205 Int)) )
))
(declare-datatypes ((List!5977 0))(
  ( (Nil!5967) (Cons!5967 (h!11368 C!3958) (t!79558 List!5977)) )
))
(declare-fun input!2705 () List!5977)

(declare-fun isEmpty!4307 (List!5977) Bool)

(assert (=> b!597548 (= res!258177 (not (isEmpty!4307 input!2705)))))

(declare-fun b!597549 () Bool)

(declare-fun res!258180 () Bool)

(declare-fun e!361879 () Bool)

(assert (=> b!597549 (=> (not res!258180) (not e!361879))))

(declare-datatypes ((Regex!1518 0))(
  ( (ElementMatch!1518 (c!111071 C!3958)) (Concat!2726 (regOne!3548 Regex!1518) (regTwo!3548 Regex!1518)) (EmptyExpr!1518) (Star!1518 (reg!1847 Regex!1518)) (EmptyLang!1518) (Union!1518 (regOne!3549 Regex!1518) (regTwo!3549 Regex!1518)) )
))
(declare-datatypes ((IArray!3803 0))(
  ( (IArray!3804 (innerList!1959 List!5977)) )
))
(declare-datatypes ((Conc!1901 0))(
  ( (Node!1901 (left!4806 Conc!1901) (right!5136 Conc!1901) (csize!4032 Int) (cheight!2112 Int)) (Leaf!3001 (xs!4538 IArray!3803) (csize!4033 Int)) (Empty!1901) )
))
(declare-datatypes ((BalanceConc!3810 0))(
  ( (BalanceConc!3811 (c!111072 Conc!1901)) )
))
(declare-datatypes ((List!5978 0))(
  ( (Nil!5968) (Cons!5968 (h!11369 (_ BitVec 16)) (t!79559 List!5978)) )
))
(declare-datatypes ((TokenValue!1208 0))(
  ( (FloatLiteralValue!2416 (text!8901 List!5978)) (TokenValueExt!1207 (__x!4314 Int)) (Broken!6040 (value!38586 List!5978)) (Object!1217) (End!1208) (Def!1208) (Underscore!1208) (Match!1208) (Else!1208) (Error!1208) (Case!1208) (If!1208) (Extends!1208) (Abstract!1208) (Class!1208) (Val!1208) (DelimiterValue!2416 (del!1268 List!5978)) (KeywordValue!1214 (value!38587 List!5978)) (CommentValue!2416 (value!38588 List!5978)) (WhitespaceValue!2416 (value!38589 List!5978)) (IndentationValue!1208 (value!38590 List!5978)) (String!7785) (Int32!1208) (Broken!6041 (value!38591 List!5978)) (Boolean!1209) (Unit!10855) (OperatorValue!1211 (op!1268 List!5978)) (IdentifierValue!2416 (value!38592 List!5978)) (IdentifierValue!2417 (value!38593 List!5978)) (WhitespaceValue!2417 (value!38594 List!5978)) (True!2416) (False!2416) (Broken!6042 (value!38595 List!5978)) (Broken!6043 (value!38596 List!5978)) (True!2417) (RightBrace!1208) (RightBracket!1208) (Colon!1208) (Null!1208) (Comma!1208) (LeftBracket!1208) (False!2417) (LeftBrace!1208) (ImaginaryLiteralValue!1208 (text!8902 List!5978)) (StringLiteralValue!3624 (value!38597 List!5978)) (EOFValue!1208 (value!38598 List!5978)) (IdentValue!1208 (value!38599 List!5978)) (DelimiterValue!2417 (value!38600 List!5978)) (DedentValue!1208 (value!38601 List!5978)) (NewLineValue!1208 (value!38602 List!5978)) (IntegerValue!3624 (value!38603 (_ BitVec 32)) (text!8903 List!5978)) (IntegerValue!3625 (value!38604 Int) (text!8904 List!5978)) (Times!1208) (Or!1208) (Equal!1208) (Minus!1208) (Broken!6044 (value!38605 List!5978)) (And!1208) (Div!1208) (LessEqual!1208) (Mod!1208) (Concat!2727) (Not!1208) (Plus!1208) (SpaceValue!1208 (value!38606 List!5978)) (IntegerValue!3626 (value!38607 Int) (text!8905 List!5978)) (StringLiteralValue!3625 (text!8906 List!5978)) (FloatLiteralValue!2417 (text!8907 List!5978)) (BytesLiteralValue!1208 (value!38608 List!5978)) (CommentValue!2417 (value!38609 List!5978)) (StringLiteralValue!3626 (value!38610 List!5978)) (ErrorTokenValue!1208 (msg!1269 List!5978)) )
))
(declare-datatypes ((String!7786 0))(
  ( (String!7787 (value!38611 String)) )
))
(declare-datatypes ((TokenValueInjection!2184 0))(
  ( (TokenValueInjection!2185 (toValue!2075 Int) (toChars!1934 Int)) )
))
(declare-datatypes ((Rule!2168 0))(
  ( (Rule!2169 (regex!1184 Regex!1518) (tag!1446 String!7786) (isSeparator!1184 Bool) (transformation!1184 TokenValueInjection!2184)) )
))
(declare-datatypes ((Token!2104 0))(
  ( (Token!2105 (value!38612 TokenValue!1208) (rule!1954 Rule!2168) (size!4702 Int) (originalCharacters!1223 List!5977)) )
))
(declare-datatypes ((tuple2!6862 0))(
  ( (tuple2!6863 (_1!3695 Token!2104) (_2!3695 List!5977)) )
))
(declare-datatypes ((Option!1535 0))(
  ( (None!1534) (Some!1534 (v!16421 tuple2!6862)) )
))
(declare-fun lt!254330 () Option!1535)

(declare-fun size!4703 (List!5977) Int)

(assert (=> b!597549 (= res!258180 (= (size!4702 (_1!3695 (v!16421 lt!254330))) (size!4703 (originalCharacters!1223 (_1!3695 (v!16421 lt!254330))))))))

(declare-fun e!361890 () Bool)

(declare-fun tp!186341 () Bool)

(declare-fun e!361881 () Bool)

(declare-fun b!597550 () Bool)

(declare-fun token!491 () Token!2104)

(declare-fun inv!7561 (String!7786) Bool)

(declare-fun inv!7564 (TokenValueInjection!2184) Bool)

(assert (=> b!597550 (= e!361890 (and tp!186341 (inv!7561 (tag!1446 (rule!1954 token!491))) (inv!7564 (transformation!1184 (rule!1954 token!491))) e!361881))))

(declare-fun b!597551 () Bool)

(declare-fun e!361882 () Bool)

(declare-fun e!361894 () Bool)

(assert (=> b!597551 (= e!361882 (not e!361894))))

(declare-fun res!258183 () Bool)

(assert (=> b!597551 (=> res!258183 e!361894)))

(declare-fun lt!254352 () List!5977)

(declare-fun isPrefix!812 (List!5977 List!5977) Bool)

(assert (=> b!597551 (= res!258183 (not (isPrefix!812 input!2705 lt!254352)))))

(declare-fun lt!254334 () List!5977)

(assert (=> b!597551 (isPrefix!812 lt!254334 lt!254352)))

(declare-datatypes ((Unit!10856 0))(
  ( (Unit!10857) )
))
(declare-fun lt!254343 () Unit!10856)

(declare-fun suffix!1342 () List!5977)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!657 (List!5977 List!5977) Unit!10856)

(assert (=> b!597551 (= lt!254343 (lemmaConcatTwoListThenFirstIsPrefix!657 lt!254334 suffix!1342))))

(declare-fun lt!254340 () List!5977)

(assert (=> b!597551 (isPrefix!812 input!2705 lt!254340)))

(declare-fun lt!254351 () Unit!10856)

(assert (=> b!597551 (= lt!254351 (lemmaConcatTwoListThenFirstIsPrefix!657 input!2705 suffix!1342))))

(assert (=> b!597551 e!361879))

(declare-fun res!258181 () Bool)

(assert (=> b!597551 (=> (not res!258181) (not e!361879))))

(declare-fun lt!254346 () TokenValue!1208)

(assert (=> b!597551 (= res!258181 (= (value!38612 (_1!3695 (v!16421 lt!254330))) lt!254346))))

(declare-fun lt!254341 () List!5977)

(declare-fun apply!1437 (TokenValueInjection!2184 BalanceConc!3810) TokenValue!1208)

(declare-fun seqFromList!1360 (List!5977) BalanceConc!3810)

(assert (=> b!597551 (= lt!254346 (apply!1437 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330)))) (seqFromList!1360 lt!254341)))))

(declare-fun lt!254328 () Unit!10856)

(declare-fun lemmaInv!292 (TokenValueInjection!2184) Unit!10856)

(assert (=> b!597551 (= lt!254328 (lemmaInv!292 (transformation!1184 (rule!1954 token!491))))))

(declare-fun lt!254347 () Unit!10856)

(assert (=> b!597551 (= lt!254347 (lemmaInv!292 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330))))))))

(declare-datatypes ((LexerInterface!1070 0))(
  ( (LexerInterfaceExt!1067 (__x!4315 Int)) (Lexer!1068) )
))
(declare-fun thiss!22590 () LexerInterface!1070)

(declare-fun ruleValid!382 (LexerInterface!1070 Rule!2168) Bool)

(assert (=> b!597551 (ruleValid!382 thiss!22590 (rule!1954 token!491))))

(declare-fun lt!254344 () Unit!10856)

(declare-datatypes ((List!5979 0))(
  ( (Nil!5969) (Cons!5969 (h!11370 Rule!2168) (t!79560 List!5979)) )
))
(declare-fun rules!3103 () List!5979)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!229 (LexerInterface!1070 Rule!2168 List!5979) Unit!10856)

(assert (=> b!597551 (= lt!254344 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!229 thiss!22590 (rule!1954 token!491) rules!3103))))

(assert (=> b!597551 (ruleValid!382 thiss!22590 (rule!1954 (_1!3695 (v!16421 lt!254330))))))

(declare-fun lt!254329 () Unit!10856)

(assert (=> b!597551 (= lt!254329 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!229 thiss!22590 (rule!1954 (_1!3695 (v!16421 lt!254330))) rules!3103))))

(assert (=> b!597551 (isPrefix!812 input!2705 input!2705)))

(declare-fun lt!254350 () Unit!10856)

(declare-fun lemmaIsPrefixRefl!548 (List!5977 List!5977) Unit!10856)

(assert (=> b!597551 (= lt!254350 (lemmaIsPrefixRefl!548 input!2705 input!2705))))

(declare-fun lt!254332 () List!5977)

(assert (=> b!597551 (= (_2!3695 (v!16421 lt!254330)) lt!254332)))

(declare-fun lt!254333 () Unit!10856)

(declare-fun lemmaSamePrefixThenSameSuffix!525 (List!5977 List!5977 List!5977 List!5977 List!5977) Unit!10856)

(assert (=> b!597551 (= lt!254333 (lemmaSamePrefixThenSameSuffix!525 lt!254341 (_2!3695 (v!16421 lt!254330)) lt!254341 lt!254332 input!2705))))

(declare-fun getSuffix!329 (List!5977 List!5977) List!5977)

(assert (=> b!597551 (= lt!254332 (getSuffix!329 input!2705 lt!254341))))

(declare-fun ++!1672 (List!5977 List!5977) List!5977)

(assert (=> b!597551 (isPrefix!812 lt!254341 (++!1672 lt!254341 (_2!3695 (v!16421 lt!254330))))))

(declare-fun lt!254349 () Unit!10856)

(assert (=> b!597551 (= lt!254349 (lemmaConcatTwoListThenFirstIsPrefix!657 lt!254341 (_2!3695 (v!16421 lt!254330))))))

(declare-fun lt!254337 () Unit!10856)

(declare-fun lemmaCharactersSize!243 (Token!2104) Unit!10856)

(assert (=> b!597551 (= lt!254337 (lemmaCharactersSize!243 token!491))))

(declare-fun lt!254339 () Unit!10856)

(assert (=> b!597551 (= lt!254339 (lemmaCharactersSize!243 (_1!3695 (v!16421 lt!254330))))))

(declare-fun lt!254331 () Unit!10856)

(declare-fun e!361876 () Unit!10856)

(assert (=> b!597551 (= lt!254331 e!361876)))

(declare-fun c!111070 () Bool)

(declare-fun lt!254335 () Int)

(declare-fun lt!254348 () Int)

(assert (=> b!597551 (= c!111070 (> lt!254335 lt!254348))))

(assert (=> b!597551 (= lt!254348 (size!4703 lt!254334))))

(assert (=> b!597551 (= lt!254335 (size!4703 lt!254341))))

(declare-fun list!2499 (BalanceConc!3810) List!5977)

(declare-fun charsOf!813 (Token!2104) BalanceConc!3810)

(assert (=> b!597551 (= lt!254341 (list!2499 (charsOf!813 (_1!3695 (v!16421 lt!254330)))))))

(assert (=> b!597551 (= lt!254330 (Some!1534 (v!16421 lt!254330)))))

(declare-fun lt!254353 () Unit!10856)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!257 (List!5977 List!5977 List!5977 List!5977) Unit!10856)

(assert (=> b!597551 (= lt!254353 (lemmaConcatSameAndSameSizesThenSameLists!257 lt!254334 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!597552 () Bool)

(declare-fun Unit!10858 () Unit!10856)

(assert (=> b!597552 (= e!361876 Unit!10858)))

(assert (=> b!597552 false))

(declare-fun b!597553 () Bool)

(declare-fun e!361886 () Bool)

(declare-fun e!361880 () Bool)

(assert (=> b!597553 (= e!361886 e!361880)))

(declare-fun res!258182 () Bool)

(assert (=> b!597553 (=> (not res!258182) (not e!361880))))

(declare-fun lt!254327 () Option!1535)

(declare-fun isDefined!1346 (Option!1535) Bool)

(assert (=> b!597553 (= res!258182 (isDefined!1346 lt!254327))))

(declare-fun maxPrefix!768 (LexerInterface!1070 List!5979 List!5977) Option!1535)

(assert (=> b!597553 (= lt!254327 (maxPrefix!768 thiss!22590 rules!3103 lt!254340))))

(assert (=> b!597553 (= lt!254340 (++!1672 input!2705 suffix!1342))))

(declare-fun b!597554 () Bool)

(declare-fun e!361883 () Bool)

(assert (=> b!597554 (= e!361880 e!361883)))

(declare-fun res!258179 () Bool)

(assert (=> b!597554 (=> (not res!258179) (not e!361883))))

(declare-fun lt!254345 () tuple2!6862)

(assert (=> b!597554 (= res!258179 (and (= (_1!3695 lt!254345) token!491) (= (_2!3695 lt!254345) suffix!1342)))))

(declare-fun get!2291 (Option!1535) tuple2!6862)

(assert (=> b!597554 (= lt!254345 (get!2291 lt!254327))))

(declare-fun res!258174 () Bool)

(assert (=> start!56478 (=> (not res!258174) (not e!361893))))

(assert (=> start!56478 (= res!258174 (is-Lexer!1068 thiss!22590))))

(assert (=> start!56478 e!361893))

(declare-fun e!361885 () Bool)

(assert (=> start!56478 e!361885))

(declare-fun e!361887 () Bool)

(assert (=> start!56478 e!361887))

(declare-fun e!361891 () Bool)

(declare-fun inv!7565 (Token!2104) Bool)

(assert (=> start!56478 (and (inv!7565 token!491) e!361891)))

(assert (=> start!56478 true))

(declare-fun e!361877 () Bool)

(assert (=> start!56478 e!361877))

(declare-fun b!597555 () Bool)

(declare-fun res!258175 () Bool)

(assert (=> b!597555 (=> (not res!258175) (not e!361893))))

(declare-fun rulesInvariant!1033 (LexerInterface!1070 List!5979) Bool)

(assert (=> b!597555 (= res!258175 (rulesInvariant!1033 thiss!22590 rules!3103))))

(declare-fun b!597556 () Bool)

(declare-fun e!361875 () Bool)

(declare-fun tp!186337 () Bool)

(assert (=> b!597556 (= e!361887 (and e!361875 tp!186337))))

(declare-fun b!597557 () Bool)

(declare-fun e!361889 () Bool)

(assert (=> b!597557 (= e!361889 e!361882)))

(declare-fun res!258173 () Bool)

(assert (=> b!597557 (=> (not res!258173) (not e!361882))))

(assert (=> b!597557 (= res!258173 (= lt!254352 lt!254340))))

(assert (=> b!597557 (= lt!254352 (++!1672 lt!254334 suffix!1342))))

(assert (=> b!597558 (= e!361881 (and tp!186339 tp!186342))))

(declare-fun lt!254336 () TokenValue!1208)

(declare-fun e!361878 () Bool)

(declare-fun b!597559 () Bool)

(declare-fun lt!254338 () List!5977)

(assert (=> b!597559 (= e!361878 (and (= (size!4702 token!491) lt!254348) (= (originalCharacters!1223 token!491) lt!254334) (= (tuple2!6863 token!491 suffix!1342) (tuple2!6863 (Token!2105 lt!254336 (rule!1954 token!491) lt!254348 lt!254334) lt!254338))))))

(declare-fun b!597560 () Bool)

(assert (=> b!597560 (= e!361893 e!361886)))

(declare-fun res!258172 () Bool)

(assert (=> b!597560 (=> (not res!258172) (not e!361886))))

(assert (=> b!597560 (= res!258172 (= lt!254334 input!2705))))

(assert (=> b!597560 (= lt!254334 (list!2499 (charsOf!813 token!491)))))

(declare-fun b!597561 () Bool)

(declare-fun tp_is_empty!3391 () Bool)

(declare-fun tp!186338 () Bool)

(assert (=> b!597561 (= e!361877 (and tp_is_empty!3391 tp!186338))))

(declare-fun b!597562 () Bool)

(declare-fun contains!1394 (List!5979 Rule!2168) Bool)

(assert (=> b!597562 (= e!361894 (contains!1394 rules!3103 (rule!1954 (_1!3695 (v!16421 lt!254330)))))))

(assert (=> b!597562 e!361878))

(declare-fun res!258176 () Bool)

(assert (=> b!597562 (=> (not res!258176) (not e!361878))))

(assert (=> b!597562 (= res!258176 (= (value!38612 token!491) lt!254336))))

(assert (=> b!597562 (= lt!254336 (apply!1437 (transformation!1184 (rule!1954 token!491)) (seqFromList!1360 lt!254334)))))

(assert (=> b!597562 (= suffix!1342 lt!254338)))

(declare-fun lt!254342 () Unit!10856)

(assert (=> b!597562 (= lt!254342 (lemmaSamePrefixThenSameSuffix!525 lt!254334 suffix!1342 lt!254334 lt!254338 lt!254340))))

(assert (=> b!597562 (= lt!254338 (getSuffix!329 lt!254340 lt!254334))))

(declare-fun e!361884 () Bool)

(assert (=> b!597563 (= e!361884 (and tp!186336 tp!186335))))

(declare-fun b!597564 () Bool)

(assert (=> b!597564 (= e!361879 (and (= (size!4702 (_1!3695 (v!16421 lt!254330))) lt!254335) (= (originalCharacters!1223 (_1!3695 (v!16421 lt!254330))) lt!254341) (= (v!16421 lt!254330) (tuple2!6863 (Token!2105 lt!254346 (rule!1954 (_1!3695 (v!16421 lt!254330))) lt!254335 lt!254341) lt!254332))))))

(declare-fun tp!186334 () Bool)

(declare-fun b!597565 () Bool)

(declare-fun inv!21 (TokenValue!1208) Bool)

(assert (=> b!597565 (= e!361891 (and (inv!21 (value!38612 token!491)) e!361890 tp!186334))))

(declare-fun b!597566 () Bool)

(declare-fun tp!186333 () Bool)

(assert (=> b!597566 (= e!361885 (and tp_is_empty!3391 tp!186333))))

(declare-fun tp!186340 () Bool)

(declare-fun b!597567 () Bool)

(assert (=> b!597567 (= e!361875 (and tp!186340 (inv!7561 (tag!1446 (h!11370 rules!3103))) (inv!7564 (transformation!1184 (h!11370 rules!3103))) e!361884))))

(declare-fun b!597568 () Bool)

(declare-fun res!258171 () Bool)

(assert (=> b!597568 (=> (not res!258171) (not e!361878))))

(assert (=> b!597568 (= res!258171 (= (size!4702 token!491) (size!4703 (originalCharacters!1223 token!491))))))

(declare-fun b!597569 () Bool)

(assert (=> b!597569 (= e!361883 e!361889)))

(declare-fun res!258178 () Bool)

(assert (=> b!597569 (=> (not res!258178) (not e!361889))))

(assert (=> b!597569 (= res!258178 (is-Some!1534 lt!254330))))

(assert (=> b!597569 (= lt!254330 (maxPrefix!768 thiss!22590 rules!3103 input!2705))))

(declare-fun b!597570 () Bool)

(declare-fun Unit!10859 () Unit!10856)

(assert (=> b!597570 (= e!361876 Unit!10859)))

(declare-fun b!597571 () Bool)

(declare-fun res!258184 () Bool)

(assert (=> b!597571 (=> (not res!258184) (not e!361893))))

(declare-fun isEmpty!4308 (List!5979) Bool)

(assert (=> b!597571 (= res!258184 (not (isEmpty!4308 rules!3103)))))

(assert (= (and start!56478 res!258174) b!597571))

(assert (= (and b!597571 res!258184) b!597555))

(assert (= (and b!597555 res!258175) b!597548))

(assert (= (and b!597548 res!258177) b!597560))

(assert (= (and b!597560 res!258172) b!597553))

(assert (= (and b!597553 res!258182) b!597554))

(assert (= (and b!597554 res!258179) b!597569))

(assert (= (and b!597569 res!258178) b!597557))

(assert (= (and b!597557 res!258173) b!597551))

(assert (= (and b!597551 c!111070) b!597552))

(assert (= (and b!597551 (not c!111070)) b!597570))

(assert (= (and b!597551 res!258181) b!597549))

(assert (= (and b!597549 res!258180) b!597564))

(assert (= (and b!597551 (not res!258183)) b!597562))

(assert (= (and b!597562 res!258176) b!597568))

(assert (= (and b!597568 res!258171) b!597559))

(assert (= (and start!56478 (is-Cons!5967 suffix!1342)) b!597566))

(assert (= b!597567 b!597563))

(assert (= b!597556 b!597567))

(assert (= (and start!56478 (is-Cons!5969 rules!3103)) b!597556))

(assert (= b!597550 b!597558))

(assert (= b!597565 b!597550))

(assert (= start!56478 b!597565))

(assert (= (and start!56478 (is-Cons!5967 input!2705)) b!597561))

(declare-fun m!860801 () Bool)

(assert (=> b!597548 m!860801))

(declare-fun m!860803 () Bool)

(assert (=> b!597557 m!860803))

(declare-fun m!860805 () Bool)

(assert (=> b!597549 m!860805))

(declare-fun m!860807 () Bool)

(assert (=> b!597560 m!860807))

(assert (=> b!597560 m!860807))

(declare-fun m!860809 () Bool)

(assert (=> b!597560 m!860809))

(declare-fun m!860811 () Bool)

(assert (=> b!597555 m!860811))

(declare-fun m!860813 () Bool)

(assert (=> b!597569 m!860813))

(declare-fun m!860815 () Bool)

(assert (=> b!597554 m!860815))

(declare-fun m!860817 () Bool)

(assert (=> b!597565 m!860817))

(declare-fun m!860819 () Bool)

(assert (=> b!597568 m!860819))

(declare-fun m!860821 () Bool)

(assert (=> b!597567 m!860821))

(declare-fun m!860823 () Bool)

(assert (=> b!597567 m!860823))

(declare-fun m!860825 () Bool)

(assert (=> b!597550 m!860825))

(declare-fun m!860827 () Bool)

(assert (=> b!597550 m!860827))

(declare-fun m!860829 () Bool)

(assert (=> b!597571 m!860829))

(declare-fun m!860831 () Bool)

(assert (=> b!597551 m!860831))

(declare-fun m!860833 () Bool)

(assert (=> b!597551 m!860833))

(declare-fun m!860835 () Bool)

(assert (=> b!597551 m!860835))

(declare-fun m!860837 () Bool)

(assert (=> b!597551 m!860837))

(declare-fun m!860839 () Bool)

(assert (=> b!597551 m!860839))

(declare-fun m!860841 () Bool)

(assert (=> b!597551 m!860841))

(assert (=> b!597551 m!860835))

(declare-fun m!860843 () Bool)

(assert (=> b!597551 m!860843))

(declare-fun m!860845 () Bool)

(assert (=> b!597551 m!860845))

(declare-fun m!860847 () Bool)

(assert (=> b!597551 m!860847))

(declare-fun m!860849 () Bool)

(assert (=> b!597551 m!860849))

(declare-fun m!860851 () Bool)

(assert (=> b!597551 m!860851))

(declare-fun m!860853 () Bool)

(assert (=> b!597551 m!860853))

(declare-fun m!860855 () Bool)

(assert (=> b!597551 m!860855))

(declare-fun m!860857 () Bool)

(assert (=> b!597551 m!860857))

(assert (=> b!597551 m!860837))

(declare-fun m!860859 () Bool)

(assert (=> b!597551 m!860859))

(declare-fun m!860861 () Bool)

(assert (=> b!597551 m!860861))

(declare-fun m!860863 () Bool)

(assert (=> b!597551 m!860863))

(declare-fun m!860865 () Bool)

(assert (=> b!597551 m!860865))

(declare-fun m!860867 () Bool)

(assert (=> b!597551 m!860867))

(declare-fun m!860869 () Bool)

(assert (=> b!597551 m!860869))

(declare-fun m!860871 () Bool)

(assert (=> b!597551 m!860871))

(declare-fun m!860873 () Bool)

(assert (=> b!597551 m!860873))

(assert (=> b!597551 m!860863))

(declare-fun m!860875 () Bool)

(assert (=> b!597551 m!860875))

(declare-fun m!860877 () Bool)

(assert (=> b!597551 m!860877))

(declare-fun m!860879 () Bool)

(assert (=> b!597551 m!860879))

(declare-fun m!860881 () Bool)

(assert (=> b!597551 m!860881))

(declare-fun m!860883 () Bool)

(assert (=> b!597551 m!860883))

(declare-fun m!860885 () Bool)

(assert (=> start!56478 m!860885))

(declare-fun m!860887 () Bool)

(assert (=> b!597562 m!860887))

(declare-fun m!860889 () Bool)

(assert (=> b!597562 m!860889))

(declare-fun m!860891 () Bool)

(assert (=> b!597562 m!860891))

(declare-fun m!860893 () Bool)

(assert (=> b!597562 m!860893))

(assert (=> b!597562 m!860893))

(declare-fun m!860895 () Bool)

(assert (=> b!597562 m!860895))

(declare-fun m!860897 () Bool)

(assert (=> b!597553 m!860897))

(declare-fun m!860899 () Bool)

(assert (=> b!597553 m!860899))

(declare-fun m!860901 () Bool)

(assert (=> b!597553 m!860901))

(push 1)

(assert (not b!597569))

(assert (not b!597566))

(assert (not b!597561))

(assert (not b!597568))

(assert (not b!597562))

(assert (not b!597567))

(assert (not b_next!16981))

(assert (not b!597549))

(assert (not b!597571))

(assert (not b!597548))

(assert (not b!597556))

(assert (not b!597554))

(assert (not b!597550))

(assert (not b_next!16983))

(assert tp_is_empty!3391)

(assert (not start!56478))

(assert b_and!58993)

(assert b_and!58991)

(assert (not b!597555))

(assert b_and!58989)

(assert (not b_next!16987))

(assert (not b!597553))

(assert b_and!58987)

(assert (not b_next!16985))

(assert (not b!597557))

(assert (not b!597551))

(assert (not b!597565))

(assert (not b!597560))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!16981))

(assert b_and!58989)

(assert (not b_next!16987))

(assert (not b_next!16983))

(assert b_and!58993)

(assert b_and!58991)

(assert b_and!58987)

(assert (not b_next!16985))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!209948 () Bool)

(assert (=> d!209948 (= (inv!7561 (tag!1446 (rule!1954 token!491))) (= (mod (str.len (value!38611 (tag!1446 (rule!1954 token!491)))) 2) 0))))

(assert (=> b!597550 d!209948))

(declare-fun d!209950 () Bool)

(declare-fun res!258233 () Bool)

(declare-fun e!361960 () Bool)

(assert (=> d!209950 (=> (not res!258233) (not e!361960))))

(declare-fun semiInverseModEq!468 (Int Int) Bool)

(assert (=> d!209950 (= res!258233 (semiInverseModEq!468 (toChars!1934 (transformation!1184 (rule!1954 token!491))) (toValue!2075 (transformation!1184 (rule!1954 token!491)))))))

(assert (=> d!209950 (= (inv!7564 (transformation!1184 (rule!1954 token!491))) e!361960)))

(declare-fun b!597646 () Bool)

(declare-fun equivClasses!451 (Int Int) Bool)

(assert (=> b!597646 (= e!361960 (equivClasses!451 (toChars!1934 (transformation!1184 (rule!1954 token!491))) (toValue!2075 (transformation!1184 (rule!1954 token!491)))))))

(assert (= (and d!209950 res!258233) b!597646))

(declare-fun m!861005 () Bool)

(assert (=> d!209950 m!861005))

(declare-fun m!861007 () Bool)

(assert (=> b!597646 m!861007))

(assert (=> b!597550 d!209950))

(declare-fun d!209952 () Bool)

(assert (=> d!209952 (= (isEmpty!4308 rules!3103) (is-Nil!5969 rules!3103))))

(assert (=> b!597571 d!209952))

(declare-fun d!209954 () Bool)

(declare-fun list!2501 (Conc!1901) List!5977)

(assert (=> d!209954 (= (list!2499 (charsOf!813 token!491)) (list!2501 (c!111072 (charsOf!813 token!491))))))

(declare-fun bs!70692 () Bool)

(assert (= bs!70692 d!209954))

(declare-fun m!861009 () Bool)

(assert (=> bs!70692 m!861009))

(assert (=> b!597560 d!209954))

(declare-fun d!209956 () Bool)

(declare-fun lt!254437 () BalanceConc!3810)

(assert (=> d!209956 (= (list!2499 lt!254437) (originalCharacters!1223 token!491))))

(declare-fun dynLambda!3445 (Int TokenValue!1208) BalanceConc!3810)

(assert (=> d!209956 (= lt!254437 (dynLambda!3445 (toChars!1934 (transformation!1184 (rule!1954 token!491))) (value!38612 token!491)))))

(assert (=> d!209956 (= (charsOf!813 token!491) lt!254437)))

(declare-fun b_lambda!23545 () Bool)

(assert (=> (not b_lambda!23545) (not d!209956)))

(declare-fun t!79565 () Bool)

(declare-fun tb!52119 () Bool)

(assert (=> (and b!597563 (= (toChars!1934 (transformation!1184 (h!11370 rules!3103))) (toChars!1934 (transformation!1184 (rule!1954 token!491)))) t!79565) tb!52119))

(declare-fun b!597651 () Bool)

(declare-fun e!361963 () Bool)

(declare-fun tp!186375 () Bool)

(declare-fun inv!7568 (Conc!1901) Bool)

(assert (=> b!597651 (= e!361963 (and (inv!7568 (c!111072 (dynLambda!3445 (toChars!1934 (transformation!1184 (rule!1954 token!491))) (value!38612 token!491)))) tp!186375))))

(declare-fun result!58582 () Bool)

(declare-fun inv!7569 (BalanceConc!3810) Bool)

(assert (=> tb!52119 (= result!58582 (and (inv!7569 (dynLambda!3445 (toChars!1934 (transformation!1184 (rule!1954 token!491))) (value!38612 token!491))) e!361963))))

(assert (= tb!52119 b!597651))

(declare-fun m!861011 () Bool)

(assert (=> b!597651 m!861011))

(declare-fun m!861013 () Bool)

(assert (=> tb!52119 m!861013))

(assert (=> d!209956 t!79565))

(declare-fun b_and!59003 () Bool)

(assert (= b_and!58989 (and (=> t!79565 result!58582) b_and!59003)))

(declare-fun t!79567 () Bool)

(declare-fun tb!52121 () Bool)

(assert (=> (and b!597558 (= (toChars!1934 (transformation!1184 (rule!1954 token!491))) (toChars!1934 (transformation!1184 (rule!1954 token!491)))) t!79567) tb!52121))

(declare-fun result!58586 () Bool)

(assert (= result!58586 result!58582))

(assert (=> d!209956 t!79567))

(declare-fun b_and!59005 () Bool)

(assert (= b_and!58993 (and (=> t!79567 result!58586) b_and!59005)))

(declare-fun m!861015 () Bool)

(assert (=> d!209956 m!861015))

(declare-fun m!861017 () Bool)

(assert (=> d!209956 m!861017))

(assert (=> b!597560 d!209956))

(declare-fun d!209958 () Bool)

(declare-fun lt!254440 () Int)

(assert (=> d!209958 (>= lt!254440 0)))

(declare-fun e!361966 () Int)

(assert (=> d!209958 (= lt!254440 e!361966)))

(declare-fun c!111081 () Bool)

(assert (=> d!209958 (= c!111081 (is-Nil!5967 (originalCharacters!1223 (_1!3695 (v!16421 lt!254330)))))))

(assert (=> d!209958 (= (size!4703 (originalCharacters!1223 (_1!3695 (v!16421 lt!254330)))) lt!254440)))

(declare-fun b!597656 () Bool)

(assert (=> b!597656 (= e!361966 0)))

(declare-fun b!597657 () Bool)

(assert (=> b!597657 (= e!361966 (+ 1 (size!4703 (t!79558 (originalCharacters!1223 (_1!3695 (v!16421 lt!254330)))))))))

(assert (= (and d!209958 c!111081) b!597656))

(assert (= (and d!209958 (not c!111081)) b!597657))

(declare-fun m!861019 () Bool)

(assert (=> b!597657 m!861019))

(assert (=> b!597549 d!209958))

(declare-fun d!209960 () Bool)

(assert (=> d!209960 (= (isEmpty!4307 input!2705) (is-Nil!5967 input!2705))))

(assert (=> b!597548 d!209960))

(declare-fun d!209962 () Bool)

(declare-fun isEmpty!4311 (Option!1535) Bool)

(assert (=> d!209962 (= (isDefined!1346 lt!254327) (not (isEmpty!4311 lt!254327)))))

(declare-fun bs!70693 () Bool)

(assert (= bs!70693 d!209962))

(declare-fun m!861021 () Bool)

(assert (=> bs!70693 m!861021))

(assert (=> b!597553 d!209962))

(declare-fun b!597682 () Bool)

(declare-fun res!258254 () Bool)

(declare-fun e!361977 () Bool)

(assert (=> b!597682 (=> (not res!258254) (not e!361977))))

(declare-fun lt!254454 () Option!1535)

(assert (=> b!597682 (= res!258254 (= (list!2499 (charsOf!813 (_1!3695 (get!2291 lt!254454)))) (originalCharacters!1223 (_1!3695 (get!2291 lt!254454)))))))

(declare-fun bm!40419 () Bool)

(declare-fun call!40424 () Option!1535)

(declare-fun maxPrefixOneRule!433 (LexerInterface!1070 Rule!2168 List!5977) Option!1535)

(assert (=> bm!40419 (= call!40424 (maxPrefixOneRule!433 thiss!22590 (h!11370 rules!3103) lt!254340))))

(declare-fun d!209964 () Bool)

(declare-fun e!361978 () Bool)

(assert (=> d!209964 e!361978))

(declare-fun res!258252 () Bool)

(assert (=> d!209964 (=> res!258252 e!361978)))

(assert (=> d!209964 (= res!258252 (isEmpty!4311 lt!254454))))

(declare-fun e!361976 () Option!1535)

(assert (=> d!209964 (= lt!254454 e!361976)))

(declare-fun c!111087 () Bool)

(assert (=> d!209964 (= c!111087 (and (is-Cons!5969 rules!3103) (is-Nil!5969 (t!79560 rules!3103))))))

(declare-fun lt!254457 () Unit!10856)

(declare-fun lt!254456 () Unit!10856)

(assert (=> d!209964 (= lt!254457 lt!254456)))

(assert (=> d!209964 (isPrefix!812 lt!254340 lt!254340)))

(assert (=> d!209964 (= lt!254456 (lemmaIsPrefixRefl!548 lt!254340 lt!254340))))

(declare-fun rulesValidInductive!437 (LexerInterface!1070 List!5979) Bool)

(assert (=> d!209964 (rulesValidInductive!437 thiss!22590 rules!3103)))

(assert (=> d!209964 (= (maxPrefix!768 thiss!22590 rules!3103 lt!254340) lt!254454)))

(declare-fun b!597683 () Bool)

(declare-fun res!258256 () Bool)

(assert (=> b!597683 (=> (not res!258256) (not e!361977))))

(declare-fun matchR!629 (Regex!1518 List!5977) Bool)

(assert (=> b!597683 (= res!258256 (matchR!629 (regex!1184 (rule!1954 (_1!3695 (get!2291 lt!254454)))) (list!2499 (charsOf!813 (_1!3695 (get!2291 lt!254454))))))))

(declare-fun b!597684 () Bool)

(declare-fun lt!254455 () Option!1535)

(declare-fun lt!254458 () Option!1535)

(assert (=> b!597684 (= e!361976 (ite (and (is-None!1534 lt!254455) (is-None!1534 lt!254458)) None!1534 (ite (is-None!1534 lt!254458) lt!254455 (ite (is-None!1534 lt!254455) lt!254458 (ite (>= (size!4702 (_1!3695 (v!16421 lt!254455))) (size!4702 (_1!3695 (v!16421 lt!254458)))) lt!254455 lt!254458)))))))

(assert (=> b!597684 (= lt!254455 call!40424)))

(assert (=> b!597684 (= lt!254458 (maxPrefix!768 thiss!22590 (t!79560 rules!3103) lt!254340))))

(declare-fun b!597685 () Bool)

(assert (=> b!597685 (= e!361977 (contains!1394 rules!3103 (rule!1954 (_1!3695 (get!2291 lt!254454)))))))

(declare-fun b!597686 () Bool)

(declare-fun res!258258 () Bool)

(assert (=> b!597686 (=> (not res!258258) (not e!361977))))

(assert (=> b!597686 (= res!258258 (= (++!1672 (list!2499 (charsOf!813 (_1!3695 (get!2291 lt!254454)))) (_2!3695 (get!2291 lt!254454))) lt!254340))))

(declare-fun b!597687 () Bool)

(declare-fun res!258255 () Bool)

(assert (=> b!597687 (=> (not res!258255) (not e!361977))))

(assert (=> b!597687 (= res!258255 (= (value!38612 (_1!3695 (get!2291 lt!254454))) (apply!1437 (transformation!1184 (rule!1954 (_1!3695 (get!2291 lt!254454)))) (seqFromList!1360 (originalCharacters!1223 (_1!3695 (get!2291 lt!254454)))))))))

(declare-fun b!597688 () Bool)

(declare-fun res!258253 () Bool)

(assert (=> b!597688 (=> (not res!258253) (not e!361977))))

(assert (=> b!597688 (= res!258253 (< (size!4703 (_2!3695 (get!2291 lt!254454))) (size!4703 lt!254340)))))

(declare-fun b!597689 () Bool)

(assert (=> b!597689 (= e!361976 call!40424)))

(declare-fun b!597690 () Bool)

(assert (=> b!597690 (= e!361978 e!361977)))

(declare-fun res!258257 () Bool)

(assert (=> b!597690 (=> (not res!258257) (not e!361977))))

(assert (=> b!597690 (= res!258257 (isDefined!1346 lt!254454))))

(assert (= (and d!209964 c!111087) b!597689))

(assert (= (and d!209964 (not c!111087)) b!597684))

(assert (= (or b!597689 b!597684) bm!40419))

(assert (= (and d!209964 (not res!258252)) b!597690))

(assert (= (and b!597690 res!258257) b!597682))

(assert (= (and b!597682 res!258254) b!597688))

(assert (= (and b!597688 res!258253) b!597686))

(assert (= (and b!597686 res!258258) b!597687))

(assert (= (and b!597687 res!258255) b!597683))

(assert (= (and b!597683 res!258256) b!597685))

(declare-fun m!861025 () Bool)

(assert (=> d!209964 m!861025))

(declare-fun m!861027 () Bool)

(assert (=> d!209964 m!861027))

(declare-fun m!861029 () Bool)

(assert (=> d!209964 m!861029))

(declare-fun m!861031 () Bool)

(assert (=> d!209964 m!861031))

(declare-fun m!861033 () Bool)

(assert (=> bm!40419 m!861033))

(declare-fun m!861035 () Bool)

(assert (=> b!597687 m!861035))

(declare-fun m!861037 () Bool)

(assert (=> b!597687 m!861037))

(assert (=> b!597687 m!861037))

(declare-fun m!861039 () Bool)

(assert (=> b!597687 m!861039))

(assert (=> b!597682 m!861035))

(declare-fun m!861041 () Bool)

(assert (=> b!597682 m!861041))

(assert (=> b!597682 m!861041))

(declare-fun m!861043 () Bool)

(assert (=> b!597682 m!861043))

(declare-fun m!861045 () Bool)

(assert (=> b!597684 m!861045))

(assert (=> b!597688 m!861035))

(declare-fun m!861047 () Bool)

(assert (=> b!597688 m!861047))

(declare-fun m!861049 () Bool)

(assert (=> b!597688 m!861049))

(assert (=> b!597686 m!861035))

(assert (=> b!597686 m!861041))

(assert (=> b!597686 m!861041))

(assert (=> b!597686 m!861043))

(assert (=> b!597686 m!861043))

(declare-fun m!861051 () Bool)

(assert (=> b!597686 m!861051))

(assert (=> b!597685 m!861035))

(declare-fun m!861053 () Bool)

(assert (=> b!597685 m!861053))

(assert (=> b!597683 m!861035))

(assert (=> b!597683 m!861041))

(assert (=> b!597683 m!861041))

(assert (=> b!597683 m!861043))

(assert (=> b!597683 m!861043))

(declare-fun m!861055 () Bool)

(assert (=> b!597683 m!861055))

(declare-fun m!861057 () Bool)

(assert (=> b!597690 m!861057))

(assert (=> b!597553 d!209964))

(declare-fun d!209970 () Bool)

(declare-fun e!361989 () Bool)

(assert (=> d!209970 e!361989))

(declare-fun res!258269 () Bool)

(assert (=> d!209970 (=> (not res!258269) (not e!361989))))

(declare-fun lt!254461 () List!5977)

(declare-fun content!1070 (List!5977) (Set C!3958))

(assert (=> d!209970 (= res!258269 (= (content!1070 lt!254461) (set.union (content!1070 input!2705) (content!1070 suffix!1342))))))

(declare-fun e!361990 () List!5977)

(assert (=> d!209970 (= lt!254461 e!361990)))

(declare-fun c!111090 () Bool)

(assert (=> d!209970 (= c!111090 (is-Nil!5967 input!2705))))

(assert (=> d!209970 (= (++!1672 input!2705 suffix!1342) lt!254461)))

(declare-fun b!597710 () Bool)

(assert (=> b!597710 (= e!361990 suffix!1342)))

(declare-fun b!597711 () Bool)

(assert (=> b!597711 (= e!361990 (Cons!5967 (h!11368 input!2705) (++!1672 (t!79558 input!2705) suffix!1342)))))

(declare-fun b!597712 () Bool)

(declare-fun res!258270 () Bool)

(assert (=> b!597712 (=> (not res!258270) (not e!361989))))

(assert (=> b!597712 (= res!258270 (= (size!4703 lt!254461) (+ (size!4703 input!2705) (size!4703 suffix!1342))))))

(declare-fun b!597713 () Bool)

(assert (=> b!597713 (= e!361989 (or (not (= suffix!1342 Nil!5967)) (= lt!254461 input!2705)))))

(assert (= (and d!209970 c!111090) b!597710))

(assert (= (and d!209970 (not c!111090)) b!597711))

(assert (= (and d!209970 res!258269) b!597712))

(assert (= (and b!597712 res!258270) b!597713))

(declare-fun m!861067 () Bool)

(assert (=> d!209970 m!861067))

(declare-fun m!861069 () Bool)

(assert (=> d!209970 m!861069))

(declare-fun m!861073 () Bool)

(assert (=> d!209970 m!861073))

(declare-fun m!861075 () Bool)

(assert (=> b!597711 m!861075))

(declare-fun m!861077 () Bool)

(assert (=> b!597712 m!861077))

(declare-fun m!861079 () Bool)

(assert (=> b!597712 m!861079))

(declare-fun m!861081 () Bool)

(assert (=> b!597712 m!861081))

(assert (=> b!597553 d!209970))

(declare-fun d!209974 () Bool)

(declare-fun lt!254464 () List!5977)

(assert (=> d!209974 (= (++!1672 lt!254334 lt!254464) lt!254340)))

(declare-fun e!361993 () List!5977)

(assert (=> d!209974 (= lt!254464 e!361993)))

(declare-fun c!111093 () Bool)

(assert (=> d!209974 (= c!111093 (is-Cons!5967 lt!254334))))

(assert (=> d!209974 (>= (size!4703 lt!254340) (size!4703 lt!254334))))

(assert (=> d!209974 (= (getSuffix!329 lt!254340 lt!254334) lt!254464)))

(declare-fun b!597718 () Bool)

(declare-fun tail!796 (List!5977) List!5977)

(assert (=> b!597718 (= e!361993 (getSuffix!329 (tail!796 lt!254340) (t!79558 lt!254334)))))

(declare-fun b!597719 () Bool)

(assert (=> b!597719 (= e!361993 lt!254340)))

(assert (= (and d!209974 c!111093) b!597718))

(assert (= (and d!209974 (not c!111093)) b!597719))

(declare-fun m!861083 () Bool)

(assert (=> d!209974 m!861083))

(assert (=> d!209974 m!861049))

(assert (=> d!209974 m!860877))

(declare-fun m!861085 () Bool)

(assert (=> b!597718 m!861085))

(assert (=> b!597718 m!861085))

(declare-fun m!861087 () Bool)

(assert (=> b!597718 m!861087))

(assert (=> b!597562 d!209974))

(declare-fun d!209978 () Bool)

(declare-fun fromListB!595 (List!5977) BalanceConc!3810)

(assert (=> d!209978 (= (seqFromList!1360 lt!254334) (fromListB!595 lt!254334))))

(declare-fun bs!70694 () Bool)

(assert (= bs!70694 d!209978))

(declare-fun m!861089 () Bool)

(assert (=> bs!70694 m!861089))

(assert (=> b!597562 d!209978))

(declare-fun d!209980 () Bool)

(declare-fun dynLambda!3446 (Int BalanceConc!3810) TokenValue!1208)

(assert (=> d!209980 (= (apply!1437 (transformation!1184 (rule!1954 token!491)) (seqFromList!1360 lt!254334)) (dynLambda!3446 (toValue!2075 (transformation!1184 (rule!1954 token!491))) (seqFromList!1360 lt!254334)))))

(declare-fun b_lambda!23549 () Bool)

(assert (=> (not b_lambda!23549) (not d!209980)))

(declare-fun t!79573 () Bool)

(declare-fun tb!52127 () Bool)

(assert (=> (and b!597563 (= (toValue!2075 (transformation!1184 (h!11370 rules!3103))) (toValue!2075 (transformation!1184 (rule!1954 token!491)))) t!79573) tb!52127))

(declare-fun result!58594 () Bool)

(assert (=> tb!52127 (= result!58594 (inv!21 (dynLambda!3446 (toValue!2075 (transformation!1184 (rule!1954 token!491))) (seqFromList!1360 lt!254334))))))

(declare-fun m!861091 () Bool)

(assert (=> tb!52127 m!861091))

(assert (=> d!209980 t!79573))

(declare-fun b_and!59011 () Bool)

(assert (= b_and!58987 (and (=> t!79573 result!58594) b_and!59011)))

(declare-fun t!79575 () Bool)

(declare-fun tb!52129 () Bool)

(assert (=> (and b!597558 (= (toValue!2075 (transformation!1184 (rule!1954 token!491))) (toValue!2075 (transformation!1184 (rule!1954 token!491)))) t!79575) tb!52129))

(declare-fun result!58598 () Bool)

(assert (= result!58598 result!58594))

(assert (=> d!209980 t!79575))

(declare-fun b_and!59013 () Bool)

(assert (= b_and!58991 (and (=> t!79575 result!58598) b_and!59013)))

(assert (=> d!209980 m!860893))

(declare-fun m!861093 () Bool)

(assert (=> d!209980 m!861093))

(assert (=> b!597562 d!209980))

(declare-fun d!209982 () Bool)

(declare-fun lt!254467 () Bool)

(declare-fun content!1071 (List!5979) (Set Rule!2168))

(assert (=> d!209982 (= lt!254467 (set.member (rule!1954 (_1!3695 (v!16421 lt!254330))) (content!1071 rules!3103)))))

(declare-fun e!362005 () Bool)

(assert (=> d!209982 (= lt!254467 e!362005)))

(declare-fun res!258278 () Bool)

(assert (=> d!209982 (=> (not res!258278) (not e!362005))))

(assert (=> d!209982 (= res!258278 (is-Cons!5969 rules!3103))))

(assert (=> d!209982 (= (contains!1394 rules!3103 (rule!1954 (_1!3695 (v!16421 lt!254330)))) lt!254467)))

(declare-fun b!597729 () Bool)

(declare-fun e!362004 () Bool)

(assert (=> b!597729 (= e!362005 e!362004)))

(declare-fun res!258279 () Bool)

(assert (=> b!597729 (=> res!258279 e!362004)))

(assert (=> b!597729 (= res!258279 (= (h!11370 rules!3103) (rule!1954 (_1!3695 (v!16421 lt!254330)))))))

(declare-fun b!597730 () Bool)

(assert (=> b!597730 (= e!362004 (contains!1394 (t!79560 rules!3103) (rule!1954 (_1!3695 (v!16421 lt!254330)))))))

(assert (= (and d!209982 res!258278) b!597729))

(assert (= (and b!597729 (not res!258279)) b!597730))

(declare-fun m!861099 () Bool)

(assert (=> d!209982 m!861099))

(declare-fun m!861101 () Bool)

(assert (=> d!209982 m!861101))

(declare-fun m!861103 () Bool)

(assert (=> b!597730 m!861103))

(assert (=> b!597562 d!209982))

(declare-fun d!209986 () Bool)

(assert (=> d!209986 (= suffix!1342 lt!254338)))

(declare-fun lt!254470 () Unit!10856)

(declare-fun choose!4347 (List!5977 List!5977 List!5977 List!5977 List!5977) Unit!10856)

(assert (=> d!209986 (= lt!254470 (choose!4347 lt!254334 suffix!1342 lt!254334 lt!254338 lt!254340))))

(assert (=> d!209986 (isPrefix!812 lt!254334 lt!254340)))

(assert (=> d!209986 (= (lemmaSamePrefixThenSameSuffix!525 lt!254334 suffix!1342 lt!254334 lt!254338 lt!254340) lt!254470)))

(declare-fun bs!70695 () Bool)

(assert (= bs!70695 d!209986))

(declare-fun m!861105 () Bool)

(assert (=> bs!70695 m!861105))

(declare-fun m!861107 () Bool)

(assert (=> bs!70695 m!861107))

(assert (=> b!597562 d!209986))

(declare-fun b!597741 () Bool)

(declare-fun e!362012 () Bool)

(assert (=> b!597741 (= e!362012 (isPrefix!812 (tail!796 lt!254334) (tail!796 lt!254352)))))

(declare-fun b!597739 () Bool)

(declare-fun e!362014 () Bool)

(assert (=> b!597739 (= e!362014 e!362012)))

(declare-fun res!258290 () Bool)

(assert (=> b!597739 (=> (not res!258290) (not e!362012))))

(assert (=> b!597739 (= res!258290 (not (is-Nil!5967 lt!254352)))))

(declare-fun b!597740 () Bool)

(declare-fun res!258288 () Bool)

(assert (=> b!597740 (=> (not res!258288) (not e!362012))))

(declare-fun head!1267 (List!5977) C!3958)

(assert (=> b!597740 (= res!258288 (= (head!1267 lt!254334) (head!1267 lt!254352)))))

(declare-fun b!597742 () Bool)

(declare-fun e!362013 () Bool)

(assert (=> b!597742 (= e!362013 (>= (size!4703 lt!254352) (size!4703 lt!254334)))))

(declare-fun d!209990 () Bool)

(assert (=> d!209990 e!362013))

(declare-fun res!258289 () Bool)

(assert (=> d!209990 (=> res!258289 e!362013)))

(declare-fun lt!254473 () Bool)

(assert (=> d!209990 (= res!258289 (not lt!254473))))

(assert (=> d!209990 (= lt!254473 e!362014)))

(declare-fun res!258291 () Bool)

(assert (=> d!209990 (=> res!258291 e!362014)))

(assert (=> d!209990 (= res!258291 (is-Nil!5967 lt!254334))))

(assert (=> d!209990 (= (isPrefix!812 lt!254334 lt!254352) lt!254473)))

(assert (= (and d!209990 (not res!258291)) b!597739))

(assert (= (and b!597739 res!258290) b!597740))

(assert (= (and b!597740 res!258288) b!597741))

(assert (= (and d!209990 (not res!258289)) b!597742))

(declare-fun m!861109 () Bool)

(assert (=> b!597741 m!861109))

(declare-fun m!861111 () Bool)

(assert (=> b!597741 m!861111))

(assert (=> b!597741 m!861109))

(assert (=> b!597741 m!861111))

(declare-fun m!861113 () Bool)

(assert (=> b!597741 m!861113))

(declare-fun m!861115 () Bool)

(assert (=> b!597740 m!861115))

(declare-fun m!861117 () Bool)

(assert (=> b!597740 m!861117))

(declare-fun m!861119 () Bool)

(assert (=> b!597742 m!861119))

(assert (=> b!597742 m!860877))

(assert (=> b!597551 d!209990))

(declare-fun d!209992 () Bool)

(assert (=> d!209992 (isPrefix!812 lt!254334 (++!1672 lt!254334 suffix!1342))))

(declare-fun lt!254478 () Unit!10856)

(declare-fun choose!4348 (List!5977 List!5977) Unit!10856)

(assert (=> d!209992 (= lt!254478 (choose!4348 lt!254334 suffix!1342))))

(assert (=> d!209992 (= (lemmaConcatTwoListThenFirstIsPrefix!657 lt!254334 suffix!1342) lt!254478)))

(declare-fun bs!70696 () Bool)

(assert (= bs!70696 d!209992))

(assert (=> bs!70696 m!860803))

(assert (=> bs!70696 m!860803))

(declare-fun m!861121 () Bool)

(assert (=> bs!70696 m!861121))

(declare-fun m!861123 () Bool)

(assert (=> bs!70696 m!861123))

(assert (=> b!597551 d!209992))

(declare-fun d!209994 () Bool)

(assert (=> d!209994 (ruleValid!382 thiss!22590 (rule!1954 (_1!3695 (v!16421 lt!254330))))))

(declare-fun lt!254481 () Unit!10856)

(declare-fun choose!4349 (LexerInterface!1070 Rule!2168 List!5979) Unit!10856)

(assert (=> d!209994 (= lt!254481 (choose!4349 thiss!22590 (rule!1954 (_1!3695 (v!16421 lt!254330))) rules!3103))))

(assert (=> d!209994 (contains!1394 rules!3103 (rule!1954 (_1!3695 (v!16421 lt!254330))))))

(assert (=> d!209994 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!229 thiss!22590 (rule!1954 (_1!3695 (v!16421 lt!254330))) rules!3103) lt!254481)))

(declare-fun bs!70697 () Bool)

(assert (= bs!70697 d!209994))

(assert (=> bs!70697 m!860853))

(declare-fun m!861125 () Bool)

(assert (=> bs!70697 m!861125))

(assert (=> bs!70697 m!860891))

(assert (=> b!597551 d!209994))

(declare-fun d!209996 () Bool)

(declare-fun lt!254482 () Int)

(assert (=> d!209996 (>= lt!254482 0)))

(declare-fun e!362019 () Int)

(assert (=> d!209996 (= lt!254482 e!362019)))

(declare-fun c!111096 () Bool)

(assert (=> d!209996 (= c!111096 (is-Nil!5967 lt!254341))))

(assert (=> d!209996 (= (size!4703 lt!254341) lt!254482)))

(declare-fun b!597751 () Bool)

(assert (=> b!597751 (= e!362019 0)))

(declare-fun b!597752 () Bool)

(assert (=> b!597752 (= e!362019 (+ 1 (size!4703 (t!79558 lt!254341))))))

(assert (= (and d!209996 c!111096) b!597751))

(assert (= (and d!209996 (not c!111096)) b!597752))

(declare-fun m!861127 () Bool)

(assert (=> b!597752 m!861127))

(assert (=> b!597551 d!209996))

(declare-fun d!209998 () Bool)

(assert (=> d!209998 (and (= lt!254334 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!254486 () Unit!10856)

(declare-fun choose!4350 (List!5977 List!5977 List!5977 List!5977) Unit!10856)

(assert (=> d!209998 (= lt!254486 (choose!4350 lt!254334 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!209998 (= (++!1672 lt!254334 suffix!1342) (++!1672 input!2705 suffix!1342))))

(assert (=> d!209998 (= (lemmaConcatSameAndSameSizesThenSameLists!257 lt!254334 suffix!1342 input!2705 suffix!1342) lt!254486)))

(declare-fun bs!70698 () Bool)

(assert (= bs!70698 d!209998))

(declare-fun m!861141 () Bool)

(assert (=> bs!70698 m!861141))

(assert (=> bs!70698 m!860803))

(assert (=> bs!70698 m!860901))

(assert (=> b!597551 d!209998))

(declare-fun b!597759 () Bool)

(declare-fun e!362022 () Bool)

(assert (=> b!597759 (= e!362022 (isPrefix!812 (tail!796 lt!254341) (tail!796 (++!1672 lt!254341 (_2!3695 (v!16421 lt!254330))))))))

(declare-fun b!597757 () Bool)

(declare-fun e!362024 () Bool)

(assert (=> b!597757 (= e!362024 e!362022)))

(declare-fun res!258300 () Bool)

(assert (=> b!597757 (=> (not res!258300) (not e!362022))))

(assert (=> b!597757 (= res!258300 (not (is-Nil!5967 (++!1672 lt!254341 (_2!3695 (v!16421 lt!254330))))))))

(declare-fun b!597758 () Bool)

(declare-fun res!258298 () Bool)

(assert (=> b!597758 (=> (not res!258298) (not e!362022))))

(assert (=> b!597758 (= res!258298 (= (head!1267 lt!254341) (head!1267 (++!1672 lt!254341 (_2!3695 (v!16421 lt!254330))))))))

(declare-fun b!597760 () Bool)

(declare-fun e!362023 () Bool)

(assert (=> b!597760 (= e!362023 (>= (size!4703 (++!1672 lt!254341 (_2!3695 (v!16421 lt!254330)))) (size!4703 lt!254341)))))

(declare-fun d!210002 () Bool)

(assert (=> d!210002 e!362023))

(declare-fun res!258299 () Bool)

(assert (=> d!210002 (=> res!258299 e!362023)))

(declare-fun lt!254487 () Bool)

(assert (=> d!210002 (= res!258299 (not lt!254487))))

(assert (=> d!210002 (= lt!254487 e!362024)))

(declare-fun res!258301 () Bool)

(assert (=> d!210002 (=> res!258301 e!362024)))

(assert (=> d!210002 (= res!258301 (is-Nil!5967 lt!254341))))

(assert (=> d!210002 (= (isPrefix!812 lt!254341 (++!1672 lt!254341 (_2!3695 (v!16421 lt!254330)))) lt!254487)))

(assert (= (and d!210002 (not res!258301)) b!597757))

(assert (= (and b!597757 res!258300) b!597758))

(assert (= (and b!597758 res!258298) b!597759))

(assert (= (and d!210002 (not res!258299)) b!597760))

(declare-fun m!861143 () Bool)

(assert (=> b!597759 m!861143))

(assert (=> b!597759 m!860835))

(declare-fun m!861145 () Bool)

(assert (=> b!597759 m!861145))

(assert (=> b!597759 m!861143))

(assert (=> b!597759 m!861145))

(declare-fun m!861147 () Bool)

(assert (=> b!597759 m!861147))

(declare-fun m!861149 () Bool)

(assert (=> b!597758 m!861149))

(assert (=> b!597758 m!860835))

(declare-fun m!861151 () Bool)

(assert (=> b!597758 m!861151))

(assert (=> b!597760 m!860835))

(declare-fun m!861153 () Bool)

(assert (=> b!597760 m!861153))

(assert (=> b!597760 m!860873))

(assert (=> b!597551 d!210002))

(declare-fun d!210004 () Bool)

(assert (=> d!210004 (= (size!4702 token!491) (size!4703 (originalCharacters!1223 token!491)))))

(declare-fun Unit!10865 () Unit!10856)

(assert (=> d!210004 (= (lemmaCharactersSize!243 token!491) Unit!10865)))

(declare-fun bs!70699 () Bool)

(assert (= bs!70699 d!210004))

(assert (=> bs!70699 m!860819))

(assert (=> b!597551 d!210004))

(declare-fun d!210006 () Bool)

(assert (=> d!210006 (= (size!4702 (_1!3695 (v!16421 lt!254330))) (size!4703 (originalCharacters!1223 (_1!3695 (v!16421 lt!254330)))))))

(declare-fun Unit!10866 () Unit!10856)

(assert (=> d!210006 (= (lemmaCharactersSize!243 (_1!3695 (v!16421 lt!254330))) Unit!10866)))

(declare-fun bs!70700 () Bool)

(assert (= bs!70700 d!210006))

(assert (=> bs!70700 m!860805))

(assert (=> b!597551 d!210006))

(declare-fun d!210008 () Bool)

(declare-fun res!258308 () Bool)

(declare-fun e!362029 () Bool)

(assert (=> d!210008 (=> (not res!258308) (not e!362029))))

(declare-fun validRegex!521 (Regex!1518) Bool)

(assert (=> d!210008 (= res!258308 (validRegex!521 (regex!1184 (rule!1954 (_1!3695 (v!16421 lt!254330))))))))

(assert (=> d!210008 (= (ruleValid!382 thiss!22590 (rule!1954 (_1!3695 (v!16421 lt!254330)))) e!362029)))

(declare-fun b!597767 () Bool)

(declare-fun res!258309 () Bool)

(assert (=> b!597767 (=> (not res!258309) (not e!362029))))

(declare-fun nullable!426 (Regex!1518) Bool)

(assert (=> b!597767 (= res!258309 (not (nullable!426 (regex!1184 (rule!1954 (_1!3695 (v!16421 lt!254330)))))))))

(declare-fun b!597768 () Bool)

(assert (=> b!597768 (= e!362029 (not (= (tag!1446 (rule!1954 (_1!3695 (v!16421 lt!254330)))) (String!7787 ""))))))

(assert (= (and d!210008 res!258308) b!597767))

(assert (= (and b!597767 res!258309) b!597768))

(declare-fun m!861155 () Bool)

(assert (=> d!210008 m!861155))

(declare-fun m!861157 () Bool)

(assert (=> b!597767 m!861157))

(assert (=> b!597551 d!210008))

(declare-fun d!210010 () Bool)

(assert (=> d!210010 (= (_2!3695 (v!16421 lt!254330)) lt!254332)))

(declare-fun lt!254488 () Unit!10856)

(assert (=> d!210010 (= lt!254488 (choose!4347 lt!254341 (_2!3695 (v!16421 lt!254330)) lt!254341 lt!254332 input!2705))))

(assert (=> d!210010 (isPrefix!812 lt!254341 input!2705)))

(assert (=> d!210010 (= (lemmaSamePrefixThenSameSuffix!525 lt!254341 (_2!3695 (v!16421 lt!254330)) lt!254341 lt!254332 input!2705) lt!254488)))

(declare-fun bs!70701 () Bool)

(assert (= bs!70701 d!210010))

(declare-fun m!861159 () Bool)

(assert (=> bs!70701 m!861159))

(declare-fun m!861161 () Bool)

(assert (=> bs!70701 m!861161))

(assert (=> b!597551 d!210010))

(declare-fun b!597772 () Bool)

(declare-fun e!362031 () Bool)

(assert (=> b!597772 (= e!362031 (isPrefix!812 (tail!796 input!2705) (tail!796 lt!254340)))))

(declare-fun b!597770 () Bool)

(declare-fun e!362033 () Bool)

(assert (=> b!597770 (= e!362033 e!362031)))

(declare-fun res!258313 () Bool)

(assert (=> b!597770 (=> (not res!258313) (not e!362031))))

(assert (=> b!597770 (= res!258313 (not (is-Nil!5967 lt!254340)))))

(declare-fun b!597771 () Bool)

(declare-fun res!258311 () Bool)

(assert (=> b!597771 (=> (not res!258311) (not e!362031))))

(assert (=> b!597771 (= res!258311 (= (head!1267 input!2705) (head!1267 lt!254340)))))

(declare-fun b!597773 () Bool)

(declare-fun e!362032 () Bool)

(assert (=> b!597773 (= e!362032 (>= (size!4703 lt!254340) (size!4703 input!2705)))))

(declare-fun d!210012 () Bool)

(assert (=> d!210012 e!362032))

(declare-fun res!258312 () Bool)

(assert (=> d!210012 (=> res!258312 e!362032)))

(declare-fun lt!254489 () Bool)

(assert (=> d!210012 (= res!258312 (not lt!254489))))

(assert (=> d!210012 (= lt!254489 e!362033)))

(declare-fun res!258314 () Bool)

(assert (=> d!210012 (=> res!258314 e!362033)))

(assert (=> d!210012 (= res!258314 (is-Nil!5967 input!2705))))

(assert (=> d!210012 (= (isPrefix!812 input!2705 lt!254340) lt!254489)))

(assert (= (and d!210012 (not res!258314)) b!597770))

(assert (= (and b!597770 res!258313) b!597771))

(assert (= (and b!597771 res!258311) b!597772))

(assert (= (and d!210012 (not res!258312)) b!597773))

(declare-fun m!861165 () Bool)

(assert (=> b!597772 m!861165))

(assert (=> b!597772 m!861085))

(assert (=> b!597772 m!861165))

(assert (=> b!597772 m!861085))

(declare-fun m!861169 () Bool)

(assert (=> b!597772 m!861169))

(declare-fun m!861171 () Bool)

(assert (=> b!597771 m!861171))

(declare-fun m!861173 () Bool)

(assert (=> b!597771 m!861173))

(assert (=> b!597773 m!861049))

(assert (=> b!597773 m!861079))

(assert (=> b!597551 d!210012))

(declare-fun d!210016 () Bool)

(declare-fun lt!254490 () List!5977)

(assert (=> d!210016 (= (++!1672 lt!254341 lt!254490) input!2705)))

(declare-fun e!362034 () List!5977)

(assert (=> d!210016 (= lt!254490 e!362034)))

(declare-fun c!111098 () Bool)

(assert (=> d!210016 (= c!111098 (is-Cons!5967 lt!254341))))

(assert (=> d!210016 (>= (size!4703 input!2705) (size!4703 lt!254341))))

(assert (=> d!210016 (= (getSuffix!329 input!2705 lt!254341) lt!254490)))

(declare-fun b!597774 () Bool)

(assert (=> b!597774 (= e!362034 (getSuffix!329 (tail!796 input!2705) (t!79558 lt!254341)))))

(declare-fun b!597775 () Bool)

(assert (=> b!597775 (= e!362034 input!2705)))

(assert (= (and d!210016 c!111098) b!597774))

(assert (= (and d!210016 (not c!111098)) b!597775))

(declare-fun m!861175 () Bool)

(assert (=> d!210016 m!861175))

(assert (=> d!210016 m!861079))

(assert (=> d!210016 m!860873))

(assert (=> b!597774 m!861165))

(assert (=> b!597774 m!861165))

(declare-fun m!861177 () Bool)

(assert (=> b!597774 m!861177))

(assert (=> b!597551 d!210016))

(declare-fun b!597778 () Bool)

(declare-fun e!362035 () Bool)

(assert (=> b!597778 (= e!362035 (isPrefix!812 (tail!796 input!2705) (tail!796 input!2705)))))

(declare-fun b!597776 () Bool)

(declare-fun e!362037 () Bool)

(assert (=> b!597776 (= e!362037 e!362035)))

(declare-fun res!258317 () Bool)

(assert (=> b!597776 (=> (not res!258317) (not e!362035))))

(assert (=> b!597776 (= res!258317 (not (is-Nil!5967 input!2705)))))

(declare-fun b!597777 () Bool)

(declare-fun res!258315 () Bool)

(assert (=> b!597777 (=> (not res!258315) (not e!362035))))

(assert (=> b!597777 (= res!258315 (= (head!1267 input!2705) (head!1267 input!2705)))))

(declare-fun b!597779 () Bool)

(declare-fun e!362036 () Bool)

(assert (=> b!597779 (= e!362036 (>= (size!4703 input!2705) (size!4703 input!2705)))))

(declare-fun d!210018 () Bool)

(assert (=> d!210018 e!362036))

(declare-fun res!258316 () Bool)

(assert (=> d!210018 (=> res!258316 e!362036)))

(declare-fun lt!254491 () Bool)

(assert (=> d!210018 (= res!258316 (not lt!254491))))

(assert (=> d!210018 (= lt!254491 e!362037)))

(declare-fun res!258318 () Bool)

(assert (=> d!210018 (=> res!258318 e!362037)))

(assert (=> d!210018 (= res!258318 (is-Nil!5967 input!2705))))

(assert (=> d!210018 (= (isPrefix!812 input!2705 input!2705) lt!254491)))

(assert (= (and d!210018 (not res!258318)) b!597776))

(assert (= (and b!597776 res!258317) b!597777))

(assert (= (and b!597777 res!258315) b!597778))

(assert (= (and d!210018 (not res!258316)) b!597779))

(assert (=> b!597778 m!861165))

(assert (=> b!597778 m!861165))

(assert (=> b!597778 m!861165))

(assert (=> b!597778 m!861165))

(declare-fun m!861179 () Bool)

(assert (=> b!597778 m!861179))

(assert (=> b!597777 m!861171))

(assert (=> b!597777 m!861171))

(assert (=> b!597779 m!861079))

(assert (=> b!597779 m!861079))

(assert (=> b!597551 d!210018))

(declare-fun d!210020 () Bool)

(declare-fun e!362040 () Bool)

(assert (=> d!210020 e!362040))

(declare-fun res!258321 () Bool)

(assert (=> d!210020 (=> (not res!258321) (not e!362040))))

(assert (=> d!210020 (= res!258321 (semiInverseModEq!468 (toChars!1934 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330))))) (toValue!2075 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330)))))))))

(declare-fun Unit!10867 () Unit!10856)

(assert (=> d!210020 (= (lemmaInv!292 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330))))) Unit!10867)))

(declare-fun b!597782 () Bool)

(assert (=> b!597782 (= e!362040 (equivClasses!451 (toChars!1934 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330))))) (toValue!2075 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330)))))))))

(assert (= (and d!210020 res!258321) b!597782))

(declare-fun m!861183 () Bool)

(assert (=> d!210020 m!861183))

(declare-fun m!861185 () Bool)

(assert (=> b!597782 m!861185))

(assert (=> b!597551 d!210020))

(declare-fun d!210024 () Bool)

(declare-fun lt!254492 () Int)

(assert (=> d!210024 (>= lt!254492 0)))

(declare-fun e!362041 () Int)

(assert (=> d!210024 (= lt!254492 e!362041)))

(declare-fun c!111099 () Bool)

(assert (=> d!210024 (= c!111099 (is-Nil!5967 lt!254334))))

(assert (=> d!210024 (= (size!4703 lt!254334) lt!254492)))

(declare-fun b!597783 () Bool)

(assert (=> b!597783 (= e!362041 0)))

(declare-fun b!597784 () Bool)

(assert (=> b!597784 (= e!362041 (+ 1 (size!4703 (t!79558 lt!254334))))))

(assert (= (and d!210024 c!111099) b!597783))

(assert (= (and d!210024 (not c!111099)) b!597784))

(declare-fun m!861187 () Bool)

(assert (=> b!597784 m!861187))

(assert (=> b!597551 d!210024))

(declare-fun d!210026 () Bool)

(assert (=> d!210026 (ruleValid!382 thiss!22590 (rule!1954 token!491))))

(declare-fun lt!254493 () Unit!10856)

(assert (=> d!210026 (= lt!254493 (choose!4349 thiss!22590 (rule!1954 token!491) rules!3103))))

(assert (=> d!210026 (contains!1394 rules!3103 (rule!1954 token!491))))

(assert (=> d!210026 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!229 thiss!22590 (rule!1954 token!491) rules!3103) lt!254493)))

(declare-fun bs!70703 () Bool)

(assert (= bs!70703 d!210026))

(assert (=> bs!70703 m!860833))

(declare-fun m!861189 () Bool)

(assert (=> bs!70703 m!861189))

(declare-fun m!861191 () Bool)

(assert (=> bs!70703 m!861191))

(assert (=> b!597551 d!210026))

(declare-fun d!210028 () Bool)

(assert (=> d!210028 (isPrefix!812 input!2705 (++!1672 input!2705 suffix!1342))))

(declare-fun lt!254494 () Unit!10856)

(assert (=> d!210028 (= lt!254494 (choose!4348 input!2705 suffix!1342))))

(assert (=> d!210028 (= (lemmaConcatTwoListThenFirstIsPrefix!657 input!2705 suffix!1342) lt!254494)))

(declare-fun bs!70704 () Bool)

(assert (= bs!70704 d!210028))

(assert (=> bs!70704 m!860901))

(assert (=> bs!70704 m!860901))

(declare-fun m!861193 () Bool)

(assert (=> bs!70704 m!861193))

(declare-fun m!861195 () Bool)

(assert (=> bs!70704 m!861195))

(assert (=> b!597551 d!210028))

(declare-fun d!210030 () Bool)

(declare-fun res!258322 () Bool)

(declare-fun e!362042 () Bool)

(assert (=> d!210030 (=> (not res!258322) (not e!362042))))

(assert (=> d!210030 (= res!258322 (validRegex!521 (regex!1184 (rule!1954 token!491))))))

(assert (=> d!210030 (= (ruleValid!382 thiss!22590 (rule!1954 token!491)) e!362042)))

(declare-fun b!597785 () Bool)

(declare-fun res!258323 () Bool)

(assert (=> b!597785 (=> (not res!258323) (not e!362042))))

(assert (=> b!597785 (= res!258323 (not (nullable!426 (regex!1184 (rule!1954 token!491)))))))

(declare-fun b!597786 () Bool)

(assert (=> b!597786 (= e!362042 (not (= (tag!1446 (rule!1954 token!491)) (String!7787 ""))))))

(assert (= (and d!210030 res!258322) b!597785))

(assert (= (and b!597785 res!258323) b!597786))

(declare-fun m!861197 () Bool)

(assert (=> d!210030 m!861197))

(declare-fun m!861199 () Bool)

(assert (=> b!597785 m!861199))

(assert (=> b!597551 d!210030))

(declare-fun d!210032 () Bool)

(declare-fun lt!254495 () BalanceConc!3810)

(assert (=> d!210032 (= (list!2499 lt!254495) (originalCharacters!1223 (_1!3695 (v!16421 lt!254330))))))

(assert (=> d!210032 (= lt!254495 (dynLambda!3445 (toChars!1934 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330))))) (value!38612 (_1!3695 (v!16421 lt!254330)))))))

(assert (=> d!210032 (= (charsOf!813 (_1!3695 (v!16421 lt!254330))) lt!254495)))

(declare-fun b_lambda!23551 () Bool)

(assert (=> (not b_lambda!23551) (not d!210032)))

(declare-fun t!79577 () Bool)

(declare-fun tb!52131 () Bool)

(assert (=> (and b!597563 (= (toChars!1934 (transformation!1184 (h!11370 rules!3103))) (toChars!1934 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330)))))) t!79577) tb!52131))

(declare-fun b!597787 () Bool)

(declare-fun e!362043 () Bool)

(declare-fun tp!186379 () Bool)

(assert (=> b!597787 (= e!362043 (and (inv!7568 (c!111072 (dynLambda!3445 (toChars!1934 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330))))) (value!38612 (_1!3695 (v!16421 lt!254330)))))) tp!186379))))

(declare-fun result!58600 () Bool)

(assert (=> tb!52131 (= result!58600 (and (inv!7569 (dynLambda!3445 (toChars!1934 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330))))) (value!38612 (_1!3695 (v!16421 lt!254330))))) e!362043))))

(assert (= tb!52131 b!597787))

(declare-fun m!861201 () Bool)

(assert (=> b!597787 m!861201))

(declare-fun m!861203 () Bool)

(assert (=> tb!52131 m!861203))

(assert (=> d!210032 t!79577))

(declare-fun b_and!59015 () Bool)

(assert (= b_and!59003 (and (=> t!79577 result!58600) b_and!59015)))

(declare-fun tb!52133 () Bool)

(declare-fun t!79579 () Bool)

(assert (=> (and b!597558 (= (toChars!1934 (transformation!1184 (rule!1954 token!491))) (toChars!1934 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330)))))) t!79579) tb!52133))

(declare-fun result!58602 () Bool)

(assert (= result!58602 result!58600))

(assert (=> d!210032 t!79579))

(declare-fun b_and!59017 () Bool)

(assert (= b_and!59005 (and (=> t!79579 result!58602) b_and!59017)))

(declare-fun m!861205 () Bool)

(assert (=> d!210032 m!861205))

(declare-fun m!861207 () Bool)

(assert (=> d!210032 m!861207))

(assert (=> b!597551 d!210032))

(declare-fun d!210034 () Bool)

(assert (=> d!210034 (isPrefix!812 input!2705 input!2705)))

(declare-fun lt!254500 () Unit!10856)

(declare-fun choose!4351 (List!5977 List!5977) Unit!10856)

(assert (=> d!210034 (= lt!254500 (choose!4351 input!2705 input!2705))))

(assert (=> d!210034 (= (lemmaIsPrefixRefl!548 input!2705 input!2705) lt!254500)))

(declare-fun bs!70705 () Bool)

(assert (= bs!70705 d!210034))

(assert (=> bs!70705 m!860881))

(declare-fun m!861209 () Bool)

(assert (=> bs!70705 m!861209))

(assert (=> b!597551 d!210034))

(declare-fun b!597790 () Bool)

(declare-fun e!362044 () Bool)

(assert (=> b!597790 (= e!362044 (isPrefix!812 (tail!796 input!2705) (tail!796 lt!254352)))))

(declare-fun b!597788 () Bool)

(declare-fun e!362046 () Bool)

(assert (=> b!597788 (= e!362046 e!362044)))

(declare-fun res!258326 () Bool)

(assert (=> b!597788 (=> (not res!258326) (not e!362044))))

(assert (=> b!597788 (= res!258326 (not (is-Nil!5967 lt!254352)))))

(declare-fun b!597789 () Bool)

(declare-fun res!258324 () Bool)

(assert (=> b!597789 (=> (not res!258324) (not e!362044))))

(assert (=> b!597789 (= res!258324 (= (head!1267 input!2705) (head!1267 lt!254352)))))

(declare-fun b!597791 () Bool)

(declare-fun e!362045 () Bool)

(assert (=> b!597791 (= e!362045 (>= (size!4703 lt!254352) (size!4703 input!2705)))))

(declare-fun d!210036 () Bool)

(assert (=> d!210036 e!362045))

(declare-fun res!258325 () Bool)

(assert (=> d!210036 (=> res!258325 e!362045)))

(declare-fun lt!254502 () Bool)

(assert (=> d!210036 (= res!258325 (not lt!254502))))

(assert (=> d!210036 (= lt!254502 e!362046)))

(declare-fun res!258327 () Bool)

(assert (=> d!210036 (=> res!258327 e!362046)))

(assert (=> d!210036 (= res!258327 (is-Nil!5967 input!2705))))

(assert (=> d!210036 (= (isPrefix!812 input!2705 lt!254352) lt!254502)))

(assert (= (and d!210036 (not res!258327)) b!597788))

(assert (= (and b!597788 res!258326) b!597789))

(assert (= (and b!597789 res!258324) b!597790))

(assert (= (and d!210036 (not res!258325)) b!597791))

(assert (=> b!597790 m!861165))

(assert (=> b!597790 m!861111))

(assert (=> b!597790 m!861165))

(assert (=> b!597790 m!861111))

(declare-fun m!861211 () Bool)

(assert (=> b!597790 m!861211))

(assert (=> b!597789 m!861171))

(assert (=> b!597789 m!861117))

(assert (=> b!597791 m!861119))

(assert (=> b!597791 m!861079))

(assert (=> b!597551 d!210036))

(declare-fun d!210038 () Bool)

(declare-fun e!362047 () Bool)

(assert (=> d!210038 e!362047))

(declare-fun res!258328 () Bool)

(assert (=> d!210038 (=> (not res!258328) (not e!362047))))

(declare-fun lt!254503 () List!5977)

(assert (=> d!210038 (= res!258328 (= (content!1070 lt!254503) (set.union (content!1070 lt!254341) (content!1070 (_2!3695 (v!16421 lt!254330))))))))

(declare-fun e!362048 () List!5977)

(assert (=> d!210038 (= lt!254503 e!362048)))

(declare-fun c!111100 () Bool)

(assert (=> d!210038 (= c!111100 (is-Nil!5967 lt!254341))))

(assert (=> d!210038 (= (++!1672 lt!254341 (_2!3695 (v!16421 lt!254330))) lt!254503)))

(declare-fun b!597792 () Bool)

(assert (=> b!597792 (= e!362048 (_2!3695 (v!16421 lt!254330)))))

(declare-fun b!597793 () Bool)

(assert (=> b!597793 (= e!362048 (Cons!5967 (h!11368 lt!254341) (++!1672 (t!79558 lt!254341) (_2!3695 (v!16421 lt!254330)))))))

(declare-fun b!597794 () Bool)

(declare-fun res!258329 () Bool)

(assert (=> b!597794 (=> (not res!258329) (not e!362047))))

(assert (=> b!597794 (= res!258329 (= (size!4703 lt!254503) (+ (size!4703 lt!254341) (size!4703 (_2!3695 (v!16421 lt!254330))))))))

(declare-fun b!597795 () Bool)

(assert (=> b!597795 (= e!362047 (or (not (= (_2!3695 (v!16421 lt!254330)) Nil!5967)) (= lt!254503 lt!254341)))))

(assert (= (and d!210038 c!111100) b!597792))

(assert (= (and d!210038 (not c!111100)) b!597793))

(assert (= (and d!210038 res!258328) b!597794))

(assert (= (and b!597794 res!258329) b!597795))

(declare-fun m!861215 () Bool)

(assert (=> d!210038 m!861215))

(declare-fun m!861217 () Bool)

(assert (=> d!210038 m!861217))

(declare-fun m!861219 () Bool)

(assert (=> d!210038 m!861219))

(declare-fun m!861221 () Bool)

(assert (=> b!597793 m!861221))

(declare-fun m!861223 () Bool)

(assert (=> b!597794 m!861223))

(assert (=> b!597794 m!860873))

(declare-fun m!861225 () Bool)

(assert (=> b!597794 m!861225))

(assert (=> b!597551 d!210038))

(declare-fun d!210042 () Bool)

(assert (=> d!210042 (= (seqFromList!1360 lt!254341) (fromListB!595 lt!254341))))

(declare-fun bs!70706 () Bool)

(assert (= bs!70706 d!210042))

(declare-fun m!861227 () Bool)

(assert (=> bs!70706 m!861227))

(assert (=> b!597551 d!210042))

(declare-fun d!210044 () Bool)

(assert (=> d!210044 (isPrefix!812 lt!254341 (++!1672 lt!254341 (_2!3695 (v!16421 lt!254330))))))

(declare-fun lt!254504 () Unit!10856)

(assert (=> d!210044 (= lt!254504 (choose!4348 lt!254341 (_2!3695 (v!16421 lt!254330))))))

(assert (=> d!210044 (= (lemmaConcatTwoListThenFirstIsPrefix!657 lt!254341 (_2!3695 (v!16421 lt!254330))) lt!254504)))

(declare-fun bs!70707 () Bool)

(assert (= bs!70707 d!210044))

(assert (=> bs!70707 m!860835))

(assert (=> bs!70707 m!860835))

(assert (=> bs!70707 m!860843))

(declare-fun m!861229 () Bool)

(assert (=> bs!70707 m!861229))

(assert (=> b!597551 d!210044))

(declare-fun d!210046 () Bool)

(declare-fun e!362049 () Bool)

(assert (=> d!210046 e!362049))

(declare-fun res!258330 () Bool)

(assert (=> d!210046 (=> (not res!258330) (not e!362049))))

(assert (=> d!210046 (= res!258330 (semiInverseModEq!468 (toChars!1934 (transformation!1184 (rule!1954 token!491))) (toValue!2075 (transformation!1184 (rule!1954 token!491)))))))

(declare-fun Unit!10868 () Unit!10856)

(assert (=> d!210046 (= (lemmaInv!292 (transformation!1184 (rule!1954 token!491))) Unit!10868)))

(declare-fun b!597796 () Bool)

(assert (=> b!597796 (= e!362049 (equivClasses!451 (toChars!1934 (transformation!1184 (rule!1954 token!491))) (toValue!2075 (transformation!1184 (rule!1954 token!491)))))))

(assert (= (and d!210046 res!258330) b!597796))

(assert (=> d!210046 m!861005))

(assert (=> b!597796 m!861007))

(assert (=> b!597551 d!210046))

(declare-fun d!210048 () Bool)

(assert (=> d!210048 (= (apply!1437 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330)))) (seqFromList!1360 lt!254341)) (dynLambda!3446 (toValue!2075 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330))))) (seqFromList!1360 lt!254341)))))

(declare-fun b_lambda!23555 () Bool)

(assert (=> (not b_lambda!23555) (not d!210048)))

(declare-fun tb!52135 () Bool)

(declare-fun t!79581 () Bool)

(assert (=> (and b!597563 (= (toValue!2075 (transformation!1184 (h!11370 rules!3103))) (toValue!2075 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330)))))) t!79581) tb!52135))

(declare-fun result!58604 () Bool)

(assert (=> tb!52135 (= result!58604 (inv!21 (dynLambda!3446 (toValue!2075 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330))))) (seqFromList!1360 lt!254341))))))

(declare-fun m!861231 () Bool)

(assert (=> tb!52135 m!861231))

(assert (=> d!210048 t!79581))

(declare-fun b_and!59023 () Bool)

(assert (= b_and!59011 (and (=> t!79581 result!58604) b_and!59023)))

(declare-fun t!79583 () Bool)

(declare-fun tb!52137 () Bool)

(assert (=> (and b!597558 (= (toValue!2075 (transformation!1184 (rule!1954 token!491))) (toValue!2075 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330)))))) t!79583) tb!52137))

(declare-fun result!58606 () Bool)

(assert (= result!58606 result!58604))

(assert (=> d!210048 t!79583))

(declare-fun b_and!59025 () Bool)

(assert (= b_and!59013 (and (=> t!79583 result!58606) b_and!59025)))

(assert (=> d!210048 m!860863))

(declare-fun m!861233 () Bool)

(assert (=> d!210048 m!861233))

(assert (=> b!597551 d!210048))

(declare-fun d!210050 () Bool)

(assert (=> d!210050 (= (list!2499 (charsOf!813 (_1!3695 (v!16421 lt!254330)))) (list!2501 (c!111072 (charsOf!813 (_1!3695 (v!16421 lt!254330))))))))

(declare-fun bs!70708 () Bool)

(assert (= bs!70708 d!210050))

(declare-fun m!861235 () Bool)

(assert (=> bs!70708 m!861235))

(assert (=> b!597551 d!210050))

(declare-fun d!210052 () Bool)

(declare-fun res!258333 () Bool)

(declare-fun e!362053 () Bool)

(assert (=> d!210052 (=> (not res!258333) (not e!362053))))

(declare-fun rulesValid!432 (LexerInterface!1070 List!5979) Bool)

(assert (=> d!210052 (= res!258333 (rulesValid!432 thiss!22590 rules!3103))))

(assert (=> d!210052 (= (rulesInvariant!1033 thiss!22590 rules!3103) e!362053)))

(declare-fun b!597799 () Bool)

(declare-datatypes ((List!5983 0))(
  ( (Nil!5973) (Cons!5973 (h!11374 String!7786) (t!79604 List!5983)) )
))
(declare-fun noDuplicateTag!432 (LexerInterface!1070 List!5979 List!5983) Bool)

(assert (=> b!597799 (= e!362053 (noDuplicateTag!432 thiss!22590 rules!3103 Nil!5973))))

(assert (= (and d!210052 res!258333) b!597799))

(declare-fun m!861237 () Bool)

(assert (=> d!210052 m!861237))

(declare-fun m!861239 () Bool)

(assert (=> b!597799 m!861239))

(assert (=> b!597555 d!210052))

(declare-fun b!597810 () Bool)

(declare-fun e!362061 () Bool)

(declare-fun e!362060 () Bool)

(assert (=> b!597810 (= e!362061 e!362060)))

(declare-fun c!111105 () Bool)

(assert (=> b!597810 (= c!111105 (is-IntegerValue!3625 (value!38612 token!491)))))

(declare-fun b!597811 () Bool)

(declare-fun inv!17 (TokenValue!1208) Bool)

(assert (=> b!597811 (= e!362060 (inv!17 (value!38612 token!491)))))

(declare-fun b!597812 () Bool)

(declare-fun res!258336 () Bool)

(declare-fun e!362062 () Bool)

(assert (=> b!597812 (=> res!258336 e!362062)))

(assert (=> b!597812 (= res!258336 (not (is-IntegerValue!3626 (value!38612 token!491))))))

(assert (=> b!597812 (= e!362060 e!362062)))

(declare-fun b!597813 () Bool)

(declare-fun inv!16 (TokenValue!1208) Bool)

(assert (=> b!597813 (= e!362061 (inv!16 (value!38612 token!491)))))

(declare-fun d!210054 () Bool)

(declare-fun c!111106 () Bool)

(assert (=> d!210054 (= c!111106 (is-IntegerValue!3624 (value!38612 token!491)))))

(assert (=> d!210054 (= (inv!21 (value!38612 token!491)) e!362061)))

(declare-fun b!597814 () Bool)

(declare-fun inv!15 (TokenValue!1208) Bool)

(assert (=> b!597814 (= e!362062 (inv!15 (value!38612 token!491)))))

(assert (= (and d!210054 c!111106) b!597813))

(assert (= (and d!210054 (not c!111106)) b!597810))

(assert (= (and b!597810 c!111105) b!597811))

(assert (= (and b!597810 (not c!111105)) b!597812))

(assert (= (and b!597812 (not res!258336)) b!597814))

(declare-fun m!861241 () Bool)

(assert (=> b!597811 m!861241))

(declare-fun m!861243 () Bool)

(assert (=> b!597813 m!861243))

(declare-fun m!861245 () Bool)

(assert (=> b!597814 m!861245))

(assert (=> b!597565 d!210054))

(declare-fun d!210056 () Bool)

(assert (=> d!210056 (= (get!2291 lt!254327) (v!16421 lt!254327))))

(assert (=> b!597554 d!210056))

(declare-fun b!597815 () Bool)

(declare-fun res!258339 () Bool)

(declare-fun e!362064 () Bool)

(assert (=> b!597815 (=> (not res!258339) (not e!362064))))

(declare-fun lt!254505 () Option!1535)

(assert (=> b!597815 (= res!258339 (= (list!2499 (charsOf!813 (_1!3695 (get!2291 lt!254505)))) (originalCharacters!1223 (_1!3695 (get!2291 lt!254505)))))))

(declare-fun bm!40420 () Bool)

(declare-fun call!40425 () Option!1535)

(assert (=> bm!40420 (= call!40425 (maxPrefixOneRule!433 thiss!22590 (h!11370 rules!3103) input!2705))))

(declare-fun d!210058 () Bool)

(declare-fun e!362065 () Bool)

(assert (=> d!210058 e!362065))

(declare-fun res!258337 () Bool)

(assert (=> d!210058 (=> res!258337 e!362065)))

(assert (=> d!210058 (= res!258337 (isEmpty!4311 lt!254505))))

(declare-fun e!362063 () Option!1535)

(assert (=> d!210058 (= lt!254505 e!362063)))

(declare-fun c!111107 () Bool)

(assert (=> d!210058 (= c!111107 (and (is-Cons!5969 rules!3103) (is-Nil!5969 (t!79560 rules!3103))))))

(declare-fun lt!254508 () Unit!10856)

(declare-fun lt!254507 () Unit!10856)

(assert (=> d!210058 (= lt!254508 lt!254507)))

(assert (=> d!210058 (isPrefix!812 input!2705 input!2705)))

(assert (=> d!210058 (= lt!254507 (lemmaIsPrefixRefl!548 input!2705 input!2705))))

(assert (=> d!210058 (rulesValidInductive!437 thiss!22590 rules!3103)))

(assert (=> d!210058 (= (maxPrefix!768 thiss!22590 rules!3103 input!2705) lt!254505)))

(declare-fun b!597816 () Bool)

(declare-fun res!258341 () Bool)

(assert (=> b!597816 (=> (not res!258341) (not e!362064))))

(assert (=> b!597816 (= res!258341 (matchR!629 (regex!1184 (rule!1954 (_1!3695 (get!2291 lt!254505)))) (list!2499 (charsOf!813 (_1!3695 (get!2291 lt!254505))))))))

(declare-fun b!597817 () Bool)

(declare-fun lt!254506 () Option!1535)

(declare-fun lt!254509 () Option!1535)

(assert (=> b!597817 (= e!362063 (ite (and (is-None!1534 lt!254506) (is-None!1534 lt!254509)) None!1534 (ite (is-None!1534 lt!254509) lt!254506 (ite (is-None!1534 lt!254506) lt!254509 (ite (>= (size!4702 (_1!3695 (v!16421 lt!254506))) (size!4702 (_1!3695 (v!16421 lt!254509)))) lt!254506 lt!254509)))))))

(assert (=> b!597817 (= lt!254506 call!40425)))

(assert (=> b!597817 (= lt!254509 (maxPrefix!768 thiss!22590 (t!79560 rules!3103) input!2705))))

(declare-fun b!597818 () Bool)

(assert (=> b!597818 (= e!362064 (contains!1394 rules!3103 (rule!1954 (_1!3695 (get!2291 lt!254505)))))))

(declare-fun b!597819 () Bool)

(declare-fun res!258343 () Bool)

(assert (=> b!597819 (=> (not res!258343) (not e!362064))))

(assert (=> b!597819 (= res!258343 (= (++!1672 (list!2499 (charsOf!813 (_1!3695 (get!2291 lt!254505)))) (_2!3695 (get!2291 lt!254505))) input!2705))))

(declare-fun b!597820 () Bool)

(declare-fun res!258340 () Bool)

(assert (=> b!597820 (=> (not res!258340) (not e!362064))))

(assert (=> b!597820 (= res!258340 (= (value!38612 (_1!3695 (get!2291 lt!254505))) (apply!1437 (transformation!1184 (rule!1954 (_1!3695 (get!2291 lt!254505)))) (seqFromList!1360 (originalCharacters!1223 (_1!3695 (get!2291 lt!254505)))))))))

(declare-fun b!597821 () Bool)

(declare-fun res!258338 () Bool)

(assert (=> b!597821 (=> (not res!258338) (not e!362064))))

(assert (=> b!597821 (= res!258338 (< (size!4703 (_2!3695 (get!2291 lt!254505))) (size!4703 input!2705)))))

(declare-fun b!597822 () Bool)

(assert (=> b!597822 (= e!362063 call!40425)))

(declare-fun b!597823 () Bool)

(assert (=> b!597823 (= e!362065 e!362064)))

(declare-fun res!258342 () Bool)

(assert (=> b!597823 (=> (not res!258342) (not e!362064))))

(assert (=> b!597823 (= res!258342 (isDefined!1346 lt!254505))))

(assert (= (and d!210058 c!111107) b!597822))

(assert (= (and d!210058 (not c!111107)) b!597817))

(assert (= (or b!597822 b!597817) bm!40420))

(assert (= (and d!210058 (not res!258337)) b!597823))

(assert (= (and b!597823 res!258342) b!597815))

(assert (= (and b!597815 res!258339) b!597821))

(assert (= (and b!597821 res!258338) b!597819))

(assert (= (and b!597819 res!258343) b!597820))

(assert (= (and b!597820 res!258340) b!597816))

(assert (= (and b!597816 res!258341) b!597818))

(declare-fun m!861247 () Bool)

(assert (=> d!210058 m!861247))

(assert (=> d!210058 m!860881))

(assert (=> d!210058 m!860851))

(assert (=> d!210058 m!861031))

(declare-fun m!861249 () Bool)

(assert (=> bm!40420 m!861249))

(declare-fun m!861251 () Bool)

(assert (=> b!597820 m!861251))

(declare-fun m!861253 () Bool)

(assert (=> b!597820 m!861253))

(assert (=> b!597820 m!861253))

(declare-fun m!861255 () Bool)

(assert (=> b!597820 m!861255))

(assert (=> b!597815 m!861251))

(declare-fun m!861257 () Bool)

(assert (=> b!597815 m!861257))

(assert (=> b!597815 m!861257))

(declare-fun m!861259 () Bool)

(assert (=> b!597815 m!861259))

(declare-fun m!861261 () Bool)

(assert (=> b!597817 m!861261))

(assert (=> b!597821 m!861251))

(declare-fun m!861263 () Bool)

(assert (=> b!597821 m!861263))

(assert (=> b!597821 m!861079))

(assert (=> b!597819 m!861251))

(assert (=> b!597819 m!861257))

(assert (=> b!597819 m!861257))

(assert (=> b!597819 m!861259))

(assert (=> b!597819 m!861259))

(declare-fun m!861265 () Bool)

(assert (=> b!597819 m!861265))

(assert (=> b!597818 m!861251))

(declare-fun m!861267 () Bool)

(assert (=> b!597818 m!861267))

(assert (=> b!597816 m!861251))

(assert (=> b!597816 m!861257))

(assert (=> b!597816 m!861257))

(assert (=> b!597816 m!861259))

(assert (=> b!597816 m!861259))

(declare-fun m!861269 () Bool)

(assert (=> b!597816 m!861269))

(declare-fun m!861271 () Bool)

(assert (=> b!597823 m!861271))

(assert (=> b!597569 d!210058))

(declare-fun d!210060 () Bool)

(declare-fun res!258348 () Bool)

(declare-fun e!362068 () Bool)

(assert (=> d!210060 (=> (not res!258348) (not e!362068))))

(assert (=> d!210060 (= res!258348 (not (isEmpty!4307 (originalCharacters!1223 token!491))))))

(assert (=> d!210060 (= (inv!7565 token!491) e!362068)))

(declare-fun b!597828 () Bool)

(declare-fun res!258349 () Bool)

(assert (=> b!597828 (=> (not res!258349) (not e!362068))))

(assert (=> b!597828 (= res!258349 (= (originalCharacters!1223 token!491) (list!2499 (dynLambda!3445 (toChars!1934 (transformation!1184 (rule!1954 token!491))) (value!38612 token!491)))))))

(declare-fun b!597829 () Bool)

(assert (=> b!597829 (= e!362068 (= (size!4702 token!491) (size!4703 (originalCharacters!1223 token!491))))))

(assert (= (and d!210060 res!258348) b!597828))

(assert (= (and b!597828 res!258349) b!597829))

(declare-fun b_lambda!23557 () Bool)

(assert (=> (not b_lambda!23557) (not b!597828)))

(assert (=> b!597828 t!79565))

(declare-fun b_and!59027 () Bool)

(assert (= b_and!59015 (and (=> t!79565 result!58582) b_and!59027)))

(assert (=> b!597828 t!79567))

(declare-fun b_and!59029 () Bool)

(assert (= b_and!59017 (and (=> t!79567 result!58586) b_and!59029)))

(declare-fun m!861273 () Bool)

(assert (=> d!210060 m!861273))

(assert (=> b!597828 m!861017))

(assert (=> b!597828 m!861017))

(declare-fun m!861275 () Bool)

(assert (=> b!597828 m!861275))

(assert (=> b!597829 m!860819))

(assert (=> start!56478 d!210060))

(declare-fun d!210062 () Bool)

(declare-fun lt!254510 () Int)

(assert (=> d!210062 (>= lt!254510 0)))

(declare-fun e!362069 () Int)

(assert (=> d!210062 (= lt!254510 e!362069)))

(declare-fun c!111108 () Bool)

(assert (=> d!210062 (= c!111108 (is-Nil!5967 (originalCharacters!1223 token!491)))))

(assert (=> d!210062 (= (size!4703 (originalCharacters!1223 token!491)) lt!254510)))

(declare-fun b!597830 () Bool)

(assert (=> b!597830 (= e!362069 0)))

(declare-fun b!597831 () Bool)

(assert (=> b!597831 (= e!362069 (+ 1 (size!4703 (t!79558 (originalCharacters!1223 token!491)))))))

(assert (= (and d!210062 c!111108) b!597830))

(assert (= (and d!210062 (not c!111108)) b!597831))

(declare-fun m!861277 () Bool)

(assert (=> b!597831 m!861277))

(assert (=> b!597568 d!210062))

(declare-fun d!210064 () Bool)

(declare-fun e!362070 () Bool)

(assert (=> d!210064 e!362070))

(declare-fun res!258350 () Bool)

(assert (=> d!210064 (=> (not res!258350) (not e!362070))))

(declare-fun lt!254511 () List!5977)

(assert (=> d!210064 (= res!258350 (= (content!1070 lt!254511) (set.union (content!1070 lt!254334) (content!1070 suffix!1342))))))

(declare-fun e!362071 () List!5977)

(assert (=> d!210064 (= lt!254511 e!362071)))

(declare-fun c!111109 () Bool)

(assert (=> d!210064 (= c!111109 (is-Nil!5967 lt!254334))))

(assert (=> d!210064 (= (++!1672 lt!254334 suffix!1342) lt!254511)))

(declare-fun b!597832 () Bool)

(assert (=> b!597832 (= e!362071 suffix!1342)))

(declare-fun b!597833 () Bool)

(assert (=> b!597833 (= e!362071 (Cons!5967 (h!11368 lt!254334) (++!1672 (t!79558 lt!254334) suffix!1342)))))

(declare-fun b!597834 () Bool)

(declare-fun res!258351 () Bool)

(assert (=> b!597834 (=> (not res!258351) (not e!362070))))

(assert (=> b!597834 (= res!258351 (= (size!4703 lt!254511) (+ (size!4703 lt!254334) (size!4703 suffix!1342))))))

(declare-fun b!597835 () Bool)

(assert (=> b!597835 (= e!362070 (or (not (= suffix!1342 Nil!5967)) (= lt!254511 lt!254334)))))

(assert (= (and d!210064 c!111109) b!597832))

(assert (= (and d!210064 (not c!111109)) b!597833))

(assert (= (and d!210064 res!258350) b!597834))

(assert (= (and b!597834 res!258351) b!597835))

(declare-fun m!861279 () Bool)

(assert (=> d!210064 m!861279))

(declare-fun m!861281 () Bool)

(assert (=> d!210064 m!861281))

(assert (=> d!210064 m!861073))

(declare-fun m!861283 () Bool)

(assert (=> b!597833 m!861283))

(declare-fun m!861285 () Bool)

(assert (=> b!597834 m!861285))

(assert (=> b!597834 m!860877))

(assert (=> b!597834 m!861081))

(assert (=> b!597557 d!210064))

(declare-fun d!210066 () Bool)

(assert (=> d!210066 (= (inv!7561 (tag!1446 (h!11370 rules!3103))) (= (mod (str.len (value!38611 (tag!1446 (h!11370 rules!3103)))) 2) 0))))

(assert (=> b!597567 d!210066))

(declare-fun d!210068 () Bool)

(declare-fun res!258352 () Bool)

(declare-fun e!362072 () Bool)

(assert (=> d!210068 (=> (not res!258352) (not e!362072))))

(assert (=> d!210068 (= res!258352 (semiInverseModEq!468 (toChars!1934 (transformation!1184 (h!11370 rules!3103))) (toValue!2075 (transformation!1184 (h!11370 rules!3103)))))))

(assert (=> d!210068 (= (inv!7564 (transformation!1184 (h!11370 rules!3103))) e!362072)))

(declare-fun b!597836 () Bool)

(assert (=> b!597836 (= e!362072 (equivClasses!451 (toChars!1934 (transformation!1184 (h!11370 rules!3103))) (toValue!2075 (transformation!1184 (h!11370 rules!3103)))))))

(assert (= (and d!210068 res!258352) b!597836))

(declare-fun m!861287 () Bool)

(assert (=> d!210068 m!861287))

(declare-fun m!861289 () Bool)

(assert (=> b!597836 m!861289))

(assert (=> b!597567 d!210068))

(declare-fun b!597841 () Bool)

(declare-fun e!362075 () Bool)

(declare-fun tp!186382 () Bool)

(assert (=> b!597841 (= e!362075 (and tp_is_empty!3391 tp!186382))))

(assert (=> b!597561 (= tp!186338 e!362075)))

(assert (= (and b!597561 (is-Cons!5967 (t!79558 input!2705))) b!597841))

(declare-fun b!597855 () Bool)

(declare-fun e!362078 () Bool)

(declare-fun tp!186395 () Bool)

(declare-fun tp!186393 () Bool)

(assert (=> b!597855 (= e!362078 (and tp!186395 tp!186393))))

(declare-fun b!597852 () Bool)

(assert (=> b!597852 (= e!362078 tp_is_empty!3391)))

(declare-fun b!597853 () Bool)

(declare-fun tp!186397 () Bool)

(declare-fun tp!186394 () Bool)

(assert (=> b!597853 (= e!362078 (and tp!186397 tp!186394))))

(declare-fun b!597854 () Bool)

(declare-fun tp!186396 () Bool)

(assert (=> b!597854 (= e!362078 tp!186396)))

(assert (=> b!597550 (= tp!186341 e!362078)))

(assert (= (and b!597550 (is-ElementMatch!1518 (regex!1184 (rule!1954 token!491)))) b!597852))

(assert (= (and b!597550 (is-Concat!2726 (regex!1184 (rule!1954 token!491)))) b!597853))

(assert (= (and b!597550 (is-Star!1518 (regex!1184 (rule!1954 token!491)))) b!597854))

(assert (= (and b!597550 (is-Union!1518 (regex!1184 (rule!1954 token!491)))) b!597855))

(declare-fun b!597856 () Bool)

(declare-fun e!362079 () Bool)

(declare-fun tp!186398 () Bool)

(assert (=> b!597856 (= e!362079 (and tp_is_empty!3391 tp!186398))))

(assert (=> b!597566 (= tp!186333 e!362079)))

(assert (= (and b!597566 (is-Cons!5967 (t!79558 suffix!1342))) b!597856))

(declare-fun b!597857 () Bool)

(declare-fun e!362080 () Bool)

(declare-fun tp!186399 () Bool)

(assert (=> b!597857 (= e!362080 (and tp_is_empty!3391 tp!186399))))

(assert (=> b!597565 (= tp!186334 e!362080)))

(assert (= (and b!597565 (is-Cons!5967 (originalCharacters!1223 token!491))) b!597857))

(declare-fun b!597861 () Bool)

(declare-fun e!362081 () Bool)

(declare-fun tp!186402 () Bool)

(declare-fun tp!186400 () Bool)

(assert (=> b!597861 (= e!362081 (and tp!186402 tp!186400))))

(declare-fun b!597858 () Bool)

(assert (=> b!597858 (= e!362081 tp_is_empty!3391)))

(declare-fun b!597859 () Bool)

(declare-fun tp!186404 () Bool)

(declare-fun tp!186401 () Bool)

(assert (=> b!597859 (= e!362081 (and tp!186404 tp!186401))))

(declare-fun b!597860 () Bool)

(declare-fun tp!186403 () Bool)

(assert (=> b!597860 (= e!362081 tp!186403)))

(assert (=> b!597567 (= tp!186340 e!362081)))

(assert (= (and b!597567 (is-ElementMatch!1518 (regex!1184 (h!11370 rules!3103)))) b!597858))

(assert (= (and b!597567 (is-Concat!2726 (regex!1184 (h!11370 rules!3103)))) b!597859))

(assert (= (and b!597567 (is-Star!1518 (regex!1184 (h!11370 rules!3103)))) b!597860))

(assert (= (and b!597567 (is-Union!1518 (regex!1184 (h!11370 rules!3103)))) b!597861))

(declare-fun b!597872 () Bool)

(declare-fun b_free!16981 () Bool)

(declare-fun b_next!16997 () Bool)

(assert (=> b!597872 (= b_free!16981 (not b_next!16997))))

(declare-fun t!79585 () Bool)

(declare-fun tb!52139 () Bool)

(assert (=> (and b!597872 (= (toValue!2075 (transformation!1184 (h!11370 (t!79560 rules!3103)))) (toValue!2075 (transformation!1184 (rule!1954 token!491)))) t!79585) tb!52139))

(declare-fun result!58614 () Bool)

(assert (= result!58614 result!58594))

(assert (=> d!209980 t!79585))

(declare-fun tb!52141 () Bool)

(declare-fun t!79587 () Bool)

(assert (=> (and b!597872 (= (toValue!2075 (transformation!1184 (h!11370 (t!79560 rules!3103)))) (toValue!2075 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330)))))) t!79587) tb!52141))

(declare-fun result!58616 () Bool)

(assert (= result!58616 result!58604))

(assert (=> d!210048 t!79587))

(declare-fun b_and!59031 () Bool)

(declare-fun tp!186416 () Bool)

(assert (=> b!597872 (= tp!186416 (and (=> t!79585 result!58614) (=> t!79587 result!58616) b_and!59031))))

(declare-fun b_free!16983 () Bool)

(declare-fun b_next!16999 () Bool)

(assert (=> b!597872 (= b_free!16983 (not b_next!16999))))

(declare-fun t!79589 () Bool)

(declare-fun tb!52143 () Bool)

(assert (=> (and b!597872 (= (toChars!1934 (transformation!1184 (h!11370 (t!79560 rules!3103)))) (toChars!1934 (transformation!1184 (rule!1954 token!491)))) t!79589) tb!52143))

(declare-fun result!58618 () Bool)

(assert (= result!58618 result!58582))

(assert (=> d!209956 t!79589))

(declare-fun t!79591 () Bool)

(declare-fun tb!52145 () Bool)

(assert (=> (and b!597872 (= (toChars!1934 (transformation!1184 (h!11370 (t!79560 rules!3103)))) (toChars!1934 (transformation!1184 (rule!1954 (_1!3695 (v!16421 lt!254330)))))) t!79591) tb!52145))

(declare-fun result!58620 () Bool)

(assert (= result!58620 result!58600))

(assert (=> d!210032 t!79591))

(assert (=> b!597828 t!79589))

(declare-fun tp!186415 () Bool)

(declare-fun b_and!59033 () Bool)

(assert (=> b!597872 (= tp!186415 (and (=> t!79589 result!58618) (=> t!79591 result!58620) b_and!59033))))

(declare-fun e!362090 () Bool)

(assert (=> b!597872 (= e!362090 (and tp!186416 tp!186415))))

(declare-fun e!362093 () Bool)

(declare-fun b!597871 () Bool)

(declare-fun tp!186413 () Bool)

(assert (=> b!597871 (= e!362093 (and tp!186413 (inv!7561 (tag!1446 (h!11370 (t!79560 rules!3103)))) (inv!7564 (transformation!1184 (h!11370 (t!79560 rules!3103)))) e!362090))))

(declare-fun b!597870 () Bool)

(declare-fun e!362091 () Bool)

(declare-fun tp!186414 () Bool)

(assert (=> b!597870 (= e!362091 (and e!362093 tp!186414))))

(assert (=> b!597556 (= tp!186337 e!362091)))

(assert (= b!597871 b!597872))

(assert (= b!597870 b!597871))

(assert (= (and b!597556 (is-Cons!5969 (t!79560 rules!3103))) b!597870))

(declare-fun m!861291 () Bool)

(assert (=> b!597871 m!861291))

(declare-fun m!861293 () Bool)

(assert (=> b!597871 m!861293))

(declare-fun b_lambda!23559 () Bool)

(assert (= b_lambda!23549 (or (and b!597563 b_free!16965 (= (toValue!2075 (transformation!1184 (h!11370 rules!3103))) (toValue!2075 (transformation!1184 (rule!1954 token!491))))) (and b!597558 b_free!16969) (and b!597872 b_free!16981 (= (toValue!2075 (transformation!1184 (h!11370 (t!79560 rules!3103)))) (toValue!2075 (transformation!1184 (rule!1954 token!491))))) b_lambda!23559)))

(declare-fun b_lambda!23561 () Bool)

(assert (= b_lambda!23545 (or (and b!597563 b_free!16967 (= (toChars!1934 (transformation!1184 (h!11370 rules!3103))) (toChars!1934 (transformation!1184 (rule!1954 token!491))))) (and b!597558 b_free!16971) (and b!597872 b_free!16983 (= (toChars!1934 (transformation!1184 (h!11370 (t!79560 rules!3103)))) (toChars!1934 (transformation!1184 (rule!1954 token!491))))) b_lambda!23561)))

(declare-fun b_lambda!23563 () Bool)

(assert (= b_lambda!23557 (or (and b!597563 b_free!16967 (= (toChars!1934 (transformation!1184 (h!11370 rules!3103))) (toChars!1934 (transformation!1184 (rule!1954 token!491))))) (and b!597558 b_free!16971) (and b!597872 b_free!16983 (= (toChars!1934 (transformation!1184 (h!11370 (t!79560 rules!3103)))) (toChars!1934 (transformation!1184 (rule!1954 token!491))))) b_lambda!23563)))

(push 1)

(assert (not b!597730))

(assert (not d!210008))

(assert (not b!597657))

(assert (not b!597860))

(assert (not b!597857))

(assert tp_is_empty!3391)

(assert (not d!210020))

(assert (not b!597740))

(assert (not d!210058))

(assert (not b!597794))

(assert (not b!597828))

(assert b_and!59029)

(assert (not d!210064))

(assert (not b!597687))

(assert (not b!597813))

(assert b_and!59033)

(assert (not tb!52131))

(assert (not b_next!16999))

(assert (not b!597712))

(assert (not b!597799))

(assert b_and!59025)

(assert (not b!597817))

(assert (not d!209986))

(assert (not b!597773))

(assert (not b_next!16997))

(assert b_and!59031)

(assert (not d!210068))

(assert (not b!597711))

(assert (not b!597741))

(assert (not d!210016))

(assert (not b!597682))

(assert (not b!597833))

(assert (not d!209970))

(assert (not d!209956))

(assert (not b!597834))

(assert (not b!597779))

(assert (not b!597688))

(assert (not d!209994))

(assert (not bm!40419))

(assert (not b!597823))

(assert (not d!210034))

(assert (not b!597742))

(assert (not b!597772))

(assert (not d!210060))

(assert (not d!209992))

(assert (not b!597782))

(assert (not d!209950))

(assert (not b!597791))

(assert (not b!597718))

(assert (not b!597690))

(assert (not b_next!16981))

(assert (not b!597820))

(assert (not b!597790))

(assert (not d!210030))

(assert (not d!210028))

(assert (not tb!52135))

(assert (not tb!52127))

(assert (not b_lambda!23559))

(assert (not b!597752))

(assert (not d!210050))

(assert (not b!597815))

(assert (not d!210038))

(assert (not b!597816))

(assert (not b!597683))

(assert (not b!597646))

(assert (not d!210010))

(assert (not b!597787))

(assert (not d!210026))

(assert (not b!597854))

(assert (not b!597793))

(assert (not b!597836))

(assert b_and!59023)

(assert (not b!597758))

(assert (not d!209962))

(assert (not b!597841))

(assert (not b!597777))

(assert (not b!597686))

(assert (not b_lambda!23561))

(assert (not d!209974))

(assert (not b!597684))

(assert (not b!597785))

(assert (not b_next!16987))

(assert (not b!597814))

(assert (not tb!52119))

(assert (not b!597774))

(assert (not b!597651))

(assert (not d!209978))

(assert (not b!597796))

(assert (not d!209998))

(assert (not b!597861))

(assert (not b!597853))

(assert (not d!210042))

(assert (not b!597819))

(assert (not b!597831))

(assert (not d!210044))

(assert (not d!209964))

(assert (not b!597859))

(assert (not b!597789))

(assert (not d!210006))

(assert (not b!597760))

(assert (not d!210032))

(assert (not b_next!16985))

(assert (not b!597829))

(assert (not d!210052))

(assert (not d!209982))

(assert (not d!209954))

(assert (not b!597685))

(assert (not b!597811))

(assert (not b_next!16983))

(assert (not b!597871))

(assert (not b!597818))

(assert (not b_lambda!23555))

(assert (not b!597767))

(assert (not d!210046))

(assert (not b!597784))

(assert (not b_lambda!23563))

(assert (not b!597759))

(assert (not b!597856))

(assert (not b!597855))

(assert (not b!597870))

(assert (not b!597778))

(assert b_and!59027)

(assert (not d!210004))

(assert (not bm!40420))

(assert (not b_lambda!23551))

(assert (not b!597821))

(assert (not b!597771))

(check-sat)

(pop 1)

(push 1)

(assert b_and!59029)

(assert b_and!59025)

(assert (not b_next!16981))

(assert b_and!59023)

(assert (not b_next!16987))

(assert (not b_next!16985))

(assert (not b_next!16983))

(assert b_and!59027)

(assert b_and!59033)

(assert (not b_next!16999))

(assert (not b_next!16997))

(assert b_and!59031)

(check-sat)

(pop 1)

