; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397830 () Bool)

(assert start!397830)

(declare-fun b!4172262 () Bool)

(declare-fun b_free!120767 () Bool)

(declare-fun b_next!121471 () Bool)

(assert (=> b!4172262 (= b_free!120767 (not b_next!121471))))

(declare-fun tp!1274763 () Bool)

(declare-fun b_and!325889 () Bool)

(assert (=> b!4172262 (= tp!1274763 b_and!325889)))

(declare-fun b_free!120769 () Bool)

(declare-fun b_next!121473 () Bool)

(assert (=> b!4172262 (= b_free!120769 (not b_next!121473))))

(declare-fun tp!1274755 () Bool)

(declare-fun b_and!325891 () Bool)

(assert (=> b!4172262 (= tp!1274755 b_and!325891)))

(declare-fun b!4172264 () Bool)

(declare-fun b_free!120771 () Bool)

(declare-fun b_next!121475 () Bool)

(assert (=> b!4172264 (= b_free!120771 (not b_next!121475))))

(declare-fun tp!1274761 () Bool)

(declare-fun b_and!325893 () Bool)

(assert (=> b!4172264 (= tp!1274761 b_and!325893)))

(declare-fun b_free!120773 () Bool)

(declare-fun b_next!121477 () Bool)

(assert (=> b!4172264 (= b_free!120773 (not b_next!121477))))

(declare-fun tp!1274752 () Bool)

(declare-fun b_and!325895 () Bool)

(assert (=> b!4172264 (= tp!1274752 b_and!325895)))

(declare-fun b!4172263 () Bool)

(declare-fun b_free!120775 () Bool)

(declare-fun b_next!121479 () Bool)

(assert (=> b!4172263 (= b_free!120775 (not b_next!121479))))

(declare-fun tp!1274764 () Bool)

(declare-fun b_and!325897 () Bool)

(assert (=> b!4172263 (= tp!1274764 b_and!325897)))

(declare-fun b_free!120777 () Bool)

(declare-fun b_next!121481 () Bool)

(assert (=> b!4172263 (= b_free!120777 (not b_next!121481))))

(declare-fun tp!1274756 () Bool)

(declare-fun b_and!325899 () Bool)

(assert (=> b!4172263 (= tp!1274756 b_and!325899)))

(declare-fun res!1709613 () Bool)

(declare-fun e!2590182 () Bool)

(assert (=> start!397830 (=> (not res!1709613) (not e!2590182))))

(declare-datatypes ((LexerInterface!7175 0))(
  ( (LexerInterfaceExt!7172 (__x!27845 Int)) (Lexer!7173) )
))
(declare-fun thiss!25986 () LexerInterface!7175)

(get-info :version)

(assert (=> start!397830 (= res!1709613 ((_ is Lexer!7173) thiss!25986))))

(assert (=> start!397830 e!2590182))

(assert (=> start!397830 true))

(declare-fun e!2590193 () Bool)

(assert (=> start!397830 e!2590193))

(declare-fun e!2590188 () Bool)

(assert (=> start!397830 e!2590188))

(declare-fun e!2590185 () Bool)

(assert (=> start!397830 e!2590185))

(declare-fun e!2590190 () Bool)

(assert (=> start!397830 e!2590190))

(declare-fun e!2590187 () Bool)

(assert (=> start!397830 e!2590187))

(declare-fun e!2590183 () Bool)

(assert (=> start!397830 e!2590183))

(declare-fun b!4172244 () Bool)

(declare-fun tp_is_empty!21937 () Bool)

(declare-fun tp!1274759 () Bool)

(assert (=> b!4172244 (= e!2590190 (and tp_is_empty!21937 tp!1274759))))

(declare-fun b!4172245 () Bool)

(declare-fun tp!1274754 () Bool)

(assert (=> b!4172245 (= e!2590187 (and tp_is_empty!21937 tp!1274754))))

(declare-datatypes ((List!45843 0))(
  ( (Nil!45719) (Cons!45719 (h!51139 (_ BitVec 16)) (t!344506 List!45843)) )
))
(declare-datatypes ((TokenValue!7812 0))(
  ( (FloatLiteralValue!15624 (text!55129 List!45843)) (TokenValueExt!7811 (__x!27846 Int)) (Broken!39060 (value!236593 List!45843)) (Object!7935) (End!7812) (Def!7812) (Underscore!7812) (Match!7812) (Else!7812) (Error!7812) (Case!7812) (If!7812) (Extends!7812) (Abstract!7812) (Class!7812) (Val!7812) (DelimiterValue!15624 (del!7872 List!45843)) (KeywordValue!7818 (value!236594 List!45843)) (CommentValue!15624 (value!236595 List!45843)) (WhitespaceValue!15624 (value!236596 List!45843)) (IndentationValue!7812 (value!236597 List!45843)) (String!52925) (Int32!7812) (Broken!39061 (value!236598 List!45843)) (Boolean!7813) (Unit!64790) (OperatorValue!7815 (op!7872 List!45843)) (IdentifierValue!15624 (value!236599 List!45843)) (IdentifierValue!15625 (value!236600 List!45843)) (WhitespaceValue!15625 (value!236601 List!45843)) (True!15624) (False!15624) (Broken!39062 (value!236602 List!45843)) (Broken!39063 (value!236603 List!45843)) (True!15625) (RightBrace!7812) (RightBracket!7812) (Colon!7812) (Null!7812) (Comma!7812) (LeftBracket!7812) (False!15625) (LeftBrace!7812) (ImaginaryLiteralValue!7812 (text!55130 List!45843)) (StringLiteralValue!23436 (value!236604 List!45843)) (EOFValue!7812 (value!236605 List!45843)) (IdentValue!7812 (value!236606 List!45843)) (DelimiterValue!15625 (value!236607 List!45843)) (DedentValue!7812 (value!236608 List!45843)) (NewLineValue!7812 (value!236609 List!45843)) (IntegerValue!23436 (value!236610 (_ BitVec 32)) (text!55131 List!45843)) (IntegerValue!23437 (value!236611 Int) (text!55132 List!45843)) (Times!7812) (Or!7812) (Equal!7812) (Minus!7812) (Broken!39064 (value!236612 List!45843)) (And!7812) (Div!7812) (LessEqual!7812) (Mod!7812) (Concat!20299) (Not!7812) (Plus!7812) (SpaceValue!7812 (value!236613 List!45843)) (IntegerValue!23438 (value!236614 Int) (text!55133 List!45843)) (StringLiteralValue!23437 (text!55134 List!45843)) (FloatLiteralValue!15625 (text!55135 List!45843)) (BytesLiteralValue!7812 (value!236615 List!45843)) (CommentValue!15625 (value!236616 List!45843)) (StringLiteralValue!23438 (value!236617 List!45843)) (ErrorTokenValue!7812 (msg!7873 List!45843)) )
))
(declare-datatypes ((C!25164 0))(
  ( (C!25165 (val!14744 Int)) )
))
(declare-datatypes ((List!45844 0))(
  ( (Nil!45720) (Cons!45720 (h!51140 C!25164) (t!344507 List!45844)) )
))
(declare-datatypes ((IArray!27591 0))(
  ( (IArray!27592 (innerList!13853 List!45844)) )
))
(declare-datatypes ((Conc!13793 0))(
  ( (Node!13793 (left!34078 Conc!13793) (right!34408 Conc!13793) (csize!27816 Int) (cheight!14004 Int)) (Leaf!21327 (xs!17099 IArray!27591) (csize!27817 Int)) (Empty!13793) )
))
(declare-datatypes ((BalanceConc!27180 0))(
  ( (BalanceConc!27181 (c!713110 Conc!13793)) )
))
(declare-datatypes ((Regex!12487 0))(
  ( (ElementMatch!12487 (c!713111 C!25164)) (Concat!20300 (regOne!25486 Regex!12487) (regTwo!25486 Regex!12487)) (EmptyExpr!12487) (Star!12487 (reg!12816 Regex!12487)) (EmptyLang!12487) (Union!12487 (regOne!25487 Regex!12487) (regTwo!25487 Regex!12487)) )
))
(declare-datatypes ((String!52926 0))(
  ( (String!52927 (value!236618 String)) )
))
(declare-datatypes ((TokenValueInjection!15052 0))(
  ( (TokenValueInjection!15053 (toValue!10266 Int) (toChars!10125 Int)) )
))
(declare-datatypes ((Rule!14964 0))(
  ( (Rule!14965 (regex!7582 Regex!12487) (tag!8446 String!52926) (isSeparator!7582 Bool) (transformation!7582 TokenValueInjection!15052)) )
))
(declare-datatypes ((List!45845 0))(
  ( (Nil!45721) (Cons!45721 (h!51141 Rule!14964) (t!344508 List!45845)) )
))
(declare-fun rules!3843 () List!45845)

(declare-fun e!2590189 () Bool)

(declare-fun tp!1274758 () Bool)

(declare-fun e!2590192 () Bool)

(declare-fun b!4172246 () Bool)

(declare-fun inv!60252 (String!52926) Bool)

(declare-fun inv!60254 (TokenValueInjection!15052) Bool)

(assert (=> b!4172246 (= e!2590192 (and tp!1274758 (inv!60252 (tag!8446 (h!51141 rules!3843))) (inv!60254 (transformation!7582 (h!51141 rules!3843))) e!2590189))))

(declare-fun b!4172247 () Bool)

(declare-fun res!1709621 () Bool)

(assert (=> b!4172247 (=> (not res!1709621) (not e!2590182))))

(declare-fun isEmpty!27047 (List!45845) Bool)

(assert (=> b!4172247 (= res!1709621 (not (isEmpty!27047 rules!3843)))))

(declare-fun b!4172248 () Bool)

(declare-fun e!2590186 () Bool)

(declare-fun r!4142 () Rule!14964)

(declare-fun tp!1274762 () Bool)

(assert (=> b!4172248 (= e!2590188 (and tp!1274762 (inv!60252 (tag!8446 r!4142)) (inv!60254 (transformation!7582 r!4142)) e!2590186))))

(declare-fun b!4172249 () Bool)

(declare-fun tp!1274757 () Bool)

(assert (=> b!4172249 (= e!2590183 (and tp_is_empty!21937 tp!1274757))))

(declare-fun b!4172250 () Bool)

(declare-fun res!1709624 () Bool)

(assert (=> b!4172250 (=> (not res!1709624) (not e!2590182))))

(declare-fun ruleValid!3300 (LexerInterface!7175 Rule!14964) Bool)

(assert (=> b!4172250 (= res!1709624 (ruleValid!3300 thiss!25986 r!4142))))

(declare-fun b!4172251 () Bool)

(declare-fun res!1709622 () Bool)

(assert (=> b!4172251 (=> (not res!1709622) (not e!2590182))))

(declare-fun rulesInvariant!6388 (LexerInterface!7175 List!45845) Bool)

(assert (=> b!4172251 (= res!1709622 (rulesInvariant!6388 thiss!25986 rules!3843))))

(declare-fun b!4172252 () Bool)

(declare-fun res!1709623 () Bool)

(assert (=> b!4172252 (=> (not res!1709623) (not e!2590182))))

(declare-fun rBis!167 () Rule!14964)

(declare-fun contains!9385 (List!45845 Rule!14964) Bool)

(assert (=> b!4172252 (= res!1709623 (contains!9385 rules!3843 rBis!167))))

(declare-fun b!4172253 () Bool)

(declare-fun res!1709617 () Bool)

(declare-fun e!2590191 () Bool)

(assert (=> b!4172253 (=> res!1709617 e!2590191)))

(declare-fun pBis!107 () List!45844)

(declare-fun lt!1485720 () Int)

(declare-fun size!33561 (List!45844) Int)

(assert (=> b!4172253 (= res!1709617 (<= (size!33561 pBis!107) lt!1485720))))

(declare-fun b!4172254 () Bool)

(declare-fun tp!1274760 () Bool)

(assert (=> b!4172254 (= e!2590185 (and e!2590192 tp!1274760))))

(declare-fun b!4172255 () Bool)

(declare-fun res!1709612 () Bool)

(assert (=> b!4172255 (=> (not res!1709612) (not e!2590182))))

(declare-fun validRegex!5604 (Regex!12487) Bool)

(assert (=> b!4172255 (= res!1709612 (validRegex!5604 (regex!7582 r!4142)))))

(declare-fun b!4172256 () Bool)

(declare-fun res!1709616 () Bool)

(assert (=> b!4172256 (=> res!1709616 e!2590191)))

(assert (=> b!4172256 (= res!1709616 (not (ruleValid!3300 thiss!25986 rBis!167)))))

(declare-fun b!4172257 () Bool)

(declare-fun e!2590180 () Bool)

(declare-fun tp!1274753 () Bool)

(assert (=> b!4172257 (= e!2590193 (and tp!1274753 (inv!60252 (tag!8446 rBis!167)) (inv!60254 (transformation!7582 rBis!167)) e!2590180))))

(declare-fun b!4172258 () Bool)

(declare-fun res!1709620 () Bool)

(assert (=> b!4172258 (=> (not res!1709620) (not e!2590182))))

(declare-fun p!2959 () List!45844)

(declare-fun matchR!6226 (Regex!12487 List!45844) Bool)

(assert (=> b!4172258 (= res!1709620 (matchR!6226 (regex!7582 r!4142) p!2959))))

(declare-fun b!4172259 () Bool)

(declare-fun res!1709619 () Bool)

(assert (=> b!4172259 (=> (not res!1709619) (not e!2590182))))

(declare-fun input!3342 () List!45844)

(declare-fun isPrefix!4439 (List!45844 List!45844) Bool)

(assert (=> b!4172259 (= res!1709619 (isPrefix!4439 pBis!107 input!3342))))

(declare-fun b!4172260 () Bool)

(declare-fun res!1709618 () Bool)

(assert (=> b!4172260 (=> (not res!1709618) (not e!2590182))))

(assert (=> b!4172260 (= res!1709618 (contains!9385 rules!3843 r!4142))))

(declare-fun b!4172261 () Bool)

(assert (=> b!4172261 (= e!2590182 (not e!2590191))))

(declare-fun res!1709615 () Bool)

(assert (=> b!4172261 (=> res!1709615 e!2590191)))

(declare-fun lt!1485719 () TokenValue!7812)

(declare-datatypes ((Token!13878 0))(
  ( (Token!13879 (value!236619 TokenValue!7812) (rule!10630 Rule!14964) (size!33562 Int) (originalCharacters!7970 List!45844)) )
))
(declare-datatypes ((tuple2!43578 0))(
  ( (tuple2!43579 (_1!24923 Token!13878) (_2!24923 List!45844)) )
))
(declare-datatypes ((Option!9778 0))(
  ( (None!9777) (Some!9777 (v!40571 tuple2!43578)) )
))
(declare-fun maxPrefixOneRule!3186 (LexerInterface!7175 Rule!14964 List!45844) Option!9778)

(declare-fun getSuffix!2734 (List!45844 List!45844) List!45844)

(assert (=> b!4172261 (= res!1709615 (not (= (maxPrefixOneRule!3186 thiss!25986 r!4142 input!3342) (Some!9777 (tuple2!43579 (Token!13879 lt!1485719 r!4142 lt!1485720 p!2959) (getSuffix!2734 input!3342 p!2959))))))))

(assert (=> b!4172261 (= lt!1485720 (size!33561 p!2959))))

(declare-fun lt!1485716 () BalanceConc!27180)

(declare-fun apply!10547 (TokenValueInjection!15052 BalanceConc!27180) TokenValue!7812)

(assert (=> b!4172261 (= lt!1485719 (apply!10547 (transformation!7582 r!4142) lt!1485716))))

(assert (=> b!4172261 (isPrefix!4439 input!3342 input!3342)))

(declare-datatypes ((Unit!64791 0))(
  ( (Unit!64792) )
))
(declare-fun lt!1485717 () Unit!64791)

(declare-fun lemmaIsPrefixRefl!2868 (List!45844 List!45844) Unit!64791)

(assert (=> b!4172261 (= lt!1485717 (lemmaIsPrefixRefl!2868 input!3342 input!3342))))

(declare-fun lt!1485718 () Unit!64791)

(declare-fun lemmaSemiInverse!2348 (TokenValueInjection!15052 BalanceConc!27180) Unit!64791)

(assert (=> b!4172261 (= lt!1485718 (lemmaSemiInverse!2348 (transformation!7582 r!4142) lt!1485716))))

(declare-fun seqFromList!5607 (List!45844) BalanceConc!27180)

(assert (=> b!4172261 (= lt!1485716 (seqFromList!5607 p!2959))))

(assert (=> b!4172262 (= e!2590180 (and tp!1274763 tp!1274755))))

(assert (=> b!4172263 (= e!2590189 (and tp!1274764 tp!1274756))))

(assert (=> b!4172264 (= e!2590186 (and tp!1274761 tp!1274752))))

(declare-fun b!4172265 () Bool)

(declare-fun res!1709614 () Bool)

(assert (=> b!4172265 (=> (not res!1709614) (not e!2590182))))

(assert (=> b!4172265 (= res!1709614 (isPrefix!4439 p!2959 input!3342))))

(declare-fun b!4172266 () Bool)

(assert (=> b!4172266 (= e!2590191 true)))

(declare-fun lt!1485715 () Bool)

(declare-fun rulesValidInductive!2794 (LexerInterface!7175 List!45845) Bool)

(assert (=> b!4172266 (= lt!1485715 (rulesValidInductive!2794 thiss!25986 rules!3843))))

(assert (= (and start!397830 res!1709613) b!4172265))

(assert (= (and b!4172265 res!1709614) b!4172259))

(assert (= (and b!4172259 res!1709619) b!4172247))

(assert (= (and b!4172247 res!1709621) b!4172251))

(assert (= (and b!4172251 res!1709622) b!4172260))

(assert (= (and b!4172260 res!1709618) b!4172252))

(assert (= (and b!4172252 res!1709623) b!4172255))

(assert (= (and b!4172255 res!1709612) b!4172258))

(assert (= (and b!4172258 res!1709620) b!4172250))

(assert (= (and b!4172250 res!1709624) b!4172261))

(assert (= (and b!4172261 (not res!1709615)) b!4172253))

(assert (= (and b!4172253 (not res!1709617)) b!4172256))

(assert (= (and b!4172256 (not res!1709616)) b!4172266))

(assert (= b!4172257 b!4172262))

(assert (= start!397830 b!4172257))

(assert (= b!4172248 b!4172264))

(assert (= start!397830 b!4172248))

(assert (= b!4172246 b!4172263))

(assert (= b!4172254 b!4172246))

(assert (= (and start!397830 ((_ is Cons!45721) rules!3843)) b!4172254))

(assert (= (and start!397830 ((_ is Cons!45720) input!3342)) b!4172244))

(assert (= (and start!397830 ((_ is Cons!45720) pBis!107)) b!4172245))

(assert (= (and start!397830 ((_ is Cons!45720) p!2959)) b!4172249))

(declare-fun m!4762507 () Bool)

(assert (=> b!4172266 m!4762507))

(declare-fun m!4762509 () Bool)

(assert (=> b!4172259 m!4762509))

(declare-fun m!4762511 () Bool)

(assert (=> b!4172250 m!4762511))

(declare-fun m!4762513 () Bool)

(assert (=> b!4172260 m!4762513))

(declare-fun m!4762515 () Bool)

(assert (=> b!4172248 m!4762515))

(declare-fun m!4762517 () Bool)

(assert (=> b!4172248 m!4762517))

(declare-fun m!4762519 () Bool)

(assert (=> b!4172257 m!4762519))

(declare-fun m!4762521 () Bool)

(assert (=> b!4172257 m!4762521))

(declare-fun m!4762523 () Bool)

(assert (=> b!4172261 m!4762523))

(declare-fun m!4762525 () Bool)

(assert (=> b!4172261 m!4762525))

(declare-fun m!4762527 () Bool)

(assert (=> b!4172261 m!4762527))

(declare-fun m!4762529 () Bool)

(assert (=> b!4172261 m!4762529))

(declare-fun m!4762531 () Bool)

(assert (=> b!4172261 m!4762531))

(declare-fun m!4762533 () Bool)

(assert (=> b!4172261 m!4762533))

(declare-fun m!4762535 () Bool)

(assert (=> b!4172261 m!4762535))

(declare-fun m!4762537 () Bool)

(assert (=> b!4172261 m!4762537))

(declare-fun m!4762539 () Bool)

(assert (=> b!4172252 m!4762539))

(declare-fun m!4762541 () Bool)

(assert (=> b!4172246 m!4762541))

(declare-fun m!4762543 () Bool)

(assert (=> b!4172246 m!4762543))

(declare-fun m!4762545 () Bool)

(assert (=> b!4172247 m!4762545))

(declare-fun m!4762547 () Bool)

(assert (=> b!4172251 m!4762547))

(declare-fun m!4762549 () Bool)

(assert (=> b!4172253 m!4762549))

(declare-fun m!4762551 () Bool)

(assert (=> b!4172258 m!4762551))

(declare-fun m!4762553 () Bool)

(assert (=> b!4172256 m!4762553))

(declare-fun m!4762555 () Bool)

(assert (=> b!4172255 m!4762555))

(declare-fun m!4762557 () Bool)

(assert (=> b!4172265 m!4762557))

(check-sat (not b_next!121473) (not b_next!121475) (not b!4172259) (not b!4172244) (not b!4172245) (not b!4172253) b_and!325893 (not b!4172256) (not b!4172255) (not b!4172266) (not b!4172257) tp_is_empty!21937 b_and!325899 (not b!4172261) (not b!4172252) (not b!4172246) (not b!4172250) b_and!325889 (not b!4172254) (not b!4172265) (not b!4172258) (not b!4172248) b_and!325895 (not b!4172260) (not b!4172247) b_and!325897 (not b!4172249) (not b_next!121481) (not b_next!121471) (not b_next!121479) (not b!4172251) b_and!325891 (not b_next!121477))
(check-sat (not b_next!121473) (not b_next!121475) b_and!325899 b_and!325889 b_and!325895 b_and!325893 b_and!325897 (not b_next!121479) (not b_next!121481) (not b_next!121471) b_and!325891 (not b_next!121477))
