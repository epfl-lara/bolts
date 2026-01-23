; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51152 () Bool)

(assert start!51152)

(declare-fun b!552310 () Bool)

(declare-fun b_free!15457 () Bool)

(declare-fun b_next!15473 () Bool)

(assert (=> b!552310 (= b_free!15457 (not b_next!15473))))

(declare-fun tp!174687 () Bool)

(declare-fun b_and!53939 () Bool)

(assert (=> b!552310 (= tp!174687 b_and!53939)))

(declare-fun b_free!15459 () Bool)

(declare-fun b_next!15475 () Bool)

(assert (=> b!552310 (= b_free!15459 (not b_next!15475))))

(declare-fun tp!174692 () Bool)

(declare-fun b_and!53941 () Bool)

(assert (=> b!552310 (= tp!174692 b_and!53941)))

(declare-fun b!552304 () Bool)

(declare-fun b_free!15461 () Bool)

(declare-fun b_next!15477 () Bool)

(assert (=> b!552304 (= b_free!15461 (not b_next!15477))))

(declare-fun tp!174691 () Bool)

(declare-fun b_and!53943 () Bool)

(assert (=> b!552304 (= tp!174691 b_and!53943)))

(declare-fun b_free!15463 () Bool)

(declare-fun b_next!15479 () Bool)

(assert (=> b!552304 (= b_free!15463 (not b_next!15479))))

(declare-fun tp!174683 () Bool)

(declare-fun b_and!53945 () Bool)

(assert (=> b!552304 (= tp!174683 b_and!53945)))

(declare-fun e!334148 () Bool)

(declare-fun tp!174689 () Bool)

(declare-datatypes ((C!3676 0))(
  ( (C!3677 (val!2064 Int)) )
))
(declare-datatypes ((Regex!1377 0))(
  ( (ElementMatch!1377 (c!103780 C!3676)) (Concat!2444 (regOne!3266 Regex!1377) (regTwo!3266 Regex!1377)) (EmptyExpr!1377) (Star!1377 (reg!1706 Regex!1377)) (EmptyLang!1377) (Union!1377 (regOne!3267 Regex!1377) (regTwo!3267 Regex!1377)) )
))
(declare-datatypes ((List!5487 0))(
  ( (Nil!5477) (Cons!5477 (h!10878 (_ BitVec 16)) (t!75160 List!5487)) )
))
(declare-datatypes ((TokenValue!1067 0))(
  ( (FloatLiteralValue!2134 (text!7914 List!5487)) (TokenValueExt!1066 (__x!4032 Int)) (Broken!5335 (value!34566 List!5487)) (Object!1076) (End!1067) (Def!1067) (Underscore!1067) (Match!1067) (Else!1067) (Error!1067) (Case!1067) (If!1067) (Extends!1067) (Abstract!1067) (Class!1067) (Val!1067) (DelimiterValue!2134 (del!1127 List!5487)) (KeywordValue!1073 (value!34567 List!5487)) (CommentValue!2134 (value!34568 List!5487)) (WhitespaceValue!2134 (value!34569 List!5487)) (IndentationValue!1067 (value!34570 List!5487)) (String!7078) (Int32!1067) (Broken!5336 (value!34571 List!5487)) (Boolean!1068) (Unit!9722) (OperatorValue!1070 (op!1127 List!5487)) (IdentifierValue!2134 (value!34572 List!5487)) (IdentifierValue!2135 (value!34573 List!5487)) (WhitespaceValue!2135 (value!34574 List!5487)) (True!2134) (False!2134) (Broken!5337 (value!34575 List!5487)) (Broken!5338 (value!34576 List!5487)) (True!2135) (RightBrace!1067) (RightBracket!1067) (Colon!1067) (Null!1067) (Comma!1067) (LeftBracket!1067) (False!2135) (LeftBrace!1067) (ImaginaryLiteralValue!1067 (text!7915 List!5487)) (StringLiteralValue!3201 (value!34577 List!5487)) (EOFValue!1067 (value!34578 List!5487)) (IdentValue!1067 (value!34579 List!5487)) (DelimiterValue!2135 (value!34580 List!5487)) (DedentValue!1067 (value!34581 List!5487)) (NewLineValue!1067 (value!34582 List!5487)) (IntegerValue!3201 (value!34583 (_ BitVec 32)) (text!7916 List!5487)) (IntegerValue!3202 (value!34584 Int) (text!7917 List!5487)) (Times!1067) (Or!1067) (Equal!1067) (Minus!1067) (Broken!5339 (value!34585 List!5487)) (And!1067) (Div!1067) (LessEqual!1067) (Mod!1067) (Concat!2445) (Not!1067) (Plus!1067) (SpaceValue!1067 (value!34586 List!5487)) (IntegerValue!3203 (value!34587 Int) (text!7918 List!5487)) (StringLiteralValue!3202 (text!7919 List!5487)) (FloatLiteralValue!2135 (text!7920 List!5487)) (BytesLiteralValue!1067 (value!34588 List!5487)) (CommentValue!2135 (value!34589 List!5487)) (StringLiteralValue!3203 (value!34590 List!5487)) (ErrorTokenValue!1067 (msg!1128 List!5487)) )
))
(declare-datatypes ((String!7079 0))(
  ( (String!7080 (value!34591 String)) )
))
(declare-datatypes ((List!5488 0))(
  ( (Nil!5478) (Cons!5478 (h!10879 C!3676) (t!75161 List!5488)) )
))
(declare-datatypes ((IArray!3521 0))(
  ( (IArray!3522 (innerList!1818 List!5488)) )
))
(declare-datatypes ((Conc!1760 0))(
  ( (Node!1760 (left!4518 Conc!1760) (right!4848 Conc!1760) (csize!3750 Int) (cheight!1971 Int)) (Leaf!2789 (xs!4397 IArray!3521) (csize!3751 Int)) (Empty!1760) )
))
(declare-datatypes ((BalanceConc!3528 0))(
  ( (BalanceConc!3529 (c!103781 Conc!1760)) )
))
(declare-datatypes ((TokenValueInjection!1902 0))(
  ( (TokenValueInjection!1903 (toValue!1890 Int) (toChars!1749 Int)) )
))
(declare-datatypes ((Rule!1886 0))(
  ( (Rule!1887 (regex!1043 Regex!1377) (tag!1305 String!7079) (isSeparator!1043 Bool) (transformation!1043 TokenValueInjection!1902)) )
))
(declare-datatypes ((Token!1822 0))(
  ( (Token!1823 (value!34592 TokenValue!1067) (rule!1769 Rule!1886) (size!4373 Int) (originalCharacters!1082 List!5488)) )
))
(declare-fun token!491 () Token!1822)

(declare-fun e!334144 () Bool)

(declare-fun b!552298 () Bool)

(declare-fun inv!6867 (String!7079) Bool)

(declare-fun inv!6870 (TokenValueInjection!1902) Bool)

(assert (=> b!552298 (= e!334148 (and tp!174689 (inv!6867 (tag!1305 (rule!1769 token!491))) (inv!6870 (transformation!1043 (rule!1769 token!491))) e!334144))))

(declare-fun b!552299 () Bool)

(declare-fun e!334139 () Bool)

(declare-fun tp_is_empty!3109 () Bool)

(declare-fun tp!174688 () Bool)

(assert (=> b!552299 (= e!334139 (and tp_is_empty!3109 tp!174688))))

(declare-fun b!552300 () Bool)

(declare-datatypes ((List!5489 0))(
  ( (Nil!5479) (Cons!5479 (h!10880 Rule!1886) (t!75162 List!5489)) )
))
(declare-fun rules!3103 () List!5489)

(declare-fun tp!174685 () Bool)

(declare-fun e!334135 () Bool)

(declare-fun e!334142 () Bool)

(assert (=> b!552300 (= e!334135 (and tp!174685 (inv!6867 (tag!1305 (h!10880 rules!3103))) (inv!6870 (transformation!1043 (h!10880 rules!3103))) e!334142))))

(declare-fun b!552301 () Bool)

(declare-fun e!334147 () Bool)

(declare-fun tp!174686 () Bool)

(assert (=> b!552301 (= e!334147 (and tp_is_empty!3109 tp!174686))))

(declare-fun b!552302 () Bool)

(declare-fun e!334138 () Bool)

(declare-fun e!334146 () Bool)

(assert (=> b!552302 (= e!334138 e!334146)))

(declare-fun res!236858 () Bool)

(assert (=> b!552302 (=> (not res!236858) (not e!334146))))

(declare-fun suffix!1342 () List!5488)

(declare-datatypes ((tuple2!6492 0))(
  ( (tuple2!6493 (_1!3510 Token!1822) (_2!3510 List!5488)) )
))
(declare-fun lt!233023 () tuple2!6492)

(assert (=> b!552302 (= res!236858 (and (= (_1!3510 lt!233023) token!491) (= (_2!3510 lt!233023) suffix!1342)))))

(declare-datatypes ((Option!1393 0))(
  ( (None!1392) (Some!1392 (v!16219 tuple2!6492)) )
))
(declare-fun lt!233020 () Option!1393)

(declare-fun get!2079 (Option!1393) tuple2!6492)

(assert (=> b!552302 (= lt!233023 (get!2079 lt!233020))))

(declare-fun b!552303 () Bool)

(declare-fun e!334136 () Bool)

(assert (=> b!552303 (= e!334136 e!334138)))

(declare-fun res!236861 () Bool)

(assert (=> b!552303 (=> (not res!236861) (not e!334138))))

(declare-fun isDefined!1205 (Option!1393) Bool)

(assert (=> b!552303 (= res!236861 (isDefined!1205 lt!233020))))

(declare-fun lt!233022 () List!5488)

(declare-datatypes ((LexerInterface!929 0))(
  ( (LexerInterfaceExt!926 (__x!4033 Int)) (Lexer!927) )
))
(declare-fun thiss!22590 () LexerInterface!929)

(declare-fun maxPrefix!627 (LexerInterface!929 List!5489 List!5488) Option!1393)

(assert (=> b!552303 (= lt!233020 (maxPrefix!627 thiss!22590 rules!3103 lt!233022))))

(declare-fun input!2705 () List!5488)

(declare-fun ++!1531 (List!5488 List!5488) List!5488)

(assert (=> b!552303 (= lt!233022 (++!1531 input!2705 suffix!1342))))

(assert (=> b!552304 (= e!334142 (and tp!174691 tp!174683))))

(declare-fun b!552305 () Bool)

(declare-fun res!236859 () Bool)

(declare-fun e!334145 () Bool)

(assert (=> b!552305 (=> (not res!236859) (not e!334145))))

(declare-fun rulesInvariant!892 (LexerInterface!929 List!5489) Bool)

(assert (=> b!552305 (= res!236859 (rulesInvariant!892 thiss!22590 rules!3103))))

(declare-fun tp!174690 () Bool)

(declare-fun b!552306 () Bool)

(declare-fun e!334141 () Bool)

(declare-fun inv!21 (TokenValue!1067) Bool)

(assert (=> b!552306 (= e!334141 (and (inv!21 (value!34592 token!491)) e!334148 tp!174690))))

(declare-fun b!552307 () Bool)

(declare-fun e!334140 () Bool)

(declare-fun tp!174684 () Bool)

(assert (=> b!552307 (= e!334140 (and e!334135 tp!174684))))

(declare-fun b!552308 () Bool)

(declare-fun res!236864 () Bool)

(assert (=> b!552308 (=> (not res!236864) (not e!334146))))

(get-info :version)

(assert (=> b!552308 (= res!236864 ((_ is Some!1392) (maxPrefix!627 thiss!22590 rules!3103 input!2705)))))

(assert (=> b!552310 (= e!334144 (and tp!174687 tp!174692))))

(declare-fun b!552311 () Bool)

(declare-fun lt!233021 () List!5488)

(assert (=> b!552311 (= e!334146 (not (= (++!1531 lt!233021 suffix!1342) lt!233022)))))

(declare-fun b!552312 () Bool)

(declare-fun res!236860 () Bool)

(assert (=> b!552312 (=> (not res!236860) (not e!334145))))

(declare-fun isEmpty!3952 (List!5489) Bool)

(assert (=> b!552312 (= res!236860 (not (isEmpty!3952 rules!3103)))))

(declare-fun b!552313 () Bool)

(assert (=> b!552313 (= e!334145 e!334136)))

(declare-fun res!236862 () Bool)

(assert (=> b!552313 (=> (not res!236862) (not e!334136))))

(assert (=> b!552313 (= res!236862 (= lt!233021 input!2705))))

(declare-fun list!2269 (BalanceConc!3528) List!5488)

(declare-fun charsOf!672 (Token!1822) BalanceConc!3528)

(assert (=> b!552313 (= lt!233021 (list!2269 (charsOf!672 token!491)))))

(declare-fun res!236863 () Bool)

(assert (=> start!51152 (=> (not res!236863) (not e!334145))))

(assert (=> start!51152 (= res!236863 ((_ is Lexer!927) thiss!22590))))

(assert (=> start!51152 e!334145))

(assert (=> start!51152 e!334147))

(assert (=> start!51152 e!334140))

(declare-fun inv!6871 (Token!1822) Bool)

(assert (=> start!51152 (and (inv!6871 token!491) e!334141)))

(assert (=> start!51152 true))

(assert (=> start!51152 e!334139))

(declare-fun b!552309 () Bool)

(declare-fun res!236857 () Bool)

(assert (=> b!552309 (=> (not res!236857) (not e!334145))))

(declare-fun isEmpty!3953 (List!5488) Bool)

(assert (=> b!552309 (= res!236857 (not (isEmpty!3953 input!2705)))))

(assert (= (and start!51152 res!236863) b!552312))

(assert (= (and b!552312 res!236860) b!552305))

(assert (= (and b!552305 res!236859) b!552309))

(assert (= (and b!552309 res!236857) b!552313))

(assert (= (and b!552313 res!236862) b!552303))

(assert (= (and b!552303 res!236861) b!552302))

(assert (= (and b!552302 res!236858) b!552308))

(assert (= (and b!552308 res!236864) b!552311))

(assert (= (and start!51152 ((_ is Cons!5478) suffix!1342)) b!552301))

(assert (= b!552300 b!552304))

(assert (= b!552307 b!552300))

(assert (= (and start!51152 ((_ is Cons!5479) rules!3103)) b!552307))

(assert (= b!552298 b!552310))

(assert (= b!552306 b!552298))

(assert (= start!51152 b!552306))

(assert (= (and start!51152 ((_ is Cons!5478) input!2705)) b!552299))

(declare-fun m!801833 () Bool)

(assert (=> b!552305 m!801833))

(declare-fun m!801835 () Bool)

(assert (=> b!552308 m!801835))

(declare-fun m!801837 () Bool)

(assert (=> b!552312 m!801837))

(declare-fun m!801839 () Bool)

(assert (=> start!51152 m!801839))

(declare-fun m!801841 () Bool)

(assert (=> b!552300 m!801841))

(declare-fun m!801843 () Bool)

(assert (=> b!552300 m!801843))

(declare-fun m!801845 () Bool)

(assert (=> b!552302 m!801845))

(declare-fun m!801847 () Bool)

(assert (=> b!552306 m!801847))

(declare-fun m!801849 () Bool)

(assert (=> b!552298 m!801849))

(declare-fun m!801851 () Bool)

(assert (=> b!552298 m!801851))

(declare-fun m!801853 () Bool)

(assert (=> b!552313 m!801853))

(assert (=> b!552313 m!801853))

(declare-fun m!801855 () Bool)

(assert (=> b!552313 m!801855))

(declare-fun m!801857 () Bool)

(assert (=> b!552303 m!801857))

(declare-fun m!801859 () Bool)

(assert (=> b!552303 m!801859))

(declare-fun m!801861 () Bool)

(assert (=> b!552303 m!801861))

(declare-fun m!801863 () Bool)

(assert (=> b!552311 m!801863))

(declare-fun m!801865 () Bool)

(assert (=> b!552309 m!801865))

(check-sat (not b!552298) (not b!552306) (not b!552303) (not b_next!15479) (not b_next!15473) (not b!552311) (not b!552312) (not b!552300) (not b!552299) (not b!552305) b_and!53943 (not b!552301) (not b!552308) (not b!552307) (not b!552313) (not b!552309) b_and!53939 b_and!53941 (not b_next!15477) tp_is_empty!3109 (not b_next!15475) (not start!51152) (not b!552302) b_and!53945)
(check-sat b_and!53943 (not b_next!15479) (not b_next!15477) (not b_next!15475) (not b_next!15473) b_and!53945 b_and!53939 b_and!53941)
