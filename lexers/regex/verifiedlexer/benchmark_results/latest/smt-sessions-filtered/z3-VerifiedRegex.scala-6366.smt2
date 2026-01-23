; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!330922 () Bool)

(assert start!330922)

(declare-fun b!3571724 () Bool)

(declare-fun b_free!91449 () Bool)

(declare-fun b_next!92153 () Bool)

(assert (=> b!3571724 (= b_free!91449 (not b_next!92153))))

(declare-fun tp!1093854 () Bool)

(declare-fun b_and!257047 () Bool)

(assert (=> b!3571724 (= tp!1093854 b_and!257047)))

(declare-fun b_free!91451 () Bool)

(declare-fun b_next!92155 () Bool)

(assert (=> b!3571724 (= b_free!91451 (not b_next!92155))))

(declare-fun tp!1093849 () Bool)

(declare-fun b_and!257049 () Bool)

(assert (=> b!3571724 (= tp!1093849 b_and!257049)))

(declare-fun b!3571759 () Bool)

(declare-fun b_free!91453 () Bool)

(declare-fun b_next!92157 () Bool)

(assert (=> b!3571759 (= b_free!91453 (not b_next!92157))))

(declare-fun tp!1093844 () Bool)

(declare-fun b_and!257051 () Bool)

(assert (=> b!3571759 (= tp!1093844 b_and!257051)))

(declare-fun b_free!91455 () Bool)

(declare-fun b_next!92159 () Bool)

(assert (=> b!3571759 (= b_free!91455 (not b_next!92159))))

(declare-fun tp!1093850 () Bool)

(declare-fun b_and!257053 () Bool)

(assert (=> b!3571759 (= tp!1093850 b_and!257053)))

(declare-fun b!3571722 () Bool)

(declare-fun b_free!91457 () Bool)

(declare-fun b_next!92161 () Bool)

(assert (=> b!3571722 (= b_free!91457 (not b_next!92161))))

(declare-fun tp!1093848 () Bool)

(declare-fun b_and!257055 () Bool)

(assert (=> b!3571722 (= tp!1093848 b_and!257055)))

(declare-fun b_free!91459 () Bool)

(declare-fun b_next!92163 () Bool)

(assert (=> b!3571722 (= b_free!91459 (not b_next!92163))))

(declare-fun tp!1093845 () Bool)

(declare-fun b_and!257057 () Bool)

(assert (=> b!3571722 (= tp!1093845 b_and!257057)))

(declare-fun bs!569215 () Bool)

(declare-fun b!3571748 () Bool)

(declare-fun b!3571735 () Bool)

(assert (= bs!569215 (and b!3571748 b!3571735)))

(declare-fun lambda!123481 () Int)

(declare-fun lambda!123480 () Int)

(assert (=> bs!569215 (not (= lambda!123481 lambda!123480))))

(declare-fun b!3571774 () Bool)

(declare-fun e!2209584 () Bool)

(assert (=> b!3571774 (= e!2209584 true)))

(declare-fun b!3571773 () Bool)

(declare-fun e!2209583 () Bool)

(assert (=> b!3571773 (= e!2209583 e!2209584)))

(declare-fun b!3571772 () Bool)

(declare-fun e!2209582 () Bool)

(assert (=> b!3571772 (= e!2209582 e!2209583)))

(assert (=> b!3571748 e!2209582))

(assert (= b!3571773 b!3571774))

(assert (= b!3571772 b!3571773))

(declare-datatypes ((C!20728 0))(
  ( (C!20729 (val!12412 Int)) )
))
(declare-datatypes ((Regex!10271 0))(
  ( (ElementMatch!10271 (c!618922 C!20728)) (Concat!16013 (regOne!21054 Regex!10271) (regTwo!21054 Regex!10271)) (EmptyExpr!10271) (Star!10271 (reg!10600 Regex!10271)) (EmptyLang!10271) (Union!10271 (regOne!21055 Regex!10271) (regTwo!21055 Regex!10271)) )
))
(declare-datatypes ((List!37632 0))(
  ( (Nil!37508) (Cons!37508 (h!42928 (_ BitVec 16)) (t!289151 List!37632)) )
))
(declare-datatypes ((TokenValue!5742 0))(
  ( (FloatLiteralValue!11484 (text!40639 List!37632)) (TokenValueExt!5741 (__x!23701 Int)) (Broken!28710 (value!177526 List!37632)) (Object!5865) (End!5742) (Def!5742) (Underscore!5742) (Match!5742) (Else!5742) (Error!5742) (Case!5742) (If!5742) (Extends!5742) (Abstract!5742) (Class!5742) (Val!5742) (DelimiterValue!11484 (del!5802 List!37632)) (KeywordValue!5748 (value!177527 List!37632)) (CommentValue!11484 (value!177528 List!37632)) (WhitespaceValue!11484 (value!177529 List!37632)) (IndentationValue!5742 (value!177530 List!37632)) (String!42043) (Int32!5742) (Broken!28711 (value!177531 List!37632)) (Boolean!5743) (Unit!53496) (OperatorValue!5745 (op!5802 List!37632)) (IdentifierValue!11484 (value!177532 List!37632)) (IdentifierValue!11485 (value!177533 List!37632)) (WhitespaceValue!11485 (value!177534 List!37632)) (True!11484) (False!11484) (Broken!28712 (value!177535 List!37632)) (Broken!28713 (value!177536 List!37632)) (True!11485) (RightBrace!5742) (RightBracket!5742) (Colon!5742) (Null!5742) (Comma!5742) (LeftBracket!5742) (False!11485) (LeftBrace!5742) (ImaginaryLiteralValue!5742 (text!40640 List!37632)) (StringLiteralValue!17226 (value!177537 List!37632)) (EOFValue!5742 (value!177538 List!37632)) (IdentValue!5742 (value!177539 List!37632)) (DelimiterValue!11485 (value!177540 List!37632)) (DedentValue!5742 (value!177541 List!37632)) (NewLineValue!5742 (value!177542 List!37632)) (IntegerValue!17226 (value!177543 (_ BitVec 32)) (text!40641 List!37632)) (IntegerValue!17227 (value!177544 Int) (text!40642 List!37632)) (Times!5742) (Or!5742) (Equal!5742) (Minus!5742) (Broken!28714 (value!177545 List!37632)) (And!5742) (Div!5742) (LessEqual!5742) (Mod!5742) (Concat!16014) (Not!5742) (Plus!5742) (SpaceValue!5742 (value!177546 List!37632)) (IntegerValue!17228 (value!177547 Int) (text!40643 List!37632)) (StringLiteralValue!17227 (text!40644 List!37632)) (FloatLiteralValue!11485 (text!40645 List!37632)) (BytesLiteralValue!5742 (value!177548 List!37632)) (CommentValue!11485 (value!177549 List!37632)) (StringLiteralValue!17228 (value!177550 List!37632)) (ErrorTokenValue!5742 (msg!5803 List!37632)) )
))
(declare-datatypes ((List!37633 0))(
  ( (Nil!37509) (Cons!37509 (h!42929 C!20728) (t!289152 List!37633)) )
))
(declare-datatypes ((IArray!22803 0))(
  ( (IArray!22804 (innerList!11459 List!37633)) )
))
(declare-datatypes ((Conc!11399 0))(
  ( (Node!11399 (left!29329 Conc!11399) (right!29659 Conc!11399) (csize!23028 Int) (cheight!11610 Int)) (Leaf!17766 (xs!14601 IArray!22803) (csize!23029 Int)) (Empty!11399) )
))
(declare-datatypes ((BalanceConc!22412 0))(
  ( (BalanceConc!22413 (c!618923 Conc!11399)) )
))
(declare-datatypes ((String!42044 0))(
  ( (String!42045 (value!177551 String)) )
))
(declare-datatypes ((TokenValueInjection!10912 0))(
  ( (TokenValueInjection!10913 (toValue!7780 Int) (toChars!7639 Int)) )
))
(declare-datatypes ((Rule!10824 0))(
  ( (Rule!10825 (regex!5512 Regex!10271) (tag!6172 String!42044) (isSeparator!5512 Bool) (transformation!5512 TokenValueInjection!10912)) )
))
(declare-datatypes ((List!37634 0))(
  ( (Nil!37510) (Cons!37510 (h!42930 Rule!10824) (t!289153 List!37634)) )
))
(declare-fun rules!2135 () List!37634)

(get-info :version)

(assert (= (and b!3571748 ((_ is Cons!37510) rules!2135)) b!3571772))

(declare-fun order!20347 () Int)

(declare-fun order!20345 () Int)

(declare-fun dynLambda!16111 (Int Int) Int)

(declare-fun dynLambda!16112 (Int Int) Int)

(assert (=> b!3571774 (< (dynLambda!16111 order!20345 (toValue!7780 (transformation!5512 (h!42930 rules!2135)))) (dynLambda!16112 order!20347 lambda!123481))))

(declare-fun order!20349 () Int)

(declare-fun dynLambda!16113 (Int Int) Int)

(assert (=> b!3571774 (< (dynLambda!16113 order!20349 (toChars!7639 (transformation!5512 (h!42930 rules!2135)))) (dynLambda!16112 order!20347 lambda!123481))))

(assert (=> b!3571748 true))

(declare-fun b!3571721 () Bool)

(declare-fun e!2209569 () Bool)

(declare-fun e!2209554 () Bool)

(assert (=> b!3571721 (= e!2209569 e!2209554)))

(declare-fun res!1440539 () Bool)

(assert (=> b!3571721 (=> (not res!1440539) (not e!2209554))))

(declare-fun lt!1224296 () Rule!10824)

(declare-fun lt!1224334 () List!37633)

(declare-fun matchR!4855 (Regex!10271 List!37633) Bool)

(assert (=> b!3571721 (= res!1440539 (matchR!4855 (regex!5512 lt!1224296) lt!1224334))))

(declare-datatypes ((Option!7693 0))(
  ( (None!7692) (Some!7692 (v!37306 Rule!10824)) )
))
(declare-fun lt!1224295 () Option!7693)

(declare-fun get!12073 (Option!7693) Rule!10824)

(assert (=> b!3571721 (= lt!1224296 (get!12073 lt!1224295))))

(declare-fun e!2209550 () Bool)

(assert (=> b!3571722 (= e!2209550 (and tp!1093848 tp!1093845))))

(declare-fun b!3571723 () Bool)

(declare-fun res!1440557 () Bool)

(declare-fun e!2209575 () Bool)

(assert (=> b!3571723 (=> (not res!1440557) (not e!2209575))))

(declare-datatypes ((Token!10390 0))(
  ( (Token!10391 (value!177552 TokenValue!5742) (rule!8210 Rule!10824) (size!28599 Int) (originalCharacters!6226 List!37633)) )
))
(declare-fun separatorToken!241 () Token!10390)

(assert (=> b!3571723 (= res!1440557 (isSeparator!5512 (rule!8210 separatorToken!241)))))

(declare-fun e!2209543 () Bool)

(assert (=> b!3571724 (= e!2209543 (and tp!1093854 tp!1093849))))

(declare-fun b!3571725 () Bool)

(declare-fun res!1440555 () Bool)

(assert (=> b!3571725 (=> (not res!1440555) (not e!2209575))))

(declare-fun isEmpty!22047 (List!37634) Bool)

(assert (=> b!3571725 (= res!1440555 (not (isEmpty!22047 rules!2135)))))

(declare-fun e!2209566 () Bool)

(declare-fun tp!1093843 () Bool)

(declare-fun b!3571726 () Bool)

(declare-fun e!2209557 () Bool)

(declare-fun inv!21 (TokenValue!5742) Bool)

(assert (=> b!3571726 (= e!2209557 (and (inv!21 (value!177552 separatorToken!241)) e!2209566 tp!1093843))))

(declare-fun b!3571727 () Bool)

(declare-fun e!2209573 () Bool)

(declare-fun e!2209556 () Bool)

(assert (=> b!3571727 (= e!2209573 e!2209556)))

(declare-fun res!1440562 () Bool)

(assert (=> b!3571727 (=> res!1440562 e!2209556)))

(declare-fun lt!1224324 () BalanceConc!22412)

(declare-datatypes ((LexerInterface!5101 0))(
  ( (LexerInterfaceExt!5098 (__x!23702 Int)) (Lexer!5099) )
))
(declare-fun thiss!18206 () LexerInterface!5101)

(declare-datatypes ((List!37635 0))(
  ( (Nil!37511) (Cons!37511 (h!42931 Token!10390) (t!289154 List!37635)) )
))
(declare-datatypes ((IArray!22805 0))(
  ( (IArray!22806 (innerList!11460 List!37635)) )
))
(declare-datatypes ((Conc!11400 0))(
  ( (Node!11400 (left!29330 Conc!11400) (right!29660 Conc!11400) (csize!23030 Int) (cheight!11611 Int)) (Leaf!17767 (xs!14602 IArray!22805) (csize!23031 Int)) (Empty!11400) )
))
(declare-datatypes ((BalanceConc!22414 0))(
  ( (BalanceConc!22415 (c!618924 Conc!11400)) )
))
(declare-fun isEmpty!22048 (BalanceConc!22414) Bool)

(declare-datatypes ((tuple2!37424 0))(
  ( (tuple2!37425 (_1!21846 BalanceConc!22414) (_2!21846 BalanceConc!22412)) )
))
(declare-fun lex!2427 (LexerInterface!5101 List!37634 BalanceConc!22412) tuple2!37424)

(assert (=> b!3571727 (= res!1440562 (isEmpty!22048 (_1!21846 (lex!2427 thiss!18206 rules!2135 lt!1224324))))))

(declare-fun lt!1224328 () List!37633)

(declare-fun seqFromList!4077 (List!37633) BalanceConc!22412)

(assert (=> b!3571727 (= lt!1224324 (seqFromList!4077 lt!1224328))))

(declare-fun b!3571728 () Bool)

(declare-fun res!1440561 () Bool)

(assert (=> b!3571728 (=> res!1440561 e!2209573)))

(declare-fun tokens!494 () List!37635)

(declare-fun rulesProduceIndividualToken!2593 (LexerInterface!5101 List!37634 Token!10390) Bool)

(assert (=> b!3571728 (= res!1440561 (not (rulesProduceIndividualToken!2593 thiss!18206 rules!2135 (h!42931 tokens!494))))))

(declare-fun b!3571729 () Bool)

(declare-fun e!2209553 () Bool)

(assert (=> b!3571729 (= e!2209553 e!2209573)))

(declare-fun res!1440537 () Bool)

(assert (=> b!3571729 (=> res!1440537 e!2209573)))

(declare-fun lt!1224339 () List!37633)

(declare-fun lt!1224308 () List!37633)

(assert (=> b!3571729 (= res!1440537 (or (not (= lt!1224308 lt!1224328)) (not (= lt!1224339 lt!1224328))))))

(declare-fun list!13761 (BalanceConc!22412) List!37633)

(declare-fun charsOf!3526 (Token!10390) BalanceConc!22412)

(assert (=> b!3571729 (= lt!1224328 (list!13761 (charsOf!3526 (h!42931 tokens!494))))))

(declare-fun b!3571730 () Bool)

(declare-fun e!2209563 () Bool)

(declare-fun lt!1224309 () Rule!10824)

(assert (=> b!3571730 (= e!2209563 (= (rule!8210 (h!42931 (t!289154 tokens!494))) lt!1224309))))

(declare-fun b!3571732 () Bool)

(declare-fun e!2209565 () Bool)

(declare-fun tp!1093853 () Bool)

(declare-fun e!2209545 () Bool)

(assert (=> b!3571732 (= e!2209545 (and (inv!21 (value!177552 (h!42931 tokens!494))) e!2209565 tp!1093853))))

(declare-fun b!3571733 () Bool)

(declare-fun e!2209562 () Bool)

(declare-fun e!2209574 () Bool)

(declare-fun tp!1093847 () Bool)

(assert (=> b!3571733 (= e!2209562 (and e!2209574 tp!1093847))))

(declare-fun b!3571734 () Bool)

(declare-fun res!1440540 () Bool)

(assert (=> b!3571734 (=> (not res!1440540) (not e!2209575))))

(assert (=> b!3571734 (= res!1440540 (and (not ((_ is Nil!37511) tokens!494)) (not ((_ is Nil!37511) (t!289154 tokens!494)))))))

(declare-fun res!1440535 () Bool)

(assert (=> b!3571735 (=> (not res!1440535) (not e!2209575))))

(declare-fun forall!8114 (List!37635 Int) Bool)

(assert (=> b!3571735 (= res!1440535 (forall!8114 tokens!494 lambda!123480))))

(declare-fun b!3571736 () Bool)

(declare-fun e!2209560 () Bool)

(declare-fun lt!1224314 () tuple2!37424)

(declare-fun isEmpty!22049 (BalanceConc!22412) Bool)

(assert (=> b!3571736 (= e!2209560 (not (isEmpty!22049 (_2!21846 lt!1224314))))))

(declare-fun b!3571737 () Bool)

(declare-fun e!2209551 () Bool)

(assert (=> b!3571737 (= e!2209551 e!2209563)))

(declare-fun res!1440558 () Bool)

(assert (=> b!3571737 (=> (not res!1440558) (not e!2209563))))

(declare-fun lt!1224321 () List!37633)

(assert (=> b!3571737 (= res!1440558 (matchR!4855 (regex!5512 lt!1224309) lt!1224321))))

(declare-fun lt!1224294 () Option!7693)

(assert (=> b!3571737 (= lt!1224309 (get!12073 lt!1224294))))

(declare-fun b!3571738 () Bool)

(declare-fun e!2209552 () Bool)

(declare-fun e!2209567 () Bool)

(assert (=> b!3571738 (= e!2209552 e!2209567)))

(declare-fun res!1440541 () Bool)

(assert (=> b!3571738 (=> res!1440541 e!2209567)))

(declare-fun lt!1224305 () List!37633)

(declare-fun lt!1224330 () List!37633)

(assert (=> b!3571738 (= res!1440541 (not (= lt!1224305 lt!1224330)))))

(declare-fun lt!1224331 () List!37633)

(assert (=> b!3571738 (= lt!1224331 lt!1224330)))

(declare-fun lt!1224332 () List!37633)

(declare-fun ++!9327 (List!37633 List!37633) List!37633)

(assert (=> b!3571738 (= lt!1224330 (++!9327 lt!1224328 lt!1224332))))

(declare-fun lt!1224318 () List!37633)

(declare-datatypes ((Unit!53497 0))(
  ( (Unit!53498) )
))
(declare-fun lt!1224338 () Unit!53497)

(declare-fun lemmaConcatAssociativity!2052 (List!37633 List!37633 List!37633) Unit!53497)

(assert (=> b!3571738 (= lt!1224338 (lemmaConcatAssociativity!2052 lt!1224328 lt!1224334 lt!1224318))))

(declare-fun b!3571739 () Bool)

(declare-fun res!1440536 () Bool)

(assert (=> b!3571739 (=> res!1440536 e!2209560)))

(declare-fun apply!9020 (BalanceConc!22414 Int) Token!10390)

(assert (=> b!3571739 (= res!1440536 (not (= (apply!9020 (_1!21846 lt!1224314) 0) (h!42931 (t!289154 tokens!494)))))))

(declare-fun b!3571740 () Bool)

(declare-fun e!2209549 () Bool)

(assert (=> b!3571740 (= e!2209549 e!2209552)))

(declare-fun res!1440538 () Bool)

(assert (=> b!3571740 (=> res!1440538 e!2209552)))

(assert (=> b!3571740 (= res!1440538 (not (= lt!1224305 lt!1224331)))))

(assert (=> b!3571740 (= lt!1224331 (++!9327 (++!9327 lt!1224328 lt!1224334) lt!1224318))))

(declare-fun b!3571741 () Bool)

(declare-fun e!2209564 () Bool)

(declare-fun tp!1093852 () Bool)

(declare-fun inv!50780 (String!42044) Bool)

(declare-fun inv!50783 (TokenValueInjection!10912) Bool)

(assert (=> b!3571741 (= e!2209565 (and tp!1093852 (inv!50780 (tag!6172 (rule!8210 (h!42931 tokens!494)))) (inv!50783 (transformation!5512 (rule!8210 (h!42931 tokens!494)))) e!2209564))))

(declare-fun b!3571742 () Bool)

(declare-fun e!2209572 () Bool)

(assert (=> b!3571742 (= e!2209572 false)))

(declare-fun b!3571743 () Bool)

(declare-fun res!1440546 () Bool)

(assert (=> b!3571743 (=> (not res!1440546) (not e!2209575))))

(declare-fun rulesProduceEachTokenIndividually!1552 (LexerInterface!5101 List!37634 BalanceConc!22414) Bool)

(declare-fun seqFromList!4078 (List!37635) BalanceConc!22414)

(assert (=> b!3571743 (= res!1440546 (rulesProduceEachTokenIndividually!1552 thiss!18206 rules!2135 (seqFromList!4078 tokens!494)))))

(declare-fun b!3571744 () Bool)

(declare-fun e!2209561 () Bool)

(declare-fun e!2209541 () Bool)

(assert (=> b!3571744 (= e!2209561 e!2209541)))

(declare-fun res!1440552 () Bool)

(assert (=> b!3571744 (=> (not res!1440552) (not e!2209541))))

(declare-fun lt!1224320 () Rule!10824)

(assert (=> b!3571744 (= res!1440552 (matchR!4855 (regex!5512 lt!1224320) lt!1224328))))

(declare-fun lt!1224336 () Option!7693)

(assert (=> b!3571744 (= lt!1224320 (get!12073 lt!1224336))))

(declare-fun b!3571745 () Bool)

(declare-fun res!1440544 () Bool)

(assert (=> b!3571745 (=> (not res!1440544) (not e!2209575))))

(declare-fun rulesInvariant!4498 (LexerInterface!5101 List!37634) Bool)

(assert (=> b!3571745 (= res!1440544 (rulesInvariant!4498 thiss!18206 rules!2135))))

(declare-fun tp!1093851 () Bool)

(declare-fun b!3571746 () Bool)

(assert (=> b!3571746 (= e!2209574 (and tp!1093851 (inv!50780 (tag!6172 (h!42930 rules!2135))) (inv!50783 (transformation!5512 (h!42930 rules!2135))) e!2209543))))

(declare-fun b!3571747 () Bool)

(declare-fun e!2209559 () Bool)

(declare-fun tp!1093842 () Bool)

(declare-fun inv!50784 (Token!10390) Bool)

(assert (=> b!3571747 (= e!2209559 (and (inv!50784 (h!42931 tokens!494)) e!2209545 tp!1093842))))

(assert (=> b!3571748 (= e!2209567 true)))

(declare-datatypes ((tuple2!37426 0))(
  ( (tuple2!37427 (_1!21847 Token!10390) (_2!21847 List!37633)) )
))
(declare-datatypes ((Option!7694 0))(
  ( (None!7693) (Some!7693 (v!37307 tuple2!37426)) )
))
(declare-fun maxPrefix!2641 (LexerInterface!5101 List!37634 List!37633) Option!7694)

(assert (=> b!3571748 (= (maxPrefix!2641 thiss!18206 rules!2135 lt!1224332) (Some!7693 (tuple2!37427 separatorToken!241 lt!1224318)))))

(declare-fun lt!1224325 () Unit!53497)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!268 (LexerInterface!5101 List!37634 Token!10390 Rule!10824 List!37633 Rule!10824) Unit!53497)

(assert (=> b!3571748 (= lt!1224325 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!268 thiss!18206 rules!2135 separatorToken!241 (rule!8210 separatorToken!241) lt!1224318 (rule!8210 (h!42931 (t!289154 tokens!494)))))))

(declare-fun lt!1224293 () List!37633)

(declare-fun lt!1224311 () C!20728)

(declare-fun contains!7100 (List!37633 C!20728) Bool)

(assert (=> b!3571748 (not (contains!7100 lt!1224293 lt!1224311))))

(declare-fun lt!1224340 () Unit!53497)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!194 (LexerInterface!5101 List!37634 List!37634 Rule!10824 Rule!10824 C!20728) Unit!53497)

(assert (=> b!3571748 (= lt!1224340 (lemmaSepRuleNotContainsCharContainedInANonSepRule!194 thiss!18206 rules!2135 rules!2135 (rule!8210 (h!42931 (t!289154 tokens!494))) (rule!8210 separatorToken!241) lt!1224311))))

(declare-fun lt!1224306 () Unit!53497)

(declare-fun e!2209548 () Unit!53497)

(assert (=> b!3571748 (= lt!1224306 e!2209548)))

(declare-fun c!618920 () Bool)

(declare-fun usedCharacters!746 (Regex!10271) List!37633)

(assert (=> b!3571748 (= c!618920 (not (contains!7100 (usedCharacters!746 (regex!5512 (rule!8210 (h!42931 (t!289154 tokens!494))))) lt!1224311)))))

(declare-fun head!7443 (List!37633) C!20728)

(assert (=> b!3571748 (= lt!1224311 (head!7443 lt!1224321))))

(declare-fun maxPrefixOneRule!1808 (LexerInterface!5101 Rule!10824 List!37633) Option!7694)

(declare-fun apply!9021 (TokenValueInjection!10912 BalanceConc!22412) TokenValue!5742)

(declare-fun size!28600 (List!37633) Int)

(assert (=> b!3571748 (= (maxPrefixOneRule!1808 thiss!18206 (rule!8210 (h!42931 (t!289154 tokens!494))) lt!1224321) (Some!7693 (tuple2!37427 (Token!10391 (apply!9021 (transformation!5512 (rule!8210 (h!42931 (t!289154 tokens!494)))) (seqFromList!4077 lt!1224321)) (rule!8210 (h!42931 (t!289154 tokens!494))) (size!28600 lt!1224321) lt!1224321) Nil!37509)))))

(declare-fun lt!1224302 () Unit!53497)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!901 (LexerInterface!5101 List!37634 List!37633 List!37633 List!37633 Rule!10824) Unit!53497)

(assert (=> b!3571748 (= lt!1224302 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!901 thiss!18206 rules!2135 lt!1224321 lt!1224321 Nil!37509 (rule!8210 (h!42931 (t!289154 tokens!494)))))))

(assert (=> b!3571748 e!2209551))

(declare-fun res!1440559 () Bool)

(assert (=> b!3571748 (=> (not res!1440559) (not e!2209551))))

(declare-fun isDefined!5936 (Option!7693) Bool)

(assert (=> b!3571748 (= res!1440559 (isDefined!5936 lt!1224294))))

(declare-fun getRuleFromTag!1155 (LexerInterface!5101 List!37634 String!42044) Option!7693)

(assert (=> b!3571748 (= lt!1224294 (getRuleFromTag!1155 thiss!18206 rules!2135 (tag!6172 (rule!8210 (h!42931 (t!289154 tokens!494))))))))

(declare-fun lt!1224327 () Unit!53497)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1155 (LexerInterface!5101 List!37634 List!37633 Token!10390) Unit!53497)

(assert (=> b!3571748 (= lt!1224327 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1155 thiss!18206 rules!2135 lt!1224321 (h!42931 (t!289154 tokens!494))))))

(declare-fun lt!1224322 () Bool)

(assert (=> b!3571748 lt!1224322))

(declare-fun lt!1224297 () Unit!53497)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1090 (LexerInterface!5101 List!37634 List!37635 Token!10390) Unit!53497)

(assert (=> b!3571748 (= lt!1224297 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1090 thiss!18206 rules!2135 tokens!494 (h!42931 (t!289154 tokens!494))))))

(assert (=> b!3571748 (= (maxPrefix!2641 thiss!18206 rules!2135 lt!1224330) (Some!7693 (tuple2!37427 (h!42931 tokens!494) lt!1224332)))))

(declare-fun lt!1224335 () Unit!53497)

(assert (=> b!3571748 (= lt!1224335 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!268 thiss!18206 rules!2135 (h!42931 tokens!494) (rule!8210 (h!42931 tokens!494)) lt!1224332 (rule!8210 separatorToken!241)))))

(declare-fun lt!1224317 () C!20728)

(assert (=> b!3571748 (not (contains!7100 (usedCharacters!746 (regex!5512 (rule!8210 (h!42931 tokens!494)))) lt!1224317))))

(declare-fun lt!1224315 () Unit!53497)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!312 (LexerInterface!5101 List!37634 List!37634 Rule!10824 Rule!10824 C!20728) Unit!53497)

(assert (=> b!3571748 (= lt!1224315 (lemmaNonSepRuleNotContainsCharContainedInASepRule!312 thiss!18206 rules!2135 rules!2135 (rule!8210 (h!42931 tokens!494)) (rule!8210 separatorToken!241) lt!1224317))))

(declare-fun lt!1224303 () Unit!53497)

(declare-fun forallContained!1459 (List!37635 Int Token!10390) Unit!53497)

(assert (=> b!3571748 (= lt!1224303 (forallContained!1459 tokens!494 lambda!123481 (h!42931 (t!289154 tokens!494))))))

(declare-fun lt!1224337 () Bool)

(assert (=> b!3571748 (= lt!1224322 (not lt!1224337))))

(assert (=> b!3571748 (= lt!1224322 (rulesProduceIndividualToken!2593 thiss!18206 rules!2135 (h!42931 (t!289154 tokens!494))))))

(assert (=> b!3571748 (= lt!1224337 e!2209560)))

(declare-fun res!1440542 () Bool)

(assert (=> b!3571748 (=> res!1440542 e!2209560)))

(declare-fun size!28601 (BalanceConc!22414) Int)

(assert (=> b!3571748 (= res!1440542 (not (= (size!28601 (_1!21846 lt!1224314)) 1)))))

(declare-fun lt!1224299 () BalanceConc!22412)

(assert (=> b!3571748 (= lt!1224314 (lex!2427 thiss!18206 rules!2135 lt!1224299))))

(declare-fun lt!1224298 () BalanceConc!22414)

(declare-fun printTailRec!1596 (LexerInterface!5101 BalanceConc!22414 Int BalanceConc!22412) BalanceConc!22412)

(assert (=> b!3571748 (= lt!1224299 (printTailRec!1596 thiss!18206 lt!1224298 0 (BalanceConc!22413 Empty!11399)))))

(declare-fun print!2166 (LexerInterface!5101 BalanceConc!22414) BalanceConc!22412)

(assert (=> b!3571748 (= lt!1224299 (print!2166 thiss!18206 lt!1224298))))

(declare-fun singletonSeq!2608 (Token!10390) BalanceConc!22414)

(assert (=> b!3571748 (= lt!1224298 (singletonSeq!2608 (h!42931 (t!289154 tokens!494))))))

(declare-fun e!2209542 () Bool)

(assert (=> b!3571748 e!2209542))

(declare-fun res!1440554 () Bool)

(assert (=> b!3571748 (=> (not res!1440554) (not e!2209542))))

(declare-fun lt!1224304 () tuple2!37424)

(assert (=> b!3571748 (= res!1440554 (= (size!28601 (_1!21846 lt!1224304)) 1))))

(declare-fun lt!1224313 () BalanceConc!22412)

(assert (=> b!3571748 (= lt!1224304 (lex!2427 thiss!18206 rules!2135 lt!1224313))))

(declare-fun lt!1224312 () BalanceConc!22414)

(assert (=> b!3571748 (= lt!1224313 (printTailRec!1596 thiss!18206 lt!1224312 0 (BalanceConc!22413 Empty!11399)))))

(assert (=> b!3571748 (= lt!1224313 (print!2166 thiss!18206 lt!1224312))))

(assert (=> b!3571748 (= lt!1224312 (singletonSeq!2608 separatorToken!241))))

(declare-fun lt!1224316 () Unit!53497)

(declare-fun e!2209571 () Unit!53497)

(assert (=> b!3571748 (= lt!1224316 e!2209571)))

(declare-fun c!618921 () Bool)

(assert (=> b!3571748 (= c!618921 (not (contains!7100 lt!1224293 lt!1224317)))))

(assert (=> b!3571748 (= lt!1224317 (head!7443 lt!1224334))))

(assert (=> b!3571748 (= lt!1224293 (usedCharacters!746 (regex!5512 (rule!8210 separatorToken!241))))))

(assert (=> b!3571748 e!2209569))

(declare-fun res!1440547 () Bool)

(assert (=> b!3571748 (=> (not res!1440547) (not e!2209569))))

(assert (=> b!3571748 (= res!1440547 (isDefined!5936 lt!1224295))))

(assert (=> b!3571748 (= lt!1224295 (getRuleFromTag!1155 thiss!18206 rules!2135 (tag!6172 (rule!8210 separatorToken!241))))))

(declare-fun lt!1224333 () Unit!53497)

(assert (=> b!3571748 (= lt!1224333 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1155 thiss!18206 rules!2135 lt!1224334 separatorToken!241))))

(assert (=> b!3571748 (= (maxPrefixOneRule!1808 thiss!18206 (rule!8210 (h!42931 tokens!494)) lt!1224328) (Some!7693 (tuple2!37427 (Token!10391 (apply!9021 (transformation!5512 (rule!8210 (h!42931 tokens!494))) lt!1224324) (rule!8210 (h!42931 tokens!494)) (size!28600 lt!1224328) lt!1224328) Nil!37509)))))

(declare-fun lt!1224326 () Unit!53497)

(assert (=> b!3571748 (= lt!1224326 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!901 thiss!18206 rules!2135 lt!1224328 lt!1224328 Nil!37509 (rule!8210 (h!42931 tokens!494))))))

(assert (=> b!3571748 e!2209561))

(declare-fun res!1440545 () Bool)

(assert (=> b!3571748 (=> (not res!1440545) (not e!2209561))))

(assert (=> b!3571748 (= res!1440545 (isDefined!5936 lt!1224336))))

(assert (=> b!3571748 (= lt!1224336 (getRuleFromTag!1155 thiss!18206 rules!2135 (tag!6172 (rule!8210 (h!42931 tokens!494)))))))

(declare-fun lt!1224301 () Unit!53497)

(assert (=> b!3571748 (= lt!1224301 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1155 thiss!18206 rules!2135 lt!1224328 (h!42931 tokens!494)))))

(declare-fun lt!1224300 () Unit!53497)

(assert (=> b!3571748 (= lt!1224300 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1090 thiss!18206 rules!2135 tokens!494 (h!42931 tokens!494)))))

(declare-fun b!3571749 () Bool)

(assert (=> b!3571749 (= e!2209542 (isEmpty!22049 (_2!21846 lt!1224304)))))

(declare-fun b!3571750 () Bool)

(declare-fun res!1440551 () Bool)

(assert (=> b!3571750 (=> (not res!1440551) (not e!2209575))))

(assert (=> b!3571750 (= res!1440551 (rulesProduceIndividualToken!2593 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3571751 () Bool)

(declare-fun res!1440553 () Bool)

(assert (=> b!3571751 (=> (not res!1440553) (not e!2209542))))

(assert (=> b!3571751 (= res!1440553 (= (apply!9020 (_1!21846 lt!1224304) 0) separatorToken!241))))

(declare-fun b!3571752 () Bool)

(declare-fun Unit!53499 () Unit!53497)

(assert (=> b!3571752 (= e!2209548 Unit!53499)))

(declare-fun lt!1224323 () Unit!53497)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!570 (Regex!10271 List!37633 C!20728) Unit!53497)

(assert (=> b!3571752 (= lt!1224323 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!570 (regex!5512 (rule!8210 (h!42931 (t!289154 tokens!494)))) lt!1224321 lt!1224311))))

(declare-fun res!1440548 () Bool)

(assert (=> b!3571752 (= res!1440548 (not (matchR!4855 (regex!5512 (rule!8210 (h!42931 (t!289154 tokens!494)))) lt!1224321)))))

(assert (=> b!3571752 (=> (not res!1440548) (not e!2209572))))

(assert (=> b!3571752 e!2209572))

(declare-fun b!3571753 () Bool)

(assert (=> b!3571753 (= e!2209541 (= (rule!8210 (h!42931 tokens!494)) lt!1224320))))

(declare-fun b!3571754 () Bool)

(declare-fun tp!1093846 () Bool)

(assert (=> b!3571754 (= e!2209566 (and tp!1093846 (inv!50780 (tag!6172 (rule!8210 separatorToken!241))) (inv!50783 (transformation!5512 (rule!8210 separatorToken!241))) e!2209550))))

(declare-fun b!3571755 () Bool)

(assert (=> b!3571755 (= e!2209575 (not e!2209553))))

(declare-fun res!1440534 () Bool)

(assert (=> b!3571755 (=> res!1440534 e!2209553)))

(assert (=> b!3571755 (= res!1440534 (not (= lt!1224339 lt!1224308)))))

(declare-fun printList!1649 (LexerInterface!5101 List!37635) List!37633)

(assert (=> b!3571755 (= lt!1224308 (printList!1649 thiss!18206 (Cons!37511 (h!42931 tokens!494) Nil!37511)))))

(declare-fun lt!1224292 () BalanceConc!22412)

(assert (=> b!3571755 (= lt!1224339 (list!13761 lt!1224292))))

(declare-fun lt!1224307 () BalanceConc!22414)

(assert (=> b!3571755 (= lt!1224292 (printTailRec!1596 thiss!18206 lt!1224307 0 (BalanceConc!22413 Empty!11399)))))

(assert (=> b!3571755 (= lt!1224292 (print!2166 thiss!18206 lt!1224307))))

(assert (=> b!3571755 (= lt!1224307 (singletonSeq!2608 (h!42931 tokens!494)))))

(declare-fun b!3571731 () Bool)

(declare-fun e!2209568 () Bool)

(assert (=> b!3571731 (= e!2209556 e!2209568)))

(declare-fun res!1440549 () Bool)

(assert (=> b!3571731 (=> res!1440549 e!2209568)))

(assert (=> b!3571731 (= res!1440549 (or (isSeparator!5512 (rule!8210 (h!42931 tokens!494))) (isSeparator!5512 (rule!8210 (h!42931 (t!289154 tokens!494))))))))

(declare-fun lt!1224319 () Unit!53497)

(assert (=> b!3571731 (= lt!1224319 (forallContained!1459 tokens!494 lambda!123480 (h!42931 (t!289154 tokens!494))))))

(declare-fun lt!1224310 () Unit!53497)

(assert (=> b!3571731 (= lt!1224310 (forallContained!1459 tokens!494 lambda!123480 (h!42931 tokens!494)))))

(declare-fun res!1440550 () Bool)

(assert (=> start!330922 (=> (not res!1440550) (not e!2209575))))

(assert (=> start!330922 (= res!1440550 ((_ is Lexer!5099) thiss!18206))))

(assert (=> start!330922 e!2209575))

(assert (=> start!330922 true))

(assert (=> start!330922 e!2209562))

(assert (=> start!330922 e!2209559))

(assert (=> start!330922 (and (inv!50784 separatorToken!241) e!2209557)))

(declare-fun b!3571756 () Bool)

(declare-fun Unit!53500 () Unit!53497)

(assert (=> b!3571756 (= e!2209571 Unit!53500)))

(declare-fun b!3571757 () Bool)

(assert (=> b!3571757 (= e!2209568 e!2209549)))

(declare-fun res!1440556 () Bool)

(assert (=> b!3571757 (=> res!1440556 e!2209549)))

(declare-fun printWithSeparatorTokenList!388 (LexerInterface!5101 List!37635 Token!10390) List!37633)

(assert (=> b!3571757 (= res!1440556 (not (= lt!1224318 (++!9327 (++!9327 lt!1224321 lt!1224334) (printWithSeparatorTokenList!388 thiss!18206 (t!289154 (t!289154 tokens!494)) separatorToken!241)))))))

(assert (=> b!3571757 (= lt!1224321 (list!13761 (charsOf!3526 (h!42931 (t!289154 tokens!494)))))))

(assert (=> b!3571757 (= lt!1224332 (++!9327 lt!1224334 lt!1224318))))

(assert (=> b!3571757 (= lt!1224334 (list!13761 (charsOf!3526 separatorToken!241)))))

(assert (=> b!3571757 (= lt!1224318 (printWithSeparatorTokenList!388 thiss!18206 (t!289154 tokens!494) separatorToken!241))))

(assert (=> b!3571757 (= lt!1224305 (printWithSeparatorTokenList!388 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3571758 () Bool)

(assert (=> b!3571758 (= e!2209554 (= (rule!8210 separatorToken!241) lt!1224296))))

(assert (=> b!3571759 (= e!2209564 (and tp!1093844 tp!1093850))))

(declare-fun b!3571760 () Bool)

(declare-fun res!1440543 () Bool)

(assert (=> b!3571760 (=> (not res!1440543) (not e!2209575))))

(declare-fun sepAndNonSepRulesDisjointChars!1706 (List!37634 List!37634) Bool)

(assert (=> b!3571760 (= res!1440543 (sepAndNonSepRulesDisjointChars!1706 rules!2135 rules!2135))))

(declare-fun b!3571761 () Bool)

(declare-fun Unit!53501 () Unit!53497)

(assert (=> b!3571761 (= e!2209548 Unit!53501)))

(declare-fun b!3571762 () Bool)

(declare-fun Unit!53502 () Unit!53497)

(assert (=> b!3571762 (= e!2209571 Unit!53502)))

(declare-fun lt!1224329 () Unit!53497)

(assert (=> b!3571762 (= lt!1224329 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!570 (regex!5512 (rule!8210 separatorToken!241)) lt!1224334 lt!1224317))))

(declare-fun res!1440560 () Bool)

(assert (=> b!3571762 (= res!1440560 (not (matchR!4855 (regex!5512 (rule!8210 separatorToken!241)) lt!1224334)))))

(declare-fun e!2209547 () Bool)

(assert (=> b!3571762 (=> (not res!1440560) (not e!2209547))))

(assert (=> b!3571762 e!2209547))

(declare-fun b!3571763 () Bool)

(assert (=> b!3571763 (= e!2209547 false)))

(assert (= (and start!330922 res!1440550) b!3571725))

(assert (= (and b!3571725 res!1440555) b!3571745))

(assert (= (and b!3571745 res!1440544) b!3571743))

(assert (= (and b!3571743 res!1440546) b!3571750))

(assert (= (and b!3571750 res!1440551) b!3571723))

(assert (= (and b!3571723 res!1440557) b!3571735))

(assert (= (and b!3571735 res!1440535) b!3571760))

(assert (= (and b!3571760 res!1440543) b!3571734))

(assert (= (and b!3571734 res!1440540) b!3571755))

(assert (= (and b!3571755 (not res!1440534)) b!3571729))

(assert (= (and b!3571729 (not res!1440537)) b!3571728))

(assert (= (and b!3571728 (not res!1440561)) b!3571727))

(assert (= (and b!3571727 (not res!1440562)) b!3571731))

(assert (= (and b!3571731 (not res!1440549)) b!3571757))

(assert (= (and b!3571757 (not res!1440556)) b!3571740))

(assert (= (and b!3571740 (not res!1440538)) b!3571738))

(assert (= (and b!3571738 (not res!1440541)) b!3571748))

(assert (= (and b!3571748 res!1440545) b!3571744))

(assert (= (and b!3571744 res!1440552) b!3571753))

(assert (= (and b!3571748 res!1440547) b!3571721))

(assert (= (and b!3571721 res!1440539) b!3571758))

(assert (= (and b!3571748 c!618921) b!3571762))

(assert (= (and b!3571748 (not c!618921)) b!3571756))

(assert (= (and b!3571762 res!1440560) b!3571763))

(assert (= (and b!3571748 res!1440554) b!3571751))

(assert (= (and b!3571751 res!1440553) b!3571749))

(assert (= (and b!3571748 (not res!1440542)) b!3571739))

(assert (= (and b!3571739 (not res!1440536)) b!3571736))

(assert (= (and b!3571748 res!1440559) b!3571737))

(assert (= (and b!3571737 res!1440558) b!3571730))

(assert (= (and b!3571748 c!618920) b!3571752))

(assert (= (and b!3571748 (not c!618920)) b!3571761))

(assert (= (and b!3571752 res!1440548) b!3571742))

(assert (= b!3571746 b!3571724))

(assert (= b!3571733 b!3571746))

(assert (= (and start!330922 ((_ is Cons!37510) rules!2135)) b!3571733))

(assert (= b!3571741 b!3571759))

(assert (= b!3571732 b!3571741))

(assert (= b!3571747 b!3571732))

(assert (= (and start!330922 ((_ is Cons!37511) tokens!494)) b!3571747))

(assert (= b!3571754 b!3571722))

(assert (= b!3571726 b!3571754))

(assert (= start!330922 b!3571726))

(declare-fun m!4060791 () Bool)

(assert (=> b!3571732 m!4060791))

(declare-fun m!4060793 () Bool)

(assert (=> b!3571750 m!4060793))

(declare-fun m!4060795 () Bool)

(assert (=> b!3571725 m!4060795))

(declare-fun m!4060797 () Bool)

(assert (=> b!3571728 m!4060797))

(declare-fun m!4060799 () Bool)

(assert (=> b!3571747 m!4060799))

(declare-fun m!4060801 () Bool)

(assert (=> b!3571746 m!4060801))

(declare-fun m!4060803 () Bool)

(assert (=> b!3571746 m!4060803))

(declare-fun m!4060805 () Bool)

(assert (=> b!3571739 m!4060805))

(declare-fun m!4060807 () Bool)

(assert (=> b!3571726 m!4060807))

(declare-fun m!4060809 () Bool)

(assert (=> b!3571762 m!4060809))

(declare-fun m!4060811 () Bool)

(assert (=> b!3571762 m!4060811))

(declare-fun m!4060813 () Bool)

(assert (=> b!3571737 m!4060813))

(declare-fun m!4060815 () Bool)

(assert (=> b!3571737 m!4060815))

(declare-fun m!4060817 () Bool)

(assert (=> b!3571755 m!4060817))

(declare-fun m!4060819 () Bool)

(assert (=> b!3571755 m!4060819))

(declare-fun m!4060821 () Bool)

(assert (=> b!3571755 m!4060821))

(declare-fun m!4060823 () Bool)

(assert (=> b!3571755 m!4060823))

(declare-fun m!4060825 () Bool)

(assert (=> b!3571755 m!4060825))

(declare-fun m!4060827 () Bool)

(assert (=> b!3571738 m!4060827))

(declare-fun m!4060829 () Bool)

(assert (=> b!3571738 m!4060829))

(declare-fun m!4060831 () Bool)

(assert (=> b!3571748 m!4060831))

(declare-fun m!4060833 () Bool)

(assert (=> b!3571748 m!4060833))

(declare-fun m!4060835 () Bool)

(assert (=> b!3571748 m!4060835))

(declare-fun m!4060837 () Bool)

(assert (=> b!3571748 m!4060837))

(declare-fun m!4060839 () Bool)

(assert (=> b!3571748 m!4060839))

(declare-fun m!4060841 () Bool)

(assert (=> b!3571748 m!4060841))

(declare-fun m!4060843 () Bool)

(assert (=> b!3571748 m!4060843))

(declare-fun m!4060845 () Bool)

(assert (=> b!3571748 m!4060845))

(declare-fun m!4060847 () Bool)

(assert (=> b!3571748 m!4060847))

(declare-fun m!4060849 () Bool)

(assert (=> b!3571748 m!4060849))

(declare-fun m!4060851 () Bool)

(assert (=> b!3571748 m!4060851))

(declare-fun m!4060853 () Bool)

(assert (=> b!3571748 m!4060853))

(declare-fun m!4060855 () Bool)

(assert (=> b!3571748 m!4060855))

(declare-fun m!4060857 () Bool)

(assert (=> b!3571748 m!4060857))

(declare-fun m!4060859 () Bool)

(assert (=> b!3571748 m!4060859))

(declare-fun m!4060861 () Bool)

(assert (=> b!3571748 m!4060861))

(declare-fun m!4060863 () Bool)

(assert (=> b!3571748 m!4060863))

(declare-fun m!4060865 () Bool)

(assert (=> b!3571748 m!4060865))

(declare-fun m!4060867 () Bool)

(assert (=> b!3571748 m!4060867))

(declare-fun m!4060869 () Bool)

(assert (=> b!3571748 m!4060869))

(declare-fun m!4060871 () Bool)

(assert (=> b!3571748 m!4060871))

(declare-fun m!4060873 () Bool)

(assert (=> b!3571748 m!4060873))

(declare-fun m!4060875 () Bool)

(assert (=> b!3571748 m!4060875))

(declare-fun m!4060877 () Bool)

(assert (=> b!3571748 m!4060877))

(declare-fun m!4060879 () Bool)

(assert (=> b!3571748 m!4060879))

(declare-fun m!4060881 () Bool)

(assert (=> b!3571748 m!4060881))

(declare-fun m!4060883 () Bool)

(assert (=> b!3571748 m!4060883))

(declare-fun m!4060885 () Bool)

(assert (=> b!3571748 m!4060885))

(declare-fun m!4060887 () Bool)

(assert (=> b!3571748 m!4060887))

(declare-fun m!4060889 () Bool)

(assert (=> b!3571748 m!4060889))

(assert (=> b!3571748 m!4060871))

(declare-fun m!4060891 () Bool)

(assert (=> b!3571748 m!4060891))

(declare-fun m!4060893 () Bool)

(assert (=> b!3571748 m!4060893))

(declare-fun m!4060895 () Bool)

(assert (=> b!3571748 m!4060895))

(declare-fun m!4060897 () Bool)

(assert (=> b!3571748 m!4060897))

(declare-fun m!4060899 () Bool)

(assert (=> b!3571748 m!4060899))

(declare-fun m!4060901 () Bool)

(assert (=> b!3571748 m!4060901))

(declare-fun m!4060903 () Bool)

(assert (=> b!3571748 m!4060903))

(declare-fun m!4060905 () Bool)

(assert (=> b!3571748 m!4060905))

(declare-fun m!4060907 () Bool)

(assert (=> b!3571748 m!4060907))

(declare-fun m!4060909 () Bool)

(assert (=> b!3571748 m!4060909))

(declare-fun m!4060911 () Bool)

(assert (=> b!3571748 m!4060911))

(assert (=> b!3571748 m!4060831))

(declare-fun m!4060913 () Bool)

(assert (=> b!3571748 m!4060913))

(declare-fun m!4060915 () Bool)

(assert (=> b!3571748 m!4060915))

(declare-fun m!4060917 () Bool)

(assert (=> b!3571748 m!4060917))

(declare-fun m!4060919 () Bool)

(assert (=> b!3571748 m!4060919))

(declare-fun m!4060921 () Bool)

(assert (=> b!3571748 m!4060921))

(assert (=> b!3571748 m!4060915))

(declare-fun m!4060923 () Bool)

(assert (=> b!3571748 m!4060923))

(declare-fun m!4060925 () Bool)

(assert (=> b!3571736 m!4060925))

(declare-fun m!4060927 () Bool)

(assert (=> b!3571749 m!4060927))

(declare-fun m!4060929 () Bool)

(assert (=> b!3571741 m!4060929))

(declare-fun m!4060931 () Bool)

(assert (=> b!3571741 m!4060931))

(declare-fun m!4060933 () Bool)

(assert (=> b!3571757 m!4060933))

(declare-fun m!4060935 () Bool)

(assert (=> b!3571757 m!4060935))

(declare-fun m!4060937 () Bool)

(assert (=> b!3571757 m!4060937))

(declare-fun m!4060939 () Bool)

(assert (=> b!3571757 m!4060939))

(declare-fun m!4060941 () Bool)

(assert (=> b!3571757 m!4060941))

(declare-fun m!4060943 () Bool)

(assert (=> b!3571757 m!4060943))

(assert (=> b!3571757 m!4060933))

(declare-fun m!4060945 () Bool)

(assert (=> b!3571757 m!4060945))

(declare-fun m!4060947 () Bool)

(assert (=> b!3571757 m!4060947))

(assert (=> b!3571757 m!4060939))

(declare-fun m!4060949 () Bool)

(assert (=> b!3571757 m!4060949))

(assert (=> b!3571757 m!4060943))

(declare-fun m!4060951 () Bool)

(assert (=> b!3571757 m!4060951))

(assert (=> b!3571757 m!4060949))

(declare-fun m!4060953 () Bool)

(assert (=> b!3571740 m!4060953))

(assert (=> b!3571740 m!4060953))

(declare-fun m!4060955 () Bool)

(assert (=> b!3571740 m!4060955))

(declare-fun m!4060957 () Bool)

(assert (=> b!3571729 m!4060957))

(assert (=> b!3571729 m!4060957))

(declare-fun m!4060959 () Bool)

(assert (=> b!3571729 m!4060959))

(declare-fun m!4060961 () Bool)

(assert (=> b!3571743 m!4060961))

(assert (=> b!3571743 m!4060961))

(declare-fun m!4060963 () Bool)

(assert (=> b!3571743 m!4060963))

(declare-fun m!4060965 () Bool)

(assert (=> start!330922 m!4060965))

(declare-fun m!4060967 () Bool)

(assert (=> b!3571721 m!4060967))

(declare-fun m!4060969 () Bool)

(assert (=> b!3571721 m!4060969))

(declare-fun m!4060971 () Bool)

(assert (=> b!3571754 m!4060971))

(declare-fun m!4060973 () Bool)

(assert (=> b!3571754 m!4060973))

(declare-fun m!4060975 () Bool)

(assert (=> b!3571727 m!4060975))

(declare-fun m!4060977 () Bool)

(assert (=> b!3571727 m!4060977))

(declare-fun m!4060979 () Bool)

(assert (=> b!3571727 m!4060979))

(declare-fun m!4060981 () Bool)

(assert (=> b!3571760 m!4060981))

(declare-fun m!4060983 () Bool)

(assert (=> b!3571751 m!4060983))

(declare-fun m!4060985 () Bool)

(assert (=> b!3571744 m!4060985))

(declare-fun m!4060987 () Bool)

(assert (=> b!3571744 m!4060987))

(declare-fun m!4060989 () Bool)

(assert (=> b!3571745 m!4060989))

(declare-fun m!4060991 () Bool)

(assert (=> b!3571735 m!4060991))

(declare-fun m!4060993 () Bool)

(assert (=> b!3571752 m!4060993))

(declare-fun m!4060995 () Bool)

(assert (=> b!3571752 m!4060995))

(declare-fun m!4060997 () Bool)

(assert (=> b!3571731 m!4060997))

(declare-fun m!4060999 () Bool)

(assert (=> b!3571731 m!4060999))

(check-sat (not b!3571739) (not b!3571745) (not b!3571757) (not start!330922) (not b!3571733) b_and!257053 b_and!257055 (not b!3571750) (not b!3571772) (not b!3571760) (not b!3571740) (not b!3571744) (not b!3571748) b_and!257047 (not b!3571727) (not b_next!92153) (not b!3571732) b_and!257051 (not b!3571751) (not b!3571731) (not b!3571747) (not b_next!92157) (not b_next!92163) (not b!3571762) (not b!3571752) b_and!257049 b_and!257057 (not b!3571728) (not b!3571736) (not b!3571749) (not b!3571729) (not b!3571746) (not b!3571726) (not b!3571725) (not b!3571743) (not b!3571721) (not b!3571737) (not b!3571735) (not b!3571741) (not b_next!92159) (not b!3571755) (not b_next!92155) (not b!3571754) (not b!3571738) (not b_next!92161))
(check-sat b_and!257047 (not b_next!92159) (not b_next!92155) (not b_next!92161) b_and!257053 b_and!257055 (not b_next!92153) b_and!257051 (not b_next!92157) (not b_next!92163) b_and!257049 b_and!257057)
