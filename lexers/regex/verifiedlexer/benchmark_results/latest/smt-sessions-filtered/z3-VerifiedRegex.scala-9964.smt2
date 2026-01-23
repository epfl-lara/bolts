; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522076 () Bool)

(assert start!522076)

(declare-fun b!4953803 () Bool)

(declare-fun b_free!132099 () Bool)

(declare-fun b_next!132889 () Bool)

(assert (=> b!4953803 (= b_free!132099 (not b_next!132889))))

(declare-fun tp!1388870 () Bool)

(declare-fun b_and!346951 () Bool)

(assert (=> b!4953803 (= tp!1388870 b_and!346951)))

(declare-fun b_free!132101 () Bool)

(declare-fun b_next!132891 () Bool)

(assert (=> b!4953803 (= b_free!132101 (not b_next!132891))))

(declare-fun tp!1388874 () Bool)

(declare-fun b_and!346953 () Bool)

(assert (=> b!4953803 (= tp!1388874 b_and!346953)))

(declare-fun b!4953794 () Bool)

(declare-fun e!3095199 () Bool)

(declare-fun e!3095203 () Bool)

(assert (=> b!4953794 (= e!3095199 (not e!3095203))))

(declare-fun res!2113380 () Bool)

(assert (=> b!4953794 (=> res!2113380 e!3095203)))

(declare-datatypes ((List!57226 0))(
  ( (Nil!57102) (Cons!57102 (h!63550 (_ BitVec 16)) (t!367792 List!57226)) )
))
(declare-datatypes ((TokenValue!8590 0))(
  ( (FloatLiteralValue!17180 (text!60575 List!57226)) (TokenValueExt!8589 (__x!34473 Int)) (Broken!42950 (value!265400 List!57226)) (Object!8713) (End!8590) (Def!8590) (Underscore!8590) (Match!8590) (Else!8590) (Error!8590) (Case!8590) (If!8590) (Extends!8590) (Abstract!8590) (Class!8590) (Val!8590) (DelimiterValue!17180 (del!8650 List!57226)) (KeywordValue!8596 (value!265401 List!57226)) (CommentValue!17180 (value!265402 List!57226)) (WhitespaceValue!17180 (value!265403 List!57226)) (IndentationValue!8590 (value!265404 List!57226)) (String!64823) (Int32!8590) (Broken!42951 (value!265405 List!57226)) (Boolean!8591) (Unit!147996) (OperatorValue!8593 (op!8650 List!57226)) (IdentifierValue!17180 (value!265406 List!57226)) (IdentifierValue!17181 (value!265407 List!57226)) (WhitespaceValue!17181 (value!265408 List!57226)) (True!17180) (False!17180) (Broken!42952 (value!265409 List!57226)) (Broken!42953 (value!265410 List!57226)) (True!17181) (RightBrace!8590) (RightBracket!8590) (Colon!8590) (Null!8590) (Comma!8590) (LeftBracket!8590) (False!17181) (LeftBrace!8590) (ImaginaryLiteralValue!8590 (text!60576 List!57226)) (StringLiteralValue!25770 (value!265411 List!57226)) (EOFValue!8590 (value!265412 List!57226)) (IdentValue!8590 (value!265413 List!57226)) (DelimiterValue!17181 (value!265414 List!57226)) (DedentValue!8590 (value!265415 List!57226)) (NewLineValue!8590 (value!265416 List!57226)) (IntegerValue!25770 (value!265417 (_ BitVec 32)) (text!60577 List!57226)) (IntegerValue!25771 (value!265418 Int) (text!60578 List!57226)) (Times!8590) (Or!8590) (Equal!8590) (Minus!8590) (Broken!42954 (value!265419 List!57226)) (And!8590) (Div!8590) (LessEqual!8590) (Mod!8590) (Concat!22103) (Not!8590) (Plus!8590) (SpaceValue!8590 (value!265420 List!57226)) (IntegerValue!25772 (value!265421 Int) (text!60579 List!57226)) (StringLiteralValue!25771 (text!60580 List!57226)) (FloatLiteralValue!17181 (text!60581 List!57226)) (BytesLiteralValue!8590 (value!265422 List!57226)) (CommentValue!17181 (value!265423 List!57226)) (StringLiteralValue!25772 (value!265424 List!57226)) (ErrorTokenValue!8590 (msg!8651 List!57226)) )
))
(declare-datatypes ((C!27276 0))(
  ( (C!27277 (val!23004 Int)) )
))
(declare-datatypes ((Regex!13513 0))(
  ( (ElementMatch!13513 (c!845969 C!27276)) (Concat!22104 (regOne!27538 Regex!13513) (regTwo!27538 Regex!13513)) (EmptyExpr!13513) (Star!13513 (reg!13842 Regex!13513)) (EmptyLang!13513) (Union!13513 (regOne!27539 Regex!13513) (regTwo!27539 Regex!13513)) )
))
(declare-datatypes ((String!64824 0))(
  ( (String!64825 (value!265425 String)) )
))
(declare-datatypes ((List!57227 0))(
  ( (Nil!57103) (Cons!57103 (h!63551 C!27276) (t!367793 List!57227)) )
))
(declare-datatypes ((IArray!30125 0))(
  ( (IArray!30126 (innerList!15120 List!57227)) )
))
(declare-datatypes ((Conc!15032 0))(
  ( (Node!15032 (left!41654 Conc!15032) (right!41984 Conc!15032) (csize!30294 Int) (cheight!15243 Int)) (Leaf!24997 (xs!18358 IArray!30125) (csize!30295 Int)) (Empty!15032) )
))
(declare-datatypes ((BalanceConc!29494 0))(
  ( (BalanceConc!29495 (c!845970 Conc!15032)) )
))
(declare-datatypes ((TokenValueInjection!16488 0))(
  ( (TokenValueInjection!16489 (toValue!11231 Int) (toChars!11090 Int)) )
))
(declare-datatypes ((Rule!16360 0))(
  ( (Rule!16361 (regex!8280 Regex!13513) (tag!9144 String!64824) (isSeparator!8280 Bool) (transformation!8280 TokenValueInjection!16488)) )
))
(declare-datatypes ((List!57228 0))(
  ( (Nil!57104) (Cons!57104 (h!63552 Rule!16360) (t!367794 List!57228)) )
))
(declare-fun rulesArg!259 () List!57228)

(get-info :version)

(assert (=> b!4953794 (= res!2113380 (or (not ((_ is Cons!57104) rulesArg!259)) (not ((_ is Nil!57104) (t!367794 rulesArg!259)))))))

(declare-fun lt!2044469 () List!57227)

(declare-fun isPrefix!5133 (List!57227 List!57227) Bool)

(assert (=> b!4953794 (isPrefix!5133 lt!2044469 lt!2044469)))

(declare-datatypes ((Unit!147997 0))(
  ( (Unit!147998) )
))
(declare-fun lt!2044470 () Unit!147997)

(declare-fun lemmaIsPrefixRefl!3457 (List!57227 List!57227) Unit!147997)

(assert (=> b!4953794 (= lt!2044470 (lemmaIsPrefixRefl!3457 lt!2044469 lt!2044469))))

(declare-fun b!4953795 () Bool)

(declare-fun e!3095202 () Bool)

(declare-fun e!3095195 () Bool)

(declare-fun tp!1388871 () Bool)

(assert (=> b!4953795 (= e!3095202 (and e!3095195 tp!1388871))))

(declare-fun b!4953796 () Bool)

(declare-fun e!3095194 () Bool)

(declare-fun e!3095205 () Bool)

(assert (=> b!4953796 (= e!3095194 e!3095205)))

(declare-fun res!2113377 () Bool)

(assert (=> b!4953796 (=> (not res!2113377) (not e!3095205))))

(declare-datatypes ((Token!15068 0))(
  ( (Token!15069 (value!265426 TokenValue!8590) (rule!11492 Rule!16360) (size!37890 Int) (originalCharacters!8565 List!57227)) )
))
(declare-datatypes ((tuple2!61636 0))(
  ( (tuple2!61637 (_1!34121 Token!15068) (_2!34121 BalanceConc!29494)) )
))
(declare-fun lt!2044471 () tuple2!61636)

(declare-datatypes ((tuple2!61638 0))(
  ( (tuple2!61639 (_1!34122 Token!15068) (_2!34122 List!57227)) )
))
(declare-fun lt!2044473 () tuple2!61638)

(assert (=> b!4953796 (= res!2113377 (= (_1!34121 lt!2044471) (_1!34122 lt!2044473)))))

(declare-datatypes ((Option!14243 0))(
  ( (None!14242) (Some!14242 (v!50227 tuple2!61638)) )
))
(declare-fun lt!2044475 () Option!14243)

(declare-fun get!19729 (Option!14243) tuple2!61638)

(assert (=> b!4953796 (= lt!2044473 (get!19729 lt!2044475))))

(declare-datatypes ((Option!14244 0))(
  ( (None!14243) (Some!14243 (v!50228 tuple2!61636)) )
))
(declare-fun lt!2044468 () Option!14244)

(declare-fun get!19730 (Option!14244) tuple2!61636)

(assert (=> b!4953796 (= lt!2044471 (get!19730 lt!2044468))))

(declare-fun b!4953797 () Bool)

(declare-fun e!3095197 () Bool)

(assert (=> b!4953797 (= e!3095197 true)))

(declare-fun lt!2044472 () Bool)

(assert (=> b!4953797 (= lt!2044472 e!3095194)))

(declare-fun res!2113379 () Bool)

(assert (=> b!4953797 (=> res!2113379 e!3095194)))

(declare-fun lt!2044474 () Bool)

(assert (=> b!4953797 (= res!2113379 (not lt!2044474))))

(declare-fun b!4953798 () Bool)

(declare-fun list!18212 (BalanceConc!29494) List!57227)

(assert (=> b!4953798 (= e!3095205 (= (list!18212 (_2!34121 lt!2044471)) (_2!34122 lt!2044473)))))

(declare-fun b!4953799 () Bool)

(declare-fun e!3095201 () Bool)

(declare-fun totalInput!464 () BalanceConc!29494)

(declare-fun tp!1388872 () Bool)

(declare-fun inv!74447 (Conc!15032) Bool)

(assert (=> b!4953799 (= e!3095201 (and (inv!74447 (c!845970 totalInput!464)) tp!1388872))))

(declare-fun b!4953800 () Bool)

(declare-fun tp!1388873 () Bool)

(declare-fun e!3095198 () Bool)

(declare-fun inv!74443 (String!64824) Bool)

(declare-fun inv!74448 (TokenValueInjection!16488) Bool)

(assert (=> b!4953800 (= e!3095195 (and tp!1388873 (inv!74443 (tag!9144 (h!63552 rulesArg!259))) (inv!74448 (transformation!8280 (h!63552 rulesArg!259))) e!3095198))))

(declare-fun b!4953801 () Bool)

(assert (=> b!4953801 (= e!3095203 e!3095197)))

(declare-fun res!2113376 () Bool)

(assert (=> b!4953801 (=> res!2113376 e!3095197)))

(declare-fun isDefined!11196 (Option!14243) Bool)

(assert (=> b!4953801 (= res!2113376 (not (= lt!2044474 (isDefined!11196 lt!2044475))))))

(declare-fun isDefined!11197 (Option!14244) Bool)

(assert (=> b!4953801 (= lt!2044474 (isDefined!11197 lt!2044468))))

(declare-datatypes ((LexerInterface!7872 0))(
  ( (LexerInterfaceExt!7869 (__x!34474 Int)) (Lexer!7870) )
))
(declare-fun thiss!15247 () LexerInterface!7872)

(declare-fun maxPrefixZipper!691 (LexerInterface!7872 List!57228 List!57227) Option!14243)

(assert (=> b!4953801 (= lt!2044475 (maxPrefixZipper!691 thiss!15247 rulesArg!259 lt!2044469))))

(declare-fun input!1342 () BalanceConc!29494)

(declare-fun maxPrefixOneRuleZipperSequenceV2!268 (LexerInterface!7872 Rule!16360 BalanceConc!29494 BalanceConc!29494) Option!14244)

(assert (=> b!4953801 (= lt!2044468 (maxPrefixOneRuleZipperSequenceV2!268 thiss!15247 (h!63552 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4953802 () Bool)

(declare-fun e!3095200 () Bool)

(declare-fun tp!1388869 () Bool)

(assert (=> b!4953802 (= e!3095200 (and (inv!74447 (c!845970 input!1342)) tp!1388869))))

(assert (=> b!4953803 (= e!3095198 (and tp!1388870 tp!1388874))))

(declare-fun b!4953804 () Bool)

(declare-fun res!2113382 () Bool)

(declare-fun e!3095204 () Bool)

(assert (=> b!4953804 (=> (not res!2113382) (not e!3095204))))

(declare-fun rulesValidInductive!3183 (LexerInterface!7872 List!57228) Bool)

(assert (=> b!4953804 (= res!2113382 (rulesValidInductive!3183 thiss!15247 rulesArg!259))))

(declare-fun res!2113378 () Bool)

(assert (=> start!522076 (=> (not res!2113378) (not e!3095204))))

(assert (=> start!522076 (= res!2113378 ((_ is Lexer!7870) thiss!15247))))

(assert (=> start!522076 e!3095204))

(assert (=> start!522076 true))

(assert (=> start!522076 e!3095202))

(declare-fun inv!74449 (BalanceConc!29494) Bool)

(assert (=> start!522076 (and (inv!74449 input!1342) e!3095200)))

(assert (=> start!522076 (and (inv!74449 totalInput!464) e!3095201)))

(declare-fun b!4953805 () Bool)

(assert (=> b!4953805 (= e!3095204 e!3095199)))

(declare-fun res!2113381 () Bool)

(assert (=> b!4953805 (=> (not res!2113381) (not e!3095199))))

(declare-fun isSuffix!1079 (List!57227 List!57227) Bool)

(assert (=> b!4953805 (= res!2113381 (isSuffix!1079 lt!2044469 (list!18212 totalInput!464)))))

(assert (=> b!4953805 (= lt!2044469 (list!18212 input!1342))))

(declare-fun b!4953806 () Bool)

(declare-fun res!2113375 () Bool)

(assert (=> b!4953806 (=> (not res!2113375) (not e!3095204))))

(declare-fun isEmpty!30700 (List!57228) Bool)

(assert (=> b!4953806 (= res!2113375 (not (isEmpty!30700 rulesArg!259)))))

(assert (= (and start!522076 res!2113378) b!4953804))

(assert (= (and b!4953804 res!2113382) b!4953806))

(assert (= (and b!4953806 res!2113375) b!4953805))

(assert (= (and b!4953805 res!2113381) b!4953794))

(assert (= (and b!4953794 (not res!2113380)) b!4953801))

(assert (= (and b!4953801 (not res!2113376)) b!4953797))

(assert (= (and b!4953797 (not res!2113379)) b!4953796))

(assert (= (and b!4953796 res!2113377) b!4953798))

(assert (= b!4953800 b!4953803))

(assert (= b!4953795 b!4953800))

(assert (= (and start!522076 ((_ is Cons!57104) rulesArg!259)) b!4953795))

(assert (= start!522076 b!4953802))

(assert (= start!522076 b!4953799))

(declare-fun m!5978500 () Bool)

(assert (=> b!4953794 m!5978500))

(declare-fun m!5978502 () Bool)

(assert (=> b!4953794 m!5978502))

(declare-fun m!5978504 () Bool)

(assert (=> b!4953805 m!5978504))

(assert (=> b!4953805 m!5978504))

(declare-fun m!5978506 () Bool)

(assert (=> b!4953805 m!5978506))

(declare-fun m!5978508 () Bool)

(assert (=> b!4953805 m!5978508))

(declare-fun m!5978510 () Bool)

(assert (=> b!4953798 m!5978510))

(declare-fun m!5978512 () Bool)

(assert (=> b!4953801 m!5978512))

(declare-fun m!5978514 () Bool)

(assert (=> b!4953801 m!5978514))

(declare-fun m!5978516 () Bool)

(assert (=> b!4953801 m!5978516))

(declare-fun m!5978518 () Bool)

(assert (=> b!4953801 m!5978518))

(declare-fun m!5978520 () Bool)

(assert (=> b!4953800 m!5978520))

(declare-fun m!5978522 () Bool)

(assert (=> b!4953800 m!5978522))

(declare-fun m!5978524 () Bool)

(assert (=> b!4953796 m!5978524))

(declare-fun m!5978526 () Bool)

(assert (=> b!4953796 m!5978526))

(declare-fun m!5978528 () Bool)

(assert (=> b!4953802 m!5978528))

(declare-fun m!5978530 () Bool)

(assert (=> b!4953804 m!5978530))

(declare-fun m!5978532 () Bool)

(assert (=> b!4953806 m!5978532))

(declare-fun m!5978534 () Bool)

(assert (=> b!4953799 m!5978534))

(declare-fun m!5978536 () Bool)

(assert (=> start!522076 m!5978536))

(declare-fun m!5978538 () Bool)

(assert (=> start!522076 m!5978538))

(check-sat (not b!4953801) (not b!4953805) (not b!4953804) (not b!4953796) b_and!346953 (not b_next!132891) (not b_next!132889) (not b!4953800) (not b!4953794) b_and!346951 (not b!4953799) (not b!4953795) (not start!522076) (not b!4953806) (not b!4953798) (not b!4953802))
(check-sat b_and!346951 b_and!346953 (not b_next!132889) (not b_next!132891))
