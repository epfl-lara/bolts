; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396534 () Bool)

(assert start!396534)

(declare-fun b!4161324 () Bool)

(declare-fun b_free!119819 () Bool)

(declare-fun b_next!120523 () Bool)

(assert (=> b!4161324 (= b_free!119819 (not b_next!120523))))

(declare-fun tp!1270071 () Bool)

(declare-fun b_and!324181 () Bool)

(assert (=> b!4161324 (= tp!1270071 b_and!324181)))

(declare-fun b_free!119821 () Bool)

(declare-fun b_next!120525 () Bool)

(assert (=> b!4161324 (= b_free!119821 (not b_next!120525))))

(declare-fun tp!1270067 () Bool)

(declare-fun b_and!324183 () Bool)

(assert (=> b!4161324 (= tp!1270067 b_and!324183)))

(declare-fun b!4161330 () Bool)

(declare-fun b_free!119823 () Bool)

(declare-fun b_next!120527 () Bool)

(assert (=> b!4161330 (= b_free!119823 (not b_next!120527))))

(declare-fun tp!1270069 () Bool)

(declare-fun b_and!324185 () Bool)

(assert (=> b!4161330 (= tp!1270069 b_and!324185)))

(declare-fun b_free!119825 () Bool)

(declare-fun b_next!120529 () Bool)

(assert (=> b!4161330 (= b_free!119825 (not b_next!120529))))

(declare-fun tp!1270070 () Bool)

(declare-fun b_and!324187 () Bool)

(assert (=> b!4161330 (= tp!1270070 b_and!324187)))

(declare-fun e!2583045 () Bool)

(declare-fun tp!1270073 () Bool)

(declare-fun e!2583040 () Bool)

(declare-fun b!4161323 () Bool)

(declare-datatypes ((List!45610 0))(
  ( (Nil!45486) (Cons!45486 (h!50906 (_ BitVec 16)) (t!343641 List!45610)) )
))
(declare-datatypes ((TokenValue!7744 0))(
  ( (FloatLiteralValue!15488 (text!54653 List!45610)) (TokenValueExt!7743 (__x!27707 Int)) (Broken!38720 (value!234683 List!45610)) (Object!7867) (End!7744) (Def!7744) (Underscore!7744) (Match!7744) (Else!7744) (Error!7744) (Case!7744) (If!7744) (Extends!7744) (Abstract!7744) (Class!7744) (Val!7744) (DelimiterValue!15488 (del!7804 List!45610)) (KeywordValue!7750 (value!234684 List!45610)) (CommentValue!15488 (value!234685 List!45610)) (WhitespaceValue!15488 (value!234686 List!45610)) (IndentationValue!7744 (value!234687 List!45610)) (String!52581) (Int32!7744) (Broken!38721 (value!234688 List!45610)) (Boolean!7745) (Unit!64592) (OperatorValue!7747 (op!7804 List!45610)) (IdentifierValue!15488 (value!234689 List!45610)) (IdentifierValue!15489 (value!234690 List!45610)) (WhitespaceValue!15489 (value!234691 List!45610)) (True!15488) (False!15488) (Broken!38722 (value!234692 List!45610)) (Broken!38723 (value!234693 List!45610)) (True!15489) (RightBrace!7744) (RightBracket!7744) (Colon!7744) (Null!7744) (Comma!7744) (LeftBracket!7744) (False!15489) (LeftBrace!7744) (ImaginaryLiteralValue!7744 (text!54654 List!45610)) (StringLiteralValue!23232 (value!234694 List!45610)) (EOFValue!7744 (value!234695 List!45610)) (IdentValue!7744 (value!234696 List!45610)) (DelimiterValue!15489 (value!234697 List!45610)) (DedentValue!7744 (value!234698 List!45610)) (NewLineValue!7744 (value!234699 List!45610)) (IntegerValue!23232 (value!234700 (_ BitVec 32)) (text!54655 List!45610)) (IntegerValue!23233 (value!234701 Int) (text!54656 List!45610)) (Times!7744) (Or!7744) (Equal!7744) (Minus!7744) (Broken!38724 (value!234702 List!45610)) (And!7744) (Div!7744) (LessEqual!7744) (Mod!7744) (Concat!20163) (Not!7744) (Plus!7744) (SpaceValue!7744 (value!234703 List!45610)) (IntegerValue!23234 (value!234704 Int) (text!54657 List!45610)) (StringLiteralValue!23233 (text!54658 List!45610)) (FloatLiteralValue!15489 (text!54659 List!45610)) (BytesLiteralValue!7744 (value!234705 List!45610)) (CommentValue!15489 (value!234706 List!45610)) (StringLiteralValue!23234 (value!234707 List!45610)) (ErrorTokenValue!7744 (msg!7805 List!45610)) )
))
(declare-datatypes ((C!25024 0))(
  ( (C!25025 (val!14674 Int)) )
))
(declare-datatypes ((Regex!12419 0))(
  ( (ElementMatch!12419 (c!711932 C!25024)) (Concat!20164 (regOne!25350 Regex!12419) (regTwo!25350 Regex!12419)) (EmptyExpr!12419) (Star!12419 (reg!12748 Regex!12419)) (EmptyLang!12419) (Union!12419 (regOne!25351 Regex!12419) (regTwo!25351 Regex!12419)) )
))
(declare-datatypes ((String!52582 0))(
  ( (String!52583 (value!234708 String)) )
))
(declare-datatypes ((List!45611 0))(
  ( (Nil!45487) (Cons!45487 (h!50907 C!25024) (t!343642 List!45611)) )
))
(declare-datatypes ((IArray!27455 0))(
  ( (IArray!27456 (innerList!13785 List!45611)) )
))
(declare-datatypes ((Conc!13725 0))(
  ( (Node!13725 (left!33931 Conc!13725) (right!34261 Conc!13725) (csize!27680 Int) (cheight!13936 Int)) (Leaf!21224 (xs!17031 IArray!27455) (csize!27681 Int)) (Empty!13725) )
))
(declare-datatypes ((BalanceConc!27044 0))(
  ( (BalanceConc!27045 (c!711933 Conc!13725)) )
))
(declare-datatypes ((TokenValueInjection!14916 0))(
  ( (TokenValueInjection!14917 (toValue!10178 Int) (toChars!10037 Int)) )
))
(declare-datatypes ((Rule!14828 0))(
  ( (Rule!14829 (regex!7514 Regex!12419) (tag!8378 String!52582) (isSeparator!7514 Bool) (transformation!7514 TokenValueInjection!14916)) )
))
(declare-datatypes ((List!45612 0))(
  ( (Nil!45488) (Cons!45488 (h!50908 Rule!14828) (t!343643 List!45612)) )
))
(declare-fun rules!4132 () List!45612)

(declare-fun inv!60011 (String!52582) Bool)

(declare-fun inv!60013 (TokenValueInjection!14916) Bool)

(assert (=> b!4161323 (= e!2583040 (and tp!1270073 (inv!60011 (tag!8378 (h!50908 rules!4132))) (inv!60013 (transformation!7514 (h!50908 rules!4132))) e!2583045))))

(assert (=> b!4161324 (= e!2583045 (and tp!1270071 tp!1270067))))

(declare-fun b!4161325 () Bool)

(declare-fun e!2583049 () Bool)

(declare-fun tp!1270072 () Bool)

(assert (=> b!4161325 (= e!2583049 (and e!2583040 tp!1270072))))

(declare-fun b!4161326 () Bool)

(declare-fun res!1704653 () Bool)

(declare-fun e!2583048 () Bool)

(assert (=> b!4161326 (=> (not res!1704653) (not e!2583048))))

(declare-fun r!4395 () Rule!14828)

(get-info :version)

(assert (=> b!4161326 (= res!1704653 (and (not ((_ is Nil!45488) rules!4132)) (not (= (h!50908 rules!4132) r!4395))))))

(declare-fun res!1704650 () Bool)

(assert (=> start!396534 (=> (not res!1704650) (not e!2583048))))

(declare-datatypes ((LexerInterface!7105 0))(
  ( (LexerInterfaceExt!7102 (__x!27708 Int)) (Lexer!7103) )
))
(declare-fun thiss!27036 () LexerInterface!7105)

(assert (=> start!396534 (= res!1704650 ((_ is Lexer!7103) thiss!27036))))

(assert (=> start!396534 e!2583048))

(declare-fun e!2583042 () Bool)

(assert (=> start!396534 e!2583042))

(declare-fun e!2583043 () Bool)

(assert (=> start!396534 e!2583043))

(declare-fun tag!272 () String!52582)

(assert (=> start!396534 (inv!60011 tag!272)))

(assert (=> start!396534 true))

(assert (=> start!396534 e!2583049))

(declare-fun b!4161327 () Bool)

(declare-fun res!1704651 () Bool)

(declare-fun e!2583039 () Bool)

(assert (=> b!4161327 (=> (not res!1704651) (not e!2583039))))

(declare-datatypes ((List!45613 0))(
  ( (Nil!45489) (Cons!45489 (h!50909 String!52582) (t!343644 List!45613)) )
))
(declare-fun lt!1482921 () List!45613)

(declare-fun noDuplicateTag!3091 (LexerInterface!7105 List!45612 List!45613) Bool)

(assert (=> b!4161327 (= res!1704651 (noDuplicateTag!3091 thiss!27036 (t!343643 rules!4132) lt!1482921))))

(declare-fun b!4161328 () Bool)

(declare-fun res!1704654 () Bool)

(assert (=> b!4161328 (=> (not res!1704654) (not e!2583048))))

(declare-fun contains!9306 (List!45612 Rule!14828) Bool)

(assert (=> b!4161328 (= res!1704654 (contains!9306 rules!4132 r!4395))))

(declare-fun b!4161329 () Bool)

(assert (=> b!4161329 (= e!2583039 (not true))))

(assert (=> b!4161329 (not (= (tag!8378 r!4395) tag!272))))

(declare-datatypes ((Unit!64593 0))(
  ( (Unit!64594) )
))
(declare-fun lt!1482922 () Unit!64593)

(declare-fun lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!16 (LexerInterface!7105 List!45612 Rule!14828 String!52582 List!45613) Unit!64593)

(assert (=> b!4161329 (= lt!1482922 (lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!16 thiss!27036 (t!343643 rules!4132) r!4395 tag!272 lt!1482921))))

(declare-fun e!2583050 () Bool)

(assert (=> b!4161330 (= e!2583050 (and tp!1270069 tp!1270070))))

(declare-fun b!4161331 () Bool)

(declare-fun res!1704649 () Bool)

(assert (=> b!4161331 (=> (not res!1704649) (not e!2583048))))

(declare-fun acc!617 () List!45613)

(declare-fun contains!9307 (List!45613 String!52582) Bool)

(assert (=> b!4161331 (= res!1704649 (contains!9307 acc!617 tag!272))))

(declare-fun b!4161332 () Bool)

(declare-fun tp!1270074 () Bool)

(assert (=> b!4161332 (= e!2583043 (and (inv!60011 (h!50909 acc!617)) tp!1270074))))

(declare-fun b!4161333 () Bool)

(declare-fun res!1704656 () Bool)

(assert (=> b!4161333 (=> (not res!1704656) (not e!2583039))))

(assert (=> b!4161333 (= res!1704656 (contains!9306 (t!343643 rules!4132) r!4395))))

(declare-fun b!4161334 () Bool)

(declare-fun res!1704655 () Bool)

(assert (=> b!4161334 (=> (not res!1704655) (not e!2583048))))

(assert (=> b!4161334 (= res!1704655 (noDuplicateTag!3091 thiss!27036 rules!4132 acc!617))))

(declare-fun b!4161335 () Bool)

(assert (=> b!4161335 (= e!2583048 e!2583039)))

(declare-fun res!1704652 () Bool)

(assert (=> b!4161335 (=> (not res!1704652) (not e!2583039))))

(assert (=> b!4161335 (= res!1704652 (contains!9307 lt!1482921 tag!272))))

(assert (=> b!4161335 (= lt!1482921 (Cons!45489 (tag!8378 (h!50908 rules!4132)) acc!617))))

(declare-fun b!4161336 () Bool)

(declare-fun tp!1270068 () Bool)

(assert (=> b!4161336 (= e!2583042 (and tp!1270068 (inv!60011 (tag!8378 r!4395)) (inv!60013 (transformation!7514 r!4395)) e!2583050))))

(assert (= (and start!396534 res!1704650) b!4161331))

(assert (= (and b!4161331 res!1704649) b!4161334))

(assert (= (and b!4161334 res!1704655) b!4161328))

(assert (= (and b!4161328 res!1704654) b!4161326))

(assert (= (and b!4161326 res!1704653) b!4161335))

(assert (= (and b!4161335 res!1704652) b!4161327))

(assert (= (and b!4161327 res!1704651) b!4161333))

(assert (= (and b!4161333 res!1704656) b!4161329))

(assert (= b!4161336 b!4161330))

(assert (= start!396534 b!4161336))

(assert (= (and start!396534 ((_ is Cons!45489) acc!617)) b!4161332))

(assert (= b!4161323 b!4161324))

(assert (= b!4161325 b!4161323))

(assert (= (and start!396534 ((_ is Cons!45488) rules!4132)) b!4161325))

(declare-fun m!4754313 () Bool)

(assert (=> b!4161329 m!4754313))

(declare-fun m!4754315 () Bool)

(assert (=> b!4161333 m!4754315))

(declare-fun m!4754317 () Bool)

(assert (=> b!4161334 m!4754317))

(declare-fun m!4754319 () Bool)

(assert (=> b!4161335 m!4754319))

(declare-fun m!4754321 () Bool)

(assert (=> b!4161327 m!4754321))

(declare-fun m!4754323 () Bool)

(assert (=> start!396534 m!4754323))

(declare-fun m!4754325 () Bool)

(assert (=> b!4161323 m!4754325))

(declare-fun m!4754327 () Bool)

(assert (=> b!4161323 m!4754327))

(declare-fun m!4754329 () Bool)

(assert (=> b!4161332 m!4754329))

(declare-fun m!4754331 () Bool)

(assert (=> b!4161328 m!4754331))

(declare-fun m!4754333 () Bool)

(assert (=> b!4161336 m!4754333))

(declare-fun m!4754335 () Bool)

(assert (=> b!4161336 m!4754335))

(declare-fun m!4754337 () Bool)

(assert (=> b!4161331 m!4754337))

(check-sat (not b!4161327) (not b_next!120523) b_and!324187 (not b!4161329) (not b!4161335) (not b!4161336) b_and!324181 (not b!4161333) b_and!324183 (not start!396534) (not b_next!120527) (not b!4161328) (not b!4161323) (not b_next!120525) b_and!324185 (not b_next!120529) (not b!4161331) (not b!4161334) (not b!4161332) (not b!4161325))
(check-sat (not b_next!120527) (not b_next!120525) (not b_next!120523) b_and!324187 b_and!324181 b_and!324183 b_and!324185 (not b_next!120529))
