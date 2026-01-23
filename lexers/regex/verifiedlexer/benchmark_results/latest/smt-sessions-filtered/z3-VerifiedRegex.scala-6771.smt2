; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353220 () Bool)

(assert start!353220)

(declare-fun b!3761376 () Bool)

(declare-fun e!2326379 () Bool)

(declare-datatypes ((C!22292 0))(
  ( (C!22293 (val!13222 Int)) )
))
(declare-datatypes ((List!40239 0))(
  ( (Nil!40115) (Cons!40115 (h!45535 C!22292) (t!303888 List!40239)) )
))
(declare-datatypes ((IArray!24569 0))(
  ( (IArray!24570 (innerList!12342 List!40239)) )
))
(declare-datatypes ((Conc!12282 0))(
  ( (Node!12282 (left!31053 Conc!12282) (right!31383 Conc!12282) (csize!24794 Int) (cheight!12493 Int)) (Leaf!19054 (xs!15488 IArray!24569) (csize!24795 Int)) (Empty!12282) )
))
(declare-datatypes ((BalanceConc!24158 0))(
  ( (BalanceConc!24159 (c!651289 Conc!12282)) )
))
(declare-fun acc!400 () BalanceConc!24158)

(declare-fun tp!1149420 () Bool)

(declare-fun inv!53807 (Conc!12282) Bool)

(assert (=> b!3761376 (= e!2326379 (and (inv!53807 (c!651289 acc!400)) tp!1149420))))

(declare-fun b!3761375 () Bool)

(declare-fun e!2326377 () Bool)

(declare-datatypes ((List!40240 0))(
  ( (Nil!40116) (Cons!40116 (h!45536 (_ BitVec 16)) (t!303889 List!40240)) )
))
(declare-datatypes ((TokenValue!6378 0))(
  ( (FloatLiteralValue!12756 (text!45091 List!40240)) (TokenValueExt!6377 (__x!24973 Int)) (Broken!31890 (value!195799 List!40240)) (Object!6501) (End!6378) (Def!6378) (Underscore!6378) (Match!6378) (Else!6378) (Error!6378) (Case!6378) (If!6378) (Extends!6378) (Abstract!6378) (Class!6378) (Val!6378) (DelimiterValue!12756 (del!6438 List!40240)) (KeywordValue!6384 (value!195800 List!40240)) (CommentValue!12756 (value!195801 List!40240)) (WhitespaceValue!12756 (value!195802 List!40240)) (IndentationValue!6378 (value!195803 List!40240)) (String!45571) (Int32!6378) (Broken!31891 (value!195804 List!40240)) (Boolean!6379) (Unit!57841) (OperatorValue!6381 (op!6438 List!40240)) (IdentifierValue!12756 (value!195805 List!40240)) (IdentifierValue!12757 (value!195806 List!40240)) (WhitespaceValue!12757 (value!195807 List!40240)) (True!12756) (False!12756) (Broken!31892 (value!195808 List!40240)) (Broken!31893 (value!195809 List!40240)) (True!12757) (RightBrace!6378) (RightBracket!6378) (Colon!6378) (Null!6378) (Comma!6378) (LeftBracket!6378) (False!12757) (LeftBrace!6378) (ImaginaryLiteralValue!6378 (text!45092 List!40240)) (StringLiteralValue!19134 (value!195810 List!40240)) (EOFValue!6378 (value!195811 List!40240)) (IdentValue!6378 (value!195812 List!40240)) (DelimiterValue!12757 (value!195813 List!40240)) (DedentValue!6378 (value!195814 List!40240)) (NewLineValue!6378 (value!195815 List!40240)) (IntegerValue!19134 (value!195816 (_ BitVec 32)) (text!45093 List!40240)) (IntegerValue!19135 (value!195817 Int) (text!45094 List!40240)) (Times!6378) (Or!6378) (Equal!6378) (Minus!6378) (Broken!31894 (value!195818 List!40240)) (And!6378) (Div!6378) (LessEqual!6378) (Mod!6378) (Concat!17431) (Not!6378) (Plus!6378) (SpaceValue!6378 (value!195819 List!40240)) (IntegerValue!19136 (value!195820 Int) (text!45095 List!40240)) (StringLiteralValue!19135 (text!45096 List!40240)) (FloatLiteralValue!12757 (text!45097 List!40240)) (BytesLiteralValue!6378 (value!195821 List!40240)) (CommentValue!12757 (value!195822 List!40240)) (StringLiteralValue!19136 (value!195823 List!40240)) (ErrorTokenValue!6378 (msg!6439 List!40240)) )
))
(declare-datatypes ((Regex!11053 0))(
  ( (ElementMatch!11053 (c!651290 C!22292)) (Concat!17432 (regOne!22618 Regex!11053) (regTwo!22618 Regex!11053)) (EmptyExpr!11053) (Star!11053 (reg!11382 Regex!11053)) (EmptyLang!11053) (Union!11053 (regOne!22619 Regex!11053) (regTwo!22619 Regex!11053)) )
))
(declare-datatypes ((String!45572 0))(
  ( (String!45573 (value!195824 String)) )
))
(declare-datatypes ((TokenValueInjection!12184 0))(
  ( (TokenValueInjection!12185 (toValue!8504 Int) (toChars!8363 Int)) )
))
(declare-datatypes ((Rule!12096 0))(
  ( (Rule!12097 (regex!6148 Regex!11053) (tag!7008 String!45572) (isSeparator!6148 Bool) (transformation!6148 TokenValueInjection!12184)) )
))
(declare-datatypes ((Token!11434 0))(
  ( (Token!11435 (value!195825 TokenValue!6378) (rule!8912 Rule!12096) (size!30190 Int) (originalCharacters!6748 List!40239)) )
))
(declare-datatypes ((List!40241 0))(
  ( (Nil!40117) (Cons!40117 (h!45537 Token!11434) (t!303890 List!40241)) )
))
(declare-datatypes ((IArray!24571 0))(
  ( (IArray!24572 (innerList!12343 List!40241)) )
))
(declare-datatypes ((Conc!12283 0))(
  ( (Node!12283 (left!31054 Conc!12283) (right!31384 Conc!12283) (csize!24796 Int) (cheight!12494 Int)) (Leaf!19055 (xs!15489 IArray!24571) (csize!24797 Int)) (Empty!12283) )
))
(declare-datatypes ((BalanceConc!24160 0))(
  ( (BalanceConc!24161 (c!651291 Conc!12283)) )
))
(declare-fun v!6347 () BalanceConc!24160)

(declare-fun tp!1149419 () Bool)

(declare-fun inv!53808 (Conc!12283) Bool)

(assert (=> b!3761375 (= e!2326377 (and (inv!53808 (c!651291 v!6347)) tp!1149419))))

(declare-fun res!1523109 () Bool)

(declare-fun e!2326380 () Bool)

(assert (=> start!353220 (=> (not res!1523109) (not e!2326380))))

(declare-datatypes ((LexerInterface!5737 0))(
  ( (LexerInterfaceExt!5734 (__x!24974 Int)) (Lexer!5735) )
))
(declare-fun thiss!13650 () LexerInterface!5737)

(declare-fun from!841 () Int)

(get-info :version)

(assert (=> start!353220 (= res!1523109 (and ((_ is Lexer!5735) thiss!13650) (>= from!841 0)))))

(assert (=> start!353220 e!2326380))

(assert (=> start!353220 true))

(declare-fun inv!53809 (BalanceConc!24160) Bool)

(assert (=> start!353220 (and (inv!53809 v!6347) e!2326377)))

(declare-fun inv!53810 (BalanceConc!24158) Bool)

(assert (=> start!353220 (and (inv!53810 acc!400) e!2326379)))

(declare-fun b!3761373 () Bool)

(declare-fun e!2326378 () Bool)

(assert (=> b!3761373 (= e!2326380 e!2326378)))

(declare-fun res!1523110 () Bool)

(assert (=> b!3761373 (=> (not res!1523110) (not e!2326378))))

(declare-fun lt!1301913 () Int)

(assert (=> b!3761373 (= res!1523110 (and (<= from!841 lt!1301913) (>= from!841 lt!1301913)))))

(declare-fun size!30191 (BalanceConc!24160) Int)

(assert (=> b!3761373 (= lt!1301913 (size!30191 v!6347))))

(declare-fun b!3761374 () Bool)

(assert (=> b!3761374 (= e!2326378 false)))

(declare-fun lt!1301914 () List!40239)

(declare-fun list!14806 (BalanceConc!24158) List!40239)

(assert (=> b!3761374 (= lt!1301914 (list!14806 acc!400))))

(declare-fun lt!1301915 () List!40241)

(declare-fun dropList!1271 (BalanceConc!24160 Int) List!40241)

(assert (=> b!3761374 (= lt!1301915 (dropList!1271 v!6347 from!841))))

(assert (= (and start!353220 res!1523109) b!3761373))

(assert (= (and b!3761373 res!1523110) b!3761374))

(assert (= start!353220 b!3761375))

(assert (= start!353220 b!3761376))

(declare-fun m!4255407 () Bool)

(assert (=> b!3761375 m!4255407))

(declare-fun m!4255409 () Bool)

(assert (=> b!3761373 m!4255409))

(declare-fun m!4255411 () Bool)

(assert (=> b!3761374 m!4255411))

(declare-fun m!4255413 () Bool)

(assert (=> b!3761374 m!4255413))

(declare-fun m!4255415 () Bool)

(assert (=> start!353220 m!4255415))

(declare-fun m!4255417 () Bool)

(assert (=> start!353220 m!4255417))

(declare-fun m!4255419 () Bool)

(assert (=> b!3761376 m!4255419))

(check-sat (not b!3761373) (not b!3761375) (not b!3761374) (not start!353220) (not b!3761376))
(check-sat)
