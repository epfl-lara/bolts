; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274968 () Bool)

(assert start!274968)

(declare-fun b!2831095 () Bool)

(declare-fun b_free!81357 () Bool)

(declare-fun b_next!82061 () Bool)

(assert (=> b!2831095 (= b_free!81357 (not b_next!82061))))

(declare-fun tp!904671 () Bool)

(declare-fun b_and!207019 () Bool)

(assert (=> b!2831095 (= tp!904671 b_and!207019)))

(declare-fun b_free!81359 () Bool)

(declare-fun b_next!82063 () Bool)

(assert (=> b!2831095 (= b_free!81359 (not b_next!82063))))

(declare-fun tp!904672 () Bool)

(declare-fun b_and!207021 () Bool)

(assert (=> b!2831095 (= tp!904672 b_and!207021)))

(declare-fun b!2831100 () Bool)

(declare-fun b_free!81361 () Bool)

(declare-fun b_next!82065 () Bool)

(assert (=> b!2831100 (= b_free!81361 (not b_next!82065))))

(declare-fun tp!904668 () Bool)

(declare-fun b_and!207023 () Bool)

(assert (=> b!2831100 (= tp!904668 b_and!207023)))

(declare-fun b_free!81363 () Bool)

(declare-fun b_next!82067 () Bool)

(assert (=> b!2831100 (= b_free!81363 (not b_next!82067))))

(declare-fun tp!904670 () Bool)

(declare-fun b_and!207025 () Bool)

(assert (=> b!2831100 (= tp!904670 b_and!207025)))

(declare-fun b!2831088 () Bool)

(declare-fun e!1792357 () Bool)

(declare-fun e!1792361 () Bool)

(declare-fun tp!904667 () Bool)

(assert (=> b!2831088 (= e!1792357 (and e!1792361 tp!904667))))

(declare-fun b!2831089 () Bool)

(declare-fun res!1178516 () Bool)

(declare-fun e!1792365 () Bool)

(assert (=> b!2831089 (=> (not res!1178516) (not e!1792365))))

(declare-datatypes ((LexerInterface!4588 0))(
  ( (LexerInterfaceExt!4585 (__x!22194 Int)) (Lexer!4586) )
))
(declare-fun thiss!11007 () LexerInterface!4588)

(declare-datatypes ((List!33479 0))(
  ( (Nil!33355) (Cons!33355 (h!38775 (_ BitVec 16)) (t!231356 List!33479)) )
))
(declare-datatypes ((TokenValue!5228 0))(
  ( (FloatLiteralValue!10456 (text!37041 List!33479)) (TokenValueExt!5227 (__x!22195 Int)) (Broken!26140 (value!160786 List!33479)) (Object!5351) (End!5228) (Def!5228) (Underscore!5228) (Match!5228) (Else!5228) (Error!5228) (Case!5228) (If!5228) (Extends!5228) (Abstract!5228) (Class!5228) (Val!5228) (DelimiterValue!10456 (del!5288 List!33479)) (KeywordValue!5234 (value!160787 List!33479)) (CommentValue!10456 (value!160788 List!33479)) (WhitespaceValue!10456 (value!160789 List!33479)) (IndentationValue!5228 (value!160790 List!33479)) (String!36661) (Int32!5228) (Broken!26141 (value!160791 List!33479)) (Boolean!5229) (Unit!47350) (OperatorValue!5231 (op!5288 List!33479)) (IdentifierValue!10456 (value!160792 List!33479)) (IdentifierValue!10457 (value!160793 List!33479)) (WhitespaceValue!10457 (value!160794 List!33479)) (True!10456) (False!10456) (Broken!26142 (value!160795 List!33479)) (Broken!26143 (value!160796 List!33479)) (True!10457) (RightBrace!5228) (RightBracket!5228) (Colon!5228) (Null!5228) (Comma!5228) (LeftBracket!5228) (False!10457) (LeftBrace!5228) (ImaginaryLiteralValue!5228 (text!37042 List!33479)) (StringLiteralValue!15684 (value!160797 List!33479)) (EOFValue!5228 (value!160798 List!33479)) (IdentValue!5228 (value!160799 List!33479)) (DelimiterValue!10457 (value!160800 List!33479)) (DedentValue!5228 (value!160801 List!33479)) (NewLineValue!5228 (value!160802 List!33479)) (IntegerValue!15684 (value!160803 (_ BitVec 32)) (text!37043 List!33479)) (IntegerValue!15685 (value!160804 Int) (text!37044 List!33479)) (Times!5228) (Or!5228) (Equal!5228) (Minus!5228) (Broken!26144 (value!160805 List!33479)) (And!5228) (Div!5228) (LessEqual!5228) (Mod!5228) (Concat!13617) (Not!5228) (Plus!5228) (SpaceValue!5228 (value!160806 List!33479)) (IntegerValue!15686 (value!160807 Int) (text!37045 List!33479)) (StringLiteralValue!15685 (text!37046 List!33479)) (FloatLiteralValue!10457 (text!37047 List!33479)) (BytesLiteralValue!5228 (value!160808 List!33479)) (CommentValue!10457 (value!160809 List!33479)) (StringLiteralValue!15686 (value!160810 List!33479)) (ErrorTokenValue!5228 (msg!5289 List!33479)) )
))
(declare-datatypes ((C!16960 0))(
  ( (C!16961 (val!10492 Int)) )
))
(declare-datatypes ((List!33480 0))(
  ( (Nil!33356) (Cons!33356 (h!38776 C!16960) (t!231357 List!33480)) )
))
(declare-datatypes ((IArray!20707 0))(
  ( (IArray!20708 (innerList!10411 List!33480)) )
))
(declare-datatypes ((Conc!10351 0))(
  ( (Node!10351 (left!25169 Conc!10351) (right!25499 Conc!10351) (csize!20932 Int) (cheight!10562 Int)) (Leaf!15758 (xs!13463 IArray!20707) (csize!20933 Int)) (Empty!10351) )
))
(declare-datatypes ((String!36662 0))(
  ( (String!36663 (value!160811 String)) )
))
(declare-datatypes ((Regex!8389 0))(
  ( (ElementMatch!8389 (c!457871 C!16960)) (Concat!13618 (regOne!17290 Regex!8389) (regTwo!17290 Regex!8389)) (EmptyExpr!8389) (Star!8389 (reg!8718 Regex!8389)) (EmptyLang!8389) (Union!8389 (regOne!17291 Regex!8389) (regTwo!17291 Regex!8389)) )
))
(declare-datatypes ((BalanceConc!20340 0))(
  ( (BalanceConc!20341 (c!457872 Conc!10351)) )
))
(declare-datatypes ((TokenValueInjection!9884 0))(
  ( (TokenValueInjection!9885 (toValue!7024 Int) (toChars!6883 Int)) )
))
(declare-datatypes ((Rule!9796 0))(
  ( (Rule!9797 (regex!4998 Regex!8389) (tag!5502 String!36662) (isSeparator!4998 Bool) (transformation!4998 TokenValueInjection!9884)) )
))
(declare-datatypes ((Token!9398 0))(
  ( (Token!9399 (value!160812 TokenValue!5228) (rule!7426 Rule!9796) (size!25961 Int) (originalCharacters!5730 List!33480)) )
))
(declare-datatypes ((List!33481 0))(
  ( (Nil!33357) (Cons!33357 (h!38777 Token!9398) (t!231358 List!33481)) )
))
(declare-fun l!4019 () List!33481)

(declare-datatypes ((List!33482 0))(
  ( (Nil!33358) (Cons!33358 (h!38778 Rule!9796) (t!231359 List!33482)) )
))
(declare-fun rules!1047 () List!33482)

(declare-datatypes ((IArray!20709 0))(
  ( (IArray!20710 (innerList!10412 List!33481)) )
))
(declare-datatypes ((Conc!10352 0))(
  ( (Node!10352 (left!25170 Conc!10352) (right!25500 Conc!10352) (csize!20934 Int) (cheight!10563 Int)) (Leaf!15759 (xs!13464 IArray!20709) (csize!20935 Int)) (Empty!10352) )
))
(declare-datatypes ((BalanceConc!20342 0))(
  ( (BalanceConc!20343 (c!457873 Conc!10352)) )
))
(declare-fun rulesProduceEachTokenIndividually!1104 (LexerInterface!4588 List!33482 BalanceConc!20342) Bool)

(declare-fun seqFromList!3244 (List!33481) BalanceConc!20342)

(assert (=> b!2831089 (= res!1178516 (rulesProduceEachTokenIndividually!1104 thiss!11007 rules!1047 (seqFromList!3244 l!4019)))))

(declare-fun b!2831091 () Bool)

(declare-fun res!1178520 () Bool)

(assert (=> b!2831091 (=> (not res!1178520) (not e!1792365))))

(declare-fun rulesInvariant!4004 (LexerInterface!4588 List!33482) Bool)

(assert (=> b!2831091 (= res!1178520 (rulesInvariant!4004 thiss!11007 rules!1047))))

(declare-fun b!2831092 () Bool)

(declare-fun res!1178519 () Bool)

(assert (=> b!2831092 (=> (not res!1178519) (not e!1792365))))

(declare-fun isEmpty!18395 (List!33482) Bool)

(assert (=> b!2831092 (= res!1178519 (not (isEmpty!18395 rules!1047)))))

(declare-fun tp!904669 () Bool)

(declare-fun e!1792363 () Bool)

(declare-fun b!2831093 () Bool)

(declare-fun inv!45305 (String!36662) Bool)

(declare-fun inv!45308 (TokenValueInjection!9884) Bool)

(assert (=> b!2831093 (= e!1792361 (and tp!904669 (inv!45305 (tag!5502 (h!38778 rules!1047))) (inv!45308 (transformation!4998 (h!38778 rules!1047))) e!1792363))))

(declare-fun tp!904665 () Bool)

(declare-fun e!1792358 () Bool)

(declare-fun b!2831094 () Bool)

(declare-fun e!1792362 () Bool)

(assert (=> b!2831094 (= e!1792358 (and tp!904665 (inv!45305 (tag!5502 (rule!7426 (h!38777 l!4019)))) (inv!45308 (transformation!4998 (rule!7426 (h!38777 l!4019)))) e!1792362))))

(assert (=> b!2831095 (= e!1792363 (and tp!904671 tp!904672))))

(declare-fun b!2831096 () Bool)

(declare-fun res!1178517 () Bool)

(assert (=> b!2831096 (=> (not res!1178517) (not e!1792365))))

(declare-fun rulesProduceEachTokenIndividuallyList!1631 (LexerInterface!4588 List!33482 List!33481) Bool)

(assert (=> b!2831096 (= res!1178517 (rulesProduceEachTokenIndividuallyList!1631 thiss!11007 rules!1047 l!4019))))

(declare-fun b!2831097 () Bool)

(declare-fun res!1178521 () Bool)

(assert (=> b!2831097 (=> (not res!1178521) (not e!1792365))))

(get-info :version)

(assert (=> b!2831097 (= res!1178521 (and ((_ is Cons!33357) l!4019) ((_ is Cons!33357) (t!231358 l!4019))))))

(declare-fun b!2831098 () Bool)

(declare-fun tp!904666 () Bool)

(declare-fun e!1792359 () Bool)

(declare-fun inv!21 (TokenValue!5228) Bool)

(assert (=> b!2831098 (= e!1792359 (and (inv!21 (value!160812 (h!38777 l!4019))) e!1792358 tp!904666))))

(declare-fun b!2831099 () Bool)

(assert (=> b!2831099 (= e!1792365 (not true))))

(declare-fun lt!1010086 () Bool)

(declare-fun contains!6096 (List!33481 Token!9398) Bool)

(assert (=> b!2831099 (= lt!1010086 (contains!6096 l!4019 (h!38777 (t!231358 l!4019))))))

(declare-fun rulesProduceIndividualToken!2120 (LexerInterface!4588 List!33482 Token!9398) Bool)

(assert (=> b!2831099 (rulesProduceIndividualToken!2120 thiss!11007 rules!1047 (h!38777 l!4019))))

(declare-datatypes ((Unit!47351 0))(
  ( (Unit!47352) )
))
(declare-fun lt!1010087 () Unit!47351)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!738 (LexerInterface!4588 List!33482 List!33481 Token!9398) Unit!47351)

(assert (=> b!2831099 (= lt!1010087 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!738 thiss!11007 rules!1047 l!4019 (h!38777 l!4019)))))

(assert (=> b!2831100 (= e!1792362 (and tp!904668 tp!904670))))

(declare-fun b!2831090 () Bool)

(declare-fun e!1792364 () Bool)

(declare-fun tp!904664 () Bool)

(declare-fun inv!45309 (Token!9398) Bool)

(assert (=> b!2831090 (= e!1792364 (and (inv!45309 (h!38777 l!4019)) e!1792359 tp!904664))))

(declare-fun res!1178518 () Bool)

(assert (=> start!274968 (=> (not res!1178518) (not e!1792365))))

(assert (=> start!274968 (= res!1178518 ((_ is Lexer!4586) thiss!11007))))

(assert (=> start!274968 e!1792365))

(assert (=> start!274968 true))

(assert (=> start!274968 e!1792357))

(assert (=> start!274968 e!1792364))

(assert (= (and start!274968 res!1178518) b!2831092))

(assert (= (and b!2831092 res!1178519) b!2831091))

(assert (= (and b!2831091 res!1178520) b!2831096))

(assert (= (and b!2831096 res!1178517) b!2831089))

(assert (= (and b!2831089 res!1178516) b!2831097))

(assert (= (and b!2831097 res!1178521) b!2831099))

(assert (= b!2831093 b!2831095))

(assert (= b!2831088 b!2831093))

(assert (= (and start!274968 ((_ is Cons!33358) rules!1047)) b!2831088))

(assert (= b!2831094 b!2831100))

(assert (= b!2831098 b!2831094))

(assert (= b!2831090 b!2831098))

(assert (= (and start!274968 ((_ is Cons!33357) l!4019)) b!2831090))

(declare-fun m!3260675 () Bool)

(assert (=> b!2831092 m!3260675))

(declare-fun m!3260677 () Bool)

(assert (=> b!2831090 m!3260677))

(declare-fun m!3260679 () Bool)

(assert (=> b!2831089 m!3260679))

(assert (=> b!2831089 m!3260679))

(declare-fun m!3260681 () Bool)

(assert (=> b!2831089 m!3260681))

(declare-fun m!3260683 () Bool)

(assert (=> b!2831094 m!3260683))

(declare-fun m!3260685 () Bool)

(assert (=> b!2831094 m!3260685))

(declare-fun m!3260687 () Bool)

(assert (=> b!2831098 m!3260687))

(declare-fun m!3260689 () Bool)

(assert (=> b!2831091 m!3260689))

(declare-fun m!3260691 () Bool)

(assert (=> b!2831099 m!3260691))

(declare-fun m!3260693 () Bool)

(assert (=> b!2831099 m!3260693))

(declare-fun m!3260695 () Bool)

(assert (=> b!2831099 m!3260695))

(declare-fun m!3260697 () Bool)

(assert (=> b!2831093 m!3260697))

(declare-fun m!3260699 () Bool)

(assert (=> b!2831093 m!3260699))

(declare-fun m!3260701 () Bool)

(assert (=> b!2831096 m!3260701))

(check-sat (not b!2831099) (not b!2831098) b_and!207019 (not b!2831092) (not b!2831096) (not b!2831091) (not b_next!82065) (not b!2831090) b_and!207023 b_and!207021 (not b!2831089) (not b!2831088) (not b_next!82061) b_and!207025 (not b_next!82067) (not b!2831094) (not b!2831093) (not b_next!82063))
(check-sat (not b_next!82063) b_and!207019 (not b_next!82065) b_and!207023 b_and!207021 (not b_next!82061) b_and!207025 (not b_next!82067))
