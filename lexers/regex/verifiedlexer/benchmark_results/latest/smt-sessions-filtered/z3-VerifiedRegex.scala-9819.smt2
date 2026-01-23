; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!513604 () Bool)

(assert start!513604)

(declare-fun b!4902102 () Bool)

(declare-fun b_free!131795 () Bool)

(declare-fun b_next!132585 () Bool)

(assert (=> b!4902102 (= b_free!131795 (not b_next!132585))))

(declare-fun tp!1379319 () Bool)

(declare-fun b_and!346187 () Bool)

(assert (=> b!4902102 (= tp!1379319 b_and!346187)))

(declare-fun b_free!131797 () Bool)

(declare-fun b_next!132587 () Bool)

(assert (=> b!4902102 (= b_free!131797 (not b_next!132587))))

(declare-fun tp!1379318 () Bool)

(declare-fun b_and!346189 () Bool)

(assert (=> b!4902102 (= tp!1379318 b_and!346189)))

(declare-fun b!4902113 () Bool)

(declare-fun e!3064298 () Bool)

(assert (=> b!4902113 (= e!3064298 true)))

(declare-fun b!4902112 () Bool)

(declare-fun e!3064297 () Bool)

(assert (=> b!4902112 (= e!3064297 e!3064298)))

(declare-fun b!4902097 () Bool)

(assert (=> b!4902097 e!3064297))

(assert (= b!4902112 b!4902113))

(assert (= b!4902097 b!4902112))

(declare-fun order!25585 () Int)

(declare-fun lambda!244276 () Int)

(declare-datatypes ((C!26760 0))(
  ( (C!26761 (val!22714 Int)) )
))
(declare-datatypes ((Regex!13281 0))(
  ( (ElementMatch!13281 (c!833169 C!26760)) (Concat!21797 (regOne!27074 Regex!13281) (regTwo!27074 Regex!13281)) (EmptyExpr!13281) (Star!13281 (reg!13610 Regex!13281)) (EmptyLang!13281) (Union!13281 (regOne!27075 Regex!13281) (regTwo!27075 Regex!13281)) )
))
(declare-datatypes ((String!64021 0))(
  ( (String!64022 (value!262981 String)) )
))
(declare-datatypes ((List!56610 0))(
  ( (Nil!56486) (Cons!56486 (h!62934 (_ BitVec 16)) (t!366702 List!56610)) )
))
(declare-datatypes ((TokenValue!8516 0))(
  ( (FloatLiteralValue!17032 (text!60057 List!56610)) (TokenValueExt!8515 (__x!34325 Int)) (Broken!42580 (value!262982 List!56610)) (Object!8639) (End!8516) (Def!8516) (Underscore!8516) (Match!8516) (Else!8516) (Error!8516) (Case!8516) (If!8516) (Extends!8516) (Abstract!8516) (Class!8516) (Val!8516) (DelimiterValue!17032 (del!8576 List!56610)) (KeywordValue!8522 (value!262983 List!56610)) (CommentValue!17032 (value!262984 List!56610)) (WhitespaceValue!17032 (value!262985 List!56610)) (IndentationValue!8516 (value!262986 List!56610)) (String!64023) (Int32!8516) (Broken!42581 (value!262987 List!56610)) (Boolean!8517) (Unit!146586) (OperatorValue!8519 (op!8576 List!56610)) (IdentifierValue!17032 (value!262988 List!56610)) (IdentifierValue!17033 (value!262989 List!56610)) (WhitespaceValue!17033 (value!262990 List!56610)) (True!17032) (False!17032) (Broken!42582 (value!262991 List!56610)) (Broken!42583 (value!262992 List!56610)) (True!17033) (RightBrace!8516) (RightBracket!8516) (Colon!8516) (Null!8516) (Comma!8516) (LeftBracket!8516) (False!17033) (LeftBrace!8516) (ImaginaryLiteralValue!8516 (text!60058 List!56610)) (StringLiteralValue!25548 (value!262993 List!56610)) (EOFValue!8516 (value!262994 List!56610)) (IdentValue!8516 (value!262995 List!56610)) (DelimiterValue!17033 (value!262996 List!56610)) (DedentValue!8516 (value!262997 List!56610)) (NewLineValue!8516 (value!262998 List!56610)) (IntegerValue!25548 (value!262999 (_ BitVec 32)) (text!60059 List!56610)) (IntegerValue!25549 (value!263000 Int) (text!60060 List!56610)) (Times!8516) (Or!8516) (Equal!8516) (Minus!8516) (Broken!42584 (value!263001 List!56610)) (And!8516) (Div!8516) (LessEqual!8516) (Mod!8516) (Concat!21798) (Not!8516) (Plus!8516) (SpaceValue!8516 (value!263002 List!56610)) (IntegerValue!25550 (value!263003 Int) (text!60061 List!56610)) (StringLiteralValue!25549 (text!60062 List!56610)) (FloatLiteralValue!17033 (text!60063 List!56610)) (BytesLiteralValue!8516 (value!263004 List!56610)) (CommentValue!17033 (value!263005 List!56610)) (StringLiteralValue!25550 (value!263006 List!56610)) (ErrorTokenValue!8516 (msg!8577 List!56610)) )
))
(declare-datatypes ((List!56611 0))(
  ( (Nil!56487) (Cons!56487 (h!62935 C!26760) (t!366703 List!56611)) )
))
(declare-datatypes ((IArray!29609 0))(
  ( (IArray!29610 (innerList!14862 List!56611)) )
))
(declare-datatypes ((Conc!14774 0))(
  ( (Node!14774 (left!41067 Conc!14774) (right!41397 Conc!14774) (csize!29778 Int) (cheight!14985 Int)) (Leaf!24594 (xs!18090 IArray!29609) (csize!29779 Int)) (Empty!14774) )
))
(declare-datatypes ((BalanceConc!28978 0))(
  ( (BalanceConc!28979 (c!833170 Conc!14774)) )
))
(declare-datatypes ((TokenValueInjection!16340 0))(
  ( (TokenValueInjection!16341 (toValue!11117 Int) (toChars!10976 Int)) )
))
(declare-datatypes ((Rule!16212 0))(
  ( (Rule!16213 (regex!8206 Regex!13281) (tag!9070 String!64021) (isSeparator!8206 Bool) (transformation!8206 TokenValueInjection!16340)) )
))
(declare-fun rule!164 () Rule!16212)

(declare-fun order!25587 () Int)

(declare-fun dynLambda!22726 (Int Int) Int)

(declare-fun dynLambda!22727 (Int Int) Int)

(assert (=> b!4902113 (< (dynLambda!22726 order!25585 (toValue!11117 (transformation!8206 rule!164))) (dynLambda!22727 order!25587 lambda!244276))))

(declare-fun order!25589 () Int)

(declare-fun dynLambda!22728 (Int Int) Int)

(assert (=> b!4902113 (< (dynLambda!22728 order!25589 (toChars!10976 (transformation!8206 rule!164))) (dynLambda!22727 order!25587 lambda!244276))))

(declare-fun b!4902095 () Bool)

(declare-fun e!3064287 () Bool)

(declare-fun e!3064284 () Bool)

(assert (=> b!4902095 (= e!3064287 e!3064284)))

(declare-fun res!2093870 () Bool)

(assert (=> b!4902095 (=> res!2093870 e!3064284)))

(declare-fun lt!2010180 () List!56611)

(declare-datatypes ((LexerInterface!7798 0))(
  ( (LexerInterfaceExt!7795 (__x!34326 Int)) (Lexer!7796) )
))
(declare-fun thiss!15943 () LexerInterface!7798)

(declare-fun lt!2010178 () Bool)

(declare-datatypes ((Token!14948 0))(
  ( (Token!14949 (value!263007 TokenValue!8516) (rule!11406 Rule!16212) (size!37198 Int) (originalCharacters!8505 List!56611)) )
))
(declare-datatypes ((tuple2!60596 0))(
  ( (tuple2!60597 (_1!33601 Token!14948) (_2!33601 List!56611)) )
))
(declare-datatypes ((Option!14057 0))(
  ( (None!14056) (Some!14056 (v!50018 tuple2!60596)) )
))
(declare-fun isDefined!11066 (Option!14057) Bool)

(declare-fun maxPrefixOneRule!3547 (LexerInterface!7798 Rule!16212 List!56611) Option!14057)

(assert (=> b!4902095 (= res!2093870 (not (= lt!2010178 (isDefined!11066 (maxPrefixOneRule!3547 thiss!15943 rule!164 lt!2010180)))))))

(declare-datatypes ((tuple2!60598 0))(
  ( (tuple2!60599 (_1!33602 BalanceConc!28978) (_2!33602 BalanceConc!28978)) )
))
(declare-fun lt!2010181 () tuple2!60598)

(declare-fun lt!2010184 () List!56611)

(declare-datatypes ((tuple2!60600 0))(
  ( (tuple2!60601 (_1!33603 Token!14948) (_2!33603 BalanceConc!28978)) )
))
(declare-datatypes ((Option!14058 0))(
  ( (None!14057) (Some!14057 (v!50019 tuple2!60600)) )
))
(declare-fun isDefined!11067 (Option!14058) Bool)

(declare-fun apply!13554 (TokenValueInjection!16340 BalanceConc!28978) TokenValue!8516)

(declare-fun size!37199 (BalanceConc!28978) Int)

(assert (=> b!4902095 (= lt!2010178 (isDefined!11067 (Some!14057 (tuple2!60601 (Token!14949 (apply!13554 (transformation!8206 rule!164) (_1!33602 lt!2010181)) rule!164 (size!37199 (_1!33602 lt!2010181)) lt!2010184) (_2!33602 lt!2010181)))))))

(declare-datatypes ((Unit!146587 0))(
  ( (Unit!146588) )
))
(declare-fun lt!2010179 () Unit!146587)

(declare-fun lt!2010183 () BalanceConc!28978)

(declare-fun ForallOf!1147 (Int BalanceConc!28978) Unit!146587)

(assert (=> b!4902095 (= lt!2010179 (ForallOf!1147 lambda!244276 lt!2010183))))

(declare-fun seqFromList!5952 (List!56611) BalanceConc!28978)

(assert (=> b!4902095 (= lt!2010183 (seqFromList!5952 lt!2010184))))

(declare-fun list!17776 (BalanceConc!28978) List!56611)

(assert (=> b!4902095 (= lt!2010184 (list!17776 (_1!33602 lt!2010181)))))

(declare-fun lt!2010185 () Unit!146587)

(assert (=> b!4902095 (= lt!2010185 (ForallOf!1147 lambda!244276 (_1!33602 lt!2010181)))))

(declare-fun b!4902096 () Bool)

(declare-fun e!3064290 () Bool)

(declare-fun input!1509 () BalanceConc!28978)

(declare-fun tp!1379316 () Bool)

(declare-fun inv!72858 (Conc!14774) Bool)

(assert (=> b!4902096 (= e!3064290 (and (inv!72858 (c!833170 input!1509)) tp!1379316))))

(declare-fun res!2093868 () Bool)

(assert (=> b!4902097 (=> res!2093868 e!3064287)))

(declare-fun Forall!1703 (Int) Bool)

(assert (=> b!4902097 (= res!2093868 (not (Forall!1703 lambda!244276)))))

(declare-fun b!4902098 () Bool)

(declare-fun lt!2010182 () List!56611)

(assert (=> b!4902098 (= e!3064284 (or (not (= lt!2010182 lt!2010184)) (= lt!2010184 lt!2010182)))))

(assert (=> b!4902098 (= lt!2010182 (list!17776 lt!2010183))))

(declare-fun tp!1379317 () Bool)

(declare-fun b!4902100 () Bool)

(declare-fun e!3064286 () Bool)

(declare-fun e!3064285 () Bool)

(declare-fun inv!72854 (String!64021) Bool)

(declare-fun inv!72859 (TokenValueInjection!16340) Bool)

(assert (=> b!4902100 (= e!3064285 (and tp!1379317 (inv!72854 (tag!9070 rule!164)) (inv!72859 (transformation!8206 rule!164)) e!3064286))))

(declare-fun b!4902101 () Bool)

(declare-fun e!3064291 () Bool)

(declare-fun e!3064288 () Bool)

(assert (=> b!4902101 (= e!3064291 e!3064288)))

(declare-fun res!2093869 () Bool)

(assert (=> b!4902101 (=> (not res!2093869) (not e!3064288))))

(declare-fun isEmpty!30347 (BalanceConc!28978) Bool)

(assert (=> b!4902101 (= res!2093869 (not (isEmpty!30347 (_1!33602 lt!2010181))))))

(declare-fun findLongestMatchWithZipperSequence!294 (Regex!13281 BalanceConc!28978) tuple2!60598)

(assert (=> b!4902101 (= lt!2010181 (findLongestMatchWithZipperSequence!294 (regex!8206 rule!164) input!1509))))

(assert (=> b!4902102 (= e!3064286 (and tp!1379319 tp!1379318))))

(declare-fun b!4902103 () Bool)

(declare-fun res!2093867 () Bool)

(assert (=> b!4902103 (=> (not res!2093867) (not e!3064291))))

(declare-fun ruleValid!3703 (LexerInterface!7798 Rule!16212) Bool)

(assert (=> b!4902103 (= res!2093867 (ruleValid!3703 thiss!15943 rule!164))))

(declare-fun b!4902099 () Bool)

(declare-fun res!2093873 () Bool)

(assert (=> b!4902099 (=> res!2093873 e!3064284)))

(assert (=> b!4902099 (= res!2093873 (not lt!2010178))))

(declare-fun res!2093871 () Bool)

(assert (=> start!513604 (=> (not res!2093871) (not e!3064291))))

(get-info :version)

(assert (=> start!513604 (= res!2093871 ((_ is Lexer!7796) thiss!15943))))

(assert (=> start!513604 e!3064291))

(assert (=> start!513604 true))

(assert (=> start!513604 e!3064285))

(declare-fun inv!72860 (BalanceConc!28978) Bool)

(assert (=> start!513604 (and (inv!72860 input!1509) e!3064290)))

(declare-fun b!4902104 () Bool)

(declare-fun e!3064292 () Bool)

(declare-datatypes ((tuple2!60602 0))(
  ( (tuple2!60603 (_1!33604 List!56611) (_2!33604 List!56611)) )
))
(declare-fun lt!2010176 () tuple2!60602)

(declare-fun matchR!6548 (Regex!13281 List!56611) Bool)

(assert (=> b!4902104 (= e!3064292 (matchR!6548 (regex!8206 rule!164) (_1!33604 lt!2010176)))))

(declare-fun b!4902105 () Bool)

(assert (=> b!4902105 (= e!3064288 (not e!3064287))))

(declare-fun res!2093874 () Bool)

(assert (=> b!4902105 (=> res!2093874 e!3064287)))

(declare-fun semiInverseModEq!3607 (Int Int) Bool)

(assert (=> b!4902105 (= res!2093874 (not (semiInverseModEq!3607 (toChars!10976 (transformation!8206 rule!164)) (toValue!11117 (transformation!8206 rule!164)))))))

(declare-fun lt!2010175 () Unit!146587)

(declare-fun lemmaInv!1252 (TokenValueInjection!16340) Unit!146587)

(assert (=> b!4902105 (= lt!2010175 (lemmaInv!1252 (transformation!8206 rule!164)))))

(assert (=> b!4902105 e!3064292))

(declare-fun res!2093872 () Bool)

(assert (=> b!4902105 (=> res!2093872 e!3064292)))

(declare-fun isEmpty!30348 (List!56611) Bool)

(assert (=> b!4902105 (= res!2093872 (isEmpty!30348 (_1!33604 lt!2010176)))))

(declare-fun findLongestMatchInner!1769 (Regex!13281 List!56611 Int List!56611 List!56611 Int) tuple2!60602)

(declare-fun size!37200 (List!56611) Int)

(assert (=> b!4902105 (= lt!2010176 (findLongestMatchInner!1769 (regex!8206 rule!164) Nil!56487 (size!37200 Nil!56487) lt!2010180 lt!2010180 (size!37200 lt!2010180)))))

(declare-fun lt!2010177 () Unit!146587)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1732 (Regex!13281 List!56611) Unit!146587)

(assert (=> b!4902105 (= lt!2010177 (longestMatchIsAcceptedByMatchOrIsEmpty!1732 (regex!8206 rule!164) lt!2010180))))

(assert (=> b!4902105 (= lt!2010180 (list!17776 input!1509))))

(assert (= (and start!513604 res!2093871) b!4902103))

(assert (= (and b!4902103 res!2093867) b!4902101))

(assert (= (and b!4902101 res!2093869) b!4902105))

(assert (= (and b!4902105 (not res!2093872)) b!4902104))

(assert (= (and b!4902105 (not res!2093874)) b!4902097))

(assert (= (and b!4902097 (not res!2093868)) b!4902095))

(assert (= (and b!4902095 (not res!2093870)) b!4902099))

(assert (= (and b!4902099 (not res!2093873)) b!4902098))

(assert (= b!4902100 b!4902102))

(assert (= start!513604 b!4902100))

(assert (= start!513604 b!4902096))

(declare-fun m!5910768 () Bool)

(assert (=> b!4902100 m!5910768))

(declare-fun m!5910770 () Bool)

(assert (=> b!4902100 m!5910770))

(declare-fun m!5910772 () Bool)

(assert (=> b!4902098 m!5910772))

(declare-fun m!5910774 () Bool)

(assert (=> b!4902104 m!5910774))

(declare-fun m!5910776 () Bool)

(assert (=> b!4902101 m!5910776))

(declare-fun m!5910778 () Bool)

(assert (=> b!4902101 m!5910778))

(declare-fun m!5910780 () Bool)

(assert (=> start!513604 m!5910780))

(declare-fun m!5910782 () Bool)

(assert (=> b!4902097 m!5910782))

(declare-fun m!5910784 () Bool)

(assert (=> b!4902095 m!5910784))

(declare-fun m!5910786 () Bool)

(assert (=> b!4902095 m!5910786))

(declare-fun m!5910788 () Bool)

(assert (=> b!4902095 m!5910788))

(assert (=> b!4902095 m!5910784))

(declare-fun m!5910790 () Bool)

(assert (=> b!4902095 m!5910790))

(declare-fun m!5910792 () Bool)

(assert (=> b!4902095 m!5910792))

(declare-fun m!5910794 () Bool)

(assert (=> b!4902095 m!5910794))

(declare-fun m!5910796 () Bool)

(assert (=> b!4902095 m!5910796))

(declare-fun m!5910798 () Bool)

(assert (=> b!4902095 m!5910798))

(declare-fun m!5910800 () Bool)

(assert (=> b!4902095 m!5910800))

(declare-fun m!5910802 () Bool)

(assert (=> b!4902103 m!5910802))

(declare-fun m!5910804 () Bool)

(assert (=> b!4902096 m!5910804))

(declare-fun m!5910806 () Bool)

(assert (=> b!4902105 m!5910806))

(declare-fun m!5910808 () Bool)

(assert (=> b!4902105 m!5910808))

(declare-fun m!5910810 () Bool)

(assert (=> b!4902105 m!5910810))

(declare-fun m!5910812 () Bool)

(assert (=> b!4902105 m!5910812))

(assert (=> b!4902105 m!5910808))

(declare-fun m!5910814 () Bool)

(assert (=> b!4902105 m!5910814))

(declare-fun m!5910816 () Bool)

(assert (=> b!4902105 m!5910816))

(assert (=> b!4902105 m!5910814))

(declare-fun m!5910818 () Bool)

(assert (=> b!4902105 m!5910818))

(declare-fun m!5910820 () Bool)

(assert (=> b!4902105 m!5910820))

(check-sat (not b!4902105) (not b!4902097) (not b!4902095) (not b!4902100) (not b!4902096) (not b_next!132587) (not b_next!132585) (not start!513604) (not b!4902098) b_and!346187 b_and!346189 (not b!4902103) (not b!4902101) (not b!4902104))
(check-sat b_and!346189 b_and!346187 (not b_next!132587) (not b_next!132585))
