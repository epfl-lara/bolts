; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404634 () Bool)

(assert start!404634)

(declare-fun b!4230795 () Bool)

(declare-fun b_free!124939 () Bool)

(declare-fun b_next!125643 () Bool)

(assert (=> b!4230795 (= b_free!124939 (not b_next!125643))))

(declare-fun tp!1295912 () Bool)

(declare-fun b_and!334249 () Bool)

(assert (=> b!4230795 (= tp!1295912 b_and!334249)))

(declare-fun b_free!124941 () Bool)

(declare-fun b_next!125645 () Bool)

(assert (=> b!4230795 (= b_free!124941 (not b_next!125645))))

(declare-fun tp!1295910 () Bool)

(declare-fun b_and!334251 () Bool)

(assert (=> b!4230795 (= tp!1295910 b_and!334251)))

(declare-fun b!4230784 () Bool)

(declare-fun b_free!124943 () Bool)

(declare-fun b_next!125647 () Bool)

(assert (=> b!4230784 (= b_free!124943 (not b_next!125647))))

(declare-fun tp!1295911 () Bool)

(declare-fun b_and!334253 () Bool)

(assert (=> b!4230784 (= tp!1295911 b_and!334253)))

(declare-fun b_free!124945 () Bool)

(declare-fun b_next!125649 () Bool)

(assert (=> b!4230784 (= b_free!124945 (not b_next!125649))))

(declare-fun tp!1295914 () Bool)

(declare-fun b_and!334255 () Bool)

(assert (=> b!4230784 (= tp!1295914 b_and!334255)))

(declare-fun e!2627032 () Bool)

(assert (=> b!4230784 (= e!2627032 (and tp!1295911 tp!1295914))))

(declare-fun b!4230785 () Bool)

(declare-fun res!1739840 () Bool)

(declare-fun e!2627024 () Bool)

(assert (=> b!4230785 (=> (not res!1739840) (not e!2627024))))

(declare-datatypes ((List!46824 0))(
  ( (Nil!46700) (Cons!46700 (h!52120 (_ BitVec 16)) (t!349495 List!46824)) )
))
(declare-datatypes ((TokenValue!8110 0))(
  ( (FloatLiteralValue!16220 (text!57215 List!46824)) (TokenValueExt!8109 (__x!28443 Int)) (Broken!40550 (value!245052 List!46824)) (Object!8233) (End!8110) (Def!8110) (Underscore!8110) (Match!8110) (Else!8110) (Error!8110) (Case!8110) (If!8110) (Extends!8110) (Abstract!8110) (Class!8110) (Val!8110) (DelimiterValue!16220 (del!8170 List!46824)) (KeywordValue!8116 (value!245053 List!46824)) (CommentValue!16220 (value!245054 List!46824)) (WhitespaceValue!16220 (value!245055 List!46824)) (IndentationValue!8110 (value!245056 List!46824)) (String!54423) (Int32!8110) (Broken!40551 (value!245057 List!46824)) (Boolean!8111) (Unit!65828) (OperatorValue!8113 (op!8170 List!46824)) (IdentifierValue!16220 (value!245058 List!46824)) (IdentifierValue!16221 (value!245059 List!46824)) (WhitespaceValue!16221 (value!245060 List!46824)) (True!16220) (False!16220) (Broken!40552 (value!245061 List!46824)) (Broken!40553 (value!245062 List!46824)) (True!16221) (RightBrace!8110) (RightBracket!8110) (Colon!8110) (Null!8110) (Comma!8110) (LeftBracket!8110) (False!16221) (LeftBrace!8110) (ImaginaryLiteralValue!8110 (text!57216 List!46824)) (StringLiteralValue!24330 (value!245063 List!46824)) (EOFValue!8110 (value!245064 List!46824)) (IdentValue!8110 (value!245065 List!46824)) (DelimiterValue!16221 (value!245066 List!46824)) (DedentValue!8110 (value!245067 List!46824)) (NewLineValue!8110 (value!245068 List!46824)) (IntegerValue!24330 (value!245069 (_ BitVec 32)) (text!57217 List!46824)) (IntegerValue!24331 (value!245070 Int) (text!57218 List!46824)) (Times!8110) (Or!8110) (Equal!8110) (Minus!8110) (Broken!40554 (value!245071 List!46824)) (And!8110) (Div!8110) (LessEqual!8110) (Mod!8110) (Concat!20895) (Not!8110) (Plus!8110) (SpaceValue!8110 (value!245072 List!46824)) (IntegerValue!24332 (value!245073 Int) (text!57219 List!46824)) (StringLiteralValue!24331 (text!57220 List!46824)) (FloatLiteralValue!16221 (text!57221 List!46824)) (BytesLiteralValue!8110 (value!245074 List!46824)) (CommentValue!16221 (value!245075 List!46824)) (StringLiteralValue!24332 (value!245076 List!46824)) (ErrorTokenValue!8110 (msg!8171 List!46824)) )
))
(declare-datatypes ((C!25768 0))(
  ( (C!25769 (val!15046 Int)) )
))
(declare-datatypes ((List!46825 0))(
  ( (Nil!46701) (Cons!46701 (h!52121 C!25768) (t!349496 List!46825)) )
))
(declare-datatypes ((IArray!28187 0))(
  ( (IArray!28188 (innerList!14151 List!46825)) )
))
(declare-datatypes ((Conc!14091 0))(
  ( (Node!14091 (left!34739 Conc!14091) (right!35069 Conc!14091) (csize!28412 Int) (cheight!14302 Int)) (Leaf!21776 (xs!17397 IArray!28187) (csize!28413 Int)) (Empty!14091) )
))
(declare-datatypes ((BalanceConc!27776 0))(
  ( (BalanceConc!27777 (c!719138 Conc!14091)) )
))
(declare-datatypes ((TokenValueInjection!15648 0))(
  ( (TokenValueInjection!15649 (toValue!10612 Int) (toChars!10471 Int)) )
))
(declare-datatypes ((Regex!12785 0))(
  ( (ElementMatch!12785 (c!719139 C!25768)) (Concat!20896 (regOne!26082 Regex!12785) (regTwo!26082 Regex!12785)) (EmptyExpr!12785) (Star!12785 (reg!13114 Regex!12785)) (EmptyLang!12785) (Union!12785 (regOne!26083 Regex!12785) (regTwo!26083 Regex!12785)) )
))
(declare-datatypes ((String!54424 0))(
  ( (String!54425 (value!245077 String)) )
))
(declare-datatypes ((Rule!15560 0))(
  ( (Rule!15561 (regex!7880 Regex!12785) (tag!8744 String!54424) (isSeparator!7880 Bool) (transformation!7880 TokenValueInjection!15648)) )
))
(declare-datatypes ((Token!14394 0))(
  ( (Token!14395 (value!245078 TokenValue!8110) (rule!10998 Rule!15560) (size!34224 Int) (originalCharacters!8228 List!46825)) )
))
(declare-fun t!8425 () Token!14394)

(declare-fun p!3014 () List!46825)

(declare-fun list!16864 (BalanceConc!27776) List!46825)

(declare-fun charsOf!5255 (Token!14394) BalanceConc!27776)

(assert (=> b!4230785 (= res!1739840 (= (list!16864 (charsOf!5255 t!8425)) p!3014))))

(declare-fun b!4230786 () Bool)

(declare-fun e!2627037 () Bool)

(declare-fun r!4334 () Rule!15560)

(declare-fun pBis!134 () List!46825)

(declare-fun matchR!6424 (Regex!12785 List!46825) Bool)

(assert (=> b!4230786 (= e!2627037 (not (matchR!6424 (regex!7880 r!4334) pBis!134)))))

(declare-fun b!4230787 () Bool)

(declare-fun res!1739852 () Bool)

(declare-fun e!2627036 () Bool)

(assert (=> b!4230787 (=> (not res!1739852) (not e!2627036))))

(declare-fun input!3586 () List!46825)

(declare-fun isPrefix!4695 (List!46825 List!46825) Bool)

(assert (=> b!4230787 (= res!1739852 (isPrefix!4695 pBis!134 input!3586))))

(declare-fun b!4230788 () Bool)

(declare-fun res!1739843 () Bool)

(assert (=> b!4230788 (=> (not res!1739843) (not e!2627024))))

(assert (=> b!4230788 (= res!1739843 (matchR!6424 (regex!7880 r!4334) p!3014))))

(declare-fun b!4230789 () Bool)

(declare-fun res!1739841 () Bool)

(declare-fun e!2627030 () Bool)

(assert (=> b!4230789 (=> res!1739841 e!2627030)))

(declare-fun lt!1504111 () Int)

(declare-datatypes ((tuple2!44308 0))(
  ( (tuple2!44309 (_1!25288 List!46825) (_2!25288 List!46825)) )
))
(declare-fun findLongestMatchInner!1687 (Regex!12785 List!46825 Int List!46825 List!46825 Int) tuple2!44308)

(declare-fun size!34225 (List!46825) Int)

(assert (=> b!4230789 (= res!1739841 (not (= (_1!25288 (findLongestMatchInner!1687 (regex!7880 r!4334) Nil!46701 (size!34225 Nil!46701) input!3586 input!3586 lt!1504111)) p!3014)))))

(declare-fun b!4230790 () Bool)

(declare-fun e!2627023 () Bool)

(assert (=> b!4230790 (= e!2627023 e!2627024)))

(declare-fun res!1739849 () Bool)

(assert (=> b!4230790 (=> (not res!1739849) (not e!2627024))))

(declare-fun lt!1504109 () Int)

(declare-fun lt!1504110 () Int)

(assert (=> b!4230790 (= res!1739849 (> lt!1504109 lt!1504110))))

(assert (=> b!4230790 (= lt!1504110 (size!34225 p!3014))))

(declare-fun b!4230792 () Bool)

(assert (=> b!4230792 (= e!2627030 (not (matchR!6424 (regex!7880 r!4334) pBis!134)))))

(assert (=> b!4230792 e!2627037))

(declare-fun res!1739851 () Bool)

(assert (=> b!4230792 (=> res!1739851 e!2627037)))

(assert (=> b!4230792 (= res!1739851 (= pBis!134 p!3014))))

(declare-datatypes ((Unit!65829 0))(
  ( (Unit!65830) )
))
(declare-fun lt!1504112 () Unit!65829)

(declare-fun longestMatchNoBiggerStringMatch!9 (Regex!12785 List!46825 List!46825 List!46825) Unit!65829)

(assert (=> b!4230792 (= lt!1504112 (longestMatchNoBiggerStringMatch!9 (regex!7880 r!4334) input!3586 p!3014 pBis!134))))

(declare-fun b!4230793 () Bool)

(declare-fun e!2627034 () Bool)

(declare-fun tp_is_empty!22505 () Bool)

(declare-fun tp!1295913 () Bool)

(assert (=> b!4230793 (= e!2627034 (and tp_is_empty!22505 tp!1295913))))

(declare-fun b!4230794 () Bool)

(declare-fun res!1739845 () Bool)

(assert (=> b!4230794 (=> res!1739845 e!2627030)))

(assert (=> b!4230794 (= res!1739845 (< lt!1504109 lt!1504110))))

(declare-fun e!2627022 () Bool)

(assert (=> b!4230795 (= e!2627022 (and tp!1295912 tp!1295910))))

(declare-fun b!4230796 () Bool)

(declare-fun res!1739839 () Bool)

(assert (=> b!4230796 (=> (not res!1739839) (not e!2627024))))

(declare-fun validRegex!5803 (Regex!12785) Bool)

(assert (=> b!4230796 (= res!1739839 (validRegex!5803 (regex!7880 r!4334)))))

(declare-fun b!4230797 () Bool)

(declare-fun res!1739850 () Bool)

(assert (=> b!4230797 (=> (not res!1739850) (not e!2627036))))

(declare-fun suffix!1590 () List!46825)

(declare-fun ++!11910 (List!46825 List!46825) List!46825)

(assert (=> b!4230797 (= res!1739850 (= (++!11910 p!3014 suffix!1590) input!3586))))

(declare-fun b!4230798 () Bool)

(declare-fun e!2627029 () Bool)

(declare-fun tp!1295915 () Bool)

(assert (=> b!4230798 (= e!2627029 (and tp_is_empty!22505 tp!1295915))))

(declare-fun b!4230799 () Bool)

(declare-fun res!1739846 () Bool)

(assert (=> b!4230799 (=> (not res!1739846) (not e!2627036))))

(assert (=> b!4230799 (= res!1739846 (isPrefix!4695 p!3014 input!3586))))

(declare-fun res!1739847 () Bool)

(assert (=> start!404634 (=> (not res!1739847) (not e!2627036))))

(declare-datatypes ((LexerInterface!7475 0))(
  ( (LexerInterfaceExt!7472 (__x!28444 Int)) (Lexer!7473) )
))
(declare-fun thiss!26785 () LexerInterface!7475)

(get-info :version)

(assert (=> start!404634 (= res!1739847 ((_ is Lexer!7473) thiss!26785))))

(assert (=> start!404634 e!2627036))

(assert (=> start!404634 true))

(assert (=> start!404634 e!2627034))

(declare-fun e!2627031 () Bool)

(declare-fun inv!61397 (Token!14394) Bool)

(assert (=> start!404634 (and (inv!61397 t!8425) e!2627031)))

(declare-fun e!2627033 () Bool)

(assert (=> start!404634 e!2627033))

(assert (=> start!404634 e!2627029))

(declare-fun e!2627026 () Bool)

(assert (=> start!404634 e!2627026))

(declare-fun e!2627035 () Bool)

(assert (=> start!404634 e!2627035))

(declare-fun b!4230791 () Bool)

(declare-fun tp!1295919 () Bool)

(declare-fun e!2627028 () Bool)

(declare-fun inv!61394 (String!54424) Bool)

(declare-fun inv!61398 (TokenValueInjection!15648) Bool)

(assert (=> b!4230791 (= e!2627028 (and tp!1295919 (inv!61394 (tag!8744 (rule!10998 t!8425))) (inv!61398 (transformation!7880 (rule!10998 t!8425))) e!2627032))))

(declare-fun tp!1295920 () Bool)

(declare-fun b!4230800 () Bool)

(declare-fun inv!21 (TokenValue!8110) Bool)

(assert (=> b!4230800 (= e!2627031 (and (inv!21 (value!245078 t!8425)) e!2627028 tp!1295920))))

(declare-fun tp!1295918 () Bool)

(declare-fun b!4230801 () Bool)

(assert (=> b!4230801 (= e!2627033 (and tp!1295918 (inv!61394 (tag!8744 r!4334)) (inv!61398 (transformation!7880 r!4334)) e!2627022))))

(declare-fun b!4230802 () Bool)

(declare-fun tp!1295917 () Bool)

(assert (=> b!4230802 (= e!2627026 (and tp_is_empty!22505 tp!1295917))))

(declare-fun b!4230803 () Bool)

(assert (=> b!4230803 (= e!2627036 e!2627023)))

(declare-fun res!1739848 () Bool)

(assert (=> b!4230803 (=> (not res!1739848) (not e!2627023))))

(assert (=> b!4230803 (= res!1739848 (<= lt!1504109 lt!1504111))))

(assert (=> b!4230803 (= lt!1504111 (size!34225 input!3586))))

(assert (=> b!4230803 (= lt!1504109 (size!34225 pBis!134))))

(declare-fun b!4230804 () Bool)

(declare-fun tp!1295916 () Bool)

(assert (=> b!4230804 (= e!2627035 (and tp_is_empty!22505 tp!1295916))))

(declare-fun b!4230805 () Bool)

(declare-fun res!1739844 () Bool)

(assert (=> b!4230805 (=> (not res!1739844) (not e!2627024))))

(declare-fun ruleValid!3576 (LexerInterface!7475 Rule!15560) Bool)

(assert (=> b!4230805 (= res!1739844 (ruleValid!3576 thiss!26785 r!4334))))

(declare-fun b!4230806 () Bool)

(assert (=> b!4230806 (= e!2627024 (not e!2627030))))

(declare-fun res!1739842 () Bool)

(assert (=> b!4230806 (=> res!1739842 e!2627030)))

(declare-datatypes ((tuple2!44310 0))(
  ( (tuple2!44311 (_1!25289 Token!14394) (_2!25289 List!46825)) )
))
(declare-datatypes ((Option!10028 0))(
  ( (None!10027) (Some!10027 (v!40955 tuple2!44310)) )
))
(declare-fun maxPrefixOneRule!3422 (LexerInterface!7475 Rule!15560 List!46825) Option!10028)

(assert (=> b!4230806 (= res!1739842 (not (= (maxPrefixOneRule!3422 thiss!26785 r!4334 input!3586) (Some!10027 (tuple2!44311 t!8425 suffix!1590)))))))

(assert (=> b!4230806 (isPrefix!4695 input!3586 input!3586)))

(declare-fun lt!1504108 () Unit!65829)

(declare-fun lemmaIsPrefixRefl!3106 (List!46825 List!46825) Unit!65829)

(assert (=> b!4230806 (= lt!1504108 (lemmaIsPrefixRefl!3106 input!3586 input!3586))))

(assert (= (and start!404634 res!1739847) b!4230797))

(assert (= (and b!4230797 res!1739850) b!4230799))

(assert (= (and b!4230799 res!1739846) b!4230787))

(assert (= (and b!4230787 res!1739852) b!4230803))

(assert (= (and b!4230803 res!1739848) b!4230790))

(assert (= (and b!4230790 res!1739849) b!4230805))

(assert (= (and b!4230805 res!1739844) b!4230796))

(assert (= (and b!4230796 res!1739839) b!4230788))

(assert (= (and b!4230788 res!1739843) b!4230785))

(assert (= (and b!4230785 res!1739840) b!4230806))

(assert (= (and b!4230806 (not res!1739842)) b!4230794))

(assert (= (and b!4230794 (not res!1739845)) b!4230789))

(assert (= (and b!4230789 (not res!1739841)) b!4230792))

(assert (= (and b!4230792 (not res!1739851)) b!4230786))

(assert (= (and start!404634 ((_ is Cons!46701) p!3014)) b!4230793))

(assert (= b!4230791 b!4230784))

(assert (= b!4230800 b!4230791))

(assert (= start!404634 b!4230800))

(assert (= b!4230801 b!4230795))

(assert (= start!404634 b!4230801))

(assert (= (and start!404634 ((_ is Cons!46701) input!3586)) b!4230798))

(assert (= (and start!404634 ((_ is Cons!46701) pBis!134)) b!4230802))

(assert (= (and start!404634 ((_ is Cons!46701) suffix!1590)) b!4230804))

(declare-fun m!4817411 () Bool)

(assert (=> b!4230787 m!4817411))

(declare-fun m!4817413 () Bool)

(assert (=> start!404634 m!4817413))

(declare-fun m!4817415 () Bool)

(assert (=> b!4230790 m!4817415))

(declare-fun m!4817417 () Bool)

(assert (=> b!4230800 m!4817417))

(declare-fun m!4817419 () Bool)

(assert (=> b!4230801 m!4817419))

(declare-fun m!4817421 () Bool)

(assert (=> b!4230801 m!4817421))

(declare-fun m!4817423 () Bool)

(assert (=> b!4230786 m!4817423))

(declare-fun m!4817425 () Bool)

(assert (=> b!4230797 m!4817425))

(declare-fun m!4817427 () Bool)

(assert (=> b!4230799 m!4817427))

(declare-fun m!4817429 () Bool)

(assert (=> b!4230806 m!4817429))

(declare-fun m!4817431 () Bool)

(assert (=> b!4230806 m!4817431))

(declare-fun m!4817433 () Bool)

(assert (=> b!4230806 m!4817433))

(declare-fun m!4817435 () Bool)

(assert (=> b!4230805 m!4817435))

(assert (=> b!4230792 m!4817423))

(declare-fun m!4817437 () Bool)

(assert (=> b!4230792 m!4817437))

(declare-fun m!4817439 () Bool)

(assert (=> b!4230796 m!4817439))

(declare-fun m!4817441 () Bool)

(assert (=> b!4230789 m!4817441))

(assert (=> b!4230789 m!4817441))

(declare-fun m!4817443 () Bool)

(assert (=> b!4230789 m!4817443))

(declare-fun m!4817445 () Bool)

(assert (=> b!4230791 m!4817445))

(declare-fun m!4817447 () Bool)

(assert (=> b!4230791 m!4817447))

(declare-fun m!4817449 () Bool)

(assert (=> b!4230788 m!4817449))

(declare-fun m!4817451 () Bool)

(assert (=> b!4230785 m!4817451))

(assert (=> b!4230785 m!4817451))

(declare-fun m!4817453 () Bool)

(assert (=> b!4230785 m!4817453))

(declare-fun m!4817455 () Bool)

(assert (=> b!4230803 m!4817455))

(declare-fun m!4817457 () Bool)

(assert (=> b!4230803 m!4817457))

(check-sat (not b!4230797) b_and!334249 (not b_next!125647) (not b_next!125649) (not b!4230802) tp_is_empty!22505 b_and!334255 (not b!4230801) (not b!4230804) (not start!404634) (not b!4230798) (not b!4230785) (not b_next!125645) (not b!4230799) (not b!4230806) (not b!4230800) (not b!4230786) (not b!4230805) b_and!334253 b_and!334251 (not b!4230803) (not b!4230790) (not b!4230793) (not b!4230792) (not b!4230787) (not b!4230788) (not b_next!125643) (not b!4230789) (not b!4230796) (not b!4230791))
(check-sat b_and!334249 (not b_next!125647) b_and!334253 (not b_next!125649) b_and!334255 b_and!334251 (not b_next!125645) (not b_next!125643))
