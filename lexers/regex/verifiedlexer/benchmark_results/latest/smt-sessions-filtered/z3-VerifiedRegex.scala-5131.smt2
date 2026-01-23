; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262808 () Bool)

(assert start!262808)

(declare-fun b!2706887 () Bool)

(declare-fun b_free!76417 () Bool)

(declare-fun b_next!77121 () Bool)

(assert (=> b!2706887 (= b_free!76417 (not b_next!77121))))

(declare-fun tp!856142 () Bool)

(declare-fun b_and!199849 () Bool)

(assert (=> b!2706887 (= tp!856142 b_and!199849)))

(declare-fun b_free!76419 () Bool)

(declare-fun b_next!77123 () Bool)

(assert (=> b!2706887 (= b_free!76419 (not b_next!77123))))

(declare-fun tp!856140 () Bool)

(declare-fun b_and!199851 () Bool)

(assert (=> b!2706887 (= tp!856140 b_and!199851)))

(declare-fun b!2706882 () Bool)

(declare-fun e!1706700 () Bool)

(declare-fun e!1706693 () Bool)

(assert (=> b!2706882 (= e!1706700 e!1706693)))

(declare-fun res!1136736 () Bool)

(assert (=> b!2706882 (=> (not res!1136736) (not e!1706693))))

(declare-datatypes ((List!31357 0))(
  ( (Nil!31257) (Cons!31257 (h!36677 (_ BitVec 16)) (t!225805 List!31357)) )
))
(declare-datatypes ((TokenValue!4997 0))(
  ( (FloatLiteralValue!9994 (text!35424 List!31357)) (TokenValueExt!4996 (__x!20129 Int)) (Broken!24985 (value!153674 List!31357)) (Object!5096) (End!4997) (Def!4997) (Underscore!4997) (Match!4997) (Else!4997) (Error!4997) (Case!4997) (If!4997) (Extends!4997) (Abstract!4997) (Class!4997) (Val!4997) (DelimiterValue!9994 (del!5057 List!31357)) (KeywordValue!5003 (value!153675 List!31357)) (CommentValue!9994 (value!153676 List!31357)) (WhitespaceValue!9994 (value!153677 List!31357)) (IndentationValue!4997 (value!153678 List!31357)) (String!34884) (Int32!4997) (Broken!24986 (value!153679 List!31357)) (Boolean!4998) (Unit!45302) (OperatorValue!5000 (op!5057 List!31357)) (IdentifierValue!9994 (value!153680 List!31357)) (IdentifierValue!9995 (value!153681 List!31357)) (WhitespaceValue!9995 (value!153682 List!31357)) (True!9994) (False!9994) (Broken!24987 (value!153683 List!31357)) (Broken!24988 (value!153684 List!31357)) (True!9995) (RightBrace!4997) (RightBracket!4997) (Colon!4997) (Null!4997) (Comma!4997) (LeftBracket!4997) (False!9995) (LeftBrace!4997) (ImaginaryLiteralValue!4997 (text!35425 List!31357)) (StringLiteralValue!14991 (value!153685 List!31357)) (EOFValue!4997 (value!153686 List!31357)) (IdentValue!4997 (value!153687 List!31357)) (DelimiterValue!9995 (value!153688 List!31357)) (DedentValue!4997 (value!153689 List!31357)) (NewLineValue!4997 (value!153690 List!31357)) (IntegerValue!14991 (value!153691 (_ BitVec 32)) (text!35426 List!31357)) (IntegerValue!14992 (value!153692 Int) (text!35427 List!31357)) (Times!4997) (Or!4997) (Equal!4997) (Minus!4997) (Broken!24989 (value!153693 List!31357)) (And!4997) (Div!4997) (LessEqual!4997) (Mod!4997) (Concat!12924) (Not!4997) (Plus!4997) (SpaceValue!4997 (value!153694 List!31357)) (IntegerValue!14993 (value!153695 Int) (text!35428 List!31357)) (StringLiteralValue!14992 (text!35429 List!31357)) (FloatLiteralValue!9995 (text!35430 List!31357)) (BytesLiteralValue!4997 (value!153696 List!31357)) (CommentValue!9995 (value!153697 List!31357)) (StringLiteralValue!14993 (value!153698 List!31357)) (ErrorTokenValue!4997 (msg!5058 List!31357)) )
))
(declare-datatypes ((C!16012 0))(
  ( (C!16013 (val!9940 Int)) )
))
(declare-datatypes ((List!31358 0))(
  ( (Nil!31258) (Cons!31258 (h!36678 C!16012) (t!225806 List!31358)) )
))
(declare-datatypes ((IArray!19559 0))(
  ( (IArray!19560 (innerList!9837 List!31358)) )
))
(declare-datatypes ((Conc!9777 0))(
  ( (Node!9777 (left!24042 Conc!9777) (right!24372 Conc!9777) (csize!19784 Int) (cheight!9988 Int)) (Leaf!14909 (xs!12829 IArray!19559) (csize!19785 Int)) (Empty!9777) )
))
(declare-datatypes ((BalanceConc!19168 0))(
  ( (BalanceConc!19169 (c!436764 Conc!9777)) )
))
(declare-datatypes ((Regex!7927 0))(
  ( (ElementMatch!7927 (c!436765 C!16012)) (Concat!12925 (regOne!16366 Regex!7927) (regTwo!16366 Regex!7927)) (EmptyExpr!7927) (Star!7927 (reg!8256 Regex!7927)) (EmptyLang!7927) (Union!7927 (regOne!16367 Regex!7927) (regTwo!16367 Regex!7927)) )
))
(declare-datatypes ((String!34885 0))(
  ( (String!34886 (value!153699 String)) )
))
(declare-datatypes ((TokenValueInjection!9434 0))(
  ( (TokenValueInjection!9435 (toValue!6741 Int) (toChars!6600 Int)) )
))
(declare-datatypes ((Rule!9350 0))(
  ( (Rule!9351 (regex!4775 Regex!7927) (tag!5279 String!34885) (isSeparator!4775 Bool) (transformation!4775 TokenValueInjection!9434)) )
))
(declare-datatypes ((Token!9012 0))(
  ( (Token!9013 (value!153700 TokenValue!4997) (rule!7195 Rule!9350) (size!24121 Int) (originalCharacters!5537 List!31358)) )
))
(declare-datatypes ((List!31359 0))(
  ( (Nil!31259) (Cons!31259 (h!36679 Token!9012) (t!225807 List!31359)) )
))
(declare-datatypes ((IArray!19561 0))(
  ( (IArray!19562 (innerList!9838 List!31359)) )
))
(declare-datatypes ((Conc!9778 0))(
  ( (Node!9778 (left!24043 Conc!9778) (right!24373 Conc!9778) (csize!19786 Int) (cheight!9989 Int)) (Leaf!14910 (xs!12830 IArray!19561) (csize!19787 Int)) (Empty!9778) )
))
(declare-datatypes ((BalanceConc!19170 0))(
  ( (BalanceConc!19171 (c!436766 Conc!9778)) )
))
(declare-datatypes ((tuple2!30880 0))(
  ( (tuple2!30881 (_1!18072 BalanceConc!19170) (_2!18072 BalanceConc!19168)) )
))
(declare-fun lt!957019 () tuple2!30880)

(declare-fun acc!331 () BalanceConc!19170)

(declare-fun list!11808 (BalanceConc!19170) List!31359)

(assert (=> b!2706882 (= res!1136736 (= (list!11808 (_1!18072 lt!957019)) (list!11808 acc!331)))))

(declare-fun treated!9 () BalanceConc!19168)

(declare-datatypes ((LexerInterface!4371 0))(
  ( (LexerInterfaceExt!4368 (__x!20130 Int)) (Lexer!4369) )
))
(declare-fun thiss!11556 () LexerInterface!4371)

(declare-datatypes ((List!31360 0))(
  ( (Nil!31260) (Cons!31260 (h!36680 Rule!9350) (t!225808 List!31360)) )
))
(declare-fun rules!1182 () List!31360)

(declare-fun lexRec!631 (LexerInterface!4371 List!31360 BalanceConc!19168) tuple2!30880)

(assert (=> b!2706882 (= lt!957019 (lexRec!631 thiss!11556 rules!1182 treated!9))))

(declare-fun b!2706883 () Bool)

(declare-fun e!1706696 () Bool)

(declare-fun tp!856138 () Bool)

(declare-fun inv!42378 (Conc!9777) Bool)

(assert (=> b!2706883 (= e!1706696 (and (inv!42378 (c!436764 treated!9)) tp!856138))))

(declare-fun b!2706884 () Bool)

(declare-fun e!1706698 () Bool)

(assert (=> b!2706884 (= e!1706693 e!1706698)))

(declare-fun res!1136738 () Bool)

(assert (=> b!2706884 (=> (not res!1136738) (not e!1706698))))

(declare-fun lt!957018 () tuple2!30880)

(declare-fun lt!957021 () tuple2!30880)

(declare-fun ++!7702 (BalanceConc!19170 BalanceConc!19170) BalanceConc!19170)

(assert (=> b!2706884 (= res!1136738 (= (list!11808 (_1!18072 lt!957021)) (list!11808 (++!7702 acc!331 (_1!18072 lt!957018)))))))

(declare-fun input!603 () BalanceConc!19168)

(assert (=> b!2706884 (= lt!957018 (lexRec!631 thiss!11556 rules!1182 input!603))))

(declare-fun totalInput!328 () BalanceConc!19168)

(assert (=> b!2706884 (= lt!957021 (lexRec!631 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2706885 () Bool)

(declare-fun res!1136735 () Bool)

(assert (=> b!2706885 (=> (not res!1136735) (not e!1706698))))

(declare-fun list!11809 (BalanceConc!19168) List!31358)

(assert (=> b!2706885 (= res!1136735 (= (list!11809 (_2!18072 lt!957021)) (list!11809 (_2!18072 lt!957018))))))

(declare-fun res!1136740 () Bool)

(assert (=> start!262808 (=> (not res!1136740) (not e!1706700))))

(get-info :version)

(assert (=> start!262808 (= res!1136740 ((_ is Lexer!4369) thiss!11556))))

(assert (=> start!262808 e!1706700))

(declare-fun inv!42379 (BalanceConc!19168) Bool)

(assert (=> start!262808 (and (inv!42379 treated!9) e!1706696)))

(declare-fun e!1706692 () Bool)

(assert (=> start!262808 (and (inv!42379 input!603) e!1706692)))

(assert (=> start!262808 true))

(declare-fun e!1706701 () Bool)

(assert (=> start!262808 e!1706701))

(declare-fun e!1706691 () Bool)

(assert (=> start!262808 (and (inv!42379 totalInput!328) e!1706691)))

(declare-fun e!1706695 () Bool)

(declare-fun inv!42380 (BalanceConc!19170) Bool)

(assert (=> start!262808 (and (inv!42380 acc!331) e!1706695)))

(declare-fun b!2706886 () Bool)

(declare-fun tp!856143 () Bool)

(assert (=> b!2706886 (= e!1706692 (and (inv!42378 (c!436764 input!603)) tp!856143))))

(declare-fun e!1706697 () Bool)

(assert (=> b!2706887 (= e!1706697 (and tp!856142 tp!856140))))

(declare-fun b!2706888 () Bool)

(declare-fun res!1136734 () Bool)

(assert (=> b!2706888 (=> (not res!1136734) (not e!1706693))))

(declare-fun isEmpty!17801 (List!31358) Bool)

(assert (=> b!2706888 (= res!1136734 (isEmpty!17801 (list!11809 (_2!18072 lt!957019))))))

(declare-fun b!2706889 () Bool)

(declare-fun res!1136737 () Bool)

(assert (=> b!2706889 (=> (not res!1136737) (not e!1706700))))

(declare-fun isEmpty!17802 (List!31360) Bool)

(assert (=> b!2706889 (= res!1136737 (not (isEmpty!17802 rules!1182)))))

(declare-fun b!2706890 () Bool)

(declare-fun tp!856141 () Bool)

(declare-fun e!1706694 () Bool)

(declare-fun inv!42372 (String!34885) Bool)

(declare-fun inv!42381 (TokenValueInjection!9434) Bool)

(assert (=> b!2706890 (= e!1706694 (and tp!856141 (inv!42372 (tag!5279 (h!36680 rules!1182))) (inv!42381 (transformation!4775 (h!36680 rules!1182))) e!1706697))))

(declare-fun b!2706891 () Bool)

(declare-fun res!1136739 () Bool)

(assert (=> b!2706891 (=> (not res!1136739) (not e!1706700))))

(declare-fun rulesInvariant!3856 (LexerInterface!4371 List!31360) Bool)

(assert (=> b!2706891 (= res!1136739 (rulesInvariant!3856 thiss!11556 rules!1182))))

(declare-fun b!2706892 () Bool)

(declare-fun tp!856145 () Bool)

(declare-fun inv!42382 (Conc!9778) Bool)

(assert (=> b!2706892 (= e!1706695 (and (inv!42382 (c!436766 acc!331)) tp!856145))))

(declare-fun b!2706893 () Bool)

(assert (=> b!2706893 (= e!1706698 false)))

(declare-datatypes ((tuple2!30882 0))(
  ( (tuple2!30883 (_1!18073 Token!9012) (_2!18073 BalanceConc!19168)) )
))
(declare-datatypes ((Option!6161 0))(
  ( (None!6160) (Some!6160 (v!32972 tuple2!30882)) )
))
(declare-fun lt!957020 () Option!6161)

(declare-fun maxPrefixZipperSequence!1019 (LexerInterface!4371 List!31360 BalanceConc!19168) Option!6161)

(assert (=> b!2706893 (= lt!957020 (maxPrefixZipperSequence!1019 thiss!11556 rules!1182 input!603))))

(declare-fun b!2706894 () Bool)

(declare-fun tp!856139 () Bool)

(assert (=> b!2706894 (= e!1706691 (and (inv!42378 (c!436764 totalInput!328)) tp!856139))))

(declare-fun b!2706895 () Bool)

(declare-fun tp!856144 () Bool)

(assert (=> b!2706895 (= e!1706701 (and e!1706694 tp!856144))))

(declare-fun b!2706896 () Bool)

(declare-fun res!1136741 () Bool)

(assert (=> b!2706896 (=> (not res!1136741) (not e!1706700))))

(declare-fun ++!7703 (List!31358 List!31358) List!31358)

(assert (=> b!2706896 (= res!1136741 (= (list!11809 totalInput!328) (++!7703 (list!11809 treated!9) (list!11809 input!603))))))

(assert (= (and start!262808 res!1136740) b!2706889))

(assert (= (and b!2706889 res!1136737) b!2706891))

(assert (= (and b!2706891 res!1136739) b!2706896))

(assert (= (and b!2706896 res!1136741) b!2706882))

(assert (= (and b!2706882 res!1136736) b!2706888))

(assert (= (and b!2706888 res!1136734) b!2706884))

(assert (= (and b!2706884 res!1136738) b!2706885))

(assert (= (and b!2706885 res!1136735) b!2706893))

(assert (= start!262808 b!2706883))

(assert (= start!262808 b!2706886))

(assert (= b!2706890 b!2706887))

(assert (= b!2706895 b!2706890))

(assert (= (and start!262808 ((_ is Cons!31260) rules!1182)) b!2706895))

(assert (= start!262808 b!2706894))

(assert (= start!262808 b!2706892))

(declare-fun m!3097117 () Bool)

(assert (=> b!2706886 m!3097117))

(declare-fun m!3097119 () Bool)

(assert (=> start!262808 m!3097119))

(declare-fun m!3097121 () Bool)

(assert (=> start!262808 m!3097121))

(declare-fun m!3097123 () Bool)

(assert (=> start!262808 m!3097123))

(declare-fun m!3097125 () Bool)

(assert (=> start!262808 m!3097125))

(declare-fun m!3097127 () Bool)

(assert (=> b!2706890 m!3097127))

(declare-fun m!3097129 () Bool)

(assert (=> b!2706890 m!3097129))

(declare-fun m!3097131 () Bool)

(assert (=> b!2706882 m!3097131))

(declare-fun m!3097133 () Bool)

(assert (=> b!2706882 m!3097133))

(declare-fun m!3097135 () Bool)

(assert (=> b!2706882 m!3097135))

(declare-fun m!3097137 () Bool)

(assert (=> b!2706892 m!3097137))

(declare-fun m!3097139 () Bool)

(assert (=> b!2706893 m!3097139))

(declare-fun m!3097141 () Bool)

(assert (=> b!2706888 m!3097141))

(assert (=> b!2706888 m!3097141))

(declare-fun m!3097143 () Bool)

(assert (=> b!2706888 m!3097143))

(declare-fun m!3097145 () Bool)

(assert (=> b!2706894 m!3097145))

(declare-fun m!3097147 () Bool)

(assert (=> b!2706891 m!3097147))

(declare-fun m!3097149 () Bool)

(assert (=> b!2706883 m!3097149))

(declare-fun m!3097151 () Bool)

(assert (=> b!2706896 m!3097151))

(declare-fun m!3097153 () Bool)

(assert (=> b!2706896 m!3097153))

(declare-fun m!3097155 () Bool)

(assert (=> b!2706896 m!3097155))

(assert (=> b!2706896 m!3097153))

(assert (=> b!2706896 m!3097155))

(declare-fun m!3097157 () Bool)

(assert (=> b!2706896 m!3097157))

(declare-fun m!3097159 () Bool)

(assert (=> b!2706885 m!3097159))

(declare-fun m!3097161 () Bool)

(assert (=> b!2706885 m!3097161))

(declare-fun m!3097163 () Bool)

(assert (=> b!2706884 m!3097163))

(declare-fun m!3097165 () Bool)

(assert (=> b!2706884 m!3097165))

(declare-fun m!3097167 () Bool)

(assert (=> b!2706884 m!3097167))

(assert (=> b!2706884 m!3097167))

(declare-fun m!3097169 () Bool)

(assert (=> b!2706884 m!3097169))

(declare-fun m!3097171 () Bool)

(assert (=> b!2706884 m!3097171))

(declare-fun m!3097173 () Bool)

(assert (=> b!2706889 m!3097173))

(check-sat (not b!2706889) (not b!2706888) b_and!199851 (not start!262808) (not b_next!77123) (not b!2706886) (not b!2706884) (not b!2706892) (not b!2706894) b_and!199849 (not b!2706895) (not b!2706883) (not b_next!77121) (not b!2706890) (not b!2706891) (not b!2706885) (not b!2706882) (not b!2706896) (not b!2706893))
(check-sat b_and!199851 b_and!199849 (not b_next!77123) (not b_next!77121))
