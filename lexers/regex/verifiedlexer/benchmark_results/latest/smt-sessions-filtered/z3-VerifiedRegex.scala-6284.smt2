; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!313322 () Bool)

(assert start!313322)

(declare-fun b!3367851 () Bool)

(declare-fun b_free!88041 () Bool)

(declare-fun b_next!88745 () Bool)

(assert (=> b!3367851 (= b_free!88041 (not b_next!88745))))

(declare-fun tp!1053899 () Bool)

(declare-fun b_and!233387 () Bool)

(assert (=> b!3367851 (= tp!1053899 b_and!233387)))

(declare-fun b_free!88043 () Bool)

(declare-fun b_next!88747 () Bool)

(assert (=> b!3367851 (= b_free!88043 (not b_next!88747))))

(declare-fun tp!1053900 () Bool)

(declare-fun b_and!233389 () Bool)

(assert (=> b!3367851 (= tp!1053900 b_and!233389)))

(declare-fun b!3367838 () Bool)

(declare-fun b_free!88045 () Bool)

(declare-fun b_next!88749 () Bool)

(assert (=> b!3367838 (= b_free!88045 (not b_next!88749))))

(declare-fun tp!1053902 () Bool)

(declare-fun b_and!233391 () Bool)

(assert (=> b!3367838 (= tp!1053902 b_and!233391)))

(declare-fun b_free!88047 () Bool)

(declare-fun b_next!88751 () Bool)

(assert (=> b!3367838 (= b_free!88047 (not b_next!88751))))

(declare-fun tp!1053895 () Bool)

(declare-fun b_and!233393 () Bool)

(assert (=> b!3367838 (= tp!1053895 b_and!233393)))

(declare-fun b!3367845 () Bool)

(declare-fun b_free!88049 () Bool)

(declare-fun b_next!88753 () Bool)

(assert (=> b!3367845 (= b_free!88049 (not b_next!88753))))

(declare-fun tp!1053901 () Bool)

(declare-fun b_and!233395 () Bool)

(assert (=> b!3367845 (= tp!1053901 b_and!233395)))

(declare-fun b_free!88051 () Bool)

(declare-fun b_next!88755 () Bool)

(assert (=> b!3367845 (= b_free!88051 (not b_next!88755))))

(declare-fun tp!1053898 () Bool)

(declare-fun b_and!233397 () Bool)

(assert (=> b!3367845 (= tp!1053898 b_and!233397)))

(declare-fun b!3367828 () Bool)

(declare-fun res!1361982 () Bool)

(declare-fun e!2090367 () Bool)

(assert (=> b!3367828 (=> (not res!1361982) (not e!2090367))))

(declare-datatypes ((C!20400 0))(
  ( (C!20401 (val!12248 Int)) )
))
(declare-datatypes ((Regex!10107 0))(
  ( (ElementMatch!10107 (c!573342 C!20400)) (Concat!15685 (regOne!20726 Regex!10107) (regTwo!20726 Regex!10107)) (EmptyExpr!10107) (Star!10107 (reg!10436 Regex!10107)) (EmptyLang!10107) (Union!10107 (regOne!20727 Regex!10107) (regTwo!20727 Regex!10107)) )
))
(declare-datatypes ((List!36868 0))(
  ( (Nil!36744) (Cons!36744 (h!42164 (_ BitVec 16)) (t!261649 List!36868)) )
))
(declare-datatypes ((TokenValue!5578 0))(
  ( (FloatLiteralValue!11156 (text!39491 List!36868)) (TokenValueExt!5577 (__x!23373 Int)) (Broken!27890 (value!172852 List!36868)) (Object!5701) (End!5578) (Def!5578) (Underscore!5578) (Match!5578) (Else!5578) (Error!5578) (Case!5578) (If!5578) (Extends!5578) (Abstract!5578) (Class!5578) (Val!5578) (DelimiterValue!11156 (del!5638 List!36868)) (KeywordValue!5584 (value!172853 List!36868)) (CommentValue!11156 (value!172854 List!36868)) (WhitespaceValue!11156 (value!172855 List!36868)) (IndentationValue!5578 (value!172856 List!36868)) (String!41223) (Int32!5578) (Broken!27891 (value!172857 List!36868)) (Boolean!5579) (Unit!51841) (OperatorValue!5581 (op!5638 List!36868)) (IdentifierValue!11156 (value!172858 List!36868)) (IdentifierValue!11157 (value!172859 List!36868)) (WhitespaceValue!11157 (value!172860 List!36868)) (True!11156) (False!11156) (Broken!27892 (value!172861 List!36868)) (Broken!27893 (value!172862 List!36868)) (True!11157) (RightBrace!5578) (RightBracket!5578) (Colon!5578) (Null!5578) (Comma!5578) (LeftBracket!5578) (False!11157) (LeftBrace!5578) (ImaginaryLiteralValue!5578 (text!39492 List!36868)) (StringLiteralValue!16734 (value!172863 List!36868)) (EOFValue!5578 (value!172864 List!36868)) (IdentValue!5578 (value!172865 List!36868)) (DelimiterValue!11157 (value!172866 List!36868)) (DedentValue!5578 (value!172867 List!36868)) (NewLineValue!5578 (value!172868 List!36868)) (IntegerValue!16734 (value!172869 (_ BitVec 32)) (text!39493 List!36868)) (IntegerValue!16735 (value!172870 Int) (text!39494 List!36868)) (Times!5578) (Or!5578) (Equal!5578) (Minus!5578) (Broken!27894 (value!172871 List!36868)) (And!5578) (Div!5578) (LessEqual!5578) (Mod!5578) (Concat!15686) (Not!5578) (Plus!5578) (SpaceValue!5578 (value!172872 List!36868)) (IntegerValue!16736 (value!172873 Int) (text!39495 List!36868)) (StringLiteralValue!16735 (text!39496 List!36868)) (FloatLiteralValue!11157 (text!39497 List!36868)) (BytesLiteralValue!5578 (value!172874 List!36868)) (CommentValue!11157 (value!172875 List!36868)) (StringLiteralValue!16736 (value!172876 List!36868)) (ErrorTokenValue!5578 (msg!5639 List!36868)) )
))
(declare-datatypes ((List!36869 0))(
  ( (Nil!36745) (Cons!36745 (h!42165 C!20400) (t!261650 List!36869)) )
))
(declare-datatypes ((IArray!22147 0))(
  ( (IArray!22148 (innerList!11131 List!36869)) )
))
(declare-datatypes ((Conc!11071 0))(
  ( (Node!11071 (left!28643 Conc!11071) (right!28973 Conc!11071) (csize!22372 Int) (cheight!11282 Int)) (Leaf!17356 (xs!14221 IArray!22147) (csize!22373 Int)) (Empty!11071) )
))
(declare-datatypes ((BalanceConc!21756 0))(
  ( (BalanceConc!21757 (c!573343 Conc!11071)) )
))
(declare-datatypes ((String!41224 0))(
  ( (String!41225 (value!172877 String)) )
))
(declare-datatypes ((TokenValueInjection!10584 0))(
  ( (TokenValueInjection!10585 (toValue!7528 Int) (toChars!7387 Int)) )
))
(declare-datatypes ((Rule!10496 0))(
  ( (Rule!10497 (regex!5348 Regex!10107) (tag!5908 String!41224) (isSeparator!5348 Bool) (transformation!5348 TokenValueInjection!10584)) )
))
(declare-datatypes ((Token!10062 0))(
  ( (Token!10063 (value!172878 TokenValue!5578) (rule!7886 Rule!10496) (size!27803 Int) (originalCharacters!6062 List!36869)) )
))
(declare-fun separatorToken!241 () Token!10062)

(assert (=> b!3367828 (= res!1361982 (isSeparator!5348 (rule!7886 separatorToken!241)))))

(declare-fun b!3367829 () Bool)

(declare-fun e!2090370 () Bool)

(declare-fun lt!1142826 () Rule!10496)

(assert (=> b!3367829 (= e!2090370 (= (rule!7886 separatorToken!241) lt!1142826))))

(declare-fun b!3367830 () Bool)

(declare-fun e!2090364 () Bool)

(declare-fun e!2090373 () Bool)

(assert (=> b!3367830 (= e!2090364 e!2090373)))

(declare-fun res!1361993 () Bool)

(assert (=> b!3367830 (=> res!1361993 e!2090373)))

(declare-datatypes ((List!36870 0))(
  ( (Nil!36746) (Cons!36746 (h!42166 Token!10062) (t!261651 List!36870)) )
))
(declare-fun tokens!494 () List!36870)

(assert (=> b!3367830 (= res!1361993 (isSeparator!5348 (rule!7886 (h!42166 tokens!494))))))

(declare-datatypes ((Unit!51842 0))(
  ( (Unit!51843) )
))
(declare-fun lt!1142818 () Unit!51842)

(declare-fun lambda!120205 () Int)

(declare-fun forallContained!1295 (List!36870 Int Token!10062) Unit!51842)

(assert (=> b!3367830 (= lt!1142818 (forallContained!1295 tokens!494 lambda!120205 (h!42166 tokens!494)))))

(declare-fun b!3367831 () Bool)

(declare-fun e!2090369 () Bool)

(declare-fun e!2090375 () Bool)

(assert (=> b!3367831 (= e!2090369 e!2090375)))

(declare-fun res!1361989 () Bool)

(assert (=> b!3367831 (=> (not res!1361989) (not e!2090375))))

(declare-fun lt!1142821 () Rule!10496)

(declare-fun lt!1142829 () List!36869)

(declare-fun matchR!4699 (Regex!10107 List!36869) Bool)

(assert (=> b!3367831 (= res!1361989 (matchR!4699 (regex!5348 lt!1142821) lt!1142829))))

(declare-datatypes ((Option!7342 0))(
  ( (None!7341) (Some!7341 (v!36343 Rule!10496)) )
))
(declare-fun lt!1142820 () Option!7342)

(declare-fun get!11713 (Option!7342) Rule!10496)

(assert (=> b!3367831 (= lt!1142821 (get!11713 lt!1142820))))

(declare-fun b!3367832 () Bool)

(declare-fun res!1361983 () Bool)

(declare-fun e!2090377 () Bool)

(assert (=> b!3367832 (=> (not res!1361983) (not e!2090377))))

(declare-datatypes ((LexerInterface!4937 0))(
  ( (LexerInterfaceExt!4934 (__x!23374 Int)) (Lexer!4935) )
))
(declare-fun thiss!18206 () LexerInterface!4937)

(declare-datatypes ((List!36871 0))(
  ( (Nil!36747) (Cons!36747 (h!42167 Rule!10496) (t!261652 List!36871)) )
))
(declare-fun rules!2135 () List!36871)

(declare-fun rulesInvariant!4334 (LexerInterface!4937 List!36871) Bool)

(assert (=> b!3367832 (= res!1361983 (rulesInvariant!4334 thiss!18206 rules!2135))))

(declare-fun b!3367833 () Bool)

(declare-fun res!1361987 () Bool)

(assert (=> b!3367833 (=> (not res!1361987) (not e!2090367))))

(declare-fun sepAndNonSepRulesDisjointChars!1542 (List!36871 List!36871) Bool)

(assert (=> b!3367833 (= res!1361987 (sepAndNonSepRulesDisjointChars!1542 rules!2135 rules!2135))))

(declare-fun b!3367834 () Bool)

(declare-fun res!1361992 () Bool)

(assert (=> b!3367834 (=> (not res!1361992) (not e!2090367))))

(declare-fun forall!7707 (List!36870 Int) Bool)

(assert (=> b!3367834 (= res!1361992 (forall!7707 tokens!494 lambda!120205))))

(declare-fun b!3367835 () Bool)

(declare-fun e!2090365 () Bool)

(declare-fun e!2090366 () Bool)

(declare-fun tp!1053892 () Bool)

(assert (=> b!3367835 (= e!2090365 (and e!2090366 tp!1053892))))

(declare-fun tp!1053894 () Bool)

(declare-fun e!2090368 () Bool)

(declare-fun e!2090384 () Bool)

(declare-fun b!3367836 () Bool)

(declare-fun inv!49799 (String!41224) Bool)

(declare-fun inv!49802 (TokenValueInjection!10584) Bool)

(assert (=> b!3367836 (= e!2090384 (and tp!1053894 (inv!49799 (tag!5908 (rule!7886 (h!42166 tokens!494)))) (inv!49802 (transformation!5348 (rule!7886 (h!42166 tokens!494)))) e!2090368))))

(declare-fun b!3367837 () Bool)

(assert (=> b!3367837 (= e!2090375 (= (rule!7886 (h!42166 tokens!494)) lt!1142821))))

(assert (=> b!3367838 (= e!2090368 (and tp!1053902 tp!1053895))))

(declare-fun b!3367839 () Bool)

(declare-fun e!2090383 () Bool)

(declare-fun tp!1053896 () Bool)

(declare-fun inv!21 (TokenValue!5578) Bool)

(assert (=> b!3367839 (= e!2090383 (and (inv!21 (value!172878 (h!42166 tokens!494))) e!2090384 tp!1053896))))

(declare-fun b!3367840 () Bool)

(declare-fun res!1361985 () Bool)

(assert (=> b!3367840 (=> res!1361985 e!2090364)))

(declare-datatypes ((IArray!22149 0))(
  ( (IArray!22150 (innerList!11132 List!36870)) )
))
(declare-datatypes ((Conc!11072 0))(
  ( (Node!11072 (left!28644 Conc!11072) (right!28974 Conc!11072) (csize!22374 Int) (cheight!11283 Int)) (Leaf!17357 (xs!14222 IArray!22149) (csize!22375 Int)) (Empty!11072) )
))
(declare-datatypes ((BalanceConc!21758 0))(
  ( (BalanceConc!21759 (c!573344 Conc!11072)) )
))
(declare-fun isEmpty!20945 (BalanceConc!21758) Bool)

(declare-datatypes ((tuple2!36286 0))(
  ( (tuple2!36287 (_1!21277 BalanceConc!21758) (_2!21277 BalanceConc!21756)) )
))
(declare-fun lex!2263 (LexerInterface!4937 List!36871 BalanceConc!21756) tuple2!36286)

(declare-fun seqFromList!3749 (List!36869) BalanceConc!21756)

(assert (=> b!3367840 (= res!1361985 (isEmpty!20945 (_1!21277 (lex!2263 thiss!18206 rules!2135 (seqFromList!3749 lt!1142829)))))))

(declare-fun b!3367841 () Bool)

(declare-fun tp!1053893 () Bool)

(declare-fun e!2090387 () Bool)

(declare-fun e!2090374 () Bool)

(assert (=> b!3367841 (= e!2090374 (and tp!1053893 (inv!49799 (tag!5908 (rule!7886 separatorToken!241))) (inv!49802 (transformation!5348 (rule!7886 separatorToken!241))) e!2090387))))

(declare-fun res!1361991 () Bool)

(assert (=> start!313322 (=> (not res!1361991) (not e!2090377))))

(get-info :version)

(assert (=> start!313322 (= res!1361991 ((_ is Lexer!4935) thiss!18206))))

(assert (=> start!313322 e!2090377))

(assert (=> start!313322 true))

(assert (=> start!313322 e!2090365))

(declare-fun e!2090372 () Bool)

(declare-fun inv!49803 (Token!10062) Bool)

(assert (=> start!313322 (and (inv!49803 separatorToken!241) e!2090372)))

(declare-fun e!2090363 () Bool)

(assert (=> start!313322 e!2090363))

(declare-fun tp!1053903 () Bool)

(declare-fun e!2090388 () Bool)

(declare-fun b!3367842 () Bool)

(assert (=> b!3367842 (= e!2090366 (and tp!1053903 (inv!49799 (tag!5908 (h!42167 rules!2135))) (inv!49802 (transformation!5348 (h!42167 rules!2135))) e!2090388))))

(declare-fun b!3367843 () Bool)

(declare-fun e!2090382 () Bool)

(declare-fun e!2090378 () Bool)

(assert (=> b!3367843 (= e!2090382 e!2090378)))

(declare-fun res!1361988 () Bool)

(assert (=> b!3367843 (=> res!1361988 e!2090378)))

(declare-fun contains!6683 (List!36871 Rule!10496) Bool)

(assert (=> b!3367843 (= res!1361988 (not (contains!6683 rules!2135 (rule!7886 (h!42166 tokens!494)))))))

(declare-fun e!2090381 () Bool)

(assert (=> b!3367843 e!2090381))

(declare-fun res!1361973 () Bool)

(assert (=> b!3367843 (=> (not res!1361973) (not e!2090381))))

(declare-fun lt!1142828 () Option!7342)

(declare-fun isDefined!5682 (Option!7342) Bool)

(assert (=> b!3367843 (= res!1361973 (isDefined!5682 lt!1142828))))

(declare-fun getRuleFromTag!1003 (LexerInterface!4937 List!36871 String!41224) Option!7342)

(assert (=> b!3367843 (= lt!1142828 (getRuleFromTag!1003 thiss!18206 rules!2135 (tag!5908 (rule!7886 separatorToken!241))))))

(declare-fun lt!1142819 () List!36869)

(declare-fun lt!1142823 () Unit!51842)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1003 (LexerInterface!4937 List!36871 List!36869 Token!10062) Unit!51842)

(assert (=> b!3367843 (= lt!1142823 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1003 thiss!18206 rules!2135 lt!1142819 separatorToken!241))))

(assert (=> b!3367843 e!2090369))

(declare-fun res!1361974 () Bool)

(assert (=> b!3367843 (=> (not res!1361974) (not e!2090369))))

(assert (=> b!3367843 (= res!1361974 (isDefined!5682 lt!1142820))))

(assert (=> b!3367843 (= lt!1142820 (getRuleFromTag!1003 thiss!18206 rules!2135 (tag!5908 (rule!7886 (h!42166 tokens!494)))))))

(declare-fun lt!1142822 () Unit!51842)

(assert (=> b!3367843 (= lt!1142822 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1003 thiss!18206 rules!2135 lt!1142829 (h!42166 tokens!494)))))

(declare-fun lt!1142816 () Unit!51842)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!932 (LexerInterface!4937 List!36871 List!36870 Token!10062) Unit!51842)

(assert (=> b!3367843 (= lt!1142816 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!932 thiss!18206 rules!2135 tokens!494 (h!42166 tokens!494)))))

(declare-fun isEmpty!20946 (List!36869) Bool)

(declare-fun getSuffix!1442 (List!36869 List!36869) List!36869)

(assert (=> b!3367843 (isEmpty!20946 (getSuffix!1442 lt!1142829 lt!1142829))))

(declare-fun lt!1142827 () Unit!51842)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!100 (List!36869) Unit!51842)

(assert (=> b!3367843 (= lt!1142827 (lemmaGetSuffixOnListWithItSelfIsEmpty!100 lt!1142829))))

(declare-fun b!3367844 () Bool)

(declare-fun e!2090380 () Bool)

(assert (=> b!3367844 (= e!2090380 e!2090364)))

(declare-fun res!1361978 () Bool)

(assert (=> b!3367844 (=> res!1361978 e!2090364)))

(declare-fun lt!1142825 () List!36869)

(declare-fun lt!1142817 () List!36869)

(assert (=> b!3367844 (= res!1361978 (or (not (= lt!1142825 lt!1142829)) (not (= lt!1142817 lt!1142829))))))

(declare-fun list!13267 (BalanceConc!21756) List!36869)

(declare-fun charsOf!3362 (Token!10062) BalanceConc!21756)

(assert (=> b!3367844 (= lt!1142829 (list!13267 (charsOf!3362 (h!42166 tokens!494))))))

(assert (=> b!3367845 (= e!2090388 (and tp!1053901 tp!1053898))))

(declare-fun b!3367846 () Bool)

(declare-fun res!1361981 () Bool)

(assert (=> b!3367846 (=> (not res!1361981) (not e!2090377))))

(declare-fun isEmpty!20947 (List!36871) Bool)

(assert (=> b!3367846 (= res!1361981 (not (isEmpty!20947 rules!2135)))))

(declare-fun b!3367847 () Bool)

(declare-fun res!1361984 () Bool)

(assert (=> b!3367847 (=> (not res!1361984) (not e!2090367))))

(assert (=> b!3367847 (= res!1361984 (and (not ((_ is Nil!36746) tokens!494)) ((_ is Nil!36746) (t!261651 tokens!494))))))

(declare-fun b!3367848 () Bool)

(declare-fun res!1361980 () Bool)

(assert (=> b!3367848 (=> (not res!1361980) (not e!2090367))))

(declare-fun rulesProduceIndividualToken!2429 (LexerInterface!4937 List!36871 Token!10062) Bool)

(assert (=> b!3367848 (= res!1361980 (rulesProduceIndividualToken!2429 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3367849 () Bool)

(assert (=> b!3367849 (= e!2090377 e!2090367)))

(declare-fun res!1361986 () Bool)

(assert (=> b!3367849 (=> (not res!1361986) (not e!2090367))))

(declare-fun lt!1142830 () BalanceConc!21758)

(declare-fun rulesProduceEachTokenIndividually!1388 (LexerInterface!4937 List!36871 BalanceConc!21758) Bool)

(assert (=> b!3367849 (= res!1361986 (rulesProduceEachTokenIndividually!1388 thiss!18206 rules!2135 lt!1142830))))

(declare-fun seqFromList!3750 (List!36870) BalanceConc!21758)

(assert (=> b!3367849 (= lt!1142830 (seqFromList!3750 tokens!494))))

(declare-fun b!3367850 () Bool)

(assert (=> b!3367850 (= e!2090378 (not (isEmpty!20946 lt!1142829)))))

(assert (=> b!3367851 (= e!2090387 (and tp!1053899 tp!1053900))))

(declare-fun b!3367852 () Bool)

(assert (=> b!3367852 (= e!2090373 e!2090382)))

(declare-fun res!1361976 () Bool)

(assert (=> b!3367852 (=> res!1361976 e!2090382)))

(declare-fun lt!1142824 () BalanceConc!21756)

(declare-fun ++!8963 (List!36869 List!36869) List!36869)

(assert (=> b!3367852 (= res!1361976 (not (= (list!13267 lt!1142824) (++!8963 lt!1142829 lt!1142819))))))

(assert (=> b!3367852 (= lt!1142819 (list!13267 (charsOf!3362 separatorToken!241)))))

(declare-fun printWithSeparatorToken!128 (LexerInterface!4937 BalanceConc!21758 Token!10062) BalanceConc!21756)

(assert (=> b!3367852 (= lt!1142824 (printWithSeparatorToken!128 thiss!18206 lt!1142830 separatorToken!241))))

(declare-fun b!3367853 () Bool)

(declare-fun res!1361977 () Bool)

(assert (=> b!3367853 (=> res!1361977 e!2090378)))

(assert (=> b!3367853 (= res!1361977 (not (= lt!1142829 (++!8963 lt!1142829 Nil!36745))))))

(declare-fun b!3367854 () Bool)

(declare-fun tp!1053897 () Bool)

(assert (=> b!3367854 (= e!2090372 (and (inv!21 (value!172878 separatorToken!241)) e!2090374 tp!1053897))))

(declare-fun b!3367855 () Bool)

(assert (=> b!3367855 (= e!2090381 e!2090370)))

(declare-fun res!1361990 () Bool)

(assert (=> b!3367855 (=> (not res!1361990) (not e!2090370))))

(assert (=> b!3367855 (= res!1361990 (matchR!4699 (regex!5348 lt!1142826) lt!1142819))))

(assert (=> b!3367855 (= lt!1142826 (get!11713 lt!1142828))))

(declare-fun b!3367856 () Bool)

(declare-fun res!1361975 () Bool)

(assert (=> b!3367856 (=> res!1361975 e!2090364)))

(assert (=> b!3367856 (= res!1361975 (not (rulesProduceIndividualToken!2429 thiss!18206 rules!2135 (h!42166 tokens!494))))))

(declare-fun b!3367857 () Bool)

(assert (=> b!3367857 (= e!2090367 (not e!2090380))))

(declare-fun res!1361979 () Bool)

(assert (=> b!3367857 (=> res!1361979 e!2090380)))

(assert (=> b!3367857 (= res!1361979 (not (= lt!1142817 lt!1142825)))))

(declare-fun printList!1485 (LexerInterface!4937 List!36870) List!36869)

(assert (=> b!3367857 (= lt!1142825 (printList!1485 thiss!18206 (Cons!36746 (h!42166 tokens!494) Nil!36746)))))

(declare-fun lt!1142814 () BalanceConc!21756)

(assert (=> b!3367857 (= lt!1142817 (list!13267 lt!1142814))))

(declare-fun lt!1142815 () BalanceConc!21758)

(declare-fun printTailRec!1432 (LexerInterface!4937 BalanceConc!21758 Int BalanceConc!21756) BalanceConc!21756)

(assert (=> b!3367857 (= lt!1142814 (printTailRec!1432 thiss!18206 lt!1142815 0 (BalanceConc!21757 Empty!11071)))))

(declare-fun print!2002 (LexerInterface!4937 BalanceConc!21758) BalanceConc!21756)

(assert (=> b!3367857 (= lt!1142814 (print!2002 thiss!18206 lt!1142815))))

(declare-fun singletonSeq!2444 (Token!10062) BalanceConc!21758)

(assert (=> b!3367857 (= lt!1142815 (singletonSeq!2444 (h!42166 tokens!494)))))

(declare-fun tp!1053904 () Bool)

(declare-fun b!3367858 () Bool)

(assert (=> b!3367858 (= e!2090363 (and (inv!49803 (h!42166 tokens!494)) e!2090383 tp!1053904))))

(assert (= (and start!313322 res!1361991) b!3367846))

(assert (= (and b!3367846 res!1361981) b!3367832))

(assert (= (and b!3367832 res!1361983) b!3367849))

(assert (= (and b!3367849 res!1361986) b!3367848))

(assert (= (and b!3367848 res!1361980) b!3367828))

(assert (= (and b!3367828 res!1361982) b!3367834))

(assert (= (and b!3367834 res!1361992) b!3367833))

(assert (= (and b!3367833 res!1361987) b!3367847))

(assert (= (and b!3367847 res!1361984) b!3367857))

(assert (= (and b!3367857 (not res!1361979)) b!3367844))

(assert (= (and b!3367844 (not res!1361978)) b!3367856))

(assert (= (and b!3367856 (not res!1361975)) b!3367840))

(assert (= (and b!3367840 (not res!1361985)) b!3367830))

(assert (= (and b!3367830 (not res!1361993)) b!3367852))

(assert (= (and b!3367852 (not res!1361976)) b!3367843))

(assert (= (and b!3367843 res!1361974) b!3367831))

(assert (= (and b!3367831 res!1361989) b!3367837))

(assert (= (and b!3367843 res!1361973) b!3367855))

(assert (= (and b!3367855 res!1361990) b!3367829))

(assert (= (and b!3367843 (not res!1361988)) b!3367853))

(assert (= (and b!3367853 (not res!1361977)) b!3367850))

(assert (= b!3367842 b!3367845))

(assert (= b!3367835 b!3367842))

(assert (= (and start!313322 ((_ is Cons!36747) rules!2135)) b!3367835))

(assert (= b!3367841 b!3367851))

(assert (= b!3367854 b!3367841))

(assert (= start!313322 b!3367854))

(assert (= b!3367836 b!3367838))

(assert (= b!3367839 b!3367836))

(assert (= b!3367858 b!3367839))

(assert (= (and start!313322 ((_ is Cons!36746) tokens!494)) b!3367858))

(declare-fun m!3727931 () Bool)

(assert (=> b!3367849 m!3727931))

(declare-fun m!3727933 () Bool)

(assert (=> b!3367849 m!3727933))

(declare-fun m!3727935 () Bool)

(assert (=> b!3367853 m!3727935))

(declare-fun m!3727937 () Bool)

(assert (=> b!3367832 m!3727937))

(declare-fun m!3727939 () Bool)

(assert (=> b!3367842 m!3727939))

(declare-fun m!3727941 () Bool)

(assert (=> b!3367842 m!3727941))

(declare-fun m!3727943 () Bool)

(assert (=> b!3367857 m!3727943))

(declare-fun m!3727945 () Bool)

(assert (=> b!3367857 m!3727945))

(declare-fun m!3727947 () Bool)

(assert (=> b!3367857 m!3727947))

(declare-fun m!3727949 () Bool)

(assert (=> b!3367857 m!3727949))

(declare-fun m!3727951 () Bool)

(assert (=> b!3367857 m!3727951))

(declare-fun m!3727953 () Bool)

(assert (=> b!3367841 m!3727953))

(declare-fun m!3727955 () Bool)

(assert (=> b!3367841 m!3727955))

(declare-fun m!3727957 () Bool)

(assert (=> b!3367858 m!3727957))

(declare-fun m!3727959 () Bool)

(assert (=> b!3367840 m!3727959))

(assert (=> b!3367840 m!3727959))

(declare-fun m!3727961 () Bool)

(assert (=> b!3367840 m!3727961))

(declare-fun m!3727963 () Bool)

(assert (=> b!3367840 m!3727963))

(declare-fun m!3727965 () Bool)

(assert (=> start!313322 m!3727965))

(declare-fun m!3727967 () Bool)

(assert (=> b!3367850 m!3727967))

(declare-fun m!3727969 () Bool)

(assert (=> b!3367843 m!3727969))

(declare-fun m!3727971 () Bool)

(assert (=> b!3367843 m!3727971))

(declare-fun m!3727973 () Bool)

(assert (=> b!3367843 m!3727973))

(declare-fun m!3727975 () Bool)

(assert (=> b!3367843 m!3727975))

(declare-fun m!3727977 () Bool)

(assert (=> b!3367843 m!3727977))

(declare-fun m!3727979 () Bool)

(assert (=> b!3367843 m!3727979))

(declare-fun m!3727981 () Bool)

(assert (=> b!3367843 m!3727981))

(declare-fun m!3727983 () Bool)

(assert (=> b!3367843 m!3727983))

(declare-fun m!3727985 () Bool)

(assert (=> b!3367843 m!3727985))

(assert (=> b!3367843 m!3727973))

(declare-fun m!3727987 () Bool)

(assert (=> b!3367843 m!3727987))

(declare-fun m!3727989 () Bool)

(assert (=> b!3367843 m!3727989))

(declare-fun m!3727991 () Bool)

(assert (=> b!3367833 m!3727991))

(declare-fun m!3727993 () Bool)

(assert (=> b!3367830 m!3727993))

(declare-fun m!3727995 () Bool)

(assert (=> b!3367831 m!3727995))

(declare-fun m!3727997 () Bool)

(assert (=> b!3367831 m!3727997))

(declare-fun m!3727999 () Bool)

(assert (=> b!3367839 m!3727999))

(declare-fun m!3728001 () Bool)

(assert (=> b!3367844 m!3728001))

(assert (=> b!3367844 m!3728001))

(declare-fun m!3728003 () Bool)

(assert (=> b!3367844 m!3728003))

(declare-fun m!3728005 () Bool)

(assert (=> b!3367848 m!3728005))

(declare-fun m!3728007 () Bool)

(assert (=> b!3367836 m!3728007))

(declare-fun m!3728009 () Bool)

(assert (=> b!3367836 m!3728009))

(declare-fun m!3728011 () Bool)

(assert (=> b!3367854 m!3728011))

(declare-fun m!3728013 () Bool)

(assert (=> b!3367846 m!3728013))

(declare-fun m!3728015 () Bool)

(assert (=> b!3367856 m!3728015))

(declare-fun m!3728017 () Bool)

(assert (=> b!3367855 m!3728017))

(declare-fun m!3728019 () Bool)

(assert (=> b!3367855 m!3728019))

(declare-fun m!3728021 () Bool)

(assert (=> b!3367852 m!3728021))

(declare-fun m!3728023 () Bool)

(assert (=> b!3367852 m!3728023))

(declare-fun m!3728025 () Bool)

(assert (=> b!3367852 m!3728025))

(assert (=> b!3367852 m!3728021))

(declare-fun m!3728027 () Bool)

(assert (=> b!3367852 m!3728027))

(declare-fun m!3728029 () Bool)

(assert (=> b!3367852 m!3728029))

(declare-fun m!3728031 () Bool)

(assert (=> b!3367834 m!3728031))

(check-sat (not b!3367834) (not b!3367830) (not b!3367841) (not b!3367849) (not b!3367850) (not b!3367843) (not b_next!88745) (not b_next!88751) (not b!3367844) (not b_next!88753) (not b!3367832) b_and!233391 (not b!3367831) (not b!3367848) b_and!233389 (not start!313322) (not b!3367856) (not b!3367855) (not b!3367833) b_and!233397 (not b!3367853) (not b!3367840) (not b!3367852) (not b!3367839) b_and!233393 b_and!233387 (not b!3367836) (not b_next!88755) (not b_next!88747) (not b!3367857) (not b!3367842) (not b_next!88749) (not b!3367858) (not b!3367835) b_and!233395 (not b!3367846) (not b!3367854))
(check-sat b_and!233389 b_and!233397 (not b_next!88755) (not b_next!88747) (not b_next!88745) (not b_next!88749) b_and!233395 (not b_next!88751) (not b_next!88753) b_and!233391 b_and!233393 b_and!233387)
(get-model)

(declare-fun d!954571 () Bool)

(assert (=> d!954571 (= (isEmpty!20947 rules!2135) ((_ is Nil!36747) rules!2135))))

(assert (=> b!3367846 d!954571))

(declare-fun d!954573 () Bool)

(declare-fun lt!1142842 () Bool)

(declare-fun e!2090430 () Bool)

(assert (=> d!954573 (= lt!1142842 e!2090430)))

(declare-fun res!1362044 () Bool)

(assert (=> d!954573 (=> (not res!1362044) (not e!2090430))))

(declare-fun list!13268 (BalanceConc!21758) List!36870)

(assert (=> d!954573 (= res!1362044 (= (list!13268 (_1!21277 (lex!2263 thiss!18206 rules!2135 (print!2002 thiss!18206 (singletonSeq!2444 separatorToken!241))))) (list!13268 (singletonSeq!2444 separatorToken!241))))))

(declare-fun e!2090429 () Bool)

(assert (=> d!954573 (= lt!1142842 e!2090429)))

(declare-fun res!1362043 () Bool)

(assert (=> d!954573 (=> (not res!1362043) (not e!2090429))))

(declare-fun lt!1142841 () tuple2!36286)

(declare-fun size!27804 (BalanceConc!21758) Int)

(assert (=> d!954573 (= res!1362043 (= (size!27804 (_1!21277 lt!1142841)) 1))))

(assert (=> d!954573 (= lt!1142841 (lex!2263 thiss!18206 rules!2135 (print!2002 thiss!18206 (singletonSeq!2444 separatorToken!241))))))

(assert (=> d!954573 (not (isEmpty!20947 rules!2135))))

(assert (=> d!954573 (= (rulesProduceIndividualToken!2429 thiss!18206 rules!2135 separatorToken!241) lt!1142842)))

(declare-fun b!3367928 () Bool)

(declare-fun res!1362045 () Bool)

(assert (=> b!3367928 (=> (not res!1362045) (not e!2090429))))

(declare-fun apply!8512 (BalanceConc!21758 Int) Token!10062)

(assert (=> b!3367928 (= res!1362045 (= (apply!8512 (_1!21277 lt!1142841) 0) separatorToken!241))))

(declare-fun b!3367929 () Bool)

(declare-fun isEmpty!20948 (BalanceConc!21756) Bool)

(assert (=> b!3367929 (= e!2090429 (isEmpty!20948 (_2!21277 lt!1142841)))))

(declare-fun b!3367930 () Bool)

(assert (=> b!3367930 (= e!2090430 (isEmpty!20948 (_2!21277 (lex!2263 thiss!18206 rules!2135 (print!2002 thiss!18206 (singletonSeq!2444 separatorToken!241))))))))

(assert (= (and d!954573 res!1362043) b!3367928))

(assert (= (and b!3367928 res!1362045) b!3367929))

(assert (= (and d!954573 res!1362044) b!3367930))

(declare-fun m!3728063 () Bool)

(assert (=> d!954573 m!3728063))

(declare-fun m!3728065 () Bool)

(assert (=> d!954573 m!3728065))

(assert (=> d!954573 m!3728065))

(declare-fun m!3728067 () Bool)

(assert (=> d!954573 m!3728067))

(declare-fun m!3728069 () Bool)

(assert (=> d!954573 m!3728069))

(assert (=> d!954573 m!3728067))

(declare-fun m!3728071 () Bool)

(assert (=> d!954573 m!3728071))

(assert (=> d!954573 m!3728013))

(assert (=> d!954573 m!3728065))

(declare-fun m!3728073 () Bool)

(assert (=> d!954573 m!3728073))

(declare-fun m!3728075 () Bool)

(assert (=> b!3367928 m!3728075))

(declare-fun m!3728077 () Bool)

(assert (=> b!3367929 m!3728077))

(assert (=> b!3367930 m!3728065))

(assert (=> b!3367930 m!3728065))

(assert (=> b!3367930 m!3728067))

(assert (=> b!3367930 m!3728067))

(assert (=> b!3367930 m!3728071))

(declare-fun m!3728079 () Bool)

(assert (=> b!3367930 m!3728079))

(assert (=> b!3367848 d!954573))

(declare-fun d!954591 () Bool)

(assert (=> d!954591 (= (isEmpty!20946 lt!1142829) ((_ is Nil!36745) lt!1142829))))

(assert (=> b!3367850 d!954591))

(declare-fun bs!553994 () Bool)

(declare-fun d!954593 () Bool)

(assert (= bs!553994 (and d!954593 b!3367834)))

(declare-fun lambda!120215 () Int)

(assert (=> bs!553994 (not (= lambda!120215 lambda!120205))))

(declare-fun b!3367974 () Bool)

(declare-fun e!2090462 () Bool)

(assert (=> b!3367974 (= e!2090462 true)))

(declare-fun b!3367973 () Bool)

(declare-fun e!2090461 () Bool)

(assert (=> b!3367973 (= e!2090461 e!2090462)))

(declare-fun b!3367972 () Bool)

(declare-fun e!2090460 () Bool)

(assert (=> b!3367972 (= e!2090460 e!2090461)))

(assert (=> d!954593 e!2090460))

(assert (= b!3367973 b!3367974))

(assert (= b!3367972 b!3367973))

(assert (= (and d!954593 ((_ is Cons!36747) rules!2135)) b!3367972))

(declare-fun order!19305 () Int)

(declare-fun order!19307 () Int)

(declare-fun dynLambda!15225 (Int Int) Int)

(declare-fun dynLambda!15226 (Int Int) Int)

(assert (=> b!3367974 (< (dynLambda!15225 order!19305 (toValue!7528 (transformation!5348 (h!42167 rules!2135)))) (dynLambda!15226 order!19307 lambda!120215))))

(declare-fun order!19309 () Int)

(declare-fun dynLambda!15227 (Int Int) Int)

(assert (=> b!3367974 (< (dynLambda!15227 order!19309 (toChars!7387 (transformation!5348 (h!42167 rules!2135)))) (dynLambda!15226 order!19307 lambda!120215))))

(assert (=> d!954593 true))

(declare-fun e!2090453 () Bool)

(assert (=> d!954593 e!2090453))

(declare-fun res!1362059 () Bool)

(assert (=> d!954593 (=> (not res!1362059) (not e!2090453))))

(declare-fun lt!1142848 () Bool)

(assert (=> d!954593 (= res!1362059 (= lt!1142848 (forall!7707 (list!13268 lt!1142830) lambda!120215)))))

(declare-fun forall!7708 (BalanceConc!21758 Int) Bool)

(assert (=> d!954593 (= lt!1142848 (forall!7708 lt!1142830 lambda!120215))))

(assert (=> d!954593 (not (isEmpty!20947 rules!2135))))

(assert (=> d!954593 (= (rulesProduceEachTokenIndividually!1388 thiss!18206 rules!2135 lt!1142830) lt!1142848)))

(declare-fun b!3367963 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1798 (LexerInterface!4937 List!36871 List!36870) Bool)

(assert (=> b!3367963 (= e!2090453 (= lt!1142848 (rulesProduceEachTokenIndividuallyList!1798 thiss!18206 rules!2135 (list!13268 lt!1142830))))))

(assert (= (and d!954593 res!1362059) b!3367963))

(declare-fun m!3728115 () Bool)

(assert (=> d!954593 m!3728115))

(assert (=> d!954593 m!3728115))

(declare-fun m!3728117 () Bool)

(assert (=> d!954593 m!3728117))

(declare-fun m!3728119 () Bool)

(assert (=> d!954593 m!3728119))

(assert (=> d!954593 m!3728013))

(assert (=> b!3367963 m!3728115))

(assert (=> b!3367963 m!3728115))

(declare-fun m!3728121 () Bool)

(assert (=> b!3367963 m!3728121))

(assert (=> b!3367849 d!954593))

(declare-fun d!954603 () Bool)

(declare-fun fromListB!1668 (List!36870) BalanceConc!21758)

(assert (=> d!954603 (= (seqFromList!3750 tokens!494) (fromListB!1668 tokens!494))))

(declare-fun bs!553995 () Bool)

(assert (= bs!553995 d!954603))

(declare-fun m!3728123 () Bool)

(assert (=> bs!553995 m!3728123))

(assert (=> b!3367849 d!954603))

(declare-fun lt!1142851 () Bool)

(declare-fun d!954605 () Bool)

(declare-fun isEmpty!20949 (List!36870) Bool)

(assert (=> d!954605 (= lt!1142851 (isEmpty!20949 (list!13268 (_1!21277 (lex!2263 thiss!18206 rules!2135 (seqFromList!3749 lt!1142829))))))))

(declare-fun isEmpty!20950 (Conc!11072) Bool)

(assert (=> d!954605 (= lt!1142851 (isEmpty!20950 (c!573344 (_1!21277 (lex!2263 thiss!18206 rules!2135 (seqFromList!3749 lt!1142829))))))))

(assert (=> d!954605 (= (isEmpty!20945 (_1!21277 (lex!2263 thiss!18206 rules!2135 (seqFromList!3749 lt!1142829)))) lt!1142851)))

(declare-fun bs!553996 () Bool)

(assert (= bs!553996 d!954605))

(declare-fun m!3728125 () Bool)

(assert (=> bs!553996 m!3728125))

(assert (=> bs!553996 m!3728125))

(declare-fun m!3728127 () Bool)

(assert (=> bs!553996 m!3728127))

(declare-fun m!3728129 () Bool)

(assert (=> bs!553996 m!3728129))

(assert (=> b!3367840 d!954605))

(declare-fun b!3368031 () Bool)

(declare-fun e!2090498 () Bool)

(declare-fun lt!1142882 () tuple2!36286)

(assert (=> b!3368031 (= e!2090498 (= (_2!21277 lt!1142882) (seqFromList!3749 lt!1142829)))))

(declare-fun b!3368032 () Bool)

(declare-fun e!2090499 () Bool)

(assert (=> b!3368032 (= e!2090498 e!2090499)))

(declare-fun res!1362089 () Bool)

(declare-fun size!27805 (BalanceConc!21756) Int)

(assert (=> b!3368032 (= res!1362089 (< (size!27805 (_2!21277 lt!1142882)) (size!27805 (seqFromList!3749 lt!1142829))))))

(assert (=> b!3368032 (=> (not res!1362089) (not e!2090499))))

(declare-fun d!954607 () Bool)

(declare-fun e!2090500 () Bool)

(assert (=> d!954607 e!2090500))

(declare-fun res!1362090 () Bool)

(assert (=> d!954607 (=> (not res!1362090) (not e!2090500))))

(assert (=> d!954607 (= res!1362090 e!2090498)))

(declare-fun c!573373 () Bool)

(assert (=> d!954607 (= c!573373 (> (size!27804 (_1!21277 lt!1142882)) 0))))

(declare-fun lexTailRecV2!999 (LexerInterface!4937 List!36871 BalanceConc!21756 BalanceConc!21756 BalanceConc!21756 BalanceConc!21758) tuple2!36286)

(assert (=> d!954607 (= lt!1142882 (lexTailRecV2!999 thiss!18206 rules!2135 (seqFromList!3749 lt!1142829) (BalanceConc!21757 Empty!11071) (seqFromList!3749 lt!1142829) (BalanceConc!21759 Empty!11072)))))

(assert (=> d!954607 (= (lex!2263 thiss!18206 rules!2135 (seqFromList!3749 lt!1142829)) lt!1142882)))

(declare-fun b!3368033 () Bool)

(assert (=> b!3368033 (= e!2090499 (not (isEmpty!20945 (_1!21277 lt!1142882))))))

(declare-fun b!3368034 () Bool)

(declare-fun res!1362088 () Bool)

(assert (=> b!3368034 (=> (not res!1362088) (not e!2090500))))

(declare-datatypes ((tuple2!36288 0))(
  ( (tuple2!36289 (_1!21278 List!36870) (_2!21278 List!36869)) )
))
(declare-fun lexList!1389 (LexerInterface!4937 List!36871 List!36869) tuple2!36288)

(assert (=> b!3368034 (= res!1362088 (= (list!13268 (_1!21277 lt!1142882)) (_1!21278 (lexList!1389 thiss!18206 rules!2135 (list!13267 (seqFromList!3749 lt!1142829))))))))

(declare-fun b!3368035 () Bool)

(assert (=> b!3368035 (= e!2090500 (= (list!13267 (_2!21277 lt!1142882)) (_2!21278 (lexList!1389 thiss!18206 rules!2135 (list!13267 (seqFromList!3749 lt!1142829))))))))

(assert (= (and d!954607 c!573373) b!3368032))

(assert (= (and d!954607 (not c!573373)) b!3368031))

(assert (= (and b!3368032 res!1362089) b!3368033))

(assert (= (and d!954607 res!1362090) b!3368034))

(assert (= (and b!3368034 res!1362088) b!3368035))

(declare-fun m!3728187 () Bool)

(assert (=> b!3368032 m!3728187))

(assert (=> b!3368032 m!3727959))

(declare-fun m!3728189 () Bool)

(assert (=> b!3368032 m!3728189))

(declare-fun m!3728191 () Bool)

(assert (=> b!3368033 m!3728191))

(declare-fun m!3728193 () Bool)

(assert (=> b!3368035 m!3728193))

(assert (=> b!3368035 m!3727959))

(declare-fun m!3728195 () Bool)

(assert (=> b!3368035 m!3728195))

(assert (=> b!3368035 m!3728195))

(declare-fun m!3728197 () Bool)

(assert (=> b!3368035 m!3728197))

(declare-fun m!3728199 () Bool)

(assert (=> b!3368034 m!3728199))

(assert (=> b!3368034 m!3727959))

(assert (=> b!3368034 m!3728195))

(assert (=> b!3368034 m!3728195))

(assert (=> b!3368034 m!3728197))

(declare-fun m!3728201 () Bool)

(assert (=> d!954607 m!3728201))

(assert (=> d!954607 m!3727959))

(assert (=> d!954607 m!3727959))

(declare-fun m!3728203 () Bool)

(assert (=> d!954607 m!3728203))

(assert (=> b!3367840 d!954607))

(declare-fun d!954631 () Bool)

(declare-fun fromListB!1669 (List!36869) BalanceConc!21756)

(assert (=> d!954631 (= (seqFromList!3749 lt!1142829) (fromListB!1669 lt!1142829))))

(declare-fun bs!554002 () Bool)

(assert (= bs!554002 d!954631))

(declare-fun m!3728211 () Bool)

(assert (=> bs!554002 m!3728211))

(assert (=> b!3367840 d!954631))

(declare-fun d!954635 () Bool)

(assert (=> d!954635 (= (inv!49799 (tag!5908 (h!42167 rules!2135))) (= (mod (str.len (value!172877 (tag!5908 (h!42167 rules!2135)))) 2) 0))))

(assert (=> b!3367842 d!954635))

(declare-fun d!954637 () Bool)

(declare-fun res!1362093 () Bool)

(declare-fun e!2090503 () Bool)

(assert (=> d!954637 (=> (not res!1362093) (not e!2090503))))

(declare-fun semiInverseModEq!2226 (Int Int) Bool)

(assert (=> d!954637 (= res!1362093 (semiInverseModEq!2226 (toChars!7387 (transformation!5348 (h!42167 rules!2135))) (toValue!7528 (transformation!5348 (h!42167 rules!2135)))))))

(assert (=> d!954637 (= (inv!49802 (transformation!5348 (h!42167 rules!2135))) e!2090503)))

(declare-fun b!3368038 () Bool)

(declare-fun equivClasses!2125 (Int Int) Bool)

(assert (=> b!3368038 (= e!2090503 (equivClasses!2125 (toChars!7387 (transformation!5348 (h!42167 rules!2135))) (toValue!7528 (transformation!5348 (h!42167 rules!2135)))))))

(assert (= (and d!954637 res!1362093) b!3368038))

(declare-fun m!3728213 () Bool)

(assert (=> d!954637 m!3728213))

(declare-fun m!3728215 () Bool)

(assert (=> b!3368038 m!3728215))

(assert (=> b!3367842 d!954637))

(declare-fun d!954639 () Bool)

(assert (=> d!954639 (= (inv!49799 (tag!5908 (rule!7886 separatorToken!241))) (= (mod (str.len (value!172877 (tag!5908 (rule!7886 separatorToken!241)))) 2) 0))))

(assert (=> b!3367841 d!954639))

(declare-fun d!954641 () Bool)

(declare-fun res!1362094 () Bool)

(declare-fun e!2090504 () Bool)

(assert (=> d!954641 (=> (not res!1362094) (not e!2090504))))

(assert (=> d!954641 (= res!1362094 (semiInverseModEq!2226 (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))) (toValue!7528 (transformation!5348 (rule!7886 separatorToken!241)))))))

(assert (=> d!954641 (= (inv!49802 (transformation!5348 (rule!7886 separatorToken!241))) e!2090504)))

(declare-fun b!3368039 () Bool)

(assert (=> b!3368039 (= e!2090504 (equivClasses!2125 (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))) (toValue!7528 (transformation!5348 (rule!7886 separatorToken!241)))))))

(assert (= (and d!954641 res!1362094) b!3368039))

(declare-fun m!3728217 () Bool)

(assert (=> d!954641 m!3728217))

(declare-fun m!3728219 () Bool)

(assert (=> b!3368039 m!3728219))

(assert (=> b!3367841 d!954641))

(declare-fun d!954643 () Bool)

(assert (=> d!954643 (= (isEmpty!20946 (getSuffix!1442 lt!1142829 lt!1142829)) ((_ is Nil!36745) (getSuffix!1442 lt!1142829 lt!1142829)))))

(assert (=> b!3367843 d!954643))

(declare-fun d!954645 () Bool)

(declare-fun e!2090507 () Bool)

(assert (=> d!954645 e!2090507))

(declare-fun res!1362099 () Bool)

(assert (=> d!954645 (=> (not res!1362099) (not e!2090507))))

(assert (=> d!954645 (= res!1362099 (isDefined!5682 (getRuleFromTag!1003 thiss!18206 rules!2135 (tag!5908 (rule!7886 separatorToken!241)))))))

(declare-fun lt!1142888 () Unit!51842)

(declare-fun choose!19445 (LexerInterface!4937 List!36871 List!36869 Token!10062) Unit!51842)

(assert (=> d!954645 (= lt!1142888 (choose!19445 thiss!18206 rules!2135 lt!1142819 separatorToken!241))))

(assert (=> d!954645 (rulesInvariant!4334 thiss!18206 rules!2135)))

(assert (=> d!954645 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1003 thiss!18206 rules!2135 lt!1142819 separatorToken!241) lt!1142888)))

(declare-fun b!3368044 () Bool)

(declare-fun res!1362100 () Bool)

(assert (=> b!3368044 (=> (not res!1362100) (not e!2090507))))

(assert (=> b!3368044 (= res!1362100 (matchR!4699 (regex!5348 (get!11713 (getRuleFromTag!1003 thiss!18206 rules!2135 (tag!5908 (rule!7886 separatorToken!241))))) (list!13267 (charsOf!3362 separatorToken!241))))))

(declare-fun b!3368045 () Bool)

(assert (=> b!3368045 (= e!2090507 (= (rule!7886 separatorToken!241) (get!11713 (getRuleFromTag!1003 thiss!18206 rules!2135 (tag!5908 (rule!7886 separatorToken!241))))))))

(assert (= (and d!954645 res!1362099) b!3368044))

(assert (= (and b!3368044 res!1362100) b!3368045))

(assert (=> d!954645 m!3727989))

(assert (=> d!954645 m!3727989))

(declare-fun m!3728221 () Bool)

(assert (=> d!954645 m!3728221))

(declare-fun m!3728223 () Bool)

(assert (=> d!954645 m!3728223))

(assert (=> d!954645 m!3727937))

(assert (=> b!3368044 m!3727989))

(assert (=> b!3368044 m!3728021))

(assert (=> b!3368044 m!3728027))

(assert (=> b!3368044 m!3727989))

(declare-fun m!3728225 () Bool)

(assert (=> b!3368044 m!3728225))

(assert (=> b!3368044 m!3728027))

(declare-fun m!3728227 () Bool)

(assert (=> b!3368044 m!3728227))

(assert (=> b!3368044 m!3728021))

(assert (=> b!3368045 m!3727989))

(assert (=> b!3368045 m!3727989))

(assert (=> b!3368045 m!3728225))

(assert (=> b!3367843 d!954645))

(declare-fun d!954647 () Bool)

(assert (=> d!954647 (rulesProduceIndividualToken!2429 thiss!18206 rules!2135 (h!42166 tokens!494))))

(declare-fun lt!1142897 () Unit!51842)

(declare-fun choose!19447 (LexerInterface!4937 List!36871 List!36870 Token!10062) Unit!51842)

(assert (=> d!954647 (= lt!1142897 (choose!19447 thiss!18206 rules!2135 tokens!494 (h!42166 tokens!494)))))

(assert (=> d!954647 (not (isEmpty!20947 rules!2135))))

(assert (=> d!954647 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!932 thiss!18206 rules!2135 tokens!494 (h!42166 tokens!494)) lt!1142897)))

(declare-fun bs!554005 () Bool)

(assert (= bs!554005 d!954647))

(assert (=> bs!554005 m!3728015))

(declare-fun m!3728257 () Bool)

(assert (=> bs!554005 m!3728257))

(assert (=> bs!554005 m!3728013))

(assert (=> b!3367843 d!954647))

(declare-fun b!3368091 () Bool)

(declare-fun e!2090538 () Option!7342)

(declare-fun e!2090539 () Option!7342)

(assert (=> b!3368091 (= e!2090538 e!2090539)))

(declare-fun c!573384 () Bool)

(assert (=> b!3368091 (= c!573384 (and ((_ is Cons!36747) rules!2135) (not (= (tag!5908 (h!42167 rules!2135)) (tag!5908 (rule!7886 (h!42166 tokens!494)))))))))

(declare-fun d!954659 () Bool)

(declare-fun e!2090537 () Bool)

(assert (=> d!954659 e!2090537))

(declare-fun res!1362126 () Bool)

(assert (=> d!954659 (=> res!1362126 e!2090537)))

(declare-fun lt!1142907 () Option!7342)

(declare-fun isEmpty!20951 (Option!7342) Bool)

(assert (=> d!954659 (= res!1362126 (isEmpty!20951 lt!1142907))))

(assert (=> d!954659 (= lt!1142907 e!2090538)))

(declare-fun c!573385 () Bool)

(assert (=> d!954659 (= c!573385 (and ((_ is Cons!36747) rules!2135) (= (tag!5908 (h!42167 rules!2135)) (tag!5908 (rule!7886 (h!42166 tokens!494))))))))

(assert (=> d!954659 (rulesInvariant!4334 thiss!18206 rules!2135)))

(assert (=> d!954659 (= (getRuleFromTag!1003 thiss!18206 rules!2135 (tag!5908 (rule!7886 (h!42166 tokens!494)))) lt!1142907)))

(declare-fun b!3368092 () Bool)

(declare-fun lt!1142909 () Unit!51842)

(declare-fun lt!1142908 () Unit!51842)

(assert (=> b!3368092 (= lt!1142909 lt!1142908)))

(assert (=> b!3368092 (rulesInvariant!4334 thiss!18206 (t!261652 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!383 (LexerInterface!4937 Rule!10496 List!36871) Unit!51842)

(assert (=> b!3368092 (= lt!1142908 (lemmaInvariantOnRulesThenOnTail!383 thiss!18206 (h!42167 rules!2135) (t!261652 rules!2135)))))

(assert (=> b!3368092 (= e!2090539 (getRuleFromTag!1003 thiss!18206 (t!261652 rules!2135) (tag!5908 (rule!7886 (h!42166 tokens!494)))))))

(declare-fun b!3368093 () Bool)

(assert (=> b!3368093 (= e!2090538 (Some!7341 (h!42167 rules!2135)))))

(declare-fun b!3368094 () Bool)

(declare-fun e!2090540 () Bool)

(assert (=> b!3368094 (= e!2090537 e!2090540)))

(declare-fun res!1362127 () Bool)

(assert (=> b!3368094 (=> (not res!1362127) (not e!2090540))))

(assert (=> b!3368094 (= res!1362127 (contains!6683 rules!2135 (get!11713 lt!1142907)))))

(declare-fun b!3368095 () Bool)

(assert (=> b!3368095 (= e!2090540 (= (tag!5908 (get!11713 lt!1142907)) (tag!5908 (rule!7886 (h!42166 tokens!494)))))))

(declare-fun b!3368096 () Bool)

(assert (=> b!3368096 (= e!2090539 None!7341)))

(assert (= (and d!954659 c!573385) b!3368093))

(assert (= (and d!954659 (not c!573385)) b!3368091))

(assert (= (and b!3368091 c!573384) b!3368092))

(assert (= (and b!3368091 (not c!573384)) b!3368096))

(assert (= (and d!954659 (not res!1362126)) b!3368094))

(assert (= (and b!3368094 res!1362127) b!3368095))

(declare-fun m!3728273 () Bool)

(assert (=> d!954659 m!3728273))

(assert (=> d!954659 m!3727937))

(declare-fun m!3728275 () Bool)

(assert (=> b!3368092 m!3728275))

(declare-fun m!3728277 () Bool)

(assert (=> b!3368092 m!3728277))

(declare-fun m!3728279 () Bool)

(assert (=> b!3368092 m!3728279))

(declare-fun m!3728281 () Bool)

(assert (=> b!3368094 m!3728281))

(assert (=> b!3368094 m!3728281))

(declare-fun m!3728283 () Bool)

(assert (=> b!3368094 m!3728283))

(assert (=> b!3368095 m!3728281))

(assert (=> b!3367843 d!954659))

(declare-fun d!954665 () Bool)

(declare-fun lt!1142915 () List!36869)

(assert (=> d!954665 (= (++!8963 lt!1142829 lt!1142915) lt!1142829)))

(declare-fun e!2090543 () List!36869)

(assert (=> d!954665 (= lt!1142915 e!2090543)))

(declare-fun c!573388 () Bool)

(assert (=> d!954665 (= c!573388 ((_ is Cons!36745) lt!1142829))))

(declare-fun size!27806 (List!36869) Int)

(assert (=> d!954665 (>= (size!27806 lt!1142829) (size!27806 lt!1142829))))

(assert (=> d!954665 (= (getSuffix!1442 lt!1142829 lt!1142829) lt!1142915)))

(declare-fun b!3368101 () Bool)

(declare-fun tail!5323 (List!36869) List!36869)

(assert (=> b!3368101 (= e!2090543 (getSuffix!1442 (tail!5323 lt!1142829) (t!261650 lt!1142829)))))

(declare-fun b!3368102 () Bool)

(assert (=> b!3368102 (= e!2090543 lt!1142829)))

(assert (= (and d!954665 c!573388) b!3368101))

(assert (= (and d!954665 (not c!573388)) b!3368102))

(declare-fun m!3728291 () Bool)

(assert (=> d!954665 m!3728291))

(declare-fun m!3728293 () Bool)

(assert (=> d!954665 m!3728293))

(assert (=> d!954665 m!3728293))

(declare-fun m!3728295 () Bool)

(assert (=> b!3368101 m!3728295))

(assert (=> b!3368101 m!3728295))

(declare-fun m!3728297 () Bool)

(assert (=> b!3368101 m!3728297))

(assert (=> b!3367843 d!954665))

(declare-fun d!954669 () Bool)

(declare-fun lt!1142919 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5046 (List!36871) (InoxSet Rule!10496))

(assert (=> d!954669 (= lt!1142919 (select (content!5046 rules!2135) (rule!7886 (h!42166 tokens!494))))))

(declare-fun e!2090549 () Bool)

(assert (=> d!954669 (= lt!1142919 e!2090549)))

(declare-fun res!1362132 () Bool)

(assert (=> d!954669 (=> (not res!1362132) (not e!2090549))))

(assert (=> d!954669 (= res!1362132 ((_ is Cons!36747) rules!2135))))

(assert (=> d!954669 (= (contains!6683 rules!2135 (rule!7886 (h!42166 tokens!494))) lt!1142919)))

(declare-fun b!3368107 () Bool)

(declare-fun e!2090548 () Bool)

(assert (=> b!3368107 (= e!2090549 e!2090548)))

(declare-fun res!1362133 () Bool)

(assert (=> b!3368107 (=> res!1362133 e!2090548)))

(assert (=> b!3368107 (= res!1362133 (= (h!42167 rules!2135) (rule!7886 (h!42166 tokens!494))))))

(declare-fun b!3368108 () Bool)

(assert (=> b!3368108 (= e!2090548 (contains!6683 (t!261652 rules!2135) (rule!7886 (h!42166 tokens!494))))))

(assert (= (and d!954669 res!1362132) b!3368107))

(assert (= (and b!3368107 (not res!1362133)) b!3368108))

(declare-fun m!3728303 () Bool)

(assert (=> d!954669 m!3728303))

(declare-fun m!3728305 () Bool)

(assert (=> d!954669 m!3728305))

(declare-fun m!3728307 () Bool)

(assert (=> b!3368108 m!3728307))

(assert (=> b!3367843 d!954669))

(declare-fun d!954675 () Bool)

(declare-fun e!2090550 () Bool)

(assert (=> d!954675 e!2090550))

(declare-fun res!1362134 () Bool)

(assert (=> d!954675 (=> (not res!1362134) (not e!2090550))))

(assert (=> d!954675 (= res!1362134 (isDefined!5682 (getRuleFromTag!1003 thiss!18206 rules!2135 (tag!5908 (rule!7886 (h!42166 tokens!494))))))))

(declare-fun lt!1142920 () Unit!51842)

(assert (=> d!954675 (= lt!1142920 (choose!19445 thiss!18206 rules!2135 lt!1142829 (h!42166 tokens!494)))))

(assert (=> d!954675 (rulesInvariant!4334 thiss!18206 rules!2135)))

(assert (=> d!954675 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1003 thiss!18206 rules!2135 lt!1142829 (h!42166 tokens!494)) lt!1142920)))

(declare-fun b!3368109 () Bool)

(declare-fun res!1362135 () Bool)

(assert (=> b!3368109 (=> (not res!1362135) (not e!2090550))))

(assert (=> b!3368109 (= res!1362135 (matchR!4699 (regex!5348 (get!11713 (getRuleFromTag!1003 thiss!18206 rules!2135 (tag!5908 (rule!7886 (h!42166 tokens!494)))))) (list!13267 (charsOf!3362 (h!42166 tokens!494)))))))

(declare-fun b!3368110 () Bool)

(assert (=> b!3368110 (= e!2090550 (= (rule!7886 (h!42166 tokens!494)) (get!11713 (getRuleFromTag!1003 thiss!18206 rules!2135 (tag!5908 (rule!7886 (h!42166 tokens!494)))))))))

(assert (= (and d!954675 res!1362134) b!3368109))

(assert (= (and b!3368109 res!1362135) b!3368110))

(assert (=> d!954675 m!3727971))

(assert (=> d!954675 m!3727971))

(declare-fun m!3728309 () Bool)

(assert (=> d!954675 m!3728309))

(declare-fun m!3728311 () Bool)

(assert (=> d!954675 m!3728311))

(assert (=> d!954675 m!3727937))

(assert (=> b!3368109 m!3727971))

(assert (=> b!3368109 m!3728001))

(assert (=> b!3368109 m!3728003))

(assert (=> b!3368109 m!3727971))

(declare-fun m!3728313 () Bool)

(assert (=> b!3368109 m!3728313))

(assert (=> b!3368109 m!3728003))

(declare-fun m!3728315 () Bool)

(assert (=> b!3368109 m!3728315))

(assert (=> b!3368109 m!3728001))

(assert (=> b!3368110 m!3727971))

(assert (=> b!3368110 m!3727971))

(assert (=> b!3368110 m!3728313))

(assert (=> b!3367843 d!954675))

(declare-fun d!954677 () Bool)

(assert (=> d!954677 (= (isDefined!5682 lt!1142828) (not (isEmpty!20951 lt!1142828)))))

(declare-fun bs!554009 () Bool)

(assert (= bs!554009 d!954677))

(declare-fun m!3728317 () Bool)

(assert (=> bs!554009 m!3728317))

(assert (=> b!3367843 d!954677))

(declare-fun b!3368111 () Bool)

(declare-fun e!2090552 () Option!7342)

(declare-fun e!2090553 () Option!7342)

(assert (=> b!3368111 (= e!2090552 e!2090553)))

(declare-fun c!573389 () Bool)

(assert (=> b!3368111 (= c!573389 (and ((_ is Cons!36747) rules!2135) (not (= (tag!5908 (h!42167 rules!2135)) (tag!5908 (rule!7886 separatorToken!241))))))))

(declare-fun d!954679 () Bool)

(declare-fun e!2090551 () Bool)

(assert (=> d!954679 e!2090551))

(declare-fun res!1362136 () Bool)

(assert (=> d!954679 (=> res!1362136 e!2090551)))

(declare-fun lt!1142921 () Option!7342)

(assert (=> d!954679 (= res!1362136 (isEmpty!20951 lt!1142921))))

(assert (=> d!954679 (= lt!1142921 e!2090552)))

(declare-fun c!573390 () Bool)

(assert (=> d!954679 (= c!573390 (and ((_ is Cons!36747) rules!2135) (= (tag!5908 (h!42167 rules!2135)) (tag!5908 (rule!7886 separatorToken!241)))))))

(assert (=> d!954679 (rulesInvariant!4334 thiss!18206 rules!2135)))

(assert (=> d!954679 (= (getRuleFromTag!1003 thiss!18206 rules!2135 (tag!5908 (rule!7886 separatorToken!241))) lt!1142921)))

(declare-fun b!3368112 () Bool)

(declare-fun lt!1142923 () Unit!51842)

(declare-fun lt!1142922 () Unit!51842)

(assert (=> b!3368112 (= lt!1142923 lt!1142922)))

(assert (=> b!3368112 (rulesInvariant!4334 thiss!18206 (t!261652 rules!2135))))

(assert (=> b!3368112 (= lt!1142922 (lemmaInvariantOnRulesThenOnTail!383 thiss!18206 (h!42167 rules!2135) (t!261652 rules!2135)))))

(assert (=> b!3368112 (= e!2090553 (getRuleFromTag!1003 thiss!18206 (t!261652 rules!2135) (tag!5908 (rule!7886 separatorToken!241))))))

(declare-fun b!3368113 () Bool)

(assert (=> b!3368113 (= e!2090552 (Some!7341 (h!42167 rules!2135)))))

(declare-fun b!3368114 () Bool)

(declare-fun e!2090554 () Bool)

(assert (=> b!3368114 (= e!2090551 e!2090554)))

(declare-fun res!1362137 () Bool)

(assert (=> b!3368114 (=> (not res!1362137) (not e!2090554))))

(assert (=> b!3368114 (= res!1362137 (contains!6683 rules!2135 (get!11713 lt!1142921)))))

(declare-fun b!3368115 () Bool)

(assert (=> b!3368115 (= e!2090554 (= (tag!5908 (get!11713 lt!1142921)) (tag!5908 (rule!7886 separatorToken!241))))))

(declare-fun b!3368116 () Bool)

(assert (=> b!3368116 (= e!2090553 None!7341)))

(assert (= (and d!954679 c!573390) b!3368113))

(assert (= (and d!954679 (not c!573390)) b!3368111))

(assert (= (and b!3368111 c!573389) b!3368112))

(assert (= (and b!3368111 (not c!573389)) b!3368116))

(assert (= (and d!954679 (not res!1362136)) b!3368114))

(assert (= (and b!3368114 res!1362137) b!3368115))

(declare-fun m!3728319 () Bool)

(assert (=> d!954679 m!3728319))

(assert (=> d!954679 m!3727937))

(assert (=> b!3368112 m!3728275))

(assert (=> b!3368112 m!3728277))

(declare-fun m!3728321 () Bool)

(assert (=> b!3368112 m!3728321))

(declare-fun m!3728323 () Bool)

(assert (=> b!3368114 m!3728323))

(assert (=> b!3368114 m!3728323))

(declare-fun m!3728325 () Bool)

(assert (=> b!3368114 m!3728325))

(assert (=> b!3368115 m!3728323))

(assert (=> b!3367843 d!954679))

(declare-fun d!954681 () Bool)

(assert (=> d!954681 (isEmpty!20946 (getSuffix!1442 lt!1142829 lt!1142829))))

(declare-fun lt!1142926 () Unit!51842)

(declare-fun choose!19448 (List!36869) Unit!51842)

(assert (=> d!954681 (= lt!1142926 (choose!19448 lt!1142829))))

(assert (=> d!954681 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!100 lt!1142829) lt!1142926)))

(declare-fun bs!554010 () Bool)

(assert (= bs!554010 d!954681))

(assert (=> bs!554010 m!3727973))

(assert (=> bs!554010 m!3727973))

(assert (=> bs!554010 m!3727987))

(declare-fun m!3728327 () Bool)

(assert (=> bs!554010 m!3728327))

(assert (=> b!3367843 d!954681))

(declare-fun d!954683 () Bool)

(assert (=> d!954683 (= (isDefined!5682 lt!1142820) (not (isEmpty!20951 lt!1142820)))))

(declare-fun bs!554011 () Bool)

(assert (= bs!554011 d!954683))

(declare-fun m!3728329 () Bool)

(assert (=> bs!554011 m!3728329))

(assert (=> b!3367843 d!954683))

(declare-fun d!954685 () Bool)

(declare-fun list!13270 (Conc!11071) List!36869)

(assert (=> d!954685 (= (list!13267 (charsOf!3362 (h!42166 tokens!494))) (list!13270 (c!573343 (charsOf!3362 (h!42166 tokens!494)))))))

(declare-fun bs!554012 () Bool)

(assert (= bs!554012 d!954685))

(declare-fun m!3728331 () Bool)

(assert (=> bs!554012 m!3728331))

(assert (=> b!3367844 d!954685))

(declare-fun d!954687 () Bool)

(declare-fun lt!1142929 () BalanceConc!21756)

(assert (=> d!954687 (= (list!13267 lt!1142929) (originalCharacters!6062 (h!42166 tokens!494)))))

(declare-fun dynLambda!15233 (Int TokenValue!5578) BalanceConc!21756)

(assert (=> d!954687 (= lt!1142929 (dynLambda!15233 (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))) (value!172878 (h!42166 tokens!494))))))

(assert (=> d!954687 (= (charsOf!3362 (h!42166 tokens!494)) lt!1142929)))

(declare-fun b_lambda!95293 () Bool)

(assert (=> (not b_lambda!95293) (not d!954687)))

(declare-fun tb!178783 () Bool)

(declare-fun t!261677 () Bool)

(assert (=> (and b!3367851 (= (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))) (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494))))) t!261677) tb!178783))

(declare-fun b!3368121 () Bool)

(declare-fun e!2090557 () Bool)

(declare-fun tp!1053911 () Bool)

(declare-fun inv!49806 (Conc!11071) Bool)

(assert (=> b!3368121 (= e!2090557 (and (inv!49806 (c!573343 (dynLambda!15233 (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))) (value!172878 (h!42166 tokens!494))))) tp!1053911))))

(declare-fun result!222046 () Bool)

(declare-fun inv!49807 (BalanceConc!21756) Bool)

(assert (=> tb!178783 (= result!222046 (and (inv!49807 (dynLambda!15233 (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))) (value!172878 (h!42166 tokens!494)))) e!2090557))))

(assert (= tb!178783 b!3368121))

(declare-fun m!3728333 () Bool)

(assert (=> b!3368121 m!3728333))

(declare-fun m!3728335 () Bool)

(assert (=> tb!178783 m!3728335))

(assert (=> d!954687 t!261677))

(declare-fun b_and!233423 () Bool)

(assert (= b_and!233389 (and (=> t!261677 result!222046) b_and!233423)))

(declare-fun t!261679 () Bool)

(declare-fun tb!178785 () Bool)

(assert (=> (and b!3367838 (= (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))) (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494))))) t!261679) tb!178785))

(declare-fun result!222050 () Bool)

(assert (= result!222050 result!222046))

(assert (=> d!954687 t!261679))

(declare-fun b_and!233425 () Bool)

(assert (= b_and!233393 (and (=> t!261679 result!222050) b_and!233425)))

(declare-fun tb!178787 () Bool)

(declare-fun t!261681 () Bool)

(assert (=> (and b!3367845 (= (toChars!7387 (transformation!5348 (h!42167 rules!2135))) (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494))))) t!261681) tb!178787))

(declare-fun result!222052 () Bool)

(assert (= result!222052 result!222046))

(assert (=> d!954687 t!261681))

(declare-fun b_and!233427 () Bool)

(assert (= b_and!233397 (and (=> t!261681 result!222052) b_and!233427)))

(declare-fun m!3728337 () Bool)

(assert (=> d!954687 m!3728337))

(declare-fun m!3728339 () Bool)

(assert (=> d!954687 m!3728339))

(assert (=> b!3367844 d!954687))

(declare-fun d!954689 () Bool)

(declare-fun lt!1142931 () Bool)

(declare-fun e!2090559 () Bool)

(assert (=> d!954689 (= lt!1142931 e!2090559)))

(declare-fun res!1362139 () Bool)

(assert (=> d!954689 (=> (not res!1362139) (not e!2090559))))

(assert (=> d!954689 (= res!1362139 (= (list!13268 (_1!21277 (lex!2263 thiss!18206 rules!2135 (print!2002 thiss!18206 (singletonSeq!2444 (h!42166 tokens!494)))))) (list!13268 (singletonSeq!2444 (h!42166 tokens!494)))))))

(declare-fun e!2090558 () Bool)

(assert (=> d!954689 (= lt!1142931 e!2090558)))

(declare-fun res!1362138 () Bool)

(assert (=> d!954689 (=> (not res!1362138) (not e!2090558))))

(declare-fun lt!1142930 () tuple2!36286)

(assert (=> d!954689 (= res!1362138 (= (size!27804 (_1!21277 lt!1142930)) 1))))

(assert (=> d!954689 (= lt!1142930 (lex!2263 thiss!18206 rules!2135 (print!2002 thiss!18206 (singletonSeq!2444 (h!42166 tokens!494)))))))

(assert (=> d!954689 (not (isEmpty!20947 rules!2135))))

(assert (=> d!954689 (= (rulesProduceIndividualToken!2429 thiss!18206 rules!2135 (h!42166 tokens!494)) lt!1142931)))

(declare-fun b!3368122 () Bool)

(declare-fun res!1362140 () Bool)

(assert (=> b!3368122 (=> (not res!1362140) (not e!2090558))))

(assert (=> b!3368122 (= res!1362140 (= (apply!8512 (_1!21277 lt!1142930) 0) (h!42166 tokens!494)))))

(declare-fun b!3368123 () Bool)

(assert (=> b!3368123 (= e!2090558 (isEmpty!20948 (_2!21277 lt!1142930)))))

(declare-fun b!3368124 () Bool)

(assert (=> b!3368124 (= e!2090559 (isEmpty!20948 (_2!21277 (lex!2263 thiss!18206 rules!2135 (print!2002 thiss!18206 (singletonSeq!2444 (h!42166 tokens!494)))))))))

(assert (= (and d!954689 res!1362138) b!3368122))

(assert (= (and b!3368122 res!1362140) b!3368123))

(assert (= (and d!954689 res!1362139) b!3368124))

(declare-fun m!3728341 () Bool)

(assert (=> d!954689 m!3728341))

(assert (=> d!954689 m!3727947))

(assert (=> d!954689 m!3727947))

(declare-fun m!3728343 () Bool)

(assert (=> d!954689 m!3728343))

(declare-fun m!3728345 () Bool)

(assert (=> d!954689 m!3728345))

(assert (=> d!954689 m!3728343))

(declare-fun m!3728347 () Bool)

(assert (=> d!954689 m!3728347))

(assert (=> d!954689 m!3728013))

(assert (=> d!954689 m!3727947))

(declare-fun m!3728349 () Bool)

(assert (=> d!954689 m!3728349))

(declare-fun m!3728351 () Bool)

(assert (=> b!3368122 m!3728351))

(declare-fun m!3728353 () Bool)

(assert (=> b!3368123 m!3728353))

(assert (=> b!3368124 m!3727947))

(assert (=> b!3368124 m!3727947))

(assert (=> b!3368124 m!3728343))

(assert (=> b!3368124 m!3728343))

(assert (=> b!3368124 m!3728347))

(declare-fun m!3728355 () Bool)

(assert (=> b!3368124 m!3728355))

(assert (=> b!3367856 d!954689))

(declare-fun d!954691 () Bool)

(declare-fun res!1362145 () Bool)

(declare-fun e!2090562 () Bool)

(assert (=> d!954691 (=> (not res!1362145) (not e!2090562))))

(assert (=> d!954691 (= res!1362145 (not (isEmpty!20946 (originalCharacters!6062 (h!42166 tokens!494)))))))

(assert (=> d!954691 (= (inv!49803 (h!42166 tokens!494)) e!2090562)))

(declare-fun b!3368129 () Bool)

(declare-fun res!1362146 () Bool)

(assert (=> b!3368129 (=> (not res!1362146) (not e!2090562))))

(assert (=> b!3368129 (= res!1362146 (= (originalCharacters!6062 (h!42166 tokens!494)) (list!13267 (dynLambda!15233 (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))) (value!172878 (h!42166 tokens!494))))))))

(declare-fun b!3368130 () Bool)

(assert (=> b!3368130 (= e!2090562 (= (size!27803 (h!42166 tokens!494)) (size!27806 (originalCharacters!6062 (h!42166 tokens!494)))))))

(assert (= (and d!954691 res!1362145) b!3368129))

(assert (= (and b!3368129 res!1362146) b!3368130))

(declare-fun b_lambda!95295 () Bool)

(assert (=> (not b_lambda!95295) (not b!3368129)))

(assert (=> b!3368129 t!261677))

(declare-fun b_and!233429 () Bool)

(assert (= b_and!233423 (and (=> t!261677 result!222046) b_and!233429)))

(assert (=> b!3368129 t!261679))

(declare-fun b_and!233431 () Bool)

(assert (= b_and!233425 (and (=> t!261679 result!222050) b_and!233431)))

(assert (=> b!3368129 t!261681))

(declare-fun b_and!233433 () Bool)

(assert (= b_and!233427 (and (=> t!261681 result!222052) b_and!233433)))

(declare-fun m!3728357 () Bool)

(assert (=> d!954691 m!3728357))

(assert (=> b!3368129 m!3728339))

(assert (=> b!3368129 m!3728339))

(declare-fun m!3728359 () Bool)

(assert (=> b!3368129 m!3728359))

(declare-fun m!3728361 () Bool)

(assert (=> b!3368130 m!3728361))

(assert (=> b!3367858 d!954691))

(declare-fun d!954693 () Bool)

(assert (=> d!954693 (= (list!13267 lt!1142814) (list!13270 (c!573343 lt!1142814)))))

(declare-fun bs!554013 () Bool)

(assert (= bs!554013 d!954693))

(declare-fun m!3728363 () Bool)

(assert (=> bs!554013 m!3728363))

(assert (=> b!3367857 d!954693))

(declare-fun d!954695 () Bool)

(declare-fun lt!1142934 () BalanceConc!21756)

(assert (=> d!954695 (= (list!13267 lt!1142934) (printList!1485 thiss!18206 (list!13268 lt!1142815)))))

(assert (=> d!954695 (= lt!1142934 (printTailRec!1432 thiss!18206 lt!1142815 0 (BalanceConc!21757 Empty!11071)))))

(assert (=> d!954695 (= (print!2002 thiss!18206 lt!1142815) lt!1142934)))

(declare-fun bs!554014 () Bool)

(assert (= bs!554014 d!954695))

(declare-fun m!3728365 () Bool)

(assert (=> bs!554014 m!3728365))

(declare-fun m!3728367 () Bool)

(assert (=> bs!554014 m!3728367))

(assert (=> bs!554014 m!3728367))

(declare-fun m!3728369 () Bool)

(assert (=> bs!554014 m!3728369))

(assert (=> bs!554014 m!3727945))

(assert (=> b!3367857 d!954695))

(declare-fun d!954697 () Bool)

(declare-fun lt!1142950 () BalanceConc!21756)

(declare-fun printListTailRec!631 (LexerInterface!4937 List!36870 List!36869) List!36869)

(declare-fun dropList!1148 (BalanceConc!21758 Int) List!36870)

(assert (=> d!954697 (= (list!13267 lt!1142950) (printListTailRec!631 thiss!18206 (dropList!1148 lt!1142815 0) (list!13267 (BalanceConc!21757 Empty!11071))))))

(declare-fun e!2090568 () BalanceConc!21756)

(assert (=> d!954697 (= lt!1142950 e!2090568)))

(declare-fun c!573393 () Bool)

(assert (=> d!954697 (= c!573393 (>= 0 (size!27804 lt!1142815)))))

(declare-fun e!2090567 () Bool)

(assert (=> d!954697 e!2090567))

(declare-fun res!1362149 () Bool)

(assert (=> d!954697 (=> (not res!1362149) (not e!2090567))))

(assert (=> d!954697 (= res!1362149 (>= 0 0))))

(assert (=> d!954697 (= (printTailRec!1432 thiss!18206 lt!1142815 0 (BalanceConc!21757 Empty!11071)) lt!1142950)))

(declare-fun b!3368137 () Bool)

(assert (=> b!3368137 (= e!2090567 (<= 0 (size!27804 lt!1142815)))))

(declare-fun b!3368138 () Bool)

(assert (=> b!3368138 (= e!2090568 (BalanceConc!21757 Empty!11071))))

(declare-fun b!3368139 () Bool)

(declare-fun ++!8964 (BalanceConc!21756 BalanceConc!21756) BalanceConc!21756)

(assert (=> b!3368139 (= e!2090568 (printTailRec!1432 thiss!18206 lt!1142815 (+ 0 1) (++!8964 (BalanceConc!21757 Empty!11071) (charsOf!3362 (apply!8512 lt!1142815 0)))))))

(declare-fun lt!1142949 () List!36870)

(assert (=> b!3368139 (= lt!1142949 (list!13268 lt!1142815))))

(declare-fun lt!1142954 () Unit!51842)

(declare-fun lemmaDropApply!1106 (List!36870 Int) Unit!51842)

(assert (=> b!3368139 (= lt!1142954 (lemmaDropApply!1106 lt!1142949 0))))

(declare-fun head!7185 (List!36870) Token!10062)

(declare-fun drop!1944 (List!36870 Int) List!36870)

(declare-fun apply!8513 (List!36870 Int) Token!10062)

(assert (=> b!3368139 (= (head!7185 (drop!1944 lt!1142949 0)) (apply!8513 lt!1142949 0))))

(declare-fun lt!1142955 () Unit!51842)

(assert (=> b!3368139 (= lt!1142955 lt!1142954)))

(declare-fun lt!1142953 () List!36870)

(assert (=> b!3368139 (= lt!1142953 (list!13268 lt!1142815))))

(declare-fun lt!1142951 () Unit!51842)

(declare-fun lemmaDropTail!990 (List!36870 Int) Unit!51842)

(assert (=> b!3368139 (= lt!1142951 (lemmaDropTail!990 lt!1142953 0))))

(declare-fun tail!5324 (List!36870) List!36870)

(assert (=> b!3368139 (= (tail!5324 (drop!1944 lt!1142953 0)) (drop!1944 lt!1142953 (+ 0 1)))))

(declare-fun lt!1142952 () Unit!51842)

(assert (=> b!3368139 (= lt!1142952 lt!1142951)))

(assert (= (and d!954697 res!1362149) b!3368137))

(assert (= (and d!954697 c!573393) b!3368138))

(assert (= (and d!954697 (not c!573393)) b!3368139))

(declare-fun m!3728371 () Bool)

(assert (=> d!954697 m!3728371))

(declare-fun m!3728373 () Bool)

(assert (=> d!954697 m!3728373))

(declare-fun m!3728375 () Bool)

(assert (=> d!954697 m!3728375))

(assert (=> d!954697 m!3728373))

(declare-fun m!3728377 () Bool)

(assert (=> d!954697 m!3728377))

(declare-fun m!3728379 () Bool)

(assert (=> d!954697 m!3728379))

(assert (=> d!954697 m!3728371))

(assert (=> b!3368137 m!3728379))

(declare-fun m!3728381 () Bool)

(assert (=> b!3368139 m!3728381))

(declare-fun m!3728383 () Bool)

(assert (=> b!3368139 m!3728383))

(declare-fun m!3728385 () Bool)

(assert (=> b!3368139 m!3728385))

(declare-fun m!3728387 () Bool)

(assert (=> b!3368139 m!3728387))

(declare-fun m!3728389 () Bool)

(assert (=> b!3368139 m!3728389))

(declare-fun m!3728391 () Bool)

(assert (=> b!3368139 m!3728391))

(declare-fun m!3728393 () Bool)

(assert (=> b!3368139 m!3728393))

(declare-fun m!3728395 () Bool)

(assert (=> b!3368139 m!3728395))

(assert (=> b!3368139 m!3728367))

(assert (=> b!3368139 m!3728387))

(assert (=> b!3368139 m!3728389))

(declare-fun m!3728397 () Bool)

(assert (=> b!3368139 m!3728397))

(declare-fun m!3728399 () Bool)

(assert (=> b!3368139 m!3728399))

(assert (=> b!3368139 m!3728393))

(declare-fun m!3728401 () Bool)

(assert (=> b!3368139 m!3728401))

(declare-fun m!3728403 () Bool)

(assert (=> b!3368139 m!3728403))

(assert (=> b!3368139 m!3728381))

(assert (=> b!3368139 m!3728385))

(assert (=> b!3367857 d!954697))

(declare-fun d!954699 () Bool)

(declare-fun e!2090571 () Bool)

(assert (=> d!954699 e!2090571))

(declare-fun res!1362152 () Bool)

(assert (=> d!954699 (=> (not res!1362152) (not e!2090571))))

(declare-fun lt!1142958 () BalanceConc!21758)

(assert (=> d!954699 (= res!1362152 (= (list!13268 lt!1142958) (Cons!36746 (h!42166 tokens!494) Nil!36746)))))

(declare-fun singleton!1063 (Token!10062) BalanceConc!21758)

(assert (=> d!954699 (= lt!1142958 (singleton!1063 (h!42166 tokens!494)))))

(assert (=> d!954699 (= (singletonSeq!2444 (h!42166 tokens!494)) lt!1142958)))

(declare-fun b!3368142 () Bool)

(declare-fun isBalanced!3334 (Conc!11072) Bool)

(assert (=> b!3368142 (= e!2090571 (isBalanced!3334 (c!573344 lt!1142958)))))

(assert (= (and d!954699 res!1362152) b!3368142))

(declare-fun m!3728405 () Bool)

(assert (=> d!954699 m!3728405))

(declare-fun m!3728407 () Bool)

(assert (=> d!954699 m!3728407))

(declare-fun m!3728409 () Bool)

(assert (=> b!3368142 m!3728409))

(assert (=> b!3367857 d!954699))

(declare-fun d!954701 () Bool)

(declare-fun c!573396 () Bool)

(assert (=> d!954701 (= c!573396 ((_ is Cons!36746) (Cons!36746 (h!42166 tokens!494) Nil!36746)))))

(declare-fun e!2090574 () List!36869)

(assert (=> d!954701 (= (printList!1485 thiss!18206 (Cons!36746 (h!42166 tokens!494) Nil!36746)) e!2090574)))

(declare-fun b!3368147 () Bool)

(assert (=> b!3368147 (= e!2090574 (++!8963 (list!13267 (charsOf!3362 (h!42166 (Cons!36746 (h!42166 tokens!494) Nil!36746)))) (printList!1485 thiss!18206 (t!261651 (Cons!36746 (h!42166 tokens!494) Nil!36746)))))))

(declare-fun b!3368148 () Bool)

(assert (=> b!3368148 (= e!2090574 Nil!36745)))

(assert (= (and d!954701 c!573396) b!3368147))

(assert (= (and d!954701 (not c!573396)) b!3368148))

(declare-fun m!3728411 () Bool)

(assert (=> b!3368147 m!3728411))

(assert (=> b!3368147 m!3728411))

(declare-fun m!3728413 () Bool)

(assert (=> b!3368147 m!3728413))

(declare-fun m!3728415 () Bool)

(assert (=> b!3368147 m!3728415))

(assert (=> b!3368147 m!3728413))

(assert (=> b!3368147 m!3728415))

(declare-fun m!3728417 () Bool)

(assert (=> b!3368147 m!3728417))

(assert (=> b!3367857 d!954701))

(declare-fun d!954703 () Bool)

(assert (=> d!954703 (= (inv!49799 (tag!5908 (rule!7886 (h!42166 tokens!494)))) (= (mod (str.len (value!172877 (tag!5908 (rule!7886 (h!42166 tokens!494))))) 2) 0))))

(assert (=> b!3367836 d!954703))

(declare-fun d!954705 () Bool)

(declare-fun res!1362153 () Bool)

(declare-fun e!2090575 () Bool)

(assert (=> d!954705 (=> (not res!1362153) (not e!2090575))))

(assert (=> d!954705 (= res!1362153 (semiInverseModEq!2226 (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))) (toValue!7528 (transformation!5348 (rule!7886 (h!42166 tokens!494))))))))

(assert (=> d!954705 (= (inv!49802 (transformation!5348 (rule!7886 (h!42166 tokens!494)))) e!2090575)))

(declare-fun b!3368149 () Bool)

(assert (=> b!3368149 (= e!2090575 (equivClasses!2125 (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))) (toValue!7528 (transformation!5348 (rule!7886 (h!42166 tokens!494))))))))

(assert (= (and d!954705 res!1362153) b!3368149))

(declare-fun m!3728419 () Bool)

(assert (=> d!954705 m!3728419))

(declare-fun m!3728421 () Bool)

(assert (=> b!3368149 m!3728421))

(assert (=> b!3367836 d!954705))

(declare-fun d!954707 () Bool)

(declare-fun res!1362154 () Bool)

(declare-fun e!2090576 () Bool)

(assert (=> d!954707 (=> (not res!1362154) (not e!2090576))))

(assert (=> d!954707 (= res!1362154 (not (isEmpty!20946 (originalCharacters!6062 separatorToken!241))))))

(assert (=> d!954707 (= (inv!49803 separatorToken!241) e!2090576)))

(declare-fun b!3368150 () Bool)

(declare-fun res!1362155 () Bool)

(assert (=> b!3368150 (=> (not res!1362155) (not e!2090576))))

(assert (=> b!3368150 (= res!1362155 (= (originalCharacters!6062 separatorToken!241) (list!13267 (dynLambda!15233 (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))) (value!172878 separatorToken!241)))))))

(declare-fun b!3368151 () Bool)

(assert (=> b!3368151 (= e!2090576 (= (size!27803 separatorToken!241) (size!27806 (originalCharacters!6062 separatorToken!241))))))

(assert (= (and d!954707 res!1362154) b!3368150))

(assert (= (and b!3368150 res!1362155) b!3368151))

(declare-fun b_lambda!95297 () Bool)

(assert (=> (not b_lambda!95297) (not b!3368150)))

(declare-fun t!261684 () Bool)

(declare-fun tb!178789 () Bool)

(assert (=> (and b!3367851 (= (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))) (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241)))) t!261684) tb!178789))

(declare-fun b!3368152 () Bool)

(declare-fun e!2090577 () Bool)

(declare-fun tp!1053912 () Bool)

(assert (=> b!3368152 (= e!2090577 (and (inv!49806 (c!573343 (dynLambda!15233 (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))) (value!172878 separatorToken!241)))) tp!1053912))))

(declare-fun result!222054 () Bool)

(assert (=> tb!178789 (= result!222054 (and (inv!49807 (dynLambda!15233 (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))) (value!172878 separatorToken!241))) e!2090577))))

(assert (= tb!178789 b!3368152))

(declare-fun m!3728423 () Bool)

(assert (=> b!3368152 m!3728423))

(declare-fun m!3728425 () Bool)

(assert (=> tb!178789 m!3728425))

(assert (=> b!3368150 t!261684))

(declare-fun b_and!233435 () Bool)

(assert (= b_and!233429 (and (=> t!261684 result!222054) b_and!233435)))

(declare-fun tb!178791 () Bool)

(declare-fun t!261686 () Bool)

(assert (=> (and b!3367838 (= (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))) (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241)))) t!261686) tb!178791))

(declare-fun result!222056 () Bool)

(assert (= result!222056 result!222054))

(assert (=> b!3368150 t!261686))

(declare-fun b_and!233437 () Bool)

(assert (= b_and!233431 (and (=> t!261686 result!222056) b_and!233437)))

(declare-fun t!261688 () Bool)

(declare-fun tb!178793 () Bool)

(assert (=> (and b!3367845 (= (toChars!7387 (transformation!5348 (h!42167 rules!2135))) (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241)))) t!261688) tb!178793))

(declare-fun result!222058 () Bool)

(assert (= result!222058 result!222054))

(assert (=> b!3368150 t!261688))

(declare-fun b_and!233439 () Bool)

(assert (= b_and!233433 (and (=> t!261688 result!222058) b_and!233439)))

(declare-fun m!3728427 () Bool)

(assert (=> d!954707 m!3728427))

(declare-fun m!3728429 () Bool)

(assert (=> b!3368150 m!3728429))

(assert (=> b!3368150 m!3728429))

(declare-fun m!3728431 () Bool)

(assert (=> b!3368150 m!3728431))

(declare-fun m!3728433 () Bool)

(assert (=> b!3368151 m!3728433))

(assert (=> start!313322 d!954707))

(declare-fun b!3368163 () Bool)

(declare-fun e!2090586 () Bool)

(declare-fun inv!15 (TokenValue!5578) Bool)

(assert (=> b!3368163 (= e!2090586 (inv!15 (value!172878 (h!42166 tokens!494))))))

(declare-fun d!954709 () Bool)

(declare-fun c!573401 () Bool)

(assert (=> d!954709 (= c!573401 ((_ is IntegerValue!16734) (value!172878 (h!42166 tokens!494))))))

(declare-fun e!2090584 () Bool)

(assert (=> d!954709 (= (inv!21 (value!172878 (h!42166 tokens!494))) e!2090584)))

(declare-fun b!3368164 () Bool)

(declare-fun e!2090585 () Bool)

(assert (=> b!3368164 (= e!2090584 e!2090585)))

(declare-fun c!573402 () Bool)

(assert (=> b!3368164 (= c!573402 ((_ is IntegerValue!16735) (value!172878 (h!42166 tokens!494))))))

(declare-fun b!3368165 () Bool)

(declare-fun res!1362158 () Bool)

(assert (=> b!3368165 (=> res!1362158 e!2090586)))

(assert (=> b!3368165 (= res!1362158 (not ((_ is IntegerValue!16736) (value!172878 (h!42166 tokens!494)))))))

(assert (=> b!3368165 (= e!2090585 e!2090586)))

(declare-fun b!3368166 () Bool)

(declare-fun inv!16 (TokenValue!5578) Bool)

(assert (=> b!3368166 (= e!2090584 (inv!16 (value!172878 (h!42166 tokens!494))))))

(declare-fun b!3368167 () Bool)

(declare-fun inv!17 (TokenValue!5578) Bool)

(assert (=> b!3368167 (= e!2090585 (inv!17 (value!172878 (h!42166 tokens!494))))))

(assert (= (and d!954709 c!573401) b!3368166))

(assert (= (and d!954709 (not c!573401)) b!3368164))

(assert (= (and b!3368164 c!573402) b!3368167))

(assert (= (and b!3368164 (not c!573402)) b!3368165))

(assert (= (and b!3368165 (not res!1362158)) b!3368163))

(declare-fun m!3728435 () Bool)

(assert (=> b!3368163 m!3728435))

(declare-fun m!3728437 () Bool)

(assert (=> b!3368166 m!3728437))

(declare-fun m!3728439 () Bool)

(assert (=> b!3368167 m!3728439))

(assert (=> b!3367839 d!954709))

(declare-fun d!954711 () Bool)

(declare-fun dynLambda!15234 (Int Token!10062) Bool)

(assert (=> d!954711 (dynLambda!15234 lambda!120205 (h!42166 tokens!494))))

(declare-fun lt!1142961 () Unit!51842)

(declare-fun choose!19452 (List!36870 Int Token!10062) Unit!51842)

(assert (=> d!954711 (= lt!1142961 (choose!19452 tokens!494 lambda!120205 (h!42166 tokens!494)))))

(declare-fun e!2090589 () Bool)

(assert (=> d!954711 e!2090589))

(declare-fun res!1362161 () Bool)

(assert (=> d!954711 (=> (not res!1362161) (not e!2090589))))

(assert (=> d!954711 (= res!1362161 (forall!7707 tokens!494 lambda!120205))))

(assert (=> d!954711 (= (forallContained!1295 tokens!494 lambda!120205 (h!42166 tokens!494)) lt!1142961)))

(declare-fun b!3368170 () Bool)

(declare-fun contains!6685 (List!36870 Token!10062) Bool)

(assert (=> b!3368170 (= e!2090589 (contains!6685 tokens!494 (h!42166 tokens!494)))))

(assert (= (and d!954711 res!1362161) b!3368170))

(declare-fun b_lambda!95299 () Bool)

(assert (=> (not b_lambda!95299) (not d!954711)))

(declare-fun m!3728441 () Bool)

(assert (=> d!954711 m!3728441))

(declare-fun m!3728443 () Bool)

(assert (=> d!954711 m!3728443))

(assert (=> d!954711 m!3728031))

(declare-fun m!3728445 () Bool)

(assert (=> b!3368170 m!3728445))

(assert (=> b!3367830 d!954711))

(declare-fun b!3368208 () Bool)

(declare-fun e!2090610 () Bool)

(declare-fun e!2090611 () Bool)

(assert (=> b!3368208 (= e!2090610 e!2090611)))

(declare-fun res!1362192 () Bool)

(assert (=> b!3368208 (=> (not res!1362192) (not e!2090611))))

(declare-fun lt!1142970 () Bool)

(assert (=> b!3368208 (= res!1362192 (not lt!1142970))))

(declare-fun b!3368209 () Bool)

(declare-fun e!2090615 () Bool)

(declare-fun e!2090616 () Bool)

(assert (=> b!3368209 (= e!2090615 e!2090616)))

(declare-fun c!573409 () Bool)

(assert (=> b!3368209 (= c!573409 ((_ is EmptyLang!10107) (regex!5348 lt!1142821)))))

(declare-fun b!3368210 () Bool)

(assert (=> b!3368210 (= e!2090616 (not lt!1142970))))

(declare-fun d!954713 () Bool)

(assert (=> d!954713 e!2090615))

(declare-fun c!573410 () Bool)

(assert (=> d!954713 (= c!573410 ((_ is EmptyExpr!10107) (regex!5348 lt!1142821)))))

(declare-fun e!2090613 () Bool)

(assert (=> d!954713 (= lt!1142970 e!2090613)))

(declare-fun c!573411 () Bool)

(assert (=> d!954713 (= c!573411 (isEmpty!20946 lt!1142829))))

(declare-fun validRegex!4592 (Regex!10107) Bool)

(assert (=> d!954713 (validRegex!4592 (regex!5348 lt!1142821))))

(assert (=> d!954713 (= (matchR!4699 (regex!5348 lt!1142821) lt!1142829) lt!1142970)))

(declare-fun b!3368211 () Bool)

(declare-fun call!243802 () Bool)

(assert (=> b!3368211 (= e!2090615 (= lt!1142970 call!243802))))

(declare-fun b!3368212 () Bool)

(declare-fun res!1362193 () Bool)

(assert (=> b!3368212 (=> res!1362193 e!2090610)))

(assert (=> b!3368212 (= res!1362193 (not ((_ is ElementMatch!10107) (regex!5348 lt!1142821))))))

(assert (=> b!3368212 (= e!2090616 e!2090610)))

(declare-fun b!3368213 () Bool)

(declare-fun nullable!3436 (Regex!10107) Bool)

(assert (=> b!3368213 (= e!2090613 (nullable!3436 (regex!5348 lt!1142821)))))

(declare-fun b!3368214 () Bool)

(declare-fun res!1362187 () Bool)

(declare-fun e!2090612 () Bool)

(assert (=> b!3368214 (=> (not res!1362187) (not e!2090612))))

(assert (=> b!3368214 (= res!1362187 (not call!243802))))

(declare-fun b!3368215 () Bool)

(declare-fun e!2090614 () Bool)

(declare-fun head!7186 (List!36869) C!20400)

(assert (=> b!3368215 (= e!2090614 (not (= (head!7186 lt!1142829) (c!573342 (regex!5348 lt!1142821)))))))

(declare-fun b!3368216 () Bool)

(assert (=> b!3368216 (= e!2090612 (= (head!7186 lt!1142829) (c!573342 (regex!5348 lt!1142821))))))

(declare-fun b!3368217 () Bool)

(declare-fun res!1362189 () Bool)

(assert (=> b!3368217 (=> res!1362189 e!2090614)))

(assert (=> b!3368217 (= res!1362189 (not (isEmpty!20946 (tail!5323 lt!1142829))))))

(declare-fun b!3368218 () Bool)

(declare-fun derivativeStep!2989 (Regex!10107 C!20400) Regex!10107)

(assert (=> b!3368218 (= e!2090613 (matchR!4699 (derivativeStep!2989 (regex!5348 lt!1142821) (head!7186 lt!1142829)) (tail!5323 lt!1142829)))))

(declare-fun b!3368219 () Bool)

(declare-fun res!1362190 () Bool)

(assert (=> b!3368219 (=> (not res!1362190) (not e!2090612))))

(assert (=> b!3368219 (= res!1362190 (isEmpty!20946 (tail!5323 lt!1142829)))))

(declare-fun b!3368220 () Bool)

(assert (=> b!3368220 (= e!2090611 e!2090614)))

(declare-fun res!1362194 () Bool)

(assert (=> b!3368220 (=> res!1362194 e!2090614)))

(assert (=> b!3368220 (= res!1362194 call!243802)))

(declare-fun b!3368221 () Bool)

(declare-fun res!1362188 () Bool)

(assert (=> b!3368221 (=> res!1362188 e!2090610)))

(assert (=> b!3368221 (= res!1362188 e!2090612)))

(declare-fun res!1362191 () Bool)

(assert (=> b!3368221 (=> (not res!1362191) (not e!2090612))))

(assert (=> b!3368221 (= res!1362191 lt!1142970)))

(declare-fun bm!243797 () Bool)

(assert (=> bm!243797 (= call!243802 (isEmpty!20946 lt!1142829))))

(assert (= (and d!954713 c!573411) b!3368213))

(assert (= (and d!954713 (not c!573411)) b!3368218))

(assert (= (and d!954713 c!573410) b!3368211))

(assert (= (and d!954713 (not c!573410)) b!3368209))

(assert (= (and b!3368209 c!573409) b!3368210))

(assert (= (and b!3368209 (not c!573409)) b!3368212))

(assert (= (and b!3368212 (not res!1362193)) b!3368221))

(assert (= (and b!3368221 res!1362191) b!3368214))

(assert (= (and b!3368214 res!1362187) b!3368219))

(assert (= (and b!3368219 res!1362190) b!3368216))

(assert (= (and b!3368221 (not res!1362188)) b!3368208))

(assert (= (and b!3368208 res!1362192) b!3368220))

(assert (= (and b!3368220 (not res!1362194)) b!3368217))

(assert (= (and b!3368217 (not res!1362189)) b!3368215))

(assert (= (or b!3368211 b!3368214 b!3368220) bm!243797))

(declare-fun m!3728465 () Bool)

(assert (=> b!3368216 m!3728465))

(declare-fun m!3728467 () Bool)

(assert (=> b!3368213 m!3728467))

(assert (=> d!954713 m!3727967))

(declare-fun m!3728469 () Bool)

(assert (=> d!954713 m!3728469))

(assert (=> b!3368217 m!3728295))

(assert (=> b!3368217 m!3728295))

(declare-fun m!3728471 () Bool)

(assert (=> b!3368217 m!3728471))

(assert (=> b!3368218 m!3728465))

(assert (=> b!3368218 m!3728465))

(declare-fun m!3728473 () Bool)

(assert (=> b!3368218 m!3728473))

(assert (=> b!3368218 m!3728295))

(assert (=> b!3368218 m!3728473))

(assert (=> b!3368218 m!3728295))

(declare-fun m!3728475 () Bool)

(assert (=> b!3368218 m!3728475))

(assert (=> b!3368215 m!3728465))

(assert (=> bm!243797 m!3727967))

(assert (=> b!3368219 m!3728295))

(assert (=> b!3368219 m!3728295))

(assert (=> b!3368219 m!3728471))

(assert (=> b!3367831 d!954713))

(declare-fun d!954717 () Bool)

(assert (=> d!954717 (= (get!11713 lt!1142820) (v!36343 lt!1142820))))

(assert (=> b!3367831 d!954717))

(declare-fun d!954719 () Bool)

(assert (=> d!954719 (= (list!13267 lt!1142824) (list!13270 (c!573343 lt!1142824)))))

(declare-fun bs!554015 () Bool)

(assert (= bs!554015 d!954719))

(declare-fun m!3728477 () Bool)

(assert (=> bs!554015 m!3728477))

(assert (=> b!3367852 d!954719))

(declare-fun d!954721 () Bool)

(declare-fun e!2090636 () Bool)

(assert (=> d!954721 e!2090636))

(declare-fun res!1362213 () Bool)

(assert (=> d!954721 (=> (not res!1362213) (not e!2090636))))

(declare-fun lt!1142975 () List!36869)

(declare-fun content!5048 (List!36869) (InoxSet C!20400))

(assert (=> d!954721 (= res!1362213 (= (content!5048 lt!1142975) ((_ map or) (content!5048 lt!1142829) (content!5048 lt!1142819))))))

(declare-fun e!2090637 () List!36869)

(assert (=> d!954721 (= lt!1142975 e!2090637)))

(declare-fun c!573416 () Bool)

(assert (=> d!954721 (= c!573416 ((_ is Nil!36745) lt!1142829))))

(assert (=> d!954721 (= (++!8963 lt!1142829 lt!1142819) lt!1142975)))

(declare-fun b!3368249 () Bool)

(assert (=> b!3368249 (= e!2090637 (Cons!36745 (h!42165 lt!1142829) (++!8963 (t!261650 lt!1142829) lt!1142819)))))

(declare-fun b!3368251 () Bool)

(assert (=> b!3368251 (= e!2090636 (or (not (= lt!1142819 Nil!36745)) (= lt!1142975 lt!1142829)))))

(declare-fun b!3368248 () Bool)

(assert (=> b!3368248 (= e!2090637 lt!1142819)))

(declare-fun b!3368250 () Bool)

(declare-fun res!1362214 () Bool)

(assert (=> b!3368250 (=> (not res!1362214) (not e!2090636))))

(assert (=> b!3368250 (= res!1362214 (= (size!27806 lt!1142975) (+ (size!27806 lt!1142829) (size!27806 lt!1142819))))))

(assert (= (and d!954721 c!573416) b!3368248))

(assert (= (and d!954721 (not c!573416)) b!3368249))

(assert (= (and d!954721 res!1362213) b!3368250))

(assert (= (and b!3368250 res!1362214) b!3368251))

(declare-fun m!3728509 () Bool)

(assert (=> d!954721 m!3728509))

(declare-fun m!3728511 () Bool)

(assert (=> d!954721 m!3728511))

(declare-fun m!3728513 () Bool)

(assert (=> d!954721 m!3728513))

(declare-fun m!3728515 () Bool)

(assert (=> b!3368249 m!3728515))

(declare-fun m!3728517 () Bool)

(assert (=> b!3368250 m!3728517))

(assert (=> b!3368250 m!3728293))

(declare-fun m!3728519 () Bool)

(assert (=> b!3368250 m!3728519))

(assert (=> b!3367852 d!954721))

(declare-fun d!954733 () Bool)

(declare-fun lt!1142976 () BalanceConc!21756)

(assert (=> d!954733 (= (list!13267 lt!1142976) (originalCharacters!6062 separatorToken!241))))

(assert (=> d!954733 (= lt!1142976 (dynLambda!15233 (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))) (value!172878 separatorToken!241)))))

(assert (=> d!954733 (= (charsOf!3362 separatorToken!241) lt!1142976)))

(declare-fun b_lambda!95303 () Bool)

(assert (=> (not b_lambda!95303) (not d!954733)))

(assert (=> d!954733 t!261684))

(declare-fun b_and!233441 () Bool)

(assert (= b_and!233435 (and (=> t!261684 result!222054) b_and!233441)))

(assert (=> d!954733 t!261686))

(declare-fun b_and!233443 () Bool)

(assert (= b_and!233437 (and (=> t!261686 result!222056) b_and!233443)))

(assert (=> d!954733 t!261688))

(declare-fun b_and!233445 () Bool)

(assert (= b_and!233439 (and (=> t!261688 result!222058) b_and!233445)))

(declare-fun m!3728527 () Bool)

(assert (=> d!954733 m!3728527))

(assert (=> d!954733 m!3728429))

(assert (=> b!3367852 d!954733))

(declare-fun d!954741 () Bool)

(assert (=> d!954741 (= (list!13267 (charsOf!3362 separatorToken!241)) (list!13270 (c!573343 (charsOf!3362 separatorToken!241))))))

(declare-fun bs!554016 () Bool)

(assert (= bs!554016 d!954741))

(declare-fun m!3728529 () Bool)

(assert (=> bs!554016 m!3728529))

(assert (=> b!3367852 d!954741))

(declare-fun lt!1142982 () BalanceConc!21756)

(declare-fun d!954743 () Bool)

(declare-fun printWithSeparatorTokenList!240 (LexerInterface!4937 List!36870 Token!10062) List!36869)

(assert (=> d!954743 (= (list!13267 lt!1142982) (printWithSeparatorTokenList!240 thiss!18206 (list!13268 lt!1142830) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!56 (LexerInterface!4937 BalanceConc!21758 Token!10062 Int BalanceConc!21756) BalanceConc!21756)

(assert (=> d!954743 (= lt!1142982 (printWithSeparatorTokenTailRec!56 thiss!18206 lt!1142830 separatorToken!241 0 (BalanceConc!21757 Empty!11071)))))

(assert (=> d!954743 (isSeparator!5348 (rule!7886 separatorToken!241))))

(assert (=> d!954743 (= (printWithSeparatorToken!128 thiss!18206 lt!1142830 separatorToken!241) lt!1142982)))

(declare-fun bs!554018 () Bool)

(assert (= bs!554018 d!954743))

(declare-fun m!3728537 () Bool)

(assert (=> bs!554018 m!3728537))

(assert (=> bs!554018 m!3728115))

(assert (=> bs!554018 m!3728115))

(declare-fun m!3728539 () Bool)

(assert (=> bs!554018 m!3728539))

(declare-fun m!3728541 () Bool)

(assert (=> bs!554018 m!3728541))

(assert (=> b!3367852 d!954743))

(declare-fun b!3368253 () Bool)

(declare-fun e!2090641 () Bool)

(assert (=> b!3368253 (= e!2090641 (inv!15 (value!172878 separatorToken!241)))))

(declare-fun d!954749 () Bool)

(declare-fun c!573417 () Bool)

(assert (=> d!954749 (= c!573417 ((_ is IntegerValue!16734) (value!172878 separatorToken!241)))))

(declare-fun e!2090639 () Bool)

(assert (=> d!954749 (= (inv!21 (value!172878 separatorToken!241)) e!2090639)))

(declare-fun b!3368254 () Bool)

(declare-fun e!2090640 () Bool)

(assert (=> b!3368254 (= e!2090639 e!2090640)))

(declare-fun c!573418 () Bool)

(assert (=> b!3368254 (= c!573418 ((_ is IntegerValue!16735) (value!172878 separatorToken!241)))))

(declare-fun b!3368255 () Bool)

(declare-fun res!1362216 () Bool)

(assert (=> b!3368255 (=> res!1362216 e!2090641)))

(assert (=> b!3368255 (= res!1362216 (not ((_ is IntegerValue!16736) (value!172878 separatorToken!241))))))

(assert (=> b!3368255 (= e!2090640 e!2090641)))

(declare-fun b!3368256 () Bool)

(assert (=> b!3368256 (= e!2090639 (inv!16 (value!172878 separatorToken!241)))))

(declare-fun b!3368257 () Bool)

(assert (=> b!3368257 (= e!2090640 (inv!17 (value!172878 separatorToken!241)))))

(assert (= (and d!954749 c!573417) b!3368256))

(assert (= (and d!954749 (not c!573417)) b!3368254))

(assert (= (and b!3368254 c!573418) b!3368257))

(assert (= (and b!3368254 (not c!573418)) b!3368255))

(assert (= (and b!3368255 (not res!1362216)) b!3368253))

(declare-fun m!3728543 () Bool)

(assert (=> b!3368253 m!3728543))

(declare-fun m!3728545 () Bool)

(assert (=> b!3368256 m!3728545))

(declare-fun m!3728547 () Bool)

(assert (=> b!3368257 m!3728547))

(assert (=> b!3367854 d!954749))

(declare-fun d!954751 () Bool)

(declare-fun e!2090642 () Bool)

(assert (=> d!954751 e!2090642))

(declare-fun res!1362217 () Bool)

(assert (=> d!954751 (=> (not res!1362217) (not e!2090642))))

(declare-fun lt!1142983 () List!36869)

(assert (=> d!954751 (= res!1362217 (= (content!5048 lt!1142983) ((_ map or) (content!5048 lt!1142829) (content!5048 Nil!36745))))))

(declare-fun e!2090643 () List!36869)

(assert (=> d!954751 (= lt!1142983 e!2090643)))

(declare-fun c!573419 () Bool)

(assert (=> d!954751 (= c!573419 ((_ is Nil!36745) lt!1142829))))

(assert (=> d!954751 (= (++!8963 lt!1142829 Nil!36745) lt!1142983)))

(declare-fun b!3368259 () Bool)

(assert (=> b!3368259 (= e!2090643 (Cons!36745 (h!42165 lt!1142829) (++!8963 (t!261650 lt!1142829) Nil!36745)))))

(declare-fun b!3368261 () Bool)

(assert (=> b!3368261 (= e!2090642 (or (not (= Nil!36745 Nil!36745)) (= lt!1142983 lt!1142829)))))

(declare-fun b!3368258 () Bool)

(assert (=> b!3368258 (= e!2090643 Nil!36745)))

(declare-fun b!3368260 () Bool)

(declare-fun res!1362218 () Bool)

(assert (=> b!3368260 (=> (not res!1362218) (not e!2090642))))

(assert (=> b!3368260 (= res!1362218 (= (size!27806 lt!1142983) (+ (size!27806 lt!1142829) (size!27806 Nil!36745))))))

(assert (= (and d!954751 c!573419) b!3368258))

(assert (= (and d!954751 (not c!573419)) b!3368259))

(assert (= (and d!954751 res!1362217) b!3368260))

(assert (= (and b!3368260 res!1362218) b!3368261))

(declare-fun m!3728549 () Bool)

(assert (=> d!954751 m!3728549))

(assert (=> d!954751 m!3728511))

(declare-fun m!3728551 () Bool)

(assert (=> d!954751 m!3728551))

(declare-fun m!3728553 () Bool)

(assert (=> b!3368259 m!3728553))

(declare-fun m!3728555 () Bool)

(assert (=> b!3368260 m!3728555))

(assert (=> b!3368260 m!3728293))

(declare-fun m!3728557 () Bool)

(assert (=> b!3368260 m!3728557))

(assert (=> b!3367853 d!954751))

(declare-fun d!954753 () Bool)

(declare-fun res!1362221 () Bool)

(declare-fun e!2090646 () Bool)

(assert (=> d!954753 (=> (not res!1362221) (not e!2090646))))

(declare-fun rulesValid!1986 (LexerInterface!4937 List!36871) Bool)

(assert (=> d!954753 (= res!1362221 (rulesValid!1986 thiss!18206 rules!2135))))

(assert (=> d!954753 (= (rulesInvariant!4334 thiss!18206 rules!2135) e!2090646)))

(declare-fun b!3368264 () Bool)

(declare-datatypes ((List!36872 0))(
  ( (Nil!36748) (Cons!36748 (h!42168 String!41224) (t!261707 List!36872)) )
))
(declare-fun noDuplicateTag!1982 (LexerInterface!4937 List!36871 List!36872) Bool)

(assert (=> b!3368264 (= e!2090646 (noDuplicateTag!1982 thiss!18206 rules!2135 Nil!36748))))

(assert (= (and d!954753 res!1362221) b!3368264))

(declare-fun m!3728559 () Bool)

(assert (=> d!954753 m!3728559))

(declare-fun m!3728561 () Bool)

(assert (=> b!3368264 m!3728561))

(assert (=> b!3367832 d!954753))

(declare-fun b!3368265 () Bool)

(declare-fun e!2090647 () Bool)

(declare-fun e!2090648 () Bool)

(assert (=> b!3368265 (= e!2090647 e!2090648)))

(declare-fun res!1362227 () Bool)

(assert (=> b!3368265 (=> (not res!1362227) (not e!2090648))))

(declare-fun lt!1142984 () Bool)

(assert (=> b!3368265 (= res!1362227 (not lt!1142984))))

(declare-fun b!3368266 () Bool)

(declare-fun e!2090652 () Bool)

(declare-fun e!2090653 () Bool)

(assert (=> b!3368266 (= e!2090652 e!2090653)))

(declare-fun c!573420 () Bool)

(assert (=> b!3368266 (= c!573420 ((_ is EmptyLang!10107) (regex!5348 lt!1142826)))))

(declare-fun b!3368267 () Bool)

(assert (=> b!3368267 (= e!2090653 (not lt!1142984))))

(declare-fun d!954755 () Bool)

(assert (=> d!954755 e!2090652))

(declare-fun c!573421 () Bool)

(assert (=> d!954755 (= c!573421 ((_ is EmptyExpr!10107) (regex!5348 lt!1142826)))))

(declare-fun e!2090650 () Bool)

(assert (=> d!954755 (= lt!1142984 e!2090650)))

(declare-fun c!573422 () Bool)

(assert (=> d!954755 (= c!573422 (isEmpty!20946 lt!1142819))))

(assert (=> d!954755 (validRegex!4592 (regex!5348 lt!1142826))))

(assert (=> d!954755 (= (matchR!4699 (regex!5348 lt!1142826) lt!1142819) lt!1142984)))

(declare-fun b!3368268 () Bool)

(declare-fun call!243803 () Bool)

(assert (=> b!3368268 (= e!2090652 (= lt!1142984 call!243803))))

(declare-fun b!3368269 () Bool)

(declare-fun res!1362228 () Bool)

(assert (=> b!3368269 (=> res!1362228 e!2090647)))

(assert (=> b!3368269 (= res!1362228 (not ((_ is ElementMatch!10107) (regex!5348 lt!1142826))))))

(assert (=> b!3368269 (= e!2090653 e!2090647)))

(declare-fun b!3368270 () Bool)

(assert (=> b!3368270 (= e!2090650 (nullable!3436 (regex!5348 lt!1142826)))))

(declare-fun b!3368271 () Bool)

(declare-fun res!1362222 () Bool)

(declare-fun e!2090649 () Bool)

(assert (=> b!3368271 (=> (not res!1362222) (not e!2090649))))

(assert (=> b!3368271 (= res!1362222 (not call!243803))))

(declare-fun b!3368272 () Bool)

(declare-fun e!2090651 () Bool)

(assert (=> b!3368272 (= e!2090651 (not (= (head!7186 lt!1142819) (c!573342 (regex!5348 lt!1142826)))))))

(declare-fun b!3368273 () Bool)

(assert (=> b!3368273 (= e!2090649 (= (head!7186 lt!1142819) (c!573342 (regex!5348 lt!1142826))))))

(declare-fun b!3368274 () Bool)

(declare-fun res!1362224 () Bool)

(assert (=> b!3368274 (=> res!1362224 e!2090651)))

(assert (=> b!3368274 (= res!1362224 (not (isEmpty!20946 (tail!5323 lt!1142819))))))

(declare-fun b!3368275 () Bool)

(assert (=> b!3368275 (= e!2090650 (matchR!4699 (derivativeStep!2989 (regex!5348 lt!1142826) (head!7186 lt!1142819)) (tail!5323 lt!1142819)))))

(declare-fun b!3368276 () Bool)

(declare-fun res!1362225 () Bool)

(assert (=> b!3368276 (=> (not res!1362225) (not e!2090649))))

(assert (=> b!3368276 (= res!1362225 (isEmpty!20946 (tail!5323 lt!1142819)))))

(declare-fun b!3368277 () Bool)

(assert (=> b!3368277 (= e!2090648 e!2090651)))

(declare-fun res!1362229 () Bool)

(assert (=> b!3368277 (=> res!1362229 e!2090651)))

(assert (=> b!3368277 (= res!1362229 call!243803)))

(declare-fun b!3368278 () Bool)

(declare-fun res!1362223 () Bool)

(assert (=> b!3368278 (=> res!1362223 e!2090647)))

(assert (=> b!3368278 (= res!1362223 e!2090649)))

(declare-fun res!1362226 () Bool)

(assert (=> b!3368278 (=> (not res!1362226) (not e!2090649))))

(assert (=> b!3368278 (= res!1362226 lt!1142984)))

(declare-fun bm!243798 () Bool)

(assert (=> bm!243798 (= call!243803 (isEmpty!20946 lt!1142819))))

(assert (= (and d!954755 c!573422) b!3368270))

(assert (= (and d!954755 (not c!573422)) b!3368275))

(assert (= (and d!954755 c!573421) b!3368268))

(assert (= (and d!954755 (not c!573421)) b!3368266))

(assert (= (and b!3368266 c!573420) b!3368267))

(assert (= (and b!3368266 (not c!573420)) b!3368269))

(assert (= (and b!3368269 (not res!1362228)) b!3368278))

(assert (= (and b!3368278 res!1362226) b!3368271))

(assert (= (and b!3368271 res!1362222) b!3368276))

(assert (= (and b!3368276 res!1362225) b!3368273))

(assert (= (and b!3368278 (not res!1362223)) b!3368265))

(assert (= (and b!3368265 res!1362227) b!3368277))

(assert (= (and b!3368277 (not res!1362229)) b!3368274))

(assert (= (and b!3368274 (not res!1362224)) b!3368272))

(assert (= (or b!3368268 b!3368271 b!3368277) bm!243798))

(declare-fun m!3728563 () Bool)

(assert (=> b!3368273 m!3728563))

(declare-fun m!3728565 () Bool)

(assert (=> b!3368270 m!3728565))

(declare-fun m!3728567 () Bool)

(assert (=> d!954755 m!3728567))

(declare-fun m!3728569 () Bool)

(assert (=> d!954755 m!3728569))

(declare-fun m!3728571 () Bool)

(assert (=> b!3368274 m!3728571))

(assert (=> b!3368274 m!3728571))

(declare-fun m!3728573 () Bool)

(assert (=> b!3368274 m!3728573))

(assert (=> b!3368275 m!3728563))

(assert (=> b!3368275 m!3728563))

(declare-fun m!3728575 () Bool)

(assert (=> b!3368275 m!3728575))

(assert (=> b!3368275 m!3728571))

(assert (=> b!3368275 m!3728575))

(assert (=> b!3368275 m!3728571))

(declare-fun m!3728577 () Bool)

(assert (=> b!3368275 m!3728577))

(assert (=> b!3368272 m!3728563))

(assert (=> bm!243798 m!3728567))

(assert (=> b!3368276 m!3728571))

(assert (=> b!3368276 m!3728571))

(assert (=> b!3368276 m!3728573))

(assert (=> b!3367855 d!954755))

(declare-fun d!954757 () Bool)

(assert (=> d!954757 (= (get!11713 lt!1142828) (v!36343 lt!1142828))))

(assert (=> b!3367855 d!954757))

(declare-fun d!954759 () Bool)

(declare-fun res!1362234 () Bool)

(declare-fun e!2090658 () Bool)

(assert (=> d!954759 (=> res!1362234 e!2090658)))

(assert (=> d!954759 (= res!1362234 ((_ is Nil!36746) tokens!494))))

(assert (=> d!954759 (= (forall!7707 tokens!494 lambda!120205) e!2090658)))

(declare-fun b!3368283 () Bool)

(declare-fun e!2090659 () Bool)

(assert (=> b!3368283 (= e!2090658 e!2090659)))

(declare-fun res!1362235 () Bool)

(assert (=> b!3368283 (=> (not res!1362235) (not e!2090659))))

(assert (=> b!3368283 (= res!1362235 (dynLambda!15234 lambda!120205 (h!42166 tokens!494)))))

(declare-fun b!3368284 () Bool)

(assert (=> b!3368284 (= e!2090659 (forall!7707 (t!261651 tokens!494) lambda!120205))))

(assert (= (and d!954759 (not res!1362234)) b!3368283))

(assert (= (and b!3368283 res!1362235) b!3368284))

(declare-fun b_lambda!95305 () Bool)

(assert (=> (not b_lambda!95305) (not b!3368283)))

(assert (=> b!3368283 m!3728441))

(declare-fun m!3728579 () Bool)

(assert (=> b!3368284 m!3728579))

(assert (=> b!3367834 d!954759))

(declare-fun d!954761 () Bool)

(declare-fun res!1362240 () Bool)

(declare-fun e!2090664 () Bool)

(assert (=> d!954761 (=> res!1362240 e!2090664)))

(assert (=> d!954761 (= res!1362240 (not ((_ is Cons!36747) rules!2135)))))

(assert (=> d!954761 (= (sepAndNonSepRulesDisjointChars!1542 rules!2135 rules!2135) e!2090664)))

(declare-fun b!3368289 () Bool)

(declare-fun e!2090665 () Bool)

(assert (=> b!3368289 (= e!2090664 e!2090665)))

(declare-fun res!1362241 () Bool)

(assert (=> b!3368289 (=> (not res!1362241) (not e!2090665))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!663 (Rule!10496 List!36871) Bool)

(assert (=> b!3368289 (= res!1362241 (ruleDisjointCharsFromAllFromOtherType!663 (h!42167 rules!2135) rules!2135))))

(declare-fun b!3368290 () Bool)

(assert (=> b!3368290 (= e!2090665 (sepAndNonSepRulesDisjointChars!1542 rules!2135 (t!261652 rules!2135)))))

(assert (= (and d!954761 (not res!1362240)) b!3368289))

(assert (= (and b!3368289 res!1362241) b!3368290))

(declare-fun m!3728581 () Bool)

(assert (=> b!3368289 m!3728581))

(declare-fun m!3728583 () Bool)

(assert (=> b!3368290 m!3728583))

(assert (=> b!3367833 d!954761))

(declare-fun b!3368301 () Bool)

(declare-fun b_free!88053 () Bool)

(declare-fun b_next!88757 () Bool)

(assert (=> b!3368301 (= b_free!88053 (not b_next!88757))))

(declare-fun tp!1053923 () Bool)

(declare-fun b_and!233447 () Bool)

(assert (=> b!3368301 (= tp!1053923 b_and!233447)))

(declare-fun b_free!88055 () Bool)

(declare-fun b_next!88759 () Bool)

(assert (=> b!3368301 (= b_free!88055 (not b_next!88759))))

(declare-fun t!261691 () Bool)

(declare-fun tb!178795 () Bool)

(assert (=> (and b!3368301 (= (toChars!7387 (transformation!5348 (h!42167 (t!261652 rules!2135)))) (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494))))) t!261691) tb!178795))

(declare-fun result!222062 () Bool)

(assert (= result!222062 result!222046))

(assert (=> d!954687 t!261691))

(assert (=> b!3368129 t!261691))

(declare-fun t!261693 () Bool)

(declare-fun tb!178797 () Bool)

(assert (=> (and b!3368301 (= (toChars!7387 (transformation!5348 (h!42167 (t!261652 rules!2135)))) (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241)))) t!261693) tb!178797))

(declare-fun result!222064 () Bool)

(assert (= result!222064 result!222054))

(assert (=> b!3368150 t!261693))

(assert (=> d!954733 t!261693))

(declare-fun b_and!233449 () Bool)

(declare-fun tp!1053921 () Bool)

(assert (=> b!3368301 (= tp!1053921 (and (=> t!261691 result!222062) (=> t!261693 result!222064) b_and!233449))))

(declare-fun e!2090677 () Bool)

(assert (=> b!3368301 (= e!2090677 (and tp!1053923 tp!1053921))))

(declare-fun e!2090676 () Bool)

(declare-fun b!3368300 () Bool)

(declare-fun tp!1053922 () Bool)

(assert (=> b!3368300 (= e!2090676 (and tp!1053922 (inv!49799 (tag!5908 (h!42167 (t!261652 rules!2135)))) (inv!49802 (transformation!5348 (h!42167 (t!261652 rules!2135)))) e!2090677))))

(declare-fun b!3368299 () Bool)

(declare-fun e!2090674 () Bool)

(declare-fun tp!1053924 () Bool)

(assert (=> b!3368299 (= e!2090674 (and e!2090676 tp!1053924))))

(assert (=> b!3367835 (= tp!1053892 e!2090674)))

(assert (= b!3368300 b!3368301))

(assert (= b!3368299 b!3368300))

(assert (= (and b!3367835 ((_ is Cons!36747) (t!261652 rules!2135))) b!3368299))

(declare-fun m!3728585 () Bool)

(assert (=> b!3368300 m!3728585))

(declare-fun m!3728587 () Bool)

(assert (=> b!3368300 m!3728587))

(declare-fun b!3368315 () Bool)

(declare-fun b_free!88057 () Bool)

(declare-fun b_next!88761 () Bool)

(assert (=> b!3368315 (= b_free!88057 (not b_next!88761))))

(declare-fun tp!1053937 () Bool)

(declare-fun b_and!233451 () Bool)

(assert (=> b!3368315 (= tp!1053937 b_and!233451)))

(declare-fun b_free!88059 () Bool)

(declare-fun b_next!88763 () Bool)

(assert (=> b!3368315 (= b_free!88059 (not b_next!88763))))

(declare-fun t!261695 () Bool)

(declare-fun tb!178799 () Bool)

(assert (=> (and b!3368315 (= (toChars!7387 (transformation!5348 (rule!7886 (h!42166 (t!261651 tokens!494))))) (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494))))) t!261695) tb!178799))

(declare-fun result!222068 () Bool)

(assert (= result!222068 result!222046))

(assert (=> d!954687 t!261695))

(assert (=> b!3368129 t!261695))

(declare-fun t!261697 () Bool)

(declare-fun tb!178801 () Bool)

(assert (=> (and b!3368315 (= (toChars!7387 (transformation!5348 (rule!7886 (h!42166 (t!261651 tokens!494))))) (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241)))) t!261697) tb!178801))

(declare-fun result!222070 () Bool)

(assert (= result!222070 result!222054))

(assert (=> b!3368150 t!261697))

(assert (=> d!954733 t!261697))

(declare-fun b_and!233453 () Bool)

(declare-fun tp!1053936 () Bool)

(assert (=> b!3368315 (= tp!1053936 (and (=> t!261695 result!222068) (=> t!261697 result!222070) b_and!233453))))

(declare-fun e!2090694 () Bool)

(declare-fun b!3368312 () Bool)

(declare-fun tp!1053939 () Bool)

(declare-fun e!2090695 () Bool)

(assert (=> b!3368312 (= e!2090695 (and (inv!49803 (h!42166 (t!261651 tokens!494))) e!2090694 tp!1053939))))

(declare-fun e!2090691 () Bool)

(declare-fun b!3368313 () Bool)

(declare-fun tp!1053938 () Bool)

(assert (=> b!3368313 (= e!2090694 (and (inv!21 (value!172878 (h!42166 (t!261651 tokens!494)))) e!2090691 tp!1053938))))

(declare-fun e!2090692 () Bool)

(assert (=> b!3368315 (= e!2090692 (and tp!1053937 tp!1053936))))

(assert (=> b!3367858 (= tp!1053904 e!2090695)))

(declare-fun b!3368314 () Bool)

(declare-fun tp!1053935 () Bool)

(assert (=> b!3368314 (= e!2090691 (and tp!1053935 (inv!49799 (tag!5908 (rule!7886 (h!42166 (t!261651 tokens!494))))) (inv!49802 (transformation!5348 (rule!7886 (h!42166 (t!261651 tokens!494))))) e!2090692))))

(assert (= b!3368314 b!3368315))

(assert (= b!3368313 b!3368314))

(assert (= b!3368312 b!3368313))

(assert (= (and b!3367858 ((_ is Cons!36746) (t!261651 tokens!494))) b!3368312))

(declare-fun m!3728589 () Bool)

(assert (=> b!3368312 m!3728589))

(declare-fun m!3728591 () Bool)

(assert (=> b!3368313 m!3728591))

(declare-fun m!3728593 () Bool)

(assert (=> b!3368314 m!3728593))

(declare-fun m!3728595 () Bool)

(assert (=> b!3368314 m!3728595))

(declare-fun b!3368335 () Bool)

(declare-fun e!2090702 () Bool)

(declare-fun tp!1053953 () Bool)

(declare-fun tp!1053954 () Bool)

(assert (=> b!3368335 (= e!2090702 (and tp!1053953 tp!1053954))))

(declare-fun b!3368334 () Bool)

(declare-fun tp!1053952 () Bool)

(assert (=> b!3368334 (= e!2090702 tp!1053952)))

(declare-fun b!3368332 () Bool)

(declare-fun tp_is_empty!17443 () Bool)

(assert (=> b!3368332 (= e!2090702 tp_is_empty!17443)))

(declare-fun b!3368333 () Bool)

(declare-fun tp!1053950 () Bool)

(declare-fun tp!1053951 () Bool)

(assert (=> b!3368333 (= e!2090702 (and tp!1053950 tp!1053951))))

(assert (=> b!3367842 (= tp!1053903 e!2090702)))

(assert (= (and b!3367842 ((_ is ElementMatch!10107) (regex!5348 (h!42167 rules!2135)))) b!3368332))

(assert (= (and b!3367842 ((_ is Concat!15685) (regex!5348 (h!42167 rules!2135)))) b!3368333))

(assert (= (and b!3367842 ((_ is Star!10107) (regex!5348 (h!42167 rules!2135)))) b!3368334))

(assert (= (and b!3367842 ((_ is Union!10107) (regex!5348 (h!42167 rules!2135)))) b!3368335))

(declare-fun b!3368339 () Bool)

(declare-fun e!2090703 () Bool)

(declare-fun tp!1053958 () Bool)

(declare-fun tp!1053959 () Bool)

(assert (=> b!3368339 (= e!2090703 (and tp!1053958 tp!1053959))))

(declare-fun b!3368338 () Bool)

(declare-fun tp!1053957 () Bool)

(assert (=> b!3368338 (= e!2090703 tp!1053957)))

(declare-fun b!3368336 () Bool)

(assert (=> b!3368336 (= e!2090703 tp_is_empty!17443)))

(declare-fun b!3368337 () Bool)

(declare-fun tp!1053955 () Bool)

(declare-fun tp!1053956 () Bool)

(assert (=> b!3368337 (= e!2090703 (and tp!1053955 tp!1053956))))

(assert (=> b!3367841 (= tp!1053893 e!2090703)))

(assert (= (and b!3367841 ((_ is ElementMatch!10107) (regex!5348 (rule!7886 separatorToken!241)))) b!3368336))

(assert (= (and b!3367841 ((_ is Concat!15685) (regex!5348 (rule!7886 separatorToken!241)))) b!3368337))

(assert (= (and b!3367841 ((_ is Star!10107) (regex!5348 (rule!7886 separatorToken!241)))) b!3368338))

(assert (= (and b!3367841 ((_ is Union!10107) (regex!5348 (rule!7886 separatorToken!241)))) b!3368339))

(declare-fun b!3368343 () Bool)

(declare-fun e!2090704 () Bool)

(declare-fun tp!1053963 () Bool)

(declare-fun tp!1053964 () Bool)

(assert (=> b!3368343 (= e!2090704 (and tp!1053963 tp!1053964))))

(declare-fun b!3368342 () Bool)

(declare-fun tp!1053962 () Bool)

(assert (=> b!3368342 (= e!2090704 tp!1053962)))

(declare-fun b!3368340 () Bool)

(assert (=> b!3368340 (= e!2090704 tp_is_empty!17443)))

(declare-fun b!3368341 () Bool)

(declare-fun tp!1053960 () Bool)

(declare-fun tp!1053961 () Bool)

(assert (=> b!3368341 (= e!2090704 (and tp!1053960 tp!1053961))))

(assert (=> b!3367836 (= tp!1053894 e!2090704)))

(assert (= (and b!3367836 ((_ is ElementMatch!10107) (regex!5348 (rule!7886 (h!42166 tokens!494))))) b!3368340))

(assert (= (and b!3367836 ((_ is Concat!15685) (regex!5348 (rule!7886 (h!42166 tokens!494))))) b!3368341))

(assert (= (and b!3367836 ((_ is Star!10107) (regex!5348 (rule!7886 (h!42166 tokens!494))))) b!3368342))

(assert (= (and b!3367836 ((_ is Union!10107) (regex!5348 (rule!7886 (h!42166 tokens!494))))) b!3368343))

(declare-fun b!3368348 () Bool)

(declare-fun e!2090707 () Bool)

(declare-fun tp!1053967 () Bool)

(assert (=> b!3368348 (= e!2090707 (and tp_is_empty!17443 tp!1053967))))

(assert (=> b!3367854 (= tp!1053897 e!2090707)))

(assert (= (and b!3367854 ((_ is Cons!36745) (originalCharacters!6062 separatorToken!241))) b!3368348))

(declare-fun b!3368349 () Bool)

(declare-fun e!2090708 () Bool)

(declare-fun tp!1053968 () Bool)

(assert (=> b!3368349 (= e!2090708 (and tp_is_empty!17443 tp!1053968))))

(assert (=> b!3367839 (= tp!1053896 e!2090708)))

(assert (= (and b!3367839 ((_ is Cons!36745) (originalCharacters!6062 (h!42166 tokens!494)))) b!3368349))

(declare-fun b_lambda!95307 () Bool)

(assert (= b_lambda!95303 (or (and b!3368301 b_free!88055 (= (toChars!7387 (transformation!5348 (h!42167 (t!261652 rules!2135)))) (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))))) (and b!3367838 b_free!88047 (= (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))) (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))))) (and b!3367851 b_free!88043) (and b!3367845 b_free!88051 (= (toChars!7387 (transformation!5348 (h!42167 rules!2135))) (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))))) (and b!3368315 b_free!88059 (= (toChars!7387 (transformation!5348 (rule!7886 (h!42166 (t!261651 tokens!494))))) (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))))) b_lambda!95307)))

(declare-fun b_lambda!95309 () Bool)

(assert (= b_lambda!95293 (or (and b!3367845 b_free!88051 (= (toChars!7387 (transformation!5348 (h!42167 rules!2135))) (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))))) (and b!3368301 b_free!88055 (= (toChars!7387 (transformation!5348 (h!42167 (t!261652 rules!2135)))) (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))))) (and b!3367838 b_free!88047) (and b!3368315 b_free!88059 (= (toChars!7387 (transformation!5348 (rule!7886 (h!42166 (t!261651 tokens!494))))) (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))))) (and b!3367851 b_free!88043 (= (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))) (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))))) b_lambda!95309)))

(declare-fun b_lambda!95311 () Bool)

(assert (= b_lambda!95305 (or b!3367834 b_lambda!95311)))

(declare-fun bs!554019 () Bool)

(declare-fun d!954763 () Bool)

(assert (= bs!554019 (and d!954763 b!3367834)))

(assert (=> bs!554019 (= (dynLambda!15234 lambda!120205 (h!42166 tokens!494)) (not (isSeparator!5348 (rule!7886 (h!42166 tokens!494)))))))

(assert (=> b!3368283 d!954763))

(declare-fun b_lambda!95313 () Bool)

(assert (= b_lambda!95299 (or b!3367834 b_lambda!95313)))

(assert (=> d!954711 d!954763))

(declare-fun b_lambda!95315 () Bool)

(assert (= b_lambda!95297 (or (and b!3368301 b_free!88055 (= (toChars!7387 (transformation!5348 (h!42167 (t!261652 rules!2135)))) (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))))) (and b!3367838 b_free!88047 (= (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))) (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))))) (and b!3367851 b_free!88043) (and b!3367845 b_free!88051 (= (toChars!7387 (transformation!5348 (h!42167 rules!2135))) (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))))) (and b!3368315 b_free!88059 (= (toChars!7387 (transformation!5348 (rule!7886 (h!42166 (t!261651 tokens!494))))) (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))))) b_lambda!95315)))

(declare-fun b_lambda!95317 () Bool)

(assert (= b_lambda!95295 (or (and b!3367845 b_free!88051 (= (toChars!7387 (transformation!5348 (h!42167 rules!2135))) (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))))) (and b!3368301 b_free!88055 (= (toChars!7387 (transformation!5348 (h!42167 (t!261652 rules!2135)))) (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))))) (and b!3367838 b_free!88047) (and b!3368315 b_free!88059 (= (toChars!7387 (transformation!5348 (rule!7886 (h!42166 (t!261651 tokens!494))))) (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))))) (and b!3367851 b_free!88043 (= (toChars!7387 (transformation!5348 (rule!7886 separatorToken!241))) (toChars!7387 (transformation!5348 (rule!7886 (h!42166 tokens!494)))))) b_lambda!95317)))

(check-sat (not b_lambda!95307) (not tb!178789) (not b!3368217) (not b!3368215) (not d!954675) (not b!3367929) (not d!954713) (not b!3368121) (not b!3368130) (not b_next!88753) (not b!3368035) (not b!3368284) (not d!954605) b_and!233391 (not b_next!88757) (not b!3368033) (not b_lambda!95317) (not b_lambda!95313) (not b!3368219) (not b_next!88759) (not b_lambda!95311) (not d!954669) (not d!954711) (not b!3368272) (not d!954593) (not d!954641) (not bm!243798) (not b!3367963) (not b!3368112) (not d!954685) (not b!3368259) (not b!3368289) (not d!954743) (not b!3368273) (not b_lambda!95309) (not d!954755) (not b!3368129) (not d!954603) (not b!3368108) (not b_lambda!95315) (not b!3368166) (not b!3368274) (not d!954647) (not b!3368095) (not b!3368114) (not b_next!88763) tp_is_empty!17443 (not d!954753) (not b!3368101) (not d!954659) (not b!3368034) (not b!3368341) (not b!3368038) (not d!954637) b_and!233449 (not d!954699) (not b!3368115) (not d!954691) (not b!3368213) (not d!954679) (not b!3368124) (not d!954687) (not b!3368264) (not b!3367930) b_and!233453 (not b!3368333) (not b!3368334) (not b!3368149) b_and!233387 (not b!3368313) (not b!3368045) (not b!3368275) (not d!954607) (not d!954705) (not b!3368044) (not b_next!88755) (not b!3368109) (not b!3368139) (not d!954681) (not b!3367928) (not d!954665) (not d!954695) (not d!954721) (not b!3368276) (not d!954741) (not b!3368142) (not d!954719) (not b!3368150) (not b!3368250) b_and!233445 (not b!3368312) (not b_next!88747) b_and!233443 (not d!954693) (not b!3368300) (not bm!243797) b_and!233441 (not b!3368122) (not b!3368218) (not b!3368256) (not d!954573) (not b!3368110) (not b!3368260) (not b!3368343) (not b!3368151) (not d!954751) (not b!3368137) (not d!954689) (not d!954631) (not b!3368338) (not b!3368257) (not b_next!88745) (not b!3368152) (not b!3368253) (not d!954697) (not b!3368163) (not b!3368348) (not b!3368349) (not tb!178783) (not d!954677) (not b!3368170) (not b!3368092) (not b!3368216) (not b!3368290) (not b!3368270) (not d!954683) (not b!3368147) (not b!3368032) (not b_next!88749) (not b_next!88761) (not b!3368314) (not d!954733) (not b!3368335) (not b!3368337) b_and!233395 (not d!954707) b_and!233447 (not d!954645) (not b!3368167) (not b!3367972) b_and!233451 (not b!3368339) (not b_next!88751) (not b!3368299) (not b!3368123) (not b!3368094) (not b!3368039) (not b!3368342) (not b!3368249))
(check-sat (not b_next!88759) (not b_next!88763) b_and!233449 (not b_next!88755) b_and!233441 (not b_next!88745) (not b_next!88749) (not b_next!88761) b_and!233451 (not b_next!88751) (not b_next!88753) b_and!233391 (not b_next!88757) b_and!233453 b_and!233387 b_and!233445 (not b_next!88747) b_and!233443 b_and!233395 b_and!233447)
