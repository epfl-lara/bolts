; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!259914 () Bool)

(assert start!259914)

(declare-fun b!2672375 () Bool)

(declare-fun b_free!75233 () Bool)

(declare-fun b_next!75937 () Bool)

(assert (=> b!2672375 (= b_free!75233 (not b_next!75937))))

(declare-fun tp!845047 () Bool)

(declare-fun b_and!197361 () Bool)

(assert (=> b!2672375 (= tp!845047 b_and!197361)))

(declare-fun b_free!75235 () Bool)

(declare-fun b_next!75939 () Bool)

(assert (=> b!2672375 (= b_free!75235 (not b_next!75939))))

(declare-fun tp!845050 () Bool)

(declare-fun b_and!197363 () Bool)

(assert (=> b!2672375 (= tp!845050 b_and!197363)))

(declare-fun b!2672378 () Bool)

(declare-fun b_free!75237 () Bool)

(declare-fun b_next!75941 () Bool)

(assert (=> b!2672378 (= b_free!75237 (not b_next!75941))))

(declare-fun tp!845051 () Bool)

(declare-fun b_and!197365 () Bool)

(assert (=> b!2672378 (= tp!845051 b_and!197365)))

(declare-fun b_free!75239 () Bool)

(declare-fun b_next!75943 () Bool)

(assert (=> b!2672378 (= b_free!75239 (not b_next!75943))))

(declare-fun tp!845056 () Bool)

(declare-fun b_and!197367 () Bool)

(assert (=> b!2672378 (= tp!845056 b_and!197367)))

(declare-fun b!2672376 () Bool)

(declare-fun b_free!75241 () Bool)

(declare-fun b_next!75945 () Bool)

(assert (=> b!2672376 (= b_free!75241 (not b_next!75945))))

(declare-fun tp!845052 () Bool)

(declare-fun b_and!197369 () Bool)

(assert (=> b!2672376 (= tp!845052 b_and!197369)))

(declare-fun b_free!75243 () Bool)

(declare-fun b_next!75947 () Bool)

(assert (=> b!2672376 (= b_free!75243 (not b_next!75947))))

(declare-fun tp!845048 () Bool)

(declare-fun b_and!197371 () Bool)

(assert (=> b!2672376 (= tp!845048 b_and!197371)))

(declare-fun bs!479566 () Bool)

(declare-fun b!2672371 () Bool)

(declare-fun b!2672377 () Bool)

(assert (= bs!479566 (and b!2672371 b!2672377)))

(declare-fun lambda!99830 () Int)

(declare-fun lambda!99829 () Int)

(assert (=> bs!479566 (not (= lambda!99830 lambda!99829))))

(declare-fun b!2672389 () Bool)

(declare-fun e!1684394 () Bool)

(assert (=> b!2672389 (= e!1684394 true)))

(declare-fun b!2672388 () Bool)

(declare-fun e!1684393 () Bool)

(assert (=> b!2672388 (= e!1684393 e!1684394)))

(declare-fun b!2672387 () Bool)

(declare-fun e!1684392 () Bool)

(assert (=> b!2672387 (= e!1684392 e!1684393)))

(assert (=> b!2672371 e!1684392))

(assert (= b!2672388 b!2672389))

(assert (= b!2672387 b!2672388))

(declare-datatypes ((List!30849 0))(
  ( (Nil!30749) (Cons!30749 (h!36169 (_ BitVec 16)) (t!223368 List!30849)) )
))
(declare-datatypes ((TokenValue!4917 0))(
  ( (FloatLiteralValue!9834 (text!34864 List!30849)) (TokenValueExt!4916 (__x!19667 Int)) (Broken!24585 (value!151386 List!30849)) (Object!5016) (End!4917) (Def!4917) (Underscore!4917) (Match!4917) (Else!4917) (Error!4917) (Case!4917) (If!4917) (Extends!4917) (Abstract!4917) (Class!4917) (Val!4917) (DelimiterValue!9834 (del!4977 List!30849)) (KeywordValue!4923 (value!151387 List!30849)) (CommentValue!9834 (value!151388 List!30849)) (WhitespaceValue!9834 (value!151389 List!30849)) (IndentationValue!4917 (value!151390 List!30849)) (String!34468) (Int32!4917) (Broken!24586 (value!151391 List!30849)) (Boolean!4918) (Unit!44964) (OperatorValue!4920 (op!4977 List!30849)) (IdentifierValue!9834 (value!151392 List!30849)) (IdentifierValue!9835 (value!151393 List!30849)) (WhitespaceValue!9835 (value!151394 List!30849)) (True!9834) (False!9834) (Broken!24587 (value!151395 List!30849)) (Broken!24588 (value!151396 List!30849)) (True!9835) (RightBrace!4917) (RightBracket!4917) (Colon!4917) (Null!4917) (Comma!4917) (LeftBracket!4917) (False!9835) (LeftBrace!4917) (ImaginaryLiteralValue!4917 (text!34865 List!30849)) (StringLiteralValue!14751 (value!151397 List!30849)) (EOFValue!4917 (value!151398 List!30849)) (IdentValue!4917 (value!151399 List!30849)) (DelimiterValue!9835 (value!151400 List!30849)) (DedentValue!4917 (value!151401 List!30849)) (NewLineValue!4917 (value!151402 List!30849)) (IntegerValue!14751 (value!151403 (_ BitVec 32)) (text!34866 List!30849)) (IntegerValue!14752 (value!151404 Int) (text!34867 List!30849)) (Times!4917) (Or!4917) (Equal!4917) (Minus!4917) (Broken!24589 (value!151405 List!30849)) (And!4917) (Div!4917) (LessEqual!4917) (Mod!4917) (Concat!12756) (Not!4917) (Plus!4917) (SpaceValue!4917 (value!151406 List!30849)) (IntegerValue!14753 (value!151407 Int) (text!34868 List!30849)) (StringLiteralValue!14752 (text!34869 List!30849)) (FloatLiteralValue!9835 (text!34870 List!30849)) (BytesLiteralValue!4917 (value!151408 List!30849)) (CommentValue!9835 (value!151409 List!30849)) (StringLiteralValue!14753 (value!151410 List!30849)) (ErrorTokenValue!4917 (msg!4978 List!30849)) )
))
(declare-datatypes ((C!15836 0))(
  ( (C!15837 (val!9852 Int)) )
))
(declare-datatypes ((List!30850 0))(
  ( (Nil!30750) (Cons!30750 (h!36170 C!15836) (t!223369 List!30850)) )
))
(declare-datatypes ((IArray!19245 0))(
  ( (IArray!19246 (innerList!9680 List!30850)) )
))
(declare-datatypes ((Conc!9620 0))(
  ( (Node!9620 (left!23795 Conc!9620) (right!24125 Conc!9620) (csize!19470 Int) (cheight!9831 Int)) (Leaf!14708 (xs!12650 IArray!19245) (csize!19471 Int)) (Empty!9620) )
))
(declare-datatypes ((BalanceConc!18854 0))(
  ( (BalanceConc!18855 (c!430654 Conc!9620)) )
))
(declare-datatypes ((String!34469 0))(
  ( (String!34470 (value!151411 String)) )
))
(declare-datatypes ((Regex!7839 0))(
  ( (ElementMatch!7839 (c!430655 C!15836)) (Concat!12757 (regOne!16190 Regex!7839) (regTwo!16190 Regex!7839)) (EmptyExpr!7839) (Star!7839 (reg!8168 Regex!7839)) (EmptyLang!7839) (Union!7839 (regOne!16191 Regex!7839) (regTwo!16191 Regex!7839)) )
))
(declare-datatypes ((TokenValueInjection!9274 0))(
  ( (TokenValueInjection!9275 (toValue!6637 Int) (toChars!6496 Int)) )
))
(declare-datatypes ((Rule!9190 0))(
  ( (Rule!9191 (regex!4695 Regex!7839) (tag!5197 String!34469) (isSeparator!4695 Bool) (transformation!4695 TokenValueInjection!9274)) )
))
(declare-datatypes ((List!30851 0))(
  ( (Nil!30751) (Cons!30751 (h!36171 Rule!9190) (t!223370 List!30851)) )
))
(declare-fun rules!1712 () List!30851)

(get-info :version)

(assert (= (and b!2672371 ((_ is Cons!30751) rules!1712)) b!2672387))

(declare-fun order!16919 () Int)

(declare-fun order!16921 () Int)

(declare-fun dynLambda!13330 (Int Int) Int)

(declare-fun dynLambda!13331 (Int Int) Int)

(assert (=> b!2672389 (< (dynLambda!13330 order!16919 (toValue!6637 (transformation!4695 (h!36171 rules!1712)))) (dynLambda!13331 order!16921 lambda!99830))))

(declare-fun order!16923 () Int)

(declare-fun dynLambda!13332 (Int Int) Int)

(assert (=> b!2672389 (< (dynLambda!13332 order!16923 (toChars!6496 (transformation!4695 (h!36171 rules!1712)))) (dynLambda!13331 order!16921 lambda!99830))))

(assert (=> b!2672371 true))

(declare-fun b!2672356 () Bool)

(declare-fun res!1123529 () Bool)

(declare-fun e!1684372 () Bool)

(assert (=> b!2672356 (=> (not res!1123529) (not e!1684372))))

(declare-fun sepAndNonSepRulesDisjointChars!1268 (List!30851 List!30851) Bool)

(assert (=> b!2672356 (= res!1123529 (sepAndNonSepRulesDisjointChars!1268 rules!1712 rules!1712))))

(declare-fun b!2672357 () Bool)

(declare-fun res!1123531 () Bool)

(assert (=> b!2672357 (=> (not res!1123531) (not e!1684372))))

(declare-datatypes ((Token!8860 0))(
  ( (Token!8861 (value!151412 TokenValue!4917) (rule!7101 Rule!9190) (size!23767 Int) (originalCharacters!5461 List!30850)) )
))
(declare-datatypes ((List!30852 0))(
  ( (Nil!30752) (Cons!30752 (h!36172 Token!8860) (t!223371 List!30852)) )
))
(declare-fun l!4335 () List!30852)

(declare-datatypes ((LexerInterface!4292 0))(
  ( (LexerInterfaceExt!4289 (__x!19668 Int)) (Lexer!4290) )
))
(declare-fun thiss!14116 () LexerInterface!4292)

(declare-fun rulesProduceEachTokenIndividuallyList!1514 (LexerInterface!4292 List!30851 List!30852) Bool)

(assert (=> b!2672357 (= res!1123531 (rulesProduceEachTokenIndividuallyList!1514 thiss!14116 rules!1712 l!4335))))

(declare-fun b!2672358 () Bool)

(declare-fun res!1123533 () Bool)

(assert (=> b!2672358 (=> (not res!1123533) (not e!1684372))))

(declare-fun contains!5907 (List!30852 Token!8860) Bool)

(assert (=> b!2672358 (= res!1123533 (contains!5907 l!4335 (h!36172 l!4335)))))

(declare-fun b!2672359 () Bool)

(declare-fun res!1123526 () Bool)

(assert (=> b!2672359 (=> (not res!1123526) (not e!1684372))))

(declare-fun isEmpty!17582 (List!30851) Bool)

(assert (=> b!2672359 (= res!1123526 (not (isEmpty!17582 rules!1712)))))

(declare-fun b!2672360 () Bool)

(declare-fun e!1684383 () Bool)

(declare-fun separatorToken!152 () Token!8860)

(declare-fun tp!845045 () Bool)

(declare-fun e!1684369 () Bool)

(declare-fun inv!41753 (String!34469) Bool)

(declare-fun inv!41756 (TokenValueInjection!9274) Bool)

(assert (=> b!2672360 (= e!1684369 (and tp!845045 (inv!41753 (tag!5197 (rule!7101 separatorToken!152))) (inv!41756 (transformation!4695 (rule!7101 separatorToken!152))) e!1684383))))

(declare-fun b!2672361 () Bool)

(declare-fun res!1123522 () Bool)

(assert (=> b!2672361 (=> (not res!1123522) (not e!1684372))))

(assert (=> b!2672361 (= res!1123522 (isSeparator!4695 (rule!7101 separatorToken!152)))))

(declare-fun b!2672362 () Bool)

(declare-fun e!1684374 () Bool)

(declare-fun e!1684378 () Bool)

(assert (=> b!2672362 (= e!1684374 (not e!1684378))))

(declare-fun res!1123521 () Bool)

(assert (=> b!2672362 (=> res!1123521 e!1684378)))

(declare-fun lt!941065 () List!30850)

(declare-fun lt!941070 () List!30850)

(declare-fun lt!941067 () List!30850)

(assert (=> b!2672362 (= res!1123521 (or (not (= lt!941065 lt!941067)) (not (= lt!941067 lt!941070))))))

(declare-fun printList!1186 (LexerInterface!4292 List!30852) List!30850)

(assert (=> b!2672362 (= lt!941067 (printList!1186 thiss!14116 (Cons!30752 (h!36172 l!4335) Nil!30752)))))

(declare-fun lt!941066 () BalanceConc!18854)

(declare-fun list!11607 (BalanceConc!18854) List!30850)

(assert (=> b!2672362 (= lt!941065 (list!11607 lt!941066))))

(declare-datatypes ((IArray!19247 0))(
  ( (IArray!19248 (innerList!9681 List!30852)) )
))
(declare-datatypes ((Conc!9621 0))(
  ( (Node!9621 (left!23796 Conc!9621) (right!24126 Conc!9621) (csize!19472 Int) (cheight!9832 Int)) (Leaf!14709 (xs!12651 IArray!19247) (csize!19473 Int)) (Empty!9621) )
))
(declare-datatypes ((BalanceConc!18856 0))(
  ( (BalanceConc!18857 (c!430656 Conc!9621)) )
))
(declare-fun lt!941072 () BalanceConc!18856)

(declare-fun printTailRec!1147 (LexerInterface!4292 BalanceConc!18856 Int BalanceConc!18854) BalanceConc!18854)

(assert (=> b!2672362 (= lt!941066 (printTailRec!1147 thiss!14116 lt!941072 0 (BalanceConc!18855 Empty!9620)))))

(declare-fun print!1671 (LexerInterface!4292 BalanceConc!18856) BalanceConc!18854)

(assert (=> b!2672362 (= lt!941066 (print!1671 thiss!14116 lt!941072))))

(declare-fun singletonSeq!2092 (Token!8860) BalanceConc!18856)

(assert (=> b!2672362 (= lt!941072 (singletonSeq!2092 (h!36172 l!4335)))))

(declare-fun b!2672363 () Bool)

(declare-fun res!1123525 () Bool)

(assert (=> b!2672363 (=> res!1123525 e!1684378)))

(declare-fun rulesProduceIndividualToken!2004 (LexerInterface!4292 List!30851 Token!8860) Bool)

(assert (=> b!2672363 (= res!1123525 (not (rulesProduceIndividualToken!2004 thiss!14116 rules!1712 (h!36172 l!4335))))))

(declare-fun b!2672364 () Bool)

(declare-fun res!1123523 () Bool)

(assert (=> b!2672364 (=> (not res!1123523) (not e!1684372))))

(assert (=> b!2672364 (= res!1123523 ((_ is Cons!30752) l!4335))))

(declare-fun b!2672365 () Bool)

(assert (=> b!2672365 (= e!1684378 true)))

(declare-fun lt!941071 () Bool)

(declare-fun isEmpty!17583 (BalanceConc!18856) Bool)

(declare-datatypes ((tuple2!30208 0))(
  ( (tuple2!30209 (_1!17646 BalanceConc!18856) (_2!17646 BalanceConc!18854)) )
))
(declare-fun lex!1927 (LexerInterface!4292 List!30851 BalanceConc!18854) tuple2!30208)

(declare-fun seqFromList!3199 (List!30850) BalanceConc!18854)

(assert (=> b!2672365 (= lt!941071 (isEmpty!17583 (_1!17646 (lex!1927 thiss!14116 rules!1712 (seqFromList!3199 lt!941070)))))))

(declare-fun b!2672367 () Bool)

(declare-fun e!1684384 () Bool)

(declare-fun tp!845054 () Bool)

(declare-fun inv!21 (TokenValue!4917) Bool)

(assert (=> b!2672367 (= e!1684384 (and (inv!21 (value!151412 separatorToken!152)) e!1684369 tp!845054))))

(declare-fun b!2672368 () Bool)

(declare-fun res!1123528 () Bool)

(assert (=> b!2672368 (=> (not res!1123528) (not e!1684372))))

(declare-fun rulesInvariant!3792 (LexerInterface!4292 List!30851) Bool)

(assert (=> b!2672368 (= res!1123528 (rulesInvariant!3792 thiss!14116 rules!1712))))

(declare-fun e!1684381 () Bool)

(declare-fun b!2672369 () Bool)

(declare-fun tp!845044 () Bool)

(declare-fun e!1684375 () Bool)

(assert (=> b!2672369 (= e!1684381 (and tp!845044 (inv!41753 (tag!5197 (rule!7101 (h!36172 l!4335)))) (inv!41756 (transformation!4695 (rule!7101 (h!36172 l!4335)))) e!1684375))))

(declare-fun e!1684370 () Bool)

(declare-fun e!1684371 () Bool)

(declare-fun tp!845055 () Bool)

(declare-fun b!2672370 () Bool)

(assert (=> b!2672370 (= e!1684370 (and tp!845055 (inv!41753 (tag!5197 (h!36171 rules!1712))) (inv!41756 (transformation!4695 (h!36171 rules!1712))) e!1684371))))

(assert (=> b!2672371 (= e!1684372 e!1684374)))

(declare-fun res!1123532 () Bool)

(assert (=> b!2672371 (=> (not res!1123532) (not e!1684374))))

(declare-fun lt!941074 () Bool)

(declare-datatypes ((tuple2!30210 0))(
  ( (tuple2!30211 (_1!17647 Token!8860) (_2!17647 List!30850)) )
))
(declare-datatypes ((Option!6086 0))(
  ( (None!6085) (Some!6085 (v!32620 tuple2!30210)) )
))
(declare-fun lt!941069 () Option!6086)

(assert (=> b!2672371 (= res!1123532 (and (or lt!941074 (not (= (_1!17647 (v!32620 lt!941069)) (h!36172 l!4335)))) (or lt!941074 (= (_1!17647 (v!32620 lt!941069)) (h!36172 l!4335))) ((_ is None!6085) lt!941069)))))

(assert (=> b!2672371 (= lt!941074 (not ((_ is Some!6085) lt!941069)))))

(declare-fun lt!941073 () List!30850)

(declare-fun maxPrefix!2332 (LexerInterface!4292 List!30851 List!30850) Option!6086)

(declare-fun ++!7501 (List!30850 List!30850) List!30850)

(assert (=> b!2672371 (= lt!941069 (maxPrefix!2332 thiss!14116 rules!1712 (++!7501 lt!941070 lt!941073)))))

(declare-fun charsOf!2960 (Token!8860) BalanceConc!18854)

(assert (=> b!2672371 (= lt!941070 (list!11607 (charsOf!2960 (h!36172 l!4335))))))

(declare-fun printWithSeparatorTokenWhenNeededList!688 (LexerInterface!4292 List!30851 List!30852 Token!8860) List!30850)

(assert (=> b!2672371 (= lt!941073 (printWithSeparatorTokenWhenNeededList!688 thiss!14116 rules!1712 (t!223371 l!4335) separatorToken!152))))

(declare-datatypes ((Unit!44965 0))(
  ( (Unit!44966) )
))
(declare-fun lt!941068 () Unit!44965)

(declare-fun forallContained!1037 (List!30852 Int Token!8860) Unit!44965)

(assert (=> b!2672371 (= lt!941068 (forallContained!1037 l!4335 lambda!99830 (h!36172 l!4335)))))

(declare-fun b!2672372 () Bool)

(declare-fun e!1684379 () Bool)

(declare-fun tp!845049 () Bool)

(assert (=> b!2672372 (= e!1684379 (and e!1684370 tp!845049))))

(declare-fun b!2672373 () Bool)

(declare-fun res!1123527 () Bool)

(assert (=> b!2672373 (=> (not res!1123527) (not e!1684372))))

(assert (=> b!2672373 (= res!1123527 (rulesProduceIndividualToken!2004 thiss!14116 rules!1712 separatorToken!152))))

(declare-fun e!1684380 () Bool)

(declare-fun b!2672374 () Bool)

(declare-fun tp!845046 () Bool)

(assert (=> b!2672374 (= e!1684380 (and (inv!21 (value!151412 (h!36172 l!4335))) e!1684381 tp!845046))))

(assert (=> b!2672375 (= e!1684371 (and tp!845047 tp!845050))))

(assert (=> b!2672376 (= e!1684383 (and tp!845052 tp!845048))))

(declare-fun res!1123530 () Bool)

(assert (=> b!2672377 (=> (not res!1123530) (not e!1684372))))

(declare-fun forall!6510 (List!30852 Int) Bool)

(assert (=> b!2672377 (= res!1123530 (forall!6510 l!4335 lambda!99829))))

(assert (=> b!2672378 (= e!1684375 (and tp!845051 tp!845056))))

(declare-fun tp!845053 () Bool)

(declare-fun b!2672366 () Bool)

(declare-fun e!1684377 () Bool)

(declare-fun inv!41757 (Token!8860) Bool)

(assert (=> b!2672366 (= e!1684377 (and (inv!41757 (h!36172 l!4335)) e!1684380 tp!845053))))

(declare-fun res!1123524 () Bool)

(assert (=> start!259914 (=> (not res!1123524) (not e!1684372))))

(assert (=> start!259914 (= res!1123524 ((_ is Lexer!4290) thiss!14116))))

(assert (=> start!259914 e!1684372))

(assert (=> start!259914 true))

(assert (=> start!259914 e!1684379))

(assert (=> start!259914 e!1684377))

(assert (=> start!259914 (and (inv!41757 separatorToken!152) e!1684384)))

(assert (= (and start!259914 res!1123524) b!2672359))

(assert (= (and b!2672359 res!1123526) b!2672368))

(assert (= (and b!2672368 res!1123528) b!2672357))

(assert (= (and b!2672357 res!1123531) b!2672373))

(assert (= (and b!2672373 res!1123527) b!2672361))

(assert (= (and b!2672361 res!1123522) b!2672377))

(assert (= (and b!2672377 res!1123530) b!2672356))

(assert (= (and b!2672356 res!1123529) b!2672364))

(assert (= (and b!2672364 res!1123523) b!2672358))

(assert (= (and b!2672358 res!1123533) b!2672371))

(assert (= (and b!2672371 res!1123532) b!2672362))

(assert (= (and b!2672362 (not res!1123521)) b!2672363))

(assert (= (and b!2672363 (not res!1123525)) b!2672365))

(assert (= b!2672370 b!2672375))

(assert (= b!2672372 b!2672370))

(assert (= (and start!259914 ((_ is Cons!30751) rules!1712)) b!2672372))

(assert (= b!2672369 b!2672378))

(assert (= b!2672374 b!2672369))

(assert (= b!2672366 b!2672374))

(assert (= (and start!259914 ((_ is Cons!30752) l!4335)) b!2672366))

(assert (= b!2672360 b!2672376))

(assert (= b!2672367 b!2672360))

(assert (= start!259914 b!2672367))

(declare-fun m!3038419 () Bool)

(assert (=> b!2672369 m!3038419))

(declare-fun m!3038421 () Bool)

(assert (=> b!2672369 m!3038421))

(declare-fun m!3038423 () Bool)

(assert (=> b!2672370 m!3038423))

(declare-fun m!3038425 () Bool)

(assert (=> b!2672370 m!3038425))

(declare-fun m!3038427 () Bool)

(assert (=> b!2672365 m!3038427))

(assert (=> b!2672365 m!3038427))

(declare-fun m!3038429 () Bool)

(assert (=> b!2672365 m!3038429))

(declare-fun m!3038431 () Bool)

(assert (=> b!2672365 m!3038431))

(declare-fun m!3038433 () Bool)

(assert (=> b!2672377 m!3038433))

(declare-fun m!3038435 () Bool)

(assert (=> b!2672362 m!3038435))

(declare-fun m!3038437 () Bool)

(assert (=> b!2672362 m!3038437))

(declare-fun m!3038439 () Bool)

(assert (=> b!2672362 m!3038439))

(declare-fun m!3038441 () Bool)

(assert (=> b!2672362 m!3038441))

(declare-fun m!3038443 () Bool)

(assert (=> b!2672362 m!3038443))

(declare-fun m!3038445 () Bool)

(assert (=> b!2672371 m!3038445))

(declare-fun m!3038447 () Bool)

(assert (=> b!2672371 m!3038447))

(declare-fun m!3038449 () Bool)

(assert (=> b!2672371 m!3038449))

(declare-fun m!3038451 () Bool)

(assert (=> b!2672371 m!3038451))

(assert (=> b!2672371 m!3038447))

(assert (=> b!2672371 m!3038445))

(declare-fun m!3038453 () Bool)

(assert (=> b!2672371 m!3038453))

(declare-fun m!3038455 () Bool)

(assert (=> b!2672371 m!3038455))

(declare-fun m!3038457 () Bool)

(assert (=> b!2672357 m!3038457))

(declare-fun m!3038459 () Bool)

(assert (=> b!2672373 m!3038459))

(declare-fun m!3038461 () Bool)

(assert (=> b!2672367 m!3038461))

(declare-fun m!3038463 () Bool)

(assert (=> b!2672368 m!3038463))

(declare-fun m!3038465 () Bool)

(assert (=> start!259914 m!3038465))

(declare-fun m!3038467 () Bool)

(assert (=> b!2672360 m!3038467))

(declare-fun m!3038469 () Bool)

(assert (=> b!2672360 m!3038469))

(declare-fun m!3038471 () Bool)

(assert (=> b!2672374 m!3038471))

(declare-fun m!3038473 () Bool)

(assert (=> b!2672359 m!3038473))

(declare-fun m!3038475 () Bool)

(assert (=> b!2672366 m!3038475))

(declare-fun m!3038477 () Bool)

(assert (=> b!2672356 m!3038477))

(declare-fun m!3038479 () Bool)

(assert (=> b!2672363 m!3038479))

(declare-fun m!3038481 () Bool)

(assert (=> b!2672358 m!3038481))

(check-sat b_and!197371 (not b!2672373) b_and!197369 b_and!197361 (not b!2672365) (not b!2672357) (not b!2672367) (not b_next!75945) (not b!2672368) (not b!2672359) (not b!2672371) b_and!197365 (not b!2672387) b_and!197367 (not b!2672377) (not start!259914) (not b!2672358) (not b!2672362) (not b!2672366) (not b!2672369) (not b_next!75939) (not b_next!75943) b_and!197363 (not b!2672372) (not b!2672356) (not b_next!75941) (not b!2672370) (not b_next!75937) (not b_next!75947) (not b!2672360) (not b!2672363) (not b!2672374))
(check-sat b_and!197371 b_and!197369 b_and!197361 (not b_next!75939) (not b_next!75945) (not b_next!75941) (not b_next!75937) b_and!197365 (not b_next!75947) b_and!197367 (not b_next!75943) b_and!197363)
