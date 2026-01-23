; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!262606 () Bool)

(assert start!262606)

(declare-fun b!2705068 () Bool)

(declare-fun b_free!76341 () Bool)

(declare-fun b_next!77045 () Bool)

(assert (=> b!2705068 (= b_free!76341 (not b_next!77045))))

(declare-fun tp!855572 () Bool)

(declare-fun b_and!199773 () Bool)

(assert (=> b!2705068 (= tp!855572 b_and!199773)))

(declare-fun b_free!76343 () Bool)

(declare-fun b_next!77047 () Bool)

(assert (=> b!2705068 (= b_free!76343 (not b_next!77047))))

(declare-fun tp!855574 () Bool)

(declare-fun b_and!199775 () Bool)

(assert (=> b!2705068 (= tp!855574 b_and!199775)))

(declare-fun b!2705065 () Bool)

(declare-fun e!1705543 () Bool)

(declare-datatypes ((C!15986 0))(
  ( (C!15987 (val!9927 Int)) )
))
(declare-datatypes ((List!31303 0))(
  ( (Nil!31203) (Cons!31203 (h!36623 C!15986) (t!225741 List!31303)) )
))
(declare-datatypes ((IArray!19507 0))(
  ( (IArray!19508 (innerList!9811 List!31303)) )
))
(declare-datatypes ((Conc!9751 0))(
  ( (Node!9751 (left!24006 Conc!9751) (right!24336 Conc!9751) (csize!19732 Int) (cheight!9962 Int)) (Leaf!14877 (xs!12799 IArray!19507) (csize!19733 Int)) (Empty!9751) )
))
(declare-datatypes ((BalanceConc!19116 0))(
  ( (BalanceConc!19117 (c!436483 Conc!9751)) )
))
(declare-fun input!603 () BalanceConc!19116)

(declare-fun tp!855568 () Bool)

(declare-fun inv!42281 (Conc!9751) Bool)

(assert (=> b!2705065 (= e!1705543 (and (inv!42281 (c!436483 input!603)) tp!855568))))

(declare-fun b!2705066 () Bool)

(declare-fun res!1135917 () Bool)

(declare-fun e!1705546 () Bool)

(assert (=> b!2705066 (=> (not res!1135917) (not e!1705546))))

(declare-datatypes ((LexerInterface!4358 0))(
  ( (LexerInterfaceExt!4355 (__x!20103 Int)) (Lexer!4356) )
))
(declare-fun thiss!11556 () LexerInterface!4358)

(declare-datatypes ((List!31304 0))(
  ( (Nil!31204) (Cons!31204 (h!36624 (_ BitVec 16)) (t!225742 List!31304)) )
))
(declare-datatypes ((TokenValue!4984 0))(
  ( (FloatLiteralValue!9968 (text!35333 List!31304)) (TokenValueExt!4983 (__x!20104 Int)) (Broken!24920 (value!153305 List!31304)) (Object!5083) (End!4984) (Def!4984) (Underscore!4984) (Match!4984) (Else!4984) (Error!4984) (Case!4984) (If!4984) (Extends!4984) (Abstract!4984) (Class!4984) (Val!4984) (DelimiterValue!9968 (del!5044 List!31304)) (KeywordValue!4990 (value!153306 List!31304)) (CommentValue!9968 (value!153307 List!31304)) (WhitespaceValue!9968 (value!153308 List!31304)) (IndentationValue!4984 (value!153309 List!31304)) (String!34821) (Int32!4984) (Broken!24921 (value!153310 List!31304)) (Boolean!4985) (Unit!45285) (OperatorValue!4987 (op!5044 List!31304)) (IdentifierValue!9968 (value!153311 List!31304)) (IdentifierValue!9969 (value!153312 List!31304)) (WhitespaceValue!9969 (value!153313 List!31304)) (True!9968) (False!9968) (Broken!24922 (value!153314 List!31304)) (Broken!24923 (value!153315 List!31304)) (True!9969) (RightBrace!4984) (RightBracket!4984) (Colon!4984) (Null!4984) (Comma!4984) (LeftBracket!4984) (False!9969) (LeftBrace!4984) (ImaginaryLiteralValue!4984 (text!35334 List!31304)) (StringLiteralValue!14952 (value!153316 List!31304)) (EOFValue!4984 (value!153317 List!31304)) (IdentValue!4984 (value!153318 List!31304)) (DelimiterValue!9969 (value!153319 List!31304)) (DedentValue!4984 (value!153320 List!31304)) (NewLineValue!4984 (value!153321 List!31304)) (IntegerValue!14952 (value!153322 (_ BitVec 32)) (text!35335 List!31304)) (IntegerValue!14953 (value!153323 Int) (text!35336 List!31304)) (Times!4984) (Or!4984) (Equal!4984) (Minus!4984) (Broken!24924 (value!153324 List!31304)) (And!4984) (Div!4984) (LessEqual!4984) (Mod!4984) (Concat!12898) (Not!4984) (Plus!4984) (SpaceValue!4984 (value!153325 List!31304)) (IntegerValue!14954 (value!153326 Int) (text!35337 List!31304)) (StringLiteralValue!14953 (text!35338 List!31304)) (FloatLiteralValue!9969 (text!35339 List!31304)) (BytesLiteralValue!4984 (value!153327 List!31304)) (CommentValue!9969 (value!153328 List!31304)) (StringLiteralValue!14954 (value!153329 List!31304)) (ErrorTokenValue!4984 (msg!5045 List!31304)) )
))
(declare-datatypes ((Regex!7914 0))(
  ( (ElementMatch!7914 (c!436484 C!15986)) (Concat!12899 (regOne!16340 Regex!7914) (regTwo!16340 Regex!7914)) (EmptyExpr!7914) (Star!7914 (reg!8243 Regex!7914)) (EmptyLang!7914) (Union!7914 (regOne!16341 Regex!7914) (regTwo!16341 Regex!7914)) )
))
(declare-datatypes ((String!34822 0))(
  ( (String!34823 (value!153330 String)) )
))
(declare-datatypes ((TokenValueInjection!9408 0))(
  ( (TokenValueInjection!9409 (toValue!6724 Int) (toChars!6583 Int)) )
))
(declare-datatypes ((Rule!9324 0))(
  ( (Rule!9325 (regex!4762 Regex!7914) (tag!5266 String!34822) (isSeparator!4762 Bool) (transformation!4762 TokenValueInjection!9408)) )
))
(declare-datatypes ((List!31305 0))(
  ( (Nil!31205) (Cons!31205 (h!36625 Rule!9324) (t!225743 List!31305)) )
))
(declare-fun rules!1182 () List!31305)

(declare-fun rulesInvariant!3843 (LexerInterface!4358 List!31305) Bool)

(assert (=> b!2705066 (= res!1135917 (rulesInvariant!3843 thiss!11556 rules!1182))))

(declare-fun b!2705067 () Bool)

(declare-fun e!1705542 () Bool)

(declare-fun treated!9 () BalanceConc!19116)

(declare-fun tp!855569 () Bool)

(assert (=> b!2705067 (= e!1705542 (and (inv!42281 (c!436483 treated!9)) tp!855569))))

(declare-fun res!1135918 () Bool)

(assert (=> start!262606 (=> (not res!1135918) (not e!1705546))))

(assert (=> start!262606 (= res!1135918 (is-Lexer!4356 thiss!11556))))

(assert (=> start!262606 e!1705546))

(declare-fun inv!42282 (BalanceConc!19116) Bool)

(assert (=> start!262606 (and (inv!42282 treated!9) e!1705542)))

(assert (=> start!262606 (and (inv!42282 input!603) e!1705543)))

(assert (=> start!262606 true))

(declare-fun e!1705541 () Bool)

(assert (=> start!262606 e!1705541))

(declare-fun totalInput!328 () BalanceConc!19116)

(declare-fun e!1705539 () Bool)

(assert (=> start!262606 (and (inv!42282 totalInput!328) e!1705539)))

(declare-datatypes ((Token!8986 0))(
  ( (Token!8987 (value!153331 TokenValue!4984) (rule!7182 Rule!9324) (size!24096 Int) (originalCharacters!5524 List!31303)) )
))
(declare-datatypes ((List!31306 0))(
  ( (Nil!31206) (Cons!31206 (h!36626 Token!8986) (t!225744 List!31306)) )
))
(declare-datatypes ((IArray!19509 0))(
  ( (IArray!19510 (innerList!9812 List!31306)) )
))
(declare-datatypes ((Conc!9752 0))(
  ( (Node!9752 (left!24007 Conc!9752) (right!24337 Conc!9752) (csize!19734 Int) (cheight!9963 Int)) (Leaf!14878 (xs!12800 IArray!19509) (csize!19735 Int)) (Empty!9752) )
))
(declare-datatypes ((BalanceConc!19118 0))(
  ( (BalanceConc!19119 (c!436485 Conc!9752)) )
))
(declare-fun acc!331 () BalanceConc!19118)

(declare-fun e!1705544 () Bool)

(declare-fun inv!42283 (BalanceConc!19118) Bool)

(assert (=> start!262606 (and (inv!42283 acc!331) e!1705544)))

(declare-fun e!1705540 () Bool)

(assert (=> b!2705068 (= e!1705540 (and tp!855572 tp!855574))))

(declare-fun b!2705069 () Bool)

(declare-fun e!1705538 () Bool)

(declare-fun tp!855575 () Bool)

(assert (=> b!2705069 (= e!1705541 (and e!1705538 tp!855575))))

(declare-fun b!2705070 () Bool)

(declare-fun res!1135916 () Bool)

(assert (=> b!2705070 (=> (not res!1135916) (not e!1705546))))

(declare-fun isEmpty!17771 (List!31305) Bool)

(assert (=> b!2705070 (= res!1135916 (not (isEmpty!17771 rules!1182)))))

(declare-fun b!2705071 () Bool)

(assert (=> b!2705071 (= e!1705546 false)))

(declare-fun lt!956615 () List!31306)

(declare-fun list!11774 (BalanceConc!19118) List!31306)

(assert (=> b!2705071 (= lt!956615 (list!11774 acc!331))))

(declare-fun lt!956614 () List!31306)

(declare-datatypes ((tuple2!30840 0))(
  ( (tuple2!30841 (_1!18052 BalanceConc!19118) (_2!18052 BalanceConc!19116)) )
))
(declare-fun lexRec!618 (LexerInterface!4358 List!31305 BalanceConc!19116) tuple2!30840)

(assert (=> b!2705071 (= lt!956614 (list!11774 (_1!18052 (lexRec!618 thiss!11556 rules!1182 treated!9))))))

(declare-fun b!2705072 () Bool)

(declare-fun tp!855571 () Bool)

(declare-fun inv!42278 (String!34822) Bool)

(declare-fun inv!42284 (TokenValueInjection!9408) Bool)

(assert (=> b!2705072 (= e!1705538 (and tp!855571 (inv!42278 (tag!5266 (h!36625 rules!1182))) (inv!42284 (transformation!4762 (h!36625 rules!1182))) e!1705540))))

(declare-fun b!2705073 () Bool)

(declare-fun tp!855570 () Bool)

(declare-fun inv!42285 (Conc!9752) Bool)

(assert (=> b!2705073 (= e!1705544 (and (inv!42285 (c!436485 acc!331)) tp!855570))))

(declare-fun b!2705074 () Bool)

(declare-fun res!1135919 () Bool)

(assert (=> b!2705074 (=> (not res!1135919) (not e!1705546))))

(declare-fun list!11775 (BalanceConc!19116) List!31303)

(declare-fun ++!7676 (List!31303 List!31303) List!31303)

(assert (=> b!2705074 (= res!1135919 (= (list!11775 totalInput!328) (++!7676 (list!11775 treated!9) (list!11775 input!603))))))

(declare-fun b!2705075 () Bool)

(declare-fun tp!855573 () Bool)

(assert (=> b!2705075 (= e!1705539 (and (inv!42281 (c!436483 totalInput!328)) tp!855573))))

(assert (= (and start!262606 res!1135918) b!2705070))

(assert (= (and b!2705070 res!1135916) b!2705066))

(assert (= (and b!2705066 res!1135917) b!2705074))

(assert (= (and b!2705074 res!1135919) b!2705071))

(assert (= start!262606 b!2705067))

(assert (= start!262606 b!2705065))

(assert (= b!2705072 b!2705068))

(assert (= b!2705069 b!2705072))

(assert (= (and start!262606 (is-Cons!31205 rules!1182)) b!2705069))

(assert (= start!262606 b!2705075))

(assert (= start!262606 b!2705073))

(declare-fun m!3094823 () Bool)

(assert (=> start!262606 m!3094823))

(declare-fun m!3094825 () Bool)

(assert (=> start!262606 m!3094825))

(declare-fun m!3094827 () Bool)

(assert (=> start!262606 m!3094827))

(declare-fun m!3094829 () Bool)

(assert (=> start!262606 m!3094829))

(declare-fun m!3094831 () Bool)

(assert (=> b!2705066 m!3094831))

(declare-fun m!3094833 () Bool)

(assert (=> b!2705067 m!3094833))

(declare-fun m!3094835 () Bool)

(assert (=> b!2705073 m!3094835))

(declare-fun m!3094837 () Bool)

(assert (=> b!2705075 m!3094837))

(declare-fun m!3094839 () Bool)

(assert (=> b!2705070 m!3094839))

(declare-fun m!3094841 () Bool)

(assert (=> b!2705065 m!3094841))

(declare-fun m!3094843 () Bool)

(assert (=> b!2705072 m!3094843))

(declare-fun m!3094845 () Bool)

(assert (=> b!2705072 m!3094845))

(declare-fun m!3094847 () Bool)

(assert (=> b!2705074 m!3094847))

(declare-fun m!3094849 () Bool)

(assert (=> b!2705074 m!3094849))

(declare-fun m!3094851 () Bool)

(assert (=> b!2705074 m!3094851))

(assert (=> b!2705074 m!3094849))

(assert (=> b!2705074 m!3094851))

(declare-fun m!3094853 () Bool)

(assert (=> b!2705074 m!3094853))

(declare-fun m!3094855 () Bool)

(assert (=> b!2705071 m!3094855))

(declare-fun m!3094857 () Bool)

(assert (=> b!2705071 m!3094857))

(declare-fun m!3094859 () Bool)

(assert (=> b!2705071 m!3094859))

(push 1)

(assert (not b!2705069))

(assert b_and!199773)

(assert (not b!2705072))

(assert (not b!2705066))

(assert (not b!2705073))

(assert (not b_next!77047))

(assert (not b!2705075))

(assert (not start!262606))

(assert (not b!2705074))

(assert (not b!2705071))

(assert (not b!2705070))

(assert b_and!199775)

(assert (not b!2705067))

(assert (not b!2705065))

(assert (not b_next!77045))

(check-sat)

(pop 1)

(push 1)

(assert b_and!199775)

(assert b_and!199773)

(assert (not b_next!77047))

(assert (not b_next!77045))

(check-sat)

(pop 1)

