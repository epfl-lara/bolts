; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!379608 () Bool)

(assert start!379608)

(declare-fun b!4028716 () Bool)

(declare-fun b_free!112169 () Bool)

(declare-fun b_next!112873 () Bool)

(assert (=> b!4028716 (= b_free!112169 (not b_next!112873))))

(declare-fun tp!1224286 () Bool)

(declare-fun b_and!309559 () Bool)

(assert (=> b!4028716 (= tp!1224286 b_and!309559)))

(declare-fun b_free!112171 () Bool)

(declare-fun b_next!112875 () Bool)

(assert (=> b!4028716 (= b_free!112171 (not b_next!112875))))

(declare-fun tp!1224293 () Bool)

(declare-fun b_and!309561 () Bool)

(assert (=> b!4028716 (= tp!1224293 b_and!309561)))

(declare-fun b!4028718 () Bool)

(declare-fun b_free!112173 () Bool)

(declare-fun b_next!112877 () Bool)

(assert (=> b!4028718 (= b_free!112173 (not b_next!112877))))

(declare-fun tp!1224288 () Bool)

(declare-fun b_and!309563 () Bool)

(assert (=> b!4028718 (= tp!1224288 b_and!309563)))

(declare-fun b_free!112175 () Bool)

(declare-fun b_next!112879 () Bool)

(assert (=> b!4028718 (= b_free!112175 (not b_next!112879))))

(declare-fun tp!1224294 () Bool)

(declare-fun b_and!309565 () Bool)

(assert (=> b!4028718 (= tp!1224294 b_and!309565)))

(declare-fun b!4028702 () Bool)

(declare-fun e!2499316 () Bool)

(declare-fun tp_is_empty!20557 () Bool)

(declare-fun tp!1224287 () Bool)

(assert (=> b!4028702 (= e!2499316 (and tp_is_empty!20557 tp!1224287))))

(declare-fun b!4028703 () Bool)

(declare-fun res!1639650 () Bool)

(declare-fun e!2499327 () Bool)

(assert (=> b!4028703 (=> (not res!1639650) (not e!2499327))))

(declare-datatypes ((C!23772 0))(
  ( (C!23773 (val!13980 Int)) )
))
(declare-datatypes ((List!43251 0))(
  ( (Nil!43127) (Cons!43127 (h!48547 C!23772) (t!334092 List!43251)) )
))
(declare-datatypes ((IArray!26203 0))(
  ( (IArray!26204 (innerList!13159 List!43251)) )
))
(declare-datatypes ((Conc!13099 0))(
  ( (Node!13099 (left!32497 Conc!13099) (right!32827 Conc!13099) (csize!26428 Int) (cheight!13310 Int)) (Leaf!20250 (xs!16405 IArray!26203) (csize!26429 Int)) (Empty!13099) )
))
(declare-datatypes ((BalanceConc!25792 0))(
  ( (BalanceConc!25793 (c!696064 Conc!13099)) )
))
(declare-datatypes ((String!49307 0))(
  ( (String!49308 (value!216916 String)) )
))
(declare-datatypes ((List!43252 0))(
  ( (Nil!43128) (Cons!43128 (h!48548 (_ BitVec 16)) (t!334093 List!43252)) )
))
(declare-datatypes ((TokenValue!7118 0))(
  ( (FloatLiteralValue!14236 (text!50271 List!43252)) (TokenValueExt!7117 (__x!26453 Int)) (Broken!35590 (value!216917 List!43252)) (Object!7241) (End!7118) (Def!7118) (Underscore!7118) (Match!7118) (Else!7118) (Error!7118) (Case!7118) (If!7118) (Extends!7118) (Abstract!7118) (Class!7118) (Val!7118) (DelimiterValue!14236 (del!7178 List!43252)) (KeywordValue!7124 (value!216918 List!43252)) (CommentValue!14236 (value!216919 List!43252)) (WhitespaceValue!14236 (value!216920 List!43252)) (IndentationValue!7118 (value!216921 List!43252)) (String!49309) (Int32!7118) (Broken!35591 (value!216922 List!43252)) (Boolean!7119) (Unit!62289) (OperatorValue!7121 (op!7178 List!43252)) (IdentifierValue!14236 (value!216923 List!43252)) (IdentifierValue!14237 (value!216924 List!43252)) (WhitespaceValue!14237 (value!216925 List!43252)) (True!14236) (False!14236) (Broken!35592 (value!216926 List!43252)) (Broken!35593 (value!216927 List!43252)) (True!14237) (RightBrace!7118) (RightBracket!7118) (Colon!7118) (Null!7118) (Comma!7118) (LeftBracket!7118) (False!14237) (LeftBrace!7118) (ImaginaryLiteralValue!7118 (text!50272 List!43252)) (StringLiteralValue!21354 (value!216928 List!43252)) (EOFValue!7118 (value!216929 List!43252)) (IdentValue!7118 (value!216930 List!43252)) (DelimiterValue!14237 (value!216931 List!43252)) (DedentValue!7118 (value!216932 List!43252)) (NewLineValue!7118 (value!216933 List!43252)) (IntegerValue!21354 (value!216934 (_ BitVec 32)) (text!50273 List!43252)) (IntegerValue!21355 (value!216935 Int) (text!50274 List!43252)) (Times!7118) (Or!7118) (Equal!7118) (Minus!7118) (Broken!35594 (value!216936 List!43252)) (And!7118) (Div!7118) (LessEqual!7118) (Mod!7118) (Concat!18911) (Not!7118) (Plus!7118) (SpaceValue!7118 (value!216937 List!43252)) (IntegerValue!21356 (value!216938 Int) (text!50275 List!43252)) (StringLiteralValue!21355 (text!50276 List!43252)) (FloatLiteralValue!14237 (text!50277 List!43252)) (BytesLiteralValue!7118 (value!216939 List!43252)) (CommentValue!14237 (value!216940 List!43252)) (StringLiteralValue!21356 (value!216941 List!43252)) (ErrorTokenValue!7118 (msg!7179 List!43252)) )
))
(declare-datatypes ((Regex!11793 0))(
  ( (ElementMatch!11793 (c!696065 C!23772)) (Concat!18912 (regOne!24098 Regex!11793) (regTwo!24098 Regex!11793)) (EmptyExpr!11793) (Star!11793 (reg!12122 Regex!11793)) (EmptyLang!11793) (Union!11793 (regOne!24099 Regex!11793) (regTwo!24099 Regex!11793)) )
))
(declare-datatypes ((TokenValueInjection!13664 0))(
  ( (TokenValueInjection!13665 (toValue!9412 Int) (toChars!9271 Int)) )
))
(declare-datatypes ((Rule!13576 0))(
  ( (Rule!13577 (regex!6888 Regex!11793) (tag!7748 String!49307) (isSeparator!6888 Bool) (transformation!6888 TokenValueInjection!13664)) )
))
(declare-datatypes ((List!43253 0))(
  ( (Nil!43129) (Cons!43129 (h!48549 Rule!13576) (t!334094 List!43253)) )
))
(declare-fun rules!2999 () List!43253)

(declare-fun isEmpty!25749 (List!43253) Bool)

(assert (=> b!4028703 (= res!1639650 (not (isEmpty!25749 rules!2999)))))

(declare-fun b!4028704 () Bool)

(declare-fun e!2499329 () Bool)

(declare-fun e!2499331 () Bool)

(declare-fun tp!1224295 () Bool)

(assert (=> b!4028704 (= e!2499329 (and e!2499331 tp!1224295))))

(declare-fun b!4028705 () Bool)

(declare-fun e!2499313 () Bool)

(declare-fun e!2499332 () Bool)

(assert (=> b!4028705 (= e!2499313 e!2499332)))

(declare-fun res!1639651 () Bool)

(assert (=> b!4028705 (=> res!1639651 e!2499332)))

(declare-datatypes ((Token!12914 0))(
  ( (Token!12915 (value!216942 TokenValue!7118) (rule!9948 Rule!13576) (size!32237 Int) (originalCharacters!7488 List!43251)) )
))
(declare-fun token!484 () Token!12914)

(declare-fun lt!1431185 () List!43251)

(declare-fun matchR!5746 (Regex!11793 List!43251) Bool)

(assert (=> b!4028705 (= res!1639651 (not (matchR!5746 (regex!6888 (rule!9948 token!484)) lt!1431185)))))

(declare-fun lt!1431180 () List!43251)

(declare-fun isPrefix!3975 (List!43251 List!43251) Bool)

(assert (=> b!4028705 (isPrefix!3975 lt!1431185 lt!1431180)))

(declare-fun newSuffix!27 () List!43251)

(declare-datatypes ((Unit!62290 0))(
  ( (Unit!62291) )
))
(declare-fun lt!1431198 () Unit!62290)

(declare-fun prefix!494 () List!43251)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!768 (List!43251 List!43251 List!43251) Unit!62290)

(assert (=> b!4028705 (= lt!1431198 (lemmaPrefixStaysPrefixWhenAddingToSuffix!768 lt!1431185 prefix!494 newSuffix!27))))

(declare-fun suffix!1299 () List!43251)

(declare-fun lt!1431192 () Unit!62290)

(assert (=> b!4028705 (= lt!1431192 (lemmaPrefixStaysPrefixWhenAddingToSuffix!768 lt!1431185 prefix!494 suffix!1299))))

(declare-fun tp!1224290 () Bool)

(declare-fun e!2499315 () Bool)

(declare-fun e!2499317 () Bool)

(declare-fun b!4028706 () Bool)

(declare-fun inv!21 (TokenValue!7118) Bool)

(assert (=> b!4028706 (= e!2499317 (and (inv!21 (value!216942 token!484)) e!2499315 tp!1224290))))

(declare-fun b!4028707 () Bool)

(declare-fun e!2499326 () Bool)

(declare-fun tp!1224297 () Bool)

(assert (=> b!4028707 (= e!2499326 (and tp_is_empty!20557 tp!1224297))))

(declare-fun b!4028708 () Bool)

(declare-fun e!2499320 () Bool)

(declare-fun e!2499325 () Bool)

(assert (=> b!4028708 (= e!2499320 e!2499325)))

(declare-fun res!1639652 () Bool)

(assert (=> b!4028708 (=> (not res!1639652) (not e!2499325))))

(declare-fun lt!1431199 () List!43251)

(assert (=> b!4028708 (= res!1639652 (= lt!1431199 lt!1431180))))

(declare-fun ++!11290 (List!43251 List!43251) List!43251)

(assert (=> b!4028708 (= lt!1431180 (++!11290 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43251)

(assert (=> b!4028708 (= lt!1431199 (++!11290 lt!1431185 newSuffixResult!27))))

(declare-fun b!4028709 () Bool)

(declare-fun lt!1431181 () TokenValue!7118)

(assert (=> b!4028709 (= e!2499332 (= (value!216942 token!484) lt!1431181))))

(declare-fun lt!1431182 () List!43251)

(assert (=> b!4028709 (isPrefix!3975 lt!1431182 lt!1431182)))

(declare-fun lt!1431187 () Unit!62290)

(declare-fun lemmaIsPrefixRefl!2542 (List!43251 List!43251) Unit!62290)

(assert (=> b!4028709 (= lt!1431187 (lemmaIsPrefixRefl!2542 lt!1431182 lt!1431182))))

(declare-fun b!4028710 () Bool)

(declare-fun e!2499328 () Bool)

(assert (=> b!4028710 (= e!2499325 e!2499328)))

(declare-fun res!1639649 () Bool)

(assert (=> b!4028710 (=> (not res!1639649) (not e!2499328))))

(declare-datatypes ((LexerInterface!6477 0))(
  ( (LexerInterfaceExt!6474 (__x!26454 Int)) (Lexer!6475) )
))
(declare-fun thiss!21717 () LexerInterface!6477)

(declare-datatypes ((tuple2!42230 0))(
  ( (tuple2!42231 (_1!24249 Token!12914) (_2!24249 List!43251)) )
))
(declare-datatypes ((Option!9302 0))(
  ( (None!9301) (Some!9301 (v!39689 tuple2!42230)) )
))
(declare-fun lt!1431178 () Option!9302)

(declare-fun maxPrefix!3775 (LexerInterface!6477 List!43253 List!43251) Option!9302)

(assert (=> b!4028710 (= res!1639649 (= (maxPrefix!3775 thiss!21717 rules!2999 lt!1431182) lt!1431178))))

(declare-fun suffixResult!105 () List!43251)

(assert (=> b!4028710 (= lt!1431178 (Some!9301 (tuple2!42231 token!484 suffixResult!105)))))

(assert (=> b!4028710 (= lt!1431182 (++!11290 prefix!494 suffix!1299))))

(declare-fun b!4028711 () Bool)

(declare-fun res!1639656 () Bool)

(assert (=> b!4028711 (=> (not res!1639656) (not e!2499327))))

(declare-fun rulesInvariant!5820 (LexerInterface!6477 List!43253) Bool)

(assert (=> b!4028711 (= res!1639656 (rulesInvariant!5820 thiss!21717 rules!2999))))

(declare-fun b!4028712 () Bool)

(declare-fun e!2499314 () Bool)

(declare-fun tp!1224289 () Bool)

(assert (=> b!4028712 (= e!2499314 (and tp_is_empty!20557 tp!1224289))))

(declare-fun e!2499318 () Bool)

(declare-fun tp!1224296 () Bool)

(declare-fun b!4028713 () Bool)

(declare-fun inv!57619 (String!49307) Bool)

(declare-fun inv!57622 (TokenValueInjection!13664) Bool)

(assert (=> b!4028713 (= e!2499315 (and tp!1224296 (inv!57619 (tag!7748 (rule!9948 token!484))) (inv!57622 (transformation!6888 (rule!9948 token!484))) e!2499318))))

(declare-fun b!4028714 () Bool)

(declare-fun e!2499334 () Bool)

(declare-fun e!2499319 () Bool)

(assert (=> b!4028714 (= e!2499334 e!2499319)))

(declare-fun res!1639658 () Bool)

(assert (=> b!4028714 (=> res!1639658 e!2499319)))

(declare-fun lt!1431203 () List!43251)

(declare-fun lt!1431194 () List!43251)

(assert (=> b!4028714 (= res!1639658 (or (not (= lt!1431182 lt!1431194)) (not (= lt!1431182 lt!1431203))))))

(assert (=> b!4028714 (= lt!1431194 lt!1431203)))

(declare-fun lt!1431196 () List!43251)

(assert (=> b!4028714 (= lt!1431203 (++!11290 lt!1431185 lt!1431196))))

(declare-fun lt!1431197 () List!43251)

(assert (=> b!4028714 (= lt!1431194 (++!11290 lt!1431197 suffix!1299))))

(declare-fun lt!1431193 () List!43251)

(assert (=> b!4028714 (= lt!1431196 (++!11290 lt!1431193 suffix!1299))))

(declare-fun lt!1431186 () Unit!62290)

(declare-fun lemmaConcatAssociativity!2592 (List!43251 List!43251 List!43251) Unit!62290)

(assert (=> b!4028714 (= lt!1431186 (lemmaConcatAssociativity!2592 lt!1431185 lt!1431193 suffix!1299))))

(declare-fun b!4028715 () Bool)

(declare-fun e!2499323 () Bool)

(declare-fun tp!1224291 () Bool)

(assert (=> b!4028715 (= e!2499323 (and tp_is_empty!20557 tp!1224291))))

(declare-fun e!2499321 () Bool)

(assert (=> b!4028716 (= e!2499321 (and tp!1224286 tp!1224293))))

(declare-fun b!4028717 () Bool)

(declare-fun res!1639646 () Bool)

(assert (=> b!4028717 (=> (not res!1639646) (not e!2499327))))

(declare-fun size!32238 (List!43251) Int)

(assert (=> b!4028717 (= res!1639646 (>= (size!32238 suffix!1299) (size!32238 newSuffix!27)))))

(assert (=> b!4028718 (= e!2499318 (and tp!1224288 tp!1224294))))

(declare-fun b!4028719 () Bool)

(assert (=> b!4028719 (= e!2499327 e!2499320)))

(declare-fun res!1639655 () Bool)

(assert (=> b!4028719 (=> (not res!1639655) (not e!2499320))))

(declare-fun lt!1431191 () Int)

(declare-fun lt!1431195 () Int)

(assert (=> b!4028719 (= res!1639655 (>= lt!1431191 lt!1431195))))

(assert (=> b!4028719 (= lt!1431195 (size!32238 lt!1431185))))

(assert (=> b!4028719 (= lt!1431191 (size!32238 prefix!494))))

(declare-fun list!16046 (BalanceConc!25792) List!43251)

(declare-fun charsOf!4704 (Token!12914) BalanceConc!25792)

(assert (=> b!4028719 (= lt!1431185 (list!16046 (charsOf!4704 token!484)))))

(declare-fun res!1639654 () Bool)

(assert (=> start!379608 (=> (not res!1639654) (not e!2499327))))

(get-info :version)

(assert (=> start!379608 (= res!1639654 ((_ is Lexer!6475) thiss!21717))))

(assert (=> start!379608 e!2499327))

(declare-fun e!2499311 () Bool)

(assert (=> start!379608 e!2499311))

(declare-fun inv!57623 (Token!12914) Bool)

(assert (=> start!379608 (and (inv!57623 token!484) e!2499317)))

(assert (=> start!379608 e!2499316))

(assert (=> start!379608 e!2499323))

(assert (=> start!379608 e!2499314))

(assert (=> start!379608 true))

(assert (=> start!379608 e!2499329))

(assert (=> start!379608 e!2499326))

(declare-fun tp!1224292 () Bool)

(declare-fun b!4028720 () Bool)

(assert (=> b!4028720 (= e!2499331 (and tp!1224292 (inv!57619 (tag!7748 (h!48549 rules!2999))) (inv!57622 (transformation!6888 (h!48549 rules!2999))) e!2499321))))

(declare-fun b!4028721 () Bool)

(declare-fun e!2499312 () Bool)

(declare-fun e!2499322 () Bool)

(assert (=> b!4028721 (= e!2499312 e!2499322)))

(declare-fun res!1639653 () Bool)

(assert (=> b!4028721 (=> res!1639653 e!2499322)))

(assert (=> b!4028721 (= res!1639653 (not (isPrefix!3975 lt!1431185 lt!1431182)))))

(assert (=> b!4028721 (isPrefix!3975 prefix!494 lt!1431182)))

(declare-fun lt!1431190 () Unit!62290)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2810 (List!43251 List!43251) Unit!62290)

(assert (=> b!4028721 (= lt!1431190 (lemmaConcatTwoListThenFirstIsPrefix!2810 prefix!494 suffix!1299))))

(declare-fun lt!1431177 () List!43251)

(assert (=> b!4028721 (isPrefix!3975 lt!1431185 lt!1431177)))

(declare-fun lt!1431201 () Unit!62290)

(assert (=> b!4028721 (= lt!1431201 (lemmaConcatTwoListThenFirstIsPrefix!2810 lt!1431185 suffixResult!105))))

(declare-fun b!4028722 () Bool)

(assert (=> b!4028722 (= e!2499328 (not e!2499312))))

(declare-fun res!1639657 () Bool)

(assert (=> b!4028722 (=> res!1639657 e!2499312)))

(assert (=> b!4028722 (= res!1639657 (not (= lt!1431177 lt!1431182)))))

(assert (=> b!4028722 (= lt!1431177 (++!11290 lt!1431185 suffixResult!105))))

(declare-fun lt!1431183 () Unit!62290)

(declare-fun lemmaInv!1097 (TokenValueInjection!13664) Unit!62290)

(assert (=> b!4028722 (= lt!1431183 (lemmaInv!1097 (transformation!6888 (rule!9948 token!484))))))

(declare-fun ruleValid!2818 (LexerInterface!6477 Rule!13576) Bool)

(assert (=> b!4028722 (ruleValid!2818 thiss!21717 (rule!9948 token!484))))

(declare-fun lt!1431184 () Unit!62290)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1888 (LexerInterface!6477 Rule!13576 List!43253) Unit!62290)

(assert (=> b!4028722 (= lt!1431184 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1888 thiss!21717 (rule!9948 token!484) rules!2999))))

(declare-fun b!4028723 () Bool)

(declare-fun tp!1224298 () Bool)

(assert (=> b!4028723 (= e!2499311 (and tp_is_empty!20557 tp!1224298))))

(declare-fun b!4028724 () Bool)

(assert (=> b!4028724 (= e!2499319 e!2499313)))

(declare-fun res!1639647 () Bool)

(assert (=> b!4028724 (=> res!1639647 e!2499313)))

(declare-fun lt!1431179 () Option!9302)

(assert (=> b!4028724 (= res!1639647 (not (= lt!1431179 lt!1431178)))))

(assert (=> b!4028724 (= lt!1431179 (Some!9301 (tuple2!42231 (Token!12915 lt!1431181 (rule!9948 token!484) lt!1431195 lt!1431185) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2787 (LexerInterface!6477 Rule!13576 List!43251) Option!9302)

(assert (=> b!4028724 (= lt!1431179 (maxPrefixOneRule!2787 thiss!21717 (rule!9948 token!484) lt!1431182))))

(declare-fun apply!10077 (TokenValueInjection!13664 BalanceConc!25792) TokenValue!7118)

(declare-fun seqFromList!5105 (List!43251) BalanceConc!25792)

(assert (=> b!4028724 (= lt!1431181 (apply!10077 (transformation!6888 (rule!9948 token!484)) (seqFromList!5105 lt!1431185)))))

(declare-fun lt!1431188 () Unit!62290)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1593 (LexerInterface!6477 List!43253 List!43251 List!43251 List!43251 Rule!13576) Unit!62290)

(assert (=> b!4028724 (= lt!1431188 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1593 thiss!21717 rules!2999 lt!1431185 lt!1431182 suffixResult!105 (rule!9948 token!484)))))

(assert (=> b!4028724 (= lt!1431196 suffixResult!105)))

(declare-fun lt!1431189 () Unit!62290)

(declare-fun lemmaSamePrefixThenSameSuffix!2136 (List!43251 List!43251 List!43251 List!43251 List!43251) Unit!62290)

(assert (=> b!4028724 (= lt!1431189 (lemmaSamePrefixThenSameSuffix!2136 lt!1431185 lt!1431196 lt!1431185 suffixResult!105 lt!1431182))))

(assert (=> b!4028724 (isPrefix!3975 lt!1431185 lt!1431203)))

(declare-fun lt!1431200 () Unit!62290)

(assert (=> b!4028724 (= lt!1431200 (lemmaConcatTwoListThenFirstIsPrefix!2810 lt!1431185 lt!1431196))))

(declare-fun b!4028725 () Bool)

(declare-fun res!1639659 () Bool)

(assert (=> b!4028725 (=> (not res!1639659) (not e!2499327))))

(assert (=> b!4028725 (= res!1639659 (isPrefix!3975 newSuffix!27 suffix!1299))))

(declare-fun b!4028726 () Bool)

(assert (=> b!4028726 (= e!2499322 e!2499334)))

(declare-fun res!1639648 () Bool)

(assert (=> b!4028726 (=> res!1639648 e!2499334)))

(assert (=> b!4028726 (= res!1639648 (not (= lt!1431197 prefix!494)))))

(assert (=> b!4028726 (= lt!1431197 (++!11290 lt!1431185 lt!1431193))))

(declare-fun getSuffix!2392 (List!43251 List!43251) List!43251)

(assert (=> b!4028726 (= lt!1431193 (getSuffix!2392 prefix!494 lt!1431185))))

(assert (=> b!4028726 (isPrefix!3975 lt!1431185 prefix!494)))

(declare-fun lt!1431202 () Unit!62290)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!539 (List!43251 List!43251 List!43251) Unit!62290)

(assert (=> b!4028726 (= lt!1431202 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!539 prefix!494 lt!1431185 lt!1431182))))

(assert (= (and start!379608 res!1639654) b!4028703))

(assert (= (and b!4028703 res!1639650) b!4028711))

(assert (= (and b!4028711 res!1639656) b!4028717))

(assert (= (and b!4028717 res!1639646) b!4028725))

(assert (= (and b!4028725 res!1639659) b!4028719))

(assert (= (and b!4028719 res!1639655) b!4028708))

(assert (= (and b!4028708 res!1639652) b!4028710))

(assert (= (and b!4028710 res!1639649) b!4028722))

(assert (= (and b!4028722 (not res!1639657)) b!4028721))

(assert (= (and b!4028721 (not res!1639653)) b!4028726))

(assert (= (and b!4028726 (not res!1639648)) b!4028714))

(assert (= (and b!4028714 (not res!1639658)) b!4028724))

(assert (= (and b!4028724 (not res!1639647)) b!4028705))

(assert (= (and b!4028705 (not res!1639651)) b!4028709))

(assert (= (and start!379608 ((_ is Cons!43127) prefix!494)) b!4028723))

(assert (= b!4028713 b!4028718))

(assert (= b!4028706 b!4028713))

(assert (= start!379608 b!4028706))

(assert (= (and start!379608 ((_ is Cons!43127) suffixResult!105)) b!4028702))

(assert (= (and start!379608 ((_ is Cons!43127) suffix!1299)) b!4028715))

(assert (= (and start!379608 ((_ is Cons!43127) newSuffix!27)) b!4028712))

(assert (= b!4028720 b!4028716))

(assert (= b!4028704 b!4028720))

(assert (= (and start!379608 ((_ is Cons!43129) rules!2999)) b!4028704))

(assert (= (and start!379608 ((_ is Cons!43127) newSuffixResult!27)) b!4028707))

(declare-fun m!4620391 () Bool)

(assert (=> b!4028705 m!4620391))

(declare-fun m!4620393 () Bool)

(assert (=> b!4028705 m!4620393))

(declare-fun m!4620395 () Bool)

(assert (=> b!4028705 m!4620395))

(declare-fun m!4620397 () Bool)

(assert (=> b!4028705 m!4620397))

(declare-fun m!4620399 () Bool)

(assert (=> b!4028720 m!4620399))

(declare-fun m!4620401 () Bool)

(assert (=> b!4028720 m!4620401))

(declare-fun m!4620403 () Bool)

(assert (=> b!4028721 m!4620403))

(declare-fun m!4620405 () Bool)

(assert (=> b!4028721 m!4620405))

(declare-fun m!4620407 () Bool)

(assert (=> b!4028721 m!4620407))

(declare-fun m!4620409 () Bool)

(assert (=> b!4028721 m!4620409))

(declare-fun m!4620411 () Bool)

(assert (=> b!4028721 m!4620411))

(declare-fun m!4620413 () Bool)

(assert (=> b!4028722 m!4620413))

(declare-fun m!4620415 () Bool)

(assert (=> b!4028722 m!4620415))

(declare-fun m!4620417 () Bool)

(assert (=> b!4028722 m!4620417))

(declare-fun m!4620419 () Bool)

(assert (=> b!4028722 m!4620419))

(declare-fun m!4620421 () Bool)

(assert (=> b!4028713 m!4620421))

(declare-fun m!4620423 () Bool)

(assert (=> b!4028713 m!4620423))

(declare-fun m!4620425 () Bool)

(assert (=> b!4028709 m!4620425))

(declare-fun m!4620427 () Bool)

(assert (=> b!4028709 m!4620427))

(declare-fun m!4620429 () Bool)

(assert (=> b!4028724 m!4620429))

(declare-fun m!4620431 () Bool)

(assert (=> b!4028724 m!4620431))

(assert (=> b!4028724 m!4620429))

(declare-fun m!4620433 () Bool)

(assert (=> b!4028724 m!4620433))

(declare-fun m!4620435 () Bool)

(assert (=> b!4028724 m!4620435))

(declare-fun m!4620437 () Bool)

(assert (=> b!4028724 m!4620437))

(declare-fun m!4620439 () Bool)

(assert (=> b!4028724 m!4620439))

(declare-fun m!4620441 () Bool)

(assert (=> b!4028724 m!4620441))

(declare-fun m!4620443 () Bool)

(assert (=> b!4028725 m!4620443))

(declare-fun m!4620445 () Bool)

(assert (=> b!4028708 m!4620445))

(declare-fun m!4620447 () Bool)

(assert (=> b!4028708 m!4620447))

(declare-fun m!4620449 () Bool)

(assert (=> b!4028714 m!4620449))

(declare-fun m!4620451 () Bool)

(assert (=> b!4028714 m!4620451))

(declare-fun m!4620453 () Bool)

(assert (=> b!4028714 m!4620453))

(declare-fun m!4620455 () Bool)

(assert (=> b!4028714 m!4620455))

(declare-fun m!4620457 () Bool)

(assert (=> b!4028706 m!4620457))

(declare-fun m!4620459 () Bool)

(assert (=> b!4028717 m!4620459))

(declare-fun m!4620461 () Bool)

(assert (=> b!4028717 m!4620461))

(declare-fun m!4620463 () Bool)

(assert (=> b!4028711 m!4620463))

(declare-fun m!4620465 () Bool)

(assert (=> b!4028719 m!4620465))

(declare-fun m!4620467 () Bool)

(assert (=> b!4028719 m!4620467))

(declare-fun m!4620469 () Bool)

(assert (=> b!4028719 m!4620469))

(assert (=> b!4028719 m!4620469))

(declare-fun m!4620471 () Bool)

(assert (=> b!4028719 m!4620471))

(declare-fun m!4620473 () Bool)

(assert (=> start!379608 m!4620473))

(declare-fun m!4620475 () Bool)

(assert (=> b!4028703 m!4620475))

(declare-fun m!4620477 () Bool)

(assert (=> b!4028726 m!4620477))

(declare-fun m!4620479 () Bool)

(assert (=> b!4028726 m!4620479))

(declare-fun m!4620481 () Bool)

(assert (=> b!4028726 m!4620481))

(declare-fun m!4620483 () Bool)

(assert (=> b!4028726 m!4620483))

(declare-fun m!4620485 () Bool)

(assert (=> b!4028710 m!4620485))

(declare-fun m!4620487 () Bool)

(assert (=> b!4028710 m!4620487))

(check-sat (not b_next!112875) (not b!4028707) (not b!4028726) (not b!4028711) (not b!4028703) (not b!4028702) (not b_next!112879) (not b!4028721) b_and!309561 b_and!309559 (not b!4028710) (not b!4028706) tp_is_empty!20557 b_and!309565 (not b!4028722) (not b_next!112877) (not b!4028719) (not b!4028708) (not b!4028705) (not b!4028715) (not start!379608) (not b!4028725) (not b!4028712) (not b!4028724) (not b!4028713) (not b!4028717) (not b!4028704) (not b!4028720) (not b!4028723) (not b_next!112873) b_and!309563 (not b!4028714) (not b!4028709))
(check-sat (not b_next!112875) b_and!309565 (not b_next!112877) (not b_next!112879) b_and!309561 b_and!309559 (not b_next!112873) b_and!309563)
