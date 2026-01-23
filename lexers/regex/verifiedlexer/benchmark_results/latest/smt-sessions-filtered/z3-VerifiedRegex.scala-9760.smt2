; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511000 () Bool)

(assert start!511000)

(declare-fun b!4883306 () Bool)

(declare-fun b_free!131043 () Bool)

(declare-fun b_next!131833 () Bool)

(assert (=> b!4883306 (= b_free!131043 (not b_next!131833))))

(declare-fun tp!1374110 () Bool)

(declare-fun b_and!343875 () Bool)

(assert (=> b!4883306 (= tp!1374110 b_and!343875)))

(declare-fun b_free!131045 () Bool)

(declare-fun b_next!131835 () Bool)

(assert (=> b!4883306 (= b_free!131045 (not b_next!131835))))

(declare-fun tp!1374108 () Bool)

(declare-fun b_and!343877 () Bool)

(assert (=> b!4883306 (= tp!1374108 b_and!343877)))

(declare-fun b!4883296 () Bool)

(declare-fun e!3052108 () Bool)

(declare-fun lt!2000373 () Bool)

(assert (=> b!4883296 (= e!3052108 lt!2000373)))

(declare-fun b!4883297 () Bool)

(declare-fun res!2084669 () Bool)

(declare-fun e!3052106 () Bool)

(assert (=> b!4883297 (=> (not res!2084669) (not e!3052106))))

(declare-datatypes ((LexerInterface!7680 0))(
  ( (LexerInterfaceExt!7677 (__x!34089 Int)) (Lexer!7678) )
))
(declare-fun thiss!14805 () LexerInterface!7680)

(declare-datatypes ((C!26524 0))(
  ( (C!26525 (val!22596 Int)) )
))
(declare-datatypes ((List!56269 0))(
  ( (Nil!56145) (Cons!56145 (h!62593 C!26524) (t!364915 List!56269)) )
))
(declare-datatypes ((IArray!29373 0))(
  ( (IArray!29374 (innerList!14744 List!56269)) )
))
(declare-datatypes ((Conc!14656 0))(
  ( (Node!14656 (left!40794 Conc!14656) (right!41124 Conc!14656) (csize!29542 Int) (cheight!14867 Int)) (Leaf!24417 (xs!17972 IArray!29373) (csize!29543 Int)) (Empty!14656) )
))
(declare-datatypes ((BalanceConc!28742 0))(
  ( (BalanceConc!28743 (c!830445 Conc!14656)) )
))
(declare-datatypes ((List!56270 0))(
  ( (Nil!56146) (Cons!56146 (h!62594 (_ BitVec 16)) (t!364916 List!56270)) )
))
(declare-datatypes ((TokenValue!8398 0))(
  ( (FloatLiteralValue!16796 (text!59231 List!56270)) (TokenValueExt!8397 (__x!34090 Int)) (Broken!41990 (value!259634 List!56270)) (Object!8521) (End!8398) (Def!8398) (Underscore!8398) (Match!8398) (Else!8398) (Error!8398) (Case!8398) (If!8398) (Extends!8398) (Abstract!8398) (Class!8398) (Val!8398) (DelimiterValue!16796 (del!8458 List!56270)) (KeywordValue!8404 (value!259635 List!56270)) (CommentValue!16796 (value!259636 List!56270)) (WhitespaceValue!16796 (value!259637 List!56270)) (IndentationValue!8398 (value!259638 List!56270)) (String!63431) (Int32!8398) (Broken!41991 (value!259639 List!56270)) (Boolean!8399) (Unit!146135) (OperatorValue!8401 (op!8458 List!56270)) (IdentifierValue!16796 (value!259640 List!56270)) (IdentifierValue!16797 (value!259641 List!56270)) (WhitespaceValue!16797 (value!259642 List!56270)) (True!16796) (False!16796) (Broken!41992 (value!259643 List!56270)) (Broken!41993 (value!259644 List!56270)) (True!16797) (RightBrace!8398) (RightBracket!8398) (Colon!8398) (Null!8398) (Comma!8398) (LeftBracket!8398) (False!16797) (LeftBrace!8398) (ImaginaryLiteralValue!8398 (text!59232 List!56270)) (StringLiteralValue!25194 (value!259645 List!56270)) (EOFValue!8398 (value!259646 List!56270)) (IdentValue!8398 (value!259647 List!56270)) (DelimiterValue!16797 (value!259648 List!56270)) (DedentValue!8398 (value!259649 List!56270)) (NewLineValue!8398 (value!259650 List!56270)) (IntegerValue!25194 (value!259651 (_ BitVec 32)) (text!59233 List!56270)) (IntegerValue!25195 (value!259652 Int) (text!59234 List!56270)) (Times!8398) (Or!8398) (Equal!8398) (Minus!8398) (Broken!41994 (value!259653 List!56270)) (And!8398) (Div!8398) (LessEqual!8398) (Mod!8398) (Concat!21561) (Not!8398) (Plus!8398) (SpaceValue!8398 (value!259654 List!56270)) (IntegerValue!25196 (value!259655 Int) (text!59235 List!56270)) (StringLiteralValue!25195 (text!59236 List!56270)) (FloatLiteralValue!16797 (text!59237 List!56270)) (BytesLiteralValue!8398 (value!259656 List!56270)) (CommentValue!16797 (value!259657 List!56270)) (StringLiteralValue!25196 (value!259658 List!56270)) (ErrorTokenValue!8398 (msg!8459 List!56270)) )
))
(declare-datatypes ((Regex!13163 0))(
  ( (ElementMatch!13163 (c!830446 C!26524)) (Concat!21562 (regOne!26838 Regex!13163) (regTwo!26838 Regex!13163)) (EmptyExpr!13163) (Star!13163 (reg!13492 Regex!13163)) (EmptyLang!13163) (Union!13163 (regOne!26839 Regex!13163) (regTwo!26839 Regex!13163)) )
))
(declare-datatypes ((String!63432 0))(
  ( (String!63433 (value!259659 String)) )
))
(declare-datatypes ((TokenValueInjection!16104 0))(
  ( (TokenValueInjection!16105 (toValue!10975 Int) (toChars!10834 Int)) )
))
(declare-datatypes ((Rule!15976 0))(
  ( (Rule!15977 (regex!8088 Regex!13163) (tag!8952 String!63432) (isSeparator!8088 Bool) (transformation!8088 TokenValueInjection!16104)) )
))
(declare-datatypes ((List!56271 0))(
  ( (Nil!56147) (Cons!56147 (h!62595 Rule!15976) (t!364917 List!56271)) )
))
(declare-fun rulesArg!165 () List!56271)

(declare-fun rulesValidInductive!3067 (LexerInterface!7680 List!56271) Bool)

(assert (=> b!4883297 (= res!2084669 (rulesValidInductive!3067 thiss!14805 rulesArg!165))))

(declare-fun b!4883298 () Bool)

(declare-fun e!3052113 () Bool)

(assert (=> b!4883298 (= e!3052113 e!3052108)))

(declare-fun res!2084670 () Bool)

(assert (=> b!4883298 (=> res!2084670 e!3052108)))

(declare-fun lt!2000371 () Bool)

(assert (=> b!4883298 (= res!2084670 (or (not (= lt!2000371 lt!2000373)) (not lt!2000371)))))

(declare-datatypes ((Token!14744 0))(
  ( (Token!14745 (value!259660 TokenValue!8398) (rule!11250 Rule!15976) (size!37007 Int) (originalCharacters!8403 List!56269)) )
))
(declare-datatypes ((tuple2!60048 0))(
  ( (tuple2!60049 (_1!33327 Token!14744) (_2!33327 List!56269)) )
))
(declare-datatypes ((Option!13859 0))(
  ( (None!13858) (Some!13858 (v!49808 tuple2!60048)) )
))
(declare-fun lt!2000368 () Option!13859)

(declare-fun isDefined!10899 (Option!13859) Bool)

(assert (=> b!4883298 (= lt!2000373 (isDefined!10899 lt!2000368))))

(assert (=> b!4883298 (= lt!2000371 false)))

(declare-fun lt!2000369 () List!56269)

(declare-fun maxPrefixZipper!591 (LexerInterface!7680 List!56271 List!56269) Option!13859)

(assert (=> b!4883298 (= lt!2000368 (maxPrefixZipper!591 thiss!14805 rulesArg!165 lt!2000369))))

(declare-fun b!4883299 () Bool)

(declare-fun e!3052112 () Bool)

(assert (=> b!4883299 (= e!3052106 (not e!3052112))))

(declare-fun res!2084668 () Bool)

(assert (=> b!4883299 (=> res!2084668 e!3052112)))

(get-info :version)

(assert (=> b!4883299 (= res!2084668 (or (and ((_ is Cons!56147) rulesArg!165) ((_ is Nil!56147) (t!364917 rulesArg!165))) (not ((_ is Cons!56147) rulesArg!165))))))

(declare-fun isPrefix!4810 (List!56269 List!56269) Bool)

(assert (=> b!4883299 (isPrefix!4810 lt!2000369 lt!2000369)))

(declare-datatypes ((Unit!146136 0))(
  ( (Unit!146137) )
))
(declare-fun lt!2000370 () Unit!146136)

(declare-fun lemmaIsPrefixRefl!3207 (List!56269 List!56269) Unit!146136)

(assert (=> b!4883299 (= lt!2000370 (lemmaIsPrefixRefl!3207 lt!2000369 lt!2000369))))

(declare-fun input!1236 () BalanceConc!28742)

(declare-fun list!17613 (BalanceConc!28742) List!56269)

(assert (=> b!4883299 (= lt!2000369 (list!17613 input!1236))))

(declare-fun e!3052110 () Bool)

(declare-fun e!3052114 () Bool)

(declare-fun tp!1374107 () Bool)

(declare-fun b!4883300 () Bool)

(declare-fun inv!72216 (String!63432) Bool)

(declare-fun inv!72220 (TokenValueInjection!16104) Bool)

(assert (=> b!4883300 (= e!3052114 (and tp!1374107 (inv!72216 (tag!8952 (h!62595 rulesArg!165))) (inv!72220 (transformation!8088 (h!62595 rulesArg!165))) e!3052110))))

(declare-fun b!4883301 () Bool)

(declare-fun res!2084665 () Bool)

(assert (=> b!4883301 (=> (not res!2084665) (not e!3052106))))

(declare-fun isEmpty!30089 (List!56271) Bool)

(assert (=> b!4883301 (= res!2084665 (not (isEmpty!30089 rulesArg!165)))))

(declare-fun b!4883302 () Bool)

(declare-fun e!3052109 () Bool)

(declare-fun tp!1374111 () Bool)

(assert (=> b!4883302 (= e!3052109 (and e!3052114 tp!1374111))))

(declare-fun res!2084671 () Bool)

(assert (=> start!511000 (=> (not res!2084671) (not e!3052106))))

(assert (=> start!511000 (= res!2084671 ((_ is Lexer!7678) thiss!14805))))

(assert (=> start!511000 e!3052106))

(assert (=> start!511000 true))

(assert (=> start!511000 e!3052109))

(declare-fun e!3052107 () Bool)

(declare-fun inv!72221 (BalanceConc!28742) Bool)

(assert (=> start!511000 (and (inv!72221 input!1236) e!3052107)))

(declare-fun b!4883303 () Bool)

(declare-fun res!2084667 () Bool)

(assert (=> b!4883303 (=> res!2084667 e!3052108)))

(declare-datatypes ((tuple2!60050 0))(
  ( (tuple2!60051 (_1!33328 Token!14744) (_2!33328 BalanceConc!28742)) )
))
(declare-datatypes ((Option!13860 0))(
  ( (None!13859) (Some!13859 (v!49809 tuple2!60050)) )
))
(declare-fun get!19307 (Option!13860) tuple2!60050)

(declare-fun get!19308 (Option!13859) tuple2!60048)

(assert (=> b!4883303 (= res!2084667 (not (= (_1!33328 (get!19307 None!13859)) (_1!33327 (get!19308 lt!2000368)))))))

(declare-fun b!4883304 () Bool)

(declare-fun tp!1374109 () Bool)

(declare-fun inv!72222 (Conc!14656) Bool)

(assert (=> b!4883304 (= e!3052107 (and (inv!72222 (c!830445 input!1236)) tp!1374109))))

(declare-fun b!4883305 () Bool)

(assert (=> b!4883305 (= e!3052112 e!3052113)))

(declare-fun res!2084666 () Bool)

(assert (=> b!4883305 (=> res!2084666 e!3052113)))

(declare-fun lt!2000374 () Option!13860)

(declare-fun lt!2000372 () Option!13860)

(assert (=> b!4883305 (= res!2084666 (or (not ((_ is None!13859) lt!2000374)) (not ((_ is None!13859) lt!2000372))))))

(declare-fun maxPrefixZipperSequence!1249 (LexerInterface!7680 List!56271 BalanceConc!28742) Option!13860)

(assert (=> b!4883305 (= lt!2000372 (maxPrefixZipperSequence!1249 thiss!14805 (t!364917 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!614 (LexerInterface!7680 Rule!15976 BalanceConc!28742) Option!13860)

(assert (=> b!4883305 (= lt!2000374 (maxPrefixOneRuleZipperSequence!614 thiss!14805 (h!62595 rulesArg!165) input!1236))))

(assert (=> b!4883306 (= e!3052110 (and tp!1374110 tp!1374108))))

(assert (= (and start!511000 res!2084671) b!4883297))

(assert (= (and b!4883297 res!2084669) b!4883301))

(assert (= (and b!4883301 res!2084665) b!4883299))

(assert (= (and b!4883299 (not res!2084668)) b!4883305))

(assert (= (and b!4883305 (not res!2084666)) b!4883298))

(assert (= (and b!4883298 (not res!2084670)) b!4883303))

(assert (= (and b!4883303 (not res!2084667)) b!4883296))

(assert (= b!4883300 b!4883306))

(assert (= b!4883302 b!4883300))

(assert (= (and start!511000 ((_ is Cons!56147) rulesArg!165)) b!4883302))

(assert (= start!511000 b!4883304))

(declare-fun m!5887310 () Bool)

(assert (=> b!4883303 m!5887310))

(declare-fun m!5887312 () Bool)

(assert (=> b!4883303 m!5887312))

(declare-fun m!5887314 () Bool)

(assert (=> b!4883298 m!5887314))

(declare-fun m!5887316 () Bool)

(assert (=> b!4883298 m!5887316))

(declare-fun m!5887318 () Bool)

(assert (=> b!4883300 m!5887318))

(declare-fun m!5887320 () Bool)

(assert (=> b!4883300 m!5887320))

(declare-fun m!5887322 () Bool)

(assert (=> b!4883305 m!5887322))

(declare-fun m!5887324 () Bool)

(assert (=> b!4883305 m!5887324))

(declare-fun m!5887326 () Bool)

(assert (=> start!511000 m!5887326))

(declare-fun m!5887328 () Bool)

(assert (=> b!4883297 m!5887328))

(declare-fun m!5887330 () Bool)

(assert (=> b!4883301 m!5887330))

(declare-fun m!5887332 () Bool)

(assert (=> b!4883304 m!5887332))

(declare-fun m!5887334 () Bool)

(assert (=> b!4883299 m!5887334))

(declare-fun m!5887336 () Bool)

(assert (=> b!4883299 m!5887336))

(declare-fun m!5887338 () Bool)

(assert (=> b!4883299 m!5887338))

(check-sat b_and!343875 (not b!4883301) (not b!4883305) (not b!4883299) (not b!4883297) b_and!343877 (not b!4883303) (not b_next!131833) (not b!4883300) (not b!4883298) (not b!4883304) (not b!4883302) (not b_next!131835) (not start!511000))
(check-sat b_and!343877 b_and!343875 (not b_next!131833) (not b_next!131835))
