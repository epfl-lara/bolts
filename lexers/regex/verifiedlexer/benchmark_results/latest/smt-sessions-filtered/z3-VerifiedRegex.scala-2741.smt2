; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!147430 () Bool)

(assert start!147430)

(declare-fun b!1577283 () Bool)

(declare-fun b_free!42503 () Bool)

(declare-fun b_next!43207 () Bool)

(assert (=> b!1577283 (= b_free!42503 (not b_next!43207))))

(declare-fun tp!464369 () Bool)

(declare-fun b_and!110429 () Bool)

(assert (=> b!1577283 (= tp!464369 b_and!110429)))

(declare-fun b_free!42505 () Bool)

(declare-fun b_next!43209 () Bool)

(assert (=> b!1577283 (= b_free!42505 (not b_next!43209))))

(declare-fun tp!464371 () Bool)

(declare-fun b_and!110431 () Bool)

(assert (=> b!1577283 (= tp!464371 b_and!110431)))

(declare-fun b!1577278 () Bool)

(declare-fun b_free!42507 () Bool)

(declare-fun b_next!43211 () Bool)

(assert (=> b!1577278 (= b_free!42507 (not b_next!43211))))

(declare-fun tp!464366 () Bool)

(declare-fun b_and!110433 () Bool)

(assert (=> b!1577278 (= tp!464366 b_and!110433)))

(declare-fun b_free!42509 () Bool)

(declare-fun b_next!43213 () Bool)

(assert (=> b!1577278 (= b_free!42509 (not b_next!43213))))

(declare-fun tp!464368 () Bool)

(declare-fun b_and!110435 () Bool)

(assert (=> b!1577278 (= tp!464368 b_and!110435)))

(declare-fun b!1577270 () Bool)

(declare-fun e!1013176 () Bool)

(declare-fun e!1013182 () Bool)

(assert (=> b!1577270 (= e!1013176 e!1013182)))

(declare-fun res!702997 () Bool)

(assert (=> b!1577270 (=> (not res!702997) (not e!1013182))))

(declare-datatypes ((C!8916 0))(
  ( (C!8917 (val!5054 Int)) )
))
(declare-datatypes ((List!17361 0))(
  ( (Nil!17291) (Cons!17291 (h!22692 C!8916) (t!143444 List!17361)) )
))
(declare-fun lt!549913 () List!17361)

(declare-fun lt!549914 () List!17361)

(assert (=> b!1577270 (= res!702997 (= lt!549913 lt!549914))))

(declare-fun lt!549916 () List!17361)

(declare-fun lt!549920 () List!17361)

(declare-fun ++!4485 (List!17361 List!17361) List!17361)

(assert (=> b!1577270 (= lt!549914 (++!4485 lt!549916 lt!549920))))

(declare-datatypes ((IArray!11473 0))(
  ( (IArray!11474 (innerList!5794 List!17361)) )
))
(declare-datatypes ((Conc!5734 0))(
  ( (Node!5734 (left!13981 Conc!5734) (right!14311 Conc!5734) (csize!11698 Int) (cheight!5945 Int)) (Leaf!8476 (xs!8538 IArray!11473) (csize!11699 Int)) (Empty!5734) )
))
(declare-datatypes ((BalanceConc!11412 0))(
  ( (BalanceConc!11413 (c!255649 Conc!5734)) )
))
(declare-fun lt!549926 () BalanceConc!11412)

(declare-fun list!6667 (BalanceConc!11412) List!17361)

(assert (=> b!1577270 (= lt!549913 (list!6667 lt!549926))))

(declare-fun lt!549917 () BalanceConc!11412)

(assert (=> b!1577270 (= lt!549920 (list!6667 lt!549917))))

(declare-datatypes ((List!17362 0))(
  ( (Nil!17292) (Cons!17292 (h!22693 (_ BitVec 16)) (t!143445 List!17362)) )
))
(declare-datatypes ((TokenValue!3133 0))(
  ( (FloatLiteralValue!6266 (text!22376 List!17362)) (TokenValueExt!3132 (__x!11568 Int)) (Broken!15665 (value!96372 List!17362)) (Object!3202) (End!3133) (Def!3133) (Underscore!3133) (Match!3133) (Else!3133) (Error!3133) (Case!3133) (If!3133) (Extends!3133) (Abstract!3133) (Class!3133) (Val!3133) (DelimiterValue!6266 (del!3193 List!17362)) (KeywordValue!3139 (value!96373 List!17362)) (CommentValue!6266 (value!96374 List!17362)) (WhitespaceValue!6266 (value!96375 List!17362)) (IndentationValue!3133 (value!96376 List!17362)) (String!19996) (Int32!3133) (Broken!15666 (value!96377 List!17362)) (Boolean!3134) (Unit!26820) (OperatorValue!3136 (op!3193 List!17362)) (IdentifierValue!6266 (value!96378 List!17362)) (IdentifierValue!6267 (value!96379 List!17362)) (WhitespaceValue!6267 (value!96380 List!17362)) (True!6266) (False!6266) (Broken!15667 (value!96381 List!17362)) (Broken!15668 (value!96382 List!17362)) (True!6267) (RightBrace!3133) (RightBracket!3133) (Colon!3133) (Null!3133) (Comma!3133) (LeftBracket!3133) (False!6267) (LeftBrace!3133) (ImaginaryLiteralValue!3133 (text!22377 List!17362)) (StringLiteralValue!9399 (value!96383 List!17362)) (EOFValue!3133 (value!96384 List!17362)) (IdentValue!3133 (value!96385 List!17362)) (DelimiterValue!6267 (value!96386 List!17362)) (DedentValue!3133 (value!96387 List!17362)) (NewLineValue!3133 (value!96388 List!17362)) (IntegerValue!9399 (value!96389 (_ BitVec 32)) (text!22378 List!17362)) (IntegerValue!9400 (value!96390 Int) (text!22379 List!17362)) (Times!3133) (Or!3133) (Equal!3133) (Minus!3133) (Broken!15669 (value!96391 List!17362)) (And!3133) (Div!3133) (LessEqual!3133) (Mod!3133) (Concat!7504) (Not!3133) (Plus!3133) (SpaceValue!3133 (value!96392 List!17362)) (IntegerValue!9401 (value!96393 Int) (text!22380 List!17362)) (StringLiteralValue!9400 (text!22381 List!17362)) (FloatLiteralValue!6267 (text!22382 List!17362)) (BytesLiteralValue!3133 (value!96394 List!17362)) (CommentValue!6267 (value!96395 List!17362)) (StringLiteralValue!9401 (value!96396 List!17362)) (ErrorTokenValue!3133 (msg!3194 List!17362)) )
))
(declare-datatypes ((Regex!4371 0))(
  ( (ElementMatch!4371 (c!255650 C!8916)) (Concat!7505 (regOne!9254 Regex!4371) (regTwo!9254 Regex!4371)) (EmptyExpr!4371) (Star!4371 (reg!4700 Regex!4371)) (EmptyLang!4371) (Union!4371 (regOne!9255 Regex!4371) (regTwo!9255 Regex!4371)) )
))
(declare-datatypes ((String!19997 0))(
  ( (String!19998 (value!96397 String)) )
))
(declare-datatypes ((TokenValueInjection!5926 0))(
  ( (TokenValueInjection!5927 (toValue!4442 Int) (toChars!4301 Int)) )
))
(declare-datatypes ((Rule!5886 0))(
  ( (Rule!5887 (regex!3043 Regex!4371) (tag!3309 String!19997) (isSeparator!3043 Bool) (transformation!3043 TokenValueInjection!5926)) )
))
(declare-datatypes ((Token!5652 0))(
  ( (Token!5653 (value!96398 TokenValue!3133) (rule!4837 Rule!5886) (size!13932 Int) (originalCharacters!3857 List!17361)) )
))
(declare-datatypes ((List!17363 0))(
  ( (Nil!17293) (Cons!17293 (h!22694 Token!5652) (t!143446 List!17363)) )
))
(declare-fun tokens!457 () List!17363)

(declare-fun charsOf!1692 (Token!5652) BalanceConc!11412)

(assert (=> b!1577270 (= lt!549916 (list!6667 (charsOf!1692 (h!22694 tokens!457))))))

(declare-datatypes ((IArray!11475 0))(
  ( (IArray!11476 (innerList!5795 List!17363)) )
))
(declare-datatypes ((Conc!5735 0))(
  ( (Node!5735 (left!13982 Conc!5735) (right!14312 Conc!5735) (csize!11700 Int) (cheight!5946 Int)) (Leaf!8477 (xs!8539 IArray!11475) (csize!11701 Int)) (Empty!5735) )
))
(declare-datatypes ((BalanceConc!11414 0))(
  ( (BalanceConc!11415 (c!255651 Conc!5735)) )
))
(declare-datatypes ((tuple2!16758 0))(
  ( (tuple2!16759 (_1!9781 BalanceConc!11414) (_2!9781 BalanceConc!11412)) )
))
(declare-fun lt!549921 () tuple2!16758)

(declare-datatypes ((List!17364 0))(
  ( (Nil!17294) (Cons!17294 (h!22695 Rule!5886) (t!143447 List!17364)) )
))
(declare-fun rules!1846 () List!17364)

(declare-datatypes ((LexerInterface!2672 0))(
  ( (LexerInterfaceExt!2669 (__x!11569 Int)) (Lexer!2670) )
))
(declare-fun thiss!17113 () LexerInterface!2672)

(declare-fun lex!1156 (LexerInterface!2672 List!17364 BalanceConc!11412) tuple2!16758)

(assert (=> b!1577270 (= lt!549921 (lex!1156 thiss!17113 rules!1846 lt!549917))))

(declare-fun lt!549918 () BalanceConc!11414)

(declare-fun print!1203 (LexerInterface!2672 BalanceConc!11414) BalanceConc!11412)

(assert (=> b!1577270 (= lt!549917 (print!1203 thiss!17113 lt!549918))))

(declare-fun seqFromList!1842 (List!17363) BalanceConc!11414)

(assert (=> b!1577270 (= lt!549918 (seqFromList!1842 (t!143446 tokens!457)))))

(assert (=> b!1577270 (= lt!549926 (print!1203 thiss!17113 (seqFromList!1842 tokens!457)))))

(declare-fun b!1577271 () Bool)

(declare-fun e!1013174 () Bool)

(declare-fun e!1013177 () Bool)

(assert (=> b!1577271 (= e!1013174 e!1013177)))

(declare-fun res!703000 () Bool)

(assert (=> b!1577271 (=> res!703000 e!1013177)))

(declare-fun lt!549925 () List!17363)

(declare-fun lt!549919 () List!17363)

(declare-fun lt!549915 () List!17363)

(assert (=> b!1577271 (= res!703000 (or (not (= lt!549915 lt!549919)) (not (= lt!549919 lt!549925))))))

(declare-fun list!6668 (BalanceConc!11414) List!17363)

(assert (=> b!1577271 (= lt!549919 (list!6668 lt!549918))))

(assert (=> b!1577271 (= lt!549915 lt!549925)))

(declare-fun prepend!515 (BalanceConc!11414 Token!5652) BalanceConc!11414)

(assert (=> b!1577271 (= lt!549925 (list!6668 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 tokens!457))) (h!22694 (t!143446 tokens!457)))))))

(declare-datatypes ((Unit!26821 0))(
  ( (Unit!26822) )
))
(declare-fun lt!549923 () Unit!26821)

(declare-fun seqFromListBHdTlConstructive!120 (Token!5652 List!17363 BalanceConc!11414) Unit!26821)

(assert (=> b!1577271 (= lt!549923 (seqFromListBHdTlConstructive!120 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457)) (_1!9781 lt!549921)))))

(declare-fun b!1577272 () Bool)

(declare-fun res!702999 () Bool)

(assert (=> b!1577272 (=> (not res!702999) (not e!1013176))))

(get-info :version)

(assert (=> b!1577272 (= res!702999 (and (not ((_ is Nil!17293) tokens!457)) (not ((_ is Nil!17293) (t!143446 tokens!457)))))))

(declare-fun b!1577273 () Bool)

(declare-fun res!702996 () Bool)

(assert (=> b!1577273 (=> (not res!702996) (not e!1013176))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!365 (LexerInterface!2672 List!17363 List!17364) Bool)

(assert (=> b!1577273 (= res!702996 (tokensListTwoByTwoPredicateSeparableList!365 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1577275 () Bool)

(declare-fun e!1013180 () Bool)

(declare-fun e!1013183 () Bool)

(declare-fun tp!464367 () Bool)

(assert (=> b!1577275 (= e!1013180 (and e!1013183 tp!464367))))

(declare-fun e!1013179 () Bool)

(declare-fun tp!464365 () Bool)

(declare-fun b!1577276 () Bool)

(declare-fun e!1013178 () Bool)

(declare-fun inv!21 (TokenValue!3133) Bool)

(assert (=> b!1577276 (= e!1013179 (and (inv!21 (value!96398 (h!22694 tokens!457))) e!1013178 tp!464365))))

(declare-fun b!1577277 () Bool)

(declare-fun rulesValidInductive!906 (LexerInterface!2672 List!17364) Bool)

(assert (=> b!1577277 (= e!1013177 (rulesValidInductive!906 thiss!17113 rules!1846))))

(declare-fun e!1013181 () Bool)

(assert (=> b!1577278 (= e!1013181 (and tp!464366 tp!464368))))

(declare-fun b!1577279 () Bool)

(declare-fun res!702998 () Bool)

(assert (=> b!1577279 (=> (not res!702998) (not e!1013176))))

(declare-fun rulesInvariant!2341 (LexerInterface!2672 List!17364) Bool)

(assert (=> b!1577279 (= res!702998 (rulesInvariant!2341 thiss!17113 rules!1846))))

(declare-fun b!1577280 () Bool)

(assert (=> b!1577280 (= e!1013182 (not e!1013174))))

(declare-fun res!703003 () Bool)

(assert (=> b!1577280 (=> res!703003 e!1013174)))

(assert (=> b!1577280 (= res!703003 (not (= lt!549915 (t!143446 tokens!457))))))

(assert (=> b!1577280 (= lt!549915 (list!6668 (_1!9781 lt!549921)))))

(declare-fun lt!549924 () Unit!26821)

(declare-fun theoremInvertabilityWhenTokenListSeparable!117 (LexerInterface!2672 List!17364 List!17363) Unit!26821)

(assert (=> b!1577280 (= lt!549924 (theoremInvertabilityWhenTokenListSeparable!117 thiss!17113 rules!1846 (t!143446 tokens!457)))))

(declare-fun isPrefix!1303 (List!17361 List!17361) Bool)

(assert (=> b!1577280 (isPrefix!1303 lt!549916 lt!549914)))

(declare-fun lt!549922 () Unit!26821)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!828 (List!17361 List!17361) Unit!26821)

(assert (=> b!1577280 (= lt!549922 (lemmaConcatTwoListThenFirstIsPrefix!828 lt!549916 lt!549920))))

(declare-fun b!1577281 () Bool)

(declare-fun res!703004 () Bool)

(assert (=> b!1577281 (=> res!703004 e!1013177)))

(declare-fun separableTokensPredicate!614 (LexerInterface!2672 Token!5652 Token!5652 List!17364) Bool)

(assert (=> b!1577281 (= res!703004 (not (separableTokensPredicate!614 thiss!17113 (h!22694 tokens!457) (h!22694 (t!143446 tokens!457)) rules!1846)))))

(declare-fun e!1013184 () Bool)

(declare-fun tp!464372 () Bool)

(declare-fun b!1577282 () Bool)

(declare-fun inv!22704 (String!19997) Bool)

(declare-fun inv!22707 (TokenValueInjection!5926) Bool)

(assert (=> b!1577282 (= e!1013183 (and tp!464372 (inv!22704 (tag!3309 (h!22695 rules!1846))) (inv!22707 (transformation!3043 (h!22695 rules!1846))) e!1013184))))

(declare-fun b!1577274 () Bool)

(declare-fun res!703001 () Bool)

(assert (=> b!1577274 (=> (not res!703001) (not e!1013176))))

(declare-fun isEmpty!10327 (List!17364) Bool)

(assert (=> b!1577274 (= res!703001 (not (isEmpty!10327 rules!1846)))))

(declare-fun res!703002 () Bool)

(assert (=> start!147430 (=> (not res!703002) (not e!1013176))))

(assert (=> start!147430 (= res!703002 ((_ is Lexer!2670) thiss!17113))))

(assert (=> start!147430 e!1013176))

(assert (=> start!147430 true))

(assert (=> start!147430 e!1013180))

(declare-fun e!1013171 () Bool)

(assert (=> start!147430 e!1013171))

(assert (=> b!1577283 (= e!1013184 (and tp!464369 tp!464371))))

(declare-fun b!1577284 () Bool)

(declare-fun res!703005 () Bool)

(assert (=> b!1577284 (=> (not res!703005) (not e!1013176))))

(declare-fun rulesProduceEachTokenIndividuallyList!874 (LexerInterface!2672 List!17364 List!17363) Bool)

(assert (=> b!1577284 (= res!703005 (rulesProduceEachTokenIndividuallyList!874 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1577285 () Bool)

(declare-fun tp!464364 () Bool)

(assert (=> b!1577285 (= e!1013178 (and tp!464364 (inv!22704 (tag!3309 (rule!4837 (h!22694 tokens!457)))) (inv!22707 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) e!1013181))))

(declare-fun tp!464370 () Bool)

(declare-fun b!1577286 () Bool)

(declare-fun inv!22708 (Token!5652) Bool)

(assert (=> b!1577286 (= e!1013171 (and (inv!22708 (h!22694 tokens!457)) e!1013179 tp!464370))))

(assert (= (and start!147430 res!703002) b!1577274))

(assert (= (and b!1577274 res!703001) b!1577279))

(assert (= (and b!1577279 res!702998) b!1577284))

(assert (= (and b!1577284 res!703005) b!1577273))

(assert (= (and b!1577273 res!702996) b!1577272))

(assert (= (and b!1577272 res!702999) b!1577270))

(assert (= (and b!1577270 res!702997) b!1577280))

(assert (= (and b!1577280 (not res!703003)) b!1577271))

(assert (= (and b!1577271 (not res!703000)) b!1577281))

(assert (= (and b!1577281 (not res!703004)) b!1577277))

(assert (= b!1577282 b!1577283))

(assert (= b!1577275 b!1577282))

(assert (= (and start!147430 ((_ is Cons!17294) rules!1846)) b!1577275))

(assert (= b!1577285 b!1577278))

(assert (= b!1577276 b!1577285))

(assert (= b!1577286 b!1577276))

(assert (= (and start!147430 ((_ is Cons!17293) tokens!457)) b!1577286))

(declare-fun m!1858183 () Bool)

(assert (=> b!1577274 m!1858183))

(declare-fun m!1858185 () Bool)

(assert (=> b!1577285 m!1858185))

(declare-fun m!1858187 () Bool)

(assert (=> b!1577285 m!1858187))

(declare-fun m!1858189 () Bool)

(assert (=> b!1577276 m!1858189))

(declare-fun m!1858191 () Bool)

(assert (=> b!1577282 m!1858191))

(declare-fun m!1858193 () Bool)

(assert (=> b!1577282 m!1858193))

(declare-fun m!1858195 () Bool)

(assert (=> b!1577277 m!1858195))

(declare-fun m!1858197 () Bool)

(assert (=> b!1577270 m!1858197))

(declare-fun m!1858199 () Bool)

(assert (=> b!1577270 m!1858199))

(declare-fun m!1858201 () Bool)

(assert (=> b!1577270 m!1858201))

(declare-fun m!1858203 () Bool)

(assert (=> b!1577270 m!1858203))

(declare-fun m!1858205 () Bool)

(assert (=> b!1577270 m!1858205))

(declare-fun m!1858207 () Bool)

(assert (=> b!1577270 m!1858207))

(declare-fun m!1858209 () Bool)

(assert (=> b!1577270 m!1858209))

(assert (=> b!1577270 m!1858199))

(declare-fun m!1858211 () Bool)

(assert (=> b!1577270 m!1858211))

(declare-fun m!1858213 () Bool)

(assert (=> b!1577270 m!1858213))

(declare-fun m!1858215 () Bool)

(assert (=> b!1577270 m!1858215))

(assert (=> b!1577270 m!1858203))

(declare-fun m!1858217 () Bool)

(assert (=> b!1577284 m!1858217))

(declare-fun m!1858219 () Bool)

(assert (=> b!1577281 m!1858219))

(declare-fun m!1858221 () Bool)

(assert (=> b!1577280 m!1858221))

(declare-fun m!1858223 () Bool)

(assert (=> b!1577280 m!1858223))

(declare-fun m!1858225 () Bool)

(assert (=> b!1577280 m!1858225))

(declare-fun m!1858227 () Bool)

(assert (=> b!1577280 m!1858227))

(declare-fun m!1858229 () Bool)

(assert (=> b!1577286 m!1858229))

(declare-fun m!1858231 () Bool)

(assert (=> b!1577279 m!1858231))

(declare-fun m!1858233 () Bool)

(assert (=> b!1577271 m!1858233))

(declare-fun m!1858235 () Bool)

(assert (=> b!1577271 m!1858235))

(declare-fun m!1858237 () Bool)

(assert (=> b!1577271 m!1858237))

(declare-fun m!1858239 () Bool)

(assert (=> b!1577271 m!1858239))

(declare-fun m!1858241 () Bool)

(assert (=> b!1577271 m!1858241))

(assert (=> b!1577271 m!1858237))

(assert (=> b!1577271 m!1858239))

(declare-fun m!1858243 () Bool)

(assert (=> b!1577273 m!1858243))

(check-sat (not b_next!43207) (not b!1577284) (not b!1577279) (not b!1577270) (not b!1577276) (not b_next!43213) (not b_next!43209) (not b!1577275) (not b!1577281) b_and!110429 (not b!1577274) (not b!1577280) b_and!110431 (not b!1577282) (not b!1577285) (not b!1577273) (not b!1577277) (not b!1577271) b_and!110433 (not b!1577286) (not b_next!43211) b_and!110435)
(check-sat (not b_next!43207) b_and!110431 b_and!110433 (not b_next!43213) (not b_next!43209) b_and!110429 (not b_next!43211) b_and!110435)
(get-model)

(declare-fun d!468532 () Bool)

(declare-fun res!703020 () Bool)

(declare-fun e!1013190 () Bool)

(assert (=> d!468532 (=> (not res!703020) (not e!1013190))))

(declare-fun isEmpty!10330 (List!17361) Bool)

(assert (=> d!468532 (= res!703020 (not (isEmpty!10330 (originalCharacters!3857 (h!22694 tokens!457)))))))

(assert (=> d!468532 (= (inv!22708 (h!22694 tokens!457)) e!1013190)))

(declare-fun b!1577294 () Bool)

(declare-fun res!703021 () Bool)

(assert (=> b!1577294 (=> (not res!703021) (not e!1013190))))

(declare-fun dynLambda!7667 (Int TokenValue!3133) BalanceConc!11412)

(assert (=> b!1577294 (= res!703021 (= (originalCharacters!3857 (h!22694 tokens!457)) (list!6667 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457))))))))

(declare-fun b!1577295 () Bool)

(declare-fun size!13936 (List!17361) Int)

(assert (=> b!1577295 (= e!1013190 (= (size!13932 (h!22694 tokens!457)) (size!13936 (originalCharacters!3857 (h!22694 tokens!457)))))))

(assert (= (and d!468532 res!703020) b!1577294))

(assert (= (and b!1577294 res!703021) b!1577295))

(declare-fun b_lambda!49641 () Bool)

(assert (=> (not b_lambda!49641) (not b!1577294)))

(declare-fun t!143449 () Bool)

(declare-fun tb!88751 () Bool)

(assert (=> (and b!1577283 (= (toChars!4301 (transformation!3043 (h!22695 rules!1846))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457))))) t!143449) tb!88751))

(declare-fun b!1577300 () Bool)

(declare-fun e!1013193 () Bool)

(declare-fun tp!464375 () Bool)

(declare-fun inv!22711 (Conc!5734) Bool)

(assert (=> b!1577300 (= e!1013193 (and (inv!22711 (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457))))) tp!464375))))

(declare-fun result!107378 () Bool)

(declare-fun inv!22712 (BalanceConc!11412) Bool)

(assert (=> tb!88751 (= result!107378 (and (inv!22712 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457)))) e!1013193))))

(assert (= tb!88751 b!1577300))

(declare-fun m!1858251 () Bool)

(assert (=> b!1577300 m!1858251))

(declare-fun m!1858253 () Bool)

(assert (=> tb!88751 m!1858253))

(assert (=> b!1577294 t!143449))

(declare-fun b_and!110437 () Bool)

(assert (= b_and!110431 (and (=> t!143449 result!107378) b_and!110437)))

(declare-fun t!143451 () Bool)

(declare-fun tb!88753 () Bool)

(assert (=> (and b!1577278 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457))))) t!143451) tb!88753))

(declare-fun result!107382 () Bool)

(assert (= result!107382 result!107378))

(assert (=> b!1577294 t!143451))

(declare-fun b_and!110439 () Bool)

(assert (= b_and!110435 (and (=> t!143451 result!107382) b_and!110439)))

(declare-fun m!1858255 () Bool)

(assert (=> d!468532 m!1858255))

(declare-fun m!1858257 () Bool)

(assert (=> b!1577294 m!1858257))

(assert (=> b!1577294 m!1858257))

(declare-fun m!1858259 () Bool)

(assert (=> b!1577294 m!1858259))

(declare-fun m!1858261 () Bool)

(assert (=> b!1577295 m!1858261))

(assert (=> b!1577286 d!468532))

(declare-fun d!468534 () Bool)

(assert (=> d!468534 (= (inv!22704 (tag!3309 (rule!4837 (h!22694 tokens!457)))) (= (mod (str.len (value!96397 (tag!3309 (rule!4837 (h!22694 tokens!457))))) 2) 0))))

(assert (=> b!1577285 d!468534))

(declare-fun d!468536 () Bool)

(declare-fun res!703024 () Bool)

(declare-fun e!1013196 () Bool)

(assert (=> d!468536 (=> (not res!703024) (not e!1013196))))

(declare-fun semiInverseModEq!1146 (Int Int) Bool)

(assert (=> d!468536 (= res!703024 (semiInverseModEq!1146 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (toValue!4442 (transformation!3043 (rule!4837 (h!22694 tokens!457))))))))

(assert (=> d!468536 (= (inv!22707 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) e!1013196)))

(declare-fun b!1577303 () Bool)

(declare-fun equivClasses!1087 (Int Int) Bool)

(assert (=> b!1577303 (= e!1013196 (equivClasses!1087 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (toValue!4442 (transformation!3043 (rule!4837 (h!22694 tokens!457))))))))

(assert (= (and d!468536 res!703024) b!1577303))

(declare-fun m!1858263 () Bool)

(assert (=> d!468536 m!1858263))

(declare-fun m!1858265 () Bool)

(assert (=> b!1577303 m!1858265))

(assert (=> b!1577285 d!468536))

(declare-fun b!1577314 () Bool)

(declare-fun e!1013205 () Bool)

(declare-fun inv!16 (TokenValue!3133) Bool)

(assert (=> b!1577314 (= e!1013205 (inv!16 (value!96398 (h!22694 tokens!457))))))

(declare-fun b!1577315 () Bool)

(declare-fun res!703027 () Bool)

(declare-fun e!1013203 () Bool)

(assert (=> b!1577315 (=> res!703027 e!1013203)))

(assert (=> b!1577315 (= res!703027 (not ((_ is IntegerValue!9401) (value!96398 (h!22694 tokens!457)))))))

(declare-fun e!1013204 () Bool)

(assert (=> b!1577315 (= e!1013204 e!1013203)))

(declare-fun d!468538 () Bool)

(declare-fun c!255657 () Bool)

(assert (=> d!468538 (= c!255657 ((_ is IntegerValue!9399) (value!96398 (h!22694 tokens!457))))))

(assert (=> d!468538 (= (inv!21 (value!96398 (h!22694 tokens!457))) e!1013205)))

(declare-fun b!1577316 () Bool)

(declare-fun inv!15 (TokenValue!3133) Bool)

(assert (=> b!1577316 (= e!1013203 (inv!15 (value!96398 (h!22694 tokens!457))))))

(declare-fun b!1577317 () Bool)

(declare-fun inv!17 (TokenValue!3133) Bool)

(assert (=> b!1577317 (= e!1013204 (inv!17 (value!96398 (h!22694 tokens!457))))))

(declare-fun b!1577318 () Bool)

(assert (=> b!1577318 (= e!1013205 e!1013204)))

(declare-fun c!255656 () Bool)

(assert (=> b!1577318 (= c!255656 ((_ is IntegerValue!9400) (value!96398 (h!22694 tokens!457))))))

(assert (= (and d!468538 c!255657) b!1577314))

(assert (= (and d!468538 (not c!255657)) b!1577318))

(assert (= (and b!1577318 c!255656) b!1577317))

(assert (= (and b!1577318 (not c!255656)) b!1577315))

(assert (= (and b!1577315 (not res!703027)) b!1577316))

(declare-fun m!1858267 () Bool)

(assert (=> b!1577314 m!1858267))

(declare-fun m!1858269 () Bool)

(assert (=> b!1577316 m!1858269))

(declare-fun m!1858271 () Bool)

(assert (=> b!1577317 m!1858271))

(assert (=> b!1577276 d!468538))

(declare-fun d!468540 () Bool)

(assert (=> d!468540 (= (isEmpty!10327 rules!1846) ((_ is Nil!17294) rules!1846))))

(assert (=> b!1577274 d!468540))

(declare-fun b!1577404 () Bool)

(declare-fun e!1013266 () Bool)

(assert (=> b!1577404 (= e!1013266 true)))

(declare-fun b!1577403 () Bool)

(declare-fun e!1013265 () Bool)

(assert (=> b!1577403 (= e!1013265 e!1013266)))

(declare-fun b!1577402 () Bool)

(declare-fun e!1013264 () Bool)

(assert (=> b!1577402 (= e!1013264 e!1013265)))

(declare-fun d!468542 () Bool)

(assert (=> d!468542 e!1013264))

(assert (= b!1577403 b!1577404))

(assert (= b!1577402 b!1577403))

(assert (= (and d!468542 ((_ is Cons!17294) rules!1846)) b!1577402))

(declare-fun lambda!66401 () Int)

(declare-fun order!10193 () Int)

(declare-fun order!10195 () Int)

(declare-fun dynLambda!7668 (Int Int) Int)

(declare-fun dynLambda!7669 (Int Int) Int)

(assert (=> b!1577404 (< (dynLambda!7668 order!10193 (toValue!4442 (transformation!3043 (h!22695 rules!1846)))) (dynLambda!7669 order!10195 lambda!66401))))

(declare-fun order!10197 () Int)

(declare-fun dynLambda!7670 (Int Int) Int)

(assert (=> b!1577404 (< (dynLambda!7670 order!10197 (toChars!4301 (transformation!3043 (h!22695 rules!1846)))) (dynLambda!7669 order!10195 lambda!66401))))

(assert (=> d!468542 true))

(declare-fun lt!550044 () Bool)

(declare-fun forall!3983 (List!17363 Int) Bool)

(assert (=> d!468542 (= lt!550044 (forall!3983 tokens!457 lambda!66401))))

(declare-fun e!1013257 () Bool)

(assert (=> d!468542 (= lt!550044 e!1013257)))

(declare-fun res!703072 () Bool)

(assert (=> d!468542 (=> res!703072 e!1013257)))

(assert (=> d!468542 (= res!703072 (not ((_ is Cons!17293) tokens!457)))))

(assert (=> d!468542 (not (isEmpty!10327 rules!1846))))

(assert (=> d!468542 (= (rulesProduceEachTokenIndividuallyList!874 thiss!17113 rules!1846 tokens!457) lt!550044)))

(declare-fun b!1577392 () Bool)

(declare-fun e!1013256 () Bool)

(assert (=> b!1577392 (= e!1013257 e!1013256)))

(declare-fun res!703073 () Bool)

(assert (=> b!1577392 (=> (not res!703073) (not e!1013256))))

(declare-fun rulesProduceIndividualToken!1332 (LexerInterface!2672 List!17364 Token!5652) Bool)

(assert (=> b!1577392 (= res!703073 (rulesProduceIndividualToken!1332 thiss!17113 rules!1846 (h!22694 tokens!457)))))

(declare-fun b!1577393 () Bool)

(assert (=> b!1577393 (= e!1013256 (rulesProduceEachTokenIndividuallyList!874 thiss!17113 rules!1846 (t!143446 tokens!457)))))

(assert (= (and d!468542 (not res!703072)) b!1577392))

(assert (= (and b!1577392 res!703073) b!1577393))

(declare-fun m!1858451 () Bool)

(assert (=> d!468542 m!1858451))

(assert (=> d!468542 m!1858183))

(declare-fun m!1858453 () Bool)

(assert (=> b!1577392 m!1858453))

(declare-fun m!1858455 () Bool)

(assert (=> b!1577393 m!1858455))

(assert (=> b!1577284 d!468542))

(declare-fun d!468580 () Bool)

(declare-fun res!703091 () Bool)

(declare-fun e!1013284 () Bool)

(assert (=> d!468580 (=> res!703091 e!1013284)))

(assert (=> d!468580 (= res!703091 (or (not ((_ is Cons!17293) tokens!457)) (not ((_ is Cons!17293) (t!143446 tokens!457)))))))

(assert (=> d!468580 (= (tokensListTwoByTwoPredicateSeparableList!365 thiss!17113 tokens!457 rules!1846) e!1013284)))

(declare-fun b!1577429 () Bool)

(declare-fun e!1013283 () Bool)

(assert (=> b!1577429 (= e!1013284 e!1013283)))

(declare-fun res!703090 () Bool)

(assert (=> b!1577429 (=> (not res!703090) (not e!1013283))))

(assert (=> b!1577429 (= res!703090 (separableTokensPredicate!614 thiss!17113 (h!22694 tokens!457) (h!22694 (t!143446 tokens!457)) rules!1846))))

(declare-fun lt!550072 () Unit!26821)

(declare-fun Unit!26840 () Unit!26821)

(assert (=> b!1577429 (= lt!550072 Unit!26840)))

(declare-fun size!13937 (BalanceConc!11412) Int)

(assert (=> b!1577429 (> (size!13937 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) 0)))

(declare-fun lt!550069 () Unit!26821)

(declare-fun Unit!26841 () Unit!26821)

(assert (=> b!1577429 (= lt!550069 Unit!26841)))

(assert (=> b!1577429 (rulesProduceIndividualToken!1332 thiss!17113 rules!1846 (h!22694 (t!143446 tokens!457)))))

(declare-fun lt!550073 () Unit!26821)

(declare-fun Unit!26842 () Unit!26821)

(assert (=> b!1577429 (= lt!550073 Unit!26842)))

(assert (=> b!1577429 (rulesProduceIndividualToken!1332 thiss!17113 rules!1846 (h!22694 tokens!457))))

(declare-fun lt!550068 () Unit!26821)

(declare-fun lt!550070 () Unit!26821)

(assert (=> b!1577429 (= lt!550068 lt!550070)))

(assert (=> b!1577429 (rulesProduceIndividualToken!1332 thiss!17113 rules!1846 (h!22694 (t!143446 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!511 (LexerInterface!2672 List!17364 List!17363 Token!5652) Unit!26821)

(assert (=> b!1577429 (= lt!550070 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!511 thiss!17113 rules!1846 tokens!457 (h!22694 (t!143446 tokens!457))))))

(declare-fun lt!550071 () Unit!26821)

(declare-fun lt!550074 () Unit!26821)

(assert (=> b!1577429 (= lt!550071 lt!550074)))

(assert (=> b!1577429 (rulesProduceIndividualToken!1332 thiss!17113 rules!1846 (h!22694 tokens!457))))

(assert (=> b!1577429 (= lt!550074 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!511 thiss!17113 rules!1846 tokens!457 (h!22694 tokens!457)))))

(declare-fun b!1577430 () Bool)

(assert (=> b!1577430 (= e!1013283 (tokensListTwoByTwoPredicateSeparableList!365 thiss!17113 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457))) rules!1846))))

(assert (= (and d!468580 (not res!703091)) b!1577429))

(assert (= (and b!1577429 res!703090) b!1577430))

(declare-fun m!1858499 () Bool)

(assert (=> b!1577429 m!1858499))

(assert (=> b!1577429 m!1858453))

(assert (=> b!1577429 m!1858499))

(declare-fun m!1858501 () Bool)

(assert (=> b!1577429 m!1858501))

(declare-fun m!1858503 () Bool)

(assert (=> b!1577429 m!1858503))

(assert (=> b!1577429 m!1858219))

(declare-fun m!1858505 () Bool)

(assert (=> b!1577429 m!1858505))

(declare-fun m!1858507 () Bool)

(assert (=> b!1577429 m!1858507))

(declare-fun m!1858509 () Bool)

(assert (=> b!1577430 m!1858509))

(assert (=> b!1577273 d!468580))

(declare-fun d!468598 () Bool)

(declare-fun lt!550077 () BalanceConc!11412)

(declare-fun printList!793 (LexerInterface!2672 List!17363) List!17361)

(assert (=> d!468598 (= (list!6667 lt!550077) (printList!793 thiss!17113 (list!6668 (seqFromList!1842 tokens!457))))))

(declare-fun printTailRec!729 (LexerInterface!2672 BalanceConc!11414 Int BalanceConc!11412) BalanceConc!11412)

(assert (=> d!468598 (= lt!550077 (printTailRec!729 thiss!17113 (seqFromList!1842 tokens!457) 0 (BalanceConc!11413 Empty!5734)))))

(assert (=> d!468598 (= (print!1203 thiss!17113 (seqFromList!1842 tokens!457)) lt!550077)))

(declare-fun bs!390664 () Bool)

(assert (= bs!390664 d!468598))

(declare-fun m!1858511 () Bool)

(assert (=> bs!390664 m!1858511))

(assert (=> bs!390664 m!1858203))

(declare-fun m!1858513 () Bool)

(assert (=> bs!390664 m!1858513))

(assert (=> bs!390664 m!1858513))

(declare-fun m!1858515 () Bool)

(assert (=> bs!390664 m!1858515))

(assert (=> bs!390664 m!1858203))

(declare-fun m!1858517 () Bool)

(assert (=> bs!390664 m!1858517))

(assert (=> b!1577270 d!468598))

(declare-fun d!468600 () Bool)

(declare-fun e!1013289 () Bool)

(assert (=> d!468600 e!1013289))

(declare-fun res!703097 () Bool)

(assert (=> d!468600 (=> (not res!703097) (not e!1013289))))

(declare-fun lt!550080 () List!17361)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2381 (List!17361) (InoxSet C!8916))

(assert (=> d!468600 (= res!703097 (= (content!2381 lt!550080) ((_ map or) (content!2381 lt!549916) (content!2381 lt!549920))))))

(declare-fun e!1013290 () List!17361)

(assert (=> d!468600 (= lt!550080 e!1013290)))

(declare-fun c!255676 () Bool)

(assert (=> d!468600 (= c!255676 ((_ is Nil!17291) lt!549916))))

(assert (=> d!468600 (= (++!4485 lt!549916 lt!549920) lt!550080)))

(declare-fun b!1577440 () Bool)

(assert (=> b!1577440 (= e!1013290 (Cons!17291 (h!22692 lt!549916) (++!4485 (t!143444 lt!549916) lt!549920)))))

(declare-fun b!1577439 () Bool)

(assert (=> b!1577439 (= e!1013290 lt!549920)))

(declare-fun b!1577442 () Bool)

(assert (=> b!1577442 (= e!1013289 (or (not (= lt!549920 Nil!17291)) (= lt!550080 lt!549916)))))

(declare-fun b!1577441 () Bool)

(declare-fun res!703096 () Bool)

(assert (=> b!1577441 (=> (not res!703096) (not e!1013289))))

(assert (=> b!1577441 (= res!703096 (= (size!13936 lt!550080) (+ (size!13936 lt!549916) (size!13936 lt!549920))))))

(assert (= (and d!468600 c!255676) b!1577439))

(assert (= (and d!468600 (not c!255676)) b!1577440))

(assert (= (and d!468600 res!703097) b!1577441))

(assert (= (and b!1577441 res!703096) b!1577442))

(declare-fun m!1858519 () Bool)

(assert (=> d!468600 m!1858519))

(declare-fun m!1858521 () Bool)

(assert (=> d!468600 m!1858521))

(declare-fun m!1858523 () Bool)

(assert (=> d!468600 m!1858523))

(declare-fun m!1858525 () Bool)

(assert (=> b!1577440 m!1858525))

(declare-fun m!1858527 () Bool)

(assert (=> b!1577441 m!1858527))

(declare-fun m!1858529 () Bool)

(assert (=> b!1577441 m!1858529))

(declare-fun m!1858531 () Bool)

(assert (=> b!1577441 m!1858531))

(assert (=> b!1577270 d!468600))

(declare-fun d!468602 () Bool)

(declare-fun lt!550081 () BalanceConc!11412)

(assert (=> d!468602 (= (list!6667 lt!550081) (printList!793 thiss!17113 (list!6668 lt!549918)))))

(assert (=> d!468602 (= lt!550081 (printTailRec!729 thiss!17113 lt!549918 0 (BalanceConc!11413 Empty!5734)))))

(assert (=> d!468602 (= (print!1203 thiss!17113 lt!549918) lt!550081)))

(declare-fun bs!390665 () Bool)

(assert (= bs!390665 d!468602))

(declare-fun m!1858533 () Bool)

(assert (=> bs!390665 m!1858533))

(assert (=> bs!390665 m!1858235))

(assert (=> bs!390665 m!1858235))

(declare-fun m!1858535 () Bool)

(assert (=> bs!390665 m!1858535))

(declare-fun m!1858537 () Bool)

(assert (=> bs!390665 m!1858537))

(assert (=> b!1577270 d!468602))

(declare-fun b!1577457 () Bool)

(declare-fun e!1013301 () Bool)

(declare-fun lt!550086 () tuple2!16758)

(assert (=> b!1577457 (= e!1013301 (= (_2!9781 lt!550086) lt!549917))))

(declare-fun e!1013302 () Bool)

(declare-fun b!1577458 () Bool)

(declare-datatypes ((tuple2!16764 0))(
  ( (tuple2!16765 (_1!9784 List!17363) (_2!9784 List!17361)) )
))
(declare-fun lexList!775 (LexerInterface!2672 List!17364 List!17361) tuple2!16764)

(assert (=> b!1577458 (= e!1013302 (= (list!6667 (_2!9781 lt!550086)) (_2!9784 (lexList!775 thiss!17113 rules!1846 (list!6667 lt!549917)))))))

(declare-fun b!1577459 () Bool)

(declare-fun e!1013303 () Bool)

(declare-fun isEmpty!10332 (BalanceConc!11414) Bool)

(assert (=> b!1577459 (= e!1013303 (not (isEmpty!10332 (_1!9781 lt!550086))))))

(declare-fun d!468604 () Bool)

(assert (=> d!468604 e!1013302))

(declare-fun res!703109 () Bool)

(assert (=> d!468604 (=> (not res!703109) (not e!1013302))))

(assert (=> d!468604 (= res!703109 e!1013301)))

(declare-fun c!255679 () Bool)

(declare-fun size!13938 (BalanceConc!11414) Int)

(assert (=> d!468604 (= c!255679 (> (size!13938 (_1!9781 lt!550086)) 0))))

(declare-fun lexTailRecV2!498 (LexerInterface!2672 List!17364 BalanceConc!11412 BalanceConc!11412 BalanceConc!11412 BalanceConc!11414) tuple2!16758)

(assert (=> d!468604 (= lt!550086 (lexTailRecV2!498 thiss!17113 rules!1846 lt!549917 (BalanceConc!11413 Empty!5734) lt!549917 (BalanceConc!11415 Empty!5735)))))

(assert (=> d!468604 (= (lex!1156 thiss!17113 rules!1846 lt!549917) lt!550086)))

(declare-fun b!1577460 () Bool)

(assert (=> b!1577460 (= e!1013301 e!1013303)))

(declare-fun res!703110 () Bool)

(assert (=> b!1577460 (= res!703110 (< (size!13937 (_2!9781 lt!550086)) (size!13937 lt!549917)))))

(assert (=> b!1577460 (=> (not res!703110) (not e!1013303))))

(declare-fun b!1577461 () Bool)

(declare-fun res!703108 () Bool)

(assert (=> b!1577461 (=> (not res!703108) (not e!1013302))))

(assert (=> b!1577461 (= res!703108 (= (list!6668 (_1!9781 lt!550086)) (_1!9784 (lexList!775 thiss!17113 rules!1846 (list!6667 lt!549917)))))))

(assert (= (and d!468604 c!255679) b!1577460))

(assert (= (and d!468604 (not c!255679)) b!1577457))

(assert (= (and b!1577460 res!703110) b!1577459))

(assert (= (and d!468604 res!703109) b!1577461))

(assert (= (and b!1577461 res!703108) b!1577458))

(declare-fun m!1858539 () Bool)

(assert (=> d!468604 m!1858539))

(declare-fun m!1858541 () Bool)

(assert (=> d!468604 m!1858541))

(declare-fun m!1858543 () Bool)

(assert (=> b!1577458 m!1858543))

(assert (=> b!1577458 m!1858209))

(assert (=> b!1577458 m!1858209))

(declare-fun m!1858545 () Bool)

(assert (=> b!1577458 m!1858545))

(declare-fun m!1858547 () Bool)

(assert (=> b!1577460 m!1858547))

(declare-fun m!1858549 () Bool)

(assert (=> b!1577460 m!1858549))

(declare-fun m!1858551 () Bool)

(assert (=> b!1577461 m!1858551))

(assert (=> b!1577461 m!1858209))

(assert (=> b!1577461 m!1858209))

(assert (=> b!1577461 m!1858545))

(declare-fun m!1858553 () Bool)

(assert (=> b!1577459 m!1858553))

(assert (=> b!1577270 d!468604))

(declare-fun d!468606 () Bool)

(declare-fun fromListB!787 (List!17363) BalanceConc!11414)

(assert (=> d!468606 (= (seqFromList!1842 tokens!457) (fromListB!787 tokens!457))))

(declare-fun bs!390666 () Bool)

(assert (= bs!390666 d!468606))

(declare-fun m!1858555 () Bool)

(assert (=> bs!390666 m!1858555))

(assert (=> b!1577270 d!468606))

(declare-fun d!468608 () Bool)

(declare-fun lt!550089 () BalanceConc!11412)

(assert (=> d!468608 (= (list!6667 lt!550089) (originalCharacters!3857 (h!22694 tokens!457)))))

(assert (=> d!468608 (= lt!550089 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457))))))

(assert (=> d!468608 (= (charsOf!1692 (h!22694 tokens!457)) lt!550089)))

(declare-fun b_lambda!49647 () Bool)

(assert (=> (not b_lambda!49647) (not d!468608)))

(assert (=> d!468608 t!143449))

(declare-fun b_and!110449 () Bool)

(assert (= b_and!110437 (and (=> t!143449 result!107378) b_and!110449)))

(assert (=> d!468608 t!143451))

(declare-fun b_and!110451 () Bool)

(assert (= b_and!110439 (and (=> t!143451 result!107382) b_and!110451)))

(declare-fun m!1858557 () Bool)

(assert (=> d!468608 m!1858557))

(assert (=> d!468608 m!1858257))

(assert (=> b!1577270 d!468608))

(declare-fun d!468610 () Bool)

(assert (=> d!468610 (= (seqFromList!1842 (t!143446 tokens!457)) (fromListB!787 (t!143446 tokens!457)))))

(declare-fun bs!390667 () Bool)

(assert (= bs!390667 d!468610))

(declare-fun m!1858559 () Bool)

(assert (=> bs!390667 m!1858559))

(assert (=> b!1577270 d!468610))

(declare-fun d!468612 () Bool)

(declare-fun list!6671 (Conc!5734) List!17361)

(assert (=> d!468612 (= (list!6667 (charsOf!1692 (h!22694 tokens!457))) (list!6671 (c!255649 (charsOf!1692 (h!22694 tokens!457)))))))

(declare-fun bs!390668 () Bool)

(assert (= bs!390668 d!468612))

(declare-fun m!1858561 () Bool)

(assert (=> bs!390668 m!1858561))

(assert (=> b!1577270 d!468612))

(declare-fun d!468614 () Bool)

(assert (=> d!468614 (= (list!6667 lt!549917) (list!6671 (c!255649 lt!549917)))))

(declare-fun bs!390669 () Bool)

(assert (= bs!390669 d!468614))

(declare-fun m!1858563 () Bool)

(assert (=> bs!390669 m!1858563))

(assert (=> b!1577270 d!468614))

(declare-fun d!468616 () Bool)

(assert (=> d!468616 (= (list!6667 lt!549926) (list!6671 (c!255649 lt!549926)))))

(declare-fun bs!390670 () Bool)

(assert (= bs!390670 d!468616))

(declare-fun m!1858565 () Bool)

(assert (=> bs!390670 m!1858565))

(assert (=> b!1577270 d!468616))

(declare-fun d!468618 () Bool)

(declare-fun list!6672 (Conc!5735) List!17363)

(assert (=> d!468618 (= (list!6668 (_1!9781 lt!549921)) (list!6672 (c!255651 (_1!9781 lt!549921))))))

(declare-fun bs!390671 () Bool)

(assert (= bs!390671 d!468618))

(declare-fun m!1858567 () Bool)

(assert (=> bs!390671 m!1858567))

(assert (=> b!1577280 d!468618))

(declare-fun d!468620 () Bool)

(declare-fun e!1013363 () Bool)

(assert (=> d!468620 e!1013363))

(declare-fun res!703121 () Bool)

(assert (=> d!468620 (=> (not res!703121) (not e!1013363))))

(assert (=> d!468620 (= res!703121 (= (list!6668 (_1!9781 (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457)))))) (t!143446 tokens!457)))))

(declare-fun lt!550165 () Unit!26821)

(declare-fun e!1013362 () Unit!26821)

(assert (=> d!468620 (= lt!550165 e!1013362)))

(declare-fun c!255682 () Bool)

(assert (=> d!468620 (= c!255682 (or ((_ is Nil!17293) (t!143446 tokens!457)) ((_ is Nil!17293) (t!143446 (t!143446 tokens!457)))))))

(assert (=> d!468620 (not (isEmpty!10327 rules!1846))))

(assert (=> d!468620 (= (theoremInvertabilityWhenTokenListSeparable!117 thiss!17113 rules!1846 (t!143446 tokens!457)) lt!550165)))

(declare-fun b!1577539 () Bool)

(declare-fun Unit!26843 () Unit!26821)

(assert (=> b!1577539 (= e!1013362 Unit!26843)))

(declare-fun b!1577540 () Bool)

(declare-fun Unit!26844 () Unit!26821)

(assert (=> b!1577540 (= e!1013362 Unit!26844)))

(declare-fun lt!550166 () BalanceConc!11412)

(assert (=> b!1577540 (= lt!550166 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457))))))

(declare-fun lt!550170 () BalanceConc!11412)

(assert (=> b!1577540 (= lt!550170 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))))))

(declare-fun lt!550153 () tuple2!16758)

(assert (=> b!1577540 (= lt!550153 (lex!1156 thiss!17113 rules!1846 lt!550170))))

(declare-fun lt!550147 () List!17361)

(assert (=> b!1577540 (= lt!550147 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))

(declare-fun lt!550156 () List!17361)

(assert (=> b!1577540 (= lt!550156 (list!6667 lt!550170))))

(declare-fun lt!550171 () Unit!26821)

(assert (=> b!1577540 (= lt!550171 (lemmaConcatTwoListThenFirstIsPrefix!828 lt!550147 lt!550156))))

(assert (=> b!1577540 (isPrefix!1303 lt!550147 (++!4485 lt!550147 lt!550156))))

(declare-fun lt!550160 () Unit!26821)

(assert (=> b!1577540 (= lt!550160 lt!550171)))

(declare-fun lt!550150 () Unit!26821)

(assert (=> b!1577540 (= lt!550150 (theoremInvertabilityWhenTokenListSeparable!117 thiss!17113 rules!1846 (t!143446 (t!143446 tokens!457))))))

(declare-fun lt!550169 () Unit!26821)

(assert (=> b!1577540 (= lt!550169 (seqFromListBHdTlConstructive!120 (h!22694 (t!143446 (t!143446 tokens!457))) (t!143446 (t!143446 (t!143446 tokens!457))) (_1!9781 lt!550153)))))

(assert (=> b!1577540 (= (list!6668 (_1!9781 lt!550153)) (list!6668 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 (t!143446 tokens!457))))))))

(declare-fun lt!550162 () Unit!26821)

(assert (=> b!1577540 (= lt!550162 lt!550169)))

(declare-datatypes ((tuple2!16766 0))(
  ( (tuple2!16767 (_1!9785 Token!5652) (_2!9785 List!17361)) )
))
(declare-datatypes ((Option!3092 0))(
  ( (None!3091) (Some!3091 (v!23918 tuple2!16766)) )
))
(declare-fun lt!550151 () Option!3092)

(declare-fun maxPrefix!1238 (LexerInterface!2672 List!17364 List!17361) Option!3092)

(assert (=> b!1577540 (= lt!550151 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 lt!550166)))))

(declare-fun singletonSeq!1380 (Token!5652) BalanceConc!11414)

(assert (=> b!1577540 (= (print!1203 thiss!17113 (singletonSeq!1380 (h!22694 (t!143446 tokens!457)))) (printTailRec!729 thiss!17113 (singletonSeq!1380 (h!22694 (t!143446 tokens!457))) 0 (BalanceConc!11413 Empty!5734)))))

(declare-fun lt!550163 () Unit!26821)

(declare-fun Unit!26845 () Unit!26821)

(assert (=> b!1577540 (= lt!550163 Unit!26845)))

(declare-fun lt!550168 () Unit!26821)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!258 (LexerInterface!2672 List!17364 List!17361 List!17361) Unit!26821)

(assert (=> b!1577540 (= lt!550168 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!258 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (list!6667 lt!550170)))))

(assert (=> b!1577540 (= (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (originalCharacters!3857 (h!22694 (t!143446 tokens!457))))))

(declare-fun lt!550157 () Unit!26821)

(declare-fun Unit!26846 () Unit!26821)

(assert (=> b!1577540 (= lt!550157 Unit!26846)))

(declare-fun singletonSeq!1381 (C!8916) BalanceConc!11412)

(declare-fun apply!4190 (BalanceConc!11412 Int) C!8916)

(declare-fun head!3172 (List!17361) C!8916)

(assert (=> b!1577540 (= (list!6667 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457)))) 0))) (Cons!17291 (head!3172 (originalCharacters!3857 (h!22694 (t!143446 (t!143446 tokens!457))))) Nil!17291))))

(declare-fun lt!550158 () Unit!26821)

(declare-fun Unit!26847 () Unit!26821)

(assert (=> b!1577540 (= lt!550158 Unit!26847)))

(assert (=> b!1577540 (= (list!6667 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457)))) 0))) (Cons!17291 (head!3172 (list!6667 lt!550170)) Nil!17291))))

(declare-fun lt!550159 () Unit!26821)

(declare-fun Unit!26848 () Unit!26821)

(assert (=> b!1577540 (= lt!550159 Unit!26848)))

(declare-fun head!3173 (BalanceConc!11412) C!8916)

(assert (=> b!1577540 (= (list!6667 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457)))) 0))) (Cons!17291 (head!3173 lt!550170) Nil!17291))))

(declare-fun lt!550149 () Unit!26821)

(declare-fun Unit!26849 () Unit!26821)

(assert (=> b!1577540 (= lt!550149 Unit!26849)))

(declare-fun isDefined!2485 (Option!3092) Bool)

(assert (=> b!1577540 (isDefined!2485 (maxPrefix!1238 thiss!17113 rules!1846 (originalCharacters!3857 (h!22694 (t!143446 tokens!457)))))))

(declare-fun lt!550154 () Unit!26821)

(declare-fun Unit!26850 () Unit!26821)

(assert (=> b!1577540 (= lt!550154 Unit!26850)))

(assert (=> b!1577540 (isDefined!2485 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))

(declare-fun lt!550152 () Unit!26821)

(declare-fun Unit!26851 () Unit!26821)

(assert (=> b!1577540 (= lt!550152 Unit!26851)))

(declare-fun lt!550161 () Unit!26821)

(declare-fun Unit!26852 () Unit!26821)

(assert (=> b!1577540 (= lt!550161 Unit!26852)))

(declare-fun get!4945 (Option!3092) tuple2!16766)

(assert (=> b!1577540 (= (_1!9785 (get!4945 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))) (h!22694 (t!143446 tokens!457)))))

(declare-fun lt!550164 () Unit!26821)

(declare-fun Unit!26853 () Unit!26821)

(assert (=> b!1577540 (= lt!550164 Unit!26853)))

(assert (=> b!1577540 (isEmpty!10330 (_2!9785 (get!4945 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))))

(declare-fun lt!550167 () Unit!26821)

(declare-fun Unit!26854 () Unit!26821)

(assert (=> b!1577540 (= lt!550167 Unit!26854)))

(declare-fun matchR!1906 (Regex!4371 List!17361) Bool)

(assert (=> b!1577540 (matchR!1906 (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))) (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))

(declare-fun lt!550155 () Unit!26821)

(declare-fun Unit!26855 () Unit!26821)

(assert (=> b!1577540 (= lt!550155 Unit!26855)))

(assert (=> b!1577540 (= (rule!4837 (h!22694 (t!143446 tokens!457))) (rule!4837 (h!22694 (t!143446 tokens!457))))))

(declare-fun lt!550146 () Unit!26821)

(declare-fun Unit!26856 () Unit!26821)

(assert (=> b!1577540 (= lt!550146 Unit!26856)))

(declare-fun lt!550148 () Unit!26821)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!56 (LexerInterface!2672 List!17364 Token!5652 Rule!5886 List!17361) Unit!26821)

(assert (=> b!1577540 (= lt!550148 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!56 thiss!17113 rules!1846 (h!22694 (t!143446 tokens!457)) (rule!4837 (h!22694 (t!143446 tokens!457))) (list!6667 lt!550170)))))

(declare-fun b!1577541 () Bool)

(declare-fun isEmpty!10333 (BalanceConc!11412) Bool)

(assert (=> b!1577541 (= e!1013363 (isEmpty!10333 (_2!9781 (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457)))))))))

(assert (= (and d!468620 c!255682) b!1577539))

(assert (= (and d!468620 (not c!255682)) b!1577540))

(assert (= (and d!468620 res!703121) b!1577541))

(declare-fun m!1858591 () Bool)

(assert (=> d!468620 m!1858591))

(declare-fun m!1858593 () Bool)

(assert (=> d!468620 m!1858593))

(assert (=> d!468620 m!1858201))

(assert (=> d!468620 m!1858591))

(assert (=> d!468620 m!1858201))

(declare-fun m!1858595 () Bool)

(assert (=> d!468620 m!1858595))

(assert (=> d!468620 m!1858183))

(declare-fun m!1858597 () Bool)

(assert (=> b!1577540 m!1858597))

(declare-fun m!1858599 () Bool)

(assert (=> b!1577540 m!1858599))

(declare-fun m!1858601 () Bool)

(assert (=> b!1577540 m!1858601))

(declare-fun m!1858603 () Bool)

(assert (=> b!1577540 m!1858603))

(assert (=> b!1577540 m!1858201))

(assert (=> b!1577540 m!1858591))

(assert (=> b!1577540 m!1858597))

(declare-fun m!1858605 () Bool)

(assert (=> b!1577540 m!1858605))

(assert (=> b!1577540 m!1858201))

(declare-fun m!1858607 () Bool)

(assert (=> b!1577540 m!1858607))

(declare-fun m!1858609 () Bool)

(assert (=> b!1577540 m!1858609))

(assert (=> b!1577540 m!1858599))

(declare-fun m!1858611 () Bool)

(assert (=> b!1577540 m!1858611))

(declare-fun m!1858613 () Bool)

(assert (=> b!1577540 m!1858613))

(declare-fun m!1858615 () Bool)

(assert (=> b!1577540 m!1858615))

(declare-fun m!1858617 () Bool)

(assert (=> b!1577540 m!1858617))

(declare-fun m!1858619 () Bool)

(assert (=> b!1577540 m!1858619))

(assert (=> b!1577540 m!1858237))

(declare-fun m!1858621 () Bool)

(assert (=> b!1577540 m!1858621))

(assert (=> b!1577540 m!1858607))

(declare-fun m!1858623 () Bool)

(assert (=> b!1577540 m!1858623))

(declare-fun m!1858625 () Bool)

(assert (=> b!1577540 m!1858625))

(assert (=> b!1577540 m!1858613))

(assert (=> b!1577540 m!1858617))

(declare-fun m!1858627 () Bool)

(assert (=> b!1577540 m!1858627))

(assert (=> b!1577540 m!1858623))

(declare-fun m!1858629 () Bool)

(assert (=> b!1577540 m!1858629))

(declare-fun m!1858631 () Bool)

(assert (=> b!1577540 m!1858631))

(declare-fun m!1858633 () Bool)

(assert (=> b!1577540 m!1858633))

(declare-fun m!1858635 () Bool)

(assert (=> b!1577540 m!1858635))

(assert (=> b!1577540 m!1858617))

(assert (=> b!1577540 m!1858617))

(declare-fun m!1858637 () Bool)

(assert (=> b!1577540 m!1858637))

(declare-fun m!1858639 () Bool)

(assert (=> b!1577540 m!1858639))

(declare-fun m!1858641 () Bool)

(assert (=> b!1577540 m!1858641))

(declare-fun m!1858643 () Bool)

(assert (=> b!1577540 m!1858643))

(declare-fun m!1858645 () Bool)

(assert (=> b!1577540 m!1858645))

(declare-fun m!1858647 () Bool)

(assert (=> b!1577540 m!1858647))

(declare-fun m!1858649 () Bool)

(assert (=> b!1577540 m!1858649))

(assert (=> b!1577540 m!1858499))

(assert (=> b!1577540 m!1858613))

(assert (=> b!1577540 m!1858613))

(assert (=> b!1577540 m!1858647))

(assert (=> b!1577540 m!1858499))

(declare-fun m!1858651 () Bool)

(assert (=> b!1577540 m!1858651))

(assert (=> b!1577540 m!1858639))

(assert (=> b!1577540 m!1858643))

(assert (=> b!1577540 m!1858601))

(declare-fun m!1858653 () Bool)

(assert (=> b!1577540 m!1858653))

(declare-fun m!1858655 () Bool)

(assert (=> b!1577540 m!1858655))

(assert (=> b!1577540 m!1858609))

(assert (=> b!1577540 m!1858633))

(declare-fun m!1858657 () Bool)

(assert (=> b!1577540 m!1858657))

(assert (=> b!1577540 m!1858237))

(assert (=> b!1577540 m!1858647))

(declare-fun m!1858659 () Bool)

(assert (=> b!1577540 m!1858659))

(assert (=> b!1577540 m!1858601))

(declare-fun m!1858661 () Bool)

(assert (=> b!1577540 m!1858661))

(declare-fun m!1858663 () Bool)

(assert (=> b!1577540 m!1858663))

(assert (=> b!1577541 m!1858201))

(assert (=> b!1577541 m!1858201))

(assert (=> b!1577541 m!1858591))

(assert (=> b!1577541 m!1858591))

(assert (=> b!1577541 m!1858593))

(declare-fun m!1858665 () Bool)

(assert (=> b!1577541 m!1858665))

(assert (=> b!1577280 d!468620))

(declare-fun b!1577551 () Bool)

(declare-fun res!703133 () Bool)

(declare-fun e!1013372 () Bool)

(assert (=> b!1577551 (=> (not res!703133) (not e!1013372))))

(assert (=> b!1577551 (= res!703133 (= (head!3172 lt!549916) (head!3172 lt!549914)))))

(declare-fun d!468624 () Bool)

(declare-fun e!1013370 () Bool)

(assert (=> d!468624 e!1013370))

(declare-fun res!703131 () Bool)

(assert (=> d!468624 (=> res!703131 e!1013370)))

(declare-fun lt!550174 () Bool)

(assert (=> d!468624 (= res!703131 (not lt!550174))))

(declare-fun e!1013371 () Bool)

(assert (=> d!468624 (= lt!550174 e!1013371)))

(declare-fun res!703130 () Bool)

(assert (=> d!468624 (=> res!703130 e!1013371)))

(assert (=> d!468624 (= res!703130 ((_ is Nil!17291) lt!549916))))

(assert (=> d!468624 (= (isPrefix!1303 lt!549916 lt!549914) lt!550174)))

(declare-fun b!1577553 () Bool)

(assert (=> b!1577553 (= e!1013370 (>= (size!13936 lt!549914) (size!13936 lt!549916)))))

(declare-fun b!1577552 () Bool)

(declare-fun tail!2244 (List!17361) List!17361)

(assert (=> b!1577552 (= e!1013372 (isPrefix!1303 (tail!2244 lt!549916) (tail!2244 lt!549914)))))

(declare-fun b!1577550 () Bool)

(assert (=> b!1577550 (= e!1013371 e!1013372)))

(declare-fun res!703132 () Bool)

(assert (=> b!1577550 (=> (not res!703132) (not e!1013372))))

(assert (=> b!1577550 (= res!703132 (not ((_ is Nil!17291) lt!549914)))))

(assert (= (and d!468624 (not res!703130)) b!1577550))

(assert (= (and b!1577550 res!703132) b!1577551))

(assert (= (and b!1577551 res!703133) b!1577552))

(assert (= (and d!468624 (not res!703131)) b!1577553))

(declare-fun m!1858667 () Bool)

(assert (=> b!1577551 m!1858667))

(declare-fun m!1858669 () Bool)

(assert (=> b!1577551 m!1858669))

(declare-fun m!1858671 () Bool)

(assert (=> b!1577553 m!1858671))

(assert (=> b!1577553 m!1858529))

(declare-fun m!1858673 () Bool)

(assert (=> b!1577552 m!1858673))

(declare-fun m!1858675 () Bool)

(assert (=> b!1577552 m!1858675))

(assert (=> b!1577552 m!1858673))

(assert (=> b!1577552 m!1858675))

(declare-fun m!1858677 () Bool)

(assert (=> b!1577552 m!1858677))

(assert (=> b!1577280 d!468624))

(declare-fun d!468626 () Bool)

(assert (=> d!468626 (isPrefix!1303 lt!549916 (++!4485 lt!549916 lt!549920))))

(declare-fun lt!550177 () Unit!26821)

(declare-fun choose!9436 (List!17361 List!17361) Unit!26821)

(assert (=> d!468626 (= lt!550177 (choose!9436 lt!549916 lt!549920))))

(assert (=> d!468626 (= (lemmaConcatTwoListThenFirstIsPrefix!828 lt!549916 lt!549920) lt!550177)))

(declare-fun bs!390672 () Bool)

(assert (= bs!390672 d!468626))

(assert (=> bs!390672 m!1858215))

(assert (=> bs!390672 m!1858215))

(declare-fun m!1858679 () Bool)

(assert (=> bs!390672 m!1858679))

(declare-fun m!1858681 () Bool)

(assert (=> bs!390672 m!1858681))

(assert (=> b!1577280 d!468626))

(declare-fun d!468628 () Bool)

(assert (=> d!468628 (= (inv!22704 (tag!3309 (h!22695 rules!1846))) (= (mod (str.len (value!96397 (tag!3309 (h!22695 rules!1846)))) 2) 0))))

(assert (=> b!1577282 d!468628))

(declare-fun d!468630 () Bool)

(declare-fun res!703134 () Bool)

(declare-fun e!1013373 () Bool)

(assert (=> d!468630 (=> (not res!703134) (not e!1013373))))

(assert (=> d!468630 (= res!703134 (semiInverseModEq!1146 (toChars!4301 (transformation!3043 (h!22695 rules!1846))) (toValue!4442 (transformation!3043 (h!22695 rules!1846)))))))

(assert (=> d!468630 (= (inv!22707 (transformation!3043 (h!22695 rules!1846))) e!1013373)))

(declare-fun b!1577554 () Bool)

(assert (=> b!1577554 (= e!1013373 (equivClasses!1087 (toChars!4301 (transformation!3043 (h!22695 rules!1846))) (toValue!4442 (transformation!3043 (h!22695 rules!1846)))))))

(assert (= (and d!468630 res!703134) b!1577554))

(declare-fun m!1858683 () Bool)

(assert (=> d!468630 m!1858683))

(declare-fun m!1858685 () Bool)

(assert (=> b!1577554 m!1858685))

(assert (=> b!1577282 d!468630))

(declare-fun d!468632 () Bool)

(declare-fun e!1013376 () Bool)

(assert (=> d!468632 e!1013376))

(declare-fun res!703137 () Bool)

(assert (=> d!468632 (=> (not res!703137) (not e!1013376))))

(declare-fun isBalanced!1686 (Conc!5735) Bool)

(declare-fun prepend!517 (Conc!5735 Token!5652) Conc!5735)

(assert (=> d!468632 (= res!703137 (isBalanced!1686 (prepend!517 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 tokens!457)))))))

(declare-fun lt!550180 () BalanceConc!11414)

(assert (=> d!468632 (= lt!550180 (BalanceConc!11415 (prepend!517 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 tokens!457)))))))

(assert (=> d!468632 (= (prepend!515 (seqFromList!1842 (t!143446 (t!143446 tokens!457))) (h!22694 (t!143446 tokens!457))) lt!550180)))

(declare-fun b!1577557 () Bool)

(assert (=> b!1577557 (= e!1013376 (= (list!6668 lt!550180) (Cons!17293 (h!22694 (t!143446 tokens!457)) (list!6668 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))))))))

(assert (= (and d!468632 res!703137) b!1577557))

(declare-fun m!1858687 () Bool)

(assert (=> d!468632 m!1858687))

(assert (=> d!468632 m!1858687))

(declare-fun m!1858689 () Bool)

(assert (=> d!468632 m!1858689))

(declare-fun m!1858691 () Bool)

(assert (=> b!1577557 m!1858691))

(assert (=> b!1577557 m!1858237))

(declare-fun m!1858693 () Bool)

(assert (=> b!1577557 m!1858693))

(assert (=> b!1577271 d!468632))

(declare-fun d!468634 () Bool)

(assert (=> d!468634 (= (list!6668 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 tokens!457))) (h!22694 (t!143446 tokens!457)))) (list!6672 (c!255651 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 tokens!457))) (h!22694 (t!143446 tokens!457))))))))

(declare-fun bs!390673 () Bool)

(assert (= bs!390673 d!468634))

(declare-fun m!1858695 () Bool)

(assert (=> bs!390673 m!1858695))

(assert (=> b!1577271 d!468634))

(declare-fun d!468636 () Bool)

(assert (=> d!468636 (= (list!6668 lt!549918) (list!6672 (c!255651 lt!549918)))))

(declare-fun bs!390674 () Bool)

(assert (= bs!390674 d!468636))

(declare-fun m!1858697 () Bool)

(assert (=> bs!390674 m!1858697))

(assert (=> b!1577271 d!468636))

(declare-fun d!468638 () Bool)

(assert (=> d!468638 (= (seqFromList!1842 (t!143446 (t!143446 tokens!457))) (fromListB!787 (t!143446 (t!143446 tokens!457))))))

(declare-fun bs!390675 () Bool)

(assert (= bs!390675 d!468638))

(declare-fun m!1858699 () Bool)

(assert (=> bs!390675 m!1858699))

(assert (=> b!1577271 d!468638))

(declare-fun d!468640 () Bool)

(assert (=> d!468640 (= (list!6668 (_1!9781 lt!549921)) (list!6668 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 tokens!457))) (h!22694 (t!143446 tokens!457)))))))

(declare-fun lt!550183 () Unit!26821)

(declare-fun choose!9437 (Token!5652 List!17363 BalanceConc!11414) Unit!26821)

(assert (=> d!468640 (= lt!550183 (choose!9437 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457)) (_1!9781 lt!549921)))))

(declare-fun $colon$colon!265 (List!17363 Token!5652) List!17363)

(assert (=> d!468640 (= (list!6668 (_1!9781 lt!549921)) (list!6668 (seqFromList!1842 ($colon$colon!265 (t!143446 (t!143446 tokens!457)) (h!22694 (t!143446 tokens!457))))))))

(assert (=> d!468640 (= (seqFromListBHdTlConstructive!120 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457)) (_1!9781 lt!549921)) lt!550183)))

(declare-fun bs!390676 () Bool)

(assert (= bs!390676 d!468640))

(assert (=> bs!390676 m!1858237))

(assert (=> bs!390676 m!1858239))

(assert (=> bs!390676 m!1858237))

(declare-fun m!1858701 () Bool)

(assert (=> bs!390676 m!1858701))

(declare-fun m!1858703 () Bool)

(assert (=> bs!390676 m!1858703))

(assert (=> bs!390676 m!1858221))

(assert (=> bs!390676 m!1858239))

(assert (=> bs!390676 m!1858241))

(assert (=> bs!390676 m!1858701))

(assert (=> bs!390676 m!1858703))

(declare-fun m!1858705 () Bool)

(assert (=> bs!390676 m!1858705))

(declare-fun m!1858707 () Bool)

(assert (=> bs!390676 m!1858707))

(assert (=> b!1577271 d!468640))

(declare-fun d!468642 () Bool)

(declare-fun prefixMatchZipperSequence!399 (Regex!4371 BalanceConc!11412) Bool)

(declare-fun rulesRegex!447 (LexerInterface!2672 List!17364) Regex!4371)

(declare-fun ++!4487 (BalanceConc!11412 BalanceConc!11412) BalanceConc!11412)

(assert (=> d!468642 (= (separableTokensPredicate!614 thiss!17113 (h!22694 tokens!457) (h!22694 (t!143446 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!399 (rulesRegex!447 thiss!17113 rules!1846) (++!4487 (charsOf!1692 (h!22694 tokens!457)) (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0))))))))

(declare-fun bs!390677 () Bool)

(assert (= bs!390677 d!468642))

(assert (=> bs!390677 m!1858499))

(declare-fun m!1858709 () Bool)

(assert (=> bs!390677 m!1858709))

(declare-fun m!1858711 () Bool)

(assert (=> bs!390677 m!1858711))

(declare-fun m!1858713 () Bool)

(assert (=> bs!390677 m!1858713))

(assert (=> bs!390677 m!1858199))

(assert (=> bs!390677 m!1858199))

(assert (=> bs!390677 m!1858713))

(declare-fun m!1858715 () Bool)

(assert (=> bs!390677 m!1858715))

(assert (=> bs!390677 m!1858499))

(assert (=> bs!390677 m!1858711))

(assert (=> bs!390677 m!1858709))

(assert (=> bs!390677 m!1858715))

(declare-fun m!1858717 () Bool)

(assert (=> bs!390677 m!1858717))

(assert (=> b!1577281 d!468642))

(declare-fun d!468644 () Bool)

(assert (=> d!468644 true))

(declare-fun lt!550186 () Bool)

(declare-fun lambda!66410 () Int)

(declare-fun forall!3986 (List!17364 Int) Bool)

(assert (=> d!468644 (= lt!550186 (forall!3986 rules!1846 lambda!66410))))

(declare-fun e!1013382 () Bool)

(assert (=> d!468644 (= lt!550186 e!1013382)))

(declare-fun res!703143 () Bool)

(assert (=> d!468644 (=> res!703143 e!1013382)))

(assert (=> d!468644 (= res!703143 (not ((_ is Cons!17294) rules!1846)))))

(assert (=> d!468644 (= (rulesValidInductive!906 thiss!17113 rules!1846) lt!550186)))

(declare-fun b!1577562 () Bool)

(declare-fun e!1013381 () Bool)

(assert (=> b!1577562 (= e!1013382 e!1013381)))

(declare-fun res!703142 () Bool)

(assert (=> b!1577562 (=> (not res!703142) (not e!1013381))))

(declare-fun ruleValid!705 (LexerInterface!2672 Rule!5886) Bool)

(assert (=> b!1577562 (= res!703142 (ruleValid!705 thiss!17113 (h!22695 rules!1846)))))

(declare-fun b!1577563 () Bool)

(assert (=> b!1577563 (= e!1013381 (rulesValidInductive!906 thiss!17113 (t!143447 rules!1846)))))

(assert (= (and d!468644 (not res!703143)) b!1577562))

(assert (= (and b!1577562 res!703142) b!1577563))

(declare-fun m!1858719 () Bool)

(assert (=> d!468644 m!1858719))

(declare-fun m!1858721 () Bool)

(assert (=> b!1577562 m!1858721))

(declare-fun m!1858723 () Bool)

(assert (=> b!1577563 m!1858723))

(assert (=> b!1577277 d!468644))

(declare-fun d!468646 () Bool)

(declare-fun res!703146 () Bool)

(declare-fun e!1013385 () Bool)

(assert (=> d!468646 (=> (not res!703146) (not e!1013385))))

(declare-fun rulesValid!1074 (LexerInterface!2672 List!17364) Bool)

(assert (=> d!468646 (= res!703146 (rulesValid!1074 thiss!17113 rules!1846))))

(assert (=> d!468646 (= (rulesInvariant!2341 thiss!17113 rules!1846) e!1013385)))

(declare-fun b!1577568 () Bool)

(declare-datatypes ((List!17366 0))(
  ( (Nil!17296) (Cons!17296 (h!22697 String!19997) (t!143469 List!17366)) )
))
(declare-fun noDuplicateTag!1074 (LexerInterface!2672 List!17364 List!17366) Bool)

(assert (=> b!1577568 (= e!1013385 (noDuplicateTag!1074 thiss!17113 rules!1846 Nil!17296))))

(assert (= (and d!468646 res!703146) b!1577568))

(declare-fun m!1858725 () Bool)

(assert (=> d!468646 m!1858725))

(declare-fun m!1858727 () Bool)

(assert (=> b!1577568 m!1858727))

(assert (=> b!1577279 d!468646))

(declare-fun b!1577582 () Bool)

(declare-fun b_free!42519 () Bool)

(declare-fun b_next!43223 () Bool)

(assert (=> b!1577582 (= b_free!42519 (not b_next!43223))))

(declare-fun tp!464442 () Bool)

(declare-fun b_and!110461 () Bool)

(assert (=> b!1577582 (= tp!464442 b_and!110461)))

(declare-fun b_free!42521 () Bool)

(declare-fun b_next!43225 () Bool)

(assert (=> b!1577582 (= b_free!42521 (not b_next!43225))))

(declare-fun t!143466 () Bool)

(declare-fun tb!88763 () Bool)

(assert (=> (and b!1577582 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457))))) t!143466) tb!88763))

(declare-fun result!107404 () Bool)

(assert (= result!107404 result!107378))

(assert (=> b!1577294 t!143466))

(assert (=> d!468608 t!143466))

(declare-fun b_and!110463 () Bool)

(declare-fun tp!464443 () Bool)

(assert (=> b!1577582 (= tp!464443 (and (=> t!143466 result!107404) b_and!110463))))

(declare-fun b!1577581 () Bool)

(declare-fun tp!464441 () Bool)

(declare-fun e!1013400 () Bool)

(declare-fun e!1013399 () Bool)

(assert (=> b!1577581 (= e!1013399 (and tp!464441 (inv!22704 (tag!3309 (rule!4837 (h!22694 (t!143446 tokens!457))))) (inv!22707 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))) e!1013400))))

(assert (=> b!1577582 (= e!1013400 (and tp!464442 tp!464443))))

(declare-fun e!1013402 () Bool)

(assert (=> b!1577286 (= tp!464370 e!1013402)))

(declare-fun e!1013398 () Bool)

(declare-fun b!1577579 () Bool)

(declare-fun tp!464439 () Bool)

(assert (=> b!1577579 (= e!1013402 (and (inv!22708 (h!22694 (t!143446 tokens!457))) e!1013398 tp!464439))))

(declare-fun b!1577580 () Bool)

(declare-fun tp!464440 () Bool)

(assert (=> b!1577580 (= e!1013398 (and (inv!21 (value!96398 (h!22694 (t!143446 tokens!457)))) e!1013399 tp!464440))))

(assert (= b!1577581 b!1577582))

(assert (= b!1577580 b!1577581))

(assert (= b!1577579 b!1577580))

(assert (= (and b!1577286 ((_ is Cons!17293) (t!143446 tokens!457))) b!1577579))

(declare-fun m!1858729 () Bool)

(assert (=> b!1577581 m!1858729))

(declare-fun m!1858731 () Bool)

(assert (=> b!1577581 m!1858731))

(declare-fun m!1858733 () Bool)

(assert (=> b!1577579 m!1858733))

(declare-fun m!1858735 () Bool)

(assert (=> b!1577580 m!1858735))

(declare-fun b!1577593 () Bool)

(declare-fun b_free!42523 () Bool)

(declare-fun b_next!43227 () Bool)

(assert (=> b!1577593 (= b_free!42523 (not b_next!43227))))

(declare-fun tp!464453 () Bool)

(declare-fun b_and!110465 () Bool)

(assert (=> b!1577593 (= tp!464453 b_and!110465)))

(declare-fun b_free!42525 () Bool)

(declare-fun b_next!43229 () Bool)

(assert (=> b!1577593 (= b_free!42525 (not b_next!43229))))

(declare-fun tb!88765 () Bool)

(declare-fun t!143468 () Bool)

(assert (=> (and b!1577593 (= (toChars!4301 (transformation!3043 (h!22695 (t!143447 rules!1846)))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457))))) t!143468) tb!88765))

(declare-fun result!107408 () Bool)

(assert (= result!107408 result!107378))

(assert (=> b!1577294 t!143468))

(assert (=> d!468608 t!143468))

(declare-fun tp!464452 () Bool)

(declare-fun b_and!110467 () Bool)

(assert (=> b!1577593 (= tp!464452 (and (=> t!143468 result!107408) b_and!110467))))

(declare-fun e!1013414 () Bool)

(assert (=> b!1577593 (= e!1013414 (and tp!464453 tp!464452))))

(declare-fun e!1013413 () Bool)

(declare-fun b!1577592 () Bool)

(declare-fun tp!464455 () Bool)

(assert (=> b!1577592 (= e!1013413 (and tp!464455 (inv!22704 (tag!3309 (h!22695 (t!143447 rules!1846)))) (inv!22707 (transformation!3043 (h!22695 (t!143447 rules!1846)))) e!1013414))))

(declare-fun b!1577591 () Bool)

(declare-fun e!1013412 () Bool)

(declare-fun tp!464454 () Bool)

(assert (=> b!1577591 (= e!1013412 (and e!1013413 tp!464454))))

(assert (=> b!1577275 (= tp!464367 e!1013412)))

(assert (= b!1577592 b!1577593))

(assert (= b!1577591 b!1577592))

(assert (= (and b!1577275 ((_ is Cons!17294) (t!143447 rules!1846))) b!1577591))

(declare-fun m!1858737 () Bool)

(assert (=> b!1577592 m!1858737))

(declare-fun m!1858739 () Bool)

(assert (=> b!1577592 m!1858739))

(declare-fun e!1013418 () Bool)

(assert (=> b!1577285 (= tp!464364 e!1013418)))

(declare-fun b!1577605 () Bool)

(declare-fun tp!464469 () Bool)

(declare-fun tp!464467 () Bool)

(assert (=> b!1577605 (= e!1013418 (and tp!464469 tp!464467))))

(declare-fun b!1577604 () Bool)

(declare-fun tp_is_empty!7173 () Bool)

(assert (=> b!1577604 (= e!1013418 tp_is_empty!7173)))

(declare-fun b!1577607 () Bool)

(declare-fun tp!464470 () Bool)

(declare-fun tp!464466 () Bool)

(assert (=> b!1577607 (= e!1013418 (and tp!464470 tp!464466))))

(declare-fun b!1577606 () Bool)

(declare-fun tp!464468 () Bool)

(assert (=> b!1577606 (= e!1013418 tp!464468)))

(assert (= (and b!1577285 ((_ is ElementMatch!4371) (regex!3043 (rule!4837 (h!22694 tokens!457))))) b!1577604))

(assert (= (and b!1577285 ((_ is Concat!7505) (regex!3043 (rule!4837 (h!22694 tokens!457))))) b!1577605))

(assert (= (and b!1577285 ((_ is Star!4371) (regex!3043 (rule!4837 (h!22694 tokens!457))))) b!1577606))

(assert (= (and b!1577285 ((_ is Union!4371) (regex!3043 (rule!4837 (h!22694 tokens!457))))) b!1577607))

(declare-fun e!1013419 () Bool)

(assert (=> b!1577282 (= tp!464372 e!1013419)))

(declare-fun b!1577609 () Bool)

(declare-fun tp!464474 () Bool)

(declare-fun tp!464472 () Bool)

(assert (=> b!1577609 (= e!1013419 (and tp!464474 tp!464472))))

(declare-fun b!1577608 () Bool)

(assert (=> b!1577608 (= e!1013419 tp_is_empty!7173)))

(declare-fun b!1577611 () Bool)

(declare-fun tp!464475 () Bool)

(declare-fun tp!464471 () Bool)

(assert (=> b!1577611 (= e!1013419 (and tp!464475 tp!464471))))

(declare-fun b!1577610 () Bool)

(declare-fun tp!464473 () Bool)

(assert (=> b!1577610 (= e!1013419 tp!464473)))

(assert (= (and b!1577282 ((_ is ElementMatch!4371) (regex!3043 (h!22695 rules!1846)))) b!1577608))

(assert (= (and b!1577282 ((_ is Concat!7505) (regex!3043 (h!22695 rules!1846)))) b!1577609))

(assert (= (and b!1577282 ((_ is Star!4371) (regex!3043 (h!22695 rules!1846)))) b!1577610))

(assert (= (and b!1577282 ((_ is Union!4371) (regex!3043 (h!22695 rules!1846)))) b!1577611))

(declare-fun b!1577616 () Bool)

(declare-fun e!1013422 () Bool)

(declare-fun tp!464478 () Bool)

(assert (=> b!1577616 (= e!1013422 (and tp_is_empty!7173 tp!464478))))

(assert (=> b!1577276 (= tp!464365 e!1013422)))

(assert (= (and b!1577276 ((_ is Cons!17291) (originalCharacters!3857 (h!22694 tokens!457)))) b!1577616))

(declare-fun b_lambda!49653 () Bool)

(assert (= b_lambda!49641 (or (and b!1577283 b_free!42505 (= (toChars!4301 (transformation!3043 (h!22695 rules!1846))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))))) (and b!1577278 b_free!42509) (and b!1577582 b_free!42521 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))))) (and b!1577593 b_free!42525 (= (toChars!4301 (transformation!3043 (h!22695 (t!143447 rules!1846)))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))))) b_lambda!49653)))

(declare-fun b_lambda!49655 () Bool)

(assert (= b_lambda!49647 (or (and b!1577283 b_free!42505 (= (toChars!4301 (transformation!3043 (h!22695 rules!1846))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))))) (and b!1577278 b_free!42509) (and b!1577582 b_free!42521 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))))) (and b!1577593 b_free!42525 (= (toChars!4301 (transformation!3043 (h!22695 (t!143447 rules!1846)))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))))) b_lambda!49655)))

(check-sat (not b_lambda!49653) (not b!1577541) (not b!1577393) (not b!1577557) (not b!1577440) (not d!468600) (not d!468620) (not b!1577429) (not b_next!43207) (not d!468604) (not d!468642) (not b!1577314) (not b!1577317) b_and!110467 (not d!468636) (not d!468598) (not b!1577458) (not b!1577580) (not b_lambda!49655) (not b!1577540) (not d!468542) (not b!1577461) (not b!1577605) (not b!1577295) (not b!1577611) (not b!1577609) (not d!468646) (not b!1577568) (not b!1577606) (not b!1577607) b_and!110433 (not b!1577554) (not d!468610) (not d!468608) (not b!1577552) (not d!468630) (not b!1577460) (not b!1577581) (not b!1577402) (not d!468532) (not d!468626) b_and!110451 (not b_next!43213) (not b!1577563) b_and!110461 (not b_next!43209) (not b_next!43223) (not b_next!43211) tp_is_empty!7173 (not b!1577610) (not b!1577294) (not d!468614) (not b_next!43225) (not b!1577562) (not b!1577392) (not d!468536) (not b!1577459) (not b_next!43229) (not tb!88751) (not b!1577551) (not d!468602) (not d!468638) (not b!1577300) (not d!468606) (not b!1577591) (not d!468632) (not b!1577553) (not d!468616) (not b!1577592) (not b!1577616) (not b!1577579) (not d!468634) (not b!1577430) (not b!1577316) (not d!468618) (not b_next!43227) (not d!468612) b_and!110449 (not b!1577441) b_and!110463 (not d!468640) b_and!110465 (not d!468644) b_and!110429 (not b!1577303))
(check-sat (not b_next!43207) b_and!110467 b_and!110433 (not b_next!43225) (not b_next!43229) (not b_next!43227) b_and!110429 (not b_next!43213) b_and!110451 b_and!110461 (not b_next!43209) (not b_next!43223) (not b_next!43211) b_and!110449 b_and!110465 b_and!110463)
(get-model)

(declare-fun b!1577618 () Bool)

(declare-fun res!703154 () Bool)

(declare-fun e!1013425 () Bool)

(assert (=> b!1577618 (=> (not res!703154) (not e!1013425))))

(assert (=> b!1577618 (= res!703154 (= (head!3172 (tail!2244 lt!549916)) (head!3172 (tail!2244 lt!549914))))))

(declare-fun d!468648 () Bool)

(declare-fun e!1013423 () Bool)

(assert (=> d!468648 e!1013423))

(declare-fun res!703152 () Bool)

(assert (=> d!468648 (=> res!703152 e!1013423)))

(declare-fun lt!550187 () Bool)

(assert (=> d!468648 (= res!703152 (not lt!550187))))

(declare-fun e!1013424 () Bool)

(assert (=> d!468648 (= lt!550187 e!1013424)))

(declare-fun res!703151 () Bool)

(assert (=> d!468648 (=> res!703151 e!1013424)))

(assert (=> d!468648 (= res!703151 ((_ is Nil!17291) (tail!2244 lt!549916)))))

(assert (=> d!468648 (= (isPrefix!1303 (tail!2244 lt!549916) (tail!2244 lt!549914)) lt!550187)))

(declare-fun b!1577620 () Bool)

(assert (=> b!1577620 (= e!1013423 (>= (size!13936 (tail!2244 lt!549914)) (size!13936 (tail!2244 lt!549916))))))

(declare-fun b!1577619 () Bool)

(assert (=> b!1577619 (= e!1013425 (isPrefix!1303 (tail!2244 (tail!2244 lt!549916)) (tail!2244 (tail!2244 lt!549914))))))

(declare-fun b!1577617 () Bool)

(assert (=> b!1577617 (= e!1013424 e!1013425)))

(declare-fun res!703153 () Bool)

(assert (=> b!1577617 (=> (not res!703153) (not e!1013425))))

(assert (=> b!1577617 (= res!703153 (not ((_ is Nil!17291) (tail!2244 lt!549914))))))

(assert (= (and d!468648 (not res!703151)) b!1577617))

(assert (= (and b!1577617 res!703153) b!1577618))

(assert (= (and b!1577618 res!703154) b!1577619))

(assert (= (and d!468648 (not res!703152)) b!1577620))

(assert (=> b!1577618 m!1858673))

(declare-fun m!1858741 () Bool)

(assert (=> b!1577618 m!1858741))

(assert (=> b!1577618 m!1858675))

(declare-fun m!1858743 () Bool)

(assert (=> b!1577618 m!1858743))

(assert (=> b!1577620 m!1858675))

(declare-fun m!1858745 () Bool)

(assert (=> b!1577620 m!1858745))

(assert (=> b!1577620 m!1858673))

(declare-fun m!1858747 () Bool)

(assert (=> b!1577620 m!1858747))

(assert (=> b!1577619 m!1858673))

(declare-fun m!1858749 () Bool)

(assert (=> b!1577619 m!1858749))

(assert (=> b!1577619 m!1858675))

(declare-fun m!1858751 () Bool)

(assert (=> b!1577619 m!1858751))

(assert (=> b!1577619 m!1858749))

(assert (=> b!1577619 m!1858751))

(declare-fun m!1858753 () Bool)

(assert (=> b!1577619 m!1858753))

(assert (=> b!1577552 d!468648))

(declare-fun d!468650 () Bool)

(assert (=> d!468650 (= (tail!2244 lt!549916) (t!143444 lt!549916))))

(assert (=> b!1577552 d!468650))

(declare-fun d!468652 () Bool)

(assert (=> d!468652 (= (tail!2244 lt!549914) (t!143444 lt!549914))))

(assert (=> b!1577552 d!468652))

(declare-fun d!468654 () Bool)

(assert (=> d!468654 (= (list!6668 lt!550180) (list!6672 (c!255651 lt!550180)))))

(declare-fun bs!390678 () Bool)

(assert (= bs!390678 d!468654))

(declare-fun m!1858755 () Bool)

(assert (=> bs!390678 m!1858755))

(assert (=> b!1577557 d!468654))

(declare-fun d!468656 () Bool)

(assert (=> d!468656 (= (list!6668 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))) (list!6672 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457))))))))

(declare-fun bs!390679 () Bool)

(assert (= bs!390679 d!468656))

(declare-fun m!1858757 () Bool)

(assert (=> bs!390679 m!1858757))

(assert (=> b!1577557 d!468656))

(declare-fun b!1577621 () Bool)

(declare-fun e!1013428 () Bool)

(assert (=> b!1577621 (= e!1013428 (inv!16 (value!96398 (h!22694 (t!143446 tokens!457)))))))

(declare-fun b!1577622 () Bool)

(declare-fun res!703155 () Bool)

(declare-fun e!1013426 () Bool)

(assert (=> b!1577622 (=> res!703155 e!1013426)))

(assert (=> b!1577622 (= res!703155 (not ((_ is IntegerValue!9401) (value!96398 (h!22694 (t!143446 tokens!457))))))))

(declare-fun e!1013427 () Bool)

(assert (=> b!1577622 (= e!1013427 e!1013426)))

(declare-fun d!468658 () Bool)

(declare-fun c!255685 () Bool)

(assert (=> d!468658 (= c!255685 ((_ is IntegerValue!9399) (value!96398 (h!22694 (t!143446 tokens!457)))))))

(assert (=> d!468658 (= (inv!21 (value!96398 (h!22694 (t!143446 tokens!457)))) e!1013428)))

(declare-fun b!1577623 () Bool)

(assert (=> b!1577623 (= e!1013426 (inv!15 (value!96398 (h!22694 (t!143446 tokens!457)))))))

(declare-fun b!1577624 () Bool)

(assert (=> b!1577624 (= e!1013427 (inv!17 (value!96398 (h!22694 (t!143446 tokens!457)))))))

(declare-fun b!1577625 () Bool)

(assert (=> b!1577625 (= e!1013428 e!1013427)))

(declare-fun c!255684 () Bool)

(assert (=> b!1577625 (= c!255684 ((_ is IntegerValue!9400) (value!96398 (h!22694 (t!143446 tokens!457)))))))

(assert (= (and d!468658 c!255685) b!1577621))

(assert (= (and d!468658 (not c!255685)) b!1577625))

(assert (= (and b!1577625 c!255684) b!1577624))

(assert (= (and b!1577625 (not c!255684)) b!1577622))

(assert (= (and b!1577622 (not res!703155)) b!1577623))

(declare-fun m!1858759 () Bool)

(assert (=> b!1577621 m!1858759))

(declare-fun m!1858761 () Bool)

(assert (=> b!1577623 m!1858761))

(declare-fun m!1858763 () Bool)

(assert (=> b!1577624 m!1858763))

(assert (=> b!1577580 d!468658))

(declare-fun d!468660 () Bool)

(declare-fun lt!550190 () Int)

(declare-fun size!13939 (List!17363) Int)

(assert (=> d!468660 (= lt!550190 (size!13939 (list!6668 (_1!9781 lt!550086))))))

(declare-fun size!13940 (Conc!5735) Int)

(assert (=> d!468660 (= lt!550190 (size!13940 (c!255651 (_1!9781 lt!550086))))))

(assert (=> d!468660 (= (size!13938 (_1!9781 lt!550086)) lt!550190)))

(declare-fun bs!390680 () Bool)

(assert (= bs!390680 d!468660))

(assert (=> bs!390680 m!1858551))

(assert (=> bs!390680 m!1858551))

(declare-fun m!1858765 () Bool)

(assert (=> bs!390680 m!1858765))

(declare-fun m!1858767 () Bool)

(assert (=> bs!390680 m!1858767))

(assert (=> d!468604 d!468660))

(declare-fun b!1577645 () Bool)

(declare-fun e!1013443 () Bool)

(declare-fun lt!550288 () tuple2!16758)

(declare-fun lexRec!350 (LexerInterface!2672 List!17364 BalanceConc!11412) tuple2!16758)

(assert (=> b!1577645 (= e!1013443 (= (list!6667 (_2!9781 lt!550288)) (list!6667 (_2!9781 (lexRec!350 thiss!17113 rules!1846 lt!549917)))))))

(declare-fun d!468662 () Bool)

(assert (=> d!468662 e!1013443))

(declare-fun res!703163 () Bool)

(assert (=> d!468662 (=> (not res!703163) (not e!1013443))))

(assert (=> d!468662 (= res!703163 (= (list!6668 (_1!9781 lt!550288)) (list!6668 (_1!9781 (lexRec!350 thiss!17113 rules!1846 lt!549917)))))))

(declare-fun e!1013440 () tuple2!16758)

(assert (=> d!468662 (= lt!550288 e!1013440)))

(declare-fun c!255694 () Bool)

(declare-datatypes ((tuple2!16768 0))(
  ( (tuple2!16769 (_1!9786 Token!5652) (_2!9786 BalanceConc!11412)) )
))
(declare-datatypes ((Option!3093 0))(
  ( (None!3092) (Some!3092 (v!23922 tuple2!16768)) )
))
(declare-fun lt!550295 () Option!3093)

(assert (=> d!468662 (= c!255694 ((_ is Some!3092) lt!550295))))

(declare-fun maxPrefixZipperSequenceV2!245 (LexerInterface!2672 List!17364 BalanceConc!11412 BalanceConc!11412) Option!3093)

(assert (=> d!468662 (= lt!550295 (maxPrefixZipperSequenceV2!245 thiss!17113 rules!1846 lt!549917 lt!549917))))

(declare-fun lt!550294 () Unit!26821)

(declare-fun lt!550277 () Unit!26821)

(assert (=> d!468662 (= lt!550294 lt!550277)))

(declare-fun lt!550268 () List!17361)

(declare-fun lt!550287 () List!17361)

(declare-fun isSuffix!396 (List!17361 List!17361) Bool)

(assert (=> d!468662 (isSuffix!396 lt!550268 (++!4485 lt!550287 lt!550268))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!297 (List!17361 List!17361) Unit!26821)

(assert (=> d!468662 (= lt!550277 (lemmaConcatTwoListThenFSndIsSuffix!297 lt!550287 lt!550268))))

(assert (=> d!468662 (= lt!550268 (list!6667 lt!549917))))

(assert (=> d!468662 (= lt!550287 (list!6667 (BalanceConc!11413 Empty!5734)))))

(assert (=> d!468662 (= (lexTailRecV2!498 thiss!17113 rules!1846 lt!549917 (BalanceConc!11413 Empty!5734) lt!549917 (BalanceConc!11415 Empty!5735)) lt!550288)))

(declare-fun b!1577646 () Bool)

(declare-fun e!1013442 () tuple2!16758)

(declare-fun lt!550290 () BalanceConc!11412)

(assert (=> b!1577646 (= e!1013442 (tuple2!16759 (BalanceConc!11415 Empty!5735) lt!550290))))

(declare-fun b!1577647 () Bool)

(declare-fun lt!550297 () BalanceConc!11412)

(declare-fun append!529 (BalanceConc!11414 Token!5652) BalanceConc!11414)

(assert (=> b!1577647 (= e!1013440 (lexTailRecV2!498 thiss!17113 rules!1846 lt!549917 lt!550297 (_2!9786 (v!23922 lt!550295)) (append!529 (BalanceConc!11415 Empty!5735) (_1!9786 (v!23922 lt!550295)))))))

(declare-fun lt!550291 () tuple2!16758)

(assert (=> b!1577647 (= lt!550291 (lexRec!350 thiss!17113 rules!1846 (_2!9786 (v!23922 lt!550295))))))

(declare-fun lt!550265 () List!17361)

(assert (=> b!1577647 (= lt!550265 (list!6667 (BalanceConc!11413 Empty!5734)))))

(declare-fun lt!550275 () List!17361)

(assert (=> b!1577647 (= lt!550275 (list!6667 (charsOf!1692 (_1!9786 (v!23922 lt!550295)))))))

(declare-fun lt!550285 () List!17361)

(assert (=> b!1577647 (= lt!550285 (list!6667 (_2!9786 (v!23922 lt!550295))))))

(declare-fun lt!550286 () Unit!26821)

(declare-fun lemmaConcatAssociativity!976 (List!17361 List!17361 List!17361) Unit!26821)

(assert (=> b!1577647 (= lt!550286 (lemmaConcatAssociativity!976 lt!550265 lt!550275 lt!550285))))

(assert (=> b!1577647 (= (++!4485 (++!4485 lt!550265 lt!550275) lt!550285) (++!4485 lt!550265 (++!4485 lt!550275 lt!550285)))))

(declare-fun lt!550274 () Unit!26821)

(assert (=> b!1577647 (= lt!550274 lt!550286)))

(declare-fun lt!550266 () Option!3093)

(declare-fun maxPrefixZipperSequence!606 (LexerInterface!2672 List!17364 BalanceConc!11412) Option!3093)

(assert (=> b!1577647 (= lt!550266 (maxPrefixZipperSequence!606 thiss!17113 rules!1846 lt!549917))))

(declare-fun c!255693 () Bool)

(assert (=> b!1577647 (= c!255693 ((_ is Some!3092) lt!550266))))

(declare-fun e!1013441 () tuple2!16758)

(assert (=> b!1577647 (= (lexRec!350 thiss!17113 rules!1846 lt!549917) e!1013441)))

(declare-fun lt!550272 () Unit!26821)

(declare-fun Unit!26857 () Unit!26821)

(assert (=> b!1577647 (= lt!550272 Unit!26857)))

(declare-fun lt!550264 () List!17363)

(assert (=> b!1577647 (= lt!550264 (list!6668 (BalanceConc!11415 Empty!5735)))))

(declare-fun lt!550267 () List!17363)

(assert (=> b!1577647 (= lt!550267 (Cons!17293 (_1!9786 (v!23922 lt!550295)) Nil!17293))))

(declare-fun lt!550289 () List!17363)

(assert (=> b!1577647 (= lt!550289 (list!6668 (_1!9781 lt!550291)))))

(declare-fun lt!550282 () Unit!26821)

(declare-fun lemmaConcatAssociativity!977 (List!17363 List!17363 List!17363) Unit!26821)

(assert (=> b!1577647 (= lt!550282 (lemmaConcatAssociativity!977 lt!550264 lt!550267 lt!550289))))

(declare-fun ++!4488 (List!17363 List!17363) List!17363)

(assert (=> b!1577647 (= (++!4488 (++!4488 lt!550264 lt!550267) lt!550289) (++!4488 lt!550264 (++!4488 lt!550267 lt!550289)))))

(declare-fun lt!550273 () Unit!26821)

(assert (=> b!1577647 (= lt!550273 lt!550282)))

(declare-fun lt!550271 () List!17361)

(assert (=> b!1577647 (= lt!550271 (++!4485 (list!6667 (BalanceConc!11413 Empty!5734)) (list!6667 (charsOf!1692 (_1!9786 (v!23922 lt!550295))))))))

(declare-fun lt!550279 () List!17361)

(assert (=> b!1577647 (= lt!550279 (list!6667 (_2!9786 (v!23922 lt!550295))))))

(declare-fun lt!550269 () List!17363)

(assert (=> b!1577647 (= lt!550269 (list!6668 (append!529 (BalanceConc!11415 Empty!5735) (_1!9786 (v!23922 lt!550295)))))))

(declare-fun lt!550276 () Unit!26821)

(declare-fun lemmaLexThenLexPrefix!238 (LexerInterface!2672 List!17364 List!17361 List!17361 List!17363 List!17363 List!17361) Unit!26821)

(assert (=> b!1577647 (= lt!550276 (lemmaLexThenLexPrefix!238 thiss!17113 rules!1846 lt!550271 lt!550279 lt!550269 (list!6668 (_1!9781 lt!550291)) (list!6667 (_2!9781 lt!550291))))))

(assert (=> b!1577647 (= (lexList!775 thiss!17113 rules!1846 lt!550271) (tuple2!16765 lt!550269 Nil!17291))))

(declare-fun lt!550292 () Unit!26821)

(assert (=> b!1577647 (= lt!550292 lt!550276)))

(assert (=> b!1577647 (= lt!550290 (++!4487 (BalanceConc!11413 Empty!5734) (charsOf!1692 (_1!9786 (v!23922 lt!550295)))))))

(declare-fun lt!550280 () Option!3093)

(assert (=> b!1577647 (= lt!550280 (maxPrefixZipperSequence!606 thiss!17113 rules!1846 lt!550290))))

(declare-fun c!255695 () Bool)

(assert (=> b!1577647 (= c!255695 ((_ is Some!3092) lt!550280))))

(assert (=> b!1577647 (= (lexRec!350 thiss!17113 rules!1846 (++!4487 (BalanceConc!11413 Empty!5734) (charsOf!1692 (_1!9786 (v!23922 lt!550295))))) e!1013442)))

(declare-fun lt!550296 () Unit!26821)

(declare-fun Unit!26858 () Unit!26821)

(assert (=> b!1577647 (= lt!550296 Unit!26858)))

(assert (=> b!1577647 (= lt!550297 (++!4487 (BalanceConc!11413 Empty!5734) (charsOf!1692 (_1!9786 (v!23922 lt!550295)))))))

(declare-fun lt!550293 () List!17361)

(assert (=> b!1577647 (= lt!550293 (list!6667 lt!550297))))

(declare-fun lt!550270 () List!17361)

(assert (=> b!1577647 (= lt!550270 (list!6667 (_2!9786 (v!23922 lt!550295))))))

(declare-fun lt!550284 () Unit!26821)

(assert (=> b!1577647 (= lt!550284 (lemmaConcatTwoListThenFSndIsSuffix!297 lt!550293 lt!550270))))

(assert (=> b!1577647 (isSuffix!396 lt!550270 (++!4485 lt!550293 lt!550270))))

(declare-fun lt!550283 () Unit!26821)

(assert (=> b!1577647 (= lt!550283 lt!550284)))

(declare-fun b!1577648 () Bool)

(assert (=> b!1577648 (= e!1013441 (tuple2!16759 (BalanceConc!11415 Empty!5735) lt!549917))))

(declare-fun lt!550281 () tuple2!16758)

(declare-fun b!1577649 () Bool)

(assert (=> b!1577649 (= lt!550281 (lexRec!350 thiss!17113 rules!1846 (_2!9786 (v!23922 lt!550280))))))

(assert (=> b!1577649 (= e!1013442 (tuple2!16759 (prepend!515 (_1!9781 lt!550281) (_1!9786 (v!23922 lt!550280))) (_2!9781 lt!550281)))))

(declare-fun b!1577650 () Bool)

(assert (=> b!1577650 (= e!1013440 (tuple2!16759 (BalanceConc!11415 Empty!5735) lt!549917))))

(declare-fun lt!550278 () tuple2!16758)

(declare-fun b!1577651 () Bool)

(assert (=> b!1577651 (= lt!550278 (lexRec!350 thiss!17113 rules!1846 (_2!9786 (v!23922 lt!550266))))))

(assert (=> b!1577651 (= e!1013441 (tuple2!16759 (prepend!515 (_1!9781 lt!550278) (_1!9786 (v!23922 lt!550266))) (_2!9781 lt!550278)))))

(assert (= (and d!468662 c!255694) b!1577647))

(assert (= (and d!468662 (not c!255694)) b!1577650))

(assert (= (and b!1577647 c!255693) b!1577651))

(assert (= (and b!1577647 (not c!255693)) b!1577648))

(assert (= (and b!1577647 c!255695) b!1577649))

(assert (= (and b!1577647 (not c!255695)) b!1577646))

(assert (= (and d!468662 res!703163) b!1577645))

(declare-fun m!1858801 () Bool)

(assert (=> d!468662 m!1858801))

(declare-fun m!1858803 () Bool)

(assert (=> d!468662 m!1858803))

(declare-fun m!1858805 () Bool)

(assert (=> d!468662 m!1858805))

(declare-fun m!1858807 () Bool)

(assert (=> d!468662 m!1858807))

(declare-fun m!1858809 () Bool)

(assert (=> d!468662 m!1858809))

(declare-fun m!1858811 () Bool)

(assert (=> d!468662 m!1858811))

(declare-fun m!1858813 () Bool)

(assert (=> d!468662 m!1858813))

(assert (=> d!468662 m!1858807))

(declare-fun m!1858815 () Bool)

(assert (=> d!468662 m!1858815))

(assert (=> d!468662 m!1858209))

(declare-fun m!1858817 () Bool)

(assert (=> b!1577645 m!1858817))

(assert (=> b!1577645 m!1858811))

(declare-fun m!1858819 () Bool)

(assert (=> b!1577645 m!1858819))

(declare-fun m!1858821 () Bool)

(assert (=> b!1577651 m!1858821))

(declare-fun m!1858823 () Bool)

(assert (=> b!1577651 m!1858823))

(declare-fun m!1858825 () Bool)

(assert (=> b!1577647 m!1858825))

(declare-fun m!1858827 () Bool)

(assert (=> b!1577647 m!1858827))

(declare-fun m!1858829 () Bool)

(assert (=> b!1577647 m!1858829))

(declare-fun m!1858831 () Bool)

(assert (=> b!1577647 m!1858831))

(declare-fun m!1858833 () Bool)

(assert (=> b!1577647 m!1858833))

(declare-fun m!1858835 () Bool)

(assert (=> b!1577647 m!1858835))

(declare-fun m!1858837 () Bool)

(assert (=> b!1577647 m!1858837))

(declare-fun m!1858839 () Bool)

(assert (=> b!1577647 m!1858839))

(declare-fun m!1858841 () Bool)

(assert (=> b!1577647 m!1858841))

(declare-fun m!1858843 () Bool)

(assert (=> b!1577647 m!1858843))

(declare-fun m!1858845 () Bool)

(assert (=> b!1577647 m!1858845))

(declare-fun m!1858847 () Bool)

(assert (=> b!1577647 m!1858847))

(assert (=> b!1577647 m!1858839))

(assert (=> b!1577647 m!1858811))

(declare-fun m!1858849 () Bool)

(assert (=> b!1577647 m!1858849))

(declare-fun m!1858851 () Bool)

(assert (=> b!1577647 m!1858851))

(declare-fun m!1858853 () Bool)

(assert (=> b!1577647 m!1858853))

(declare-fun m!1858855 () Bool)

(assert (=> b!1577647 m!1858855))

(assert (=> b!1577647 m!1858805))

(declare-fun m!1858857 () Bool)

(assert (=> b!1577647 m!1858857))

(declare-fun m!1858859 () Bool)

(assert (=> b!1577647 m!1858859))

(declare-fun m!1858861 () Bool)

(assert (=> b!1577647 m!1858861))

(assert (=> b!1577647 m!1858845))

(declare-fun m!1858863 () Bool)

(assert (=> b!1577647 m!1858863))

(declare-fun m!1858865 () Bool)

(assert (=> b!1577647 m!1858865))

(declare-fun m!1858867 () Bool)

(assert (=> b!1577647 m!1858867))

(declare-fun m!1858869 () Bool)

(assert (=> b!1577647 m!1858869))

(assert (=> b!1577647 m!1858805))

(declare-fun m!1858871 () Bool)

(assert (=> b!1577647 m!1858871))

(assert (=> b!1577647 m!1858857))

(declare-fun m!1858873 () Bool)

(assert (=> b!1577647 m!1858873))

(declare-fun m!1858875 () Bool)

(assert (=> b!1577647 m!1858875))

(assert (=> b!1577647 m!1858855))

(assert (=> b!1577647 m!1858861))

(declare-fun m!1858877 () Bool)

(assert (=> b!1577647 m!1858877))

(assert (=> b!1577647 m!1858827))

(assert (=> b!1577647 m!1858873))

(assert (=> b!1577647 m!1858851))

(declare-fun m!1858879 () Bool)

(assert (=> b!1577647 m!1858879))

(assert (=> b!1577647 m!1858867))

(declare-fun m!1858881 () Bool)

(assert (=> b!1577647 m!1858881))

(declare-fun m!1858883 () Bool)

(assert (=> b!1577647 m!1858883))

(declare-fun m!1858885 () Bool)

(assert (=> b!1577647 m!1858885))

(assert (=> b!1577647 m!1858851))

(assert (=> b!1577647 m!1858871))

(assert (=> b!1577647 m!1858863))

(assert (=> b!1577647 m!1858871))

(declare-fun m!1858887 () Bool)

(assert (=> b!1577649 m!1858887))

(declare-fun m!1858889 () Bool)

(assert (=> b!1577649 m!1858889))

(assert (=> d!468604 d!468662))

(declare-fun b!1577663 () Bool)

(declare-fun e!1013449 () List!17363)

(assert (=> b!1577663 (= e!1013449 (++!4488 (list!6672 (left!13982 (c!255651 (_1!9781 lt!549921)))) (list!6672 (right!14312 (c!255651 (_1!9781 lt!549921))))))))

(declare-fun b!1577661 () Bool)

(declare-fun e!1013448 () List!17363)

(assert (=> b!1577661 (= e!1013448 e!1013449)))

(declare-fun c!255701 () Bool)

(assert (=> b!1577661 (= c!255701 ((_ is Leaf!8477) (c!255651 (_1!9781 lt!549921))))))

(declare-fun d!468672 () Bool)

(declare-fun c!255700 () Bool)

(assert (=> d!468672 (= c!255700 ((_ is Empty!5735) (c!255651 (_1!9781 lt!549921))))))

(assert (=> d!468672 (= (list!6672 (c!255651 (_1!9781 lt!549921))) e!1013448)))

(declare-fun b!1577660 () Bool)

(assert (=> b!1577660 (= e!1013448 Nil!17293)))

(declare-fun b!1577662 () Bool)

(declare-fun list!6673 (IArray!11475) List!17363)

(assert (=> b!1577662 (= e!1013449 (list!6673 (xs!8539 (c!255651 (_1!9781 lt!549921)))))))

(assert (= (and d!468672 c!255700) b!1577660))

(assert (= (and d!468672 (not c!255700)) b!1577661))

(assert (= (and b!1577661 c!255701) b!1577662))

(assert (= (and b!1577661 (not c!255701)) b!1577663))

(declare-fun m!1858891 () Bool)

(assert (=> b!1577663 m!1858891))

(declare-fun m!1858893 () Bool)

(assert (=> b!1577663 m!1858893))

(assert (=> b!1577663 m!1858891))

(assert (=> b!1577663 m!1858893))

(declare-fun m!1858895 () Bool)

(assert (=> b!1577663 m!1858895))

(declare-fun m!1858897 () Bool)

(assert (=> b!1577662 m!1858897))

(assert (=> d!468618 d!468672))

(declare-fun d!468674 () Bool)

(assert (=> d!468674 (= (inv!22704 (tag!3309 (h!22695 (t!143447 rules!1846)))) (= (mod (str.len (value!96397 (tag!3309 (h!22695 (t!143447 rules!1846))))) 2) 0))))

(assert (=> b!1577592 d!468674))

(declare-fun d!468676 () Bool)

(declare-fun res!703164 () Bool)

(declare-fun e!1013450 () Bool)

(assert (=> d!468676 (=> (not res!703164) (not e!1013450))))

(assert (=> d!468676 (= res!703164 (semiInverseModEq!1146 (toChars!4301 (transformation!3043 (h!22695 (t!143447 rules!1846)))) (toValue!4442 (transformation!3043 (h!22695 (t!143447 rules!1846))))))))

(assert (=> d!468676 (= (inv!22707 (transformation!3043 (h!22695 (t!143447 rules!1846)))) e!1013450)))

(declare-fun b!1577664 () Bool)

(assert (=> b!1577664 (= e!1013450 (equivClasses!1087 (toChars!4301 (transformation!3043 (h!22695 (t!143447 rules!1846)))) (toValue!4442 (transformation!3043 (h!22695 (t!143447 rules!1846))))))))

(assert (= (and d!468676 res!703164) b!1577664))

(declare-fun m!1858899 () Bool)

(assert (=> d!468676 m!1858899))

(declare-fun m!1858901 () Bool)

(assert (=> b!1577664 m!1858901))

(assert (=> b!1577592 d!468676))

(declare-fun d!468678 () Bool)

(declare-fun lt!550300 () Bool)

(declare-fun isEmpty!10334 (List!17363) Bool)

(assert (=> d!468678 (= lt!550300 (isEmpty!10334 (list!6668 (_1!9781 lt!550086))))))

(declare-fun isEmpty!10335 (Conc!5735) Bool)

(assert (=> d!468678 (= lt!550300 (isEmpty!10335 (c!255651 (_1!9781 lt!550086))))))

(assert (=> d!468678 (= (isEmpty!10332 (_1!9781 lt!550086)) lt!550300)))

(declare-fun bs!390683 () Bool)

(assert (= bs!390683 d!468678))

(assert (=> bs!390683 m!1858551))

(assert (=> bs!390683 m!1858551))

(declare-fun m!1858903 () Bool)

(assert (=> bs!390683 m!1858903))

(declare-fun m!1858905 () Bool)

(assert (=> bs!390683 m!1858905))

(assert (=> b!1577459 d!468678))

(declare-fun d!468680 () Bool)

(declare-fun res!703169 () Bool)

(declare-fun e!1013453 () Bool)

(assert (=> d!468680 (=> (not res!703169) (not e!1013453))))

(declare-fun validRegex!1729 (Regex!4371) Bool)

(assert (=> d!468680 (= res!703169 (validRegex!1729 (regex!3043 (h!22695 rules!1846))))))

(assert (=> d!468680 (= (ruleValid!705 thiss!17113 (h!22695 rules!1846)) e!1013453)))

(declare-fun b!1577669 () Bool)

(declare-fun res!703170 () Bool)

(assert (=> b!1577669 (=> (not res!703170) (not e!1013453))))

(declare-fun nullable!1288 (Regex!4371) Bool)

(assert (=> b!1577669 (= res!703170 (not (nullable!1288 (regex!3043 (h!22695 rules!1846)))))))

(declare-fun b!1577670 () Bool)

(assert (=> b!1577670 (= e!1013453 (not (= (tag!3309 (h!22695 rules!1846)) (String!19998 ""))))))

(assert (= (and d!468680 res!703169) b!1577669))

(assert (= (and b!1577669 res!703170) b!1577670))

(declare-fun m!1858907 () Bool)

(assert (=> d!468680 m!1858907))

(declare-fun m!1858909 () Bool)

(assert (=> b!1577669 m!1858909))

(assert (=> b!1577562 d!468680))

(declare-fun d!468682 () Bool)

(assert (=> d!468682 (= (list!6667 lt!550077) (list!6671 (c!255649 lt!550077)))))

(declare-fun bs!390684 () Bool)

(assert (= bs!390684 d!468682))

(declare-fun m!1858911 () Bool)

(assert (=> bs!390684 m!1858911))

(assert (=> d!468598 d!468682))

(declare-fun d!468684 () Bool)

(declare-fun c!255704 () Bool)

(assert (=> d!468684 (= c!255704 ((_ is Cons!17293) (list!6668 (seqFromList!1842 tokens!457))))))

(declare-fun e!1013456 () List!17361)

(assert (=> d!468684 (= (printList!793 thiss!17113 (list!6668 (seqFromList!1842 tokens!457))) e!1013456)))

(declare-fun b!1577675 () Bool)

(assert (=> b!1577675 (= e!1013456 (++!4485 (list!6667 (charsOf!1692 (h!22694 (list!6668 (seqFromList!1842 tokens!457))))) (printList!793 thiss!17113 (t!143446 (list!6668 (seqFromList!1842 tokens!457))))))))

(declare-fun b!1577676 () Bool)

(assert (=> b!1577676 (= e!1013456 Nil!17291)))

(assert (= (and d!468684 c!255704) b!1577675))

(assert (= (and d!468684 (not c!255704)) b!1577676))

(declare-fun m!1858913 () Bool)

(assert (=> b!1577675 m!1858913))

(assert (=> b!1577675 m!1858913))

(declare-fun m!1858915 () Bool)

(assert (=> b!1577675 m!1858915))

(declare-fun m!1858917 () Bool)

(assert (=> b!1577675 m!1858917))

(assert (=> b!1577675 m!1858915))

(assert (=> b!1577675 m!1858917))

(declare-fun m!1858919 () Bool)

(assert (=> b!1577675 m!1858919))

(assert (=> d!468598 d!468684))

(declare-fun d!468686 () Bool)

(assert (=> d!468686 (= (list!6668 (seqFromList!1842 tokens!457)) (list!6672 (c!255651 (seqFromList!1842 tokens!457))))))

(declare-fun bs!390685 () Bool)

(assert (= bs!390685 d!468686))

(declare-fun m!1858921 () Bool)

(assert (=> bs!390685 m!1858921))

(assert (=> d!468598 d!468686))

(declare-fun d!468688 () Bool)

(declare-fun lt!550323 () BalanceConc!11412)

(declare-fun printListTailRec!300 (LexerInterface!2672 List!17363 List!17361) List!17361)

(declare-fun dropList!505 (BalanceConc!11414 Int) List!17363)

(assert (=> d!468688 (= (list!6667 lt!550323) (printListTailRec!300 thiss!17113 (dropList!505 (seqFromList!1842 tokens!457) 0) (list!6667 (BalanceConc!11413 Empty!5734))))))

(declare-fun e!1013466 () BalanceConc!11412)

(assert (=> d!468688 (= lt!550323 e!1013466)))

(declare-fun c!255707 () Bool)

(assert (=> d!468688 (= c!255707 (>= 0 (size!13938 (seqFromList!1842 tokens!457))))))

(declare-fun e!1013465 () Bool)

(assert (=> d!468688 e!1013465))

(declare-fun res!703179 () Bool)

(assert (=> d!468688 (=> (not res!703179) (not e!1013465))))

(assert (=> d!468688 (= res!703179 (>= 0 0))))

(assert (=> d!468688 (= (printTailRec!729 thiss!17113 (seqFromList!1842 tokens!457) 0 (BalanceConc!11413 Empty!5734)) lt!550323)))

(declare-fun b!1577689 () Bool)

(assert (=> b!1577689 (= e!1013465 (<= 0 (size!13938 (seqFromList!1842 tokens!457))))))

(declare-fun b!1577690 () Bool)

(assert (=> b!1577690 (= e!1013466 (BalanceConc!11413 Empty!5734))))

(declare-fun b!1577691 () Bool)

(declare-fun apply!4191 (BalanceConc!11414 Int) Token!5652)

(assert (=> b!1577691 (= e!1013466 (printTailRec!729 thiss!17113 (seqFromList!1842 tokens!457) (+ 0 1) (++!4487 (BalanceConc!11413 Empty!5734) (charsOf!1692 (apply!4191 (seqFromList!1842 tokens!457) 0)))))))

(declare-fun lt!550320 () List!17363)

(assert (=> b!1577691 (= lt!550320 (list!6668 (seqFromList!1842 tokens!457)))))

(declare-fun lt!550325 () Unit!26821)

(declare-fun lemmaDropApply!507 (List!17363 Int) Unit!26821)

(assert (=> b!1577691 (= lt!550325 (lemmaDropApply!507 lt!550320 0))))

(declare-fun head!3174 (List!17363) Token!5652)

(declare-fun drop!809 (List!17363 Int) List!17363)

(declare-fun apply!4192 (List!17363 Int) Token!5652)

(assert (=> b!1577691 (= (head!3174 (drop!809 lt!550320 0)) (apply!4192 lt!550320 0))))

(declare-fun lt!550321 () Unit!26821)

(assert (=> b!1577691 (= lt!550321 lt!550325)))

(declare-fun lt!550324 () List!17363)

(assert (=> b!1577691 (= lt!550324 (list!6668 (seqFromList!1842 tokens!457)))))

(declare-fun lt!550322 () Unit!26821)

(declare-fun lemmaDropTail!487 (List!17363 Int) Unit!26821)

(assert (=> b!1577691 (= lt!550322 (lemmaDropTail!487 lt!550324 0))))

(declare-fun tail!2245 (List!17363) List!17363)

(assert (=> b!1577691 (= (tail!2245 (drop!809 lt!550324 0)) (drop!809 lt!550324 (+ 0 1)))))

(declare-fun lt!550319 () Unit!26821)

(assert (=> b!1577691 (= lt!550319 lt!550322)))

(assert (= (and d!468688 res!703179) b!1577689))

(assert (= (and d!468688 c!255707) b!1577690))

(assert (= (and d!468688 (not c!255707)) b!1577691))

(assert (=> d!468688 m!1858203))

(declare-fun m!1858923 () Bool)

(assert (=> d!468688 m!1858923))

(assert (=> d!468688 m!1858203))

(declare-fun m!1858925 () Bool)

(assert (=> d!468688 m!1858925))

(assert (=> d!468688 m!1858805))

(assert (=> d!468688 m!1858925))

(assert (=> d!468688 m!1858805))

(declare-fun m!1858927 () Bool)

(assert (=> d!468688 m!1858927))

(declare-fun m!1858929 () Bool)

(assert (=> d!468688 m!1858929))

(assert (=> b!1577689 m!1858203))

(assert (=> b!1577689 m!1858923))

(assert (=> b!1577691 m!1858203))

(declare-fun m!1858931 () Bool)

(assert (=> b!1577691 m!1858931))

(declare-fun m!1858933 () Bool)

(assert (=> b!1577691 m!1858933))

(declare-fun m!1858935 () Bool)

(assert (=> b!1577691 m!1858935))

(declare-fun m!1858937 () Bool)

(assert (=> b!1577691 m!1858937))

(assert (=> b!1577691 m!1858933))

(assert (=> b!1577691 m!1858937))

(declare-fun m!1858939 () Bool)

(assert (=> b!1577691 m!1858939))

(assert (=> b!1577691 m!1858203))

(assert (=> b!1577691 m!1858513))

(declare-fun m!1858941 () Bool)

(assert (=> b!1577691 m!1858941))

(assert (=> b!1577691 m!1858203))

(declare-fun m!1858943 () Bool)

(assert (=> b!1577691 m!1858943))

(declare-fun m!1858945 () Bool)

(assert (=> b!1577691 m!1858945))

(declare-fun m!1858947 () Bool)

(assert (=> b!1577691 m!1858947))

(assert (=> b!1577691 m!1858943))

(declare-fun m!1858949 () Bool)

(assert (=> b!1577691 m!1858949))

(declare-fun m!1858951 () Bool)

(assert (=> b!1577691 m!1858951))

(assert (=> b!1577691 m!1858931))

(assert (=> b!1577691 m!1858947))

(declare-fun m!1858953 () Bool)

(assert (=> b!1577691 m!1858953))

(assert (=> d!468598 d!468688))

(declare-fun d!468690 () Bool)

(declare-fun e!1013471 () Bool)

(assert (=> d!468690 e!1013471))

(declare-fun res!703185 () Bool)

(assert (=> d!468690 (=> (not res!703185) (not e!1013471))))

(declare-fun lt!550333 () BalanceConc!11414)

(assert (=> d!468690 (= res!703185 (= (list!6668 lt!550333) (t!143446 tokens!457)))))

(declare-fun fromList!359 (List!17363) Conc!5735)

(assert (=> d!468690 (= lt!550333 (BalanceConc!11415 (fromList!359 (t!143446 tokens!457))))))

(assert (=> d!468690 (= (fromListB!787 (t!143446 tokens!457)) lt!550333)))

(declare-fun b!1577697 () Bool)

(assert (=> b!1577697 (= e!1013471 (isBalanced!1686 (fromList!359 (t!143446 tokens!457))))))

(assert (= (and d!468690 res!703185) b!1577697))

(declare-fun m!1858977 () Bool)

(assert (=> d!468690 m!1858977))

(declare-fun m!1858979 () Bool)

(assert (=> d!468690 m!1858979))

(assert (=> b!1577697 m!1858979))

(assert (=> b!1577697 m!1858979))

(declare-fun m!1858981 () Bool)

(assert (=> b!1577697 m!1858981))

(assert (=> d!468610 d!468690))

(assert (=> d!468640 d!468632))

(assert (=> d!468640 d!468634))

(declare-fun d!468696 () Bool)

(assert (=> d!468696 (= (list!6668 (seqFromList!1842 ($colon$colon!265 (t!143446 (t!143446 tokens!457)) (h!22694 (t!143446 tokens!457))))) (list!6672 (c!255651 (seqFromList!1842 ($colon$colon!265 (t!143446 (t!143446 tokens!457)) (h!22694 (t!143446 tokens!457)))))))))

(declare-fun bs!390687 () Bool)

(assert (= bs!390687 d!468696))

(declare-fun m!1858983 () Bool)

(assert (=> bs!390687 m!1858983))

(assert (=> d!468640 d!468696))

(assert (=> d!468640 d!468638))

(declare-fun d!468698 () Bool)

(assert (=> d!468698 (= ($colon$colon!265 (t!143446 (t!143446 tokens!457)) (h!22694 (t!143446 tokens!457))) (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457))))))

(assert (=> d!468640 d!468698))

(declare-fun d!468700 () Bool)

(assert (=> d!468700 (= (seqFromList!1842 ($colon$colon!265 (t!143446 (t!143446 tokens!457)) (h!22694 (t!143446 tokens!457)))) (fromListB!787 ($colon$colon!265 (t!143446 (t!143446 tokens!457)) (h!22694 (t!143446 tokens!457)))))))

(declare-fun bs!390688 () Bool)

(assert (= bs!390688 d!468700))

(assert (=> bs!390688 m!1858701))

(declare-fun m!1858985 () Bool)

(assert (=> bs!390688 m!1858985))

(assert (=> d!468640 d!468700))

(assert (=> d!468640 d!468618))

(declare-fun d!468702 () Bool)

(assert (=> d!468702 (= (list!6668 (_1!9781 lt!549921)) (list!6668 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 tokens!457))) (h!22694 (t!143446 tokens!457)))))))

(assert (=> d!468702 true))

(declare-fun _$1!9979 () Unit!26821)

(assert (=> d!468702 (= (choose!9437 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457)) (_1!9781 lt!549921)) _$1!9979)))

(declare-fun bs!390689 () Bool)

(assert (= bs!390689 d!468702))

(assert (=> bs!390689 m!1858221))

(assert (=> bs!390689 m!1858237))

(assert (=> bs!390689 m!1858237))

(assert (=> bs!390689 m!1858239))

(assert (=> bs!390689 m!1858239))

(assert (=> bs!390689 m!1858241))

(assert (=> d!468640 d!468702))

(declare-fun d!468704 () Bool)

(assert (=> d!468704 (= (list!6668 (_1!9781 lt!550086)) (list!6672 (c!255651 (_1!9781 lt!550086))))))

(declare-fun bs!390690 () Bool)

(assert (= bs!390690 d!468704))

(declare-fun m!1858987 () Bool)

(assert (=> bs!390690 m!1858987))

(assert (=> b!1577461 d!468704))

(declare-fun b!1577708 () Bool)

(declare-fun e!1013478 () Bool)

(declare-fun e!1013479 () Bool)

(assert (=> b!1577708 (= e!1013478 e!1013479)))

(declare-fun res!703188 () Bool)

(declare-fun lt!550342 () tuple2!16764)

(assert (=> b!1577708 (= res!703188 (< (size!13936 (_2!9784 lt!550342)) (size!13936 (list!6667 lt!549917))))))

(assert (=> b!1577708 (=> (not res!703188) (not e!1013479))))

(declare-fun b!1577709 () Bool)

(assert (=> b!1577709 (= e!1013478 (= (_2!9784 lt!550342) (list!6667 lt!549917)))))

(declare-fun b!1577710 () Bool)

(declare-fun e!1013480 () tuple2!16764)

(declare-fun lt!550340 () Option!3092)

(declare-fun lt!550341 () tuple2!16764)

(assert (=> b!1577710 (= e!1013480 (tuple2!16765 (Cons!17293 (_1!9785 (v!23918 lt!550340)) (_1!9784 lt!550341)) (_2!9784 lt!550341)))))

(assert (=> b!1577710 (= lt!550341 (lexList!775 thiss!17113 rules!1846 (_2!9785 (v!23918 lt!550340))))))

(declare-fun d!468706 () Bool)

(assert (=> d!468706 e!1013478))

(declare-fun c!255713 () Bool)

(assert (=> d!468706 (= c!255713 (> (size!13939 (_1!9784 lt!550342)) 0))))

(assert (=> d!468706 (= lt!550342 e!1013480)))

(declare-fun c!255714 () Bool)

(assert (=> d!468706 (= c!255714 ((_ is Some!3091) lt!550340))))

(assert (=> d!468706 (= lt!550340 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 lt!549917)))))

(assert (=> d!468706 (= (lexList!775 thiss!17113 rules!1846 (list!6667 lt!549917)) lt!550342)))

(declare-fun b!1577711 () Bool)

(assert (=> b!1577711 (= e!1013479 (not (isEmpty!10334 (_1!9784 lt!550342))))))

(declare-fun b!1577712 () Bool)

(assert (=> b!1577712 (= e!1013480 (tuple2!16765 Nil!17293 (list!6667 lt!549917)))))

(assert (= (and d!468706 c!255714) b!1577710))

(assert (= (and d!468706 (not c!255714)) b!1577712))

(assert (= (and d!468706 c!255713) b!1577708))

(assert (= (and d!468706 (not c!255713)) b!1577709))

(assert (= (and b!1577708 res!703188) b!1577711))

(declare-fun m!1858989 () Bool)

(assert (=> b!1577708 m!1858989))

(assert (=> b!1577708 m!1858209))

(declare-fun m!1858991 () Bool)

(assert (=> b!1577708 m!1858991))

(declare-fun m!1858993 () Bool)

(assert (=> b!1577710 m!1858993))

(declare-fun m!1858995 () Bool)

(assert (=> d!468706 m!1858995))

(assert (=> d!468706 m!1858209))

(declare-fun m!1858997 () Bool)

(assert (=> d!468706 m!1858997))

(declare-fun m!1858999 () Bool)

(assert (=> b!1577711 m!1858999))

(assert (=> b!1577461 d!468706))

(assert (=> b!1577461 d!468614))

(declare-fun d!468708 () Bool)

(declare-fun lt!550369 () Bool)

(declare-fun e!1013518 () Bool)

(assert (=> d!468708 (= lt!550369 e!1013518)))

(declare-fun res!703210 () Bool)

(assert (=> d!468708 (=> (not res!703210) (not e!1013518))))

(assert (=> d!468708 (= res!703210 (= (list!6668 (_1!9781 (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (singletonSeq!1380 (h!22694 tokens!457)))))) (list!6668 (singletonSeq!1380 (h!22694 tokens!457)))))))

(declare-fun e!1013519 () Bool)

(assert (=> d!468708 (= lt!550369 e!1013519)))

(declare-fun res!703211 () Bool)

(assert (=> d!468708 (=> (not res!703211) (not e!1013519))))

(declare-fun lt!550368 () tuple2!16758)

(assert (=> d!468708 (= res!703211 (= (size!13938 (_1!9781 lt!550368)) 1))))

(assert (=> d!468708 (= lt!550368 (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (singletonSeq!1380 (h!22694 tokens!457)))))))

(assert (=> d!468708 (not (isEmpty!10327 rules!1846))))

(assert (=> d!468708 (= (rulesProduceIndividualToken!1332 thiss!17113 rules!1846 (h!22694 tokens!457)) lt!550369)))

(declare-fun b!1577771 () Bool)

(declare-fun res!703209 () Bool)

(assert (=> b!1577771 (=> (not res!703209) (not e!1013519))))

(assert (=> b!1577771 (= res!703209 (= (apply!4191 (_1!9781 lt!550368) 0) (h!22694 tokens!457)))))

(declare-fun b!1577772 () Bool)

(assert (=> b!1577772 (= e!1013519 (isEmpty!10333 (_2!9781 lt!550368)))))

(declare-fun b!1577773 () Bool)

(assert (=> b!1577773 (= e!1013518 (isEmpty!10333 (_2!9781 (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (singletonSeq!1380 (h!22694 tokens!457)))))))))

(assert (= (and d!468708 res!703211) b!1577771))

(assert (= (and b!1577771 res!703209) b!1577772))

(assert (= (and d!468708 res!703210) b!1577773))

(declare-fun m!1859077 () Bool)

(assert (=> d!468708 m!1859077))

(declare-fun m!1859079 () Bool)

(assert (=> d!468708 m!1859079))

(assert (=> d!468708 m!1859077))

(declare-fun m!1859081 () Bool)

(assert (=> d!468708 m!1859081))

(declare-fun m!1859083 () Bool)

(assert (=> d!468708 m!1859083))

(assert (=> d!468708 m!1859077))

(assert (=> d!468708 m!1859081))

(declare-fun m!1859087 () Bool)

(assert (=> d!468708 m!1859087))

(assert (=> d!468708 m!1858183))

(declare-fun m!1859091 () Bool)

(assert (=> d!468708 m!1859091))

(declare-fun m!1859097 () Bool)

(assert (=> b!1577771 m!1859097))

(declare-fun m!1859101 () Bool)

(assert (=> b!1577772 m!1859101))

(assert (=> b!1577773 m!1859077))

(assert (=> b!1577773 m!1859077))

(assert (=> b!1577773 m!1859081))

(assert (=> b!1577773 m!1859081))

(assert (=> b!1577773 m!1859083))

(declare-fun m!1859107 () Bool)

(assert (=> b!1577773 m!1859107))

(assert (=> b!1577429 d!468708))

(assert (=> b!1577429 d!468642))

(declare-fun d!468746 () Bool)

(declare-fun lt!550374 () Int)

(assert (=> d!468746 (= lt!550374 (size!13936 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))

(declare-fun size!13941 (Conc!5734) Int)

(assert (=> d!468746 (= lt!550374 (size!13941 (c!255649 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))

(assert (=> d!468746 (= (size!13937 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) lt!550374)))

(declare-fun bs!390699 () Bool)

(assert (= bs!390699 d!468746))

(assert (=> bs!390699 m!1858499))

(assert (=> bs!390699 m!1858613))

(assert (=> bs!390699 m!1858613))

(declare-fun m!1859117 () Bool)

(assert (=> bs!390699 m!1859117))

(declare-fun m!1859119 () Bool)

(assert (=> bs!390699 m!1859119))

(assert (=> b!1577429 d!468746))

(declare-fun d!468754 () Bool)

(assert (=> d!468754 (rulesProduceIndividualToken!1332 thiss!17113 rules!1846 (h!22694 tokens!457))))

(declare-fun lt!550410 () Unit!26821)

(declare-fun choose!9438 (LexerInterface!2672 List!17364 List!17363 Token!5652) Unit!26821)

(assert (=> d!468754 (= lt!550410 (choose!9438 thiss!17113 rules!1846 tokens!457 (h!22694 tokens!457)))))

(assert (=> d!468754 (not (isEmpty!10327 rules!1846))))

(assert (=> d!468754 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!511 thiss!17113 rules!1846 tokens!457 (h!22694 tokens!457)) lt!550410)))

(declare-fun bs!390707 () Bool)

(assert (= bs!390707 d!468754))

(assert (=> bs!390707 m!1858453))

(declare-fun m!1859245 () Bool)

(assert (=> bs!390707 m!1859245))

(assert (=> bs!390707 m!1858183))

(assert (=> b!1577429 d!468754))

(declare-fun d!468788 () Bool)

(declare-fun lt!550411 () BalanceConc!11412)

(assert (=> d!468788 (= (list!6667 lt!550411) (originalCharacters!3857 (h!22694 (t!143446 tokens!457))))))

(assert (=> d!468788 (= lt!550411 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))) (value!96398 (h!22694 (t!143446 tokens!457)))))))

(assert (=> d!468788 (= (charsOf!1692 (h!22694 (t!143446 tokens!457))) lt!550411)))

(declare-fun b_lambda!49659 () Bool)

(assert (=> (not b_lambda!49659) (not d!468788)))

(declare-fun tb!88775 () Bool)

(declare-fun t!143487 () Bool)

(assert (=> (and b!1577283 (= (toChars!4301 (transformation!3043 (h!22695 rules!1846))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))))) t!143487) tb!88775))

(declare-fun b!1577827 () Bool)

(declare-fun e!1013551 () Bool)

(declare-fun tp!464480 () Bool)

(assert (=> b!1577827 (= e!1013551 (and (inv!22711 (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))) (value!96398 (h!22694 (t!143446 tokens!457)))))) tp!464480))))

(declare-fun result!107422 () Bool)

(assert (=> tb!88775 (= result!107422 (and (inv!22712 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))) (value!96398 (h!22694 (t!143446 tokens!457))))) e!1013551))))

(assert (= tb!88775 b!1577827))

(declare-fun m!1859247 () Bool)

(assert (=> b!1577827 m!1859247))

(declare-fun m!1859249 () Bool)

(assert (=> tb!88775 m!1859249))

(assert (=> d!468788 t!143487))

(declare-fun b_and!110477 () Bool)

(assert (= b_and!110449 (and (=> t!143487 result!107422) b_and!110477)))

(declare-fun t!143489 () Bool)

(declare-fun tb!88777 () Bool)

(assert (=> (and b!1577278 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))))) t!143489) tb!88777))

(declare-fun result!107424 () Bool)

(assert (= result!107424 result!107422))

(assert (=> d!468788 t!143489))

(declare-fun b_and!110479 () Bool)

(assert (= b_and!110451 (and (=> t!143489 result!107424) b_and!110479)))

(declare-fun t!143491 () Bool)

(declare-fun tb!88779 () Bool)

(assert (=> (and b!1577582 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))))) t!143491) tb!88779))

(declare-fun result!107426 () Bool)

(assert (= result!107426 result!107422))

(assert (=> d!468788 t!143491))

(declare-fun b_and!110481 () Bool)

(assert (= b_and!110463 (and (=> t!143491 result!107426) b_and!110481)))

(declare-fun t!143493 () Bool)

(declare-fun tb!88781 () Bool)

(assert (=> (and b!1577593 (= (toChars!4301 (transformation!3043 (h!22695 (t!143447 rules!1846)))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))))) t!143493) tb!88781))

(declare-fun result!107428 () Bool)

(assert (= result!107428 result!107422))

(assert (=> d!468788 t!143493))

(declare-fun b_and!110483 () Bool)

(assert (= b_and!110467 (and (=> t!143493 result!107428) b_and!110483)))

(declare-fun m!1859251 () Bool)

(assert (=> d!468788 m!1859251))

(declare-fun m!1859253 () Bool)

(assert (=> d!468788 m!1859253))

(assert (=> b!1577429 d!468788))

(declare-fun d!468790 () Bool)

(declare-fun lt!550413 () Bool)

(declare-fun e!1013552 () Bool)

(assert (=> d!468790 (= lt!550413 e!1013552)))

(declare-fun res!703232 () Bool)

(assert (=> d!468790 (=> (not res!703232) (not e!1013552))))

(assert (=> d!468790 (= res!703232 (= (list!6668 (_1!9781 (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (singletonSeq!1380 (h!22694 (t!143446 tokens!457))))))) (list!6668 (singletonSeq!1380 (h!22694 (t!143446 tokens!457))))))))

(declare-fun e!1013553 () Bool)

(assert (=> d!468790 (= lt!550413 e!1013553)))

(declare-fun res!703233 () Bool)

(assert (=> d!468790 (=> (not res!703233) (not e!1013553))))

(declare-fun lt!550412 () tuple2!16758)

(assert (=> d!468790 (= res!703233 (= (size!13938 (_1!9781 lt!550412)) 1))))

(assert (=> d!468790 (= lt!550412 (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (singletonSeq!1380 (h!22694 (t!143446 tokens!457))))))))

(assert (=> d!468790 (not (isEmpty!10327 rules!1846))))

(assert (=> d!468790 (= (rulesProduceIndividualToken!1332 thiss!17113 rules!1846 (h!22694 (t!143446 tokens!457))) lt!550413)))

(declare-fun b!1577828 () Bool)

(declare-fun res!703231 () Bool)

(assert (=> b!1577828 (=> (not res!703231) (not e!1013553))))

(assert (=> b!1577828 (= res!703231 (= (apply!4191 (_1!9781 lt!550412) 0) (h!22694 (t!143446 tokens!457))))))

(declare-fun b!1577829 () Bool)

(assert (=> b!1577829 (= e!1013553 (isEmpty!10333 (_2!9781 lt!550412)))))

(declare-fun b!1577830 () Bool)

(assert (=> b!1577830 (= e!1013552 (isEmpty!10333 (_2!9781 (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (singletonSeq!1380 (h!22694 (t!143446 tokens!457))))))))))

(assert (= (and d!468790 res!703233) b!1577828))

(assert (= (and b!1577828 res!703231) b!1577829))

(assert (= (and d!468790 res!703232) b!1577830))

(assert (=> d!468790 m!1858601))

(declare-fun m!1859255 () Bool)

(assert (=> d!468790 m!1859255))

(assert (=> d!468790 m!1858601))

(assert (=> d!468790 m!1858603))

(declare-fun m!1859257 () Bool)

(assert (=> d!468790 m!1859257))

(assert (=> d!468790 m!1858601))

(assert (=> d!468790 m!1858603))

(declare-fun m!1859259 () Bool)

(assert (=> d!468790 m!1859259))

(assert (=> d!468790 m!1858183))

(declare-fun m!1859261 () Bool)

(assert (=> d!468790 m!1859261))

(declare-fun m!1859263 () Bool)

(assert (=> b!1577828 m!1859263))

(declare-fun m!1859265 () Bool)

(assert (=> b!1577829 m!1859265))

(assert (=> b!1577830 m!1858601))

(assert (=> b!1577830 m!1858601))

(assert (=> b!1577830 m!1858603))

(assert (=> b!1577830 m!1858603))

(assert (=> b!1577830 m!1859257))

(declare-fun m!1859267 () Bool)

(assert (=> b!1577830 m!1859267))

(assert (=> b!1577429 d!468790))

(declare-fun d!468792 () Bool)

(assert (=> d!468792 (rulesProduceIndividualToken!1332 thiss!17113 rules!1846 (h!22694 (t!143446 tokens!457)))))

(declare-fun lt!550414 () Unit!26821)

(assert (=> d!468792 (= lt!550414 (choose!9438 thiss!17113 rules!1846 tokens!457 (h!22694 (t!143446 tokens!457))))))

(assert (=> d!468792 (not (isEmpty!10327 rules!1846))))

(assert (=> d!468792 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!511 thiss!17113 rules!1846 tokens!457 (h!22694 (t!143446 tokens!457))) lt!550414)))

(declare-fun bs!390708 () Bool)

(assert (= bs!390708 d!468792))

(assert (=> bs!390708 m!1858507))

(declare-fun m!1859269 () Bool)

(assert (=> bs!390708 m!1859269))

(assert (=> bs!390708 m!1858183))

(assert (=> b!1577429 d!468792))

(declare-fun d!468794 () Bool)

(declare-fun lt!550417 () Int)

(assert (=> d!468794 (>= lt!550417 0)))

(declare-fun e!1013556 () Int)

(assert (=> d!468794 (= lt!550417 e!1013556)))

(declare-fun c!255751 () Bool)

(assert (=> d!468794 (= c!255751 ((_ is Nil!17291) (originalCharacters!3857 (h!22694 tokens!457))))))

(assert (=> d!468794 (= (size!13936 (originalCharacters!3857 (h!22694 tokens!457))) lt!550417)))

(declare-fun b!1577835 () Bool)

(assert (=> b!1577835 (= e!1013556 0)))

(declare-fun b!1577836 () Bool)

(assert (=> b!1577836 (= e!1013556 (+ 1 (size!13936 (t!143444 (originalCharacters!3857 (h!22694 tokens!457))))))))

(assert (= (and d!468794 c!255751) b!1577835))

(assert (= (and d!468794 (not c!255751)) b!1577836))

(declare-fun m!1859271 () Bool)

(assert (=> b!1577836 m!1859271))

(assert (=> b!1577295 d!468794))

(declare-fun bs!390709 () Bool)

(declare-fun d!468796 () Bool)

(assert (= bs!390709 (and d!468796 d!468542)))

(declare-fun lambda!66415 () Int)

(assert (=> bs!390709 (= lambda!66415 lambda!66401)))

(declare-fun b!1577841 () Bool)

(declare-fun e!1013561 () Bool)

(assert (=> b!1577841 (= e!1013561 true)))

(declare-fun b!1577840 () Bool)

(declare-fun e!1013560 () Bool)

(assert (=> b!1577840 (= e!1013560 e!1013561)))

(declare-fun b!1577839 () Bool)

(declare-fun e!1013559 () Bool)

(assert (=> b!1577839 (= e!1013559 e!1013560)))

(assert (=> d!468796 e!1013559))

(assert (= b!1577840 b!1577841))

(assert (= b!1577839 b!1577840))

(assert (= (and d!468796 ((_ is Cons!17294) rules!1846)) b!1577839))

(assert (=> b!1577841 (< (dynLambda!7668 order!10193 (toValue!4442 (transformation!3043 (h!22695 rules!1846)))) (dynLambda!7669 order!10195 lambda!66415))))

(assert (=> b!1577841 (< (dynLambda!7670 order!10197 (toChars!4301 (transformation!3043 (h!22695 rules!1846)))) (dynLambda!7669 order!10195 lambda!66415))))

(assert (=> d!468796 true))

(declare-fun lt!550418 () Bool)

(assert (=> d!468796 (= lt!550418 (forall!3983 (t!143446 tokens!457) lambda!66415))))

(declare-fun e!1013558 () Bool)

(assert (=> d!468796 (= lt!550418 e!1013558)))

(declare-fun res!703234 () Bool)

(assert (=> d!468796 (=> res!703234 e!1013558)))

(assert (=> d!468796 (= res!703234 (not ((_ is Cons!17293) (t!143446 tokens!457))))))

(assert (=> d!468796 (not (isEmpty!10327 rules!1846))))

(assert (=> d!468796 (= (rulesProduceEachTokenIndividuallyList!874 thiss!17113 rules!1846 (t!143446 tokens!457)) lt!550418)))

(declare-fun b!1577837 () Bool)

(declare-fun e!1013557 () Bool)

(assert (=> b!1577837 (= e!1013558 e!1013557)))

(declare-fun res!703235 () Bool)

(assert (=> b!1577837 (=> (not res!703235) (not e!1013557))))

(assert (=> b!1577837 (= res!703235 (rulesProduceIndividualToken!1332 thiss!17113 rules!1846 (h!22694 (t!143446 tokens!457))))))

(declare-fun b!1577838 () Bool)

(assert (=> b!1577838 (= e!1013557 (rulesProduceEachTokenIndividuallyList!874 thiss!17113 rules!1846 (t!143446 (t!143446 tokens!457))))))

(assert (= (and d!468796 (not res!703234)) b!1577837))

(assert (= (and b!1577837 res!703235) b!1577838))

(declare-fun m!1859273 () Bool)

(assert (=> d!468796 m!1859273))

(assert (=> d!468796 m!1858183))

(assert (=> b!1577837 m!1858507))

(declare-fun m!1859275 () Bool)

(assert (=> b!1577838 m!1859275))

(assert (=> b!1577393 d!468796))

(declare-fun b!1577845 () Bool)

(declare-fun e!1013563 () List!17363)

(assert (=> b!1577845 (= e!1013563 (++!4488 (list!6672 (left!13982 (c!255651 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 tokens!457))) (h!22694 (t!143446 tokens!457)))))) (list!6672 (right!14312 (c!255651 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 tokens!457))) (h!22694 (t!143446 tokens!457))))))))))

(declare-fun b!1577843 () Bool)

(declare-fun e!1013562 () List!17363)

(assert (=> b!1577843 (= e!1013562 e!1013563)))

(declare-fun c!255753 () Bool)

(assert (=> b!1577843 (= c!255753 ((_ is Leaf!8477) (c!255651 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 tokens!457))) (h!22694 (t!143446 tokens!457))))))))

(declare-fun d!468798 () Bool)

(declare-fun c!255752 () Bool)

(assert (=> d!468798 (= c!255752 ((_ is Empty!5735) (c!255651 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 tokens!457))) (h!22694 (t!143446 tokens!457))))))))

(assert (=> d!468798 (= (list!6672 (c!255651 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 tokens!457))) (h!22694 (t!143446 tokens!457))))) e!1013562)))

(declare-fun b!1577842 () Bool)

(assert (=> b!1577842 (= e!1013562 Nil!17293)))

(declare-fun b!1577844 () Bool)

(assert (=> b!1577844 (= e!1013563 (list!6673 (xs!8539 (c!255651 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 tokens!457))) (h!22694 (t!143446 tokens!457)))))))))

(assert (= (and d!468798 c!255752) b!1577842))

(assert (= (and d!468798 (not c!255752)) b!1577843))

(assert (= (and b!1577843 c!255753) b!1577844))

(assert (= (and b!1577843 (not c!255753)) b!1577845))

(declare-fun m!1859277 () Bool)

(assert (=> b!1577845 m!1859277))

(declare-fun m!1859279 () Bool)

(assert (=> b!1577845 m!1859279))

(assert (=> b!1577845 m!1859277))

(assert (=> b!1577845 m!1859279))

(declare-fun m!1859281 () Bool)

(assert (=> b!1577845 m!1859281))

(declare-fun m!1859283 () Bool)

(assert (=> b!1577844 m!1859283))

(assert (=> d!468634 d!468798))

(declare-fun d!468800 () Bool)

(declare-fun res!703240 () Bool)

(declare-fun e!1013568 () Bool)

(assert (=> d!468800 (=> res!703240 e!1013568)))

(assert (=> d!468800 (= res!703240 ((_ is Nil!17294) rules!1846))))

(assert (=> d!468800 (= (forall!3986 rules!1846 lambda!66410) e!1013568)))

(declare-fun b!1577850 () Bool)

(declare-fun e!1013569 () Bool)

(assert (=> b!1577850 (= e!1013568 e!1013569)))

(declare-fun res!703241 () Bool)

(assert (=> b!1577850 (=> (not res!703241) (not e!1013569))))

(declare-fun dynLambda!7674 (Int Rule!5886) Bool)

(assert (=> b!1577850 (= res!703241 (dynLambda!7674 lambda!66410 (h!22695 rules!1846)))))

(declare-fun b!1577851 () Bool)

(assert (=> b!1577851 (= e!1013569 (forall!3986 (t!143447 rules!1846) lambda!66410))))

(assert (= (and d!468800 (not res!703240)) b!1577850))

(assert (= (and b!1577850 res!703241) b!1577851))

(declare-fun b_lambda!49661 () Bool)

(assert (=> (not b_lambda!49661) (not b!1577850)))

(declare-fun m!1859285 () Bool)

(assert (=> b!1577850 m!1859285))

(declare-fun m!1859287 () Bool)

(assert (=> b!1577851 m!1859287))

(assert (=> d!468644 d!468800))

(declare-fun d!468802 () Bool)

(declare-fun c!255756 () Bool)

(assert (=> d!468802 (= c!255756 ((_ is Node!5734) (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457))))))))

(declare-fun e!1013574 () Bool)

(assert (=> d!468802 (= (inv!22711 (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457))))) e!1013574)))

(declare-fun b!1577858 () Bool)

(declare-fun inv!22713 (Conc!5734) Bool)

(assert (=> b!1577858 (= e!1013574 (inv!22713 (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457))))))))

(declare-fun b!1577859 () Bool)

(declare-fun e!1013575 () Bool)

(assert (=> b!1577859 (= e!1013574 e!1013575)))

(declare-fun res!703244 () Bool)

(assert (=> b!1577859 (= res!703244 (not ((_ is Leaf!8476) (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457)))))))))

(assert (=> b!1577859 (=> res!703244 e!1013575)))

(declare-fun b!1577860 () Bool)

(declare-fun inv!22714 (Conc!5734) Bool)

(assert (=> b!1577860 (= e!1013575 (inv!22714 (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457))))))))

(assert (= (and d!468802 c!255756) b!1577858))

(assert (= (and d!468802 (not c!255756)) b!1577859))

(assert (= (and b!1577859 (not res!703244)) b!1577860))

(declare-fun m!1859289 () Bool)

(assert (=> b!1577858 m!1859289))

(declare-fun m!1859291 () Bool)

(assert (=> b!1577860 m!1859291))

(assert (=> b!1577300 d!468802))

(declare-fun d!468804 () Bool)

(declare-fun lt!550421 () C!8916)

(assert (=> d!468804 (= lt!550421 (head!3172 (list!6667 lt!550170)))))

(declare-fun head!3175 (Conc!5734) C!8916)

(assert (=> d!468804 (= lt!550421 (head!3175 (c!255649 lt!550170)))))

(assert (=> d!468804 (not (isEmpty!10333 lt!550170))))

(assert (=> d!468804 (= (head!3173 lt!550170) lt!550421)))

(declare-fun bs!390710 () Bool)

(assert (= bs!390710 d!468804))

(assert (=> bs!390710 m!1858617))

(assert (=> bs!390710 m!1858617))

(assert (=> bs!390710 m!1858619))

(declare-fun m!1859293 () Bool)

(assert (=> bs!390710 m!1859293))

(declare-fun m!1859295 () Bool)

(assert (=> bs!390710 m!1859295))

(assert (=> b!1577540 d!468804))

(declare-fun b!1577889 () Bool)

(declare-fun e!1013590 () Bool)

(assert (=> b!1577889 (= e!1013590 (nullable!1288 (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))))))

(declare-fun b!1577890 () Bool)

(declare-fun res!703267 () Bool)

(declare-fun e!1013592 () Bool)

(assert (=> b!1577890 (=> res!703267 e!1013592)))

(assert (=> b!1577890 (= res!703267 (not ((_ is ElementMatch!4371) (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))))))))

(declare-fun e!1013593 () Bool)

(assert (=> b!1577890 (= e!1013593 e!1013592)))

(declare-fun b!1577891 () Bool)

(declare-fun e!1013595 () Bool)

(declare-fun e!1013594 () Bool)

(assert (=> b!1577891 (= e!1013595 e!1013594)))

(declare-fun res!703265 () Bool)

(assert (=> b!1577891 (=> res!703265 e!1013594)))

(declare-fun call!102667 () Bool)

(assert (=> b!1577891 (= res!703265 call!102667)))

(declare-fun b!1577892 () Bool)

(declare-fun derivativeStep!1039 (Regex!4371 C!8916) Regex!4371)

(assert (=> b!1577892 (= e!1013590 (matchR!1906 (derivativeStep!1039 (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))) (head!3172 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))) (tail!2244 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))))

(declare-fun b!1577893 () Bool)

(declare-fun e!1013591 () Bool)

(declare-fun lt!550424 () Bool)

(assert (=> b!1577893 (= e!1013591 (= lt!550424 call!102667))))

(declare-fun bm!102662 () Bool)

(assert (=> bm!102662 (= call!102667 (isEmpty!10330 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))

(declare-fun d!468806 () Bool)

(assert (=> d!468806 e!1013591))

(declare-fun c!255764 () Bool)

(assert (=> d!468806 (= c!255764 ((_ is EmptyExpr!4371) (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))))))

(assert (=> d!468806 (= lt!550424 e!1013590)))

(declare-fun c!255765 () Bool)

(assert (=> d!468806 (= c!255765 (isEmpty!10330 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))

(assert (=> d!468806 (validRegex!1729 (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))))))

(assert (=> d!468806 (= (matchR!1906 (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))) (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))) lt!550424)))

(declare-fun b!1577894 () Bool)

(assert (=> b!1577894 (= e!1013591 e!1013593)))

(declare-fun c!255763 () Bool)

(assert (=> b!1577894 (= c!255763 ((_ is EmptyLang!4371) (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))))))

(declare-fun b!1577895 () Bool)

(assert (=> b!1577895 (= e!1013594 (not (= (head!3172 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))) (c!255650 (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))))))))

(declare-fun b!1577896 () Bool)

(declare-fun res!703261 () Bool)

(declare-fun e!1013596 () Bool)

(assert (=> b!1577896 (=> (not res!703261) (not e!1013596))))

(assert (=> b!1577896 (= res!703261 (not call!102667))))

(declare-fun b!1577897 () Bool)

(declare-fun res!703262 () Bool)

(assert (=> b!1577897 (=> res!703262 e!1013592)))

(assert (=> b!1577897 (= res!703262 e!1013596)))

(declare-fun res!703263 () Bool)

(assert (=> b!1577897 (=> (not res!703263) (not e!1013596))))

(assert (=> b!1577897 (= res!703263 lt!550424)))

(declare-fun b!1577898 () Bool)

(declare-fun res!703268 () Bool)

(assert (=> b!1577898 (=> res!703268 e!1013594)))

(assert (=> b!1577898 (= res!703268 (not (isEmpty!10330 (tail!2244 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))))

(declare-fun b!1577899 () Bool)

(assert (=> b!1577899 (= e!1013593 (not lt!550424))))

(declare-fun b!1577900 () Bool)

(declare-fun res!703266 () Bool)

(assert (=> b!1577900 (=> (not res!703266) (not e!1013596))))

(assert (=> b!1577900 (= res!703266 (isEmpty!10330 (tail!2244 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))))

(declare-fun b!1577901 () Bool)

(assert (=> b!1577901 (= e!1013596 (= (head!3172 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))) (c!255650 (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))))))))

(declare-fun b!1577902 () Bool)

(assert (=> b!1577902 (= e!1013592 e!1013595)))

(declare-fun res!703264 () Bool)

(assert (=> b!1577902 (=> (not res!703264) (not e!1013595))))

(assert (=> b!1577902 (= res!703264 (not lt!550424))))

(assert (= (and d!468806 c!255765) b!1577889))

(assert (= (and d!468806 (not c!255765)) b!1577892))

(assert (= (and d!468806 c!255764) b!1577893))

(assert (= (and d!468806 (not c!255764)) b!1577894))

(assert (= (and b!1577894 c!255763) b!1577899))

(assert (= (and b!1577894 (not c!255763)) b!1577890))

(assert (= (and b!1577890 (not res!703267)) b!1577897))

(assert (= (and b!1577897 res!703263) b!1577896))

(assert (= (and b!1577896 res!703261) b!1577900))

(assert (= (and b!1577900 res!703266) b!1577901))

(assert (= (and b!1577897 (not res!703262)) b!1577902))

(assert (= (and b!1577902 res!703264) b!1577891))

(assert (= (and b!1577891 (not res!703265)) b!1577898))

(assert (= (and b!1577898 (not res!703268)) b!1577895))

(assert (= (or b!1577893 b!1577891 b!1577896) bm!102662))

(assert (=> b!1577898 m!1858613))

(declare-fun m!1859297 () Bool)

(assert (=> b!1577898 m!1859297))

(assert (=> b!1577898 m!1859297))

(declare-fun m!1859299 () Bool)

(assert (=> b!1577898 m!1859299))

(assert (=> b!1577901 m!1858613))

(declare-fun m!1859301 () Bool)

(assert (=> b!1577901 m!1859301))

(assert (=> bm!102662 m!1858613))

(declare-fun m!1859303 () Bool)

(assert (=> bm!102662 m!1859303))

(assert (=> b!1577895 m!1858613))

(assert (=> b!1577895 m!1859301))

(assert (=> b!1577900 m!1858613))

(assert (=> b!1577900 m!1859297))

(assert (=> b!1577900 m!1859297))

(assert (=> b!1577900 m!1859299))

(assert (=> d!468806 m!1858613))

(assert (=> d!468806 m!1859303))

(declare-fun m!1859305 () Bool)

(assert (=> d!468806 m!1859305))

(declare-fun m!1859307 () Bool)

(assert (=> b!1577889 m!1859307))

(assert (=> b!1577892 m!1858613))

(assert (=> b!1577892 m!1859301))

(assert (=> b!1577892 m!1859301))

(declare-fun m!1859309 () Bool)

(assert (=> b!1577892 m!1859309))

(assert (=> b!1577892 m!1858613))

(assert (=> b!1577892 m!1859297))

(assert (=> b!1577892 m!1859309))

(assert (=> b!1577892 m!1859297))

(declare-fun m!1859311 () Bool)

(assert (=> b!1577892 m!1859311))

(assert (=> b!1577540 d!468806))

(declare-fun d!468808 () Bool)

(assert (=> d!468808 (= (head!3172 (originalCharacters!3857 (h!22694 (t!143446 (t!143446 tokens!457))))) (h!22692 (originalCharacters!3857 (h!22694 (t!143446 (t!143446 tokens!457))))))))

(assert (=> b!1577540 d!468808))

(declare-fun d!468810 () Bool)

(assert (=> d!468810 (isDefined!2485 (maxPrefix!1238 thiss!17113 rules!1846 (++!4485 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (list!6667 lt!550170))))))

(declare-fun lt!550583 () Unit!26821)

(declare-fun e!1013649 () Unit!26821)

(assert (=> d!468810 (= lt!550583 e!1013649)))

(declare-fun c!255788 () Bool)

(declare-fun isEmpty!10336 (Option!3092) Bool)

(assert (=> d!468810 (= c!255788 (isEmpty!10336 (maxPrefix!1238 thiss!17113 rules!1846 (++!4485 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (list!6667 lt!550170)))))))

(declare-fun lt!550581 () Unit!26821)

(declare-fun lt!550595 () Unit!26821)

(assert (=> d!468810 (= lt!550581 lt!550595)))

(declare-fun e!1013650 () Bool)

(assert (=> d!468810 e!1013650))

(declare-fun res!703316 () Bool)

(assert (=> d!468810 (=> (not res!703316) (not e!1013650))))

(declare-fun lt!550582 () Token!5652)

(declare-datatypes ((Option!3094 0))(
  ( (None!3093) (Some!3093 (v!23924 Rule!5886)) )
))
(declare-fun isDefined!2486 (Option!3094) Bool)

(declare-fun getRuleFromTag!229 (LexerInterface!2672 List!17364 String!19997) Option!3094)

(assert (=> d!468810 (= res!703316 (isDefined!2486 (getRuleFromTag!229 thiss!17113 rules!1846 (tag!3309 (rule!4837 lt!550582)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!229 (LexerInterface!2672 List!17364 List!17361 Token!5652) Unit!26821)

(assert (=> d!468810 (= lt!550595 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!229 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) lt!550582))))

(declare-fun lt!550589 () Unit!26821)

(declare-fun lt!550592 () Unit!26821)

(assert (=> d!468810 (= lt!550589 lt!550592)))

(declare-fun lt!550580 () List!17361)

(assert (=> d!468810 (isPrefix!1303 lt!550580 (++!4485 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (list!6667 lt!550170)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!115 (List!17361 List!17361 List!17361) Unit!26821)

(assert (=> d!468810 (= lt!550592 (lemmaPrefixStaysPrefixWhenAddingToSuffix!115 lt!550580 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (list!6667 lt!550170)))))

(assert (=> d!468810 (= lt!550580 (list!6667 (charsOf!1692 lt!550582)))))

(declare-fun lt!550591 () Unit!26821)

(declare-fun lt!550593 () Unit!26821)

(assert (=> d!468810 (= lt!550591 lt!550593)))

(declare-fun lt!550594 () List!17361)

(declare-fun lt!550584 () List!17361)

(assert (=> d!468810 (isPrefix!1303 lt!550594 (++!4485 lt!550594 lt!550584))))

(assert (=> d!468810 (= lt!550593 (lemmaConcatTwoListThenFirstIsPrefix!828 lt!550594 lt!550584))))

(assert (=> d!468810 (= lt!550584 (_2!9785 (get!4945 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))))

(assert (=> d!468810 (= lt!550594 (list!6667 (charsOf!1692 lt!550582)))))

(declare-fun seqFromList!1843 (List!17361) BalanceConc!11412)

(assert (=> d!468810 (= lt!550582 (head!3174 (list!6668 (_1!9781 (lex!1156 thiss!17113 rules!1846 (seqFromList!1843 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))))))

(assert (=> d!468810 (not (isEmpty!10327 rules!1846))))

(assert (=> d!468810 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!258 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (list!6667 lt!550170)) lt!550583)))

(declare-fun b!1578000 () Bool)

(declare-fun Unit!26859 () Unit!26821)

(assert (=> b!1578000 (= e!1013649 Unit!26859)))

(declare-fun lt!550586 () List!17361)

(assert (=> b!1578000 (= lt!550586 (++!4485 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (list!6667 lt!550170)))))

(declare-fun lt!550587 () Unit!26821)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!123 (LexerInterface!2672 Rule!5886 List!17364 List!17361) Unit!26821)

(assert (=> b!1578000 (= lt!550587 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!123 thiss!17113 (rule!4837 lt!550582) rules!1846 lt!550586))))

(declare-fun maxPrefixOneRule!720 (LexerInterface!2672 Rule!5886 List!17361) Option!3092)

(assert (=> b!1578000 (isEmpty!10336 (maxPrefixOneRule!720 thiss!17113 (rule!4837 lt!550582) lt!550586))))

(declare-fun lt!550588 () Unit!26821)

(assert (=> b!1578000 (= lt!550588 lt!550587)))

(declare-fun lt!550585 () List!17361)

(assert (=> b!1578000 (= lt!550585 (list!6667 (charsOf!1692 lt!550582)))))

(declare-fun lt!550596 () Unit!26821)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!119 (LexerInterface!2672 Rule!5886 List!17361 List!17361) Unit!26821)

(assert (=> b!1578000 (= lt!550596 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!119 thiss!17113 (rule!4837 lt!550582) lt!550585 (++!4485 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (list!6667 lt!550170))))))

(assert (=> b!1578000 (not (matchR!1906 (regex!3043 (rule!4837 lt!550582)) lt!550585))))

(declare-fun lt!550590 () Unit!26821)

(assert (=> b!1578000 (= lt!550590 lt!550596)))

(assert (=> b!1578000 false))

(declare-fun b!1578001 () Bool)

(declare-fun Unit!26860 () Unit!26821)

(assert (=> b!1578001 (= e!1013649 Unit!26860)))

(declare-fun b!1577999 () Bool)

(declare-fun get!4946 (Option!3094) Rule!5886)

(assert (=> b!1577999 (= e!1013650 (= (rule!4837 lt!550582) (get!4946 (getRuleFromTag!229 thiss!17113 rules!1846 (tag!3309 (rule!4837 lt!550582))))))))

(declare-fun b!1577998 () Bool)

(declare-fun res!703317 () Bool)

(assert (=> b!1577998 (=> (not res!703317) (not e!1013650))))

(assert (=> b!1577998 (= res!703317 (matchR!1906 (regex!3043 (get!4946 (getRuleFromTag!229 thiss!17113 rules!1846 (tag!3309 (rule!4837 lt!550582))))) (list!6667 (charsOf!1692 lt!550582))))))

(assert (= (and d!468810 res!703316) b!1577998))

(assert (= (and b!1577998 res!703317) b!1577999))

(assert (= (and d!468810 c!255788) b!1578000))

(assert (= (and d!468810 (not c!255788)) b!1578001))

(assert (=> d!468810 m!1858613))

(assert (=> d!468810 m!1858617))

(declare-fun m!1859485 () Bool)

(assert (=> d!468810 m!1859485))

(declare-fun m!1859487 () Bool)

(assert (=> d!468810 m!1859487))

(declare-fun m!1859489 () Bool)

(assert (=> d!468810 m!1859489))

(declare-fun m!1859491 () Bool)

(assert (=> d!468810 m!1859491))

(declare-fun m!1859493 () Bool)

(assert (=> d!468810 m!1859493))

(declare-fun m!1859495 () Bool)

(assert (=> d!468810 m!1859495))

(declare-fun m!1859497 () Bool)

(assert (=> d!468810 m!1859497))

(declare-fun m!1859499 () Bool)

(assert (=> d!468810 m!1859499))

(declare-fun m!1859501 () Bool)

(assert (=> d!468810 m!1859501))

(assert (=> d!468810 m!1859499))

(assert (=> d!468810 m!1858647))

(assert (=> d!468810 m!1858659))

(assert (=> d!468810 m!1859485))

(declare-fun m!1859503 () Bool)

(assert (=> d!468810 m!1859503))

(assert (=> d!468810 m!1858183))

(assert (=> d!468810 m!1859485))

(declare-fun m!1859505 () Bool)

(assert (=> d!468810 m!1859505))

(declare-fun m!1859507 () Bool)

(assert (=> d!468810 m!1859507))

(declare-fun m!1859509 () Bool)

(assert (=> d!468810 m!1859509))

(assert (=> d!468810 m!1858613))

(assert (=> d!468810 m!1858647))

(assert (=> d!468810 m!1859487))

(assert (=> d!468810 m!1859495))

(assert (=> d!468810 m!1858613))

(assert (=> d!468810 m!1858617))

(declare-fun m!1859511 () Bool)

(assert (=> d!468810 m!1859511))

(assert (=> d!468810 m!1859493))

(declare-fun m!1859513 () Bool)

(assert (=> d!468810 m!1859513))

(assert (=> d!468810 m!1858613))

(declare-fun m!1859515 () Bool)

(assert (=> d!468810 m!1859515))

(assert (=> d!468810 m!1859505))

(declare-fun m!1859517 () Bool)

(assert (=> d!468810 m!1859517))

(assert (=> d!468810 m!1858613))

(assert (=> d!468810 m!1859507))

(assert (=> d!468810 m!1859505))

(declare-fun m!1859519 () Bool)

(assert (=> d!468810 m!1859519))

(declare-fun m!1859521 () Bool)

(assert (=> b!1578000 m!1859521))

(assert (=> b!1578000 m!1858613))

(assert (=> b!1578000 m!1858617))

(assert (=> b!1578000 m!1859485))

(assert (=> b!1578000 m!1859499))

(declare-fun m!1859523 () Bool)

(assert (=> b!1578000 m!1859523))

(declare-fun m!1859525 () Bool)

(assert (=> b!1578000 m!1859525))

(assert (=> b!1578000 m!1859523))

(assert (=> b!1578000 m!1859485))

(declare-fun m!1859527 () Bool)

(assert (=> b!1578000 m!1859527))

(assert (=> b!1578000 m!1859499))

(assert (=> b!1578000 m!1859501))

(declare-fun m!1859529 () Bool)

(assert (=> b!1578000 m!1859529))

(assert (=> b!1577999 m!1859487))

(assert (=> b!1577999 m!1859487))

(declare-fun m!1859531 () Bool)

(assert (=> b!1577999 m!1859531))

(assert (=> b!1577998 m!1859499))

(assert (=> b!1577998 m!1859501))

(declare-fun m!1859533 () Bool)

(assert (=> b!1577998 m!1859533))

(assert (=> b!1577998 m!1859487))

(assert (=> b!1577998 m!1859499))

(assert (=> b!1577998 m!1859501))

(assert (=> b!1577998 m!1859487))

(assert (=> b!1577998 m!1859531))

(assert (=> b!1577540 d!468810))

(declare-fun d!468840 () Bool)

(declare-fun e!1013651 () Bool)

(assert (=> d!468840 e!1013651))

(declare-fun res!703318 () Bool)

(assert (=> d!468840 (=> (not res!703318) (not e!1013651))))

(assert (=> d!468840 (= res!703318 (isBalanced!1686 (prepend!517 (c!255651 (seqFromList!1842 (t!143446 (t!143446 (t!143446 tokens!457))))) (h!22694 (t!143446 (t!143446 tokens!457))))))))

(declare-fun lt!550597 () BalanceConc!11414)

(assert (=> d!468840 (= lt!550597 (BalanceConc!11415 (prepend!517 (c!255651 (seqFromList!1842 (t!143446 (t!143446 (t!143446 tokens!457))))) (h!22694 (t!143446 (t!143446 tokens!457))))))))

(assert (=> d!468840 (= (prepend!515 (seqFromList!1842 (t!143446 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 (t!143446 tokens!457)))) lt!550597)))

(declare-fun b!1578002 () Bool)

(assert (=> b!1578002 (= e!1013651 (= (list!6668 lt!550597) (Cons!17293 (h!22694 (t!143446 (t!143446 tokens!457))) (list!6668 (seqFromList!1842 (t!143446 (t!143446 (t!143446 tokens!457))))))))))

(assert (= (and d!468840 res!703318) b!1578002))

(declare-fun m!1859535 () Bool)

(assert (=> d!468840 m!1859535))

(assert (=> d!468840 m!1859535))

(declare-fun m!1859537 () Bool)

(assert (=> d!468840 m!1859537))

(declare-fun m!1859539 () Bool)

(assert (=> b!1578002 m!1859539))

(assert (=> b!1578002 m!1858597))

(declare-fun m!1859541 () Bool)

(assert (=> b!1578002 m!1859541))

(assert (=> b!1577540 d!468840))

(assert (=> b!1577540 d!468638))

(declare-fun d!468842 () Bool)

(declare-fun lt!550600 () C!8916)

(declare-fun apply!4193 (List!17361 Int) C!8916)

(assert (=> d!468842 (= lt!550600 (apply!4193 (list!6667 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457))))) 0))))

(declare-fun apply!4194 (Conc!5734 Int) C!8916)

(assert (=> d!468842 (= lt!550600 (apply!4194 (c!255649 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457))))) 0))))

(declare-fun e!1013654 () Bool)

(assert (=> d!468842 e!1013654))

(declare-fun res!703321 () Bool)

(assert (=> d!468842 (=> (not res!703321) (not e!1013654))))

(assert (=> d!468842 (= res!703321 (<= 0 0))))

(assert (=> d!468842 (= (apply!4190 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457)))) 0) lt!550600)))

(declare-fun b!1578005 () Bool)

(assert (=> b!1578005 (= e!1013654 (< 0 (size!13937 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457)))))))))

(assert (= (and d!468842 res!703321) b!1578005))

(assert (=> d!468842 m!1858607))

(declare-fun m!1859543 () Bool)

(assert (=> d!468842 m!1859543))

(assert (=> d!468842 m!1859543))

(declare-fun m!1859545 () Bool)

(assert (=> d!468842 m!1859545))

(declare-fun m!1859547 () Bool)

(assert (=> d!468842 m!1859547))

(assert (=> b!1578005 m!1858607))

(declare-fun m!1859549 () Bool)

(assert (=> b!1578005 m!1859549))

(assert (=> b!1577540 d!468842))

(declare-fun d!468844 () Bool)

(assert (=> d!468844 (isPrefix!1303 lt!550147 (++!4485 lt!550147 lt!550156))))

(declare-fun lt!550601 () Unit!26821)

(assert (=> d!468844 (= lt!550601 (choose!9436 lt!550147 lt!550156))))

(assert (=> d!468844 (= (lemmaConcatTwoListThenFirstIsPrefix!828 lt!550147 lt!550156) lt!550601)))

(declare-fun bs!390716 () Bool)

(assert (= bs!390716 d!468844))

(assert (=> bs!390716 m!1858639))

(assert (=> bs!390716 m!1858639))

(assert (=> bs!390716 m!1858641))

(declare-fun m!1859551 () Bool)

(assert (=> bs!390716 m!1859551))

(assert (=> b!1577540 d!468844))

(assert (=> b!1577540 d!468788))

(declare-fun d!468846 () Bool)

(assert (=> d!468846 (= (get!4945 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))) (v!23918 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))))

(assert (=> b!1577540 d!468846))

(declare-fun d!468848 () Bool)

(assert (=> d!468848 (= (list!6667 lt!550166) (list!6671 (c!255649 lt!550166)))))

(declare-fun bs!390717 () Bool)

(assert (= bs!390717 d!468848))

(declare-fun m!1859553 () Bool)

(assert (=> bs!390717 m!1859553))

(assert (=> b!1577540 d!468848))

(declare-fun d!468850 () Bool)

(assert (=> d!468850 (= (isDefined!2485 (maxPrefix!1238 thiss!17113 rules!1846 (originalCharacters!3857 (h!22694 (t!143446 tokens!457))))) (not (isEmpty!10336 (maxPrefix!1238 thiss!17113 rules!1846 (originalCharacters!3857 (h!22694 (t!143446 tokens!457)))))))))

(declare-fun bs!390718 () Bool)

(assert (= bs!390718 d!468850))

(assert (=> bs!390718 m!1858623))

(declare-fun m!1859555 () Bool)

(assert (=> bs!390718 m!1859555))

(assert (=> b!1577540 d!468850))

(declare-fun d!468852 () Bool)

(declare-fun e!1013655 () Bool)

(assert (=> d!468852 e!1013655))

(declare-fun res!703323 () Bool)

(assert (=> d!468852 (=> (not res!703323) (not e!1013655))))

(declare-fun lt!550602 () List!17361)

(assert (=> d!468852 (= res!703323 (= (content!2381 lt!550602) ((_ map or) (content!2381 lt!550147) (content!2381 lt!550156))))))

(declare-fun e!1013656 () List!17361)

(assert (=> d!468852 (= lt!550602 e!1013656)))

(declare-fun c!255789 () Bool)

(assert (=> d!468852 (= c!255789 ((_ is Nil!17291) lt!550147))))

(assert (=> d!468852 (= (++!4485 lt!550147 lt!550156) lt!550602)))

(declare-fun b!1578007 () Bool)

(assert (=> b!1578007 (= e!1013656 (Cons!17291 (h!22692 lt!550147) (++!4485 (t!143444 lt!550147) lt!550156)))))

(declare-fun b!1578006 () Bool)

(assert (=> b!1578006 (= e!1013656 lt!550156)))

(declare-fun b!1578009 () Bool)

(assert (=> b!1578009 (= e!1013655 (or (not (= lt!550156 Nil!17291)) (= lt!550602 lt!550147)))))

(declare-fun b!1578008 () Bool)

(declare-fun res!703322 () Bool)

(assert (=> b!1578008 (=> (not res!703322) (not e!1013655))))

(assert (=> b!1578008 (= res!703322 (= (size!13936 lt!550602) (+ (size!13936 lt!550147) (size!13936 lt!550156))))))

(assert (= (and d!468852 c!255789) b!1578006))

(assert (= (and d!468852 (not c!255789)) b!1578007))

(assert (= (and d!468852 res!703323) b!1578008))

(assert (= (and b!1578008 res!703322) b!1578009))

(declare-fun m!1859557 () Bool)

(assert (=> d!468852 m!1859557))

(declare-fun m!1859559 () Bool)

(assert (=> d!468852 m!1859559))

(declare-fun m!1859561 () Bool)

(assert (=> d!468852 m!1859561))

(declare-fun m!1859563 () Bool)

(assert (=> b!1578007 m!1859563))

(declare-fun m!1859565 () Bool)

(assert (=> b!1578008 m!1859565))

(declare-fun m!1859567 () Bool)

(assert (=> b!1578008 m!1859567))

(declare-fun m!1859569 () Bool)

(assert (=> b!1578008 m!1859569))

(assert (=> b!1577540 d!468852))

(declare-fun d!468854 () Bool)

(assert (=> d!468854 (= (isEmpty!10330 (_2!9785 (get!4945 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))) ((_ is Nil!17291) (_2!9785 (get!4945 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))))))

(assert (=> b!1577540 d!468854))

(declare-fun d!468856 () Bool)

(assert (=> d!468856 (= (list!6667 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457)))) 0))) (list!6671 (c!255649 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457)))) 0)))))))

(declare-fun bs!390719 () Bool)

(assert (= bs!390719 d!468856))

(declare-fun m!1859571 () Bool)

(assert (=> bs!390719 m!1859571))

(assert (=> b!1577540 d!468856))

(declare-fun d!468858 () Bool)

(declare-fun lt!550603 () BalanceConc!11412)

(assert (=> d!468858 (= (list!6667 lt!550603) (printList!793 thiss!17113 (list!6668 (seqFromList!1842 (t!143446 (t!143446 tokens!457))))))))

(assert (=> d!468858 (= lt!550603 (printTailRec!729 thiss!17113 (seqFromList!1842 (t!143446 (t!143446 tokens!457))) 0 (BalanceConc!11413 Empty!5734)))))

(assert (=> d!468858 (= (print!1203 thiss!17113 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))) lt!550603)))

(declare-fun bs!390720 () Bool)

(assert (= bs!390720 d!468858))

(declare-fun m!1859573 () Bool)

(assert (=> bs!390720 m!1859573))

(assert (=> bs!390720 m!1858237))

(assert (=> bs!390720 m!1858693))

(assert (=> bs!390720 m!1858693))

(declare-fun m!1859575 () Bool)

(assert (=> bs!390720 m!1859575))

(assert (=> bs!390720 m!1858237))

(declare-fun m!1859577 () Bool)

(assert (=> bs!390720 m!1859577))

(assert (=> b!1577540 d!468858))

(declare-fun d!468860 () Bool)

(declare-fun e!1013659 () Bool)

(assert (=> d!468860 e!1013659))

(declare-fun res!703326 () Bool)

(assert (=> d!468860 (=> (not res!703326) (not e!1013659))))

(declare-fun lt!550606 () BalanceConc!11414)

(assert (=> d!468860 (= res!703326 (= (list!6668 lt!550606) (Cons!17293 (h!22694 (t!143446 tokens!457)) Nil!17293)))))

(declare-fun singleton!567 (Token!5652) BalanceConc!11414)

(assert (=> d!468860 (= lt!550606 (singleton!567 (h!22694 (t!143446 tokens!457))))))

(assert (=> d!468860 (= (singletonSeq!1380 (h!22694 (t!143446 tokens!457))) lt!550606)))

(declare-fun b!1578012 () Bool)

(assert (=> b!1578012 (= e!1013659 (isBalanced!1686 (c!255651 lt!550606)))))

(assert (= (and d!468860 res!703326) b!1578012))

(declare-fun m!1859579 () Bool)

(assert (=> d!468860 m!1859579))

(declare-fun m!1859581 () Bool)

(assert (=> d!468860 m!1859581))

(declare-fun m!1859583 () Bool)

(assert (=> b!1578012 m!1859583))

(assert (=> b!1577540 d!468860))

(declare-fun d!468862 () Bool)

(declare-fun lt!550607 () BalanceConc!11412)

(assert (=> d!468862 (= (list!6667 lt!550607) (printList!793 thiss!17113 (list!6668 (singletonSeq!1380 (h!22694 (t!143446 tokens!457))))))))

(assert (=> d!468862 (= lt!550607 (printTailRec!729 thiss!17113 (singletonSeq!1380 (h!22694 (t!143446 tokens!457))) 0 (BalanceConc!11413 Empty!5734)))))

(assert (=> d!468862 (= (print!1203 thiss!17113 (singletonSeq!1380 (h!22694 (t!143446 tokens!457)))) lt!550607)))

(declare-fun bs!390721 () Bool)

(assert (= bs!390721 d!468862))

(declare-fun m!1859585 () Bool)

(assert (=> bs!390721 m!1859585))

(assert (=> bs!390721 m!1858601))

(assert (=> bs!390721 m!1859255))

(assert (=> bs!390721 m!1859255))

(declare-fun m!1859587 () Bool)

(assert (=> bs!390721 m!1859587))

(assert (=> bs!390721 m!1858601))

(assert (=> bs!390721 m!1858661))

(assert (=> b!1577540 d!468862))

(declare-fun d!468864 () Bool)

(declare-fun lt!550608 () BalanceConc!11412)

(assert (=> d!468864 (= (list!6667 lt!550608) (originalCharacters!3857 (h!22694 (t!143446 (t!143446 tokens!457)))))))

(assert (=> d!468864 (= lt!550608 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))) (value!96398 (h!22694 (t!143446 (t!143446 tokens!457))))))))

(assert (=> d!468864 (= (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457)))) lt!550608)))

(declare-fun b_lambda!49665 () Bool)

(assert (=> (not b_lambda!49665) (not d!468864)))

(declare-fun t!143496 () Bool)

(declare-fun tb!88783 () Bool)

(assert (=> (and b!1577283 (= (toChars!4301 (transformation!3043 (h!22695 rules!1846))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457))))))) t!143496) tb!88783))

(declare-fun b!1578013 () Bool)

(declare-fun e!1013660 () Bool)

(declare-fun tp!464481 () Bool)

(assert (=> b!1578013 (= e!1013660 (and (inv!22711 (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))) (value!96398 (h!22694 (t!143446 (t!143446 tokens!457))))))) tp!464481))))

(declare-fun result!107430 () Bool)

(assert (=> tb!88783 (= result!107430 (and (inv!22712 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))) (value!96398 (h!22694 (t!143446 (t!143446 tokens!457)))))) e!1013660))))

(assert (= tb!88783 b!1578013))

(declare-fun m!1859589 () Bool)

(assert (=> b!1578013 m!1859589))

(declare-fun m!1859591 () Bool)

(assert (=> tb!88783 m!1859591))

(assert (=> d!468864 t!143496))

(declare-fun b_and!110493 () Bool)

(assert (= b_and!110477 (and (=> t!143496 result!107430) b_and!110493)))

(declare-fun t!143498 () Bool)

(declare-fun tb!88785 () Bool)

(assert (=> (and b!1577278 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457))))))) t!143498) tb!88785))

(declare-fun result!107432 () Bool)

(assert (= result!107432 result!107430))

(assert (=> d!468864 t!143498))

(declare-fun b_and!110495 () Bool)

(assert (= b_and!110479 (and (=> t!143498 result!107432) b_and!110495)))

(declare-fun t!143500 () Bool)

(declare-fun tb!88787 () Bool)

(assert (=> (and b!1577582 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457))))))) t!143500) tb!88787))

(declare-fun result!107434 () Bool)

(assert (= result!107434 result!107430))

(assert (=> d!468864 t!143500))

(declare-fun b_and!110497 () Bool)

(assert (= b_and!110481 (and (=> t!143500 result!107434) b_and!110497)))

(declare-fun t!143502 () Bool)

(declare-fun tb!88789 () Bool)

(assert (=> (and b!1577593 (= (toChars!4301 (transformation!3043 (h!22695 (t!143447 rules!1846)))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457))))))) t!143502) tb!88789))

(declare-fun result!107436 () Bool)

(assert (= result!107436 result!107430))

(assert (=> d!468864 t!143502))

(declare-fun b_and!110499 () Bool)

(assert (= b_and!110483 (and (=> t!143502 result!107436) b_and!110499)))

(declare-fun m!1859593 () Bool)

(assert (=> d!468864 m!1859593))

(declare-fun m!1859595 () Bool)

(assert (=> d!468864 m!1859595))

(assert (=> b!1577540 d!468864))

(declare-fun d!468866 () Bool)

(assert (=> d!468866 (= (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (list!6671 (c!255649 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))

(declare-fun bs!390722 () Bool)

(assert (= bs!390722 d!468866))

(declare-fun m!1859597 () Bool)

(assert (=> bs!390722 m!1859597))

(assert (=> b!1577540 d!468866))

(declare-fun d!468868 () Bool)

(assert (=> d!468868 (= (list!6667 lt!550170) (list!6671 (c!255649 lt!550170)))))

(declare-fun bs!390723 () Bool)

(assert (= bs!390723 d!468868))

(declare-fun m!1859599 () Bool)

(assert (=> bs!390723 m!1859599))

(assert (=> b!1577540 d!468868))

(declare-fun call!102673 () Option!3092)

(declare-fun bm!102668 () Bool)

(assert (=> bm!102668 (= call!102673 (maxPrefixOneRule!720 thiss!17113 (h!22695 rules!1846) (list!6667 lt!550166)))))

(declare-fun b!1578032 () Bool)

(declare-fun e!1013668 () Bool)

(declare-fun e!1013667 () Bool)

(assert (=> b!1578032 (= e!1013668 e!1013667)))

(declare-fun res!703346 () Bool)

(assert (=> b!1578032 (=> (not res!703346) (not e!1013667))))

(declare-fun lt!550623 () Option!3092)

(assert (=> b!1578032 (= res!703346 (isDefined!2485 lt!550623))))

(declare-fun b!1578033 () Bool)

(declare-fun contains!3020 (List!17364 Rule!5886) Bool)

(assert (=> b!1578033 (= e!1013667 (contains!3020 rules!1846 (rule!4837 (_1!9785 (get!4945 lt!550623)))))))

(declare-fun b!1578034 () Bool)

(declare-fun e!1013669 () Option!3092)

(assert (=> b!1578034 (= e!1013669 call!102673)))

(declare-fun b!1578035 () Bool)

(declare-fun res!703344 () Bool)

(assert (=> b!1578035 (=> (not res!703344) (not e!1013667))))

(assert (=> b!1578035 (= res!703344 (< (size!13936 (_2!9785 (get!4945 lt!550623))) (size!13936 (list!6667 lt!550166))))))

(declare-fun b!1578037 () Bool)

(declare-fun res!703342 () Bool)

(assert (=> b!1578037 (=> (not res!703342) (not e!1013667))))

(declare-fun apply!4196 (TokenValueInjection!5926 BalanceConc!11412) TokenValue!3133)

(assert (=> b!1578037 (= res!703342 (= (value!96398 (_1!9785 (get!4945 lt!550623))) (apply!4196 (transformation!3043 (rule!4837 (_1!9785 (get!4945 lt!550623)))) (seqFromList!1843 (originalCharacters!3857 (_1!9785 (get!4945 lt!550623)))))))))

(declare-fun b!1578038 () Bool)

(declare-fun res!703345 () Bool)

(assert (=> b!1578038 (=> (not res!703345) (not e!1013667))))

(assert (=> b!1578038 (= res!703345 (matchR!1906 (regex!3043 (rule!4837 (_1!9785 (get!4945 lt!550623)))) (list!6667 (charsOf!1692 (_1!9785 (get!4945 lt!550623))))))))

(declare-fun b!1578036 () Bool)

(declare-fun res!703347 () Bool)

(assert (=> b!1578036 (=> (not res!703347) (not e!1013667))))

(assert (=> b!1578036 (= res!703347 (= (++!4485 (list!6667 (charsOf!1692 (_1!9785 (get!4945 lt!550623)))) (_2!9785 (get!4945 lt!550623))) (list!6667 lt!550166)))))

(declare-fun d!468870 () Bool)

(assert (=> d!468870 e!1013668))

(declare-fun res!703341 () Bool)

(assert (=> d!468870 (=> res!703341 e!1013668)))

(assert (=> d!468870 (= res!703341 (isEmpty!10336 lt!550623))))

(assert (=> d!468870 (= lt!550623 e!1013669)))

(declare-fun c!255792 () Bool)

(assert (=> d!468870 (= c!255792 (and ((_ is Cons!17294) rules!1846) ((_ is Nil!17294) (t!143447 rules!1846))))))

(declare-fun lt!550621 () Unit!26821)

(declare-fun lt!550619 () Unit!26821)

(assert (=> d!468870 (= lt!550621 lt!550619)))

(assert (=> d!468870 (isPrefix!1303 (list!6667 lt!550166) (list!6667 lt!550166))))

(declare-fun lemmaIsPrefixRefl!905 (List!17361 List!17361) Unit!26821)

(assert (=> d!468870 (= lt!550619 (lemmaIsPrefixRefl!905 (list!6667 lt!550166) (list!6667 lt!550166)))))

(assert (=> d!468870 (rulesValidInductive!906 thiss!17113 rules!1846)))

(assert (=> d!468870 (= (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 lt!550166)) lt!550623)))

(declare-fun b!1578039 () Bool)

(declare-fun res!703343 () Bool)

(assert (=> b!1578039 (=> (not res!703343) (not e!1013667))))

(assert (=> b!1578039 (= res!703343 (= (list!6667 (charsOf!1692 (_1!9785 (get!4945 lt!550623)))) (originalCharacters!3857 (_1!9785 (get!4945 lt!550623)))))))

(declare-fun b!1578040 () Bool)

(declare-fun lt!550622 () Option!3092)

(declare-fun lt!550620 () Option!3092)

(assert (=> b!1578040 (= e!1013669 (ite (and ((_ is None!3091) lt!550622) ((_ is None!3091) lt!550620)) None!3091 (ite ((_ is None!3091) lt!550620) lt!550622 (ite ((_ is None!3091) lt!550622) lt!550620 (ite (>= (size!13932 (_1!9785 (v!23918 lt!550622))) (size!13932 (_1!9785 (v!23918 lt!550620)))) lt!550622 lt!550620)))))))

(assert (=> b!1578040 (= lt!550622 call!102673)))

(assert (=> b!1578040 (= lt!550620 (maxPrefix!1238 thiss!17113 (t!143447 rules!1846) (list!6667 lt!550166)))))

(assert (= (and d!468870 c!255792) b!1578034))

(assert (= (and d!468870 (not c!255792)) b!1578040))

(assert (= (or b!1578034 b!1578040) bm!102668))

(assert (= (and d!468870 (not res!703341)) b!1578032))

(assert (= (and b!1578032 res!703346) b!1578039))

(assert (= (and b!1578039 res!703343) b!1578035))

(assert (= (and b!1578035 res!703344) b!1578036))

(assert (= (and b!1578036 res!703347) b!1578037))

(assert (= (and b!1578037 res!703342) b!1578038))

(assert (= (and b!1578038 res!703345) b!1578033))

(declare-fun m!1859601 () Bool)

(assert (=> b!1578032 m!1859601))

(declare-fun m!1859603 () Bool)

(assert (=> b!1578036 m!1859603))

(declare-fun m!1859605 () Bool)

(assert (=> b!1578036 m!1859605))

(assert (=> b!1578036 m!1859605))

(declare-fun m!1859607 () Bool)

(assert (=> b!1578036 m!1859607))

(assert (=> b!1578036 m!1859607))

(declare-fun m!1859609 () Bool)

(assert (=> b!1578036 m!1859609))

(declare-fun m!1859611 () Bool)

(assert (=> d!468870 m!1859611))

(assert (=> d!468870 m!1858643))

(assert (=> d!468870 m!1858643))

(declare-fun m!1859613 () Bool)

(assert (=> d!468870 m!1859613))

(assert (=> d!468870 m!1858643))

(assert (=> d!468870 m!1858643))

(declare-fun m!1859615 () Bool)

(assert (=> d!468870 m!1859615))

(assert (=> d!468870 m!1858195))

(assert (=> b!1578040 m!1858643))

(declare-fun m!1859617 () Bool)

(assert (=> b!1578040 m!1859617))

(assert (=> b!1578038 m!1859603))

(assert (=> b!1578038 m!1859605))

(assert (=> b!1578038 m!1859605))

(assert (=> b!1578038 m!1859607))

(assert (=> b!1578038 m!1859607))

(declare-fun m!1859619 () Bool)

(assert (=> b!1578038 m!1859619))

(assert (=> bm!102668 m!1858643))

(declare-fun m!1859621 () Bool)

(assert (=> bm!102668 m!1859621))

(assert (=> b!1578039 m!1859603))

(assert (=> b!1578039 m!1859605))

(assert (=> b!1578039 m!1859605))

(assert (=> b!1578039 m!1859607))

(assert (=> b!1578035 m!1859603))

(declare-fun m!1859623 () Bool)

(assert (=> b!1578035 m!1859623))

(assert (=> b!1578035 m!1858643))

(declare-fun m!1859625 () Bool)

(assert (=> b!1578035 m!1859625))

(assert (=> b!1578033 m!1859603))

(declare-fun m!1859627 () Bool)

(assert (=> b!1578033 m!1859627))

(assert (=> b!1578037 m!1859603))

(declare-fun m!1859629 () Bool)

(assert (=> b!1578037 m!1859629))

(assert (=> b!1578037 m!1859629))

(declare-fun m!1859631 () Bool)

(assert (=> b!1578037 m!1859631))

(assert (=> b!1577540 d!468870))

(declare-fun d!468872 () Bool)

(assert (=> d!468872 (= (list!6668 (_1!9781 lt!550153)) (list!6672 (c!255651 (_1!9781 lt!550153))))))

(declare-fun bs!390724 () Bool)

(assert (= bs!390724 d!468872))

(declare-fun m!1859633 () Bool)

(assert (=> bs!390724 m!1859633))

(assert (=> b!1577540 d!468872))

(declare-fun d!468874 () Bool)

(assert (=> d!468874 (= (seqFromList!1842 (t!143446 (t!143446 (t!143446 tokens!457)))) (fromListB!787 (t!143446 (t!143446 (t!143446 tokens!457)))))))

(declare-fun bs!390725 () Bool)

(assert (= bs!390725 d!468874))

(declare-fun m!1859635 () Bool)

(assert (=> bs!390725 m!1859635))

(assert (=> b!1577540 d!468874))

(declare-fun call!102674 () Option!3092)

(declare-fun bm!102669 () Bool)

(assert (=> bm!102669 (= call!102674 (maxPrefixOneRule!720 thiss!17113 (h!22695 rules!1846) (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))

(declare-fun b!1578041 () Bool)

(declare-fun e!1013671 () Bool)

(declare-fun e!1013670 () Bool)

(assert (=> b!1578041 (= e!1013671 e!1013670)))

(declare-fun res!703353 () Bool)

(assert (=> b!1578041 (=> (not res!703353) (not e!1013670))))

(declare-fun lt!550628 () Option!3092)

(assert (=> b!1578041 (= res!703353 (isDefined!2485 lt!550628))))

(declare-fun b!1578042 () Bool)

(assert (=> b!1578042 (= e!1013670 (contains!3020 rules!1846 (rule!4837 (_1!9785 (get!4945 lt!550628)))))))

(declare-fun b!1578043 () Bool)

(declare-fun e!1013672 () Option!3092)

(assert (=> b!1578043 (= e!1013672 call!102674)))

(declare-fun b!1578044 () Bool)

(declare-fun res!703351 () Bool)

(assert (=> b!1578044 (=> (not res!703351) (not e!1013670))))

(assert (=> b!1578044 (= res!703351 (< (size!13936 (_2!9785 (get!4945 lt!550628))) (size!13936 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))))

(declare-fun b!1578046 () Bool)

(declare-fun res!703349 () Bool)

(assert (=> b!1578046 (=> (not res!703349) (not e!1013670))))

(assert (=> b!1578046 (= res!703349 (= (value!96398 (_1!9785 (get!4945 lt!550628))) (apply!4196 (transformation!3043 (rule!4837 (_1!9785 (get!4945 lt!550628)))) (seqFromList!1843 (originalCharacters!3857 (_1!9785 (get!4945 lt!550628)))))))))

(declare-fun b!1578047 () Bool)

(declare-fun res!703352 () Bool)

(assert (=> b!1578047 (=> (not res!703352) (not e!1013670))))

(assert (=> b!1578047 (= res!703352 (matchR!1906 (regex!3043 (rule!4837 (_1!9785 (get!4945 lt!550628)))) (list!6667 (charsOf!1692 (_1!9785 (get!4945 lt!550628))))))))

(declare-fun b!1578045 () Bool)

(declare-fun res!703354 () Bool)

(assert (=> b!1578045 (=> (not res!703354) (not e!1013670))))

(assert (=> b!1578045 (= res!703354 (= (++!4485 (list!6667 (charsOf!1692 (_1!9785 (get!4945 lt!550628)))) (_2!9785 (get!4945 lt!550628))) (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))

(declare-fun d!468876 () Bool)

(assert (=> d!468876 e!1013671))

(declare-fun res!703348 () Bool)

(assert (=> d!468876 (=> res!703348 e!1013671)))

(assert (=> d!468876 (= res!703348 (isEmpty!10336 lt!550628))))

(assert (=> d!468876 (= lt!550628 e!1013672)))

(declare-fun c!255793 () Bool)

(assert (=> d!468876 (= c!255793 (and ((_ is Cons!17294) rules!1846) ((_ is Nil!17294) (t!143447 rules!1846))))))

(declare-fun lt!550626 () Unit!26821)

(declare-fun lt!550624 () Unit!26821)

(assert (=> d!468876 (= lt!550626 lt!550624)))

(assert (=> d!468876 (isPrefix!1303 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))

(assert (=> d!468876 (= lt!550624 (lemmaIsPrefixRefl!905 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))

(assert (=> d!468876 (rulesValidInductive!906 thiss!17113 rules!1846)))

(assert (=> d!468876 (= (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))) lt!550628)))

(declare-fun b!1578048 () Bool)

(declare-fun res!703350 () Bool)

(assert (=> b!1578048 (=> (not res!703350) (not e!1013670))))

(assert (=> b!1578048 (= res!703350 (= (list!6667 (charsOf!1692 (_1!9785 (get!4945 lt!550628)))) (originalCharacters!3857 (_1!9785 (get!4945 lt!550628)))))))

(declare-fun b!1578049 () Bool)

(declare-fun lt!550627 () Option!3092)

(declare-fun lt!550625 () Option!3092)

(assert (=> b!1578049 (= e!1013672 (ite (and ((_ is None!3091) lt!550627) ((_ is None!3091) lt!550625)) None!3091 (ite ((_ is None!3091) lt!550625) lt!550627 (ite ((_ is None!3091) lt!550627) lt!550625 (ite (>= (size!13932 (_1!9785 (v!23918 lt!550627))) (size!13932 (_1!9785 (v!23918 lt!550625)))) lt!550627 lt!550625)))))))

(assert (=> b!1578049 (= lt!550627 call!102674)))

(assert (=> b!1578049 (= lt!550625 (maxPrefix!1238 thiss!17113 (t!143447 rules!1846) (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))

(assert (= (and d!468876 c!255793) b!1578043))

(assert (= (and d!468876 (not c!255793)) b!1578049))

(assert (= (or b!1578043 b!1578049) bm!102669))

(assert (= (and d!468876 (not res!703348)) b!1578041))

(assert (= (and b!1578041 res!703353) b!1578048))

(assert (= (and b!1578048 res!703350) b!1578044))

(assert (= (and b!1578044 res!703351) b!1578045))

(assert (= (and b!1578045 res!703354) b!1578046))

(assert (= (and b!1578046 res!703349) b!1578047))

(assert (= (and b!1578047 res!703352) b!1578042))

(declare-fun m!1859637 () Bool)

(assert (=> b!1578041 m!1859637))

(declare-fun m!1859639 () Bool)

(assert (=> b!1578045 m!1859639))

(declare-fun m!1859641 () Bool)

(assert (=> b!1578045 m!1859641))

(assert (=> b!1578045 m!1859641))

(declare-fun m!1859643 () Bool)

(assert (=> b!1578045 m!1859643))

(assert (=> b!1578045 m!1859643))

(declare-fun m!1859645 () Bool)

(assert (=> b!1578045 m!1859645))

(declare-fun m!1859647 () Bool)

(assert (=> d!468876 m!1859647))

(assert (=> d!468876 m!1858613))

(assert (=> d!468876 m!1858613))

(declare-fun m!1859649 () Bool)

(assert (=> d!468876 m!1859649))

(assert (=> d!468876 m!1858613))

(assert (=> d!468876 m!1858613))

(declare-fun m!1859651 () Bool)

(assert (=> d!468876 m!1859651))

(assert (=> d!468876 m!1858195))

(assert (=> b!1578049 m!1858613))

(declare-fun m!1859653 () Bool)

(assert (=> b!1578049 m!1859653))

(assert (=> b!1578047 m!1859639))

(assert (=> b!1578047 m!1859641))

(assert (=> b!1578047 m!1859641))

(assert (=> b!1578047 m!1859643))

(assert (=> b!1578047 m!1859643))

(declare-fun m!1859655 () Bool)

(assert (=> b!1578047 m!1859655))

(assert (=> bm!102669 m!1858613))

(declare-fun m!1859657 () Bool)

(assert (=> bm!102669 m!1859657))

(assert (=> b!1578048 m!1859639))

(assert (=> b!1578048 m!1859641))

(assert (=> b!1578048 m!1859641))

(assert (=> b!1578048 m!1859643))

(assert (=> b!1578044 m!1859639))

(declare-fun m!1859659 () Bool)

(assert (=> b!1578044 m!1859659))

(assert (=> b!1578044 m!1858613))

(assert (=> b!1578044 m!1859117))

(assert (=> b!1578042 m!1859639))

(declare-fun m!1859661 () Bool)

(assert (=> b!1578042 m!1859661))

(assert (=> b!1578046 m!1859639))

(declare-fun m!1859663 () Bool)

(assert (=> b!1578046 m!1859663))

(assert (=> b!1578046 m!1859663))

(declare-fun m!1859665 () Bool)

(assert (=> b!1578046 m!1859665))

(assert (=> b!1577540 d!468876))

(declare-fun d!468878 () Bool)

(assert (=> d!468878 (= (isDefined!2485 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))) (not (isEmpty!10336 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))))

(declare-fun bs!390726 () Bool)

(assert (= bs!390726 d!468878))

(assert (=> bs!390726 m!1858647))

(declare-fun m!1859667 () Bool)

(assert (=> bs!390726 m!1859667))

(assert (=> b!1577540 d!468878))

(declare-fun d!468880 () Bool)

(declare-fun lt!550633 () BalanceConc!11412)

(assert (=> d!468880 (= (list!6667 lt!550633) (printListTailRec!300 thiss!17113 (dropList!505 (singletonSeq!1380 (h!22694 (t!143446 tokens!457))) 0) (list!6667 (BalanceConc!11413 Empty!5734))))))

(declare-fun e!1013674 () BalanceConc!11412)

(assert (=> d!468880 (= lt!550633 e!1013674)))

(declare-fun c!255794 () Bool)

(assert (=> d!468880 (= c!255794 (>= 0 (size!13938 (singletonSeq!1380 (h!22694 (t!143446 tokens!457))))))))

(declare-fun e!1013673 () Bool)

(assert (=> d!468880 e!1013673))

(declare-fun res!703355 () Bool)

(assert (=> d!468880 (=> (not res!703355) (not e!1013673))))

(assert (=> d!468880 (= res!703355 (>= 0 0))))

(assert (=> d!468880 (= (printTailRec!729 thiss!17113 (singletonSeq!1380 (h!22694 (t!143446 tokens!457))) 0 (BalanceConc!11413 Empty!5734)) lt!550633)))

(declare-fun b!1578050 () Bool)

(assert (=> b!1578050 (= e!1013673 (<= 0 (size!13938 (singletonSeq!1380 (h!22694 (t!143446 tokens!457))))))))

(declare-fun b!1578051 () Bool)

(assert (=> b!1578051 (= e!1013674 (BalanceConc!11413 Empty!5734))))

(declare-fun b!1578052 () Bool)

(assert (=> b!1578052 (= e!1013674 (printTailRec!729 thiss!17113 (singletonSeq!1380 (h!22694 (t!143446 tokens!457))) (+ 0 1) (++!4487 (BalanceConc!11413 Empty!5734) (charsOf!1692 (apply!4191 (singletonSeq!1380 (h!22694 (t!143446 tokens!457))) 0)))))))

(declare-fun lt!550630 () List!17363)

(assert (=> b!1578052 (= lt!550630 (list!6668 (singletonSeq!1380 (h!22694 (t!143446 tokens!457)))))))

(declare-fun lt!550635 () Unit!26821)

(assert (=> b!1578052 (= lt!550635 (lemmaDropApply!507 lt!550630 0))))

(assert (=> b!1578052 (= (head!3174 (drop!809 lt!550630 0)) (apply!4192 lt!550630 0))))

(declare-fun lt!550631 () Unit!26821)

(assert (=> b!1578052 (= lt!550631 lt!550635)))

(declare-fun lt!550634 () List!17363)

(assert (=> b!1578052 (= lt!550634 (list!6668 (singletonSeq!1380 (h!22694 (t!143446 tokens!457)))))))

(declare-fun lt!550632 () Unit!26821)

(assert (=> b!1578052 (= lt!550632 (lemmaDropTail!487 lt!550634 0))))

(assert (=> b!1578052 (= (tail!2245 (drop!809 lt!550634 0)) (drop!809 lt!550634 (+ 0 1)))))

(declare-fun lt!550629 () Unit!26821)

(assert (=> b!1578052 (= lt!550629 lt!550632)))

(assert (= (and d!468880 res!703355) b!1578050))

(assert (= (and d!468880 c!255794) b!1578051))

(assert (= (and d!468880 (not c!255794)) b!1578052))

(assert (=> d!468880 m!1858601))

(declare-fun m!1859669 () Bool)

(assert (=> d!468880 m!1859669))

(assert (=> d!468880 m!1858601))

(declare-fun m!1859671 () Bool)

(assert (=> d!468880 m!1859671))

(assert (=> d!468880 m!1858805))

(assert (=> d!468880 m!1859671))

(assert (=> d!468880 m!1858805))

(declare-fun m!1859673 () Bool)

(assert (=> d!468880 m!1859673))

(declare-fun m!1859675 () Bool)

(assert (=> d!468880 m!1859675))

(assert (=> b!1578050 m!1858601))

(assert (=> b!1578050 m!1859669))

(assert (=> b!1578052 m!1858601))

(declare-fun m!1859677 () Bool)

(assert (=> b!1578052 m!1859677))

(declare-fun m!1859679 () Bool)

(assert (=> b!1578052 m!1859679))

(declare-fun m!1859681 () Bool)

(assert (=> b!1578052 m!1859681))

(declare-fun m!1859683 () Bool)

(assert (=> b!1578052 m!1859683))

(assert (=> b!1578052 m!1859679))

(assert (=> b!1578052 m!1859683))

(declare-fun m!1859685 () Bool)

(assert (=> b!1578052 m!1859685))

(assert (=> b!1578052 m!1858601))

(assert (=> b!1578052 m!1859255))

(declare-fun m!1859687 () Bool)

(assert (=> b!1578052 m!1859687))

(assert (=> b!1578052 m!1858601))

(declare-fun m!1859689 () Bool)

(assert (=> b!1578052 m!1859689))

(declare-fun m!1859691 () Bool)

(assert (=> b!1578052 m!1859691))

(declare-fun m!1859693 () Bool)

(assert (=> b!1578052 m!1859693))

(assert (=> b!1578052 m!1859689))

(declare-fun m!1859695 () Bool)

(assert (=> b!1578052 m!1859695))

(declare-fun m!1859697 () Bool)

(assert (=> b!1578052 m!1859697))

(assert (=> b!1578052 m!1859677))

(assert (=> b!1578052 m!1859693))

(declare-fun m!1859699 () Bool)

(assert (=> b!1578052 m!1859699))

(assert (=> b!1577540 d!468880))

(declare-fun d!468882 () Bool)

(declare-fun lt!550636 () BalanceConc!11412)

(assert (=> d!468882 (= (list!6667 lt!550636) (printList!793 thiss!17113 (list!6668 (seqFromList!1842 (t!143446 tokens!457)))))))

(assert (=> d!468882 (= lt!550636 (printTailRec!729 thiss!17113 (seqFromList!1842 (t!143446 tokens!457)) 0 (BalanceConc!11413 Empty!5734)))))

(assert (=> d!468882 (= (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457))) lt!550636)))

(declare-fun bs!390727 () Bool)

(assert (= bs!390727 d!468882))

(declare-fun m!1859701 () Bool)

(assert (=> bs!390727 m!1859701))

(assert (=> bs!390727 m!1858201))

(declare-fun m!1859703 () Bool)

(assert (=> bs!390727 m!1859703))

(assert (=> bs!390727 m!1859703))

(declare-fun m!1859705 () Bool)

(assert (=> bs!390727 m!1859705))

(assert (=> bs!390727 m!1858201))

(declare-fun m!1859707 () Bool)

(assert (=> bs!390727 m!1859707))

(assert (=> b!1577540 d!468882))

(declare-fun d!468884 () Bool)

(declare-fun e!1013676 () Bool)

(assert (=> d!468884 e!1013676))

(declare-fun res!703356 () Bool)

(assert (=> d!468884 (=> (not res!703356) (not e!1013676))))

(assert (=> d!468884 (= res!703356 (= (list!6668 (_1!9781 (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 (t!143446 tokens!457))))))) (t!143446 (t!143446 tokens!457))))))

(declare-fun lt!550656 () Unit!26821)

(declare-fun e!1013675 () Unit!26821)

(assert (=> d!468884 (= lt!550656 e!1013675)))

(declare-fun c!255795 () Bool)

(assert (=> d!468884 (= c!255795 (or ((_ is Nil!17293) (t!143446 (t!143446 tokens!457))) ((_ is Nil!17293) (t!143446 (t!143446 (t!143446 tokens!457))))))))

(assert (=> d!468884 (not (isEmpty!10327 rules!1846))))

(assert (=> d!468884 (= (theoremInvertabilityWhenTokenListSeparable!117 thiss!17113 rules!1846 (t!143446 (t!143446 tokens!457))) lt!550656)))

(declare-fun b!1578053 () Bool)

(declare-fun Unit!26861 () Unit!26821)

(assert (=> b!1578053 (= e!1013675 Unit!26861)))

(declare-fun b!1578054 () Bool)

(declare-fun Unit!26862 () Unit!26821)

(assert (=> b!1578054 (= e!1013675 Unit!26862)))

(declare-fun lt!550657 () BalanceConc!11412)

(assert (=> b!1578054 (= lt!550657 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))))))

(declare-fun lt!550661 () BalanceConc!11412)

(assert (=> b!1578054 (= lt!550661 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 (t!143446 (t!143446 tokens!457))))))))

(declare-fun lt!550644 () tuple2!16758)

(assert (=> b!1578054 (= lt!550644 (lex!1156 thiss!17113 rules!1846 lt!550661))))

(declare-fun lt!550638 () List!17361)

(assert (=> b!1578054 (= lt!550638 (list!6667 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457))))))))

(declare-fun lt!550647 () List!17361)

(assert (=> b!1578054 (= lt!550647 (list!6667 lt!550661))))

(declare-fun lt!550662 () Unit!26821)

(assert (=> b!1578054 (= lt!550662 (lemmaConcatTwoListThenFirstIsPrefix!828 lt!550638 lt!550647))))

(assert (=> b!1578054 (isPrefix!1303 lt!550638 (++!4485 lt!550638 lt!550647))))

(declare-fun lt!550651 () Unit!26821)

(assert (=> b!1578054 (= lt!550651 lt!550662)))

(declare-fun lt!550641 () Unit!26821)

(assert (=> b!1578054 (= lt!550641 (theoremInvertabilityWhenTokenListSeparable!117 thiss!17113 rules!1846 (t!143446 (t!143446 (t!143446 tokens!457)))))))

(declare-fun lt!550660 () Unit!26821)

(assert (=> b!1578054 (= lt!550660 (seqFromListBHdTlConstructive!120 (h!22694 (t!143446 (t!143446 (t!143446 tokens!457)))) (t!143446 (t!143446 (t!143446 (t!143446 tokens!457)))) (_1!9781 lt!550644)))))

(assert (=> b!1578054 (= (list!6668 (_1!9781 lt!550644)) (list!6668 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 (t!143446 (t!143446 tokens!457))))) (h!22694 (t!143446 (t!143446 (t!143446 tokens!457)))))))))

(declare-fun lt!550653 () Unit!26821)

(assert (=> b!1578054 (= lt!550653 lt!550660)))

(declare-fun lt!550642 () Option!3092)

(assert (=> b!1578054 (= lt!550642 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 lt!550657)))))

(assert (=> b!1578054 (= (print!1203 thiss!17113 (singletonSeq!1380 (h!22694 (t!143446 (t!143446 tokens!457))))) (printTailRec!729 thiss!17113 (singletonSeq!1380 (h!22694 (t!143446 (t!143446 tokens!457)))) 0 (BalanceConc!11413 Empty!5734)))))

(declare-fun lt!550654 () Unit!26821)

(declare-fun Unit!26863 () Unit!26821)

(assert (=> b!1578054 (= lt!550654 Unit!26863)))

(declare-fun lt!550659 () Unit!26821)

(assert (=> b!1578054 (= lt!550659 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!258 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457))))) (list!6667 lt!550661)))))

(assert (=> b!1578054 (= (list!6667 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457))))) (originalCharacters!3857 (h!22694 (t!143446 (t!143446 tokens!457)))))))

(declare-fun lt!550648 () Unit!26821)

(declare-fun Unit!26864 () Unit!26821)

(assert (=> b!1578054 (= lt!550648 Unit!26864)))

(assert (=> b!1578054 (= (list!6667 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 (t!143446 (t!143446 tokens!457))))) 0))) (Cons!17291 (head!3172 (originalCharacters!3857 (h!22694 (t!143446 (t!143446 (t!143446 tokens!457)))))) Nil!17291))))

(declare-fun lt!550649 () Unit!26821)

(declare-fun Unit!26865 () Unit!26821)

(assert (=> b!1578054 (= lt!550649 Unit!26865)))

(assert (=> b!1578054 (= (list!6667 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 (t!143446 (t!143446 tokens!457))))) 0))) (Cons!17291 (head!3172 (list!6667 lt!550661)) Nil!17291))))

(declare-fun lt!550650 () Unit!26821)

(declare-fun Unit!26866 () Unit!26821)

(assert (=> b!1578054 (= lt!550650 Unit!26866)))

(assert (=> b!1578054 (= (list!6667 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 (t!143446 (t!143446 tokens!457))))) 0))) (Cons!17291 (head!3173 lt!550661) Nil!17291))))

(declare-fun lt!550640 () Unit!26821)

(declare-fun Unit!26867 () Unit!26821)

(assert (=> b!1578054 (= lt!550640 Unit!26867)))

(assert (=> b!1578054 (isDefined!2485 (maxPrefix!1238 thiss!17113 rules!1846 (originalCharacters!3857 (h!22694 (t!143446 (t!143446 tokens!457))))))))

(declare-fun lt!550645 () Unit!26821)

(declare-fun Unit!26868 () Unit!26821)

(assert (=> b!1578054 (= lt!550645 Unit!26868)))

(assert (=> b!1578054 (isDefined!2485 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457)))))))))

(declare-fun lt!550643 () Unit!26821)

(declare-fun Unit!26869 () Unit!26821)

(assert (=> b!1578054 (= lt!550643 Unit!26869)))

(declare-fun lt!550652 () Unit!26821)

(declare-fun Unit!26870 () Unit!26821)

(assert (=> b!1578054 (= lt!550652 Unit!26870)))

(assert (=> b!1578054 (= (_1!9785 (get!4945 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457)))))))) (h!22694 (t!143446 (t!143446 tokens!457))))))

(declare-fun lt!550655 () Unit!26821)

(declare-fun Unit!26871 () Unit!26821)

(assert (=> b!1578054 (= lt!550655 Unit!26871)))

(assert (=> b!1578054 (isEmpty!10330 (_2!9785 (get!4945 (maxPrefix!1238 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457)))))))))))

(declare-fun lt!550658 () Unit!26821)

(declare-fun Unit!26872 () Unit!26821)

(assert (=> b!1578054 (= lt!550658 Unit!26872)))

(assert (=> b!1578054 (matchR!1906 (regex!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457))))) (list!6667 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457))))))))

(declare-fun lt!550646 () Unit!26821)

(declare-fun Unit!26873 () Unit!26821)

(assert (=> b!1578054 (= lt!550646 Unit!26873)))

(assert (=> b!1578054 (= (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))) (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))))

(declare-fun lt!550637 () Unit!26821)

(declare-fun Unit!26874 () Unit!26821)

(assert (=> b!1578054 (= lt!550637 Unit!26874)))

(declare-fun lt!550639 () Unit!26821)

(assert (=> b!1578054 (= lt!550639 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!56 thiss!17113 rules!1846 (h!22694 (t!143446 (t!143446 tokens!457))) (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))) (list!6667 lt!550661)))))

(declare-fun b!1578055 () Bool)

(assert (=> b!1578055 (= e!1013676 (isEmpty!10333 (_2!9781 (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 (t!143446 tokens!457))))))))))

(assert (= (and d!468884 c!255795) b!1578053))

(assert (= (and d!468884 (not c!255795)) b!1578054))

(assert (= (and d!468884 res!703356) b!1578055))

(assert (=> d!468884 m!1858621))

(declare-fun m!1859709 () Bool)

(assert (=> d!468884 m!1859709))

(assert (=> d!468884 m!1858237))

(assert (=> d!468884 m!1858621))

(assert (=> d!468884 m!1858237))

(declare-fun m!1859711 () Bool)

(assert (=> d!468884 m!1859711))

(assert (=> d!468884 m!1858183))

(declare-fun m!1859713 () Bool)

(assert (=> b!1578054 m!1859713))

(declare-fun m!1859715 () Bool)

(assert (=> b!1578054 m!1859715))

(declare-fun m!1859717 () Bool)

(assert (=> b!1578054 m!1859717))

(declare-fun m!1859719 () Bool)

(assert (=> b!1578054 m!1859719))

(assert (=> b!1578054 m!1858237))

(assert (=> b!1578054 m!1858621))

(assert (=> b!1578054 m!1859713))

(declare-fun m!1859721 () Bool)

(assert (=> b!1578054 m!1859721))

(assert (=> b!1578054 m!1858237))

(declare-fun m!1859723 () Bool)

(assert (=> b!1578054 m!1859723))

(declare-fun m!1859725 () Bool)

(assert (=> b!1578054 m!1859725))

(assert (=> b!1578054 m!1859715))

(declare-fun m!1859727 () Bool)

(assert (=> b!1578054 m!1859727))

(assert (=> b!1578054 m!1859543))

(declare-fun m!1859729 () Bool)

(assert (=> b!1578054 m!1859729))

(declare-fun m!1859731 () Bool)

(assert (=> b!1578054 m!1859731))

(declare-fun m!1859733 () Bool)

(assert (=> b!1578054 m!1859733))

(assert (=> b!1578054 m!1858597))

(declare-fun m!1859735 () Bool)

(assert (=> b!1578054 m!1859735))

(assert (=> b!1578054 m!1859723))

(declare-fun m!1859737 () Bool)

(assert (=> b!1578054 m!1859737))

(declare-fun m!1859739 () Bool)

(assert (=> b!1578054 m!1859739))

(assert (=> b!1578054 m!1859543))

(assert (=> b!1578054 m!1859731))

(declare-fun m!1859741 () Bool)

(assert (=> b!1578054 m!1859741))

(assert (=> b!1578054 m!1859737))

(declare-fun m!1859743 () Bool)

(assert (=> b!1578054 m!1859743))

(declare-fun m!1859745 () Bool)

(assert (=> b!1578054 m!1859745))

(declare-fun m!1859747 () Bool)

(assert (=> b!1578054 m!1859747))

(declare-fun m!1859749 () Bool)

(assert (=> b!1578054 m!1859749))

(assert (=> b!1578054 m!1859731))

(assert (=> b!1578054 m!1859731))

(declare-fun m!1859751 () Bool)

(assert (=> b!1578054 m!1859751))

(declare-fun m!1859753 () Bool)

(assert (=> b!1578054 m!1859753))

(declare-fun m!1859755 () Bool)

(assert (=> b!1578054 m!1859755))

(declare-fun m!1859757 () Bool)

(assert (=> b!1578054 m!1859757))

(declare-fun m!1859759 () Bool)

(assert (=> b!1578054 m!1859759))

(declare-fun m!1859761 () Bool)

(assert (=> b!1578054 m!1859761))

(declare-fun m!1859763 () Bool)

(assert (=> b!1578054 m!1859763))

(assert (=> b!1578054 m!1858607))

(assert (=> b!1578054 m!1859543))

(assert (=> b!1578054 m!1859543))

(assert (=> b!1578054 m!1859761))

(assert (=> b!1578054 m!1858607))

(declare-fun m!1859765 () Bool)

(assert (=> b!1578054 m!1859765))

(assert (=> b!1578054 m!1859753))

(assert (=> b!1578054 m!1859757))

(assert (=> b!1578054 m!1859717))

(declare-fun m!1859767 () Bool)

(assert (=> b!1578054 m!1859767))

(declare-fun m!1859769 () Bool)

(assert (=> b!1578054 m!1859769))

(assert (=> b!1578054 m!1859725))

(assert (=> b!1578054 m!1859747))

(declare-fun m!1859771 () Bool)

(assert (=> b!1578054 m!1859771))

(assert (=> b!1578054 m!1858597))

(assert (=> b!1578054 m!1859761))

(declare-fun m!1859773 () Bool)

(assert (=> b!1578054 m!1859773))

(assert (=> b!1578054 m!1859717))

(declare-fun m!1859775 () Bool)

(assert (=> b!1578054 m!1859775))

(declare-fun m!1859777 () Bool)

(assert (=> b!1578054 m!1859777))

(assert (=> b!1578055 m!1858237))

(assert (=> b!1578055 m!1858237))

(assert (=> b!1578055 m!1858621))

(assert (=> b!1578055 m!1858621))

(assert (=> b!1578055 m!1859709))

(declare-fun m!1859779 () Bool)

(assert (=> b!1578055 m!1859779))

(assert (=> b!1577540 d!468884))

(declare-fun b!1578056 () Bool)

(declare-fun e!1013677 () Bool)

(declare-fun lt!550663 () tuple2!16758)

(assert (=> b!1578056 (= e!1013677 (= (_2!9781 lt!550663) lt!550170))))

(declare-fun b!1578057 () Bool)

(declare-fun e!1013678 () Bool)

(assert (=> b!1578057 (= e!1013678 (= (list!6667 (_2!9781 lt!550663)) (_2!9784 (lexList!775 thiss!17113 rules!1846 (list!6667 lt!550170)))))))

(declare-fun b!1578058 () Bool)

(declare-fun e!1013679 () Bool)

(assert (=> b!1578058 (= e!1013679 (not (isEmpty!10332 (_1!9781 lt!550663))))))

(declare-fun d!468886 () Bool)

(assert (=> d!468886 e!1013678))

(declare-fun res!703358 () Bool)

(assert (=> d!468886 (=> (not res!703358) (not e!1013678))))

(assert (=> d!468886 (= res!703358 e!1013677)))

(declare-fun c!255796 () Bool)

(assert (=> d!468886 (= c!255796 (> (size!13938 (_1!9781 lt!550663)) 0))))

(assert (=> d!468886 (= lt!550663 (lexTailRecV2!498 thiss!17113 rules!1846 lt!550170 (BalanceConc!11413 Empty!5734) lt!550170 (BalanceConc!11415 Empty!5735)))))

(assert (=> d!468886 (= (lex!1156 thiss!17113 rules!1846 lt!550170) lt!550663)))

(declare-fun b!1578059 () Bool)

(assert (=> b!1578059 (= e!1013677 e!1013679)))

(declare-fun res!703359 () Bool)

(assert (=> b!1578059 (= res!703359 (< (size!13937 (_2!9781 lt!550663)) (size!13937 lt!550170)))))

(assert (=> b!1578059 (=> (not res!703359) (not e!1013679))))

(declare-fun b!1578060 () Bool)

(declare-fun res!703357 () Bool)

(assert (=> b!1578060 (=> (not res!703357) (not e!1013678))))

(assert (=> b!1578060 (= res!703357 (= (list!6668 (_1!9781 lt!550663)) (_1!9784 (lexList!775 thiss!17113 rules!1846 (list!6667 lt!550170)))))))

(assert (= (and d!468886 c!255796) b!1578059))

(assert (= (and d!468886 (not c!255796)) b!1578056))

(assert (= (and b!1578059 res!703359) b!1578058))

(assert (= (and d!468886 res!703358) b!1578060))

(assert (= (and b!1578060 res!703357) b!1578057))

(declare-fun m!1859781 () Bool)

(assert (=> d!468886 m!1859781))

(declare-fun m!1859783 () Bool)

(assert (=> d!468886 m!1859783))

(declare-fun m!1859785 () Bool)

(assert (=> b!1578057 m!1859785))

(assert (=> b!1578057 m!1858617))

(assert (=> b!1578057 m!1858617))

(declare-fun m!1859787 () Bool)

(assert (=> b!1578057 m!1859787))

(declare-fun m!1859789 () Bool)

(assert (=> b!1578059 m!1859789))

(declare-fun m!1859791 () Bool)

(assert (=> b!1578059 m!1859791))

(declare-fun m!1859793 () Bool)

(assert (=> b!1578060 m!1859793))

(assert (=> b!1578060 m!1858617))

(assert (=> b!1578060 m!1858617))

(assert (=> b!1578060 m!1859787))

(declare-fun m!1859795 () Bool)

(assert (=> b!1578058 m!1859795))

(assert (=> b!1577540 d!468886))

(declare-fun d!468888 () Bool)

(assert (=> d!468888 (= (list!6668 (_1!9781 lt!550153)) (list!6668 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 (t!143446 tokens!457))))))))

(declare-fun lt!550664 () Unit!26821)

(assert (=> d!468888 (= lt!550664 (choose!9437 (h!22694 (t!143446 (t!143446 tokens!457))) (t!143446 (t!143446 (t!143446 tokens!457))) (_1!9781 lt!550153)))))

(assert (=> d!468888 (= (list!6668 (_1!9781 lt!550153)) (list!6668 (seqFromList!1842 ($colon$colon!265 (t!143446 (t!143446 (t!143446 tokens!457))) (h!22694 (t!143446 (t!143446 tokens!457)))))))))

(assert (=> d!468888 (= (seqFromListBHdTlConstructive!120 (h!22694 (t!143446 (t!143446 tokens!457))) (t!143446 (t!143446 (t!143446 tokens!457))) (_1!9781 lt!550153)) lt!550664)))

(declare-fun bs!390728 () Bool)

(assert (= bs!390728 d!468888))

(assert (=> bs!390728 m!1858597))

(assert (=> bs!390728 m!1858599))

(assert (=> bs!390728 m!1858597))

(declare-fun m!1859797 () Bool)

(assert (=> bs!390728 m!1859797))

(declare-fun m!1859799 () Bool)

(assert (=> bs!390728 m!1859799))

(assert (=> bs!390728 m!1858651))

(assert (=> bs!390728 m!1858599))

(assert (=> bs!390728 m!1858611))

(assert (=> bs!390728 m!1859797))

(assert (=> bs!390728 m!1859799))

(declare-fun m!1859801 () Bool)

(assert (=> bs!390728 m!1859801))

(declare-fun m!1859803 () Bool)

(assert (=> bs!390728 m!1859803))

(assert (=> b!1577540 d!468888))

(declare-fun bm!102670 () Bool)

(declare-fun call!102675 () Option!3092)

(assert (=> bm!102670 (= call!102675 (maxPrefixOneRule!720 thiss!17113 (h!22695 rules!1846) (originalCharacters!3857 (h!22694 (t!143446 tokens!457)))))))

(declare-fun b!1578061 () Bool)

(declare-fun e!1013681 () Bool)

(declare-fun e!1013680 () Bool)

(assert (=> b!1578061 (= e!1013681 e!1013680)))

(declare-fun res!703365 () Bool)

(assert (=> b!1578061 (=> (not res!703365) (not e!1013680))))

(declare-fun lt!550669 () Option!3092)

(assert (=> b!1578061 (= res!703365 (isDefined!2485 lt!550669))))

(declare-fun b!1578062 () Bool)

(assert (=> b!1578062 (= e!1013680 (contains!3020 rules!1846 (rule!4837 (_1!9785 (get!4945 lt!550669)))))))

(declare-fun b!1578063 () Bool)

(declare-fun e!1013682 () Option!3092)

(assert (=> b!1578063 (= e!1013682 call!102675)))

(declare-fun b!1578064 () Bool)

(declare-fun res!703363 () Bool)

(assert (=> b!1578064 (=> (not res!703363) (not e!1013680))))

(assert (=> b!1578064 (= res!703363 (< (size!13936 (_2!9785 (get!4945 lt!550669))) (size!13936 (originalCharacters!3857 (h!22694 (t!143446 tokens!457))))))))

(declare-fun b!1578066 () Bool)

(declare-fun res!703361 () Bool)

(assert (=> b!1578066 (=> (not res!703361) (not e!1013680))))

(assert (=> b!1578066 (= res!703361 (= (value!96398 (_1!9785 (get!4945 lt!550669))) (apply!4196 (transformation!3043 (rule!4837 (_1!9785 (get!4945 lt!550669)))) (seqFromList!1843 (originalCharacters!3857 (_1!9785 (get!4945 lt!550669)))))))))

(declare-fun b!1578067 () Bool)

(declare-fun res!703364 () Bool)

(assert (=> b!1578067 (=> (not res!703364) (not e!1013680))))

(assert (=> b!1578067 (= res!703364 (matchR!1906 (regex!3043 (rule!4837 (_1!9785 (get!4945 lt!550669)))) (list!6667 (charsOf!1692 (_1!9785 (get!4945 lt!550669))))))))

(declare-fun b!1578065 () Bool)

(declare-fun res!703366 () Bool)

(assert (=> b!1578065 (=> (not res!703366) (not e!1013680))))

(assert (=> b!1578065 (= res!703366 (= (++!4485 (list!6667 (charsOf!1692 (_1!9785 (get!4945 lt!550669)))) (_2!9785 (get!4945 lt!550669))) (originalCharacters!3857 (h!22694 (t!143446 tokens!457)))))))

(declare-fun d!468890 () Bool)

(assert (=> d!468890 e!1013681))

(declare-fun res!703360 () Bool)

(assert (=> d!468890 (=> res!703360 e!1013681)))

(assert (=> d!468890 (= res!703360 (isEmpty!10336 lt!550669))))

(assert (=> d!468890 (= lt!550669 e!1013682)))

(declare-fun c!255797 () Bool)

(assert (=> d!468890 (= c!255797 (and ((_ is Cons!17294) rules!1846) ((_ is Nil!17294) (t!143447 rules!1846))))))

(declare-fun lt!550667 () Unit!26821)

(declare-fun lt!550665 () Unit!26821)

(assert (=> d!468890 (= lt!550667 lt!550665)))

(assert (=> d!468890 (isPrefix!1303 (originalCharacters!3857 (h!22694 (t!143446 tokens!457))) (originalCharacters!3857 (h!22694 (t!143446 tokens!457))))))

(assert (=> d!468890 (= lt!550665 (lemmaIsPrefixRefl!905 (originalCharacters!3857 (h!22694 (t!143446 tokens!457))) (originalCharacters!3857 (h!22694 (t!143446 tokens!457)))))))

(assert (=> d!468890 (rulesValidInductive!906 thiss!17113 rules!1846)))

(assert (=> d!468890 (= (maxPrefix!1238 thiss!17113 rules!1846 (originalCharacters!3857 (h!22694 (t!143446 tokens!457)))) lt!550669)))

(declare-fun b!1578068 () Bool)

(declare-fun res!703362 () Bool)

(assert (=> b!1578068 (=> (not res!703362) (not e!1013680))))

(assert (=> b!1578068 (= res!703362 (= (list!6667 (charsOf!1692 (_1!9785 (get!4945 lt!550669)))) (originalCharacters!3857 (_1!9785 (get!4945 lt!550669)))))))

(declare-fun b!1578069 () Bool)

(declare-fun lt!550668 () Option!3092)

(declare-fun lt!550666 () Option!3092)

(assert (=> b!1578069 (= e!1013682 (ite (and ((_ is None!3091) lt!550668) ((_ is None!3091) lt!550666)) None!3091 (ite ((_ is None!3091) lt!550666) lt!550668 (ite ((_ is None!3091) lt!550668) lt!550666 (ite (>= (size!13932 (_1!9785 (v!23918 lt!550668))) (size!13932 (_1!9785 (v!23918 lt!550666)))) lt!550668 lt!550666)))))))

(assert (=> b!1578069 (= lt!550668 call!102675)))

(assert (=> b!1578069 (= lt!550666 (maxPrefix!1238 thiss!17113 (t!143447 rules!1846) (originalCharacters!3857 (h!22694 (t!143446 tokens!457)))))))

(assert (= (and d!468890 c!255797) b!1578063))

(assert (= (and d!468890 (not c!255797)) b!1578069))

(assert (= (or b!1578063 b!1578069) bm!102670))

(assert (= (and d!468890 (not res!703360)) b!1578061))

(assert (= (and b!1578061 res!703365) b!1578068))

(assert (= (and b!1578068 res!703362) b!1578064))

(assert (= (and b!1578064 res!703363) b!1578065))

(assert (= (and b!1578065 res!703366) b!1578066))

(assert (= (and b!1578066 res!703361) b!1578067))

(assert (= (and b!1578067 res!703364) b!1578062))

(declare-fun m!1859805 () Bool)

(assert (=> b!1578061 m!1859805))

(declare-fun m!1859807 () Bool)

(assert (=> b!1578065 m!1859807))

(declare-fun m!1859809 () Bool)

(assert (=> b!1578065 m!1859809))

(assert (=> b!1578065 m!1859809))

(declare-fun m!1859811 () Bool)

(assert (=> b!1578065 m!1859811))

(assert (=> b!1578065 m!1859811))

(declare-fun m!1859813 () Bool)

(assert (=> b!1578065 m!1859813))

(declare-fun m!1859815 () Bool)

(assert (=> d!468890 m!1859815))

(declare-fun m!1859817 () Bool)

(assert (=> d!468890 m!1859817))

(declare-fun m!1859819 () Bool)

(assert (=> d!468890 m!1859819))

(assert (=> d!468890 m!1858195))

(declare-fun m!1859821 () Bool)

(assert (=> b!1578069 m!1859821))

(assert (=> b!1578067 m!1859807))

(assert (=> b!1578067 m!1859809))

(assert (=> b!1578067 m!1859809))

(assert (=> b!1578067 m!1859811))

(assert (=> b!1578067 m!1859811))

(declare-fun m!1859823 () Bool)

(assert (=> b!1578067 m!1859823))

(declare-fun m!1859825 () Bool)

(assert (=> bm!102670 m!1859825))

(assert (=> b!1578068 m!1859807))

(assert (=> b!1578068 m!1859809))

(assert (=> b!1578068 m!1859809))

(assert (=> b!1578068 m!1859811))

(assert (=> b!1578064 m!1859807))

(declare-fun m!1859827 () Bool)

(assert (=> b!1578064 m!1859827))

(declare-fun m!1859829 () Bool)

(assert (=> b!1578064 m!1859829))

(assert (=> b!1578062 m!1859807))

(declare-fun m!1859831 () Bool)

(assert (=> b!1578062 m!1859831))

(assert (=> b!1578066 m!1859807))

(declare-fun m!1859833 () Bool)

(assert (=> b!1578066 m!1859833))

(assert (=> b!1578066 m!1859833))

(declare-fun m!1859835 () Bool)

(assert (=> b!1578066 m!1859835))

(assert (=> b!1577540 d!468890))

(declare-fun b!1578118 () Bool)

(declare-fun e!1013711 () Unit!26821)

(declare-fun Unit!26875 () Unit!26821)

(assert (=> b!1578118 (= e!1013711 Unit!26875)))

(declare-fun lt!550872 () List!17361)

(declare-fun lt!550916 () Token!5652)

(assert (=> b!1578118 (= lt!550872 (list!6667 (charsOf!1692 lt!550916)))))

(declare-fun lt!550908 () List!17361)

(assert (=> b!1578118 (= lt!550908 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))

(declare-fun lt!550917 () Unit!26821)

(declare-fun lt!550936 () List!17361)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!105 (LexerInterface!2672 List!17364 Rule!5886 List!17361 List!17361 List!17361 Rule!5886) Unit!26821)

(assert (=> b!1578118 (= lt!550917 (lemmaMaxPrefixOutputsMaxPrefix!105 thiss!17113 rules!1846 (rule!4837 lt!550916) lt!550872 lt!550936 lt!550908 (rule!4837 (h!22694 (t!143446 tokens!457)))))))

(assert (=> b!1578118 (not (matchR!1906 (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))) lt!550908))))

(declare-fun lt!550922 () Unit!26821)

(assert (=> b!1578118 (= lt!550922 lt!550917)))

(assert (=> b!1578118 false))

(declare-fun b!1578119 () Bool)

(declare-fun Unit!26876 () Unit!26821)

(assert (=> b!1578119 (= e!1013711 Unit!26876)))

(declare-fun b!1578120 () Bool)

(declare-fun e!1013716 () Unit!26821)

(declare-fun Unit!26877 () Unit!26821)

(assert (=> b!1578120 (= e!1013716 Unit!26877)))

(declare-fun c!255813 () Bool)

(declare-fun getIndex!83 (List!17364 Rule!5886) Int)

(assert (=> b!1578120 (= c!255813 (< (getIndex!83 rules!1846 (rule!4837 (h!22694 (t!143446 tokens!457)))) (getIndex!83 rules!1846 (rule!4837 lt!550916))))))

(declare-fun lt!550899 () Unit!26821)

(declare-fun e!1013712 () Unit!26821)

(assert (=> b!1578120 (= lt!550899 e!1013712)))

(declare-fun c!255815 () Bool)

(assert (=> b!1578120 (= c!255815 (< (getIndex!83 rules!1846 (rule!4837 lt!550916)) (getIndex!83 rules!1846 (rule!4837 (h!22694 (t!143446 tokens!457))))))))

(declare-fun lt!550888 () Unit!26821)

(declare-fun e!1013715 () Unit!26821)

(assert (=> b!1578120 (= lt!550888 e!1013715)))

(declare-fun c!255817 () Bool)

(assert (=> b!1578120 (= c!255817 (= (getIndex!83 rules!1846 (rule!4837 lt!550916)) (getIndex!83 rules!1846 (rule!4837 (h!22694 (t!143446 tokens!457))))))))

(declare-fun lt!550896 () Unit!26821)

(declare-fun e!1013714 () Unit!26821)

(assert (=> b!1578120 (= lt!550896 e!1013714)))

(assert (=> b!1578120 false))

(declare-fun b!1578121 () Bool)

(assert (=> b!1578121 false))

(declare-fun lt!550913 () Unit!26821)

(declare-fun lt!550873 () Unit!26821)

(assert (=> b!1578121 (= lt!550913 lt!550873)))

(declare-fun lt!550915 () List!17361)

(assert (=> b!1578121 (not (matchR!1906 (regex!3043 (rule!4837 lt!550916)) lt!550915))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!55 (LexerInterface!2672 List!17364 Rule!5886 List!17361 List!17361 Rule!5886) Unit!26821)

(assert (=> b!1578121 (= lt!550873 (lemmaMaxPrefNoSmallerRuleMatches!55 thiss!17113 rules!1846 (rule!4837 (h!22694 (t!143446 tokens!457))) lt!550915 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (rule!4837 lt!550916)))))

(assert (=> b!1578121 (= lt!550915 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))

(declare-fun Unit!26878 () Unit!26821)

(assert (=> b!1578121 (= e!1013715 Unit!26878)))

(declare-fun b!1578122 () Bool)

(declare-fun e!1013713 () Unit!26821)

(declare-fun Unit!26879 () Unit!26821)

(assert (=> b!1578122 (= e!1013713 Unit!26879)))

(declare-fun b!1578123 () Bool)

(declare-fun Unit!26880 () Unit!26821)

(assert (=> b!1578123 (= e!1013716 Unit!26880)))

(declare-fun b!1578124 () Bool)

(assert (=> b!1578124 false))

(declare-fun lt!550930 () Unit!26821)

(declare-fun lt!550895 () Unit!26821)

(assert (=> b!1578124 (= lt!550930 lt!550895)))

(assert (=> b!1578124 (= (rule!4837 lt!550916) (rule!4837 (h!22694 (t!143446 tokens!457))))))

(declare-fun lemmaSameIndexThenSameElement!31 (List!17364 Rule!5886 Rule!5886) Unit!26821)

(assert (=> b!1578124 (= lt!550895 (lemmaSameIndexThenSameElement!31 rules!1846 (rule!4837 lt!550916) (rule!4837 (h!22694 (t!143446 tokens!457)))))))

(declare-fun Unit!26881 () Unit!26821)

(assert (=> b!1578124 (= e!1013714 Unit!26881)))

(declare-fun b!1578125 () Bool)

(declare-fun Unit!26882 () Unit!26821)

(assert (=> b!1578125 (= e!1013712 Unit!26882)))

(declare-fun b!1578126 () Bool)

(declare-fun Unit!26883 () Unit!26821)

(assert (=> b!1578126 (= e!1013715 Unit!26883)))

(declare-fun b!1578127 () Bool)

(declare-fun e!1013710 () Bool)

(assert (=> b!1578127 (= e!1013710 (= (rule!4837 lt!550916) (get!4946 (getRuleFromTag!229 thiss!17113 rules!1846 (tag!3309 (rule!4837 lt!550916))))))))

(declare-fun b!1578128 () Bool)

(declare-fun res!703385 () Bool)

(assert (=> b!1578128 (=> (not res!703385) (not e!1013710))))

(assert (=> b!1578128 (= res!703385 (matchR!1906 (regex!3043 (get!4946 (getRuleFromTag!229 thiss!17113 rules!1846 (tag!3309 (rule!4837 lt!550916))))) (list!6667 (charsOf!1692 lt!550916))))))

(declare-fun d!468892 () Bool)

(assert (=> d!468892 (= (maxPrefix!1238 thiss!17113 rules!1846 (++!4485 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (list!6667 lt!550170))) (Some!3091 (tuple2!16767 (h!22694 (t!143446 tokens!457)) (list!6667 lt!550170))))))

(declare-fun lt!550914 () Unit!26821)

(declare-fun Unit!26884 () Unit!26821)

(assert (=> d!468892 (= lt!550914 Unit!26884)))

(declare-fun lt!550885 () Unit!26821)

(assert (=> d!468892 (= lt!550885 e!1013716)))

(declare-fun c!255814 () Bool)

(assert (=> d!468892 (= c!255814 (not (= (rule!4837 lt!550916) (rule!4837 (h!22694 (t!143446 tokens!457))))))))

(declare-fun lt!550909 () Unit!26821)

(declare-fun lt!550932 () Unit!26821)

(assert (=> d!468892 (= lt!550909 lt!550932)))

(declare-fun lt!550903 () List!17361)

(assert (=> d!468892 (= (list!6667 lt!550170) lt!550903)))

(declare-fun lemmaSamePrefixThenSameSuffix!637 (List!17361 List!17361 List!17361 List!17361 List!17361) Unit!26821)

(assert (=> d!468892 (= lt!550932 (lemmaSamePrefixThenSameSuffix!637 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (list!6667 lt!550170) (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) lt!550903 lt!550936))))

(declare-fun lt!550912 () Unit!26821)

(declare-fun lt!550905 () Unit!26821)

(assert (=> d!468892 (= lt!550912 lt!550905)))

(declare-fun lt!550940 () List!17361)

(declare-fun lt!550902 () List!17361)

(assert (=> d!468892 (= lt!550940 lt!550902)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!139 (List!17361 List!17361 List!17361) Unit!26821)

(assert (=> d!468892 (= lt!550905 (lemmaIsPrefixSameLengthThenSameList!139 lt!550940 lt!550902 lt!550936))))

(assert (=> d!468892 (= lt!550902 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))

(assert (=> d!468892 (= lt!550940 (list!6667 (charsOf!1692 lt!550916)))))

(declare-fun lt!550874 () Unit!26821)

(assert (=> d!468892 (= lt!550874 e!1013711)))

(declare-fun c!255818 () Bool)

(assert (=> d!468892 (= c!255818 (< (size!13937 (charsOf!1692 lt!550916)) (size!13937 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))

(declare-fun lt!550890 () Unit!26821)

(assert (=> d!468892 (= lt!550890 e!1013713)))

(declare-fun c!255816 () Bool)

(assert (=> d!468892 (= c!255816 (> (size!13937 (charsOf!1692 lt!550916)) (size!13937 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))

(declare-fun lt!550931 () Unit!26821)

(declare-fun lt!550897 () Unit!26821)

(assert (=> d!468892 (= lt!550931 lt!550897)))

(assert (=> d!468892 (matchR!1906 (rulesRegex!447 thiss!17113 rules!1846) (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!15 (LexerInterface!2672 List!17364 List!17361 Token!5652 Rule!5886 List!17361) Unit!26821)

(assert (=> d!468892 (= lt!550897 (lemmaMaxPrefixThenMatchesRulesRegex!15 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (h!22694 (t!143446 tokens!457)) (rule!4837 (h!22694 (t!143446 tokens!457))) Nil!17291))))

(declare-fun lt!550878 () Unit!26821)

(declare-fun lt!550906 () Unit!26821)

(assert (=> d!468892 (= lt!550878 lt!550906)))

(declare-fun lt!550875 () List!17361)

(assert (=> d!468892 (= lt!550903 lt!550875)))

(declare-fun lt!550937 () List!17361)

(declare-fun lt!550938 () List!17361)

(assert (=> d!468892 (= lt!550906 (lemmaSamePrefixThenSameSuffix!637 lt!550937 lt!550903 lt!550938 lt!550875 lt!550936))))

(declare-fun getSuffix!685 (List!17361 List!17361) List!17361)

(assert (=> d!468892 (= lt!550875 (getSuffix!685 lt!550936 (list!6667 (charsOf!1692 lt!550916))))))

(assert (=> d!468892 (= lt!550938 (list!6667 (charsOf!1692 lt!550916)))))

(assert (=> d!468892 (= lt!550937 (list!6667 (charsOf!1692 lt!550916)))))

(declare-fun lt!550923 () Unit!26821)

(declare-fun lt!550884 () Unit!26821)

(assert (=> d!468892 (= lt!550923 lt!550884)))

(declare-fun lt!550893 () List!17361)

(assert (=> d!468892 (= (maxPrefixOneRule!720 thiss!17113 (rule!4837 lt!550916) lt!550936) (Some!3091 (tuple2!16767 (Token!5653 (apply!4196 (transformation!3043 (rule!4837 lt!550916)) (seqFromList!1843 lt!550893)) (rule!4837 lt!550916) (size!13936 lt!550893) lt!550893) lt!550903)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!205 (LexerInterface!2672 List!17364 List!17361 List!17361 List!17361 Rule!5886) Unit!26821)

(assert (=> d!468892 (= lt!550884 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!205 thiss!17113 rules!1846 lt!550893 lt!550936 lt!550903 (rule!4837 lt!550916)))))

(assert (=> d!468892 (= lt!550893 (list!6667 (charsOf!1692 lt!550916)))))

(declare-fun lt!550921 () Unit!26821)

(declare-fun lemmaCharactersSize!311 (Token!5652) Unit!26821)

(assert (=> d!468892 (= lt!550921 (lemmaCharactersSize!311 lt!550916))))

(declare-fun lt!550889 () Unit!26821)

(declare-fun lemmaEqSameImage!164 (TokenValueInjection!5926 BalanceConc!11412 BalanceConc!11412) Unit!26821)

(assert (=> d!468892 (= lt!550889 (lemmaEqSameImage!164 (transformation!3043 (rule!4837 lt!550916)) (charsOf!1692 lt!550916) (seqFromList!1843 (originalCharacters!3857 lt!550916))))))

(declare-fun lt!550880 () Unit!26821)

(declare-fun lemmaSemiInverse!379 (TokenValueInjection!5926 BalanceConc!11412) Unit!26821)

(assert (=> d!468892 (= lt!550880 (lemmaSemiInverse!379 (transformation!3043 (rule!4837 lt!550916)) (charsOf!1692 lt!550916)))))

(declare-fun lt!550900 () Unit!26821)

(declare-fun lemmaInv!444 (TokenValueInjection!5926) Unit!26821)

(assert (=> d!468892 (= lt!550900 (lemmaInv!444 (transformation!3043 (rule!4837 lt!550916))))))

(declare-fun lt!550910 () Unit!26821)

(declare-fun lt!550877 () Unit!26821)

(assert (=> d!468892 (= lt!550910 lt!550877)))

(declare-fun lt!550871 () List!17361)

(assert (=> d!468892 (isPrefix!1303 lt!550871 (++!4485 lt!550871 lt!550903))))

(assert (=> d!468892 (= lt!550877 (lemmaConcatTwoListThenFirstIsPrefix!828 lt!550871 lt!550903))))

(assert (=> d!468892 (= lt!550871 (list!6667 (charsOf!1692 lt!550916)))))

(declare-fun lt!550881 () Unit!26821)

(declare-fun lt!550928 () Unit!26821)

(assert (=> d!468892 (= lt!550881 lt!550928)))

(assert (=> d!468892 e!1013710))

(declare-fun res!703384 () Bool)

(assert (=> d!468892 (=> (not res!703384) (not e!1013710))))

(assert (=> d!468892 (= res!703384 (isDefined!2486 (getRuleFromTag!229 thiss!17113 rules!1846 (tag!3309 (rule!4837 lt!550916)))))))

(assert (=> d!468892 (= lt!550928 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!229 thiss!17113 rules!1846 lt!550936 lt!550916))))

(declare-fun lt!550894 () Option!3092)

(assert (=> d!468892 (= lt!550903 (_2!9785 (get!4945 lt!550894)))))

(assert (=> d!468892 (= lt!550916 (_1!9785 (get!4945 lt!550894)))))

(declare-fun lt!550901 () Unit!26821)

(assert (=> d!468892 (= lt!550901 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!258 thiss!17113 rules!1846 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (list!6667 lt!550170)))))

(assert (=> d!468892 (= lt!550894 (maxPrefix!1238 thiss!17113 rules!1846 lt!550936))))

(declare-fun lt!550939 () Unit!26821)

(declare-fun lt!550887 () Unit!26821)

(assert (=> d!468892 (= lt!550939 lt!550887)))

(declare-fun lt!550934 () List!17361)

(assert (=> d!468892 (isPrefix!1303 lt!550934 (++!4485 lt!550934 (list!6667 lt!550170)))))

(assert (=> d!468892 (= lt!550887 (lemmaConcatTwoListThenFirstIsPrefix!828 lt!550934 (list!6667 lt!550170)))))

(assert (=> d!468892 (= lt!550934 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))

(assert (=> d!468892 (= lt!550936 (++!4485 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (list!6667 lt!550170)))))

(assert (=> d!468892 (not (isEmpty!10327 rules!1846))))

(assert (=> d!468892 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!56 thiss!17113 rules!1846 (h!22694 (t!143446 tokens!457)) (rule!4837 (h!22694 (t!143446 tokens!457))) (list!6667 lt!550170)) lt!550914)))

(declare-fun b!1578129 () Bool)

(assert (=> b!1578129 false))

(declare-fun lt!550926 () Unit!26821)

(declare-fun lt!550898 () Unit!26821)

(assert (=> b!1578129 (= lt!550926 lt!550898)))

(declare-fun lt!550925 () List!17361)

(assert (=> b!1578129 (not (matchR!1906 (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))) lt!550925))))

(assert (=> b!1578129 (= lt!550898 (lemmaMaxPrefNoSmallerRuleMatches!55 thiss!17113 rules!1846 (rule!4837 lt!550916) lt!550925 lt!550936 (rule!4837 (h!22694 (t!143446 tokens!457)))))))

(assert (=> b!1578129 (= lt!550925 (list!6667 (charsOf!1692 lt!550916)))))

(declare-fun Unit!26885 () Unit!26821)

(assert (=> b!1578129 (= e!1013712 Unit!26885)))

(declare-fun b!1578130 () Bool)

(declare-fun Unit!26886 () Unit!26821)

(assert (=> b!1578130 (= e!1013713 Unit!26886)))

(declare-fun lt!550876 () Unit!26821)

(assert (=> b!1578130 (= lt!550876 (lemmaMaxPrefixThenMatchesRulesRegex!15 thiss!17113 rules!1846 lt!550936 lt!550916 (rule!4837 lt!550916) lt!550903))))

(assert (=> b!1578130 (matchR!1906 (rulesRegex!447 thiss!17113 rules!1846) (list!6667 (charsOf!1692 lt!550916)))))

(declare-fun lt!550920 () Unit!26821)

(assert (=> b!1578130 (= lt!550920 lt!550876)))

(declare-fun lt!550933 () List!17361)

(assert (=> b!1578130 (= lt!550933 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))

(declare-fun lt!550904 () List!17361)

(assert (=> b!1578130 (= lt!550904 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))

(declare-fun lt!550892 () List!17361)

(assert (=> b!1578130 (= lt!550892 (getSuffix!685 lt!550936 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))

(declare-fun lt!550924 () Unit!26821)

(assert (=> b!1578130 (= lt!550924 (lemmaSamePrefixThenSameSuffix!637 lt!550933 (list!6667 lt!550170) lt!550904 lt!550892 lt!550936))))

(assert (=> b!1578130 (= (list!6667 lt!550170) lt!550892)))

(declare-fun lt!550879 () Unit!26821)

(assert (=> b!1578130 (= lt!550879 lt!550924)))

(declare-fun lt!550891 () List!17361)

(assert (=> b!1578130 (= lt!550891 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))))))

(declare-fun lt!550929 () Unit!26821)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!128 (List!17361 List!17361) Unit!26821)

(assert (=> b!1578130 (= lt!550929 (lemmaAddHeadSuffixToPrefixStillPrefix!128 lt!550891 lt!550936))))

(assert (=> b!1578130 (isPrefix!1303 (++!4485 lt!550891 (Cons!17291 (head!3172 (getSuffix!685 lt!550936 lt!550891)) Nil!17291)) lt!550936)))

(declare-fun lt!550883 () Unit!26821)

(assert (=> b!1578130 (= lt!550883 lt!550929)))

(declare-fun lt!550886 () List!17361)

(assert (=> b!1578130 (= lt!550886 (list!6667 (charsOf!1692 lt!550916)))))

(declare-fun lt!550882 () List!17361)

(assert (=> b!1578130 (= lt!550882 (++!4485 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (Cons!17291 (head!3172 (list!6667 lt!550170)) Nil!17291)))))

(declare-fun lt!550918 () Unit!26821)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!15 (List!17361 List!17361 List!17361) Unit!26821)

(assert (=> b!1578130 (= lt!550918 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!15 lt!550886 lt!550882 lt!550936))))

(assert (=> b!1578130 (isPrefix!1303 lt!550882 lt!550886)))

(declare-fun lt!550870 () Unit!26821)

(assert (=> b!1578130 (= lt!550870 lt!550918)))

(declare-fun lt!550907 () Regex!4371)

(assert (=> b!1578130 (= lt!550907 (rulesRegex!447 thiss!17113 rules!1846))))

(declare-fun lt!550911 () List!17361)

(assert (=> b!1578130 (= lt!550911 (++!4485 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) (Cons!17291 (head!3172 (list!6667 lt!550170)) Nil!17291)))))

(declare-fun lt!550927 () List!17361)

(assert (=> b!1578130 (= lt!550927 (list!6667 (charsOf!1692 lt!550916)))))

(declare-fun lt!550935 () Unit!26821)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!16 (Regex!4371 List!17361 List!17361) Unit!26821)

(assert (=> b!1578130 (= lt!550935 (lemmaNotPrefixMatchThenCannotMatchLonger!16 lt!550907 lt!550911 lt!550927))))

(assert (=> b!1578130 (not (matchR!1906 lt!550907 lt!550927))))

(declare-fun lt!550919 () Unit!26821)

(assert (=> b!1578130 (= lt!550919 lt!550935)))

(assert (=> b!1578130 false))

(declare-fun b!1578131 () Bool)

(declare-fun Unit!26887 () Unit!26821)

(assert (=> b!1578131 (= e!1013714 Unit!26887)))

(assert (= (and d!468892 res!703384) b!1578128))

(assert (= (and b!1578128 res!703385) b!1578127))

(assert (= (and d!468892 c!255816) b!1578130))

(assert (= (and d!468892 (not c!255816)) b!1578122))

(assert (= (and d!468892 c!255818) b!1578118))

(assert (= (and d!468892 (not c!255818)) b!1578119))

(assert (= (and d!468892 c!255814) b!1578120))

(assert (= (and d!468892 (not c!255814)) b!1578123))

(assert (= (and b!1578120 c!255813) b!1578129))

(assert (= (and b!1578120 (not c!255813)) b!1578125))

(assert (= (and b!1578120 c!255815) b!1578121))

(assert (= (and b!1578120 (not c!255815)) b!1578126))

(assert (= (and b!1578120 c!255817) b!1578124))

(assert (= (and b!1578120 (not c!255817)) b!1578131))

(declare-fun m!1859929 () Bool)

(assert (=> d!468892 m!1859929))

(assert (=> d!468892 m!1859485))

(assert (=> d!468892 m!1859505))

(declare-fun m!1859931 () Bool)

(assert (=> d!468892 m!1859931))

(declare-fun m!1859933 () Bool)

(assert (=> d!468892 m!1859933))

(assert (=> d!468892 m!1858617))

(declare-fun m!1859935 () Bool)

(assert (=> d!468892 m!1859935))

(declare-fun m!1859937 () Bool)

(assert (=> d!468892 m!1859937))

(declare-fun m!1859939 () Bool)

(assert (=> d!468892 m!1859939))

(assert (=> d!468892 m!1858499))

(assert (=> d!468892 m!1858613))

(declare-fun m!1859941 () Bool)

(assert (=> d!468892 m!1859941))

(declare-fun m!1859943 () Bool)

(assert (=> d!468892 m!1859943))

(declare-fun m!1859945 () Bool)

(assert (=> d!468892 m!1859945))

(declare-fun m!1859947 () Bool)

(assert (=> d!468892 m!1859947))

(declare-fun m!1859949 () Bool)

(assert (=> d!468892 m!1859949))

(assert (=> d!468892 m!1858499))

(assert (=> d!468892 m!1858613))

(declare-fun m!1859951 () Bool)

(assert (=> d!468892 m!1859951))

(declare-fun m!1859953 () Bool)

(assert (=> d!468892 m!1859953))

(declare-fun m!1859955 () Bool)

(assert (=> d!468892 m!1859955))

(declare-fun m!1859957 () Bool)

(assert (=> d!468892 m!1859957))

(declare-fun m!1859959 () Bool)

(assert (=> d!468892 m!1859959))

(declare-fun m!1859961 () Bool)

(assert (=> d!468892 m!1859961))

(declare-fun m!1859963 () Bool)

(assert (=> d!468892 m!1859963))

(declare-fun m!1859965 () Bool)

(assert (=> d!468892 m!1859965))

(assert (=> d!468892 m!1858709))

(declare-fun m!1859967 () Bool)

(assert (=> d!468892 m!1859967))

(assert (=> d!468892 m!1858613))

(assert (=> d!468892 m!1858617))

(assert (=> d!468892 m!1859485))

(assert (=> d!468892 m!1858617))

(assert (=> d!468892 m!1859943))

(declare-fun m!1859969 () Bool)

(assert (=> d!468892 m!1859969))

(assert (=> d!468892 m!1858613))

(assert (=> d!468892 m!1858617))

(assert (=> d!468892 m!1858613))

(declare-fun m!1859971 () Bool)

(assert (=> d!468892 m!1859971))

(assert (=> d!468892 m!1859931))

(assert (=> d!468892 m!1859967))

(declare-fun m!1859973 () Bool)

(assert (=> d!468892 m!1859973))

(declare-fun m!1859975 () Bool)

(assert (=> d!468892 m!1859975))

(assert (=> d!468892 m!1859931))

(assert (=> d!468892 m!1859957))

(assert (=> d!468892 m!1858613))

(assert (=> d!468892 m!1858617))

(assert (=> d!468892 m!1858627))

(assert (=> d!468892 m!1858499))

(assert (=> d!468892 m!1858501))

(assert (=> d!468892 m!1859937))

(declare-fun m!1859977 () Bool)

(assert (=> d!468892 m!1859977))

(declare-fun m!1859979 () Bool)

(assert (=> d!468892 m!1859979))

(assert (=> d!468892 m!1859953))

(assert (=> d!468892 m!1859931))

(declare-fun m!1859981 () Bool)

(assert (=> d!468892 m!1859981))

(assert (=> d!468892 m!1858183))

(assert (=> d!468892 m!1859969))

(declare-fun m!1859983 () Bool)

(assert (=> d!468892 m!1859983))

(assert (=> d!468892 m!1858709))

(assert (=> d!468892 m!1858613))

(declare-fun m!1859985 () Bool)

(assert (=> d!468892 m!1859985))

(declare-fun m!1859987 () Bool)

(assert (=> d!468892 m!1859987))

(assert (=> d!468892 m!1859931))

(declare-fun m!1859989 () Bool)

(assert (=> b!1578121 m!1859989))

(assert (=> b!1578121 m!1858499))

(assert (=> b!1578121 m!1858499))

(assert (=> b!1578121 m!1858613))

(assert (=> b!1578121 m!1858613))

(declare-fun m!1859991 () Bool)

(assert (=> b!1578121 m!1859991))

(assert (=> b!1578128 m!1859957))

(declare-fun m!1859993 () Bool)

(assert (=> b!1578128 m!1859993))

(assert (=> b!1578128 m!1859931))

(assert (=> b!1578128 m!1859957))

(assert (=> b!1578128 m!1859953))

(declare-fun m!1859995 () Bool)

(assert (=> b!1578128 m!1859995))

(assert (=> b!1578128 m!1859953))

(assert (=> b!1578128 m!1859931))

(declare-fun m!1859997 () Bool)

(assert (=> b!1578120 m!1859997))

(declare-fun m!1859999 () Bool)

(assert (=> b!1578120 m!1859999))

(declare-fun m!1860001 () Bool)

(assert (=> b!1578124 m!1860001))

(assert (=> b!1578118 m!1858499))

(assert (=> b!1578118 m!1858613))

(declare-fun m!1860003 () Bool)

(assert (=> b!1578118 m!1860003))

(assert (=> b!1578118 m!1859931))

(assert (=> b!1578118 m!1859957))

(assert (=> b!1578118 m!1859931))

(assert (=> b!1578118 m!1858499))

(declare-fun m!1860005 () Bool)

(assert (=> b!1578118 m!1860005))

(declare-fun m!1860007 () Bool)

(assert (=> b!1578130 m!1860007))

(assert (=> b!1578130 m!1858617))

(declare-fun m!1860009 () Bool)

(assert (=> b!1578130 m!1860009))

(assert (=> b!1578130 m!1858709))

(assert (=> b!1578130 m!1858709))

(assert (=> b!1578130 m!1859957))

(declare-fun m!1860011 () Bool)

(assert (=> b!1578130 m!1860011))

(assert (=> b!1578130 m!1859931))

(assert (=> b!1578130 m!1859957))

(declare-fun m!1860013 () Bool)

(assert (=> b!1578130 m!1860013))

(declare-fun m!1860015 () Bool)

(assert (=> b!1578130 m!1860015))

(declare-fun m!1860017 () Bool)

(assert (=> b!1578130 m!1860017))

(assert (=> b!1578130 m!1860017))

(declare-fun m!1860019 () Bool)

(assert (=> b!1578130 m!1860019))

(assert (=> b!1578130 m!1859931))

(declare-fun m!1860021 () Bool)

(assert (=> b!1578130 m!1860021))

(assert (=> b!1578130 m!1858499))

(assert (=> b!1578130 m!1858613))

(declare-fun m!1860023 () Bool)

(assert (=> b!1578130 m!1860023))

(assert (=> b!1578130 m!1858613))

(declare-fun m!1860025 () Bool)

(assert (=> b!1578130 m!1860025))

(declare-fun m!1860027 () Bool)

(assert (=> b!1578130 m!1860027))

(assert (=> b!1578130 m!1858617))

(assert (=> b!1578130 m!1858619))

(declare-fun m!1860029 () Bool)

(assert (=> b!1578130 m!1860029))

(assert (=> b!1578130 m!1858613))

(declare-fun m!1860031 () Bool)

(assert (=> b!1578130 m!1860031))

(assert (=> b!1578130 m!1858499))

(assert (=> b!1578130 m!1860013))

(declare-fun m!1860033 () Bool)

(assert (=> b!1578130 m!1860033))

(declare-fun m!1860035 () Bool)

(assert (=> b!1578129 m!1860035))

(declare-fun m!1860037 () Bool)

(assert (=> b!1578129 m!1860037))

(assert (=> b!1578129 m!1859931))

(assert (=> b!1578129 m!1859931))

(assert (=> b!1578129 m!1859957))

(assert (=> b!1578127 m!1859953))

(assert (=> b!1578127 m!1859953))

(assert (=> b!1578127 m!1859995))

(assert (=> b!1577540 d!468892))

(assert (=> b!1577540 d!468610))

(declare-fun d!468912 () Bool)

(assert (=> d!468912 (= (head!3172 (list!6667 lt!550170)) (h!22692 (list!6667 lt!550170)))))

(assert (=> b!1577540 d!468912))

(declare-fun b!1578133 () Bool)

(declare-fun res!703389 () Bool)

(declare-fun e!1013719 () Bool)

(assert (=> b!1578133 (=> (not res!703389) (not e!1013719))))

(assert (=> b!1578133 (= res!703389 (= (head!3172 lt!550147) (head!3172 (++!4485 lt!550147 lt!550156))))))

(declare-fun d!468914 () Bool)

(declare-fun e!1013717 () Bool)

(assert (=> d!468914 e!1013717))

(declare-fun res!703387 () Bool)

(assert (=> d!468914 (=> res!703387 e!1013717)))

(declare-fun lt!550941 () Bool)

(assert (=> d!468914 (= res!703387 (not lt!550941))))

(declare-fun e!1013718 () Bool)

(assert (=> d!468914 (= lt!550941 e!1013718)))

(declare-fun res!703386 () Bool)

(assert (=> d!468914 (=> res!703386 e!1013718)))

(assert (=> d!468914 (= res!703386 ((_ is Nil!17291) lt!550147))))

(assert (=> d!468914 (= (isPrefix!1303 lt!550147 (++!4485 lt!550147 lt!550156)) lt!550941)))

(declare-fun b!1578135 () Bool)

(assert (=> b!1578135 (= e!1013717 (>= (size!13936 (++!4485 lt!550147 lt!550156)) (size!13936 lt!550147)))))

(declare-fun b!1578134 () Bool)

(assert (=> b!1578134 (= e!1013719 (isPrefix!1303 (tail!2244 lt!550147) (tail!2244 (++!4485 lt!550147 lt!550156))))))

(declare-fun b!1578132 () Bool)

(assert (=> b!1578132 (= e!1013718 e!1013719)))

(declare-fun res!703388 () Bool)

(assert (=> b!1578132 (=> (not res!703388) (not e!1013719))))

(assert (=> b!1578132 (= res!703388 (not ((_ is Nil!17291) (++!4485 lt!550147 lt!550156))))))

(assert (= (and d!468914 (not res!703386)) b!1578132))

(assert (= (and b!1578132 res!703388) b!1578133))

(assert (= (and b!1578133 res!703389) b!1578134))

(assert (= (and d!468914 (not res!703387)) b!1578135))

(declare-fun m!1860039 () Bool)

(assert (=> b!1578133 m!1860039))

(assert (=> b!1578133 m!1858639))

(declare-fun m!1860041 () Bool)

(assert (=> b!1578133 m!1860041))

(assert (=> b!1578135 m!1858639))

(declare-fun m!1860043 () Bool)

(assert (=> b!1578135 m!1860043))

(assert (=> b!1578135 m!1859567))

(declare-fun m!1860045 () Bool)

(assert (=> b!1578134 m!1860045))

(assert (=> b!1578134 m!1858639))

(declare-fun m!1860047 () Bool)

(assert (=> b!1578134 m!1860047))

(assert (=> b!1578134 m!1860045))

(assert (=> b!1578134 m!1860047))

(declare-fun m!1860049 () Bool)

(assert (=> b!1578134 m!1860049))

(assert (=> b!1577540 d!468914))

(declare-fun d!468916 () Bool)

(assert (=> d!468916 (= (list!6668 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 (t!143446 tokens!457))))) (list!6672 (c!255651 (prepend!515 (seqFromList!1842 (t!143446 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 (t!143446 tokens!457)))))))))

(declare-fun bs!390733 () Bool)

(assert (= bs!390733 d!468916))

(declare-fun m!1860051 () Bool)

(assert (=> bs!390733 m!1860051))

(assert (=> b!1577540 d!468916))

(declare-fun d!468918 () Bool)

(declare-fun e!1013722 () Bool)

(assert (=> d!468918 e!1013722))

(declare-fun res!703392 () Bool)

(assert (=> d!468918 (=> (not res!703392) (not e!1013722))))

(declare-fun lt!550944 () BalanceConc!11412)

(assert (=> d!468918 (= res!703392 (= (list!6667 lt!550944) (Cons!17291 (apply!4190 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457)))) 0) Nil!17291)))))

(declare-fun singleton!568 (C!8916) BalanceConc!11412)

(assert (=> d!468918 (= lt!550944 (singleton!568 (apply!4190 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457)))) 0)))))

(assert (=> d!468918 (= (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 (t!143446 tokens!457)))) 0)) lt!550944)))

(declare-fun b!1578138 () Bool)

(declare-fun isBalanced!1688 (Conc!5734) Bool)

(assert (=> b!1578138 (= e!1013722 (isBalanced!1688 (c!255649 lt!550944)))))

(assert (= (and d!468918 res!703392) b!1578138))

(declare-fun m!1860053 () Bool)

(assert (=> d!468918 m!1860053))

(assert (=> d!468918 m!1858609))

(declare-fun m!1860055 () Bool)

(assert (=> d!468918 m!1860055))

(declare-fun m!1860057 () Bool)

(assert (=> b!1578138 m!1860057))

(assert (=> b!1577540 d!468918))

(declare-fun d!468920 () Bool)

(declare-fun charsToBigInt!1 (List!17362) Int)

(assert (=> d!468920 (= (inv!17 (value!96398 (h!22694 tokens!457))) (= (charsToBigInt!1 (text!22379 (value!96398 (h!22694 tokens!457)))) (value!96390 (value!96398 (h!22694 tokens!457)))))))

(declare-fun bs!390734 () Bool)

(assert (= bs!390734 d!468920))

(declare-fun m!1860059 () Bool)

(assert (=> bs!390734 m!1860059))

(assert (=> b!1577317 d!468920))

(declare-fun d!468922 () Bool)

(assert (=> d!468922 (= (inv!22712 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457)))) (isBalanced!1688 (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457))))))))

(declare-fun bs!390735 () Bool)

(assert (= bs!390735 d!468922))

(declare-fun m!1860061 () Bool)

(assert (=> bs!390735 m!1860061))

(assert (=> tb!88751 d!468922))

(assert (=> d!468620 d!468540))

(declare-fun b!1578139 () Bool)

(declare-fun lt!550945 () tuple2!16758)

(declare-fun e!1013723 () Bool)

(assert (=> b!1578139 (= e!1013723 (= (_2!9781 lt!550945) (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457)))))))

(declare-fun e!1013724 () Bool)

(declare-fun b!1578140 () Bool)

(assert (=> b!1578140 (= e!1013724 (= (list!6667 (_2!9781 lt!550945)) (_2!9784 (lexList!775 thiss!17113 rules!1846 (list!6667 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457))))))))))

(declare-fun b!1578141 () Bool)

(declare-fun e!1013725 () Bool)

(assert (=> b!1578141 (= e!1013725 (not (isEmpty!10332 (_1!9781 lt!550945))))))

(declare-fun d!468924 () Bool)

(assert (=> d!468924 e!1013724))

(declare-fun res!703394 () Bool)

(assert (=> d!468924 (=> (not res!703394) (not e!1013724))))

(assert (=> d!468924 (= res!703394 e!1013723)))

(declare-fun c!255819 () Bool)

(assert (=> d!468924 (= c!255819 (> (size!13938 (_1!9781 lt!550945)) 0))))

(assert (=> d!468924 (= lt!550945 (lexTailRecV2!498 thiss!17113 rules!1846 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457))) (BalanceConc!11413 Empty!5734) (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457))) (BalanceConc!11415 Empty!5735)))))

(assert (=> d!468924 (= (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457)))) lt!550945)))

(declare-fun b!1578142 () Bool)

(assert (=> b!1578142 (= e!1013723 e!1013725)))

(declare-fun res!703395 () Bool)

(assert (=> b!1578142 (= res!703395 (< (size!13937 (_2!9781 lt!550945)) (size!13937 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457))))))))

(assert (=> b!1578142 (=> (not res!703395) (not e!1013725))))

(declare-fun b!1578143 () Bool)

(declare-fun res!703393 () Bool)

(assert (=> b!1578143 (=> (not res!703393) (not e!1013724))))

(assert (=> b!1578143 (= res!703393 (= (list!6668 (_1!9781 lt!550945)) (_1!9784 (lexList!775 thiss!17113 rules!1846 (list!6667 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457))))))))))

(assert (= (and d!468924 c!255819) b!1578142))

(assert (= (and d!468924 (not c!255819)) b!1578139))

(assert (= (and b!1578142 res!703395) b!1578141))

(assert (= (and d!468924 res!703394) b!1578143))

(assert (= (and b!1578143 res!703393) b!1578140))

(declare-fun m!1860063 () Bool)

(assert (=> d!468924 m!1860063))

(assert (=> d!468924 m!1858591))

(assert (=> d!468924 m!1858591))

(declare-fun m!1860065 () Bool)

(assert (=> d!468924 m!1860065))

(declare-fun m!1860067 () Bool)

(assert (=> b!1578140 m!1860067))

(assert (=> b!1578140 m!1858591))

(declare-fun m!1860069 () Bool)

(assert (=> b!1578140 m!1860069))

(assert (=> b!1578140 m!1860069))

(declare-fun m!1860071 () Bool)

(assert (=> b!1578140 m!1860071))

(declare-fun m!1860073 () Bool)

(assert (=> b!1578142 m!1860073))

(assert (=> b!1578142 m!1858591))

(declare-fun m!1860075 () Bool)

(assert (=> b!1578142 m!1860075))

(declare-fun m!1860077 () Bool)

(assert (=> b!1578143 m!1860077))

(assert (=> b!1578143 m!1858591))

(assert (=> b!1578143 m!1860069))

(assert (=> b!1578143 m!1860069))

(assert (=> b!1578143 m!1860071))

(declare-fun m!1860079 () Bool)

(assert (=> b!1578141 m!1860079))

(assert (=> d!468620 d!468924))

(assert (=> d!468620 d!468882))

(assert (=> d!468620 d!468610))

(declare-fun d!468926 () Bool)

(assert (=> d!468926 (= (list!6668 (_1!9781 (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457)))))) (list!6672 (c!255651 (_1!9781 (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457))))))))))

(declare-fun bs!390736 () Bool)

(assert (= bs!390736 d!468926))

(declare-fun m!1860081 () Bool)

(assert (=> bs!390736 m!1860081))

(assert (=> d!468620 d!468926))

(declare-fun d!468928 () Bool)

(declare-fun e!1013726 () Bool)

(assert (=> d!468928 e!1013726))

(declare-fun res!703397 () Bool)

(assert (=> d!468928 (=> (not res!703397) (not e!1013726))))

(declare-fun lt!550946 () List!17361)

(assert (=> d!468928 (= res!703397 (= (content!2381 lt!550946) ((_ map or) (content!2381 (t!143444 lt!549916)) (content!2381 lt!549920))))))

(declare-fun e!1013727 () List!17361)

(assert (=> d!468928 (= lt!550946 e!1013727)))

(declare-fun c!255820 () Bool)

(assert (=> d!468928 (= c!255820 ((_ is Nil!17291) (t!143444 lt!549916)))))

(assert (=> d!468928 (= (++!4485 (t!143444 lt!549916) lt!549920) lt!550946)))

(declare-fun b!1578145 () Bool)

(assert (=> b!1578145 (= e!1013727 (Cons!17291 (h!22692 (t!143444 lt!549916)) (++!4485 (t!143444 (t!143444 lt!549916)) lt!549920)))))

(declare-fun b!1578144 () Bool)

(assert (=> b!1578144 (= e!1013727 lt!549920)))

(declare-fun b!1578147 () Bool)

(assert (=> b!1578147 (= e!1013726 (or (not (= lt!549920 Nil!17291)) (= lt!550946 (t!143444 lt!549916))))))

(declare-fun b!1578146 () Bool)

(declare-fun res!703396 () Bool)

(assert (=> b!1578146 (=> (not res!703396) (not e!1013726))))

(assert (=> b!1578146 (= res!703396 (= (size!13936 lt!550946) (+ (size!13936 (t!143444 lt!549916)) (size!13936 lt!549920))))))

(assert (= (and d!468928 c!255820) b!1578144))

(assert (= (and d!468928 (not c!255820)) b!1578145))

(assert (= (and d!468928 res!703397) b!1578146))

(assert (= (and b!1578146 res!703396) b!1578147))

(declare-fun m!1860083 () Bool)

(assert (=> d!468928 m!1860083))

(declare-fun m!1860085 () Bool)

(assert (=> d!468928 m!1860085))

(assert (=> d!468928 m!1858523))

(declare-fun m!1860087 () Bool)

(assert (=> b!1578145 m!1860087))

(declare-fun m!1860089 () Bool)

(assert (=> b!1578146 m!1860089))

(declare-fun m!1860091 () Bool)

(assert (=> b!1578146 m!1860091))

(assert (=> b!1578146 m!1858531))

(assert (=> b!1577440 d!468928))

(declare-fun d!468930 () Bool)

(assert (=> d!468930 true))

(declare-fun order!10209 () Int)

(declare-fun lambda!66424 () Int)

(declare-fun dynLambda!7676 (Int Int) Int)

(assert (=> d!468930 (< (dynLambda!7668 order!10193 (toValue!4442 (transformation!3043 (h!22695 rules!1846)))) (dynLambda!7676 order!10209 lambda!66424))))

(declare-fun Forall2!501 (Int) Bool)

(assert (=> d!468930 (= (equivClasses!1087 (toChars!4301 (transformation!3043 (h!22695 rules!1846))) (toValue!4442 (transformation!3043 (h!22695 rules!1846)))) (Forall2!501 lambda!66424))))

(declare-fun bs!390737 () Bool)

(assert (= bs!390737 d!468930))

(declare-fun m!1860093 () Bool)

(assert (=> bs!390737 m!1860093))

(assert (=> b!1577554 d!468930))

(declare-fun d!468932 () Bool)

(declare-fun e!1013730 () Bool)

(assert (=> d!468932 e!1013730))

(declare-fun res!703400 () Bool)

(assert (=> d!468932 (=> (not res!703400) (not e!1013730))))

(declare-fun lt!550947 () BalanceConc!11414)

(assert (=> d!468932 (= res!703400 (= (list!6668 lt!550947) (t!143446 (t!143446 tokens!457))))))

(assert (=> d!468932 (= lt!550947 (BalanceConc!11415 (fromList!359 (t!143446 (t!143446 tokens!457)))))))

(assert (=> d!468932 (= (fromListB!787 (t!143446 (t!143446 tokens!457))) lt!550947)))

(declare-fun b!1578152 () Bool)

(assert (=> b!1578152 (= e!1013730 (isBalanced!1686 (fromList!359 (t!143446 (t!143446 tokens!457)))))))

(assert (= (and d!468932 res!703400) b!1578152))

(declare-fun m!1860095 () Bool)

(assert (=> d!468932 m!1860095))

(declare-fun m!1860097 () Bool)

(assert (=> d!468932 m!1860097))

(assert (=> b!1578152 m!1860097))

(assert (=> b!1578152 m!1860097))

(declare-fun m!1860099 () Bool)

(assert (=> b!1578152 m!1860099))

(assert (=> d!468638 d!468932))

(declare-fun b!1578161 () Bool)

(declare-fun e!1013735 () List!17361)

(assert (=> b!1578161 (= e!1013735 Nil!17291)))

(declare-fun b!1578163 () Bool)

(declare-fun e!1013736 () List!17361)

(declare-fun list!6676 (IArray!11473) List!17361)

(assert (=> b!1578163 (= e!1013736 (list!6676 (xs!8538 (c!255649 lt!549926))))))

(declare-fun b!1578164 () Bool)

(assert (=> b!1578164 (= e!1013736 (++!4485 (list!6671 (left!13981 (c!255649 lt!549926))) (list!6671 (right!14311 (c!255649 lt!549926)))))))

(declare-fun b!1578162 () Bool)

(assert (=> b!1578162 (= e!1013735 e!1013736)))

(declare-fun c!255826 () Bool)

(assert (=> b!1578162 (= c!255826 ((_ is Leaf!8476) (c!255649 lt!549926)))))

(declare-fun d!468934 () Bool)

(declare-fun c!255825 () Bool)

(assert (=> d!468934 (= c!255825 ((_ is Empty!5734) (c!255649 lt!549926)))))

(assert (=> d!468934 (= (list!6671 (c!255649 lt!549926)) e!1013735)))

(assert (= (and d!468934 c!255825) b!1578161))

(assert (= (and d!468934 (not c!255825)) b!1578162))

(assert (= (and b!1578162 c!255826) b!1578163))

(assert (= (and b!1578162 (not c!255826)) b!1578164))

(declare-fun m!1860101 () Bool)

(assert (=> b!1578163 m!1860101))

(declare-fun m!1860103 () Bool)

(assert (=> b!1578164 m!1860103))

(declare-fun m!1860105 () Bool)

(assert (=> b!1578164 m!1860105))

(assert (=> b!1578164 m!1860103))

(assert (=> b!1578164 m!1860105))

(declare-fun m!1860107 () Bool)

(assert (=> b!1578164 m!1860107))

(assert (=> d!468616 d!468934))

(declare-fun d!468936 () Bool)

(assert (=> d!468936 (= (list!6667 (_2!9781 lt!550086)) (list!6671 (c!255649 (_2!9781 lt!550086))))))

(declare-fun bs!390738 () Bool)

(assert (= bs!390738 d!468936))

(declare-fun m!1860109 () Bool)

(assert (=> bs!390738 m!1860109))

(assert (=> b!1577458 d!468936))

(assert (=> b!1577458 d!468706))

(assert (=> b!1577458 d!468614))

(declare-fun d!468938 () Bool)

(declare-fun e!1013737 () Bool)

(assert (=> d!468938 e!1013737))

(declare-fun res!703401 () Bool)

(assert (=> d!468938 (=> (not res!703401) (not e!1013737))))

(declare-fun lt!550948 () BalanceConc!11414)

(assert (=> d!468938 (= res!703401 (= (list!6668 lt!550948) tokens!457))))

(assert (=> d!468938 (= lt!550948 (BalanceConc!11415 (fromList!359 tokens!457)))))

(assert (=> d!468938 (= (fromListB!787 tokens!457) lt!550948)))

(declare-fun b!1578165 () Bool)

(assert (=> b!1578165 (= e!1013737 (isBalanced!1686 (fromList!359 tokens!457)))))

(assert (= (and d!468938 res!703401) b!1578165))

(declare-fun m!1860111 () Bool)

(assert (=> d!468938 m!1860111))

(declare-fun m!1860113 () Bool)

(assert (=> d!468938 m!1860113))

(assert (=> b!1578165 m!1860113))

(assert (=> b!1578165 m!1860113))

(declare-fun m!1860115 () Bool)

(assert (=> b!1578165 m!1860115))

(assert (=> d!468606 d!468938))

(declare-fun d!468940 () Bool)

(declare-fun lt!550949 () Int)

(assert (=> d!468940 (>= lt!550949 0)))

(declare-fun e!1013738 () Int)

(assert (=> d!468940 (= lt!550949 e!1013738)))

(declare-fun c!255827 () Bool)

(assert (=> d!468940 (= c!255827 ((_ is Nil!17291) lt!549914))))

(assert (=> d!468940 (= (size!13936 lt!549914) lt!550949)))

(declare-fun b!1578166 () Bool)

(assert (=> b!1578166 (= e!1013738 0)))

(declare-fun b!1578167 () Bool)

(assert (=> b!1578167 (= e!1013738 (+ 1 (size!13936 (t!143444 lt!549914))))))

(assert (= (and d!468940 c!255827) b!1578166))

(assert (= (and d!468940 (not c!255827)) b!1578167))

(declare-fun m!1860117 () Bool)

(assert (=> b!1578167 m!1860117))

(assert (=> b!1577553 d!468940))

(declare-fun d!468942 () Bool)

(declare-fun lt!550950 () Int)

(assert (=> d!468942 (>= lt!550950 0)))

(declare-fun e!1013739 () Int)

(assert (=> d!468942 (= lt!550950 e!1013739)))

(declare-fun c!255828 () Bool)

(assert (=> d!468942 (= c!255828 ((_ is Nil!17291) lt!549916))))

(assert (=> d!468942 (= (size!13936 lt!549916) lt!550950)))

(declare-fun b!1578168 () Bool)

(assert (=> b!1578168 (= e!1013739 0)))

(declare-fun b!1578169 () Bool)

(assert (=> b!1578169 (= e!1013739 (+ 1 (size!13936 (t!143444 lt!549916))))))

(assert (= (and d!468942 c!255828) b!1578168))

(assert (= (and d!468942 (not c!255828)) b!1578169))

(assert (=> b!1578169 m!1860091))

(assert (=> b!1577553 d!468942))

(declare-fun d!468944 () Bool)

(declare-fun res!703402 () Bool)

(declare-fun e!1013740 () Bool)

(assert (=> d!468944 (=> (not res!703402) (not e!1013740))))

(assert (=> d!468944 (= res!703402 (not (isEmpty!10330 (originalCharacters!3857 (h!22694 (t!143446 tokens!457))))))))

(assert (=> d!468944 (= (inv!22708 (h!22694 (t!143446 tokens!457))) e!1013740)))

(declare-fun b!1578170 () Bool)

(declare-fun res!703403 () Bool)

(assert (=> b!1578170 (=> (not res!703403) (not e!1013740))))

(assert (=> b!1578170 (= res!703403 (= (originalCharacters!3857 (h!22694 (t!143446 tokens!457))) (list!6667 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))) (value!96398 (h!22694 (t!143446 tokens!457)))))))))

(declare-fun b!1578171 () Bool)

(assert (=> b!1578171 (= e!1013740 (= (size!13932 (h!22694 (t!143446 tokens!457))) (size!13936 (originalCharacters!3857 (h!22694 (t!143446 tokens!457))))))))

(assert (= (and d!468944 res!703402) b!1578170))

(assert (= (and b!1578170 res!703403) b!1578171))

(declare-fun b_lambda!49669 () Bool)

(assert (=> (not b_lambda!49669) (not b!1578170)))

(assert (=> b!1578170 t!143487))

(declare-fun b_and!110509 () Bool)

(assert (= b_and!110493 (and (=> t!143487 result!107422) b_and!110509)))

(assert (=> b!1578170 t!143489))

(declare-fun b_and!110511 () Bool)

(assert (= b_and!110495 (and (=> t!143489 result!107424) b_and!110511)))

(assert (=> b!1578170 t!143491))

(declare-fun b_and!110513 () Bool)

(assert (= b_and!110497 (and (=> t!143491 result!107426) b_and!110513)))

(assert (=> b!1578170 t!143493))

(declare-fun b_and!110515 () Bool)

(assert (= b_and!110499 (and (=> t!143493 result!107428) b_and!110515)))

(declare-fun m!1860119 () Bool)

(assert (=> d!468944 m!1860119))

(assert (=> b!1578170 m!1859253))

(assert (=> b!1578170 m!1859253))

(declare-fun m!1860121 () Bool)

(assert (=> b!1578170 m!1860121))

(assert (=> b!1578171 m!1859829))

(assert (=> b!1577579 d!468944))

(declare-fun d!468946 () Bool)

(declare-fun res!703408 () Bool)

(declare-fun e!1013745 () Bool)

(assert (=> d!468946 (=> res!703408 e!1013745)))

(assert (=> d!468946 (= res!703408 ((_ is Nil!17293) tokens!457))))

(assert (=> d!468946 (= (forall!3983 tokens!457 lambda!66401) e!1013745)))

(declare-fun b!1578176 () Bool)

(declare-fun e!1013746 () Bool)

(assert (=> b!1578176 (= e!1013745 e!1013746)))

(declare-fun res!703409 () Bool)

(assert (=> b!1578176 (=> (not res!703409) (not e!1013746))))

(declare-fun dynLambda!7677 (Int Token!5652) Bool)

(assert (=> b!1578176 (= res!703409 (dynLambda!7677 lambda!66401 (h!22694 tokens!457)))))

(declare-fun b!1578177 () Bool)

(assert (=> b!1578177 (= e!1013746 (forall!3983 (t!143446 tokens!457) lambda!66401))))

(assert (= (and d!468946 (not res!703408)) b!1578176))

(assert (= (and b!1578176 res!703409) b!1578177))

(declare-fun b_lambda!49671 () Bool)

(assert (=> (not b_lambda!49671) (not b!1578176)))

(declare-fun m!1860123 () Bool)

(assert (=> b!1578176 m!1860123))

(declare-fun m!1860125 () Bool)

(assert (=> b!1578177 m!1860125))

(assert (=> d!468542 d!468946))

(assert (=> d!468542 d!468540))

(declare-fun bs!390739 () Bool)

(declare-fun d!468948 () Bool)

(assert (= bs!390739 (and d!468948 d!468644)))

(declare-fun lambda!66427 () Int)

(assert (=> bs!390739 (= lambda!66427 lambda!66410)))

(assert (=> d!468948 true))

(declare-fun lt!550953 () Bool)

(assert (=> d!468948 (= lt!550953 (rulesValidInductive!906 thiss!17113 rules!1846))))

(assert (=> d!468948 (= lt!550953 (forall!3986 rules!1846 lambda!66427))))

(assert (=> d!468948 (= (rulesValid!1074 thiss!17113 rules!1846) lt!550953)))

(declare-fun bs!390740 () Bool)

(assert (= bs!390740 d!468948))

(assert (=> bs!390740 m!1858195))

(declare-fun m!1860127 () Bool)

(assert (=> bs!390740 m!1860127))

(assert (=> d!468646 d!468948))

(declare-fun b!1578190 () Bool)

(declare-fun res!703425 () Bool)

(declare-fun e!1013751 () Bool)

(assert (=> b!1578190 (=> (not res!703425) (not e!1013751))))

(assert (=> b!1578190 (= res!703425 (not (isEmpty!10335 (left!13982 (prepend!517 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 tokens!457)))))))))

(declare-fun b!1578191 () Bool)

(assert (=> b!1578191 (= e!1013751 (not (isEmpty!10335 (right!14312 (prepend!517 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 tokens!457)))))))))

(declare-fun d!468950 () Bool)

(declare-fun res!703423 () Bool)

(declare-fun e!1013752 () Bool)

(assert (=> d!468950 (=> res!703423 e!1013752)))

(assert (=> d!468950 (= res!703423 (not ((_ is Node!5735) (prepend!517 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 tokens!457))))))))

(assert (=> d!468950 (= (isBalanced!1686 (prepend!517 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 tokens!457)))) e!1013752)))

(declare-fun b!1578192 () Bool)

(declare-fun res!703424 () Bool)

(assert (=> b!1578192 (=> (not res!703424) (not e!1013751))))

(declare-fun height!845 (Conc!5735) Int)

(assert (=> b!1578192 (= res!703424 (<= (- (height!845 (left!13982 (prepend!517 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 tokens!457))))) (height!845 (right!14312 (prepend!517 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 tokens!457)))))) 1))))

(declare-fun b!1578193 () Bool)

(assert (=> b!1578193 (= e!1013752 e!1013751)))

(declare-fun res!703427 () Bool)

(assert (=> b!1578193 (=> (not res!703427) (not e!1013751))))

(assert (=> b!1578193 (= res!703427 (<= (- 1) (- (height!845 (left!13982 (prepend!517 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 tokens!457))))) (height!845 (right!14312 (prepend!517 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 tokens!457))))))))))

(declare-fun b!1578194 () Bool)

(declare-fun res!703422 () Bool)

(assert (=> b!1578194 (=> (not res!703422) (not e!1013751))))

(assert (=> b!1578194 (= res!703422 (isBalanced!1686 (left!13982 (prepend!517 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 tokens!457))))))))

(declare-fun b!1578195 () Bool)

(declare-fun res!703426 () Bool)

(assert (=> b!1578195 (=> (not res!703426) (not e!1013751))))

(assert (=> b!1578195 (= res!703426 (isBalanced!1686 (right!14312 (prepend!517 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 tokens!457))))))))

(assert (= (and d!468950 (not res!703423)) b!1578193))

(assert (= (and b!1578193 res!703427) b!1578192))

(assert (= (and b!1578192 res!703424) b!1578194))

(assert (= (and b!1578194 res!703422) b!1578195))

(assert (= (and b!1578195 res!703426) b!1578190))

(assert (= (and b!1578190 res!703425) b!1578191))

(declare-fun m!1860129 () Bool)

(assert (=> b!1578191 m!1860129))

(declare-fun m!1860131 () Bool)

(assert (=> b!1578195 m!1860131))

(declare-fun m!1860133 () Bool)

(assert (=> b!1578192 m!1860133))

(declare-fun m!1860135 () Bool)

(assert (=> b!1578192 m!1860135))

(assert (=> b!1578193 m!1860133))

(assert (=> b!1578193 m!1860135))

(declare-fun m!1860137 () Bool)

(assert (=> b!1578190 m!1860137))

(declare-fun m!1860139 () Bool)

(assert (=> b!1578194 m!1860139))

(assert (=> d!468632 d!468950))

(declare-fun d!468952 () Bool)

(declare-fun e!1013755 () Bool)

(assert (=> d!468952 e!1013755))

(declare-fun res!703430 () Bool)

(assert (=> d!468952 (=> (not res!703430) (not e!1013755))))

(declare-fun lt!550956 () Conc!5735)

(assert (=> d!468952 (= res!703430 (isBalanced!1686 lt!550956))))

(declare-fun ++!4490 (Conc!5735 Conc!5735) Conc!5735)

(declare-fun fill!81 (Int Token!5652) IArray!11475)

(assert (=> d!468952 (= lt!550956 (++!4490 (Leaf!8477 (fill!81 1 (h!22694 (t!143446 tokens!457))) 1) (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457))))))))

(assert (=> d!468952 (isBalanced!1686 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))))))

(assert (=> d!468952 (= (prepend!517 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 tokens!457))) lt!550956)))

(declare-fun b!1578198 () Bool)

(assert (=> b!1578198 (= e!1013755 (= (list!6672 lt!550956) (Cons!17293 (h!22694 (t!143446 tokens!457)) (list!6672 (c!255651 (seqFromList!1842 (t!143446 (t!143446 tokens!457))))))))))

(assert (= (and d!468952 res!703430) b!1578198))

(declare-fun m!1860141 () Bool)

(assert (=> d!468952 m!1860141))

(declare-fun m!1860143 () Bool)

(assert (=> d!468952 m!1860143))

(declare-fun m!1860145 () Bool)

(assert (=> d!468952 m!1860145))

(declare-fun m!1860147 () Bool)

(assert (=> d!468952 m!1860147))

(declare-fun m!1860149 () Bool)

(assert (=> b!1578198 m!1860149))

(assert (=> b!1578198 m!1858757))

(assert (=> d!468632 d!468952))

(declare-fun d!468954 () Bool)

(assert (=> d!468954 true))

(declare-fun lambda!66430 () Int)

(declare-fun order!10211 () Int)

(declare-fun dynLambda!7678 (Int Int) Int)

(assert (=> d!468954 (< (dynLambda!7670 order!10197 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457))))) (dynLambda!7678 order!10211 lambda!66430))))

(assert (=> d!468954 true))

(assert (=> d!468954 (< (dynLambda!7668 order!10193 (toValue!4442 (transformation!3043 (rule!4837 (h!22694 tokens!457))))) (dynLambda!7678 order!10211 lambda!66430))))

(declare-fun Forall!629 (Int) Bool)

(assert (=> d!468954 (= (semiInverseModEq!1146 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (toValue!4442 (transformation!3043 (rule!4837 (h!22694 tokens!457))))) (Forall!629 lambda!66430))))

(declare-fun bs!390741 () Bool)

(assert (= bs!390741 d!468954))

(declare-fun m!1860151 () Bool)

(assert (=> bs!390741 m!1860151))

(assert (=> d!468536 d!468954))

(declare-fun d!468956 () Bool)

(assert (=> d!468956 (= (head!3172 lt!549916) (h!22692 lt!549916))))

(assert (=> b!1577551 d!468956))

(declare-fun d!468958 () Bool)

(assert (=> d!468958 (= (head!3172 lt!549914) (h!22692 lt!549914))))

(assert (=> b!1577551 d!468958))

(declare-fun d!468960 () Bool)

(declare-fun charsToInt!0 (List!17362) (_ BitVec 32))

(assert (=> d!468960 (= (inv!16 (value!96398 (h!22694 tokens!457))) (= (charsToInt!0 (text!22378 (value!96398 (h!22694 tokens!457)))) (value!96389 (value!96398 (h!22694 tokens!457)))))))

(declare-fun bs!390742 () Bool)

(assert (= bs!390742 d!468960))

(declare-fun m!1860153 () Bool)

(assert (=> bs!390742 m!1860153))

(assert (=> b!1577314 d!468960))

(declare-fun d!468962 () Bool)

(declare-fun e!1013756 () Bool)

(assert (=> d!468962 e!1013756))

(declare-fun res!703431 () Bool)

(assert (=> d!468962 (=> (not res!703431) (not e!1013756))))

(declare-fun lt!550967 () BalanceConc!11412)

(assert (=> d!468962 (= res!703431 (= (list!6667 lt!550967) (Cons!17291 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0) Nil!17291)))))

(assert (=> d!468962 (= lt!550967 (singleton!568 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0)))))

(assert (=> d!468962 (= (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0)) lt!550967)))

(declare-fun b!1578203 () Bool)

(assert (=> b!1578203 (= e!1013756 (isBalanced!1688 (c!255649 lt!550967)))))

(assert (= (and d!468962 res!703431) b!1578203))

(declare-fun m!1860155 () Bool)

(assert (=> d!468962 m!1860155))

(assert (=> d!468962 m!1858711))

(declare-fun m!1860157 () Bool)

(assert (=> d!468962 m!1860157))

(declare-fun m!1860159 () Bool)

(assert (=> b!1578203 m!1860159))

(assert (=> d!468642 d!468962))

(declare-fun d!468964 () Bool)

(declare-fun lt!551194 () Bool)

(declare-fun prefixMatch!329 (Regex!4371 List!17361) Bool)

(assert (=> d!468964 (= lt!551194 (prefixMatch!329 (rulesRegex!447 thiss!17113 rules!1846) (list!6667 (++!4487 (charsOf!1692 (h!22694 tokens!457)) (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0))))))))

(declare-datatypes ((List!17367 0))(
  ( (Nil!17297) (Cons!17297 (h!22698 Regex!4371) (t!143544 List!17367)) )
))
(declare-datatypes ((Context!1640 0))(
  ( (Context!1641 (exprs!1320 List!17367)) )
))
(declare-fun prefixMatchZipperSequence!400 ((InoxSet Context!1640) BalanceConc!11412 Int) Bool)

(declare-fun focus!126 (Regex!4371) (InoxSet Context!1640))

(assert (=> d!468964 (= lt!551194 (prefixMatchZipperSequence!400 (focus!126 (rulesRegex!447 thiss!17113 rules!1846)) (++!4487 (charsOf!1692 (h!22694 tokens!457)) (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0))) 0))))

(declare-fun lt!551197 () Unit!26821)

(declare-fun lt!551198 () Unit!26821)

(assert (=> d!468964 (= lt!551197 lt!551198)))

(declare-fun lt!551195 () List!17361)

(declare-fun lt!551200 () (InoxSet Context!1640))

(declare-fun prefixMatchZipper!105 ((InoxSet Context!1640) List!17361) Bool)

(assert (=> d!468964 (= (prefixMatch!329 (rulesRegex!447 thiss!17113 rules!1846) lt!551195) (prefixMatchZipper!105 lt!551200 lt!551195))))

(declare-datatypes ((List!17368 0))(
  ( (Nil!17298) (Cons!17298 (h!22699 Context!1640) (t!143545 List!17368)) )
))
(declare-fun lt!551196 () List!17368)

(declare-fun prefixMatchZipperRegexEquiv!105 ((InoxSet Context!1640) List!17368 Regex!4371 List!17361) Unit!26821)

(assert (=> d!468964 (= lt!551198 (prefixMatchZipperRegexEquiv!105 lt!551200 lt!551196 (rulesRegex!447 thiss!17113 rules!1846) lt!551195))))

(assert (=> d!468964 (= lt!551195 (list!6667 (++!4487 (charsOf!1692 (h!22694 tokens!457)) (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0)))))))

(declare-fun toList!866 ((InoxSet Context!1640)) List!17368)

(assert (=> d!468964 (= lt!551196 (toList!866 (focus!126 (rulesRegex!447 thiss!17113 rules!1846))))))

(assert (=> d!468964 (= lt!551200 (focus!126 (rulesRegex!447 thiss!17113 rules!1846)))))

(declare-fun lt!551192 () Unit!26821)

(declare-fun lt!551191 () Unit!26821)

(assert (=> d!468964 (= lt!551192 lt!551191)))

(declare-fun lt!551193 () (InoxSet Context!1640))

(declare-fun lt!551199 () Int)

(declare-fun dropList!507 (BalanceConc!11412 Int) List!17361)

(assert (=> d!468964 (= (prefixMatchZipper!105 lt!551193 (dropList!507 (++!4487 (charsOf!1692 (h!22694 tokens!457)) (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0))) lt!551199)) (prefixMatchZipperSequence!400 lt!551193 (++!4487 (charsOf!1692 (h!22694 tokens!457)) (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0))) lt!551199))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!105 ((InoxSet Context!1640) BalanceConc!11412 Int) Unit!26821)

(assert (=> d!468964 (= lt!551191 (lemmaprefixMatchZipperSequenceEquivalent!105 lt!551193 (++!4487 (charsOf!1692 (h!22694 tokens!457)) (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0))) lt!551199))))

(assert (=> d!468964 (= lt!551199 0)))

(assert (=> d!468964 (= lt!551193 (focus!126 (rulesRegex!447 thiss!17113 rules!1846)))))

(assert (=> d!468964 (validRegex!1729 (rulesRegex!447 thiss!17113 rules!1846))))

(assert (=> d!468964 (= (prefixMatchZipperSequence!399 (rulesRegex!447 thiss!17113 rules!1846) (++!4487 (charsOf!1692 (h!22694 tokens!457)) (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0)))) lt!551194)))

(declare-fun bs!390743 () Bool)

(assert (= bs!390743 d!468964))

(assert (=> bs!390743 m!1858709))

(declare-fun m!1860161 () Bool)

(assert (=> bs!390743 m!1860161))

(assert (=> bs!390743 m!1858715))

(declare-fun m!1860163 () Bool)

(assert (=> bs!390743 m!1860163))

(assert (=> bs!390743 m!1858709))

(declare-fun m!1860165 () Bool)

(assert (=> bs!390743 m!1860165))

(declare-fun m!1860167 () Bool)

(assert (=> bs!390743 m!1860167))

(declare-fun m!1860169 () Bool)

(assert (=> bs!390743 m!1860169))

(assert (=> bs!390743 m!1858715))

(declare-fun m!1860171 () Bool)

(assert (=> bs!390743 m!1860171))

(assert (=> bs!390743 m!1858709))

(declare-fun m!1860173 () Bool)

(assert (=> bs!390743 m!1860173))

(assert (=> bs!390743 m!1858715))

(assert (=> bs!390743 m!1860167))

(assert (=> bs!390743 m!1858709))

(declare-fun m!1860175 () Bool)

(assert (=> bs!390743 m!1860175))

(declare-fun m!1860177 () Bool)

(assert (=> bs!390743 m!1860177))

(assert (=> bs!390743 m!1860173))

(assert (=> bs!390743 m!1858715))

(declare-fun m!1860179 () Bool)

(assert (=> bs!390743 m!1860179))

(assert (=> bs!390743 m!1858715))

(declare-fun m!1860181 () Bool)

(assert (=> bs!390743 m!1860181))

(assert (=> bs!390743 m!1858709))

(assert (=> bs!390743 m!1860181))

(declare-fun m!1860183 () Bool)

(assert (=> bs!390743 m!1860183))

(assert (=> bs!390743 m!1860173))

(declare-fun m!1860185 () Bool)

(assert (=> bs!390743 m!1860185))

(assert (=> d!468642 d!468964))

(declare-fun b!1578258 () Bool)

(declare-fun res!703448 () Bool)

(declare-fun e!1013782 () Bool)

(assert (=> b!1578258 (=> (not res!703448) (not e!1013782))))

(declare-fun ++!4491 (Conc!5734 Conc!5734) Conc!5734)

(assert (=> b!1578258 (= res!703448 (isBalanced!1688 (++!4491 (c!255649 (charsOf!1692 (h!22694 tokens!457))) (c!255649 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0))))))))

(declare-fun b!1578260 () Bool)

(declare-fun res!703451 () Bool)

(assert (=> b!1578260 (=> (not res!703451) (not e!1013782))))

(declare-fun height!846 (Conc!5734) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1578260 (= res!703451 (>= (height!846 (++!4491 (c!255649 (charsOf!1692 (h!22694 tokens!457))) (c!255649 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0))))) (max!0 (height!846 (c!255649 (charsOf!1692 (h!22694 tokens!457)))) (height!846 (c!255649 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0)))))))))

(declare-fun d!468966 () Bool)

(assert (=> d!468966 e!1013782))

(declare-fun res!703450 () Bool)

(assert (=> d!468966 (=> (not res!703450) (not e!1013782))))

(declare-fun appendAssocInst!383 (Conc!5734 Conc!5734) Bool)

(assert (=> d!468966 (= res!703450 (appendAssocInst!383 (c!255649 (charsOf!1692 (h!22694 tokens!457))) (c!255649 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0)))))))

(declare-fun lt!551204 () BalanceConc!11412)

(assert (=> d!468966 (= lt!551204 (BalanceConc!11413 (++!4491 (c!255649 (charsOf!1692 (h!22694 tokens!457))) (c!255649 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0))))))))

(assert (=> d!468966 (= (++!4487 (charsOf!1692 (h!22694 tokens!457)) (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0))) lt!551204)))

(declare-fun b!1578259 () Bool)

(declare-fun res!703449 () Bool)

(assert (=> b!1578259 (=> (not res!703449) (not e!1013782))))

(assert (=> b!1578259 (= res!703449 (<= (height!846 (++!4491 (c!255649 (charsOf!1692 (h!22694 tokens!457))) (c!255649 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0))))) (+ (max!0 (height!846 (c!255649 (charsOf!1692 (h!22694 tokens!457)))) (height!846 (c!255649 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0))))) 1)))))

(declare-fun b!1578261 () Bool)

(assert (=> b!1578261 (= e!1013782 (= (list!6667 lt!551204) (++!4485 (list!6667 (charsOf!1692 (h!22694 tokens!457))) (list!6667 (singletonSeq!1381 (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0))))))))

(assert (= (and d!468966 res!703450) b!1578258))

(assert (= (and b!1578258 res!703448) b!1578259))

(assert (= (and b!1578259 res!703449) b!1578260))

(assert (= (and b!1578260 res!703451) b!1578261))

(declare-fun m!1860311 () Bool)

(assert (=> d!468966 m!1860311))

(declare-fun m!1860313 () Bool)

(assert (=> d!468966 m!1860313))

(assert (=> b!1578259 m!1860313))

(declare-fun m!1860315 () Bool)

(assert (=> b!1578259 m!1860315))

(declare-fun m!1860317 () Bool)

(assert (=> b!1578259 m!1860317))

(assert (=> b!1578259 m!1860315))

(declare-fun m!1860319 () Bool)

(assert (=> b!1578259 m!1860319))

(assert (=> b!1578259 m!1860313))

(declare-fun m!1860321 () Bool)

(assert (=> b!1578259 m!1860321))

(assert (=> b!1578259 m!1860317))

(assert (=> b!1578258 m!1860313))

(assert (=> b!1578258 m!1860313))

(declare-fun m!1860323 () Bool)

(assert (=> b!1578258 m!1860323))

(declare-fun m!1860325 () Bool)

(assert (=> b!1578261 m!1860325))

(assert (=> b!1578261 m!1858199))

(assert (=> b!1578261 m!1858211))

(assert (=> b!1578261 m!1858713))

(declare-fun m!1860327 () Bool)

(assert (=> b!1578261 m!1860327))

(assert (=> b!1578261 m!1858211))

(assert (=> b!1578261 m!1860327))

(declare-fun m!1860329 () Bool)

(assert (=> b!1578261 m!1860329))

(assert (=> b!1578260 m!1860313))

(assert (=> b!1578260 m!1860315))

(assert (=> b!1578260 m!1860317))

(assert (=> b!1578260 m!1860315))

(assert (=> b!1578260 m!1860319))

(assert (=> b!1578260 m!1860313))

(assert (=> b!1578260 m!1860321))

(assert (=> b!1578260 m!1860317))

(assert (=> d!468642 d!468966))

(assert (=> d!468642 d!468608))

(declare-fun d!468974 () Bool)

(declare-fun lt!551205 () C!8916)

(assert (=> d!468974 (= lt!551205 (apply!4193 (list!6667 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) 0))))

(assert (=> d!468974 (= lt!551205 (apply!4194 (c!255649 (charsOf!1692 (h!22694 (t!143446 tokens!457)))) 0))))

(declare-fun e!1013783 () Bool)

(assert (=> d!468974 e!1013783))

(declare-fun res!703452 () Bool)

(assert (=> d!468974 (=> (not res!703452) (not e!1013783))))

(assert (=> d!468974 (= res!703452 (<= 0 0))))

(assert (=> d!468974 (= (apply!4190 (charsOf!1692 (h!22694 (t!143446 tokens!457))) 0) lt!551205)))

(declare-fun b!1578262 () Bool)

(assert (=> b!1578262 (= e!1013783 (< 0 (size!13937 (charsOf!1692 (h!22694 (t!143446 tokens!457))))))))

(assert (= (and d!468974 res!703452) b!1578262))

(assert (=> d!468974 m!1858499))

(assert (=> d!468974 m!1858613))

(assert (=> d!468974 m!1858613))

(declare-fun m!1860331 () Bool)

(assert (=> d!468974 m!1860331))

(declare-fun m!1860333 () Bool)

(assert (=> d!468974 m!1860333))

(assert (=> b!1578262 m!1858499))

(assert (=> b!1578262 m!1858501))

(assert (=> d!468642 d!468974))

(declare-fun d!468976 () Bool)

(declare-fun lt!551208 () Unit!26821)

(declare-fun lemma!190 (List!17364 LexerInterface!2672 List!17364) Unit!26821)

(assert (=> d!468976 (= lt!551208 (lemma!190 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!66433 () Int)

(declare-fun generalisedUnion!198 (List!17367) Regex!4371)

(declare-fun map!3591 (List!17364 Int) List!17367)

(assert (=> d!468976 (= (rulesRegex!447 thiss!17113 rules!1846) (generalisedUnion!198 (map!3591 rules!1846 lambda!66433)))))

(declare-fun bs!390745 () Bool)

(assert (= bs!390745 d!468976))

(declare-fun m!1860335 () Bool)

(assert (=> bs!390745 m!1860335))

(declare-fun m!1860337 () Bool)

(assert (=> bs!390745 m!1860337))

(assert (=> bs!390745 m!1860337))

(declare-fun m!1860339 () Bool)

(assert (=> bs!390745 m!1860339))

(assert (=> d!468642 d!468976))

(assert (=> d!468642 d!468788))

(declare-fun d!468978 () Bool)

(declare-fun c!255853 () Bool)

(assert (=> d!468978 (= c!255853 ((_ is Nil!17291) lt!550080))))

(declare-fun e!1013786 () (InoxSet C!8916))

(assert (=> d!468978 (= (content!2381 lt!550080) e!1013786)))

(declare-fun b!1578267 () Bool)

(assert (=> b!1578267 (= e!1013786 ((as const (Array C!8916 Bool)) false))))

(declare-fun b!1578268 () Bool)

(assert (=> b!1578268 (= e!1013786 ((_ map or) (store ((as const (Array C!8916 Bool)) false) (h!22692 lt!550080) true) (content!2381 (t!143444 lt!550080))))))

(assert (= (and d!468978 c!255853) b!1578267))

(assert (= (and d!468978 (not c!255853)) b!1578268))

(declare-fun m!1860341 () Bool)

(assert (=> b!1578268 m!1860341))

(declare-fun m!1860343 () Bool)

(assert (=> b!1578268 m!1860343))

(assert (=> d!468600 d!468978))

(declare-fun d!468980 () Bool)

(declare-fun c!255854 () Bool)

(assert (=> d!468980 (= c!255854 ((_ is Nil!17291) lt!549916))))

(declare-fun e!1013787 () (InoxSet C!8916))

(assert (=> d!468980 (= (content!2381 lt!549916) e!1013787)))

(declare-fun b!1578269 () Bool)

(assert (=> b!1578269 (= e!1013787 ((as const (Array C!8916 Bool)) false))))

(declare-fun b!1578270 () Bool)

(assert (=> b!1578270 (= e!1013787 ((_ map or) (store ((as const (Array C!8916 Bool)) false) (h!22692 lt!549916) true) (content!2381 (t!143444 lt!549916))))))

(assert (= (and d!468980 c!255854) b!1578269))

(assert (= (and d!468980 (not c!255854)) b!1578270))

(declare-fun m!1860345 () Bool)

(assert (=> b!1578270 m!1860345))

(assert (=> b!1578270 m!1860085))

(assert (=> d!468600 d!468980))

(declare-fun d!468982 () Bool)

(declare-fun c!255855 () Bool)

(assert (=> d!468982 (= c!255855 ((_ is Nil!17291) lt!549920))))

(declare-fun e!1013788 () (InoxSet C!8916))

(assert (=> d!468982 (= (content!2381 lt!549920) e!1013788)))

(declare-fun b!1578271 () Bool)

(assert (=> b!1578271 (= e!1013788 ((as const (Array C!8916 Bool)) false))))

(declare-fun b!1578272 () Bool)

(assert (=> b!1578272 (= e!1013788 ((_ map or) (store ((as const (Array C!8916 Bool)) false) (h!22692 lt!549920) true) (content!2381 (t!143444 lt!549920))))))

(assert (= (and d!468982 c!255855) b!1578271))

(assert (= (and d!468982 (not c!255855)) b!1578272))

(declare-fun m!1860347 () Bool)

(assert (=> b!1578272 m!1860347))

(declare-fun m!1860349 () Bool)

(assert (=> b!1578272 m!1860349))

(assert (=> d!468600 d!468982))

(declare-fun d!468984 () Bool)

(declare-fun lt!551209 () Int)

(assert (=> d!468984 (= lt!551209 (size!13936 (list!6667 (_2!9781 lt!550086))))))

(assert (=> d!468984 (= lt!551209 (size!13941 (c!255649 (_2!9781 lt!550086))))))

(assert (=> d!468984 (= (size!13937 (_2!9781 lt!550086)) lt!551209)))

(declare-fun bs!390746 () Bool)

(assert (= bs!390746 d!468984))

(assert (=> bs!390746 m!1858543))

(assert (=> bs!390746 m!1858543))

(declare-fun m!1860351 () Bool)

(assert (=> bs!390746 m!1860351))

(declare-fun m!1860353 () Bool)

(assert (=> bs!390746 m!1860353))

(assert (=> b!1577460 d!468984))

(declare-fun d!468986 () Bool)

(declare-fun lt!551210 () Int)

(assert (=> d!468986 (= lt!551210 (size!13936 (list!6667 lt!549917)))))

(assert (=> d!468986 (= lt!551210 (size!13941 (c!255649 lt!549917)))))

(assert (=> d!468986 (= (size!13937 lt!549917) lt!551210)))

(declare-fun bs!390747 () Bool)

(assert (= bs!390747 d!468986))

(assert (=> bs!390747 m!1858209))

(assert (=> bs!390747 m!1858209))

(assert (=> bs!390747 m!1858991))

(declare-fun m!1860355 () Bool)

(assert (=> bs!390747 m!1860355))

(assert (=> b!1577460 d!468986))

(declare-fun d!468988 () Bool)

(assert (=> d!468988 (= (inv!22704 (tag!3309 (rule!4837 (h!22694 (t!143446 tokens!457))))) (= (mod (str.len (value!96397 (tag!3309 (rule!4837 (h!22694 (t!143446 tokens!457)))))) 2) 0))))

(assert (=> b!1577581 d!468988))

(declare-fun d!468990 () Bool)

(declare-fun res!703453 () Bool)

(declare-fun e!1013789 () Bool)

(assert (=> d!468990 (=> (not res!703453) (not e!1013789))))

(assert (=> d!468990 (= res!703453 (semiInverseModEq!1146 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))) (toValue!4442 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))))))))

(assert (=> d!468990 (= (inv!22707 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))) e!1013789)))

(declare-fun b!1578273 () Bool)

(assert (=> b!1578273 (= e!1013789 (equivClasses!1087 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))) (toValue!4442 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))))))))

(assert (= (and d!468990 res!703453) b!1578273))

(declare-fun m!1860357 () Bool)

(assert (=> d!468990 m!1860357))

(declare-fun m!1860359 () Bool)

(assert (=> b!1578273 m!1860359))

(assert (=> b!1577581 d!468990))

(declare-fun bs!390748 () Bool)

(declare-fun d!468992 () Bool)

(assert (= bs!390748 (and d!468992 d!468644)))

(declare-fun lambda!66434 () Int)

(assert (=> bs!390748 (= lambda!66434 lambda!66410)))

(declare-fun bs!390749 () Bool)

(assert (= bs!390749 (and d!468992 d!468948)))

(assert (=> bs!390749 (= lambda!66434 lambda!66427)))

(assert (=> d!468992 true))

(declare-fun lt!551211 () Bool)

(assert (=> d!468992 (= lt!551211 (forall!3986 (t!143447 rules!1846) lambda!66434))))

(declare-fun e!1013791 () Bool)

(assert (=> d!468992 (= lt!551211 e!1013791)))

(declare-fun res!703455 () Bool)

(assert (=> d!468992 (=> res!703455 e!1013791)))

(assert (=> d!468992 (= res!703455 (not ((_ is Cons!17294) (t!143447 rules!1846))))))

(assert (=> d!468992 (= (rulesValidInductive!906 thiss!17113 (t!143447 rules!1846)) lt!551211)))

(declare-fun b!1578274 () Bool)

(declare-fun e!1013790 () Bool)

(assert (=> b!1578274 (= e!1013791 e!1013790)))

(declare-fun res!703454 () Bool)

(assert (=> b!1578274 (=> (not res!703454) (not e!1013790))))

(assert (=> b!1578274 (= res!703454 (ruleValid!705 thiss!17113 (h!22695 (t!143447 rules!1846))))))

(declare-fun b!1578275 () Bool)

(assert (=> b!1578275 (= e!1013790 (rulesValidInductive!906 thiss!17113 (t!143447 (t!143447 rules!1846))))))

(assert (= (and d!468992 (not res!703455)) b!1578274))

(assert (= (and b!1578274 res!703454) b!1578275))

(declare-fun m!1860361 () Bool)

(assert (=> d!468992 m!1860361))

(declare-fun m!1860363 () Bool)

(assert (=> b!1578274 m!1860363))

(declare-fun m!1860365 () Bool)

(assert (=> b!1578275 m!1860365))

(assert (=> b!1577563 d!468992))

(declare-fun bs!390750 () Bool)

(declare-fun d!468994 () Bool)

(assert (= bs!390750 (and d!468994 d!468954)))

(declare-fun lambda!66435 () Int)

(assert (=> bs!390750 (= (and (= (toChars!4301 (transformation!3043 (h!22695 rules!1846))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457))))) (= (toValue!4442 (transformation!3043 (h!22695 rules!1846))) (toValue!4442 (transformation!3043 (rule!4837 (h!22694 tokens!457)))))) (= lambda!66435 lambda!66430))))

(assert (=> d!468994 true))

(assert (=> d!468994 (< (dynLambda!7670 order!10197 (toChars!4301 (transformation!3043 (h!22695 rules!1846)))) (dynLambda!7678 order!10211 lambda!66435))))

(assert (=> d!468994 true))

(assert (=> d!468994 (< (dynLambda!7668 order!10193 (toValue!4442 (transformation!3043 (h!22695 rules!1846)))) (dynLambda!7678 order!10211 lambda!66435))))

(assert (=> d!468994 (= (semiInverseModEq!1146 (toChars!4301 (transformation!3043 (h!22695 rules!1846))) (toValue!4442 (transformation!3043 (h!22695 rules!1846)))) (Forall!629 lambda!66435))))

(declare-fun bs!390751 () Bool)

(assert (= bs!390751 d!468994))

(declare-fun m!1860367 () Bool)

(assert (=> bs!390751 m!1860367))

(assert (=> d!468630 d!468994))

(declare-fun bs!390752 () Bool)

(declare-fun d!468996 () Bool)

(assert (= bs!390752 (and d!468996 d!468930)))

(declare-fun lambda!66436 () Int)

(assert (=> bs!390752 (= (= (toValue!4442 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (toValue!4442 (transformation!3043 (h!22695 rules!1846)))) (= lambda!66436 lambda!66424))))

(assert (=> d!468996 true))

(assert (=> d!468996 (< (dynLambda!7668 order!10193 (toValue!4442 (transformation!3043 (rule!4837 (h!22694 tokens!457))))) (dynLambda!7676 order!10209 lambda!66436))))

(assert (=> d!468996 (= (equivClasses!1087 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (toValue!4442 (transformation!3043 (rule!4837 (h!22694 tokens!457))))) (Forall2!501 lambda!66436))))

(declare-fun bs!390753 () Bool)

(assert (= bs!390753 d!468996))

(declare-fun m!1860369 () Bool)

(assert (=> bs!390753 m!1860369))

(assert (=> b!1577303 d!468996))

(declare-fun d!468998 () Bool)

(assert (=> d!468998 (= (list!6667 lt!550081) (list!6671 (c!255649 lt!550081)))))

(declare-fun bs!390754 () Bool)

(assert (= bs!390754 d!468998))

(declare-fun m!1860371 () Bool)

(assert (=> bs!390754 m!1860371))

(assert (=> d!468602 d!468998))

(declare-fun d!469000 () Bool)

(declare-fun c!255856 () Bool)

(assert (=> d!469000 (= c!255856 ((_ is Cons!17293) (list!6668 lt!549918)))))

(declare-fun e!1013792 () List!17361)

(assert (=> d!469000 (= (printList!793 thiss!17113 (list!6668 lt!549918)) e!1013792)))

(declare-fun b!1578276 () Bool)

(assert (=> b!1578276 (= e!1013792 (++!4485 (list!6667 (charsOf!1692 (h!22694 (list!6668 lt!549918)))) (printList!793 thiss!17113 (t!143446 (list!6668 lt!549918)))))))

(declare-fun b!1578277 () Bool)

(assert (=> b!1578277 (= e!1013792 Nil!17291)))

(assert (= (and d!469000 c!255856) b!1578276))

(assert (= (and d!469000 (not c!255856)) b!1578277))

(declare-fun m!1860373 () Bool)

(assert (=> b!1578276 m!1860373))

(assert (=> b!1578276 m!1860373))

(declare-fun m!1860375 () Bool)

(assert (=> b!1578276 m!1860375))

(declare-fun m!1860377 () Bool)

(assert (=> b!1578276 m!1860377))

(assert (=> b!1578276 m!1860375))

(assert (=> b!1578276 m!1860377))

(declare-fun m!1860379 () Bool)

(assert (=> b!1578276 m!1860379))

(assert (=> d!468602 d!469000))

(assert (=> d!468602 d!468636))

(declare-fun d!469002 () Bool)

(declare-fun lt!551216 () BalanceConc!11412)

(assert (=> d!469002 (= (list!6667 lt!551216) (printListTailRec!300 thiss!17113 (dropList!505 lt!549918 0) (list!6667 (BalanceConc!11413 Empty!5734))))))

(declare-fun e!1013794 () BalanceConc!11412)

(assert (=> d!469002 (= lt!551216 e!1013794)))

(declare-fun c!255857 () Bool)

(assert (=> d!469002 (= c!255857 (>= 0 (size!13938 lt!549918)))))

(declare-fun e!1013793 () Bool)

(assert (=> d!469002 e!1013793))

(declare-fun res!703456 () Bool)

(assert (=> d!469002 (=> (not res!703456) (not e!1013793))))

(assert (=> d!469002 (= res!703456 (>= 0 0))))

(assert (=> d!469002 (= (printTailRec!729 thiss!17113 lt!549918 0 (BalanceConc!11413 Empty!5734)) lt!551216)))

(declare-fun b!1578278 () Bool)

(assert (=> b!1578278 (= e!1013793 (<= 0 (size!13938 lt!549918)))))

(declare-fun b!1578279 () Bool)

(assert (=> b!1578279 (= e!1013794 (BalanceConc!11413 Empty!5734))))

(declare-fun b!1578280 () Bool)

(assert (=> b!1578280 (= e!1013794 (printTailRec!729 thiss!17113 lt!549918 (+ 0 1) (++!4487 (BalanceConc!11413 Empty!5734) (charsOf!1692 (apply!4191 lt!549918 0)))))))

(declare-fun lt!551213 () List!17363)

(assert (=> b!1578280 (= lt!551213 (list!6668 lt!549918))))

(declare-fun lt!551218 () Unit!26821)

(assert (=> b!1578280 (= lt!551218 (lemmaDropApply!507 lt!551213 0))))

(assert (=> b!1578280 (= (head!3174 (drop!809 lt!551213 0)) (apply!4192 lt!551213 0))))

(declare-fun lt!551214 () Unit!26821)

(assert (=> b!1578280 (= lt!551214 lt!551218)))

(declare-fun lt!551217 () List!17363)

(assert (=> b!1578280 (= lt!551217 (list!6668 lt!549918))))

(declare-fun lt!551215 () Unit!26821)

(assert (=> b!1578280 (= lt!551215 (lemmaDropTail!487 lt!551217 0))))

(assert (=> b!1578280 (= (tail!2245 (drop!809 lt!551217 0)) (drop!809 lt!551217 (+ 0 1)))))

(declare-fun lt!551212 () Unit!26821)

(assert (=> b!1578280 (= lt!551212 lt!551215)))

(assert (= (and d!469002 res!703456) b!1578278))

(assert (= (and d!469002 c!255857) b!1578279))

(assert (= (and d!469002 (not c!255857)) b!1578280))

(declare-fun m!1860381 () Bool)

(assert (=> d!469002 m!1860381))

(declare-fun m!1860383 () Bool)

(assert (=> d!469002 m!1860383))

(assert (=> d!469002 m!1858805))

(assert (=> d!469002 m!1860383))

(assert (=> d!469002 m!1858805))

(declare-fun m!1860385 () Bool)

(assert (=> d!469002 m!1860385))

(declare-fun m!1860387 () Bool)

(assert (=> d!469002 m!1860387))

(assert (=> b!1578278 m!1860381))

(declare-fun m!1860389 () Bool)

(assert (=> b!1578280 m!1860389))

(declare-fun m!1860391 () Bool)

(assert (=> b!1578280 m!1860391))

(declare-fun m!1860393 () Bool)

(assert (=> b!1578280 m!1860393))

(declare-fun m!1860395 () Bool)

(assert (=> b!1578280 m!1860395))

(assert (=> b!1578280 m!1860391))

(assert (=> b!1578280 m!1860395))

(declare-fun m!1860397 () Bool)

(assert (=> b!1578280 m!1860397))

(assert (=> b!1578280 m!1858235))

(declare-fun m!1860399 () Bool)

(assert (=> b!1578280 m!1860399))

(declare-fun m!1860401 () Bool)

(assert (=> b!1578280 m!1860401))

(declare-fun m!1860403 () Bool)

(assert (=> b!1578280 m!1860403))

(declare-fun m!1860405 () Bool)

(assert (=> b!1578280 m!1860405))

(assert (=> b!1578280 m!1860401))

(declare-fun m!1860407 () Bool)

(assert (=> b!1578280 m!1860407))

(declare-fun m!1860409 () Bool)

(assert (=> b!1578280 m!1860409))

(assert (=> b!1578280 m!1860389))

(assert (=> b!1578280 m!1860405))

(declare-fun m!1860411 () Bool)

(assert (=> b!1578280 m!1860411))

(assert (=> d!468602 d!469002))

(declare-fun d!469004 () Bool)

(declare-fun res!703461 () Bool)

(declare-fun e!1013799 () Bool)

(assert (=> d!469004 (=> res!703461 e!1013799)))

(assert (=> d!469004 (= res!703461 ((_ is Nil!17294) rules!1846))))

(assert (=> d!469004 (= (noDuplicateTag!1074 thiss!17113 rules!1846 Nil!17296) e!1013799)))

(declare-fun b!1578285 () Bool)

(declare-fun e!1013800 () Bool)

(assert (=> b!1578285 (= e!1013799 e!1013800)))

(declare-fun res!703462 () Bool)

(assert (=> b!1578285 (=> (not res!703462) (not e!1013800))))

(declare-fun contains!3022 (List!17366 String!19997) Bool)

(assert (=> b!1578285 (= res!703462 (not (contains!3022 Nil!17296 (tag!3309 (h!22695 rules!1846)))))))

(declare-fun b!1578286 () Bool)

(assert (=> b!1578286 (= e!1013800 (noDuplicateTag!1074 thiss!17113 (t!143447 rules!1846) (Cons!17296 (tag!3309 (h!22695 rules!1846)) Nil!17296)))))

(assert (= (and d!469004 (not res!703461)) b!1578285))

(assert (= (and b!1578285 res!703462) b!1578286))

(declare-fun m!1860413 () Bool)

(assert (=> b!1578285 m!1860413))

(declare-fun m!1860415 () Bool)

(assert (=> b!1578286 m!1860415))

(assert (=> b!1577568 d!469004))

(declare-fun d!469006 () Bool)

(declare-fun res!703464 () Bool)

(declare-fun e!1013802 () Bool)

(assert (=> d!469006 (=> res!703464 e!1013802)))

(assert (=> d!469006 (= res!703464 (or (not ((_ is Cons!17293) (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457))))) (not ((_ is Cons!17293) (t!143446 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457))))))))))

(assert (=> d!469006 (= (tokensListTwoByTwoPredicateSeparableList!365 thiss!17113 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457))) rules!1846) e!1013802)))

(declare-fun b!1578287 () Bool)

(declare-fun e!1013801 () Bool)

(assert (=> b!1578287 (= e!1013802 e!1013801)))

(declare-fun res!703463 () Bool)

(assert (=> b!1578287 (=> (not res!703463) (not e!1013801))))

(assert (=> b!1578287 (= res!703463 (separableTokensPredicate!614 thiss!17113 (h!22694 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457)))) (h!22694 (t!143446 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457))))) rules!1846))))

(declare-fun lt!551223 () Unit!26821)

(declare-fun Unit!26894 () Unit!26821)

(assert (=> b!1578287 (= lt!551223 Unit!26894)))

(assert (=> b!1578287 (> (size!13937 (charsOf!1692 (h!22694 (t!143446 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457))))))) 0)))

(declare-fun lt!551220 () Unit!26821)

(declare-fun Unit!26895 () Unit!26821)

(assert (=> b!1578287 (= lt!551220 Unit!26895)))

(assert (=> b!1578287 (rulesProduceIndividualToken!1332 thiss!17113 rules!1846 (h!22694 (t!143446 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457))))))))

(declare-fun lt!551224 () Unit!26821)

(declare-fun Unit!26896 () Unit!26821)

(assert (=> b!1578287 (= lt!551224 Unit!26896)))

(assert (=> b!1578287 (rulesProduceIndividualToken!1332 thiss!17113 rules!1846 (h!22694 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457)))))))

(declare-fun lt!551219 () Unit!26821)

(declare-fun lt!551221 () Unit!26821)

(assert (=> b!1578287 (= lt!551219 lt!551221)))

(assert (=> b!1578287 (rulesProduceIndividualToken!1332 thiss!17113 rules!1846 (h!22694 (t!143446 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457))))))))

(assert (=> b!1578287 (= lt!551221 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!511 thiss!17113 rules!1846 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457))) (h!22694 (t!143446 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457)))))))))

(declare-fun lt!551222 () Unit!26821)

(declare-fun lt!551225 () Unit!26821)

(assert (=> b!1578287 (= lt!551222 lt!551225)))

(assert (=> b!1578287 (rulesProduceIndividualToken!1332 thiss!17113 rules!1846 (h!22694 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457)))))))

(assert (=> b!1578287 (= lt!551225 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!511 thiss!17113 rules!1846 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457))) (h!22694 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457))))))))

(declare-fun b!1578288 () Bool)

(assert (=> b!1578288 (= e!1013801 (tokensListTwoByTwoPredicateSeparableList!365 thiss!17113 (Cons!17293 (h!22694 (t!143446 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457))))) (t!143446 (t!143446 (Cons!17293 (h!22694 (t!143446 tokens!457)) (t!143446 (t!143446 tokens!457)))))) rules!1846))))

(assert (= (and d!469006 (not res!703464)) b!1578287))

(assert (= (and b!1578287 res!703463) b!1578288))

(declare-fun m!1860417 () Bool)

(assert (=> b!1578287 m!1860417))

(declare-fun m!1860419 () Bool)

(assert (=> b!1578287 m!1860419))

(assert (=> b!1578287 m!1860417))

(declare-fun m!1860421 () Bool)

(assert (=> b!1578287 m!1860421))

(declare-fun m!1860423 () Bool)

(assert (=> b!1578287 m!1860423))

(declare-fun m!1860425 () Bool)

(assert (=> b!1578287 m!1860425))

(declare-fun m!1860427 () Bool)

(assert (=> b!1578287 m!1860427))

(declare-fun m!1860429 () Bool)

(assert (=> b!1578287 m!1860429))

(declare-fun m!1860431 () Bool)

(assert (=> b!1578288 m!1860431))

(assert (=> b!1577430 d!469006))

(declare-fun d!469008 () Bool)

(declare-fun charsToBigInt!0 (List!17362 Int) Int)

(assert (=> d!469008 (= (inv!15 (value!96398 (h!22694 tokens!457))) (= (charsToBigInt!0 (text!22380 (value!96398 (h!22694 tokens!457))) 0) (value!96393 (value!96398 (h!22694 tokens!457)))))))

(declare-fun bs!390755 () Bool)

(assert (= bs!390755 d!469008))

(declare-fun m!1860433 () Bool)

(assert (=> bs!390755 m!1860433))

(assert (=> b!1577316 d!469008))

(declare-fun b!1578293 () Bool)

(declare-fun e!1013805 () List!17361)

(assert (=> b!1578293 (= e!1013805 Nil!17291)))

(declare-fun b!1578295 () Bool)

(declare-fun e!1013806 () List!17361)

(assert (=> b!1578295 (= e!1013806 (list!6676 (xs!8538 (c!255649 (charsOf!1692 (h!22694 tokens!457))))))))

(declare-fun b!1578296 () Bool)

(assert (=> b!1578296 (= e!1013806 (++!4485 (list!6671 (left!13981 (c!255649 (charsOf!1692 (h!22694 tokens!457))))) (list!6671 (right!14311 (c!255649 (charsOf!1692 (h!22694 tokens!457)))))))))

(declare-fun b!1578294 () Bool)

(assert (=> b!1578294 (= e!1013805 e!1013806)))

(declare-fun c!255861 () Bool)

(assert (=> b!1578294 (= c!255861 ((_ is Leaf!8476) (c!255649 (charsOf!1692 (h!22694 tokens!457)))))))

(declare-fun d!469010 () Bool)

(declare-fun c!255860 () Bool)

(assert (=> d!469010 (= c!255860 ((_ is Empty!5734) (c!255649 (charsOf!1692 (h!22694 tokens!457)))))))

(assert (=> d!469010 (= (list!6671 (c!255649 (charsOf!1692 (h!22694 tokens!457)))) e!1013805)))

(assert (= (and d!469010 c!255860) b!1578293))

(assert (= (and d!469010 (not c!255860)) b!1578294))

(assert (= (and b!1578294 c!255861) b!1578295))

(assert (= (and b!1578294 (not c!255861)) b!1578296))

(declare-fun m!1860435 () Bool)

(assert (=> b!1578295 m!1860435))

(declare-fun m!1860437 () Bool)

(assert (=> b!1578296 m!1860437))

(declare-fun m!1860439 () Bool)

(assert (=> b!1578296 m!1860439))

(assert (=> b!1578296 m!1860437))

(assert (=> b!1578296 m!1860439))

(declare-fun m!1860441 () Bool)

(assert (=> b!1578296 m!1860441))

(assert (=> d!468612 d!469010))

(assert (=> b!1577392 d!468708))

(declare-fun d!469012 () Bool)

(assert (=> d!469012 (= (list!6667 lt!550089) (list!6671 (c!255649 lt!550089)))))

(declare-fun bs!390756 () Bool)

(assert (= bs!390756 d!469012))

(declare-fun m!1860443 () Bool)

(assert (=> bs!390756 m!1860443))

(assert (=> d!468608 d!469012))

(declare-fun d!469014 () Bool)

(declare-fun lt!551238 () Bool)

(assert (=> d!469014 (= lt!551238 (isEmpty!10330 (list!6667 (_2!9781 (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457))))))))))

(declare-fun isEmpty!10341 (Conc!5734) Bool)

(assert (=> d!469014 (= lt!551238 (isEmpty!10341 (c!255649 (_2!9781 (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457))))))))))

(assert (=> d!469014 (= (isEmpty!10333 (_2!9781 (lex!1156 thiss!17113 rules!1846 (print!1203 thiss!17113 (seqFromList!1842 (t!143446 tokens!457)))))) lt!551238)))

(declare-fun bs!390757 () Bool)

(assert (= bs!390757 d!469014))

(declare-fun m!1860445 () Bool)

(assert (=> bs!390757 m!1860445))

(assert (=> bs!390757 m!1860445))

(declare-fun m!1860447 () Bool)

(assert (=> bs!390757 m!1860447))

(declare-fun m!1860449 () Bool)

(assert (=> bs!390757 m!1860449))

(assert (=> b!1577541 d!469014))

(assert (=> b!1577541 d!468924))

(assert (=> b!1577541 d!468882))

(assert (=> b!1577541 d!468610))

(declare-fun d!469016 () Bool)

(assert (=> d!469016 (= (list!6667 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457)))) (list!6671 (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457))))))))

(declare-fun bs!390758 () Bool)

(assert (= bs!390758 d!469016))

(declare-fun m!1860451 () Bool)

(assert (=> bs!390758 m!1860451))

(assert (=> b!1577294 d!469016))

(declare-fun b!1578314 () Bool)

(declare-fun e!1013812 () List!17363)

(assert (=> b!1578314 (= e!1013812 (++!4488 (list!6672 (left!13982 (c!255651 lt!549918))) (list!6672 (right!14312 (c!255651 lt!549918)))))))

(declare-fun b!1578312 () Bool)

(declare-fun e!1013811 () List!17363)

(assert (=> b!1578312 (= e!1013811 e!1013812)))

(declare-fun c!255863 () Bool)

(assert (=> b!1578312 (= c!255863 ((_ is Leaf!8477) (c!255651 lt!549918)))))

(declare-fun d!469018 () Bool)

(declare-fun c!255862 () Bool)

(assert (=> d!469018 (= c!255862 ((_ is Empty!5735) (c!255651 lt!549918)))))

(assert (=> d!469018 (= (list!6672 (c!255651 lt!549918)) e!1013811)))

(declare-fun b!1578311 () Bool)

(assert (=> b!1578311 (= e!1013811 Nil!17293)))

(declare-fun b!1578313 () Bool)

(assert (=> b!1578313 (= e!1013812 (list!6673 (xs!8539 (c!255651 lt!549918))))))

(assert (= (and d!469018 c!255862) b!1578311))

(assert (= (and d!469018 (not c!255862)) b!1578312))

(assert (= (and b!1578312 c!255863) b!1578313))

(assert (= (and b!1578312 (not c!255863)) b!1578314))

(declare-fun m!1860453 () Bool)

(assert (=> b!1578314 m!1860453))

(declare-fun m!1860455 () Bool)

(assert (=> b!1578314 m!1860455))

(assert (=> b!1578314 m!1860453))

(assert (=> b!1578314 m!1860455))

(declare-fun m!1860457 () Bool)

(assert (=> b!1578314 m!1860457))

(declare-fun m!1860459 () Bool)

(assert (=> b!1578313 m!1860459))

(assert (=> d!468636 d!469018))

(declare-fun b!1578315 () Bool)

(declare-fun e!1013813 () List!17361)

(assert (=> b!1578315 (= e!1013813 Nil!17291)))

(declare-fun b!1578317 () Bool)

(declare-fun e!1013814 () List!17361)

(assert (=> b!1578317 (= e!1013814 (list!6676 (xs!8538 (c!255649 lt!549917))))))

(declare-fun b!1578318 () Bool)

(assert (=> b!1578318 (= e!1013814 (++!4485 (list!6671 (left!13981 (c!255649 lt!549917))) (list!6671 (right!14311 (c!255649 lt!549917)))))))

(declare-fun b!1578316 () Bool)

(assert (=> b!1578316 (= e!1013813 e!1013814)))

(declare-fun c!255865 () Bool)

(assert (=> b!1578316 (= c!255865 ((_ is Leaf!8476) (c!255649 lt!549917)))))

(declare-fun d!469020 () Bool)

(declare-fun c!255864 () Bool)

(assert (=> d!469020 (= c!255864 ((_ is Empty!5734) (c!255649 lt!549917)))))

(assert (=> d!469020 (= (list!6671 (c!255649 lt!549917)) e!1013813)))

(assert (= (and d!469020 c!255864) b!1578315))

(assert (= (and d!469020 (not c!255864)) b!1578316))

(assert (= (and b!1578316 c!255865) b!1578317))

(assert (= (and b!1578316 (not c!255865)) b!1578318))

(declare-fun m!1860461 () Bool)

(assert (=> b!1578317 m!1860461))

(declare-fun m!1860463 () Bool)

(assert (=> b!1578318 m!1860463))

(declare-fun m!1860465 () Bool)

(assert (=> b!1578318 m!1860465))

(assert (=> b!1578318 m!1860463))

(assert (=> b!1578318 m!1860465))

(declare-fun m!1860467 () Bool)

(assert (=> b!1578318 m!1860467))

(assert (=> d!468614 d!469020))

(declare-fun d!469022 () Bool)

(assert (=> d!469022 (= (isEmpty!10330 (originalCharacters!3857 (h!22694 tokens!457))) ((_ is Nil!17291) (originalCharacters!3857 (h!22694 tokens!457))))))

(assert (=> d!468532 d!469022))

(declare-fun d!469024 () Bool)

(declare-fun lt!551239 () Int)

(assert (=> d!469024 (>= lt!551239 0)))

(declare-fun e!1013815 () Int)

(assert (=> d!469024 (= lt!551239 e!1013815)))

(declare-fun c!255866 () Bool)

(assert (=> d!469024 (= c!255866 ((_ is Nil!17291) lt!550080))))

(assert (=> d!469024 (= (size!13936 lt!550080) lt!551239)))

(declare-fun b!1578319 () Bool)

(assert (=> b!1578319 (= e!1013815 0)))

(declare-fun b!1578320 () Bool)

(assert (=> b!1578320 (= e!1013815 (+ 1 (size!13936 (t!143444 lt!550080))))))

(assert (= (and d!469024 c!255866) b!1578319))

(assert (= (and d!469024 (not c!255866)) b!1578320))

(declare-fun m!1860469 () Bool)

(assert (=> b!1578320 m!1860469))

(assert (=> b!1577441 d!469024))

(assert (=> b!1577441 d!468942))

(declare-fun d!469026 () Bool)

(declare-fun lt!551240 () Int)

(assert (=> d!469026 (>= lt!551240 0)))

(declare-fun e!1013816 () Int)

(assert (=> d!469026 (= lt!551240 e!1013816)))

(declare-fun c!255867 () Bool)

(assert (=> d!469026 (= c!255867 ((_ is Nil!17291) lt!549920))))

(assert (=> d!469026 (= (size!13936 lt!549920) lt!551240)))

(declare-fun b!1578321 () Bool)

(assert (=> b!1578321 (= e!1013816 0)))

(declare-fun b!1578322 () Bool)

(assert (=> b!1578322 (= e!1013816 (+ 1 (size!13936 (t!143444 lt!549920))))))

(assert (= (and d!469026 c!255867) b!1578321))

(assert (= (and d!469026 (not c!255867)) b!1578322))

(declare-fun m!1860471 () Bool)

(assert (=> b!1578322 m!1860471))

(assert (=> b!1577441 d!469026))

(declare-fun b!1578324 () Bool)

(declare-fun res!703482 () Bool)

(declare-fun e!1013819 () Bool)

(assert (=> b!1578324 (=> (not res!703482) (not e!1013819))))

(assert (=> b!1578324 (= res!703482 (= (head!3172 lt!549916) (head!3172 (++!4485 lt!549916 lt!549920))))))

(declare-fun d!469028 () Bool)

(declare-fun e!1013817 () Bool)

(assert (=> d!469028 e!1013817))

(declare-fun res!703480 () Bool)

(assert (=> d!469028 (=> res!703480 e!1013817)))

(declare-fun lt!551241 () Bool)

(assert (=> d!469028 (= res!703480 (not lt!551241))))

(declare-fun e!1013818 () Bool)

(assert (=> d!469028 (= lt!551241 e!1013818)))

(declare-fun res!703479 () Bool)

(assert (=> d!469028 (=> res!703479 e!1013818)))

(assert (=> d!469028 (= res!703479 ((_ is Nil!17291) lt!549916))))

(assert (=> d!469028 (= (isPrefix!1303 lt!549916 (++!4485 lt!549916 lt!549920)) lt!551241)))

(declare-fun b!1578326 () Bool)

(assert (=> b!1578326 (= e!1013817 (>= (size!13936 (++!4485 lt!549916 lt!549920)) (size!13936 lt!549916)))))

(declare-fun b!1578325 () Bool)

(assert (=> b!1578325 (= e!1013819 (isPrefix!1303 (tail!2244 lt!549916) (tail!2244 (++!4485 lt!549916 lt!549920))))))

(declare-fun b!1578323 () Bool)

(assert (=> b!1578323 (= e!1013818 e!1013819)))

(declare-fun res!703481 () Bool)

(assert (=> b!1578323 (=> (not res!703481) (not e!1013819))))

(assert (=> b!1578323 (= res!703481 (not ((_ is Nil!17291) (++!4485 lt!549916 lt!549920))))))

(assert (= (and d!469028 (not res!703479)) b!1578323))

(assert (= (and b!1578323 res!703481) b!1578324))

(assert (= (and b!1578324 res!703482) b!1578325))

(assert (= (and d!469028 (not res!703480)) b!1578326))

(assert (=> b!1578324 m!1858667))

(assert (=> b!1578324 m!1858215))

(declare-fun m!1860473 () Bool)

(assert (=> b!1578324 m!1860473))

(assert (=> b!1578326 m!1858215))

(declare-fun m!1860475 () Bool)

(assert (=> b!1578326 m!1860475))

(assert (=> b!1578326 m!1858529))

(assert (=> b!1578325 m!1858673))

(assert (=> b!1578325 m!1858215))

(declare-fun m!1860477 () Bool)

(assert (=> b!1578325 m!1860477))

(assert (=> b!1578325 m!1858673))

(assert (=> b!1578325 m!1860477))

(declare-fun m!1860479 () Bool)

(assert (=> b!1578325 m!1860479))

(assert (=> d!468626 d!469028))

(assert (=> d!468626 d!468600))

(declare-fun d!469030 () Bool)

(assert (=> d!469030 (isPrefix!1303 lt!549916 (++!4485 lt!549916 lt!549920))))

(assert (=> d!469030 true))

(declare-fun _$46!1041 () Unit!26821)

(assert (=> d!469030 (= (choose!9436 lt!549916 lt!549920) _$46!1041)))

(declare-fun bs!390759 () Bool)

(assert (= bs!390759 d!469030))

(assert (=> bs!390759 m!1858215))

(assert (=> bs!390759 m!1858215))

(assert (=> bs!390759 m!1858679))

(assert (=> d!468626 d!469030))

(declare-fun e!1013823 () Bool)

(assert (=> b!1577605 (= tp!464469 e!1013823)))

(declare-fun b!1578337 () Bool)

(declare-fun tp!464486 () Bool)

(declare-fun tp!464484 () Bool)

(assert (=> b!1578337 (= e!1013823 (and tp!464486 tp!464484))))

(declare-fun b!1578336 () Bool)

(assert (=> b!1578336 (= e!1013823 tp_is_empty!7173)))

(declare-fun b!1578339 () Bool)

(declare-fun tp!464487 () Bool)

(declare-fun tp!464483 () Bool)

(assert (=> b!1578339 (= e!1013823 (and tp!464487 tp!464483))))

(declare-fun b!1578338 () Bool)

(declare-fun tp!464485 () Bool)

(assert (=> b!1578338 (= e!1013823 tp!464485)))

(assert (= (and b!1577605 ((_ is ElementMatch!4371) (regOne!9254 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578336))

(assert (= (and b!1577605 ((_ is Concat!7505) (regOne!9254 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578337))

(assert (= (and b!1577605 ((_ is Star!4371) (regOne!9254 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578338))

(assert (= (and b!1577605 ((_ is Union!4371) (regOne!9254 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578339))

(declare-fun e!1013824 () Bool)

(assert (=> b!1577605 (= tp!464467 e!1013824)))

(declare-fun b!1578341 () Bool)

(declare-fun tp!464491 () Bool)

(declare-fun tp!464489 () Bool)

(assert (=> b!1578341 (= e!1013824 (and tp!464491 tp!464489))))

(declare-fun b!1578340 () Bool)

(assert (=> b!1578340 (= e!1013824 tp_is_empty!7173)))

(declare-fun b!1578343 () Bool)

(declare-fun tp!464492 () Bool)

(declare-fun tp!464488 () Bool)

(assert (=> b!1578343 (= e!1013824 (and tp!464492 tp!464488))))

(declare-fun b!1578342 () Bool)

(declare-fun tp!464490 () Bool)

(assert (=> b!1578342 (= e!1013824 tp!464490)))

(assert (= (and b!1577605 ((_ is ElementMatch!4371) (regTwo!9254 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578340))

(assert (= (and b!1577605 ((_ is Concat!7505) (regTwo!9254 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578341))

(assert (= (and b!1577605 ((_ is Star!4371) (regTwo!9254 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578342))

(assert (= (and b!1577605 ((_ is Union!4371) (regTwo!9254 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578343))

(declare-fun e!1013825 () Bool)

(assert (=> b!1577610 (= tp!464473 e!1013825)))

(declare-fun b!1578345 () Bool)

(declare-fun tp!464496 () Bool)

(declare-fun tp!464494 () Bool)

(assert (=> b!1578345 (= e!1013825 (and tp!464496 tp!464494))))

(declare-fun b!1578344 () Bool)

(assert (=> b!1578344 (= e!1013825 tp_is_empty!7173)))

(declare-fun b!1578347 () Bool)

(declare-fun tp!464497 () Bool)

(declare-fun tp!464493 () Bool)

(assert (=> b!1578347 (= e!1013825 (and tp!464497 tp!464493))))

(declare-fun b!1578346 () Bool)

(declare-fun tp!464495 () Bool)

(assert (=> b!1578346 (= e!1013825 tp!464495)))

(assert (= (and b!1577610 ((_ is ElementMatch!4371) (reg!4700 (regex!3043 (h!22695 rules!1846))))) b!1578344))

(assert (= (and b!1577610 ((_ is Concat!7505) (reg!4700 (regex!3043 (h!22695 rules!1846))))) b!1578345))

(assert (= (and b!1577610 ((_ is Star!4371) (reg!4700 (regex!3043 (h!22695 rules!1846))))) b!1578346))

(assert (= (and b!1577610 ((_ is Union!4371) (reg!4700 (regex!3043 (h!22695 rules!1846))))) b!1578347))

(declare-fun e!1013826 () Bool)

(assert (=> b!1577606 (= tp!464468 e!1013826)))

(declare-fun b!1578349 () Bool)

(declare-fun tp!464501 () Bool)

(declare-fun tp!464499 () Bool)

(assert (=> b!1578349 (= e!1013826 (and tp!464501 tp!464499))))

(declare-fun b!1578348 () Bool)

(assert (=> b!1578348 (= e!1013826 tp_is_empty!7173)))

(declare-fun b!1578351 () Bool)

(declare-fun tp!464502 () Bool)

(declare-fun tp!464498 () Bool)

(assert (=> b!1578351 (= e!1013826 (and tp!464502 tp!464498))))

(declare-fun b!1578350 () Bool)

(declare-fun tp!464500 () Bool)

(assert (=> b!1578350 (= e!1013826 tp!464500)))

(assert (= (and b!1577606 ((_ is ElementMatch!4371) (reg!4700 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578348))

(assert (= (and b!1577606 ((_ is Concat!7505) (reg!4700 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578349))

(assert (= (and b!1577606 ((_ is Star!4371) (reg!4700 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578350))

(assert (= (and b!1577606 ((_ is Union!4371) (reg!4700 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578351))

(declare-fun b!1578355 () Bool)

(declare-fun b_free!42527 () Bool)

(declare-fun b_next!43231 () Bool)

(assert (=> b!1578355 (= b_free!42527 (not b_next!43231))))

(declare-fun tp!464506 () Bool)

(declare-fun b_and!110517 () Bool)

(assert (=> b!1578355 (= tp!464506 b_and!110517)))

(declare-fun b_free!42529 () Bool)

(declare-fun b_next!43233 () Bool)

(assert (=> b!1578355 (= b_free!42529 (not b_next!43233))))

(declare-fun t!143517 () Bool)

(declare-fun tb!88799 () Bool)

(assert (=> (and b!1578355 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))))) t!143517) tb!88799))

(declare-fun result!107446 () Bool)

(assert (= result!107446 result!107422))

(assert (=> d!468788 t!143517))

(declare-fun t!143519 () Bool)

(declare-fun tb!88801 () Bool)

(assert (=> (and b!1578355 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457))))) t!143519) tb!88801))

(declare-fun result!107448 () Bool)

(assert (= result!107448 result!107378))

(assert (=> b!1577294 t!143519))

(assert (=> b!1578170 t!143517))

(assert (=> d!468608 t!143519))

(declare-fun t!143521 () Bool)

(declare-fun tb!88803 () Bool)

(assert (=> (and b!1578355 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457))))))) t!143521) tb!88803))

(declare-fun result!107450 () Bool)

(assert (= result!107450 result!107430))

(assert (=> d!468864 t!143521))

(declare-fun b_and!110519 () Bool)

(declare-fun tp!464507 () Bool)

(assert (=> b!1578355 (= tp!464507 (and (=> t!143521 result!107450) (=> t!143519 result!107448) (=> t!143517 result!107446) b_and!110519))))

(declare-fun e!1013828 () Bool)

(declare-fun b!1578354 () Bool)

(declare-fun tp!464505 () Bool)

(declare-fun e!1013829 () Bool)

(assert (=> b!1578354 (= e!1013828 (and tp!464505 (inv!22704 (tag!3309 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))) (inv!22707 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))) e!1013829))))

(assert (=> b!1578355 (= e!1013829 (and tp!464506 tp!464507))))

(declare-fun e!1013831 () Bool)

(assert (=> b!1577579 (= tp!464439 e!1013831)))

(declare-fun b!1578352 () Bool)

(declare-fun tp!464503 () Bool)

(declare-fun e!1013827 () Bool)

(assert (=> b!1578352 (= e!1013831 (and (inv!22708 (h!22694 (t!143446 (t!143446 tokens!457)))) e!1013827 tp!464503))))

(declare-fun tp!464504 () Bool)

(declare-fun b!1578353 () Bool)

(assert (=> b!1578353 (= e!1013827 (and (inv!21 (value!96398 (h!22694 (t!143446 (t!143446 tokens!457))))) e!1013828 tp!464504))))

(assert (= b!1578354 b!1578355))

(assert (= b!1578353 b!1578354))

(assert (= b!1578352 b!1578353))

(assert (= (and b!1577579 ((_ is Cons!17293) (t!143446 (t!143446 tokens!457)))) b!1578352))

(declare-fun m!1860509 () Bool)

(assert (=> b!1578354 m!1860509))

(declare-fun m!1860511 () Bool)

(assert (=> b!1578354 m!1860511))

(declare-fun m!1860513 () Bool)

(assert (=> b!1578352 m!1860513))

(declare-fun m!1860515 () Bool)

(assert (=> b!1578353 m!1860515))

(declare-fun e!1013833 () Bool)

(assert (=> b!1577611 (= tp!464475 e!1013833)))

(declare-fun b!1578357 () Bool)

(declare-fun tp!464511 () Bool)

(declare-fun tp!464509 () Bool)

(assert (=> b!1578357 (= e!1013833 (and tp!464511 tp!464509))))

(declare-fun b!1578356 () Bool)

(assert (=> b!1578356 (= e!1013833 tp_is_empty!7173)))

(declare-fun b!1578359 () Bool)

(declare-fun tp!464512 () Bool)

(declare-fun tp!464508 () Bool)

(assert (=> b!1578359 (= e!1013833 (and tp!464512 tp!464508))))

(declare-fun b!1578358 () Bool)

(declare-fun tp!464510 () Bool)

(assert (=> b!1578358 (= e!1013833 tp!464510)))

(assert (= (and b!1577611 ((_ is ElementMatch!4371) (regOne!9255 (regex!3043 (h!22695 rules!1846))))) b!1578356))

(assert (= (and b!1577611 ((_ is Concat!7505) (regOne!9255 (regex!3043 (h!22695 rules!1846))))) b!1578357))

(assert (= (and b!1577611 ((_ is Star!4371) (regOne!9255 (regex!3043 (h!22695 rules!1846))))) b!1578358))

(assert (= (and b!1577611 ((_ is Union!4371) (regOne!9255 (regex!3043 (h!22695 rules!1846))))) b!1578359))

(declare-fun e!1013837 () Bool)

(assert (=> b!1577611 (= tp!464471 e!1013837)))

(declare-fun b!1578364 () Bool)

(declare-fun tp!464516 () Bool)

(declare-fun tp!464514 () Bool)

(assert (=> b!1578364 (= e!1013837 (and tp!464516 tp!464514))))

(declare-fun b!1578362 () Bool)

(assert (=> b!1578362 (= e!1013837 tp_is_empty!7173)))

(declare-fun b!1578368 () Bool)

(declare-fun tp!464517 () Bool)

(declare-fun tp!464513 () Bool)

(assert (=> b!1578368 (= e!1013837 (and tp!464517 tp!464513))))

(declare-fun b!1578366 () Bool)

(declare-fun tp!464515 () Bool)

(assert (=> b!1578366 (= e!1013837 tp!464515)))

(assert (= (and b!1577611 ((_ is ElementMatch!4371) (regTwo!9255 (regex!3043 (h!22695 rules!1846))))) b!1578362))

(assert (= (and b!1577611 ((_ is Concat!7505) (regTwo!9255 (regex!3043 (h!22695 rules!1846))))) b!1578364))

(assert (= (and b!1577611 ((_ is Star!4371) (regTwo!9255 (regex!3043 (h!22695 rules!1846))))) b!1578366))

(assert (= (and b!1577611 ((_ is Union!4371) (regTwo!9255 (regex!3043 (h!22695 rules!1846))))) b!1578368))

(declare-fun e!1013843 () Bool)

(declare-fun tp!464524 () Bool)

(declare-fun tp!464526 () Bool)

(declare-fun b!1578381 () Bool)

(assert (=> b!1578381 (= e!1013843 (and (inv!22711 (left!13981 (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457)))))) tp!464526 (inv!22711 (right!14311 (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457)))))) tp!464524))))

(declare-fun b!1578383 () Bool)

(declare-fun e!1013842 () Bool)

(declare-fun tp!464525 () Bool)

(assert (=> b!1578383 (= e!1013842 tp!464525)))

(declare-fun b!1578382 () Bool)

(declare-fun inv!22717 (IArray!11473) Bool)

(assert (=> b!1578382 (= e!1013843 (and (inv!22717 (xs!8538 (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457)))))) e!1013842))))

(assert (=> b!1577300 (= tp!464375 (and (inv!22711 (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457))))) e!1013843))))

(assert (= (and b!1577300 ((_ is Node!5734) (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457)))))) b!1578381))

(assert (= b!1578382 b!1578383))

(assert (= (and b!1577300 ((_ is Leaf!8476) (c!255649 (dynLambda!7667 (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (value!96398 (h!22694 tokens!457)))))) b!1578382))

(declare-fun m!1860537 () Bool)

(assert (=> b!1578381 m!1860537))

(declare-fun m!1860539 () Bool)

(assert (=> b!1578381 m!1860539))

(declare-fun m!1860541 () Bool)

(assert (=> b!1578382 m!1860541))

(assert (=> b!1577300 m!1858251))

(declare-fun e!1013844 () Bool)

(assert (=> b!1577607 (= tp!464470 e!1013844)))

(declare-fun b!1578385 () Bool)

(declare-fun tp!464530 () Bool)

(declare-fun tp!464528 () Bool)

(assert (=> b!1578385 (= e!1013844 (and tp!464530 tp!464528))))

(declare-fun b!1578384 () Bool)

(assert (=> b!1578384 (= e!1013844 tp_is_empty!7173)))

(declare-fun b!1578387 () Bool)

(declare-fun tp!464531 () Bool)

(declare-fun tp!464527 () Bool)

(assert (=> b!1578387 (= e!1013844 (and tp!464531 tp!464527))))

(declare-fun b!1578386 () Bool)

(declare-fun tp!464529 () Bool)

(assert (=> b!1578386 (= e!1013844 tp!464529)))

(assert (= (and b!1577607 ((_ is ElementMatch!4371) (regOne!9255 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578384))

(assert (= (and b!1577607 ((_ is Concat!7505) (regOne!9255 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578385))

(assert (= (and b!1577607 ((_ is Star!4371) (regOne!9255 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578386))

(assert (= (and b!1577607 ((_ is Union!4371) (regOne!9255 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578387))

(declare-fun e!1013845 () Bool)

(assert (=> b!1577607 (= tp!464466 e!1013845)))

(declare-fun b!1578389 () Bool)

(declare-fun tp!464535 () Bool)

(declare-fun tp!464533 () Bool)

(assert (=> b!1578389 (= e!1013845 (and tp!464535 tp!464533))))

(declare-fun b!1578388 () Bool)

(assert (=> b!1578388 (= e!1013845 tp_is_empty!7173)))

(declare-fun b!1578391 () Bool)

(declare-fun tp!464536 () Bool)

(declare-fun tp!464532 () Bool)

(assert (=> b!1578391 (= e!1013845 (and tp!464536 tp!464532))))

(declare-fun b!1578390 () Bool)

(declare-fun tp!464534 () Bool)

(assert (=> b!1578390 (= e!1013845 tp!464534)))

(assert (= (and b!1577607 ((_ is ElementMatch!4371) (regTwo!9255 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578388))

(assert (= (and b!1577607 ((_ is Concat!7505) (regTwo!9255 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578389))

(assert (= (and b!1577607 ((_ is Star!4371) (regTwo!9255 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578390))

(assert (= (and b!1577607 ((_ is Union!4371) (regTwo!9255 (regex!3043 (rule!4837 (h!22694 tokens!457)))))) b!1578391))

(declare-fun b!1578392 () Bool)

(declare-fun e!1013846 () Bool)

(declare-fun tp!464537 () Bool)

(assert (=> b!1578392 (= e!1013846 (and tp_is_empty!7173 tp!464537))))

(assert (=> b!1577580 (= tp!464440 e!1013846)))

(assert (= (and b!1577580 ((_ is Cons!17291) (originalCharacters!3857 (h!22694 (t!143446 tokens!457))))) b!1578392))

(declare-fun e!1013847 () Bool)

(assert (=> b!1577609 (= tp!464474 e!1013847)))

(declare-fun b!1578394 () Bool)

(declare-fun tp!464541 () Bool)

(declare-fun tp!464539 () Bool)

(assert (=> b!1578394 (= e!1013847 (and tp!464541 tp!464539))))

(declare-fun b!1578393 () Bool)

(assert (=> b!1578393 (= e!1013847 tp_is_empty!7173)))

(declare-fun b!1578396 () Bool)

(declare-fun tp!464542 () Bool)

(declare-fun tp!464538 () Bool)

(assert (=> b!1578396 (= e!1013847 (and tp!464542 tp!464538))))

(declare-fun b!1578395 () Bool)

(declare-fun tp!464540 () Bool)

(assert (=> b!1578395 (= e!1013847 tp!464540)))

(assert (= (and b!1577609 ((_ is ElementMatch!4371) (regOne!9254 (regex!3043 (h!22695 rules!1846))))) b!1578393))

(assert (= (and b!1577609 ((_ is Concat!7505) (regOne!9254 (regex!3043 (h!22695 rules!1846))))) b!1578394))

(assert (= (and b!1577609 ((_ is Star!4371) (regOne!9254 (regex!3043 (h!22695 rules!1846))))) b!1578395))

(assert (= (and b!1577609 ((_ is Union!4371) (regOne!9254 (regex!3043 (h!22695 rules!1846))))) b!1578396))

(declare-fun e!1013848 () Bool)

(assert (=> b!1577609 (= tp!464472 e!1013848)))

(declare-fun b!1578398 () Bool)

(declare-fun tp!464546 () Bool)

(declare-fun tp!464544 () Bool)

(assert (=> b!1578398 (= e!1013848 (and tp!464546 tp!464544))))

(declare-fun b!1578397 () Bool)

(assert (=> b!1578397 (= e!1013848 tp_is_empty!7173)))

(declare-fun b!1578400 () Bool)

(declare-fun tp!464547 () Bool)

(declare-fun tp!464543 () Bool)

(assert (=> b!1578400 (= e!1013848 (and tp!464547 tp!464543))))

(declare-fun b!1578399 () Bool)

(declare-fun tp!464545 () Bool)

(assert (=> b!1578399 (= e!1013848 tp!464545)))

(assert (= (and b!1577609 ((_ is ElementMatch!4371) (regTwo!9254 (regex!3043 (h!22695 rules!1846))))) b!1578397))

(assert (= (and b!1577609 ((_ is Concat!7505) (regTwo!9254 (regex!3043 (h!22695 rules!1846))))) b!1578398))

(assert (= (and b!1577609 ((_ is Star!4371) (regTwo!9254 (regex!3043 (h!22695 rules!1846))))) b!1578399))

(assert (= (and b!1577609 ((_ is Union!4371) (regTwo!9254 (regex!3043 (h!22695 rules!1846))))) b!1578400))

(declare-fun e!1013849 () Bool)

(assert (=> b!1577592 (= tp!464455 e!1013849)))

(declare-fun b!1578402 () Bool)

(declare-fun tp!464551 () Bool)

(declare-fun tp!464549 () Bool)

(assert (=> b!1578402 (= e!1013849 (and tp!464551 tp!464549))))

(declare-fun b!1578401 () Bool)

(assert (=> b!1578401 (= e!1013849 tp_is_empty!7173)))

(declare-fun b!1578404 () Bool)

(declare-fun tp!464552 () Bool)

(declare-fun tp!464548 () Bool)

(assert (=> b!1578404 (= e!1013849 (and tp!464552 tp!464548))))

(declare-fun b!1578403 () Bool)

(declare-fun tp!464550 () Bool)

(assert (=> b!1578403 (= e!1013849 tp!464550)))

(assert (= (and b!1577592 ((_ is ElementMatch!4371) (regex!3043 (h!22695 (t!143447 rules!1846))))) b!1578401))

(assert (= (and b!1577592 ((_ is Concat!7505) (regex!3043 (h!22695 (t!143447 rules!1846))))) b!1578402))

(assert (= (and b!1577592 ((_ is Star!4371) (regex!3043 (h!22695 (t!143447 rules!1846))))) b!1578403))

(assert (= (and b!1577592 ((_ is Union!4371) (regex!3043 (h!22695 (t!143447 rules!1846))))) b!1578404))

(declare-fun b!1578405 () Bool)

(declare-fun e!1013851 () Bool)

(declare-fun tp!464553 () Bool)

(assert (=> b!1578405 (= e!1013851 (and tp_is_empty!7173 tp!464553))))

(assert (=> b!1577616 (= tp!464478 e!1013851)))

(assert (= (and b!1577616 ((_ is Cons!17291) (t!143444 (originalCharacters!3857 (h!22694 tokens!457))))) b!1578405))

(declare-fun b!1578411 () Bool)

(declare-fun e!1013855 () Bool)

(assert (=> b!1578411 (= e!1013855 true)))

(declare-fun b!1578410 () Bool)

(declare-fun e!1013854 () Bool)

(assert (=> b!1578410 (= e!1013854 e!1013855)))

(declare-fun b!1578409 () Bool)

(declare-fun e!1013853 () Bool)

(assert (=> b!1578409 (= e!1013853 e!1013854)))

(assert (=> b!1577402 e!1013853))

(assert (= b!1578410 b!1578411))

(assert (= b!1578409 b!1578410))

(assert (= (and b!1577402 ((_ is Cons!17294) (t!143447 rules!1846))) b!1578409))

(assert (=> b!1578411 (< (dynLambda!7668 order!10193 (toValue!4442 (transformation!3043 (h!22695 (t!143447 rules!1846))))) (dynLambda!7669 order!10195 lambda!66401))))

(assert (=> b!1578411 (< (dynLambda!7670 order!10197 (toChars!4301 (transformation!3043 (h!22695 (t!143447 rules!1846))))) (dynLambda!7669 order!10195 lambda!66401))))

(declare-fun e!1013856 () Bool)

(assert (=> b!1577581 (= tp!464441 e!1013856)))

(declare-fun b!1578413 () Bool)

(declare-fun tp!464557 () Bool)

(declare-fun tp!464555 () Bool)

(assert (=> b!1578413 (= e!1013856 (and tp!464557 tp!464555))))

(declare-fun b!1578412 () Bool)

(assert (=> b!1578412 (= e!1013856 tp_is_empty!7173)))

(declare-fun b!1578415 () Bool)

(declare-fun tp!464558 () Bool)

(declare-fun tp!464554 () Bool)

(assert (=> b!1578415 (= e!1013856 (and tp!464558 tp!464554))))

(declare-fun b!1578414 () Bool)

(declare-fun tp!464556 () Bool)

(assert (=> b!1578414 (= e!1013856 tp!464556)))

(assert (= (and b!1577581 ((_ is ElementMatch!4371) (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))))) b!1578412))

(assert (= (and b!1577581 ((_ is Concat!7505) (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))))) b!1578413))

(assert (= (and b!1577581 ((_ is Star!4371) (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))))) b!1578414))

(assert (= (and b!1577581 ((_ is Union!4371) (regex!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))))) b!1578415))

(declare-fun b!1578418 () Bool)

(declare-fun b_free!42531 () Bool)

(declare-fun b_next!43235 () Bool)

(assert (=> b!1578418 (= b_free!42531 (not b_next!43235))))

(declare-fun tp!464560 () Bool)

(declare-fun b_and!110521 () Bool)

(assert (=> b!1578418 (= tp!464560 b_and!110521)))

(declare-fun b_free!42533 () Bool)

(declare-fun b_next!43237 () Bool)

(assert (=> b!1578418 (= b_free!42533 (not b_next!43237))))

(declare-fun tb!88805 () Bool)

(declare-fun t!143523 () Bool)

(assert (=> (and b!1578418 (= (toChars!4301 (transformation!3043 (h!22695 (t!143447 (t!143447 rules!1846))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457)))))) t!143523) tb!88805))

(declare-fun result!107454 () Bool)

(assert (= result!107454 result!107422))

(assert (=> d!468788 t!143523))

(declare-fun t!143525 () Bool)

(declare-fun tb!88807 () Bool)

(assert (=> (and b!1578418 (= (toChars!4301 (transformation!3043 (h!22695 (t!143447 (t!143447 rules!1846))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457))))) t!143525) tb!88807))

(declare-fun result!107456 () Bool)

(assert (= result!107456 result!107378))

(assert (=> b!1577294 t!143525))

(assert (=> b!1578170 t!143523))

(assert (=> d!468608 t!143525))

(declare-fun tb!88809 () Bool)

(declare-fun t!143527 () Bool)

(assert (=> (and b!1578418 (= (toChars!4301 (transformation!3043 (h!22695 (t!143447 (t!143447 rules!1846))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457))))))) t!143527) tb!88809))

(declare-fun result!107458 () Bool)

(assert (= result!107458 result!107430))

(assert (=> d!468864 t!143527))

(declare-fun tp!464559 () Bool)

(declare-fun b_and!110523 () Bool)

(assert (=> b!1578418 (= tp!464559 (and (=> t!143525 result!107456) (=> t!143527 result!107458) (=> t!143523 result!107454) b_and!110523))))

(declare-fun e!1013859 () Bool)

(assert (=> b!1578418 (= e!1013859 (and tp!464560 tp!464559))))

(declare-fun b!1578417 () Bool)

(declare-fun tp!464562 () Bool)

(declare-fun e!1013858 () Bool)

(assert (=> b!1578417 (= e!1013858 (and tp!464562 (inv!22704 (tag!3309 (h!22695 (t!143447 (t!143447 rules!1846))))) (inv!22707 (transformation!3043 (h!22695 (t!143447 (t!143447 rules!1846))))) e!1013859))))

(declare-fun b!1578416 () Bool)

(declare-fun e!1013857 () Bool)

(declare-fun tp!464561 () Bool)

(assert (=> b!1578416 (= e!1013857 (and e!1013858 tp!464561))))

(assert (=> b!1577591 (= tp!464454 e!1013857)))

(assert (= b!1578417 b!1578418))

(assert (= b!1578416 b!1578417))

(assert (= (and b!1577591 ((_ is Cons!17294) (t!143447 (t!143447 rules!1846)))) b!1578416))

(declare-fun m!1860559 () Bool)

(assert (=> b!1578417 m!1860559))

(declare-fun m!1860561 () Bool)

(assert (=> b!1578417 m!1860561))

(declare-fun b_lambda!49673 () Bool)

(assert (= b_lambda!49661 (or d!468644 b_lambda!49673)))

(declare-fun bs!390761 () Bool)

(declare-fun d!469038 () Bool)

(assert (= bs!390761 (and d!469038 d!468644)))

(assert (=> bs!390761 (= (dynLambda!7674 lambda!66410 (h!22695 rules!1846)) (ruleValid!705 thiss!17113 (h!22695 rules!1846)))))

(assert (=> bs!390761 m!1858721))

(assert (=> b!1577850 d!469038))

(declare-fun b_lambda!49675 () Bool)

(assert (= b_lambda!49671 (or d!468542 b_lambda!49675)))

(declare-fun bs!390762 () Bool)

(declare-fun d!469040 () Bool)

(assert (= bs!390762 (and d!469040 d!468542)))

(assert (=> bs!390762 (= (dynLambda!7677 lambda!66401 (h!22694 tokens!457)) (rulesProduceIndividualToken!1332 thiss!17113 rules!1846 (h!22694 tokens!457)))))

(assert (=> bs!390762 m!1858453))

(assert (=> b!1578176 d!469040))

(declare-fun b_lambda!49677 () Bool)

(assert (= b_lambda!49669 (or (and b!1577593 b_free!42525 (= (toChars!4301 (transformation!3043 (h!22695 (t!143447 rules!1846)))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))))) (and b!1577582 b_free!42521) (and b!1577278 b_free!42509 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))))) (and b!1577283 b_free!42505 (= (toChars!4301 (transformation!3043 (h!22695 rules!1846))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))))) (and b!1578355 b_free!42529 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))))) (and b!1578418 b_free!42533 (= (toChars!4301 (transformation!3043 (h!22695 (t!143447 (t!143447 rules!1846))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))))) b_lambda!49677)))

(declare-fun b_lambda!49679 () Bool)

(assert (= b_lambda!49665 (or (and b!1577283 b_free!42505 (= (toChars!4301 (transformation!3043 (h!22695 rules!1846))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))))) (and b!1578418 b_free!42533 (= (toChars!4301 (transformation!3043 (h!22695 (t!143447 (t!143447 rules!1846))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))))) (and b!1577593 b_free!42525 (= (toChars!4301 (transformation!3043 (h!22695 (t!143447 rules!1846)))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))))) (and b!1578355 b_free!42529) (and b!1577582 b_free!42521 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))))) (and b!1577278 b_free!42509 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))))) b_lambda!49679)))

(declare-fun b_lambda!49681 () Bool)

(assert (= b_lambda!49659 (or (and b!1577593 b_free!42525 (= (toChars!4301 (transformation!3043 (h!22695 (t!143447 rules!1846)))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))))) (and b!1577582 b_free!42521) (and b!1577278 b_free!42509 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 tokens!457)))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))))) (and b!1577283 b_free!42505 (= (toChars!4301 (transformation!3043 (h!22695 rules!1846))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))))) (and b!1578355 b_free!42529 (= (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 (t!143446 tokens!457)))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))))) (and b!1578418 b_free!42533 (= (toChars!4301 (transformation!3043 (h!22695 (t!143447 (t!143447 rules!1846))))) (toChars!4301 (transformation!3043 (rule!4837 (h!22694 (t!143446 tokens!457))))))) b_lambda!49681)))

(check-sat (not d!468986) (not b!1578347) (not b!1578165) (not b!1578391) (not d!468882) (not b!1577837) (not b_next!43207) b_and!110509 (not b!1578325) (not b!1577858) (not b!1578164) b_and!110517 (not b!1578191) (not d!468754) (not b!1578058) (not d!468682) (not b!1578268) (not b!1578065) (not b!1578337) (not d!468874) b_and!110519 (not b!1578270) (not b_lambda!49679) (not b!1578067) (not b!1578198) (not b!1578409) (not b!1578343) (not b!1578013) b_and!110513 (not b!1578055) b_and!110521 (not bm!102669) (not d!468920) (not bm!102662) (not b_lambda!49653) (not d!468676) (not d!468746) (not b!1578392) (not b!1578044) (not d!468884) (not b!1578041) (not d!468996) (not b!1578143) (not d!468852) (not b!1578142) (not b!1578318) (not b!1577621) (not b!1578382) (not b!1578002) b_and!110515 (not b!1578042) (not d!468966) (not d!468704) (not d!468788) (not b_next!43235) (not b!1578354) (not d!469016) (not d!468806) (not b_lambda!49655) (not b!1578140) (not b!1578066) (not d!468976) (not b!1577836) (not b!1578057) (not d!469002) (not b!1577649) (not b!1577708) (not b!1578128) (not b!1578129) (not b!1578342) (not b!1578389) (not b!1578285) (not b!1578163) (not d!468844) (not b!1578171) (not d!469012) (not b!1578167) b_and!110511 (not b!1578381) (not bm!102670) (not d!468856) (not d!468886) (not b!1578314) (not b!1578400) (not b!1578288) (not b!1578359) (not d!468702) b_and!110523 (not b!1578130) (not d!468860) (not bs!390761) (not b!1578287) (not d!468962) (not b!1577773) (not d!468960) (not b!1578414) (not d!468656) (not b!1578324) (not bs!390762) (not b!1578295) (not b!1578273) (not b!1578395) (not b!1578169) (not b!1578261) (not b!1577895) (not b_lambda!49675) (not b!1578124) (not b!1577710) (not b!1578280) (not d!468926) (not d!468890) (not b!1578120) (not d!469030) (not b!1578313) (not b!1578405) (not b!1578134) (not b!1577675) (not b!1578399) (not b!1578040) (not b!1578032) (not b!1577860) (not d!468866) (not b!1577999) (not d!468984) (not b!1578339) (not b!1578317) (not b_lambda!49681) (not b!1578262) (not b!1578275) (not b!1578387) (not d!468948) (not d!468790) b_and!110433 (not d!468654) (not b!1577998) (not d!468964) (not tb!88775) (not b!1578413) (not b!1577839) (not b!1578402) (not b!1578146) (not b!1578353) (not d!468678) (not d!468998) (not d!468880) (not b!1578341) (not d!468708) (not b!1578050) (not b!1578398) (not b!1578286) (not b!1578005) (not b!1578152) (not b!1578127) (not b!1578346) (not d!468680) (not b!1578278) (not b!1578195) (not d!468990) (not b!1578012) (not b_next!43213) (not b!1578046) (not b!1577645) (not b!1578145) (not b!1577624) (not b!1577772) (not d!468850) (not b!1577691) (not d!469014) (not b!1577669) (not d!468944) (not b!1578260) (not b!1578054) (not b!1577771) (not b!1577697) (not b!1577620) (not b!1578177) (not b!1577827) (not b!1578274) (not b!1578135) (not b!1577828) (not b_lambda!49673) (not b!1578007) (not d!468688) (not b_next!43237) (not b!1578203) (not b!1577623) (not d!468938) (not b!1577664) (not b!1578060) (not b!1577898) (not d!468706) (not b!1577829) (not b!1577651) (not d!468842) (not b!1578045) (not d!468858) (not b!1577851) b_and!110461 (not b_next!43209) (not d!468662) (not d!468868) (not b_next!43211) (not b!1577689) (not b!1578345) (not d!468840) tp_is_empty!7173 (not b!1578259) (not b!1578338) (not d!468930) (not b!1578417) (not b_next!43223) (not b!1578000) (not b!1577889) (not b!1578048) (not b!1578121) (not d!468690) (not b!1577830) (not d!468810) (not b!1578364) (not b_next!43225) (not d!468862) (not d!468804) (not d!468876) (not b!1578404) (not d!468864) (not b_lambda!49677) (not b!1578118) (not b!1578064) (not b!1578194) (not b!1578349) (not d!468696) (not b!1578352) (not b!1578193) (not b!1578351) (not b!1577711) (not b_next!43229) (not d!468888) (not d!468872) (not b!1578038) (not b!1578039) (not d!468922) (not b!1578403) (not b!1578296) (not b_next!43233) (not b!1577663) (not b!1578047) (not b_next!43231) (not b!1578383) (not b!1577619) (not d!468992) (not d!468686) (not b!1578049) (not d!468870) (not d!468994) (not b!1577892) (not d!468660) (not b!1577300) (not d!468916) (not d!468932) (not d!468954) (not b!1578133) (not b!1578035) (not b!1577900) (not b!1578170) (not d!468796) (not d!469008) (not b!1578366) (not b!1578320) (not b!1578416) (not d!468936) (not b!1578368) (not b!1578394) (not d!468952) (not b!1578068) (not b!1578059) (not b!1578036) (not d!468878) (not b!1578350) (not b!1577662) (not d!468700) (not b!1578008) (not b!1578138) (not d!468892) (not b!1578322) (not b!1578357) (not b!1578358) (not b!1578385) (not b_next!43227) (not b!1578326) (not b!1577618) (not b!1578052) (not b!1578190) (not b!1578037) (not b!1578276) (not b!1578069) (not b!1578192) b_and!110465 (not d!468848) (not b!1577845) (not b!1577901) (not b!1578061) (not b!1577844) (not tb!88783) (not d!468974) (not b!1578141) (not b!1578386) (not b!1578415) (not b!1578062) (not d!468792) (not bm!102668) (not d!468918) b_and!110429 (not b!1577647) (not b!1578390) (not b!1578033) (not b!1578272) (not b!1578396) (not b!1578258) (not d!468928) (not d!468924) (not b!1577838))
(check-sat b_and!110517 b_and!110519 b_and!110511 b_and!110523 b_and!110433 (not b_next!43213) (not b_next!43237) (not b_next!43225) (not b_next!43229) (not b_next!43233) (not b_next!43231) (not b_next!43227) b_and!110465 b_and!110429 (not b_next!43207) b_and!110509 b_and!110513 b_and!110521 b_and!110515 (not b_next!43235) b_and!110461 (not b_next!43209) (not b_next!43223) (not b_next!43211))
