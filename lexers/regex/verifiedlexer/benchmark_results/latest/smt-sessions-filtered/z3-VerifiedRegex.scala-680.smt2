; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25998 () Bool)

(assert start!25998)

(declare-fun b!245388 () Bool)

(declare-fun b_free!9089 () Bool)

(declare-fun b_next!9089 () Bool)

(assert (=> b!245388 (= b_free!9089 (not b_next!9089))))

(declare-fun tp!96119 () Bool)

(declare-fun b_and!18461 () Bool)

(assert (=> b!245388 (= tp!96119 b_and!18461)))

(declare-fun b_free!9091 () Bool)

(declare-fun b_next!9091 () Bool)

(assert (=> b!245388 (= b_free!9091 (not b_next!9091))))

(declare-fun tp!96120 () Bool)

(declare-fun b_and!18463 () Bool)

(assert (=> b!245388 (= tp!96120 b_and!18463)))

(declare-fun b!245395 () Bool)

(declare-fun b_free!9093 () Bool)

(declare-fun b_next!9093 () Bool)

(assert (=> b!245395 (= b_free!9093 (not b_next!9093))))

(declare-fun tp!96118 () Bool)

(declare-fun b_and!18465 () Bool)

(assert (=> b!245395 (= tp!96118 b_and!18465)))

(declare-fun b_free!9095 () Bool)

(declare-fun b_next!9095 () Bool)

(assert (=> b!245395 (= b_free!9095 (not b_next!9095))))

(declare-fun tp!96122 () Bool)

(declare-fun b_and!18467 () Bool)

(assert (=> b!245395 (= tp!96122 b_and!18467)))

(declare-fun b!245397 () Bool)

(declare-fun b_free!9097 () Bool)

(declare-fun b_next!9097 () Bool)

(assert (=> b!245397 (= b_free!9097 (not b_next!9097))))

(declare-fun tp!96127 () Bool)

(declare-fun b_and!18469 () Bool)

(assert (=> b!245397 (= tp!96127 b_and!18469)))

(declare-fun b_free!9099 () Bool)

(declare-fun b_next!9099 () Bool)

(assert (=> b!245397 (= b_free!9099 (not b_next!9099))))

(declare-fun tp!96129 () Bool)

(declare-fun b_and!18471 () Bool)

(assert (=> b!245397 (= tp!96129 b_and!18471)))

(declare-fun bs!26338 () Bool)

(declare-fun b!245416 () Bool)

(declare-fun b!245393 () Bool)

(assert (= bs!26338 (and b!245416 b!245393)))

(declare-fun lambda!8028 () Int)

(declare-fun lambda!8027 () Int)

(assert (=> bs!26338 (not (= lambda!8028 lambda!8027))))

(declare-fun b!245428 () Bool)

(declare-fun e!152152 () Bool)

(assert (=> b!245428 (= e!152152 true)))

(declare-fun b!245427 () Bool)

(declare-fun e!152151 () Bool)

(assert (=> b!245427 (= e!152151 e!152152)))

(declare-fun b!245426 () Bool)

(declare-fun e!152150 () Bool)

(assert (=> b!245426 (= e!152150 e!152151)))

(assert (=> b!245416 e!152150))

(assert (= b!245427 b!245428))

(assert (= b!245426 b!245427))

(declare-datatypes ((List!3617 0))(
  ( (Nil!3607) (Cons!3607 (h!9004 (_ BitVec 16)) (t!35097 List!3617)) )
))
(declare-datatypes ((TokenValue!705 0))(
  ( (FloatLiteralValue!1410 (text!5380 List!3617)) (TokenValueExt!704 (__x!2897 Int)) (Broken!3525 (value!23755 List!3617)) (Object!714) (End!705) (Def!705) (Underscore!705) (Match!705) (Else!705) (Error!705) (Case!705) (If!705) (Extends!705) (Abstract!705) (Class!705) (Val!705) (DelimiterValue!1410 (del!765 List!3617)) (KeywordValue!711 (value!23756 List!3617)) (CommentValue!1410 (value!23757 List!3617)) (WhitespaceValue!1410 (value!23758 List!3617)) (IndentationValue!705 (value!23759 List!3617)) (String!4604) (Int32!705) (Broken!3526 (value!23760 List!3617)) (Boolean!706) (Unit!4375) (OperatorValue!708 (op!765 List!3617)) (IdentifierValue!1410 (value!23761 List!3617)) (IdentifierValue!1411 (value!23762 List!3617)) (WhitespaceValue!1411 (value!23763 List!3617)) (True!1410) (False!1410) (Broken!3527 (value!23764 List!3617)) (Broken!3528 (value!23765 List!3617)) (True!1411) (RightBrace!705) (RightBracket!705) (Colon!705) (Null!705) (Comma!705) (LeftBracket!705) (False!1411) (LeftBrace!705) (ImaginaryLiteralValue!705 (text!5381 List!3617)) (StringLiteralValue!2115 (value!23766 List!3617)) (EOFValue!705 (value!23767 List!3617)) (IdentValue!705 (value!23768 List!3617)) (DelimiterValue!1411 (value!23769 List!3617)) (DedentValue!705 (value!23770 List!3617)) (NewLineValue!705 (value!23771 List!3617)) (IntegerValue!2115 (value!23772 (_ BitVec 32)) (text!5382 List!3617)) (IntegerValue!2116 (value!23773 Int) (text!5383 List!3617)) (Times!705) (Or!705) (Equal!705) (Minus!705) (Broken!3529 (value!23774 List!3617)) (And!705) (Div!705) (LessEqual!705) (Mod!705) (Concat!1612) (Not!705) (Plus!705) (SpaceValue!705 (value!23775 List!3617)) (IntegerValue!2117 (value!23776 Int) (text!5384 List!3617)) (StringLiteralValue!2116 (text!5385 List!3617)) (FloatLiteralValue!1411 (text!5386 List!3617)) (BytesLiteralValue!705 (value!23777 List!3617)) (CommentValue!1411 (value!23778 List!3617)) (StringLiteralValue!2117 (value!23779 List!3617)) (ErrorTokenValue!705 (msg!766 List!3617)) )
))
(declare-datatypes ((C!2736 0))(
  ( (C!2737 (val!1254 Int)) )
))
(declare-datatypes ((List!3618 0))(
  ( (Nil!3608) (Cons!3608 (h!9005 C!2736) (t!35098 List!3618)) )
))
(declare-datatypes ((IArray!2377 0))(
  ( (IArray!2378 (innerList!1246 List!3618)) )
))
(declare-datatypes ((Conc!1188 0))(
  ( (Node!1188 (left!2952 Conc!1188) (right!3282 Conc!1188) (csize!2606 Int) (cheight!1399 Int)) (Leaf!1869 (xs!3783 IArray!2377) (csize!2607 Int)) (Empty!1188) )
))
(declare-datatypes ((BalanceConc!2384 0))(
  ( (BalanceConc!2385 (c!46900 Conc!1188)) )
))
(declare-datatypes ((TokenValueInjection!1182 0))(
  ( (TokenValueInjection!1183 (toValue!1386 Int) (toChars!1245 Int)) )
))
(declare-datatypes ((Regex!907 0))(
  ( (ElementMatch!907 (c!46901 C!2736)) (Concat!1613 (regOne!2326 Regex!907) (regTwo!2326 Regex!907)) (EmptyExpr!907) (Star!907 (reg!1236 Regex!907)) (EmptyLang!907) (Union!907 (regOne!2327 Regex!907) (regTwo!2327 Regex!907)) )
))
(declare-datatypes ((String!4605 0))(
  ( (String!4606 (value!23780 String)) )
))
(declare-datatypes ((Rule!1166 0))(
  ( (Rule!1167 (regex!683 Regex!907) (tag!891 String!4605) (isSeparator!683 Bool) (transformation!683 TokenValueInjection!1182)) )
))
(declare-datatypes ((List!3619 0))(
  ( (Nil!3609) (Cons!3609 (h!9006 Rule!1166) (t!35099 List!3619)) )
))
(declare-fun rules!1920 () List!3619)

(get-info :version)

(assert (= (and b!245416 ((_ is Cons!3609) rules!1920)) b!245426))

(declare-fun order!2637 () Int)

(declare-fun order!2639 () Int)

(declare-fun dynLambda!1747 (Int Int) Int)

(declare-fun dynLambda!1748 (Int Int) Int)

(assert (=> b!245428 (< (dynLambda!1747 order!2637 (toValue!1386 (transformation!683 (h!9006 rules!1920)))) (dynLambda!1748 order!2639 lambda!8028))))

(declare-fun order!2641 () Int)

(declare-fun dynLambda!1749 (Int Int) Int)

(assert (=> b!245428 (< (dynLambda!1749 order!2641 (toChars!1245 (transformation!683 (h!9006 rules!1920)))) (dynLambda!1748 order!2639 lambda!8028))))

(assert (=> b!245416 true))

(declare-fun lt!99413 () List!3618)

(declare-fun b!245385 () Bool)

(declare-fun lt!99408 () List!3618)

(declare-fun lt!99394 () List!3618)

(declare-fun e!152135 () Bool)

(declare-fun ++!920 (List!3618 List!3618) List!3618)

(assert (=> b!245385 (= e!152135 (not (= lt!99394 (++!920 lt!99408 lt!99413))))))

(declare-fun b!245386 () Bool)

(declare-fun res!113492 () Bool)

(declare-fun e!152119 () Bool)

(assert (=> b!245386 (=> (not res!113492) (not e!152119))))

(declare-fun sepAndNonSepRulesDisjointChars!272 (List!3619 List!3619) Bool)

(assert (=> b!245386 (= res!113492 (sepAndNonSepRulesDisjointChars!272 rules!1920 rules!1920))))

(declare-fun b!245387 () Bool)

(declare-fun e!152117 () Bool)

(declare-fun e!152138 () Bool)

(assert (=> b!245387 (= e!152117 e!152138)))

(declare-fun res!113493 () Bool)

(assert (=> b!245387 (=> res!113493 e!152138)))

(assert (=> b!245387 (= res!113493 e!152135)))

(declare-fun res!113483 () Bool)

(assert (=> b!245387 (=> (not res!113483) (not e!152135))))

(declare-fun lt!99409 () Bool)

(assert (=> b!245387 (= res!113483 (not lt!99409))))

(declare-fun lt!99410 () List!3618)

(assert (=> b!245387 (= lt!99409 (= lt!99394 lt!99410))))

(declare-fun e!152133 () Bool)

(assert (=> b!245388 (= e!152133 (and tp!96119 tp!96120))))

(declare-fun b!245389 () Bool)

(declare-fun res!113490 () Bool)

(assert (=> b!245389 (=> (not res!113490) (not e!152119))))

(declare-datatypes ((Token!1110 0))(
  ( (Token!1111 (value!23781 TokenValue!705) (rule!1260 Rule!1166) (size!2865 Int) (originalCharacters!726 List!3618)) )
))
(declare-fun separatorToken!170 () Token!1110)

(declare-datatypes ((LexerInterface!569 0))(
  ( (LexerInterfaceExt!566 (__x!2898 Int)) (Lexer!567) )
))
(declare-fun thiss!17480 () LexerInterface!569)

(declare-fun rulesProduceIndividualToken!318 (LexerInterface!569 List!3619 Token!1110) Bool)

(assert (=> b!245389 (= res!113490 (rulesProduceIndividualToken!318 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!245390 () Bool)

(declare-fun res!113501 () Bool)

(declare-fun e!152124 () Bool)

(assert (=> b!245390 (=> res!113501 e!152124)))

(declare-datatypes ((List!3620 0))(
  ( (Nil!3610) (Cons!3610 (h!9007 Token!1110) (t!35100 List!3620)) )
))
(declare-datatypes ((IArray!2379 0))(
  ( (IArray!2380 (innerList!1247 List!3620)) )
))
(declare-datatypes ((Conc!1189 0))(
  ( (Node!1189 (left!2953 Conc!1189) (right!3283 Conc!1189) (csize!2608 Int) (cheight!1400 Int)) (Leaf!1870 (xs!3784 IArray!2379) (csize!2609 Int)) (Empty!1189) )
))
(declare-datatypes ((BalanceConc!2386 0))(
  ( (BalanceConc!2387 (c!46902 Conc!1189)) )
))
(declare-fun isEmpty!2189 (BalanceConc!2386) Bool)

(declare-datatypes ((tuple2!4006 0))(
  ( (tuple2!4007 (_1!2219 BalanceConc!2386) (_2!2219 BalanceConc!2384)) )
))
(declare-fun lex!369 (LexerInterface!569 List!3619 BalanceConc!2384) tuple2!4006)

(declare-fun seqFromList!743 (List!3618) BalanceConc!2384)

(assert (=> b!245390 (= res!113501 (isEmpty!2189 (_1!2219 (lex!369 thiss!17480 rules!1920 (seqFromList!743 lt!99408)))))))

(declare-fun b!245391 () Bool)

(declare-fun e!152126 () Bool)

(declare-fun tokens!465 () List!3620)

(declare-fun matchR!245 (Regex!907 List!3618) Bool)

(assert (=> b!245391 (= e!152126 (matchR!245 (regex!683 (rule!1260 (h!9007 tokens!465))) lt!99408))))

(declare-fun b!245392 () Bool)

(declare-fun e!152118 () Bool)

(declare-datatypes ((tuple2!4008 0))(
  ( (tuple2!4009 (_1!2220 Token!1110) (_2!2220 List!3618)) )
))
(declare-datatypes ((Option!728 0))(
  ( (None!727) (Some!727 (v!14488 tuple2!4008)) )
))
(declare-fun lt!99395 () Option!728)

(declare-fun get!1179 (Option!728) tuple2!4008)

(declare-fun head!842 (List!3620) Token!1110)

(assert (=> b!245392 (= e!152118 (= (_1!2220 (get!1179 lt!99395)) (head!842 tokens!465)))))

(declare-fun res!113485 () Bool)

(assert (=> b!245393 (=> (not res!113485) (not e!152119))))

(declare-fun forall!839 (List!3620 Int) Bool)

(assert (=> b!245393 (= res!113485 (forall!839 tokens!465 lambda!8027))))

(declare-fun b!245394 () Bool)

(declare-fun res!113489 () Bool)

(declare-fun e!152136 () Bool)

(assert (=> b!245394 (=> (not res!113489) (not e!152136))))

(declare-fun rulesInvariant!535 (LexerInterface!569 List!3619) Bool)

(assert (=> b!245394 (= res!113489 (rulesInvariant!535 thiss!17480 rules!1920))))

(declare-fun e!152122 () Bool)

(assert (=> b!245395 (= e!152122 (and tp!96118 tp!96122))))

(declare-fun b!245396 () Bool)

(declare-fun res!113481 () Bool)

(assert (=> b!245396 (=> (not res!113481) (not e!152136))))

(declare-fun isEmpty!2190 (List!3619) Bool)

(assert (=> b!245396 (= res!113481 (not (isEmpty!2190 rules!1920)))))

(declare-fun e!152131 () Bool)

(assert (=> b!245397 (= e!152131 (and tp!96127 tp!96129))))

(declare-fun b!245398 () Bool)

(declare-fun tp!96128 () Bool)

(declare-fun e!152129 () Bool)

(declare-fun inv!4459 (String!4605) Bool)

(declare-fun inv!4462 (TokenValueInjection!1182) Bool)

(assert (=> b!245398 (= e!152129 (and tp!96128 (inv!4459 (tag!891 (h!9006 rules!1920))) (inv!4462 (transformation!683 (h!9006 rules!1920))) e!152122))))

(declare-fun b!245399 () Bool)

(assert (=> b!245399 (= e!152138 e!152124)))

(declare-fun res!113480 () Bool)

(assert (=> b!245399 (=> res!113480 e!152124)))

(declare-fun lt!99414 () List!3618)

(declare-fun lt!99392 () List!3618)

(assert (=> b!245399 (= res!113480 (or (not (= lt!99414 lt!99392)) (not (= lt!99392 lt!99408)) (not (= lt!99414 lt!99408))))))

(declare-fun printList!253 (LexerInterface!569 List!3620) List!3618)

(assert (=> b!245399 (= lt!99392 (printList!253 thiss!17480 (Cons!3610 (h!9007 tokens!465) Nil!3610)))))

(declare-fun lt!99407 () BalanceConc!2384)

(declare-fun list!1416 (BalanceConc!2384) List!3618)

(assert (=> b!245399 (= lt!99414 (list!1416 lt!99407))))

(declare-fun lt!99393 () BalanceConc!2386)

(declare-fun printTailRec!263 (LexerInterface!569 BalanceConc!2386 Int BalanceConc!2384) BalanceConc!2384)

(assert (=> b!245399 (= lt!99407 (printTailRec!263 thiss!17480 lt!99393 0 (BalanceConc!2385 Empty!1188)))))

(declare-fun print!300 (LexerInterface!569 BalanceConc!2386) BalanceConc!2384)

(assert (=> b!245399 (= lt!99407 (print!300 thiss!17480 lt!99393))))

(declare-fun singletonSeq!235 (Token!1110) BalanceConc!2386)

(assert (=> b!245399 (= lt!99393 (singletonSeq!235 (h!9007 tokens!465)))))

(declare-fun b!245400 () Bool)

(declare-fun res!113502 () Bool)

(assert (=> b!245400 (=> res!113502 e!152124)))

(assert (=> b!245400 (= res!113502 (not (rulesProduceIndividualToken!318 thiss!17480 rules!1920 (h!9007 tokens!465))))))

(declare-fun b!245401 () Bool)

(declare-fun res!113496 () Bool)

(assert (=> b!245401 (=> (not res!113496) (not e!152119))))

(assert (=> b!245401 (= res!113496 (isSeparator!683 (rule!1260 separatorToken!170)))))

(declare-fun b!245402 () Bool)

(declare-fun res!113499 () Bool)

(declare-fun e!152140 () Bool)

(assert (=> b!245402 (=> (not res!113499) (not e!152140))))

(declare-fun lt!99406 () List!3618)

(assert (=> b!245402 (= res!113499 (= (list!1416 (seqFromList!743 lt!99394)) lt!99406))))

(declare-fun b!245403 () Bool)

(declare-fun e!152127 () Bool)

(assert (=> b!245403 (= e!152127 true)))

(declare-fun isPrefix!367 (List!3618 List!3618) Bool)

(assert (=> b!245403 (isPrefix!367 lt!99408 (++!920 lt!99408 lt!99413))))

(declare-datatypes ((Unit!4376 0))(
  ( (Unit!4377) )
))
(declare-fun lt!99398 () Unit!4376)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!262 (List!3618 List!3618) Unit!4376)

(assert (=> b!245403 (= lt!99398 (lemmaConcatTwoListThenFirstIsPrefix!262 lt!99408 lt!99413))))

(declare-fun lt!99396 () BalanceConc!2384)

(declare-fun filter!65 (List!3620 Int) List!3620)

(declare-fun list!1417 (BalanceConc!2386) List!3620)

(assert (=> b!245403 (= (filter!65 (list!1417 (_1!2219 (lex!369 thiss!17480 rules!1920 lt!99396))) lambda!8027) (t!35100 tokens!465))))

(declare-fun lt!99399 () Unit!4376)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!56 (LexerInterface!569 List!3619 List!3620 Token!1110) Unit!4376)

(assert (=> b!245403 (= lt!99399 (theoremInvertabilityFromTokensSepTokenWhenNeeded!56 thiss!17480 rules!1920 (t!35100 tokens!465) separatorToken!170))))

(declare-fun e!152120 () Bool)

(assert (=> b!245403 e!152120))

(declare-fun res!113488 () Bool)

(assert (=> b!245403 (=> res!113488 e!152120)))

(declare-fun isEmpty!2191 (List!3620) Bool)

(assert (=> b!245403 (= res!113488 (isEmpty!2191 tokens!465))))

(declare-fun lt!99403 () Unit!4376)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!138 (LexerInterface!569 List!3619 List!3620 Token!1110) Unit!4376)

(assert (=> b!245403 (= lt!99403 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!138 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!245404 () Bool)

(declare-fun res!113500 () Bool)

(assert (=> b!245404 (=> (not res!113500) (not e!152126))))

(declare-fun lt!99402 () tuple2!4008)

(declare-fun isEmpty!2192 (List!3618) Bool)

(assert (=> b!245404 (= res!113500 (isEmpty!2192 (_2!2220 lt!99402)))))

(declare-fun b!245405 () Bool)

(declare-fun tp!96117 () Bool)

(declare-fun e!152143 () Bool)

(assert (=> b!245405 (= e!152143 (and tp!96117 (inv!4459 (tag!891 (rule!1260 (h!9007 tokens!465)))) (inv!4462 (transformation!683 (rule!1260 (h!9007 tokens!465)))) e!152133))))

(declare-fun b!245406 () Bool)

(assert (=> b!245406 (= e!152140 (not e!152117))))

(declare-fun res!113495 () Bool)

(assert (=> b!245406 (=> res!113495 e!152117)))

(assert (=> b!245406 (= res!113495 (not (= lt!99413 (list!1416 lt!99396))))))

(declare-fun printWithSeparatorTokenWhenNeededRec!252 (LexerInterface!569 List!3619 BalanceConc!2386 Token!1110 Int) BalanceConc!2384)

(declare-fun seqFromList!744 (List!3620) BalanceConc!2386)

(assert (=> b!245406 (= lt!99396 (printWithSeparatorTokenWhenNeededRec!252 thiss!17480 rules!1920 (seqFromList!744 (t!35100 tokens!465)) separatorToken!170 0))))

(declare-fun lt!99411 () List!3618)

(assert (=> b!245406 (= lt!99411 lt!99410)))

(declare-fun lt!99404 () List!3618)

(assert (=> b!245406 (= lt!99410 (++!920 lt!99408 lt!99404))))

(declare-fun lt!99401 () List!3618)

(assert (=> b!245406 (= lt!99411 (++!920 (++!920 lt!99408 lt!99401) lt!99413))))

(declare-fun lt!99397 () Unit!4376)

(declare-fun lemmaConcatAssociativity!388 (List!3618 List!3618 List!3618) Unit!4376)

(assert (=> b!245406 (= lt!99397 (lemmaConcatAssociativity!388 lt!99408 lt!99401 lt!99413))))

(declare-fun charsOf!338 (Token!1110) BalanceConc!2384)

(assert (=> b!245406 (= lt!99408 (list!1416 (charsOf!338 (h!9007 tokens!465))))))

(assert (=> b!245406 (= lt!99404 (++!920 lt!99401 lt!99413))))

(declare-fun printWithSeparatorTokenWhenNeededList!262 (LexerInterface!569 List!3619 List!3620 Token!1110) List!3618)

(assert (=> b!245406 (= lt!99413 (printWithSeparatorTokenWhenNeededList!262 thiss!17480 rules!1920 (t!35100 tokens!465) separatorToken!170))))

(assert (=> b!245406 (= lt!99401 (list!1416 (charsOf!338 separatorToken!170)))))

(declare-fun b!245407 () Bool)

(declare-fun e!152130 () Bool)

(declare-fun tp!96121 () Bool)

(assert (=> b!245407 (= e!152130 (and e!152129 tp!96121))))

(declare-fun b!245408 () Bool)

(assert (=> b!245408 (= e!152120 e!152118)))

(declare-fun res!113486 () Bool)

(assert (=> b!245408 (=> (not res!113486) (not e!152118))))

(declare-fun isDefined!579 (Option!728) Bool)

(assert (=> b!245408 (= res!113486 (isDefined!579 lt!99395))))

(declare-fun maxPrefix!299 (LexerInterface!569 List!3619 List!3618) Option!728)

(assert (=> b!245408 (= lt!99395 (maxPrefix!299 thiss!17480 rules!1920 lt!99394))))

(declare-fun e!152125 () Bool)

(declare-fun b!245409 () Bool)

(declare-fun tp!96126 () Bool)

(assert (=> b!245409 (= e!152125 (and tp!96126 (inv!4459 (tag!891 (rule!1260 separatorToken!170))) (inv!4462 (transformation!683 (rule!1260 separatorToken!170))) e!152131))))

(declare-fun tp!96125 () Bool)

(declare-fun e!152139 () Bool)

(declare-fun b!245410 () Bool)

(declare-fun inv!21 (TokenValue!705) Bool)

(assert (=> b!245410 (= e!152139 (and (inv!21 (value!23781 separatorToken!170)) e!152125 tp!96125))))

(declare-fun b!245411 () Bool)

(declare-fun tp!96124 () Bool)

(declare-fun e!152137 () Bool)

(assert (=> b!245411 (= e!152137 (and (inv!21 (value!23781 (h!9007 tokens!465))) e!152143 tp!96124))))

(declare-fun b!245412 () Bool)

(assert (=> b!245412 (= e!152119 e!152140)))

(declare-fun res!113487 () Bool)

(assert (=> b!245412 (=> (not res!113487) (not e!152140))))

(assert (=> b!245412 (= res!113487 (= lt!99394 lt!99406))))

(declare-fun lt!99400 () BalanceConc!2386)

(assert (=> b!245412 (= lt!99406 (list!1416 (printWithSeparatorTokenWhenNeededRec!252 thiss!17480 rules!1920 lt!99400 separatorToken!170 0)))))

(assert (=> b!245412 (= lt!99394 (printWithSeparatorTokenWhenNeededList!262 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!245413 () Bool)

(assert (=> b!245413 (= e!152136 e!152119)))

(declare-fun res!113491 () Bool)

(assert (=> b!245413 (=> (not res!113491) (not e!152119))))

(declare-fun rulesProduceEachTokenIndividually!361 (LexerInterface!569 List!3619 BalanceConc!2386) Bool)

(assert (=> b!245413 (= res!113491 (rulesProduceEachTokenIndividually!361 thiss!17480 rules!1920 lt!99400))))

(assert (=> b!245413 (= lt!99400 (seqFromList!744 tokens!465))))

(declare-fun res!113498 () Bool)

(assert (=> start!25998 (=> (not res!113498) (not e!152136))))

(assert (=> start!25998 (= res!113498 ((_ is Lexer!567) thiss!17480))))

(assert (=> start!25998 e!152136))

(assert (=> start!25998 true))

(assert (=> start!25998 e!152130))

(declare-fun inv!4463 (Token!1110) Bool)

(assert (=> start!25998 (and (inv!4463 separatorToken!170) e!152139)))

(declare-fun e!152134 () Bool)

(assert (=> start!25998 e!152134))

(declare-fun b!245414 () Bool)

(declare-fun e!152132 () Bool)

(assert (=> b!245414 (= e!152132 e!152127)))

(declare-fun res!113497 () Bool)

(assert (=> b!245414 (=> res!113497 e!152127)))

(assert (=> b!245414 (= res!113497 lt!99409)))

(assert (=> b!245414 e!152126))

(declare-fun res!113484 () Bool)

(assert (=> b!245414 (=> (not res!113484) (not e!152126))))

(assert (=> b!245414 (= res!113484 (= (_1!2220 lt!99402) (h!9007 tokens!465)))))

(declare-fun lt!99412 () Option!728)

(assert (=> b!245414 (= lt!99402 (get!1179 lt!99412))))

(assert (=> b!245414 (isDefined!579 lt!99412)))

(assert (=> b!245414 (= lt!99412 (maxPrefix!299 thiss!17480 rules!1920 lt!99408))))

(declare-fun tp!96123 () Bool)

(declare-fun b!245415 () Bool)

(assert (=> b!245415 (= e!152134 (and (inv!4463 (h!9007 tokens!465)) e!152137 tp!96123))))

(assert (=> b!245416 (= e!152124 e!152132)))

(declare-fun res!113482 () Bool)

(assert (=> b!245416 (=> res!113482 e!152132)))

(declare-datatypes ((tuple2!4010 0))(
  ( (tuple2!4011 (_1!2221 Token!1110) (_2!2221 BalanceConc!2384)) )
))
(declare-datatypes ((Option!729 0))(
  ( (None!728) (Some!728 (v!14489 tuple2!4010)) )
))
(declare-fun isDefined!580 (Option!729) Bool)

(declare-fun maxPrefixZipperSequence!262 (LexerInterface!569 List!3619 BalanceConc!2384) Option!729)

(assert (=> b!245416 (= res!113482 (not (isDefined!580 (maxPrefixZipperSequence!262 thiss!17480 rules!1920 (seqFromList!743 (originalCharacters!726 (h!9007 tokens!465)))))))))

(declare-fun lt!99405 () Unit!4376)

(declare-fun forallContained!250 (List!3620 Int Token!1110) Unit!4376)

(assert (=> b!245416 (= lt!99405 (forallContained!250 tokens!465 lambda!8028 (h!9007 tokens!465)))))

(assert (=> b!245416 (= lt!99408 (originalCharacters!726 (h!9007 tokens!465)))))

(declare-fun b!245417 () Bool)

(declare-fun res!113494 () Bool)

(assert (=> b!245417 (=> (not res!113494) (not e!152119))))

(assert (=> b!245417 (= res!113494 ((_ is Cons!3610) tokens!465))))

(assert (= (and start!25998 res!113498) b!245396))

(assert (= (and b!245396 res!113481) b!245394))

(assert (= (and b!245394 res!113489) b!245413))

(assert (= (and b!245413 res!113491) b!245389))

(assert (= (and b!245389 res!113490) b!245401))

(assert (= (and b!245401 res!113496) b!245393))

(assert (= (and b!245393 res!113485) b!245386))

(assert (= (and b!245386 res!113492) b!245417))

(assert (= (and b!245417 res!113494) b!245412))

(assert (= (and b!245412 res!113487) b!245402))

(assert (= (and b!245402 res!113499) b!245406))

(assert (= (and b!245406 (not res!113495)) b!245387))

(assert (= (and b!245387 res!113483) b!245385))

(assert (= (and b!245387 (not res!113493)) b!245399))

(assert (= (and b!245399 (not res!113480)) b!245400))

(assert (= (and b!245400 (not res!113502)) b!245390))

(assert (= (and b!245390 (not res!113501)) b!245416))

(assert (= (and b!245416 (not res!113482)) b!245414))

(assert (= (and b!245414 res!113484) b!245404))

(assert (= (and b!245404 res!113500) b!245391))

(assert (= (and b!245414 (not res!113497)) b!245403))

(assert (= (and b!245403 (not res!113488)) b!245408))

(assert (= (and b!245408 res!113486) b!245392))

(assert (= b!245398 b!245395))

(assert (= b!245407 b!245398))

(assert (= (and start!25998 ((_ is Cons!3609) rules!1920)) b!245407))

(assert (= b!245409 b!245397))

(assert (= b!245410 b!245409))

(assert (= start!25998 b!245410))

(assert (= b!245405 b!245388))

(assert (= b!245411 b!245405))

(assert (= b!245415 b!245411))

(assert (= (and start!25998 ((_ is Cons!3610) tokens!465)) b!245415))

(declare-fun m!300079 () Bool)

(assert (=> b!245411 m!300079))

(declare-fun m!300081 () Bool)

(assert (=> b!245409 m!300081))

(declare-fun m!300083 () Bool)

(assert (=> b!245409 m!300083))

(declare-fun m!300085 () Bool)

(assert (=> start!25998 m!300085))

(declare-fun m!300087 () Bool)

(assert (=> b!245394 m!300087))

(declare-fun m!300089 () Bool)

(assert (=> b!245408 m!300089))

(declare-fun m!300091 () Bool)

(assert (=> b!245408 m!300091))

(declare-fun m!300093 () Bool)

(assert (=> b!245414 m!300093))

(declare-fun m!300095 () Bool)

(assert (=> b!245414 m!300095))

(declare-fun m!300097 () Bool)

(assert (=> b!245414 m!300097))

(declare-fun m!300099 () Bool)

(assert (=> b!245391 m!300099))

(declare-fun m!300101 () Bool)

(assert (=> b!245402 m!300101))

(assert (=> b!245402 m!300101))

(declare-fun m!300103 () Bool)

(assert (=> b!245402 m!300103))

(declare-fun m!300105 () Bool)

(assert (=> b!245393 m!300105))

(declare-fun m!300107 () Bool)

(assert (=> b!245415 m!300107))

(declare-fun m!300109 () Bool)

(assert (=> b!245385 m!300109))

(declare-fun m!300111 () Bool)

(assert (=> b!245399 m!300111))

(declare-fun m!300113 () Bool)

(assert (=> b!245399 m!300113))

(declare-fun m!300115 () Bool)

(assert (=> b!245399 m!300115))

(declare-fun m!300117 () Bool)

(assert (=> b!245399 m!300117))

(declare-fun m!300119 () Bool)

(assert (=> b!245399 m!300119))

(declare-fun m!300121 () Bool)

(assert (=> b!245396 m!300121))

(declare-fun m!300123 () Bool)

(assert (=> b!245404 m!300123))

(declare-fun m!300125 () Bool)

(assert (=> b!245410 m!300125))

(declare-fun m!300127 () Bool)

(assert (=> b!245406 m!300127))

(declare-fun m!300129 () Bool)

(assert (=> b!245406 m!300129))

(declare-fun m!300131 () Bool)

(assert (=> b!245406 m!300131))

(assert (=> b!245406 m!300129))

(declare-fun m!300133 () Bool)

(assert (=> b!245406 m!300133))

(declare-fun m!300135 () Bool)

(assert (=> b!245406 m!300135))

(declare-fun m!300137 () Bool)

(assert (=> b!245406 m!300137))

(declare-fun m!300139 () Bool)

(assert (=> b!245406 m!300139))

(declare-fun m!300141 () Bool)

(assert (=> b!245406 m!300141))

(declare-fun m!300143 () Bool)

(assert (=> b!245406 m!300143))

(assert (=> b!245406 m!300137))

(declare-fun m!300145 () Bool)

(assert (=> b!245406 m!300145))

(assert (=> b!245406 m!300141))

(assert (=> b!245406 m!300133))

(declare-fun m!300147 () Bool)

(assert (=> b!245406 m!300147))

(declare-fun m!300149 () Bool)

(assert (=> b!245406 m!300149))

(declare-fun m!300151 () Bool)

(assert (=> b!245406 m!300151))

(declare-fun m!300153 () Bool)

(assert (=> b!245405 m!300153))

(declare-fun m!300155 () Bool)

(assert (=> b!245405 m!300155))

(declare-fun m!300157 () Bool)

(assert (=> b!245392 m!300157))

(declare-fun m!300159 () Bool)

(assert (=> b!245392 m!300159))

(declare-fun m!300161 () Bool)

(assert (=> b!245389 m!300161))

(declare-fun m!300163 () Bool)

(assert (=> b!245416 m!300163))

(assert (=> b!245416 m!300163))

(declare-fun m!300165 () Bool)

(assert (=> b!245416 m!300165))

(assert (=> b!245416 m!300165))

(declare-fun m!300167 () Bool)

(assert (=> b!245416 m!300167))

(declare-fun m!300169 () Bool)

(assert (=> b!245416 m!300169))

(declare-fun m!300171 () Bool)

(assert (=> b!245412 m!300171))

(assert (=> b!245412 m!300171))

(declare-fun m!300173 () Bool)

(assert (=> b!245412 m!300173))

(declare-fun m!300175 () Bool)

(assert (=> b!245412 m!300175))

(declare-fun m!300177 () Bool)

(assert (=> b!245386 m!300177))

(declare-fun m!300179 () Bool)

(assert (=> b!245400 m!300179))

(declare-fun m!300181 () Bool)

(assert (=> b!245398 m!300181))

(declare-fun m!300183 () Bool)

(assert (=> b!245398 m!300183))

(declare-fun m!300185 () Bool)

(assert (=> b!245390 m!300185))

(assert (=> b!245390 m!300185))

(declare-fun m!300187 () Bool)

(assert (=> b!245390 m!300187))

(declare-fun m!300189 () Bool)

(assert (=> b!245390 m!300189))

(declare-fun m!300191 () Bool)

(assert (=> b!245403 m!300191))

(assert (=> b!245403 m!300109))

(declare-fun m!300193 () Bool)

(assert (=> b!245403 m!300193))

(declare-fun m!300195 () Bool)

(assert (=> b!245403 m!300195))

(declare-fun m!300197 () Bool)

(assert (=> b!245403 m!300197))

(assert (=> b!245403 m!300195))

(declare-fun m!300199 () Bool)

(assert (=> b!245403 m!300199))

(declare-fun m!300201 () Bool)

(assert (=> b!245403 m!300201))

(declare-fun m!300203 () Bool)

(assert (=> b!245403 m!300203))

(assert (=> b!245403 m!300109))

(declare-fun m!300205 () Bool)

(assert (=> b!245403 m!300205))

(declare-fun m!300207 () Bool)

(assert (=> b!245413 m!300207))

(declare-fun m!300209 () Bool)

(assert (=> b!245413 m!300209))

(check-sat (not b!245392) (not b!245414) (not start!25998) b_and!18471 (not b!245389) (not b!245406) b_and!18469 (not b!245416) b_and!18463 (not b_next!9093) (not b!245390) (not b!245412) (not b!245396) (not b_next!9097) (not b!245398) (not b!245415) (not b_next!9099) (not b!245409) (not b!245404) (not b!245393) b_and!18461 (not b!245405) (not b!245399) (not b!245394) (not b!245411) (not b!245408) (not b!245403) (not b!245407) (not b!245402) (not b!245386) (not b_next!9091) (not b_next!9095) (not b!245426) b_and!18467 (not b!245385) (not b!245400) b_and!18465 (not b!245391) (not b_next!9089) (not b!245410) (not b!245413))
(check-sat b_and!18471 (not b_next!9097) (not b_next!9099) b_and!18461 b_and!18469 b_and!18467 b_and!18465 (not b_next!9089) b_and!18463 (not b_next!9093) (not b_next!9091) (not b_next!9095))
