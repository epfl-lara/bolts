; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757784 () Bool)

(assert start!757784)

(declare-fun b!8047368 () Bool)

(declare-fun b_free!136519 () Bool)

(declare-fun b_next!137309 () Bool)

(assert (=> b!8047368 (= b_free!136519 (not b_next!137309))))

(declare-fun tp!2412638 () Bool)

(declare-fun b_and!354955 () Bool)

(assert (=> b!8047368 (= tp!2412638 b_and!354955)))

(declare-fun b_free!136521 () Bool)

(declare-fun b_next!137311 () Bool)

(assert (=> b!8047368 (= b_free!136521 (not b_next!137311))))

(declare-fun tp!2412641 () Bool)

(declare-fun b_and!354957 () Bool)

(assert (=> b!8047368 (= tp!2412641 b_and!354957)))

(declare-fun b!8047365 () Bool)

(declare-fun res!3181246 () Bool)

(declare-fun e!4741349 () Bool)

(assert (=> b!8047365 (=> (not res!3181246) (not e!4741349))))

(declare-datatypes ((List!75518 0))(
  ( (Nil!75392) (Cons!75392 (h!81840 (_ BitVec 16)) (t!391290 List!75518)) )
))
(declare-datatypes ((TokenValue!9095 0))(
  ( (FloatLiteralValue!18190 (text!64110 List!75518)) (TokenValueExt!9094 (__x!35471 Int)) (Broken!45475 (value!293085 List!75518)) (Object!9220) (End!9095) (Def!9095) (Underscore!9095) (Match!9095) (Else!9095) (Error!9095) (Case!9095) (If!9095) (Extends!9095) (Abstract!9095) (Class!9095) (Val!9095) (DelimiterValue!18190 (del!9155 List!75518)) (KeywordValue!9101 (value!293086 List!75518)) (CommentValue!18190 (value!293087 List!75518)) (WhitespaceValue!18190 (value!293088 List!75518)) (IndentationValue!9095 (value!293089 List!75518)) (String!85258) (Int32!9095) (Broken!45476 (value!293090 List!75518)) (Boolean!9096) (Unit!171158) (OperatorValue!9098 (op!9155 List!75518)) (IdentifierValue!18190 (value!293091 List!75518)) (IdentifierValue!18191 (value!293092 List!75518)) (WhitespaceValue!18191 (value!293093 List!75518)) (True!18190) (False!18190) (Broken!45477 (value!293094 List!75518)) (Broken!45478 (value!293095 List!75518)) (True!18191) (RightBrace!9095) (RightBracket!9095) (Colon!9095) (Null!9095) (Comma!9095) (LeftBracket!9095) (False!18191) (LeftBrace!9095) (ImaginaryLiteralValue!9095 (text!64111 List!75518)) (StringLiteralValue!27285 (value!293096 List!75518)) (EOFValue!9095 (value!293097 List!75518)) (IdentValue!9095 (value!293098 List!75518)) (DelimiterValue!18191 (value!293099 List!75518)) (DedentValue!9095 (value!293100 List!75518)) (NewLineValue!9095 (value!293101 List!75518)) (IntegerValue!27285 (value!293102 (_ BitVec 32)) (text!64112 List!75518)) (IntegerValue!27286 (value!293103 Int) (text!64113 List!75518)) (Times!9095) (Or!9095) (Equal!9095) (Minus!9095) (Broken!45479 (value!293104 List!75518)) (And!9095) (Div!9095) (LessEqual!9095) (Mod!9095) (Concat!30941) (Not!9095) (Plus!9095) (SpaceValue!9095 (value!293105 List!75518)) (IntegerValue!27287 (value!293106 Int) (text!64114 List!75518)) (StringLiteralValue!27286 (text!64115 List!75518)) (FloatLiteralValue!18191 (text!64116 List!75518)) (BytesLiteralValue!9095 (value!293107 List!75518)) (CommentValue!18191 (value!293108 List!75518)) (StringLiteralValue!27287 (value!293109 List!75518)) (ErrorTokenValue!9095 (msg!9156 List!75518)) )
))
(declare-datatypes ((C!44030 0))(
  ( (C!44031 (val!32791 Int)) )
))
(declare-datatypes ((Regex!21846 0))(
  ( (ElementMatch!21846 (c!1475477 C!44030)) (Concat!30942 (regOne!44204 Regex!21846) (regTwo!44204 Regex!21846)) (EmptyExpr!21846) (Star!21846 (reg!22175 Regex!21846)) (EmptyLang!21846) (Union!21846 (regOne!44205 Regex!21846) (regTwo!44205 Regex!21846)) )
))
(declare-datatypes ((String!85259 0))(
  ( (String!85260 (value!293110 String)) )
))
(declare-datatypes ((List!75519 0))(
  ( (Nil!75393) (Cons!75393 (h!81841 C!44030) (t!391291 List!75519)) )
))
(declare-datatypes ((IArray!32147 0))(
  ( (IArray!32148 (innerList!16131 List!75519)) )
))
(declare-datatypes ((Conc!16043 0))(
  ( (Node!16043 (left!57409 Conc!16043) (right!57739 Conc!16043) (csize!32316 Int) (cheight!16254 Int)) (Leaf!30742 (xs!19441 IArray!32147) (csize!32317 Int)) (Empty!16043) )
))
(declare-datatypes ((BalanceConc!31042 0))(
  ( (BalanceConc!31043 (c!1475478 Conc!16043)) )
))
(declare-datatypes ((TokenValueInjection!17498 0))(
  ( (TokenValueInjection!17499 (toValue!11858 Int) (toChars!11717 Int)) )
))
(declare-datatypes ((Rule!17350 0))(
  ( (Rule!17351 (regex!8775 Regex!21846) (tag!9639 String!85259) (isSeparator!8775 Bool) (transformation!8775 TokenValueInjection!17498)) )
))
(declare-datatypes ((List!75520 0))(
  ( (Nil!75394) (Cons!75394 (h!81842 Rule!17350) (t!391292 List!75520)) )
))
(declare-fun rules!4081 () List!75520)

(assert (=> b!8047365 (= res!3181246 (not (is-Cons!75394 rules!4081)))))

(declare-fun b!8047367 () Bool)

(declare-fun res!3181245 () Bool)

(assert (=> b!8047367 (=> (not res!3181245) (not e!4741349))))

(declare-datatypes ((List!75521 0))(
  ( (Nil!75395) (Cons!75395 (h!81843 String!85259) (t!391293 List!75521)) )
))
(declare-fun newAcc!87 () List!75521)

(declare-fun acc!573 () List!75521)

(declare-fun subseq!926 (List!75521 List!75521) Bool)

(assert (=> b!8047367 (= res!3181245 (subseq!926 newAcc!87 acc!573))))

(declare-fun e!4741344 () Bool)

(assert (=> b!8047368 (= e!4741344 (and tp!2412638 tp!2412641))))

(declare-fun b!8047369 () Bool)

(declare-fun res!3181247 () Bool)

(assert (=> b!8047369 (=> (not res!3181247) (not e!4741349))))

(declare-datatypes ((LexerInterface!8365 0))(
  ( (LexerInterfaceExt!8362 (__x!35472 Int)) (Lexer!8363) )
))
(declare-fun thiss!26941 () LexerInterface!8365)

(declare-fun noDuplicateTag!3353 (LexerInterface!8365 List!75520 List!75521) Bool)

(assert (=> b!8047369 (= res!3181247 (noDuplicateTag!3353 thiss!26941 rules!4081 acc!573))))

(declare-fun e!4741345 () Bool)

(declare-fun tp!2412640 () Bool)

(declare-fun b!8047370 () Bool)

(declare-fun inv!97108 (String!85259) Bool)

(declare-fun inv!97111 (TokenValueInjection!17498) Bool)

(assert (=> b!8047370 (= e!4741345 (and tp!2412640 (inv!97108 (tag!9639 (h!81842 rules!4081))) (inv!97111 (transformation!8775 (h!81842 rules!4081))) e!4741344))))

(declare-fun b!8047371 () Bool)

(assert (=> b!8047371 (= e!4741349 (not (noDuplicateTag!3353 thiss!26941 rules!4081 newAcc!87)))))

(declare-fun res!3181248 () Bool)

(assert (=> start!757784 (=> (not res!3181248) (not e!4741349))))

(assert (=> start!757784 (= res!3181248 (is-Lexer!8363 thiss!26941))))

(assert (=> start!757784 e!4741349))

(assert (=> start!757784 true))

(declare-fun e!4741343 () Bool)

(assert (=> start!757784 e!4741343))

(declare-fun e!4741348 () Bool)

(assert (=> start!757784 e!4741348))

(declare-fun e!4741347 () Bool)

(assert (=> start!757784 e!4741347))

(declare-fun b!8047366 () Bool)

(declare-fun tp!2412642 () Bool)

(assert (=> b!8047366 (= e!4741348 (and (inv!97108 (h!81843 acc!573)) tp!2412642))))

(declare-fun b!8047372 () Bool)

(declare-fun tp!2412643 () Bool)

(assert (=> b!8047372 (= e!4741347 (and e!4741345 tp!2412643))))

(declare-fun b!8047373 () Bool)

(declare-fun tp!2412639 () Bool)

(assert (=> b!8047373 (= e!4741343 (and (inv!97108 (h!81843 newAcc!87)) tp!2412639))))

(assert (= (and start!757784 res!3181248) b!8047367))

(assert (= (and b!8047367 res!3181245) b!8047369))

(assert (= (and b!8047369 res!3181247) b!8047365))

(assert (= (and b!8047365 res!3181246) b!8047371))

(assert (= (and start!757784 (is-Cons!75395 newAcc!87)) b!8047373))

(assert (= (and start!757784 (is-Cons!75395 acc!573)) b!8047366))

(assert (= b!8047370 b!8047368))

(assert (= b!8047372 b!8047370))

(assert (= (and start!757784 (is-Cons!75394 rules!4081)) b!8047372))

(declare-fun m!8399054 () Bool)

(assert (=> b!8047371 m!8399054))

(declare-fun m!8399056 () Bool)

(assert (=> b!8047373 m!8399056))

(declare-fun m!8399058 () Bool)

(assert (=> b!8047369 m!8399058))

(declare-fun m!8399060 () Bool)

(assert (=> b!8047367 m!8399060))

(declare-fun m!8399062 () Bool)

(assert (=> b!8047370 m!8399062))

(declare-fun m!8399064 () Bool)

(assert (=> b!8047370 m!8399064))

(declare-fun m!8399066 () Bool)

(assert (=> b!8047366 m!8399066))

(push 1)

(assert b_and!354955)

(assert (not b!8047367))

(assert (not b!8047373))

(assert (not b!8047371))

(assert (not b!8047366))

(assert (not b_next!137311))

(assert (not b!8047370))

(assert b_and!354957)

(assert (not b!8047369))

(assert (not b_next!137309))

(assert (not b!8047372))

(check-sat)

(pop 1)

(push 1)

(assert b_and!354957)

(assert b_and!354955)

(assert (not b_next!137311))

(assert (not b_next!137309))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2396767 () Bool)

(declare-fun res!3181265 () Bool)

(declare-fun e!4741381 () Bool)

(assert (=> d!2396767 (=> res!3181265 e!4741381)))

(assert (=> d!2396767 (= res!3181265 (is-Nil!75394 rules!4081))))

(assert (=> d!2396767 (= (noDuplicateTag!3353 thiss!26941 rules!4081 acc!573) e!4741381)))

(declare-fun b!8047405 () Bool)

(declare-fun e!4741382 () Bool)

(assert (=> b!8047405 (= e!4741381 e!4741382)))

(declare-fun res!3181266 () Bool)

(assert (=> b!8047405 (=> (not res!3181266) (not e!4741382))))

(declare-fun contains!21074 (List!75521 String!85259) Bool)

(assert (=> b!8047405 (= res!3181266 (not (contains!21074 acc!573 (tag!9639 (h!81842 rules!4081)))))))

(declare-fun b!8047406 () Bool)

(assert (=> b!8047406 (= e!4741382 (noDuplicateTag!3353 thiss!26941 (t!391292 rules!4081) (Cons!75395 (tag!9639 (h!81842 rules!4081)) acc!573)))))

(assert (= (and d!2396767 (not res!3181265)) b!8047405))

(assert (= (and b!8047405 res!3181266) b!8047406))

(declare-fun m!8399082 () Bool)

(assert (=> b!8047405 m!8399082))

(declare-fun m!8399084 () Bool)

(assert (=> b!8047406 m!8399084))

(assert (=> b!8047369 d!2396767))

(declare-fun d!2396773 () Bool)

(declare-fun res!3181280 () Bool)

(declare-fun e!4741396 () Bool)

(assert (=> d!2396773 (=> res!3181280 e!4741396)))

(assert (=> d!2396773 (= res!3181280 (is-Nil!75395 newAcc!87))))

(assert (=> d!2396773 (= (subseq!926 newAcc!87 acc!573) e!4741396)))

(declare-fun b!8047421 () Bool)

(declare-fun e!4741395 () Bool)

(assert (=> b!8047421 (= e!4741395 (subseq!926 (t!391293 newAcc!87) (t!391293 acc!573)))))

(declare-fun b!8047420 () Bool)

(declare-fun e!4741397 () Bool)

(declare-fun e!4741398 () Bool)

(assert (=> b!8047420 (= e!4741397 e!4741398)))

(declare-fun res!3181282 () Bool)

(assert (=> b!8047420 (=> res!3181282 e!4741398)))

(assert (=> b!8047420 (= res!3181282 e!4741395)))

(declare-fun res!3181281 () Bool)

(assert (=> b!8047420 (=> (not res!3181281) (not e!4741395))))

(assert (=> b!8047420 (= res!3181281 (= (h!81843 newAcc!87) (h!81843 acc!573)))))

(declare-fun b!8047419 () Bool)

(assert (=> b!8047419 (= e!4741396 e!4741397)))

(declare-fun res!3181279 () Bool)

(assert (=> b!8047419 (=> (not res!3181279) (not e!4741397))))

(assert (=> b!8047419 (= res!3181279 (is-Cons!75395 acc!573))))

(declare-fun b!8047422 () Bool)

(assert (=> b!8047422 (= e!4741398 (subseq!926 newAcc!87 (t!391293 acc!573)))))

(assert (= (and d!2396773 (not res!3181280)) b!8047419))

(assert (= (and b!8047419 res!3181279) b!8047420))

(assert (= (and b!8047420 res!3181281) b!8047421))

(assert (= (and b!8047420 (not res!3181282)) b!8047422))

(declare-fun m!8399086 () Bool)

(assert (=> b!8047421 m!8399086))

(declare-fun m!8399088 () Bool)

(assert (=> b!8047422 m!8399088))

(assert (=> b!8047367 d!2396773))

(declare-fun d!2396775 () Bool)

(assert (=> d!2396775 (= (inv!97108 (h!81843 newAcc!87)) (= (mod (str.len (value!293110 (h!81843 newAcc!87))) 2) 0))))

(assert (=> b!8047373 d!2396775))

(declare-fun d!2396777 () Bool)

(declare-fun res!3181285 () Bool)

(declare-fun e!4741401 () Bool)

(assert (=> d!2396777 (=> res!3181285 e!4741401)))

(assert (=> d!2396777 (= res!3181285 (is-Nil!75394 rules!4081))))

(assert (=> d!2396777 (= (noDuplicateTag!3353 thiss!26941 rules!4081 newAcc!87) e!4741401)))

(declare-fun b!8047425 () Bool)

(declare-fun e!4741402 () Bool)

(assert (=> b!8047425 (= e!4741401 e!4741402)))

(declare-fun res!3181286 () Bool)

(assert (=> b!8047425 (=> (not res!3181286) (not e!4741402))))

(assert (=> b!8047425 (= res!3181286 (not (contains!21074 newAcc!87 (tag!9639 (h!81842 rules!4081)))))))

(declare-fun b!8047426 () Bool)

(assert (=> b!8047426 (= e!4741402 (noDuplicateTag!3353 thiss!26941 (t!391292 rules!4081) (Cons!75395 (tag!9639 (h!81842 rules!4081)) newAcc!87)))))

(assert (= (and d!2396777 (not res!3181285)) b!8047425))

(assert (= (and b!8047425 res!3181286) b!8047426))

(declare-fun m!8399090 () Bool)

(assert (=> b!8047425 m!8399090))

(declare-fun m!8399092 () Bool)

(assert (=> b!8047426 m!8399092))

(assert (=> b!8047371 d!2396777))

(declare-fun d!2396779 () Bool)

(assert (=> d!2396779 (= (inv!97108 (h!81843 acc!573)) (= (mod (str.len (value!293110 (h!81843 acc!573))) 2) 0))))

(assert (=> b!8047366 d!2396779))

(declare-fun d!2396781 () Bool)

(assert (=> d!2396781 (= (inv!97108 (tag!9639 (h!81842 rules!4081))) (= (mod (str.len (value!293110 (tag!9639 (h!81842 rules!4081)))) 2) 0))))

(assert (=> b!8047370 d!2396781))

(declare-fun d!2396783 () Bool)

(declare-fun res!3181291 () Bool)

(declare-fun e!4741407 () Bool)

(assert (=> d!2396783 (=> (not res!3181291) (not e!4741407))))

(declare-fun semiInverseModEq!3898 (Int Int) Bool)

(assert (=> d!2396783 (= res!3181291 (semiInverseModEq!3898 (toChars!11717 (transformation!8775 (h!81842 rules!4081))) (toValue!11858 (transformation!8775 (h!81842 rules!4081)))))))

(assert (=> d!2396783 (= (inv!97111 (transformation!8775 (h!81842 rules!4081))) e!4741407)))

(declare-fun b!8047431 () Bool)

(declare-fun equivClasses!3713 (Int Int) Bool)

(assert (=> b!8047431 (= e!4741407 (equivClasses!3713 (toChars!11717 (transformation!8775 (h!81842 rules!4081))) (toValue!11858 (transformation!8775 (h!81842 rules!4081)))))))

(assert (= (and d!2396783 res!3181291) b!8047431))

(declare-fun m!8399102 () Bool)

(assert (=> d!2396783 m!8399102))

(declare-fun m!8399104 () Bool)

(assert (=> b!8047431 m!8399104))

(assert (=> b!8047370 d!2396783))

(declare-fun b!8047450 () Bool)

(declare-fun b_free!136527 () Bool)

(declare-fun b_next!137317 () Bool)

(assert (=> b!8047450 (= b_free!136527 (not b_next!137317))))

(declare-fun tp!2412671 () Bool)

(declare-fun b_and!354963 () Bool)

(assert (=> b!8047450 (= tp!2412671 b_and!354963)))

(declare-fun b_free!136529 () Bool)

(declare-fun b_next!137319 () Bool)

(assert (=> b!8047450 (= b_free!136529 (not b_next!137319))))

(declare-fun tp!2412672 () Bool)

(declare-fun b_and!354965 () Bool)

(assert (=> b!8047450 (= tp!2412672 b_and!354965)))

(declare-fun e!4741427 () Bool)

(assert (=> b!8047450 (= e!4741427 (and tp!2412671 tp!2412672))))

(declare-fun e!4741424 () Bool)

(declare-fun tp!2412670 () Bool)

(declare-fun b!8047449 () Bool)

(assert (=> b!8047449 (= e!4741424 (and tp!2412670 (inv!97108 (tag!9639 (h!81842 (t!391292 rules!4081)))) (inv!97111 (transformation!8775 (h!81842 (t!391292 rules!4081)))) e!4741427))))

(declare-fun b!8047448 () Bool)

(declare-fun e!4741425 () Bool)

(declare-fun tp!2412673 () Bool)

(assert (=> b!8047448 (= e!4741425 (and e!4741424 tp!2412673))))

(assert (=> b!8047372 (= tp!2412643 e!4741425)))

(assert (= b!8047449 b!8047450))

(assert (= b!8047448 b!8047449))

(assert (= (and b!8047372 (is-Cons!75394 (t!391292 rules!4081))) b!8047448))

(declare-fun m!8399106 () Bool)

(assert (=> b!8047449 m!8399106))

(declare-fun m!8399108 () Bool)

(assert (=> b!8047449 m!8399108))

(declare-fun b!8047455 () Bool)

(declare-fun e!4741432 () Bool)

(declare-fun tp!2412676 () Bool)

(assert (=> b!8047455 (= e!4741432 (and (inv!97108 (h!81843 (t!391293 newAcc!87))) tp!2412676))))

(assert (=> b!8047373 (= tp!2412639 e!4741432)))

(assert (= (and b!8047373 (is-Cons!75395 (t!391293 newAcc!87))) b!8047455))

(declare-fun m!8399110 () Bool)

(assert (=> b!8047455 m!8399110))

(declare-fun b!8047456 () Bool)

(declare-fun e!4741434 () Bool)

(declare-fun tp!2412677 () Bool)

(assert (=> b!8047456 (= e!4741434 (and (inv!97108 (h!81843 (t!391293 acc!573))) tp!2412677))))

(assert (=> b!8047366 (= tp!2412642 e!4741434)))

(assert (= (and b!8047366 (is-Cons!75395 (t!391293 acc!573))) b!8047456))

(declare-fun m!8399112 () Bool)

(assert (=> b!8047456 m!8399112))

(declare-fun b!8047474 () Bool)

(declare-fun e!4741442 () Bool)

(declare-fun tp!2412690 () Bool)

(declare-fun tp!2412689 () Bool)

(assert (=> b!8047474 (= e!4741442 (and tp!2412690 tp!2412689))))

(declare-fun b!8047472 () Bool)

(declare-fun tp!2412688 () Bool)

(declare-fun tp!2412691 () Bool)

(assert (=> b!8047472 (= e!4741442 (and tp!2412688 tp!2412691))))

(declare-fun b!8047473 () Bool)

(declare-fun tp!2412692 () Bool)

(assert (=> b!8047473 (= e!4741442 tp!2412692)))

(assert (=> b!8047370 (= tp!2412640 e!4741442)))

(declare-fun b!8047471 () Bool)

(declare-fun tp_is_empty!54651 () Bool)

(assert (=> b!8047471 (= e!4741442 tp_is_empty!54651)))

(assert (= (and b!8047370 (is-ElementMatch!21846 (regex!8775 (h!81842 rules!4081)))) b!8047471))

(assert (= (and b!8047370 (is-Concat!30942 (regex!8775 (h!81842 rules!4081)))) b!8047472))

(assert (= (and b!8047370 (is-Star!21846 (regex!8775 (h!81842 rules!4081)))) b!8047473))

(assert (= (and b!8047370 (is-Union!21846 (regex!8775 (h!81842 rules!4081)))) b!8047474))

(push 1)

(assert (not b!8047456))

(assert (not b!8047472))

(assert tp_is_empty!54651)

(assert (not b!8047473))

(assert b_and!354965)

(assert (not b!8047455))

(assert (not b!8047425))

(assert (not b!8047406))

(assert (not b_next!137319))

(assert b_and!354963)

(assert (not b!8047405))

(assert (not b!8047422))

(assert (not b!8047449))

(assert (not b!8047448))

(assert b_and!354955)

(assert (not b!8047426))

(assert b_and!354957)

(assert (not b!8047431))

(assert (not b!8047474))

(assert (not b_next!137317))

(assert (not b_next!137309))

(assert (not b!8047421))

(assert (not d!2396783))

(assert (not b_next!137311))

(check-sat)

(pop 1)

(push 1)

(assert b_and!354955)

(assert b_and!354957)

(assert b_and!354965)

(assert (not b_next!137319))

(assert (not b_next!137311))

(assert b_and!354963)

(assert (not b_next!137317))

(assert (not b_next!137309))

(check-sat)

(pop 1)

