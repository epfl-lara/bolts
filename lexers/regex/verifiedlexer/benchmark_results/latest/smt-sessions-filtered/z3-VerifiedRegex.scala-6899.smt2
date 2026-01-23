; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363656 () Bool)

(assert start!363656)

(declare-fun b!3873839 () Bool)

(declare-fun b_free!104677 () Bool)

(declare-fun b_next!105381 () Bool)

(assert (=> b!3873839 (= b_free!104677 (not b_next!105381))))

(declare-fun tp!1174467 () Bool)

(declare-fun b_and!290427 () Bool)

(assert (=> b!3873839 (= tp!1174467 b_and!290427)))

(declare-fun b_free!104679 () Bool)

(declare-fun b_next!105383 () Bool)

(assert (=> b!3873839 (= b_free!104679 (not b_next!105383))))

(declare-fun tp!1174472 () Bool)

(declare-fun b_and!290429 () Bool)

(assert (=> b!3873839 (= tp!1174472 b_and!290429)))

(declare-fun b!3873841 () Bool)

(declare-fun b_free!104681 () Bool)

(declare-fun b_next!105385 () Bool)

(assert (=> b!3873841 (= b_free!104681 (not b_next!105385))))

(declare-fun tp!1174473 () Bool)

(declare-fun b_and!290431 () Bool)

(assert (=> b!3873841 (= tp!1174473 b_and!290431)))

(declare-fun b_free!104683 () Bool)

(declare-fun b_next!105387 () Bool)

(assert (=> b!3873841 (= b_free!104683 (not b_next!105387))))

(declare-fun tp!1174480 () Bool)

(declare-fun b_and!290433 () Bool)

(assert (=> b!3873841 (= tp!1174480 b_and!290433)))

(declare-fun b!3873803 () Bool)

(declare-fun b_free!104685 () Bool)

(declare-fun b_next!105389 () Bool)

(assert (=> b!3873803 (= b_free!104685 (not b_next!105389))))

(declare-fun tp!1174475 () Bool)

(declare-fun b_and!290435 () Bool)

(assert (=> b!3873803 (= tp!1174475 b_and!290435)))

(declare-fun b_free!104687 () Bool)

(declare-fun b_next!105391 () Bool)

(assert (=> b!3873803 (= b_free!104687 (not b_next!105391))))

(declare-fun tp!1174466 () Bool)

(declare-fun b_and!290437 () Bool)

(assert (=> b!3873803 (= tp!1174466 b_and!290437)))

(declare-fun b!3873800 () Bool)

(declare-fun res!1569215 () Bool)

(declare-fun e!2396280 () Bool)

(assert (=> b!3873800 (=> (not res!1569215) (not e!2396280))))

(declare-datatypes ((List!41282 0))(
  ( (Nil!41158) (Cons!41158 (h!46578 (_ BitVec 16)) (t!314733 List!41282)) )
))
(declare-datatypes ((TokenValue!6616 0))(
  ( (FloatLiteralValue!13232 (text!46757 List!41282)) (TokenValueExt!6615 (__x!25449 Int)) (Broken!33080 (value!202609 List!41282)) (Object!6739) (End!6616) (Def!6616) (Underscore!6616) (Match!6616) (Else!6616) (Error!6616) (Case!6616) (If!6616) (Extends!6616) (Abstract!6616) (Class!6616) (Val!6616) (DelimiterValue!13232 (del!6676 List!41282)) (KeywordValue!6622 (value!202610 List!41282)) (CommentValue!13232 (value!202611 List!41282)) (WhitespaceValue!13232 (value!202612 List!41282)) (IndentationValue!6616 (value!202613 List!41282)) (String!46797) (Int32!6616) (Broken!33081 (value!202614 List!41282)) (Boolean!6617) (Unit!59058) (OperatorValue!6619 (op!6676 List!41282)) (IdentifierValue!13232 (value!202615 List!41282)) (IdentifierValue!13233 (value!202616 List!41282)) (WhitespaceValue!13233 (value!202617 List!41282)) (True!13232) (False!13232) (Broken!33082 (value!202618 List!41282)) (Broken!33083 (value!202619 List!41282)) (True!13233) (RightBrace!6616) (RightBracket!6616) (Colon!6616) (Null!6616) (Comma!6616) (LeftBracket!6616) (False!13233) (LeftBrace!6616) (ImaginaryLiteralValue!6616 (text!46758 List!41282)) (StringLiteralValue!19848 (value!202620 List!41282)) (EOFValue!6616 (value!202621 List!41282)) (IdentValue!6616 (value!202622 List!41282)) (DelimiterValue!13233 (value!202623 List!41282)) (DedentValue!6616 (value!202624 List!41282)) (NewLineValue!6616 (value!202625 List!41282)) (IntegerValue!19848 (value!202626 (_ BitVec 32)) (text!46759 List!41282)) (IntegerValue!19849 (value!202627 Int) (text!46760 List!41282)) (Times!6616) (Or!6616) (Equal!6616) (Minus!6616) (Broken!33084 (value!202628 List!41282)) (And!6616) (Div!6616) (LessEqual!6616) (Mod!6616) (Concat!17907) (Not!6616) (Plus!6616) (SpaceValue!6616 (value!202629 List!41282)) (IntegerValue!19850 (value!202630 Int) (text!46761 List!41282)) (StringLiteralValue!19849 (text!46762 List!41282)) (FloatLiteralValue!13233 (text!46763 List!41282)) (BytesLiteralValue!6616 (value!202631 List!41282)) (CommentValue!13233 (value!202632 List!41282)) (StringLiteralValue!19850 (value!202633 List!41282)) (ErrorTokenValue!6616 (msg!6677 List!41282)) )
))
(declare-datatypes ((C!22768 0))(
  ( (C!22769 (val!13478 Int)) )
))
(declare-datatypes ((Regex!11291 0))(
  ( (ElementMatch!11291 (c!674062 C!22768)) (Concat!17908 (regOne!23094 Regex!11291) (regTwo!23094 Regex!11291)) (EmptyExpr!11291) (Star!11291 (reg!11620 Regex!11291)) (EmptyLang!11291) (Union!11291 (regOne!23095 Regex!11291) (regTwo!23095 Regex!11291)) )
))
(declare-datatypes ((String!46798 0))(
  ( (String!46799 (value!202634 String)) )
))
(declare-datatypes ((List!41283 0))(
  ( (Nil!41159) (Cons!41159 (h!46579 C!22768) (t!314734 List!41283)) )
))
(declare-datatypes ((IArray!25199 0))(
  ( (IArray!25200 (innerList!12657 List!41283)) )
))
(declare-datatypes ((Conc!12597 0))(
  ( (Node!12597 (left!31608 Conc!12597) (right!31938 Conc!12597) (csize!25424 Int) (cheight!12808 Int)) (Leaf!19497 (xs!15903 IArray!25199) (csize!25425 Int)) (Empty!12597) )
))
(declare-datatypes ((BalanceConc!24788 0))(
  ( (BalanceConc!24789 (c!674063 Conc!12597)) )
))
(declare-datatypes ((TokenValueInjection!12660 0))(
  ( (TokenValueInjection!12661 (toValue!8814 Int) (toChars!8673 Int)) )
))
(declare-datatypes ((Rule!12572 0))(
  ( (Rule!12573 (regex!6386 Regex!11291) (tag!7246 String!46798) (isSeparator!6386 Bool) (transformation!6386 TokenValueInjection!12660)) )
))
(declare-datatypes ((Token!11910 0))(
  ( (Token!11911 (value!202635 TokenValue!6616) (rule!9278 Rule!12572) (size!30933 Int) (originalCharacters!6986 List!41283)) )
))
(declare-datatypes ((List!41284 0))(
  ( (Nil!41160) (Cons!41160 (h!46580 Token!11910) (t!314735 List!41284)) )
))
(declare-fun prefixTokens!80 () List!41284)

(declare-fun isEmpty!24424 (List!41284) Bool)

(assert (=> b!3873800 (= res!1569215 (not (isEmpty!24424 prefixTokens!80)))))

(declare-fun b!3873801 () Bool)

(declare-fun c!674057 () Bool)

(declare-fun lt!1349455 () List!41284)

(assert (=> b!3873801 (= c!674057 (isEmpty!24424 lt!1349455))))

(declare-fun tail!5925 (List!41284) List!41284)

(assert (=> b!3873801 (= lt!1349455 (tail!5925 prefixTokens!80))))

(declare-datatypes ((Unit!59059 0))(
  ( (Unit!59060) )
))
(declare-fun e!2396286 () Unit!59059)

(declare-fun e!2396311 () Unit!59059)

(assert (=> b!3873801 (= e!2396286 e!2396311)))

(declare-fun b!3873802 () Bool)

(declare-fun e!2396313 () Bool)

(assert (=> b!3873802 (= e!2396280 e!2396313)))

(declare-fun res!1569228 () Bool)

(assert (=> b!3873802 (=> (not res!1569228) (not e!2396313))))

(declare-fun lt!1349409 () List!41284)

(declare-fun suffixResult!91 () List!41283)

(declare-datatypes ((tuple2!40386 0))(
  ( (tuple2!40387 (_1!23327 List!41284) (_2!23327 List!41283)) )
))
(declare-fun lt!1349450 () tuple2!40386)

(assert (=> b!3873802 (= res!1569228 (= lt!1349450 (tuple2!40387 lt!1349409 suffixResult!91)))))

(declare-fun lt!1349448 () List!41283)

(declare-datatypes ((LexerInterface!5975 0))(
  ( (LexerInterfaceExt!5972 (__x!25450 Int)) (Lexer!5973) )
))
(declare-fun thiss!20629 () LexerInterface!5975)

(declare-datatypes ((List!41285 0))(
  ( (Nil!41161) (Cons!41161 (h!46581 Rule!12572) (t!314736 List!41285)) )
))
(declare-fun rules!2768 () List!41285)

(declare-fun lexList!1743 (LexerInterface!5975 List!41285 List!41283) tuple2!40386)

(assert (=> b!3873802 (= lt!1349450 (lexList!1743 thiss!20629 rules!2768 lt!1349448))))

(declare-fun suffixTokens!72 () List!41284)

(declare-fun ++!10529 (List!41284 List!41284) List!41284)

(assert (=> b!3873802 (= lt!1349409 (++!10529 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41283)

(declare-fun suffix!1176 () List!41283)

(declare-fun ++!10530 (List!41283 List!41283) List!41283)

(assert (=> b!3873802 (= lt!1349448 (++!10530 prefix!426 suffix!1176))))

(declare-fun e!2396305 () Bool)

(assert (=> b!3873803 (= e!2396305 (and tp!1174475 tp!1174466))))

(declare-fun b!3873804 () Bool)

(declare-fun e!2396284 () Bool)

(assert (=> b!3873804 (= e!2396284 false)))

(declare-fun b!3873805 () Bool)

(declare-fun res!1569225 () Bool)

(declare-fun e!2396293 () Bool)

(assert (=> b!3873805 (=> res!1569225 e!2396293)))

(declare-datatypes ((tuple2!40388 0))(
  ( (tuple2!40389 (_1!23328 Token!11910) (_2!23328 List!41283)) )
))
(declare-datatypes ((Option!8804 0))(
  ( (None!8803) (Some!8803 (v!39101 tuple2!40388)) )
))
(declare-fun lt!1349442 () Option!8804)

(declare-fun head!8208 (List!41284) Token!11910)

(assert (=> b!3873805 (= res!1569225 (not (= (head!8208 prefixTokens!80) (_1!23328 (v!39101 lt!1349442)))))))

(declare-fun b!3873806 () Bool)

(declare-fun e!2396300 () Unit!59059)

(declare-fun Unit!59061 () Unit!59059)

(assert (=> b!3873806 (= e!2396300 Unit!59061)))

(declare-fun b!3873807 () Bool)

(declare-fun e!2396308 () Bool)

(declare-fun size!30934 (List!41283) Int)

(assert (=> b!3873807 (= e!2396308 (= (size!30933 (_1!23328 (v!39101 lt!1349442))) (size!30934 (originalCharacters!6986 (_1!23328 (v!39101 lt!1349442))))))))

(declare-fun e!2396318 () Bool)

(declare-fun tp!1174481 () Bool)

(declare-fun b!3873808 () Bool)

(declare-fun e!2396290 () Bool)

(declare-fun inv!55316 (String!46798) Bool)

(declare-fun inv!55319 (TokenValueInjection!12660) Bool)

(assert (=> b!3873808 (= e!2396290 (and tp!1174481 (inv!55316 (tag!7246 (rule!9278 (h!46580 suffixTokens!72)))) (inv!55319 (transformation!6386 (rule!9278 (h!46580 suffixTokens!72)))) e!2396318))))

(declare-fun e!2396317 () Bool)

(declare-fun b!3873809 () Bool)

(declare-fun tp!1174477 () Bool)

(assert (=> b!3873809 (= e!2396317 (and tp!1174477 (inv!55316 (tag!7246 (h!46581 rules!2768))) (inv!55319 (transformation!6386 (h!46581 rules!2768))) e!2396305))))

(declare-fun b!3873810 () Bool)

(declare-fun e!2396295 () Unit!59059)

(declare-fun Unit!59062 () Unit!59059)

(assert (=> b!3873810 (= e!2396295 Unit!59062)))

(declare-fun lt!1349415 () Int)

(assert (=> b!3873810 (= lt!1349415 (size!30934 lt!1349448))))

(declare-fun lt!1349437 () Unit!59059)

(declare-fun lt!1349435 () List!41283)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1259 (LexerInterface!5975 List!41285 List!41283 List!41283 List!41283 Rule!12572) Unit!59059)

(assert (=> b!3873810 (= lt!1349437 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1259 thiss!20629 rules!2768 lt!1349435 lt!1349448 (_2!23328 (v!39101 lt!1349442)) (rule!9278 (_1!23328 (v!39101 lt!1349442)))))))

(declare-fun lt!1349406 () Int)

(declare-fun lt!1349428 () TokenValue!6616)

(declare-fun maxPrefixOneRule!2361 (LexerInterface!5975 Rule!12572 List!41283) Option!8804)

(assert (=> b!3873810 (= (maxPrefixOneRule!2361 thiss!20629 (rule!9278 (_1!23328 (v!39101 lt!1349442))) lt!1349448) (Some!8803 (tuple2!40389 (Token!11911 lt!1349428 (rule!9278 (_1!23328 (v!39101 lt!1349442))) lt!1349406 lt!1349435) (_2!23328 (v!39101 lt!1349442)))))))

(declare-fun lt!1349426 () tuple2!40388)

(declare-fun get!13619 (Option!8804) tuple2!40388)

(assert (=> b!3873810 (= lt!1349426 (get!13619 lt!1349442))))

(declare-fun c!674060 () Bool)

(declare-fun lt!1349444 () Int)

(assert (=> b!3873810 (= c!674060 (< (size!30934 (_2!23328 lt!1349426)) lt!1349444))))

(declare-fun lt!1349410 () Unit!59059)

(assert (=> b!3873810 (= lt!1349410 e!2396286)))

(assert (=> b!3873810 false))

(declare-fun b!3873811 () Bool)

(declare-fun res!1569223 () Bool)

(declare-fun e!2396316 () Bool)

(assert (=> b!3873811 (=> res!1569223 e!2396316)))

(declare-fun lt!1349422 () List!41283)

(declare-fun lt!1349430 () tuple2!40386)

(assert (=> b!3873811 (= res!1569223 (not (= (lexList!1743 thiss!20629 rules!2768 lt!1349422) lt!1349430)))))

(declare-fun res!1569218 () Bool)

(assert (=> start!363656 (=> (not res!1569218) (not e!2396280))))

(get-info :version)

(assert (=> start!363656 (= res!1569218 ((_ is Lexer!5973) thiss!20629))))

(assert (=> start!363656 e!2396280))

(declare-fun e!2396307 () Bool)

(assert (=> start!363656 e!2396307))

(assert (=> start!363656 true))

(declare-fun e!2396301 () Bool)

(assert (=> start!363656 e!2396301))

(declare-fun e!2396292 () Bool)

(assert (=> start!363656 e!2396292))

(declare-fun e!2396282 () Bool)

(assert (=> start!363656 e!2396282))

(declare-fun e!2396314 () Bool)

(assert (=> start!363656 e!2396314))

(declare-fun e!2396283 () Bool)

(assert (=> start!363656 e!2396283))

(declare-fun b!3873799 () Bool)

(declare-fun e!2396299 () Bool)

(declare-fun e!2396302 () Bool)

(assert (=> b!3873799 (= e!2396299 (not e!2396302))))

(declare-fun res!1569226 () Bool)

(assert (=> b!3873799 (=> res!1569226 e!2396302)))

(declare-fun lt!1349412 () List!41283)

(assert (=> b!3873799 (= res!1569226 (not (= lt!1349412 lt!1349448)))))

(declare-fun lt!1349411 () tuple2!40386)

(assert (=> b!3873799 (= lt!1349411 (lexList!1743 thiss!20629 rules!2768 (_2!23328 (v!39101 lt!1349442))))))

(declare-fun lt!1349429 () List!41283)

(assert (=> b!3873799 (and (= (size!30933 (_1!23328 (v!39101 lt!1349442))) lt!1349406) (= (originalCharacters!6986 (_1!23328 (v!39101 lt!1349442))) lt!1349435) (= (v!39101 lt!1349442) (tuple2!40389 (Token!11911 lt!1349428 (rule!9278 (_1!23328 (v!39101 lt!1349442))) lt!1349406 lt!1349435) lt!1349429)))))

(assert (=> b!3873799 (= lt!1349406 (size!30934 lt!1349435))))

(assert (=> b!3873799 e!2396308))

(declare-fun res!1569224 () Bool)

(assert (=> b!3873799 (=> (not res!1569224) (not e!2396308))))

(assert (=> b!3873799 (= res!1569224 (= (value!202635 (_1!23328 (v!39101 lt!1349442))) lt!1349428))))

(declare-fun apply!9629 (TokenValueInjection!12660 BalanceConc!24788) TokenValue!6616)

(declare-fun seqFromList!4657 (List!41283) BalanceConc!24788)

(assert (=> b!3873799 (= lt!1349428 (apply!9629 (transformation!6386 (rule!9278 (_1!23328 (v!39101 lt!1349442)))) (seqFromList!4657 lt!1349435)))))

(assert (=> b!3873799 (= (_2!23328 (v!39101 lt!1349442)) lt!1349429)))

(declare-fun lt!1349418 () Unit!59059)

(declare-fun lemmaSamePrefixThenSameSuffix!1706 (List!41283 List!41283 List!41283 List!41283 List!41283) Unit!59059)

(assert (=> b!3873799 (= lt!1349418 (lemmaSamePrefixThenSameSuffix!1706 lt!1349435 (_2!23328 (v!39101 lt!1349442)) lt!1349435 lt!1349429 lt!1349448))))

(declare-fun getSuffix!1940 (List!41283 List!41283) List!41283)

(assert (=> b!3873799 (= lt!1349429 (getSuffix!1940 lt!1349448 lt!1349435))))

(declare-fun isPrefix!3485 (List!41283 List!41283) Bool)

(assert (=> b!3873799 (isPrefix!3485 lt!1349435 lt!1349412)))

(assert (=> b!3873799 (= lt!1349412 (++!10530 lt!1349435 (_2!23328 (v!39101 lt!1349442))))))

(declare-fun lt!1349443 () Unit!59059)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2348 (List!41283 List!41283) Unit!59059)

(assert (=> b!3873799 (= lt!1349443 (lemmaConcatTwoListThenFirstIsPrefix!2348 lt!1349435 (_2!23328 (v!39101 lt!1349442))))))

(declare-fun list!15310 (BalanceConc!24788) List!41283)

(declare-fun charsOf!4214 (Token!11910) BalanceConc!24788)

(assert (=> b!3873799 (= lt!1349435 (list!15310 (charsOf!4214 (_1!23328 (v!39101 lt!1349442)))))))

(declare-fun ruleValid!2338 (LexerInterface!5975 Rule!12572) Bool)

(assert (=> b!3873799 (ruleValid!2338 thiss!20629 (rule!9278 (_1!23328 (v!39101 lt!1349442))))))

(declare-fun lt!1349445 () Unit!59059)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1418 (LexerInterface!5975 Rule!12572 List!41285) Unit!59059)

(assert (=> b!3873799 (= lt!1349445 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1418 thiss!20629 (rule!9278 (_1!23328 (v!39101 lt!1349442))) rules!2768))))

(declare-fun lt!1349454 () Unit!59059)

(declare-fun lemmaCharactersSize!1047 (Token!11910) Unit!59059)

(assert (=> b!3873799 (= lt!1349454 (lemmaCharactersSize!1047 (_1!23328 (v!39101 lt!1349442))))))

(declare-fun b!3873812 () Bool)

(declare-fun e!2396289 () Bool)

(assert (=> b!3873812 (= e!2396289 false)))

(declare-fun b!3873813 () Bool)

(declare-fun Unit!59063 () Unit!59059)

(assert (=> b!3873813 (= e!2396295 Unit!59063)))

(declare-fun b!3873814 () Bool)

(assert (=> b!3873814 (= e!2396316 true)))

(declare-fun lt!1349416 () List!41284)

(declare-fun lt!1349408 () List!41283)

(assert (=> b!3873814 (= (lexList!1743 thiss!20629 rules!2768 lt!1349408) (tuple2!40387 lt!1349416 Nil!41159))))

(declare-fun lt!1349446 () Unit!59059)

(declare-fun lemmaLexThenLexPrefix!575 (LexerInterface!5975 List!41285 List!41283 List!41283 List!41284 List!41284 List!41283) Unit!59059)

(assert (=> b!3873814 (= lt!1349446 (lemmaLexThenLexPrefix!575 thiss!20629 rules!2768 lt!1349408 suffix!1176 lt!1349416 suffixTokens!72 suffixResult!91))))

(declare-fun e!2396294 () Bool)

(declare-fun b!3873815 () Bool)

(declare-fun tp!1174471 () Bool)

(declare-fun inv!21 (TokenValue!6616) Bool)

(assert (=> b!3873815 (= e!2396294 (and (inv!21 (value!202635 (h!46580 suffixTokens!72))) e!2396290 tp!1174471))))

(declare-fun b!3873816 () Bool)

(declare-fun e!2396287 () Bool)

(assert (=> b!3873816 (= e!2396287 e!2396299)))

(declare-fun res!1569227 () Bool)

(assert (=> b!3873816 (=> (not res!1569227) (not e!2396299))))

(assert (=> b!3873816 (= res!1569227 ((_ is Some!8803) lt!1349442))))

(declare-fun maxPrefix!3279 (LexerInterface!5975 List!41285 List!41283) Option!8804)

(assert (=> b!3873816 (= lt!1349442 (maxPrefix!3279 thiss!20629 rules!2768 lt!1349448))))

(declare-fun b!3873817 () Bool)

(declare-fun res!1569216 () Bool)

(assert (=> b!3873817 (=> (not res!1569216) (not e!2396280))))

(declare-fun isEmpty!24425 (List!41285) Bool)

(assert (=> b!3873817 (= res!1569216 (not (isEmpty!24425 rules!2768)))))

(declare-fun b!3873818 () Bool)

(declare-fun e!2396310 () Bool)

(declare-fun e!2396312 () Bool)

(assert (=> b!3873818 (= e!2396310 e!2396312)))

(declare-fun res!1569236 () Bool)

(assert (=> b!3873818 (=> res!1569236 e!2396312)))

(declare-fun lt!1349432 () List!41283)

(assert (=> b!3873818 (= res!1569236 (or (not (= lt!1349432 lt!1349448)) (not (= lt!1349432 lt!1349412))))))

(declare-fun lt!1349417 () List!41283)

(assert (=> b!3873818 (= lt!1349432 (++!10530 lt!1349417 suffix!1176))))

(declare-fun b!3873819 () Bool)

(declare-fun e!2396281 () Bool)

(assert (=> b!3873819 (= e!2396281 e!2396310)))

(declare-fun res!1569235 () Bool)

(assert (=> b!3873819 (=> res!1569235 e!2396310)))

(assert (=> b!3873819 (= res!1569235 (not (= lt!1349417 prefix!426)))))

(assert (=> b!3873819 (= lt!1349417 (++!10530 lt!1349435 lt!1349408))))

(assert (=> b!3873819 (= lt!1349408 (getSuffix!1940 prefix!426 lt!1349435))))

(declare-fun b!3873820 () Bool)

(declare-fun e!2396288 () Bool)

(declare-fun e!2396304 () Bool)

(assert (=> b!3873820 (= e!2396288 e!2396304)))

(declare-fun res!1569237 () Bool)

(assert (=> b!3873820 (=> res!1569237 e!2396304)))

(assert (=> b!3873820 (= res!1569237 (not (= lt!1349411 lt!1349430)))))

(declare-fun lt!1349413 () List!41284)

(assert (=> b!3873820 (= lt!1349430 (tuple2!40387 lt!1349413 suffixResult!91))))

(assert (=> b!3873820 (= lt!1349413 (++!10529 lt!1349416 suffixTokens!72))))

(assert (=> b!3873820 (= lt!1349416 (tail!5925 prefixTokens!80))))

(assert (=> b!3873820 (isPrefix!3485 lt!1349408 lt!1349422)))

(declare-fun lt!1349439 () Unit!59059)

(assert (=> b!3873820 (= lt!1349439 (lemmaConcatTwoListThenFirstIsPrefix!2348 lt!1349408 suffix!1176))))

(declare-fun b!3873821 () Bool)

(assert (=> b!3873821 (= e!2396304 e!2396316)))

(declare-fun res!1569217 () Bool)

(assert (=> b!3873821 (=> res!1569217 e!2396316)))

(declare-fun lt!1349436 () List!41284)

(assert (=> b!3873821 (= res!1569217 (not (= lt!1349436 lt!1349409)))))

(declare-fun lt!1349431 () List!41284)

(assert (=> b!3873821 (= lt!1349436 (++!10529 lt!1349431 lt!1349413))))

(assert (=> b!3873821 (= lt!1349436 (++!10529 (++!10529 lt!1349431 lt!1349416) suffixTokens!72))))

(declare-fun lt!1349419 () Unit!59059)

(declare-fun lemmaConcatAssociativity!2243 (List!41284 List!41284 List!41284) Unit!59059)

(assert (=> b!3873821 (= lt!1349419 (lemmaConcatAssociativity!2243 lt!1349431 lt!1349416 suffixTokens!72))))

(declare-fun lt!1349434 () Unit!59059)

(assert (=> b!3873821 (= lt!1349434 e!2396300)))

(declare-fun c!674058 () Bool)

(assert (=> b!3873821 (= c!674058 (isEmpty!24424 lt!1349416))))

(declare-fun e!2396306 () Bool)

(declare-fun e!2396315 () Bool)

(declare-fun b!3873822 () Bool)

(declare-fun tp!1174482 () Bool)

(assert (=> b!3873822 (= e!2396306 (and tp!1174482 (inv!55316 (tag!7246 (rule!9278 (h!46580 prefixTokens!80)))) (inv!55319 (transformation!6386 (rule!9278 (h!46580 prefixTokens!80)))) e!2396315))))

(declare-fun b!3873823 () Bool)

(declare-fun tp_is_empty!19553 () Bool)

(declare-fun tp!1174474 () Bool)

(assert (=> b!3873823 (= e!2396307 (and tp_is_empty!19553 tp!1174474))))

(declare-fun b!3873824 () Bool)

(declare-fun tp!1174470 () Bool)

(assert (=> b!3873824 (= e!2396292 (and e!2396317 tp!1174470))))

(declare-fun b!3873825 () Bool)

(declare-fun Unit!59064 () Unit!59059)

(assert (=> b!3873825 (= e!2396311 Unit!59064)))

(declare-fun lt!1349433 () Unit!59059)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!470 (List!41283 List!41283 List!41283 List!41283) Unit!59059)

(assert (=> b!3873825 (= lt!1349433 (lemmaConcatSameAndSameSizesThenSameLists!470 lt!1349435 (_2!23328 (v!39101 lt!1349442)) lt!1349435 (_2!23328 lt!1349426)))))

(assert (=> b!3873825 (= (_2!23328 (v!39101 lt!1349442)) (_2!23328 lt!1349426))))

(declare-fun lt!1349424 () Unit!59059)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!46 (LexerInterface!5975 List!41285 List!41283 List!41283 List!41284 List!41283) Unit!59059)

(assert (=> b!3873825 (= lt!1349424 (lemmaLexWithSmallerInputCannotProduceSameResults!46 thiss!20629 rules!2768 suffix!1176 (_2!23328 lt!1349426) suffixTokens!72 suffixResult!91))))

(declare-fun res!1569230 () Bool)

(declare-fun call!282768 () tuple2!40386)

(declare-fun lt!1349423 () tuple2!40386)

(assert (=> b!3873825 (= res!1569230 (not (= call!282768 lt!1349423)))))

(assert (=> b!3873825 (=> (not res!1569230) (not e!2396284))))

(assert (=> b!3873825 e!2396284))

(declare-fun b!3873826 () Bool)

(declare-fun Unit!59065 () Unit!59059)

(assert (=> b!3873826 (= e!2396300 Unit!59065)))

(declare-fun lt!1349420 () Unit!59059)

(assert (=> b!3873826 (= lt!1349420 (lemmaLexWithSmallerInputCannotProduceSameResults!46 thiss!20629 rules!2768 (_2!23328 (v!39101 lt!1349442)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3873826 false))

(declare-fun b!3873827 () Bool)

(declare-fun res!1569222 () Bool)

(assert (=> b!3873827 (=> (not res!1569222) (not e!2396280))))

(declare-fun rulesInvariant!5318 (LexerInterface!5975 List!41285) Bool)

(assert (=> b!3873827 (= res!1569222 (rulesInvariant!5318 thiss!20629 rules!2768))))

(declare-fun bm!282763 () Bool)

(assert (=> bm!282763 (= call!282768 (lexList!1743 thiss!20629 rules!2768 (_2!23328 lt!1349426)))))

(declare-fun b!3873828 () Bool)

(declare-fun e!2396278 () Bool)

(assert (=> b!3873828 (= e!2396302 e!2396278)))

(declare-fun res!1569220 () Bool)

(assert (=> b!3873828 (=> res!1569220 e!2396278)))

(assert (=> b!3873828 (= res!1569220 (not (= lt!1349450 (tuple2!40387 (++!10529 lt!1349431 (_1!23327 lt!1349411)) (_2!23327 lt!1349411)))))))

(assert (=> b!3873828 (= lt!1349431 (Cons!41160 (_1!23328 (v!39101 lt!1349442)) Nil!41160))))

(declare-fun b!3873829 () Bool)

(declare-fun e!2396291 () Unit!59059)

(declare-fun Unit!59066 () Unit!59059)

(assert (=> b!3873829 (= e!2396291 Unit!59066)))

(declare-fun b!3873830 () Bool)

(declare-fun Unit!59067 () Unit!59059)

(assert (=> b!3873830 (= e!2396291 Unit!59067)))

(declare-fun lt!1349425 () Unit!59059)

(assert (=> b!3873830 (= lt!1349425 (lemmaConcatTwoListThenFirstIsPrefix!2348 prefix!426 suffix!1176))))

(assert (=> b!3873830 (isPrefix!3485 prefix!426 lt!1349448)))

(declare-fun lt!1349427 () Unit!59059)

(declare-fun lemmaIsPrefixSameLengthThenSameList!737 (List!41283 List!41283 List!41283) Unit!59059)

(assert (=> b!3873830 (= lt!1349427 (lemmaIsPrefixSameLengthThenSameList!737 lt!1349435 prefix!426 lt!1349448))))

(assert (=> b!3873830 (= lt!1349435 prefix!426)))

(declare-fun lt!1349449 () Unit!59059)

(assert (=> b!3873830 (= lt!1349449 (lemmaSamePrefixThenSameSuffix!1706 lt!1349435 (_2!23328 (v!39101 lt!1349442)) prefix!426 suffix!1176 lt!1349448))))

(assert (=> b!3873830 false))

(declare-fun b!3873831 () Bool)

(declare-fun tp!1174469 () Bool)

(declare-fun inv!55320 (Token!11910) Bool)

(assert (=> b!3873831 (= e!2396314 (and (inv!55320 (h!46580 suffixTokens!72)) e!2396294 tp!1174469))))

(declare-fun b!3873832 () Bool)

(declare-fun Unit!59068 () Unit!59059)

(assert (=> b!3873832 (= e!2396286 Unit!59068)))

(declare-fun b!3873833 () Bool)

(declare-fun tp!1174476 () Bool)

(assert (=> b!3873833 (= e!2396283 (and tp_is_empty!19553 tp!1174476))))

(declare-fun b!3873834 () Bool)

(declare-fun e!2396297 () Bool)

(declare-fun tp!1174468 () Bool)

(assert (=> b!3873834 (= e!2396282 (and (inv!55320 (h!46580 prefixTokens!80)) e!2396297 tp!1174468))))

(declare-fun b!3873835 () Bool)

(declare-fun e!2396279 () Bool)

(assert (=> b!3873835 (= e!2396312 e!2396279)))

(declare-fun res!1569214 () Bool)

(assert (=> b!3873835 (=> res!1569214 e!2396279)))

(declare-fun lt!1349453 () List!41283)

(assert (=> b!3873835 (= res!1569214 (or (not (= lt!1349448 lt!1349432)) (not (= lt!1349448 lt!1349453)) (not (= lt!1349412 lt!1349453))))))

(assert (=> b!3873835 (= lt!1349432 lt!1349453)))

(assert (=> b!3873835 (= lt!1349453 (++!10530 lt!1349435 lt!1349422))))

(assert (=> b!3873835 (= lt!1349422 (++!10530 lt!1349408 suffix!1176))))

(declare-fun lt!1349447 () Unit!59059)

(declare-fun lemmaConcatAssociativity!2244 (List!41283 List!41283 List!41283) Unit!59059)

(assert (=> b!3873835 (= lt!1349447 (lemmaConcatAssociativity!2244 lt!1349435 lt!1349408 suffix!1176))))

(declare-fun b!3873836 () Bool)

(assert (=> b!3873836 (= e!2396279 e!2396288)))

(declare-fun res!1569221 () Bool)

(assert (=> b!3873836 (=> res!1569221 e!2396288)))

(assert (=> b!3873836 (= res!1569221 (not (= lt!1349422 (_2!23328 (v!39101 lt!1349442)))))))

(assert (=> b!3873836 (= (_2!23328 (v!39101 lt!1349442)) lt!1349422)))

(declare-fun lt!1349438 () Unit!59059)

(assert (=> b!3873836 (= lt!1349438 (lemmaSamePrefixThenSameSuffix!1706 lt!1349435 (_2!23328 (v!39101 lt!1349442)) lt!1349435 lt!1349422 lt!1349448))))

(assert (=> b!3873836 (isPrefix!3485 lt!1349435 lt!1349453)))

(declare-fun lt!1349407 () Unit!59059)

(assert (=> b!3873836 (= lt!1349407 (lemmaConcatTwoListThenFirstIsPrefix!2348 lt!1349435 lt!1349422))))

(declare-fun b!3873837 () Bool)

(declare-fun tp!1174478 () Bool)

(assert (=> b!3873837 (= e!2396297 (and (inv!21 (value!202635 (h!46580 prefixTokens!80))) e!2396306 tp!1174478))))

(declare-fun b!3873838 () Bool)

(assert (=> b!3873838 (= e!2396293 e!2396281)))

(declare-fun res!1569229 () Bool)

(assert (=> b!3873838 (=> res!1569229 e!2396281)))

(assert (=> b!3873838 (= res!1569229 (>= lt!1349406 (size!30934 prefix!426)))))

(assert (=> b!3873838 (isPrefix!3485 lt!1349435 prefix!426)))

(declare-fun lt!1349452 () Unit!59059)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!235 (List!41283 List!41283 List!41283) Unit!59059)

(assert (=> b!3873838 (= lt!1349452 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!235 prefix!426 lt!1349435 lt!1349448))))

(assert (=> b!3873838 (isPrefix!3485 prefix!426 lt!1349448)))

(declare-fun lt!1349440 () Unit!59059)

(assert (=> b!3873838 (= lt!1349440 (lemmaConcatTwoListThenFirstIsPrefix!2348 prefix!426 suffix!1176))))

(assert (=> b!3873839 (= e!2396315 (and tp!1174467 tp!1174472))))

(declare-fun b!3873840 () Bool)

(declare-fun tp!1174479 () Bool)

(assert (=> b!3873840 (= e!2396301 (and tp_is_empty!19553 tp!1174479))))

(assert (=> b!3873841 (= e!2396318 (and tp!1174473 tp!1174480))))

(declare-fun b!3873842 () Bool)

(assert (=> b!3873842 (= e!2396313 e!2396287)))

(declare-fun res!1569233 () Bool)

(assert (=> b!3873842 (=> (not res!1569233) (not e!2396287))))

(assert (=> b!3873842 (= res!1569233 (= (lexList!1743 thiss!20629 rules!2768 suffix!1176) lt!1349423))))

(assert (=> b!3873842 (= lt!1349423 (tuple2!40387 suffixTokens!72 suffixResult!91))))

(declare-fun b!3873843 () Bool)

(declare-fun Unit!59069 () Unit!59059)

(assert (=> b!3873843 (= e!2396311 Unit!59069)))

(declare-fun lt!1349441 () Unit!59059)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!46 (LexerInterface!5975 List!41285 List!41283 List!41283 List!41284 List!41283 List!41284) Unit!59059)

(assert (=> b!3873843 (= lt!1349441 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!46 thiss!20629 rules!2768 suffix!1176 (_2!23328 lt!1349426) suffixTokens!72 suffixResult!91 lt!1349455))))

(declare-fun res!1569231 () Bool)

(assert (=> b!3873843 (= res!1569231 (not (= call!282768 (tuple2!40387 (++!10529 lt!1349455 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3873843 (=> (not res!1569231) (not e!2396289))))

(assert (=> b!3873843 e!2396289))

(declare-fun b!3873844 () Bool)

(declare-fun res!1569219 () Bool)

(assert (=> b!3873844 (=> (not res!1569219) (not e!2396280))))

(declare-fun isEmpty!24426 (List!41283) Bool)

(assert (=> b!3873844 (= res!1569219 (not (isEmpty!24426 prefix!426)))))

(declare-fun b!3873845 () Bool)

(assert (=> b!3873845 (= e!2396278 e!2396293)))

(declare-fun res!1569234 () Bool)

(assert (=> b!3873845 (=> res!1569234 e!2396293)))

(declare-fun lt!1349414 () Int)

(assert (=> b!3873845 (= res!1569234 (<= lt!1349414 lt!1349444))))

(declare-fun lt!1349451 () Unit!59059)

(assert (=> b!3873845 (= lt!1349451 e!2396291)))

(declare-fun c!674059 () Bool)

(assert (=> b!3873845 (= c!674059 (= lt!1349414 lt!1349444))))

(declare-fun lt!1349421 () Unit!59059)

(assert (=> b!3873845 (= lt!1349421 e!2396295)))

(declare-fun c!674061 () Bool)

(assert (=> b!3873845 (= c!674061 (< lt!1349414 lt!1349444))))

(assert (=> b!3873845 (= lt!1349444 (size!30934 suffix!1176))))

(assert (=> b!3873845 (= lt!1349414 (size!30934 (_2!23328 (v!39101 lt!1349442))))))

(declare-fun b!3873846 () Bool)

(declare-fun res!1569232 () Bool)

(assert (=> b!3873846 (=> res!1569232 e!2396278)))

(assert (=> b!3873846 (= res!1569232 (or (not (= lt!1349411 (tuple2!40387 (_1!23327 lt!1349411) (_2!23327 lt!1349411)))) (= (_2!23328 (v!39101 lt!1349442)) suffix!1176)))))

(assert (= (and start!363656 res!1569218) b!3873817))

(assert (= (and b!3873817 res!1569216) b!3873827))

(assert (= (and b!3873827 res!1569222) b!3873800))

(assert (= (and b!3873800 res!1569215) b!3873844))

(assert (= (and b!3873844 res!1569219) b!3873802))

(assert (= (and b!3873802 res!1569228) b!3873842))

(assert (= (and b!3873842 res!1569233) b!3873816))

(assert (= (and b!3873816 res!1569227) b!3873799))

(assert (= (and b!3873799 res!1569224) b!3873807))

(assert (= (and b!3873799 (not res!1569226)) b!3873828))

(assert (= (and b!3873828 (not res!1569220)) b!3873846))

(assert (= (and b!3873846 (not res!1569232)) b!3873845))

(assert (= (and b!3873845 c!674061) b!3873810))

(assert (= (and b!3873845 (not c!674061)) b!3873813))

(assert (= (and b!3873810 c!674060) b!3873801))

(assert (= (and b!3873810 (not c!674060)) b!3873832))

(assert (= (and b!3873801 c!674057) b!3873825))

(assert (= (and b!3873801 (not c!674057)) b!3873843))

(assert (= (and b!3873825 res!1569230) b!3873804))

(assert (= (and b!3873843 res!1569231) b!3873812))

(assert (= (or b!3873825 b!3873843) bm!282763))

(assert (= (and b!3873845 c!674059) b!3873830))

(assert (= (and b!3873845 (not c!674059)) b!3873829))

(assert (= (and b!3873845 (not res!1569234)) b!3873805))

(assert (= (and b!3873805 (not res!1569225)) b!3873838))

(assert (= (and b!3873838 (not res!1569229)) b!3873819))

(assert (= (and b!3873819 (not res!1569235)) b!3873818))

(assert (= (and b!3873818 (not res!1569236)) b!3873835))

(assert (= (and b!3873835 (not res!1569214)) b!3873836))

(assert (= (and b!3873836 (not res!1569221)) b!3873820))

(assert (= (and b!3873820 (not res!1569237)) b!3873821))

(assert (= (and b!3873821 c!674058) b!3873826))

(assert (= (and b!3873821 (not c!674058)) b!3873806))

(assert (= (and b!3873821 (not res!1569217)) b!3873811))

(assert (= (and b!3873811 (not res!1569223)) b!3873814))

(assert (= (and start!363656 ((_ is Cons!41159) suffixResult!91)) b!3873823))

(assert (= (and start!363656 ((_ is Cons!41159) suffix!1176)) b!3873840))

(assert (= b!3873809 b!3873803))

(assert (= b!3873824 b!3873809))

(assert (= (and start!363656 ((_ is Cons!41161) rules!2768)) b!3873824))

(assert (= b!3873822 b!3873839))

(assert (= b!3873837 b!3873822))

(assert (= b!3873834 b!3873837))

(assert (= (and start!363656 ((_ is Cons!41160) prefixTokens!80)) b!3873834))

(assert (= b!3873808 b!3873841))

(assert (= b!3873815 b!3873808))

(assert (= b!3873831 b!3873815))

(assert (= (and start!363656 ((_ is Cons!41160) suffixTokens!72)) b!3873831))

(assert (= (and start!363656 ((_ is Cons!41159) prefix!426)) b!3873833))

(declare-fun m!4431053 () Bool)

(assert (=> b!3873837 m!4431053))

(declare-fun m!4431055 () Bool)

(assert (=> b!3873810 m!4431055))

(declare-fun m!4431057 () Bool)

(assert (=> b!3873810 m!4431057))

(declare-fun m!4431059 () Bool)

(assert (=> b!3873810 m!4431059))

(declare-fun m!4431061 () Bool)

(assert (=> b!3873810 m!4431061))

(declare-fun m!4431063 () Bool)

(assert (=> b!3873810 m!4431063))

(declare-fun m!4431065 () Bool)

(assert (=> b!3873834 m!4431065))

(declare-fun m!4431067 () Bool)

(assert (=> b!3873802 m!4431067))

(declare-fun m!4431069 () Bool)

(assert (=> b!3873802 m!4431069))

(declare-fun m!4431071 () Bool)

(assert (=> b!3873802 m!4431071))

(declare-fun m!4431073 () Bool)

(assert (=> b!3873818 m!4431073))

(declare-fun m!4431075 () Bool)

(assert (=> b!3873835 m!4431075))

(declare-fun m!4431077 () Bool)

(assert (=> b!3873835 m!4431077))

(declare-fun m!4431079 () Bool)

(assert (=> b!3873835 m!4431079))

(declare-fun m!4431081 () Bool)

(assert (=> b!3873828 m!4431081))

(declare-fun m!4431083 () Bool)

(assert (=> b!3873843 m!4431083))

(declare-fun m!4431085 () Bool)

(assert (=> b!3873843 m!4431085))

(declare-fun m!4431087 () Bool)

(assert (=> b!3873819 m!4431087))

(declare-fun m!4431089 () Bool)

(assert (=> b!3873819 m!4431089))

(declare-fun m!4431091 () Bool)

(assert (=> b!3873805 m!4431091))

(declare-fun m!4431093 () Bool)

(assert (=> b!3873815 m!4431093))

(declare-fun m!4431095 () Bool)

(assert (=> b!3873825 m!4431095))

(declare-fun m!4431097 () Bool)

(assert (=> b!3873825 m!4431097))

(declare-fun m!4431099 () Bool)

(assert (=> b!3873807 m!4431099))

(declare-fun m!4431101 () Bool)

(assert (=> b!3873826 m!4431101))

(declare-fun m!4431103 () Bool)

(assert (=> b!3873821 m!4431103))

(declare-fun m!4431105 () Bool)

(assert (=> b!3873821 m!4431105))

(declare-fun m!4431107 () Bool)

(assert (=> b!3873821 m!4431107))

(declare-fun m!4431109 () Bool)

(assert (=> b!3873821 m!4431109))

(assert (=> b!3873821 m!4431107))

(declare-fun m!4431111 () Bool)

(assert (=> b!3873821 m!4431111))

(declare-fun m!4431113 () Bool)

(assert (=> b!3873817 m!4431113))

(declare-fun m!4431115 () Bool)

(assert (=> b!3873799 m!4431115))

(declare-fun m!4431117 () Bool)

(assert (=> b!3873799 m!4431117))

(declare-fun m!4431119 () Bool)

(assert (=> b!3873799 m!4431119))

(declare-fun m!4431121 () Bool)

(assert (=> b!3873799 m!4431121))

(declare-fun m!4431123 () Bool)

(assert (=> b!3873799 m!4431123))

(declare-fun m!4431125 () Bool)

(assert (=> b!3873799 m!4431125))

(declare-fun m!4431127 () Bool)

(assert (=> b!3873799 m!4431127))

(declare-fun m!4431129 () Bool)

(assert (=> b!3873799 m!4431129))

(declare-fun m!4431131 () Bool)

(assert (=> b!3873799 m!4431131))

(declare-fun m!4431133 () Bool)

(assert (=> b!3873799 m!4431133))

(declare-fun m!4431135 () Bool)

(assert (=> b!3873799 m!4431135))

(declare-fun m!4431137 () Bool)

(assert (=> b!3873799 m!4431137))

(assert (=> b!3873799 m!4431121))

(declare-fun m!4431139 () Bool)

(assert (=> b!3873799 m!4431139))

(declare-fun m!4431141 () Bool)

(assert (=> b!3873799 m!4431141))

(assert (=> b!3873799 m!4431123))

(declare-fun m!4431143 () Bool)

(assert (=> b!3873811 m!4431143))

(declare-fun m!4431145 () Bool)

(assert (=> b!3873800 m!4431145))

(declare-fun m!4431147 () Bool)

(assert (=> b!3873827 m!4431147))

(declare-fun m!4431149 () Bool)

(assert (=> b!3873842 m!4431149))

(declare-fun m!4431151 () Bool)

(assert (=> b!3873816 m!4431151))

(declare-fun m!4431153 () Bool)

(assert (=> b!3873822 m!4431153))

(declare-fun m!4431155 () Bool)

(assert (=> b!3873822 m!4431155))

(declare-fun m!4431157 () Bool)

(assert (=> b!3873801 m!4431157))

(declare-fun m!4431159 () Bool)

(assert (=> b!3873801 m!4431159))

(declare-fun m!4431161 () Bool)

(assert (=> b!3873844 m!4431161))

(declare-fun m!4431163 () Bool)

(assert (=> b!3873845 m!4431163))

(declare-fun m!4431165 () Bool)

(assert (=> b!3873845 m!4431165))

(declare-fun m!4431167 () Bool)

(assert (=> b!3873820 m!4431167))

(assert (=> b!3873820 m!4431159))

(declare-fun m!4431169 () Bool)

(assert (=> b!3873820 m!4431169))

(declare-fun m!4431171 () Bool)

(assert (=> b!3873820 m!4431171))

(declare-fun m!4431173 () Bool)

(assert (=> b!3873836 m!4431173))

(declare-fun m!4431175 () Bool)

(assert (=> b!3873836 m!4431175))

(declare-fun m!4431177 () Bool)

(assert (=> b!3873836 m!4431177))

(declare-fun m!4431179 () Bool)

(assert (=> b!3873830 m!4431179))

(declare-fun m!4431181 () Bool)

(assert (=> b!3873830 m!4431181))

(declare-fun m!4431183 () Bool)

(assert (=> b!3873830 m!4431183))

(declare-fun m!4431185 () Bool)

(assert (=> b!3873830 m!4431185))

(declare-fun m!4431187 () Bool)

(assert (=> b!3873808 m!4431187))

(declare-fun m!4431189 () Bool)

(assert (=> b!3873808 m!4431189))

(declare-fun m!4431191 () Bool)

(assert (=> b!3873814 m!4431191))

(declare-fun m!4431193 () Bool)

(assert (=> b!3873814 m!4431193))

(declare-fun m!4431195 () Bool)

(assert (=> b!3873831 m!4431195))

(declare-fun m!4431197 () Bool)

(assert (=> b!3873838 m!4431197))

(assert (=> b!3873838 m!4431179))

(declare-fun m!4431199 () Bool)

(assert (=> b!3873838 m!4431199))

(assert (=> b!3873838 m!4431181))

(declare-fun m!4431201 () Bool)

(assert (=> b!3873838 m!4431201))

(declare-fun m!4431203 () Bool)

(assert (=> bm!282763 m!4431203))

(declare-fun m!4431205 () Bool)

(assert (=> b!3873809 m!4431205))

(declare-fun m!4431207 () Bool)

(assert (=> b!3873809 m!4431207))

(check-sat (not b!3873820) (not b!3873809) (not b!3873821) b_and!290431 (not b_next!105387) b_and!290433 (not b!3873840) (not b_next!105389) (not b!3873835) (not b!3873814) (not b!3873842) (not b_next!105383) (not b!3873811) (not b!3873838) (not b!3873833) (not b!3873819) (not b!3873799) b_and!290429 (not b!3873807) (not b!3873822) (not b!3873844) (not b!3873834) tp_is_empty!19553 b_and!290435 (not b!3873815) (not b!3873802) (not b!3873805) b_and!290427 (not bm!282763) (not b!3873817) (not b!3873801) (not b!3873818) (not b!3873800) (not b!3873831) (not b!3873825) (not b!3873845) (not b!3873836) (not b!3873816) (not b_next!105391) (not b!3873828) b_and!290437 (not b!3873823) (not b!3873827) (not b!3873843) (not b_next!105385) (not b!3873808) (not b!3873810) (not b!3873837) (not b!3873826) (not b_next!105381) (not b!3873830) (not b!3873824))
(check-sat (not b_next!105383) b_and!290431 b_and!290429 b_and!290435 (not b_next!105387) b_and!290433 b_and!290427 (not b_next!105391) b_and!290437 (not b_next!105389) (not b_next!105385) (not b_next!105381))
