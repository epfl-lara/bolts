; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353232 () Bool)

(assert start!353232)

(declare-fun b!3761448 () Bool)

(declare-fun e!2326449 () Bool)

(declare-datatypes ((List!40257 0))(
  ( (Nil!40133) (Cons!40133 (h!45553 (_ BitVec 16)) (t!303906 List!40257)) )
))
(declare-datatypes ((TokenValue!6384 0))(
  ( (FloatLiteralValue!12768 (text!45133 List!40257)) (TokenValueExt!6383 (__x!24985 Int)) (Broken!31920 (value!195970 List!40257)) (Object!6507) (End!6384) (Def!6384) (Underscore!6384) (Match!6384) (Else!6384) (Error!6384) (Case!6384) (If!6384) (Extends!6384) (Abstract!6384) (Class!6384) (Val!6384) (DelimiterValue!12768 (del!6444 List!40257)) (KeywordValue!6390 (value!195971 List!40257)) (CommentValue!12768 (value!195972 List!40257)) (WhitespaceValue!12768 (value!195973 List!40257)) (IndentationValue!6384 (value!195974 List!40257)) (String!45601) (Int32!6384) (Broken!31921 (value!195975 List!40257)) (Boolean!6385) (Unit!57857) (OperatorValue!6387 (op!6444 List!40257)) (IdentifierValue!12768 (value!195976 List!40257)) (IdentifierValue!12769 (value!195977 List!40257)) (WhitespaceValue!12769 (value!195978 List!40257)) (True!12768) (False!12768) (Broken!31922 (value!195979 List!40257)) (Broken!31923 (value!195980 List!40257)) (True!12769) (RightBrace!6384) (RightBracket!6384) (Colon!6384) (Null!6384) (Comma!6384) (LeftBracket!6384) (False!12769) (LeftBrace!6384) (ImaginaryLiteralValue!6384 (text!45134 List!40257)) (StringLiteralValue!19152 (value!195981 List!40257)) (EOFValue!6384 (value!195982 List!40257)) (IdentValue!6384 (value!195983 List!40257)) (DelimiterValue!12769 (value!195984 List!40257)) (DedentValue!6384 (value!195985 List!40257)) (NewLineValue!6384 (value!195986 List!40257)) (IntegerValue!19152 (value!195987 (_ BitVec 32)) (text!45135 List!40257)) (IntegerValue!19153 (value!195988 Int) (text!45136 List!40257)) (Times!6384) (Or!6384) (Equal!6384) (Minus!6384) (Broken!31924 (value!195989 List!40257)) (And!6384) (Div!6384) (LessEqual!6384) (Mod!6384) (Concat!17443) (Not!6384) (Plus!6384) (SpaceValue!6384 (value!195990 List!40257)) (IntegerValue!19154 (value!195991 Int) (text!45137 List!40257)) (StringLiteralValue!19153 (text!45138 List!40257)) (FloatLiteralValue!12769 (text!45139 List!40257)) (BytesLiteralValue!6384 (value!195992 List!40257)) (CommentValue!12769 (value!195993 List!40257)) (StringLiteralValue!19154 (value!195994 List!40257)) (ErrorTokenValue!6384 (msg!6445 List!40257)) )
))
(declare-datatypes ((C!22304 0))(
  ( (C!22305 (val!13228 Int)) )
))
(declare-datatypes ((Regex!11059 0))(
  ( (ElementMatch!11059 (c!651307 C!22304)) (Concat!17444 (regOne!22630 Regex!11059) (regTwo!22630 Regex!11059)) (EmptyExpr!11059) (Star!11059 (reg!11388 Regex!11059)) (EmptyLang!11059) (Union!11059 (regOne!22631 Regex!11059) (regTwo!22631 Regex!11059)) )
))
(declare-datatypes ((String!45602 0))(
  ( (String!45603 (value!195995 String)) )
))
(declare-datatypes ((List!40258 0))(
  ( (Nil!40134) (Cons!40134 (h!45554 C!22304) (t!303907 List!40258)) )
))
(declare-datatypes ((IArray!24593 0))(
  ( (IArray!24594 (innerList!12354 List!40258)) )
))
(declare-datatypes ((Conc!12294 0))(
  ( (Node!12294 (left!31068 Conc!12294) (right!31398 Conc!12294) (csize!24818 Int) (cheight!12505 Int)) (Leaf!19069 (xs!15500 IArray!24593) (csize!24819 Int)) (Empty!12294) )
))
(declare-datatypes ((BalanceConc!24182 0))(
  ( (BalanceConc!24183 (c!651308 Conc!12294)) )
))
(declare-datatypes ((TokenValueInjection!12196 0))(
  ( (TokenValueInjection!12197 (toValue!8510 Int) (toChars!8369 Int)) )
))
(declare-datatypes ((Rule!12108 0))(
  ( (Rule!12109 (regex!6154 Regex!11059) (tag!7014 String!45602) (isSeparator!6154 Bool) (transformation!6154 TokenValueInjection!12196)) )
))
(declare-datatypes ((Token!11446 0))(
  ( (Token!11447 (value!195996 TokenValue!6384) (rule!8918 Rule!12108) (size!30202 Int) (originalCharacters!6754 List!40258)) )
))
(declare-datatypes ((List!40259 0))(
  ( (Nil!40135) (Cons!40135 (h!45555 Token!11446) (t!303908 List!40259)) )
))
(declare-datatypes ((IArray!24595 0))(
  ( (IArray!24596 (innerList!12355 List!40259)) )
))
(declare-datatypes ((Conc!12295 0))(
  ( (Node!12295 (left!31069 Conc!12295) (right!31399 Conc!12295) (csize!24820 Int) (cheight!12506 Int)) (Leaf!19070 (xs!15501 IArray!24595) (csize!24821 Int)) (Empty!12295) )
))
(declare-datatypes ((BalanceConc!24184 0))(
  ( (BalanceConc!24185 (c!651309 Conc!12295)) )
))
(declare-fun v!6347 () BalanceConc!24184)

(declare-fun tp!1149456 () Bool)

(declare-fun inv!53840 (Conc!12295) Bool)

(assert (=> b!3761448 (= e!2326449 (and (inv!53840 (c!651309 v!6347)) tp!1149456))))

(declare-fun b!3761445 () Bool)

(declare-fun e!2326450 () Bool)

(declare-fun e!2326451 () Bool)

(assert (=> b!3761445 (= e!2326450 e!2326451)))

(declare-fun res!1523145 () Bool)

(assert (=> b!3761445 (=> (not res!1523145) (not e!2326451))))

(declare-fun from!841 () Int)

(declare-fun lt!1302034 () Int)

(assert (=> b!3761445 (= res!1523145 (and (<= from!841 lt!1302034) (< from!841 lt!1302034)))))

(declare-fun size!30203 (BalanceConc!24184) Int)

(assert (=> b!3761445 (= lt!1302034 (size!30203 v!6347))))

(declare-fun res!1523146 () Bool)

(assert (=> start!353232 (=> (not res!1523146) (not e!2326450))))

(declare-datatypes ((LexerInterface!5743 0))(
  ( (LexerInterfaceExt!5740 (__x!24986 Int)) (Lexer!5741) )
))
(declare-fun thiss!13650 () LexerInterface!5743)

(get-info :version)

(assert (=> start!353232 (= res!1523146 (and ((_ is Lexer!5741) thiss!13650) (>= from!841 0)))))

(assert (=> start!353232 e!2326450))

(assert (=> start!353232 true))

(declare-fun acc!400 () BalanceConc!24182)

(declare-fun e!2326452 () Bool)

(declare-fun inv!53841 (BalanceConc!24182) Bool)

(assert (=> start!353232 (and (inv!53841 acc!400) e!2326452)))

(declare-fun inv!53842 (BalanceConc!24184) Bool)

(assert (=> start!353232 (and (inv!53842 v!6347) e!2326449)))

(declare-fun b!3761446 () Bool)

(assert (=> b!3761446 (= e!2326451 (not true))))

(declare-fun lt!1302033 () List!40258)

(declare-fun list!14813 (BalanceConc!24182) List!40258)

(assert (=> b!3761446 (= lt!1302033 (list!14813 acc!400))))

(declare-fun lt!1302031 () List!40259)

(declare-fun dropList!1273 (BalanceConc!24184 Int) List!40259)

(assert (=> b!3761446 (= lt!1302031 (dropList!1273 v!6347 from!841))))

(declare-fun lt!1302030 () BalanceConc!24182)

(declare-fun printTailRec!1608 (LexerInterface!5743 BalanceConc!24184 Int BalanceConc!24182) BalanceConc!24182)

(declare-fun ++!9952 (BalanceConc!24182 BalanceConc!24182) BalanceConc!24182)

(declare-fun charsOf!4004 (Token!11446) BalanceConc!24182)

(declare-fun apply!9448 (BalanceConc!24184 Int) Token!11446)

(assert (=> b!3761446 (= lt!1302030 (printTailRec!1608 thiss!13650 v!6347 (+ 1 from!841) (++!9952 acc!400 (charsOf!4004 (apply!9448 v!6347 from!841)))))))

(declare-fun lt!1302032 () List!40259)

(declare-fun lt!1302029 () List!40259)

(declare-fun tail!5773 (List!40259) List!40259)

(declare-fun drop!2099 (List!40259 Int) List!40259)

(assert (=> b!3761446 (= (tail!5773 lt!1302032) (drop!2099 lt!1302029 (+ 1 from!841)))))

(declare-datatypes ((Unit!57858 0))(
  ( (Unit!57859) )
))
(declare-fun lt!1302028 () Unit!57858)

(declare-fun lemmaDropTail!1119 (List!40259 Int) Unit!57858)

(assert (=> b!3761446 (= lt!1302028 (lemmaDropTail!1119 lt!1302029 from!841))))

(declare-fun head!8046 (List!40259) Token!11446)

(declare-fun apply!9449 (List!40259 Int) Token!11446)

(assert (=> b!3761446 (= (head!8046 lt!1302032) (apply!9449 lt!1302029 from!841))))

(assert (=> b!3761446 (= lt!1302032 (drop!2099 lt!1302029 from!841))))

(declare-fun lt!1302035 () Unit!57858)

(declare-fun lemmaDropApply!1235 (List!40259 Int) Unit!57858)

(assert (=> b!3761446 (= lt!1302035 (lemmaDropApply!1235 lt!1302029 from!841))))

(declare-fun list!14814 (BalanceConc!24184) List!40259)

(assert (=> b!3761446 (= lt!1302029 (list!14814 v!6347))))

(declare-fun b!3761447 () Bool)

(declare-fun tp!1149455 () Bool)

(declare-fun inv!53843 (Conc!12294) Bool)

(assert (=> b!3761447 (= e!2326452 (and (inv!53843 (c!651308 acc!400)) tp!1149455))))

(assert (= (and start!353232 res!1523146) b!3761445))

(assert (= (and b!3761445 res!1523145) b!3761446))

(assert (= start!353232 b!3761447))

(assert (= start!353232 b!3761448))

(declare-fun m!4255587 () Bool)

(assert (=> b!3761445 m!4255587))

(declare-fun m!4255589 () Bool)

(assert (=> start!353232 m!4255589))

(declare-fun m!4255591 () Bool)

(assert (=> start!353232 m!4255591))

(declare-fun m!4255593 () Bool)

(assert (=> b!3761448 m!4255593))

(declare-fun m!4255595 () Bool)

(assert (=> b!3761447 m!4255595))

(declare-fun m!4255597 () Bool)

(assert (=> b!3761446 m!4255597))

(declare-fun m!4255599 () Bool)

(assert (=> b!3761446 m!4255599))

(declare-fun m!4255601 () Bool)

(assert (=> b!3761446 m!4255601))

(declare-fun m!4255603 () Bool)

(assert (=> b!3761446 m!4255603))

(declare-fun m!4255605 () Bool)

(assert (=> b!3761446 m!4255605))

(declare-fun m!4255607 () Bool)

(assert (=> b!3761446 m!4255607))

(assert (=> b!3761446 m!4255599))

(declare-fun m!4255609 () Bool)

(assert (=> b!3761446 m!4255609))

(declare-fun m!4255611 () Bool)

(assert (=> b!3761446 m!4255611))

(declare-fun m!4255613 () Bool)

(assert (=> b!3761446 m!4255613))

(declare-fun m!4255615 () Bool)

(assert (=> b!3761446 m!4255615))

(declare-fun m!4255617 () Bool)

(assert (=> b!3761446 m!4255617))

(assert (=> b!3761446 m!4255607))

(assert (=> b!3761446 m!4255597))

(declare-fun m!4255619 () Bool)

(assert (=> b!3761446 m!4255619))

(declare-fun m!4255621 () Bool)

(assert (=> b!3761446 m!4255621))

(declare-fun m!4255623 () Bool)

(assert (=> b!3761446 m!4255623))

(check-sat (not b!3761448) (not b!3761447) (not b!3761445) (not b!3761446) (not start!353232))
(check-sat)
