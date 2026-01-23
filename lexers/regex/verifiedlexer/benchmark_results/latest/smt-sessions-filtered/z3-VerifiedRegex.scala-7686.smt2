; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404642 () Bool)

(assert start!404642)

(declare-fun b!4230898 () Bool)

(declare-fun b_free!124959 () Bool)

(declare-fun b_next!125663 () Bool)

(assert (=> b!4230898 (= b_free!124959 (not b_next!125663))))

(declare-fun tp!1295980 () Bool)

(declare-fun b_and!334269 () Bool)

(assert (=> b!4230898 (= tp!1295980 b_and!334269)))

(declare-fun b_free!124961 () Bool)

(declare-fun b_next!125665 () Bool)

(assert (=> b!4230898 (= b_free!124961 (not b_next!125665))))

(declare-fun tp!1295979 () Bool)

(declare-fun b_and!334271 () Bool)

(assert (=> b!4230898 (= tp!1295979 b_and!334271)))

(declare-fun e!2627111 () Bool)

(assert (=> b!4230898 (= e!2627111 (and tp!1295980 tp!1295979))))

(declare-fun b!4230899 () Bool)

(declare-fun e!2627115 () Bool)

(assert (=> b!4230899 (= e!2627115 false)))

(declare-fun lt!1504136 () Int)

(declare-datatypes ((C!25776 0))(
  ( (C!25777 (val!15050 Int)) )
))
(declare-datatypes ((List!46832 0))(
  ( (Nil!46708) (Cons!46708 (h!52128 C!25776) (t!349503 List!46832)) )
))
(declare-fun input!3600 () List!46832)

(declare-datatypes ((tuple2!44316 0))(
  ( (tuple2!44317 (_1!25292 List!46832) (_2!25292 List!46832)) )
))
(declare-fun lt!1504134 () tuple2!44316)

(declare-datatypes ((List!46833 0))(
  ( (Nil!46709) (Cons!46709 (h!52129 (_ BitVec 16)) (t!349504 List!46833)) )
))
(declare-datatypes ((TokenValue!8114 0))(
  ( (FloatLiteralValue!16228 (text!57243 List!46833)) (TokenValueExt!8113 (__x!28451 Int)) (Broken!40570 (value!245164 List!46833)) (Object!8237) (End!8114) (Def!8114) (Underscore!8114) (Match!8114) (Else!8114) (Error!8114) (Case!8114) (If!8114) (Extends!8114) (Abstract!8114) (Class!8114) (Val!8114) (DelimiterValue!16228 (del!8174 List!46833)) (KeywordValue!8120 (value!245165 List!46833)) (CommentValue!16228 (value!245166 List!46833)) (WhitespaceValue!16228 (value!245167 List!46833)) (IndentationValue!8114 (value!245168 List!46833)) (String!54443) (Int32!8114) (Broken!40571 (value!245169 List!46833)) (Boolean!8115) (Unit!65834) (OperatorValue!8117 (op!8174 List!46833)) (IdentifierValue!16228 (value!245170 List!46833)) (IdentifierValue!16229 (value!245171 List!46833)) (WhitespaceValue!16229 (value!245172 List!46833)) (True!16228) (False!16228) (Broken!40572 (value!245173 List!46833)) (Broken!40573 (value!245174 List!46833)) (True!16229) (RightBrace!8114) (RightBracket!8114) (Colon!8114) (Null!8114) (Comma!8114) (LeftBracket!8114) (False!16229) (LeftBrace!8114) (ImaginaryLiteralValue!8114 (text!57244 List!46833)) (StringLiteralValue!24342 (value!245175 List!46833)) (EOFValue!8114 (value!245176 List!46833)) (IdentValue!8114 (value!245177 List!46833)) (DelimiterValue!16229 (value!245178 List!46833)) (DedentValue!8114 (value!245179 List!46833)) (NewLineValue!8114 (value!245180 List!46833)) (IntegerValue!24342 (value!245181 (_ BitVec 32)) (text!57245 List!46833)) (IntegerValue!24343 (value!245182 Int) (text!57246 List!46833)) (Times!8114) (Or!8114) (Equal!8114) (Minus!8114) (Broken!40574 (value!245183 List!46833)) (And!8114) (Div!8114) (LessEqual!8114) (Mod!8114) (Concat!20903) (Not!8114) (Plus!8114) (SpaceValue!8114 (value!245184 List!46833)) (IntegerValue!24344 (value!245185 Int) (text!57247 List!46833)) (StringLiteralValue!24343 (text!57248 List!46833)) (FloatLiteralValue!16229 (text!57249 List!46833)) (BytesLiteralValue!8114 (value!245186 List!46833)) (CommentValue!16229 (value!245187 List!46833)) (StringLiteralValue!24344 (value!245188 List!46833)) (ErrorTokenValue!8114 (msg!8175 List!46833)) )
))
(declare-datatypes ((String!54444 0))(
  ( (String!54445 (value!245189 String)) )
))
(declare-datatypes ((Regex!12789 0))(
  ( (ElementMatch!12789 (c!719146 C!25776)) (Concat!20904 (regOne!26090 Regex!12789) (regTwo!26090 Regex!12789)) (EmptyExpr!12789) (Star!12789 (reg!13118 Regex!12789)) (EmptyLang!12789) (Union!12789 (regOne!26091 Regex!12789) (regTwo!26091 Regex!12789)) )
))
(declare-datatypes ((IArray!28195 0))(
  ( (IArray!28196 (innerList!14155 List!46832)) )
))
(declare-datatypes ((Conc!14095 0))(
  ( (Node!14095 (left!34745 Conc!14095) (right!35075 Conc!14095) (csize!28420 Int) (cheight!14306 Int)) (Leaf!21782 (xs!17401 IArray!28195) (csize!28421 Int)) (Empty!14095) )
))
(declare-datatypes ((BalanceConc!27784 0))(
  ( (BalanceConc!27785 (c!719147 Conc!14095)) )
))
(declare-datatypes ((TokenValueInjection!15656 0))(
  ( (TokenValueInjection!15657 (toValue!10616 Int) (toChars!10475 Int)) )
))
(declare-datatypes ((Rule!15568 0))(
  ( (Rule!15569 (regex!7884 Regex!12789) (tag!8748 String!54444) (isSeparator!7884 Bool) (transformation!7884 TokenValueInjection!15656)) )
))
(declare-fun r!4353 () Rule!15568)

(declare-fun findLongestMatchInner!1689 (Regex!12789 List!46832 Int List!46832 List!46832 Int) tuple2!44316)

(declare-fun size!34228 (List!46832) Int)

(assert (=> b!4230899 (= lt!1504134 (findLongestMatchInner!1689 (regex!7884 r!4353) Nil!46708 lt!1504136 input!3600 input!3600 (size!34228 input!3600)))))

(declare-fun b!4230900 () Bool)

(declare-fun res!1739900 () Bool)

(declare-fun e!2627116 () Bool)

(assert (=> b!4230900 (=> (not res!1739900) (not e!2627116))))

(declare-datatypes ((LexerInterface!7479 0))(
  ( (LexerInterfaceExt!7476 (__x!28452 Int)) (Lexer!7477) )
))
(declare-fun thiss!26814 () LexerInterface!7479)

(declare-datatypes ((Token!14398 0))(
  ( (Token!14399 (value!245190 TokenValue!8114) (rule!11000 Rule!15568) (size!34229 Int) (originalCharacters!8230 List!46832)) )
))
(declare-datatypes ((tuple2!44318 0))(
  ( (tuple2!44319 (_1!25293 Token!14398) (_2!25293 List!46832)) )
))
(declare-datatypes ((Option!10030 0))(
  ( (None!10029) (Some!10029 (v!40957 tuple2!44318)) )
))
(declare-fun maxPrefixOneRule!3424 (LexerInterface!7479 Rule!15568 List!46832) Option!10030)

(assert (=> b!4230900 (= res!1739900 (= (maxPrefixOneRule!3424 thiss!26814 r!4353 input!3600) None!10029))))

(declare-fun b!4230901 () Bool)

(declare-fun res!1739903 () Bool)

(assert (=> b!4230901 (=> (not res!1739903) (not e!2627116))))

(declare-fun isPrefix!4699 (List!46832 List!46832) Bool)

(assert (=> b!4230901 (= res!1739903 (isPrefix!4699 Nil!46708 input!3600))))

(declare-fun res!1739904 () Bool)

(assert (=> start!404642 (=> (not res!1739904) (not e!2627116))))

(get-info :version)

(assert (=> start!404642 (= res!1739904 ((_ is Lexer!7477) thiss!26814))))

(assert (=> start!404642 e!2627116))

(assert (=> start!404642 true))

(declare-fun e!2627113 () Bool)

(assert (=> start!404642 e!2627113))

(declare-fun e!2627110 () Bool)

(assert (=> start!404642 e!2627110))

(declare-fun e!2627112 () Bool)

(assert (=> start!404642 e!2627112))

(declare-fun b!4230902 () Bool)

(declare-fun tp_is_empty!22513 () Bool)

(declare-fun tp!1295977 () Bool)

(assert (=> b!4230902 (= e!2627113 (and tp_is_empty!22513 tp!1295977))))

(declare-fun b!4230903 () Bool)

(assert (=> b!4230903 (= e!2627116 e!2627115)))

(declare-fun res!1739902 () Bool)

(assert (=> b!4230903 (=> (not res!1739902) (not e!2627115))))

(declare-fun lt!1504135 () Int)

(assert (=> b!4230903 (= res!1739902 (>= lt!1504135 lt!1504136))))

(assert (=> b!4230903 (= lt!1504136 (size!34228 Nil!46708))))

(declare-fun p!3018 () List!46832)

(assert (=> b!4230903 (= lt!1504135 (size!34228 p!3018))))

(declare-fun b!4230904 () Bool)

(declare-fun res!1739901 () Bool)

(assert (=> b!4230904 (=> (not res!1739901) (not e!2627116))))

(assert (=> b!4230904 (= res!1739901 (isPrefix!4699 p!3018 input!3600))))

(declare-fun b!4230905 () Bool)

(declare-fun tp!1295976 () Bool)

(assert (=> b!4230905 (= e!2627110 (and tp_is_empty!22513 tp!1295976))))

(declare-fun b!4230906 () Bool)

(declare-fun res!1739905 () Bool)

(assert (=> b!4230906 (=> (not res!1739905) (not e!2627116))))

(declare-fun ruleValid!3580 (LexerInterface!7479 Rule!15568) Bool)

(assert (=> b!4230906 (= res!1739905 (ruleValid!3580 thiss!26814 r!4353))))

(declare-fun b!4230907 () Bool)

(declare-fun tp!1295978 () Bool)

(declare-fun inv!61406 (String!54444) Bool)

(declare-fun inv!61408 (TokenValueInjection!15656) Bool)

(assert (=> b!4230907 (= e!2627112 (and tp!1295978 (inv!61406 (tag!8748 r!4353)) (inv!61408 (transformation!7884 r!4353)) e!2627111))))

(declare-fun b!4230908 () Bool)

(declare-fun res!1739906 () Bool)

(assert (=> b!4230908 (=> (not res!1739906) (not e!2627116))))

(declare-fun validRegex!5805 (Regex!12789) Bool)

(assert (=> b!4230908 (= res!1739906 (validRegex!5805 (regex!7884 r!4353)))))

(assert (= (and start!404642 res!1739904) b!4230904))

(assert (= (and b!4230904 res!1739901) b!4230906))

(assert (= (and b!4230906 res!1739905) b!4230900))

(assert (= (and b!4230900 res!1739900) b!4230908))

(assert (= (and b!4230908 res!1739906) b!4230901))

(assert (= (and b!4230901 res!1739903) b!4230903))

(assert (= (and b!4230903 res!1739902) b!4230899))

(assert (= (and start!404642 ((_ is Cons!46708) p!3018)) b!4230902))

(assert (= (and start!404642 ((_ is Cons!46708) input!3600)) b!4230905))

(assert (= b!4230907 b!4230898))

(assert (= start!404642 b!4230907))

(declare-fun m!4817497 () Bool)

(assert (=> b!4230901 m!4817497))

(declare-fun m!4817499 () Bool)

(assert (=> b!4230899 m!4817499))

(assert (=> b!4230899 m!4817499))

(declare-fun m!4817501 () Bool)

(assert (=> b!4230899 m!4817501))

(declare-fun m!4817503 () Bool)

(assert (=> b!4230906 m!4817503))

(declare-fun m!4817505 () Bool)

(assert (=> b!4230903 m!4817505))

(declare-fun m!4817507 () Bool)

(assert (=> b!4230903 m!4817507))

(declare-fun m!4817509 () Bool)

(assert (=> b!4230900 m!4817509))

(declare-fun m!4817511 () Bool)

(assert (=> b!4230908 m!4817511))

(declare-fun m!4817513 () Bool)

(assert (=> b!4230907 m!4817513))

(declare-fun m!4817515 () Bool)

(assert (=> b!4230907 m!4817515))

(declare-fun m!4817517 () Bool)

(assert (=> b!4230904 m!4817517))

(check-sat (not b_next!125665) (not b!4230901) (not b!4230905) (not b_next!125663) tp_is_empty!22513 (not b!4230906) b_and!334271 (not b!4230903) (not b!4230899) b_and!334269 (not b!4230900) (not b!4230907) (not b!4230908) (not b!4230902) (not b!4230904))
(check-sat b_and!334269 b_and!334271 (not b_next!125665) (not b_next!125663))
