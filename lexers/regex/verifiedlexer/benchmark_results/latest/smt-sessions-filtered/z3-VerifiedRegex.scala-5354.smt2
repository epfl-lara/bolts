; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273178 () Bool)

(assert start!273178)

(declare-fun b!2817134 () Bool)

(declare-fun b_free!80357 () Bool)

(declare-fun b_next!81061 () Bool)

(assert (=> b!2817134 (= b_free!80357 (not b_next!81061))))

(declare-fun tp!899376 () Bool)

(declare-fun b_and!205647 () Bool)

(assert (=> b!2817134 (= tp!899376 b_and!205647)))

(declare-fun b_free!80359 () Bool)

(declare-fun b_next!81063 () Bool)

(assert (=> b!2817134 (= b_free!80359 (not b_next!81063))))

(declare-fun tp!899373 () Bool)

(declare-fun b_and!205649 () Bool)

(assert (=> b!2817134 (= tp!899373 b_and!205649)))

(declare-fun b!2817129 () Bool)

(declare-fun b_free!80361 () Bool)

(declare-fun b_next!81065 () Bool)

(assert (=> b!2817129 (= b_free!80361 (not b_next!81065))))

(declare-fun tp!899368 () Bool)

(declare-fun b_and!205651 () Bool)

(assert (=> b!2817129 (= tp!899368 b_and!205651)))

(declare-fun b_free!80363 () Bool)

(declare-fun b_next!81067 () Bool)

(assert (=> b!2817129 (= b_free!80363 (not b_next!81067))))

(declare-fun tp!899370 () Bool)

(declare-fun b_and!205653 () Bool)

(assert (=> b!2817129 (= tp!899370 b_and!205653)))

(declare-fun b!2817153 () Bool)

(declare-fun e!1781606 () Bool)

(assert (=> b!2817153 (= e!1781606 true)))

(declare-fun b!2817152 () Bool)

(declare-fun e!1781605 () Bool)

(assert (=> b!2817152 (= e!1781605 e!1781606)))

(declare-fun b!2817151 () Bool)

(declare-fun e!1781604 () Bool)

(assert (=> b!2817151 (= e!1781604 e!1781605)))

(declare-fun b!2817139 () Bool)

(assert (=> b!2817139 e!1781604))

(assert (= b!2817152 b!2817153))

(assert (= b!2817151 b!2817152))

(declare-datatypes ((String!36240 0))(
  ( (String!36241 (value!158713 String)) )
))
(declare-datatypes ((C!16816 0))(
  ( (C!16817 (val!10388 Int)) )
))
(declare-datatypes ((List!33094 0))(
  ( (Nil!32970) (Cons!32970 (h!38390 (_ BitVec 16)) (t!230147 List!33094)) )
))
(declare-datatypes ((TokenValue!5157 0))(
  ( (FloatLiteralValue!10314 (text!36544 List!33094)) (TokenValueExt!5156 (__x!21987 Int)) (Broken!25785 (value!158714 List!33094)) (Object!5280) (End!5157) (Def!5157) (Underscore!5157) (Match!5157) (Else!5157) (Error!5157) (Case!5157) (If!5157) (Extends!5157) (Abstract!5157) (Class!5157) (Val!5157) (DelimiterValue!10314 (del!5217 List!33094)) (KeywordValue!5163 (value!158715 List!33094)) (CommentValue!10314 (value!158716 List!33094)) (WhitespaceValue!10314 (value!158717 List!33094)) (IndentationValue!5157 (value!158718 List!33094)) (String!36242) (Int32!5157) (Broken!25786 (value!158719 List!33094)) (Boolean!5158) (Unit!46933) (OperatorValue!5160 (op!5217 List!33094)) (IdentifierValue!10314 (value!158720 List!33094)) (IdentifierValue!10315 (value!158721 List!33094)) (WhitespaceValue!10315 (value!158722 List!33094)) (True!10314) (False!10314) (Broken!25787 (value!158723 List!33094)) (Broken!25788 (value!158724 List!33094)) (True!10315) (RightBrace!5157) (RightBracket!5157) (Colon!5157) (Null!5157) (Comma!5157) (LeftBracket!5157) (False!10315) (LeftBrace!5157) (ImaginaryLiteralValue!5157 (text!36545 List!33094)) (StringLiteralValue!15471 (value!158725 List!33094)) (EOFValue!5157 (value!158726 List!33094)) (IdentValue!5157 (value!158727 List!33094)) (DelimiterValue!10315 (value!158728 List!33094)) (DedentValue!5157 (value!158729 List!33094)) (NewLineValue!5157 (value!158730 List!33094)) (IntegerValue!15471 (value!158731 (_ BitVec 32)) (text!36546 List!33094)) (IntegerValue!15472 (value!158732 Int) (text!36547 List!33094)) (Times!5157) (Or!5157) (Equal!5157) (Minus!5157) (Broken!25789 (value!158733 List!33094)) (And!5157) (Div!5157) (LessEqual!5157) (Mod!5157) (Concat!13474) (Not!5157) (Plus!5157) (SpaceValue!5157 (value!158734 List!33094)) (IntegerValue!15473 (value!158735 Int) (text!36548 List!33094)) (StringLiteralValue!15472 (text!36549 List!33094)) (FloatLiteralValue!10315 (text!36550 List!33094)) (BytesLiteralValue!5157 (value!158736 List!33094)) (CommentValue!10315 (value!158737 List!33094)) (StringLiteralValue!15473 (value!158738 List!33094)) (ErrorTokenValue!5157 (msg!5218 List!33094)) )
))
(declare-datatypes ((List!33095 0))(
  ( (Nil!32971) (Cons!32971 (h!38391 C!16816) (t!230148 List!33095)) )
))
(declare-datatypes ((IArray!20465 0))(
  ( (IArray!20466 (innerList!10290 List!33095)) )
))
(declare-datatypes ((Conc!10230 0))(
  ( (Node!10230 (left!24900 Conc!10230) (right!25230 Conc!10230) (csize!20690 Int) (cheight!10441 Int)) (Leaf!15585 (xs!13342 IArray!20465) (csize!20691 Int)) (Empty!10230) )
))
(declare-datatypes ((BalanceConc!20098 0))(
  ( (BalanceConc!20099 (c!456752 Conc!10230)) )
))
(declare-datatypes ((TokenValueInjection!9742 0))(
  ( (TokenValueInjection!9743 (toValue!6937 Int) (toChars!6796 Int)) )
))
(declare-datatypes ((Regex!8317 0))(
  ( (ElementMatch!8317 (c!456753 C!16816)) (Concat!13475 (regOne!17146 Regex!8317) (regTwo!17146 Regex!8317)) (EmptyExpr!8317) (Star!8317 (reg!8646 Regex!8317)) (EmptyLang!8317) (Union!8317 (regOne!17147 Regex!8317) (regTwo!17147 Regex!8317)) )
))
(declare-datatypes ((Rule!9654 0))(
  ( (Rule!9655 (regex!4927 Regex!8317) (tag!5431 String!36240) (isSeparator!4927 Bool) (transformation!4927 TokenValueInjection!9742)) )
))
(declare-datatypes ((List!33096 0))(
  ( (Nil!32972) (Cons!32972 (h!38392 Rule!9654) (t!230149 List!33096)) )
))
(declare-fun rules!4424 () List!33096)

(get-info :version)

(assert (= (and b!2817139 ((_ is Cons!32972) rules!4424)) b!2817151))

(declare-fun order!17441 () Int)

(declare-fun order!17439 () Int)

(declare-fun lambda!103371 () Int)

(declare-fun dynLambda!13754 (Int Int) Int)

(declare-fun dynLambda!13755 (Int Int) Int)

(assert (=> b!2817153 (< (dynLambda!13754 order!17439 (toValue!6937 (transformation!4927 (h!38392 rules!4424)))) (dynLambda!13755 order!17441 lambda!103371))))

(declare-fun order!17443 () Int)

(declare-fun dynLambda!13756 (Int Int) Int)

(assert (=> b!2817153 (< (dynLambda!13756 order!17443 (toChars!6796 (transformation!4927 (h!38392 rules!4424)))) (dynLambda!13755 order!17441 lambda!103371))))

(declare-fun b!2817128 () Bool)

(declare-fun res!1172363 () Bool)

(declare-fun e!1781594 () Bool)

(assert (=> b!2817128 (=> (not res!1172363) (not e!1781594))))

(declare-datatypes ((Token!9256 0))(
  ( (Token!9257 (value!158739 TokenValue!5157) (rule!7355 Rule!9654) (size!25687 Int) (originalCharacters!5659 List!33095)) )
))
(declare-datatypes ((List!33097 0))(
  ( (Nil!32973) (Cons!32973 (h!38393 Token!9256) (t!230150 List!33097)) )
))
(declare-fun l!6581 () List!33097)

(declare-datatypes ((LexerInterface!4518 0))(
  ( (LexerInterfaceExt!4515 (__x!21988 Int)) (Lexer!4516) )
))
(declare-fun thiss!27755 () LexerInterface!4518)

(declare-fun tokensListTwoByTwoPredicateSeparableList!655 (LexerInterface!4518 List!33097 List!33096) Bool)

(assert (=> b!2817128 (= res!1172363 (tokensListTwoByTwoPredicateSeparableList!655 thiss!27755 l!6581 rules!4424))))

(declare-fun res!1172365 () Bool)

(assert (=> start!273178 (=> (not res!1172365) (not e!1781594))))

(assert (=> start!273178 (= res!1172365 ((_ is Lexer!4516) thiss!27755))))

(assert (=> start!273178 e!1781594))

(assert (=> start!273178 true))

(declare-fun e!1781593 () Bool)

(assert (=> start!273178 e!1781593))

(declare-fun e!1781597 () Bool)

(assert (=> start!273178 e!1781597))

(declare-fun e!1781585 () Bool)

(assert (=> b!2817129 (= e!1781585 (and tp!899368 tp!899370))))

(declare-fun b!2817130 () Bool)

(declare-fun res!1172366 () Bool)

(assert (=> b!2817130 (=> (not res!1172366) (not e!1781594))))

(declare-fun rulesInvariant!3936 (LexerInterface!4518 List!33096) Bool)

(assert (=> b!2817130 (= res!1172366 (rulesInvariant!3936 thiss!27755 rules!4424))))

(declare-fun b!2817131 () Bool)

(declare-fun e!1781596 () Bool)

(declare-fun tp!899371 () Bool)

(assert (=> b!2817131 (= e!1781593 (and e!1781596 tp!899371))))

(declare-fun tp!899375 () Bool)

(declare-fun e!1781595 () Bool)

(declare-fun b!2817132 () Bool)

(declare-fun e!1781587 () Bool)

(declare-fun inv!44884 (String!36240) Bool)

(declare-fun inv!44887 (TokenValueInjection!9742) Bool)

(assert (=> b!2817132 (= e!1781595 (and tp!899375 (inv!44884 (tag!5431 (rule!7355 (h!38393 l!6581)))) (inv!44887 (transformation!4927 (rule!7355 (h!38393 l!6581)))) e!1781587))))

(declare-fun b!2817133 () Bool)

(declare-fun res!1172364 () Bool)

(assert (=> b!2817133 (=> (not res!1172364) (not e!1781594))))

(declare-fun rulesProduceEachTokenIndividuallyList!1570 (LexerInterface!4518 List!33096 List!33097) Bool)

(assert (=> b!2817133 (= res!1172364 (rulesProduceEachTokenIndividuallyList!1570 thiss!27755 rules!4424 l!6581))))

(assert (=> b!2817134 (= e!1781587 (and tp!899376 tp!899373))))

(declare-fun lt!1006024 () List!33097)

(declare-fun b!2817135 () Bool)

(declare-fun e!1781590 () Bool)

(assert (=> b!2817135 (= e!1781590 (rulesProduceEachTokenIndividuallyList!1570 thiss!27755 rules!4424 (t!230150 lt!1006024)))))

(declare-fun b!2817136 () Bool)

(declare-fun e!1781592 () Bool)

(declare-fun tp!899369 () Bool)

(declare-fun inv!21 (TokenValue!5157) Bool)

(assert (=> b!2817136 (= e!1781592 (and (inv!21 (value!158739 (h!38393 l!6581))) e!1781595 tp!899369))))

(declare-fun tp!899374 () Bool)

(declare-fun b!2817137 () Bool)

(assert (=> b!2817137 (= e!1781596 (and tp!899374 (inv!44884 (tag!5431 (h!38392 rules!4424))) (inv!44887 (transformation!4927 (h!38392 rules!4424))) e!1781585))))

(declare-fun b!2817138 () Bool)

(declare-fun e!1781591 () Bool)

(assert (=> b!2817138 (= e!1781591 e!1781590)))

(declare-fun res!1172370 () Bool)

(assert (=> b!2817138 (=> (not res!1172370) (not e!1781590))))

(declare-fun rulesProduceIndividualToken!2058 (LexerInterface!4518 List!33096 Token!9256) Bool)

(assert (=> b!2817138 (= res!1172370 (rulesProduceIndividualToken!2058 thiss!27755 rules!4424 (h!38393 lt!1006024)))))

(assert (=> b!2817139 (= e!1781594 (not true))))

(declare-fun forall!6748 (List!33097 Int) Bool)

(assert (=> b!2817139 (forall!6748 lt!1006024 lambda!103371)))

(declare-datatypes ((Unit!46934 0))(
  ( (Unit!46935) )
))
(declare-fun lt!1006025 () Unit!46934)

(declare-fun lemmaForallSubseq!203 (List!33097 List!33097 Int) Unit!46934)

(assert (=> b!2817139 (= lt!1006025 (lemmaForallSubseq!203 lt!1006024 l!6581 lambda!103371))))

(assert (=> b!2817139 (= (rulesProduceEachTokenIndividuallyList!1570 thiss!27755 rules!4424 lt!1006024) e!1781591)))

(declare-fun res!1172369 () Bool)

(assert (=> b!2817139 (=> res!1172369 e!1781591)))

(assert (=> b!2817139 (= res!1172369 (not ((_ is Cons!32973) lt!1006024)))))

(declare-fun i!1730 () Int)

(declare-fun take!521 (List!33097 Int) List!33097)

(assert (=> b!2817139 (= lt!1006024 (take!521 l!6581 i!1730))))

(declare-fun b!2817140 () Bool)

(declare-fun res!1172367 () Bool)

(assert (=> b!2817140 (=> (not res!1172367) (not e!1781594))))

(declare-fun isEmpty!18244 (List!33096) Bool)

(assert (=> b!2817140 (= res!1172367 (not (isEmpty!18244 rules!4424)))))

(declare-fun tp!899372 () Bool)

(declare-fun b!2817141 () Bool)

(declare-fun inv!44888 (Token!9256) Bool)

(assert (=> b!2817141 (= e!1781597 (and (inv!44888 (h!38393 l!6581)) e!1781592 tp!899372))))

(declare-fun b!2817142 () Bool)

(declare-fun res!1172368 () Bool)

(assert (=> b!2817142 (=> (not res!1172368) (not e!1781594))))

(assert (=> b!2817142 (= res!1172368 ((_ is Nil!32973) l!6581))))

(assert (= (and start!273178 res!1172365) b!2817140))

(assert (= (and b!2817140 res!1172367) b!2817130))

(assert (= (and b!2817130 res!1172366) b!2817133))

(assert (= (and b!2817133 res!1172364) b!2817128))

(assert (= (and b!2817128 res!1172363) b!2817142))

(assert (= (and b!2817142 res!1172368) b!2817139))

(assert (= (and b!2817139 (not res!1172369)) b!2817138))

(assert (= (and b!2817138 res!1172370) b!2817135))

(assert (= b!2817137 b!2817129))

(assert (= b!2817131 b!2817137))

(assert (= (and start!273178 ((_ is Cons!32972) rules!4424)) b!2817131))

(assert (= b!2817132 b!2817134))

(assert (= b!2817136 b!2817132))

(assert (= b!2817141 b!2817136))

(assert (= (and start!273178 ((_ is Cons!32973) l!6581)) b!2817141))

(declare-fun m!3248079 () Bool)

(assert (=> b!2817139 m!3248079))

(declare-fun m!3248081 () Bool)

(assert (=> b!2817139 m!3248081))

(declare-fun m!3248083 () Bool)

(assert (=> b!2817139 m!3248083))

(declare-fun m!3248085 () Bool)

(assert (=> b!2817139 m!3248085))

(declare-fun m!3248087 () Bool)

(assert (=> b!2817136 m!3248087))

(declare-fun m!3248089 () Bool)

(assert (=> b!2817140 m!3248089))

(declare-fun m!3248091 () Bool)

(assert (=> b!2817137 m!3248091))

(declare-fun m!3248093 () Bool)

(assert (=> b!2817137 m!3248093))

(declare-fun m!3248095 () Bool)

(assert (=> b!2817128 m!3248095))

(declare-fun m!3248097 () Bool)

(assert (=> b!2817138 m!3248097))

(declare-fun m!3248099 () Bool)

(assert (=> b!2817133 m!3248099))

(declare-fun m!3248101 () Bool)

(assert (=> b!2817141 m!3248101))

(declare-fun m!3248103 () Bool)

(assert (=> b!2817130 m!3248103))

(declare-fun m!3248105 () Bool)

(assert (=> b!2817132 m!3248105))

(declare-fun m!3248107 () Bool)

(assert (=> b!2817132 m!3248107))

(declare-fun m!3248109 () Bool)

(assert (=> b!2817135 m!3248109))

(check-sat (not b_next!81065) (not b_next!81063) (not b!2817136) (not b!2817139) (not b!2817133) (not b!2817138) (not b!2817137) (not b_next!81067) (not b!2817140) (not b!2817132) (not b!2817135) (not b!2817131) b_and!205653 (not b!2817130) b_and!205651 (not b!2817141) (not b_next!81061) b_and!205649 (not b!2817128) (not b!2817151) b_and!205647)
(check-sat b_and!205653 (not b_next!81065) (not b_next!81063) b_and!205651 (not b_next!81061) b_and!205649 b_and!205647 (not b_next!81067))
