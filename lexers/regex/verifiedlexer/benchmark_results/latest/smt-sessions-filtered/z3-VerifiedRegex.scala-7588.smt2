; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!400838 () Bool)

(assert start!400838)

(declare-fun b!4197208 () Bool)

(declare-fun b_free!122319 () Bool)

(declare-fun b_next!123023 () Bool)

(assert (=> b!4197208 (= b_free!122319 (not b_next!123023))))

(declare-fun tp!1282171 () Bool)

(declare-fun b_and!329229 () Bool)

(assert (=> b!4197208 (= tp!1282171 b_and!329229)))

(declare-fun b_free!122321 () Bool)

(declare-fun b_next!123025 () Bool)

(assert (=> b!4197208 (= b_free!122321 (not b_next!123025))))

(declare-fun tp!1282174 () Bool)

(declare-fun b_and!329231 () Bool)

(assert (=> b!4197208 (= tp!1282174 b_and!329231)))

(declare-fun b!4197204 () Bool)

(declare-fun b_free!122323 () Bool)

(declare-fun b_next!123027 () Bool)

(assert (=> b!4197204 (= b_free!122323 (not b_next!123027))))

(declare-fun tp!1282169 () Bool)

(declare-fun b_and!329233 () Bool)

(assert (=> b!4197204 (= tp!1282169 b_and!329233)))

(declare-fun b_free!122325 () Bool)

(declare-fun b_next!123029 () Bool)

(assert (=> b!4197204 (= b_free!122325 (not b_next!123029))))

(declare-fun tp!1282175 () Bool)

(declare-fun b_and!329235 () Bool)

(assert (=> b!4197204 (= tp!1282175 b_and!329235)))

(declare-fun b!4197200 () Bool)

(declare-fun b_free!122327 () Bool)

(declare-fun b_next!123031 () Bool)

(assert (=> b!4197200 (= b_free!122327 (not b_next!123031))))

(declare-fun tp!1282167 () Bool)

(declare-fun b_and!329237 () Bool)

(assert (=> b!4197200 (= tp!1282167 b_and!329237)))

(declare-fun b_free!122329 () Bool)

(declare-fun b_next!123033 () Bool)

(assert (=> b!4197200 (= b_free!122329 (not b_next!123033))))

(declare-fun tp!1282170 () Bool)

(declare-fun b_and!329239 () Bool)

(assert (=> b!4197200 (= tp!1282170 b_and!329239)))

(declare-fun b!4197179 () Bool)

(declare-fun res!1723295 () Bool)

(declare-fun e!2605356 () Bool)

(assert (=> b!4197179 (=> (not res!1723295) (not e!2605356))))

(declare-datatypes ((List!46223 0))(
  ( (Nil!46099) (Cons!46099 (h!51519 (_ BitVec 16)) (t!346582 List!46223)) )
))
(declare-datatypes ((TokenValue!7922 0))(
  ( (FloatLiteralValue!15844 (text!55899 List!46223)) (TokenValueExt!7921 (__x!28065 Int)) (Broken!39610 (value!239728 List!46223)) (Object!8045) (End!7922) (Def!7922) (Underscore!7922) (Match!7922) (Else!7922) (Error!7922) (Case!7922) (If!7922) (Extends!7922) (Abstract!7922) (Class!7922) (Val!7922) (DelimiterValue!15844 (del!7982 List!46223)) (KeywordValue!7928 (value!239729 List!46223)) (CommentValue!15844 (value!239730 List!46223)) (WhitespaceValue!15844 (value!239731 List!46223)) (IndentationValue!7922 (value!239732 List!46223)) (String!53475) (Int32!7922) (Broken!39611 (value!239733 List!46223)) (Boolean!7923) (Unit!65200) (OperatorValue!7925 (op!7982 List!46223)) (IdentifierValue!15844 (value!239734 List!46223)) (IdentifierValue!15845 (value!239735 List!46223)) (WhitespaceValue!15845 (value!239736 List!46223)) (True!15844) (False!15844) (Broken!39612 (value!239737 List!46223)) (Broken!39613 (value!239738 List!46223)) (True!15845) (RightBrace!7922) (RightBracket!7922) (Colon!7922) (Null!7922) (Comma!7922) (LeftBracket!7922) (False!15845) (LeftBrace!7922) (ImaginaryLiteralValue!7922 (text!55900 List!46223)) (StringLiteralValue!23766 (value!239739 List!46223)) (EOFValue!7922 (value!239740 List!46223)) (IdentValue!7922 (value!239741 List!46223)) (DelimiterValue!15845 (value!239742 List!46223)) (DedentValue!7922 (value!239743 List!46223)) (NewLineValue!7922 (value!239744 List!46223)) (IntegerValue!23766 (value!239745 (_ BitVec 32)) (text!55901 List!46223)) (IntegerValue!23767 (value!239746 Int) (text!55902 List!46223)) (Times!7922) (Or!7922) (Equal!7922) (Minus!7922) (Broken!39614 (value!239747 List!46223)) (And!7922) (Div!7922) (LessEqual!7922) (Mod!7922) (Concat!20519) (Not!7922) (Plus!7922) (SpaceValue!7922 (value!239748 List!46223)) (IntegerValue!23768 (value!239749 Int) (text!55903 List!46223)) (StringLiteralValue!23767 (text!55904 List!46223)) (FloatLiteralValue!15845 (text!55905 List!46223)) (BytesLiteralValue!7922 (value!239750 List!46223)) (CommentValue!15845 (value!239751 List!46223)) (StringLiteralValue!23768 (value!239752 List!46223)) (ErrorTokenValue!7922 (msg!7983 List!46223)) )
))
(declare-datatypes ((C!25384 0))(
  ( (C!25385 (val!14854 Int)) )
))
(declare-datatypes ((List!46224 0))(
  ( (Nil!46100) (Cons!46100 (h!51520 C!25384) (t!346583 List!46224)) )
))
(declare-datatypes ((IArray!27811 0))(
  ( (IArray!27812 (innerList!13963 List!46224)) )
))
(declare-datatypes ((Conc!13903 0))(
  ( (Node!13903 (left!34343 Conc!13903) (right!34673 Conc!13903) (csize!28036 Int) (cheight!14114 Int)) (Leaf!21492 (xs!17209 IArray!27811) (csize!28037 Int)) (Empty!13903) )
))
(declare-datatypes ((BalanceConc!27400 0))(
  ( (BalanceConc!27401 (c!715886 Conc!13903)) )
))
(declare-datatypes ((Regex!12597 0))(
  ( (ElementMatch!12597 (c!715887 C!25384)) (Concat!20520 (regOne!25706 Regex!12597) (regTwo!25706 Regex!12597)) (EmptyExpr!12597) (Star!12597 (reg!12926 Regex!12597)) (EmptyLang!12597) (Union!12597 (regOne!25707 Regex!12597) (regTwo!25707 Regex!12597)) )
))
(declare-datatypes ((String!53476 0))(
  ( (String!53477 (value!239753 String)) )
))
(declare-datatypes ((TokenValueInjection!15272 0))(
  ( (TokenValueInjection!15273 (toValue!10392 Int) (toChars!10251 Int)) )
))
(declare-datatypes ((Rule!15184 0))(
  ( (Rule!15185 (regex!7692 Regex!12597) (tag!8556 String!53476) (isSeparator!7692 Bool) (transformation!7692 TokenValueInjection!15272)) )
))
(declare-fun r!4142 () Rule!15184)

(declare-fun p!2959 () List!46224)

(declare-fun matchR!6336 (Regex!12597 List!46224) Bool)

(assert (=> b!4197179 (= res!1723295 (matchR!6336 (regex!7692 r!4142) p!2959))))

(declare-fun b!4197180 () Bool)

(declare-fun res!1723280 () Bool)

(assert (=> b!4197180 (=> (not res!1723280) (not e!2605356))))

(declare-datatypes ((LexerInterface!7285 0))(
  ( (LexerInterfaceExt!7282 (__x!28066 Int)) (Lexer!7283) )
))
(declare-fun thiss!25986 () LexerInterface!7285)

(declare-datatypes ((List!46225 0))(
  ( (Nil!46101) (Cons!46101 (h!51521 Rule!15184) (t!346584 List!46225)) )
))
(declare-fun rules!3843 () List!46225)

(declare-fun rulesInvariant!6498 (LexerInterface!7285 List!46225) Bool)

(assert (=> b!4197180 (= res!1723280 (rulesInvariant!6498 thiss!25986 rules!3843))))

(declare-fun b!4197181 () Bool)

(declare-fun res!1723293 () Bool)

(declare-fun e!2605365 () Bool)

(assert (=> b!4197181 (=> res!1723293 e!2605365)))

(declare-fun input!3342 () List!46224)

(declare-fun lt!1495207 () List!46224)

(declare-fun ++!11764 (List!46224 List!46224) List!46224)

(assert (=> b!4197181 (= res!1723293 (not (= (++!11764 p!2959 lt!1495207) input!3342)))))

(declare-fun b!4197182 () Bool)

(declare-fun e!2605367 () Bool)

(declare-fun e!2605358 () Bool)

(declare-fun rBis!167 () Rule!15184)

(declare-fun tp!1282168 () Bool)

(declare-fun inv!60658 (String!53476) Bool)

(declare-fun inv!60660 (TokenValueInjection!15272) Bool)

(assert (=> b!4197182 (= e!2605358 (and tp!1282168 (inv!60658 (tag!8556 rBis!167)) (inv!60660 (transformation!7692 rBis!167)) e!2605367))))

(declare-fun res!1723296 () Bool)

(assert (=> start!400838 (=> (not res!1723296) (not e!2605356))))

(get-info :version)

(assert (=> start!400838 (= res!1723296 ((_ is Lexer!7283) thiss!25986))))

(assert (=> start!400838 e!2605356))

(assert (=> start!400838 true))

(assert (=> start!400838 e!2605358))

(declare-fun e!2605368 () Bool)

(assert (=> start!400838 e!2605368))

(declare-fun e!2605357 () Bool)

(assert (=> start!400838 e!2605357))

(declare-fun e!2605362 () Bool)

(assert (=> start!400838 e!2605362))

(declare-fun e!2605361 () Bool)

(assert (=> start!400838 e!2605361))

(declare-fun e!2605350 () Bool)

(assert (=> start!400838 e!2605350))

(declare-fun b!4197183 () Bool)

(declare-datatypes ((Unit!65201 0))(
  ( (Unit!65202) )
))
(declare-fun e!2605354 () Unit!65201)

(declare-fun Unit!65203 () Unit!65201)

(assert (=> b!4197183 (= e!2605354 Unit!65203)))

(declare-fun lt!1495210 () Unit!65201)

(declare-fun lt!1495215 () List!46224)

(declare-fun pBis!107 () List!46224)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1013 (List!46224 List!46224 List!46224) Unit!65201)

(assert (=> b!4197183 (= lt!1495210 (lemmaIsPrefixSameLengthThenSameList!1013 pBis!107 lt!1495215 input!3342))))

(assert (=> b!4197183 false))

(declare-fun b!4197184 () Bool)

(declare-fun res!1723284 () Bool)

(assert (=> b!4197184 (=> (not res!1723284) (not e!2605356))))

(declare-fun ruleValid!3410 (LexerInterface!7285 Rule!15184) Bool)

(assert (=> b!4197184 (= res!1723284 (ruleValid!3410 thiss!25986 r!4142))))

(declare-fun b!4197185 () Bool)

(declare-fun e!2605359 () Bool)

(declare-fun tp!1282165 () Bool)

(assert (=> b!4197185 (= e!2605368 (and tp!1282165 (inv!60658 (tag!8556 r!4142)) (inv!60660 (transformation!7692 r!4142)) e!2605359))))

(declare-fun b!4197186 () Bool)

(declare-fun e!2605351 () Bool)

(declare-fun tp!1282164 () Bool)

(assert (=> b!4197186 (= e!2605357 (and e!2605351 tp!1282164))))

(declare-fun b!4197187 () Bool)

(declare-fun e!2605352 () Bool)

(declare-fun e!2605363 () Bool)

(assert (=> b!4197187 (= e!2605352 e!2605363)))

(declare-fun res!1723283 () Bool)

(assert (=> b!4197187 (=> res!1723283 e!2605363)))

(declare-fun lt!1495205 () Int)

(declare-fun lt!1495200 () Int)

(assert (=> b!4197187 (= res!1723283 (<= lt!1495205 lt!1495200))))

(declare-fun size!33887 (List!46224) Int)

(assert (=> b!4197187 (= lt!1495205 (size!33887 pBis!107))))

(declare-fun b!4197188 () Bool)

(declare-fun res!1723287 () Bool)

(assert (=> b!4197188 (=> (not res!1723287) (not e!2605356))))

(declare-fun isPrefix!4549 (List!46224 List!46224) Bool)

(assert (=> b!4197188 (= res!1723287 (isPrefix!4549 pBis!107 input!3342))))

(declare-fun b!4197189 () Bool)

(declare-fun res!1723285 () Bool)

(assert (=> b!4197189 (=> res!1723285 e!2605363)))

(declare-datatypes ((Token!14098 0))(
  ( (Token!14099 (value!239754 TokenValue!7922) (rule!10788 Rule!15184) (size!33888 Int) (originalCharacters!8080 List!46224)) )
))
(declare-datatypes ((tuple2!43890 0))(
  ( (tuple2!43891 (_1!25079 Token!14098) (_2!25079 List!46224)) )
))
(declare-datatypes ((Option!9886 0))(
  ( (None!9885) (Some!9885 (v!40729 tuple2!43890)) )
))
(declare-fun lt!1495201 () Option!9886)

(declare-fun maxPrefix!4333 (LexerInterface!7285 List!46225 List!46224) Option!9886)

(assert (=> b!4197189 (= res!1723285 (not (= (maxPrefix!4333 thiss!25986 rules!3843 input!3342) lt!1495201)))))

(declare-fun b!4197190 () Bool)

(assert (=> b!4197190 (= e!2605356 (not e!2605352))))

(declare-fun res!1723281 () Bool)

(assert (=> b!4197190 (=> res!1723281 e!2605352)))

(declare-fun maxPrefixOneRule!3294 (LexerInterface!7285 Rule!15184 List!46224) Option!9886)

(assert (=> b!4197190 (= res!1723281 (not (= (maxPrefixOneRule!3294 thiss!25986 r!4142 input!3342) lt!1495201)))))

(declare-fun lt!1495203 () TokenValue!7922)

(assert (=> b!4197190 (= lt!1495201 (Some!9885 (tuple2!43891 (Token!14099 lt!1495203 r!4142 lt!1495200 p!2959) lt!1495207)))))

(declare-fun getSuffix!2842 (List!46224 List!46224) List!46224)

(assert (=> b!4197190 (= lt!1495207 (getSuffix!2842 input!3342 p!2959))))

(assert (=> b!4197190 (= lt!1495200 (size!33887 p!2959))))

(declare-fun lt!1495209 () BalanceConc!27400)

(declare-fun apply!10657 (TokenValueInjection!15272 BalanceConc!27400) TokenValue!7922)

(assert (=> b!4197190 (= lt!1495203 (apply!10657 (transformation!7692 r!4142) lt!1495209))))

(assert (=> b!4197190 (isPrefix!4549 input!3342 input!3342)))

(declare-fun lt!1495216 () Unit!65201)

(declare-fun lemmaIsPrefixRefl!2978 (List!46224 List!46224) Unit!65201)

(assert (=> b!4197190 (= lt!1495216 (lemmaIsPrefixRefl!2978 input!3342 input!3342))))

(declare-fun lt!1495204 () Unit!65201)

(declare-fun lemmaSemiInverse!2458 (TokenValueInjection!15272 BalanceConc!27400) Unit!65201)

(assert (=> b!4197190 (= lt!1495204 (lemmaSemiInverse!2458 (transformation!7692 r!4142) lt!1495209))))

(declare-fun seqFromList!5717 (List!46224) BalanceConc!27400)

(assert (=> b!4197190 (= lt!1495209 (seqFromList!5717 p!2959))))

(declare-fun b!4197191 () Bool)

(declare-fun tp_is_empty!22157 () Bool)

(declare-fun tp!1282176 () Bool)

(assert (=> b!4197191 (= e!2605350 (and tp_is_empty!22157 tp!1282176))))

(declare-fun b!4197192 () Bool)

(declare-fun res!1723291 () Bool)

(assert (=> b!4197192 (=> (not res!1723291) (not e!2605356))))

(declare-fun contains!9503 (List!46225 Rule!15184) Bool)

(assert (=> b!4197192 (= res!1723291 (contains!9503 rules!3843 r!4142))))

(declare-fun b!4197193 () Bool)

(declare-fun e!2605366 () Bool)

(assert (=> b!4197193 (= e!2605363 e!2605366)))

(declare-fun res!1723279 () Bool)

(assert (=> b!4197193 (=> res!1723279 e!2605366)))

(declare-fun lt!1495206 () Option!9886)

(declare-fun isEmpty!27302 (Option!9886) Bool)

(assert (=> b!4197193 (= res!1723279 (isEmpty!27302 lt!1495206))))

(assert (=> b!4197193 (= lt!1495206 (maxPrefixOneRule!3294 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1495208 () Unit!65201)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2416 (LexerInterface!7285 Rule!15184 List!46225) Unit!65201)

(assert (=> b!4197193 (= lt!1495208 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2416 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4197193 (<= lt!1495205 (size!33887 input!3342))))

(declare-fun lt!1495213 () Unit!65201)

(declare-fun lemmaIsPrefixThenSmallerEqSize!579 (List!46224 List!46224) Unit!65201)

(assert (=> b!4197193 (= lt!1495213 (lemmaIsPrefixThenSmallerEqSize!579 pBis!107 input!3342))))

(declare-fun b!4197194 () Bool)

(declare-fun res!1723288 () Bool)

(assert (=> b!4197194 (=> res!1723288 e!2605365)))

(assert (=> b!4197194 (= res!1723288 (not (isPrefix!4549 lt!1495215 input!3342)))))

(declare-fun b!4197195 () Bool)

(declare-fun e!2605353 () Bool)

(assert (=> b!4197195 (= e!2605366 e!2605353)))

(declare-fun res!1723292 () Bool)

(assert (=> b!4197195 (=> res!1723292 e!2605353)))

(assert (=> b!4197195 (= res!1723292 (= lt!1495215 pBis!107))))

(declare-fun lt!1495202 () tuple2!43890)

(assert (=> b!4197195 (isPrefix!4549 lt!1495215 (++!11764 lt!1495215 (_2!25079 lt!1495202)))))

(declare-fun lt!1495214 () Unit!65201)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3046 (List!46224 List!46224) Unit!65201)

(assert (=> b!4197195 (= lt!1495214 (lemmaConcatTwoListThenFirstIsPrefix!3046 lt!1495215 (_2!25079 lt!1495202)))))

(declare-fun lt!1495211 () BalanceConc!27400)

(declare-fun list!16666 (BalanceConc!27400) List!46224)

(assert (=> b!4197195 (= lt!1495215 (list!16666 lt!1495211))))

(declare-fun charsOf!5127 (Token!14098) BalanceConc!27400)

(assert (=> b!4197195 (= lt!1495211 (charsOf!5127 (_1!25079 lt!1495202)))))

(declare-fun get!14997 (Option!9886) tuple2!43890)

(assert (=> b!4197195 (= lt!1495202 (get!14997 lt!1495206))))

(declare-fun b!4197196 () Bool)

(assert (=> b!4197196 (= e!2605365 (or (not (= lt!1495206 (Some!9885 (tuple2!43891 (_1!25079 lt!1495202) (_2!25079 lt!1495202))))) (= (rule!10788 (_1!25079 lt!1495202)) rBis!167)))))

(declare-fun b!4197197 () Bool)

(declare-fun res!1723286 () Bool)

(assert (=> b!4197197 (=> (not res!1723286) (not e!2605356))))

(assert (=> b!4197197 (= res!1723286 (contains!9503 rules!3843 rBis!167))))

(declare-fun b!4197198 () Bool)

(declare-fun e!2605364 () Bool)

(assert (=> b!4197198 (= e!2605364 e!2605365)))

(declare-fun res!1723289 () Bool)

(assert (=> b!4197198 (=> res!1723289 e!2605365)))

(declare-fun lt!1495212 () Int)

(assert (=> b!4197198 (= res!1723289 (>= lt!1495205 lt!1495212))))

(declare-fun lt!1495199 () Unit!65201)

(assert (=> b!4197198 (= lt!1495199 e!2605354)))

(declare-fun c!715885 () Bool)

(assert (=> b!4197198 (= c!715885 (= lt!1495205 (size!33887 lt!1495215)))))

(declare-fun b!4197199 () Bool)

(declare-fun tp!1282173 () Bool)

(assert (=> b!4197199 (= e!2605361 (and tp_is_empty!22157 tp!1282173))))

(assert (=> b!4197200 (= e!2605367 (and tp!1282167 tp!1282170))))

(declare-fun b!4197201 () Bool)

(declare-fun res!1723278 () Bool)

(assert (=> b!4197201 (=> (not res!1723278) (not e!2605356))))

(declare-fun isEmpty!27303 (List!46225) Bool)

(assert (=> b!4197201 (= res!1723278 (not (isEmpty!27303 rules!3843)))))

(declare-fun b!4197202 () Bool)

(assert (=> b!4197202 (= e!2605353 e!2605364)))

(declare-fun res!1723294 () Bool)

(assert (=> b!4197202 (=> res!1723294 e!2605364)))

(assert (=> b!4197202 (= res!1723294 (< lt!1495212 lt!1495205))))

(declare-fun size!33889 (BalanceConc!27400) Int)

(assert (=> b!4197202 (= lt!1495212 (size!33889 lt!1495211))))

(declare-fun b!4197203 () Bool)

(declare-fun Unit!65204 () Unit!65201)

(assert (=> b!4197203 (= e!2605354 Unit!65204)))

(assert (=> b!4197204 (= e!2605359 (and tp!1282169 tp!1282175))))

(declare-fun b!4197205 () Bool)

(declare-fun res!1723282 () Bool)

(assert (=> b!4197205 (=> (not res!1723282) (not e!2605356))))

(declare-fun validRegex!5714 (Regex!12597) Bool)

(assert (=> b!4197205 (= res!1723282 (validRegex!5714 (regex!7692 r!4142)))))

(declare-fun b!4197206 () Bool)

(declare-fun tp!1282166 () Bool)

(assert (=> b!4197206 (= e!2605362 (and tp_is_empty!22157 tp!1282166))))

(declare-fun b!4197207 () Bool)

(declare-fun res!1723277 () Bool)

(assert (=> b!4197207 (=> res!1723277 e!2605363)))

(assert (=> b!4197207 (= res!1723277 (not (ruleValid!3410 thiss!25986 rBis!167)))))

(declare-fun e!2605360 () Bool)

(assert (=> b!4197208 (= e!2605360 (and tp!1282171 tp!1282174))))

(declare-fun tp!1282172 () Bool)

(declare-fun b!4197209 () Bool)

(assert (=> b!4197209 (= e!2605351 (and tp!1282172 (inv!60658 (tag!8556 (h!51521 rules!3843))) (inv!60660 (transformation!7692 (h!51521 rules!3843))) e!2605360))))

(declare-fun b!4197210 () Bool)

(declare-fun res!1723290 () Bool)

(assert (=> b!4197210 (=> (not res!1723290) (not e!2605356))))

(assert (=> b!4197210 (= res!1723290 (isPrefix!4549 p!2959 input!3342))))

(assert (= (and start!400838 res!1723296) b!4197210))

(assert (= (and b!4197210 res!1723290) b!4197188))

(assert (= (and b!4197188 res!1723287) b!4197201))

(assert (= (and b!4197201 res!1723278) b!4197180))

(assert (= (and b!4197180 res!1723280) b!4197192))

(assert (= (and b!4197192 res!1723291) b!4197197))

(assert (= (and b!4197197 res!1723286) b!4197205))

(assert (= (and b!4197205 res!1723282) b!4197179))

(assert (= (and b!4197179 res!1723295) b!4197184))

(assert (= (and b!4197184 res!1723284) b!4197190))

(assert (= (and b!4197190 (not res!1723281)) b!4197187))

(assert (= (and b!4197187 (not res!1723283)) b!4197207))

(assert (= (and b!4197207 (not res!1723277)) b!4197189))

(assert (= (and b!4197189 (not res!1723285)) b!4197193))

(assert (= (and b!4197193 (not res!1723279)) b!4197195))

(assert (= (and b!4197195 (not res!1723292)) b!4197202))

(assert (= (and b!4197202 (not res!1723294)) b!4197198))

(assert (= (and b!4197198 c!715885) b!4197183))

(assert (= (and b!4197198 (not c!715885)) b!4197203))

(assert (= (and b!4197198 (not res!1723289)) b!4197181))

(assert (= (and b!4197181 (not res!1723293)) b!4197194))

(assert (= (and b!4197194 (not res!1723288)) b!4197196))

(assert (= b!4197182 b!4197200))

(assert (= start!400838 b!4197182))

(assert (= b!4197185 b!4197204))

(assert (= start!400838 b!4197185))

(assert (= b!4197209 b!4197208))

(assert (= b!4197186 b!4197209))

(assert (= (and start!400838 ((_ is Cons!46101) rules!3843)) b!4197186))

(assert (= (and start!400838 ((_ is Cons!46100) input!3342)) b!4197206))

(assert (= (and start!400838 ((_ is Cons!46100) pBis!107)) b!4197199))

(assert (= (and start!400838 ((_ is Cons!46100) p!2959)) b!4197191))

(declare-fun m!4785991 () Bool)

(assert (=> b!4197189 m!4785991))

(declare-fun m!4785993 () Bool)

(assert (=> b!4197187 m!4785993))

(declare-fun m!4785995 () Bool)

(assert (=> b!4197180 m!4785995))

(declare-fun m!4785997 () Bool)

(assert (=> b!4197190 m!4785997))

(declare-fun m!4785999 () Bool)

(assert (=> b!4197190 m!4785999))

(declare-fun m!4786001 () Bool)

(assert (=> b!4197190 m!4786001))

(declare-fun m!4786003 () Bool)

(assert (=> b!4197190 m!4786003))

(declare-fun m!4786005 () Bool)

(assert (=> b!4197190 m!4786005))

(declare-fun m!4786007 () Bool)

(assert (=> b!4197190 m!4786007))

(declare-fun m!4786009 () Bool)

(assert (=> b!4197190 m!4786009))

(declare-fun m!4786011 () Bool)

(assert (=> b!4197190 m!4786011))

(declare-fun m!4786013 () Bool)

(assert (=> b!4197193 m!4786013))

(declare-fun m!4786015 () Bool)

(assert (=> b!4197193 m!4786015))

(declare-fun m!4786017 () Bool)

(assert (=> b!4197193 m!4786017))

(declare-fun m!4786019 () Bool)

(assert (=> b!4197193 m!4786019))

(declare-fun m!4786021 () Bool)

(assert (=> b!4197193 m!4786021))

(declare-fun m!4786023 () Bool)

(assert (=> b!4197197 m!4786023))

(declare-fun m!4786025 () Bool)

(assert (=> b!4197207 m!4786025))

(declare-fun m!4786027 () Bool)

(assert (=> b!4197182 m!4786027))

(declare-fun m!4786029 () Bool)

(assert (=> b!4197182 m!4786029))

(declare-fun m!4786031 () Bool)

(assert (=> b!4197181 m!4786031))

(declare-fun m!4786033 () Bool)

(assert (=> b!4197185 m!4786033))

(declare-fun m!4786035 () Bool)

(assert (=> b!4197185 m!4786035))

(declare-fun m!4786037 () Bool)

(assert (=> b!4197202 m!4786037))

(declare-fun m!4786039 () Bool)

(assert (=> b!4197195 m!4786039))

(declare-fun m!4786041 () Bool)

(assert (=> b!4197195 m!4786041))

(assert (=> b!4197195 m!4786039))

(declare-fun m!4786043 () Bool)

(assert (=> b!4197195 m!4786043))

(declare-fun m!4786045 () Bool)

(assert (=> b!4197195 m!4786045))

(declare-fun m!4786047 () Bool)

(assert (=> b!4197195 m!4786047))

(declare-fun m!4786049 () Bool)

(assert (=> b!4197195 m!4786049))

(declare-fun m!4786051 () Bool)

(assert (=> b!4197194 m!4786051))

(declare-fun m!4786053 () Bool)

(assert (=> b!4197209 m!4786053))

(declare-fun m!4786055 () Bool)

(assert (=> b!4197209 m!4786055))

(declare-fun m!4786057 () Bool)

(assert (=> b!4197188 m!4786057))

(declare-fun m!4786059 () Bool)

(assert (=> b!4197183 m!4786059))

(declare-fun m!4786061 () Bool)

(assert (=> b!4197205 m!4786061))

(declare-fun m!4786063 () Bool)

(assert (=> b!4197184 m!4786063))

(declare-fun m!4786065 () Bool)

(assert (=> b!4197192 m!4786065))

(declare-fun m!4786067 () Bool)

(assert (=> b!4197179 m!4786067))

(declare-fun m!4786069 () Bool)

(assert (=> b!4197210 m!4786069))

(declare-fun m!4786071 () Bool)

(assert (=> b!4197198 m!4786071))

(declare-fun m!4786073 () Bool)

(assert (=> b!4197201 m!4786073))

(check-sat (not b!4197195) (not b!4197187) (not b!4197210) (not b!4197206) (not b!4197181) (not b!4197202) (not b_next!123031) (not b!4197209) (not b!4197201) b_and!329235 (not b!4197197) (not b!4197191) (not b!4197193) (not b_next!123023) (not b!4197194) (not b!4197198) (not b_next!123025) (not b!4197205) (not b_next!123027) (not b_next!123033) (not b!4197190) (not b!4197179) (not b!4197192) (not b!4197184) (not b!4197188) (not b!4197180) tp_is_empty!22157 b_and!329237 b_and!329239 (not b!4197189) b_and!329233 (not b!4197183) b_and!329231 (not b!4197186) (not b!4197207) (not b_next!123029) b_and!329229 (not b!4197199) (not b!4197182) (not b!4197185))
(check-sat (not b_next!123023) b_and!329233 (not b_next!123031) b_and!329231 b_and!329235 (not b_next!123025) (not b_next!123027) (not b_next!123033) b_and!329237 b_and!329239 (not b_next!123029) b_and!329229)
(get-model)

(declare-fun b!4197220 () Bool)

(declare-fun e!2605374 () List!46224)

(assert (=> b!4197220 (= e!2605374 (Cons!46100 (h!51520 p!2959) (++!11764 (t!346583 p!2959) lt!1495207)))))

(declare-fun b!4197219 () Bool)

(assert (=> b!4197219 (= e!2605374 lt!1495207)))

(declare-fun b!4197221 () Bool)

(declare-fun res!1723308 () Bool)

(declare-fun e!2605373 () Bool)

(assert (=> b!4197221 (=> (not res!1723308) (not e!2605373))))

(declare-fun lt!1495219 () List!46224)

(assert (=> b!4197221 (= res!1723308 (= (size!33887 lt!1495219) (+ (size!33887 p!2959) (size!33887 lt!1495207))))))

(declare-fun d!1237757 () Bool)

(assert (=> d!1237757 e!2605373))

(declare-fun res!1723307 () Bool)

(assert (=> d!1237757 (=> (not res!1723307) (not e!2605373))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7195 (List!46224) (InoxSet C!25384))

(assert (=> d!1237757 (= res!1723307 (= (content!7195 lt!1495219) ((_ map or) (content!7195 p!2959) (content!7195 lt!1495207))))))

(assert (=> d!1237757 (= lt!1495219 e!2605374)))

(declare-fun c!715890 () Bool)

(assert (=> d!1237757 (= c!715890 ((_ is Nil!46100) p!2959))))

(assert (=> d!1237757 (= (++!11764 p!2959 lt!1495207) lt!1495219)))

(declare-fun b!4197222 () Bool)

(assert (=> b!4197222 (= e!2605373 (or (not (= lt!1495207 Nil!46100)) (= lt!1495219 p!2959)))))

(assert (= (and d!1237757 c!715890) b!4197219))

(assert (= (and d!1237757 (not c!715890)) b!4197220))

(assert (= (and d!1237757 res!1723307) b!4197221))

(assert (= (and b!4197221 res!1723308) b!4197222))

(declare-fun m!4786075 () Bool)

(assert (=> b!4197220 m!4786075))

(declare-fun m!4786077 () Bool)

(assert (=> b!4197221 m!4786077))

(assert (=> b!4197221 m!4786007))

(declare-fun m!4786079 () Bool)

(assert (=> b!4197221 m!4786079))

(declare-fun m!4786081 () Bool)

(assert (=> d!1237757 m!4786081))

(declare-fun m!4786083 () Bool)

(assert (=> d!1237757 m!4786083))

(declare-fun m!4786085 () Bool)

(assert (=> d!1237757 m!4786085))

(assert (=> b!4197181 d!1237757))

(declare-fun d!1237759 () Bool)

(declare-fun lt!1495222 () Int)

(assert (=> d!1237759 (= lt!1495222 (size!33887 (list!16666 lt!1495211)))))

(declare-fun size!33890 (Conc!13903) Int)

(assert (=> d!1237759 (= lt!1495222 (size!33890 (c!715886 lt!1495211)))))

(assert (=> d!1237759 (= (size!33889 lt!1495211) lt!1495222)))

(declare-fun bs!596852 () Bool)

(assert (= bs!596852 d!1237759))

(assert (=> bs!596852 m!4786047))

(assert (=> bs!596852 m!4786047))

(declare-fun m!4786087 () Bool)

(assert (=> bs!596852 m!4786087))

(declare-fun m!4786089 () Bool)

(assert (=> bs!596852 m!4786089))

(assert (=> b!4197202 d!1237759))

(declare-fun d!1237761 () Bool)

(declare-fun lt!1495225 () Bool)

(declare-fun content!7196 (List!46225) (InoxSet Rule!15184))

(assert (=> d!1237761 (= lt!1495225 (select (content!7196 rules!3843) r!4142))))

(declare-fun e!2605379 () Bool)

(assert (=> d!1237761 (= lt!1495225 e!2605379)))

(declare-fun res!1723318 () Bool)

(assert (=> d!1237761 (=> (not res!1723318) (not e!2605379))))

(assert (=> d!1237761 (= res!1723318 ((_ is Cons!46101) rules!3843))))

(assert (=> d!1237761 (= (contains!9503 rules!3843 r!4142) lt!1495225)))

(declare-fun b!4197227 () Bool)

(declare-fun e!2605380 () Bool)

(assert (=> b!4197227 (= e!2605379 e!2605380)))

(declare-fun res!1723317 () Bool)

(assert (=> b!4197227 (=> res!1723317 e!2605380)))

(assert (=> b!4197227 (= res!1723317 (= (h!51521 rules!3843) r!4142))))

(declare-fun b!4197228 () Bool)

(assert (=> b!4197228 (= e!2605380 (contains!9503 (t!346584 rules!3843) r!4142))))

(assert (= (and d!1237761 res!1723318) b!4197227))

(assert (= (and b!4197227 (not res!1723317)) b!4197228))

(declare-fun m!4786091 () Bool)

(assert (=> d!1237761 m!4786091))

(declare-fun m!4786093 () Bool)

(assert (=> d!1237761 m!4786093))

(declare-fun m!4786095 () Bool)

(assert (=> b!4197228 m!4786095))

(assert (=> b!4197192 d!1237761))

(declare-fun d!1237763 () Bool)

(assert (=> d!1237763 (= (isEmpty!27303 rules!3843) ((_ is Nil!46101) rules!3843))))

(assert (=> b!4197201 d!1237763))

(declare-fun d!1237765 () Bool)

(declare-fun lt!1495228 () List!46224)

(assert (=> d!1237765 (= (++!11764 p!2959 lt!1495228) input!3342)))

(declare-fun e!2605383 () List!46224)

(assert (=> d!1237765 (= lt!1495228 e!2605383)))

(declare-fun c!715893 () Bool)

(assert (=> d!1237765 (= c!715893 ((_ is Cons!46100) p!2959))))

(assert (=> d!1237765 (>= (size!33887 input!3342) (size!33887 p!2959))))

(assert (=> d!1237765 (= (getSuffix!2842 input!3342 p!2959) lt!1495228)))

(declare-fun b!4197233 () Bool)

(declare-fun tail!6755 (List!46224) List!46224)

(assert (=> b!4197233 (= e!2605383 (getSuffix!2842 (tail!6755 input!3342) (t!346583 p!2959)))))

(declare-fun b!4197234 () Bool)

(assert (=> b!4197234 (= e!2605383 input!3342)))

(assert (= (and d!1237765 c!715893) b!4197233))

(assert (= (and d!1237765 (not c!715893)) b!4197234))

(declare-fun m!4786097 () Bool)

(assert (=> d!1237765 m!4786097))

(assert (=> d!1237765 m!4786017))

(assert (=> d!1237765 m!4786007))

(declare-fun m!4786099 () Bool)

(assert (=> b!4197233 m!4786099))

(assert (=> b!4197233 m!4786099))

(declare-fun m!4786101 () Bool)

(assert (=> b!4197233 m!4786101))

(assert (=> b!4197190 d!1237765))

(declare-fun b!4197300 () Bool)

(declare-fun e!2605428 () Bool)

(assert (=> b!4197300 (= e!2605428 true)))

(declare-fun d!1237769 () Bool)

(assert (=> d!1237769 e!2605428))

(assert (= d!1237769 b!4197300))

(declare-fun order!24437 () Int)

(declare-fun order!24439 () Int)

(declare-fun lambda!129559 () Int)

(declare-fun dynLambda!19874 (Int Int) Int)

(declare-fun dynLambda!19875 (Int Int) Int)

(assert (=> b!4197300 (< (dynLambda!19874 order!24437 (toValue!10392 (transformation!7692 r!4142))) (dynLambda!19875 order!24439 lambda!129559))))

(declare-fun order!24441 () Int)

(declare-fun dynLambda!19876 (Int Int) Int)

(assert (=> b!4197300 (< (dynLambda!19876 order!24441 (toChars!10251 (transformation!7692 r!4142))) (dynLambda!19875 order!24439 lambda!129559))))

(declare-fun dynLambda!19877 (Int TokenValue!7922) BalanceConc!27400)

(declare-fun dynLambda!19878 (Int BalanceConc!27400) TokenValue!7922)

(assert (=> d!1237769 (= (list!16666 (dynLambda!19877 (toChars!10251 (transformation!7692 r!4142)) (dynLambda!19878 (toValue!10392 (transformation!7692 r!4142)) lt!1495209))) (list!16666 lt!1495209))))

(declare-fun lt!1495243 () Unit!65201)

(declare-fun ForallOf!1073 (Int BalanceConc!27400) Unit!65201)

(assert (=> d!1237769 (= lt!1495243 (ForallOf!1073 lambda!129559 lt!1495209))))

(assert (=> d!1237769 (= (lemmaSemiInverse!2458 (transformation!7692 r!4142) lt!1495209) lt!1495243)))

(declare-fun b_lambda!123537 () Bool)

(assert (=> (not b_lambda!123537) (not d!1237769)))

(declare-fun t!346594 () Bool)

(declare-fun tb!251579 () Bool)

(assert (=> (and b!4197208 (= (toChars!10251 (transformation!7692 (h!51521 rules!3843))) (toChars!10251 (transformation!7692 r!4142))) t!346594) tb!251579))

(declare-fun e!2605434 () Bool)

(declare-fun tp!1282182 () Bool)

(declare-fun b!4197307 () Bool)

(declare-fun inv!60661 (Conc!13903) Bool)

(assert (=> b!4197307 (= e!2605434 (and (inv!60661 (c!715886 (dynLambda!19877 (toChars!10251 (transformation!7692 r!4142)) (dynLambda!19878 (toValue!10392 (transformation!7692 r!4142)) lt!1495209)))) tp!1282182))))

(declare-fun result!306630 () Bool)

(declare-fun inv!60662 (BalanceConc!27400) Bool)

(assert (=> tb!251579 (= result!306630 (and (inv!60662 (dynLambda!19877 (toChars!10251 (transformation!7692 r!4142)) (dynLambda!19878 (toValue!10392 (transformation!7692 r!4142)) lt!1495209))) e!2605434))))

(assert (= tb!251579 b!4197307))

(declare-fun m!4786143 () Bool)

(assert (=> b!4197307 m!4786143))

(declare-fun m!4786145 () Bool)

(assert (=> tb!251579 m!4786145))

(assert (=> d!1237769 t!346594))

(declare-fun b_and!329253 () Bool)

(assert (= b_and!329231 (and (=> t!346594 result!306630) b_and!329253)))

(declare-fun t!346600 () Bool)

(declare-fun tb!251585 () Bool)

(assert (=> (and b!4197204 (= (toChars!10251 (transformation!7692 r!4142)) (toChars!10251 (transformation!7692 r!4142))) t!346600) tb!251585))

(declare-fun result!306640 () Bool)

(assert (= result!306640 result!306630))

(assert (=> d!1237769 t!346600))

(declare-fun b_and!329255 () Bool)

(assert (= b_and!329235 (and (=> t!346600 result!306640) b_and!329255)))

(declare-fun tb!251587 () Bool)

(declare-fun t!346602 () Bool)

(assert (=> (and b!4197200 (= (toChars!10251 (transformation!7692 rBis!167)) (toChars!10251 (transformation!7692 r!4142))) t!346602) tb!251587))

(declare-fun result!306642 () Bool)

(assert (= result!306642 result!306630))

(assert (=> d!1237769 t!346602))

(declare-fun b_and!329257 () Bool)

(assert (= b_and!329239 (and (=> t!346602 result!306642) b_and!329257)))

(declare-fun b_lambda!123541 () Bool)

(assert (=> (not b_lambda!123541) (not d!1237769)))

(declare-fun t!346604 () Bool)

(declare-fun tb!251589 () Bool)

(assert (=> (and b!4197208 (= (toValue!10392 (transformation!7692 (h!51521 rules!3843))) (toValue!10392 (transformation!7692 r!4142))) t!346604) tb!251589))

(declare-fun result!306644 () Bool)

(declare-fun inv!21 (TokenValue!7922) Bool)

(assert (=> tb!251589 (= result!306644 (inv!21 (dynLambda!19878 (toValue!10392 (transformation!7692 r!4142)) lt!1495209)))))

(declare-fun m!4786147 () Bool)

(assert (=> tb!251589 m!4786147))

(assert (=> d!1237769 t!346604))

(declare-fun b_and!329259 () Bool)

(assert (= b_and!329229 (and (=> t!346604 result!306644) b_and!329259)))

(declare-fun t!346606 () Bool)

(declare-fun tb!251591 () Bool)

(assert (=> (and b!4197204 (= (toValue!10392 (transformation!7692 r!4142)) (toValue!10392 (transformation!7692 r!4142))) t!346606) tb!251591))

(declare-fun result!306648 () Bool)

(assert (= result!306648 result!306644))

(assert (=> d!1237769 t!346606))

(declare-fun b_and!329265 () Bool)

(assert (= b_and!329233 (and (=> t!346606 result!306648) b_and!329265)))

(declare-fun t!346608 () Bool)

(declare-fun tb!251593 () Bool)

(assert (=> (and b!4197200 (= (toValue!10392 (transformation!7692 rBis!167)) (toValue!10392 (transformation!7692 r!4142))) t!346608) tb!251593))

(declare-fun result!306650 () Bool)

(assert (= result!306650 result!306644))

(assert (=> d!1237769 t!346608))

(declare-fun b_and!329269 () Bool)

(assert (= b_and!329237 (and (=> t!346608 result!306650) b_and!329269)))

(declare-fun m!4786149 () Bool)

(assert (=> d!1237769 m!4786149))

(declare-fun m!4786151 () Bool)

(assert (=> d!1237769 m!4786151))

(declare-fun m!4786153 () Bool)

(assert (=> d!1237769 m!4786153))

(declare-fun m!4786155 () Bool)

(assert (=> d!1237769 m!4786155))

(declare-fun m!4786157 () Bool)

(assert (=> d!1237769 m!4786157))

(assert (=> d!1237769 m!4786157))

(assert (=> d!1237769 m!4786151))

(assert (=> b!4197190 d!1237769))

(declare-fun b!4197321 () Bool)

(declare-fun e!2605445 () Bool)

(assert (=> b!4197321 (= e!2605445 (>= (size!33887 input!3342) (size!33887 input!3342)))))

(declare-fun d!1237787 () Bool)

(assert (=> d!1237787 e!2605445))

(declare-fun res!1723360 () Bool)

(assert (=> d!1237787 (=> res!1723360 e!2605445)))

(declare-fun lt!1495246 () Bool)

(assert (=> d!1237787 (= res!1723360 (not lt!1495246))))

(declare-fun e!2605446 () Bool)

(assert (=> d!1237787 (= lt!1495246 e!2605446)))

(declare-fun res!1723363 () Bool)

(assert (=> d!1237787 (=> res!1723363 e!2605446)))

(assert (=> d!1237787 (= res!1723363 ((_ is Nil!46100) input!3342))))

(assert (=> d!1237787 (= (isPrefix!4549 input!3342 input!3342) lt!1495246)))

(declare-fun b!4197320 () Bool)

(declare-fun e!2605444 () Bool)

(assert (=> b!4197320 (= e!2605444 (isPrefix!4549 (tail!6755 input!3342) (tail!6755 input!3342)))))

(declare-fun b!4197319 () Bool)

(declare-fun res!1723362 () Bool)

(assert (=> b!4197319 (=> (not res!1723362) (not e!2605444))))

(declare-fun head!8908 (List!46224) C!25384)

(assert (=> b!4197319 (= res!1723362 (= (head!8908 input!3342) (head!8908 input!3342)))))

(declare-fun b!4197318 () Bool)

(assert (=> b!4197318 (= e!2605446 e!2605444)))

(declare-fun res!1723361 () Bool)

(assert (=> b!4197318 (=> (not res!1723361) (not e!2605444))))

(assert (=> b!4197318 (= res!1723361 (not ((_ is Nil!46100) input!3342)))))

(assert (= (and d!1237787 (not res!1723363)) b!4197318))

(assert (= (and b!4197318 res!1723361) b!4197319))

(assert (= (and b!4197319 res!1723362) b!4197320))

(assert (= (and d!1237787 (not res!1723360)) b!4197321))

(assert (=> b!4197321 m!4786017))

(assert (=> b!4197321 m!4786017))

(assert (=> b!4197320 m!4786099))

(assert (=> b!4197320 m!4786099))

(assert (=> b!4197320 m!4786099))

(assert (=> b!4197320 m!4786099))

(declare-fun m!4786159 () Bool)

(assert (=> b!4197320 m!4786159))

(declare-fun m!4786161 () Bool)

(assert (=> b!4197319 m!4786161))

(assert (=> b!4197319 m!4786161))

(assert (=> b!4197190 d!1237787))

(declare-fun d!1237789 () Bool)

(declare-fun fromListB!2623 (List!46224) BalanceConc!27400)

(assert (=> d!1237789 (= (seqFromList!5717 p!2959) (fromListB!2623 p!2959))))

(declare-fun bs!596855 () Bool)

(assert (= bs!596855 d!1237789))

(declare-fun m!4786163 () Bool)

(assert (=> bs!596855 m!4786163))

(assert (=> b!4197190 d!1237789))

(declare-fun d!1237791 () Bool)

(assert (=> d!1237791 (isPrefix!4549 input!3342 input!3342)))

(declare-fun lt!1495249 () Unit!65201)

(declare-fun choose!25737 (List!46224 List!46224) Unit!65201)

(assert (=> d!1237791 (= lt!1495249 (choose!25737 input!3342 input!3342))))

(assert (=> d!1237791 (= (lemmaIsPrefixRefl!2978 input!3342 input!3342) lt!1495249)))

(declare-fun bs!596856 () Bool)

(assert (= bs!596856 d!1237791))

(assert (=> bs!596856 m!4786001))

(declare-fun m!4786165 () Bool)

(assert (=> bs!596856 m!4786165))

(assert (=> b!4197190 d!1237791))

(declare-fun d!1237793 () Bool)

(assert (=> d!1237793 (= (apply!10657 (transformation!7692 r!4142) lt!1495209) (dynLambda!19878 (toValue!10392 (transformation!7692 r!4142)) lt!1495209))))

(declare-fun b_lambda!123545 () Bool)

(assert (=> (not b_lambda!123545) (not d!1237793)))

(assert (=> d!1237793 t!346604))

(declare-fun b_and!329271 () Bool)

(assert (= b_and!329259 (and (=> t!346604 result!306644) b_and!329271)))

(assert (=> d!1237793 t!346606))

(declare-fun b_and!329273 () Bool)

(assert (= b_and!329265 (and (=> t!346606 result!306648) b_and!329273)))

(assert (=> d!1237793 t!346608))

(declare-fun b_and!329275 () Bool)

(assert (= b_and!329269 (and (=> t!346608 result!306650) b_and!329275)))

(assert (=> d!1237793 m!4786157))

(assert (=> b!4197190 d!1237793))

(declare-fun b!4197379 () Bool)

(declare-fun e!2605479 () Option!9886)

(declare-datatypes ((tuple2!43892 0))(
  ( (tuple2!43893 (_1!25080 List!46224) (_2!25080 List!46224)) )
))
(declare-fun lt!1495282 () tuple2!43892)

(assert (=> b!4197379 (= e!2605479 (Some!9885 (tuple2!43891 (Token!14099 (apply!10657 (transformation!7692 r!4142) (seqFromList!5717 (_1!25080 lt!1495282))) r!4142 (size!33889 (seqFromList!5717 (_1!25080 lt!1495282))) (_1!25080 lt!1495282)) (_2!25080 lt!1495282))))))

(declare-fun lt!1495283 () Unit!65201)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1593 (Regex!12597 List!46224) Unit!65201)

(assert (=> b!4197379 (= lt!1495283 (longestMatchIsAcceptedByMatchOrIsEmpty!1593 (regex!7692 r!4142) input!3342))))

(declare-fun res!1723411 () Bool)

(declare-fun isEmpty!27304 (List!46224) Bool)

(declare-fun findLongestMatchInner!1620 (Regex!12597 List!46224 Int List!46224 List!46224 Int) tuple2!43892)

(assert (=> b!4197379 (= res!1723411 (isEmpty!27304 (_1!25080 (findLongestMatchInner!1620 (regex!7692 r!4142) Nil!46100 (size!33887 Nil!46100) input!3342 input!3342 (size!33887 input!3342)))))))

(declare-fun e!2605476 () Bool)

(assert (=> b!4197379 (=> res!1723411 e!2605476)))

(assert (=> b!4197379 e!2605476))

(declare-fun lt!1495284 () Unit!65201)

(assert (=> b!4197379 (= lt!1495284 lt!1495283)))

(declare-fun lt!1495281 () Unit!65201)

(assert (=> b!4197379 (= lt!1495281 (lemmaSemiInverse!2458 (transformation!7692 r!4142) (seqFromList!5717 (_1!25080 lt!1495282))))))

(declare-fun b!4197380 () Bool)

(declare-fun res!1723405 () Bool)

(declare-fun e!2605478 () Bool)

(assert (=> b!4197380 (=> (not res!1723405) (not e!2605478))))

(declare-fun lt!1495285 () Option!9886)

(assert (=> b!4197380 (= res!1723405 (= (++!11764 (list!16666 (charsOf!5127 (_1!25079 (get!14997 lt!1495285)))) (_2!25079 (get!14997 lt!1495285))) input!3342))))

(declare-fun b!4197381 () Bool)

(declare-fun res!1723407 () Bool)

(assert (=> b!4197381 (=> (not res!1723407) (not e!2605478))))

(assert (=> b!4197381 (= res!1723407 (= (rule!10788 (_1!25079 (get!14997 lt!1495285))) r!4142))))

(declare-fun b!4197382 () Bool)

(declare-fun e!2605477 () Bool)

(assert (=> b!4197382 (= e!2605477 e!2605478)))

(declare-fun res!1723408 () Bool)

(assert (=> b!4197382 (=> (not res!1723408) (not e!2605478))))

(assert (=> b!4197382 (= res!1723408 (matchR!6336 (regex!7692 r!4142) (list!16666 (charsOf!5127 (_1!25079 (get!14997 lt!1495285))))))))

(declare-fun d!1237795 () Bool)

(assert (=> d!1237795 e!2605477))

(declare-fun res!1723406 () Bool)

(assert (=> d!1237795 (=> res!1723406 e!2605477)))

(assert (=> d!1237795 (= res!1723406 (isEmpty!27302 lt!1495285))))

(assert (=> d!1237795 (= lt!1495285 e!2605479)))

(declare-fun c!715913 () Bool)

(assert (=> d!1237795 (= c!715913 (isEmpty!27304 (_1!25080 lt!1495282)))))

(declare-fun findLongestMatch!1534 (Regex!12597 List!46224) tuple2!43892)

(assert (=> d!1237795 (= lt!1495282 (findLongestMatch!1534 (regex!7692 r!4142) input!3342))))

(assert (=> d!1237795 (ruleValid!3410 thiss!25986 r!4142)))

(assert (=> d!1237795 (= (maxPrefixOneRule!3294 thiss!25986 r!4142 input!3342) lt!1495285)))

(declare-fun b!4197383 () Bool)

(assert (=> b!4197383 (= e!2605479 None!9885)))

(declare-fun b!4197384 () Bool)

(assert (=> b!4197384 (= e!2605478 (= (size!33888 (_1!25079 (get!14997 lt!1495285))) (size!33887 (originalCharacters!8080 (_1!25079 (get!14997 lt!1495285))))))))

(declare-fun b!4197385 () Bool)

(declare-fun res!1723409 () Bool)

(assert (=> b!4197385 (=> (not res!1723409) (not e!2605478))))

(assert (=> b!4197385 (= res!1723409 (< (size!33887 (_2!25079 (get!14997 lt!1495285))) (size!33887 input!3342)))))

(declare-fun b!4197386 () Bool)

(assert (=> b!4197386 (= e!2605476 (matchR!6336 (regex!7692 r!4142) (_1!25080 (findLongestMatchInner!1620 (regex!7692 r!4142) Nil!46100 (size!33887 Nil!46100) input!3342 input!3342 (size!33887 input!3342)))))))

(declare-fun b!4197387 () Bool)

(declare-fun res!1723410 () Bool)

(assert (=> b!4197387 (=> (not res!1723410) (not e!2605478))))

(assert (=> b!4197387 (= res!1723410 (= (value!239754 (_1!25079 (get!14997 lt!1495285))) (apply!10657 (transformation!7692 (rule!10788 (_1!25079 (get!14997 lt!1495285)))) (seqFromList!5717 (originalCharacters!8080 (_1!25079 (get!14997 lt!1495285)))))))))

(assert (= (and d!1237795 c!715913) b!4197383))

(assert (= (and d!1237795 (not c!715913)) b!4197379))

(assert (= (and b!4197379 (not res!1723411)) b!4197386))

(assert (= (and d!1237795 (not res!1723406)) b!4197382))

(assert (= (and b!4197382 res!1723408) b!4197380))

(assert (= (and b!4197380 res!1723405) b!4197385))

(assert (= (and b!4197385 res!1723409) b!4197381))

(assert (= (and b!4197381 res!1723407) b!4197387))

(assert (= (and b!4197387 res!1723410) b!4197384))

(declare-fun m!4786217 () Bool)

(assert (=> b!4197382 m!4786217))

(declare-fun m!4786219 () Bool)

(assert (=> b!4197382 m!4786219))

(assert (=> b!4197382 m!4786219))

(declare-fun m!4786221 () Bool)

(assert (=> b!4197382 m!4786221))

(assert (=> b!4197382 m!4786221))

(declare-fun m!4786223 () Bool)

(assert (=> b!4197382 m!4786223))

(declare-fun m!4786225 () Bool)

(assert (=> d!1237795 m!4786225))

(declare-fun m!4786227 () Bool)

(assert (=> d!1237795 m!4786227))

(declare-fun m!4786229 () Bool)

(assert (=> d!1237795 m!4786229))

(assert (=> d!1237795 m!4786063))

(assert (=> b!4197381 m!4786217))

(declare-fun m!4786231 () Bool)

(assert (=> b!4197379 m!4786231))

(declare-fun m!4786233 () Bool)

(assert (=> b!4197379 m!4786233))

(assert (=> b!4197379 m!4786231))

(declare-fun m!4786235 () Bool)

(assert (=> b!4197379 m!4786235))

(assert (=> b!4197379 m!4786231))

(assert (=> b!4197379 m!4786017))

(declare-fun m!4786237 () Bool)

(assert (=> b!4197379 m!4786237))

(assert (=> b!4197379 m!4786231))

(declare-fun m!4786239 () Bool)

(assert (=> b!4197379 m!4786239))

(declare-fun m!4786241 () Bool)

(assert (=> b!4197379 m!4786241))

(declare-fun m!4786243 () Bool)

(assert (=> b!4197379 m!4786243))

(assert (=> b!4197379 m!4786017))

(declare-fun m!4786245 () Bool)

(assert (=> b!4197379 m!4786245))

(assert (=> b!4197379 m!4786243))

(assert (=> b!4197386 m!4786243))

(assert (=> b!4197386 m!4786017))

(assert (=> b!4197386 m!4786243))

(assert (=> b!4197386 m!4786017))

(assert (=> b!4197386 m!4786245))

(declare-fun m!4786247 () Bool)

(assert (=> b!4197386 m!4786247))

(assert (=> b!4197387 m!4786217))

(declare-fun m!4786249 () Bool)

(assert (=> b!4197387 m!4786249))

(assert (=> b!4197387 m!4786249))

(declare-fun m!4786255 () Bool)

(assert (=> b!4197387 m!4786255))

(assert (=> b!4197385 m!4786217))

(declare-fun m!4786257 () Bool)

(assert (=> b!4197385 m!4786257))

(assert (=> b!4197385 m!4786017))

(assert (=> b!4197380 m!4786217))

(assert (=> b!4197380 m!4786219))

(assert (=> b!4197380 m!4786219))

(assert (=> b!4197380 m!4786221))

(assert (=> b!4197380 m!4786221))

(declare-fun m!4786259 () Bool)

(assert (=> b!4197380 m!4786259))

(assert (=> b!4197384 m!4786217))

(declare-fun m!4786261 () Bool)

(assert (=> b!4197384 m!4786261))

(assert (=> b!4197190 d!1237795))

(declare-fun d!1237807 () Bool)

(declare-fun lt!1495288 () Int)

(assert (=> d!1237807 (>= lt!1495288 0)))

(declare-fun e!2605485 () Int)

(assert (=> d!1237807 (= lt!1495288 e!2605485)))

(declare-fun c!715916 () Bool)

(assert (=> d!1237807 (= c!715916 ((_ is Nil!46100) p!2959))))

(assert (=> d!1237807 (= (size!33887 p!2959) lt!1495288)))

(declare-fun b!4197395 () Bool)

(assert (=> b!4197395 (= e!2605485 0)))

(declare-fun b!4197396 () Bool)

(assert (=> b!4197396 (= e!2605485 (+ 1 (size!33887 (t!346583 p!2959))))))

(assert (= (and d!1237807 c!715916) b!4197395))

(assert (= (and d!1237807 (not c!715916)) b!4197396))

(declare-fun m!4786263 () Bool)

(assert (=> b!4197396 m!4786263))

(assert (=> b!4197190 d!1237807))

(declare-fun d!1237809 () Bool)

(declare-fun res!1723417 () Bool)

(declare-fun e!2605488 () Bool)

(assert (=> d!1237809 (=> (not res!1723417) (not e!2605488))))

(declare-fun rulesValid!3007 (LexerInterface!7285 List!46225) Bool)

(assert (=> d!1237809 (= res!1723417 (rulesValid!3007 thiss!25986 rules!3843))))

(assert (=> d!1237809 (= (rulesInvariant!6498 thiss!25986 rules!3843) e!2605488)))

(declare-fun b!4197399 () Bool)

(declare-datatypes ((List!46226 0))(
  ( (Nil!46102) (Cons!46102 (h!51522 String!53476) (t!346633 List!46226)) )
))
(declare-fun noDuplicateTag!3168 (LexerInterface!7285 List!46225 List!46226) Bool)

(assert (=> b!4197399 (= e!2605488 (noDuplicateTag!3168 thiss!25986 rules!3843 Nil!46102))))

(assert (= (and d!1237809 res!1723417) b!4197399))

(declare-fun m!4786265 () Bool)

(assert (=> d!1237809 m!4786265))

(declare-fun m!4786267 () Bool)

(assert (=> b!4197399 m!4786267))

(assert (=> b!4197180 d!1237809))

(declare-fun bm!292489 () Bool)

(declare-fun call!292495 () Bool)

(declare-fun call!292496 () Bool)

(assert (=> bm!292489 (= call!292495 call!292496)))

(declare-fun b!4197418 () Bool)

(declare-fun res!1723429 () Bool)

(declare-fun e!2605503 () Bool)

(assert (=> b!4197418 (=> res!1723429 e!2605503)))

(assert (=> b!4197418 (= res!1723429 (not ((_ is Concat!20520) (regex!7692 r!4142))))))

(declare-fun e!2605506 () Bool)

(assert (=> b!4197418 (= e!2605506 e!2605503)))

(declare-fun b!4197419 () Bool)

(declare-fun e!2605507 () Bool)

(declare-fun e!2605504 () Bool)

(assert (=> b!4197419 (= e!2605507 e!2605504)))

(declare-fun res!1723432 () Bool)

(declare-fun nullable!4431 (Regex!12597) Bool)

(assert (=> b!4197419 (= res!1723432 (not (nullable!4431 (reg!12926 (regex!7692 r!4142)))))))

(assert (=> b!4197419 (=> (not res!1723432) (not e!2605504))))

(declare-fun b!4197421 () Bool)

(declare-fun e!2605505 () Bool)

(assert (=> b!4197421 (= e!2605505 e!2605507)))

(declare-fun c!715922 () Bool)

(assert (=> b!4197421 (= c!715922 ((_ is Star!12597) (regex!7692 r!4142)))))

(declare-fun b!4197422 () Bool)

(declare-fun e!2605509 () Bool)

(assert (=> b!4197422 (= e!2605509 call!292495)))

(declare-fun c!715921 () Bool)

(declare-fun bm!292490 () Bool)

(assert (=> bm!292490 (= call!292496 (validRegex!5714 (ite c!715922 (reg!12926 (regex!7692 r!4142)) (ite c!715921 (regTwo!25707 (regex!7692 r!4142)) (regTwo!25706 (regex!7692 r!4142))))))))

(declare-fun b!4197423 () Bool)

(declare-fun e!2605508 () Bool)

(assert (=> b!4197423 (= e!2605508 call!292495)))

(declare-fun b!4197424 () Bool)

(assert (=> b!4197424 (= e!2605503 e!2605509)))

(declare-fun res!1723430 () Bool)

(assert (=> b!4197424 (=> (not res!1723430) (not e!2605509))))

(declare-fun call!292494 () Bool)

(assert (=> b!4197424 (= res!1723430 call!292494)))

(declare-fun b!4197425 () Bool)

(assert (=> b!4197425 (= e!2605507 e!2605506)))

(assert (=> b!4197425 (= c!715921 ((_ is Union!12597) (regex!7692 r!4142)))))

(declare-fun b!4197420 () Bool)

(assert (=> b!4197420 (= e!2605504 call!292496)))

(declare-fun d!1237811 () Bool)

(declare-fun res!1723431 () Bool)

(assert (=> d!1237811 (=> res!1723431 e!2605505)))

(assert (=> d!1237811 (= res!1723431 ((_ is ElementMatch!12597) (regex!7692 r!4142)))))

(assert (=> d!1237811 (= (validRegex!5714 (regex!7692 r!4142)) e!2605505)))

(declare-fun bm!292491 () Bool)

(assert (=> bm!292491 (= call!292494 (validRegex!5714 (ite c!715921 (regOne!25707 (regex!7692 r!4142)) (regOne!25706 (regex!7692 r!4142)))))))

(declare-fun b!4197426 () Bool)

(declare-fun res!1723428 () Bool)

(assert (=> b!4197426 (=> (not res!1723428) (not e!2605508))))

(assert (=> b!4197426 (= res!1723428 call!292494)))

(assert (=> b!4197426 (= e!2605506 e!2605508)))

(assert (= (and d!1237811 (not res!1723431)) b!4197421))

(assert (= (and b!4197421 c!715922) b!4197419))

(assert (= (and b!4197421 (not c!715922)) b!4197425))

(assert (= (and b!4197419 res!1723432) b!4197420))

(assert (= (and b!4197425 c!715921) b!4197426))

(assert (= (and b!4197425 (not c!715921)) b!4197418))

(assert (= (and b!4197426 res!1723428) b!4197423))

(assert (= (and b!4197418 (not res!1723429)) b!4197424))

(assert (= (and b!4197424 res!1723430) b!4197422))

(assert (= (or b!4197423 b!4197422) bm!292489))

(assert (= (or b!4197426 b!4197424) bm!292491))

(assert (= (or b!4197420 bm!292489) bm!292490))

(declare-fun m!4786269 () Bool)

(assert (=> b!4197419 m!4786269))

(declare-fun m!4786271 () Bool)

(assert (=> bm!292490 m!4786271))

(declare-fun m!4786273 () Bool)

(assert (=> bm!292491 m!4786273))

(assert (=> b!4197205 d!1237811))

(declare-fun b!4197430 () Bool)

(declare-fun e!2605511 () Bool)

(assert (=> b!4197430 (= e!2605511 (>= (size!33887 input!3342) (size!33887 lt!1495215)))))

(declare-fun d!1237813 () Bool)

(assert (=> d!1237813 e!2605511))

(declare-fun res!1723433 () Bool)

(assert (=> d!1237813 (=> res!1723433 e!2605511)))

(declare-fun lt!1495289 () Bool)

(assert (=> d!1237813 (= res!1723433 (not lt!1495289))))

(declare-fun e!2605512 () Bool)

(assert (=> d!1237813 (= lt!1495289 e!2605512)))

(declare-fun res!1723436 () Bool)

(assert (=> d!1237813 (=> res!1723436 e!2605512)))

(assert (=> d!1237813 (= res!1723436 ((_ is Nil!46100) lt!1495215))))

(assert (=> d!1237813 (= (isPrefix!4549 lt!1495215 input!3342) lt!1495289)))

(declare-fun b!4197429 () Bool)

(declare-fun e!2605510 () Bool)

(assert (=> b!4197429 (= e!2605510 (isPrefix!4549 (tail!6755 lt!1495215) (tail!6755 input!3342)))))

(declare-fun b!4197428 () Bool)

(declare-fun res!1723435 () Bool)

(assert (=> b!4197428 (=> (not res!1723435) (not e!2605510))))

(assert (=> b!4197428 (= res!1723435 (= (head!8908 lt!1495215) (head!8908 input!3342)))))

(declare-fun b!4197427 () Bool)

(assert (=> b!4197427 (= e!2605512 e!2605510)))

(declare-fun res!1723434 () Bool)

(assert (=> b!4197427 (=> (not res!1723434) (not e!2605510))))

(assert (=> b!4197427 (= res!1723434 (not ((_ is Nil!46100) input!3342)))))

(assert (= (and d!1237813 (not res!1723436)) b!4197427))

(assert (= (and b!4197427 res!1723434) b!4197428))

(assert (= (and b!4197428 res!1723435) b!4197429))

(assert (= (and d!1237813 (not res!1723433)) b!4197430))

(assert (=> b!4197430 m!4786017))

(assert (=> b!4197430 m!4786071))

(declare-fun m!4786275 () Bool)

(assert (=> b!4197429 m!4786275))

(assert (=> b!4197429 m!4786099))

(assert (=> b!4197429 m!4786275))

(assert (=> b!4197429 m!4786099))

(declare-fun m!4786277 () Bool)

(assert (=> b!4197429 m!4786277))

(declare-fun m!4786279 () Bool)

(assert (=> b!4197428 m!4786279))

(assert (=> b!4197428 m!4786161))

(assert (=> b!4197194 d!1237813))

(declare-fun d!1237815 () Bool)

(assert (=> d!1237815 (isPrefix!4549 lt!1495215 (++!11764 lt!1495215 (_2!25079 lt!1495202)))))

(declare-fun lt!1495292 () Unit!65201)

(declare-fun choose!25738 (List!46224 List!46224) Unit!65201)

(assert (=> d!1237815 (= lt!1495292 (choose!25738 lt!1495215 (_2!25079 lt!1495202)))))

(assert (=> d!1237815 (= (lemmaConcatTwoListThenFirstIsPrefix!3046 lt!1495215 (_2!25079 lt!1495202)) lt!1495292)))

(declare-fun bs!596857 () Bool)

(assert (= bs!596857 d!1237815))

(assert (=> bs!596857 m!4786039))

(assert (=> bs!596857 m!4786039))

(assert (=> bs!596857 m!4786043))

(declare-fun m!4786281 () Bool)

(assert (=> bs!596857 m!4786281))

(assert (=> b!4197195 d!1237815))

(declare-fun d!1237817 () Bool)

(assert (=> d!1237817 (= (get!14997 lt!1495206) (v!40729 lt!1495206))))

(assert (=> b!4197195 d!1237817))

(declare-fun b!4197432 () Bool)

(declare-fun e!2605514 () List!46224)

(assert (=> b!4197432 (= e!2605514 (Cons!46100 (h!51520 lt!1495215) (++!11764 (t!346583 lt!1495215) (_2!25079 lt!1495202))))))

(declare-fun b!4197431 () Bool)

(assert (=> b!4197431 (= e!2605514 (_2!25079 lt!1495202))))

(declare-fun b!4197433 () Bool)

(declare-fun res!1723438 () Bool)

(declare-fun e!2605513 () Bool)

(assert (=> b!4197433 (=> (not res!1723438) (not e!2605513))))

(declare-fun lt!1495293 () List!46224)

(assert (=> b!4197433 (= res!1723438 (= (size!33887 lt!1495293) (+ (size!33887 lt!1495215) (size!33887 (_2!25079 lt!1495202)))))))

(declare-fun d!1237819 () Bool)

(assert (=> d!1237819 e!2605513))

(declare-fun res!1723437 () Bool)

(assert (=> d!1237819 (=> (not res!1723437) (not e!2605513))))

(assert (=> d!1237819 (= res!1723437 (= (content!7195 lt!1495293) ((_ map or) (content!7195 lt!1495215) (content!7195 (_2!25079 lt!1495202)))))))

(assert (=> d!1237819 (= lt!1495293 e!2605514)))

(declare-fun c!715923 () Bool)

(assert (=> d!1237819 (= c!715923 ((_ is Nil!46100) lt!1495215))))

(assert (=> d!1237819 (= (++!11764 lt!1495215 (_2!25079 lt!1495202)) lt!1495293)))

(declare-fun b!4197434 () Bool)

(assert (=> b!4197434 (= e!2605513 (or (not (= (_2!25079 lt!1495202) Nil!46100)) (= lt!1495293 lt!1495215)))))

(assert (= (and d!1237819 c!715923) b!4197431))

(assert (= (and d!1237819 (not c!715923)) b!4197432))

(assert (= (and d!1237819 res!1723437) b!4197433))

(assert (= (and b!4197433 res!1723438) b!4197434))

(declare-fun m!4786283 () Bool)

(assert (=> b!4197432 m!4786283))

(declare-fun m!4786285 () Bool)

(assert (=> b!4197433 m!4786285))

(assert (=> b!4197433 m!4786071))

(declare-fun m!4786287 () Bool)

(assert (=> b!4197433 m!4786287))

(declare-fun m!4786289 () Bool)

(assert (=> d!1237819 m!4786289))

(declare-fun m!4786291 () Bool)

(assert (=> d!1237819 m!4786291))

(declare-fun m!4786293 () Bool)

(assert (=> d!1237819 m!4786293))

(assert (=> b!4197195 d!1237819))

(declare-fun b!4197438 () Bool)

(declare-fun e!2605516 () Bool)

(assert (=> b!4197438 (= e!2605516 (>= (size!33887 (++!11764 lt!1495215 (_2!25079 lt!1495202))) (size!33887 lt!1495215)))))

(declare-fun d!1237821 () Bool)

(assert (=> d!1237821 e!2605516))

(declare-fun res!1723439 () Bool)

(assert (=> d!1237821 (=> res!1723439 e!2605516)))

(declare-fun lt!1495294 () Bool)

(assert (=> d!1237821 (= res!1723439 (not lt!1495294))))

(declare-fun e!2605517 () Bool)

(assert (=> d!1237821 (= lt!1495294 e!2605517)))

(declare-fun res!1723442 () Bool)

(assert (=> d!1237821 (=> res!1723442 e!2605517)))

(assert (=> d!1237821 (= res!1723442 ((_ is Nil!46100) lt!1495215))))

(assert (=> d!1237821 (= (isPrefix!4549 lt!1495215 (++!11764 lt!1495215 (_2!25079 lt!1495202))) lt!1495294)))

(declare-fun b!4197437 () Bool)

(declare-fun e!2605515 () Bool)

(assert (=> b!4197437 (= e!2605515 (isPrefix!4549 (tail!6755 lt!1495215) (tail!6755 (++!11764 lt!1495215 (_2!25079 lt!1495202)))))))

(declare-fun b!4197436 () Bool)

(declare-fun res!1723441 () Bool)

(assert (=> b!4197436 (=> (not res!1723441) (not e!2605515))))

(assert (=> b!4197436 (= res!1723441 (= (head!8908 lt!1495215) (head!8908 (++!11764 lt!1495215 (_2!25079 lt!1495202)))))))

(declare-fun b!4197435 () Bool)

(assert (=> b!4197435 (= e!2605517 e!2605515)))

(declare-fun res!1723440 () Bool)

(assert (=> b!4197435 (=> (not res!1723440) (not e!2605515))))

(assert (=> b!4197435 (= res!1723440 (not ((_ is Nil!46100) (++!11764 lt!1495215 (_2!25079 lt!1495202)))))))

(assert (= (and d!1237821 (not res!1723442)) b!4197435))

(assert (= (and b!4197435 res!1723440) b!4197436))

(assert (= (and b!4197436 res!1723441) b!4197437))

(assert (= (and d!1237821 (not res!1723439)) b!4197438))

(assert (=> b!4197438 m!4786039))

(declare-fun m!4786295 () Bool)

(assert (=> b!4197438 m!4786295))

(assert (=> b!4197438 m!4786071))

(assert (=> b!4197437 m!4786275))

(assert (=> b!4197437 m!4786039))

(declare-fun m!4786297 () Bool)

(assert (=> b!4197437 m!4786297))

(assert (=> b!4197437 m!4786275))

(assert (=> b!4197437 m!4786297))

(declare-fun m!4786299 () Bool)

(assert (=> b!4197437 m!4786299))

(assert (=> b!4197436 m!4786279))

(assert (=> b!4197436 m!4786039))

(declare-fun m!4786301 () Bool)

(assert (=> b!4197436 m!4786301))

(assert (=> b!4197195 d!1237821))

(declare-fun d!1237823 () Bool)

(declare-fun lt!1495297 () BalanceConc!27400)

(assert (=> d!1237823 (= (list!16666 lt!1495297) (originalCharacters!8080 (_1!25079 lt!1495202)))))

(assert (=> d!1237823 (= lt!1495297 (dynLambda!19877 (toChars!10251 (transformation!7692 (rule!10788 (_1!25079 lt!1495202)))) (value!239754 (_1!25079 lt!1495202))))))

(assert (=> d!1237823 (= (charsOf!5127 (_1!25079 lt!1495202)) lt!1495297)))

(declare-fun b_lambda!123547 () Bool)

(assert (=> (not b_lambda!123547) (not d!1237823)))

(declare-fun t!346610 () Bool)

(declare-fun tb!251595 () Bool)

(assert (=> (and b!4197208 (= (toChars!10251 (transformation!7692 (h!51521 rules!3843))) (toChars!10251 (transformation!7692 (rule!10788 (_1!25079 lt!1495202))))) t!346610) tb!251595))

(declare-fun b!4197439 () Bool)

(declare-fun e!2605518 () Bool)

(declare-fun tp!1282183 () Bool)

(assert (=> b!4197439 (= e!2605518 (and (inv!60661 (c!715886 (dynLambda!19877 (toChars!10251 (transformation!7692 (rule!10788 (_1!25079 lt!1495202)))) (value!239754 (_1!25079 lt!1495202))))) tp!1282183))))

(declare-fun result!306652 () Bool)

(assert (=> tb!251595 (= result!306652 (and (inv!60662 (dynLambda!19877 (toChars!10251 (transformation!7692 (rule!10788 (_1!25079 lt!1495202)))) (value!239754 (_1!25079 lt!1495202)))) e!2605518))))

(assert (= tb!251595 b!4197439))

(declare-fun m!4786303 () Bool)

(assert (=> b!4197439 m!4786303))

(declare-fun m!4786305 () Bool)

(assert (=> tb!251595 m!4786305))

(assert (=> d!1237823 t!346610))

(declare-fun b_and!329277 () Bool)

(assert (= b_and!329253 (and (=> t!346610 result!306652) b_and!329277)))

(declare-fun tb!251597 () Bool)

(declare-fun t!346612 () Bool)

(assert (=> (and b!4197204 (= (toChars!10251 (transformation!7692 r!4142)) (toChars!10251 (transformation!7692 (rule!10788 (_1!25079 lt!1495202))))) t!346612) tb!251597))

(declare-fun result!306654 () Bool)

(assert (= result!306654 result!306652))

(assert (=> d!1237823 t!346612))

(declare-fun b_and!329279 () Bool)

(assert (= b_and!329255 (and (=> t!346612 result!306654) b_and!329279)))

(declare-fun t!346614 () Bool)

(declare-fun tb!251599 () Bool)

(assert (=> (and b!4197200 (= (toChars!10251 (transformation!7692 rBis!167)) (toChars!10251 (transformation!7692 (rule!10788 (_1!25079 lt!1495202))))) t!346614) tb!251599))

(declare-fun result!306656 () Bool)

(assert (= result!306656 result!306652))

(assert (=> d!1237823 t!346614))

(declare-fun b_and!329281 () Bool)

(assert (= b_and!329257 (and (=> t!346614 result!306656) b_and!329281)))

(declare-fun m!4786307 () Bool)

(assert (=> d!1237823 m!4786307))

(declare-fun m!4786309 () Bool)

(assert (=> d!1237823 m!4786309))

(assert (=> b!4197195 d!1237823))

(declare-fun d!1237825 () Bool)

(declare-fun list!16667 (Conc!13903) List!46224)

(assert (=> d!1237825 (= (list!16666 lt!1495211) (list!16667 (c!715886 lt!1495211)))))

(declare-fun bs!596858 () Bool)

(assert (= bs!596858 d!1237825))

(declare-fun m!4786311 () Bool)

(assert (=> bs!596858 m!4786311))

(assert (=> b!4197195 d!1237825))

(declare-fun d!1237827 () Bool)

(declare-fun res!1723447 () Bool)

(declare-fun e!2605521 () Bool)

(assert (=> d!1237827 (=> (not res!1723447) (not e!2605521))))

(assert (=> d!1237827 (= res!1723447 (validRegex!5714 (regex!7692 r!4142)))))

(assert (=> d!1237827 (= (ruleValid!3410 thiss!25986 r!4142) e!2605521)))

(declare-fun b!4197444 () Bool)

(declare-fun res!1723448 () Bool)

(assert (=> b!4197444 (=> (not res!1723448) (not e!2605521))))

(assert (=> b!4197444 (= res!1723448 (not (nullable!4431 (regex!7692 r!4142))))))

(declare-fun b!4197445 () Bool)

(assert (=> b!4197445 (= e!2605521 (not (= (tag!8556 r!4142) (String!53477 ""))))))

(assert (= (and d!1237827 res!1723447) b!4197444))

(assert (= (and b!4197444 res!1723448) b!4197445))

(assert (=> d!1237827 m!4786061))

(declare-fun m!4786313 () Bool)

(assert (=> b!4197444 m!4786313))

(assert (=> b!4197184 d!1237827))

(declare-fun d!1237829 () Bool)

(assert (=> d!1237829 (= (isEmpty!27302 lt!1495206) (not ((_ is Some!9885) lt!1495206)))))

(assert (=> b!4197193 d!1237829))

(declare-fun d!1237831 () Bool)

(assert (=> d!1237831 (ruleValid!3410 thiss!25986 rBis!167)))

(declare-fun lt!1495310 () Unit!65201)

(declare-fun choose!25740 (LexerInterface!7285 Rule!15184 List!46225) Unit!65201)

(assert (=> d!1237831 (= lt!1495310 (choose!25740 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1237831 (contains!9503 rules!3843 rBis!167)))

(assert (=> d!1237831 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2416 thiss!25986 rBis!167 rules!3843) lt!1495310)))

(declare-fun bs!596859 () Bool)

(assert (= bs!596859 d!1237831))

(assert (=> bs!596859 m!4786025))

(declare-fun m!4786315 () Bool)

(assert (=> bs!596859 m!4786315))

(assert (=> bs!596859 m!4786023))

(assert (=> b!4197193 d!1237831))

(declare-fun b!4197464 () Bool)

(declare-fun e!2605531 () Option!9886)

(declare-fun lt!1495312 () tuple2!43892)

(assert (=> b!4197464 (= e!2605531 (Some!9885 (tuple2!43891 (Token!14099 (apply!10657 (transformation!7692 rBis!167) (seqFromList!5717 (_1!25080 lt!1495312))) rBis!167 (size!33889 (seqFromList!5717 (_1!25080 lt!1495312))) (_1!25080 lt!1495312)) (_2!25080 lt!1495312))))))

(declare-fun lt!1495313 () Unit!65201)

(assert (=> b!4197464 (= lt!1495313 (longestMatchIsAcceptedByMatchOrIsEmpty!1593 (regex!7692 rBis!167) input!3342))))

(declare-fun res!1723469 () Bool)

(assert (=> b!4197464 (= res!1723469 (isEmpty!27304 (_1!25080 (findLongestMatchInner!1620 (regex!7692 rBis!167) Nil!46100 (size!33887 Nil!46100) input!3342 input!3342 (size!33887 input!3342)))))))

(declare-fun e!2605528 () Bool)

(assert (=> b!4197464 (=> res!1723469 e!2605528)))

(assert (=> b!4197464 e!2605528))

(declare-fun lt!1495314 () Unit!65201)

(assert (=> b!4197464 (= lt!1495314 lt!1495313)))

(declare-fun lt!1495311 () Unit!65201)

(assert (=> b!4197464 (= lt!1495311 (lemmaSemiInverse!2458 (transformation!7692 rBis!167) (seqFromList!5717 (_1!25080 lt!1495312))))))

(declare-fun b!4197465 () Bool)

(declare-fun res!1723463 () Bool)

(declare-fun e!2605530 () Bool)

(assert (=> b!4197465 (=> (not res!1723463) (not e!2605530))))

(declare-fun lt!1495315 () Option!9886)

(assert (=> b!4197465 (= res!1723463 (= (++!11764 (list!16666 (charsOf!5127 (_1!25079 (get!14997 lt!1495315)))) (_2!25079 (get!14997 lt!1495315))) input!3342))))

(declare-fun b!4197466 () Bool)

(declare-fun res!1723465 () Bool)

(assert (=> b!4197466 (=> (not res!1723465) (not e!2605530))))

(assert (=> b!4197466 (= res!1723465 (= (rule!10788 (_1!25079 (get!14997 lt!1495315))) rBis!167))))

(declare-fun b!4197467 () Bool)

(declare-fun e!2605529 () Bool)

(assert (=> b!4197467 (= e!2605529 e!2605530)))

(declare-fun res!1723466 () Bool)

(assert (=> b!4197467 (=> (not res!1723466) (not e!2605530))))

(assert (=> b!4197467 (= res!1723466 (matchR!6336 (regex!7692 rBis!167) (list!16666 (charsOf!5127 (_1!25079 (get!14997 lt!1495315))))))))

(declare-fun d!1237833 () Bool)

(assert (=> d!1237833 e!2605529))

(declare-fun res!1723464 () Bool)

(assert (=> d!1237833 (=> res!1723464 e!2605529)))

(assert (=> d!1237833 (= res!1723464 (isEmpty!27302 lt!1495315))))

(assert (=> d!1237833 (= lt!1495315 e!2605531)))

(declare-fun c!715926 () Bool)

(assert (=> d!1237833 (= c!715926 (isEmpty!27304 (_1!25080 lt!1495312)))))

(assert (=> d!1237833 (= lt!1495312 (findLongestMatch!1534 (regex!7692 rBis!167) input!3342))))

(assert (=> d!1237833 (ruleValid!3410 thiss!25986 rBis!167)))

(assert (=> d!1237833 (= (maxPrefixOneRule!3294 thiss!25986 rBis!167 input!3342) lt!1495315)))

(declare-fun b!4197468 () Bool)

(assert (=> b!4197468 (= e!2605531 None!9885)))

(declare-fun b!4197469 () Bool)

(assert (=> b!4197469 (= e!2605530 (= (size!33888 (_1!25079 (get!14997 lt!1495315))) (size!33887 (originalCharacters!8080 (_1!25079 (get!14997 lt!1495315))))))))

(declare-fun b!4197470 () Bool)

(declare-fun res!1723467 () Bool)

(assert (=> b!4197470 (=> (not res!1723467) (not e!2605530))))

(assert (=> b!4197470 (= res!1723467 (< (size!33887 (_2!25079 (get!14997 lt!1495315))) (size!33887 input!3342)))))

(declare-fun b!4197471 () Bool)

(assert (=> b!4197471 (= e!2605528 (matchR!6336 (regex!7692 rBis!167) (_1!25080 (findLongestMatchInner!1620 (regex!7692 rBis!167) Nil!46100 (size!33887 Nil!46100) input!3342 input!3342 (size!33887 input!3342)))))))

(declare-fun b!4197472 () Bool)

(declare-fun res!1723468 () Bool)

(assert (=> b!4197472 (=> (not res!1723468) (not e!2605530))))

(assert (=> b!4197472 (= res!1723468 (= (value!239754 (_1!25079 (get!14997 lt!1495315))) (apply!10657 (transformation!7692 (rule!10788 (_1!25079 (get!14997 lt!1495315)))) (seqFromList!5717 (originalCharacters!8080 (_1!25079 (get!14997 lt!1495315)))))))))

(assert (= (and d!1237833 c!715926) b!4197468))

(assert (= (and d!1237833 (not c!715926)) b!4197464))

(assert (= (and b!4197464 (not res!1723469)) b!4197471))

(assert (= (and d!1237833 (not res!1723464)) b!4197467))

(assert (= (and b!4197467 res!1723466) b!4197465))

(assert (= (and b!4197465 res!1723463) b!4197470))

(assert (= (and b!4197470 res!1723467) b!4197466))

(assert (= (and b!4197466 res!1723465) b!4197472))

(assert (= (and b!4197472 res!1723468) b!4197469))

(declare-fun m!4786317 () Bool)

(assert (=> b!4197467 m!4786317))

(declare-fun m!4786319 () Bool)

(assert (=> b!4197467 m!4786319))

(assert (=> b!4197467 m!4786319))

(declare-fun m!4786321 () Bool)

(assert (=> b!4197467 m!4786321))

(assert (=> b!4197467 m!4786321))

(declare-fun m!4786323 () Bool)

(assert (=> b!4197467 m!4786323))

(declare-fun m!4786325 () Bool)

(assert (=> d!1237833 m!4786325))

(declare-fun m!4786327 () Bool)

(assert (=> d!1237833 m!4786327))

(declare-fun m!4786329 () Bool)

(assert (=> d!1237833 m!4786329))

(assert (=> d!1237833 m!4786025))

(assert (=> b!4197466 m!4786317))

(declare-fun m!4786331 () Bool)

(assert (=> b!4197464 m!4786331))

(declare-fun m!4786333 () Bool)

(assert (=> b!4197464 m!4786333))

(assert (=> b!4197464 m!4786331))

(declare-fun m!4786335 () Bool)

(assert (=> b!4197464 m!4786335))

(assert (=> b!4197464 m!4786331))

(assert (=> b!4197464 m!4786017))

(declare-fun m!4786337 () Bool)

(assert (=> b!4197464 m!4786337))

(assert (=> b!4197464 m!4786331))

(declare-fun m!4786339 () Bool)

(assert (=> b!4197464 m!4786339))

(declare-fun m!4786341 () Bool)

(assert (=> b!4197464 m!4786341))

(assert (=> b!4197464 m!4786243))

(assert (=> b!4197464 m!4786017))

(declare-fun m!4786343 () Bool)

(assert (=> b!4197464 m!4786343))

(assert (=> b!4197464 m!4786243))

(assert (=> b!4197471 m!4786243))

(assert (=> b!4197471 m!4786017))

(assert (=> b!4197471 m!4786243))

(assert (=> b!4197471 m!4786017))

(assert (=> b!4197471 m!4786343))

(declare-fun m!4786345 () Bool)

(assert (=> b!4197471 m!4786345))

(assert (=> b!4197472 m!4786317))

(declare-fun m!4786347 () Bool)

(assert (=> b!4197472 m!4786347))

(assert (=> b!4197472 m!4786347))

(declare-fun m!4786349 () Bool)

(assert (=> b!4197472 m!4786349))

(assert (=> b!4197470 m!4786317))

(declare-fun m!4786351 () Bool)

(assert (=> b!4197470 m!4786351))

(assert (=> b!4197470 m!4786017))

(assert (=> b!4197465 m!4786317))

(assert (=> b!4197465 m!4786319))

(assert (=> b!4197465 m!4786319))

(assert (=> b!4197465 m!4786321))

(assert (=> b!4197465 m!4786321))

(declare-fun m!4786353 () Bool)

(assert (=> b!4197465 m!4786353))

(assert (=> b!4197469 m!4786317))

(declare-fun m!4786355 () Bool)

(assert (=> b!4197469 m!4786355))

(assert (=> b!4197193 d!1237833))

(declare-fun d!1237835 () Bool)

(assert (=> d!1237835 (<= (size!33887 pBis!107) (size!33887 input!3342))))

(declare-fun lt!1495323 () Unit!65201)

(declare-fun choose!25742 (List!46224 List!46224) Unit!65201)

(assert (=> d!1237835 (= lt!1495323 (choose!25742 pBis!107 input!3342))))

(assert (=> d!1237835 (isPrefix!4549 pBis!107 input!3342)))

(assert (=> d!1237835 (= (lemmaIsPrefixThenSmallerEqSize!579 pBis!107 input!3342) lt!1495323)))

(declare-fun bs!596860 () Bool)

(assert (= bs!596860 d!1237835))

(assert (=> bs!596860 m!4785993))

(assert (=> bs!596860 m!4786017))

(declare-fun m!4786357 () Bool)

(assert (=> bs!596860 m!4786357))

(assert (=> bs!596860 m!4786057))

(assert (=> b!4197193 d!1237835))

(declare-fun d!1237837 () Bool)

(declare-fun lt!1495324 () Int)

(assert (=> d!1237837 (>= lt!1495324 0)))

(declare-fun e!2605535 () Int)

(assert (=> d!1237837 (= lt!1495324 e!2605535)))

(declare-fun c!715928 () Bool)

(assert (=> d!1237837 (= c!715928 ((_ is Nil!46100) input!3342))))

(assert (=> d!1237837 (= (size!33887 input!3342) lt!1495324)))

(declare-fun b!4197482 () Bool)

(assert (=> b!4197482 (= e!2605535 0)))

(declare-fun b!4197483 () Bool)

(assert (=> b!4197483 (= e!2605535 (+ 1 (size!33887 (t!346583 input!3342))))))

(assert (= (and d!1237837 c!715928) b!4197482))

(assert (= (and d!1237837 (not c!715928)) b!4197483))

(declare-fun m!4786359 () Bool)

(assert (=> b!4197483 m!4786359))

(assert (=> b!4197193 d!1237837))

(declare-fun d!1237839 () Bool)

(assert (=> d!1237839 (= (inv!60658 (tag!8556 rBis!167)) (= (mod (str.len (value!239753 (tag!8556 rBis!167))) 2) 0))))

(assert (=> b!4197182 d!1237839))

(declare-fun d!1237841 () Bool)

(declare-fun res!1723482 () Bool)

(declare-fun e!2605542 () Bool)

(assert (=> d!1237841 (=> (not res!1723482) (not e!2605542))))

(declare-fun semiInverseModEq!3340 (Int Int) Bool)

(assert (=> d!1237841 (= res!1723482 (semiInverseModEq!3340 (toChars!10251 (transformation!7692 rBis!167)) (toValue!10392 (transformation!7692 rBis!167))))))

(assert (=> d!1237841 (= (inv!60660 (transformation!7692 rBis!167)) e!2605542)))

(declare-fun b!4197493 () Bool)

(declare-fun equivClasses!3239 (Int Int) Bool)

(assert (=> b!4197493 (= e!2605542 (equivClasses!3239 (toChars!10251 (transformation!7692 rBis!167)) (toValue!10392 (transformation!7692 rBis!167))))))

(assert (= (and d!1237841 res!1723482) b!4197493))

(declare-fun m!4786399 () Bool)

(assert (=> d!1237841 m!4786399))

(declare-fun m!4786401 () Bool)

(assert (=> b!4197493 m!4786401))

(assert (=> b!4197182 d!1237841))

(declare-fun d!1237859 () Bool)

(assert (=> d!1237859 (= pBis!107 lt!1495215)))

(declare-fun lt!1495329 () Unit!65201)

(declare-fun choose!25744 (List!46224 List!46224 List!46224) Unit!65201)

(assert (=> d!1237859 (= lt!1495329 (choose!25744 pBis!107 lt!1495215 input!3342))))

(assert (=> d!1237859 (isPrefix!4549 pBis!107 input!3342)))

(assert (=> d!1237859 (= (lemmaIsPrefixSameLengthThenSameList!1013 pBis!107 lt!1495215 input!3342) lt!1495329)))

(declare-fun bs!596861 () Bool)

(assert (= bs!596861 d!1237859))

(declare-fun m!4786407 () Bool)

(assert (=> bs!596861 m!4786407))

(assert (=> bs!596861 m!4786057))

(assert (=> b!4197183 d!1237859))

(declare-fun d!1237865 () Bool)

(declare-fun lt!1495330 () Bool)

(assert (=> d!1237865 (= lt!1495330 (select (content!7196 rules!3843) rBis!167))))

(declare-fun e!2605544 () Bool)

(assert (=> d!1237865 (= lt!1495330 e!2605544)))

(declare-fun res!1723485 () Bool)

(assert (=> d!1237865 (=> (not res!1723485) (not e!2605544))))

(assert (=> d!1237865 (= res!1723485 ((_ is Cons!46101) rules!3843))))

(assert (=> d!1237865 (= (contains!9503 rules!3843 rBis!167) lt!1495330)))

(declare-fun b!4197495 () Bool)

(declare-fun e!2605545 () Bool)

(assert (=> b!4197495 (= e!2605544 e!2605545)))

(declare-fun res!1723484 () Bool)

(assert (=> b!4197495 (=> res!1723484 e!2605545)))

(assert (=> b!4197495 (= res!1723484 (= (h!51521 rules!3843) rBis!167))))

(declare-fun b!4197496 () Bool)

(assert (=> b!4197496 (= e!2605545 (contains!9503 (t!346584 rules!3843) rBis!167))))

(assert (= (and d!1237865 res!1723485) b!4197495))

(assert (= (and b!4197495 (not res!1723484)) b!4197496))

(assert (=> d!1237865 m!4786091))

(declare-fun m!4786409 () Bool)

(assert (=> d!1237865 m!4786409))

(declare-fun m!4786411 () Bool)

(assert (=> b!4197496 m!4786411))

(assert (=> b!4197197 d!1237865))

(declare-fun d!1237867 () Bool)

(declare-fun lt!1495333 () Int)

(assert (=> d!1237867 (>= lt!1495333 0)))

(declare-fun e!2605546 () Int)

(assert (=> d!1237867 (= lt!1495333 e!2605546)))

(declare-fun c!715931 () Bool)

(assert (=> d!1237867 (= c!715931 ((_ is Nil!46100) pBis!107))))

(assert (=> d!1237867 (= (size!33887 pBis!107) lt!1495333)))

(declare-fun b!4197497 () Bool)

(assert (=> b!4197497 (= e!2605546 0)))

(declare-fun b!4197498 () Bool)

(assert (=> b!4197498 (= e!2605546 (+ 1 (size!33887 (t!346583 pBis!107))))))

(assert (= (and d!1237867 c!715931) b!4197497))

(assert (= (and d!1237867 (not c!715931)) b!4197498))

(declare-fun m!4786413 () Bool)

(assert (=> b!4197498 m!4786413))

(assert (=> b!4197187 d!1237867))

(declare-fun d!1237869 () Bool)

(assert (=> d!1237869 (= (inv!60658 (tag!8556 r!4142)) (= (mod (str.len (value!239753 (tag!8556 r!4142))) 2) 0))))

(assert (=> b!4197185 d!1237869))

(declare-fun d!1237871 () Bool)

(declare-fun res!1723486 () Bool)

(declare-fun e!2605547 () Bool)

(assert (=> d!1237871 (=> (not res!1723486) (not e!2605547))))

(assert (=> d!1237871 (= res!1723486 (semiInverseModEq!3340 (toChars!10251 (transformation!7692 r!4142)) (toValue!10392 (transformation!7692 r!4142))))))

(assert (=> d!1237871 (= (inv!60660 (transformation!7692 r!4142)) e!2605547)))

(declare-fun b!4197499 () Bool)

(assert (=> b!4197499 (= e!2605547 (equivClasses!3239 (toChars!10251 (transformation!7692 r!4142)) (toValue!10392 (transformation!7692 r!4142))))))

(assert (= (and d!1237871 res!1723486) b!4197499))

(declare-fun m!4786415 () Bool)

(assert (=> d!1237871 m!4786415))

(declare-fun m!4786417 () Bool)

(assert (=> b!4197499 m!4786417))

(assert (=> b!4197185 d!1237871))

(declare-fun d!1237873 () Bool)

(declare-fun res!1723487 () Bool)

(declare-fun e!2605548 () Bool)

(assert (=> d!1237873 (=> (not res!1723487) (not e!2605548))))

(assert (=> d!1237873 (= res!1723487 (validRegex!5714 (regex!7692 rBis!167)))))

(assert (=> d!1237873 (= (ruleValid!3410 thiss!25986 rBis!167) e!2605548)))

(declare-fun b!4197500 () Bool)

(declare-fun res!1723488 () Bool)

(assert (=> b!4197500 (=> (not res!1723488) (not e!2605548))))

(assert (=> b!4197500 (= res!1723488 (not (nullable!4431 (regex!7692 rBis!167))))))

(declare-fun b!4197501 () Bool)

(assert (=> b!4197501 (= e!2605548 (not (= (tag!8556 rBis!167) (String!53477 ""))))))

(assert (= (and d!1237873 res!1723487) b!4197500))

(assert (= (and b!4197500 res!1723488) b!4197501))

(declare-fun m!4786421 () Bool)

(assert (=> d!1237873 m!4786421))

(declare-fun m!4786423 () Bool)

(assert (=> b!4197500 m!4786423))

(assert (=> b!4197207 d!1237873))

(declare-fun d!1237877 () Bool)

(declare-fun e!2605600 () Bool)

(assert (=> d!1237877 e!2605600))

(declare-fun res!1723554 () Bool)

(assert (=> d!1237877 (=> res!1723554 e!2605600)))

(declare-fun lt!1495372 () Option!9886)

(assert (=> d!1237877 (= res!1723554 (isEmpty!27302 lt!1495372))))

(declare-fun e!2605599 () Option!9886)

(assert (=> d!1237877 (= lt!1495372 e!2605599)))

(declare-fun c!715948 () Bool)

(assert (=> d!1237877 (= c!715948 (and ((_ is Cons!46101) rules!3843) ((_ is Nil!46101) (t!346584 rules!3843))))))

(declare-fun lt!1495370 () Unit!65201)

(declare-fun lt!1495373 () Unit!65201)

(assert (=> d!1237877 (= lt!1495370 lt!1495373)))

(assert (=> d!1237877 (isPrefix!4549 input!3342 input!3342)))

(assert (=> d!1237877 (= lt!1495373 (lemmaIsPrefixRefl!2978 input!3342 input!3342))))

(declare-fun rulesValidInductive!2846 (LexerInterface!7285 List!46225) Bool)

(assert (=> d!1237877 (rulesValidInductive!2846 thiss!25986 rules!3843)))

(assert (=> d!1237877 (= (maxPrefix!4333 thiss!25986 rules!3843 input!3342) lt!1495372)))

(declare-fun b!4197599 () Bool)

(declare-fun e!2605598 () Bool)

(assert (=> b!4197599 (= e!2605600 e!2605598)))

(declare-fun res!1723559 () Bool)

(assert (=> b!4197599 (=> (not res!1723559) (not e!2605598))))

(declare-fun isDefined!7362 (Option!9886) Bool)

(assert (=> b!4197599 (= res!1723559 (isDefined!7362 lt!1495372))))

(declare-fun b!4197600 () Bool)

(declare-fun res!1723558 () Bool)

(assert (=> b!4197600 (=> (not res!1723558) (not e!2605598))))

(assert (=> b!4197600 (= res!1723558 (= (value!239754 (_1!25079 (get!14997 lt!1495372))) (apply!10657 (transformation!7692 (rule!10788 (_1!25079 (get!14997 lt!1495372)))) (seqFromList!5717 (originalCharacters!8080 (_1!25079 (get!14997 lt!1495372)))))))))

(declare-fun b!4197601 () Bool)

(declare-fun lt!1495371 () Option!9886)

(declare-fun lt!1495374 () Option!9886)

(assert (=> b!4197601 (= e!2605599 (ite (and ((_ is None!9885) lt!1495371) ((_ is None!9885) lt!1495374)) None!9885 (ite ((_ is None!9885) lt!1495374) lt!1495371 (ite ((_ is None!9885) lt!1495371) lt!1495374 (ite (>= (size!33888 (_1!25079 (v!40729 lt!1495371))) (size!33888 (_1!25079 (v!40729 lt!1495374)))) lt!1495371 lt!1495374)))))))

(declare-fun call!292505 () Option!9886)

(assert (=> b!4197601 (= lt!1495371 call!292505)))

(assert (=> b!4197601 (= lt!1495374 (maxPrefix!4333 thiss!25986 (t!346584 rules!3843) input!3342))))

(declare-fun b!4197602 () Bool)

(assert (=> b!4197602 (= e!2605598 (contains!9503 rules!3843 (rule!10788 (_1!25079 (get!14997 lt!1495372)))))))

(declare-fun b!4197603 () Bool)

(declare-fun res!1723560 () Bool)

(assert (=> b!4197603 (=> (not res!1723560) (not e!2605598))))

(assert (=> b!4197603 (= res!1723560 (= (list!16666 (charsOf!5127 (_1!25079 (get!14997 lt!1495372)))) (originalCharacters!8080 (_1!25079 (get!14997 lt!1495372)))))))

(declare-fun bm!292500 () Bool)

(assert (=> bm!292500 (= call!292505 (maxPrefixOneRule!3294 thiss!25986 (h!51521 rules!3843) input!3342))))

(declare-fun b!4197604 () Bool)

(declare-fun res!1723555 () Bool)

(assert (=> b!4197604 (=> (not res!1723555) (not e!2605598))))

(assert (=> b!4197604 (= res!1723555 (< (size!33887 (_2!25079 (get!14997 lt!1495372))) (size!33887 input!3342)))))

(declare-fun b!4197605 () Bool)

(declare-fun res!1723556 () Bool)

(assert (=> b!4197605 (=> (not res!1723556) (not e!2605598))))

(assert (=> b!4197605 (= res!1723556 (matchR!6336 (regex!7692 (rule!10788 (_1!25079 (get!14997 lt!1495372)))) (list!16666 (charsOf!5127 (_1!25079 (get!14997 lt!1495372))))))))

(declare-fun b!4197606 () Bool)

(declare-fun res!1723557 () Bool)

(assert (=> b!4197606 (=> (not res!1723557) (not e!2605598))))

(assert (=> b!4197606 (= res!1723557 (= (++!11764 (list!16666 (charsOf!5127 (_1!25079 (get!14997 lt!1495372)))) (_2!25079 (get!14997 lt!1495372))) input!3342))))

(declare-fun b!4197607 () Bool)

(assert (=> b!4197607 (= e!2605599 call!292505)))

(assert (= (and d!1237877 c!715948) b!4197607))

(assert (= (and d!1237877 (not c!715948)) b!4197601))

(assert (= (or b!4197607 b!4197601) bm!292500))

(assert (= (and d!1237877 (not res!1723554)) b!4197599))

(assert (= (and b!4197599 res!1723559) b!4197603))

(assert (= (and b!4197603 res!1723560) b!4197604))

(assert (= (and b!4197604 res!1723555) b!4197606))

(assert (= (and b!4197606 res!1723557) b!4197600))

(assert (= (and b!4197600 res!1723558) b!4197605))

(assert (= (and b!4197605 res!1723556) b!4197602))

(declare-fun m!4786521 () Bool)

(assert (=> b!4197604 m!4786521))

(declare-fun m!4786523 () Bool)

(assert (=> b!4197604 m!4786523))

(assert (=> b!4197604 m!4786017))

(assert (=> b!4197605 m!4786521))

(declare-fun m!4786525 () Bool)

(assert (=> b!4197605 m!4786525))

(assert (=> b!4197605 m!4786525))

(declare-fun m!4786529 () Bool)

(assert (=> b!4197605 m!4786529))

(assert (=> b!4197605 m!4786529))

(declare-fun m!4786535 () Bool)

(assert (=> b!4197605 m!4786535))

(assert (=> b!4197600 m!4786521))

(declare-fun m!4786539 () Bool)

(assert (=> b!4197600 m!4786539))

(assert (=> b!4197600 m!4786539))

(declare-fun m!4786541 () Bool)

(assert (=> b!4197600 m!4786541))

(declare-fun m!4786543 () Bool)

(assert (=> b!4197599 m!4786543))

(assert (=> b!4197606 m!4786521))

(assert (=> b!4197606 m!4786525))

(assert (=> b!4197606 m!4786525))

(assert (=> b!4197606 m!4786529))

(assert (=> b!4197606 m!4786529))

(declare-fun m!4786545 () Bool)

(assert (=> b!4197606 m!4786545))

(declare-fun m!4786547 () Bool)

(assert (=> b!4197601 m!4786547))

(assert (=> b!4197603 m!4786521))

(assert (=> b!4197603 m!4786525))

(assert (=> b!4197603 m!4786525))

(assert (=> b!4197603 m!4786529))

(declare-fun m!4786549 () Bool)

(assert (=> bm!292500 m!4786549))

(assert (=> b!4197602 m!4786521))

(declare-fun m!4786551 () Bool)

(assert (=> b!4197602 m!4786551))

(declare-fun m!4786553 () Bool)

(assert (=> d!1237877 m!4786553))

(assert (=> d!1237877 m!4786001))

(assert (=> d!1237877 m!4786005))

(declare-fun m!4786555 () Bool)

(assert (=> d!1237877 m!4786555))

(assert (=> b!4197189 d!1237877))

(declare-fun b!4197618 () Bool)

(declare-fun e!2605608 () Bool)

(assert (=> b!4197618 (= e!2605608 (>= (size!33887 input!3342) (size!33887 p!2959)))))

(declare-fun d!1237905 () Bool)

(assert (=> d!1237905 e!2605608))

(declare-fun res!1723568 () Bool)

(assert (=> d!1237905 (=> res!1723568 e!2605608)))

(declare-fun lt!1495376 () Bool)

(assert (=> d!1237905 (= res!1723568 (not lt!1495376))))

(declare-fun e!2605609 () Bool)

(assert (=> d!1237905 (= lt!1495376 e!2605609)))

(declare-fun res!1723571 () Bool)

(assert (=> d!1237905 (=> res!1723571 e!2605609)))

(assert (=> d!1237905 (= res!1723571 ((_ is Nil!46100) p!2959))))

(assert (=> d!1237905 (= (isPrefix!4549 p!2959 input!3342) lt!1495376)))

(declare-fun b!4197617 () Bool)

(declare-fun e!2605607 () Bool)

(assert (=> b!4197617 (= e!2605607 (isPrefix!4549 (tail!6755 p!2959) (tail!6755 input!3342)))))

(declare-fun b!4197616 () Bool)

(declare-fun res!1723570 () Bool)

(assert (=> b!4197616 (=> (not res!1723570) (not e!2605607))))

(assert (=> b!4197616 (= res!1723570 (= (head!8908 p!2959) (head!8908 input!3342)))))

(declare-fun b!4197615 () Bool)

(assert (=> b!4197615 (= e!2605609 e!2605607)))

(declare-fun res!1723569 () Bool)

(assert (=> b!4197615 (=> (not res!1723569) (not e!2605607))))

(assert (=> b!4197615 (= res!1723569 (not ((_ is Nil!46100) input!3342)))))

(assert (= (and d!1237905 (not res!1723571)) b!4197615))

(assert (= (and b!4197615 res!1723569) b!4197616))

(assert (= (and b!4197616 res!1723570) b!4197617))

(assert (= (and d!1237905 (not res!1723568)) b!4197618))

(assert (=> b!4197618 m!4786017))

(assert (=> b!4197618 m!4786007))

(declare-fun m!4786557 () Bool)

(assert (=> b!4197617 m!4786557))

(assert (=> b!4197617 m!4786099))

(assert (=> b!4197617 m!4786557))

(assert (=> b!4197617 m!4786099))

(declare-fun m!4786559 () Bool)

(assert (=> b!4197617 m!4786559))

(declare-fun m!4786561 () Bool)

(assert (=> b!4197616 m!4786561))

(assert (=> b!4197616 m!4786161))

(assert (=> b!4197210 d!1237905))

(declare-fun b!4197692 () Bool)

(declare-fun e!2605650 () Bool)

(declare-fun e!2605652 () Bool)

(assert (=> b!4197692 (= e!2605650 e!2605652)))

(declare-fun res!1723595 () Bool)

(assert (=> b!4197692 (=> res!1723595 e!2605652)))

(declare-fun call!292508 () Bool)

(assert (=> b!4197692 (= res!1723595 call!292508)))

(declare-fun b!4197693 () Bool)

(assert (=> b!4197693 (= e!2605652 (not (= (head!8908 p!2959) (c!715887 (regex!7692 r!4142)))))))

(declare-fun bm!292503 () Bool)

(assert (=> bm!292503 (= call!292508 (isEmpty!27304 p!2959))))

(declare-fun b!4197694 () Bool)

(declare-fun e!2605649 () Bool)

(declare-fun derivativeStep!3821 (Regex!12597 C!25384) Regex!12597)

(assert (=> b!4197694 (= e!2605649 (matchR!6336 (derivativeStep!3821 (regex!7692 r!4142) (head!8908 p!2959)) (tail!6755 p!2959)))))

(declare-fun b!4197695 () Bool)

(declare-fun e!2605655 () Bool)

(assert (=> b!4197695 (= e!2605655 e!2605650)))

(declare-fun res!1723591 () Bool)

(assert (=> b!4197695 (=> (not res!1723591) (not e!2605650))))

(declare-fun lt!1495386 () Bool)

(assert (=> b!4197695 (= res!1723591 (not lt!1495386))))

(declare-fun b!4197696 () Bool)

(declare-fun res!1723596 () Bool)

(assert (=> b!4197696 (=> res!1723596 e!2605655)))

(declare-fun e!2605653 () Bool)

(assert (=> b!4197696 (= res!1723596 e!2605653)))

(declare-fun res!1723593 () Bool)

(assert (=> b!4197696 (=> (not res!1723593) (not e!2605653))))

(assert (=> b!4197696 (= res!1723593 lt!1495386)))

(declare-fun b!4197697 () Bool)

(declare-fun res!1723590 () Bool)

(assert (=> b!4197697 (=> (not res!1723590) (not e!2605653))))

(assert (=> b!4197697 (= res!1723590 (not call!292508))))

(declare-fun b!4197698 () Bool)

(declare-fun res!1723592 () Bool)

(assert (=> b!4197698 (=> res!1723592 e!2605652)))

(assert (=> b!4197698 (= res!1723592 (not (isEmpty!27304 (tail!6755 p!2959))))))

(declare-fun b!4197699 () Bool)

(declare-fun res!1723597 () Bool)

(assert (=> b!4197699 (=> res!1723597 e!2605655)))

(assert (=> b!4197699 (= res!1723597 (not ((_ is ElementMatch!12597) (regex!7692 r!4142))))))

(declare-fun e!2605651 () Bool)

(assert (=> b!4197699 (= e!2605651 e!2605655)))

(declare-fun b!4197700 () Bool)

(declare-fun res!1723594 () Bool)

(assert (=> b!4197700 (=> (not res!1723594) (not e!2605653))))

(assert (=> b!4197700 (= res!1723594 (isEmpty!27304 (tail!6755 p!2959)))))

(declare-fun b!4197701 () Bool)

(assert (=> b!4197701 (= e!2605653 (= (head!8908 p!2959) (c!715887 (regex!7692 r!4142))))))

(declare-fun b!4197702 () Bool)

(declare-fun e!2605654 () Bool)

(assert (=> b!4197702 (= e!2605654 (= lt!1495386 call!292508))))

(declare-fun b!4197703 () Bool)

(assert (=> b!4197703 (= e!2605649 (nullable!4431 (regex!7692 r!4142)))))

(declare-fun b!4197704 () Bool)

(assert (=> b!4197704 (= e!2605651 (not lt!1495386))))

(declare-fun d!1237907 () Bool)

(assert (=> d!1237907 e!2605654))

(declare-fun c!715957 () Bool)

(assert (=> d!1237907 (= c!715957 ((_ is EmptyExpr!12597) (regex!7692 r!4142)))))

(assert (=> d!1237907 (= lt!1495386 e!2605649)))

(declare-fun c!715958 () Bool)

(assert (=> d!1237907 (= c!715958 (isEmpty!27304 p!2959))))

(assert (=> d!1237907 (validRegex!5714 (regex!7692 r!4142))))

(assert (=> d!1237907 (= (matchR!6336 (regex!7692 r!4142) p!2959) lt!1495386)))

(declare-fun b!4197705 () Bool)

(assert (=> b!4197705 (= e!2605654 e!2605651)))

(declare-fun c!715956 () Bool)

(assert (=> b!4197705 (= c!715956 ((_ is EmptyLang!12597) (regex!7692 r!4142)))))

(assert (= (and d!1237907 c!715958) b!4197703))

(assert (= (and d!1237907 (not c!715958)) b!4197694))

(assert (= (and d!1237907 c!715957) b!4197702))

(assert (= (and d!1237907 (not c!715957)) b!4197705))

(assert (= (and b!4197705 c!715956) b!4197704))

(assert (= (and b!4197705 (not c!715956)) b!4197699))

(assert (= (and b!4197699 (not res!1723597)) b!4197696))

(assert (= (and b!4197696 res!1723593) b!4197697))

(assert (= (and b!4197697 res!1723590) b!4197700))

(assert (= (and b!4197700 res!1723594) b!4197701))

(assert (= (and b!4197696 (not res!1723596)) b!4197695))

(assert (= (and b!4197695 res!1723591) b!4197692))

(assert (= (and b!4197692 (not res!1723595)) b!4197698))

(assert (= (and b!4197698 (not res!1723592)) b!4197693))

(assert (= (or b!4197702 b!4197692 b!4197697) bm!292503))

(assert (=> b!4197698 m!4786557))

(assert (=> b!4197698 m!4786557))

(declare-fun m!4786591 () Bool)

(assert (=> b!4197698 m!4786591))

(assert (=> b!4197693 m!4786561))

(assert (=> b!4197700 m!4786557))

(assert (=> b!4197700 m!4786557))

(assert (=> b!4197700 m!4786591))

(declare-fun m!4786593 () Bool)

(assert (=> d!1237907 m!4786593))

(assert (=> d!1237907 m!4786061))

(assert (=> b!4197703 m!4786313))

(assert (=> b!4197701 m!4786561))

(assert (=> b!4197694 m!4786561))

(assert (=> b!4197694 m!4786561))

(declare-fun m!4786595 () Bool)

(assert (=> b!4197694 m!4786595))

(assert (=> b!4197694 m!4786557))

(assert (=> b!4197694 m!4786595))

(assert (=> b!4197694 m!4786557))

(declare-fun m!4786597 () Bool)

(assert (=> b!4197694 m!4786597))

(assert (=> bm!292503 m!4786593))

(assert (=> b!4197179 d!1237907))

(declare-fun d!1237917 () Bool)

(assert (=> d!1237917 (= (inv!60658 (tag!8556 (h!51521 rules!3843))) (= (mod (str.len (value!239753 (tag!8556 (h!51521 rules!3843)))) 2) 0))))

(assert (=> b!4197209 d!1237917))

(declare-fun d!1237919 () Bool)

(declare-fun res!1723598 () Bool)

(declare-fun e!2605656 () Bool)

(assert (=> d!1237919 (=> (not res!1723598) (not e!2605656))))

(assert (=> d!1237919 (= res!1723598 (semiInverseModEq!3340 (toChars!10251 (transformation!7692 (h!51521 rules!3843))) (toValue!10392 (transformation!7692 (h!51521 rules!3843)))))))

(assert (=> d!1237919 (= (inv!60660 (transformation!7692 (h!51521 rules!3843))) e!2605656)))

(declare-fun b!4197706 () Bool)

(assert (=> b!4197706 (= e!2605656 (equivClasses!3239 (toChars!10251 (transformation!7692 (h!51521 rules!3843))) (toValue!10392 (transformation!7692 (h!51521 rules!3843)))))))

(assert (= (and d!1237919 res!1723598) b!4197706))

(declare-fun m!4786599 () Bool)

(assert (=> d!1237919 m!4786599))

(declare-fun m!4786601 () Bool)

(assert (=> b!4197706 m!4786601))

(assert (=> b!4197209 d!1237919))

(declare-fun d!1237921 () Bool)

(declare-fun lt!1495387 () Int)

(assert (=> d!1237921 (>= lt!1495387 0)))

(declare-fun e!2605657 () Int)

(assert (=> d!1237921 (= lt!1495387 e!2605657)))

(declare-fun c!715959 () Bool)

(assert (=> d!1237921 (= c!715959 ((_ is Nil!46100) lt!1495215))))

(assert (=> d!1237921 (= (size!33887 lt!1495215) lt!1495387)))

(declare-fun b!4197707 () Bool)

(assert (=> b!4197707 (= e!2605657 0)))

(declare-fun b!4197708 () Bool)

(assert (=> b!4197708 (= e!2605657 (+ 1 (size!33887 (t!346583 lt!1495215))))))

(assert (= (and d!1237921 c!715959) b!4197707))

(assert (= (and d!1237921 (not c!715959)) b!4197708))

(declare-fun m!4786603 () Bool)

(assert (=> b!4197708 m!4786603))

(assert (=> b!4197198 d!1237921))

(declare-fun b!4197712 () Bool)

(declare-fun e!2605659 () Bool)

(assert (=> b!4197712 (= e!2605659 (>= (size!33887 input!3342) (size!33887 pBis!107)))))

(declare-fun d!1237923 () Bool)

(assert (=> d!1237923 e!2605659))

(declare-fun res!1723599 () Bool)

(assert (=> d!1237923 (=> res!1723599 e!2605659)))

(declare-fun lt!1495388 () Bool)

(assert (=> d!1237923 (= res!1723599 (not lt!1495388))))

(declare-fun e!2605660 () Bool)

(assert (=> d!1237923 (= lt!1495388 e!2605660)))

(declare-fun res!1723602 () Bool)

(assert (=> d!1237923 (=> res!1723602 e!2605660)))

(assert (=> d!1237923 (= res!1723602 ((_ is Nil!46100) pBis!107))))

(assert (=> d!1237923 (= (isPrefix!4549 pBis!107 input!3342) lt!1495388)))

(declare-fun b!4197711 () Bool)

(declare-fun e!2605658 () Bool)

(assert (=> b!4197711 (= e!2605658 (isPrefix!4549 (tail!6755 pBis!107) (tail!6755 input!3342)))))

(declare-fun b!4197710 () Bool)

(declare-fun res!1723601 () Bool)

(assert (=> b!4197710 (=> (not res!1723601) (not e!2605658))))

(assert (=> b!4197710 (= res!1723601 (= (head!8908 pBis!107) (head!8908 input!3342)))))

(declare-fun b!4197709 () Bool)

(assert (=> b!4197709 (= e!2605660 e!2605658)))

(declare-fun res!1723600 () Bool)

(assert (=> b!4197709 (=> (not res!1723600) (not e!2605658))))

(assert (=> b!4197709 (= res!1723600 (not ((_ is Nil!46100) input!3342)))))

(assert (= (and d!1237923 (not res!1723602)) b!4197709))

(assert (= (and b!4197709 res!1723600) b!4197710))

(assert (= (and b!4197710 res!1723601) b!4197711))

(assert (= (and d!1237923 (not res!1723599)) b!4197712))

(assert (=> b!4197712 m!4786017))

(assert (=> b!4197712 m!4785993))

(declare-fun m!4786605 () Bool)

(assert (=> b!4197711 m!4786605))

(assert (=> b!4197711 m!4786099))

(assert (=> b!4197711 m!4786605))

(assert (=> b!4197711 m!4786099))

(declare-fun m!4786607 () Bool)

(assert (=> b!4197711 m!4786607))

(declare-fun m!4786609 () Bool)

(assert (=> b!4197710 m!4786609))

(assert (=> b!4197710 m!4786161))

(assert (=> b!4197188 d!1237923))

(declare-fun b!4197723 () Bool)

(declare-fun b_free!122335 () Bool)

(declare-fun b_next!123039 () Bool)

(assert (=> b!4197723 (= b_free!122335 (not b_next!123039))))

(declare-fun t!346628 () Bool)

(declare-fun tb!251613 () Bool)

(assert (=> (and b!4197723 (= (toValue!10392 (transformation!7692 (h!51521 (t!346584 rules!3843)))) (toValue!10392 (transformation!7692 r!4142))) t!346628) tb!251613))

(declare-fun result!306678 () Bool)

(assert (= result!306678 result!306644))

(assert (=> d!1237769 t!346628))

(assert (=> d!1237793 t!346628))

(declare-fun tp!1282238 () Bool)

(declare-fun b_and!329293 () Bool)

(assert (=> b!4197723 (= tp!1282238 (and (=> t!346628 result!306678) b_and!329293))))

(declare-fun b_free!122337 () Bool)

(declare-fun b_next!123041 () Bool)

(assert (=> b!4197723 (= b_free!122337 (not b_next!123041))))

(declare-fun tb!251615 () Bool)

(declare-fun t!346630 () Bool)

(assert (=> (and b!4197723 (= (toChars!10251 (transformation!7692 (h!51521 (t!346584 rules!3843)))) (toChars!10251 (transformation!7692 r!4142))) t!346630) tb!251615))

(declare-fun result!306680 () Bool)

(assert (= result!306680 result!306630))

(assert (=> d!1237769 t!346630))

(declare-fun t!346632 () Bool)

(declare-fun tb!251617 () Bool)

(assert (=> (and b!4197723 (= (toChars!10251 (transformation!7692 (h!51521 (t!346584 rules!3843)))) (toChars!10251 (transformation!7692 (rule!10788 (_1!25079 lt!1495202))))) t!346632) tb!251617))

(declare-fun result!306682 () Bool)

(assert (= result!306682 result!306652))

(assert (=> d!1237823 t!346632))

(declare-fun tp!1282236 () Bool)

(declare-fun b_and!329295 () Bool)

(assert (=> b!4197723 (= tp!1282236 (and (=> t!346630 result!306680) (=> t!346632 result!306682) b_and!329295))))

(declare-fun e!2605670 () Bool)

(assert (=> b!4197723 (= e!2605670 (and tp!1282238 tp!1282236))))

(declare-fun e!2605671 () Bool)

(declare-fun b!4197722 () Bool)

(declare-fun tp!1282237 () Bool)

(assert (=> b!4197722 (= e!2605671 (and tp!1282237 (inv!60658 (tag!8556 (h!51521 (t!346584 rules!3843)))) (inv!60660 (transformation!7692 (h!51521 (t!346584 rules!3843)))) e!2605670))))

(declare-fun b!4197721 () Bool)

(declare-fun e!2605672 () Bool)

(declare-fun tp!1282235 () Bool)

(assert (=> b!4197721 (= e!2605672 (and e!2605671 tp!1282235))))

(assert (=> b!4197186 (= tp!1282164 e!2605672)))

(assert (= b!4197722 b!4197723))

(assert (= b!4197721 b!4197722))

(assert (= (and b!4197186 ((_ is Cons!46101) (t!346584 rules!3843))) b!4197721))

(declare-fun m!4786611 () Bool)

(assert (=> b!4197722 m!4786611))

(declare-fun m!4786613 () Bool)

(assert (=> b!4197722 m!4786613))

(declare-fun b!4197736 () Bool)

(declare-fun e!2605675 () Bool)

(declare-fun tp!1282251 () Bool)

(assert (=> b!4197736 (= e!2605675 tp!1282251)))

(declare-fun b!4197735 () Bool)

(declare-fun tp!1282249 () Bool)

(declare-fun tp!1282252 () Bool)

(assert (=> b!4197735 (= e!2605675 (and tp!1282249 tp!1282252))))

(declare-fun b!4197734 () Bool)

(assert (=> b!4197734 (= e!2605675 tp_is_empty!22157)))

(assert (=> b!4197185 (= tp!1282165 e!2605675)))

(declare-fun b!4197737 () Bool)

(declare-fun tp!1282250 () Bool)

(declare-fun tp!1282253 () Bool)

(assert (=> b!4197737 (= e!2605675 (and tp!1282250 tp!1282253))))

(assert (= (and b!4197185 ((_ is ElementMatch!12597) (regex!7692 r!4142))) b!4197734))

(assert (= (and b!4197185 ((_ is Concat!20520) (regex!7692 r!4142))) b!4197735))

(assert (= (and b!4197185 ((_ is Star!12597) (regex!7692 r!4142))) b!4197736))

(assert (= (and b!4197185 ((_ is Union!12597) (regex!7692 r!4142))) b!4197737))

(declare-fun b!4197742 () Bool)

(declare-fun e!2605678 () Bool)

(declare-fun tp!1282256 () Bool)

(assert (=> b!4197742 (= e!2605678 (and tp_is_empty!22157 tp!1282256))))

(assert (=> b!4197206 (= tp!1282166 e!2605678)))

(assert (= (and b!4197206 ((_ is Cons!46100) (t!346583 input!3342))) b!4197742))

(declare-fun b!4197743 () Bool)

(declare-fun e!2605679 () Bool)

(declare-fun tp!1282257 () Bool)

(assert (=> b!4197743 (= e!2605679 (and tp_is_empty!22157 tp!1282257))))

(assert (=> b!4197191 (= tp!1282176 e!2605679)))

(assert (= (and b!4197191 ((_ is Cons!46100) (t!346583 p!2959))) b!4197743))

(declare-fun b!4197746 () Bool)

(declare-fun e!2605680 () Bool)

(declare-fun tp!1282260 () Bool)

(assert (=> b!4197746 (= e!2605680 tp!1282260)))

(declare-fun b!4197745 () Bool)

(declare-fun tp!1282258 () Bool)

(declare-fun tp!1282261 () Bool)

(assert (=> b!4197745 (= e!2605680 (and tp!1282258 tp!1282261))))

(declare-fun b!4197744 () Bool)

(assert (=> b!4197744 (= e!2605680 tp_is_empty!22157)))

(assert (=> b!4197209 (= tp!1282172 e!2605680)))

(declare-fun b!4197747 () Bool)

(declare-fun tp!1282259 () Bool)

(declare-fun tp!1282262 () Bool)

(assert (=> b!4197747 (= e!2605680 (and tp!1282259 tp!1282262))))

(assert (= (and b!4197209 ((_ is ElementMatch!12597) (regex!7692 (h!51521 rules!3843)))) b!4197744))

(assert (= (and b!4197209 ((_ is Concat!20520) (regex!7692 (h!51521 rules!3843)))) b!4197745))

(assert (= (and b!4197209 ((_ is Star!12597) (regex!7692 (h!51521 rules!3843)))) b!4197746))

(assert (= (and b!4197209 ((_ is Union!12597) (regex!7692 (h!51521 rules!3843)))) b!4197747))

(declare-fun b!4197750 () Bool)

(declare-fun e!2605681 () Bool)

(declare-fun tp!1282265 () Bool)

(assert (=> b!4197750 (= e!2605681 tp!1282265)))

(declare-fun b!4197749 () Bool)

(declare-fun tp!1282263 () Bool)

(declare-fun tp!1282266 () Bool)

(assert (=> b!4197749 (= e!2605681 (and tp!1282263 tp!1282266))))

(declare-fun b!4197748 () Bool)

(assert (=> b!4197748 (= e!2605681 tp_is_empty!22157)))

(assert (=> b!4197182 (= tp!1282168 e!2605681)))

(declare-fun b!4197751 () Bool)

(declare-fun tp!1282264 () Bool)

(declare-fun tp!1282267 () Bool)

(assert (=> b!4197751 (= e!2605681 (and tp!1282264 tp!1282267))))

(assert (= (and b!4197182 ((_ is ElementMatch!12597) (regex!7692 rBis!167))) b!4197748))

(assert (= (and b!4197182 ((_ is Concat!20520) (regex!7692 rBis!167))) b!4197749))

(assert (= (and b!4197182 ((_ is Star!12597) (regex!7692 rBis!167))) b!4197750))

(assert (= (and b!4197182 ((_ is Union!12597) (regex!7692 rBis!167))) b!4197751))

(declare-fun b!4197752 () Bool)

(declare-fun e!2605682 () Bool)

(declare-fun tp!1282268 () Bool)

(assert (=> b!4197752 (= e!2605682 (and tp_is_empty!22157 tp!1282268))))

(assert (=> b!4197199 (= tp!1282173 e!2605682)))

(assert (= (and b!4197199 ((_ is Cons!46100) (t!346583 pBis!107))) b!4197752))

(declare-fun b_lambda!123557 () Bool)

(assert (= b_lambda!123545 (or (and b!4197208 b_free!122319 (= (toValue!10392 (transformation!7692 (h!51521 rules!3843))) (toValue!10392 (transformation!7692 r!4142)))) (and b!4197204 b_free!122323) (and b!4197200 b_free!122327 (= (toValue!10392 (transformation!7692 rBis!167)) (toValue!10392 (transformation!7692 r!4142)))) (and b!4197723 b_free!122335 (= (toValue!10392 (transformation!7692 (h!51521 (t!346584 rules!3843)))) (toValue!10392 (transformation!7692 r!4142)))) b_lambda!123557)))

(declare-fun b_lambda!123559 () Bool)

(assert (= b_lambda!123541 (or (and b!4197208 b_free!122319 (= (toValue!10392 (transformation!7692 (h!51521 rules!3843))) (toValue!10392 (transformation!7692 r!4142)))) (and b!4197204 b_free!122323) (and b!4197200 b_free!122327 (= (toValue!10392 (transformation!7692 rBis!167)) (toValue!10392 (transformation!7692 r!4142)))) (and b!4197723 b_free!122335 (= (toValue!10392 (transformation!7692 (h!51521 (t!346584 rules!3843)))) (toValue!10392 (transformation!7692 r!4142)))) b_lambda!123559)))

(declare-fun b_lambda!123561 () Bool)

(assert (= b_lambda!123537 (or (and b!4197208 b_free!122321 (= (toChars!10251 (transformation!7692 (h!51521 rules!3843))) (toChars!10251 (transformation!7692 r!4142)))) (and b!4197204 b_free!122325) (and b!4197200 b_free!122329 (= (toChars!10251 (transformation!7692 rBis!167)) (toChars!10251 (transformation!7692 r!4142)))) (and b!4197723 b_free!122337 (= (toChars!10251 (transformation!7692 (h!51521 (t!346584 rules!3843)))) (toChars!10251 (transformation!7692 r!4142)))) b_lambda!123561)))

(check-sat (not b_lambda!123547) (not b!4197616) (not b!4197496) (not d!1237827) (not b!4197500) (not b!4197438) (not b!4197493) (not d!1237757) (not d!1237825) (not d!1237833) (not bm!292500) (not b!4197735) (not tb!251579) (not b_next!123023) (not d!1237841) (not b!4197386) (not b_next!123025) (not b!4197618) (not b!4197466) (not d!1237815) (not b!4197432) (not b_next!123027) (not b!4197433) (not b!4197220) (not b_next!123033) (not b!4197385) (not b!4197606) (not d!1237765) (not b_next!123041) (not b!4197751) (not b!4197469) (not tb!251595) (not d!1237907) (not b!4197321) (not d!1237759) (not b!4197601) (not b!4197721) (not b!4197436) (not d!1237761) b_and!329271 (not b!4197382) (not d!1237865) b_and!329279 (not b!4197694) (not b!4197750) tp_is_empty!22157 (not b!4197703) (not b!4197710) b_and!329295 (not b!4197429) (not d!1237789) (not b!4197743) b_and!329293 (not b!4197430) (not b!4197604) (not b!4197599) b_and!329281 (not d!1237835) (not b!4197467) (not b!4197472) (not b!4197747) (not b!4197498) (not b!4197698) (not b!4197233) (not b_lambda!123557) (not b_next!123031) (not b!4197319) (not b!4197693) (not b!4197708) (not bm!292490) (not b!4197737) (not b!4197742) (not d!1237831) (not b_next!123039) (not d!1237823) (not b!4197483) (not d!1237791) (not bm!292491) (not b!4197381) (not b_lambda!123561) (not b!4197617) (not b!4197603) (not b!4197706) (not b!4197746) (not tb!251589) (not d!1237877) (not b!4197752) (not d!1237919) (not d!1237859) (not b!4197439) (not b!4197471) (not b!4197499) (not b!4197387) b_and!329275 (not b!4197700) (not b!4197470) (not b!4197745) (not d!1237871) (not b!4197428) (not b!4197701) (not b!4197722) (not b!4197444) b_and!329277 (not d!1237795) (not d!1237769) (not d!1237819) (not b!4197464) (not b!4197602) (not b!4197465) (not b!4197419) (not b!4197228) (not b!4197399) (not b!4197605) (not b!4197600) (not d!1237873) (not d!1237809) (not b_lambda!123559) b_and!329273 (not b!4197380) (not b!4197712) (not b!4197307) (not b!4197320) (not b_next!123029) (not bm!292503) (not b!4197711) (not b!4197749) (not b!4197437) (not b!4197221) (not b!4197736) (not b!4197396) (not b!4197379) (not b!4197384))
(check-sat (not b_next!123023) (not b_next!123041) b_and!329295 b_and!329293 b_and!329281 (not b_next!123031) (not b_next!123039) b_and!329275 b_and!329277 b_and!329273 (not b_next!123029) (not b_next!123025) (not b_next!123027) (not b_next!123033) b_and!329271 b_and!329279)
