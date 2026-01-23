; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50248 () Bool)

(assert start!50248)

(declare-fun b!544541 () Bool)

(declare-fun b_free!15121 () Bool)

(declare-fun b_next!15137 () Bool)

(assert (=> b!544541 (= b_free!15121 (not b_next!15137))))

(declare-fun tp!173095 () Bool)

(declare-fun b_and!53163 () Bool)

(assert (=> b!544541 (= tp!173095 b_and!53163)))

(declare-fun b_free!15123 () Bool)

(declare-fun b_next!15139 () Bool)

(assert (=> b!544541 (= b_free!15123 (not b_next!15139))))

(declare-fun tp!173092 () Bool)

(declare-fun b_and!53165 () Bool)

(assert (=> b!544541 (= tp!173092 b_and!53165)))

(declare-fun b!544545 () Bool)

(declare-fun b_free!15125 () Bool)

(declare-fun b_next!15141 () Bool)

(assert (=> b!544545 (= b_free!15125 (not b_next!15141))))

(declare-fun tp!173094 () Bool)

(declare-fun b_and!53167 () Bool)

(assert (=> b!544545 (= tp!173094 b_and!53167)))

(declare-fun b_free!15127 () Bool)

(declare-fun b_next!15143 () Bool)

(assert (=> b!544545 (= b_free!15127 (not b_next!15143))))

(declare-fun tp!173089 () Bool)

(declare-fun b_and!53169 () Bool)

(assert (=> b!544545 (= tp!173089 b_and!53169)))

(declare-fun b!544525 () Bool)

(declare-datatypes ((Unit!9388 0))(
  ( (Unit!9389) )
))
(declare-fun e!329061 () Unit!9388)

(declare-fun Unit!9390 () Unit!9388)

(assert (=> b!544525 (= e!329061 Unit!9390)))

(assert (=> b!544525 false))

(declare-fun b!544526 () Bool)

(declare-fun e!329054 () Bool)

(declare-fun e!329056 () Bool)

(declare-fun tp!173090 () Bool)

(assert (=> b!544526 (= e!329054 (and e!329056 tp!173090))))

(declare-fun b!544527 () Bool)

(declare-fun e!329067 () Bool)

(declare-fun e!329071 () Bool)

(assert (=> b!544527 (= e!329067 e!329071)))

(declare-fun res!232352 () Bool)

(assert (=> b!544527 (=> (not res!232352) (not e!329071))))

(declare-datatypes ((C!3604 0))(
  ( (C!3605 (val!2028 Int)) )
))
(declare-datatypes ((List!5367 0))(
  ( (Nil!5357) (Cons!5357 (h!10758 C!3604) (t!74596 List!5367)) )
))
(declare-fun lt!227979 () List!5367)

(declare-fun lt!227995 () List!5367)

(assert (=> b!544527 (= res!232352 (= lt!227979 lt!227995))))

(declare-fun lt!228006 () List!5367)

(declare-fun suffix!1342 () List!5367)

(declare-fun ++!1495 (List!5367 List!5367) List!5367)

(assert (=> b!544527 (= lt!227979 (++!1495 lt!228006 suffix!1342))))

(declare-fun b!544528 () Bool)

(declare-fun res!232360 () Bool)

(declare-fun e!329077 () Bool)

(assert (=> b!544528 (=> res!232360 e!329077)))

(declare-datatypes ((Regex!1341 0))(
  ( (ElementMatch!1341 (c!102764 C!3604)) (Concat!2372 (regOne!3194 Regex!1341) (regTwo!3194 Regex!1341)) (EmptyExpr!1341) (Star!1341 (reg!1670 Regex!1341)) (EmptyLang!1341) (Union!1341 (regOne!3195 Regex!1341) (regTwo!3195 Regex!1341)) )
))
(declare-datatypes ((String!6898 0))(
  ( (String!6899 (value!33540 String)) )
))
(declare-datatypes ((List!5368 0))(
  ( (Nil!5358) (Cons!5358 (h!10759 (_ BitVec 16)) (t!74597 List!5368)) )
))
(declare-datatypes ((TokenValue!1031 0))(
  ( (FloatLiteralValue!2062 (text!7662 List!5368)) (TokenValueExt!1030 (__x!3960 Int)) (Broken!5155 (value!33541 List!5368)) (Object!1040) (End!1031) (Def!1031) (Underscore!1031) (Match!1031) (Else!1031) (Error!1031) (Case!1031) (If!1031) (Extends!1031) (Abstract!1031) (Class!1031) (Val!1031) (DelimiterValue!2062 (del!1091 List!5368)) (KeywordValue!1037 (value!33542 List!5368)) (CommentValue!2062 (value!33543 List!5368)) (WhitespaceValue!2062 (value!33544 List!5368)) (IndentationValue!1031 (value!33545 List!5368)) (String!6900) (Int32!1031) (Broken!5156 (value!33546 List!5368)) (Boolean!1032) (Unit!9391) (OperatorValue!1034 (op!1091 List!5368)) (IdentifierValue!2062 (value!33547 List!5368)) (IdentifierValue!2063 (value!33548 List!5368)) (WhitespaceValue!2063 (value!33549 List!5368)) (True!2062) (False!2062) (Broken!5157 (value!33550 List!5368)) (Broken!5158 (value!33551 List!5368)) (True!2063) (RightBrace!1031) (RightBracket!1031) (Colon!1031) (Null!1031) (Comma!1031) (LeftBracket!1031) (False!2063) (LeftBrace!1031) (ImaginaryLiteralValue!1031 (text!7663 List!5368)) (StringLiteralValue!3093 (value!33552 List!5368)) (EOFValue!1031 (value!33553 List!5368)) (IdentValue!1031 (value!33554 List!5368)) (DelimiterValue!2063 (value!33555 List!5368)) (DedentValue!1031 (value!33556 List!5368)) (NewLineValue!1031 (value!33557 List!5368)) (IntegerValue!3093 (value!33558 (_ BitVec 32)) (text!7664 List!5368)) (IntegerValue!3094 (value!33559 Int) (text!7665 List!5368)) (Times!1031) (Or!1031) (Equal!1031) (Minus!1031) (Broken!5159 (value!33560 List!5368)) (And!1031) (Div!1031) (LessEqual!1031) (Mod!1031) (Concat!2373) (Not!1031) (Plus!1031) (SpaceValue!1031 (value!33561 List!5368)) (IntegerValue!3095 (value!33562 Int) (text!7666 List!5368)) (StringLiteralValue!3094 (text!7667 List!5368)) (FloatLiteralValue!2063 (text!7668 List!5368)) (BytesLiteralValue!1031 (value!33563 List!5368)) (CommentValue!2063 (value!33564 List!5368)) (StringLiteralValue!3095 (value!33565 List!5368)) (ErrorTokenValue!1031 (msg!1092 List!5368)) )
))
(declare-datatypes ((IArray!3449 0))(
  ( (IArray!3450 (innerList!1782 List!5367)) )
))
(declare-datatypes ((Conc!1724 0))(
  ( (Node!1724 (left!4440 Conc!1724) (right!4770 Conc!1724) (csize!3678 Int) (cheight!1935 Int)) (Leaf!2735 (xs!4361 IArray!3449) (csize!3679 Int)) (Empty!1724) )
))
(declare-datatypes ((BalanceConc!3456 0))(
  ( (BalanceConc!3457 (c!102765 Conc!1724)) )
))
(declare-datatypes ((TokenValueInjection!1830 0))(
  ( (TokenValueInjection!1831 (toValue!1854 Int) (toChars!1713 Int)) )
))
(declare-datatypes ((Rule!1814 0))(
  ( (Rule!1815 (regex!1007 Regex!1341) (tag!1269 String!6898) (isSeparator!1007 Bool) (transformation!1007 TokenValueInjection!1830)) )
))
(declare-datatypes ((List!5369 0))(
  ( (Nil!5359) (Cons!5359 (h!10760 Rule!1814) (t!74598 List!5369)) )
))
(declare-fun rules!3103 () List!5369)

(declare-datatypes ((Token!1750 0))(
  ( (Token!1751 (value!33566 TokenValue!1031) (rule!1721 Rule!1814) (size!4296 Int) (originalCharacters!1046 List!5367)) )
))
(declare-datatypes ((tuple2!6396 0))(
  ( (tuple2!6397 (_1!3462 Token!1750) (_2!3462 List!5367)) )
))
(declare-datatypes ((Option!1357 0))(
  ( (None!1356) (Some!1356 (v!16171 tuple2!6396)) )
))
(declare-fun lt!228003 () Option!1357)

(declare-fun contains!1249 (List!5369 Rule!1814) Bool)

(assert (=> b!544528 (= res!232360 (not (contains!1249 rules!3103 (rule!1721 (_1!3462 (v!16171 lt!228003))))))))

(declare-fun b!544529 () Bool)

(declare-fun e!329055 () Unit!9388)

(declare-fun Unit!9392 () Unit!9388)

(assert (=> b!544529 (= e!329055 Unit!9392)))

(declare-fun lt!227978 () Unit!9388)

(declare-fun lt!227999 () BalanceConc!3456)

(declare-fun lemmaSemiInverse!136 (TokenValueInjection!1830 BalanceConc!3456) Unit!9388)

(assert (=> b!544529 (= lt!227978 (lemmaSemiInverse!136 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))) lt!227999))))

(declare-fun token!491 () Token!1750)

(declare-datatypes ((LexerInterface!893 0))(
  ( (LexerInterfaceExt!890 (__x!3961 Int)) (Lexer!891) )
))
(declare-fun thiss!22590 () LexerInterface!893)

(declare-fun input!2705 () List!5367)

(declare-fun lt!227984 () List!5367)

(declare-fun lt!227993 () Unit!9388)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!12 (LexerInterface!893 List!5369 Rule!1814 List!5367 List!5367 List!5367 Rule!1814) Unit!9388)

(assert (=> b!544529 (= lt!227993 (lemmaMaxPrefixOutputsMaxPrefix!12 thiss!22590 rules!3103 (rule!1721 (_1!3462 (v!16171 lt!228003))) lt!227984 input!2705 input!2705 (rule!1721 token!491)))))

(declare-fun res!232366 () Bool)

(declare-fun matchR!500 (Regex!1341 List!5367) Bool)

(assert (=> b!544529 (= res!232366 (not (matchR!500 (regex!1007 (rule!1721 token!491)) input!2705)))))

(declare-fun e!329062 () Bool)

(assert (=> b!544529 (=> (not res!232366) (not e!329062))))

(assert (=> b!544529 e!329062))

(declare-fun b!544531 () Bool)

(declare-fun res!232345 () Bool)

(declare-fun e!329074 () Bool)

(assert (=> b!544531 (=> (not res!232345) (not e!329074))))

(declare-fun size!4297 (List!5367) Int)

(assert (=> b!544531 (= res!232345 (= (size!4296 (_1!3462 (v!16171 lt!228003))) (size!4297 (originalCharacters!1046 (_1!3462 (v!16171 lt!228003))))))))

(declare-fun b!544532 () Bool)

(declare-fun res!232359 () Bool)

(assert (=> b!544532 (=> res!232359 e!329077)))

(declare-fun getIndex!8 (List!5369 Rule!1814) Int)

(assert (=> b!544532 (= res!232359 (>= (getIndex!8 rules!3103 (rule!1721 (_1!3462 (v!16171 lt!228003)))) (getIndex!8 rules!3103 (rule!1721 token!491))))))

(declare-fun e!329057 () Bool)

(declare-fun b!544533 () Bool)

(declare-fun tp!173096 () Bool)

(declare-fun inv!6717 (String!6898) Bool)

(declare-fun inv!6720 (TokenValueInjection!1830) Bool)

(assert (=> b!544533 (= e!329056 (and tp!173096 (inv!6717 (tag!1269 (h!10760 rules!3103))) (inv!6720 (transformation!1007 (h!10760 rules!3103))) e!329057))))

(declare-fun b!544534 () Bool)

(declare-fun rulesValidInductive!352 (LexerInterface!893 List!5369) Bool)

(assert (=> b!544534 (= e!329077 (rulesValidInductive!352 thiss!22590 rules!3103))))

(declare-fun b!544535 () Bool)

(declare-fun res!232356 () Bool)

(declare-fun e!329075 () Bool)

(assert (=> b!544535 (=> (not res!232356) (not e!329075))))

(assert (=> b!544535 (= res!232356 (= (size!4296 token!491) (size!4297 (originalCharacters!1046 token!491))))))

(declare-fun e!329066 () Bool)

(declare-fun b!544536 () Bool)

(declare-fun tp!173088 () Bool)

(declare-fun e!329073 () Bool)

(declare-fun inv!21 (TokenValue!1031) Bool)

(assert (=> b!544536 (= e!329073 (and (inv!21 (value!33566 token!491)) e!329066 tp!173088))))

(declare-fun b!544537 () Bool)

(declare-fun e!329079 () Bool)

(declare-fun lt!227994 () List!5367)

(assert (=> b!544537 (= e!329079 (= lt!227994 (_2!3462 (v!16171 lt!228003))))))

(declare-fun b!544538 () Bool)

(declare-fun e!329072 () Bool)

(assert (=> b!544538 (= e!329072 e!329077)))

(declare-fun res!232350 () Bool)

(assert (=> b!544538 (=> res!232350 e!329077)))

(declare-fun lt!228005 () Int)

(declare-fun lt!228007 () List!5367)

(declare-fun lt!227996 () Int)

(assert (=> b!544538 (= res!232350 (or (not (= lt!228005 lt!227996)) (not (= lt!228007 input!2705)) (not (= lt!228007 lt!228006))))))

(declare-fun lt!227982 () Unit!9388)

(declare-fun lt!228013 () BalanceConc!3456)

(assert (=> b!544538 (= lt!227982 (lemmaSemiInverse!136 (transformation!1007 (rule!1721 token!491)) lt!228013))))

(declare-fun lt!228008 () Unit!9388)

(assert (=> b!544538 (= lt!228008 (lemmaSemiInverse!136 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))) lt!227999))))

(declare-fun lt!227992 () Unit!9388)

(assert (=> b!544538 (= lt!227992 e!329055)))

(declare-fun c!102762 () Bool)

(assert (=> b!544538 (= c!102762 (< lt!228005 lt!227996))))

(declare-fun e!329069 () Bool)

(assert (=> b!544538 e!329069))

(declare-fun res!232346 () Bool)

(assert (=> b!544538 (=> (not res!232346) (not e!329069))))

(declare-fun lt!227987 () TokenValue!1031)

(declare-fun maxPrefixOneRule!306 (LexerInterface!893 Rule!1814 List!5367) Option!1357)

(assert (=> b!544538 (= res!232346 (= (maxPrefixOneRule!306 thiss!22590 (rule!1721 token!491) lt!227995) (Some!1356 (tuple2!6397 (Token!1751 lt!227987 (rule!1721 token!491) lt!227996 lt!228006) suffix!1342))))))

(declare-fun lt!227981 () Unit!9388)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!58 (LexerInterface!893 List!5369 List!5367 List!5367 List!5367 Rule!1814) Unit!9388)

(assert (=> b!544538 (= lt!227981 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!58 thiss!22590 rules!3103 lt!228006 lt!227995 suffix!1342 (rule!1721 token!491)))))

(declare-fun lt!227977 () TokenValue!1031)

(assert (=> b!544538 (= (maxPrefixOneRule!306 thiss!22590 (rule!1721 (_1!3462 (v!16171 lt!228003))) input!2705) (Some!1356 (tuple2!6397 (Token!1751 lt!227977 (rule!1721 (_1!3462 (v!16171 lt!228003))) lt!228005 lt!227984) (_2!3462 (v!16171 lt!228003)))))))

(declare-fun lt!228004 () Unit!9388)

(assert (=> b!544538 (= lt!228004 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!58 thiss!22590 rules!3103 lt!227984 input!2705 (_2!3462 (v!16171 lt!228003)) (rule!1721 (_1!3462 (v!16171 lt!228003)))))))

(assert (=> b!544538 e!329075))

(declare-fun res!232341 () Bool)

(assert (=> b!544538 (=> (not res!232341) (not e!329075))))

(assert (=> b!544538 (= res!232341 (= (value!33566 token!491) lt!227987))))

(declare-fun apply!1282 (TokenValueInjection!1830 BalanceConc!3456) TokenValue!1031)

(assert (=> b!544538 (= lt!227987 (apply!1282 (transformation!1007 (rule!1721 token!491)) lt!228013))))

(declare-fun seqFromList!1205 (List!5367) BalanceConc!3456)

(assert (=> b!544538 (= lt!228013 (seqFromList!1205 lt!228006))))

(declare-fun lt!228010 () List!5367)

(assert (=> b!544538 (= suffix!1342 lt!228010)))

(declare-fun lt!227989 () Unit!9388)

(declare-fun lemmaSamePrefixThenSameSuffix!376 (List!5367 List!5367 List!5367 List!5367 List!5367) Unit!9388)

(assert (=> b!544538 (= lt!227989 (lemmaSamePrefixThenSameSuffix!376 lt!228006 suffix!1342 lt!228006 lt!228010 lt!227995))))

(declare-fun getSuffix!172 (List!5367 List!5367) List!5367)

(assert (=> b!544538 (= lt!228010 (getSuffix!172 lt!227995 lt!228006))))

(declare-fun b!544539 () Bool)

(declare-fun res!232353 () Bool)

(assert (=> b!544539 (=> res!232353 e!329077)))

(assert (=> b!544539 (= res!232353 (not (contains!1249 rules!3103 (rule!1721 token!491))))))

(declare-fun b!544540 () Bool)

(declare-fun res!232343 () Bool)

(declare-fun e!329065 () Bool)

(assert (=> b!544540 (=> (not res!232343) (not e!329065))))

(declare-fun isEmpty!3868 (List!5367) Bool)

(assert (=> b!544540 (= res!232343 (not (isEmpty!3868 input!2705)))))

(assert (=> b!544541 (= e!329057 (and tp!173095 tp!173092))))

(declare-fun b!544542 () Bool)

(assert (=> b!544542 (= e!329075 (and (= (size!4296 token!491) lt!227996) (= (originalCharacters!1046 token!491) lt!228006) (= (tuple2!6397 token!491 suffix!1342) (tuple2!6397 (Token!1751 lt!227987 (rule!1721 token!491) lt!227996 lt!228006) lt!228010))))))

(declare-fun b!544543 () Bool)

(assert (=> b!544543 (= e!329071 (not e!329072))))

(declare-fun res!232355 () Bool)

(assert (=> b!544543 (=> res!232355 e!329072)))

(declare-fun isPrefix!649 (List!5367 List!5367) Bool)

(assert (=> b!544543 (= res!232355 (not (isPrefix!649 input!2705 lt!227979)))))

(assert (=> b!544543 (isPrefix!649 lt!228006 lt!227979)))

(declare-fun lt!228001 () Unit!9388)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!500 (List!5367 List!5367) Unit!9388)

(assert (=> b!544543 (= lt!228001 (lemmaConcatTwoListThenFirstIsPrefix!500 lt!228006 suffix!1342))))

(assert (=> b!544543 (isPrefix!649 input!2705 lt!227995)))

(declare-fun lt!228012 () Unit!9388)

(assert (=> b!544543 (= lt!228012 (lemmaConcatTwoListThenFirstIsPrefix!500 input!2705 suffix!1342))))

(assert (=> b!544543 e!329074))

(declare-fun res!232347 () Bool)

(assert (=> b!544543 (=> (not res!232347) (not e!329074))))

(assert (=> b!544543 (= res!232347 (= (value!33566 (_1!3462 (v!16171 lt!228003))) lt!227977))))

(assert (=> b!544543 (= lt!227977 (apply!1282 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))) lt!227999))))

(assert (=> b!544543 (= lt!227999 (seqFromList!1205 lt!227984))))

(declare-fun lt!227997 () Unit!9388)

(declare-fun lemmaInv!155 (TokenValueInjection!1830) Unit!9388)

(assert (=> b!544543 (= lt!227997 (lemmaInv!155 (transformation!1007 (rule!1721 token!491))))))

(declare-fun lt!227988 () Unit!9388)

(assert (=> b!544543 (= lt!227988 (lemmaInv!155 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))))))

(declare-fun ruleValid!227 (LexerInterface!893 Rule!1814) Bool)

(assert (=> b!544543 (ruleValid!227 thiss!22590 (rule!1721 token!491))))

(declare-fun lt!227991 () Unit!9388)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!86 (LexerInterface!893 Rule!1814 List!5369) Unit!9388)

(assert (=> b!544543 (= lt!227991 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!86 thiss!22590 (rule!1721 token!491) rules!3103))))

(assert (=> b!544543 (ruleValid!227 thiss!22590 (rule!1721 (_1!3462 (v!16171 lt!228003))))))

(declare-fun lt!228011 () Unit!9388)

(assert (=> b!544543 (= lt!228011 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!86 thiss!22590 (rule!1721 (_1!3462 (v!16171 lt!228003))) rules!3103))))

(assert (=> b!544543 (isPrefix!649 input!2705 input!2705)))

(declare-fun lt!227998 () Unit!9388)

(declare-fun lemmaIsPrefixRefl!389 (List!5367 List!5367) Unit!9388)

(assert (=> b!544543 (= lt!227998 (lemmaIsPrefixRefl!389 input!2705 input!2705))))

(assert (=> b!544543 (= (_2!3462 (v!16171 lt!228003)) lt!227994)))

(declare-fun lt!228002 () Unit!9388)

(assert (=> b!544543 (= lt!228002 (lemmaSamePrefixThenSameSuffix!376 lt!227984 (_2!3462 (v!16171 lt!228003)) lt!227984 lt!227994 input!2705))))

(assert (=> b!544543 (= lt!227994 (getSuffix!172 input!2705 lt!227984))))

(assert (=> b!544543 (isPrefix!649 lt!227984 lt!228007)))

(assert (=> b!544543 (= lt!228007 (++!1495 lt!227984 (_2!3462 (v!16171 lt!228003))))))

(declare-fun lt!228000 () Unit!9388)

(assert (=> b!544543 (= lt!228000 (lemmaConcatTwoListThenFirstIsPrefix!500 lt!227984 (_2!3462 (v!16171 lt!228003))))))

(declare-fun lt!227985 () Unit!9388)

(declare-fun lemmaCharactersSize!86 (Token!1750) Unit!9388)

(assert (=> b!544543 (= lt!227985 (lemmaCharactersSize!86 token!491))))

(declare-fun lt!227986 () Unit!9388)

(assert (=> b!544543 (= lt!227986 (lemmaCharactersSize!86 (_1!3462 (v!16171 lt!228003))))))

(declare-fun lt!227980 () Unit!9388)

(assert (=> b!544543 (= lt!227980 e!329061)))

(declare-fun c!102763 () Bool)

(assert (=> b!544543 (= c!102763 (> lt!228005 lt!227996))))

(assert (=> b!544543 (= lt!227996 (size!4297 lt!228006))))

(assert (=> b!544543 (= lt!228005 (size!4297 lt!227984))))

(declare-fun list!2221 (BalanceConc!3456) List!5367)

(declare-fun charsOf!636 (Token!1750) BalanceConc!3456)

(assert (=> b!544543 (= lt!227984 (list!2221 (charsOf!636 (_1!3462 (v!16171 lt!228003)))))))

(declare-fun lt!227990 () tuple2!6396)

(assert (=> b!544543 (= lt!228003 (Some!1356 lt!227990))))

(assert (=> b!544543 (= lt!227990 (tuple2!6397 (_1!3462 (v!16171 lt!228003)) (_2!3462 (v!16171 lt!228003))))))

(declare-fun lt!228009 () Unit!9388)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!92 (List!5367 List!5367 List!5367 List!5367) Unit!9388)

(assert (=> b!544543 (= lt!228009 (lemmaConcatSameAndSameSizesThenSameLists!92 lt!228006 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!544544 () Bool)

(declare-fun e!329078 () Bool)

(declare-fun tp_is_empty!3037 () Bool)

(declare-fun tp!173091 () Bool)

(assert (=> b!544544 (= e!329078 (and tp_is_empty!3037 tp!173091))))

(declare-fun e!329059 () Bool)

(assert (=> b!544545 (= e!329059 (and tp!173094 tp!173089))))

(declare-fun b!544546 () Bool)

(declare-fun res!232365 () Bool)

(assert (=> b!544546 (=> res!232365 e!329077)))

(assert (=> b!544546 (= res!232365 (or (not (= lt!227984 lt!228006)) (not (= (originalCharacters!1046 (_1!3462 (v!16171 lt!228003))) (originalCharacters!1046 token!491)))))))

(declare-fun b!544547 () Bool)

(declare-fun Unit!9393 () Unit!9388)

(assert (=> b!544547 (= e!329055 Unit!9393)))

(declare-fun b!544548 () Bool)

(declare-fun tp!173093 () Bool)

(assert (=> b!544548 (= e!329066 (and tp!173093 (inv!6717 (tag!1269 (rule!1721 token!491))) (inv!6720 (transformation!1007 (rule!1721 token!491))) e!329059))))

(declare-fun b!544549 () Bool)

(declare-fun e!329064 () Bool)

(declare-fun e!329070 () Bool)

(assert (=> b!544549 (= e!329064 e!329070)))

(declare-fun res!232361 () Bool)

(assert (=> b!544549 (=> (not res!232361) (not e!329070))))

(declare-fun lt!227983 () tuple2!6396)

(assert (=> b!544549 (= res!232361 (and (= (_1!3462 lt!227983) token!491) (= (_2!3462 lt!227983) suffix!1342)))))

(declare-fun lt!227976 () Option!1357)

(declare-fun get!2025 (Option!1357) tuple2!6396)

(assert (=> b!544549 (= lt!227983 (get!2025 lt!227976))))

(declare-fun b!544550 () Bool)

(assert (=> b!544550 (= e!329070 e!329067)))

(declare-fun res!232344 () Bool)

(assert (=> b!544550 (=> (not res!232344) (not e!329067))))

(get-info :version)

(assert (=> b!544550 (= res!232344 ((_ is Some!1356) lt!228003))))

(declare-fun maxPrefix!591 (LexerInterface!893 List!5369 List!5367) Option!1357)

(assert (=> b!544550 (= lt!228003 (maxPrefix!591 thiss!22590 rules!3103 input!2705))))

(declare-fun b!544530 () Bool)

(declare-fun res!232349 () Bool)

(assert (=> b!544530 (=> (not res!232349) (not e!329065))))

(declare-fun rulesInvariant!856 (LexerInterface!893 List!5369) Bool)

(assert (=> b!544530 (= res!232349 (rulesInvariant!856 thiss!22590 rules!3103))))

(declare-fun res!232351 () Bool)

(assert (=> start!50248 (=> (not res!232351) (not e!329065))))

(assert (=> start!50248 (= res!232351 ((_ is Lexer!891) thiss!22590))))

(assert (=> start!50248 e!329065))

(declare-fun e!329076 () Bool)

(assert (=> start!50248 e!329076))

(assert (=> start!50248 e!329054))

(declare-fun inv!6721 (Token!1750) Bool)

(assert (=> start!50248 (and (inv!6721 token!491) e!329073)))

(assert (=> start!50248 true))

(assert (=> start!50248 e!329078))

(declare-fun b!544551 () Bool)

(declare-fun e!329063 () Bool)

(assert (=> b!544551 (= e!329065 e!329063)))

(declare-fun res!232357 () Bool)

(assert (=> b!544551 (=> (not res!232357) (not e!329063))))

(assert (=> b!544551 (= res!232357 (= lt!228006 input!2705))))

(assert (=> b!544551 (= lt!228006 (list!2221 (charsOf!636 token!491)))))

(declare-fun b!544552 () Bool)

(declare-fun res!232340 () Bool)

(assert (=> b!544552 (=> (not res!232340) (not e!329079))))

(assert (=> b!544552 (= res!232340 (= (_1!3462 (get!2025 lt!228003)) (_1!3462 (v!16171 lt!228003))))))

(declare-fun b!544553 () Bool)

(declare-fun res!232362 () Bool)

(assert (=> b!544553 (=> res!232362 e!329077)))

(assert (=> b!544553 (= res!232362 (not (= lt!227976 (Some!1356 (tuple2!6397 token!491 suffix!1342)))))))

(declare-fun b!544554 () Bool)

(assert (=> b!544554 (= e!329074 (and (= (size!4296 (_1!3462 (v!16171 lt!228003))) lt!228005) (= (originalCharacters!1046 (_1!3462 (v!16171 lt!228003))) lt!227984) (= lt!227990 (tuple2!6397 (Token!1751 lt!227977 (rule!1721 (_1!3462 (v!16171 lt!228003))) lt!228005 lt!227984) lt!227994))))))

(declare-fun b!544555 () Bool)

(declare-fun res!232342 () Bool)

(assert (=> b!544555 (=> (not res!232342) (not e!329065))))

(declare-fun isEmpty!3869 (List!5369) Bool)

(assert (=> b!544555 (= res!232342 (not (isEmpty!3869 rules!3103)))))

(declare-fun b!544556 () Bool)

(declare-fun e!329080 () Bool)

(assert (=> b!544556 (= e!329080 e!329079)))

(declare-fun res!232348 () Bool)

(assert (=> b!544556 (=> (not res!232348) (not e!329079))))

(declare-fun isDefined!1169 (Option!1357) Bool)

(assert (=> b!544556 (= res!232348 (isDefined!1169 lt!228003))))

(declare-fun b!544557 () Bool)

(assert (=> b!544557 (= e!329062 false)))

(declare-fun b!544558 () Bool)

(declare-fun res!232358 () Bool)

(assert (=> b!544558 (=> res!232358 e!329077)))

(assert (=> b!544558 (= res!232358 (= (rule!1721 (_1!3462 (v!16171 lt!228003))) (rule!1721 token!491)))))

(declare-fun b!544559 () Bool)

(declare-fun res!232354 () Bool)

(assert (=> b!544559 (=> res!232354 e!329077)))

(assert (=> b!544559 (= res!232354 (not (isEmpty!3868 (_2!3462 (v!16171 lt!228003)))))))

(declare-fun b!544560 () Bool)

(assert (=> b!544560 (= e!329069 e!329080)))

(declare-fun res!232363 () Bool)

(assert (=> b!544560 (=> res!232363 e!329080)))

(assert (=> b!544560 (= res!232363 (>= lt!228005 lt!227996))))

(declare-fun b!544561 () Bool)

(declare-fun tp!173087 () Bool)

(assert (=> b!544561 (= e!329076 (and tp_is_empty!3037 tp!173087))))

(declare-fun b!544562 () Bool)

(assert (=> b!544562 (= e!329063 e!329064)))

(declare-fun res!232364 () Bool)

(assert (=> b!544562 (=> (not res!232364) (not e!329064))))

(assert (=> b!544562 (= res!232364 (isDefined!1169 lt!227976))))

(assert (=> b!544562 (= lt!227976 (maxPrefix!591 thiss!22590 rules!3103 lt!227995))))

(assert (=> b!544562 (= lt!227995 (++!1495 input!2705 suffix!1342))))

(declare-fun b!544563 () Bool)

(declare-fun Unit!9394 () Unit!9388)

(assert (=> b!544563 (= e!329061 Unit!9394)))

(assert (= (and start!50248 res!232351) b!544555))

(assert (= (and b!544555 res!232342) b!544530))

(assert (= (and b!544530 res!232349) b!544540))

(assert (= (and b!544540 res!232343) b!544551))

(assert (= (and b!544551 res!232357) b!544562))

(assert (= (and b!544562 res!232364) b!544549))

(assert (= (and b!544549 res!232361) b!544550))

(assert (= (and b!544550 res!232344) b!544527))

(assert (= (and b!544527 res!232352) b!544543))

(assert (= (and b!544543 c!102763) b!544525))

(assert (= (and b!544543 (not c!102763)) b!544563))

(assert (= (and b!544543 res!232347) b!544531))

(assert (= (and b!544531 res!232345) b!544554))

(assert (= (and b!544543 (not res!232355)) b!544538))

(assert (= (and b!544538 res!232341) b!544535))

(assert (= (and b!544535 res!232356) b!544542))

(assert (= (and b!544538 res!232346) b!544560))

(assert (= (and b!544560 (not res!232363)) b!544556))

(assert (= (and b!544556 res!232348) b!544552))

(assert (= (and b!544552 res!232340) b!544537))

(assert (= (and b!544538 c!102762) b!544529))

(assert (= (and b!544538 (not c!102762)) b!544547))

(assert (= (and b!544529 res!232366) b!544557))

(assert (= (and b!544538 (not res!232350)) b!544559))

(assert (= (and b!544559 (not res!232354)) b!544546))

(assert (= (and b!544546 (not res!232365)) b!544528))

(assert (= (and b!544528 (not res!232360)) b!544539))

(assert (= (and b!544539 (not res!232353)) b!544558))

(assert (= (and b!544558 (not res!232358)) b!544532))

(assert (= (and b!544532 (not res!232359)) b!544553))

(assert (= (and b!544553 (not res!232362)) b!544534))

(assert (= (and start!50248 ((_ is Cons!5357) suffix!1342)) b!544561))

(assert (= b!544533 b!544541))

(assert (= b!544526 b!544533))

(assert (= (and start!50248 ((_ is Cons!5359) rules!3103)) b!544526))

(assert (= b!544548 b!544545))

(assert (= b!544536 b!544548))

(assert (= start!50248 b!544536))

(assert (= (and start!50248 ((_ is Cons!5357) input!2705)) b!544544))

(declare-fun m!792859 () Bool)

(assert (=> b!544543 m!792859))

(declare-fun m!792861 () Bool)

(assert (=> b!544543 m!792861))

(declare-fun m!792863 () Bool)

(assert (=> b!544543 m!792863))

(declare-fun m!792865 () Bool)

(assert (=> b!544543 m!792865))

(declare-fun m!792867 () Bool)

(assert (=> b!544543 m!792867))

(declare-fun m!792869 () Bool)

(assert (=> b!544543 m!792869))

(declare-fun m!792871 () Bool)

(assert (=> b!544543 m!792871))

(declare-fun m!792873 () Bool)

(assert (=> b!544543 m!792873))

(declare-fun m!792875 () Bool)

(assert (=> b!544543 m!792875))

(declare-fun m!792877 () Bool)

(assert (=> b!544543 m!792877))

(declare-fun m!792879 () Bool)

(assert (=> b!544543 m!792879))

(declare-fun m!792881 () Bool)

(assert (=> b!544543 m!792881))

(declare-fun m!792883 () Bool)

(assert (=> b!544543 m!792883))

(declare-fun m!792885 () Bool)

(assert (=> b!544543 m!792885))

(declare-fun m!792887 () Bool)

(assert (=> b!544543 m!792887))

(declare-fun m!792889 () Bool)

(assert (=> b!544543 m!792889))

(declare-fun m!792891 () Bool)

(assert (=> b!544543 m!792891))

(declare-fun m!792893 () Bool)

(assert (=> b!544543 m!792893))

(declare-fun m!792895 () Bool)

(assert (=> b!544543 m!792895))

(declare-fun m!792897 () Bool)

(assert (=> b!544543 m!792897))

(declare-fun m!792899 () Bool)

(assert (=> b!544543 m!792899))

(declare-fun m!792901 () Bool)

(assert (=> b!544543 m!792901))

(assert (=> b!544543 m!792873))

(declare-fun m!792903 () Bool)

(assert (=> b!544543 m!792903))

(declare-fun m!792905 () Bool)

(assert (=> b!544543 m!792905))

(declare-fun m!792907 () Bool)

(assert (=> b!544543 m!792907))

(declare-fun m!792909 () Bool)

(assert (=> b!544543 m!792909))

(declare-fun m!792911 () Bool)

(assert (=> b!544543 m!792911))

(declare-fun m!792913 () Bool)

(assert (=> b!544540 m!792913))

(declare-fun m!792915 () Bool)

(assert (=> b!544532 m!792915))

(declare-fun m!792917 () Bool)

(assert (=> b!544532 m!792917))

(declare-fun m!792919 () Bool)

(assert (=> b!544527 m!792919))

(declare-fun m!792921 () Bool)

(assert (=> b!544552 m!792921))

(declare-fun m!792923 () Bool)

(assert (=> b!544562 m!792923))

(declare-fun m!792925 () Bool)

(assert (=> b!544562 m!792925))

(declare-fun m!792927 () Bool)

(assert (=> b!544562 m!792927))

(declare-fun m!792929 () Bool)

(assert (=> b!544535 m!792929))

(declare-fun m!792931 () Bool)

(assert (=> b!544551 m!792931))

(assert (=> b!544551 m!792931))

(declare-fun m!792933 () Bool)

(assert (=> b!544551 m!792933))

(declare-fun m!792935 () Bool)

(assert (=> b!544531 m!792935))

(declare-fun m!792937 () Bool)

(assert (=> b!544559 m!792937))

(declare-fun m!792939 () Bool)

(assert (=> b!544528 m!792939))

(declare-fun m!792941 () Bool)

(assert (=> b!544529 m!792941))

(declare-fun m!792943 () Bool)

(assert (=> b!544529 m!792943))

(declare-fun m!792945 () Bool)

(assert (=> b!544529 m!792945))

(declare-fun m!792947 () Bool)

(assert (=> b!544538 m!792947))

(declare-fun m!792949 () Bool)

(assert (=> b!544538 m!792949))

(declare-fun m!792951 () Bool)

(assert (=> b!544538 m!792951))

(declare-fun m!792953 () Bool)

(assert (=> b!544538 m!792953))

(assert (=> b!544538 m!792941))

(declare-fun m!792955 () Bool)

(assert (=> b!544538 m!792955))

(declare-fun m!792957 () Bool)

(assert (=> b!544538 m!792957))

(declare-fun m!792959 () Bool)

(assert (=> b!544538 m!792959))

(declare-fun m!792961 () Bool)

(assert (=> b!544538 m!792961))

(declare-fun m!792963 () Bool)

(assert (=> b!544538 m!792963))

(declare-fun m!792965 () Bool)

(assert (=> start!50248 m!792965))

(declare-fun m!792967 () Bool)

(assert (=> b!544550 m!792967))

(declare-fun m!792969 () Bool)

(assert (=> b!544534 m!792969))

(declare-fun m!792971 () Bool)

(assert (=> b!544533 m!792971))

(declare-fun m!792973 () Bool)

(assert (=> b!544533 m!792973))

(declare-fun m!792975 () Bool)

(assert (=> b!544556 m!792975))

(declare-fun m!792977 () Bool)

(assert (=> b!544555 m!792977))

(declare-fun m!792979 () Bool)

(assert (=> b!544536 m!792979))

(declare-fun m!792981 () Bool)

(assert (=> b!544548 m!792981))

(declare-fun m!792983 () Bool)

(assert (=> b!544548 m!792983))

(declare-fun m!792985 () Bool)

(assert (=> b!544549 m!792985))

(declare-fun m!792987 () Bool)

(assert (=> b!544530 m!792987))

(declare-fun m!792989 () Bool)

(assert (=> b!544539 m!792989))

(check-sat (not b!544548) (not b!544536) b_and!53165 (not b!544561) (not b!544559) (not b!544552) (not b_next!15137) tp_is_empty!3037 (not b!544543) (not b!544528) (not b!544532) (not b!544534) (not start!50248) (not b_next!15139) (not b!544555) (not b_next!15143) (not b!544526) (not b!544550) (not b!544540) (not b!544529) (not b!544549) (not b!544530) b_and!53167 (not b!544539) (not b!544527) b_and!53169 (not b!544556) (not b!544533) (not b!544535) b_and!53163 (not b!544551) (not b_next!15141) (not b!544544) (not b!544531) (not b!544562) (not b!544538))
(check-sat (not b_next!15139) (not b_next!15143) b_and!53165 b_and!53167 b_and!53169 b_and!53163 (not b_next!15141) (not b_next!15137))
(get-model)

(declare-fun d!190993 () Bool)

(declare-fun res!232440 () Bool)

(declare-fun e!329151 () Bool)

(assert (=> d!190993 (=> (not res!232440) (not e!329151))))

(assert (=> d!190993 (= res!232440 (not (isEmpty!3868 (originalCharacters!1046 token!491))))))

(assert (=> d!190993 (= (inv!6721 token!491) e!329151)))

(declare-fun b!544671 () Bool)

(declare-fun res!232441 () Bool)

(assert (=> b!544671 (=> (not res!232441) (not e!329151))))

(declare-fun dynLambda!3124 (Int TokenValue!1031) BalanceConc!3456)

(assert (=> b!544671 (= res!232441 (= (originalCharacters!1046 token!491) (list!2221 (dynLambda!3124 (toChars!1713 (transformation!1007 (rule!1721 token!491))) (value!33566 token!491)))))))

(declare-fun b!544672 () Bool)

(assert (=> b!544672 (= e!329151 (= (size!4296 token!491) (size!4297 (originalCharacters!1046 token!491))))))

(assert (= (and d!190993 res!232440) b!544671))

(assert (= (and b!544671 res!232441) b!544672))

(declare-fun b_lambda!20909 () Bool)

(assert (=> (not b_lambda!20909) (not b!544671)))

(declare-fun tb!47811 () Bool)

(declare-fun t!74612 () Bool)

(assert (=> (and b!544541 (= (toChars!1713 (transformation!1007 (h!10760 rules!3103))) (toChars!1713 (transformation!1007 (rule!1721 token!491)))) t!74612) tb!47811))

(declare-fun b!544680 () Bool)

(declare-fun e!329157 () Bool)

(declare-fun tp!173103 () Bool)

(declare-fun inv!6724 (Conc!1724) Bool)

(assert (=> b!544680 (= e!329157 (and (inv!6724 (c!102765 (dynLambda!3124 (toChars!1713 (transformation!1007 (rule!1721 token!491))) (value!33566 token!491)))) tp!173103))))

(declare-fun result!53450 () Bool)

(declare-fun inv!6725 (BalanceConc!3456) Bool)

(assert (=> tb!47811 (= result!53450 (and (inv!6725 (dynLambda!3124 (toChars!1713 (transformation!1007 (rule!1721 token!491))) (value!33566 token!491))) e!329157))))

(assert (= tb!47811 b!544680))

(declare-fun m!793141 () Bool)

(assert (=> b!544680 m!793141))

(declare-fun m!793143 () Bool)

(assert (=> tb!47811 m!793143))

(assert (=> b!544671 t!74612))

(declare-fun b_and!53183 () Bool)

(assert (= b_and!53165 (and (=> t!74612 result!53450) b_and!53183)))

(declare-fun t!74614 () Bool)

(declare-fun tb!47813 () Bool)

(assert (=> (and b!544545 (= (toChars!1713 (transformation!1007 (rule!1721 token!491))) (toChars!1713 (transformation!1007 (rule!1721 token!491)))) t!74614) tb!47813))

(declare-fun result!53454 () Bool)

(assert (= result!53454 result!53450))

(assert (=> b!544671 t!74614))

(declare-fun b_and!53185 () Bool)

(assert (= b_and!53169 (and (=> t!74614 result!53454) b_and!53185)))

(declare-fun m!793145 () Bool)

(assert (=> d!190993 m!793145))

(declare-fun m!793147 () Bool)

(assert (=> b!544671 m!793147))

(assert (=> b!544671 m!793147))

(declare-fun m!793149 () Bool)

(assert (=> b!544671 m!793149))

(assert (=> b!544672 m!792929))

(assert (=> start!50248 d!190993))

(declare-fun d!191011 () Bool)

(assert (=> d!191011 (= (inv!6717 (tag!1269 (rule!1721 token!491))) (= (mod (str.len (value!33540 (tag!1269 (rule!1721 token!491)))) 2) 0))))

(assert (=> b!544548 d!191011))

(declare-fun d!191013 () Bool)

(declare-fun res!232447 () Bool)

(declare-fun e!329160 () Bool)

(assert (=> d!191013 (=> (not res!232447) (not e!329160))))

(declare-fun semiInverseModEq!389 (Int Int) Bool)

(assert (=> d!191013 (= res!232447 (semiInverseModEq!389 (toChars!1713 (transformation!1007 (rule!1721 token!491))) (toValue!1854 (transformation!1007 (rule!1721 token!491)))))))

(assert (=> d!191013 (= (inv!6720 (transformation!1007 (rule!1721 token!491))) e!329160)))

(declare-fun b!544683 () Bool)

(declare-fun equivClasses!372 (Int Int) Bool)

(assert (=> b!544683 (= e!329160 (equivClasses!372 (toChars!1713 (transformation!1007 (rule!1721 token!491))) (toValue!1854 (transformation!1007 (rule!1721 token!491)))))))

(assert (= (and d!191013 res!232447) b!544683))

(declare-fun m!793151 () Bool)

(assert (=> d!191013 m!793151))

(declare-fun m!793153 () Bool)

(assert (=> b!544683 m!793153))

(assert (=> b!544548 d!191013))

(declare-fun b!544701 () Bool)

(declare-fun lt!228068 () List!5367)

(declare-fun e!329167 () Bool)

(assert (=> b!544701 (= e!329167 (or (not (= suffix!1342 Nil!5357)) (= lt!228068 lt!228006)))))

(declare-fun b!544697 () Bool)

(declare-fun e!329168 () List!5367)

(assert (=> b!544697 (= e!329168 (Cons!5357 (h!10758 lt!228006) (++!1495 (t!74596 lt!228006) suffix!1342)))))

(declare-fun b!544699 () Bool)

(declare-fun res!232452 () Bool)

(assert (=> b!544699 (=> (not res!232452) (not e!329167))))

(assert (=> b!544699 (= res!232452 (= (size!4297 lt!228068) (+ (size!4297 lt!228006) (size!4297 suffix!1342))))))

(declare-fun d!191015 () Bool)

(assert (=> d!191015 e!329167))

(declare-fun res!232453 () Bool)

(assert (=> d!191015 (=> (not res!232453) (not e!329167))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!933 (List!5367) (InoxSet C!3604))

(assert (=> d!191015 (= res!232453 (= (content!933 lt!228068) ((_ map or) (content!933 lt!228006) (content!933 suffix!1342))))))

(assert (=> d!191015 (= lt!228068 e!329168)))

(declare-fun c!102787 () Bool)

(assert (=> d!191015 (= c!102787 ((_ is Nil!5357) lt!228006))))

(assert (=> d!191015 (= (++!1495 lt!228006 suffix!1342) lt!228068)))

(declare-fun b!544696 () Bool)

(assert (=> b!544696 (= e!329168 suffix!1342)))

(assert (= (and d!191015 c!102787) b!544696))

(assert (= (and d!191015 (not c!102787)) b!544697))

(assert (= (and d!191015 res!232453) b!544699))

(assert (= (and b!544699 res!232452) b!544701))

(declare-fun m!793155 () Bool)

(assert (=> b!544697 m!793155))

(declare-fun m!793157 () Bool)

(assert (=> b!544699 m!793157))

(assert (=> b!544699 m!792907))

(declare-fun m!793159 () Bool)

(assert (=> b!544699 m!793159))

(declare-fun m!793161 () Bool)

(assert (=> d!191015 m!793161))

(declare-fun m!793163 () Bool)

(assert (=> d!191015 m!793163))

(declare-fun m!793165 () Bool)

(assert (=> d!191015 m!793165))

(assert (=> b!544527 d!191015))

(declare-fun b!544825 () Bool)

(declare-fun e!329233 () Bool)

(assert (=> b!544825 (= e!329233 true)))

(declare-fun d!191017 () Bool)

(assert (=> d!191017 e!329233))

(assert (= d!191017 b!544825))

(declare-fun order!4459 () Int)

(declare-fun order!4457 () Int)

(declare-fun lambda!15480 () Int)

(declare-fun dynLambda!3128 (Int Int) Int)

(declare-fun dynLambda!3129 (Int Int) Int)

(assert (=> b!544825 (< (dynLambda!3128 order!4457 (toValue!1854 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))))) (dynLambda!3129 order!4459 lambda!15480))))

(declare-fun order!4461 () Int)

(declare-fun dynLambda!3130 (Int Int) Int)

(assert (=> b!544825 (< (dynLambda!3130 order!4461 (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))))) (dynLambda!3129 order!4459 lambda!15480))))

(declare-fun dynLambda!3131 (Int BalanceConc!3456) TokenValue!1031)

(assert (=> d!191017 (= (list!2221 (dynLambda!3124 (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))) (dynLambda!3131 (toValue!1854 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))) lt!227999))) (list!2221 lt!227999))))

(declare-fun lt!228104 () Unit!9388)

(declare-fun ForallOf!84 (Int BalanceConc!3456) Unit!9388)

(assert (=> d!191017 (= lt!228104 (ForallOf!84 lambda!15480 lt!227999))))

(assert (=> d!191017 (= (lemmaSemiInverse!136 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))) lt!227999) lt!228104)))

(declare-fun b_lambda!20919 () Bool)

(assert (=> (not b_lambda!20919) (not d!191017)))

(declare-fun t!74624 () Bool)

(declare-fun tb!47823 () Bool)

(assert (=> (and b!544541 (= (toChars!1713 (transformation!1007 (h!10760 rules!3103))) (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))))) t!74624) tb!47823))

(declare-fun tp!173105 () Bool)

(declare-fun b!544826 () Bool)

(declare-fun e!329234 () Bool)

(assert (=> b!544826 (= e!329234 (and (inv!6724 (c!102765 (dynLambda!3124 (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))) (dynLambda!3131 (toValue!1854 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))) lt!227999)))) tp!173105))))

(declare-fun result!53464 () Bool)

(assert (=> tb!47823 (= result!53464 (and (inv!6725 (dynLambda!3124 (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))) (dynLambda!3131 (toValue!1854 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))) lt!227999))) e!329234))))

(assert (= tb!47823 b!544826))

(declare-fun m!793301 () Bool)

(assert (=> b!544826 m!793301))

(declare-fun m!793303 () Bool)

(assert (=> tb!47823 m!793303))

(assert (=> d!191017 t!74624))

(declare-fun b_and!53203 () Bool)

(assert (= b_and!53183 (and (=> t!74624 result!53464) b_and!53203)))

(declare-fun t!74626 () Bool)

(declare-fun tb!47825 () Bool)

(assert (=> (and b!544545 (= (toChars!1713 (transformation!1007 (rule!1721 token!491))) (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))))) t!74626) tb!47825))

(declare-fun result!53466 () Bool)

(assert (= result!53466 result!53464))

(assert (=> d!191017 t!74626))

(declare-fun b_and!53205 () Bool)

(assert (= b_and!53185 (and (=> t!74626 result!53466) b_and!53205)))

(declare-fun b_lambda!20921 () Bool)

(assert (=> (not b_lambda!20921) (not d!191017)))

(declare-fun tb!47827 () Bool)

(declare-fun t!74628 () Bool)

(assert (=> (and b!544541 (= (toValue!1854 (transformation!1007 (h!10760 rules!3103))) (toValue!1854 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))))) t!74628) tb!47827))

(declare-fun result!53468 () Bool)

(assert (=> tb!47827 (= result!53468 (inv!21 (dynLambda!3131 (toValue!1854 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))) lt!227999)))))

(declare-fun m!793305 () Bool)

(assert (=> tb!47827 m!793305))

(assert (=> d!191017 t!74628))

(declare-fun b_and!53207 () Bool)

(assert (= b_and!53163 (and (=> t!74628 result!53468) b_and!53207)))

(declare-fun tb!47829 () Bool)

(declare-fun t!74630 () Bool)

(assert (=> (and b!544545 (= (toValue!1854 (transformation!1007 (rule!1721 token!491))) (toValue!1854 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))))) t!74630) tb!47829))

(declare-fun result!53472 () Bool)

(assert (= result!53472 result!53468))

(assert (=> d!191017 t!74630))

(declare-fun b_and!53209 () Bool)

(assert (= b_and!53167 (and (=> t!74630 result!53472) b_and!53209)))

(declare-fun m!793307 () Bool)

(assert (=> d!191017 m!793307))

(declare-fun m!793309 () Bool)

(assert (=> d!191017 m!793309))

(declare-fun m!793311 () Bool)

(assert (=> d!191017 m!793311))

(assert (=> d!191017 m!793311))

(declare-fun m!793313 () Bool)

(assert (=> d!191017 m!793313))

(assert (=> d!191017 m!793309))

(declare-fun m!793315 () Bool)

(assert (=> d!191017 m!793315))

(assert (=> b!544529 d!191017))

(declare-fun d!191065 () Bool)

(assert (=> d!191065 (not (matchR!500 (regex!1007 (rule!1721 token!491)) input!2705))))

(declare-fun lt!228107 () Unit!9388)

(declare-fun choose!3853 (LexerInterface!893 List!5369 Rule!1814 List!5367 List!5367 List!5367 Rule!1814) Unit!9388)

(assert (=> d!191065 (= lt!228107 (choose!3853 thiss!22590 rules!3103 (rule!1721 (_1!3462 (v!16171 lt!228003))) lt!227984 input!2705 input!2705 (rule!1721 token!491)))))

(assert (=> d!191065 (isPrefix!649 lt!227984 input!2705)))

(assert (=> d!191065 (= (lemmaMaxPrefixOutputsMaxPrefix!12 thiss!22590 rules!3103 (rule!1721 (_1!3462 (v!16171 lt!228003))) lt!227984 input!2705 input!2705 (rule!1721 token!491)) lt!228107)))

(declare-fun bs!67624 () Bool)

(assert (= bs!67624 d!191065))

(assert (=> bs!67624 m!792945))

(declare-fun m!793317 () Bool)

(assert (=> bs!67624 m!793317))

(declare-fun m!793319 () Bool)

(assert (=> bs!67624 m!793319))

(assert (=> b!544529 d!191065))

(declare-fun b!544875 () Bool)

(declare-fun e!329263 () Bool)

(declare-fun head!1188 (List!5367) C!3604)

(assert (=> b!544875 (= e!329263 (= (head!1188 input!2705) (c!102764 (regex!1007 (rule!1721 token!491)))))))

(declare-fun b!544876 () Bool)

(declare-fun e!329260 () Bool)

(declare-fun e!329266 () Bool)

(assert (=> b!544876 (= e!329260 e!329266)))

(declare-fun res!232551 () Bool)

(assert (=> b!544876 (=> (not res!232551) (not e!329266))))

(declare-fun lt!228120 () Bool)

(assert (=> b!544876 (= res!232551 (not lt!228120))))

(declare-fun b!544877 () Bool)

(declare-fun e!329261 () Bool)

(declare-fun e!329264 () Bool)

(assert (=> b!544877 (= e!329261 e!329264)))

(declare-fun c!102821 () Bool)

(assert (=> b!544877 (= c!102821 ((_ is EmptyLang!1341) (regex!1007 (rule!1721 token!491))))))

(declare-fun b!544878 () Bool)

(declare-fun res!232552 () Bool)

(assert (=> b!544878 (=> res!232552 e!329260)))

(assert (=> b!544878 (= res!232552 e!329263)))

(declare-fun res!232556 () Bool)

(assert (=> b!544878 (=> (not res!232556) (not e!329263))))

(assert (=> b!544878 (= res!232556 lt!228120)))

(declare-fun b!544879 () Bool)

(declare-fun e!329262 () Bool)

(assert (=> b!544879 (= e!329262 (not (= (head!1188 input!2705) (c!102764 (regex!1007 (rule!1721 token!491))))))))

(declare-fun d!191067 () Bool)

(assert (=> d!191067 e!329261))

(declare-fun c!102822 () Bool)

(assert (=> d!191067 (= c!102822 ((_ is EmptyExpr!1341) (regex!1007 (rule!1721 token!491))))))

(declare-fun e!329265 () Bool)

(assert (=> d!191067 (= lt!228120 e!329265)))

(declare-fun c!102823 () Bool)

(assert (=> d!191067 (= c!102823 (isEmpty!3868 input!2705))))

(declare-fun validRegex!446 (Regex!1341) Bool)

(assert (=> d!191067 (validRegex!446 (regex!1007 (rule!1721 token!491)))))

(assert (=> d!191067 (= (matchR!500 (regex!1007 (rule!1721 token!491)) input!2705) lt!228120)))

(declare-fun b!544880 () Bool)

(declare-fun derivativeStep!267 (Regex!1341 C!3604) Regex!1341)

(declare-fun tail!717 (List!5367) List!5367)

(assert (=> b!544880 (= e!329265 (matchR!500 (derivativeStep!267 (regex!1007 (rule!1721 token!491)) (head!1188 input!2705)) (tail!717 input!2705)))))

(declare-fun b!544881 () Bool)

(assert (=> b!544881 (= e!329266 e!329262)))

(declare-fun res!232554 () Bool)

(assert (=> b!544881 (=> res!232554 e!329262)))

(declare-fun call!38317 () Bool)

(assert (=> b!544881 (= res!232554 call!38317)))

(declare-fun b!544882 () Bool)

(declare-fun res!232553 () Bool)

(assert (=> b!544882 (=> (not res!232553) (not e!329263))))

(assert (=> b!544882 (= res!232553 (isEmpty!3868 (tail!717 input!2705)))))

(declare-fun b!544883 () Bool)

(declare-fun nullable!351 (Regex!1341) Bool)

(assert (=> b!544883 (= e!329265 (nullable!351 (regex!1007 (rule!1721 token!491))))))

(declare-fun b!544884 () Bool)

(assert (=> b!544884 (= e!329264 (not lt!228120))))

(declare-fun b!544885 () Bool)

(declare-fun res!232557 () Bool)

(assert (=> b!544885 (=> (not res!232557) (not e!329263))))

(assert (=> b!544885 (= res!232557 (not call!38317))))

(declare-fun b!544886 () Bool)

(assert (=> b!544886 (= e!329261 (= lt!228120 call!38317))))

(declare-fun bm!38312 () Bool)

(assert (=> bm!38312 (= call!38317 (isEmpty!3868 input!2705))))

(declare-fun b!544887 () Bool)

(declare-fun res!232555 () Bool)

(assert (=> b!544887 (=> res!232555 e!329262)))

(assert (=> b!544887 (= res!232555 (not (isEmpty!3868 (tail!717 input!2705))))))

(declare-fun b!544888 () Bool)

(declare-fun res!232558 () Bool)

(assert (=> b!544888 (=> res!232558 e!329260)))

(assert (=> b!544888 (= res!232558 (not ((_ is ElementMatch!1341) (regex!1007 (rule!1721 token!491)))))))

(assert (=> b!544888 (= e!329264 e!329260)))

(assert (= (and d!191067 c!102823) b!544883))

(assert (= (and d!191067 (not c!102823)) b!544880))

(assert (= (and d!191067 c!102822) b!544886))

(assert (= (and d!191067 (not c!102822)) b!544877))

(assert (= (and b!544877 c!102821) b!544884))

(assert (= (and b!544877 (not c!102821)) b!544888))

(assert (= (and b!544888 (not res!232558)) b!544878))

(assert (= (and b!544878 res!232556) b!544885))

(assert (= (and b!544885 res!232557) b!544882))

(assert (= (and b!544882 res!232553) b!544875))

(assert (= (and b!544878 (not res!232552)) b!544876))

(assert (= (and b!544876 res!232551) b!544881))

(assert (= (and b!544881 (not res!232554)) b!544887))

(assert (= (and b!544887 (not res!232555)) b!544879))

(assert (= (or b!544886 b!544881 b!544885) bm!38312))

(declare-fun m!793321 () Bool)

(assert (=> b!544880 m!793321))

(assert (=> b!544880 m!793321))

(declare-fun m!793323 () Bool)

(assert (=> b!544880 m!793323))

(declare-fun m!793325 () Bool)

(assert (=> b!544880 m!793325))

(assert (=> b!544880 m!793323))

(assert (=> b!544880 m!793325))

(declare-fun m!793327 () Bool)

(assert (=> b!544880 m!793327))

(assert (=> d!191067 m!792913))

(declare-fun m!793329 () Bool)

(assert (=> d!191067 m!793329))

(declare-fun m!793331 () Bool)

(assert (=> b!544883 m!793331))

(assert (=> b!544882 m!793325))

(assert (=> b!544882 m!793325))

(declare-fun m!793333 () Bool)

(assert (=> b!544882 m!793333))

(assert (=> b!544879 m!793321))

(assert (=> b!544875 m!793321))

(assert (=> bm!38312 m!792913))

(assert (=> b!544887 m!793325))

(assert (=> b!544887 m!793325))

(assert (=> b!544887 m!793333))

(assert (=> b!544529 d!191067))

(declare-fun d!191069 () Bool)

(declare-fun list!2223 (Conc!1724) List!5367)

(assert (=> d!191069 (= (list!2221 (charsOf!636 token!491)) (list!2223 (c!102765 (charsOf!636 token!491))))))

(declare-fun bs!67625 () Bool)

(assert (= bs!67625 d!191069))

(declare-fun m!793335 () Bool)

(assert (=> bs!67625 m!793335))

(assert (=> b!544551 d!191069))

(declare-fun d!191071 () Bool)

(declare-fun lt!228123 () BalanceConc!3456)

(assert (=> d!191071 (= (list!2221 lt!228123) (originalCharacters!1046 token!491))))

(assert (=> d!191071 (= lt!228123 (dynLambda!3124 (toChars!1713 (transformation!1007 (rule!1721 token!491))) (value!33566 token!491)))))

(assert (=> d!191071 (= (charsOf!636 token!491) lt!228123)))

(declare-fun b_lambda!20923 () Bool)

(assert (=> (not b_lambda!20923) (not d!191071)))

(assert (=> d!191071 t!74612))

(declare-fun b_and!53211 () Bool)

(assert (= b_and!53203 (and (=> t!74612 result!53450) b_and!53211)))

(assert (=> d!191071 t!74614))

(declare-fun b_and!53213 () Bool)

(assert (= b_and!53205 (and (=> t!74614 result!53454) b_and!53213)))

(declare-fun m!793337 () Bool)

(assert (=> d!191071 m!793337))

(assert (=> d!191071 m!793147))

(assert (=> b!544551 d!191071))

(declare-fun d!191073 () Bool)

(declare-fun res!232568 () Bool)

(declare-fun e!329273 () Bool)

(assert (=> d!191073 (=> (not res!232568) (not e!329273))))

(declare-fun rulesValid!354 (LexerInterface!893 List!5369) Bool)

(assert (=> d!191073 (= res!232568 (rulesValid!354 thiss!22590 rules!3103))))

(assert (=> d!191073 (= (rulesInvariant!856 thiss!22590 rules!3103) e!329273)))

(declare-fun b!544900 () Bool)

(declare-datatypes ((List!5371 0))(
  ( (Nil!5361) (Cons!5361 (h!10762 String!6898) (t!74672 List!5371)) )
))
(declare-fun noDuplicateTag!354 (LexerInterface!893 List!5369 List!5371) Bool)

(assert (=> b!544900 (= e!329273 (noDuplicateTag!354 thiss!22590 rules!3103 Nil!5361))))

(assert (= (and d!191073 res!232568) b!544900))

(declare-fun m!793341 () Bool)

(assert (=> d!191073 m!793341))

(declare-fun m!793343 () Bool)

(assert (=> b!544900 m!793343))

(assert (=> b!544530 d!191073))

(declare-fun d!191075 () Bool)

(assert (=> d!191075 (= (get!2025 lt!227976) (v!16171 lt!227976))))

(assert (=> b!544549 d!191075))

(declare-fun d!191077 () Bool)

(declare-fun lt!228132 () Bool)

(declare-fun content!934 (List!5369) (InoxSet Rule!1814))

(assert (=> d!191077 (= lt!228132 (select (content!934 rules!3103) (rule!1721 (_1!3462 (v!16171 lt!228003)))))))

(declare-fun e!329281 () Bool)

(assert (=> d!191077 (= lt!228132 e!329281)))

(declare-fun res!232574 () Bool)

(assert (=> d!191077 (=> (not res!232574) (not e!329281))))

(assert (=> d!191077 (= res!232574 ((_ is Cons!5359) rules!3103))))

(assert (=> d!191077 (= (contains!1249 rules!3103 (rule!1721 (_1!3462 (v!16171 lt!228003)))) lt!228132)))

(declare-fun b!544907 () Bool)

(declare-fun e!329280 () Bool)

(assert (=> b!544907 (= e!329281 e!329280)))

(declare-fun res!232573 () Bool)

(assert (=> b!544907 (=> res!232573 e!329280)))

(assert (=> b!544907 (= res!232573 (= (h!10760 rules!3103) (rule!1721 (_1!3462 (v!16171 lt!228003)))))))

(declare-fun b!544908 () Bool)

(assert (=> b!544908 (= e!329280 (contains!1249 (t!74598 rules!3103) (rule!1721 (_1!3462 (v!16171 lt!228003)))))))

(assert (= (and d!191077 res!232574) b!544907))

(assert (= (and b!544907 (not res!232573)) b!544908))

(declare-fun m!793389 () Bool)

(assert (=> d!191077 m!793389))

(declare-fun m!793391 () Bool)

(assert (=> d!191077 m!793391))

(declare-fun m!793395 () Bool)

(assert (=> b!544908 m!793395))

(assert (=> b!544528 d!191077))

(declare-fun b!544973 () Bool)

(declare-fun res!232600 () Bool)

(declare-fun e!329316 () Bool)

(assert (=> b!544973 (=> (not res!232600) (not e!329316))))

(declare-fun lt!228152 () Option!1357)

(assert (=> b!544973 (= res!232600 (= (list!2221 (charsOf!636 (_1!3462 (get!2025 lt!228152)))) (originalCharacters!1046 (_1!3462 (get!2025 lt!228152)))))))

(declare-fun b!544974 () Bool)

(assert (=> b!544974 (= e!329316 (contains!1249 rules!3103 (rule!1721 (_1!3462 (get!2025 lt!228152)))))))

(declare-fun b!544975 () Bool)

(declare-fun res!232599 () Bool)

(assert (=> b!544975 (=> (not res!232599) (not e!329316))))

(assert (=> b!544975 (= res!232599 (= (value!33566 (_1!3462 (get!2025 lt!228152))) (apply!1282 (transformation!1007 (rule!1721 (_1!3462 (get!2025 lt!228152)))) (seqFromList!1205 (originalCharacters!1046 (_1!3462 (get!2025 lt!228152)))))))))

(declare-fun b!544976 () Bool)

(declare-fun res!232602 () Bool)

(assert (=> b!544976 (=> (not res!232602) (not e!329316))))

(assert (=> b!544976 (= res!232602 (< (size!4297 (_2!3462 (get!2025 lt!228152))) (size!4297 input!2705)))))

(declare-fun d!191081 () Bool)

(declare-fun e!329314 () Bool)

(assert (=> d!191081 e!329314))

(declare-fun res!232603 () Bool)

(assert (=> d!191081 (=> res!232603 e!329314)))

(declare-fun isEmpty!3871 (Option!1357) Bool)

(assert (=> d!191081 (= res!232603 (isEmpty!3871 lt!228152))))

(declare-fun e!329315 () Option!1357)

(assert (=> d!191081 (= lt!228152 e!329315)))

(declare-fun c!102828 () Bool)

(assert (=> d!191081 (= c!102828 (and ((_ is Cons!5359) rules!3103) ((_ is Nil!5359) (t!74598 rules!3103))))))

(declare-fun lt!228153 () Unit!9388)

(declare-fun lt!228156 () Unit!9388)

(assert (=> d!191081 (= lt!228153 lt!228156)))

(assert (=> d!191081 (isPrefix!649 input!2705 input!2705)))

(assert (=> d!191081 (= lt!228156 (lemmaIsPrefixRefl!389 input!2705 input!2705))))

(assert (=> d!191081 (rulesValidInductive!352 thiss!22590 rules!3103)))

(assert (=> d!191081 (= (maxPrefix!591 thiss!22590 rules!3103 input!2705) lt!228152)))

(declare-fun b!544977 () Bool)

(assert (=> b!544977 (= e!329314 e!329316)))

(declare-fun res!232597 () Bool)

(assert (=> b!544977 (=> (not res!232597) (not e!329316))))

(assert (=> b!544977 (= res!232597 (isDefined!1169 lt!228152))))

(declare-fun b!544978 () Bool)

(declare-fun res!232598 () Bool)

(assert (=> b!544978 (=> (not res!232598) (not e!329316))))

(assert (=> b!544978 (= res!232598 (= (++!1495 (list!2221 (charsOf!636 (_1!3462 (get!2025 lt!228152)))) (_2!3462 (get!2025 lt!228152))) input!2705))))

(declare-fun bm!38315 () Bool)

(declare-fun call!38320 () Option!1357)

(assert (=> bm!38315 (= call!38320 (maxPrefixOneRule!306 thiss!22590 (h!10760 rules!3103) input!2705))))

(declare-fun b!544979 () Bool)

(declare-fun res!232601 () Bool)

(assert (=> b!544979 (=> (not res!232601) (not e!329316))))

(assert (=> b!544979 (= res!232601 (matchR!500 (regex!1007 (rule!1721 (_1!3462 (get!2025 lt!228152)))) (list!2221 (charsOf!636 (_1!3462 (get!2025 lt!228152))))))))

(declare-fun b!544980 () Bool)

(assert (=> b!544980 (= e!329315 call!38320)))

(declare-fun b!544981 () Bool)

(declare-fun lt!228155 () Option!1357)

(declare-fun lt!228154 () Option!1357)

(assert (=> b!544981 (= e!329315 (ite (and ((_ is None!1356) lt!228155) ((_ is None!1356) lt!228154)) None!1356 (ite ((_ is None!1356) lt!228154) lt!228155 (ite ((_ is None!1356) lt!228155) lt!228154 (ite (>= (size!4296 (_1!3462 (v!16171 lt!228155))) (size!4296 (_1!3462 (v!16171 lt!228154)))) lt!228155 lt!228154)))))))

(assert (=> b!544981 (= lt!228155 call!38320)))

(assert (=> b!544981 (= lt!228154 (maxPrefix!591 thiss!22590 (t!74598 rules!3103) input!2705))))

(assert (= (and d!191081 c!102828) b!544980))

(assert (= (and d!191081 (not c!102828)) b!544981))

(assert (= (or b!544980 b!544981) bm!38315))

(assert (= (and d!191081 (not res!232603)) b!544977))

(assert (= (and b!544977 res!232597) b!544973))

(assert (= (and b!544973 res!232600) b!544976))

(assert (= (and b!544976 res!232602) b!544978))

(assert (= (and b!544978 res!232598) b!544975))

(assert (= (and b!544975 res!232599) b!544979))

(assert (= (and b!544979 res!232601) b!544974))

(declare-fun m!793455 () Bool)

(assert (=> b!544978 m!793455))

(declare-fun m!793457 () Bool)

(assert (=> b!544978 m!793457))

(assert (=> b!544978 m!793457))

(declare-fun m!793459 () Bool)

(assert (=> b!544978 m!793459))

(assert (=> b!544978 m!793459))

(declare-fun m!793461 () Bool)

(assert (=> b!544978 m!793461))

(assert (=> b!544973 m!793455))

(assert (=> b!544973 m!793457))

(assert (=> b!544973 m!793457))

(assert (=> b!544973 m!793459))

(declare-fun m!793463 () Bool)

(assert (=> d!191081 m!793463))

(assert (=> d!191081 m!792911))

(assert (=> d!191081 m!792879))

(assert (=> d!191081 m!792969))

(declare-fun m!793465 () Bool)

(assert (=> bm!38315 m!793465))

(assert (=> b!544975 m!793455))

(declare-fun m!793467 () Bool)

(assert (=> b!544975 m!793467))

(assert (=> b!544975 m!793467))

(declare-fun m!793469 () Bool)

(assert (=> b!544975 m!793469))

(declare-fun m!793471 () Bool)

(assert (=> b!544977 m!793471))

(assert (=> b!544974 m!793455))

(declare-fun m!793473 () Bool)

(assert (=> b!544974 m!793473))

(assert (=> b!544979 m!793455))

(assert (=> b!544979 m!793457))

(assert (=> b!544979 m!793457))

(assert (=> b!544979 m!793459))

(assert (=> b!544979 m!793459))

(declare-fun m!793475 () Bool)

(assert (=> b!544979 m!793475))

(assert (=> b!544976 m!793455))

(declare-fun m!793477 () Bool)

(assert (=> b!544976 m!793477))

(declare-fun m!793479 () Bool)

(assert (=> b!544976 m!793479))

(declare-fun m!793481 () Bool)

(assert (=> b!544981 m!793481))

(assert (=> b!544550 d!191081))

(declare-fun b!544993 () Bool)

(declare-fun e!329323 () Int)

(assert (=> b!544993 (= e!329323 (- 1))))

(declare-fun d!191093 () Bool)

(declare-fun lt!228159 () Int)

(assert (=> d!191093 (>= lt!228159 0)))

(declare-fun e!329322 () Int)

(assert (=> d!191093 (= lt!228159 e!329322)))

(declare-fun c!102833 () Bool)

(assert (=> d!191093 (= c!102833 (and ((_ is Cons!5359) rules!3103) (= (h!10760 rules!3103) (rule!1721 (_1!3462 (v!16171 lt!228003))))))))

(assert (=> d!191093 (contains!1249 rules!3103 (rule!1721 (_1!3462 (v!16171 lt!228003))))))

(assert (=> d!191093 (= (getIndex!8 rules!3103 (rule!1721 (_1!3462 (v!16171 lt!228003)))) lt!228159)))

(declare-fun b!544991 () Bool)

(assert (=> b!544991 (= e!329322 e!329323)))

(declare-fun c!102834 () Bool)

(assert (=> b!544991 (= c!102834 (and ((_ is Cons!5359) rules!3103) (not (= (h!10760 rules!3103) (rule!1721 (_1!3462 (v!16171 lt!228003)))))))))

(declare-fun b!544992 () Bool)

(assert (=> b!544992 (= e!329323 (+ 1 (getIndex!8 (t!74598 rules!3103) (rule!1721 (_1!3462 (v!16171 lt!228003))))))))

(declare-fun b!544990 () Bool)

(assert (=> b!544990 (= e!329322 0)))

(assert (= (and d!191093 c!102833) b!544990))

(assert (= (and d!191093 (not c!102833)) b!544991))

(assert (= (and b!544991 c!102834) b!544992))

(assert (= (and b!544991 (not c!102834)) b!544993))

(assert (=> d!191093 m!792939))

(declare-fun m!793483 () Bool)

(assert (=> b!544992 m!793483))

(assert (=> b!544532 d!191093))

(declare-fun b!544997 () Bool)

(declare-fun e!329325 () Int)

(assert (=> b!544997 (= e!329325 (- 1))))

(declare-fun d!191095 () Bool)

(declare-fun lt!228160 () Int)

(assert (=> d!191095 (>= lt!228160 0)))

(declare-fun e!329324 () Int)

(assert (=> d!191095 (= lt!228160 e!329324)))

(declare-fun c!102835 () Bool)

(assert (=> d!191095 (= c!102835 (and ((_ is Cons!5359) rules!3103) (= (h!10760 rules!3103) (rule!1721 token!491))))))

(assert (=> d!191095 (contains!1249 rules!3103 (rule!1721 token!491))))

(assert (=> d!191095 (= (getIndex!8 rules!3103 (rule!1721 token!491)) lt!228160)))

(declare-fun b!544995 () Bool)

(assert (=> b!544995 (= e!329324 e!329325)))

(declare-fun c!102836 () Bool)

(assert (=> b!544995 (= c!102836 (and ((_ is Cons!5359) rules!3103) (not (= (h!10760 rules!3103) (rule!1721 token!491)))))))

(declare-fun b!544996 () Bool)

(assert (=> b!544996 (= e!329325 (+ 1 (getIndex!8 (t!74598 rules!3103) (rule!1721 token!491))))))

(declare-fun b!544994 () Bool)

(assert (=> b!544994 (= e!329324 0)))

(assert (= (and d!191095 c!102835) b!544994))

(assert (= (and d!191095 (not c!102835)) b!544995))

(assert (= (and b!544995 c!102836) b!544996))

(assert (= (and b!544995 (not c!102836)) b!544997))

(assert (=> d!191095 m!792989))

(declare-fun m!793485 () Bool)

(assert (=> b!544996 m!793485))

(assert (=> b!544532 d!191095))

(declare-fun d!191097 () Bool)

(assert (=> d!191097 (= (get!2025 lt!228003) (v!16171 lt!228003))))

(assert (=> b!544552 d!191097))

(declare-fun d!191099 () Bool)

(declare-fun lt!228163 () Int)

(assert (=> d!191099 (>= lt!228163 0)))

(declare-fun e!329328 () Int)

(assert (=> d!191099 (= lt!228163 e!329328)))

(declare-fun c!102839 () Bool)

(assert (=> d!191099 (= c!102839 ((_ is Nil!5357) (originalCharacters!1046 (_1!3462 (v!16171 lt!228003)))))))

(assert (=> d!191099 (= (size!4297 (originalCharacters!1046 (_1!3462 (v!16171 lt!228003)))) lt!228163)))

(declare-fun b!545002 () Bool)

(assert (=> b!545002 (= e!329328 0)))

(declare-fun b!545003 () Bool)

(assert (=> b!545003 (= e!329328 (+ 1 (size!4297 (t!74596 (originalCharacters!1046 (_1!3462 (v!16171 lt!228003)))))))))

(assert (= (and d!191099 c!102839) b!545002))

(assert (= (and d!191099 (not c!102839)) b!545003))

(declare-fun m!793487 () Bool)

(assert (=> b!545003 m!793487))

(assert (=> b!544531 d!191099))

(declare-fun d!191101 () Bool)

(assert (=> d!191101 (= (isDefined!1169 lt!228003) (not (isEmpty!3871 lt!228003)))))

(declare-fun bs!67629 () Bool)

(assert (= bs!67629 d!191101))

(declare-fun m!793489 () Bool)

(assert (=> bs!67629 m!793489))

(assert (=> b!544556 d!191101))

(declare-fun d!191103 () Bool)

(declare-fun lt!228164 () Int)

(assert (=> d!191103 (>= lt!228164 0)))

(declare-fun e!329329 () Int)

(assert (=> d!191103 (= lt!228164 e!329329)))

(declare-fun c!102840 () Bool)

(assert (=> d!191103 (= c!102840 ((_ is Nil!5357) (originalCharacters!1046 token!491)))))

(assert (=> d!191103 (= (size!4297 (originalCharacters!1046 token!491)) lt!228164)))

(declare-fun b!545004 () Bool)

(assert (=> b!545004 (= e!329329 0)))

(declare-fun b!545005 () Bool)

(assert (=> b!545005 (= e!329329 (+ 1 (size!4297 (t!74596 (originalCharacters!1046 token!491)))))))

(assert (= (and d!191103 c!102840) b!545004))

(assert (= (and d!191103 (not c!102840)) b!545005))

(declare-fun m!793491 () Bool)

(assert (=> b!545005 m!793491))

(assert (=> b!544535 d!191103))

(declare-fun d!191105 () Bool)

(assert (=> d!191105 (= (inv!6717 (tag!1269 (h!10760 rules!3103))) (= (mod (str.len (value!33540 (tag!1269 (h!10760 rules!3103)))) 2) 0))))

(assert (=> b!544533 d!191105))

(declare-fun d!191107 () Bool)

(declare-fun res!232604 () Bool)

(declare-fun e!329330 () Bool)

(assert (=> d!191107 (=> (not res!232604) (not e!329330))))

(assert (=> d!191107 (= res!232604 (semiInverseModEq!389 (toChars!1713 (transformation!1007 (h!10760 rules!3103))) (toValue!1854 (transformation!1007 (h!10760 rules!3103)))))))

(assert (=> d!191107 (= (inv!6720 (transformation!1007 (h!10760 rules!3103))) e!329330)))

(declare-fun b!545006 () Bool)

(assert (=> b!545006 (= e!329330 (equivClasses!372 (toChars!1713 (transformation!1007 (h!10760 rules!3103))) (toValue!1854 (transformation!1007 (h!10760 rules!3103)))))))

(assert (= (and d!191107 res!232604) b!545006))

(declare-fun m!793493 () Bool)

(assert (=> d!191107 m!793493))

(declare-fun m!793495 () Bool)

(assert (=> b!545006 m!793495))

(assert (=> b!544533 d!191107))

(declare-fun d!191109 () Bool)

(assert (=> d!191109 (= (isEmpty!3869 rules!3103) ((_ is Nil!5359) rules!3103))))

(assert (=> b!544555 d!191109))

(declare-fun d!191111 () Bool)

(assert (=> d!191111 true))

(declare-fun lt!228167 () Bool)

(declare-fun lambda!15484 () Int)

(declare-fun forall!1524 (List!5369 Int) Bool)

(assert (=> d!191111 (= lt!228167 (forall!1524 rules!3103 lambda!15484))))

(declare-fun e!329336 () Bool)

(assert (=> d!191111 (= lt!228167 e!329336)))

(declare-fun res!232610 () Bool)

(assert (=> d!191111 (=> res!232610 e!329336)))

(assert (=> d!191111 (= res!232610 (not ((_ is Cons!5359) rules!3103)))))

(assert (=> d!191111 (= (rulesValidInductive!352 thiss!22590 rules!3103) lt!228167)))

(declare-fun b!545011 () Bool)

(declare-fun e!329335 () Bool)

(assert (=> b!545011 (= e!329336 e!329335)))

(declare-fun res!232609 () Bool)

(assert (=> b!545011 (=> (not res!232609) (not e!329335))))

(assert (=> b!545011 (= res!232609 (ruleValid!227 thiss!22590 (h!10760 rules!3103)))))

(declare-fun b!545012 () Bool)

(assert (=> b!545012 (= e!329335 (rulesValidInductive!352 thiss!22590 (t!74598 rules!3103)))))

(assert (= (and d!191111 (not res!232610)) b!545011))

(assert (= (and b!545011 res!232609) b!545012))

(declare-fun m!793497 () Bool)

(assert (=> d!191111 m!793497))

(declare-fun m!793499 () Bool)

(assert (=> b!545011 m!793499))

(declare-fun m!793501 () Bool)

(assert (=> b!545012 m!793501))

(assert (=> b!544534 d!191111))

(declare-fun d!191113 () Bool)

(assert (=> d!191113 (= (isEmpty!3868 (_2!3462 (v!16171 lt!228003))) ((_ is Nil!5357) (_2!3462 (v!16171 lt!228003))))))

(assert (=> b!544559 d!191113))

(declare-fun b!545033 () Bool)

(declare-fun e!329347 () Option!1357)

(assert (=> b!545033 (= e!329347 None!1356)))

(declare-fun b!545034 () Bool)

(declare-fun e!329348 () Bool)

(declare-fun lt!228179 () Option!1357)

(assert (=> b!545034 (= e!329348 (= (size!4296 (_1!3462 (get!2025 lt!228179))) (size!4297 (originalCharacters!1046 (_1!3462 (get!2025 lt!228179))))))))

(declare-fun b!545036 () Bool)

(declare-fun e!329346 () Bool)

(assert (=> b!545036 (= e!329346 e!329348)))

(declare-fun res!232628 () Bool)

(assert (=> b!545036 (=> (not res!232628) (not e!329348))))

(assert (=> b!545036 (= res!232628 (matchR!500 (regex!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))) (list!2221 (charsOf!636 (_1!3462 (get!2025 lt!228179))))))))

(declare-fun b!545037 () Bool)

(declare-fun e!329345 () Bool)

(declare-datatypes ((tuple2!6400 0))(
  ( (tuple2!6401 (_1!3464 List!5367) (_2!3464 List!5367)) )
))
(declare-fun findLongestMatchInner!135 (Regex!1341 List!5367 Int List!5367 List!5367 Int) tuple2!6400)

(assert (=> b!545037 (= e!329345 (matchR!500 (regex!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))) (_1!3464 (findLongestMatchInner!135 (regex!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))) Nil!5357 (size!4297 Nil!5357) input!2705 input!2705 (size!4297 input!2705)))))))

(declare-fun b!545038 () Bool)

(declare-fun res!232630 () Bool)

(assert (=> b!545038 (=> (not res!232630) (not e!329348))))

(assert (=> b!545038 (= res!232630 (= (rule!1721 (_1!3462 (get!2025 lt!228179))) (rule!1721 (_1!3462 (v!16171 lt!228003)))))))

(declare-fun b!545039 () Bool)

(declare-fun res!232629 () Bool)

(assert (=> b!545039 (=> (not res!232629) (not e!329348))))

(assert (=> b!545039 (= res!232629 (= (value!33566 (_1!3462 (get!2025 lt!228179))) (apply!1282 (transformation!1007 (rule!1721 (_1!3462 (get!2025 lt!228179)))) (seqFromList!1205 (originalCharacters!1046 (_1!3462 (get!2025 lt!228179)))))))))

(declare-fun b!545040 () Bool)

(declare-fun lt!228178 () tuple2!6400)

(declare-fun size!4299 (BalanceConc!3456) Int)

(assert (=> b!545040 (= e!329347 (Some!1356 (tuple2!6397 (Token!1751 (apply!1282 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))) (seqFromList!1205 (_1!3464 lt!228178))) (rule!1721 (_1!3462 (v!16171 lt!228003))) (size!4299 (seqFromList!1205 (_1!3464 lt!228178))) (_1!3464 lt!228178)) (_2!3464 lt!228178))))))

(declare-fun lt!228180 () Unit!9388)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!119 (Regex!1341 List!5367) Unit!9388)

(assert (=> b!545040 (= lt!228180 (longestMatchIsAcceptedByMatchOrIsEmpty!119 (regex!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))) input!2705))))

(declare-fun res!232625 () Bool)

(assert (=> b!545040 (= res!232625 (isEmpty!3868 (_1!3464 (findLongestMatchInner!135 (regex!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))) Nil!5357 (size!4297 Nil!5357) input!2705 input!2705 (size!4297 input!2705)))))))

(assert (=> b!545040 (=> res!232625 e!329345)))

(assert (=> b!545040 e!329345))

(declare-fun lt!228181 () Unit!9388)

(assert (=> b!545040 (= lt!228181 lt!228180)))

(declare-fun lt!228182 () Unit!9388)

(assert (=> b!545040 (= lt!228182 (lemmaSemiInverse!136 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))) (seqFromList!1205 (_1!3464 lt!228178))))))

(declare-fun b!545041 () Bool)

(declare-fun res!232626 () Bool)

(assert (=> b!545041 (=> (not res!232626) (not e!329348))))

(assert (=> b!545041 (= res!232626 (< (size!4297 (_2!3462 (get!2025 lt!228179))) (size!4297 input!2705)))))

(declare-fun b!545035 () Bool)

(declare-fun res!232627 () Bool)

(assert (=> b!545035 (=> (not res!232627) (not e!329348))))

(assert (=> b!545035 (= res!232627 (= (++!1495 (list!2221 (charsOf!636 (_1!3462 (get!2025 lt!228179)))) (_2!3462 (get!2025 lt!228179))) input!2705))))

(declare-fun d!191115 () Bool)

(assert (=> d!191115 e!329346))

(declare-fun res!232631 () Bool)

(assert (=> d!191115 (=> res!232631 e!329346)))

(assert (=> d!191115 (= res!232631 (isEmpty!3871 lt!228179))))

(assert (=> d!191115 (= lt!228179 e!329347)))

(declare-fun c!102843 () Bool)

(assert (=> d!191115 (= c!102843 (isEmpty!3868 (_1!3464 lt!228178)))))

(declare-fun findLongestMatch!114 (Regex!1341 List!5367) tuple2!6400)

(assert (=> d!191115 (= lt!228178 (findLongestMatch!114 (regex!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))) input!2705))))

(assert (=> d!191115 (ruleValid!227 thiss!22590 (rule!1721 (_1!3462 (v!16171 lt!228003))))))

(assert (=> d!191115 (= (maxPrefixOneRule!306 thiss!22590 (rule!1721 (_1!3462 (v!16171 lt!228003))) input!2705) lt!228179)))

(assert (= (and d!191115 c!102843) b!545033))

(assert (= (and d!191115 (not c!102843)) b!545040))

(assert (= (and b!545040 (not res!232625)) b!545037))

(assert (= (and d!191115 (not res!232631)) b!545036))

(assert (= (and b!545036 res!232628) b!545035))

(assert (= (and b!545035 res!232627) b!545041))

(assert (= (and b!545041 res!232626) b!545038))

(assert (= (and b!545038 res!232630) b!545039))

(assert (= (and b!545039 res!232629) b!545034))

(declare-fun m!793503 () Bool)

(assert (=> b!545037 m!793503))

(assert (=> b!545037 m!793479))

(assert (=> b!545037 m!793503))

(assert (=> b!545037 m!793479))

(declare-fun m!793505 () Bool)

(assert (=> b!545037 m!793505))

(declare-fun m!793507 () Bool)

(assert (=> b!545037 m!793507))

(declare-fun m!793509 () Bool)

(assert (=> b!545036 m!793509))

(declare-fun m!793511 () Bool)

(assert (=> b!545036 m!793511))

(assert (=> b!545036 m!793511))

(declare-fun m!793513 () Bool)

(assert (=> b!545036 m!793513))

(assert (=> b!545036 m!793513))

(declare-fun m!793515 () Bool)

(assert (=> b!545036 m!793515))

(assert (=> b!545035 m!793509))

(assert (=> b!545035 m!793511))

(assert (=> b!545035 m!793511))

(assert (=> b!545035 m!793513))

(assert (=> b!545035 m!793513))

(declare-fun m!793517 () Bool)

(assert (=> b!545035 m!793517))

(assert (=> b!545041 m!793509))

(declare-fun m!793519 () Bool)

(assert (=> b!545041 m!793519))

(assert (=> b!545041 m!793479))

(assert (=> b!545040 m!793479))

(declare-fun m!793521 () Bool)

(assert (=> b!545040 m!793521))

(assert (=> b!545040 m!793521))

(declare-fun m!793523 () Bool)

(assert (=> b!545040 m!793523))

(declare-fun m!793525 () Bool)

(assert (=> b!545040 m!793525))

(declare-fun m!793527 () Bool)

(assert (=> b!545040 m!793527))

(assert (=> b!545040 m!793503))

(assert (=> b!545040 m!793503))

(assert (=> b!545040 m!793479))

(assert (=> b!545040 m!793505))

(assert (=> b!545040 m!793521))

(declare-fun m!793529 () Bool)

(assert (=> b!545040 m!793529))

(assert (=> b!545040 m!793521))

(declare-fun m!793531 () Bool)

(assert (=> b!545040 m!793531))

(assert (=> b!545034 m!793509))

(declare-fun m!793533 () Bool)

(assert (=> b!545034 m!793533))

(assert (=> b!545039 m!793509))

(declare-fun m!793535 () Bool)

(assert (=> b!545039 m!793535))

(assert (=> b!545039 m!793535))

(declare-fun m!793537 () Bool)

(assert (=> b!545039 m!793537))

(assert (=> b!545038 m!793509))

(declare-fun m!793539 () Bool)

(assert (=> d!191115 m!793539))

(declare-fun m!793541 () Bool)

(assert (=> d!191115 m!793541))

(declare-fun m!793543 () Bool)

(assert (=> d!191115 m!793543))

(assert (=> d!191115 m!792899))

(assert (=> b!544538 d!191115))

(declare-fun d!191117 () Bool)

(assert (=> d!191117 (= (maxPrefixOneRule!306 thiss!22590 (rule!1721 (_1!3462 (v!16171 lt!228003))) input!2705) (Some!1356 (tuple2!6397 (Token!1751 (apply!1282 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))) (seqFromList!1205 lt!227984)) (rule!1721 (_1!3462 (v!16171 lt!228003))) (size!4297 lt!227984) lt!227984) (_2!3462 (v!16171 lt!228003)))))))

(declare-fun lt!228185 () Unit!9388)

(declare-fun choose!3854 (LexerInterface!893 List!5369 List!5367 List!5367 List!5367 Rule!1814) Unit!9388)

(assert (=> d!191117 (= lt!228185 (choose!3854 thiss!22590 rules!3103 lt!227984 input!2705 (_2!3462 (v!16171 lt!228003)) (rule!1721 (_1!3462 (v!16171 lt!228003)))))))

(assert (=> d!191117 (not (isEmpty!3869 rules!3103))))

(assert (=> d!191117 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!58 thiss!22590 rules!3103 lt!227984 input!2705 (_2!3462 (v!16171 lt!228003)) (rule!1721 (_1!3462 (v!16171 lt!228003)))) lt!228185)))

(declare-fun bs!67630 () Bool)

(assert (= bs!67630 d!191117))

(declare-fun m!793545 () Bool)

(assert (=> bs!67630 m!793545))

(assert (=> bs!67630 m!792877))

(assert (=> bs!67630 m!792901))

(assert (=> bs!67630 m!792877))

(declare-fun m!793547 () Bool)

(assert (=> bs!67630 m!793547))

(assert (=> bs!67630 m!792951))

(assert (=> bs!67630 m!792977))

(assert (=> b!544538 d!191117))

(assert (=> b!544538 d!191017))

(declare-fun d!191119 () Bool)

(assert (=> d!191119 (= (apply!1282 (transformation!1007 (rule!1721 token!491)) lt!228013) (dynLambda!3131 (toValue!1854 (transformation!1007 (rule!1721 token!491))) lt!228013))))

(declare-fun b_lambda!20939 () Bool)

(assert (=> (not b_lambda!20939) (not d!191119)))

(declare-fun t!74648 () Bool)

(declare-fun tb!47847 () Bool)

(assert (=> (and b!544541 (= (toValue!1854 (transformation!1007 (h!10760 rules!3103))) (toValue!1854 (transformation!1007 (rule!1721 token!491)))) t!74648) tb!47847))

(declare-fun result!53496 () Bool)

(assert (=> tb!47847 (= result!53496 (inv!21 (dynLambda!3131 (toValue!1854 (transformation!1007 (rule!1721 token!491))) lt!228013)))))

(declare-fun m!793549 () Bool)

(assert (=> tb!47847 m!793549))

(assert (=> d!191119 t!74648))

(declare-fun b_and!53227 () Bool)

(assert (= b_and!53207 (and (=> t!74648 result!53496) b_and!53227)))

(declare-fun t!74650 () Bool)

(declare-fun tb!47849 () Bool)

(assert (=> (and b!544545 (= (toValue!1854 (transformation!1007 (rule!1721 token!491))) (toValue!1854 (transformation!1007 (rule!1721 token!491)))) t!74650) tb!47849))

(declare-fun result!53498 () Bool)

(assert (= result!53498 result!53496))

(assert (=> d!191119 t!74650))

(declare-fun b_and!53229 () Bool)

(assert (= b_and!53209 (and (=> t!74650 result!53498) b_and!53229)))

(declare-fun m!793551 () Bool)

(assert (=> d!191119 m!793551))

(assert (=> b!544538 d!191119))

(declare-fun d!191121 () Bool)

(assert (=> d!191121 (= (maxPrefixOneRule!306 thiss!22590 (rule!1721 token!491) lt!227995) (Some!1356 (tuple2!6397 (Token!1751 (apply!1282 (transformation!1007 (rule!1721 token!491)) (seqFromList!1205 lt!228006)) (rule!1721 token!491) (size!4297 lt!228006) lt!228006) suffix!1342)))))

(declare-fun lt!228186 () Unit!9388)

(assert (=> d!191121 (= lt!228186 (choose!3854 thiss!22590 rules!3103 lt!228006 lt!227995 suffix!1342 (rule!1721 token!491)))))

(assert (=> d!191121 (not (isEmpty!3869 rules!3103))))

(assert (=> d!191121 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!58 thiss!22590 rules!3103 lt!228006 lt!227995 suffix!1342 (rule!1721 token!491)) lt!228186)))

(declare-fun bs!67631 () Bool)

(assert (= bs!67631 d!191121))

(declare-fun m!793553 () Bool)

(assert (=> bs!67631 m!793553))

(assert (=> bs!67631 m!792955))

(assert (=> bs!67631 m!792907))

(assert (=> bs!67631 m!792955))

(declare-fun m!793555 () Bool)

(assert (=> bs!67631 m!793555))

(assert (=> bs!67631 m!792961))

(assert (=> bs!67631 m!792977))

(assert (=> b!544538 d!191121))

(declare-fun b!545042 () Bool)

(declare-fun e!329352 () Option!1357)

(assert (=> b!545042 (= e!329352 None!1356)))

(declare-fun b!545043 () Bool)

(declare-fun e!329353 () Bool)

(declare-fun lt!228188 () Option!1357)

(assert (=> b!545043 (= e!329353 (= (size!4296 (_1!3462 (get!2025 lt!228188))) (size!4297 (originalCharacters!1046 (_1!3462 (get!2025 lt!228188))))))))

(declare-fun b!545045 () Bool)

(declare-fun e!329351 () Bool)

(assert (=> b!545045 (= e!329351 e!329353)))

(declare-fun res!232635 () Bool)

(assert (=> b!545045 (=> (not res!232635) (not e!329353))))

(assert (=> b!545045 (= res!232635 (matchR!500 (regex!1007 (rule!1721 token!491)) (list!2221 (charsOf!636 (_1!3462 (get!2025 lt!228188))))))))

(declare-fun b!545046 () Bool)

(declare-fun e!329350 () Bool)

(assert (=> b!545046 (= e!329350 (matchR!500 (regex!1007 (rule!1721 token!491)) (_1!3464 (findLongestMatchInner!135 (regex!1007 (rule!1721 token!491)) Nil!5357 (size!4297 Nil!5357) lt!227995 lt!227995 (size!4297 lt!227995)))))))

(declare-fun b!545047 () Bool)

(declare-fun res!232637 () Bool)

(assert (=> b!545047 (=> (not res!232637) (not e!329353))))

(assert (=> b!545047 (= res!232637 (= (rule!1721 (_1!3462 (get!2025 lt!228188))) (rule!1721 token!491)))))

(declare-fun b!545048 () Bool)

(declare-fun res!232636 () Bool)

(assert (=> b!545048 (=> (not res!232636) (not e!329353))))

(assert (=> b!545048 (= res!232636 (= (value!33566 (_1!3462 (get!2025 lt!228188))) (apply!1282 (transformation!1007 (rule!1721 (_1!3462 (get!2025 lt!228188)))) (seqFromList!1205 (originalCharacters!1046 (_1!3462 (get!2025 lt!228188)))))))))

(declare-fun b!545049 () Bool)

(declare-fun lt!228187 () tuple2!6400)

(assert (=> b!545049 (= e!329352 (Some!1356 (tuple2!6397 (Token!1751 (apply!1282 (transformation!1007 (rule!1721 token!491)) (seqFromList!1205 (_1!3464 lt!228187))) (rule!1721 token!491) (size!4299 (seqFromList!1205 (_1!3464 lt!228187))) (_1!3464 lt!228187)) (_2!3464 lt!228187))))))

(declare-fun lt!228189 () Unit!9388)

(assert (=> b!545049 (= lt!228189 (longestMatchIsAcceptedByMatchOrIsEmpty!119 (regex!1007 (rule!1721 token!491)) lt!227995))))

(declare-fun res!232632 () Bool)

(assert (=> b!545049 (= res!232632 (isEmpty!3868 (_1!3464 (findLongestMatchInner!135 (regex!1007 (rule!1721 token!491)) Nil!5357 (size!4297 Nil!5357) lt!227995 lt!227995 (size!4297 lt!227995)))))))

(assert (=> b!545049 (=> res!232632 e!329350)))

(assert (=> b!545049 e!329350))

(declare-fun lt!228190 () Unit!9388)

(assert (=> b!545049 (= lt!228190 lt!228189)))

(declare-fun lt!228191 () Unit!9388)

(assert (=> b!545049 (= lt!228191 (lemmaSemiInverse!136 (transformation!1007 (rule!1721 token!491)) (seqFromList!1205 (_1!3464 lt!228187))))))

(declare-fun b!545050 () Bool)

(declare-fun res!232633 () Bool)

(assert (=> b!545050 (=> (not res!232633) (not e!329353))))

(assert (=> b!545050 (= res!232633 (< (size!4297 (_2!3462 (get!2025 lt!228188))) (size!4297 lt!227995)))))

(declare-fun b!545044 () Bool)

(declare-fun res!232634 () Bool)

(assert (=> b!545044 (=> (not res!232634) (not e!329353))))

(assert (=> b!545044 (= res!232634 (= (++!1495 (list!2221 (charsOf!636 (_1!3462 (get!2025 lt!228188)))) (_2!3462 (get!2025 lt!228188))) lt!227995))))

(declare-fun d!191123 () Bool)

(assert (=> d!191123 e!329351))

(declare-fun res!232638 () Bool)

(assert (=> d!191123 (=> res!232638 e!329351)))

(assert (=> d!191123 (= res!232638 (isEmpty!3871 lt!228188))))

(assert (=> d!191123 (= lt!228188 e!329352)))

(declare-fun c!102844 () Bool)

(assert (=> d!191123 (= c!102844 (isEmpty!3868 (_1!3464 lt!228187)))))

(assert (=> d!191123 (= lt!228187 (findLongestMatch!114 (regex!1007 (rule!1721 token!491)) lt!227995))))

(assert (=> d!191123 (ruleValid!227 thiss!22590 (rule!1721 token!491))))

(assert (=> d!191123 (= (maxPrefixOneRule!306 thiss!22590 (rule!1721 token!491) lt!227995) lt!228188)))

(assert (= (and d!191123 c!102844) b!545042))

(assert (= (and d!191123 (not c!102844)) b!545049))

(assert (= (and b!545049 (not res!232632)) b!545046))

(assert (= (and d!191123 (not res!232638)) b!545045))

(assert (= (and b!545045 res!232635) b!545044))

(assert (= (and b!545044 res!232634) b!545050))

(assert (= (and b!545050 res!232633) b!545047))

(assert (= (and b!545047 res!232637) b!545048))

(assert (= (and b!545048 res!232636) b!545043))

(assert (=> b!545046 m!793503))

(declare-fun m!793557 () Bool)

(assert (=> b!545046 m!793557))

(assert (=> b!545046 m!793503))

(assert (=> b!545046 m!793557))

(declare-fun m!793559 () Bool)

(assert (=> b!545046 m!793559))

(declare-fun m!793561 () Bool)

(assert (=> b!545046 m!793561))

(declare-fun m!793563 () Bool)

(assert (=> b!545045 m!793563))

(declare-fun m!793565 () Bool)

(assert (=> b!545045 m!793565))

(assert (=> b!545045 m!793565))

(declare-fun m!793567 () Bool)

(assert (=> b!545045 m!793567))

(assert (=> b!545045 m!793567))

(declare-fun m!793569 () Bool)

(assert (=> b!545045 m!793569))

(assert (=> b!545044 m!793563))

(assert (=> b!545044 m!793565))

(assert (=> b!545044 m!793565))

(assert (=> b!545044 m!793567))

(assert (=> b!545044 m!793567))

(declare-fun m!793571 () Bool)

(assert (=> b!545044 m!793571))

(assert (=> b!545050 m!793563))

(declare-fun m!793573 () Bool)

(assert (=> b!545050 m!793573))

(assert (=> b!545050 m!793557))

(assert (=> b!545049 m!793557))

(declare-fun m!793575 () Bool)

(assert (=> b!545049 m!793575))

(assert (=> b!545049 m!793575))

(declare-fun m!793577 () Bool)

(assert (=> b!545049 m!793577))

(declare-fun m!793579 () Bool)

(assert (=> b!545049 m!793579))

(declare-fun m!793581 () Bool)

(assert (=> b!545049 m!793581))

(assert (=> b!545049 m!793503))

(assert (=> b!545049 m!793503))

(assert (=> b!545049 m!793557))

(assert (=> b!545049 m!793559))

(assert (=> b!545049 m!793575))

(declare-fun m!793583 () Bool)

(assert (=> b!545049 m!793583))

(assert (=> b!545049 m!793575))

(declare-fun m!793585 () Bool)

(assert (=> b!545049 m!793585))

(assert (=> b!545043 m!793563))

(declare-fun m!793587 () Bool)

(assert (=> b!545043 m!793587))

(assert (=> b!545048 m!793563))

(declare-fun m!793589 () Bool)

(assert (=> b!545048 m!793589))

(assert (=> b!545048 m!793589))

(declare-fun m!793591 () Bool)

(assert (=> b!545048 m!793591))

(assert (=> b!545047 m!793563))

(declare-fun m!793593 () Bool)

(assert (=> d!191123 m!793593))

(declare-fun m!793595 () Bool)

(assert (=> d!191123 m!793595))

(declare-fun m!793597 () Bool)

(assert (=> d!191123 m!793597))

(assert (=> d!191123 m!792893))

(assert (=> b!544538 d!191123))

(declare-fun d!191125 () Bool)

(declare-fun lt!228194 () List!5367)

(assert (=> d!191125 (= (++!1495 lt!228006 lt!228194) lt!227995)))

(declare-fun e!329356 () List!5367)

(assert (=> d!191125 (= lt!228194 e!329356)))

(declare-fun c!102847 () Bool)

(assert (=> d!191125 (= c!102847 ((_ is Cons!5357) lt!228006))))

(assert (=> d!191125 (>= (size!4297 lt!227995) (size!4297 lt!228006))))

(assert (=> d!191125 (= (getSuffix!172 lt!227995 lt!228006) lt!228194)))

(declare-fun b!545055 () Bool)

(assert (=> b!545055 (= e!329356 (getSuffix!172 (tail!717 lt!227995) (t!74596 lt!228006)))))

(declare-fun b!545056 () Bool)

(assert (=> b!545056 (= e!329356 lt!227995)))

(assert (= (and d!191125 c!102847) b!545055))

(assert (= (and d!191125 (not c!102847)) b!545056))

(declare-fun m!793599 () Bool)

(assert (=> d!191125 m!793599))

(assert (=> d!191125 m!793557))

(assert (=> d!191125 m!792907))

(declare-fun m!793601 () Bool)

(assert (=> b!545055 m!793601))

(assert (=> b!545055 m!793601))

(declare-fun m!793603 () Bool)

(assert (=> b!545055 m!793603))

(assert (=> b!544538 d!191125))

(declare-fun bs!67632 () Bool)

(declare-fun d!191127 () Bool)

(assert (= bs!67632 (and d!191127 d!191017)))

(declare-fun lambda!15485 () Int)

(assert (=> bs!67632 (= (and (= (toChars!1713 (transformation!1007 (rule!1721 token!491))) (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))))) (= (toValue!1854 (transformation!1007 (rule!1721 token!491))) (toValue!1854 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))))) (= lambda!15485 lambda!15480))))

(declare-fun b!545057 () Bool)

(declare-fun e!329357 () Bool)

(assert (=> b!545057 (= e!329357 true)))

(assert (=> d!191127 e!329357))

(assert (= d!191127 b!545057))

(assert (=> b!545057 (< (dynLambda!3128 order!4457 (toValue!1854 (transformation!1007 (rule!1721 token!491)))) (dynLambda!3129 order!4459 lambda!15485))))

(assert (=> b!545057 (< (dynLambda!3130 order!4461 (toChars!1713 (transformation!1007 (rule!1721 token!491)))) (dynLambda!3129 order!4459 lambda!15485))))

(assert (=> d!191127 (= (list!2221 (dynLambda!3124 (toChars!1713 (transformation!1007 (rule!1721 token!491))) (dynLambda!3131 (toValue!1854 (transformation!1007 (rule!1721 token!491))) lt!228013))) (list!2221 lt!228013))))

(declare-fun lt!228195 () Unit!9388)

(assert (=> d!191127 (= lt!228195 (ForallOf!84 lambda!15485 lt!228013))))

(assert (=> d!191127 (= (lemmaSemiInverse!136 (transformation!1007 (rule!1721 token!491)) lt!228013) lt!228195)))

(declare-fun b_lambda!20941 () Bool)

(assert (=> (not b_lambda!20941) (not d!191127)))

(declare-fun t!74652 () Bool)

(declare-fun tb!47851 () Bool)

(assert (=> (and b!544541 (= (toChars!1713 (transformation!1007 (h!10760 rules!3103))) (toChars!1713 (transformation!1007 (rule!1721 token!491)))) t!74652) tb!47851))

(declare-fun b!545058 () Bool)

(declare-fun e!329358 () Bool)

(declare-fun tp!173144 () Bool)

(assert (=> b!545058 (= e!329358 (and (inv!6724 (c!102765 (dynLambda!3124 (toChars!1713 (transformation!1007 (rule!1721 token!491))) (dynLambda!3131 (toValue!1854 (transformation!1007 (rule!1721 token!491))) lt!228013)))) tp!173144))))

(declare-fun result!53500 () Bool)

(assert (=> tb!47851 (= result!53500 (and (inv!6725 (dynLambda!3124 (toChars!1713 (transformation!1007 (rule!1721 token!491))) (dynLambda!3131 (toValue!1854 (transformation!1007 (rule!1721 token!491))) lt!228013))) e!329358))))

(assert (= tb!47851 b!545058))

(declare-fun m!793605 () Bool)

(assert (=> b!545058 m!793605))

(declare-fun m!793607 () Bool)

(assert (=> tb!47851 m!793607))

(assert (=> d!191127 t!74652))

(declare-fun b_and!53231 () Bool)

(assert (= b_and!53211 (and (=> t!74652 result!53500) b_and!53231)))

(declare-fun t!74654 () Bool)

(declare-fun tb!47853 () Bool)

(assert (=> (and b!544545 (= (toChars!1713 (transformation!1007 (rule!1721 token!491))) (toChars!1713 (transformation!1007 (rule!1721 token!491)))) t!74654) tb!47853))

(declare-fun result!53502 () Bool)

(assert (= result!53502 result!53500))

(assert (=> d!191127 t!74654))

(declare-fun b_and!53233 () Bool)

(assert (= b_and!53213 (and (=> t!74654 result!53502) b_and!53233)))

(declare-fun b_lambda!20943 () Bool)

(assert (=> (not b_lambda!20943) (not d!191127)))

(assert (=> d!191127 t!74648))

(declare-fun b_and!53235 () Bool)

(assert (= b_and!53227 (and (=> t!74648 result!53496) b_and!53235)))

(assert (=> d!191127 t!74650))

(declare-fun b_and!53237 () Bool)

(assert (= b_and!53229 (and (=> t!74650 result!53498) b_and!53237)))

(declare-fun m!793609 () Bool)

(assert (=> d!191127 m!793609))

(assert (=> d!191127 m!793551))

(declare-fun m!793611 () Bool)

(assert (=> d!191127 m!793611))

(assert (=> d!191127 m!793611))

(declare-fun m!793613 () Bool)

(assert (=> d!191127 m!793613))

(assert (=> d!191127 m!793551))

(declare-fun m!793615 () Bool)

(assert (=> d!191127 m!793615))

(assert (=> b!544538 d!191127))

(declare-fun d!191129 () Bool)

(assert (=> d!191129 (= suffix!1342 lt!228010)))

(declare-fun lt!228198 () Unit!9388)

(declare-fun choose!3856 (List!5367 List!5367 List!5367 List!5367 List!5367) Unit!9388)

(assert (=> d!191129 (= lt!228198 (choose!3856 lt!228006 suffix!1342 lt!228006 lt!228010 lt!227995))))

(assert (=> d!191129 (isPrefix!649 lt!228006 lt!227995)))

(assert (=> d!191129 (= (lemmaSamePrefixThenSameSuffix!376 lt!228006 suffix!1342 lt!228006 lt!228010 lt!227995) lt!228198)))

(declare-fun bs!67633 () Bool)

(assert (= bs!67633 d!191129))

(declare-fun m!793617 () Bool)

(assert (=> bs!67633 m!793617))

(declare-fun m!793619 () Bool)

(assert (=> bs!67633 m!793619))

(assert (=> b!544538 d!191129))

(declare-fun d!191131 () Bool)

(declare-fun fromListB!525 (List!5367) BalanceConc!3456)

(assert (=> d!191131 (= (seqFromList!1205 lt!228006) (fromListB!525 lt!228006))))

(declare-fun bs!67634 () Bool)

(assert (= bs!67634 d!191131))

(declare-fun m!793621 () Bool)

(assert (=> bs!67634 m!793621))

(assert (=> b!544538 d!191131))

(declare-fun b!545069 () Bool)

(declare-fun e!329367 () Bool)

(declare-fun inv!17 (TokenValue!1031) Bool)

(assert (=> b!545069 (= e!329367 (inv!17 (value!33566 token!491)))))

(declare-fun d!191133 () Bool)

(declare-fun c!102852 () Bool)

(assert (=> d!191133 (= c!102852 ((_ is IntegerValue!3093) (value!33566 token!491)))))

(declare-fun e!329365 () Bool)

(assert (=> d!191133 (= (inv!21 (value!33566 token!491)) e!329365)))

(declare-fun b!545070 () Bool)

(assert (=> b!545070 (= e!329365 e!329367)))

(declare-fun c!102853 () Bool)

(assert (=> b!545070 (= c!102853 ((_ is IntegerValue!3094) (value!33566 token!491)))))

(declare-fun b!545071 () Bool)

(declare-fun e!329366 () Bool)

(declare-fun inv!15 (TokenValue!1031) Bool)

(assert (=> b!545071 (= e!329366 (inv!15 (value!33566 token!491)))))

(declare-fun b!545072 () Bool)

(declare-fun res!232641 () Bool)

(assert (=> b!545072 (=> res!232641 e!329366)))

(assert (=> b!545072 (= res!232641 (not ((_ is IntegerValue!3095) (value!33566 token!491))))))

(assert (=> b!545072 (= e!329367 e!329366)))

(declare-fun b!545073 () Bool)

(declare-fun inv!16 (TokenValue!1031) Bool)

(assert (=> b!545073 (= e!329365 (inv!16 (value!33566 token!491)))))

(assert (= (and d!191133 c!102852) b!545073))

(assert (= (and d!191133 (not c!102852)) b!545070))

(assert (= (and b!545070 c!102853) b!545069))

(assert (= (and b!545070 (not c!102853)) b!545072))

(assert (= (and b!545072 (not res!232641)) b!545071))

(declare-fun m!793623 () Bool)

(assert (=> b!545069 m!793623))

(declare-fun m!793625 () Bool)

(assert (=> b!545071 m!793625))

(declare-fun m!793627 () Bool)

(assert (=> b!545073 m!793627))

(assert (=> b!544536 d!191133))

(declare-fun d!191135 () Bool)

(assert (=> d!191135 (= (isEmpty!3868 input!2705) ((_ is Nil!5357) input!2705))))

(assert (=> b!544540 d!191135))

(declare-fun d!191137 () Bool)

(assert (=> d!191137 (= (isDefined!1169 lt!227976) (not (isEmpty!3871 lt!227976)))))

(declare-fun bs!67635 () Bool)

(assert (= bs!67635 d!191137))

(declare-fun m!793629 () Bool)

(assert (=> bs!67635 m!793629))

(assert (=> b!544562 d!191137))

(declare-fun b!545074 () Bool)

(declare-fun res!232645 () Bool)

(declare-fun e!329370 () Bool)

(assert (=> b!545074 (=> (not res!232645) (not e!329370))))

(declare-fun lt!228199 () Option!1357)

(assert (=> b!545074 (= res!232645 (= (list!2221 (charsOf!636 (_1!3462 (get!2025 lt!228199)))) (originalCharacters!1046 (_1!3462 (get!2025 lt!228199)))))))

(declare-fun b!545075 () Bool)

(assert (=> b!545075 (= e!329370 (contains!1249 rules!3103 (rule!1721 (_1!3462 (get!2025 lt!228199)))))))

(declare-fun b!545076 () Bool)

(declare-fun res!232644 () Bool)

(assert (=> b!545076 (=> (not res!232644) (not e!329370))))

(assert (=> b!545076 (= res!232644 (= (value!33566 (_1!3462 (get!2025 lt!228199))) (apply!1282 (transformation!1007 (rule!1721 (_1!3462 (get!2025 lt!228199)))) (seqFromList!1205 (originalCharacters!1046 (_1!3462 (get!2025 lt!228199)))))))))

(declare-fun b!545077 () Bool)

(declare-fun res!232647 () Bool)

(assert (=> b!545077 (=> (not res!232647) (not e!329370))))

(assert (=> b!545077 (= res!232647 (< (size!4297 (_2!3462 (get!2025 lt!228199))) (size!4297 lt!227995)))))

(declare-fun d!191139 () Bool)

(declare-fun e!329368 () Bool)

(assert (=> d!191139 e!329368))

(declare-fun res!232648 () Bool)

(assert (=> d!191139 (=> res!232648 e!329368)))

(assert (=> d!191139 (= res!232648 (isEmpty!3871 lt!228199))))

(declare-fun e!329369 () Option!1357)

(assert (=> d!191139 (= lt!228199 e!329369)))

(declare-fun c!102854 () Bool)

(assert (=> d!191139 (= c!102854 (and ((_ is Cons!5359) rules!3103) ((_ is Nil!5359) (t!74598 rules!3103))))))

(declare-fun lt!228200 () Unit!9388)

(declare-fun lt!228203 () Unit!9388)

(assert (=> d!191139 (= lt!228200 lt!228203)))

(assert (=> d!191139 (isPrefix!649 lt!227995 lt!227995)))

(assert (=> d!191139 (= lt!228203 (lemmaIsPrefixRefl!389 lt!227995 lt!227995))))

(assert (=> d!191139 (rulesValidInductive!352 thiss!22590 rules!3103)))

(assert (=> d!191139 (= (maxPrefix!591 thiss!22590 rules!3103 lt!227995) lt!228199)))

(declare-fun b!545078 () Bool)

(assert (=> b!545078 (= e!329368 e!329370)))

(declare-fun res!232642 () Bool)

(assert (=> b!545078 (=> (not res!232642) (not e!329370))))

(assert (=> b!545078 (= res!232642 (isDefined!1169 lt!228199))))

(declare-fun b!545079 () Bool)

(declare-fun res!232643 () Bool)

(assert (=> b!545079 (=> (not res!232643) (not e!329370))))

(assert (=> b!545079 (= res!232643 (= (++!1495 (list!2221 (charsOf!636 (_1!3462 (get!2025 lt!228199)))) (_2!3462 (get!2025 lt!228199))) lt!227995))))

(declare-fun call!38321 () Option!1357)

(declare-fun bm!38316 () Bool)

(assert (=> bm!38316 (= call!38321 (maxPrefixOneRule!306 thiss!22590 (h!10760 rules!3103) lt!227995))))

(declare-fun b!545080 () Bool)

(declare-fun res!232646 () Bool)

(assert (=> b!545080 (=> (not res!232646) (not e!329370))))

(assert (=> b!545080 (= res!232646 (matchR!500 (regex!1007 (rule!1721 (_1!3462 (get!2025 lt!228199)))) (list!2221 (charsOf!636 (_1!3462 (get!2025 lt!228199))))))))

(declare-fun b!545081 () Bool)

(assert (=> b!545081 (= e!329369 call!38321)))

(declare-fun b!545082 () Bool)

(declare-fun lt!228202 () Option!1357)

(declare-fun lt!228201 () Option!1357)

(assert (=> b!545082 (= e!329369 (ite (and ((_ is None!1356) lt!228202) ((_ is None!1356) lt!228201)) None!1356 (ite ((_ is None!1356) lt!228201) lt!228202 (ite ((_ is None!1356) lt!228202) lt!228201 (ite (>= (size!4296 (_1!3462 (v!16171 lt!228202))) (size!4296 (_1!3462 (v!16171 lt!228201)))) lt!228202 lt!228201)))))))

(assert (=> b!545082 (= lt!228202 call!38321)))

(assert (=> b!545082 (= lt!228201 (maxPrefix!591 thiss!22590 (t!74598 rules!3103) lt!227995))))

(assert (= (and d!191139 c!102854) b!545081))

(assert (= (and d!191139 (not c!102854)) b!545082))

(assert (= (or b!545081 b!545082) bm!38316))

(assert (= (and d!191139 (not res!232648)) b!545078))

(assert (= (and b!545078 res!232642) b!545074))

(assert (= (and b!545074 res!232645) b!545077))

(assert (= (and b!545077 res!232647) b!545079))

(assert (= (and b!545079 res!232643) b!545076))

(assert (= (and b!545076 res!232644) b!545080))

(assert (= (and b!545080 res!232646) b!545075))

(declare-fun m!793631 () Bool)

(assert (=> b!545079 m!793631))

(declare-fun m!793633 () Bool)

(assert (=> b!545079 m!793633))

(assert (=> b!545079 m!793633))

(declare-fun m!793635 () Bool)

(assert (=> b!545079 m!793635))

(assert (=> b!545079 m!793635))

(declare-fun m!793637 () Bool)

(assert (=> b!545079 m!793637))

(assert (=> b!545074 m!793631))

(assert (=> b!545074 m!793633))

(assert (=> b!545074 m!793633))

(assert (=> b!545074 m!793635))

(declare-fun m!793639 () Bool)

(assert (=> d!191139 m!793639))

(declare-fun m!793641 () Bool)

(assert (=> d!191139 m!793641))

(declare-fun m!793643 () Bool)

(assert (=> d!191139 m!793643))

(assert (=> d!191139 m!792969))

(declare-fun m!793645 () Bool)

(assert (=> bm!38316 m!793645))

(assert (=> b!545076 m!793631))

(declare-fun m!793647 () Bool)

(assert (=> b!545076 m!793647))

(assert (=> b!545076 m!793647))

(declare-fun m!793649 () Bool)

(assert (=> b!545076 m!793649))

(declare-fun m!793651 () Bool)

(assert (=> b!545078 m!793651))

(assert (=> b!545075 m!793631))

(declare-fun m!793653 () Bool)

(assert (=> b!545075 m!793653))

(assert (=> b!545080 m!793631))

(assert (=> b!545080 m!793633))

(assert (=> b!545080 m!793633))

(assert (=> b!545080 m!793635))

(assert (=> b!545080 m!793635))

(declare-fun m!793655 () Bool)

(assert (=> b!545080 m!793655))

(assert (=> b!545077 m!793631))

(declare-fun m!793657 () Bool)

(assert (=> b!545077 m!793657))

(assert (=> b!545077 m!793557))

(declare-fun m!793659 () Bool)

(assert (=> b!545082 m!793659))

(assert (=> b!544562 d!191139))

(declare-fun b!545086 () Bool)

(declare-fun e!329371 () Bool)

(declare-fun lt!228204 () List!5367)

(assert (=> b!545086 (= e!329371 (or (not (= suffix!1342 Nil!5357)) (= lt!228204 input!2705)))))

(declare-fun b!545084 () Bool)

(declare-fun e!329372 () List!5367)

(assert (=> b!545084 (= e!329372 (Cons!5357 (h!10758 input!2705) (++!1495 (t!74596 input!2705) suffix!1342)))))

(declare-fun b!545085 () Bool)

(declare-fun res!232649 () Bool)

(assert (=> b!545085 (=> (not res!232649) (not e!329371))))

(assert (=> b!545085 (= res!232649 (= (size!4297 lt!228204) (+ (size!4297 input!2705) (size!4297 suffix!1342))))))

(declare-fun d!191141 () Bool)

(assert (=> d!191141 e!329371))

(declare-fun res!232650 () Bool)

(assert (=> d!191141 (=> (not res!232650) (not e!329371))))

(assert (=> d!191141 (= res!232650 (= (content!933 lt!228204) ((_ map or) (content!933 input!2705) (content!933 suffix!1342))))))

(assert (=> d!191141 (= lt!228204 e!329372)))

(declare-fun c!102855 () Bool)

(assert (=> d!191141 (= c!102855 ((_ is Nil!5357) input!2705))))

(assert (=> d!191141 (= (++!1495 input!2705 suffix!1342) lt!228204)))

(declare-fun b!545083 () Bool)

(assert (=> b!545083 (= e!329372 suffix!1342)))

(assert (= (and d!191141 c!102855) b!545083))

(assert (= (and d!191141 (not c!102855)) b!545084))

(assert (= (and d!191141 res!232650) b!545085))

(assert (= (and b!545085 res!232649) b!545086))

(declare-fun m!793661 () Bool)

(assert (=> b!545084 m!793661))

(declare-fun m!793663 () Bool)

(assert (=> b!545085 m!793663))

(assert (=> b!545085 m!793479))

(assert (=> b!545085 m!793159))

(declare-fun m!793665 () Bool)

(assert (=> d!191141 m!793665))

(declare-fun m!793667 () Bool)

(assert (=> d!191141 m!793667))

(assert (=> d!191141 m!793165))

(assert (=> b!544562 d!191141))

(declare-fun d!191143 () Bool)

(declare-fun lt!228205 () Bool)

(assert (=> d!191143 (= lt!228205 (select (content!934 rules!3103) (rule!1721 token!491)))))

(declare-fun e!329374 () Bool)

(assert (=> d!191143 (= lt!228205 e!329374)))

(declare-fun res!232652 () Bool)

(assert (=> d!191143 (=> (not res!232652) (not e!329374))))

(assert (=> d!191143 (= res!232652 ((_ is Cons!5359) rules!3103))))

(assert (=> d!191143 (= (contains!1249 rules!3103 (rule!1721 token!491)) lt!228205)))

(declare-fun b!545087 () Bool)

(declare-fun e!329373 () Bool)

(assert (=> b!545087 (= e!329374 e!329373)))

(declare-fun res!232651 () Bool)

(assert (=> b!545087 (=> res!232651 e!329373)))

(assert (=> b!545087 (= res!232651 (= (h!10760 rules!3103) (rule!1721 token!491)))))

(declare-fun b!545088 () Bool)

(assert (=> b!545088 (= e!329373 (contains!1249 (t!74598 rules!3103) (rule!1721 token!491)))))

(assert (= (and d!191143 res!232652) b!545087))

(assert (= (and b!545087 (not res!232651)) b!545088))

(assert (=> d!191143 m!793389))

(declare-fun m!793669 () Bool)

(assert (=> d!191143 m!793669))

(declare-fun m!793671 () Bool)

(assert (=> b!545088 m!793671))

(assert (=> b!544539 d!191143))

(declare-fun d!191145 () Bool)

(assert (=> d!191145 (= (_2!3462 (v!16171 lt!228003)) lt!227994)))

(declare-fun lt!228206 () Unit!9388)

(assert (=> d!191145 (= lt!228206 (choose!3856 lt!227984 (_2!3462 (v!16171 lt!228003)) lt!227984 lt!227994 input!2705))))

(assert (=> d!191145 (isPrefix!649 lt!227984 input!2705)))

(assert (=> d!191145 (= (lemmaSamePrefixThenSameSuffix!376 lt!227984 (_2!3462 (v!16171 lt!228003)) lt!227984 lt!227994 input!2705) lt!228206)))

(declare-fun bs!67636 () Bool)

(assert (= bs!67636 d!191145))

(declare-fun m!793673 () Bool)

(assert (=> bs!67636 m!793673))

(assert (=> bs!67636 m!793319))

(assert (=> b!544543 d!191145))

(declare-fun d!191147 () Bool)

(assert (=> d!191147 (isPrefix!649 lt!227984 (++!1495 lt!227984 (_2!3462 (v!16171 lt!228003))))))

(declare-fun lt!228209 () Unit!9388)

(declare-fun choose!3857 (List!5367 List!5367) Unit!9388)

(assert (=> d!191147 (= lt!228209 (choose!3857 lt!227984 (_2!3462 (v!16171 lt!228003))))))

(assert (=> d!191147 (= (lemmaConcatTwoListThenFirstIsPrefix!500 lt!227984 (_2!3462 (v!16171 lt!228003))) lt!228209)))

(declare-fun bs!67637 () Bool)

(assert (= bs!67637 d!191147))

(assert (=> bs!67637 m!792905))

(assert (=> bs!67637 m!792905))

(declare-fun m!793675 () Bool)

(assert (=> bs!67637 m!793675))

(declare-fun m!793677 () Bool)

(assert (=> bs!67637 m!793677))

(assert (=> b!544543 d!191147))

(declare-fun d!191149 () Bool)

(assert (=> d!191149 (= (seqFromList!1205 lt!227984) (fromListB!525 lt!227984))))

(declare-fun bs!67638 () Bool)

(assert (= bs!67638 d!191149))

(declare-fun m!793679 () Bool)

(assert (=> bs!67638 m!793679))

(assert (=> b!544543 d!191149))

(declare-fun d!191151 () Bool)

(declare-fun lt!228210 () BalanceConc!3456)

(assert (=> d!191151 (= (list!2221 lt!228210) (originalCharacters!1046 (_1!3462 (v!16171 lt!228003))))))

(assert (=> d!191151 (= lt!228210 (dynLambda!3124 (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))) (value!33566 (_1!3462 (v!16171 lt!228003)))))))

(assert (=> d!191151 (= (charsOf!636 (_1!3462 (v!16171 lt!228003))) lt!228210)))

(declare-fun b_lambda!20945 () Bool)

(assert (=> (not b_lambda!20945) (not d!191151)))

(declare-fun tb!47855 () Bool)

(declare-fun t!74656 () Bool)

(assert (=> (and b!544541 (= (toChars!1713 (transformation!1007 (h!10760 rules!3103))) (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))))) t!74656) tb!47855))

(declare-fun b!545089 () Bool)

(declare-fun e!329375 () Bool)

(declare-fun tp!173145 () Bool)

(assert (=> b!545089 (= e!329375 (and (inv!6724 (c!102765 (dynLambda!3124 (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))) (value!33566 (_1!3462 (v!16171 lt!228003)))))) tp!173145))))

(declare-fun result!53504 () Bool)

(assert (=> tb!47855 (= result!53504 (and (inv!6725 (dynLambda!3124 (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))) (value!33566 (_1!3462 (v!16171 lt!228003))))) e!329375))))

(assert (= tb!47855 b!545089))

(declare-fun m!793681 () Bool)

(assert (=> b!545089 m!793681))

(declare-fun m!793683 () Bool)

(assert (=> tb!47855 m!793683))

(assert (=> d!191151 t!74656))

(declare-fun b_and!53239 () Bool)

(assert (= b_and!53231 (and (=> t!74656 result!53504) b_and!53239)))

(declare-fun tb!47857 () Bool)

(declare-fun t!74658 () Bool)

(assert (=> (and b!544545 (= (toChars!1713 (transformation!1007 (rule!1721 token!491))) (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))))) t!74658) tb!47857))

(declare-fun result!53506 () Bool)

(assert (= result!53506 result!53504))

(assert (=> d!191151 t!74658))

(declare-fun b_and!53241 () Bool)

(assert (= b_and!53233 (and (=> t!74658 result!53506) b_and!53241)))

(declare-fun m!793685 () Bool)

(assert (=> d!191151 m!793685))

(declare-fun m!793687 () Bool)

(assert (=> d!191151 m!793687))

(assert (=> b!544543 d!191151))

(declare-fun d!191153 () Bool)

(assert (=> d!191153 (= (apply!1282 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))) lt!227999) (dynLambda!3131 (toValue!1854 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))) lt!227999))))

(declare-fun b_lambda!20947 () Bool)

(assert (=> (not b_lambda!20947) (not d!191153)))

(assert (=> d!191153 t!74628))

(declare-fun b_and!53243 () Bool)

(assert (= b_and!53235 (and (=> t!74628 result!53468) b_and!53243)))

(assert (=> d!191153 t!74630))

(declare-fun b_and!53245 () Bool)

(assert (= b_and!53237 (and (=> t!74630 result!53472) b_and!53245)))

(assert (=> d!191153 m!793309))

(assert (=> b!544543 d!191153))

(declare-fun d!191155 () Bool)

(assert (=> d!191155 (and (= lt!228006 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!228213 () Unit!9388)

(declare-fun choose!3858 (List!5367 List!5367 List!5367 List!5367) Unit!9388)

(assert (=> d!191155 (= lt!228213 (choose!3858 lt!228006 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!191155 (= (++!1495 lt!228006 suffix!1342) (++!1495 input!2705 suffix!1342))))

(assert (=> d!191155 (= (lemmaConcatSameAndSameSizesThenSameLists!92 lt!228006 suffix!1342 input!2705 suffix!1342) lt!228213)))

(declare-fun bs!67639 () Bool)

(assert (= bs!67639 d!191155))

(declare-fun m!793689 () Bool)

(assert (=> bs!67639 m!793689))

(assert (=> bs!67639 m!792919))

(assert (=> bs!67639 m!792927))

(assert (=> b!544543 d!191155))

(declare-fun b!545101 () Bool)

(declare-fun e!329382 () Bool)

(assert (=> b!545101 (= e!329382 (>= (size!4297 lt!228007) (size!4297 lt!227984)))))

(declare-fun d!191157 () Bool)

(assert (=> d!191157 e!329382))

(declare-fun res!232664 () Bool)

(assert (=> d!191157 (=> res!232664 e!329382)))

(declare-fun lt!228216 () Bool)

(assert (=> d!191157 (= res!232664 (not lt!228216))))

(declare-fun e!329383 () Bool)

(assert (=> d!191157 (= lt!228216 e!329383)))

(declare-fun res!232662 () Bool)

(assert (=> d!191157 (=> res!232662 e!329383)))

(assert (=> d!191157 (= res!232662 ((_ is Nil!5357) lt!227984))))

(assert (=> d!191157 (= (isPrefix!649 lt!227984 lt!228007) lt!228216)))

(declare-fun b!545100 () Bool)

(declare-fun e!329384 () Bool)

(assert (=> b!545100 (= e!329384 (isPrefix!649 (tail!717 lt!227984) (tail!717 lt!228007)))))

(declare-fun b!545098 () Bool)

(assert (=> b!545098 (= e!329383 e!329384)))

(declare-fun res!232663 () Bool)

(assert (=> b!545098 (=> (not res!232663) (not e!329384))))

(assert (=> b!545098 (= res!232663 (not ((_ is Nil!5357) lt!228007)))))

(declare-fun b!545099 () Bool)

(declare-fun res!232661 () Bool)

(assert (=> b!545099 (=> (not res!232661) (not e!329384))))

(assert (=> b!545099 (= res!232661 (= (head!1188 lt!227984) (head!1188 lt!228007)))))

(assert (= (and d!191157 (not res!232662)) b!545098))

(assert (= (and b!545098 res!232663) b!545099))

(assert (= (and b!545099 res!232661) b!545100))

(assert (= (and d!191157 (not res!232664)) b!545101))

(declare-fun m!793691 () Bool)

(assert (=> b!545101 m!793691))

(assert (=> b!545101 m!792901))

(declare-fun m!793693 () Bool)

(assert (=> b!545100 m!793693))

(declare-fun m!793695 () Bool)

(assert (=> b!545100 m!793695))

(assert (=> b!545100 m!793693))

(assert (=> b!545100 m!793695))

(declare-fun m!793697 () Bool)

(assert (=> b!545100 m!793697))

(declare-fun m!793699 () Bool)

(assert (=> b!545099 m!793699))

(declare-fun m!793701 () Bool)

(assert (=> b!545099 m!793701))

(assert (=> b!544543 d!191157))

(declare-fun d!191159 () Bool)

(assert (=> d!191159 (= (size!4296 (_1!3462 (v!16171 lt!228003))) (size!4297 (originalCharacters!1046 (_1!3462 (v!16171 lt!228003)))))))

(declare-fun Unit!9399 () Unit!9388)

(assert (=> d!191159 (= (lemmaCharactersSize!86 (_1!3462 (v!16171 lt!228003))) Unit!9399)))

(declare-fun bs!67640 () Bool)

(assert (= bs!67640 d!191159))

(assert (=> bs!67640 m!792935))

(assert (=> b!544543 d!191159))

(declare-fun d!191161 () Bool)

(assert (=> d!191161 (isPrefix!649 lt!228006 (++!1495 lt!228006 suffix!1342))))

(declare-fun lt!228217 () Unit!9388)

(assert (=> d!191161 (= lt!228217 (choose!3857 lt!228006 suffix!1342))))

(assert (=> d!191161 (= (lemmaConcatTwoListThenFirstIsPrefix!500 lt!228006 suffix!1342) lt!228217)))

(declare-fun bs!67641 () Bool)

(assert (= bs!67641 d!191161))

(assert (=> bs!67641 m!792919))

(assert (=> bs!67641 m!792919))

(declare-fun m!793703 () Bool)

(assert (=> bs!67641 m!793703))

(declare-fun m!793705 () Bool)

(assert (=> bs!67641 m!793705))

(assert (=> b!544543 d!191161))

(declare-fun d!191163 () Bool)

(assert (=> d!191163 (isPrefix!649 input!2705 input!2705)))

(declare-fun lt!228220 () Unit!9388)

(declare-fun choose!3859 (List!5367 List!5367) Unit!9388)

(assert (=> d!191163 (= lt!228220 (choose!3859 input!2705 input!2705))))

(assert (=> d!191163 (= (lemmaIsPrefixRefl!389 input!2705 input!2705) lt!228220)))

(declare-fun bs!67642 () Bool)

(assert (= bs!67642 d!191163))

(assert (=> bs!67642 m!792911))

(declare-fun m!793707 () Bool)

(assert (=> bs!67642 m!793707))

(assert (=> b!544543 d!191163))

(declare-fun d!191165 () Bool)

(declare-fun e!329387 () Bool)

(assert (=> d!191165 e!329387))

(declare-fun res!232667 () Bool)

(assert (=> d!191165 (=> (not res!232667) (not e!329387))))

(assert (=> d!191165 (= res!232667 (semiInverseModEq!389 (toChars!1713 (transformation!1007 (rule!1721 token!491))) (toValue!1854 (transformation!1007 (rule!1721 token!491)))))))

(declare-fun Unit!9400 () Unit!9388)

(assert (=> d!191165 (= (lemmaInv!155 (transformation!1007 (rule!1721 token!491))) Unit!9400)))

(declare-fun b!545104 () Bool)

(assert (=> b!545104 (= e!329387 (equivClasses!372 (toChars!1713 (transformation!1007 (rule!1721 token!491))) (toValue!1854 (transformation!1007 (rule!1721 token!491)))))))

(assert (= (and d!191165 res!232667) b!545104))

(assert (=> d!191165 m!793151))

(assert (=> b!545104 m!793153))

(assert (=> b!544543 d!191165))

(declare-fun lt!228221 () List!5367)

(declare-fun e!329388 () Bool)

(declare-fun b!545108 () Bool)

(assert (=> b!545108 (= e!329388 (or (not (= (_2!3462 (v!16171 lt!228003)) Nil!5357)) (= lt!228221 lt!227984)))))

(declare-fun b!545106 () Bool)

(declare-fun e!329389 () List!5367)

(assert (=> b!545106 (= e!329389 (Cons!5357 (h!10758 lt!227984) (++!1495 (t!74596 lt!227984) (_2!3462 (v!16171 lt!228003)))))))

(declare-fun b!545107 () Bool)

(declare-fun res!232668 () Bool)

(assert (=> b!545107 (=> (not res!232668) (not e!329388))))

(assert (=> b!545107 (= res!232668 (= (size!4297 lt!228221) (+ (size!4297 lt!227984) (size!4297 (_2!3462 (v!16171 lt!228003))))))))

(declare-fun d!191167 () Bool)

(assert (=> d!191167 e!329388))

(declare-fun res!232669 () Bool)

(assert (=> d!191167 (=> (not res!232669) (not e!329388))))

(assert (=> d!191167 (= res!232669 (= (content!933 lt!228221) ((_ map or) (content!933 lt!227984) (content!933 (_2!3462 (v!16171 lt!228003))))))))

(assert (=> d!191167 (= lt!228221 e!329389)))

(declare-fun c!102856 () Bool)

(assert (=> d!191167 (= c!102856 ((_ is Nil!5357) lt!227984))))

(assert (=> d!191167 (= (++!1495 lt!227984 (_2!3462 (v!16171 lt!228003))) lt!228221)))

(declare-fun b!545105 () Bool)

(assert (=> b!545105 (= e!329389 (_2!3462 (v!16171 lt!228003)))))

(assert (= (and d!191167 c!102856) b!545105))

(assert (= (and d!191167 (not c!102856)) b!545106))

(assert (= (and d!191167 res!232669) b!545107))

(assert (= (and b!545107 res!232668) b!545108))

(declare-fun m!793709 () Bool)

(assert (=> b!545106 m!793709))

(declare-fun m!793711 () Bool)

(assert (=> b!545107 m!793711))

(assert (=> b!545107 m!792901))

(declare-fun m!793713 () Bool)

(assert (=> b!545107 m!793713))

(declare-fun m!793715 () Bool)

(assert (=> d!191167 m!793715))

(declare-fun m!793717 () Bool)

(assert (=> d!191167 m!793717))

(declare-fun m!793719 () Bool)

(assert (=> d!191167 m!793719))

(assert (=> b!544543 d!191167))

(declare-fun b!545112 () Bool)

(declare-fun e!329390 () Bool)

(assert (=> b!545112 (= e!329390 (>= (size!4297 lt!227979) (size!4297 input!2705)))))

(declare-fun d!191169 () Bool)

(assert (=> d!191169 e!329390))

(declare-fun res!232673 () Bool)

(assert (=> d!191169 (=> res!232673 e!329390)))

(declare-fun lt!228222 () Bool)

(assert (=> d!191169 (= res!232673 (not lt!228222))))

(declare-fun e!329391 () Bool)

(assert (=> d!191169 (= lt!228222 e!329391)))

(declare-fun res!232671 () Bool)

(assert (=> d!191169 (=> res!232671 e!329391)))

(assert (=> d!191169 (= res!232671 ((_ is Nil!5357) input!2705))))

(assert (=> d!191169 (= (isPrefix!649 input!2705 lt!227979) lt!228222)))

(declare-fun b!545111 () Bool)

(declare-fun e!329392 () Bool)

(assert (=> b!545111 (= e!329392 (isPrefix!649 (tail!717 input!2705) (tail!717 lt!227979)))))

(declare-fun b!545109 () Bool)

(assert (=> b!545109 (= e!329391 e!329392)))

(declare-fun res!232672 () Bool)

(assert (=> b!545109 (=> (not res!232672) (not e!329392))))

(assert (=> b!545109 (= res!232672 (not ((_ is Nil!5357) lt!227979)))))

(declare-fun b!545110 () Bool)

(declare-fun res!232670 () Bool)

(assert (=> b!545110 (=> (not res!232670) (not e!329392))))

(assert (=> b!545110 (= res!232670 (= (head!1188 input!2705) (head!1188 lt!227979)))))

(assert (= (and d!191169 (not res!232671)) b!545109))

(assert (= (and b!545109 res!232672) b!545110))

(assert (= (and b!545110 res!232670) b!545111))

(assert (= (and d!191169 (not res!232673)) b!545112))

(declare-fun m!793721 () Bool)

(assert (=> b!545112 m!793721))

(assert (=> b!545112 m!793479))

(assert (=> b!545111 m!793325))

(declare-fun m!793723 () Bool)

(assert (=> b!545111 m!793723))

(assert (=> b!545111 m!793325))

(assert (=> b!545111 m!793723))

(declare-fun m!793725 () Bool)

(assert (=> b!545111 m!793725))

(assert (=> b!545110 m!793321))

(declare-fun m!793727 () Bool)

(assert (=> b!545110 m!793727))

(assert (=> b!544543 d!191169))

(declare-fun d!191171 () Bool)

(declare-fun res!232678 () Bool)

(declare-fun e!329395 () Bool)

(assert (=> d!191171 (=> (not res!232678) (not e!329395))))

(assert (=> d!191171 (= res!232678 (validRegex!446 (regex!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))))))

(assert (=> d!191171 (= (ruleValid!227 thiss!22590 (rule!1721 (_1!3462 (v!16171 lt!228003)))) e!329395)))

(declare-fun b!545117 () Bool)

(declare-fun res!232679 () Bool)

(assert (=> b!545117 (=> (not res!232679) (not e!329395))))

(assert (=> b!545117 (= res!232679 (not (nullable!351 (regex!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))))))))

(declare-fun b!545118 () Bool)

(assert (=> b!545118 (= e!329395 (not (= (tag!1269 (rule!1721 (_1!3462 (v!16171 lt!228003)))) (String!6899 ""))))))

(assert (= (and d!191171 res!232678) b!545117))

(assert (= (and b!545117 res!232679) b!545118))

(declare-fun m!793729 () Bool)

(assert (=> d!191171 m!793729))

(declare-fun m!793731 () Bool)

(assert (=> b!545117 m!793731))

(assert (=> b!544543 d!191171))

(declare-fun d!191173 () Bool)

(declare-fun e!329396 () Bool)

(assert (=> d!191173 e!329396))

(declare-fun res!232680 () Bool)

(assert (=> d!191173 (=> (not res!232680) (not e!329396))))

(assert (=> d!191173 (= res!232680 (semiInverseModEq!389 (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))) (toValue!1854 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))))))))

(declare-fun Unit!9401 () Unit!9388)

(assert (=> d!191173 (= (lemmaInv!155 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))) Unit!9401)))

(declare-fun b!545119 () Bool)

(assert (=> b!545119 (= e!329396 (equivClasses!372 (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003))))) (toValue!1854 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))))))))

(assert (= (and d!191173 res!232680) b!545119))

(declare-fun m!793733 () Bool)

(assert (=> d!191173 m!793733))

(declare-fun m!793735 () Bool)

(assert (=> b!545119 m!793735))

(assert (=> b!544543 d!191173))

(declare-fun d!191175 () Bool)

(declare-fun lt!228223 () Int)

(assert (=> d!191175 (>= lt!228223 0)))

(declare-fun e!329397 () Int)

(assert (=> d!191175 (= lt!228223 e!329397)))

(declare-fun c!102857 () Bool)

(assert (=> d!191175 (= c!102857 ((_ is Nil!5357) lt!228006))))

(assert (=> d!191175 (= (size!4297 lt!228006) lt!228223)))

(declare-fun b!545120 () Bool)

(assert (=> b!545120 (= e!329397 0)))

(declare-fun b!545121 () Bool)

(assert (=> b!545121 (= e!329397 (+ 1 (size!4297 (t!74596 lt!228006))))))

(assert (= (and d!191175 c!102857) b!545120))

(assert (= (and d!191175 (not c!102857)) b!545121))

(declare-fun m!793737 () Bool)

(assert (=> b!545121 m!793737))

(assert (=> b!544543 d!191175))

(declare-fun d!191177 () Bool)

(declare-fun lt!228224 () List!5367)

(assert (=> d!191177 (= (++!1495 lt!227984 lt!228224) input!2705)))

(declare-fun e!329398 () List!5367)

(assert (=> d!191177 (= lt!228224 e!329398)))

(declare-fun c!102858 () Bool)

(assert (=> d!191177 (= c!102858 ((_ is Cons!5357) lt!227984))))

(assert (=> d!191177 (>= (size!4297 input!2705) (size!4297 lt!227984))))

(assert (=> d!191177 (= (getSuffix!172 input!2705 lt!227984) lt!228224)))

(declare-fun b!545122 () Bool)

(assert (=> b!545122 (= e!329398 (getSuffix!172 (tail!717 input!2705) (t!74596 lt!227984)))))

(declare-fun b!545123 () Bool)

(assert (=> b!545123 (= e!329398 input!2705)))

(assert (= (and d!191177 c!102858) b!545122))

(assert (= (and d!191177 (not c!102858)) b!545123))

(declare-fun m!793739 () Bool)

(assert (=> d!191177 m!793739))

(assert (=> d!191177 m!793479))

(assert (=> d!191177 m!792901))

(assert (=> b!545122 m!793325))

(assert (=> b!545122 m!793325))

(declare-fun m!793741 () Bool)

(assert (=> b!545122 m!793741))

(assert (=> b!544543 d!191177))

(declare-fun b!545127 () Bool)

(declare-fun e!329399 () Bool)

(assert (=> b!545127 (= e!329399 (>= (size!4297 input!2705) (size!4297 input!2705)))))

(declare-fun d!191179 () Bool)

(assert (=> d!191179 e!329399))

(declare-fun res!232684 () Bool)

(assert (=> d!191179 (=> res!232684 e!329399)))

(declare-fun lt!228225 () Bool)

(assert (=> d!191179 (= res!232684 (not lt!228225))))

(declare-fun e!329400 () Bool)

(assert (=> d!191179 (= lt!228225 e!329400)))

(declare-fun res!232682 () Bool)

(assert (=> d!191179 (=> res!232682 e!329400)))

(assert (=> d!191179 (= res!232682 ((_ is Nil!5357) input!2705))))

(assert (=> d!191179 (= (isPrefix!649 input!2705 input!2705) lt!228225)))

(declare-fun b!545126 () Bool)

(declare-fun e!329401 () Bool)

(assert (=> b!545126 (= e!329401 (isPrefix!649 (tail!717 input!2705) (tail!717 input!2705)))))

(declare-fun b!545124 () Bool)

(assert (=> b!545124 (= e!329400 e!329401)))

(declare-fun res!232683 () Bool)

(assert (=> b!545124 (=> (not res!232683) (not e!329401))))

(assert (=> b!545124 (= res!232683 (not ((_ is Nil!5357) input!2705)))))

(declare-fun b!545125 () Bool)

(declare-fun res!232681 () Bool)

(assert (=> b!545125 (=> (not res!232681) (not e!329401))))

(assert (=> b!545125 (= res!232681 (= (head!1188 input!2705) (head!1188 input!2705)))))

(assert (= (and d!191179 (not res!232682)) b!545124))

(assert (= (and b!545124 res!232683) b!545125))

(assert (= (and b!545125 res!232681) b!545126))

(assert (= (and d!191179 (not res!232684)) b!545127))

(assert (=> b!545127 m!793479))

(assert (=> b!545127 m!793479))

(assert (=> b!545126 m!793325))

(assert (=> b!545126 m!793325))

(assert (=> b!545126 m!793325))

(assert (=> b!545126 m!793325))

(declare-fun m!793743 () Bool)

(assert (=> b!545126 m!793743))

(assert (=> b!545125 m!793321))

(assert (=> b!545125 m!793321))

(assert (=> b!544543 d!191179))

(declare-fun d!191181 () Bool)

(assert (=> d!191181 (ruleValid!227 thiss!22590 (rule!1721 token!491))))

(declare-fun lt!228228 () Unit!9388)

(declare-fun choose!3860 (LexerInterface!893 Rule!1814 List!5369) Unit!9388)

(assert (=> d!191181 (= lt!228228 (choose!3860 thiss!22590 (rule!1721 token!491) rules!3103))))

(assert (=> d!191181 (contains!1249 rules!3103 (rule!1721 token!491))))

(assert (=> d!191181 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!86 thiss!22590 (rule!1721 token!491) rules!3103) lt!228228)))

(declare-fun bs!67643 () Bool)

(assert (= bs!67643 d!191181))

(assert (=> bs!67643 m!792893))

(declare-fun m!793745 () Bool)

(assert (=> bs!67643 m!793745))

(assert (=> bs!67643 m!792989))

(assert (=> b!544543 d!191181))

(declare-fun d!191183 () Bool)

(assert (=> d!191183 (isPrefix!649 input!2705 (++!1495 input!2705 suffix!1342))))

(declare-fun lt!228229 () Unit!9388)

(assert (=> d!191183 (= lt!228229 (choose!3857 input!2705 suffix!1342))))

(assert (=> d!191183 (= (lemmaConcatTwoListThenFirstIsPrefix!500 input!2705 suffix!1342) lt!228229)))

(declare-fun bs!67644 () Bool)

(assert (= bs!67644 d!191183))

(assert (=> bs!67644 m!792927))

(assert (=> bs!67644 m!792927))

(declare-fun m!793747 () Bool)

(assert (=> bs!67644 m!793747))

(declare-fun m!793749 () Bool)

(assert (=> bs!67644 m!793749))

(assert (=> b!544543 d!191183))

(declare-fun d!191185 () Bool)

(declare-fun res!232685 () Bool)

(declare-fun e!329402 () Bool)

(assert (=> d!191185 (=> (not res!232685) (not e!329402))))

(assert (=> d!191185 (= res!232685 (validRegex!446 (regex!1007 (rule!1721 token!491))))))

(assert (=> d!191185 (= (ruleValid!227 thiss!22590 (rule!1721 token!491)) e!329402)))

(declare-fun b!545128 () Bool)

(declare-fun res!232686 () Bool)

(assert (=> b!545128 (=> (not res!232686) (not e!329402))))

(assert (=> b!545128 (= res!232686 (not (nullable!351 (regex!1007 (rule!1721 token!491)))))))

(declare-fun b!545129 () Bool)

(assert (=> b!545129 (= e!329402 (not (= (tag!1269 (rule!1721 token!491)) (String!6899 ""))))))

(assert (= (and d!191185 res!232685) b!545128))

(assert (= (and b!545128 res!232686) b!545129))

(assert (=> d!191185 m!793329))

(assert (=> b!545128 m!793331))

(assert (=> b!544543 d!191185))

(declare-fun d!191187 () Bool)

(declare-fun lt!228230 () Int)

(assert (=> d!191187 (>= lt!228230 0)))

(declare-fun e!329403 () Int)

(assert (=> d!191187 (= lt!228230 e!329403)))

(declare-fun c!102859 () Bool)

(assert (=> d!191187 (= c!102859 ((_ is Nil!5357) lt!227984))))

(assert (=> d!191187 (= (size!4297 lt!227984) lt!228230)))

(declare-fun b!545130 () Bool)

(assert (=> b!545130 (= e!329403 0)))

(declare-fun b!545131 () Bool)

(assert (=> b!545131 (= e!329403 (+ 1 (size!4297 (t!74596 lt!227984))))))

(assert (= (and d!191187 c!102859) b!545130))

(assert (= (and d!191187 (not c!102859)) b!545131))

(declare-fun m!793751 () Bool)

(assert (=> b!545131 m!793751))

(assert (=> b!544543 d!191187))

(declare-fun b!545135 () Bool)

(declare-fun e!329404 () Bool)

(assert (=> b!545135 (= e!329404 (>= (size!4297 lt!227995) (size!4297 input!2705)))))

(declare-fun d!191189 () Bool)

(assert (=> d!191189 e!329404))

(declare-fun res!232690 () Bool)

(assert (=> d!191189 (=> res!232690 e!329404)))

(declare-fun lt!228231 () Bool)

(assert (=> d!191189 (= res!232690 (not lt!228231))))

(declare-fun e!329405 () Bool)

(assert (=> d!191189 (= lt!228231 e!329405)))

(declare-fun res!232688 () Bool)

(assert (=> d!191189 (=> res!232688 e!329405)))

(assert (=> d!191189 (= res!232688 ((_ is Nil!5357) input!2705))))

(assert (=> d!191189 (= (isPrefix!649 input!2705 lt!227995) lt!228231)))

(declare-fun b!545134 () Bool)

(declare-fun e!329406 () Bool)

(assert (=> b!545134 (= e!329406 (isPrefix!649 (tail!717 input!2705) (tail!717 lt!227995)))))

(declare-fun b!545132 () Bool)

(assert (=> b!545132 (= e!329405 e!329406)))

(declare-fun res!232689 () Bool)

(assert (=> b!545132 (=> (not res!232689) (not e!329406))))

(assert (=> b!545132 (= res!232689 (not ((_ is Nil!5357) lt!227995)))))

(declare-fun b!545133 () Bool)

(declare-fun res!232687 () Bool)

(assert (=> b!545133 (=> (not res!232687) (not e!329406))))

(assert (=> b!545133 (= res!232687 (= (head!1188 input!2705) (head!1188 lt!227995)))))

(assert (= (and d!191189 (not res!232688)) b!545132))

(assert (= (and b!545132 res!232689) b!545133))

(assert (= (and b!545133 res!232687) b!545134))

(assert (= (and d!191189 (not res!232690)) b!545135))

(assert (=> b!545135 m!793557))

(assert (=> b!545135 m!793479))

(assert (=> b!545134 m!793325))

(assert (=> b!545134 m!793601))

(assert (=> b!545134 m!793325))

(assert (=> b!545134 m!793601))

(declare-fun m!793753 () Bool)

(assert (=> b!545134 m!793753))

(assert (=> b!545133 m!793321))

(declare-fun m!793755 () Bool)

(assert (=> b!545133 m!793755))

(assert (=> b!544543 d!191189))

(declare-fun b!545139 () Bool)

(declare-fun e!329407 () Bool)

(assert (=> b!545139 (= e!329407 (>= (size!4297 lt!227979) (size!4297 lt!228006)))))

(declare-fun d!191191 () Bool)

(assert (=> d!191191 e!329407))

(declare-fun res!232694 () Bool)

(assert (=> d!191191 (=> res!232694 e!329407)))

(declare-fun lt!228232 () Bool)

(assert (=> d!191191 (= res!232694 (not lt!228232))))

(declare-fun e!329408 () Bool)

(assert (=> d!191191 (= lt!228232 e!329408)))

(declare-fun res!232692 () Bool)

(assert (=> d!191191 (=> res!232692 e!329408)))

(assert (=> d!191191 (= res!232692 ((_ is Nil!5357) lt!228006))))

(assert (=> d!191191 (= (isPrefix!649 lt!228006 lt!227979) lt!228232)))

(declare-fun b!545138 () Bool)

(declare-fun e!329409 () Bool)

(assert (=> b!545138 (= e!329409 (isPrefix!649 (tail!717 lt!228006) (tail!717 lt!227979)))))

(declare-fun b!545136 () Bool)

(assert (=> b!545136 (= e!329408 e!329409)))

(declare-fun res!232693 () Bool)

(assert (=> b!545136 (=> (not res!232693) (not e!329409))))

(assert (=> b!545136 (= res!232693 (not ((_ is Nil!5357) lt!227979)))))

(declare-fun b!545137 () Bool)

(declare-fun res!232691 () Bool)

(assert (=> b!545137 (=> (not res!232691) (not e!329409))))

(assert (=> b!545137 (= res!232691 (= (head!1188 lt!228006) (head!1188 lt!227979)))))

(assert (= (and d!191191 (not res!232692)) b!545136))

(assert (= (and b!545136 res!232693) b!545137))

(assert (= (and b!545137 res!232691) b!545138))

(assert (= (and d!191191 (not res!232694)) b!545139))

(assert (=> b!545139 m!793721))

(assert (=> b!545139 m!792907))

(declare-fun m!793757 () Bool)

(assert (=> b!545138 m!793757))

(assert (=> b!545138 m!793723))

(assert (=> b!545138 m!793757))

(assert (=> b!545138 m!793723))

(declare-fun m!793759 () Bool)

(assert (=> b!545138 m!793759))

(declare-fun m!793761 () Bool)

(assert (=> b!545137 m!793761))

(assert (=> b!545137 m!793727))

(assert (=> b!544543 d!191191))

(declare-fun d!191193 () Bool)

(assert (=> d!191193 (= (list!2221 (charsOf!636 (_1!3462 (v!16171 lt!228003)))) (list!2223 (c!102765 (charsOf!636 (_1!3462 (v!16171 lt!228003))))))))

(declare-fun bs!67645 () Bool)

(assert (= bs!67645 d!191193))

(declare-fun m!793763 () Bool)

(assert (=> bs!67645 m!793763))

(assert (=> b!544543 d!191193))

(declare-fun d!191195 () Bool)

(assert (=> d!191195 (= (size!4296 token!491) (size!4297 (originalCharacters!1046 token!491)))))

(declare-fun Unit!9402 () Unit!9388)

(assert (=> d!191195 (= (lemmaCharactersSize!86 token!491) Unit!9402)))

(declare-fun bs!67646 () Bool)

(assert (= bs!67646 d!191195))

(assert (=> bs!67646 m!792929))

(assert (=> b!544543 d!191195))

(declare-fun d!191197 () Bool)

(assert (=> d!191197 (ruleValid!227 thiss!22590 (rule!1721 (_1!3462 (v!16171 lt!228003))))))

(declare-fun lt!228233 () Unit!9388)

(assert (=> d!191197 (= lt!228233 (choose!3860 thiss!22590 (rule!1721 (_1!3462 (v!16171 lt!228003))) rules!3103))))

(assert (=> d!191197 (contains!1249 rules!3103 (rule!1721 (_1!3462 (v!16171 lt!228003))))))

(assert (=> d!191197 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!86 thiss!22590 (rule!1721 (_1!3462 (v!16171 lt!228003))) rules!3103) lt!228233)))

(declare-fun bs!67647 () Bool)

(assert (= bs!67647 d!191197))

(assert (=> bs!67647 m!792899))

(declare-fun m!793765 () Bool)

(assert (=> bs!67647 m!793765))

(assert (=> bs!67647 m!792939))

(assert (=> b!544543 d!191197))

(declare-fun b!545144 () Bool)

(declare-fun e!329412 () Bool)

(declare-fun tp!173148 () Bool)

(assert (=> b!545144 (= e!329412 (and tp_is_empty!3037 tp!173148))))

(assert (=> b!544561 (= tp!173087 e!329412)))

(assert (= (and b!544561 ((_ is Cons!5357) (t!74596 suffix!1342))) b!545144))

(declare-fun b!545158 () Bool)

(declare-fun e!329415 () Bool)

(declare-fun tp!173162 () Bool)

(declare-fun tp!173161 () Bool)

(assert (=> b!545158 (= e!329415 (and tp!173162 tp!173161))))

(assert (=> b!544533 (= tp!173096 e!329415)))

(declare-fun b!545155 () Bool)

(assert (=> b!545155 (= e!329415 tp_is_empty!3037)))

(declare-fun b!545157 () Bool)

(declare-fun tp!173160 () Bool)

(assert (=> b!545157 (= e!329415 tp!173160)))

(declare-fun b!545156 () Bool)

(declare-fun tp!173159 () Bool)

(declare-fun tp!173163 () Bool)

(assert (=> b!545156 (= e!329415 (and tp!173159 tp!173163))))

(assert (= (and b!544533 ((_ is ElementMatch!1341) (regex!1007 (h!10760 rules!3103)))) b!545155))

(assert (= (and b!544533 ((_ is Concat!2372) (regex!1007 (h!10760 rules!3103)))) b!545156))

(assert (= (and b!544533 ((_ is Star!1341) (regex!1007 (h!10760 rules!3103)))) b!545157))

(assert (= (and b!544533 ((_ is Union!1341) (regex!1007 (h!10760 rules!3103)))) b!545158))

(declare-fun b!545159 () Bool)

(declare-fun e!329416 () Bool)

(declare-fun tp!173164 () Bool)

(assert (=> b!545159 (= e!329416 (and tp_is_empty!3037 tp!173164))))

(assert (=> b!544544 (= tp!173091 e!329416)))

(assert (= (and b!544544 ((_ is Cons!5357) (t!74596 input!2705))) b!545159))

(declare-fun b!545163 () Bool)

(declare-fun e!329417 () Bool)

(declare-fun tp!173168 () Bool)

(declare-fun tp!173167 () Bool)

(assert (=> b!545163 (= e!329417 (and tp!173168 tp!173167))))

(assert (=> b!544548 (= tp!173093 e!329417)))

(declare-fun b!545160 () Bool)

(assert (=> b!545160 (= e!329417 tp_is_empty!3037)))

(declare-fun b!545162 () Bool)

(declare-fun tp!173166 () Bool)

(assert (=> b!545162 (= e!329417 tp!173166)))

(declare-fun b!545161 () Bool)

(declare-fun tp!173165 () Bool)

(declare-fun tp!173169 () Bool)

(assert (=> b!545161 (= e!329417 (and tp!173165 tp!173169))))

(assert (= (and b!544548 ((_ is ElementMatch!1341) (regex!1007 (rule!1721 token!491)))) b!545160))

(assert (= (and b!544548 ((_ is Concat!2372) (regex!1007 (rule!1721 token!491)))) b!545161))

(assert (= (and b!544548 ((_ is Star!1341) (regex!1007 (rule!1721 token!491)))) b!545162))

(assert (= (and b!544548 ((_ is Union!1341) (regex!1007 (rule!1721 token!491)))) b!545163))

(declare-fun b!545164 () Bool)

(declare-fun e!329418 () Bool)

(declare-fun tp!173170 () Bool)

(assert (=> b!545164 (= e!329418 (and tp_is_empty!3037 tp!173170))))

(assert (=> b!544536 (= tp!173088 e!329418)))

(assert (= (and b!544536 ((_ is Cons!5357) (originalCharacters!1046 token!491))) b!545164))

(declare-fun b!545175 () Bool)

(declare-fun b_free!15133 () Bool)

(declare-fun b_next!15149 () Bool)

(assert (=> b!545175 (= b_free!15133 (not b_next!15149))))

(declare-fun tb!47859 () Bool)

(declare-fun t!74661 () Bool)

(assert (=> (and b!545175 (= (toValue!1854 (transformation!1007 (h!10760 (t!74598 rules!3103)))) (toValue!1854 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))))) t!74661) tb!47859))

(declare-fun result!53514 () Bool)

(assert (= result!53514 result!53468))

(assert (=> d!191017 t!74661))

(declare-fun tb!47861 () Bool)

(declare-fun t!74663 () Bool)

(assert (=> (and b!545175 (= (toValue!1854 (transformation!1007 (h!10760 (t!74598 rules!3103)))) (toValue!1854 (transformation!1007 (rule!1721 token!491)))) t!74663) tb!47861))

(declare-fun result!53516 () Bool)

(assert (= result!53516 result!53496))

(assert (=> d!191119 t!74663))

(assert (=> d!191127 t!74663))

(assert (=> d!191153 t!74661))

(declare-fun tp!173182 () Bool)

(declare-fun b_and!53247 () Bool)

(assert (=> b!545175 (= tp!173182 (and (=> t!74661 result!53514) (=> t!74663 result!53516) b_and!53247))))

(declare-fun b_free!15135 () Bool)

(declare-fun b_next!15151 () Bool)

(assert (=> b!545175 (= b_free!15135 (not b_next!15151))))

(declare-fun tb!47863 () Bool)

(declare-fun t!74665 () Bool)

(assert (=> (and b!545175 (= (toChars!1713 (transformation!1007 (h!10760 (t!74598 rules!3103)))) (toChars!1713 (transformation!1007 (rule!1721 token!491)))) t!74665) tb!47863))

(declare-fun result!53518 () Bool)

(assert (= result!53518 result!53450))

(assert (=> d!191071 t!74665))

(declare-fun tb!47865 () Bool)

(declare-fun t!74667 () Bool)

(assert (=> (and b!545175 (= (toChars!1713 (transformation!1007 (h!10760 (t!74598 rules!3103)))) (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))))) t!74667) tb!47865))

(declare-fun result!53520 () Bool)

(assert (= result!53520 result!53504))

(assert (=> d!191151 t!74667))

(declare-fun tb!47867 () Bool)

(declare-fun t!74669 () Bool)

(assert (=> (and b!545175 (= (toChars!1713 (transformation!1007 (h!10760 (t!74598 rules!3103)))) (toChars!1713 (transformation!1007 (rule!1721 token!491)))) t!74669) tb!47867))

(declare-fun result!53522 () Bool)

(assert (= result!53522 result!53500))

(assert (=> d!191127 t!74669))

(assert (=> b!544671 t!74665))

(declare-fun tb!47869 () Bool)

(declare-fun t!74671 () Bool)

(assert (=> (and b!545175 (= (toChars!1713 (transformation!1007 (h!10760 (t!74598 rules!3103)))) (toChars!1713 (transformation!1007 (rule!1721 (_1!3462 (v!16171 lt!228003)))))) t!74671) tb!47869))

(declare-fun result!53524 () Bool)

(assert (= result!53524 result!53464))

(assert (=> d!191017 t!74671))

(declare-fun b_and!53249 () Bool)

(declare-fun tp!173179 () Bool)

(assert (=> b!545175 (= tp!173179 (and (=> t!74667 result!53520) (=> t!74665 result!53518) (=> t!74669 result!53522) (=> t!74671 result!53524) b_and!53249))))

(declare-fun e!329429 () Bool)

(assert (=> b!545175 (= e!329429 (and tp!173182 tp!173179))))

(declare-fun b!545174 () Bool)

(declare-fun tp!173181 () Bool)

(declare-fun e!329428 () Bool)

(assert (=> b!545174 (= e!329428 (and tp!173181 (inv!6717 (tag!1269 (h!10760 (t!74598 rules!3103)))) (inv!6720 (transformation!1007 (h!10760 (t!74598 rules!3103)))) e!329429))))

(declare-fun b!545173 () Bool)

(declare-fun e!329430 () Bool)

(declare-fun tp!173180 () Bool)

(assert (=> b!545173 (= e!329430 (and e!329428 tp!173180))))

(assert (=> b!544526 (= tp!173090 e!329430)))

(assert (= b!545174 b!545175))

(assert (= b!545173 b!545174))

(assert (= (and b!544526 ((_ is Cons!5359) (t!74598 rules!3103))) b!545173))

(declare-fun m!793767 () Bool)

(assert (=> b!545174 m!793767))

(declare-fun m!793769 () Bool)

(assert (=> b!545174 m!793769))

(declare-fun b_lambda!20949 () Bool)

(assert (= b_lambda!20941 (or (and b!544541 b_free!15123 (= (toChars!1713 (transformation!1007 (h!10760 rules!3103))) (toChars!1713 (transformation!1007 (rule!1721 token!491))))) (and b!544545 b_free!15127) (and b!545175 b_free!15135 (= (toChars!1713 (transformation!1007 (h!10760 (t!74598 rules!3103)))) (toChars!1713 (transformation!1007 (rule!1721 token!491))))) b_lambda!20949)))

(declare-fun b_lambda!20951 () Bool)

(assert (= b_lambda!20943 (or (and b!544541 b_free!15121 (= (toValue!1854 (transformation!1007 (h!10760 rules!3103))) (toValue!1854 (transformation!1007 (rule!1721 token!491))))) (and b!544545 b_free!15125) (and b!545175 b_free!15133 (= (toValue!1854 (transformation!1007 (h!10760 (t!74598 rules!3103)))) (toValue!1854 (transformation!1007 (rule!1721 token!491))))) b_lambda!20951)))

(declare-fun b_lambda!20953 () Bool)

(assert (= b_lambda!20923 (or (and b!544541 b_free!15123 (= (toChars!1713 (transformation!1007 (h!10760 rules!3103))) (toChars!1713 (transformation!1007 (rule!1721 token!491))))) (and b!544545 b_free!15127) (and b!545175 b_free!15135 (= (toChars!1713 (transformation!1007 (h!10760 (t!74598 rules!3103)))) (toChars!1713 (transformation!1007 (rule!1721 token!491))))) b_lambda!20953)))

(declare-fun b_lambda!20955 () Bool)

(assert (= b_lambda!20939 (or (and b!544541 b_free!15121 (= (toValue!1854 (transformation!1007 (h!10760 rules!3103))) (toValue!1854 (transformation!1007 (rule!1721 token!491))))) (and b!544545 b_free!15125) (and b!545175 b_free!15133 (= (toValue!1854 (transformation!1007 (h!10760 (t!74598 rules!3103)))) (toValue!1854 (transformation!1007 (rule!1721 token!491))))) b_lambda!20955)))

(declare-fun b_lambda!20957 () Bool)

(assert (= b_lambda!20909 (or (and b!544541 b_free!15123 (= (toChars!1713 (transformation!1007 (h!10760 rules!3103))) (toChars!1713 (transformation!1007 (rule!1721 token!491))))) (and b!544545 b_free!15127) (and b!545175 b_free!15135 (= (toChars!1713 (transformation!1007 (h!10760 (t!74598 rules!3103)))) (toChars!1713 (transformation!1007 (rule!1721 token!491))))) b_lambda!20957)))

(check-sat (not b!545085) (not b!544879) (not b!545133) b_and!53241 (not d!191143) (not b!544992) (not d!191071) (not d!191129) (not d!191081) (not b!545043) (not bm!38312) (not tb!47823) (not b!545122) (not b!544996) (not b_next!15139) (not d!191145) (not tb!47811) (not b!545045) (not d!191101) (not d!191017) (not tb!47855) (not b!545041) (not b!545106) (not d!191167) (not b_lambda!20949) (not b_next!15143) b_and!53249 b_and!53243 (not b!545157) (not d!191195) (not b!545080) (not b!545011) (not b!545099) (not b!545034) (not b!545047) (not b!545038) (not d!191165) (not d!191177) (not b!544975) (not b!545121) (not b!545134) (not b_lambda!20951) (not b!545058) (not b!545006) (not d!191197) (not b!545074) (not b_next!15151) (not b_lambda!20921) (not b!545005) (not b!544979) (not b!545100) (not b!545046) (not b!545078) (not b!544887) (not d!191181) (not b!544875) (not b!545117) (not bm!38316) (not b!544672) (not b!545164) (not b!545139) (not d!191127) (not b!545156) (not d!191069) (not b_lambda!20947) (not b!545135) (not b!545131) (not b!545089) (not b!545084) (not b!545128) (not b!545077) (not d!191137) (not b!544976) (not b!544883) (not d!191139) (not b!545069) (not b_lambda!20953) (not b!545012) (not d!191013) (not d!191163) (not d!191147) (not b!544880) (not b!545127) (not b_lambda!20955) (not b!544697) (not b!545163) (not b!544826) (not b!544900) (not d!191141) (not d!191161) (not b!545158) (not d!191077) (not b!545173) (not b!545073) (not d!191095) (not b_lambda!20945) (not b!544978) (not b!545036) (not d!191171) (not b!545075) (not b!545076) (not d!191117) (not b!545088) (not b!545138) (not b!545048) (not b!544680) (not d!191131) (not d!191155) (not b!545137) (not b!544981) (not b!545039) (not d!191121) (not b_lambda!20957) b_and!53245 (not b!545044) (not d!191183) (not d!190993) (not d!191185) (not b!545104) (not b!545055) (not b!544908) (not b!545035) (not bm!38315) (not tb!47847) (not b!545125) (not b!544683) (not d!191125) (not d!191111) (not d!191149) (not d!191107) (not b!545126) (not d!191193) (not d!191151) (not b!545112) (not b!545082) (not d!191115) (not b!545071) (not b_next!15141) (not b!545162) (not b!545174) (not d!191015) (not d!191159) (not b!545049) (not d!191123) (not b!545040) (not b!545161) b_and!53247 (not b_lambda!20919) (not b!545119) (not b!544973) (not b!544882) (not d!191073) (not b!545111) (not tb!47827) (not b!544974) (not b!544699) (not b!545003) (not d!191065) b_and!53239 (not b!544977) (not b!545144) (not tb!47851) (not b_next!15149) (not b!545037) (not b!545050) (not b!545107) (not d!191093) (not b!545079) (not b_next!15137) (not b!545159) (not d!191173) (not b!544671) (not b!545101) tp_is_empty!3037 (not d!191067) (not b!545110))
(check-sat b_and!53241 (not b_next!15139) (not b_next!15151) b_and!53245 (not b_next!15141) b_and!53247 b_and!53239 (not b_next!15143) b_and!53249 b_and!53243 (not b_next!15149) (not b_next!15137))
