; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!134446 () Bool)

(assert start!134446)

(declare-fun b!1447127 () Bool)

(declare-fun res!655161 () Bool)

(declare-fun e!923161 () Bool)

(assert (=> b!1447127 (=> (not res!655161) (not e!923161))))

(declare-datatypes ((C!8082 0))(
  ( (C!8083 (val!4611 Int)) )
))
(declare-datatypes ((List!15070 0))(
  ( (Nil!15004) (Cons!15004 (h!20405 C!8082) (t!130361 List!15070)) )
))
(declare-datatypes ((IArray!10209 0))(
  ( (IArray!10210 (innerList!5162 List!15070)) )
))
(declare-datatypes ((Conc!5102 0))(
  ( (Node!5102 (left!12776 Conc!5102) (right!13106 Conc!5102) (csize!10434 Int) (cheight!5313 Int)) (Leaf!7623 (xs!7843 IArray!10209) (csize!10435 Int)) (Empty!5102) )
))
(declare-datatypes ((BalanceConc!10144 0))(
  ( (BalanceConc!10145 (c!238491 Conc!5102)) )
))
(declare-datatypes ((List!15071 0))(
  ( (Nil!15005) (Cons!15005 (h!20406 (_ BitVec 16)) (t!130362 List!15071)) )
))
(declare-datatypes ((TokenValue!2728 0))(
  ( (FloatLiteralValue!5456 (text!19541 List!15071)) (TokenValueExt!2727 (__x!9249 Int)) (Broken!13640 (value!84806 List!15071)) (Object!2793) (End!2728) (Def!2728) (Underscore!2728) (Match!2728) (Else!2728) (Error!2728) (Case!2728) (If!2728) (Extends!2728) (Abstract!2728) (Class!2728) (Val!2728) (DelimiterValue!5456 (del!2788 List!15071)) (KeywordValue!2734 (value!84807 List!15071)) (CommentValue!5456 (value!84808 List!15071)) (WhitespaceValue!5456 (value!84809 List!15071)) (IndentationValue!2728 (value!84810 List!15071)) (String!17897) (Int32!2728) (Broken!13641 (value!84811 List!15071)) (Boolean!2729) (Unit!23919) (OperatorValue!2731 (op!2788 List!15071)) (IdentifierValue!5456 (value!84812 List!15071)) (IdentifierValue!5457 (value!84813 List!15071)) (WhitespaceValue!5457 (value!84814 List!15071)) (True!5456) (False!5456) (Broken!13642 (value!84815 List!15071)) (Broken!13643 (value!84816 List!15071)) (True!5457) (RightBrace!2728) (RightBracket!2728) (Colon!2728) (Null!2728) (Comma!2728) (LeftBracket!2728) (False!5457) (LeftBrace!2728) (ImaginaryLiteralValue!2728 (text!19542 List!15071)) (StringLiteralValue!8184 (value!84817 List!15071)) (EOFValue!2728 (value!84818 List!15071)) (IdentValue!2728 (value!84819 List!15071)) (DelimiterValue!5457 (value!84820 List!15071)) (DedentValue!2728 (value!84821 List!15071)) (NewLineValue!2728 (value!84822 List!15071)) (IntegerValue!8184 (value!84823 (_ BitVec 32)) (text!19543 List!15071)) (IntegerValue!8185 (value!84824 Int) (text!19544 List!15071)) (Times!2728) (Or!2728) (Equal!2728) (Minus!2728) (Broken!13644 (value!84825 List!15071)) (And!2728) (Div!2728) (LessEqual!2728) (Mod!2728) (Concat!6680) (Not!2728) (Plus!2728) (SpaceValue!2728 (value!84826 List!15071)) (IntegerValue!8186 (value!84827 Int) (text!19545 List!15071)) (StringLiteralValue!8185 (text!19546 List!15071)) (FloatLiteralValue!5457 (text!19547 List!15071)) (BytesLiteralValue!2728 (value!84828 List!15071)) (CommentValue!5457 (value!84829 List!15071)) (StringLiteralValue!8186 (value!84830 List!15071)) (ErrorTokenValue!2728 (msg!2789 List!15071)) )
))
(declare-datatypes ((Regex!3952 0))(
  ( (ElementMatch!3952 (c!238492 C!8082)) (Concat!6681 (regOne!8416 Regex!3952) (regTwo!8416 Regex!3952)) (EmptyExpr!3952) (Star!3952 (reg!4281 Regex!3952)) (EmptyLang!3952) (Union!3952 (regOne!8417 Regex!3952) (regTwo!8417 Regex!3952)) )
))
(declare-datatypes ((String!17898 0))(
  ( (String!17899 (value!84831 String)) )
))
(declare-datatypes ((TokenValueInjection!5116 0))(
  ( (TokenValueInjection!5117 (toValue!3945 Int) (toChars!3804 Int)) )
))
(declare-datatypes ((Rule!5076 0))(
  ( (Rule!5077 (regex!2638 Regex!3952) (tag!2902 String!17898) (isSeparator!2638 Bool) (transformation!2638 TokenValueInjection!5116)) )
))
(declare-datatypes ((Token!4938 0))(
  ( (Token!4939 (value!84832 TokenValue!2728) (rule!4411 Rule!5076) (size!12304 Int) (originalCharacters!3500 List!15070)) )
))
(declare-datatypes ((List!15072 0))(
  ( (Nil!15006) (Cons!15006 (h!20407 Token!4938) (t!130363 List!15072)) )
))
(declare-datatypes ((IArray!10211 0))(
  ( (IArray!10212 (innerList!5163 List!15072)) )
))
(declare-datatypes ((Conc!5103 0))(
  ( (Node!5103 (left!12777 Conc!5103) (right!13107 Conc!5103) (csize!10436 Int) (cheight!5314 Int)) (Leaf!7624 (xs!7844 IArray!10211) (csize!10437 Int)) (Empty!5103) )
))
(declare-datatypes ((BalanceConc!10146 0))(
  ( (BalanceConc!10147 (c!238493 Conc!5103)) )
))
(declare-datatypes ((List!15073 0))(
  ( (Nil!15007) (Cons!15007 (h!20408 Rule!5076) (t!130364 List!15073)) )
))
(declare-datatypes ((PrintableTokens!1058 0))(
  ( (PrintableTokens!1059 (rules!11515 List!15073) (tokens!2023 BalanceConc!10146)) )
))
(declare-fun thiss!10022 () PrintableTokens!1058)

(declare-fun isEmpty!9364 (BalanceConc!10146) Bool)

(assert (=> b!1447127 (= res!655161 (not (isEmpty!9364 (tokens!2023 thiss!10022))))))

(declare-fun b!1447128 () Bool)

(declare-fun e!923164 () Bool)

(assert (=> b!1447128 (= e!923164 e!923161)))

(declare-fun res!655162 () Bool)

(assert (=> b!1447128 (=> (not res!655162) (not e!923161))))

(declare-fun other!32 () PrintableTokens!1058)

(assert (=> b!1447128 (= res!655162 (not (isEmpty!9364 (tokens!2023 other!32))))))

(declare-datatypes ((Unit!23920 0))(
  ( (Unit!23921) )
))
(declare-fun lt!499063 () Unit!23920)

(declare-fun lemmaInvariant!334 (PrintableTokens!1058) Unit!23920)

(assert (=> b!1447128 (= lt!499063 (lemmaInvariant!334 thiss!10022))))

(declare-fun lt!499061 () Unit!23920)

(assert (=> b!1447128 (= lt!499061 (lemmaInvariant!334 other!32))))

(declare-fun b!1447129 () Bool)

(declare-fun e!923159 () Bool)

(declare-fun tp!408053 () Bool)

(declare-fun inv!19997 (Conc!5103) Bool)

(assert (=> b!1447129 (= e!923159 (and (inv!19997 (c!238493 (tokens!2023 other!32))) tp!408053))))

(declare-fun b!1447130 () Bool)

(declare-fun e!923163 () Bool)

(declare-fun tp!408052 () Bool)

(assert (=> b!1447130 (= e!923163 (and (inv!19997 (c!238493 (tokens!2023 thiss!10022))) tp!408052))))

(declare-fun e!923162 () Bool)

(declare-fun tp!408051 () Bool)

(declare-fun b!1447131 () Bool)

(declare-fun inv!19998 (BalanceConc!10146) Bool)

(assert (=> b!1447131 (= e!923162 (and tp!408051 (inv!19998 (tokens!2023 other!32)) e!923159))))

(declare-fun e!923160 () Bool)

(declare-fun tp!408054 () Bool)

(declare-fun b!1447132 () Bool)

(assert (=> b!1447132 (= e!923160 (and tp!408054 (inv!19998 (tokens!2023 thiss!10022)) e!923163))))

(declare-fun b!1447133 () Bool)

(assert (=> b!1447133 (= e!923161 false)))

(declare-fun lt!499064 () Token!4938)

(declare-fun last!182 (BalanceConc!10146) Token!4938)

(assert (=> b!1447133 (= lt!499064 (last!182 (tokens!2023 thiss!10022)))))

(declare-fun lt!499062 () List!15072)

(declare-fun list!5990 (BalanceConc!10146) List!15072)

(assert (=> b!1447133 (= lt!499062 (list!5990 (tokens!2023 thiss!10022)))))

(declare-fun res!655163 () Bool)

(assert (=> start!134446 (=> (not res!655163) (not e!923164))))

(assert (=> start!134446 (= res!655163 (= (rules!11515 thiss!10022) (rules!11515 other!32)))))

(assert (=> start!134446 e!923164))

(declare-fun inv!19999 (PrintableTokens!1058) Bool)

(assert (=> start!134446 (and (inv!19999 thiss!10022) e!923160)))

(assert (=> start!134446 (and (inv!19999 other!32) e!923162)))

(assert (= (and start!134446 res!655163) b!1447128))

(assert (= (and b!1447128 res!655162) b!1447127))

(assert (= (and b!1447127 res!655161) b!1447133))

(assert (= b!1447132 b!1447130))

(assert (= start!134446 b!1447132))

(assert (= b!1447131 b!1447129))

(assert (= start!134446 b!1447131))

(declare-fun m!1669955 () Bool)

(assert (=> b!1447128 m!1669955))

(declare-fun m!1669957 () Bool)

(assert (=> b!1447128 m!1669957))

(declare-fun m!1669959 () Bool)

(assert (=> b!1447128 m!1669959))

(declare-fun m!1669961 () Bool)

(assert (=> b!1447127 m!1669961))

(declare-fun m!1669963 () Bool)

(assert (=> b!1447131 m!1669963))

(declare-fun m!1669965 () Bool)

(assert (=> start!134446 m!1669965))

(declare-fun m!1669967 () Bool)

(assert (=> start!134446 m!1669967))

(declare-fun m!1669969 () Bool)

(assert (=> b!1447129 m!1669969))

(declare-fun m!1669971 () Bool)

(assert (=> b!1447132 m!1669971))

(declare-fun m!1669973 () Bool)

(assert (=> b!1447133 m!1669973))

(declare-fun m!1669975 () Bool)

(assert (=> b!1447133 m!1669975))

(declare-fun m!1669977 () Bool)

(assert (=> b!1447130 m!1669977))

(push 1)

(assert (not b!1447132))

(assert (not b!1447130))

(assert (not b!1447129))

(assert (not b!1447131))

(assert (not b!1447128))

(assert (not b!1447127))

(assert (not b!1447133))

(assert (not start!134446))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

