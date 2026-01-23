; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!365412 () Bool)

(assert start!365412)

(declare-fun b!3901251 () Bool)

(declare-fun b_free!105681 () Bool)

(declare-fun b_next!106385 () Bool)

(assert (=> b!3901251 (= b_free!105681 (not b_next!106385))))

(declare-fun tp!1187119 () Bool)

(declare-fun b_and!295075 () Bool)

(assert (=> b!3901251 (= tp!1187119 b_and!295075)))

(declare-fun b_free!105683 () Bool)

(declare-fun b_next!106387 () Bool)

(assert (=> b!3901251 (= b_free!105683 (not b_next!106387))))

(declare-fun tp!1187110 () Bool)

(declare-fun b_and!295077 () Bool)

(assert (=> b!3901251 (= tp!1187110 b_and!295077)))

(declare-fun b!3901264 () Bool)

(declare-fun b_free!105685 () Bool)

(declare-fun b_next!106389 () Bool)

(assert (=> b!3901264 (= b_free!105685 (not b_next!106389))))

(declare-fun tp!1187123 () Bool)

(declare-fun b_and!295079 () Bool)

(assert (=> b!3901264 (= tp!1187123 b_and!295079)))

(declare-fun b_free!105687 () Bool)

(declare-fun b_next!106391 () Bool)

(assert (=> b!3901264 (= b_free!105687 (not b_next!106391))))

(declare-fun tp!1187113 () Bool)

(declare-fun b_and!295081 () Bool)

(assert (=> b!3901264 (= tp!1187113 b_and!295081)))

(declare-fun b!3901241 () Bool)

(declare-fun b_free!105689 () Bool)

(declare-fun b_next!106393 () Bool)

(assert (=> b!3901241 (= b_free!105689 (not b_next!106393))))

(declare-fun tp!1187124 () Bool)

(declare-fun b_and!295083 () Bool)

(assert (=> b!3901241 (= tp!1187124 b_and!295083)))

(declare-fun b_free!105691 () Bool)

(declare-fun b_next!106395 () Bool)

(assert (=> b!3901241 (= b_free!105691 (not b_next!106395))))

(declare-fun tp!1187112 () Bool)

(declare-fun b_and!295085 () Bool)

(assert (=> b!3901241 (= tp!1187112 b_and!295085)))

(declare-fun b!3901239 () Bool)

(declare-fun b_free!105693 () Bool)

(declare-fun b_next!106397 () Bool)

(assert (=> b!3901239 (= b_free!105693 (not b_next!106397))))

(declare-fun tp!1187122 () Bool)

(declare-fun b_and!295087 () Bool)

(assert (=> b!3901239 (= tp!1187122 b_and!295087)))

(declare-fun b_free!105695 () Bool)

(declare-fun b_next!106399 () Bool)

(assert (=> b!3901239 (= b_free!105695 (not b_next!106399))))

(declare-fun tp!1187118 () Bool)

(declare-fun b_and!295089 () Bool)

(assert (=> b!3901239 (= tp!1187118 b_and!295089)))

(declare-fun b!3901236 () Bool)

(declare-fun e!2412177 () Bool)

(declare-datatypes ((List!41500 0))(
  ( (Nil!41376) (Cons!41376 (h!46796 (_ BitVec 16)) (t!320069 List!41500)) )
))
(declare-datatypes ((TokenValue!6666 0))(
  ( (FloatLiteralValue!13332 (text!47107 List!41500)) (TokenValueExt!6665 (__x!25549 Int)) (Broken!33330 (value!204034 List!41500)) (Object!6789) (End!6666) (Def!6666) (Underscore!6666) (Match!6666) (Else!6666) (Error!6666) (Case!6666) (If!6666) (Extends!6666) (Abstract!6666) (Class!6666) (Val!6666) (DelimiterValue!13332 (del!6726 List!41500)) (KeywordValue!6672 (value!204035 List!41500)) (CommentValue!13332 (value!204036 List!41500)) (WhitespaceValue!13332 (value!204037 List!41500)) (IndentationValue!6666 (value!204038 List!41500)) (String!47047) (Int32!6666) (Broken!33331 (value!204039 List!41500)) (Boolean!6667) (Unit!59497) (OperatorValue!6669 (op!6726 List!41500)) (IdentifierValue!13332 (value!204040 List!41500)) (IdentifierValue!13333 (value!204041 List!41500)) (WhitespaceValue!13333 (value!204042 List!41500)) (True!13332) (False!13332) (Broken!33332 (value!204043 List!41500)) (Broken!33333 (value!204044 List!41500)) (True!13333) (RightBrace!6666) (RightBracket!6666) (Colon!6666) (Null!6666) (Comma!6666) (LeftBracket!6666) (False!13333) (LeftBrace!6666) (ImaginaryLiteralValue!6666 (text!47108 List!41500)) (StringLiteralValue!19998 (value!204045 List!41500)) (EOFValue!6666 (value!204046 List!41500)) (IdentValue!6666 (value!204047 List!41500)) (DelimiterValue!13333 (value!204048 List!41500)) (DedentValue!6666 (value!204049 List!41500)) (NewLineValue!6666 (value!204050 List!41500)) (IntegerValue!19998 (value!204051 (_ BitVec 32)) (text!47109 List!41500)) (IntegerValue!19999 (value!204052 Int) (text!47110 List!41500)) (Times!6666) (Or!6666) (Equal!6666) (Minus!6666) (Broken!33334 (value!204053 List!41500)) (And!6666) (Div!6666) (LessEqual!6666) (Mod!6666) (Concat!18007) (Not!6666) (Plus!6666) (SpaceValue!6666 (value!204054 List!41500)) (IntegerValue!20000 (value!204055 Int) (text!47111 List!41500)) (StringLiteralValue!19999 (text!47112 List!41500)) (FloatLiteralValue!13333 (text!47113 List!41500)) (BytesLiteralValue!6666 (value!204056 List!41500)) (CommentValue!13333 (value!204057 List!41500)) (StringLiteralValue!20000 (value!204058 List!41500)) (ErrorTokenValue!6666 (msg!6727 List!41500)) )
))
(declare-datatypes ((C!22868 0))(
  ( (C!22869 (val!13528 Int)) )
))
(declare-datatypes ((Regex!11341 0))(
  ( (ElementMatch!11341 (c!678162 C!22868)) (Concat!18008 (regOne!23194 Regex!11341) (regTwo!23194 Regex!11341)) (EmptyExpr!11341) (Star!11341 (reg!11670 Regex!11341)) (EmptyLang!11341) (Union!11341 (regOne!23195 Regex!11341) (regTwo!23195 Regex!11341)) )
))
(declare-datatypes ((String!47048 0))(
  ( (String!47049 (value!204059 String)) )
))
(declare-datatypes ((List!41501 0))(
  ( (Nil!41377) (Cons!41377 (h!46797 C!22868) (t!320070 List!41501)) )
))
(declare-datatypes ((IArray!25299 0))(
  ( (IArray!25300 (innerList!12707 List!41501)) )
))
(declare-datatypes ((Conc!12647 0))(
  ( (Node!12647 (left!31703 Conc!12647) (right!32033 Conc!12647) (csize!25524 Int) (cheight!12858 Int)) (Leaf!19572 (xs!15953 IArray!25299) (csize!25525 Int)) (Empty!12647) )
))
(declare-datatypes ((BalanceConc!24888 0))(
  ( (BalanceConc!24889 (c!678163 Conc!12647)) )
))
(declare-datatypes ((TokenValueInjection!12760 0))(
  ( (TokenValueInjection!12761 (toValue!8876 Int) (toChars!8735 Int)) )
))
(declare-datatypes ((Rule!12672 0))(
  ( (Rule!12673 (regex!6436 Regex!11341) (tag!7296 String!47048) (isSeparator!6436 Bool) (transformation!6436 TokenValueInjection!12760)) )
))
(declare-datatypes ((Token!12010 0))(
  ( (Token!12011 (value!204060 TokenValue!6666) (rule!9344 Rule!12672) (size!31067 Int) (originalCharacters!7036 List!41501)) )
))
(declare-datatypes ((tuple2!40618 0))(
  ( (tuple2!40619 (_1!23443 Token!12010) (_2!23443 List!41501)) )
))
(declare-datatypes ((Option!8856 0))(
  ( (None!8855) (Some!8855 (v!39169 tuple2!40618)) )
))
(declare-fun lt!1359128 () Option!8856)

(declare-fun size!31068 (List!41501) Int)

(assert (=> b!3901236 (= e!2412177 (= (size!31067 (_1!23443 (v!39169 lt!1359128))) (size!31068 (originalCharacters!7036 (_1!23443 (v!39169 lt!1359128))))))))

(declare-fun b!3901237 () Bool)

(declare-fun e!2412153 () Bool)

(declare-fun tp_is_empty!19653 () Bool)

(declare-fun tp!1187126 () Bool)

(assert (=> b!3901237 (= e!2412153 (and tp_is_empty!19653 tp!1187126))))

(declare-fun e!2412178 () Bool)

(declare-fun err!4393 () Option!8856)

(declare-fun b!3901238 () Bool)

(declare-fun e!2412161 () Bool)

(declare-fun tp!1187128 () Bool)

(declare-fun inv!55548 (Token!12010) Bool)

(assert (=> b!3901238 (= e!2412178 (and (inv!55548 (_1!23443 (v!39169 err!4393))) e!2412161 tp!1187128))))

(declare-fun e!2412160 () Bool)

(assert (=> b!3901239 (= e!2412160 (and tp!1187122 tp!1187118))))

(declare-fun e!2412152 () Bool)

(assert (=> b!3901241 (= e!2412152 (and tp!1187124 tp!1187112))))

(declare-fun b!3901242 () Bool)

(declare-fun e!2412162 () Bool)

(declare-fun e!2412170 () Bool)

(assert (=> b!3901242 (= e!2412162 e!2412170)))

(declare-fun res!1578235 () Bool)

(assert (=> b!3901242 (=> res!1578235 e!2412170)))

(declare-datatypes ((List!41502 0))(
  ( (Nil!41378) (Cons!41378 (h!46798 Token!12010) (t!320071 List!41502)) )
))
(declare-fun lt!1359127 () List!41502)

(declare-fun lt!1359129 () List!41501)

(declare-datatypes ((tuple2!40620 0))(
  ( (tuple2!40621 (_1!23444 List!41502) (_2!23444 List!41501)) )
))
(declare-fun lt!1359130 () tuple2!40620)

(declare-fun lt!1359135 () List!41502)

(declare-fun prefix!426 () List!41501)

(declare-fun prefixTokens!80 () List!41502)

(declare-fun lt!1359124 () List!41502)

(assert (=> b!3901242 (= res!1578235 (or (not (= lt!1359127 (_1!23444 lt!1359130))) (not (= lt!1359127 lt!1359124)) (not (= prefixTokens!80 lt!1359135)) (not (= prefix!426 lt!1359129))))))

(assert (=> b!3901242 (= lt!1359129 prefix!426)))

(declare-fun suffix!1176 () List!41501)

(declare-datatypes ((Unit!59498 0))(
  ( (Unit!59499) )
))
(declare-fun lt!1359132 () Unit!59498)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!508 (List!41501 List!41501 List!41501 List!41501) Unit!59498)

(assert (=> b!3901242 (= lt!1359132 (lemmaConcatSameAndSameSizesThenSameLists!508 lt!1359129 (_2!23443 (v!39169 lt!1359128)) prefix!426 suffix!1176))))

(declare-fun tp!1187120 () Bool)

(declare-datatypes ((List!41503 0))(
  ( (Nil!41379) (Cons!41379 (h!46799 Rule!12672) (t!320072 List!41503)) )
))
(declare-fun rules!2768 () List!41503)

(declare-fun e!2412156 () Bool)

(declare-fun e!2412147 () Bool)

(declare-fun b!3901243 () Bool)

(declare-fun inv!55545 (String!47048) Bool)

(declare-fun inv!55549 (TokenValueInjection!12760) Bool)

(assert (=> b!3901243 (= e!2412147 (and tp!1187120 (inv!55545 (tag!7296 (h!46799 rules!2768))) (inv!55549 (transformation!6436 (h!46799 rules!2768))) e!2412156))))

(declare-fun b!3901244 () Bool)

(declare-fun e!2412149 () Bool)

(assert (=> b!3901244 (= e!2412149 e!2412162)))

(declare-fun res!1578248 () Bool)

(assert (=> b!3901244 (=> res!1578248 e!2412162)))

(assert (=> b!3901244 (= res!1578248 (not (= lt!1359128 (Some!8855 (tuple2!40619 (_1!23443 (v!39169 lt!1359128)) (_2!23443 (v!39169 lt!1359128)))))))))

(declare-fun e!2412163 () Bool)

(assert (=> b!3901244 e!2412163))

(declare-fun res!1578246 () Bool)

(assert (=> b!3901244 (=> (not res!1578246) (not e!2412163))))

(declare-fun lt!1359117 () List!41501)

(declare-fun isPrefix!3531 (List!41501 List!41501) Bool)

(assert (=> b!3901244 (= res!1578246 (isPrefix!3531 lt!1359117 lt!1359117))))

(declare-fun lt!1359133 () Unit!59498)

(declare-fun lemmaIsPrefixRefl!2238 (List!41501 List!41501) Unit!59498)

(assert (=> b!3901244 (= lt!1359133 (lemmaIsPrefixRefl!2238 lt!1359117 lt!1359117))))

(declare-fun lt!1359113 () tuple2!40620)

(assert (=> b!3901244 (= lt!1359130 (tuple2!40621 (Cons!41378 (_1!23443 (v!39169 lt!1359128)) (_1!23444 lt!1359113)) (_2!23444 lt!1359113)))))

(declare-fun b!3901245 () Bool)

(declare-fun res!1578238 () Bool)

(declare-fun e!2412164 () Bool)

(assert (=> b!3901245 (=> (not res!1578238) (not e!2412164))))

(declare-fun isEmpty!24596 (List!41501) Bool)

(assert (=> b!3901245 (= res!1578238 (not (isEmpty!24596 prefix!426)))))

(declare-fun b!3901246 () Bool)

(declare-fun e!2412173 () Option!8856)

(declare-fun e!2412165 () Option!8856)

(assert (=> b!3901246 (= e!2412173 e!2412165)))

(declare-fun c!678160 () Bool)

(get-info :version)

(assert (=> b!3901246 (= c!678160 ((_ is Cons!41379) rules!2768))))

(declare-fun b!3901247 () Bool)

(declare-fun lt!1359119 () Option!8856)

(declare-datatypes ((LexerInterface!6025 0))(
  ( (LexerInterfaceExt!6022 (__x!25550 Int)) (Lexer!6023) )
))
(declare-fun thiss!20629 () LexerInterface!6025)

(declare-fun maxPrefix!3329 (LexerInterface!6025 List!41503 List!41501) Option!8856)

(assert (=> b!3901247 (= lt!1359119 (maxPrefix!3329 thiss!20629 (t!320072 rules!2768) lt!1359117))))

(declare-fun lt!1359118 () Option!8856)

(declare-fun call!283862 () Option!8856)

(assert (=> b!3901247 (= lt!1359118 call!283862)))

(assert (=> b!3901247 (= e!2412165 (ite (and ((_ is None!8855) lt!1359118) ((_ is None!8855) lt!1359119)) None!8855 (ite ((_ is None!8855) lt!1359119) lt!1359118 (ite ((_ is None!8855) lt!1359118) lt!1359119 (ite (>= (size!31067 (_1!23443 (v!39169 lt!1359118))) (size!31067 (_1!23443 (v!39169 lt!1359119)))) (Some!8855 (v!39169 lt!1359118)) lt!1359119)))))))

(declare-fun b!3901248 () Bool)

(declare-fun res!1578245 () Bool)

(assert (=> b!3901248 (=> res!1578245 e!2412170)))

(assert (=> b!3901248 (= res!1578245 (not (isPrefix!3531 Nil!41377 suffix!1176)))))

(declare-fun b!3901249 () Bool)

(declare-fun e!2412180 () Bool)

(assert (=> b!3901249 (= e!2412180 e!2412149)))

(declare-fun res!1578244 () Bool)

(assert (=> b!3901249 (=> res!1578244 e!2412149)))

(assert (=> b!3901249 (= res!1578244 (or (not (= lt!1359130 (tuple2!40621 lt!1359124 (_2!23444 lt!1359113)))) (not (= lt!1359113 (tuple2!40621 (_1!23444 lt!1359113) (_2!23444 lt!1359113)))) (not (= (_2!23443 (v!39169 lt!1359128)) suffix!1176))))))

(declare-fun ++!10629 (List!41502 List!41502) List!41502)

(assert (=> b!3901249 (= lt!1359124 (++!10629 lt!1359135 (_1!23444 lt!1359113)))))

(assert (=> b!3901249 (= lt!1359135 (Cons!41378 (_1!23443 (v!39169 lt!1359128)) Nil!41378))))

(declare-fun b!3901250 () Bool)

(assert (=> b!3901250 (= e!2412173 call!283862)))

(assert (=> b!3901251 (= e!2412156 (and tp!1187119 tp!1187110))))

(declare-fun tp!1187121 () Bool)

(declare-fun b!3901252 () Bool)

(declare-fun e!2412145 () Bool)

(assert (=> b!3901252 (= e!2412145 (and tp!1187121 (inv!55545 (tag!7296 (rule!9344 (_1!23443 (v!39169 err!4393))))) (inv!55549 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))) e!2412160))))

(declare-fun b!3901253 () Bool)

(declare-fun e!2412174 () Bool)

(declare-fun e!2412167 () Bool)

(assert (=> b!3901253 (= e!2412174 e!2412167)))

(declare-fun res!1578242 () Bool)

(assert (=> b!3901253 (=> res!1578242 e!2412167)))

(declare-fun lt!1359126 () tuple2!40618)

(assert (=> b!3901253 (= res!1578242 (not (= (_1!23443 lt!1359126) (_1!23443 (v!39169 lt!1359128)))))))

(declare-fun lt!1359114 () Option!8856)

(declare-fun get!13680 (Option!8856) tuple2!40618)

(assert (=> b!3901253 (= lt!1359126 (get!13680 lt!1359114))))

(declare-fun b!3901254 () Bool)

(declare-fun e!2412150 () Bool)

(assert (=> b!3901254 (= e!2412150 (not e!2412180))))

(declare-fun res!1578241 () Bool)

(assert (=> b!3901254 (=> res!1578241 e!2412180)))

(declare-fun lt!1359121 () List!41501)

(assert (=> b!3901254 (= res!1578241 (not (= lt!1359121 lt!1359117)))))

(declare-fun lexList!1793 (LexerInterface!6025 List!41503 List!41501) tuple2!40620)

(assert (=> b!3901254 (= lt!1359113 (lexList!1793 thiss!20629 rules!2768 (_2!23443 (v!39169 lt!1359128))))))

(declare-fun lt!1359131 () TokenValue!6666)

(declare-fun lt!1359125 () Int)

(declare-fun lt!1359134 () List!41501)

(assert (=> b!3901254 (and (= (size!31067 (_1!23443 (v!39169 lt!1359128))) lt!1359125) (= (originalCharacters!7036 (_1!23443 (v!39169 lt!1359128))) lt!1359129) (= (tuple2!40619 (_1!23443 (v!39169 lt!1359128)) (_2!23443 (v!39169 lt!1359128))) (tuple2!40619 (Token!12011 lt!1359131 (rule!9344 (_1!23443 (v!39169 lt!1359128))) lt!1359125 lt!1359129) lt!1359134)))))

(assert (=> b!3901254 (= lt!1359125 (size!31068 lt!1359129))))

(assert (=> b!3901254 e!2412177))

(declare-fun res!1578249 () Bool)

(assert (=> b!3901254 (=> (not res!1578249) (not e!2412177))))

(assert (=> b!3901254 (= res!1578249 (= (value!204060 (_1!23443 (v!39169 lt!1359128))) lt!1359131))))

(declare-fun apply!9675 (TokenValueInjection!12760 BalanceConc!24888) TokenValue!6666)

(declare-fun seqFromList!4703 (List!41501) BalanceConc!24888)

(assert (=> b!3901254 (= lt!1359131 (apply!9675 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))) (seqFromList!4703 lt!1359129)))))

(assert (=> b!3901254 (= (_2!23443 (v!39169 lt!1359128)) lt!1359134)))

(declare-fun lt!1359122 () Unit!59498)

(declare-fun lemmaSamePrefixThenSameSuffix!1752 (List!41501 List!41501 List!41501 List!41501 List!41501) Unit!59498)

(assert (=> b!3901254 (= lt!1359122 (lemmaSamePrefixThenSameSuffix!1752 lt!1359129 (_2!23443 (v!39169 lt!1359128)) lt!1359129 lt!1359134 lt!1359117))))

(declare-fun getSuffix!1986 (List!41501 List!41501) List!41501)

(assert (=> b!3901254 (= lt!1359134 (getSuffix!1986 lt!1359117 lt!1359129))))

(assert (=> b!3901254 (isPrefix!3531 lt!1359129 lt!1359121)))

(declare-fun ++!10630 (List!41501 List!41501) List!41501)

(assert (=> b!3901254 (= lt!1359121 (++!10630 lt!1359129 (_2!23443 (v!39169 lt!1359128))))))

(declare-fun lt!1359115 () Unit!59498)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2394 (List!41501 List!41501) Unit!59498)

(assert (=> b!3901254 (= lt!1359115 (lemmaConcatTwoListThenFirstIsPrefix!2394 lt!1359129 (_2!23443 (v!39169 lt!1359128))))))

(declare-fun list!15380 (BalanceConc!24888) List!41501)

(declare-fun charsOf!4260 (Token!12010) BalanceConc!24888)

(assert (=> b!3901254 (= lt!1359129 (list!15380 (charsOf!4260 (_1!23443 (v!39169 lt!1359128)))))))

(declare-fun ruleValid!2384 (LexerInterface!6025 Rule!12672) Bool)

(assert (=> b!3901254 (ruleValid!2384 thiss!20629 (rule!9344 (_1!23443 (v!39169 lt!1359128))))))

(declare-fun lt!1359116 () Unit!59498)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1464 (LexerInterface!6025 Rule!12672 List!41503) Unit!59498)

(assert (=> b!3901254 (= lt!1359116 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1464 thiss!20629 (rule!9344 (_1!23443 (v!39169 lt!1359128))) rules!2768))))

(declare-fun lt!1359120 () Unit!59498)

(declare-fun lemmaCharactersSize!1093 (Token!12010) Unit!59498)

(assert (=> b!3901254 (= lt!1359120 (lemmaCharactersSize!1093 (_1!23443 (v!39169 lt!1359128))))))

(declare-fun b!3901255 () Bool)

(declare-fun res!1578236 () Bool)

(assert (=> b!3901255 (=> (not res!1578236) (not e!2412164))))

(declare-fun isEmpty!24597 (List!41503) Bool)

(assert (=> b!3901255 (= res!1578236 (not (isEmpty!24597 rules!2768)))))

(declare-fun b!3901256 () Bool)

(assert (=> b!3901256 (= e!2412170 e!2412174)))

(declare-fun res!1578247 () Bool)

(assert (=> b!3901256 (=> res!1578247 e!2412174)))

(declare-fun isDefined!6907 (Option!8856) Bool)

(assert (=> b!3901256 (= res!1578247 (not (isDefined!6907 lt!1359114)))))

(assert (=> b!3901256 (= lt!1359114 (maxPrefix!3329 thiss!20629 rules!2768 prefix!426))))

(assert (=> b!3901256 (= (maxPrefix!3329 thiss!20629 rules!2768 (++!10630 prefix!426 Nil!41377)) (Some!8855 (tuple2!40619 (_1!23443 (v!39169 lt!1359128)) Nil!41377)))))

(declare-fun lt!1359123 () Unit!59498)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!38 (LexerInterface!6025 List!41503 List!41501 List!41501 List!41501 Token!12010 List!41501 List!41501) Unit!59498)

(assert (=> b!3901256 (= lt!1359123 (lemmaMaxPrefixThenWithShorterSuffix!38 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41377 (_1!23443 (v!39169 lt!1359128)) suffix!1176 Nil!41377))))

(declare-fun b!3901257 () Bool)

(declare-fun e!2412171 () Bool)

(declare-fun tp!1187114 () Bool)

(assert (=> b!3901257 (= e!2412171 (and tp_is_empty!19653 tp!1187114))))

(declare-fun b!3901258 () Bool)

(declare-fun e!2412151 () Bool)

(assert (=> b!3901258 (= e!2412151 e!2412150)))

(declare-fun res!1578239 () Bool)

(assert (=> b!3901258 (=> (not res!1578239) (not e!2412150))))

(assert (=> b!3901258 (= res!1578239 ((_ is Some!8855) lt!1359128))))

(assert (=> b!3901258 (= lt!1359128 (maxPrefix!3329 thiss!20629 rules!2768 lt!1359117))))

(declare-fun b!3901259 () Bool)

(assert (=> b!3901259 (= e!2412167 (isEmpty!24596 (_2!23443 lt!1359126)))))

(declare-fun b!3901260 () Bool)

(declare-fun e!2412182 () Bool)

(declare-fun tp!1187129 () Bool)

(assert (=> b!3901260 (= e!2412182 (and e!2412147 tp!1187129))))

(declare-fun b!3901261 () Bool)

(declare-fun tp!1187109 () Bool)

(declare-fun inv!21 (TokenValue!6666) Bool)

(assert (=> b!3901261 (= e!2412161 (and (inv!21 (value!204060 (_1!23443 (v!39169 err!4393)))) e!2412145 tp!1187109))))

(declare-fun b!3901262 () Bool)

(assert (=> b!3901262 (= e!2412163 (= lt!1359128 e!2412173))))

(declare-fun c!678161 () Bool)

(assert (=> b!3901262 (= c!678161 (and ((_ is Cons!41379) rules!2768) ((_ is Nil!41379) (t!320072 rules!2768))))))

(declare-fun res!1578234 () Bool)

(assert (=> start!365412 (=> (not res!1578234) (not e!2412164))))

(assert (=> start!365412 (= res!1578234 ((_ is Lexer!6023) thiss!20629))))

(assert (=> start!365412 e!2412164))

(assert (=> start!365412 e!2412171))

(assert (=> start!365412 true))

(declare-fun e!2412179 () Bool)

(assert (=> start!365412 e!2412179))

(assert (=> start!365412 e!2412182))

(declare-fun e!2412172 () Bool)

(assert (=> start!365412 e!2412172))

(declare-fun e!2412159 () Bool)

(assert (=> start!365412 e!2412159))

(assert (=> start!365412 e!2412153))

(declare-fun tp!1187125 () Bool)

(declare-fun suffixTokens!72 () List!41502)

(declare-fun b!3901240 () Bool)

(declare-fun e!2412157 () Bool)

(assert (=> b!3901240 (= e!2412157 (and tp!1187125 (inv!55545 (tag!7296 (rule!9344 (h!46798 suffixTokens!72)))) (inv!55549 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))) e!2412152))))

(declare-fun b!3901263 () Bool)

(assert (=> b!3901263 true))

(assert (=> b!3901263 e!2412178))

(assert (=> b!3901263 (= e!2412165 err!4393)))

(declare-fun e!2412166 () Bool)

(assert (=> b!3901264 (= e!2412166 (and tp!1187123 tp!1187113))))

(declare-fun b!3901265 () Bool)

(assert (=> b!3901265 (= e!2412164 e!2412151)))

(declare-fun res!1578240 () Bool)

(assert (=> b!3901265 (=> (not res!1578240) (not e!2412151))))

(declare-fun suffixResult!91 () List!41501)

(assert (=> b!3901265 (= res!1578240 (= lt!1359130 (tuple2!40621 lt!1359127 suffixResult!91)))))

(assert (=> b!3901265 (= lt!1359130 (lexList!1793 thiss!20629 rules!2768 lt!1359117))))

(assert (=> b!3901265 (= lt!1359127 (++!10629 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3901265 (= lt!1359117 (++!10630 prefix!426 suffix!1176))))

(declare-fun b!3901266 () Bool)

(declare-fun res!1578243 () Bool)

(assert (=> b!3901266 (=> (not res!1578243) (not e!2412151))))

(assert (=> b!3901266 (= res!1578243 (= (lexList!1793 thiss!20629 rules!2768 suffix!1176) (tuple2!40621 suffixTokens!72 suffixResult!91)))))

(declare-fun bm!283857 () Bool)

(declare-fun maxPrefixOneRule!2405 (LexerInterface!6025 Rule!12672 List!41501) Option!8856)

(assert (=> bm!283857 (= call!283862 (maxPrefixOneRule!2405 thiss!20629 (h!46799 rules!2768) lt!1359117))))

(declare-fun b!3901267 () Bool)

(declare-fun res!1578237 () Bool)

(assert (=> b!3901267 (=> (not res!1578237) (not e!2412164))))

(declare-fun rulesInvariant!5368 (LexerInterface!6025 List!41503) Bool)

(assert (=> b!3901267 (= res!1578237 (rulesInvariant!5368 thiss!20629 rules!2768))))

(declare-fun b!3901268 () Bool)

(declare-fun tp!1187116 () Bool)

(assert (=> b!3901268 (= e!2412179 (and tp_is_empty!19653 tp!1187116))))

(declare-fun e!2412176 () Bool)

(declare-fun tp!1187111 () Bool)

(declare-fun b!3901269 () Bool)

(assert (=> b!3901269 (= e!2412176 (and tp!1187111 (inv!55545 (tag!7296 (rule!9344 (h!46798 prefixTokens!80)))) (inv!55549 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))) e!2412166))))

(declare-fun b!3901270 () Bool)

(declare-fun res!1578233 () Bool)

(assert (=> b!3901270 (=> (not res!1578233) (not e!2412164))))

(declare-fun isEmpty!24598 (List!41502) Bool)

(assert (=> b!3901270 (= res!1578233 (not (isEmpty!24598 prefixTokens!80)))))

(declare-fun tp!1187115 () Bool)

(declare-fun b!3901271 () Bool)

(declare-fun e!2412169 () Bool)

(assert (=> b!3901271 (= e!2412169 (and (inv!21 (value!204060 (h!46798 suffixTokens!72))) e!2412157 tp!1187115))))

(declare-fun e!2412181 () Bool)

(declare-fun b!3901272 () Bool)

(declare-fun tp!1187127 () Bool)

(assert (=> b!3901272 (= e!2412181 (and (inv!21 (value!204060 (h!46798 prefixTokens!80))) e!2412176 tp!1187127))))

(declare-fun tp!1187117 () Bool)

(declare-fun b!3901273 () Bool)

(assert (=> b!3901273 (= e!2412172 (and (inv!55548 (h!46798 prefixTokens!80)) e!2412181 tp!1187117))))

(declare-fun b!3901274 () Bool)

(declare-fun tp!1187130 () Bool)

(assert (=> b!3901274 (= e!2412159 (and (inv!55548 (h!46798 suffixTokens!72)) e!2412169 tp!1187130))))

(assert (= (and start!365412 res!1578234) b!3901255))

(assert (= (and b!3901255 res!1578236) b!3901267))

(assert (= (and b!3901267 res!1578237) b!3901270))

(assert (= (and b!3901270 res!1578233) b!3901245))

(assert (= (and b!3901245 res!1578238) b!3901265))

(assert (= (and b!3901265 res!1578240) b!3901266))

(assert (= (and b!3901266 res!1578243) b!3901258))

(assert (= (and b!3901258 res!1578239) b!3901254))

(assert (= (and b!3901254 res!1578249) b!3901236))

(assert (= (and b!3901254 (not res!1578241)) b!3901249))

(assert (= (and b!3901249 (not res!1578244)) b!3901244))

(assert (= (and b!3901244 res!1578246) b!3901262))

(assert (= (and b!3901262 c!678161) b!3901250))

(assert (= (and b!3901262 (not c!678161)) b!3901246))

(assert (= (and b!3901246 c!678160) b!3901247))

(assert (= (and b!3901246 (not c!678160)) b!3901263))

(assert (= b!3901252 b!3901239))

(assert (= b!3901261 b!3901252))

(assert (= b!3901238 b!3901261))

(assert (= (and b!3901263 ((_ is Some!8855) err!4393)) b!3901238))

(assert (= (or b!3901250 b!3901247) bm!283857))

(assert (= (and b!3901244 (not res!1578248)) b!3901242))

(assert (= (and b!3901242 (not res!1578235)) b!3901248))

(assert (= (and b!3901248 (not res!1578245)) b!3901256))

(assert (= (and b!3901256 (not res!1578247)) b!3901253))

(assert (= (and b!3901253 (not res!1578242)) b!3901259))

(assert (= (and start!365412 ((_ is Cons!41377) suffixResult!91)) b!3901257))

(assert (= (and start!365412 ((_ is Cons!41377) suffix!1176)) b!3901268))

(assert (= b!3901243 b!3901251))

(assert (= b!3901260 b!3901243))

(assert (= (and start!365412 ((_ is Cons!41379) rules!2768)) b!3901260))

(assert (= b!3901269 b!3901264))

(assert (= b!3901272 b!3901269))

(assert (= b!3901273 b!3901272))

(assert (= (and start!365412 ((_ is Cons!41378) prefixTokens!80)) b!3901273))

(assert (= b!3901240 b!3901241))

(assert (= b!3901271 b!3901240))

(assert (= b!3901274 b!3901271))

(assert (= (and start!365412 ((_ is Cons!41378) suffixTokens!72)) b!3901274))

(assert (= (and start!365412 ((_ is Cons!41377) prefix!426)) b!3901237))

(declare-fun m!4461405 () Bool)

(assert (=> b!3901261 m!4461405))

(declare-fun m!4461407 () Bool)

(assert (=> b!3901244 m!4461407))

(declare-fun m!4461409 () Bool)

(assert (=> b!3901244 m!4461409))

(declare-fun m!4461411 () Bool)

(assert (=> b!3901258 m!4461411))

(declare-fun m!4461413 () Bool)

(assert (=> b!3901238 m!4461413))

(declare-fun m!4461415 () Bool)

(assert (=> b!3901247 m!4461415))

(declare-fun m!4461417 () Bool)

(assert (=> b!3901265 m!4461417))

(declare-fun m!4461419 () Bool)

(assert (=> b!3901265 m!4461419))

(declare-fun m!4461421 () Bool)

(assert (=> b!3901265 m!4461421))

(declare-fun m!4461423 () Bool)

(assert (=> b!3901245 m!4461423))

(declare-fun m!4461425 () Bool)

(assert (=> b!3901271 m!4461425))

(declare-fun m!4461427 () Bool)

(assert (=> b!3901269 m!4461427))

(declare-fun m!4461429 () Bool)

(assert (=> b!3901269 m!4461429))

(declare-fun m!4461431 () Bool)

(assert (=> b!3901240 m!4461431))

(declare-fun m!4461433 () Bool)

(assert (=> b!3901240 m!4461433))

(declare-fun m!4461435 () Bool)

(assert (=> b!3901254 m!4461435))

(declare-fun m!4461437 () Bool)

(assert (=> b!3901254 m!4461437))

(declare-fun m!4461439 () Bool)

(assert (=> b!3901254 m!4461439))

(declare-fun m!4461441 () Bool)

(assert (=> b!3901254 m!4461441))

(declare-fun m!4461443 () Bool)

(assert (=> b!3901254 m!4461443))

(declare-fun m!4461445 () Bool)

(assert (=> b!3901254 m!4461445))

(declare-fun m!4461447 () Bool)

(assert (=> b!3901254 m!4461447))

(assert (=> b!3901254 m!4461437))

(declare-fun m!4461449 () Bool)

(assert (=> b!3901254 m!4461449))

(declare-fun m!4461451 () Bool)

(assert (=> b!3901254 m!4461451))

(declare-fun m!4461453 () Bool)

(assert (=> b!3901254 m!4461453))

(declare-fun m!4461455 () Bool)

(assert (=> b!3901254 m!4461455))

(declare-fun m!4461457 () Bool)

(assert (=> b!3901254 m!4461457))

(assert (=> b!3901254 m!4461443))

(declare-fun m!4461459 () Bool)

(assert (=> b!3901254 m!4461459))

(declare-fun m!4461461 () Bool)

(assert (=> b!3901254 m!4461461))

(declare-fun m!4461463 () Bool)

(assert (=> b!3901248 m!4461463))

(declare-fun m!4461465 () Bool)

(assert (=> b!3901266 m!4461465))

(declare-fun m!4461467 () Bool)

(assert (=> b!3901252 m!4461467))

(declare-fun m!4461469 () Bool)

(assert (=> b!3901252 m!4461469))

(declare-fun m!4461471 () Bool)

(assert (=> b!3901253 m!4461471))

(declare-fun m!4461473 () Bool)

(assert (=> b!3901256 m!4461473))

(declare-fun m!4461475 () Bool)

(assert (=> b!3901256 m!4461475))

(declare-fun m!4461477 () Bool)

(assert (=> b!3901256 m!4461477))

(assert (=> b!3901256 m!4461475))

(declare-fun m!4461479 () Bool)

(assert (=> b!3901256 m!4461479))

(declare-fun m!4461481 () Bool)

(assert (=> b!3901256 m!4461481))

(declare-fun m!4461483 () Bool)

(assert (=> b!3901273 m!4461483))

(declare-fun m!4461485 () Bool)

(assert (=> b!3901249 m!4461485))

(declare-fun m!4461487 () Bool)

(assert (=> b!3901242 m!4461487))

(declare-fun m!4461489 () Bool)

(assert (=> b!3901259 m!4461489))

(declare-fun m!4461491 () Bool)

(assert (=> b!3901272 m!4461491))

(declare-fun m!4461493 () Bool)

(assert (=> b!3901243 m!4461493))

(declare-fun m!4461495 () Bool)

(assert (=> b!3901243 m!4461495))

(declare-fun m!4461497 () Bool)

(assert (=> b!3901255 m!4461497))

(declare-fun m!4461499 () Bool)

(assert (=> b!3901236 m!4461499))

(declare-fun m!4461501 () Bool)

(assert (=> b!3901274 m!4461501))

(declare-fun m!4461503 () Bool)

(assert (=> b!3901270 m!4461503))

(declare-fun m!4461505 () Bool)

(assert (=> bm!283857 m!4461505))

(declare-fun m!4461507 () Bool)

(assert (=> b!3901267 m!4461507))

(check-sat (not bm!283857) (not b!3901268) (not b!3901244) (not b!3901248) (not b!3901267) (not b_next!106397) (not b_next!106399) (not b!3901247) (not b!3901274) (not b!3901272) (not b!3901270) (not b_next!106393) b_and!295089 (not b_next!106387) (not b_next!106395) (not b!3901236) (not b!3901237) (not b!3901255) (not b!3901243) (not b!3901259) (not b!3901253) b_and!295081 (not b!3901271) (not b!3901240) (not b_next!106389) (not b!3901269) (not b!3901257) (not b!3901261) (not b!3901249) (not b!3901266) b_and!295075 (not b!3901273) b_and!295085 b_and!295079 (not b_next!106385) (not b!3901245) (not b!3901258) b_and!295087 (not b!3901238) (not b!3901265) (not b_next!106391) tp_is_empty!19653 (not b!3901260) (not b!3901252) (not b!3901256) (not b!3901242) (not b!3901254) b_and!295077 b_and!295083)
(check-sat (not b_next!106395) b_and!295081 (not b_next!106389) b_and!295075 (not b_next!106397) b_and!295087 (not b_next!106399) (not b_next!106391) (not b_next!106393) b_and!295089 (not b_next!106387) b_and!295085 b_and!295079 (not b_next!106385) b_and!295077 b_and!295083)
(get-model)

(declare-fun b!3901456 () Bool)

(declare-fun e!2412277 () Bool)

(declare-fun lt!1359208 () Option!8856)

(declare-fun contains!8317 (List!41503 Rule!12672) Bool)

(assert (=> b!3901456 (= e!2412277 (contains!8317 rules!2768 (rule!9344 (_1!23443 (get!13680 lt!1359208)))))))

(declare-fun b!3901457 () Bool)

(declare-fun e!2412278 () Bool)

(assert (=> b!3901457 (= e!2412278 e!2412277)))

(declare-fun res!1578364 () Bool)

(assert (=> b!3901457 (=> (not res!1578364) (not e!2412277))))

(assert (=> b!3901457 (= res!1578364 (isDefined!6907 lt!1359208))))

(declare-fun d!1156255 () Bool)

(assert (=> d!1156255 e!2412278))

(declare-fun res!1578365 () Bool)

(assert (=> d!1156255 (=> res!1578365 e!2412278)))

(declare-fun isEmpty!24600 (Option!8856) Bool)

(assert (=> d!1156255 (= res!1578365 (isEmpty!24600 lt!1359208))))

(declare-fun e!2412276 () Option!8856)

(assert (=> d!1156255 (= lt!1359208 e!2412276)))

(declare-fun c!678198 () Bool)

(assert (=> d!1156255 (= c!678198 (and ((_ is Cons!41379) rules!2768) ((_ is Nil!41379) (t!320072 rules!2768))))))

(declare-fun lt!1359209 () Unit!59498)

(declare-fun lt!1359211 () Unit!59498)

(assert (=> d!1156255 (= lt!1359209 lt!1359211)))

(assert (=> d!1156255 (isPrefix!3531 lt!1359117 lt!1359117)))

(assert (=> d!1156255 (= lt!1359211 (lemmaIsPrefixRefl!2238 lt!1359117 lt!1359117))))

(declare-fun rulesValidInductive!2308 (LexerInterface!6025 List!41503) Bool)

(assert (=> d!1156255 (rulesValidInductive!2308 thiss!20629 rules!2768)))

(assert (=> d!1156255 (= (maxPrefix!3329 thiss!20629 rules!2768 lt!1359117) lt!1359208)))

(declare-fun b!3901458 () Bool)

(declare-fun res!1578363 () Bool)

(assert (=> b!3901458 (=> (not res!1578363) (not e!2412277))))

(declare-fun matchR!5436 (Regex!11341 List!41501) Bool)

(assert (=> b!3901458 (= res!1578363 (matchR!5436 (regex!6436 (rule!9344 (_1!23443 (get!13680 lt!1359208)))) (list!15380 (charsOf!4260 (_1!23443 (get!13680 lt!1359208))))))))

(declare-fun b!3901459 () Bool)

(declare-fun res!1578368 () Bool)

(assert (=> b!3901459 (=> (not res!1578368) (not e!2412277))))

(assert (=> b!3901459 (= res!1578368 (< (size!31068 (_2!23443 (get!13680 lt!1359208))) (size!31068 lt!1359117)))))

(declare-fun b!3901460 () Bool)

(declare-fun call!283870 () Option!8856)

(assert (=> b!3901460 (= e!2412276 call!283870)))

(declare-fun b!3901461 () Bool)

(declare-fun res!1578367 () Bool)

(assert (=> b!3901461 (=> (not res!1578367) (not e!2412277))))

(assert (=> b!3901461 (= res!1578367 (= (++!10630 (list!15380 (charsOf!4260 (_1!23443 (get!13680 lt!1359208)))) (_2!23443 (get!13680 lt!1359208))) lt!1359117))))

(declare-fun b!3901462 () Bool)

(declare-fun res!1578366 () Bool)

(assert (=> b!3901462 (=> (not res!1578366) (not e!2412277))))

(assert (=> b!3901462 (= res!1578366 (= (value!204060 (_1!23443 (get!13680 lt!1359208))) (apply!9675 (transformation!6436 (rule!9344 (_1!23443 (get!13680 lt!1359208)))) (seqFromList!4703 (originalCharacters!7036 (_1!23443 (get!13680 lt!1359208)))))))))

(declare-fun b!3901463 () Bool)

(declare-fun lt!1359210 () Option!8856)

(declare-fun lt!1359207 () Option!8856)

(assert (=> b!3901463 (= e!2412276 (ite (and ((_ is None!8855) lt!1359210) ((_ is None!8855) lt!1359207)) None!8855 (ite ((_ is None!8855) lt!1359207) lt!1359210 (ite ((_ is None!8855) lt!1359210) lt!1359207 (ite (>= (size!31067 (_1!23443 (v!39169 lt!1359210))) (size!31067 (_1!23443 (v!39169 lt!1359207)))) lt!1359210 lt!1359207)))))))

(assert (=> b!3901463 (= lt!1359210 call!283870)))

(assert (=> b!3901463 (= lt!1359207 (maxPrefix!3329 thiss!20629 (t!320072 rules!2768) lt!1359117))))

(declare-fun bm!283865 () Bool)

(assert (=> bm!283865 (= call!283870 (maxPrefixOneRule!2405 thiss!20629 (h!46799 rules!2768) lt!1359117))))

(declare-fun b!3901464 () Bool)

(declare-fun res!1578369 () Bool)

(assert (=> b!3901464 (=> (not res!1578369) (not e!2412277))))

(assert (=> b!3901464 (= res!1578369 (= (list!15380 (charsOf!4260 (_1!23443 (get!13680 lt!1359208)))) (originalCharacters!7036 (_1!23443 (get!13680 lt!1359208)))))))

(assert (= (and d!1156255 c!678198) b!3901460))

(assert (= (and d!1156255 (not c!678198)) b!3901463))

(assert (= (or b!3901460 b!3901463) bm!283865))

(assert (= (and d!1156255 (not res!1578365)) b!3901457))

(assert (= (and b!3901457 res!1578364) b!3901464))

(assert (= (and b!3901464 res!1578369) b!3901459))

(assert (= (and b!3901459 res!1578368) b!3901461))

(assert (= (and b!3901461 res!1578367) b!3901462))

(assert (= (and b!3901462 res!1578366) b!3901458))

(assert (= (and b!3901458 res!1578363) b!3901456))

(declare-fun m!4461759 () Bool)

(assert (=> b!3901464 m!4461759))

(declare-fun m!4461761 () Bool)

(assert (=> b!3901464 m!4461761))

(assert (=> b!3901464 m!4461761))

(declare-fun m!4461763 () Bool)

(assert (=> b!3901464 m!4461763))

(assert (=> b!3901456 m!4461759))

(declare-fun m!4461765 () Bool)

(assert (=> b!3901456 m!4461765))

(assert (=> b!3901461 m!4461759))

(assert (=> b!3901461 m!4461761))

(assert (=> b!3901461 m!4461761))

(assert (=> b!3901461 m!4461763))

(assert (=> b!3901461 m!4461763))

(declare-fun m!4461767 () Bool)

(assert (=> b!3901461 m!4461767))

(assert (=> bm!283865 m!4461505))

(assert (=> b!3901459 m!4461759))

(declare-fun m!4461769 () Bool)

(assert (=> b!3901459 m!4461769))

(declare-fun m!4461771 () Bool)

(assert (=> b!3901459 m!4461771))

(declare-fun m!4461773 () Bool)

(assert (=> b!3901457 m!4461773))

(assert (=> b!3901463 m!4461415))

(declare-fun m!4461775 () Bool)

(assert (=> d!1156255 m!4461775))

(assert (=> d!1156255 m!4461407))

(assert (=> d!1156255 m!4461409))

(declare-fun m!4461777 () Bool)

(assert (=> d!1156255 m!4461777))

(assert (=> b!3901462 m!4461759))

(declare-fun m!4461779 () Bool)

(assert (=> b!3901462 m!4461779))

(assert (=> b!3901462 m!4461779))

(declare-fun m!4461781 () Bool)

(assert (=> b!3901462 m!4461781))

(assert (=> b!3901458 m!4461759))

(assert (=> b!3901458 m!4461761))

(assert (=> b!3901458 m!4461761))

(assert (=> b!3901458 m!4461763))

(assert (=> b!3901458 m!4461763))

(declare-fun m!4461783 () Bool)

(assert (=> b!3901458 m!4461783))

(assert (=> b!3901258 d!1156255))

(declare-fun d!1156291 () Bool)

(declare-fun lt!1359224 () Int)

(assert (=> d!1156291 (>= lt!1359224 0)))

(declare-fun e!2412289 () Int)

(assert (=> d!1156291 (= lt!1359224 e!2412289)))

(declare-fun c!678203 () Bool)

(assert (=> d!1156291 (= c!678203 ((_ is Nil!41377) (originalCharacters!7036 (_1!23443 (v!39169 lt!1359128)))))))

(assert (=> d!1156291 (= (size!31068 (originalCharacters!7036 (_1!23443 (v!39169 lt!1359128)))) lt!1359224)))

(declare-fun b!3901487 () Bool)

(assert (=> b!3901487 (= e!2412289 0)))

(declare-fun b!3901488 () Bool)

(assert (=> b!3901488 (= e!2412289 (+ 1 (size!31068 (t!320070 (originalCharacters!7036 (_1!23443 (v!39169 lt!1359128)))))))))

(assert (= (and d!1156291 c!678203) b!3901487))

(assert (= (and d!1156291 (not c!678203)) b!3901488))

(declare-fun m!4461785 () Bool)

(assert (=> b!3901488 m!4461785))

(assert (=> b!3901236 d!1156291))

(declare-fun b!3901489 () Bool)

(declare-fun e!2412291 () Bool)

(declare-fun lt!1359226 () Option!8856)

(assert (=> b!3901489 (= e!2412291 (contains!8317 rules!2768 (rule!9344 (_1!23443 (get!13680 lt!1359226)))))))

(declare-fun b!3901490 () Bool)

(declare-fun e!2412292 () Bool)

(assert (=> b!3901490 (= e!2412292 e!2412291)))

(declare-fun res!1578385 () Bool)

(assert (=> b!3901490 (=> (not res!1578385) (not e!2412291))))

(assert (=> b!3901490 (= res!1578385 (isDefined!6907 lt!1359226))))

(declare-fun d!1156293 () Bool)

(assert (=> d!1156293 e!2412292))

(declare-fun res!1578386 () Bool)

(assert (=> d!1156293 (=> res!1578386 e!2412292)))

(assert (=> d!1156293 (= res!1578386 (isEmpty!24600 lt!1359226))))

(declare-fun e!2412290 () Option!8856)

(assert (=> d!1156293 (= lt!1359226 e!2412290)))

(declare-fun c!678204 () Bool)

(assert (=> d!1156293 (= c!678204 (and ((_ is Cons!41379) rules!2768) ((_ is Nil!41379) (t!320072 rules!2768))))))

(declare-fun lt!1359227 () Unit!59498)

(declare-fun lt!1359229 () Unit!59498)

(assert (=> d!1156293 (= lt!1359227 lt!1359229)))

(assert (=> d!1156293 (isPrefix!3531 (++!10630 prefix!426 Nil!41377) (++!10630 prefix!426 Nil!41377))))

(assert (=> d!1156293 (= lt!1359229 (lemmaIsPrefixRefl!2238 (++!10630 prefix!426 Nil!41377) (++!10630 prefix!426 Nil!41377)))))

(assert (=> d!1156293 (rulesValidInductive!2308 thiss!20629 rules!2768)))

(assert (=> d!1156293 (= (maxPrefix!3329 thiss!20629 rules!2768 (++!10630 prefix!426 Nil!41377)) lt!1359226)))

(declare-fun b!3901491 () Bool)

(declare-fun res!1578384 () Bool)

(assert (=> b!3901491 (=> (not res!1578384) (not e!2412291))))

(assert (=> b!3901491 (= res!1578384 (matchR!5436 (regex!6436 (rule!9344 (_1!23443 (get!13680 lt!1359226)))) (list!15380 (charsOf!4260 (_1!23443 (get!13680 lt!1359226))))))))

(declare-fun b!3901492 () Bool)

(declare-fun res!1578389 () Bool)

(assert (=> b!3901492 (=> (not res!1578389) (not e!2412291))))

(assert (=> b!3901492 (= res!1578389 (< (size!31068 (_2!23443 (get!13680 lt!1359226))) (size!31068 (++!10630 prefix!426 Nil!41377))))))

(declare-fun b!3901493 () Bool)

(declare-fun call!283871 () Option!8856)

(assert (=> b!3901493 (= e!2412290 call!283871)))

(declare-fun b!3901494 () Bool)

(declare-fun res!1578388 () Bool)

(assert (=> b!3901494 (=> (not res!1578388) (not e!2412291))))

(assert (=> b!3901494 (= res!1578388 (= (++!10630 (list!15380 (charsOf!4260 (_1!23443 (get!13680 lt!1359226)))) (_2!23443 (get!13680 lt!1359226))) (++!10630 prefix!426 Nil!41377)))))

(declare-fun b!3901495 () Bool)

(declare-fun res!1578387 () Bool)

(assert (=> b!3901495 (=> (not res!1578387) (not e!2412291))))

(assert (=> b!3901495 (= res!1578387 (= (value!204060 (_1!23443 (get!13680 lt!1359226))) (apply!9675 (transformation!6436 (rule!9344 (_1!23443 (get!13680 lt!1359226)))) (seqFromList!4703 (originalCharacters!7036 (_1!23443 (get!13680 lt!1359226)))))))))

(declare-fun b!3901496 () Bool)

(declare-fun lt!1359228 () Option!8856)

(declare-fun lt!1359225 () Option!8856)

(assert (=> b!3901496 (= e!2412290 (ite (and ((_ is None!8855) lt!1359228) ((_ is None!8855) lt!1359225)) None!8855 (ite ((_ is None!8855) lt!1359225) lt!1359228 (ite ((_ is None!8855) lt!1359228) lt!1359225 (ite (>= (size!31067 (_1!23443 (v!39169 lt!1359228))) (size!31067 (_1!23443 (v!39169 lt!1359225)))) lt!1359228 lt!1359225)))))))

(assert (=> b!3901496 (= lt!1359228 call!283871)))

(assert (=> b!3901496 (= lt!1359225 (maxPrefix!3329 thiss!20629 (t!320072 rules!2768) (++!10630 prefix!426 Nil!41377)))))

(declare-fun bm!283866 () Bool)

(assert (=> bm!283866 (= call!283871 (maxPrefixOneRule!2405 thiss!20629 (h!46799 rules!2768) (++!10630 prefix!426 Nil!41377)))))

(declare-fun b!3901497 () Bool)

(declare-fun res!1578390 () Bool)

(assert (=> b!3901497 (=> (not res!1578390) (not e!2412291))))

(assert (=> b!3901497 (= res!1578390 (= (list!15380 (charsOf!4260 (_1!23443 (get!13680 lt!1359226)))) (originalCharacters!7036 (_1!23443 (get!13680 lt!1359226)))))))

(assert (= (and d!1156293 c!678204) b!3901493))

(assert (= (and d!1156293 (not c!678204)) b!3901496))

(assert (= (or b!3901493 b!3901496) bm!283866))

(assert (= (and d!1156293 (not res!1578386)) b!3901490))

(assert (= (and b!3901490 res!1578385) b!3901497))

(assert (= (and b!3901497 res!1578390) b!3901492))

(assert (= (and b!3901492 res!1578389) b!3901494))

(assert (= (and b!3901494 res!1578388) b!3901495))

(assert (= (and b!3901495 res!1578387) b!3901491))

(assert (= (and b!3901491 res!1578384) b!3901489))

(declare-fun m!4461787 () Bool)

(assert (=> b!3901497 m!4461787))

(declare-fun m!4461789 () Bool)

(assert (=> b!3901497 m!4461789))

(assert (=> b!3901497 m!4461789))

(declare-fun m!4461791 () Bool)

(assert (=> b!3901497 m!4461791))

(assert (=> b!3901489 m!4461787))

(declare-fun m!4461793 () Bool)

(assert (=> b!3901489 m!4461793))

(assert (=> b!3901494 m!4461787))

(assert (=> b!3901494 m!4461789))

(assert (=> b!3901494 m!4461789))

(assert (=> b!3901494 m!4461791))

(assert (=> b!3901494 m!4461791))

(declare-fun m!4461795 () Bool)

(assert (=> b!3901494 m!4461795))

(assert (=> bm!283866 m!4461475))

(declare-fun m!4461797 () Bool)

(assert (=> bm!283866 m!4461797))

(assert (=> b!3901492 m!4461787))

(declare-fun m!4461799 () Bool)

(assert (=> b!3901492 m!4461799))

(assert (=> b!3901492 m!4461475))

(declare-fun m!4461801 () Bool)

(assert (=> b!3901492 m!4461801))

(declare-fun m!4461803 () Bool)

(assert (=> b!3901490 m!4461803))

(assert (=> b!3901496 m!4461475))

(declare-fun m!4461805 () Bool)

(assert (=> b!3901496 m!4461805))

(declare-fun m!4461807 () Bool)

(assert (=> d!1156293 m!4461807))

(assert (=> d!1156293 m!4461475))

(assert (=> d!1156293 m!4461475))

(declare-fun m!4461809 () Bool)

(assert (=> d!1156293 m!4461809))

(assert (=> d!1156293 m!4461475))

(assert (=> d!1156293 m!4461475))

(declare-fun m!4461811 () Bool)

(assert (=> d!1156293 m!4461811))

(assert (=> d!1156293 m!4461777))

(assert (=> b!3901495 m!4461787))

(declare-fun m!4461813 () Bool)

(assert (=> b!3901495 m!4461813))

(assert (=> b!3901495 m!4461813))

(declare-fun m!4461815 () Bool)

(assert (=> b!3901495 m!4461815))

(assert (=> b!3901491 m!4461787))

(assert (=> b!3901491 m!4461789))

(assert (=> b!3901491 m!4461789))

(assert (=> b!3901491 m!4461791))

(assert (=> b!3901491 m!4461791))

(declare-fun m!4461817 () Bool)

(assert (=> b!3901491 m!4461817))

(assert (=> b!3901256 d!1156293))

(declare-fun d!1156295 () Bool)

(assert (=> d!1156295 (= (isDefined!6907 lt!1359114) (not (isEmpty!24600 lt!1359114)))))

(declare-fun bs!584963 () Bool)

(assert (= bs!584963 d!1156295))

(declare-fun m!4461819 () Bool)

(assert (=> bs!584963 m!4461819))

(assert (=> b!3901256 d!1156295))

(declare-fun d!1156297 () Bool)

(assert (=> d!1156297 (= (maxPrefix!3329 thiss!20629 rules!2768 (++!10630 prefix!426 Nil!41377)) (Some!8855 (tuple2!40619 (_1!23443 (v!39169 lt!1359128)) Nil!41377)))))

(declare-fun lt!1359263 () Unit!59498)

(declare-fun choose!23085 (LexerInterface!6025 List!41503 List!41501 List!41501 List!41501 Token!12010 List!41501 List!41501) Unit!59498)

(assert (=> d!1156297 (= lt!1359263 (choose!23085 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41377 (_1!23443 (v!39169 lt!1359128)) suffix!1176 Nil!41377))))

(assert (=> d!1156297 (not (isEmpty!24597 rules!2768))))

(assert (=> d!1156297 (= (lemmaMaxPrefixThenWithShorterSuffix!38 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41377 (_1!23443 (v!39169 lt!1359128)) suffix!1176 Nil!41377) lt!1359263)))

(declare-fun bs!584969 () Bool)

(assert (= bs!584969 d!1156297))

(assert (=> bs!584969 m!4461475))

(assert (=> bs!584969 m!4461475))

(assert (=> bs!584969 m!4461477))

(declare-fun m!4461959 () Bool)

(assert (=> bs!584969 m!4461959))

(assert (=> bs!584969 m!4461497))

(assert (=> b!3901256 d!1156297))

(declare-fun b!3901589 () Bool)

(declare-fun e!2412349 () List!41501)

(assert (=> b!3901589 (= e!2412349 Nil!41377)))

(declare-fun b!3901591 () Bool)

(declare-fun res!1578426 () Bool)

(declare-fun e!2412350 () Bool)

(assert (=> b!3901591 (=> (not res!1578426) (not e!2412350))))

(declare-fun lt!1359266 () List!41501)

(assert (=> b!3901591 (= res!1578426 (= (size!31068 lt!1359266) (+ (size!31068 prefix!426) (size!31068 Nil!41377))))))

(declare-fun d!1156331 () Bool)

(assert (=> d!1156331 e!2412350))

(declare-fun res!1578425 () Bool)

(assert (=> d!1156331 (=> (not res!1578425) (not e!2412350))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6196 (List!41501) (InoxSet C!22868))

(assert (=> d!1156331 (= res!1578425 (= (content!6196 lt!1359266) ((_ map or) (content!6196 prefix!426) (content!6196 Nil!41377))))))

(assert (=> d!1156331 (= lt!1359266 e!2412349)))

(declare-fun c!678218 () Bool)

(assert (=> d!1156331 (= c!678218 ((_ is Nil!41377) prefix!426))))

(assert (=> d!1156331 (= (++!10630 prefix!426 Nil!41377) lt!1359266)))

(declare-fun b!3901590 () Bool)

(assert (=> b!3901590 (= e!2412349 (Cons!41377 (h!46797 prefix!426) (++!10630 (t!320070 prefix!426) Nil!41377)))))

(declare-fun b!3901592 () Bool)

(assert (=> b!3901592 (= e!2412350 (or (not (= Nil!41377 Nil!41377)) (= lt!1359266 prefix!426)))))

(assert (= (and d!1156331 c!678218) b!3901589))

(assert (= (and d!1156331 (not c!678218)) b!3901590))

(assert (= (and d!1156331 res!1578425) b!3901591))

(assert (= (and b!3901591 res!1578426) b!3901592))

(declare-fun m!4461973 () Bool)

(assert (=> b!3901591 m!4461973))

(declare-fun m!4461975 () Bool)

(assert (=> b!3901591 m!4461975))

(declare-fun m!4461977 () Bool)

(assert (=> b!3901591 m!4461977))

(declare-fun m!4461979 () Bool)

(assert (=> d!1156331 m!4461979))

(declare-fun m!4461981 () Bool)

(assert (=> d!1156331 m!4461981))

(declare-fun m!4461983 () Bool)

(assert (=> d!1156331 m!4461983))

(declare-fun m!4461985 () Bool)

(assert (=> b!3901590 m!4461985))

(assert (=> b!3901256 d!1156331))

(declare-fun b!3901593 () Bool)

(declare-fun e!2412352 () Bool)

(declare-fun lt!1359268 () Option!8856)

(assert (=> b!3901593 (= e!2412352 (contains!8317 rules!2768 (rule!9344 (_1!23443 (get!13680 lt!1359268)))))))

(declare-fun b!3901594 () Bool)

(declare-fun e!2412353 () Bool)

(assert (=> b!3901594 (= e!2412353 e!2412352)))

(declare-fun res!1578428 () Bool)

(assert (=> b!3901594 (=> (not res!1578428) (not e!2412352))))

(assert (=> b!3901594 (= res!1578428 (isDefined!6907 lt!1359268))))

(declare-fun d!1156345 () Bool)

(assert (=> d!1156345 e!2412353))

(declare-fun res!1578429 () Bool)

(assert (=> d!1156345 (=> res!1578429 e!2412353)))

(assert (=> d!1156345 (= res!1578429 (isEmpty!24600 lt!1359268))))

(declare-fun e!2412351 () Option!8856)

(assert (=> d!1156345 (= lt!1359268 e!2412351)))

(declare-fun c!678219 () Bool)

(assert (=> d!1156345 (= c!678219 (and ((_ is Cons!41379) rules!2768) ((_ is Nil!41379) (t!320072 rules!2768))))))

(declare-fun lt!1359269 () Unit!59498)

(declare-fun lt!1359271 () Unit!59498)

(assert (=> d!1156345 (= lt!1359269 lt!1359271)))

(assert (=> d!1156345 (isPrefix!3531 prefix!426 prefix!426)))

(assert (=> d!1156345 (= lt!1359271 (lemmaIsPrefixRefl!2238 prefix!426 prefix!426))))

(assert (=> d!1156345 (rulesValidInductive!2308 thiss!20629 rules!2768)))

(assert (=> d!1156345 (= (maxPrefix!3329 thiss!20629 rules!2768 prefix!426) lt!1359268)))

(declare-fun b!3901595 () Bool)

(declare-fun res!1578427 () Bool)

(assert (=> b!3901595 (=> (not res!1578427) (not e!2412352))))

(assert (=> b!3901595 (= res!1578427 (matchR!5436 (regex!6436 (rule!9344 (_1!23443 (get!13680 lt!1359268)))) (list!15380 (charsOf!4260 (_1!23443 (get!13680 lt!1359268))))))))

(declare-fun b!3901596 () Bool)

(declare-fun res!1578432 () Bool)

(assert (=> b!3901596 (=> (not res!1578432) (not e!2412352))))

(assert (=> b!3901596 (= res!1578432 (< (size!31068 (_2!23443 (get!13680 lt!1359268))) (size!31068 prefix!426)))))

(declare-fun b!3901597 () Bool)

(declare-fun call!283873 () Option!8856)

(assert (=> b!3901597 (= e!2412351 call!283873)))

(declare-fun b!3901598 () Bool)

(declare-fun res!1578431 () Bool)

(assert (=> b!3901598 (=> (not res!1578431) (not e!2412352))))

(assert (=> b!3901598 (= res!1578431 (= (++!10630 (list!15380 (charsOf!4260 (_1!23443 (get!13680 lt!1359268)))) (_2!23443 (get!13680 lt!1359268))) prefix!426))))

(declare-fun b!3901599 () Bool)

(declare-fun res!1578430 () Bool)

(assert (=> b!3901599 (=> (not res!1578430) (not e!2412352))))

(assert (=> b!3901599 (= res!1578430 (= (value!204060 (_1!23443 (get!13680 lt!1359268))) (apply!9675 (transformation!6436 (rule!9344 (_1!23443 (get!13680 lt!1359268)))) (seqFromList!4703 (originalCharacters!7036 (_1!23443 (get!13680 lt!1359268)))))))))

(declare-fun b!3901600 () Bool)

(declare-fun lt!1359270 () Option!8856)

(declare-fun lt!1359267 () Option!8856)

(assert (=> b!3901600 (= e!2412351 (ite (and ((_ is None!8855) lt!1359270) ((_ is None!8855) lt!1359267)) None!8855 (ite ((_ is None!8855) lt!1359267) lt!1359270 (ite ((_ is None!8855) lt!1359270) lt!1359267 (ite (>= (size!31067 (_1!23443 (v!39169 lt!1359270))) (size!31067 (_1!23443 (v!39169 lt!1359267)))) lt!1359270 lt!1359267)))))))

(assert (=> b!3901600 (= lt!1359270 call!283873)))

(assert (=> b!3901600 (= lt!1359267 (maxPrefix!3329 thiss!20629 (t!320072 rules!2768) prefix!426))))

(declare-fun bm!283868 () Bool)

(assert (=> bm!283868 (= call!283873 (maxPrefixOneRule!2405 thiss!20629 (h!46799 rules!2768) prefix!426))))

(declare-fun b!3901601 () Bool)

(declare-fun res!1578433 () Bool)

(assert (=> b!3901601 (=> (not res!1578433) (not e!2412352))))

(assert (=> b!3901601 (= res!1578433 (= (list!15380 (charsOf!4260 (_1!23443 (get!13680 lt!1359268)))) (originalCharacters!7036 (_1!23443 (get!13680 lt!1359268)))))))

(assert (= (and d!1156345 c!678219) b!3901597))

(assert (= (and d!1156345 (not c!678219)) b!3901600))

(assert (= (or b!3901597 b!3901600) bm!283868))

(assert (= (and d!1156345 (not res!1578429)) b!3901594))

(assert (= (and b!3901594 res!1578428) b!3901601))

(assert (= (and b!3901601 res!1578433) b!3901596))

(assert (= (and b!3901596 res!1578432) b!3901598))

(assert (= (and b!3901598 res!1578431) b!3901599))

(assert (= (and b!3901599 res!1578430) b!3901595))

(assert (= (and b!3901595 res!1578427) b!3901593))

(declare-fun m!4462003 () Bool)

(assert (=> b!3901601 m!4462003))

(declare-fun m!4462005 () Bool)

(assert (=> b!3901601 m!4462005))

(assert (=> b!3901601 m!4462005))

(declare-fun m!4462007 () Bool)

(assert (=> b!3901601 m!4462007))

(assert (=> b!3901593 m!4462003))

(declare-fun m!4462009 () Bool)

(assert (=> b!3901593 m!4462009))

(assert (=> b!3901598 m!4462003))

(assert (=> b!3901598 m!4462005))

(assert (=> b!3901598 m!4462005))

(assert (=> b!3901598 m!4462007))

(assert (=> b!3901598 m!4462007))

(declare-fun m!4462011 () Bool)

(assert (=> b!3901598 m!4462011))

(declare-fun m!4462013 () Bool)

(assert (=> bm!283868 m!4462013))

(assert (=> b!3901596 m!4462003))

(declare-fun m!4462015 () Bool)

(assert (=> b!3901596 m!4462015))

(assert (=> b!3901596 m!4461975))

(declare-fun m!4462017 () Bool)

(assert (=> b!3901594 m!4462017))

(declare-fun m!4462019 () Bool)

(assert (=> b!3901600 m!4462019))

(declare-fun m!4462021 () Bool)

(assert (=> d!1156345 m!4462021))

(declare-fun m!4462023 () Bool)

(assert (=> d!1156345 m!4462023))

(declare-fun m!4462025 () Bool)

(assert (=> d!1156345 m!4462025))

(assert (=> d!1156345 m!4461777))

(assert (=> b!3901599 m!4462003))

(declare-fun m!4462027 () Bool)

(assert (=> b!3901599 m!4462027))

(assert (=> b!3901599 m!4462027))

(declare-fun m!4462029 () Bool)

(assert (=> b!3901599 m!4462029))

(assert (=> b!3901595 m!4462003))

(assert (=> b!3901595 m!4462005))

(assert (=> b!3901595 m!4462005))

(assert (=> b!3901595 m!4462007))

(assert (=> b!3901595 m!4462007))

(declare-fun m!4462031 () Bool)

(assert (=> b!3901595 m!4462031))

(assert (=> b!3901256 d!1156345))

(declare-fun b!3901650 () Bool)

(declare-fun e!2412391 () Bool)

(declare-fun inv!16 (TokenValue!6666) Bool)

(assert (=> b!3901650 (= e!2412391 (inv!16 (value!204060 (_1!23443 (v!39169 err!4393)))))))

(declare-fun b!3901651 () Bool)

(declare-fun res!1578436 () Bool)

(declare-fun e!2412392 () Bool)

(assert (=> b!3901651 (=> res!1578436 e!2412392)))

(assert (=> b!3901651 (= res!1578436 (not ((_ is IntegerValue!20000) (value!204060 (_1!23443 (v!39169 err!4393))))))))

(declare-fun e!2412390 () Bool)

(assert (=> b!3901651 (= e!2412390 e!2412392)))

(declare-fun b!3901652 () Bool)

(assert (=> b!3901652 (= e!2412391 e!2412390)))

(declare-fun c!678225 () Bool)

(assert (=> b!3901652 (= c!678225 ((_ is IntegerValue!19999) (value!204060 (_1!23443 (v!39169 err!4393)))))))

(declare-fun d!1156347 () Bool)

(declare-fun c!678224 () Bool)

(assert (=> d!1156347 (= c!678224 ((_ is IntegerValue!19998) (value!204060 (_1!23443 (v!39169 err!4393)))))))

(assert (=> d!1156347 (= (inv!21 (value!204060 (_1!23443 (v!39169 err!4393)))) e!2412391)))

(declare-fun b!3901653 () Bool)

(declare-fun inv!17 (TokenValue!6666) Bool)

(assert (=> b!3901653 (= e!2412390 (inv!17 (value!204060 (_1!23443 (v!39169 err!4393)))))))

(declare-fun b!3901654 () Bool)

(declare-fun inv!15 (TokenValue!6666) Bool)

(assert (=> b!3901654 (= e!2412392 (inv!15 (value!204060 (_1!23443 (v!39169 err!4393)))))))

(assert (= (and d!1156347 c!678224) b!3901650))

(assert (= (and d!1156347 (not c!678224)) b!3901652))

(assert (= (and b!3901652 c!678225) b!3901653))

(assert (= (and b!3901652 (not c!678225)) b!3901651))

(assert (= (and b!3901651 (not res!1578436)) b!3901654))

(declare-fun m!4462037 () Bool)

(assert (=> b!3901650 m!4462037))

(declare-fun m!4462039 () Bool)

(assert (=> b!3901653 m!4462039))

(declare-fun m!4462041 () Bool)

(assert (=> b!3901654 m!4462041))

(assert (=> b!3901261 d!1156347))

(declare-fun d!1156349 () Bool)

(declare-fun res!1578441 () Bool)

(declare-fun e!2412395 () Bool)

(assert (=> d!1156349 (=> (not res!1578441) (not e!2412395))))

(assert (=> d!1156349 (= res!1578441 (not (isEmpty!24596 (originalCharacters!7036 (_1!23443 (v!39169 err!4393))))))))

(assert (=> d!1156349 (= (inv!55548 (_1!23443 (v!39169 err!4393))) e!2412395)))

(declare-fun b!3901659 () Bool)

(declare-fun res!1578442 () Bool)

(assert (=> b!3901659 (=> (not res!1578442) (not e!2412395))))

(declare-fun dynLambda!17768 (Int TokenValue!6666) BalanceConc!24888)

(assert (=> b!3901659 (= res!1578442 (= (originalCharacters!7036 (_1!23443 (v!39169 err!4393))) (list!15380 (dynLambda!17768 (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))) (value!204060 (_1!23443 (v!39169 err!4393)))))))))

(declare-fun b!3901660 () Bool)

(assert (=> b!3901660 (= e!2412395 (= (size!31067 (_1!23443 (v!39169 err!4393))) (size!31068 (originalCharacters!7036 (_1!23443 (v!39169 err!4393))))))))

(assert (= (and d!1156349 res!1578441) b!3901659))

(assert (= (and b!3901659 res!1578442) b!3901660))

(declare-fun b_lambda!114015 () Bool)

(assert (=> (not b_lambda!114015) (not b!3901659)))

(declare-fun t!320144 () Bool)

(declare-fun tb!229927 () Bool)

(assert (=> (and b!3901251 (= (toChars!8735 (transformation!6436 (h!46799 rules!2768))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393)))))) t!320144) tb!229927))

(declare-fun b!3901665 () Bool)

(declare-fun e!2412398 () Bool)

(declare-fun tp!1187210 () Bool)

(declare-fun inv!55552 (Conc!12647) Bool)

(assert (=> b!3901665 (= e!2412398 (and (inv!55552 (c!678163 (dynLambda!17768 (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))) (value!204060 (_1!23443 (v!39169 err!4393)))))) tp!1187210))))

(declare-fun result!279168 () Bool)

(declare-fun inv!55553 (BalanceConc!24888) Bool)

(assert (=> tb!229927 (= result!279168 (and (inv!55553 (dynLambda!17768 (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))) (value!204060 (_1!23443 (v!39169 err!4393))))) e!2412398))))

(assert (= tb!229927 b!3901665))

(declare-fun m!4462043 () Bool)

(assert (=> b!3901665 m!4462043))

(declare-fun m!4462045 () Bool)

(assert (=> tb!229927 m!4462045))

(assert (=> b!3901659 t!320144))

(declare-fun b_and!295143 () Bool)

(assert (= b_and!295077 (and (=> t!320144 result!279168) b_and!295143)))

(declare-fun t!320146 () Bool)

(declare-fun tb!229929 () Bool)

(assert (=> (and b!3901264 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393)))))) t!320146) tb!229929))

(declare-fun result!279172 () Bool)

(assert (= result!279172 result!279168))

(assert (=> b!3901659 t!320146))

(declare-fun b_and!295145 () Bool)

(assert (= b_and!295081 (and (=> t!320146 result!279172) b_and!295145)))

(declare-fun tb!229931 () Bool)

(declare-fun t!320148 () Bool)

(assert (=> (and b!3901241 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393)))))) t!320148) tb!229931))

(declare-fun result!279174 () Bool)

(assert (= result!279174 result!279168))

(assert (=> b!3901659 t!320148))

(declare-fun b_and!295147 () Bool)

(assert (= b_and!295085 (and (=> t!320148 result!279174) b_and!295147)))

(declare-fun t!320150 () Bool)

(declare-fun tb!229933 () Bool)

(assert (=> (and b!3901239 (= (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393)))))) t!320150) tb!229933))

(declare-fun result!279176 () Bool)

(assert (= result!279176 result!279168))

(assert (=> b!3901659 t!320150))

(declare-fun b_and!295149 () Bool)

(assert (= b_and!295089 (and (=> t!320150 result!279176) b_and!295149)))

(declare-fun m!4462047 () Bool)

(assert (=> d!1156349 m!4462047))

(declare-fun m!4462049 () Bool)

(assert (=> b!3901659 m!4462049))

(assert (=> b!3901659 m!4462049))

(declare-fun m!4462051 () Bool)

(assert (=> b!3901659 m!4462051))

(declare-fun m!4462053 () Bool)

(assert (=> b!3901660 m!4462053))

(assert (=> b!3901238 d!1156349))

(declare-fun d!1156351 () Bool)

(assert (=> d!1156351 (= (isEmpty!24596 (_2!23443 lt!1359126)) ((_ is Nil!41377) (_2!23443 lt!1359126)))))

(assert (=> b!3901259 d!1156351))

(declare-fun d!1156353 () Bool)

(assert (=> d!1156353 (and (= lt!1359129 prefix!426) (= (_2!23443 (v!39169 lt!1359128)) suffix!1176))))

(declare-fun lt!1359274 () Unit!59498)

(declare-fun choose!23086 (List!41501 List!41501 List!41501 List!41501) Unit!59498)

(assert (=> d!1156353 (= lt!1359274 (choose!23086 lt!1359129 (_2!23443 (v!39169 lt!1359128)) prefix!426 suffix!1176))))

(assert (=> d!1156353 (= (++!10630 lt!1359129 (_2!23443 (v!39169 lt!1359128))) (++!10630 prefix!426 suffix!1176))))

(assert (=> d!1156353 (= (lemmaConcatSameAndSameSizesThenSameLists!508 lt!1359129 (_2!23443 (v!39169 lt!1359128)) prefix!426 suffix!1176) lt!1359274)))

(declare-fun bs!584971 () Bool)

(assert (= bs!584971 d!1156353))

(declare-fun m!4462055 () Bool)

(assert (=> bs!584971 m!4462055))

(assert (=> bs!584971 m!4461441))

(assert (=> bs!584971 m!4461421))

(assert (=> b!3901242 d!1156353))

(declare-fun d!1156355 () Bool)

(assert (=> d!1156355 (= (inv!55545 (tag!7296 (rule!9344 (h!46798 suffixTokens!72)))) (= (mod (str.len (value!204059 (tag!7296 (rule!9344 (h!46798 suffixTokens!72))))) 2) 0))))

(assert (=> b!3901240 d!1156355))

(declare-fun d!1156357 () Bool)

(declare-fun res!1578445 () Bool)

(declare-fun e!2412401 () Bool)

(assert (=> d!1156357 (=> (not res!1578445) (not e!2412401))))

(declare-fun semiInverseModEq!2759 (Int Int) Bool)

(assert (=> d!1156357 (= res!1578445 (semiInverseModEq!2759 (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))) (toValue!8876 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72))))))))

(assert (=> d!1156357 (= (inv!55549 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))) e!2412401)))

(declare-fun b!3901668 () Bool)

(declare-fun equivClasses!2658 (Int Int) Bool)

(assert (=> b!3901668 (= e!2412401 (equivClasses!2658 (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))) (toValue!8876 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72))))))))

(assert (= (and d!1156357 res!1578445) b!3901668))

(declare-fun m!4462057 () Bool)

(assert (=> d!1156357 m!4462057))

(declare-fun m!4462059 () Bool)

(assert (=> b!3901668 m!4462059))

(assert (=> b!3901240 d!1156357))

(declare-fun b!3901679 () Bool)

(declare-fun e!2412410 () Bool)

(declare-fun lt!1359281 () tuple2!40620)

(assert (=> b!3901679 (= e!2412410 (= (_2!23444 lt!1359281) suffix!1176))))

(declare-fun d!1156359 () Bool)

(assert (=> d!1156359 e!2412410))

(declare-fun c!678230 () Bool)

(declare-fun size!31071 (List!41502) Int)

(assert (=> d!1156359 (= c!678230 (> (size!31071 (_1!23444 lt!1359281)) 0))))

(declare-fun e!2412408 () tuple2!40620)

(assert (=> d!1156359 (= lt!1359281 e!2412408)))

(declare-fun c!678231 () Bool)

(declare-fun lt!1359283 () Option!8856)

(assert (=> d!1156359 (= c!678231 ((_ is Some!8855) lt!1359283))))

(assert (=> d!1156359 (= lt!1359283 (maxPrefix!3329 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1156359 (= (lexList!1793 thiss!20629 rules!2768 suffix!1176) lt!1359281)))

(declare-fun b!3901680 () Bool)

(declare-fun lt!1359282 () tuple2!40620)

(assert (=> b!3901680 (= e!2412408 (tuple2!40621 (Cons!41378 (_1!23443 (v!39169 lt!1359283)) (_1!23444 lt!1359282)) (_2!23444 lt!1359282)))))

(assert (=> b!3901680 (= lt!1359282 (lexList!1793 thiss!20629 rules!2768 (_2!23443 (v!39169 lt!1359283))))))

(declare-fun b!3901681 () Bool)

(declare-fun e!2412409 () Bool)

(assert (=> b!3901681 (= e!2412409 (not (isEmpty!24598 (_1!23444 lt!1359281))))))

(declare-fun b!3901682 () Bool)

(assert (=> b!3901682 (= e!2412410 e!2412409)))

(declare-fun res!1578448 () Bool)

(assert (=> b!3901682 (= res!1578448 (< (size!31068 (_2!23444 lt!1359281)) (size!31068 suffix!1176)))))

(assert (=> b!3901682 (=> (not res!1578448) (not e!2412409))))

(declare-fun b!3901683 () Bool)

(assert (=> b!3901683 (= e!2412408 (tuple2!40621 Nil!41378 suffix!1176))))

(assert (= (and d!1156359 c!678231) b!3901680))

(assert (= (and d!1156359 (not c!678231)) b!3901683))

(assert (= (and d!1156359 c!678230) b!3901682))

(assert (= (and d!1156359 (not c!678230)) b!3901679))

(assert (= (and b!3901682 res!1578448) b!3901681))

(declare-fun m!4462061 () Bool)

(assert (=> d!1156359 m!4462061))

(declare-fun m!4462063 () Bool)

(assert (=> d!1156359 m!4462063))

(declare-fun m!4462065 () Bool)

(assert (=> b!3901680 m!4462065))

(declare-fun m!4462067 () Bool)

(assert (=> b!3901681 m!4462067))

(declare-fun m!4462069 () Bool)

(assert (=> b!3901682 m!4462069))

(declare-fun m!4462071 () Bool)

(assert (=> b!3901682 m!4462071))

(assert (=> b!3901266 d!1156359))

(declare-fun d!1156361 () Bool)

(assert (=> d!1156361 (= (isEmpty!24596 prefix!426) ((_ is Nil!41377) prefix!426))))

(assert (=> b!3901245 d!1156361))

(declare-fun b!3901694 () Bool)

(declare-fun e!2412419 () Bool)

(declare-fun tail!5967 (List!41501) List!41501)

(assert (=> b!3901694 (= e!2412419 (isPrefix!3531 (tail!5967 lt!1359117) (tail!5967 lt!1359117)))))

(declare-fun b!3901693 () Bool)

(declare-fun res!1578459 () Bool)

(assert (=> b!3901693 (=> (not res!1578459) (not e!2412419))))

(declare-fun head!8250 (List!41501) C!22868)

(assert (=> b!3901693 (= res!1578459 (= (head!8250 lt!1359117) (head!8250 lt!1359117)))))

(declare-fun b!3901695 () Bool)

(declare-fun e!2412417 () Bool)

(assert (=> b!3901695 (= e!2412417 (>= (size!31068 lt!1359117) (size!31068 lt!1359117)))))

(declare-fun d!1156363 () Bool)

(assert (=> d!1156363 e!2412417))

(declare-fun res!1578458 () Bool)

(assert (=> d!1156363 (=> res!1578458 e!2412417)))

(declare-fun lt!1359286 () Bool)

(assert (=> d!1156363 (= res!1578458 (not lt!1359286))))

(declare-fun e!2412418 () Bool)

(assert (=> d!1156363 (= lt!1359286 e!2412418)))

(declare-fun res!1578457 () Bool)

(assert (=> d!1156363 (=> res!1578457 e!2412418)))

(assert (=> d!1156363 (= res!1578457 ((_ is Nil!41377) lt!1359117))))

(assert (=> d!1156363 (= (isPrefix!3531 lt!1359117 lt!1359117) lt!1359286)))

(declare-fun b!3901692 () Bool)

(assert (=> b!3901692 (= e!2412418 e!2412419)))

(declare-fun res!1578460 () Bool)

(assert (=> b!3901692 (=> (not res!1578460) (not e!2412419))))

(assert (=> b!3901692 (= res!1578460 (not ((_ is Nil!41377) lt!1359117)))))

(assert (= (and d!1156363 (not res!1578457)) b!3901692))

(assert (= (and b!3901692 res!1578460) b!3901693))

(assert (= (and b!3901693 res!1578459) b!3901694))

(assert (= (and d!1156363 (not res!1578458)) b!3901695))

(declare-fun m!4462073 () Bool)

(assert (=> b!3901694 m!4462073))

(assert (=> b!3901694 m!4462073))

(assert (=> b!3901694 m!4462073))

(assert (=> b!3901694 m!4462073))

(declare-fun m!4462075 () Bool)

(assert (=> b!3901694 m!4462075))

(declare-fun m!4462077 () Bool)

(assert (=> b!3901693 m!4462077))

(assert (=> b!3901693 m!4462077))

(assert (=> b!3901695 m!4461771))

(assert (=> b!3901695 m!4461771))

(assert (=> b!3901244 d!1156363))

(declare-fun d!1156365 () Bool)

(assert (=> d!1156365 (isPrefix!3531 lt!1359117 lt!1359117)))

(declare-fun lt!1359289 () Unit!59498)

(declare-fun choose!23087 (List!41501 List!41501) Unit!59498)

(assert (=> d!1156365 (= lt!1359289 (choose!23087 lt!1359117 lt!1359117))))

(assert (=> d!1156365 (= (lemmaIsPrefixRefl!2238 lt!1359117 lt!1359117) lt!1359289)))

(declare-fun bs!584972 () Bool)

(assert (= bs!584972 d!1156365))

(assert (=> bs!584972 m!4461407))

(declare-fun m!4462079 () Bool)

(assert (=> bs!584972 m!4462079))

(assert (=> b!3901244 d!1156365))

(declare-fun b!3901696 () Bool)

(declare-fun e!2412422 () Bool)

(declare-fun lt!1359290 () tuple2!40620)

(assert (=> b!3901696 (= e!2412422 (= (_2!23444 lt!1359290) lt!1359117))))

(declare-fun d!1156367 () Bool)

(assert (=> d!1156367 e!2412422))

(declare-fun c!678232 () Bool)

(assert (=> d!1156367 (= c!678232 (> (size!31071 (_1!23444 lt!1359290)) 0))))

(declare-fun e!2412420 () tuple2!40620)

(assert (=> d!1156367 (= lt!1359290 e!2412420)))

(declare-fun c!678233 () Bool)

(declare-fun lt!1359292 () Option!8856)

(assert (=> d!1156367 (= c!678233 ((_ is Some!8855) lt!1359292))))

(assert (=> d!1156367 (= lt!1359292 (maxPrefix!3329 thiss!20629 rules!2768 lt!1359117))))

(assert (=> d!1156367 (= (lexList!1793 thiss!20629 rules!2768 lt!1359117) lt!1359290)))

(declare-fun b!3901697 () Bool)

(declare-fun lt!1359291 () tuple2!40620)

(assert (=> b!3901697 (= e!2412420 (tuple2!40621 (Cons!41378 (_1!23443 (v!39169 lt!1359292)) (_1!23444 lt!1359291)) (_2!23444 lt!1359291)))))

(assert (=> b!3901697 (= lt!1359291 (lexList!1793 thiss!20629 rules!2768 (_2!23443 (v!39169 lt!1359292))))))

(declare-fun b!3901698 () Bool)

(declare-fun e!2412421 () Bool)

(assert (=> b!3901698 (= e!2412421 (not (isEmpty!24598 (_1!23444 lt!1359290))))))

(declare-fun b!3901699 () Bool)

(assert (=> b!3901699 (= e!2412422 e!2412421)))

(declare-fun res!1578461 () Bool)

(assert (=> b!3901699 (= res!1578461 (< (size!31068 (_2!23444 lt!1359290)) (size!31068 lt!1359117)))))

(assert (=> b!3901699 (=> (not res!1578461) (not e!2412421))))

(declare-fun b!3901700 () Bool)

(assert (=> b!3901700 (= e!2412420 (tuple2!40621 Nil!41378 lt!1359117))))

(assert (= (and d!1156367 c!678233) b!3901697))

(assert (= (and d!1156367 (not c!678233)) b!3901700))

(assert (= (and d!1156367 c!678232) b!3901699))

(assert (= (and d!1156367 (not c!678232)) b!3901696))

(assert (= (and b!3901699 res!1578461) b!3901698))

(declare-fun m!4462081 () Bool)

(assert (=> d!1156367 m!4462081))

(assert (=> d!1156367 m!4461411))

(declare-fun m!4462083 () Bool)

(assert (=> b!3901697 m!4462083))

(declare-fun m!4462085 () Bool)

(assert (=> b!3901698 m!4462085))

(declare-fun m!4462087 () Bool)

(assert (=> b!3901699 m!4462087))

(assert (=> b!3901699 m!4461771))

(assert (=> b!3901265 d!1156367))

(declare-fun b!3901710 () Bool)

(declare-fun e!2412428 () List!41502)

(assert (=> b!3901710 (= e!2412428 (Cons!41378 (h!46798 prefixTokens!80) (++!10629 (t!320071 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1156369 () Bool)

(declare-fun e!2412427 () Bool)

(assert (=> d!1156369 e!2412427))

(declare-fun res!1578466 () Bool)

(assert (=> d!1156369 (=> (not res!1578466) (not e!2412427))))

(declare-fun lt!1359295 () List!41502)

(declare-fun content!6197 (List!41502) (InoxSet Token!12010))

(assert (=> d!1156369 (= res!1578466 (= (content!6197 lt!1359295) ((_ map or) (content!6197 prefixTokens!80) (content!6197 suffixTokens!72))))))

(assert (=> d!1156369 (= lt!1359295 e!2412428)))

(declare-fun c!678236 () Bool)

(assert (=> d!1156369 (= c!678236 ((_ is Nil!41378) prefixTokens!80))))

(assert (=> d!1156369 (= (++!10629 prefixTokens!80 suffixTokens!72) lt!1359295)))

(declare-fun b!3901712 () Bool)

(assert (=> b!3901712 (= e!2412427 (or (not (= suffixTokens!72 Nil!41378)) (= lt!1359295 prefixTokens!80)))))

(declare-fun b!3901709 () Bool)

(assert (=> b!3901709 (= e!2412428 suffixTokens!72)))

(declare-fun b!3901711 () Bool)

(declare-fun res!1578467 () Bool)

(assert (=> b!3901711 (=> (not res!1578467) (not e!2412427))))

(assert (=> b!3901711 (= res!1578467 (= (size!31071 lt!1359295) (+ (size!31071 prefixTokens!80) (size!31071 suffixTokens!72))))))

(assert (= (and d!1156369 c!678236) b!3901709))

(assert (= (and d!1156369 (not c!678236)) b!3901710))

(assert (= (and d!1156369 res!1578466) b!3901711))

(assert (= (and b!3901711 res!1578467) b!3901712))

(declare-fun m!4462089 () Bool)

(assert (=> b!3901710 m!4462089))

(declare-fun m!4462091 () Bool)

(assert (=> d!1156369 m!4462091))

(declare-fun m!4462093 () Bool)

(assert (=> d!1156369 m!4462093))

(declare-fun m!4462095 () Bool)

(assert (=> d!1156369 m!4462095))

(declare-fun m!4462097 () Bool)

(assert (=> b!3901711 m!4462097))

(declare-fun m!4462099 () Bool)

(assert (=> b!3901711 m!4462099))

(declare-fun m!4462101 () Bool)

(assert (=> b!3901711 m!4462101))

(assert (=> b!3901265 d!1156369))

(declare-fun b!3901713 () Bool)

(declare-fun e!2412429 () List!41501)

(assert (=> b!3901713 (= e!2412429 suffix!1176)))

(declare-fun b!3901715 () Bool)

(declare-fun res!1578469 () Bool)

(declare-fun e!2412430 () Bool)

(assert (=> b!3901715 (=> (not res!1578469) (not e!2412430))))

(declare-fun lt!1359296 () List!41501)

(assert (=> b!3901715 (= res!1578469 (= (size!31068 lt!1359296) (+ (size!31068 prefix!426) (size!31068 suffix!1176))))))

(declare-fun d!1156371 () Bool)

(assert (=> d!1156371 e!2412430))

(declare-fun res!1578468 () Bool)

(assert (=> d!1156371 (=> (not res!1578468) (not e!2412430))))

(assert (=> d!1156371 (= res!1578468 (= (content!6196 lt!1359296) ((_ map or) (content!6196 prefix!426) (content!6196 suffix!1176))))))

(assert (=> d!1156371 (= lt!1359296 e!2412429)))

(declare-fun c!678237 () Bool)

(assert (=> d!1156371 (= c!678237 ((_ is Nil!41377) prefix!426))))

(assert (=> d!1156371 (= (++!10630 prefix!426 suffix!1176) lt!1359296)))

(declare-fun b!3901714 () Bool)

(assert (=> b!3901714 (= e!2412429 (Cons!41377 (h!46797 prefix!426) (++!10630 (t!320070 prefix!426) suffix!1176)))))

(declare-fun b!3901716 () Bool)

(assert (=> b!3901716 (= e!2412430 (or (not (= suffix!1176 Nil!41377)) (= lt!1359296 prefix!426)))))

(assert (= (and d!1156371 c!678237) b!3901713))

(assert (= (and d!1156371 (not c!678237)) b!3901714))

(assert (= (and d!1156371 res!1578468) b!3901715))

(assert (= (and b!3901715 res!1578469) b!3901716))

(declare-fun m!4462103 () Bool)

(assert (=> b!3901715 m!4462103))

(assert (=> b!3901715 m!4461975))

(assert (=> b!3901715 m!4462071))

(declare-fun m!4462105 () Bool)

(assert (=> d!1156371 m!4462105))

(assert (=> d!1156371 m!4461981))

(declare-fun m!4462107 () Bool)

(assert (=> d!1156371 m!4462107))

(declare-fun m!4462109 () Bool)

(assert (=> b!3901714 m!4462109))

(assert (=> b!3901265 d!1156371))

(declare-fun d!1156373 () Bool)

(assert (=> d!1156373 (= (inv!55545 (tag!7296 (h!46799 rules!2768))) (= (mod (str.len (value!204059 (tag!7296 (h!46799 rules!2768)))) 2) 0))))

(assert (=> b!3901243 d!1156373))

(declare-fun d!1156375 () Bool)

(declare-fun res!1578470 () Bool)

(declare-fun e!2412431 () Bool)

(assert (=> d!1156375 (=> (not res!1578470) (not e!2412431))))

(assert (=> d!1156375 (= res!1578470 (semiInverseModEq!2759 (toChars!8735 (transformation!6436 (h!46799 rules!2768))) (toValue!8876 (transformation!6436 (h!46799 rules!2768)))))))

(assert (=> d!1156375 (= (inv!55549 (transformation!6436 (h!46799 rules!2768))) e!2412431)))

(declare-fun b!3901717 () Bool)

(assert (=> b!3901717 (= e!2412431 (equivClasses!2658 (toChars!8735 (transformation!6436 (h!46799 rules!2768))) (toValue!8876 (transformation!6436 (h!46799 rules!2768)))))))

(assert (= (and d!1156375 res!1578470) b!3901717))

(declare-fun m!4462111 () Bool)

(assert (=> d!1156375 m!4462111))

(declare-fun m!4462113 () Bool)

(assert (=> b!3901717 m!4462113))

(assert (=> b!3901243 d!1156375))

(declare-fun d!1156377 () Bool)

(declare-fun res!1578473 () Bool)

(declare-fun e!2412434 () Bool)

(assert (=> d!1156377 (=> (not res!1578473) (not e!2412434))))

(declare-fun rulesValid!2494 (LexerInterface!6025 List!41503) Bool)

(assert (=> d!1156377 (= res!1578473 (rulesValid!2494 thiss!20629 rules!2768))))

(assert (=> d!1156377 (= (rulesInvariant!5368 thiss!20629 rules!2768) e!2412434)))

(declare-fun b!3901720 () Bool)

(declare-datatypes ((List!41505 0))(
  ( (Nil!41381) (Cons!41381 (h!46801 String!47048) (t!320214 List!41505)) )
))
(declare-fun noDuplicateTag!2495 (LexerInterface!6025 List!41503 List!41505) Bool)

(assert (=> b!3901720 (= e!2412434 (noDuplicateTag!2495 thiss!20629 rules!2768 Nil!41381))))

(assert (= (and d!1156377 res!1578473) b!3901720))

(declare-fun m!4462115 () Bool)

(assert (=> d!1156377 m!4462115))

(declare-fun m!4462117 () Bool)

(assert (=> b!3901720 m!4462117))

(assert (=> b!3901267 d!1156377))

(declare-fun b!3901721 () Bool)

(declare-fun e!2412436 () Bool)

(declare-fun lt!1359298 () Option!8856)

(assert (=> b!3901721 (= e!2412436 (contains!8317 (t!320072 rules!2768) (rule!9344 (_1!23443 (get!13680 lt!1359298)))))))

(declare-fun b!3901722 () Bool)

(declare-fun e!2412437 () Bool)

(assert (=> b!3901722 (= e!2412437 e!2412436)))

(declare-fun res!1578475 () Bool)

(assert (=> b!3901722 (=> (not res!1578475) (not e!2412436))))

(assert (=> b!3901722 (= res!1578475 (isDefined!6907 lt!1359298))))

(declare-fun d!1156379 () Bool)

(assert (=> d!1156379 e!2412437))

(declare-fun res!1578476 () Bool)

(assert (=> d!1156379 (=> res!1578476 e!2412437)))

(assert (=> d!1156379 (= res!1578476 (isEmpty!24600 lt!1359298))))

(declare-fun e!2412435 () Option!8856)

(assert (=> d!1156379 (= lt!1359298 e!2412435)))

(declare-fun c!678238 () Bool)

(assert (=> d!1156379 (= c!678238 (and ((_ is Cons!41379) (t!320072 rules!2768)) ((_ is Nil!41379) (t!320072 (t!320072 rules!2768)))))))

(declare-fun lt!1359299 () Unit!59498)

(declare-fun lt!1359301 () Unit!59498)

(assert (=> d!1156379 (= lt!1359299 lt!1359301)))

(assert (=> d!1156379 (isPrefix!3531 lt!1359117 lt!1359117)))

(assert (=> d!1156379 (= lt!1359301 (lemmaIsPrefixRefl!2238 lt!1359117 lt!1359117))))

(assert (=> d!1156379 (rulesValidInductive!2308 thiss!20629 (t!320072 rules!2768))))

(assert (=> d!1156379 (= (maxPrefix!3329 thiss!20629 (t!320072 rules!2768) lt!1359117) lt!1359298)))

(declare-fun b!3901723 () Bool)

(declare-fun res!1578474 () Bool)

(assert (=> b!3901723 (=> (not res!1578474) (not e!2412436))))

(assert (=> b!3901723 (= res!1578474 (matchR!5436 (regex!6436 (rule!9344 (_1!23443 (get!13680 lt!1359298)))) (list!15380 (charsOf!4260 (_1!23443 (get!13680 lt!1359298))))))))

(declare-fun b!3901724 () Bool)

(declare-fun res!1578479 () Bool)

(assert (=> b!3901724 (=> (not res!1578479) (not e!2412436))))

(assert (=> b!3901724 (= res!1578479 (< (size!31068 (_2!23443 (get!13680 lt!1359298))) (size!31068 lt!1359117)))))

(declare-fun b!3901725 () Bool)

(declare-fun call!283874 () Option!8856)

(assert (=> b!3901725 (= e!2412435 call!283874)))

(declare-fun b!3901726 () Bool)

(declare-fun res!1578478 () Bool)

(assert (=> b!3901726 (=> (not res!1578478) (not e!2412436))))

(assert (=> b!3901726 (= res!1578478 (= (++!10630 (list!15380 (charsOf!4260 (_1!23443 (get!13680 lt!1359298)))) (_2!23443 (get!13680 lt!1359298))) lt!1359117))))

(declare-fun b!3901727 () Bool)

(declare-fun res!1578477 () Bool)

(assert (=> b!3901727 (=> (not res!1578477) (not e!2412436))))

(assert (=> b!3901727 (= res!1578477 (= (value!204060 (_1!23443 (get!13680 lt!1359298))) (apply!9675 (transformation!6436 (rule!9344 (_1!23443 (get!13680 lt!1359298)))) (seqFromList!4703 (originalCharacters!7036 (_1!23443 (get!13680 lt!1359298)))))))))

(declare-fun b!3901728 () Bool)

(declare-fun lt!1359300 () Option!8856)

(declare-fun lt!1359297 () Option!8856)

(assert (=> b!3901728 (= e!2412435 (ite (and ((_ is None!8855) lt!1359300) ((_ is None!8855) lt!1359297)) None!8855 (ite ((_ is None!8855) lt!1359297) lt!1359300 (ite ((_ is None!8855) lt!1359300) lt!1359297 (ite (>= (size!31067 (_1!23443 (v!39169 lt!1359300))) (size!31067 (_1!23443 (v!39169 lt!1359297)))) lt!1359300 lt!1359297)))))))

(assert (=> b!3901728 (= lt!1359300 call!283874)))

(assert (=> b!3901728 (= lt!1359297 (maxPrefix!3329 thiss!20629 (t!320072 (t!320072 rules!2768)) lt!1359117))))

(declare-fun bm!283869 () Bool)

(assert (=> bm!283869 (= call!283874 (maxPrefixOneRule!2405 thiss!20629 (h!46799 (t!320072 rules!2768)) lt!1359117))))

(declare-fun b!3901729 () Bool)

(declare-fun res!1578480 () Bool)

(assert (=> b!3901729 (=> (not res!1578480) (not e!2412436))))

(assert (=> b!3901729 (= res!1578480 (= (list!15380 (charsOf!4260 (_1!23443 (get!13680 lt!1359298)))) (originalCharacters!7036 (_1!23443 (get!13680 lt!1359298)))))))

(assert (= (and d!1156379 c!678238) b!3901725))

(assert (= (and d!1156379 (not c!678238)) b!3901728))

(assert (= (or b!3901725 b!3901728) bm!283869))

(assert (= (and d!1156379 (not res!1578476)) b!3901722))

(assert (= (and b!3901722 res!1578475) b!3901729))

(assert (= (and b!3901729 res!1578480) b!3901724))

(assert (= (and b!3901724 res!1578479) b!3901726))

(assert (= (and b!3901726 res!1578478) b!3901727))

(assert (= (and b!3901727 res!1578477) b!3901723))

(assert (= (and b!3901723 res!1578474) b!3901721))

(declare-fun m!4462119 () Bool)

(assert (=> b!3901729 m!4462119))

(declare-fun m!4462121 () Bool)

(assert (=> b!3901729 m!4462121))

(assert (=> b!3901729 m!4462121))

(declare-fun m!4462123 () Bool)

(assert (=> b!3901729 m!4462123))

(assert (=> b!3901721 m!4462119))

(declare-fun m!4462125 () Bool)

(assert (=> b!3901721 m!4462125))

(assert (=> b!3901726 m!4462119))

(assert (=> b!3901726 m!4462121))

(assert (=> b!3901726 m!4462121))

(assert (=> b!3901726 m!4462123))

(assert (=> b!3901726 m!4462123))

(declare-fun m!4462127 () Bool)

(assert (=> b!3901726 m!4462127))

(declare-fun m!4462129 () Bool)

(assert (=> bm!283869 m!4462129))

(assert (=> b!3901724 m!4462119))

(declare-fun m!4462131 () Bool)

(assert (=> b!3901724 m!4462131))

(assert (=> b!3901724 m!4461771))

(declare-fun m!4462133 () Bool)

(assert (=> b!3901722 m!4462133))

(declare-fun m!4462135 () Bool)

(assert (=> b!3901728 m!4462135))

(declare-fun m!4462137 () Bool)

(assert (=> d!1156379 m!4462137))

(assert (=> d!1156379 m!4461407))

(assert (=> d!1156379 m!4461409))

(declare-fun m!4462139 () Bool)

(assert (=> d!1156379 m!4462139))

(assert (=> b!3901727 m!4462119))

(declare-fun m!4462141 () Bool)

(assert (=> b!3901727 m!4462141))

(assert (=> b!3901727 m!4462141))

(declare-fun m!4462143 () Bool)

(assert (=> b!3901727 m!4462143))

(assert (=> b!3901723 m!4462119))

(assert (=> b!3901723 m!4462121))

(assert (=> b!3901723 m!4462121))

(assert (=> b!3901723 m!4462123))

(assert (=> b!3901723 m!4462123))

(declare-fun m!4462145 () Bool)

(assert (=> b!3901723 m!4462145))

(assert (=> b!3901247 d!1156379))

(declare-fun b!3901748 () Bool)

(declare-fun e!2412447 () Bool)

(declare-fun lt!1359314 () Option!8856)

(assert (=> b!3901748 (= e!2412447 (= (size!31067 (_1!23443 (get!13680 lt!1359314))) (size!31068 (originalCharacters!7036 (_1!23443 (get!13680 lt!1359314))))))))

(declare-fun b!3901749 () Bool)

(declare-fun res!1578499 () Bool)

(assert (=> b!3901749 (=> (not res!1578499) (not e!2412447))))

(assert (=> b!3901749 (= res!1578499 (= (value!204060 (_1!23443 (get!13680 lt!1359314))) (apply!9675 (transformation!6436 (rule!9344 (_1!23443 (get!13680 lt!1359314)))) (seqFromList!4703 (originalCharacters!7036 (_1!23443 (get!13680 lt!1359314)))))))))

(declare-fun b!3901750 () Bool)

(declare-fun e!2412449 () Option!8856)

(declare-datatypes ((tuple2!40624 0))(
  ( (tuple2!40625 (_1!23446 List!41501) (_2!23446 List!41501)) )
))
(declare-fun lt!1359316 () tuple2!40624)

(declare-fun size!31072 (BalanceConc!24888) Int)

(assert (=> b!3901750 (= e!2412449 (Some!8855 (tuple2!40619 (Token!12011 (apply!9675 (transformation!6436 (h!46799 rules!2768)) (seqFromList!4703 (_1!23446 lt!1359316))) (h!46799 rules!2768) (size!31072 (seqFromList!4703 (_1!23446 lt!1359316))) (_1!23446 lt!1359316)) (_2!23446 lt!1359316))))))

(declare-fun lt!1359312 () Unit!59498)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1197 (Regex!11341 List!41501) Unit!59498)

(assert (=> b!3901750 (= lt!1359312 (longestMatchIsAcceptedByMatchOrIsEmpty!1197 (regex!6436 (h!46799 rules!2768)) lt!1359117))))

(declare-fun res!1578500 () Bool)

(declare-fun findLongestMatchInner!1224 (Regex!11341 List!41501 Int List!41501 List!41501 Int) tuple2!40624)

(assert (=> b!3901750 (= res!1578500 (isEmpty!24596 (_1!23446 (findLongestMatchInner!1224 (regex!6436 (h!46799 rules!2768)) Nil!41377 (size!31068 Nil!41377) lt!1359117 lt!1359117 (size!31068 lt!1359117)))))))

(declare-fun e!2412448 () Bool)

(assert (=> b!3901750 (=> res!1578500 e!2412448)))

(assert (=> b!3901750 e!2412448))

(declare-fun lt!1359313 () Unit!59498)

(assert (=> b!3901750 (= lt!1359313 lt!1359312)))

(declare-fun lt!1359315 () Unit!59498)

(declare-fun lemmaSemiInverse!1730 (TokenValueInjection!12760 BalanceConc!24888) Unit!59498)

(assert (=> b!3901750 (= lt!1359315 (lemmaSemiInverse!1730 (transformation!6436 (h!46799 rules!2768)) (seqFromList!4703 (_1!23446 lt!1359316))))))

(declare-fun b!3901751 () Bool)

(assert (=> b!3901751 (= e!2412448 (matchR!5436 (regex!6436 (h!46799 rules!2768)) (_1!23446 (findLongestMatchInner!1224 (regex!6436 (h!46799 rules!2768)) Nil!41377 (size!31068 Nil!41377) lt!1359117 lt!1359117 (size!31068 lt!1359117)))))))

(declare-fun b!3901752 () Bool)

(declare-fun e!2412446 () Bool)

(assert (=> b!3901752 (= e!2412446 e!2412447)))

(declare-fun res!1578495 () Bool)

(assert (=> b!3901752 (=> (not res!1578495) (not e!2412447))))

(assert (=> b!3901752 (= res!1578495 (matchR!5436 (regex!6436 (h!46799 rules!2768)) (list!15380 (charsOf!4260 (_1!23443 (get!13680 lt!1359314))))))))

(declare-fun b!3901753 () Bool)

(declare-fun res!1578498 () Bool)

(assert (=> b!3901753 (=> (not res!1578498) (not e!2412447))))

(assert (=> b!3901753 (= res!1578498 (= (++!10630 (list!15380 (charsOf!4260 (_1!23443 (get!13680 lt!1359314)))) (_2!23443 (get!13680 lt!1359314))) lt!1359117))))

(declare-fun b!3901754 () Bool)

(declare-fun res!1578497 () Bool)

(assert (=> b!3901754 (=> (not res!1578497) (not e!2412447))))

(assert (=> b!3901754 (= res!1578497 (< (size!31068 (_2!23443 (get!13680 lt!1359314))) (size!31068 lt!1359117)))))

(declare-fun b!3901755 () Bool)

(assert (=> b!3901755 (= e!2412449 None!8855)))

(declare-fun d!1156381 () Bool)

(assert (=> d!1156381 e!2412446))

(declare-fun res!1578496 () Bool)

(assert (=> d!1156381 (=> res!1578496 e!2412446)))

(assert (=> d!1156381 (= res!1578496 (isEmpty!24600 lt!1359314))))

(assert (=> d!1156381 (= lt!1359314 e!2412449)))

(declare-fun c!678241 () Bool)

(assert (=> d!1156381 (= c!678241 (isEmpty!24596 (_1!23446 lt!1359316)))))

(declare-fun findLongestMatch!1137 (Regex!11341 List!41501) tuple2!40624)

(assert (=> d!1156381 (= lt!1359316 (findLongestMatch!1137 (regex!6436 (h!46799 rules!2768)) lt!1359117))))

(assert (=> d!1156381 (ruleValid!2384 thiss!20629 (h!46799 rules!2768))))

(assert (=> d!1156381 (= (maxPrefixOneRule!2405 thiss!20629 (h!46799 rules!2768) lt!1359117) lt!1359314)))

(declare-fun b!3901756 () Bool)

(declare-fun res!1578501 () Bool)

(assert (=> b!3901756 (=> (not res!1578501) (not e!2412447))))

(assert (=> b!3901756 (= res!1578501 (= (rule!9344 (_1!23443 (get!13680 lt!1359314))) (h!46799 rules!2768)))))

(assert (= (and d!1156381 c!678241) b!3901755))

(assert (= (and d!1156381 (not c!678241)) b!3901750))

(assert (= (and b!3901750 (not res!1578500)) b!3901751))

(assert (= (and d!1156381 (not res!1578496)) b!3901752))

(assert (= (and b!3901752 res!1578495) b!3901753))

(assert (= (and b!3901753 res!1578498) b!3901754))

(assert (= (and b!3901754 res!1578497) b!3901756))

(assert (= (and b!3901756 res!1578501) b!3901749))

(assert (= (and b!3901749 res!1578499) b!3901748))

(declare-fun m!4462147 () Bool)

(assert (=> b!3901750 m!4462147))

(declare-fun m!4462149 () Bool)

(assert (=> b!3901750 m!4462149))

(declare-fun m!4462151 () Bool)

(assert (=> b!3901750 m!4462151))

(assert (=> b!3901750 m!4461977))

(assert (=> b!3901750 m!4462147))

(assert (=> b!3901750 m!4461977))

(assert (=> b!3901750 m!4461771))

(declare-fun m!4462153 () Bool)

(assert (=> b!3901750 m!4462153))

(assert (=> b!3901750 m!4461771))

(assert (=> b!3901750 m!4462147))

(declare-fun m!4462155 () Bool)

(assert (=> b!3901750 m!4462155))

(assert (=> b!3901750 m!4462147))

(declare-fun m!4462157 () Bool)

(assert (=> b!3901750 m!4462157))

(declare-fun m!4462159 () Bool)

(assert (=> b!3901750 m!4462159))

(assert (=> b!3901751 m!4461977))

(assert (=> b!3901751 m!4461771))

(assert (=> b!3901751 m!4461977))

(assert (=> b!3901751 m!4461771))

(assert (=> b!3901751 m!4462153))

(declare-fun m!4462161 () Bool)

(assert (=> b!3901751 m!4462161))

(declare-fun m!4462163 () Bool)

(assert (=> b!3901753 m!4462163))

(declare-fun m!4462165 () Bool)

(assert (=> b!3901753 m!4462165))

(assert (=> b!3901753 m!4462165))

(declare-fun m!4462167 () Bool)

(assert (=> b!3901753 m!4462167))

(assert (=> b!3901753 m!4462167))

(declare-fun m!4462169 () Bool)

(assert (=> b!3901753 m!4462169))

(assert (=> b!3901752 m!4462163))

(assert (=> b!3901752 m!4462165))

(assert (=> b!3901752 m!4462165))

(assert (=> b!3901752 m!4462167))

(assert (=> b!3901752 m!4462167))

(declare-fun m!4462171 () Bool)

(assert (=> b!3901752 m!4462171))

(assert (=> b!3901748 m!4462163))

(declare-fun m!4462173 () Bool)

(assert (=> b!3901748 m!4462173))

(assert (=> b!3901756 m!4462163))

(declare-fun m!4462175 () Bool)

(assert (=> d!1156381 m!4462175))

(declare-fun m!4462177 () Bool)

(assert (=> d!1156381 m!4462177))

(declare-fun m!4462179 () Bool)

(assert (=> d!1156381 m!4462179))

(declare-fun m!4462181 () Bool)

(assert (=> d!1156381 m!4462181))

(assert (=> b!3901749 m!4462163))

(declare-fun m!4462183 () Bool)

(assert (=> b!3901749 m!4462183))

(assert (=> b!3901749 m!4462183))

(declare-fun m!4462185 () Bool)

(assert (=> b!3901749 m!4462185))

(assert (=> b!3901754 m!4462163))

(declare-fun m!4462187 () Bool)

(assert (=> b!3901754 m!4462187))

(assert (=> b!3901754 m!4461771))

(assert (=> bm!283857 d!1156381))

(declare-fun d!1156383 () Bool)

(assert (=> d!1156383 (= (isEmpty!24598 prefixTokens!80) ((_ is Nil!41378) prefixTokens!80))))

(assert (=> b!3901270 d!1156383))

(declare-fun d!1156385 () Bool)

(assert (=> d!1156385 (= (inv!55545 (tag!7296 (rule!9344 (h!46798 prefixTokens!80)))) (= (mod (str.len (value!204059 (tag!7296 (rule!9344 (h!46798 prefixTokens!80))))) 2) 0))))

(assert (=> b!3901269 d!1156385))

(declare-fun d!1156387 () Bool)

(declare-fun res!1578502 () Bool)

(declare-fun e!2412450 () Bool)

(assert (=> d!1156387 (=> (not res!1578502) (not e!2412450))))

(assert (=> d!1156387 (= res!1578502 (semiInverseModEq!2759 (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))) (toValue!8876 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80))))))))

(assert (=> d!1156387 (= (inv!55549 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))) e!2412450)))

(declare-fun b!3901757 () Bool)

(assert (=> b!3901757 (= e!2412450 (equivClasses!2658 (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))) (toValue!8876 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80))))))))

(assert (= (and d!1156387 res!1578502) b!3901757))

(declare-fun m!4462189 () Bool)

(assert (=> d!1156387 m!4462189))

(declare-fun m!4462191 () Bool)

(assert (=> b!3901757 m!4462191))

(assert (=> b!3901269 d!1156387))

(declare-fun b!3901759 () Bool)

(declare-fun e!2412452 () List!41502)

(assert (=> b!3901759 (= e!2412452 (Cons!41378 (h!46798 lt!1359135) (++!10629 (t!320071 lt!1359135) (_1!23444 lt!1359113))))))

(declare-fun d!1156389 () Bool)

(declare-fun e!2412451 () Bool)

(assert (=> d!1156389 e!2412451))

(declare-fun res!1578503 () Bool)

(assert (=> d!1156389 (=> (not res!1578503) (not e!2412451))))

(declare-fun lt!1359317 () List!41502)

(assert (=> d!1156389 (= res!1578503 (= (content!6197 lt!1359317) ((_ map or) (content!6197 lt!1359135) (content!6197 (_1!23444 lt!1359113)))))))

(assert (=> d!1156389 (= lt!1359317 e!2412452)))

(declare-fun c!678242 () Bool)

(assert (=> d!1156389 (= c!678242 ((_ is Nil!41378) lt!1359135))))

(assert (=> d!1156389 (= (++!10629 lt!1359135 (_1!23444 lt!1359113)) lt!1359317)))

(declare-fun b!3901761 () Bool)

(assert (=> b!3901761 (= e!2412451 (or (not (= (_1!23444 lt!1359113) Nil!41378)) (= lt!1359317 lt!1359135)))))

(declare-fun b!3901758 () Bool)

(assert (=> b!3901758 (= e!2412452 (_1!23444 lt!1359113))))

(declare-fun b!3901760 () Bool)

(declare-fun res!1578504 () Bool)

(assert (=> b!3901760 (=> (not res!1578504) (not e!2412451))))

(assert (=> b!3901760 (= res!1578504 (= (size!31071 lt!1359317) (+ (size!31071 lt!1359135) (size!31071 (_1!23444 lt!1359113)))))))

(assert (= (and d!1156389 c!678242) b!3901758))

(assert (= (and d!1156389 (not c!678242)) b!3901759))

(assert (= (and d!1156389 res!1578503) b!3901760))

(assert (= (and b!3901760 res!1578504) b!3901761))

(declare-fun m!4462193 () Bool)

(assert (=> b!3901759 m!4462193))

(declare-fun m!4462195 () Bool)

(assert (=> d!1156389 m!4462195))

(declare-fun m!4462197 () Bool)

(assert (=> d!1156389 m!4462197))

(declare-fun m!4462199 () Bool)

(assert (=> d!1156389 m!4462199))

(declare-fun m!4462201 () Bool)

(assert (=> b!3901760 m!4462201))

(declare-fun m!4462203 () Bool)

(assert (=> b!3901760 m!4462203))

(declare-fun m!4462205 () Bool)

(assert (=> b!3901760 m!4462205))

(assert (=> b!3901249 d!1156389))

(declare-fun b!3901764 () Bool)

(declare-fun e!2412455 () Bool)

(assert (=> b!3901764 (= e!2412455 (isPrefix!3531 (tail!5967 Nil!41377) (tail!5967 suffix!1176)))))

(declare-fun b!3901763 () Bool)

(declare-fun res!1578507 () Bool)

(assert (=> b!3901763 (=> (not res!1578507) (not e!2412455))))

(assert (=> b!3901763 (= res!1578507 (= (head!8250 Nil!41377) (head!8250 suffix!1176)))))

(declare-fun b!3901765 () Bool)

(declare-fun e!2412453 () Bool)

(assert (=> b!3901765 (= e!2412453 (>= (size!31068 suffix!1176) (size!31068 Nil!41377)))))

(declare-fun d!1156391 () Bool)

(assert (=> d!1156391 e!2412453))

(declare-fun res!1578506 () Bool)

(assert (=> d!1156391 (=> res!1578506 e!2412453)))

(declare-fun lt!1359318 () Bool)

(assert (=> d!1156391 (= res!1578506 (not lt!1359318))))

(declare-fun e!2412454 () Bool)

(assert (=> d!1156391 (= lt!1359318 e!2412454)))

(declare-fun res!1578505 () Bool)

(assert (=> d!1156391 (=> res!1578505 e!2412454)))

(assert (=> d!1156391 (= res!1578505 ((_ is Nil!41377) Nil!41377))))

(assert (=> d!1156391 (= (isPrefix!3531 Nil!41377 suffix!1176) lt!1359318)))

(declare-fun b!3901762 () Bool)

(assert (=> b!3901762 (= e!2412454 e!2412455)))

(declare-fun res!1578508 () Bool)

(assert (=> b!3901762 (=> (not res!1578508) (not e!2412455))))

(assert (=> b!3901762 (= res!1578508 (not ((_ is Nil!41377) suffix!1176)))))

(assert (= (and d!1156391 (not res!1578505)) b!3901762))

(assert (= (and b!3901762 res!1578508) b!3901763))

(assert (= (and b!3901763 res!1578507) b!3901764))

(assert (= (and d!1156391 (not res!1578506)) b!3901765))

(declare-fun m!4462207 () Bool)

(assert (=> b!3901764 m!4462207))

(declare-fun m!4462209 () Bool)

(assert (=> b!3901764 m!4462209))

(assert (=> b!3901764 m!4462207))

(assert (=> b!3901764 m!4462209))

(declare-fun m!4462211 () Bool)

(assert (=> b!3901764 m!4462211))

(declare-fun m!4462213 () Bool)

(assert (=> b!3901763 m!4462213))

(declare-fun m!4462215 () Bool)

(assert (=> b!3901763 m!4462215))

(assert (=> b!3901765 m!4462071))

(assert (=> b!3901765 m!4461977))

(assert (=> b!3901248 d!1156391))

(declare-fun d!1156393 () Bool)

(declare-fun res!1578509 () Bool)

(declare-fun e!2412456 () Bool)

(assert (=> d!1156393 (=> (not res!1578509) (not e!2412456))))

(assert (=> d!1156393 (= res!1578509 (not (isEmpty!24596 (originalCharacters!7036 (h!46798 prefixTokens!80)))))))

(assert (=> d!1156393 (= (inv!55548 (h!46798 prefixTokens!80)) e!2412456)))

(declare-fun b!3901766 () Bool)

(declare-fun res!1578510 () Bool)

(assert (=> b!3901766 (=> (not res!1578510) (not e!2412456))))

(assert (=> b!3901766 (= res!1578510 (= (originalCharacters!7036 (h!46798 prefixTokens!80)) (list!15380 (dynLambda!17768 (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))) (value!204060 (h!46798 prefixTokens!80))))))))

(declare-fun b!3901767 () Bool)

(assert (=> b!3901767 (= e!2412456 (= (size!31067 (h!46798 prefixTokens!80)) (size!31068 (originalCharacters!7036 (h!46798 prefixTokens!80)))))))

(assert (= (and d!1156393 res!1578509) b!3901766))

(assert (= (and b!3901766 res!1578510) b!3901767))

(declare-fun b_lambda!114017 () Bool)

(assert (=> (not b_lambda!114017) (not b!3901766)))

(declare-fun t!320152 () Bool)

(declare-fun tb!229935 () Bool)

(assert (=> (and b!3901251 (= (toChars!8735 (transformation!6436 (h!46799 rules!2768))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80))))) t!320152) tb!229935))

(declare-fun b!3901768 () Bool)

(declare-fun e!2412457 () Bool)

(declare-fun tp!1187211 () Bool)

(assert (=> b!3901768 (= e!2412457 (and (inv!55552 (c!678163 (dynLambda!17768 (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))) (value!204060 (h!46798 prefixTokens!80))))) tp!1187211))))

(declare-fun result!279178 () Bool)

(assert (=> tb!229935 (= result!279178 (and (inv!55553 (dynLambda!17768 (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))) (value!204060 (h!46798 prefixTokens!80)))) e!2412457))))

(assert (= tb!229935 b!3901768))

(declare-fun m!4462217 () Bool)

(assert (=> b!3901768 m!4462217))

(declare-fun m!4462219 () Bool)

(assert (=> tb!229935 m!4462219))

(assert (=> b!3901766 t!320152))

(declare-fun b_and!295151 () Bool)

(assert (= b_and!295143 (and (=> t!320152 result!279178) b_and!295151)))

(declare-fun t!320154 () Bool)

(declare-fun tb!229937 () Bool)

(assert (=> (and b!3901264 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80))))) t!320154) tb!229937))

(declare-fun result!279180 () Bool)

(assert (= result!279180 result!279178))

(assert (=> b!3901766 t!320154))

(declare-fun b_and!295153 () Bool)

(assert (= b_and!295145 (and (=> t!320154 result!279180) b_and!295153)))

(declare-fun t!320156 () Bool)

(declare-fun tb!229939 () Bool)

(assert (=> (and b!3901241 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80))))) t!320156) tb!229939))

(declare-fun result!279182 () Bool)

(assert (= result!279182 result!279178))

(assert (=> b!3901766 t!320156))

(declare-fun b_and!295155 () Bool)

(assert (= b_and!295147 (and (=> t!320156 result!279182) b_and!295155)))

(declare-fun tb!229941 () Bool)

(declare-fun t!320158 () Bool)

(assert (=> (and b!3901239 (= (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80))))) t!320158) tb!229941))

(declare-fun result!279184 () Bool)

(assert (= result!279184 result!279178))

(assert (=> b!3901766 t!320158))

(declare-fun b_and!295157 () Bool)

(assert (= b_and!295149 (and (=> t!320158 result!279184) b_and!295157)))

(declare-fun m!4462221 () Bool)

(assert (=> d!1156393 m!4462221))

(declare-fun m!4462223 () Bool)

(assert (=> b!3901766 m!4462223))

(assert (=> b!3901766 m!4462223))

(declare-fun m!4462225 () Bool)

(assert (=> b!3901766 m!4462225))

(declare-fun m!4462227 () Bool)

(assert (=> b!3901767 m!4462227))

(assert (=> b!3901273 d!1156393))

(declare-fun d!1156395 () Bool)

(assert (=> d!1156395 (= (get!13680 lt!1359114) (v!39169 lt!1359114))))

(assert (=> b!3901253 d!1156395))

(declare-fun d!1156397 () Bool)

(assert (=> d!1156397 (= (inv!55545 (tag!7296 (rule!9344 (_1!23443 (v!39169 err!4393))))) (= (mod (str.len (value!204059 (tag!7296 (rule!9344 (_1!23443 (v!39169 err!4393)))))) 2) 0))))

(assert (=> b!3901252 d!1156397))

(declare-fun d!1156399 () Bool)

(declare-fun res!1578511 () Bool)

(declare-fun e!2412458 () Bool)

(assert (=> d!1156399 (=> (not res!1578511) (not e!2412458))))

(assert (=> d!1156399 (= res!1578511 (semiInverseModEq!2759 (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))) (toValue!8876 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393)))))))))

(assert (=> d!1156399 (= (inv!55549 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))) e!2412458)))

(declare-fun b!3901769 () Bool)

(assert (=> b!3901769 (= e!2412458 (equivClasses!2658 (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))) (toValue!8876 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393)))))))))

(assert (= (and d!1156399 res!1578511) b!3901769))

(declare-fun m!4462229 () Bool)

(assert (=> d!1156399 m!4462229))

(declare-fun m!4462231 () Bool)

(assert (=> b!3901769 m!4462231))

(assert (=> b!3901252 d!1156399))

(declare-fun b!3901770 () Bool)

(declare-fun e!2412460 () Bool)

(assert (=> b!3901770 (= e!2412460 (inv!16 (value!204060 (h!46798 prefixTokens!80))))))

(declare-fun b!3901771 () Bool)

(declare-fun res!1578512 () Bool)

(declare-fun e!2412461 () Bool)

(assert (=> b!3901771 (=> res!1578512 e!2412461)))

(assert (=> b!3901771 (= res!1578512 (not ((_ is IntegerValue!20000) (value!204060 (h!46798 prefixTokens!80)))))))

(declare-fun e!2412459 () Bool)

(assert (=> b!3901771 (= e!2412459 e!2412461)))

(declare-fun b!3901772 () Bool)

(assert (=> b!3901772 (= e!2412460 e!2412459)))

(declare-fun c!678244 () Bool)

(assert (=> b!3901772 (= c!678244 ((_ is IntegerValue!19999) (value!204060 (h!46798 prefixTokens!80))))))

(declare-fun d!1156401 () Bool)

(declare-fun c!678243 () Bool)

(assert (=> d!1156401 (= c!678243 ((_ is IntegerValue!19998) (value!204060 (h!46798 prefixTokens!80))))))

(assert (=> d!1156401 (= (inv!21 (value!204060 (h!46798 prefixTokens!80))) e!2412460)))

(declare-fun b!3901773 () Bool)

(assert (=> b!3901773 (= e!2412459 (inv!17 (value!204060 (h!46798 prefixTokens!80))))))

(declare-fun b!3901774 () Bool)

(assert (=> b!3901774 (= e!2412461 (inv!15 (value!204060 (h!46798 prefixTokens!80))))))

(assert (= (and d!1156401 c!678243) b!3901770))

(assert (= (and d!1156401 (not c!678243)) b!3901772))

(assert (= (and b!3901772 c!678244) b!3901773))

(assert (= (and b!3901772 (not c!678244)) b!3901771))

(assert (= (and b!3901771 (not res!1578512)) b!3901774))

(declare-fun m!4462233 () Bool)

(assert (=> b!3901770 m!4462233))

(declare-fun m!4462235 () Bool)

(assert (=> b!3901773 m!4462235))

(declare-fun m!4462237 () Bool)

(assert (=> b!3901774 m!4462237))

(assert (=> b!3901272 d!1156401))

(declare-fun b!3901775 () Bool)

(declare-fun e!2412463 () Bool)

(assert (=> b!3901775 (= e!2412463 (inv!16 (value!204060 (h!46798 suffixTokens!72))))))

(declare-fun b!3901776 () Bool)

(declare-fun res!1578513 () Bool)

(declare-fun e!2412464 () Bool)

(assert (=> b!3901776 (=> res!1578513 e!2412464)))

(assert (=> b!3901776 (= res!1578513 (not ((_ is IntegerValue!20000) (value!204060 (h!46798 suffixTokens!72)))))))

(declare-fun e!2412462 () Bool)

(assert (=> b!3901776 (= e!2412462 e!2412464)))

(declare-fun b!3901777 () Bool)

(assert (=> b!3901777 (= e!2412463 e!2412462)))

(declare-fun c!678246 () Bool)

(assert (=> b!3901777 (= c!678246 ((_ is IntegerValue!19999) (value!204060 (h!46798 suffixTokens!72))))))

(declare-fun d!1156403 () Bool)

(declare-fun c!678245 () Bool)

(assert (=> d!1156403 (= c!678245 ((_ is IntegerValue!19998) (value!204060 (h!46798 suffixTokens!72))))))

(assert (=> d!1156403 (= (inv!21 (value!204060 (h!46798 suffixTokens!72))) e!2412463)))

(declare-fun b!3901778 () Bool)

(assert (=> b!3901778 (= e!2412462 (inv!17 (value!204060 (h!46798 suffixTokens!72))))))

(declare-fun b!3901779 () Bool)

(assert (=> b!3901779 (= e!2412464 (inv!15 (value!204060 (h!46798 suffixTokens!72))))))

(assert (= (and d!1156403 c!678245) b!3901775))

(assert (= (and d!1156403 (not c!678245)) b!3901777))

(assert (= (and b!3901777 c!678246) b!3901778))

(assert (= (and b!3901777 (not c!678246)) b!3901776))

(assert (= (and b!3901776 (not res!1578513)) b!3901779))

(declare-fun m!4462239 () Bool)

(assert (=> b!3901775 m!4462239))

(declare-fun m!4462241 () Bool)

(assert (=> b!3901778 m!4462241))

(declare-fun m!4462243 () Bool)

(assert (=> b!3901779 m!4462243))

(assert (=> b!3901271 d!1156403))

(declare-fun d!1156405 () Bool)

(assert (=> d!1156405 (= (isEmpty!24597 rules!2768) ((_ is Nil!41379) rules!2768))))

(assert (=> b!3901255 d!1156405))

(declare-fun d!1156407 () Bool)

(assert (=> d!1156407 (isPrefix!3531 lt!1359129 (++!10630 lt!1359129 (_2!23443 (v!39169 lt!1359128))))))

(declare-fun lt!1359321 () Unit!59498)

(declare-fun choose!23091 (List!41501 List!41501) Unit!59498)

(assert (=> d!1156407 (= lt!1359321 (choose!23091 lt!1359129 (_2!23443 (v!39169 lt!1359128))))))

(assert (=> d!1156407 (= (lemmaConcatTwoListThenFirstIsPrefix!2394 lt!1359129 (_2!23443 (v!39169 lt!1359128))) lt!1359321)))

(declare-fun bs!584973 () Bool)

(assert (= bs!584973 d!1156407))

(assert (=> bs!584973 m!4461441))

(assert (=> bs!584973 m!4461441))

(declare-fun m!4462245 () Bool)

(assert (=> bs!584973 m!4462245))

(declare-fun m!4462247 () Bool)

(assert (=> bs!584973 m!4462247))

(assert (=> b!3901254 d!1156407))

(declare-fun d!1156409 () Bool)

(declare-fun lt!1359324 () BalanceConc!24888)

(assert (=> d!1156409 (= (list!15380 lt!1359324) (originalCharacters!7036 (_1!23443 (v!39169 lt!1359128))))))

(assert (=> d!1156409 (= lt!1359324 (dynLambda!17768 (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128))))) (value!204060 (_1!23443 (v!39169 lt!1359128)))))))

(assert (=> d!1156409 (= (charsOf!4260 (_1!23443 (v!39169 lt!1359128))) lt!1359324)))

(declare-fun b_lambda!114019 () Bool)

(assert (=> (not b_lambda!114019) (not d!1156409)))

(declare-fun t!320160 () Bool)

(declare-fun tb!229943 () Bool)

(assert (=> (and b!3901251 (= (toChars!8735 (transformation!6436 (h!46799 rules!2768))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))))) t!320160) tb!229943))

(declare-fun b!3901780 () Bool)

(declare-fun e!2412465 () Bool)

(declare-fun tp!1187212 () Bool)

(assert (=> b!3901780 (= e!2412465 (and (inv!55552 (c!678163 (dynLambda!17768 (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128))))) (value!204060 (_1!23443 (v!39169 lt!1359128)))))) tp!1187212))))

(declare-fun result!279186 () Bool)

(assert (=> tb!229943 (= result!279186 (and (inv!55553 (dynLambda!17768 (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128))))) (value!204060 (_1!23443 (v!39169 lt!1359128))))) e!2412465))))

(assert (= tb!229943 b!3901780))

(declare-fun m!4462249 () Bool)

(assert (=> b!3901780 m!4462249))

(declare-fun m!4462251 () Bool)

(assert (=> tb!229943 m!4462251))

(assert (=> d!1156409 t!320160))

(declare-fun b_and!295159 () Bool)

(assert (= b_and!295151 (and (=> t!320160 result!279186) b_and!295159)))

(declare-fun tb!229945 () Bool)

(declare-fun t!320162 () Bool)

(assert (=> (and b!3901264 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))))) t!320162) tb!229945))

(declare-fun result!279188 () Bool)

(assert (= result!279188 result!279186))

(assert (=> d!1156409 t!320162))

(declare-fun b_and!295161 () Bool)

(assert (= b_and!295153 (and (=> t!320162 result!279188) b_and!295161)))

(declare-fun t!320164 () Bool)

(declare-fun tb!229947 () Bool)

(assert (=> (and b!3901241 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))))) t!320164) tb!229947))

(declare-fun result!279190 () Bool)

(assert (= result!279190 result!279186))

(assert (=> d!1156409 t!320164))

(declare-fun b_and!295163 () Bool)

(assert (= b_and!295155 (and (=> t!320164 result!279190) b_and!295163)))

(declare-fun t!320166 () Bool)

(declare-fun tb!229949 () Bool)

(assert (=> (and b!3901239 (= (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))))) t!320166) tb!229949))

(declare-fun result!279192 () Bool)

(assert (= result!279192 result!279186))

(assert (=> d!1156409 t!320166))

(declare-fun b_and!295165 () Bool)

(assert (= b_and!295157 (and (=> t!320166 result!279192) b_and!295165)))

(declare-fun m!4462253 () Bool)

(assert (=> d!1156409 m!4462253))

(declare-fun m!4462255 () Bool)

(assert (=> d!1156409 m!4462255))

(assert (=> b!3901254 d!1156409))

(declare-fun b!3901781 () Bool)

(declare-fun e!2412468 () Bool)

(declare-fun lt!1359325 () tuple2!40620)

(assert (=> b!3901781 (= e!2412468 (= (_2!23444 lt!1359325) (_2!23443 (v!39169 lt!1359128))))))

(declare-fun d!1156411 () Bool)

(assert (=> d!1156411 e!2412468))

(declare-fun c!678247 () Bool)

(assert (=> d!1156411 (= c!678247 (> (size!31071 (_1!23444 lt!1359325)) 0))))

(declare-fun e!2412466 () tuple2!40620)

(assert (=> d!1156411 (= lt!1359325 e!2412466)))

(declare-fun c!678248 () Bool)

(declare-fun lt!1359327 () Option!8856)

(assert (=> d!1156411 (= c!678248 ((_ is Some!8855) lt!1359327))))

(assert (=> d!1156411 (= lt!1359327 (maxPrefix!3329 thiss!20629 rules!2768 (_2!23443 (v!39169 lt!1359128))))))

(assert (=> d!1156411 (= (lexList!1793 thiss!20629 rules!2768 (_2!23443 (v!39169 lt!1359128))) lt!1359325)))

(declare-fun b!3901782 () Bool)

(declare-fun lt!1359326 () tuple2!40620)

(assert (=> b!3901782 (= e!2412466 (tuple2!40621 (Cons!41378 (_1!23443 (v!39169 lt!1359327)) (_1!23444 lt!1359326)) (_2!23444 lt!1359326)))))

(assert (=> b!3901782 (= lt!1359326 (lexList!1793 thiss!20629 rules!2768 (_2!23443 (v!39169 lt!1359327))))))

(declare-fun b!3901783 () Bool)

(declare-fun e!2412467 () Bool)

(assert (=> b!3901783 (= e!2412467 (not (isEmpty!24598 (_1!23444 lt!1359325))))))

(declare-fun b!3901784 () Bool)

(assert (=> b!3901784 (= e!2412468 e!2412467)))

(declare-fun res!1578514 () Bool)

(assert (=> b!3901784 (= res!1578514 (< (size!31068 (_2!23444 lt!1359325)) (size!31068 (_2!23443 (v!39169 lt!1359128)))))))

(assert (=> b!3901784 (=> (not res!1578514) (not e!2412467))))

(declare-fun b!3901785 () Bool)

(assert (=> b!3901785 (= e!2412466 (tuple2!40621 Nil!41378 (_2!23443 (v!39169 lt!1359128))))))

(assert (= (and d!1156411 c!678248) b!3901782))

(assert (= (and d!1156411 (not c!678248)) b!3901785))

(assert (= (and d!1156411 c!678247) b!3901784))

(assert (= (and d!1156411 (not c!678247)) b!3901781))

(assert (= (and b!3901784 res!1578514) b!3901783))

(declare-fun m!4462257 () Bool)

(assert (=> d!1156411 m!4462257))

(declare-fun m!4462259 () Bool)

(assert (=> d!1156411 m!4462259))

(declare-fun m!4462261 () Bool)

(assert (=> b!3901782 m!4462261))

(declare-fun m!4462263 () Bool)

(assert (=> b!3901783 m!4462263))

(declare-fun m!4462265 () Bool)

(assert (=> b!3901784 m!4462265))

(declare-fun m!4462267 () Bool)

(assert (=> b!3901784 m!4462267))

(assert (=> b!3901254 d!1156411))

(declare-fun d!1156413 () Bool)

(declare-fun lt!1359330 () List!41501)

(assert (=> d!1156413 (= (++!10630 lt!1359129 lt!1359330) lt!1359117)))

(declare-fun e!2412471 () List!41501)

(assert (=> d!1156413 (= lt!1359330 e!2412471)))

(declare-fun c!678251 () Bool)

(assert (=> d!1156413 (= c!678251 ((_ is Cons!41377) lt!1359129))))

(assert (=> d!1156413 (>= (size!31068 lt!1359117) (size!31068 lt!1359129))))

(assert (=> d!1156413 (= (getSuffix!1986 lt!1359117 lt!1359129) lt!1359330)))

(declare-fun b!3901790 () Bool)

(assert (=> b!3901790 (= e!2412471 (getSuffix!1986 (tail!5967 lt!1359117) (t!320070 lt!1359129)))))

(declare-fun b!3901791 () Bool)

(assert (=> b!3901791 (= e!2412471 lt!1359117)))

(assert (= (and d!1156413 c!678251) b!3901790))

(assert (= (and d!1156413 (not c!678251)) b!3901791))

(declare-fun m!4462269 () Bool)

(assert (=> d!1156413 m!4462269))

(assert (=> d!1156413 m!4461771))

(assert (=> d!1156413 m!4461447))

(assert (=> b!3901790 m!4462073))

(assert (=> b!3901790 m!4462073))

(declare-fun m!4462271 () Bool)

(assert (=> b!3901790 m!4462271))

(assert (=> b!3901254 d!1156413))

(declare-fun b!3901794 () Bool)

(declare-fun e!2412474 () Bool)

(assert (=> b!3901794 (= e!2412474 (isPrefix!3531 (tail!5967 lt!1359129) (tail!5967 lt!1359121)))))

(declare-fun b!3901793 () Bool)

(declare-fun res!1578517 () Bool)

(assert (=> b!3901793 (=> (not res!1578517) (not e!2412474))))

(assert (=> b!3901793 (= res!1578517 (= (head!8250 lt!1359129) (head!8250 lt!1359121)))))

(declare-fun b!3901795 () Bool)

(declare-fun e!2412472 () Bool)

(assert (=> b!3901795 (= e!2412472 (>= (size!31068 lt!1359121) (size!31068 lt!1359129)))))

(declare-fun d!1156415 () Bool)

(assert (=> d!1156415 e!2412472))

(declare-fun res!1578516 () Bool)

(assert (=> d!1156415 (=> res!1578516 e!2412472)))

(declare-fun lt!1359331 () Bool)

(assert (=> d!1156415 (= res!1578516 (not lt!1359331))))

(declare-fun e!2412473 () Bool)

(assert (=> d!1156415 (= lt!1359331 e!2412473)))

(declare-fun res!1578515 () Bool)

(assert (=> d!1156415 (=> res!1578515 e!2412473)))

(assert (=> d!1156415 (= res!1578515 ((_ is Nil!41377) lt!1359129))))

(assert (=> d!1156415 (= (isPrefix!3531 lt!1359129 lt!1359121) lt!1359331)))

(declare-fun b!3901792 () Bool)

(assert (=> b!3901792 (= e!2412473 e!2412474)))

(declare-fun res!1578518 () Bool)

(assert (=> b!3901792 (=> (not res!1578518) (not e!2412474))))

(assert (=> b!3901792 (= res!1578518 (not ((_ is Nil!41377) lt!1359121)))))

(assert (= (and d!1156415 (not res!1578515)) b!3901792))

(assert (= (and b!3901792 res!1578518) b!3901793))

(assert (= (and b!3901793 res!1578517) b!3901794))

(assert (= (and d!1156415 (not res!1578516)) b!3901795))

(declare-fun m!4462273 () Bool)

(assert (=> b!3901794 m!4462273))

(declare-fun m!4462275 () Bool)

(assert (=> b!3901794 m!4462275))

(assert (=> b!3901794 m!4462273))

(assert (=> b!3901794 m!4462275))

(declare-fun m!4462277 () Bool)

(assert (=> b!3901794 m!4462277))

(declare-fun m!4462279 () Bool)

(assert (=> b!3901793 m!4462279))

(declare-fun m!4462281 () Bool)

(assert (=> b!3901793 m!4462281))

(declare-fun m!4462283 () Bool)

(assert (=> b!3901795 m!4462283))

(assert (=> b!3901795 m!4461447))

(assert (=> b!3901254 d!1156415))

(declare-fun d!1156417 () Bool)

(declare-fun lt!1359332 () Int)

(assert (=> d!1156417 (>= lt!1359332 0)))

(declare-fun e!2412475 () Int)

(assert (=> d!1156417 (= lt!1359332 e!2412475)))

(declare-fun c!678252 () Bool)

(assert (=> d!1156417 (= c!678252 ((_ is Nil!41377) lt!1359129))))

(assert (=> d!1156417 (= (size!31068 lt!1359129) lt!1359332)))

(declare-fun b!3901796 () Bool)

(assert (=> b!3901796 (= e!2412475 0)))

(declare-fun b!3901797 () Bool)

(assert (=> b!3901797 (= e!2412475 (+ 1 (size!31068 (t!320070 lt!1359129))))))

(assert (= (and d!1156417 c!678252) b!3901796))

(assert (= (and d!1156417 (not c!678252)) b!3901797))

(declare-fun m!4462285 () Bool)

(assert (=> b!3901797 m!4462285))

(assert (=> b!3901254 d!1156417))

(declare-fun d!1156419 () Bool)

(assert (=> d!1156419 (= (size!31067 (_1!23443 (v!39169 lt!1359128))) (size!31068 (originalCharacters!7036 (_1!23443 (v!39169 lt!1359128)))))))

(declare-fun Unit!59501 () Unit!59498)

(assert (=> d!1156419 (= (lemmaCharactersSize!1093 (_1!23443 (v!39169 lt!1359128))) Unit!59501)))

(declare-fun bs!584974 () Bool)

(assert (= bs!584974 d!1156419))

(assert (=> bs!584974 m!4461499))

(assert (=> b!3901254 d!1156419))

(declare-fun d!1156421 () Bool)

(declare-fun fromListB!2169 (List!41501) BalanceConc!24888)

(assert (=> d!1156421 (= (seqFromList!4703 lt!1359129) (fromListB!2169 lt!1359129))))

(declare-fun bs!584975 () Bool)

(assert (= bs!584975 d!1156421))

(declare-fun m!4462287 () Bool)

(assert (=> bs!584975 m!4462287))

(assert (=> b!3901254 d!1156421))

(declare-fun d!1156423 () Bool)

(declare-fun res!1578523 () Bool)

(declare-fun e!2412478 () Bool)

(assert (=> d!1156423 (=> (not res!1578523) (not e!2412478))))

(declare-fun validRegex!5158 (Regex!11341) Bool)

(assert (=> d!1156423 (= res!1578523 (validRegex!5158 (regex!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128))))))))

(assert (=> d!1156423 (= (ruleValid!2384 thiss!20629 (rule!9344 (_1!23443 (v!39169 lt!1359128)))) e!2412478)))

(declare-fun b!3901802 () Bool)

(declare-fun res!1578524 () Bool)

(assert (=> b!3901802 (=> (not res!1578524) (not e!2412478))))

(declare-fun nullable!3959 (Regex!11341) Bool)

(assert (=> b!3901802 (= res!1578524 (not (nullable!3959 (regex!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))))))))

(declare-fun b!3901803 () Bool)

(assert (=> b!3901803 (= e!2412478 (not (= (tag!7296 (rule!9344 (_1!23443 (v!39169 lt!1359128)))) (String!47049 ""))))))

(assert (= (and d!1156423 res!1578523) b!3901802))

(assert (= (and b!3901802 res!1578524) b!3901803))

(declare-fun m!4462289 () Bool)

(assert (=> d!1156423 m!4462289))

(declare-fun m!4462291 () Bool)

(assert (=> b!3901802 m!4462291))

(assert (=> b!3901254 d!1156423))

(declare-fun d!1156425 () Bool)

(assert (=> d!1156425 (ruleValid!2384 thiss!20629 (rule!9344 (_1!23443 (v!39169 lt!1359128))))))

(declare-fun lt!1359335 () Unit!59498)

(declare-fun choose!23092 (LexerInterface!6025 Rule!12672 List!41503) Unit!59498)

(assert (=> d!1156425 (= lt!1359335 (choose!23092 thiss!20629 (rule!9344 (_1!23443 (v!39169 lt!1359128))) rules!2768))))

(assert (=> d!1156425 (contains!8317 rules!2768 (rule!9344 (_1!23443 (v!39169 lt!1359128))))))

(assert (=> d!1156425 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1464 thiss!20629 (rule!9344 (_1!23443 (v!39169 lt!1359128))) rules!2768) lt!1359335)))

(declare-fun bs!584976 () Bool)

(assert (= bs!584976 d!1156425))

(assert (=> bs!584976 m!4461439))

(declare-fun m!4462293 () Bool)

(assert (=> bs!584976 m!4462293))

(declare-fun m!4462295 () Bool)

(assert (=> bs!584976 m!4462295))

(assert (=> b!3901254 d!1156425))

(declare-fun b!3901804 () Bool)

(declare-fun e!2412479 () List!41501)

(assert (=> b!3901804 (= e!2412479 (_2!23443 (v!39169 lt!1359128)))))

(declare-fun b!3901806 () Bool)

(declare-fun res!1578526 () Bool)

(declare-fun e!2412480 () Bool)

(assert (=> b!3901806 (=> (not res!1578526) (not e!2412480))))

(declare-fun lt!1359336 () List!41501)

(assert (=> b!3901806 (= res!1578526 (= (size!31068 lt!1359336) (+ (size!31068 lt!1359129) (size!31068 (_2!23443 (v!39169 lt!1359128))))))))

(declare-fun d!1156427 () Bool)

(assert (=> d!1156427 e!2412480))

(declare-fun res!1578525 () Bool)

(assert (=> d!1156427 (=> (not res!1578525) (not e!2412480))))

(assert (=> d!1156427 (= res!1578525 (= (content!6196 lt!1359336) ((_ map or) (content!6196 lt!1359129) (content!6196 (_2!23443 (v!39169 lt!1359128))))))))

(assert (=> d!1156427 (= lt!1359336 e!2412479)))

(declare-fun c!678253 () Bool)

(assert (=> d!1156427 (= c!678253 ((_ is Nil!41377) lt!1359129))))

(assert (=> d!1156427 (= (++!10630 lt!1359129 (_2!23443 (v!39169 lt!1359128))) lt!1359336)))

(declare-fun b!3901805 () Bool)

(assert (=> b!3901805 (= e!2412479 (Cons!41377 (h!46797 lt!1359129) (++!10630 (t!320070 lt!1359129) (_2!23443 (v!39169 lt!1359128)))))))

(declare-fun b!3901807 () Bool)

(assert (=> b!3901807 (= e!2412480 (or (not (= (_2!23443 (v!39169 lt!1359128)) Nil!41377)) (= lt!1359336 lt!1359129)))))

(assert (= (and d!1156427 c!678253) b!3901804))

(assert (= (and d!1156427 (not c!678253)) b!3901805))

(assert (= (and d!1156427 res!1578525) b!3901806))

(assert (= (and b!3901806 res!1578526) b!3901807))

(declare-fun m!4462297 () Bool)

(assert (=> b!3901806 m!4462297))

(assert (=> b!3901806 m!4461447))

(assert (=> b!3901806 m!4462267))

(declare-fun m!4462299 () Bool)

(assert (=> d!1156427 m!4462299))

(declare-fun m!4462301 () Bool)

(assert (=> d!1156427 m!4462301))

(declare-fun m!4462303 () Bool)

(assert (=> d!1156427 m!4462303))

(declare-fun m!4462305 () Bool)

(assert (=> b!3901805 m!4462305))

(assert (=> b!3901254 d!1156427))

(declare-fun d!1156429 () Bool)

(declare-fun list!15382 (Conc!12647) List!41501)

(assert (=> d!1156429 (= (list!15380 (charsOf!4260 (_1!23443 (v!39169 lt!1359128)))) (list!15382 (c!678163 (charsOf!4260 (_1!23443 (v!39169 lt!1359128))))))))

(declare-fun bs!584977 () Bool)

(assert (= bs!584977 d!1156429))

(declare-fun m!4462307 () Bool)

(assert (=> bs!584977 m!4462307))

(assert (=> b!3901254 d!1156429))

(declare-fun d!1156431 () Bool)

(declare-fun dynLambda!17770 (Int BalanceConc!24888) TokenValue!6666)

(assert (=> d!1156431 (= (apply!9675 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))) (seqFromList!4703 lt!1359129)) (dynLambda!17770 (toValue!8876 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128))))) (seqFromList!4703 lt!1359129)))))

(declare-fun b_lambda!114021 () Bool)

(assert (=> (not b_lambda!114021) (not d!1156431)))

(declare-fun t!320168 () Bool)

(declare-fun tb!229951 () Bool)

(assert (=> (and b!3901251 (= (toValue!8876 (transformation!6436 (h!46799 rules!2768))) (toValue!8876 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))))) t!320168) tb!229951))

(declare-fun result!279194 () Bool)

(assert (=> tb!229951 (= result!279194 (inv!21 (dynLambda!17770 (toValue!8876 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128))))) (seqFromList!4703 lt!1359129))))))

(declare-fun m!4462309 () Bool)

(assert (=> tb!229951 m!4462309))

(assert (=> d!1156431 t!320168))

(declare-fun b_and!295167 () Bool)

(assert (= b_and!295075 (and (=> t!320168 result!279194) b_and!295167)))

(declare-fun t!320170 () Bool)

(declare-fun tb!229953 () Bool)

(assert (=> (and b!3901264 (= (toValue!8876 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))) (toValue!8876 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))))) t!320170) tb!229953))

(declare-fun result!279198 () Bool)

(assert (= result!279198 result!279194))

(assert (=> d!1156431 t!320170))

(declare-fun b_and!295169 () Bool)

(assert (= b_and!295079 (and (=> t!320170 result!279198) b_and!295169)))

(declare-fun t!320172 () Bool)

(declare-fun tb!229955 () Bool)

(assert (=> (and b!3901241 (= (toValue!8876 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))) (toValue!8876 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))))) t!320172) tb!229955))

(declare-fun result!279200 () Bool)

(assert (= result!279200 result!279194))

(assert (=> d!1156431 t!320172))

(declare-fun b_and!295171 () Bool)

(assert (= b_and!295083 (and (=> t!320172 result!279200) b_and!295171)))

(declare-fun t!320174 () Bool)

(declare-fun tb!229957 () Bool)

(assert (=> (and b!3901239 (= (toValue!8876 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))) (toValue!8876 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))))) t!320174) tb!229957))

(declare-fun result!279202 () Bool)

(assert (= result!279202 result!279194))

(assert (=> d!1156431 t!320174))

(declare-fun b_and!295173 () Bool)

(assert (= b_and!295087 (and (=> t!320174 result!279202) b_and!295173)))

(assert (=> d!1156431 m!4461437))

(declare-fun m!4462311 () Bool)

(assert (=> d!1156431 m!4462311))

(assert (=> b!3901254 d!1156431))

(declare-fun d!1156433 () Bool)

(assert (=> d!1156433 (= (_2!23443 (v!39169 lt!1359128)) lt!1359134)))

(declare-fun lt!1359339 () Unit!59498)

(declare-fun choose!23093 (List!41501 List!41501 List!41501 List!41501 List!41501) Unit!59498)

(assert (=> d!1156433 (= lt!1359339 (choose!23093 lt!1359129 (_2!23443 (v!39169 lt!1359128)) lt!1359129 lt!1359134 lt!1359117))))

(assert (=> d!1156433 (isPrefix!3531 lt!1359129 lt!1359117)))

(assert (=> d!1156433 (= (lemmaSamePrefixThenSameSuffix!1752 lt!1359129 (_2!23443 (v!39169 lt!1359128)) lt!1359129 lt!1359134 lt!1359117) lt!1359339)))

(declare-fun bs!584978 () Bool)

(assert (= bs!584978 d!1156433))

(declare-fun m!4462313 () Bool)

(assert (=> bs!584978 m!4462313))

(declare-fun m!4462315 () Bool)

(assert (=> bs!584978 m!4462315))

(assert (=> b!3901254 d!1156433))

(declare-fun d!1156435 () Bool)

(declare-fun res!1578527 () Bool)

(declare-fun e!2412484 () Bool)

(assert (=> d!1156435 (=> (not res!1578527) (not e!2412484))))

(assert (=> d!1156435 (= res!1578527 (not (isEmpty!24596 (originalCharacters!7036 (h!46798 suffixTokens!72)))))))

(assert (=> d!1156435 (= (inv!55548 (h!46798 suffixTokens!72)) e!2412484)))

(declare-fun b!3901810 () Bool)

(declare-fun res!1578528 () Bool)

(assert (=> b!3901810 (=> (not res!1578528) (not e!2412484))))

(assert (=> b!3901810 (= res!1578528 (= (originalCharacters!7036 (h!46798 suffixTokens!72)) (list!15380 (dynLambda!17768 (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))) (value!204060 (h!46798 suffixTokens!72))))))))

(declare-fun b!3901811 () Bool)

(assert (=> b!3901811 (= e!2412484 (= (size!31067 (h!46798 suffixTokens!72)) (size!31068 (originalCharacters!7036 (h!46798 suffixTokens!72)))))))

(assert (= (and d!1156435 res!1578527) b!3901810))

(assert (= (and b!3901810 res!1578528) b!3901811))

(declare-fun b_lambda!114023 () Bool)

(assert (=> (not b_lambda!114023) (not b!3901810)))

(declare-fun tb!229959 () Bool)

(declare-fun t!320176 () Bool)

(assert (=> (and b!3901251 (= (toChars!8735 (transformation!6436 (h!46799 rules!2768))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72))))) t!320176) tb!229959))

(declare-fun b!3901812 () Bool)

(declare-fun e!2412485 () Bool)

(declare-fun tp!1187213 () Bool)

(assert (=> b!3901812 (= e!2412485 (and (inv!55552 (c!678163 (dynLambda!17768 (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))) (value!204060 (h!46798 suffixTokens!72))))) tp!1187213))))

(declare-fun result!279204 () Bool)

(assert (=> tb!229959 (= result!279204 (and (inv!55553 (dynLambda!17768 (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))) (value!204060 (h!46798 suffixTokens!72)))) e!2412485))))

(assert (= tb!229959 b!3901812))

(declare-fun m!4462317 () Bool)

(assert (=> b!3901812 m!4462317))

(declare-fun m!4462319 () Bool)

(assert (=> tb!229959 m!4462319))

(assert (=> b!3901810 t!320176))

(declare-fun b_and!295175 () Bool)

(assert (= b_and!295159 (and (=> t!320176 result!279204) b_and!295175)))

(declare-fun tb!229961 () Bool)

(declare-fun t!320178 () Bool)

(assert (=> (and b!3901264 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72))))) t!320178) tb!229961))

(declare-fun result!279206 () Bool)

(assert (= result!279206 result!279204))

(assert (=> b!3901810 t!320178))

(declare-fun b_and!295177 () Bool)

(assert (= b_and!295161 (and (=> t!320178 result!279206) b_and!295177)))

(declare-fun t!320180 () Bool)

(declare-fun tb!229963 () Bool)

(assert (=> (and b!3901241 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72))))) t!320180) tb!229963))

(declare-fun result!279208 () Bool)

(assert (= result!279208 result!279204))

(assert (=> b!3901810 t!320180))

(declare-fun b_and!295179 () Bool)

(assert (= b_and!295163 (and (=> t!320180 result!279208) b_and!295179)))

(declare-fun t!320182 () Bool)

(declare-fun tb!229965 () Bool)

(assert (=> (and b!3901239 (= (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72))))) t!320182) tb!229965))

(declare-fun result!279210 () Bool)

(assert (= result!279210 result!279204))

(assert (=> b!3901810 t!320182))

(declare-fun b_and!295181 () Bool)

(assert (= b_and!295165 (and (=> t!320182 result!279210) b_and!295181)))

(declare-fun m!4462321 () Bool)

(assert (=> d!1156435 m!4462321))

(declare-fun m!4462323 () Bool)

(assert (=> b!3901810 m!4462323))

(assert (=> b!3901810 m!4462323))

(declare-fun m!4462325 () Bool)

(assert (=> b!3901810 m!4462325))

(declare-fun m!4462327 () Bool)

(assert (=> b!3901811 m!4462327))

(assert (=> b!3901274 d!1156435))

(declare-fun b!3901817 () Bool)

(declare-fun e!2412488 () Bool)

(declare-fun tp!1187216 () Bool)

(assert (=> b!3901817 (= e!2412488 (and tp_is_empty!19653 tp!1187216))))

(assert (=> b!3901237 (= tp!1187126 e!2412488)))

(assert (= (and b!3901237 ((_ is Cons!41377) (t!320070 prefix!426))) b!3901817))

(declare-fun b!3901818 () Bool)

(declare-fun e!2412489 () Bool)

(declare-fun tp!1187217 () Bool)

(assert (=> b!3901818 (= e!2412489 (and tp_is_empty!19653 tp!1187217))))

(assert (=> b!3901268 (= tp!1187116 e!2412489)))

(assert (= (and b!3901268 ((_ is Cons!41377) (t!320070 suffix!1176))) b!3901818))

(declare-fun b!3901819 () Bool)

(declare-fun e!2412490 () Bool)

(declare-fun tp!1187218 () Bool)

(assert (=> b!3901819 (= e!2412490 (and tp_is_empty!19653 tp!1187218))))

(assert (=> b!3901257 (= tp!1187114 e!2412490)))

(assert (= (and b!3901257 ((_ is Cons!41377) (t!320070 suffixResult!91))) b!3901819))

(declare-fun b!3901820 () Bool)

(declare-fun e!2412491 () Bool)

(declare-fun tp!1187219 () Bool)

(assert (=> b!3901820 (= e!2412491 (and tp_is_empty!19653 tp!1187219))))

(assert (=> b!3901261 (= tp!1187109 e!2412491)))

(assert (= (and b!3901261 ((_ is Cons!41377) (originalCharacters!7036 (_1!23443 (v!39169 err!4393))))) b!3901820))

(declare-fun b!3901831 () Bool)

(declare-fun b_free!105709 () Bool)

(declare-fun b_next!106413 () Bool)

(assert (=> b!3901831 (= b_free!105709 (not b_next!106413))))

(declare-fun t!320184 () Bool)

(declare-fun tb!229967 () Bool)

(assert (=> (and b!3901831 (= (toValue!8876 (transformation!6436 (h!46799 (t!320072 rules!2768)))) (toValue!8876 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))))) t!320184) tb!229967))

(declare-fun result!279216 () Bool)

(assert (= result!279216 result!279194))

(assert (=> d!1156431 t!320184))

(declare-fun b_and!295183 () Bool)

(declare-fun tp!1187229 () Bool)

(assert (=> b!3901831 (= tp!1187229 (and (=> t!320184 result!279216) b_and!295183))))

(declare-fun b_free!105711 () Bool)

(declare-fun b_next!106415 () Bool)

(assert (=> b!3901831 (= b_free!105711 (not b_next!106415))))

(declare-fun t!320186 () Bool)

(declare-fun tb!229969 () Bool)

(assert (=> (and b!3901831 (= (toChars!8735 (transformation!6436 (h!46799 (t!320072 rules!2768)))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393)))))) t!320186) tb!229969))

(declare-fun result!279218 () Bool)

(assert (= result!279218 result!279168))

(assert (=> b!3901659 t!320186))

(declare-fun t!320188 () Bool)

(declare-fun tb!229971 () Bool)

(assert (=> (and b!3901831 (= (toChars!8735 (transformation!6436 (h!46799 (t!320072 rules!2768)))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80))))) t!320188) tb!229971))

(declare-fun result!279220 () Bool)

(assert (= result!279220 result!279178))

(assert (=> b!3901766 t!320188))

(declare-fun t!320190 () Bool)

(declare-fun tb!229973 () Bool)

(assert (=> (and b!3901831 (= (toChars!8735 (transformation!6436 (h!46799 (t!320072 rules!2768)))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))))) t!320190) tb!229973))

(declare-fun result!279222 () Bool)

(assert (= result!279222 result!279186))

(assert (=> d!1156409 t!320190))

(declare-fun t!320192 () Bool)

(declare-fun tb!229975 () Bool)

(assert (=> (and b!3901831 (= (toChars!8735 (transformation!6436 (h!46799 (t!320072 rules!2768)))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72))))) t!320192) tb!229975))

(declare-fun result!279224 () Bool)

(assert (= result!279224 result!279204))

(assert (=> b!3901810 t!320192))

(declare-fun b_and!295185 () Bool)

(declare-fun tp!1187228 () Bool)

(assert (=> b!3901831 (= tp!1187228 (and (=> t!320186 result!279218) (=> t!320188 result!279220) (=> t!320190 result!279222) (=> t!320192 result!279224) b_and!295185))))

(declare-fun e!2412503 () Bool)

(assert (=> b!3901831 (= e!2412503 (and tp!1187229 tp!1187228))))

(declare-fun tp!1187230 () Bool)

(declare-fun b!3901830 () Bool)

(declare-fun e!2412501 () Bool)

(assert (=> b!3901830 (= e!2412501 (and tp!1187230 (inv!55545 (tag!7296 (h!46799 (t!320072 rules!2768)))) (inv!55549 (transformation!6436 (h!46799 (t!320072 rules!2768)))) e!2412503))))

(declare-fun b!3901829 () Bool)

(declare-fun e!2412502 () Bool)

(declare-fun tp!1187231 () Bool)

(assert (=> b!3901829 (= e!2412502 (and e!2412501 tp!1187231))))

(assert (=> b!3901260 (= tp!1187129 e!2412502)))

(assert (= b!3901830 b!3901831))

(assert (= b!3901829 b!3901830))

(assert (= (and b!3901260 ((_ is Cons!41379) (t!320072 rules!2768))) b!3901829))

(declare-fun m!4462329 () Bool)

(assert (=> b!3901830 m!4462329))

(declare-fun m!4462331 () Bool)

(assert (=> b!3901830 m!4462331))

(declare-fun b!3901832 () Bool)

(declare-fun e!2412504 () Bool)

(declare-fun tp!1187232 () Bool)

(assert (=> b!3901832 (= e!2412504 (and tp_is_empty!19653 tp!1187232))))

(assert (=> b!3901238 (= tp!1187128 e!2412504)))

(assert (= (and b!3901238 ((_ is Cons!41377) (_2!23443 (v!39169 err!4393)))) b!3901832))

(declare-fun b!3901845 () Bool)

(declare-fun e!2412507 () Bool)

(declare-fun tp!1187245 () Bool)

(assert (=> b!3901845 (= e!2412507 tp!1187245)))

(declare-fun b!3901843 () Bool)

(assert (=> b!3901843 (= e!2412507 tp_is_empty!19653)))

(assert (=> b!3901269 (= tp!1187111 e!2412507)))

(declare-fun b!3901846 () Bool)

(declare-fun tp!1187247 () Bool)

(declare-fun tp!1187244 () Bool)

(assert (=> b!3901846 (= e!2412507 (and tp!1187247 tp!1187244))))

(declare-fun b!3901844 () Bool)

(declare-fun tp!1187243 () Bool)

(declare-fun tp!1187246 () Bool)

(assert (=> b!3901844 (= e!2412507 (and tp!1187243 tp!1187246))))

(assert (= (and b!3901269 ((_ is ElementMatch!11341) (regex!6436 (rule!9344 (h!46798 prefixTokens!80))))) b!3901843))

(assert (= (and b!3901269 ((_ is Concat!18008) (regex!6436 (rule!9344 (h!46798 prefixTokens!80))))) b!3901844))

(assert (= (and b!3901269 ((_ is Star!11341) (regex!6436 (rule!9344 (h!46798 prefixTokens!80))))) b!3901845))

(assert (= (and b!3901269 ((_ is Union!11341) (regex!6436 (rule!9344 (h!46798 prefixTokens!80))))) b!3901846))

(declare-fun b!3901860 () Bool)

(declare-fun b_free!105713 () Bool)

(declare-fun b_next!106417 () Bool)

(assert (=> b!3901860 (= b_free!105713 (not b_next!106417))))

(declare-fun t!320195 () Bool)

(declare-fun tb!229977 () Bool)

(assert (=> (and b!3901860 (= (toValue!8876 (transformation!6436 (rule!9344 (h!46798 (t!320071 prefixTokens!80))))) (toValue!8876 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))))) t!320195) tb!229977))

(declare-fun result!279230 () Bool)

(assert (= result!279230 result!279194))

(assert (=> d!1156431 t!320195))

(declare-fun b_and!295187 () Bool)

(declare-fun tp!1187258 () Bool)

(assert (=> b!3901860 (= tp!1187258 (and (=> t!320195 result!279230) b_and!295187))))

(declare-fun b_free!105715 () Bool)

(declare-fun b_next!106419 () Bool)

(assert (=> b!3901860 (= b_free!105715 (not b_next!106419))))

(declare-fun tb!229979 () Bool)

(declare-fun t!320197 () Bool)

(assert (=> (and b!3901860 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 (t!320071 prefixTokens!80))))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393)))))) t!320197) tb!229979))

(declare-fun result!279232 () Bool)

(assert (= result!279232 result!279168))

(assert (=> b!3901659 t!320197))

(declare-fun t!320199 () Bool)

(declare-fun tb!229981 () Bool)

(assert (=> (and b!3901860 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 (t!320071 prefixTokens!80))))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80))))) t!320199) tb!229981))

(declare-fun result!279234 () Bool)

(assert (= result!279234 result!279178))

(assert (=> b!3901766 t!320199))

(declare-fun t!320201 () Bool)

(declare-fun tb!229983 () Bool)

(assert (=> (and b!3901860 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 (t!320071 prefixTokens!80))))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))))) t!320201) tb!229983))

(declare-fun result!279236 () Bool)

(assert (= result!279236 result!279186))

(assert (=> d!1156409 t!320201))

(declare-fun t!320203 () Bool)

(declare-fun tb!229985 () Bool)

(assert (=> (and b!3901860 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 (t!320071 prefixTokens!80))))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72))))) t!320203) tb!229985))

(declare-fun result!279238 () Bool)

(assert (= result!279238 result!279204))

(assert (=> b!3901810 t!320203))

(declare-fun tp!1187261 () Bool)

(declare-fun b_and!295189 () Bool)

(assert (=> b!3901860 (= tp!1187261 (and (=> t!320197 result!279232) (=> t!320199 result!279234) (=> t!320201 result!279236) (=> t!320203 result!279238) b_and!295189))))

(declare-fun b!3901857 () Bool)

(declare-fun e!2412520 () Bool)

(declare-fun e!2412522 () Bool)

(declare-fun tp!1187262 () Bool)

(assert (=> b!3901857 (= e!2412522 (and (inv!55548 (h!46798 (t!320071 prefixTokens!80))) e!2412520 tp!1187262))))

(assert (=> b!3901273 (= tp!1187117 e!2412522)))

(declare-fun tp!1187259 () Bool)

(declare-fun e!2412523 () Bool)

(declare-fun b!3901858 () Bool)

(assert (=> b!3901858 (= e!2412520 (and (inv!21 (value!204060 (h!46798 (t!320071 prefixTokens!80)))) e!2412523 tp!1187259))))

(declare-fun e!2412525 () Bool)

(assert (=> b!3901860 (= e!2412525 (and tp!1187258 tp!1187261))))

(declare-fun tp!1187260 () Bool)

(declare-fun b!3901859 () Bool)

(assert (=> b!3901859 (= e!2412523 (and tp!1187260 (inv!55545 (tag!7296 (rule!9344 (h!46798 (t!320071 prefixTokens!80))))) (inv!55549 (transformation!6436 (rule!9344 (h!46798 (t!320071 prefixTokens!80))))) e!2412525))))

(assert (= b!3901859 b!3901860))

(assert (= b!3901858 b!3901859))

(assert (= b!3901857 b!3901858))

(assert (= (and b!3901273 ((_ is Cons!41378) (t!320071 prefixTokens!80))) b!3901857))

(declare-fun m!4462333 () Bool)

(assert (=> b!3901857 m!4462333))

(declare-fun m!4462335 () Bool)

(assert (=> b!3901858 m!4462335))

(declare-fun m!4462337 () Bool)

(assert (=> b!3901859 m!4462337))

(declare-fun m!4462339 () Bool)

(assert (=> b!3901859 m!4462339))

(declare-fun b!3901863 () Bool)

(declare-fun e!2412526 () Bool)

(declare-fun tp!1187265 () Bool)

(assert (=> b!3901863 (= e!2412526 tp!1187265)))

(declare-fun b!3901861 () Bool)

(assert (=> b!3901861 (= e!2412526 tp_is_empty!19653)))

(assert (=> b!3901252 (= tp!1187121 e!2412526)))

(declare-fun b!3901864 () Bool)

(declare-fun tp!1187267 () Bool)

(declare-fun tp!1187264 () Bool)

(assert (=> b!3901864 (= e!2412526 (and tp!1187267 tp!1187264))))

(declare-fun b!3901862 () Bool)

(declare-fun tp!1187263 () Bool)

(declare-fun tp!1187266 () Bool)

(assert (=> b!3901862 (= e!2412526 (and tp!1187263 tp!1187266))))

(assert (= (and b!3901252 ((_ is ElementMatch!11341) (regex!6436 (rule!9344 (_1!23443 (v!39169 err!4393)))))) b!3901861))

(assert (= (and b!3901252 ((_ is Concat!18008) (regex!6436 (rule!9344 (_1!23443 (v!39169 err!4393)))))) b!3901862))

(assert (= (and b!3901252 ((_ is Star!11341) (regex!6436 (rule!9344 (_1!23443 (v!39169 err!4393)))))) b!3901863))

(assert (= (and b!3901252 ((_ is Union!11341) (regex!6436 (rule!9344 (_1!23443 (v!39169 err!4393)))))) b!3901864))

(declare-fun b!3901865 () Bool)

(declare-fun e!2412527 () Bool)

(declare-fun tp!1187268 () Bool)

(assert (=> b!3901865 (= e!2412527 (and tp_is_empty!19653 tp!1187268))))

(assert (=> b!3901272 (= tp!1187127 e!2412527)))

(assert (= (and b!3901272 ((_ is Cons!41377) (originalCharacters!7036 (h!46798 prefixTokens!80)))) b!3901865))

(declare-fun b!3901868 () Bool)

(declare-fun e!2412528 () Bool)

(declare-fun tp!1187271 () Bool)

(assert (=> b!3901868 (= e!2412528 tp!1187271)))

(declare-fun b!3901866 () Bool)

(assert (=> b!3901866 (= e!2412528 tp_is_empty!19653)))

(assert (=> b!3901240 (= tp!1187125 e!2412528)))

(declare-fun b!3901869 () Bool)

(declare-fun tp!1187273 () Bool)

(declare-fun tp!1187270 () Bool)

(assert (=> b!3901869 (= e!2412528 (and tp!1187273 tp!1187270))))

(declare-fun b!3901867 () Bool)

(declare-fun tp!1187269 () Bool)

(declare-fun tp!1187272 () Bool)

(assert (=> b!3901867 (= e!2412528 (and tp!1187269 tp!1187272))))

(assert (= (and b!3901240 ((_ is ElementMatch!11341) (regex!6436 (rule!9344 (h!46798 suffixTokens!72))))) b!3901866))

(assert (= (and b!3901240 ((_ is Concat!18008) (regex!6436 (rule!9344 (h!46798 suffixTokens!72))))) b!3901867))

(assert (= (and b!3901240 ((_ is Star!11341) (regex!6436 (rule!9344 (h!46798 suffixTokens!72))))) b!3901868))

(assert (= (and b!3901240 ((_ is Union!11341) (regex!6436 (rule!9344 (h!46798 suffixTokens!72))))) b!3901869))

(declare-fun b!3901870 () Bool)

(declare-fun e!2412529 () Bool)

(declare-fun tp!1187274 () Bool)

(assert (=> b!3901870 (= e!2412529 (and tp_is_empty!19653 tp!1187274))))

(assert (=> b!3901271 (= tp!1187115 e!2412529)))

(assert (= (and b!3901271 ((_ is Cons!41377) (originalCharacters!7036 (h!46798 suffixTokens!72)))) b!3901870))

(declare-fun b!3901873 () Bool)

(declare-fun e!2412530 () Bool)

(declare-fun tp!1187277 () Bool)

(assert (=> b!3901873 (= e!2412530 tp!1187277)))

(declare-fun b!3901871 () Bool)

(assert (=> b!3901871 (= e!2412530 tp_is_empty!19653)))

(assert (=> b!3901243 (= tp!1187120 e!2412530)))

(declare-fun b!3901874 () Bool)

(declare-fun tp!1187279 () Bool)

(declare-fun tp!1187276 () Bool)

(assert (=> b!3901874 (= e!2412530 (and tp!1187279 tp!1187276))))

(declare-fun b!3901872 () Bool)

(declare-fun tp!1187275 () Bool)

(declare-fun tp!1187278 () Bool)

(assert (=> b!3901872 (= e!2412530 (and tp!1187275 tp!1187278))))

(assert (= (and b!3901243 ((_ is ElementMatch!11341) (regex!6436 (h!46799 rules!2768)))) b!3901871))

(assert (= (and b!3901243 ((_ is Concat!18008) (regex!6436 (h!46799 rules!2768)))) b!3901872))

(assert (= (and b!3901243 ((_ is Star!11341) (regex!6436 (h!46799 rules!2768)))) b!3901873))

(assert (= (and b!3901243 ((_ is Union!11341) (regex!6436 (h!46799 rules!2768)))) b!3901874))

(declare-fun b!3901878 () Bool)

(declare-fun b_free!105717 () Bool)

(declare-fun b_next!106421 () Bool)

(assert (=> b!3901878 (= b_free!105717 (not b_next!106421))))

(declare-fun t!320205 () Bool)

(declare-fun tb!229987 () Bool)

(assert (=> (and b!3901878 (= (toValue!8876 (transformation!6436 (rule!9344 (h!46798 (t!320071 suffixTokens!72))))) (toValue!8876 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))))) t!320205) tb!229987))

(declare-fun result!279240 () Bool)

(assert (= result!279240 result!279194))

(assert (=> d!1156431 t!320205))

(declare-fun tp!1187280 () Bool)

(declare-fun b_and!295191 () Bool)

(assert (=> b!3901878 (= tp!1187280 (and (=> t!320205 result!279240) b_and!295191))))

(declare-fun b_free!105719 () Bool)

(declare-fun b_next!106423 () Bool)

(assert (=> b!3901878 (= b_free!105719 (not b_next!106423))))

(declare-fun t!320207 () Bool)

(declare-fun tb!229989 () Bool)

(assert (=> (and b!3901878 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 (t!320071 suffixTokens!72))))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393)))))) t!320207) tb!229989))

(declare-fun result!279242 () Bool)

(assert (= result!279242 result!279168))

(assert (=> b!3901659 t!320207))

(declare-fun tb!229991 () Bool)

(declare-fun t!320209 () Bool)

(assert (=> (and b!3901878 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 (t!320071 suffixTokens!72))))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80))))) t!320209) tb!229991))

(declare-fun result!279244 () Bool)

(assert (= result!279244 result!279178))

(assert (=> b!3901766 t!320209))

(declare-fun t!320211 () Bool)

(declare-fun tb!229993 () Bool)

(assert (=> (and b!3901878 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 (t!320071 suffixTokens!72))))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 lt!1359128)))))) t!320211) tb!229993))

(declare-fun result!279246 () Bool)

(assert (= result!279246 result!279186))

(assert (=> d!1156409 t!320211))

(declare-fun t!320213 () Bool)

(declare-fun tb!229995 () Bool)

(assert (=> (and b!3901878 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 (t!320071 suffixTokens!72))))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72))))) t!320213) tb!229995))

(declare-fun result!279248 () Bool)

(assert (= result!279248 result!279204))

(assert (=> b!3901810 t!320213))

(declare-fun tp!1187283 () Bool)

(declare-fun b_and!295193 () Bool)

(assert (=> b!3901878 (= tp!1187283 (and (=> t!320207 result!279242) (=> t!320209 result!279244) (=> t!320211 result!279246) (=> t!320213 result!279248) b_and!295193))))

(declare-fun e!2412533 () Bool)

(declare-fun e!2412531 () Bool)

(declare-fun b!3901875 () Bool)

(declare-fun tp!1187284 () Bool)

(assert (=> b!3901875 (= e!2412533 (and (inv!55548 (h!46798 (t!320071 suffixTokens!72))) e!2412531 tp!1187284))))

(assert (=> b!3901274 (= tp!1187130 e!2412533)))

(declare-fun e!2412534 () Bool)

(declare-fun tp!1187281 () Bool)

(declare-fun b!3901876 () Bool)

(assert (=> b!3901876 (= e!2412531 (and (inv!21 (value!204060 (h!46798 (t!320071 suffixTokens!72)))) e!2412534 tp!1187281))))

(declare-fun e!2412536 () Bool)

(assert (=> b!3901878 (= e!2412536 (and tp!1187280 tp!1187283))))

(declare-fun tp!1187282 () Bool)

(declare-fun b!3901877 () Bool)

(assert (=> b!3901877 (= e!2412534 (and tp!1187282 (inv!55545 (tag!7296 (rule!9344 (h!46798 (t!320071 suffixTokens!72))))) (inv!55549 (transformation!6436 (rule!9344 (h!46798 (t!320071 suffixTokens!72))))) e!2412536))))

(assert (= b!3901877 b!3901878))

(assert (= b!3901876 b!3901877))

(assert (= b!3901875 b!3901876))

(assert (= (and b!3901274 ((_ is Cons!41378) (t!320071 suffixTokens!72))) b!3901875))

(declare-fun m!4462341 () Bool)

(assert (=> b!3901875 m!4462341))

(declare-fun m!4462343 () Bool)

(assert (=> b!3901876 m!4462343))

(declare-fun m!4462345 () Bool)

(assert (=> b!3901877 m!4462345))

(declare-fun m!4462347 () Bool)

(assert (=> b!3901877 m!4462347))

(declare-fun b_lambda!114025 () Bool)

(assert (= b_lambda!114017 (or (and b!3901831 b_free!105711 (= (toChars!8735 (transformation!6436 (h!46799 (t!320072 rules!2768)))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))))) (and b!3901251 b_free!105683 (= (toChars!8735 (transformation!6436 (h!46799 rules!2768))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))))) (and b!3901264 b_free!105687) (and b!3901241 b_free!105691 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))))) (and b!3901878 b_free!105719 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 (t!320071 suffixTokens!72))))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))))) (and b!3901860 b_free!105715 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 (t!320071 prefixTokens!80))))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))))) (and b!3901239 b_free!105695 (= (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))))) b_lambda!114025)))

(declare-fun b_lambda!114027 () Bool)

(assert (= b_lambda!114015 (or (and b!3901241 b_free!105691 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))))) (and b!3901831 b_free!105711 (= (toChars!8735 (transformation!6436 (h!46799 (t!320072 rules!2768)))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))))) (and b!3901251 b_free!105683 (= (toChars!8735 (transformation!6436 (h!46799 rules!2768))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))))) (and b!3901860 b_free!105715 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 (t!320071 prefixTokens!80))))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))))) (and b!3901239 b_free!105695) (and b!3901264 b_free!105687 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))))) (and b!3901878 b_free!105719 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 (t!320071 suffixTokens!72))))) (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))))) b_lambda!114027)))

(declare-fun b_lambda!114029 () Bool)

(assert (= b_lambda!114023 (or (and b!3901860 b_free!105715 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 (t!320071 prefixTokens!80))))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))))) (and b!3901241 b_free!105691) (and b!3901239 b_free!105695 (= (toChars!8735 (transformation!6436 (rule!9344 (_1!23443 (v!39169 err!4393))))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))))) (and b!3901831 b_free!105711 (= (toChars!8735 (transformation!6436 (h!46799 (t!320072 rules!2768)))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))))) (and b!3901251 b_free!105683 (= (toChars!8735 (transformation!6436 (h!46799 rules!2768))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))))) (and b!3901878 b_free!105719 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 (t!320071 suffixTokens!72))))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))))) (and b!3901264 b_free!105687 (= (toChars!8735 (transformation!6436 (rule!9344 (h!46798 prefixTokens!80)))) (toChars!8735 (transformation!6436 (rule!9344 (h!46798 suffixTokens!72)))))) b_lambda!114029)))

(check-sat (not b!3901748) (not b!3901759) (not b!3901598) (not b!3901750) (not b!3901797) (not b_next!106393) b_and!295177 (not d!1156359) (not d!1156331) (not b_next!106387) (not b!3901749) (not b!3901754) (not b!3901682) (not b_lambda!114021) (not b_next!106395) (not b!3901870) (not b!3901727) (not b!3901876) (not b!3901697) (not b!3901668) (not b!3901793) (not b!3901782) (not b!3901715) (not b!3901462) (not b!3901873) (not d!1156393) b_and!295181 (not b!3901590) (not b!3901458) (not b!3901721) (not d!1156345) (not d!1156433) (not b!3901877) (not b!3901783) (not tb!229935) (not b_lambda!114029) (not b!3901591) (not b!3901660) (not b!3901461) (not bm!283865) (not b!3901600) (not b!3901653) (not b!3901868) (not b!3901775) (not b!3901818) (not b!3901760) (not b!3901857) (not b_next!106417) (not d!1156367) (not b!3901459) (not b!3901698) (not d!1156375) (not b!3901794) b_and!295169 (not b!3901790) b_and!295189 (not b!3901812) (not b_lambda!114019) (not b!3901714) (not b!3901774) (not b!3901491) (not b!3901724) (not b!3901810) (not b!3901457) (not b_next!106389) (not b!3901711) b_and!295187 (not b!3901489) (not b!3901811) (not d!1156365) (not b!3901463) (not bm!283868) (not b!3901490) (not b!3901859) (not d!1156377) (not b_lambda!114025) (not b!3901829) (not tb!229959) (not b!3901595) (not d!1156399) (not tb!229951) (not d!1156379) b_and!295175 (not b!3901694) (not b_next!106413) (not b!3901819) (not d!1156411) (not b!3901863) (not b!3901494) (not d!1156297) (not b!3901766) (not d!1156423) (not d!1156425) (not b!3901456) (not tb!229943) b_and!295185 (not d!1156369) (not b!3901659) (not b_next!106415) (not b!3901875) (not b_next!106419) (not d!1156409) (not b!3901722) (not b!3901593) (not b!3901830) (not d!1156421) (not b!3901728) b_and!295167 (not b!3901767) (not d!1156371) b_and!295191 (not d!1156387) (not b_next!106385) (not b!3901757) (not b!3901729) (not d!1156407) (not b!3901726) (not b!3901765) (not b!3901820) (not b!3901695) (not b_next!106397) (not b!3901680) (not b!3901763) (not b!3901488) (not b!3901599) (not b!3901780) (not b!3901495) (not b!3901845) b_and!295183 (not b!3901723) (not b!3901717) (not b!3901693) (not d!1156419) (not b!3901751) (not b!3901862) (not d!1156389) (not b!3901665) (not bm!283869) (not b_next!106423) (not d!1156429) b_and!295193 (not b!3901773) (not b_next!106399) (not d!1156295) (not b!3901770) (not b!3901601) (not b!3901654) (not b!3901594) (not d!1156435) (not b!3901778) (not b_next!106421) (not b!3901817) (not b!3901764) (not d!1156349) (not b!3901768) (not b!3901802) (not b!3901784) (not d!1156413) (not b!3901496) (not b_next!106391) tp_is_empty!19653 (not b_lambda!114027) (not b!3901795) (not b!3901756) (not b!3901710) (not d!1156255) (not bm!283866) (not b!3901753) (not b!3901497) (not b!3901699) (not d!1156357) (not d!1156353) (not d!1156427) b_and!295171 (not b!3901844) (not d!1156381) (not b!3901864) (not b!3901720) (not b!3901805) (not b!3901681) (not b!3901872) (not b!3901867) (not b!3901865) (not b!3901464) (not b!3901492) (not b!3901869) (not b!3901806) (not b!3901650) (not b!3901596) (not b!3901752) (not b!3901779) b_and!295179 (not b!3901832) (not b!3901858) (not b!3901846) (not tb!229927) b_and!295173 (not b!3901769) (not d!1156293) (not b!3901874))
(check-sat (not b_next!106395) b_and!295181 (not b_next!106417) (not b_next!106419) b_and!295167 (not b_next!106397) b_and!295183 (not b_next!106423) (not b_next!106421) (not b_next!106391) b_and!295171 b_and!295179 b_and!295173 (not b_next!106393) b_and!295177 (not b_next!106387) b_and!295169 b_and!295189 (not b_next!106389) b_and!295187 b_and!295175 (not b_next!106413) (not b_next!106415) b_and!295185 b_and!295191 (not b_next!106385) b_and!295193 (not b_next!106399))
