; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50672 () Bool)

(assert start!50672)

(declare-fun b!547622 () Bool)

(declare-fun b_free!15225 () Bool)

(declare-fun b_next!15241 () Bool)

(assert (=> b!547622 (= b_free!15225 (not b_next!15241))))

(declare-fun tp!173646 () Bool)

(declare-fun b_and!53491 () Bool)

(assert (=> b!547622 (= tp!173646 b_and!53491)))

(declare-fun b_free!15227 () Bool)

(declare-fun b_next!15243 () Bool)

(assert (=> b!547622 (= b_free!15227 (not b_next!15243))))

(declare-fun tp!173654 () Bool)

(declare-fun b_and!53493 () Bool)

(assert (=> b!547622 (= tp!173654 b_and!53493)))

(declare-fun b!547614 () Bool)

(declare-fun b_free!15229 () Bool)

(declare-fun b_next!15245 () Bool)

(assert (=> b!547614 (= b_free!15229 (not b_next!15245))))

(declare-fun tp!173651 () Bool)

(declare-fun b_and!53495 () Bool)

(assert (=> b!547614 (= tp!173651 b_and!53495)))

(declare-fun b_free!15231 () Bool)

(declare-fun b_next!15247 () Bool)

(assert (=> b!547614 (= b_free!15231 (not b_next!15247))))

(declare-fun tp!173647 () Bool)

(declare-fun b_and!53497 () Bool)

(assert (=> b!547614 (= tp!173647 b_and!53497)))

(declare-fun b!547585 () Bool)

(declare-fun res!234180 () Bool)

(declare-fun e!330962 () Bool)

(assert (=> b!547585 (=> res!234180 e!330962)))

(declare-datatypes ((C!3624 0))(
  ( (C!3625 (val!2038 Int)) )
))
(declare-datatypes ((Regex!1351 0))(
  ( (ElementMatch!1351 (c!103156 C!3624)) (Concat!2392 (regOne!3214 Regex!1351) (regTwo!3214 Regex!1351)) (EmptyExpr!1351) (Star!1351 (reg!1680 Regex!1351)) (EmptyLang!1351) (Union!1351 (regOne!3215 Regex!1351) (regTwo!3215 Regex!1351)) )
))
(declare-datatypes ((List!5403 0))(
  ( (Nil!5393) (Cons!5393 (h!10794 (_ BitVec 16)) (t!74860 List!5403)) )
))
(declare-datatypes ((TokenValue!1041 0))(
  ( (FloatLiteralValue!2082 (text!7732 List!5403)) (TokenValueExt!1040 (__x!3980 Int)) (Broken!5205 (value!33825 List!5403)) (Object!1050) (End!1041) (Def!1041) (Underscore!1041) (Match!1041) (Else!1041) (Error!1041) (Case!1041) (If!1041) (Extends!1041) (Abstract!1041) (Class!1041) (Val!1041) (DelimiterValue!2082 (del!1101 List!5403)) (KeywordValue!1047 (value!33826 List!5403)) (CommentValue!2082 (value!33827 List!5403)) (WhitespaceValue!2082 (value!33828 List!5403)) (IndentationValue!1041 (value!33829 List!5403)) (String!6948) (Int32!1041) (Broken!5206 (value!33830 List!5403)) (Boolean!1042) (Unit!9482) (OperatorValue!1044 (op!1101 List!5403)) (IdentifierValue!2082 (value!33831 List!5403)) (IdentifierValue!2083 (value!33832 List!5403)) (WhitespaceValue!2083 (value!33833 List!5403)) (True!2082) (False!2082) (Broken!5207 (value!33834 List!5403)) (Broken!5208 (value!33835 List!5403)) (True!2083) (RightBrace!1041) (RightBracket!1041) (Colon!1041) (Null!1041) (Comma!1041) (LeftBracket!1041) (False!2083) (LeftBrace!1041) (ImaginaryLiteralValue!1041 (text!7733 List!5403)) (StringLiteralValue!3123 (value!33836 List!5403)) (EOFValue!1041 (value!33837 List!5403)) (IdentValue!1041 (value!33838 List!5403)) (DelimiterValue!2083 (value!33839 List!5403)) (DedentValue!1041 (value!33840 List!5403)) (NewLineValue!1041 (value!33841 List!5403)) (IntegerValue!3123 (value!33842 (_ BitVec 32)) (text!7734 List!5403)) (IntegerValue!3124 (value!33843 Int) (text!7735 List!5403)) (Times!1041) (Or!1041) (Equal!1041) (Minus!1041) (Broken!5209 (value!33844 List!5403)) (And!1041) (Div!1041) (LessEqual!1041) (Mod!1041) (Concat!2393) (Not!1041) (Plus!1041) (SpaceValue!1041 (value!33845 List!5403)) (IntegerValue!3125 (value!33846 Int) (text!7736 List!5403)) (StringLiteralValue!3124 (text!7737 List!5403)) (FloatLiteralValue!2083 (text!7738 List!5403)) (BytesLiteralValue!1041 (value!33847 List!5403)) (CommentValue!2083 (value!33848 List!5403)) (StringLiteralValue!3125 (value!33849 List!5403)) (ErrorTokenValue!1041 (msg!1102 List!5403)) )
))
(declare-datatypes ((String!6949 0))(
  ( (String!6950 (value!33850 String)) )
))
(declare-datatypes ((List!5404 0))(
  ( (Nil!5394) (Cons!5394 (h!10795 C!3624) (t!74861 List!5404)) )
))
(declare-datatypes ((IArray!3469 0))(
  ( (IArray!3470 (innerList!1792 List!5404)) )
))
(declare-datatypes ((Conc!1734 0))(
  ( (Node!1734 (left!4467 Conc!1734) (right!4797 Conc!1734) (csize!3698 Int) (cheight!1945 Int)) (Leaf!2750 (xs!4371 IArray!3469) (csize!3699 Int)) (Empty!1734) )
))
(declare-datatypes ((BalanceConc!3476 0))(
  ( (BalanceConc!3477 (c!103157 Conc!1734)) )
))
(declare-datatypes ((TokenValueInjection!1850 0))(
  ( (TokenValueInjection!1851 (toValue!1864 Int) (toChars!1723 Int)) )
))
(declare-datatypes ((Rule!1834 0))(
  ( (Rule!1835 (regex!1017 Regex!1351) (tag!1279 String!6949) (isSeparator!1017 Bool) (transformation!1017 TokenValueInjection!1850)) )
))
(declare-datatypes ((Token!1770 0))(
  ( (Token!1771 (value!33851 TokenValue!1041) (rule!1737 Rule!1834) (size!4322 Int) (originalCharacters!1056 List!5404)) )
))
(declare-fun token!491 () Token!1770)

(declare-fun input!2705 () List!5404)

(declare-fun matchR!510 (Regex!1351 List!5404) Bool)

(assert (=> b!547585 (= res!234180 (not (matchR!510 (regex!1017 (rule!1737 token!491)) input!2705)))))

(declare-fun b!547586 () Bool)

(declare-fun e!330960 () Bool)

(declare-fun e!330949 () Bool)

(assert (=> b!547586 (= e!330960 e!330949)))

(declare-fun res!234176 () Bool)

(assert (=> b!547586 (=> (not res!234176) (not e!330949))))

(declare-datatypes ((tuple2!6428 0))(
  ( (tuple2!6429 (_1!3478 Token!1770) (_2!3478 List!5404)) )
))
(declare-datatypes ((Option!1367 0))(
  ( (None!1366) (Some!1366 (v!16187 tuple2!6428)) )
))
(declare-fun lt!229809 () Option!1367)

(declare-fun isDefined!1179 (Option!1367) Bool)

(assert (=> b!547586 (= res!234176 (isDefined!1179 lt!229809))))

(declare-datatypes ((List!5405 0))(
  ( (Nil!5395) (Cons!5395 (h!10796 Rule!1834) (t!74862 List!5405)) )
))
(declare-fun rules!3103 () List!5405)

(declare-fun b!547587 () Bool)

(declare-fun e!330958 () Bool)

(declare-fun tp!173648 () Bool)

(declare-fun e!330966 () Bool)

(declare-fun inv!6764 (String!6949) Bool)

(declare-fun inv!6767 (TokenValueInjection!1850) Bool)

(assert (=> b!547587 (= e!330966 (and tp!173648 (inv!6764 (tag!1279 (h!10796 rules!3103))) (inv!6767 (transformation!1017 (h!10796 rules!3103))) e!330958))))

(declare-fun b!547588 () Bool)

(declare-fun e!330961 () Bool)

(declare-fun e!330969 () Bool)

(assert (=> b!547588 (= e!330961 (not e!330969))))

(declare-fun res!234178 () Bool)

(assert (=> b!547588 (=> res!234178 e!330969)))

(declare-fun lt!229828 () List!5404)

(declare-fun isPrefix!659 (List!5404 List!5404) Bool)

(assert (=> b!547588 (= res!234178 (not (isPrefix!659 input!2705 lt!229828)))))

(declare-fun lt!229812 () List!5404)

(assert (=> b!547588 (isPrefix!659 lt!229812 lt!229828)))

(declare-datatypes ((Unit!9483 0))(
  ( (Unit!9484) )
))
(declare-fun lt!229800 () Unit!9483)

(declare-fun suffix!1342 () List!5404)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!510 (List!5404 List!5404) Unit!9483)

(assert (=> b!547588 (= lt!229800 (lemmaConcatTwoListThenFirstIsPrefix!510 lt!229812 suffix!1342))))

(declare-fun lt!229815 () List!5404)

(assert (=> b!547588 (isPrefix!659 input!2705 lt!229815)))

(declare-fun lt!229831 () Unit!9483)

(assert (=> b!547588 (= lt!229831 (lemmaConcatTwoListThenFirstIsPrefix!510 input!2705 suffix!1342))))

(declare-fun e!330973 () Bool)

(assert (=> b!547588 e!330973))

(declare-fun res!234175 () Bool)

(assert (=> b!547588 (=> (not res!234175) (not e!330973))))

(declare-fun lt!229805 () TokenValue!1041)

(assert (=> b!547588 (= res!234175 (= (value!33851 (_1!3478 (v!16187 lt!229809))) lt!229805))))

(declare-fun lt!229829 () BalanceConc!3476)

(declare-fun apply!1292 (TokenValueInjection!1850 BalanceConc!3476) TokenValue!1041)

(assert (=> b!547588 (= lt!229805 (apply!1292 (transformation!1017 (rule!1737 (_1!3478 (v!16187 lt!229809)))) lt!229829))))

(declare-fun lt!229817 () List!5404)

(declare-fun seqFromList!1215 (List!5404) BalanceConc!3476)

(assert (=> b!547588 (= lt!229829 (seqFromList!1215 lt!229817))))

(declare-fun lt!229822 () Unit!9483)

(declare-fun lemmaInv!165 (TokenValueInjection!1850) Unit!9483)

(assert (=> b!547588 (= lt!229822 (lemmaInv!165 (transformation!1017 (rule!1737 token!491))))))

(declare-fun lt!229803 () Unit!9483)

(assert (=> b!547588 (= lt!229803 (lemmaInv!165 (transformation!1017 (rule!1737 (_1!3478 (v!16187 lt!229809))))))))

(declare-datatypes ((LexerInterface!903 0))(
  ( (LexerInterfaceExt!900 (__x!3981 Int)) (Lexer!901) )
))
(declare-fun thiss!22590 () LexerInterface!903)

(declare-fun ruleValid!237 (LexerInterface!903 Rule!1834) Bool)

(assert (=> b!547588 (ruleValid!237 thiss!22590 (rule!1737 token!491))))

(declare-fun lt!229826 () Unit!9483)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!96 (LexerInterface!903 Rule!1834 List!5405) Unit!9483)

(assert (=> b!547588 (= lt!229826 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!96 thiss!22590 (rule!1737 token!491) rules!3103))))

(assert (=> b!547588 (ruleValid!237 thiss!22590 (rule!1737 (_1!3478 (v!16187 lt!229809))))))

(declare-fun lt!229813 () Unit!9483)

(assert (=> b!547588 (= lt!229813 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!96 thiss!22590 (rule!1737 (_1!3478 (v!16187 lt!229809))) rules!3103))))

(assert (=> b!547588 (isPrefix!659 input!2705 input!2705)))

(declare-fun lt!229832 () Unit!9483)

(declare-fun lemmaIsPrefixRefl!399 (List!5404 List!5404) Unit!9483)

(assert (=> b!547588 (= lt!229832 (lemmaIsPrefixRefl!399 input!2705 input!2705))))

(declare-fun lt!229830 () List!5404)

(assert (=> b!547588 (= (_2!3478 (v!16187 lt!229809)) lt!229830)))

(declare-fun lt!229834 () Unit!9483)

(declare-fun lemmaSamePrefixThenSameSuffix!386 (List!5404 List!5404 List!5404 List!5404 List!5404) Unit!9483)

(assert (=> b!547588 (= lt!229834 (lemmaSamePrefixThenSameSuffix!386 lt!229817 (_2!3478 (v!16187 lt!229809)) lt!229817 lt!229830 input!2705))))

(declare-fun getSuffix!182 (List!5404 List!5404) List!5404)

(assert (=> b!547588 (= lt!229830 (getSuffix!182 input!2705 lt!229817))))

(declare-fun lt!229811 () List!5404)

(assert (=> b!547588 (isPrefix!659 lt!229817 lt!229811)))

(declare-fun ++!1505 (List!5404 List!5404) List!5404)

(assert (=> b!547588 (= lt!229811 (++!1505 lt!229817 (_2!3478 (v!16187 lt!229809))))))

(declare-fun lt!229824 () Unit!9483)

(assert (=> b!547588 (= lt!229824 (lemmaConcatTwoListThenFirstIsPrefix!510 lt!229817 (_2!3478 (v!16187 lt!229809))))))

(declare-fun lt!229807 () Unit!9483)

(declare-fun lemmaCharactersSize!96 (Token!1770) Unit!9483)

(assert (=> b!547588 (= lt!229807 (lemmaCharactersSize!96 token!491))))

(declare-fun lt!229821 () Unit!9483)

(assert (=> b!547588 (= lt!229821 (lemmaCharactersSize!96 (_1!3478 (v!16187 lt!229809))))))

(declare-fun lt!229838 () Unit!9483)

(declare-fun e!330968 () Unit!9483)

(assert (=> b!547588 (= lt!229838 e!330968)))

(declare-fun c!103154 () Bool)

(declare-fun lt!229802 () Int)

(declare-fun lt!229801 () Int)

(assert (=> b!547588 (= c!103154 (> lt!229802 lt!229801))))

(declare-fun size!4323 (List!5404) Int)

(assert (=> b!547588 (= lt!229801 (size!4323 lt!229812))))

(assert (=> b!547588 (= lt!229802 (size!4323 lt!229817))))

(declare-fun list!2237 (BalanceConc!3476) List!5404)

(declare-fun charsOf!646 (Token!1770) BalanceConc!3476)

(assert (=> b!547588 (= lt!229817 (list!2237 (charsOf!646 (_1!3478 (v!16187 lt!229809)))))))

(declare-fun lt!229836 () tuple2!6428)

(assert (=> b!547588 (= lt!229809 (Some!1366 lt!229836))))

(assert (=> b!547588 (= lt!229836 (tuple2!6429 (_1!3478 (v!16187 lt!229809)) (_2!3478 (v!16187 lt!229809))))))

(declare-fun lt!229835 () Unit!9483)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!102 (List!5404 List!5404 List!5404 List!5404) Unit!9483)

(assert (=> b!547588 (= lt!229835 (lemmaConcatSameAndSameSizesThenSameLists!102 lt!229812 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!547589 () Bool)

(declare-fun e!330948 () Bool)

(declare-fun e!330955 () Bool)

(assert (=> b!547589 (= e!330948 e!330955)))

(declare-fun res!234177 () Bool)

(assert (=> b!547589 (=> (not res!234177) (not e!330955))))

(declare-fun lt!229806 () Option!1367)

(assert (=> b!547589 (= res!234177 (isDefined!1179 lt!229806))))

(declare-fun maxPrefix!601 (LexerInterface!903 List!5405 List!5404) Option!1367)

(assert (=> b!547589 (= lt!229806 (maxPrefix!601 thiss!22590 rules!3103 lt!229815))))

(assert (=> b!547589 (= lt!229815 (++!1505 input!2705 suffix!1342))))

(declare-fun b!547590 () Bool)

(declare-fun res!234172 () Bool)

(assert (=> b!547590 (=> (not res!234172) (not e!330949))))

(declare-fun get!2040 (Option!1367) tuple2!6428)

(assert (=> b!547590 (= res!234172 (= (_1!3478 (get!2040 lt!229809)) (_1!3478 (v!16187 lt!229809))))))

(declare-fun b!547591 () Bool)

(declare-fun res!234161 () Bool)

(declare-fun e!330970 () Bool)

(assert (=> b!547591 (=> (not res!234161) (not e!330970))))

(declare-fun isEmpty!3894 (List!5404) Bool)

(assert (=> b!547591 (= res!234161 (not (isEmpty!3894 input!2705)))))

(declare-fun b!547592 () Bool)

(declare-fun e!330957 () Unit!9483)

(declare-fun Unit!9485 () Unit!9483)

(assert (=> b!547592 (= e!330957 Unit!9485)))

(declare-fun lt!229810 () Unit!9483)

(declare-fun lemmaSemiInverse!146 (TokenValueInjection!1850 BalanceConc!3476) Unit!9483)

(assert (=> b!547592 (= lt!229810 (lemmaSemiInverse!146 (transformation!1017 (rule!1737 (_1!3478 (v!16187 lt!229809)))) lt!229829))))

(declare-fun lt!229814 () Unit!9483)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!22 (LexerInterface!903 List!5405 Rule!1834 List!5404 List!5404 List!5404 Rule!1834) Unit!9483)

(assert (=> b!547592 (= lt!229814 (lemmaMaxPrefixOutputsMaxPrefix!22 thiss!22590 rules!3103 (rule!1737 (_1!3478 (v!16187 lt!229809))) lt!229817 input!2705 input!2705 (rule!1737 token!491)))))

(declare-fun res!234179 () Bool)

(assert (=> b!547592 (= res!234179 (not (matchR!510 (regex!1017 (rule!1737 token!491)) input!2705)))))

(declare-fun e!330947 () Bool)

(assert (=> b!547592 (=> (not res!234179) (not e!330947))))

(assert (=> b!547592 e!330947))

(declare-fun b!547593 () Bool)

(declare-fun res!234174 () Bool)

(declare-fun e!330965 () Bool)

(assert (=> b!547593 (=> res!234174 e!330965)))

(assert (=> b!547593 (= res!234174 (or (not (= lt!229817 lt!229812)) (not (= (originalCharacters!1056 (_1!3478 (v!16187 lt!229809))) (originalCharacters!1056 token!491)))))))

(declare-fun b!547594 () Bool)

(declare-fun e!330971 () Bool)

(declare-fun tp_is_empty!3057 () Bool)

(declare-fun tp!173650 () Bool)

(assert (=> b!547594 (= e!330971 (and tp_is_empty!3057 tp!173650))))

(declare-fun b!547595 () Bool)

(assert (=> b!547595 (= e!330969 e!330965)))

(declare-fun res!234162 () Bool)

(assert (=> b!547595 (=> res!234162 e!330965)))

(assert (=> b!547595 (= res!234162 (or (not (= lt!229802 lt!229801)) (not (= lt!229811 input!2705)) (not (= lt!229811 lt!229812))))))

(declare-fun lt!229837 () Unit!9483)

(declare-fun lt!229808 () BalanceConc!3476)

(assert (=> b!547595 (= lt!229837 (lemmaSemiInverse!146 (transformation!1017 (rule!1737 token!491)) lt!229808))))

(declare-fun lt!229820 () Unit!9483)

(assert (=> b!547595 (= lt!229820 (lemmaSemiInverse!146 (transformation!1017 (rule!1737 (_1!3478 (v!16187 lt!229809)))) lt!229829))))

(declare-fun lt!229818 () Unit!9483)

(assert (=> b!547595 (= lt!229818 e!330957)))

(declare-fun c!103155 () Bool)

(assert (=> b!547595 (= c!103155 (< lt!229802 lt!229801))))

(declare-fun e!330953 () Bool)

(assert (=> b!547595 e!330953))

(declare-fun res!234171 () Bool)

(assert (=> b!547595 (=> (not res!234171) (not e!330953))))

(declare-fun lt!229804 () TokenValue!1041)

(declare-fun maxPrefixOneRule!316 (LexerInterface!903 Rule!1834 List!5404) Option!1367)

(assert (=> b!547595 (= res!234171 (= (maxPrefixOneRule!316 thiss!22590 (rule!1737 token!491) lt!229815) (Some!1366 (tuple2!6429 (Token!1771 lt!229804 (rule!1737 token!491) lt!229801 lt!229812) suffix!1342))))))

(declare-fun lt!229819 () Unit!9483)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!68 (LexerInterface!903 List!5405 List!5404 List!5404 List!5404 Rule!1834) Unit!9483)

(assert (=> b!547595 (= lt!229819 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!68 thiss!22590 rules!3103 lt!229812 lt!229815 suffix!1342 (rule!1737 token!491)))))

(assert (=> b!547595 (= (maxPrefixOneRule!316 thiss!22590 (rule!1737 (_1!3478 (v!16187 lt!229809))) input!2705) (Some!1366 (tuple2!6429 (Token!1771 lt!229805 (rule!1737 (_1!3478 (v!16187 lt!229809))) lt!229802 lt!229817) (_2!3478 (v!16187 lt!229809)))))))

(declare-fun lt!229839 () Unit!9483)

(assert (=> b!547595 (= lt!229839 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!68 thiss!22590 rules!3103 lt!229817 input!2705 (_2!3478 (v!16187 lt!229809)) (rule!1737 (_1!3478 (v!16187 lt!229809)))))))

(declare-fun e!330952 () Bool)

(assert (=> b!547595 e!330952))

(declare-fun res!234160 () Bool)

(assert (=> b!547595 (=> (not res!234160) (not e!330952))))

(assert (=> b!547595 (= res!234160 (= (value!33851 token!491) lt!229804))))

(assert (=> b!547595 (= lt!229804 (apply!1292 (transformation!1017 (rule!1737 token!491)) lt!229808))))

(assert (=> b!547595 (= lt!229808 (seqFromList!1215 lt!229812))))

(declare-fun lt!229825 () List!5404)

(assert (=> b!547595 (= suffix!1342 lt!229825)))

(declare-fun lt!229816 () Unit!9483)

(assert (=> b!547595 (= lt!229816 (lemmaSamePrefixThenSameSuffix!386 lt!229812 suffix!1342 lt!229812 lt!229825 lt!229815))))

(assert (=> b!547595 (= lt!229825 (getSuffix!182 lt!229815 lt!229812))))

(declare-fun b!547596 () Bool)

(declare-fun res!234184 () Bool)

(assert (=> b!547596 (=> res!234184 e!330965)))

(assert (=> b!547596 (= res!234184 (= (rule!1737 (_1!3478 (v!16187 lt!229809))) (rule!1737 token!491)))))

(declare-fun b!547597 () Bool)

(declare-fun res!234159 () Bool)

(assert (=> b!547597 (=> (not res!234159) (not e!330970))))

(declare-fun rulesInvariant!866 (LexerInterface!903 List!5405) Bool)

(assert (=> b!547597 (= res!234159 (rulesInvariant!866 thiss!22590 rules!3103))))

(declare-fun b!547598 () Bool)

(assert (=> b!547598 (= e!330952 (and (= (size!4322 token!491) lt!229801) (= (originalCharacters!1056 token!491) lt!229812) (= (tuple2!6429 token!491 suffix!1342) (tuple2!6429 (Token!1771 lt!229804 (rule!1737 token!491) lt!229801 lt!229812) lt!229825))))))

(declare-fun b!547599 () Bool)

(declare-fun e!330954 () Bool)

(assert (=> b!547599 (= e!330955 e!330954)))

(declare-fun res!234181 () Bool)

(assert (=> b!547599 (=> (not res!234181) (not e!330954))))

(declare-fun lt!229823 () tuple2!6428)

(assert (=> b!547599 (= res!234181 (and (= (_1!3478 lt!229823) token!491) (= (_2!3478 lt!229823) suffix!1342)))))

(assert (=> b!547599 (= lt!229823 (get!2040 lt!229806))))

(declare-fun b!547600 () Bool)

(declare-fun res!234167 () Bool)

(assert (=> b!547600 (=> (not res!234167) (not e!330952))))

(assert (=> b!547600 (= res!234167 (= (size!4322 token!491) (size!4323 (originalCharacters!1056 token!491))))))

(declare-fun b!547601 () Bool)

(declare-fun res!234158 () Bool)

(assert (=> b!547601 (=> (not res!234158) (not e!330973))))

(assert (=> b!547601 (= res!234158 (= (size!4322 (_1!3478 (v!16187 lt!229809))) (size!4323 (originalCharacters!1056 (_1!3478 (v!16187 lt!229809))))))))

(declare-fun b!547602 () Bool)

(declare-fun e!330951 () Bool)

(assert (=> b!547602 (= e!330951 e!330961)))

(declare-fun res!234168 () Bool)

(assert (=> b!547602 (=> (not res!234168) (not e!330961))))

(assert (=> b!547602 (= res!234168 (= lt!229828 lt!229815))))

(assert (=> b!547602 (= lt!229828 (++!1505 lt!229812 suffix!1342))))

(declare-fun b!547603 () Bool)

(declare-fun res!234183 () Bool)

(assert (=> b!547603 (=> res!234183 e!330965)))

(declare-fun contains!1259 (List!5405 Rule!1834) Bool)

(assert (=> b!547603 (= res!234183 (not (contains!1259 rules!3103 (rule!1737 (_1!3478 (v!16187 lt!229809))))))))

(declare-fun b!547604 () Bool)

(assert (=> b!547604 (= e!330947 false)))

(declare-fun b!547605 () Bool)

(assert (=> b!547605 (= e!330954 e!330951)))

(declare-fun res!234157 () Bool)

(assert (=> b!547605 (=> (not res!234157) (not e!330951))))

(get-info :version)

(assert (=> b!547605 (= res!234157 ((_ is Some!1366) lt!229809))))

(assert (=> b!547605 (= lt!229809 (maxPrefix!601 thiss!22590 rules!3103 input!2705))))

(declare-fun b!547606 () Bool)

(assert (=> b!547606 (= e!330949 (= lt!229830 (_2!3478 (v!16187 lt!229809))))))

(declare-fun b!547607 () Bool)

(declare-fun e!330972 () Bool)

(declare-fun tp!173652 () Bool)

(assert (=> b!547607 (= e!330972 (and e!330966 tp!173652))))

(declare-fun b!547608 () Bool)

(declare-fun Unit!9486 () Unit!9483)

(assert (=> b!547608 (= e!330957 Unit!9486)))

(declare-fun b!547609 () Bool)

(declare-fun tp!173653 () Bool)

(declare-fun e!330950 () Bool)

(declare-fun e!330963 () Bool)

(assert (=> b!547609 (= e!330963 (and tp!173653 (inv!6764 (tag!1279 (rule!1737 token!491))) (inv!6767 (transformation!1017 (rule!1737 token!491))) e!330950))))

(declare-fun b!547610 () Bool)

(assert (=> b!547610 (= e!330953 e!330960)))

(declare-fun res!234166 () Bool)

(assert (=> b!547610 (=> res!234166 e!330960)))

(assert (=> b!547610 (= res!234166 (>= lt!229802 lt!229801))))

(declare-fun b!547611 () Bool)

(assert (=> b!547611 (= e!330962 true)))

(declare-fun lt!229833 () Unit!9483)

(declare-fun lt!229827 () BalanceConc!3476)

(assert (=> b!547611 (= lt!229833 (lemmaSemiInverse!146 (transformation!1017 (rule!1737 token!491)) lt!229827))))

(declare-fun b!547612 () Bool)

(assert (=> b!547612 (= e!330973 (and (= (size!4322 (_1!3478 (v!16187 lt!229809))) lt!229802) (= (originalCharacters!1056 (_1!3478 (v!16187 lt!229809))) lt!229817) (= lt!229836 (tuple2!6429 (Token!1771 lt!229805 (rule!1737 (_1!3478 (v!16187 lt!229809))) lt!229802 lt!229817) lt!229830))))))

(declare-fun b!547613 () Bool)

(declare-fun tp!173645 () Bool)

(declare-fun e!330964 () Bool)

(declare-fun inv!21 (TokenValue!1041) Bool)

(assert (=> b!547613 (= e!330964 (and (inv!21 (value!33851 token!491)) e!330963 tp!173645))))

(assert (=> b!547614 (= e!330958 (and tp!173651 tp!173647))))

(declare-fun b!547615 () Bool)

(declare-fun Unit!9487 () Unit!9483)

(assert (=> b!547615 (= e!330968 Unit!9487)))

(assert (=> b!547615 false))

(declare-fun b!547616 () Bool)

(assert (=> b!547616 (= e!330965 e!330962)))

(declare-fun res!234182 () Bool)

(assert (=> b!547616 (=> res!234182 e!330962)))

(assert (=> b!547616 (= res!234182 (not (= lt!229806 (Some!1366 (tuple2!6429 (Token!1771 (apply!1292 (transformation!1017 (rule!1737 token!491)) lt!229827) (rule!1737 token!491) (size!4323 input!2705) input!2705) (getSuffix!182 lt!229815 input!2705))))))))

(assert (=> b!547616 (= lt!229827 (seqFromList!1215 input!2705))))

(declare-fun b!547617 () Bool)

(declare-fun Unit!9488 () Unit!9483)

(assert (=> b!547617 (= e!330968 Unit!9488)))

(declare-fun b!547618 () Bool)

(declare-fun res!234165 () Bool)

(assert (=> b!547618 (=> res!234165 e!330965)))

(assert (=> b!547618 (= res!234165 (not (isEmpty!3894 (_2!3478 (v!16187 lt!229809)))))))

(declare-fun b!547619 () Bool)

(declare-fun res!234169 () Bool)

(assert (=> b!547619 (=> res!234169 e!330965)))

(declare-fun getIndex!18 (List!5405 Rule!1834) Int)

(assert (=> b!547619 (= res!234169 (>= (getIndex!18 rules!3103 (rule!1737 (_1!3478 (v!16187 lt!229809)))) (getIndex!18 rules!3103 (rule!1737 token!491))))))

(declare-fun b!547620 () Bool)

(declare-fun res!234164 () Bool)

(assert (=> b!547620 (=> (not res!234164) (not e!330970))))

(declare-fun isEmpty!3895 (List!5405) Bool)

(assert (=> b!547620 (= res!234164 (not (isEmpty!3895 rules!3103)))))

(declare-fun b!547621 () Bool)

(declare-fun res!234170 () Bool)

(assert (=> b!547621 (=> res!234170 e!330965)))

(assert (=> b!547621 (= res!234170 (not (= lt!229806 (Some!1366 (tuple2!6429 token!491 suffix!1342)))))))

(assert (=> b!547622 (= e!330950 (and tp!173646 tp!173654))))

(declare-fun b!547623 () Bool)

(assert (=> b!547623 (= e!330970 e!330948)))

(declare-fun res!234173 () Bool)

(assert (=> b!547623 (=> (not res!234173) (not e!330948))))

(assert (=> b!547623 (= res!234173 (= lt!229812 input!2705))))

(assert (=> b!547623 (= lt!229812 (list!2237 (charsOf!646 token!491)))))

(declare-fun b!547624 () Bool)

(declare-fun res!234156 () Bool)

(assert (=> b!547624 (=> res!234156 e!330965)))

(assert (=> b!547624 (= res!234156 (not (contains!1259 rules!3103 (rule!1737 token!491))))))

(declare-fun b!547625 () Bool)

(declare-fun e!330967 () Bool)

(declare-fun tp!173649 () Bool)

(assert (=> b!547625 (= e!330967 (and tp_is_empty!3057 tp!173649))))

(declare-fun res!234163 () Bool)

(assert (=> start!50672 (=> (not res!234163) (not e!330970))))

(assert (=> start!50672 (= res!234163 ((_ is Lexer!901) thiss!22590))))

(assert (=> start!50672 e!330970))

(assert (=> start!50672 e!330971))

(assert (=> start!50672 e!330972))

(declare-fun inv!6768 (Token!1770) Bool)

(assert (=> start!50672 (and (inv!6768 token!491) e!330964)))

(assert (=> start!50672 true))

(assert (=> start!50672 e!330967))

(assert (= (and start!50672 res!234163) b!547620))

(assert (= (and b!547620 res!234164) b!547597))

(assert (= (and b!547597 res!234159) b!547591))

(assert (= (and b!547591 res!234161) b!547623))

(assert (= (and b!547623 res!234173) b!547589))

(assert (= (and b!547589 res!234177) b!547599))

(assert (= (and b!547599 res!234181) b!547605))

(assert (= (and b!547605 res!234157) b!547602))

(assert (= (and b!547602 res!234168) b!547588))

(assert (= (and b!547588 c!103154) b!547615))

(assert (= (and b!547588 (not c!103154)) b!547617))

(assert (= (and b!547588 res!234175) b!547601))

(assert (= (and b!547601 res!234158) b!547612))

(assert (= (and b!547588 (not res!234178)) b!547595))

(assert (= (and b!547595 res!234160) b!547600))

(assert (= (and b!547600 res!234167) b!547598))

(assert (= (and b!547595 res!234171) b!547610))

(assert (= (and b!547610 (not res!234166)) b!547586))

(assert (= (and b!547586 res!234176) b!547590))

(assert (= (and b!547590 res!234172) b!547606))

(assert (= (and b!547595 c!103155) b!547592))

(assert (= (and b!547595 (not c!103155)) b!547608))

(assert (= (and b!547592 res!234179) b!547604))

(assert (= (and b!547595 (not res!234162)) b!547618))

(assert (= (and b!547618 (not res!234165)) b!547593))

(assert (= (and b!547593 (not res!234174)) b!547603))

(assert (= (and b!547603 (not res!234183)) b!547624))

(assert (= (and b!547624 (not res!234156)) b!547596))

(assert (= (and b!547596 (not res!234184)) b!547619))

(assert (= (and b!547619 (not res!234169)) b!547621))

(assert (= (and b!547621 (not res!234170)) b!547616))

(assert (= (and b!547616 (not res!234182)) b!547585))

(assert (= (and b!547585 (not res!234180)) b!547611))

(assert (= (and start!50672 ((_ is Cons!5394) suffix!1342)) b!547594))

(assert (= b!547587 b!547614))

(assert (= b!547607 b!547587))

(assert (= (and start!50672 ((_ is Cons!5395) rules!3103)) b!547607))

(assert (= b!547609 b!547622))

(assert (= b!547613 b!547609))

(assert (= start!50672 b!547613))

(assert (= (and start!50672 ((_ is Cons!5394) input!2705)) b!547625))

(declare-fun m!796563 () Bool)

(assert (=> b!547592 m!796563))

(declare-fun m!796565 () Bool)

(assert (=> b!547592 m!796565))

(declare-fun m!796567 () Bool)

(assert (=> b!547592 m!796567))

(declare-fun m!796569 () Bool)

(assert (=> b!547601 m!796569))

(declare-fun m!796571 () Bool)

(assert (=> b!547618 m!796571))

(declare-fun m!796573 () Bool)

(assert (=> b!547602 m!796573))

(declare-fun m!796575 () Bool)

(assert (=> b!547624 m!796575))

(declare-fun m!796577 () Bool)

(assert (=> b!547600 m!796577))

(declare-fun m!796579 () Bool)

(assert (=> b!547595 m!796579))

(declare-fun m!796581 () Bool)

(assert (=> b!547595 m!796581))

(declare-fun m!796583 () Bool)

(assert (=> b!547595 m!796583))

(declare-fun m!796585 () Bool)

(assert (=> b!547595 m!796585))

(declare-fun m!796587 () Bool)

(assert (=> b!547595 m!796587))

(assert (=> b!547595 m!796563))

(declare-fun m!796589 () Bool)

(assert (=> b!547595 m!796589))

(declare-fun m!796591 () Bool)

(assert (=> b!547595 m!796591))

(declare-fun m!796593 () Bool)

(assert (=> b!547595 m!796593))

(declare-fun m!796595 () Bool)

(assert (=> b!547595 m!796595))

(declare-fun m!796597 () Bool)

(assert (=> b!547588 m!796597))

(declare-fun m!796599 () Bool)

(assert (=> b!547588 m!796599))

(declare-fun m!796601 () Bool)

(assert (=> b!547588 m!796601))

(declare-fun m!796603 () Bool)

(assert (=> b!547588 m!796603))

(declare-fun m!796605 () Bool)

(assert (=> b!547588 m!796605))

(declare-fun m!796607 () Bool)

(assert (=> b!547588 m!796607))

(declare-fun m!796609 () Bool)

(assert (=> b!547588 m!796609))

(declare-fun m!796611 () Bool)

(assert (=> b!547588 m!796611))

(declare-fun m!796613 () Bool)

(assert (=> b!547588 m!796613))

(declare-fun m!796615 () Bool)

(assert (=> b!547588 m!796615))

(declare-fun m!796617 () Bool)

(assert (=> b!547588 m!796617))

(declare-fun m!796619 () Bool)

(assert (=> b!547588 m!796619))

(declare-fun m!796621 () Bool)

(assert (=> b!547588 m!796621))

(declare-fun m!796623 () Bool)

(assert (=> b!547588 m!796623))

(declare-fun m!796625 () Bool)

(assert (=> b!547588 m!796625))

(declare-fun m!796627 () Bool)

(assert (=> b!547588 m!796627))

(declare-fun m!796629 () Bool)

(assert (=> b!547588 m!796629))

(declare-fun m!796631 () Bool)

(assert (=> b!547588 m!796631))

(declare-fun m!796633 () Bool)

(assert (=> b!547588 m!796633))

(declare-fun m!796635 () Bool)

(assert (=> b!547588 m!796635))

(declare-fun m!796637 () Bool)

(assert (=> b!547588 m!796637))

(assert (=> b!547588 m!796613))

(declare-fun m!796639 () Bool)

(assert (=> b!547588 m!796639))

(declare-fun m!796641 () Bool)

(assert (=> b!547588 m!796641))

(declare-fun m!796643 () Bool)

(assert (=> b!547588 m!796643))

(declare-fun m!796645 () Bool)

(assert (=> b!547588 m!796645))

(declare-fun m!796647 () Bool)

(assert (=> b!547588 m!796647))

(declare-fun m!796649 () Bool)

(assert (=> b!547588 m!796649))

(declare-fun m!796651 () Bool)

(assert (=> b!547605 m!796651))

(assert (=> b!547585 m!796567))

(declare-fun m!796653 () Bool)

(assert (=> b!547619 m!796653))

(declare-fun m!796655 () Bool)

(assert (=> b!547619 m!796655))

(declare-fun m!796657 () Bool)

(assert (=> b!547609 m!796657))

(declare-fun m!796659 () Bool)

(assert (=> b!547609 m!796659))

(declare-fun m!796661 () Bool)

(assert (=> b!547587 m!796661))

(declare-fun m!796663 () Bool)

(assert (=> b!547587 m!796663))

(declare-fun m!796665 () Bool)

(assert (=> b!547623 m!796665))

(assert (=> b!547623 m!796665))

(declare-fun m!796667 () Bool)

(assert (=> b!547623 m!796667))

(declare-fun m!796669 () Bool)

(assert (=> b!547620 m!796669))

(declare-fun m!796671 () Bool)

(assert (=> b!547611 m!796671))

(declare-fun m!796673 () Bool)

(assert (=> b!547599 m!796673))

(declare-fun m!796675 () Bool)

(assert (=> b!547603 m!796675))

(declare-fun m!796677 () Bool)

(assert (=> b!547597 m!796677))

(declare-fun m!796679 () Bool)

(assert (=> b!547586 m!796679))

(declare-fun m!796681 () Bool)

(assert (=> b!547591 m!796681))

(declare-fun m!796683 () Bool)

(assert (=> b!547590 m!796683))

(declare-fun m!796685 () Bool)

(assert (=> b!547613 m!796685))

(declare-fun m!796687 () Bool)

(assert (=> b!547589 m!796687))

(declare-fun m!796689 () Bool)

(assert (=> b!547589 m!796689))

(declare-fun m!796691 () Bool)

(assert (=> b!547589 m!796691))

(declare-fun m!796693 () Bool)

(assert (=> start!50672 m!796693))

(declare-fun m!796695 () Bool)

(assert (=> b!547616 m!796695))

(declare-fun m!796697 () Bool)

(assert (=> b!547616 m!796697))

(declare-fun m!796699 () Bool)

(assert (=> b!547616 m!796699))

(declare-fun m!796701 () Bool)

(assert (=> b!547616 m!796701))

(check-sat tp_is_empty!3057 (not b_next!15247) (not b!547611) (not b!547602) (not b!547588) (not b!547591) (not b!547597) (not b!547623) (not b!547619) (not b!547600) b_and!53497 b_and!53491 (not b!547595) (not b!547613) (not b!547609) (not b!547589) (not b!547605) (not b_next!15245) (not b!547618) (not b!547601) (not b_next!15241) (not b!547607) (not b!547616) (not b!547594) (not start!50672) b_and!53495 (not b!547586) b_and!53493 (not b!547625) (not b!547620) (not b!547599) (not b!547592) (not b_next!15243) (not b!547590) (not b!547585) (not b!547587) (not b!547624) (not b!547603))
(check-sat (not b_next!15247) (not b_next!15245) (not b_next!15241) b_and!53495 b_and!53493 (not b_next!15243) b_and!53497 b_and!53491)
