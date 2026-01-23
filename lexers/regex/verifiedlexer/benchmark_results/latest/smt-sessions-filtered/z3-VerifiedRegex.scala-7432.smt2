; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395330 () Bool)

(assert start!395330)

(declare-fun b!4153113 () Bool)

(declare-fun b_free!118779 () Bool)

(declare-fun b_next!119483 () Bool)

(assert (=> b!4153113 (= b_free!118779 (not b_next!119483))))

(declare-fun tp!1265912 () Bool)

(declare-fun b_and!323141 () Bool)

(assert (=> b!4153113 (= tp!1265912 b_and!323141)))

(declare-fun b_free!118781 () Bool)

(declare-fun b_next!119485 () Bool)

(assert (=> b!4153113 (= b_free!118781 (not b_next!119485))))

(declare-fun tp!1265920 () Bool)

(declare-fun b_and!323143 () Bool)

(assert (=> b!4153113 (= tp!1265920 b_and!323143)))

(declare-fun b!4153115 () Bool)

(declare-fun b_free!118783 () Bool)

(declare-fun b_next!119487 () Bool)

(assert (=> b!4153115 (= b_free!118783 (not b_next!119487))))

(declare-fun tp!1265919 () Bool)

(declare-fun b_and!323145 () Bool)

(assert (=> b!4153115 (= tp!1265919 b_and!323145)))

(declare-fun b_free!118785 () Bool)

(declare-fun b_next!119489 () Bool)

(assert (=> b!4153115 (= b_free!118785 (not b_next!119489))))

(declare-fun tp!1265916 () Bool)

(declare-fun b_and!323147 () Bool)

(assert (=> b!4153115 (= tp!1265916 b_and!323147)))

(declare-fun b!4153122 () Bool)

(declare-fun b_free!118787 () Bool)

(declare-fun b_next!119491 () Bool)

(assert (=> b!4153122 (= b_free!118787 (not b_next!119491))))

(declare-fun tp!1265918 () Bool)

(declare-fun b_and!323149 () Bool)

(assert (=> b!4153122 (= tp!1265918 b_and!323149)))

(declare-fun b_free!118789 () Bool)

(declare-fun b_next!119493 () Bool)

(assert (=> b!4153122 (= b_free!118789 (not b_next!119493))))

(declare-fun tp!1265922 () Bool)

(declare-fun b_and!323151 () Bool)

(assert (=> b!4153122 (= tp!1265922 b_and!323151)))

(declare-fun b!4153110 () Bool)

(declare-fun e!2576718 () Bool)

(declare-fun e!2576711 () Bool)

(declare-fun tp!1265921 () Bool)

(assert (=> b!4153110 (= e!2576718 (and e!2576711 tp!1265921))))

(declare-fun b!4153111 () Bool)

(declare-fun e!2576719 () Bool)

(declare-fun tp_is_empty!21605 () Bool)

(declare-fun tp!1265917 () Bool)

(assert (=> b!4153111 (= e!2576719 (and tp_is_empty!21605 tp!1265917))))

(declare-fun b!4153112 () Bool)

(declare-fun res!1700898 () Bool)

(declare-fun e!2576716 () Bool)

(assert (=> b!4153112 (=> (not res!1700898) (not e!2576716))))

(declare-datatypes ((List!45247 0))(
  ( (Nil!45123) (Cons!45123 (h!50543 (_ BitVec 16)) (t!343278 List!45247)) )
))
(declare-datatypes ((TokenValue!7666 0))(
  ( (FloatLiteralValue!15332 (text!54107 List!45247)) (TokenValueExt!7665 (__x!27549 Int)) (Broken!38330 (value!232454 List!45247)) (Object!7789) (End!7666) (Def!7666) (Underscore!7666) (Match!7666) (Else!7666) (Error!7666) (Case!7666) (If!7666) (Extends!7666) (Abstract!7666) (Class!7666) (Val!7666) (DelimiterValue!15332 (del!7726 List!45247)) (KeywordValue!7672 (value!232455 List!45247)) (CommentValue!15332 (value!232456 List!45247)) (WhitespaceValue!15332 (value!232457 List!45247)) (IndentationValue!7666 (value!232458 List!45247)) (String!52079) (Int32!7666) (Broken!38331 (value!232459 List!45247)) (Boolean!7667) (Unit!64390) (OperatorValue!7669 (op!7726 List!45247)) (IdentifierValue!15332 (value!232460 List!45247)) (IdentifierValue!15333 (value!232461 List!45247)) (WhitespaceValue!15333 (value!232462 List!45247)) (True!15332) (False!15332) (Broken!38332 (value!232463 List!45247)) (Broken!38333 (value!232464 List!45247)) (True!15333) (RightBrace!7666) (RightBracket!7666) (Colon!7666) (Null!7666) (Comma!7666) (LeftBracket!7666) (False!15333) (LeftBrace!7666) (ImaginaryLiteralValue!7666 (text!54108 List!45247)) (StringLiteralValue!22998 (value!232465 List!45247)) (EOFValue!7666 (value!232466 List!45247)) (IdentValue!7666 (value!232467 List!45247)) (DelimiterValue!15333 (value!232468 List!45247)) (DedentValue!7666 (value!232469 List!45247)) (NewLineValue!7666 (value!232470 List!45247)) (IntegerValue!22998 (value!232471 (_ BitVec 32)) (text!54109 List!45247)) (IntegerValue!22999 (value!232472 Int) (text!54110 List!45247)) (Times!7666) (Or!7666) (Equal!7666) (Minus!7666) (Broken!38334 (value!232473 List!45247)) (And!7666) (Div!7666) (LessEqual!7666) (Mod!7666) (Concat!20007) (Not!7666) (Plus!7666) (SpaceValue!7666 (value!232474 List!45247)) (IntegerValue!23000 (value!232475 Int) (text!54111 List!45247)) (StringLiteralValue!22999 (text!54112 List!45247)) (FloatLiteralValue!15333 (text!54113 List!45247)) (BytesLiteralValue!7666 (value!232476 List!45247)) (CommentValue!15333 (value!232477 List!45247)) (StringLiteralValue!23000 (value!232478 List!45247)) (ErrorTokenValue!7666 (msg!7727 List!45247)) )
))
(declare-datatypes ((C!24868 0))(
  ( (C!24869 (val!14544 Int)) )
))
(declare-datatypes ((List!45248 0))(
  ( (Nil!45124) (Cons!45124 (h!50544 C!24868) (t!343279 List!45248)) )
))
(declare-datatypes ((IArray!27299 0))(
  ( (IArray!27300 (innerList!13707 List!45248)) )
))
(declare-datatypes ((Conc!13647 0))(
  ( (Node!13647 (left!33787 Conc!13647) (right!34117 Conc!13647) (csize!27524 Int) (cheight!13858 Int)) (Leaf!21080 (xs!16953 IArray!27299) (csize!27525 Int)) (Empty!13647) )
))
(declare-datatypes ((BalanceConc!26888 0))(
  ( (BalanceConc!26889 (c!711170 Conc!13647)) )
))
(declare-datatypes ((Regex!12341 0))(
  ( (ElementMatch!12341 (c!711171 C!24868)) (Concat!20008 (regOne!25194 Regex!12341) (regTwo!25194 Regex!12341)) (EmptyExpr!12341) (Star!12341 (reg!12670 Regex!12341)) (EmptyLang!12341) (Union!12341 (regOne!25195 Regex!12341) (regTwo!25195 Regex!12341)) )
))
(declare-datatypes ((String!52080 0))(
  ( (String!52081 (value!232479 String)) )
))
(declare-datatypes ((TokenValueInjection!14760 0))(
  ( (TokenValueInjection!14761 (toValue!10100 Int) (toChars!9959 Int)) )
))
(declare-datatypes ((Rule!14672 0))(
  ( (Rule!14673 (regex!7436 Regex!12341) (tag!8296 String!52080) (isSeparator!7436 Bool) (transformation!7436 TokenValueInjection!14760)) )
))
(declare-datatypes ((List!45249 0))(
  ( (Nil!45125) (Cons!45125 (h!50545 Rule!14672) (t!343280 List!45249)) )
))
(declare-fun rules!3756 () List!45249)

(declare-fun isEmpty!26946 (List!45249) Bool)

(assert (=> b!4153112 (= res!1700898 (not (isEmpty!26946 rules!3756)))))

(declare-fun e!2576708 () Bool)

(assert (=> b!4153113 (= e!2576708 (and tp!1265912 tp!1265920))))

(declare-fun rBis!149 () Rule!14672)

(declare-fun tp!1265911 () Bool)

(declare-fun b!4153114 () Bool)

(declare-fun e!2576713 () Bool)

(declare-fun e!2576717 () Bool)

(declare-fun inv!59735 (String!52080) Bool)

(declare-fun inv!59737 (TokenValueInjection!14760) Bool)

(assert (=> b!4153114 (= e!2576717 (and tp!1265911 (inv!59735 (tag!8296 rBis!149)) (inv!59737 (transformation!7436 rBis!149)) e!2576713))))

(declare-fun res!1700896 () Bool)

(assert (=> start!395330 (=> (not res!1700896) (not e!2576716))))

(declare-datatypes ((LexerInterface!7025 0))(
  ( (LexerInterfaceExt!7022 (__x!27550 Int)) (Lexer!7023) )
))
(declare-fun thiss!25645 () LexerInterface!7025)

(get-info :version)

(assert (=> start!395330 (= res!1700896 ((_ is Lexer!7023) thiss!25645))))

(assert (=> start!395330 e!2576716))

(assert (=> start!395330 e!2576718))

(assert (=> start!395330 e!2576719))

(assert (=> start!395330 true))

(declare-fun e!2576712 () Bool)

(assert (=> start!395330 e!2576712))

(declare-fun e!2576709 () Bool)

(assert (=> start!395330 e!2576709))

(assert (=> start!395330 e!2576717))

(assert (=> b!4153115 (= e!2576713 (and tp!1265919 tp!1265916))))

(declare-fun b!4153116 () Bool)

(declare-fun e!2576714 () Bool)

(declare-fun e!2576722 () Bool)

(assert (=> b!4153116 (= e!2576714 (not e!2576722))))

(declare-fun res!1700893 () Bool)

(assert (=> b!4153116 (=> res!1700893 e!2576722)))

(assert (=> b!4153116 (= res!1700893 (or (and ((_ is Cons!45125) rules!3756) (= (h!50545 rules!3756) rBis!149)) (and ((_ is Cons!45125) rules!3756) (not (= (h!50545 rules!3756) rBis!149))) ((_ is Nil!45125) rules!3756)))))

(declare-datatypes ((Unit!64391 0))(
  ( (Unit!64392) )
))
(declare-fun lt!1481043 () Unit!64391)

(declare-fun r!4008 () Rule!14672)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2282 (LexerInterface!7025 Rule!14672 List!45249) Unit!64391)

(assert (=> b!4153116 (= lt!1481043 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2282 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3242 (LexerInterface!7025 Rule!14672) Bool)

(assert (=> b!4153116 (ruleValid!3242 thiss!25645 rBis!149)))

(declare-fun lt!1481044 () Unit!64391)

(assert (=> b!4153116 (= lt!1481044 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2282 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4153117 () Bool)

(declare-fun res!1700891 () Bool)

(assert (=> b!4153117 (=> (not res!1700891) (not e!2576714))))

(assert (=> b!4153117 (= res!1700891 (ruleValid!3242 thiss!25645 r!4008))))

(declare-fun b!4153118 () Bool)

(declare-fun tp!1265914 () Bool)

(assert (=> b!4153118 (= e!2576709 (and tp_is_empty!21605 tp!1265914))))

(declare-fun b!4153119 () Bool)

(declare-fun res!1700895 () Bool)

(assert (=> b!4153119 (=> (not res!1700895) (not e!2576716))))

(declare-fun p!2912 () List!45248)

(declare-fun isEmpty!26947 (List!45248) Bool)

(assert (=> b!4153119 (= res!1700895 (not (isEmpty!26947 p!2912)))))

(declare-fun b!4153120 () Bool)

(declare-fun res!1700889 () Bool)

(assert (=> b!4153120 (=> (not res!1700889) (not e!2576714))))

(declare-fun matchR!6170 (Regex!12341 List!45248) Bool)

(assert (=> b!4153120 (= res!1700889 (matchR!6170 (regex!7436 r!4008) p!2912))))

(declare-fun b!4153121 () Bool)

(declare-fun tp!1265915 () Bool)

(assert (=> b!4153121 (= e!2576711 (and tp!1265915 (inv!59735 (tag!8296 (h!50545 rules!3756))) (inv!59737 (transformation!7436 (h!50545 rules!3756))) e!2576708))))

(declare-fun e!2576715 () Bool)

(assert (=> b!4153122 (= e!2576715 (and tp!1265918 tp!1265922))))

(declare-fun b!4153123 () Bool)

(assert (=> b!4153123 (= e!2576716 e!2576714)))

(declare-fun res!1700892 () Bool)

(assert (=> b!4153123 (=> (not res!1700892) (not e!2576714))))

(declare-fun input!3238 () List!45248)

(declare-fun lt!1481046 () BalanceConc!26888)

(declare-datatypes ((Token!13802 0))(
  ( (Token!13803 (value!232480 TokenValue!7666) (rule!10578 Rule!14672) (size!33449 Int) (originalCharacters!7932 List!45248)) )
))
(declare-datatypes ((tuple2!43478 0))(
  ( (tuple2!43479 (_1!24873 Token!13802) (_2!24873 List!45248)) )
))
(declare-datatypes ((Option!9742 0))(
  ( (None!9741) (Some!9741 (v!40413 tuple2!43478)) )
))
(declare-fun maxPrefix!4215 (LexerInterface!7025 List!45249 List!45248) Option!9742)

(declare-fun apply!10509 (TokenValueInjection!14760 BalanceConc!26888) TokenValue!7666)

(declare-fun size!33450 (List!45248) Int)

(declare-fun getSuffix!2698 (List!45248 List!45248) List!45248)

(assert (=> b!4153123 (= res!1700892 (= (maxPrefix!4215 thiss!25645 rules!3756 input!3238) (Some!9741 (tuple2!43479 (Token!13803 (apply!10509 (transformation!7436 r!4008) lt!1481046) r!4008 (size!33450 p!2912) p!2912) (getSuffix!2698 input!3238 p!2912)))))))

(declare-fun lt!1481045 () Unit!64391)

(declare-fun lemmaSemiInverse!2294 (TokenValueInjection!14760 BalanceConc!26888) Unit!64391)

(assert (=> b!4153123 (= lt!1481045 (lemmaSemiInverse!2294 (transformation!7436 r!4008) lt!1481046))))

(declare-fun seqFromList!5553 (List!45248) BalanceConc!26888)

(assert (=> b!4153123 (= lt!1481046 (seqFromList!5553 p!2912))))

(declare-fun b!4153124 () Bool)

(declare-fun res!1700897 () Bool)

(assert (=> b!4153124 (=> (not res!1700897) (not e!2576716))))

(declare-fun contains!9122 (List!45249 Rule!14672) Bool)

(assert (=> b!4153124 (= res!1700897 (contains!9122 rules!3756 r!4008))))

(declare-fun b!4153125 () Bool)

(declare-fun res!1700887 () Bool)

(assert (=> b!4153125 (=> (not res!1700887) (not e!2576716))))

(declare-fun isPrefix!4371 (List!45248 List!45248) Bool)

(assert (=> b!4153125 (= res!1700887 (isPrefix!4371 p!2912 input!3238))))

(declare-fun b!4153126 () Bool)

(declare-fun res!1700888 () Bool)

(assert (=> b!4153126 (=> (not res!1700888) (not e!2576714))))

(declare-fun getIndex!782 (List!45249 Rule!14672) Int)

(assert (=> b!4153126 (= res!1700888 (< (getIndex!782 rules!3756 rBis!149) (getIndex!782 rules!3756 r!4008)))))

(declare-fun b!4153127 () Bool)

(declare-fun res!1700890 () Bool)

(assert (=> b!4153127 (=> (not res!1700890) (not e!2576716))))

(assert (=> b!4153127 (= res!1700890 (contains!9122 rules!3756 rBis!149))))

(declare-fun tp!1265913 () Bool)

(declare-fun b!4153128 () Bool)

(assert (=> b!4153128 (= e!2576712 (and tp!1265913 (inv!59735 (tag!8296 r!4008)) (inv!59737 (transformation!7436 r!4008)) e!2576715))))

(declare-fun b!4153129 () Bool)

(declare-fun res!1700894 () Bool)

(assert (=> b!4153129 (=> (not res!1700894) (not e!2576716))))

(declare-fun rulesInvariant!6322 (LexerInterface!7025 List!45249) Bool)

(assert (=> b!4153129 (= res!1700894 (rulesInvariant!6322 thiss!25645 rules!3756))))

(declare-fun b!4153130 () Bool)

(assert (=> b!4153130 (= e!2576722 (not (matchR!6170 (regex!7436 rBis!149) p!2912)))))

(assert (= (and start!395330 res!1700896) b!4153125))

(assert (= (and b!4153125 res!1700887) b!4153112))

(assert (= (and b!4153112 res!1700898) b!4153129))

(assert (= (and b!4153129 res!1700894) b!4153124))

(assert (= (and b!4153124 res!1700897) b!4153127))

(assert (= (and b!4153127 res!1700890) b!4153119))

(assert (= (and b!4153119 res!1700895) b!4153123))

(assert (= (and b!4153123 res!1700892) b!4153120))

(assert (= (and b!4153120 res!1700889) b!4153126))

(assert (= (and b!4153126 res!1700888) b!4153117))

(assert (= (and b!4153117 res!1700891) b!4153116))

(assert (= (and b!4153116 (not res!1700893)) b!4153130))

(assert (= b!4153121 b!4153113))

(assert (= b!4153110 b!4153121))

(assert (= (and start!395330 ((_ is Cons!45125) rules!3756)) b!4153110))

(assert (= (and start!395330 ((_ is Cons!45124) p!2912)) b!4153111))

(assert (= b!4153128 b!4153122))

(assert (= start!395330 b!4153128))

(assert (= (and start!395330 ((_ is Cons!45124) input!3238)) b!4153118))

(assert (= b!4153114 b!4153115))

(assert (= start!395330 b!4153114))

(declare-fun m!4748361 () Bool)

(assert (=> b!4153116 m!4748361))

(declare-fun m!4748363 () Bool)

(assert (=> b!4153116 m!4748363))

(declare-fun m!4748365 () Bool)

(assert (=> b!4153116 m!4748365))

(declare-fun m!4748367 () Bool)

(assert (=> b!4153120 m!4748367))

(declare-fun m!4748369 () Bool)

(assert (=> b!4153129 m!4748369))

(declare-fun m!4748371 () Bool)

(assert (=> b!4153128 m!4748371))

(declare-fun m!4748373 () Bool)

(assert (=> b!4153128 m!4748373))

(declare-fun m!4748375 () Bool)

(assert (=> b!4153127 m!4748375))

(declare-fun m!4748377 () Bool)

(assert (=> b!4153114 m!4748377))

(declare-fun m!4748379 () Bool)

(assert (=> b!4153114 m!4748379))

(declare-fun m!4748381 () Bool)

(assert (=> b!4153126 m!4748381))

(declare-fun m!4748383 () Bool)

(assert (=> b!4153126 m!4748383))

(declare-fun m!4748385 () Bool)

(assert (=> b!4153121 m!4748385))

(declare-fun m!4748387 () Bool)

(assert (=> b!4153121 m!4748387))

(declare-fun m!4748389 () Bool)

(assert (=> b!4153117 m!4748389))

(declare-fun m!4748391 () Bool)

(assert (=> b!4153123 m!4748391))

(declare-fun m!4748393 () Bool)

(assert (=> b!4153123 m!4748393))

(declare-fun m!4748395 () Bool)

(assert (=> b!4153123 m!4748395))

(declare-fun m!4748397 () Bool)

(assert (=> b!4153123 m!4748397))

(declare-fun m!4748399 () Bool)

(assert (=> b!4153123 m!4748399))

(declare-fun m!4748401 () Bool)

(assert (=> b!4153123 m!4748401))

(declare-fun m!4748403 () Bool)

(assert (=> b!4153112 m!4748403))

(declare-fun m!4748405 () Bool)

(assert (=> b!4153130 m!4748405))

(declare-fun m!4748407 () Bool)

(assert (=> b!4153119 m!4748407))

(declare-fun m!4748409 () Bool)

(assert (=> b!4153124 m!4748409))

(declare-fun m!4748411 () Bool)

(assert (=> b!4153125 m!4748411))

(check-sat (not b!4153127) tp_is_empty!21605 (not b!4153111) (not b!4153117) b_and!323147 (not b_next!119487) (not b!4153128) (not b!4153124) (not b_next!119493) (not b!4153129) b_and!323151 (not b!4153125) b_and!323145 (not b!4153120) (not b_next!119489) (not b!4153119) (not b!4153126) (not b!4153112) b_and!323149 b_and!323141 (not b!4153110) (not b!4153116) (not b_next!119491) (not b!4153123) (not b!4153121) b_and!323143 (not b_next!119483) (not b!4153114) (not b_next!119485) (not b!4153118) (not b!4153130))
(check-sat b_and!323147 (not b_next!119487) (not b_next!119489) (not b_next!119493) b_and!323151 (not b_next!119491) b_and!323145 b_and!323143 b_and!323149 b_and!323141 (not b_next!119483) (not b_next!119485))
