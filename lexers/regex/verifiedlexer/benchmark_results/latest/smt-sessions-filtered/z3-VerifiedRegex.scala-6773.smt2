; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353228 () Bool)

(assert start!353228)

(declare-fun b!3761422 () Bool)

(declare-fun e!2326428 () Bool)

(declare-fun from!841 () Int)

(declare-fun lt!1301985 () Int)

(assert (=> b!3761422 (= e!2326428 (not (and (>= (+ 1 from!841) 0) (<= (+ 1 from!841) lt!1301985))))))

(declare-datatypes ((C!22300 0))(
  ( (C!22301 (val!13226 Int)) )
))
(declare-datatypes ((List!40251 0))(
  ( (Nil!40127) (Cons!40127 (h!45547 C!22300) (t!303900 List!40251)) )
))
(declare-datatypes ((IArray!24585 0))(
  ( (IArray!24586 (innerList!12350 List!40251)) )
))
(declare-datatypes ((Conc!12290 0))(
  ( (Node!12290 (left!31063 Conc!12290) (right!31393 Conc!12290) (csize!24810 Int) (cheight!12501 Int)) (Leaf!19064 (xs!15496 IArray!24585) (csize!24811 Int)) (Empty!12290) )
))
(declare-datatypes ((BalanceConc!24174 0))(
  ( (BalanceConc!24175 (c!651301 Conc!12290)) )
))
(declare-fun acc!400 () BalanceConc!24174)

(declare-fun lt!1301987 () BalanceConc!24174)

(declare-datatypes ((List!40252 0))(
  ( (Nil!40128) (Cons!40128 (h!45548 (_ BitVec 16)) (t!303901 List!40252)) )
))
(declare-datatypes ((TokenValue!6382 0))(
  ( (FloatLiteralValue!12764 (text!45119 List!40252)) (TokenValueExt!6381 (__x!24981 Int)) (Broken!31910 (value!195913 List!40252)) (Object!6505) (End!6382) (Def!6382) (Underscore!6382) (Match!6382) (Else!6382) (Error!6382) (Case!6382) (If!6382) (Extends!6382) (Abstract!6382) (Class!6382) (Val!6382) (DelimiterValue!12764 (del!6442 List!40252)) (KeywordValue!6388 (value!195914 List!40252)) (CommentValue!12764 (value!195915 List!40252)) (WhitespaceValue!12764 (value!195916 List!40252)) (IndentationValue!6382 (value!195917 List!40252)) (String!45591) (Int32!6382) (Broken!31911 (value!195918 List!40252)) (Boolean!6383) (Unit!57851) (OperatorValue!6385 (op!6442 List!40252)) (IdentifierValue!12764 (value!195919 List!40252)) (IdentifierValue!12765 (value!195920 List!40252)) (WhitespaceValue!12765 (value!195921 List!40252)) (True!12764) (False!12764) (Broken!31912 (value!195922 List!40252)) (Broken!31913 (value!195923 List!40252)) (True!12765) (RightBrace!6382) (RightBracket!6382) (Colon!6382) (Null!6382) (Comma!6382) (LeftBracket!6382) (False!12765) (LeftBrace!6382) (ImaginaryLiteralValue!6382 (text!45120 List!40252)) (StringLiteralValue!19146 (value!195924 List!40252)) (EOFValue!6382 (value!195925 List!40252)) (IdentValue!6382 (value!195926 List!40252)) (DelimiterValue!12765 (value!195927 List!40252)) (DedentValue!6382 (value!195928 List!40252)) (NewLineValue!6382 (value!195929 List!40252)) (IntegerValue!19146 (value!195930 (_ BitVec 32)) (text!45121 List!40252)) (IntegerValue!19147 (value!195931 Int) (text!45122 List!40252)) (Times!6382) (Or!6382) (Equal!6382) (Minus!6382) (Broken!31914 (value!195932 List!40252)) (And!6382) (Div!6382) (LessEqual!6382) (Mod!6382) (Concat!17439) (Not!6382) (Plus!6382) (SpaceValue!6382 (value!195933 List!40252)) (IntegerValue!19148 (value!195934 Int) (text!45123 List!40252)) (StringLiteralValue!19147 (text!45124 List!40252)) (FloatLiteralValue!12765 (text!45125 List!40252)) (BytesLiteralValue!6382 (value!195935 List!40252)) (CommentValue!12765 (value!195936 List!40252)) (StringLiteralValue!19148 (value!195937 List!40252)) (ErrorTokenValue!6382 (msg!6443 List!40252)) )
))
(declare-datatypes ((Regex!11057 0))(
  ( (ElementMatch!11057 (c!651302 C!22300)) (Concat!17440 (regOne!22626 Regex!11057) (regTwo!22626 Regex!11057)) (EmptyExpr!11057) (Star!11057 (reg!11386 Regex!11057)) (EmptyLang!11057) (Union!11057 (regOne!22627 Regex!11057) (regTwo!22627 Regex!11057)) )
))
(declare-datatypes ((String!45592 0))(
  ( (String!45593 (value!195938 String)) )
))
(declare-datatypes ((TokenValueInjection!12192 0))(
  ( (TokenValueInjection!12193 (toValue!8508 Int) (toChars!8367 Int)) )
))
(declare-datatypes ((Rule!12104 0))(
  ( (Rule!12105 (regex!6152 Regex!11057) (tag!7012 String!45592) (isSeparator!6152 Bool) (transformation!6152 TokenValueInjection!12192)) )
))
(declare-datatypes ((Token!11442 0))(
  ( (Token!11443 (value!195939 TokenValue!6382) (rule!8916 Rule!12104) (size!30198 Int) (originalCharacters!6752 List!40251)) )
))
(declare-datatypes ((List!40253 0))(
  ( (Nil!40129) (Cons!40129 (h!45549 Token!11442) (t!303902 List!40253)) )
))
(declare-datatypes ((IArray!24587 0))(
  ( (IArray!24588 (innerList!12351 List!40253)) )
))
(declare-datatypes ((Conc!12291 0))(
  ( (Node!12291 (left!31064 Conc!12291) (right!31394 Conc!12291) (csize!24812 Int) (cheight!12502 Int)) (Leaf!19065 (xs!15497 IArray!24587) (csize!24813 Int)) (Empty!12291) )
))
(declare-datatypes ((BalanceConc!24176 0))(
  ( (BalanceConc!24177 (c!651303 Conc!12291)) )
))
(declare-fun v!6347 () BalanceConc!24176)

(declare-fun ++!9950 (BalanceConc!24174 BalanceConc!24174) BalanceConc!24174)

(declare-fun charsOf!4002 (Token!11442) BalanceConc!24174)

(declare-fun apply!9444 (BalanceConc!24176 Int) Token!11442)

(assert (=> b!3761422 (= lt!1301987 (++!9950 acc!400 (charsOf!4002 (apply!9444 v!6347 from!841))))))

(declare-fun lt!1301984 () List!40253)

(declare-fun lt!1301982 () List!40253)

(declare-fun tail!5771 (List!40253) List!40253)

(declare-fun drop!2097 (List!40253 Int) List!40253)

(assert (=> b!3761422 (= (tail!5771 lt!1301984) (drop!2097 lt!1301982 (+ 1 from!841)))))

(declare-datatypes ((Unit!57852 0))(
  ( (Unit!57853) )
))
(declare-fun lt!1301986 () Unit!57852)

(declare-fun lemmaDropTail!1117 (List!40253 Int) Unit!57852)

(assert (=> b!3761422 (= lt!1301986 (lemmaDropTail!1117 lt!1301982 from!841))))

(declare-fun head!8044 (List!40253) Token!11442)

(declare-fun apply!9445 (List!40253 Int) Token!11442)

(assert (=> b!3761422 (= (head!8044 lt!1301984) (apply!9445 lt!1301982 from!841))))

(assert (=> b!3761422 (= lt!1301984 (drop!2097 lt!1301982 from!841))))

(declare-fun lt!1301983 () Unit!57852)

(declare-fun lemmaDropApply!1233 (List!40253 Int) Unit!57852)

(assert (=> b!3761422 (= lt!1301983 (lemmaDropApply!1233 lt!1301982 from!841))))

(declare-fun list!14810 (BalanceConc!24176) List!40253)

(assert (=> b!3761422 (= lt!1301982 (list!14810 v!6347))))

(declare-fun b!3761424 () Bool)

(declare-fun e!2326427 () Bool)

(declare-fun tp!1149443 () Bool)

(declare-fun inv!53829 (Conc!12290) Bool)

(assert (=> b!3761424 (= e!2326427 (and (inv!53829 (c!651301 acc!400)) tp!1149443))))

(declare-fun res!1523134 () Bool)

(declare-fun e!2326425 () Bool)

(assert (=> start!353228 (=> (not res!1523134) (not e!2326425))))

(declare-datatypes ((LexerInterface!5741 0))(
  ( (LexerInterfaceExt!5738 (__x!24982 Int)) (Lexer!5739) )
))
(declare-fun thiss!13650 () LexerInterface!5741)

(get-info :version)

(assert (=> start!353228 (= res!1523134 (and ((_ is Lexer!5739) thiss!13650) (>= from!841 0)))))

(assert (=> start!353228 e!2326425))

(assert (=> start!353228 true))

(declare-fun e!2326426 () Bool)

(declare-fun inv!53830 (BalanceConc!24176) Bool)

(assert (=> start!353228 (and (inv!53830 v!6347) e!2326426)))

(declare-fun inv!53831 (BalanceConc!24174) Bool)

(assert (=> start!353228 (and (inv!53831 acc!400) e!2326427)))

(declare-fun b!3761421 () Bool)

(assert (=> b!3761421 (= e!2326425 e!2326428)))

(declare-fun res!1523133 () Bool)

(assert (=> b!3761421 (=> (not res!1523133) (not e!2326428))))

(assert (=> b!3761421 (= res!1523133 (and (<= from!841 lt!1301985) (< from!841 lt!1301985)))))

(declare-fun size!30199 (BalanceConc!24176) Int)

(assert (=> b!3761421 (= lt!1301985 (size!30199 v!6347))))

(declare-fun b!3761423 () Bool)

(declare-fun tp!1149444 () Bool)

(declare-fun inv!53832 (Conc!12291) Bool)

(assert (=> b!3761423 (= e!2326426 (and (inv!53832 (c!651303 v!6347)) tp!1149444))))

(assert (= (and start!353228 res!1523134) b!3761421))

(assert (= (and b!3761421 res!1523133) b!3761422))

(assert (= start!353228 b!3761423))

(assert (= start!353228 b!3761424))

(declare-fun m!4255517 () Bool)

(assert (=> b!3761424 m!4255517))

(declare-fun m!4255519 () Bool)

(assert (=> b!3761422 m!4255519))

(declare-fun m!4255521 () Bool)

(assert (=> b!3761422 m!4255521))

(declare-fun m!4255523 () Bool)

(assert (=> b!3761422 m!4255523))

(declare-fun m!4255525 () Bool)

(assert (=> b!3761422 m!4255525))

(declare-fun m!4255527 () Bool)

(assert (=> b!3761422 m!4255527))

(assert (=> b!3761422 m!4255519))

(declare-fun m!4255529 () Bool)

(assert (=> b!3761422 m!4255529))

(declare-fun m!4255531 () Bool)

(assert (=> b!3761422 m!4255531))

(declare-fun m!4255533 () Bool)

(assert (=> b!3761422 m!4255533))

(declare-fun m!4255535 () Bool)

(assert (=> b!3761422 m!4255535))

(declare-fun m!4255537 () Bool)

(assert (=> b!3761422 m!4255537))

(declare-fun m!4255539 () Bool)

(assert (=> b!3761422 m!4255539))

(assert (=> b!3761422 m!4255527))

(declare-fun m!4255541 () Bool)

(assert (=> b!3761421 m!4255541))

(declare-fun m!4255543 () Bool)

(assert (=> start!353228 m!4255543))

(declare-fun m!4255545 () Bool)

(assert (=> start!353228 m!4255545))

(declare-fun m!4255547 () Bool)

(assert (=> b!3761423 m!4255547))

(check-sat (not b!3761423) (not b!3761424) (not start!353228) (not b!3761421) (not b!3761422))
(check-sat)
