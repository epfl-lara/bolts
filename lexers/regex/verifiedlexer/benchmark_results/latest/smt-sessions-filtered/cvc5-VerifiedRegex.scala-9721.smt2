; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!508230 () Bool)

(assert start!508230)

(declare-fun b!4862381 () Bool)

(declare-fun b_free!130551 () Bool)

(declare-fun b_next!131341 () Bool)

(assert (=> b!4862381 (= b_free!130551 (not b_next!131341))))

(declare-fun tp!1368212 () Bool)

(declare-fun b_and!342403 () Bool)

(assert (=> b!4862381 (= tp!1368212 b_and!342403)))

(declare-fun b_free!130553 () Bool)

(declare-fun b_next!131343 () Bool)

(assert (=> b!4862381 (= b_free!130553 (not b_next!131343))))

(declare-fun tp!1368208 () Bool)

(declare-fun b_and!342405 () Bool)

(assert (=> b!4862381 (= tp!1368208 b_and!342405)))

(declare-fun b!4862374 () Bool)

(declare-fun res!2075747 () Bool)

(declare-fun e!3040137 () Bool)

(assert (=> b!4862374 (=> (not res!2075747) (not e!3040137))))

(declare-datatypes ((List!56016 0))(
  ( (Nil!55892) (Cons!55892 (h!62340 (_ BitVec 16)) (t!363640 List!56016)) )
))
(declare-datatypes ((TokenValue!8331 0))(
  ( (FloatLiteralValue!16662 (text!58762 List!56016)) (TokenValueExt!8330 (__x!33955 Int)) (Broken!41655 (value!257718 List!56016)) (Object!8454) (End!8331) (Def!8331) (Underscore!8331) (Match!8331) (Else!8331) (Error!8331) (Case!8331) (If!8331) (Extends!8331) (Abstract!8331) (Class!8331) (Val!8331) (DelimiterValue!16662 (del!8391 List!56016)) (KeywordValue!8337 (value!257719 List!56016)) (CommentValue!16662 (value!257720 List!56016)) (WhitespaceValue!16662 (value!257721 List!56016)) (IndentationValue!8331 (value!257722 List!56016)) (String!63074) (Int32!8331) (Broken!41656 (value!257723 List!56016)) (Boolean!8332) (Unit!145914) (OperatorValue!8334 (op!8391 List!56016)) (IdentifierValue!16662 (value!257724 List!56016)) (IdentifierValue!16663 (value!257725 List!56016)) (WhitespaceValue!16663 (value!257726 List!56016)) (True!16662) (False!16662) (Broken!41657 (value!257727 List!56016)) (Broken!41658 (value!257728 List!56016)) (True!16663) (RightBrace!8331) (RightBracket!8331) (Colon!8331) (Null!8331) (Comma!8331) (LeftBracket!8331) (False!16663) (LeftBrace!8331) (ImaginaryLiteralValue!8331 (text!58763 List!56016)) (StringLiteralValue!24993 (value!257729 List!56016)) (EOFValue!8331 (value!257730 List!56016)) (IdentValue!8331 (value!257731 List!56016)) (DelimiterValue!16663 (value!257732 List!56016)) (DedentValue!8331 (value!257733 List!56016)) (NewLineValue!8331 (value!257734 List!56016)) (IntegerValue!24993 (value!257735 (_ BitVec 32)) (text!58764 List!56016)) (IntegerValue!24994 (value!257736 Int) (text!58765 List!56016)) (Times!8331) (Or!8331) (Equal!8331) (Minus!8331) (Broken!41659 (value!257737 List!56016)) (And!8331) (Div!8331) (LessEqual!8331) (Mod!8331) (Concat!21427) (Not!8331) (Plus!8331) (SpaceValue!8331 (value!257738 List!56016)) (IntegerValue!24995 (value!257739 Int) (text!58766 List!56016)) (StringLiteralValue!24994 (text!58767 List!56016)) (FloatLiteralValue!16663 (text!58768 List!56016)) (BytesLiteralValue!8331 (value!257740 List!56016)) (CommentValue!16663 (value!257741 List!56016)) (StringLiteralValue!24995 (value!257742 List!56016)) (ErrorTokenValue!8331 (msg!8392 List!56016)) )
))
(declare-datatypes ((C!26390 0))(
  ( (C!26391 (val!22517 Int)) )
))
(declare-datatypes ((List!56017 0))(
  ( (Nil!55893) (Cons!55893 (h!62341 C!26390) (t!363641 List!56017)) )
))
(declare-datatypes ((IArray!29167 0))(
  ( (IArray!29168 (innerList!14641 List!56017)) )
))
(declare-datatypes ((Conc!14553 0))(
  ( (Node!14553 (left!40596 Conc!14553) (right!40926 Conc!14553) (csize!29336 Int) (cheight!14764 Int)) (Leaf!24275 (xs!17859 IArray!29167) (csize!29337 Int)) (Empty!14553) )
))
(declare-datatypes ((BalanceConc!28548 0))(
  ( (BalanceConc!28549 (c!826957 Conc!14553)) )
))
(declare-datatypes ((TokenValueInjection!15970 0))(
  ( (TokenValueInjection!15971 (toValue!10876 Int) (toChars!10735 Int)) )
))
(declare-datatypes ((String!63075 0))(
  ( (String!63076 (value!257743 String)) )
))
(declare-datatypes ((Regex!13096 0))(
  ( (ElementMatch!13096 (c!826958 C!26390)) (Concat!21428 (regOne!26704 Regex!13096) (regTwo!26704 Regex!13096)) (EmptyExpr!13096) (Star!13096 (reg!13425 Regex!13096)) (EmptyLang!13096) (Union!13096 (regOne!26705 Regex!13096) (regTwo!26705 Regex!13096)) )
))
(declare-datatypes ((Rule!15842 0))(
  ( (Rule!15843 (regex!8021 Regex!13096) (tag!8885 String!63075) (isSeparator!8021 Bool) (transformation!8021 TokenValueInjection!15970)) )
))
(declare-datatypes ((List!56018 0))(
  ( (Nil!55894) (Cons!55894 (h!62342 Rule!15842) (t!363642 List!56018)) )
))
(declare-fun rules!1248 () List!56018)

(declare-fun isEmpty!29886 (List!56018) Bool)

(assert (=> b!4862374 (= res!2075747 (not (isEmpty!29886 rules!1248)))))

(declare-fun b!4862376 () Bool)

(declare-fun e!3040138 () Bool)

(assert (=> b!4862376 (= e!3040138 false)))

(declare-fun lt!1992649 () Int)

(declare-fun input!661 () BalanceConc!28548)

(declare-fun size!36819 (BalanceConc!28548) Int)

(assert (=> b!4862376 (= lt!1992649 (size!36819 input!661))))

(declare-fun b!4862377 () Bool)

(declare-fun e!3040136 () Bool)

(declare-fun e!3040141 () Bool)

(declare-fun tp!1368209 () Bool)

(assert (=> b!4862377 (= e!3040136 (and e!3040141 tp!1368209))))

(declare-fun b!4862378 () Bool)

(declare-fun e!3040140 () Bool)

(declare-fun tp!1368211 () Bool)

(declare-fun inv!71786 (Conc!14553) Bool)

(assert (=> b!4862378 (= e!3040140 (and (inv!71786 (c!826957 input!661)) tp!1368211))))

(declare-fun b!4862379 () Bool)

(declare-fun e!3040143 () Bool)

(declare-fun totalInput!332 () BalanceConc!28548)

(declare-fun tp!1368213 () Bool)

(assert (=> b!4862379 (= e!3040143 (and (inv!71786 (c!826957 totalInput!332)) tp!1368213))))

(declare-fun e!3040139 () Bool)

(declare-fun b!4862380 () Bool)

(declare-fun tp!1368210 () Bool)

(declare-fun inv!71783 (String!63075) Bool)

(declare-fun inv!71787 (TokenValueInjection!15970) Bool)

(assert (=> b!4862380 (= e!3040141 (and tp!1368210 (inv!71783 (tag!8885 (h!62342 rules!1248))) (inv!71787 (transformation!8021 (h!62342 rules!1248))) e!3040139))))

(assert (=> b!4862381 (= e!3040139 (and tp!1368212 tp!1368208))))

(declare-fun b!4862382 () Bool)

(assert (=> b!4862382 (= e!3040137 false)))

(declare-fun lt!1992650 () Bool)

(assert (=> b!4862382 (= lt!1992650 e!3040138)))

(declare-fun res!2075745 () Bool)

(assert (=> b!4862382 (=> res!2075745 e!3040138)))

(declare-datatypes ((Token!14630 0))(
  ( (Token!14631 (value!257744 TokenValue!8331) (rule!11139 Rule!15842) (size!36821 Int) (originalCharacters!8346 List!56017)) )
))
(declare-datatypes ((List!56019 0))(
  ( (Nil!55895) (Cons!55895 (h!62343 Token!14630) (t!363643 List!56019)) )
))
(declare-datatypes ((IArray!29169 0))(
  ( (IArray!29170 (innerList!14642 List!56019)) )
))
(declare-datatypes ((Conc!14554 0))(
  ( (Node!14554 (left!40597 Conc!14554) (right!40927 Conc!14554) (csize!29338 Int) (cheight!14765 Int)) (Leaf!24276 (xs!17860 IArray!29169) (csize!29339 Int)) (Empty!14554) )
))
(declare-datatypes ((BalanceConc!28550 0))(
  ( (BalanceConc!28551 (c!826959 Conc!14554)) )
))
(declare-fun size!36820 (BalanceConc!28550) Int)

(assert (=> b!4862382 (= res!2075745 (<= (size!36820 (BalanceConc!28551 Empty!14554)) 0))))

(declare-fun res!2075746 () Bool)

(assert (=> start!508230 (=> (not res!2075746) (not e!3040137))))

(declare-datatypes ((LexerInterface!7613 0))(
  ( (LexerInterfaceExt!7610 (__x!33956 Int)) (Lexer!7611) )
))
(declare-fun thiss!11777 () LexerInterface!7613)

(assert (=> start!508230 (= res!2075746 (is-Lexer!7611 thiss!11777))))

(assert (=> start!508230 e!3040137))

(assert (=> start!508230 true))

(assert (=> start!508230 e!3040136))

(declare-fun inv!71788 (BalanceConc!28548) Bool)

(assert (=> start!508230 (and (inv!71788 input!661) e!3040140)))

(assert (=> start!508230 (and (inv!71788 totalInput!332) e!3040143)))

(declare-fun b!4862375 () Bool)

(declare-fun res!2075744 () Bool)

(assert (=> b!4862375 (=> (not res!2075744) (not e!3040137))))

(declare-fun isSuffix!1050 (List!56017 List!56017) Bool)

(declare-fun list!17453 (BalanceConc!28548) List!56017)

(assert (=> b!4862375 (= res!2075744 (isSuffix!1050 (list!17453 input!661) (list!17453 totalInput!332)))))

(declare-fun b!4862383 () Bool)

(declare-fun res!2075743 () Bool)

(assert (=> b!4862383 (=> (not res!2075743) (not e!3040137))))

(declare-datatypes ((tuple2!59722 0))(
  ( (tuple2!59723 (_1!33164 Token!14630) (_2!33164 BalanceConc!28548)) )
))
(declare-datatypes ((Option!13766 0))(
  ( (None!13765) (Some!13765 (v!49667 tuple2!59722)) )
))
(declare-fun maxPrefixZipperSequenceV2!620 (LexerInterface!7613 List!56018 BalanceConc!28548 BalanceConc!28548) Option!13766)

(assert (=> b!4862383 (= res!2075743 (not (is-Some!13765 (maxPrefixZipperSequenceV2!620 thiss!11777 rules!1248 input!661 totalInput!332))))))

(declare-fun b!4862384 () Bool)

(declare-fun res!2075742 () Bool)

(assert (=> b!4862384 (=> (not res!2075742) (not e!3040137))))

(declare-fun rulesInvariant!6711 (LexerInterface!7613 List!56018) Bool)

(assert (=> b!4862384 (= res!2075742 (rulesInvariant!6711 thiss!11777 rules!1248))))

(assert (= (and start!508230 res!2075746) b!4862374))

(assert (= (and b!4862374 res!2075747) b!4862384))

(assert (= (and b!4862384 res!2075742) b!4862375))

(assert (= (and b!4862375 res!2075744) b!4862383))

(assert (= (and b!4862383 res!2075743) b!4862382))

(assert (= (and b!4862382 (not res!2075745)) b!4862376))

(assert (= b!4862380 b!4862381))

(assert (= b!4862377 b!4862380))

(assert (= (and start!508230 (is-Cons!55894 rules!1248)) b!4862377))

(assert (= start!508230 b!4862378))

(assert (= start!508230 b!4862379))

(declare-fun m!5859944 () Bool)

(assert (=> b!4862376 m!5859944))

(declare-fun m!5859946 () Bool)

(assert (=> b!4862382 m!5859946))

(declare-fun m!5859948 () Bool)

(assert (=> b!4862375 m!5859948))

(declare-fun m!5859950 () Bool)

(assert (=> b!4862375 m!5859950))

(assert (=> b!4862375 m!5859948))

(assert (=> b!4862375 m!5859950))

(declare-fun m!5859952 () Bool)

(assert (=> b!4862375 m!5859952))

(declare-fun m!5859954 () Bool)

(assert (=> start!508230 m!5859954))

(declare-fun m!5859956 () Bool)

(assert (=> start!508230 m!5859956))

(declare-fun m!5859958 () Bool)

(assert (=> b!4862374 m!5859958))

(declare-fun m!5859960 () Bool)

(assert (=> b!4862383 m!5859960))

(declare-fun m!5859962 () Bool)

(assert (=> b!4862380 m!5859962))

(declare-fun m!5859964 () Bool)

(assert (=> b!4862380 m!5859964))

(declare-fun m!5859966 () Bool)

(assert (=> b!4862378 m!5859966))

(declare-fun m!5859968 () Bool)

(assert (=> b!4862384 m!5859968))

(declare-fun m!5859970 () Bool)

(assert (=> b!4862379 m!5859970))

(push 1)

(assert (not b!4862383))

(assert (not b!4862377))

(assert (not b!4862378))

(assert (not b!4862379))

(assert (not b_next!131343))

(assert (not b!4862376))

(assert (not b!4862374))

(assert (not b_next!131341))

(assert b_and!342405)

(assert b_and!342403)

(assert (not b!4862384))

(assert (not b!4862380))

(assert (not b!4862382))

(assert (not start!508230))

(assert (not b!4862375))

(check-sat)

(pop 1)

(push 1)

(assert b_and!342405)

(assert b_and!342403)

(assert (not b_next!131341))

(assert (not b_next!131343))

(check-sat)

(pop 1)

