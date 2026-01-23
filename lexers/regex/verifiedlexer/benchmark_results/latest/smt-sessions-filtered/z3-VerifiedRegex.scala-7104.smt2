; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376688 () Bool)

(assert start!376688)

(declare-fun b!4002158 () Bool)

(declare-fun b_free!111233 () Bool)

(declare-fun b_next!111937 () Bool)

(assert (=> b!4002158 (= b_free!111233 (not b_next!111937))))

(declare-fun tp!1217965 () Bool)

(declare-fun b_and!307303 () Bool)

(assert (=> b!4002158 (= tp!1217965 b_and!307303)))

(declare-fun b_free!111235 () Bool)

(declare-fun b_next!111939 () Bool)

(assert (=> b!4002158 (= b_free!111235 (not b_next!111939))))

(declare-fun tp!1217966 () Bool)

(declare-fun b_and!307305 () Bool)

(assert (=> b!4002158 (= tp!1217966 b_and!307305)))

(declare-fun b!4002147 () Bool)

(declare-fun b_free!111237 () Bool)

(declare-fun b_next!111941 () Bool)

(assert (=> b!4002147 (= b_free!111237 (not b_next!111941))))

(declare-fun tp!1217967 () Bool)

(declare-fun b_and!307307 () Bool)

(assert (=> b!4002147 (= tp!1217967 b_and!307307)))

(declare-fun b_free!111239 () Bool)

(declare-fun b_next!111943 () Bool)

(assert (=> b!4002147 (= b_free!111239 (not b_next!111943))))

(declare-fun tp!1217962 () Bool)

(declare-fun b_and!307309 () Bool)

(assert (=> b!4002147 (= tp!1217962 b_and!307309)))

(declare-fun b!4002145 () Bool)

(declare-fun res!1626123 () Bool)

(declare-fun e!2481633 () Bool)

(assert (=> b!4002145 (=> (not res!1626123) (not e!2481633))))

(declare-datatypes ((C!23588 0))(
  ( (C!23589 (val!13888 Int)) )
))
(declare-datatypes ((List!42942 0))(
  ( (Nil!42818) (Cons!42818 (h!48238 C!23588) (t!332271 List!42942)) )
))
(declare-fun newSuffix!27 () List!42942)

(declare-fun suffix!1299 () List!42942)

(declare-fun isPrefix!3883 (List!42942 List!42942) Bool)

(assert (=> b!4002145 (= res!1626123 (isPrefix!3883 newSuffix!27 suffix!1299))))

(declare-fun b!4002146 () Bool)

(declare-fun e!2481639 () Bool)

(assert (=> b!4002146 (= e!2481639 true)))

(declare-fun prefix!494 () List!42942)

(declare-fun lt!1415339 () List!42942)

(assert (=> b!4002146 (isPrefix!3883 prefix!494 lt!1415339)))

(declare-datatypes ((Unit!61807 0))(
  ( (Unit!61808) )
))
(declare-fun lt!1415341 () Unit!61807)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2724 (List!42942 List!42942) Unit!61807)

(assert (=> b!4002146 (= lt!1415341 (lemmaConcatTwoListThenFirstIsPrefix!2724 prefix!494 suffix!1299))))

(declare-fun lt!1415342 () List!42942)

(declare-fun lt!1415337 () List!42942)

(assert (=> b!4002146 (isPrefix!3883 lt!1415342 lt!1415337)))

(declare-fun lt!1415340 () Unit!61807)

(declare-fun suffixResult!105 () List!42942)

(assert (=> b!4002146 (= lt!1415340 (lemmaConcatTwoListThenFirstIsPrefix!2724 lt!1415342 suffixResult!105))))

(declare-fun e!2481642 () Bool)

(assert (=> b!4002147 (= e!2481642 (and tp!1217967 tp!1217962))))

(declare-fun b!4002148 () Bool)

(declare-fun e!2481632 () Bool)

(declare-fun e!2481648 () Bool)

(declare-fun tp!1217956 () Bool)

(assert (=> b!4002148 (= e!2481632 (and e!2481648 tp!1217956))))

(declare-fun b!4002149 () Bool)

(declare-fun e!2481647 () Bool)

(assert (=> b!4002149 (= e!2481633 e!2481647)))

(declare-fun res!1626131 () Bool)

(assert (=> b!4002149 (=> (not res!1626131) (not e!2481647))))

(declare-fun size!32017 (List!42942) Int)

(assert (=> b!4002149 (= res!1626131 (>= (size!32017 prefix!494) (size!32017 lt!1415342)))))

(declare-datatypes ((IArray!26019 0))(
  ( (IArray!26020 (innerList!13067 List!42942)) )
))
(declare-datatypes ((Conc!13007 0))(
  ( (Node!13007 (left!32323 Conc!13007) (right!32653 Conc!13007) (csize!26244 Int) (cheight!13218 Int)) (Leaf!20112 (xs!16313 IArray!26019) (csize!26245 Int)) (Empty!13007) )
))
(declare-datatypes ((BalanceConc!25608 0))(
  ( (BalanceConc!25609 (c!692150 Conc!13007)) )
))
(declare-datatypes ((List!42943 0))(
  ( (Nil!42819) (Cons!42819 (h!48239 (_ BitVec 16)) (t!332272 List!42943)) )
))
(declare-datatypes ((TokenValue!7026 0))(
  ( (FloatLiteralValue!14052 (text!49627 List!42943)) (TokenValueExt!7025 (__x!26269 Int)) (Broken!35130 (value!214294 List!42943)) (Object!7149) (End!7026) (Def!7026) (Underscore!7026) (Match!7026) (Else!7026) (Error!7026) (Case!7026) (If!7026) (Extends!7026) (Abstract!7026) (Class!7026) (Val!7026) (DelimiterValue!14052 (del!7086 List!42943)) (KeywordValue!7032 (value!214295 List!42943)) (CommentValue!14052 (value!214296 List!42943)) (WhitespaceValue!14052 (value!214297 List!42943)) (IndentationValue!7026 (value!214298 List!42943)) (String!48847) (Int32!7026) (Broken!35131 (value!214299 List!42943)) (Boolean!7027) (Unit!61809) (OperatorValue!7029 (op!7086 List!42943)) (IdentifierValue!14052 (value!214300 List!42943)) (IdentifierValue!14053 (value!214301 List!42943)) (WhitespaceValue!14053 (value!214302 List!42943)) (True!14052) (False!14052) (Broken!35132 (value!214303 List!42943)) (Broken!35133 (value!214304 List!42943)) (True!14053) (RightBrace!7026) (RightBracket!7026) (Colon!7026) (Null!7026) (Comma!7026) (LeftBracket!7026) (False!14053) (LeftBrace!7026) (ImaginaryLiteralValue!7026 (text!49628 List!42943)) (StringLiteralValue!21078 (value!214305 List!42943)) (EOFValue!7026 (value!214306 List!42943)) (IdentValue!7026 (value!214307 List!42943)) (DelimiterValue!14053 (value!214308 List!42943)) (DedentValue!7026 (value!214309 List!42943)) (NewLineValue!7026 (value!214310 List!42943)) (IntegerValue!21078 (value!214311 (_ BitVec 32)) (text!49629 List!42943)) (IntegerValue!21079 (value!214312 Int) (text!49630 List!42943)) (Times!7026) (Or!7026) (Equal!7026) (Minus!7026) (Broken!35134 (value!214313 List!42943)) (And!7026) (Div!7026) (LessEqual!7026) (Mod!7026) (Concat!18727) (Not!7026) (Plus!7026) (SpaceValue!7026 (value!214314 List!42943)) (IntegerValue!21080 (value!214315 Int) (text!49631 List!42943)) (StringLiteralValue!21079 (text!49632 List!42943)) (FloatLiteralValue!14053 (text!49633 List!42943)) (BytesLiteralValue!7026 (value!214316 List!42943)) (CommentValue!14053 (value!214317 List!42943)) (StringLiteralValue!21080 (value!214318 List!42943)) (ErrorTokenValue!7026 (msg!7087 List!42943)) )
))
(declare-datatypes ((Regex!11701 0))(
  ( (ElementMatch!11701 (c!692151 C!23588)) (Concat!18728 (regOne!23914 Regex!11701) (regTwo!23914 Regex!11701)) (EmptyExpr!11701) (Star!11701 (reg!12030 Regex!11701)) (EmptyLang!11701) (Union!11701 (regOne!23915 Regex!11701) (regTwo!23915 Regex!11701)) )
))
(declare-datatypes ((String!48848 0))(
  ( (String!48849 (value!214319 String)) )
))
(declare-datatypes ((TokenValueInjection!13480 0))(
  ( (TokenValueInjection!13481 (toValue!9288 Int) (toChars!9147 Int)) )
))
(declare-datatypes ((Rule!13392 0))(
  ( (Rule!13393 (regex!6796 Regex!11701) (tag!7656 String!48848) (isSeparator!6796 Bool) (transformation!6796 TokenValueInjection!13480)) )
))
(declare-datatypes ((Token!12730 0))(
  ( (Token!12731 (value!214320 TokenValue!7026) (rule!9830 Rule!13392) (size!32018 Int) (originalCharacters!7396 List!42942)) )
))
(declare-fun token!484 () Token!12730)

(declare-fun list!15904 (BalanceConc!25608) List!42942)

(declare-fun charsOf!4612 (Token!12730) BalanceConc!25608)

(assert (=> b!4002149 (= lt!1415342 (list!15904 (charsOf!4612 token!484)))))

(declare-fun b!4002150 () Bool)

(declare-fun res!1626125 () Bool)

(assert (=> b!4002150 (=> (not res!1626125) (not e!2481633))))

(declare-datatypes ((List!42944 0))(
  ( (Nil!42820) (Cons!42820 (h!48240 Rule!13392) (t!332273 List!42944)) )
))
(declare-fun rules!2999 () List!42944)

(declare-fun isEmpty!25588 (List!42944) Bool)

(assert (=> b!4002150 (= res!1626125 (not (isEmpty!25588 rules!2999)))))

(declare-fun b!4002151 () Bool)

(declare-fun res!1626127 () Bool)

(assert (=> b!4002151 (=> (not res!1626127) (not e!2481633))))

(declare-datatypes ((LexerInterface!6385 0))(
  ( (LexerInterfaceExt!6382 (__x!26270 Int)) (Lexer!6383) )
))
(declare-fun thiss!21717 () LexerInterface!6385)

(declare-fun rulesInvariant!5728 (LexerInterface!6385 List!42944) Bool)

(assert (=> b!4002151 (= res!1626127 (rulesInvariant!5728 thiss!21717 rules!2999))))

(declare-fun b!4002152 () Bool)

(declare-fun e!2481641 () Bool)

(declare-fun e!2481636 () Bool)

(declare-fun tp!1217957 () Bool)

(declare-fun inv!21 (TokenValue!7026) Bool)

(assert (=> b!4002152 (= e!2481641 (and (inv!21 (value!214320 token!484)) e!2481636 tp!1217957))))

(declare-fun b!4002153 () Bool)

(declare-fun e!2481634 () Bool)

(declare-fun tp_is_empty!20373 () Bool)

(declare-fun tp!1217963 () Bool)

(assert (=> b!4002153 (= e!2481634 (and tp_is_empty!20373 tp!1217963))))

(declare-fun b!4002154 () Bool)

(declare-fun e!2481631 () Bool)

(declare-fun tp!1217961 () Bool)

(assert (=> b!4002154 (= e!2481631 (and tp_is_empty!20373 tp!1217961))))

(declare-fun b!4002155 () Bool)

(declare-fun e!2481645 () Bool)

(assert (=> b!4002155 (= e!2481645 (not e!2481639))))

(declare-fun res!1626126 () Bool)

(assert (=> b!4002155 (=> res!1626126 e!2481639)))

(assert (=> b!4002155 (= res!1626126 (not (= lt!1415337 lt!1415339)))))

(declare-fun ++!11198 (List!42942 List!42942) List!42942)

(assert (=> b!4002155 (= lt!1415337 (++!11198 lt!1415342 suffixResult!105))))

(declare-fun lt!1415338 () Unit!61807)

(declare-fun lemmaInv!1011 (TokenValueInjection!13480) Unit!61807)

(assert (=> b!4002155 (= lt!1415338 (lemmaInv!1011 (transformation!6796 (rule!9830 token!484))))))

(declare-fun ruleValid!2728 (LexerInterface!6385 Rule!13392) Bool)

(assert (=> b!4002155 (ruleValid!2728 thiss!21717 (rule!9830 token!484))))

(declare-fun lt!1415343 () Unit!61807)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1802 (LexerInterface!6385 Rule!13392 List!42944) Unit!61807)

(assert (=> b!4002155 (= lt!1415343 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1802 thiss!21717 (rule!9830 token!484) rules!2999))))

(declare-fun b!4002156 () Bool)

(declare-fun res!1626129 () Bool)

(assert (=> b!4002156 (=> (not res!1626129) (not e!2481633))))

(assert (=> b!4002156 (= res!1626129 (>= (size!32017 suffix!1299) (size!32017 newSuffix!27)))))

(declare-fun b!4002157 () Bool)

(declare-fun e!2481640 () Bool)

(declare-fun tp!1217964 () Bool)

(assert (=> b!4002157 (= e!2481640 (and tp_is_empty!20373 tp!1217964))))

(declare-fun e!2481638 () Bool)

(assert (=> b!4002158 (= e!2481638 (and tp!1217965 tp!1217966))))

(declare-fun res!1626124 () Bool)

(assert (=> start!376688 (=> (not res!1626124) (not e!2481633))))

(get-info :version)

(assert (=> start!376688 (= res!1626124 ((_ is Lexer!6383) thiss!21717))))

(assert (=> start!376688 e!2481633))

(declare-fun e!2481643 () Bool)

(assert (=> start!376688 e!2481643))

(declare-fun inv!57184 (Token!12730) Bool)

(assert (=> start!376688 (and (inv!57184 token!484) e!2481641)))

(assert (=> start!376688 e!2481634))

(assert (=> start!376688 e!2481640))

(declare-fun e!2481637 () Bool)

(assert (=> start!376688 e!2481637))

(assert (=> start!376688 true))

(assert (=> start!376688 e!2481632))

(assert (=> start!376688 e!2481631))

(declare-fun tp!1217960 () Bool)

(declare-fun b!4002159 () Bool)

(declare-fun inv!57181 (String!48848) Bool)

(declare-fun inv!57185 (TokenValueInjection!13480) Bool)

(assert (=> b!4002159 (= e!2481648 (and tp!1217960 (inv!57181 (tag!7656 (h!48240 rules!2999))) (inv!57185 (transformation!6796 (h!48240 rules!2999))) e!2481638))))

(declare-fun tp!1217958 () Bool)

(declare-fun b!4002160 () Bool)

(assert (=> b!4002160 (= e!2481636 (and tp!1217958 (inv!57181 (tag!7656 (rule!9830 token!484))) (inv!57185 (transformation!6796 (rule!9830 token!484))) e!2481642))))

(declare-fun b!4002161 () Bool)

(declare-fun res!1626128 () Bool)

(assert (=> b!4002161 (=> (not res!1626128) (not e!2481647))))

(declare-fun newSuffixResult!27 () List!42942)

(assert (=> b!4002161 (= res!1626128 (= (++!11198 lt!1415342 newSuffixResult!27) (++!11198 prefix!494 newSuffix!27)))))

(declare-fun b!4002162 () Bool)

(declare-fun tp!1217959 () Bool)

(assert (=> b!4002162 (= e!2481637 (and tp_is_empty!20373 tp!1217959))))

(declare-fun b!4002163 () Bool)

(assert (=> b!4002163 (= e!2481647 e!2481645)))

(declare-fun res!1626130 () Bool)

(assert (=> b!4002163 (=> (not res!1626130) (not e!2481645))))

(declare-datatypes ((tuple2!41994 0))(
  ( (tuple2!41995 (_1!24131 Token!12730) (_2!24131 List!42942)) )
))
(declare-datatypes ((Option!9210 0))(
  ( (None!9209) (Some!9209 (v!39571 tuple2!41994)) )
))
(declare-fun maxPrefix!3683 (LexerInterface!6385 List!42944 List!42942) Option!9210)

(assert (=> b!4002163 (= res!1626130 (= (maxPrefix!3683 thiss!21717 rules!2999 lt!1415339) (Some!9209 (tuple2!41995 token!484 suffixResult!105))))))

(assert (=> b!4002163 (= lt!1415339 (++!11198 prefix!494 suffix!1299))))

(declare-fun b!4002164 () Bool)

(declare-fun tp!1217968 () Bool)

(assert (=> b!4002164 (= e!2481643 (and tp_is_empty!20373 tp!1217968))))

(assert (= (and start!376688 res!1626124) b!4002150))

(assert (= (and b!4002150 res!1626125) b!4002151))

(assert (= (and b!4002151 res!1626127) b!4002156))

(assert (= (and b!4002156 res!1626129) b!4002145))

(assert (= (and b!4002145 res!1626123) b!4002149))

(assert (= (and b!4002149 res!1626131) b!4002161))

(assert (= (and b!4002161 res!1626128) b!4002163))

(assert (= (and b!4002163 res!1626130) b!4002155))

(assert (= (and b!4002155 (not res!1626126)) b!4002146))

(assert (= (and start!376688 ((_ is Cons!42818) prefix!494)) b!4002164))

(assert (= b!4002160 b!4002147))

(assert (= b!4002152 b!4002160))

(assert (= start!376688 b!4002152))

(assert (= (and start!376688 ((_ is Cons!42818) suffixResult!105)) b!4002153))

(assert (= (and start!376688 ((_ is Cons!42818) suffix!1299)) b!4002157))

(assert (= (and start!376688 ((_ is Cons!42818) newSuffix!27)) b!4002162))

(assert (= b!4002159 b!4002158))

(assert (= b!4002148 b!4002159))

(assert (= (and start!376688 ((_ is Cons!42820) rules!2999)) b!4002148))

(assert (= (and start!376688 ((_ is Cons!42818) newSuffixResult!27)) b!4002154))

(declare-fun m!4584559 () Bool)

(assert (=> b!4002159 m!4584559))

(declare-fun m!4584561 () Bool)

(assert (=> b!4002159 m!4584561))

(declare-fun m!4584563 () Bool)

(assert (=> b!4002160 m!4584563))

(declare-fun m!4584565 () Bool)

(assert (=> b!4002160 m!4584565))

(declare-fun m!4584567 () Bool)

(assert (=> b!4002151 m!4584567))

(declare-fun m!4584569 () Bool)

(assert (=> b!4002152 m!4584569))

(declare-fun m!4584571 () Bool)

(assert (=> b!4002149 m!4584571))

(declare-fun m!4584573 () Bool)

(assert (=> b!4002149 m!4584573))

(declare-fun m!4584575 () Bool)

(assert (=> b!4002149 m!4584575))

(assert (=> b!4002149 m!4584575))

(declare-fun m!4584577 () Bool)

(assert (=> b!4002149 m!4584577))

(declare-fun m!4584579 () Bool)

(assert (=> b!4002163 m!4584579))

(declare-fun m!4584581 () Bool)

(assert (=> b!4002163 m!4584581))

(declare-fun m!4584583 () Bool)

(assert (=> b!4002150 m!4584583))

(declare-fun m!4584585 () Bool)

(assert (=> b!4002145 m!4584585))

(declare-fun m!4584587 () Bool)

(assert (=> b!4002155 m!4584587))

(declare-fun m!4584589 () Bool)

(assert (=> b!4002155 m!4584589))

(declare-fun m!4584591 () Bool)

(assert (=> b!4002155 m!4584591))

(declare-fun m!4584593 () Bool)

(assert (=> b!4002155 m!4584593))

(declare-fun m!4584595 () Bool)

(assert (=> b!4002146 m!4584595))

(declare-fun m!4584597 () Bool)

(assert (=> b!4002146 m!4584597))

(declare-fun m!4584599 () Bool)

(assert (=> b!4002146 m!4584599))

(declare-fun m!4584601 () Bool)

(assert (=> b!4002146 m!4584601))

(declare-fun m!4584603 () Bool)

(assert (=> start!376688 m!4584603))

(declare-fun m!4584605 () Bool)

(assert (=> b!4002156 m!4584605))

(declare-fun m!4584607 () Bool)

(assert (=> b!4002156 m!4584607))

(declare-fun m!4584609 () Bool)

(assert (=> b!4002161 m!4584609))

(declare-fun m!4584611 () Bool)

(assert (=> b!4002161 m!4584611))

(check-sat b_and!307309 (not b_next!111943) (not b!4002151) b_and!307303 (not b!4002160) tp_is_empty!20373 (not b!4002150) (not b!4002152) (not b!4002157) (not b!4002154) (not b!4002149) (not b_next!111939) (not b!4002155) (not b!4002163) (not b!4002145) (not b!4002162) (not b!4002153) (not b!4002156) (not b_next!111941) b_and!307305 b_and!307307 (not b!4002164) (not b!4002161) (not b_next!111937) (not b!4002148) (not b!4002146) (not start!376688) (not b!4002159))
(check-sat (not b_next!111939) b_and!307309 (not b_next!111943) b_and!307303 (not b_next!111941) b_and!307305 b_and!307307 (not b_next!111937))
