; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127502 () Bool)

(assert start!127502)

(declare-fun b!1399292 () Bool)

(declare-fun b_free!34059 () Bool)

(declare-fun b_next!34763 () Bool)

(assert (=> b!1399292 (= b_free!34059 (not b_next!34763))))

(declare-fun tp!398411 () Bool)

(declare-fun b_and!93691 () Bool)

(assert (=> b!1399292 (= tp!398411 b_and!93691)))

(declare-fun b_free!34061 () Bool)

(declare-fun b_next!34765 () Bool)

(assert (=> b!1399292 (= b_free!34061 (not b_next!34765))))

(declare-fun tp!398414 () Bool)

(declare-fun b_and!93693 () Bool)

(assert (=> b!1399292 (= tp!398414 b_and!93693)))

(declare-fun b!1399320 () Bool)

(declare-fun b_free!34063 () Bool)

(declare-fun b_next!34767 () Bool)

(assert (=> b!1399320 (= b_free!34063 (not b_next!34767))))

(declare-fun tp!398408 () Bool)

(declare-fun b_and!93695 () Bool)

(assert (=> b!1399320 (= tp!398408 b_and!93695)))

(declare-fun b_free!34065 () Bool)

(declare-fun b_next!34769 () Bool)

(assert (=> b!1399320 (= b_free!34065 (not b_next!34769))))

(declare-fun tp!398415 () Bool)

(declare-fun b_and!93697 () Bool)

(assert (=> b!1399320 (= tp!398415 b_and!93697)))

(declare-fun b!1399306 () Bool)

(declare-fun b_free!34067 () Bool)

(declare-fun b_next!34771 () Bool)

(assert (=> b!1399306 (= b_free!34067 (not b_next!34771))))

(declare-fun tp!398413 () Bool)

(declare-fun b_and!93699 () Bool)

(assert (=> b!1399306 (= tp!398413 b_and!93699)))

(declare-fun b_free!34069 () Bool)

(declare-fun b_next!34773 () Bool)

(assert (=> b!1399306 (= b_free!34069 (not b_next!34773))))

(declare-fun tp!398409 () Bool)

(declare-fun b_and!93701 () Bool)

(assert (=> b!1399306 (= tp!398409 b_and!93701)))

(declare-fun b!1399305 () Bool)

(assert (=> b!1399305 true))

(assert (=> b!1399305 true))

(declare-fun b!1399310 () Bool)

(assert (=> b!1399310 true))

(declare-fun b!1399293 () Bool)

(assert (=> b!1399293 true))

(declare-fun bs!338122 () Bool)

(declare-fun b!1399291 () Bool)

(assert (= bs!338122 (and b!1399291 b!1399293)))

(declare-fun lambda!61107 () Int)

(declare-fun lambda!61106 () Int)

(assert (=> bs!338122 (not (= lambda!61107 lambda!61106))))

(assert (=> b!1399291 true))

(declare-fun b!1399287 () Bool)

(declare-fun res!632531 () Bool)

(declare-fun e!893471 () Bool)

(assert (=> b!1399287 (=> (not res!632531) (not e!893471))))

(declare-datatypes ((List!14274 0))(
  ( (Nil!14208) (Cons!14208 (h!19609 (_ BitVec 16)) (t!122799 List!14274)) )
))
(declare-datatypes ((TokenValue!2551 0))(
  ( (FloatLiteralValue!5102 (text!18302 List!14274)) (TokenValueExt!2550 (__x!8931 Int)) (Broken!12755 (value!79745 List!14274)) (Object!2616) (End!2551) (Def!2551) (Underscore!2551) (Match!2551) (Else!2551) (Error!2551) (Case!2551) (If!2551) (Extends!2551) (Abstract!2551) (Class!2551) (Val!2551) (DelimiterValue!5102 (del!2611 List!14274)) (KeywordValue!2557 (value!79746 List!14274)) (CommentValue!5102 (value!79747 List!14274)) (WhitespaceValue!5102 (value!79748 List!14274)) (IndentationValue!2551 (value!79749 List!14274)) (String!16990) (Int32!2551) (Broken!12756 (value!79750 List!14274)) (Boolean!2552) (Unit!20522) (OperatorValue!2554 (op!2611 List!14274)) (IdentifierValue!5102 (value!79751 List!14274)) (IdentifierValue!5103 (value!79752 List!14274)) (WhitespaceValue!5103 (value!79753 List!14274)) (True!5102) (False!5102) (Broken!12757 (value!79754 List!14274)) (Broken!12758 (value!79755 List!14274)) (True!5103) (RightBrace!2551) (RightBracket!2551) (Colon!2551) (Null!2551) (Comma!2551) (LeftBracket!2551) (False!5103) (LeftBrace!2551) (ImaginaryLiteralValue!2551 (text!18303 List!14274)) (StringLiteralValue!7653 (value!79756 List!14274)) (EOFValue!2551 (value!79757 List!14274)) (IdentValue!2551 (value!79758 List!14274)) (DelimiterValue!5103 (value!79759 List!14274)) (DedentValue!2551 (value!79760 List!14274)) (NewLineValue!2551 (value!79761 List!14274)) (IntegerValue!7653 (value!79762 (_ BitVec 32)) (text!18304 List!14274)) (IntegerValue!7654 (value!79763 Int) (text!18305 List!14274)) (Times!2551) (Or!2551) (Equal!2551) (Minus!2551) (Broken!12759 (value!79764 List!14274)) (And!2551) (Div!2551) (LessEqual!2551) (Mod!2551) (Concat!6326) (Not!2551) (Plus!2551) (SpaceValue!2551 (value!79765 List!14274)) (IntegerValue!7655 (value!79766 Int) (text!18306 List!14274)) (StringLiteralValue!7654 (text!18307 List!14274)) (FloatLiteralValue!5103 (text!18308 List!14274)) (BytesLiteralValue!2551 (value!79767 List!14274)) (CommentValue!5103 (value!79768 List!14274)) (StringLiteralValue!7655 (value!79769 List!14274)) (ErrorTokenValue!2551 (msg!2612 List!14274)) )
))
(declare-datatypes ((C!7840 0))(
  ( (C!7841 (val!4480 Int)) )
))
(declare-datatypes ((List!14275 0))(
  ( (Nil!14209) (Cons!14209 (h!19610 C!7840) (t!122800 List!14275)) )
))
(declare-datatypes ((IArray!9369 0))(
  ( (IArray!9370 (innerList!4742 List!14275)) )
))
(declare-datatypes ((Conc!4682 0))(
  ( (Node!4682 (left!12134 Conc!4682) (right!12464 Conc!4682) (csize!9594 Int) (cheight!4893 Int)) (Leaf!7109 (xs!7409 IArray!9369) (csize!9595 Int)) (Empty!4682) )
))
(declare-datatypes ((BalanceConc!9304 0))(
  ( (BalanceConc!9305 (c!230284 Conc!4682)) )
))
(declare-datatypes ((Regex!3775 0))(
  ( (ElementMatch!3775 (c!230285 C!7840)) (Concat!6327 (regOne!8062 Regex!3775) (regTwo!8062 Regex!3775)) (EmptyExpr!3775) (Star!3775 (reg!4104 Regex!3775)) (EmptyLang!3775) (Union!3775 (regOne!8063 Regex!3775) (regTwo!8063 Regex!3775)) )
))
(declare-datatypes ((String!16991 0))(
  ( (String!16992 (value!79770 String)) )
))
(declare-datatypes ((TokenValueInjection!4762 0))(
  ( (TokenValueInjection!4763 (toValue!3752 Int) (toChars!3611 Int)) )
))
(declare-datatypes ((Rule!4722 0))(
  ( (Rule!4723 (regex!2461 Regex!3775) (tag!2723 String!16991) (isSeparator!2461 Bool) (transformation!2461 TokenValueInjection!4762)) )
))
(declare-datatypes ((List!14276 0))(
  ( (Nil!14210) (Cons!14210 (h!19611 Rule!4722) (t!122801 List!14276)) )
))
(declare-fun rules!2550 () List!14276)

(declare-fun isEmpty!8636 (List!14276) Bool)

(assert (=> b!1399287 (= res!632531 (not (isEmpty!8636 rules!2550)))))

(declare-fun b!1399288 () Bool)

(declare-fun res!632517 () Bool)

(declare-fun e!893479 () Bool)

(assert (=> b!1399288 (=> res!632517 e!893479)))

(declare-datatypes ((Token!4584 0))(
  ( (Token!4585 (value!79771 TokenValue!2551) (rule!4224 Rule!4722) (size!11693 Int) (originalCharacters!3323 List!14275)) )
))
(declare-datatypes ((List!14277 0))(
  ( (Nil!14211) (Cons!14211 (h!19612 Token!4584) (t!122802 List!14277)) )
))
(declare-datatypes ((IArray!9371 0))(
  ( (IArray!9372 (innerList!4743 List!14277)) )
))
(declare-datatypes ((Conc!4683 0))(
  ( (Node!4683 (left!12135 Conc!4683) (right!12465 Conc!4683) (csize!9596 Int) (cheight!4894 Int)) (Leaf!7110 (xs!7410 IArray!9371) (csize!9597 Int)) (Empty!4683) )
))
(declare-datatypes ((BalanceConc!9306 0))(
  ( (BalanceConc!9307 (c!230286 Conc!4683)) )
))
(declare-datatypes ((tuple2!13826 0))(
  ( (tuple2!13827 (_1!7799 BalanceConc!9306) (_2!7799 BalanceConc!9304)) )
))
(declare-fun lt!466322 () tuple2!13826)

(declare-fun isEmpty!8637 (BalanceConc!9304) Bool)

(assert (=> b!1399288 (= res!632517 (not (isEmpty!8637 (_2!7799 lt!466322))))))

(declare-fun b!1399289 () Bool)

(declare-datatypes ((Unit!20523 0))(
  ( (Unit!20524) )
))
(declare-fun e!893458 () Unit!20523)

(declare-fun Unit!20525 () Unit!20523)

(assert (=> b!1399289 (= e!893458 Unit!20525)))

(declare-fun tp!398416 () Bool)

(declare-fun e!893451 () Bool)

(declare-fun b!1399290 () Bool)

(declare-fun e!893465 () Bool)

(declare-fun inv!18529 (String!16991) Bool)

(declare-fun inv!18532 (TokenValueInjection!4762) Bool)

(assert (=> b!1399290 (= e!893465 (and tp!398416 (inv!18529 (tag!2723 (h!19611 rules!2550))) (inv!18532 (transformation!2461 (h!19611 rules!2550))) e!893451))))

(declare-fun e!893474 () Bool)

(declare-fun e!893464 () Bool)

(assert (=> b!1399291 (= e!893474 e!893464)))

(declare-fun res!632545 () Bool)

(assert (=> b!1399291 (=> res!632545 e!893464)))

(declare-fun t1!34 () Token!4584)

(declare-fun lt!466326 () List!14275)

(declare-fun matchR!1766 (Regex!3775 List!14275) Bool)

(assert (=> b!1399291 (= res!632545 (not (matchR!1766 (regex!2461 (rule!4224 t1!34)) lt!466326)))))

(declare-fun lt!466344 () Unit!20523)

(declare-fun t2!34 () Token!4584)

(declare-fun forallContained!656 (List!14276 Int Rule!4722) Unit!20523)

(assert (=> b!1399291 (= lt!466344 (forallContained!656 rules!2550 lambda!61107 (rule!4224 t2!34)))))

(declare-fun lt!466345 () Unit!20523)

(assert (=> b!1399291 (= lt!466345 (forallContained!656 rules!2550 lambda!61107 (rule!4224 t1!34)))))

(declare-fun lt!466317 () Rule!4722)

(declare-fun lt!466336 () Unit!20523)

(assert (=> b!1399291 (= lt!466336 (forallContained!656 rules!2550 lambda!61107 lt!466317))))

(declare-fun e!893469 () Bool)

(assert (=> b!1399292 (= e!893469 (and tp!398411 tp!398414))))

(declare-fun e!893455 () Bool)

(declare-fun e!893480 () Bool)

(assert (=> b!1399293 (= e!893455 e!893480)))

(declare-fun res!632523 () Bool)

(assert (=> b!1399293 (=> res!632523 e!893480)))

(declare-fun exists!566 (List!14276 Int) Bool)

(assert (=> b!1399293 (= res!632523 (not (exists!566 rules!2550 lambda!61106)))))

(assert (=> b!1399293 (exists!566 rules!2550 lambda!61106)))

(declare-fun lt!466324 () Regex!3775)

(declare-fun lt!466338 () Unit!20523)

(declare-fun lambda!61104 () Int)

(declare-fun lemmaMapContains!172 (List!14276 Int Regex!3775) Unit!20523)

(assert (=> b!1399293 (= lt!466338 (lemmaMapContains!172 rules!2550 lambda!61104 lt!466324))))

(declare-fun b!1399294 () Bool)

(declare-fun res!632548 () Bool)

(assert (=> b!1399294 (=> res!632548 e!893464)))

(declare-fun lt!466332 () List!14275)

(assert (=> b!1399294 (= res!632548 (not (matchR!1766 (regex!2461 (rule!4224 t2!34)) lt!466332)))))

(declare-fun b!1399295 () Bool)

(declare-fun res!632541 () Bool)

(assert (=> b!1399295 (=> res!632541 e!893474)))

(declare-fun contains!2765 (List!14276 Rule!4722) Bool)

(assert (=> b!1399295 (= res!632541 (not (contains!2765 rules!2550 (rule!4224 t2!34))))))

(declare-fun b!1399296 () Bool)

(declare-fun res!632534 () Bool)

(assert (=> b!1399296 (=> (not res!632534) (not e!893471))))

(declare-datatypes ((LexerInterface!2156 0))(
  ( (LexerInterfaceExt!2153 (__x!8932 Int)) (Lexer!2154) )
))
(declare-fun thiss!19762 () LexerInterface!2156)

(declare-fun rulesProduceIndividualToken!1125 (LexerInterface!2156 List!14276 Token!4584) Bool)

(assert (=> b!1399296 (= res!632534 (rulesProduceIndividualToken!1125 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1399297 () Bool)

(declare-fun Unit!20526 () Unit!20523)

(assert (=> b!1399297 (= e!893458 Unit!20526)))

(declare-fun lt!466346 () Unit!20523)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!206 (Regex!3775 List!14275 C!7840) Unit!20523)

(declare-fun head!2583 (List!14275) C!7840)

(assert (=> b!1399297 (= lt!466346 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!206 (regex!2461 (rule!4224 t2!34)) lt!466332 (head!2583 lt!466332)))))

(assert (=> b!1399297 false))

(declare-fun b!1399298 () Bool)

(declare-fun res!632532 () Bool)

(assert (=> b!1399298 (=> res!632532 e!893479)))

(declare-fun lt!466334 () BalanceConc!9304)

(declare-fun lt!466337 () List!14277)

(declare-datatypes ((tuple2!13828 0))(
  ( (tuple2!13829 (_1!7800 List!14277) (_2!7800 List!14275)) )
))
(declare-fun lexList!670 (LexerInterface!2156 List!14276 List!14275) tuple2!13828)

(declare-fun list!5537 (BalanceConc!9304) List!14275)

(assert (=> b!1399298 (= res!632532 (not (= (lexList!670 thiss!19762 rules!2550 (list!5537 lt!466334)) (tuple2!13829 lt!466337 Nil!14209))))))

(declare-fun b!1399299 () Bool)

(assert (=> b!1399299 (= e!893479 e!893474)))

(declare-fun res!632543 () Bool)

(assert (=> b!1399299 (=> res!632543 e!893474)))

(declare-datatypes ((tuple2!13830 0))(
  ( (tuple2!13831 (_1!7801 Token!4584) (_2!7801 List!14275)) )
))
(declare-datatypes ((Option!2724 0))(
  ( (None!2723) (Some!2723 (v!21651 tuple2!13830)) )
))
(declare-fun maxPrefix!1130 (LexerInterface!2156 List!14276 List!14275) Option!2724)

(assert (=> b!1399299 (= res!632543 (not (= (maxPrefix!1130 thiss!19762 rules!2550 lt!466332) (Some!2723 (tuple2!13831 t2!34 Nil!14209)))))))

(declare-fun lt!466319 () BalanceConc!9304)

(assert (=> b!1399299 (= lt!466332 (list!5537 lt!466319))))

(declare-fun b!1399300 () Bool)

(declare-fun e!893473 () Bool)

(assert (=> b!1399300 (= e!893464 e!893473)))

(declare-fun res!632542 () Bool)

(assert (=> b!1399300 (=> res!632542 e!893473)))

(declare-fun lt!466343 () Bool)

(assert (=> b!1399300 (= res!632542 lt!466343)))

(declare-fun lt!466320 () Unit!20523)

(declare-fun e!893461 () Unit!20523)

(assert (=> b!1399300 (= lt!466320 e!893461)))

(declare-fun c!230282 () Bool)

(assert (=> b!1399300 (= c!230282 lt!466343)))

(declare-fun lt!466318 () C!7840)

(declare-fun contains!2766 (List!14275 C!7840) Bool)

(declare-fun usedCharacters!272 (Regex!3775) List!14275)

(assert (=> b!1399300 (= lt!466343 (not (contains!2766 (usedCharacters!272 (regex!2461 (rule!4224 t1!34))) lt!466318)))))

(declare-fun b!1399301 () Bool)

(declare-fun res!632530 () Bool)

(declare-fun e!893467 () Bool)

(assert (=> b!1399301 (=> res!632530 e!893467)))

(declare-fun lt!466327 () List!14277)

(declare-fun lt!466325 () BalanceConc!9304)

(assert (=> b!1399301 (= res!632530 (not (= (lexList!670 thiss!19762 rules!2550 (list!5537 lt!466325)) (tuple2!13829 lt!466327 Nil!14209))))))

(declare-fun b!1399302 () Bool)

(declare-fun Unit!20527 () Unit!20523)

(assert (=> b!1399302 (= e!893461 Unit!20527)))

(declare-fun b!1399303 () Bool)

(declare-fun e!893452 () Bool)

(assert (=> b!1399303 (= e!893452 e!893455)))

(declare-fun res!632524 () Bool)

(assert (=> b!1399303 (=> res!632524 e!893455)))

(declare-datatypes ((List!14278 0))(
  ( (Nil!14212) (Cons!14212 (h!19613 Regex!3775) (t!122803 List!14278)) )
))
(declare-fun contains!2767 (List!14278 Regex!3775) Bool)

(declare-fun map!3152 (List!14276 Int) List!14278)

(assert (=> b!1399303 (= res!632524 (not (contains!2767 (map!3152 rules!2550 lambda!61104) lt!466324)))))

(declare-fun lambda!61105 () Int)

(declare-fun getWitness!454 (List!14278 Int) Regex!3775)

(assert (=> b!1399303 (= lt!466324 (getWitness!454 (map!3152 rules!2550 lambda!61104) lambda!61105))))

(declare-fun b!1399304 () Bool)

(assert (=> b!1399304 (= e!893480 e!893467)))

(declare-fun res!632549 () Bool)

(assert (=> b!1399304 (=> res!632549 e!893467)))

(declare-fun lt!466333 () tuple2!13826)

(declare-fun list!5538 (BalanceConc!9306) List!14277)

(assert (=> b!1399304 (= res!632549 (not (= (list!5538 (_1!7799 lt!466333)) lt!466327)))))

(assert (=> b!1399304 (= lt!466327 (Cons!14211 t1!34 Nil!14211))))

(declare-fun lex!981 (LexerInterface!2156 List!14276 BalanceConc!9304) tuple2!13826)

(assert (=> b!1399304 (= lt!466333 (lex!981 thiss!19762 rules!2550 lt!466325))))

(declare-fun print!920 (LexerInterface!2156 BalanceConc!9306) BalanceConc!9304)

(declare-fun singletonSeq!1120 (Token!4584) BalanceConc!9306)

(assert (=> b!1399304 (= lt!466325 (print!920 thiss!19762 (singletonSeq!1120 t1!34)))))

(declare-fun getWitness!455 (List!14276 Int) Rule!4722)

(assert (=> b!1399304 (= lt!466317 (getWitness!455 rules!2550 lambda!61106))))

(declare-fun e!893466 () Bool)

(declare-fun e!893462 () Bool)

(assert (=> b!1399305 (= e!893466 (not e!893462))))

(declare-fun res!632551 () Bool)

(assert (=> b!1399305 (=> res!632551 e!893462)))

(declare-fun lambda!61103 () Int)

(declare-fun Exists!925 (Int) Bool)

(assert (=> b!1399305 (= res!632551 (not (Exists!925 lambda!61103)))))

(assert (=> b!1399305 (Exists!925 lambda!61103)))

(declare-fun lt!466328 () Unit!20523)

(declare-fun lt!466316 () Regex!3775)

(declare-fun lt!466342 () List!14275)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!243 (Regex!3775 List!14275) Unit!20523)

(assert (=> b!1399305 (= lt!466328 (lemmaPrefixMatchThenExistsStringThatMatches!243 lt!466316 lt!466342))))

(assert (=> b!1399306 (= e!893451 (and tp!398413 tp!398409))))

(declare-fun b!1399307 () Bool)

(declare-fun res!632538 () Bool)

(assert (=> b!1399307 (=> res!632538 e!893467)))

(assert (=> b!1399307 (= res!632538 (not (= (maxPrefix!1130 thiss!19762 rules!2550 lt!466326) (Some!2723 (tuple2!13831 t1!34 Nil!14209)))))))

(declare-fun b!1399308 () Bool)

(declare-fun e!893459 () Bool)

(assert (=> b!1399308 (= e!893459 e!893466)))

(declare-fun res!632537 () Bool)

(assert (=> b!1399308 (=> (not res!632537) (not e!893466))))

(declare-fun prefixMatch!284 (Regex!3775 List!14275) Bool)

(assert (=> b!1399308 (= res!632537 (prefixMatch!284 lt!466316 lt!466342))))

(declare-fun rulesRegex!344 (LexerInterface!2156 List!14276) Regex!3775)

(assert (=> b!1399308 (= lt!466316 (rulesRegex!344 thiss!19762 rules!2550))))

(declare-fun lt!466329 () C!7840)

(declare-fun ++!3696 (List!14275 List!14275) List!14275)

(assert (=> b!1399308 (= lt!466342 (++!3696 lt!466326 (Cons!14209 lt!466329 Nil!14209)))))

(declare-fun apply!3613 (BalanceConc!9304 Int) C!7840)

(assert (=> b!1399308 (= lt!466329 (apply!3613 lt!466319 0))))

(declare-fun lt!466339 () BalanceConc!9304)

(assert (=> b!1399308 (= lt!466326 (list!5537 lt!466339))))

(declare-fun charsOf!1433 (Token!4584) BalanceConc!9304)

(assert (=> b!1399308 (= lt!466339 (charsOf!1433 t1!34))))

(declare-fun b!1399309 () Bool)

(declare-fun res!632550 () Bool)

(assert (=> b!1399309 (=> (not res!632550) (not e!893471))))

(assert (=> b!1399309 (= res!632550 (rulesProduceIndividualToken!1125 thiss!19762 rules!2550 t2!34))))

(declare-fun e!893463 () Bool)

(assert (=> b!1399310 (= e!893463 e!893452)))

(declare-fun res!632518 () Bool)

(assert (=> b!1399310 (=> res!632518 e!893452)))

(declare-fun exists!567 (List!14278 Int) Bool)

(assert (=> b!1399310 (= res!632518 (not (exists!567 (map!3152 rules!2550 lambda!61104) lambda!61105)))))

(declare-fun lt!466340 () List!14278)

(assert (=> b!1399310 (exists!567 lt!466340 lambda!61105)))

(declare-fun lt!466341 () List!14275)

(declare-fun lt!466335 () Unit!20523)

(declare-fun matchRGenUnionSpec!186 (Regex!3775 List!14278 List!14275) Unit!20523)

(assert (=> b!1399310 (= lt!466335 (matchRGenUnionSpec!186 lt!466316 lt!466340 lt!466341))))

(assert (=> b!1399310 (= lt!466340 (map!3152 rules!2550 lambda!61104))))

(declare-fun b!1399311 () Bool)

(declare-fun Unit!20528 () Unit!20523)

(assert (=> b!1399311 (= e!893461 Unit!20528)))

(declare-fun lt!466330 () Unit!20523)

(assert (=> b!1399311 (= lt!466330 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!206 (regex!2461 (rule!4224 t1!34)) lt!466326 (head!2583 lt!466326)))))

(assert (=> b!1399311 false))

(declare-fun b!1399312 () Bool)

(declare-fun res!632552 () Bool)

(assert (=> b!1399312 (=> res!632552 e!893463)))

(assert (=> b!1399312 (= res!632552 (not (contains!2766 lt!466342 lt!466329)))))

(declare-fun tp!398406 () Bool)

(declare-fun b!1399313 () Bool)

(declare-fun e!893456 () Bool)

(assert (=> b!1399313 (= e!893456 (and tp!398406 (inv!18529 (tag!2723 (rule!4224 t1!34))) (inv!18532 (transformation!2461 (rule!4224 t1!34))) e!893469))))

(declare-fun b!1399314 () Bool)

(declare-fun res!632546 () Bool)

(assert (=> b!1399314 (=> (not res!632546) (not e!893471))))

(assert (=> b!1399314 (= res!632546 (not (= (isSeparator!2461 (rule!4224 t1!34)) (isSeparator!2461 (rule!4224 t2!34)))))))

(declare-fun tp!398407 () Bool)

(declare-fun e!893481 () Bool)

(declare-fun b!1399315 () Bool)

(declare-fun e!893460 () Bool)

(declare-fun inv!21 (TokenValue!2551) Bool)

(assert (=> b!1399315 (= e!893460 (and (inv!21 (value!79771 t2!34)) e!893481 tp!398407))))

(declare-fun b!1399316 () Bool)

(declare-fun res!632526 () Bool)

(assert (=> b!1399316 (=> res!632526 e!893467)))

(assert (=> b!1399316 (= res!632526 (not (contains!2765 rules!2550 (rule!4224 t1!34))))))

(declare-fun tp!398412 () Bool)

(declare-fun b!1399317 () Bool)

(declare-fun e!893454 () Bool)

(assert (=> b!1399317 (= e!893481 (and tp!398412 (inv!18529 (tag!2723 (rule!4224 t2!34))) (inv!18532 (transformation!2461 (rule!4224 t2!34))) e!893454))))

(declare-fun b!1399318 () Bool)

(declare-fun res!632544 () Bool)

(assert (=> b!1399318 (=> res!632544 e!893463)))

(assert (=> b!1399318 (= res!632544 (not (contains!2766 lt!466341 lt!466318)))))

(declare-fun b!1399319 () Bool)

(declare-fun res!632520 () Bool)

(assert (=> b!1399319 (=> (not res!632520) (not e!893459))))

(declare-fun sepAndNonSepRulesDisjointChars!834 (List!14276 List!14276) Bool)

(assert (=> b!1399319 (= res!632520 (sepAndNonSepRulesDisjointChars!834 rules!2550 rules!2550))))

(assert (=> b!1399320 (= e!893454 (and tp!398408 tp!398415))))

(declare-fun b!1399321 () Bool)

(declare-fun e!893468 () Bool)

(assert (=> b!1399321 (= e!893462 e!893468)))

(declare-fun res!632539 () Bool)

(assert (=> b!1399321 (=> res!632539 e!893468)))

(declare-fun getSuffix!621 (List!14275 List!14275) List!14275)

(assert (=> b!1399321 (= res!632539 (not (= lt!466341 (++!3696 lt!466342 (getSuffix!621 lt!466341 lt!466342)))))))

(declare-fun pickWitness!228 (Int) List!14275)

(assert (=> b!1399321 (= lt!466341 (pickWitness!228 lambda!61103))))

(declare-fun b!1399322 () Bool)

(declare-fun res!632528 () Bool)

(assert (=> b!1399322 (=> (not res!632528) (not e!893471))))

(declare-fun rulesInvariant!2026 (LexerInterface!2156 List!14276) Bool)

(assert (=> b!1399322 (= res!632528 (rulesInvariant!2026 thiss!19762 rules!2550))))

(declare-fun b!1399323 () Bool)

(declare-fun res!632533 () Bool)

(assert (=> b!1399323 (=> res!632533 e!893467)))

(assert (=> b!1399323 (= res!632533 (not (isEmpty!8637 (_2!7799 lt!466333))))))

(declare-fun b!1399324 () Bool)

(declare-fun res!632547 () Bool)

(assert (=> b!1399324 (=> res!632547 e!893463)))

(assert (=> b!1399324 (= res!632547 (not (contains!2766 lt!466341 lt!466329)))))

(declare-fun b!1399325 () Bool)

(assert (=> b!1399325 (= e!893471 e!893459)))

(declare-fun res!632525 () Bool)

(assert (=> b!1399325 (=> (not res!632525) (not e!893459))))

(declare-fun size!11694 (BalanceConc!9304) Int)

(assert (=> b!1399325 (= res!632525 (> (size!11694 lt!466319) 0))))

(assert (=> b!1399325 (= lt!466319 (charsOf!1433 t2!34))))

(declare-fun b!1399326 () Bool)

(declare-fun tp!398405 () Bool)

(declare-fun e!893475 () Bool)

(assert (=> b!1399326 (= e!893475 (and (inv!21 (value!79771 t1!34)) e!893456 tp!398405))))

(declare-fun b!1399327 () Bool)

(declare-fun res!632529 () Bool)

(assert (=> b!1399327 (=> res!632529 e!893474)))

(assert (=> b!1399327 (= res!632529 (not (contains!2765 rules!2550 lt!466317)))))

(declare-fun res!632522 () Bool)

(assert (=> start!127502 (=> (not res!632522) (not e!893471))))

(get-info :version)

(assert (=> start!127502 (= res!632522 ((_ is Lexer!2154) thiss!19762))))

(assert (=> start!127502 e!893471))

(assert (=> start!127502 true))

(declare-fun e!893453 () Bool)

(assert (=> start!127502 e!893453))

(declare-fun inv!18533 (Token!4584) Bool)

(assert (=> start!127502 (and (inv!18533 t1!34) e!893475)))

(assert (=> start!127502 (and (inv!18533 t2!34) e!893460)))

(declare-fun b!1399328 () Bool)

(assert (=> b!1399328 (= e!893467 e!893479)))

(declare-fun res!632527 () Bool)

(assert (=> b!1399328 (=> res!632527 e!893479)))

(assert (=> b!1399328 (= res!632527 (not (= (list!5538 (_1!7799 lt!466322)) lt!466337)))))

(assert (=> b!1399328 (= lt!466337 (Cons!14211 t2!34 Nil!14211))))

(assert (=> b!1399328 (= lt!466322 (lex!981 thiss!19762 rules!2550 lt!466334))))

(assert (=> b!1399328 (= lt!466334 (print!920 thiss!19762 (singletonSeq!1120 t2!34)))))

(declare-fun b!1399329 () Bool)

(declare-fun res!632535 () Bool)

(assert (=> b!1399329 (=> (not res!632535) (not e!893459))))

(declare-fun separableTokensPredicate!439 (LexerInterface!2156 Token!4584 Token!4584 List!14276) Bool)

(assert (=> b!1399329 (= res!632535 (not (separableTokensPredicate!439 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1399330 () Bool)

(declare-fun e!893472 () Bool)

(assert (=> b!1399330 (= e!893472 true)))

(assert (=> b!1399330 (not (contains!2766 (usedCharacters!272 (regex!2461 lt!466317)) lt!466318))))

(declare-fun lt!466321 () Unit!20523)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!134 (LexerInterface!2156 List!14276 List!14276 Rule!4722 Rule!4722 C!7840) Unit!20523)

(assert (=> b!1399330 (= lt!466321 (lemmaSepRuleNotContainsCharContainedInANonSepRule!134 thiss!19762 rules!2550 rules!2550 (rule!4224 t1!34) lt!466317 lt!466318))))

(declare-fun b!1399331 () Bool)

(declare-fun tp!398410 () Bool)

(assert (=> b!1399331 (= e!893453 (and e!893465 tp!398410))))

(declare-fun b!1399332 () Bool)

(declare-fun e!893457 () Bool)

(assert (=> b!1399332 (= e!893457 e!893472)))

(declare-fun res!632540 () Bool)

(assert (=> b!1399332 (=> res!632540 e!893472)))

(assert (=> b!1399332 (= res!632540 (or (not (isSeparator!2461 lt!466317)) (isSeparator!2461 (rule!4224 t1!34))))))

(assert (=> b!1399332 (= (regex!2461 lt!466317) lt!466324)))

(declare-fun b!1399333 () Bool)

(assert (=> b!1399333 (= e!893473 e!893457)))

(declare-fun res!632521 () Bool)

(assert (=> b!1399333 (=> res!632521 e!893457)))

(declare-fun lt!466331 () Bool)

(assert (=> b!1399333 (= res!632521 lt!466331)))

(declare-fun lt!466323 () Unit!20523)

(assert (=> b!1399333 (= lt!466323 e!893458)))

(declare-fun c!230283 () Bool)

(assert (=> b!1399333 (= c!230283 lt!466331)))

(assert (=> b!1399333 (= lt!466331 (not (contains!2766 (usedCharacters!272 (regex!2461 (rule!4224 t2!34))) lt!466329)))))

(declare-fun b!1399334 () Bool)

(declare-fun res!632536 () Bool)

(assert (=> b!1399334 (=> res!632536 e!893463)))

(assert (=> b!1399334 (= res!632536 (not (matchR!1766 lt!466316 lt!466341)))))

(declare-fun b!1399335 () Bool)

(assert (=> b!1399335 (= e!893468 e!893463)))

(declare-fun res!632519 () Bool)

(assert (=> b!1399335 (=> res!632519 e!893463)))

(assert (=> b!1399335 (= res!632519 (not (contains!2766 lt!466342 lt!466318)))))

(assert (=> b!1399335 (= lt!466318 (apply!3613 lt!466339 0))))

(assert (= (and start!127502 res!632522) b!1399287))

(assert (= (and b!1399287 res!632531) b!1399322))

(assert (= (and b!1399322 res!632528) b!1399296))

(assert (= (and b!1399296 res!632534) b!1399309))

(assert (= (and b!1399309 res!632550) b!1399314))

(assert (= (and b!1399314 res!632546) b!1399325))

(assert (= (and b!1399325 res!632525) b!1399319))

(assert (= (and b!1399319 res!632520) b!1399329))

(assert (= (and b!1399329 res!632535) b!1399308))

(assert (= (and b!1399308 res!632537) b!1399305))

(assert (= (and b!1399305 (not res!632551)) b!1399321))

(assert (= (and b!1399321 (not res!632539)) b!1399335))

(assert (= (and b!1399335 (not res!632519)) b!1399318))

(assert (= (and b!1399318 (not res!632544)) b!1399312))

(assert (= (and b!1399312 (not res!632552)) b!1399324))

(assert (= (and b!1399324 (not res!632547)) b!1399334))

(assert (= (and b!1399334 (not res!632536)) b!1399310))

(assert (= (and b!1399310 (not res!632518)) b!1399303))

(assert (= (and b!1399303 (not res!632524)) b!1399293))

(assert (= (and b!1399293 (not res!632523)) b!1399304))

(assert (= (and b!1399304 (not res!632549)) b!1399323))

(assert (= (and b!1399323 (not res!632533)) b!1399301))

(assert (= (and b!1399301 (not res!632530)) b!1399307))

(assert (= (and b!1399307 (not res!632538)) b!1399316))

(assert (= (and b!1399316 (not res!632526)) b!1399328))

(assert (= (and b!1399328 (not res!632527)) b!1399288))

(assert (= (and b!1399288 (not res!632517)) b!1399298))

(assert (= (and b!1399298 (not res!632532)) b!1399299))

(assert (= (and b!1399299 (not res!632543)) b!1399295))

(assert (= (and b!1399295 (not res!632541)) b!1399327))

(assert (= (and b!1399327 (not res!632529)) b!1399291))

(assert (= (and b!1399291 (not res!632545)) b!1399294))

(assert (= (and b!1399294 (not res!632548)) b!1399300))

(assert (= (and b!1399300 c!230282) b!1399311))

(assert (= (and b!1399300 (not c!230282)) b!1399302))

(assert (= (and b!1399300 (not res!632542)) b!1399333))

(assert (= (and b!1399333 c!230283) b!1399297))

(assert (= (and b!1399333 (not c!230283)) b!1399289))

(assert (= (and b!1399333 (not res!632521)) b!1399332))

(assert (= (and b!1399332 (not res!632540)) b!1399330))

(assert (= b!1399290 b!1399306))

(assert (= b!1399331 b!1399290))

(assert (= (and start!127502 ((_ is Cons!14210) rules!2550)) b!1399331))

(assert (= b!1399313 b!1399292))

(assert (= b!1399326 b!1399313))

(assert (= start!127502 b!1399326))

(assert (= b!1399317 b!1399320))

(assert (= b!1399315 b!1399317))

(assert (= start!127502 b!1399315))

(declare-fun m!1576111 () Bool)

(assert (=> b!1399311 m!1576111))

(assert (=> b!1399311 m!1576111))

(declare-fun m!1576113 () Bool)

(assert (=> b!1399311 m!1576113))

(declare-fun m!1576115 () Bool)

(assert (=> b!1399310 m!1576115))

(declare-fun m!1576117 () Bool)

(assert (=> b!1399310 m!1576117))

(declare-fun m!1576119 () Bool)

(assert (=> b!1399310 m!1576119))

(assert (=> b!1399310 m!1576117))

(declare-fun m!1576121 () Bool)

(assert (=> b!1399310 m!1576121))

(assert (=> b!1399310 m!1576117))

(declare-fun m!1576123 () Bool)

(assert (=> b!1399335 m!1576123))

(declare-fun m!1576125 () Bool)

(assert (=> b!1399335 m!1576125))

(declare-fun m!1576127 () Bool)

(assert (=> b!1399317 m!1576127))

(declare-fun m!1576129 () Bool)

(assert (=> b!1399317 m!1576129))

(declare-fun m!1576131 () Bool)

(assert (=> b!1399290 m!1576131))

(declare-fun m!1576133 () Bool)

(assert (=> b!1399290 m!1576133))

(declare-fun m!1576135 () Bool)

(assert (=> b!1399326 m!1576135))

(declare-fun m!1576137 () Bool)

(assert (=> b!1399324 m!1576137))

(declare-fun m!1576139 () Bool)

(assert (=> b!1399321 m!1576139))

(assert (=> b!1399321 m!1576139))

(declare-fun m!1576141 () Bool)

(assert (=> b!1399321 m!1576141))

(declare-fun m!1576143 () Bool)

(assert (=> b!1399321 m!1576143))

(declare-fun m!1576145 () Bool)

(assert (=> b!1399297 m!1576145))

(assert (=> b!1399297 m!1576145))

(declare-fun m!1576147 () Bool)

(assert (=> b!1399297 m!1576147))

(declare-fun m!1576149 () Bool)

(assert (=> b!1399307 m!1576149))

(declare-fun m!1576151 () Bool)

(assert (=> b!1399291 m!1576151))

(declare-fun m!1576153 () Bool)

(assert (=> b!1399291 m!1576153))

(declare-fun m!1576155 () Bool)

(assert (=> b!1399291 m!1576155))

(declare-fun m!1576157 () Bool)

(assert (=> b!1399291 m!1576157))

(declare-fun m!1576159 () Bool)

(assert (=> b!1399293 m!1576159))

(assert (=> b!1399293 m!1576159))

(declare-fun m!1576161 () Bool)

(assert (=> b!1399293 m!1576161))

(declare-fun m!1576163 () Bool)

(assert (=> b!1399327 m!1576163))

(declare-fun m!1576165 () Bool)

(assert (=> b!1399304 m!1576165))

(declare-fun m!1576167 () Bool)

(assert (=> b!1399304 m!1576167))

(declare-fun m!1576169 () Bool)

(assert (=> b!1399304 m!1576169))

(declare-fun m!1576171 () Bool)

(assert (=> b!1399304 m!1576171))

(assert (=> b!1399304 m!1576169))

(declare-fun m!1576173 () Bool)

(assert (=> b!1399304 m!1576173))

(declare-fun m!1576175 () Bool)

(assert (=> b!1399305 m!1576175))

(assert (=> b!1399305 m!1576175))

(declare-fun m!1576177 () Bool)

(assert (=> b!1399305 m!1576177))

(declare-fun m!1576179 () Bool)

(assert (=> b!1399333 m!1576179))

(assert (=> b!1399333 m!1576179))

(declare-fun m!1576181 () Bool)

(assert (=> b!1399333 m!1576181))

(declare-fun m!1576183 () Bool)

(assert (=> b!1399318 m!1576183))

(declare-fun m!1576185 () Bool)

(assert (=> b!1399296 m!1576185))

(declare-fun m!1576187 () Bool)

(assert (=> b!1399315 m!1576187))

(declare-fun m!1576189 () Bool)

(assert (=> b!1399295 m!1576189))

(declare-fun m!1576191 () Bool)

(assert (=> b!1399308 m!1576191))

(declare-fun m!1576193 () Bool)

(assert (=> b!1399308 m!1576193))

(declare-fun m!1576195 () Bool)

(assert (=> b!1399308 m!1576195))

(declare-fun m!1576197 () Bool)

(assert (=> b!1399308 m!1576197))

(declare-fun m!1576199 () Bool)

(assert (=> b!1399308 m!1576199))

(declare-fun m!1576201 () Bool)

(assert (=> b!1399308 m!1576201))

(assert (=> b!1399303 m!1576117))

(assert (=> b!1399303 m!1576117))

(declare-fun m!1576203 () Bool)

(assert (=> b!1399303 m!1576203))

(assert (=> b!1399303 m!1576117))

(assert (=> b!1399303 m!1576117))

(declare-fun m!1576205 () Bool)

(assert (=> b!1399303 m!1576205))

(declare-fun m!1576207 () Bool)

(assert (=> b!1399325 m!1576207))

(declare-fun m!1576209 () Bool)

(assert (=> b!1399325 m!1576209))

(declare-fun m!1576211 () Bool)

(assert (=> b!1399309 m!1576211))

(declare-fun m!1576213 () Bool)

(assert (=> b!1399316 m!1576213))

(declare-fun m!1576215 () Bool)

(assert (=> b!1399294 m!1576215))

(declare-fun m!1576217 () Bool)

(assert (=> b!1399322 m!1576217))

(declare-fun m!1576219 () Bool)

(assert (=> b!1399287 m!1576219))

(declare-fun m!1576221 () Bool)

(assert (=> start!127502 m!1576221))

(declare-fun m!1576223 () Bool)

(assert (=> start!127502 m!1576223))

(declare-fun m!1576225 () Bool)

(assert (=> b!1399298 m!1576225))

(assert (=> b!1399298 m!1576225))

(declare-fun m!1576227 () Bool)

(assert (=> b!1399298 m!1576227))

(declare-fun m!1576229 () Bool)

(assert (=> b!1399288 m!1576229))

(declare-fun m!1576231 () Bool)

(assert (=> b!1399319 m!1576231))

(declare-fun m!1576233 () Bool)

(assert (=> b!1399312 m!1576233))

(declare-fun m!1576235 () Bool)

(assert (=> b!1399313 m!1576235))

(declare-fun m!1576237 () Bool)

(assert (=> b!1399313 m!1576237))

(declare-fun m!1576239 () Bool)

(assert (=> b!1399299 m!1576239))

(declare-fun m!1576241 () Bool)

(assert (=> b!1399299 m!1576241))

(declare-fun m!1576243 () Bool)

(assert (=> b!1399301 m!1576243))

(assert (=> b!1399301 m!1576243))

(declare-fun m!1576245 () Bool)

(assert (=> b!1399301 m!1576245))

(declare-fun m!1576247 () Bool)

(assert (=> b!1399330 m!1576247))

(assert (=> b!1399330 m!1576247))

(declare-fun m!1576249 () Bool)

(assert (=> b!1399330 m!1576249))

(declare-fun m!1576251 () Bool)

(assert (=> b!1399330 m!1576251))

(declare-fun m!1576253 () Bool)

(assert (=> b!1399328 m!1576253))

(declare-fun m!1576255 () Bool)

(assert (=> b!1399328 m!1576255))

(declare-fun m!1576257 () Bool)

(assert (=> b!1399328 m!1576257))

(assert (=> b!1399328 m!1576257))

(declare-fun m!1576259 () Bool)

(assert (=> b!1399328 m!1576259))

(declare-fun m!1576261 () Bool)

(assert (=> b!1399323 m!1576261))

(declare-fun m!1576263 () Bool)

(assert (=> b!1399334 m!1576263))

(declare-fun m!1576265 () Bool)

(assert (=> b!1399300 m!1576265))

(assert (=> b!1399300 m!1576265))

(declare-fun m!1576267 () Bool)

(assert (=> b!1399300 m!1576267))

(declare-fun m!1576269 () Bool)

(assert (=> b!1399329 m!1576269))

(check-sat (not b!1399315) (not b!1399309) (not b_next!34763) b_and!93701 b_and!93699 (not b!1399330) (not b_next!34771) (not b_next!34773) (not b!1399319) (not b!1399294) (not b!1399324) (not b!1399300) (not b!1399325) (not b!1399326) (not b!1399287) (not b!1399301) (not b!1399329) b_and!93693 (not b!1399335) (not b_next!34765) (not start!127502) (not b!1399298) (not b!1399290) (not b!1399316) b_and!93695 (not b!1399310) (not b!1399296) (not b!1399308) (not b!1399299) (not b!1399333) (not b!1399313) (not b!1399322) (not b!1399304) (not b!1399331) (not b!1399312) (not b!1399291) b_and!93691 (not b!1399334) (not b!1399293) (not b!1399323) (not b!1399295) (not b!1399303) b_and!93697 (not b!1399288) (not b!1399321) (not b_next!34769) (not b!1399327) (not b!1399297) (not b!1399305) (not b_next!34767) (not b!1399328) (not b!1399311) (not b!1399318) (not b!1399317) (not b!1399307))
(check-sat b_and!93693 (not b_next!34763) b_and!93701 (not b_next!34765) b_and!93695 b_and!93699 b_and!93691 (not b_next!34771) (not b_next!34773) (not b_next!34767) b_and!93697 (not b_next!34769))
