; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124610 () Bool)

(assert start!124610)

(declare-fun b!1376287 () Bool)

(declare-fun b_free!33299 () Bool)

(declare-fun b_next!34003 () Bool)

(assert (=> b!1376287 (= b_free!33299 (not b_next!34003))))

(declare-fun tp!394554 () Bool)

(declare-fun b_and!92179 () Bool)

(assert (=> b!1376287 (= tp!394554 b_and!92179)))

(declare-fun b_free!33301 () Bool)

(declare-fun b_next!34005 () Bool)

(assert (=> b!1376287 (= b_free!33301 (not b_next!34005))))

(declare-fun tp!394564 () Bool)

(declare-fun b_and!92181 () Bool)

(assert (=> b!1376287 (= tp!394564 b_and!92181)))

(declare-fun b!1376275 () Bool)

(declare-fun b_free!33303 () Bool)

(declare-fun b_next!34007 () Bool)

(assert (=> b!1376275 (= b_free!33303 (not b_next!34007))))

(declare-fun tp!394560 () Bool)

(declare-fun b_and!92183 () Bool)

(assert (=> b!1376275 (= tp!394560 b_and!92183)))

(declare-fun b_free!33305 () Bool)

(declare-fun b_next!34009 () Bool)

(assert (=> b!1376275 (= b_free!33305 (not b_next!34009))))

(declare-fun tp!394558 () Bool)

(declare-fun b_and!92185 () Bool)

(assert (=> b!1376275 (= tp!394558 b_and!92185)))

(declare-fun b!1376268 () Bool)

(declare-fun b_free!33307 () Bool)

(declare-fun b_next!34011 () Bool)

(assert (=> b!1376268 (= b_free!33307 (not b_next!34011))))

(declare-fun tp!394562 () Bool)

(declare-fun b_and!92187 () Bool)

(assert (=> b!1376268 (= tp!394562 b_and!92187)))

(declare-fun b_free!33309 () Bool)

(declare-fun b_next!34013 () Bool)

(assert (=> b!1376268 (= b_free!33309 (not b_next!34013))))

(declare-fun tp!394555 () Bool)

(declare-fun b_and!92189 () Bool)

(assert (=> b!1376268 (= tp!394555 b_and!92189)))

(declare-fun b!1376260 () Bool)

(assert (=> b!1376260 true))

(assert (=> b!1376260 true))

(declare-fun b!1376274 () Bool)

(assert (=> b!1376274 true))

(declare-fun b!1376278 () Bool)

(assert (=> b!1376278 true))

(declare-fun bs!336320 () Bool)

(declare-fun b!1376263 () Bool)

(assert (= bs!336320 (and b!1376263 b!1376278)))

(declare-fun lambda!58575 () Int)

(declare-fun lambda!58574 () Int)

(assert (=> bs!336320 (not (= lambda!58575 lambda!58574))))

(assert (=> b!1376263 true))

(declare-fun e!879491 () Bool)

(declare-fun e!879480 () Bool)

(assert (=> b!1376260 (= e!879491 (not e!879480))))

(declare-fun res!620143 () Bool)

(assert (=> b!1376260 (=> res!620143 e!879480)))

(declare-fun lambda!58571 () Int)

(declare-fun Exists!875 (Int) Bool)

(assert (=> b!1376260 (= res!620143 (not (Exists!875 lambda!58571)))))

(assert (=> b!1376260 (Exists!875 lambda!58571)))

(declare-datatypes ((Unit!20160 0))(
  ( (Unit!20161) )
))
(declare-fun lt!457334 () Unit!20160)

(declare-datatypes ((C!7736 0))(
  ( (C!7737 (val!4428 Int)) )
))
(declare-datatypes ((Regex!3723 0))(
  ( (ElementMatch!3723 (c!226642 C!7736)) (Concat!6222 (regOne!7958 Regex!3723) (regTwo!7958 Regex!3723)) (EmptyExpr!3723) (Star!3723 (reg!4052 Regex!3723)) (EmptyLang!3723) (Union!3723 (regOne!7959 Regex!3723) (regTwo!7959 Regex!3723)) )
))
(declare-fun lt!457317 () Regex!3723)

(declare-datatypes ((List!13982 0))(
  ( (Nil!13916) (Cons!13916 (h!19317 C!7736) (t!121795 List!13982)) )
))
(declare-fun lt!457327 () List!13982)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!193 (Regex!3723 List!13982) Unit!20160)

(assert (=> b!1376260 (= lt!457334 (lemmaPrefixMatchThenExistsStringThatMatches!193 lt!457317 lt!457327))))

(declare-fun b!1376261 () Bool)

(declare-fun res!620152 () Bool)

(declare-fun e!879479 () Bool)

(assert (=> b!1376261 (=> res!620152 e!879479)))

(declare-datatypes ((List!13983 0))(
  ( (Nil!13917) (Cons!13917 (h!19318 (_ BitVec 16)) (t!121796 List!13983)) )
))
(declare-datatypes ((TokenValue!2499 0))(
  ( (FloatLiteralValue!4998 (text!17938 List!13983)) (TokenValueExt!2498 (__x!8827 Int)) (Broken!12495 (value!78263 List!13983)) (Object!2564) (End!2499) (Def!2499) (Underscore!2499) (Match!2499) (Else!2499) (Error!2499) (Case!2499) (If!2499) (Extends!2499) (Abstract!2499) (Class!2499) (Val!2499) (DelimiterValue!4998 (del!2559 List!13983)) (KeywordValue!2505 (value!78264 List!13983)) (CommentValue!4998 (value!78265 List!13983)) (WhitespaceValue!4998 (value!78266 List!13983)) (IndentationValue!2499 (value!78267 List!13983)) (String!16730) (Int32!2499) (Broken!12496 (value!78268 List!13983)) (Boolean!2500) (Unit!20162) (OperatorValue!2502 (op!2559 List!13983)) (IdentifierValue!4998 (value!78269 List!13983)) (IdentifierValue!4999 (value!78270 List!13983)) (WhitespaceValue!4999 (value!78271 List!13983)) (True!4998) (False!4998) (Broken!12497 (value!78272 List!13983)) (Broken!12498 (value!78273 List!13983)) (True!4999) (RightBrace!2499) (RightBracket!2499) (Colon!2499) (Null!2499) (Comma!2499) (LeftBracket!2499) (False!4999) (LeftBrace!2499) (ImaginaryLiteralValue!2499 (text!17939 List!13983)) (StringLiteralValue!7497 (value!78274 List!13983)) (EOFValue!2499 (value!78275 List!13983)) (IdentValue!2499 (value!78276 List!13983)) (DelimiterValue!4999 (value!78277 List!13983)) (DedentValue!2499 (value!78278 List!13983)) (NewLineValue!2499 (value!78279 List!13983)) (IntegerValue!7497 (value!78280 (_ BitVec 32)) (text!17940 List!13983)) (IntegerValue!7498 (value!78281 Int) (text!17941 List!13983)) (Times!2499) (Or!2499) (Equal!2499) (Minus!2499) (Broken!12499 (value!78282 List!13983)) (And!2499) (Div!2499) (LessEqual!2499) (Mod!2499) (Concat!6223) (Not!2499) (Plus!2499) (SpaceValue!2499 (value!78283 List!13983)) (IntegerValue!7499 (value!78284 Int) (text!17942 List!13983)) (StringLiteralValue!7498 (text!17943 List!13983)) (FloatLiteralValue!4999 (text!17944 List!13983)) (BytesLiteralValue!2499 (value!78285 List!13983)) (CommentValue!4999 (value!78286 List!13983)) (StringLiteralValue!7499 (value!78287 List!13983)) (ErrorTokenValue!2499 (msg!2560 List!13983)) )
))
(declare-datatypes ((IArray!9165 0))(
  ( (IArray!9166 (innerList!4640 List!13982)) )
))
(declare-datatypes ((Conc!4580 0))(
  ( (Node!4580 (left!11902 Conc!4580) (right!12232 Conc!4580) (csize!9390 Int) (cheight!4791 Int)) (Leaf!6981 (xs!7307 IArray!9165) (csize!9391 Int)) (Empty!4580) )
))
(declare-datatypes ((BalanceConc!9100 0))(
  ( (BalanceConc!9101 (c!226643 Conc!4580)) )
))
(declare-datatypes ((String!16731 0))(
  ( (String!16732 (value!78288 String)) )
))
(declare-datatypes ((TokenValueInjection!4658 0))(
  ( (TokenValueInjection!4659 (toValue!3684 Int) (toChars!3543 Int)) )
))
(declare-datatypes ((Rule!4618 0))(
  ( (Rule!4619 (regex!2409 Regex!3723) (tag!2671 String!16731) (isSeparator!2409 Bool) (transformation!2409 TokenValueInjection!4658)) )
))
(declare-datatypes ((Token!4480 0))(
  ( (Token!4481 (value!78289 TokenValue!2499) (rule!4168 Rule!4618) (size!11427 Int) (originalCharacters!3271 List!13982)) )
))
(declare-datatypes ((List!13984 0))(
  ( (Nil!13918) (Cons!13918 (h!19319 Token!4480) (t!121797 List!13984)) )
))
(declare-fun lt!457331 () List!13984)

(declare-datatypes ((List!13985 0))(
  ( (Nil!13919) (Cons!13919 (h!19320 Rule!4618) (t!121798 List!13985)) )
))
(declare-fun rules!2550 () List!13985)

(declare-fun lt!457321 () BalanceConc!9100)

(declare-datatypes ((LexerInterface!2104 0))(
  ( (LexerInterfaceExt!2101 (__x!8828 Int)) (Lexer!2102) )
))
(declare-fun thiss!19762 () LexerInterface!2104)

(declare-datatypes ((tuple2!13526 0))(
  ( (tuple2!13527 (_1!7649 List!13984) (_2!7649 List!13982)) )
))
(declare-fun lexList!622 (LexerInterface!2104 List!13985 List!13982) tuple2!13526)

(declare-fun list!5374 (BalanceConc!9100) List!13982)

(assert (=> b!1376261 (= res!620152 (not (= (lexList!622 thiss!19762 rules!2550 (list!5374 lt!457321)) (tuple2!13527 lt!457331 Nil!13916))))))

(declare-fun b!1376262 () Bool)

(declare-fun res!620161 () Bool)

(declare-fun e!879490 () Bool)

(assert (=> b!1376262 (=> (not res!620161) (not e!879490))))

(declare-fun rulesInvariant!1974 (LexerInterface!2104 List!13985) Bool)

(assert (=> b!1376262 (= res!620161 (rulesInvariant!1974 thiss!19762 rules!2550))))

(declare-fun e!879476 () Bool)

(declare-fun e!879468 () Bool)

(assert (=> b!1376263 (= e!879476 e!879468)))

(declare-fun res!620171 () Bool)

(assert (=> b!1376263 (=> res!620171 e!879468)))

(declare-fun t1!34 () Token!4480)

(declare-fun lt!457326 () List!13982)

(declare-fun matchR!1716 (Regex!3723 List!13982) Bool)

(assert (=> b!1376263 (= res!620171 (not (matchR!1716 (regex!2409 (rule!4168 t1!34)) lt!457326)))))

(declare-fun t2!34 () Token!4480)

(declare-fun lt!457337 () Unit!20160)

(declare-fun forallContained!612 (List!13985 Int Rule!4618) Unit!20160)

(assert (=> b!1376263 (= lt!457337 (forallContained!612 rules!2550 lambda!58575 (rule!4168 t2!34)))))

(declare-fun lt!457330 () Unit!20160)

(assert (=> b!1376263 (= lt!457330 (forallContained!612 rules!2550 lambda!58575 (rule!4168 t1!34)))))

(declare-fun lt!457336 () Rule!4618)

(declare-fun lt!457313 () Unit!20160)

(assert (=> b!1376263 (= lt!457313 (forallContained!612 rules!2550 lambda!58575 lt!457336))))

(declare-fun b!1376264 () Bool)

(declare-fun res!620168 () Bool)

(declare-fun e!879470 () Bool)

(assert (=> b!1376264 (=> res!620168 e!879470)))

(declare-datatypes ((IArray!9167 0))(
  ( (IArray!9168 (innerList!4641 List!13984)) )
))
(declare-datatypes ((Conc!4581 0))(
  ( (Node!4581 (left!11903 Conc!4581) (right!12233 Conc!4581) (csize!9392 Int) (cheight!4792 Int)) (Leaf!6982 (xs!7308 IArray!9167) (csize!9393 Int)) (Empty!4581) )
))
(declare-datatypes ((BalanceConc!9102 0))(
  ( (BalanceConc!9103 (c!226644 Conc!4581)) )
))
(declare-datatypes ((tuple2!13528 0))(
  ( (tuple2!13529 (_1!7650 BalanceConc!9102) (_2!7650 BalanceConc!9100)) )
))
(declare-fun lt!457324 () tuple2!13528)

(declare-fun isEmpty!8406 (BalanceConc!9100) Bool)

(assert (=> b!1376264 (= res!620168 (not (isEmpty!8406 (_2!7650 lt!457324))))))

(declare-fun b!1376265 () Bool)

(declare-fun e!879473 () Bool)

(declare-fun e!879475 () Bool)

(assert (=> b!1376265 (= e!879473 e!879475)))

(declare-fun res!620172 () Bool)

(assert (=> b!1376265 (=> res!620172 e!879475)))

(declare-fun lt!457323 () Regex!3723)

(declare-fun lambda!58572 () Int)

(declare-datatypes ((List!13986 0))(
  ( (Nil!13920) (Cons!13920 (h!19321 Regex!3723) (t!121799 List!13986)) )
))
(declare-fun contains!2615 (List!13986 Regex!3723) Bool)

(declare-fun map!3074 (List!13985 Int) List!13986)

(assert (=> b!1376265 (= res!620172 (not (contains!2615 (map!3074 rules!2550 lambda!58572) lt!457323)))))

(declare-fun lambda!58573 () Int)

(declare-fun getWitness!364 (List!13986 Int) Regex!3723)

(assert (=> b!1376265 (= lt!457323 (getWitness!364 (map!3074 rules!2550 lambda!58572) lambda!58573))))

(declare-fun b!1376266 () Bool)

(declare-fun res!620153 () Bool)

(assert (=> b!1376266 (=> (not res!620153) (not e!879490))))

(declare-fun rulesProduceIndividualToken!1073 (LexerInterface!2104 List!13985 Token!4480) Bool)

(assert (=> b!1376266 (= res!620153 (rulesProduceIndividualToken!1073 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1376267 () Bool)

(declare-fun res!620150 () Bool)

(assert (=> b!1376267 (=> res!620150 e!879468)))

(declare-fun lt!457335 () List!13982)

(assert (=> b!1376267 (= res!620150 (not (matchR!1716 (regex!2409 (rule!4168 t2!34)) lt!457335)))))

(declare-fun e!879485 () Bool)

(assert (=> b!1376268 (= e!879485 (and tp!394562 tp!394555))))

(declare-fun b!1376269 () Bool)

(declare-fun res!620163 () Bool)

(declare-fun e!879483 () Bool)

(assert (=> b!1376269 (=> res!620163 e!879483)))

(declare-fun lt!457314 () List!13982)

(declare-fun lt!457333 () C!7736)

(declare-fun contains!2616 (List!13982 C!7736) Bool)

(assert (=> b!1376269 (= res!620163 (not (contains!2616 lt!457314 lt!457333)))))

(declare-fun b!1376270 () Bool)

(declare-fun res!620148 () Bool)

(assert (=> b!1376270 (=> res!620148 e!879483)))

(declare-fun lt!457338 () C!7736)

(assert (=> b!1376270 (= res!620148 (not (contains!2616 lt!457327 lt!457338)))))

(declare-fun b!1376271 () Bool)

(declare-fun res!620174 () Bool)

(assert (=> b!1376271 (=> res!620174 e!879476)))

(declare-fun contains!2617 (List!13985 Rule!4618) Bool)

(assert (=> b!1376271 (= res!620174 (not (contains!2617 rules!2550 lt!457336)))))

(declare-fun b!1376272 () Bool)

(declare-fun e!879493 () Bool)

(assert (=> b!1376272 (= e!879493 e!879491)))

(declare-fun res!620158 () Bool)

(assert (=> b!1376272 (=> (not res!620158) (not e!879491))))

(declare-fun prefixMatch!232 (Regex!3723 List!13982) Bool)

(assert (=> b!1376272 (= res!620158 (prefixMatch!232 lt!457317 lt!457327))))

(declare-fun rulesRegex!292 (LexerInterface!2104 List!13985) Regex!3723)

(assert (=> b!1376272 (= lt!457317 (rulesRegex!292 thiss!19762 rules!2550))))

(declare-fun ++!3606 (List!13982 List!13982) List!13982)

(assert (=> b!1376272 (= lt!457327 (++!3606 lt!457326 (Cons!13916 lt!457338 Nil!13916)))))

(declare-fun lt!457320 () BalanceConc!9100)

(declare-fun apply!3439 (BalanceConc!9100 Int) C!7736)

(assert (=> b!1376272 (= lt!457338 (apply!3439 lt!457320 0))))

(declare-fun lt!457319 () BalanceConc!9100)

(assert (=> b!1376272 (= lt!457326 (list!5374 lt!457319))))

(declare-fun charsOf!1381 (Token!4480) BalanceConc!9100)

(assert (=> b!1376272 (= lt!457319 (charsOf!1381 t1!34))))

(declare-fun b!1376273 () Bool)

(declare-fun res!620155 () Bool)

(assert (=> b!1376273 (=> res!620155 e!879470)))

(declare-fun lt!457322 () List!13984)

(declare-fun lt!457316 () BalanceConc!9100)

(assert (=> b!1376273 (= res!620155 (not (= (lexList!622 thiss!19762 rules!2550 (list!5374 lt!457316)) (tuple2!13527 lt!457322 Nil!13916))))))

(assert (=> b!1376274 (= e!879483 e!879473)))

(declare-fun res!620154 () Bool)

(assert (=> b!1376274 (=> res!620154 e!879473)))

(declare-fun exists!476 (List!13986 Int) Bool)

(assert (=> b!1376274 (= res!620154 (not (exists!476 (map!3074 rules!2550 lambda!58572) lambda!58573)))))

(declare-fun lt!457318 () List!13986)

(assert (=> b!1376274 (exists!476 lt!457318 lambda!58573)))

(declare-fun lt!457315 () Unit!20160)

(declare-fun matchRGenUnionSpec!140 (Regex!3723 List!13986 List!13982) Unit!20160)

(assert (=> b!1376274 (= lt!457315 (matchRGenUnionSpec!140 lt!457317 lt!457318 lt!457314))))

(assert (=> b!1376274 (= lt!457318 (map!3074 rules!2550 lambda!58572))))

(declare-fun e!879484 () Bool)

(assert (=> b!1376275 (= e!879484 (and tp!394560 tp!394558))))

(declare-fun e!879478 () Bool)

(declare-fun b!1376276 () Bool)

(declare-fun tp!394561 () Bool)

(declare-fun e!879474 () Bool)

(declare-fun inv!21 (TokenValue!2499) Bool)

(assert (=> b!1376276 (= e!879478 (and (inv!21 (value!78289 t2!34)) e!879474 tp!394561))))

(declare-fun b!1376277 () Bool)

(declare-fun e!879469 () Unit!20160)

(declare-fun Unit!20163 () Unit!20160)

(assert (=> b!1376277 (= e!879469 Unit!20163)))

(declare-fun e!879481 () Bool)

(assert (=> b!1376278 (= e!879475 e!879481)))

(declare-fun res!620159 () Bool)

(assert (=> b!1376278 (=> res!620159 e!879481)))

(declare-fun exists!477 (List!13985 Int) Bool)

(assert (=> b!1376278 (= res!620159 (not (exists!477 rules!2550 lambda!58574)))))

(assert (=> b!1376278 (exists!477 rules!2550 lambda!58574)))

(declare-fun lt!457328 () Unit!20160)

(declare-fun lemmaMapContains!128 (List!13985 Int Regex!3723) Unit!20160)

(assert (=> b!1376278 (= lt!457328 (lemmaMapContains!128 rules!2550 lambda!58572 lt!457323))))

(declare-fun b!1376279 () Bool)

(declare-fun Unit!20164 () Unit!20160)

(assert (=> b!1376279 (= e!879469 Unit!20164)))

(declare-fun lt!457325 () Unit!20160)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!168 (Regex!3723 List!13982 C!7736) Unit!20160)

(declare-fun head!2483 (List!13982) C!7736)

(assert (=> b!1376279 (= lt!457325 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!168 (regex!2409 (rule!4168 t1!34)) lt!457326 (head!2483 lt!457326)))))

(assert (=> b!1376279 false))

(declare-fun b!1376280 () Bool)

(declare-fun res!620145 () Bool)

(assert (=> b!1376280 (=> (not res!620145) (not e!879493))))

(declare-fun sepAndNonSepRulesDisjointChars!782 (List!13985 List!13985) Bool)

(assert (=> b!1376280 (= res!620145 (sepAndNonSepRulesDisjointChars!782 rules!2550 rules!2550))))

(declare-fun b!1376281 () Bool)

(declare-fun res!620173 () Bool)

(assert (=> b!1376281 (=> res!620173 e!879470)))

(assert (=> b!1376281 (= res!620173 (not (contains!2617 rules!2550 (rule!4168 t1!34))))))

(declare-fun b!1376282 () Bool)

(declare-fun res!620157 () Bool)

(assert (=> b!1376282 (=> res!620157 e!879470)))

(declare-datatypes ((tuple2!13530 0))(
  ( (tuple2!13531 (_1!7651 Token!4480) (_2!7651 List!13982)) )
))
(declare-datatypes ((Option!2676 0))(
  ( (None!2675) (Some!2675 (v!21505 tuple2!13530)) )
))
(declare-fun maxPrefix!1086 (LexerInterface!2104 List!13985 List!13982) Option!2676)

(assert (=> b!1376282 (= res!620157 (not (= (maxPrefix!1086 thiss!19762 rules!2550 lt!457326) (Some!2675 (tuple2!13531 t1!34 Nil!13916)))))))

(declare-fun b!1376283 () Bool)

(declare-fun res!620146 () Bool)

(assert (=> b!1376283 (=> (not res!620146) (not e!879490))))

(assert (=> b!1376283 (= res!620146 (rulesProduceIndividualToken!1073 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1376284 () Bool)

(declare-fun res!620147 () Bool)

(assert (=> b!1376284 (=> res!620147 e!879483)))

(assert (=> b!1376284 (= res!620147 (not (contains!2616 lt!457314 lt!457338)))))

(declare-fun e!879487 () Bool)

(declare-fun b!1376285 () Bool)

(declare-fun tp!394553 () Bool)

(declare-fun e!879492 () Bool)

(assert (=> b!1376285 (= e!879487 (and (inv!21 (value!78289 t1!34)) e!879492 tp!394553))))

(declare-fun e!879467 () Bool)

(assert (=> b!1376287 (= e!879467 (and tp!394554 tp!394564))))

(declare-fun b!1376288 () Bool)

(assert (=> b!1376288 (= e!879481 e!879470)))

(declare-fun res!620156 () Bool)

(assert (=> b!1376288 (=> res!620156 e!879470)))

(declare-fun list!5375 (BalanceConc!9102) List!13984)

(assert (=> b!1376288 (= res!620156 (not (= (list!5375 (_1!7650 lt!457324)) lt!457322)))))

(assert (=> b!1376288 (= lt!457322 (Cons!13918 t1!34 Nil!13918))))

(declare-fun lex!931 (LexerInterface!2104 List!13985 BalanceConc!9100) tuple2!13528)

(assert (=> b!1376288 (= lt!457324 (lex!931 thiss!19762 rules!2550 lt!457316))))

(declare-fun print!870 (LexerInterface!2104 BalanceConc!9102) BalanceConc!9100)

(declare-fun singletonSeq!1044 (Token!4480) BalanceConc!9102)

(assert (=> b!1376288 (= lt!457316 (print!870 thiss!19762 (singletonSeq!1044 t1!34)))))

(declare-fun getWitness!365 (List!13985 Int) Rule!4618)

(assert (=> b!1376288 (= lt!457336 (getWitness!365 rules!2550 lambda!58574))))

(declare-fun res!620144 () Bool)

(assert (=> start!124610 (=> (not res!620144) (not e!879490))))

(get-info :version)

(assert (=> start!124610 (= res!620144 ((_ is Lexer!2102) thiss!19762))))

(assert (=> start!124610 e!879490))

(assert (=> start!124610 true))

(declare-fun e!879494 () Bool)

(assert (=> start!124610 e!879494))

(declare-fun inv!18278 (Token!4480) Bool)

(assert (=> start!124610 (and (inv!18278 t1!34) e!879487)))

(assert (=> start!124610 (and (inv!18278 t2!34) e!879478)))

(declare-fun b!1376286 () Bool)

(declare-fun e!879472 () Bool)

(declare-fun tp!394557 () Bool)

(assert (=> b!1376286 (= e!879494 (and e!879472 tp!394557))))

(declare-fun b!1376289 () Bool)

(declare-fun res!620162 () Bool)

(assert (=> b!1376289 (=> (not res!620162) (not e!879490))))

(assert (=> b!1376289 (= res!620162 (not (= (isSeparator!2409 (rule!4168 t1!34)) (isSeparator!2409 (rule!4168 t2!34)))))))

(declare-fun b!1376290 () Bool)

(declare-fun res!620166 () Bool)

(assert (=> b!1376290 (=> res!620166 e!879483)))

(assert (=> b!1376290 (= res!620166 (not (matchR!1716 lt!457317 lt!457314)))))

(declare-fun b!1376291 () Bool)

(declare-fun e!879477 () Bool)

(assert (=> b!1376291 (= e!879477 e!879483)))

(declare-fun res!620160 () Bool)

(assert (=> b!1376291 (=> res!620160 e!879483)))

(assert (=> b!1376291 (= res!620160 (not (contains!2616 lt!457327 lt!457333)))))

(assert (=> b!1376291 (= lt!457333 (apply!3439 lt!457319 0))))

(declare-fun b!1376292 () Bool)

(declare-fun tp!394563 () Bool)

(declare-fun inv!18275 (String!16731) Bool)

(declare-fun inv!18279 (TokenValueInjection!4658) Bool)

(assert (=> b!1376292 (= e!879492 (and tp!394563 (inv!18275 (tag!2671 (rule!4168 t1!34))) (inv!18279 (transformation!2409 (rule!4168 t1!34))) e!879467))))

(declare-fun b!1376293 () Bool)

(declare-fun res!620165 () Bool)

(assert (=> b!1376293 (=> res!620165 e!879479)))

(declare-fun lt!457312 () tuple2!13528)

(assert (=> b!1376293 (= res!620165 (not (isEmpty!8406 (_2!7650 lt!457312))))))

(declare-fun b!1376294 () Bool)

(declare-fun lt!457329 () Bool)

(assert (=> b!1376294 (= e!879468 lt!457329)))

(declare-fun lt!457332 () Unit!20160)

(assert (=> b!1376294 (= lt!457332 e!879469)))

(declare-fun c!226641 () Bool)

(assert (=> b!1376294 (= c!226641 (not lt!457329))))

(declare-fun usedCharacters!228 (Regex!3723) List!13982)

(assert (=> b!1376294 (= lt!457329 (contains!2616 (usedCharacters!228 (regex!2409 (rule!4168 t1!34))) lt!457333))))

(declare-fun b!1376295 () Bool)

(declare-fun res!620169 () Bool)

(assert (=> b!1376295 (=> (not res!620169) (not e!879490))))

(declare-fun isEmpty!8407 (List!13985) Bool)

(assert (=> b!1376295 (= res!620169 (not (isEmpty!8407 rules!2550)))))

(declare-fun b!1376296 () Bool)

(declare-fun res!620151 () Bool)

(assert (=> b!1376296 (=> res!620151 e!879476)))

(assert (=> b!1376296 (= res!620151 (not (contains!2617 rules!2550 (rule!4168 t2!34))))))

(declare-fun b!1376297 () Bool)

(assert (=> b!1376297 (= e!879490 e!879493)))

(declare-fun res!620167 () Bool)

(assert (=> b!1376297 (=> (not res!620167) (not e!879493))))

(declare-fun size!11428 (BalanceConc!9100) Int)

(assert (=> b!1376297 (= res!620167 (> (size!11428 lt!457320) 0))))

(assert (=> b!1376297 (= lt!457320 (charsOf!1381 t2!34))))

(declare-fun b!1376298 () Bool)

(assert (=> b!1376298 (= e!879480 e!879477)))

(declare-fun res!620170 () Bool)

(assert (=> b!1376298 (=> res!620170 e!879477)))

(declare-fun getSuffix!571 (List!13982 List!13982) List!13982)

(assert (=> b!1376298 (= res!620170 (not (= lt!457314 (++!3606 lt!457327 (getSuffix!571 lt!457314 lt!457327)))))))

(declare-fun pickWitness!178 (Int) List!13982)

(assert (=> b!1376298 (= lt!457314 (pickWitness!178 lambda!58571))))

(declare-fun tp!394556 () Bool)

(declare-fun b!1376299 () Bool)

(assert (=> b!1376299 (= e!879472 (and tp!394556 (inv!18275 (tag!2671 (h!19320 rules!2550))) (inv!18279 (transformation!2409 (h!19320 rules!2550))) e!879484))))

(declare-fun b!1376300 () Bool)

(declare-fun res!620175 () Bool)

(assert (=> b!1376300 (=> (not res!620175) (not e!879493))))

(declare-fun separableTokensPredicate!387 (LexerInterface!2104 Token!4480 Token!4480 List!13985) Bool)

(assert (=> b!1376300 (= res!620175 (not (separableTokensPredicate!387 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1376301 () Bool)

(assert (=> b!1376301 (= e!879479 e!879476)))

(declare-fun res!620149 () Bool)

(assert (=> b!1376301 (=> res!620149 e!879476)))

(assert (=> b!1376301 (= res!620149 (not (= (maxPrefix!1086 thiss!19762 rules!2550 lt!457335) (Some!2675 (tuple2!13531 t2!34 Nil!13916)))))))

(assert (=> b!1376301 (= lt!457335 (list!5374 lt!457320))))

(declare-fun b!1376302 () Bool)

(assert (=> b!1376302 (= e!879470 e!879479)))

(declare-fun res!620164 () Bool)

(assert (=> b!1376302 (=> res!620164 e!879479)))

(assert (=> b!1376302 (= res!620164 (not (= (list!5375 (_1!7650 lt!457312)) lt!457331)))))

(assert (=> b!1376302 (= lt!457331 (Cons!13918 t2!34 Nil!13918))))

(assert (=> b!1376302 (= lt!457312 (lex!931 thiss!19762 rules!2550 lt!457321))))

(assert (=> b!1376302 (= lt!457321 (print!870 thiss!19762 (singletonSeq!1044 t2!34)))))

(declare-fun b!1376303 () Bool)

(declare-fun tp!394559 () Bool)

(assert (=> b!1376303 (= e!879474 (and tp!394559 (inv!18275 (tag!2671 (rule!4168 t2!34))) (inv!18279 (transformation!2409 (rule!4168 t2!34))) e!879485))))

(assert (= (and start!124610 res!620144) b!1376295))

(assert (= (and b!1376295 res!620169) b!1376262))

(assert (= (and b!1376262 res!620161) b!1376283))

(assert (= (and b!1376283 res!620146) b!1376266))

(assert (= (and b!1376266 res!620153) b!1376289))

(assert (= (and b!1376289 res!620162) b!1376297))

(assert (= (and b!1376297 res!620167) b!1376280))

(assert (= (and b!1376280 res!620145) b!1376300))

(assert (= (and b!1376300 res!620175) b!1376272))

(assert (= (and b!1376272 res!620158) b!1376260))

(assert (= (and b!1376260 (not res!620143)) b!1376298))

(assert (= (and b!1376298 (not res!620170)) b!1376291))

(assert (= (and b!1376291 (not res!620160)) b!1376269))

(assert (= (and b!1376269 (not res!620163)) b!1376270))

(assert (= (and b!1376270 (not res!620148)) b!1376284))

(assert (= (and b!1376284 (not res!620147)) b!1376290))

(assert (= (and b!1376290 (not res!620166)) b!1376274))

(assert (= (and b!1376274 (not res!620154)) b!1376265))

(assert (= (and b!1376265 (not res!620172)) b!1376278))

(assert (= (and b!1376278 (not res!620159)) b!1376288))

(assert (= (and b!1376288 (not res!620156)) b!1376264))

(assert (= (and b!1376264 (not res!620168)) b!1376273))

(assert (= (and b!1376273 (not res!620155)) b!1376282))

(assert (= (and b!1376282 (not res!620157)) b!1376281))

(assert (= (and b!1376281 (not res!620173)) b!1376302))

(assert (= (and b!1376302 (not res!620164)) b!1376293))

(assert (= (and b!1376293 (not res!620165)) b!1376261))

(assert (= (and b!1376261 (not res!620152)) b!1376301))

(assert (= (and b!1376301 (not res!620149)) b!1376296))

(assert (= (and b!1376296 (not res!620151)) b!1376271))

(assert (= (and b!1376271 (not res!620174)) b!1376263))

(assert (= (and b!1376263 (not res!620171)) b!1376267))

(assert (= (and b!1376267 (not res!620150)) b!1376294))

(assert (= (and b!1376294 c!226641) b!1376279))

(assert (= (and b!1376294 (not c!226641)) b!1376277))

(assert (= b!1376299 b!1376275))

(assert (= b!1376286 b!1376299))

(assert (= (and start!124610 ((_ is Cons!13919) rules!2550)) b!1376286))

(assert (= b!1376292 b!1376287))

(assert (= b!1376285 b!1376292))

(assert (= start!124610 b!1376285))

(assert (= b!1376303 b!1376268))

(assert (= b!1376276 b!1376303))

(assert (= start!124610 b!1376276))

(declare-fun m!1548893 () Bool)

(assert (=> b!1376267 m!1548893))

(declare-fun m!1548895 () Bool)

(assert (=> b!1376261 m!1548895))

(assert (=> b!1376261 m!1548895))

(declare-fun m!1548897 () Bool)

(assert (=> b!1376261 m!1548897))

(declare-fun m!1548899 () Bool)

(assert (=> b!1376292 m!1548899))

(declare-fun m!1548901 () Bool)

(assert (=> b!1376292 m!1548901))

(declare-fun m!1548903 () Bool)

(assert (=> b!1376299 m!1548903))

(declare-fun m!1548905 () Bool)

(assert (=> b!1376299 m!1548905))

(declare-fun m!1548907 () Bool)

(assert (=> b!1376283 m!1548907))

(declare-fun m!1548909 () Bool)

(assert (=> b!1376296 m!1548909))

(declare-fun m!1548911 () Bool)

(assert (=> b!1376291 m!1548911))

(declare-fun m!1548913 () Bool)

(assert (=> b!1376291 m!1548913))

(declare-fun m!1548915 () Bool)

(assert (=> b!1376270 m!1548915))

(declare-fun m!1548917 () Bool)

(assert (=> b!1376273 m!1548917))

(assert (=> b!1376273 m!1548917))

(declare-fun m!1548919 () Bool)

(assert (=> b!1376273 m!1548919))

(declare-fun m!1548921 () Bool)

(assert (=> b!1376298 m!1548921))

(assert (=> b!1376298 m!1548921))

(declare-fun m!1548923 () Bool)

(assert (=> b!1376298 m!1548923))

(declare-fun m!1548925 () Bool)

(assert (=> b!1376298 m!1548925))

(declare-fun m!1548927 () Bool)

(assert (=> b!1376276 m!1548927))

(declare-fun m!1548929 () Bool)

(assert (=> b!1376281 m!1548929))

(declare-fun m!1548931 () Bool)

(assert (=> b!1376282 m!1548931))

(declare-fun m!1548933 () Bool)

(assert (=> b!1376274 m!1548933))

(declare-fun m!1548935 () Bool)

(assert (=> b!1376274 m!1548935))

(assert (=> b!1376274 m!1548933))

(declare-fun m!1548937 () Bool)

(assert (=> b!1376274 m!1548937))

(declare-fun m!1548939 () Bool)

(assert (=> b!1376274 m!1548939))

(assert (=> b!1376274 m!1548933))

(declare-fun m!1548941 () Bool)

(assert (=> b!1376288 m!1548941))

(declare-fun m!1548943 () Bool)

(assert (=> b!1376288 m!1548943))

(assert (=> b!1376288 m!1548941))

(declare-fun m!1548945 () Bool)

(assert (=> b!1376288 m!1548945))

(declare-fun m!1548947 () Bool)

(assert (=> b!1376288 m!1548947))

(declare-fun m!1548949 () Bool)

(assert (=> b!1376288 m!1548949))

(declare-fun m!1548951 () Bool)

(assert (=> start!124610 m!1548951))

(declare-fun m!1548953 () Bool)

(assert (=> start!124610 m!1548953))

(declare-fun m!1548955 () Bool)

(assert (=> b!1376260 m!1548955))

(assert (=> b!1376260 m!1548955))

(declare-fun m!1548957 () Bool)

(assert (=> b!1376260 m!1548957))

(declare-fun m!1548959 () Bool)

(assert (=> b!1376294 m!1548959))

(assert (=> b!1376294 m!1548959))

(declare-fun m!1548961 () Bool)

(assert (=> b!1376294 m!1548961))

(declare-fun m!1548963 () Bool)

(assert (=> b!1376266 m!1548963))

(declare-fun m!1548965 () Bool)

(assert (=> b!1376301 m!1548965))

(declare-fun m!1548967 () Bool)

(assert (=> b!1376301 m!1548967))

(declare-fun m!1548969 () Bool)

(assert (=> b!1376284 m!1548969))

(declare-fun m!1548971 () Bool)

(assert (=> b!1376293 m!1548971))

(declare-fun m!1548973 () Bool)

(assert (=> b!1376269 m!1548973))

(declare-fun m!1548975 () Bool)

(assert (=> b!1376285 m!1548975))

(assert (=> b!1376265 m!1548933))

(assert (=> b!1376265 m!1548933))

(declare-fun m!1548977 () Bool)

(assert (=> b!1376265 m!1548977))

(assert (=> b!1376265 m!1548933))

(assert (=> b!1376265 m!1548933))

(declare-fun m!1548979 () Bool)

(assert (=> b!1376265 m!1548979))

(declare-fun m!1548981 () Bool)

(assert (=> b!1376280 m!1548981))

(declare-fun m!1548983 () Bool)

(assert (=> b!1376297 m!1548983))

(declare-fun m!1548985 () Bool)

(assert (=> b!1376297 m!1548985))

(declare-fun m!1548987 () Bool)

(assert (=> b!1376271 m!1548987))

(declare-fun m!1548989 () Bool)

(assert (=> b!1376303 m!1548989))

(declare-fun m!1548991 () Bool)

(assert (=> b!1376303 m!1548991))

(declare-fun m!1548993 () Bool)

(assert (=> b!1376278 m!1548993))

(assert (=> b!1376278 m!1548993))

(declare-fun m!1548995 () Bool)

(assert (=> b!1376278 m!1548995))

(declare-fun m!1548997 () Bool)

(assert (=> b!1376262 m!1548997))

(declare-fun m!1548999 () Bool)

(assert (=> b!1376290 m!1548999))

(declare-fun m!1549001 () Bool)

(assert (=> b!1376264 m!1549001))

(declare-fun m!1549003 () Bool)

(assert (=> b!1376302 m!1549003))

(declare-fun m!1549005 () Bool)

(assert (=> b!1376302 m!1549005))

(declare-fun m!1549007 () Bool)

(assert (=> b!1376302 m!1549007))

(assert (=> b!1376302 m!1549007))

(declare-fun m!1549009 () Bool)

(assert (=> b!1376302 m!1549009))

(declare-fun m!1549011 () Bool)

(assert (=> b!1376263 m!1549011))

(declare-fun m!1549013 () Bool)

(assert (=> b!1376263 m!1549013))

(declare-fun m!1549015 () Bool)

(assert (=> b!1376263 m!1549015))

(declare-fun m!1549017 () Bool)

(assert (=> b!1376263 m!1549017))

(declare-fun m!1549019 () Bool)

(assert (=> b!1376295 m!1549019))

(declare-fun m!1549021 () Bool)

(assert (=> b!1376279 m!1549021))

(assert (=> b!1376279 m!1549021))

(declare-fun m!1549023 () Bool)

(assert (=> b!1376279 m!1549023))

(declare-fun m!1549025 () Bool)

(assert (=> b!1376300 m!1549025))

(declare-fun m!1549027 () Bool)

(assert (=> b!1376272 m!1549027))

(declare-fun m!1549029 () Bool)

(assert (=> b!1376272 m!1549029))

(declare-fun m!1549031 () Bool)

(assert (=> b!1376272 m!1549031))

(declare-fun m!1549033 () Bool)

(assert (=> b!1376272 m!1549033))

(declare-fun m!1549035 () Bool)

(assert (=> b!1376272 m!1549035))

(declare-fun m!1549037 () Bool)

(assert (=> b!1376272 m!1549037))

(check-sat (not b!1376270) (not b_next!34011) b_and!92179 (not b!1376294) (not b!1376262) (not b!1376260) (not b_next!34003) (not start!124610) (not b!1376264) (not b!1376282) b_and!92183 (not b!1376299) b_and!92187 (not b!1376266) (not b!1376278) (not b!1376303) (not b!1376297) (not b!1376276) (not b_next!34005) b_and!92189 (not b!1376292) (not b!1376295) (not b!1376283) (not b!1376284) (not b!1376296) (not b!1376300) (not b!1376269) (not b!1376281) (not b_next!34013) (not b!1376286) (not b!1376272) (not b_next!34007) (not b!1376293) b_and!92185 (not b!1376298) (not b!1376288) b_and!92181 (not b!1376271) (not b_next!34009) (not b!1376279) (not b!1376274) (not b!1376280) (not b!1376285) (not b!1376263) (not b!1376261) (not b!1376273) (not b!1376290) (not b!1376291) (not b!1376302) (not b!1376301) (not b!1376265) (not b!1376267))
(check-sat b_and!92183 b_and!92187 (not b_next!34011) b_and!92179 (not b_next!34013) (not b_next!34007) (not b_next!34003) (not b_next!34009) (not b_next!34005) b_and!92189 b_and!92185 b_and!92181)
