; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!104384 () Bool)

(assert start!104384)

(declare-fun b!1179814 () Bool)

(declare-fun b_free!28021 () Bool)

(declare-fun b_next!28725 () Bool)

(assert (=> b!1179814 (= b_free!28021 (not b_next!28725))))

(declare-fun tp!335899 () Bool)

(declare-fun b_and!80965 () Bool)

(assert (=> b!1179814 (= tp!335899 b_and!80965)))

(declare-fun b_free!28023 () Bool)

(declare-fun b_next!28727 () Bool)

(assert (=> b!1179814 (= b_free!28023 (not b_next!28727))))

(declare-fun tp!335898 () Bool)

(declare-fun b_and!80967 () Bool)

(assert (=> b!1179814 (= tp!335898 b_and!80967)))

(declare-fun b!1179815 () Bool)

(declare-fun b_free!28025 () Bool)

(declare-fun b_next!28729 () Bool)

(assert (=> b!1179815 (= b_free!28025 (not b_next!28729))))

(declare-fun tp!335903 () Bool)

(declare-fun b_and!80969 () Bool)

(assert (=> b!1179815 (= tp!335903 b_and!80969)))

(declare-fun b_free!28027 () Bool)

(declare-fun b_next!28731 () Bool)

(assert (=> b!1179815 (= b_free!28027 (not b_next!28731))))

(declare-fun tp!335897 () Bool)

(declare-fun b_and!80971 () Bool)

(assert (=> b!1179815 (= tp!335897 b_and!80971)))

(declare-fun b!1179839 () Bool)

(declare-fun e!757117 () Bool)

(assert (=> b!1179839 (= e!757117 true)))

(declare-fun b!1179838 () Bool)

(declare-fun e!757116 () Bool)

(assert (=> b!1179838 (= e!757116 e!757117)))

(declare-fun b!1179837 () Bool)

(declare-fun e!757115 () Bool)

(assert (=> b!1179837 (= e!757115 e!757116)))

(declare-fun b!1179819 () Bool)

(assert (=> b!1179819 e!757115))

(assert (= b!1179838 b!1179839))

(assert (= b!1179837 b!1179838))

(declare-datatypes ((C!6938 0))(
  ( (C!6939 (val!3765 Int)) )
))
(declare-datatypes ((List!11744 0))(
  ( (Nil!11720) (Cons!11720 (h!17121 C!6938) (t!111316 List!11744)) )
))
(declare-datatypes ((IArray!7689 0))(
  ( (IArray!7690 (innerList!3902 List!11744)) )
))
(declare-datatypes ((Conc!3842 0))(
  ( (Node!3842 (left!10226 Conc!3842) (right!10556 Conc!3842) (csize!7914 Int) (cheight!4053 Int)) (Leaf!5893 (xs!6547 IArray!7689) (csize!7915 Int)) (Empty!3842) )
))
(declare-datatypes ((List!11745 0))(
  ( (Nil!11721) (Cons!11721 (h!17122 (_ BitVec 16)) (t!111317 List!11745)) )
))
(declare-datatypes ((String!14199 0))(
  ( (String!14200 (value!66172 String)) )
))
(declare-datatypes ((BalanceConc!7706 0))(
  ( (BalanceConc!7707 (c!196652 Conc!3842)) )
))
(declare-datatypes ((TokenValue!2106 0))(
  ( (FloatLiteralValue!4212 (text!15187 List!11745)) (TokenValueExt!2105 (__x!7923 Int)) (Broken!10530 (value!66173 List!11745)) (Object!2129) (End!2106) (Def!2106) (Underscore!2106) (Match!2106) (Else!2106) (Error!2106) (Case!2106) (If!2106) (Extends!2106) (Abstract!2106) (Class!2106) (Val!2106) (DelimiterValue!4212 (del!2166 List!11745)) (KeywordValue!2112 (value!66174 List!11745)) (CommentValue!4212 (value!66175 List!11745)) (WhitespaceValue!4212 (value!66176 List!11745)) (IndentationValue!2106 (value!66177 List!11745)) (String!14201) (Int32!2106) (Broken!10531 (value!66178 List!11745)) (Boolean!2107) (Unit!18042) (OperatorValue!2109 (op!2166 List!11745)) (IdentifierValue!4212 (value!66179 List!11745)) (IdentifierValue!4213 (value!66180 List!11745)) (WhitespaceValue!4213 (value!66181 List!11745)) (True!4212) (False!4212) (Broken!10532 (value!66182 List!11745)) (Broken!10533 (value!66183 List!11745)) (True!4213) (RightBrace!2106) (RightBracket!2106) (Colon!2106) (Null!2106) (Comma!2106) (LeftBracket!2106) (False!4213) (LeftBrace!2106) (ImaginaryLiteralValue!2106 (text!15188 List!11745)) (StringLiteralValue!6318 (value!66184 List!11745)) (EOFValue!2106 (value!66185 List!11745)) (IdentValue!2106 (value!66186 List!11745)) (DelimiterValue!4213 (value!66187 List!11745)) (DedentValue!2106 (value!66188 List!11745)) (NewLineValue!2106 (value!66189 List!11745)) (IntegerValue!6318 (value!66190 (_ BitVec 32)) (text!15189 List!11745)) (IntegerValue!6319 (value!66191 Int) (text!15190 List!11745)) (Times!2106) (Or!2106) (Equal!2106) (Minus!2106) (Broken!10534 (value!66192 List!11745)) (And!2106) (Div!2106) (LessEqual!2106) (Mod!2106) (Concat!5416) (Not!2106) (Plus!2106) (SpaceValue!2106 (value!66193 List!11745)) (IntegerValue!6320 (value!66194 Int) (text!15191 List!11745)) (StringLiteralValue!6319 (text!15192 List!11745)) (FloatLiteralValue!4213 (text!15193 List!11745)) (BytesLiteralValue!2106 (value!66195 List!11745)) (CommentValue!4213 (value!66196 List!11745)) (StringLiteralValue!6320 (value!66197 List!11745)) (ErrorTokenValue!2106 (msg!2167 List!11745)) )
))
(declare-datatypes ((Regex!3310 0))(
  ( (ElementMatch!3310 (c!196653 C!6938)) (Concat!5417 (regOne!7132 Regex!3310) (regTwo!7132 Regex!3310)) (EmptyExpr!3310) (Star!3310 (reg!3639 Regex!3310)) (EmptyLang!3310) (Union!3310 (regOne!7133 Regex!3310) (regTwo!7133 Regex!3310)) )
))
(declare-datatypes ((TokenValueInjection!3912 0))(
  ( (TokenValueInjection!3913 (toValue!3145 Int) (toChars!3004 Int)) )
))
(declare-datatypes ((Rule!3880 0))(
  ( (Rule!3881 (regex!2040 Regex!3310) (tag!2302 String!14199) (isSeparator!2040 Bool) (transformation!2040 TokenValueInjection!3912)) )
))
(declare-datatypes ((List!11746 0))(
  ( (Nil!11722) (Cons!11722 (h!17123 Rule!3880) (t!111318 List!11746)) )
))
(declare-fun rules!4386 () List!11746)

(assert (= (and b!1179819 (is-Cons!11722 rules!4386)) b!1179837))

(declare-fun order!7201 () Int)

(declare-fun order!7199 () Int)

(declare-fun lambda!48590 () Int)

(declare-fun dynLambda!5181 (Int Int) Int)

(declare-fun dynLambda!5182 (Int Int) Int)

(assert (=> b!1179839 (< (dynLambda!5181 order!7199 (toValue!3145 (transformation!2040 (h!17123 rules!4386)))) (dynLambda!5182 order!7201 lambda!48590))))

(declare-fun order!7203 () Int)

(declare-fun dynLambda!5183 (Int Int) Int)

(assert (=> b!1179839 (< (dynLambda!5183 order!7203 (toChars!3004 (transformation!2040 (h!17123 rules!4386)))) (dynLambda!5182 order!7201 lambda!48590))))

(declare-fun e!757098 () Bool)

(assert (=> b!1179814 (= e!757098 (and tp!335899 tp!335898))))

(declare-fun e!757108 () Bool)

(assert (=> b!1179815 (= e!757108 (and tp!335903 tp!335897))))

(declare-fun b!1179816 () Bool)

(declare-fun res!533319 () Bool)

(declare-fun e!757104 () Bool)

(assert (=> b!1179816 (=> (not res!533319) (not e!757104))))

(declare-datatypes ((Token!3742 0))(
  ( (Token!3743 (value!66198 TokenValue!2106) (rule!3461 Rule!3880) (size!9272 Int) (originalCharacters!2594 List!11744)) )
))
(declare-datatypes ((List!11747 0))(
  ( (Nil!11723) (Cons!11723 (h!17124 Token!3742) (t!111319 List!11747)) )
))
(declare-fun l!6534 () List!11747)

(assert (=> b!1179816 (= res!533319 (is-Nil!11723 l!6534))))

(declare-fun b!1179817 () Bool)

(declare-fun res!533315 () Bool)

(assert (=> b!1179817 (=> (not res!533315) (not e!757104))))

(declare-datatypes ((LexerInterface!1735 0))(
  ( (LexerInterfaceExt!1732 (__x!7924 Int)) (Lexer!1733) )
))
(declare-fun thiss!27592 () LexerInterface!1735)

(declare-fun rulesInvariant!1609 (LexerInterface!1735 List!11746) Bool)

(assert (=> b!1179817 (= res!533315 (rulesInvariant!1609 thiss!27592 rules!4386))))

(declare-fun b!1179818 () Bool)

(declare-fun e!757103 () Bool)

(declare-fun e!757107 () Bool)

(declare-fun tp!335896 () Bool)

(assert (=> b!1179818 (= e!757103 (and e!757107 tp!335896))))

(assert (=> b!1179819 (= e!757104 (not true))))

(declare-fun lt!406390 () List!11747)

(declare-fun forall!3105 (List!11747 Int) Bool)

(assert (=> b!1179819 (forall!3105 lt!406390 lambda!48590)))

(declare-datatypes ((Unit!18043 0))(
  ( (Unit!18044) )
))
(declare-fun lt!406389 () Unit!18043)

(declare-fun lemmaForallSubseq!168 (List!11747 List!11747 Int) Unit!18043)

(assert (=> b!1179819 (= lt!406389 (lemmaForallSubseq!168 lt!406390 l!6534 lambda!48590))))

(declare-fun subseq!298 (List!11747 List!11747) Bool)

(assert (=> b!1179819 (subseq!298 lt!406390 l!6534)))

(declare-fun lt!406391 () Unit!18043)

(declare-fun i!1621 () Int)

(declare-fun lemmaDropSubseq!61 (List!11747 Int) Unit!18043)

(assert (=> b!1179819 (= lt!406391 (lemmaDropSubseq!61 l!6534 i!1621))))

(declare-fun e!757096 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!601 (LexerInterface!1735 List!11746 List!11747) Bool)

(assert (=> b!1179819 (= (rulesProduceEachTokenIndividuallyList!601 thiss!27592 rules!4386 lt!406390) e!757096)))

(declare-fun res!533321 () Bool)

(assert (=> b!1179819 (=> res!533321 e!757096)))

(assert (=> b!1179819 (= res!533321 (not (is-Cons!11723 lt!406390)))))

(declare-fun drop!520 (List!11747 Int) List!11747)

(assert (=> b!1179819 (= lt!406390 (drop!520 l!6534 i!1621))))

(declare-fun b!1179820 () Bool)

(declare-fun res!533317 () Bool)

(assert (=> b!1179820 (=> (not res!533317) (not e!757104))))

(declare-fun isEmpty!7081 (List!11746) Bool)

(assert (=> b!1179820 (= res!533317 (not (isEmpty!7081 rules!4386)))))

(declare-fun b!1179821 () Bool)

(declare-fun e!757099 () Bool)

(assert (=> b!1179821 (= e!757096 e!757099)))

(declare-fun res!533318 () Bool)

(assert (=> b!1179821 (=> (not res!533318) (not e!757099))))

(declare-fun rulesProduceIndividualToken!768 (LexerInterface!1735 List!11746 Token!3742) Bool)

(assert (=> b!1179821 (= res!533318 (rulesProduceIndividualToken!768 thiss!27592 rules!4386 (h!17124 lt!406390)))))

(declare-fun b!1179823 () Bool)

(assert (=> b!1179823 (= e!757099 (rulesProduceEachTokenIndividuallyList!601 thiss!27592 rules!4386 (t!111319 lt!406390)))))

(declare-fun b!1179824 () Bool)

(declare-fun res!533316 () Bool)

(assert (=> b!1179824 (=> (not res!533316) (not e!757104))))

(assert (=> b!1179824 (= res!533316 (rulesProduceEachTokenIndividuallyList!601 thiss!27592 rules!4386 l!6534))))

(declare-fun tp!335901 () Bool)

(declare-fun e!757101 () Bool)

(declare-fun e!757105 () Bool)

(declare-fun b!1179825 () Bool)

(declare-fun inv!15541 (Token!3742) Bool)

(assert (=> b!1179825 (= e!757101 (and (inv!15541 (h!17124 l!6534)) e!757105 tp!335901))))

(declare-fun b!1179826 () Bool)

(declare-fun res!533320 () Bool)

(assert (=> b!1179826 (=> (not res!533320) (not e!757104))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!129 (LexerInterface!1735 List!11747 List!11746) Bool)

(assert (=> b!1179826 (= res!533320 (tokensListTwoByTwoPredicateSeparableList!129 thiss!27592 l!6534 rules!4386))))

(declare-fun e!757102 () Bool)

(declare-fun b!1179827 () Bool)

(declare-fun tp!335900 () Bool)

(declare-fun inv!21 (TokenValue!2106) Bool)

(assert (=> b!1179827 (= e!757105 (and (inv!21 (value!66198 (h!17124 l!6534))) e!757102 tp!335900))))

(declare-fun b!1179828 () Bool)

(declare-fun tp!335902 () Bool)

(declare-fun inv!15538 (String!14199) Bool)

(declare-fun inv!15542 (TokenValueInjection!3912) Bool)

(assert (=> b!1179828 (= e!757107 (and tp!335902 (inv!15538 (tag!2302 (h!17123 rules!4386))) (inv!15542 (transformation!2040 (h!17123 rules!4386))) e!757108))))

(declare-fun res!533314 () Bool)

(assert (=> start!104384 (=> (not res!533314) (not e!757104))))

(assert (=> start!104384 (= res!533314 (is-Lexer!1733 thiss!27592))))

(assert (=> start!104384 e!757104))

(assert (=> start!104384 true))

(assert (=> start!104384 e!757103))

(assert (=> start!104384 e!757101))

(declare-fun b!1179822 () Bool)

(declare-fun tp!335895 () Bool)

(assert (=> b!1179822 (= e!757102 (and tp!335895 (inv!15538 (tag!2302 (rule!3461 (h!17124 l!6534)))) (inv!15542 (transformation!2040 (rule!3461 (h!17124 l!6534)))) e!757098))))

(assert (= (and start!104384 res!533314) b!1179820))

(assert (= (and b!1179820 res!533317) b!1179817))

(assert (= (and b!1179817 res!533315) b!1179824))

(assert (= (and b!1179824 res!533316) b!1179826))

(assert (= (and b!1179826 res!533320) b!1179816))

(assert (= (and b!1179816 res!533319) b!1179819))

(assert (= (and b!1179819 (not res!533321)) b!1179821))

(assert (= (and b!1179821 res!533318) b!1179823))

(assert (= b!1179828 b!1179815))

(assert (= b!1179818 b!1179828))

(assert (= (and start!104384 (is-Cons!11722 rules!4386)) b!1179818))

(assert (= b!1179822 b!1179814))

(assert (= b!1179827 b!1179822))

(assert (= b!1179825 b!1179827))

(assert (= (and start!104384 (is-Cons!11723 l!6534)) b!1179825))

(declare-fun m!1356125 () Bool)

(assert (=> b!1179825 m!1356125))

(declare-fun m!1356127 () Bool)

(assert (=> b!1179827 m!1356127))

(declare-fun m!1356129 () Bool)

(assert (=> b!1179820 m!1356129))

(declare-fun m!1356131 () Bool)

(assert (=> b!1179823 m!1356131))

(declare-fun m!1356133 () Bool)

(assert (=> b!1179821 m!1356133))

(declare-fun m!1356135 () Bool)

(assert (=> b!1179826 m!1356135))

(declare-fun m!1356137 () Bool)

(assert (=> b!1179822 m!1356137))

(declare-fun m!1356139 () Bool)

(assert (=> b!1179822 m!1356139))

(declare-fun m!1356141 () Bool)

(assert (=> b!1179828 m!1356141))

(declare-fun m!1356143 () Bool)

(assert (=> b!1179828 m!1356143))

(declare-fun m!1356145 () Bool)

(assert (=> b!1179824 m!1356145))

(declare-fun m!1356147 () Bool)

(assert (=> b!1179817 m!1356147))

(declare-fun m!1356149 () Bool)

(assert (=> b!1179819 m!1356149))

(declare-fun m!1356151 () Bool)

(assert (=> b!1179819 m!1356151))

(declare-fun m!1356153 () Bool)

(assert (=> b!1179819 m!1356153))

(declare-fun m!1356155 () Bool)

(assert (=> b!1179819 m!1356155))

(declare-fun m!1356157 () Bool)

(assert (=> b!1179819 m!1356157))

(declare-fun m!1356159 () Bool)

(assert (=> b!1179819 m!1356159))

(push 1)

(assert (not b!1179817))

(assert (not b_next!28731))

(assert (not b!1179821))

(assert (not b!1179827))

(assert b_and!80971)

(assert (not b_next!28729))

(assert (not b!1179837))

(assert (not b!1179825))

(assert (not b_next!28727))

(assert b_and!80967)

(assert b_and!80965)

(assert (not b!1179820))

(assert (not b_next!28725))

(assert (not b!1179823))

(assert (not b!1179824))

(assert (not b!1179822))

(assert b_and!80969)

(assert (not b!1179828))

(assert (not b!1179819))

(assert (not b!1179826))

(assert (not b!1179818))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!28731))

(assert b_and!80971)

(assert b_and!80969)

(assert (not b_next!28729))

(assert (not b_next!28727))

(assert b_and!80967)

(assert b_and!80965)

(assert (not b_next!28725))

(check-sat)

(pop 1)

