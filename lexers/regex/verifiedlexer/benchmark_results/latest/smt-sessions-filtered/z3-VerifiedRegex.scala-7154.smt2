; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!379624 () Bool)

(assert start!379624)

(declare-fun b!4029352 () Bool)

(declare-fun b_free!112233 () Bool)

(declare-fun b_next!112937 () Bool)

(assert (=> b!4029352 (= b_free!112233 (not b_next!112937))))

(declare-fun tp!1224605 () Bool)

(declare-fun b_and!309623 () Bool)

(assert (=> b!4029352 (= tp!1224605 b_and!309623)))

(declare-fun b_free!112235 () Bool)

(declare-fun b_next!112939 () Bool)

(assert (=> b!4029352 (= b_free!112235 (not b_next!112939))))

(declare-fun tp!1224603 () Bool)

(declare-fun b_and!309625 () Bool)

(assert (=> b!4029352 (= tp!1224603 b_and!309625)))

(declare-fun b!4029355 () Bool)

(declare-fun b_free!112237 () Bool)

(declare-fun b_next!112941 () Bool)

(assert (=> b!4029355 (= b_free!112237 (not b_next!112941))))

(declare-fun tp!1224600 () Bool)

(declare-fun b_and!309627 () Bool)

(assert (=> b!4029355 (= tp!1224600 b_and!309627)))

(declare-fun b_free!112239 () Bool)

(declare-fun b_next!112943 () Bool)

(assert (=> b!4029355 (= b_free!112239 (not b_next!112943))))

(declare-fun tp!1224607 () Bool)

(declare-fun b_and!309629 () Bool)

(assert (=> b!4029355 (= tp!1224607 b_and!309629)))

(declare-fun b!4029336 () Bool)

(declare-fun e!2499920 () Bool)

(declare-fun e!2499910 () Bool)

(declare-fun tp!1224606 () Bool)

(assert (=> b!4029336 (= e!2499920 (and e!2499910 tp!1224606))))

(declare-fun b!4029337 () Bool)

(declare-fun e!2499933 () Bool)

(declare-fun e!2499932 () Bool)

(assert (=> b!4029337 (= e!2499933 e!2499932)))

(declare-fun res!1640029 () Bool)

(assert (=> b!4029337 (=> (not res!1640029) (not e!2499932))))

(declare-fun lt!1431831 () Int)

(declare-fun lt!1431829 () Int)

(assert (=> b!4029337 (= res!1640029 (>= lt!1431831 lt!1431829))))

(declare-datatypes ((C!23788 0))(
  ( (C!23789 (val!13988 Int)) )
))
(declare-datatypes ((List!43275 0))(
  ( (Nil!43151) (Cons!43151 (h!48571 C!23788) (t!334116 List!43275)) )
))
(declare-fun lt!1431847 () List!43275)

(declare-fun size!32253 (List!43275) Int)

(assert (=> b!4029337 (= lt!1431829 (size!32253 lt!1431847))))

(declare-fun prefix!494 () List!43275)

(assert (=> b!4029337 (= lt!1431831 (size!32253 prefix!494))))

(declare-datatypes ((IArray!26219 0))(
  ( (IArray!26220 (innerList!13167 List!43275)) )
))
(declare-datatypes ((Conc!13107 0))(
  ( (Node!13107 (left!32509 Conc!13107) (right!32839 Conc!13107) (csize!26444 Int) (cheight!13318 Int)) (Leaf!20262 (xs!16413 IArray!26219) (csize!26445 Int)) (Empty!13107) )
))
(declare-datatypes ((BalanceConc!25808 0))(
  ( (BalanceConc!25809 (c!696088 Conc!13107)) )
))
(declare-datatypes ((List!43276 0))(
  ( (Nil!43152) (Cons!43152 (h!48572 (_ BitVec 16)) (t!334117 List!43276)) )
))
(declare-datatypes ((TokenValue!7126 0))(
  ( (FloatLiteralValue!14252 (text!50327 List!43276)) (TokenValueExt!7125 (__x!26469 Int)) (Broken!35630 (value!217144 List!43276)) (Object!7249) (End!7126) (Def!7126) (Underscore!7126) (Match!7126) (Else!7126) (Error!7126) (Case!7126) (If!7126) (Extends!7126) (Abstract!7126) (Class!7126) (Val!7126) (DelimiterValue!14252 (del!7186 List!43276)) (KeywordValue!7132 (value!217145 List!43276)) (CommentValue!14252 (value!217146 List!43276)) (WhitespaceValue!14252 (value!217147 List!43276)) (IndentationValue!7126 (value!217148 List!43276)) (String!49347) (Int32!7126) (Broken!35631 (value!217149 List!43276)) (Boolean!7127) (Unit!62313) (OperatorValue!7129 (op!7186 List!43276)) (IdentifierValue!14252 (value!217150 List!43276)) (IdentifierValue!14253 (value!217151 List!43276)) (WhitespaceValue!14253 (value!217152 List!43276)) (True!14252) (False!14252) (Broken!35632 (value!217153 List!43276)) (Broken!35633 (value!217154 List!43276)) (True!14253) (RightBrace!7126) (RightBracket!7126) (Colon!7126) (Null!7126) (Comma!7126) (LeftBracket!7126) (False!14253) (LeftBrace!7126) (ImaginaryLiteralValue!7126 (text!50328 List!43276)) (StringLiteralValue!21378 (value!217155 List!43276)) (EOFValue!7126 (value!217156 List!43276)) (IdentValue!7126 (value!217157 List!43276)) (DelimiterValue!14253 (value!217158 List!43276)) (DedentValue!7126 (value!217159 List!43276)) (NewLineValue!7126 (value!217160 List!43276)) (IntegerValue!21378 (value!217161 (_ BitVec 32)) (text!50329 List!43276)) (IntegerValue!21379 (value!217162 Int) (text!50330 List!43276)) (Times!7126) (Or!7126) (Equal!7126) (Minus!7126) (Broken!35634 (value!217163 List!43276)) (And!7126) (Div!7126) (LessEqual!7126) (Mod!7126) (Concat!18927) (Not!7126) (Plus!7126) (SpaceValue!7126 (value!217164 List!43276)) (IntegerValue!21380 (value!217165 Int) (text!50331 List!43276)) (StringLiteralValue!21379 (text!50332 List!43276)) (FloatLiteralValue!14253 (text!50333 List!43276)) (BytesLiteralValue!7126 (value!217166 List!43276)) (CommentValue!14253 (value!217167 List!43276)) (StringLiteralValue!21380 (value!217168 List!43276)) (ErrorTokenValue!7126 (msg!7187 List!43276)) )
))
(declare-datatypes ((Regex!11801 0))(
  ( (ElementMatch!11801 (c!696089 C!23788)) (Concat!18928 (regOne!24114 Regex!11801) (regTwo!24114 Regex!11801)) (EmptyExpr!11801) (Star!11801 (reg!12130 Regex!11801)) (EmptyLang!11801) (Union!11801 (regOne!24115 Regex!11801) (regTwo!24115 Regex!11801)) )
))
(declare-datatypes ((String!49348 0))(
  ( (String!49349 (value!217169 String)) )
))
(declare-datatypes ((TokenValueInjection!13680 0))(
  ( (TokenValueInjection!13681 (toValue!9420 Int) (toChars!9279 Int)) )
))
(declare-datatypes ((Rule!13592 0))(
  ( (Rule!13593 (regex!6896 Regex!11801) (tag!7756 String!49348) (isSeparator!6896 Bool) (transformation!6896 TokenValueInjection!13680)) )
))
(declare-datatypes ((Token!12930 0))(
  ( (Token!12931 (value!217170 TokenValue!7126) (rule!9956 Rule!13592) (size!32254 Int) (originalCharacters!7496 List!43275)) )
))
(declare-fun token!484 () Token!12930)

(declare-fun list!16054 (BalanceConc!25808) List!43275)

(declare-fun charsOf!4712 (Token!12930) BalanceConc!25808)

(assert (=> b!4029337 (= lt!1431847 (list!16054 (charsOf!4712 token!484)))))

(declare-fun b!4029338 () Bool)

(declare-fun res!1640027 () Bool)

(assert (=> b!4029338 (=> (not res!1640027) (not e!2499933))))

(declare-datatypes ((List!43277 0))(
  ( (Nil!43153) (Cons!43153 (h!48573 Rule!13592) (t!334118 List!43277)) )
))
(declare-fun rules!2999 () List!43277)

(declare-fun isEmpty!25757 (List!43277) Bool)

(assert (=> b!4029338 (= res!1640027 (not (isEmpty!25757 rules!2999)))))

(declare-fun b!4029339 () Bool)

(declare-fun e!2499928 () Bool)

(declare-fun tp_is_empty!20573 () Bool)

(declare-fun tp!1224608 () Bool)

(assert (=> b!4029339 (= e!2499928 (and tp_is_empty!20573 tp!1224608))))

(declare-fun b!4029340 () Bool)

(declare-fun e!2499931 () Bool)

(declare-fun tp!1224610 () Bool)

(assert (=> b!4029340 (= e!2499931 (and tp_is_empty!20573 tp!1224610))))

(declare-fun b!4029341 () Bool)

(declare-fun e!2499929 () Bool)

(assert (=> b!4029341 (= e!2499929 (= (size!32254 token!484) lt!1431829))))

(declare-fun e!2499923 () Bool)

(assert (=> b!4029341 e!2499923))

(declare-fun res!1640018 () Bool)

(assert (=> b!4029341 (=> (not res!1640018) (not e!2499923))))

(declare-fun lt!1431841 () List!43275)

(declare-fun isPrefix!3983 (List!43275 List!43275) Bool)

(assert (=> b!4029341 (= res!1640018 (isPrefix!3983 lt!1431841 lt!1431841))))

(declare-datatypes ((Unit!62314 0))(
  ( (Unit!62315) )
))
(declare-fun lt!1431837 () Unit!62314)

(declare-fun lemmaIsPrefixRefl!2550 (List!43275 List!43275) Unit!62314)

(assert (=> b!4029341 (= lt!1431837 (lemmaIsPrefixRefl!2550 lt!1431841 lt!1431841))))

(declare-fun b!4029342 () Bool)

(declare-fun e!2499917 () Bool)

(declare-fun e!2499934 () Bool)

(assert (=> b!4029342 (= e!2499917 e!2499934)))

(declare-fun res!1640019 () Bool)

(assert (=> b!4029342 (=> res!1640019 e!2499934)))

(declare-fun lt!1431832 () List!43275)

(declare-fun lt!1431828 () List!43275)

(assert (=> b!4029342 (= res!1640019 (or (not (= lt!1431841 lt!1431828)) (not (= lt!1431841 lt!1431832))))))

(assert (=> b!4029342 (= lt!1431828 lt!1431832)))

(declare-fun lt!1431835 () List!43275)

(declare-fun ++!11298 (List!43275 List!43275) List!43275)

(assert (=> b!4029342 (= lt!1431832 (++!11298 lt!1431847 lt!1431835))))

(declare-fun lt!1431825 () List!43275)

(declare-fun suffix!1299 () List!43275)

(assert (=> b!4029342 (= lt!1431828 (++!11298 lt!1431825 suffix!1299))))

(declare-fun lt!1431826 () List!43275)

(assert (=> b!4029342 (= lt!1431835 (++!11298 lt!1431826 suffix!1299))))

(declare-fun lt!1431830 () Unit!62314)

(declare-fun lemmaConcatAssociativity!2600 (List!43275 List!43275 List!43275) Unit!62314)

(assert (=> b!4029342 (= lt!1431830 (lemmaConcatAssociativity!2600 lt!1431847 lt!1431826 suffix!1299))))

(declare-fun b!4029343 () Bool)

(declare-fun e!2499916 () Bool)

(declare-fun tp!1224602 () Bool)

(assert (=> b!4029343 (= e!2499916 (and tp_is_empty!20573 tp!1224602))))

(declare-fun tp!1224601 () Bool)

(declare-fun e!2499914 () Bool)

(declare-fun b!4029344 () Bool)

(declare-fun inv!57647 (String!49348) Bool)

(declare-fun inv!57650 (TokenValueInjection!13680) Bool)

(assert (=> b!4029344 (= e!2499910 (and tp!1224601 (inv!57647 (tag!7756 (h!48573 rules!2999))) (inv!57650 (transformation!6896 (h!48573 rules!2999))) e!2499914))))

(declare-fun b!4029345 () Bool)

(declare-fun e!2499918 () Bool)

(assert (=> b!4029345 (= e!2499918 e!2499929)))

(declare-fun res!1640030 () Bool)

(assert (=> b!4029345 (=> res!1640030 e!2499929)))

(declare-fun matchR!5754 (Regex!11801 List!43275) Bool)

(assert (=> b!4029345 (= res!1640030 (not (matchR!5754 (regex!6896 (rule!9956 token!484)) lt!1431847)))))

(declare-fun lt!1431838 () List!43275)

(assert (=> b!4029345 (isPrefix!3983 lt!1431847 lt!1431838)))

(declare-fun newSuffix!27 () List!43275)

(declare-fun lt!1431839 () Unit!62314)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!776 (List!43275 List!43275 List!43275) Unit!62314)

(assert (=> b!4029345 (= lt!1431839 (lemmaPrefixStaysPrefixWhenAddingToSuffix!776 lt!1431847 prefix!494 newSuffix!27))))

(declare-fun lt!1431843 () Unit!62314)

(assert (=> b!4029345 (= lt!1431843 (lemmaPrefixStaysPrefixWhenAddingToSuffix!776 lt!1431847 prefix!494 suffix!1299))))

(declare-fun b!4029346 () Bool)

(declare-fun e!2499912 () Bool)

(declare-fun tp!1224599 () Bool)

(assert (=> b!4029346 (= e!2499912 (and tp_is_empty!20573 tp!1224599))))

(declare-fun b!4029347 () Bool)

(declare-fun e!2499911 () Bool)

(declare-fun e!2499927 () Bool)

(assert (=> b!4029347 (= e!2499911 e!2499927)))

(declare-fun res!1640017 () Bool)

(assert (=> b!4029347 (=> (not res!1640017) (not e!2499927))))

(declare-datatypes ((LexerInterface!6485 0))(
  ( (LexerInterfaceExt!6482 (__x!26470 Int)) (Lexer!6483) )
))
(declare-fun thiss!21717 () LexerInterface!6485)

(declare-datatypes ((tuple2!42246 0))(
  ( (tuple2!42247 (_1!24257 Token!12930) (_2!24257 List!43275)) )
))
(declare-datatypes ((Option!9310 0))(
  ( (None!9309) (Some!9309 (v!39697 tuple2!42246)) )
))
(declare-fun lt!1431850 () Option!9310)

(declare-fun maxPrefix!3783 (LexerInterface!6485 List!43277 List!43275) Option!9310)

(assert (=> b!4029347 (= res!1640017 (= (maxPrefix!3783 thiss!21717 rules!2999 lt!1431841) lt!1431850))))

(declare-fun suffixResult!105 () List!43275)

(assert (=> b!4029347 (= lt!1431850 (Some!9309 (tuple2!42247 token!484 suffixResult!105)))))

(assert (=> b!4029347 (= lt!1431841 (++!11298 prefix!494 suffix!1299))))

(declare-fun b!4029348 () Bool)

(declare-fun res!1640022 () Bool)

(assert (=> b!4029348 (=> (not res!1640022) (not e!2499933))))

(assert (=> b!4029348 (= res!1640022 (isPrefix!3983 newSuffix!27 suffix!1299))))

(declare-fun e!2499919 () Bool)

(declare-fun tp!1224609 () Bool)

(declare-fun e!2499913 () Bool)

(declare-fun b!4029349 () Bool)

(declare-fun inv!21 (TokenValue!7126) Bool)

(assert (=> b!4029349 (= e!2499919 (and (inv!21 (value!217170 token!484)) e!2499913 tp!1224609))))

(declare-fun res!1640031 () Bool)

(assert (=> start!379624 (=> (not res!1640031) (not e!2499933))))

(get-info :version)

(assert (=> start!379624 (= res!1640031 ((_ is Lexer!6483) thiss!21717))))

(assert (=> start!379624 e!2499933))

(assert (=> start!379624 e!2499916))

(declare-fun inv!57651 (Token!12930) Bool)

(assert (=> start!379624 (and (inv!57651 token!484) e!2499919)))

(assert (=> start!379624 e!2499912))

(assert (=> start!379624 e!2499931))

(declare-fun e!2499924 () Bool)

(assert (=> start!379624 e!2499924))

(assert (=> start!379624 true))

(assert (=> start!379624 e!2499920))

(assert (=> start!379624 e!2499928))

(declare-fun b!4029350 () Bool)

(declare-fun res!1640025 () Bool)

(assert (=> b!4029350 (=> (not res!1640025) (not e!2499933))))

(declare-fun rulesInvariant!5828 (LexerInterface!6485 List!43277) Bool)

(assert (=> b!4029350 (= res!1640025 (rulesInvariant!5828 thiss!21717 rules!2999))))

(declare-fun b!4029351 () Bool)

(assert (=> b!4029351 (= e!2499932 e!2499911)))

(declare-fun res!1640024 () Bool)

(assert (=> b!4029351 (=> (not res!1640024) (not e!2499911))))

(declare-fun lt!1431834 () List!43275)

(assert (=> b!4029351 (= res!1640024 (= lt!1431834 lt!1431838))))

(assert (=> b!4029351 (= lt!1431838 (++!11298 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43275)

(assert (=> b!4029351 (= lt!1431834 (++!11298 lt!1431847 newSuffixResult!27))))

(assert (=> b!4029352 (= e!2499914 (and tp!1224605 tp!1224603))))

(declare-fun b!4029353 () Bool)

(declare-fun e!2499922 () Bool)

(assert (=> b!4029353 (= e!2499922 e!2499917)))

(declare-fun res!1640028 () Bool)

(assert (=> b!4029353 (=> res!1640028 e!2499917)))

(assert (=> b!4029353 (= res!1640028 (not (= lt!1431825 prefix!494)))))

(assert (=> b!4029353 (= lt!1431825 (++!11298 lt!1431847 lt!1431826))))

(declare-fun getSuffix!2400 (List!43275 List!43275) List!43275)

(assert (=> b!4029353 (= lt!1431826 (getSuffix!2400 prefix!494 lt!1431847))))

(assert (=> b!4029353 (isPrefix!3983 lt!1431847 prefix!494)))

(declare-fun lt!1431849 () Unit!62314)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!547 (List!43275 List!43275 List!43275) Unit!62314)

(assert (=> b!4029353 (= lt!1431849 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!547 prefix!494 lt!1431847 lt!1431841))))

(declare-fun b!4029354 () Bool)

(declare-fun e!2499926 () Bool)

(assert (=> b!4029354 (= e!2499926 e!2499922)))

(declare-fun res!1640023 () Bool)

(assert (=> b!4029354 (=> res!1640023 e!2499922)))

(assert (=> b!4029354 (= res!1640023 (not (isPrefix!3983 lt!1431847 lt!1431841)))))

(assert (=> b!4029354 (isPrefix!3983 prefix!494 lt!1431841)))

(declare-fun lt!1431851 () Unit!62314)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2818 (List!43275 List!43275) Unit!62314)

(assert (=> b!4029354 (= lt!1431851 (lemmaConcatTwoListThenFirstIsPrefix!2818 prefix!494 suffix!1299))))

(declare-fun lt!1431842 () List!43275)

(assert (=> b!4029354 (isPrefix!3983 lt!1431847 lt!1431842)))

(declare-fun lt!1431827 () Unit!62314)

(assert (=> b!4029354 (= lt!1431827 (lemmaConcatTwoListThenFirstIsPrefix!2818 lt!1431847 suffixResult!105))))

(declare-fun e!2499925 () Bool)

(assert (=> b!4029355 (= e!2499925 (and tp!1224600 tp!1224607))))

(declare-fun b!4029356 () Bool)

(assert (=> b!4029356 (= e!2499923 (= (size!32254 token!484) (size!32253 (originalCharacters!7496 token!484))))))

(declare-fun b!4029357 () Bool)

(assert (=> b!4029357 (= e!2499934 e!2499918)))

(declare-fun res!1640021 () Bool)

(assert (=> b!4029357 (=> res!1640021 e!2499918)))

(declare-fun lt!1431836 () Option!9310)

(assert (=> b!4029357 (= res!1640021 (not (= lt!1431836 lt!1431850)))))

(declare-fun lt!1431846 () TokenValue!7126)

(assert (=> b!4029357 (= lt!1431836 (Some!9309 (tuple2!42247 (Token!12931 lt!1431846 (rule!9956 token!484) lt!1431829 lt!1431847) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2795 (LexerInterface!6485 Rule!13592 List!43275) Option!9310)

(assert (=> b!4029357 (= lt!1431836 (maxPrefixOneRule!2795 thiss!21717 (rule!9956 token!484) lt!1431841))))

(declare-fun apply!10085 (TokenValueInjection!13680 BalanceConc!25808) TokenValue!7126)

(declare-fun seqFromList!5113 (List!43275) BalanceConc!25808)

(assert (=> b!4029357 (= lt!1431846 (apply!10085 (transformation!6896 (rule!9956 token!484)) (seqFromList!5113 lt!1431847)))))

(declare-fun lt!1431833 () Unit!62314)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1601 (LexerInterface!6485 List!43277 List!43275 List!43275 List!43275 Rule!13592) Unit!62314)

(assert (=> b!4029357 (= lt!1431833 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1601 thiss!21717 rules!2999 lt!1431847 lt!1431841 suffixResult!105 (rule!9956 token!484)))))

(assert (=> b!4029357 (= lt!1431835 suffixResult!105)))

(declare-fun lt!1431848 () Unit!62314)

(declare-fun lemmaSamePrefixThenSameSuffix!2144 (List!43275 List!43275 List!43275 List!43275 List!43275) Unit!62314)

(assert (=> b!4029357 (= lt!1431848 (lemmaSamePrefixThenSameSuffix!2144 lt!1431847 lt!1431835 lt!1431847 suffixResult!105 lt!1431841))))

(assert (=> b!4029357 (isPrefix!3983 lt!1431847 lt!1431832)))

(declare-fun lt!1431840 () Unit!62314)

(assert (=> b!4029357 (= lt!1431840 (lemmaConcatTwoListThenFirstIsPrefix!2818 lt!1431847 lt!1431835))))

(declare-fun b!4029358 () Bool)

(assert (=> b!4029358 (= e!2499927 (not e!2499926))))

(declare-fun res!1640020 () Bool)

(assert (=> b!4029358 (=> res!1640020 e!2499926)))

(assert (=> b!4029358 (= res!1640020 (not (= lt!1431842 lt!1431841)))))

(assert (=> b!4029358 (= lt!1431842 (++!11298 lt!1431847 suffixResult!105))))

(declare-fun lt!1431844 () Unit!62314)

(declare-fun lemmaInv!1105 (TokenValueInjection!13680) Unit!62314)

(assert (=> b!4029358 (= lt!1431844 (lemmaInv!1105 (transformation!6896 (rule!9956 token!484))))))

(declare-fun ruleValid!2826 (LexerInterface!6485 Rule!13592) Bool)

(assert (=> b!4029358 (ruleValid!2826 thiss!21717 (rule!9956 token!484))))

(declare-fun lt!1431845 () Unit!62314)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1896 (LexerInterface!6485 Rule!13592 List!43277) Unit!62314)

(assert (=> b!4029358 (= lt!1431845 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1896 thiss!21717 (rule!9956 token!484) rules!2999))))

(declare-fun b!4029359 () Bool)

(declare-fun res!1640026 () Bool)

(assert (=> b!4029359 (=> (not res!1640026) (not e!2499933))))

(assert (=> b!4029359 (= res!1640026 (>= (size!32253 suffix!1299) (size!32253 newSuffix!27)))))

(declare-fun b!4029360 () Bool)

(declare-fun res!1640016 () Bool)

(assert (=> b!4029360 (=> (not res!1640016) (not e!2499923))))

(assert (=> b!4029360 (= res!1640016 (= (value!217170 token!484) lt!1431846))))

(declare-fun b!4029361 () Bool)

(declare-fun tp!1224598 () Bool)

(assert (=> b!4029361 (= e!2499924 (and tp_is_empty!20573 tp!1224598))))

(declare-fun b!4029362 () Bool)

(declare-fun tp!1224604 () Bool)

(assert (=> b!4029362 (= e!2499913 (and tp!1224604 (inv!57647 (tag!7756 (rule!9956 token!484))) (inv!57650 (transformation!6896 (rule!9956 token!484))) e!2499925))))

(assert (= (and start!379624 res!1640031) b!4029338))

(assert (= (and b!4029338 res!1640027) b!4029350))

(assert (= (and b!4029350 res!1640025) b!4029359))

(assert (= (and b!4029359 res!1640026) b!4029348))

(assert (= (and b!4029348 res!1640022) b!4029337))

(assert (= (and b!4029337 res!1640029) b!4029351))

(assert (= (and b!4029351 res!1640024) b!4029347))

(assert (= (and b!4029347 res!1640017) b!4029358))

(assert (= (and b!4029358 (not res!1640020)) b!4029354))

(assert (= (and b!4029354 (not res!1640023)) b!4029353))

(assert (= (and b!4029353 (not res!1640028)) b!4029342))

(assert (= (and b!4029342 (not res!1640019)) b!4029357))

(assert (= (and b!4029357 (not res!1640021)) b!4029345))

(assert (= (and b!4029345 (not res!1640030)) b!4029341))

(assert (= (and b!4029341 res!1640018) b!4029360))

(assert (= (and b!4029360 res!1640016) b!4029356))

(assert (= (and start!379624 ((_ is Cons!43151) prefix!494)) b!4029343))

(assert (= b!4029362 b!4029355))

(assert (= b!4029349 b!4029362))

(assert (= start!379624 b!4029349))

(assert (= (and start!379624 ((_ is Cons!43151) suffixResult!105)) b!4029346))

(assert (= (and start!379624 ((_ is Cons!43151) suffix!1299)) b!4029340))

(assert (= (and start!379624 ((_ is Cons!43151) newSuffix!27)) b!4029361))

(assert (= b!4029344 b!4029352))

(assert (= b!4029336 b!4029344))

(assert (= (and start!379624 ((_ is Cons!43153) rules!2999)) b!4029336))

(assert (= (and start!379624 ((_ is Cons!43151) newSuffixResult!27)) b!4029339))

(declare-fun m!4621185 () Bool)

(assert (=> b!4029344 m!4621185))

(declare-fun m!4621187 () Bool)

(assert (=> b!4029344 m!4621187))

(declare-fun m!4621189 () Bool)

(assert (=> b!4029353 m!4621189))

(declare-fun m!4621191 () Bool)

(assert (=> b!4029353 m!4621191))

(declare-fun m!4621193 () Bool)

(assert (=> b!4029353 m!4621193))

(declare-fun m!4621195 () Bool)

(assert (=> b!4029353 m!4621195))

(declare-fun m!4621197 () Bool)

(assert (=> b!4029351 m!4621197))

(declare-fun m!4621199 () Bool)

(assert (=> b!4029351 m!4621199))

(declare-fun m!4621201 () Bool)

(assert (=> b!4029349 m!4621201))

(declare-fun m!4621203 () Bool)

(assert (=> b!4029350 m!4621203))

(declare-fun m!4621205 () Bool)

(assert (=> b!4029358 m!4621205))

(declare-fun m!4621207 () Bool)

(assert (=> b!4029358 m!4621207))

(declare-fun m!4621209 () Bool)

(assert (=> b!4029358 m!4621209))

(declare-fun m!4621211 () Bool)

(assert (=> b!4029358 m!4621211))

(declare-fun m!4621213 () Bool)

(assert (=> start!379624 m!4621213))

(declare-fun m!4621215 () Bool)

(assert (=> b!4029342 m!4621215))

(declare-fun m!4621217 () Bool)

(assert (=> b!4029342 m!4621217))

(declare-fun m!4621219 () Bool)

(assert (=> b!4029342 m!4621219))

(declare-fun m!4621221 () Bool)

(assert (=> b!4029342 m!4621221))

(declare-fun m!4621223 () Bool)

(assert (=> b!4029337 m!4621223))

(declare-fun m!4621225 () Bool)

(assert (=> b!4029337 m!4621225))

(declare-fun m!4621227 () Bool)

(assert (=> b!4029337 m!4621227))

(assert (=> b!4029337 m!4621227))

(declare-fun m!4621229 () Bool)

(assert (=> b!4029337 m!4621229))

(declare-fun m!4621231 () Bool)

(assert (=> b!4029354 m!4621231))

(declare-fun m!4621233 () Bool)

(assert (=> b!4029354 m!4621233))

(declare-fun m!4621235 () Bool)

(assert (=> b!4029354 m!4621235))

(declare-fun m!4621237 () Bool)

(assert (=> b!4029354 m!4621237))

(declare-fun m!4621239 () Bool)

(assert (=> b!4029354 m!4621239))

(declare-fun m!4621241 () Bool)

(assert (=> b!4029348 m!4621241))

(declare-fun m!4621243 () Bool)

(assert (=> b!4029362 m!4621243))

(declare-fun m!4621245 () Bool)

(assert (=> b!4029362 m!4621245))

(declare-fun m!4621247 () Bool)

(assert (=> b!4029359 m!4621247))

(declare-fun m!4621249 () Bool)

(assert (=> b!4029359 m!4621249))

(declare-fun m!4621251 () Bool)

(assert (=> b!4029345 m!4621251))

(declare-fun m!4621253 () Bool)

(assert (=> b!4029345 m!4621253))

(declare-fun m!4621255 () Bool)

(assert (=> b!4029345 m!4621255))

(declare-fun m!4621257 () Bool)

(assert (=> b!4029345 m!4621257))

(declare-fun m!4621259 () Bool)

(assert (=> b!4029338 m!4621259))

(declare-fun m!4621261 () Bool)

(assert (=> b!4029357 m!4621261))

(declare-fun m!4621263 () Bool)

(assert (=> b!4029357 m!4621263))

(assert (=> b!4029357 m!4621261))

(declare-fun m!4621265 () Bool)

(assert (=> b!4029357 m!4621265))

(declare-fun m!4621267 () Bool)

(assert (=> b!4029357 m!4621267))

(declare-fun m!4621269 () Bool)

(assert (=> b!4029357 m!4621269))

(declare-fun m!4621271 () Bool)

(assert (=> b!4029357 m!4621271))

(declare-fun m!4621273 () Bool)

(assert (=> b!4029357 m!4621273))

(declare-fun m!4621275 () Bool)

(assert (=> b!4029347 m!4621275))

(declare-fun m!4621277 () Bool)

(assert (=> b!4029347 m!4621277))

(declare-fun m!4621279 () Bool)

(assert (=> b!4029356 m!4621279))

(declare-fun m!4621281 () Bool)

(assert (=> b!4029341 m!4621281))

(declare-fun m!4621283 () Bool)

(assert (=> b!4029341 m!4621283))

(check-sat (not b!4029344) (not start!379624) (not b_next!112939) (not b!4029348) (not b!4029358) (not b!4029340) b_and!309627 (not b!4029362) (not b!4029338) (not b!4029341) b_and!309623 (not b!4029336) (not b!4029357) (not b!4029354) b_and!309629 (not b!4029342) (not b!4029353) (not b!4029347) (not b!4029339) tp_is_empty!20573 (not b!4029356) (not b!4029337) (not b!4029361) (not b_next!112941) (not b!4029346) (not b!4029345) (not b!4029351) (not b!4029343) (not b_next!112943) b_and!309625 (not b!4029350) (not b_next!112937) (not b!4029359) (not b!4029349))
(check-sat (not b_next!112939) b_and!309629 b_and!309627 (not b_next!112941) b_and!309623 (not b_next!112937) (not b_next!112943) b_and!309625)
