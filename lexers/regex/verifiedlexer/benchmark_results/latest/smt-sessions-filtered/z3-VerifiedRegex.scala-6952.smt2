; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!368068 () Bool)

(assert start!368068)

(declare-fun b!3924252 () Bool)

(declare-fun b_free!106877 () Bool)

(declare-fun b_next!107581 () Bool)

(assert (=> b!3924252 (= b_free!106877 (not b_next!107581))))

(declare-fun tp!1194641 () Bool)

(declare-fun b_and!299231 () Bool)

(assert (=> b!3924252 (= tp!1194641 b_and!299231)))

(declare-fun b_free!106879 () Bool)

(declare-fun b_next!107583 () Bool)

(assert (=> b!3924252 (= b_free!106879 (not b_next!107583))))

(declare-fun tp!1194653 () Bool)

(declare-fun b_and!299233 () Bool)

(assert (=> b!3924252 (= tp!1194653 b_and!299233)))

(declare-fun b!3924253 () Bool)

(declare-fun b_free!106881 () Bool)

(declare-fun b_next!107585 () Bool)

(assert (=> b!3924253 (= b_free!106881 (not b_next!107585))))

(declare-fun tp!1194638 () Bool)

(declare-fun b_and!299235 () Bool)

(assert (=> b!3924253 (= tp!1194638 b_and!299235)))

(declare-fun b_free!106883 () Bool)

(declare-fun b_next!107587 () Bool)

(assert (=> b!3924253 (= b_free!106883 (not b_next!107587))))

(declare-fun tp!1194651 () Bool)

(declare-fun b_and!299237 () Bool)

(assert (=> b!3924253 (= tp!1194651 b_and!299237)))

(declare-fun b!3924230 () Bool)

(declare-fun b_free!106885 () Bool)

(declare-fun b_next!107589 () Bool)

(assert (=> b!3924230 (= b_free!106885 (not b_next!107589))))

(declare-fun tp!1194652 () Bool)

(declare-fun b_and!299239 () Bool)

(assert (=> b!3924230 (= tp!1194652 b_and!299239)))

(declare-fun b_free!106887 () Bool)

(declare-fun b_next!107591 () Bool)

(assert (=> b!3924230 (= b_free!106887 (not b_next!107591))))

(declare-fun tp!1194650 () Bool)

(declare-fun b_and!299241 () Bool)

(assert (=> b!3924230 (= tp!1194650 b_and!299241)))

(declare-fun b!3924219 () Bool)

(declare-datatypes ((Unit!59879 0))(
  ( (Unit!59880) )
))
(declare-fun e!2427000 () Unit!59879)

(declare-fun Unit!59881 () Unit!59879)

(assert (=> b!3924219 (= e!2427000 Unit!59881)))

(declare-datatypes ((List!41757 0))(
  ( (Nil!41633) (Cons!41633 (h!47053 (_ BitVec 16)) (t!324892 List!41757)) )
))
(declare-datatypes ((TokenValue!6722 0))(
  ( (FloatLiteralValue!13444 (text!47499 List!41757)) (TokenValueExt!6721 (__x!25661 Int)) (Broken!33610 (value!205630 List!41757)) (Object!6845) (End!6722) (Def!6722) (Underscore!6722) (Match!6722) (Else!6722) (Error!6722) (Case!6722) (If!6722) (Extends!6722) (Abstract!6722) (Class!6722) (Val!6722) (DelimiterValue!13444 (del!6782 List!41757)) (KeywordValue!6728 (value!205631 List!41757)) (CommentValue!13444 (value!205632 List!41757)) (WhitespaceValue!13444 (value!205633 List!41757)) (IndentationValue!6722 (value!205634 List!41757)) (String!47327) (Int32!6722) (Broken!33611 (value!205635 List!41757)) (Boolean!6723) (Unit!59882) (OperatorValue!6725 (op!6782 List!41757)) (IdentifierValue!13444 (value!205636 List!41757)) (IdentifierValue!13445 (value!205637 List!41757)) (WhitespaceValue!13445 (value!205638 List!41757)) (True!13444) (False!13444) (Broken!33612 (value!205639 List!41757)) (Broken!33613 (value!205640 List!41757)) (True!13445) (RightBrace!6722) (RightBracket!6722) (Colon!6722) (Null!6722) (Comma!6722) (LeftBracket!6722) (False!13445) (LeftBrace!6722) (ImaginaryLiteralValue!6722 (text!47500 List!41757)) (StringLiteralValue!20166 (value!205641 List!41757)) (EOFValue!6722 (value!205642 List!41757)) (IdentValue!6722 (value!205643 List!41757)) (DelimiterValue!13445 (value!205644 List!41757)) (DedentValue!6722 (value!205645 List!41757)) (NewLineValue!6722 (value!205646 List!41757)) (IntegerValue!20166 (value!205647 (_ BitVec 32)) (text!47501 List!41757)) (IntegerValue!20167 (value!205648 Int) (text!47502 List!41757)) (Times!6722) (Or!6722) (Equal!6722) (Minus!6722) (Broken!33614 (value!205649 List!41757)) (And!6722) (Div!6722) (LessEqual!6722) (Mod!6722) (Concat!18119) (Not!6722) (Plus!6722) (SpaceValue!6722 (value!205650 List!41757)) (IntegerValue!20168 (value!205651 Int) (text!47503 List!41757)) (StringLiteralValue!20167 (text!47504 List!41757)) (FloatLiteralValue!13445 (text!47505 List!41757)) (BytesLiteralValue!6722 (value!205652 List!41757)) (CommentValue!13445 (value!205653 List!41757)) (StringLiteralValue!20168 (value!205654 List!41757)) (ErrorTokenValue!6722 (msg!6783 List!41757)) )
))
(declare-datatypes ((C!22980 0))(
  ( (C!22981 (val!13584 Int)) )
))
(declare-datatypes ((Regex!11397 0))(
  ( (ElementMatch!11397 (c!681902 C!22980)) (Concat!18120 (regOne!23306 Regex!11397) (regTwo!23306 Regex!11397)) (EmptyExpr!11397) (Star!11397 (reg!11726 Regex!11397)) (EmptyLang!11397) (Union!11397 (regOne!23307 Regex!11397) (regTwo!23307 Regex!11397)) )
))
(declare-datatypes ((String!47328 0))(
  ( (String!47329 (value!205655 String)) )
))
(declare-datatypes ((List!41758 0))(
  ( (Nil!41634) (Cons!41634 (h!47054 C!22980) (t!324893 List!41758)) )
))
(declare-datatypes ((IArray!25411 0))(
  ( (IArray!25412 (innerList!12763 List!41758)) )
))
(declare-datatypes ((Conc!12703 0))(
  ( (Node!12703 (left!31799 Conc!12703) (right!32129 Conc!12703) (csize!25636 Int) (cheight!12914 Int)) (Leaf!19656 (xs!16009 IArray!25411) (csize!25637 Int)) (Empty!12703) )
))
(declare-datatypes ((BalanceConc!25000 0))(
  ( (BalanceConc!25001 (c!681903 Conc!12703)) )
))
(declare-datatypes ((TokenValueInjection!12872 0))(
  ( (TokenValueInjection!12873 (toValue!8944 Int) (toChars!8803 Int)) )
))
(declare-datatypes ((Rule!12784 0))(
  ( (Rule!12785 (regex!6492 Regex!11397) (tag!7352 String!47328) (isSeparator!6492 Bool) (transformation!6492 TokenValueInjection!12872)) )
))
(declare-datatypes ((Token!12122 0))(
  ( (Token!12123 (value!205656 TokenValue!6722) (rule!9430 Rule!12784) (size!31249 Int) (originalCharacters!7092 List!41758)) )
))
(declare-datatypes ((tuple2!40902 0))(
  ( (tuple2!40903 (_1!23585 Token!12122) (_2!23585 List!41758)) )
))
(declare-datatypes ((Option!8912 0))(
  ( (None!8911) (Some!8911 (v!39237 tuple2!40902)) )
))
(declare-fun lt!1368597 () Option!8912)

(declare-fun lt!1368584 () List!41758)

(declare-fun lt!1368598 () tuple2!40902)

(declare-fun lt!1368572 () Unit!59879)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!540 (List!41758 List!41758 List!41758 List!41758) Unit!59879)

(assert (=> b!3924219 (= lt!1368572 (lemmaConcatSameAndSameSizesThenSameLists!540 lt!1368584 (_2!23585 (v!39237 lt!1368597)) lt!1368584 (_2!23585 lt!1368598)))))

(assert (=> b!3924219 (= (_2!23585 (v!39237 lt!1368597)) (_2!23585 lt!1368598))))

(declare-fun suffixResult!91 () List!41758)

(declare-datatypes ((LexerInterface!6081 0))(
  ( (LexerInterfaceExt!6078 (__x!25662 Int)) (Lexer!6079) )
))
(declare-fun thiss!20629 () LexerInterface!6081)

(declare-fun lt!1368604 () Unit!59879)

(declare-fun suffix!1176 () List!41758)

(declare-datatypes ((List!41759 0))(
  ( (Nil!41635) (Cons!41635 (h!47055 Rule!12784) (t!324894 List!41759)) )
))
(declare-fun rules!2768 () List!41759)

(declare-datatypes ((List!41760 0))(
  ( (Nil!41636) (Cons!41636 (h!47056 Token!12122) (t!324895 List!41760)) )
))
(declare-fun suffixTokens!72 () List!41760)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!92 (LexerInterface!6081 List!41759 List!41758 List!41758 List!41760 List!41758) Unit!59879)

(assert (=> b!3924219 (= lt!1368604 (lemmaLexWithSmallerInputCannotProduceSameResults!92 thiss!20629 rules!2768 suffix!1176 (_2!23585 lt!1368598) suffixTokens!72 suffixResult!91))))

(declare-fun res!1587496 () Bool)

(declare-datatypes ((tuple2!40904 0))(
  ( (tuple2!40905 (_1!23586 List!41760) (_2!23586 List!41758)) )
))
(declare-fun call!284680 () tuple2!40904)

(declare-fun lt!1368600 () tuple2!40904)

(assert (=> b!3924219 (= res!1587496 (not (= call!284680 lt!1368600)))))

(declare-fun e!2426978 () Bool)

(assert (=> b!3924219 (=> (not res!1587496) (not e!2426978))))

(assert (=> b!3924219 e!2426978))

(declare-fun b!3924221 () Bool)

(declare-fun e!2426982 () Bool)

(declare-fun e!2426971 () Bool)

(assert (=> b!3924221 (= e!2426982 (not e!2426971))))

(declare-fun res!1587488 () Bool)

(assert (=> b!3924221 (=> res!1587488 e!2426971)))

(declare-fun lt!1368576 () List!41758)

(declare-fun lt!1368582 () List!41758)

(assert (=> b!3924221 (= res!1587488 (not (= lt!1368576 lt!1368582)))))

(declare-fun lt!1368583 () tuple2!40904)

(declare-fun lexList!1849 (LexerInterface!6081 List!41759 List!41758) tuple2!40904)

(assert (=> b!3924221 (= lt!1368583 (lexList!1849 thiss!20629 rules!2768 (_2!23585 (v!39237 lt!1368597))))))

(declare-fun lt!1368593 () List!41758)

(declare-fun lt!1368603 () TokenValue!6722)

(declare-fun lt!1368588 () Int)

(assert (=> b!3924221 (and (= (size!31249 (_1!23585 (v!39237 lt!1368597))) lt!1368588) (= (originalCharacters!7092 (_1!23585 (v!39237 lt!1368597))) lt!1368584) (= (v!39237 lt!1368597) (tuple2!40903 (Token!12123 lt!1368603 (rule!9430 (_1!23585 (v!39237 lt!1368597))) lt!1368588 lt!1368584) lt!1368593)))))

(declare-fun size!31250 (List!41758) Int)

(assert (=> b!3924221 (= lt!1368588 (size!31250 lt!1368584))))

(declare-fun e!2426990 () Bool)

(assert (=> b!3924221 e!2426990))

(declare-fun res!1587491 () Bool)

(assert (=> b!3924221 (=> (not res!1587491) (not e!2426990))))

(assert (=> b!3924221 (= res!1587491 (= (value!205656 (_1!23585 (v!39237 lt!1368597))) lt!1368603))))

(declare-fun apply!9731 (TokenValueInjection!12872 BalanceConc!25000) TokenValue!6722)

(declare-fun seqFromList!4759 (List!41758) BalanceConc!25000)

(assert (=> b!3924221 (= lt!1368603 (apply!9731 (transformation!6492 (rule!9430 (_1!23585 (v!39237 lt!1368597)))) (seqFromList!4759 lt!1368584)))))

(assert (=> b!3924221 (= (_2!23585 (v!39237 lt!1368597)) lt!1368593)))

(declare-fun lt!1368575 () Unit!59879)

(declare-fun lemmaSamePrefixThenSameSuffix!1808 (List!41758 List!41758 List!41758 List!41758 List!41758) Unit!59879)

(assert (=> b!3924221 (= lt!1368575 (lemmaSamePrefixThenSameSuffix!1808 lt!1368584 (_2!23585 (v!39237 lt!1368597)) lt!1368584 lt!1368593 lt!1368582))))

(declare-fun getSuffix!2042 (List!41758 List!41758) List!41758)

(assert (=> b!3924221 (= lt!1368593 (getSuffix!2042 lt!1368582 lt!1368584))))

(declare-fun isPrefix!3587 (List!41758 List!41758) Bool)

(assert (=> b!3924221 (isPrefix!3587 lt!1368584 lt!1368576)))

(declare-fun ++!10741 (List!41758 List!41758) List!41758)

(assert (=> b!3924221 (= lt!1368576 (++!10741 lt!1368584 (_2!23585 (v!39237 lt!1368597))))))

(declare-fun lt!1368595 () Unit!59879)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2450 (List!41758 List!41758) Unit!59879)

(assert (=> b!3924221 (= lt!1368595 (lemmaConcatTwoListThenFirstIsPrefix!2450 lt!1368584 (_2!23585 (v!39237 lt!1368597))))))

(declare-fun list!15475 (BalanceConc!25000) List!41758)

(declare-fun charsOf!4316 (Token!12122) BalanceConc!25000)

(assert (=> b!3924221 (= lt!1368584 (list!15475 (charsOf!4316 (_1!23585 (v!39237 lt!1368597)))))))

(declare-fun ruleValid!2440 (LexerInterface!6081 Rule!12784) Bool)

(assert (=> b!3924221 (ruleValid!2440 thiss!20629 (rule!9430 (_1!23585 (v!39237 lt!1368597))))))

(declare-fun lt!1368573 () Unit!59879)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1520 (LexerInterface!6081 Rule!12784 List!41759) Unit!59879)

(assert (=> b!3924221 (= lt!1368573 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1520 thiss!20629 (rule!9430 (_1!23585 (v!39237 lt!1368597))) rules!2768))))

(declare-fun lt!1368579 () Unit!59879)

(declare-fun lemmaCharactersSize!1149 (Token!12122) Unit!59879)

(assert (=> b!3924221 (= lt!1368579 (lemmaCharactersSize!1149 (_1!23585 (v!39237 lt!1368597))))))

(declare-fun b!3924222 () Bool)

(declare-fun Unit!59883 () Unit!59879)

(assert (=> b!3924222 (= e!2427000 Unit!59883)))

(declare-fun lt!1368574 () List!41760)

(declare-fun lt!1368591 () Unit!59879)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!92 (LexerInterface!6081 List!41759 List!41758 List!41758 List!41760 List!41758 List!41760) Unit!59879)

(assert (=> b!3924222 (= lt!1368591 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!92 thiss!20629 rules!2768 suffix!1176 (_2!23585 lt!1368598) suffixTokens!72 suffixResult!91 lt!1368574))))

(declare-fun res!1587492 () Bool)

(declare-fun ++!10742 (List!41760 List!41760) List!41760)

(assert (=> b!3924222 (= res!1587492 (not (= call!284680 (tuple2!40905 (++!10742 lt!1368574 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2426986 () Bool)

(assert (=> b!3924222 (=> (not res!1587492) (not e!2426986))))

(assert (=> b!3924222 e!2426986))

(declare-fun b!3924223 () Bool)

(declare-fun e!2426994 () Bool)

(assert (=> b!3924223 (= e!2426994 e!2426982)))

(declare-fun res!1587490 () Bool)

(assert (=> b!3924223 (=> (not res!1587490) (not e!2426982))))

(get-info :version)

(assert (=> b!3924223 (= res!1587490 ((_ is Some!8911) lt!1368597))))

(declare-fun maxPrefix!3385 (LexerInterface!6081 List!41759 List!41758) Option!8912)

(assert (=> b!3924223 (= lt!1368597 (maxPrefix!3385 thiss!20629 rules!2768 lt!1368582))))

(declare-fun bm!284675 () Bool)

(assert (=> bm!284675 (= call!284680 (lexList!1849 thiss!20629 rules!2768 (_2!23585 lt!1368598)))))

(declare-fun b!3924224 () Bool)

(declare-fun res!1587484 () Bool)

(declare-fun e!2426987 () Bool)

(assert (=> b!3924224 (=> (not res!1587484) (not e!2426987))))

(declare-fun prefix!426 () List!41758)

(declare-fun isEmpty!24800 (List!41758) Bool)

(assert (=> b!3924224 (= res!1587484 (not (isEmpty!24800 prefix!426)))))

(declare-fun b!3924225 () Bool)

(declare-fun tp!1194643 () Bool)

(declare-fun e!2426976 () Bool)

(declare-fun prefixTokens!80 () List!41760)

(declare-fun e!2426997 () Bool)

(declare-fun inv!21 (TokenValue!6722) Bool)

(assert (=> b!3924225 (= e!2426976 (and (inv!21 (value!205656 (h!47056 prefixTokens!80))) e!2426997 tp!1194643))))

(declare-fun b!3924226 () Bool)

(declare-fun res!1587483 () Bool)

(assert (=> b!3924226 (=> res!1587483 e!2426971)))

(assert (=> b!3924226 (= res!1587483 (or (not (= lt!1368583 (tuple2!40905 (_1!23586 lt!1368583) (_2!23586 lt!1368583)))) (= (_2!23585 (v!39237 lt!1368597)) suffix!1176)))))

(declare-fun e!2426972 () Bool)

(declare-fun e!2426984 () Bool)

(declare-fun b!3924227 () Bool)

(declare-fun tp!1194642 () Bool)

(declare-fun inv!55827 (String!47328) Bool)

(declare-fun inv!55830 (TokenValueInjection!12872) Bool)

(assert (=> b!3924227 (= e!2426984 (and tp!1194642 (inv!55827 (tag!7352 (h!47055 rules!2768))) (inv!55830 (transformation!6492 (h!47055 rules!2768))) e!2426972))))

(declare-fun b!3924228 () Bool)

(declare-fun e!2426975 () Unit!59879)

(declare-fun Unit!59884 () Unit!59879)

(assert (=> b!3924228 (= e!2426975 Unit!59884)))

(declare-fun lt!1368587 () Unit!59879)

(assert (=> b!3924228 (= lt!1368587 (lemmaConcatTwoListThenFirstIsPrefix!2450 prefix!426 suffix!1176))))

(assert (=> b!3924228 (isPrefix!3587 prefix!426 lt!1368582)))

(declare-fun lt!1368605 () Unit!59879)

(declare-fun lemmaIsPrefixSameLengthThenSameList!783 (List!41758 List!41758 List!41758) Unit!59879)

(assert (=> b!3924228 (= lt!1368605 (lemmaIsPrefixSameLengthThenSameList!783 lt!1368584 prefix!426 lt!1368582))))

(assert (=> b!3924228 (= lt!1368584 prefix!426)))

(declare-fun lt!1368578 () Unit!59879)

(assert (=> b!3924228 (= lt!1368578 (lemmaSamePrefixThenSameSuffix!1808 lt!1368584 (_2!23585 (v!39237 lt!1368597)) prefix!426 suffix!1176 lt!1368582))))

(assert (=> b!3924228 false))

(declare-fun b!3924229 () Bool)

(declare-fun e!2426979 () Bool)

(declare-fun e!2426985 () Bool)

(assert (=> b!3924229 (= e!2426979 e!2426985)))

(declare-fun res!1587497 () Bool)

(assert (=> b!3924229 (=> res!1587497 e!2426985)))

(declare-fun lt!1368596 () List!41758)

(assert (=> b!3924229 (= res!1587497 (not (= lt!1368596 prefix!426)))))

(assert (=> b!3924229 (= lt!1368596 (++!10741 lt!1368584 (getSuffix!2042 prefix!426 lt!1368584)))))

(assert (=> b!3924230 (= e!2426972 (and tp!1194652 tp!1194650))))

(declare-fun b!3924231 () Bool)

(declare-fun res!1587487 () Bool)

(assert (=> b!3924231 (=> (not res!1587487) (not e!2426987))))

(declare-fun isEmpty!24801 (List!41760) Bool)

(assert (=> b!3924231 (= res!1587487 (not (isEmpty!24801 prefixTokens!80)))))

(declare-fun tp!1194649 () Bool)

(declare-fun b!3924232 () Bool)

(declare-fun e!2426983 () Bool)

(declare-fun e!2426991 () Bool)

(declare-fun inv!55831 (Token!12122) Bool)

(assert (=> b!3924232 (= e!2426991 (and (inv!55831 (h!47056 suffixTokens!72)) e!2426983 tp!1194649))))

(declare-fun tp!1194645 () Bool)

(declare-fun e!2426974 () Bool)

(declare-fun b!3924233 () Bool)

(assert (=> b!3924233 (= e!2426997 (and tp!1194645 (inv!55827 (tag!7352 (rule!9430 (h!47056 prefixTokens!80)))) (inv!55830 (transformation!6492 (rule!9430 (h!47056 prefixTokens!80)))) e!2426974))))

(declare-fun b!3924234 () Bool)

(declare-fun res!1587489 () Bool)

(declare-fun e!2426973 () Bool)

(assert (=> b!3924234 (=> res!1587489 e!2426973)))

(declare-fun head!8311 (List!41760) Token!12122)

(assert (=> b!3924234 (= res!1587489 (not (= (head!8311 prefixTokens!80) (_1!23585 (v!39237 lt!1368597)))))))

(declare-fun b!3924235 () Bool)

(declare-fun e!2427001 () Bool)

(declare-fun tp!1194648 () Bool)

(assert (=> b!3924235 (= e!2426983 (and (inv!21 (value!205656 (h!47056 suffixTokens!72))) e!2427001 tp!1194648))))

(declare-fun res!1587499 () Bool)

(assert (=> start!368068 (=> (not res!1587499) (not e!2426987))))

(assert (=> start!368068 (= res!1587499 ((_ is Lexer!6079) thiss!20629))))

(assert (=> start!368068 e!2426987))

(declare-fun e!2426993 () Bool)

(assert (=> start!368068 e!2426993))

(assert (=> start!368068 true))

(declare-fun e!2426995 () Bool)

(assert (=> start!368068 e!2426995))

(declare-fun e!2426977 () Bool)

(assert (=> start!368068 e!2426977))

(declare-fun e!2426989 () Bool)

(assert (=> start!368068 e!2426989))

(assert (=> start!368068 e!2426991))

(declare-fun e!2426999 () Bool)

(assert (=> start!368068 e!2426999))

(declare-fun b!3924220 () Bool)

(declare-fun e!2426980 () Unit!59879)

(declare-fun Unit!59885 () Unit!59879)

(assert (=> b!3924220 (= e!2426980 Unit!59885)))

(declare-fun lt!1368589 () Int)

(assert (=> b!3924220 (= lt!1368589 (size!31250 lt!1368582))))

(declare-fun lt!1368599 () Unit!59879)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1323 (LexerInterface!6081 List!41759 List!41758 List!41758 List!41758 Rule!12784) Unit!59879)

(assert (=> b!3924220 (= lt!1368599 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1323 thiss!20629 rules!2768 lt!1368584 lt!1368582 (_2!23585 (v!39237 lt!1368597)) (rule!9430 (_1!23585 (v!39237 lt!1368597)))))))

(declare-fun maxPrefixOneRule!2455 (LexerInterface!6081 Rule!12784 List!41758) Option!8912)

(assert (=> b!3924220 (= (maxPrefixOneRule!2455 thiss!20629 (rule!9430 (_1!23585 (v!39237 lt!1368597))) lt!1368582) (Some!8911 (tuple2!40903 (Token!12123 lt!1368603 (rule!9430 (_1!23585 (v!39237 lt!1368597))) lt!1368588 lt!1368584) (_2!23585 (v!39237 lt!1368597)))))))

(declare-fun get!13758 (Option!8912) tuple2!40902)

(assert (=> b!3924220 (= lt!1368598 (get!13758 lt!1368597))))

(declare-fun c!681900 () Bool)

(declare-fun lt!1368585 () Int)

(assert (=> b!3924220 (= c!681900 (< (size!31250 (_2!23585 lt!1368598)) lt!1368585))))

(declare-fun lt!1368592 () Unit!59879)

(declare-fun e!2426969 () Unit!59879)

(assert (=> b!3924220 (= lt!1368592 e!2426969)))

(assert (=> b!3924220 false))

(declare-fun b!3924236 () Bool)

(declare-fun c!681898 () Bool)

(assert (=> b!3924236 (= c!681898 (isEmpty!24801 lt!1368574))))

(declare-fun tail!6037 (List!41760) List!41760)

(assert (=> b!3924236 (= lt!1368574 (tail!6037 prefixTokens!80))))

(assert (=> b!3924236 (= e!2426969 e!2427000)))

(declare-fun b!3924237 () Bool)

(declare-fun e!2427002 () Bool)

(assert (=> b!3924237 (= e!2426987 e!2427002)))

(declare-fun res!1587485 () Bool)

(assert (=> b!3924237 (=> (not res!1587485) (not e!2427002))))

(declare-fun lt!1368581 () List!41760)

(declare-fun lt!1368594 () tuple2!40904)

(assert (=> b!3924237 (= res!1587485 (= lt!1368594 (tuple2!40905 lt!1368581 suffixResult!91)))))

(assert (=> b!3924237 (= lt!1368594 (lexList!1849 thiss!20629 rules!2768 lt!1368582))))

(assert (=> b!3924237 (= lt!1368581 (++!10742 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3924237 (= lt!1368582 (++!10741 prefix!426 suffix!1176))))

(declare-fun b!3924238 () Bool)

(declare-fun Unit!59886 () Unit!59879)

(assert (=> b!3924238 (= e!2426969 Unit!59886)))

(declare-fun b!3924239 () Bool)

(declare-fun res!1587493 () Bool)

(assert (=> b!3924239 (=> res!1587493 e!2426971)))

(assert (=> b!3924239 (= res!1587493 (not (= lt!1368594 (tuple2!40905 (++!10742 (Cons!41636 (_1!23585 (v!39237 lt!1368597)) Nil!41636) (_1!23586 lt!1368583)) (_2!23586 lt!1368583)))))))

(declare-fun b!3924240 () Bool)

(declare-fun Unit!59887 () Unit!59879)

(assert (=> b!3924240 (= e!2426980 Unit!59887)))

(declare-fun tp!1194646 () Bool)

(declare-fun b!3924241 () Bool)

(assert (=> b!3924241 (= e!2426989 (and (inv!55831 (h!47056 prefixTokens!80)) e!2426976 tp!1194646))))

(declare-fun b!3924242 () Bool)

(declare-fun tp!1194647 () Bool)

(assert (=> b!3924242 (= e!2426977 (and e!2426984 tp!1194647))))

(declare-fun b!3924243 () Bool)

(declare-fun lt!1368577 () List!41758)

(assert (=> b!3924243 (= e!2426985 (or (not (= lt!1368577 lt!1368582)) (= lt!1368577 lt!1368576)))))

(assert (=> b!3924243 (= lt!1368577 (++!10741 lt!1368596 suffix!1176))))

(declare-fun b!3924244 () Bool)

(declare-fun tp_is_empty!19765 () Bool)

(declare-fun tp!1194654 () Bool)

(assert (=> b!3924244 (= e!2426999 (and tp_is_empty!19765 tp!1194654))))

(declare-fun b!3924245 () Bool)

(declare-fun tp!1194640 () Bool)

(assert (=> b!3924245 (= e!2426993 (and tp_is_empty!19765 tp!1194640))))

(declare-fun b!3924246 () Bool)

(declare-fun tp!1194644 () Bool)

(assert (=> b!3924246 (= e!2426995 (and tp_is_empty!19765 tp!1194644))))

(declare-fun b!3924247 () Bool)

(assert (=> b!3924247 (= e!2426971 e!2426973)))

(declare-fun res!1587495 () Bool)

(assert (=> b!3924247 (=> res!1587495 e!2426973)))

(declare-fun lt!1368602 () Int)

(assert (=> b!3924247 (= res!1587495 (<= lt!1368602 lt!1368585))))

(declare-fun lt!1368580 () Unit!59879)

(assert (=> b!3924247 (= lt!1368580 e!2426975)))

(declare-fun c!681901 () Bool)

(assert (=> b!3924247 (= c!681901 (= lt!1368602 lt!1368585))))

(declare-fun lt!1368586 () Unit!59879)

(assert (=> b!3924247 (= lt!1368586 e!2426980)))

(declare-fun c!681899 () Bool)

(assert (=> b!3924247 (= c!681899 (< lt!1368602 lt!1368585))))

(assert (=> b!3924247 (= lt!1368585 (size!31250 suffix!1176))))

(assert (=> b!3924247 (= lt!1368602 (size!31250 (_2!23585 (v!39237 lt!1368597))))))

(declare-fun b!3924248 () Bool)

(assert (=> b!3924248 (= e!2426978 false)))

(declare-fun e!2426996 () Bool)

(declare-fun tp!1194639 () Bool)

(declare-fun b!3924249 () Bool)

(assert (=> b!3924249 (= e!2427001 (and tp!1194639 (inv!55827 (tag!7352 (rule!9430 (h!47056 suffixTokens!72)))) (inv!55830 (transformation!6492 (rule!9430 (h!47056 suffixTokens!72)))) e!2426996))))

(declare-fun b!3924250 () Bool)

(declare-fun Unit!59888 () Unit!59879)

(assert (=> b!3924250 (= e!2426975 Unit!59888)))

(declare-fun b!3924251 () Bool)

(assert (=> b!3924251 (= e!2427002 e!2426994)))

(declare-fun res!1587494 () Bool)

(assert (=> b!3924251 (=> (not res!1587494) (not e!2426994))))

(assert (=> b!3924251 (= res!1587494 (= (lexList!1849 thiss!20629 rules!2768 suffix!1176) lt!1368600))))

(assert (=> b!3924251 (= lt!1368600 (tuple2!40905 suffixTokens!72 suffixResult!91))))

(assert (=> b!3924252 (= e!2426996 (and tp!1194641 tp!1194653))))

(assert (=> b!3924253 (= e!2426974 (and tp!1194638 tp!1194651))))

(declare-fun b!3924254 () Bool)

(declare-fun res!1587482 () Bool)

(assert (=> b!3924254 (=> (not res!1587482) (not e!2426987))))

(declare-fun rulesInvariant!5424 (LexerInterface!6081 List!41759) Bool)

(assert (=> b!3924254 (= res!1587482 (rulesInvariant!5424 thiss!20629 rules!2768))))

(declare-fun b!3924255 () Bool)

(assert (=> b!3924255 (= e!2426973 e!2426979)))

(declare-fun res!1587486 () Bool)

(assert (=> b!3924255 (=> res!1587486 e!2426979)))

(assert (=> b!3924255 (= res!1587486 (>= lt!1368588 (size!31250 prefix!426)))))

(assert (=> b!3924255 (isPrefix!3587 lt!1368584 prefix!426)))

(declare-fun lt!1368590 () Unit!59879)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!265 (List!41758 List!41758 List!41758) Unit!59879)

(assert (=> b!3924255 (= lt!1368590 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!265 prefix!426 lt!1368584 lt!1368582))))

(assert (=> b!3924255 (isPrefix!3587 prefix!426 lt!1368582)))

(declare-fun lt!1368601 () Unit!59879)

(assert (=> b!3924255 (= lt!1368601 (lemmaConcatTwoListThenFirstIsPrefix!2450 prefix!426 suffix!1176))))

(declare-fun b!3924256 () Bool)

(assert (=> b!3924256 (= e!2426990 (= (size!31249 (_1!23585 (v!39237 lt!1368597))) (size!31250 (originalCharacters!7092 (_1!23585 (v!39237 lt!1368597))))))))

(declare-fun b!3924257 () Bool)

(declare-fun res!1587498 () Bool)

(assert (=> b!3924257 (=> (not res!1587498) (not e!2426987))))

(declare-fun isEmpty!24802 (List!41759) Bool)

(assert (=> b!3924257 (= res!1587498 (not (isEmpty!24802 rules!2768)))))

(declare-fun b!3924258 () Bool)

(assert (=> b!3924258 (= e!2426986 false)))

(assert (= (and start!368068 res!1587499) b!3924257))

(assert (= (and b!3924257 res!1587498) b!3924254))

(assert (= (and b!3924254 res!1587482) b!3924231))

(assert (= (and b!3924231 res!1587487) b!3924224))

(assert (= (and b!3924224 res!1587484) b!3924237))

(assert (= (and b!3924237 res!1587485) b!3924251))

(assert (= (and b!3924251 res!1587494) b!3924223))

(assert (= (and b!3924223 res!1587490) b!3924221))

(assert (= (and b!3924221 res!1587491) b!3924256))

(assert (= (and b!3924221 (not res!1587488)) b!3924239))

(assert (= (and b!3924239 (not res!1587493)) b!3924226))

(assert (= (and b!3924226 (not res!1587483)) b!3924247))

(assert (= (and b!3924247 c!681899) b!3924220))

(assert (= (and b!3924247 (not c!681899)) b!3924240))

(assert (= (and b!3924220 c!681900) b!3924236))

(assert (= (and b!3924220 (not c!681900)) b!3924238))

(assert (= (and b!3924236 c!681898) b!3924219))

(assert (= (and b!3924236 (not c!681898)) b!3924222))

(assert (= (and b!3924219 res!1587496) b!3924248))

(assert (= (and b!3924222 res!1587492) b!3924258))

(assert (= (or b!3924219 b!3924222) bm!284675))

(assert (= (and b!3924247 c!681901) b!3924228))

(assert (= (and b!3924247 (not c!681901)) b!3924250))

(assert (= (and b!3924247 (not res!1587495)) b!3924234))

(assert (= (and b!3924234 (not res!1587489)) b!3924255))

(assert (= (and b!3924255 (not res!1587486)) b!3924229))

(assert (= (and b!3924229 (not res!1587497)) b!3924243))

(assert (= (and start!368068 ((_ is Cons!41634) suffixResult!91)) b!3924245))

(assert (= (and start!368068 ((_ is Cons!41634) suffix!1176)) b!3924246))

(assert (= b!3924227 b!3924230))

(assert (= b!3924242 b!3924227))

(assert (= (and start!368068 ((_ is Cons!41635) rules!2768)) b!3924242))

(assert (= b!3924233 b!3924253))

(assert (= b!3924225 b!3924233))

(assert (= b!3924241 b!3924225))

(assert (= (and start!368068 ((_ is Cons!41636) prefixTokens!80)) b!3924241))

(assert (= b!3924249 b!3924252))

(assert (= b!3924235 b!3924249))

(assert (= b!3924232 b!3924235))

(assert (= (and start!368068 ((_ is Cons!41636) suffixTokens!72)) b!3924232))

(assert (= (and start!368068 ((_ is Cons!41634) prefix!426)) b!3924244))

(declare-fun m!4488301 () Bool)

(assert (=> b!3924251 m!4488301))

(declare-fun m!4488303 () Bool)

(assert (=> b!3924234 m!4488303))

(declare-fun m!4488305 () Bool)

(assert (=> b!3924241 m!4488305))

(declare-fun m!4488307 () Bool)

(assert (=> b!3924229 m!4488307))

(assert (=> b!3924229 m!4488307))

(declare-fun m!4488309 () Bool)

(assert (=> b!3924229 m!4488309))

(declare-fun m!4488311 () Bool)

(assert (=> b!3924223 m!4488311))

(declare-fun m!4488313 () Bool)

(assert (=> bm!284675 m!4488313))

(declare-fun m!4488315 () Bool)

(assert (=> b!3924227 m!4488315))

(declare-fun m!4488317 () Bool)

(assert (=> b!3924227 m!4488317))

(declare-fun m!4488319 () Bool)

(assert (=> b!3924219 m!4488319))

(declare-fun m!4488321 () Bool)

(assert (=> b!3924219 m!4488321))

(declare-fun m!4488323 () Bool)

(assert (=> b!3924256 m!4488323))

(declare-fun m!4488325 () Bool)

(assert (=> b!3924232 m!4488325))

(declare-fun m!4488327 () Bool)

(assert (=> b!3924254 m!4488327))

(declare-fun m!4488329 () Bool)

(assert (=> b!3924243 m!4488329))

(declare-fun m!4488331 () Bool)

(assert (=> b!3924228 m!4488331))

(declare-fun m!4488333 () Bool)

(assert (=> b!3924228 m!4488333))

(declare-fun m!4488335 () Bool)

(assert (=> b!3924228 m!4488335))

(declare-fun m!4488337 () Bool)

(assert (=> b!3924228 m!4488337))

(declare-fun m!4488339 () Bool)

(assert (=> b!3924237 m!4488339))

(declare-fun m!4488341 () Bool)

(assert (=> b!3924237 m!4488341))

(declare-fun m!4488343 () Bool)

(assert (=> b!3924237 m!4488343))

(declare-fun m!4488345 () Bool)

(assert (=> b!3924231 m!4488345))

(declare-fun m!4488347 () Bool)

(assert (=> b!3924255 m!4488347))

(assert (=> b!3924255 m!4488331))

(declare-fun m!4488349 () Bool)

(assert (=> b!3924255 m!4488349))

(declare-fun m!4488351 () Bool)

(assert (=> b!3924255 m!4488351))

(assert (=> b!3924255 m!4488333))

(declare-fun m!4488353 () Bool)

(assert (=> b!3924225 m!4488353))

(declare-fun m!4488355 () Bool)

(assert (=> b!3924220 m!4488355))

(declare-fun m!4488357 () Bool)

(assert (=> b!3924220 m!4488357))

(declare-fun m!4488359 () Bool)

(assert (=> b!3924220 m!4488359))

(declare-fun m!4488361 () Bool)

(assert (=> b!3924220 m!4488361))

(declare-fun m!4488363 () Bool)

(assert (=> b!3924220 m!4488363))

(declare-fun m!4488365 () Bool)

(assert (=> b!3924257 m!4488365))

(declare-fun m!4488367 () Bool)

(assert (=> b!3924249 m!4488367))

(declare-fun m!4488369 () Bool)

(assert (=> b!3924249 m!4488369))

(declare-fun m!4488371 () Bool)

(assert (=> b!3924222 m!4488371))

(declare-fun m!4488373 () Bool)

(assert (=> b!3924222 m!4488373))

(declare-fun m!4488375 () Bool)

(assert (=> b!3924224 m!4488375))

(declare-fun m!4488377 () Bool)

(assert (=> b!3924247 m!4488377))

(declare-fun m!4488379 () Bool)

(assert (=> b!3924247 m!4488379))

(declare-fun m!4488381 () Bool)

(assert (=> b!3924235 m!4488381))

(declare-fun m!4488383 () Bool)

(assert (=> b!3924233 m!4488383))

(declare-fun m!4488385 () Bool)

(assert (=> b!3924233 m!4488385))

(declare-fun m!4488387 () Bool)

(assert (=> b!3924239 m!4488387))

(declare-fun m!4488389 () Bool)

(assert (=> b!3924236 m!4488389))

(declare-fun m!4488391 () Bool)

(assert (=> b!3924236 m!4488391))

(declare-fun m!4488393 () Bool)

(assert (=> b!3924221 m!4488393))

(declare-fun m!4488395 () Bool)

(assert (=> b!3924221 m!4488395))

(declare-fun m!4488397 () Bool)

(assert (=> b!3924221 m!4488397))

(declare-fun m!4488399 () Bool)

(assert (=> b!3924221 m!4488399))

(declare-fun m!4488401 () Bool)

(assert (=> b!3924221 m!4488401))

(declare-fun m!4488403 () Bool)

(assert (=> b!3924221 m!4488403))

(declare-fun m!4488405 () Bool)

(assert (=> b!3924221 m!4488405))

(assert (=> b!3924221 m!4488393))

(declare-fun m!4488407 () Bool)

(assert (=> b!3924221 m!4488407))

(declare-fun m!4488409 () Bool)

(assert (=> b!3924221 m!4488409))

(declare-fun m!4488411 () Bool)

(assert (=> b!3924221 m!4488411))

(assert (=> b!3924221 m!4488401))

(declare-fun m!4488413 () Bool)

(assert (=> b!3924221 m!4488413))

(declare-fun m!4488415 () Bool)

(assert (=> b!3924221 m!4488415))

(declare-fun m!4488417 () Bool)

(assert (=> b!3924221 m!4488417))

(declare-fun m!4488419 () Bool)

(assert (=> b!3924221 m!4488419))

(check-sat (not b!3924220) b_and!299237 (not b!3924223) (not b!3924257) (not b!3924221) (not b_next!107583) (not b!3924245) (not b!3924239) tp_is_empty!19765 (not b!3924231) b_and!299231 (not b!3924236) (not b_next!107585) (not b_next!107589) (not b_next!107587) (not b!3924241) (not b!3924224) (not b_next!107581) (not b!3924234) (not b!3924225) (not b_next!107591) (not b!3924255) (not b!3924247) (not b!3924242) (not b!3924227) (not b!3924222) (not b!3924219) (not b!3924232) (not b!3924256) b_and!299239 (not b!3924246) (not bm!284675) (not b!3924249) b_and!299235 b_and!299233 b_and!299241 (not b!3924235) (not b!3924243) (not b!3924244) (not b!3924251) (not b!3924228) (not b!3924254) (not b!3924237) (not b!3924229) (not b!3924233))
(check-sat b_and!299231 b_and!299237 (not b_next!107587) (not b_next!107581) (not b_next!107591) (not b_next!107583) b_and!299239 b_and!299235 (not b_next!107585) (not b_next!107589) b_and!299233 b_and!299241)
