; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14938 () Bool)

(assert start!14938)

(declare-fun b!142400 () Bool)

(declare-fun b_free!4817 () Bool)

(declare-fun b_next!4817 () Bool)

(assert (=> b!142400 (= b_free!4817 (not b_next!4817))))

(declare-fun tp!75158 () Bool)

(declare-fun b_and!7413 () Bool)

(assert (=> b!142400 (= tp!75158 b_and!7413)))

(declare-fun b_free!4819 () Bool)

(declare-fun b_next!4819 () Bool)

(assert (=> b!142400 (= b_free!4819 (not b_next!4819))))

(declare-fun tp!75167 () Bool)

(declare-fun b_and!7415 () Bool)

(assert (=> b!142400 (= tp!75167 b_and!7415)))

(declare-fun b!142414 () Bool)

(declare-fun b_free!4821 () Bool)

(declare-fun b_next!4821 () Bool)

(assert (=> b!142414 (= b_free!4821 (not b_next!4821))))

(declare-fun tp!75159 () Bool)

(declare-fun b_and!7417 () Bool)

(assert (=> b!142414 (= tp!75159 b_and!7417)))

(declare-fun b_free!4823 () Bool)

(declare-fun b_next!4823 () Bool)

(assert (=> b!142414 (= b_free!4823 (not b_next!4823))))

(declare-fun tp!75164 () Bool)

(declare-fun b_and!7419 () Bool)

(assert (=> b!142414 (= tp!75164 b_and!7419)))

(declare-fun b!142401 () Bool)

(declare-fun b_free!4825 () Bool)

(declare-fun b_next!4825 () Bool)

(assert (=> b!142401 (= b_free!4825 (not b_next!4825))))

(declare-fun tp!75161 () Bool)

(declare-fun b_and!7421 () Bool)

(assert (=> b!142401 (= tp!75161 b_and!7421)))

(declare-fun b_free!4827 () Bool)

(declare-fun b_next!4827 () Bool)

(assert (=> b!142401 (= b_free!4827 (not b_next!4827))))

(declare-fun tp!75156 () Bool)

(declare-fun b_and!7423 () Bool)

(assert (=> b!142401 (= tp!75156 b_and!7423)))

(declare-fun b!142396 () Bool)

(declare-fun res!65910 () Bool)

(declare-fun e!84195 () Bool)

(assert (=> b!142396 (=> (not res!65910) (not e!84195))))

(declare-datatypes ((List!2457 0))(
  ( (Nil!2447) (Cons!2447 (h!7844 (_ BitVec 16)) (t!23751 List!2457)) )
))
(declare-datatypes ((TokenValue!437 0))(
  ( (FloatLiteralValue!874 (text!3504 List!2457)) (TokenValueExt!436 (__x!2361 Int)) (Broken!2185 (value!16117 List!2457)) (Object!446) (End!437) (Def!437) (Underscore!437) (Match!437) (Else!437) (Error!437) (Case!437) (If!437) (Extends!437) (Abstract!437) (Class!437) (Val!437) (DelimiterValue!874 (del!497 List!2457)) (KeywordValue!443 (value!16118 List!2457)) (CommentValue!874 (value!16119 List!2457)) (WhitespaceValue!874 (value!16120 List!2457)) (IndentationValue!437 (value!16121 List!2457)) (String!3264) (Int32!437) (Broken!2186 (value!16122 List!2457)) (Boolean!438) (Unit!1825) (OperatorValue!440 (op!497 List!2457)) (IdentifierValue!874 (value!16123 List!2457)) (IdentifierValue!875 (value!16124 List!2457)) (WhitespaceValue!875 (value!16125 List!2457)) (True!874) (False!874) (Broken!2187 (value!16126 List!2457)) (Broken!2188 (value!16127 List!2457)) (True!875) (RightBrace!437) (RightBracket!437) (Colon!437) (Null!437) (Comma!437) (LeftBracket!437) (False!875) (LeftBrace!437) (ImaginaryLiteralValue!437 (text!3505 List!2457)) (StringLiteralValue!1311 (value!16128 List!2457)) (EOFValue!437 (value!16129 List!2457)) (IdentValue!437 (value!16130 List!2457)) (DelimiterValue!875 (value!16131 List!2457)) (DedentValue!437 (value!16132 List!2457)) (NewLineValue!437 (value!16133 List!2457)) (IntegerValue!1311 (value!16134 (_ BitVec 32)) (text!3506 List!2457)) (IntegerValue!1312 (value!16135 Int) (text!3507 List!2457)) (Times!437) (Or!437) (Equal!437) (Minus!437) (Broken!2189 (value!16136 List!2457)) (And!437) (Div!437) (LessEqual!437) (Mod!437) (Concat!1076) (Not!437) (Plus!437) (SpaceValue!437 (value!16137 List!2457)) (IntegerValue!1313 (value!16138 Int) (text!3508 List!2457)) (StringLiteralValue!1312 (text!3509 List!2457)) (FloatLiteralValue!875 (text!3510 List!2457)) (BytesLiteralValue!437 (value!16139 List!2457)) (CommentValue!875 (value!16140 List!2457)) (StringLiteralValue!1313 (value!16141 List!2457)) (ErrorTokenValue!437 (msg!498 List!2457)) )
))
(declare-datatypes ((C!2200 0))(
  ( (C!2201 (val!986 Int)) )
))
(declare-datatypes ((List!2458 0))(
  ( (Nil!2448) (Cons!2448 (h!7845 C!2200) (t!23752 List!2458)) )
))
(declare-datatypes ((IArray!1305 0))(
  ( (IArray!1306 (innerList!710 List!2458)) )
))
(declare-datatypes ((Conc!652 0))(
  ( (Node!652 (left!1850 Conc!652) (right!2180 Conc!652) (csize!1534 Int) (cheight!863 Int)) (Leaf!1199 (xs!3247 IArray!1305) (csize!1535 Int)) (Empty!652) )
))
(declare-datatypes ((BalanceConc!1312 0))(
  ( (BalanceConc!1313 (c!29437 Conc!652)) )
))
(declare-datatypes ((TokenValueInjection!646 0))(
  ( (TokenValueInjection!647 (toValue!1030 Int) (toChars!889 Int)) )
))
(declare-datatypes ((String!3265 0))(
  ( (String!3266 (value!16142 String)) )
))
(declare-datatypes ((Regex!639 0))(
  ( (ElementMatch!639 (c!29438 C!2200)) (Concat!1077 (regOne!1790 Regex!639) (regTwo!1790 Regex!639)) (EmptyExpr!639) (Star!639 (reg!968 Regex!639)) (EmptyLang!639) (Union!639 (regOne!1791 Regex!639) (regTwo!1791 Regex!639)) )
))
(declare-datatypes ((Rule!630 0))(
  ( (Rule!631 (regex!415 Regex!639) (tag!593 String!3265) (isSeparator!415 Bool) (transformation!415 TokenValueInjection!646)) )
))
(declare-datatypes ((Token!574 0))(
  ( (Token!575 (value!16143 TokenValue!437) (rule!922 Rule!630) (size!2127 Int) (originalCharacters!458 List!2458)) )
))
(declare-fun separatorToken!170 () Token!574)

(declare-datatypes ((List!2459 0))(
  ( (Nil!2449) (Cons!2449 (h!7846 Rule!630) (t!23753 List!2459)) )
))
(declare-fun rules!1920 () List!2459)

(declare-datatypes ((LexerInterface!301 0))(
  ( (LexerInterfaceExt!298 (__x!2362 Int)) (Lexer!299) )
))
(declare-fun thiss!17480 () LexerInterface!301)

(declare-fun rulesProduceIndividualToken!50 (LexerInterface!301 List!2459 Token!574) Bool)

(assert (=> b!142396 (= res!65910 (rulesProduceIndividualToken!50 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!142397 () Bool)

(declare-fun res!65917 () Bool)

(assert (=> b!142397 (=> (not res!65917) (not e!84195))))

(declare-fun sepAndNonSepRulesDisjointChars!4 (List!2459 List!2459) Bool)

(assert (=> b!142397 (= res!65917 (sepAndNonSepRulesDisjointChars!4 rules!1920 rules!1920))))

(declare-fun e!84203 () Bool)

(declare-fun tp!75166 () Bool)

(declare-datatypes ((List!2460 0))(
  ( (Nil!2450) (Cons!2450 (h!7847 Token!574) (t!23754 List!2460)) )
))
(declare-fun tokens!465 () List!2460)

(declare-fun b!142398 () Bool)

(declare-fun e!84194 () Bool)

(declare-fun inv!3217 (Token!574) Bool)

(assert (=> b!142398 (= e!84194 (and (inv!3217 (h!7847 tokens!465)) e!84203 tp!75166))))

(declare-fun e!84202 () Bool)

(declare-fun tp!75155 () Bool)

(declare-fun e!84206 () Bool)

(declare-fun b!142399 () Bool)

(declare-fun inv!3214 (String!3265) Bool)

(declare-fun inv!3218 (TokenValueInjection!646) Bool)

(assert (=> b!142399 (= e!84206 (and tp!75155 (inv!3214 (tag!593 (rule!922 (h!7847 tokens!465)))) (inv!3218 (transformation!415 (rule!922 (h!7847 tokens!465)))) e!84202))))

(declare-fun res!65916 () Bool)

(assert (=> start!14938 (=> (not res!65916) (not e!84195))))

(get-info :version)

(assert (=> start!14938 (= res!65916 ((_ is Lexer!299) thiss!17480))))

(assert (=> start!14938 e!84195))

(assert (=> start!14938 true))

(declare-fun e!84197 () Bool)

(assert (=> start!14938 e!84197))

(assert (=> start!14938 e!84194))

(declare-fun e!84205 () Bool)

(assert (=> start!14938 (and (inv!3217 separatorToken!170) e!84205)))

(declare-fun e!84196 () Bool)

(assert (=> b!142400 (= e!84196 (and tp!75158 tp!75167))))

(declare-fun e!84204 () Bool)

(assert (=> b!142401 (= e!84204 (and tp!75161 tp!75156))))

(declare-fun e!84199 () Bool)

(declare-fun tp!75160 () Bool)

(declare-fun b!142402 () Bool)

(declare-fun inv!21 (TokenValue!437) Bool)

(assert (=> b!142402 (= e!84205 (and (inv!21 (value!16143 separatorToken!170)) e!84199 tp!75160))))

(declare-fun b!142403 () Bool)

(declare-fun res!65912 () Bool)

(assert (=> b!142403 (=> (not res!65912) (not e!84195))))

(assert (=> b!142403 (= res!65912 (isSeparator!415 (rule!922 separatorToken!170)))))

(declare-fun b!142404 () Bool)

(declare-fun res!65911 () Bool)

(assert (=> b!142404 (=> (not res!65911) (not e!84195))))

(declare-fun isEmpty!936 (List!2459) Bool)

(assert (=> b!142404 (= res!65911 (not (isEmpty!936 rules!1920)))))

(declare-fun tp!75162 () Bool)

(declare-fun b!142405 () Bool)

(assert (=> b!142405 (= e!84203 (and (inv!21 (value!16143 (h!7847 tokens!465))) e!84206 tp!75162))))

(declare-fun tp!75157 () Bool)

(declare-fun b!142406 () Bool)

(assert (=> b!142406 (= e!84199 (and tp!75157 (inv!3214 (tag!593 (rule!922 separatorToken!170))) (inv!3218 (transformation!415 (rule!922 separatorToken!170))) e!84196))))

(declare-fun b!142407 () Bool)

(declare-fun e!84200 () Bool)

(declare-fun tp!75165 () Bool)

(assert (=> b!142407 (= e!84197 (and e!84200 tp!75165))))

(declare-fun b!142408 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!57 (LexerInterface!301 List!2459 List!2460) Bool)

(assert (=> b!142408 (= e!84195 (not (rulesProduceEachTokenIndividuallyList!57 thiss!17480 rules!1920 tokens!465)))))

(declare-fun b!142409 () Bool)

(declare-fun res!65913 () Bool)

(assert (=> b!142409 (=> (not res!65913) (not e!84195))))

(declare-fun lambda!3370 () Int)

(declare-fun forall!361 (List!2460 Int) Bool)

(assert (=> b!142409 (= res!65913 (forall!361 tokens!465 lambda!3370))))

(declare-fun b!142410 () Bool)

(declare-fun tp!75163 () Bool)

(assert (=> b!142410 (= e!84200 (and tp!75163 (inv!3214 (tag!593 (h!7846 rules!1920))) (inv!3218 (transformation!415 (h!7846 rules!1920))) e!84204))))

(declare-fun b!142411 () Bool)

(declare-fun res!65909 () Bool)

(assert (=> b!142411 (=> (not res!65909) (not e!84195))))

(declare-fun rulesInvariant!267 (LexerInterface!301 List!2459) Bool)

(assert (=> b!142411 (= res!65909 (rulesInvariant!267 thiss!17480 rules!1920))))

(declare-fun b!142412 () Bool)

(declare-fun res!65915 () Bool)

(assert (=> b!142412 (=> (not res!65915) (not e!84195))))

(declare-datatypes ((IArray!1307 0))(
  ( (IArray!1308 (innerList!711 List!2460)) )
))
(declare-datatypes ((Conc!653 0))(
  ( (Node!653 (left!1851 Conc!653) (right!2181 Conc!653) (csize!1536 Int) (cheight!864 Int)) (Leaf!1200 (xs!3248 IArray!1307) (csize!1537 Int)) (Empty!653) )
))
(declare-datatypes ((BalanceConc!1314 0))(
  ( (BalanceConc!1315 (c!29439 Conc!653)) )
))
(declare-fun rulesProduceEachTokenIndividually!93 (LexerInterface!301 List!2459 BalanceConc!1314) Bool)

(declare-fun seqFromList!228 (List!2460) BalanceConc!1314)

(assert (=> b!142412 (= res!65915 (rulesProduceEachTokenIndividually!93 thiss!17480 rules!1920 (seqFromList!228 tokens!465)))))

(declare-fun b!142413 () Bool)

(declare-fun res!65914 () Bool)

(assert (=> b!142413 (=> (not res!65914) (not e!84195))))

(assert (=> b!142413 (= res!65914 ((_ is Cons!2450) tokens!465))))

(assert (=> b!142414 (= e!84202 (and tp!75159 tp!75164))))

(assert (= (and start!14938 res!65916) b!142404))

(assert (= (and b!142404 res!65911) b!142411))

(assert (= (and b!142411 res!65909) b!142412))

(assert (= (and b!142412 res!65915) b!142396))

(assert (= (and b!142396 res!65910) b!142403))

(assert (= (and b!142403 res!65912) b!142409))

(assert (= (and b!142409 res!65913) b!142397))

(assert (= (and b!142397 res!65917) b!142413))

(assert (= (and b!142413 res!65914) b!142408))

(assert (= b!142410 b!142401))

(assert (= b!142407 b!142410))

(assert (= (and start!14938 ((_ is Cons!2449) rules!1920)) b!142407))

(assert (= b!142399 b!142414))

(assert (= b!142405 b!142399))

(assert (= b!142398 b!142405))

(assert (= (and start!14938 ((_ is Cons!2450) tokens!465)) b!142398))

(assert (= b!142406 b!142400))

(assert (= b!142402 b!142406))

(assert (= start!14938 b!142402))

(declare-fun m!125171 () Bool)

(assert (=> b!142398 m!125171))

(declare-fun m!125173 () Bool)

(assert (=> b!142404 m!125173))

(declare-fun m!125175 () Bool)

(assert (=> b!142411 m!125175))

(declare-fun m!125177 () Bool)

(assert (=> b!142396 m!125177))

(declare-fun m!125179 () Bool)

(assert (=> start!14938 m!125179))

(declare-fun m!125181 () Bool)

(assert (=> b!142410 m!125181))

(declare-fun m!125183 () Bool)

(assert (=> b!142410 m!125183))

(declare-fun m!125185 () Bool)

(assert (=> b!142408 m!125185))

(declare-fun m!125187 () Bool)

(assert (=> b!142402 m!125187))

(declare-fun m!125189 () Bool)

(assert (=> b!142405 m!125189))

(declare-fun m!125191 () Bool)

(assert (=> b!142409 m!125191))

(declare-fun m!125193 () Bool)

(assert (=> b!142399 m!125193))

(declare-fun m!125195 () Bool)

(assert (=> b!142399 m!125195))

(declare-fun m!125197 () Bool)

(assert (=> b!142412 m!125197))

(assert (=> b!142412 m!125197))

(declare-fun m!125199 () Bool)

(assert (=> b!142412 m!125199))

(declare-fun m!125201 () Bool)

(assert (=> b!142406 m!125201))

(declare-fun m!125203 () Bool)

(assert (=> b!142406 m!125203))

(declare-fun m!125205 () Bool)

(assert (=> b!142397 m!125205))

(check-sat (not b!142396) (not b!142397) b_and!7419 (not start!14938) (not b!142405) (not b_next!4823) (not b!142410) (not b!142407) (not b!142412) (not b!142398) b_and!7417 (not b!142402) (not b!142399) (not b!142406) b_and!7415 (not b!142404) b_and!7423 (not b!142411) b_and!7413 (not b!142409) b_and!7421 (not b_next!4817) (not b_next!4825) (not b_next!4821) (not b!142408) (not b_next!4827) (not b_next!4819))
(check-sat b_and!7415 b_and!7423 b_and!7419 (not b_next!4823) b_and!7413 (not b_next!4821) b_and!7417 b_and!7421 (not b_next!4817) (not b_next!4825) (not b_next!4827) (not b_next!4819))
(get-model)

(declare-fun d!33819 () Bool)

(declare-fun res!65931 () Bool)

(declare-fun e!84215 () Bool)

(assert (=> d!33819 (=> (not res!65931) (not e!84215))))

(declare-fun rulesValid!109 (LexerInterface!301 List!2459) Bool)

(assert (=> d!33819 (= res!65931 (rulesValid!109 thiss!17480 rules!1920))))

(assert (=> d!33819 (= (rulesInvariant!267 thiss!17480 rules!1920) e!84215)))

(declare-fun b!142420 () Bool)

(declare-datatypes ((List!2462 0))(
  ( (Nil!2452) (Cons!2452 (h!7849 String!3265) (t!23810 List!2462)) )
))
(declare-fun noDuplicateTag!109 (LexerInterface!301 List!2459 List!2462) Bool)

(assert (=> b!142420 (= e!84215 (noDuplicateTag!109 thiss!17480 rules!1920 Nil!2452))))

(assert (= (and d!33819 res!65931) b!142420))

(declare-fun m!125211 () Bool)

(assert (=> d!33819 m!125211))

(declare-fun m!125213 () Bool)

(assert (=> b!142420 m!125213))

(assert (=> b!142411 d!33819))

(declare-fun d!33821 () Bool)

(assert (=> d!33821 (= (inv!3214 (tag!593 (h!7846 rules!1920))) (= (mod (str.len (value!16142 (tag!593 (h!7846 rules!1920)))) 2) 0))))

(assert (=> b!142410 d!33821))

(declare-fun d!33823 () Bool)

(declare-fun res!65934 () Bool)

(declare-fun e!84218 () Bool)

(assert (=> d!33823 (=> (not res!65934) (not e!84218))))

(declare-fun semiInverseModEq!143 (Int Int) Bool)

(assert (=> d!33823 (= res!65934 (semiInverseModEq!143 (toChars!889 (transformation!415 (h!7846 rules!1920))) (toValue!1030 (transformation!415 (h!7846 rules!1920)))))))

(assert (=> d!33823 (= (inv!3218 (transformation!415 (h!7846 rules!1920))) e!84218)))

(declare-fun b!142423 () Bool)

(declare-fun equivClasses!126 (Int Int) Bool)

(assert (=> b!142423 (= e!84218 (equivClasses!126 (toChars!889 (transformation!415 (h!7846 rules!1920))) (toValue!1030 (transformation!415 (h!7846 rules!1920)))))))

(assert (= (and d!33823 res!65934) b!142423))

(declare-fun m!125215 () Bool)

(assert (=> d!33823 m!125215))

(declare-fun m!125217 () Bool)

(assert (=> b!142423 m!125217))

(assert (=> b!142410 d!33823))

(declare-fun d!33825 () Bool)

(assert (=> d!33825 (= (inv!3214 (tag!593 (rule!922 (h!7847 tokens!465)))) (= (mod (str.len (value!16142 (tag!593 (rule!922 (h!7847 tokens!465))))) 2) 0))))

(assert (=> b!142399 d!33825))

(declare-fun d!33827 () Bool)

(declare-fun res!65935 () Bool)

(declare-fun e!84219 () Bool)

(assert (=> d!33827 (=> (not res!65935) (not e!84219))))

(assert (=> d!33827 (= res!65935 (semiInverseModEq!143 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (toValue!1030 (transformation!415 (rule!922 (h!7847 tokens!465))))))))

(assert (=> d!33827 (= (inv!3218 (transformation!415 (rule!922 (h!7847 tokens!465)))) e!84219)))

(declare-fun b!142424 () Bool)

(assert (=> b!142424 (= e!84219 (equivClasses!126 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (toValue!1030 (transformation!415 (rule!922 (h!7847 tokens!465))))))))

(assert (= (and d!33827 res!65935) b!142424))

(declare-fun m!125219 () Bool)

(assert (=> d!33827 m!125219))

(declare-fun m!125221 () Bool)

(assert (=> b!142424 m!125221))

(assert (=> b!142399 d!33827))

(declare-fun d!33829 () Bool)

(declare-fun res!65940 () Bool)

(declare-fun e!84224 () Bool)

(assert (=> d!33829 (=> res!65940 e!84224)))

(assert (=> d!33829 (= res!65940 ((_ is Nil!2450) tokens!465))))

(assert (=> d!33829 (= (forall!361 tokens!465 lambda!3370) e!84224)))

(declare-fun b!142429 () Bool)

(declare-fun e!84225 () Bool)

(assert (=> b!142429 (= e!84224 e!84225)))

(declare-fun res!65941 () Bool)

(assert (=> b!142429 (=> (not res!65941) (not e!84225))))

(declare-fun dynLambda!821 (Int Token!574) Bool)

(assert (=> b!142429 (= res!65941 (dynLambda!821 lambda!3370 (h!7847 tokens!465)))))

(declare-fun b!142430 () Bool)

(assert (=> b!142430 (= e!84225 (forall!361 (t!23754 tokens!465) lambda!3370))))

(assert (= (and d!33829 (not res!65940)) b!142429))

(assert (= (and b!142429 res!65941) b!142430))

(declare-fun b_lambda!2247 () Bool)

(assert (=> (not b_lambda!2247) (not b!142429)))

(declare-fun m!125223 () Bool)

(assert (=> b!142429 m!125223))

(declare-fun m!125225 () Bool)

(assert (=> b!142430 m!125225))

(assert (=> b!142409 d!33829))

(declare-fun d!33831 () Bool)

(declare-fun res!65946 () Bool)

(declare-fun e!84228 () Bool)

(assert (=> d!33831 (=> (not res!65946) (not e!84228))))

(declare-fun isEmpty!939 (List!2458) Bool)

(assert (=> d!33831 (= res!65946 (not (isEmpty!939 (originalCharacters!458 (h!7847 tokens!465)))))))

(assert (=> d!33831 (= (inv!3217 (h!7847 tokens!465)) e!84228)))

(declare-fun b!142435 () Bool)

(declare-fun res!65947 () Bool)

(assert (=> b!142435 (=> (not res!65947) (not e!84228))))

(declare-fun list!848 (BalanceConc!1312) List!2458)

(declare-fun dynLambda!822 (Int TokenValue!437) BalanceConc!1312)

(assert (=> b!142435 (= res!65947 (= (originalCharacters!458 (h!7847 tokens!465)) (list!848 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465))))))))

(declare-fun b!142436 () Bool)

(declare-fun size!2130 (List!2458) Int)

(assert (=> b!142436 (= e!84228 (= (size!2127 (h!7847 tokens!465)) (size!2130 (originalCharacters!458 (h!7847 tokens!465)))))))

(assert (= (and d!33831 res!65946) b!142435))

(assert (= (and b!142435 res!65947) b!142436))

(declare-fun b_lambda!2249 () Bool)

(assert (=> (not b_lambda!2249) (not b!142435)))

(declare-fun t!23756 () Bool)

(declare-fun tb!4377 () Bool)

(assert (=> (and b!142400 (= (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465))))) t!23756) tb!4377))

(declare-fun b!142441 () Bool)

(declare-fun e!84231 () Bool)

(declare-fun tp!75170 () Bool)

(declare-fun inv!3221 (Conc!652) Bool)

(assert (=> b!142441 (= e!84231 (and (inv!3221 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465))))) tp!75170))))

(declare-fun result!6652 () Bool)

(declare-fun inv!3222 (BalanceConc!1312) Bool)

(assert (=> tb!4377 (= result!6652 (and (inv!3222 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465)))) e!84231))))

(assert (= tb!4377 b!142441))

(declare-fun m!125227 () Bool)

(assert (=> b!142441 m!125227))

(declare-fun m!125229 () Bool)

(assert (=> tb!4377 m!125229))

(assert (=> b!142435 t!23756))

(declare-fun b_and!7425 () Bool)

(assert (= b_and!7415 (and (=> t!23756 result!6652) b_and!7425)))

(declare-fun t!23758 () Bool)

(declare-fun tb!4379 () Bool)

(assert (=> (and b!142414 (= (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465))))) t!23758) tb!4379))

(declare-fun result!6656 () Bool)

(assert (= result!6656 result!6652))

(assert (=> b!142435 t!23758))

(declare-fun b_and!7427 () Bool)

(assert (= b_and!7419 (and (=> t!23758 result!6656) b_and!7427)))

(declare-fun t!23760 () Bool)

(declare-fun tb!4381 () Bool)

(assert (=> (and b!142401 (= (toChars!889 (transformation!415 (h!7846 rules!1920))) (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465))))) t!23760) tb!4381))

(declare-fun result!6658 () Bool)

(assert (= result!6658 result!6652))

(assert (=> b!142435 t!23760))

(declare-fun b_and!7429 () Bool)

(assert (= b_and!7423 (and (=> t!23760 result!6658) b_and!7429)))

(declare-fun m!125231 () Bool)

(assert (=> d!33831 m!125231))

(declare-fun m!125233 () Bool)

(assert (=> b!142435 m!125233))

(assert (=> b!142435 m!125233))

(declare-fun m!125235 () Bool)

(assert (=> b!142435 m!125235))

(declare-fun m!125237 () Bool)

(assert (=> b!142436 m!125237))

(assert (=> b!142398 d!33831))

(declare-fun b!142452 () Bool)

(declare-fun res!65950 () Bool)

(declare-fun e!84238 () Bool)

(assert (=> b!142452 (=> res!65950 e!84238)))

(assert (=> b!142452 (= res!65950 (not ((_ is IntegerValue!1313) (value!16143 separatorToken!170))))))

(declare-fun e!84239 () Bool)

(assert (=> b!142452 (= e!84239 e!84238)))

(declare-fun b!142453 () Bool)

(declare-fun inv!17 (TokenValue!437) Bool)

(assert (=> b!142453 (= e!84239 (inv!17 (value!16143 separatorToken!170)))))

(declare-fun b!142454 () Bool)

(declare-fun inv!15 (TokenValue!437) Bool)

(assert (=> b!142454 (= e!84238 (inv!15 (value!16143 separatorToken!170)))))

(declare-fun b!142455 () Bool)

(declare-fun e!84240 () Bool)

(declare-fun inv!16 (TokenValue!437) Bool)

(assert (=> b!142455 (= e!84240 (inv!16 (value!16143 separatorToken!170)))))

(declare-fun b!142456 () Bool)

(assert (=> b!142456 (= e!84240 e!84239)))

(declare-fun c!29445 () Bool)

(assert (=> b!142456 (= c!29445 ((_ is IntegerValue!1312) (value!16143 separatorToken!170)))))

(declare-fun d!33833 () Bool)

(declare-fun c!29444 () Bool)

(assert (=> d!33833 (= c!29444 ((_ is IntegerValue!1311) (value!16143 separatorToken!170)))))

(assert (=> d!33833 (= (inv!21 (value!16143 separatorToken!170)) e!84240)))

(assert (= (and d!33833 c!29444) b!142455))

(assert (= (and d!33833 (not c!29444)) b!142456))

(assert (= (and b!142456 c!29445) b!142453))

(assert (= (and b!142456 (not c!29445)) b!142452))

(assert (= (and b!142452 (not res!65950)) b!142454))

(declare-fun m!125239 () Bool)

(assert (=> b!142453 m!125239))

(declare-fun m!125241 () Bool)

(assert (=> b!142454 m!125241))

(declare-fun m!125243 () Bool)

(assert (=> b!142455 m!125243))

(assert (=> b!142402 d!33833))

(declare-fun bs!12889 () Bool)

(declare-fun d!33835 () Bool)

(assert (= bs!12889 (and d!33835 b!142409)))

(declare-fun lambda!3380 () Int)

(assert (=> bs!12889 (not (= lambda!3380 lambda!3370))))

(declare-fun b!142510 () Bool)

(declare-fun e!84280 () Bool)

(assert (=> b!142510 (= e!84280 true)))

(declare-fun b!142509 () Bool)

(declare-fun e!84279 () Bool)

(assert (=> b!142509 (= e!84279 e!84280)))

(declare-fun b!142508 () Bool)

(declare-fun e!84278 () Bool)

(assert (=> b!142508 (= e!84278 e!84279)))

(assert (=> d!33835 e!84278))

(assert (= b!142509 b!142510))

(assert (= b!142508 b!142509))

(assert (= (and d!33835 ((_ is Cons!2449) rules!1920)) b!142508))

(declare-fun order!1177 () Int)

(declare-fun order!1179 () Int)

(declare-fun dynLambda!823 (Int Int) Int)

(declare-fun dynLambda!824 (Int Int) Int)

(assert (=> b!142510 (< (dynLambda!823 order!1177 (toValue!1030 (transformation!415 (h!7846 rules!1920)))) (dynLambda!824 order!1179 lambda!3380))))

(declare-fun order!1181 () Int)

(declare-fun dynLambda!825 (Int Int) Int)

(assert (=> b!142510 (< (dynLambda!825 order!1181 (toChars!889 (transformation!415 (h!7846 rules!1920)))) (dynLambda!824 order!1179 lambda!3380))))

(assert (=> d!33835 true))

(declare-fun e!84271 () Bool)

(assert (=> d!33835 e!84271))

(declare-fun res!65975 () Bool)

(assert (=> d!33835 (=> (not res!65975) (not e!84271))))

(declare-fun lt!41250 () Bool)

(declare-fun list!849 (BalanceConc!1314) List!2460)

(assert (=> d!33835 (= res!65975 (= lt!41250 (forall!361 (list!849 (seqFromList!228 tokens!465)) lambda!3380)))))

(declare-fun forall!363 (BalanceConc!1314 Int) Bool)

(assert (=> d!33835 (= lt!41250 (forall!363 (seqFromList!228 tokens!465) lambda!3380))))

(assert (=> d!33835 (not (isEmpty!936 rules!1920))))

(assert (=> d!33835 (= (rulesProduceEachTokenIndividually!93 thiss!17480 rules!1920 (seqFromList!228 tokens!465)) lt!41250)))

(declare-fun b!142499 () Bool)

(assert (=> b!142499 (= e!84271 (= lt!41250 (rulesProduceEachTokenIndividuallyList!57 thiss!17480 rules!1920 (list!849 (seqFromList!228 tokens!465)))))))

(assert (= (and d!33835 res!65975) b!142499))

(assert (=> d!33835 m!125197))

(declare-fun m!125293 () Bool)

(assert (=> d!33835 m!125293))

(assert (=> d!33835 m!125293))

(declare-fun m!125295 () Bool)

(assert (=> d!33835 m!125295))

(assert (=> d!33835 m!125197))

(declare-fun m!125297 () Bool)

(assert (=> d!33835 m!125297))

(assert (=> d!33835 m!125173))

(assert (=> b!142499 m!125197))

(assert (=> b!142499 m!125293))

(assert (=> b!142499 m!125293))

(declare-fun m!125299 () Bool)

(assert (=> b!142499 m!125299))

(assert (=> b!142412 d!33835))

(declare-fun d!33851 () Bool)

(declare-fun fromListB!101 (List!2460) BalanceConc!1314)

(assert (=> d!33851 (= (seqFromList!228 tokens!465) (fromListB!101 tokens!465))))

(declare-fun bs!12890 () Bool)

(assert (= bs!12890 d!33851))

(declare-fun m!125301 () Bool)

(assert (=> bs!12890 m!125301))

(assert (=> b!142412 d!33851))

(declare-fun b!142513 () Bool)

(declare-fun res!65976 () Bool)

(declare-fun e!84281 () Bool)

(assert (=> b!142513 (=> res!65976 e!84281)))

(assert (=> b!142513 (= res!65976 (not ((_ is IntegerValue!1313) (value!16143 (h!7847 tokens!465)))))))

(declare-fun e!84282 () Bool)

(assert (=> b!142513 (= e!84282 e!84281)))

(declare-fun b!142514 () Bool)

(assert (=> b!142514 (= e!84282 (inv!17 (value!16143 (h!7847 tokens!465))))))

(declare-fun b!142515 () Bool)

(assert (=> b!142515 (= e!84281 (inv!15 (value!16143 (h!7847 tokens!465))))))

(declare-fun b!142516 () Bool)

(declare-fun e!84283 () Bool)

(assert (=> b!142516 (= e!84283 (inv!16 (value!16143 (h!7847 tokens!465))))))

(declare-fun b!142517 () Bool)

(assert (=> b!142517 (= e!84283 e!84282)))

(declare-fun c!29447 () Bool)

(assert (=> b!142517 (= c!29447 ((_ is IntegerValue!1312) (value!16143 (h!7847 tokens!465))))))

(declare-fun d!33853 () Bool)

(declare-fun c!29446 () Bool)

(assert (=> d!33853 (= c!29446 ((_ is IntegerValue!1311) (value!16143 (h!7847 tokens!465))))))

(assert (=> d!33853 (= (inv!21 (value!16143 (h!7847 tokens!465))) e!84283)))

(assert (= (and d!33853 c!29446) b!142516))

(assert (= (and d!33853 (not c!29446)) b!142517))

(assert (= (and b!142517 c!29447) b!142514))

(assert (= (and b!142517 (not c!29447)) b!142513))

(assert (= (and b!142513 (not res!65976)) b!142515))

(declare-fun m!125303 () Bool)

(assert (=> b!142514 m!125303))

(declare-fun m!125305 () Bool)

(assert (=> b!142515 m!125305))

(declare-fun m!125307 () Bool)

(assert (=> b!142516 m!125307))

(assert (=> b!142405 d!33853))

(declare-fun d!33855 () Bool)

(declare-fun res!65977 () Bool)

(declare-fun e!84284 () Bool)

(assert (=> d!33855 (=> (not res!65977) (not e!84284))))

(assert (=> d!33855 (= res!65977 (not (isEmpty!939 (originalCharacters!458 separatorToken!170))))))

(assert (=> d!33855 (= (inv!3217 separatorToken!170) e!84284)))

(declare-fun b!142518 () Bool)

(declare-fun res!65978 () Bool)

(assert (=> b!142518 (=> (not res!65978) (not e!84284))))

(assert (=> b!142518 (= res!65978 (= (originalCharacters!458 separatorToken!170) (list!848 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170)))))))

(declare-fun b!142519 () Bool)

(assert (=> b!142519 (= e!84284 (= (size!2127 separatorToken!170) (size!2130 (originalCharacters!458 separatorToken!170))))))

(assert (= (and d!33855 res!65977) b!142518))

(assert (= (and b!142518 res!65978) b!142519))

(declare-fun b_lambda!2253 () Bool)

(assert (=> (not b_lambda!2253) (not b!142518)))

(declare-fun t!23777 () Bool)

(declare-fun tb!4389 () Bool)

(assert (=> (and b!142400 (= (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (toChars!889 (transformation!415 (rule!922 separatorToken!170)))) t!23777) tb!4389))

(declare-fun b!142520 () Bool)

(declare-fun e!84285 () Bool)

(declare-fun tp!75174 () Bool)

(assert (=> b!142520 (= e!84285 (and (inv!3221 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170)))) tp!75174))))

(declare-fun result!6668 () Bool)

(assert (=> tb!4389 (= result!6668 (and (inv!3222 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170))) e!84285))))

(assert (= tb!4389 b!142520))

(declare-fun m!125309 () Bool)

(assert (=> b!142520 m!125309))

(declare-fun m!125311 () Bool)

(assert (=> tb!4389 m!125311))

(assert (=> b!142518 t!23777))

(declare-fun b_and!7437 () Bool)

(assert (= b_and!7425 (and (=> t!23777 result!6668) b_and!7437)))

(declare-fun t!23779 () Bool)

(declare-fun tb!4391 () Bool)

(assert (=> (and b!142414 (= (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (toChars!889 (transformation!415 (rule!922 separatorToken!170)))) t!23779) tb!4391))

(declare-fun result!6670 () Bool)

(assert (= result!6670 result!6668))

(assert (=> b!142518 t!23779))

(declare-fun b_and!7439 () Bool)

(assert (= b_and!7427 (and (=> t!23779 result!6670) b_and!7439)))

(declare-fun t!23781 () Bool)

(declare-fun tb!4393 () Bool)

(assert (=> (and b!142401 (= (toChars!889 (transformation!415 (h!7846 rules!1920))) (toChars!889 (transformation!415 (rule!922 separatorToken!170)))) t!23781) tb!4393))

(declare-fun result!6672 () Bool)

(assert (= result!6672 result!6668))

(assert (=> b!142518 t!23781))

(declare-fun b_and!7441 () Bool)

(assert (= b_and!7429 (and (=> t!23781 result!6672) b_and!7441)))

(declare-fun m!125313 () Bool)

(assert (=> d!33855 m!125313))

(declare-fun m!125315 () Bool)

(assert (=> b!142518 m!125315))

(assert (=> b!142518 m!125315))

(declare-fun m!125317 () Bool)

(assert (=> b!142518 m!125317))

(declare-fun m!125319 () Bool)

(assert (=> b!142519 m!125319))

(assert (=> start!14938 d!33855))

(declare-fun d!33857 () Bool)

(assert (=> d!33857 (= (isEmpty!936 rules!1920) ((_ is Nil!2449) rules!1920))))

(assert (=> b!142404 d!33857))

(declare-fun bs!12894 () Bool)

(declare-fun d!33859 () Bool)

(assert (= bs!12894 (and d!33859 b!142409)))

(declare-fun lambda!3386 () Int)

(assert (=> bs!12894 (not (= lambda!3386 lambda!3370))))

(declare-fun bs!12895 () Bool)

(assert (= bs!12895 (and d!33859 d!33835)))

(assert (=> bs!12895 (= lambda!3386 lambda!3380)))

(declare-fun b!142627 () Bool)

(declare-fun e!84369 () Bool)

(assert (=> b!142627 (= e!84369 true)))

(declare-fun b!142626 () Bool)

(declare-fun e!84368 () Bool)

(assert (=> b!142626 (= e!84368 e!84369)))

(declare-fun b!142625 () Bool)

(declare-fun e!84367 () Bool)

(assert (=> b!142625 (= e!84367 e!84368)))

(assert (=> d!33859 e!84367))

(assert (= b!142626 b!142627))

(assert (= b!142625 b!142626))

(assert (= (and d!33859 ((_ is Cons!2449) rules!1920)) b!142625))

(assert (=> b!142627 (< (dynLambda!823 order!1177 (toValue!1030 (transformation!415 (h!7846 rules!1920)))) (dynLambda!824 order!1179 lambda!3386))))

(assert (=> b!142627 (< (dynLambda!825 order!1181 (toChars!889 (transformation!415 (h!7846 rules!1920)))) (dynLambda!824 order!1179 lambda!3386))))

(assert (=> d!33859 true))

(declare-fun lt!41256 () Bool)

(assert (=> d!33859 (= lt!41256 (forall!361 tokens!465 lambda!3386))))

(declare-fun e!84366 () Bool)

(assert (=> d!33859 (= lt!41256 e!84366)))

(declare-fun res!66008 () Bool)

(assert (=> d!33859 (=> res!66008 e!84366)))

(assert (=> d!33859 (= res!66008 (not ((_ is Cons!2450) tokens!465)))))

(assert (=> d!33859 (not (isEmpty!936 rules!1920))))

(assert (=> d!33859 (= (rulesProduceEachTokenIndividuallyList!57 thiss!17480 rules!1920 tokens!465) lt!41256)))

(declare-fun b!142623 () Bool)

(declare-fun e!84365 () Bool)

(assert (=> b!142623 (= e!84366 e!84365)))

(declare-fun res!66009 () Bool)

(assert (=> b!142623 (=> (not res!66009) (not e!84365))))

(assert (=> b!142623 (= res!66009 (rulesProduceIndividualToken!50 thiss!17480 rules!1920 (h!7847 tokens!465)))))

(declare-fun b!142624 () Bool)

(assert (=> b!142624 (= e!84365 (rulesProduceEachTokenIndividuallyList!57 thiss!17480 rules!1920 (t!23754 tokens!465)))))

(assert (= (and d!33859 (not res!66008)) b!142623))

(assert (= (and b!142623 res!66009) b!142624))

(declare-fun m!125375 () Bool)

(assert (=> d!33859 m!125375))

(assert (=> d!33859 m!125173))

(declare-fun m!125377 () Bool)

(assert (=> b!142623 m!125377))

(declare-fun m!125379 () Bool)

(assert (=> b!142624 m!125379))

(assert (=> b!142408 d!33859))

(declare-fun d!33877 () Bool)

(declare-fun res!66014 () Bool)

(declare-fun e!84374 () Bool)

(assert (=> d!33877 (=> res!66014 e!84374)))

(assert (=> d!33877 (= res!66014 (not ((_ is Cons!2449) rules!1920)))))

(assert (=> d!33877 (= (sepAndNonSepRulesDisjointChars!4 rules!1920 rules!1920) e!84374)))

(declare-fun b!142632 () Bool)

(declare-fun e!84375 () Bool)

(assert (=> b!142632 (= e!84374 e!84375)))

(declare-fun res!66015 () Bool)

(assert (=> b!142632 (=> (not res!66015) (not e!84375))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!2 (Rule!630 List!2459) Bool)

(assert (=> b!142632 (= res!66015 (ruleDisjointCharsFromAllFromOtherType!2 (h!7846 rules!1920) rules!1920))))

(declare-fun b!142633 () Bool)

(assert (=> b!142633 (= e!84375 (sepAndNonSepRulesDisjointChars!4 rules!1920 (t!23753 rules!1920)))))

(assert (= (and d!33877 (not res!66014)) b!142632))

(assert (= (and b!142632 res!66015) b!142633))

(declare-fun m!125381 () Bool)

(assert (=> b!142632 m!125381))

(declare-fun m!125383 () Bool)

(assert (=> b!142633 m!125383))

(assert (=> b!142397 d!33877))

(declare-fun d!33879 () Bool)

(declare-fun lt!41261 () Bool)

(declare-fun e!84381 () Bool)

(assert (=> d!33879 (= lt!41261 e!84381)))

(declare-fun res!66023 () Bool)

(assert (=> d!33879 (=> (not res!66023) (not e!84381))))

(declare-datatypes ((tuple2!2474 0))(
  ( (tuple2!2475 (_1!1453 BalanceConc!1314) (_2!1453 BalanceConc!1312)) )
))
(declare-fun lex!153 (LexerInterface!301 List!2459 BalanceConc!1312) tuple2!2474)

(declare-fun print!78 (LexerInterface!301 BalanceConc!1314) BalanceConc!1312)

(declare-fun singletonSeq!11 (Token!574) BalanceConc!1314)

(assert (=> d!33879 (= res!66023 (= (list!849 (_1!1453 (lex!153 thiss!17480 rules!1920 (print!78 thiss!17480 (singletonSeq!11 separatorToken!170))))) (list!849 (singletonSeq!11 separatorToken!170))))))

(declare-fun e!84380 () Bool)

(assert (=> d!33879 (= lt!41261 e!84380)))

(declare-fun res!66022 () Bool)

(assert (=> d!33879 (=> (not res!66022) (not e!84380))))

(declare-fun lt!41262 () tuple2!2474)

(declare-fun size!2131 (BalanceConc!1314) Int)

(assert (=> d!33879 (= res!66022 (= (size!2131 (_1!1453 lt!41262)) 1))))

(assert (=> d!33879 (= lt!41262 (lex!153 thiss!17480 rules!1920 (print!78 thiss!17480 (singletonSeq!11 separatorToken!170))))))

(assert (=> d!33879 (not (isEmpty!936 rules!1920))))

(assert (=> d!33879 (= (rulesProduceIndividualToken!50 thiss!17480 rules!1920 separatorToken!170) lt!41261)))

(declare-fun b!142640 () Bool)

(declare-fun res!66024 () Bool)

(assert (=> b!142640 (=> (not res!66024) (not e!84380))))

(declare-fun apply!294 (BalanceConc!1314 Int) Token!574)

(assert (=> b!142640 (= res!66024 (= (apply!294 (_1!1453 lt!41262) 0) separatorToken!170))))

(declare-fun b!142641 () Bool)

(declare-fun isEmpty!940 (BalanceConc!1312) Bool)

(assert (=> b!142641 (= e!84380 (isEmpty!940 (_2!1453 lt!41262)))))

(declare-fun b!142642 () Bool)

(assert (=> b!142642 (= e!84381 (isEmpty!940 (_2!1453 (lex!153 thiss!17480 rules!1920 (print!78 thiss!17480 (singletonSeq!11 separatorToken!170))))))))

(assert (= (and d!33879 res!66022) b!142640))

(assert (= (and b!142640 res!66024) b!142641))

(assert (= (and d!33879 res!66023) b!142642))

(declare-fun m!125385 () Bool)

(assert (=> d!33879 m!125385))

(assert (=> d!33879 m!125173))

(declare-fun m!125387 () Bool)

(assert (=> d!33879 m!125387))

(declare-fun m!125389 () Bool)

(assert (=> d!33879 m!125389))

(assert (=> d!33879 m!125385))

(declare-fun m!125391 () Bool)

(assert (=> d!33879 m!125391))

(assert (=> d!33879 m!125385))

(assert (=> d!33879 m!125387))

(declare-fun m!125393 () Bool)

(assert (=> d!33879 m!125393))

(declare-fun m!125395 () Bool)

(assert (=> d!33879 m!125395))

(declare-fun m!125397 () Bool)

(assert (=> b!142640 m!125397))

(declare-fun m!125399 () Bool)

(assert (=> b!142641 m!125399))

(assert (=> b!142642 m!125385))

(assert (=> b!142642 m!125385))

(assert (=> b!142642 m!125387))

(assert (=> b!142642 m!125387))

(assert (=> b!142642 m!125389))

(declare-fun m!125401 () Bool)

(assert (=> b!142642 m!125401))

(assert (=> b!142396 d!33879))

(declare-fun d!33881 () Bool)

(assert (=> d!33881 (= (inv!3214 (tag!593 (rule!922 separatorToken!170))) (= (mod (str.len (value!16142 (tag!593 (rule!922 separatorToken!170)))) 2) 0))))

(assert (=> b!142406 d!33881))

(declare-fun d!33883 () Bool)

(declare-fun res!66025 () Bool)

(declare-fun e!84382 () Bool)

(assert (=> d!33883 (=> (not res!66025) (not e!84382))))

(assert (=> d!33883 (= res!66025 (semiInverseModEq!143 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (toValue!1030 (transformation!415 (rule!922 separatorToken!170)))))))

(assert (=> d!33883 (= (inv!3218 (transformation!415 (rule!922 separatorToken!170))) e!84382)))

(declare-fun b!142643 () Bool)

(assert (=> b!142643 (= e!84382 (equivClasses!126 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (toValue!1030 (transformation!415 (rule!922 separatorToken!170)))))))

(assert (= (and d!33883 res!66025) b!142643))

(declare-fun m!125403 () Bool)

(assert (=> d!33883 m!125403))

(declare-fun m!125405 () Bool)

(assert (=> b!142643 m!125405))

(assert (=> b!142406 d!33883))

(declare-fun b!142648 () Bool)

(declare-fun e!84385 () Bool)

(declare-fun tp_is_empty!1583 () Bool)

(declare-fun tp!75234 () Bool)

(assert (=> b!142648 (= e!84385 (and tp_is_empty!1583 tp!75234))))

(assert (=> b!142405 (= tp!75162 e!84385)))

(assert (= (and b!142405 ((_ is Cons!2448) (originalCharacters!458 (h!7847 tokens!465)))) b!142648))

(declare-fun e!84388 () Bool)

(assert (=> b!142410 (= tp!75163 e!84388)))

(declare-fun b!142660 () Bool)

(declare-fun tp!75249 () Bool)

(declare-fun tp!75247 () Bool)

(assert (=> b!142660 (= e!84388 (and tp!75249 tp!75247))))

(declare-fun b!142659 () Bool)

(assert (=> b!142659 (= e!84388 tp_is_empty!1583)))

(declare-fun b!142661 () Bool)

(declare-fun tp!75245 () Bool)

(assert (=> b!142661 (= e!84388 tp!75245)))

(declare-fun b!142662 () Bool)

(declare-fun tp!75246 () Bool)

(declare-fun tp!75248 () Bool)

(assert (=> b!142662 (= e!84388 (and tp!75246 tp!75248))))

(assert (= (and b!142410 ((_ is ElementMatch!639) (regex!415 (h!7846 rules!1920)))) b!142659))

(assert (= (and b!142410 ((_ is Concat!1077) (regex!415 (h!7846 rules!1920)))) b!142660))

(assert (= (and b!142410 ((_ is Star!639) (regex!415 (h!7846 rules!1920)))) b!142661))

(assert (= (and b!142410 ((_ is Union!639) (regex!415 (h!7846 rules!1920)))) b!142662))

(declare-fun e!84389 () Bool)

(assert (=> b!142399 (= tp!75155 e!84389)))

(declare-fun b!142664 () Bool)

(declare-fun tp!75254 () Bool)

(declare-fun tp!75252 () Bool)

(assert (=> b!142664 (= e!84389 (and tp!75254 tp!75252))))

(declare-fun b!142663 () Bool)

(assert (=> b!142663 (= e!84389 tp_is_empty!1583)))

(declare-fun b!142665 () Bool)

(declare-fun tp!75250 () Bool)

(assert (=> b!142665 (= e!84389 tp!75250)))

(declare-fun b!142666 () Bool)

(declare-fun tp!75251 () Bool)

(declare-fun tp!75253 () Bool)

(assert (=> b!142666 (= e!84389 (and tp!75251 tp!75253))))

(assert (= (and b!142399 ((_ is ElementMatch!639) (regex!415 (rule!922 (h!7847 tokens!465))))) b!142663))

(assert (= (and b!142399 ((_ is Concat!1077) (regex!415 (rule!922 (h!7847 tokens!465))))) b!142664))

(assert (= (and b!142399 ((_ is Star!639) (regex!415 (rule!922 (h!7847 tokens!465))))) b!142665))

(assert (= (and b!142399 ((_ is Union!639) (regex!415 (rule!922 (h!7847 tokens!465))))) b!142666))

(declare-fun b!142680 () Bool)

(declare-fun b_free!4837 () Bool)

(declare-fun b_next!4837 () Bool)

(assert (=> b!142680 (= b_free!4837 (not b_next!4837))))

(declare-fun tp!75265 () Bool)

(declare-fun b_and!7457 () Bool)

(assert (=> b!142680 (= tp!75265 b_and!7457)))

(declare-fun b_free!4839 () Bool)

(declare-fun b_next!4839 () Bool)

(assert (=> b!142680 (= b_free!4839 (not b_next!4839))))

(declare-fun t!23803 () Bool)

(declare-fun tb!4409 () Bool)

(assert (=> (and b!142680 (= (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))) (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465))))) t!23803) tb!4409))

(declare-fun result!6702 () Bool)

(assert (= result!6702 result!6652))

(assert (=> b!142435 t!23803))

(declare-fun tb!4411 () Bool)

(declare-fun t!23805 () Bool)

(assert (=> (and b!142680 (= (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))) (toChars!889 (transformation!415 (rule!922 separatorToken!170)))) t!23805) tb!4411))

(declare-fun result!6704 () Bool)

(assert (= result!6704 result!6668))

(assert (=> b!142518 t!23805))

(declare-fun tp!75267 () Bool)

(declare-fun b_and!7459 () Bool)

(assert (=> b!142680 (= tp!75267 (and (=> t!23803 result!6702) (=> t!23805 result!6704) b_and!7459))))

(declare-fun b!142678 () Bool)

(declare-fun tp!75268 () Bool)

(declare-fun e!84406 () Bool)

(declare-fun e!84404 () Bool)

(assert (=> b!142678 (= e!84404 (and (inv!21 (value!16143 (h!7847 (t!23754 tokens!465)))) e!84406 tp!75268))))

(declare-fun e!84402 () Bool)

(assert (=> b!142680 (= e!84402 (and tp!75265 tp!75267))))

(declare-fun e!84405 () Bool)

(declare-fun b!142677 () Bool)

(declare-fun tp!75266 () Bool)

(assert (=> b!142677 (= e!84405 (and (inv!3217 (h!7847 (t!23754 tokens!465))) e!84404 tp!75266))))

(assert (=> b!142398 (= tp!75166 e!84405)))

(declare-fun b!142679 () Bool)

(declare-fun tp!75269 () Bool)

(assert (=> b!142679 (= e!84406 (and tp!75269 (inv!3214 (tag!593 (rule!922 (h!7847 (t!23754 tokens!465))))) (inv!3218 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))) e!84402))))

(assert (= b!142679 b!142680))

(assert (= b!142678 b!142679))

(assert (= b!142677 b!142678))

(assert (= (and b!142398 ((_ is Cons!2450) (t!23754 tokens!465))) b!142677))

(declare-fun m!125407 () Bool)

(assert (=> b!142678 m!125407))

(declare-fun m!125409 () Bool)

(assert (=> b!142677 m!125409))

(declare-fun m!125411 () Bool)

(assert (=> b!142679 m!125411))

(declare-fun m!125413 () Bool)

(assert (=> b!142679 m!125413))

(declare-fun b!142681 () Bool)

(declare-fun e!84408 () Bool)

(declare-fun tp!75270 () Bool)

(assert (=> b!142681 (= e!84408 (and tp_is_empty!1583 tp!75270))))

(assert (=> b!142402 (= tp!75160 e!84408)))

(assert (= (and b!142402 ((_ is Cons!2448) (originalCharacters!458 separatorToken!170))) b!142681))

(declare-fun b!142692 () Bool)

(declare-fun b_free!4841 () Bool)

(declare-fun b_next!4841 () Bool)

(assert (=> b!142692 (= b_free!4841 (not b_next!4841))))

(declare-fun tp!75282 () Bool)

(declare-fun b_and!7461 () Bool)

(assert (=> b!142692 (= tp!75282 b_and!7461)))

(declare-fun b_free!4843 () Bool)

(declare-fun b_next!4843 () Bool)

(assert (=> b!142692 (= b_free!4843 (not b_next!4843))))

(declare-fun t!23807 () Bool)

(declare-fun tb!4413 () Bool)

(assert (=> (and b!142692 (= (toChars!889 (transformation!415 (h!7846 (t!23753 rules!1920)))) (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465))))) t!23807) tb!4413))

(declare-fun result!6708 () Bool)

(assert (= result!6708 result!6652))

(assert (=> b!142435 t!23807))

(declare-fun tb!4415 () Bool)

(declare-fun t!23809 () Bool)

(assert (=> (and b!142692 (= (toChars!889 (transformation!415 (h!7846 (t!23753 rules!1920)))) (toChars!889 (transformation!415 (rule!922 separatorToken!170)))) t!23809) tb!4415))

(declare-fun result!6710 () Bool)

(assert (= result!6710 result!6668))

(assert (=> b!142518 t!23809))

(declare-fun b_and!7463 () Bool)

(declare-fun tp!75281 () Bool)

(assert (=> b!142692 (= tp!75281 (and (=> t!23807 result!6708) (=> t!23809 result!6710) b_and!7463))))

(declare-fun e!84420 () Bool)

(assert (=> b!142692 (= e!84420 (and tp!75282 tp!75281))))

(declare-fun tp!75280 () Bool)

(declare-fun e!84418 () Bool)

(declare-fun b!142691 () Bool)

(assert (=> b!142691 (= e!84418 (and tp!75280 (inv!3214 (tag!593 (h!7846 (t!23753 rules!1920)))) (inv!3218 (transformation!415 (h!7846 (t!23753 rules!1920)))) e!84420))))

(declare-fun b!142690 () Bool)

(declare-fun e!84417 () Bool)

(declare-fun tp!75279 () Bool)

(assert (=> b!142690 (= e!84417 (and e!84418 tp!75279))))

(assert (=> b!142407 (= tp!75165 e!84417)))

(assert (= b!142691 b!142692))

(assert (= b!142690 b!142691))

(assert (= (and b!142407 ((_ is Cons!2449) (t!23753 rules!1920))) b!142690))

(declare-fun m!125415 () Bool)

(assert (=> b!142691 m!125415))

(declare-fun m!125417 () Bool)

(assert (=> b!142691 m!125417))

(declare-fun e!84421 () Bool)

(assert (=> b!142406 (= tp!75157 e!84421)))

(declare-fun b!142694 () Bool)

(declare-fun tp!75287 () Bool)

(declare-fun tp!75285 () Bool)

(assert (=> b!142694 (= e!84421 (and tp!75287 tp!75285))))

(declare-fun b!142693 () Bool)

(assert (=> b!142693 (= e!84421 tp_is_empty!1583)))

(declare-fun b!142695 () Bool)

(declare-fun tp!75283 () Bool)

(assert (=> b!142695 (= e!84421 tp!75283)))

(declare-fun b!142696 () Bool)

(declare-fun tp!75284 () Bool)

(declare-fun tp!75286 () Bool)

(assert (=> b!142696 (= e!84421 (and tp!75284 tp!75286))))

(assert (= (and b!142406 ((_ is ElementMatch!639) (regex!415 (rule!922 separatorToken!170)))) b!142693))

(assert (= (and b!142406 ((_ is Concat!1077) (regex!415 (rule!922 separatorToken!170)))) b!142694))

(assert (= (and b!142406 ((_ is Star!639) (regex!415 (rule!922 separatorToken!170)))) b!142695))

(assert (= (and b!142406 ((_ is Union!639) (regex!415 (rule!922 separatorToken!170)))) b!142696))

(declare-fun b_lambda!2265 () Bool)

(assert (= b_lambda!2249 (or (and b!142401 b_free!4827 (= (toChars!889 (transformation!415 (h!7846 rules!1920))) (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))))) (and b!142400 b_free!4819 (= (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))))) (and b!142680 b_free!4839 (= (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))) (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))))) (and b!142692 b_free!4843 (= (toChars!889 (transformation!415 (h!7846 (t!23753 rules!1920)))) (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))))) (and b!142414 b_free!4823) b_lambda!2265)))

(declare-fun b_lambda!2267 () Bool)

(assert (= b_lambda!2247 (or b!142409 b_lambda!2267)))

(declare-fun bs!12896 () Bool)

(declare-fun d!33885 () Bool)

(assert (= bs!12896 (and d!33885 b!142409)))

(assert (=> bs!12896 (= (dynLambda!821 lambda!3370 (h!7847 tokens!465)) (not (isSeparator!415 (rule!922 (h!7847 tokens!465)))))))

(assert (=> b!142429 d!33885))

(declare-fun b_lambda!2269 () Bool)

(assert (= b_lambda!2253 (or (and b!142400 b_free!4819) (and b!142401 b_free!4827 (= (toChars!889 (transformation!415 (h!7846 rules!1920))) (toChars!889 (transformation!415 (rule!922 separatorToken!170))))) (and b!142692 b_free!4843 (= (toChars!889 (transformation!415 (h!7846 (t!23753 rules!1920)))) (toChars!889 (transformation!415 (rule!922 separatorToken!170))))) (and b!142680 b_free!4839 (= (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))) (toChars!889 (transformation!415 (rule!922 separatorToken!170))))) (and b!142414 b_free!4823 (= (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (toChars!889 (transformation!415 (rule!922 separatorToken!170))))) b_lambda!2269)))

(check-sat (not b!142694) (not b!142424) (not b!142623) (not b!142695) b_and!7463 (not b!142423) b_and!7457 (not b!142643) (not b!142660) (not d!33823) (not b!142430) (not b!142518) (not b!142515) (not b!142519) (not tb!4389) (not b!142640) (not d!33879) (not d!33835) (not b!142499) b_and!7461 (not b_lambda!2269) (not b!142435) (not b_next!4837) (not d!33859) (not b!142690) (not b!142625) (not d!33855) (not d!33819) (not b!142678) (not b_next!4839) (not b!142453) (not b!142420) (not b_next!4843) b_and!7437 (not b!142508) tp_is_empty!1583 (not b!142641) (not b!142665) (not d!33883) (not b!142677) (not b!142648) (not d!33851) (not b!142516) (not b_next!4823) (not b!142514) (not d!33831) b_and!7439 b_and!7413 (not b!142642) (not b!142520) (not b!142679) (not b_next!4841) (not tb!4377) b_and!7441 (not b!142436) (not b!142681) (not b!142455) (not b_lambda!2267) (not b!142691) (not d!33827) (not b_lambda!2265) b_and!7421 (not b_next!4817) (not b!142633) (not b_next!4825) (not b_next!4821) b_and!7459 (not b_next!4827) (not b_next!4819) (not b!142454) (not b!142441) (not b!142666) (not b!142624) (not b!142664) (not b!142632) (not b!142696) b_and!7417 (not b!142662) (not b!142661))
(check-sat b_and!7461 (not b_next!4837) (not b_next!4839) (not b_next!4823) (not b_next!4841) b_and!7441 b_and!7417 b_and!7457 b_and!7463 (not b_next!4843) b_and!7437 b_and!7439 b_and!7413 b_and!7421 (not b_next!4817) (not b_next!4825) (not b_next!4821) b_and!7459 (not b_next!4827) (not b_next!4819))
(get-model)

(declare-fun d!33905 () Bool)

(declare-fun lt!41271 () Bool)

(assert (=> d!33905 (= lt!41271 (isEmpty!939 (list!848 (_2!1453 (lex!153 thiss!17480 rules!1920 (print!78 thiss!17480 (singletonSeq!11 separatorToken!170)))))))))

(declare-fun isEmpty!941 (Conc!652) Bool)

(assert (=> d!33905 (= lt!41271 (isEmpty!941 (c!29437 (_2!1453 (lex!153 thiss!17480 rules!1920 (print!78 thiss!17480 (singletonSeq!11 separatorToken!170)))))))))

(assert (=> d!33905 (= (isEmpty!940 (_2!1453 (lex!153 thiss!17480 rules!1920 (print!78 thiss!17480 (singletonSeq!11 separatorToken!170))))) lt!41271)))

(declare-fun bs!12905 () Bool)

(assert (= bs!12905 d!33905))

(declare-fun m!125473 () Bool)

(assert (=> bs!12905 m!125473))

(assert (=> bs!12905 m!125473))

(declare-fun m!125475 () Bool)

(assert (=> bs!12905 m!125475))

(declare-fun m!125477 () Bool)

(assert (=> bs!12905 m!125477))

(assert (=> b!142642 d!33905))

(declare-fun e!84455 () Bool)

(declare-fun b!142745 () Bool)

(declare-fun lt!41283 () tuple2!2474)

(declare-datatypes ((tuple2!2476 0))(
  ( (tuple2!2477 (_1!1454 List!2460) (_2!1454 List!2458)) )
))
(declare-fun lexList!84 (LexerInterface!301 List!2459 List!2458) tuple2!2476)

(assert (=> b!142745 (= e!84455 (= (list!848 (_2!1453 lt!41283)) (_2!1454 (lexList!84 thiss!17480 rules!1920 (list!848 (print!78 thiss!17480 (singletonSeq!11 separatorToken!170)))))))))

(declare-fun b!142746 () Bool)

(declare-fun e!84453 () Bool)

(declare-fun isEmpty!942 (BalanceConc!1314) Bool)

(assert (=> b!142746 (= e!84453 (not (isEmpty!942 (_1!1453 lt!41283))))))

(declare-fun b!142747 () Bool)

(declare-fun e!84454 () Bool)

(assert (=> b!142747 (= e!84454 e!84453)))

(declare-fun res!66057 () Bool)

(declare-fun size!2132 (BalanceConc!1312) Int)

(assert (=> b!142747 (= res!66057 (< (size!2132 (_2!1453 lt!41283)) (size!2132 (print!78 thiss!17480 (singletonSeq!11 separatorToken!170)))))))

(assert (=> b!142747 (=> (not res!66057) (not e!84453))))

(declare-fun b!142748 () Bool)

(assert (=> b!142748 (= e!84454 (= (_2!1453 lt!41283) (print!78 thiss!17480 (singletonSeq!11 separatorToken!170))))))

(declare-fun d!33911 () Bool)

(assert (=> d!33911 e!84455))

(declare-fun res!66058 () Bool)

(assert (=> d!33911 (=> (not res!66058) (not e!84455))))

(assert (=> d!33911 (= res!66058 e!84454)))

(declare-fun c!29463 () Bool)

(assert (=> d!33911 (= c!29463 (> (size!2131 (_1!1453 lt!41283)) 0))))

(declare-fun lexTailRecV2!71 (LexerInterface!301 List!2459 BalanceConc!1312 BalanceConc!1312 BalanceConc!1312 BalanceConc!1314) tuple2!2474)

(assert (=> d!33911 (= lt!41283 (lexTailRecV2!71 thiss!17480 rules!1920 (print!78 thiss!17480 (singletonSeq!11 separatorToken!170)) (BalanceConc!1313 Empty!652) (print!78 thiss!17480 (singletonSeq!11 separatorToken!170)) (BalanceConc!1315 Empty!653)))))

(assert (=> d!33911 (= (lex!153 thiss!17480 rules!1920 (print!78 thiss!17480 (singletonSeq!11 separatorToken!170))) lt!41283)))

(declare-fun b!142749 () Bool)

(declare-fun res!66056 () Bool)

(assert (=> b!142749 (=> (not res!66056) (not e!84455))))

(assert (=> b!142749 (= res!66056 (= (list!849 (_1!1453 lt!41283)) (_1!1454 (lexList!84 thiss!17480 rules!1920 (list!848 (print!78 thiss!17480 (singletonSeq!11 separatorToken!170)))))))))

(assert (= (and d!33911 c!29463) b!142747))

(assert (= (and d!33911 (not c!29463)) b!142748))

(assert (= (and b!142747 res!66057) b!142746))

(assert (= (and d!33911 res!66058) b!142749))

(assert (= (and b!142749 res!66056) b!142745))

(declare-fun m!125507 () Bool)

(assert (=> d!33911 m!125507))

(assert (=> d!33911 m!125387))

(assert (=> d!33911 m!125387))

(declare-fun m!125509 () Bool)

(assert (=> d!33911 m!125509))

(declare-fun m!125511 () Bool)

(assert (=> b!142749 m!125511))

(assert (=> b!142749 m!125387))

(declare-fun m!125513 () Bool)

(assert (=> b!142749 m!125513))

(assert (=> b!142749 m!125513))

(declare-fun m!125515 () Bool)

(assert (=> b!142749 m!125515))

(declare-fun m!125517 () Bool)

(assert (=> b!142745 m!125517))

(assert (=> b!142745 m!125387))

(assert (=> b!142745 m!125513))

(assert (=> b!142745 m!125513))

(assert (=> b!142745 m!125515))

(declare-fun m!125519 () Bool)

(assert (=> b!142747 m!125519))

(assert (=> b!142747 m!125387))

(declare-fun m!125521 () Bool)

(assert (=> b!142747 m!125521))

(declare-fun m!125523 () Bool)

(assert (=> b!142746 m!125523))

(assert (=> b!142642 d!33911))

(declare-fun d!33931 () Bool)

(declare-fun lt!41289 () BalanceConc!1312)

(declare-fun printList!40 (LexerInterface!301 List!2460) List!2458)

(assert (=> d!33931 (= (list!848 lt!41289) (printList!40 thiss!17480 (list!849 (singletonSeq!11 separatorToken!170))))))

(declare-fun printTailRec!40 (LexerInterface!301 BalanceConc!1314 Int BalanceConc!1312) BalanceConc!1312)

(assert (=> d!33931 (= lt!41289 (printTailRec!40 thiss!17480 (singletonSeq!11 separatorToken!170) 0 (BalanceConc!1313 Empty!652)))))

(assert (=> d!33931 (= (print!78 thiss!17480 (singletonSeq!11 separatorToken!170)) lt!41289)))

(declare-fun bs!12910 () Bool)

(assert (= bs!12910 d!33931))

(declare-fun m!125543 () Bool)

(assert (=> bs!12910 m!125543))

(assert (=> bs!12910 m!125385))

(assert (=> bs!12910 m!125391))

(assert (=> bs!12910 m!125391))

(declare-fun m!125545 () Bool)

(assert (=> bs!12910 m!125545))

(assert (=> bs!12910 m!125385))

(declare-fun m!125547 () Bool)

(assert (=> bs!12910 m!125547))

(assert (=> b!142642 d!33931))

(declare-fun d!33935 () Bool)

(declare-fun e!84467 () Bool)

(assert (=> d!33935 e!84467))

(declare-fun res!66070 () Bool)

(assert (=> d!33935 (=> (not res!66070) (not e!84467))))

(declare-fun lt!41292 () BalanceConc!1314)

(assert (=> d!33935 (= res!66070 (= (list!849 lt!41292) (Cons!2450 separatorToken!170 Nil!2450)))))

(declare-fun singleton!8 (Token!574) BalanceConc!1314)

(assert (=> d!33935 (= lt!41292 (singleton!8 separatorToken!170))))

(assert (=> d!33935 (= (singletonSeq!11 separatorToken!170) lt!41292)))

(declare-fun b!142767 () Bool)

(declare-fun isBalanced!185 (Conc!653) Bool)

(assert (=> b!142767 (= e!84467 (isBalanced!185 (c!29439 lt!41292)))))

(assert (= (and d!33935 res!66070) b!142767))

(declare-fun m!125549 () Bool)

(assert (=> d!33935 m!125549))

(declare-fun m!125551 () Bool)

(assert (=> d!33935 m!125551))

(declare-fun m!125553 () Bool)

(assert (=> b!142767 m!125553))

(assert (=> b!142642 d!33935))

(declare-fun d!33937 () Bool)

(declare-fun res!66071 () Bool)

(declare-fun e!84468 () Bool)

(assert (=> d!33937 (=> res!66071 e!84468)))

(assert (=> d!33937 (= res!66071 ((_ is Nil!2450) (t!23754 tokens!465)))))

(assert (=> d!33937 (= (forall!361 (t!23754 tokens!465) lambda!3370) e!84468)))

(declare-fun b!142768 () Bool)

(declare-fun e!84469 () Bool)

(assert (=> b!142768 (= e!84468 e!84469)))

(declare-fun res!66072 () Bool)

(assert (=> b!142768 (=> (not res!66072) (not e!84469))))

(assert (=> b!142768 (= res!66072 (dynLambda!821 lambda!3370 (h!7847 (t!23754 tokens!465))))))

(declare-fun b!142769 () Bool)

(assert (=> b!142769 (= e!84469 (forall!361 (t!23754 (t!23754 tokens!465)) lambda!3370))))

(assert (= (and d!33937 (not res!66071)) b!142768))

(assert (= (and b!142768 res!66072) b!142769))

(declare-fun b_lambda!2277 () Bool)

(assert (=> (not b_lambda!2277) (not b!142768)))

(declare-fun m!125555 () Bool)

(assert (=> b!142768 m!125555))

(declare-fun m!125557 () Bool)

(assert (=> b!142769 m!125557))

(assert (=> b!142430 d!33937))

(declare-fun bs!12911 () Bool)

(declare-fun d!33939 () Bool)

(assert (= bs!12911 (and d!33939 b!142409)))

(declare-fun lambda!3395 () Int)

(assert (=> bs!12911 (not (= lambda!3395 lambda!3370))))

(declare-fun bs!12912 () Bool)

(assert (= bs!12912 (and d!33939 d!33835)))

(assert (=> bs!12912 (= lambda!3395 lambda!3380)))

(declare-fun bs!12913 () Bool)

(assert (= bs!12913 (and d!33939 d!33859)))

(assert (=> bs!12913 (= lambda!3395 lambda!3386)))

(declare-fun b!142774 () Bool)

(declare-fun e!84474 () Bool)

(assert (=> b!142774 (= e!84474 true)))

(declare-fun b!142773 () Bool)

(declare-fun e!84473 () Bool)

(assert (=> b!142773 (= e!84473 e!84474)))

(declare-fun b!142772 () Bool)

(declare-fun e!84472 () Bool)

(assert (=> b!142772 (= e!84472 e!84473)))

(assert (=> d!33939 e!84472))

(assert (= b!142773 b!142774))

(assert (= b!142772 b!142773))

(assert (= (and d!33939 ((_ is Cons!2449) rules!1920)) b!142772))

(assert (=> b!142774 (< (dynLambda!823 order!1177 (toValue!1030 (transformation!415 (h!7846 rules!1920)))) (dynLambda!824 order!1179 lambda!3395))))

(assert (=> b!142774 (< (dynLambda!825 order!1181 (toChars!889 (transformation!415 (h!7846 rules!1920)))) (dynLambda!824 order!1179 lambda!3395))))

(assert (=> d!33939 true))

(declare-fun lt!41293 () Bool)

(assert (=> d!33939 (= lt!41293 (forall!361 (t!23754 tokens!465) lambda!3395))))

(declare-fun e!84471 () Bool)

(assert (=> d!33939 (= lt!41293 e!84471)))

(declare-fun res!66073 () Bool)

(assert (=> d!33939 (=> res!66073 e!84471)))

(assert (=> d!33939 (= res!66073 (not ((_ is Cons!2450) (t!23754 tokens!465))))))

(assert (=> d!33939 (not (isEmpty!936 rules!1920))))

(assert (=> d!33939 (= (rulesProduceEachTokenIndividuallyList!57 thiss!17480 rules!1920 (t!23754 tokens!465)) lt!41293)))

(declare-fun b!142770 () Bool)

(declare-fun e!84470 () Bool)

(assert (=> b!142770 (= e!84471 e!84470)))

(declare-fun res!66074 () Bool)

(assert (=> b!142770 (=> (not res!66074) (not e!84470))))

(assert (=> b!142770 (= res!66074 (rulesProduceIndividualToken!50 thiss!17480 rules!1920 (h!7847 (t!23754 tokens!465))))))

(declare-fun b!142771 () Bool)

(assert (=> b!142771 (= e!84470 (rulesProduceEachTokenIndividuallyList!57 thiss!17480 rules!1920 (t!23754 (t!23754 tokens!465))))))

(assert (= (and d!33939 (not res!66073)) b!142770))

(assert (= (and b!142770 res!66074) b!142771))

(declare-fun m!125559 () Bool)

(assert (=> d!33939 m!125559))

(assert (=> d!33939 m!125173))

(declare-fun m!125561 () Bool)

(assert (=> b!142770 m!125561))

(declare-fun m!125563 () Bool)

(assert (=> b!142771 m!125563))

(assert (=> b!142624 d!33939))

(declare-fun d!33941 () Bool)

(declare-fun lt!41294 () Bool)

(declare-fun e!84476 () Bool)

(assert (=> d!33941 (= lt!41294 e!84476)))

(declare-fun res!66076 () Bool)

(assert (=> d!33941 (=> (not res!66076) (not e!84476))))

(assert (=> d!33941 (= res!66076 (= (list!849 (_1!1453 (lex!153 thiss!17480 rules!1920 (print!78 thiss!17480 (singletonSeq!11 (h!7847 tokens!465)))))) (list!849 (singletonSeq!11 (h!7847 tokens!465)))))))

(declare-fun e!84475 () Bool)

(assert (=> d!33941 (= lt!41294 e!84475)))

(declare-fun res!66075 () Bool)

(assert (=> d!33941 (=> (not res!66075) (not e!84475))))

(declare-fun lt!41295 () tuple2!2474)

(assert (=> d!33941 (= res!66075 (= (size!2131 (_1!1453 lt!41295)) 1))))

(assert (=> d!33941 (= lt!41295 (lex!153 thiss!17480 rules!1920 (print!78 thiss!17480 (singletonSeq!11 (h!7847 tokens!465)))))))

(assert (=> d!33941 (not (isEmpty!936 rules!1920))))

(assert (=> d!33941 (= (rulesProduceIndividualToken!50 thiss!17480 rules!1920 (h!7847 tokens!465)) lt!41294)))

(declare-fun b!142775 () Bool)

(declare-fun res!66077 () Bool)

(assert (=> b!142775 (=> (not res!66077) (not e!84475))))

(assert (=> b!142775 (= res!66077 (= (apply!294 (_1!1453 lt!41295) 0) (h!7847 tokens!465)))))

(declare-fun b!142776 () Bool)

(assert (=> b!142776 (= e!84475 (isEmpty!940 (_2!1453 lt!41295)))))

(declare-fun b!142777 () Bool)

(assert (=> b!142777 (= e!84476 (isEmpty!940 (_2!1453 (lex!153 thiss!17480 rules!1920 (print!78 thiss!17480 (singletonSeq!11 (h!7847 tokens!465)))))))))

(assert (= (and d!33941 res!66075) b!142775))

(assert (= (and b!142775 res!66077) b!142776))

(assert (= (and d!33941 res!66076) b!142777))

(declare-fun m!125565 () Bool)

(assert (=> d!33941 m!125565))

(assert (=> d!33941 m!125173))

(declare-fun m!125567 () Bool)

(assert (=> d!33941 m!125567))

(declare-fun m!125569 () Bool)

(assert (=> d!33941 m!125569))

(assert (=> d!33941 m!125565))

(declare-fun m!125571 () Bool)

(assert (=> d!33941 m!125571))

(assert (=> d!33941 m!125565))

(assert (=> d!33941 m!125567))

(declare-fun m!125573 () Bool)

(assert (=> d!33941 m!125573))

(declare-fun m!125575 () Bool)

(assert (=> d!33941 m!125575))

(declare-fun m!125577 () Bool)

(assert (=> b!142775 m!125577))

(declare-fun m!125579 () Bool)

(assert (=> b!142776 m!125579))

(assert (=> b!142777 m!125565))

(assert (=> b!142777 m!125565))

(assert (=> b!142777 m!125567))

(assert (=> b!142777 m!125567))

(assert (=> b!142777 m!125569))

(declare-fun m!125581 () Bool)

(assert (=> b!142777 m!125581))

(assert (=> b!142623 d!33941))

(declare-fun d!33943 () Bool)

(declare-fun res!66078 () Bool)

(declare-fun e!84477 () Bool)

(assert (=> d!33943 (=> res!66078 e!84477)))

(assert (=> d!33943 (= res!66078 (not ((_ is Cons!2449) (t!23753 rules!1920))))))

(assert (=> d!33943 (= (sepAndNonSepRulesDisjointChars!4 rules!1920 (t!23753 rules!1920)) e!84477)))

(declare-fun b!142778 () Bool)

(declare-fun e!84478 () Bool)

(assert (=> b!142778 (= e!84477 e!84478)))

(declare-fun res!66079 () Bool)

(assert (=> b!142778 (=> (not res!66079) (not e!84478))))

(assert (=> b!142778 (= res!66079 (ruleDisjointCharsFromAllFromOtherType!2 (h!7846 (t!23753 rules!1920)) rules!1920))))

(declare-fun b!142779 () Bool)

(assert (=> b!142779 (= e!84478 (sepAndNonSepRulesDisjointChars!4 rules!1920 (t!23753 (t!23753 rules!1920))))))

(assert (= (and d!33943 (not res!66078)) b!142778))

(assert (= (and b!142778 res!66079) b!142779))

(declare-fun m!125583 () Bool)

(assert (=> b!142778 m!125583))

(declare-fun m!125585 () Bool)

(assert (=> b!142779 m!125585))

(assert (=> b!142633 d!33943))

(declare-fun b!142791 () Bool)

(declare-fun e!84489 () Bool)

(declare-fun e!84490 () Bool)

(assert (=> b!142791 (= e!84489 e!84490)))

(declare-fun res!66088 () Bool)

(assert (=> b!142791 (= res!66088 (not ((_ is Cons!2449) rules!1920)))))

(assert (=> b!142791 (=> res!66088 e!84490)))

(declare-fun bm!5578 () Bool)

(declare-fun call!5583 () Bool)

(assert (=> bm!5578 (= call!5583 (ruleDisjointCharsFromAllFromOtherType!2 (h!7846 rules!1920) (t!23753 rules!1920)))))

(declare-fun b!142792 () Bool)

(assert (=> b!142792 (= e!84490 call!5583)))

(declare-fun d!33945 () Bool)

(declare-fun c!29469 () Bool)

(assert (=> d!33945 (= c!29469 (and ((_ is Cons!2449) rules!1920) (not (= (isSeparator!415 (h!7846 rules!1920)) (isSeparator!415 (h!7846 rules!1920))))))))

(assert (=> d!33945 (= (ruleDisjointCharsFromAllFromOtherType!2 (h!7846 rules!1920) rules!1920) e!84489)))

(declare-fun b!142793 () Bool)

(declare-fun e!84488 () Bool)

(assert (=> b!142793 (= e!84488 call!5583)))

(declare-fun b!142794 () Bool)

(assert (=> b!142794 (= e!84489 e!84488)))

(declare-fun res!66087 () Bool)

(declare-fun rulesUseDisjointChars!1 (Rule!630 Rule!630) Bool)

(assert (=> b!142794 (= res!66087 (rulesUseDisjointChars!1 (h!7846 rules!1920) (h!7846 rules!1920)))))

(assert (=> b!142794 (=> (not res!66087) (not e!84488))))

(assert (= (and d!33945 c!29469) b!142794))

(assert (= (and d!33945 (not c!29469)) b!142791))

(assert (= (and b!142794 res!66087) b!142793))

(assert (= (and b!142791 (not res!66088)) b!142792))

(assert (= (or b!142793 b!142792) bm!5578))

(declare-fun m!125605 () Bool)

(assert (=> bm!5578 m!125605))

(declare-fun m!125607 () Bool)

(assert (=> b!142794 m!125607))

(assert (=> b!142632 d!33945))

(declare-fun d!33953 () Bool)

(declare-fun lt!41303 () Bool)

(assert (=> d!33953 (= lt!41303 (isEmpty!939 (list!848 (_2!1453 lt!41262))))))

(assert (=> d!33953 (= lt!41303 (isEmpty!941 (c!29437 (_2!1453 lt!41262))))))

(assert (=> d!33953 (= (isEmpty!940 (_2!1453 lt!41262)) lt!41303)))

(declare-fun bs!12916 () Bool)

(assert (= bs!12916 d!33953))

(declare-fun m!125609 () Bool)

(assert (=> bs!12916 m!125609))

(assert (=> bs!12916 m!125609))

(declare-fun m!125611 () Bool)

(assert (=> bs!12916 m!125611))

(declare-fun m!125613 () Bool)

(assert (=> bs!12916 m!125613))

(assert (=> b!142641 d!33953))

(declare-fun d!33955 () Bool)

(declare-fun lt!41309 () Token!574)

(declare-fun apply!297 (List!2460 Int) Token!574)

(assert (=> d!33955 (= lt!41309 (apply!297 (list!849 (_1!1453 lt!41262)) 0))))

(declare-fun apply!298 (Conc!653 Int) Token!574)

(assert (=> d!33955 (= lt!41309 (apply!298 (c!29439 (_1!1453 lt!41262)) 0))))

(declare-fun e!84498 () Bool)

(assert (=> d!33955 e!84498))

(declare-fun res!66096 () Bool)

(assert (=> d!33955 (=> (not res!66096) (not e!84498))))

(assert (=> d!33955 (= res!66096 (<= 0 0))))

(assert (=> d!33955 (= (apply!294 (_1!1453 lt!41262) 0) lt!41309)))

(declare-fun b!142802 () Bool)

(assert (=> b!142802 (= e!84498 (< 0 (size!2131 (_1!1453 lt!41262))))))

(assert (= (and d!33955 res!66096) b!142802))

(declare-fun m!125629 () Bool)

(assert (=> d!33955 m!125629))

(assert (=> d!33955 m!125629))

(declare-fun m!125631 () Bool)

(assert (=> d!33955 m!125631))

(declare-fun m!125633 () Bool)

(assert (=> d!33955 m!125633))

(assert (=> b!142802 m!125393))

(assert (=> b!142640 d!33955))

(declare-fun d!33965 () Bool)

(declare-fun res!66107 () Bool)

(declare-fun e!84509 () Bool)

(assert (=> d!33965 (=> res!66107 e!84509)))

(assert (=> d!33965 (= res!66107 ((_ is Nil!2449) rules!1920))))

(assert (=> d!33965 (= (noDuplicateTag!109 thiss!17480 rules!1920 Nil!2452) e!84509)))

(declare-fun b!142813 () Bool)

(declare-fun e!84510 () Bool)

(assert (=> b!142813 (= e!84509 e!84510)))

(declare-fun res!66108 () Bool)

(assert (=> b!142813 (=> (not res!66108) (not e!84510))))

(declare-fun contains!389 (List!2462 String!3265) Bool)

(assert (=> b!142813 (= res!66108 (not (contains!389 Nil!2452 (tag!593 (h!7846 rules!1920)))))))

(declare-fun b!142814 () Bool)

(assert (=> b!142814 (= e!84510 (noDuplicateTag!109 thiss!17480 (t!23753 rules!1920) (Cons!2452 (tag!593 (h!7846 rules!1920)) Nil!2452)))))

(assert (= (and d!33965 (not res!66107)) b!142813))

(assert (= (and b!142813 res!66108) b!142814))

(declare-fun m!125639 () Bool)

(assert (=> b!142813 m!125639))

(declare-fun m!125641 () Bool)

(assert (=> b!142814 m!125641))

(assert (=> b!142420 d!33965))

(declare-fun d!33969 () Bool)

(assert (=> d!33969 (= (inv!3214 (tag!593 (h!7846 (t!23753 rules!1920)))) (= (mod (str.len (value!16142 (tag!593 (h!7846 (t!23753 rules!1920))))) 2) 0))))

(assert (=> b!142691 d!33969))

(declare-fun d!33971 () Bool)

(declare-fun res!66109 () Bool)

(declare-fun e!84511 () Bool)

(assert (=> d!33971 (=> (not res!66109) (not e!84511))))

(assert (=> d!33971 (= res!66109 (semiInverseModEq!143 (toChars!889 (transformation!415 (h!7846 (t!23753 rules!1920)))) (toValue!1030 (transformation!415 (h!7846 (t!23753 rules!1920))))))))

(assert (=> d!33971 (= (inv!3218 (transformation!415 (h!7846 (t!23753 rules!1920)))) e!84511)))

(declare-fun b!142815 () Bool)

(assert (=> b!142815 (= e!84511 (equivClasses!126 (toChars!889 (transformation!415 (h!7846 (t!23753 rules!1920)))) (toValue!1030 (transformation!415 (h!7846 (t!23753 rules!1920))))))))

(assert (= (and d!33971 res!66109) b!142815))

(declare-fun m!125643 () Bool)

(assert (=> d!33971 m!125643))

(declare-fun m!125645 () Bool)

(assert (=> b!142815 m!125645))

(assert (=> b!142691 d!33971))

(declare-fun d!33973 () Bool)

(assert (=> d!33973 (= (isEmpty!939 (originalCharacters!458 separatorToken!170)) ((_ is Nil!2448) (originalCharacters!458 separatorToken!170)))))

(assert (=> d!33855 d!33973))

(declare-fun bs!12920 () Bool)

(declare-fun d!33975 () Bool)

(assert (= bs!12920 (and d!33975 b!142409)))

(declare-fun lambda!3397 () Int)

(assert (=> bs!12920 (not (= lambda!3397 lambda!3370))))

(declare-fun bs!12921 () Bool)

(assert (= bs!12921 (and d!33975 d!33835)))

(assert (=> bs!12921 (= lambda!3397 lambda!3380)))

(declare-fun bs!12922 () Bool)

(assert (= bs!12922 (and d!33975 d!33859)))

(assert (=> bs!12922 (= lambda!3397 lambda!3386)))

(declare-fun bs!12923 () Bool)

(assert (= bs!12923 (and d!33975 d!33939)))

(assert (=> bs!12923 (= lambda!3397 lambda!3395)))

(declare-fun b!142820 () Bool)

(declare-fun e!84516 () Bool)

(assert (=> b!142820 (= e!84516 true)))

(declare-fun b!142819 () Bool)

(declare-fun e!84515 () Bool)

(assert (=> b!142819 (= e!84515 e!84516)))

(declare-fun b!142818 () Bool)

(declare-fun e!84514 () Bool)

(assert (=> b!142818 (= e!84514 e!84515)))

(assert (=> d!33975 e!84514))

(assert (= b!142819 b!142820))

(assert (= b!142818 b!142819))

(assert (= (and d!33975 ((_ is Cons!2449) rules!1920)) b!142818))

(assert (=> b!142820 (< (dynLambda!823 order!1177 (toValue!1030 (transformation!415 (h!7846 rules!1920)))) (dynLambda!824 order!1179 lambda!3397))))

(assert (=> b!142820 (< (dynLambda!825 order!1181 (toChars!889 (transformation!415 (h!7846 rules!1920)))) (dynLambda!824 order!1179 lambda!3397))))

(assert (=> d!33975 true))

(declare-fun lt!41310 () Bool)

(assert (=> d!33975 (= lt!41310 (forall!361 (list!849 (seqFromList!228 tokens!465)) lambda!3397))))

(declare-fun e!84513 () Bool)

(assert (=> d!33975 (= lt!41310 e!84513)))

(declare-fun res!66110 () Bool)

(assert (=> d!33975 (=> res!66110 e!84513)))

(assert (=> d!33975 (= res!66110 (not ((_ is Cons!2450) (list!849 (seqFromList!228 tokens!465)))))))

(assert (=> d!33975 (not (isEmpty!936 rules!1920))))

(assert (=> d!33975 (= (rulesProduceEachTokenIndividuallyList!57 thiss!17480 rules!1920 (list!849 (seqFromList!228 tokens!465))) lt!41310)))

(declare-fun b!142816 () Bool)

(declare-fun e!84512 () Bool)

(assert (=> b!142816 (= e!84513 e!84512)))

(declare-fun res!66111 () Bool)

(assert (=> b!142816 (=> (not res!66111) (not e!84512))))

(assert (=> b!142816 (= res!66111 (rulesProduceIndividualToken!50 thiss!17480 rules!1920 (h!7847 (list!849 (seqFromList!228 tokens!465)))))))

(declare-fun b!142817 () Bool)

(assert (=> b!142817 (= e!84512 (rulesProduceEachTokenIndividuallyList!57 thiss!17480 rules!1920 (t!23754 (list!849 (seqFromList!228 tokens!465)))))))

(assert (= (and d!33975 (not res!66110)) b!142816))

(assert (= (and b!142816 res!66111) b!142817))

(assert (=> d!33975 m!125293))

(declare-fun m!125647 () Bool)

(assert (=> d!33975 m!125647))

(assert (=> d!33975 m!125173))

(declare-fun m!125649 () Bool)

(assert (=> b!142816 m!125649))

(declare-fun m!125651 () Bool)

(assert (=> b!142817 m!125651))

(assert (=> b!142499 d!33975))

(declare-fun d!33977 () Bool)

(declare-fun list!852 (Conc!653) List!2460)

(assert (=> d!33977 (= (list!849 (seqFromList!228 tokens!465)) (list!852 (c!29439 (seqFromList!228 tokens!465))))))

(declare-fun bs!12924 () Bool)

(assert (= bs!12924 d!33977))

(declare-fun m!125653 () Bool)

(assert (=> bs!12924 m!125653))

(assert (=> b!142499 d!33977))

(declare-fun d!33979 () Bool)

(assert (=> d!33979 true))

(declare-fun lambda!3401 () Int)

(declare-fun order!1187 () Int)

(declare-fun dynLambda!828 (Int Int) Int)

(assert (=> d!33979 (< (dynLambda!825 order!1181 (toChars!889 (transformation!415 (rule!922 separatorToken!170)))) (dynLambda!828 order!1187 lambda!3401))))

(assert (=> d!33979 true))

(assert (=> d!33979 (< (dynLambda!823 order!1177 (toValue!1030 (transformation!415 (rule!922 separatorToken!170)))) (dynLambda!828 order!1187 lambda!3401))))

(declare-fun Forall!112 (Int) Bool)

(assert (=> d!33979 (= (semiInverseModEq!143 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (toValue!1030 (transformation!415 (rule!922 separatorToken!170)))) (Forall!112 lambda!3401))))

(declare-fun bs!12933 () Bool)

(assert (= bs!12933 d!33979))

(declare-fun m!125667 () Bool)

(assert (=> bs!12933 m!125667))

(assert (=> d!33883 d!33979))

(declare-fun d!33991 () Bool)

(declare-fun list!853 (Conc!652) List!2458)

(assert (=> d!33991 (= (list!848 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170))) (list!853 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170)))))))

(declare-fun bs!12934 () Bool)

(assert (= bs!12934 d!33991))

(declare-fun m!125675 () Bool)

(assert (=> bs!12934 m!125675))

(assert (=> b!142518 d!33991))

(assert (=> d!33879 d!33935))

(declare-fun d!33995 () Bool)

(assert (=> d!33995 (= (list!849 (_1!1453 (lex!153 thiss!17480 rules!1920 (print!78 thiss!17480 (singletonSeq!11 separatorToken!170))))) (list!852 (c!29439 (_1!1453 (lex!153 thiss!17480 rules!1920 (print!78 thiss!17480 (singletonSeq!11 separatorToken!170)))))))))

(declare-fun bs!12935 () Bool)

(assert (= bs!12935 d!33995))

(declare-fun m!125677 () Bool)

(assert (=> bs!12935 m!125677))

(assert (=> d!33879 d!33995))

(assert (=> d!33879 d!33911))

(declare-fun d!33997 () Bool)

(assert (=> d!33997 (= (list!849 (singletonSeq!11 separatorToken!170)) (list!852 (c!29439 (singletonSeq!11 separatorToken!170))))))

(declare-fun bs!12936 () Bool)

(assert (= bs!12936 d!33997))

(declare-fun m!125679 () Bool)

(assert (=> bs!12936 m!125679))

(assert (=> d!33879 d!33997))

(assert (=> d!33879 d!33931))

(assert (=> d!33879 d!33857))

(declare-fun d!33999 () Bool)

(declare-fun lt!41318 () Int)

(declare-fun size!2134 (List!2460) Int)

(assert (=> d!33999 (= lt!41318 (size!2134 (list!849 (_1!1453 lt!41262))))))

(declare-fun size!2135 (Conc!653) Int)

(assert (=> d!33999 (= lt!41318 (size!2135 (c!29439 (_1!1453 lt!41262))))))

(assert (=> d!33999 (= (size!2131 (_1!1453 lt!41262)) lt!41318)))

(declare-fun bs!12941 () Bool)

(assert (= bs!12941 d!33999))

(assert (=> bs!12941 m!125629))

(assert (=> bs!12941 m!125629))

(declare-fun m!125693 () Bool)

(assert (=> bs!12941 m!125693))

(declare-fun m!125697 () Bool)

(assert (=> bs!12941 m!125697))

(assert (=> d!33879 d!33999))

(declare-fun d!34013 () Bool)

(declare-fun lt!41321 () Int)

(assert (=> d!34013 (>= lt!41321 0)))

(declare-fun e!84535 () Int)

(assert (=> d!34013 (= lt!41321 e!84535)))

(declare-fun c!29477 () Bool)

(assert (=> d!34013 (= c!29477 ((_ is Nil!2448) (originalCharacters!458 (h!7847 tokens!465))))))

(assert (=> d!34013 (= (size!2130 (originalCharacters!458 (h!7847 tokens!465))) lt!41321)))

(declare-fun b!142849 () Bool)

(assert (=> b!142849 (= e!84535 0)))

(declare-fun b!142850 () Bool)

(assert (=> b!142850 (= e!84535 (+ 1 (size!2130 (t!23752 (originalCharacters!458 (h!7847 tokens!465))))))))

(assert (= (and d!34013 c!29477) b!142849))

(assert (= (and d!34013 (not c!29477)) b!142850))

(declare-fun m!125701 () Bool)

(assert (=> b!142850 m!125701))

(assert (=> b!142436 d!34013))

(declare-fun d!34017 () Bool)

(assert (=> d!34017 true))

(declare-fun order!1189 () Int)

(declare-fun lambda!3406 () Int)

(declare-fun dynLambda!829 (Int Int) Int)

(assert (=> d!34017 (< (dynLambda!823 order!1177 (toValue!1030 (transformation!415 (h!7846 rules!1920)))) (dynLambda!829 order!1189 lambda!3406))))

(declare-fun Forall2!88 (Int) Bool)

(assert (=> d!34017 (= (equivClasses!126 (toChars!889 (transformation!415 (h!7846 rules!1920))) (toValue!1030 (transformation!415 (h!7846 rules!1920)))) (Forall2!88 lambda!3406))))

(declare-fun bs!12947 () Bool)

(assert (= bs!12947 d!34017))

(declare-fun m!125713 () Bool)

(assert (=> bs!12947 m!125713))

(assert (=> b!142423 d!34017))

(declare-fun d!34027 () Bool)

(assert (=> d!34027 (= (list!848 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465)))) (list!853 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465))))))))

(declare-fun bs!12948 () Bool)

(assert (= bs!12948 d!34027))

(declare-fun m!125715 () Bool)

(assert (=> bs!12948 m!125715))

(assert (=> b!142435 d!34027))

(declare-fun bs!12949 () Bool)

(declare-fun d!34029 () Bool)

(assert (= bs!12949 (and d!34029 d!34017)))

(declare-fun lambda!3407 () Int)

(assert (=> bs!12949 (= (= (toValue!1030 (transformation!415 (rule!922 separatorToken!170))) (toValue!1030 (transformation!415 (h!7846 rules!1920)))) (= lambda!3407 lambda!3406))))

(assert (=> d!34029 true))

(assert (=> d!34029 (< (dynLambda!823 order!1177 (toValue!1030 (transformation!415 (rule!922 separatorToken!170)))) (dynLambda!829 order!1189 lambda!3407))))

(assert (=> d!34029 (= (equivClasses!126 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (toValue!1030 (transformation!415 (rule!922 separatorToken!170)))) (Forall2!88 lambda!3407))))

(declare-fun bs!12950 () Bool)

(assert (= bs!12950 d!34029))

(declare-fun m!125717 () Bool)

(assert (=> bs!12950 m!125717))

(assert (=> b!142643 d!34029))

(declare-fun d!34031 () Bool)

(declare-fun charsToBigInt!0 (List!2457 Int) Int)

(assert (=> d!34031 (= (inv!15 (value!16143 separatorToken!170)) (= (charsToBigInt!0 (text!3508 (value!16143 separatorToken!170)) 0) (value!16138 (value!16143 separatorToken!170))))))

(declare-fun bs!12952 () Bool)

(assert (= bs!12952 d!34031))

(declare-fun m!125723 () Bool)

(assert (=> bs!12952 m!125723))

(assert (=> b!142454 d!34031))

(declare-fun d!34035 () Bool)

(assert (=> d!34035 (= (isEmpty!939 (originalCharacters!458 (h!7847 tokens!465))) ((_ is Nil!2448) (originalCharacters!458 (h!7847 tokens!465))))))

(assert (=> d!33831 d!34035))

(declare-fun d!34037 () Bool)

(declare-fun charsToBigInt!1 (List!2457) Int)

(assert (=> d!34037 (= (inv!17 (value!16143 separatorToken!170)) (= (charsToBigInt!1 (text!3507 (value!16143 separatorToken!170))) (value!16135 (value!16143 separatorToken!170))))))

(declare-fun bs!12956 () Bool)

(assert (= bs!12956 d!34037))

(declare-fun m!125735 () Bool)

(assert (=> bs!12956 m!125735))

(assert (=> b!142453 d!34037))

(declare-fun d!34045 () Bool)

(declare-fun c!29484 () Bool)

(assert (=> d!34045 (= c!29484 ((_ is Node!652) (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465))))))))

(declare-fun e!84571 () Bool)

(assert (=> d!34045 (= (inv!3221 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465))))) e!84571)))

(declare-fun b!142908 () Bool)

(declare-fun inv!3223 (Conc!652) Bool)

(assert (=> b!142908 (= e!84571 (inv!3223 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465))))))))

(declare-fun b!142909 () Bool)

(declare-fun e!84572 () Bool)

(assert (=> b!142909 (= e!84571 e!84572)))

(declare-fun res!66131 () Bool)

(assert (=> b!142909 (= res!66131 (not ((_ is Leaf!1199) (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465)))))))))

(assert (=> b!142909 (=> res!66131 e!84572)))

(declare-fun b!142910 () Bool)

(declare-fun inv!3224 (Conc!652) Bool)

(assert (=> b!142910 (= e!84572 (inv!3224 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465))))))))

(assert (= (and d!34045 c!29484) b!142908))

(assert (= (and d!34045 (not c!29484)) b!142909))

(assert (= (and b!142909 (not res!66131)) b!142910))

(declare-fun m!125749 () Bool)

(assert (=> b!142908 m!125749))

(declare-fun m!125751 () Bool)

(assert (=> b!142910 m!125751))

(assert (=> b!142441 d!34045))

(declare-fun d!34047 () Bool)

(declare-fun lt!41325 () Int)

(assert (=> d!34047 (>= lt!41325 0)))

(declare-fun e!84574 () Int)

(assert (=> d!34047 (= lt!41325 e!84574)))

(declare-fun c!29485 () Bool)

(assert (=> d!34047 (= c!29485 ((_ is Nil!2448) (originalCharacters!458 separatorToken!170)))))

(assert (=> d!34047 (= (size!2130 (originalCharacters!458 separatorToken!170)) lt!41325)))

(declare-fun b!142915 () Bool)

(assert (=> b!142915 (= e!84574 0)))

(declare-fun b!142916 () Bool)

(assert (=> b!142916 (= e!84574 (+ 1 (size!2130 (t!23752 (originalCharacters!458 separatorToken!170)))))))

(assert (= (and d!34047 c!29485) b!142915))

(assert (= (and d!34047 (not c!29485)) b!142916))

(declare-fun m!125753 () Bool)

(assert (=> b!142916 m!125753))

(assert (=> b!142519 d!34047))

(declare-fun d!34049 () Bool)

(declare-fun isBalanced!187 (Conc!652) Bool)

(assert (=> d!34049 (= (inv!3222 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465)))) (isBalanced!187 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465))))))))

(declare-fun bs!12957 () Bool)

(assert (= bs!12957 d!34049))

(declare-fun m!125755 () Bool)

(assert (=> bs!12957 m!125755))

(assert (=> tb!4377 d!34049))

(declare-fun d!34051 () Bool)

(assert (=> d!34051 true))

(declare-fun lt!41328 () Bool)

(declare-fun rulesValidInductive!85 (LexerInterface!301 List!2459) Bool)

(assert (=> d!34051 (= lt!41328 (rulesValidInductive!85 thiss!17480 rules!1920))))

(declare-fun lambda!3413 () Int)

(declare-fun forall!365 (List!2459 Int) Bool)

(assert (=> d!34051 (= lt!41328 (forall!365 rules!1920 lambda!3413))))

(assert (=> d!34051 (= (rulesValid!109 thiss!17480 rules!1920) lt!41328)))

(declare-fun bs!12958 () Bool)

(assert (= bs!12958 d!34051))

(declare-fun m!125769 () Bool)

(assert (=> bs!12958 m!125769))

(declare-fun m!125771 () Bool)

(assert (=> bs!12958 m!125771))

(assert (=> d!33819 d!34051))

(declare-fun d!34053 () Bool)

(declare-fun charsToInt!0 (List!2457) (_ BitVec 32))

(assert (=> d!34053 (= (inv!16 (value!16143 separatorToken!170)) (= (charsToInt!0 (text!3506 (value!16143 separatorToken!170))) (value!16134 (value!16143 separatorToken!170))))))

(declare-fun bs!12962 () Bool)

(assert (= bs!12962 d!34053))

(declare-fun m!125773 () Bool)

(assert (=> bs!12962 m!125773))

(assert (=> b!142455 d!34053))

(declare-fun b!142982 () Bool)

(declare-fun res!66132 () Bool)

(declare-fun e!84599 () Bool)

(assert (=> b!142982 (=> res!66132 e!84599)))

(assert (=> b!142982 (= res!66132 (not ((_ is IntegerValue!1313) (value!16143 (h!7847 (t!23754 tokens!465))))))))

(declare-fun e!84600 () Bool)

(assert (=> b!142982 (= e!84600 e!84599)))

(declare-fun b!142983 () Bool)

(assert (=> b!142983 (= e!84600 (inv!17 (value!16143 (h!7847 (t!23754 tokens!465)))))))

(declare-fun b!142984 () Bool)

(assert (=> b!142984 (= e!84599 (inv!15 (value!16143 (h!7847 (t!23754 tokens!465)))))))

(declare-fun b!142985 () Bool)

(declare-fun e!84601 () Bool)

(assert (=> b!142985 (= e!84601 (inv!16 (value!16143 (h!7847 (t!23754 tokens!465)))))))

(declare-fun b!142986 () Bool)

(assert (=> b!142986 (= e!84601 e!84600)))

(declare-fun c!29487 () Bool)

(assert (=> b!142986 (= c!29487 ((_ is IntegerValue!1312) (value!16143 (h!7847 (t!23754 tokens!465)))))))

(declare-fun d!34061 () Bool)

(declare-fun c!29486 () Bool)

(assert (=> d!34061 (= c!29486 ((_ is IntegerValue!1311) (value!16143 (h!7847 (t!23754 tokens!465)))))))

(assert (=> d!34061 (= (inv!21 (value!16143 (h!7847 (t!23754 tokens!465)))) e!84601)))

(assert (= (and d!34061 c!29486) b!142985))

(assert (= (and d!34061 (not c!29486)) b!142986))

(assert (= (and b!142986 c!29487) b!142983))

(assert (= (and b!142986 (not c!29487)) b!142982))

(assert (= (and b!142982 (not res!66132)) b!142984))

(declare-fun m!125775 () Bool)

(assert (=> b!142983 m!125775))

(declare-fun m!125777 () Bool)

(assert (=> b!142984 m!125777))

(declare-fun m!125779 () Bool)

(assert (=> b!142985 m!125779))

(assert (=> b!142678 d!34061))

(declare-fun d!34063 () Bool)

(assert (=> d!34063 (= (inv!16 (value!16143 (h!7847 tokens!465))) (= (charsToInt!0 (text!3506 (value!16143 (h!7847 tokens!465)))) (value!16134 (value!16143 (h!7847 tokens!465)))))))

(declare-fun bs!12963 () Bool)

(assert (= bs!12963 d!34063))

(declare-fun m!125781 () Bool)

(assert (=> bs!12963 m!125781))

(assert (=> b!142516 d!34063))

(declare-fun bs!12964 () Bool)

(declare-fun d!34065 () Bool)

(assert (= bs!12964 (and d!34065 d!33979)))

(declare-fun lambda!3414 () Int)

(assert (=> bs!12964 (= (and (= (toChars!889 (transformation!415 (h!7846 rules!1920))) (toChars!889 (transformation!415 (rule!922 separatorToken!170)))) (= (toValue!1030 (transformation!415 (h!7846 rules!1920))) (toValue!1030 (transformation!415 (rule!922 separatorToken!170))))) (= lambda!3414 lambda!3401))))

(assert (=> d!34065 true))

(assert (=> d!34065 (< (dynLambda!825 order!1181 (toChars!889 (transformation!415 (h!7846 rules!1920)))) (dynLambda!828 order!1187 lambda!3414))))

(assert (=> d!34065 true))

(assert (=> d!34065 (< (dynLambda!823 order!1177 (toValue!1030 (transformation!415 (h!7846 rules!1920)))) (dynLambda!828 order!1187 lambda!3414))))

(assert (=> d!34065 (= (semiInverseModEq!143 (toChars!889 (transformation!415 (h!7846 rules!1920))) (toValue!1030 (transformation!415 (h!7846 rules!1920)))) (Forall!112 lambda!3414))))

(declare-fun bs!12965 () Bool)

(assert (= bs!12965 d!34065))

(declare-fun m!125783 () Bool)

(assert (=> bs!12965 m!125783))

(assert (=> d!33823 d!34065))

(declare-fun d!34067 () Bool)

(assert (=> d!34067 (= (inv!15 (value!16143 (h!7847 tokens!465))) (= (charsToBigInt!0 (text!3508 (value!16143 (h!7847 tokens!465))) 0) (value!16138 (value!16143 (h!7847 tokens!465)))))))

(declare-fun bs!12966 () Bool)

(assert (= bs!12966 d!34067))

(declare-fun m!125785 () Bool)

(assert (=> bs!12966 m!125785))

(assert (=> b!142515 d!34067))

(declare-fun d!34069 () Bool)

(assert (=> d!34069 (= (inv!3222 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170))) (isBalanced!187 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170)))))))

(declare-fun bs!12967 () Bool)

(assert (= bs!12967 d!34069))

(declare-fun m!125787 () Bool)

(assert (=> bs!12967 m!125787))

(assert (=> tb!4389 d!34069))

(declare-fun bs!12968 () Bool)

(declare-fun d!34071 () Bool)

(assert (= bs!12968 (and d!34071 d!33979)))

(declare-fun lambda!3415 () Int)

(assert (=> bs!12968 (= (and (= (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (toChars!889 (transformation!415 (rule!922 separatorToken!170)))) (= (toValue!1030 (transformation!415 (rule!922 (h!7847 tokens!465)))) (toValue!1030 (transformation!415 (rule!922 separatorToken!170))))) (= lambda!3415 lambda!3401))))

(declare-fun bs!12969 () Bool)

(assert (= bs!12969 (and d!34071 d!34065)))

(assert (=> bs!12969 (= (and (= (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (toChars!889 (transformation!415 (h!7846 rules!1920)))) (= (toValue!1030 (transformation!415 (rule!922 (h!7847 tokens!465)))) (toValue!1030 (transformation!415 (h!7846 rules!1920))))) (= lambda!3415 lambda!3414))))

(assert (=> d!34071 true))

(assert (=> d!34071 (< (dynLambda!825 order!1181 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465))))) (dynLambda!828 order!1187 lambda!3415))))

(assert (=> d!34071 true))

(assert (=> d!34071 (< (dynLambda!823 order!1177 (toValue!1030 (transformation!415 (rule!922 (h!7847 tokens!465))))) (dynLambda!828 order!1187 lambda!3415))))

(assert (=> d!34071 (= (semiInverseModEq!143 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (toValue!1030 (transformation!415 (rule!922 (h!7847 tokens!465))))) (Forall!112 lambda!3415))))

(declare-fun bs!12970 () Bool)

(assert (= bs!12970 d!34071))

(declare-fun m!125789 () Bool)

(assert (=> bs!12970 m!125789))

(assert (=> d!33827 d!34071))

(declare-fun d!34073 () Bool)

(assert (=> d!34073 (= (inv!17 (value!16143 (h!7847 tokens!465))) (= (charsToBigInt!1 (text!3507 (value!16143 (h!7847 tokens!465)))) (value!16135 (value!16143 (h!7847 tokens!465)))))))

(declare-fun bs!12971 () Bool)

(assert (= bs!12971 d!34073))

(declare-fun m!125791 () Bool)

(assert (=> bs!12971 m!125791))

(assert (=> b!142514 d!34073))

(declare-fun d!34075 () Bool)

(declare-fun res!66133 () Bool)

(declare-fun e!84602 () Bool)

(assert (=> d!34075 (=> res!66133 e!84602)))

(assert (=> d!34075 (= res!66133 ((_ is Nil!2450) tokens!465))))

(assert (=> d!34075 (= (forall!361 tokens!465 lambda!3386) e!84602)))

(declare-fun b!142987 () Bool)

(declare-fun e!84603 () Bool)

(assert (=> b!142987 (= e!84602 e!84603)))

(declare-fun res!66134 () Bool)

(assert (=> b!142987 (=> (not res!66134) (not e!84603))))

(assert (=> b!142987 (= res!66134 (dynLambda!821 lambda!3386 (h!7847 tokens!465)))))

(declare-fun b!142988 () Bool)

(assert (=> b!142988 (= e!84603 (forall!361 (t!23754 tokens!465) lambda!3386))))

(assert (= (and d!34075 (not res!66133)) b!142987))

(assert (= (and b!142987 res!66134) b!142988))

(declare-fun b_lambda!2289 () Bool)

(assert (=> (not b_lambda!2289) (not b!142987)))

(declare-fun m!125793 () Bool)

(assert (=> b!142987 m!125793))

(declare-fun m!125795 () Bool)

(assert (=> b!142988 m!125795))

(assert (=> d!33859 d!34075))

(assert (=> d!33859 d!33857))

(declare-fun d!34077 () Bool)

(declare-fun res!66135 () Bool)

(declare-fun e!84604 () Bool)

(assert (=> d!34077 (=> (not res!66135) (not e!84604))))

(assert (=> d!34077 (= res!66135 (not (isEmpty!939 (originalCharacters!458 (h!7847 (t!23754 tokens!465))))))))

(assert (=> d!34077 (= (inv!3217 (h!7847 (t!23754 tokens!465))) e!84604)))

(declare-fun b!142989 () Bool)

(declare-fun res!66136 () Bool)

(assert (=> b!142989 (=> (not res!66136) (not e!84604))))

(assert (=> b!142989 (= res!66136 (= (originalCharacters!458 (h!7847 (t!23754 tokens!465))) (list!848 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))) (value!16143 (h!7847 (t!23754 tokens!465)))))))))

(declare-fun b!142990 () Bool)

(assert (=> b!142990 (= e!84604 (= (size!2127 (h!7847 (t!23754 tokens!465))) (size!2130 (originalCharacters!458 (h!7847 (t!23754 tokens!465))))))))

(assert (= (and d!34077 res!66135) b!142989))

(assert (= (and b!142989 res!66136) b!142990))

(declare-fun b_lambda!2291 () Bool)

(assert (=> (not b_lambda!2291) (not b!142989)))

(declare-fun tb!4439 () Bool)

(declare-fun t!23836 () Bool)

(assert (=> (and b!142692 (= (toChars!889 (transformation!415 (h!7846 (t!23753 rules!1920)))) (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465)))))) t!23836) tb!4439))

(declare-fun b!142991 () Bool)

(declare-fun e!84605 () Bool)

(declare-fun tp!75398 () Bool)

(assert (=> b!142991 (= e!84605 (and (inv!3221 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))) (value!16143 (h!7847 (t!23754 tokens!465)))))) tp!75398))))

(declare-fun result!6736 () Bool)

(assert (=> tb!4439 (= result!6736 (and (inv!3222 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))) (value!16143 (h!7847 (t!23754 tokens!465))))) e!84605))))

(assert (= tb!4439 b!142991))

(declare-fun m!125797 () Bool)

(assert (=> b!142991 m!125797))

(declare-fun m!125799 () Bool)

(assert (=> tb!4439 m!125799))

(assert (=> b!142989 t!23836))

(declare-fun b_and!7483 () Bool)

(assert (= b_and!7463 (and (=> t!23836 result!6736) b_and!7483)))

(declare-fun t!23838 () Bool)

(declare-fun tb!4441 () Bool)

(assert (=> (and b!142400 (= (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465)))))) t!23838) tb!4441))

(declare-fun result!6738 () Bool)

(assert (= result!6738 result!6736))

(assert (=> b!142989 t!23838))

(declare-fun b_and!7485 () Bool)

(assert (= b_and!7437 (and (=> t!23838 result!6738) b_and!7485)))

(declare-fun t!23840 () Bool)

(declare-fun tb!4443 () Bool)

(assert (=> (and b!142414 (= (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465)))))) t!23840) tb!4443))

(declare-fun result!6740 () Bool)

(assert (= result!6740 result!6736))

(assert (=> b!142989 t!23840))

(declare-fun b_and!7487 () Bool)

(assert (= b_and!7439 (and (=> t!23840 result!6740) b_and!7487)))

(declare-fun t!23842 () Bool)

(declare-fun tb!4445 () Bool)

(assert (=> (and b!142401 (= (toChars!889 (transformation!415 (h!7846 rules!1920))) (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465)))))) t!23842) tb!4445))

(declare-fun result!6742 () Bool)

(assert (= result!6742 result!6736))

(assert (=> b!142989 t!23842))

(declare-fun b_and!7489 () Bool)

(assert (= b_and!7441 (and (=> t!23842 result!6742) b_and!7489)))

(declare-fun t!23844 () Bool)

(declare-fun tb!4447 () Bool)

(assert (=> (and b!142680 (= (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))) (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465)))))) t!23844) tb!4447))

(declare-fun result!6744 () Bool)

(assert (= result!6744 result!6736))

(assert (=> b!142989 t!23844))

(declare-fun b_and!7491 () Bool)

(assert (= b_and!7459 (and (=> t!23844 result!6744) b_and!7491)))

(declare-fun m!125801 () Bool)

(assert (=> d!34077 m!125801))

(declare-fun m!125803 () Bool)

(assert (=> b!142989 m!125803))

(assert (=> b!142989 m!125803))

(declare-fun m!125805 () Bool)

(assert (=> b!142989 m!125805))

(declare-fun m!125807 () Bool)

(assert (=> b!142990 m!125807))

(assert (=> b!142677 d!34077))

(declare-fun bs!12972 () Bool)

(declare-fun d!34079 () Bool)

(assert (= bs!12972 (and d!34079 d!34017)))

(declare-fun lambda!3416 () Int)

(assert (=> bs!12972 (= (= (toValue!1030 (transformation!415 (rule!922 (h!7847 tokens!465)))) (toValue!1030 (transformation!415 (h!7846 rules!1920)))) (= lambda!3416 lambda!3406))))

(declare-fun bs!12973 () Bool)

(assert (= bs!12973 (and d!34079 d!34029)))

(assert (=> bs!12973 (= (= (toValue!1030 (transformation!415 (rule!922 (h!7847 tokens!465)))) (toValue!1030 (transformation!415 (rule!922 separatorToken!170)))) (= lambda!3416 lambda!3407))))

(assert (=> d!34079 true))

(assert (=> d!34079 (< (dynLambda!823 order!1177 (toValue!1030 (transformation!415 (rule!922 (h!7847 tokens!465))))) (dynLambda!829 order!1189 lambda!3416))))

(assert (=> d!34079 (= (equivClasses!126 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (toValue!1030 (transformation!415 (rule!922 (h!7847 tokens!465))))) (Forall2!88 lambda!3416))))

(declare-fun bs!12974 () Bool)

(assert (= bs!12974 d!34079))

(declare-fun m!125809 () Bool)

(assert (=> bs!12974 m!125809))

(assert (=> b!142424 d!34079))

(declare-fun d!34081 () Bool)

(assert (=> d!34081 (= (inv!3214 (tag!593 (rule!922 (h!7847 (t!23754 tokens!465))))) (= (mod (str.len (value!16142 (tag!593 (rule!922 (h!7847 (t!23754 tokens!465)))))) 2) 0))))

(assert (=> b!142679 d!34081))

(declare-fun d!34083 () Bool)

(declare-fun res!66137 () Bool)

(declare-fun e!84606 () Bool)

(assert (=> d!34083 (=> (not res!66137) (not e!84606))))

(assert (=> d!34083 (= res!66137 (semiInverseModEq!143 (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))) (toValue!1030 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465)))))))))

(assert (=> d!34083 (= (inv!3218 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))) e!84606)))

(declare-fun b!142992 () Bool)

(assert (=> b!142992 (= e!84606 (equivClasses!126 (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))) (toValue!1030 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465)))))))))

(assert (= (and d!34083 res!66137) b!142992))

(declare-fun m!125811 () Bool)

(assert (=> d!34083 m!125811))

(declare-fun m!125813 () Bool)

(assert (=> b!142992 m!125813))

(assert (=> b!142679 d!34083))

(declare-fun d!34085 () Bool)

(declare-fun res!66138 () Bool)

(declare-fun e!84607 () Bool)

(assert (=> d!34085 (=> res!66138 e!84607)))

(assert (=> d!34085 (= res!66138 ((_ is Nil!2450) (list!849 (seqFromList!228 tokens!465))))))

(assert (=> d!34085 (= (forall!361 (list!849 (seqFromList!228 tokens!465)) lambda!3380) e!84607)))

(declare-fun b!142993 () Bool)

(declare-fun e!84608 () Bool)

(assert (=> b!142993 (= e!84607 e!84608)))

(declare-fun res!66139 () Bool)

(assert (=> b!142993 (=> (not res!66139) (not e!84608))))

(assert (=> b!142993 (= res!66139 (dynLambda!821 lambda!3380 (h!7847 (list!849 (seqFromList!228 tokens!465)))))))

(declare-fun b!142994 () Bool)

(assert (=> b!142994 (= e!84608 (forall!361 (t!23754 (list!849 (seqFromList!228 tokens!465))) lambda!3380))))

(assert (= (and d!34085 (not res!66138)) b!142993))

(assert (= (and b!142993 res!66139) b!142994))

(declare-fun b_lambda!2293 () Bool)

(assert (=> (not b_lambda!2293) (not b!142993)))

(declare-fun m!125815 () Bool)

(assert (=> b!142993 m!125815))

(declare-fun m!125817 () Bool)

(assert (=> b!142994 m!125817))

(assert (=> d!33835 d!34085))

(assert (=> d!33835 d!33977))

(declare-fun d!34087 () Bool)

(declare-fun lt!41331 () Bool)

(assert (=> d!34087 (= lt!41331 (forall!361 (list!849 (seqFromList!228 tokens!465)) lambda!3380))))

(declare-fun forall!367 (Conc!653 Int) Bool)

(assert (=> d!34087 (= lt!41331 (forall!367 (c!29439 (seqFromList!228 tokens!465)) lambda!3380))))

(assert (=> d!34087 (= (forall!363 (seqFromList!228 tokens!465) lambda!3380) lt!41331)))

(declare-fun bs!12975 () Bool)

(assert (= bs!12975 d!34087))

(assert (=> bs!12975 m!125197))

(assert (=> bs!12975 m!125293))

(assert (=> bs!12975 m!125293))

(assert (=> bs!12975 m!125295))

(declare-fun m!125819 () Bool)

(assert (=> bs!12975 m!125819))

(assert (=> d!33835 d!34087))

(assert (=> d!33835 d!33857))

(declare-fun d!34089 () Bool)

(declare-fun c!29488 () Bool)

(assert (=> d!34089 (= c!29488 ((_ is Node!652) (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170)))))))

(declare-fun e!84609 () Bool)

(assert (=> d!34089 (= (inv!3221 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170)))) e!84609)))

(declare-fun b!142995 () Bool)

(assert (=> b!142995 (= e!84609 (inv!3223 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170)))))))

(declare-fun b!142996 () Bool)

(declare-fun e!84610 () Bool)

(assert (=> b!142996 (= e!84609 e!84610)))

(declare-fun res!66140 () Bool)

(assert (=> b!142996 (= res!66140 (not ((_ is Leaf!1199) (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170))))))))

(assert (=> b!142996 (=> res!66140 e!84610)))

(declare-fun b!142997 () Bool)

(assert (=> b!142997 (= e!84610 (inv!3224 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170)))))))

(assert (= (and d!34089 c!29488) b!142995))

(assert (= (and d!34089 (not c!29488)) b!142996))

(assert (= (and b!142996 (not res!66140)) b!142997))

(declare-fun m!125821 () Bool)

(assert (=> b!142995 m!125821))

(declare-fun m!125823 () Bool)

(assert (=> b!142997 m!125823))

(assert (=> b!142520 d!34089))

(declare-fun d!34091 () Bool)

(declare-fun e!84613 () Bool)

(assert (=> d!34091 e!84613))

(declare-fun res!66143 () Bool)

(assert (=> d!34091 (=> (not res!66143) (not e!84613))))

(declare-fun lt!41334 () BalanceConc!1314)

(assert (=> d!34091 (= res!66143 (= (list!849 lt!41334) tokens!465))))

(declare-fun fromList!69 (List!2460) Conc!653)

(assert (=> d!34091 (= lt!41334 (BalanceConc!1315 (fromList!69 tokens!465)))))

(assert (=> d!34091 (= (fromListB!101 tokens!465) lt!41334)))

(declare-fun b!143000 () Bool)

(assert (=> b!143000 (= e!84613 (isBalanced!185 (fromList!69 tokens!465)))))

(assert (= (and d!34091 res!66143) b!143000))

(declare-fun m!125825 () Bool)

(assert (=> d!34091 m!125825))

(declare-fun m!125827 () Bool)

(assert (=> d!34091 m!125827))

(assert (=> b!143000 m!125827))

(assert (=> b!143000 m!125827))

(declare-fun m!125829 () Bool)

(assert (=> b!143000 m!125829))

(assert (=> d!33851 d!34091))

(declare-fun e!84614 () Bool)

(assert (=> b!142695 (= tp!75283 e!84614)))

(declare-fun b!143002 () Bool)

(declare-fun tp!75403 () Bool)

(declare-fun tp!75401 () Bool)

(assert (=> b!143002 (= e!84614 (and tp!75403 tp!75401))))

(declare-fun b!143001 () Bool)

(assert (=> b!143001 (= e!84614 tp_is_empty!1583)))

(declare-fun b!143003 () Bool)

(declare-fun tp!75399 () Bool)

(assert (=> b!143003 (= e!84614 tp!75399)))

(declare-fun b!143004 () Bool)

(declare-fun tp!75400 () Bool)

(declare-fun tp!75402 () Bool)

(assert (=> b!143004 (= e!84614 (and tp!75400 tp!75402))))

(assert (= (and b!142695 ((_ is ElementMatch!639) (reg!968 (regex!415 (rule!922 separatorToken!170))))) b!143001))

(assert (= (and b!142695 ((_ is Concat!1077) (reg!968 (regex!415 (rule!922 separatorToken!170))))) b!143002))

(assert (= (and b!142695 ((_ is Star!639) (reg!968 (regex!415 (rule!922 separatorToken!170))))) b!143003))

(assert (= (and b!142695 ((_ is Union!639) (reg!968 (regex!415 (rule!922 separatorToken!170))))) b!143004))

(declare-fun b!143007 () Bool)

(declare-fun e!84617 () Bool)

(assert (=> b!143007 (= e!84617 true)))

(declare-fun b!143006 () Bool)

(declare-fun e!84616 () Bool)

(assert (=> b!143006 (= e!84616 e!84617)))

(declare-fun b!143005 () Bool)

(declare-fun e!84615 () Bool)

(assert (=> b!143005 (= e!84615 e!84616)))

(assert (=> b!142508 e!84615))

(assert (= b!143006 b!143007))

(assert (= b!143005 b!143006))

(assert (= (and b!142508 ((_ is Cons!2449) (t!23753 rules!1920))) b!143005))

(assert (=> b!143007 (< (dynLambda!823 order!1177 (toValue!1030 (transformation!415 (h!7846 (t!23753 rules!1920))))) (dynLambda!824 order!1179 lambda!3380))))

(assert (=> b!143007 (< (dynLambda!825 order!1181 (toChars!889 (transformation!415 (h!7846 (t!23753 rules!1920))))) (dynLambda!824 order!1179 lambda!3380))))

(declare-fun e!84618 () Bool)

(assert (=> b!142696 (= tp!75284 e!84618)))

(declare-fun b!143009 () Bool)

(declare-fun tp!75408 () Bool)

(declare-fun tp!75406 () Bool)

(assert (=> b!143009 (= e!84618 (and tp!75408 tp!75406))))

(declare-fun b!143008 () Bool)

(assert (=> b!143008 (= e!84618 tp_is_empty!1583)))

(declare-fun b!143010 () Bool)

(declare-fun tp!75404 () Bool)

(assert (=> b!143010 (= e!84618 tp!75404)))

(declare-fun b!143011 () Bool)

(declare-fun tp!75405 () Bool)

(declare-fun tp!75407 () Bool)

(assert (=> b!143011 (= e!84618 (and tp!75405 tp!75407))))

(assert (= (and b!142696 ((_ is ElementMatch!639) (regOne!1791 (regex!415 (rule!922 separatorToken!170))))) b!143008))

(assert (= (and b!142696 ((_ is Concat!1077) (regOne!1791 (regex!415 (rule!922 separatorToken!170))))) b!143009))

(assert (= (and b!142696 ((_ is Star!639) (regOne!1791 (regex!415 (rule!922 separatorToken!170))))) b!143010))

(assert (= (and b!142696 ((_ is Union!639) (regOne!1791 (regex!415 (rule!922 separatorToken!170))))) b!143011))

(declare-fun e!84619 () Bool)

(assert (=> b!142696 (= tp!75286 e!84619)))

(declare-fun b!143013 () Bool)

(declare-fun tp!75413 () Bool)

(declare-fun tp!75411 () Bool)

(assert (=> b!143013 (= e!84619 (and tp!75413 tp!75411))))

(declare-fun b!143012 () Bool)

(assert (=> b!143012 (= e!84619 tp_is_empty!1583)))

(declare-fun b!143014 () Bool)

(declare-fun tp!75409 () Bool)

(assert (=> b!143014 (= e!84619 tp!75409)))

(declare-fun b!143015 () Bool)

(declare-fun tp!75410 () Bool)

(declare-fun tp!75412 () Bool)

(assert (=> b!143015 (= e!84619 (and tp!75410 tp!75412))))

(assert (= (and b!142696 ((_ is ElementMatch!639) (regTwo!1791 (regex!415 (rule!922 separatorToken!170))))) b!143012))

(assert (= (and b!142696 ((_ is Concat!1077) (regTwo!1791 (regex!415 (rule!922 separatorToken!170))))) b!143013))

(assert (= (and b!142696 ((_ is Star!639) (regTwo!1791 (regex!415 (rule!922 separatorToken!170))))) b!143014))

(assert (= (and b!142696 ((_ is Union!639) (regTwo!1791 (regex!415 (rule!922 separatorToken!170))))) b!143015))

(declare-fun b!143016 () Bool)

(declare-fun e!84620 () Bool)

(declare-fun tp!75414 () Bool)

(assert (=> b!143016 (= e!84620 (and tp_is_empty!1583 tp!75414))))

(assert (=> b!142678 (= tp!75268 e!84620)))

(assert (= (and b!142678 ((_ is Cons!2448) (originalCharacters!458 (h!7847 (t!23754 tokens!465))))) b!143016))

(declare-fun e!84621 () Bool)

(assert (=> b!142691 (= tp!75280 e!84621)))

(declare-fun b!143018 () Bool)

(declare-fun tp!75419 () Bool)

(declare-fun tp!75417 () Bool)

(assert (=> b!143018 (= e!84621 (and tp!75419 tp!75417))))

(declare-fun b!143017 () Bool)

(assert (=> b!143017 (= e!84621 tp_is_empty!1583)))

(declare-fun b!143019 () Bool)

(declare-fun tp!75415 () Bool)

(assert (=> b!143019 (= e!84621 tp!75415)))

(declare-fun b!143020 () Bool)

(declare-fun tp!75416 () Bool)

(declare-fun tp!75418 () Bool)

(assert (=> b!143020 (= e!84621 (and tp!75416 tp!75418))))

(assert (= (and b!142691 ((_ is ElementMatch!639) (regex!415 (h!7846 (t!23753 rules!1920))))) b!143017))

(assert (= (and b!142691 ((_ is Concat!1077) (regex!415 (h!7846 (t!23753 rules!1920))))) b!143018))

(assert (= (and b!142691 ((_ is Star!639) (regex!415 (h!7846 (t!23753 rules!1920))))) b!143019))

(assert (= (and b!142691 ((_ is Union!639) (regex!415 (h!7846 (t!23753 rules!1920))))) b!143020))

(declare-fun b!143023 () Bool)

(declare-fun b_free!4853 () Bool)

(declare-fun b_next!4853 () Bool)

(assert (=> b!143023 (= b_free!4853 (not b_next!4853))))

(declare-fun tp!75423 () Bool)

(declare-fun b_and!7493 () Bool)

(assert (=> b!143023 (= tp!75423 b_and!7493)))

(declare-fun b_free!4855 () Bool)

(declare-fun b_next!4855 () Bool)

(assert (=> b!143023 (= b_free!4855 (not b_next!4855))))

(declare-fun t!23846 () Bool)

(declare-fun tb!4449 () Bool)

(assert (=> (and b!143023 (= (toChars!889 (transformation!415 (h!7846 (t!23753 (t!23753 rules!1920))))) (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465))))) t!23846) tb!4449))

(declare-fun result!6746 () Bool)

(assert (= result!6746 result!6652))

(assert (=> b!142435 t!23846))

(declare-fun tb!4451 () Bool)

(declare-fun t!23848 () Bool)

(assert (=> (and b!143023 (= (toChars!889 (transformation!415 (h!7846 (t!23753 (t!23753 rules!1920))))) (toChars!889 (transformation!415 (rule!922 separatorToken!170)))) t!23848) tb!4451))

(declare-fun result!6748 () Bool)

(assert (= result!6748 result!6668))

(assert (=> b!142518 t!23848))

(declare-fun t!23850 () Bool)

(declare-fun tb!4453 () Bool)

(assert (=> (and b!143023 (= (toChars!889 (transformation!415 (h!7846 (t!23753 (t!23753 rules!1920))))) (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465)))))) t!23850) tb!4453))

(declare-fun result!6750 () Bool)

(assert (= result!6750 result!6736))

(assert (=> b!142989 t!23850))

(declare-fun tp!75422 () Bool)

(declare-fun b_and!7495 () Bool)

(assert (=> b!143023 (= tp!75422 (and (=> t!23846 result!6746) (=> t!23848 result!6748) (=> t!23850 result!6750) b_and!7495))))

(declare-fun e!84625 () Bool)

(assert (=> b!143023 (= e!84625 (and tp!75423 tp!75422))))

(declare-fun b!143022 () Bool)

(declare-fun e!84623 () Bool)

(declare-fun tp!75421 () Bool)

(assert (=> b!143022 (= e!84623 (and tp!75421 (inv!3214 (tag!593 (h!7846 (t!23753 (t!23753 rules!1920))))) (inv!3218 (transformation!415 (h!7846 (t!23753 (t!23753 rules!1920))))) e!84625))))

(declare-fun b!143021 () Bool)

(declare-fun e!84622 () Bool)

(declare-fun tp!75420 () Bool)

(assert (=> b!143021 (= e!84622 (and e!84623 tp!75420))))

(assert (=> b!142690 (= tp!75279 e!84622)))

(assert (= b!143022 b!143023))

(assert (= b!143021 b!143022))

(assert (= (and b!142690 ((_ is Cons!2449) (t!23753 (t!23753 rules!1920)))) b!143021))

(declare-fun m!125831 () Bool)

(assert (=> b!143022 m!125831))

(declare-fun m!125833 () Bool)

(assert (=> b!143022 m!125833))

(declare-fun b!143027 () Bool)

(declare-fun b_free!4857 () Bool)

(declare-fun b_next!4857 () Bool)

(assert (=> b!143027 (= b_free!4857 (not b_next!4857))))

(declare-fun tp!75424 () Bool)

(declare-fun b_and!7497 () Bool)

(assert (=> b!143027 (= tp!75424 b_and!7497)))

(declare-fun b_free!4859 () Bool)

(declare-fun b_next!4859 () Bool)

(assert (=> b!143027 (= b_free!4859 (not b_next!4859))))

(declare-fun t!23852 () Bool)

(declare-fun tb!4455 () Bool)

(assert (=> (and b!143027 (= (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 (t!23754 tokens!465)))))) (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465))))) t!23852) tb!4455))

(declare-fun result!6752 () Bool)

(assert (= result!6752 result!6652))

(assert (=> b!142435 t!23852))

(declare-fun tb!4457 () Bool)

(declare-fun t!23854 () Bool)

(assert (=> (and b!143027 (= (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 (t!23754 tokens!465)))))) (toChars!889 (transformation!415 (rule!922 separatorToken!170)))) t!23854) tb!4457))

(declare-fun result!6754 () Bool)

(assert (= result!6754 result!6668))

(assert (=> b!142518 t!23854))

(declare-fun t!23856 () Bool)

(declare-fun tb!4459 () Bool)

(assert (=> (and b!143027 (= (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 (t!23754 tokens!465)))))) (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465)))))) t!23856) tb!4459))

(declare-fun result!6756 () Bool)

(assert (= result!6756 result!6736))

(assert (=> b!142989 t!23856))

(declare-fun tp!75426 () Bool)

(declare-fun b_and!7499 () Bool)

(assert (=> b!143027 (= tp!75426 (and (=> t!23852 result!6752) (=> t!23854 result!6754) (=> t!23856 result!6756) b_and!7499))))

(declare-fun e!84630 () Bool)

(declare-fun tp!75427 () Bool)

(declare-fun b!143025 () Bool)

(declare-fun e!84628 () Bool)

(assert (=> b!143025 (= e!84628 (and (inv!21 (value!16143 (h!7847 (t!23754 (t!23754 tokens!465))))) e!84630 tp!75427))))

(declare-fun e!84626 () Bool)

(assert (=> b!143027 (= e!84626 (and tp!75424 tp!75426))))

(declare-fun b!143024 () Bool)

(declare-fun tp!75425 () Bool)

(declare-fun e!84629 () Bool)

(assert (=> b!143024 (= e!84629 (and (inv!3217 (h!7847 (t!23754 (t!23754 tokens!465)))) e!84628 tp!75425))))

(assert (=> b!142677 (= tp!75266 e!84629)))

(declare-fun tp!75428 () Bool)

(declare-fun b!143026 () Bool)

(assert (=> b!143026 (= e!84630 (and tp!75428 (inv!3214 (tag!593 (rule!922 (h!7847 (t!23754 (t!23754 tokens!465)))))) (inv!3218 (transformation!415 (rule!922 (h!7847 (t!23754 (t!23754 tokens!465)))))) e!84626))))

(assert (= b!143026 b!143027))

(assert (= b!143025 b!143026))

(assert (= b!143024 b!143025))

(assert (= (and b!142677 ((_ is Cons!2450) (t!23754 (t!23754 tokens!465)))) b!143024))

(declare-fun m!125835 () Bool)

(assert (=> b!143025 m!125835))

(declare-fun m!125837 () Bool)

(assert (=> b!143024 m!125837))

(declare-fun m!125839 () Bool)

(assert (=> b!143026 m!125839))

(declare-fun m!125841 () Bool)

(assert (=> b!143026 m!125841))

(declare-fun e!84632 () Bool)

(assert (=> b!142660 (= tp!75249 e!84632)))

(declare-fun b!143029 () Bool)

(declare-fun tp!75433 () Bool)

(declare-fun tp!75431 () Bool)

(assert (=> b!143029 (= e!84632 (and tp!75433 tp!75431))))

(declare-fun b!143028 () Bool)

(assert (=> b!143028 (= e!84632 tp_is_empty!1583)))

(declare-fun b!143030 () Bool)

(declare-fun tp!75429 () Bool)

(assert (=> b!143030 (= e!84632 tp!75429)))

(declare-fun b!143031 () Bool)

(declare-fun tp!75430 () Bool)

(declare-fun tp!75432 () Bool)

(assert (=> b!143031 (= e!84632 (and tp!75430 tp!75432))))

(assert (= (and b!142660 ((_ is ElementMatch!639) (regOne!1790 (regex!415 (h!7846 rules!1920))))) b!143028))

(assert (= (and b!142660 ((_ is Concat!1077) (regOne!1790 (regex!415 (h!7846 rules!1920))))) b!143029))

(assert (= (and b!142660 ((_ is Star!639) (regOne!1790 (regex!415 (h!7846 rules!1920))))) b!143030))

(assert (= (and b!142660 ((_ is Union!639) (regOne!1790 (regex!415 (h!7846 rules!1920))))) b!143031))

(declare-fun e!84633 () Bool)

(assert (=> b!142660 (= tp!75247 e!84633)))

(declare-fun b!143033 () Bool)

(declare-fun tp!75438 () Bool)

(declare-fun tp!75436 () Bool)

(assert (=> b!143033 (= e!84633 (and tp!75438 tp!75436))))

(declare-fun b!143032 () Bool)

(assert (=> b!143032 (= e!84633 tp_is_empty!1583)))

(declare-fun b!143034 () Bool)

(declare-fun tp!75434 () Bool)

(assert (=> b!143034 (= e!84633 tp!75434)))

(declare-fun b!143035 () Bool)

(declare-fun tp!75435 () Bool)

(declare-fun tp!75437 () Bool)

(assert (=> b!143035 (= e!84633 (and tp!75435 tp!75437))))

(assert (= (and b!142660 ((_ is ElementMatch!639) (regTwo!1790 (regex!415 (h!7846 rules!1920))))) b!143032))

(assert (= (and b!142660 ((_ is Concat!1077) (regTwo!1790 (regex!415 (h!7846 rules!1920))))) b!143033))

(assert (= (and b!142660 ((_ is Star!639) (regTwo!1790 (regex!415 (h!7846 rules!1920))))) b!143034))

(assert (= (and b!142660 ((_ is Union!639) (regTwo!1790 (regex!415 (h!7846 rules!1920))))) b!143035))

(declare-fun b!143038 () Bool)

(declare-fun e!84636 () Bool)

(assert (=> b!143038 (= e!84636 true)))

(declare-fun b!143037 () Bool)

(declare-fun e!84635 () Bool)

(assert (=> b!143037 (= e!84635 e!84636)))

(declare-fun b!143036 () Bool)

(declare-fun e!84634 () Bool)

(assert (=> b!143036 (= e!84634 e!84635)))

(assert (=> b!142625 e!84634))

(assert (= b!143037 b!143038))

(assert (= b!143036 b!143037))

(assert (= (and b!142625 ((_ is Cons!2449) (t!23753 rules!1920))) b!143036))

(assert (=> b!143038 (< (dynLambda!823 order!1177 (toValue!1030 (transformation!415 (h!7846 (t!23753 rules!1920))))) (dynLambda!824 order!1179 lambda!3386))))

(assert (=> b!143038 (< (dynLambda!825 order!1181 (toChars!889 (transformation!415 (h!7846 (t!23753 rules!1920))))) (dynLambda!824 order!1179 lambda!3386))))

(declare-fun e!84637 () Bool)

(assert (=> b!142665 (= tp!75250 e!84637)))

(declare-fun b!143040 () Bool)

(declare-fun tp!75443 () Bool)

(declare-fun tp!75441 () Bool)

(assert (=> b!143040 (= e!84637 (and tp!75443 tp!75441))))

(declare-fun b!143039 () Bool)

(assert (=> b!143039 (= e!84637 tp_is_empty!1583)))

(declare-fun b!143041 () Bool)

(declare-fun tp!75439 () Bool)

(assert (=> b!143041 (= e!84637 tp!75439)))

(declare-fun b!143042 () Bool)

(declare-fun tp!75440 () Bool)

(declare-fun tp!75442 () Bool)

(assert (=> b!143042 (= e!84637 (and tp!75440 tp!75442))))

(assert (= (and b!142665 ((_ is ElementMatch!639) (reg!968 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143039))

(assert (= (and b!142665 ((_ is Concat!1077) (reg!968 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143040))

(assert (= (and b!142665 ((_ is Star!639) (reg!968 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143041))

(assert (= (and b!142665 ((_ is Union!639) (reg!968 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143042))

(declare-fun e!84638 () Bool)

(assert (=> b!142664 (= tp!75254 e!84638)))

(declare-fun b!143044 () Bool)

(declare-fun tp!75448 () Bool)

(declare-fun tp!75446 () Bool)

(assert (=> b!143044 (= e!84638 (and tp!75448 tp!75446))))

(declare-fun b!143043 () Bool)

(assert (=> b!143043 (= e!84638 tp_is_empty!1583)))

(declare-fun b!143045 () Bool)

(declare-fun tp!75444 () Bool)

(assert (=> b!143045 (= e!84638 tp!75444)))

(declare-fun b!143046 () Bool)

(declare-fun tp!75445 () Bool)

(declare-fun tp!75447 () Bool)

(assert (=> b!143046 (= e!84638 (and tp!75445 tp!75447))))

(assert (= (and b!142664 ((_ is ElementMatch!639) (regOne!1790 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143043))

(assert (= (and b!142664 ((_ is Concat!1077) (regOne!1790 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143044))

(assert (= (and b!142664 ((_ is Star!639) (regOne!1790 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143045))

(assert (= (and b!142664 ((_ is Union!639) (regOne!1790 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143046))

(declare-fun e!84639 () Bool)

(assert (=> b!142664 (= tp!75252 e!84639)))

(declare-fun b!143048 () Bool)

(declare-fun tp!75453 () Bool)

(declare-fun tp!75451 () Bool)

(assert (=> b!143048 (= e!84639 (and tp!75453 tp!75451))))

(declare-fun b!143047 () Bool)

(assert (=> b!143047 (= e!84639 tp_is_empty!1583)))

(declare-fun b!143049 () Bool)

(declare-fun tp!75449 () Bool)

(assert (=> b!143049 (= e!84639 tp!75449)))

(declare-fun b!143050 () Bool)

(declare-fun tp!75450 () Bool)

(declare-fun tp!75452 () Bool)

(assert (=> b!143050 (= e!84639 (and tp!75450 tp!75452))))

(assert (= (and b!142664 ((_ is ElementMatch!639) (regTwo!1790 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143047))

(assert (= (and b!142664 ((_ is Concat!1077) (regTwo!1790 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143048))

(assert (= (and b!142664 ((_ is Star!639) (regTwo!1790 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143049))

(assert (= (and b!142664 ((_ is Union!639) (regTwo!1790 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143050))

(declare-fun e!84640 () Bool)

(assert (=> b!142679 (= tp!75269 e!84640)))

(declare-fun b!143052 () Bool)

(declare-fun tp!75458 () Bool)

(declare-fun tp!75456 () Bool)

(assert (=> b!143052 (= e!84640 (and tp!75458 tp!75456))))

(declare-fun b!143051 () Bool)

(assert (=> b!143051 (= e!84640 tp_is_empty!1583)))

(declare-fun b!143053 () Bool)

(declare-fun tp!75454 () Bool)

(assert (=> b!143053 (= e!84640 tp!75454)))

(declare-fun b!143054 () Bool)

(declare-fun tp!75455 () Bool)

(declare-fun tp!75457 () Bool)

(assert (=> b!143054 (= e!84640 (and tp!75455 tp!75457))))

(assert (= (and b!142679 ((_ is ElementMatch!639) (regex!415 (rule!922 (h!7847 (t!23754 tokens!465)))))) b!143051))

(assert (= (and b!142679 ((_ is Concat!1077) (regex!415 (rule!922 (h!7847 (t!23754 tokens!465)))))) b!143052))

(assert (= (and b!142679 ((_ is Star!639) (regex!415 (rule!922 (h!7847 (t!23754 tokens!465)))))) b!143053))

(assert (= (and b!142679 ((_ is Union!639) (regex!415 (rule!922 (h!7847 (t!23754 tokens!465)))))) b!143054))

(declare-fun b!143055 () Bool)

(declare-fun e!84641 () Bool)

(declare-fun tp!75459 () Bool)

(assert (=> b!143055 (= e!84641 (and tp_is_empty!1583 tp!75459))))

(assert (=> b!142648 (= tp!75234 e!84641)))

(assert (= (and b!142648 ((_ is Cons!2448) (t!23752 (originalCharacters!458 (h!7847 tokens!465))))) b!143055))

(declare-fun e!84642 () Bool)

(assert (=> b!142694 (= tp!75287 e!84642)))

(declare-fun b!143057 () Bool)

(declare-fun tp!75464 () Bool)

(declare-fun tp!75462 () Bool)

(assert (=> b!143057 (= e!84642 (and tp!75464 tp!75462))))

(declare-fun b!143056 () Bool)

(assert (=> b!143056 (= e!84642 tp_is_empty!1583)))

(declare-fun b!143058 () Bool)

(declare-fun tp!75460 () Bool)

(assert (=> b!143058 (= e!84642 tp!75460)))

(declare-fun b!143059 () Bool)

(declare-fun tp!75461 () Bool)

(declare-fun tp!75463 () Bool)

(assert (=> b!143059 (= e!84642 (and tp!75461 tp!75463))))

(assert (= (and b!142694 ((_ is ElementMatch!639) (regOne!1790 (regex!415 (rule!922 separatorToken!170))))) b!143056))

(assert (= (and b!142694 ((_ is Concat!1077) (regOne!1790 (regex!415 (rule!922 separatorToken!170))))) b!143057))

(assert (= (and b!142694 ((_ is Star!639) (regOne!1790 (regex!415 (rule!922 separatorToken!170))))) b!143058))

(assert (= (and b!142694 ((_ is Union!639) (regOne!1790 (regex!415 (rule!922 separatorToken!170))))) b!143059))

(declare-fun e!84643 () Bool)

(assert (=> b!142694 (= tp!75285 e!84643)))

(declare-fun b!143061 () Bool)

(declare-fun tp!75469 () Bool)

(declare-fun tp!75467 () Bool)

(assert (=> b!143061 (= e!84643 (and tp!75469 tp!75467))))

(declare-fun b!143060 () Bool)

(assert (=> b!143060 (= e!84643 tp_is_empty!1583)))

(declare-fun b!143062 () Bool)

(declare-fun tp!75465 () Bool)

(assert (=> b!143062 (= e!84643 tp!75465)))

(declare-fun b!143063 () Bool)

(declare-fun tp!75466 () Bool)

(declare-fun tp!75468 () Bool)

(assert (=> b!143063 (= e!84643 (and tp!75466 tp!75468))))

(assert (= (and b!142694 ((_ is ElementMatch!639) (regTwo!1790 (regex!415 (rule!922 separatorToken!170))))) b!143060))

(assert (= (and b!142694 ((_ is Concat!1077) (regTwo!1790 (regex!415 (rule!922 separatorToken!170))))) b!143061))

(assert (= (and b!142694 ((_ is Star!639) (regTwo!1790 (regex!415 (rule!922 separatorToken!170))))) b!143062))

(assert (= (and b!142694 ((_ is Union!639) (regTwo!1790 (regex!415 (rule!922 separatorToken!170))))) b!143063))

(declare-fun b!143064 () Bool)

(declare-fun e!84644 () Bool)

(declare-fun tp!75470 () Bool)

(assert (=> b!143064 (= e!84644 (and tp_is_empty!1583 tp!75470))))

(assert (=> b!142681 (= tp!75270 e!84644)))

(assert (= (and b!142681 ((_ is Cons!2448) (t!23752 (originalCharacters!458 separatorToken!170)))) b!143064))

(declare-fun e!84645 () Bool)

(assert (=> b!142662 (= tp!75246 e!84645)))

(declare-fun b!143066 () Bool)

(declare-fun tp!75475 () Bool)

(declare-fun tp!75473 () Bool)

(assert (=> b!143066 (= e!84645 (and tp!75475 tp!75473))))

(declare-fun b!143065 () Bool)

(assert (=> b!143065 (= e!84645 tp_is_empty!1583)))

(declare-fun b!143067 () Bool)

(declare-fun tp!75471 () Bool)

(assert (=> b!143067 (= e!84645 tp!75471)))

(declare-fun b!143068 () Bool)

(declare-fun tp!75472 () Bool)

(declare-fun tp!75474 () Bool)

(assert (=> b!143068 (= e!84645 (and tp!75472 tp!75474))))

(assert (= (and b!142662 ((_ is ElementMatch!639) (regOne!1791 (regex!415 (h!7846 rules!1920))))) b!143065))

(assert (= (and b!142662 ((_ is Concat!1077) (regOne!1791 (regex!415 (h!7846 rules!1920))))) b!143066))

(assert (= (and b!142662 ((_ is Star!639) (regOne!1791 (regex!415 (h!7846 rules!1920))))) b!143067))

(assert (= (and b!142662 ((_ is Union!639) (regOne!1791 (regex!415 (h!7846 rules!1920))))) b!143068))

(declare-fun e!84646 () Bool)

(assert (=> b!142662 (= tp!75248 e!84646)))

(declare-fun b!143070 () Bool)

(declare-fun tp!75480 () Bool)

(declare-fun tp!75478 () Bool)

(assert (=> b!143070 (= e!84646 (and tp!75480 tp!75478))))

(declare-fun b!143069 () Bool)

(assert (=> b!143069 (= e!84646 tp_is_empty!1583)))

(declare-fun b!143071 () Bool)

(declare-fun tp!75476 () Bool)

(assert (=> b!143071 (= e!84646 tp!75476)))

(declare-fun b!143072 () Bool)

(declare-fun tp!75477 () Bool)

(declare-fun tp!75479 () Bool)

(assert (=> b!143072 (= e!84646 (and tp!75477 tp!75479))))

(assert (= (and b!142662 ((_ is ElementMatch!639) (regTwo!1791 (regex!415 (h!7846 rules!1920))))) b!143069))

(assert (= (and b!142662 ((_ is Concat!1077) (regTwo!1791 (regex!415 (h!7846 rules!1920))))) b!143070))

(assert (= (and b!142662 ((_ is Star!639) (regTwo!1791 (regex!415 (h!7846 rules!1920))))) b!143071))

(assert (= (and b!142662 ((_ is Union!639) (regTwo!1791 (regex!415 (h!7846 rules!1920))))) b!143072))

(declare-fun e!84647 () Bool)

(assert (=> b!142666 (= tp!75251 e!84647)))

(declare-fun b!143074 () Bool)

(declare-fun tp!75485 () Bool)

(declare-fun tp!75483 () Bool)

(assert (=> b!143074 (= e!84647 (and tp!75485 tp!75483))))

(declare-fun b!143073 () Bool)

(assert (=> b!143073 (= e!84647 tp_is_empty!1583)))

(declare-fun b!143075 () Bool)

(declare-fun tp!75481 () Bool)

(assert (=> b!143075 (= e!84647 tp!75481)))

(declare-fun b!143076 () Bool)

(declare-fun tp!75482 () Bool)

(declare-fun tp!75484 () Bool)

(assert (=> b!143076 (= e!84647 (and tp!75482 tp!75484))))

(assert (= (and b!142666 ((_ is ElementMatch!639) (regOne!1791 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143073))

(assert (= (and b!142666 ((_ is Concat!1077) (regOne!1791 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143074))

(assert (= (and b!142666 ((_ is Star!639) (regOne!1791 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143075))

(assert (= (and b!142666 ((_ is Union!639) (regOne!1791 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143076))

(declare-fun e!84648 () Bool)

(assert (=> b!142666 (= tp!75253 e!84648)))

(declare-fun b!143078 () Bool)

(declare-fun tp!75490 () Bool)

(declare-fun tp!75488 () Bool)

(assert (=> b!143078 (= e!84648 (and tp!75490 tp!75488))))

(declare-fun b!143077 () Bool)

(assert (=> b!143077 (= e!84648 tp_is_empty!1583)))

(declare-fun b!143079 () Bool)

(declare-fun tp!75486 () Bool)

(assert (=> b!143079 (= e!84648 tp!75486)))

(declare-fun b!143080 () Bool)

(declare-fun tp!75487 () Bool)

(declare-fun tp!75489 () Bool)

(assert (=> b!143080 (= e!84648 (and tp!75487 tp!75489))))

(assert (= (and b!142666 ((_ is ElementMatch!639) (regTwo!1791 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143077))

(assert (= (and b!142666 ((_ is Concat!1077) (regTwo!1791 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143078))

(assert (= (and b!142666 ((_ is Star!639) (regTwo!1791 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143079))

(assert (= (and b!142666 ((_ is Union!639) (regTwo!1791 (regex!415 (rule!922 (h!7847 tokens!465)))))) b!143080))

(declare-fun b!143089 () Bool)

(declare-fun e!84653 () Bool)

(declare-fun tp!75497 () Bool)

(declare-fun tp!75499 () Bool)

(assert (=> b!143089 (= e!84653 (and (inv!3221 (left!1850 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170))))) tp!75499 (inv!3221 (right!2180 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170))))) tp!75497))))

(declare-fun b!143091 () Bool)

(declare-fun e!84654 () Bool)

(declare-fun tp!75498 () Bool)

(assert (=> b!143091 (= e!84654 tp!75498)))

(declare-fun b!143090 () Bool)

(declare-fun inv!3228 (IArray!1305) Bool)

(assert (=> b!143090 (= e!84653 (and (inv!3228 (xs!3247 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170))))) e!84654))))

(assert (=> b!142520 (= tp!75174 (and (inv!3221 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170)))) e!84653))))

(assert (= (and b!142520 ((_ is Node!652) (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170))))) b!143089))

(assert (= b!143090 b!143091))

(assert (= (and b!142520 ((_ is Leaf!1199) (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (value!16143 separatorToken!170))))) b!143090))

(declare-fun m!125843 () Bool)

(assert (=> b!143089 m!125843))

(declare-fun m!125845 () Bool)

(assert (=> b!143089 m!125845))

(declare-fun m!125847 () Bool)

(assert (=> b!143090 m!125847))

(assert (=> b!142520 m!125309))

(declare-fun tp!75500 () Bool)

(declare-fun b!143092 () Bool)

(declare-fun tp!75502 () Bool)

(declare-fun e!84655 () Bool)

(assert (=> b!143092 (= e!84655 (and (inv!3221 (left!1850 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465)))))) tp!75502 (inv!3221 (right!2180 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465)))))) tp!75500))))

(declare-fun b!143094 () Bool)

(declare-fun e!84656 () Bool)

(declare-fun tp!75501 () Bool)

(assert (=> b!143094 (= e!84656 tp!75501)))

(declare-fun b!143093 () Bool)

(assert (=> b!143093 (= e!84655 (and (inv!3228 (xs!3247 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465)))))) e!84656))))

(assert (=> b!142441 (= tp!75170 (and (inv!3221 (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465))))) e!84655))))

(assert (= (and b!142441 ((_ is Node!652) (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465)))))) b!143092))

(assert (= b!143093 b!143094))

(assert (= (and b!142441 ((_ is Leaf!1199) (c!29437 (dynLambda!822 (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (value!16143 (h!7847 tokens!465)))))) b!143093))

(declare-fun m!125849 () Bool)

(assert (=> b!143092 m!125849))

(declare-fun m!125851 () Bool)

(assert (=> b!143092 m!125851))

(declare-fun m!125853 () Bool)

(assert (=> b!143093 m!125853))

(assert (=> b!142441 m!125227))

(declare-fun e!84657 () Bool)

(assert (=> b!142661 (= tp!75245 e!84657)))

(declare-fun b!143096 () Bool)

(declare-fun tp!75507 () Bool)

(declare-fun tp!75505 () Bool)

(assert (=> b!143096 (= e!84657 (and tp!75507 tp!75505))))

(declare-fun b!143095 () Bool)

(assert (=> b!143095 (= e!84657 tp_is_empty!1583)))

(declare-fun b!143097 () Bool)

(declare-fun tp!75503 () Bool)

(assert (=> b!143097 (= e!84657 tp!75503)))

(declare-fun b!143098 () Bool)

(declare-fun tp!75504 () Bool)

(declare-fun tp!75506 () Bool)

(assert (=> b!143098 (= e!84657 (and tp!75504 tp!75506))))

(assert (= (and b!142661 ((_ is ElementMatch!639) (reg!968 (regex!415 (h!7846 rules!1920))))) b!143095))

(assert (= (and b!142661 ((_ is Concat!1077) (reg!968 (regex!415 (h!7846 rules!1920))))) b!143096))

(assert (= (and b!142661 ((_ is Star!639) (reg!968 (regex!415 (h!7846 rules!1920))))) b!143097))

(assert (= (and b!142661 ((_ is Union!639) (reg!968 (regex!415 (h!7846 rules!1920))))) b!143098))

(declare-fun b_lambda!2295 () Bool)

(assert (= b_lambda!2293 (or d!33835 b_lambda!2295)))

(declare-fun bs!12976 () Bool)

(declare-fun d!34093 () Bool)

(assert (= bs!12976 (and d!34093 d!33835)))

(assert (=> bs!12976 (= (dynLambda!821 lambda!3380 (h!7847 (list!849 (seqFromList!228 tokens!465)))) (rulesProduceIndividualToken!50 thiss!17480 rules!1920 (h!7847 (list!849 (seqFromList!228 tokens!465)))))))

(assert (=> bs!12976 m!125649))

(assert (=> b!142993 d!34093))

(declare-fun b_lambda!2297 () Bool)

(assert (= b_lambda!2289 (or d!33859 b_lambda!2297)))

(declare-fun bs!12977 () Bool)

(declare-fun d!34095 () Bool)

(assert (= bs!12977 (and d!34095 d!33859)))

(assert (=> bs!12977 (= (dynLambda!821 lambda!3386 (h!7847 tokens!465)) (rulesProduceIndividualToken!50 thiss!17480 rules!1920 (h!7847 tokens!465)))))

(assert (=> bs!12977 m!125377))

(assert (=> b!142987 d!34095))

(declare-fun b_lambda!2299 () Bool)

(assert (= b_lambda!2277 (or b!142409 b_lambda!2299)))

(declare-fun bs!12978 () Bool)

(declare-fun d!34097 () Bool)

(assert (= bs!12978 (and d!34097 b!142409)))

(assert (=> bs!12978 (= (dynLambda!821 lambda!3370 (h!7847 (t!23754 tokens!465))) (not (isSeparator!415 (rule!922 (h!7847 (t!23754 tokens!465))))))))

(assert (=> b!142768 d!34097))

(declare-fun b_lambda!2301 () Bool)

(assert (= b_lambda!2291 (or (and b!142692 b_free!4843 (= (toChars!889 (transformation!415 (h!7846 (t!23753 rules!1920)))) (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))))) (and b!143027 b_free!4859 (= (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 (t!23754 tokens!465)))))) (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))))) (and b!143023 b_free!4855 (= (toChars!889 (transformation!415 (h!7846 (t!23753 (t!23753 rules!1920))))) (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))))) (and b!142401 b_free!4827 (= (toChars!889 (transformation!415 (h!7846 rules!1920))) (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))))) (and b!142400 b_free!4819 (= (toChars!889 (transformation!415 (rule!922 separatorToken!170))) (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))))) (and b!142414 b_free!4823 (= (toChars!889 (transformation!415 (rule!922 (h!7847 tokens!465)))) (toChars!889 (transformation!415 (rule!922 (h!7847 (t!23754 tokens!465))))))) (and b!142680 b_free!4839) b_lambda!2301)))

(check-sat (not b!143071) b_and!7457 (not b!143029) (not b!143014) (not b_next!4859) (not b!143016) (not b!142776) (not b!142997) (not b!143072) (not b!142816) b_and!7487 (not d!33999) (not b!143062) b_and!7493 (not b!143068) (not b!143004) (not d!34053) (not b!143059) (not b!142910) (not b!143041) (not b!142985) (not d!34083) (not d!34017) (not b!142989) (not b!143078) (not b!142747) (not b!142802) (not b!142983) (not b!143048) (not b!142746) (not b!143025) (not b!143052) (not d!33979) (not b!142771) (not d!33941) (not b!143018) b_and!7461 (not d!33997) (not b!143054) (not b_lambda!2269) (not b!143057) (not b!142749) (not b_next!4837) (not d!33931) (not b!143009) (not d!34049) (not b_next!4839) (not b!142815) (not b!143020) (not b!143000) b_and!7497 (not d!34037) (not b!142775) (not b!143002) (not b!143013) (not d!34079) (not d!33971) (not b!143049) (not b!143010) (not d!34073) (not b_next!4843) tp_is_empty!1583 (not b!143094) (not b!142814) (not b!143022) (not b!142813) (not b!143098) b_and!7483 (not d!34027) b_and!7491 (not b!142769) (not b_next!4857) (not b!142850) (not b!143015) (not b!143030) (not b!143061) (not b!143011) (not b!142916) (not b_lambda!2297) (not b!143003) (not b!142908) (not b!142778) (not b!142988) (not d!34069) (not b_next!4823) (not d!34063) (not b!143058) (not d!34065) (not d!33911) (not b!143080) b_and!7413 b_and!7485 (not b!142520) (not b!143079) (not d!34091) (not b!142770) (not b!143034) (not bs!12977) (not b!143024) (not b!143074) (not b!143005) (not b!143090) (not b!142772) (not bm!5578) (not b!143093) b_and!7489 (not b!143064) (not b!142992) b_and!7495 (not bs!12976) (not d!33953) (not d!33975) (not b!143046) (not b_next!4841) (not b_lambda!2299) (not b!143019) (not b!142818) (not b!142767) (not b!143075) (not b!142994) (not b!142777) (not b!142991) (not tb!4439) (not d!33995) (not b_lambda!2267) (not b!143026) (not b!143044) (not b_lambda!2265) (not d!34071) b_and!7421 (not b!143042) (not b_next!4817) (not b!143063) (not b!143097) (not b!143066) (not b!143067) (not b_next!4825) (not b!143040) (not b_next!4855) (not b_next!4821) (not b!142779) (not b!142995) (not b!142984) (not b!143092) (not b!142817) (not d!33977) (not b!143036) (not d!33935) (not b!143055) (not b!143096) (not d!34051) (not d!34031) (not d!33905) (not b!143053) (not b!143033) (not d!34067) (not b_next!4819) (not b!142990) (not d!33955) (not b!143050) (not d!34029) (not b!143089) (not b_next!4827) (not d!34077) (not b_lambda!2295) (not b!143045) (not b!143035) (not b!142441) (not d!34087) (not d!33939) (not b!143021) (not b!143091) (not b!142745) (not b!143076) (not b_next!4853) (not b_lambda!2301) (not b!143031) b_and!7417 (not b!143070) (not d!33991) (not b!142794) b_and!7499)
(check-sat b_and!7461 (not b_next!4837) (not b_next!4839) b_and!7497 (not b_next!4843) (not b_next!4857) (not b_next!4823) b_and!7489 (not b_next!4821) b_and!7457 (not b_next!4859) b_and!7493 b_and!7487 b_and!7483 b_and!7491 b_and!7413 b_and!7485 b_and!7495 (not b_next!4841) b_and!7421 (not b_next!4817) (not b_next!4855) (not b_next!4825) (not b_next!4827) (not b_next!4819) (not b_next!4853) b_and!7417 b_and!7499)
