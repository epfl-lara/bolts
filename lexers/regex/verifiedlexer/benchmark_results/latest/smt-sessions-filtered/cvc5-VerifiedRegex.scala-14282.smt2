; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!746070 () Bool)

(assert start!746070)

(declare-fun b!7906703 () Bool)

(declare-fun b_free!135011 () Bool)

(declare-fun b_next!135801 () Bool)

(assert (=> b!7906703 (= b_free!135011 (not b_next!135801))))

(declare-fun tp!2355510 () Bool)

(declare-fun b_and!353199 () Bool)

(assert (=> b!7906703 (= tp!2355510 b_and!353199)))

(declare-fun b_free!135013 () Bool)

(declare-fun b_next!135803 () Bool)

(assert (=> b!7906703 (= b_free!135013 (not b_next!135803))))

(declare-fun tp!2355511 () Bool)

(declare-fun b_and!353201 () Bool)

(assert (=> b!7906703 (= tp!2355511 b_and!353201)))

(declare-fun b!7906697 () Bool)

(declare-fun e!4667284 () Bool)

(declare-datatypes ((List!74407 0))(
  ( (Nil!74283) (Cons!74283 (h!80731 (_ BitVec 16)) (t!389660 List!74407)) )
))
(declare-datatypes ((TokenValue!8945 0))(
  ( (FloatLiteralValue!17890 (text!63060 List!74407)) (TokenValueExt!8944 (__x!35177 Int)) (Broken!44725 (value!287883 List!74407)) (Object!9068) (End!8945) (Def!8945) (Underscore!8945) (Match!8945) (Else!8945) (Error!8945) (Case!8945) (If!8945) (Extends!8945) (Abstract!8945) (Class!8945) (Val!8945) (DelimiterValue!17890 (del!9005 List!74407)) (KeywordValue!8951 (value!287884 List!74407)) (CommentValue!17890 (value!287885 List!74407)) (WhitespaceValue!17890 (value!287886 List!74407)) (IndentationValue!8945 (value!287887 List!74407)) (String!83148) (Int32!8945) (Broken!44726 (value!287888 List!74407)) (Boolean!8946) (Unit!169325) (OperatorValue!8948 (op!9005 List!74407)) (IdentifierValue!17890 (value!287889 List!74407)) (IdentifierValue!17891 (value!287890 List!74407)) (WhitespaceValue!17891 (value!287891 List!74407)) (True!17890) (False!17890) (Broken!44727 (value!287892 List!74407)) (Broken!44728 (value!287893 List!74407)) (True!17891) (RightBrace!8945) (RightBracket!8945) (Colon!8945) (Null!8945) (Comma!8945) (LeftBracket!8945) (False!17891) (LeftBrace!8945) (ImaginaryLiteralValue!8945 (text!63061 List!74407)) (StringLiteralValue!26835 (value!287894 List!74407)) (EOFValue!8945 (value!287895 List!74407)) (IdentValue!8945 (value!287896 List!74407)) (DelimiterValue!17891 (value!287897 List!74407)) (DedentValue!8945 (value!287898 List!74407)) (NewLineValue!8945 (value!287899 List!74407)) (IntegerValue!26835 (value!287900 (_ BitVec 32)) (text!63062 List!74407)) (IntegerValue!26836 (value!287901 Int) (text!63063 List!74407)) (Times!8945) (Or!8945) (Equal!8945) (Minus!8945) (Broken!44729 (value!287902 List!74407)) (And!8945) (Div!8945) (LessEqual!8945) (Mod!8945) (Concat!30277) (Not!8945) (Plus!8945) (SpaceValue!8945 (value!287903 List!74407)) (IntegerValue!26837 (value!287904 Int) (text!63064 List!74407)) (StringLiteralValue!26836 (text!63065 List!74407)) (FloatLiteralValue!17891 (text!63066 List!74407)) (BytesLiteralValue!8945 (value!287905 List!74407)) (CommentValue!17891 (value!287906 List!74407)) (StringLiteralValue!26837 (value!287907 List!74407)) (ErrorTokenValue!8945 (msg!9006 List!74407)) )
))
(declare-datatypes ((C!42994 0))(
  ( (C!42995 (val!31961 Int)) )
))
(declare-datatypes ((List!74408 0))(
  ( (Nil!74284) (Cons!74284 (h!80732 C!42994) (t!389661 List!74408)) )
))
(declare-datatypes ((IArray!31667 0))(
  ( (IArray!31668 (innerList!15891 List!74408)) )
))
(declare-datatypes ((Conc!15803 0))(
  ( (Node!15803 (left!56661 Conc!15803) (right!56991 Conc!15803) (csize!31836 Int) (cheight!16014 Int)) (Leaf!30086 (xs!19185 IArray!31667) (csize!31837 Int)) (Empty!15803) )
))
(declare-datatypes ((BalanceConc!30724 0))(
  ( (BalanceConc!30725 (c!1450776 Conc!15803)) )
))
(declare-datatypes ((Regex!21332 0))(
  ( (ElementMatch!21332 (c!1450777 C!42994)) (Concat!30278 (regOne!43176 Regex!21332) (regTwo!43176 Regex!21332)) (EmptyExpr!21332) (Star!21332 (reg!21661 Regex!21332)) (EmptyLang!21332) (Union!21332 (regOne!43177 Regex!21332) (regTwo!43177 Regex!21332)) )
))
(declare-datatypes ((String!83149 0))(
  ( (String!83150 (value!287908 String)) )
))
(declare-datatypes ((TokenValueInjection!17198 0))(
  ( (TokenValueInjection!17199 (toValue!11686 Int) (toChars!11545 Int)) )
))
(declare-datatypes ((Rule!17058 0))(
  ( (Rule!17059 (regex!8629 Regex!21332) (tag!9493 String!83149) (isSeparator!8629 Bool) (transformation!8629 TokenValueInjection!17198)) )
))
(declare-datatypes ((List!74409 0))(
  ( (Nil!74285) (Cons!74285 (h!80733 Rule!17058) (t!389662 List!74409)) )
))
(declare-fun rulesArg!141 () List!74409)

(declare-datatypes ((Token!15678 0))(
  ( (Token!15679 (value!287909 TokenValue!8945) (rule!11925 Rule!17058) (size!43061 Int) (originalCharacters!8870 List!74408)) )
))
(declare-datatypes ((tuple2!70298 0))(
  ( (tuple2!70299 (_1!38452 Token!15678) (_2!38452 List!74408)) )
))
(declare-fun lt!2685300 () tuple2!70298)

(declare-fun contains!20893 (List!74409 Rule!17058) Bool)

(assert (=> b!7906697 (= e!4667284 (contains!20893 rulesArg!141 (rule!11925 (_1!38452 lt!2685300))))))

(declare-fun b!7906698 () Bool)

(declare-fun e!4667287 () Bool)

(declare-fun e!4667282 () Bool)

(assert (=> b!7906698 (= e!4667287 e!4667282)))

(declare-fun res!3137655 () Bool)

(assert (=> b!7906698 (=> res!3137655 e!4667282)))

(declare-datatypes ((Option!17911 0))(
  ( (None!17910) (Some!17910 (v!55057 tuple2!70298)) )
))
(declare-fun lt!2685297 () Option!17911)

(declare-fun lt!2685301 () Option!17911)

(assert (=> b!7906698 (= res!3137655 true)))

(declare-fun input!1184 () List!74408)

(declare-datatypes ((LexerInterface!8221 0))(
  ( (LexerInterfaceExt!8218 (__x!35178 Int)) (Lexer!8219) )
))
(declare-fun thiss!14377 () LexerInterface!8221)

(declare-fun maxPrefix!4746 (LexerInterface!8221 List!74409 List!74408) Option!17911)

(assert (=> b!7906698 (= lt!2685301 (maxPrefix!4746 thiss!14377 (t!389662 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3797 (LexerInterface!8221 Rule!17058 List!74408) Option!17911)

(assert (=> b!7906698 (= lt!2685297 (maxPrefixOneRule!3797 thiss!14377 (h!80733 rulesArg!141) input!1184))))

(declare-fun b!7906699 () Bool)

(declare-fun e!4667283 () Bool)

(assert (=> b!7906699 (= e!4667282 e!4667283)))

(declare-fun res!3137653 () Bool)

(assert (=> b!7906699 (=> (not res!3137653) (not e!4667283))))

(assert (=> b!7906699 (= res!3137653 false)))

(declare-fun b!7906700 () Bool)

(declare-fun e!4667286 () Bool)

(declare-fun tp_is_empty!53039 () Bool)

(declare-fun tp!2355513 () Bool)

(assert (=> b!7906700 (= e!4667286 (and tp_is_empty!53039 tp!2355513))))

(declare-fun b!7906701 () Bool)

(declare-fun res!3137652 () Bool)

(declare-fun e!4667288 () Bool)

(assert (=> b!7906701 (=> (not res!3137652) (not e!4667288))))

(declare-fun rulesValidInductive!3440 (LexerInterface!8221 List!74409) Bool)

(assert (=> b!7906701 (= res!3137652 (rulesValidInductive!3440 thiss!14377 rulesArg!141))))

(declare-fun b!7906702 () Bool)

(declare-fun res!3137650 () Bool)

(assert (=> b!7906702 (=> (not res!3137650) (not e!4667284))))

(declare-fun apply!14352 (TokenValueInjection!17198 BalanceConc!30724) TokenValue!8945)

(declare-fun seqFromList!6170 (List!74408) BalanceConc!30724)

(assert (=> b!7906702 (= res!3137650 (= (value!287909 (_1!38452 lt!2685300)) (apply!14352 (transformation!8629 (rule!11925 (_1!38452 lt!2685300))) (seqFromList!6170 (originalCharacters!8870 (_1!38452 lt!2685300))))))))

(declare-fun res!3137651 () Bool)

(assert (=> start!746070 (=> (not res!3137651) (not e!4667288))))

(assert (=> start!746070 (= res!3137651 (is-Lexer!8219 thiss!14377))))

(assert (=> start!746070 e!4667288))

(assert (=> start!746070 true))

(declare-fun e!4667281 () Bool)

(assert (=> start!746070 e!4667281))

(assert (=> start!746070 e!4667286))

(declare-fun e!4667290 () Bool)

(assert (=> b!7906703 (= e!4667290 (and tp!2355510 tp!2355511))))

(declare-fun b!7906704 () Bool)

(declare-fun res!3137647 () Bool)

(assert (=> b!7906704 (=> (not res!3137647) (not e!4667284))))

(declare-fun lt!2685299 () List!74408)

(declare-fun ++!18183 (List!74408 List!74408) List!74408)

(assert (=> b!7906704 (= res!3137647 (= (++!18183 lt!2685299 (_2!38452 lt!2685300)) input!1184))))

(declare-fun b!7906705 () Bool)

(assert (=> b!7906705 (= e!4667288 (not e!4667287))))

(declare-fun res!3137648 () Bool)

(assert (=> b!7906705 (=> res!3137648 e!4667287)))

(assert (=> b!7906705 (= res!3137648 (or (and (is-Cons!74285 rulesArg!141) (is-Nil!74285 (t!389662 rulesArg!141))) (not (is-Cons!74285 rulesArg!141))))))

(declare-fun isPrefix!6462 (List!74408 List!74408) Bool)

(assert (=> b!7906705 (isPrefix!6462 input!1184 input!1184)))

(declare-datatypes ((Unit!169326 0))(
  ( (Unit!169327) )
))
(declare-fun lt!2685298 () Unit!169326)

(declare-fun lemmaIsPrefixRefl!3973 (List!74408 List!74408) Unit!169326)

(assert (=> b!7906705 (= lt!2685298 (lemmaIsPrefixRefl!3973 input!1184 input!1184))))

(declare-fun b!7906706 () Bool)

(declare-fun e!4667285 () Bool)

(declare-fun tp!2355509 () Bool)

(assert (=> b!7906706 (= e!4667281 (and e!4667285 tp!2355509))))

(declare-fun b!7906707 () Bool)

(declare-fun tp!2355512 () Bool)

(declare-fun inv!95293 (String!83149) Bool)

(declare-fun inv!95296 (TokenValueInjection!17198) Bool)

(assert (=> b!7906707 (= e!4667285 (and tp!2355512 (inv!95293 (tag!9493 (h!80733 rulesArg!141))) (inv!95296 (transformation!8629 (h!80733 rulesArg!141))) e!4667290))))

(declare-fun b!7906708 () Bool)

(declare-fun res!3137645 () Bool)

(assert (=> b!7906708 (=> (not res!3137645) (not e!4667284))))

(declare-fun size!43062 (List!74408) Int)

(assert (=> b!7906708 (= res!3137645 (< (size!43062 (_2!38452 lt!2685300)) (size!43062 input!1184)))))

(declare-fun b!7906709 () Bool)

(declare-fun res!3137654 () Bool)

(assert (=> b!7906709 (=> (not res!3137654) (not e!4667288))))

(declare-fun isEmpty!42636 (List!74409) Bool)

(assert (=> b!7906709 (= res!3137654 (not (isEmpty!42636 rulesArg!141)))))

(declare-fun b!7906710 () Bool)

(declare-fun res!3137649 () Bool)

(assert (=> b!7906710 (=> (not res!3137649) (not e!4667284))))

(declare-fun matchR!10659 (Regex!21332 List!74408) Bool)

(assert (=> b!7906710 (= res!3137649 (matchR!10659 (regex!8629 (rule!11925 (_1!38452 lt!2685300))) lt!2685299))))

(declare-fun b!7906711 () Bool)

(assert (=> b!7906711 (= e!4667283 e!4667284)))

(declare-fun res!3137646 () Bool)

(assert (=> b!7906711 (=> (not res!3137646) (not e!4667284))))

(assert (=> b!7906711 (= res!3137646 (= lt!2685299 (originalCharacters!8870 (_1!38452 lt!2685300))))))

(declare-fun list!19267 (BalanceConc!30724) List!74408)

(declare-fun charsOf!5573 (Token!15678) BalanceConc!30724)

(assert (=> b!7906711 (= lt!2685299 (list!19267 (charsOf!5573 (_1!38452 lt!2685300))))))

(declare-fun get!26698 (Option!17911) tuple2!70298)

(assert (=> b!7906711 (= lt!2685300 (get!26698 None!17910))))

(assert (= (and start!746070 res!3137651) b!7906701))

(assert (= (and b!7906701 res!3137652) b!7906709))

(assert (= (and b!7906709 res!3137654) b!7906705))

(assert (= (and b!7906705 (not res!3137648)) b!7906698))

(assert (= (and b!7906698 (not res!3137655)) b!7906699))

(assert (= (and b!7906699 res!3137653) b!7906711))

(assert (= (and b!7906711 res!3137646) b!7906708))

(assert (= (and b!7906708 res!3137645) b!7906704))

(assert (= (and b!7906704 res!3137647) b!7906702))

(assert (= (and b!7906702 res!3137650) b!7906710))

(assert (= (and b!7906710 res!3137649) b!7906697))

(assert (= b!7906707 b!7906703))

(assert (= b!7906706 b!7906707))

(assert (= (and start!746070 (is-Cons!74285 rulesArg!141)) b!7906706))

(assert (= (and start!746070 (is-Cons!74284 input!1184)) b!7906700))

(declare-fun m!8280908 () Bool)

(assert (=> b!7906711 m!8280908))

(assert (=> b!7906711 m!8280908))

(declare-fun m!8280910 () Bool)

(assert (=> b!7906711 m!8280910))

(declare-fun m!8280912 () Bool)

(assert (=> b!7906711 m!8280912))

(declare-fun m!8280914 () Bool)

(assert (=> b!7906709 m!8280914))

(declare-fun m!8280916 () Bool)

(assert (=> b!7906704 m!8280916))

(declare-fun m!8280918 () Bool)

(assert (=> b!7906705 m!8280918))

(declare-fun m!8280920 () Bool)

(assert (=> b!7906705 m!8280920))

(declare-fun m!8280922 () Bool)

(assert (=> b!7906710 m!8280922))

(declare-fun m!8280924 () Bool)

(assert (=> b!7906698 m!8280924))

(declare-fun m!8280926 () Bool)

(assert (=> b!7906698 m!8280926))

(declare-fun m!8280928 () Bool)

(assert (=> b!7906702 m!8280928))

(assert (=> b!7906702 m!8280928))

(declare-fun m!8280930 () Bool)

(assert (=> b!7906702 m!8280930))

(declare-fun m!8280932 () Bool)

(assert (=> b!7906697 m!8280932))

(declare-fun m!8280934 () Bool)

(assert (=> b!7906707 m!8280934))

(declare-fun m!8280936 () Bool)

(assert (=> b!7906707 m!8280936))

(declare-fun m!8280938 () Bool)

(assert (=> b!7906701 m!8280938))

(declare-fun m!8280940 () Bool)

(assert (=> b!7906708 m!8280940))

(declare-fun m!8280942 () Bool)

(assert (=> b!7906708 m!8280942))

(push 1)

(assert (not b!7906698))

(assert (not b!7906709))

(assert (not b!7906702))

(assert (not b!7906701))

(assert (not b_next!135801))

(assert (not b_next!135803))

(assert (not b!7906710))

(assert tp_is_empty!53039)

(assert b_and!353199)

(assert (not b!7906711))

(assert (not b!7906708))

(assert b_and!353201)

(assert (not b!7906705))

(assert (not b!7906700))

(assert (not b!7906697))

(assert (not b!7906706))

(assert (not b!7906707))

(assert (not b!7906704))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353201)

(assert b_and!353199)

(assert (not b_next!135803))

(assert (not b_next!135801))

(check-sat)

(pop 1)

