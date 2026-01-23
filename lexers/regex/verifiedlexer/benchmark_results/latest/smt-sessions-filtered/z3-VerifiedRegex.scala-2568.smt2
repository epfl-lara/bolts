; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137586 () Bool)

(assert start!137586)

(declare-fun b!1469649 () Bool)

(declare-fun b_free!37023 () Bool)

(declare-fun b_next!37727 () Bool)

(assert (=> b!1469649 (= b_free!37023 (not b_next!37727))))

(declare-fun tp!414354 () Bool)

(declare-fun b_and!100625 () Bool)

(assert (=> b!1469649 (= tp!414354 b_and!100625)))

(declare-fun b_free!37025 () Bool)

(declare-fun b_next!37729 () Bool)

(assert (=> b!1469649 (= b_free!37025 (not b_next!37729))))

(declare-fun tp!414360 () Bool)

(declare-fun b_and!100627 () Bool)

(assert (=> b!1469649 (= tp!414360 b_and!100627)))

(declare-fun b!1469648 () Bool)

(declare-fun b_free!37027 () Bool)

(declare-fun b_next!37731 () Bool)

(assert (=> b!1469648 (= b_free!37027 (not b_next!37731))))

(declare-fun tp!414363 () Bool)

(declare-fun b_and!100629 () Bool)

(assert (=> b!1469648 (= tp!414363 b_and!100629)))

(declare-fun b_free!37029 () Bool)

(declare-fun b_next!37733 () Bool)

(assert (=> b!1469648 (= b_free!37029 (not b_next!37733))))

(declare-fun tp!414355 () Bool)

(declare-fun b_and!100631 () Bool)

(assert (=> b!1469648 (= tp!414355 b_and!100631)))

(declare-fun b!1469640 () Bool)

(declare-fun b_free!37031 () Bool)

(declare-fun b_next!37735 () Bool)

(assert (=> b!1469640 (= b_free!37031 (not b_next!37735))))

(declare-fun tp!414359 () Bool)

(declare-fun b_and!100633 () Bool)

(assert (=> b!1469640 (= tp!414359 b_and!100633)))

(declare-fun b_free!37033 () Bool)

(declare-fun b_next!37737 () Bool)

(assert (=> b!1469640 (= b_free!37033 (not b_next!37737))))

(declare-fun tp!414362 () Bool)

(declare-fun b_and!100635 () Bool)

(assert (=> b!1469640 (= tp!414362 b_and!100635)))

(declare-fun e!938316 () Bool)

(declare-fun e!938314 () Bool)

(declare-fun tp!414358 () Bool)

(declare-datatypes ((List!15459 0))(
  ( (Nil!15393) (Cons!15393 (h!20794 (_ BitVec 16)) (t!135394 List!15459)) )
))
(declare-datatypes ((TokenValue!2825 0))(
  ( (FloatLiteralValue!5650 (text!20220 List!15459)) (TokenValueExt!2824 (__x!9440 Int)) (Broken!14125 (value!87569 List!15459)) (Object!2890) (End!2825) (Def!2825) (Underscore!2825) (Match!2825) (Else!2825) (Error!2825) (Case!2825) (If!2825) (Extends!2825) (Abstract!2825) (Class!2825) (Val!2825) (DelimiterValue!5650 (del!2885 List!15459)) (KeywordValue!2831 (value!87570 List!15459)) (CommentValue!5650 (value!87571 List!15459)) (WhitespaceValue!5650 (value!87572 List!15459)) (IndentationValue!2825 (value!87573 List!15459)) (String!18380) (Int32!2825) (Broken!14126 (value!87574 List!15459)) (Boolean!2826) (Unit!25096) (OperatorValue!2828 (op!2885 List!15459)) (IdentifierValue!5650 (value!87575 List!15459)) (IdentifierValue!5651 (value!87576 List!15459)) (WhitespaceValue!5651 (value!87577 List!15459)) (True!5650) (False!5650) (Broken!14127 (value!87578 List!15459)) (Broken!14128 (value!87579 List!15459)) (True!5651) (RightBrace!2825) (RightBracket!2825) (Colon!2825) (Null!2825) (Comma!2825) (LeftBracket!2825) (False!5651) (LeftBrace!2825) (ImaginaryLiteralValue!2825 (text!20221 List!15459)) (StringLiteralValue!8475 (value!87580 List!15459)) (EOFValue!2825 (value!87581 List!15459)) (IdentValue!2825 (value!87582 List!15459)) (DelimiterValue!5651 (value!87583 List!15459)) (DedentValue!2825 (value!87584 List!15459)) (NewLineValue!2825 (value!87585 List!15459)) (IntegerValue!8475 (value!87586 (_ BitVec 32)) (text!20222 List!15459)) (IntegerValue!8476 (value!87587 Int) (text!20223 List!15459)) (Times!2825) (Or!2825) (Equal!2825) (Minus!2825) (Broken!14129 (value!87588 List!15459)) (And!2825) (Div!2825) (LessEqual!2825) (Mod!2825) (Concat!6874) (Not!2825) (Plus!2825) (SpaceValue!2825 (value!87589 List!15459)) (IntegerValue!8477 (value!87590 Int) (text!20224 List!15459)) (StringLiteralValue!8476 (text!20225 List!15459)) (FloatLiteralValue!5651 (text!20226 List!15459)) (BytesLiteralValue!2825 (value!87591 List!15459)) (CommentValue!5651 (value!87592 List!15459)) (StringLiteralValue!8477 (value!87593 List!15459)) (ErrorTokenValue!2825 (msg!2886 List!15459)) )
))
(declare-datatypes ((C!8276 0))(
  ( (C!8277 (val!4708 Int)) )
))
(declare-datatypes ((Regex!4049 0))(
  ( (ElementMatch!4049 (c!242179 C!8276)) (Concat!6875 (regOne!8610 Regex!4049) (regTwo!8610 Regex!4049)) (EmptyExpr!4049) (Star!4049 (reg!4378 Regex!4049)) (EmptyLang!4049) (Union!4049 (regOne!8611 Regex!4049) (regTwo!8611 Regex!4049)) )
))
(declare-datatypes ((String!18381 0))(
  ( (String!18382 (value!87594 String)) )
))
(declare-datatypes ((List!15460 0))(
  ( (Nil!15394) (Cons!15394 (h!20795 C!8276) (t!135395 List!15460)) )
))
(declare-datatypes ((IArray!10509 0))(
  ( (IArray!10510 (innerList!5312 List!15460)) )
))
(declare-datatypes ((Conc!5252 0))(
  ( (Node!5252 (left!13034 Conc!5252) (right!13364 Conc!5252) (csize!10734 Int) (cheight!5463 Int)) (Leaf!7821 (xs!8007 IArray!10509) (csize!10735 Int)) (Empty!5252) )
))
(declare-datatypes ((BalanceConc!10444 0))(
  ( (BalanceConc!10445 (c!242180 Conc!5252)) )
))
(declare-datatypes ((TokenValueInjection!5310 0))(
  ( (TokenValueInjection!5311 (toValue!4054 Int) (toChars!3913 Int)) )
))
(declare-datatypes ((Rule!5270 0))(
  ( (Rule!5271 (regex!2735 Regex!4049) (tag!2999 String!18381) (isSeparator!2735 Bool) (transformation!2735 TokenValueInjection!5310)) )
))
(declare-datatypes ((Token!5132 0))(
  ( (Token!5133 (value!87595 TokenValue!2825) (rule!4512 Rule!5270) (size!12518 Int) (originalCharacters!3597 List!15460)) )
))
(declare-datatypes ((List!15461 0))(
  ( (Nil!15395) (Cons!15395 (h!20796 Token!5132) (t!135396 List!15461)) )
))
(declare-fun l2!3105 () List!15461)

(declare-fun b!1469636 () Bool)

(declare-fun inv!20588 (String!18381) Bool)

(declare-fun inv!20591 (TokenValueInjection!5310) Bool)

(assert (=> b!1469636 (= e!938316 (and tp!414358 (inv!20588 (tag!2999 (rule!4512 (h!20796 l2!3105)))) (inv!20591 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) e!938314))))

(declare-fun e!938312 () Bool)

(declare-fun l1!3136 () List!15461)

(declare-fun tp!414353 () Bool)

(declare-fun e!938318 () Bool)

(declare-fun b!1469637 () Bool)

(declare-fun inv!20592 (Token!5132) Bool)

(assert (=> b!1469637 (= e!938312 (and (inv!20592 (h!20796 l1!3136)) e!938318 tp!414353))))

(declare-datatypes ((List!15462 0))(
  ( (Nil!15396) (Cons!15396 (h!20797 Rule!5270) (t!135397 List!15462)) )
))
(declare-fun rules!4290 () List!15462)

(declare-fun b!1469638 () Bool)

(declare-fun e!938320 () Bool)

(declare-datatypes ((LexerInterface!2391 0))(
  ( (LexerInterfaceExt!2388 (__x!9441 Int)) (Lexer!2389) )
))
(declare-fun thiss!27374 () LexerInterface!2391)

(declare-datatypes ((IArray!10511 0))(
  ( (IArray!10512 (innerList!5313 List!15461)) )
))
(declare-datatypes ((Conc!5253 0))(
  ( (Node!5253 (left!13035 Conc!5253) (right!13365 Conc!5253) (csize!10736 Int) (cheight!5464 Int)) (Leaf!7822 (xs!8008 IArray!10511) (csize!10737 Int)) (Empty!5253) )
))
(declare-datatypes ((BalanceConc!10446 0))(
  ( (BalanceConc!10447 (c!242181 Conc!5253)) )
))
(declare-fun rulesProduceEachTokenIndividually!892 (LexerInterface!2391 List!15462 BalanceConc!10446) Bool)

(declare-fun seqFromList!1722 (List!15461) BalanceConc!10446)

(assert (=> b!1469638 (= e!938320 (not (rulesProduceEachTokenIndividually!892 thiss!27374 rules!4290 (seqFromList!1722 l1!3136))))))

(declare-fun e!938311 () Bool)

(declare-fun tp!414361 () Bool)

(declare-fun b!1469639 () Bool)

(declare-fun inv!21 (TokenValue!2825) Bool)

(assert (=> b!1469639 (= e!938318 (and (inv!21 (value!87595 (h!20796 l1!3136))) e!938311 tp!414361))))

(declare-fun e!938309 () Bool)

(assert (=> b!1469640 (= e!938309 (and tp!414359 tp!414362))))

(declare-fun b!1469641 () Bool)

(declare-fun e!938319 () Bool)

(declare-fun e!938321 () Bool)

(declare-fun tp!414365 () Bool)

(assert (=> b!1469641 (= e!938319 (and e!938321 tp!414365))))

(declare-fun b!1469642 () Bool)

(declare-fun res!664621 () Bool)

(assert (=> b!1469642 (=> (not res!664621) (not e!938320))))

(declare-fun rulesInvariant!2180 (LexerInterface!2391 List!15462) Bool)

(assert (=> b!1469642 (= res!664621 (rulesInvariant!2180 thiss!27374 rules!4290))))

(declare-fun b!1469643 () Bool)

(declare-fun res!664618 () Bool)

(assert (=> b!1469643 (=> (not res!664618) (not e!938320))))

(declare-fun rulesProduceEachTokenIndividuallyList!758 (LexerInterface!2391 List!15462 List!15461) Bool)

(assert (=> b!1469643 (= res!664618 (rulesProduceEachTokenIndividuallyList!758 thiss!27374 rules!4290 l1!3136))))

(declare-fun e!938324 () Bool)

(declare-fun tp!414356 () Bool)

(declare-fun e!938323 () Bool)

(declare-fun b!1469644 () Bool)

(assert (=> b!1469644 (= e!938323 (and (inv!20592 (h!20796 l2!3105)) e!938324 tp!414356))))

(declare-fun b!1469645 () Bool)

(declare-fun res!664620 () Bool)

(assert (=> b!1469645 (=> (not res!664620) (not e!938320))))

(declare-fun isEmpty!9619 (List!15462) Bool)

(assert (=> b!1469645 (= res!664620 (not (isEmpty!9619 rules!4290)))))

(declare-fun res!664617 () Bool)

(assert (=> start!137586 (=> (not res!664617) (not e!938320))))

(get-info :version)

(assert (=> start!137586 (= res!664617 ((_ is Lexer!2389) thiss!27374))))

(assert (=> start!137586 e!938320))

(assert (=> start!137586 true))

(assert (=> start!137586 e!938319))

(assert (=> start!137586 e!938312))

(assert (=> start!137586 e!938323))

(declare-fun tp!414366 () Bool)

(declare-fun b!1469646 () Bool)

(assert (=> b!1469646 (= e!938324 (and (inv!21 (value!87595 (h!20796 l2!3105))) e!938316 tp!414366))))

(declare-fun b!1469647 () Bool)

(declare-fun res!664619 () Bool)

(assert (=> b!1469647 (=> (not res!664619) (not e!938320))))

(assert (=> b!1469647 (= res!664619 (rulesProduceEachTokenIndividuallyList!758 thiss!27374 rules!4290 l2!3105))))

(declare-fun e!938310 () Bool)

(assert (=> b!1469648 (= e!938310 (and tp!414363 tp!414355))))

(assert (=> b!1469649 (= e!938314 (and tp!414354 tp!414360))))

(declare-fun tp!414364 () Bool)

(declare-fun b!1469650 () Bool)

(assert (=> b!1469650 (= e!938321 (and tp!414364 (inv!20588 (tag!2999 (h!20797 rules!4290))) (inv!20591 (transformation!2735 (h!20797 rules!4290))) e!938310))))

(declare-fun tp!414357 () Bool)

(declare-fun b!1469651 () Bool)

(assert (=> b!1469651 (= e!938311 (and tp!414357 (inv!20588 (tag!2999 (rule!4512 (h!20796 l1!3136)))) (inv!20591 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) e!938309))))

(assert (= (and start!137586 res!664617) b!1469645))

(assert (= (and b!1469645 res!664620) b!1469642))

(assert (= (and b!1469642 res!664621) b!1469643))

(assert (= (and b!1469643 res!664618) b!1469647))

(assert (= (and b!1469647 res!664619) b!1469638))

(assert (= b!1469650 b!1469648))

(assert (= b!1469641 b!1469650))

(assert (= (and start!137586 ((_ is Cons!15396) rules!4290)) b!1469641))

(assert (= b!1469651 b!1469640))

(assert (= b!1469639 b!1469651))

(assert (= b!1469637 b!1469639))

(assert (= (and start!137586 ((_ is Cons!15395) l1!3136)) b!1469637))

(assert (= b!1469636 b!1469649))

(assert (= b!1469646 b!1469636))

(assert (= b!1469644 b!1469646))

(assert (= (and start!137586 ((_ is Cons!15395) l2!3105)) b!1469644))

(declare-fun m!1713949 () Bool)

(assert (=> b!1469643 m!1713949))

(declare-fun m!1713951 () Bool)

(assert (=> b!1469647 m!1713951))

(declare-fun m!1713953 () Bool)

(assert (=> b!1469650 m!1713953))

(declare-fun m!1713955 () Bool)

(assert (=> b!1469650 m!1713955))

(declare-fun m!1713957 () Bool)

(assert (=> b!1469645 m!1713957))

(declare-fun m!1713959 () Bool)

(assert (=> b!1469639 m!1713959))

(declare-fun m!1713961 () Bool)

(assert (=> b!1469646 m!1713961))

(declare-fun m!1713963 () Bool)

(assert (=> b!1469636 m!1713963))

(declare-fun m!1713965 () Bool)

(assert (=> b!1469636 m!1713965))

(declare-fun m!1713967 () Bool)

(assert (=> b!1469644 m!1713967))

(declare-fun m!1713969 () Bool)

(assert (=> b!1469651 m!1713969))

(declare-fun m!1713971 () Bool)

(assert (=> b!1469651 m!1713971))

(declare-fun m!1713973 () Bool)

(assert (=> b!1469637 m!1713973))

(declare-fun m!1713975 () Bool)

(assert (=> b!1469638 m!1713975))

(assert (=> b!1469638 m!1713975))

(declare-fun m!1713977 () Bool)

(assert (=> b!1469638 m!1713977))

(declare-fun m!1713979 () Bool)

(assert (=> b!1469642 m!1713979))

(check-sat (not b_next!37731) b_and!100625 (not b!1469645) b_and!100633 (not b!1469647) (not b!1469643) (not b!1469638) (not b_next!37735) b_and!100631 (not b!1469644) (not b!1469650) (not b!1469641) (not b_next!37737) (not b!1469646) b_and!100635 (not b_next!37727) (not b!1469642) (not b!1469639) b_and!100629 (not b!1469637) (not b!1469651) (not b_next!37733) b_and!100627 (not b!1469636) (not b_next!37729))
(check-sat (not b_next!37731) b_and!100625 (not b_next!37737) b_and!100633 b_and!100629 (not b_next!37733) (not b_next!37735) b_and!100631 b_and!100635 (not b_next!37727) b_and!100627 (not b_next!37729))
(get-model)

(declare-fun b!1469713 () Bool)

(declare-fun e!938372 () Bool)

(assert (=> b!1469713 (= e!938372 true)))

(declare-fun b!1469712 () Bool)

(declare-fun e!938371 () Bool)

(assert (=> b!1469712 (= e!938371 e!938372)))

(declare-fun b!1469711 () Bool)

(declare-fun e!938370 () Bool)

(assert (=> b!1469711 (= e!938370 e!938371)))

(declare-fun d!430985 () Bool)

(assert (=> d!430985 e!938370))

(assert (= b!1469712 b!1469713))

(assert (= b!1469711 b!1469712))

(assert (= (and d!430985 ((_ is Cons!15396) rules!4290)) b!1469711))

(declare-fun order!9239 () Int)

(declare-fun order!9237 () Int)

(declare-fun lambda!63424 () Int)

(declare-fun dynLambda!6983 (Int Int) Int)

(declare-fun dynLambda!6984 (Int Int) Int)

(assert (=> b!1469713 (< (dynLambda!6983 order!9237 (toValue!4054 (transformation!2735 (h!20797 rules!4290)))) (dynLambda!6984 order!9239 lambda!63424))))

(declare-fun order!9241 () Int)

(declare-fun dynLambda!6985 (Int Int) Int)

(assert (=> b!1469713 (< (dynLambda!6985 order!9241 (toChars!3913 (transformation!2735 (h!20797 rules!4290)))) (dynLambda!6984 order!9239 lambda!63424))))

(assert (=> d!430985 true))

(declare-fun e!938363 () Bool)

(assert (=> d!430985 e!938363))

(declare-fun res!664640 () Bool)

(assert (=> d!430985 (=> (not res!664640) (not e!938363))))

(declare-fun lt!511252 () Bool)

(declare-fun forall!3755 (List!15461 Int) Bool)

(declare-fun list!6153 (BalanceConc!10446) List!15461)

(assert (=> d!430985 (= res!664640 (= lt!511252 (forall!3755 (list!6153 (seqFromList!1722 l1!3136)) lambda!63424)))))

(declare-fun forall!3756 (BalanceConc!10446 Int) Bool)

(assert (=> d!430985 (= lt!511252 (forall!3756 (seqFromList!1722 l1!3136) lambda!63424))))

(assert (=> d!430985 (not (isEmpty!9619 rules!4290))))

(assert (=> d!430985 (= (rulesProduceEachTokenIndividually!892 thiss!27374 rules!4290 (seqFromList!1722 l1!3136)) lt!511252)))

(declare-fun b!1469702 () Bool)

(assert (=> b!1469702 (= e!938363 (= lt!511252 (rulesProduceEachTokenIndividuallyList!758 thiss!27374 rules!4290 (list!6153 (seqFromList!1722 l1!3136)))))))

(assert (= (and d!430985 res!664640) b!1469702))

(assert (=> d!430985 m!1713975))

(declare-fun m!1714013 () Bool)

(assert (=> d!430985 m!1714013))

(assert (=> d!430985 m!1714013))

(declare-fun m!1714015 () Bool)

(assert (=> d!430985 m!1714015))

(assert (=> d!430985 m!1713975))

(declare-fun m!1714017 () Bool)

(assert (=> d!430985 m!1714017))

(assert (=> d!430985 m!1713957))

(assert (=> b!1469702 m!1713975))

(assert (=> b!1469702 m!1714013))

(assert (=> b!1469702 m!1714013))

(declare-fun m!1714019 () Bool)

(assert (=> b!1469702 m!1714019))

(assert (=> b!1469638 d!430985))

(declare-fun d!431007 () Bool)

(declare-fun fromListB!740 (List!15461) BalanceConc!10446)

(assert (=> d!431007 (= (seqFromList!1722 l1!3136) (fromListB!740 l1!3136))))

(declare-fun bs!344956 () Bool)

(assert (= bs!344956 d!431007))

(declare-fun m!1714021 () Bool)

(assert (=> bs!344956 m!1714021))

(assert (=> b!1469638 d!431007))

(declare-fun bs!344960 () Bool)

(declare-fun d!431009 () Bool)

(assert (= bs!344960 (and d!431009 d!430985)))

(declare-fun lambda!63432 () Int)

(assert (=> bs!344960 (= lambda!63432 lambda!63424)))

(declare-fun b!1469805 () Bool)

(declare-fun e!938444 () Bool)

(assert (=> b!1469805 (= e!938444 true)))

(declare-fun b!1469804 () Bool)

(declare-fun e!938443 () Bool)

(assert (=> b!1469804 (= e!938443 e!938444)))

(declare-fun b!1469803 () Bool)

(declare-fun e!938442 () Bool)

(assert (=> b!1469803 (= e!938442 e!938443)))

(assert (=> d!431009 e!938442))

(assert (= b!1469804 b!1469805))

(assert (= b!1469803 b!1469804))

(assert (= (and d!431009 ((_ is Cons!15396) rules!4290)) b!1469803))

(assert (=> b!1469805 (< (dynLambda!6983 order!9237 (toValue!4054 (transformation!2735 (h!20797 rules!4290)))) (dynLambda!6984 order!9239 lambda!63432))))

(assert (=> b!1469805 (< (dynLambda!6985 order!9241 (toChars!3913 (transformation!2735 (h!20797 rules!4290)))) (dynLambda!6984 order!9239 lambda!63432))))

(assert (=> d!431009 true))

(declare-fun lt!511258 () Bool)

(assert (=> d!431009 (= lt!511258 (forall!3755 l2!3105 lambda!63432))))

(declare-fun e!938441 () Bool)

(assert (=> d!431009 (= lt!511258 e!938441)))

(declare-fun res!664661 () Bool)

(assert (=> d!431009 (=> res!664661 e!938441)))

(assert (=> d!431009 (= res!664661 (not ((_ is Cons!15395) l2!3105)))))

(assert (=> d!431009 (not (isEmpty!9619 rules!4290))))

(assert (=> d!431009 (= (rulesProduceEachTokenIndividuallyList!758 thiss!27374 rules!4290 l2!3105) lt!511258)))

(declare-fun b!1469801 () Bool)

(declare-fun e!938440 () Bool)

(assert (=> b!1469801 (= e!938441 e!938440)))

(declare-fun res!664660 () Bool)

(assert (=> b!1469801 (=> (not res!664660) (not e!938440))))

(declare-fun rulesProduceIndividualToken!1256 (LexerInterface!2391 List!15462 Token!5132) Bool)

(assert (=> b!1469801 (= res!664660 (rulesProduceIndividualToken!1256 thiss!27374 rules!4290 (h!20796 l2!3105)))))

(declare-fun b!1469802 () Bool)

(assert (=> b!1469802 (= e!938440 (rulesProduceEachTokenIndividuallyList!758 thiss!27374 rules!4290 (t!135396 l2!3105)))))

(assert (= (and d!431009 (not res!664661)) b!1469801))

(assert (= (and b!1469801 res!664660) b!1469802))

(declare-fun m!1714085 () Bool)

(assert (=> d!431009 m!1714085))

(assert (=> d!431009 m!1713957))

(declare-fun m!1714087 () Bool)

(assert (=> b!1469801 m!1714087))

(declare-fun m!1714089 () Bool)

(assert (=> b!1469802 m!1714089))

(assert (=> b!1469647 d!431009))

(declare-fun d!431023 () Bool)

(declare-fun res!664666 () Bool)

(declare-fun e!938447 () Bool)

(assert (=> d!431023 (=> (not res!664666) (not e!938447))))

(declare-fun isEmpty!9621 (List!15460) Bool)

(assert (=> d!431023 (= res!664666 (not (isEmpty!9621 (originalCharacters!3597 (h!20796 l1!3136)))))))

(assert (=> d!431023 (= (inv!20592 (h!20796 l1!3136)) e!938447)))

(declare-fun b!1469810 () Bool)

(declare-fun res!664667 () Bool)

(assert (=> b!1469810 (=> (not res!664667) (not e!938447))))

(declare-fun list!6154 (BalanceConc!10444) List!15460)

(declare-fun dynLambda!6986 (Int TokenValue!2825) BalanceConc!10444)

(assert (=> b!1469810 (= res!664667 (= (originalCharacters!3597 (h!20796 l1!3136)) (list!6154 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136))))))))

(declare-fun b!1469811 () Bool)

(declare-fun size!12520 (List!15460) Int)

(assert (=> b!1469811 (= e!938447 (= (size!12518 (h!20796 l1!3136)) (size!12520 (originalCharacters!3597 (h!20796 l1!3136)))))))

(assert (= (and d!431023 res!664666) b!1469810))

(assert (= (and b!1469810 res!664667) b!1469811))

(declare-fun b_lambda!45839 () Bool)

(assert (=> (not b_lambda!45839) (not b!1469810)))

(declare-fun tb!83153 () Bool)

(declare-fun t!135435 () Bool)

(assert (=> (and b!1469649 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) t!135435) tb!83153))

(declare-fun b!1469816 () Bool)

(declare-fun e!938450 () Bool)

(declare-fun tp!414434 () Bool)

(declare-fun inv!20595 (Conc!5252) Bool)

(assert (=> b!1469816 (= e!938450 (and (inv!20595 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136))))) tp!414434))))

(declare-fun result!99960 () Bool)

(declare-fun inv!20596 (BalanceConc!10444) Bool)

(assert (=> tb!83153 (= result!99960 (and (inv!20596 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136)))) e!938450))))

(assert (= tb!83153 b!1469816))

(declare-fun m!1714091 () Bool)

(assert (=> b!1469816 m!1714091))

(declare-fun m!1714093 () Bool)

(assert (=> tb!83153 m!1714093))

(assert (=> b!1469810 t!135435))

(declare-fun b_and!100661 () Bool)

(assert (= b_and!100627 (and (=> t!135435 result!99960) b_and!100661)))

(declare-fun tb!83155 () Bool)

(declare-fun t!135437 () Bool)

(assert (=> (and b!1469648 (= (toChars!3913 (transformation!2735 (h!20797 rules!4290))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) t!135437) tb!83155))

(declare-fun result!99964 () Bool)

(assert (= result!99964 result!99960))

(assert (=> b!1469810 t!135437))

(declare-fun b_and!100663 () Bool)

(assert (= b_and!100631 (and (=> t!135437 result!99964) b_and!100663)))

(declare-fun t!135439 () Bool)

(declare-fun tb!83157 () Bool)

(assert (=> (and b!1469640 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) t!135439) tb!83157))

(declare-fun result!99966 () Bool)

(assert (= result!99966 result!99960))

(assert (=> b!1469810 t!135439))

(declare-fun b_and!100665 () Bool)

(assert (= b_and!100635 (and (=> t!135439 result!99966) b_and!100665)))

(declare-fun m!1714095 () Bool)

(assert (=> d!431023 m!1714095))

(declare-fun m!1714097 () Bool)

(assert (=> b!1469810 m!1714097))

(assert (=> b!1469810 m!1714097))

(declare-fun m!1714099 () Bool)

(assert (=> b!1469810 m!1714099))

(declare-fun m!1714101 () Bool)

(assert (=> b!1469811 m!1714101))

(assert (=> b!1469637 d!431023))

(declare-fun b!1469827 () Bool)

(declare-fun res!664670 () Bool)

(declare-fun e!938457 () Bool)

(assert (=> b!1469827 (=> res!664670 e!938457)))

(assert (=> b!1469827 (= res!664670 (not ((_ is IntegerValue!8477) (value!87595 (h!20796 l2!3105)))))))

(declare-fun e!938459 () Bool)

(assert (=> b!1469827 (= e!938459 e!938457)))

(declare-fun d!431025 () Bool)

(declare-fun c!242194 () Bool)

(assert (=> d!431025 (= c!242194 ((_ is IntegerValue!8475) (value!87595 (h!20796 l2!3105))))))

(declare-fun e!938458 () Bool)

(assert (=> d!431025 (= (inv!21 (value!87595 (h!20796 l2!3105))) e!938458)))

(declare-fun b!1469828 () Bool)

(declare-fun inv!17 (TokenValue!2825) Bool)

(assert (=> b!1469828 (= e!938459 (inv!17 (value!87595 (h!20796 l2!3105))))))

(declare-fun b!1469829 () Bool)

(assert (=> b!1469829 (= e!938458 e!938459)))

(declare-fun c!242195 () Bool)

(assert (=> b!1469829 (= c!242195 ((_ is IntegerValue!8476) (value!87595 (h!20796 l2!3105))))))

(declare-fun b!1469830 () Bool)

(declare-fun inv!16 (TokenValue!2825) Bool)

(assert (=> b!1469830 (= e!938458 (inv!16 (value!87595 (h!20796 l2!3105))))))

(declare-fun b!1469831 () Bool)

(declare-fun inv!15 (TokenValue!2825) Bool)

(assert (=> b!1469831 (= e!938457 (inv!15 (value!87595 (h!20796 l2!3105))))))

(assert (= (and d!431025 c!242194) b!1469830))

(assert (= (and d!431025 (not c!242194)) b!1469829))

(assert (= (and b!1469829 c!242195) b!1469828))

(assert (= (and b!1469829 (not c!242195)) b!1469827))

(assert (= (and b!1469827 (not res!664670)) b!1469831))

(declare-fun m!1714103 () Bool)

(assert (=> b!1469828 m!1714103))

(declare-fun m!1714105 () Bool)

(assert (=> b!1469830 m!1714105))

(declare-fun m!1714107 () Bool)

(assert (=> b!1469831 m!1714107))

(assert (=> b!1469646 d!431025))

(declare-fun d!431027 () Bool)

(assert (=> d!431027 (= (inv!20588 (tag!2999 (rule!4512 (h!20796 l2!3105)))) (= (mod (str.len (value!87594 (tag!2999 (rule!4512 (h!20796 l2!3105))))) 2) 0))))

(assert (=> b!1469636 d!431027))

(declare-fun d!431029 () Bool)

(declare-fun res!664673 () Bool)

(declare-fun e!938462 () Bool)

(assert (=> d!431029 (=> (not res!664673) (not e!938462))))

(declare-fun semiInverseModEq!1023 (Int Int) Bool)

(assert (=> d!431029 (= res!664673 (semiInverseModEq!1023 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l2!3105))))))))

(assert (=> d!431029 (= (inv!20591 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) e!938462)))

(declare-fun b!1469834 () Bool)

(declare-fun equivClasses!982 (Int Int) Bool)

(assert (=> b!1469834 (= e!938462 (equivClasses!982 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l2!3105))))))))

(assert (= (and d!431029 res!664673) b!1469834))

(declare-fun m!1714109 () Bool)

(assert (=> d!431029 m!1714109))

(declare-fun m!1714111 () Bool)

(assert (=> b!1469834 m!1714111))

(assert (=> b!1469636 d!431029))

(declare-fun d!431031 () Bool)

(assert (=> d!431031 (= (isEmpty!9619 rules!4290) ((_ is Nil!15396) rules!4290))))

(assert (=> b!1469645 d!431031))

(declare-fun bs!344961 () Bool)

(declare-fun d!431033 () Bool)

(assert (= bs!344961 (and d!431033 d!430985)))

(declare-fun lambda!63433 () Int)

(assert (=> bs!344961 (= lambda!63433 lambda!63424)))

(declare-fun bs!344962 () Bool)

(assert (= bs!344962 (and d!431033 d!431009)))

(assert (=> bs!344962 (= lambda!63433 lambda!63432)))

(declare-fun b!1469839 () Bool)

(declare-fun e!938467 () Bool)

(assert (=> b!1469839 (= e!938467 true)))

(declare-fun b!1469838 () Bool)

(declare-fun e!938466 () Bool)

(assert (=> b!1469838 (= e!938466 e!938467)))

(declare-fun b!1469837 () Bool)

(declare-fun e!938465 () Bool)

(assert (=> b!1469837 (= e!938465 e!938466)))

(assert (=> d!431033 e!938465))

(assert (= b!1469838 b!1469839))

(assert (= b!1469837 b!1469838))

(assert (= (and d!431033 ((_ is Cons!15396) rules!4290)) b!1469837))

(assert (=> b!1469839 (< (dynLambda!6983 order!9237 (toValue!4054 (transformation!2735 (h!20797 rules!4290)))) (dynLambda!6984 order!9239 lambda!63433))))

(assert (=> b!1469839 (< (dynLambda!6985 order!9241 (toChars!3913 (transformation!2735 (h!20797 rules!4290)))) (dynLambda!6984 order!9239 lambda!63433))))

(assert (=> d!431033 true))

(declare-fun lt!511259 () Bool)

(assert (=> d!431033 (= lt!511259 (forall!3755 l1!3136 lambda!63433))))

(declare-fun e!938464 () Bool)

(assert (=> d!431033 (= lt!511259 e!938464)))

(declare-fun res!664675 () Bool)

(assert (=> d!431033 (=> res!664675 e!938464)))

(assert (=> d!431033 (= res!664675 (not ((_ is Cons!15395) l1!3136)))))

(assert (=> d!431033 (not (isEmpty!9619 rules!4290))))

(assert (=> d!431033 (= (rulesProduceEachTokenIndividuallyList!758 thiss!27374 rules!4290 l1!3136) lt!511259)))

(declare-fun b!1469835 () Bool)

(declare-fun e!938463 () Bool)

(assert (=> b!1469835 (= e!938464 e!938463)))

(declare-fun res!664674 () Bool)

(assert (=> b!1469835 (=> (not res!664674) (not e!938463))))

(assert (=> b!1469835 (= res!664674 (rulesProduceIndividualToken!1256 thiss!27374 rules!4290 (h!20796 l1!3136)))))

(declare-fun b!1469836 () Bool)

(assert (=> b!1469836 (= e!938463 (rulesProduceEachTokenIndividuallyList!758 thiss!27374 rules!4290 (t!135396 l1!3136)))))

(assert (= (and d!431033 (not res!664675)) b!1469835))

(assert (= (and b!1469835 res!664674) b!1469836))

(declare-fun m!1714113 () Bool)

(assert (=> d!431033 m!1714113))

(assert (=> d!431033 m!1713957))

(declare-fun m!1714115 () Bool)

(assert (=> b!1469835 m!1714115))

(declare-fun m!1714117 () Bool)

(assert (=> b!1469836 m!1714117))

(assert (=> b!1469643 d!431033))

(declare-fun d!431035 () Bool)

(declare-fun res!664676 () Bool)

(declare-fun e!938468 () Bool)

(assert (=> d!431035 (=> (not res!664676) (not e!938468))))

(assert (=> d!431035 (= res!664676 (not (isEmpty!9621 (originalCharacters!3597 (h!20796 l2!3105)))))))

(assert (=> d!431035 (= (inv!20592 (h!20796 l2!3105)) e!938468)))

(declare-fun b!1469840 () Bool)

(declare-fun res!664677 () Bool)

(assert (=> b!1469840 (=> (not res!664677) (not e!938468))))

(assert (=> b!1469840 (= res!664677 (= (originalCharacters!3597 (h!20796 l2!3105)) (list!6154 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105))))))))

(declare-fun b!1469841 () Bool)

(assert (=> b!1469841 (= e!938468 (= (size!12518 (h!20796 l2!3105)) (size!12520 (originalCharacters!3597 (h!20796 l2!3105)))))))

(assert (= (and d!431035 res!664676) b!1469840))

(assert (= (and b!1469840 res!664677) b!1469841))

(declare-fun b_lambda!45841 () Bool)

(assert (=> (not b_lambda!45841) (not b!1469840)))

(declare-fun t!135441 () Bool)

(declare-fun tb!83159 () Bool)

(assert (=> (and b!1469649 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105))))) t!135441) tb!83159))

(declare-fun b!1469842 () Bool)

(declare-fun e!938469 () Bool)

(declare-fun tp!414435 () Bool)

(assert (=> b!1469842 (= e!938469 (and (inv!20595 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105))))) tp!414435))))

(declare-fun result!99968 () Bool)

(assert (=> tb!83159 (= result!99968 (and (inv!20596 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105)))) e!938469))))

(assert (= tb!83159 b!1469842))

(declare-fun m!1714119 () Bool)

(assert (=> b!1469842 m!1714119))

(declare-fun m!1714121 () Bool)

(assert (=> tb!83159 m!1714121))

(assert (=> b!1469840 t!135441))

(declare-fun b_and!100667 () Bool)

(assert (= b_and!100661 (and (=> t!135441 result!99968) b_and!100667)))

(declare-fun tb!83161 () Bool)

(declare-fun t!135443 () Bool)

(assert (=> (and b!1469648 (= (toChars!3913 (transformation!2735 (h!20797 rules!4290))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105))))) t!135443) tb!83161))

(declare-fun result!99970 () Bool)

(assert (= result!99970 result!99968))

(assert (=> b!1469840 t!135443))

(declare-fun b_and!100669 () Bool)

(assert (= b_and!100663 (and (=> t!135443 result!99970) b_and!100669)))

(declare-fun t!135445 () Bool)

(declare-fun tb!83163 () Bool)

(assert (=> (and b!1469640 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105))))) t!135445) tb!83163))

(declare-fun result!99972 () Bool)

(assert (= result!99972 result!99968))

(assert (=> b!1469840 t!135445))

(declare-fun b_and!100671 () Bool)

(assert (= b_and!100665 (and (=> t!135445 result!99972) b_and!100671)))

(declare-fun m!1714123 () Bool)

(assert (=> d!431035 m!1714123))

(declare-fun m!1714125 () Bool)

(assert (=> b!1469840 m!1714125))

(assert (=> b!1469840 m!1714125))

(declare-fun m!1714127 () Bool)

(assert (=> b!1469840 m!1714127))

(declare-fun m!1714129 () Bool)

(assert (=> b!1469841 m!1714129))

(assert (=> b!1469644 d!431035))

(declare-fun d!431037 () Bool)

(declare-fun res!664680 () Bool)

(declare-fun e!938472 () Bool)

(assert (=> d!431037 (=> (not res!664680) (not e!938472))))

(declare-fun rulesValid!997 (LexerInterface!2391 List!15462) Bool)

(assert (=> d!431037 (= res!664680 (rulesValid!997 thiss!27374 rules!4290))))

(assert (=> d!431037 (= (rulesInvariant!2180 thiss!27374 rules!4290) e!938472)))

(declare-fun b!1469845 () Bool)

(declare-datatypes ((List!15464 0))(
  ( (Nil!15398) (Cons!15398 (h!20799 String!18381) (t!135459 List!15464)) )
))
(declare-fun noDuplicateTag!997 (LexerInterface!2391 List!15462 List!15464) Bool)

(assert (=> b!1469845 (= e!938472 (noDuplicateTag!997 thiss!27374 rules!4290 Nil!15398))))

(assert (= (and d!431037 res!664680) b!1469845))

(declare-fun m!1714131 () Bool)

(assert (=> d!431037 m!1714131))

(declare-fun m!1714133 () Bool)

(assert (=> b!1469845 m!1714133))

(assert (=> b!1469642 d!431037))

(declare-fun d!431039 () Bool)

(assert (=> d!431039 (= (inv!20588 (tag!2999 (rule!4512 (h!20796 l1!3136)))) (= (mod (str.len (value!87594 (tag!2999 (rule!4512 (h!20796 l1!3136))))) 2) 0))))

(assert (=> b!1469651 d!431039))

(declare-fun d!431041 () Bool)

(declare-fun res!664681 () Bool)

(declare-fun e!938473 () Bool)

(assert (=> d!431041 (=> (not res!664681) (not e!938473))))

(assert (=> d!431041 (= res!664681 (semiInverseModEq!1023 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l1!3136))))))))

(assert (=> d!431041 (= (inv!20591 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) e!938473)))

(declare-fun b!1469846 () Bool)

(assert (=> b!1469846 (= e!938473 (equivClasses!982 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l1!3136))))))))

(assert (= (and d!431041 res!664681) b!1469846))

(declare-fun m!1714135 () Bool)

(assert (=> d!431041 m!1714135))

(declare-fun m!1714137 () Bool)

(assert (=> b!1469846 m!1714137))

(assert (=> b!1469651 d!431041))

(declare-fun d!431043 () Bool)

(assert (=> d!431043 (= (inv!20588 (tag!2999 (h!20797 rules!4290))) (= (mod (str.len (value!87594 (tag!2999 (h!20797 rules!4290)))) 2) 0))))

(assert (=> b!1469650 d!431043))

(declare-fun d!431045 () Bool)

(declare-fun res!664682 () Bool)

(declare-fun e!938474 () Bool)

(assert (=> d!431045 (=> (not res!664682) (not e!938474))))

(assert (=> d!431045 (= res!664682 (semiInverseModEq!1023 (toChars!3913 (transformation!2735 (h!20797 rules!4290))) (toValue!4054 (transformation!2735 (h!20797 rules!4290)))))))

(assert (=> d!431045 (= (inv!20591 (transformation!2735 (h!20797 rules!4290))) e!938474)))

(declare-fun b!1469847 () Bool)

(assert (=> b!1469847 (= e!938474 (equivClasses!982 (toChars!3913 (transformation!2735 (h!20797 rules!4290))) (toValue!4054 (transformation!2735 (h!20797 rules!4290)))))))

(assert (= (and d!431045 res!664682) b!1469847))

(declare-fun m!1714139 () Bool)

(assert (=> d!431045 m!1714139))

(declare-fun m!1714141 () Bool)

(assert (=> b!1469847 m!1714141))

(assert (=> b!1469650 d!431045))

(declare-fun b!1469848 () Bool)

(declare-fun res!664683 () Bool)

(declare-fun e!938475 () Bool)

(assert (=> b!1469848 (=> res!664683 e!938475)))

(assert (=> b!1469848 (= res!664683 (not ((_ is IntegerValue!8477) (value!87595 (h!20796 l1!3136)))))))

(declare-fun e!938477 () Bool)

(assert (=> b!1469848 (= e!938477 e!938475)))

(declare-fun d!431047 () Bool)

(declare-fun c!242196 () Bool)

(assert (=> d!431047 (= c!242196 ((_ is IntegerValue!8475) (value!87595 (h!20796 l1!3136))))))

(declare-fun e!938476 () Bool)

(assert (=> d!431047 (= (inv!21 (value!87595 (h!20796 l1!3136))) e!938476)))

(declare-fun b!1469849 () Bool)

(assert (=> b!1469849 (= e!938477 (inv!17 (value!87595 (h!20796 l1!3136))))))

(declare-fun b!1469850 () Bool)

(assert (=> b!1469850 (= e!938476 e!938477)))

(declare-fun c!242197 () Bool)

(assert (=> b!1469850 (= c!242197 ((_ is IntegerValue!8476) (value!87595 (h!20796 l1!3136))))))

(declare-fun b!1469851 () Bool)

(assert (=> b!1469851 (= e!938476 (inv!16 (value!87595 (h!20796 l1!3136))))))

(declare-fun b!1469852 () Bool)

(assert (=> b!1469852 (= e!938475 (inv!15 (value!87595 (h!20796 l1!3136))))))

(assert (= (and d!431047 c!242196) b!1469851))

(assert (= (and d!431047 (not c!242196)) b!1469850))

(assert (= (and b!1469850 c!242197) b!1469849))

(assert (= (and b!1469850 (not c!242197)) b!1469848))

(assert (= (and b!1469848 (not res!664683)) b!1469852))

(declare-fun m!1714143 () Bool)

(assert (=> b!1469849 m!1714143))

(declare-fun m!1714145 () Bool)

(assert (=> b!1469851 m!1714145))

(declare-fun m!1714147 () Bool)

(assert (=> b!1469852 m!1714147))

(assert (=> b!1469639 d!431047))

(declare-fun b!1469866 () Bool)

(declare-fun b_free!37047 () Bool)

(declare-fun b_next!37751 () Bool)

(assert (=> b!1469866 (= b_free!37047 (not b_next!37751))))

(declare-fun tp!414447 () Bool)

(declare-fun b_and!100673 () Bool)

(assert (=> b!1469866 (= tp!414447 b_and!100673)))

(declare-fun b_free!37049 () Bool)

(declare-fun b_next!37753 () Bool)

(assert (=> b!1469866 (= b_free!37049 (not b_next!37753))))

(declare-fun t!135448 () Bool)

(declare-fun tb!83165 () Bool)

(assert (=> (and b!1469866 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) t!135448) tb!83165))

(declare-fun result!99976 () Bool)

(assert (= result!99976 result!99960))

(assert (=> b!1469810 t!135448))

(declare-fun tb!83167 () Bool)

(declare-fun t!135450 () Bool)

(assert (=> (and b!1469866 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105))))) t!135450) tb!83167))

(declare-fun result!99978 () Bool)

(assert (= result!99978 result!99968))

(assert (=> b!1469840 t!135450))

(declare-fun b_and!100675 () Bool)

(declare-fun tp!414448 () Bool)

(assert (=> b!1469866 (= tp!414448 (and (=> t!135448 result!99976) (=> t!135450 result!99978) b_and!100675))))

(declare-fun e!938494 () Bool)

(assert (=> b!1469637 (= tp!414353 e!938494)))

(declare-fun e!938493 () Bool)

(declare-fun b!1469865 () Bool)

(declare-fun e!938495 () Bool)

(declare-fun tp!414450 () Bool)

(assert (=> b!1469865 (= e!938493 (and tp!414450 (inv!20588 (tag!2999 (rule!4512 (h!20796 (t!135396 l1!3136))))) (inv!20591 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))) e!938495))))

(declare-fun tp!414446 () Bool)

(declare-fun b!1469864 () Bool)

(declare-fun e!938491 () Bool)

(assert (=> b!1469864 (= e!938491 (and (inv!21 (value!87595 (h!20796 (t!135396 l1!3136)))) e!938493 tp!414446))))

(assert (=> b!1469866 (= e!938495 (and tp!414447 tp!414448))))

(declare-fun tp!414449 () Bool)

(declare-fun b!1469863 () Bool)

(assert (=> b!1469863 (= e!938494 (and (inv!20592 (h!20796 (t!135396 l1!3136))) e!938491 tp!414449))))

(assert (= b!1469865 b!1469866))

(assert (= b!1469864 b!1469865))

(assert (= b!1469863 b!1469864))

(assert (= (and b!1469637 ((_ is Cons!15395) (t!135396 l1!3136))) b!1469863))

(declare-fun m!1714149 () Bool)

(assert (=> b!1469865 m!1714149))

(declare-fun m!1714151 () Bool)

(assert (=> b!1469865 m!1714151))

(declare-fun m!1714153 () Bool)

(assert (=> b!1469864 m!1714153))

(declare-fun m!1714155 () Bool)

(assert (=> b!1469863 m!1714155))

(declare-fun b!1469871 () Bool)

(declare-fun e!938498 () Bool)

(declare-fun tp_is_empty!6915 () Bool)

(declare-fun tp!414453 () Bool)

(assert (=> b!1469871 (= e!938498 (and tp_is_empty!6915 tp!414453))))

(assert (=> b!1469646 (= tp!414366 e!938498)))

(assert (= (and b!1469646 ((_ is Cons!15394) (originalCharacters!3597 (h!20796 l2!3105)))) b!1469871))

(declare-fun e!938501 () Bool)

(assert (=> b!1469636 (= tp!414358 e!938501)))

(declare-fun b!1469885 () Bool)

(declare-fun tp!414467 () Bool)

(declare-fun tp!414468 () Bool)

(assert (=> b!1469885 (= e!938501 (and tp!414467 tp!414468))))

(declare-fun b!1469883 () Bool)

(declare-fun tp!414464 () Bool)

(declare-fun tp!414465 () Bool)

(assert (=> b!1469883 (= e!938501 (and tp!414464 tp!414465))))

(declare-fun b!1469882 () Bool)

(assert (=> b!1469882 (= e!938501 tp_is_empty!6915)))

(declare-fun b!1469884 () Bool)

(declare-fun tp!414466 () Bool)

(assert (=> b!1469884 (= e!938501 tp!414466)))

(assert (= (and b!1469636 ((_ is ElementMatch!4049) (regex!2735 (rule!4512 (h!20796 l2!3105))))) b!1469882))

(assert (= (and b!1469636 ((_ is Concat!6875) (regex!2735 (rule!4512 (h!20796 l2!3105))))) b!1469883))

(assert (= (and b!1469636 ((_ is Star!4049) (regex!2735 (rule!4512 (h!20796 l2!3105))))) b!1469884))

(assert (= (and b!1469636 ((_ is Union!4049) (regex!2735 (rule!4512 (h!20796 l2!3105))))) b!1469885))

(declare-fun b!1469889 () Bool)

(declare-fun b_free!37051 () Bool)

(declare-fun b_next!37755 () Bool)

(assert (=> b!1469889 (= b_free!37051 (not b_next!37755))))

(declare-fun tp!414470 () Bool)

(declare-fun b_and!100677 () Bool)

(assert (=> b!1469889 (= tp!414470 b_and!100677)))

(declare-fun b_free!37053 () Bool)

(declare-fun b_next!37757 () Bool)

(assert (=> b!1469889 (= b_free!37053 (not b_next!37757))))

(declare-fun t!135452 () Bool)

(declare-fun tb!83169 () Bool)

(assert (=> (and b!1469889 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) t!135452) tb!83169))

(declare-fun result!99984 () Bool)

(assert (= result!99984 result!99960))

(assert (=> b!1469810 t!135452))

(declare-fun t!135454 () Bool)

(declare-fun tb!83171 () Bool)

(assert (=> (and b!1469889 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105))))) t!135454) tb!83171))

(declare-fun result!99986 () Bool)

(assert (= result!99986 result!99968))

(assert (=> b!1469840 t!135454))

(declare-fun b_and!100679 () Bool)

(declare-fun tp!414471 () Bool)

(assert (=> b!1469889 (= tp!414471 (and (=> t!135452 result!99984) (=> t!135454 result!99986) b_and!100679))))

(declare-fun e!938506 () Bool)

(assert (=> b!1469644 (= tp!414356 e!938506)))

(declare-fun e!938507 () Bool)

(declare-fun b!1469888 () Bool)

(declare-fun e!938505 () Bool)

(declare-fun tp!414473 () Bool)

(assert (=> b!1469888 (= e!938505 (and tp!414473 (inv!20588 (tag!2999 (rule!4512 (h!20796 (t!135396 l2!3105))))) (inv!20591 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))) e!938507))))

(declare-fun e!938503 () Bool)

(declare-fun tp!414469 () Bool)

(declare-fun b!1469887 () Bool)

(assert (=> b!1469887 (= e!938503 (and (inv!21 (value!87595 (h!20796 (t!135396 l2!3105)))) e!938505 tp!414469))))

(assert (=> b!1469889 (= e!938507 (and tp!414470 tp!414471))))

(declare-fun b!1469886 () Bool)

(declare-fun tp!414472 () Bool)

(assert (=> b!1469886 (= e!938506 (and (inv!20592 (h!20796 (t!135396 l2!3105))) e!938503 tp!414472))))

(assert (= b!1469888 b!1469889))

(assert (= b!1469887 b!1469888))

(assert (= b!1469886 b!1469887))

(assert (= (and b!1469644 ((_ is Cons!15395) (t!135396 l2!3105))) b!1469886))

(declare-fun m!1714157 () Bool)

(assert (=> b!1469888 m!1714157))

(declare-fun m!1714159 () Bool)

(assert (=> b!1469888 m!1714159))

(declare-fun m!1714161 () Bool)

(assert (=> b!1469887 m!1714161))

(declare-fun m!1714163 () Bool)

(assert (=> b!1469886 m!1714163))

(declare-fun e!938508 () Bool)

(assert (=> b!1469651 (= tp!414357 e!938508)))

(declare-fun b!1469893 () Bool)

(declare-fun tp!414477 () Bool)

(declare-fun tp!414478 () Bool)

(assert (=> b!1469893 (= e!938508 (and tp!414477 tp!414478))))

(declare-fun b!1469891 () Bool)

(declare-fun tp!414474 () Bool)

(declare-fun tp!414475 () Bool)

(assert (=> b!1469891 (= e!938508 (and tp!414474 tp!414475))))

(declare-fun b!1469890 () Bool)

(assert (=> b!1469890 (= e!938508 tp_is_empty!6915)))

(declare-fun b!1469892 () Bool)

(declare-fun tp!414476 () Bool)

(assert (=> b!1469892 (= e!938508 tp!414476)))

(assert (= (and b!1469651 ((_ is ElementMatch!4049) (regex!2735 (rule!4512 (h!20796 l1!3136))))) b!1469890))

(assert (= (and b!1469651 ((_ is Concat!6875) (regex!2735 (rule!4512 (h!20796 l1!3136))))) b!1469891))

(assert (= (and b!1469651 ((_ is Star!4049) (regex!2735 (rule!4512 (h!20796 l1!3136))))) b!1469892))

(assert (= (and b!1469651 ((_ is Union!4049) (regex!2735 (rule!4512 (h!20796 l1!3136))))) b!1469893))

(declare-fun b!1469904 () Bool)

(declare-fun b_free!37055 () Bool)

(declare-fun b_next!37759 () Bool)

(assert (=> b!1469904 (= b_free!37055 (not b_next!37759))))

(declare-fun tp!414488 () Bool)

(declare-fun b_and!100681 () Bool)

(assert (=> b!1469904 (= tp!414488 b_and!100681)))

(declare-fun b_free!37057 () Bool)

(declare-fun b_next!37761 () Bool)

(assert (=> b!1469904 (= b_free!37057 (not b_next!37761))))

(declare-fun t!135456 () Bool)

(declare-fun tb!83173 () Bool)

(assert (=> (and b!1469904 (= (toChars!3913 (transformation!2735 (h!20797 (t!135397 rules!4290)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) t!135456) tb!83173))

(declare-fun result!99990 () Bool)

(assert (= result!99990 result!99960))

(assert (=> b!1469810 t!135456))

(declare-fun tb!83175 () Bool)

(declare-fun t!135458 () Bool)

(assert (=> (and b!1469904 (= (toChars!3913 (transformation!2735 (h!20797 (t!135397 rules!4290)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105))))) t!135458) tb!83175))

(declare-fun result!99992 () Bool)

(assert (= result!99992 result!99968))

(assert (=> b!1469840 t!135458))

(declare-fun b_and!100683 () Bool)

(declare-fun tp!414489 () Bool)

(assert (=> b!1469904 (= tp!414489 (and (=> t!135456 result!99990) (=> t!135458 result!99992) b_and!100683))))

(declare-fun e!938519 () Bool)

(assert (=> b!1469904 (= e!938519 (and tp!414488 tp!414489))))

(declare-fun e!938520 () Bool)

(declare-fun tp!414487 () Bool)

(declare-fun b!1469903 () Bool)

(assert (=> b!1469903 (= e!938520 (and tp!414487 (inv!20588 (tag!2999 (h!20797 (t!135397 rules!4290)))) (inv!20591 (transformation!2735 (h!20797 (t!135397 rules!4290)))) e!938519))))

(declare-fun b!1469902 () Bool)

(declare-fun e!938517 () Bool)

(declare-fun tp!414490 () Bool)

(assert (=> b!1469902 (= e!938517 (and e!938520 tp!414490))))

(assert (=> b!1469641 (= tp!414365 e!938517)))

(assert (= b!1469903 b!1469904))

(assert (= b!1469902 b!1469903))

(assert (= (and b!1469641 ((_ is Cons!15396) (t!135397 rules!4290))) b!1469902))

(declare-fun m!1714165 () Bool)

(assert (=> b!1469903 m!1714165))

(declare-fun m!1714167 () Bool)

(assert (=> b!1469903 m!1714167))

(declare-fun e!938521 () Bool)

(assert (=> b!1469650 (= tp!414364 e!938521)))

(declare-fun b!1469908 () Bool)

(declare-fun tp!414494 () Bool)

(declare-fun tp!414495 () Bool)

(assert (=> b!1469908 (= e!938521 (and tp!414494 tp!414495))))

(declare-fun b!1469906 () Bool)

(declare-fun tp!414491 () Bool)

(declare-fun tp!414492 () Bool)

(assert (=> b!1469906 (= e!938521 (and tp!414491 tp!414492))))

(declare-fun b!1469905 () Bool)

(assert (=> b!1469905 (= e!938521 tp_is_empty!6915)))

(declare-fun b!1469907 () Bool)

(declare-fun tp!414493 () Bool)

(assert (=> b!1469907 (= e!938521 tp!414493)))

(assert (= (and b!1469650 ((_ is ElementMatch!4049) (regex!2735 (h!20797 rules!4290)))) b!1469905))

(assert (= (and b!1469650 ((_ is Concat!6875) (regex!2735 (h!20797 rules!4290)))) b!1469906))

(assert (= (and b!1469650 ((_ is Star!4049) (regex!2735 (h!20797 rules!4290)))) b!1469907))

(assert (= (and b!1469650 ((_ is Union!4049) (regex!2735 (h!20797 rules!4290)))) b!1469908))

(declare-fun b!1469909 () Bool)

(declare-fun e!938522 () Bool)

(declare-fun tp!414496 () Bool)

(assert (=> b!1469909 (= e!938522 (and tp_is_empty!6915 tp!414496))))

(assert (=> b!1469639 (= tp!414361 e!938522)))

(assert (= (and b!1469639 ((_ is Cons!15394) (originalCharacters!3597 (h!20796 l1!3136)))) b!1469909))

(declare-fun b_lambda!45843 () Bool)

(assert (= b_lambda!45841 (or (and b!1469640 b_free!37033 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))))) (and b!1469648 b_free!37029 (= (toChars!3913 (transformation!2735 (h!20797 rules!4290))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))))) (and b!1469649 b_free!37025) (and b!1469889 b_free!37053 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))))) (and b!1469866 b_free!37049 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))))) (and b!1469904 b_free!37057 (= (toChars!3913 (transformation!2735 (h!20797 (t!135397 rules!4290)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))))) b_lambda!45843)))

(declare-fun b_lambda!45845 () Bool)

(assert (= b_lambda!45839 (or (and b!1469889 b_free!37053 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))))) (and b!1469866 b_free!37049 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))))) (and b!1469904 b_free!37057 (= (toChars!3913 (transformation!2735 (h!20797 (t!135397 rules!4290)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))))) (and b!1469648 b_free!37029 (= (toChars!3913 (transformation!2735 (h!20797 rules!4290))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))))) (and b!1469649 b_free!37025 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))))) (and b!1469640 b_free!37033) b_lambda!45845)))

(check-sat (not b!1469903) (not d!430985) (not b_next!37737) (not b!1469802) (not b!1469908) (not tb!83159) (not b_next!37731) (not b!1469834) b_and!100681 b_and!100625 (not b!1469830) (not b!1469849) b_and!100679 (not b!1469891) (not b!1469842) (not b!1469828) (not b_next!37751) (not b!1469887) (not b!1469909) (not b!1469902) (not b!1469841) (not b!1469831) (not b!1469871) (not d!431035) (not d!431007) (not b!1469801) (not b!1469907) (not b!1469852) (not b_next!37727) (not b!1469886) (not b!1469816) (not b!1469864) (not b_next!37753) b_and!100683 b_and!100633 b_and!100671 (not b_next!37757) (not b!1469836) tp_is_empty!6915 b_and!100629 (not b!1469892) (not b_next!37733) (not d!431029) (not b_lambda!45845) (not b_next!37755) (not b_next!37761) (not b!1469884) (not b!1469863) (not d!431023) (not b!1469846) (not d!431009) b_and!100677 b_and!100675 b_and!100667 (not b!1469803) (not b!1469845) (not b_next!37735) (not b!1469835) (not b!1469888) (not b_next!37759) (not b!1469893) (not d!431045) (not b!1469885) (not b!1469840) (not tb!83153) (not b!1469810) (not b!1469847) (not b!1469711) b_and!100673 (not b!1469906) (not d!431033) (not b!1469865) (not b_lambda!45843) (not d!431037) (not b!1469837) (not b!1469702) (not b!1469851) (not d!431041) (not b!1469883) b_and!100669 (not b_next!37729) (not b!1469811))
(check-sat (not b_next!37731) b_and!100679 (not b_next!37751) (not b_next!37737) (not b_next!37727) b_and!100629 (not b_next!37733) b_and!100673 b_and!100681 b_and!100625 (not b_next!37753) b_and!100683 b_and!100633 b_and!100671 (not b_next!37757) (not b_next!37755) (not b_next!37761) b_and!100677 b_and!100675 b_and!100667 (not b_next!37735) (not b_next!37759) b_and!100669 (not b_next!37729))
(get-model)

(declare-fun d!431049 () Bool)

(declare-fun e!938525 () Bool)

(assert (=> d!431049 e!938525))

(declare-fun res!664687 () Bool)

(assert (=> d!431049 (=> (not res!664687) (not e!938525))))

(declare-fun lt!511262 () BalanceConc!10446)

(assert (=> d!431049 (= res!664687 (= (list!6153 lt!511262) l1!3136))))

(declare-fun fromList!342 (List!15461) Conc!5253)

(assert (=> d!431049 (= lt!511262 (BalanceConc!10447 (fromList!342 l1!3136)))))

(assert (=> d!431049 (= (fromListB!740 l1!3136) lt!511262)))

(declare-fun b!1469912 () Bool)

(declare-fun isBalanced!1567 (Conc!5253) Bool)

(assert (=> b!1469912 (= e!938525 (isBalanced!1567 (fromList!342 l1!3136)))))

(assert (= (and d!431049 res!664687) b!1469912))

(declare-fun m!1714169 () Bool)

(assert (=> d!431049 m!1714169))

(declare-fun m!1714171 () Bool)

(assert (=> d!431049 m!1714171))

(assert (=> b!1469912 m!1714171))

(assert (=> b!1469912 m!1714171))

(declare-fun m!1714173 () Bool)

(assert (=> b!1469912 m!1714173))

(assert (=> d!431007 d!431049))

(declare-fun d!431051 () Bool)

(assert (=> d!431051 (= (isEmpty!9621 (originalCharacters!3597 (h!20796 l2!3105))) ((_ is Nil!15394) (originalCharacters!3597 (h!20796 l2!3105))))))

(assert (=> d!431035 d!431051))

(declare-fun d!431053 () Bool)

(declare-fun charsToBigInt!0 (List!15459 Int) Int)

(assert (=> d!431053 (= (inv!15 (value!87595 (h!20796 l2!3105))) (= (charsToBigInt!0 (text!20224 (value!87595 (h!20796 l2!3105))) 0) (value!87590 (value!87595 (h!20796 l2!3105)))))))

(declare-fun bs!344963 () Bool)

(assert (= bs!344963 d!431053))

(declare-fun m!1714175 () Bool)

(assert (=> bs!344963 m!1714175))

(assert (=> b!1469831 d!431053))

(declare-fun d!431055 () Bool)

(declare-fun isBalanced!1568 (Conc!5252) Bool)

(assert (=> d!431055 (= (inv!20596 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136)))) (isBalanced!1568 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136))))))))

(declare-fun bs!344964 () Bool)

(assert (= bs!344964 d!431055))

(declare-fun m!1714177 () Bool)

(assert (=> bs!344964 m!1714177))

(assert (=> tb!83153 d!431055))

(declare-fun d!431057 () Bool)

(declare-fun res!664692 () Bool)

(declare-fun e!938530 () Bool)

(assert (=> d!431057 (=> res!664692 e!938530)))

(assert (=> d!431057 (= res!664692 ((_ is Nil!15395) l1!3136))))

(assert (=> d!431057 (= (forall!3755 l1!3136 lambda!63433) e!938530)))

(declare-fun b!1469917 () Bool)

(declare-fun e!938531 () Bool)

(assert (=> b!1469917 (= e!938530 e!938531)))

(declare-fun res!664693 () Bool)

(assert (=> b!1469917 (=> (not res!664693) (not e!938531))))

(declare-fun dynLambda!6987 (Int Token!5132) Bool)

(assert (=> b!1469917 (= res!664693 (dynLambda!6987 lambda!63433 (h!20796 l1!3136)))))

(declare-fun b!1469918 () Bool)

(assert (=> b!1469918 (= e!938531 (forall!3755 (t!135396 l1!3136) lambda!63433))))

(assert (= (and d!431057 (not res!664692)) b!1469917))

(assert (= (and b!1469917 res!664693) b!1469918))

(declare-fun b_lambda!45847 () Bool)

(assert (=> (not b_lambda!45847) (not b!1469917)))

(declare-fun m!1714179 () Bool)

(assert (=> b!1469917 m!1714179))

(declare-fun m!1714181 () Bool)

(assert (=> b!1469918 m!1714181))

(assert (=> d!431033 d!431057))

(assert (=> d!431033 d!431031))

(declare-fun d!431059 () Bool)

(assert (=> d!431059 true))

(declare-fun lambda!63436 () Int)

(declare-fun order!9243 () Int)

(declare-fun dynLambda!6988 (Int Int) Int)

(assert (=> d!431059 (< (dynLambda!6983 order!9237 (toValue!4054 (transformation!2735 (h!20797 rules!4290)))) (dynLambda!6988 order!9243 lambda!63436))))

(declare-fun Forall2!466 (Int) Bool)

(assert (=> d!431059 (= (equivClasses!982 (toChars!3913 (transformation!2735 (h!20797 rules!4290))) (toValue!4054 (transformation!2735 (h!20797 rules!4290)))) (Forall2!466 lambda!63436))))

(declare-fun bs!344965 () Bool)

(assert (= bs!344965 d!431059))

(declare-fun m!1714183 () Bool)

(assert (=> bs!344965 m!1714183))

(assert (=> b!1469847 d!431059))

(declare-fun bs!344966 () Bool)

(declare-fun d!431061 () Bool)

(assert (= bs!344966 (and d!431061 d!430985)))

(declare-fun lambda!63437 () Int)

(assert (=> bs!344966 (= lambda!63437 lambda!63424)))

(declare-fun bs!344967 () Bool)

(assert (= bs!344967 (and d!431061 d!431009)))

(assert (=> bs!344967 (= lambda!63437 lambda!63432)))

(declare-fun bs!344968 () Bool)

(assert (= bs!344968 (and d!431061 d!431033)))

(assert (=> bs!344968 (= lambda!63437 lambda!63433)))

(declare-fun b!1469927 () Bool)

(declare-fun e!938538 () Bool)

(assert (=> b!1469927 (= e!938538 true)))

(declare-fun b!1469926 () Bool)

(declare-fun e!938537 () Bool)

(assert (=> b!1469926 (= e!938537 e!938538)))

(declare-fun b!1469925 () Bool)

(declare-fun e!938536 () Bool)

(assert (=> b!1469925 (= e!938536 e!938537)))

(assert (=> d!431061 e!938536))

(assert (= b!1469926 b!1469927))

(assert (= b!1469925 b!1469926))

(assert (= (and d!431061 ((_ is Cons!15396) rules!4290)) b!1469925))

(assert (=> b!1469927 (< (dynLambda!6983 order!9237 (toValue!4054 (transformation!2735 (h!20797 rules!4290)))) (dynLambda!6984 order!9239 lambda!63437))))

(assert (=> b!1469927 (< (dynLambda!6985 order!9241 (toChars!3913 (transformation!2735 (h!20797 rules!4290)))) (dynLambda!6984 order!9239 lambda!63437))))

(assert (=> d!431061 true))

(declare-fun lt!511263 () Bool)

(assert (=> d!431061 (= lt!511263 (forall!3755 (t!135396 l2!3105) lambda!63437))))

(declare-fun e!938535 () Bool)

(assert (=> d!431061 (= lt!511263 e!938535)))

(declare-fun res!664697 () Bool)

(assert (=> d!431061 (=> res!664697 e!938535)))

(assert (=> d!431061 (= res!664697 (not ((_ is Cons!15395) (t!135396 l2!3105))))))

(assert (=> d!431061 (not (isEmpty!9619 rules!4290))))

(assert (=> d!431061 (= (rulesProduceEachTokenIndividuallyList!758 thiss!27374 rules!4290 (t!135396 l2!3105)) lt!511263)))

(declare-fun b!1469923 () Bool)

(declare-fun e!938534 () Bool)

(assert (=> b!1469923 (= e!938535 e!938534)))

(declare-fun res!664696 () Bool)

(assert (=> b!1469923 (=> (not res!664696) (not e!938534))))

(assert (=> b!1469923 (= res!664696 (rulesProduceIndividualToken!1256 thiss!27374 rules!4290 (h!20796 (t!135396 l2!3105))))))

(declare-fun b!1469924 () Bool)

(assert (=> b!1469924 (= e!938534 (rulesProduceEachTokenIndividuallyList!758 thiss!27374 rules!4290 (t!135396 (t!135396 l2!3105))))))

(assert (= (and d!431061 (not res!664697)) b!1469923))

(assert (= (and b!1469923 res!664696) b!1469924))

(declare-fun m!1714185 () Bool)

(assert (=> d!431061 m!1714185))

(assert (=> d!431061 m!1713957))

(declare-fun m!1714187 () Bool)

(assert (=> b!1469923 m!1714187))

(declare-fun m!1714189 () Bool)

(assert (=> b!1469924 m!1714189))

(assert (=> b!1469802 d!431061))

(declare-fun d!431063 () Bool)

(declare-fun charsToInt!0 (List!15459) (_ BitVec 32))

(assert (=> d!431063 (= (inv!16 (value!87595 (h!20796 l2!3105))) (= (charsToInt!0 (text!20222 (value!87595 (h!20796 l2!3105)))) (value!87586 (value!87595 (h!20796 l2!3105)))))))

(declare-fun bs!344969 () Bool)

(assert (= bs!344969 d!431063))

(declare-fun m!1714191 () Bool)

(assert (=> bs!344969 m!1714191))

(assert (=> b!1469830 d!431063))

(declare-fun bs!344970 () Bool)

(declare-fun d!431065 () Bool)

(assert (= bs!344970 (and d!431065 d!431059)))

(declare-fun lambda!63438 () Int)

(assert (=> bs!344970 (= (= (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toValue!4054 (transformation!2735 (h!20797 rules!4290)))) (= lambda!63438 lambda!63436))))

(assert (=> d!431065 true))

(assert (=> d!431065 (< (dynLambda!6983 order!9237 (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l2!3105))))) (dynLambda!6988 order!9243 lambda!63438))))

(assert (=> d!431065 (= (equivClasses!982 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l2!3105))))) (Forall2!466 lambda!63438))))

(declare-fun bs!344971 () Bool)

(assert (= bs!344971 d!431065))

(declare-fun m!1714193 () Bool)

(assert (=> bs!344971 m!1714193))

(assert (=> b!1469834 d!431065))

(declare-fun d!431067 () Bool)

(assert (=> d!431067 (= (inv!20588 (tag!2999 (rule!4512 (h!20796 (t!135396 l2!3105))))) (= (mod (str.len (value!87594 (tag!2999 (rule!4512 (h!20796 (t!135396 l2!3105)))))) 2) 0))))

(assert (=> b!1469888 d!431067))

(declare-fun d!431069 () Bool)

(declare-fun res!664698 () Bool)

(declare-fun e!938539 () Bool)

(assert (=> d!431069 (=> (not res!664698) (not e!938539))))

(assert (=> d!431069 (= res!664698 (semiInverseModEq!1023 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))) (toValue!4054 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105)))))))))

(assert (=> d!431069 (= (inv!20591 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))) e!938539)))

(declare-fun b!1469928 () Bool)

(assert (=> b!1469928 (= e!938539 (equivClasses!982 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))) (toValue!4054 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105)))))))))

(assert (= (and d!431069 res!664698) b!1469928))

(declare-fun m!1714195 () Bool)

(assert (=> d!431069 m!1714195))

(declare-fun m!1714197 () Bool)

(assert (=> b!1469928 m!1714197))

(assert (=> b!1469888 d!431069))

(declare-fun d!431071 () Bool)

(assert (=> d!431071 true))

(declare-fun lt!511266 () Bool)

(declare-fun rulesValidInductive!835 (LexerInterface!2391 List!15462) Bool)

(assert (=> d!431071 (= lt!511266 (rulesValidInductive!835 thiss!27374 rules!4290))))

(declare-fun lambda!63441 () Int)

(declare-fun forall!3757 (List!15462 Int) Bool)

(assert (=> d!431071 (= lt!511266 (forall!3757 rules!4290 lambda!63441))))

(assert (=> d!431071 (= (rulesValid!997 thiss!27374 rules!4290) lt!511266)))

(declare-fun bs!344972 () Bool)

(assert (= bs!344972 d!431071))

(declare-fun m!1714199 () Bool)

(assert (=> bs!344972 m!1714199))

(declare-fun m!1714201 () Bool)

(assert (=> bs!344972 m!1714201))

(assert (=> d!431037 d!431071))

(declare-fun b!1469931 () Bool)

(declare-fun res!664699 () Bool)

(declare-fun e!938540 () Bool)

(assert (=> b!1469931 (=> res!664699 e!938540)))

(assert (=> b!1469931 (= res!664699 (not ((_ is IntegerValue!8477) (value!87595 (h!20796 (t!135396 l2!3105))))))))

(declare-fun e!938542 () Bool)

(assert (=> b!1469931 (= e!938542 e!938540)))

(declare-fun d!431073 () Bool)

(declare-fun c!242199 () Bool)

(assert (=> d!431073 (= c!242199 ((_ is IntegerValue!8475) (value!87595 (h!20796 (t!135396 l2!3105)))))))

(declare-fun e!938541 () Bool)

(assert (=> d!431073 (= (inv!21 (value!87595 (h!20796 (t!135396 l2!3105)))) e!938541)))

(declare-fun b!1469932 () Bool)

(assert (=> b!1469932 (= e!938542 (inv!17 (value!87595 (h!20796 (t!135396 l2!3105)))))))

(declare-fun b!1469933 () Bool)

(assert (=> b!1469933 (= e!938541 e!938542)))

(declare-fun c!242200 () Bool)

(assert (=> b!1469933 (= c!242200 ((_ is IntegerValue!8476) (value!87595 (h!20796 (t!135396 l2!3105)))))))

(declare-fun b!1469934 () Bool)

(assert (=> b!1469934 (= e!938541 (inv!16 (value!87595 (h!20796 (t!135396 l2!3105)))))))

(declare-fun b!1469935 () Bool)

(assert (=> b!1469935 (= e!938540 (inv!15 (value!87595 (h!20796 (t!135396 l2!3105)))))))

(assert (= (and d!431073 c!242199) b!1469934))

(assert (= (and d!431073 (not c!242199)) b!1469933))

(assert (= (and b!1469933 c!242200) b!1469932))

(assert (= (and b!1469933 (not c!242200)) b!1469931))

(assert (= (and b!1469931 (not res!664699)) b!1469935))

(declare-fun m!1714203 () Bool)

(assert (=> b!1469932 m!1714203))

(declare-fun m!1714205 () Bool)

(assert (=> b!1469934 m!1714205))

(declare-fun m!1714207 () Bool)

(assert (=> b!1469935 m!1714207))

(assert (=> b!1469887 d!431073))

(declare-fun d!431075 () Bool)

(declare-fun list!6155 (Conc!5252) List!15460)

(assert (=> d!431075 (= (list!6154 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105)))) (list!6155 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105))))))))

(declare-fun bs!344973 () Bool)

(assert (= bs!344973 d!431075))

(declare-fun m!1714209 () Bool)

(assert (=> bs!344973 m!1714209))

(assert (=> b!1469840 d!431075))

(declare-fun bs!344974 () Bool)

(declare-fun d!431077 () Bool)

(assert (= bs!344974 (and d!431077 d!430985)))

(declare-fun lambda!63442 () Int)

(assert (=> bs!344974 (= lambda!63442 lambda!63424)))

(declare-fun bs!344975 () Bool)

(assert (= bs!344975 (and d!431077 d!431009)))

(assert (=> bs!344975 (= lambda!63442 lambda!63432)))

(declare-fun bs!344976 () Bool)

(assert (= bs!344976 (and d!431077 d!431033)))

(assert (=> bs!344976 (= lambda!63442 lambda!63433)))

(declare-fun bs!344977 () Bool)

(assert (= bs!344977 (and d!431077 d!431061)))

(assert (=> bs!344977 (= lambda!63442 lambda!63437)))

(declare-fun b!1469940 () Bool)

(declare-fun e!938547 () Bool)

(assert (=> b!1469940 (= e!938547 true)))

(declare-fun b!1469939 () Bool)

(declare-fun e!938546 () Bool)

(assert (=> b!1469939 (= e!938546 e!938547)))

(declare-fun b!1469938 () Bool)

(declare-fun e!938545 () Bool)

(assert (=> b!1469938 (= e!938545 e!938546)))

(assert (=> d!431077 e!938545))

(assert (= b!1469939 b!1469940))

(assert (= b!1469938 b!1469939))

(assert (= (and d!431077 ((_ is Cons!15396) rules!4290)) b!1469938))

(assert (=> b!1469940 (< (dynLambda!6983 order!9237 (toValue!4054 (transformation!2735 (h!20797 rules!4290)))) (dynLambda!6984 order!9239 lambda!63442))))

(assert (=> b!1469940 (< (dynLambda!6985 order!9241 (toChars!3913 (transformation!2735 (h!20797 rules!4290)))) (dynLambda!6984 order!9239 lambda!63442))))

(assert (=> d!431077 true))

(declare-fun lt!511267 () Bool)

(assert (=> d!431077 (= lt!511267 (forall!3755 (t!135396 l1!3136) lambda!63442))))

(declare-fun e!938544 () Bool)

(assert (=> d!431077 (= lt!511267 e!938544)))

(declare-fun res!664701 () Bool)

(assert (=> d!431077 (=> res!664701 e!938544)))

(assert (=> d!431077 (= res!664701 (not ((_ is Cons!15395) (t!135396 l1!3136))))))

(assert (=> d!431077 (not (isEmpty!9619 rules!4290))))

(assert (=> d!431077 (= (rulesProduceEachTokenIndividuallyList!758 thiss!27374 rules!4290 (t!135396 l1!3136)) lt!511267)))

(declare-fun b!1469936 () Bool)

(declare-fun e!938543 () Bool)

(assert (=> b!1469936 (= e!938544 e!938543)))

(declare-fun res!664700 () Bool)

(assert (=> b!1469936 (=> (not res!664700) (not e!938543))))

(assert (=> b!1469936 (= res!664700 (rulesProduceIndividualToken!1256 thiss!27374 rules!4290 (h!20796 (t!135396 l1!3136))))))

(declare-fun b!1469937 () Bool)

(assert (=> b!1469937 (= e!938543 (rulesProduceEachTokenIndividuallyList!758 thiss!27374 rules!4290 (t!135396 (t!135396 l1!3136))))))

(assert (= (and d!431077 (not res!664701)) b!1469936))

(assert (= (and b!1469936 res!664700) b!1469937))

(declare-fun m!1714211 () Bool)

(assert (=> d!431077 m!1714211))

(assert (=> d!431077 m!1713957))

(declare-fun m!1714213 () Bool)

(assert (=> b!1469936 m!1714213))

(declare-fun m!1714215 () Bool)

(assert (=> b!1469937 m!1714215))

(assert (=> b!1469836 d!431077))

(declare-fun d!431079 () Bool)

(declare-fun lt!511270 () Int)

(assert (=> d!431079 (>= lt!511270 0)))

(declare-fun e!938550 () Int)

(assert (=> d!431079 (= lt!511270 e!938550)))

(declare-fun c!242203 () Bool)

(assert (=> d!431079 (= c!242203 ((_ is Nil!15394) (originalCharacters!3597 (h!20796 l2!3105))))))

(assert (=> d!431079 (= (size!12520 (originalCharacters!3597 (h!20796 l2!3105))) lt!511270)))

(declare-fun b!1469945 () Bool)

(assert (=> b!1469945 (= e!938550 0)))

(declare-fun b!1469946 () Bool)

(assert (=> b!1469946 (= e!938550 (+ 1 (size!12520 (t!135395 (originalCharacters!3597 (h!20796 l2!3105))))))))

(assert (= (and d!431079 c!242203) b!1469945))

(assert (= (and d!431079 (not c!242203)) b!1469946))

(declare-fun m!1714217 () Bool)

(assert (=> b!1469946 m!1714217))

(assert (=> b!1469841 d!431079))

(declare-fun d!431081 () Bool)

(assert (=> d!431081 true))

(declare-fun lambda!63445 () Int)

(declare-fun order!9245 () Int)

(declare-fun dynLambda!6991 (Int Int) Int)

(assert (=> d!431081 (< (dynLambda!6985 order!9241 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) (dynLambda!6991 order!9245 lambda!63445))))

(assert (=> d!431081 true))

(assert (=> d!431081 (< (dynLambda!6983 order!9237 (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) (dynLambda!6991 order!9245 lambda!63445))))

(declare-fun Forall!565 (Int) Bool)

(assert (=> d!431081 (= (semiInverseModEq!1023 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) (Forall!565 lambda!63445))))

(declare-fun bs!344978 () Bool)

(assert (= bs!344978 d!431081))

(declare-fun m!1714219 () Bool)

(assert (=> bs!344978 m!1714219))

(assert (=> d!431041 d!431081))

(declare-fun d!431083 () Bool)

(declare-fun res!664703 () Bool)

(declare-fun e!938551 () Bool)

(assert (=> d!431083 (=> (not res!664703) (not e!938551))))

(assert (=> d!431083 (= res!664703 (not (isEmpty!9621 (originalCharacters!3597 (h!20796 (t!135396 l2!3105))))))))

(assert (=> d!431083 (= (inv!20592 (h!20796 (t!135396 l2!3105))) e!938551)))

(declare-fun b!1469951 () Bool)

(declare-fun res!664704 () Bool)

(assert (=> b!1469951 (=> (not res!664704) (not e!938551))))

(assert (=> b!1469951 (= res!664704 (= (originalCharacters!3597 (h!20796 (t!135396 l2!3105))) (list!6154 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))) (value!87595 (h!20796 (t!135396 l2!3105)))))))))

(declare-fun b!1469952 () Bool)

(assert (=> b!1469952 (= e!938551 (= (size!12518 (h!20796 (t!135396 l2!3105))) (size!12520 (originalCharacters!3597 (h!20796 (t!135396 l2!3105))))))))

(assert (= (and d!431083 res!664703) b!1469951))

(assert (= (and b!1469951 res!664704) b!1469952))

(declare-fun b_lambda!45849 () Bool)

(assert (=> (not b_lambda!45849) (not b!1469951)))

(declare-fun t!135461 () Bool)

(declare-fun tb!83177 () Bool)

(assert (=> (and b!1469904 (= (toChars!3913 (transformation!2735 (h!20797 (t!135397 rules!4290)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105)))))) t!135461) tb!83177))

(declare-fun b!1469953 () Bool)

(declare-fun e!938552 () Bool)

(declare-fun tp!414497 () Bool)

(assert (=> b!1469953 (= e!938552 (and (inv!20595 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))) (value!87595 (h!20796 (t!135396 l2!3105)))))) tp!414497))))

(declare-fun result!99994 () Bool)

(assert (=> tb!83177 (= result!99994 (and (inv!20596 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))) (value!87595 (h!20796 (t!135396 l2!3105))))) e!938552))))

(assert (= tb!83177 b!1469953))

(declare-fun m!1714221 () Bool)

(assert (=> b!1469953 m!1714221))

(declare-fun m!1714223 () Bool)

(assert (=> tb!83177 m!1714223))

(assert (=> b!1469951 t!135461))

(declare-fun b_and!100685 () Bool)

(assert (= b_and!100683 (and (=> t!135461 result!99994) b_and!100685)))

(declare-fun tb!83179 () Bool)

(declare-fun t!135463 () Bool)

(assert (=> (and b!1469866 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105)))))) t!135463) tb!83179))

(declare-fun result!99996 () Bool)

(assert (= result!99996 result!99994))

(assert (=> b!1469951 t!135463))

(declare-fun b_and!100687 () Bool)

(assert (= b_and!100675 (and (=> t!135463 result!99996) b_and!100687)))

(declare-fun t!135465 () Bool)

(declare-fun tb!83181 () Bool)

(assert (=> (and b!1469649 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105)))))) t!135465) tb!83181))

(declare-fun result!99998 () Bool)

(assert (= result!99998 result!99994))

(assert (=> b!1469951 t!135465))

(declare-fun b_and!100689 () Bool)

(assert (= b_and!100667 (and (=> t!135465 result!99998) b_and!100689)))

(declare-fun t!135467 () Bool)

(declare-fun tb!83183 () Bool)

(assert (=> (and b!1469640 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105)))))) t!135467) tb!83183))

(declare-fun result!100000 () Bool)

(assert (= result!100000 result!99994))

(assert (=> b!1469951 t!135467))

(declare-fun b_and!100691 () Bool)

(assert (= b_and!100671 (and (=> t!135467 result!100000) b_and!100691)))

(declare-fun t!135469 () Bool)

(declare-fun tb!83185 () Bool)

(assert (=> (and b!1469889 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105)))))) t!135469) tb!83185))

(declare-fun result!100002 () Bool)

(assert (= result!100002 result!99994))

(assert (=> b!1469951 t!135469))

(declare-fun b_and!100693 () Bool)

(assert (= b_and!100679 (and (=> t!135469 result!100002) b_and!100693)))

(declare-fun t!135471 () Bool)

(declare-fun tb!83187 () Bool)

(assert (=> (and b!1469648 (= (toChars!3913 (transformation!2735 (h!20797 rules!4290))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105)))))) t!135471) tb!83187))

(declare-fun result!100004 () Bool)

(assert (= result!100004 result!99994))

(assert (=> b!1469951 t!135471))

(declare-fun b_and!100695 () Bool)

(assert (= b_and!100669 (and (=> t!135471 result!100004) b_and!100695)))

(declare-fun m!1714225 () Bool)

(assert (=> d!431083 m!1714225))

(declare-fun m!1714227 () Bool)

(assert (=> b!1469951 m!1714227))

(assert (=> b!1469951 m!1714227))

(declare-fun m!1714229 () Bool)

(assert (=> b!1469951 m!1714229))

(declare-fun m!1714231 () Bool)

(assert (=> b!1469952 m!1714231))

(assert (=> b!1469886 d!431083))

(declare-fun d!431085 () Bool)

(assert (=> d!431085 (= (inv!20588 (tag!2999 (h!20797 (t!135397 rules!4290)))) (= (mod (str.len (value!87594 (tag!2999 (h!20797 (t!135397 rules!4290))))) 2) 0))))

(assert (=> b!1469903 d!431085))

(declare-fun d!431087 () Bool)

(declare-fun res!664705 () Bool)

(declare-fun e!938553 () Bool)

(assert (=> d!431087 (=> (not res!664705) (not e!938553))))

(assert (=> d!431087 (= res!664705 (semiInverseModEq!1023 (toChars!3913 (transformation!2735 (h!20797 (t!135397 rules!4290)))) (toValue!4054 (transformation!2735 (h!20797 (t!135397 rules!4290))))))))

(assert (=> d!431087 (= (inv!20591 (transformation!2735 (h!20797 (t!135397 rules!4290)))) e!938553)))

(declare-fun b!1469954 () Bool)

(assert (=> b!1469954 (= e!938553 (equivClasses!982 (toChars!3913 (transformation!2735 (h!20797 (t!135397 rules!4290)))) (toValue!4054 (transformation!2735 (h!20797 (t!135397 rules!4290))))))))

(assert (= (and d!431087 res!664705) b!1469954))

(declare-fun m!1714233 () Bool)

(assert (=> d!431087 m!1714233))

(declare-fun m!1714235 () Bool)

(assert (=> b!1469954 m!1714235))

(assert (=> b!1469903 d!431087))

(declare-fun d!431089 () Bool)

(declare-fun lt!511285 () Bool)

(declare-fun e!938594 () Bool)

(assert (=> d!431089 (= lt!511285 e!938594)))

(declare-fun res!664740 () Bool)

(assert (=> d!431089 (=> (not res!664740) (not e!938594))))

(declare-datatypes ((tuple2!14272 0))(
  ( (tuple2!14273 (_1!8022 BalanceConc!10446) (_2!8022 BalanceConc!10444)) )
))
(declare-fun lex!1079 (LexerInterface!2391 List!15462 BalanceConc!10444) tuple2!14272)

(declare-fun print!1114 (LexerInterface!2391 BalanceConc!10446) BalanceConc!10444)

(declare-fun singletonSeq!1287 (Token!5132) BalanceConc!10446)

(assert (=> d!431089 (= res!664740 (= (list!6153 (_1!8022 (lex!1079 thiss!27374 rules!4290 (print!1114 thiss!27374 (singletonSeq!1287 (h!20796 l1!3136)))))) (list!6153 (singletonSeq!1287 (h!20796 l1!3136)))))))

(declare-fun e!938595 () Bool)

(assert (=> d!431089 (= lt!511285 e!938595)))

(declare-fun res!664739 () Bool)

(assert (=> d!431089 (=> (not res!664739) (not e!938595))))

(declare-fun lt!511286 () tuple2!14272)

(declare-fun size!12521 (BalanceConc!10446) Int)

(assert (=> d!431089 (= res!664739 (= (size!12521 (_1!8022 lt!511286)) 1))))

(assert (=> d!431089 (= lt!511286 (lex!1079 thiss!27374 rules!4290 (print!1114 thiss!27374 (singletonSeq!1287 (h!20796 l1!3136)))))))

(assert (=> d!431089 (not (isEmpty!9619 rules!4290))))

(assert (=> d!431089 (= (rulesProduceIndividualToken!1256 thiss!27374 rules!4290 (h!20796 l1!3136)) lt!511285)))

(declare-fun b!1470013 () Bool)

(declare-fun res!664738 () Bool)

(assert (=> b!1470013 (=> (not res!664738) (not e!938595))))

(declare-fun apply!3986 (BalanceConc!10446 Int) Token!5132)

(assert (=> b!1470013 (= res!664738 (= (apply!3986 (_1!8022 lt!511286) 0) (h!20796 l1!3136)))))

(declare-fun b!1470014 () Bool)

(declare-fun isEmpty!9622 (BalanceConc!10444) Bool)

(assert (=> b!1470014 (= e!938595 (isEmpty!9622 (_2!8022 lt!511286)))))

(declare-fun b!1470015 () Bool)

(assert (=> b!1470015 (= e!938594 (isEmpty!9622 (_2!8022 (lex!1079 thiss!27374 rules!4290 (print!1114 thiss!27374 (singletonSeq!1287 (h!20796 l1!3136)))))))))

(assert (= (and d!431089 res!664739) b!1470013))

(assert (= (and b!1470013 res!664738) b!1470014))

(assert (= (and d!431089 res!664740) b!1470015))

(declare-fun m!1714323 () Bool)

(assert (=> d!431089 m!1714323))

(declare-fun m!1714325 () Bool)

(assert (=> d!431089 m!1714325))

(declare-fun m!1714327 () Bool)

(assert (=> d!431089 m!1714327))

(declare-fun m!1714329 () Bool)

(assert (=> d!431089 m!1714329))

(assert (=> d!431089 m!1713957))

(assert (=> d!431089 m!1714325))

(assert (=> d!431089 m!1714327))

(assert (=> d!431089 m!1714325))

(declare-fun m!1714331 () Bool)

(assert (=> d!431089 m!1714331))

(declare-fun m!1714333 () Bool)

(assert (=> d!431089 m!1714333))

(declare-fun m!1714335 () Bool)

(assert (=> b!1470013 m!1714335))

(declare-fun m!1714337 () Bool)

(assert (=> b!1470014 m!1714337))

(assert (=> b!1470015 m!1714325))

(assert (=> b!1470015 m!1714325))

(assert (=> b!1470015 m!1714327))

(assert (=> b!1470015 m!1714327))

(assert (=> b!1470015 m!1714329))

(declare-fun m!1714339 () Bool)

(assert (=> b!1470015 m!1714339))

(assert (=> b!1469835 d!431089))

(declare-fun d!431157 () Bool)

(declare-fun lt!511287 () Int)

(assert (=> d!431157 (>= lt!511287 0)))

(declare-fun e!938596 () Int)

(assert (=> d!431157 (= lt!511287 e!938596)))

(declare-fun c!242211 () Bool)

(assert (=> d!431157 (= c!242211 ((_ is Nil!15394) (originalCharacters!3597 (h!20796 l1!3136))))))

(assert (=> d!431157 (= (size!12520 (originalCharacters!3597 (h!20796 l1!3136))) lt!511287)))

(declare-fun b!1470016 () Bool)

(assert (=> b!1470016 (= e!938596 0)))

(declare-fun b!1470017 () Bool)

(assert (=> b!1470017 (= e!938596 (+ 1 (size!12520 (t!135395 (originalCharacters!3597 (h!20796 l1!3136))))))))

(assert (= (and d!431157 c!242211) b!1470016))

(assert (= (and d!431157 (not c!242211)) b!1470017))

(declare-fun m!1714341 () Bool)

(assert (=> b!1470017 m!1714341))

(assert (=> b!1469811 d!431157))

(declare-fun b!1470018 () Bool)

(declare-fun res!664741 () Bool)

(declare-fun e!938597 () Bool)

(assert (=> b!1470018 (=> res!664741 e!938597)))

(assert (=> b!1470018 (= res!664741 (not ((_ is IntegerValue!8477) (value!87595 (h!20796 (t!135396 l1!3136))))))))

(declare-fun e!938599 () Bool)

(assert (=> b!1470018 (= e!938599 e!938597)))

(declare-fun d!431159 () Bool)

(declare-fun c!242212 () Bool)

(assert (=> d!431159 (= c!242212 ((_ is IntegerValue!8475) (value!87595 (h!20796 (t!135396 l1!3136)))))))

(declare-fun e!938598 () Bool)

(assert (=> d!431159 (= (inv!21 (value!87595 (h!20796 (t!135396 l1!3136)))) e!938598)))

(declare-fun b!1470019 () Bool)

(assert (=> b!1470019 (= e!938599 (inv!17 (value!87595 (h!20796 (t!135396 l1!3136)))))))

(declare-fun b!1470020 () Bool)

(assert (=> b!1470020 (= e!938598 e!938599)))

(declare-fun c!242213 () Bool)

(assert (=> b!1470020 (= c!242213 ((_ is IntegerValue!8476) (value!87595 (h!20796 (t!135396 l1!3136)))))))

(declare-fun b!1470021 () Bool)

(assert (=> b!1470021 (= e!938598 (inv!16 (value!87595 (h!20796 (t!135396 l1!3136)))))))

(declare-fun b!1470022 () Bool)

(assert (=> b!1470022 (= e!938597 (inv!15 (value!87595 (h!20796 (t!135396 l1!3136)))))))

(assert (= (and d!431159 c!242212) b!1470021))

(assert (= (and d!431159 (not c!242212)) b!1470020))

(assert (= (and b!1470020 c!242213) b!1470019))

(assert (= (and b!1470020 (not c!242213)) b!1470018))

(assert (= (and b!1470018 (not res!664741)) b!1470022))

(declare-fun m!1714343 () Bool)

(assert (=> b!1470019 m!1714343))

(declare-fun m!1714345 () Bool)

(assert (=> b!1470021 m!1714345))

(declare-fun m!1714347 () Bool)

(assert (=> b!1470022 m!1714347))

(assert (=> b!1469864 d!431159))

(declare-fun d!431161 () Bool)

(assert (=> d!431161 (= (inv!20596 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105)))) (isBalanced!1568 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105))))))))

(declare-fun bs!345004 () Bool)

(assert (= bs!345004 d!431161))

(declare-fun m!1714349 () Bool)

(assert (=> bs!345004 m!1714349))

(assert (=> tb!83159 d!431161))

(declare-fun d!431163 () Bool)

(assert (=> d!431163 (= (list!6154 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136)))) (list!6155 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136))))))))

(declare-fun bs!345005 () Bool)

(assert (= bs!345005 d!431163))

(declare-fun m!1714351 () Bool)

(assert (=> bs!345005 m!1714351))

(assert (=> b!1469810 d!431163))

(declare-fun d!431165 () Bool)

(declare-fun charsToBigInt!1 (List!15459) Int)

(assert (=> d!431165 (= (inv!17 (value!87595 (h!20796 l1!3136))) (= (charsToBigInt!1 (text!20223 (value!87595 (h!20796 l1!3136)))) (value!87587 (value!87595 (h!20796 l1!3136)))))))

(declare-fun bs!345006 () Bool)

(assert (= bs!345006 d!431165))

(declare-fun m!1714353 () Bool)

(assert (=> bs!345006 m!1714353))

(assert (=> b!1469849 d!431165))

(declare-fun d!431167 () Bool)

(declare-fun res!664742 () Bool)

(declare-fun e!938600 () Bool)

(assert (=> d!431167 (=> (not res!664742) (not e!938600))))

(assert (=> d!431167 (= res!664742 (not (isEmpty!9621 (originalCharacters!3597 (h!20796 (t!135396 l1!3136))))))))

(assert (=> d!431167 (= (inv!20592 (h!20796 (t!135396 l1!3136))) e!938600)))

(declare-fun b!1470023 () Bool)

(declare-fun res!664743 () Bool)

(assert (=> b!1470023 (=> (not res!664743) (not e!938600))))

(assert (=> b!1470023 (= res!664743 (= (originalCharacters!3597 (h!20796 (t!135396 l1!3136))) (list!6154 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))) (value!87595 (h!20796 (t!135396 l1!3136)))))))))

(declare-fun b!1470024 () Bool)

(assert (=> b!1470024 (= e!938600 (= (size!12518 (h!20796 (t!135396 l1!3136))) (size!12520 (originalCharacters!3597 (h!20796 (t!135396 l1!3136))))))))

(assert (= (and d!431167 res!664742) b!1470023))

(assert (= (and b!1470023 res!664743) b!1470024))

(declare-fun b_lambda!45857 () Bool)

(assert (=> (not b_lambda!45857) (not b!1470023)))

(declare-fun t!135486 () Bool)

(declare-fun tb!83201 () Bool)

(assert (=> (and b!1469648 (= (toChars!3913 (transformation!2735 (h!20797 rules!4290))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136)))))) t!135486) tb!83201))

(declare-fun b!1470025 () Bool)

(declare-fun e!938601 () Bool)

(declare-fun tp!414499 () Bool)

(assert (=> b!1470025 (= e!938601 (and (inv!20595 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))) (value!87595 (h!20796 (t!135396 l1!3136)))))) tp!414499))))

(declare-fun result!100018 () Bool)

(assert (=> tb!83201 (= result!100018 (and (inv!20596 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))) (value!87595 (h!20796 (t!135396 l1!3136))))) e!938601))))

(assert (= tb!83201 b!1470025))

(declare-fun m!1714355 () Bool)

(assert (=> b!1470025 m!1714355))

(declare-fun m!1714357 () Bool)

(assert (=> tb!83201 m!1714357))

(assert (=> b!1470023 t!135486))

(declare-fun b_and!100709 () Bool)

(assert (= b_and!100695 (and (=> t!135486 result!100018) b_and!100709)))

(declare-fun tb!83203 () Bool)

(declare-fun t!135488 () Bool)

(assert (=> (and b!1469904 (= (toChars!3913 (transformation!2735 (h!20797 (t!135397 rules!4290)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136)))))) t!135488) tb!83203))

(declare-fun result!100020 () Bool)

(assert (= result!100020 result!100018))

(assert (=> b!1470023 t!135488))

(declare-fun b_and!100711 () Bool)

(assert (= b_and!100685 (and (=> t!135488 result!100020) b_and!100711)))

(declare-fun tb!83205 () Bool)

(declare-fun t!135490 () Bool)

(assert (=> (and b!1469889 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136)))))) t!135490) tb!83205))

(declare-fun result!100022 () Bool)

(assert (= result!100022 result!100018))

(assert (=> b!1470023 t!135490))

(declare-fun b_and!100713 () Bool)

(assert (= b_and!100693 (and (=> t!135490 result!100022) b_and!100713)))

(declare-fun t!135492 () Bool)

(declare-fun tb!83207 () Bool)

(assert (=> (and b!1469640 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136)))))) t!135492) tb!83207))

(declare-fun result!100024 () Bool)

(assert (= result!100024 result!100018))

(assert (=> b!1470023 t!135492))

(declare-fun b_and!100715 () Bool)

(assert (= b_and!100691 (and (=> t!135492 result!100024) b_and!100715)))

(declare-fun tb!83209 () Bool)

(declare-fun t!135494 () Bool)

(assert (=> (and b!1469649 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136)))))) t!135494) tb!83209))

(declare-fun result!100026 () Bool)

(assert (= result!100026 result!100018))

(assert (=> b!1470023 t!135494))

(declare-fun b_and!100717 () Bool)

(assert (= b_and!100689 (and (=> t!135494 result!100026) b_and!100717)))

(declare-fun t!135496 () Bool)

(declare-fun tb!83211 () Bool)

(assert (=> (and b!1469866 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136)))))) t!135496) tb!83211))

(declare-fun result!100028 () Bool)

(assert (= result!100028 result!100018))

(assert (=> b!1470023 t!135496))

(declare-fun b_and!100719 () Bool)

(assert (= b_and!100687 (and (=> t!135496 result!100028) b_and!100719)))

(declare-fun m!1714359 () Bool)

(assert (=> d!431167 m!1714359))

(declare-fun m!1714361 () Bool)

(assert (=> b!1470023 m!1714361))

(assert (=> b!1470023 m!1714361))

(declare-fun m!1714363 () Bool)

(assert (=> b!1470023 m!1714363))

(declare-fun m!1714365 () Bool)

(assert (=> b!1470024 m!1714365))

(assert (=> b!1469863 d!431167))

(declare-fun bs!345007 () Bool)

(declare-fun d!431169 () Bool)

(assert (= bs!345007 (and d!431169 d!431061)))

(declare-fun lambda!63459 () Int)

(assert (=> bs!345007 (= lambda!63459 lambda!63437)))

(declare-fun bs!345008 () Bool)

(assert (= bs!345008 (and d!431169 d!431077)))

(assert (=> bs!345008 (= lambda!63459 lambda!63442)))

(declare-fun bs!345009 () Bool)

(assert (= bs!345009 (and d!431169 d!431009)))

(assert (=> bs!345009 (= lambda!63459 lambda!63432)))

(declare-fun bs!345010 () Bool)

(assert (= bs!345010 (and d!431169 d!430985)))

(assert (=> bs!345010 (= lambda!63459 lambda!63424)))

(declare-fun bs!345011 () Bool)

(assert (= bs!345011 (and d!431169 d!431033)))

(assert (=> bs!345011 (= lambda!63459 lambda!63433)))

(declare-fun b!1470030 () Bool)

(declare-fun e!938606 () Bool)

(assert (=> b!1470030 (= e!938606 true)))

(declare-fun b!1470029 () Bool)

(declare-fun e!938605 () Bool)

(assert (=> b!1470029 (= e!938605 e!938606)))

(declare-fun b!1470028 () Bool)

(declare-fun e!938604 () Bool)

(assert (=> b!1470028 (= e!938604 e!938605)))

(assert (=> d!431169 e!938604))

(assert (= b!1470029 b!1470030))

(assert (= b!1470028 b!1470029))

(assert (= (and d!431169 ((_ is Cons!15396) rules!4290)) b!1470028))

(assert (=> b!1470030 (< (dynLambda!6983 order!9237 (toValue!4054 (transformation!2735 (h!20797 rules!4290)))) (dynLambda!6984 order!9239 lambda!63459))))

(assert (=> b!1470030 (< (dynLambda!6985 order!9241 (toChars!3913 (transformation!2735 (h!20797 rules!4290)))) (dynLambda!6984 order!9239 lambda!63459))))

(assert (=> d!431169 true))

(declare-fun lt!511288 () Bool)

(assert (=> d!431169 (= lt!511288 (forall!3755 (list!6153 (seqFromList!1722 l1!3136)) lambda!63459))))

(declare-fun e!938603 () Bool)

(assert (=> d!431169 (= lt!511288 e!938603)))

(declare-fun res!664745 () Bool)

(assert (=> d!431169 (=> res!664745 e!938603)))

(assert (=> d!431169 (= res!664745 (not ((_ is Cons!15395) (list!6153 (seqFromList!1722 l1!3136)))))))

(assert (=> d!431169 (not (isEmpty!9619 rules!4290))))

(assert (=> d!431169 (= (rulesProduceEachTokenIndividuallyList!758 thiss!27374 rules!4290 (list!6153 (seqFromList!1722 l1!3136))) lt!511288)))

(declare-fun b!1470026 () Bool)

(declare-fun e!938602 () Bool)

(assert (=> b!1470026 (= e!938603 e!938602)))

(declare-fun res!664744 () Bool)

(assert (=> b!1470026 (=> (not res!664744) (not e!938602))))

(assert (=> b!1470026 (= res!664744 (rulesProduceIndividualToken!1256 thiss!27374 rules!4290 (h!20796 (list!6153 (seqFromList!1722 l1!3136)))))))

(declare-fun b!1470027 () Bool)

(assert (=> b!1470027 (= e!938602 (rulesProduceEachTokenIndividuallyList!758 thiss!27374 rules!4290 (t!135396 (list!6153 (seqFromList!1722 l1!3136)))))))

(assert (= (and d!431169 (not res!664745)) b!1470026))

(assert (= (and b!1470026 res!664744) b!1470027))

(assert (=> d!431169 m!1714013))

(declare-fun m!1714367 () Bool)

(assert (=> d!431169 m!1714367))

(assert (=> d!431169 m!1713957))

(declare-fun m!1714369 () Bool)

(assert (=> b!1470026 m!1714369))

(declare-fun m!1714371 () Bool)

(assert (=> b!1470027 m!1714371))

(assert (=> b!1469702 d!431169))

(declare-fun d!431171 () Bool)

(declare-fun list!6158 (Conc!5253) List!15461)

(assert (=> d!431171 (= (list!6153 (seqFromList!1722 l1!3136)) (list!6158 (c!242181 (seqFromList!1722 l1!3136))))))

(declare-fun bs!345012 () Bool)

(assert (= bs!345012 d!431171))

(declare-fun m!1714373 () Bool)

(assert (=> bs!345012 m!1714373))

(assert (=> b!1469702 d!431171))

(declare-fun d!431173 () Bool)

(declare-fun res!664746 () Bool)

(declare-fun e!938607 () Bool)

(assert (=> d!431173 (=> res!664746 e!938607)))

(assert (=> d!431173 (= res!664746 ((_ is Nil!15395) l2!3105))))

(assert (=> d!431173 (= (forall!3755 l2!3105 lambda!63432) e!938607)))

(declare-fun b!1470031 () Bool)

(declare-fun e!938608 () Bool)

(assert (=> b!1470031 (= e!938607 e!938608)))

(declare-fun res!664747 () Bool)

(assert (=> b!1470031 (=> (not res!664747) (not e!938608))))

(assert (=> b!1470031 (= res!664747 (dynLambda!6987 lambda!63432 (h!20796 l2!3105)))))

(declare-fun b!1470032 () Bool)

(assert (=> b!1470032 (= e!938608 (forall!3755 (t!135396 l2!3105) lambda!63432))))

(assert (= (and d!431173 (not res!664746)) b!1470031))

(assert (= (and b!1470031 res!664747) b!1470032))

(declare-fun b_lambda!45859 () Bool)

(assert (=> (not b_lambda!45859) (not b!1470031)))

(declare-fun m!1714375 () Bool)

(assert (=> b!1470031 m!1714375))

(declare-fun m!1714377 () Bool)

(assert (=> b!1470032 m!1714377))

(assert (=> d!431009 d!431173))

(assert (=> d!431009 d!431031))

(declare-fun bs!345013 () Bool)

(declare-fun d!431175 () Bool)

(assert (= bs!345013 (and d!431175 d!431059)))

(declare-fun lambda!63460 () Int)

(assert (=> bs!345013 (= (= (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (toValue!4054 (transformation!2735 (h!20797 rules!4290)))) (= lambda!63460 lambda!63436))))

(declare-fun bs!345014 () Bool)

(assert (= bs!345014 (and d!431175 d!431065)))

(assert (=> bs!345014 (= (= (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l2!3105))))) (= lambda!63460 lambda!63438))))

(assert (=> d!431175 true))

(assert (=> d!431175 (< (dynLambda!6983 order!9237 (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) (dynLambda!6988 order!9243 lambda!63460))))

(assert (=> d!431175 (= (equivClasses!982 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) (Forall2!466 lambda!63460))))

(declare-fun bs!345015 () Bool)

(assert (= bs!345015 d!431175))

(declare-fun m!1714379 () Bool)

(assert (=> bs!345015 m!1714379))

(assert (=> b!1469846 d!431175))

(declare-fun d!431177 () Bool)

(assert (=> d!431177 (= (inv!17 (value!87595 (h!20796 l2!3105))) (= (charsToBigInt!1 (text!20223 (value!87595 (h!20796 l2!3105)))) (value!87587 (value!87595 (h!20796 l2!3105)))))))

(declare-fun bs!345016 () Bool)

(assert (= bs!345016 d!431177))

(declare-fun m!1714381 () Bool)

(assert (=> bs!345016 m!1714381))

(assert (=> b!1469828 d!431177))

(declare-fun d!431179 () Bool)

(declare-fun lt!511289 () Bool)

(declare-fun e!938609 () Bool)

(assert (=> d!431179 (= lt!511289 e!938609)))

(declare-fun res!664750 () Bool)

(assert (=> d!431179 (=> (not res!664750) (not e!938609))))

(assert (=> d!431179 (= res!664750 (= (list!6153 (_1!8022 (lex!1079 thiss!27374 rules!4290 (print!1114 thiss!27374 (singletonSeq!1287 (h!20796 l2!3105)))))) (list!6153 (singletonSeq!1287 (h!20796 l2!3105)))))))

(declare-fun e!938610 () Bool)

(assert (=> d!431179 (= lt!511289 e!938610)))

(declare-fun res!664749 () Bool)

(assert (=> d!431179 (=> (not res!664749) (not e!938610))))

(declare-fun lt!511290 () tuple2!14272)

(assert (=> d!431179 (= res!664749 (= (size!12521 (_1!8022 lt!511290)) 1))))

(assert (=> d!431179 (= lt!511290 (lex!1079 thiss!27374 rules!4290 (print!1114 thiss!27374 (singletonSeq!1287 (h!20796 l2!3105)))))))

(assert (=> d!431179 (not (isEmpty!9619 rules!4290))))

(assert (=> d!431179 (= (rulesProduceIndividualToken!1256 thiss!27374 rules!4290 (h!20796 l2!3105)) lt!511289)))

(declare-fun b!1470033 () Bool)

(declare-fun res!664748 () Bool)

(assert (=> b!1470033 (=> (not res!664748) (not e!938610))))

(assert (=> b!1470033 (= res!664748 (= (apply!3986 (_1!8022 lt!511290) 0) (h!20796 l2!3105)))))

(declare-fun b!1470034 () Bool)

(assert (=> b!1470034 (= e!938610 (isEmpty!9622 (_2!8022 lt!511290)))))

(declare-fun b!1470035 () Bool)

(assert (=> b!1470035 (= e!938609 (isEmpty!9622 (_2!8022 (lex!1079 thiss!27374 rules!4290 (print!1114 thiss!27374 (singletonSeq!1287 (h!20796 l2!3105)))))))))

(assert (= (and d!431179 res!664749) b!1470033))

(assert (= (and b!1470033 res!664748) b!1470034))

(assert (= (and d!431179 res!664750) b!1470035))

(declare-fun m!1714383 () Bool)

(assert (=> d!431179 m!1714383))

(declare-fun m!1714385 () Bool)

(assert (=> d!431179 m!1714385))

(declare-fun m!1714387 () Bool)

(assert (=> d!431179 m!1714387))

(declare-fun m!1714389 () Bool)

(assert (=> d!431179 m!1714389))

(assert (=> d!431179 m!1713957))

(assert (=> d!431179 m!1714385))

(assert (=> d!431179 m!1714387))

(assert (=> d!431179 m!1714385))

(declare-fun m!1714391 () Bool)

(assert (=> d!431179 m!1714391))

(declare-fun m!1714393 () Bool)

(assert (=> d!431179 m!1714393))

(declare-fun m!1714395 () Bool)

(assert (=> b!1470033 m!1714395))

(declare-fun m!1714397 () Bool)

(assert (=> b!1470034 m!1714397))

(assert (=> b!1470035 m!1714385))

(assert (=> b!1470035 m!1714385))

(assert (=> b!1470035 m!1714387))

(assert (=> b!1470035 m!1714387))

(assert (=> b!1470035 m!1714389))

(declare-fun m!1714399 () Bool)

(assert (=> b!1470035 m!1714399))

(assert (=> b!1469801 d!431179))

(declare-fun d!431181 () Bool)

(declare-fun res!664755 () Bool)

(declare-fun e!938615 () Bool)

(assert (=> d!431181 (=> res!664755 e!938615)))

(assert (=> d!431181 (= res!664755 ((_ is Nil!15396) rules!4290))))

(assert (=> d!431181 (= (noDuplicateTag!997 thiss!27374 rules!4290 Nil!15398) e!938615)))

(declare-fun b!1470040 () Bool)

(declare-fun e!938616 () Bool)

(assert (=> b!1470040 (= e!938615 e!938616)))

(declare-fun res!664756 () Bool)

(assert (=> b!1470040 (=> (not res!664756) (not e!938616))))

(declare-fun contains!2915 (List!15464 String!18381) Bool)

(assert (=> b!1470040 (= res!664756 (not (contains!2915 Nil!15398 (tag!2999 (h!20797 rules!4290)))))))

(declare-fun b!1470041 () Bool)

(assert (=> b!1470041 (= e!938616 (noDuplicateTag!997 thiss!27374 (t!135397 rules!4290) (Cons!15398 (tag!2999 (h!20797 rules!4290)) Nil!15398)))))

(assert (= (and d!431181 (not res!664755)) b!1470040))

(assert (= (and b!1470040 res!664756) b!1470041))

(declare-fun m!1714401 () Bool)

(assert (=> b!1470040 m!1714401))

(declare-fun m!1714403 () Bool)

(assert (=> b!1470041 m!1714403))

(assert (=> b!1469845 d!431181))

(declare-fun d!431183 () Bool)

(declare-fun c!242216 () Bool)

(assert (=> d!431183 (= c!242216 ((_ is Node!5252) (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105))))))))

(declare-fun e!938621 () Bool)

(assert (=> d!431183 (= (inv!20595 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105))))) e!938621)))

(declare-fun b!1470048 () Bool)

(declare-fun inv!20599 (Conc!5252) Bool)

(assert (=> b!1470048 (= e!938621 (inv!20599 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105))))))))

(declare-fun b!1470049 () Bool)

(declare-fun e!938622 () Bool)

(assert (=> b!1470049 (= e!938621 e!938622)))

(declare-fun res!664759 () Bool)

(assert (=> b!1470049 (= res!664759 (not ((_ is Leaf!7821) (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105)))))))))

(assert (=> b!1470049 (=> res!664759 e!938622)))

(declare-fun b!1470050 () Bool)

(declare-fun inv!20600 (Conc!5252) Bool)

(assert (=> b!1470050 (= e!938622 (inv!20600 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105))))))))

(assert (= (and d!431183 c!242216) b!1470048))

(assert (= (and d!431183 (not c!242216)) b!1470049))

(assert (= (and b!1470049 (not res!664759)) b!1470050))

(declare-fun m!1714405 () Bool)

(assert (=> b!1470048 m!1714405))

(declare-fun m!1714407 () Bool)

(assert (=> b!1470050 m!1714407))

(assert (=> b!1469842 d!431183))

(declare-fun bs!345017 () Bool)

(declare-fun d!431185 () Bool)

(assert (= bs!345017 (and d!431185 d!431081)))

(declare-fun lambda!63461 () Int)

(assert (=> bs!345017 (= (and (= (toChars!3913 (transformation!2735 (h!20797 rules!4290))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) (= (toValue!4054 (transformation!2735 (h!20797 rules!4290))) (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l1!3136)))))) (= lambda!63461 lambda!63445))))

(assert (=> d!431185 true))

(assert (=> d!431185 (< (dynLambda!6985 order!9241 (toChars!3913 (transformation!2735 (h!20797 rules!4290)))) (dynLambda!6991 order!9245 lambda!63461))))

(assert (=> d!431185 true))

(assert (=> d!431185 (< (dynLambda!6983 order!9237 (toValue!4054 (transformation!2735 (h!20797 rules!4290)))) (dynLambda!6991 order!9245 lambda!63461))))

(assert (=> d!431185 (= (semiInverseModEq!1023 (toChars!3913 (transformation!2735 (h!20797 rules!4290))) (toValue!4054 (transformation!2735 (h!20797 rules!4290)))) (Forall!565 lambda!63461))))

(declare-fun bs!345018 () Bool)

(assert (= bs!345018 d!431185))

(declare-fun m!1714409 () Bool)

(assert (=> bs!345018 m!1714409))

(assert (=> d!431045 d!431185))

(declare-fun d!431187 () Bool)

(assert (=> d!431187 (= (inv!15 (value!87595 (h!20796 l1!3136))) (= (charsToBigInt!0 (text!20224 (value!87595 (h!20796 l1!3136))) 0) (value!87590 (value!87595 (h!20796 l1!3136)))))))

(declare-fun bs!345019 () Bool)

(assert (= bs!345019 d!431187))

(declare-fun m!1714411 () Bool)

(assert (=> bs!345019 m!1714411))

(assert (=> b!1469852 d!431187))

(declare-fun bs!345020 () Bool)

(declare-fun d!431189 () Bool)

(assert (= bs!345020 (and d!431189 d!431081)))

(declare-fun lambda!63462 () Int)

(assert (=> bs!345020 (= (and (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) (= (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l1!3136)))))) (= lambda!63462 lambda!63445))))

(declare-fun bs!345021 () Bool)

(assert (= bs!345021 (and d!431189 d!431185)))

(assert (=> bs!345021 (= (and (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toChars!3913 (transformation!2735 (h!20797 rules!4290)))) (= (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toValue!4054 (transformation!2735 (h!20797 rules!4290))))) (= lambda!63462 lambda!63461))))

(assert (=> d!431189 true))

(assert (=> d!431189 (< (dynLambda!6985 order!9241 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105))))) (dynLambda!6991 order!9245 lambda!63462))))

(assert (=> d!431189 true))

(assert (=> d!431189 (< (dynLambda!6983 order!9237 (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l2!3105))))) (dynLambda!6991 order!9245 lambda!63462))))

(assert (=> d!431189 (= (semiInverseModEq!1023 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toValue!4054 (transformation!2735 (rule!4512 (h!20796 l2!3105))))) (Forall!565 lambda!63462))))

(declare-fun bs!345022 () Bool)

(assert (= bs!345022 d!431189))

(declare-fun m!1714413 () Bool)

(assert (=> bs!345022 m!1714413))

(assert (=> d!431029 d!431189))

(declare-fun d!431191 () Bool)

(assert (=> d!431191 (= (inv!16 (value!87595 (h!20796 l1!3136))) (= (charsToInt!0 (text!20222 (value!87595 (h!20796 l1!3136)))) (value!87586 (value!87595 (h!20796 l1!3136)))))))

(declare-fun bs!345023 () Bool)

(assert (= bs!345023 d!431191))

(declare-fun m!1714415 () Bool)

(assert (=> bs!345023 m!1714415))

(assert (=> b!1469851 d!431191))

(declare-fun d!431193 () Bool)

(assert (=> d!431193 (= (inv!20588 (tag!2999 (rule!4512 (h!20796 (t!135396 l1!3136))))) (= (mod (str.len (value!87594 (tag!2999 (rule!4512 (h!20796 (t!135396 l1!3136)))))) 2) 0))))

(assert (=> b!1469865 d!431193))

(declare-fun d!431195 () Bool)

(declare-fun res!664760 () Bool)

(declare-fun e!938623 () Bool)

(assert (=> d!431195 (=> (not res!664760) (not e!938623))))

(assert (=> d!431195 (= res!664760 (semiInverseModEq!1023 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))) (toValue!4054 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136)))))))))

(assert (=> d!431195 (= (inv!20591 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))) e!938623)))

(declare-fun b!1470051 () Bool)

(assert (=> b!1470051 (= e!938623 (equivClasses!982 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))) (toValue!4054 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136)))))))))

(assert (= (and d!431195 res!664760) b!1470051))

(declare-fun m!1714417 () Bool)

(assert (=> d!431195 m!1714417))

(declare-fun m!1714419 () Bool)

(assert (=> b!1470051 m!1714419))

(assert (=> b!1469865 d!431195))

(declare-fun d!431197 () Bool)

(declare-fun res!664761 () Bool)

(declare-fun e!938624 () Bool)

(assert (=> d!431197 (=> res!664761 e!938624)))

(assert (=> d!431197 (= res!664761 ((_ is Nil!15395) (list!6153 (seqFromList!1722 l1!3136))))))

(assert (=> d!431197 (= (forall!3755 (list!6153 (seqFromList!1722 l1!3136)) lambda!63424) e!938624)))

(declare-fun b!1470052 () Bool)

(declare-fun e!938625 () Bool)

(assert (=> b!1470052 (= e!938624 e!938625)))

(declare-fun res!664762 () Bool)

(assert (=> b!1470052 (=> (not res!664762) (not e!938625))))

(assert (=> b!1470052 (= res!664762 (dynLambda!6987 lambda!63424 (h!20796 (list!6153 (seqFromList!1722 l1!3136)))))))

(declare-fun b!1470053 () Bool)

(assert (=> b!1470053 (= e!938625 (forall!3755 (t!135396 (list!6153 (seqFromList!1722 l1!3136))) lambda!63424))))

(assert (= (and d!431197 (not res!664761)) b!1470052))

(assert (= (and b!1470052 res!664762) b!1470053))

(declare-fun b_lambda!45861 () Bool)

(assert (=> (not b_lambda!45861) (not b!1470052)))

(declare-fun m!1714421 () Bool)

(assert (=> b!1470052 m!1714421))

(declare-fun m!1714423 () Bool)

(assert (=> b!1470053 m!1714423))

(assert (=> d!430985 d!431197))

(assert (=> d!430985 d!431171))

(declare-fun d!431199 () Bool)

(declare-fun lt!511293 () Bool)

(assert (=> d!431199 (= lt!511293 (forall!3755 (list!6153 (seqFromList!1722 l1!3136)) lambda!63424))))

(declare-fun forall!3760 (Conc!5253 Int) Bool)

(assert (=> d!431199 (= lt!511293 (forall!3760 (c!242181 (seqFromList!1722 l1!3136)) lambda!63424))))

(assert (=> d!431199 (= (forall!3756 (seqFromList!1722 l1!3136) lambda!63424) lt!511293)))

(declare-fun bs!345024 () Bool)

(assert (= bs!345024 d!431199))

(assert (=> bs!345024 m!1713975))

(assert (=> bs!345024 m!1714013))

(assert (=> bs!345024 m!1714013))

(assert (=> bs!345024 m!1714015))

(declare-fun m!1714425 () Bool)

(assert (=> bs!345024 m!1714425))

(assert (=> d!430985 d!431199))

(assert (=> d!430985 d!431031))

(declare-fun d!431201 () Bool)

(assert (=> d!431201 (= (isEmpty!9621 (originalCharacters!3597 (h!20796 l1!3136))) ((_ is Nil!15394) (originalCharacters!3597 (h!20796 l1!3136))))))

(assert (=> d!431023 d!431201))

(declare-fun d!431203 () Bool)

(declare-fun c!242217 () Bool)

(assert (=> d!431203 (= c!242217 ((_ is Node!5252) (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136))))))))

(declare-fun e!938626 () Bool)

(assert (=> d!431203 (= (inv!20595 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136))))) e!938626)))

(declare-fun b!1470054 () Bool)

(assert (=> b!1470054 (= e!938626 (inv!20599 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136))))))))

(declare-fun b!1470055 () Bool)

(declare-fun e!938627 () Bool)

(assert (=> b!1470055 (= e!938626 e!938627)))

(declare-fun res!664763 () Bool)

(assert (=> b!1470055 (= res!664763 (not ((_ is Leaf!7821) (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136)))))))))

(assert (=> b!1470055 (=> res!664763 e!938627)))

(declare-fun b!1470056 () Bool)

(assert (=> b!1470056 (= e!938627 (inv!20600 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136))))))))

(assert (= (and d!431203 c!242217) b!1470054))

(assert (= (and d!431203 (not c!242217)) b!1470055))

(assert (= (and b!1470055 (not res!664763)) b!1470056))

(declare-fun m!1714427 () Bool)

(assert (=> b!1470054 m!1714427))

(declare-fun m!1714429 () Bool)

(assert (=> b!1470056 m!1714429))

(assert (=> b!1469816 d!431203))

(declare-fun b!1470059 () Bool)

(declare-fun b_free!37059 () Bool)

(declare-fun b_next!37763 () Bool)

(assert (=> b!1470059 (= b_free!37059 (not b_next!37763))))

(declare-fun tp!414501 () Bool)

(declare-fun b_and!100721 () Bool)

(assert (=> b!1470059 (= tp!414501 b_and!100721)))

(declare-fun b_free!37061 () Bool)

(declare-fun b_next!37765 () Bool)

(assert (=> b!1470059 (= b_free!37061 (not b_next!37765))))

(declare-fun t!135498 () Bool)

(declare-fun tb!83213 () Bool)

(assert (=> (and b!1470059 (= (toChars!3913 (transformation!2735 (h!20797 (t!135397 (t!135397 rules!4290))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) t!135498) tb!83213))

(declare-fun result!100030 () Bool)

(assert (= result!100030 result!99960))

(assert (=> b!1469810 t!135498))

(declare-fun t!135500 () Bool)

(declare-fun tb!83215 () Bool)

(assert (=> (and b!1470059 (= (toChars!3913 (transformation!2735 (h!20797 (t!135397 (t!135397 rules!4290))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105))))) t!135500) tb!83215))

(declare-fun result!100032 () Bool)

(assert (= result!100032 result!99968))

(assert (=> b!1469840 t!135500))

(declare-fun tb!83217 () Bool)

(declare-fun t!135502 () Bool)

(assert (=> (and b!1470059 (= (toChars!3913 (transformation!2735 (h!20797 (t!135397 (t!135397 rules!4290))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105)))))) t!135502) tb!83217))

(declare-fun result!100034 () Bool)

(assert (= result!100034 result!99994))

(assert (=> b!1469951 t!135502))

(declare-fun t!135504 () Bool)

(declare-fun tb!83219 () Bool)

(assert (=> (and b!1470059 (= (toChars!3913 (transformation!2735 (h!20797 (t!135397 (t!135397 rules!4290))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136)))))) t!135504) tb!83219))

(declare-fun result!100036 () Bool)

(assert (= result!100036 result!100018))

(assert (=> b!1470023 t!135504))

(declare-fun tp!414502 () Bool)

(declare-fun b_and!100723 () Bool)

(assert (=> b!1470059 (= tp!414502 (and (=> t!135498 result!100030) (=> t!135500 result!100032) (=> t!135502 result!100034) (=> t!135504 result!100036) b_and!100723))))

(declare-fun e!938630 () Bool)

(assert (=> b!1470059 (= e!938630 (and tp!414501 tp!414502))))

(declare-fun tp!414500 () Bool)

(declare-fun b!1470058 () Bool)

(declare-fun e!938631 () Bool)

(assert (=> b!1470058 (= e!938631 (and tp!414500 (inv!20588 (tag!2999 (h!20797 (t!135397 (t!135397 rules!4290))))) (inv!20591 (transformation!2735 (h!20797 (t!135397 (t!135397 rules!4290))))) e!938630))))

(declare-fun b!1470057 () Bool)

(declare-fun e!938628 () Bool)

(declare-fun tp!414503 () Bool)

(assert (=> b!1470057 (= e!938628 (and e!938631 tp!414503))))

(assert (=> b!1469902 (= tp!414490 e!938628)))

(assert (= b!1470058 b!1470059))

(assert (= b!1470057 b!1470058))

(assert (= (and b!1469902 ((_ is Cons!15396) (t!135397 (t!135397 rules!4290)))) b!1470057))

(declare-fun m!1714431 () Bool)

(assert (=> b!1470058 m!1714431))

(declare-fun m!1714433 () Bool)

(assert (=> b!1470058 m!1714433))

(declare-fun b!1470060 () Bool)

(declare-fun e!938632 () Bool)

(declare-fun tp!414504 () Bool)

(assert (=> b!1470060 (= e!938632 (and tp_is_empty!6915 tp!414504))))

(assert (=> b!1469909 (= tp!414496 e!938632)))

(assert (= (and b!1469909 ((_ is Cons!15394) (t!135395 (originalCharacters!3597 (h!20796 l1!3136))))) b!1470060))

(declare-fun e!938633 () Bool)

(assert (=> b!1469908 (= tp!414494 e!938633)))

(declare-fun b!1470064 () Bool)

(declare-fun tp!414508 () Bool)

(declare-fun tp!414509 () Bool)

(assert (=> b!1470064 (= e!938633 (and tp!414508 tp!414509))))

(declare-fun b!1470062 () Bool)

(declare-fun tp!414505 () Bool)

(declare-fun tp!414506 () Bool)

(assert (=> b!1470062 (= e!938633 (and tp!414505 tp!414506))))

(declare-fun b!1470061 () Bool)

(assert (=> b!1470061 (= e!938633 tp_is_empty!6915)))

(declare-fun b!1470063 () Bool)

(declare-fun tp!414507 () Bool)

(assert (=> b!1470063 (= e!938633 tp!414507)))

(assert (= (and b!1469908 ((_ is ElementMatch!4049) (regOne!8611 (regex!2735 (h!20797 rules!4290))))) b!1470061))

(assert (= (and b!1469908 ((_ is Concat!6875) (regOne!8611 (regex!2735 (h!20797 rules!4290))))) b!1470062))

(assert (= (and b!1469908 ((_ is Star!4049) (regOne!8611 (regex!2735 (h!20797 rules!4290))))) b!1470063))

(assert (= (and b!1469908 ((_ is Union!4049) (regOne!8611 (regex!2735 (h!20797 rules!4290))))) b!1470064))

(declare-fun e!938634 () Bool)

(assert (=> b!1469908 (= tp!414495 e!938634)))

(declare-fun b!1470068 () Bool)

(declare-fun tp!414513 () Bool)

(declare-fun tp!414514 () Bool)

(assert (=> b!1470068 (= e!938634 (and tp!414513 tp!414514))))

(declare-fun b!1470066 () Bool)

(declare-fun tp!414510 () Bool)

(declare-fun tp!414511 () Bool)

(assert (=> b!1470066 (= e!938634 (and tp!414510 tp!414511))))

(declare-fun b!1470065 () Bool)

(assert (=> b!1470065 (= e!938634 tp_is_empty!6915)))

(declare-fun b!1470067 () Bool)

(declare-fun tp!414512 () Bool)

(assert (=> b!1470067 (= e!938634 tp!414512)))

(assert (= (and b!1469908 ((_ is ElementMatch!4049) (regTwo!8611 (regex!2735 (h!20797 rules!4290))))) b!1470065))

(assert (= (and b!1469908 ((_ is Concat!6875) (regTwo!8611 (regex!2735 (h!20797 rules!4290))))) b!1470066))

(assert (= (and b!1469908 ((_ is Star!4049) (regTwo!8611 (regex!2735 (h!20797 rules!4290))))) b!1470067))

(assert (= (and b!1469908 ((_ is Union!4049) (regTwo!8611 (regex!2735 (h!20797 rules!4290))))) b!1470068))

(declare-fun b!1470069 () Bool)

(declare-fun e!938635 () Bool)

(declare-fun tp!414515 () Bool)

(assert (=> b!1470069 (= e!938635 (and tp_is_empty!6915 tp!414515))))

(assert (=> b!1469871 (= tp!414453 e!938635)))

(assert (= (and b!1469871 ((_ is Cons!15394) (t!135395 (originalCharacters!3597 (h!20796 l2!3105))))) b!1470069))

(declare-fun e!938636 () Bool)

(assert (=> b!1469907 (= tp!414493 e!938636)))

(declare-fun b!1470073 () Bool)

(declare-fun tp!414519 () Bool)

(declare-fun tp!414520 () Bool)

(assert (=> b!1470073 (= e!938636 (and tp!414519 tp!414520))))

(declare-fun b!1470071 () Bool)

(declare-fun tp!414516 () Bool)

(declare-fun tp!414517 () Bool)

(assert (=> b!1470071 (= e!938636 (and tp!414516 tp!414517))))

(declare-fun b!1470070 () Bool)

(assert (=> b!1470070 (= e!938636 tp_is_empty!6915)))

(declare-fun b!1470072 () Bool)

(declare-fun tp!414518 () Bool)

(assert (=> b!1470072 (= e!938636 tp!414518)))

(assert (= (and b!1469907 ((_ is ElementMatch!4049) (reg!4378 (regex!2735 (h!20797 rules!4290))))) b!1470070))

(assert (= (and b!1469907 ((_ is Concat!6875) (reg!4378 (regex!2735 (h!20797 rules!4290))))) b!1470071))

(assert (= (and b!1469907 ((_ is Star!4049) (reg!4378 (regex!2735 (h!20797 rules!4290))))) b!1470072))

(assert (= (and b!1469907 ((_ is Union!4049) (reg!4378 (regex!2735 (h!20797 rules!4290))))) b!1470073))

(declare-fun e!938637 () Bool)

(assert (=> b!1469888 (= tp!414473 e!938637)))

(declare-fun b!1470077 () Bool)

(declare-fun tp!414524 () Bool)

(declare-fun tp!414525 () Bool)

(assert (=> b!1470077 (= e!938637 (and tp!414524 tp!414525))))

(declare-fun b!1470075 () Bool)

(declare-fun tp!414521 () Bool)

(declare-fun tp!414522 () Bool)

(assert (=> b!1470075 (= e!938637 (and tp!414521 tp!414522))))

(declare-fun b!1470074 () Bool)

(assert (=> b!1470074 (= e!938637 tp_is_empty!6915)))

(declare-fun b!1470076 () Bool)

(declare-fun tp!414523 () Bool)

(assert (=> b!1470076 (= e!938637 tp!414523)))

(assert (= (and b!1469888 ((_ is ElementMatch!4049) (regex!2735 (rule!4512 (h!20796 (t!135396 l2!3105)))))) b!1470074))

(assert (= (and b!1469888 ((_ is Concat!6875) (regex!2735 (rule!4512 (h!20796 (t!135396 l2!3105)))))) b!1470075))

(assert (= (and b!1469888 ((_ is Star!4049) (regex!2735 (rule!4512 (h!20796 (t!135396 l2!3105)))))) b!1470076))

(assert (= (and b!1469888 ((_ is Union!4049) (regex!2735 (rule!4512 (h!20796 (t!135396 l2!3105)))))) b!1470077))

(declare-fun e!938638 () Bool)

(assert (=> b!1469893 (= tp!414477 e!938638)))

(declare-fun b!1470081 () Bool)

(declare-fun tp!414529 () Bool)

(declare-fun tp!414530 () Bool)

(assert (=> b!1470081 (= e!938638 (and tp!414529 tp!414530))))

(declare-fun b!1470079 () Bool)

(declare-fun tp!414526 () Bool)

(declare-fun tp!414527 () Bool)

(assert (=> b!1470079 (= e!938638 (and tp!414526 tp!414527))))

(declare-fun b!1470078 () Bool)

(assert (=> b!1470078 (= e!938638 tp_is_empty!6915)))

(declare-fun b!1470080 () Bool)

(declare-fun tp!414528 () Bool)

(assert (=> b!1470080 (= e!938638 tp!414528)))

(assert (= (and b!1469893 ((_ is ElementMatch!4049) (regOne!8611 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470078))

(assert (= (and b!1469893 ((_ is Concat!6875) (regOne!8611 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470079))

(assert (= (and b!1469893 ((_ is Star!4049) (regOne!8611 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470080))

(assert (= (and b!1469893 ((_ is Union!4049) (regOne!8611 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470081))

(declare-fun e!938639 () Bool)

(assert (=> b!1469893 (= tp!414478 e!938639)))

(declare-fun b!1470085 () Bool)

(declare-fun tp!414534 () Bool)

(declare-fun tp!414535 () Bool)

(assert (=> b!1470085 (= e!938639 (and tp!414534 tp!414535))))

(declare-fun b!1470083 () Bool)

(declare-fun tp!414531 () Bool)

(declare-fun tp!414532 () Bool)

(assert (=> b!1470083 (= e!938639 (and tp!414531 tp!414532))))

(declare-fun b!1470082 () Bool)

(assert (=> b!1470082 (= e!938639 tp_is_empty!6915)))

(declare-fun b!1470084 () Bool)

(declare-fun tp!414533 () Bool)

(assert (=> b!1470084 (= e!938639 tp!414533)))

(assert (= (and b!1469893 ((_ is ElementMatch!4049) (regTwo!8611 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470082))

(assert (= (and b!1469893 ((_ is Concat!6875) (regTwo!8611 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470083))

(assert (= (and b!1469893 ((_ is Star!4049) (regTwo!8611 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470084))

(assert (= (and b!1469893 ((_ is Union!4049) (regTwo!8611 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470085))

(declare-fun b!1470088 () Bool)

(declare-fun e!938642 () Bool)

(assert (=> b!1470088 (= e!938642 true)))

(declare-fun b!1470087 () Bool)

(declare-fun e!938641 () Bool)

(assert (=> b!1470087 (= e!938641 e!938642)))

(declare-fun b!1470086 () Bool)

(declare-fun e!938640 () Bool)

(assert (=> b!1470086 (= e!938640 e!938641)))

(assert (=> b!1469711 e!938640))

(assert (= b!1470087 b!1470088))

(assert (= b!1470086 b!1470087))

(assert (= (and b!1469711 ((_ is Cons!15396) (t!135397 rules!4290))) b!1470086))

(assert (=> b!1470088 (< (dynLambda!6983 order!9237 (toValue!4054 (transformation!2735 (h!20797 (t!135397 rules!4290))))) (dynLambda!6984 order!9239 lambda!63424))))

(assert (=> b!1470088 (< (dynLambda!6985 order!9241 (toChars!3913 (transformation!2735 (h!20797 (t!135397 rules!4290))))) (dynLambda!6984 order!9239 lambda!63424))))

(declare-fun e!938643 () Bool)

(assert (=> b!1469891 (= tp!414474 e!938643)))

(declare-fun b!1470092 () Bool)

(declare-fun tp!414539 () Bool)

(declare-fun tp!414540 () Bool)

(assert (=> b!1470092 (= e!938643 (and tp!414539 tp!414540))))

(declare-fun b!1470090 () Bool)

(declare-fun tp!414536 () Bool)

(declare-fun tp!414537 () Bool)

(assert (=> b!1470090 (= e!938643 (and tp!414536 tp!414537))))

(declare-fun b!1470089 () Bool)

(assert (=> b!1470089 (= e!938643 tp_is_empty!6915)))

(declare-fun b!1470091 () Bool)

(declare-fun tp!414538 () Bool)

(assert (=> b!1470091 (= e!938643 tp!414538)))

(assert (= (and b!1469891 ((_ is ElementMatch!4049) (regOne!8610 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470089))

(assert (= (and b!1469891 ((_ is Concat!6875) (regOne!8610 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470090))

(assert (= (and b!1469891 ((_ is Star!4049) (regOne!8610 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470091))

(assert (= (and b!1469891 ((_ is Union!4049) (regOne!8610 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470092))

(declare-fun e!938644 () Bool)

(assert (=> b!1469891 (= tp!414475 e!938644)))

(declare-fun b!1470096 () Bool)

(declare-fun tp!414544 () Bool)

(declare-fun tp!414545 () Bool)

(assert (=> b!1470096 (= e!938644 (and tp!414544 tp!414545))))

(declare-fun b!1470094 () Bool)

(declare-fun tp!414541 () Bool)

(declare-fun tp!414542 () Bool)

(assert (=> b!1470094 (= e!938644 (and tp!414541 tp!414542))))

(declare-fun b!1470093 () Bool)

(assert (=> b!1470093 (= e!938644 tp_is_empty!6915)))

(declare-fun b!1470095 () Bool)

(declare-fun tp!414543 () Bool)

(assert (=> b!1470095 (= e!938644 tp!414543)))

(assert (= (and b!1469891 ((_ is ElementMatch!4049) (regTwo!8610 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470093))

(assert (= (and b!1469891 ((_ is Concat!6875) (regTwo!8610 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470094))

(assert (= (and b!1469891 ((_ is Star!4049) (regTwo!8610 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470095))

(assert (= (and b!1469891 ((_ is Union!4049) (regTwo!8610 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470096))

(declare-fun b!1470097 () Bool)

(declare-fun e!938645 () Bool)

(declare-fun tp!414546 () Bool)

(assert (=> b!1470097 (= e!938645 (and tp_is_empty!6915 tp!414546))))

(assert (=> b!1469887 (= tp!414469 e!938645)))

(assert (= (and b!1469887 ((_ is Cons!15394) (originalCharacters!3597 (h!20796 (t!135396 l2!3105))))) b!1470097))

(declare-fun e!938646 () Bool)

(assert (=> b!1469892 (= tp!414476 e!938646)))

(declare-fun b!1470101 () Bool)

(declare-fun tp!414550 () Bool)

(declare-fun tp!414551 () Bool)

(assert (=> b!1470101 (= e!938646 (and tp!414550 tp!414551))))

(declare-fun b!1470099 () Bool)

(declare-fun tp!414547 () Bool)

(declare-fun tp!414548 () Bool)

(assert (=> b!1470099 (= e!938646 (and tp!414547 tp!414548))))

(declare-fun b!1470098 () Bool)

(assert (=> b!1470098 (= e!938646 tp_is_empty!6915)))

(declare-fun b!1470100 () Bool)

(declare-fun tp!414549 () Bool)

(assert (=> b!1470100 (= e!938646 tp!414549)))

(assert (= (and b!1469892 ((_ is ElementMatch!4049) (reg!4378 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470098))

(assert (= (and b!1469892 ((_ is Concat!6875) (reg!4378 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470099))

(assert (= (and b!1469892 ((_ is Star!4049) (reg!4378 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470100))

(assert (= (and b!1469892 ((_ is Union!4049) (reg!4378 (regex!2735 (rule!4512 (h!20796 l1!3136)))))) b!1470101))

(declare-fun b!1470105 () Bool)

(declare-fun b_free!37063 () Bool)

(declare-fun b_next!37767 () Bool)

(assert (=> b!1470105 (= b_free!37063 (not b_next!37767))))

(declare-fun tp!414553 () Bool)

(declare-fun b_and!100725 () Bool)

(assert (=> b!1470105 (= tp!414553 b_and!100725)))

(declare-fun b_free!37065 () Bool)

(declare-fun b_next!37769 () Bool)

(assert (=> b!1470105 (= b_free!37065 (not b_next!37769))))

(declare-fun tb!83221 () Bool)

(declare-fun t!135506 () Bool)

(assert (=> (and b!1470105 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 (t!135396 l2!3105)))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) t!135506) tb!83221))

(declare-fun result!100038 () Bool)

(assert (= result!100038 result!99960))

(assert (=> b!1469810 t!135506))

(declare-fun t!135508 () Bool)

(declare-fun tb!83223 () Bool)

(assert (=> (and b!1470105 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 (t!135396 l2!3105)))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105))))) t!135508) tb!83223))

(declare-fun result!100040 () Bool)

(assert (= result!100040 result!99968))

(assert (=> b!1469840 t!135508))

(declare-fun t!135510 () Bool)

(declare-fun tb!83225 () Bool)

(assert (=> (and b!1470105 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 (t!135396 l2!3105)))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105)))))) t!135510) tb!83225))

(declare-fun result!100042 () Bool)

(assert (= result!100042 result!99994))

(assert (=> b!1469951 t!135510))

(declare-fun tb!83227 () Bool)

(declare-fun t!135512 () Bool)

(assert (=> (and b!1470105 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 (t!135396 l2!3105)))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136)))))) t!135512) tb!83227))

(declare-fun result!100044 () Bool)

(assert (= result!100044 result!100018))

(assert (=> b!1470023 t!135512))

(declare-fun b_and!100727 () Bool)

(declare-fun tp!414554 () Bool)

(assert (=> b!1470105 (= tp!414554 (and (=> t!135506 result!100038) (=> t!135508 result!100040) (=> t!135510 result!100042) (=> t!135512 result!100044) b_and!100727))))

(declare-fun e!938651 () Bool)

(assert (=> b!1469886 (= tp!414472 e!938651)))

(declare-fun e!938652 () Bool)

(declare-fun tp!414556 () Bool)

(declare-fun e!938650 () Bool)

(declare-fun b!1470104 () Bool)

(assert (=> b!1470104 (= e!938650 (and tp!414556 (inv!20588 (tag!2999 (rule!4512 (h!20796 (t!135396 (t!135396 l2!3105)))))) (inv!20591 (transformation!2735 (rule!4512 (h!20796 (t!135396 (t!135396 l2!3105)))))) e!938652))))

(declare-fun tp!414552 () Bool)

(declare-fun b!1470103 () Bool)

(declare-fun e!938648 () Bool)

(assert (=> b!1470103 (= e!938648 (and (inv!21 (value!87595 (h!20796 (t!135396 (t!135396 l2!3105))))) e!938650 tp!414552))))

(assert (=> b!1470105 (= e!938652 (and tp!414553 tp!414554))))

(declare-fun tp!414555 () Bool)

(declare-fun b!1470102 () Bool)

(assert (=> b!1470102 (= e!938651 (and (inv!20592 (h!20796 (t!135396 (t!135396 l2!3105)))) e!938648 tp!414555))))

(assert (= b!1470104 b!1470105))

(assert (= b!1470103 b!1470104))

(assert (= b!1470102 b!1470103))

(assert (= (and b!1469886 ((_ is Cons!15395) (t!135396 (t!135396 l2!3105)))) b!1470102))

(declare-fun m!1714435 () Bool)

(assert (=> b!1470104 m!1714435))

(declare-fun m!1714437 () Bool)

(assert (=> b!1470104 m!1714437))

(declare-fun m!1714439 () Bool)

(assert (=> b!1470103 m!1714439))

(declare-fun m!1714441 () Bool)

(assert (=> b!1470102 m!1714441))

(declare-fun e!938653 () Bool)

(assert (=> b!1469903 (= tp!414487 e!938653)))

(declare-fun b!1470109 () Bool)

(declare-fun tp!414560 () Bool)

(declare-fun tp!414561 () Bool)

(assert (=> b!1470109 (= e!938653 (and tp!414560 tp!414561))))

(declare-fun b!1470107 () Bool)

(declare-fun tp!414557 () Bool)

(declare-fun tp!414558 () Bool)

(assert (=> b!1470107 (= e!938653 (and tp!414557 tp!414558))))

(declare-fun b!1470106 () Bool)

(assert (=> b!1470106 (= e!938653 tp_is_empty!6915)))

(declare-fun b!1470108 () Bool)

(declare-fun tp!414559 () Bool)

(assert (=> b!1470108 (= e!938653 tp!414559)))

(assert (= (and b!1469903 ((_ is ElementMatch!4049) (regex!2735 (h!20797 (t!135397 rules!4290))))) b!1470106))

(assert (= (and b!1469903 ((_ is Concat!6875) (regex!2735 (h!20797 (t!135397 rules!4290))))) b!1470107))

(assert (= (and b!1469903 ((_ is Star!4049) (regex!2735 (h!20797 (t!135397 rules!4290))))) b!1470108))

(assert (= (and b!1469903 ((_ is Union!4049) (regex!2735 (h!20797 (t!135397 rules!4290))))) b!1470109))

(declare-fun b!1470112 () Bool)

(declare-fun e!938656 () Bool)

(assert (=> b!1470112 (= e!938656 true)))

(declare-fun b!1470111 () Bool)

(declare-fun e!938655 () Bool)

(assert (=> b!1470111 (= e!938655 e!938656)))

(declare-fun b!1470110 () Bool)

(declare-fun e!938654 () Bool)

(assert (=> b!1470110 (= e!938654 e!938655)))

(assert (=> b!1469803 e!938654))

(assert (= b!1470111 b!1470112))

(assert (= b!1470110 b!1470111))

(assert (= (and b!1469803 ((_ is Cons!15396) (t!135397 rules!4290))) b!1470110))

(assert (=> b!1470112 (< (dynLambda!6983 order!9237 (toValue!4054 (transformation!2735 (h!20797 (t!135397 rules!4290))))) (dynLambda!6984 order!9239 lambda!63432))))

(assert (=> b!1470112 (< (dynLambda!6985 order!9241 (toChars!3913 (transformation!2735 (h!20797 (t!135397 rules!4290))))) (dynLambda!6984 order!9239 lambda!63432))))

(declare-fun e!938657 () Bool)

(assert (=> b!1469883 (= tp!414464 e!938657)))

(declare-fun b!1470116 () Bool)

(declare-fun tp!414565 () Bool)

(declare-fun tp!414566 () Bool)

(assert (=> b!1470116 (= e!938657 (and tp!414565 tp!414566))))

(declare-fun b!1470114 () Bool)

(declare-fun tp!414562 () Bool)

(declare-fun tp!414563 () Bool)

(assert (=> b!1470114 (= e!938657 (and tp!414562 tp!414563))))

(declare-fun b!1470113 () Bool)

(assert (=> b!1470113 (= e!938657 tp_is_empty!6915)))

(declare-fun b!1470115 () Bool)

(declare-fun tp!414564 () Bool)

(assert (=> b!1470115 (= e!938657 tp!414564)))

(assert (= (and b!1469883 ((_ is ElementMatch!4049) (regOne!8610 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470113))

(assert (= (and b!1469883 ((_ is Concat!6875) (regOne!8610 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470114))

(assert (= (and b!1469883 ((_ is Star!4049) (regOne!8610 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470115))

(assert (= (and b!1469883 ((_ is Union!4049) (regOne!8610 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470116))

(declare-fun e!938658 () Bool)

(assert (=> b!1469883 (= tp!414465 e!938658)))

(declare-fun b!1470120 () Bool)

(declare-fun tp!414570 () Bool)

(declare-fun tp!414571 () Bool)

(assert (=> b!1470120 (= e!938658 (and tp!414570 tp!414571))))

(declare-fun b!1470118 () Bool)

(declare-fun tp!414567 () Bool)

(declare-fun tp!414568 () Bool)

(assert (=> b!1470118 (= e!938658 (and tp!414567 tp!414568))))

(declare-fun b!1470117 () Bool)

(assert (=> b!1470117 (= e!938658 tp_is_empty!6915)))

(declare-fun b!1470119 () Bool)

(declare-fun tp!414569 () Bool)

(assert (=> b!1470119 (= e!938658 tp!414569)))

(assert (= (and b!1469883 ((_ is ElementMatch!4049) (regTwo!8610 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470117))

(assert (= (and b!1469883 ((_ is Concat!6875) (regTwo!8610 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470118))

(assert (= (and b!1469883 ((_ is Star!4049) (regTwo!8610 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470119))

(assert (= (and b!1469883 ((_ is Union!4049) (regTwo!8610 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470120))

(declare-fun b!1470121 () Bool)

(declare-fun e!938659 () Bool)

(declare-fun tp!414572 () Bool)

(assert (=> b!1470121 (= e!938659 (and tp_is_empty!6915 tp!414572))))

(assert (=> b!1469864 (= tp!414446 e!938659)))

(assert (= (and b!1469864 ((_ is Cons!15394) (originalCharacters!3597 (h!20796 (t!135396 l1!3136))))) b!1470121))

(declare-fun b!1470125 () Bool)

(declare-fun b_free!37067 () Bool)

(declare-fun b_next!37771 () Bool)

(assert (=> b!1470125 (= b_free!37067 (not b_next!37771))))

(declare-fun tp!414574 () Bool)

(declare-fun b_and!100729 () Bool)

(assert (=> b!1470125 (= tp!414574 b_and!100729)))

(declare-fun b_free!37069 () Bool)

(declare-fun b_next!37773 () Bool)

(assert (=> b!1470125 (= b_free!37069 (not b_next!37773))))

(declare-fun t!135514 () Bool)

(declare-fun tb!83229 () Bool)

(assert (=> (and b!1470125 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 (t!135396 l1!3136)))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136))))) t!135514) tb!83229))

(declare-fun result!100046 () Bool)

(assert (= result!100046 result!99960))

(assert (=> b!1469810 t!135514))

(declare-fun tb!83231 () Bool)

(declare-fun t!135516 () Bool)

(assert (=> (and b!1470125 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 (t!135396 l1!3136)))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105))))) t!135516) tb!83231))

(declare-fun result!100048 () Bool)

(assert (= result!100048 result!99968))

(assert (=> b!1469840 t!135516))

(declare-fun t!135518 () Bool)

(declare-fun tb!83233 () Bool)

(assert (=> (and b!1470125 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 (t!135396 l1!3136)))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105)))))) t!135518) tb!83233))

(declare-fun result!100050 () Bool)

(assert (= result!100050 result!99994))

(assert (=> b!1469951 t!135518))

(declare-fun t!135520 () Bool)

(declare-fun tb!83235 () Bool)

(assert (=> (and b!1470125 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 (t!135396 l1!3136)))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136)))))) t!135520) tb!83235))

(declare-fun result!100052 () Bool)

(assert (= result!100052 result!100018))

(assert (=> b!1470023 t!135520))

(declare-fun tp!414575 () Bool)

(declare-fun b_and!100731 () Bool)

(assert (=> b!1470125 (= tp!414575 (and (=> t!135514 result!100046) (=> t!135516 result!100048) (=> t!135518 result!100050) (=> t!135520 result!100052) b_and!100731))))

(declare-fun e!938664 () Bool)

(assert (=> b!1469863 (= tp!414449 e!938664)))

(declare-fun e!938663 () Bool)

(declare-fun b!1470124 () Bool)

(declare-fun e!938665 () Bool)

(declare-fun tp!414577 () Bool)

(assert (=> b!1470124 (= e!938663 (and tp!414577 (inv!20588 (tag!2999 (rule!4512 (h!20796 (t!135396 (t!135396 l1!3136)))))) (inv!20591 (transformation!2735 (rule!4512 (h!20796 (t!135396 (t!135396 l1!3136)))))) e!938665))))

(declare-fun tp!414573 () Bool)

(declare-fun b!1470123 () Bool)

(declare-fun e!938661 () Bool)

(assert (=> b!1470123 (= e!938661 (and (inv!21 (value!87595 (h!20796 (t!135396 (t!135396 l1!3136))))) e!938663 tp!414573))))

(assert (=> b!1470125 (= e!938665 (and tp!414574 tp!414575))))

(declare-fun b!1470122 () Bool)

(declare-fun tp!414576 () Bool)

(assert (=> b!1470122 (= e!938664 (and (inv!20592 (h!20796 (t!135396 (t!135396 l1!3136)))) e!938661 tp!414576))))

(assert (= b!1470124 b!1470125))

(assert (= b!1470123 b!1470124))

(assert (= b!1470122 b!1470123))

(assert (= (and b!1469863 ((_ is Cons!15395) (t!135396 (t!135396 l1!3136)))) b!1470122))

(declare-fun m!1714443 () Bool)

(assert (=> b!1470124 m!1714443))

(declare-fun m!1714445 () Bool)

(assert (=> b!1470124 m!1714445))

(declare-fun m!1714447 () Bool)

(assert (=> b!1470123 m!1714447))

(declare-fun m!1714449 () Bool)

(assert (=> b!1470122 m!1714449))

(declare-fun b!1470128 () Bool)

(declare-fun e!938668 () Bool)

(assert (=> b!1470128 (= e!938668 true)))

(declare-fun b!1470127 () Bool)

(declare-fun e!938667 () Bool)

(assert (=> b!1470127 (= e!938667 e!938668)))

(declare-fun b!1470126 () Bool)

(declare-fun e!938666 () Bool)

(assert (=> b!1470126 (= e!938666 e!938667)))

(assert (=> b!1469837 e!938666))

(assert (= b!1470127 b!1470128))

(assert (= b!1470126 b!1470127))

(assert (= (and b!1469837 ((_ is Cons!15396) (t!135397 rules!4290))) b!1470126))

(assert (=> b!1470128 (< (dynLambda!6983 order!9237 (toValue!4054 (transformation!2735 (h!20797 (t!135397 rules!4290))))) (dynLambda!6984 order!9239 lambda!63433))))

(assert (=> b!1470128 (< (dynLambda!6985 order!9241 (toChars!3913 (transformation!2735 (h!20797 (t!135397 rules!4290))))) (dynLambda!6984 order!9239 lambda!63433))))

(declare-fun e!938669 () Bool)

(assert (=> b!1469906 (= tp!414491 e!938669)))

(declare-fun b!1470132 () Bool)

(declare-fun tp!414581 () Bool)

(declare-fun tp!414582 () Bool)

(assert (=> b!1470132 (= e!938669 (and tp!414581 tp!414582))))

(declare-fun b!1470130 () Bool)

(declare-fun tp!414578 () Bool)

(declare-fun tp!414579 () Bool)

(assert (=> b!1470130 (= e!938669 (and tp!414578 tp!414579))))

(declare-fun b!1470129 () Bool)

(assert (=> b!1470129 (= e!938669 tp_is_empty!6915)))

(declare-fun b!1470131 () Bool)

(declare-fun tp!414580 () Bool)

(assert (=> b!1470131 (= e!938669 tp!414580)))

(assert (= (and b!1469906 ((_ is ElementMatch!4049) (regOne!8610 (regex!2735 (h!20797 rules!4290))))) b!1470129))

(assert (= (and b!1469906 ((_ is Concat!6875) (regOne!8610 (regex!2735 (h!20797 rules!4290))))) b!1470130))

(assert (= (and b!1469906 ((_ is Star!4049) (regOne!8610 (regex!2735 (h!20797 rules!4290))))) b!1470131))

(assert (= (and b!1469906 ((_ is Union!4049) (regOne!8610 (regex!2735 (h!20797 rules!4290))))) b!1470132))

(declare-fun e!938670 () Bool)

(assert (=> b!1469906 (= tp!414492 e!938670)))

(declare-fun b!1470136 () Bool)

(declare-fun tp!414586 () Bool)

(declare-fun tp!414587 () Bool)

(assert (=> b!1470136 (= e!938670 (and tp!414586 tp!414587))))

(declare-fun b!1470134 () Bool)

(declare-fun tp!414583 () Bool)

(declare-fun tp!414584 () Bool)

(assert (=> b!1470134 (= e!938670 (and tp!414583 tp!414584))))

(declare-fun b!1470133 () Bool)

(assert (=> b!1470133 (= e!938670 tp_is_empty!6915)))

(declare-fun b!1470135 () Bool)

(declare-fun tp!414585 () Bool)

(assert (=> b!1470135 (= e!938670 tp!414585)))

(assert (= (and b!1469906 ((_ is ElementMatch!4049) (regTwo!8610 (regex!2735 (h!20797 rules!4290))))) b!1470133))

(assert (= (and b!1469906 ((_ is Concat!6875) (regTwo!8610 (regex!2735 (h!20797 rules!4290))))) b!1470134))

(assert (= (and b!1469906 ((_ is Star!4049) (regTwo!8610 (regex!2735 (h!20797 rules!4290))))) b!1470135))

(assert (= (and b!1469906 ((_ is Union!4049) (regTwo!8610 (regex!2735 (h!20797 rules!4290))))) b!1470136))

(declare-fun tp!414595 () Bool)

(declare-fun e!938675 () Bool)

(declare-fun b!1470145 () Bool)

(declare-fun tp!414596 () Bool)

(assert (=> b!1470145 (= e!938675 (and (inv!20595 (left!13034 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105)))))) tp!414595 (inv!20595 (right!13364 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105)))))) tp!414596))))

(declare-fun b!1470147 () Bool)

(declare-fun e!938676 () Bool)

(declare-fun tp!414594 () Bool)

(assert (=> b!1470147 (= e!938676 tp!414594)))

(declare-fun b!1470146 () Bool)

(declare-fun inv!20602 (IArray!10509) Bool)

(assert (=> b!1470146 (= e!938675 (and (inv!20602 (xs!8007 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105)))))) e!938676))))

(assert (=> b!1469842 (= tp!414435 (and (inv!20595 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105))))) e!938675))))

(assert (= (and b!1469842 ((_ is Node!5252) (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105)))))) b!1470145))

(assert (= b!1470146 b!1470147))

(assert (= (and b!1469842 ((_ is Leaf!7821) (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (value!87595 (h!20796 l2!3105)))))) b!1470146))

(declare-fun m!1714451 () Bool)

(assert (=> b!1470145 m!1714451))

(declare-fun m!1714453 () Bool)

(assert (=> b!1470145 m!1714453))

(declare-fun m!1714455 () Bool)

(assert (=> b!1470146 m!1714455))

(assert (=> b!1469842 m!1714119))

(declare-fun e!938677 () Bool)

(assert (=> b!1469884 (= tp!414466 e!938677)))

(declare-fun b!1470151 () Bool)

(declare-fun tp!414600 () Bool)

(declare-fun tp!414601 () Bool)

(assert (=> b!1470151 (= e!938677 (and tp!414600 tp!414601))))

(declare-fun b!1470149 () Bool)

(declare-fun tp!414597 () Bool)

(declare-fun tp!414598 () Bool)

(assert (=> b!1470149 (= e!938677 (and tp!414597 tp!414598))))

(declare-fun b!1470148 () Bool)

(assert (=> b!1470148 (= e!938677 tp_is_empty!6915)))

(declare-fun b!1470150 () Bool)

(declare-fun tp!414599 () Bool)

(assert (=> b!1470150 (= e!938677 tp!414599)))

(assert (= (and b!1469884 ((_ is ElementMatch!4049) (reg!4378 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470148))

(assert (= (and b!1469884 ((_ is Concat!6875) (reg!4378 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470149))

(assert (= (and b!1469884 ((_ is Star!4049) (reg!4378 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470150))

(assert (= (and b!1469884 ((_ is Union!4049) (reg!4378 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470151))

(declare-fun e!938678 () Bool)

(assert (=> b!1469865 (= tp!414450 e!938678)))

(declare-fun b!1470155 () Bool)

(declare-fun tp!414605 () Bool)

(declare-fun tp!414606 () Bool)

(assert (=> b!1470155 (= e!938678 (and tp!414605 tp!414606))))

(declare-fun b!1470153 () Bool)

(declare-fun tp!414602 () Bool)

(declare-fun tp!414603 () Bool)

(assert (=> b!1470153 (= e!938678 (and tp!414602 tp!414603))))

(declare-fun b!1470152 () Bool)

(assert (=> b!1470152 (= e!938678 tp_is_empty!6915)))

(declare-fun b!1470154 () Bool)

(declare-fun tp!414604 () Bool)

(assert (=> b!1470154 (= e!938678 tp!414604)))

(assert (= (and b!1469865 ((_ is ElementMatch!4049) (regex!2735 (rule!4512 (h!20796 (t!135396 l1!3136)))))) b!1470152))

(assert (= (and b!1469865 ((_ is Concat!6875) (regex!2735 (rule!4512 (h!20796 (t!135396 l1!3136)))))) b!1470153))

(assert (= (and b!1469865 ((_ is Star!4049) (regex!2735 (rule!4512 (h!20796 (t!135396 l1!3136)))))) b!1470154))

(assert (= (and b!1469865 ((_ is Union!4049) (regex!2735 (rule!4512 (h!20796 (t!135396 l1!3136)))))) b!1470155))

(declare-fun tp!414608 () Bool)

(declare-fun b!1470156 () Bool)

(declare-fun tp!414609 () Bool)

(declare-fun e!938679 () Bool)

(assert (=> b!1470156 (= e!938679 (and (inv!20595 (left!13034 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136)))))) tp!414608 (inv!20595 (right!13364 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136)))))) tp!414609))))

(declare-fun b!1470158 () Bool)

(declare-fun e!938680 () Bool)

(declare-fun tp!414607 () Bool)

(assert (=> b!1470158 (= e!938680 tp!414607)))

(declare-fun b!1470157 () Bool)

(assert (=> b!1470157 (= e!938679 (and (inv!20602 (xs!8007 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136)))))) e!938680))))

(assert (=> b!1469816 (= tp!414434 (and (inv!20595 (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136))))) e!938679))))

(assert (= (and b!1469816 ((_ is Node!5252) (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136)))))) b!1470156))

(assert (= b!1470157 b!1470158))

(assert (= (and b!1469816 ((_ is Leaf!7821) (c!242180 (dynLambda!6986 (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (value!87595 (h!20796 l1!3136)))))) b!1470157))

(declare-fun m!1714457 () Bool)

(assert (=> b!1470156 m!1714457))

(declare-fun m!1714459 () Bool)

(assert (=> b!1470156 m!1714459))

(declare-fun m!1714461 () Bool)

(assert (=> b!1470157 m!1714461))

(assert (=> b!1469816 m!1714091))

(declare-fun e!938681 () Bool)

(assert (=> b!1469885 (= tp!414467 e!938681)))

(declare-fun b!1470162 () Bool)

(declare-fun tp!414613 () Bool)

(declare-fun tp!414614 () Bool)

(assert (=> b!1470162 (= e!938681 (and tp!414613 tp!414614))))

(declare-fun b!1470160 () Bool)

(declare-fun tp!414610 () Bool)

(declare-fun tp!414611 () Bool)

(assert (=> b!1470160 (= e!938681 (and tp!414610 tp!414611))))

(declare-fun b!1470159 () Bool)

(assert (=> b!1470159 (= e!938681 tp_is_empty!6915)))

(declare-fun b!1470161 () Bool)

(declare-fun tp!414612 () Bool)

(assert (=> b!1470161 (= e!938681 tp!414612)))

(assert (= (and b!1469885 ((_ is ElementMatch!4049) (regOne!8611 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470159))

(assert (= (and b!1469885 ((_ is Concat!6875) (regOne!8611 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470160))

(assert (= (and b!1469885 ((_ is Star!4049) (regOne!8611 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470161))

(assert (= (and b!1469885 ((_ is Union!4049) (regOne!8611 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470162))

(declare-fun e!938682 () Bool)

(assert (=> b!1469885 (= tp!414468 e!938682)))

(declare-fun b!1470166 () Bool)

(declare-fun tp!414618 () Bool)

(declare-fun tp!414619 () Bool)

(assert (=> b!1470166 (= e!938682 (and tp!414618 tp!414619))))

(declare-fun b!1470164 () Bool)

(declare-fun tp!414615 () Bool)

(declare-fun tp!414616 () Bool)

(assert (=> b!1470164 (= e!938682 (and tp!414615 tp!414616))))

(declare-fun b!1470163 () Bool)

(assert (=> b!1470163 (= e!938682 tp_is_empty!6915)))

(declare-fun b!1470165 () Bool)

(declare-fun tp!414617 () Bool)

(assert (=> b!1470165 (= e!938682 tp!414617)))

(assert (= (and b!1469885 ((_ is ElementMatch!4049) (regTwo!8611 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470163))

(assert (= (and b!1469885 ((_ is Concat!6875) (regTwo!8611 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470164))

(assert (= (and b!1469885 ((_ is Star!4049) (regTwo!8611 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470165))

(assert (= (and b!1469885 ((_ is Union!4049) (regTwo!8611 (regex!2735 (rule!4512 (h!20796 l2!3105)))))) b!1470166))

(declare-fun b_lambda!45863 () Bool)

(assert (= b_lambda!45847 (or d!431033 b_lambda!45863)))

(declare-fun bs!345025 () Bool)

(declare-fun d!431205 () Bool)

(assert (= bs!345025 (and d!431205 d!431033)))

(assert (=> bs!345025 (= (dynLambda!6987 lambda!63433 (h!20796 l1!3136)) (rulesProduceIndividualToken!1256 thiss!27374 rules!4290 (h!20796 l1!3136)))))

(assert (=> bs!345025 m!1714115))

(assert (=> b!1469917 d!431205))

(declare-fun b_lambda!45865 () Bool)

(assert (= b_lambda!45849 (or (and b!1469904 b_free!37057 (= (toChars!3913 (transformation!2735 (h!20797 (t!135397 rules!4290)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))))) (and b!1469889 b_free!37053) (and b!1470125 b_free!37069 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 (t!135396 l1!3136)))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))))) (and b!1470105 b_free!37065 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 (t!135396 l2!3105)))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))))) (and b!1469649 b_free!37025 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))))) (and b!1469640 b_free!37033 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))))) (and b!1469648 b_free!37029 (= (toChars!3913 (transformation!2735 (h!20797 rules!4290))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))))) (and b!1469866 b_free!37049 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))))) (and b!1470059 b_free!37061 (= (toChars!3913 (transformation!2735 (h!20797 (t!135397 (t!135397 rules!4290))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))))) b_lambda!45865)))

(declare-fun b_lambda!45867 () Bool)

(assert (= b_lambda!45859 (or d!431009 b_lambda!45867)))

(declare-fun bs!345026 () Bool)

(declare-fun d!431207 () Bool)

(assert (= bs!345026 (and d!431207 d!431009)))

(assert (=> bs!345026 (= (dynLambda!6987 lambda!63432 (h!20796 l2!3105)) (rulesProduceIndividualToken!1256 thiss!27374 rules!4290 (h!20796 l2!3105)))))

(assert (=> bs!345026 m!1714087))

(assert (=> b!1470031 d!431207))

(declare-fun b_lambda!45869 () Bool)

(assert (= b_lambda!45857 (or (and b!1469648 b_free!37029 (= (toChars!3913 (transformation!2735 (h!20797 rules!4290))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))))) (and b!1469889 b_free!37053 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l2!3105))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))))) (and b!1470059 b_free!37061 (= (toChars!3913 (transformation!2735 (h!20797 (t!135397 (t!135397 rules!4290))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))))) (and b!1470105 b_free!37065 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 (t!135396 l2!3105)))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))))) (and b!1469640 b_free!37033 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l1!3136)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))))) (and b!1470125 b_free!37069 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 (t!135396 l1!3136)))))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))))) (and b!1469904 b_free!37057 (= (toChars!3913 (transformation!2735 (h!20797 (t!135397 rules!4290)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))))) (and b!1469649 b_free!37025 (= (toChars!3913 (transformation!2735 (rule!4512 (h!20796 l2!3105)))) (toChars!3913 (transformation!2735 (rule!4512 (h!20796 (t!135396 l1!3136))))))) (and b!1469866 b_free!37049) b_lambda!45869)))

(declare-fun b_lambda!45871 () Bool)

(assert (= b_lambda!45861 (or d!430985 b_lambda!45871)))

(declare-fun bs!345027 () Bool)

(declare-fun d!431209 () Bool)

(assert (= bs!345027 (and d!431209 d!430985)))

(assert (=> bs!345027 (= (dynLambda!6987 lambda!63424 (h!20796 (list!6153 (seqFromList!1722 l1!3136)))) (rulesProduceIndividualToken!1256 thiss!27374 rules!4290 (h!20796 (list!6153 (seqFromList!1722 l1!3136)))))))

(assert (=> bs!345027 m!1714369))

(assert (=> b!1470052 d!431209))

(check-sat (not b!1470013) (not d!431053) (not d!431175) (not d!431049) (not b!1470136) b_and!100717 (not b!1470058) (not b_next!37731) (not b!1470116) (not b!1470157) (not b!1470027) (not d!431171) (not d!431169) (not b!1470145) (not b!1470097) (not b!1470048) (not d!431087) (not b!1470084) (not b!1469946) (not d!431089) (not b!1470156) b_and!100681 (not b!1470075) b_and!100625 (not b!1469912) (not b!1470160) (not b_lambda!45865) (not b!1469924) (not b_next!37773) (not b!1470014) (not d!431083) (not b!1469842) (not b!1470028) (not b_next!37769) (not b!1470101) (not b_next!37751) (not b!1470123) (not b!1470051) (not b!1470135) (not b!1470124) (not b!1470041) (not b_lambda!45871) (not b!1470134) (not bs!345026) (not b!1469936) (not b!1470077) (not b!1470021) (not b!1470151) b_and!100727 b_and!100713 (not b!1469937) b_and!100711 (not b!1469935) (not b!1470056) (not b!1470068) (not b!1470096) (not d!431165) (not b!1469923) (not b_next!37737) (not b!1470094) (not b!1469932) (not b!1470165) (not b_next!37727) (not b!1469816) (not d!431179) (not b!1470071) (not d!431191) (not b_next!37767) (not b!1470064) (not b!1470054) b_and!100633 (not b!1470079) (not b!1470126) (not b_next!37753) (not d!431071) (not b!1470104) (not b!1470024) (not b_next!37757) (not d!431189) (not b!1470147) (not b!1470057) (not b!1469951) (not b!1469953) (not b!1470092) (not b!1470033) (not b!1470086) (not b_next!37763) (not b!1470069) (not b!1470099) (not b!1470162) tp_is_empty!6915 b_and!100709 (not b!1470080) (not b!1470114) (not b!1470062) (not b!1470015) b_and!100629 (not b!1470121) (not b_next!37733) (not b!1470153) (not b!1470017) (not b!1470032) (not b!1469918) (not d!431077) (not b!1470060) (not d!431055) (not b!1470023) (not b!1470066) (not b_lambda!45845) (not b_next!37755) (not bs!345025) (not b_next!37761) (not b!1469938) (not b!1470083) (not tb!83201) (not b!1470091) (not bs!345027) (not d!431177) (not b!1470131) (not b!1470154) (not b_next!37765) (not b!1470118) (not b!1470166) b_and!100719 (not b!1470103) (not b!1470109) (not b_lambda!45867) (not b!1470090) (not b!1470025) (not d!431187) (not b!1470040) (not b!1470076) (not b!1469952) (not d!431161) (not b!1470063) b_and!100677 (not b!1470150) (not b!1470053) (not b!1470108) (not b!1470073) (not b!1470035) (not d!431069) (not b!1470095) (not d!431063) (not b_next!37759) (not b!1470081) (not b_next!37735) (not b_next!37771) (not b!1469928) (not b!1470115) (not b!1470034) (not b!1469934) (not b!1470026) (not b!1470100) (not b_lambda!45863) (not b!1470022) (not b!1470164) (not b!1470107) (not b!1470067) (not b!1470158) (not b!1470122) (not d!431195) (not b!1470132) (not d!431199) (not b!1470149) (not b!1470146) (not b!1469925) (not b_lambda!45869) (not b!1470019) b_and!100731 (not b!1470050) b_and!100721 b_and!100673 (not d!431065) (not b!1470072) (not b!1470155) (not d!431059) (not b!1470120) (not b!1470119) b_and!100715 (not b!1470130) (not b!1470161) (not b!1469954) (not b_lambda!45843) (not d!431185) (not d!431163) (not d!431061) (not d!431081) b_and!100723 (not d!431167) (not b!1470102) (not b!1470110) (not tb!83177) (not d!431075) (not b!1470085) b_and!100725 (not b_next!37729) b_and!100729)
(check-sat (not b_next!37751) b_and!100711 (not b_next!37737) (not b_next!37727) (not b_next!37767) (not b_next!37757) (not b_next!37763) (not b_next!37733) (not b_next!37765) b_and!100719 b_and!100677 b_and!100731 b_and!100715 b_and!100723 b_and!100717 (not b_next!37731) b_and!100681 b_and!100625 (not b_next!37773) (not b_next!37769) b_and!100713 b_and!100727 (not b_next!37753) b_and!100633 b_and!100709 b_and!100629 (not b_next!37755) (not b_next!37761) (not b_next!37759) (not b_next!37735) (not b_next!37771) b_and!100721 b_and!100673 b_and!100725 (not b_next!37729) b_and!100729)
