; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!147158 () Bool)

(assert start!147158)

(declare-fun b!1575785 () Bool)

(declare-fun b_free!42439 () Bool)

(declare-fun b_next!43143 () Bool)

(assert (=> b!1575785 (= b_free!42439 (not b_next!43143))))

(declare-fun tp!463986 () Bool)

(declare-fun b_and!110309 () Bool)

(assert (=> b!1575785 (= tp!463986 b_and!110309)))

(declare-fun b_free!42441 () Bool)

(declare-fun b_next!43145 () Bool)

(assert (=> b!1575785 (= b_free!42441 (not b_next!43145))))

(declare-fun tp!463983 () Bool)

(declare-fun b_and!110311 () Bool)

(assert (=> b!1575785 (= tp!463983 b_and!110311)))

(declare-fun b!1575786 () Bool)

(declare-fun b_free!42443 () Bool)

(declare-fun b_next!43147 () Bool)

(assert (=> b!1575786 (= b_free!42443 (not b_next!43147))))

(declare-fun tp!463981 () Bool)

(declare-fun b_and!110313 () Bool)

(assert (=> b!1575786 (= tp!463981 b_and!110313)))

(declare-fun b_free!42445 () Bool)

(declare-fun b_next!43149 () Bool)

(assert (=> b!1575786 (= b_free!42445 (not b_next!43149))))

(declare-fun tp!463988 () Bool)

(declare-fun b_and!110315 () Bool)

(assert (=> b!1575786 (= tp!463988 b_and!110315)))

(declare-fun e!1012249 () Bool)

(assert (=> b!1575785 (= e!1012249 (and tp!463986 tp!463983))))

(declare-fun b!1575787 () Bool)

(declare-fun res!702368 () Bool)

(declare-fun e!1012251 () Bool)

(assert (=> b!1575787 (=> (not res!702368) (not e!1012251))))

(declare-datatypes ((LexerInterface!2668 0))(
  ( (LexerInterfaceExt!2665 (__x!11560 Int)) (Lexer!2666) )
))
(declare-fun thiss!17113 () LexerInterface!2668)

(declare-datatypes ((List!17343 0))(
  ( (Nil!17273) (Cons!17273 (h!22674 (_ BitVec 16)) (t!143330 List!17343)) )
))
(declare-datatypes ((TokenValue!3129 0))(
  ( (FloatLiteralValue!6258 (text!22348 List!17343)) (TokenValueExt!3128 (__x!11561 Int)) (Broken!15645 (value!96258 List!17343)) (Object!3198) (End!3129) (Def!3129) (Underscore!3129) (Match!3129) (Else!3129) (Error!3129) (Case!3129) (If!3129) (Extends!3129) (Abstract!3129) (Class!3129) (Val!3129) (DelimiterValue!6258 (del!3189 List!17343)) (KeywordValue!3135 (value!96259 List!17343)) (CommentValue!6258 (value!96260 List!17343)) (WhitespaceValue!6258 (value!96261 List!17343)) (IndentationValue!3129 (value!96262 List!17343)) (String!19976) (Int32!3129) (Broken!15646 (value!96263 List!17343)) (Boolean!3130) (Unit!26706) (OperatorValue!3132 (op!3189 List!17343)) (IdentifierValue!6258 (value!96264 List!17343)) (IdentifierValue!6259 (value!96265 List!17343)) (WhitespaceValue!6259 (value!96266 List!17343)) (True!6258) (False!6258) (Broken!15647 (value!96267 List!17343)) (Broken!15648 (value!96268 List!17343)) (True!6259) (RightBrace!3129) (RightBracket!3129) (Colon!3129) (Null!3129) (Comma!3129) (LeftBracket!3129) (False!6259) (LeftBrace!3129) (ImaginaryLiteralValue!3129 (text!22349 List!17343)) (StringLiteralValue!9387 (value!96269 List!17343)) (EOFValue!3129 (value!96270 List!17343)) (IdentValue!3129 (value!96271 List!17343)) (DelimiterValue!6259 (value!96272 List!17343)) (DedentValue!3129 (value!96273 List!17343)) (NewLineValue!3129 (value!96274 List!17343)) (IntegerValue!9387 (value!96275 (_ BitVec 32)) (text!22350 List!17343)) (IntegerValue!9388 (value!96276 Int) (text!22351 List!17343)) (Times!3129) (Or!3129) (Equal!3129) (Minus!3129) (Broken!15649 (value!96277 List!17343)) (And!3129) (Div!3129) (LessEqual!3129) (Mod!3129) (Concat!7496) (Not!3129) (Plus!3129) (SpaceValue!3129 (value!96278 List!17343)) (IntegerValue!9389 (value!96279 Int) (text!22352 List!17343)) (StringLiteralValue!9388 (text!22353 List!17343)) (FloatLiteralValue!6259 (text!22354 List!17343)) (BytesLiteralValue!3129 (value!96280 List!17343)) (CommentValue!6259 (value!96281 List!17343)) (StringLiteralValue!9389 (value!96282 List!17343)) (ErrorTokenValue!3129 (msg!3190 List!17343)) )
))
(declare-datatypes ((C!8908 0))(
  ( (C!8909 (val!5050 Int)) )
))
(declare-datatypes ((List!17344 0))(
  ( (Nil!17274) (Cons!17274 (h!22675 C!8908) (t!143331 List!17344)) )
))
(declare-datatypes ((IArray!11457 0))(
  ( (IArray!11458 (innerList!5786 List!17344)) )
))
(declare-datatypes ((Conc!5726 0))(
  ( (Node!5726 (left!13967 Conc!5726) (right!14297 Conc!5726) (csize!11682 Int) (cheight!5937 Int)) (Leaf!8466 (xs!8530 IArray!11457) (csize!11683 Int)) (Empty!5726) )
))
(declare-datatypes ((BalanceConc!11396 0))(
  ( (BalanceConc!11397 (c!255391 Conc!5726)) )
))
(declare-datatypes ((Regex!4367 0))(
  ( (ElementMatch!4367 (c!255392 C!8908)) (Concat!7497 (regOne!9246 Regex!4367) (regTwo!9246 Regex!4367)) (EmptyExpr!4367) (Star!4367 (reg!4696 Regex!4367)) (EmptyLang!4367) (Union!4367 (regOne!9247 Regex!4367) (regTwo!9247 Regex!4367)) )
))
(declare-datatypes ((String!19977 0))(
  ( (String!19978 (value!96283 String)) )
))
(declare-datatypes ((TokenValueInjection!5918 0))(
  ( (TokenValueInjection!5919 (toValue!4434 Int) (toChars!4293 Int)) )
))
(declare-datatypes ((Rule!5878 0))(
  ( (Rule!5879 (regex!3039 Regex!4367) (tag!3305 String!19977) (isSeparator!3039 Bool) (transformation!3039 TokenValueInjection!5918)) )
))
(declare-datatypes ((List!17345 0))(
  ( (Nil!17275) (Cons!17275 (h!22676 Rule!5878) (t!143332 List!17345)) )
))
(declare-fun rules!1846 () List!17345)

(declare-fun rulesInvariant!2337 (LexerInterface!2668 List!17345) Bool)

(assert (=> b!1575787 (= res!702368 (rulesInvariant!2337 thiss!17113 rules!1846))))

(declare-fun b!1575788 () Bool)

(declare-fun e!1012245 () Bool)

(declare-fun e!1012250 () Bool)

(declare-fun tp!463987 () Bool)

(assert (=> b!1575788 (= e!1012245 (and e!1012250 tp!463987))))

(declare-fun b!1575789 () Bool)

(declare-fun e!1012255 () Bool)

(declare-fun tp!463982 () Bool)

(declare-datatypes ((Token!5644 0))(
  ( (Token!5645 (value!96284 TokenValue!3129) (rule!4831 Rule!5878) (size!13916 Int) (originalCharacters!3853 List!17344)) )
))
(declare-datatypes ((List!17346 0))(
  ( (Nil!17276) (Cons!17276 (h!22677 Token!5644) (t!143333 List!17346)) )
))
(declare-fun tokens!457 () List!17346)

(declare-fun e!1012256 () Bool)

(declare-fun inv!22683 (Token!5644) Bool)

(assert (=> b!1575789 (= e!1012255 (and (inv!22683 (h!22677 tokens!457)) e!1012256 tp!463982))))

(declare-fun b!1575790 () Bool)

(declare-fun e!1012253 () Bool)

(declare-fun tp!463980 () Bool)

(declare-fun inv!21 (TokenValue!3129) Bool)

(assert (=> b!1575790 (= e!1012256 (and (inv!21 (value!96284 (h!22677 tokens!457))) e!1012253 tp!463980))))

(declare-fun b!1575791 () Bool)

(declare-fun res!702374 () Bool)

(assert (=> b!1575791 (=> (not res!702374) (not e!1012251))))

(declare-fun isEmpty!10310 (List!17345) Bool)

(assert (=> b!1575791 (= res!702374 (not (isEmpty!10310 rules!1846)))))

(declare-fun tp!463984 () Bool)

(declare-fun b!1575792 () Bool)

(declare-fun inv!22680 (String!19977) Bool)

(declare-fun inv!22684 (TokenValueInjection!5918) Bool)

(assert (=> b!1575792 (= e!1012253 (and tp!463984 (inv!22680 (tag!3305 (rule!4831 (h!22677 tokens!457)))) (inv!22684 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) e!1012249))))

(declare-fun b!1575793 () Bool)

(declare-fun res!702371 () Bool)

(declare-fun e!1012247 () Bool)

(assert (=> b!1575793 (=> res!702371 e!1012247)))

(declare-fun rulesProduceIndividualToken!1330 (LexerInterface!2668 List!17345 Token!5644) Bool)

(assert (=> b!1575793 (= res!702371 (not (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 tokens!457))))))

(declare-fun b!1575794 () Bool)

(declare-fun e!1012254 () Bool)

(declare-fun e!1012248 () Bool)

(assert (=> b!1575794 (= e!1012254 (not e!1012248))))

(declare-fun res!702369 () Bool)

(assert (=> b!1575794 (=> res!702369 e!1012248)))

(declare-fun lt!548367 () List!17346)

(assert (=> b!1575794 (= res!702369 (not (= lt!548367 (t!143333 tokens!457))))))

(declare-datatypes ((IArray!11459 0))(
  ( (IArray!11460 (innerList!5787 List!17346)) )
))
(declare-datatypes ((Conc!5727 0))(
  ( (Node!5727 (left!13968 Conc!5727) (right!14298 Conc!5727) (csize!11684 Int) (cheight!5938 Int)) (Leaf!8467 (xs!8531 IArray!11459) (csize!11685 Int)) (Empty!5727) )
))
(declare-datatypes ((BalanceConc!11398 0))(
  ( (BalanceConc!11399 (c!255393 Conc!5727)) )
))
(declare-datatypes ((tuple2!16738 0))(
  ( (tuple2!16739 (_1!9771 BalanceConc!11398) (_2!9771 BalanceConc!11396)) )
))
(declare-fun lt!548363 () tuple2!16738)

(declare-fun list!6651 (BalanceConc!11398) List!17346)

(assert (=> b!1575794 (= lt!548367 (list!6651 (_1!9771 lt!548363)))))

(declare-datatypes ((Unit!26707 0))(
  ( (Unit!26708) )
))
(declare-fun lt!548369 () Unit!26707)

(declare-fun theoremInvertabilityWhenTokenListSeparable!113 (LexerInterface!2668 List!17345 List!17346) Unit!26707)

(assert (=> b!1575794 (= lt!548369 (theoremInvertabilityWhenTokenListSeparable!113 thiss!17113 rules!1846 (t!143333 tokens!457)))))

(declare-fun lt!548376 () List!17344)

(declare-fun lt!548365 () List!17344)

(declare-fun isPrefix!1299 (List!17344 List!17344) Bool)

(assert (=> b!1575794 (isPrefix!1299 lt!548376 lt!548365)))

(declare-fun lt!548366 () Unit!26707)

(declare-fun lt!548373 () List!17344)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!824 (List!17344 List!17344) Unit!26707)

(assert (=> b!1575794 (= lt!548366 (lemmaConcatTwoListThenFirstIsPrefix!824 lt!548376 lt!548373))))

(declare-fun b!1575795 () Bool)

(assert (=> b!1575795 (= e!1012251 e!1012254)))

(declare-fun res!702372 () Bool)

(assert (=> b!1575795 (=> (not res!702372) (not e!1012254))))

(declare-fun lt!548371 () List!17344)

(assert (=> b!1575795 (= res!702372 (= lt!548371 lt!548365))))

(declare-fun ++!4475 (List!17344 List!17344) List!17344)

(assert (=> b!1575795 (= lt!548365 (++!4475 lt!548376 lt!548373))))

(declare-fun lt!548372 () BalanceConc!11396)

(declare-fun list!6652 (BalanceConc!11396) List!17344)

(assert (=> b!1575795 (= lt!548371 (list!6652 lt!548372))))

(declare-fun lt!548364 () BalanceConc!11396)

(assert (=> b!1575795 (= lt!548373 (list!6652 lt!548364))))

(declare-fun charsOf!1688 (Token!5644) BalanceConc!11396)

(assert (=> b!1575795 (= lt!548376 (list!6652 (charsOf!1688 (h!22677 tokens!457))))))

(declare-fun lex!1152 (LexerInterface!2668 List!17345 BalanceConc!11396) tuple2!16738)

(assert (=> b!1575795 (= lt!548363 (lex!1152 thiss!17113 rules!1846 lt!548364))))

(declare-fun lt!548370 () BalanceConc!11398)

(declare-fun print!1199 (LexerInterface!2668 BalanceConc!11398) BalanceConc!11396)

(assert (=> b!1575795 (= lt!548364 (print!1199 thiss!17113 lt!548370))))

(declare-fun seqFromList!1836 (List!17346) BalanceConc!11398)

(assert (=> b!1575795 (= lt!548370 (seqFromList!1836 (t!143333 tokens!457)))))

(assert (=> b!1575795 (= lt!548372 (print!1199 thiss!17113 (seqFromList!1836 tokens!457)))))

(declare-fun b!1575796 () Bool)

(declare-fun isEmpty!10311 (BalanceConc!11396) Bool)

(assert (=> b!1575796 (= e!1012247 (not (isEmpty!10311 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(declare-fun b!1575797 () Bool)

(assert (=> b!1575797 (= e!1012248 e!1012247)))

(declare-fun res!702373 () Bool)

(assert (=> b!1575797 (=> res!702373 e!1012247)))

(declare-fun lt!548375 () List!17346)

(declare-fun lt!548368 () List!17346)

(assert (=> b!1575797 (= res!702373 (or (not (= lt!548367 lt!548375)) (not (= lt!548375 lt!548368))))))

(assert (=> b!1575797 (= lt!548375 (list!6651 lt!548370))))

(assert (=> b!1575797 (= lt!548367 lt!548368)))

(declare-fun prepend!509 (BalanceConc!11398 Token!5644) BalanceConc!11398)

(assert (=> b!1575797 (= lt!548368 (list!6651 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 tokens!457))) (h!22677 (t!143333 tokens!457)))))))

(declare-fun lt!548374 () Unit!26707)

(declare-fun seqFromListBHdTlConstructive!116 (Token!5644 List!17346 BalanceConc!11398) Unit!26707)

(assert (=> b!1575797 (= lt!548374 (seqFromListBHdTlConstructive!116 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457)) (_1!9771 lt!548363)))))

(declare-fun b!1575798 () Bool)

(declare-fun res!702364 () Bool)

(assert (=> b!1575798 (=> (not res!702364) (not e!1012251))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!361 (LexerInterface!2668 List!17346 List!17345) Bool)

(assert (=> b!1575798 (= res!702364 (tokensListTwoByTwoPredicateSeparableList!361 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1575799 () Bool)

(declare-fun res!702367 () Bool)

(assert (=> b!1575799 (=> (not res!702367) (not e!1012251))))

(declare-fun rulesProduceEachTokenIndividuallyList!870 (LexerInterface!2668 List!17345 List!17346) Bool)

(assert (=> b!1575799 (= res!702367 (rulesProduceEachTokenIndividuallyList!870 thiss!17113 rules!1846 tokens!457))))

(declare-fun e!1012252 () Bool)

(assert (=> b!1575786 (= e!1012252 (and tp!463981 tp!463988))))

(declare-fun res!702365 () Bool)

(assert (=> start!147158 (=> (not res!702365) (not e!1012251))))

(get-info :version)

(assert (=> start!147158 (= res!702365 ((_ is Lexer!2666) thiss!17113))))

(assert (=> start!147158 e!1012251))

(assert (=> start!147158 true))

(assert (=> start!147158 e!1012245))

(assert (=> start!147158 e!1012255))

(declare-fun tp!463985 () Bool)

(declare-fun b!1575800 () Bool)

(assert (=> b!1575800 (= e!1012250 (and tp!463985 (inv!22680 (tag!3305 (h!22676 rules!1846))) (inv!22684 (transformation!3039 (h!22676 rules!1846))) e!1012252))))

(declare-fun b!1575801 () Bool)

(declare-fun res!702370 () Bool)

(assert (=> b!1575801 (=> res!702370 e!1012247)))

(assert (=> b!1575801 (= res!702370 (not (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 (t!143333 tokens!457)))))))

(declare-fun b!1575802 () Bool)

(declare-fun res!702366 () Bool)

(assert (=> b!1575802 (=> (not res!702366) (not e!1012251))))

(assert (=> b!1575802 (= res!702366 (and (not ((_ is Nil!17276) tokens!457)) (not ((_ is Nil!17276) (t!143333 tokens!457)))))))

(assert (= (and start!147158 res!702365) b!1575791))

(assert (= (and b!1575791 res!702374) b!1575787))

(assert (= (and b!1575787 res!702368) b!1575799))

(assert (= (and b!1575799 res!702367) b!1575798))

(assert (= (and b!1575798 res!702364) b!1575802))

(assert (= (and b!1575802 res!702366) b!1575795))

(assert (= (and b!1575795 res!702372) b!1575794))

(assert (= (and b!1575794 (not res!702369)) b!1575797))

(assert (= (and b!1575797 (not res!702373)) b!1575793))

(assert (= (and b!1575793 (not res!702371)) b!1575801))

(assert (= (and b!1575801 (not res!702370)) b!1575796))

(assert (= b!1575800 b!1575786))

(assert (= b!1575788 b!1575800))

(assert (= (and start!147158 ((_ is Cons!17275) rules!1846)) b!1575788))

(assert (= b!1575792 b!1575785))

(assert (= b!1575790 b!1575792))

(assert (= b!1575789 b!1575790))

(assert (= (and start!147158 ((_ is Cons!17276) tokens!457)) b!1575789))

(declare-fun m!1855183 () Bool)

(assert (=> b!1575799 m!1855183))

(declare-fun m!1855185 () Bool)

(assert (=> b!1575800 m!1855185))

(declare-fun m!1855187 () Bool)

(assert (=> b!1575800 m!1855187))

(declare-fun m!1855189 () Bool)

(assert (=> b!1575789 m!1855189))

(declare-fun m!1855191 () Bool)

(assert (=> b!1575797 m!1855191))

(declare-fun m!1855193 () Bool)

(assert (=> b!1575797 m!1855193))

(declare-fun m!1855195 () Bool)

(assert (=> b!1575797 m!1855195))

(declare-fun m!1855197 () Bool)

(assert (=> b!1575797 m!1855197))

(declare-fun m!1855199 () Bool)

(assert (=> b!1575797 m!1855199))

(assert (=> b!1575797 m!1855195))

(assert (=> b!1575797 m!1855197))

(declare-fun m!1855201 () Bool)

(assert (=> b!1575790 m!1855201))

(declare-fun m!1855203 () Bool)

(assert (=> b!1575792 m!1855203))

(declare-fun m!1855205 () Bool)

(assert (=> b!1575792 m!1855205))

(declare-fun m!1855207 () Bool)

(assert (=> b!1575794 m!1855207))

(declare-fun m!1855209 () Bool)

(assert (=> b!1575794 m!1855209))

(declare-fun m!1855211 () Bool)

(assert (=> b!1575794 m!1855211))

(declare-fun m!1855213 () Bool)

(assert (=> b!1575794 m!1855213))

(declare-fun m!1855215 () Bool)

(assert (=> b!1575801 m!1855215))

(declare-fun m!1855217 () Bool)

(assert (=> b!1575791 m!1855217))

(declare-fun m!1855219 () Bool)

(assert (=> b!1575796 m!1855219))

(assert (=> b!1575796 m!1855219))

(declare-fun m!1855221 () Bool)

(assert (=> b!1575796 m!1855221))

(declare-fun m!1855223 () Bool)

(assert (=> b!1575787 m!1855223))

(declare-fun m!1855225 () Bool)

(assert (=> b!1575793 m!1855225))

(declare-fun m!1855227 () Bool)

(assert (=> b!1575798 m!1855227))

(declare-fun m!1855229 () Bool)

(assert (=> b!1575795 m!1855229))

(declare-fun m!1855231 () Bool)

(assert (=> b!1575795 m!1855231))

(declare-fun m!1855233 () Bool)

(assert (=> b!1575795 m!1855233))

(declare-fun m!1855235 () Bool)

(assert (=> b!1575795 m!1855235))

(declare-fun m!1855237 () Bool)

(assert (=> b!1575795 m!1855237))

(declare-fun m!1855239 () Bool)

(assert (=> b!1575795 m!1855239))

(assert (=> b!1575795 m!1855231))

(declare-fun m!1855241 () Bool)

(assert (=> b!1575795 m!1855241))

(declare-fun m!1855243 () Bool)

(assert (=> b!1575795 m!1855243))

(assert (=> b!1575795 m!1855237))

(declare-fun m!1855245 () Bool)

(assert (=> b!1575795 m!1855245))

(declare-fun m!1855247 () Bool)

(assert (=> b!1575795 m!1855247))

(check-sat (not b!1575795) b_and!110311 (not b!1575801) (not b_next!43147) (not b!1575797) (not b!1575788) (not b!1575798) (not b!1575796) b_and!110309 (not b!1575800) (not b_next!43143) (not b!1575799) (not b!1575794) (not b!1575790) (not b!1575792) b_and!110313 (not b_next!43149) (not b!1575789) (not b!1575787) (not b!1575791) (not b_next!43145) (not b!1575793) b_and!110315)
(check-sat b_and!110311 b_and!110313 (not b_next!43149) (not b_next!43147) b_and!110309 (not b_next!43145) b_and!110315 (not b_next!43143))
(get-model)

(declare-fun d!467882 () Bool)

(declare-fun lt!548395 () Bool)

(declare-fun isEmpty!10315 (List!17344) Bool)

(assert (=> d!467882 (= lt!548395 (isEmpty!10315 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(declare-fun isEmpty!10316 (Conc!5726) Bool)

(assert (=> d!467882 (= lt!548395 (isEmpty!10316 (c!255391 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(assert (=> d!467882 (= (isEmpty!10311 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) lt!548395)))

(declare-fun bs!390499 () Bool)

(assert (= bs!390499 d!467882))

(assert (=> bs!390499 m!1855219))

(declare-fun m!1855317 () Bool)

(assert (=> bs!390499 m!1855317))

(assert (=> bs!390499 m!1855317))

(declare-fun m!1855319 () Bool)

(assert (=> bs!390499 m!1855319))

(declare-fun m!1855321 () Bool)

(assert (=> bs!390499 m!1855321))

(assert (=> b!1575796 d!467882))

(declare-fun d!467884 () Bool)

(declare-fun lt!548398 () BalanceConc!11396)

(assert (=> d!467884 (= (list!6652 lt!548398) (originalCharacters!3853 (h!22677 (t!143333 tokens!457))))))

(declare-fun dynLambda!7656 (Int TokenValue!3129) BalanceConc!11396)

(assert (=> d!467884 (= lt!548398 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457)))))))

(assert (=> d!467884 (= (charsOf!1688 (h!22677 (t!143333 tokens!457))) lt!548398)))

(declare-fun b_lambda!49595 () Bool)

(assert (=> (not b_lambda!49595) (not d!467884)))

(declare-fun t!143339 () Bool)

(declare-fun tb!88683 () Bool)

(assert (=> (and b!1575785 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))))) t!143339) tb!88683))

(declare-fun b!1575827 () Bool)

(declare-fun e!1012273 () Bool)

(declare-fun tp!463994 () Bool)

(declare-fun inv!22687 (Conc!5726) Bool)

(assert (=> b!1575827 (= e!1012273 (and (inv!22687 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457)))))) tp!463994))))

(declare-fun result!107288 () Bool)

(declare-fun inv!22688 (BalanceConc!11396) Bool)

(assert (=> tb!88683 (= result!107288 (and (inv!22688 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457))))) e!1012273))))

(assert (= tb!88683 b!1575827))

(declare-fun m!1855323 () Bool)

(assert (=> b!1575827 m!1855323))

(declare-fun m!1855325 () Bool)

(assert (=> tb!88683 m!1855325))

(assert (=> d!467884 t!143339))

(declare-fun b_and!110321 () Bool)

(assert (= b_and!110311 (and (=> t!143339 result!107288) b_and!110321)))

(declare-fun t!143341 () Bool)

(declare-fun tb!88685 () Bool)

(assert (=> (and b!1575786 (= (toChars!4293 (transformation!3039 (h!22676 rules!1846))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))))) t!143341) tb!88685))

(declare-fun result!107292 () Bool)

(assert (= result!107292 result!107288))

(assert (=> d!467884 t!143341))

(declare-fun b_and!110323 () Bool)

(assert (= b_and!110315 (and (=> t!143341 result!107292) b_and!110323)))

(declare-fun m!1855327 () Bool)

(assert (=> d!467884 m!1855327))

(declare-fun m!1855329 () Bool)

(assert (=> d!467884 m!1855329))

(assert (=> b!1575796 d!467884))

(declare-fun d!467886 () Bool)

(declare-fun list!6655 (Conc!5726) List!17344)

(assert (=> d!467886 (= (list!6652 lt!548372) (list!6655 (c!255391 lt!548372)))))

(declare-fun bs!390500 () Bool)

(assert (= bs!390500 d!467886))

(declare-fun m!1855331 () Bool)

(assert (=> bs!390500 m!1855331))

(assert (=> b!1575795 d!467886))

(declare-fun b!1575838 () Bool)

(declare-fun res!702396 () Bool)

(declare-fun e!1012279 () Bool)

(assert (=> b!1575838 (=> (not res!702396) (not e!1012279))))

(declare-fun lt!548401 () List!17344)

(declare-fun size!13920 (List!17344) Int)

(assert (=> b!1575838 (= res!702396 (= (size!13920 lt!548401) (+ (size!13920 lt!548376) (size!13920 lt!548373))))))

(declare-fun d!467888 () Bool)

(assert (=> d!467888 e!1012279))

(declare-fun res!702395 () Bool)

(assert (=> d!467888 (=> (not res!702395) (not e!1012279))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2379 (List!17344) (InoxSet C!8908))

(assert (=> d!467888 (= res!702395 (= (content!2379 lt!548401) ((_ map or) (content!2379 lt!548376) (content!2379 lt!548373))))))

(declare-fun e!1012278 () List!17344)

(assert (=> d!467888 (= lt!548401 e!1012278)))

(declare-fun c!255400 () Bool)

(assert (=> d!467888 (= c!255400 ((_ is Nil!17274) lt!548376))))

(assert (=> d!467888 (= (++!4475 lt!548376 lt!548373) lt!548401)))

(declare-fun b!1575839 () Bool)

(assert (=> b!1575839 (= e!1012279 (or (not (= lt!548373 Nil!17274)) (= lt!548401 lt!548376)))))

(declare-fun b!1575837 () Bool)

(assert (=> b!1575837 (= e!1012278 (Cons!17274 (h!22675 lt!548376) (++!4475 (t!143331 lt!548376) lt!548373)))))

(declare-fun b!1575836 () Bool)

(assert (=> b!1575836 (= e!1012278 lt!548373)))

(assert (= (and d!467888 c!255400) b!1575836))

(assert (= (and d!467888 (not c!255400)) b!1575837))

(assert (= (and d!467888 res!702395) b!1575838))

(assert (= (and b!1575838 res!702396) b!1575839))

(declare-fun m!1855333 () Bool)

(assert (=> b!1575838 m!1855333))

(declare-fun m!1855335 () Bool)

(assert (=> b!1575838 m!1855335))

(declare-fun m!1855337 () Bool)

(assert (=> b!1575838 m!1855337))

(declare-fun m!1855339 () Bool)

(assert (=> d!467888 m!1855339))

(declare-fun m!1855341 () Bool)

(assert (=> d!467888 m!1855341))

(declare-fun m!1855343 () Bool)

(assert (=> d!467888 m!1855343))

(declare-fun m!1855345 () Bool)

(assert (=> b!1575837 m!1855345))

(assert (=> b!1575795 d!467888))

(declare-fun d!467890 () Bool)

(assert (=> d!467890 (= (list!6652 lt!548364) (list!6655 (c!255391 lt!548364)))))

(declare-fun bs!390501 () Bool)

(assert (= bs!390501 d!467890))

(declare-fun m!1855347 () Bool)

(assert (=> bs!390501 m!1855347))

(assert (=> b!1575795 d!467890))

(declare-fun d!467892 () Bool)

(declare-fun lt!548402 () BalanceConc!11396)

(assert (=> d!467892 (= (list!6652 lt!548402) (originalCharacters!3853 (h!22677 tokens!457)))))

(assert (=> d!467892 (= lt!548402 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457))))))

(assert (=> d!467892 (= (charsOf!1688 (h!22677 tokens!457)) lt!548402)))

(declare-fun b_lambda!49597 () Bool)

(assert (=> (not b_lambda!49597) (not d!467892)))

(declare-fun t!143343 () Bool)

(declare-fun tb!88687 () Bool)

(assert (=> (and b!1575785 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457))))) t!143343) tb!88687))

(declare-fun b!1575840 () Bool)

(declare-fun e!1012280 () Bool)

(declare-fun tp!463995 () Bool)

(assert (=> b!1575840 (= e!1012280 (and (inv!22687 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457))))) tp!463995))))

(declare-fun result!107294 () Bool)

(assert (=> tb!88687 (= result!107294 (and (inv!22688 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457)))) e!1012280))))

(assert (= tb!88687 b!1575840))

(declare-fun m!1855349 () Bool)

(assert (=> b!1575840 m!1855349))

(declare-fun m!1855351 () Bool)

(assert (=> tb!88687 m!1855351))

(assert (=> d!467892 t!143343))

(declare-fun b_and!110325 () Bool)

(assert (= b_and!110321 (and (=> t!143343 result!107294) b_and!110325)))

(declare-fun t!143345 () Bool)

(declare-fun tb!88689 () Bool)

(assert (=> (and b!1575786 (= (toChars!4293 (transformation!3039 (h!22676 rules!1846))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457))))) t!143345) tb!88689))

(declare-fun result!107296 () Bool)

(assert (= result!107296 result!107294))

(assert (=> d!467892 t!143345))

(declare-fun b_and!110327 () Bool)

(assert (= b_and!110323 (and (=> t!143345 result!107296) b_and!110327)))

(declare-fun m!1855353 () Bool)

(assert (=> d!467892 m!1855353))

(declare-fun m!1855355 () Bool)

(assert (=> d!467892 m!1855355))

(assert (=> b!1575795 d!467892))

(declare-fun d!467894 () Bool)

(declare-fun fromListB!785 (List!17346) BalanceConc!11398)

(assert (=> d!467894 (= (seqFromList!1836 (t!143333 tokens!457)) (fromListB!785 (t!143333 tokens!457)))))

(declare-fun bs!390502 () Bool)

(assert (= bs!390502 d!467894))

(declare-fun m!1855357 () Bool)

(assert (=> bs!390502 m!1855357))

(assert (=> b!1575795 d!467894))

(declare-fun d!467896 () Bool)

(assert (=> d!467896 (= (list!6652 (charsOf!1688 (h!22677 tokens!457))) (list!6655 (c!255391 (charsOf!1688 (h!22677 tokens!457)))))))

(declare-fun bs!390503 () Bool)

(assert (= bs!390503 d!467896))

(declare-fun m!1855359 () Bool)

(assert (=> bs!390503 m!1855359))

(assert (=> b!1575795 d!467896))

(declare-fun b!1575866 () Bool)

(declare-fun e!1012298 () Bool)

(declare-fun e!1012297 () Bool)

(assert (=> b!1575866 (= e!1012298 e!1012297)))

(declare-fun res!702412 () Bool)

(declare-fun lt!548408 () tuple2!16738)

(declare-fun size!13921 (BalanceConc!11396) Int)

(assert (=> b!1575866 (= res!702412 (< (size!13921 (_2!9771 lt!548408)) (size!13921 lt!548364)))))

(assert (=> b!1575866 (=> (not res!702412) (not e!1012297))))

(declare-fun b!1575867 () Bool)

(assert (=> b!1575867 (= e!1012298 (= (_2!9771 lt!548408) lt!548364))))

(declare-fun b!1575868 () Bool)

(declare-fun res!702414 () Bool)

(declare-fun e!1012296 () Bool)

(assert (=> b!1575868 (=> (not res!702414) (not e!1012296))))

(declare-datatypes ((tuple2!16744 0))(
  ( (tuple2!16745 (_1!9774 List!17346) (_2!9774 List!17344)) )
))
(declare-fun lexList!773 (LexerInterface!2668 List!17345 List!17344) tuple2!16744)

(assert (=> b!1575868 (= res!702414 (= (list!6651 (_1!9771 lt!548408)) (_1!9774 (lexList!773 thiss!17113 rules!1846 (list!6652 lt!548364)))))))

(declare-fun d!467898 () Bool)

(assert (=> d!467898 e!1012296))

(declare-fun res!702413 () Bool)

(assert (=> d!467898 (=> (not res!702413) (not e!1012296))))

(assert (=> d!467898 (= res!702413 e!1012298)))

(declare-fun c!255406 () Bool)

(declare-fun size!13922 (BalanceConc!11398) Int)

(assert (=> d!467898 (= c!255406 (> (size!13922 (_1!9771 lt!548408)) 0))))

(declare-fun lexTailRecV2!496 (LexerInterface!2668 List!17345 BalanceConc!11396 BalanceConc!11396 BalanceConc!11396 BalanceConc!11398) tuple2!16738)

(assert (=> d!467898 (= lt!548408 (lexTailRecV2!496 thiss!17113 rules!1846 lt!548364 (BalanceConc!11397 Empty!5726) lt!548364 (BalanceConc!11399 Empty!5727)))))

(assert (=> d!467898 (= (lex!1152 thiss!17113 rules!1846 lt!548364) lt!548408)))

(declare-fun b!1575869 () Bool)

(declare-fun isEmpty!10317 (BalanceConc!11398) Bool)

(assert (=> b!1575869 (= e!1012297 (not (isEmpty!10317 (_1!9771 lt!548408))))))

(declare-fun b!1575870 () Bool)

(assert (=> b!1575870 (= e!1012296 (= (list!6652 (_2!9771 lt!548408)) (_2!9774 (lexList!773 thiss!17113 rules!1846 (list!6652 lt!548364)))))))

(assert (= (and d!467898 c!255406) b!1575866))

(assert (= (and d!467898 (not c!255406)) b!1575867))

(assert (= (and b!1575866 res!702412) b!1575869))

(assert (= (and d!467898 res!702413) b!1575868))

(assert (= (and b!1575868 res!702414) b!1575870))

(declare-fun m!1855379 () Bool)

(assert (=> d!467898 m!1855379))

(declare-fun m!1855381 () Bool)

(assert (=> d!467898 m!1855381))

(declare-fun m!1855383 () Bool)

(assert (=> b!1575869 m!1855383))

(declare-fun m!1855385 () Bool)

(assert (=> b!1575866 m!1855385))

(declare-fun m!1855387 () Bool)

(assert (=> b!1575866 m!1855387))

(declare-fun m!1855389 () Bool)

(assert (=> b!1575868 m!1855389))

(assert (=> b!1575868 m!1855235))

(assert (=> b!1575868 m!1855235))

(declare-fun m!1855391 () Bool)

(assert (=> b!1575868 m!1855391))

(declare-fun m!1855393 () Bool)

(assert (=> b!1575870 m!1855393))

(assert (=> b!1575870 m!1855235))

(assert (=> b!1575870 m!1855235))

(assert (=> b!1575870 m!1855391))

(assert (=> b!1575795 d!467898))

(declare-fun d!467904 () Bool)

(declare-fun lt!548411 () BalanceConc!11396)

(declare-fun printList!791 (LexerInterface!2668 List!17346) List!17344)

(assert (=> d!467904 (= (list!6652 lt!548411) (printList!791 thiss!17113 (list!6651 (seqFromList!1836 tokens!457))))))

(declare-fun printTailRec!727 (LexerInterface!2668 BalanceConc!11398 Int BalanceConc!11396) BalanceConc!11396)

(assert (=> d!467904 (= lt!548411 (printTailRec!727 thiss!17113 (seqFromList!1836 tokens!457) 0 (BalanceConc!11397 Empty!5726)))))

(assert (=> d!467904 (= (print!1199 thiss!17113 (seqFromList!1836 tokens!457)) lt!548411)))

(declare-fun bs!390505 () Bool)

(assert (= bs!390505 d!467904))

(declare-fun m!1855395 () Bool)

(assert (=> bs!390505 m!1855395))

(assert (=> bs!390505 m!1855237))

(declare-fun m!1855397 () Bool)

(assert (=> bs!390505 m!1855397))

(assert (=> bs!390505 m!1855397))

(declare-fun m!1855399 () Bool)

(assert (=> bs!390505 m!1855399))

(assert (=> bs!390505 m!1855237))

(declare-fun m!1855401 () Bool)

(assert (=> bs!390505 m!1855401))

(assert (=> b!1575795 d!467904))

(declare-fun d!467906 () Bool)

(declare-fun lt!548412 () BalanceConc!11396)

(assert (=> d!467906 (= (list!6652 lt!548412) (printList!791 thiss!17113 (list!6651 lt!548370)))))

(assert (=> d!467906 (= lt!548412 (printTailRec!727 thiss!17113 lt!548370 0 (BalanceConc!11397 Empty!5726)))))

(assert (=> d!467906 (= (print!1199 thiss!17113 lt!548370) lt!548412)))

(declare-fun bs!390506 () Bool)

(assert (= bs!390506 d!467906))

(declare-fun m!1855403 () Bool)

(assert (=> bs!390506 m!1855403))

(assert (=> bs!390506 m!1855191))

(assert (=> bs!390506 m!1855191))

(declare-fun m!1855405 () Bool)

(assert (=> bs!390506 m!1855405))

(declare-fun m!1855407 () Bool)

(assert (=> bs!390506 m!1855407))

(assert (=> b!1575795 d!467906))

(declare-fun d!467908 () Bool)

(assert (=> d!467908 (= (seqFromList!1836 tokens!457) (fromListB!785 tokens!457))))

(declare-fun bs!390507 () Bool)

(assert (= bs!390507 d!467908))

(declare-fun m!1855409 () Bool)

(assert (=> bs!390507 m!1855409))

(assert (=> b!1575795 d!467908))

(declare-fun d!467910 () Bool)

(declare-fun list!6656 (Conc!5727) List!17346)

(assert (=> d!467910 (= (list!6651 (_1!9771 lt!548363)) (list!6656 (c!255393 (_1!9771 lt!548363))))))

(declare-fun bs!390508 () Bool)

(assert (= bs!390508 d!467910))

(declare-fun m!1855411 () Bool)

(assert (=> bs!390508 m!1855411))

(assert (=> b!1575794 d!467910))

(declare-fun d!467912 () Bool)

(declare-fun e!1012328 () Bool)

(assert (=> d!467912 e!1012328))

(declare-fun res!702444 () Bool)

(assert (=> d!467912 (=> (not res!702444) (not e!1012328))))

(assert (=> d!467912 (= res!702444 (= (list!6651 (_1!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457)))))) (t!143333 tokens!457)))))

(declare-fun lt!548563 () Unit!26707)

(declare-fun e!1012327 () Unit!26707)

(assert (=> d!467912 (= lt!548563 e!1012327)))

(declare-fun c!255412 () Bool)

(assert (=> d!467912 (= c!255412 (or ((_ is Nil!17276) (t!143333 tokens!457)) ((_ is Nil!17276) (t!143333 (t!143333 tokens!457)))))))

(assert (=> d!467912 (not (isEmpty!10310 rules!1846))))

(assert (=> d!467912 (= (theoremInvertabilityWhenTokenListSeparable!113 thiss!17113 rules!1846 (t!143333 tokens!457)) lt!548563)))

(declare-fun b!1575910 () Bool)

(declare-fun Unit!26726 () Unit!26707)

(assert (=> b!1575910 (= e!1012327 Unit!26726)))

(declare-fun b!1575911 () Bool)

(declare-fun Unit!26727 () Unit!26707)

(assert (=> b!1575911 (= e!1012327 Unit!26727)))

(declare-fun lt!548578 () BalanceConc!11396)

(assert (=> b!1575911 (= lt!548578 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457))))))

(declare-fun lt!548558 () BalanceConc!11396)

(assert (=> b!1575911 (= lt!548558 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))))))

(declare-fun lt!548580 () tuple2!16738)

(assert (=> b!1575911 (= lt!548580 (lex!1152 thiss!17113 rules!1846 lt!548558))))

(declare-fun lt!548573 () List!17344)

(assert (=> b!1575911 (= lt!548573 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))

(declare-fun lt!548557 () List!17344)

(assert (=> b!1575911 (= lt!548557 (list!6652 lt!548558))))

(declare-fun lt!548575 () Unit!26707)

(assert (=> b!1575911 (= lt!548575 (lemmaConcatTwoListThenFirstIsPrefix!824 lt!548573 lt!548557))))

(assert (=> b!1575911 (isPrefix!1299 lt!548573 (++!4475 lt!548573 lt!548557))))

(declare-fun lt!548570 () Unit!26707)

(assert (=> b!1575911 (= lt!548570 lt!548575)))

(declare-fun lt!548562 () Unit!26707)

(assert (=> b!1575911 (= lt!548562 (theoremInvertabilityWhenTokenListSeparable!113 thiss!17113 rules!1846 (t!143333 (t!143333 tokens!457))))))

(declare-fun lt!548565 () Unit!26707)

(assert (=> b!1575911 (= lt!548565 (seqFromListBHdTlConstructive!116 (h!22677 (t!143333 (t!143333 tokens!457))) (t!143333 (t!143333 (t!143333 tokens!457))) (_1!9771 lt!548580)))))

(assert (=> b!1575911 (= (list!6651 (_1!9771 lt!548580)) (list!6651 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 (t!143333 tokens!457))))))))

(declare-fun lt!548564 () Unit!26707)

(assert (=> b!1575911 (= lt!548564 lt!548565)))

(declare-datatypes ((tuple2!16746 0))(
  ( (tuple2!16747 (_1!9775 Token!5644) (_2!9775 List!17344)) )
))
(declare-datatypes ((Option!3086 0))(
  ( (None!3085) (Some!3085 (v!23904 tuple2!16746)) )
))
(declare-fun lt!548568 () Option!3086)

(declare-fun maxPrefix!1236 (LexerInterface!2668 List!17345 List!17344) Option!3086)

(assert (=> b!1575911 (= lt!548568 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 lt!548578)))))

(declare-fun singletonSeq!1376 (Token!5644) BalanceConc!11398)

(assert (=> b!1575911 (= (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457)))) (printTailRec!727 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))) 0 (BalanceConc!11397 Empty!5726)))))

(declare-fun lt!548579 () Unit!26707)

(declare-fun Unit!26728 () Unit!26707)

(assert (=> b!1575911 (= lt!548579 Unit!26728)))

(declare-fun lt!548566 () Unit!26707)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!256 (LexerInterface!2668 List!17345 List!17344 List!17344) Unit!26707)

(assert (=> b!1575911 (= lt!548566 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!256 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (list!6652 lt!548558)))))

(assert (=> b!1575911 (= (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (originalCharacters!3853 (h!22677 (t!143333 tokens!457))))))

(declare-fun lt!548572 () Unit!26707)

(declare-fun Unit!26729 () Unit!26707)

(assert (=> b!1575911 (= lt!548572 Unit!26729)))

(declare-fun singletonSeq!1377 (C!8908) BalanceConc!11396)

(declare-fun apply!4177 (BalanceConc!11396 Int) C!8908)

(declare-fun head!3164 (List!17344) C!8908)

(assert (=> b!1575911 (= (list!6652 (singletonSeq!1377 (apply!4177 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457)))) 0))) (Cons!17274 (head!3164 (originalCharacters!3853 (h!22677 (t!143333 (t!143333 tokens!457))))) Nil!17274))))

(declare-fun lt!548571 () Unit!26707)

(declare-fun Unit!26730 () Unit!26707)

(assert (=> b!1575911 (= lt!548571 Unit!26730)))

(assert (=> b!1575911 (= (list!6652 (singletonSeq!1377 (apply!4177 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457)))) 0))) (Cons!17274 (head!3164 (list!6652 lt!548558)) Nil!17274))))

(declare-fun lt!548555 () Unit!26707)

(declare-fun Unit!26731 () Unit!26707)

(assert (=> b!1575911 (= lt!548555 Unit!26731)))

(declare-fun head!3165 (BalanceConc!11396) C!8908)

(assert (=> b!1575911 (= (list!6652 (singletonSeq!1377 (apply!4177 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457)))) 0))) (Cons!17274 (head!3165 lt!548558) Nil!17274))))

(declare-fun lt!548559 () Unit!26707)

(declare-fun Unit!26732 () Unit!26707)

(assert (=> b!1575911 (= lt!548559 Unit!26732)))

(declare-fun isDefined!2481 (Option!3086) Bool)

(assert (=> b!1575911 (isDefined!2481 (maxPrefix!1236 thiss!17113 rules!1846 (originalCharacters!3853 (h!22677 (t!143333 tokens!457)))))))

(declare-fun lt!548567 () Unit!26707)

(declare-fun Unit!26733 () Unit!26707)

(assert (=> b!1575911 (= lt!548567 Unit!26733)))

(assert (=> b!1575911 (isDefined!2481 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(declare-fun lt!548561 () Unit!26707)

(declare-fun Unit!26734 () Unit!26707)

(assert (=> b!1575911 (= lt!548561 Unit!26734)))

(declare-fun lt!548577 () Unit!26707)

(declare-fun Unit!26735 () Unit!26707)

(assert (=> b!1575911 (= lt!548577 Unit!26735)))

(declare-fun get!4939 (Option!3086) tuple2!16746)

(assert (=> b!1575911 (= (_1!9775 (get!4939 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))) (h!22677 (t!143333 tokens!457)))))

(declare-fun lt!548556 () Unit!26707)

(declare-fun Unit!26736 () Unit!26707)

(assert (=> b!1575911 (= lt!548556 Unit!26736)))

(assert (=> b!1575911 (isEmpty!10315 (_2!9775 (get!4939 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))))

(declare-fun lt!548569 () Unit!26707)

(declare-fun Unit!26737 () Unit!26707)

(assert (=> b!1575911 (= lt!548569 Unit!26737)))

(declare-fun matchR!1904 (Regex!4367 List!17344) Bool)

(assert (=> b!1575911 (matchR!1904 (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))) (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))

(declare-fun lt!548560 () Unit!26707)

(declare-fun Unit!26738 () Unit!26707)

(assert (=> b!1575911 (= lt!548560 Unit!26738)))

(assert (=> b!1575911 (= (rule!4831 (h!22677 (t!143333 tokens!457))) (rule!4831 (h!22677 (t!143333 tokens!457))))))

(declare-fun lt!548576 () Unit!26707)

(declare-fun Unit!26739 () Unit!26707)

(assert (=> b!1575911 (= lt!548576 Unit!26739)))

(declare-fun lt!548574 () Unit!26707)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!54 (LexerInterface!2668 List!17345 Token!5644 Rule!5878 List!17344) Unit!26707)

(assert (=> b!1575911 (= lt!548574 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!54 thiss!17113 rules!1846 (h!22677 (t!143333 tokens!457)) (rule!4831 (h!22677 (t!143333 tokens!457))) (list!6652 lt!548558)))))

(declare-fun b!1575912 () Bool)

(assert (=> b!1575912 (= e!1012328 (isEmpty!10311 (_2!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457)))))))))

(assert (= (and d!467912 c!255412) b!1575910))

(assert (= (and d!467912 (not c!255412)) b!1575911))

(assert (= (and d!467912 res!702444) b!1575912))

(declare-fun m!1855523 () Bool)

(assert (=> d!467912 m!1855523))

(declare-fun m!1855525 () Bool)

(assert (=> d!467912 m!1855525))

(assert (=> d!467912 m!1855233))

(assert (=> d!467912 m!1855523))

(assert (=> d!467912 m!1855233))

(declare-fun m!1855527 () Bool)

(assert (=> d!467912 m!1855527))

(assert (=> d!467912 m!1855217))

(declare-fun m!1855529 () Bool)

(assert (=> b!1575911 m!1855529))

(declare-fun m!1855531 () Bool)

(assert (=> b!1575911 m!1855531))

(declare-fun m!1855533 () Bool)

(assert (=> b!1575911 m!1855533))

(declare-fun m!1855535 () Bool)

(assert (=> b!1575911 m!1855535))

(declare-fun m!1855537 () Bool)

(assert (=> b!1575911 m!1855537))

(declare-fun m!1855539 () Bool)

(assert (=> b!1575911 m!1855539))

(declare-fun m!1855541 () Bool)

(assert (=> b!1575911 m!1855541))

(assert (=> b!1575911 m!1855219))

(declare-fun m!1855543 () Bool)

(assert (=> b!1575911 m!1855543))

(declare-fun m!1855545 () Bool)

(assert (=> b!1575911 m!1855545))

(declare-fun m!1855547 () Bool)

(assert (=> b!1575911 m!1855547))

(declare-fun m!1855549 () Bool)

(assert (=> b!1575911 m!1855549))

(declare-fun m!1855551 () Bool)

(assert (=> b!1575911 m!1855551))

(declare-fun m!1855553 () Bool)

(assert (=> b!1575911 m!1855553))

(assert (=> b!1575911 m!1855545))

(declare-fun m!1855555 () Bool)

(assert (=> b!1575911 m!1855555))

(declare-fun m!1855557 () Bool)

(assert (=> b!1575911 m!1855557))

(declare-fun m!1855559 () Bool)

(assert (=> b!1575911 m!1855559))

(declare-fun m!1855561 () Bool)

(assert (=> b!1575911 m!1855561))

(declare-fun m!1855563 () Bool)

(assert (=> b!1575911 m!1855563))

(assert (=> b!1575911 m!1855317))

(declare-fun m!1855565 () Bool)

(assert (=> b!1575911 m!1855565))

(declare-fun m!1855567 () Bool)

(assert (=> b!1575911 m!1855567))

(declare-fun m!1855569 () Bool)

(assert (=> b!1575911 m!1855569))

(assert (=> b!1575911 m!1855317))

(assert (=> b!1575911 m!1855561))

(declare-fun m!1855571 () Bool)

(assert (=> b!1575911 m!1855571))

(assert (=> b!1575911 m!1855195))

(declare-fun m!1855573 () Bool)

(assert (=> b!1575911 m!1855573))

(declare-fun m!1855575 () Bool)

(assert (=> b!1575911 m!1855575))

(assert (=> b!1575911 m!1855557))

(declare-fun m!1855577 () Bool)

(assert (=> b!1575911 m!1855577))

(assert (=> b!1575911 m!1855233))

(assert (=> b!1575911 m!1855523))

(declare-fun m!1855579 () Bool)

(assert (=> b!1575911 m!1855579))

(assert (=> b!1575911 m!1855539))

(assert (=> b!1575911 m!1855545))

(declare-fun m!1855581 () Bool)

(assert (=> b!1575911 m!1855581))

(assert (=> b!1575911 m!1855577))

(declare-fun m!1855583 () Bool)

(assert (=> b!1575911 m!1855583))

(assert (=> b!1575911 m!1855233))

(declare-fun m!1855585 () Bool)

(assert (=> b!1575911 m!1855585))

(assert (=> b!1575911 m!1855575))

(declare-fun m!1855587 () Bool)

(assert (=> b!1575911 m!1855587))

(assert (=> b!1575911 m!1855533))

(assert (=> b!1575911 m!1855195))

(assert (=> b!1575911 m!1855529))

(declare-fun m!1855589 () Bool)

(assert (=> b!1575911 m!1855589))

(assert (=> b!1575911 m!1855317))

(assert (=> b!1575911 m!1855529))

(assert (=> b!1575911 m!1855587))

(assert (=> b!1575911 m!1855219))

(assert (=> b!1575911 m!1855317))

(assert (=> b!1575911 m!1855549))

(assert (=> b!1575911 m!1855559))

(declare-fun m!1855591 () Bool)

(assert (=> b!1575911 m!1855591))

(assert (=> b!1575911 m!1855561))

(declare-fun m!1855593 () Bool)

(assert (=> b!1575911 m!1855593))

(assert (=> b!1575911 m!1855561))

(assert (=> b!1575912 m!1855233))

(assert (=> b!1575912 m!1855233))

(assert (=> b!1575912 m!1855523))

(assert (=> b!1575912 m!1855523))

(assert (=> b!1575912 m!1855525))

(declare-fun m!1855595 () Bool)

(assert (=> b!1575912 m!1855595))

(assert (=> b!1575794 d!467912))

(declare-fun b!1575924 () Bool)

(declare-fun e!1012336 () Bool)

(assert (=> b!1575924 (= e!1012336 (>= (size!13920 lt!548365) (size!13920 lt!548376)))))

(declare-fun b!1575921 () Bool)

(declare-fun e!1012337 () Bool)

(declare-fun e!1012335 () Bool)

(assert (=> b!1575921 (= e!1012337 e!1012335)))

(declare-fun res!702456 () Bool)

(assert (=> b!1575921 (=> (not res!702456) (not e!1012335))))

(assert (=> b!1575921 (= res!702456 (not ((_ is Nil!17274) lt!548365)))))

(declare-fun d!467924 () Bool)

(assert (=> d!467924 e!1012336))

(declare-fun res!702453 () Bool)

(assert (=> d!467924 (=> res!702453 e!1012336)))

(declare-fun lt!548583 () Bool)

(assert (=> d!467924 (= res!702453 (not lt!548583))))

(assert (=> d!467924 (= lt!548583 e!1012337)))

(declare-fun res!702454 () Bool)

(assert (=> d!467924 (=> res!702454 e!1012337)))

(assert (=> d!467924 (= res!702454 ((_ is Nil!17274) lt!548376))))

(assert (=> d!467924 (= (isPrefix!1299 lt!548376 lt!548365) lt!548583)))

(declare-fun b!1575923 () Bool)

(declare-fun tail!2240 (List!17344) List!17344)

(assert (=> b!1575923 (= e!1012335 (isPrefix!1299 (tail!2240 lt!548376) (tail!2240 lt!548365)))))

(declare-fun b!1575922 () Bool)

(declare-fun res!702455 () Bool)

(assert (=> b!1575922 (=> (not res!702455) (not e!1012335))))

(assert (=> b!1575922 (= res!702455 (= (head!3164 lt!548376) (head!3164 lt!548365)))))

(assert (= (and d!467924 (not res!702454)) b!1575921))

(assert (= (and b!1575921 res!702456) b!1575922))

(assert (= (and b!1575922 res!702455) b!1575923))

(assert (= (and d!467924 (not res!702453)) b!1575924))

(declare-fun m!1855597 () Bool)

(assert (=> b!1575924 m!1855597))

(assert (=> b!1575924 m!1855335))

(declare-fun m!1855599 () Bool)

(assert (=> b!1575923 m!1855599))

(declare-fun m!1855601 () Bool)

(assert (=> b!1575923 m!1855601))

(assert (=> b!1575923 m!1855599))

(assert (=> b!1575923 m!1855601))

(declare-fun m!1855603 () Bool)

(assert (=> b!1575923 m!1855603))

(declare-fun m!1855605 () Bool)

(assert (=> b!1575922 m!1855605))

(declare-fun m!1855607 () Bool)

(assert (=> b!1575922 m!1855607))

(assert (=> b!1575794 d!467924))

(declare-fun d!467926 () Bool)

(assert (=> d!467926 (isPrefix!1299 lt!548376 (++!4475 lt!548376 lt!548373))))

(declare-fun lt!548586 () Unit!26707)

(declare-fun choose!9430 (List!17344 List!17344) Unit!26707)

(assert (=> d!467926 (= lt!548586 (choose!9430 lt!548376 lt!548373))))

(assert (=> d!467926 (= (lemmaConcatTwoListThenFirstIsPrefix!824 lt!548376 lt!548373) lt!548586)))

(declare-fun bs!390510 () Bool)

(assert (= bs!390510 d!467926))

(assert (=> bs!390510 m!1855243))

(assert (=> bs!390510 m!1855243))

(declare-fun m!1855609 () Bool)

(assert (=> bs!390510 m!1855609))

(declare-fun m!1855611 () Bool)

(assert (=> bs!390510 m!1855611))

(assert (=> b!1575794 d!467926))

(declare-fun b!1575973 () Bool)

(declare-fun e!1012377 () Bool)

(assert (=> b!1575973 (= e!1012377 true)))

(declare-fun b!1575972 () Bool)

(declare-fun e!1012376 () Bool)

(assert (=> b!1575972 (= e!1012376 e!1012377)))

(declare-fun b!1575971 () Bool)

(declare-fun e!1012375 () Bool)

(assert (=> b!1575971 (= e!1012375 e!1012376)))

(declare-fun d!467928 () Bool)

(assert (=> d!467928 e!1012375))

(assert (= b!1575972 b!1575973))

(assert (= b!1575971 b!1575972))

(assert (= (and d!467928 ((_ is Cons!17275) rules!1846)) b!1575971))

(declare-fun order!10173 () Int)

(declare-fun order!10175 () Int)

(declare-fun lambda!66371 () Int)

(declare-fun dynLambda!7657 (Int Int) Int)

(declare-fun dynLambda!7658 (Int Int) Int)

(assert (=> b!1575973 (< (dynLambda!7657 order!10173 (toValue!4434 (transformation!3039 (h!22676 rules!1846)))) (dynLambda!7658 order!10175 lambda!66371))))

(declare-fun order!10177 () Int)

(declare-fun dynLambda!7659 (Int Int) Int)

(assert (=> b!1575973 (< (dynLambda!7659 order!10177 (toChars!4293 (transformation!3039 (h!22676 rules!1846)))) (dynLambda!7658 order!10175 lambda!66371))))

(assert (=> d!467928 true))

(declare-fun lt!548618 () Bool)

(declare-fun forall!3980 (List!17346 Int) Bool)

(assert (=> d!467928 (= lt!548618 (forall!3980 tokens!457 lambda!66371))))

(declare-fun e!1012368 () Bool)

(assert (=> d!467928 (= lt!548618 e!1012368)))

(declare-fun res!702481 () Bool)

(assert (=> d!467928 (=> res!702481 e!1012368)))

(assert (=> d!467928 (= res!702481 (not ((_ is Cons!17276) tokens!457)))))

(assert (=> d!467928 (not (isEmpty!10310 rules!1846))))

(assert (=> d!467928 (= (rulesProduceEachTokenIndividuallyList!870 thiss!17113 rules!1846 tokens!457) lt!548618)))

(declare-fun b!1575961 () Bool)

(declare-fun e!1012367 () Bool)

(assert (=> b!1575961 (= e!1012368 e!1012367)))

(declare-fun res!702480 () Bool)

(assert (=> b!1575961 (=> (not res!702480) (not e!1012367))))

(assert (=> b!1575961 (= res!702480 (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 tokens!457)))))

(declare-fun b!1575962 () Bool)

(assert (=> b!1575962 (= e!1012367 (rulesProduceEachTokenIndividuallyList!870 thiss!17113 rules!1846 (t!143333 tokens!457)))))

(assert (= (and d!467928 (not res!702481)) b!1575961))

(assert (= (and b!1575961 res!702480) b!1575962))

(declare-fun m!1855663 () Bool)

(assert (=> d!467928 m!1855663))

(assert (=> d!467928 m!1855217))

(assert (=> b!1575961 m!1855225))

(declare-fun m!1855665 () Bool)

(assert (=> b!1575962 m!1855665))

(assert (=> b!1575799 d!467928))

(declare-fun d!467944 () Bool)

(declare-fun res!702495 () Bool)

(declare-fun e!1012434 () Bool)

(assert (=> d!467944 (=> res!702495 e!1012434)))

(assert (=> d!467944 (= res!702495 (or (not ((_ is Cons!17276) tokens!457)) (not ((_ is Cons!17276) (t!143333 tokens!457)))))))

(assert (=> d!467944 (= (tokensListTwoByTwoPredicateSeparableList!361 thiss!17113 tokens!457 rules!1846) e!1012434)))

(declare-fun b!1576050 () Bool)

(declare-fun e!1012435 () Bool)

(assert (=> b!1576050 (= e!1012434 e!1012435)))

(declare-fun res!702496 () Bool)

(assert (=> b!1576050 (=> (not res!702496) (not e!1012435))))

(declare-fun separableTokensPredicate!610 (LexerInterface!2668 Token!5644 Token!5644 List!17345) Bool)

(assert (=> b!1576050 (= res!702496 (separableTokensPredicate!610 thiss!17113 (h!22677 tokens!457) (h!22677 (t!143333 tokens!457)) rules!1846))))

(declare-fun lt!548639 () Unit!26707)

(declare-fun Unit!26740 () Unit!26707)

(assert (=> b!1576050 (= lt!548639 Unit!26740)))

(assert (=> b!1576050 (> (size!13921 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) 0)))

(declare-fun lt!548637 () Unit!26707)

(declare-fun Unit!26741 () Unit!26707)

(assert (=> b!1576050 (= lt!548637 Unit!26741)))

(assert (=> b!1576050 (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 (t!143333 tokens!457)))))

(declare-fun lt!548635 () Unit!26707)

(declare-fun Unit!26742 () Unit!26707)

(assert (=> b!1576050 (= lt!548635 Unit!26742)))

(assert (=> b!1576050 (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 tokens!457))))

(declare-fun lt!548640 () Unit!26707)

(declare-fun lt!548636 () Unit!26707)

(assert (=> b!1576050 (= lt!548640 lt!548636)))

(assert (=> b!1576050 (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 (t!143333 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!509 (LexerInterface!2668 List!17345 List!17346 Token!5644) Unit!26707)

(assert (=> b!1576050 (= lt!548636 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!509 thiss!17113 rules!1846 tokens!457 (h!22677 (t!143333 tokens!457))))))

(declare-fun lt!548634 () Unit!26707)

(declare-fun lt!548638 () Unit!26707)

(assert (=> b!1576050 (= lt!548634 lt!548638)))

(assert (=> b!1576050 (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 tokens!457))))

(assert (=> b!1576050 (= lt!548638 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!509 thiss!17113 rules!1846 tokens!457 (h!22677 tokens!457)))))

(declare-fun b!1576051 () Bool)

(assert (=> b!1576051 (= e!1012435 (tokensListTwoByTwoPredicateSeparableList!361 thiss!17113 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457))) rules!1846))))

(assert (= (and d!467944 (not res!702495)) b!1576050))

(assert (= (and b!1576050 res!702496) b!1576051))

(declare-fun m!1855693 () Bool)

(assert (=> b!1576050 m!1855693))

(assert (=> b!1576050 m!1855215))

(declare-fun m!1855695 () Bool)

(assert (=> b!1576050 m!1855695))

(declare-fun m!1855697 () Bool)

(assert (=> b!1576050 m!1855697))

(assert (=> b!1576050 m!1855219))

(declare-fun m!1855699 () Bool)

(assert (=> b!1576050 m!1855699))

(assert (=> b!1576050 m!1855219))

(assert (=> b!1576050 m!1855225))

(declare-fun m!1855701 () Bool)

(assert (=> b!1576051 m!1855701))

(assert (=> b!1575798 d!467944))

(declare-fun d!467952 () Bool)

(declare-fun res!702499 () Bool)

(declare-fun e!1012438 () Bool)

(assert (=> d!467952 (=> (not res!702499) (not e!1012438))))

(declare-fun rulesValid!1072 (LexerInterface!2668 List!17345) Bool)

(assert (=> d!467952 (= res!702499 (rulesValid!1072 thiss!17113 rules!1846))))

(assert (=> d!467952 (= (rulesInvariant!2337 thiss!17113 rules!1846) e!1012438)))

(declare-fun b!1576054 () Bool)

(declare-datatypes ((List!17348 0))(
  ( (Nil!17278) (Cons!17278 (h!22679 String!19977) (t!143373 List!17348)) )
))
(declare-fun noDuplicateTag!1072 (LexerInterface!2668 List!17345 List!17348) Bool)

(assert (=> b!1576054 (= e!1012438 (noDuplicateTag!1072 thiss!17113 rules!1846 Nil!17278))))

(assert (= (and d!467952 res!702499) b!1576054))

(declare-fun m!1855703 () Bool)

(assert (=> d!467952 m!1855703))

(declare-fun m!1855705 () Bool)

(assert (=> b!1576054 m!1855705))

(assert (=> b!1575787 d!467952))

(declare-fun d!467954 () Bool)

(declare-fun e!1012441 () Bool)

(assert (=> d!467954 e!1012441))

(declare-fun res!702502 () Bool)

(assert (=> d!467954 (=> (not res!702502) (not e!1012441))))

(declare-fun isBalanced!1682 (Conc!5727) Bool)

(declare-fun prepend!511 (Conc!5727 Token!5644) Conc!5727)

(assert (=> d!467954 (= res!702502 (isBalanced!1682 (prepend!511 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 tokens!457)))))))

(declare-fun lt!548643 () BalanceConc!11398)

(assert (=> d!467954 (= lt!548643 (BalanceConc!11399 (prepend!511 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 tokens!457)))))))

(assert (=> d!467954 (= (prepend!509 (seqFromList!1836 (t!143333 (t!143333 tokens!457))) (h!22677 (t!143333 tokens!457))) lt!548643)))

(declare-fun b!1576057 () Bool)

(assert (=> b!1576057 (= e!1012441 (= (list!6651 lt!548643) (Cons!17276 (h!22677 (t!143333 tokens!457)) (list!6651 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))))))))

(assert (= (and d!467954 res!702502) b!1576057))

(declare-fun m!1855707 () Bool)

(assert (=> d!467954 m!1855707))

(assert (=> d!467954 m!1855707))

(declare-fun m!1855709 () Bool)

(assert (=> d!467954 m!1855709))

(declare-fun m!1855711 () Bool)

(assert (=> b!1576057 m!1855711))

(assert (=> b!1576057 m!1855195))

(declare-fun m!1855713 () Bool)

(assert (=> b!1576057 m!1855713))

(assert (=> b!1575797 d!467954))

(declare-fun d!467956 () Bool)

(assert (=> d!467956 (= (list!6651 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 tokens!457))) (h!22677 (t!143333 tokens!457)))) (list!6656 (c!255393 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 tokens!457))) (h!22677 (t!143333 tokens!457))))))))

(declare-fun bs!390512 () Bool)

(assert (= bs!390512 d!467956))

(declare-fun m!1855715 () Bool)

(assert (=> bs!390512 m!1855715))

(assert (=> b!1575797 d!467956))

(declare-fun d!467958 () Bool)

(assert (=> d!467958 (= (list!6651 (_1!9771 lt!548363)) (list!6651 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 tokens!457))) (h!22677 (t!143333 tokens!457)))))))

(declare-fun lt!548646 () Unit!26707)

(declare-fun choose!9431 (Token!5644 List!17346 BalanceConc!11398) Unit!26707)

(assert (=> d!467958 (= lt!548646 (choose!9431 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457)) (_1!9771 lt!548363)))))

(declare-fun $colon$colon!263 (List!17346 Token!5644) List!17346)

(assert (=> d!467958 (= (list!6651 (_1!9771 lt!548363)) (list!6651 (seqFromList!1836 ($colon$colon!263 (t!143333 (t!143333 tokens!457)) (h!22677 (t!143333 tokens!457))))))))

(assert (=> d!467958 (= (seqFromListBHdTlConstructive!116 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457)) (_1!9771 lt!548363)) lt!548646)))

(declare-fun bs!390513 () Bool)

(assert (= bs!390513 d!467958))

(declare-fun m!1855717 () Bool)

(assert (=> bs!390513 m!1855717))

(assert (=> bs!390513 m!1855195))

(assert (=> bs!390513 m!1855197))

(assert (=> bs!390513 m!1855207))

(declare-fun m!1855719 () Bool)

(assert (=> bs!390513 m!1855719))

(declare-fun m!1855721 () Bool)

(assert (=> bs!390513 m!1855721))

(assert (=> bs!390513 m!1855719))

(assert (=> bs!390513 m!1855197))

(assert (=> bs!390513 m!1855199))

(assert (=> bs!390513 m!1855721))

(declare-fun m!1855723 () Bool)

(assert (=> bs!390513 m!1855723))

(assert (=> bs!390513 m!1855195))

(assert (=> b!1575797 d!467958))

(declare-fun d!467960 () Bool)

(assert (=> d!467960 (= (seqFromList!1836 (t!143333 (t!143333 tokens!457))) (fromListB!785 (t!143333 (t!143333 tokens!457))))))

(declare-fun bs!390514 () Bool)

(assert (= bs!390514 d!467960))

(declare-fun m!1855725 () Bool)

(assert (=> bs!390514 m!1855725))

(assert (=> b!1575797 d!467960))

(declare-fun d!467962 () Bool)

(assert (=> d!467962 (= (list!6651 lt!548370) (list!6656 (c!255393 lt!548370)))))

(declare-fun bs!390515 () Bool)

(assert (= bs!390515 d!467962))

(declare-fun m!1855727 () Bool)

(assert (=> bs!390515 m!1855727))

(assert (=> b!1575797 d!467962))

(declare-fun d!467964 () Bool)

(assert (=> d!467964 (= (isEmpty!10310 rules!1846) ((_ is Nil!17275) rules!1846))))

(assert (=> b!1575791 d!467964))

(declare-fun b!1576068 () Bool)

(declare-fun e!1012450 () Bool)

(declare-fun inv!15 (TokenValue!3129) Bool)

(assert (=> b!1576068 (= e!1012450 (inv!15 (value!96284 (h!22677 tokens!457))))))

(declare-fun b!1576069 () Bool)

(declare-fun e!1012448 () Bool)

(declare-fun e!1012449 () Bool)

(assert (=> b!1576069 (= e!1012448 e!1012449)))

(declare-fun c!255425 () Bool)

(assert (=> b!1576069 (= c!255425 ((_ is IntegerValue!9388) (value!96284 (h!22677 tokens!457))))))

(declare-fun d!467966 () Bool)

(declare-fun c!255424 () Bool)

(assert (=> d!467966 (= c!255424 ((_ is IntegerValue!9387) (value!96284 (h!22677 tokens!457))))))

(assert (=> d!467966 (= (inv!21 (value!96284 (h!22677 tokens!457))) e!1012448)))

(declare-fun b!1576070 () Bool)

(declare-fun inv!17 (TokenValue!3129) Bool)

(assert (=> b!1576070 (= e!1012449 (inv!17 (value!96284 (h!22677 tokens!457))))))

(declare-fun b!1576071 () Bool)

(declare-fun res!702505 () Bool)

(assert (=> b!1576071 (=> res!702505 e!1012450)))

(assert (=> b!1576071 (= res!702505 (not ((_ is IntegerValue!9389) (value!96284 (h!22677 tokens!457)))))))

(assert (=> b!1576071 (= e!1012449 e!1012450)))

(declare-fun b!1576072 () Bool)

(declare-fun inv!16 (TokenValue!3129) Bool)

(assert (=> b!1576072 (= e!1012448 (inv!16 (value!96284 (h!22677 tokens!457))))))

(assert (= (and d!467966 c!255424) b!1576072))

(assert (= (and d!467966 (not c!255424)) b!1576069))

(assert (= (and b!1576069 c!255425) b!1576070))

(assert (= (and b!1576069 (not c!255425)) b!1576071))

(assert (= (and b!1576071 (not res!702505)) b!1576068))

(declare-fun m!1855729 () Bool)

(assert (=> b!1576068 m!1855729))

(declare-fun m!1855731 () Bool)

(assert (=> b!1576070 m!1855731))

(declare-fun m!1855733 () Bool)

(assert (=> b!1576072 m!1855733))

(assert (=> b!1575790 d!467966))

(declare-fun d!467968 () Bool)

(declare-fun lt!548652 () Bool)

(declare-fun e!1012455 () Bool)

(assert (=> d!467968 (= lt!548652 e!1012455)))

(declare-fun res!702513 () Bool)

(assert (=> d!467968 (=> (not res!702513) (not e!1012455))))

(assert (=> d!467968 (= res!702513 (= (list!6651 (_1!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))))))) (list!6651 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))))))))

(declare-fun e!1012456 () Bool)

(assert (=> d!467968 (= lt!548652 e!1012456)))

(declare-fun res!702514 () Bool)

(assert (=> d!467968 (=> (not res!702514) (not e!1012456))))

(declare-fun lt!548651 () tuple2!16738)

(assert (=> d!467968 (= res!702514 (= (size!13922 (_1!9771 lt!548651)) 1))))

(assert (=> d!467968 (= lt!548651 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))))))))

(assert (=> d!467968 (not (isEmpty!10310 rules!1846))))

(assert (=> d!467968 (= (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 (t!143333 tokens!457))) lt!548652)))

(declare-fun b!1576079 () Bool)

(declare-fun res!702512 () Bool)

(assert (=> b!1576079 (=> (not res!702512) (not e!1012456))))

(declare-fun apply!4178 (BalanceConc!11398 Int) Token!5644)

(assert (=> b!1576079 (= res!702512 (= (apply!4178 (_1!9771 lt!548651) 0) (h!22677 (t!143333 tokens!457))))))

(declare-fun b!1576080 () Bool)

(assert (=> b!1576080 (= e!1012456 (isEmpty!10311 (_2!9771 lt!548651)))))

(declare-fun b!1576081 () Bool)

(assert (=> b!1576081 (= e!1012455 (isEmpty!10311 (_2!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))))))))))

(assert (= (and d!467968 res!702514) b!1576079))

(assert (= (and b!1576079 res!702512) b!1576080))

(assert (= (and d!467968 res!702513) b!1576081))

(assert (=> d!467968 m!1855545))

(assert (=> d!467968 m!1855217))

(declare-fun m!1855735 () Bool)

(assert (=> d!467968 m!1855735))

(declare-fun m!1855737 () Bool)

(assert (=> d!467968 m!1855737))

(assert (=> d!467968 m!1855555))

(declare-fun m!1855739 () Bool)

(assert (=> d!467968 m!1855739))

(assert (=> d!467968 m!1855545))

(declare-fun m!1855741 () Bool)

(assert (=> d!467968 m!1855741))

(assert (=> d!467968 m!1855545))

(assert (=> d!467968 m!1855555))

(declare-fun m!1855743 () Bool)

(assert (=> b!1576079 m!1855743))

(declare-fun m!1855745 () Bool)

(assert (=> b!1576080 m!1855745))

(assert (=> b!1576081 m!1855545))

(assert (=> b!1576081 m!1855545))

(assert (=> b!1576081 m!1855555))

(assert (=> b!1576081 m!1855555))

(assert (=> b!1576081 m!1855739))

(declare-fun m!1855747 () Bool)

(assert (=> b!1576081 m!1855747))

(assert (=> b!1575801 d!467968))

(declare-fun d!467970 () Bool)

(assert (=> d!467970 (= (inv!22680 (tag!3305 (h!22676 rules!1846))) (= (mod (str.len (value!96283 (tag!3305 (h!22676 rules!1846)))) 2) 0))))

(assert (=> b!1575800 d!467970))

(declare-fun d!467972 () Bool)

(declare-fun res!702517 () Bool)

(declare-fun e!1012459 () Bool)

(assert (=> d!467972 (=> (not res!702517) (not e!1012459))))

(declare-fun semiInverseModEq!1144 (Int Int) Bool)

(assert (=> d!467972 (= res!702517 (semiInverseModEq!1144 (toChars!4293 (transformation!3039 (h!22676 rules!1846))) (toValue!4434 (transformation!3039 (h!22676 rules!1846)))))))

(assert (=> d!467972 (= (inv!22684 (transformation!3039 (h!22676 rules!1846))) e!1012459)))

(declare-fun b!1576084 () Bool)

(declare-fun equivClasses!1085 (Int Int) Bool)

(assert (=> b!1576084 (= e!1012459 (equivClasses!1085 (toChars!4293 (transformation!3039 (h!22676 rules!1846))) (toValue!4434 (transformation!3039 (h!22676 rules!1846)))))))

(assert (= (and d!467972 res!702517) b!1576084))

(declare-fun m!1855749 () Bool)

(assert (=> d!467972 m!1855749))

(declare-fun m!1855751 () Bool)

(assert (=> b!1576084 m!1855751))

(assert (=> b!1575800 d!467972))

(declare-fun d!467974 () Bool)

(declare-fun res!702522 () Bool)

(declare-fun e!1012462 () Bool)

(assert (=> d!467974 (=> (not res!702522) (not e!1012462))))

(assert (=> d!467974 (= res!702522 (not (isEmpty!10315 (originalCharacters!3853 (h!22677 tokens!457)))))))

(assert (=> d!467974 (= (inv!22683 (h!22677 tokens!457)) e!1012462)))

(declare-fun b!1576089 () Bool)

(declare-fun res!702523 () Bool)

(assert (=> b!1576089 (=> (not res!702523) (not e!1012462))))

(assert (=> b!1576089 (= res!702523 (= (originalCharacters!3853 (h!22677 tokens!457)) (list!6652 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457))))))))

(declare-fun b!1576090 () Bool)

(assert (=> b!1576090 (= e!1012462 (= (size!13916 (h!22677 tokens!457)) (size!13920 (originalCharacters!3853 (h!22677 tokens!457)))))))

(assert (= (and d!467974 res!702522) b!1576089))

(assert (= (and b!1576089 res!702523) b!1576090))

(declare-fun b_lambda!49609 () Bool)

(assert (=> (not b_lambda!49609) (not b!1576089)))

(assert (=> b!1576089 t!143343))

(declare-fun b_and!110345 () Bool)

(assert (= b_and!110325 (and (=> t!143343 result!107294) b_and!110345)))

(assert (=> b!1576089 t!143345))

(declare-fun b_and!110347 () Bool)

(assert (= b_and!110327 (and (=> t!143345 result!107296) b_and!110347)))

(declare-fun m!1855753 () Bool)

(assert (=> d!467974 m!1855753))

(assert (=> b!1576089 m!1855355))

(assert (=> b!1576089 m!1855355))

(declare-fun m!1855755 () Bool)

(assert (=> b!1576089 m!1855755))

(declare-fun m!1855757 () Bool)

(assert (=> b!1576090 m!1855757))

(assert (=> b!1575789 d!467974))

(declare-fun d!467976 () Bool)

(declare-fun lt!548654 () Bool)

(declare-fun e!1012463 () Bool)

(assert (=> d!467976 (= lt!548654 e!1012463)))

(declare-fun res!702525 () Bool)

(assert (=> d!467976 (=> (not res!702525) (not e!1012463))))

(assert (=> d!467976 (= res!702525 (= (list!6651 (_1!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457)))))) (list!6651 (singletonSeq!1376 (h!22677 tokens!457)))))))

(declare-fun e!1012464 () Bool)

(assert (=> d!467976 (= lt!548654 e!1012464)))

(declare-fun res!702526 () Bool)

(assert (=> d!467976 (=> (not res!702526) (not e!1012464))))

(declare-fun lt!548653 () tuple2!16738)

(assert (=> d!467976 (= res!702526 (= (size!13922 (_1!9771 lt!548653)) 1))))

(assert (=> d!467976 (= lt!548653 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457)))))))

(assert (=> d!467976 (not (isEmpty!10310 rules!1846))))

(assert (=> d!467976 (= (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 tokens!457)) lt!548654)))

(declare-fun b!1576091 () Bool)

(declare-fun res!702524 () Bool)

(assert (=> b!1576091 (=> (not res!702524) (not e!1012464))))

(assert (=> b!1576091 (= res!702524 (= (apply!4178 (_1!9771 lt!548653) 0) (h!22677 tokens!457)))))

(declare-fun b!1576092 () Bool)

(assert (=> b!1576092 (= e!1012464 (isEmpty!10311 (_2!9771 lt!548653)))))

(declare-fun b!1576093 () Bool)

(assert (=> b!1576093 (= e!1012463 (isEmpty!10311 (_2!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457)))))))))

(assert (= (and d!467976 res!702526) b!1576091))

(assert (= (and b!1576091 res!702524) b!1576092))

(assert (= (and d!467976 res!702525) b!1576093))

(declare-fun m!1855759 () Bool)

(assert (=> d!467976 m!1855759))

(assert (=> d!467976 m!1855217))

(declare-fun m!1855761 () Bool)

(assert (=> d!467976 m!1855761))

(declare-fun m!1855763 () Bool)

(assert (=> d!467976 m!1855763))

(declare-fun m!1855765 () Bool)

(assert (=> d!467976 m!1855765))

(declare-fun m!1855767 () Bool)

(assert (=> d!467976 m!1855767))

(assert (=> d!467976 m!1855759))

(declare-fun m!1855769 () Bool)

(assert (=> d!467976 m!1855769))

(assert (=> d!467976 m!1855759))

(assert (=> d!467976 m!1855765))

(declare-fun m!1855771 () Bool)

(assert (=> b!1576091 m!1855771))

(declare-fun m!1855773 () Bool)

(assert (=> b!1576092 m!1855773))

(assert (=> b!1576093 m!1855759))

(assert (=> b!1576093 m!1855759))

(assert (=> b!1576093 m!1855765))

(assert (=> b!1576093 m!1855765))

(assert (=> b!1576093 m!1855767))

(declare-fun m!1855775 () Bool)

(assert (=> b!1576093 m!1855775))

(assert (=> b!1575793 d!467976))

(declare-fun d!467978 () Bool)

(assert (=> d!467978 (= (inv!22680 (tag!3305 (rule!4831 (h!22677 tokens!457)))) (= (mod (str.len (value!96283 (tag!3305 (rule!4831 (h!22677 tokens!457))))) 2) 0))))

(assert (=> b!1575792 d!467978))

(declare-fun d!467980 () Bool)

(declare-fun res!702527 () Bool)

(declare-fun e!1012465 () Bool)

(assert (=> d!467980 (=> (not res!702527) (not e!1012465))))

(assert (=> d!467980 (= res!702527 (semiInverseModEq!1144 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (toValue!4434 (transformation!3039 (rule!4831 (h!22677 tokens!457))))))))

(assert (=> d!467980 (= (inv!22684 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) e!1012465)))

(declare-fun b!1576094 () Bool)

(assert (=> b!1576094 (= e!1012465 (equivClasses!1085 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (toValue!4434 (transformation!3039 (rule!4831 (h!22677 tokens!457))))))))

(assert (= (and d!467980 res!702527) b!1576094))

(declare-fun m!1855777 () Bool)

(assert (=> d!467980 m!1855777))

(declare-fun m!1855779 () Bool)

(assert (=> b!1576094 m!1855779))

(assert (=> b!1575792 d!467980))

(declare-fun b!1576099 () Bool)

(declare-fun e!1012468 () Bool)

(declare-fun tp_is_empty!7169 () Bool)

(declare-fun tp!464049 () Bool)

(assert (=> b!1576099 (= e!1012468 (and tp_is_empty!7169 tp!464049))))

(assert (=> b!1575790 (= tp!463980 e!1012468)))

(assert (= (and b!1575790 ((_ is Cons!17274) (originalCharacters!3853 (h!22677 tokens!457)))) b!1576099))

(declare-fun b!1576111 () Bool)

(declare-fun e!1012471 () Bool)

(declare-fun tp!464060 () Bool)

(declare-fun tp!464061 () Bool)

(assert (=> b!1576111 (= e!1012471 (and tp!464060 tp!464061))))

(declare-fun b!1576112 () Bool)

(declare-fun tp!464063 () Bool)

(assert (=> b!1576112 (= e!1012471 tp!464063)))

(assert (=> b!1575800 (= tp!463985 e!1012471)))

(declare-fun b!1576113 () Bool)

(declare-fun tp!464064 () Bool)

(declare-fun tp!464062 () Bool)

(assert (=> b!1576113 (= e!1012471 (and tp!464064 tp!464062))))

(declare-fun b!1576110 () Bool)

(assert (=> b!1576110 (= e!1012471 tp_is_empty!7169)))

(assert (= (and b!1575800 ((_ is ElementMatch!4367) (regex!3039 (h!22676 rules!1846)))) b!1576110))

(assert (= (and b!1575800 ((_ is Concat!7497) (regex!3039 (h!22676 rules!1846)))) b!1576111))

(assert (= (and b!1575800 ((_ is Star!4367) (regex!3039 (h!22676 rules!1846)))) b!1576112))

(assert (= (and b!1575800 ((_ is Union!4367) (regex!3039 (h!22676 rules!1846)))) b!1576113))

(declare-fun b!1576127 () Bool)

(declare-fun b_free!42455 () Bool)

(declare-fun b_next!43159 () Bool)

(assert (=> b!1576127 (= b_free!42455 (not b_next!43159))))

(declare-fun tp!464078 () Bool)

(declare-fun b_and!110349 () Bool)

(assert (=> b!1576127 (= tp!464078 b_and!110349)))

(declare-fun b_free!42457 () Bool)

(declare-fun b_next!43161 () Bool)

(assert (=> b!1576127 (= b_free!42457 (not b_next!43161))))

(declare-fun t!143366 () Bool)

(declare-fun tb!88703 () Bool)

(assert (=> (and b!1576127 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))))) t!143366) tb!88703))

(declare-fun result!107324 () Bool)

(assert (= result!107324 result!107288))

(assert (=> d!467884 t!143366))

(declare-fun t!143368 () Bool)

(declare-fun tb!88705 () Bool)

(assert (=> (and b!1576127 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457))))) t!143368) tb!88705))

(declare-fun result!107326 () Bool)

(assert (= result!107326 result!107294))

(assert (=> d!467892 t!143368))

(assert (=> b!1576089 t!143368))

(declare-fun tp!464075 () Bool)

(declare-fun b_and!110351 () Bool)

(assert (=> b!1576127 (= tp!464075 (and (=> t!143366 result!107324) (=> t!143368 result!107326) b_and!110351))))

(declare-fun e!1012489 () Bool)

(declare-fun e!1012487 () Bool)

(declare-fun tp!464079 () Bool)

(declare-fun b!1576125 () Bool)

(assert (=> b!1576125 (= e!1012487 (and (inv!21 (value!96284 (h!22677 (t!143333 tokens!457)))) e!1012489 tp!464079))))

(declare-fun e!1012484 () Bool)

(assert (=> b!1575789 (= tp!463982 e!1012484)))

(declare-fun e!1012486 () Bool)

(assert (=> b!1576127 (= e!1012486 (and tp!464078 tp!464075))))

(declare-fun tp!464077 () Bool)

(declare-fun b!1576124 () Bool)

(assert (=> b!1576124 (= e!1012484 (and (inv!22683 (h!22677 (t!143333 tokens!457))) e!1012487 tp!464077))))

(declare-fun b!1576126 () Bool)

(declare-fun tp!464076 () Bool)

(assert (=> b!1576126 (= e!1012489 (and tp!464076 (inv!22680 (tag!3305 (rule!4831 (h!22677 (t!143333 tokens!457))))) (inv!22684 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) e!1012486))))

(assert (= b!1576126 b!1576127))

(assert (= b!1576125 b!1576126))

(assert (= b!1576124 b!1576125))

(assert (= (and b!1575789 ((_ is Cons!17276) (t!143333 tokens!457))) b!1576124))

(declare-fun m!1855781 () Bool)

(assert (=> b!1576125 m!1855781))

(declare-fun m!1855783 () Bool)

(assert (=> b!1576124 m!1855783))

(declare-fun m!1855785 () Bool)

(assert (=> b!1576126 m!1855785))

(declare-fun m!1855787 () Bool)

(assert (=> b!1576126 m!1855787))

(declare-fun b!1576138 () Bool)

(declare-fun b_free!42459 () Bool)

(declare-fun b_next!43163 () Bool)

(assert (=> b!1576138 (= b_free!42459 (not b_next!43163))))

(declare-fun tp!464089 () Bool)

(declare-fun b_and!110353 () Bool)

(assert (=> b!1576138 (= tp!464089 b_and!110353)))

(declare-fun b_free!42461 () Bool)

(declare-fun b_next!43165 () Bool)

(assert (=> b!1576138 (= b_free!42461 (not b_next!43165))))

(declare-fun t!143370 () Bool)

(declare-fun tb!88707 () Bool)

(assert (=> (and b!1576138 (= (toChars!4293 (transformation!3039 (h!22676 (t!143332 rules!1846)))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))))) t!143370) tb!88707))

(declare-fun result!107330 () Bool)

(assert (= result!107330 result!107288))

(assert (=> d!467884 t!143370))

(declare-fun t!143372 () Bool)

(declare-fun tb!88709 () Bool)

(assert (=> (and b!1576138 (= (toChars!4293 (transformation!3039 (h!22676 (t!143332 rules!1846)))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457))))) t!143372) tb!88709))

(declare-fun result!107332 () Bool)

(assert (= result!107332 result!107294))

(assert (=> d!467892 t!143372))

(assert (=> b!1576089 t!143372))

(declare-fun tp!464088 () Bool)

(declare-fun b_and!110355 () Bool)

(assert (=> b!1576138 (= tp!464088 (and (=> t!143370 result!107330) (=> t!143372 result!107332) b_and!110355))))

(declare-fun e!1012499 () Bool)

(assert (=> b!1576138 (= e!1012499 (and tp!464089 tp!464088))))

(declare-fun e!1012500 () Bool)

(declare-fun tp!464091 () Bool)

(declare-fun b!1576137 () Bool)

(assert (=> b!1576137 (= e!1012500 (and tp!464091 (inv!22680 (tag!3305 (h!22676 (t!143332 rules!1846)))) (inv!22684 (transformation!3039 (h!22676 (t!143332 rules!1846)))) e!1012499))))

(declare-fun b!1576136 () Bool)

(declare-fun e!1012501 () Bool)

(declare-fun tp!464090 () Bool)

(assert (=> b!1576136 (= e!1012501 (and e!1012500 tp!464090))))

(assert (=> b!1575788 (= tp!463987 e!1012501)))

(assert (= b!1576137 b!1576138))

(assert (= b!1576136 b!1576137))

(assert (= (and b!1575788 ((_ is Cons!17275) (t!143332 rules!1846))) b!1576136))

(declare-fun m!1855789 () Bool)

(assert (=> b!1576137 m!1855789))

(declare-fun m!1855791 () Bool)

(assert (=> b!1576137 m!1855791))

(declare-fun b!1576140 () Bool)

(declare-fun e!1012502 () Bool)

(declare-fun tp!464092 () Bool)

(declare-fun tp!464093 () Bool)

(assert (=> b!1576140 (= e!1012502 (and tp!464092 tp!464093))))

(declare-fun b!1576141 () Bool)

(declare-fun tp!464095 () Bool)

(assert (=> b!1576141 (= e!1012502 tp!464095)))

(assert (=> b!1575792 (= tp!463984 e!1012502)))

(declare-fun b!1576142 () Bool)

(declare-fun tp!464096 () Bool)

(declare-fun tp!464094 () Bool)

(assert (=> b!1576142 (= e!1012502 (and tp!464096 tp!464094))))

(declare-fun b!1576139 () Bool)

(assert (=> b!1576139 (= e!1012502 tp_is_empty!7169)))

(assert (= (and b!1575792 ((_ is ElementMatch!4367) (regex!3039 (rule!4831 (h!22677 tokens!457))))) b!1576139))

(assert (= (and b!1575792 ((_ is Concat!7497) (regex!3039 (rule!4831 (h!22677 tokens!457))))) b!1576140))

(assert (= (and b!1575792 ((_ is Star!4367) (regex!3039 (rule!4831 (h!22677 tokens!457))))) b!1576141))

(assert (= (and b!1575792 ((_ is Union!4367) (regex!3039 (rule!4831 (h!22677 tokens!457))))) b!1576142))

(declare-fun b_lambda!49611 () Bool)

(assert (= b_lambda!49609 (or (and b!1575785 b_free!42441) (and b!1575786 b_free!42445 (= (toChars!4293 (transformation!3039 (h!22676 rules!1846))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))))) (and b!1576127 b_free!42457 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))))) (and b!1576138 b_free!42461 (= (toChars!4293 (transformation!3039 (h!22676 (t!143332 rules!1846)))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))))) b_lambda!49611)))

(declare-fun b_lambda!49613 () Bool)

(assert (= b_lambda!49595 (or (and b!1575785 b_free!42441 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))))) (and b!1575786 b_free!42445 (= (toChars!4293 (transformation!3039 (h!22676 rules!1846))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))))) (and b!1576127 b_free!42457) (and b!1576138 b_free!42461 (= (toChars!4293 (transformation!3039 (h!22676 (t!143332 rules!1846)))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))))) b_lambda!49613)))

(declare-fun b_lambda!49615 () Bool)

(assert (= b_lambda!49597 (or (and b!1575785 b_free!42441) (and b!1575786 b_free!42445 (= (toChars!4293 (transformation!3039 (h!22676 rules!1846))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))))) (and b!1576127 b_free!42457 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))))) (and b!1576138 b_free!42461 (= (toChars!4293 (transformation!3039 (h!22676 (t!143332 rules!1846)))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))))) b_lambda!49615)))

(check-sat (not d!467890) (not d!467972) (not d!467912) (not b!1576094) (not b!1576136) b_and!110349 (not d!467896) (not b!1576070) (not d!467928) (not b_next!43165) (not d!467906) (not b!1575911) (not d!467908) tp_is_empty!7169 (not b_lambda!49615) (not b!1576126) (not d!467960) (not d!467956) (not b_next!43161) (not d!467888) (not b!1576081) (not b!1575923) (not b!1576092) (not b!1575869) b_and!110355 (not d!467968) (not b!1576111) (not b!1575961) (not b_next!43159) (not b!1576089) (not b!1575866) b_and!110353 b_and!110313 (not d!467926) (not d!467884) (not b!1576079) (not b!1576112) (not b!1576050) (not d!467910) (not b_next!43149) (not b!1576125) (not b!1575870) (not b!1575971) (not d!467894) (not d!467962) (not d!467904) b_and!110345 (not b_next!43147) (not b!1576113) (not d!467898) (not b!1576137) (not b!1576054) (not b!1576057) (not d!467958) (not b!1576084) (not b!1576068) (not b!1576141) (not b!1576124) (not d!467892) (not d!467886) (not d!467980) (not b_lambda!49611) (not b!1576080) (not b!1575837) (not b!1575827) (not b_lambda!49613) (not b!1576140) (not b!1576142) (not b!1575840) (not b!1575962) (not b!1576091) (not d!467882) (not d!467952) (not b!1576099) (not b!1575924) (not d!467974) (not d!467976) b_and!110309 b_and!110351 (not tb!88683) (not d!467954) (not b!1575838) (not b!1575868) (not b!1576090) (not b!1576072) (not b_next!43145) (not b!1575912) (not b!1576093) (not tb!88687) b_and!110347 (not b!1576051) (not b!1575922) (not b_next!43143) (not b_next!43163))
(check-sat b_and!110349 (not b_next!43165) (not b_next!43161) b_and!110355 (not b_next!43159) (not b_next!43149) b_and!110345 (not b_next!43147) (not b_next!43145) b_and!110347 b_and!110353 b_and!110313 b_and!110309 b_and!110351 (not b_next!43143) (not b_next!43163))
(get-model)

(declare-fun b!1576255 () Bool)

(declare-fun e!1012571 () List!17346)

(declare-fun e!1012572 () List!17346)

(assert (=> b!1576255 (= e!1012571 e!1012572)))

(declare-fun c!255460 () Bool)

(assert (=> b!1576255 (= c!255460 ((_ is Leaf!8467) (c!255393 (_1!9771 lt!548363))))))

(declare-fun b!1576256 () Bool)

(declare-fun list!6658 (IArray!11459) List!17346)

(assert (=> b!1576256 (= e!1012572 (list!6658 (xs!8531 (c!255393 (_1!9771 lt!548363)))))))

(declare-fun d!468080 () Bool)

(declare-fun c!255459 () Bool)

(assert (=> d!468080 (= c!255459 ((_ is Empty!5727) (c!255393 (_1!9771 lt!548363))))))

(assert (=> d!468080 (= (list!6656 (c!255393 (_1!9771 lt!548363))) e!1012571)))

(declare-fun b!1576257 () Bool)

(declare-fun ++!4478 (List!17346 List!17346) List!17346)

(assert (=> b!1576257 (= e!1012572 (++!4478 (list!6656 (left!13968 (c!255393 (_1!9771 lt!548363)))) (list!6656 (right!14298 (c!255393 (_1!9771 lt!548363))))))))

(declare-fun b!1576254 () Bool)

(assert (=> b!1576254 (= e!1012571 Nil!17276)))

(assert (= (and d!468080 c!255459) b!1576254))

(assert (= (and d!468080 (not c!255459)) b!1576255))

(assert (= (and b!1576255 c!255460) b!1576256))

(assert (= (and b!1576255 (not c!255460)) b!1576257))

(declare-fun m!1856075 () Bool)

(assert (=> b!1576256 m!1856075))

(declare-fun m!1856077 () Bool)

(assert (=> b!1576257 m!1856077))

(declare-fun m!1856079 () Bool)

(assert (=> b!1576257 m!1856079))

(assert (=> b!1576257 m!1856077))

(assert (=> b!1576257 m!1856079))

(declare-fun m!1856081 () Bool)

(assert (=> b!1576257 m!1856081))

(assert (=> d!467910 d!468080))

(declare-fun b!1576259 () Bool)

(declare-fun e!1012573 () List!17346)

(declare-fun e!1012574 () List!17346)

(assert (=> b!1576259 (= e!1012573 e!1012574)))

(declare-fun c!255462 () Bool)

(assert (=> b!1576259 (= c!255462 ((_ is Leaf!8467) (c!255393 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 tokens!457))) (h!22677 (t!143333 tokens!457))))))))

(declare-fun b!1576260 () Bool)

(assert (=> b!1576260 (= e!1012574 (list!6658 (xs!8531 (c!255393 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 tokens!457))) (h!22677 (t!143333 tokens!457)))))))))

(declare-fun d!468082 () Bool)

(declare-fun c!255461 () Bool)

(assert (=> d!468082 (= c!255461 ((_ is Empty!5727) (c!255393 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 tokens!457))) (h!22677 (t!143333 tokens!457))))))))

(assert (=> d!468082 (= (list!6656 (c!255393 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 tokens!457))) (h!22677 (t!143333 tokens!457))))) e!1012573)))

(declare-fun b!1576261 () Bool)

(assert (=> b!1576261 (= e!1012574 (++!4478 (list!6656 (left!13968 (c!255393 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 tokens!457))) (h!22677 (t!143333 tokens!457)))))) (list!6656 (right!14298 (c!255393 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 tokens!457))) (h!22677 (t!143333 tokens!457))))))))))

(declare-fun b!1576258 () Bool)

(assert (=> b!1576258 (= e!1012573 Nil!17276)))

(assert (= (and d!468082 c!255461) b!1576258))

(assert (= (and d!468082 (not c!255461)) b!1576259))

(assert (= (and b!1576259 c!255462) b!1576260))

(assert (= (and b!1576259 (not c!255462)) b!1576261))

(declare-fun m!1856083 () Bool)

(assert (=> b!1576260 m!1856083))

(declare-fun m!1856085 () Bool)

(assert (=> b!1576261 m!1856085))

(declare-fun m!1856087 () Bool)

(assert (=> b!1576261 m!1856087))

(assert (=> b!1576261 m!1856085))

(assert (=> b!1576261 m!1856087))

(declare-fun m!1856089 () Bool)

(assert (=> b!1576261 m!1856089))

(assert (=> d!467956 d!468082))

(declare-fun b!1576262 () Bool)

(declare-fun e!1012577 () Bool)

(assert (=> b!1576262 (= e!1012577 (inv!15 (value!96284 (h!22677 (t!143333 tokens!457)))))))

(declare-fun b!1576263 () Bool)

(declare-fun e!1012575 () Bool)

(declare-fun e!1012576 () Bool)

(assert (=> b!1576263 (= e!1012575 e!1012576)))

(declare-fun c!255464 () Bool)

(assert (=> b!1576263 (= c!255464 ((_ is IntegerValue!9388) (value!96284 (h!22677 (t!143333 tokens!457)))))))

(declare-fun d!468084 () Bool)

(declare-fun c!255463 () Bool)

(assert (=> d!468084 (= c!255463 ((_ is IntegerValue!9387) (value!96284 (h!22677 (t!143333 tokens!457)))))))

(assert (=> d!468084 (= (inv!21 (value!96284 (h!22677 (t!143333 tokens!457)))) e!1012575)))

(declare-fun b!1576264 () Bool)

(assert (=> b!1576264 (= e!1012576 (inv!17 (value!96284 (h!22677 (t!143333 tokens!457)))))))

(declare-fun b!1576265 () Bool)

(declare-fun res!702575 () Bool)

(assert (=> b!1576265 (=> res!702575 e!1012577)))

(assert (=> b!1576265 (= res!702575 (not ((_ is IntegerValue!9389) (value!96284 (h!22677 (t!143333 tokens!457))))))))

(assert (=> b!1576265 (= e!1012576 e!1012577)))

(declare-fun b!1576266 () Bool)

(assert (=> b!1576266 (= e!1012575 (inv!16 (value!96284 (h!22677 (t!143333 tokens!457)))))))

(assert (= (and d!468084 c!255463) b!1576266))

(assert (= (and d!468084 (not c!255463)) b!1576263))

(assert (= (and b!1576263 c!255464) b!1576264))

(assert (= (and b!1576263 (not c!255464)) b!1576265))

(assert (= (and b!1576265 (not res!702575)) b!1576262))

(declare-fun m!1856091 () Bool)

(assert (=> b!1576262 m!1856091))

(declare-fun m!1856093 () Bool)

(assert (=> b!1576264 m!1856093))

(declare-fun m!1856095 () Bool)

(assert (=> b!1576266 m!1856095))

(assert (=> b!1576125 d!468084))

(declare-fun d!468086 () Bool)

(declare-fun c!255467 () Bool)

(assert (=> d!468086 (= c!255467 ((_ is Node!5726) (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457)))))))))

(declare-fun e!1012582 () Bool)

(assert (=> d!468086 (= (inv!22687 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457)))))) e!1012582)))

(declare-fun b!1576273 () Bool)

(declare-fun inv!22691 (Conc!5726) Bool)

(assert (=> b!1576273 (= e!1012582 (inv!22691 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457)))))))))

(declare-fun b!1576274 () Bool)

(declare-fun e!1012583 () Bool)

(assert (=> b!1576274 (= e!1012582 e!1012583)))

(declare-fun res!702578 () Bool)

(assert (=> b!1576274 (= res!702578 (not ((_ is Leaf!8466) (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457))))))))))

(assert (=> b!1576274 (=> res!702578 e!1012583)))

(declare-fun b!1576275 () Bool)

(declare-fun inv!22692 (Conc!5726) Bool)

(assert (=> b!1576275 (= e!1012583 (inv!22692 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457)))))))))

(assert (= (and d!468086 c!255467) b!1576273))

(assert (= (and d!468086 (not c!255467)) b!1576274))

(assert (= (and b!1576274 (not res!702578)) b!1576275))

(declare-fun m!1856107 () Bool)

(assert (=> b!1576273 m!1856107))

(declare-fun m!1856109 () Bool)

(assert (=> b!1576275 m!1856109))

(assert (=> b!1575827 d!468086))

(declare-fun d!468090 () Bool)

(declare-fun lt!548722 () Int)

(declare-fun size!13925 (List!17346) Int)

(assert (=> d!468090 (= lt!548722 (size!13925 (list!6651 (_1!9771 lt!548408))))))

(declare-fun size!13926 (Conc!5727) Int)

(assert (=> d!468090 (= lt!548722 (size!13926 (c!255393 (_1!9771 lt!548408))))))

(assert (=> d!468090 (= (size!13922 (_1!9771 lt!548408)) lt!548722)))

(declare-fun bs!390542 () Bool)

(assert (= bs!390542 d!468090))

(assert (=> bs!390542 m!1855389))

(assert (=> bs!390542 m!1855389))

(declare-fun m!1856113 () Bool)

(assert (=> bs!390542 m!1856113))

(declare-fun m!1856115 () Bool)

(assert (=> bs!390542 m!1856115))

(assert (=> d!467898 d!468090))

(declare-fun lt!548840 () tuple2!16738)

(declare-fun b!1576373 () Bool)

(declare-datatypes ((tuple2!16748 0))(
  ( (tuple2!16749 (_1!9776 Token!5644) (_2!9776 BalanceConc!11396)) )
))
(declare-datatypes ((Option!3087 0))(
  ( (None!3086) (Some!3086 (v!23909 tuple2!16748)) )
))
(declare-fun lt!548844 () Option!3087)

(declare-fun lexRec!348 (LexerInterface!2668 List!17345 BalanceConc!11396) tuple2!16738)

(assert (=> b!1576373 (= lt!548840 (lexRec!348 thiss!17113 rules!1846 (_2!9776 (v!23909 lt!548844))))))

(declare-fun e!1012628 () tuple2!16738)

(assert (=> b!1576373 (= e!1012628 (tuple2!16739 (prepend!509 (_1!9771 lt!548840) (_1!9776 (v!23909 lt!548844))) (_2!9771 lt!548840)))))

(declare-fun b!1576374 () Bool)

(declare-fun e!1012631 () tuple2!16738)

(assert (=> b!1576374 (= e!1012631 (tuple2!16739 (BalanceConc!11399 Empty!5727) lt!548364))))

(declare-fun b!1576375 () Bool)

(declare-fun lt!548832 () BalanceConc!11396)

(assert (=> b!1576375 (= e!1012628 (tuple2!16739 (BalanceConc!11399 Empty!5727) lt!548832))))

(declare-fun b!1576376 () Bool)

(declare-fun e!1012629 () tuple2!16738)

(assert (=> b!1576376 (= e!1012629 (tuple2!16739 (BalanceConc!11399 Empty!5727) lt!548364))))

(declare-fun lt!548831 () tuple2!16738)

(declare-fun b!1576377 () Bool)

(declare-fun e!1012630 () Bool)

(assert (=> b!1576377 (= e!1012630 (= (list!6652 (_2!9771 lt!548831)) (list!6652 (_2!9771 (lexRec!348 thiss!17113 rules!1846 lt!548364)))))))

(declare-fun d!468094 () Bool)

(assert (=> d!468094 e!1012630))

(declare-fun res!702636 () Bool)

(assert (=> d!468094 (=> (not res!702636) (not e!1012630))))

(assert (=> d!468094 (= res!702636 (= (list!6651 (_1!9771 lt!548831)) (list!6651 (_1!9771 (lexRec!348 thiss!17113 rules!1846 lt!548364)))))))

(assert (=> d!468094 (= lt!548831 e!1012629)))

(declare-fun c!255488 () Bool)

(declare-fun lt!548853 () Option!3087)

(assert (=> d!468094 (= c!255488 ((_ is Some!3086) lt!548853))))

(declare-fun maxPrefixZipperSequenceV2!243 (LexerInterface!2668 List!17345 BalanceConc!11396 BalanceConc!11396) Option!3087)

(assert (=> d!468094 (= lt!548853 (maxPrefixZipperSequenceV2!243 thiss!17113 rules!1846 lt!548364 lt!548364))))

(declare-fun lt!548837 () Unit!26707)

(declare-fun lt!548842 () Unit!26707)

(assert (=> d!468094 (= lt!548837 lt!548842)))

(declare-fun lt!548845 () List!17344)

(declare-fun lt!548824 () List!17344)

(declare-fun isSuffix!394 (List!17344 List!17344) Bool)

(assert (=> d!468094 (isSuffix!394 lt!548845 (++!4475 lt!548824 lt!548845))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!295 (List!17344 List!17344) Unit!26707)

(assert (=> d!468094 (= lt!548842 (lemmaConcatTwoListThenFSndIsSuffix!295 lt!548824 lt!548845))))

(assert (=> d!468094 (= lt!548845 (list!6652 lt!548364))))

(assert (=> d!468094 (= lt!548824 (list!6652 (BalanceConc!11397 Empty!5726)))))

(assert (=> d!468094 (= (lexTailRecV2!496 thiss!17113 rules!1846 lt!548364 (BalanceConc!11397 Empty!5726) lt!548364 (BalanceConc!11399 Empty!5727)) lt!548831)))

(declare-fun lt!548820 () BalanceConc!11396)

(declare-fun b!1576378 () Bool)

(declare-fun append!527 (BalanceConc!11398 Token!5644) BalanceConc!11398)

(assert (=> b!1576378 (= e!1012629 (lexTailRecV2!496 thiss!17113 rules!1846 lt!548364 lt!548820 (_2!9776 (v!23909 lt!548853)) (append!527 (BalanceConc!11399 Empty!5727) (_1!9776 (v!23909 lt!548853)))))))

(declare-fun lt!548838 () tuple2!16738)

(assert (=> b!1576378 (= lt!548838 (lexRec!348 thiss!17113 rules!1846 (_2!9776 (v!23909 lt!548853))))))

(declare-fun lt!548836 () List!17344)

(assert (=> b!1576378 (= lt!548836 (list!6652 (BalanceConc!11397 Empty!5726)))))

(declare-fun lt!548848 () List!17344)

(assert (=> b!1576378 (= lt!548848 (list!6652 (charsOf!1688 (_1!9776 (v!23909 lt!548853)))))))

(declare-fun lt!548835 () List!17344)

(assert (=> b!1576378 (= lt!548835 (list!6652 (_2!9776 (v!23909 lt!548853))))))

(declare-fun lt!548821 () Unit!26707)

(declare-fun lemmaConcatAssociativity!972 (List!17344 List!17344 List!17344) Unit!26707)

(assert (=> b!1576378 (= lt!548821 (lemmaConcatAssociativity!972 lt!548836 lt!548848 lt!548835))))

(assert (=> b!1576378 (= (++!4475 (++!4475 lt!548836 lt!548848) lt!548835) (++!4475 lt!548836 (++!4475 lt!548848 lt!548835)))))

(declare-fun lt!548851 () Unit!26707)

(assert (=> b!1576378 (= lt!548851 lt!548821)))

(declare-fun lt!548849 () Option!3087)

(declare-fun maxPrefixZipperSequence!604 (LexerInterface!2668 List!17345 BalanceConc!11396) Option!3087)

(assert (=> b!1576378 (= lt!548849 (maxPrefixZipperSequence!604 thiss!17113 rules!1846 lt!548364))))

(declare-fun c!255490 () Bool)

(assert (=> b!1576378 (= c!255490 ((_ is Some!3086) lt!548849))))

(assert (=> b!1576378 (= (lexRec!348 thiss!17113 rules!1846 lt!548364) e!1012631)))

(declare-fun lt!548846 () Unit!26707)

(declare-fun Unit!26743 () Unit!26707)

(assert (=> b!1576378 (= lt!548846 Unit!26743)))

(declare-fun lt!548850 () List!17346)

(assert (=> b!1576378 (= lt!548850 (list!6651 (BalanceConc!11399 Empty!5727)))))

(declare-fun lt!548841 () List!17346)

(assert (=> b!1576378 (= lt!548841 (Cons!17276 (_1!9776 (v!23909 lt!548853)) Nil!17276))))

(declare-fun lt!548823 () List!17346)

(assert (=> b!1576378 (= lt!548823 (list!6651 (_1!9771 lt!548838)))))

(declare-fun lt!548828 () Unit!26707)

(declare-fun lemmaConcatAssociativity!973 (List!17346 List!17346 List!17346) Unit!26707)

(assert (=> b!1576378 (= lt!548828 (lemmaConcatAssociativity!973 lt!548850 lt!548841 lt!548823))))

(assert (=> b!1576378 (= (++!4478 (++!4478 lt!548850 lt!548841) lt!548823) (++!4478 lt!548850 (++!4478 lt!548841 lt!548823)))))

(declare-fun lt!548839 () Unit!26707)

(assert (=> b!1576378 (= lt!548839 lt!548828)))

(declare-fun lt!548833 () List!17344)

(assert (=> b!1576378 (= lt!548833 (++!4475 (list!6652 (BalanceConc!11397 Empty!5726)) (list!6652 (charsOf!1688 (_1!9776 (v!23909 lt!548853))))))))

(declare-fun lt!548843 () List!17344)

(assert (=> b!1576378 (= lt!548843 (list!6652 (_2!9776 (v!23909 lt!548853))))))

(declare-fun lt!548829 () List!17346)

(assert (=> b!1576378 (= lt!548829 (list!6651 (append!527 (BalanceConc!11399 Empty!5727) (_1!9776 (v!23909 lt!548853)))))))

(declare-fun lt!548830 () Unit!26707)

(declare-fun lemmaLexThenLexPrefix!236 (LexerInterface!2668 List!17345 List!17344 List!17344 List!17346 List!17346 List!17344) Unit!26707)

(assert (=> b!1576378 (= lt!548830 (lemmaLexThenLexPrefix!236 thiss!17113 rules!1846 lt!548833 lt!548843 lt!548829 (list!6651 (_1!9771 lt!548838)) (list!6652 (_2!9771 lt!548838))))))

(assert (=> b!1576378 (= (lexList!773 thiss!17113 rules!1846 lt!548833) (tuple2!16745 lt!548829 Nil!17274))))

(declare-fun lt!548825 () Unit!26707)

(assert (=> b!1576378 (= lt!548825 lt!548830)))

(declare-fun ++!4479 (BalanceConc!11396 BalanceConc!11396) BalanceConc!11396)

(assert (=> b!1576378 (= lt!548832 (++!4479 (BalanceConc!11397 Empty!5726) (charsOf!1688 (_1!9776 (v!23909 lt!548853)))))))

(assert (=> b!1576378 (= lt!548844 (maxPrefixZipperSequence!604 thiss!17113 rules!1846 lt!548832))))

(declare-fun c!255489 () Bool)

(assert (=> b!1576378 (= c!255489 ((_ is Some!3086) lt!548844))))

(assert (=> b!1576378 (= (lexRec!348 thiss!17113 rules!1846 (++!4479 (BalanceConc!11397 Empty!5726) (charsOf!1688 (_1!9776 (v!23909 lt!548853))))) e!1012628)))

(declare-fun lt!548822 () Unit!26707)

(declare-fun Unit!26744 () Unit!26707)

(assert (=> b!1576378 (= lt!548822 Unit!26744)))

(assert (=> b!1576378 (= lt!548820 (++!4479 (BalanceConc!11397 Empty!5726) (charsOf!1688 (_1!9776 (v!23909 lt!548853)))))))

(declare-fun lt!548852 () List!17344)

(assert (=> b!1576378 (= lt!548852 (list!6652 lt!548820))))

(declare-fun lt!548834 () List!17344)

(assert (=> b!1576378 (= lt!548834 (list!6652 (_2!9776 (v!23909 lt!548853))))))

(declare-fun lt!548847 () Unit!26707)

(assert (=> b!1576378 (= lt!548847 (lemmaConcatTwoListThenFSndIsSuffix!295 lt!548852 lt!548834))))

(assert (=> b!1576378 (isSuffix!394 lt!548834 (++!4475 lt!548852 lt!548834))))

(declare-fun lt!548827 () Unit!26707)

(assert (=> b!1576378 (= lt!548827 lt!548847)))

(declare-fun b!1576379 () Bool)

(declare-fun lt!548826 () tuple2!16738)

(assert (=> b!1576379 (= lt!548826 (lexRec!348 thiss!17113 rules!1846 (_2!9776 (v!23909 lt!548849))))))

(assert (=> b!1576379 (= e!1012631 (tuple2!16739 (prepend!509 (_1!9771 lt!548826) (_1!9776 (v!23909 lt!548849))) (_2!9771 lt!548826)))))

(assert (= (and d!468094 c!255488) b!1576378))

(assert (= (and d!468094 (not c!255488)) b!1576376))

(assert (= (and b!1576378 c!255490) b!1576379))

(assert (= (and b!1576378 (not c!255490)) b!1576374))

(assert (= (and b!1576378 c!255489) b!1576373))

(assert (= (and b!1576378 (not c!255489)) b!1576375))

(assert (= (and d!468094 res!702636) b!1576377))

(declare-fun m!1856225 () Bool)

(assert (=> b!1576373 m!1856225))

(declare-fun m!1856227 () Bool)

(assert (=> b!1576373 m!1856227))

(declare-fun m!1856229 () Bool)

(assert (=> b!1576377 m!1856229))

(declare-fun m!1856231 () Bool)

(assert (=> b!1576377 m!1856231))

(declare-fun m!1856233 () Bool)

(assert (=> b!1576377 m!1856233))

(declare-fun m!1856235 () Bool)

(assert (=> b!1576379 m!1856235))

(declare-fun m!1856237 () Bool)

(assert (=> b!1576379 m!1856237))

(declare-fun m!1856239 () Bool)

(assert (=> b!1576378 m!1856239))

(declare-fun m!1856241 () Bool)

(assert (=> b!1576378 m!1856241))

(declare-fun m!1856243 () Bool)

(assert (=> b!1576378 m!1856243))

(declare-fun m!1856245 () Bool)

(assert (=> b!1576378 m!1856245))

(declare-fun m!1856247 () Bool)

(assert (=> b!1576378 m!1856247))

(declare-fun m!1856249 () Bool)

(assert (=> b!1576378 m!1856249))

(declare-fun m!1856251 () Bool)

(assert (=> b!1576378 m!1856251))

(declare-fun m!1856253 () Bool)

(assert (=> b!1576378 m!1856253))

(declare-fun m!1856255 () Bool)

(assert (=> b!1576378 m!1856255))

(declare-fun m!1856257 () Bool)

(assert (=> b!1576378 m!1856257))

(declare-fun m!1856259 () Bool)

(assert (=> b!1576378 m!1856259))

(declare-fun m!1856261 () Bool)

(assert (=> b!1576378 m!1856261))

(declare-fun m!1856263 () Bool)

(assert (=> b!1576378 m!1856263))

(declare-fun m!1856265 () Bool)

(assert (=> b!1576378 m!1856265))

(assert (=> b!1576378 m!1856251))

(assert (=> b!1576378 m!1856255))

(declare-fun m!1856267 () Bool)

(assert (=> b!1576378 m!1856267))

(declare-fun m!1856269 () Bool)

(assert (=> b!1576378 m!1856269))

(declare-fun m!1856271 () Bool)

(assert (=> b!1576378 m!1856271))

(declare-fun m!1856273 () Bool)

(assert (=> b!1576378 m!1856273))

(assert (=> b!1576378 m!1856247))

(assert (=> b!1576378 m!1856231))

(declare-fun m!1856275 () Bool)

(assert (=> b!1576378 m!1856275))

(declare-fun m!1856277 () Bool)

(assert (=> b!1576378 m!1856277))

(declare-fun m!1856279 () Bool)

(assert (=> b!1576378 m!1856279))

(declare-fun m!1856281 () Bool)

(assert (=> b!1576378 m!1856281))

(assert (=> b!1576378 m!1856279))

(declare-fun m!1856283 () Bool)

(assert (=> b!1576378 m!1856283))

(assert (=> b!1576378 m!1856281))

(declare-fun m!1856285 () Bool)

(assert (=> b!1576378 m!1856285))

(assert (=> b!1576378 m!1856245))

(assert (=> b!1576378 m!1856283))

(declare-fun m!1856287 () Bool)

(assert (=> b!1576378 m!1856287))

(declare-fun m!1856289 () Bool)

(assert (=> b!1576378 m!1856289))

(assert (=> b!1576378 m!1856247))

(declare-fun m!1856291 () Bool)

(assert (=> b!1576378 m!1856291))

(assert (=> b!1576378 m!1856269))

(assert (=> b!1576378 m!1856279))

(declare-fun m!1856293 () Bool)

(assert (=> b!1576378 m!1856293))

(declare-fun m!1856295 () Bool)

(assert (=> b!1576378 m!1856295))

(declare-fun m!1856297 () Bool)

(assert (=> b!1576378 m!1856297))

(assert (=> b!1576378 m!1856275))

(assert (=> b!1576378 m!1856261))

(assert (=> b!1576378 m!1856257))

(assert (=> b!1576378 m!1856265))

(declare-fun m!1856299 () Bool)

(assert (=> b!1576378 m!1856299))

(declare-fun m!1856301 () Bool)

(assert (=> b!1576378 m!1856301))

(declare-fun m!1856303 () Bool)

(assert (=> d!468094 m!1856303))

(declare-fun m!1856305 () Bool)

(assert (=> d!468094 m!1856305))

(assert (=> d!468094 m!1856245))

(assert (=> d!468094 m!1856303))

(assert (=> d!468094 m!1855235))

(declare-fun m!1856307 () Bool)

(assert (=> d!468094 m!1856307))

(assert (=> d!468094 m!1856231))

(declare-fun m!1856309 () Bool)

(assert (=> d!468094 m!1856309))

(declare-fun m!1856311 () Bool)

(assert (=> d!468094 m!1856311))

(declare-fun m!1856313 () Bool)

(assert (=> d!468094 m!1856313))

(assert (=> d!467898 d!468094))

(declare-fun d!468114 () Bool)

(declare-fun isBalanced!1684 (Conc!5726) Bool)

(assert (=> d!468114 (= (inv!22688 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457))))) (isBalanced!1684 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457)))))))))

(declare-fun bs!390547 () Bool)

(assert (= bs!390547 d!468114))

(declare-fun m!1856315 () Bool)

(assert (=> bs!390547 m!1856315))

(assert (=> tb!88683 d!468114))

(declare-fun d!468116 () Bool)

(assert (=> d!468116 (= (inv!22688 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457)))) (isBalanced!1684 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457))))))))

(declare-fun bs!390548 () Bool)

(assert (= bs!390548 d!468116))

(declare-fun m!1856317 () Bool)

(assert (=> bs!390548 m!1856317))

(assert (=> tb!88687 d!468116))

(declare-fun bs!390549 () Bool)

(declare-fun d!468118 () Bool)

(assert (= bs!390549 (and d!468118 d!467928)))

(declare-fun lambda!66381 () Int)

(assert (=> bs!390549 (= lambda!66381 lambda!66371)))

(declare-fun b!1576384 () Bool)

(declare-fun e!1012636 () Bool)

(assert (=> b!1576384 (= e!1012636 true)))

(declare-fun b!1576383 () Bool)

(declare-fun e!1012635 () Bool)

(assert (=> b!1576383 (= e!1012635 e!1012636)))

(declare-fun b!1576382 () Bool)

(declare-fun e!1012634 () Bool)

(assert (=> b!1576382 (= e!1012634 e!1012635)))

(assert (=> d!468118 e!1012634))

(assert (= b!1576383 b!1576384))

(assert (= b!1576382 b!1576383))

(assert (= (and d!468118 ((_ is Cons!17275) rules!1846)) b!1576382))

(assert (=> b!1576384 (< (dynLambda!7657 order!10173 (toValue!4434 (transformation!3039 (h!22676 rules!1846)))) (dynLambda!7658 order!10175 lambda!66381))))

(assert (=> b!1576384 (< (dynLambda!7659 order!10177 (toChars!4293 (transformation!3039 (h!22676 rules!1846)))) (dynLambda!7658 order!10175 lambda!66381))))

(assert (=> d!468118 true))

(declare-fun lt!548854 () Bool)

(assert (=> d!468118 (= lt!548854 (forall!3980 (t!143333 tokens!457) lambda!66381))))

(declare-fun e!1012633 () Bool)

(assert (=> d!468118 (= lt!548854 e!1012633)))

(declare-fun res!702638 () Bool)

(assert (=> d!468118 (=> res!702638 e!1012633)))

(assert (=> d!468118 (= res!702638 (not ((_ is Cons!17276) (t!143333 tokens!457))))))

(assert (=> d!468118 (not (isEmpty!10310 rules!1846))))

(assert (=> d!468118 (= (rulesProduceEachTokenIndividuallyList!870 thiss!17113 rules!1846 (t!143333 tokens!457)) lt!548854)))

(declare-fun b!1576380 () Bool)

(declare-fun e!1012632 () Bool)

(assert (=> b!1576380 (= e!1012633 e!1012632)))

(declare-fun res!702637 () Bool)

(assert (=> b!1576380 (=> (not res!702637) (not e!1012632))))

(assert (=> b!1576380 (= res!702637 (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 (t!143333 tokens!457))))))

(declare-fun b!1576381 () Bool)

(assert (=> b!1576381 (= e!1012632 (rulesProduceEachTokenIndividuallyList!870 thiss!17113 rules!1846 (t!143333 (t!143333 tokens!457))))))

(assert (= (and d!468118 (not res!702638)) b!1576380))

(assert (= (and b!1576380 res!702637) b!1576381))

(declare-fun m!1856319 () Bool)

(assert (=> d!468118 m!1856319))

(assert (=> d!468118 m!1855217))

(assert (=> b!1576380 m!1855215))

(declare-fun m!1856321 () Bool)

(assert (=> b!1576381 m!1856321))

(assert (=> b!1575962 d!468118))

(assert (=> b!1576050 d!467976))

(declare-fun d!468120 () Bool)

(declare-fun prefixMatchZipperSequence!397 (Regex!4367 BalanceConc!11396) Bool)

(declare-fun rulesRegex!445 (LexerInterface!2668 List!17345) Regex!4367)

(assert (=> d!468120 (= (separableTokensPredicate!610 thiss!17113 (h!22677 tokens!457) (h!22677 (t!143333 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!397 (rulesRegex!445 thiss!17113 rules!1846) (++!4479 (charsOf!1688 (h!22677 tokens!457)) (singletonSeq!1377 (apply!4177 (charsOf!1688 (h!22677 (t!143333 tokens!457))) 0))))))))

(declare-fun bs!390550 () Bool)

(assert (= bs!390550 d!468120))

(declare-fun m!1856323 () Bool)

(assert (=> bs!390550 m!1856323))

(declare-fun m!1856325 () Bool)

(assert (=> bs!390550 m!1856325))

(declare-fun m!1856327 () Bool)

(assert (=> bs!390550 m!1856327))

(assert (=> bs!390550 m!1856323))

(assert (=> bs!390550 m!1855219))

(assert (=> bs!390550 m!1855231))

(assert (=> bs!390550 m!1855231))

(declare-fun m!1856329 () Bool)

(assert (=> bs!390550 m!1856329))

(assert (=> bs!390550 m!1856325))

(declare-fun m!1856331 () Bool)

(assert (=> bs!390550 m!1856331))

(assert (=> bs!390550 m!1856329))

(assert (=> bs!390550 m!1855219))

(assert (=> bs!390550 m!1856331))

(assert (=> b!1576050 d!468120))

(declare-fun d!468122 () Bool)

(declare-fun lt!548857 () Int)

(assert (=> d!468122 (= lt!548857 (size!13920 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(declare-fun size!13928 (Conc!5726) Int)

(assert (=> d!468122 (= lt!548857 (size!13928 (c!255391 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(assert (=> d!468122 (= (size!13921 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) lt!548857)))

(declare-fun bs!390551 () Bool)

(assert (= bs!390551 d!468122))

(assert (=> bs!390551 m!1855219))

(assert (=> bs!390551 m!1855317))

(assert (=> bs!390551 m!1855317))

(declare-fun m!1856333 () Bool)

(assert (=> bs!390551 m!1856333))

(declare-fun m!1856335 () Bool)

(assert (=> bs!390551 m!1856335))

(assert (=> b!1576050 d!468122))

(declare-fun d!468124 () Bool)

(assert (=> d!468124 (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 tokens!457))))

(declare-fun lt!548911 () Unit!26707)

(declare-fun choose!9433 (LexerInterface!2668 List!17345 List!17346 Token!5644) Unit!26707)

(assert (=> d!468124 (= lt!548911 (choose!9433 thiss!17113 rules!1846 tokens!457 (h!22677 tokens!457)))))

(assert (=> d!468124 (not (isEmpty!10310 rules!1846))))

(assert (=> d!468124 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!509 thiss!17113 rules!1846 tokens!457 (h!22677 tokens!457)) lt!548911)))

(declare-fun bs!390553 () Bool)

(assert (= bs!390553 d!468124))

(assert (=> bs!390553 m!1855225))

(declare-fun m!1856389 () Bool)

(assert (=> bs!390553 m!1856389))

(assert (=> bs!390553 m!1855217))

(assert (=> b!1576050 d!468124))

(assert (=> b!1576050 d!467884))

(assert (=> b!1576050 d!467968))

(declare-fun d!468132 () Bool)

(assert (=> d!468132 (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 (t!143333 tokens!457)))))

(declare-fun lt!548912 () Unit!26707)

(assert (=> d!468132 (= lt!548912 (choose!9433 thiss!17113 rules!1846 tokens!457 (h!22677 (t!143333 tokens!457))))))

(assert (=> d!468132 (not (isEmpty!10310 rules!1846))))

(assert (=> d!468132 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!509 thiss!17113 rules!1846 tokens!457 (h!22677 (t!143333 tokens!457))) lt!548912)))

(declare-fun bs!390554 () Bool)

(assert (= bs!390554 d!468132))

(assert (=> bs!390554 m!1855215))

(declare-fun m!1856391 () Bool)

(assert (=> bs!390554 m!1856391))

(assert (=> bs!390554 m!1855217))

(assert (=> b!1576050 d!468132))

(declare-fun d!468134 () Bool)

(declare-fun lt!548915 () Token!5644)

(declare-fun apply!4180 (List!17346 Int) Token!5644)

(assert (=> d!468134 (= lt!548915 (apply!4180 (list!6651 (_1!9771 lt!548651)) 0))))

(declare-fun apply!4181 (Conc!5727 Int) Token!5644)

(assert (=> d!468134 (= lt!548915 (apply!4181 (c!255393 (_1!9771 lt!548651)) 0))))

(declare-fun e!1012645 () Bool)

(assert (=> d!468134 e!1012645))

(declare-fun res!702647 () Bool)

(assert (=> d!468134 (=> (not res!702647) (not e!1012645))))

(assert (=> d!468134 (= res!702647 (<= 0 0))))

(assert (=> d!468134 (= (apply!4178 (_1!9771 lt!548651) 0) lt!548915)))

(declare-fun b!1576399 () Bool)

(assert (=> b!1576399 (= e!1012645 (< 0 (size!13922 (_1!9771 lt!548651))))))

(assert (= (and d!468134 res!702647) b!1576399))

(declare-fun m!1856393 () Bool)

(assert (=> d!468134 m!1856393))

(assert (=> d!468134 m!1856393))

(declare-fun m!1856395 () Bool)

(assert (=> d!468134 m!1856395))

(declare-fun m!1856397 () Bool)

(assert (=> d!468134 m!1856397))

(assert (=> b!1576399 m!1855737))

(assert (=> b!1576079 d!468134))

(declare-fun d!468136 () Bool)

(assert (=> d!468136 (= (head!3164 lt!548376) (h!22675 lt!548376))))

(assert (=> b!1575922 d!468136))

(declare-fun d!468138 () Bool)

(assert (=> d!468138 (= (head!3164 lt!548365) (h!22675 lt!548365))))

(assert (=> b!1575922 d!468138))

(declare-fun lt!548916 () Bool)

(declare-fun d!468140 () Bool)

(assert (=> d!468140 (= lt!548916 (isEmpty!10315 (list!6652 (_2!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457))))))))))

(assert (=> d!468140 (= lt!548916 (isEmpty!10316 (c!255391 (_2!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457))))))))))

(assert (=> d!468140 (= (isEmpty!10311 (_2!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457)))))) lt!548916)))

(declare-fun bs!390555 () Bool)

(assert (= bs!390555 d!468140))

(declare-fun m!1856399 () Bool)

(assert (=> bs!390555 m!1856399))

(assert (=> bs!390555 m!1856399))

(declare-fun m!1856401 () Bool)

(assert (=> bs!390555 m!1856401))

(declare-fun m!1856403 () Bool)

(assert (=> bs!390555 m!1856403))

(assert (=> b!1576093 d!468140))

(declare-fun b!1576400 () Bool)

(declare-fun e!1012648 () Bool)

(declare-fun e!1012647 () Bool)

(assert (=> b!1576400 (= e!1012648 e!1012647)))

(declare-fun res!702648 () Bool)

(declare-fun lt!548917 () tuple2!16738)

(assert (=> b!1576400 (= res!702648 (< (size!13921 (_2!9771 lt!548917)) (size!13921 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457))))))))

(assert (=> b!1576400 (=> (not res!702648) (not e!1012647))))

(declare-fun b!1576401 () Bool)

(assert (=> b!1576401 (= e!1012648 (= (_2!9771 lt!548917) (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457)))))))

(declare-fun b!1576402 () Bool)

(declare-fun res!702650 () Bool)

(declare-fun e!1012646 () Bool)

(assert (=> b!1576402 (=> (not res!702650) (not e!1012646))))

(assert (=> b!1576402 (= res!702650 (= (list!6651 (_1!9771 lt!548917)) (_1!9774 (lexList!773 thiss!17113 rules!1846 (list!6652 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457))))))))))

(declare-fun d!468142 () Bool)

(assert (=> d!468142 e!1012646))

(declare-fun res!702649 () Bool)

(assert (=> d!468142 (=> (not res!702649) (not e!1012646))))

(assert (=> d!468142 (= res!702649 e!1012648)))

(declare-fun c!255494 () Bool)

(assert (=> d!468142 (= c!255494 (> (size!13922 (_1!9771 lt!548917)) 0))))

(assert (=> d!468142 (= lt!548917 (lexTailRecV2!496 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457))) (BalanceConc!11397 Empty!5726) (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457))) (BalanceConc!11399 Empty!5727)))))

(assert (=> d!468142 (= (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457)))) lt!548917)))

(declare-fun b!1576403 () Bool)

(assert (=> b!1576403 (= e!1012647 (not (isEmpty!10317 (_1!9771 lt!548917))))))

(declare-fun b!1576404 () Bool)

(assert (=> b!1576404 (= e!1012646 (= (list!6652 (_2!9771 lt!548917)) (_2!9774 (lexList!773 thiss!17113 rules!1846 (list!6652 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457))))))))))

(assert (= (and d!468142 c!255494) b!1576400))

(assert (= (and d!468142 (not c!255494)) b!1576401))

(assert (= (and b!1576400 res!702648) b!1576403))

(assert (= (and d!468142 res!702649) b!1576402))

(assert (= (and b!1576402 res!702650) b!1576404))

(declare-fun m!1856405 () Bool)

(assert (=> d!468142 m!1856405))

(assert (=> d!468142 m!1855765))

(assert (=> d!468142 m!1855765))

(declare-fun m!1856407 () Bool)

(assert (=> d!468142 m!1856407))

(declare-fun m!1856409 () Bool)

(assert (=> b!1576403 m!1856409))

(declare-fun m!1856411 () Bool)

(assert (=> b!1576400 m!1856411))

(assert (=> b!1576400 m!1855765))

(declare-fun m!1856413 () Bool)

(assert (=> b!1576400 m!1856413))

(declare-fun m!1856415 () Bool)

(assert (=> b!1576402 m!1856415))

(assert (=> b!1576402 m!1855765))

(declare-fun m!1856417 () Bool)

(assert (=> b!1576402 m!1856417))

(assert (=> b!1576402 m!1856417))

(declare-fun m!1856419 () Bool)

(assert (=> b!1576402 m!1856419))

(declare-fun m!1856421 () Bool)

(assert (=> b!1576404 m!1856421))

(assert (=> b!1576404 m!1855765))

(assert (=> b!1576404 m!1856417))

(assert (=> b!1576404 m!1856417))

(assert (=> b!1576404 m!1856419))

(assert (=> b!1576093 d!468142))

(declare-fun d!468144 () Bool)

(declare-fun lt!548918 () BalanceConc!11396)

(assert (=> d!468144 (= (list!6652 lt!548918) (printList!791 thiss!17113 (list!6651 (singletonSeq!1376 (h!22677 tokens!457)))))))

(assert (=> d!468144 (= lt!548918 (printTailRec!727 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457)) 0 (BalanceConc!11397 Empty!5726)))))

(assert (=> d!468144 (= (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457))) lt!548918)))

(declare-fun bs!390556 () Bool)

(assert (= bs!390556 d!468144))

(declare-fun m!1856423 () Bool)

(assert (=> bs!390556 m!1856423))

(assert (=> bs!390556 m!1855759))

(assert (=> bs!390556 m!1855769))

(assert (=> bs!390556 m!1855769))

(declare-fun m!1856425 () Bool)

(assert (=> bs!390556 m!1856425))

(assert (=> bs!390556 m!1855759))

(declare-fun m!1856427 () Bool)

(assert (=> bs!390556 m!1856427))

(assert (=> b!1576093 d!468144))

(declare-fun d!468146 () Bool)

(declare-fun e!1012651 () Bool)

(assert (=> d!468146 e!1012651))

(declare-fun res!702653 () Bool)

(assert (=> d!468146 (=> (not res!702653) (not e!1012651))))

(declare-fun lt!548921 () BalanceConc!11398)

(assert (=> d!468146 (= res!702653 (= (list!6651 lt!548921) (Cons!17276 (h!22677 tokens!457) Nil!17276)))))

(declare-fun singleton!564 (Token!5644) BalanceConc!11398)

(assert (=> d!468146 (= lt!548921 (singleton!564 (h!22677 tokens!457)))))

(assert (=> d!468146 (= (singletonSeq!1376 (h!22677 tokens!457)) lt!548921)))

(declare-fun b!1576407 () Bool)

(assert (=> b!1576407 (= e!1012651 (isBalanced!1682 (c!255393 lt!548921)))))

(assert (= (and d!468146 res!702653) b!1576407))

(declare-fun m!1856429 () Bool)

(assert (=> d!468146 m!1856429))

(declare-fun m!1856431 () Bool)

(assert (=> d!468146 m!1856431))

(declare-fun m!1856433 () Bool)

(assert (=> b!1576407 m!1856433))

(assert (=> b!1576093 d!468146))

(declare-fun d!468148 () Bool)

(declare-fun charsToInt!0 (List!17343) (_ BitVec 32))

(assert (=> d!468148 (= (inv!16 (value!96284 (h!22677 tokens!457))) (= (charsToInt!0 (text!22350 (value!96284 (h!22677 tokens!457)))) (value!96275 (value!96284 (h!22677 tokens!457)))))))

(declare-fun bs!390557 () Bool)

(assert (= bs!390557 d!468148))

(declare-fun m!1856435 () Bool)

(assert (=> bs!390557 m!1856435))

(assert (=> b!1576072 d!468148))

(declare-fun d!468150 () Bool)

(declare-fun lt!548922 () Token!5644)

(assert (=> d!468150 (= lt!548922 (apply!4180 (list!6651 (_1!9771 lt!548653)) 0))))

(assert (=> d!468150 (= lt!548922 (apply!4181 (c!255393 (_1!9771 lt!548653)) 0))))

(declare-fun e!1012652 () Bool)

(assert (=> d!468150 e!1012652))

(declare-fun res!702654 () Bool)

(assert (=> d!468150 (=> (not res!702654) (not e!1012652))))

(assert (=> d!468150 (= res!702654 (<= 0 0))))

(assert (=> d!468150 (= (apply!4178 (_1!9771 lt!548653) 0) lt!548922)))

(declare-fun b!1576408 () Bool)

(assert (=> b!1576408 (= e!1012652 (< 0 (size!13922 (_1!9771 lt!548653))))))

(assert (= (and d!468150 res!702654) b!1576408))

(declare-fun m!1856437 () Bool)

(assert (=> d!468150 m!1856437))

(assert (=> d!468150 m!1856437))

(declare-fun m!1856439 () Bool)

(assert (=> d!468150 m!1856439))

(declare-fun m!1856441 () Bool)

(assert (=> d!468150 m!1856441))

(assert (=> b!1576408 m!1855763))

(assert (=> b!1576091 d!468150))

(declare-fun d!468152 () Bool)

(declare-fun charsToBigInt!1 (List!17343) Int)

(assert (=> d!468152 (= (inv!17 (value!96284 (h!22677 tokens!457))) (= (charsToBigInt!1 (text!22351 (value!96284 (h!22677 tokens!457)))) (value!96276 (value!96284 (h!22677 tokens!457)))))))

(declare-fun bs!390558 () Bool)

(assert (= bs!390558 d!468152))

(declare-fun m!1856443 () Bool)

(assert (=> bs!390558 m!1856443))

(assert (=> b!1576070 d!468152))

(declare-fun d!468154 () Bool)

(assert (=> d!468154 true))

(declare-fun lt!548925 () Bool)

(declare-fun rulesValidInductive!904 (LexerInterface!2668 List!17345) Bool)

(assert (=> d!468154 (= lt!548925 (rulesValidInductive!904 thiss!17113 rules!1846))))

(declare-fun lambda!66384 () Int)

(declare-fun forall!3981 (List!17345 Int) Bool)

(assert (=> d!468154 (= lt!548925 (forall!3981 rules!1846 lambda!66384))))

(assert (=> d!468154 (= (rulesValid!1072 thiss!17113 rules!1846) lt!548925)))

(declare-fun bs!390559 () Bool)

(assert (= bs!390559 d!468154))

(declare-fun m!1856445 () Bool)

(assert (=> bs!390559 m!1856445))

(declare-fun m!1856447 () Bool)

(assert (=> bs!390559 m!1856447))

(assert (=> d!467952 d!468154))

(declare-fun d!468156 () Bool)

(declare-fun lt!548928 () Int)

(assert (=> d!468156 (>= lt!548928 0)))

(declare-fun e!1012655 () Int)

(assert (=> d!468156 (= lt!548928 e!1012655)))

(declare-fun c!255497 () Bool)

(assert (=> d!468156 (= c!255497 ((_ is Nil!17274) lt!548365))))

(assert (=> d!468156 (= (size!13920 lt!548365) lt!548928)))

(declare-fun b!1576415 () Bool)

(assert (=> b!1576415 (= e!1012655 0)))

(declare-fun b!1576416 () Bool)

(assert (=> b!1576416 (= e!1012655 (+ 1 (size!13920 (t!143331 lt!548365))))))

(assert (= (and d!468156 c!255497) b!1576415))

(assert (= (and d!468156 (not c!255497)) b!1576416))

(declare-fun m!1856449 () Bool)

(assert (=> b!1576416 m!1856449))

(assert (=> b!1575924 d!468156))

(declare-fun d!468158 () Bool)

(declare-fun lt!548929 () Int)

(assert (=> d!468158 (>= lt!548929 0)))

(declare-fun e!1012656 () Int)

(assert (=> d!468158 (= lt!548929 e!1012656)))

(declare-fun c!255498 () Bool)

(assert (=> d!468158 (= c!255498 ((_ is Nil!17274) lt!548376))))

(assert (=> d!468158 (= (size!13920 lt!548376) lt!548929)))

(declare-fun b!1576417 () Bool)

(assert (=> b!1576417 (= e!1012656 0)))

(declare-fun b!1576418 () Bool)

(assert (=> b!1576418 (= e!1012656 (+ 1 (size!13920 (t!143331 lt!548376))))))

(assert (= (and d!468158 c!255498) b!1576417))

(assert (= (and d!468158 (not c!255498)) b!1576418))

(declare-fun m!1856451 () Bool)

(assert (=> b!1576418 m!1856451))

(assert (=> b!1575924 d!468158))

(declare-fun d!468160 () Bool)

(assert (=> d!468160 (= (isEmpty!10315 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))) ((_ is Nil!17274) (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(assert (=> d!467882 d!468160))

(declare-fun d!468162 () Bool)

(assert (=> d!468162 (= (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (list!6655 (c!255391 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(declare-fun bs!390560 () Bool)

(assert (= bs!390560 d!468162))

(declare-fun m!1856453 () Bool)

(assert (=> bs!390560 m!1856453))

(assert (=> d!467882 d!468162))

(declare-fun d!468164 () Bool)

(declare-fun lt!548932 () Bool)

(assert (=> d!468164 (= lt!548932 (isEmpty!10315 (list!6655 (c!255391 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))))

(assert (=> d!468164 (= lt!548932 (= (size!13928 (c!255391 (charsOf!1688 (h!22677 (t!143333 tokens!457))))) 0))))

(assert (=> d!468164 (= (isEmpty!10316 (c!255391 (charsOf!1688 (h!22677 (t!143333 tokens!457))))) lt!548932)))

(declare-fun bs!390561 () Bool)

(assert (= bs!390561 d!468164))

(assert (=> bs!390561 m!1856453))

(assert (=> bs!390561 m!1856453))

(declare-fun m!1856455 () Bool)

(assert (=> bs!390561 m!1856455))

(assert (=> bs!390561 m!1856335))

(assert (=> d!467882 d!468164))

(declare-fun d!468166 () Bool)

(assert (=> d!468166 true))

(declare-fun order!10189 () Int)

(declare-fun lambda!66387 () Int)

(declare-fun dynLambda!7663 (Int Int) Int)

(assert (=> d!468166 (< (dynLambda!7659 order!10177 (toChars!4293 (transformation!3039 (h!22676 rules!1846)))) (dynLambda!7663 order!10189 lambda!66387))))

(assert (=> d!468166 true))

(assert (=> d!468166 (< (dynLambda!7657 order!10173 (toValue!4434 (transformation!3039 (h!22676 rules!1846)))) (dynLambda!7663 order!10189 lambda!66387))))

(declare-fun Forall!628 (Int) Bool)

(assert (=> d!468166 (= (semiInverseModEq!1144 (toChars!4293 (transformation!3039 (h!22676 rules!1846))) (toValue!4434 (transformation!3039 (h!22676 rules!1846)))) (Forall!628 lambda!66387))))

(declare-fun bs!390562 () Bool)

(assert (= bs!390562 d!468166))

(declare-fun m!1856457 () Bool)

(assert (=> bs!390562 m!1856457))

(assert (=> d!467972 d!468166))

(declare-fun d!468168 () Bool)

(declare-fun lt!548933 () Int)

(assert (=> d!468168 (>= lt!548933 0)))

(declare-fun e!1012657 () Int)

(assert (=> d!468168 (= lt!548933 e!1012657)))

(declare-fun c!255499 () Bool)

(assert (=> d!468168 (= c!255499 ((_ is Nil!17274) lt!548401))))

(assert (=> d!468168 (= (size!13920 lt!548401) lt!548933)))

(declare-fun b!1576423 () Bool)

(assert (=> b!1576423 (= e!1012657 0)))

(declare-fun b!1576424 () Bool)

(assert (=> b!1576424 (= e!1012657 (+ 1 (size!13920 (t!143331 lt!548401))))))

(assert (= (and d!468168 c!255499) b!1576423))

(assert (= (and d!468168 (not c!255499)) b!1576424))

(declare-fun m!1856459 () Bool)

(assert (=> b!1576424 m!1856459))

(assert (=> b!1575838 d!468168))

(assert (=> b!1575838 d!468158))

(declare-fun d!468170 () Bool)

(declare-fun lt!548934 () Int)

(assert (=> d!468170 (>= lt!548934 0)))

(declare-fun e!1012658 () Int)

(assert (=> d!468170 (= lt!548934 e!1012658)))

(declare-fun c!255500 () Bool)

(assert (=> d!468170 (= c!255500 ((_ is Nil!17274) lt!548373))))

(assert (=> d!468170 (= (size!13920 lt!548373) lt!548934)))

(declare-fun b!1576425 () Bool)

(assert (=> b!1576425 (= e!1012658 0)))

(declare-fun b!1576426 () Bool)

(assert (=> b!1576426 (= e!1012658 (+ 1 (size!13920 (t!143331 lt!548373))))))

(assert (= (and d!468170 c!255500) b!1576425))

(assert (= (and d!468170 (not c!255500)) b!1576426))

(declare-fun m!1856461 () Bool)

(assert (=> b!1576426 m!1856461))

(assert (=> b!1575838 d!468170))

(declare-fun lt!548935 () Bool)

(declare-fun d!468172 () Bool)

(assert (=> d!468172 (= lt!548935 (isEmpty!10315 (list!6652 (_2!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457)))))))))))

(assert (=> d!468172 (= lt!548935 (isEmpty!10316 (c!255391 (_2!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457)))))))))))

(assert (=> d!468172 (= (isEmpty!10311 (_2!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))))))) lt!548935)))

(declare-fun bs!390563 () Bool)

(assert (= bs!390563 d!468172))

(declare-fun m!1856463 () Bool)

(assert (=> bs!390563 m!1856463))

(assert (=> bs!390563 m!1856463))

(declare-fun m!1856465 () Bool)

(assert (=> bs!390563 m!1856465))

(declare-fun m!1856467 () Bool)

(assert (=> bs!390563 m!1856467))

(assert (=> b!1576081 d!468172))

(declare-fun b!1576427 () Bool)

(declare-fun e!1012661 () Bool)

(declare-fun e!1012660 () Bool)

(assert (=> b!1576427 (= e!1012661 e!1012660)))

(declare-fun res!702655 () Bool)

(declare-fun lt!548936 () tuple2!16738)

(assert (=> b!1576427 (= res!702655 (< (size!13921 (_2!9771 lt!548936)) (size!13921 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457)))))))))

(assert (=> b!1576427 (=> (not res!702655) (not e!1012660))))

(declare-fun b!1576428 () Bool)

(assert (=> b!1576428 (= e!1012661 (= (_2!9771 lt!548936) (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))))))))

(declare-fun b!1576429 () Bool)

(declare-fun res!702657 () Bool)

(declare-fun e!1012659 () Bool)

(assert (=> b!1576429 (=> (not res!702657) (not e!1012659))))

(assert (=> b!1576429 (= res!702657 (= (list!6651 (_1!9771 lt!548936)) (_1!9774 (lexList!773 thiss!17113 rules!1846 (list!6652 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457)))))))))))

(declare-fun d!468174 () Bool)

(assert (=> d!468174 e!1012659))

(declare-fun res!702656 () Bool)

(assert (=> d!468174 (=> (not res!702656) (not e!1012659))))

(assert (=> d!468174 (= res!702656 e!1012661)))

(declare-fun c!255501 () Bool)

(assert (=> d!468174 (= c!255501 (> (size!13922 (_1!9771 lt!548936)) 0))))

(assert (=> d!468174 (= lt!548936 (lexTailRecV2!496 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457)))) (BalanceConc!11397 Empty!5726) (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457)))) (BalanceConc!11399 Empty!5727)))))

(assert (=> d!468174 (= (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))))) lt!548936)))

(declare-fun b!1576430 () Bool)

(assert (=> b!1576430 (= e!1012660 (not (isEmpty!10317 (_1!9771 lt!548936))))))

(declare-fun b!1576431 () Bool)

(assert (=> b!1576431 (= e!1012659 (= (list!6652 (_2!9771 lt!548936)) (_2!9774 (lexList!773 thiss!17113 rules!1846 (list!6652 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457)))))))))))

(assert (= (and d!468174 c!255501) b!1576427))

(assert (= (and d!468174 (not c!255501)) b!1576428))

(assert (= (and b!1576427 res!702655) b!1576430))

(assert (= (and d!468174 res!702656) b!1576429))

(assert (= (and b!1576429 res!702657) b!1576431))

(declare-fun m!1856469 () Bool)

(assert (=> d!468174 m!1856469))

(assert (=> d!468174 m!1855555))

(assert (=> d!468174 m!1855555))

(declare-fun m!1856471 () Bool)

(assert (=> d!468174 m!1856471))

(declare-fun m!1856473 () Bool)

(assert (=> b!1576430 m!1856473))

(declare-fun m!1856475 () Bool)

(assert (=> b!1576427 m!1856475))

(assert (=> b!1576427 m!1855555))

(declare-fun m!1856477 () Bool)

(assert (=> b!1576427 m!1856477))

(declare-fun m!1856479 () Bool)

(assert (=> b!1576429 m!1856479))

(assert (=> b!1576429 m!1855555))

(declare-fun m!1856481 () Bool)

(assert (=> b!1576429 m!1856481))

(assert (=> b!1576429 m!1856481))

(declare-fun m!1856483 () Bool)

(assert (=> b!1576429 m!1856483))

(declare-fun m!1856485 () Bool)

(assert (=> b!1576431 m!1856485))

(assert (=> b!1576431 m!1855555))

(assert (=> b!1576431 m!1856481))

(assert (=> b!1576431 m!1856481))

(assert (=> b!1576431 m!1856483))

(assert (=> b!1576081 d!468174))

(declare-fun d!468176 () Bool)

(declare-fun lt!548937 () BalanceConc!11396)

(assert (=> d!468176 (= (list!6652 lt!548937) (printList!791 thiss!17113 (list!6651 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))))))))

(assert (=> d!468176 (= lt!548937 (printTailRec!727 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))) 0 (BalanceConc!11397 Empty!5726)))))

(assert (=> d!468176 (= (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457)))) lt!548937)))

(declare-fun bs!390564 () Bool)

(assert (= bs!390564 d!468176))

(declare-fun m!1856487 () Bool)

(assert (=> bs!390564 m!1856487))

(assert (=> bs!390564 m!1855545))

(assert (=> bs!390564 m!1855741))

(assert (=> bs!390564 m!1855741))

(declare-fun m!1856489 () Bool)

(assert (=> bs!390564 m!1856489))

(assert (=> bs!390564 m!1855545))

(assert (=> bs!390564 m!1855547))

(assert (=> b!1576081 d!468176))

(declare-fun d!468178 () Bool)

(declare-fun e!1012662 () Bool)

(assert (=> d!468178 e!1012662))

(declare-fun res!702658 () Bool)

(assert (=> d!468178 (=> (not res!702658) (not e!1012662))))

(declare-fun lt!548938 () BalanceConc!11398)

(assert (=> d!468178 (= res!702658 (= (list!6651 lt!548938) (Cons!17276 (h!22677 (t!143333 tokens!457)) Nil!17276)))))

(assert (=> d!468178 (= lt!548938 (singleton!564 (h!22677 (t!143333 tokens!457))))))

(assert (=> d!468178 (= (singletonSeq!1376 (h!22677 (t!143333 tokens!457))) lt!548938)))

(declare-fun b!1576432 () Bool)

(assert (=> b!1576432 (= e!1012662 (isBalanced!1682 (c!255393 lt!548938)))))

(assert (= (and d!468178 res!702658) b!1576432))

(declare-fun m!1856491 () Bool)

(assert (=> d!468178 m!1856491))

(declare-fun m!1856493 () Bool)

(assert (=> d!468178 m!1856493))

(declare-fun m!1856495 () Bool)

(assert (=> b!1576432 m!1856495))

(assert (=> b!1576081 d!468178))

(declare-fun bs!390565 () Bool)

(declare-fun d!468180 () Bool)

(assert (= bs!390565 (and d!468180 d!468166)))

(declare-fun lambda!66388 () Int)

(assert (=> bs!390565 (= (and (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (toChars!4293 (transformation!3039 (h!22676 rules!1846)))) (= (toValue!4434 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (toValue!4434 (transformation!3039 (h!22676 rules!1846))))) (= lambda!66388 lambda!66387))))

(assert (=> d!468180 true))

(assert (=> d!468180 (< (dynLambda!7659 order!10177 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457))))) (dynLambda!7663 order!10189 lambda!66388))))

(assert (=> d!468180 true))

(assert (=> d!468180 (< (dynLambda!7657 order!10173 (toValue!4434 (transformation!3039 (rule!4831 (h!22677 tokens!457))))) (dynLambda!7663 order!10189 lambda!66388))))

(assert (=> d!468180 (= (semiInverseModEq!1144 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (toValue!4434 (transformation!3039 (rule!4831 (h!22677 tokens!457))))) (Forall!628 lambda!66388))))

(declare-fun bs!390566 () Bool)

(assert (= bs!390566 d!468180))

(declare-fun m!1856497 () Bool)

(assert (=> bs!390566 m!1856497))

(assert (=> d!467980 d!468180))

(declare-fun b!1576436 () Bool)

(declare-fun e!1012664 () Bool)

(assert (=> b!1576436 (= e!1012664 (>= (size!13920 (++!4475 lt!548376 lt!548373)) (size!13920 lt!548376)))))

(declare-fun b!1576433 () Bool)

(declare-fun e!1012665 () Bool)

(declare-fun e!1012663 () Bool)

(assert (=> b!1576433 (= e!1012665 e!1012663)))

(declare-fun res!702662 () Bool)

(assert (=> b!1576433 (=> (not res!702662) (not e!1012663))))

(assert (=> b!1576433 (= res!702662 (not ((_ is Nil!17274) (++!4475 lt!548376 lt!548373))))))

(declare-fun d!468182 () Bool)

(assert (=> d!468182 e!1012664))

(declare-fun res!702659 () Bool)

(assert (=> d!468182 (=> res!702659 e!1012664)))

(declare-fun lt!548939 () Bool)

(assert (=> d!468182 (= res!702659 (not lt!548939))))

(assert (=> d!468182 (= lt!548939 e!1012665)))

(declare-fun res!702660 () Bool)

(assert (=> d!468182 (=> res!702660 e!1012665)))

(assert (=> d!468182 (= res!702660 ((_ is Nil!17274) lt!548376))))

(assert (=> d!468182 (= (isPrefix!1299 lt!548376 (++!4475 lt!548376 lt!548373)) lt!548939)))

(declare-fun b!1576435 () Bool)

(assert (=> b!1576435 (= e!1012663 (isPrefix!1299 (tail!2240 lt!548376) (tail!2240 (++!4475 lt!548376 lt!548373))))))

(declare-fun b!1576434 () Bool)

(declare-fun res!702661 () Bool)

(assert (=> b!1576434 (=> (not res!702661) (not e!1012663))))

(assert (=> b!1576434 (= res!702661 (= (head!3164 lt!548376) (head!3164 (++!4475 lt!548376 lt!548373))))))

(assert (= (and d!468182 (not res!702660)) b!1576433))

(assert (= (and b!1576433 res!702662) b!1576434))

(assert (= (and b!1576434 res!702661) b!1576435))

(assert (= (and d!468182 (not res!702659)) b!1576436))

(assert (=> b!1576436 m!1855243))

(declare-fun m!1856499 () Bool)

(assert (=> b!1576436 m!1856499))

(assert (=> b!1576436 m!1855335))

(assert (=> b!1576435 m!1855599))

(assert (=> b!1576435 m!1855243))

(declare-fun m!1856501 () Bool)

(assert (=> b!1576435 m!1856501))

(assert (=> b!1576435 m!1855599))

(assert (=> b!1576435 m!1856501))

(declare-fun m!1856503 () Bool)

(assert (=> b!1576435 m!1856503))

(assert (=> b!1576434 m!1855605))

(assert (=> b!1576434 m!1855243))

(declare-fun m!1856505 () Bool)

(assert (=> b!1576434 m!1856505))

(assert (=> d!467926 d!468182))

(assert (=> d!467926 d!467888))

(declare-fun d!468184 () Bool)

(assert (=> d!468184 (isPrefix!1299 lt!548376 (++!4475 lt!548376 lt!548373))))

(assert (=> d!468184 true))

(declare-fun _$46!1032 () Unit!26707)

(assert (=> d!468184 (= (choose!9430 lt!548376 lt!548373) _$46!1032)))

(declare-fun bs!390567 () Bool)

(assert (= bs!390567 d!468184))

(assert (=> bs!390567 m!1855243))

(assert (=> bs!390567 m!1855243))

(assert (=> bs!390567 m!1855609))

(assert (=> d!467926 d!468184))

(declare-fun d!468186 () Bool)

(assert (=> d!468186 (= (list!6652 (_2!9771 lt!548408)) (list!6655 (c!255391 (_2!9771 lt!548408))))))

(declare-fun bs!390568 () Bool)

(assert (= bs!390568 d!468186))

(declare-fun m!1856507 () Bool)

(assert (=> bs!390568 m!1856507))

(assert (=> b!1575870 d!468186))

(declare-fun b!1576447 () Bool)

(declare-fun e!1012672 () tuple2!16744)

(declare-fun lt!548946 () Option!3086)

(declare-fun lt!548948 () tuple2!16744)

(assert (=> b!1576447 (= e!1012672 (tuple2!16745 (Cons!17276 (_1!9775 (v!23904 lt!548946)) (_1!9774 lt!548948)) (_2!9774 lt!548948)))))

(assert (=> b!1576447 (= lt!548948 (lexList!773 thiss!17113 rules!1846 (_2!9775 (v!23904 lt!548946))))))

(declare-fun b!1576448 () Bool)

(declare-fun e!1012673 () Bool)

(declare-fun lt!548947 () tuple2!16744)

(assert (=> b!1576448 (= e!1012673 (= (_2!9774 lt!548947) (list!6652 lt!548364)))))

(declare-fun b!1576449 () Bool)

(assert (=> b!1576449 (= e!1012672 (tuple2!16745 Nil!17276 (list!6652 lt!548364)))))

(declare-fun b!1576450 () Bool)

(declare-fun e!1012674 () Bool)

(assert (=> b!1576450 (= e!1012673 e!1012674)))

(declare-fun res!702665 () Bool)

(assert (=> b!1576450 (= res!702665 (< (size!13920 (_2!9774 lt!548947)) (size!13920 (list!6652 lt!548364))))))

(assert (=> b!1576450 (=> (not res!702665) (not e!1012674))))

(declare-fun b!1576451 () Bool)

(declare-fun isEmpty!10321 (List!17346) Bool)

(assert (=> b!1576451 (= e!1012674 (not (isEmpty!10321 (_1!9774 lt!548947))))))

(declare-fun d!468188 () Bool)

(assert (=> d!468188 e!1012673))

(declare-fun c!255507 () Bool)

(assert (=> d!468188 (= c!255507 (> (size!13925 (_1!9774 lt!548947)) 0))))

(assert (=> d!468188 (= lt!548947 e!1012672)))

(declare-fun c!255506 () Bool)

(assert (=> d!468188 (= c!255506 ((_ is Some!3085) lt!548946))))

(assert (=> d!468188 (= lt!548946 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 lt!548364)))))

(assert (=> d!468188 (= (lexList!773 thiss!17113 rules!1846 (list!6652 lt!548364)) lt!548947)))

(assert (= (and d!468188 c!255506) b!1576447))

(assert (= (and d!468188 (not c!255506)) b!1576449))

(assert (= (and d!468188 c!255507) b!1576450))

(assert (= (and d!468188 (not c!255507)) b!1576448))

(assert (= (and b!1576450 res!702665) b!1576451))

(declare-fun m!1856509 () Bool)

(assert (=> b!1576447 m!1856509))

(declare-fun m!1856511 () Bool)

(assert (=> b!1576450 m!1856511))

(assert (=> b!1576450 m!1855235))

(declare-fun m!1856513 () Bool)

(assert (=> b!1576450 m!1856513))

(declare-fun m!1856515 () Bool)

(assert (=> b!1576451 m!1856515))

(declare-fun m!1856517 () Bool)

(assert (=> d!468188 m!1856517))

(assert (=> d!468188 m!1855235))

(declare-fun m!1856519 () Bool)

(assert (=> d!468188 m!1856519))

(assert (=> b!1575870 d!468188))

(assert (=> b!1575870 d!467890))

(declare-fun d!468190 () Bool)

(declare-fun lt!548949 () Bool)

(assert (=> d!468190 (= lt!548949 (isEmpty!10315 (list!6652 (_2!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457))))))))))

(assert (=> d!468190 (= lt!548949 (isEmpty!10316 (c!255391 (_2!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457))))))))))

(assert (=> d!468190 (= (isEmpty!10311 (_2!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457)))))) lt!548949)))

(declare-fun bs!390569 () Bool)

(assert (= bs!390569 d!468190))

(declare-fun m!1856521 () Bool)

(assert (=> bs!390569 m!1856521))

(assert (=> bs!390569 m!1856521))

(declare-fun m!1856523 () Bool)

(assert (=> bs!390569 m!1856523))

(declare-fun m!1856525 () Bool)

(assert (=> bs!390569 m!1856525))

(assert (=> b!1575912 d!468190))

(declare-fun b!1576452 () Bool)

(declare-fun e!1012677 () Bool)

(declare-fun e!1012676 () Bool)

(assert (=> b!1576452 (= e!1012677 e!1012676)))

(declare-fun lt!548950 () tuple2!16738)

(declare-fun res!702666 () Bool)

(assert (=> b!1576452 (= res!702666 (< (size!13921 (_2!9771 lt!548950)) (size!13921 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457))))))))

(assert (=> b!1576452 (=> (not res!702666) (not e!1012676))))

(declare-fun b!1576453 () Bool)

(assert (=> b!1576453 (= e!1012677 (= (_2!9771 lt!548950) (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457)))))))

(declare-fun b!1576454 () Bool)

(declare-fun res!702668 () Bool)

(declare-fun e!1012675 () Bool)

(assert (=> b!1576454 (=> (not res!702668) (not e!1012675))))

(assert (=> b!1576454 (= res!702668 (= (list!6651 (_1!9771 lt!548950)) (_1!9774 (lexList!773 thiss!17113 rules!1846 (list!6652 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457))))))))))

(declare-fun d!468192 () Bool)

(assert (=> d!468192 e!1012675))

(declare-fun res!702667 () Bool)

(assert (=> d!468192 (=> (not res!702667) (not e!1012675))))

(assert (=> d!468192 (= res!702667 e!1012677)))

(declare-fun c!255508 () Bool)

(assert (=> d!468192 (= c!255508 (> (size!13922 (_1!9771 lt!548950)) 0))))

(assert (=> d!468192 (= lt!548950 (lexTailRecV2!496 thiss!17113 rules!1846 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457))) (BalanceConc!11397 Empty!5726) (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457))) (BalanceConc!11399 Empty!5727)))))

(assert (=> d!468192 (= (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457)))) lt!548950)))

(declare-fun b!1576455 () Bool)

(assert (=> b!1576455 (= e!1012676 (not (isEmpty!10317 (_1!9771 lt!548950))))))

(declare-fun b!1576456 () Bool)

(assert (=> b!1576456 (= e!1012675 (= (list!6652 (_2!9771 lt!548950)) (_2!9774 (lexList!773 thiss!17113 rules!1846 (list!6652 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457))))))))))

(assert (= (and d!468192 c!255508) b!1576452))

(assert (= (and d!468192 (not c!255508)) b!1576453))

(assert (= (and b!1576452 res!702666) b!1576455))

(assert (= (and d!468192 res!702667) b!1576454))

(assert (= (and b!1576454 res!702668) b!1576456))

(declare-fun m!1856527 () Bool)

(assert (=> d!468192 m!1856527))

(assert (=> d!468192 m!1855523))

(assert (=> d!468192 m!1855523))

(declare-fun m!1856529 () Bool)

(assert (=> d!468192 m!1856529))

(declare-fun m!1856531 () Bool)

(assert (=> b!1576455 m!1856531))

(declare-fun m!1856533 () Bool)

(assert (=> b!1576452 m!1856533))

(assert (=> b!1576452 m!1855523))

(declare-fun m!1856535 () Bool)

(assert (=> b!1576452 m!1856535))

(declare-fun m!1856537 () Bool)

(assert (=> b!1576454 m!1856537))

(assert (=> b!1576454 m!1855523))

(declare-fun m!1856539 () Bool)

(assert (=> b!1576454 m!1856539))

(assert (=> b!1576454 m!1856539))

(declare-fun m!1856541 () Bool)

(assert (=> b!1576454 m!1856541))

(declare-fun m!1856543 () Bool)

(assert (=> b!1576456 m!1856543))

(assert (=> b!1576456 m!1855523))

(assert (=> b!1576456 m!1856539))

(assert (=> b!1576456 m!1856539))

(assert (=> b!1576456 m!1856541))

(assert (=> b!1575912 d!468192))

(declare-fun d!468194 () Bool)

(declare-fun lt!548951 () BalanceConc!11396)

(assert (=> d!468194 (= (list!6652 lt!548951) (printList!791 thiss!17113 (list!6651 (seqFromList!1836 (t!143333 tokens!457)))))))

(assert (=> d!468194 (= lt!548951 (printTailRec!727 thiss!17113 (seqFromList!1836 (t!143333 tokens!457)) 0 (BalanceConc!11397 Empty!5726)))))

(assert (=> d!468194 (= (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457))) lt!548951)))

(declare-fun bs!390570 () Bool)

(assert (= bs!390570 d!468194))

(declare-fun m!1856545 () Bool)

(assert (=> bs!390570 m!1856545))

(assert (=> bs!390570 m!1855233))

(declare-fun m!1856547 () Bool)

(assert (=> bs!390570 m!1856547))

(assert (=> bs!390570 m!1856547))

(declare-fun m!1856549 () Bool)

(assert (=> bs!390570 m!1856549))

(assert (=> bs!390570 m!1855233))

(declare-fun m!1856551 () Bool)

(assert (=> bs!390570 m!1856551))

(assert (=> b!1575912 d!468194))

(assert (=> b!1575912 d!467894))

(declare-fun d!468196 () Bool)

(assert (=> d!468196 (= (list!6651 (_1!9771 lt!548408)) (list!6656 (c!255393 (_1!9771 lt!548408))))))

(declare-fun bs!390571 () Bool)

(assert (= bs!390571 d!468196))

(declare-fun m!1856553 () Bool)

(assert (=> bs!390571 m!1856553))

(assert (=> b!1575868 d!468196))

(assert (=> b!1575868 d!468188))

(assert (=> b!1575868 d!467890))

(declare-fun d!468198 () Bool)

(assert (=> d!468198 (= (isEmpty!10315 (originalCharacters!3853 (h!22677 tokens!457))) ((_ is Nil!17274) (originalCharacters!3853 (h!22677 tokens!457))))))

(assert (=> d!467974 d!468198))

(declare-fun d!468200 () Bool)

(assert (=> d!468200 (= (list!6652 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457)))) (list!6655 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457))))))))

(declare-fun bs!390572 () Bool)

(assert (= bs!390572 d!468200))

(declare-fun m!1856555 () Bool)

(assert (=> bs!390572 m!1856555))

(assert (=> b!1576089 d!468200))

(declare-fun b!1576458 () Bool)

(declare-fun e!1012678 () List!17346)

(declare-fun e!1012679 () List!17346)

(assert (=> b!1576458 (= e!1012678 e!1012679)))

(declare-fun c!255510 () Bool)

(assert (=> b!1576458 (= c!255510 ((_ is Leaf!8467) (c!255393 lt!548370)))))

(declare-fun b!1576459 () Bool)

(assert (=> b!1576459 (= e!1012679 (list!6658 (xs!8531 (c!255393 lt!548370))))))

(declare-fun d!468202 () Bool)

(declare-fun c!255509 () Bool)

(assert (=> d!468202 (= c!255509 ((_ is Empty!5727) (c!255393 lt!548370)))))

(assert (=> d!468202 (= (list!6656 (c!255393 lt!548370)) e!1012678)))

(declare-fun b!1576460 () Bool)

(assert (=> b!1576460 (= e!1012679 (++!4478 (list!6656 (left!13968 (c!255393 lt!548370))) (list!6656 (right!14298 (c!255393 lt!548370)))))))

(declare-fun b!1576457 () Bool)

(assert (=> b!1576457 (= e!1012678 Nil!17276)))

(assert (= (and d!468202 c!255509) b!1576457))

(assert (= (and d!468202 (not c!255509)) b!1576458))

(assert (= (and b!1576458 c!255510) b!1576459))

(assert (= (and b!1576458 (not c!255510)) b!1576460))

(declare-fun m!1856557 () Bool)

(assert (=> b!1576459 m!1856557))

(declare-fun m!1856559 () Bool)

(assert (=> b!1576460 m!1856559))

(declare-fun m!1856561 () Bool)

(assert (=> b!1576460 m!1856561))

(assert (=> b!1576460 m!1856559))

(assert (=> b!1576460 m!1856561))

(declare-fun m!1856563 () Bool)

(assert (=> b!1576460 m!1856563))

(assert (=> d!467962 d!468202))

(assert (=> d!467912 d!467964))

(assert (=> d!467912 d!468192))

(assert (=> d!467912 d!468194))

(assert (=> d!467912 d!467894))

(declare-fun d!468204 () Bool)

(assert (=> d!468204 (= (list!6651 (_1!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457)))))) (list!6656 (c!255393 (_1!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 tokens!457))))))))))

(declare-fun bs!390573 () Bool)

(assert (= bs!390573 d!468204))

(declare-fun m!1856565 () Bool)

(assert (=> bs!390573 m!1856565))

(assert (=> d!467912 d!468204))

(declare-fun d!468206 () Bool)

(assert (=> d!468206 true))

(declare-fun lambda!66391 () Int)

(declare-fun order!10191 () Int)

(declare-fun dynLambda!7664 (Int Int) Int)

(assert (=> d!468206 (< (dynLambda!7657 order!10173 (toValue!4434 (transformation!3039 (h!22676 rules!1846)))) (dynLambda!7664 order!10191 lambda!66391))))

(declare-fun Forall2!499 (Int) Bool)

(assert (=> d!468206 (= (equivClasses!1085 (toChars!4293 (transformation!3039 (h!22676 rules!1846))) (toValue!4434 (transformation!3039 (h!22676 rules!1846)))) (Forall2!499 lambda!66391))))

(declare-fun bs!390574 () Bool)

(assert (= bs!390574 d!468206))

(declare-fun m!1856567 () Bool)

(assert (=> bs!390574 m!1856567))

(assert (=> b!1576084 d!468206))

(declare-fun d!468208 () Bool)

(declare-fun e!1012684 () Bool)

(assert (=> d!468208 e!1012684))

(declare-fun res!702673 () Bool)

(assert (=> d!468208 (=> (not res!702673) (not e!1012684))))

(declare-fun lt!548954 () BalanceConc!11398)

(assert (=> d!468208 (= res!702673 (= (list!6651 lt!548954) (t!143333 tokens!457)))))

(declare-fun fromList!358 (List!17346) Conc!5727)

(assert (=> d!468208 (= lt!548954 (BalanceConc!11399 (fromList!358 (t!143333 tokens!457))))))

(assert (=> d!468208 (= (fromListB!785 (t!143333 tokens!457)) lt!548954)))

(declare-fun b!1576467 () Bool)

(assert (=> b!1576467 (= e!1012684 (isBalanced!1682 (fromList!358 (t!143333 tokens!457))))))

(assert (= (and d!468208 res!702673) b!1576467))

(declare-fun m!1856569 () Bool)

(assert (=> d!468208 m!1856569))

(declare-fun m!1856571 () Bool)

(assert (=> d!468208 m!1856571))

(assert (=> b!1576467 m!1856571))

(assert (=> b!1576467 m!1856571))

(declare-fun m!1856573 () Bool)

(assert (=> b!1576467 m!1856573))

(assert (=> d!467894 d!468208))

(declare-fun d!468210 () Bool)

(assert (=> d!468210 (= (list!6652 lt!548412) (list!6655 (c!255391 lt!548412)))))

(declare-fun bs!390575 () Bool)

(assert (= bs!390575 d!468210))

(declare-fun m!1856575 () Bool)

(assert (=> bs!390575 m!1856575))

(assert (=> d!467906 d!468210))

(declare-fun d!468212 () Bool)

(declare-fun c!255514 () Bool)

(assert (=> d!468212 (= c!255514 ((_ is Cons!17276) (list!6651 lt!548370)))))

(declare-fun e!1012687 () List!17344)

(assert (=> d!468212 (= (printList!791 thiss!17113 (list!6651 lt!548370)) e!1012687)))

(declare-fun b!1576472 () Bool)

(assert (=> b!1576472 (= e!1012687 (++!4475 (list!6652 (charsOf!1688 (h!22677 (list!6651 lt!548370)))) (printList!791 thiss!17113 (t!143333 (list!6651 lt!548370)))))))

(declare-fun b!1576473 () Bool)

(assert (=> b!1576473 (= e!1012687 Nil!17274)))

(assert (= (and d!468212 c!255514) b!1576472))

(assert (= (and d!468212 (not c!255514)) b!1576473))

(declare-fun m!1856577 () Bool)

(assert (=> b!1576472 m!1856577))

(assert (=> b!1576472 m!1856577))

(declare-fun m!1856579 () Bool)

(assert (=> b!1576472 m!1856579))

(declare-fun m!1856581 () Bool)

(assert (=> b!1576472 m!1856581))

(assert (=> b!1576472 m!1856579))

(assert (=> b!1576472 m!1856581))

(declare-fun m!1856583 () Bool)

(assert (=> b!1576472 m!1856583))

(assert (=> d!467906 d!468212))

(assert (=> d!467906 d!467962))

(declare-fun d!468214 () Bool)

(declare-fun lt!548971 () BalanceConc!11396)

(declare-fun printListTailRec!299 (LexerInterface!2668 List!17346 List!17344) List!17344)

(declare-fun dropList!504 (BalanceConc!11398 Int) List!17346)

(assert (=> d!468214 (= (list!6652 lt!548971) (printListTailRec!299 thiss!17113 (dropList!504 lt!548370 0) (list!6652 (BalanceConc!11397 Empty!5726))))))

(declare-fun e!1012692 () BalanceConc!11396)

(assert (=> d!468214 (= lt!548971 e!1012692)))

(declare-fun c!255517 () Bool)

(assert (=> d!468214 (= c!255517 (>= 0 (size!13922 lt!548370)))))

(declare-fun e!1012693 () Bool)

(assert (=> d!468214 e!1012693))

(declare-fun res!702676 () Bool)

(assert (=> d!468214 (=> (not res!702676) (not e!1012693))))

(assert (=> d!468214 (= res!702676 (>= 0 0))))

(assert (=> d!468214 (= (printTailRec!727 thiss!17113 lt!548370 0 (BalanceConc!11397 Empty!5726)) lt!548971)))

(declare-fun b!1576480 () Bool)

(assert (=> b!1576480 (= e!1012693 (<= 0 (size!13922 lt!548370)))))

(declare-fun b!1576481 () Bool)

(assert (=> b!1576481 (= e!1012692 (BalanceConc!11397 Empty!5726))))

(declare-fun b!1576482 () Bool)

(assert (=> b!1576482 (= e!1012692 (printTailRec!727 thiss!17113 lt!548370 (+ 0 1) (++!4479 (BalanceConc!11397 Empty!5726) (charsOf!1688 (apply!4178 lt!548370 0)))))))

(declare-fun lt!548975 () List!17346)

(assert (=> b!1576482 (= lt!548975 (list!6651 lt!548370))))

(declare-fun lt!548974 () Unit!26707)

(declare-fun lemmaDropApply!506 (List!17346 Int) Unit!26707)

(assert (=> b!1576482 (= lt!548974 (lemmaDropApply!506 lt!548975 0))))

(declare-fun head!3167 (List!17346) Token!5644)

(declare-fun drop!808 (List!17346 Int) List!17346)

(assert (=> b!1576482 (= (head!3167 (drop!808 lt!548975 0)) (apply!4180 lt!548975 0))))

(declare-fun lt!548972 () Unit!26707)

(assert (=> b!1576482 (= lt!548972 lt!548974)))

(declare-fun lt!548969 () List!17346)

(assert (=> b!1576482 (= lt!548969 (list!6651 lt!548370))))

(declare-fun lt!548970 () Unit!26707)

(declare-fun lemmaDropTail!486 (List!17346 Int) Unit!26707)

(assert (=> b!1576482 (= lt!548970 (lemmaDropTail!486 lt!548969 0))))

(declare-fun tail!2242 (List!17346) List!17346)

(assert (=> b!1576482 (= (tail!2242 (drop!808 lt!548969 0)) (drop!808 lt!548969 (+ 0 1)))))

(declare-fun lt!548973 () Unit!26707)

(assert (=> b!1576482 (= lt!548973 lt!548970)))

(assert (= (and d!468214 res!702676) b!1576480))

(assert (= (and d!468214 c!255517) b!1576481))

(assert (= (and d!468214 (not c!255517)) b!1576482))

(declare-fun m!1856585 () Bool)

(assert (=> d!468214 m!1856585))

(assert (=> d!468214 m!1856245))

(assert (=> d!468214 m!1856585))

(assert (=> d!468214 m!1856245))

(declare-fun m!1856587 () Bool)

(assert (=> d!468214 m!1856587))

(declare-fun m!1856589 () Bool)

(assert (=> d!468214 m!1856589))

(declare-fun m!1856591 () Bool)

(assert (=> d!468214 m!1856591))

(assert (=> b!1576480 m!1856589))

(declare-fun m!1856593 () Bool)

(assert (=> b!1576482 m!1856593))

(assert (=> b!1576482 m!1856593))

(declare-fun m!1856595 () Bool)

(assert (=> b!1576482 m!1856595))

(declare-fun m!1856597 () Bool)

(assert (=> b!1576482 m!1856597))

(assert (=> b!1576482 m!1855191))

(declare-fun m!1856599 () Bool)

(assert (=> b!1576482 m!1856599))

(declare-fun m!1856601 () Bool)

(assert (=> b!1576482 m!1856601))

(declare-fun m!1856603 () Bool)

(assert (=> b!1576482 m!1856603))

(declare-fun m!1856605 () Bool)

(assert (=> b!1576482 m!1856605))

(declare-fun m!1856607 () Bool)

(assert (=> b!1576482 m!1856607))

(declare-fun m!1856609 () Bool)

(assert (=> b!1576482 m!1856609))

(assert (=> b!1576482 m!1856605))

(declare-fun m!1856611 () Bool)

(assert (=> b!1576482 m!1856611))

(assert (=> b!1576482 m!1856601))

(declare-fun m!1856613 () Bool)

(assert (=> b!1576482 m!1856613))

(declare-fun m!1856615 () Bool)

(assert (=> b!1576482 m!1856615))

(assert (=> b!1576482 m!1856603))

(assert (=> b!1576482 m!1856607))

(assert (=> d!467906 d!468214))

(declare-fun d!468216 () Bool)

(declare-fun lt!548976 () Int)

(assert (=> d!468216 (= lt!548976 (size!13920 (list!6652 (_2!9771 lt!548408))))))

(assert (=> d!468216 (= lt!548976 (size!13928 (c!255391 (_2!9771 lt!548408))))))

(assert (=> d!468216 (= (size!13921 (_2!9771 lt!548408)) lt!548976)))

(declare-fun bs!390576 () Bool)

(assert (= bs!390576 d!468216))

(assert (=> bs!390576 m!1855393))

(assert (=> bs!390576 m!1855393))

(declare-fun m!1856617 () Bool)

(assert (=> bs!390576 m!1856617))

(declare-fun m!1856619 () Bool)

(assert (=> bs!390576 m!1856619))

(assert (=> b!1575866 d!468216))

(declare-fun d!468218 () Bool)

(declare-fun lt!548977 () Int)

(assert (=> d!468218 (= lt!548977 (size!13920 (list!6652 lt!548364)))))

(assert (=> d!468218 (= lt!548977 (size!13928 (c!255391 lt!548364)))))

(assert (=> d!468218 (= (size!13921 lt!548364) lt!548977)))

(declare-fun bs!390577 () Bool)

(assert (= bs!390577 d!468218))

(assert (=> bs!390577 m!1855235))

(assert (=> bs!390577 m!1855235))

(assert (=> bs!390577 m!1856513))

(declare-fun m!1856621 () Bool)

(assert (=> bs!390577 m!1856621))

(assert (=> b!1575866 d!468218))

(declare-fun bs!390578 () Bool)

(declare-fun d!468220 () Bool)

(assert (= bs!390578 (and d!468220 d!468206)))

(declare-fun lambda!66392 () Int)

(assert (=> bs!390578 (= (= (toValue!4434 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (toValue!4434 (transformation!3039 (h!22676 rules!1846)))) (= lambda!66392 lambda!66391))))

(assert (=> d!468220 true))

(assert (=> d!468220 (< (dynLambda!7657 order!10173 (toValue!4434 (transformation!3039 (rule!4831 (h!22677 tokens!457))))) (dynLambda!7664 order!10191 lambda!66392))))

(assert (=> d!468220 (= (equivClasses!1085 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (toValue!4434 (transformation!3039 (rule!4831 (h!22677 tokens!457))))) (Forall2!499 lambda!66392))))

(declare-fun bs!390579 () Bool)

(assert (= bs!390579 d!468220))

(declare-fun m!1856623 () Bool)

(assert (=> bs!390579 m!1856623))

(assert (=> b!1576094 d!468220))

(declare-fun d!468222 () Bool)

(assert (=> d!468222 (= (inv!22680 (tag!3305 (rule!4831 (h!22677 (t!143333 tokens!457))))) (= (mod (str.len (value!96283 (tag!3305 (rule!4831 (h!22677 (t!143333 tokens!457)))))) 2) 0))))

(assert (=> b!1576126 d!468222))

(declare-fun d!468224 () Bool)

(declare-fun res!702677 () Bool)

(declare-fun e!1012694 () Bool)

(assert (=> d!468224 (=> (not res!702677) (not e!1012694))))

(assert (=> d!468224 (= res!702677 (semiInverseModEq!1144 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (toValue!4434 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))))))))

(assert (=> d!468224 (= (inv!22684 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) e!1012694)))

(declare-fun b!1576483 () Bool)

(assert (=> b!1576483 (= e!1012694 (equivClasses!1085 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (toValue!4434 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))))))))

(assert (= (and d!468224 res!702677) b!1576483))

(declare-fun m!1856625 () Bool)

(assert (=> d!468224 m!1856625))

(declare-fun m!1856627 () Bool)

(assert (=> b!1576483 m!1856627))

(assert (=> b!1576126 d!468224))

(declare-fun d!468226 () Bool)

(declare-fun e!1012695 () Bool)

(assert (=> d!468226 e!1012695))

(declare-fun res!702678 () Bool)

(assert (=> d!468226 (=> (not res!702678) (not e!1012695))))

(declare-fun lt!548978 () BalanceConc!11398)

(assert (=> d!468226 (= res!702678 (= (list!6651 lt!548978) (t!143333 (t!143333 tokens!457))))))

(assert (=> d!468226 (= lt!548978 (BalanceConc!11399 (fromList!358 (t!143333 (t!143333 tokens!457)))))))

(assert (=> d!468226 (= (fromListB!785 (t!143333 (t!143333 tokens!457))) lt!548978)))

(declare-fun b!1576484 () Bool)

(assert (=> b!1576484 (= e!1012695 (isBalanced!1682 (fromList!358 (t!143333 (t!143333 tokens!457)))))))

(assert (= (and d!468226 res!702678) b!1576484))

(declare-fun m!1856629 () Bool)

(assert (=> d!468226 m!1856629))

(declare-fun m!1856631 () Bool)

(assert (=> d!468226 m!1856631))

(assert (=> b!1576484 m!1856631))

(assert (=> b!1576484 m!1856631))

(declare-fun m!1856633 () Bool)

(assert (=> b!1576484 m!1856633))

(assert (=> d!467960 d!468226))

(declare-fun d!468228 () Bool)

(declare-fun res!702679 () Bool)

(declare-fun e!1012696 () Bool)

(assert (=> d!468228 (=> res!702679 e!1012696)))

(assert (=> d!468228 (= res!702679 (or (not ((_ is Cons!17276) (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457))))) (not ((_ is Cons!17276) (t!143333 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457))))))))))

(assert (=> d!468228 (= (tokensListTwoByTwoPredicateSeparableList!361 thiss!17113 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457))) rules!1846) e!1012696)))

(declare-fun b!1576485 () Bool)

(declare-fun e!1012697 () Bool)

(assert (=> b!1576485 (= e!1012696 e!1012697)))

(declare-fun res!702680 () Bool)

(assert (=> b!1576485 (=> (not res!702680) (not e!1012697))))

(assert (=> b!1576485 (= res!702680 (separableTokensPredicate!610 thiss!17113 (h!22677 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457))))) rules!1846))))

(declare-fun lt!548984 () Unit!26707)

(declare-fun Unit!26760 () Unit!26707)

(assert (=> b!1576485 (= lt!548984 Unit!26760)))

(assert (=> b!1576485 (> (size!13921 (charsOf!1688 (h!22677 (t!143333 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457))))))) 0)))

(declare-fun lt!548982 () Unit!26707)

(declare-fun Unit!26761 () Unit!26707)

(assert (=> b!1576485 (= lt!548982 Unit!26761)))

(assert (=> b!1576485 (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 (t!143333 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457))))))))

(declare-fun lt!548980 () Unit!26707)

(declare-fun Unit!26762 () Unit!26707)

(assert (=> b!1576485 (= lt!548980 Unit!26762)))

(assert (=> b!1576485 (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457)))))))

(declare-fun lt!548985 () Unit!26707)

(declare-fun lt!548981 () Unit!26707)

(assert (=> b!1576485 (= lt!548985 lt!548981)))

(assert (=> b!1576485 (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 (t!143333 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457))))))))

(assert (=> b!1576485 (= lt!548981 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!509 thiss!17113 rules!1846 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457))) (h!22677 (t!143333 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457)))))))))

(declare-fun lt!548979 () Unit!26707)

(declare-fun lt!548983 () Unit!26707)

(assert (=> b!1576485 (= lt!548979 lt!548983)))

(assert (=> b!1576485 (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457)))))))

(assert (=> b!1576485 (= lt!548983 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!509 thiss!17113 rules!1846 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457))) (h!22677 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457))))))))

(declare-fun b!1576486 () Bool)

(assert (=> b!1576486 (= e!1012697 (tokensListTwoByTwoPredicateSeparableList!361 thiss!17113 (Cons!17276 (h!22677 (t!143333 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457))))) (t!143333 (t!143333 (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457)))))) rules!1846))))

(assert (= (and d!468228 (not res!702679)) b!1576485))

(assert (= (and b!1576485 res!702680) b!1576486))

(declare-fun m!1856635 () Bool)

(assert (=> b!1576485 m!1856635))

(declare-fun m!1856637 () Bool)

(assert (=> b!1576485 m!1856637))

(declare-fun m!1856639 () Bool)

(assert (=> b!1576485 m!1856639))

(declare-fun m!1856641 () Bool)

(assert (=> b!1576485 m!1856641))

(declare-fun m!1856643 () Bool)

(assert (=> b!1576485 m!1856643))

(declare-fun m!1856645 () Bool)

(assert (=> b!1576485 m!1856645))

(assert (=> b!1576485 m!1856643))

(declare-fun m!1856647 () Bool)

(assert (=> b!1576485 m!1856647))

(declare-fun m!1856649 () Bool)

(assert (=> b!1576486 m!1856649))

(assert (=> b!1576051 d!468228))

(assert (=> b!1575961 d!467976))

(declare-fun b!1576489 () Bool)

(declare-fun res!702682 () Bool)

(declare-fun e!1012699 () Bool)

(assert (=> b!1576489 (=> (not res!702682) (not e!1012699))))

(declare-fun lt!548986 () List!17344)

(assert (=> b!1576489 (= res!702682 (= (size!13920 lt!548986) (+ (size!13920 (t!143331 lt!548376)) (size!13920 lt!548373))))))

(declare-fun d!468230 () Bool)

(assert (=> d!468230 e!1012699))

(declare-fun res!702681 () Bool)

(assert (=> d!468230 (=> (not res!702681) (not e!1012699))))

(assert (=> d!468230 (= res!702681 (= (content!2379 lt!548986) ((_ map or) (content!2379 (t!143331 lt!548376)) (content!2379 lt!548373))))))

(declare-fun e!1012698 () List!17344)

(assert (=> d!468230 (= lt!548986 e!1012698)))

(declare-fun c!255518 () Bool)

(assert (=> d!468230 (= c!255518 ((_ is Nil!17274) (t!143331 lt!548376)))))

(assert (=> d!468230 (= (++!4475 (t!143331 lt!548376) lt!548373) lt!548986)))

(declare-fun b!1576490 () Bool)

(assert (=> b!1576490 (= e!1012699 (or (not (= lt!548373 Nil!17274)) (= lt!548986 (t!143331 lt!548376))))))

(declare-fun b!1576488 () Bool)

(assert (=> b!1576488 (= e!1012698 (Cons!17274 (h!22675 (t!143331 lt!548376)) (++!4475 (t!143331 (t!143331 lt!548376)) lt!548373)))))

(declare-fun b!1576487 () Bool)

(assert (=> b!1576487 (= e!1012698 lt!548373)))

(assert (= (and d!468230 c!255518) b!1576487))

(assert (= (and d!468230 (not c!255518)) b!1576488))

(assert (= (and d!468230 res!702681) b!1576489))

(assert (= (and b!1576489 res!702682) b!1576490))

(declare-fun m!1856651 () Bool)

(assert (=> b!1576489 m!1856651))

(assert (=> b!1576489 m!1856451))

(assert (=> b!1576489 m!1855337))

(declare-fun m!1856653 () Bool)

(assert (=> d!468230 m!1856653))

(declare-fun m!1856655 () Bool)

(assert (=> d!468230 m!1856655))

(assert (=> d!468230 m!1855343))

(declare-fun m!1856657 () Bool)

(assert (=> b!1576488 m!1856657))

(assert (=> b!1575837 d!468230))

(declare-fun d!468232 () Bool)

(declare-fun e!1012700 () Bool)

(assert (=> d!468232 e!1012700))

(declare-fun res!702683 () Bool)

(assert (=> d!468232 (=> (not res!702683) (not e!1012700))))

(declare-fun lt!548987 () BalanceConc!11398)

(assert (=> d!468232 (= res!702683 (= (list!6651 lt!548987) tokens!457))))

(assert (=> d!468232 (= lt!548987 (BalanceConc!11399 (fromList!358 tokens!457)))))

(assert (=> d!468232 (= (fromListB!785 tokens!457) lt!548987)))

(declare-fun b!1576491 () Bool)

(assert (=> b!1576491 (= e!1012700 (isBalanced!1682 (fromList!358 tokens!457)))))

(assert (= (and d!468232 res!702683) b!1576491))

(declare-fun m!1856659 () Bool)

(assert (=> d!468232 m!1856659))

(declare-fun m!1856661 () Bool)

(assert (=> d!468232 m!1856661))

(assert (=> b!1576491 m!1856661))

(assert (=> b!1576491 m!1856661))

(declare-fun m!1856663 () Bool)

(assert (=> b!1576491 m!1856663))

(assert (=> d!467908 d!468232))

(declare-fun d!468234 () Bool)

(declare-fun lt!548988 () Bool)

(assert (=> d!468234 (= lt!548988 (isEmpty!10315 (list!6652 (_2!9771 lt!548651))))))

(assert (=> d!468234 (= lt!548988 (isEmpty!10316 (c!255391 (_2!9771 lt!548651))))))

(assert (=> d!468234 (= (isEmpty!10311 (_2!9771 lt!548651)) lt!548988)))

(declare-fun bs!390580 () Bool)

(assert (= bs!390580 d!468234))

(declare-fun m!1856665 () Bool)

(assert (=> bs!390580 m!1856665))

(assert (=> bs!390580 m!1856665))

(declare-fun m!1856667 () Bool)

(assert (=> bs!390580 m!1856667))

(declare-fun m!1856669 () Bool)

(assert (=> bs!390580 m!1856669))

(assert (=> b!1576080 d!468234))

(declare-fun b!1576502 () Bool)

(declare-fun e!1012706 () List!17344)

(declare-fun list!6659 (IArray!11457) List!17344)

(assert (=> b!1576502 (= e!1012706 (list!6659 (xs!8530 (c!255391 (charsOf!1688 (h!22677 tokens!457))))))))

(declare-fun b!1576503 () Bool)

(assert (=> b!1576503 (= e!1012706 (++!4475 (list!6655 (left!13967 (c!255391 (charsOf!1688 (h!22677 tokens!457))))) (list!6655 (right!14297 (c!255391 (charsOf!1688 (h!22677 tokens!457)))))))))

(declare-fun b!1576500 () Bool)

(declare-fun e!1012705 () List!17344)

(assert (=> b!1576500 (= e!1012705 Nil!17274)))

(declare-fun b!1576501 () Bool)

(assert (=> b!1576501 (= e!1012705 e!1012706)))

(declare-fun c!255524 () Bool)

(assert (=> b!1576501 (= c!255524 ((_ is Leaf!8466) (c!255391 (charsOf!1688 (h!22677 tokens!457)))))))

(declare-fun d!468236 () Bool)

(declare-fun c!255523 () Bool)

(assert (=> d!468236 (= c!255523 ((_ is Empty!5726) (c!255391 (charsOf!1688 (h!22677 tokens!457)))))))

(assert (=> d!468236 (= (list!6655 (c!255391 (charsOf!1688 (h!22677 tokens!457)))) e!1012705)))

(assert (= (and d!468236 c!255523) b!1576500))

(assert (= (and d!468236 (not c!255523)) b!1576501))

(assert (= (and b!1576501 c!255524) b!1576502))

(assert (= (and b!1576501 (not c!255524)) b!1576503))

(declare-fun m!1856671 () Bool)

(assert (=> b!1576502 m!1856671))

(declare-fun m!1856673 () Bool)

(assert (=> b!1576503 m!1856673))

(declare-fun m!1856675 () Bool)

(assert (=> b!1576503 m!1856675))

(assert (=> b!1576503 m!1856673))

(assert (=> b!1576503 m!1856675))

(declare-fun m!1856677 () Bool)

(assert (=> b!1576503 m!1856677))

(assert (=> d!467896 d!468236))

(declare-fun d!468238 () Bool)

(declare-fun lt!548989 () Bool)

(assert (=> d!468238 (= lt!548989 (isEmpty!10315 (list!6652 (_2!9771 lt!548653))))))

(assert (=> d!468238 (= lt!548989 (isEmpty!10316 (c!255391 (_2!9771 lt!548653))))))

(assert (=> d!468238 (= (isEmpty!10311 (_2!9771 lt!548653)) lt!548989)))

(declare-fun bs!390581 () Bool)

(assert (= bs!390581 d!468238))

(declare-fun m!1856679 () Bool)

(assert (=> bs!390581 m!1856679))

(assert (=> bs!390581 m!1856679))

(declare-fun m!1856681 () Bool)

(assert (=> bs!390581 m!1856681))

(declare-fun m!1856683 () Bool)

(assert (=> bs!390581 m!1856683))

(assert (=> b!1576092 d!468238))

(declare-fun b!1576506 () Bool)

(declare-fun e!1012708 () List!17344)

(assert (=> b!1576506 (= e!1012708 (list!6659 (xs!8530 (c!255391 lt!548372))))))

(declare-fun b!1576507 () Bool)

(assert (=> b!1576507 (= e!1012708 (++!4475 (list!6655 (left!13967 (c!255391 lt!548372))) (list!6655 (right!14297 (c!255391 lt!548372)))))))

(declare-fun b!1576504 () Bool)

(declare-fun e!1012707 () List!17344)

(assert (=> b!1576504 (= e!1012707 Nil!17274)))

(declare-fun b!1576505 () Bool)

(assert (=> b!1576505 (= e!1012707 e!1012708)))

(declare-fun c!255526 () Bool)

(assert (=> b!1576505 (= c!255526 ((_ is Leaf!8466) (c!255391 lt!548372)))))

(declare-fun d!468240 () Bool)

(declare-fun c!255525 () Bool)

(assert (=> d!468240 (= c!255525 ((_ is Empty!5726) (c!255391 lt!548372)))))

(assert (=> d!468240 (= (list!6655 (c!255391 lt!548372)) e!1012707)))

(assert (= (and d!468240 c!255525) b!1576504))

(assert (= (and d!468240 (not c!255525)) b!1576505))

(assert (= (and b!1576505 c!255526) b!1576506))

(assert (= (and b!1576505 (not c!255526)) b!1576507))

(declare-fun m!1856685 () Bool)

(assert (=> b!1576506 m!1856685))

(declare-fun m!1856687 () Bool)

(assert (=> b!1576507 m!1856687))

(declare-fun m!1856689 () Bool)

(assert (=> b!1576507 m!1856689))

(assert (=> b!1576507 m!1856687))

(assert (=> b!1576507 m!1856689))

(declare-fun m!1856691 () Bool)

(assert (=> b!1576507 m!1856691))

(assert (=> d!467886 d!468240))

(declare-fun d!468242 () Bool)

(declare-fun res!702684 () Bool)

(declare-fun e!1012709 () Bool)

(assert (=> d!468242 (=> (not res!702684) (not e!1012709))))

(assert (=> d!468242 (= res!702684 (not (isEmpty!10315 (originalCharacters!3853 (h!22677 (t!143333 tokens!457))))))))

(assert (=> d!468242 (= (inv!22683 (h!22677 (t!143333 tokens!457))) e!1012709)))

(declare-fun b!1576508 () Bool)

(declare-fun res!702685 () Bool)

(assert (=> b!1576508 (=> (not res!702685) (not e!1012709))))

(assert (=> b!1576508 (= res!702685 (= (originalCharacters!3853 (h!22677 (t!143333 tokens!457))) (list!6652 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457)))))))))

(declare-fun b!1576509 () Bool)

(assert (=> b!1576509 (= e!1012709 (= (size!13916 (h!22677 (t!143333 tokens!457))) (size!13920 (originalCharacters!3853 (h!22677 (t!143333 tokens!457))))))))

(assert (= (and d!468242 res!702684) b!1576508))

(assert (= (and b!1576508 res!702685) b!1576509))

(declare-fun b_lambda!49621 () Bool)

(assert (=> (not b_lambda!49621) (not b!1576508)))

(assert (=> b!1576508 t!143339))

(declare-fun b_and!110365 () Bool)

(assert (= b_and!110345 (and (=> t!143339 result!107288) b_and!110365)))

(assert (=> b!1576508 t!143341))

(declare-fun b_and!110367 () Bool)

(assert (= b_and!110347 (and (=> t!143341 result!107292) b_and!110367)))

(assert (=> b!1576508 t!143366))

(declare-fun b_and!110369 () Bool)

(assert (= b_and!110351 (and (=> t!143366 result!107324) b_and!110369)))

(assert (=> b!1576508 t!143370))

(declare-fun b_and!110371 () Bool)

(assert (= b_and!110355 (and (=> t!143370 result!107330) b_and!110371)))

(declare-fun m!1856693 () Bool)

(assert (=> d!468242 m!1856693))

(assert (=> b!1576508 m!1855329))

(assert (=> b!1576508 m!1855329))

(declare-fun m!1856695 () Bool)

(assert (=> b!1576508 m!1856695))

(declare-fun m!1856697 () Bool)

(assert (=> b!1576509 m!1856697))

(assert (=> b!1576124 d!468242))

(declare-fun d!468244 () Bool)

(assert (=> d!468244 (= (list!6652 lt!548402) (list!6655 (c!255391 lt!548402)))))

(declare-fun bs!390582 () Bool)

(assert (= bs!390582 d!468244))

(declare-fun m!1856699 () Bool)

(assert (=> bs!390582 m!1856699))

(assert (=> d!467892 d!468244))

(declare-fun b!1576513 () Bool)

(declare-fun e!1012711 () Bool)

(assert (=> b!1576513 (= e!1012711 (>= (size!13920 (tail!2240 lt!548365)) (size!13920 (tail!2240 lt!548376))))))

(declare-fun b!1576510 () Bool)

(declare-fun e!1012712 () Bool)

(declare-fun e!1012710 () Bool)

(assert (=> b!1576510 (= e!1012712 e!1012710)))

(declare-fun res!702689 () Bool)

(assert (=> b!1576510 (=> (not res!702689) (not e!1012710))))

(assert (=> b!1576510 (= res!702689 (not ((_ is Nil!17274) (tail!2240 lt!548365))))))

(declare-fun d!468246 () Bool)

(assert (=> d!468246 e!1012711))

(declare-fun res!702686 () Bool)

(assert (=> d!468246 (=> res!702686 e!1012711)))

(declare-fun lt!548990 () Bool)

(assert (=> d!468246 (= res!702686 (not lt!548990))))

(assert (=> d!468246 (= lt!548990 e!1012712)))

(declare-fun res!702687 () Bool)

(assert (=> d!468246 (=> res!702687 e!1012712)))

(assert (=> d!468246 (= res!702687 ((_ is Nil!17274) (tail!2240 lt!548376)))))

(assert (=> d!468246 (= (isPrefix!1299 (tail!2240 lt!548376) (tail!2240 lt!548365)) lt!548990)))

(declare-fun b!1576512 () Bool)

(assert (=> b!1576512 (= e!1012710 (isPrefix!1299 (tail!2240 (tail!2240 lt!548376)) (tail!2240 (tail!2240 lt!548365))))))

(declare-fun b!1576511 () Bool)

(declare-fun res!702688 () Bool)

(assert (=> b!1576511 (=> (not res!702688) (not e!1012710))))

(assert (=> b!1576511 (= res!702688 (= (head!3164 (tail!2240 lt!548376)) (head!3164 (tail!2240 lt!548365))))))

(assert (= (and d!468246 (not res!702687)) b!1576510))

(assert (= (and b!1576510 res!702689) b!1576511))

(assert (= (and b!1576511 res!702688) b!1576512))

(assert (= (and d!468246 (not res!702686)) b!1576513))

(assert (=> b!1576513 m!1855601))

(declare-fun m!1856701 () Bool)

(assert (=> b!1576513 m!1856701))

(assert (=> b!1576513 m!1855599))

(declare-fun m!1856703 () Bool)

(assert (=> b!1576513 m!1856703))

(assert (=> b!1576512 m!1855599))

(declare-fun m!1856705 () Bool)

(assert (=> b!1576512 m!1856705))

(assert (=> b!1576512 m!1855601))

(declare-fun m!1856707 () Bool)

(assert (=> b!1576512 m!1856707))

(assert (=> b!1576512 m!1856705))

(assert (=> b!1576512 m!1856707))

(declare-fun m!1856709 () Bool)

(assert (=> b!1576512 m!1856709))

(assert (=> b!1576511 m!1855599))

(declare-fun m!1856711 () Bool)

(assert (=> b!1576511 m!1856711))

(assert (=> b!1576511 m!1855601))

(declare-fun m!1856713 () Bool)

(assert (=> b!1576511 m!1856713))

(assert (=> b!1575923 d!468246))

(declare-fun d!468248 () Bool)

(assert (=> d!468248 (= (tail!2240 lt!548376) (t!143331 lt!548376))))

(assert (=> b!1575923 d!468248))

(declare-fun d!468250 () Bool)

(assert (=> d!468250 (= (tail!2240 lt!548365) (t!143331 lt!548365))))

(assert (=> b!1575923 d!468250))

(declare-fun d!468252 () Bool)

(assert (=> d!468252 (= (list!6651 lt!548643) (list!6656 (c!255393 lt!548643)))))

(declare-fun bs!390583 () Bool)

(assert (= bs!390583 d!468252))

(declare-fun m!1856715 () Bool)

(assert (=> bs!390583 m!1856715))

(assert (=> b!1576057 d!468252))

(declare-fun d!468254 () Bool)

(assert (=> d!468254 (= (list!6651 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))) (list!6656 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457))))))))

(declare-fun bs!390584 () Bool)

(assert (= bs!390584 d!468254))

(declare-fun m!1856717 () Bool)

(assert (=> bs!390584 m!1856717))

(assert (=> b!1576057 d!468254))

(declare-fun d!468256 () Bool)

(declare-fun lt!548993 () Bool)

(assert (=> d!468256 (= lt!548993 (isEmpty!10321 (list!6651 (_1!9771 lt!548408))))))

(declare-fun isEmpty!10322 (Conc!5727) Bool)

(assert (=> d!468256 (= lt!548993 (isEmpty!10322 (c!255393 (_1!9771 lt!548408))))))

(assert (=> d!468256 (= (isEmpty!10317 (_1!9771 lt!548408)) lt!548993)))

(declare-fun bs!390585 () Bool)

(assert (= bs!390585 d!468256))

(assert (=> bs!390585 m!1855389))

(assert (=> bs!390585 m!1855389))

(declare-fun m!1856719 () Bool)

(assert (=> bs!390585 m!1856719))

(declare-fun m!1856721 () Bool)

(assert (=> bs!390585 m!1856721))

(assert (=> b!1575869 d!468256))

(declare-fun d!468258 () Bool)

(assert (=> d!468258 (= (list!6652 lt!548398) (list!6655 (c!255391 lt!548398)))))

(declare-fun bs!390586 () Bool)

(assert (= bs!390586 d!468258))

(declare-fun m!1856723 () Bool)

(assert (=> bs!390586 m!1856723))

(assert (=> d!467884 d!468258))

(declare-fun b!1576516 () Bool)

(declare-fun e!1012714 () List!17344)

(assert (=> b!1576516 (= e!1012714 (list!6659 (xs!8530 (c!255391 lt!548364))))))

(declare-fun b!1576517 () Bool)

(assert (=> b!1576517 (= e!1012714 (++!4475 (list!6655 (left!13967 (c!255391 lt!548364))) (list!6655 (right!14297 (c!255391 lt!548364)))))))

(declare-fun b!1576514 () Bool)

(declare-fun e!1012713 () List!17344)

(assert (=> b!1576514 (= e!1012713 Nil!17274)))

(declare-fun b!1576515 () Bool)

(assert (=> b!1576515 (= e!1012713 e!1012714)))

(declare-fun c!255528 () Bool)

(assert (=> b!1576515 (= c!255528 ((_ is Leaf!8466) (c!255391 lt!548364)))))

(declare-fun d!468260 () Bool)

(declare-fun c!255527 () Bool)

(assert (=> d!468260 (= c!255527 ((_ is Empty!5726) (c!255391 lt!548364)))))

(assert (=> d!468260 (= (list!6655 (c!255391 lt!548364)) e!1012713)))

(assert (= (and d!468260 c!255527) b!1576514))

(assert (= (and d!468260 (not c!255527)) b!1576515))

(assert (= (and b!1576515 c!255528) b!1576516))

(assert (= (and b!1576515 (not c!255528)) b!1576517))

(declare-fun m!1856725 () Bool)

(assert (=> b!1576516 m!1856725))

(declare-fun m!1856727 () Bool)

(assert (=> b!1576517 m!1856727))

(declare-fun m!1856729 () Bool)

(assert (=> b!1576517 m!1856729))

(assert (=> b!1576517 m!1856727))

(assert (=> b!1576517 m!1856729))

(declare-fun m!1856731 () Bool)

(assert (=> b!1576517 m!1856731))

(assert (=> d!467890 d!468260))

(declare-fun b!1576530 () Bool)

(declare-fun res!702704 () Bool)

(declare-fun e!1012719 () Bool)

(assert (=> b!1576530 (=> (not res!702704) (not e!1012719))))

(assert (=> b!1576530 (= res!702704 (not (isEmpty!10322 (left!13968 (prepend!511 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 tokens!457)))))))))

(declare-fun b!1576531 () Bool)

(declare-fun res!702706 () Bool)

(assert (=> b!1576531 (=> (not res!702706) (not e!1012719))))

(declare-fun height!843 (Conc!5727) Int)

(assert (=> b!1576531 (= res!702706 (<= (- (height!843 (left!13968 (prepend!511 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 tokens!457))))) (height!843 (right!14298 (prepend!511 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 tokens!457)))))) 1))))

(declare-fun b!1576532 () Bool)

(declare-fun res!702703 () Bool)

(assert (=> b!1576532 (=> (not res!702703) (not e!1012719))))

(assert (=> b!1576532 (= res!702703 (isBalanced!1682 (left!13968 (prepend!511 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 tokens!457))))))))

(declare-fun d!468262 () Bool)

(declare-fun res!702702 () Bool)

(declare-fun e!1012720 () Bool)

(assert (=> d!468262 (=> res!702702 e!1012720)))

(assert (=> d!468262 (= res!702702 (not ((_ is Node!5727) (prepend!511 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 tokens!457))))))))

(assert (=> d!468262 (= (isBalanced!1682 (prepend!511 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 tokens!457)))) e!1012720)))

(declare-fun b!1576533 () Bool)

(declare-fun res!702707 () Bool)

(assert (=> b!1576533 (=> (not res!702707) (not e!1012719))))

(assert (=> b!1576533 (= res!702707 (isBalanced!1682 (right!14298 (prepend!511 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 tokens!457))))))))

(declare-fun b!1576534 () Bool)

(assert (=> b!1576534 (= e!1012719 (not (isEmpty!10322 (right!14298 (prepend!511 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 tokens!457)))))))))

(declare-fun b!1576535 () Bool)

(assert (=> b!1576535 (= e!1012720 e!1012719)))

(declare-fun res!702705 () Bool)

(assert (=> b!1576535 (=> (not res!702705) (not e!1012719))))

(assert (=> b!1576535 (= res!702705 (<= (- 1) (- (height!843 (left!13968 (prepend!511 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 tokens!457))))) (height!843 (right!14298 (prepend!511 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 tokens!457))))))))))

(assert (= (and d!468262 (not res!702702)) b!1576535))

(assert (= (and b!1576535 res!702705) b!1576531))

(assert (= (and b!1576531 res!702706) b!1576532))

(assert (= (and b!1576532 res!702703) b!1576533))

(assert (= (and b!1576533 res!702707) b!1576530))

(assert (= (and b!1576530 res!702704) b!1576534))

(declare-fun m!1856733 () Bool)

(assert (=> b!1576531 m!1856733))

(declare-fun m!1856735 () Bool)

(assert (=> b!1576531 m!1856735))

(declare-fun m!1856737 () Bool)

(assert (=> b!1576532 m!1856737))

(declare-fun m!1856739 () Bool)

(assert (=> b!1576534 m!1856739))

(assert (=> b!1576535 m!1856733))

(assert (=> b!1576535 m!1856735))

(declare-fun m!1856741 () Bool)

(assert (=> b!1576530 m!1856741))

(declare-fun m!1856743 () Bool)

(assert (=> b!1576533 m!1856743))

(assert (=> d!467954 d!468262))

(declare-fun d!468264 () Bool)

(declare-fun e!1012723 () Bool)

(assert (=> d!468264 e!1012723))

(declare-fun res!702710 () Bool)

(assert (=> d!468264 (=> (not res!702710) (not e!1012723))))

(declare-fun lt!548996 () Conc!5727)

(assert (=> d!468264 (= res!702710 (isBalanced!1682 lt!548996))))

(declare-fun ++!4480 (Conc!5727 Conc!5727) Conc!5727)

(declare-fun fill!79 (Int Token!5644) IArray!11459)

(assert (=> d!468264 (= lt!548996 (++!4480 (Leaf!8467 (fill!79 1 (h!22677 (t!143333 tokens!457))) 1) (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457))))))))

(assert (=> d!468264 (isBalanced!1682 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))))))

(assert (=> d!468264 (= (prepend!511 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 tokens!457))) lt!548996)))

(declare-fun b!1576538 () Bool)

(assert (=> b!1576538 (= e!1012723 (= (list!6656 lt!548996) (Cons!17276 (h!22677 (t!143333 tokens!457)) (list!6656 (c!255393 (seqFromList!1836 (t!143333 (t!143333 tokens!457))))))))))

(assert (= (and d!468264 res!702710) b!1576538))

(declare-fun m!1856745 () Bool)

(assert (=> d!468264 m!1856745))

(declare-fun m!1856747 () Bool)

(assert (=> d!468264 m!1856747))

(declare-fun m!1856749 () Bool)

(assert (=> d!468264 m!1856749))

(declare-fun m!1856751 () Bool)

(assert (=> d!468264 m!1856751))

(declare-fun m!1856753 () Bool)

(assert (=> b!1576538 m!1856753))

(assert (=> b!1576538 m!1856717))

(assert (=> d!467954 d!468264))

(declare-fun d!468266 () Bool)

(declare-fun charsToBigInt!0 (List!17343 Int) Int)

(assert (=> d!468266 (= (inv!15 (value!96284 (h!22677 tokens!457))) (= (charsToBigInt!0 (text!22352 (value!96284 (h!22677 tokens!457))) 0) (value!96279 (value!96284 (h!22677 tokens!457)))))))

(declare-fun bs!390587 () Bool)

(assert (= bs!390587 d!468266))

(declare-fun m!1856755 () Bool)

(assert (=> bs!390587 m!1856755))

(assert (=> b!1576068 d!468266))

(declare-fun d!468268 () Bool)

(declare-fun lt!548997 () Int)

(assert (=> d!468268 (>= lt!548997 0)))

(declare-fun e!1012724 () Int)

(assert (=> d!468268 (= lt!548997 e!1012724)))

(declare-fun c!255529 () Bool)

(assert (=> d!468268 (= c!255529 ((_ is Nil!17274) (originalCharacters!3853 (h!22677 tokens!457))))))

(assert (=> d!468268 (= (size!13920 (originalCharacters!3853 (h!22677 tokens!457))) lt!548997)))

(declare-fun b!1576539 () Bool)

(assert (=> b!1576539 (= e!1012724 0)))

(declare-fun b!1576540 () Bool)

(assert (=> b!1576540 (= e!1012724 (+ 1 (size!13920 (t!143331 (originalCharacters!3853 (h!22677 tokens!457))))))))

(assert (= (and d!468268 c!255529) b!1576539))

(assert (= (and d!468268 (not c!255529)) b!1576540))

(declare-fun m!1856757 () Bool)

(assert (=> b!1576540 m!1856757))

(assert (=> b!1576090 d!468268))

(declare-fun d!468270 () Bool)

(declare-fun c!255532 () Bool)

(assert (=> d!468270 (= c!255532 ((_ is Nil!17274) lt!548401))))

(declare-fun e!1012727 () (InoxSet C!8908))

(assert (=> d!468270 (= (content!2379 lt!548401) e!1012727)))

(declare-fun b!1576545 () Bool)

(assert (=> b!1576545 (= e!1012727 ((as const (Array C!8908 Bool)) false))))

(declare-fun b!1576546 () Bool)

(assert (=> b!1576546 (= e!1012727 ((_ map or) (store ((as const (Array C!8908 Bool)) false) (h!22675 lt!548401) true) (content!2379 (t!143331 lt!548401))))))

(assert (= (and d!468270 c!255532) b!1576545))

(assert (= (and d!468270 (not c!255532)) b!1576546))

(declare-fun m!1856759 () Bool)

(assert (=> b!1576546 m!1856759))

(declare-fun m!1856761 () Bool)

(assert (=> b!1576546 m!1856761))

(assert (=> d!467888 d!468270))

(declare-fun d!468272 () Bool)

(declare-fun c!255533 () Bool)

(assert (=> d!468272 (= c!255533 ((_ is Nil!17274) lt!548376))))

(declare-fun e!1012728 () (InoxSet C!8908))

(assert (=> d!468272 (= (content!2379 lt!548376) e!1012728)))

(declare-fun b!1576547 () Bool)

(assert (=> b!1576547 (= e!1012728 ((as const (Array C!8908 Bool)) false))))

(declare-fun b!1576548 () Bool)

(assert (=> b!1576548 (= e!1012728 ((_ map or) (store ((as const (Array C!8908 Bool)) false) (h!22675 lt!548376) true) (content!2379 (t!143331 lt!548376))))))

(assert (= (and d!468272 c!255533) b!1576547))

(assert (= (and d!468272 (not c!255533)) b!1576548))

(declare-fun m!1856763 () Bool)

(assert (=> b!1576548 m!1856763))

(assert (=> b!1576548 m!1856655))

(assert (=> d!467888 d!468272))

(declare-fun d!468274 () Bool)

(declare-fun c!255534 () Bool)

(assert (=> d!468274 (= c!255534 ((_ is Nil!17274) lt!548373))))

(declare-fun e!1012729 () (InoxSet C!8908))

(assert (=> d!468274 (= (content!2379 lt!548373) e!1012729)))

(declare-fun b!1576549 () Bool)

(assert (=> b!1576549 (= e!1012729 ((as const (Array C!8908 Bool)) false))))

(declare-fun b!1576550 () Bool)

(assert (=> b!1576550 (= e!1012729 ((_ map or) (store ((as const (Array C!8908 Bool)) false) (h!22675 lt!548373) true) (content!2379 (t!143331 lt!548373))))))

(assert (= (and d!468274 c!255534) b!1576549))

(assert (= (and d!468274 (not c!255534)) b!1576550))

(declare-fun m!1856765 () Bool)

(assert (=> b!1576550 m!1856765))

(declare-fun m!1856767 () Bool)

(assert (=> b!1576550 m!1856767))

(assert (=> d!467888 d!468274))

(declare-fun d!468276 () Bool)

(declare-fun res!702715 () Bool)

(declare-fun e!1012734 () Bool)

(assert (=> d!468276 (=> res!702715 e!1012734)))

(assert (=> d!468276 (= res!702715 ((_ is Nil!17276) tokens!457))))

(assert (=> d!468276 (= (forall!3980 tokens!457 lambda!66371) e!1012734)))

(declare-fun b!1576555 () Bool)

(declare-fun e!1012735 () Bool)

(assert (=> b!1576555 (= e!1012734 e!1012735)))

(declare-fun res!702716 () Bool)

(assert (=> b!1576555 (=> (not res!702716) (not e!1012735))))

(declare-fun dynLambda!7665 (Int Token!5644) Bool)

(assert (=> b!1576555 (= res!702716 (dynLambda!7665 lambda!66371 (h!22677 tokens!457)))))

(declare-fun b!1576556 () Bool)

(assert (=> b!1576556 (= e!1012735 (forall!3980 (t!143333 tokens!457) lambda!66371))))

(assert (= (and d!468276 (not res!702715)) b!1576555))

(assert (= (and b!1576555 res!702716) b!1576556))

(declare-fun b_lambda!49623 () Bool)

(assert (=> (not b_lambda!49623) (not b!1576555)))

(declare-fun m!1856769 () Bool)

(assert (=> b!1576555 m!1856769))

(declare-fun m!1856771 () Bool)

(assert (=> b!1576556 m!1856771))

(assert (=> d!467928 d!468276))

(assert (=> d!467928 d!467964))

(assert (=> d!467958 d!467954))

(assert (=> d!467958 d!467956))

(declare-fun d!468278 () Bool)

(assert (=> d!468278 (= (list!6651 (seqFromList!1836 ($colon$colon!263 (t!143333 (t!143333 tokens!457)) (h!22677 (t!143333 tokens!457))))) (list!6656 (c!255393 (seqFromList!1836 ($colon$colon!263 (t!143333 (t!143333 tokens!457)) (h!22677 (t!143333 tokens!457)))))))))

(declare-fun bs!390588 () Bool)

(assert (= bs!390588 d!468278))

(declare-fun m!1856773 () Bool)

(assert (=> bs!390588 m!1856773))

(assert (=> d!467958 d!468278))

(declare-fun d!468280 () Bool)

(assert (=> d!468280 (= (list!6651 (_1!9771 lt!548363)) (list!6651 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 tokens!457))) (h!22677 (t!143333 tokens!457)))))))

(assert (=> d!468280 true))

(declare-fun _$1!9976 () Unit!26707)

(assert (=> d!468280 (= (choose!9431 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457)) (_1!9771 lt!548363)) _$1!9976)))

(declare-fun bs!390589 () Bool)

(assert (= bs!390589 d!468280))

(assert (=> bs!390589 m!1855207))

(assert (=> bs!390589 m!1855195))

(assert (=> bs!390589 m!1855195))

(assert (=> bs!390589 m!1855197))

(assert (=> bs!390589 m!1855197))

(assert (=> bs!390589 m!1855199))

(assert (=> d!467958 d!468280))

(assert (=> d!467958 d!467960))

(declare-fun d!468282 () Bool)

(assert (=> d!468282 (= ($colon$colon!263 (t!143333 (t!143333 tokens!457)) (h!22677 (t!143333 tokens!457))) (Cons!17276 (h!22677 (t!143333 tokens!457)) (t!143333 (t!143333 tokens!457))))))

(assert (=> d!467958 d!468282))

(assert (=> d!467958 d!467910))

(declare-fun d!468284 () Bool)

(assert (=> d!468284 (= (seqFromList!1836 ($colon$colon!263 (t!143333 (t!143333 tokens!457)) (h!22677 (t!143333 tokens!457)))) (fromListB!785 ($colon$colon!263 (t!143333 (t!143333 tokens!457)) (h!22677 (t!143333 tokens!457)))))))

(declare-fun bs!390590 () Bool)

(assert (= bs!390590 d!468284))

(assert (=> bs!390590 m!1855719))

(declare-fun m!1856775 () Bool)

(assert (=> bs!390590 m!1856775))

(assert (=> d!467958 d!468284))

(declare-fun d!468286 () Bool)

(assert (=> d!468286 (= (list!6651 (_1!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))))))) (list!6656 (c!255393 (_1!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457)))))))))))

(declare-fun bs!390591 () Bool)

(assert (= bs!390591 d!468286))

(declare-fun m!1856777 () Bool)

(assert (=> bs!390591 m!1856777))

(assert (=> d!467968 d!468286))

(assert (=> d!467968 d!468178))

(declare-fun d!468288 () Bool)

(assert (=> d!468288 (= (list!6651 (singletonSeq!1376 (h!22677 (t!143333 tokens!457)))) (list!6656 (c!255393 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))))))))

(declare-fun bs!390592 () Bool)

(assert (= bs!390592 d!468288))

(declare-fun m!1856779 () Bool)

(assert (=> bs!390592 m!1856779))

(assert (=> d!467968 d!468288))

(assert (=> d!467968 d!468176))

(assert (=> d!467968 d!468174))

(assert (=> d!467968 d!467964))

(declare-fun d!468290 () Bool)

(declare-fun lt!548998 () Int)

(assert (=> d!468290 (= lt!548998 (size!13925 (list!6651 (_1!9771 lt!548651))))))

(assert (=> d!468290 (= lt!548998 (size!13926 (c!255393 (_1!9771 lt!548651))))))

(assert (=> d!468290 (= (size!13922 (_1!9771 lt!548651)) lt!548998)))

(declare-fun bs!390593 () Bool)

(assert (= bs!390593 d!468290))

(assert (=> bs!390593 m!1856393))

(assert (=> bs!390593 m!1856393))

(declare-fun m!1856781 () Bool)

(assert (=> bs!390593 m!1856781))

(declare-fun m!1856783 () Bool)

(assert (=> bs!390593 m!1856783))

(assert (=> d!467968 d!468290))

(declare-fun d!468292 () Bool)

(declare-fun c!255535 () Bool)

(assert (=> d!468292 (= c!255535 ((_ is Node!5726) (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457))))))))

(declare-fun e!1012736 () Bool)

(assert (=> d!468292 (= (inv!22687 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457))))) e!1012736)))

(declare-fun b!1576557 () Bool)

(assert (=> b!1576557 (= e!1012736 (inv!22691 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457))))))))

(declare-fun b!1576558 () Bool)

(declare-fun e!1012737 () Bool)

(assert (=> b!1576558 (= e!1012736 e!1012737)))

(declare-fun res!702717 () Bool)

(assert (=> b!1576558 (= res!702717 (not ((_ is Leaf!8466) (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457)))))))))

(assert (=> b!1576558 (=> res!702717 e!1012737)))

(declare-fun b!1576559 () Bool)

(assert (=> b!1576559 (= e!1012737 (inv!22692 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457))))))))

(assert (= (and d!468292 c!255535) b!1576557))

(assert (= (and d!468292 (not c!255535)) b!1576558))

(assert (= (and b!1576558 (not res!702717)) b!1576559))

(declare-fun m!1856785 () Bool)

(assert (=> b!1576557 m!1856785))

(declare-fun m!1856787 () Bool)

(assert (=> b!1576559 m!1856787))

(assert (=> b!1575840 d!468292))

(declare-fun d!468294 () Bool)

(assert (=> d!468294 (= (list!6652 lt!548411) (list!6655 (c!255391 lt!548411)))))

(declare-fun bs!390594 () Bool)

(assert (= bs!390594 d!468294))

(declare-fun m!1856789 () Bool)

(assert (=> bs!390594 m!1856789))

(assert (=> d!467904 d!468294))

(declare-fun d!468296 () Bool)

(declare-fun c!255536 () Bool)

(assert (=> d!468296 (= c!255536 ((_ is Cons!17276) (list!6651 (seqFromList!1836 tokens!457))))))

(declare-fun e!1012738 () List!17344)

(assert (=> d!468296 (= (printList!791 thiss!17113 (list!6651 (seqFromList!1836 tokens!457))) e!1012738)))

(declare-fun b!1576560 () Bool)

(assert (=> b!1576560 (= e!1012738 (++!4475 (list!6652 (charsOf!1688 (h!22677 (list!6651 (seqFromList!1836 tokens!457))))) (printList!791 thiss!17113 (t!143333 (list!6651 (seqFromList!1836 tokens!457))))))))

(declare-fun b!1576561 () Bool)

(assert (=> b!1576561 (= e!1012738 Nil!17274)))

(assert (= (and d!468296 c!255536) b!1576560))

(assert (= (and d!468296 (not c!255536)) b!1576561))

(declare-fun m!1856791 () Bool)

(assert (=> b!1576560 m!1856791))

(assert (=> b!1576560 m!1856791))

(declare-fun m!1856793 () Bool)

(assert (=> b!1576560 m!1856793))

(declare-fun m!1856795 () Bool)

(assert (=> b!1576560 m!1856795))

(assert (=> b!1576560 m!1856793))

(assert (=> b!1576560 m!1856795))

(declare-fun m!1856797 () Bool)

(assert (=> b!1576560 m!1856797))

(assert (=> d!467904 d!468296))

(declare-fun d!468298 () Bool)

(assert (=> d!468298 (= (list!6651 (seqFromList!1836 tokens!457)) (list!6656 (c!255393 (seqFromList!1836 tokens!457))))))

(declare-fun bs!390595 () Bool)

(assert (= bs!390595 d!468298))

(declare-fun m!1856799 () Bool)

(assert (=> bs!390595 m!1856799))

(assert (=> d!467904 d!468298))

(declare-fun d!468300 () Bool)

(declare-fun lt!549001 () BalanceConc!11396)

(assert (=> d!468300 (= (list!6652 lt!549001) (printListTailRec!299 thiss!17113 (dropList!504 (seqFromList!1836 tokens!457) 0) (list!6652 (BalanceConc!11397 Empty!5726))))))

(declare-fun e!1012739 () BalanceConc!11396)

(assert (=> d!468300 (= lt!549001 e!1012739)))

(declare-fun c!255537 () Bool)

(assert (=> d!468300 (= c!255537 (>= 0 (size!13922 (seqFromList!1836 tokens!457))))))

(declare-fun e!1012740 () Bool)

(assert (=> d!468300 e!1012740))

(declare-fun res!702718 () Bool)

(assert (=> d!468300 (=> (not res!702718) (not e!1012740))))

(assert (=> d!468300 (= res!702718 (>= 0 0))))

(assert (=> d!468300 (= (printTailRec!727 thiss!17113 (seqFromList!1836 tokens!457) 0 (BalanceConc!11397 Empty!5726)) lt!549001)))

(declare-fun b!1576562 () Bool)

(assert (=> b!1576562 (= e!1012740 (<= 0 (size!13922 (seqFromList!1836 tokens!457))))))

(declare-fun b!1576563 () Bool)

(assert (=> b!1576563 (= e!1012739 (BalanceConc!11397 Empty!5726))))

(declare-fun b!1576564 () Bool)

(assert (=> b!1576564 (= e!1012739 (printTailRec!727 thiss!17113 (seqFromList!1836 tokens!457) (+ 0 1) (++!4479 (BalanceConc!11397 Empty!5726) (charsOf!1688 (apply!4178 (seqFromList!1836 tokens!457) 0)))))))

(declare-fun lt!549005 () List!17346)

(assert (=> b!1576564 (= lt!549005 (list!6651 (seqFromList!1836 tokens!457)))))

(declare-fun lt!549004 () Unit!26707)

(assert (=> b!1576564 (= lt!549004 (lemmaDropApply!506 lt!549005 0))))

(assert (=> b!1576564 (= (head!3167 (drop!808 lt!549005 0)) (apply!4180 lt!549005 0))))

(declare-fun lt!549002 () Unit!26707)

(assert (=> b!1576564 (= lt!549002 lt!549004)))

(declare-fun lt!548999 () List!17346)

(assert (=> b!1576564 (= lt!548999 (list!6651 (seqFromList!1836 tokens!457)))))

(declare-fun lt!549000 () Unit!26707)

(assert (=> b!1576564 (= lt!549000 (lemmaDropTail!486 lt!548999 0))))

(assert (=> b!1576564 (= (tail!2242 (drop!808 lt!548999 0)) (drop!808 lt!548999 (+ 0 1)))))

(declare-fun lt!549003 () Unit!26707)

(assert (=> b!1576564 (= lt!549003 lt!549000)))

(assert (= (and d!468300 res!702718) b!1576562))

(assert (= (and d!468300 c!255537) b!1576563))

(assert (= (and d!468300 (not c!255537)) b!1576564))

(assert (=> d!468300 m!1855237))

(declare-fun m!1856801 () Bool)

(assert (=> d!468300 m!1856801))

(assert (=> d!468300 m!1856245))

(assert (=> d!468300 m!1856801))

(assert (=> d!468300 m!1856245))

(declare-fun m!1856803 () Bool)

(assert (=> d!468300 m!1856803))

(assert (=> d!468300 m!1855237))

(declare-fun m!1856805 () Bool)

(assert (=> d!468300 m!1856805))

(declare-fun m!1856807 () Bool)

(assert (=> d!468300 m!1856807))

(assert (=> b!1576562 m!1855237))

(assert (=> b!1576562 m!1856805))

(declare-fun m!1856809 () Bool)

(assert (=> b!1576564 m!1856809))

(assert (=> b!1576564 m!1856809))

(declare-fun m!1856811 () Bool)

(assert (=> b!1576564 m!1856811))

(declare-fun m!1856813 () Bool)

(assert (=> b!1576564 m!1856813))

(assert (=> b!1576564 m!1855237))

(assert (=> b!1576564 m!1855397))

(declare-fun m!1856815 () Bool)

(assert (=> b!1576564 m!1856815))

(declare-fun m!1856817 () Bool)

(assert (=> b!1576564 m!1856817))

(declare-fun m!1856819 () Bool)

(assert (=> b!1576564 m!1856819))

(declare-fun m!1856821 () Bool)

(assert (=> b!1576564 m!1856821))

(assert (=> b!1576564 m!1855237))

(declare-fun m!1856823 () Bool)

(assert (=> b!1576564 m!1856823))

(declare-fun m!1856825 () Bool)

(assert (=> b!1576564 m!1856825))

(assert (=> b!1576564 m!1856821))

(declare-fun m!1856827 () Bool)

(assert (=> b!1576564 m!1856827))

(assert (=> b!1576564 m!1855237))

(assert (=> b!1576564 m!1856817))

(declare-fun m!1856829 () Bool)

(assert (=> b!1576564 m!1856829))

(declare-fun m!1856831 () Bool)

(assert (=> b!1576564 m!1856831))

(assert (=> b!1576564 m!1856819))

(assert (=> b!1576564 m!1856823))

(assert (=> d!467904 d!468300))

(declare-fun d!468302 () Bool)

(declare-fun isEmpty!10323 (Option!3086) Bool)

(assert (=> d!468302 (= (isDefined!2481 (maxPrefix!1236 thiss!17113 rules!1846 (originalCharacters!3853 (h!22677 (t!143333 tokens!457))))) (not (isEmpty!10323 (maxPrefix!1236 thiss!17113 rules!1846 (originalCharacters!3853 (h!22677 (t!143333 tokens!457)))))))))

(declare-fun bs!390596 () Bool)

(assert (= bs!390596 d!468302))

(assert (=> bs!390596 m!1855549))

(declare-fun m!1856833 () Bool)

(assert (=> bs!390596 m!1856833))

(assert (=> b!1575911 d!468302))

(declare-fun b!1576593 () Bool)

(declare-fun e!1012755 () Bool)

(assert (=> b!1576593 (= e!1012755 (not (= (head!3164 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))) (c!255392 (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))))))))

(declare-fun b!1576594 () Bool)

(declare-fun e!1012758 () Bool)

(declare-fun derivativeStep!1038 (Regex!4367 C!8908) Regex!4367)

(assert (=> b!1576594 (= e!1012758 (matchR!1904 (derivativeStep!1038 (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))) (head!3164 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))) (tail!2240 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))))

(declare-fun b!1576595 () Bool)

(declare-fun e!1012757 () Bool)

(declare-fun e!1012760 () Bool)

(assert (=> b!1576595 (= e!1012757 e!1012760)))

(declare-fun c!255546 () Bool)

(assert (=> b!1576595 (= c!255546 ((_ is EmptyLang!4367) (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))))))

(declare-fun b!1576596 () Bool)

(declare-fun lt!549008 () Bool)

(declare-fun call!102658 () Bool)

(assert (=> b!1576596 (= e!1012757 (= lt!549008 call!102658))))

(declare-fun b!1576597 () Bool)

(declare-fun nullable!1287 (Regex!4367) Bool)

(assert (=> b!1576597 (= e!1012758 (nullable!1287 (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))))))

(declare-fun b!1576598 () Bool)

(declare-fun res!702739 () Bool)

(declare-fun e!1012759 () Bool)

(assert (=> b!1576598 (=> (not res!702739) (not e!1012759))))

(assert (=> b!1576598 (= res!702739 (not call!102658))))

(declare-fun b!1576599 () Bool)

(declare-fun res!702741 () Bool)

(declare-fun e!1012761 () Bool)

(assert (=> b!1576599 (=> res!702741 e!1012761)))

(assert (=> b!1576599 (= res!702741 e!1012759)))

(declare-fun res!702735 () Bool)

(assert (=> b!1576599 (=> (not res!702735) (not e!1012759))))

(assert (=> b!1576599 (= res!702735 lt!549008)))

(declare-fun b!1576600 () Bool)

(declare-fun e!1012756 () Bool)

(assert (=> b!1576600 (= e!1012761 e!1012756)))

(declare-fun res!702738 () Bool)

(assert (=> b!1576600 (=> (not res!702738) (not e!1012756))))

(assert (=> b!1576600 (= res!702738 (not lt!549008))))

(declare-fun b!1576601 () Bool)

(assert (=> b!1576601 (= e!1012756 e!1012755)))

(declare-fun res!702736 () Bool)

(assert (=> b!1576601 (=> res!702736 e!1012755)))

(assert (=> b!1576601 (= res!702736 call!102658)))

(declare-fun b!1576602 () Bool)

(assert (=> b!1576602 (= e!1012759 (= (head!3164 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))) (c!255392 (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))))))))

(declare-fun d!468304 () Bool)

(assert (=> d!468304 e!1012757))

(declare-fun c!255545 () Bool)

(assert (=> d!468304 (= c!255545 ((_ is EmptyExpr!4367) (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))))))

(assert (=> d!468304 (= lt!549008 e!1012758)))

(declare-fun c!255544 () Bool)

(assert (=> d!468304 (= c!255544 (isEmpty!10315 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(declare-fun validRegex!1728 (Regex!4367) Bool)

(assert (=> d!468304 (validRegex!1728 (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))))))

(assert (=> d!468304 (= (matchR!1904 (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))) (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))) lt!549008)))

(declare-fun b!1576603 () Bool)

(declare-fun res!702740 () Bool)

(assert (=> b!1576603 (=> res!702740 e!1012755)))

(assert (=> b!1576603 (= res!702740 (not (isEmpty!10315 (tail!2240 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))))

(declare-fun b!1576604 () Bool)

(declare-fun res!702737 () Bool)

(assert (=> b!1576604 (=> (not res!702737) (not e!1012759))))

(assert (=> b!1576604 (= res!702737 (isEmpty!10315 (tail!2240 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))))

(declare-fun b!1576605 () Bool)

(declare-fun res!702742 () Bool)

(assert (=> b!1576605 (=> res!702742 e!1012761)))

(assert (=> b!1576605 (= res!702742 (not ((_ is ElementMatch!4367) (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))))))))

(assert (=> b!1576605 (= e!1012760 e!1012761)))

(declare-fun bm!102653 () Bool)

(assert (=> bm!102653 (= call!102658 (isEmpty!10315 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(declare-fun b!1576606 () Bool)

(assert (=> b!1576606 (= e!1012760 (not lt!549008))))

(assert (= (and d!468304 c!255544) b!1576597))

(assert (= (and d!468304 (not c!255544)) b!1576594))

(assert (= (and d!468304 c!255545) b!1576596))

(assert (= (and d!468304 (not c!255545)) b!1576595))

(assert (= (and b!1576595 c!255546) b!1576606))

(assert (= (and b!1576595 (not c!255546)) b!1576605))

(assert (= (and b!1576605 (not res!702742)) b!1576599))

(assert (= (and b!1576599 res!702735) b!1576598))

(assert (= (and b!1576598 res!702739) b!1576604))

(assert (= (and b!1576604 res!702737) b!1576602))

(assert (= (and b!1576599 (not res!702741)) b!1576600))

(assert (= (and b!1576600 res!702738) b!1576601))

(assert (= (and b!1576601 (not res!702736)) b!1576603))

(assert (= (and b!1576603 (not res!702740)) b!1576593))

(assert (= (or b!1576596 b!1576598 b!1576601) bm!102653))

(declare-fun m!1856835 () Bool)

(assert (=> b!1576597 m!1856835))

(assert (=> b!1576604 m!1855317))

(declare-fun m!1856837 () Bool)

(assert (=> b!1576604 m!1856837))

(assert (=> b!1576604 m!1856837))

(declare-fun m!1856839 () Bool)

(assert (=> b!1576604 m!1856839))

(assert (=> b!1576594 m!1855317))

(declare-fun m!1856841 () Bool)

(assert (=> b!1576594 m!1856841))

(assert (=> b!1576594 m!1856841))

(declare-fun m!1856843 () Bool)

(assert (=> b!1576594 m!1856843))

(assert (=> b!1576594 m!1855317))

(assert (=> b!1576594 m!1856837))

(assert (=> b!1576594 m!1856843))

(assert (=> b!1576594 m!1856837))

(declare-fun m!1856845 () Bool)

(assert (=> b!1576594 m!1856845))

(assert (=> b!1576602 m!1855317))

(assert (=> b!1576602 m!1856841))

(assert (=> b!1576603 m!1855317))

(assert (=> b!1576603 m!1856837))

(assert (=> b!1576603 m!1856837))

(assert (=> b!1576603 m!1856839))

(assert (=> d!468304 m!1855317))

(assert (=> d!468304 m!1855319))

(declare-fun m!1856847 () Bool)

(assert (=> d!468304 m!1856847))

(assert (=> bm!102653 m!1855317))

(assert (=> bm!102653 m!1855319))

(assert (=> b!1576593 m!1855317))

(assert (=> b!1576593 m!1856841))

(assert (=> b!1575911 d!468304))

(declare-fun d!468306 () Bool)

(assert (=> d!468306 (isDefined!2481 (maxPrefix!1236 thiss!17113 rules!1846 (++!4475 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (list!6652 lt!548558))))))

(declare-fun lt!549052 () Unit!26707)

(declare-fun e!1012767 () Unit!26707)

(assert (=> d!468306 (= lt!549052 e!1012767)))

(declare-fun c!255549 () Bool)

(assert (=> d!468306 (= c!255549 (isEmpty!10323 (maxPrefix!1236 thiss!17113 rules!1846 (++!4475 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (list!6652 lt!548558)))))))

(declare-fun lt!549059 () Unit!26707)

(declare-fun lt!549054 () Unit!26707)

(assert (=> d!468306 (= lt!549059 lt!549054)))

(declare-fun e!1012766 () Bool)

(assert (=> d!468306 e!1012766))

(declare-fun res!702748 () Bool)

(assert (=> d!468306 (=> (not res!702748) (not e!1012766))))

(declare-fun lt!549055 () Token!5644)

(declare-datatypes ((Option!3089 0))(
  ( (None!3088) (Some!3088 (v!23911 Rule!5878)) )
))
(declare-fun isDefined!2483 (Option!3089) Bool)

(declare-fun getRuleFromTag!228 (LexerInterface!2668 List!17345 String!19977) Option!3089)

(assert (=> d!468306 (= res!702748 (isDefined!2483 (getRuleFromTag!228 thiss!17113 rules!1846 (tag!3305 (rule!4831 lt!549055)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!228 (LexerInterface!2668 List!17345 List!17344 Token!5644) Unit!26707)

(assert (=> d!468306 (= lt!549054 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!228 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) lt!549055))))

(declare-fun lt!549044 () Unit!26707)

(declare-fun lt!549056 () Unit!26707)

(assert (=> d!468306 (= lt!549044 lt!549056)))

(declare-fun lt!549058 () List!17344)

(assert (=> d!468306 (isPrefix!1299 lt!549058 (++!4475 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (list!6652 lt!548558)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!114 (List!17344 List!17344 List!17344) Unit!26707)

(assert (=> d!468306 (= lt!549056 (lemmaPrefixStaysPrefixWhenAddingToSuffix!114 lt!549058 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (list!6652 lt!548558)))))

(assert (=> d!468306 (= lt!549058 (list!6652 (charsOf!1688 lt!549055)))))

(declare-fun lt!549046 () Unit!26707)

(declare-fun lt!549045 () Unit!26707)

(assert (=> d!468306 (= lt!549046 lt!549045)))

(declare-fun lt!549050 () List!17344)

(declare-fun lt!549049 () List!17344)

(assert (=> d!468306 (isPrefix!1299 lt!549050 (++!4475 lt!549050 lt!549049))))

(assert (=> d!468306 (= lt!549045 (lemmaConcatTwoListThenFirstIsPrefix!824 lt!549050 lt!549049))))

(assert (=> d!468306 (= lt!549049 (_2!9775 (get!4939 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))))

(assert (=> d!468306 (= lt!549050 (list!6652 (charsOf!1688 lt!549055)))))

(declare-fun seqFromList!1838 (List!17344) BalanceConc!11396)

(assert (=> d!468306 (= lt!549055 (head!3167 (list!6651 (_1!9771 (lex!1152 thiss!17113 rules!1846 (seqFromList!1838 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))))))

(assert (=> d!468306 (not (isEmpty!10310 rules!1846))))

(assert (=> d!468306 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!256 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (list!6652 lt!548558)) lt!549052)))

(declare-fun b!1576616 () Bool)

(declare-fun get!4941 (Option!3089) Rule!5878)

(assert (=> b!1576616 (= e!1012766 (= (rule!4831 lt!549055) (get!4941 (getRuleFromTag!228 thiss!17113 rules!1846 (tag!3305 (rule!4831 lt!549055))))))))

(declare-fun b!1576615 () Bool)

(declare-fun res!702747 () Bool)

(assert (=> b!1576615 (=> (not res!702747) (not e!1012766))))

(assert (=> b!1576615 (= res!702747 (matchR!1904 (regex!3039 (get!4941 (getRuleFromTag!228 thiss!17113 rules!1846 (tag!3305 (rule!4831 lt!549055))))) (list!6652 (charsOf!1688 lt!549055))))))

(declare-fun b!1576618 () Bool)

(declare-fun Unit!26777 () Unit!26707)

(assert (=> b!1576618 (= e!1012767 Unit!26777)))

(declare-fun b!1576617 () Bool)

(declare-fun Unit!26778 () Unit!26707)

(assert (=> b!1576617 (= e!1012767 Unit!26778)))

(declare-fun lt!549053 () List!17344)

(assert (=> b!1576617 (= lt!549053 (++!4475 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (list!6652 lt!548558)))))

(declare-fun lt!549043 () Unit!26707)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!122 (LexerInterface!2668 Rule!5878 List!17345 List!17344) Unit!26707)

(assert (=> b!1576617 (= lt!549043 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!122 thiss!17113 (rule!4831 lt!549055) rules!1846 lt!549053))))

(declare-fun maxPrefixOneRule!719 (LexerInterface!2668 Rule!5878 List!17344) Option!3086)

(assert (=> b!1576617 (isEmpty!10323 (maxPrefixOneRule!719 thiss!17113 (rule!4831 lt!549055) lt!549053))))

(declare-fun lt!549057 () Unit!26707)

(assert (=> b!1576617 (= lt!549057 lt!549043)))

(declare-fun lt!549051 () List!17344)

(assert (=> b!1576617 (= lt!549051 (list!6652 (charsOf!1688 lt!549055)))))

(declare-fun lt!549047 () Unit!26707)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!118 (LexerInterface!2668 Rule!5878 List!17344 List!17344) Unit!26707)

(assert (=> b!1576617 (= lt!549047 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!118 thiss!17113 (rule!4831 lt!549055) lt!549051 (++!4475 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (list!6652 lt!548558))))))

(assert (=> b!1576617 (not (matchR!1904 (regex!3039 (rule!4831 lt!549055)) lt!549051))))

(declare-fun lt!549048 () Unit!26707)

(assert (=> b!1576617 (= lt!549048 lt!549047)))

(assert (=> b!1576617 false))

(assert (= (and d!468306 res!702748) b!1576615))

(assert (= (and b!1576615 res!702747) b!1576616))

(assert (= (and d!468306 c!255549) b!1576617))

(assert (= (and d!468306 (not c!255549)) b!1576618))

(declare-fun m!1856849 () Bool)

(assert (=> d!468306 m!1856849))

(declare-fun m!1856851 () Bool)

(assert (=> d!468306 m!1856851))

(declare-fun m!1856853 () Bool)

(assert (=> d!468306 m!1856853))

(declare-fun m!1856855 () Bool)

(assert (=> d!468306 m!1856855))

(assert (=> d!468306 m!1855317))

(declare-fun m!1856857 () Bool)

(assert (=> d!468306 m!1856857))

(declare-fun m!1856859 () Bool)

(assert (=> d!468306 m!1856859))

(declare-fun m!1856861 () Bool)

(assert (=> d!468306 m!1856861))

(assert (=> d!468306 m!1855317))

(assert (=> d!468306 m!1855561))

(assert (=> d!468306 m!1856853))

(declare-fun m!1856863 () Bool)

(assert (=> d!468306 m!1856863))

(assert (=> d!468306 m!1856863))

(declare-fun m!1856865 () Bool)

(assert (=> d!468306 m!1856865))

(assert (=> d!468306 m!1855317))

(assert (=> d!468306 m!1855529))

(assert (=> d!468306 m!1856855))

(declare-fun m!1856867 () Bool)

(assert (=> d!468306 m!1856867))

(declare-fun m!1856869 () Bool)

(assert (=> d!468306 m!1856869))

(declare-fun m!1856871 () Bool)

(assert (=> d!468306 m!1856871))

(declare-fun m!1856873 () Bool)

(assert (=> d!468306 m!1856873))

(assert (=> d!468306 m!1855529))

(assert (=> d!468306 m!1855589))

(assert (=> d!468306 m!1855317))

(assert (=> d!468306 m!1855561))

(declare-fun m!1856875 () Bool)

(assert (=> d!468306 m!1856875))

(assert (=> d!468306 m!1856849))

(assert (=> d!468306 m!1855217))

(assert (=> d!468306 m!1856855))

(declare-fun m!1856877 () Bool)

(assert (=> d!468306 m!1856877))

(declare-fun m!1856879 () Bool)

(assert (=> d!468306 m!1856879))

(assert (=> d!468306 m!1856853))

(declare-fun m!1856881 () Bool)

(assert (=> d!468306 m!1856881))

(assert (=> d!468306 m!1856859))

(assert (=> d!468306 m!1856869))

(declare-fun m!1856883 () Bool)

(assert (=> d!468306 m!1856883))

(assert (=> d!468306 m!1855317))

(assert (=> d!468306 m!1856871))

(assert (=> b!1576616 m!1856863))

(assert (=> b!1576616 m!1856863))

(declare-fun m!1856885 () Bool)

(assert (=> b!1576616 m!1856885))

(assert (=> b!1576615 m!1856849))

(assert (=> b!1576615 m!1856851))

(assert (=> b!1576615 m!1856863))

(assert (=> b!1576615 m!1856885))

(assert (=> b!1576615 m!1856849))

(assert (=> b!1576615 m!1856863))

(assert (=> b!1576615 m!1856851))

(declare-fun m!1856887 () Bool)

(assert (=> b!1576615 m!1856887))

(assert (=> b!1576617 m!1856849))

(assert (=> b!1576617 m!1856851))

(declare-fun m!1856889 () Bool)

(assert (=> b!1576617 m!1856889))

(declare-fun m!1856891 () Bool)

(assert (=> b!1576617 m!1856891))

(assert (=> b!1576617 m!1856849))

(assert (=> b!1576617 m!1855317))

(assert (=> b!1576617 m!1855561))

(assert (=> b!1576617 m!1856853))

(declare-fun m!1856893 () Bool)

(assert (=> b!1576617 m!1856893))

(assert (=> b!1576617 m!1856889))

(declare-fun m!1856895 () Bool)

(assert (=> b!1576617 m!1856895))

(assert (=> b!1576617 m!1856853))

(declare-fun m!1856897 () Bool)

(assert (=> b!1576617 m!1856897))

(assert (=> b!1575911 d!468306))

(declare-fun b!1576637 () Bool)

(declare-fun e!1012776 () Bool)

(declare-fun lt!549073 () Option!3086)

(declare-fun contains!3017 (List!17345 Rule!5878) Bool)

(assert (=> b!1576637 (= e!1012776 (contains!3017 rules!1846 (rule!4831 (_1!9775 (get!4939 lt!549073)))))))

(declare-fun b!1576638 () Bool)

(declare-fun res!702768 () Bool)

(assert (=> b!1576638 (=> (not res!702768) (not e!1012776))))

(assert (=> b!1576638 (= res!702768 (= (list!6652 (charsOf!1688 (_1!9775 (get!4939 lt!549073)))) (originalCharacters!3853 (_1!9775 (get!4939 lt!549073)))))))

(declare-fun b!1576639 () Bool)

(declare-fun res!702767 () Bool)

(assert (=> b!1576639 (=> (not res!702767) (not e!1012776))))

(declare-fun apply!4185 (TokenValueInjection!5918 BalanceConc!11396) TokenValue!3129)

(assert (=> b!1576639 (= res!702767 (= (value!96284 (_1!9775 (get!4939 lt!549073))) (apply!4185 (transformation!3039 (rule!4831 (_1!9775 (get!4939 lt!549073)))) (seqFromList!1838 (originalCharacters!3853 (_1!9775 (get!4939 lt!549073)))))))))

(declare-fun b!1576640 () Bool)

(declare-fun e!1012774 () Option!3086)

(declare-fun call!102661 () Option!3086)

(assert (=> b!1576640 (= e!1012774 call!102661)))

(declare-fun b!1576641 () Bool)

(declare-fun res!702765 () Bool)

(assert (=> b!1576641 (=> (not res!702765) (not e!1012776))))

(assert (=> b!1576641 (= res!702765 (< (size!13920 (_2!9775 (get!4939 lt!549073))) (size!13920 (list!6652 lt!548578))))))

(declare-fun b!1576642 () Bool)

(declare-fun e!1012775 () Bool)

(assert (=> b!1576642 (= e!1012775 e!1012776)))

(declare-fun res!702766 () Bool)

(assert (=> b!1576642 (=> (not res!702766) (not e!1012776))))

(assert (=> b!1576642 (= res!702766 (isDefined!2481 lt!549073))))

(declare-fun b!1576643 () Bool)

(declare-fun lt!549071 () Option!3086)

(declare-fun lt!549070 () Option!3086)

(assert (=> b!1576643 (= e!1012774 (ite (and ((_ is None!3085) lt!549071) ((_ is None!3085) lt!549070)) None!3085 (ite ((_ is None!3085) lt!549070) lt!549071 (ite ((_ is None!3085) lt!549071) lt!549070 (ite (>= (size!13916 (_1!9775 (v!23904 lt!549071))) (size!13916 (_1!9775 (v!23904 lt!549070)))) lt!549071 lt!549070)))))))

(assert (=> b!1576643 (= lt!549071 call!102661)))

(assert (=> b!1576643 (= lt!549070 (maxPrefix!1236 thiss!17113 (t!143332 rules!1846) (list!6652 lt!548578)))))

(declare-fun b!1576644 () Bool)

(declare-fun res!702769 () Bool)

(assert (=> b!1576644 (=> (not res!702769) (not e!1012776))))

(assert (=> b!1576644 (= res!702769 (= (++!4475 (list!6652 (charsOf!1688 (_1!9775 (get!4939 lt!549073)))) (_2!9775 (get!4939 lt!549073))) (list!6652 lt!548578)))))

(declare-fun d!468308 () Bool)

(assert (=> d!468308 e!1012775))

(declare-fun res!702763 () Bool)

(assert (=> d!468308 (=> res!702763 e!1012775)))

(assert (=> d!468308 (= res!702763 (isEmpty!10323 lt!549073))))

(assert (=> d!468308 (= lt!549073 e!1012774)))

(declare-fun c!255552 () Bool)

(assert (=> d!468308 (= c!255552 (and ((_ is Cons!17275) rules!1846) ((_ is Nil!17275) (t!143332 rules!1846))))))

(declare-fun lt!549072 () Unit!26707)

(declare-fun lt!549074 () Unit!26707)

(assert (=> d!468308 (= lt!549072 lt!549074)))

(assert (=> d!468308 (isPrefix!1299 (list!6652 lt!548578) (list!6652 lt!548578))))

(declare-fun lemmaIsPrefixRefl!904 (List!17344 List!17344) Unit!26707)

(assert (=> d!468308 (= lt!549074 (lemmaIsPrefixRefl!904 (list!6652 lt!548578) (list!6652 lt!548578)))))

(assert (=> d!468308 (rulesValidInductive!904 thiss!17113 rules!1846)))

(assert (=> d!468308 (= (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 lt!548578)) lt!549073)))

(declare-fun bm!102656 () Bool)

(assert (=> bm!102656 (= call!102661 (maxPrefixOneRule!719 thiss!17113 (h!22676 rules!1846) (list!6652 lt!548578)))))

(declare-fun b!1576645 () Bool)

(declare-fun res!702764 () Bool)

(assert (=> b!1576645 (=> (not res!702764) (not e!1012776))))

(assert (=> b!1576645 (= res!702764 (matchR!1904 (regex!3039 (rule!4831 (_1!9775 (get!4939 lt!549073)))) (list!6652 (charsOf!1688 (_1!9775 (get!4939 lt!549073))))))))

(assert (= (and d!468308 c!255552) b!1576640))

(assert (= (and d!468308 (not c!255552)) b!1576643))

(assert (= (or b!1576640 b!1576643) bm!102656))

(assert (= (and d!468308 (not res!702763)) b!1576642))

(assert (= (and b!1576642 res!702766) b!1576638))

(assert (= (and b!1576638 res!702768) b!1576641))

(assert (= (and b!1576641 res!702765) b!1576644))

(assert (= (and b!1576644 res!702769) b!1576639))

(assert (= (and b!1576639 res!702767) b!1576645))

(assert (= (and b!1576645 res!702764) b!1576637))

(declare-fun m!1856899 () Bool)

(assert (=> b!1576641 m!1856899))

(declare-fun m!1856901 () Bool)

(assert (=> b!1576641 m!1856901))

(assert (=> b!1576641 m!1855577))

(declare-fun m!1856903 () Bool)

(assert (=> b!1576641 m!1856903))

(assert (=> b!1576644 m!1856899))

(declare-fun m!1856905 () Bool)

(assert (=> b!1576644 m!1856905))

(assert (=> b!1576644 m!1856905))

(declare-fun m!1856907 () Bool)

(assert (=> b!1576644 m!1856907))

(assert (=> b!1576644 m!1856907))

(declare-fun m!1856909 () Bool)

(assert (=> b!1576644 m!1856909))

(assert (=> b!1576637 m!1856899))

(declare-fun m!1856911 () Bool)

(assert (=> b!1576637 m!1856911))

(assert (=> b!1576645 m!1856899))

(assert (=> b!1576645 m!1856905))

(assert (=> b!1576645 m!1856905))

(assert (=> b!1576645 m!1856907))

(assert (=> b!1576645 m!1856907))

(declare-fun m!1856913 () Bool)

(assert (=> b!1576645 m!1856913))

(assert (=> b!1576643 m!1855577))

(declare-fun m!1856915 () Bool)

(assert (=> b!1576643 m!1856915))

(declare-fun m!1856917 () Bool)

(assert (=> b!1576642 m!1856917))

(declare-fun m!1856919 () Bool)

(assert (=> d!468308 m!1856919))

(assert (=> d!468308 m!1855577))

(assert (=> d!468308 m!1855577))

(declare-fun m!1856921 () Bool)

(assert (=> d!468308 m!1856921))

(assert (=> d!468308 m!1855577))

(assert (=> d!468308 m!1855577))

(declare-fun m!1856923 () Bool)

(assert (=> d!468308 m!1856923))

(assert (=> d!468308 m!1856445))

(assert (=> bm!102656 m!1855577))

(declare-fun m!1856925 () Bool)

(assert (=> bm!102656 m!1856925))

(assert (=> b!1576639 m!1856899))

(declare-fun m!1856927 () Bool)

(assert (=> b!1576639 m!1856927))

(assert (=> b!1576639 m!1856927))

(declare-fun m!1856929 () Bool)

(assert (=> b!1576639 m!1856929))

(assert (=> b!1576638 m!1856899))

(assert (=> b!1576638 m!1856905))

(assert (=> b!1576638 m!1856905))

(assert (=> b!1576638 m!1856907))

(assert (=> b!1575911 d!468308))

(declare-fun d!468310 () Bool)

(declare-fun e!1012777 () Bool)

(assert (=> d!468310 e!1012777))

(declare-fun res!702770 () Bool)

(assert (=> d!468310 (=> (not res!702770) (not e!1012777))))

(assert (=> d!468310 (= res!702770 (isBalanced!1682 (prepend!511 (c!255393 (seqFromList!1836 (t!143333 (t!143333 (t!143333 tokens!457))))) (h!22677 (t!143333 (t!143333 tokens!457))))))))

(declare-fun lt!549075 () BalanceConc!11398)

(assert (=> d!468310 (= lt!549075 (BalanceConc!11399 (prepend!511 (c!255393 (seqFromList!1836 (t!143333 (t!143333 (t!143333 tokens!457))))) (h!22677 (t!143333 (t!143333 tokens!457))))))))

(assert (=> d!468310 (= (prepend!509 (seqFromList!1836 (t!143333 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 (t!143333 tokens!457)))) lt!549075)))

(declare-fun b!1576646 () Bool)

(assert (=> b!1576646 (= e!1012777 (= (list!6651 lt!549075) (Cons!17276 (h!22677 (t!143333 (t!143333 tokens!457))) (list!6651 (seqFromList!1836 (t!143333 (t!143333 (t!143333 tokens!457))))))))))

(assert (= (and d!468310 res!702770) b!1576646))

(declare-fun m!1856931 () Bool)

(assert (=> d!468310 m!1856931))

(assert (=> d!468310 m!1856931))

(declare-fun m!1856933 () Bool)

(assert (=> d!468310 m!1856933))

(declare-fun m!1856935 () Bool)

(assert (=> b!1576646 m!1856935))

(assert (=> b!1576646 m!1855587))

(declare-fun m!1856937 () Bool)

(assert (=> b!1576646 m!1856937))

(assert (=> b!1575911 d!468310))

(assert (=> b!1575911 d!467960))

(declare-fun d!468312 () Bool)

(declare-fun lt!549078 () C!8908)

(declare-fun apply!4186 (List!17344 Int) C!8908)

(assert (=> d!468312 (= lt!549078 (apply!4186 (list!6652 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457))))) 0))))

(declare-fun apply!4187 (Conc!5726 Int) C!8908)

(assert (=> d!468312 (= lt!549078 (apply!4187 (c!255391 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457))))) 0))))

(declare-fun e!1012780 () Bool)

(assert (=> d!468312 e!1012780))

(declare-fun res!702773 () Bool)

(assert (=> d!468312 (=> (not res!702773) (not e!1012780))))

(assert (=> d!468312 (= res!702773 (<= 0 0))))

(assert (=> d!468312 (= (apply!4177 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457)))) 0) lt!549078)))

(declare-fun b!1576649 () Bool)

(assert (=> b!1576649 (= e!1012780 (< 0 (size!13921 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457)))))))))

(assert (= (and d!468312 res!702773) b!1576649))

(assert (=> d!468312 m!1855575))

(declare-fun m!1856939 () Bool)

(assert (=> d!468312 m!1856939))

(assert (=> d!468312 m!1856939))

(declare-fun m!1856941 () Bool)

(assert (=> d!468312 m!1856941))

(declare-fun m!1856943 () Bool)

(assert (=> d!468312 m!1856943))

(assert (=> b!1576649 m!1855575))

(declare-fun m!1856945 () Bool)

(assert (=> b!1576649 m!1856945))

(assert (=> b!1575911 d!468312))

(declare-fun b!1576652 () Bool)

(declare-fun res!702775 () Bool)

(declare-fun e!1012782 () Bool)

(assert (=> b!1576652 (=> (not res!702775) (not e!1012782))))

(declare-fun lt!549079 () List!17344)

(assert (=> b!1576652 (= res!702775 (= (size!13920 lt!549079) (+ (size!13920 lt!548573) (size!13920 lt!548557))))))

(declare-fun d!468314 () Bool)

(assert (=> d!468314 e!1012782))

(declare-fun res!702774 () Bool)

(assert (=> d!468314 (=> (not res!702774) (not e!1012782))))

(assert (=> d!468314 (= res!702774 (= (content!2379 lt!549079) ((_ map or) (content!2379 lt!548573) (content!2379 lt!548557))))))

(declare-fun e!1012781 () List!17344)

(assert (=> d!468314 (= lt!549079 e!1012781)))

(declare-fun c!255553 () Bool)

(assert (=> d!468314 (= c!255553 ((_ is Nil!17274) lt!548573))))

(assert (=> d!468314 (= (++!4475 lt!548573 lt!548557) lt!549079)))

(declare-fun b!1576653 () Bool)

(assert (=> b!1576653 (= e!1012782 (or (not (= lt!548557 Nil!17274)) (= lt!549079 lt!548573)))))

(declare-fun b!1576651 () Bool)

(assert (=> b!1576651 (= e!1012781 (Cons!17274 (h!22675 lt!548573) (++!4475 (t!143331 lt!548573) lt!548557)))))

(declare-fun b!1576650 () Bool)

(assert (=> b!1576650 (= e!1012781 lt!548557)))

(assert (= (and d!468314 c!255553) b!1576650))

(assert (= (and d!468314 (not c!255553)) b!1576651))

(assert (= (and d!468314 res!702774) b!1576652))

(assert (= (and b!1576652 res!702775) b!1576653))

(declare-fun m!1856947 () Bool)

(assert (=> b!1576652 m!1856947))

(declare-fun m!1856949 () Bool)

(assert (=> b!1576652 m!1856949))

(declare-fun m!1856951 () Bool)

(assert (=> b!1576652 m!1856951))

(declare-fun m!1856953 () Bool)

(assert (=> d!468314 m!1856953))

(declare-fun m!1856955 () Bool)

(assert (=> d!468314 m!1856955))

(declare-fun m!1856957 () Bool)

(assert (=> d!468314 m!1856957))

(declare-fun m!1856959 () Bool)

(assert (=> b!1576651 m!1856959))

(assert (=> b!1575911 d!468314))

(declare-fun d!468316 () Bool)

(assert (=> d!468316 (isPrefix!1299 lt!548573 (++!4475 lt!548573 lt!548557))))

(declare-fun lt!549080 () Unit!26707)

(assert (=> d!468316 (= lt!549080 (choose!9430 lt!548573 lt!548557))))

(assert (=> d!468316 (= (lemmaConcatTwoListThenFirstIsPrefix!824 lt!548573 lt!548557) lt!549080)))

(declare-fun bs!390597 () Bool)

(assert (= bs!390597 d!468316))

(assert (=> bs!390597 m!1855539))

(assert (=> bs!390597 m!1855539))

(assert (=> bs!390597 m!1855541))

(declare-fun m!1856961 () Bool)

(assert (=> bs!390597 m!1856961))

(assert (=> b!1575911 d!468316))

(declare-fun d!468318 () Bool)

(assert (=> d!468318 (= (isEmpty!10315 (_2!9775 (get!4939 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))) ((_ is Nil!17274) (_2!9775 (get!4939 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))))))

(assert (=> b!1575911 d!468318))

(declare-fun d!468320 () Bool)

(assert (=> d!468320 (= (list!6652 (singletonSeq!1377 (apply!4177 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457)))) 0))) (list!6655 (c!255391 (singletonSeq!1377 (apply!4177 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457)))) 0)))))))

(declare-fun bs!390598 () Bool)

(assert (= bs!390598 d!468320))

(declare-fun m!1856963 () Bool)

(assert (=> bs!390598 m!1856963))

(assert (=> b!1575911 d!468320))

(declare-fun d!468322 () Bool)

(declare-fun lt!549081 () BalanceConc!11396)

(assert (=> d!468322 (= (list!6652 lt!549081) (printList!791 thiss!17113 (list!6651 (seqFromList!1836 (t!143333 (t!143333 tokens!457))))))))

(assert (=> d!468322 (= lt!549081 (printTailRec!727 thiss!17113 (seqFromList!1836 (t!143333 (t!143333 tokens!457))) 0 (BalanceConc!11397 Empty!5726)))))

(assert (=> d!468322 (= (print!1199 thiss!17113 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))) lt!549081)))

(declare-fun bs!390599 () Bool)

(assert (= bs!390599 d!468322))

(declare-fun m!1856965 () Bool)

(assert (=> bs!390599 m!1856965))

(assert (=> bs!390599 m!1855195))

(assert (=> bs!390599 m!1855713))

(assert (=> bs!390599 m!1855713))

(declare-fun m!1856967 () Bool)

(assert (=> bs!390599 m!1856967))

(assert (=> bs!390599 m!1855195))

(declare-fun m!1856969 () Bool)

(assert (=> bs!390599 m!1856969))

(assert (=> b!1575911 d!468322))

(declare-fun d!468324 () Bool)

(declare-fun lt!549084 () C!8908)

(assert (=> d!468324 (= lt!549084 (head!3164 (list!6652 lt!548558)))))

(declare-fun head!3169 (Conc!5726) C!8908)

(assert (=> d!468324 (= lt!549084 (head!3169 (c!255391 lt!548558)))))

(assert (=> d!468324 (not (isEmpty!10311 lt!548558))))

(assert (=> d!468324 (= (head!3165 lt!548558) lt!549084)))

(declare-fun bs!390600 () Bool)

(assert (= bs!390600 d!468324))

(assert (=> bs!390600 m!1855561))

(assert (=> bs!390600 m!1855561))

(assert (=> bs!390600 m!1855593))

(declare-fun m!1856971 () Bool)

(assert (=> bs!390600 m!1856971))

(declare-fun m!1856973 () Bool)

(assert (=> bs!390600 m!1856973))

(assert (=> b!1575911 d!468324))

(assert (=> b!1575911 d!468178))

(assert (=> b!1575911 d!468176))

(declare-fun d!468326 () Bool)

(declare-fun lt!549085 () BalanceConc!11396)

(assert (=> d!468326 (= (list!6652 lt!549085) (originalCharacters!3853 (h!22677 (t!143333 (t!143333 tokens!457)))))))

(assert (=> d!468326 (= lt!549085 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))))) (value!96284 (h!22677 (t!143333 (t!143333 tokens!457))))))))

(assert (=> d!468326 (= (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457)))) lt!549085)))

(declare-fun b_lambda!49625 () Bool)

(assert (=> (not b_lambda!49625) (not d!468326)))

(declare-fun t!143388 () Bool)

(declare-fun tb!88711 () Bool)

(assert (=> (and b!1575785 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457))))))) t!143388) tb!88711))

(declare-fun b!1576654 () Bool)

(declare-fun e!1012783 () Bool)

(declare-fun tp!464097 () Bool)

(assert (=> b!1576654 (= e!1012783 (and (inv!22687 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))))) (value!96284 (h!22677 (t!143333 (t!143333 tokens!457))))))) tp!464097))))

(declare-fun result!107334 () Bool)

(assert (=> tb!88711 (= result!107334 (and (inv!22688 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))))) (value!96284 (h!22677 (t!143333 (t!143333 tokens!457)))))) e!1012783))))

(assert (= tb!88711 b!1576654))

(declare-fun m!1856975 () Bool)

(assert (=> b!1576654 m!1856975))

(declare-fun m!1856977 () Bool)

(assert (=> tb!88711 m!1856977))

(assert (=> d!468326 t!143388))

(declare-fun b_and!110373 () Bool)

(assert (= b_and!110365 (and (=> t!143388 result!107334) b_and!110373)))

(declare-fun t!143390 () Bool)

(declare-fun tb!88713 () Bool)

(assert (=> (and b!1575786 (= (toChars!4293 (transformation!3039 (h!22676 rules!1846))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457))))))) t!143390) tb!88713))

(declare-fun result!107336 () Bool)

(assert (= result!107336 result!107334))

(assert (=> d!468326 t!143390))

(declare-fun b_and!110375 () Bool)

(assert (= b_and!110367 (and (=> t!143390 result!107336) b_and!110375)))

(declare-fun t!143392 () Bool)

(declare-fun tb!88715 () Bool)

(assert (=> (and b!1576127 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457))))))) t!143392) tb!88715))

(declare-fun result!107338 () Bool)

(assert (= result!107338 result!107334))

(assert (=> d!468326 t!143392))

(declare-fun b_and!110377 () Bool)

(assert (= b_and!110369 (and (=> t!143392 result!107338) b_and!110377)))

(declare-fun tb!88717 () Bool)

(declare-fun t!143394 () Bool)

(assert (=> (and b!1576138 (= (toChars!4293 (transformation!3039 (h!22676 (t!143332 rules!1846)))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457))))))) t!143394) tb!88717))

(declare-fun result!107340 () Bool)

(assert (= result!107340 result!107334))

(assert (=> d!468326 t!143394))

(declare-fun b_and!110379 () Bool)

(assert (= b_and!110371 (and (=> t!143394 result!107340) b_and!110379)))

(declare-fun m!1856979 () Bool)

(assert (=> d!468326 m!1856979))

(declare-fun m!1856981 () Bool)

(assert (=> d!468326 m!1856981))

(assert (=> b!1575911 d!468326))

(declare-fun d!468328 () Bool)

(assert (=> d!468328 (= (head!3164 (originalCharacters!3853 (h!22677 (t!143333 (t!143333 tokens!457))))) (h!22675 (originalCharacters!3853 (h!22677 (t!143333 (t!143333 tokens!457))))))))

(assert (=> b!1575911 d!468328))

(declare-fun b!1576658 () Bool)

(declare-fun e!1012785 () Bool)

(assert (=> b!1576658 (= e!1012785 (>= (size!13920 (++!4475 lt!548573 lt!548557)) (size!13920 lt!548573)))))

(declare-fun b!1576655 () Bool)

(declare-fun e!1012786 () Bool)

(declare-fun e!1012784 () Bool)

(assert (=> b!1576655 (= e!1012786 e!1012784)))

(declare-fun res!702779 () Bool)

(assert (=> b!1576655 (=> (not res!702779) (not e!1012784))))

(assert (=> b!1576655 (= res!702779 (not ((_ is Nil!17274) (++!4475 lt!548573 lt!548557))))))

(declare-fun d!468330 () Bool)

(assert (=> d!468330 e!1012785))

(declare-fun res!702776 () Bool)

(assert (=> d!468330 (=> res!702776 e!1012785)))

(declare-fun lt!549086 () Bool)

(assert (=> d!468330 (= res!702776 (not lt!549086))))

(assert (=> d!468330 (= lt!549086 e!1012786)))

(declare-fun res!702777 () Bool)

(assert (=> d!468330 (=> res!702777 e!1012786)))

(assert (=> d!468330 (= res!702777 ((_ is Nil!17274) lt!548573))))

(assert (=> d!468330 (= (isPrefix!1299 lt!548573 (++!4475 lt!548573 lt!548557)) lt!549086)))

(declare-fun b!1576657 () Bool)

(assert (=> b!1576657 (= e!1012784 (isPrefix!1299 (tail!2240 lt!548573) (tail!2240 (++!4475 lt!548573 lt!548557))))))

(declare-fun b!1576656 () Bool)

(declare-fun res!702778 () Bool)

(assert (=> b!1576656 (=> (not res!702778) (not e!1012784))))

(assert (=> b!1576656 (= res!702778 (= (head!3164 lt!548573) (head!3164 (++!4475 lt!548573 lt!548557))))))

(assert (= (and d!468330 (not res!702777)) b!1576655))

(assert (= (and b!1576655 res!702779) b!1576656))

(assert (= (and b!1576656 res!702778) b!1576657))

(assert (= (and d!468330 (not res!702776)) b!1576658))

(assert (=> b!1576658 m!1855539))

(declare-fun m!1856983 () Bool)

(assert (=> b!1576658 m!1856983))

(assert (=> b!1576658 m!1856949))

(declare-fun m!1856985 () Bool)

(assert (=> b!1576657 m!1856985))

(assert (=> b!1576657 m!1855539))

(declare-fun m!1856987 () Bool)

(assert (=> b!1576657 m!1856987))

(assert (=> b!1576657 m!1856985))

(assert (=> b!1576657 m!1856987))

(declare-fun m!1856989 () Bool)

(assert (=> b!1576657 m!1856989))

(declare-fun m!1856991 () Bool)

(assert (=> b!1576656 m!1856991))

(assert (=> b!1576656 m!1855539))

(declare-fun m!1856993 () Bool)

(assert (=> b!1576656 m!1856993))

(assert (=> b!1575911 d!468330))

(assert (=> b!1575911 d!468162))

(declare-fun b!1576962 () Bool)

(declare-fun e!1012956 () Unit!26707)

(declare-fun Unit!26779 () Unit!26707)

(assert (=> b!1576962 (= e!1012956 Unit!26779)))

(declare-fun b!1576963 () Bool)

(assert (=> b!1576963 false))

(declare-fun lt!549682 () Unit!26707)

(declare-fun lt!549681 () Unit!26707)

(assert (=> b!1576963 (= lt!549682 lt!549681)))

(declare-fun lt!549670 () Token!5644)

(declare-fun lt!549687 () List!17344)

(assert (=> b!1576963 (not (matchR!1904 (regex!3039 (rule!4831 lt!549670)) lt!549687))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!54 (LexerInterface!2668 List!17345 Rule!5878 List!17344 List!17344 Rule!5878) Unit!26707)

(assert (=> b!1576963 (= lt!549681 (lemmaMaxPrefNoSmallerRuleMatches!54 thiss!17113 rules!1846 (rule!4831 (h!22677 (t!143333 tokens!457))) lt!549687 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (rule!4831 lt!549670)))))

(assert (=> b!1576963 (= lt!549687 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))

(declare-fun Unit!26780 () Unit!26707)

(assert (=> b!1576963 (= e!1012956 Unit!26780)))

(declare-fun b!1576964 () Bool)

(assert (=> b!1576964 false))

(declare-fun lt!549657 () Unit!26707)

(declare-fun lt!549647 () Unit!26707)

(assert (=> b!1576964 (= lt!549657 lt!549647)))

(assert (=> b!1576964 (= (rule!4831 lt!549670) (rule!4831 (h!22677 (t!143333 tokens!457))))))

(declare-fun lemmaSameIndexThenSameElement!30 (List!17345 Rule!5878 Rule!5878) Unit!26707)

(assert (=> b!1576964 (= lt!549647 (lemmaSameIndexThenSameElement!30 rules!1846 (rule!4831 lt!549670) (rule!4831 (h!22677 (t!143333 tokens!457)))))))

(declare-fun e!1012958 () Unit!26707)

(declare-fun Unit!26781 () Unit!26707)

(assert (=> b!1576964 (= e!1012958 Unit!26781)))

(declare-fun d!468332 () Bool)

(assert (=> d!468332 (= (maxPrefix!1236 thiss!17113 rules!1846 (++!4475 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (list!6652 lt!548558))) (Some!3085 (tuple2!16747 (h!22677 (t!143333 tokens!457)) (list!6652 lt!548558))))))

(declare-fun lt!549673 () Unit!26707)

(declare-fun Unit!26782 () Unit!26707)

(assert (=> d!468332 (= lt!549673 Unit!26782)))

(declare-fun lt!549676 () Unit!26707)

(declare-fun e!1012957 () Unit!26707)

(assert (=> d!468332 (= lt!549676 e!1012957)))

(declare-fun c!255626 () Bool)

(assert (=> d!468332 (= c!255626 (not (= (rule!4831 lt!549670) (rule!4831 (h!22677 (t!143333 tokens!457))))))))

(declare-fun lt!549689 () Unit!26707)

(declare-fun lt!549697 () Unit!26707)

(assert (=> d!468332 (= lt!549689 lt!549697)))

(declare-fun lt!549642 () List!17344)

(assert (=> d!468332 (= (list!6652 lt!548558) lt!549642)))

(declare-fun lt!549665 () List!17344)

(declare-fun lemmaSamePrefixThenSameSuffix!636 (List!17344 List!17344 List!17344 List!17344 List!17344) Unit!26707)

(assert (=> d!468332 (= lt!549697 (lemmaSamePrefixThenSameSuffix!636 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (list!6652 lt!548558) (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) lt!549642 lt!549665))))

(declare-fun lt!549695 () Unit!26707)

(declare-fun lt!549641 () Unit!26707)

(assert (=> d!468332 (= lt!549695 lt!549641)))

(declare-fun lt!549651 () List!17344)

(declare-fun lt!549684 () List!17344)

(assert (=> d!468332 (= lt!549651 lt!549684)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!138 (List!17344 List!17344 List!17344) Unit!26707)

(assert (=> d!468332 (= lt!549641 (lemmaIsPrefixSameLengthThenSameList!138 lt!549651 lt!549684 lt!549665))))

(assert (=> d!468332 (= lt!549684 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))

(assert (=> d!468332 (= lt!549651 (list!6652 (charsOf!1688 lt!549670)))))

(declare-fun lt!549666 () Unit!26707)

(declare-fun e!1012953 () Unit!26707)

(assert (=> d!468332 (= lt!549666 e!1012953)))

(declare-fun c!255625 () Bool)

(assert (=> d!468332 (= c!255625 (< (size!13921 (charsOf!1688 lt!549670)) (size!13921 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(declare-fun lt!549678 () Unit!26707)

(declare-fun e!1012954 () Unit!26707)

(assert (=> d!468332 (= lt!549678 e!1012954)))

(declare-fun c!255630 () Bool)

(assert (=> d!468332 (= c!255630 (> (size!13921 (charsOf!1688 lt!549670)) (size!13921 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(declare-fun lt!549677 () Unit!26707)

(declare-fun lt!549700 () Unit!26707)

(assert (=> d!468332 (= lt!549677 lt!549700)))

(assert (=> d!468332 (matchR!1904 (rulesRegex!445 thiss!17113 rules!1846) (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!14 (LexerInterface!2668 List!17345 List!17344 Token!5644 Rule!5878 List!17344) Unit!26707)

(assert (=> d!468332 (= lt!549700 (lemmaMaxPrefixThenMatchesRulesRegex!14 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (h!22677 (t!143333 tokens!457)) (rule!4831 (h!22677 (t!143333 tokens!457))) Nil!17274))))

(declare-fun lt!549653 () Unit!26707)

(declare-fun lt!549634 () Unit!26707)

(assert (=> d!468332 (= lt!549653 lt!549634)))

(declare-fun lt!549662 () List!17344)

(assert (=> d!468332 (= lt!549642 lt!549662)))

(declare-fun lt!549667 () List!17344)

(declare-fun lt!549650 () List!17344)

(assert (=> d!468332 (= lt!549634 (lemmaSamePrefixThenSameSuffix!636 lt!549650 lt!549642 lt!549667 lt!549662 lt!549665))))

(declare-fun getSuffix!684 (List!17344 List!17344) List!17344)

(assert (=> d!468332 (= lt!549662 (getSuffix!684 lt!549665 (list!6652 (charsOf!1688 lt!549670))))))

(assert (=> d!468332 (= lt!549667 (list!6652 (charsOf!1688 lt!549670)))))

(assert (=> d!468332 (= lt!549650 (list!6652 (charsOf!1688 lt!549670)))))

(declare-fun lt!549699 () Unit!26707)

(declare-fun lt!549691 () Unit!26707)

(assert (=> d!468332 (= lt!549699 lt!549691)))

(declare-fun lt!549659 () List!17344)

(assert (=> d!468332 (= (maxPrefixOneRule!719 thiss!17113 (rule!4831 lt!549670) lt!549665) (Some!3085 (tuple2!16747 (Token!5645 (apply!4185 (transformation!3039 (rule!4831 lt!549670)) (seqFromList!1838 lt!549659)) (rule!4831 lt!549670) (size!13920 lt!549659) lt!549659) lt!549642)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!204 (LexerInterface!2668 List!17345 List!17344 List!17344 List!17344 Rule!5878) Unit!26707)

(assert (=> d!468332 (= lt!549691 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!204 thiss!17113 rules!1846 lt!549659 lt!549665 lt!549642 (rule!4831 lt!549670)))))

(assert (=> d!468332 (= lt!549659 (list!6652 (charsOf!1688 lt!549670)))))

(declare-fun lt!549690 () Unit!26707)

(declare-fun lemmaCharactersSize!310 (Token!5644) Unit!26707)

(assert (=> d!468332 (= lt!549690 (lemmaCharactersSize!310 lt!549670))))

(declare-fun lt!549688 () Unit!26707)

(declare-fun lemmaEqSameImage!163 (TokenValueInjection!5918 BalanceConc!11396 BalanceConc!11396) Unit!26707)

(assert (=> d!468332 (= lt!549688 (lemmaEqSameImage!163 (transformation!3039 (rule!4831 lt!549670)) (charsOf!1688 lt!549670) (seqFromList!1838 (originalCharacters!3853 lt!549670))))))

(declare-fun lt!549639 () Unit!26707)

(declare-fun lemmaSemiInverse!378 (TokenValueInjection!5918 BalanceConc!11396) Unit!26707)

(assert (=> d!468332 (= lt!549639 (lemmaSemiInverse!378 (transformation!3039 (rule!4831 lt!549670)) (charsOf!1688 lt!549670)))))

(declare-fun lt!549663 () Unit!26707)

(declare-fun lemmaInv!443 (TokenValueInjection!5918) Unit!26707)

(assert (=> d!468332 (= lt!549663 (lemmaInv!443 (transformation!3039 (rule!4831 lt!549670))))))

(declare-fun lt!549701 () Unit!26707)

(declare-fun lt!549636 () Unit!26707)

(assert (=> d!468332 (= lt!549701 lt!549636)))

(declare-fun lt!549658 () List!17344)

(assert (=> d!468332 (isPrefix!1299 lt!549658 (++!4475 lt!549658 lt!549642))))

(assert (=> d!468332 (= lt!549636 (lemmaConcatTwoListThenFirstIsPrefix!824 lt!549658 lt!549642))))

(assert (=> d!468332 (= lt!549658 (list!6652 (charsOf!1688 lt!549670)))))

(declare-fun lt!549646 () Unit!26707)

(declare-fun lt!549702 () Unit!26707)

(assert (=> d!468332 (= lt!549646 lt!549702)))

(declare-fun e!1012955 () Bool)

(assert (=> d!468332 e!1012955))

(declare-fun res!702862 () Bool)

(assert (=> d!468332 (=> (not res!702862) (not e!1012955))))

(assert (=> d!468332 (= res!702862 (isDefined!2483 (getRuleFromTag!228 thiss!17113 rules!1846 (tag!3305 (rule!4831 lt!549670)))))))

(assert (=> d!468332 (= lt!549702 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!228 thiss!17113 rules!1846 lt!549665 lt!549670))))

(declare-fun lt!549655 () Option!3086)

(assert (=> d!468332 (= lt!549642 (_2!9775 (get!4939 lt!549655)))))

(assert (=> d!468332 (= lt!549670 (_1!9775 (get!4939 lt!549655)))))

(declare-fun lt!549643 () Unit!26707)

(assert (=> d!468332 (= lt!549643 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!256 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (list!6652 lt!548558)))))

(assert (=> d!468332 (= lt!549655 (maxPrefix!1236 thiss!17113 rules!1846 lt!549665))))

(declare-fun lt!549686 () Unit!26707)

(declare-fun lt!549644 () Unit!26707)

(assert (=> d!468332 (= lt!549686 lt!549644)))

(declare-fun lt!549640 () List!17344)

(assert (=> d!468332 (isPrefix!1299 lt!549640 (++!4475 lt!549640 (list!6652 lt!548558)))))

(assert (=> d!468332 (= lt!549644 (lemmaConcatTwoListThenFirstIsPrefix!824 lt!549640 (list!6652 lt!548558)))))

(assert (=> d!468332 (= lt!549640 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))

(assert (=> d!468332 (= lt!549665 (++!4475 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (list!6652 lt!548558)))))

(assert (=> d!468332 (not (isEmpty!10310 rules!1846))))

(assert (=> d!468332 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!54 thiss!17113 rules!1846 (h!22677 (t!143333 tokens!457)) (rule!4831 (h!22677 (t!143333 tokens!457))) (list!6652 lt!548558)) lt!549673)))

(declare-fun b!1576965 () Bool)

(declare-fun e!1012952 () Unit!26707)

(declare-fun Unit!26784 () Unit!26707)

(assert (=> b!1576965 (= e!1012952 Unit!26784)))

(declare-fun b!1576966 () Bool)

(declare-fun Unit!26785 () Unit!26707)

(assert (=> b!1576966 (= e!1012954 Unit!26785)))

(declare-fun lt!549652 () Unit!26707)

(assert (=> b!1576966 (= lt!549652 (lemmaMaxPrefixThenMatchesRulesRegex!14 thiss!17113 rules!1846 lt!549665 lt!549670 (rule!4831 lt!549670) lt!549642))))

(assert (=> b!1576966 (matchR!1904 (rulesRegex!445 thiss!17113 rules!1846) (list!6652 (charsOf!1688 lt!549670)))))

(declare-fun lt!549674 () Unit!26707)

(assert (=> b!1576966 (= lt!549674 lt!549652)))

(declare-fun lt!549635 () List!17344)

(assert (=> b!1576966 (= lt!549635 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))

(declare-fun lt!549669 () List!17344)

(assert (=> b!1576966 (= lt!549669 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))

(declare-fun lt!549668 () List!17344)

(assert (=> b!1576966 (= lt!549668 (getSuffix!684 lt!549665 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(declare-fun lt!549645 () Unit!26707)

(assert (=> b!1576966 (= lt!549645 (lemmaSamePrefixThenSameSuffix!636 lt!549635 (list!6652 lt!548558) lt!549669 lt!549668 lt!549665))))

(assert (=> b!1576966 (= (list!6652 lt!548558) lt!549668)))

(declare-fun lt!549696 () Unit!26707)

(assert (=> b!1576966 (= lt!549696 lt!549645)))

(declare-fun lt!549679 () List!17344)

(assert (=> b!1576966 (= lt!549679 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))

(declare-fun lt!549661 () Unit!26707)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!127 (List!17344 List!17344) Unit!26707)

(assert (=> b!1576966 (= lt!549661 (lemmaAddHeadSuffixToPrefixStillPrefix!127 lt!549679 lt!549665))))

(assert (=> b!1576966 (isPrefix!1299 (++!4475 lt!549679 (Cons!17274 (head!3164 (getSuffix!684 lt!549665 lt!549679)) Nil!17274)) lt!549665)))

(declare-fun lt!549633 () Unit!26707)

(assert (=> b!1576966 (= lt!549633 lt!549661)))

(declare-fun lt!549698 () List!17344)

(assert (=> b!1576966 (= lt!549698 (list!6652 (charsOf!1688 lt!549670)))))

(declare-fun lt!549675 () List!17344)

(assert (=> b!1576966 (= lt!549675 (++!4475 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (Cons!17274 (head!3164 (list!6652 lt!548558)) Nil!17274)))))

(declare-fun lt!549654 () Unit!26707)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!14 (List!17344 List!17344 List!17344) Unit!26707)

(assert (=> b!1576966 (= lt!549654 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!14 lt!549698 lt!549675 lt!549665))))

(assert (=> b!1576966 (isPrefix!1299 lt!549675 lt!549698)))

(declare-fun lt!549680 () Unit!26707)

(assert (=> b!1576966 (= lt!549680 lt!549654)))

(declare-fun lt!549638 () Regex!4367)

(assert (=> b!1576966 (= lt!549638 (rulesRegex!445 thiss!17113 rules!1846))))

(declare-fun lt!549693 () List!17344)

(assert (=> b!1576966 (= lt!549693 (++!4475 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (Cons!17274 (head!3164 (list!6652 lt!548558)) Nil!17274)))))

(declare-fun lt!549660 () List!17344)

(assert (=> b!1576966 (= lt!549660 (list!6652 (charsOf!1688 lt!549670)))))

(declare-fun lt!549656 () Unit!26707)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!15 (Regex!4367 List!17344 List!17344) Unit!26707)

(assert (=> b!1576966 (= lt!549656 (lemmaNotPrefixMatchThenCannotMatchLonger!15 lt!549638 lt!549693 lt!549660))))

(assert (=> b!1576966 (not (matchR!1904 lt!549638 lt!549660))))

(declare-fun lt!549683 () Unit!26707)

(assert (=> b!1576966 (= lt!549683 lt!549656)))

(assert (=> b!1576966 false))

(declare-fun b!1576967 () Bool)

(declare-fun Unit!26787 () Unit!26707)

(assert (=> b!1576967 (= e!1012957 Unit!26787)))

(declare-fun c!255628 () Bool)

(declare-fun getIndex!82 (List!17345 Rule!5878) Int)

(assert (=> b!1576967 (= c!255628 (< (getIndex!82 rules!1846 (rule!4831 (h!22677 (t!143333 tokens!457)))) (getIndex!82 rules!1846 (rule!4831 lt!549670))))))

(declare-fun lt!549685 () Unit!26707)

(assert (=> b!1576967 (= lt!549685 e!1012952)))

(declare-fun c!255629 () Bool)

(assert (=> b!1576967 (= c!255629 (< (getIndex!82 rules!1846 (rule!4831 lt!549670)) (getIndex!82 rules!1846 (rule!4831 (h!22677 (t!143333 tokens!457))))))))

(declare-fun lt!549648 () Unit!26707)

(assert (=> b!1576967 (= lt!549648 e!1012956)))

(declare-fun c!255627 () Bool)

(assert (=> b!1576967 (= c!255627 (= (getIndex!82 rules!1846 (rule!4831 lt!549670)) (getIndex!82 rules!1846 (rule!4831 (h!22677 (t!143333 tokens!457))))))))

(declare-fun lt!549672 () Unit!26707)

(assert (=> b!1576967 (= lt!549672 e!1012958)))

(assert (=> b!1576967 false))

(declare-fun b!1576968 () Bool)

(assert (=> b!1576968 false))

(declare-fun lt!549692 () Unit!26707)

(declare-fun lt!549703 () Unit!26707)

(assert (=> b!1576968 (= lt!549692 lt!549703)))

(declare-fun lt!549671 () List!17344)

(assert (=> b!1576968 (not (matchR!1904 (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))) lt!549671))))

(assert (=> b!1576968 (= lt!549703 (lemmaMaxPrefNoSmallerRuleMatches!54 thiss!17113 rules!1846 (rule!4831 lt!549670) lt!549671 lt!549665 (rule!4831 (h!22677 (t!143333 tokens!457)))))))

(assert (=> b!1576968 (= lt!549671 (list!6652 (charsOf!1688 lt!549670)))))

(declare-fun Unit!26788 () Unit!26707)

(assert (=> b!1576968 (= e!1012952 Unit!26788)))

(declare-fun b!1576969 () Bool)

(assert (=> b!1576969 (= e!1012955 (= (rule!4831 lt!549670) (get!4941 (getRuleFromTag!228 thiss!17113 rules!1846 (tag!3305 (rule!4831 lt!549670))))))))

(declare-fun b!1576970 () Bool)

(declare-fun Unit!26789 () Unit!26707)

(assert (=> b!1576970 (= e!1012958 Unit!26789)))

(declare-fun b!1576971 () Bool)

(declare-fun Unit!26790 () Unit!26707)

(assert (=> b!1576971 (= e!1012953 Unit!26790)))

(declare-fun b!1576972 () Bool)

(declare-fun res!702861 () Bool)

(assert (=> b!1576972 (=> (not res!702861) (not e!1012955))))

(assert (=> b!1576972 (= res!702861 (matchR!1904 (regex!3039 (get!4941 (getRuleFromTag!228 thiss!17113 rules!1846 (tag!3305 (rule!4831 lt!549670))))) (list!6652 (charsOf!1688 lt!549670))))))

(declare-fun b!1576973 () Bool)

(declare-fun Unit!26791 () Unit!26707)

(assert (=> b!1576973 (= e!1012957 Unit!26791)))

(declare-fun b!1576974 () Bool)

(declare-fun Unit!26792 () Unit!26707)

(assert (=> b!1576974 (= e!1012954 Unit!26792)))

(declare-fun b!1576975 () Bool)

(declare-fun Unit!26793 () Unit!26707)

(assert (=> b!1576975 (= e!1012953 Unit!26793)))

(declare-fun lt!549637 () List!17344)

(assert (=> b!1576975 (= lt!549637 (list!6652 (charsOf!1688 lt!549670)))))

(declare-fun lt!549694 () List!17344)

(assert (=> b!1576975 (= lt!549694 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))

(declare-fun lt!549664 () Unit!26707)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!104 (LexerInterface!2668 List!17345 Rule!5878 List!17344 List!17344 List!17344 Rule!5878) Unit!26707)

(assert (=> b!1576975 (= lt!549664 (lemmaMaxPrefixOutputsMaxPrefix!104 thiss!17113 rules!1846 (rule!4831 lt!549670) lt!549637 lt!549665 lt!549694 (rule!4831 (h!22677 (t!143333 tokens!457)))))))

(assert (=> b!1576975 (not (matchR!1904 (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))) lt!549694))))

(declare-fun lt!549649 () Unit!26707)

(assert (=> b!1576975 (= lt!549649 lt!549664)))

(assert (=> b!1576975 false))

(assert (= (and d!468332 res!702862) b!1576972))

(assert (= (and b!1576972 res!702861) b!1576969))

(assert (= (and d!468332 c!255630) b!1576966))

(assert (= (and d!468332 (not c!255630)) b!1576974))

(assert (= (and d!468332 c!255625) b!1576975))

(assert (= (and d!468332 (not c!255625)) b!1576971))

(assert (= (and d!468332 c!255626) b!1576967))

(assert (= (and d!468332 (not c!255626)) b!1576973))

(assert (= (and b!1576967 c!255628) b!1576968))

(assert (= (and b!1576967 (not c!255628)) b!1576965))

(assert (= (and b!1576967 c!255629) b!1576963))

(assert (= (and b!1576967 (not c!255629)) b!1576962))

(assert (= (and b!1576967 c!255627) b!1576964))

(assert (= (and b!1576967 (not c!255627)) b!1576970))

(declare-fun m!1857645 () Bool)

(assert (=> b!1576968 m!1857645))

(declare-fun m!1857647 () Bool)

(assert (=> b!1576968 m!1857647))

(declare-fun m!1857649 () Bool)

(assert (=> b!1576968 m!1857649))

(assert (=> b!1576968 m!1857649))

(declare-fun m!1857651 () Bool)

(assert (=> b!1576968 m!1857651))

(declare-fun m!1857653 () Bool)

(assert (=> b!1576963 m!1857653))

(assert (=> b!1576963 m!1855219))

(assert (=> b!1576963 m!1855219))

(assert (=> b!1576963 m!1855317))

(assert (=> b!1576963 m!1855317))

(declare-fun m!1857655 () Bool)

(assert (=> b!1576963 m!1857655))

(declare-fun m!1857657 () Bool)

(assert (=> b!1576969 m!1857657))

(assert (=> b!1576969 m!1857657))

(declare-fun m!1857659 () Bool)

(assert (=> b!1576969 m!1857659))

(assert (=> d!468332 m!1855219))

(declare-fun m!1857661 () Bool)

(assert (=> d!468332 m!1857661))

(declare-fun m!1857663 () Bool)

(assert (=> d!468332 m!1857663))

(declare-fun m!1857665 () Bool)

(assert (=> d!468332 m!1857665))

(declare-fun m!1857667 () Bool)

(assert (=> d!468332 m!1857667))

(assert (=> d!468332 m!1857649))

(declare-fun m!1857669 () Bool)

(assert (=> d!468332 m!1857669))

(assert (=> d!468332 m!1855561))

(declare-fun m!1857671 () Bool)

(assert (=> d!468332 m!1857671))

(assert (=> d!468332 m!1857671))

(declare-fun m!1857673 () Bool)

(assert (=> d!468332 m!1857673))

(assert (=> d!468332 m!1855317))

(declare-fun m!1857675 () Bool)

(assert (=> d!468332 m!1857675))

(assert (=> d!468332 m!1857651))

(declare-fun m!1857677 () Bool)

(assert (=> d!468332 m!1857677))

(assert (=> d!468332 m!1856853))

(assert (=> d!468332 m!1856855))

(declare-fun m!1857679 () Bool)

(assert (=> d!468332 m!1857679))

(assert (=> d!468332 m!1855317))

(assert (=> d!468332 m!1855561))

(assert (=> d!468332 m!1855317))

(declare-fun m!1857681 () Bool)

(assert (=> d!468332 m!1857681))

(assert (=> d!468332 m!1857649))

(assert (=> d!468332 m!1857651))

(assert (=> d!468332 m!1855317))

(assert (=> d!468332 m!1855561))

(assert (=> d!468332 m!1855571))

(declare-fun m!1857683 () Bool)

(assert (=> d!468332 m!1857683))

(assert (=> d!468332 m!1855217))

(declare-fun m!1857685 () Bool)

(assert (=> d!468332 m!1857685))

(assert (=> d!468332 m!1857657))

(declare-fun m!1857687 () Bool)

(assert (=> d!468332 m!1857687))

(declare-fun m!1857689 () Bool)

(assert (=> d!468332 m!1857689))

(assert (=> d!468332 m!1857649))

(declare-fun m!1857691 () Bool)

(assert (=> d!468332 m!1857691))

(declare-fun m!1857693 () Bool)

(assert (=> d!468332 m!1857693))

(assert (=> d!468332 m!1855219))

(assert (=> d!468332 m!1855317))

(assert (=> d!468332 m!1857657))

(assert (=> d!468332 m!1855219))

(assert (=> d!468332 m!1855699))

(declare-fun m!1857695 () Bool)

(assert (=> d!468332 m!1857695))

(assert (=> d!468332 m!1856323))

(assert (=> d!468332 m!1855317))

(declare-fun m!1857697 () Bool)

(assert (=> d!468332 m!1857697))

(declare-fun m!1857699 () Bool)

(assert (=> d!468332 m!1857699))

(assert (=> d!468332 m!1856323))

(assert (=> d!468332 m!1857649))

(assert (=> d!468332 m!1857661))

(declare-fun m!1857701 () Bool)

(assert (=> d!468332 m!1857701))

(assert (=> d!468332 m!1855561))

(declare-fun m!1857703 () Bool)

(assert (=> d!468332 m!1857703))

(assert (=> d!468332 m!1857663))

(declare-fun m!1857705 () Bool)

(assert (=> d!468332 m!1857705))

(declare-fun m!1857707 () Bool)

(assert (=> d!468332 m!1857707))

(assert (=> d!468332 m!1857695))

(declare-fun m!1857709 () Bool)

(assert (=> d!468332 m!1857709))

(assert (=> d!468332 m!1855317))

(assert (=> d!468332 m!1855561))

(assert (=> d!468332 m!1856853))

(declare-fun m!1857711 () Bool)

(assert (=> d!468332 m!1857711))

(assert (=> d!468332 m!1857649))

(declare-fun m!1857713 () Bool)

(assert (=> d!468332 m!1857713))

(declare-fun m!1857715 () Bool)

(assert (=> b!1576964 m!1857715))

(assert (=> b!1576975 m!1855219))

(assert (=> b!1576975 m!1857649))

(declare-fun m!1857717 () Bool)

(assert (=> b!1576975 m!1857717))

(declare-fun m!1857719 () Bool)

(assert (=> b!1576975 m!1857719))

(assert (=> b!1576975 m!1855219))

(assert (=> b!1576975 m!1855317))

(assert (=> b!1576975 m!1857649))

(assert (=> b!1576975 m!1857651))

(assert (=> b!1576972 m!1857649))

(assert (=> b!1576972 m!1857657))

(assert (=> b!1576972 m!1857651))

(declare-fun m!1857721 () Bool)

(assert (=> b!1576972 m!1857721))

(assert (=> b!1576972 m!1857657))

(assert (=> b!1576972 m!1857659))

(assert (=> b!1576972 m!1857649))

(assert (=> b!1576972 m!1857651))

(declare-fun m!1857723 () Bool)

(assert (=> b!1576966 m!1857723))

(declare-fun m!1857725 () Bool)

(assert (=> b!1576966 m!1857725))

(declare-fun m!1857727 () Bool)

(assert (=> b!1576966 m!1857727))

(declare-fun m!1857729 () Bool)

(assert (=> b!1576966 m!1857729))

(declare-fun m!1857731 () Bool)

(assert (=> b!1576966 m!1857731))

(assert (=> b!1576966 m!1855219))

(assert (=> b!1576966 m!1855317))

(assert (=> b!1576966 m!1857723))

(declare-fun m!1857733 () Bool)

(assert (=> b!1576966 m!1857733))

(assert (=> b!1576966 m!1857729))

(declare-fun m!1857735 () Bool)

(assert (=> b!1576966 m!1857735))

(assert (=> b!1576966 m!1856323))

(assert (=> b!1576966 m!1855317))

(declare-fun m!1857737 () Bool)

(assert (=> b!1576966 m!1857737))

(assert (=> b!1576966 m!1856323))

(assert (=> b!1576966 m!1857651))

(declare-fun m!1857739 () Bool)

(assert (=> b!1576966 m!1857739))

(assert (=> b!1576966 m!1855219))

(assert (=> b!1576966 m!1855561))

(assert (=> b!1576966 m!1855593))

(assert (=> b!1576966 m!1857649))

(declare-fun m!1857741 () Bool)

(assert (=> b!1576966 m!1857741))

(assert (=> b!1576966 m!1855561))

(declare-fun m!1857743 () Bool)

(assert (=> b!1576966 m!1857743))

(declare-fun m!1857745 () Bool)

(assert (=> b!1576966 m!1857745))

(assert (=> b!1576966 m!1855317))

(declare-fun m!1857747 () Bool)

(assert (=> b!1576966 m!1857747))

(declare-fun m!1857749 () Bool)

(assert (=> b!1576966 m!1857749))

(assert (=> b!1576966 m!1857649))

(assert (=> b!1576966 m!1857651))

(declare-fun m!1857751 () Bool)

(assert (=> b!1576967 m!1857751))

(declare-fun m!1857753 () Bool)

(assert (=> b!1576967 m!1857753))

(assert (=> b!1575911 d!468332))

(declare-fun d!468478 () Bool)

(assert (=> d!468478 (= (list!6652 lt!548558) (list!6655 (c!255391 lt!548558)))))

(declare-fun bs!390635 () Bool)

(assert (= bs!390635 d!468478))

(declare-fun m!1857755 () Bool)

(assert (=> bs!390635 m!1857755))

(assert (=> b!1575911 d!468478))

(declare-fun d!468480 () Bool)

(assert (=> d!468480 (= (seqFromList!1836 (t!143333 (t!143333 (t!143333 tokens!457)))) (fromListB!785 (t!143333 (t!143333 (t!143333 tokens!457)))))))

(declare-fun bs!390636 () Bool)

(assert (= bs!390636 d!468480))

(declare-fun m!1857757 () Bool)

(assert (=> bs!390636 m!1857757))

(assert (=> b!1575911 d!468480))

(declare-fun d!468482 () Bool)

(assert (=> d!468482 (= (list!6652 lt!548578) (list!6655 (c!255391 lt!548578)))))

(declare-fun bs!390637 () Bool)

(assert (= bs!390637 d!468482))

(declare-fun m!1857759 () Bool)

(assert (=> bs!390637 m!1857759))

(assert (=> b!1575911 d!468482))

(declare-fun b!1576976 () Bool)

(declare-fun e!1012961 () Bool)

(declare-fun lt!549707 () Option!3086)

(assert (=> b!1576976 (= e!1012961 (contains!3017 rules!1846 (rule!4831 (_1!9775 (get!4939 lt!549707)))))))

(declare-fun b!1576977 () Bool)

(declare-fun res!702868 () Bool)

(assert (=> b!1576977 (=> (not res!702868) (not e!1012961))))

(assert (=> b!1576977 (= res!702868 (= (list!6652 (charsOf!1688 (_1!9775 (get!4939 lt!549707)))) (originalCharacters!3853 (_1!9775 (get!4939 lt!549707)))))))

(declare-fun b!1576978 () Bool)

(declare-fun res!702867 () Bool)

(assert (=> b!1576978 (=> (not res!702867) (not e!1012961))))

(assert (=> b!1576978 (= res!702867 (= (value!96284 (_1!9775 (get!4939 lt!549707))) (apply!4185 (transformation!3039 (rule!4831 (_1!9775 (get!4939 lt!549707)))) (seqFromList!1838 (originalCharacters!3853 (_1!9775 (get!4939 lt!549707)))))))))

(declare-fun b!1576979 () Bool)

(declare-fun e!1012959 () Option!3086)

(declare-fun call!102663 () Option!3086)

(assert (=> b!1576979 (= e!1012959 call!102663)))

(declare-fun b!1576980 () Bool)

(declare-fun res!702865 () Bool)

(assert (=> b!1576980 (=> (not res!702865) (not e!1012961))))

(assert (=> b!1576980 (= res!702865 (< (size!13920 (_2!9775 (get!4939 lt!549707))) (size!13920 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))))

(declare-fun b!1576981 () Bool)

(declare-fun e!1012960 () Bool)

(assert (=> b!1576981 (= e!1012960 e!1012961)))

(declare-fun res!702866 () Bool)

(assert (=> b!1576981 (=> (not res!702866) (not e!1012961))))

(assert (=> b!1576981 (= res!702866 (isDefined!2481 lt!549707))))

(declare-fun b!1576982 () Bool)

(declare-fun lt!549705 () Option!3086)

(declare-fun lt!549704 () Option!3086)

(assert (=> b!1576982 (= e!1012959 (ite (and ((_ is None!3085) lt!549705) ((_ is None!3085) lt!549704)) None!3085 (ite ((_ is None!3085) lt!549704) lt!549705 (ite ((_ is None!3085) lt!549705) lt!549704 (ite (>= (size!13916 (_1!9775 (v!23904 lt!549705))) (size!13916 (_1!9775 (v!23904 lt!549704)))) lt!549705 lt!549704)))))))

(assert (=> b!1576982 (= lt!549705 call!102663)))

(assert (=> b!1576982 (= lt!549704 (maxPrefix!1236 thiss!17113 (t!143332 rules!1846) (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(declare-fun b!1576983 () Bool)

(declare-fun res!702869 () Bool)

(assert (=> b!1576983 (=> (not res!702869) (not e!1012961))))

(assert (=> b!1576983 (= res!702869 (= (++!4475 (list!6652 (charsOf!1688 (_1!9775 (get!4939 lt!549707)))) (_2!9775 (get!4939 lt!549707))) (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(declare-fun d!468484 () Bool)

(assert (=> d!468484 e!1012960))

(declare-fun res!702863 () Bool)

(assert (=> d!468484 (=> res!702863 e!1012960)))

(assert (=> d!468484 (= res!702863 (isEmpty!10323 lt!549707))))

(assert (=> d!468484 (= lt!549707 e!1012959)))

(declare-fun c!255631 () Bool)

(assert (=> d!468484 (= c!255631 (and ((_ is Cons!17275) rules!1846) ((_ is Nil!17275) (t!143332 rules!1846))))))

(declare-fun lt!549706 () Unit!26707)

(declare-fun lt!549708 () Unit!26707)

(assert (=> d!468484 (= lt!549706 lt!549708)))

(assert (=> d!468484 (isPrefix!1299 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))

(assert (=> d!468484 (= lt!549708 (lemmaIsPrefixRefl!904 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))) (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(assert (=> d!468484 (rulesValidInductive!904 thiss!17113 rules!1846)))

(assert (=> d!468484 (= (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))) lt!549707)))

(declare-fun bm!102658 () Bool)

(assert (=> bm!102658 (= call!102663 (maxPrefixOneRule!719 thiss!17113 (h!22676 rules!1846) (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))

(declare-fun b!1576984 () Bool)

(declare-fun res!702864 () Bool)

(assert (=> b!1576984 (=> (not res!702864) (not e!1012961))))

(assert (=> b!1576984 (= res!702864 (matchR!1904 (regex!3039 (rule!4831 (_1!9775 (get!4939 lt!549707)))) (list!6652 (charsOf!1688 (_1!9775 (get!4939 lt!549707))))))))

(assert (= (and d!468484 c!255631) b!1576979))

(assert (= (and d!468484 (not c!255631)) b!1576982))

(assert (= (or b!1576979 b!1576982) bm!102658))

(assert (= (and d!468484 (not res!702863)) b!1576981))

(assert (= (and b!1576981 res!702866) b!1576977))

(assert (= (and b!1576977 res!702868) b!1576980))

(assert (= (and b!1576980 res!702865) b!1576983))

(assert (= (and b!1576983 res!702869) b!1576978))

(assert (= (and b!1576978 res!702867) b!1576984))

(assert (= (and b!1576984 res!702864) b!1576976))

(declare-fun m!1857761 () Bool)

(assert (=> b!1576980 m!1857761))

(declare-fun m!1857763 () Bool)

(assert (=> b!1576980 m!1857763))

(assert (=> b!1576980 m!1855317))

(assert (=> b!1576980 m!1856333))

(assert (=> b!1576983 m!1857761))

(declare-fun m!1857765 () Bool)

(assert (=> b!1576983 m!1857765))

(assert (=> b!1576983 m!1857765))

(declare-fun m!1857767 () Bool)

(assert (=> b!1576983 m!1857767))

(assert (=> b!1576983 m!1857767))

(declare-fun m!1857769 () Bool)

(assert (=> b!1576983 m!1857769))

(assert (=> b!1576976 m!1857761))

(declare-fun m!1857771 () Bool)

(assert (=> b!1576976 m!1857771))

(assert (=> b!1576984 m!1857761))

(assert (=> b!1576984 m!1857765))

(assert (=> b!1576984 m!1857765))

(assert (=> b!1576984 m!1857767))

(assert (=> b!1576984 m!1857767))

(declare-fun m!1857773 () Bool)

(assert (=> b!1576984 m!1857773))

(assert (=> b!1576982 m!1855317))

(declare-fun m!1857775 () Bool)

(assert (=> b!1576982 m!1857775))

(declare-fun m!1857777 () Bool)

(assert (=> b!1576981 m!1857777))

(declare-fun m!1857779 () Bool)

(assert (=> d!468484 m!1857779))

(assert (=> d!468484 m!1855317))

(assert (=> d!468484 m!1855317))

(declare-fun m!1857781 () Bool)

(assert (=> d!468484 m!1857781))

(assert (=> d!468484 m!1855317))

(assert (=> d!468484 m!1855317))

(declare-fun m!1857783 () Bool)

(assert (=> d!468484 m!1857783))

(assert (=> d!468484 m!1856445))

(assert (=> bm!102658 m!1855317))

(declare-fun m!1857785 () Bool)

(assert (=> bm!102658 m!1857785))

(assert (=> b!1576978 m!1857761))

(declare-fun m!1857787 () Bool)

(assert (=> b!1576978 m!1857787))

(assert (=> b!1576978 m!1857787))

(declare-fun m!1857789 () Bool)

(assert (=> b!1576978 m!1857789))

(assert (=> b!1576977 m!1857761))

(assert (=> b!1576977 m!1857765))

(assert (=> b!1576977 m!1857765))

(assert (=> b!1576977 m!1857767))

(assert (=> b!1575911 d!468484))

(declare-fun d!468486 () Bool)

(assert (=> d!468486 (= (isDefined!2481 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))) (not (isEmpty!10323 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457))))))))))

(declare-fun bs!390638 () Bool)

(assert (= bs!390638 d!468486))

(assert (=> bs!390638 m!1855529))

(declare-fun m!1857791 () Bool)

(assert (=> bs!390638 m!1857791))

(assert (=> b!1575911 d!468486))

(declare-fun d!468488 () Bool)

(declare-fun e!1012963 () Bool)

(assert (=> d!468488 e!1012963))

(declare-fun res!702870 () Bool)

(assert (=> d!468488 (=> (not res!702870) (not e!1012963))))

(assert (=> d!468488 (= res!702870 (= (list!6651 (_1!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 (t!143333 tokens!457))))))) (t!143333 (t!143333 tokens!457))))))

(declare-fun lt!549717 () Unit!26707)

(declare-fun e!1012962 () Unit!26707)

(assert (=> d!468488 (= lt!549717 e!1012962)))

(declare-fun c!255632 () Bool)

(assert (=> d!468488 (= c!255632 (or ((_ is Nil!17276) (t!143333 (t!143333 tokens!457))) ((_ is Nil!17276) (t!143333 (t!143333 (t!143333 tokens!457))))))))

(assert (=> d!468488 (not (isEmpty!10310 rules!1846))))

(assert (=> d!468488 (= (theoremInvertabilityWhenTokenListSeparable!113 thiss!17113 rules!1846 (t!143333 (t!143333 tokens!457))) lt!549717)))

(declare-fun b!1576985 () Bool)

(declare-fun Unit!26797 () Unit!26707)

(assert (=> b!1576985 (= e!1012962 Unit!26797)))

(declare-fun b!1576986 () Bool)

(declare-fun Unit!26798 () Unit!26707)

(assert (=> b!1576986 (= e!1012962 Unit!26798)))

(declare-fun lt!549732 () BalanceConc!11396)

(assert (=> b!1576986 (= lt!549732 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 (t!143333 tokens!457)))))))

(declare-fun lt!549712 () BalanceConc!11396)

(assert (=> b!1576986 (= lt!549712 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 (t!143333 (t!143333 tokens!457))))))))

(declare-fun lt!549734 () tuple2!16738)

(assert (=> b!1576986 (= lt!549734 (lex!1152 thiss!17113 rules!1846 lt!549712))))

(declare-fun lt!549727 () List!17344)

(assert (=> b!1576986 (= lt!549727 (list!6652 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457))))))))

(declare-fun lt!549711 () List!17344)

(assert (=> b!1576986 (= lt!549711 (list!6652 lt!549712))))

(declare-fun lt!549729 () Unit!26707)

(assert (=> b!1576986 (= lt!549729 (lemmaConcatTwoListThenFirstIsPrefix!824 lt!549727 lt!549711))))

(assert (=> b!1576986 (isPrefix!1299 lt!549727 (++!4475 lt!549727 lt!549711))))

(declare-fun lt!549724 () Unit!26707)

(assert (=> b!1576986 (= lt!549724 lt!549729)))

(declare-fun lt!549716 () Unit!26707)

(assert (=> b!1576986 (= lt!549716 (theoremInvertabilityWhenTokenListSeparable!113 thiss!17113 rules!1846 (t!143333 (t!143333 (t!143333 tokens!457)))))))

(declare-fun lt!549719 () Unit!26707)

(assert (=> b!1576986 (= lt!549719 (seqFromListBHdTlConstructive!116 (h!22677 (t!143333 (t!143333 (t!143333 tokens!457)))) (t!143333 (t!143333 (t!143333 (t!143333 tokens!457)))) (_1!9771 lt!549734)))))

(assert (=> b!1576986 (= (list!6651 (_1!9771 lt!549734)) (list!6651 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 (t!143333 (t!143333 tokens!457))))) (h!22677 (t!143333 (t!143333 (t!143333 tokens!457)))))))))

(declare-fun lt!549718 () Unit!26707)

(assert (=> b!1576986 (= lt!549718 lt!549719)))

(declare-fun lt!549722 () Option!3086)

(assert (=> b!1576986 (= lt!549722 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 lt!549732)))))

(assert (=> b!1576986 (= (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 (t!143333 tokens!457))))) (printTailRec!727 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 (t!143333 tokens!457)))) 0 (BalanceConc!11397 Empty!5726)))))

(declare-fun lt!549733 () Unit!26707)

(declare-fun Unit!26799 () Unit!26707)

(assert (=> b!1576986 (= lt!549733 Unit!26799)))

(declare-fun lt!549720 () Unit!26707)

(assert (=> b!1576986 (= lt!549720 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!256 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457))))) (list!6652 lt!549712)))))

(assert (=> b!1576986 (= (list!6652 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457))))) (originalCharacters!3853 (h!22677 (t!143333 (t!143333 tokens!457)))))))

(declare-fun lt!549726 () Unit!26707)

(declare-fun Unit!26800 () Unit!26707)

(assert (=> b!1576986 (= lt!549726 Unit!26800)))

(assert (=> b!1576986 (= (list!6652 (singletonSeq!1377 (apply!4177 (charsOf!1688 (h!22677 (t!143333 (t!143333 (t!143333 tokens!457))))) 0))) (Cons!17274 (head!3164 (originalCharacters!3853 (h!22677 (t!143333 (t!143333 (t!143333 tokens!457)))))) Nil!17274))))

(declare-fun lt!549725 () Unit!26707)

(declare-fun Unit!26801 () Unit!26707)

(assert (=> b!1576986 (= lt!549725 Unit!26801)))

(assert (=> b!1576986 (= (list!6652 (singletonSeq!1377 (apply!4177 (charsOf!1688 (h!22677 (t!143333 (t!143333 (t!143333 tokens!457))))) 0))) (Cons!17274 (head!3164 (list!6652 lt!549712)) Nil!17274))))

(declare-fun lt!549709 () Unit!26707)

(declare-fun Unit!26802 () Unit!26707)

(assert (=> b!1576986 (= lt!549709 Unit!26802)))

(assert (=> b!1576986 (= (list!6652 (singletonSeq!1377 (apply!4177 (charsOf!1688 (h!22677 (t!143333 (t!143333 (t!143333 tokens!457))))) 0))) (Cons!17274 (head!3165 lt!549712) Nil!17274))))

(declare-fun lt!549713 () Unit!26707)

(declare-fun Unit!26803 () Unit!26707)

(assert (=> b!1576986 (= lt!549713 Unit!26803)))

(assert (=> b!1576986 (isDefined!2481 (maxPrefix!1236 thiss!17113 rules!1846 (originalCharacters!3853 (h!22677 (t!143333 (t!143333 tokens!457))))))))

(declare-fun lt!549721 () Unit!26707)

(declare-fun Unit!26804 () Unit!26707)

(assert (=> b!1576986 (= lt!549721 Unit!26804)))

(assert (=> b!1576986 (isDefined!2481 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457)))))))))

(declare-fun lt!549715 () Unit!26707)

(declare-fun Unit!26805 () Unit!26707)

(assert (=> b!1576986 (= lt!549715 Unit!26805)))

(declare-fun lt!549731 () Unit!26707)

(declare-fun Unit!26806 () Unit!26707)

(assert (=> b!1576986 (= lt!549731 Unit!26806)))

(assert (=> b!1576986 (= (_1!9775 (get!4939 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457)))))))) (h!22677 (t!143333 (t!143333 tokens!457))))))

(declare-fun lt!549710 () Unit!26707)

(declare-fun Unit!26807 () Unit!26707)

(assert (=> b!1576986 (= lt!549710 Unit!26807)))

(assert (=> b!1576986 (isEmpty!10315 (_2!9775 (get!4939 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457)))))))))))

(declare-fun lt!549723 () Unit!26707)

(declare-fun Unit!26808 () Unit!26707)

(assert (=> b!1576986 (= lt!549723 Unit!26808)))

(assert (=> b!1576986 (matchR!1904 (regex!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457))))) (list!6652 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457))))))))

(declare-fun lt!549714 () Unit!26707)

(declare-fun Unit!26809 () Unit!26707)

(assert (=> b!1576986 (= lt!549714 Unit!26809)))

(assert (=> b!1576986 (= (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))) (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))))))

(declare-fun lt!549730 () Unit!26707)

(declare-fun Unit!26810 () Unit!26707)

(assert (=> b!1576986 (= lt!549730 Unit!26810)))

(declare-fun lt!549728 () Unit!26707)

(assert (=> b!1576986 (= lt!549728 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!54 thiss!17113 rules!1846 (h!22677 (t!143333 (t!143333 tokens!457))) (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))) (list!6652 lt!549712)))))

(declare-fun b!1576987 () Bool)

(assert (=> b!1576987 (= e!1012963 (isEmpty!10311 (_2!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (seqFromList!1836 (t!143333 (t!143333 tokens!457))))))))))

(assert (= (and d!468488 c!255632) b!1576985))

(assert (= (and d!468488 (not c!255632)) b!1576986))

(assert (= (and d!468488 res!702870) b!1576987))

(assert (=> d!468488 m!1855573))

(declare-fun m!1857793 () Bool)

(assert (=> d!468488 m!1857793))

(assert (=> d!468488 m!1855195))

(assert (=> d!468488 m!1855573))

(assert (=> d!468488 m!1855195))

(declare-fun m!1857795 () Bool)

(assert (=> d!468488 m!1857795))

(assert (=> d!468488 m!1855217))

(declare-fun m!1857797 () Bool)

(assert (=> b!1576986 m!1857797))

(declare-fun m!1857799 () Bool)

(assert (=> b!1576986 m!1857799))

(declare-fun m!1857801 () Bool)

(assert (=> b!1576986 m!1857801))

(declare-fun m!1857803 () Bool)

(assert (=> b!1576986 m!1857803))

(declare-fun m!1857805 () Bool)

(assert (=> b!1576986 m!1857805))

(declare-fun m!1857807 () Bool)

(assert (=> b!1576986 m!1857807))

(declare-fun m!1857809 () Bool)

(assert (=> b!1576986 m!1857809))

(assert (=> b!1576986 m!1855575))

(declare-fun m!1857811 () Bool)

(assert (=> b!1576986 m!1857811))

(declare-fun m!1857813 () Bool)

(assert (=> b!1576986 m!1857813))

(declare-fun m!1857815 () Bool)

(assert (=> b!1576986 m!1857815))

(declare-fun m!1857817 () Bool)

(assert (=> b!1576986 m!1857817))

(declare-fun m!1857819 () Bool)

(assert (=> b!1576986 m!1857819))

(declare-fun m!1857821 () Bool)

(assert (=> b!1576986 m!1857821))

(assert (=> b!1576986 m!1857813))

(declare-fun m!1857823 () Bool)

(assert (=> b!1576986 m!1857823))

(declare-fun m!1857825 () Bool)

(assert (=> b!1576986 m!1857825))

(declare-fun m!1857827 () Bool)

(assert (=> b!1576986 m!1857827))

(declare-fun m!1857829 () Bool)

(assert (=> b!1576986 m!1857829))

(declare-fun m!1857831 () Bool)

(assert (=> b!1576986 m!1857831))

(assert (=> b!1576986 m!1856939))

(declare-fun m!1857833 () Bool)

(assert (=> b!1576986 m!1857833))

(declare-fun m!1857835 () Bool)

(assert (=> b!1576986 m!1857835))

(declare-fun m!1857837 () Bool)

(assert (=> b!1576986 m!1857837))

(assert (=> b!1576986 m!1856939))

(assert (=> b!1576986 m!1857829))

(declare-fun m!1857839 () Bool)

(assert (=> b!1576986 m!1857839))

(assert (=> b!1576986 m!1855587))

(declare-fun m!1857841 () Bool)

(assert (=> b!1576986 m!1857841))

(declare-fun m!1857843 () Bool)

(assert (=> b!1576986 m!1857843))

(assert (=> b!1576986 m!1857825))

(declare-fun m!1857845 () Bool)

(assert (=> b!1576986 m!1857845))

(assert (=> b!1576986 m!1855195))

(assert (=> b!1576986 m!1855573))

(declare-fun m!1857847 () Bool)

(assert (=> b!1576986 m!1857847))

(assert (=> b!1576986 m!1857807))

(assert (=> b!1576986 m!1857813))

(declare-fun m!1857849 () Bool)

(assert (=> b!1576986 m!1857849))

(assert (=> b!1576986 m!1857845))

(declare-fun m!1857851 () Bool)

(assert (=> b!1576986 m!1857851))

(assert (=> b!1576986 m!1855195))

(declare-fun m!1857853 () Bool)

(assert (=> b!1576986 m!1857853))

(assert (=> b!1576986 m!1857843))

(declare-fun m!1857855 () Bool)

(assert (=> b!1576986 m!1857855))

(assert (=> b!1576986 m!1857801))

(assert (=> b!1576986 m!1855587))

(assert (=> b!1576986 m!1857797))

(declare-fun m!1857857 () Bool)

(assert (=> b!1576986 m!1857857))

(assert (=> b!1576986 m!1856939))

(assert (=> b!1576986 m!1857797))

(assert (=> b!1576986 m!1857855))

(assert (=> b!1576986 m!1855575))

(assert (=> b!1576986 m!1856939))

(assert (=> b!1576986 m!1857817))

(assert (=> b!1576986 m!1857827))

(declare-fun m!1857859 () Bool)

(assert (=> b!1576986 m!1857859))

(assert (=> b!1576986 m!1857829))

(declare-fun m!1857861 () Bool)

(assert (=> b!1576986 m!1857861))

(assert (=> b!1576986 m!1857829))

(assert (=> b!1576987 m!1855195))

(assert (=> b!1576987 m!1855195))

(assert (=> b!1576987 m!1855573))

(assert (=> b!1576987 m!1855573))

(assert (=> b!1576987 m!1857793))

(declare-fun m!1857863 () Bool)

(assert (=> b!1576987 m!1857863))

(assert (=> b!1575911 d!468488))

(declare-fun d!468490 () Bool)

(declare-fun lt!549737 () BalanceConc!11396)

(assert (=> d!468490 (= (list!6652 lt!549737) (printListTailRec!299 thiss!17113 (dropList!504 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))) 0) (list!6652 (BalanceConc!11397 Empty!5726))))))

(declare-fun e!1012964 () BalanceConc!11396)

(assert (=> d!468490 (= lt!549737 e!1012964)))

(declare-fun c!255633 () Bool)

(assert (=> d!468490 (= c!255633 (>= 0 (size!13922 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))))))))

(declare-fun e!1012965 () Bool)

(assert (=> d!468490 e!1012965))

(declare-fun res!702871 () Bool)

(assert (=> d!468490 (=> (not res!702871) (not e!1012965))))

(assert (=> d!468490 (= res!702871 (>= 0 0))))

(assert (=> d!468490 (= (printTailRec!727 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))) 0 (BalanceConc!11397 Empty!5726)) lt!549737)))

(declare-fun b!1576988 () Bool)

(assert (=> b!1576988 (= e!1012965 (<= 0 (size!13922 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))))))))

(declare-fun b!1576989 () Bool)

(assert (=> b!1576989 (= e!1012964 (BalanceConc!11397 Empty!5726))))

(declare-fun b!1576990 () Bool)

(assert (=> b!1576990 (= e!1012964 (printTailRec!727 thiss!17113 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))) (+ 0 1) (++!4479 (BalanceConc!11397 Empty!5726) (charsOf!1688 (apply!4178 (singletonSeq!1376 (h!22677 (t!143333 tokens!457))) 0)))))))

(declare-fun lt!549741 () List!17346)

(assert (=> b!1576990 (= lt!549741 (list!6651 (singletonSeq!1376 (h!22677 (t!143333 tokens!457)))))))

(declare-fun lt!549740 () Unit!26707)

(assert (=> b!1576990 (= lt!549740 (lemmaDropApply!506 lt!549741 0))))

(assert (=> b!1576990 (= (head!3167 (drop!808 lt!549741 0)) (apply!4180 lt!549741 0))))

(declare-fun lt!549738 () Unit!26707)

(assert (=> b!1576990 (= lt!549738 lt!549740)))

(declare-fun lt!549735 () List!17346)

(assert (=> b!1576990 (= lt!549735 (list!6651 (singletonSeq!1376 (h!22677 (t!143333 tokens!457)))))))

(declare-fun lt!549736 () Unit!26707)

(assert (=> b!1576990 (= lt!549736 (lemmaDropTail!486 lt!549735 0))))

(assert (=> b!1576990 (= (tail!2242 (drop!808 lt!549735 0)) (drop!808 lt!549735 (+ 0 1)))))

(declare-fun lt!549739 () Unit!26707)

(assert (=> b!1576990 (= lt!549739 lt!549736)))

(assert (= (and d!468490 res!702871) b!1576988))

(assert (= (and d!468490 c!255633) b!1576989))

(assert (= (and d!468490 (not c!255633)) b!1576990))

(assert (=> d!468490 m!1855545))

(declare-fun m!1857865 () Bool)

(assert (=> d!468490 m!1857865))

(assert (=> d!468490 m!1856245))

(assert (=> d!468490 m!1857865))

(assert (=> d!468490 m!1856245))

(declare-fun m!1857867 () Bool)

(assert (=> d!468490 m!1857867))

(assert (=> d!468490 m!1855545))

(declare-fun m!1857869 () Bool)

(assert (=> d!468490 m!1857869))

(declare-fun m!1857871 () Bool)

(assert (=> d!468490 m!1857871))

(assert (=> b!1576988 m!1855545))

(assert (=> b!1576988 m!1857869))

(declare-fun m!1857873 () Bool)

(assert (=> b!1576990 m!1857873))

(assert (=> b!1576990 m!1857873))

(declare-fun m!1857875 () Bool)

(assert (=> b!1576990 m!1857875))

(declare-fun m!1857877 () Bool)

(assert (=> b!1576990 m!1857877))

(assert (=> b!1576990 m!1855545))

(assert (=> b!1576990 m!1855741))

(declare-fun m!1857879 () Bool)

(assert (=> b!1576990 m!1857879))

(declare-fun m!1857881 () Bool)

(assert (=> b!1576990 m!1857881))

(declare-fun m!1857883 () Bool)

(assert (=> b!1576990 m!1857883))

(declare-fun m!1857885 () Bool)

(assert (=> b!1576990 m!1857885))

(assert (=> b!1576990 m!1855545))

(declare-fun m!1857887 () Bool)

(assert (=> b!1576990 m!1857887))

(declare-fun m!1857889 () Bool)

(assert (=> b!1576990 m!1857889))

(assert (=> b!1576990 m!1857885))

(declare-fun m!1857891 () Bool)

(assert (=> b!1576990 m!1857891))

(assert (=> b!1576990 m!1855545))

(assert (=> b!1576990 m!1857881))

(declare-fun m!1857893 () Bool)

(assert (=> b!1576990 m!1857893))

(declare-fun m!1857895 () Bool)

(assert (=> b!1576990 m!1857895))

(assert (=> b!1576990 m!1857883))

(assert (=> b!1576990 m!1857887))

(assert (=> b!1575911 d!468490))

(assert (=> b!1575911 d!468194))

(declare-fun b!1576991 () Bool)

(declare-fun e!1012968 () Bool)

(declare-fun lt!549745 () Option!3086)

(assert (=> b!1576991 (= e!1012968 (contains!3017 rules!1846 (rule!4831 (_1!9775 (get!4939 lt!549745)))))))

(declare-fun b!1576992 () Bool)

(declare-fun res!702877 () Bool)

(assert (=> b!1576992 (=> (not res!702877) (not e!1012968))))

(assert (=> b!1576992 (= res!702877 (= (list!6652 (charsOf!1688 (_1!9775 (get!4939 lt!549745)))) (originalCharacters!3853 (_1!9775 (get!4939 lt!549745)))))))

(declare-fun b!1576993 () Bool)

(declare-fun res!702876 () Bool)

(assert (=> b!1576993 (=> (not res!702876) (not e!1012968))))

(assert (=> b!1576993 (= res!702876 (= (value!96284 (_1!9775 (get!4939 lt!549745))) (apply!4185 (transformation!3039 (rule!4831 (_1!9775 (get!4939 lt!549745)))) (seqFromList!1838 (originalCharacters!3853 (_1!9775 (get!4939 lt!549745)))))))))

(declare-fun b!1576994 () Bool)

(declare-fun e!1012966 () Option!3086)

(declare-fun call!102664 () Option!3086)

(assert (=> b!1576994 (= e!1012966 call!102664)))

(declare-fun b!1576995 () Bool)

(declare-fun res!702874 () Bool)

(assert (=> b!1576995 (=> (not res!702874) (not e!1012968))))

(assert (=> b!1576995 (= res!702874 (< (size!13920 (_2!9775 (get!4939 lt!549745))) (size!13920 (originalCharacters!3853 (h!22677 (t!143333 tokens!457))))))))

(declare-fun b!1576996 () Bool)

(declare-fun e!1012967 () Bool)

(assert (=> b!1576996 (= e!1012967 e!1012968)))

(declare-fun res!702875 () Bool)

(assert (=> b!1576996 (=> (not res!702875) (not e!1012968))))

(assert (=> b!1576996 (= res!702875 (isDefined!2481 lt!549745))))

(declare-fun b!1576997 () Bool)

(declare-fun lt!549743 () Option!3086)

(declare-fun lt!549742 () Option!3086)

(assert (=> b!1576997 (= e!1012966 (ite (and ((_ is None!3085) lt!549743) ((_ is None!3085) lt!549742)) None!3085 (ite ((_ is None!3085) lt!549742) lt!549743 (ite ((_ is None!3085) lt!549743) lt!549742 (ite (>= (size!13916 (_1!9775 (v!23904 lt!549743))) (size!13916 (_1!9775 (v!23904 lt!549742)))) lt!549743 lt!549742)))))))

(assert (=> b!1576997 (= lt!549743 call!102664)))

(assert (=> b!1576997 (= lt!549742 (maxPrefix!1236 thiss!17113 (t!143332 rules!1846) (originalCharacters!3853 (h!22677 (t!143333 tokens!457)))))))

(declare-fun b!1576998 () Bool)

(declare-fun res!702878 () Bool)

(assert (=> b!1576998 (=> (not res!702878) (not e!1012968))))

(assert (=> b!1576998 (= res!702878 (= (++!4475 (list!6652 (charsOf!1688 (_1!9775 (get!4939 lt!549745)))) (_2!9775 (get!4939 lt!549745))) (originalCharacters!3853 (h!22677 (t!143333 tokens!457)))))))

(declare-fun d!468492 () Bool)

(assert (=> d!468492 e!1012967))

(declare-fun res!702872 () Bool)

(assert (=> d!468492 (=> res!702872 e!1012967)))

(assert (=> d!468492 (= res!702872 (isEmpty!10323 lt!549745))))

(assert (=> d!468492 (= lt!549745 e!1012966)))

(declare-fun c!255634 () Bool)

(assert (=> d!468492 (= c!255634 (and ((_ is Cons!17275) rules!1846) ((_ is Nil!17275) (t!143332 rules!1846))))))

(declare-fun lt!549744 () Unit!26707)

(declare-fun lt!549746 () Unit!26707)

(assert (=> d!468492 (= lt!549744 lt!549746)))

(assert (=> d!468492 (isPrefix!1299 (originalCharacters!3853 (h!22677 (t!143333 tokens!457))) (originalCharacters!3853 (h!22677 (t!143333 tokens!457))))))

(assert (=> d!468492 (= lt!549746 (lemmaIsPrefixRefl!904 (originalCharacters!3853 (h!22677 (t!143333 tokens!457))) (originalCharacters!3853 (h!22677 (t!143333 tokens!457)))))))

(assert (=> d!468492 (rulesValidInductive!904 thiss!17113 rules!1846)))

(assert (=> d!468492 (= (maxPrefix!1236 thiss!17113 rules!1846 (originalCharacters!3853 (h!22677 (t!143333 tokens!457)))) lt!549745)))

(declare-fun bm!102659 () Bool)

(assert (=> bm!102659 (= call!102664 (maxPrefixOneRule!719 thiss!17113 (h!22676 rules!1846) (originalCharacters!3853 (h!22677 (t!143333 tokens!457)))))))

(declare-fun b!1576999 () Bool)

(declare-fun res!702873 () Bool)

(assert (=> b!1576999 (=> (not res!702873) (not e!1012968))))

(assert (=> b!1576999 (= res!702873 (matchR!1904 (regex!3039 (rule!4831 (_1!9775 (get!4939 lt!549745)))) (list!6652 (charsOf!1688 (_1!9775 (get!4939 lt!549745))))))))

(assert (= (and d!468492 c!255634) b!1576994))

(assert (= (and d!468492 (not c!255634)) b!1576997))

(assert (= (or b!1576994 b!1576997) bm!102659))

(assert (= (and d!468492 (not res!702872)) b!1576996))

(assert (= (and b!1576996 res!702875) b!1576992))

(assert (= (and b!1576992 res!702877) b!1576995))

(assert (= (and b!1576995 res!702874) b!1576998))

(assert (= (and b!1576998 res!702878) b!1576993))

(assert (= (and b!1576993 res!702876) b!1576999))

(assert (= (and b!1576999 res!702873) b!1576991))

(declare-fun m!1857897 () Bool)

(assert (=> b!1576995 m!1857897))

(declare-fun m!1857899 () Bool)

(assert (=> b!1576995 m!1857899))

(assert (=> b!1576995 m!1856697))

(assert (=> b!1576998 m!1857897))

(declare-fun m!1857901 () Bool)

(assert (=> b!1576998 m!1857901))

(assert (=> b!1576998 m!1857901))

(declare-fun m!1857903 () Bool)

(assert (=> b!1576998 m!1857903))

(assert (=> b!1576998 m!1857903))

(declare-fun m!1857905 () Bool)

(assert (=> b!1576998 m!1857905))

(assert (=> b!1576991 m!1857897))

(declare-fun m!1857907 () Bool)

(assert (=> b!1576991 m!1857907))

(assert (=> b!1576999 m!1857897))

(assert (=> b!1576999 m!1857901))

(assert (=> b!1576999 m!1857901))

(assert (=> b!1576999 m!1857903))

(assert (=> b!1576999 m!1857903))

(declare-fun m!1857909 () Bool)

(assert (=> b!1576999 m!1857909))

(declare-fun m!1857911 () Bool)

(assert (=> b!1576997 m!1857911))

(declare-fun m!1857913 () Bool)

(assert (=> b!1576996 m!1857913))

(declare-fun m!1857915 () Bool)

(assert (=> d!468492 m!1857915))

(declare-fun m!1857917 () Bool)

(assert (=> d!468492 m!1857917))

(declare-fun m!1857919 () Bool)

(assert (=> d!468492 m!1857919))

(assert (=> d!468492 m!1856445))

(declare-fun m!1857921 () Bool)

(assert (=> bm!102659 m!1857921))

(assert (=> b!1576993 m!1857897))

(declare-fun m!1857923 () Bool)

(assert (=> b!1576993 m!1857923))

(assert (=> b!1576993 m!1857923))

(declare-fun m!1857925 () Bool)

(assert (=> b!1576993 m!1857925))

(assert (=> b!1576992 m!1857897))

(assert (=> b!1576992 m!1857901))

(assert (=> b!1576992 m!1857901))

(assert (=> b!1576992 m!1857903))

(assert (=> b!1575911 d!468492))

(declare-fun d!468494 () Bool)

(assert (=> d!468494 (= (head!3164 (list!6652 lt!548558)) (h!22675 (list!6652 lt!548558)))))

(assert (=> b!1575911 d!468494))

(assert (=> b!1575911 d!467884))

(declare-fun b!1577000 () Bool)

(declare-fun e!1012971 () Bool)

(declare-fun e!1012970 () Bool)

(assert (=> b!1577000 (= e!1012971 e!1012970)))

(declare-fun res!702879 () Bool)

(declare-fun lt!549747 () tuple2!16738)

(assert (=> b!1577000 (= res!702879 (< (size!13921 (_2!9771 lt!549747)) (size!13921 lt!548558)))))

(assert (=> b!1577000 (=> (not res!702879) (not e!1012970))))

(declare-fun b!1577001 () Bool)

(assert (=> b!1577001 (= e!1012971 (= (_2!9771 lt!549747) lt!548558))))

(declare-fun b!1577002 () Bool)

(declare-fun res!702881 () Bool)

(declare-fun e!1012969 () Bool)

(assert (=> b!1577002 (=> (not res!702881) (not e!1012969))))

(assert (=> b!1577002 (= res!702881 (= (list!6651 (_1!9771 lt!549747)) (_1!9774 (lexList!773 thiss!17113 rules!1846 (list!6652 lt!548558)))))))

(declare-fun d!468496 () Bool)

(assert (=> d!468496 e!1012969))

(declare-fun res!702880 () Bool)

(assert (=> d!468496 (=> (not res!702880) (not e!1012969))))

(assert (=> d!468496 (= res!702880 e!1012971)))

(declare-fun c!255635 () Bool)

(assert (=> d!468496 (= c!255635 (> (size!13922 (_1!9771 lt!549747)) 0))))

(assert (=> d!468496 (= lt!549747 (lexTailRecV2!496 thiss!17113 rules!1846 lt!548558 (BalanceConc!11397 Empty!5726) lt!548558 (BalanceConc!11399 Empty!5727)))))

(assert (=> d!468496 (= (lex!1152 thiss!17113 rules!1846 lt!548558) lt!549747)))

(declare-fun b!1577003 () Bool)

(assert (=> b!1577003 (= e!1012970 (not (isEmpty!10317 (_1!9771 lt!549747))))))

(declare-fun b!1577004 () Bool)

(assert (=> b!1577004 (= e!1012969 (= (list!6652 (_2!9771 lt!549747)) (_2!9774 (lexList!773 thiss!17113 rules!1846 (list!6652 lt!548558)))))))

(assert (= (and d!468496 c!255635) b!1577000))

(assert (= (and d!468496 (not c!255635)) b!1577001))

(assert (= (and b!1577000 res!702879) b!1577003))

(assert (= (and d!468496 res!702880) b!1577002))

(assert (= (and b!1577002 res!702881) b!1577004))

(declare-fun m!1857927 () Bool)

(assert (=> d!468496 m!1857927))

(declare-fun m!1857929 () Bool)

(assert (=> d!468496 m!1857929))

(declare-fun m!1857931 () Bool)

(assert (=> b!1577003 m!1857931))

(declare-fun m!1857933 () Bool)

(assert (=> b!1577000 m!1857933))

(declare-fun m!1857935 () Bool)

(assert (=> b!1577000 m!1857935))

(declare-fun m!1857937 () Bool)

(assert (=> b!1577002 m!1857937))

(assert (=> b!1577002 m!1855561))

(assert (=> b!1577002 m!1855561))

(declare-fun m!1857939 () Bool)

(assert (=> b!1577002 m!1857939))

(declare-fun m!1857941 () Bool)

(assert (=> b!1577004 m!1857941))

(assert (=> b!1577004 m!1855561))

(assert (=> b!1577004 m!1855561))

(assert (=> b!1577004 m!1857939))

(assert (=> b!1575911 d!468496))

(declare-fun d!468498 () Bool)

(assert (=> d!468498 (= (list!6651 (_1!9771 lt!548580)) (list!6656 (c!255393 (_1!9771 lt!548580))))))

(declare-fun bs!390639 () Bool)

(assert (= bs!390639 d!468498))

(declare-fun m!1857943 () Bool)

(assert (=> bs!390639 m!1857943))

(assert (=> b!1575911 d!468498))

(declare-fun d!468500 () Bool)

(assert (=> d!468500 (= (get!4939 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))) (v!23904 (maxPrefix!1236 thiss!17113 rules!1846 (list!6652 (charsOf!1688 (h!22677 (t!143333 tokens!457)))))))))

(assert (=> b!1575911 d!468500))

(declare-fun d!468502 () Bool)

(assert (=> d!468502 (= (list!6651 (_1!9771 lt!548580)) (list!6651 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 (t!143333 tokens!457))))))))

(declare-fun lt!549748 () Unit!26707)

(assert (=> d!468502 (= lt!549748 (choose!9431 (h!22677 (t!143333 (t!143333 tokens!457))) (t!143333 (t!143333 (t!143333 tokens!457))) (_1!9771 lt!548580)))))

(assert (=> d!468502 (= (list!6651 (_1!9771 lt!548580)) (list!6651 (seqFromList!1836 ($colon$colon!263 (t!143333 (t!143333 (t!143333 tokens!457))) (h!22677 (t!143333 (t!143333 tokens!457)))))))))

(assert (=> d!468502 (= (seqFromListBHdTlConstructive!116 (h!22677 (t!143333 (t!143333 tokens!457))) (t!143333 (t!143333 (t!143333 tokens!457))) (_1!9771 lt!548580)) lt!549748)))

(declare-fun bs!390640 () Bool)

(assert (= bs!390640 d!468502))

(declare-fun m!1857945 () Bool)

(assert (=> bs!390640 m!1857945))

(assert (=> bs!390640 m!1855587))

(assert (=> bs!390640 m!1855533))

(assert (=> bs!390640 m!1855585))

(declare-fun m!1857947 () Bool)

(assert (=> bs!390640 m!1857947))

(declare-fun m!1857949 () Bool)

(assert (=> bs!390640 m!1857949))

(assert (=> bs!390640 m!1857947))

(assert (=> bs!390640 m!1855533))

(assert (=> bs!390640 m!1855535))

(assert (=> bs!390640 m!1857949))

(declare-fun m!1857951 () Bool)

(assert (=> bs!390640 m!1857951))

(assert (=> bs!390640 m!1855587))

(assert (=> b!1575911 d!468502))

(assert (=> b!1575911 d!467894))

(declare-fun d!468504 () Bool)

(assert (=> d!468504 (= (list!6651 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 (t!143333 tokens!457))))) (list!6656 (c!255393 (prepend!509 (seqFromList!1836 (t!143333 (t!143333 (t!143333 tokens!457)))) (h!22677 (t!143333 (t!143333 tokens!457)))))))))

(declare-fun bs!390641 () Bool)

(assert (= bs!390641 d!468504))

(declare-fun m!1857953 () Bool)

(assert (=> bs!390641 m!1857953))

(assert (=> b!1575911 d!468504))

(declare-fun d!468506 () Bool)

(declare-fun e!1012974 () Bool)

(assert (=> d!468506 e!1012974))

(declare-fun res!702884 () Bool)

(assert (=> d!468506 (=> (not res!702884) (not e!1012974))))

(declare-fun lt!549751 () BalanceConc!11396)

(assert (=> d!468506 (= res!702884 (= (list!6652 lt!549751) (Cons!17274 (apply!4177 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457)))) 0) Nil!17274)))))

(declare-fun singleton!566 (C!8908) BalanceConc!11396)

(assert (=> d!468506 (= lt!549751 (singleton!566 (apply!4177 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457)))) 0)))))

(assert (=> d!468506 (= (singletonSeq!1377 (apply!4177 (charsOf!1688 (h!22677 (t!143333 (t!143333 tokens!457)))) 0)) lt!549751)))

(declare-fun b!1577007 () Bool)

(assert (=> b!1577007 (= e!1012974 (isBalanced!1684 (c!255391 lt!549751)))))

(assert (= (and d!468506 res!702884) b!1577007))

(declare-fun m!1857955 () Bool)

(assert (=> d!468506 m!1857955))

(assert (=> d!468506 m!1855557))

(declare-fun m!1857957 () Bool)

(assert (=> d!468506 m!1857957))

(declare-fun m!1857959 () Bool)

(assert (=> b!1577007 m!1857959))

(assert (=> b!1575911 d!468506))

(assert (=> d!467976 d!468144))

(assert (=> d!467976 d!467964))

(declare-fun d!468508 () Bool)

(declare-fun lt!549752 () Int)

(assert (=> d!468508 (= lt!549752 (size!13925 (list!6651 (_1!9771 lt!548653))))))

(assert (=> d!468508 (= lt!549752 (size!13926 (c!255393 (_1!9771 lt!548653))))))

(assert (=> d!468508 (= (size!13922 (_1!9771 lt!548653)) lt!549752)))

(declare-fun bs!390642 () Bool)

(assert (= bs!390642 d!468508))

(assert (=> bs!390642 m!1856437))

(assert (=> bs!390642 m!1856437))

(declare-fun m!1857961 () Bool)

(assert (=> bs!390642 m!1857961))

(declare-fun m!1857963 () Bool)

(assert (=> bs!390642 m!1857963))

(assert (=> d!467976 d!468508))

(assert (=> d!467976 d!468142))

(declare-fun d!468510 () Bool)

(assert (=> d!468510 (= (list!6651 (_1!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457)))))) (list!6656 (c!255393 (_1!9771 (lex!1152 thiss!17113 rules!1846 (print!1199 thiss!17113 (singletonSeq!1376 (h!22677 tokens!457))))))))))

(declare-fun bs!390643 () Bool)

(assert (= bs!390643 d!468510))

(declare-fun m!1857965 () Bool)

(assert (=> bs!390643 m!1857965))

(assert (=> d!467976 d!468510))

(declare-fun d!468512 () Bool)

(assert (=> d!468512 (= (list!6651 (singletonSeq!1376 (h!22677 tokens!457))) (list!6656 (c!255393 (singletonSeq!1376 (h!22677 tokens!457)))))))

(declare-fun bs!390644 () Bool)

(assert (= bs!390644 d!468512))

(declare-fun m!1857967 () Bool)

(assert (=> bs!390644 m!1857967))

(assert (=> d!467976 d!468512))

(assert (=> d!467976 d!468146))

(declare-fun d!468514 () Bool)

(declare-fun res!702889 () Bool)

(declare-fun e!1012979 () Bool)

(assert (=> d!468514 (=> res!702889 e!1012979)))

(assert (=> d!468514 (= res!702889 ((_ is Nil!17275) rules!1846))))

(assert (=> d!468514 (= (noDuplicateTag!1072 thiss!17113 rules!1846 Nil!17278) e!1012979)))

(declare-fun b!1577012 () Bool)

(declare-fun e!1012980 () Bool)

(assert (=> b!1577012 (= e!1012979 e!1012980)))

(declare-fun res!702890 () Bool)

(assert (=> b!1577012 (=> (not res!702890) (not e!1012980))))

(declare-fun contains!3019 (List!17348 String!19977) Bool)

(assert (=> b!1577012 (= res!702890 (not (contains!3019 Nil!17278 (tag!3305 (h!22676 rules!1846)))))))

(declare-fun b!1577013 () Bool)

(assert (=> b!1577013 (= e!1012980 (noDuplicateTag!1072 thiss!17113 (t!143332 rules!1846) (Cons!17278 (tag!3305 (h!22676 rules!1846)) Nil!17278)))))

(assert (= (and d!468514 (not res!702889)) b!1577012))

(assert (= (and b!1577012 res!702890) b!1577013))

(declare-fun m!1857969 () Bool)

(assert (=> b!1577012 m!1857969))

(declare-fun m!1857971 () Bool)

(assert (=> b!1577013 m!1857971))

(assert (=> b!1576054 d!468514))

(declare-fun d!468516 () Bool)

(assert (=> d!468516 (= (inv!22680 (tag!3305 (h!22676 (t!143332 rules!1846)))) (= (mod (str.len (value!96283 (tag!3305 (h!22676 (t!143332 rules!1846))))) 2) 0))))

(assert (=> b!1576137 d!468516))

(declare-fun d!468518 () Bool)

(declare-fun res!702891 () Bool)

(declare-fun e!1012981 () Bool)

(assert (=> d!468518 (=> (not res!702891) (not e!1012981))))

(assert (=> d!468518 (= res!702891 (semiInverseModEq!1144 (toChars!4293 (transformation!3039 (h!22676 (t!143332 rules!1846)))) (toValue!4434 (transformation!3039 (h!22676 (t!143332 rules!1846))))))))

(assert (=> d!468518 (= (inv!22684 (transformation!3039 (h!22676 (t!143332 rules!1846)))) e!1012981)))

(declare-fun b!1577014 () Bool)

(assert (=> b!1577014 (= e!1012981 (equivClasses!1085 (toChars!4293 (transformation!3039 (h!22676 (t!143332 rules!1846)))) (toValue!4434 (transformation!3039 (h!22676 (t!143332 rules!1846))))))))

(assert (= (and d!468518 res!702891) b!1577014))

(declare-fun m!1857973 () Bool)

(assert (=> d!468518 m!1857973))

(declare-fun m!1857975 () Bool)

(assert (=> b!1577014 m!1857975))

(assert (=> b!1576137 d!468518))

(declare-fun b!1577016 () Bool)

(declare-fun e!1012982 () Bool)

(declare-fun tp!464182 () Bool)

(declare-fun tp!464183 () Bool)

(assert (=> b!1577016 (= e!1012982 (and tp!464182 tp!464183))))

(declare-fun b!1577017 () Bool)

(declare-fun tp!464185 () Bool)

(assert (=> b!1577017 (= e!1012982 tp!464185)))

(assert (=> b!1576126 (= tp!464076 e!1012982)))

(declare-fun b!1577018 () Bool)

(declare-fun tp!464186 () Bool)

(declare-fun tp!464184 () Bool)

(assert (=> b!1577018 (= e!1012982 (and tp!464186 tp!464184))))

(declare-fun b!1577015 () Bool)

(assert (=> b!1577015 (= e!1012982 tp_is_empty!7169)))

(assert (= (and b!1576126 ((_ is ElementMatch!4367) (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))))) b!1577015))

(assert (= (and b!1576126 ((_ is Concat!7497) (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))))) b!1577016))

(assert (= (and b!1576126 ((_ is Star!4367) (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))))) b!1577017))

(assert (= (and b!1576126 ((_ is Union!4367) (regex!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))))) b!1577018))

(declare-fun b!1577021 () Bool)

(declare-fun e!1012985 () Bool)

(assert (=> b!1577021 (= e!1012985 true)))

(declare-fun b!1577020 () Bool)

(declare-fun e!1012984 () Bool)

(assert (=> b!1577020 (= e!1012984 e!1012985)))

(declare-fun b!1577019 () Bool)

(declare-fun e!1012983 () Bool)

(assert (=> b!1577019 (= e!1012983 e!1012984)))

(assert (=> b!1575971 e!1012983))

(assert (= b!1577020 b!1577021))

(assert (= b!1577019 b!1577020))

(assert (= (and b!1575971 ((_ is Cons!17275) (t!143332 rules!1846))) b!1577019))

(assert (=> b!1577021 (< (dynLambda!7657 order!10173 (toValue!4434 (transformation!3039 (h!22676 (t!143332 rules!1846))))) (dynLambda!7658 order!10175 lambda!66371))))

(assert (=> b!1577021 (< (dynLambda!7659 order!10177 (toChars!4293 (transformation!3039 (h!22676 (t!143332 rules!1846))))) (dynLambda!7658 order!10175 lambda!66371))))

(declare-fun b!1577022 () Bool)

(declare-fun e!1012986 () Bool)

(declare-fun tp!464187 () Bool)

(assert (=> b!1577022 (= e!1012986 (and tp_is_empty!7169 tp!464187))))

(assert (=> b!1576125 (= tp!464079 e!1012986)))

(assert (= (and b!1576125 ((_ is Cons!17274) (originalCharacters!3853 (h!22677 (t!143333 tokens!457))))) b!1577022))

(declare-fun e!1012991 () Bool)

(declare-fun tp!464196 () Bool)

(declare-fun b!1577031 () Bool)

(declare-fun tp!464195 () Bool)

(assert (=> b!1577031 (= e!1012991 (and (inv!22687 (left!13967 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457))))))) tp!464196 (inv!22687 (right!14297 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457))))))) tp!464195))))

(declare-fun b!1577033 () Bool)

(declare-fun e!1012992 () Bool)

(declare-fun tp!464194 () Bool)

(assert (=> b!1577033 (= e!1012992 tp!464194)))

(declare-fun b!1577032 () Bool)

(declare-fun inv!22694 (IArray!11457) Bool)

(assert (=> b!1577032 (= e!1012991 (and (inv!22694 (xs!8530 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457))))))) e!1012992))))

(assert (=> b!1575827 (= tp!463994 (and (inv!22687 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457)))))) e!1012991))))

(assert (= (and b!1575827 ((_ is Node!5726) (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457))))))) b!1577031))

(assert (= b!1577032 b!1577033))

(assert (= (and b!1575827 ((_ is Leaf!8466) (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (value!96284 (h!22677 (t!143333 tokens!457))))))) b!1577032))

(declare-fun m!1857977 () Bool)

(assert (=> b!1577031 m!1857977))

(declare-fun m!1857979 () Bool)

(assert (=> b!1577031 m!1857979))

(declare-fun m!1857981 () Bool)

(assert (=> b!1577032 m!1857981))

(assert (=> b!1575827 m!1855323))

(declare-fun b!1577034 () Bool)

(declare-fun e!1012993 () Bool)

(declare-fun tp!464197 () Bool)

(assert (=> b!1577034 (= e!1012993 (and tp_is_empty!7169 tp!464197))))

(assert (=> b!1576099 (= tp!464049 e!1012993)))

(assert (= (and b!1576099 ((_ is Cons!17274) (t!143331 (originalCharacters!3853 (h!22677 tokens!457))))) b!1577034))

(declare-fun b!1577036 () Bool)

(declare-fun e!1012994 () Bool)

(declare-fun tp!464198 () Bool)

(declare-fun tp!464199 () Bool)

(assert (=> b!1577036 (= e!1012994 (and tp!464198 tp!464199))))

(declare-fun b!1577037 () Bool)

(declare-fun tp!464201 () Bool)

(assert (=> b!1577037 (= e!1012994 tp!464201)))

(assert (=> b!1576112 (= tp!464063 e!1012994)))

(declare-fun b!1577038 () Bool)

(declare-fun tp!464202 () Bool)

(declare-fun tp!464200 () Bool)

(assert (=> b!1577038 (= e!1012994 (and tp!464202 tp!464200))))

(declare-fun b!1577035 () Bool)

(assert (=> b!1577035 (= e!1012994 tp_is_empty!7169)))

(assert (= (and b!1576112 ((_ is ElementMatch!4367) (reg!4696 (regex!3039 (h!22676 rules!1846))))) b!1577035))

(assert (= (and b!1576112 ((_ is Concat!7497) (reg!4696 (regex!3039 (h!22676 rules!1846))))) b!1577036))

(assert (= (and b!1576112 ((_ is Star!4367) (reg!4696 (regex!3039 (h!22676 rules!1846))))) b!1577037))

(assert (= (and b!1576112 ((_ is Union!4367) (reg!4696 (regex!3039 (h!22676 rules!1846))))) b!1577038))

(declare-fun b!1577040 () Bool)

(declare-fun e!1012995 () Bool)

(declare-fun tp!464203 () Bool)

(declare-fun tp!464204 () Bool)

(assert (=> b!1577040 (= e!1012995 (and tp!464203 tp!464204))))

(declare-fun b!1577041 () Bool)

(declare-fun tp!464206 () Bool)

(assert (=> b!1577041 (= e!1012995 tp!464206)))

(assert (=> b!1576141 (= tp!464095 e!1012995)))

(declare-fun b!1577042 () Bool)

(declare-fun tp!464207 () Bool)

(declare-fun tp!464205 () Bool)

(assert (=> b!1577042 (= e!1012995 (and tp!464207 tp!464205))))

(declare-fun b!1577039 () Bool)

(assert (=> b!1577039 (= e!1012995 tp_is_empty!7169)))

(assert (= (and b!1576141 ((_ is ElementMatch!4367) (reg!4696 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577039))

(assert (= (and b!1576141 ((_ is Concat!7497) (reg!4696 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577040))

(assert (= (and b!1576141 ((_ is Star!4367) (reg!4696 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577041))

(assert (= (and b!1576141 ((_ is Union!4367) (reg!4696 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577042))

(declare-fun b!1577044 () Bool)

(declare-fun e!1012996 () Bool)

(declare-fun tp!464208 () Bool)

(declare-fun tp!464209 () Bool)

(assert (=> b!1577044 (= e!1012996 (and tp!464208 tp!464209))))

(declare-fun b!1577045 () Bool)

(declare-fun tp!464211 () Bool)

(assert (=> b!1577045 (= e!1012996 tp!464211)))

(assert (=> b!1576113 (= tp!464064 e!1012996)))

(declare-fun b!1577046 () Bool)

(declare-fun tp!464212 () Bool)

(declare-fun tp!464210 () Bool)

(assert (=> b!1577046 (= e!1012996 (and tp!464212 tp!464210))))

(declare-fun b!1577043 () Bool)

(assert (=> b!1577043 (= e!1012996 tp_is_empty!7169)))

(assert (= (and b!1576113 ((_ is ElementMatch!4367) (regOne!9247 (regex!3039 (h!22676 rules!1846))))) b!1577043))

(assert (= (and b!1576113 ((_ is Concat!7497) (regOne!9247 (regex!3039 (h!22676 rules!1846))))) b!1577044))

(assert (= (and b!1576113 ((_ is Star!4367) (regOne!9247 (regex!3039 (h!22676 rules!1846))))) b!1577045))

(assert (= (and b!1576113 ((_ is Union!4367) (regOne!9247 (regex!3039 (h!22676 rules!1846))))) b!1577046))

(declare-fun b!1577048 () Bool)

(declare-fun e!1012997 () Bool)

(declare-fun tp!464213 () Bool)

(declare-fun tp!464214 () Bool)

(assert (=> b!1577048 (= e!1012997 (and tp!464213 tp!464214))))

(declare-fun b!1577049 () Bool)

(declare-fun tp!464216 () Bool)

(assert (=> b!1577049 (= e!1012997 tp!464216)))

(assert (=> b!1576113 (= tp!464062 e!1012997)))

(declare-fun b!1577050 () Bool)

(declare-fun tp!464217 () Bool)

(declare-fun tp!464215 () Bool)

(assert (=> b!1577050 (= e!1012997 (and tp!464217 tp!464215))))

(declare-fun b!1577047 () Bool)

(assert (=> b!1577047 (= e!1012997 tp_is_empty!7169)))

(assert (= (and b!1576113 ((_ is ElementMatch!4367) (regTwo!9247 (regex!3039 (h!22676 rules!1846))))) b!1577047))

(assert (= (and b!1576113 ((_ is Concat!7497) (regTwo!9247 (regex!3039 (h!22676 rules!1846))))) b!1577048))

(assert (= (and b!1576113 ((_ is Star!4367) (regTwo!9247 (regex!3039 (h!22676 rules!1846))))) b!1577049))

(assert (= (and b!1576113 ((_ is Union!4367) (regTwo!9247 (regex!3039 (h!22676 rules!1846))))) b!1577050))

(declare-fun b!1577052 () Bool)

(declare-fun e!1012998 () Bool)

(declare-fun tp!464218 () Bool)

(declare-fun tp!464219 () Bool)

(assert (=> b!1577052 (= e!1012998 (and tp!464218 tp!464219))))

(declare-fun b!1577053 () Bool)

(declare-fun tp!464221 () Bool)

(assert (=> b!1577053 (= e!1012998 tp!464221)))

(assert (=> b!1576142 (= tp!464096 e!1012998)))

(declare-fun b!1577054 () Bool)

(declare-fun tp!464222 () Bool)

(declare-fun tp!464220 () Bool)

(assert (=> b!1577054 (= e!1012998 (and tp!464222 tp!464220))))

(declare-fun b!1577051 () Bool)

(assert (=> b!1577051 (= e!1012998 tp_is_empty!7169)))

(assert (= (and b!1576142 ((_ is ElementMatch!4367) (regOne!9247 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577051))

(assert (= (and b!1576142 ((_ is Concat!7497) (regOne!9247 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577052))

(assert (= (and b!1576142 ((_ is Star!4367) (regOne!9247 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577053))

(assert (= (and b!1576142 ((_ is Union!4367) (regOne!9247 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577054))

(declare-fun b!1577056 () Bool)

(declare-fun e!1012999 () Bool)

(declare-fun tp!464223 () Bool)

(declare-fun tp!464224 () Bool)

(assert (=> b!1577056 (= e!1012999 (and tp!464223 tp!464224))))

(declare-fun b!1577057 () Bool)

(declare-fun tp!464226 () Bool)

(assert (=> b!1577057 (= e!1012999 tp!464226)))

(assert (=> b!1576142 (= tp!464094 e!1012999)))

(declare-fun b!1577058 () Bool)

(declare-fun tp!464227 () Bool)

(declare-fun tp!464225 () Bool)

(assert (=> b!1577058 (= e!1012999 (and tp!464227 tp!464225))))

(declare-fun b!1577055 () Bool)

(assert (=> b!1577055 (= e!1012999 tp_is_empty!7169)))

(assert (= (and b!1576142 ((_ is ElementMatch!4367) (regTwo!9247 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577055))

(assert (= (and b!1576142 ((_ is Concat!7497) (regTwo!9247 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577056))

(assert (= (and b!1576142 ((_ is Star!4367) (regTwo!9247 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577057))

(assert (= (and b!1576142 ((_ is Union!4367) (regTwo!9247 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577058))

(declare-fun b!1577060 () Bool)

(declare-fun e!1013000 () Bool)

(declare-fun tp!464228 () Bool)

(declare-fun tp!464229 () Bool)

(assert (=> b!1577060 (= e!1013000 (and tp!464228 tp!464229))))

(declare-fun b!1577061 () Bool)

(declare-fun tp!464231 () Bool)

(assert (=> b!1577061 (= e!1013000 tp!464231)))

(assert (=> b!1576111 (= tp!464060 e!1013000)))

(declare-fun b!1577062 () Bool)

(declare-fun tp!464232 () Bool)

(declare-fun tp!464230 () Bool)

(assert (=> b!1577062 (= e!1013000 (and tp!464232 tp!464230))))

(declare-fun b!1577059 () Bool)

(assert (=> b!1577059 (= e!1013000 tp_is_empty!7169)))

(assert (= (and b!1576111 ((_ is ElementMatch!4367) (regOne!9246 (regex!3039 (h!22676 rules!1846))))) b!1577059))

(assert (= (and b!1576111 ((_ is Concat!7497) (regOne!9246 (regex!3039 (h!22676 rules!1846))))) b!1577060))

(assert (= (and b!1576111 ((_ is Star!4367) (regOne!9246 (regex!3039 (h!22676 rules!1846))))) b!1577061))

(assert (= (and b!1576111 ((_ is Union!4367) (regOne!9246 (regex!3039 (h!22676 rules!1846))))) b!1577062))

(declare-fun b!1577064 () Bool)

(declare-fun e!1013001 () Bool)

(declare-fun tp!464233 () Bool)

(declare-fun tp!464234 () Bool)

(assert (=> b!1577064 (= e!1013001 (and tp!464233 tp!464234))))

(declare-fun b!1577065 () Bool)

(declare-fun tp!464236 () Bool)

(assert (=> b!1577065 (= e!1013001 tp!464236)))

(assert (=> b!1576111 (= tp!464061 e!1013001)))

(declare-fun b!1577066 () Bool)

(declare-fun tp!464237 () Bool)

(declare-fun tp!464235 () Bool)

(assert (=> b!1577066 (= e!1013001 (and tp!464237 tp!464235))))

(declare-fun b!1577063 () Bool)

(assert (=> b!1577063 (= e!1013001 tp_is_empty!7169)))

(assert (= (and b!1576111 ((_ is ElementMatch!4367) (regTwo!9246 (regex!3039 (h!22676 rules!1846))))) b!1577063))

(assert (= (and b!1576111 ((_ is Concat!7497) (regTwo!9246 (regex!3039 (h!22676 rules!1846))))) b!1577064))

(assert (= (and b!1576111 ((_ is Star!4367) (regTwo!9246 (regex!3039 (h!22676 rules!1846))))) b!1577065))

(assert (= (and b!1576111 ((_ is Union!4367) (regTwo!9246 (regex!3039 (h!22676 rules!1846))))) b!1577066))

(declare-fun b!1577068 () Bool)

(declare-fun e!1013002 () Bool)

(declare-fun tp!464238 () Bool)

(declare-fun tp!464239 () Bool)

(assert (=> b!1577068 (= e!1013002 (and tp!464238 tp!464239))))

(declare-fun b!1577069 () Bool)

(declare-fun tp!464241 () Bool)

(assert (=> b!1577069 (= e!1013002 tp!464241)))

(assert (=> b!1576140 (= tp!464092 e!1013002)))

(declare-fun b!1577070 () Bool)

(declare-fun tp!464242 () Bool)

(declare-fun tp!464240 () Bool)

(assert (=> b!1577070 (= e!1013002 (and tp!464242 tp!464240))))

(declare-fun b!1577067 () Bool)

(assert (=> b!1577067 (= e!1013002 tp_is_empty!7169)))

(assert (= (and b!1576140 ((_ is ElementMatch!4367) (regOne!9246 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577067))

(assert (= (and b!1576140 ((_ is Concat!7497) (regOne!9246 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577068))

(assert (= (and b!1576140 ((_ is Star!4367) (regOne!9246 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577069))

(assert (= (and b!1576140 ((_ is Union!4367) (regOne!9246 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577070))

(declare-fun b!1577072 () Bool)

(declare-fun e!1013003 () Bool)

(declare-fun tp!464243 () Bool)

(declare-fun tp!464244 () Bool)

(assert (=> b!1577072 (= e!1013003 (and tp!464243 tp!464244))))

(declare-fun b!1577073 () Bool)

(declare-fun tp!464246 () Bool)

(assert (=> b!1577073 (= e!1013003 tp!464246)))

(assert (=> b!1576140 (= tp!464093 e!1013003)))

(declare-fun b!1577074 () Bool)

(declare-fun tp!464247 () Bool)

(declare-fun tp!464245 () Bool)

(assert (=> b!1577074 (= e!1013003 (and tp!464247 tp!464245))))

(declare-fun b!1577071 () Bool)

(assert (=> b!1577071 (= e!1013003 tp_is_empty!7169)))

(assert (= (and b!1576140 ((_ is ElementMatch!4367) (regTwo!9246 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577071))

(assert (= (and b!1576140 ((_ is Concat!7497) (regTwo!9246 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577072))

(assert (= (and b!1576140 ((_ is Star!4367) (regTwo!9246 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577073))

(assert (= (and b!1576140 ((_ is Union!4367) (regTwo!9246 (regex!3039 (rule!4831 (h!22677 tokens!457)))))) b!1577074))

(declare-fun b!1577077 () Bool)

(declare-fun b_free!42471 () Bool)

(declare-fun b_next!43175 () Bool)

(assert (=> b!1577077 (= b_free!42471 (not b_next!43175))))

(declare-fun tp!464249 () Bool)

(declare-fun b_and!110397 () Bool)

(assert (=> b!1577077 (= tp!464249 b_and!110397)))

(declare-fun b_free!42473 () Bool)

(declare-fun b_next!43177 () Bool)

(assert (=> b!1577077 (= b_free!42473 (not b_next!43177))))

(declare-fun tb!88739 () Bool)

(declare-fun t!143421 () Bool)

(assert (=> (and b!1577077 (= (toChars!4293 (transformation!3039 (h!22676 (t!143332 (t!143332 rules!1846))))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457))))))) t!143421) tb!88739))

(declare-fun result!107366 () Bool)

(assert (= result!107366 result!107334))

(assert (=> d!468326 t!143421))

(declare-fun t!143423 () Bool)

(declare-fun tb!88741 () Bool)

(assert (=> (and b!1577077 (= (toChars!4293 (transformation!3039 (h!22676 (t!143332 (t!143332 rules!1846))))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))))) t!143423) tb!88741))

(declare-fun result!107368 () Bool)

(assert (= result!107368 result!107288))

(assert (=> d!467884 t!143423))

(declare-fun tb!88743 () Bool)

(declare-fun t!143425 () Bool)

(assert (=> (and b!1577077 (= (toChars!4293 (transformation!3039 (h!22676 (t!143332 (t!143332 rules!1846))))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457))))) t!143425) tb!88743))

(declare-fun result!107370 () Bool)

(assert (= result!107370 result!107294))

(assert (=> b!1576089 t!143425))

(assert (=> d!467892 t!143425))

(assert (=> b!1576508 t!143423))

(declare-fun tp!464248 () Bool)

(declare-fun b_and!110399 () Bool)

(assert (=> b!1577077 (= tp!464248 (and (=> t!143423 result!107368) (=> t!143425 result!107370) (=> t!143421 result!107366) b_and!110399))))

(declare-fun e!1013005 () Bool)

(assert (=> b!1577077 (= e!1013005 (and tp!464249 tp!464248))))

(declare-fun b!1577076 () Bool)

(declare-fun tp!464251 () Bool)

(declare-fun e!1013006 () Bool)

(assert (=> b!1577076 (= e!1013006 (and tp!464251 (inv!22680 (tag!3305 (h!22676 (t!143332 (t!143332 rules!1846))))) (inv!22684 (transformation!3039 (h!22676 (t!143332 (t!143332 rules!1846))))) e!1013005))))

(declare-fun b!1577075 () Bool)

(declare-fun e!1013007 () Bool)

(declare-fun tp!464250 () Bool)

(assert (=> b!1577075 (= e!1013007 (and e!1013006 tp!464250))))

(assert (=> b!1576136 (= tp!464090 e!1013007)))

(assert (= b!1577076 b!1577077))

(assert (= b!1577075 b!1577076))

(assert (= (and b!1576136 ((_ is Cons!17275) (t!143332 (t!143332 rules!1846)))) b!1577075))

(declare-fun m!1857983 () Bool)

(assert (=> b!1577076 m!1857983))

(declare-fun m!1857985 () Bool)

(assert (=> b!1577076 m!1857985))

(declare-fun b!1577078 () Bool)

(declare-fun tp!464254 () Bool)

(declare-fun e!1013008 () Bool)

(declare-fun tp!464253 () Bool)

(assert (=> b!1577078 (= e!1013008 (and (inv!22687 (left!13967 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457)))))) tp!464254 (inv!22687 (right!14297 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457)))))) tp!464253))))

(declare-fun b!1577080 () Bool)

(declare-fun e!1013009 () Bool)

(declare-fun tp!464252 () Bool)

(assert (=> b!1577080 (= e!1013009 tp!464252)))

(declare-fun b!1577079 () Bool)

(assert (=> b!1577079 (= e!1013008 (and (inv!22694 (xs!8530 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457)))))) e!1013009))))

(assert (=> b!1575840 (= tp!463995 (and (inv!22687 (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457))))) e!1013008))))

(assert (= (and b!1575840 ((_ is Node!5726) (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457)))))) b!1577078))

(assert (= b!1577079 b!1577080))

(assert (= (and b!1575840 ((_ is Leaf!8466) (c!255391 (dynLambda!7656 (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (value!96284 (h!22677 tokens!457)))))) b!1577079))

(declare-fun m!1857987 () Bool)

(assert (=> b!1577078 m!1857987))

(declare-fun m!1857989 () Bool)

(assert (=> b!1577078 m!1857989))

(declare-fun m!1857991 () Bool)

(assert (=> b!1577079 m!1857991))

(assert (=> b!1575840 m!1855349))

(declare-fun b!1577084 () Bool)

(declare-fun b_free!42475 () Bool)

(declare-fun b_next!43179 () Bool)

(assert (=> b!1577084 (= b_free!42475 (not b_next!43179))))

(declare-fun tp!464258 () Bool)

(declare-fun b_and!110401 () Bool)

(assert (=> b!1577084 (= tp!464258 b_and!110401)))

(declare-fun b_free!42477 () Bool)

(declare-fun b_next!43181 () Bool)

(assert (=> b!1577084 (= b_free!42477 (not b_next!43181))))

(declare-fun t!143427 () Bool)

(declare-fun tb!88745 () Bool)

(assert (=> (and b!1577084 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457))))))) t!143427) tb!88745))

(declare-fun result!107372 () Bool)

(assert (= result!107372 result!107334))

(assert (=> d!468326 t!143427))

(declare-fun t!143429 () Bool)

(declare-fun tb!88747 () Bool)

(assert (=> (and b!1577084 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457)))))) t!143429) tb!88747))

(declare-fun result!107374 () Bool)

(assert (= result!107374 result!107288))

(assert (=> d!467884 t!143429))

(declare-fun t!143431 () Bool)

(declare-fun tb!88749 () Bool)

(assert (=> (and b!1577084 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457))))) t!143431) tb!88749))

(declare-fun result!107376 () Bool)

(assert (= result!107376 result!107294))

(assert (=> b!1576089 t!143431))

(assert (=> d!467892 t!143431))

(assert (=> b!1576508 t!143429))

(declare-fun b_and!110403 () Bool)

(declare-fun tp!464255 () Bool)

(assert (=> b!1577084 (= tp!464255 (and (=> t!143429 result!107374) (=> t!143427 result!107372) (=> t!143431 result!107376) b_and!110403))))

(declare-fun e!1013013 () Bool)

(declare-fun e!1013015 () Bool)

(declare-fun tp!464259 () Bool)

(declare-fun b!1577082 () Bool)

(assert (=> b!1577082 (= e!1013013 (and (inv!21 (value!96284 (h!22677 (t!143333 (t!143333 tokens!457))))) e!1013015 tp!464259))))

(declare-fun e!1013010 () Bool)

(assert (=> b!1576124 (= tp!464077 e!1013010)))

(declare-fun e!1013012 () Bool)

(assert (=> b!1577084 (= e!1013012 (and tp!464258 tp!464255))))

(declare-fun b!1577081 () Bool)

(declare-fun tp!464257 () Bool)

(assert (=> b!1577081 (= e!1013010 (and (inv!22683 (h!22677 (t!143333 (t!143333 tokens!457)))) e!1013013 tp!464257))))

(declare-fun tp!464256 () Bool)

(declare-fun b!1577083 () Bool)

(assert (=> b!1577083 (= e!1013015 (and tp!464256 (inv!22680 (tag!3305 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))))) (inv!22684 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))))) e!1013012))))

(assert (= b!1577083 b!1577084))

(assert (= b!1577082 b!1577083))

(assert (= b!1577081 b!1577082))

(assert (= (and b!1576124 ((_ is Cons!17276) (t!143333 (t!143333 tokens!457)))) b!1577081))

(declare-fun m!1857993 () Bool)

(assert (=> b!1577082 m!1857993))

(declare-fun m!1857995 () Bool)

(assert (=> b!1577081 m!1857995))

(declare-fun m!1857997 () Bool)

(assert (=> b!1577083 m!1857997))

(declare-fun m!1857999 () Bool)

(assert (=> b!1577083 m!1857999))

(declare-fun b!1577086 () Bool)

(declare-fun e!1013016 () Bool)

(declare-fun tp!464260 () Bool)

(declare-fun tp!464261 () Bool)

(assert (=> b!1577086 (= e!1013016 (and tp!464260 tp!464261))))

(declare-fun b!1577087 () Bool)

(declare-fun tp!464263 () Bool)

(assert (=> b!1577087 (= e!1013016 tp!464263)))

(assert (=> b!1576137 (= tp!464091 e!1013016)))

(declare-fun b!1577088 () Bool)

(declare-fun tp!464264 () Bool)

(declare-fun tp!464262 () Bool)

(assert (=> b!1577088 (= e!1013016 (and tp!464264 tp!464262))))

(declare-fun b!1577085 () Bool)

(assert (=> b!1577085 (= e!1013016 tp_is_empty!7169)))

(assert (= (and b!1576137 ((_ is ElementMatch!4367) (regex!3039 (h!22676 (t!143332 rules!1846))))) b!1577085))

(assert (= (and b!1576137 ((_ is Concat!7497) (regex!3039 (h!22676 (t!143332 rules!1846))))) b!1577086))

(assert (= (and b!1576137 ((_ is Star!4367) (regex!3039 (h!22676 (t!143332 rules!1846))))) b!1577087))

(assert (= (and b!1576137 ((_ is Union!4367) (regex!3039 (h!22676 (t!143332 rules!1846))))) b!1577088))

(declare-fun b_lambda!49635 () Bool)

(assert (= b_lambda!49621 (or (and b!1575786 b_free!42445 (= (toChars!4293 (transformation!3039 (h!22676 rules!1846))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))))) (and b!1576138 b_free!42461 (= (toChars!4293 (transformation!3039 (h!22676 (t!143332 rules!1846)))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))))) (and b!1577077 b_free!42473 (= (toChars!4293 (transformation!3039 (h!22676 (t!143332 (t!143332 rules!1846))))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))))) (and b!1576127 b_free!42457) (and b!1575785 b_free!42441 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))))) (and b!1577084 b_free!42477 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))))) b_lambda!49635)))

(declare-fun b_lambda!49637 () Bool)

(assert (= b_lambda!49623 (or d!467928 b_lambda!49637)))

(declare-fun bs!390645 () Bool)

(declare-fun d!468520 () Bool)

(assert (= bs!390645 (and d!468520 d!467928)))

(assert (=> bs!390645 (= (dynLambda!7665 lambda!66371 (h!22677 tokens!457)) (rulesProduceIndividualToken!1330 thiss!17113 rules!1846 (h!22677 tokens!457)))))

(assert (=> bs!390645 m!1855225))

(assert (=> b!1576555 d!468520))

(declare-fun b_lambda!49639 () Bool)

(assert (= b_lambda!49625 (or (and b!1575785 b_free!42441 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 tokens!457)))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))))))) (and b!1577084 b_free!42477) (and b!1576127 b_free!42457 (= (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 tokens!457))))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))))))) (and b!1575786 b_free!42445 (= (toChars!4293 (transformation!3039 (h!22676 rules!1846))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))))))) (and b!1577077 b_free!42473 (= (toChars!4293 (transformation!3039 (h!22676 (t!143332 (t!143332 rules!1846))))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))))))) (and b!1576138 b_free!42461 (= (toChars!4293 (transformation!3039 (h!22676 (t!143332 rules!1846)))) (toChars!4293 (transformation!3039 (rule!4831 (h!22677 (t!143333 (t!143333 tokens!457)))))))) b_lambda!49639)))

(check-sat (not d!468144) (not b!1576275) b_and!110349 (not d!468200) (not b!1576264) (not b!1576540) (not b!1576594) (not b!1576266) (not b!1576557) (not d!468300) (not d!468154) (not d!468284) (not b!1576654) (not b!1576430) (not d!468288) (not b!1576617) tp_is_empty!7169 (not bm!102659) (not d!468114) (not b!1576967) (not d!468188) (not d!468220) (not b_next!43165) (not b!1576986) (not b_lambda!49615) (not b_next!43175) (not b!1576407) (not b_lambda!49639) (not b!1576977) (not b!1576377) (not b!1576400) (not d!468184) (not b!1577007) b_and!110373 (not b!1576597) (not b!1576649) (not d!468186) (not b_next!43161) (not d!468508) (not b!1576996) (not b!1576379) (not d!468314) b_and!110377 (not d!468162) (not b!1577031) (not d!468294) (not d!468174) (not b!1576380) (not d!468258) (not d!468194) (not b!1577017) (not d!468166) (not b!1576658) (not b!1576593) (not b!1576432) (not b!1576651) (not b_lambda!49637) (not b!1576966) (not d!468204) (not b!1576657) (not b!1576456) (not b!1576472) (not d!468320) (not d!468120) (not b!1576382) (not b!1576997) (not b!1576455) (not b!1577052) (not b!1576503) (not b!1577037) (not b!1576993) (not b!1576982) (not b!1576980) (not b!1577004) (not d!468332) (not b!1577054) (not b!1576639) (not d!468190) (not d!468122) (not b!1576378) (not b!1577041) (not b!1576261) (not b!1576450) (not b!1576995) (not b!1576983) (not b!1577053) (not d!468180) (not b!1577016) (not b!1577032) (not b!1576981) (not d!468210) (not b!1577075) b_and!110375 (not b_next!43159) (not b!1576616) (not b!1577064) (not b!1576460) (not d!468490) b_and!110401 (not b!1576641) (not b!1576260) (not b!1577056) (not d!468232) (not d!468116) (not bm!102653) (not d!468308) (not b!1576645) (not d!468226) (not b!1576999) (not b!1576506) b_and!110313 (not d!468196) (not b!1577078) b_and!110353 (not d!468286) (not b!1576426) (not d!468266) (not d!468152) (not b!1576436) (not d!468148) (not b!1576517) (not b!1576969) (not d!468502) (not d!468244) (not b!1576990) (not b!1576603) (not b!1576643) (not d!468132) (not d!468192) (not b_next!43149) (not b!1576560) (not b!1577036) (not b!1577018) (not b!1577080) (not d!468518) (not b!1576459) (not b!1576511) (not d!468216) (not b!1576429) (not b!1576467) (not b!1577022) (not b!1577013) (not d!468142) (not b!1576533) (not b!1576548) (not b!1577049) (not d!468090) (not b_next!43147) (not b!1576404) (not b!1576435) (not b!1576402) (not d!468256) (not b!1576488) (not b!1576972) (not b!1576963) (not b!1577046) (not d!468324) (not b!1576656) (not d!468208) (not d!468512) (not b!1576491) (not b!1576615) (not b!1576451) (not d!468150) (not d!468118) (not b!1576546) (not b!1577050) (not b!1577002) (not b!1577000) (not d!468234) (not d!468140) (not b!1576562) (not b!1576507) (not d!468164) (not b_lambda!49611) (not b!1576998) (not d!468172) (not b!1576502) (not b!1576644) (not b!1576968) (not b!1577048) (not b!1576564) b_and!110399 (not b!1576987) (not b!1577061) (not b!1576424) (not b!1577060) (not tb!88711) b_and!110379 (not b!1576559) (not b!1577083) (not b!1577087) (not b!1576447) (not b!1576646) (not b!1576991) (not b!1577040) (not d!468488) (not d!468316) (not b!1576530) (not d!468134) b_and!110397 b_and!110403 (not b!1576434) (not b!1575827) (not b!1576399) (not d!468496) (not b!1577057) (not b!1576482) (not d!468214) (not b!1576480) (not b!1576257) (not d!468506) (not b_lambda!49613) (not b!1576509) (not d!468280) (not b!1577074) (not d!468264) (not d!468238) (not b!1576988) (not b!1577065) (not b!1577088) (not b!1577033) (not d!468510) (not b!1576485) (not bs!390645) (not b!1576513) (not d!468312) (not b!1577072) (not d!468146) (not d!468230) (not d!468478) (not d!468304) (not d!468482) (not d!468492) (not b!1577070) (not b!1576532) (not b!1576484) (not b!1575840) (not b!1576416) (not b!1577014) (not d!468224) (not d!468254) (not b!1576992) (not b!1577003) (not b!1576452) (not bm!102656) (not b!1577012) (not d!468094) (not b!1576604) (not b!1576373) (not d!468206) (not b!1577062) (not d!468302) (not d!468486) (not b!1577082) b_and!110309 (not bm!102658) (not b!1576403) (not b!1576652) (not b!1576964) (not d!468480) (not b!1577042) (not d!468290) (not b!1576427) (not b!1576637) (not d!468278) (not b!1576975) (not b!1577079) (not b!1577073) (not b!1577076) (not b!1576516) (not b!1576978) (not b!1576508) (not b!1576602) (not b!1576262) (not b!1577045) (not d!468298) (not d!468310) (not b!1576381) (not b!1576454) (not b!1577069) (not b_next!43145) (not b!1576408) (not b_next!43179) (not d!468498) (not b!1576483) (not b!1576538) (not d!468326) (not b!1576256) (not b_next!43181) (not d!468176) (not d!468252) (not b!1576638) (not b!1577066) (not b!1577019) (not d!468218) (not b!1576418) (not b!1576984) (not d!468322) (not b!1577038) (not b!1576512) (not b!1576642) (not b!1576534) (not b!1577081) (not b!1576273) (not d!468124) (not b!1576431) (not b!1576489) (not d!468504) (not d!468178) (not b_next!43177) (not b!1577068) (not b!1576556) (not b!1577086) (not b_lambda!49635) (not b!1576535) (not b!1576486) (not b_next!43143) (not b!1577034) (not b!1577058) (not b!1576531) (not b_next!43163) (not b!1577044) (not d!468306) (not b!1576976) (not d!468484) (not b!1576550) (not d!468242))
(check-sat b_and!110349 b_and!110373 (not b_next!43149) (not b_next!43147) b_and!110309 (not b_next!43177) (not b_next!43165) (not b_next!43175) (not b_next!43161) b_and!110377 b_and!110401 b_and!110375 (not b_next!43159) b_and!110353 b_and!110313 b_and!110399 b_and!110379 b_and!110397 b_and!110403 (not b_next!43181) (not b_next!43145) (not b_next!43179) (not b_next!43143) (not b_next!43163))
