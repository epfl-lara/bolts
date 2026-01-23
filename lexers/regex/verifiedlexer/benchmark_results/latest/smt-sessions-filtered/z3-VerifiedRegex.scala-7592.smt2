; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401182 () Bool)

(assert start!401182)

(declare-fun b!4199543 () Bool)

(declare-fun b_free!122439 () Bool)

(declare-fun b_next!123143 () Bool)

(assert (=> b!4199543 (= b_free!122439 (not b_next!123143))))

(declare-fun tp!1282760 () Bool)

(declare-fun b_and!329493 () Bool)

(assert (=> b!4199543 (= tp!1282760 b_and!329493)))

(declare-fun b_free!122441 () Bool)

(declare-fun b_next!123145 () Bool)

(assert (=> b!4199543 (= b_free!122441 (not b_next!123145))))

(declare-fun tp!1282762 () Bool)

(declare-fun b_and!329495 () Bool)

(assert (=> b!4199543 (= tp!1282762 b_and!329495)))

(declare-fun b!4199527 () Bool)

(declare-fun b_free!122443 () Bool)

(declare-fun b_next!123147 () Bool)

(assert (=> b!4199527 (= b_free!122443 (not b_next!123147))))

(declare-fun tp!1282759 () Bool)

(declare-fun b_and!329497 () Bool)

(assert (=> b!4199527 (= tp!1282759 b_and!329497)))

(declare-fun b_free!122445 () Bool)

(declare-fun b_next!123149 () Bool)

(assert (=> b!4199527 (= b_free!122445 (not b_next!123149))))

(declare-fun tp!1282761 () Bool)

(declare-fun b_and!329499 () Bool)

(assert (=> b!4199527 (= tp!1282761 b_and!329499)))

(declare-fun b!4199541 () Bool)

(declare-fun b_free!122447 () Bool)

(declare-fun b_next!123151 () Bool)

(assert (=> b!4199541 (= b_free!122447 (not b_next!123151))))

(declare-fun tp!1282758 () Bool)

(declare-fun b_and!329501 () Bool)

(assert (=> b!4199541 (= tp!1282758 b_and!329501)))

(declare-fun b_free!122449 () Bool)

(declare-fun b_next!123153 () Bool)

(assert (=> b!4199541 (= b_free!122449 (not b_next!123153))))

(declare-fun tp!1282754 () Bool)

(declare-fun b_and!329503 () Bool)

(assert (=> b!4199541 (= tp!1282754 b_and!329503)))

(declare-fun b!4199523 () Bool)

(declare-fun res!1724635 () Bool)

(declare-fun e!2606788 () Bool)

(assert (=> b!4199523 (=> (not res!1724635) (not e!2606788))))

(declare-datatypes ((List!46253 0))(
  ( (Nil!46129) (Cons!46129 (h!51549 (_ BitVec 16)) (t!346758 List!46253)) )
))
(declare-datatypes ((TokenValue!7930 0))(
  ( (FloatLiteralValue!15860 (text!55955 List!46253)) (TokenValueExt!7929 (__x!28081 Int)) (Broken!39650 (value!239956 List!46253)) (Object!8053) (End!7930) (Def!7930) (Underscore!7930) (Match!7930) (Else!7930) (Error!7930) (Case!7930) (If!7930) (Extends!7930) (Abstract!7930) (Class!7930) (Val!7930) (DelimiterValue!15860 (del!7990 List!46253)) (KeywordValue!7936 (value!239957 List!46253)) (CommentValue!15860 (value!239958 List!46253)) (WhitespaceValue!15860 (value!239959 List!46253)) (IndentationValue!7930 (value!239960 List!46253)) (String!53515) (Int32!7930) (Broken!39651 (value!239961 List!46253)) (Boolean!7931) (Unit!65240) (OperatorValue!7933 (op!7990 List!46253)) (IdentifierValue!15860 (value!239962 List!46253)) (IdentifierValue!15861 (value!239963 List!46253)) (WhitespaceValue!15861 (value!239964 List!46253)) (True!15860) (False!15860) (Broken!39652 (value!239965 List!46253)) (Broken!39653 (value!239966 List!46253)) (True!15861) (RightBrace!7930) (RightBracket!7930) (Colon!7930) (Null!7930) (Comma!7930) (LeftBracket!7930) (False!15861) (LeftBrace!7930) (ImaginaryLiteralValue!7930 (text!55956 List!46253)) (StringLiteralValue!23790 (value!239967 List!46253)) (EOFValue!7930 (value!239968 List!46253)) (IdentValue!7930 (value!239969 List!46253)) (DelimiterValue!15861 (value!239970 List!46253)) (DedentValue!7930 (value!239971 List!46253)) (NewLineValue!7930 (value!239972 List!46253)) (IntegerValue!23790 (value!239973 (_ BitVec 32)) (text!55957 List!46253)) (IntegerValue!23791 (value!239974 Int) (text!55958 List!46253)) (Times!7930) (Or!7930) (Equal!7930) (Minus!7930) (Broken!39654 (value!239975 List!46253)) (And!7930) (Div!7930) (LessEqual!7930) (Mod!7930) (Concat!20535) (Not!7930) (Plus!7930) (SpaceValue!7930 (value!239976 List!46253)) (IntegerValue!23792 (value!239977 Int) (text!55959 List!46253)) (StringLiteralValue!23791 (text!55960 List!46253)) (FloatLiteralValue!15861 (text!55961 List!46253)) (BytesLiteralValue!7930 (value!239978 List!46253)) (CommentValue!15861 (value!239979 List!46253)) (StringLiteralValue!23792 (value!239980 List!46253)) (ErrorTokenValue!7930 (msg!7991 List!46253)) )
))
(declare-datatypes ((String!53516 0))(
  ( (String!53517 (value!239981 String)) )
))
(declare-datatypes ((C!25400 0))(
  ( (C!25401 (val!14862 Int)) )
))
(declare-datatypes ((List!46254 0))(
  ( (Nil!46130) (Cons!46130 (h!51550 C!25400) (t!346759 List!46254)) )
))
(declare-datatypes ((IArray!27827 0))(
  ( (IArray!27828 (innerList!13971 List!46254)) )
))
(declare-datatypes ((Conc!13911 0))(
  ( (Node!13911 (left!34367 Conc!13911) (right!34697 Conc!13911) (csize!28052 Int) (cheight!14122 Int)) (Leaf!21504 (xs!17217 IArray!27827) (csize!28053 Int)) (Empty!13911) )
))
(declare-datatypes ((BalanceConc!27416 0))(
  ( (BalanceConc!27417 (c!716148 Conc!13911)) )
))
(declare-datatypes ((Regex!12605 0))(
  ( (ElementMatch!12605 (c!716149 C!25400)) (Concat!20536 (regOne!25722 Regex!12605) (regTwo!25722 Regex!12605)) (EmptyExpr!12605) (Star!12605 (reg!12934 Regex!12605)) (EmptyLang!12605) (Union!12605 (regOne!25723 Regex!12605) (regTwo!25723 Regex!12605)) )
))
(declare-datatypes ((TokenValueInjection!15288 0))(
  ( (TokenValueInjection!15289 (toValue!10400 Int) (toChars!10259 Int)) )
))
(declare-datatypes ((Rule!15200 0))(
  ( (Rule!15201 (regex!7700 Regex!12605) (tag!8564 String!53516) (isSeparator!7700 Bool) (transformation!7700 TokenValueInjection!15288)) )
))
(declare-datatypes ((List!46255 0))(
  ( (Nil!46131) (Cons!46131 (h!51551 Rule!15200) (t!346760 List!46255)) )
))
(declare-fun rules!3843 () List!46255)

(declare-fun isEmpty!27324 (List!46255) Bool)

(assert (=> b!4199523 (= res!1724635 (not (isEmpty!27324 rules!3843)))))

(declare-fun b!4199524 () Bool)

(declare-fun res!1724632 () Bool)

(assert (=> b!4199524 (=> (not res!1724632) (not e!2606788))))

(declare-fun rBis!167 () Rule!15200)

(declare-fun contains!9511 (List!46255 Rule!15200) Bool)

(assert (=> b!4199524 (= res!1724632 (contains!9511 rules!3843 rBis!167))))

(declare-fun b!4199525 () Bool)

(declare-fun e!2606793 () Bool)

(declare-fun e!2606790 () Bool)

(assert (=> b!4199525 (= e!2606793 e!2606790)))

(declare-fun res!1724634 () Bool)

(assert (=> b!4199525 (=> res!1724634 e!2606790)))

(declare-fun lt!1496216 () Int)

(declare-fun lt!1496215 () Int)

(assert (=> b!4199525 (= res!1724634 (< lt!1496216 lt!1496215))))

(declare-fun lt!1496213 () BalanceConc!27416)

(declare-fun size!33917 (BalanceConc!27416) Int)

(assert (=> b!4199525 (= lt!1496216 (size!33917 lt!1496213))))

(declare-fun tp!1282755 () Bool)

(declare-fun b!4199526 () Bool)

(declare-fun e!2606799 () Bool)

(declare-fun r!4142 () Rule!15200)

(declare-fun e!2606787 () Bool)

(declare-fun inv!60688 (String!53516) Bool)

(declare-fun inv!60690 (TokenValueInjection!15288) Bool)

(assert (=> b!4199526 (= e!2606799 (and tp!1282755 (inv!60688 (tag!8564 r!4142)) (inv!60690 (transformation!7700 r!4142)) e!2606787))))

(declare-fun e!2606800 () Bool)

(assert (=> b!4199527 (= e!2606800 (and tp!1282759 tp!1282761))))

(declare-fun b!4199528 () Bool)

(declare-fun e!2606794 () Bool)

(assert (=> b!4199528 (= e!2606790 e!2606794)))

(declare-fun res!1724633 () Bool)

(assert (=> b!4199528 (=> res!1724633 e!2606794)))

(assert (=> b!4199528 (= res!1724633 (>= lt!1496215 lt!1496216))))

(declare-datatypes ((Unit!65241 0))(
  ( (Unit!65242) )
))
(declare-fun lt!1496204 () Unit!65241)

(declare-fun e!2606785 () Unit!65241)

(assert (=> b!4199528 (= lt!1496204 e!2606785)))

(declare-fun c!716147 () Bool)

(declare-fun lt!1496205 () List!46254)

(declare-fun size!33918 (List!46254) Int)

(assert (=> b!4199528 (= c!716147 (= lt!1496215 (size!33918 lt!1496205)))))

(declare-fun b!4199529 () Bool)

(declare-fun res!1724644 () Bool)

(assert (=> b!4199529 (=> (not res!1724644) (not e!2606788))))

(declare-fun pBis!107 () List!46254)

(declare-fun input!3342 () List!46254)

(declare-fun isPrefix!4557 (List!46254 List!46254) Bool)

(assert (=> b!4199529 (= res!1724644 (isPrefix!4557 pBis!107 input!3342))))

(declare-fun e!2606796 () Bool)

(declare-fun tp!1282763 () Bool)

(declare-fun e!2606797 () Bool)

(declare-fun b!4199530 () Bool)

(assert (=> b!4199530 (= e!2606796 (and tp!1282763 (inv!60688 (tag!8564 rBis!167)) (inv!60690 (transformation!7700 rBis!167)) e!2606797))))

(declare-fun b!4199531 () Bool)

(declare-fun e!2606786 () Bool)

(declare-fun e!2606801 () Bool)

(assert (=> b!4199531 (= e!2606786 e!2606801)))

(declare-fun res!1724627 () Bool)

(assert (=> b!4199531 (=> res!1724627 e!2606801)))

(declare-fun lt!1496218 () Int)

(assert (=> b!4199531 (= res!1724627 (<= lt!1496215 lt!1496218))))

(assert (=> b!4199531 (= lt!1496215 (size!33918 pBis!107))))

(declare-fun b!4199532 () Bool)

(declare-fun res!1724628 () Bool)

(assert (=> b!4199532 (=> (not res!1724628) (not e!2606788))))

(declare-fun p!2959 () List!46254)

(declare-fun matchR!6344 (Regex!12605 List!46254) Bool)

(assert (=> b!4199532 (= res!1724628 (matchR!6344 (regex!7700 r!4142) p!2959))))

(declare-fun b!4199533 () Bool)

(declare-fun e!2606791 () Bool)

(assert (=> b!4199533 (= e!2606791 e!2606793)))

(declare-fun res!1724643 () Bool)

(assert (=> b!4199533 (=> res!1724643 e!2606793)))

(assert (=> b!4199533 (= res!1724643 (= lt!1496205 pBis!107))))

(declare-datatypes ((Token!14114 0))(
  ( (Token!14115 (value!239982 TokenValue!7930) (rule!10802 Rule!15200) (size!33919 Int) (originalCharacters!8088 List!46254)) )
))
(declare-datatypes ((tuple2!43918 0))(
  ( (tuple2!43919 (_1!25093 Token!14114) (_2!25093 List!46254)) )
))
(declare-fun lt!1496201 () tuple2!43918)

(declare-fun ++!11772 (List!46254 List!46254) List!46254)

(assert (=> b!4199533 (isPrefix!4557 lt!1496205 (++!11772 lt!1496205 (_2!25093 lt!1496201)))))

(declare-fun lt!1496220 () Unit!65241)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3054 (List!46254 List!46254) Unit!65241)

(assert (=> b!4199533 (= lt!1496220 (lemmaConcatTwoListThenFirstIsPrefix!3054 lt!1496205 (_2!25093 lt!1496201)))))

(declare-fun list!16679 (BalanceConc!27416) List!46254)

(assert (=> b!4199533 (= lt!1496205 (list!16679 lt!1496213))))

(declare-fun charsOf!5135 (Token!14114) BalanceConc!27416)

(assert (=> b!4199533 (= lt!1496213 (charsOf!5135 (_1!25093 lt!1496201)))))

(declare-datatypes ((Option!9894 0))(
  ( (None!9893) (Some!9893 (v!40743 tuple2!43918)) )
))
(declare-fun lt!1496219 () Option!9894)

(declare-fun get!15009 (Option!9894) tuple2!43918)

(assert (=> b!4199533 (= lt!1496201 (get!15009 lt!1496219))))

(declare-fun b!4199534 () Bool)

(declare-fun res!1724641 () Bool)

(assert (=> b!4199534 (=> (not res!1724641) (not e!2606788))))

(declare-datatypes ((LexerInterface!7293 0))(
  ( (LexerInterfaceExt!7290 (__x!28082 Int)) (Lexer!7291) )
))
(declare-fun thiss!25986 () LexerInterface!7293)

(declare-fun ruleValid!3418 (LexerInterface!7293 Rule!15200) Bool)

(assert (=> b!4199534 (= res!1724641 (ruleValid!3418 thiss!25986 r!4142))))

(declare-fun b!4199536 () Bool)

(declare-fun res!1724639 () Bool)

(assert (=> b!4199536 (=> (not res!1724639) (not e!2606788))))

(declare-fun rulesInvariant!6506 (LexerInterface!7293 List!46255) Bool)

(assert (=> b!4199536 (= res!1724639 (rulesInvariant!6506 thiss!25986 rules!3843))))

(declare-fun b!4199537 () Bool)

(declare-fun res!1724636 () Bool)

(assert (=> b!4199537 (=> res!1724636 e!2606801)))

(declare-fun lt!1496209 () Option!9894)

(declare-fun maxPrefix!4341 (LexerInterface!7293 List!46255 List!46254) Option!9894)

(assert (=> b!4199537 (= res!1724636 (not (= (maxPrefix!4341 thiss!25986 rules!3843 input!3342) lt!1496209)))))

(declare-fun b!4199538 () Bool)

(declare-fun res!1724640 () Bool)

(assert (=> b!4199538 (=> (not res!1724640) (not e!2606788))))

(assert (=> b!4199538 (= res!1724640 (isPrefix!4557 p!2959 input!3342))))

(declare-fun b!4199539 () Bool)

(declare-fun res!1724629 () Bool)

(assert (=> b!4199539 (=> (not res!1724629) (not e!2606788))))

(declare-fun validRegex!5722 (Regex!12605) Bool)

(assert (=> b!4199539 (= res!1724629 (validRegex!5722 (regex!7700 r!4142)))))

(declare-fun b!4199540 () Bool)

(declare-fun e!2606789 () Bool)

(declare-fun e!2606798 () Bool)

(declare-fun tp!1282757 () Bool)

(assert (=> b!4199540 (= e!2606789 (and e!2606798 tp!1282757))))

(assert (=> b!4199541 (= e!2606787 (and tp!1282758 tp!1282754))))

(declare-fun b!4199542 () Bool)

(declare-fun e!2606803 () Bool)

(declare-fun tp_is_empty!22173 () Bool)

(declare-fun tp!1282752 () Bool)

(assert (=> b!4199542 (= e!2606803 (and tp_is_empty!22173 tp!1282752))))

(assert (=> b!4199543 (= e!2606797 (and tp!1282760 tp!1282762))))

(declare-fun b!4199544 () Bool)

(declare-fun res!1724638 () Bool)

(assert (=> b!4199544 (=> (not res!1724638) (not e!2606788))))

(assert (=> b!4199544 (= res!1724638 (contains!9511 rules!3843 r!4142))))

(declare-fun res!1724637 () Bool)

(assert (=> start!401182 (=> (not res!1724637) (not e!2606788))))

(get-info :version)

(assert (=> start!401182 (= res!1724637 ((_ is Lexer!7291) thiss!25986))))

(assert (=> start!401182 e!2606788))

(assert (=> start!401182 true))

(assert (=> start!401182 e!2606796))

(assert (=> start!401182 e!2606799))

(assert (=> start!401182 e!2606789))

(assert (=> start!401182 e!2606803))

(declare-fun e!2606792 () Bool)

(assert (=> start!401182 e!2606792))

(declare-fun e!2606795 () Bool)

(assert (=> start!401182 e!2606795))

(declare-fun b!4199535 () Bool)

(declare-fun res!1724631 () Bool)

(assert (=> b!4199535 (=> res!1724631 e!2606801)))

(assert (=> b!4199535 (= res!1724631 (not (ruleValid!3418 thiss!25986 rBis!167)))))

(declare-fun b!4199545 () Bool)

(assert (=> b!4199545 (= e!2606788 (not e!2606786))))

(declare-fun res!1724630 () Bool)

(assert (=> b!4199545 (=> res!1724630 e!2606786)))

(declare-fun maxPrefixOneRule!3302 (LexerInterface!7293 Rule!15200 List!46254) Option!9894)

(assert (=> b!4199545 (= res!1724630 (not (= (maxPrefixOneRule!3302 thiss!25986 r!4142 input!3342) lt!1496209)))))

(declare-fun lt!1496207 () Token!14114)

(declare-fun lt!1496212 () List!46254)

(assert (=> b!4199545 (= lt!1496209 (Some!9893 (tuple2!43919 lt!1496207 lt!1496212)))))

(declare-fun getSuffix!2850 (List!46254 List!46254) List!46254)

(assert (=> b!4199545 (= lt!1496212 (getSuffix!2850 input!3342 p!2959))))

(declare-fun lt!1496202 () TokenValue!7930)

(assert (=> b!4199545 (= lt!1496207 (Token!14115 lt!1496202 r!4142 lt!1496218 p!2959))))

(assert (=> b!4199545 (= lt!1496218 (size!33918 p!2959))))

(declare-fun lt!1496206 () BalanceConc!27416)

(declare-fun apply!10665 (TokenValueInjection!15288 BalanceConc!27416) TokenValue!7930)

(assert (=> b!4199545 (= lt!1496202 (apply!10665 (transformation!7700 r!4142) lt!1496206))))

(assert (=> b!4199545 (isPrefix!4557 input!3342 input!3342)))

(declare-fun lt!1496210 () Unit!65241)

(declare-fun lemmaIsPrefixRefl!2986 (List!46254 List!46254) Unit!65241)

(assert (=> b!4199545 (= lt!1496210 (lemmaIsPrefixRefl!2986 input!3342 input!3342))))

(declare-fun lt!1496217 () Unit!65241)

(declare-fun lemmaSemiInverse!2466 (TokenValueInjection!15288 BalanceConc!27416) Unit!65241)

(assert (=> b!4199545 (= lt!1496217 (lemmaSemiInverse!2466 (transformation!7700 r!4142) lt!1496206))))

(declare-fun seqFromList!5725 (List!46254) BalanceConc!27416)

(assert (=> b!4199545 (= lt!1496206 (seqFromList!5725 p!2959))))

(declare-fun b!4199546 () Bool)

(declare-fun Unit!65243 () Unit!65241)

(assert (=> b!4199546 (= e!2606785 Unit!65243)))

(declare-fun lt!1496200 () Unit!65241)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1021 (List!46254 List!46254 List!46254) Unit!65241)

(assert (=> b!4199546 (= lt!1496200 (lemmaIsPrefixSameLengthThenSameList!1021 pBis!107 lt!1496205 input!3342))))

(assert (=> b!4199546 false))

(declare-fun tp!1282756 () Bool)

(declare-fun b!4199547 () Bool)

(assert (=> b!4199547 (= e!2606798 (and tp!1282756 (inv!60688 (tag!8564 (h!51551 rules!3843))) (inv!60690 (transformation!7700 (h!51551 rules!3843))) e!2606800))))

(declare-fun b!4199548 () Bool)

(assert (=> b!4199548 (= e!2606794 true)))

(declare-fun lt!1496203 () Bool)

(assert (=> b!4199548 (= lt!1496203 (matchR!6344 (regex!7700 rBis!167) pBis!107))))

(assert (=> b!4199548 false))

(declare-fun lt!1496208 () Unit!65241)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!30 (LexerInterface!7293 List!46255 List!46254 Token!14114 List!46254 List!46254 List!46254 List!46254 Rule!15200 Token!14114) Unit!65241)

(assert (=> b!4199548 (= lt!1496208 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!30 thiss!25986 rules!3843 p!2959 lt!1496207 input!3342 lt!1496212 lt!1496205 (_2!25093 lt!1496201) rBis!167 (_1!25093 lt!1496201)))))

(declare-fun b!4199549 () Bool)

(declare-fun tp!1282753 () Bool)

(assert (=> b!4199549 (= e!2606792 (and tp_is_empty!22173 tp!1282753))))

(declare-fun b!4199550 () Bool)

(assert (=> b!4199550 (= e!2606801 e!2606791)))

(declare-fun res!1724642 () Bool)

(assert (=> b!4199550 (=> res!1724642 e!2606791)))

(declare-fun isEmpty!27325 (Option!9894) Bool)

(assert (=> b!4199550 (= res!1724642 (isEmpty!27325 lt!1496219))))

(assert (=> b!4199550 (= lt!1496219 (maxPrefixOneRule!3302 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1496211 () Unit!65241)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2424 (LexerInterface!7293 Rule!15200 List!46255) Unit!65241)

(assert (=> b!4199550 (= lt!1496211 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2424 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4199550 (<= lt!1496215 (size!33918 input!3342))))

(declare-fun lt!1496214 () Unit!65241)

(declare-fun lemmaIsPrefixThenSmallerEqSize!587 (List!46254 List!46254) Unit!65241)

(assert (=> b!4199550 (= lt!1496214 (lemmaIsPrefixThenSmallerEqSize!587 pBis!107 input!3342))))

(declare-fun b!4199551 () Bool)

(declare-fun tp!1282764 () Bool)

(assert (=> b!4199551 (= e!2606795 (and tp_is_empty!22173 tp!1282764))))

(declare-fun b!4199552 () Bool)

(declare-fun Unit!65244 () Unit!65241)

(assert (=> b!4199552 (= e!2606785 Unit!65244)))

(assert (= (and start!401182 res!1724637) b!4199538))

(assert (= (and b!4199538 res!1724640) b!4199529))

(assert (= (and b!4199529 res!1724644) b!4199523))

(assert (= (and b!4199523 res!1724635) b!4199536))

(assert (= (and b!4199536 res!1724639) b!4199544))

(assert (= (and b!4199544 res!1724638) b!4199524))

(assert (= (and b!4199524 res!1724632) b!4199539))

(assert (= (and b!4199539 res!1724629) b!4199532))

(assert (= (and b!4199532 res!1724628) b!4199534))

(assert (= (and b!4199534 res!1724641) b!4199545))

(assert (= (and b!4199545 (not res!1724630)) b!4199531))

(assert (= (and b!4199531 (not res!1724627)) b!4199535))

(assert (= (and b!4199535 (not res!1724631)) b!4199537))

(assert (= (and b!4199537 (not res!1724636)) b!4199550))

(assert (= (and b!4199550 (not res!1724642)) b!4199533))

(assert (= (and b!4199533 (not res!1724643)) b!4199525))

(assert (= (and b!4199525 (not res!1724634)) b!4199528))

(assert (= (and b!4199528 c!716147) b!4199546))

(assert (= (and b!4199528 (not c!716147)) b!4199552))

(assert (= (and b!4199528 (not res!1724633)) b!4199548))

(assert (= b!4199530 b!4199543))

(assert (= start!401182 b!4199530))

(assert (= b!4199526 b!4199541))

(assert (= start!401182 b!4199526))

(assert (= b!4199547 b!4199527))

(assert (= b!4199540 b!4199547))

(assert (= (and start!401182 ((_ is Cons!46131) rules!3843)) b!4199540))

(assert (= (and start!401182 ((_ is Cons!46130) input!3342)) b!4199542))

(assert (= (and start!401182 ((_ is Cons!46130) pBis!107)) b!4199549))

(assert (= (and start!401182 ((_ is Cons!46130) p!2959)) b!4199551))

(declare-fun m!4788259 () Bool)

(assert (=> b!4199524 m!4788259))

(declare-fun m!4788261 () Bool)

(assert (=> b!4199533 m!4788261))

(declare-fun m!4788263 () Bool)

(assert (=> b!4199533 m!4788263))

(declare-fun m!4788265 () Bool)

(assert (=> b!4199533 m!4788265))

(declare-fun m!4788267 () Bool)

(assert (=> b!4199533 m!4788267))

(assert (=> b!4199533 m!4788261))

(declare-fun m!4788269 () Bool)

(assert (=> b!4199533 m!4788269))

(declare-fun m!4788271 () Bool)

(assert (=> b!4199533 m!4788271))

(declare-fun m!4788273 () Bool)

(assert (=> b!4199528 m!4788273))

(declare-fun m!4788275 () Bool)

(assert (=> b!4199538 m!4788275))

(declare-fun m!4788277 () Bool)

(assert (=> b!4199536 m!4788277))

(declare-fun m!4788279 () Bool)

(assert (=> b!4199526 m!4788279))

(declare-fun m!4788281 () Bool)

(assert (=> b!4199526 m!4788281))

(declare-fun m!4788283 () Bool)

(assert (=> b!4199532 m!4788283))

(declare-fun m!4788285 () Bool)

(assert (=> b!4199545 m!4788285))

(declare-fun m!4788287 () Bool)

(assert (=> b!4199545 m!4788287))

(declare-fun m!4788289 () Bool)

(assert (=> b!4199545 m!4788289))

(declare-fun m!4788291 () Bool)

(assert (=> b!4199545 m!4788291))

(declare-fun m!4788293 () Bool)

(assert (=> b!4199545 m!4788293))

(declare-fun m!4788295 () Bool)

(assert (=> b!4199545 m!4788295))

(declare-fun m!4788297 () Bool)

(assert (=> b!4199545 m!4788297))

(declare-fun m!4788299 () Bool)

(assert (=> b!4199545 m!4788299))

(declare-fun m!4788301 () Bool)

(assert (=> b!4199523 m!4788301))

(declare-fun m!4788303 () Bool)

(assert (=> b!4199537 m!4788303))

(declare-fun m!4788305 () Bool)

(assert (=> b!4199534 m!4788305))

(declare-fun m!4788307 () Bool)

(assert (=> b!4199530 m!4788307))

(declare-fun m!4788309 () Bool)

(assert (=> b!4199530 m!4788309))

(declare-fun m!4788311 () Bool)

(assert (=> b!4199547 m!4788311))

(declare-fun m!4788313 () Bool)

(assert (=> b!4199547 m!4788313))

(declare-fun m!4788315 () Bool)

(assert (=> b!4199546 m!4788315))

(declare-fun m!4788317 () Bool)

(assert (=> b!4199525 m!4788317))

(declare-fun m!4788319 () Bool)

(assert (=> b!4199548 m!4788319))

(declare-fun m!4788321 () Bool)

(assert (=> b!4199548 m!4788321))

(declare-fun m!4788323 () Bool)

(assert (=> b!4199535 m!4788323))

(declare-fun m!4788325 () Bool)

(assert (=> b!4199539 m!4788325))

(declare-fun m!4788327 () Bool)

(assert (=> b!4199544 m!4788327))

(declare-fun m!4788329 () Bool)

(assert (=> b!4199531 m!4788329))

(declare-fun m!4788331 () Bool)

(assert (=> b!4199550 m!4788331))

(declare-fun m!4788333 () Bool)

(assert (=> b!4199550 m!4788333))

(declare-fun m!4788335 () Bool)

(assert (=> b!4199550 m!4788335))

(declare-fun m!4788337 () Bool)

(assert (=> b!4199550 m!4788337))

(declare-fun m!4788339 () Bool)

(assert (=> b!4199550 m!4788339))

(declare-fun m!4788341 () Bool)

(assert (=> b!4199529 m!4788341))

(check-sat (not b_next!123149) (not b!4199533) (not b!4199546) (not b_next!123147) (not b!4199551) (not b!4199537) (not b!4199548) (not b!4199550) (not b!4199536) (not b!4199539) (not b!4199526) (not b!4199540) (not b_next!123151) b_and!329501 b_and!329497 b_and!329495 (not b!4199544) (not b!4199532) (not b!4199530) (not b!4199545) (not b!4199547) (not b_next!123153) (not b_next!123145) (not b!4199529) (not b!4199523) (not b!4199535) b_and!329493 (not b!4199534) (not b!4199528) (not b_next!123143) (not b!4199525) (not b!4199542) (not b!4199524) b_and!329499 (not b!4199538) tp_is_empty!22173 (not b!4199549) (not b!4199531) b_and!329503)
(check-sat (not b_next!123149) b_and!329493 (not b_next!123147) (not b_next!123143) (not b_next!123151) b_and!329501 b_and!329497 b_and!329495 b_and!329499 b_and!329503 (not b_next!123153) (not b_next!123145))
