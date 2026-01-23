; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58688 () Bool)

(assert start!58688)

(declare-fun b!613268 () Bool)

(declare-fun b_free!17469 () Bool)

(declare-fun b_next!17485 () Bool)

(assert (=> b!613268 (= b_free!17469 (not b_next!17485))))

(declare-fun tp!189575 () Bool)

(declare-fun b_and!60847 () Bool)

(assert (=> b!613268 (= tp!189575 b_and!60847)))

(declare-fun b_free!17471 () Bool)

(declare-fun b_next!17487 () Bool)

(assert (=> b!613268 (= b_free!17471 (not b_next!17487))))

(declare-fun tp!189574 () Bool)

(declare-fun b_and!60849 () Bool)

(assert (=> b!613268 (= tp!189574 b_and!60849)))

(declare-fun b!613247 () Bool)

(declare-fun b_free!17473 () Bool)

(declare-fun b_next!17489 () Bool)

(assert (=> b!613247 (= b_free!17473 (not b_next!17489))))

(declare-fun tp!189580 () Bool)

(declare-fun b_and!60851 () Bool)

(assert (=> b!613247 (= tp!189580 b_and!60851)))

(declare-fun b_free!17475 () Bool)

(declare-fun b_next!17491 () Bool)

(assert (=> b!613247 (= b_free!17475 (not b_next!17491))))

(declare-fun tp!189573 () Bool)

(declare-fun b_and!60853 () Bool)

(assert (=> b!613247 (= tp!189573 b_and!60853)))

(declare-fun b!613236 () Bool)

(declare-fun res!266596 () Bool)

(declare-fun e!371700 () Bool)

(assert (=> b!613236 (=> (not res!266596) (not e!371700))))

(declare-datatypes ((C!4048 0))(
  ( (C!4049 (val!2250 Int)) )
))
(declare-datatypes ((List!6137 0))(
  ( (Nil!6127) (Cons!6127 (h!11528 C!4048) (t!81256 List!6137)) )
))
(declare-fun input!2705 () List!6137)

(declare-fun isEmpty!4423 (List!6137) Bool)

(assert (=> b!613236 (= res!266596 (not (isEmpty!4423 input!2705)))))

(declare-fun b!613237 () Bool)

(declare-fun e!371681 () Bool)

(assert (=> b!613237 (= e!371700 e!371681)))

(declare-fun res!266583 () Bool)

(assert (=> b!613237 (=> (not res!266583) (not e!371681))))

(declare-fun lt!262779 () List!6137)

(assert (=> b!613237 (= res!266583 (= lt!262779 input!2705))))

(declare-datatypes ((Regex!1563 0))(
  ( (ElementMatch!1563 (c!113371 C!4048)) (Concat!2816 (regOne!3638 Regex!1563) (regTwo!3638 Regex!1563)) (EmptyExpr!1563) (Star!1563 (reg!1892 Regex!1563)) (EmptyLang!1563) (Union!1563 (regOne!3639 Regex!1563) (regTwo!3639 Regex!1563)) )
))
(declare-datatypes ((List!6138 0))(
  ( (Nil!6128) (Cons!6128 (h!11529 (_ BitVec 16)) (t!81257 List!6138)) )
))
(declare-datatypes ((TokenValue!1253 0))(
  ( (FloatLiteralValue!2506 (text!9216 List!6138)) (TokenValueExt!1252 (__x!4404 Int)) (Broken!6265 (value!39867 List!6138)) (Object!1262) (End!1253) (Def!1253) (Underscore!1253) (Match!1253) (Else!1253) (Error!1253) (Case!1253) (If!1253) (Extends!1253) (Abstract!1253) (Class!1253) (Val!1253) (DelimiterValue!2506 (del!1313 List!6138)) (KeywordValue!1259 (value!39868 List!6138)) (CommentValue!2506 (value!39869 List!6138)) (WhitespaceValue!2506 (value!39870 List!6138)) (IndentationValue!1253 (value!39871 List!6138)) (String!8008) (Int32!1253) (Broken!6266 (value!39872 List!6138)) (Boolean!1254) (Unit!11235) (OperatorValue!1256 (op!1313 List!6138)) (IdentifierValue!2506 (value!39873 List!6138)) (IdentifierValue!2507 (value!39874 List!6138)) (WhitespaceValue!2507 (value!39875 List!6138)) (True!2506) (False!2506) (Broken!6267 (value!39876 List!6138)) (Broken!6268 (value!39877 List!6138)) (True!2507) (RightBrace!1253) (RightBracket!1253) (Colon!1253) (Null!1253) (Comma!1253) (LeftBracket!1253) (False!2507) (LeftBrace!1253) (ImaginaryLiteralValue!1253 (text!9217 List!6138)) (StringLiteralValue!3759 (value!39878 List!6138)) (EOFValue!1253 (value!39879 List!6138)) (IdentValue!1253 (value!39880 List!6138)) (DelimiterValue!2507 (value!39881 List!6138)) (DedentValue!1253 (value!39882 List!6138)) (NewLineValue!1253 (value!39883 List!6138)) (IntegerValue!3759 (value!39884 (_ BitVec 32)) (text!9218 List!6138)) (IntegerValue!3760 (value!39885 Int) (text!9219 List!6138)) (Times!1253) (Or!1253) (Equal!1253) (Minus!1253) (Broken!6269 (value!39886 List!6138)) (And!1253) (Div!1253) (LessEqual!1253) (Mod!1253) (Concat!2817) (Not!1253) (Plus!1253) (SpaceValue!1253 (value!39887 List!6138)) (IntegerValue!3761 (value!39888 Int) (text!9220 List!6138)) (StringLiteralValue!3760 (text!9221 List!6138)) (FloatLiteralValue!2507 (text!9222 List!6138)) (BytesLiteralValue!1253 (value!39889 List!6138)) (CommentValue!2507 (value!39890 List!6138)) (StringLiteralValue!3761 (value!39891 List!6138)) (ErrorTokenValue!1253 (msg!1314 List!6138)) )
))
(declare-datatypes ((String!8009 0))(
  ( (String!8010 (value!39892 String)) )
))
(declare-datatypes ((IArray!3893 0))(
  ( (IArray!3894 (innerList!2004 List!6137)) )
))
(declare-datatypes ((Conc!1946 0))(
  ( (Node!1946 (left!4905 Conc!1946) (right!5235 Conc!1946) (csize!4122 Int) (cheight!2157 Int)) (Leaf!3068 (xs!4583 IArray!3893) (csize!4123 Int)) (Empty!1946) )
))
(declare-datatypes ((BalanceConc!3900 0))(
  ( (BalanceConc!3901 (c!113372 Conc!1946)) )
))
(declare-datatypes ((TokenValueInjection!2274 0))(
  ( (TokenValueInjection!2275 (toValue!2140 Int) (toChars!1999 Int)) )
))
(declare-datatypes ((Rule!2258 0))(
  ( (Rule!2259 (regex!1229 Regex!1563) (tag!1491 String!8009) (isSeparator!1229 Bool) (transformation!1229 TokenValueInjection!2274)) )
))
(declare-datatypes ((Token!2194 0))(
  ( (Token!2195 (value!39893 TokenValue!1253) (rule!2021 Rule!2258) (size!4819 Int) (originalCharacters!1268 List!6137)) )
))
(declare-fun token!491 () Token!2194)

(declare-fun list!2580 (BalanceConc!3900) List!6137)

(declare-fun charsOf!858 (Token!2194) BalanceConc!3900)

(assert (=> b!613237 (= lt!262779 (list!2580 (charsOf!858 token!491)))))

(declare-fun b!613238 () Bool)

(declare-datatypes ((Unit!11236 0))(
  ( (Unit!11237) )
))
(declare-fun e!371694 () Unit!11236)

(declare-fun Unit!11238 () Unit!11236)

(assert (=> b!613238 (= e!371694 Unit!11238)))

(declare-fun b!613239 () Bool)

(declare-fun e!371674 () Bool)

(declare-fun tp_is_empty!3481 () Bool)

(declare-fun tp!189582 () Bool)

(assert (=> b!613239 (= e!371674 (and tp_is_empty!3481 tp!189582))))

(declare-fun b!613240 () Bool)

(declare-fun res!266602 () Bool)

(declare-fun e!371690 () Bool)

(assert (=> b!613240 (=> res!266602 e!371690)))

(declare-datatypes ((tuple2!6994 0))(
  ( (tuple2!6995 (_1!3761 Token!2194) (_2!3761 List!6137)) )
))
(declare-datatypes ((Option!1580 0))(
  ( (None!1579) (Some!1579 (v!16490 tuple2!6994)) )
))
(declare-fun lt!262806 () Option!1580)

(assert (=> b!613240 (= res!266602 (not (isEmpty!4423 (_2!3761 (v!16490 lt!262806)))))))

(declare-fun b!613241 () Bool)

(declare-fun res!266603 () Bool)

(declare-fun e!371680 () Bool)

(assert (=> b!613241 (=> (not res!266603) (not e!371680))))

(declare-fun size!4820 (List!6137) Int)

(assert (=> b!613241 (= res!266603 (= (size!4819 token!491) (size!4820 (originalCharacters!1268 token!491))))))

(declare-fun b!613242 () Bool)

(declare-fun e!371699 () Bool)

(declare-fun e!371697 () Bool)

(assert (=> b!613242 (= e!371699 (not e!371697))))

(declare-fun res!266601 () Bool)

(assert (=> b!613242 (=> res!266601 e!371697)))

(declare-fun lt!262782 () List!6137)

(declare-fun isPrefix!857 (List!6137 List!6137) Bool)

(assert (=> b!613242 (= res!266601 (not (isPrefix!857 input!2705 lt!262782)))))

(assert (=> b!613242 (isPrefix!857 lt!262779 lt!262782)))

(declare-fun lt!262812 () Unit!11236)

(declare-fun suffix!1342 () List!6137)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!702 (List!6137 List!6137) Unit!11236)

(assert (=> b!613242 (= lt!262812 (lemmaConcatTwoListThenFirstIsPrefix!702 lt!262779 suffix!1342))))

(declare-fun lt!262783 () List!6137)

(assert (=> b!613242 (isPrefix!857 input!2705 lt!262783)))

(declare-fun lt!262805 () Unit!11236)

(assert (=> b!613242 (= lt!262805 (lemmaConcatTwoListThenFirstIsPrefix!702 input!2705 suffix!1342))))

(declare-fun e!371695 () Bool)

(assert (=> b!613242 e!371695))

(declare-fun res!266584 () Bool)

(assert (=> b!613242 (=> (not res!266584) (not e!371695))))

(declare-fun lt!262797 () TokenValue!1253)

(assert (=> b!613242 (= res!266584 (= (value!39893 (_1!3761 (v!16490 lt!262806))) lt!262797))))

(declare-fun lt!262814 () BalanceConc!3900)

(declare-fun apply!1482 (TokenValueInjection!2274 BalanceConc!3900) TokenValue!1253)

(assert (=> b!613242 (= lt!262797 (apply!1482 (transformation!1229 (rule!2021 (_1!3761 (v!16490 lt!262806)))) lt!262814))))

(declare-fun lt!262808 () List!6137)

(declare-fun seqFromList!1405 (List!6137) BalanceConc!3900)

(assert (=> b!613242 (= lt!262814 (seqFromList!1405 lt!262808))))

(declare-fun lt!262813 () Unit!11236)

(declare-fun lemmaInv!337 (TokenValueInjection!2274) Unit!11236)

(assert (=> b!613242 (= lt!262813 (lemmaInv!337 (transformation!1229 (rule!2021 token!491))))))

(declare-fun lt!262791 () Unit!11236)

(assert (=> b!613242 (= lt!262791 (lemmaInv!337 (transformation!1229 (rule!2021 (_1!3761 (v!16490 lt!262806))))))))

(declare-datatypes ((LexerInterface!1115 0))(
  ( (LexerInterfaceExt!1112 (__x!4405 Int)) (Lexer!1113) )
))
(declare-fun thiss!22590 () LexerInterface!1115)

(declare-fun ruleValid!427 (LexerInterface!1115 Rule!2258) Bool)

(assert (=> b!613242 (ruleValid!427 thiss!22590 (rule!2021 token!491))))

(declare-fun lt!262788 () Unit!11236)

(declare-datatypes ((List!6139 0))(
  ( (Nil!6129) (Cons!6129 (h!11530 Rule!2258) (t!81258 List!6139)) )
))
(declare-fun rules!3103 () List!6139)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!274 (LexerInterface!1115 Rule!2258 List!6139) Unit!11236)

(assert (=> b!613242 (= lt!262788 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!274 thiss!22590 (rule!2021 token!491) rules!3103))))

(assert (=> b!613242 (ruleValid!427 thiss!22590 (rule!2021 (_1!3761 (v!16490 lt!262806))))))

(declare-fun lt!262803 () Unit!11236)

(assert (=> b!613242 (= lt!262803 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!274 thiss!22590 (rule!2021 (_1!3761 (v!16490 lt!262806))) rules!3103))))

(assert (=> b!613242 (isPrefix!857 input!2705 input!2705)))

(declare-fun lt!262785 () Unit!11236)

(declare-fun lemmaIsPrefixRefl!593 (List!6137 List!6137) Unit!11236)

(assert (=> b!613242 (= lt!262785 (lemmaIsPrefixRefl!593 input!2705 input!2705))))

(declare-fun lt!262800 () List!6137)

(assert (=> b!613242 (= (_2!3761 (v!16490 lt!262806)) lt!262800)))

(declare-fun lt!262776 () Unit!11236)

(declare-fun lemmaSamePrefixThenSameSuffix!570 (List!6137 List!6137 List!6137 List!6137 List!6137) Unit!11236)

(assert (=> b!613242 (= lt!262776 (lemmaSamePrefixThenSameSuffix!570 lt!262808 (_2!3761 (v!16490 lt!262806)) lt!262808 lt!262800 input!2705))))

(declare-fun getSuffix!374 (List!6137 List!6137) List!6137)

(assert (=> b!613242 (= lt!262800 (getSuffix!374 input!2705 lt!262808))))

(declare-fun lt!262792 () List!6137)

(assert (=> b!613242 (isPrefix!857 lt!262808 lt!262792)))

(declare-fun ++!1717 (List!6137 List!6137) List!6137)

(assert (=> b!613242 (= lt!262792 (++!1717 lt!262808 (_2!3761 (v!16490 lt!262806))))))

(declare-fun lt!262794 () Unit!11236)

(assert (=> b!613242 (= lt!262794 (lemmaConcatTwoListThenFirstIsPrefix!702 lt!262808 (_2!3761 (v!16490 lt!262806))))))

(declare-fun lt!262781 () Unit!11236)

(declare-fun lemmaCharactersSize!288 (Token!2194) Unit!11236)

(assert (=> b!613242 (= lt!262781 (lemmaCharactersSize!288 token!491))))

(declare-fun lt!262796 () Unit!11236)

(assert (=> b!613242 (= lt!262796 (lemmaCharactersSize!288 (_1!3761 (v!16490 lt!262806))))))

(declare-fun lt!262809 () Unit!11236)

(assert (=> b!613242 (= lt!262809 e!371694)))

(declare-fun c!113368 () Bool)

(declare-fun lt!262798 () Int)

(declare-fun lt!262780 () Int)

(assert (=> b!613242 (= c!113368 (> lt!262798 lt!262780))))

(assert (=> b!613242 (= lt!262780 (size!4820 lt!262779))))

(assert (=> b!613242 (= lt!262798 (size!4820 lt!262808))))

(assert (=> b!613242 (= lt!262808 (list!2580 (charsOf!858 (_1!3761 (v!16490 lt!262806)))))))

(declare-fun lt!262784 () tuple2!6994)

(assert (=> b!613242 (= lt!262806 (Some!1579 lt!262784))))

(assert (=> b!613242 (= lt!262784 (tuple2!6995 (_1!3761 (v!16490 lt!262806)) (_2!3761 (v!16490 lt!262806))))))

(declare-fun lt!262799 () Unit!11236)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!302 (List!6137 List!6137 List!6137 List!6137) Unit!11236)

(assert (=> b!613242 (= lt!262799 (lemmaConcatSameAndSameSizesThenSameLists!302 lt!262779 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!613243 () Bool)

(declare-fun e!371676 () Unit!11236)

(declare-fun Unit!11239 () Unit!11236)

(assert (=> b!613243 (= e!371676 Unit!11239)))

(declare-fun tp!189581 () Bool)

(declare-fun b!613244 () Bool)

(declare-fun e!371687 () Bool)

(declare-fun e!371691 () Bool)

(declare-fun inv!7799 (String!8009) Bool)

(declare-fun inv!7802 (TokenValueInjection!2274) Bool)

(assert (=> b!613244 (= e!371687 (and tp!189581 (inv!7799 (tag!1491 (h!11530 rules!3103))) (inv!7802 (transformation!1229 (h!11530 rules!3103))) e!371691))))

(declare-fun res!266586 () Bool)

(assert (=> start!58688 (=> (not res!266586) (not e!371700))))

(get-info :version)

(assert (=> start!58688 (= res!266586 ((_ is Lexer!1113) thiss!22590))))

(assert (=> start!58688 e!371700))

(declare-fun e!371684 () Bool)

(assert (=> start!58688 e!371684))

(declare-fun e!371678 () Bool)

(assert (=> start!58688 e!371678))

(declare-fun e!371693 () Bool)

(declare-fun inv!7803 (Token!2194) Bool)

(assert (=> start!58688 (and (inv!7803 token!491) e!371693)))

(assert (=> start!58688 true))

(assert (=> start!58688 e!371674))

(declare-fun b!613245 () Bool)

(declare-fun e!371685 () Bool)

(declare-fun e!371682 () Bool)

(assert (=> b!613245 (= e!371685 e!371682)))

(declare-fun res!266577 () Bool)

(assert (=> b!613245 (=> res!266577 e!371682)))

(assert (=> b!613245 (= res!266577 (>= lt!262798 lt!262780))))

(declare-fun e!371702 () Bool)

(declare-fun b!613246 () Bool)

(declare-fun tp!189577 () Bool)

(declare-fun inv!21 (TokenValue!1253) Bool)

(assert (=> b!613246 (= e!371693 (and (inv!21 (value!39893 token!491)) e!371702 tp!189577))))

(declare-fun e!371688 () Bool)

(assert (=> b!613247 (= e!371688 (and tp!189580 tp!189573))))

(declare-fun b!613248 () Bool)

(assert (=> b!613248 (= e!371697 e!371690)))

(declare-fun res!266591 () Bool)

(assert (=> b!613248 (=> res!266591 e!371690)))

(assert (=> b!613248 (= res!266591 (or (not (= lt!262798 lt!262780)) (not (= lt!262792 input!2705)) (not (= lt!262792 lt!262779))))))

(declare-fun lt!262772 () Unit!11236)

(declare-fun lt!262810 () BalanceConc!3900)

(declare-fun lemmaSemiInverse!259 (TokenValueInjection!2274 BalanceConc!3900) Unit!11236)

(assert (=> b!613248 (= lt!262772 (lemmaSemiInverse!259 (transformation!1229 (rule!2021 token!491)) lt!262810))))

(declare-fun lt!262793 () Unit!11236)

(assert (=> b!613248 (= lt!262793 (lemmaSemiInverse!259 (transformation!1229 (rule!2021 (_1!3761 (v!16490 lt!262806)))) lt!262814))))

(declare-fun lt!262811 () Unit!11236)

(declare-fun e!371701 () Unit!11236)

(assert (=> b!613248 (= lt!262811 e!371701)))

(declare-fun c!113370 () Bool)

(assert (=> b!613248 (= c!113370 (< lt!262798 lt!262780))))

(assert (=> b!613248 e!371685))

(declare-fun res!266594 () Bool)

(assert (=> b!613248 (=> (not res!266594) (not e!371685))))

(declare-fun lt!262807 () TokenValue!1253)

(declare-fun maxPrefixOneRule!476 (LexerInterface!1115 Rule!2258 List!6137) Option!1580)

(assert (=> b!613248 (= res!266594 (= (maxPrefixOneRule!476 thiss!22590 (rule!2021 token!491) lt!262783) (Some!1579 (tuple2!6995 (Token!2195 lt!262807 (rule!2021 token!491) lt!262780 lt!262779) suffix!1342))))))

(declare-fun lt!262789 () Unit!11236)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!182 (LexerInterface!1115 List!6139 List!6137 List!6137 List!6137 Rule!2258) Unit!11236)

(assert (=> b!613248 (= lt!262789 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!182 thiss!22590 rules!3103 lt!262779 lt!262783 suffix!1342 (rule!2021 token!491)))))

(assert (=> b!613248 (= (maxPrefixOneRule!476 thiss!22590 (rule!2021 (_1!3761 (v!16490 lt!262806))) input!2705) (Some!1579 (tuple2!6995 (Token!2195 lt!262797 (rule!2021 (_1!3761 (v!16490 lt!262806))) lt!262798 lt!262808) (_2!3761 (v!16490 lt!262806)))))))

(declare-fun lt!262795 () Unit!11236)

(assert (=> b!613248 (= lt!262795 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!182 thiss!22590 rules!3103 lt!262808 input!2705 (_2!3761 (v!16490 lt!262806)) (rule!2021 (_1!3761 (v!16490 lt!262806)))))))

(assert (=> b!613248 e!371680))

(declare-fun res!266597 () Bool)

(assert (=> b!613248 (=> (not res!266597) (not e!371680))))

(assert (=> b!613248 (= res!266597 (= (value!39893 token!491) lt!262807))))

(assert (=> b!613248 (= lt!262807 (apply!1482 (transformation!1229 (rule!2021 token!491)) lt!262810))))

(assert (=> b!613248 (= lt!262810 (seqFromList!1405 lt!262779))))

(declare-fun lt!262773 () List!6137)

(assert (=> b!613248 (= suffix!1342 lt!262773)))

(declare-fun lt!262802 () Unit!11236)

(assert (=> b!613248 (= lt!262802 (lemmaSamePrefixThenSameSuffix!570 lt!262779 suffix!1342 lt!262779 lt!262773 lt!262783))))

(assert (=> b!613248 (= lt!262773 (getSuffix!374 lt!262783 lt!262779))))

(declare-fun b!613249 () Bool)

(declare-fun e!371698 () Bool)

(assert (=> b!613249 (= e!371690 e!371698)))

(declare-fun res!266578 () Bool)

(assert (=> b!613249 (=> res!266578 e!371698)))

(declare-fun lt!262774 () Int)

(declare-fun lt!262804 () Int)

(assert (=> b!613249 (= res!266578 (<= lt!262774 lt!262804))))

(declare-fun lt!262787 () Unit!11236)

(assert (=> b!613249 (= lt!262787 e!371676)))

(declare-fun c!113369 () Bool)

(assert (=> b!613249 (= c!113369 (< lt!262774 lt!262804))))

(declare-fun getIndex!60 (List!6139 Rule!2258) Int)

(assert (=> b!613249 (= lt!262804 (getIndex!60 rules!3103 (rule!2021 token!491)))))

(assert (=> b!613249 (= lt!262774 (getIndex!60 rules!3103 (rule!2021 (_1!3761 (v!16490 lt!262806)))))))

(declare-fun lt!262790 () BalanceConc!3900)

(declare-fun b!613250 () Bool)

(assert (=> b!613250 (= e!371698 (= lt!262806 (Some!1579 (tuple2!6995 (Token!2195 (apply!1482 (transformation!1229 (rule!2021 (_1!3761 (v!16490 lt!262806)))) lt!262790) (rule!2021 (_1!3761 (v!16490 lt!262806))) (size!4820 input!2705) input!2705) (getSuffix!374 input!2705 input!2705)))))))

(declare-fun lt!262771 () Unit!11236)

(assert (=> b!613250 (= lt!262771 (lemmaSemiInverse!259 (transformation!1229 (rule!2021 (_1!3761 (v!16490 lt!262806)))) lt!262790))))

(assert (=> b!613250 (= lt!262790 (seqFromList!1405 input!2705))))

(declare-fun b!613251 () Bool)

(declare-fun Unit!11240 () Unit!11236)

(assert (=> b!613251 (= e!371701 Unit!11240)))

(declare-fun lt!262778 () Unit!11236)

(assert (=> b!613251 (= lt!262778 (lemmaSemiInverse!259 (transformation!1229 (rule!2021 (_1!3761 (v!16490 lt!262806)))) lt!262814))))

(declare-fun lt!262801 () Unit!11236)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!82 (LexerInterface!1115 List!6139 Rule!2258 List!6137 List!6137 List!6137 Rule!2258) Unit!11236)

(assert (=> b!613251 (= lt!262801 (lemmaMaxPrefixOutputsMaxPrefix!82 thiss!22590 rules!3103 (rule!2021 (_1!3761 (v!16490 lt!262806))) lt!262808 input!2705 input!2705 (rule!2021 token!491)))))

(declare-fun res!266593 () Bool)

(declare-fun matchR!666 (Regex!1563 List!6137) Bool)

(assert (=> b!613251 (= res!266593 (not (matchR!666 (regex!1229 (rule!2021 token!491)) input!2705)))))

(declare-fun e!371689 () Bool)

(assert (=> b!613251 (=> (not res!266593) (not e!371689))))

(assert (=> b!613251 e!371689))

(declare-fun b!613252 () Bool)

(declare-fun Unit!11241 () Unit!11236)

(assert (=> b!613252 (= e!371694 Unit!11241)))

(assert (=> b!613252 false))

(declare-fun b!613253 () Bool)

(declare-fun e!371692 () Bool)

(assert (=> b!613253 (= e!371692 false)))

(declare-fun b!613254 () Bool)

(declare-fun res!266590 () Bool)

(assert (=> b!613254 (=> (not res!266590) (not e!371695))))

(assert (=> b!613254 (= res!266590 (= (size!4819 (_1!3761 (v!16490 lt!262806))) (size!4820 (originalCharacters!1268 (_1!3761 (v!16490 lt!262806))))))))

(declare-fun b!613255 () Bool)

(declare-fun e!371686 () Bool)

(declare-fun e!371679 () Bool)

(assert (=> b!613255 (= e!371686 e!371679)))

(declare-fun res!266592 () Bool)

(assert (=> b!613255 (=> (not res!266592) (not e!371679))))

(declare-fun lt!262786 () tuple2!6994)

(assert (=> b!613255 (= res!266592 (and (= (_1!3761 lt!262786) token!491) (= (_2!3761 lt!262786) suffix!1342)))))

(declare-fun lt!262775 () Option!1580)

(declare-fun get!2358 (Option!1580) tuple2!6994)

(assert (=> b!613255 (= lt!262786 (get!2358 lt!262775))))

(declare-fun b!613256 () Bool)

(declare-fun res!266598 () Bool)

(assert (=> b!613256 (=> res!266598 e!371690)))

(declare-fun contains!1447 (List!6139 Rule!2258) Bool)

(assert (=> b!613256 (= res!266598 (not (contains!1447 rules!3103 (rule!2021 token!491))))))

(declare-fun b!613257 () Bool)

(declare-fun res!266579 () Bool)

(assert (=> b!613257 (=> (not res!266579) (not e!371700))))

(declare-fun isEmpty!4424 (List!6139) Bool)

(assert (=> b!613257 (= res!266579 (not (isEmpty!4424 rules!3103)))))

(declare-fun b!613258 () Bool)

(declare-fun res!266595 () Bool)

(declare-fun e!371675 () Bool)

(assert (=> b!613258 (=> (not res!266595) (not e!371675))))

(assert (=> b!613258 (= res!266595 (= (_1!3761 (get!2358 lt!262806)) (_1!3761 (v!16490 lt!262806))))))

(declare-fun b!613259 () Bool)

(declare-fun e!371683 () Bool)

(assert (=> b!613259 (= e!371683 e!371699)))

(declare-fun res!266587 () Bool)

(assert (=> b!613259 (=> (not res!266587) (not e!371699))))

(assert (=> b!613259 (= res!266587 (= lt!262782 lt!262783))))

(assert (=> b!613259 (= lt!262782 (++!1717 lt!262779 suffix!1342))))

(declare-fun b!613260 () Bool)

(declare-fun Unit!11242 () Unit!11236)

(assert (=> b!613260 (= e!371701 Unit!11242)))

(declare-fun b!613261 () Bool)

(declare-fun res!266589 () Bool)

(assert (=> b!613261 (=> res!266589 e!371690)))

(assert (=> b!613261 (= res!266589 (not (contains!1447 rules!3103 (rule!2021 (_1!3761 (v!16490 lt!262806))))))))

(declare-fun b!613262 () Bool)

(declare-fun tp!189576 () Bool)

(assert (=> b!613262 (= e!371684 (and tp_is_empty!3481 tp!189576))))

(declare-fun b!613263 () Bool)

(declare-fun res!266604 () Bool)

(assert (=> b!613263 (=> res!266604 e!371698)))

(assert (=> b!613263 (= res!266604 (not (matchR!666 (regex!1229 (rule!2021 (_1!3761 (v!16490 lt!262806)))) input!2705)))))

(declare-fun b!613264 () Bool)

(assert (=> b!613264 (= e!371695 (and (= (size!4819 (_1!3761 (v!16490 lt!262806))) lt!262798) (= (originalCharacters!1268 (_1!3761 (v!16490 lt!262806))) lt!262808) (= lt!262784 (tuple2!6995 (Token!2195 lt!262797 (rule!2021 (_1!3761 (v!16490 lt!262806))) lt!262798 lt!262808) lt!262800))))))

(declare-fun b!613265 () Bool)

(declare-fun res!266580 () Bool)

(assert (=> b!613265 (=> res!266580 e!371690)))

(assert (=> b!613265 (= res!266580 (= (rule!2021 (_1!3761 (v!16490 lt!262806))) (rule!2021 token!491)))))

(declare-fun b!613266 () Bool)

(declare-fun res!266600 () Bool)

(assert (=> b!613266 (=> res!266600 e!371690)))

(assert (=> b!613266 (= res!266600 (or (not (= lt!262808 lt!262779)) (not (= (originalCharacters!1268 (_1!3761 (v!16490 lt!262806))) (originalCharacters!1268 token!491)))))))

(declare-fun b!613267 () Bool)

(assert (=> b!613267 (= e!371689 false)))

(assert (=> b!613268 (= e!371691 (and tp!189575 tp!189574))))

(declare-fun b!613269 () Bool)

(assert (=> b!613269 (= e!371679 e!371683)))

(declare-fun res!266588 () Bool)

(assert (=> b!613269 (=> (not res!266588) (not e!371683))))

(assert (=> b!613269 (= res!266588 ((_ is Some!1579) lt!262806))))

(declare-fun maxPrefix!813 (LexerInterface!1115 List!6139 List!6137) Option!1580)

(assert (=> b!613269 (= lt!262806 (maxPrefix!813 thiss!22590 rules!3103 input!2705))))

(declare-fun b!613270 () Bool)

(declare-fun tp!189579 () Bool)

(assert (=> b!613270 (= e!371678 (and e!371687 tp!189579))))

(declare-fun b!613271 () Bool)

(assert (=> b!613271 (= e!371680 (and (= (size!4819 token!491) lt!262780) (= (originalCharacters!1268 token!491) lt!262779) (= (tuple2!6995 token!491 suffix!1342) (tuple2!6995 (Token!2195 lt!262807 (rule!2021 token!491) lt!262780 lt!262779) lt!262773))))))

(declare-fun b!613272 () Bool)

(declare-fun res!266599 () Bool)

(assert (=> b!613272 (=> (not res!266599) (not e!371700))))

(declare-fun rulesInvariant!1078 (LexerInterface!1115 List!6139) Bool)

(assert (=> b!613272 (= res!266599 (rulesInvariant!1078 thiss!22590 rules!3103))))

(declare-fun b!613273 () Bool)

(declare-fun tp!189578 () Bool)

(assert (=> b!613273 (= e!371702 (and tp!189578 (inv!7799 (tag!1491 (rule!2021 token!491))) (inv!7802 (transformation!1229 (rule!2021 token!491))) e!371688))))

(declare-fun b!613274 () Bool)

(assert (=> b!613274 (= e!371682 e!371675)))

(declare-fun res!266585 () Bool)

(assert (=> b!613274 (=> (not res!266585) (not e!371675))))

(declare-fun isDefined!1391 (Option!1580) Bool)

(assert (=> b!613274 (= res!266585 (isDefined!1391 lt!262806))))

(declare-fun b!613275 () Bool)

(assert (=> b!613275 (= e!371681 e!371686)))

(declare-fun res!266581 () Bool)

(assert (=> b!613275 (=> (not res!266581) (not e!371686))))

(assert (=> b!613275 (= res!266581 (isDefined!1391 lt!262775))))

(assert (=> b!613275 (= lt!262775 (maxPrefix!813 thiss!22590 rules!3103 lt!262783))))

(assert (=> b!613275 (= lt!262783 (++!1717 input!2705 suffix!1342))))

(declare-fun b!613276 () Bool)

(declare-fun Unit!11243 () Unit!11236)

(assert (=> b!613276 (= e!371676 Unit!11243)))

(declare-fun lt!262777 () Unit!11236)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!32 (LexerInterface!1115 List!6139 Rule!2258 List!6137 List!6137 Rule!2258) Unit!11236)

(assert (=> b!613276 (= lt!262777 (lemmaMaxPrefNoSmallerRuleMatches!32 thiss!22590 rules!3103 (rule!2021 token!491) input!2705 lt!262783 (rule!2021 (_1!3761 (v!16490 lt!262806)))))))

(declare-fun res!266582 () Bool)

(assert (=> b!613276 (= res!266582 (not (matchR!666 (regex!1229 (rule!2021 (_1!3761 (v!16490 lt!262806)))) input!2705)))))

(assert (=> b!613276 (=> (not res!266582) (not e!371692))))

(assert (=> b!613276 e!371692))

(declare-fun b!613277 () Bool)

(assert (=> b!613277 (= e!371675 (= lt!262800 (_2!3761 (v!16490 lt!262806))))))

(assert (= (and start!58688 res!266586) b!613257))

(assert (= (and b!613257 res!266579) b!613272))

(assert (= (and b!613272 res!266599) b!613236))

(assert (= (and b!613236 res!266596) b!613237))

(assert (= (and b!613237 res!266583) b!613275))

(assert (= (and b!613275 res!266581) b!613255))

(assert (= (and b!613255 res!266592) b!613269))

(assert (= (and b!613269 res!266588) b!613259))

(assert (= (and b!613259 res!266587) b!613242))

(assert (= (and b!613242 c!113368) b!613252))

(assert (= (and b!613242 (not c!113368)) b!613238))

(assert (= (and b!613242 res!266584) b!613254))

(assert (= (and b!613254 res!266590) b!613264))

(assert (= (and b!613242 (not res!266601)) b!613248))

(assert (= (and b!613248 res!266597) b!613241))

(assert (= (and b!613241 res!266603) b!613271))

(assert (= (and b!613248 res!266594) b!613245))

(assert (= (and b!613245 (not res!266577)) b!613274))

(assert (= (and b!613274 res!266585) b!613258))

(assert (= (and b!613258 res!266595) b!613277))

(assert (= (and b!613248 c!113370) b!613251))

(assert (= (and b!613248 (not c!113370)) b!613260))

(assert (= (and b!613251 res!266593) b!613267))

(assert (= (and b!613248 (not res!266591)) b!613240))

(assert (= (and b!613240 (not res!266602)) b!613266))

(assert (= (and b!613266 (not res!266600)) b!613261))

(assert (= (and b!613261 (not res!266589)) b!613256))

(assert (= (and b!613256 (not res!266598)) b!613265))

(assert (= (and b!613265 (not res!266580)) b!613249))

(assert (= (and b!613249 c!113369) b!613276))

(assert (= (and b!613249 (not c!113369)) b!613243))

(assert (= (and b!613276 res!266582) b!613253))

(assert (= (and b!613249 (not res!266578)) b!613263))

(assert (= (and b!613263 (not res!266604)) b!613250))

(assert (= (and start!58688 ((_ is Cons!6127) suffix!1342)) b!613262))

(assert (= b!613244 b!613268))

(assert (= b!613270 b!613244))

(assert (= (and start!58688 ((_ is Cons!6129) rules!3103)) b!613270))

(assert (= b!613273 b!613247))

(assert (= b!613246 b!613273))

(assert (= start!58688 b!613246))

(assert (= (and start!58688 ((_ is Cons!6127) input!2705)) b!613239))

(declare-fun m!881805 () Bool)

(assert (=> b!613276 m!881805))

(declare-fun m!881807 () Bool)

(assert (=> b!613276 m!881807))

(declare-fun m!881809 () Bool)

(assert (=> b!613237 m!881809))

(assert (=> b!613237 m!881809))

(declare-fun m!881811 () Bool)

(assert (=> b!613237 m!881811))

(declare-fun m!881813 () Bool)

(assert (=> b!613261 m!881813))

(declare-fun m!881815 () Bool)

(assert (=> b!613255 m!881815))

(declare-fun m!881817 () Bool)

(assert (=> b!613256 m!881817))

(assert (=> b!613263 m!881807))

(declare-fun m!881819 () Bool)

(assert (=> b!613272 m!881819))

(declare-fun m!881821 () Bool)

(assert (=> b!613259 m!881821))

(declare-fun m!881823 () Bool)

(assert (=> b!613274 m!881823))

(declare-fun m!881825 () Bool)

(assert (=> b!613240 m!881825))

(declare-fun m!881827 () Bool)

(assert (=> b!613248 m!881827))

(declare-fun m!881829 () Bool)

(assert (=> b!613248 m!881829))

(declare-fun m!881831 () Bool)

(assert (=> b!613248 m!881831))

(declare-fun m!881833 () Bool)

(assert (=> b!613248 m!881833))

(declare-fun m!881835 () Bool)

(assert (=> b!613248 m!881835))

(declare-fun m!881837 () Bool)

(assert (=> b!613248 m!881837))

(declare-fun m!881839 () Bool)

(assert (=> b!613248 m!881839))

(declare-fun m!881841 () Bool)

(assert (=> b!613248 m!881841))

(declare-fun m!881843 () Bool)

(assert (=> b!613248 m!881843))

(declare-fun m!881845 () Bool)

(assert (=> b!613248 m!881845))

(declare-fun m!881847 () Bool)

(assert (=> b!613275 m!881847))

(declare-fun m!881849 () Bool)

(assert (=> b!613275 m!881849))

(declare-fun m!881851 () Bool)

(assert (=> b!613275 m!881851))

(declare-fun m!881853 () Bool)

(assert (=> b!613242 m!881853))

(declare-fun m!881855 () Bool)

(assert (=> b!613242 m!881855))

(declare-fun m!881857 () Bool)

(assert (=> b!613242 m!881857))

(declare-fun m!881859 () Bool)

(assert (=> b!613242 m!881859))

(declare-fun m!881861 () Bool)

(assert (=> b!613242 m!881861))

(declare-fun m!881863 () Bool)

(assert (=> b!613242 m!881863))

(declare-fun m!881865 () Bool)

(assert (=> b!613242 m!881865))

(declare-fun m!881867 () Bool)

(assert (=> b!613242 m!881867))

(declare-fun m!881869 () Bool)

(assert (=> b!613242 m!881869))

(declare-fun m!881871 () Bool)

(assert (=> b!613242 m!881871))

(declare-fun m!881873 () Bool)

(assert (=> b!613242 m!881873))

(declare-fun m!881875 () Bool)

(assert (=> b!613242 m!881875))

(declare-fun m!881877 () Bool)

(assert (=> b!613242 m!881877))

(declare-fun m!881879 () Bool)

(assert (=> b!613242 m!881879))

(declare-fun m!881881 () Bool)

(assert (=> b!613242 m!881881))

(declare-fun m!881883 () Bool)

(assert (=> b!613242 m!881883))

(declare-fun m!881885 () Bool)

(assert (=> b!613242 m!881885))

(declare-fun m!881887 () Bool)

(assert (=> b!613242 m!881887))

(declare-fun m!881889 () Bool)

(assert (=> b!613242 m!881889))

(declare-fun m!881891 () Bool)

(assert (=> b!613242 m!881891))

(declare-fun m!881893 () Bool)

(assert (=> b!613242 m!881893))

(assert (=> b!613242 m!881873))

(declare-fun m!881895 () Bool)

(assert (=> b!613242 m!881895))

(declare-fun m!881897 () Bool)

(assert (=> b!613242 m!881897))

(declare-fun m!881899 () Bool)

(assert (=> b!613242 m!881899))

(declare-fun m!881901 () Bool)

(assert (=> b!613242 m!881901))

(declare-fun m!881903 () Bool)

(assert (=> b!613242 m!881903))

(declare-fun m!881905 () Bool)

(assert (=> b!613242 m!881905))

(declare-fun m!881907 () Bool)

(assert (=> b!613246 m!881907))

(assert (=> b!613251 m!881843))

(declare-fun m!881909 () Bool)

(assert (=> b!613251 m!881909))

(declare-fun m!881911 () Bool)

(assert (=> b!613251 m!881911))

(declare-fun m!881913 () Bool)

(assert (=> b!613249 m!881913))

(declare-fun m!881915 () Bool)

(assert (=> b!613249 m!881915))

(declare-fun m!881917 () Bool)

(assert (=> b!613257 m!881917))

(declare-fun m!881919 () Bool)

(assert (=> b!613258 m!881919))

(declare-fun m!881921 () Bool)

(assert (=> b!613236 m!881921))

(declare-fun m!881923 () Bool)

(assert (=> b!613273 m!881923))

(declare-fun m!881925 () Bool)

(assert (=> b!613273 m!881925))

(declare-fun m!881927 () Bool)

(assert (=> b!613250 m!881927))

(declare-fun m!881929 () Bool)

(assert (=> b!613250 m!881929))

(declare-fun m!881931 () Bool)

(assert (=> b!613250 m!881931))

(declare-fun m!881933 () Bool)

(assert (=> b!613250 m!881933))

(declare-fun m!881935 () Bool)

(assert (=> b!613250 m!881935))

(declare-fun m!881937 () Bool)

(assert (=> b!613244 m!881937))

(declare-fun m!881939 () Bool)

(assert (=> b!613244 m!881939))

(declare-fun m!881941 () Bool)

(assert (=> b!613254 m!881941))

(declare-fun m!881943 () Bool)

(assert (=> b!613269 m!881943))

(declare-fun m!881945 () Bool)

(assert (=> start!58688 m!881945))

(declare-fun m!881947 () Bool)

(assert (=> b!613241 m!881947))

(check-sat (not b!613237) (not b!613254) (not b!613240) (not b_next!17489) (not b!613259) b_and!60851 (not b!613239) (not b!613272) (not b!613270) (not b!613256) (not b!613255) (not b_next!17487) tp_is_empty!3481 (not start!58688) (not b!613248) (not b!613242) (not b!613275) (not b!613274) (not b!613273) (not b!613236) (not b!613269) b_and!60847 (not b!613249) (not b!613262) (not b!613250) (not b!613251) b_and!60853 (not b_next!17485) (not b!613244) (not b!613246) (not b!613263) (not b!613276) (not b!613241) (not b!613261) (not b_next!17491) (not b!613258) b_and!60849 (not b!613257))
(check-sat b_and!60847 (not b_next!17489) b_and!60851 (not b_next!17491) b_and!60849 (not b_next!17487) b_and!60853 (not b_next!17485))
