; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276132 () Bool)

(assert start!276132)

(declare-fun b!2839212 () Bool)

(declare-fun b_free!82177 () Bool)

(declare-fun b_next!82881 () Bool)

(assert (=> b!2839212 (= b_free!82177 (not b_next!82881))))

(declare-fun tp!909175 () Bool)

(declare-fun b_and!208143 () Bool)

(assert (=> b!2839212 (= tp!909175 b_and!208143)))

(declare-fun b_free!82179 () Bool)

(declare-fun b_next!82883 () Bool)

(assert (=> b!2839212 (= b_free!82179 (not b_next!82883))))

(declare-fun tp!909176 () Bool)

(declare-fun b_and!208145 () Bool)

(assert (=> b!2839212 (= tp!909176 b_and!208145)))

(declare-fun b!2839214 () Bool)

(declare-fun b_free!82181 () Bool)

(declare-fun b_next!82885 () Bool)

(assert (=> b!2839214 (= b_free!82181 (not b_next!82885))))

(declare-fun tp!909171 () Bool)

(declare-fun b_and!208147 () Bool)

(assert (=> b!2839214 (= tp!909171 b_and!208147)))

(declare-fun b_free!82183 () Bool)

(declare-fun b_next!82887 () Bool)

(assert (=> b!2839214 (= b_free!82183 (not b_next!82887))))

(declare-fun tp!909165 () Bool)

(declare-fun b_and!208149 () Bool)

(assert (=> b!2839214 (= tp!909165 b_and!208149)))

(declare-fun b!2839220 () Bool)

(declare-fun b_free!82185 () Bool)

(declare-fun b_next!82889 () Bool)

(assert (=> b!2839220 (= b_free!82185 (not b_next!82889))))

(declare-fun tp!909170 () Bool)

(declare-fun b_and!208151 () Bool)

(assert (=> b!2839220 (= tp!909170 b_and!208151)))

(declare-fun b_free!82187 () Bool)

(declare-fun b_next!82891 () Bool)

(assert (=> b!2839220 (= b_free!82187 (not b_next!82891))))

(declare-fun tp!909174 () Bool)

(declare-fun b_and!208153 () Bool)

(assert (=> b!2839220 (= tp!909174 b_and!208153)))

(declare-fun b!2839204 () Bool)

(declare-fun res!1181294 () Bool)

(declare-fun e!1798386 () Bool)

(assert (=> b!2839204 (=> (not res!1181294) (not e!1798386))))

(declare-datatypes ((C!17064 0))(
  ( (C!17065 (val!10544 Int)) )
))
(declare-datatypes ((List!33714 0))(
  ( (Nil!33590) (Cons!33590 (h!39010 C!17064) (t!232299 List!33714)) )
))
(declare-datatypes ((IArray!20865 0))(
  ( (IArray!20866 (innerList!10490 List!33714)) )
))
(declare-datatypes ((Conc!10430 0))(
  ( (Node!10430 (left!25322 Conc!10430) (right!25652 Conc!10430) (csize!21090 Int) (cheight!10641 Int)) (Leaf!15863 (xs!13542 IArray!20865) (csize!21091 Int)) (Empty!10430) )
))
(declare-datatypes ((BalanceConc!20498 0))(
  ( (BalanceConc!20499 (c!458518 Conc!10430)) )
))
(declare-datatypes ((List!33715 0))(
  ( (Nil!33591) (Cons!33591 (h!39011 (_ BitVec 16)) (t!232300 List!33715)) )
))
(declare-datatypes ((Regex!8441 0))(
  ( (ElementMatch!8441 (c!458519 C!17064)) (Concat!13721 (regOne!17394 Regex!8441) (regTwo!17394 Regex!8441)) (EmptyExpr!8441) (Star!8441 (reg!8770 Regex!8441)) (EmptyLang!8441) (Union!8441 (regOne!17395 Regex!8441) (regTwo!17395 Regex!8441)) )
))
(declare-datatypes ((String!36921 0))(
  ( (String!36922 (value!162268 String)) )
))
(declare-datatypes ((TokenValue!5280 0))(
  ( (FloatLiteralValue!10560 (text!37405 List!33715)) (TokenValueExt!5279 (__x!22298 Int)) (Broken!26400 (value!162269 List!33715)) (Object!5403) (End!5280) (Def!5280) (Underscore!5280) (Match!5280) (Else!5280) (Error!5280) (Case!5280) (If!5280) (Extends!5280) (Abstract!5280) (Class!5280) (Val!5280) (DelimiterValue!10560 (del!5340 List!33715)) (KeywordValue!5286 (value!162270 List!33715)) (CommentValue!10560 (value!162271 List!33715)) (WhitespaceValue!10560 (value!162272 List!33715)) (IndentationValue!5280 (value!162273 List!33715)) (String!36923) (Int32!5280) (Broken!26401 (value!162274 List!33715)) (Boolean!5281) (Unit!47462) (OperatorValue!5283 (op!5340 List!33715)) (IdentifierValue!10560 (value!162275 List!33715)) (IdentifierValue!10561 (value!162276 List!33715)) (WhitespaceValue!10561 (value!162277 List!33715)) (True!10560) (False!10560) (Broken!26402 (value!162278 List!33715)) (Broken!26403 (value!162279 List!33715)) (True!10561) (RightBrace!5280) (RightBracket!5280) (Colon!5280) (Null!5280) (Comma!5280) (LeftBracket!5280) (False!10561) (LeftBrace!5280) (ImaginaryLiteralValue!5280 (text!37406 List!33715)) (StringLiteralValue!15840 (value!162280 List!33715)) (EOFValue!5280 (value!162281 List!33715)) (IdentValue!5280 (value!162282 List!33715)) (DelimiterValue!10561 (value!162283 List!33715)) (DedentValue!5280 (value!162284 List!33715)) (NewLineValue!5280 (value!162285 List!33715)) (IntegerValue!15840 (value!162286 (_ BitVec 32)) (text!37407 List!33715)) (IntegerValue!15841 (value!162287 Int) (text!37408 List!33715)) (Times!5280) (Or!5280) (Equal!5280) (Minus!5280) (Broken!26404 (value!162288 List!33715)) (And!5280) (Div!5280) (LessEqual!5280) (Mod!5280) (Concat!13722) (Not!5280) (Plus!5280) (SpaceValue!5280 (value!162289 List!33715)) (IntegerValue!15842 (value!162290 Int) (text!37409 List!33715)) (StringLiteralValue!15841 (text!37410 List!33715)) (FloatLiteralValue!10561 (text!37411 List!33715)) (BytesLiteralValue!5280 (value!162291 List!33715)) (CommentValue!10561 (value!162292 List!33715)) (StringLiteralValue!15842 (value!162293 List!33715)) (ErrorTokenValue!5280 (msg!5341 List!33715)) )
))
(declare-datatypes ((TokenValueInjection!9988 0))(
  ( (TokenValueInjection!9989 (toValue!7092 Int) (toChars!6951 Int)) )
))
(declare-datatypes ((Rule!9900 0))(
  ( (Rule!9901 (regex!5050 Regex!8441) (tag!5554 String!36921) (isSeparator!5050 Bool) (transformation!5050 TokenValueInjection!9988)) )
))
(declare-datatypes ((Token!9502 0))(
  ( (Token!9503 (value!162294 TokenValue!5280) (rule!7478 Rule!9900) (size!26091 Int) (originalCharacters!5782 List!33714)) )
))
(declare-datatypes ((List!33716 0))(
  ( (Nil!33592) (Cons!33592 (h!39012 Token!9502) (t!232301 List!33716)) )
))
(declare-fun tokensBis!14 () List!33716)

(declare-fun tokens!612 () List!33716)

(declare-fun subseq!516 (List!33716 List!33716) Bool)

(assert (=> b!2839204 (= res!1181294 (subseq!516 (t!232301 tokensBis!14) (t!232301 tokens!612)))))

(declare-fun b!2839206 () Bool)

(declare-fun res!1181299 () Bool)

(assert (=> b!2839206 (=> (not res!1181299) (not e!1798386))))

(declare-datatypes ((List!33717 0))(
  ( (Nil!33593) (Cons!33593 (h!39013 Rule!9900) (t!232302 List!33717)) )
))
(declare-fun rules!4246 () List!33717)

(declare-datatypes ((LexerInterface!4640 0))(
  ( (LexerInterfaceExt!4637 (__x!22299 Int)) (Lexer!4638) )
))
(declare-fun thiss!27264 () LexerInterface!4640)

(declare-fun rulesProduceEachTokenIndividuallyList!1681 (LexerInterface!4640 List!33717 List!33716) Bool)

(assert (=> b!2839206 (= res!1181299 (rulesProduceEachTokenIndividuallyList!1681 thiss!27264 rules!4246 (t!232301 tokens!612)))))

(declare-fun b!2839207 () Bool)

(declare-fun res!1181293 () Bool)

(assert (=> b!2839207 (=> (not res!1181293) (not e!1798386))))

(assert (=> b!2839207 (= res!1181293 (rulesProduceEachTokenIndividuallyList!1681 thiss!27264 rules!4246 tokens!612))))

(declare-fun tp!909168 () Bool)

(declare-fun e!1798379 () Bool)

(declare-fun b!2839208 () Bool)

(declare-fun e!1798387 () Bool)

(declare-fun inv!21 (TokenValue!5280) Bool)

(assert (=> b!2839208 (= e!1798379 (and (inv!21 (value!162294 (h!39012 tokens!612))) e!1798387 tp!909168))))

(declare-fun b!2839209 () Bool)

(declare-fun res!1181298 () Bool)

(assert (=> b!2839209 (=> (not res!1181298) (not e!1798386))))

(declare-fun isEmpty!18503 (List!33717) Bool)

(assert (=> b!2839209 (= res!1181298 (not (isEmpty!18503 rules!4246)))))

(declare-fun e!1798384 () Bool)

(declare-fun tp!909169 () Bool)

(declare-fun b!2839210 () Bool)

(declare-fun inv!45558 (String!36921) Bool)

(declare-fun inv!45561 (TokenValueInjection!9988) Bool)

(assert (=> b!2839210 (= e!1798387 (and tp!909169 (inv!45558 (tag!5554 (rule!7478 (h!39012 tokens!612)))) (inv!45561 (transformation!5050 (rule!7478 (h!39012 tokens!612)))) e!1798384))))

(declare-fun b!2839211 () Bool)

(declare-fun res!1181297 () Bool)

(assert (=> b!2839211 (=> (not res!1181297) (not e!1798386))))

(declare-fun rulesInvariant!4056 (LexerInterface!4640 List!33717) Bool)

(assert (=> b!2839211 (= res!1181297 (rulesInvariant!4056 thiss!27264 rules!4246))))

(declare-fun e!1798385 () Bool)

(assert (=> b!2839212 (= e!1798385 (and tp!909175 tp!909176))))

(declare-fun b!2839213 () Bool)

(assert (=> b!2839213 (= e!1798386 (not (rulesProduceEachTokenIndividuallyList!1681 thiss!27264 rules!4246 tokensBis!14)))))

(assert (=> b!2839213 (rulesProduceEachTokenIndividuallyList!1681 thiss!27264 rules!4246 (t!232301 tokensBis!14))))

(declare-datatypes ((Unit!47463 0))(
  ( (Unit!47464) )
))
(declare-fun lt!1011535 () Unit!47463)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!83 (LexerInterface!4640 List!33717 List!33716 List!33716) Unit!47463)

(assert (=> b!2839213 (= lt!1011535 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!83 thiss!27264 rules!4246 (t!232301 tokens!612) (t!232301 tokensBis!14)))))

(declare-fun e!1798375 () Bool)

(assert (=> b!2839214 (= e!1798375 (and tp!909171 tp!909165))))

(declare-fun b!2839215 () Bool)

(declare-fun res!1181296 () Bool)

(assert (=> b!2839215 (=> (not res!1181296) (not e!1798386))))

(get-info :version)

(assert (=> b!2839215 (= res!1181296 (and (not ((_ is Nil!33592) tokensBis!14)) ((_ is Cons!33592) tokens!612) (= (h!39012 tokensBis!14) (h!39012 tokens!612))))))

(declare-fun e!1798371 () Bool)

(declare-fun tp!909177 () Bool)

(declare-fun b!2839216 () Bool)

(assert (=> b!2839216 (= e!1798371 (and tp!909177 (inv!45558 (tag!5554 (h!39013 rules!4246))) (inv!45561 (transformation!5050 (h!39013 rules!4246))) e!1798375))))

(declare-fun e!1798373 () Bool)

(declare-fun b!2839217 () Bool)

(declare-fun tp!909178 () Bool)

(declare-fun inv!45562 (Token!9502) Bool)

(assert (=> b!2839217 (= e!1798373 (and (inv!45562 (h!39012 tokens!612)) e!1798379 tp!909178))))

(declare-fun b!2839218 () Bool)

(declare-fun res!1181295 () Bool)

(assert (=> b!2839218 (=> (not res!1181295) (not e!1798386))))

(assert (=> b!2839218 (= res!1181295 (subseq!516 tokensBis!14 tokens!612))))

(declare-fun e!1798381 () Bool)

(declare-fun b!2839219 () Bool)

(declare-fun tp!909172 () Bool)

(assert (=> b!2839219 (= e!1798381 (and tp!909172 (inv!45558 (tag!5554 (rule!7478 (h!39012 tokensBis!14)))) (inv!45561 (transformation!5050 (rule!7478 (h!39012 tokensBis!14)))) e!1798385))))

(assert (=> b!2839220 (= e!1798384 (and tp!909170 tp!909174))))

(declare-fun res!1181300 () Bool)

(assert (=> start!276132 (=> (not res!1181300) (not e!1798386))))

(assert (=> start!276132 (= res!1181300 ((_ is Lexer!4638) thiss!27264))))

(assert (=> start!276132 e!1798386))

(assert (=> start!276132 true))

(declare-fun e!1798372 () Bool)

(assert (=> start!276132 e!1798372))

(declare-fun e!1798376 () Bool)

(assert (=> start!276132 e!1798376))

(assert (=> start!276132 e!1798373))

(declare-fun tp!909166 () Bool)

(declare-fun e!1798380 () Bool)

(declare-fun b!2839205 () Bool)

(assert (=> b!2839205 (= e!1798376 (and (inv!45562 (h!39012 tokensBis!14)) e!1798380 tp!909166))))

(declare-fun tp!909167 () Bool)

(declare-fun b!2839221 () Bool)

(assert (=> b!2839221 (= e!1798380 (and (inv!21 (value!162294 (h!39012 tokensBis!14))) e!1798381 tp!909167))))

(declare-fun b!2839222 () Bool)

(declare-fun tp!909173 () Bool)

(assert (=> b!2839222 (= e!1798372 (and e!1798371 tp!909173))))

(assert (= (and start!276132 res!1181300) b!2839209))

(assert (= (and b!2839209 res!1181298) b!2839211))

(assert (= (and b!2839211 res!1181297) b!2839218))

(assert (= (and b!2839218 res!1181295) b!2839207))

(assert (= (and b!2839207 res!1181293) b!2839215))

(assert (= (and b!2839215 res!1181296) b!2839204))

(assert (= (and b!2839204 res!1181294) b!2839206))

(assert (= (and b!2839206 res!1181299) b!2839213))

(assert (= b!2839216 b!2839214))

(assert (= b!2839222 b!2839216))

(assert (= (and start!276132 ((_ is Cons!33593) rules!4246)) b!2839222))

(assert (= b!2839219 b!2839212))

(assert (= b!2839221 b!2839219))

(assert (= b!2839205 b!2839221))

(assert (= (and start!276132 ((_ is Cons!33592) tokensBis!14)) b!2839205))

(assert (= b!2839210 b!2839220))

(assert (= b!2839208 b!2839210))

(assert (= b!2839217 b!2839208))

(assert (= (and start!276132 ((_ is Cons!33592) tokens!612)) b!2839217))

(declare-fun m!3268093 () Bool)

(assert (=> b!2839216 m!3268093))

(declare-fun m!3268095 () Bool)

(assert (=> b!2839216 m!3268095))

(declare-fun m!3268097 () Bool)

(assert (=> b!2839207 m!3268097))

(declare-fun m!3268099 () Bool)

(assert (=> b!2839218 m!3268099))

(declare-fun m!3268101 () Bool)

(assert (=> b!2839205 m!3268101))

(declare-fun m!3268103 () Bool)

(assert (=> b!2839208 m!3268103))

(declare-fun m!3268105 () Bool)

(assert (=> b!2839217 m!3268105))

(declare-fun m!3268107 () Bool)

(assert (=> b!2839213 m!3268107))

(declare-fun m!3268109 () Bool)

(assert (=> b!2839213 m!3268109))

(declare-fun m!3268111 () Bool)

(assert (=> b!2839213 m!3268111))

(declare-fun m!3268113 () Bool)

(assert (=> b!2839219 m!3268113))

(declare-fun m!3268115 () Bool)

(assert (=> b!2839219 m!3268115))

(declare-fun m!3268117 () Bool)

(assert (=> b!2839206 m!3268117))

(declare-fun m!3268119 () Bool)

(assert (=> b!2839211 m!3268119))

(declare-fun m!3268121 () Bool)

(assert (=> b!2839209 m!3268121))

(declare-fun m!3268123 () Bool)

(assert (=> b!2839221 m!3268123))

(declare-fun m!3268125 () Bool)

(assert (=> b!2839204 m!3268125))

(declare-fun m!3268127 () Bool)

(assert (=> b!2839210 m!3268127))

(declare-fun m!3268129 () Bool)

(assert (=> b!2839210 m!3268129))

(check-sat b_and!208151 (not b!2839218) (not b_next!82883) (not b!2839207) b_and!208145 (not b!2839217) (not b_next!82889) (not b!2839210) (not b_next!82891) (not b!2839213) b_and!208147 b_and!208153 (not b_next!82881) (not b!2839216) (not b!2839204) (not b!2839208) (not b!2839205) b_and!208143 (not b_next!82887) (not b!2839206) (not b!2839219) (not b!2839222) (not b!2839209) (not b!2839211) (not b_next!82885) b_and!208149 (not b!2839221))
(check-sat b_and!208151 (not b_next!82881) (not b_next!82883) b_and!208145 (not b_next!82889) (not b_next!82891) (not b_next!82885) b_and!208147 b_and!208149 b_and!208153 b_and!208143 (not b_next!82887))
(get-model)

(declare-fun d!823525 () Bool)

(assert (=> d!823525 (= (inv!45558 (tag!5554 (rule!7478 (h!39012 tokens!612)))) (= (mod (str.len (value!162268 (tag!5554 (rule!7478 (h!39012 tokens!612))))) 2) 0))))

(assert (=> b!2839210 d!823525))

(declare-fun d!823527 () Bool)

(declare-fun res!1181322 () Bool)

(declare-fun e!1798402 () Bool)

(assert (=> d!823527 (=> (not res!1181322) (not e!1798402))))

(declare-fun semiInverseModEq!2101 (Int Int) Bool)

(assert (=> d!823527 (= res!1181322 (semiInverseModEq!2101 (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612)))) (toValue!7092 (transformation!5050 (rule!7478 (h!39012 tokens!612))))))))

(assert (=> d!823527 (= (inv!45561 (transformation!5050 (rule!7478 (h!39012 tokens!612)))) e!1798402)))

(declare-fun b!2839243 () Bool)

(declare-fun equivClasses!2000 (Int Int) Bool)

(assert (=> b!2839243 (= e!1798402 (equivClasses!2000 (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612)))) (toValue!7092 (transformation!5050 (rule!7478 (h!39012 tokens!612))))))))

(assert (= (and d!823527 res!1181322) b!2839243))

(declare-fun m!3268163 () Bool)

(assert (=> d!823527 m!3268163))

(declare-fun m!3268165 () Bool)

(assert (=> b!2839243 m!3268165))

(assert (=> b!2839210 d!823527))

(declare-fun b!2839255 () Bool)

(declare-fun e!1798409 () Bool)

(declare-fun e!1798410 () Bool)

(assert (=> b!2839255 (= e!1798409 e!1798410)))

(declare-fun c!458524 () Bool)

(assert (=> b!2839255 (= c!458524 ((_ is IntegerValue!15841) (value!162294 (h!39012 tokensBis!14))))))

(declare-fun b!2839256 () Bool)

(declare-fun e!1798411 () Bool)

(declare-fun inv!15 (TokenValue!5280) Bool)

(assert (=> b!2839256 (= e!1798411 (inv!15 (value!162294 (h!39012 tokensBis!14))))))

(declare-fun b!2839257 () Bool)

(declare-fun inv!17 (TokenValue!5280) Bool)

(assert (=> b!2839257 (= e!1798410 (inv!17 (value!162294 (h!39012 tokensBis!14))))))

(declare-fun b!2839258 () Bool)

(declare-fun inv!16 (TokenValue!5280) Bool)

(assert (=> b!2839258 (= e!1798409 (inv!16 (value!162294 (h!39012 tokensBis!14))))))

(declare-fun d!823529 () Bool)

(declare-fun c!458525 () Bool)

(assert (=> d!823529 (= c!458525 ((_ is IntegerValue!15840) (value!162294 (h!39012 tokensBis!14))))))

(assert (=> d!823529 (= (inv!21 (value!162294 (h!39012 tokensBis!14))) e!1798409)))

(declare-fun b!2839254 () Bool)

(declare-fun res!1181325 () Bool)

(assert (=> b!2839254 (=> res!1181325 e!1798411)))

(assert (=> b!2839254 (= res!1181325 (not ((_ is IntegerValue!15842) (value!162294 (h!39012 tokensBis!14)))))))

(assert (=> b!2839254 (= e!1798410 e!1798411)))

(assert (= (and d!823529 c!458525) b!2839258))

(assert (= (and d!823529 (not c!458525)) b!2839255))

(assert (= (and b!2839255 c!458524) b!2839257))

(assert (= (and b!2839255 (not c!458524)) b!2839254))

(assert (= (and b!2839254 (not res!1181325)) b!2839256))

(declare-fun m!3268167 () Bool)

(assert (=> b!2839256 m!3268167))

(declare-fun m!3268169 () Bool)

(assert (=> b!2839257 m!3268169))

(declare-fun m!3268171 () Bool)

(assert (=> b!2839258 m!3268171))

(assert (=> b!2839221 d!823529))

(declare-fun d!823531 () Bool)

(declare-fun res!1181328 () Bool)

(declare-fun e!1798414 () Bool)

(assert (=> d!823531 (=> (not res!1181328) (not e!1798414))))

(declare-fun rulesValid!1871 (LexerInterface!4640 List!33717) Bool)

(assert (=> d!823531 (= res!1181328 (rulesValid!1871 thiss!27264 rules!4246))))

(assert (=> d!823531 (= (rulesInvariant!4056 thiss!27264 rules!4246) e!1798414)))

(declare-fun b!2839261 () Bool)

(declare-datatypes ((List!33719 0))(
  ( (Nil!33595) (Cons!33595 (h!39015 String!36921) (t!232356 List!33719)) )
))
(declare-fun noDuplicateTag!1867 (LexerInterface!4640 List!33717 List!33719) Bool)

(assert (=> b!2839261 (= e!1798414 (noDuplicateTag!1867 thiss!27264 rules!4246 Nil!33595))))

(assert (= (and d!823531 res!1181328) b!2839261))

(declare-fun m!3268173 () Bool)

(assert (=> d!823531 m!3268173))

(declare-fun m!3268175 () Bool)

(assert (=> b!2839261 m!3268175))

(assert (=> b!2839211 d!823531))

(declare-fun d!823533 () Bool)

(declare-fun res!1181340 () Bool)

(declare-fun e!1798426 () Bool)

(assert (=> d!823533 (=> res!1181340 e!1798426)))

(assert (=> d!823533 (= res!1181340 ((_ is Nil!33592) tokensBis!14))))

(assert (=> d!823533 (= (subseq!516 tokensBis!14 tokens!612) e!1798426)))

(declare-fun b!2839270 () Bool)

(declare-fun e!1798425 () Bool)

(assert (=> b!2839270 (= e!1798426 e!1798425)))

(declare-fun res!1181339 () Bool)

(assert (=> b!2839270 (=> (not res!1181339) (not e!1798425))))

(assert (=> b!2839270 (= res!1181339 ((_ is Cons!33592) tokens!612))))

(declare-fun b!2839273 () Bool)

(declare-fun e!1798424 () Bool)

(assert (=> b!2839273 (= e!1798424 (subseq!516 tokensBis!14 (t!232301 tokens!612)))))

(declare-fun b!2839272 () Bool)

(declare-fun e!1798423 () Bool)

(assert (=> b!2839272 (= e!1798423 (subseq!516 (t!232301 tokensBis!14) (t!232301 tokens!612)))))

(declare-fun b!2839271 () Bool)

(assert (=> b!2839271 (= e!1798425 e!1798424)))

(declare-fun res!1181338 () Bool)

(assert (=> b!2839271 (=> res!1181338 e!1798424)))

(assert (=> b!2839271 (= res!1181338 e!1798423)))

(declare-fun res!1181337 () Bool)

(assert (=> b!2839271 (=> (not res!1181337) (not e!1798423))))

(assert (=> b!2839271 (= res!1181337 (= (h!39012 tokensBis!14) (h!39012 tokens!612)))))

(assert (= (and d!823533 (not res!1181340)) b!2839270))

(assert (= (and b!2839270 res!1181339) b!2839271))

(assert (= (and b!2839271 res!1181337) b!2839272))

(assert (= (and b!2839271 (not res!1181338)) b!2839273))

(declare-fun m!3268177 () Bool)

(assert (=> b!2839273 m!3268177))

(assert (=> b!2839272 m!3268125))

(assert (=> b!2839218 d!823533))

(declare-fun b!2839388 () Bool)

(declare-fun e!1798518 () Bool)

(assert (=> b!2839388 (= e!1798518 true)))

(declare-fun b!2839387 () Bool)

(declare-fun e!1798517 () Bool)

(assert (=> b!2839387 (= e!1798517 e!1798518)))

(declare-fun b!2839386 () Bool)

(declare-fun e!1798516 () Bool)

(assert (=> b!2839386 (= e!1798516 e!1798517)))

(declare-fun d!823535 () Bool)

(assert (=> d!823535 e!1798516))

(assert (= b!2839387 b!2839388))

(assert (= b!2839386 b!2839387))

(assert (= (and d!823535 ((_ is Cons!33593) rules!4246)) b!2839386))

(declare-fun order!17947 () Int)

(declare-fun lambda!104214 () Int)

(declare-fun order!17949 () Int)

(declare-fun dynLambda!14128 (Int Int) Int)

(declare-fun dynLambda!14129 (Int Int) Int)

(assert (=> b!2839388 (< (dynLambda!14128 order!17947 (toValue!7092 (transformation!5050 (h!39013 rules!4246)))) (dynLambda!14129 order!17949 lambda!104214))))

(declare-fun order!17951 () Int)

(declare-fun dynLambda!14130 (Int Int) Int)

(assert (=> b!2839388 (< (dynLambda!14130 order!17951 (toChars!6951 (transformation!5050 (h!39013 rules!4246)))) (dynLambda!14129 order!17949 lambda!104214))))

(assert (=> d!823535 true))

(declare-fun lt!1011547 () Bool)

(declare-fun forall!6907 (List!33716 Int) Bool)

(assert (=> d!823535 (= lt!1011547 (forall!6907 tokens!612 lambda!104214))))

(declare-fun e!1798499 () Bool)

(assert (=> d!823535 (= lt!1011547 e!1798499)))

(declare-fun res!1181382 () Bool)

(assert (=> d!823535 (=> res!1181382 e!1798499)))

(assert (=> d!823535 (= res!1181382 (not ((_ is Cons!33592) tokens!612)))))

(assert (=> d!823535 (not (isEmpty!18503 rules!4246))))

(assert (=> d!823535 (= (rulesProduceEachTokenIndividuallyList!1681 thiss!27264 rules!4246 tokens!612) lt!1011547)))

(declare-fun b!2839370 () Bool)

(declare-fun e!1798498 () Bool)

(assert (=> b!2839370 (= e!1798499 e!1798498)))

(declare-fun res!1181381 () Bool)

(assert (=> b!2839370 (=> (not res!1181381) (not e!1798498))))

(declare-fun rulesProduceIndividualToken!2154 (LexerInterface!4640 List!33717 Token!9502) Bool)

(assert (=> b!2839370 (= res!1181381 (rulesProduceIndividualToken!2154 thiss!27264 rules!4246 (h!39012 tokens!612)))))

(declare-fun b!2839371 () Bool)

(assert (=> b!2839371 (= e!1798498 (rulesProduceEachTokenIndividuallyList!1681 thiss!27264 rules!4246 (t!232301 tokens!612)))))

(assert (= (and d!823535 (not res!1181382)) b!2839370))

(assert (= (and b!2839370 res!1181381) b!2839371))

(declare-fun m!3268227 () Bool)

(assert (=> d!823535 m!3268227))

(assert (=> d!823535 m!3268121))

(declare-fun m!3268229 () Bool)

(assert (=> b!2839370 m!3268229))

(assert (=> b!2839371 m!3268117))

(assert (=> b!2839207 d!823535))

(declare-fun b!2839396 () Bool)

(declare-fun e!1798525 () Bool)

(declare-fun e!1798526 () Bool)

(assert (=> b!2839396 (= e!1798525 e!1798526)))

(declare-fun c!458534 () Bool)

(assert (=> b!2839396 (= c!458534 ((_ is IntegerValue!15841) (value!162294 (h!39012 tokens!612))))))

(declare-fun b!2839397 () Bool)

(declare-fun e!1798527 () Bool)

(assert (=> b!2839397 (= e!1798527 (inv!15 (value!162294 (h!39012 tokens!612))))))

(declare-fun b!2839398 () Bool)

(assert (=> b!2839398 (= e!1798526 (inv!17 (value!162294 (h!39012 tokens!612))))))

(declare-fun b!2839399 () Bool)

(assert (=> b!2839399 (= e!1798525 (inv!16 (value!162294 (h!39012 tokens!612))))))

(declare-fun d!823561 () Bool)

(declare-fun c!458535 () Bool)

(assert (=> d!823561 (= c!458535 ((_ is IntegerValue!15840) (value!162294 (h!39012 tokens!612))))))

(assert (=> d!823561 (= (inv!21 (value!162294 (h!39012 tokens!612))) e!1798525)))

(declare-fun b!2839395 () Bool)

(declare-fun res!1181383 () Bool)

(assert (=> b!2839395 (=> res!1181383 e!1798527)))

(assert (=> b!2839395 (= res!1181383 (not ((_ is IntegerValue!15842) (value!162294 (h!39012 tokens!612)))))))

(assert (=> b!2839395 (= e!1798526 e!1798527)))

(assert (= (and d!823561 c!458535) b!2839399))

(assert (= (and d!823561 (not c!458535)) b!2839396))

(assert (= (and b!2839396 c!458534) b!2839398))

(assert (= (and b!2839396 (not c!458534)) b!2839395))

(assert (= (and b!2839395 (not res!1181383)) b!2839397))

(declare-fun m!3268239 () Bool)

(assert (=> b!2839397 m!3268239))

(declare-fun m!3268241 () Bool)

(assert (=> b!2839398 m!3268241))

(declare-fun m!3268243 () Bool)

(assert (=> b!2839399 m!3268243))

(assert (=> b!2839208 d!823561))

(declare-fun d!823563 () Bool)

(assert (=> d!823563 (= (inv!45558 (tag!5554 (rule!7478 (h!39012 tokensBis!14)))) (= (mod (str.len (value!162268 (tag!5554 (rule!7478 (h!39012 tokensBis!14))))) 2) 0))))

(assert (=> b!2839219 d!823563))

(declare-fun d!823565 () Bool)

(declare-fun res!1181384 () Bool)

(declare-fun e!1798534 () Bool)

(assert (=> d!823565 (=> (not res!1181384) (not e!1798534))))

(assert (=> d!823565 (= res!1181384 (semiInverseModEq!2101 (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14)))) (toValue!7092 (transformation!5050 (rule!7478 (h!39012 tokensBis!14))))))))

(assert (=> d!823565 (= (inv!45561 (transformation!5050 (rule!7478 (h!39012 tokensBis!14)))) e!1798534)))

(declare-fun b!2839404 () Bool)

(assert (=> b!2839404 (= e!1798534 (equivClasses!2000 (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14)))) (toValue!7092 (transformation!5050 (rule!7478 (h!39012 tokensBis!14))))))))

(assert (= (and d!823565 res!1181384) b!2839404))

(declare-fun m!3268245 () Bool)

(assert (=> d!823565 m!3268245))

(declare-fun m!3268247 () Bool)

(assert (=> b!2839404 m!3268247))

(assert (=> b!2839219 d!823565))

(declare-fun d!823567 () Bool)

(assert (=> d!823567 (= (isEmpty!18503 rules!4246) ((_ is Nil!33593) rules!4246))))

(assert (=> b!2839209 d!823567))

(declare-fun d!823569 () Bool)

(assert (=> d!823569 (= (inv!45558 (tag!5554 (h!39013 rules!4246))) (= (mod (str.len (value!162268 (tag!5554 (h!39013 rules!4246)))) 2) 0))))

(assert (=> b!2839216 d!823569))

(declare-fun d!823571 () Bool)

(declare-fun res!1181385 () Bool)

(declare-fun e!1798539 () Bool)

(assert (=> d!823571 (=> (not res!1181385) (not e!1798539))))

(assert (=> d!823571 (= res!1181385 (semiInverseModEq!2101 (toChars!6951 (transformation!5050 (h!39013 rules!4246))) (toValue!7092 (transformation!5050 (h!39013 rules!4246)))))))

(assert (=> d!823571 (= (inv!45561 (transformation!5050 (h!39013 rules!4246))) e!1798539)))

(declare-fun b!2839417 () Bool)

(assert (=> b!2839417 (= e!1798539 (equivClasses!2000 (toChars!6951 (transformation!5050 (h!39013 rules!4246))) (toValue!7092 (transformation!5050 (h!39013 rules!4246)))))))

(assert (= (and d!823571 res!1181385) b!2839417))

(declare-fun m!3268257 () Bool)

(assert (=> d!823571 m!3268257))

(declare-fun m!3268259 () Bool)

(assert (=> b!2839417 m!3268259))

(assert (=> b!2839216 d!823571))

(declare-fun d!823573 () Bool)

(declare-fun res!1181390 () Bool)

(declare-fun e!1798556 () Bool)

(assert (=> d!823573 (=> (not res!1181390) (not e!1798556))))

(declare-fun isEmpty!18505 (List!33714) Bool)

(assert (=> d!823573 (= res!1181390 (not (isEmpty!18505 (originalCharacters!5782 (h!39012 tokensBis!14)))))))

(assert (=> d!823573 (= (inv!45562 (h!39012 tokensBis!14)) e!1798556)))

(declare-fun b!2839435 () Bool)

(declare-fun res!1181391 () Bool)

(assert (=> b!2839435 (=> (not res!1181391) (not e!1798556))))

(declare-fun list!12530 (BalanceConc!20498) List!33714)

(declare-fun dynLambda!14131 (Int TokenValue!5280) BalanceConc!20498)

(assert (=> b!2839435 (= res!1181391 (= (originalCharacters!5782 (h!39012 tokensBis!14)) (list!12530 (dynLambda!14131 (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14)))) (value!162294 (h!39012 tokensBis!14))))))))

(declare-fun b!2839436 () Bool)

(declare-fun size!26093 (List!33714) Int)

(assert (=> b!2839436 (= e!1798556 (= (size!26091 (h!39012 tokensBis!14)) (size!26093 (originalCharacters!5782 (h!39012 tokensBis!14)))))))

(assert (= (and d!823573 res!1181390) b!2839435))

(assert (= (and b!2839435 res!1181391) b!2839436))

(declare-fun b_lambda!85351 () Bool)

(assert (=> (not b_lambda!85351) (not b!2839435)))

(declare-fun t!232332 () Bool)

(declare-fun tb!154733 () Bool)

(assert (=> (and b!2839212 (= (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14)))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14))))) t!232332) tb!154733))

(declare-fun b!2839441 () Bool)

(declare-fun e!1798559 () Bool)

(declare-fun tp!909246 () Bool)

(declare-fun inv!45565 (Conc!10430) Bool)

(assert (=> b!2839441 (= e!1798559 (and (inv!45565 (c!458518 (dynLambda!14131 (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14)))) (value!162294 (h!39012 tokensBis!14))))) tp!909246))))

(declare-fun result!193008 () Bool)

(declare-fun inv!45566 (BalanceConc!20498) Bool)

(assert (=> tb!154733 (= result!193008 (and (inv!45566 (dynLambda!14131 (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14)))) (value!162294 (h!39012 tokensBis!14)))) e!1798559))))

(assert (= tb!154733 b!2839441))

(declare-fun m!3268265 () Bool)

(assert (=> b!2839441 m!3268265))

(declare-fun m!3268267 () Bool)

(assert (=> tb!154733 m!3268267))

(assert (=> b!2839435 t!232332))

(declare-fun b_and!208179 () Bool)

(assert (= b_and!208145 (and (=> t!232332 result!193008) b_and!208179)))

(declare-fun tb!154735 () Bool)

(declare-fun t!232334 () Bool)

(assert (=> (and b!2839214 (= (toChars!6951 (transformation!5050 (h!39013 rules!4246))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14))))) t!232334) tb!154735))

(declare-fun result!193012 () Bool)

(assert (= result!193012 result!193008))

(assert (=> b!2839435 t!232334))

(declare-fun b_and!208181 () Bool)

(assert (= b_and!208149 (and (=> t!232334 result!193012) b_and!208181)))

(declare-fun tb!154737 () Bool)

(declare-fun t!232336 () Bool)

(assert (=> (and b!2839220 (= (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612)))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14))))) t!232336) tb!154737))

(declare-fun result!193014 () Bool)

(assert (= result!193014 result!193008))

(assert (=> b!2839435 t!232336))

(declare-fun b_and!208183 () Bool)

(assert (= b_and!208153 (and (=> t!232336 result!193014) b_and!208183)))

(declare-fun m!3268269 () Bool)

(assert (=> d!823573 m!3268269))

(declare-fun m!3268271 () Bool)

(assert (=> b!2839435 m!3268271))

(assert (=> b!2839435 m!3268271))

(declare-fun m!3268273 () Bool)

(assert (=> b!2839435 m!3268273))

(declare-fun m!3268275 () Bool)

(assert (=> b!2839436 m!3268275))

(assert (=> b!2839205 d!823573))

(declare-fun bs!518861 () Bool)

(declare-fun d!823575 () Bool)

(assert (= bs!518861 (and d!823575 d!823535)))

(declare-fun lambda!104215 () Int)

(assert (=> bs!518861 (= lambda!104215 lambda!104214)))

(declare-fun b!2839446 () Bool)

(declare-fun e!1798564 () Bool)

(assert (=> b!2839446 (= e!1798564 true)))

(declare-fun b!2839445 () Bool)

(declare-fun e!1798563 () Bool)

(assert (=> b!2839445 (= e!1798563 e!1798564)))

(declare-fun b!2839444 () Bool)

(declare-fun e!1798562 () Bool)

(assert (=> b!2839444 (= e!1798562 e!1798563)))

(assert (=> d!823575 e!1798562))

(assert (= b!2839445 b!2839446))

(assert (= b!2839444 b!2839445))

(assert (= (and d!823575 ((_ is Cons!33593) rules!4246)) b!2839444))

(assert (=> b!2839446 (< (dynLambda!14128 order!17947 (toValue!7092 (transformation!5050 (h!39013 rules!4246)))) (dynLambda!14129 order!17949 lambda!104215))))

(assert (=> b!2839446 (< (dynLambda!14130 order!17951 (toChars!6951 (transformation!5050 (h!39013 rules!4246)))) (dynLambda!14129 order!17949 lambda!104215))))

(assert (=> d!823575 true))

(declare-fun lt!1011548 () Bool)

(assert (=> d!823575 (= lt!1011548 (forall!6907 (t!232301 tokens!612) lambda!104215))))

(declare-fun e!1798561 () Bool)

(assert (=> d!823575 (= lt!1011548 e!1798561)))

(declare-fun res!1181393 () Bool)

(assert (=> d!823575 (=> res!1181393 e!1798561)))

(assert (=> d!823575 (= res!1181393 (not ((_ is Cons!33592) (t!232301 tokens!612))))))

(assert (=> d!823575 (not (isEmpty!18503 rules!4246))))

(assert (=> d!823575 (= (rulesProduceEachTokenIndividuallyList!1681 thiss!27264 rules!4246 (t!232301 tokens!612)) lt!1011548)))

(declare-fun b!2839442 () Bool)

(declare-fun e!1798560 () Bool)

(assert (=> b!2839442 (= e!1798561 e!1798560)))

(declare-fun res!1181392 () Bool)

(assert (=> b!2839442 (=> (not res!1181392) (not e!1798560))))

(assert (=> b!2839442 (= res!1181392 (rulesProduceIndividualToken!2154 thiss!27264 rules!4246 (h!39012 (t!232301 tokens!612))))))

(declare-fun b!2839443 () Bool)

(assert (=> b!2839443 (= e!1798560 (rulesProduceEachTokenIndividuallyList!1681 thiss!27264 rules!4246 (t!232301 (t!232301 tokens!612))))))

(assert (= (and d!823575 (not res!1181393)) b!2839442))

(assert (= (and b!2839442 res!1181392) b!2839443))

(declare-fun m!3268277 () Bool)

(assert (=> d!823575 m!3268277))

(assert (=> d!823575 m!3268121))

(declare-fun m!3268279 () Bool)

(assert (=> b!2839442 m!3268279))

(declare-fun m!3268281 () Bool)

(assert (=> b!2839443 m!3268281))

(assert (=> b!2839206 d!823575))

(declare-fun d!823577 () Bool)

(declare-fun res!1181394 () Bool)

(declare-fun e!1798565 () Bool)

(assert (=> d!823577 (=> (not res!1181394) (not e!1798565))))

(assert (=> d!823577 (= res!1181394 (not (isEmpty!18505 (originalCharacters!5782 (h!39012 tokens!612)))))))

(assert (=> d!823577 (= (inv!45562 (h!39012 tokens!612)) e!1798565)))

(declare-fun b!2839447 () Bool)

(declare-fun res!1181395 () Bool)

(assert (=> b!2839447 (=> (not res!1181395) (not e!1798565))))

(assert (=> b!2839447 (= res!1181395 (= (originalCharacters!5782 (h!39012 tokens!612)) (list!12530 (dynLambda!14131 (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612)))) (value!162294 (h!39012 tokens!612))))))))

(declare-fun b!2839448 () Bool)

(assert (=> b!2839448 (= e!1798565 (= (size!26091 (h!39012 tokens!612)) (size!26093 (originalCharacters!5782 (h!39012 tokens!612)))))))

(assert (= (and d!823577 res!1181394) b!2839447))

(assert (= (and b!2839447 res!1181395) b!2839448))

(declare-fun b_lambda!85353 () Bool)

(assert (=> (not b_lambda!85353) (not b!2839447)))

(declare-fun t!232338 () Bool)

(declare-fun tb!154739 () Bool)

(assert (=> (and b!2839212 (= (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14)))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612))))) t!232338) tb!154739))

(declare-fun b!2839449 () Bool)

(declare-fun e!1798566 () Bool)

(declare-fun tp!909247 () Bool)

(assert (=> b!2839449 (= e!1798566 (and (inv!45565 (c!458518 (dynLambda!14131 (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612)))) (value!162294 (h!39012 tokens!612))))) tp!909247))))

(declare-fun result!193016 () Bool)

(assert (=> tb!154739 (= result!193016 (and (inv!45566 (dynLambda!14131 (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612)))) (value!162294 (h!39012 tokens!612)))) e!1798566))))

(assert (= tb!154739 b!2839449))

(declare-fun m!3268283 () Bool)

(assert (=> b!2839449 m!3268283))

(declare-fun m!3268285 () Bool)

(assert (=> tb!154739 m!3268285))

(assert (=> b!2839447 t!232338))

(declare-fun b_and!208185 () Bool)

(assert (= b_and!208179 (and (=> t!232338 result!193016) b_and!208185)))

(declare-fun t!232340 () Bool)

(declare-fun tb!154741 () Bool)

(assert (=> (and b!2839214 (= (toChars!6951 (transformation!5050 (h!39013 rules!4246))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612))))) t!232340) tb!154741))

(declare-fun result!193018 () Bool)

(assert (= result!193018 result!193016))

(assert (=> b!2839447 t!232340))

(declare-fun b_and!208187 () Bool)

(assert (= b_and!208181 (and (=> t!232340 result!193018) b_and!208187)))

(declare-fun t!232342 () Bool)

(declare-fun tb!154743 () Bool)

(assert (=> (and b!2839220 (= (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612)))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612))))) t!232342) tb!154743))

(declare-fun result!193020 () Bool)

(assert (= result!193020 result!193016))

(assert (=> b!2839447 t!232342))

(declare-fun b_and!208189 () Bool)

(assert (= b_and!208183 (and (=> t!232342 result!193020) b_and!208189)))

(declare-fun m!3268287 () Bool)

(assert (=> d!823577 m!3268287))

(declare-fun m!3268289 () Bool)

(assert (=> b!2839447 m!3268289))

(assert (=> b!2839447 m!3268289))

(declare-fun m!3268291 () Bool)

(assert (=> b!2839447 m!3268291))

(declare-fun m!3268293 () Bool)

(assert (=> b!2839448 m!3268293))

(assert (=> b!2839217 d!823577))

(declare-fun bs!518862 () Bool)

(declare-fun d!823579 () Bool)

(assert (= bs!518862 (and d!823579 d!823535)))

(declare-fun lambda!104216 () Int)

(assert (=> bs!518862 (= lambda!104216 lambda!104214)))

(declare-fun bs!518863 () Bool)

(assert (= bs!518863 (and d!823579 d!823575)))

(assert (=> bs!518863 (= lambda!104216 lambda!104215)))

(declare-fun b!2839454 () Bool)

(declare-fun e!1798571 () Bool)

(assert (=> b!2839454 (= e!1798571 true)))

(declare-fun b!2839453 () Bool)

(declare-fun e!1798570 () Bool)

(assert (=> b!2839453 (= e!1798570 e!1798571)))

(declare-fun b!2839452 () Bool)

(declare-fun e!1798569 () Bool)

(assert (=> b!2839452 (= e!1798569 e!1798570)))

(assert (=> d!823579 e!1798569))

(assert (= b!2839453 b!2839454))

(assert (= b!2839452 b!2839453))

(assert (= (and d!823579 ((_ is Cons!33593) rules!4246)) b!2839452))

(assert (=> b!2839454 (< (dynLambda!14128 order!17947 (toValue!7092 (transformation!5050 (h!39013 rules!4246)))) (dynLambda!14129 order!17949 lambda!104216))))

(assert (=> b!2839454 (< (dynLambda!14130 order!17951 (toChars!6951 (transformation!5050 (h!39013 rules!4246)))) (dynLambda!14129 order!17949 lambda!104216))))

(assert (=> d!823579 true))

(declare-fun lt!1011549 () Bool)

(assert (=> d!823579 (= lt!1011549 (forall!6907 tokensBis!14 lambda!104216))))

(declare-fun e!1798568 () Bool)

(assert (=> d!823579 (= lt!1011549 e!1798568)))

(declare-fun res!1181397 () Bool)

(assert (=> d!823579 (=> res!1181397 e!1798568)))

(assert (=> d!823579 (= res!1181397 (not ((_ is Cons!33592) tokensBis!14)))))

(assert (=> d!823579 (not (isEmpty!18503 rules!4246))))

(assert (=> d!823579 (= (rulesProduceEachTokenIndividuallyList!1681 thiss!27264 rules!4246 tokensBis!14) lt!1011549)))

(declare-fun b!2839450 () Bool)

(declare-fun e!1798567 () Bool)

(assert (=> b!2839450 (= e!1798568 e!1798567)))

(declare-fun res!1181396 () Bool)

(assert (=> b!2839450 (=> (not res!1181396) (not e!1798567))))

(assert (=> b!2839450 (= res!1181396 (rulesProduceIndividualToken!2154 thiss!27264 rules!4246 (h!39012 tokensBis!14)))))

(declare-fun b!2839451 () Bool)

(assert (=> b!2839451 (= e!1798567 (rulesProduceEachTokenIndividuallyList!1681 thiss!27264 rules!4246 (t!232301 tokensBis!14)))))

(assert (= (and d!823579 (not res!1181397)) b!2839450))

(assert (= (and b!2839450 res!1181396) b!2839451))

(declare-fun m!3268295 () Bool)

(assert (=> d!823579 m!3268295))

(assert (=> d!823579 m!3268121))

(declare-fun m!3268297 () Bool)

(assert (=> b!2839450 m!3268297))

(assert (=> b!2839451 m!3268109))

(assert (=> b!2839213 d!823579))

(declare-fun bs!518864 () Bool)

(declare-fun d!823581 () Bool)

(assert (= bs!518864 (and d!823581 d!823535)))

(declare-fun lambda!104217 () Int)

(assert (=> bs!518864 (= lambda!104217 lambda!104214)))

(declare-fun bs!518865 () Bool)

(assert (= bs!518865 (and d!823581 d!823575)))

(assert (=> bs!518865 (= lambda!104217 lambda!104215)))

(declare-fun bs!518866 () Bool)

(assert (= bs!518866 (and d!823581 d!823579)))

(assert (=> bs!518866 (= lambda!104217 lambda!104216)))

(declare-fun b!2839459 () Bool)

(declare-fun e!1798576 () Bool)

(assert (=> b!2839459 (= e!1798576 true)))

(declare-fun b!2839458 () Bool)

(declare-fun e!1798575 () Bool)

(assert (=> b!2839458 (= e!1798575 e!1798576)))

(declare-fun b!2839457 () Bool)

(declare-fun e!1798574 () Bool)

(assert (=> b!2839457 (= e!1798574 e!1798575)))

(assert (=> d!823581 e!1798574))

(assert (= b!2839458 b!2839459))

(assert (= b!2839457 b!2839458))

(assert (= (and d!823581 ((_ is Cons!33593) rules!4246)) b!2839457))

(assert (=> b!2839459 (< (dynLambda!14128 order!17947 (toValue!7092 (transformation!5050 (h!39013 rules!4246)))) (dynLambda!14129 order!17949 lambda!104217))))

(assert (=> b!2839459 (< (dynLambda!14130 order!17951 (toChars!6951 (transformation!5050 (h!39013 rules!4246)))) (dynLambda!14129 order!17949 lambda!104217))))

(assert (=> d!823581 true))

(declare-fun lt!1011550 () Bool)

(assert (=> d!823581 (= lt!1011550 (forall!6907 (t!232301 tokensBis!14) lambda!104217))))

(declare-fun e!1798573 () Bool)

(assert (=> d!823581 (= lt!1011550 e!1798573)))

(declare-fun res!1181399 () Bool)

(assert (=> d!823581 (=> res!1181399 e!1798573)))

(assert (=> d!823581 (= res!1181399 (not ((_ is Cons!33592) (t!232301 tokensBis!14))))))

(assert (=> d!823581 (not (isEmpty!18503 rules!4246))))

(assert (=> d!823581 (= (rulesProduceEachTokenIndividuallyList!1681 thiss!27264 rules!4246 (t!232301 tokensBis!14)) lt!1011550)))

(declare-fun b!2839455 () Bool)

(declare-fun e!1798572 () Bool)

(assert (=> b!2839455 (= e!1798573 e!1798572)))

(declare-fun res!1181398 () Bool)

(assert (=> b!2839455 (=> (not res!1181398) (not e!1798572))))

(assert (=> b!2839455 (= res!1181398 (rulesProduceIndividualToken!2154 thiss!27264 rules!4246 (h!39012 (t!232301 tokensBis!14))))))

(declare-fun b!2839456 () Bool)

(assert (=> b!2839456 (= e!1798572 (rulesProduceEachTokenIndividuallyList!1681 thiss!27264 rules!4246 (t!232301 (t!232301 tokensBis!14))))))

(assert (= (and d!823581 (not res!1181399)) b!2839455))

(assert (= (and b!2839455 res!1181398) b!2839456))

(declare-fun m!3268299 () Bool)

(assert (=> d!823581 m!3268299))

(assert (=> d!823581 m!3268121))

(declare-fun m!3268301 () Bool)

(assert (=> b!2839455 m!3268301))

(declare-fun m!3268303 () Bool)

(assert (=> b!2839456 m!3268303))

(assert (=> b!2839213 d!823581))

(declare-fun d!823583 () Bool)

(assert (=> d!823583 (rulesProduceEachTokenIndividuallyList!1681 thiss!27264 rules!4246 (t!232301 tokensBis!14))))

(declare-fun lt!1011553 () Unit!47463)

(declare-fun choose!16740 (LexerInterface!4640 List!33717 List!33716 List!33716) Unit!47463)

(assert (=> d!823583 (= lt!1011553 (choose!16740 thiss!27264 rules!4246 (t!232301 tokens!612) (t!232301 tokensBis!14)))))

(assert (=> d!823583 (not (isEmpty!18503 rules!4246))))

(assert (=> d!823583 (= (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!83 thiss!27264 rules!4246 (t!232301 tokens!612) (t!232301 tokensBis!14)) lt!1011553)))

(declare-fun bs!518867 () Bool)

(assert (= bs!518867 d!823583))

(assert (=> bs!518867 m!3268109))

(declare-fun m!3268305 () Bool)

(assert (=> bs!518867 m!3268305))

(assert (=> bs!518867 m!3268121))

(assert (=> b!2839213 d!823583))

(declare-fun d!823585 () Bool)

(declare-fun res!1181403 () Bool)

(declare-fun e!1798580 () Bool)

(assert (=> d!823585 (=> res!1181403 e!1798580)))

(assert (=> d!823585 (= res!1181403 ((_ is Nil!33592) (t!232301 tokensBis!14)))))

(assert (=> d!823585 (= (subseq!516 (t!232301 tokensBis!14) (t!232301 tokens!612)) e!1798580)))

(declare-fun b!2839460 () Bool)

(declare-fun e!1798579 () Bool)

(assert (=> b!2839460 (= e!1798580 e!1798579)))

(declare-fun res!1181402 () Bool)

(assert (=> b!2839460 (=> (not res!1181402) (not e!1798579))))

(assert (=> b!2839460 (= res!1181402 ((_ is Cons!33592) (t!232301 tokens!612)))))

(declare-fun b!2839463 () Bool)

(declare-fun e!1798578 () Bool)

(assert (=> b!2839463 (= e!1798578 (subseq!516 (t!232301 tokensBis!14) (t!232301 (t!232301 tokens!612))))))

(declare-fun b!2839462 () Bool)

(declare-fun e!1798577 () Bool)

(assert (=> b!2839462 (= e!1798577 (subseq!516 (t!232301 (t!232301 tokensBis!14)) (t!232301 (t!232301 tokens!612))))))

(declare-fun b!2839461 () Bool)

(assert (=> b!2839461 (= e!1798579 e!1798578)))

(declare-fun res!1181401 () Bool)

(assert (=> b!2839461 (=> res!1181401 e!1798578)))

(assert (=> b!2839461 (= res!1181401 e!1798577)))

(declare-fun res!1181400 () Bool)

(assert (=> b!2839461 (=> (not res!1181400) (not e!1798577))))

(assert (=> b!2839461 (= res!1181400 (= (h!39012 (t!232301 tokensBis!14)) (h!39012 (t!232301 tokens!612))))))

(assert (= (and d!823585 (not res!1181403)) b!2839460))

(assert (= (and b!2839460 res!1181402) b!2839461))

(assert (= (and b!2839461 res!1181400) b!2839462))

(assert (= (and b!2839461 (not res!1181401)) b!2839463))

(declare-fun m!3268307 () Bool)

(assert (=> b!2839463 m!3268307))

(declare-fun m!3268309 () Bool)

(assert (=> b!2839462 m!3268309))

(assert (=> b!2839204 d!823585))

(declare-fun b!2839476 () Bool)

(declare-fun e!1798583 () Bool)

(declare-fun tp!909261 () Bool)

(assert (=> b!2839476 (= e!1798583 tp!909261)))

(declare-fun b!2839475 () Bool)

(declare-fun tp!909260 () Bool)

(declare-fun tp!909259 () Bool)

(assert (=> b!2839475 (= e!1798583 (and tp!909260 tp!909259))))

(assert (=> b!2839210 (= tp!909169 e!1798583)))

(declare-fun b!2839477 () Bool)

(declare-fun tp!909262 () Bool)

(declare-fun tp!909258 () Bool)

(assert (=> b!2839477 (= e!1798583 (and tp!909262 tp!909258))))

(declare-fun b!2839474 () Bool)

(declare-fun tp_is_empty!14615 () Bool)

(assert (=> b!2839474 (= e!1798583 tp_is_empty!14615)))

(assert (= (and b!2839210 ((_ is ElementMatch!8441) (regex!5050 (rule!7478 (h!39012 tokens!612))))) b!2839474))

(assert (= (and b!2839210 ((_ is Concat!13721) (regex!5050 (rule!7478 (h!39012 tokens!612))))) b!2839475))

(assert (= (and b!2839210 ((_ is Star!8441) (regex!5050 (rule!7478 (h!39012 tokens!612))))) b!2839476))

(assert (= (and b!2839210 ((_ is Union!8441) (regex!5050 (rule!7478 (h!39012 tokens!612))))) b!2839477))

(declare-fun b!2839482 () Bool)

(declare-fun e!1798586 () Bool)

(declare-fun tp!909265 () Bool)

(assert (=> b!2839482 (= e!1798586 (and tp_is_empty!14615 tp!909265))))

(assert (=> b!2839221 (= tp!909167 e!1798586)))

(assert (= (and b!2839221 ((_ is Cons!33590) (originalCharacters!5782 (h!39012 tokensBis!14)))) b!2839482))

(declare-fun b!2839493 () Bool)

(declare-fun b_free!82201 () Bool)

(declare-fun b_next!82905 () Bool)

(assert (=> b!2839493 (= b_free!82201 (not b_next!82905))))

(declare-fun tp!909274 () Bool)

(declare-fun b_and!208191 () Bool)

(assert (=> b!2839493 (= tp!909274 b_and!208191)))

(declare-fun b_free!82203 () Bool)

(declare-fun b_next!82907 () Bool)

(assert (=> b!2839493 (= b_free!82203 (not b_next!82907))))

(declare-fun t!232345 () Bool)

(declare-fun tb!154745 () Bool)

(assert (=> (and b!2839493 (= (toChars!6951 (transformation!5050 (h!39013 (t!232302 rules!4246)))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14))))) t!232345) tb!154745))

(declare-fun result!193028 () Bool)

(assert (= result!193028 result!193008))

(assert (=> b!2839435 t!232345))

(declare-fun tb!154747 () Bool)

(declare-fun t!232347 () Bool)

(assert (=> (and b!2839493 (= (toChars!6951 (transformation!5050 (h!39013 (t!232302 rules!4246)))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612))))) t!232347) tb!154747))

(declare-fun result!193030 () Bool)

(assert (= result!193030 result!193016))

(assert (=> b!2839447 t!232347))

(declare-fun tp!909275 () Bool)

(declare-fun b_and!208193 () Bool)

(assert (=> b!2839493 (= tp!909275 (and (=> t!232345 result!193028) (=> t!232347 result!193030) b_and!208193))))

(declare-fun e!1798595 () Bool)

(assert (=> b!2839493 (= e!1798595 (and tp!909274 tp!909275))))

(declare-fun b!2839492 () Bool)

(declare-fun tp!909276 () Bool)

(declare-fun e!1798596 () Bool)

(assert (=> b!2839492 (= e!1798596 (and tp!909276 (inv!45558 (tag!5554 (h!39013 (t!232302 rules!4246)))) (inv!45561 (transformation!5050 (h!39013 (t!232302 rules!4246)))) e!1798595))))

(declare-fun b!2839491 () Bool)

(declare-fun e!1798597 () Bool)

(declare-fun tp!909277 () Bool)

(assert (=> b!2839491 (= e!1798597 (and e!1798596 tp!909277))))

(assert (=> b!2839222 (= tp!909173 e!1798597)))

(assert (= b!2839492 b!2839493))

(assert (= b!2839491 b!2839492))

(assert (= (and b!2839222 ((_ is Cons!33593) (t!232302 rules!4246))) b!2839491))

(declare-fun m!3268311 () Bool)

(assert (=> b!2839492 m!3268311))

(declare-fun m!3268313 () Bool)

(assert (=> b!2839492 m!3268313))

(declare-fun b!2839494 () Bool)

(declare-fun e!1798599 () Bool)

(declare-fun tp!909278 () Bool)

(assert (=> b!2839494 (= e!1798599 (and tp_is_empty!14615 tp!909278))))

(assert (=> b!2839208 (= tp!909168 e!1798599)))

(assert (= (and b!2839208 ((_ is Cons!33590) (originalCharacters!5782 (h!39012 tokens!612)))) b!2839494))

(declare-fun b!2839497 () Bool)

(declare-fun e!1798600 () Bool)

(declare-fun tp!909282 () Bool)

(assert (=> b!2839497 (= e!1798600 tp!909282)))

(declare-fun b!2839496 () Bool)

(declare-fun tp!909281 () Bool)

(declare-fun tp!909280 () Bool)

(assert (=> b!2839496 (= e!1798600 (and tp!909281 tp!909280))))

(assert (=> b!2839219 (= tp!909172 e!1798600)))

(declare-fun b!2839498 () Bool)

(declare-fun tp!909283 () Bool)

(declare-fun tp!909279 () Bool)

(assert (=> b!2839498 (= e!1798600 (and tp!909283 tp!909279))))

(declare-fun b!2839495 () Bool)

(assert (=> b!2839495 (= e!1798600 tp_is_empty!14615)))

(assert (= (and b!2839219 ((_ is ElementMatch!8441) (regex!5050 (rule!7478 (h!39012 tokensBis!14))))) b!2839495))

(assert (= (and b!2839219 ((_ is Concat!13721) (regex!5050 (rule!7478 (h!39012 tokensBis!14))))) b!2839496))

(assert (= (and b!2839219 ((_ is Star!8441) (regex!5050 (rule!7478 (h!39012 tokensBis!14))))) b!2839497))

(assert (= (and b!2839219 ((_ is Union!8441) (regex!5050 (rule!7478 (h!39012 tokensBis!14))))) b!2839498))

(declare-fun b!2839501 () Bool)

(declare-fun e!1798601 () Bool)

(declare-fun tp!909287 () Bool)

(assert (=> b!2839501 (= e!1798601 tp!909287)))

(declare-fun b!2839500 () Bool)

(declare-fun tp!909286 () Bool)

(declare-fun tp!909285 () Bool)

(assert (=> b!2839500 (= e!1798601 (and tp!909286 tp!909285))))

(assert (=> b!2839216 (= tp!909177 e!1798601)))

(declare-fun b!2839502 () Bool)

(declare-fun tp!909288 () Bool)

(declare-fun tp!909284 () Bool)

(assert (=> b!2839502 (= e!1798601 (and tp!909288 tp!909284))))

(declare-fun b!2839499 () Bool)

(assert (=> b!2839499 (= e!1798601 tp_is_empty!14615)))

(assert (= (and b!2839216 ((_ is ElementMatch!8441) (regex!5050 (h!39013 rules!4246)))) b!2839499))

(assert (= (and b!2839216 ((_ is Concat!13721) (regex!5050 (h!39013 rules!4246)))) b!2839500))

(assert (= (and b!2839216 ((_ is Star!8441) (regex!5050 (h!39013 rules!4246)))) b!2839501))

(assert (= (and b!2839216 ((_ is Union!8441) (regex!5050 (h!39013 rules!4246)))) b!2839502))

(declare-fun b!2839516 () Bool)

(declare-fun b_free!82205 () Bool)

(declare-fun b_next!82909 () Bool)

(assert (=> b!2839516 (= b_free!82205 (not b_next!82909))))

(declare-fun tp!909300 () Bool)

(declare-fun b_and!208195 () Bool)

(assert (=> b!2839516 (= tp!909300 b_and!208195)))

(declare-fun b_free!82207 () Bool)

(declare-fun b_next!82911 () Bool)

(assert (=> b!2839516 (= b_free!82207 (not b_next!82911))))

(declare-fun t!232349 () Bool)

(declare-fun tb!154749 () Bool)

(assert (=> (and b!2839516 (= (toChars!6951 (transformation!5050 (rule!7478 (h!39012 (t!232301 tokensBis!14))))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14))))) t!232349) tb!154749))

(declare-fun result!193034 () Bool)

(assert (= result!193034 result!193008))

(assert (=> b!2839435 t!232349))

(declare-fun tb!154751 () Bool)

(declare-fun t!232351 () Bool)

(assert (=> (and b!2839516 (= (toChars!6951 (transformation!5050 (rule!7478 (h!39012 (t!232301 tokensBis!14))))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612))))) t!232351) tb!154751))

(declare-fun result!193036 () Bool)

(assert (= result!193036 result!193016))

(assert (=> b!2839447 t!232351))

(declare-fun b_and!208197 () Bool)

(declare-fun tp!909302 () Bool)

(assert (=> b!2839516 (= tp!909302 (and (=> t!232349 result!193034) (=> t!232351 result!193036) b_and!208197))))

(declare-fun b!2839513 () Bool)

(declare-fun e!1798618 () Bool)

(declare-fun tp!909303 () Bool)

(declare-fun e!1798619 () Bool)

(assert (=> b!2839513 (= e!1798619 (and (inv!45562 (h!39012 (t!232301 tokensBis!14))) e!1798618 tp!909303))))

(declare-fun b!2839515 () Bool)

(declare-fun e!1798614 () Bool)

(declare-fun tp!909301 () Bool)

(declare-fun e!1798615 () Bool)

(assert (=> b!2839515 (= e!1798614 (and tp!909301 (inv!45558 (tag!5554 (rule!7478 (h!39012 (t!232301 tokensBis!14))))) (inv!45561 (transformation!5050 (rule!7478 (h!39012 (t!232301 tokensBis!14))))) e!1798615))))

(assert (=> b!2839205 (= tp!909166 e!1798619)))

(assert (=> b!2839516 (= e!1798615 (and tp!909300 tp!909302))))

(declare-fun b!2839514 () Bool)

(declare-fun tp!909299 () Bool)

(assert (=> b!2839514 (= e!1798618 (and (inv!21 (value!162294 (h!39012 (t!232301 tokensBis!14)))) e!1798614 tp!909299))))

(assert (= b!2839515 b!2839516))

(assert (= b!2839514 b!2839515))

(assert (= b!2839513 b!2839514))

(assert (= (and b!2839205 ((_ is Cons!33592) (t!232301 tokensBis!14))) b!2839513))

(declare-fun m!3268315 () Bool)

(assert (=> b!2839513 m!3268315))

(declare-fun m!3268317 () Bool)

(assert (=> b!2839515 m!3268317))

(declare-fun m!3268319 () Bool)

(assert (=> b!2839515 m!3268319))

(declare-fun m!3268321 () Bool)

(assert (=> b!2839514 m!3268321))

(declare-fun b!2839520 () Bool)

(declare-fun b_free!82209 () Bool)

(declare-fun b_next!82913 () Bool)

(assert (=> b!2839520 (= b_free!82209 (not b_next!82913))))

(declare-fun tp!909305 () Bool)

(declare-fun b_and!208199 () Bool)

(assert (=> b!2839520 (= tp!909305 b_and!208199)))

(declare-fun b_free!82211 () Bool)

(declare-fun b_next!82915 () Bool)

(assert (=> b!2839520 (= b_free!82211 (not b_next!82915))))

(declare-fun tb!154753 () Bool)

(declare-fun t!232353 () Bool)

(assert (=> (and b!2839520 (= (toChars!6951 (transformation!5050 (rule!7478 (h!39012 (t!232301 tokens!612))))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14))))) t!232353) tb!154753))

(declare-fun result!193038 () Bool)

(assert (= result!193038 result!193008))

(assert (=> b!2839435 t!232353))

(declare-fun t!232355 () Bool)

(declare-fun tb!154755 () Bool)

(assert (=> (and b!2839520 (= (toChars!6951 (transformation!5050 (rule!7478 (h!39012 (t!232301 tokens!612))))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612))))) t!232355) tb!154755))

(declare-fun result!193040 () Bool)

(assert (= result!193040 result!193016))

(assert (=> b!2839447 t!232355))

(declare-fun b_and!208201 () Bool)

(declare-fun tp!909307 () Bool)

(assert (=> b!2839520 (= tp!909307 (and (=> t!232353 result!193038) (=> t!232355 result!193040) b_and!208201))))

(declare-fun tp!909308 () Bool)

(declare-fun e!1798625 () Bool)

(declare-fun b!2839517 () Bool)

(declare-fun e!1798624 () Bool)

(assert (=> b!2839517 (= e!1798625 (and (inv!45562 (h!39012 (t!232301 tokens!612))) e!1798624 tp!909308))))

(declare-fun e!1798621 () Bool)

(declare-fun b!2839519 () Bool)

(declare-fun e!1798620 () Bool)

(declare-fun tp!909306 () Bool)

(assert (=> b!2839519 (= e!1798620 (and tp!909306 (inv!45558 (tag!5554 (rule!7478 (h!39012 (t!232301 tokens!612))))) (inv!45561 (transformation!5050 (rule!7478 (h!39012 (t!232301 tokens!612))))) e!1798621))))

(assert (=> b!2839217 (= tp!909178 e!1798625)))

(assert (=> b!2839520 (= e!1798621 (and tp!909305 tp!909307))))

(declare-fun tp!909304 () Bool)

(declare-fun b!2839518 () Bool)

(assert (=> b!2839518 (= e!1798624 (and (inv!21 (value!162294 (h!39012 (t!232301 tokens!612)))) e!1798620 tp!909304))))

(assert (= b!2839519 b!2839520))

(assert (= b!2839518 b!2839519))

(assert (= b!2839517 b!2839518))

(assert (= (and b!2839217 ((_ is Cons!33592) (t!232301 tokens!612))) b!2839517))

(declare-fun m!3268323 () Bool)

(assert (=> b!2839517 m!3268323))

(declare-fun m!3268325 () Bool)

(assert (=> b!2839519 m!3268325))

(declare-fun m!3268327 () Bool)

(assert (=> b!2839519 m!3268327))

(declare-fun m!3268329 () Bool)

(assert (=> b!2839518 m!3268329))

(declare-fun b_lambda!85355 () Bool)

(assert (= b_lambda!85351 (or (and b!2839516 b_free!82207 (= (toChars!6951 (transformation!5050 (rule!7478 (h!39012 (t!232301 tokensBis!14))))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14)))))) (and b!2839214 b_free!82183 (= (toChars!6951 (transformation!5050 (h!39013 rules!4246))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14)))))) (and b!2839520 b_free!82211 (= (toChars!6951 (transformation!5050 (rule!7478 (h!39012 (t!232301 tokens!612))))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14)))))) (and b!2839212 b_free!82179) (and b!2839220 b_free!82187 (= (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612)))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14)))))) (and b!2839493 b_free!82203 (= (toChars!6951 (transformation!5050 (h!39013 (t!232302 rules!4246)))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14)))))) b_lambda!85355)))

(declare-fun b_lambda!85357 () Bool)

(assert (= b_lambda!85353 (or (and b!2839493 b_free!82203 (= (toChars!6951 (transformation!5050 (h!39013 (t!232302 rules!4246)))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612)))))) (and b!2839520 b_free!82211 (= (toChars!6951 (transformation!5050 (rule!7478 (h!39012 (t!232301 tokens!612))))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612)))))) (and b!2839220 b_free!82187) (and b!2839516 b_free!82207 (= (toChars!6951 (transformation!5050 (rule!7478 (h!39012 (t!232301 tokensBis!14))))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612)))))) (and b!2839212 b_free!82179 (= (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokensBis!14)))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612)))))) (and b!2839214 b_free!82183 (= (toChars!6951 (transformation!5050 (h!39013 rules!4246))) (toChars!6951 (transformation!5050 (rule!7478 (h!39012 tokens!612)))))) b_lambda!85357)))

(check-sat (not b_next!82913) (not b!2839518) (not b_next!82891) (not b!2839457) (not b!2839444) (not d!823571) b_and!208151 (not b!2839494) (not d!823579) (not b!2839243) (not b_next!82881) (not b_next!82911) (not b_lambda!85355) (not b!2839515) b_and!208191 (not b!2839435) (not b!2839261) (not b!2839451) (not b!2839502) (not d!823583) (not b_lambda!85357) (not b!2839449) (not b!2839257) (not b!2839370) (not b_next!82883) (not b!2839477) (not b_next!82907) (not d!823565) (not b!2839371) (not b!2839398) b_and!208193 b_and!208199 (not d!823581) (not b!2839514) b_and!208201 (not b_next!82889) (not b!2839492) (not b!2839476) (not b_next!82905) (not d!823535) b_and!208143 (not b_next!82887) (not b!2839517) b_and!208197 (not b!2839404) (not b!2839436) (not b!2839399) (not b!2839455) (not b!2839442) (not b!2839463) (not b!2839482) (not d!823577) b_and!208185 (not d!823531) (not b!2839519) (not b!2839397) (not b!2839456) (not b!2839491) (not d!823527) (not b!2839450) (not b!2839417) (not b_next!82885) (not b!2839258) tp_is_empty!14615 (not b!2839441) (not b!2839496) (not b!2839386) (not b!2839498) (not b!2839256) b_and!208189 (not b!2839500) (not b!2839462) (not b!2839452) b_and!208147 (not b!2839497) (not d!823575) (not b_next!82909) (not b!2839448) (not b!2839272) (not b!2839501) (not b!2839273) (not tb!154733) (not b!2839475) (not b_next!82915) (not b!2839443) (not b!2839447) (not tb!154739) b_and!208195 (not b!2839513) b_and!208187 (not d!823573))
(check-sat b_and!208151 (not b_next!82881) (not b_next!82911) b_and!208191 (not b_next!82883) (not b_next!82907) (not b_next!82913) (not b_next!82891) b_and!208197 b_and!208185 (not b_next!82885) b_and!208189 b_and!208147 (not b_next!82909) (not b_next!82915) b_and!208195 b_and!208187 b_and!208193 b_and!208199 b_and!208201 (not b_next!82889) (not b_next!82905) b_and!208143 (not b_next!82887))
