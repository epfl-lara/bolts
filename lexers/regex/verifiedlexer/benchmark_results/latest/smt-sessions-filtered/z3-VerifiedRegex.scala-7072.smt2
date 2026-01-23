; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374980 () Bool)

(assert start!374980)

(declare-fun b!3984184 () Bool)

(declare-fun b_free!110617 () Bool)

(declare-fun b_next!111321 () Bool)

(assert (=> b!3984184 (= b_free!110617 (not b_next!111321))))

(declare-fun tp!1214260 () Bool)

(declare-fun b_and!306207 () Bool)

(assert (=> b!3984184 (= tp!1214260 b_and!306207)))

(declare-fun b_free!110619 () Bool)

(declare-fun b_next!111323 () Bool)

(assert (=> b!3984184 (= b_free!110619 (not b_next!111323))))

(declare-fun tp!1214264 () Bool)

(declare-fun b_and!306209 () Bool)

(assert (=> b!3984184 (= tp!1214264 b_and!306209)))

(declare-fun b!3984192 () Bool)

(declare-fun b_free!110621 () Bool)

(declare-fun b_next!111325 () Bool)

(assert (=> b!3984192 (= b_free!110621 (not b_next!111325))))

(declare-fun tp!1214256 () Bool)

(declare-fun b_and!306211 () Bool)

(assert (=> b!3984192 (= tp!1214256 b_and!306211)))

(declare-fun b_free!110623 () Bool)

(declare-fun b_next!111327 () Bool)

(assert (=> b!3984192 (= b_free!110623 (not b_next!111327))))

(declare-fun tp!1214263 () Bool)

(declare-fun b_and!306213 () Bool)

(assert (=> b!3984192 (= tp!1214263 b_and!306213)))

(declare-fun b!3984167 () Bool)

(declare-fun e!2469302 () Bool)

(declare-fun e!2469327 () Bool)

(assert (=> b!3984167 (= e!2469302 e!2469327)))

(declare-fun res!1615447 () Bool)

(assert (=> b!3984167 (=> res!1615447 e!2469327)))

(declare-datatypes ((C!23460 0))(
  ( (C!23461 (val!13824 Int)) )
))
(declare-datatypes ((List!42726 0))(
  ( (Nil!42602) (Cons!42602 (h!48022 C!23460) (t!331477 List!42726)) )
))
(declare-fun lt!1401164 () List!42726)

(declare-fun lt!1401171 () List!42726)

(declare-fun isPrefix!3819 (List!42726 List!42726) Bool)

(assert (=> b!3984167 (= res!1615447 (not (isPrefix!3819 lt!1401164 lt!1401171)))))

(declare-fun prefix!494 () List!42726)

(assert (=> b!3984167 (isPrefix!3819 prefix!494 lt!1401171)))

(declare-datatypes ((Unit!61281 0))(
  ( (Unit!61282) )
))
(declare-fun lt!1401165 () Unit!61281)

(declare-fun suffix!1299 () List!42726)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2662 (List!42726 List!42726) Unit!61281)

(assert (=> b!3984167 (= lt!1401165 (lemmaConcatTwoListThenFirstIsPrefix!2662 prefix!494 suffix!1299))))

(declare-fun lt!1401176 () List!42726)

(assert (=> b!3984167 (isPrefix!3819 lt!1401164 lt!1401176)))

(declare-fun lt!1401130 () Unit!61281)

(declare-fun suffixResult!105 () List!42726)

(assert (=> b!3984167 (= lt!1401130 (lemmaConcatTwoListThenFirstIsPrefix!2662 lt!1401164 suffixResult!105))))

(declare-fun b!3984168 () Bool)

(declare-fun res!1615440 () Bool)

(declare-fun e!2469313 () Bool)

(assert (=> b!3984168 (=> res!1615440 e!2469313)))

(declare-fun lt!1401132 () List!42726)

(declare-fun lt!1401185 () List!42726)

(assert (=> b!3984168 (= res!1615440 (not (= lt!1401132 lt!1401185)))))

(declare-fun b!3984169 () Bool)

(declare-fun e!2469317 () Bool)

(assert (=> b!3984169 (= e!2469317 (not e!2469302))))

(declare-fun res!1615442 () Bool)

(assert (=> b!3984169 (=> res!1615442 e!2469302)))

(assert (=> b!3984169 (= res!1615442 (not (= lt!1401176 lt!1401171)))))

(declare-fun ++!11134 (List!42726 List!42726) List!42726)

(assert (=> b!3984169 (= lt!1401176 (++!11134 lt!1401164 suffixResult!105))))

(declare-fun lt!1401159 () Unit!61281)

(declare-datatypes ((List!42727 0))(
  ( (Nil!42603) (Cons!42603 (h!48023 (_ BitVec 16)) (t!331478 List!42727)) )
))
(declare-datatypes ((TokenValue!6962 0))(
  ( (FloatLiteralValue!13924 (text!49179 List!42727)) (TokenValueExt!6961 (__x!26141 Int)) (Broken!34810 (value!212470 List!42727)) (Object!7085) (End!6962) (Def!6962) (Underscore!6962) (Match!6962) (Else!6962) (Error!6962) (Case!6962) (If!6962) (Extends!6962) (Abstract!6962) (Class!6962) (Val!6962) (DelimiterValue!13924 (del!7022 List!42727)) (KeywordValue!6968 (value!212471 List!42727)) (CommentValue!13924 (value!212472 List!42727)) (WhitespaceValue!13924 (value!212473 List!42727)) (IndentationValue!6962 (value!212474 List!42727)) (String!48527) (Int32!6962) (Broken!34811 (value!212475 List!42727)) (Boolean!6963) (Unit!61283) (OperatorValue!6965 (op!7022 List!42727)) (IdentifierValue!13924 (value!212476 List!42727)) (IdentifierValue!13925 (value!212477 List!42727)) (WhitespaceValue!13925 (value!212478 List!42727)) (True!13924) (False!13924) (Broken!34812 (value!212479 List!42727)) (Broken!34813 (value!212480 List!42727)) (True!13925) (RightBrace!6962) (RightBracket!6962) (Colon!6962) (Null!6962) (Comma!6962) (LeftBracket!6962) (False!13925) (LeftBrace!6962) (ImaginaryLiteralValue!6962 (text!49180 List!42727)) (StringLiteralValue!20886 (value!212481 List!42727)) (EOFValue!6962 (value!212482 List!42727)) (IdentValue!6962 (value!212483 List!42727)) (DelimiterValue!13925 (value!212484 List!42727)) (DedentValue!6962 (value!212485 List!42727)) (NewLineValue!6962 (value!212486 List!42727)) (IntegerValue!20886 (value!212487 (_ BitVec 32)) (text!49181 List!42727)) (IntegerValue!20887 (value!212488 Int) (text!49182 List!42727)) (Times!6962) (Or!6962) (Equal!6962) (Minus!6962) (Broken!34814 (value!212489 List!42727)) (And!6962) (Div!6962) (LessEqual!6962) (Mod!6962) (Concat!18599) (Not!6962) (Plus!6962) (SpaceValue!6962 (value!212490 List!42727)) (IntegerValue!20888 (value!212491 Int) (text!49183 List!42727)) (StringLiteralValue!20887 (text!49184 List!42727)) (FloatLiteralValue!13925 (text!49185 List!42727)) (BytesLiteralValue!6962 (value!212492 List!42727)) (CommentValue!13925 (value!212493 List!42727)) (StringLiteralValue!20888 (value!212494 List!42727)) (ErrorTokenValue!6962 (msg!7023 List!42727)) )
))
(declare-datatypes ((Regex!11637 0))(
  ( (ElementMatch!11637 (c!689982 C!23460)) (Concat!18600 (regOne!23786 Regex!11637) (regTwo!23786 Regex!11637)) (EmptyExpr!11637) (Star!11637 (reg!11966 Regex!11637)) (EmptyLang!11637) (Union!11637 (regOne!23787 Regex!11637) (regTwo!23787 Regex!11637)) )
))
(declare-datatypes ((String!48528 0))(
  ( (String!48529 (value!212495 String)) )
))
(declare-datatypes ((IArray!25891 0))(
  ( (IArray!25892 (innerList!13003 List!42726)) )
))
(declare-datatypes ((Conc!12943 0))(
  ( (Node!12943 (left!32211 Conc!12943) (right!32541 Conc!12943) (csize!26116 Int) (cheight!13154 Int)) (Leaf!20016 (xs!16249 IArray!25891) (csize!26117 Int)) (Empty!12943) )
))
(declare-datatypes ((BalanceConc!25480 0))(
  ( (BalanceConc!25481 (c!689983 Conc!12943)) )
))
(declare-datatypes ((TokenValueInjection!13352 0))(
  ( (TokenValueInjection!13353 (toValue!9220 Int) (toChars!9079 Int)) )
))
(declare-datatypes ((Rule!13264 0))(
  ( (Rule!13265 (regex!6732 Regex!11637) (tag!7592 String!48528) (isSeparator!6732 Bool) (transformation!6732 TokenValueInjection!13352)) )
))
(declare-datatypes ((Token!12602 0))(
  ( (Token!12603 (value!212496 TokenValue!6962) (rule!9742 Rule!13264) (size!31866 Int) (originalCharacters!7332 List!42726)) )
))
(declare-fun token!484 () Token!12602)

(declare-fun lemmaInv!947 (TokenValueInjection!13352) Unit!61281)

(assert (=> b!3984169 (= lt!1401159 (lemmaInv!947 (transformation!6732 (rule!9742 token!484))))))

(declare-datatypes ((LexerInterface!6321 0))(
  ( (LexerInterfaceExt!6318 (__x!26142 Int)) (Lexer!6319) )
))
(declare-fun thiss!21717 () LexerInterface!6321)

(declare-fun ruleValid!2664 (LexerInterface!6321 Rule!13264) Bool)

(assert (=> b!3984169 (ruleValid!2664 thiss!21717 (rule!9742 token!484))))

(declare-datatypes ((List!42728 0))(
  ( (Nil!42604) (Cons!42604 (h!48024 Rule!13264) (t!331479 List!42728)) )
))
(declare-fun rules!2999 () List!42728)

(declare-fun lt!1401131 () Unit!61281)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1738 (LexerInterface!6321 Rule!13264 List!42728) Unit!61281)

(assert (=> b!3984169 (= lt!1401131 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1738 thiss!21717 (rule!9742 token!484) rules!2999))))

(declare-fun b!3984170 () Bool)

(declare-fun e!2469318 () Bool)

(declare-fun e!2469304 () Bool)

(assert (=> b!3984170 (= e!2469318 e!2469304)))

(declare-fun res!1615427 () Bool)

(assert (=> b!3984170 (=> res!1615427 e!2469304)))

(declare-fun matchR!5614 (Regex!11637 List!42726) Bool)

(assert (=> b!3984170 (= res!1615427 (not (matchR!5614 (regex!6732 (rule!9742 token!484)) lt!1401164)))))

(assert (=> b!3984170 (isPrefix!3819 lt!1401164 lt!1401185)))

(declare-fun newSuffix!27 () List!42726)

(declare-fun lt!1401141 () Unit!61281)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!652 (List!42726 List!42726 List!42726) Unit!61281)

(assert (=> b!3984170 (= lt!1401141 (lemmaPrefixStaysPrefixWhenAddingToSuffix!652 lt!1401164 prefix!494 newSuffix!27))))

(declare-fun lt!1401155 () Unit!61281)

(assert (=> b!3984170 (= lt!1401155 (lemmaPrefixStaysPrefixWhenAddingToSuffix!652 lt!1401164 prefix!494 suffix!1299))))

(declare-fun b!3984171 () Bool)

(declare-fun e!2469315 () Bool)

(declare-fun e!2469308 () Bool)

(assert (=> b!3984171 (= e!2469315 e!2469308)))

(declare-fun res!1615434 () Bool)

(assert (=> b!3984171 (=> res!1615434 e!2469308)))

(declare-fun lt!1401151 () List!42726)

(declare-fun lt!1401139 () List!42726)

(assert (=> b!3984171 (= res!1615434 (or (not (= lt!1401171 lt!1401139)) (not (= lt!1401171 lt!1401151))))))

(assert (=> b!3984171 (= lt!1401139 lt!1401151)))

(declare-fun lt!1401157 () List!42726)

(assert (=> b!3984171 (= lt!1401151 (++!11134 lt!1401164 lt!1401157))))

(declare-fun lt!1401166 () List!42726)

(assert (=> b!3984171 (= lt!1401139 (++!11134 lt!1401166 suffix!1299))))

(declare-fun lt!1401180 () List!42726)

(assert (=> b!3984171 (= lt!1401157 (++!11134 lt!1401180 suffix!1299))))

(declare-fun lt!1401137 () Unit!61281)

(declare-fun lemmaConcatAssociativity!2454 (List!42726 List!42726 List!42726) Unit!61281)

(assert (=> b!3984171 (= lt!1401137 (lemmaConcatAssociativity!2454 lt!1401164 lt!1401180 suffix!1299))))

(declare-fun b!3984172 () Bool)

(declare-fun e!2469316 () Bool)

(assert (=> b!3984172 (= e!2469316 e!2469317)))

(declare-fun res!1615436 () Bool)

(assert (=> b!3984172 (=> (not res!1615436) (not e!2469317))))

(declare-datatypes ((tuple2!41820 0))(
  ( (tuple2!41821 (_1!24044 Token!12602) (_2!24044 List!42726)) )
))
(declare-datatypes ((Option!9146 0))(
  ( (None!9145) (Some!9145 (v!39495 tuple2!41820)) )
))
(declare-fun lt!1401143 () Option!9146)

(declare-fun maxPrefix!3619 (LexerInterface!6321 List!42728 List!42726) Option!9146)

(assert (=> b!3984172 (= res!1615436 (= (maxPrefix!3619 thiss!21717 rules!2999 lt!1401171) lt!1401143))))

(declare-fun lt!1401133 () tuple2!41820)

(assert (=> b!3984172 (= lt!1401143 (Some!9145 lt!1401133))))

(assert (=> b!3984172 (= lt!1401133 (tuple2!41821 token!484 suffixResult!105))))

(assert (=> b!3984172 (= lt!1401171 (++!11134 prefix!494 suffix!1299))))

(declare-fun b!3984173 () Bool)

(assert (=> b!3984173 (= e!2469308 e!2469318)))

(declare-fun res!1615441 () Bool)

(assert (=> b!3984173 (=> res!1615441 e!2469318)))

(declare-fun lt!1401148 () Option!9146)

(assert (=> b!3984173 (= res!1615441 (not (= lt!1401148 lt!1401143)))))

(declare-fun lt!1401144 () Token!12602)

(assert (=> b!3984173 (= lt!1401148 (Some!9145 (tuple2!41821 lt!1401144 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2653 (LexerInterface!6321 Rule!13264 List!42726) Option!9146)

(assert (=> b!3984173 (= lt!1401148 (maxPrefixOneRule!2653 thiss!21717 (rule!9742 token!484) lt!1401171))))

(declare-fun lt!1401183 () TokenValue!6962)

(declare-fun lt!1401145 () Int)

(assert (=> b!3984173 (= lt!1401144 (Token!12603 lt!1401183 (rule!9742 token!484) lt!1401145 lt!1401164))))

(declare-fun apply!9943 (TokenValueInjection!13352 BalanceConc!25480) TokenValue!6962)

(declare-fun seqFromList!4971 (List!42726) BalanceConc!25480)

(assert (=> b!3984173 (= lt!1401183 (apply!9943 (transformation!6732 (rule!9742 token!484)) (seqFromList!4971 lt!1401164)))))

(declare-fun lt!1401168 () Unit!61281)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1475 (LexerInterface!6321 List!42728 List!42726 List!42726 List!42726 Rule!13264) Unit!61281)

(assert (=> b!3984173 (= lt!1401168 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1475 thiss!21717 rules!2999 lt!1401164 lt!1401171 suffixResult!105 (rule!9742 token!484)))))

(assert (=> b!3984173 (= lt!1401157 suffixResult!105)))

(declare-fun lt!1401154 () Unit!61281)

(declare-fun lemmaSamePrefixThenSameSuffix!2006 (List!42726 List!42726 List!42726 List!42726 List!42726) Unit!61281)

(assert (=> b!3984173 (= lt!1401154 (lemmaSamePrefixThenSameSuffix!2006 lt!1401164 lt!1401157 lt!1401164 suffixResult!105 lt!1401171))))

(assert (=> b!3984173 (isPrefix!3819 lt!1401164 lt!1401151)))

(declare-fun lt!1401172 () Unit!61281)

(assert (=> b!3984173 (= lt!1401172 (lemmaConcatTwoListThenFirstIsPrefix!2662 lt!1401164 lt!1401157))))

(declare-fun b!3984174 () Bool)

(declare-fun e!2469314 () Bool)

(assert (=> b!3984174 (= e!2469314 e!2469316)))

(declare-fun res!1615428 () Bool)

(assert (=> b!3984174 (=> (not res!1615428) (not e!2469316))))

(declare-fun lt!1401160 () List!42726)

(assert (=> b!3984174 (= res!1615428 (= lt!1401160 lt!1401185))))

(assert (=> b!3984174 (= lt!1401185 (++!11134 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42726)

(assert (=> b!3984174 (= lt!1401160 (++!11134 lt!1401164 newSuffixResult!27))))

(declare-fun e!2469300 () Bool)

(declare-fun tp!1214262 () Bool)

(declare-fun e!2469298 () Bool)

(declare-fun b!3984175 () Bool)

(declare-fun inv!56906 (String!48528) Bool)

(declare-fun inv!56909 (TokenValueInjection!13352) Bool)

(assert (=> b!3984175 (= e!2469298 (and tp!1214262 (inv!56906 (tag!7592 (rule!9742 token!484))) (inv!56909 (transformation!6732 (rule!9742 token!484))) e!2469300))))

(declare-fun b!3984176 () Bool)

(declare-fun e!2469324 () Bool)

(declare-fun tp_is_empty!20245 () Bool)

(declare-fun tp!1214266 () Bool)

(assert (=> b!3984176 (= e!2469324 (and tp_is_empty!20245 tp!1214266))))

(declare-fun b!3984177 () Bool)

(declare-fun e!2469329 () Bool)

(assert (=> b!3984177 (= e!2469329 e!2469314)))

(declare-fun res!1615425 () Bool)

(assert (=> b!3984177 (=> (not res!1615425) (not e!2469314))))

(declare-fun lt!1401167 () Int)

(assert (=> b!3984177 (= res!1615425 (>= lt!1401167 lt!1401145))))

(declare-fun size!31867 (List!42726) Int)

(assert (=> b!3984177 (= lt!1401145 (size!31867 lt!1401164))))

(assert (=> b!3984177 (= lt!1401167 (size!31867 prefix!494))))

(declare-fun list!15814 (BalanceConc!25480) List!42726)

(declare-fun charsOf!4548 (Token!12602) BalanceConc!25480)

(assert (=> b!3984177 (= lt!1401164 (list!15814 (charsOf!4548 token!484)))))

(declare-fun tp!1214258 () Bool)

(declare-fun e!2469312 () Bool)

(declare-fun e!2469310 () Bool)

(declare-fun b!3984178 () Bool)

(assert (=> b!3984178 (= e!2469310 (and tp!1214258 (inv!56906 (tag!7592 (h!48024 rules!2999))) (inv!56909 (transformation!6732 (h!48024 rules!2999))) e!2469312))))

(declare-fun b!3984179 () Bool)

(declare-fun e!2469319 () Bool)

(assert (=> b!3984179 (= e!2469319 e!2469313)))

(declare-fun res!1615431 () Bool)

(assert (=> b!3984179 (=> res!1615431 e!2469313)))

(declare-fun lt!1401158 () List!42726)

(assert (=> b!3984179 (= res!1615431 (not (isPrefix!3819 lt!1401158 lt!1401171)))))

(declare-fun lt!1401173 () List!42726)

(assert (=> b!3984179 (isPrefix!3819 lt!1401158 lt!1401173)))

(declare-fun lt!1401184 () Unit!61281)

(declare-fun lt!1401156 () List!42726)

(assert (=> b!3984179 (= lt!1401184 (lemmaPrefixStaysPrefixWhenAddingToSuffix!652 lt!1401158 lt!1401185 lt!1401156))))

(declare-fun e!2469325 () Bool)

(declare-fun tp!1214267 () Bool)

(declare-fun b!3984180 () Bool)

(declare-fun inv!21 (TokenValue!6962) Bool)

(assert (=> b!3984180 (= e!2469325 (and (inv!21 (value!212496 token!484)) e!2469298 tp!1214267))))

(declare-fun b!3984181 () Bool)

(declare-fun e!2469311 () Bool)

(declare-fun e!2469307 () Bool)

(assert (=> b!3984181 (= e!2469311 e!2469307)))

(declare-fun res!1615444 () Bool)

(assert (=> b!3984181 (=> res!1615444 e!2469307)))

(declare-fun lt!1401147 () Int)

(assert (=> b!3984181 (= res!1615444 (<= lt!1401147 lt!1401145))))

(declare-fun lt!1401163 () Option!9146)

(declare-fun lt!1401178 () List!42726)

(assert (=> b!3984181 (= (_2!24044 (v!39495 lt!1401163)) lt!1401178)))

(declare-fun lt!1401181 () Unit!61281)

(assert (=> b!3984181 (= lt!1401181 (lemmaSamePrefixThenSameSuffix!2006 lt!1401158 (_2!24044 (v!39495 lt!1401163)) lt!1401158 lt!1401178 lt!1401185))))

(declare-fun lt!1401182 () List!42726)

(assert (=> b!3984181 (isPrefix!3819 lt!1401158 lt!1401182)))

(declare-fun lt!1401150 () Unit!61281)

(assert (=> b!3984181 (= lt!1401150 (lemmaConcatTwoListThenFirstIsPrefix!2662 lt!1401158 lt!1401178))))

(declare-fun b!3984182 () Bool)

(declare-fun e!2469305 () Bool)

(assert (=> b!3984182 (= e!2469305 e!2469319)))

(declare-fun res!1615426 () Bool)

(assert (=> b!3984182 (=> res!1615426 e!2469319)))

(assert (=> b!3984182 (= res!1615426 (not (= lt!1401173 lt!1401171)))))

(declare-fun lt!1401169 () List!42726)

(assert (=> b!3984182 (= lt!1401173 (++!11134 prefix!494 lt!1401169))))

(assert (=> b!3984182 (= lt!1401173 (++!11134 lt!1401185 lt!1401156))))

(declare-fun lt!1401162 () Unit!61281)

(assert (=> b!3984182 (= lt!1401162 (lemmaConcatAssociativity!2454 prefix!494 newSuffix!27 lt!1401156))))

(declare-fun b!3984183 () Bool)

(declare-fun res!1615439 () Bool)

(assert (=> b!3984183 (=> res!1615439 e!2469307)))

(assert (=> b!3984183 (= res!1615439 (not (isPrefix!3819 lt!1401158 lt!1401185)))))

(declare-fun res!1615445 () Bool)

(assert (=> start!374980 (=> (not res!1615445) (not e!2469329))))

(get-info :version)

(assert (=> start!374980 (= res!1615445 ((_ is Lexer!6319) thiss!21717))))

(assert (=> start!374980 e!2469329))

(declare-fun e!2469301 () Bool)

(assert (=> start!374980 e!2469301))

(declare-fun inv!56910 (Token!12602) Bool)

(assert (=> start!374980 (and (inv!56910 token!484) e!2469325)))

(declare-fun e!2469330 () Bool)

(assert (=> start!374980 e!2469330))

(assert (=> start!374980 e!2469324))

(declare-fun e!2469299 () Bool)

(assert (=> start!374980 e!2469299))

(assert (=> start!374980 true))

(declare-fun e!2469309 () Bool)

(assert (=> start!374980 e!2469309))

(declare-fun e!2469321 () Bool)

(assert (=> start!374980 e!2469321))

(assert (=> b!3984184 (= e!2469312 (and tp!1214260 tp!1214264))))

(declare-fun b!3984185 () Bool)

(declare-fun res!1615432 () Bool)

(assert (=> b!3984185 (=> res!1615432 e!2469307)))

(declare-fun contains!8477 (List!42728 Rule!13264) Bool)

(assert (=> b!3984185 (= res!1615432 (not (contains!8477 rules!2999 (rule!9742 (_1!24044 (v!39495 lt!1401163))))))))

(declare-fun b!3984186 () Bool)

(assert (=> b!3984186 (= e!2469313 e!2469311)))

(declare-fun res!1615443 () Bool)

(assert (=> b!3984186 (=> res!1615443 e!2469311)))

(assert (=> b!3984186 (= res!1615443 (not (= lt!1401182 lt!1401185)))))

(assert (=> b!3984186 (= lt!1401182 (++!11134 lt!1401158 lt!1401178))))

(declare-fun getSuffix!2250 (List!42726 List!42726) List!42726)

(assert (=> b!3984186 (= lt!1401178 (getSuffix!2250 lt!1401185 lt!1401158))))

(declare-fun b!3984187 () Bool)

(declare-fun tp!1214259 () Bool)

(assert (=> b!3984187 (= e!2469301 (and tp_is_empty!20245 tp!1214259))))

(declare-fun b!3984188 () Bool)

(declare-fun tp!1214261 () Bool)

(assert (=> b!3984188 (= e!2469299 (and tp_is_empty!20245 tp!1214261))))

(declare-fun b!3984189 () Bool)

(declare-fun e!2469323 () Bool)

(assert (=> b!3984189 (= e!2469323 e!2469305)))

(declare-fun res!1615448 () Bool)

(assert (=> b!3984189 (=> res!1615448 e!2469305)))

(assert (=> b!3984189 (= res!1615448 (not (= lt!1401169 suffix!1299)))))

(assert (=> b!3984189 (= lt!1401169 (++!11134 newSuffix!27 lt!1401156))))

(assert (=> b!3984189 (= lt!1401156 (getSuffix!2250 suffix!1299 newSuffix!27))))

(declare-fun b!3984190 () Bool)

(declare-fun e!2469320 () Bool)

(declare-fun e!2469306 () Bool)

(assert (=> b!3984190 (= e!2469320 e!2469306)))

(declare-fun res!1615422 () Bool)

(assert (=> b!3984190 (=> res!1615422 e!2469306)))

(assert (=> b!3984190 (= res!1615422 (not ((_ is Some!9145) lt!1401163)))))

(assert (=> b!3984190 (= lt!1401163 (maxPrefix!3619 thiss!21717 rules!2999 lt!1401185))))

(declare-fun lt!1401175 () List!42726)

(assert (=> b!3984190 (and (= suffixResult!105 lt!1401175) (= lt!1401133 (tuple2!41821 lt!1401144 lt!1401175)))))

(declare-fun lt!1401174 () Unit!61281)

(assert (=> b!3984190 (= lt!1401174 (lemmaSamePrefixThenSameSuffix!2006 lt!1401164 suffixResult!105 lt!1401164 lt!1401175 lt!1401171))))

(declare-fun lt!1401134 () List!42726)

(assert (=> b!3984190 (isPrefix!3819 lt!1401164 lt!1401134)))

(declare-fun lt!1401142 () Unit!61281)

(assert (=> b!3984190 (= lt!1401142 (lemmaConcatTwoListThenFirstIsPrefix!2662 lt!1401164 lt!1401175))))

(declare-fun b!3984191 () Bool)

(assert (=> b!3984191 (= e!2469306 e!2469323)))

(declare-fun res!1615421 () Bool)

(assert (=> b!3984191 (=> res!1615421 e!2469323)))

(declare-fun lt!1401177 () Option!9146)

(assert (=> b!3984191 (= res!1615421 (not (= lt!1401177 (Some!9145 (v!39495 lt!1401163)))))))

(assert (=> b!3984191 (isPrefix!3819 lt!1401158 (++!11134 lt!1401158 newSuffixResult!27))))

(declare-fun lt!1401146 () Unit!61281)

(assert (=> b!3984191 (= lt!1401146 (lemmaConcatTwoListThenFirstIsPrefix!2662 lt!1401158 newSuffixResult!27))))

(assert (=> b!3984191 (isPrefix!3819 lt!1401158 lt!1401132)))

(assert (=> b!3984191 (= lt!1401132 (++!11134 lt!1401158 (_2!24044 (v!39495 lt!1401163))))))

(declare-fun lt!1401161 () Unit!61281)

(assert (=> b!3984191 (= lt!1401161 (lemmaConcatTwoListThenFirstIsPrefix!2662 lt!1401158 (_2!24044 (v!39495 lt!1401163))))))

(declare-fun lt!1401152 () TokenValue!6962)

(assert (=> b!3984191 (= lt!1401177 (Some!9145 (tuple2!41821 (Token!12603 lt!1401152 (rule!9742 (_1!24044 (v!39495 lt!1401163))) lt!1401147 lt!1401158) (_2!24044 (v!39495 lt!1401163)))))))

(assert (=> b!3984191 (= lt!1401177 (maxPrefixOneRule!2653 thiss!21717 (rule!9742 (_1!24044 (v!39495 lt!1401163))) lt!1401185))))

(assert (=> b!3984191 (= lt!1401147 (size!31867 lt!1401158))))

(assert (=> b!3984191 (= lt!1401152 (apply!9943 (transformation!6732 (rule!9742 (_1!24044 (v!39495 lt!1401163)))) (seqFromList!4971 lt!1401158)))))

(declare-fun lt!1401140 () Unit!61281)

(assert (=> b!3984191 (= lt!1401140 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1475 thiss!21717 rules!2999 lt!1401158 lt!1401185 (_2!24044 (v!39495 lt!1401163)) (rule!9742 (_1!24044 (v!39495 lt!1401163)))))))

(assert (=> b!3984191 (= lt!1401158 (list!15814 (charsOf!4548 (_1!24044 (v!39495 lt!1401163)))))))

(declare-fun lt!1401135 () Unit!61281)

(assert (=> b!3984191 (= lt!1401135 (lemmaInv!947 (transformation!6732 (rule!9742 (_1!24044 (v!39495 lt!1401163))))))))

(assert (=> b!3984191 (ruleValid!2664 thiss!21717 (rule!9742 (_1!24044 (v!39495 lt!1401163))))))

(declare-fun lt!1401170 () Unit!61281)

(assert (=> b!3984191 (= lt!1401170 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1738 thiss!21717 (rule!9742 (_1!24044 (v!39495 lt!1401163))) rules!2999))))

(declare-fun lt!1401149 () Unit!61281)

(declare-fun lemmaCharactersSize!1327 (Token!12602) Unit!61281)

(assert (=> b!3984191 (= lt!1401149 (lemmaCharactersSize!1327 token!484))))

(declare-fun lt!1401138 () Unit!61281)

(assert (=> b!3984191 (= lt!1401138 (lemmaCharactersSize!1327 (_1!24044 (v!39495 lt!1401163))))))

(assert (=> b!3984192 (= e!2469300 (and tp!1214256 tp!1214263))))

(declare-fun b!3984193 () Bool)

(declare-fun res!1615438 () Bool)

(declare-fun e!2469328 () Bool)

(assert (=> b!3984193 (=> (not res!1615438) (not e!2469328))))

(assert (=> b!3984193 (= res!1615438 (= (size!31866 token!484) (size!31867 (originalCharacters!7332 token!484))))))

(declare-fun b!3984194 () Bool)

(assert (=> b!3984194 (= e!2469304 e!2469320)))

(declare-fun res!1615420 () Bool)

(assert (=> b!3984194 (=> res!1615420 e!2469320)))

(assert (=> b!3984194 (= res!1615420 (not (= lt!1401134 lt!1401171)))))

(assert (=> b!3984194 (= lt!1401134 (++!11134 lt!1401164 lt!1401175))))

(assert (=> b!3984194 (= lt!1401175 (getSuffix!2250 lt!1401171 lt!1401164))))

(assert (=> b!3984194 e!2469328))

(declare-fun res!1615435 () Bool)

(assert (=> b!3984194 (=> (not res!1615435) (not e!2469328))))

(assert (=> b!3984194 (= res!1615435 (isPrefix!3819 lt!1401171 lt!1401171))))

(declare-fun lt!1401153 () Unit!61281)

(declare-fun lemmaIsPrefixRefl!2411 (List!42726 List!42726) Unit!61281)

(assert (=> b!3984194 (= lt!1401153 (lemmaIsPrefixRefl!2411 lt!1401171 lt!1401171))))

(declare-fun b!3984195 () Bool)

(declare-fun tp!1214257 () Bool)

(assert (=> b!3984195 (= e!2469309 (and e!2469310 tp!1214257))))

(declare-fun b!3984196 () Bool)

(assert (=> b!3984196 (= e!2469328 (and (= (size!31866 token!484) lt!1401145) (= (originalCharacters!7332 token!484) lt!1401164)))))

(declare-fun b!3984197 () Bool)

(declare-fun res!1615437 () Bool)

(assert (=> b!3984197 (=> (not res!1615437) (not e!2469329))))

(declare-fun rulesInvariant!5664 (LexerInterface!6321 List!42728) Bool)

(assert (=> b!3984197 (= res!1615437 (rulesInvariant!5664 thiss!21717 rules!2999))))

(declare-fun b!3984198 () Bool)

(declare-fun tp!1214265 () Bool)

(assert (=> b!3984198 (= e!2469330 (and tp_is_empty!20245 tp!1214265))))

(declare-fun b!3984199 () Bool)

(declare-fun res!1615446 () Bool)

(assert (=> b!3984199 (=> (not res!1615446) (not e!2469329))))

(assert (=> b!3984199 (= res!1615446 (isPrefix!3819 newSuffix!27 suffix!1299))))

(declare-fun b!3984200 () Bool)

(assert (=> b!3984200 (= e!2469307 true)))

(declare-fun lt!1401179 () Bool)

(declare-fun rulesValidInductive!2445 (LexerInterface!6321 List!42728) Bool)

(assert (=> b!3984200 (= lt!1401179 (rulesValidInductive!2445 thiss!21717 rules!2999))))

(declare-fun b!3984201 () Bool)

(declare-fun res!1615433 () Bool)

(assert (=> b!3984201 (=> res!1615433 e!2469307)))

(assert (=> b!3984201 (= res!1615433 (not (contains!8477 rules!2999 (rule!9742 token!484))))))

(declare-fun b!3984202 () Bool)

(assert (=> b!3984202 (= e!2469327 e!2469315)))

(declare-fun res!1615429 () Bool)

(assert (=> b!3984202 (=> res!1615429 e!2469315)))

(assert (=> b!3984202 (= res!1615429 (not (= lt!1401166 prefix!494)))))

(assert (=> b!3984202 (= lt!1401166 (++!11134 lt!1401164 lt!1401180))))

(assert (=> b!3984202 (= lt!1401180 (getSuffix!2250 prefix!494 lt!1401164))))

(assert (=> b!3984202 (isPrefix!3819 lt!1401164 prefix!494)))

(declare-fun lt!1401136 () Unit!61281)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!397 (List!42726 List!42726 List!42726) Unit!61281)

(assert (=> b!3984202 (= lt!1401136 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!397 prefix!494 lt!1401164 lt!1401171))))

(declare-fun b!3984203 () Bool)

(declare-fun res!1615424 () Bool)

(assert (=> b!3984203 (=> (not res!1615424) (not e!2469329))))

(declare-fun isEmpty!25468 (List!42728) Bool)

(assert (=> b!3984203 (= res!1615424 (not (isEmpty!25468 rules!2999)))))

(declare-fun b!3984204 () Bool)

(declare-fun res!1615430 () Bool)

(assert (=> b!3984204 (=> (not res!1615430) (not e!2469329))))

(assert (=> b!3984204 (= res!1615430 (>= (size!31867 suffix!1299) (size!31867 newSuffix!27)))))

(declare-fun b!3984205 () Bool)

(declare-fun res!1615423 () Bool)

(assert (=> b!3984205 (=> (not res!1615423) (not e!2469328))))

(assert (=> b!3984205 (= res!1615423 (= (value!212496 token!484) lt!1401183))))

(declare-fun b!3984206 () Bool)

(declare-fun tp!1214268 () Bool)

(assert (=> b!3984206 (= e!2469321 (and tp_is_empty!20245 tp!1214268))))

(assert (= (and start!374980 res!1615445) b!3984203))

(assert (= (and b!3984203 res!1615424) b!3984197))

(assert (= (and b!3984197 res!1615437) b!3984204))

(assert (= (and b!3984204 res!1615430) b!3984199))

(assert (= (and b!3984199 res!1615446) b!3984177))

(assert (= (and b!3984177 res!1615425) b!3984174))

(assert (= (and b!3984174 res!1615428) b!3984172))

(assert (= (and b!3984172 res!1615436) b!3984169))

(assert (= (and b!3984169 (not res!1615442)) b!3984167))

(assert (= (and b!3984167 (not res!1615447)) b!3984202))

(assert (= (and b!3984202 (not res!1615429)) b!3984171))

(assert (= (and b!3984171 (not res!1615434)) b!3984173))

(assert (= (and b!3984173 (not res!1615441)) b!3984170))

(assert (= (and b!3984170 (not res!1615427)) b!3984194))

(assert (= (and b!3984194 res!1615435) b!3984205))

(assert (= (and b!3984205 res!1615423) b!3984193))

(assert (= (and b!3984193 res!1615438) b!3984196))

(assert (= (and b!3984194 (not res!1615420)) b!3984190))

(assert (= (and b!3984190 (not res!1615422)) b!3984191))

(assert (= (and b!3984191 (not res!1615421)) b!3984189))

(assert (= (and b!3984189 (not res!1615448)) b!3984182))

(assert (= (and b!3984182 (not res!1615426)) b!3984179))

(assert (= (and b!3984179 (not res!1615431)) b!3984168))

(assert (= (and b!3984168 (not res!1615440)) b!3984186))

(assert (= (and b!3984186 (not res!1615443)) b!3984181))

(assert (= (and b!3984181 (not res!1615444)) b!3984183))

(assert (= (and b!3984183 (not res!1615439)) b!3984201))

(assert (= (and b!3984201 (not res!1615433)) b!3984185))

(assert (= (and b!3984185 (not res!1615432)) b!3984200))

(assert (= (and start!374980 ((_ is Cons!42602) prefix!494)) b!3984187))

(assert (= b!3984175 b!3984192))

(assert (= b!3984180 b!3984175))

(assert (= start!374980 b!3984180))

(assert (= (and start!374980 ((_ is Cons!42602) suffixResult!105)) b!3984198))

(assert (= (and start!374980 ((_ is Cons!42602) suffix!1299)) b!3984176))

(assert (= (and start!374980 ((_ is Cons!42602) newSuffix!27)) b!3984188))

(assert (= b!3984178 b!3984184))

(assert (= b!3984195 b!3984178))

(assert (= (and start!374980 ((_ is Cons!42604) rules!2999)) b!3984195))

(assert (= (and start!374980 ((_ is Cons!42602) newSuffixResult!27)) b!3984206))

(declare-fun m!4559371 () Bool)

(assert (=> b!3984167 m!4559371))

(declare-fun m!4559373 () Bool)

(assert (=> b!3984167 m!4559373))

(declare-fun m!4559375 () Bool)

(assert (=> b!3984167 m!4559375))

(declare-fun m!4559377 () Bool)

(assert (=> b!3984167 m!4559377))

(declare-fun m!4559379 () Bool)

(assert (=> b!3984167 m!4559379))

(declare-fun m!4559381 () Bool)

(assert (=> b!3984185 m!4559381))

(declare-fun m!4559383 () Bool)

(assert (=> b!3984190 m!4559383))

(declare-fun m!4559385 () Bool)

(assert (=> b!3984190 m!4559385))

(declare-fun m!4559387 () Bool)

(assert (=> b!3984190 m!4559387))

(declare-fun m!4559389 () Bool)

(assert (=> b!3984190 m!4559389))

(declare-fun m!4559391 () Bool)

(assert (=> b!3984182 m!4559391))

(declare-fun m!4559393 () Bool)

(assert (=> b!3984182 m!4559393))

(declare-fun m!4559395 () Bool)

(assert (=> b!3984182 m!4559395))

(declare-fun m!4559397 () Bool)

(assert (=> b!3984172 m!4559397))

(declare-fun m!4559399 () Bool)

(assert (=> b!3984172 m!4559399))

(declare-fun m!4559401 () Bool)

(assert (=> b!3984174 m!4559401))

(declare-fun m!4559403 () Bool)

(assert (=> b!3984174 m!4559403))

(declare-fun m!4559405 () Bool)

(assert (=> b!3984193 m!4559405))

(declare-fun m!4559407 () Bool)

(assert (=> b!3984186 m!4559407))

(declare-fun m!4559409 () Bool)

(assert (=> b!3984186 m!4559409))

(declare-fun m!4559411 () Bool)

(assert (=> b!3984178 m!4559411))

(declare-fun m!4559413 () Bool)

(assert (=> b!3984178 m!4559413))

(declare-fun m!4559415 () Bool)

(assert (=> b!3984181 m!4559415))

(declare-fun m!4559417 () Bool)

(assert (=> b!3984181 m!4559417))

(declare-fun m!4559419 () Bool)

(assert (=> b!3984181 m!4559419))

(declare-fun m!4559421 () Bool)

(assert (=> b!3984197 m!4559421))

(declare-fun m!4559423 () Bool)

(assert (=> b!3984169 m!4559423))

(declare-fun m!4559425 () Bool)

(assert (=> b!3984169 m!4559425))

(declare-fun m!4559427 () Bool)

(assert (=> b!3984169 m!4559427))

(declare-fun m!4559429 () Bool)

(assert (=> b!3984169 m!4559429))

(declare-fun m!4559431 () Bool)

(assert (=> b!3984175 m!4559431))

(declare-fun m!4559433 () Bool)

(assert (=> b!3984175 m!4559433))

(declare-fun m!4559435 () Bool)

(assert (=> b!3984170 m!4559435))

(declare-fun m!4559437 () Bool)

(assert (=> b!3984170 m!4559437))

(declare-fun m!4559439 () Bool)

(assert (=> b!3984170 m!4559439))

(declare-fun m!4559441 () Bool)

(assert (=> b!3984170 m!4559441))

(declare-fun m!4559443 () Bool)

(assert (=> b!3984202 m!4559443))

(declare-fun m!4559445 () Bool)

(assert (=> b!3984202 m!4559445))

(declare-fun m!4559447 () Bool)

(assert (=> b!3984202 m!4559447))

(declare-fun m!4559449 () Bool)

(assert (=> b!3984202 m!4559449))

(declare-fun m!4559451 () Bool)

(assert (=> b!3984200 m!4559451))

(declare-fun m!4559453 () Bool)

(assert (=> b!3984191 m!4559453))

(declare-fun m!4559455 () Bool)

(assert (=> b!3984191 m!4559455))

(declare-fun m!4559457 () Bool)

(assert (=> b!3984191 m!4559457))

(declare-fun m!4559459 () Bool)

(assert (=> b!3984191 m!4559459))

(declare-fun m!4559461 () Bool)

(assert (=> b!3984191 m!4559461))

(declare-fun m!4559463 () Bool)

(assert (=> b!3984191 m!4559463))

(assert (=> b!3984191 m!4559453))

(declare-fun m!4559465 () Bool)

(assert (=> b!3984191 m!4559465))

(declare-fun m!4559467 () Bool)

(assert (=> b!3984191 m!4559467))

(declare-fun m!4559469 () Bool)

(assert (=> b!3984191 m!4559469))

(declare-fun m!4559471 () Bool)

(assert (=> b!3984191 m!4559471))

(declare-fun m!4559473 () Bool)

(assert (=> b!3984191 m!4559473))

(declare-fun m!4559475 () Bool)

(assert (=> b!3984191 m!4559475))

(declare-fun m!4559477 () Bool)

(assert (=> b!3984191 m!4559477))

(declare-fun m!4559479 () Bool)

(assert (=> b!3984191 m!4559479))

(assert (=> b!3984191 m!4559473))

(declare-fun m!4559481 () Bool)

(assert (=> b!3984191 m!4559481))

(assert (=> b!3984191 m!4559471))

(declare-fun m!4559483 () Bool)

(assert (=> b!3984191 m!4559483))

(declare-fun m!4559485 () Bool)

(assert (=> b!3984191 m!4559485))

(declare-fun m!4559487 () Bool)

(assert (=> b!3984191 m!4559487))

(declare-fun m!4559489 () Bool)

(assert (=> b!3984204 m!4559489))

(declare-fun m!4559491 () Bool)

(assert (=> b!3984204 m!4559491))

(declare-fun m!4559493 () Bool)

(assert (=> b!3984203 m!4559493))

(declare-fun m!4559495 () Bool)

(assert (=> b!3984177 m!4559495))

(declare-fun m!4559497 () Bool)

(assert (=> b!3984177 m!4559497))

(declare-fun m!4559499 () Bool)

(assert (=> b!3984177 m!4559499))

(assert (=> b!3984177 m!4559499))

(declare-fun m!4559501 () Bool)

(assert (=> b!3984177 m!4559501))

(declare-fun m!4559503 () Bool)

(assert (=> start!374980 m!4559503))

(declare-fun m!4559505 () Bool)

(assert (=> b!3984194 m!4559505))

(declare-fun m!4559507 () Bool)

(assert (=> b!3984194 m!4559507))

(declare-fun m!4559509 () Bool)

(assert (=> b!3984194 m!4559509))

(declare-fun m!4559511 () Bool)

(assert (=> b!3984194 m!4559511))

(declare-fun m!4559513 () Bool)

(assert (=> b!3984180 m!4559513))

(declare-fun m!4559515 () Bool)

(assert (=> b!3984173 m!4559515))

(declare-fun m!4559517 () Bool)

(assert (=> b!3984173 m!4559517))

(declare-fun m!4559519 () Bool)

(assert (=> b!3984173 m!4559519))

(declare-fun m!4559521 () Bool)

(assert (=> b!3984173 m!4559521))

(assert (=> b!3984173 m!4559515))

(declare-fun m!4559523 () Bool)

(assert (=> b!3984173 m!4559523))

(declare-fun m!4559525 () Bool)

(assert (=> b!3984173 m!4559525))

(declare-fun m!4559527 () Bool)

(assert (=> b!3984173 m!4559527))

(declare-fun m!4559529 () Bool)

(assert (=> b!3984183 m!4559529))

(declare-fun m!4559531 () Bool)

(assert (=> b!3984179 m!4559531))

(declare-fun m!4559533 () Bool)

(assert (=> b!3984179 m!4559533))

(declare-fun m!4559535 () Bool)

(assert (=> b!3984179 m!4559535))

(declare-fun m!4559537 () Bool)

(assert (=> b!3984189 m!4559537))

(declare-fun m!4559539 () Bool)

(assert (=> b!3984189 m!4559539))

(declare-fun m!4559541 () Bool)

(assert (=> b!3984199 m!4559541))

(declare-fun m!4559543 () Bool)

(assert (=> b!3984171 m!4559543))

(declare-fun m!4559545 () Bool)

(assert (=> b!3984171 m!4559545))

(declare-fun m!4559547 () Bool)

(assert (=> b!3984171 m!4559547))

(declare-fun m!4559549 () Bool)

(assert (=> b!3984171 m!4559549))

(declare-fun m!4559551 () Bool)

(assert (=> b!3984201 m!4559551))

(check-sat (not b!3984179) (not b!3984173) (not b!3984169) (not start!374980) (not b!3984181) (not b!3984202) (not b!3984191) (not b!3984194) (not b_next!111323) (not b!3984206) (not b!3984176) (not b!3984177) (not b!3984193) (not b!3984204) (not b!3984203) (not b!3984188) (not b_next!111325) (not b!3984189) (not b!3984167) (not b!3984186) (not b!3984178) b_and!306209 (not b!3984195) (not b!3984180) (not b!3984198) (not b!3984201) tp_is_empty!20245 b_and!306211 (not b!3984197) b_and!306213 (not b!3984190) (not b!3984199) (not b_next!111327) (not b!3984185) (not b!3984172) (not b!3984182) (not b!3984171) (not b_next!111321) (not b!3984175) (not b!3984187) (not b!3984170) (not b!3984183) b_and!306207 (not b!3984174) (not b!3984200))
(check-sat (not b_next!111325) b_and!306209 b_and!306211 b_and!306213 (not b_next!111327) (not b_next!111321) (not b_next!111323) b_and!306207)
