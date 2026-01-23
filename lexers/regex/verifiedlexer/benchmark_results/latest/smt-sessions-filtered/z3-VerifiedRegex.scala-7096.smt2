; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376352 () Bool)

(assert start!376352)

(declare-fun b!3998809 () Bool)

(declare-fun b_free!111081 () Bool)

(declare-fun b_next!111785 () Bool)

(assert (=> b!3998809 (= b_free!111081 (not b_next!111785))))

(declare-fun tp!1217013 () Bool)

(declare-fun b_and!307071 () Bool)

(assert (=> b!3998809 (= tp!1217013 b_and!307071)))

(declare-fun b_free!111083 () Bool)

(declare-fun b_next!111787 () Bool)

(assert (=> b!3998809 (= b_free!111083 (not b_next!111787))))

(declare-fun tp!1217017 () Bool)

(declare-fun b_and!307073 () Bool)

(assert (=> b!3998809 (= tp!1217017 b_and!307073)))

(declare-fun b!3998788 () Bool)

(declare-fun b_free!111085 () Bool)

(declare-fun b_next!111789 () Bool)

(assert (=> b!3998788 (= b_free!111085 (not b_next!111789))))

(declare-fun tp!1217011 () Bool)

(declare-fun b_and!307075 () Bool)

(assert (=> b!3998788 (= tp!1217011 b_and!307075)))

(declare-fun b_free!111087 () Bool)

(declare-fun b_next!111791 () Bool)

(assert (=> b!3998788 (= b_free!111087 (not b_next!111791))))

(declare-fun tp!1217018 () Bool)

(declare-fun b_and!307077 () Bool)

(assert (=> b!3998788 (= tp!1217018 b_and!307077)))

(declare-fun b!3998783 () Bool)

(declare-datatypes ((Unit!61709 0))(
  ( (Unit!61710) )
))
(declare-fun e!2479305 () Unit!61709)

(declare-fun Unit!61711 () Unit!61709)

(assert (=> b!3998783 (= e!2479305 Unit!61711)))

(declare-datatypes ((C!23556 0))(
  ( (C!23557 (val!13872 Int)) )
))
(declare-datatypes ((List!42890 0))(
  ( (Nil!42766) (Cons!42766 (h!48186 C!23556) (t!332121 List!42890)) )
))
(declare-datatypes ((IArray!25987 0))(
  ( (IArray!25988 (innerList!13051 List!42890)) )
))
(declare-datatypes ((Conc!12991 0))(
  ( (Node!12991 (left!32291 Conc!12991) (right!32621 Conc!12991) (csize!26212 Int) (cheight!13202 Int)) (Leaf!20088 (xs!16297 IArray!25987) (csize!26213 Int)) (Empty!12991) )
))
(declare-datatypes ((BalanceConc!25576 0))(
  ( (BalanceConc!25577 (c!691754 Conc!12991)) )
))
(declare-datatypes ((List!42891 0))(
  ( (Nil!42767) (Cons!42767 (h!48187 (_ BitVec 16)) (t!332122 List!42891)) )
))
(declare-datatypes ((TokenValue!7010 0))(
  ( (FloatLiteralValue!14020 (text!49515 List!42891)) (TokenValueExt!7009 (__x!26237 Int)) (Broken!35050 (value!213838 List!42891)) (Object!7133) (End!7010) (Def!7010) (Underscore!7010) (Match!7010) (Else!7010) (Error!7010) (Case!7010) (If!7010) (Extends!7010) (Abstract!7010) (Class!7010) (Val!7010) (DelimiterValue!14020 (del!7070 List!42891)) (KeywordValue!7016 (value!213839 List!42891)) (CommentValue!14020 (value!213840 List!42891)) (WhitespaceValue!14020 (value!213841 List!42891)) (IndentationValue!7010 (value!213842 List!42891)) (String!48767) (Int32!7010) (Broken!35051 (value!213843 List!42891)) (Boolean!7011) (Unit!61712) (OperatorValue!7013 (op!7070 List!42891)) (IdentifierValue!14020 (value!213844 List!42891)) (IdentifierValue!14021 (value!213845 List!42891)) (WhitespaceValue!14021 (value!213846 List!42891)) (True!14020) (False!14020) (Broken!35052 (value!213847 List!42891)) (Broken!35053 (value!213848 List!42891)) (True!14021) (RightBrace!7010) (RightBracket!7010) (Colon!7010) (Null!7010) (Comma!7010) (LeftBracket!7010) (False!14021) (LeftBrace!7010) (ImaginaryLiteralValue!7010 (text!49516 List!42891)) (StringLiteralValue!21030 (value!213849 List!42891)) (EOFValue!7010 (value!213850 List!42891)) (IdentValue!7010 (value!213851 List!42891)) (DelimiterValue!14021 (value!213852 List!42891)) (DedentValue!7010 (value!213853 List!42891)) (NewLineValue!7010 (value!213854 List!42891)) (IntegerValue!21030 (value!213855 (_ BitVec 32)) (text!49517 List!42891)) (IntegerValue!21031 (value!213856 Int) (text!49518 List!42891)) (Times!7010) (Or!7010) (Equal!7010) (Minus!7010) (Broken!35054 (value!213857 List!42891)) (And!7010) (Div!7010) (LessEqual!7010) (Mod!7010) (Concat!18695) (Not!7010) (Plus!7010) (SpaceValue!7010 (value!213858 List!42891)) (IntegerValue!21032 (value!213859 Int) (text!49519 List!42891)) (StringLiteralValue!21031 (text!49520 List!42891)) (FloatLiteralValue!14021 (text!49521 List!42891)) (BytesLiteralValue!7010 (value!213860 List!42891)) (CommentValue!14021 (value!213861 List!42891)) (StringLiteralValue!21032 (value!213862 List!42891)) (ErrorTokenValue!7010 (msg!7071 List!42891)) )
))
(declare-datatypes ((Regex!11685 0))(
  ( (ElementMatch!11685 (c!691755 C!23556)) (Concat!18696 (regOne!23882 Regex!11685) (regTwo!23882 Regex!11685)) (EmptyExpr!11685) (Star!11685 (reg!12014 Regex!11685)) (EmptyLang!11685) (Union!11685 (regOne!23883 Regex!11685) (regTwo!23883 Regex!11685)) )
))
(declare-datatypes ((String!48768 0))(
  ( (String!48769 (value!213863 String)) )
))
(declare-datatypes ((TokenValueInjection!13448 0))(
  ( (TokenValueInjection!13449 (toValue!9268 Int) (toChars!9127 Int)) )
))
(declare-datatypes ((Rule!13360 0))(
  ( (Rule!13361 (regex!6780 Regex!11685) (tag!7640 String!48768) (isSeparator!6780 Bool) (transformation!6780 TokenValueInjection!13448)) )
))
(declare-datatypes ((Token!12698 0))(
  ( (Token!12699 (value!213864 TokenValue!7010) (rule!9810 Rule!13360) (size!31981 Int) (originalCharacters!7380 List!42890)) )
))
(declare-fun token!484 () Token!12698)

(declare-fun lt!1413079 () List!42890)

(declare-fun lt!1413089 () List!42890)

(declare-fun lt!1413092 () List!42890)

(declare-datatypes ((LexerInterface!6369 0))(
  ( (LexerInterfaceExt!6366 (__x!26238 Int)) (Lexer!6367) )
))
(declare-fun thiss!21717 () LexerInterface!6369)

(declare-datatypes ((List!42892 0))(
  ( (Nil!42768) (Cons!42768 (h!48188 Rule!13360) (t!332123 List!42892)) )
))
(declare-fun rules!2999 () List!42892)

(declare-fun lt!1413100 () Unit!61709)

(declare-datatypes ((tuple2!41954 0))(
  ( (tuple2!41955 (_1!24111 Token!12698) (_2!24111 List!42890)) )
))
(declare-datatypes ((Option!9194 0))(
  ( (None!9193) (Some!9193 (v!39553 tuple2!41954)) )
))
(declare-fun lt!1413120 () Option!9194)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!434 (LexerInterface!6369 List!42892 Rule!13360 List!42890 List!42890 List!42890 Rule!13360) Unit!61709)

(assert (=> b!3998783 (= lt!1413100 (lemmaMaxPrefixOutputsMaxPrefix!434 thiss!21717 rules!2999 (rule!9810 token!484) lt!1413079 lt!1413092 lt!1413089 (rule!9810 (_1!24111 (v!39553 lt!1413120)))))))

(declare-fun res!1624338 () Bool)

(declare-fun matchR!5662 (Regex!11685 List!42890) Bool)

(assert (=> b!3998783 (= res!1624338 (not (matchR!5662 (regex!6780 (rule!9810 (_1!24111 (v!39553 lt!1413120)))) lt!1413089)))))

(declare-fun e!2479303 () Bool)

(assert (=> b!3998783 (=> (not res!1624338) (not e!2479303))))

(assert (=> b!3998783 e!2479303))

(declare-fun b!3998784 () Bool)

(declare-fun e!2479274 () Bool)

(declare-fun tp_is_empty!20341 () Bool)

(declare-fun tp!1217014 () Bool)

(assert (=> b!3998784 (= e!2479274 (and tp_is_empty!20341 tp!1217014))))

(declare-fun b!3998785 () Bool)

(declare-fun e!2479286 () Bool)

(declare-fun tp!1217012 () Bool)

(assert (=> b!3998785 (= e!2479286 (and tp_is_empty!20341 tp!1217012))))

(declare-fun b!3998786 () Bool)

(declare-fun e!2479307 () Unit!61709)

(declare-fun Unit!61713 () Unit!61709)

(assert (=> b!3998786 (= e!2479307 Unit!61713)))

(declare-fun b!3998787 () Bool)

(declare-fun e!2479285 () Bool)

(assert (=> b!3998787 (= e!2479285 false)))

(declare-fun e!2479293 () Bool)

(assert (=> b!3998788 (= e!2479293 (and tp!1217011 tp!1217018))))

(declare-fun b!3998789 () Bool)

(assert (=> b!3998789 (= e!2479303 false)))

(declare-fun b!3998790 () Bool)

(declare-fun e!2479275 () Unit!61709)

(declare-fun Unit!61714 () Unit!61709)

(assert (=> b!3998790 (= e!2479275 Unit!61714)))

(declare-fun lt!1413066 () List!42890)

(declare-fun lt!1413111 () Unit!61709)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!276 (LexerInterface!6369 List!42892 Rule!13360 List!42890 List!42890 Rule!13360) Unit!61709)

(assert (=> b!3998790 (= lt!1413111 (lemmaMaxPrefNoSmallerRuleMatches!276 thiss!21717 rules!2999 (rule!9810 (_1!24111 (v!39553 lt!1413120))) lt!1413089 lt!1413066 (rule!9810 token!484)))))

(declare-fun res!1624322 () Bool)

(assert (=> b!3998790 (= res!1624322 (not (matchR!5662 (regex!6780 (rule!9810 token!484)) lt!1413089)))))

(assert (=> b!3998790 (=> (not res!1624322) (not e!2479285))))

(assert (=> b!3998790 e!2479285))

(declare-fun b!3998791 () Bool)

(declare-fun e!2479278 () Bool)

(declare-fun e!2479283 () Bool)

(declare-fun tp!1217016 () Bool)

(assert (=> b!3998791 (= e!2479278 (and e!2479283 tp!1217016))))

(declare-fun b!3998792 () Bool)

(declare-fun res!1624337 () Bool)

(declare-fun e!2479300 () Bool)

(assert (=> b!3998792 (=> (not res!1624337) (not e!2479300))))

(declare-fun newSuffix!27 () List!42890)

(declare-fun suffix!1299 () List!42890)

(declare-fun isPrefix!3867 (List!42890 List!42890) Bool)

(assert (=> b!3998792 (= res!1624337 (isPrefix!3867 newSuffix!27 suffix!1299))))

(declare-fun res!1624331 () Bool)

(assert (=> start!376352 (=> (not res!1624331) (not e!2479300))))

(get-info :version)

(assert (=> start!376352 (= res!1624331 ((_ is Lexer!6367) thiss!21717))))

(assert (=> start!376352 e!2479300))

(declare-fun e!2479290 () Bool)

(assert (=> start!376352 e!2479290))

(declare-fun e!2479313 () Bool)

(declare-fun inv!57117 (Token!12698) Bool)

(assert (=> start!376352 (and (inv!57117 token!484) e!2479313)))

(declare-fun e!2479311 () Bool)

(assert (=> start!376352 e!2479311))

(declare-fun e!2479304 () Bool)

(assert (=> start!376352 e!2479304))

(assert (=> start!376352 e!2479286))

(assert (=> start!376352 true))

(assert (=> start!376352 e!2479278))

(assert (=> start!376352 e!2479274))

(declare-fun b!3998793 () Bool)

(declare-fun e!2479299 () Bool)

(declare-fun e!2479295 () Bool)

(assert (=> b!3998793 (= e!2479299 e!2479295)))

(declare-fun res!1624341 () Bool)

(assert (=> b!3998793 (=> res!1624341 e!2479295)))

(declare-fun lt!1413070 () List!42890)

(assert (=> b!3998793 (= res!1624341 (not (= lt!1413070 lt!1413092)))))

(declare-fun prefix!494 () List!42890)

(declare-fun lt!1413067 () List!42890)

(declare-fun ++!11182 (List!42890 List!42890) List!42890)

(assert (=> b!3998793 (= lt!1413070 (++!11182 prefix!494 lt!1413067))))

(declare-fun lt!1413107 () List!42890)

(assert (=> b!3998793 (= lt!1413070 (++!11182 lt!1413066 lt!1413107))))

(declare-fun lt!1413130 () Unit!61709)

(declare-fun lemmaConcatAssociativity!2502 (List!42890 List!42890 List!42890) Unit!61709)

(assert (=> b!3998793 (= lt!1413130 (lemmaConcatAssociativity!2502 prefix!494 newSuffix!27 lt!1413107))))

(declare-fun b!3998794 () Bool)

(declare-fun e!2479296 () Bool)

(declare-fun e!2479302 () Bool)

(assert (=> b!3998794 (= e!2479296 e!2479302)))

(declare-fun res!1624343 () Bool)

(assert (=> b!3998794 (=> res!1624343 e!2479302)))

(assert (=> b!3998794 (= res!1624343 (not (= (_1!24111 (v!39553 lt!1413120)) token!484)))))

(assert (=> b!3998794 (= (rule!9810 (_1!24111 (v!39553 lt!1413120))) (rule!9810 token!484))))

(declare-fun lt!1413075 () Unit!61709)

(declare-fun lemmaSameIndexThenSameElement!256 (List!42892 Rule!13360 Rule!13360) Unit!61709)

(assert (=> b!3998794 (= lt!1413075 (lemmaSameIndexThenSameElement!256 rules!2999 (rule!9810 (_1!24111 (v!39553 lt!1413120))) (rule!9810 token!484)))))

(declare-fun lt!1413090 () Unit!61709)

(assert (=> b!3998794 (= lt!1413090 e!2479275)))

(declare-fun c!691750 () Bool)

(declare-fun lt!1413091 () Int)

(declare-fun lt!1413121 () Int)

(assert (=> b!3998794 (= c!691750 (> lt!1413091 lt!1413121))))

(declare-fun lt!1413109 () Unit!61709)

(assert (=> b!3998794 (= lt!1413109 e!2479307)))

(declare-fun c!691752 () Bool)

(assert (=> b!3998794 (= c!691752 (< lt!1413091 lt!1413121))))

(declare-fun getIndex!550 (List!42892 Rule!13360) Int)

(assert (=> b!3998794 (= lt!1413121 (getIndex!550 rules!2999 (rule!9810 token!484)))))

(assert (=> b!3998794 (= lt!1413091 (getIndex!550 rules!2999 (rule!9810 (_1!24111 (v!39553 lt!1413120)))))))

(declare-fun newSuffixResult!27 () List!42890)

(assert (=> b!3998794 (= (_2!24111 (v!39553 lt!1413120)) newSuffixResult!27)))

(declare-fun lt!1413108 () Unit!61709)

(declare-fun lemmaSamePrefixThenSameSuffix!2054 (List!42890 List!42890 List!42890 List!42890 List!42890) Unit!61709)

(assert (=> b!3998794 (= lt!1413108 (lemmaSamePrefixThenSameSuffix!2054 lt!1413089 (_2!24111 (v!39553 lt!1413120)) lt!1413079 newSuffixResult!27 lt!1413066))))

(assert (=> b!3998794 (= lt!1413089 lt!1413079)))

(declare-fun lt!1413068 () Unit!61709)

(declare-fun lemmaIsPrefixSameLengthThenSameList!889 (List!42890 List!42890 List!42890) Unit!61709)

(assert (=> b!3998794 (= lt!1413068 (lemmaIsPrefixSameLengthThenSameList!889 lt!1413089 lt!1413079 lt!1413066))))

(declare-fun b!3998795 () Bool)

(declare-fun e!2479308 () Bool)

(assert (=> b!3998795 (= e!2479295 e!2479308)))

(declare-fun res!1624334 () Bool)

(assert (=> b!3998795 (=> res!1624334 e!2479308)))

(assert (=> b!3998795 (= res!1624334 (not (isPrefix!3867 lt!1413089 lt!1413092)))))

(assert (=> b!3998795 (isPrefix!3867 lt!1413089 lt!1413070)))

(declare-fun lt!1413126 () Unit!61709)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!700 (List!42890 List!42890 List!42890) Unit!61709)

(assert (=> b!3998795 (= lt!1413126 (lemmaPrefixStaysPrefixWhenAddingToSuffix!700 lt!1413089 lt!1413066 lt!1413107))))

(declare-fun b!3998796 () Bool)

(declare-fun e!2479310 () Bool)

(declare-fun e!2479294 () Bool)

(assert (=> b!3998796 (= e!2479310 e!2479294)))

(declare-fun res!1624330 () Bool)

(assert (=> b!3998796 (=> res!1624330 e!2479294)))

(assert (=> b!3998796 (= res!1624330 (not (matchR!5662 (regex!6780 (rule!9810 token!484)) lt!1413079)))))

(assert (=> b!3998796 (isPrefix!3867 lt!1413079 lt!1413066)))

(declare-fun lt!1413077 () Unit!61709)

(assert (=> b!3998796 (= lt!1413077 (lemmaPrefixStaysPrefixWhenAddingToSuffix!700 lt!1413079 prefix!494 newSuffix!27))))

(declare-fun lt!1413087 () Unit!61709)

(assert (=> b!3998796 (= lt!1413087 (lemmaPrefixStaysPrefixWhenAddingToSuffix!700 lt!1413079 prefix!494 suffix!1299))))

(declare-fun b!3998797 () Bool)

(declare-fun res!1624335 () Bool)

(assert (=> b!3998797 (=> res!1624335 e!2479308)))

(declare-fun lt!1413129 () List!42890)

(assert (=> b!3998797 (= res!1624335 (not (= lt!1413129 lt!1413066)))))

(declare-fun b!3998798 () Bool)

(declare-fun tp!1217020 () Bool)

(assert (=> b!3998798 (= e!2479290 (and tp_is_empty!20341 tp!1217020))))

(declare-fun e!2479291 () Bool)

(declare-fun lt!1413083 () Int)

(declare-fun b!3998799 () Bool)

(assert (=> b!3998799 (= e!2479291 (and (= (size!31981 token!484) lt!1413083) (= (originalCharacters!7380 token!484) lt!1413079)))))

(declare-fun b!3998800 () Bool)

(declare-fun e!2479306 () Bool)

(declare-fun e!2479280 () Bool)

(assert (=> b!3998800 (= e!2479306 e!2479280)))

(declare-fun res!1624339 () Bool)

(assert (=> b!3998800 (=> res!1624339 e!2479280)))

(declare-fun lt!1413071 () Option!9194)

(assert (=> b!3998800 (= res!1624339 (not (= lt!1413071 (Some!9193 (v!39553 lt!1413120)))))))

(assert (=> b!3998800 (isPrefix!3867 lt!1413089 (++!11182 lt!1413089 newSuffixResult!27))))

(declare-fun lt!1413124 () Unit!61709)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2710 (List!42890 List!42890) Unit!61709)

(assert (=> b!3998800 (= lt!1413124 (lemmaConcatTwoListThenFirstIsPrefix!2710 lt!1413089 newSuffixResult!27))))

(assert (=> b!3998800 (isPrefix!3867 lt!1413089 lt!1413129)))

(assert (=> b!3998800 (= lt!1413129 (++!11182 lt!1413089 (_2!24111 (v!39553 lt!1413120))))))

(declare-fun lt!1413073 () Unit!61709)

(assert (=> b!3998800 (= lt!1413073 (lemmaConcatTwoListThenFirstIsPrefix!2710 lt!1413089 (_2!24111 (v!39553 lt!1413120))))))

(declare-fun lt!1413074 () Int)

(declare-fun lt!1413096 () TokenValue!7010)

(assert (=> b!3998800 (= lt!1413071 (Some!9193 (tuple2!41955 (Token!12699 lt!1413096 (rule!9810 (_1!24111 (v!39553 lt!1413120))) lt!1413074 lt!1413089) (_2!24111 (v!39553 lt!1413120)))))))

(declare-fun maxPrefixOneRule!2701 (LexerInterface!6369 Rule!13360 List!42890) Option!9194)

(assert (=> b!3998800 (= lt!1413071 (maxPrefixOneRule!2701 thiss!21717 (rule!9810 (_1!24111 (v!39553 lt!1413120))) lt!1413066))))

(declare-fun size!31982 (List!42890) Int)

(assert (=> b!3998800 (= lt!1413074 (size!31982 lt!1413089))))

(declare-fun apply!9991 (TokenValueInjection!13448 BalanceConc!25576) TokenValue!7010)

(declare-fun seqFromList!5019 (List!42890) BalanceConc!25576)

(assert (=> b!3998800 (= lt!1413096 (apply!9991 (transformation!6780 (rule!9810 (_1!24111 (v!39553 lt!1413120)))) (seqFromList!5019 lt!1413089)))))

(declare-fun lt!1413081 () Unit!61709)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1523 (LexerInterface!6369 List!42892 List!42890 List!42890 List!42890 Rule!13360) Unit!61709)

(assert (=> b!3998800 (= lt!1413081 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1523 thiss!21717 rules!2999 lt!1413089 lt!1413066 (_2!24111 (v!39553 lt!1413120)) (rule!9810 (_1!24111 (v!39553 lt!1413120)))))))

(declare-fun list!15882 (BalanceConc!25576) List!42890)

(declare-fun charsOf!4596 (Token!12698) BalanceConc!25576)

(assert (=> b!3998800 (= lt!1413089 (list!15882 (charsOf!4596 (_1!24111 (v!39553 lt!1413120)))))))

(declare-fun lt!1413119 () Unit!61709)

(declare-fun lemmaInv!995 (TokenValueInjection!13448) Unit!61709)

(assert (=> b!3998800 (= lt!1413119 (lemmaInv!995 (transformation!6780 (rule!9810 (_1!24111 (v!39553 lt!1413120))))))))

(declare-fun ruleValid!2712 (LexerInterface!6369 Rule!13360) Bool)

(assert (=> b!3998800 (ruleValid!2712 thiss!21717 (rule!9810 (_1!24111 (v!39553 lt!1413120))))))

(declare-fun lt!1413085 () Unit!61709)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1786 (LexerInterface!6369 Rule!13360 List!42892) Unit!61709)

(assert (=> b!3998800 (= lt!1413085 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1786 thiss!21717 (rule!9810 (_1!24111 (v!39553 lt!1413120))) rules!2999))))

(declare-fun lt!1413122 () Unit!61709)

(declare-fun lemmaCharactersSize!1375 (Token!12698) Unit!61709)

(assert (=> b!3998800 (= lt!1413122 (lemmaCharactersSize!1375 token!484))))

(declare-fun lt!1413110 () Unit!61709)

(assert (=> b!3998800 (= lt!1413110 (lemmaCharactersSize!1375 (_1!24111 (v!39553 lt!1413120))))))

(declare-fun b!3998801 () Bool)

(declare-fun Unit!61715 () Unit!61709)

(assert (=> b!3998801 (= e!2479307 Unit!61715)))

(declare-fun lt!1413103 () Unit!61709)

(assert (=> b!3998801 (= lt!1413103 (lemmaMaxPrefNoSmallerRuleMatches!276 thiss!21717 rules!2999 (rule!9810 token!484) lt!1413079 lt!1413092 (rule!9810 (_1!24111 (v!39553 lt!1413120)))))))

(declare-fun res!1624325 () Bool)

(assert (=> b!3998801 (= res!1624325 (not (matchR!5662 (regex!6780 (rule!9810 (_1!24111 (v!39553 lt!1413120)))) lt!1413079)))))

(declare-fun e!2479297 () Bool)

(assert (=> b!3998801 (=> (not res!1624325) (not e!2479297))))

(assert (=> b!3998801 e!2479297))

(declare-fun b!3998802 () Bool)

(assert (=> b!3998802 (= e!2479280 e!2479299)))

(declare-fun res!1624318 () Bool)

(assert (=> b!3998802 (=> res!1624318 e!2479299)))

(assert (=> b!3998802 (= res!1624318 (not (= lt!1413067 suffix!1299)))))

(assert (=> b!3998802 (= lt!1413067 (++!11182 newSuffix!27 lt!1413107))))

(declare-fun getSuffix!2298 (List!42890 List!42890) List!42890)

(assert (=> b!3998802 (= lt!1413107 (getSuffix!2298 suffix!1299 newSuffix!27))))

(declare-fun b!3998803 () Bool)

(declare-fun res!1624319 () Bool)

(assert (=> b!3998803 (=> (not res!1624319) (not e!2479291))))

(declare-fun lt!1413133 () TokenValue!7010)

(assert (=> b!3998803 (= res!1624319 (= (value!213864 token!484) lt!1413133))))

(declare-fun b!3998804 () Bool)

(declare-fun e!2479279 () Bool)

(assert (=> b!3998804 (= e!2479279 e!2479310)))

(declare-fun res!1624321 () Bool)

(assert (=> b!3998804 (=> res!1624321 e!2479310)))

(declare-fun lt!1413080 () Option!9194)

(declare-fun lt!1413131 () Option!9194)

(assert (=> b!3998804 (= res!1624321 (not (= lt!1413080 lt!1413131)))))

(declare-fun lt!1413095 () Token!12698)

(declare-fun suffixResult!105 () List!42890)

(assert (=> b!3998804 (= lt!1413080 (Some!9193 (tuple2!41955 lt!1413095 suffixResult!105)))))

(assert (=> b!3998804 (= lt!1413080 (maxPrefixOneRule!2701 thiss!21717 (rule!9810 token!484) lt!1413092))))

(assert (=> b!3998804 (= lt!1413095 (Token!12699 lt!1413133 (rule!9810 token!484) lt!1413083 lt!1413079))))

(assert (=> b!3998804 (= lt!1413133 (apply!9991 (transformation!6780 (rule!9810 token!484)) (seqFromList!5019 lt!1413079)))))

(declare-fun lt!1413072 () Unit!61709)

(assert (=> b!3998804 (= lt!1413072 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1523 thiss!21717 rules!2999 lt!1413079 lt!1413092 suffixResult!105 (rule!9810 token!484)))))

(declare-fun lt!1413082 () List!42890)

(assert (=> b!3998804 (= lt!1413082 suffixResult!105)))

(declare-fun lt!1413097 () Unit!61709)

(assert (=> b!3998804 (= lt!1413097 (lemmaSamePrefixThenSameSuffix!2054 lt!1413079 lt!1413082 lt!1413079 suffixResult!105 lt!1413092))))

(declare-fun lt!1413112 () List!42890)

(assert (=> b!3998804 (isPrefix!3867 lt!1413079 lt!1413112)))

(declare-fun lt!1413094 () Unit!61709)

(assert (=> b!3998804 (= lt!1413094 (lemmaConcatTwoListThenFirstIsPrefix!2710 lt!1413079 lt!1413082))))

(declare-fun b!3998805 () Bool)

(declare-fun e!2479314 () Bool)

(assert (=> b!3998805 (= e!2479294 e!2479314)))

(declare-fun res!1624344 () Bool)

(assert (=> b!3998805 (=> res!1624344 e!2479314)))

(declare-fun lt!1413099 () List!42890)

(assert (=> b!3998805 (= res!1624344 (not (= lt!1413099 lt!1413092)))))

(declare-fun lt!1413104 () List!42890)

(assert (=> b!3998805 (= lt!1413099 (++!11182 lt!1413079 lt!1413104))))

(assert (=> b!3998805 (= lt!1413104 (getSuffix!2298 lt!1413092 lt!1413079))))

(assert (=> b!3998805 e!2479291))

(declare-fun res!1624316 () Bool)

(assert (=> b!3998805 (=> (not res!1624316) (not e!2479291))))

(assert (=> b!3998805 (= res!1624316 (isPrefix!3867 lt!1413092 lt!1413092))))

(declare-fun lt!1413123 () Unit!61709)

(declare-fun lemmaIsPrefixRefl!2459 (List!42890 List!42890) Unit!61709)

(assert (=> b!3998805 (= lt!1413123 (lemmaIsPrefixRefl!2459 lt!1413092 lt!1413092))))

(declare-fun b!3998806 () Bool)

(declare-fun e!2479281 () Bool)

(declare-fun e!2479282 () Bool)

(assert (=> b!3998806 (= e!2479281 e!2479282)))

(declare-fun res!1624342 () Bool)

(assert (=> b!3998806 (=> res!1624342 e!2479282)))

(declare-fun lt!1413084 () List!42890)

(assert (=> b!3998806 (= res!1624342 (not (= lt!1413084 prefix!494)))))

(declare-fun lt!1413106 () List!42890)

(assert (=> b!3998806 (= lt!1413084 (++!11182 lt!1413079 lt!1413106))))

(assert (=> b!3998806 (= lt!1413106 (getSuffix!2298 prefix!494 lt!1413079))))

(assert (=> b!3998806 (isPrefix!3867 lt!1413079 prefix!494)))

(declare-fun lt!1413105 () Unit!61709)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!445 (List!42890 List!42890 List!42890) Unit!61709)

(assert (=> b!3998806 (= lt!1413105 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!445 prefix!494 lt!1413079 lt!1413092))))

(declare-fun b!3998807 () Bool)

(declare-fun res!1624326 () Bool)

(assert (=> b!3998807 (=> (not res!1624326) (not e!2479300))))

(declare-fun rulesInvariant!5712 (LexerInterface!6369 List!42892) Bool)

(assert (=> b!3998807 (= res!1624326 (rulesInvariant!5712 thiss!21717 rules!2999))))

(declare-fun e!2479288 () Bool)

(declare-fun e!2479312 () Bool)

(declare-fun tp!1217010 () Bool)

(declare-fun b!3998808 () Bool)

(declare-fun inv!57114 (String!48768) Bool)

(declare-fun inv!57118 (TokenValueInjection!13448) Bool)

(assert (=> b!3998808 (= e!2479312 (and tp!1217010 (inv!57114 (tag!7640 (rule!9810 token!484))) (inv!57118 (transformation!6780 (rule!9810 token!484))) e!2479288))))

(assert (=> b!3998809 (= e!2479288 (and tp!1217013 tp!1217017))))

(declare-fun b!3998810 () Bool)

(declare-fun e!2479309 () Bool)

(declare-fun e!2479292 () Bool)

(assert (=> b!3998810 (= e!2479309 e!2479292)))

(declare-fun res!1624317 () Bool)

(assert (=> b!3998810 (=> (not res!1624317) (not e!2479292))))

(declare-fun maxPrefix!3667 (LexerInterface!6369 List!42892 List!42890) Option!9194)

(assert (=> b!3998810 (= res!1624317 (= (maxPrefix!3667 thiss!21717 rules!2999 lt!1413092) lt!1413131))))

(declare-fun lt!1413117 () tuple2!41954)

(assert (=> b!3998810 (= lt!1413131 (Some!9193 lt!1413117))))

(assert (=> b!3998810 (= lt!1413117 (tuple2!41955 token!484 suffixResult!105))))

(assert (=> b!3998810 (= lt!1413092 (++!11182 prefix!494 suffix!1299))))

(declare-fun b!3998811 () Bool)

(assert (=> b!3998811 (= e!2479302 true)))

(declare-fun lt!1413127 () Bool)

(declare-fun rulesValidInductive!2469 (LexerInterface!6369 List!42892) Bool)

(assert (=> b!3998811 (= lt!1413127 (rulesValidInductive!2469 thiss!21717 rules!2999))))

(declare-fun b!3998812 () Bool)

(declare-fun tp!1217019 () Bool)

(assert (=> b!3998812 (= e!2479311 (and tp_is_empty!20341 tp!1217019))))

(declare-fun b!3998813 () Bool)

(declare-fun res!1624328 () Bool)

(assert (=> b!3998813 (=> res!1624328 e!2479296)))

(assert (=> b!3998813 (= res!1624328 (not (isPrefix!3867 lt!1413089 lt!1413066)))))

(declare-fun b!3998814 () Bool)

(declare-fun e!2479276 () Bool)

(assert (=> b!3998814 (= e!2479276 e!2479309)))

(declare-fun res!1624323 () Bool)

(assert (=> b!3998814 (=> (not res!1624323) (not e!2479309))))

(declare-fun lt!1413065 () List!42890)

(assert (=> b!3998814 (= res!1624323 (= lt!1413065 lt!1413066))))

(assert (=> b!3998814 (= lt!1413066 (++!11182 prefix!494 newSuffix!27))))

(assert (=> b!3998814 (= lt!1413065 (++!11182 lt!1413079 newSuffixResult!27))))

(declare-fun b!3998815 () Bool)

(assert (=> b!3998815 (= e!2479282 e!2479279)))

(declare-fun res!1624329 () Bool)

(assert (=> b!3998815 (=> res!1624329 e!2479279)))

(declare-fun lt!1413116 () List!42890)

(assert (=> b!3998815 (= res!1624329 (or (not (= lt!1413092 lt!1413116)) (not (= lt!1413092 lt!1413112))))))

(assert (=> b!3998815 (= lt!1413116 lt!1413112)))

(assert (=> b!3998815 (= lt!1413112 (++!11182 lt!1413079 lt!1413082))))

(assert (=> b!3998815 (= lt!1413116 (++!11182 lt!1413084 suffix!1299))))

(assert (=> b!3998815 (= lt!1413082 (++!11182 lt!1413106 suffix!1299))))

(declare-fun lt!1413102 () Unit!61709)

(assert (=> b!3998815 (= lt!1413102 (lemmaConcatAssociativity!2502 lt!1413079 lt!1413106 suffix!1299))))

(declare-fun tp!1217009 () Bool)

(declare-fun b!3998816 () Bool)

(declare-fun inv!21 (TokenValue!7010) Bool)

(assert (=> b!3998816 (= e!2479313 (and (inv!21 (value!213864 token!484)) e!2479312 tp!1217009))))

(declare-fun b!3998817 () Bool)

(declare-fun e!2479277 () Bool)

(assert (=> b!3998817 (= e!2479292 (not e!2479277))))

(declare-fun res!1624333 () Bool)

(assert (=> b!3998817 (=> res!1624333 e!2479277)))

(declare-fun lt!1413093 () List!42890)

(assert (=> b!3998817 (= res!1624333 (not (= lt!1413093 lt!1413092)))))

(assert (=> b!3998817 (= lt!1413093 (++!11182 lt!1413079 suffixResult!105))))

(declare-fun lt!1413088 () Unit!61709)

(assert (=> b!3998817 (= lt!1413088 (lemmaInv!995 (transformation!6780 (rule!9810 token!484))))))

(assert (=> b!3998817 (ruleValid!2712 thiss!21717 (rule!9810 token!484))))

(declare-fun lt!1413113 () Unit!61709)

(assert (=> b!3998817 (= lt!1413113 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1786 thiss!21717 (rule!9810 token!484) rules!2999))))

(declare-fun b!3998818 () Bool)

(declare-fun tp!1217015 () Bool)

(assert (=> b!3998818 (= e!2479304 (and tp_is_empty!20341 tp!1217015))))

(declare-fun tp!1217008 () Bool)

(declare-fun b!3998819 () Bool)

(assert (=> b!3998819 (= e!2479283 (and tp!1217008 (inv!57114 (tag!7640 (h!48188 rules!2999))) (inv!57118 (transformation!6780 (h!48188 rules!2999))) e!2479293))))

(declare-fun b!3998820 () Bool)

(declare-fun e!2479289 () Unit!61709)

(declare-fun Unit!61716 () Unit!61709)

(assert (=> b!3998820 (= e!2479289 Unit!61716)))

(declare-fun b!3998821 () Bool)

(declare-fun Unit!61717 () Unit!61709)

(assert (=> b!3998821 (= e!2479275 Unit!61717)))

(declare-fun b!3998822 () Bool)

(assert (=> b!3998822 (= e!2479277 e!2479281)))

(declare-fun res!1624336 () Bool)

(assert (=> b!3998822 (=> res!1624336 e!2479281)))

(assert (=> b!3998822 (= res!1624336 (not (isPrefix!3867 lt!1413079 lt!1413092)))))

(assert (=> b!3998822 (isPrefix!3867 prefix!494 lt!1413092)))

(declare-fun lt!1413076 () Unit!61709)

(assert (=> b!3998822 (= lt!1413076 (lemmaConcatTwoListThenFirstIsPrefix!2710 prefix!494 suffix!1299))))

(assert (=> b!3998822 (isPrefix!3867 lt!1413079 lt!1413093)))

(declare-fun lt!1413128 () Unit!61709)

(assert (=> b!3998822 (= lt!1413128 (lemmaConcatTwoListThenFirstIsPrefix!2710 lt!1413079 suffixResult!105))))

(declare-fun b!3998823 () Bool)

(declare-fun Unit!61718 () Unit!61709)

(assert (=> b!3998823 (= e!2479289 Unit!61718)))

(declare-fun lt!1413114 () Unit!61709)

(assert (=> b!3998823 (= lt!1413114 (lemmaMaxPrefixOutputsMaxPrefix!434 thiss!21717 rules!2999 (rule!9810 (_1!24111 (v!39553 lt!1413120))) lt!1413089 lt!1413066 lt!1413079 (rule!9810 token!484)))))

(assert (=> b!3998823 false))

(declare-fun b!3998824 () Bool)

(assert (=> b!3998824 (= e!2479300 e!2479276)))

(declare-fun res!1624345 () Bool)

(assert (=> b!3998824 (=> (not res!1624345) (not e!2479276))))

(declare-fun lt!1413132 () Int)

(assert (=> b!3998824 (= res!1624345 (>= lt!1413132 lt!1413083))))

(assert (=> b!3998824 (= lt!1413083 (size!31982 lt!1413079))))

(assert (=> b!3998824 (= lt!1413132 (size!31982 prefix!494))))

(assert (=> b!3998824 (= lt!1413079 (list!15882 (charsOf!4596 token!484)))))

(declare-fun b!3998825 () Bool)

(declare-fun e!2479287 () Bool)

(assert (=> b!3998825 (= e!2479308 e!2479287)))

(declare-fun res!1624324 () Bool)

(assert (=> b!3998825 (=> res!1624324 e!2479287)))

(declare-fun lt!1413118 () List!42890)

(assert (=> b!3998825 (= res!1624324 (not (= lt!1413118 lt!1413066)))))

(declare-fun lt!1413125 () List!42890)

(assert (=> b!3998825 (= lt!1413118 (++!11182 lt!1413089 lt!1413125))))

(assert (=> b!3998825 (= lt!1413125 (getSuffix!2298 lt!1413066 lt!1413089))))

(declare-fun b!3998826 () Bool)

(declare-fun res!1624346 () Bool)

(assert (=> b!3998826 (=> (not res!1624346) (not e!2479300))))

(declare-fun isEmpty!25560 (List!42892) Bool)

(assert (=> b!3998826 (= res!1624346 (not (isEmpty!25560 rules!2999)))))

(declare-fun b!3998827 () Bool)

(assert (=> b!3998827 (= e!2479314 e!2479306)))

(declare-fun res!1624327 () Bool)

(assert (=> b!3998827 (=> res!1624327 e!2479306)))

(assert (=> b!3998827 (= res!1624327 (not ((_ is Some!9193) lt!1413120)))))

(assert (=> b!3998827 (= lt!1413120 (maxPrefix!3667 thiss!21717 rules!2999 lt!1413066))))

(assert (=> b!3998827 (and (= suffixResult!105 lt!1413104) (= lt!1413117 (tuple2!41955 lt!1413095 lt!1413104)))))

(declare-fun lt!1413101 () Unit!61709)

(assert (=> b!3998827 (= lt!1413101 (lemmaSamePrefixThenSameSuffix!2054 lt!1413079 suffixResult!105 lt!1413079 lt!1413104 lt!1413092))))

(assert (=> b!3998827 (isPrefix!3867 lt!1413079 lt!1413099)))

(declare-fun lt!1413069 () Unit!61709)

(assert (=> b!3998827 (= lt!1413069 (lemmaConcatTwoListThenFirstIsPrefix!2710 lt!1413079 lt!1413104))))

(declare-fun b!3998828 () Bool)

(declare-fun Unit!61719 () Unit!61709)

(assert (=> b!3998828 (= e!2479305 Unit!61719)))

(declare-fun b!3998829 () Bool)

(assert (=> b!3998829 (= e!2479287 e!2479296)))

(declare-fun res!1624340 () Bool)

(assert (=> b!3998829 (=> res!1624340 e!2479296)))

(assert (=> b!3998829 (= res!1624340 (not (= lt!1413083 lt!1413074)))))

(declare-fun lt!1413078 () Unit!61709)

(assert (=> b!3998829 (= lt!1413078 e!2479289)))

(declare-fun c!691753 () Bool)

(assert (=> b!3998829 (= c!691753 (< lt!1413074 lt!1413083))))

(declare-fun lt!1413086 () Unit!61709)

(assert (=> b!3998829 (= lt!1413086 e!2479305)))

(declare-fun c!691751 () Bool)

(assert (=> b!3998829 (= c!691751 (> lt!1413074 lt!1413083))))

(assert (=> b!3998829 (= (_2!24111 (v!39553 lt!1413120)) lt!1413125)))

(declare-fun lt!1413115 () Unit!61709)

(assert (=> b!3998829 (= lt!1413115 (lemmaSamePrefixThenSameSuffix!2054 lt!1413089 (_2!24111 (v!39553 lt!1413120)) lt!1413089 lt!1413125 lt!1413066))))

(assert (=> b!3998829 (isPrefix!3867 lt!1413089 lt!1413118)))

(declare-fun lt!1413098 () Unit!61709)

(assert (=> b!3998829 (= lt!1413098 (lemmaConcatTwoListThenFirstIsPrefix!2710 lt!1413089 lt!1413125))))

(declare-fun b!3998830 () Bool)

(declare-fun res!1624320 () Bool)

(assert (=> b!3998830 (=> (not res!1624320) (not e!2479300))))

(assert (=> b!3998830 (= res!1624320 (>= (size!31982 suffix!1299) (size!31982 newSuffix!27)))))

(declare-fun b!3998831 () Bool)

(assert (=> b!3998831 (= e!2479297 false)))

(declare-fun b!3998832 () Bool)

(declare-fun res!1624332 () Bool)

(assert (=> b!3998832 (=> (not res!1624332) (not e!2479291))))

(assert (=> b!3998832 (= res!1624332 (= (size!31981 token!484) (size!31982 (originalCharacters!7380 token!484))))))

(assert (= (and start!376352 res!1624331) b!3998826))

(assert (= (and b!3998826 res!1624346) b!3998807))

(assert (= (and b!3998807 res!1624326) b!3998830))

(assert (= (and b!3998830 res!1624320) b!3998792))

(assert (= (and b!3998792 res!1624337) b!3998824))

(assert (= (and b!3998824 res!1624345) b!3998814))

(assert (= (and b!3998814 res!1624323) b!3998810))

(assert (= (and b!3998810 res!1624317) b!3998817))

(assert (= (and b!3998817 (not res!1624333)) b!3998822))

(assert (= (and b!3998822 (not res!1624336)) b!3998806))

(assert (= (and b!3998806 (not res!1624342)) b!3998815))

(assert (= (and b!3998815 (not res!1624329)) b!3998804))

(assert (= (and b!3998804 (not res!1624321)) b!3998796))

(assert (= (and b!3998796 (not res!1624330)) b!3998805))

(assert (= (and b!3998805 res!1624316) b!3998803))

(assert (= (and b!3998803 res!1624319) b!3998832))

(assert (= (and b!3998832 res!1624332) b!3998799))

(assert (= (and b!3998805 (not res!1624344)) b!3998827))

(assert (= (and b!3998827 (not res!1624327)) b!3998800))

(assert (= (and b!3998800 (not res!1624339)) b!3998802))

(assert (= (and b!3998802 (not res!1624318)) b!3998793))

(assert (= (and b!3998793 (not res!1624341)) b!3998795))

(assert (= (and b!3998795 (not res!1624334)) b!3998797))

(assert (= (and b!3998797 (not res!1624335)) b!3998825))

(assert (= (and b!3998825 (not res!1624324)) b!3998829))

(assert (= (and b!3998829 c!691751) b!3998783))

(assert (= (and b!3998829 (not c!691751)) b!3998828))

(assert (= (and b!3998783 res!1624338) b!3998789))

(assert (= (and b!3998829 c!691753) b!3998823))

(assert (= (and b!3998829 (not c!691753)) b!3998820))

(assert (= (and b!3998829 (not res!1624340)) b!3998813))

(assert (= (and b!3998813 (not res!1624328)) b!3998794))

(assert (= (and b!3998794 c!691752) b!3998801))

(assert (= (and b!3998794 (not c!691752)) b!3998786))

(assert (= (and b!3998801 res!1624325) b!3998831))

(assert (= (and b!3998794 c!691750) b!3998790))

(assert (= (and b!3998794 (not c!691750)) b!3998821))

(assert (= (and b!3998790 res!1624322) b!3998787))

(assert (= (and b!3998794 (not res!1624343)) b!3998811))

(assert (= (and start!376352 ((_ is Cons!42766) prefix!494)) b!3998798))

(assert (= b!3998808 b!3998809))

(assert (= b!3998816 b!3998808))

(assert (= start!376352 b!3998816))

(assert (= (and start!376352 ((_ is Cons!42766) suffixResult!105)) b!3998812))

(assert (= (and start!376352 ((_ is Cons!42766) suffix!1299)) b!3998818))

(assert (= (and start!376352 ((_ is Cons!42766) newSuffix!27)) b!3998785))

(assert (= b!3998819 b!3998788))

(assert (= b!3998791 b!3998819))

(assert (= (and start!376352 ((_ is Cons!42768) rules!2999)) b!3998791))

(assert (= (and start!376352 ((_ is Cons!42766) newSuffixResult!27)) b!3998784))

(declare-fun m!4580387 () Bool)

(assert (=> b!3998801 m!4580387))

(declare-fun m!4580389 () Bool)

(assert (=> b!3998801 m!4580389))

(declare-fun m!4580391 () Bool)

(assert (=> b!3998830 m!4580391))

(declare-fun m!4580393 () Bool)

(assert (=> b!3998830 m!4580393))

(declare-fun m!4580395 () Bool)

(assert (=> b!3998823 m!4580395))

(declare-fun m!4580397 () Bool)

(assert (=> b!3998826 m!4580397))

(declare-fun m!4580399 () Bool)

(assert (=> b!3998802 m!4580399))

(declare-fun m!4580401 () Bool)

(assert (=> b!3998802 m!4580401))

(declare-fun m!4580403 () Bool)

(assert (=> b!3998794 m!4580403))

(declare-fun m!4580405 () Bool)

(assert (=> b!3998794 m!4580405))

(declare-fun m!4580407 () Bool)

(assert (=> b!3998794 m!4580407))

(declare-fun m!4580409 () Bool)

(assert (=> b!3998794 m!4580409))

(declare-fun m!4580411 () Bool)

(assert (=> b!3998794 m!4580411))

(declare-fun m!4580413 () Bool)

(assert (=> b!3998806 m!4580413))

(declare-fun m!4580415 () Bool)

(assert (=> b!3998806 m!4580415))

(declare-fun m!4580417 () Bool)

(assert (=> b!3998806 m!4580417))

(declare-fun m!4580419 () Bool)

(assert (=> b!3998806 m!4580419))

(declare-fun m!4580421 () Bool)

(assert (=> start!376352 m!4580421))

(declare-fun m!4580423 () Bool)

(assert (=> b!3998800 m!4580423))

(declare-fun m!4580425 () Bool)

(assert (=> b!3998800 m!4580425))

(declare-fun m!4580427 () Bool)

(assert (=> b!3998800 m!4580427))

(declare-fun m!4580429 () Bool)

(assert (=> b!3998800 m!4580429))

(declare-fun m!4580431 () Bool)

(assert (=> b!3998800 m!4580431))

(declare-fun m!4580433 () Bool)

(assert (=> b!3998800 m!4580433))

(declare-fun m!4580435 () Bool)

(assert (=> b!3998800 m!4580435))

(assert (=> b!3998800 m!4580425))

(declare-fun m!4580437 () Bool)

(assert (=> b!3998800 m!4580437))

(declare-fun m!4580439 () Bool)

(assert (=> b!3998800 m!4580439))

(declare-fun m!4580441 () Bool)

(assert (=> b!3998800 m!4580441))

(declare-fun m!4580443 () Bool)

(assert (=> b!3998800 m!4580443))

(assert (=> b!3998800 m!4580423))

(declare-fun m!4580445 () Bool)

(assert (=> b!3998800 m!4580445))

(declare-fun m!4580447 () Bool)

(assert (=> b!3998800 m!4580447))

(declare-fun m!4580449 () Bool)

(assert (=> b!3998800 m!4580449))

(declare-fun m!4580451 () Bool)

(assert (=> b!3998800 m!4580451))

(assert (=> b!3998800 m!4580449))

(declare-fun m!4580453 () Bool)

(assert (=> b!3998800 m!4580453))

(declare-fun m!4580455 () Bool)

(assert (=> b!3998800 m!4580455))

(declare-fun m!4580457 () Bool)

(assert (=> b!3998800 m!4580457))

(declare-fun m!4580459 () Bool)

(assert (=> b!3998804 m!4580459))

(declare-fun m!4580461 () Bool)

(assert (=> b!3998804 m!4580461))

(declare-fun m!4580463 () Bool)

(assert (=> b!3998804 m!4580463))

(declare-fun m!4580465 () Bool)

(assert (=> b!3998804 m!4580465))

(declare-fun m!4580467 () Bool)

(assert (=> b!3998804 m!4580467))

(declare-fun m!4580469 () Bool)

(assert (=> b!3998804 m!4580469))

(assert (=> b!3998804 m!4580461))

(declare-fun m!4580471 () Bool)

(assert (=> b!3998804 m!4580471))

(declare-fun m!4580473 () Bool)

(assert (=> b!3998822 m!4580473))

(declare-fun m!4580475 () Bool)

(assert (=> b!3998822 m!4580475))

(declare-fun m!4580477 () Bool)

(assert (=> b!3998822 m!4580477))

(declare-fun m!4580479 () Bool)

(assert (=> b!3998822 m!4580479))

(declare-fun m!4580481 () Bool)

(assert (=> b!3998822 m!4580481))

(declare-fun m!4580483 () Bool)

(assert (=> b!3998832 m!4580483))

(declare-fun m!4580485 () Bool)

(assert (=> b!3998796 m!4580485))

(declare-fun m!4580487 () Bool)

(assert (=> b!3998796 m!4580487))

(declare-fun m!4580489 () Bool)

(assert (=> b!3998796 m!4580489))

(declare-fun m!4580491 () Bool)

(assert (=> b!3998796 m!4580491))

(declare-fun m!4580493 () Bool)

(assert (=> b!3998815 m!4580493))

(declare-fun m!4580495 () Bool)

(assert (=> b!3998815 m!4580495))

(declare-fun m!4580497 () Bool)

(assert (=> b!3998815 m!4580497))

(declare-fun m!4580499 () Bool)

(assert (=> b!3998815 m!4580499))

(declare-fun m!4580501 () Bool)

(assert (=> b!3998825 m!4580501))

(declare-fun m!4580503 () Bool)

(assert (=> b!3998825 m!4580503))

(declare-fun m!4580505 () Bool)

(assert (=> b!3998810 m!4580505))

(declare-fun m!4580507 () Bool)

(assert (=> b!3998810 m!4580507))

(declare-fun m!4580509 () Bool)

(assert (=> b!3998807 m!4580509))

(declare-fun m!4580511 () Bool)

(assert (=> b!3998811 m!4580511))

(declare-fun m!4580513 () Bool)

(assert (=> b!3998827 m!4580513))

(declare-fun m!4580515 () Bool)

(assert (=> b!3998827 m!4580515))

(declare-fun m!4580517 () Bool)

(assert (=> b!3998827 m!4580517))

(declare-fun m!4580519 () Bool)

(assert (=> b!3998827 m!4580519))

(declare-fun m!4580521 () Bool)

(assert (=> b!3998790 m!4580521))

(declare-fun m!4580523 () Bool)

(assert (=> b!3998790 m!4580523))

(declare-fun m!4580525 () Bool)

(assert (=> b!3998783 m!4580525))

(declare-fun m!4580527 () Bool)

(assert (=> b!3998783 m!4580527))

(declare-fun m!4580529 () Bool)

(assert (=> b!3998805 m!4580529))

(declare-fun m!4580531 () Bool)

(assert (=> b!3998805 m!4580531))

(declare-fun m!4580533 () Bool)

(assert (=> b!3998805 m!4580533))

(declare-fun m!4580535 () Bool)

(assert (=> b!3998805 m!4580535))

(declare-fun m!4580537 () Bool)

(assert (=> b!3998829 m!4580537))

(declare-fun m!4580539 () Bool)

(assert (=> b!3998829 m!4580539))

(declare-fun m!4580541 () Bool)

(assert (=> b!3998829 m!4580541))

(declare-fun m!4580543 () Bool)

(assert (=> b!3998814 m!4580543))

(declare-fun m!4580545 () Bool)

(assert (=> b!3998814 m!4580545))

(declare-fun m!4580547 () Bool)

(assert (=> b!3998824 m!4580547))

(declare-fun m!4580549 () Bool)

(assert (=> b!3998824 m!4580549))

(declare-fun m!4580551 () Bool)

(assert (=> b!3998824 m!4580551))

(assert (=> b!3998824 m!4580551))

(declare-fun m!4580553 () Bool)

(assert (=> b!3998824 m!4580553))

(declare-fun m!4580555 () Bool)

(assert (=> b!3998817 m!4580555))

(declare-fun m!4580557 () Bool)

(assert (=> b!3998817 m!4580557))

(declare-fun m!4580559 () Bool)

(assert (=> b!3998817 m!4580559))

(declare-fun m!4580561 () Bool)

(assert (=> b!3998817 m!4580561))

(declare-fun m!4580563 () Bool)

(assert (=> b!3998792 m!4580563))

(declare-fun m!4580565 () Bool)

(assert (=> b!3998813 m!4580565))

(declare-fun m!4580567 () Bool)

(assert (=> b!3998793 m!4580567))

(declare-fun m!4580569 () Bool)

(assert (=> b!3998793 m!4580569))

(declare-fun m!4580571 () Bool)

(assert (=> b!3998793 m!4580571))

(declare-fun m!4580573 () Bool)

(assert (=> b!3998819 m!4580573))

(declare-fun m!4580575 () Bool)

(assert (=> b!3998819 m!4580575))

(declare-fun m!4580577 () Bool)

(assert (=> b!3998816 m!4580577))

(declare-fun m!4580579 () Bool)

(assert (=> b!3998795 m!4580579))

(declare-fun m!4580581 () Bool)

(assert (=> b!3998795 m!4580581))

(declare-fun m!4580583 () Bool)

(assert (=> b!3998795 m!4580583))

(declare-fun m!4580585 () Bool)

(assert (=> b!3998808 m!4580585))

(declare-fun m!4580587 () Bool)

(assert (=> b!3998808 m!4580587))

(check-sat (not start!376352) (not b!3998785) (not b!3998823) (not b!3998818) (not b!3998813) (not b!3998807) b_and!307073 (not b!3998792) (not b!3998795) b_and!307077 (not b!3998791) (not b!3998827) (not b!3998829) (not b!3998802) (not b!3998783) (not b_next!111787) (not b_next!111785) (not b!3998830) (not b!3998826) (not b_next!111791) (not b!3998805) (not b!3998824) (not b!3998801) (not b!3998817) (not b!3998808) (not b!3998798) (not b!3998796) (not b!3998812) (not b!3998816) b_and!307071 (not b!3998822) tp_is_empty!20341 (not b!3998784) (not b!3998811) (not b!3998819) (not b!3998825) (not b!3998794) (not b!3998806) (not b!3998810) b_and!307075 (not b!3998814) (not b!3998832) (not b!3998800) (not b!3998790) (not b_next!111789) (not b!3998804) (not b!3998793) (not b!3998815))
(check-sat (not b_next!111791) b_and!307073 b_and!307071 b_and!307077 b_and!307075 (not b_next!111789) (not b_next!111787) (not b_next!111785))
