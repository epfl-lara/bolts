; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!746494 () Bool)

(assert start!746494)

(declare-fun b!7909288 () Bool)

(declare-fun b_free!135147 () Bool)

(declare-fun b_next!135937 () Bool)

(assert (=> b!7909288 (= b_free!135147 (not b_next!135937))))

(declare-fun tp!2356183 () Bool)

(declare-fun b_and!353391 () Bool)

(assert (=> b!7909288 (= tp!2356183 b_and!353391)))

(declare-fun b_free!135149 () Bool)

(declare-fun b_next!135939 () Bool)

(assert (=> b!7909288 (= b_free!135149 (not b_next!135939))))

(declare-fun tp!2356185 () Bool)

(declare-fun b_and!353393 () Bool)

(assert (=> b!7909288 (= tp!2356185 b_and!353393)))

(declare-fun b!7909285 () Bool)

(declare-fun res!3139186 () Bool)

(declare-fun e!4668827 () Bool)

(assert (=> b!7909285 (=> (not res!3139186) (not e!4668827))))

(assert (=> b!7909285 (= res!3139186 false)))

(declare-fun b!7909286 () Bool)

(declare-fun res!3139190 () Bool)

(assert (=> b!7909286 (=> (not res!3139190) (not e!4668827))))

(declare-datatypes ((List!74463 0))(
  ( (Nil!74339) (Cons!74339 (h!80787 (_ BitVec 16)) (t!389816 List!74463)) )
))
(declare-datatypes ((C!43038 0))(
  ( (C!43039 (val!31983 Int)) )
))
(declare-datatypes ((List!74464 0))(
  ( (Nil!74340) (Cons!74340 (h!80788 C!43038) (t!389817 List!74464)) )
))
(declare-datatypes ((IArray!31711 0))(
  ( (IArray!31712 (innerList!15913 List!74464)) )
))
(declare-datatypes ((Conc!15825 0))(
  ( (Node!15825 (left!56714 Conc!15825) (right!57044 Conc!15825) (csize!31880 Int) (cheight!16036 Int)) (Leaf!30119 (xs!19207 IArray!31711) (csize!31881 Int)) (Empty!15825) )
))
(declare-datatypes ((BalanceConc!30768 0))(
  ( (BalanceConc!30769 (c!1451051 Conc!15825)) )
))
(declare-datatypes ((TokenValue!8967 0))(
  ( (FloatLiteralValue!17934 (text!63214 List!74463)) (TokenValueExt!8966 (__x!35221 Int)) (Broken!44835 (value!288508 List!74463)) (Object!9090) (End!8967) (Def!8967) (Underscore!8967) (Match!8967) (Else!8967) (Error!8967) (Case!8967) (If!8967) (Extends!8967) (Abstract!8967) (Class!8967) (Val!8967) (DelimiterValue!17934 (del!9027 List!74463)) (KeywordValue!8973 (value!288509 List!74463)) (CommentValue!17934 (value!288510 List!74463)) (WhitespaceValue!17934 (value!288511 List!74463)) (IndentationValue!8967 (value!288512 List!74463)) (String!83258) (Int32!8967) (Broken!44836 (value!288513 List!74463)) (Boolean!8968) (Unit!169371) (OperatorValue!8970 (op!9027 List!74463)) (IdentifierValue!17934 (value!288514 List!74463)) (IdentifierValue!17935 (value!288515 List!74463)) (WhitespaceValue!17935 (value!288516 List!74463)) (True!17934) (False!17934) (Broken!44837 (value!288517 List!74463)) (Broken!44838 (value!288518 List!74463)) (True!17935) (RightBrace!8967) (RightBracket!8967) (Colon!8967) (Null!8967) (Comma!8967) (LeftBracket!8967) (False!17935) (LeftBrace!8967) (ImaginaryLiteralValue!8967 (text!63215 List!74463)) (StringLiteralValue!26901 (value!288519 List!74463)) (EOFValue!8967 (value!288520 List!74463)) (IdentValue!8967 (value!288521 List!74463)) (DelimiterValue!17935 (value!288522 List!74463)) (DedentValue!8967 (value!288523 List!74463)) (NewLineValue!8967 (value!288524 List!74463)) (IntegerValue!26901 (value!288525 (_ BitVec 32)) (text!63216 List!74463)) (IntegerValue!26902 (value!288526 Int) (text!63217 List!74463)) (Times!8967) (Or!8967) (Equal!8967) (Minus!8967) (Broken!44839 (value!288527 List!74463)) (And!8967) (Div!8967) (LessEqual!8967) (Mod!8967) (Concat!30321) (Not!8967) (Plus!8967) (SpaceValue!8967 (value!288528 List!74463)) (IntegerValue!26903 (value!288529 Int) (text!63218 List!74463)) (StringLiteralValue!26902 (text!63219 List!74463)) (FloatLiteralValue!17935 (text!63220 List!74463)) (BytesLiteralValue!8967 (value!288530 List!74463)) (CommentValue!17935 (value!288531 List!74463)) (StringLiteralValue!26903 (value!288532 List!74463)) (ErrorTokenValue!8967 (msg!9028 List!74463)) )
))
(declare-datatypes ((Regex!21354 0))(
  ( (ElementMatch!21354 (c!1451052 C!43038)) (Concat!30322 (regOne!43220 Regex!21354) (regTwo!43220 Regex!21354)) (EmptyExpr!21354) (Star!21354 (reg!21683 Regex!21354)) (EmptyLang!21354) (Union!21354 (regOne!43221 Regex!21354) (regTwo!43221 Regex!21354)) )
))
(declare-datatypes ((String!83259 0))(
  ( (String!83260 (value!288533 String)) )
))
(declare-datatypes ((TokenValueInjection!17242 0))(
  ( (TokenValueInjection!17243 (toValue!11708 Int) (toChars!11567 Int)) )
))
(declare-datatypes ((Rule!17102 0))(
  ( (Rule!17103 (regex!8651 Regex!21354) (tag!9515 String!83259) (isSeparator!8651 Bool) (transformation!8651 TokenValueInjection!17242)) )
))
(declare-fun rule!156 () Rule!17102)

(declare-fun input!1480 () List!74464)

(declare-fun isEmpty!42678 (List!74464) Bool)

(declare-datatypes ((tuple2!70374 0))(
  ( (tuple2!70375 (_1!38490 List!74464) (_2!38490 List!74464)) )
))
(declare-fun findLongestMatch!1944 (Regex!21354 List!74464) tuple2!70374)

(assert (=> b!7909286 (= res!3139190 (isEmpty!42678 (_1!38490 (findLongestMatch!1944 (regex!8651 rule!156) input!1480))))))

(declare-fun b!7909287 () Bool)

(declare-fun e!4668824 () Bool)

(declare-datatypes ((Token!15718 0))(
  ( (Token!15719 (value!288534 TokenValue!8967) (rule!11953 Rule!17102) (size!43103 Int) (originalCharacters!8890 List!74464)) )
))
(declare-datatypes ((tuple2!70376 0))(
  ( (tuple2!70377 (_1!38491 Token!15718) (_2!38491 List!74464)) )
))
(declare-fun lt!2685985 () tuple2!70376)

(assert (=> b!7909287 (= e!4668824 (= (rule!11953 (_1!38491 lt!2685985)) rule!156))))

(declare-fun e!4668825 () Bool)

(assert (=> b!7909288 (= e!4668825 (and tp!2356183 tp!2356185))))

(declare-fun b!7909289 () Bool)

(declare-fun res!3139189 () Bool)

(assert (=> b!7909289 (=> (not res!3139189) (not e!4668824))))

(declare-fun size!43104 (List!74464) Int)

(assert (=> b!7909289 (= res!3139189 (< (size!43104 (_2!38491 lt!2685985)) (size!43104 input!1480)))))

(declare-fun b!7909290 () Bool)

(declare-fun res!3139188 () Bool)

(assert (=> b!7909290 (=> (not res!3139188) (not e!4668827))))

(declare-datatypes ((LexerInterface!8243 0))(
  ( (LexerInterfaceExt!8240 (__x!35222 Int)) (Lexer!8241) )
))
(declare-fun thiss!15815 () LexerInterface!8243)

(declare-fun ruleValid!3962 (LexerInterface!8243 Rule!17102) Bool)

(assert (=> b!7909290 (= res!3139188 (ruleValid!3962 thiss!15815 rule!156))))

(declare-fun tp!2356186 () Bool)

(declare-fun b!7909291 () Bool)

(declare-fun e!4668828 () Bool)

(declare-fun inv!95370 (String!83259) Bool)

(declare-fun inv!95373 (TokenValueInjection!17242) Bool)

(assert (=> b!7909291 (= e!4668828 (and tp!2356186 (inv!95370 (tag!9515 rule!156)) (inv!95373 (transformation!8651 rule!156)) e!4668825))))

(declare-fun res!3139185 () Bool)

(assert (=> start!746494 (=> (not res!3139185) (not e!4668827))))

(assert (=> start!746494 (= res!3139185 (is-Lexer!8241 thiss!15815))))

(assert (=> start!746494 e!4668827))

(assert (=> start!746494 true))

(assert (=> start!746494 e!4668828))

(declare-fun e!4668823 () Bool)

(assert (=> start!746494 e!4668823))

(declare-fun b!7909292 () Bool)

(assert (=> b!7909292 (= e!4668827 e!4668824)))

(declare-fun res!3139191 () Bool)

(assert (=> b!7909292 (=> (not res!3139191) (not e!4668824))))

(declare-fun lt!2685986 () List!74464)

(declare-fun matchR!10677 (Regex!21354 List!74464) Bool)

(assert (=> b!7909292 (= res!3139191 (matchR!10677 (regex!8651 rule!156) lt!2685986))))

(declare-fun list!19297 (BalanceConc!30768) List!74464)

(declare-fun charsOf!5593 (Token!15718) BalanceConc!30768)

(assert (=> b!7909292 (= lt!2685986 (list!19297 (charsOf!5593 (_1!38491 lt!2685985))))))

(declare-datatypes ((Option!17931 0))(
  ( (None!17930) (Some!17930 (v!55087 tuple2!70376)) )
))
(declare-fun get!26729 (Option!17931) tuple2!70376)

(assert (=> b!7909292 (= lt!2685985 (get!26729 None!17930))))

(declare-fun b!7909293 () Bool)

(declare-fun res!3139187 () Bool)

(assert (=> b!7909293 (=> (not res!3139187) (not e!4668824))))

(declare-fun ++!18199 (List!74464 List!74464) List!74464)

(assert (=> b!7909293 (= res!3139187 (= (++!18199 lt!2685986 (_2!38491 lt!2685985)) input!1480))))

(declare-fun b!7909294 () Bool)

(declare-fun tp_is_empty!53083 () Bool)

(declare-fun tp!2356184 () Bool)

(assert (=> b!7909294 (= e!4668823 (and tp_is_empty!53083 tp!2356184))))

(assert (= (and start!746494 res!3139185) b!7909290))

(assert (= (and b!7909290 res!3139188) b!7909286))

(assert (= (and b!7909286 res!3139190) b!7909285))

(assert (= (and b!7909285 res!3139186) b!7909292))

(assert (= (and b!7909292 res!3139191) b!7909293))

(assert (= (and b!7909293 res!3139187) b!7909289))

(assert (= (and b!7909289 res!3139189) b!7909287))

(assert (= b!7909291 b!7909288))

(assert (= start!746494 b!7909291))

(assert (= (and start!746494 (is-Cons!74340 input!1480)) b!7909294))

(declare-fun m!8282916 () Bool)

(assert (=> b!7909290 m!8282916))

(declare-fun m!8282918 () Bool)

(assert (=> b!7909286 m!8282918))

(declare-fun m!8282920 () Bool)

(assert (=> b!7909286 m!8282920))

(declare-fun m!8282922 () Bool)

(assert (=> b!7909293 m!8282922))

(declare-fun m!8282924 () Bool)

(assert (=> b!7909292 m!8282924))

(declare-fun m!8282926 () Bool)

(assert (=> b!7909292 m!8282926))

(assert (=> b!7909292 m!8282926))

(declare-fun m!8282928 () Bool)

(assert (=> b!7909292 m!8282928))

(declare-fun m!8282930 () Bool)

(assert (=> b!7909292 m!8282930))

(declare-fun m!8282932 () Bool)

(assert (=> b!7909289 m!8282932))

(declare-fun m!8282934 () Bool)

(assert (=> b!7909289 m!8282934))

(declare-fun m!8282936 () Bool)

(assert (=> b!7909291 m!8282936))

(declare-fun m!8282938 () Bool)

(assert (=> b!7909291 m!8282938))

(push 1)

(assert tp_is_empty!53083)

(assert (not b!7909289))

(assert (not b!7909290))

(assert (not b!7909292))

(assert (not b!7909294))

(assert (not b_next!135937))

(assert (not b!7909293))

(assert (not b!7909291))

(assert (not b!7909286))

(assert b_and!353391)

(assert (not b_next!135939))

(assert b_and!353393)

(check-sat)

(pop 1)

(push 1)

(assert b_and!353391)

(assert b_and!353393)

(assert (not b_next!135937))

(assert (not b_next!135939))

(check-sat)

(pop 1)

