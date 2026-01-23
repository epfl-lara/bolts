; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!104380 () Bool)

(assert start!104380)

(declare-fun b!1179738 () Bool)

(declare-fun b_free!28005 () Bool)

(declare-fun b_next!28709 () Bool)

(assert (=> b!1179738 (= b_free!28005 (not b_next!28709))))

(declare-fun tp!335845 () Bool)

(declare-fun b_and!80949 () Bool)

(assert (=> b!1179738 (= tp!335845 b_and!80949)))

(declare-fun b_free!28007 () Bool)

(declare-fun b_next!28711 () Bool)

(assert (=> b!1179738 (= b_free!28007 (not b_next!28711))))

(declare-fun tp!335847 () Bool)

(declare-fun b_and!80951 () Bool)

(assert (=> b!1179738 (= tp!335847 b_and!80951)))

(declare-fun b!1179731 () Bool)

(declare-fun b_free!28009 () Bool)

(declare-fun b_next!28713 () Bool)

(assert (=> b!1179731 (= b_free!28009 (not b_next!28713))))

(declare-fun tp!335849 () Bool)

(declare-fun b_and!80953 () Bool)

(assert (=> b!1179731 (= tp!335849 b_and!80953)))

(declare-fun b_free!28011 () Bool)

(declare-fun b_next!28715 () Bool)

(assert (=> b!1179731 (= b_free!28011 (not b_next!28715))))

(declare-fun tp!335846 () Bool)

(declare-fun b_and!80955 () Bool)

(assert (=> b!1179731 (= tp!335846 b_and!80955)))

(declare-fun tp!335843 () Bool)

(declare-fun b!1179724 () Bool)

(declare-datatypes ((C!6934 0))(
  ( (C!6935 (val!3763 Int)) )
))
(declare-datatypes ((List!11736 0))(
  ( (Nil!11712) (Cons!11712 (h!17113 C!6934) (t!111306 List!11736)) )
))
(declare-datatypes ((IArray!7685 0))(
  ( (IArray!7686 (innerList!3900 List!11736)) )
))
(declare-datatypes ((Conc!3840 0))(
  ( (Node!3840 (left!10221 Conc!3840) (right!10551 Conc!3840) (csize!7910 Int) (cheight!4051 Int)) (Leaf!5890 (xs!6545 IArray!7685) (csize!7911 Int)) (Empty!3840) )
))
(declare-datatypes ((String!14189 0))(
  ( (String!14190 (value!66115 String)) )
))
(declare-datatypes ((List!11737 0))(
  ( (Nil!11713) (Cons!11713 (h!17114 (_ BitVec 16)) (t!111307 List!11737)) )
))
(declare-datatypes ((TokenValue!2104 0))(
  ( (FloatLiteralValue!4208 (text!15173 List!11737)) (TokenValueExt!2103 (__x!7919 Int)) (Broken!10520 (value!66116 List!11737)) (Object!2127) (End!2104) (Def!2104) (Underscore!2104) (Match!2104) (Else!2104) (Error!2104) (Case!2104) (If!2104) (Extends!2104) (Abstract!2104) (Class!2104) (Val!2104) (DelimiterValue!4208 (del!2164 List!11737)) (KeywordValue!2110 (value!66117 List!11737)) (CommentValue!4208 (value!66118 List!11737)) (WhitespaceValue!4208 (value!66119 List!11737)) (IndentationValue!2104 (value!66120 List!11737)) (String!14191) (Int32!2104) (Broken!10521 (value!66121 List!11737)) (Boolean!2105) (Unit!18036) (OperatorValue!2107 (op!2164 List!11737)) (IdentifierValue!4208 (value!66122 List!11737)) (IdentifierValue!4209 (value!66123 List!11737)) (WhitespaceValue!4209 (value!66124 List!11737)) (True!4208) (False!4208) (Broken!10522 (value!66125 List!11737)) (Broken!10523 (value!66126 List!11737)) (True!4209) (RightBrace!2104) (RightBracket!2104) (Colon!2104) (Null!2104) (Comma!2104) (LeftBracket!2104) (False!4209) (LeftBrace!2104) (ImaginaryLiteralValue!2104 (text!15174 List!11737)) (StringLiteralValue!6312 (value!66127 List!11737)) (EOFValue!2104 (value!66128 List!11737)) (IdentValue!2104 (value!66129 List!11737)) (DelimiterValue!4209 (value!66130 List!11737)) (DedentValue!2104 (value!66131 List!11737)) (NewLineValue!2104 (value!66132 List!11737)) (IntegerValue!6312 (value!66133 (_ BitVec 32)) (text!15175 List!11737)) (IntegerValue!6313 (value!66134 Int) (text!15176 List!11737)) (Times!2104) (Or!2104) (Equal!2104) (Minus!2104) (Broken!10524 (value!66135 List!11737)) (And!2104) (Div!2104) (LessEqual!2104) (Mod!2104) (Concat!5412) (Not!2104) (Plus!2104) (SpaceValue!2104 (value!66136 List!11737)) (IntegerValue!6314 (value!66137 Int) (text!15177 List!11737)) (StringLiteralValue!6313 (text!15178 List!11737)) (FloatLiteralValue!4209 (text!15179 List!11737)) (BytesLiteralValue!2104 (value!66138 List!11737)) (CommentValue!4209 (value!66139 List!11737)) (StringLiteralValue!6314 (value!66140 List!11737)) (ErrorTokenValue!2104 (msg!2165 List!11737)) )
))
(declare-datatypes ((Regex!3308 0))(
  ( (ElementMatch!3308 (c!196648 C!6934)) (Concat!5413 (regOne!7128 Regex!3308) (regTwo!7128 Regex!3308)) (EmptyExpr!3308) (Star!3308 (reg!3637 Regex!3308)) (EmptyLang!3308) (Union!3308 (regOne!7129 Regex!3308) (regTwo!7129 Regex!3308)) )
))
(declare-datatypes ((BalanceConc!7702 0))(
  ( (BalanceConc!7703 (c!196649 Conc!3840)) )
))
(declare-datatypes ((TokenValueInjection!3908 0))(
  ( (TokenValueInjection!3909 (toValue!3143 Int) (toChars!3002 Int)) )
))
(declare-datatypes ((Rule!3876 0))(
  ( (Rule!3877 (regex!2038 Regex!3308) (tag!2300 String!14189) (isSeparator!2038 Bool) (transformation!2038 TokenValueInjection!3908)) )
))
(declare-datatypes ((Token!3738 0))(
  ( (Token!3739 (value!66141 TokenValue!2104) (rule!3459 Rule!3876) (size!9270 Int) (originalCharacters!2592 List!11736)) )
))
(declare-datatypes ((List!11738 0))(
  ( (Nil!11714) (Cons!11714 (h!17115 Token!3738) (t!111308 List!11738)) )
))
(declare-fun l!6534 () List!11738)

(declare-fun e!757025 () Bool)

(declare-fun e!757028 () Bool)

(declare-fun inv!21 (TokenValue!2104) Bool)

(assert (=> b!1179724 (= e!757028 (and (inv!21 (value!66141 (h!17115 l!6534))) e!757025 tp!335843))))

(declare-fun e!757020 () Bool)

(declare-datatypes ((List!11739 0))(
  ( (Nil!11715) (Cons!11715 (h!17116 Rule!3876) (t!111309 List!11739)) )
))
(declare-fun rules!4386 () List!11739)

(declare-fun tp!335841 () Bool)

(declare-fun b!1179725 () Bool)

(declare-fun e!757026 () Bool)

(declare-fun inv!15531 (String!14189) Bool)

(declare-fun inv!15534 (TokenValueInjection!3908) Bool)

(assert (=> b!1179725 (= e!757020 (and tp!335841 (inv!15531 (tag!2300 (h!17116 rules!4386))) (inv!15534 (transformation!2038 (h!17116 rules!4386))) e!757026))))

(declare-fun b!1179726 () Bool)

(declare-fun e!757022 () Bool)

(declare-fun tp!335842 () Bool)

(assert (=> b!1179726 (= e!757022 (and e!757020 tp!335842))))

(declare-fun b!1179727 () Bool)

(declare-fun e!757027 () Bool)

(declare-fun tp!335844 () Bool)

(assert (=> b!1179727 (= e!757025 (and tp!335844 (inv!15531 (tag!2300 (rule!3459 (h!17115 l!6534)))) (inv!15534 (transformation!2038 (rule!3459 (h!17115 l!6534)))) e!757027))))

(declare-fun b!1179728 () Bool)

(declare-fun res!533269 () Bool)

(declare-fun e!757030 () Bool)

(assert (=> b!1179728 (=> (not res!533269) (not e!757030))))

(assert (=> b!1179728 (= res!533269 (is-Nil!11714 l!6534))))

(declare-fun b!1179729 () Bool)

(declare-fun res!533272 () Bool)

(assert (=> b!1179729 (=> (not res!533272) (not e!757030))))

(declare-datatypes ((LexerInterface!1733 0))(
  ( (LexerInterfaceExt!1730 (__x!7920 Int)) (Lexer!1731) )
))
(declare-fun thiss!27592 () LexerInterface!1733)

(declare-fun rulesInvariant!1607 (LexerInterface!1733 List!11739) Bool)

(assert (=> b!1179729 (= res!533272 (rulesInvariant!1607 thiss!27592 rules!4386))))

(declare-fun b!1179730 () Bool)

(declare-fun e!757021 () Bool)

(declare-fun e!757029 () Bool)

(assert (=> b!1179730 (= e!757021 e!757029)))

(declare-fun res!533270 () Bool)

(assert (=> b!1179730 (=> (not res!533270) (not e!757029))))

(declare-fun lt!406375 () List!11738)

(declare-fun rulesProduceIndividualToken!766 (LexerInterface!1733 List!11739 Token!3738) Bool)

(assert (=> b!1179730 (= res!533270 (rulesProduceIndividualToken!766 thiss!27592 rules!4386 (h!17115 lt!406375)))))

(declare-fun res!533271 () Bool)

(assert (=> start!104380 (=> (not res!533271) (not e!757030))))

(assert (=> start!104380 (= res!533271 (is-Lexer!1731 thiss!27592))))

(assert (=> start!104380 e!757030))

(assert (=> start!104380 true))

(assert (=> start!104380 e!757022))

(declare-fun e!757019 () Bool)

(assert (=> start!104380 e!757019))

(assert (=> b!1179731 (= e!757027 (and tp!335849 tp!335846))))

(declare-fun b!1179732 () Bool)

(declare-fun res!533266 () Bool)

(assert (=> b!1179732 (=> (not res!533266) (not e!757030))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!127 (LexerInterface!1733 List!11738 List!11739) Bool)

(assert (=> b!1179732 (= res!533266 (tokensListTwoByTwoPredicateSeparableList!127 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1179733 () Bool)

(declare-fun res!533268 () Bool)

(assert (=> b!1179733 (=> (not res!533268) (not e!757030))))

(declare-fun rulesProduceEachTokenIndividuallyList!599 (LexerInterface!1733 List!11739 List!11738) Bool)

(assert (=> b!1179733 (= res!533268 (rulesProduceEachTokenIndividuallyList!599 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1179734 () Bool)

(declare-fun res!533267 () Bool)

(assert (=> b!1179734 (=> (not res!533267) (not e!757030))))

(declare-fun isEmpty!7079 (List!11739) Bool)

(assert (=> b!1179734 (= res!533267 (not (isEmpty!7079 rules!4386)))))

(declare-fun b!1179735 () Bool)

(declare-fun tp!335848 () Bool)

(declare-fun inv!15535 (Token!3738) Bool)

(assert (=> b!1179735 (= e!757019 (and (inv!15535 (h!17115 l!6534)) e!757028 tp!335848))))

(declare-fun b!1179736 () Bool)

(assert (=> b!1179736 (= e!757029 (rulesProduceEachTokenIndividuallyList!599 thiss!27592 rules!4386 (t!111308 lt!406375)))))

(declare-fun b!1179737 () Bool)

(assert (=> b!1179737 (= e!757030 (not true))))

(declare-fun subseq!296 (List!11738 List!11738) Bool)

(assert (=> b!1179737 (subseq!296 lt!406375 l!6534)))

(declare-datatypes ((Unit!18037 0))(
  ( (Unit!18038) )
))
(declare-fun lt!406376 () Unit!18037)

(declare-fun i!1621 () Int)

(declare-fun lemmaDropSubseq!59 (List!11738 Int) Unit!18037)

(assert (=> b!1179737 (= lt!406376 (lemmaDropSubseq!59 l!6534 i!1621))))

(assert (=> b!1179737 (= (rulesProduceEachTokenIndividuallyList!599 thiss!27592 rules!4386 lt!406375) e!757021)))

(declare-fun res!533273 () Bool)

(assert (=> b!1179737 (=> res!533273 e!757021)))

(assert (=> b!1179737 (= res!533273 (not (is-Cons!11714 lt!406375)))))

(declare-fun drop!518 (List!11738 Int) List!11738)

(assert (=> b!1179737 (= lt!406375 (drop!518 l!6534 i!1621))))

(assert (=> b!1179738 (= e!757026 (and tp!335845 tp!335847))))

(assert (= (and start!104380 res!533271) b!1179734))

(assert (= (and b!1179734 res!533267) b!1179729))

(assert (= (and b!1179729 res!533272) b!1179733))

(assert (= (and b!1179733 res!533268) b!1179732))

(assert (= (and b!1179732 res!533266) b!1179728))

(assert (= (and b!1179728 res!533269) b!1179737))

(assert (= (and b!1179737 (not res!533273)) b!1179730))

(assert (= (and b!1179730 res!533270) b!1179736))

(assert (= b!1179725 b!1179738))

(assert (= b!1179726 b!1179725))

(assert (= (and start!104380 (is-Cons!11715 rules!4386)) b!1179726))

(assert (= b!1179727 b!1179731))

(assert (= b!1179724 b!1179727))

(assert (= b!1179735 b!1179724))

(assert (= (and start!104380 (is-Cons!11714 l!6534)) b!1179735))

(declare-fun m!1356061 () Bool)

(assert (=> b!1179729 m!1356061))

(declare-fun m!1356063 () Bool)

(assert (=> b!1179735 m!1356063))

(declare-fun m!1356065 () Bool)

(assert (=> b!1179737 m!1356065))

(declare-fun m!1356067 () Bool)

(assert (=> b!1179737 m!1356067))

(declare-fun m!1356069 () Bool)

(assert (=> b!1179737 m!1356069))

(declare-fun m!1356071 () Bool)

(assert (=> b!1179737 m!1356071))

(declare-fun m!1356073 () Bool)

(assert (=> b!1179730 m!1356073))

(declare-fun m!1356075 () Bool)

(assert (=> b!1179734 m!1356075))

(declare-fun m!1356077 () Bool)

(assert (=> b!1179732 m!1356077))

(declare-fun m!1356079 () Bool)

(assert (=> b!1179736 m!1356079))

(declare-fun m!1356081 () Bool)

(assert (=> b!1179727 m!1356081))

(declare-fun m!1356083 () Bool)

(assert (=> b!1179727 m!1356083))

(declare-fun m!1356085 () Bool)

(assert (=> b!1179733 m!1356085))

(declare-fun m!1356087 () Bool)

(assert (=> b!1179724 m!1356087))

(declare-fun m!1356089 () Bool)

(assert (=> b!1179725 m!1356089))

(declare-fun m!1356091 () Bool)

(assert (=> b!1179725 m!1356091))

(push 1)

(assert (not b!1179732))

(assert b_and!80953)

(assert (not b_next!28713))

(assert (not b_next!28711))

(assert (not b!1179725))

(assert (not b!1179735))

(assert (not b!1179730))

(assert b_and!80949)

(assert (not b!1179736))

(assert (not b!1179733))

(assert (not b!1179724))

(assert b_and!80951)

(assert (not b!1179727))

(assert (not b_next!28715))

(assert (not b!1179734))

(assert (not b!1179737))

(assert (not b!1179726))

(assert (not b!1179729))

(assert (not b_next!28709))

(assert b_and!80955)

(check-sat)

(pop 1)

(push 1)

(assert b_and!80953)

(assert (not b_next!28713))

(assert (not b_next!28711))

(assert b_and!80949)

(assert b_and!80951)

(assert (not b_next!28715))

(assert (not b_next!28709))

(assert b_and!80955)

(check-sat)

(pop 1)

