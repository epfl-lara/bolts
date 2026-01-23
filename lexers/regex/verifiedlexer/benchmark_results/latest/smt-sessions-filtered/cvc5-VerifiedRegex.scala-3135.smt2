; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184624 () Bool)

(assert start!184624)

(declare-fun b!1849955 () Bool)

(declare-fun b_free!51603 () Bool)

(declare-fun b_next!52307 () Bool)

(assert (=> b!1849955 (= b_free!51603 (not b_next!52307))))

(declare-fun tp!523108 () Bool)

(declare-fun b_and!143825 () Bool)

(assert (=> b!1849955 (= tp!523108 b_and!143825)))

(declare-fun b_free!51605 () Bool)

(declare-fun b_next!52309 () Bool)

(assert (=> b!1849955 (= b_free!51605 (not b_next!52309))))

(declare-fun tp!523113 () Bool)

(declare-fun b_and!143827 () Bool)

(assert (=> b!1849955 (= tp!523113 b_and!143827)))

(declare-fun b!1849956 () Bool)

(declare-fun b_free!51607 () Bool)

(declare-fun b_next!52311 () Bool)

(assert (=> b!1849956 (= b_free!51607 (not b_next!52311))))

(declare-fun tp!523109 () Bool)

(declare-fun b_and!143829 () Bool)

(assert (=> b!1849956 (= tp!523109 b_and!143829)))

(declare-fun b_free!51609 () Bool)

(declare-fun b_next!52313 () Bool)

(assert (=> b!1849956 (= b_free!51609 (not b_next!52313))))

(declare-fun tp!523114 () Bool)

(declare-fun b_and!143831 () Bool)

(assert (=> b!1849956 (= tp!523114 b_and!143831)))

(declare-fun e!1181880 () Bool)

(assert (=> b!1849955 (= e!1181880 (and tp!523108 tp!523113))))

(declare-fun e!1181881 () Bool)

(assert (=> b!1849956 (= e!1181881 (and tp!523109 tp!523114))))

(declare-fun b!1849957 () Bool)

(declare-fun e!1181882 () Bool)

(assert (=> b!1849957 (= e!1181882 false)))

(declare-datatypes ((List!20503 0))(
  ( (Nil!20431) (Cons!20431 (h!25832 (_ BitVec 16)) (t!172276 List!20503)) )
))
(declare-datatypes ((TokenValue!3778 0))(
  ( (FloatLiteralValue!7556 (text!26891 List!20503)) (TokenValueExt!3777 (__x!12832 Int)) (Broken!18890 (value!114919 List!20503)) (Object!3849) (End!3778) (Def!3778) (Underscore!3778) (Match!3778) (Else!3778) (Error!3778) (Case!3778) (If!3778) (Extends!3778) (Abstract!3778) (Class!3778) (Val!3778) (DelimiterValue!7556 (del!3838 List!20503)) (KeywordValue!3784 (value!114920 List!20503)) (CommentValue!7556 (value!114921 List!20503)) (WhitespaceValue!7556 (value!114922 List!20503)) (IndentationValue!3778 (value!114923 List!20503)) (String!23455) (Int32!3778) (Broken!18891 (value!114924 List!20503)) (Boolean!3779) (Unit!35119) (OperatorValue!3781 (op!3838 List!20503)) (IdentifierValue!7556 (value!114925 List!20503)) (IdentifierValue!7557 (value!114926 List!20503)) (WhitespaceValue!7557 (value!114927 List!20503)) (True!7556) (False!7556) (Broken!18892 (value!114928 List!20503)) (Broken!18893 (value!114929 List!20503)) (True!7557) (RightBrace!3778) (RightBracket!3778) (Colon!3778) (Null!3778) (Comma!3778) (LeftBracket!3778) (False!7557) (LeftBrace!3778) (ImaginaryLiteralValue!3778 (text!26892 List!20503)) (StringLiteralValue!11334 (value!114930 List!20503)) (EOFValue!3778 (value!114931 List!20503)) (IdentValue!3778 (value!114932 List!20503)) (DelimiterValue!7557 (value!114933 List!20503)) (DedentValue!3778 (value!114934 List!20503)) (NewLineValue!3778 (value!114935 List!20503)) (IntegerValue!11334 (value!114936 (_ BitVec 32)) (text!26893 List!20503)) (IntegerValue!11335 (value!114937 Int) (text!26894 List!20503)) (Times!3778) (Or!3778) (Equal!3778) (Minus!3778) (Broken!18894 (value!114938 List!20503)) (And!3778) (Div!3778) (LessEqual!3778) (Mod!3778) (Concat!8800) (Not!3778) (Plus!3778) (SpaceValue!3778 (value!114939 List!20503)) (IntegerValue!11336 (value!114940 Int) (text!26895 List!20503)) (StringLiteralValue!11335 (text!26896 List!20503)) (FloatLiteralValue!7557 (text!26897 List!20503)) (BytesLiteralValue!3778 (value!114941 List!20503)) (CommentValue!7557 (value!114942 List!20503)) (StringLiteralValue!11336 (value!114943 List!20503)) (ErrorTokenValue!3778 (msg!3839 List!20503)) )
))
(declare-datatypes ((C!10194 0))(
  ( (C!10195 (val!5823 Int)) )
))
(declare-datatypes ((Regex!5022 0))(
  ( (ElementMatch!5022 (c!301979 C!10194)) (Concat!8801 (regOne!10556 Regex!5022) (regTwo!10556 Regex!5022)) (EmptyExpr!5022) (Star!5022 (reg!5351 Regex!5022)) (EmptyLang!5022) (Union!5022 (regOne!10557 Regex!5022) (regTwo!10557 Regex!5022)) )
))
(declare-datatypes ((String!23456 0))(
  ( (String!23457 (value!114944 String)) )
))
(declare-datatypes ((List!20504 0))(
  ( (Nil!20432) (Cons!20432 (h!25833 C!10194) (t!172277 List!20504)) )
))
(declare-datatypes ((IArray!13529 0))(
  ( (IArray!13530 (innerList!6822 List!20504)) )
))
(declare-datatypes ((Conc!6762 0))(
  ( (Node!6762 (left!16435 Conc!6762) (right!16765 Conc!6762) (csize!13754 Int) (cheight!6973 Int)) (Leaf!9898 (xs!9638 IArray!13529) (csize!13755 Int)) (Empty!6762) )
))
(declare-datatypes ((BalanceConc!13446 0))(
  ( (BalanceConc!13447 (c!301980 Conc!6762)) )
))
(declare-datatypes ((TokenValueInjection!7172 0))(
  ( (TokenValueInjection!7173 (toValue!5233 Int) (toChars!5092 Int)) )
))
(declare-datatypes ((Rule!7124 0))(
  ( (Rule!7125 (regex!3662 Regex!5022) (tag!4076 String!23456) (isSeparator!3662 Bool) (transformation!3662 TokenValueInjection!7172)) )
))
(declare-datatypes ((Token!6878 0))(
  ( (Token!6879 (value!114945 TokenValue!3778) (rule!5856 Rule!7124) (size!16147 Int) (originalCharacters!4470 List!20504)) )
))
(declare-datatypes ((List!20505 0))(
  ( (Nil!20433) (Cons!20433 (h!25834 Token!6878) (t!172278 List!20505)) )
))
(declare-datatypes ((IArray!13531 0))(
  ( (IArray!13532 (innerList!6823 List!20505)) )
))
(declare-datatypes ((Conc!6763 0))(
  ( (Node!6763 (left!16436 Conc!6763) (right!16766 Conc!6763) (csize!13756 Int) (cheight!6974 Int)) (Leaf!9899 (xs!9639 IArray!13531) (csize!13757 Int)) (Empty!6763) )
))
(declare-datatypes ((BalanceConc!13448 0))(
  ( (BalanceConc!13449 (c!301981 Conc!6763)) )
))
(declare-fun lt!715429 () BalanceConc!13448)

(declare-fun t!6207 () Token!6878)

(declare-fun singletonSeq!1792 (Token!6878) BalanceConc!13448)

(assert (=> b!1849957 (= lt!715429 (singletonSeq!1792 t!6207))))

(declare-datatypes ((List!20506 0))(
  ( (Nil!20434) (Cons!20434 (h!25835 Rule!7124) (t!172279 List!20506)) )
))
(declare-fun rs!164 () List!20506)

(declare-fun tp!523115 () Bool)

(declare-fun b!1849958 () Bool)

(declare-fun e!1181887 () Bool)

(declare-fun inv!26826 (String!23456) Bool)

(declare-fun inv!26829 (TokenValueInjection!7172) Bool)

(assert (=> b!1849958 (= e!1181887 (and tp!523115 (inv!26826 (tag!4076 (h!25835 rs!164))) (inv!26829 (transformation!3662 (h!25835 rs!164))) e!1181880))))

(declare-fun b!1849959 () Bool)

(declare-fun res!830622 () Bool)

(assert (=> b!1849959 (=> (not res!830622) (not e!1181882))))

(declare-datatypes ((LexerInterface!3285 0))(
  ( (LexerInterfaceExt!3282 (__x!12833 Int)) (Lexer!3283) )
))
(declare-fun thiss!10908 () LexerInterface!3285)

(declare-fun rulesInvariant!2954 (LexerInterface!3285 List!20506) Bool)

(assert (=> b!1849959 (= res!830622 (rulesInvariant!2954 thiss!10908 rs!164))))

(declare-fun b!1849961 () Bool)

(declare-fun res!830621 () Bool)

(assert (=> b!1849961 (=> (not res!830621) (not e!1181882))))

(declare-fun isEmpty!12781 (List!20506) Bool)

(assert (=> b!1849961 (= res!830621 (not (isEmpty!12781 rs!164)))))

(declare-fun b!1849962 () Bool)

(declare-fun e!1181885 () Bool)

(declare-fun tp!523112 () Bool)

(assert (=> b!1849962 (= e!1181885 (and e!1181887 tp!523112))))

(declare-fun e!1181888 () Bool)

(declare-fun tp!523111 () Bool)

(declare-fun b!1849963 () Bool)

(assert (=> b!1849963 (= e!1181888 (and tp!523111 (inv!26826 (tag!4076 (rule!5856 t!6207))) (inv!26829 (transformation!3662 (rule!5856 t!6207))) e!1181881))))

(declare-fun res!830623 () Bool)

(assert (=> start!184624 (=> (not res!830623) (not e!1181882))))

(assert (=> start!184624 (= res!830623 (is-Lexer!3283 thiss!10908))))

(assert (=> start!184624 e!1181882))

(assert (=> start!184624 true))

(assert (=> start!184624 e!1181885))

(declare-fun e!1181889 () Bool)

(declare-fun inv!26830 (Token!6878) Bool)

(assert (=> start!184624 (and (inv!26830 t!6207) e!1181889)))

(declare-fun tp!523110 () Bool)

(declare-fun b!1849960 () Bool)

(declare-fun inv!21 (TokenValue!3778) Bool)

(assert (=> b!1849960 (= e!1181889 (and (inv!21 (value!114945 t!6207)) e!1181888 tp!523110))))

(assert (= (and start!184624 res!830623) b!1849961))

(assert (= (and b!1849961 res!830621) b!1849959))

(assert (= (and b!1849959 res!830622) b!1849957))

(assert (= b!1849958 b!1849955))

(assert (= b!1849962 b!1849958))

(assert (= (and start!184624 (is-Cons!20434 rs!164)) b!1849962))

(assert (= b!1849963 b!1849956))

(assert (= b!1849960 b!1849963))

(assert (= start!184624 b!1849960))

(declare-fun m!2276869 () Bool)

(assert (=> b!1849960 m!2276869))

(declare-fun m!2276871 () Bool)

(assert (=> start!184624 m!2276871))

(declare-fun m!2276873 () Bool)

(assert (=> b!1849963 m!2276873))

(declare-fun m!2276875 () Bool)

(assert (=> b!1849963 m!2276875))

(declare-fun m!2276877 () Bool)

(assert (=> b!1849958 m!2276877))

(declare-fun m!2276879 () Bool)

(assert (=> b!1849958 m!2276879))

(declare-fun m!2276881 () Bool)

(assert (=> b!1849961 m!2276881))

(declare-fun m!2276883 () Bool)

(assert (=> b!1849957 m!2276883))

(declare-fun m!2276885 () Bool)

(assert (=> b!1849959 m!2276885))

(push 1)

(assert b_and!143831)

(assert (not b!1849963))

(assert (not b_next!52311))

(assert (not b!1849962))

(assert (not start!184624))

(assert b_and!143827)

(assert b_and!143829)

(assert (not b_next!52313))

(assert b_and!143825)

(assert (not b!1849957))

(assert (not b_next!52309))

(assert (not b!1849959))

(assert (not b!1849961))

(assert (not b!1849958))

(assert (not b!1849960))

(assert (not b_next!52307))

(check-sat)

(pop 1)

(push 1)

(assert b_and!143831)

(assert (not b_next!52309))

(assert (not b_next!52311))

(assert b_and!143827)

(assert b_and!143829)

(assert (not b_next!52313))

(assert b_and!143825)

(assert (not b_next!52307))

(check-sat)

(pop 1)

