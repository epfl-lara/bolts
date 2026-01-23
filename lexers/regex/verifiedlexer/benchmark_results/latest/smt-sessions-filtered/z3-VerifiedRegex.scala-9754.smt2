; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!510896 () Bool)

(assert start!510896)

(declare-fun b!4882598 () Bool)

(declare-fun b_free!130983 () Bool)

(declare-fun b_next!131773 () Bool)

(assert (=> b!4882598 (= b_free!130983 (not b_next!131773))))

(declare-fun tp!1373785 () Bool)

(declare-fun b_and!343815 () Bool)

(assert (=> b!4882598 (= tp!1373785 b_and!343815)))

(declare-fun b_free!130985 () Bool)

(declare-fun b_next!131775 () Bool)

(assert (=> b!4882598 (= b_free!130985 (not b_next!131775))))

(declare-fun tp!1373783 () Bool)

(declare-fun b_and!343817 () Bool)

(assert (=> b!4882598 (= tp!1373783 b_and!343817)))

(declare-fun b!4882591 () Bool)

(declare-fun e!3051557 () Bool)

(assert (=> b!4882591 (= e!3051557 true)))

(declare-datatypes ((LexerInterface!7668 0))(
  ( (LexerInterfaceExt!7665 (__x!34065 Int)) (Lexer!7666) )
))
(declare-fun thiss!14805 () LexerInterface!7668)

(declare-datatypes ((C!26500 0))(
  ( (C!26501 (val!22584 Int)) )
))
(declare-datatypes ((List!56233 0))(
  ( (Nil!56109) (Cons!56109 (h!62557 C!26500) (t!364879 List!56233)) )
))
(declare-datatypes ((IArray!29349 0))(
  ( (IArray!29350 (innerList!14732 List!56233)) )
))
(declare-datatypes ((Conc!14644 0))(
  ( (Node!14644 (left!40768 Conc!14644) (right!41098 Conc!14644) (csize!29518 Int) (cheight!14855 Int)) (Leaf!24399 (xs!17960 IArray!29349) (csize!29519 Int)) (Empty!14644) )
))
(declare-datatypes ((BalanceConc!28718 0))(
  ( (BalanceConc!28719 (c!830387 Conc!14644)) )
))
(declare-datatypes ((List!56234 0))(
  ( (Nil!56110) (Cons!56110 (h!62558 (_ BitVec 16)) (t!364880 List!56234)) )
))
(declare-datatypes ((TokenValue!8386 0))(
  ( (FloatLiteralValue!16772 (text!59147 List!56234)) (TokenValueExt!8385 (__x!34066 Int)) (Broken!41930 (value!259292 List!56234)) (Object!8509) (End!8386) (Def!8386) (Underscore!8386) (Match!8386) (Else!8386) (Error!8386) (Case!8386) (If!8386) (Extends!8386) (Abstract!8386) (Class!8386) (Val!8386) (DelimiterValue!16772 (del!8446 List!56234)) (KeywordValue!8392 (value!259293 List!56234)) (CommentValue!16772 (value!259294 List!56234)) (WhitespaceValue!16772 (value!259295 List!56234)) (IndentationValue!8386 (value!259296 List!56234)) (String!63371) (Int32!8386) (Broken!41931 (value!259297 List!56234)) (Boolean!8387) (Unit!146099) (OperatorValue!8389 (op!8446 List!56234)) (IdentifierValue!16772 (value!259298 List!56234)) (IdentifierValue!16773 (value!259299 List!56234)) (WhitespaceValue!16773 (value!259300 List!56234)) (True!16772) (False!16772) (Broken!41932 (value!259301 List!56234)) (Broken!41933 (value!259302 List!56234)) (True!16773) (RightBrace!8386) (RightBracket!8386) (Colon!8386) (Null!8386) (Comma!8386) (LeftBracket!8386) (False!16773) (LeftBrace!8386) (ImaginaryLiteralValue!8386 (text!59148 List!56234)) (StringLiteralValue!25158 (value!259303 List!56234)) (EOFValue!8386 (value!259304 List!56234)) (IdentValue!8386 (value!259305 List!56234)) (DelimiterValue!16773 (value!259306 List!56234)) (DedentValue!8386 (value!259307 List!56234)) (NewLineValue!8386 (value!259308 List!56234)) (IntegerValue!25158 (value!259309 (_ BitVec 32)) (text!59149 List!56234)) (IntegerValue!25159 (value!259310 Int) (text!59150 List!56234)) (Times!8386) (Or!8386) (Equal!8386) (Minus!8386) (Broken!41934 (value!259311 List!56234)) (And!8386) (Div!8386) (LessEqual!8386) (Mod!8386) (Concat!21537) (Not!8386) (Plus!8386) (SpaceValue!8386 (value!259312 List!56234)) (IntegerValue!25160 (value!259313 Int) (text!59151 List!56234)) (StringLiteralValue!25159 (text!59152 List!56234)) (FloatLiteralValue!16773 (text!59153 List!56234)) (BytesLiteralValue!8386 (value!259314 List!56234)) (CommentValue!16773 (value!259315 List!56234)) (StringLiteralValue!25160 (value!259316 List!56234)) (ErrorTokenValue!8386 (msg!8447 List!56234)) )
))
(declare-datatypes ((Regex!13151 0))(
  ( (ElementMatch!13151 (c!830388 C!26500)) (Concat!21538 (regOne!26814 Regex!13151) (regTwo!26814 Regex!13151)) (EmptyExpr!13151) (Star!13151 (reg!13480 Regex!13151)) (EmptyLang!13151) (Union!13151 (regOne!26815 Regex!13151) (regTwo!26815 Regex!13151)) )
))
(declare-datatypes ((String!63372 0))(
  ( (String!63373 (value!259317 String)) )
))
(declare-datatypes ((TokenValueInjection!16080 0))(
  ( (TokenValueInjection!16081 (toValue!10963 Int) (toChars!10822 Int)) )
))
(declare-datatypes ((Rule!15952 0))(
  ( (Rule!15953 (regex!8076 Regex!13151) (tag!8940 String!63372) (isSeparator!8076 Bool) (transformation!8076 TokenValueInjection!16080)) )
))
(declare-datatypes ((Token!14720 0))(
  ( (Token!14721 (value!259318 TokenValue!8386) (rule!11234 Rule!15952) (size!36989 Int) (originalCharacters!8391 List!56233)) )
))
(declare-datatypes ((tuple2!59996 0))(
  ( (tuple2!59997 (_1!33301 Token!14720) (_2!33301 BalanceConc!28718)) )
))
(declare-datatypes ((Option!13839 0))(
  ( (None!13838) (Some!13838 (v!49788 tuple2!59996)) )
))
(declare-fun lt!2000044 () Option!13839)

(declare-fun input!1236 () BalanceConc!28718)

(declare-datatypes ((List!56235 0))(
  ( (Nil!56111) (Cons!56111 (h!62559 Rule!15952) (t!364881 List!56235)) )
))
(declare-fun rulesArg!165 () List!56235)

(declare-fun maxPrefixOneRuleZipperSequence!602 (LexerInterface!7668 Rule!15952 BalanceConc!28718) Option!13839)

(assert (=> b!4882591 (= lt!2000044 (maxPrefixOneRuleZipperSequence!602 thiss!14805 (h!62559 rulesArg!165) input!1236))))

(declare-fun b!4882592 () Bool)

(declare-fun e!3051554 () Bool)

(assert (=> b!4882592 (= e!3051554 (not e!3051557))))

(declare-fun res!2084327 () Bool)

(assert (=> b!4882592 (=> res!2084327 e!3051557)))

(get-info :version)

(assert (=> b!4882592 (= res!2084327 (or (and ((_ is Cons!56111) rulesArg!165) ((_ is Nil!56111) (t!364881 rulesArg!165))) (not ((_ is Cons!56111) rulesArg!165))))))

(declare-fun lt!2000045 () List!56233)

(declare-fun isPrefix!4798 (List!56233 List!56233) Bool)

(assert (=> b!4882592 (isPrefix!4798 lt!2000045 lt!2000045)))

(declare-datatypes ((Unit!146100 0))(
  ( (Unit!146101) )
))
(declare-fun lt!2000046 () Unit!146100)

(declare-fun lemmaIsPrefixRefl!3195 (List!56233 List!56233) Unit!146100)

(assert (=> b!4882592 (= lt!2000046 (lemmaIsPrefixRefl!3195 lt!2000045 lt!2000045))))

(declare-fun list!17598 (BalanceConc!28718) List!56233)

(assert (=> b!4882592 (= lt!2000045 (list!17598 input!1236))))

(declare-fun e!3051556 () Bool)

(declare-fun b!4882594 () Bool)

(declare-fun e!3051555 () Bool)

(declare-fun tp!1373784 () Bool)

(declare-fun inv!72153 (String!63372) Bool)

(declare-fun inv!72157 (TokenValueInjection!16080) Bool)

(assert (=> b!4882594 (= e!3051556 (and tp!1373784 (inv!72153 (tag!8940 (h!62559 rulesArg!165))) (inv!72157 (transformation!8076 (h!62559 rulesArg!165))) e!3051555))))

(declare-fun b!4882595 () Bool)

(declare-fun res!2084324 () Bool)

(assert (=> b!4882595 (=> (not res!2084324) (not e!3051554))))

(declare-fun rulesValidInductive!3055 (LexerInterface!7668 List!56235) Bool)

(assert (=> b!4882595 (= res!2084324 (rulesValidInductive!3055 thiss!14805 rulesArg!165))))

(declare-fun b!4882596 () Bool)

(declare-fun e!3051559 () Bool)

(declare-fun tp!1373787 () Bool)

(declare-fun inv!72158 (Conc!14644) Bool)

(assert (=> b!4882596 (= e!3051559 (and (inv!72158 (c!830387 input!1236)) tp!1373787))))

(declare-fun b!4882597 () Bool)

(declare-fun e!3051560 () Bool)

(declare-fun tp!1373786 () Bool)

(assert (=> b!4882597 (= e!3051560 (and e!3051556 tp!1373786))))

(assert (=> b!4882598 (= e!3051555 (and tp!1373785 tp!1373783))))

(declare-fun b!4882593 () Bool)

(declare-fun res!2084325 () Bool)

(assert (=> b!4882593 (=> (not res!2084325) (not e!3051554))))

(declare-fun isEmpty!30071 (List!56235) Bool)

(assert (=> b!4882593 (= res!2084325 (not (isEmpty!30071 rulesArg!165)))))

(declare-fun res!2084326 () Bool)

(assert (=> start!510896 (=> (not res!2084326) (not e!3051554))))

(assert (=> start!510896 (= res!2084326 ((_ is Lexer!7666) thiss!14805))))

(assert (=> start!510896 e!3051554))

(assert (=> start!510896 true))

(assert (=> start!510896 e!3051560))

(declare-fun inv!72159 (BalanceConc!28718) Bool)

(assert (=> start!510896 (and (inv!72159 input!1236) e!3051559)))

(assert (= (and start!510896 res!2084326) b!4882595))

(assert (= (and b!4882595 res!2084324) b!4882593))

(assert (= (and b!4882593 res!2084325) b!4882592))

(assert (= (and b!4882592 (not res!2084327)) b!4882591))

(assert (= b!4882594 b!4882598))

(assert (= b!4882597 b!4882594))

(assert (= (and start!510896 ((_ is Cons!56111) rulesArg!165)) b!4882597))

(assert (= start!510896 b!4882596))

(declare-fun m!5886684 () Bool)

(assert (=> b!4882591 m!5886684))

(declare-fun m!5886686 () Bool)

(assert (=> b!4882592 m!5886686))

(declare-fun m!5886688 () Bool)

(assert (=> b!4882592 m!5886688))

(declare-fun m!5886690 () Bool)

(assert (=> b!4882592 m!5886690))

(declare-fun m!5886692 () Bool)

(assert (=> b!4882594 m!5886692))

(declare-fun m!5886694 () Bool)

(assert (=> b!4882594 m!5886694))

(declare-fun m!5886696 () Bool)

(assert (=> b!4882596 m!5886696))

(declare-fun m!5886698 () Bool)

(assert (=> b!4882595 m!5886698))

(declare-fun m!5886700 () Bool)

(assert (=> start!510896 m!5886700))

(declare-fun m!5886702 () Bool)

(assert (=> b!4882593 m!5886702))

(check-sat b_and!343815 (not b!4882592) (not b!4882593) (not b!4882597) (not b!4882595) (not b_next!131775) (not b!4882594) (not start!510896) b_and!343817 (not b!4882591) (not b_next!131773) (not b!4882596))
(check-sat b_and!343817 b_and!343815 (not b_next!131773) (not b_next!131775))
