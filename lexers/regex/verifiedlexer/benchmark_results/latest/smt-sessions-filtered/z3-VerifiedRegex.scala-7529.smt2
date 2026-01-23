; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397642 () Bool)

(assert start!397642)

(declare-fun b!4170637 () Bool)

(declare-fun b_free!120655 () Bool)

(declare-fun b_next!121359 () Bool)

(assert (=> b!4170637 (= b_free!120655 (not b_next!121359))))

(declare-fun tp!1274154 () Bool)

(declare-fun b_and!325621 () Bool)

(assert (=> b!4170637 (= tp!1274154 b_and!325621)))

(declare-fun b_free!120657 () Bool)

(declare-fun b_next!121361 () Bool)

(assert (=> b!4170637 (= b_free!120657 (not b_next!121361))))

(declare-fun tp!1274161 () Bool)

(declare-fun b_and!325623 () Bool)

(assert (=> b!4170637 (= tp!1274161 b_and!325623)))

(declare-fun b!4170627 () Bool)

(declare-fun b_free!120659 () Bool)

(declare-fun b_next!121363 () Bool)

(assert (=> b!4170627 (= b_free!120659 (not b_next!121363))))

(declare-fun tp!1274158 () Bool)

(declare-fun b_and!325625 () Bool)

(assert (=> b!4170627 (= tp!1274158 b_and!325625)))

(declare-fun b_free!120661 () Bool)

(declare-fun b_next!121365 () Bool)

(assert (=> b!4170627 (= b_free!120661 (not b_next!121365))))

(declare-fun tp!1274160 () Bool)

(declare-fun b_and!325627 () Bool)

(assert (=> b!4170627 (= tp!1274160 b_and!325627)))

(declare-fun b!4170631 () Bool)

(declare-fun b_free!120663 () Bool)

(declare-fun b_next!121367 () Bool)

(assert (=> b!4170631 (= b_free!120663 (not b_next!121367))))

(declare-fun tp!1274155 () Bool)

(declare-fun b_and!325629 () Bool)

(assert (=> b!4170631 (= tp!1274155 b_and!325629)))

(declare-fun b_free!120665 () Bool)

(declare-fun b_next!121369 () Bool)

(assert (=> b!4170631 (= b_free!120665 (not b_next!121369))))

(declare-fun tp!1274165 () Bool)

(declare-fun b_and!325631 () Bool)

(assert (=> b!4170631 (= tp!1274165 b_and!325631)))

(declare-fun res!1708900 () Bool)

(declare-fun e!2589190 () Bool)

(assert (=> start!397642 (=> (not res!1708900) (not e!2589190))))

(declare-datatypes ((LexerInterface!7167 0))(
  ( (LexerInterfaceExt!7164 (__x!27829 Int)) (Lexer!7165) )
))
(declare-fun thiss!25986 () LexerInterface!7167)

(get-info :version)

(assert (=> start!397642 (= res!1708900 ((_ is Lexer!7165) thiss!25986))))

(assert (=> start!397642 e!2589190))

(assert (=> start!397642 true))

(declare-fun e!2589194 () Bool)

(assert (=> start!397642 e!2589194))

(declare-fun e!2589197 () Bool)

(assert (=> start!397642 e!2589197))

(declare-fun e!2589195 () Bool)

(assert (=> start!397642 e!2589195))

(declare-fun e!2589189 () Bool)

(assert (=> start!397642 e!2589189))

(declare-fun e!2589185 () Bool)

(assert (=> start!397642 e!2589185))

(declare-fun e!2589192 () Bool)

(assert (=> start!397642 e!2589192))

(declare-fun b!4170621 () Bool)

(declare-fun res!1708898 () Bool)

(assert (=> b!4170621 (=> (not res!1708898) (not e!2589190))))

(declare-datatypes ((C!25148 0))(
  ( (C!25149 (val!14736 Int)) )
))
(declare-datatypes ((List!45817 0))(
  ( (Nil!45693) (Cons!45693 (h!51113 C!25148) (t!344360 List!45817)) )
))
(declare-fun p!2959 () List!45817)

(declare-fun input!3342 () List!45817)

(declare-fun isPrefix!4431 (List!45817 List!45817) Bool)

(assert (=> b!4170621 (= res!1708898 (isPrefix!4431 p!2959 input!3342))))

(declare-fun b!4170622 () Bool)

(declare-fun res!1708893 () Bool)

(assert (=> b!4170622 (=> (not res!1708893) (not e!2589190))))

(declare-datatypes ((List!45818 0))(
  ( (Nil!45694) (Cons!45694 (h!51114 (_ BitVec 16)) (t!344361 List!45818)) )
))
(declare-datatypes ((TokenValue!7804 0))(
  ( (FloatLiteralValue!15608 (text!55073 List!45818)) (TokenValueExt!7803 (__x!27830 Int)) (Broken!39020 (value!236366 List!45818)) (Object!7927) (End!7804) (Def!7804) (Underscore!7804) (Match!7804) (Else!7804) (Error!7804) (Case!7804) (If!7804) (Extends!7804) (Abstract!7804) (Class!7804) (Val!7804) (DelimiterValue!15608 (del!7864 List!45818)) (KeywordValue!7810 (value!236367 List!45818)) (CommentValue!15608 (value!236368 List!45818)) (WhitespaceValue!15608 (value!236369 List!45818)) (IndentationValue!7804 (value!236370 List!45818)) (String!52885) (Int32!7804) (Broken!39021 (value!236371 List!45818)) (Boolean!7805) (Unit!64760) (OperatorValue!7807 (op!7864 List!45818)) (IdentifierValue!15608 (value!236372 List!45818)) (IdentifierValue!15609 (value!236373 List!45818)) (WhitespaceValue!15609 (value!236374 List!45818)) (True!15608) (False!15608) (Broken!39022 (value!236375 List!45818)) (Broken!39023 (value!236376 List!45818)) (True!15609) (RightBrace!7804) (RightBracket!7804) (Colon!7804) (Null!7804) (Comma!7804) (LeftBracket!7804) (False!15609) (LeftBrace!7804) (ImaginaryLiteralValue!7804 (text!55074 List!45818)) (StringLiteralValue!23412 (value!236377 List!45818)) (EOFValue!7804 (value!236378 List!45818)) (IdentValue!7804 (value!236379 List!45818)) (DelimiterValue!15609 (value!236380 List!45818)) (DedentValue!7804 (value!236381 List!45818)) (NewLineValue!7804 (value!236382 List!45818)) (IntegerValue!23412 (value!236383 (_ BitVec 32)) (text!55075 List!45818)) (IntegerValue!23413 (value!236384 Int) (text!55076 List!45818)) (Times!7804) (Or!7804) (Equal!7804) (Minus!7804) (Broken!39024 (value!236385 List!45818)) (And!7804) (Div!7804) (LessEqual!7804) (Mod!7804) (Concat!20283) (Not!7804) (Plus!7804) (SpaceValue!7804 (value!236386 List!45818)) (IntegerValue!23414 (value!236387 Int) (text!55077 List!45818)) (StringLiteralValue!23413 (text!55078 List!45818)) (FloatLiteralValue!15609 (text!55079 List!45818)) (BytesLiteralValue!7804 (value!236388 List!45818)) (CommentValue!15609 (value!236389 List!45818)) (StringLiteralValue!23414 (value!236390 List!45818)) (ErrorTokenValue!7804 (msg!7865 List!45818)) )
))
(declare-datatypes ((String!52886 0))(
  ( (String!52887 (value!236391 String)) )
))
(declare-datatypes ((IArray!27575 0))(
  ( (IArray!27576 (innerList!13845 List!45817)) )
))
(declare-datatypes ((Conc!13785 0))(
  ( (Node!13785 (left!34062 Conc!13785) (right!34392 Conc!13785) (csize!27800 Int) (cheight!13996 Int)) (Leaf!21315 (xs!17091 IArray!27575) (csize!27801 Int)) (Empty!13785) )
))
(declare-datatypes ((BalanceConc!27164 0))(
  ( (BalanceConc!27165 (c!712890 Conc!13785)) )
))
(declare-datatypes ((Regex!12479 0))(
  ( (ElementMatch!12479 (c!712891 C!25148)) (Concat!20284 (regOne!25470 Regex!12479) (regTwo!25470 Regex!12479)) (EmptyExpr!12479) (Star!12479 (reg!12808 Regex!12479)) (EmptyLang!12479) (Union!12479 (regOne!25471 Regex!12479) (regTwo!25471 Regex!12479)) )
))
(declare-datatypes ((TokenValueInjection!15036 0))(
  ( (TokenValueInjection!15037 (toValue!10254 Int) (toChars!10113 Int)) )
))
(declare-datatypes ((Rule!14948 0))(
  ( (Rule!14949 (regex!7574 Regex!12479) (tag!8438 String!52886) (isSeparator!7574 Bool) (transformation!7574 TokenValueInjection!15036)) )
))
(declare-datatypes ((List!45819 0))(
  ( (Nil!45695) (Cons!45695 (h!51115 Rule!14948) (t!344362 List!45819)) )
))
(declare-fun rules!3843 () List!45819)

(declare-fun r!4142 () Rule!14948)

(declare-fun contains!9375 (List!45819 Rule!14948) Bool)

(assert (=> b!4170622 (= res!1708893 (contains!9375 rules!3843 r!4142))))

(declare-fun b!4170623 () Bool)

(assert (=> b!4170623 (= e!2589190 (not true))))

(declare-fun lt!1485205 () Int)

(declare-fun size!33542 (List!45817) Int)

(assert (=> b!4170623 (= lt!1485205 (size!33542 p!2959))))

(declare-fun lt!1485207 () Int)

(assert (=> b!4170623 (= lt!1485207 (size!33542 input!3342))))

(assert (=> b!4170623 (isPrefix!4431 input!3342 input!3342)))

(declare-datatypes ((Unit!64761 0))(
  ( (Unit!64762) )
))
(declare-fun lt!1485206 () Unit!64761)

(declare-fun lemmaIsPrefixRefl!2860 (List!45817 List!45817) Unit!64761)

(assert (=> b!4170623 (= lt!1485206 (lemmaIsPrefixRefl!2860 input!3342 input!3342))))

(declare-fun lt!1485208 () Unit!64761)

(declare-fun lemmaSemiInverse!2340 (TokenValueInjection!15036 BalanceConc!27164) Unit!64761)

(declare-fun seqFromList!5599 (List!45817) BalanceConc!27164)

(assert (=> b!4170623 (= lt!1485208 (lemmaSemiInverse!2340 (transformation!7574 r!4142) (seqFromList!5599 p!2959)))))

(declare-fun b!4170624 () Bool)

(declare-fun res!1708899 () Bool)

(assert (=> b!4170624 (=> (not res!1708899) (not e!2589190))))

(declare-fun isEmpty!27035 (List!45819) Bool)

(assert (=> b!4170624 (= res!1708899 (not (isEmpty!27035 rules!3843)))))

(declare-fun e!2589193 () Bool)

(declare-fun b!4170625 () Bool)

(declare-fun tp!1274156 () Bool)

(declare-fun inv!60222 (String!52886) Bool)

(declare-fun inv!60224 (TokenValueInjection!15036) Bool)

(assert (=> b!4170625 (= e!2589197 (and tp!1274156 (inv!60222 (tag!8438 r!4142)) (inv!60224 (transformation!7574 r!4142)) e!2589193))))

(declare-fun b!4170626 () Bool)

(declare-fun tp_is_empty!21921 () Bool)

(declare-fun tp!1274162 () Bool)

(assert (=> b!4170626 (= e!2589192 (and tp_is_empty!21921 tp!1274162))))

(declare-fun e!2589187 () Bool)

(assert (=> b!4170627 (= e!2589187 (and tp!1274158 tp!1274160))))

(declare-fun b!4170628 () Bool)

(declare-fun e!2589186 () Bool)

(declare-fun tp!1274157 () Bool)

(assert (=> b!4170628 (= e!2589195 (and e!2589186 tp!1274157))))

(declare-fun b!4170629 () Bool)

(declare-fun res!1708894 () Bool)

(assert (=> b!4170629 (=> (not res!1708894) (not e!2589190))))

(declare-fun pBis!107 () List!45817)

(assert (=> b!4170629 (= res!1708894 (isPrefix!4431 pBis!107 input!3342))))

(declare-fun b!4170630 () Bool)

(declare-fun tp!1274164 () Bool)

(assert (=> b!4170630 (= e!2589189 (and tp_is_empty!21921 tp!1274164))))

(declare-fun e!2589196 () Bool)

(assert (=> b!4170631 (= e!2589196 (and tp!1274155 tp!1274165))))

(declare-fun b!4170632 () Bool)

(declare-fun res!1708902 () Bool)

(assert (=> b!4170632 (=> (not res!1708902) (not e!2589190))))

(declare-fun rBis!167 () Rule!14948)

(assert (=> b!4170632 (= res!1708902 (contains!9375 rules!3843 rBis!167))))

(declare-fun b!4170633 () Bool)

(declare-fun res!1708901 () Bool)

(assert (=> b!4170633 (=> (not res!1708901) (not e!2589190))))

(declare-fun matchR!6218 (Regex!12479 List!45817) Bool)

(assert (=> b!4170633 (= res!1708901 (matchR!6218 (regex!7574 r!4142) p!2959))))

(declare-fun b!4170634 () Bool)

(declare-fun tp!1274166 () Bool)

(assert (=> b!4170634 (= e!2589186 (and tp!1274166 (inv!60222 (tag!8438 (h!51115 rules!3843))) (inv!60224 (transformation!7574 (h!51115 rules!3843))) e!2589187))))

(declare-fun b!4170635 () Bool)

(declare-fun res!1708896 () Bool)

(assert (=> b!4170635 (=> (not res!1708896) (not e!2589190))))

(declare-fun rulesInvariant!6380 (LexerInterface!7167 List!45819) Bool)

(assert (=> b!4170635 (= res!1708896 (rulesInvariant!6380 thiss!25986 rules!3843))))

(declare-fun b!4170636 () Bool)

(declare-fun res!1708895 () Bool)

(assert (=> b!4170636 (=> (not res!1708895) (not e!2589190))))

(declare-fun ruleValid!3292 (LexerInterface!7167 Rule!14948) Bool)

(assert (=> b!4170636 (= res!1708895 (ruleValid!3292 thiss!25986 r!4142))))

(assert (=> b!4170637 (= e!2589193 (and tp!1274154 tp!1274161))))

(declare-fun b!4170638 () Bool)

(declare-fun tp!1274159 () Bool)

(assert (=> b!4170638 (= e!2589185 (and tp_is_empty!21921 tp!1274159))))

(declare-fun b!4170639 () Bool)

(declare-fun res!1708897 () Bool)

(assert (=> b!4170639 (=> (not res!1708897) (not e!2589190))))

(declare-fun validRegex!5596 (Regex!12479) Bool)

(assert (=> b!4170639 (= res!1708897 (validRegex!5596 (regex!7574 r!4142)))))

(declare-fun tp!1274163 () Bool)

(declare-fun b!4170640 () Bool)

(assert (=> b!4170640 (= e!2589194 (and tp!1274163 (inv!60222 (tag!8438 rBis!167)) (inv!60224 (transformation!7574 rBis!167)) e!2589196))))

(assert (= (and start!397642 res!1708900) b!4170621))

(assert (= (and b!4170621 res!1708898) b!4170629))

(assert (= (and b!4170629 res!1708894) b!4170624))

(assert (= (and b!4170624 res!1708899) b!4170635))

(assert (= (and b!4170635 res!1708896) b!4170622))

(assert (= (and b!4170622 res!1708893) b!4170632))

(assert (= (and b!4170632 res!1708902) b!4170639))

(assert (= (and b!4170639 res!1708897) b!4170633))

(assert (= (and b!4170633 res!1708901) b!4170636))

(assert (= (and b!4170636 res!1708895) b!4170623))

(assert (= b!4170640 b!4170631))

(assert (= start!397642 b!4170640))

(assert (= b!4170625 b!4170637))

(assert (= start!397642 b!4170625))

(assert (= b!4170634 b!4170627))

(assert (= b!4170628 b!4170634))

(assert (= (and start!397642 ((_ is Cons!45695) rules!3843)) b!4170628))

(assert (= (and start!397642 ((_ is Cons!45693) input!3342)) b!4170630))

(assert (= (and start!397642 ((_ is Cons!45693) pBis!107)) b!4170638))

(assert (= (and start!397642 ((_ is Cons!45693) p!2959)) b!4170626))

(declare-fun m!4761193 () Bool)

(assert (=> b!4170635 m!4761193))

(declare-fun m!4761195 () Bool)

(assert (=> b!4170623 m!4761195))

(declare-fun m!4761197 () Bool)

(assert (=> b!4170623 m!4761197))

(declare-fun m!4761199 () Bool)

(assert (=> b!4170623 m!4761199))

(declare-fun m!4761201 () Bool)

(assert (=> b!4170623 m!4761201))

(declare-fun m!4761203 () Bool)

(assert (=> b!4170623 m!4761203))

(assert (=> b!4170623 m!4761197))

(declare-fun m!4761205 () Bool)

(assert (=> b!4170623 m!4761205))

(declare-fun m!4761207 () Bool)

(assert (=> b!4170632 m!4761207))

(declare-fun m!4761209 () Bool)

(assert (=> b!4170629 m!4761209))

(declare-fun m!4761211 () Bool)

(assert (=> b!4170640 m!4761211))

(declare-fun m!4761213 () Bool)

(assert (=> b!4170640 m!4761213))

(declare-fun m!4761215 () Bool)

(assert (=> b!4170634 m!4761215))

(declare-fun m!4761217 () Bool)

(assert (=> b!4170634 m!4761217))

(declare-fun m!4761219 () Bool)

(assert (=> b!4170639 m!4761219))

(declare-fun m!4761221 () Bool)

(assert (=> b!4170636 m!4761221))

(declare-fun m!4761223 () Bool)

(assert (=> b!4170622 m!4761223))

(declare-fun m!4761225 () Bool)

(assert (=> b!4170625 m!4761225))

(declare-fun m!4761227 () Bool)

(assert (=> b!4170625 m!4761227))

(declare-fun m!4761229 () Bool)

(assert (=> b!4170621 m!4761229))

(declare-fun m!4761231 () Bool)

(assert (=> b!4170633 m!4761231))

(declare-fun m!4761233 () Bool)

(assert (=> b!4170624 m!4761233))

(check-sat (not b!4170623) b_and!325625 (not b!4170633) (not b_next!121367) (not b_next!121361) b_and!325621 tp_is_empty!21921 (not b!4170626) (not b!4170635) (not b!4170629) b_and!325623 (not b_next!121359) (not b!4170625) (not b_next!121365) b_and!325629 (not b!4170639) (not b!4170638) (not b!4170624) (not b!4170636) (not b!4170640) (not b!4170628) (not b!4170621) (not b_next!121369) (not b!4170630) (not b_next!121363) (not b!4170634) b_and!325631 (not b!4170622) b_and!325627 (not b!4170632))
(check-sat b_and!325625 (not b_next!121367) (not b_next!121361) b_and!325621 (not b_next!121369) b_and!325623 (not b_next!121359) b_and!325627 (not b_next!121365) b_and!325629 (not b_next!121363) b_and!325631)
