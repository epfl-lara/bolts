; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!275422 () Bool)

(assert start!275422)

(declare-fun b!2833503 () Bool)

(declare-fun b_free!81589 () Bool)

(declare-fun b_next!82293 () Bool)

(assert (=> b!2833503 (= b_free!81589 (not b_next!82293))))

(declare-fun tp!905888 () Bool)

(declare-fun b_and!207355 () Bool)

(assert (=> b!2833503 (= tp!905888 b_and!207355)))

(declare-fun b_free!81591 () Bool)

(declare-fun b_next!82295 () Bool)

(assert (=> b!2833503 (= b_free!81591 (not b_next!82295))))

(declare-fun tp!905887 () Bool)

(declare-fun b_and!207357 () Bool)

(assert (=> b!2833503 (= tp!905887 b_and!207357)))

(declare-fun b!2833504 () Bool)

(declare-fun b_free!81593 () Bool)

(declare-fun b_next!82297 () Bool)

(assert (=> b!2833504 (= b_free!81593 (not b_next!82297))))

(declare-fun tp!905890 () Bool)

(declare-fun b_and!207359 () Bool)

(assert (=> b!2833504 (= tp!905890 b_and!207359)))

(declare-fun b_free!81595 () Bool)

(declare-fun b_next!82299 () Bool)

(assert (=> b!2833504 (= b_free!81595 (not b_next!82299))))

(declare-fun tp!905893 () Bool)

(declare-fun b_and!207361 () Bool)

(assert (=> b!2833504 (= tp!905893 b_and!207361)))

(declare-fun b!2833493 () Bool)

(declare-fun res!1179419 () Bool)

(declare-fun e!1794155 () Bool)

(assert (=> b!2833493 (=> (not res!1179419) (not e!1794155))))

(declare-datatypes ((LexerInterface!4605 0))(
  ( (LexerInterfaceExt!4602 (__x!22228 Int)) (Lexer!4603) )
))
(declare-fun thiss!11007 () LexerInterface!4605)

(declare-datatypes ((C!16994 0))(
  ( (C!16995 (val!10509 Int)) )
))
(declare-datatypes ((List!33559 0))(
  ( (Nil!33435) (Cons!33435 (h!38855 C!16994) (t!231656 List!33559)) )
))
(declare-datatypes ((IArray!20775 0))(
  ( (IArray!20776 (innerList!10445 List!33559)) )
))
(declare-datatypes ((Conc!10385 0))(
  ( (Node!10385 (left!25228 Conc!10385) (right!25558 Conc!10385) (csize!21000 Int) (cheight!10596 Int)) (Leaf!15801 (xs!13497 IArray!20775) (csize!21001 Int)) (Empty!10385) )
))
(declare-datatypes ((Regex!8406 0))(
  ( (ElementMatch!8406 (c!458059 C!16994)) (Concat!13651 (regOne!17324 Regex!8406) (regTwo!17324 Regex!8406)) (EmptyExpr!8406) (Star!8406 (reg!8735 Regex!8406)) (EmptyLang!8406) (Union!8406 (regOne!17325 Regex!8406) (regTwo!17325 Regex!8406)) )
))
(declare-datatypes ((List!33560 0))(
  ( (Nil!33436) (Cons!33436 (h!38856 (_ BitVec 16)) (t!231657 List!33560)) )
))
(declare-datatypes ((TokenValue!5245 0))(
  ( (FloatLiteralValue!10490 (text!37160 List!33560)) (TokenValueExt!5244 (__x!22229 Int)) (Broken!26225 (value!161272 List!33560)) (Object!5368) (End!5245) (Def!5245) (Underscore!5245) (Match!5245) (Else!5245) (Error!5245) (Case!5245) (If!5245) (Extends!5245) (Abstract!5245) (Class!5245) (Val!5245) (DelimiterValue!10490 (del!5305 List!33560)) (KeywordValue!5251 (value!161273 List!33560)) (CommentValue!10490 (value!161274 List!33560)) (WhitespaceValue!10490 (value!161275 List!33560)) (IndentationValue!5245 (value!161276 List!33560)) (String!36748) (Int32!5245) (Broken!26226 (value!161277 List!33560)) (Boolean!5246) (Unit!47393) (OperatorValue!5248 (op!5305 List!33560)) (IdentifierValue!10490 (value!161278 List!33560)) (IdentifierValue!10491 (value!161279 List!33560)) (WhitespaceValue!10491 (value!161280 List!33560)) (True!10490) (False!10490) (Broken!26227 (value!161281 List!33560)) (Broken!26228 (value!161282 List!33560)) (True!10491) (RightBrace!5245) (RightBracket!5245) (Colon!5245) (Null!5245) (Comma!5245) (LeftBracket!5245) (False!10491) (LeftBrace!5245) (ImaginaryLiteralValue!5245 (text!37161 List!33560)) (StringLiteralValue!15735 (value!161283 List!33560)) (EOFValue!5245 (value!161284 List!33560)) (IdentValue!5245 (value!161285 List!33560)) (DelimiterValue!10491 (value!161286 List!33560)) (DedentValue!5245 (value!161287 List!33560)) (NewLineValue!5245 (value!161288 List!33560)) (IntegerValue!15735 (value!161289 (_ BitVec 32)) (text!37162 List!33560)) (IntegerValue!15736 (value!161290 Int) (text!37163 List!33560)) (Times!5245) (Or!5245) (Equal!5245) (Minus!5245) (Broken!26229 (value!161291 List!33560)) (And!5245) (Div!5245) (LessEqual!5245) (Mod!5245) (Concat!13652) (Not!5245) (Plus!5245) (SpaceValue!5245 (value!161292 List!33560)) (IntegerValue!15737 (value!161293 Int) (text!37164 List!33560)) (StringLiteralValue!15736 (text!37165 List!33560)) (FloatLiteralValue!10491 (text!37166 List!33560)) (BytesLiteralValue!5245 (value!161294 List!33560)) (CommentValue!10491 (value!161295 List!33560)) (StringLiteralValue!15737 (value!161296 List!33560)) (ErrorTokenValue!5245 (msg!5306 List!33560)) )
))
(declare-datatypes ((String!36749 0))(
  ( (String!36750 (value!161297 String)) )
))
(declare-datatypes ((BalanceConc!20408 0))(
  ( (BalanceConc!20409 (c!458060 Conc!10385)) )
))
(declare-datatypes ((TokenValueInjection!9918 0))(
  ( (TokenValueInjection!9919 (toValue!7049 Int) (toChars!6908 Int)) )
))
(declare-datatypes ((Rule!9830 0))(
  ( (Rule!9831 (regex!5015 Regex!8406) (tag!5519 String!36749) (isSeparator!5015 Bool) (transformation!5015 TokenValueInjection!9918)) )
))
(declare-datatypes ((Token!9432 0))(
  ( (Token!9433 (value!161298 TokenValue!5245) (rule!7443 Rule!9830) (size!26016 Int) (originalCharacters!5747 List!33559)) )
))
(declare-datatypes ((List!33561 0))(
  ( (Nil!33437) (Cons!33437 (h!38857 Token!9432) (t!231658 List!33561)) )
))
(declare-fun l!4019 () List!33561)

(declare-datatypes ((List!33562 0))(
  ( (Nil!33438) (Cons!33438 (h!38858 Rule!9830) (t!231659 List!33562)) )
))
(declare-fun rules!1047 () List!33562)

(declare-fun rulesProduceEachTokenIndividuallyList!1648 (LexerInterface!4605 List!33562 List!33561) Bool)

(assert (=> b!2833493 (= res!1179419 (rulesProduceEachTokenIndividuallyList!1648 thiss!11007 rules!1047 l!4019))))

(declare-fun b!2833494 () Bool)

(declare-fun res!1179420 () Bool)

(assert (=> b!2833494 (=> (not res!1179420) (not e!1794155))))

(declare-fun rulesInvariant!4021 (LexerInterface!4605 List!33562) Bool)

(assert (=> b!2833494 (= res!1179420 (rulesInvariant!4021 thiss!11007 rules!1047))))

(declare-fun b!2833496 () Bool)

(declare-fun res!1179424 () Bool)

(assert (=> b!2833496 (=> (not res!1179424) (not e!1794155))))

(assert (=> b!2833496 (= res!1179424 (and (is-Cons!33437 l!4019) (is-Cons!33437 (t!231658 l!4019))))))

(declare-fun b!2833497 () Bool)

(declare-fun contains!6101 (List!33561 Token!9432) Bool)

(assert (=> b!2833497 (= e!1794155 (not (contains!6101 l!4019 (h!38857 l!4019))))))

(declare-fun b!2833498 () Bool)

(declare-fun res!1179423 () Bool)

(assert (=> b!2833498 (=> (not res!1179423) (not e!1794155))))

(declare-datatypes ((IArray!20777 0))(
  ( (IArray!20778 (innerList!10446 List!33561)) )
))
(declare-datatypes ((Conc!10386 0))(
  ( (Node!10386 (left!25229 Conc!10386) (right!25559 Conc!10386) (csize!21002 Int) (cheight!10597 Int)) (Leaf!15802 (xs!13498 IArray!20777) (csize!21003 Int)) (Empty!10386) )
))
(declare-datatypes ((BalanceConc!20410 0))(
  ( (BalanceConc!20411 (c!458061 Conc!10386)) )
))
(declare-fun rulesProduceEachTokenIndividually!1121 (LexerInterface!4605 List!33562 BalanceConc!20410) Bool)

(declare-fun seqFromList!3261 (List!33561) BalanceConc!20410)

(assert (=> b!2833498 (= res!1179423 (rulesProduceEachTokenIndividually!1121 thiss!11007 rules!1047 (seqFromList!3261 l!4019)))))

(declare-fun e!1794162 () Bool)

(declare-fun b!2833499 () Bool)

(declare-fun e!1794156 () Bool)

(declare-fun tp!905885 () Bool)

(declare-fun inv!45394 (String!36749) Bool)

(declare-fun inv!45397 (TokenValueInjection!9918) Bool)

(assert (=> b!2833499 (= e!1794156 (and tp!905885 (inv!45394 (tag!5519 (rule!7443 (h!38857 l!4019)))) (inv!45397 (transformation!5015 (rule!7443 (h!38857 l!4019)))) e!1794162))))

(declare-fun b!2833500 () Bool)

(declare-fun e!1794159 () Bool)

(declare-fun tp!905891 () Bool)

(declare-fun e!1794152 () Bool)

(assert (=> b!2833500 (= e!1794159 (and tp!905891 (inv!45394 (tag!5519 (h!38858 rules!1047))) (inv!45397 (transformation!5015 (h!38858 rules!1047))) e!1794152))))

(declare-fun b!2833501 () Bool)

(declare-fun tp!905892 () Bool)

(declare-fun e!1794153 () Bool)

(declare-fun inv!21 (TokenValue!5245) Bool)

(assert (=> b!2833501 (= e!1794153 (and (inv!21 (value!161298 (h!38857 l!4019))) e!1794156 tp!905892))))

(declare-fun b!2833495 () Bool)

(declare-fun res!1179422 () Bool)

(assert (=> b!2833495 (=> (not res!1179422) (not e!1794155))))

(declare-fun isEmpty!18434 (List!33562) Bool)

(assert (=> b!2833495 (= res!1179422 (not (isEmpty!18434 rules!1047)))))

(declare-fun res!1179421 () Bool)

(assert (=> start!275422 (=> (not res!1179421) (not e!1794155))))

(assert (=> start!275422 (= res!1179421 (is-Lexer!4603 thiss!11007))))

(assert (=> start!275422 e!1794155))

(assert (=> start!275422 true))

(declare-fun e!1794161 () Bool)

(assert (=> start!275422 e!1794161))

(declare-fun e!1794158 () Bool)

(assert (=> start!275422 e!1794158))

(declare-fun b!2833502 () Bool)

(declare-fun tp!905886 () Bool)

(declare-fun inv!45398 (Token!9432) Bool)

(assert (=> b!2833502 (= e!1794158 (and (inv!45398 (h!38857 l!4019)) e!1794153 tp!905886))))

(assert (=> b!2833503 (= e!1794152 (and tp!905888 tp!905887))))

(assert (=> b!2833504 (= e!1794162 (and tp!905890 tp!905893))))

(declare-fun b!2833505 () Bool)

(declare-fun tp!905889 () Bool)

(assert (=> b!2833505 (= e!1794161 (and e!1794159 tp!905889))))

(assert (= (and start!275422 res!1179421) b!2833495))

(assert (= (and b!2833495 res!1179422) b!2833494))

(assert (= (and b!2833494 res!1179420) b!2833493))

(assert (= (and b!2833493 res!1179419) b!2833498))

(assert (= (and b!2833498 res!1179423) b!2833496))

(assert (= (and b!2833496 res!1179424) b!2833497))

(assert (= b!2833500 b!2833503))

(assert (= b!2833505 b!2833500))

(assert (= (and start!275422 (is-Cons!33438 rules!1047)) b!2833505))

(assert (= b!2833499 b!2833504))

(assert (= b!2833501 b!2833499))

(assert (= b!2833502 b!2833501))

(assert (= (and start!275422 (is-Cons!33437 l!4019)) b!2833502))

(declare-fun m!3263199 () Bool)

(assert (=> b!2833498 m!3263199))

(assert (=> b!2833498 m!3263199))

(declare-fun m!3263201 () Bool)

(assert (=> b!2833498 m!3263201))

(declare-fun m!3263203 () Bool)

(assert (=> b!2833494 m!3263203))

(declare-fun m!3263205 () Bool)

(assert (=> b!2833499 m!3263205))

(declare-fun m!3263207 () Bool)

(assert (=> b!2833499 m!3263207))

(declare-fun m!3263209 () Bool)

(assert (=> b!2833502 m!3263209))

(declare-fun m!3263211 () Bool)

(assert (=> b!2833500 m!3263211))

(declare-fun m!3263213 () Bool)

(assert (=> b!2833500 m!3263213))

(declare-fun m!3263215 () Bool)

(assert (=> b!2833501 m!3263215))

(declare-fun m!3263217 () Bool)

(assert (=> b!2833495 m!3263217))

(declare-fun m!3263219 () Bool)

(assert (=> b!2833497 m!3263219))

(declare-fun m!3263221 () Bool)

(assert (=> b!2833493 m!3263221))

(push 1)

(assert (not b!2833505))

(assert (not b!2833494))

(assert b_and!207357)

(assert (not b!2833493))

(assert (not b!2833495))

(assert (not b_next!82299))

(assert b_and!207359)

(assert (not b!2833500))

(assert (not b!2833501))

(assert (not b!2833498))

(assert (not b_next!82293))

(assert (not b!2833499))

(assert (not b!2833497))

(assert (not b_next!82297))

(assert (not b!2833502))

(assert (not b_next!82295))

(assert b_and!207361)

(assert b_and!207355)

(check-sat)

(pop 1)

(push 1)

(assert b_and!207357)

(assert (not b_next!82293))

(assert (not b_next!82299))

(assert (not b_next!82297))

(assert b_and!207359)

(assert (not b_next!82295))

(assert b_and!207361)

(assert b_and!207355)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!822130 () Bool)

(declare-fun res!1179454 () Bool)

(declare-fun e!1794198 () Bool)

(assert (=> d!822130 (=> (not res!1179454) (not e!1794198))))

(declare-fun isEmpty!18436 (List!33559) Bool)

(assert (=> d!822130 (= res!1179454 (not (isEmpty!18436 (originalCharacters!5747 (h!38857 l!4019)))))))

(assert (=> d!822130 (= (inv!45398 (h!38857 l!4019)) e!1794198)))

(declare-fun b!2833549 () Bool)

(declare-fun res!1179455 () Bool)

(assert (=> b!2833549 (=> (not res!1179455) (not e!1794198))))

(declare-fun list!12494 (BalanceConc!20408) List!33559)

(declare-fun dynLambda!14046 (Int TokenValue!5245) BalanceConc!20408)

(assert (=> b!2833549 (= res!1179455 (= (originalCharacters!5747 (h!38857 l!4019)) (list!12494 (dynLambda!14046 (toChars!6908 (transformation!5015 (rule!7443 (h!38857 l!4019)))) (value!161298 (h!38857 l!4019))))))))

(declare-fun b!2833550 () Bool)

(declare-fun size!26018 (List!33559) Int)

(assert (=> b!2833550 (= e!1794198 (= (size!26016 (h!38857 l!4019)) (size!26018 (originalCharacters!5747 (h!38857 l!4019)))))))

(assert (= (and d!822130 res!1179454) b!2833549))

(assert (= (and b!2833549 res!1179455) b!2833550))

(declare-fun b_lambda!85127 () Bool)

(assert (=> (not b_lambda!85127) (not b!2833549)))

(declare-fun t!231665 () Bool)

(declare-fun tb!154325 () Bool)

(assert (=> (and b!2833503 (= (toChars!6908 (transformation!5015 (h!38858 rules!1047))) (toChars!6908 (transformation!5015 (rule!7443 (h!38857 l!4019))))) t!231665) tb!154325))

(declare-fun b!2833555 () Bool)

(declare-fun e!1794201 () Bool)

(declare-fun tp!905923 () Bool)

(declare-fun inv!45401 (Conc!10385) Bool)

(assert (=> b!2833555 (= e!1794201 (and (inv!45401 (c!458060 (dynLambda!14046 (toChars!6908 (transformation!5015 (rule!7443 (h!38857 l!4019)))) (value!161298 (h!38857 l!4019))))) tp!905923))))

(declare-fun result!192422 () Bool)

(declare-fun inv!45402 (BalanceConc!20408) Bool)

(assert (=> tb!154325 (= result!192422 (and (inv!45402 (dynLambda!14046 (toChars!6908 (transformation!5015 (rule!7443 (h!38857 l!4019)))) (value!161298 (h!38857 l!4019)))) e!1794201))))

(assert (= tb!154325 b!2833555))

(declare-fun m!3263247 () Bool)

(assert (=> b!2833555 m!3263247))

(declare-fun m!3263249 () Bool)

(assert (=> tb!154325 m!3263249))

(assert (=> b!2833549 t!231665))

(declare-fun b_and!207371 () Bool)

(assert (= b_and!207357 (and (=> t!231665 result!192422) b_and!207371)))

(declare-fun t!231667 () Bool)

(declare-fun tb!154327 () Bool)

(assert (=> (and b!2833504 (= (toChars!6908 (transformation!5015 (rule!7443 (h!38857 l!4019)))) (toChars!6908 (transformation!5015 (rule!7443 (h!38857 l!4019))))) t!231667) tb!154327))

(declare-fun result!192426 () Bool)

(assert (= result!192426 result!192422))

(assert (=> b!2833549 t!231667))

(declare-fun b_and!207373 () Bool)

(assert (= b_and!207361 (and (=> t!231667 result!192426) b_and!207373)))

(declare-fun m!3263251 () Bool)

(assert (=> d!822130 m!3263251))

(declare-fun m!3263253 () Bool)

(assert (=> b!2833549 m!3263253))

(assert (=> b!2833549 m!3263253))

(declare-fun m!3263255 () Bool)

(assert (=> b!2833549 m!3263255))

(declare-fun m!3263257 () Bool)

(assert (=> b!2833550 m!3263257))

(assert (=> b!2833502 d!822130))

(declare-fun d!822134 () Bool)

(declare-fun lt!1010624 () Bool)

(declare-fun content!4635 (List!33561) (Set Token!9432))

(assert (=> d!822134 (= lt!1010624 (set.member (h!38857 l!4019) (content!4635 l!4019)))))

(declare-fun e!1794206 () Bool)

(assert (=> d!822134 (= lt!1010624 e!1794206)))

(declare-fun res!1179461 () Bool)

(assert (=> d!822134 (=> (not res!1179461) (not e!1794206))))

(assert (=> d!822134 (= res!1179461 (is-Cons!33437 l!4019))))

(assert (=> d!822134 (= (contains!6101 l!4019 (h!38857 l!4019)) lt!1010624)))

(declare-fun b!2833560 () Bool)

(declare-fun e!1794207 () Bool)

(assert (=> b!2833560 (= e!1794206 e!1794207)))

(declare-fun res!1179460 () Bool)

(assert (=> b!2833560 (=> res!1179460 e!1794207)))

(assert (=> b!2833560 (= res!1179460 (= (h!38857 l!4019) (h!38857 l!4019)))))

(declare-fun b!2833561 () Bool)

(assert (=> b!2833561 (= e!1794207 (contains!6101 (t!231658 l!4019) (h!38857 l!4019)))))

(assert (= (and d!822134 res!1179461) b!2833560))

(assert (= (and b!2833560 (not res!1179460)) b!2833561))

(declare-fun m!3263259 () Bool)

(assert (=> d!822134 m!3263259))

(declare-fun m!3263261 () Bool)

(assert (=> d!822134 m!3263261))

(declare-fun m!3263263 () Bool)

(assert (=> b!2833561 m!3263263))

(assert (=> b!2833497 d!822134))

(declare-fun d!822136 () Bool)

(assert (=> d!822136 (= (isEmpty!18434 rules!1047) (is-Nil!33438 rules!1047))))

(assert (=> b!2833495 d!822136))

(declare-fun d!822138 () Bool)

(declare-fun c!458071 () Bool)

(assert (=> d!822138 (= c!458071 (is-IntegerValue!15735 (value!161298 (h!38857 l!4019))))))

(declare-fun e!1794215 () Bool)

(assert (=> d!822138 (= (inv!21 (value!161298 (h!38857 l!4019))) e!1794215)))

(declare-fun b!2833572 () Bool)

(declare-fun res!1179464 () Bool)

(declare-fun e!1794214 () Bool)

(assert (=> b!2833572 (=> res!1179464 e!1794214)))

(assert (=> b!2833572 (= res!1179464 (not (is-IntegerValue!15737 (value!161298 (h!38857 l!4019)))))))

(declare-fun e!1794216 () Bool)

(assert (=> b!2833572 (= e!1794216 e!1794214)))

(declare-fun b!2833573 () Bool)

(declare-fun inv!15 (TokenValue!5245) Bool)

(assert (=> b!2833573 (= e!1794214 (inv!15 (value!161298 (h!38857 l!4019))))))

(declare-fun b!2833574 () Bool)

(declare-fun inv!17 (TokenValue!5245) Bool)

(assert (=> b!2833574 (= e!1794216 (inv!17 (value!161298 (h!38857 l!4019))))))

(declare-fun b!2833575 () Bool)

(declare-fun inv!16 (TokenValue!5245) Bool)

(assert (=> b!2833575 (= e!1794215 (inv!16 (value!161298 (h!38857 l!4019))))))

(declare-fun b!2833576 () Bool)

(assert (=> b!2833576 (= e!1794215 e!1794216)))

(declare-fun c!458070 () Bool)

(assert (=> b!2833576 (= c!458070 (is-IntegerValue!15736 (value!161298 (h!38857 l!4019))))))

(assert (= (and d!822138 c!458071) b!2833575))

(assert (= (and d!822138 (not c!458071)) b!2833576))

(assert (= (and b!2833576 c!458070) b!2833574))

(assert (= (and b!2833576 (not c!458070)) b!2833572))

(assert (= (and b!2833572 (not res!1179464)) b!2833573))

(declare-fun m!3263265 () Bool)

(assert (=> b!2833573 m!3263265))

(declare-fun m!3263267 () Bool)

(assert (=> b!2833574 m!3263267))

(declare-fun m!3263269 () Bool)

(assert (=> b!2833575 m!3263269))

(assert (=> b!2833501 d!822138))

(declare-fun d!822140 () Bool)

(declare-fun res!1179467 () Bool)

(declare-fun e!1794219 () Bool)

(assert (=> d!822140 (=> (not res!1179467) (not e!1794219))))

(declare-fun rulesValid!1855 (LexerInterface!4605 List!33562) Bool)

(assert (=> d!822140 (= res!1179467 (rulesValid!1855 thiss!11007 rules!1047))))

(assert (=> d!822140 (= (rulesInvariant!4021 thiss!11007 rules!1047) e!1794219)))

(declare-fun b!2833579 () Bool)

(declare-datatypes ((List!33567 0))(
  ( (Nil!33443) (Cons!33443 (h!38863 String!36749) (t!231684 List!33567)) )
))
(declare-fun noDuplicateTag!1851 (LexerInterface!4605 List!33562 List!33567) Bool)

(assert (=> b!2833579 (= e!1794219 (noDuplicateTag!1851 thiss!11007 rules!1047 Nil!33443))))

(assert (= (and d!822140 res!1179467) b!2833579))

(declare-fun m!3263271 () Bool)

(assert (=> d!822140 m!3263271))

(declare-fun m!3263273 () Bool)

(assert (=> b!2833579 m!3263273))

(assert (=> b!2833494 d!822140))

(declare-fun d!822142 () Bool)

(assert (=> d!822142 (= (inv!45394 (tag!5519 (rule!7443 (h!38857 l!4019)))) (= (mod (str.len (value!161297 (tag!5519 (rule!7443 (h!38857 l!4019))))) 2) 0))))

(assert (=> b!2833499 d!822142))

(declare-fun d!822144 () Bool)

(declare-fun res!1179470 () Bool)

(declare-fun e!1794222 () Bool)

(assert (=> d!822144 (=> (not res!1179470) (not e!1794222))))

(declare-fun semiInverseModEq!2085 (Int Int) Bool)

(assert (=> d!822144 (= res!1179470 (semiInverseModEq!2085 (toChars!6908 (transformation!5015 (rule!7443 (h!38857 l!4019)))) (toValue!7049 (transformation!5015 (rule!7443 (h!38857 l!4019))))))))

(assert (=> d!822144 (= (inv!45397 (transformation!5015 (rule!7443 (h!38857 l!4019)))) e!1794222)))

(declare-fun b!2833582 () Bool)

(declare-fun equivClasses!1984 (Int Int) Bool)

(assert (=> b!2833582 (= e!1794222 (equivClasses!1984 (toChars!6908 (transformation!5015 (rule!7443 (h!38857 l!4019)))) (toValue!7049 (transformation!5015 (rule!7443 (h!38857 l!4019))))))))

(assert (= (and d!822144 res!1179470) b!2833582))

(declare-fun m!3263275 () Bool)

(assert (=> d!822144 m!3263275))

(declare-fun m!3263277 () Bool)

(assert (=> b!2833582 m!3263277))

(assert (=> b!2833499 d!822144))

(declare-fun d!822146 () Bool)

(assert (=> d!822146 (= (inv!45394 (tag!5519 (h!38858 rules!1047))) (= (mod (str.len (value!161297 (tag!5519 (h!38858 rules!1047)))) 2) 0))))

(assert (=> b!2833500 d!822146))

(declare-fun d!822148 () Bool)

(declare-fun res!1179471 () Bool)

(declare-fun e!1794223 () Bool)

(assert (=> d!822148 (=> (not res!1179471) (not e!1794223))))

(assert (=> d!822148 (= res!1179471 (semiInverseModEq!2085 (toChars!6908 (transformation!5015 (h!38858 rules!1047))) (toValue!7049 (transformation!5015 (h!38858 rules!1047)))))))

(assert (=> d!822148 (= (inv!45397 (transformation!5015 (h!38858 rules!1047))) e!1794223)))

(declare-fun b!2833583 () Bool)

(assert (=> b!2833583 (= e!1794223 (equivClasses!1984 (toChars!6908 (transformation!5015 (h!38858 rules!1047))) (toValue!7049 (transformation!5015 (h!38858 rules!1047)))))))

(assert (= (and d!822148 res!1179471) b!2833583))

(declare-fun m!3263279 () Bool)

(assert (=> d!822148 m!3263279))

(declare-fun m!3263281 () Bool)

(assert (=> b!2833583 m!3263281))

(assert (=> b!2833500 d!822148))

(declare-fun b!2833601 () Bool)

(declare-fun e!1794239 () Bool)

(assert (=> b!2833601 (= e!1794239 true)))

(declare-fun b!2833600 () Bool)

(declare-fun e!1794238 () Bool)

(assert (=> b!2833600 (= e!1794238 e!1794239)))

(declare-fun b!2833599 () Bool)

(declare-fun e!1794237 () Bool)

(assert (=> b!2833599 (= e!1794237 e!1794238)))

(declare-fun d!822150 () Bool)

(assert (=> d!822150 e!1794237))

(assert (= b!2833600 b!2833601))

(assert (= b!2833599 b!2833600))

(assert (= (and d!822150 (is-Cons!33438 rules!1047)) b!2833599))

(declare-fun lambda!104046 () Int)

(declare-fun order!17829 () Int)

(declare-fun order!17831 () Int)

(declare-fun dynLambda!14047 (Int Int) Int)

(declare-fun dynLambda!14048 (Int Int) Int)

(assert (=> b!2833601 (< (dynLambda!14047 order!17829 (toValue!7049 (transformation!5015 (h!38858 rules!1047)))) (dynLambda!14048 order!17831 lambda!104046))))

(declare-fun order!17833 () Int)

(declare-fun dynLambda!14049 (Int Int) Int)

(assert (=> b!2833601 (< (dynLambda!14049 order!17833 (toChars!6908 (transformation!5015 (h!38858 rules!1047)))) (dynLambda!14048 order!17831 lambda!104046))))

(assert (=> d!822150 true))

(declare-fun e!1794230 () Bool)

(assert (=> d!822150 e!1794230))

(declare-fun res!1179478 () Bool)

(assert (=> d!822150 (=> (not res!1179478) (not e!1794230))))

(declare-fun lt!1010629 () Bool)

(declare-fun forall!6873 (List!33561 Int) Bool)

(declare-fun list!12495 (BalanceConc!20410) List!33561)

(assert (=> d!822150 (= res!1179478 (= lt!1010629 (forall!6873 (list!12495 (seqFromList!3261 l!4019)) lambda!104046)))))

(declare-fun forall!6874 (BalanceConc!20410 Int) Bool)

(assert (=> d!822150 (= lt!1010629 (forall!6874 (seqFromList!3261 l!4019) lambda!104046))))

(assert (=> d!822150 (not (isEmpty!18434 rules!1047))))

(assert (=> d!822150 (= (rulesProduceEachTokenIndividually!1121 thiss!11007 rules!1047 (seqFromList!3261 l!4019)) lt!1010629)))

(declare-fun b!2833590 () Bool)

(assert (=> b!2833590 (= e!1794230 (= lt!1010629 (rulesProduceEachTokenIndividuallyList!1648 thiss!11007 rules!1047 (list!12495 (seqFromList!3261 l!4019)))))))

(assert (= (and d!822150 res!1179478) b!2833590))

(assert (=> d!822150 m!3263199))

(declare-fun m!3263283 () Bool)

(assert (=> d!822150 m!3263283))

(assert (=> d!822150 m!3263283))

(declare-fun m!3263285 () Bool)

(assert (=> d!822150 m!3263285))

(assert (=> d!822150 m!3263199))

(declare-fun m!3263287 () Bool)

(assert (=> d!822150 m!3263287))

(assert (=> d!822150 m!3263217))

(assert (=> b!2833590 m!3263199))

(assert (=> b!2833590 m!3263283))

(assert (=> b!2833590 m!3263283))

(declare-fun m!3263289 () Bool)

(assert (=> b!2833590 m!3263289))

(assert (=> b!2833498 d!822150))

(declare-fun d!822152 () Bool)

(declare-fun fromListB!1476 (List!33561) BalanceConc!20410)

(assert (=> d!822152 (= (seqFromList!3261 l!4019) (fromListB!1476 l!4019))))

(declare-fun bs!518504 () Bool)

(assert (= bs!518504 d!822152))

(declare-fun m!3263291 () Bool)

(assert (=> bs!518504 m!3263291))

(assert (=> b!2833498 d!822152))

(declare-fun bs!518505 () Bool)

(declare-fun d!822154 () Bool)

(assert (= bs!518505 (and d!822154 d!822150)))

(declare-fun lambda!104049 () Int)

(assert (=> bs!518505 (= lambda!104049 lambda!104046)))

(declare-fun b!2833612 () Bool)

(declare-fun e!1794248 () Bool)

(assert (=> b!2833612 (= e!1794248 true)))

(declare-fun b!2833611 () Bool)

(declare-fun e!1794247 () Bool)

(assert (=> b!2833611 (= e!1794247 e!1794248)))

(declare-fun b!2833610 () Bool)

(declare-fun e!1794246 () Bool)

(assert (=> b!2833610 (= e!1794246 e!1794247)))

(assert (=> d!822154 e!1794246))

(assert (= b!2833611 b!2833612))

(assert (= b!2833610 b!2833611))

(assert (= (and d!822154 (is-Cons!33438 rules!1047)) b!2833610))

(assert (=> b!2833612 (< (dynLambda!14047 order!17829 (toValue!7049 (transformation!5015 (h!38858 rules!1047)))) (dynLambda!14048 order!17831 lambda!104049))))

(assert (=> b!2833612 (< (dynLambda!14049 order!17833 (toChars!6908 (transformation!5015 (h!38858 rules!1047)))) (dynLambda!14048 order!17831 lambda!104049))))

(assert (=> d!822154 true))

(declare-fun lt!1010632 () Bool)

(assert (=> d!822154 (= lt!1010632 (forall!6873 l!4019 lambda!104049))))

(declare-fun e!1794245 () Bool)

(assert (=> d!822154 (= lt!1010632 e!1794245)))

(declare-fun res!1179483 () Bool)

(assert (=> d!822154 (=> res!1179483 e!1794245)))

(assert (=> d!822154 (= res!1179483 (not (is-Cons!33437 l!4019)))))

(assert (=> d!822154 (not (isEmpty!18434 rules!1047))))

(assert (=> d!822154 (= (rulesProduceEachTokenIndividuallyList!1648 thiss!11007 rules!1047 l!4019) lt!1010632)))

(declare-fun b!2833608 () Bool)

(declare-fun e!1794244 () Bool)

(assert (=> b!2833608 (= e!1794245 e!1794244)))

(declare-fun res!1179484 () Bool)

(assert (=> b!2833608 (=> (not res!1179484) (not e!1794244))))

(declare-fun rulesProduceIndividualToken!2135 (LexerInterface!4605 List!33562 Token!9432) Bool)

(assert (=> b!2833608 (= res!1179484 (rulesProduceIndividualToken!2135 thiss!11007 rules!1047 (h!38857 l!4019)))))

(declare-fun b!2833609 () Bool)

(assert (=> b!2833609 (= e!1794244 (rulesProduceEachTokenIndividuallyList!1648 thiss!11007 rules!1047 (t!231658 l!4019)))))

(assert (= (and d!822154 (not res!1179483)) b!2833608))

(assert (= (and b!2833608 res!1179484) b!2833609))

(declare-fun m!3263293 () Bool)

(assert (=> d!822154 m!3263293))

(assert (=> d!822154 m!3263217))

(declare-fun m!3263295 () Bool)

(assert (=> b!2833608 m!3263295))

(declare-fun m!3263297 () Bool)

(assert (=> b!2833609 m!3263297))

(assert (=> b!2833493 d!822154))

(declare-fun b!2833626 () Bool)

(declare-fun b_free!81605 () Bool)

(declare-fun b_next!82309 () Bool)

(assert (=> b!2833626 (= b_free!81605 (not b_next!82309))))

(declare-fun tp!905937 () Bool)

(declare-fun b_and!207375 () Bool)

(assert (=> b!2833626 (= tp!905937 b_and!207375)))

(declare-fun b_free!81607 () Bool)

(declare-fun b_next!82311 () Bool)

(assert (=> b!2833626 (= b_free!81607 (not b_next!82311))))

(declare-fun t!231677 () Bool)

(declare-fun tb!154329 () Bool)

(assert (=> (and b!2833626 (= (toChars!6908 (transformation!5015 (rule!7443 (h!38857 (t!231658 l!4019))))) (toChars!6908 (transformation!5015 (rule!7443 (h!38857 l!4019))))) t!231677) tb!154329))

(declare-fun result!192430 () Bool)

(assert (= result!192430 result!192422))

(assert (=> b!2833549 t!231677))

(declare-fun b_and!207377 () Bool)

(declare-fun tp!905938 () Bool)

(assert (=> b!2833626 (= tp!905938 (and (=> t!231677 result!192430) b_and!207377))))

(declare-fun b!2833625 () Bool)

(declare-fun tp!905934 () Bool)

(declare-fun e!1794265 () Bool)

(declare-fun e!1794263 () Bool)

(assert (=> b!2833625 (= e!1794263 (and tp!905934 (inv!45394 (tag!5519 (rule!7443 (h!38857 (t!231658 l!4019))))) (inv!45397 (transformation!5015 (rule!7443 (h!38857 (t!231658 l!4019))))) e!1794265))))

(declare-fun e!1794266 () Bool)

(assert (=> b!2833502 (= tp!905886 e!1794266)))

(declare-fun tp!905935 () Bool)

(declare-fun e!1794264 () Bool)

(declare-fun b!2833623 () Bool)

(assert (=> b!2833623 (= e!1794266 (and (inv!45398 (h!38857 (t!231658 l!4019))) e!1794264 tp!905935))))

(declare-fun b!2833624 () Bool)

(declare-fun tp!905936 () Bool)

(assert (=> b!2833624 (= e!1794264 (and (inv!21 (value!161298 (h!38857 (t!231658 l!4019)))) e!1794263 tp!905936))))

(assert (=> b!2833626 (= e!1794265 (and tp!905937 tp!905938))))

(assert (= b!2833625 b!2833626))

(assert (= b!2833624 b!2833625))

(assert (= b!2833623 b!2833624))

(assert (= (and b!2833502 (is-Cons!33437 (t!231658 l!4019))) b!2833623))

(declare-fun m!3263299 () Bool)

(assert (=> b!2833625 m!3263299))

(declare-fun m!3263301 () Bool)

(assert (=> b!2833625 m!3263301))

(declare-fun m!3263303 () Bool)

(assert (=> b!2833623 m!3263303))

(declare-fun m!3263305 () Bool)

(assert (=> b!2833624 m!3263305))

(declare-fun b!2833633 () Bool)

(declare-fun e!1794271 () Bool)

(declare-fun tp_is_empty!14581 () Bool)

(declare-fun tp!905941 () Bool)

(assert (=> b!2833633 (= e!1794271 (and tp_is_empty!14581 tp!905941))))

(assert (=> b!2833501 (= tp!905892 e!1794271)))

(assert (= (and b!2833501 (is-Cons!33435 (originalCharacters!5747 (h!38857 l!4019)))) b!2833633))

(declare-fun b!2833651 () Bool)

(declare-fun e!1794276 () Bool)

(declare-fun tp!905955 () Bool)

(declare-fun tp!905952 () Bool)

(assert (=> b!2833651 (= e!1794276 (and tp!905955 tp!905952))))

(declare-fun b!2833648 () Bool)

(assert (=> b!2833648 (= e!1794276 tp_is_empty!14581)))

(declare-fun b!2833649 () Bool)

(declare-fun tp!905953 () Bool)

(declare-fun tp!905954 () Bool)

(assert (=> b!2833649 (= e!1794276 (and tp!905953 tp!905954))))

(declare-fun b!2833650 () Bool)

(declare-fun tp!905956 () Bool)

(assert (=> b!2833650 (= e!1794276 tp!905956)))

(assert (=> b!2833499 (= tp!905885 e!1794276)))

(assert (= (and b!2833499 (is-ElementMatch!8406 (regex!5015 (rule!7443 (h!38857 l!4019))))) b!2833648))

(assert (= (and b!2833499 (is-Concat!13651 (regex!5015 (rule!7443 (h!38857 l!4019))))) b!2833649))

(assert (= (and b!2833499 (is-Star!8406 (regex!5015 (rule!7443 (h!38857 l!4019))))) b!2833650))

(assert (= (and b!2833499 (is-Union!8406 (regex!5015 (rule!7443 (h!38857 l!4019))))) b!2833651))

(declare-fun b!2833657 () Bool)

(declare-fun e!1794279 () Bool)

(declare-fun tp!905960 () Bool)

(declare-fun tp!905957 () Bool)

(assert (=> b!2833657 (= e!1794279 (and tp!905960 tp!905957))))

(declare-fun b!2833654 () Bool)

(assert (=> b!2833654 (= e!1794279 tp_is_empty!14581)))

(declare-fun b!2833655 () Bool)

(declare-fun tp!905958 () Bool)

(declare-fun tp!905959 () Bool)

(assert (=> b!2833655 (= e!1794279 (and tp!905958 tp!905959))))

(declare-fun b!2833656 () Bool)

(declare-fun tp!905961 () Bool)

(assert (=> b!2833656 (= e!1794279 tp!905961)))

(assert (=> b!2833500 (= tp!905891 e!1794279)))

(assert (= (and b!2833500 (is-ElementMatch!8406 (regex!5015 (h!38858 rules!1047)))) b!2833654))

(assert (= (and b!2833500 (is-Concat!13651 (regex!5015 (h!38858 rules!1047)))) b!2833655))

(assert (= (and b!2833500 (is-Star!8406 (regex!5015 (h!38858 rules!1047)))) b!2833656))

(assert (= (and b!2833500 (is-Union!8406 (regex!5015 (h!38858 rules!1047)))) b!2833657))

(declare-fun b!2833675 () Bool)

(declare-fun b_free!81609 () Bool)

(declare-fun b_next!82313 () Bool)

(assert (=> b!2833675 (= b_free!81609 (not b_next!82313))))

(declare-fun tp!905970 () Bool)

(declare-fun b_and!207379 () Bool)

(assert (=> b!2833675 (= tp!905970 b_and!207379)))

(declare-fun b_free!81611 () Bool)

(declare-fun b_next!82315 () Bool)

(assert (=> b!2833675 (= b_free!81611 (not b_next!82315))))

(declare-fun tb!154331 () Bool)

(declare-fun t!231679 () Bool)

(assert (=> (and b!2833675 (= (toChars!6908 (transformation!5015 (h!38858 (t!231659 rules!1047)))) (toChars!6908 (transformation!5015 (rule!7443 (h!38857 l!4019))))) t!231679) tb!154331))

(declare-fun result!192438 () Bool)

(assert (= result!192438 result!192422))

(assert (=> b!2833549 t!231679))

(declare-fun tp!905972 () Bool)

(declare-fun b_and!207381 () Bool)

(assert (=> b!2833675 (= tp!905972 (and (=> t!231679 result!192438) b_and!207381))))

(declare-fun e!1794296 () Bool)

(assert (=> b!2833675 (= e!1794296 (and tp!905970 tp!905972))))

(declare-fun b!2833674 () Bool)

(declare-fun tp!905971 () Bool)

(declare-fun e!1794295 () Bool)

(assert (=> b!2833674 (= e!1794295 (and tp!905971 (inv!45394 (tag!5519 (h!38858 (t!231659 rules!1047)))) (inv!45397 (transformation!5015 (h!38858 (t!231659 rules!1047)))) e!1794296))))

(declare-fun b!2833673 () Bool)

(declare-fun e!1794293 () Bool)

(declare-fun tp!905973 () Bool)

(assert (=> b!2833673 (= e!1794293 (and e!1794295 tp!905973))))

(assert (=> b!2833505 (= tp!905889 e!1794293)))

(assert (= b!2833674 b!2833675))

(assert (= b!2833673 b!2833674))

(assert (= (and b!2833505 (is-Cons!33438 (t!231659 rules!1047))) b!2833673))

(declare-fun m!3263313 () Bool)

(assert (=> b!2833674 m!3263313))

(declare-fun m!3263315 () Bool)

(assert (=> b!2833674 m!3263315))

(declare-fun b_lambda!85129 () Bool)

(assert (= b_lambda!85127 (or (and b!2833503 b_free!81591 (= (toChars!6908 (transformation!5015 (h!38858 rules!1047))) (toChars!6908 (transformation!5015 (rule!7443 (h!38857 l!4019)))))) (and b!2833504 b_free!81595) (and b!2833626 b_free!81607 (= (toChars!6908 (transformation!5015 (rule!7443 (h!38857 (t!231658 l!4019))))) (toChars!6908 (transformation!5015 (rule!7443 (h!38857 l!4019)))))) (and b!2833675 b_free!81611 (= (toChars!6908 (transformation!5015 (h!38858 (t!231659 rules!1047)))) (toChars!6908 (transformation!5015 (rule!7443 (h!38857 l!4019)))))) b_lambda!85129)))

(push 1)

(assert tp_is_empty!14581)

(assert (not b!2833590))

(assert (not b!2833649))

(assert (not d!822152))

(assert (not b!2833655))

(assert (not tb!154325))

(assert (not b!2833575))

(assert (not b!2833609))

(assert b_and!207375)

(assert (not b_next!82295))

(assert (not b!2833610))

(assert (not b!2833633))

(assert (not d!822130))

(assert (not b!2833573))

(assert (not b_next!82309))

(assert (not d!822134))

(assert (not b_lambda!85129))

(assert (not b!2833623))

(assert (not b_next!82313))

(assert (not b!2833574))

(assert (not b!2833608))

(assert (not b!2833624))

(assert (not b!2833651))

(assert (not b_next!82293))

(assert (not b_next!82315))

(assert (not d!822150))

(assert (not b!2833549))

(assert (not b!2833582))

(assert (not b!2833625))

(assert (not d!822144))

(assert (not b_next!82299))

(assert (not b_next!82311))

(assert (not b!2833650))

(assert (not d!822140))

(assert (not d!822154))

(assert b_and!207371)

(assert (not b!2833555))

(assert (not b!2833656))

(assert b_and!207373)

(assert (not b!2833583))

(assert (not b!2833657))

(assert (not b_next!82297))

(assert b_and!207381)

(assert (not b!2833599))

(assert b_and!207377)

(assert (not b!2833673))

(assert b_and!207359)

(assert (not b!2833550))

(assert (not d!822148))

(assert (not b!2833561))

(assert b_and!207355)

(assert (not b!2833579))

(assert (not b!2833674))

(assert b_and!207379)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!82309))

(assert (not b_next!82313))

(assert b_and!207375)

(assert (not b_next!82295))

(assert b_and!207355)

(assert b_and!207379)

(assert (not b_next!82293))

(assert (not b_next!82315))

(assert (not b_next!82299))

(assert (not b_next!82311))

(assert b_and!207371)

(assert b_and!207373)

(assert (not b_next!82297))

(assert b_and!207381)

(assert b_and!207377)

(assert b_and!207359)

(check-sat)

(pop 1)

