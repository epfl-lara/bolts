; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!146792 () Bool)

(assert start!146792)

(declare-fun b!1573014 () Bool)

(declare-fun b_free!42095 () Bool)

(declare-fun b_next!42799 () Bool)

(assert (=> b!1573014 (= b_free!42095 (not b_next!42799))))

(declare-fun tp!462615 () Bool)

(declare-fun b_and!109901 () Bool)

(assert (=> b!1573014 (= tp!462615 b_and!109901)))

(declare-fun b_free!42097 () Bool)

(declare-fun b_next!42801 () Bool)

(assert (=> b!1573014 (= b_free!42097 (not b_next!42801))))

(declare-fun tp!462611 () Bool)

(declare-fun b_and!109903 () Bool)

(assert (=> b!1573014 (= tp!462611 b_and!109903)))

(declare-fun b!1573015 () Bool)

(declare-fun b_free!42099 () Bool)

(declare-fun b_next!42803 () Bool)

(assert (=> b!1573015 (= b_free!42099 (not b_next!42803))))

(declare-fun tp!462614 () Bool)

(declare-fun b_and!109905 () Bool)

(assert (=> b!1573015 (= tp!462614 b_and!109905)))

(declare-fun b_free!42101 () Bool)

(declare-fun b_next!42805 () Bool)

(assert (=> b!1573015 (= b_free!42101 (not b_next!42805))))

(declare-fun tp!462616 () Bool)

(declare-fun b_and!109907 () Bool)

(assert (=> b!1573015 (= tp!462616 b_and!109907)))

(declare-fun b!1573007 () Bool)

(declare-fun e!1010050 () Bool)

(declare-fun e!1010056 () Bool)

(declare-fun tp!462612 () Bool)

(assert (=> b!1573007 (= e!1010050 (and e!1010056 tp!462612))))

(declare-fun b!1573008 () Bool)

(declare-fun tp!462617 () Bool)

(declare-datatypes ((List!17195 0))(
  ( (Nil!17125) (Cons!17125 (h!22526 (_ BitVec 16)) (t!143098 List!17195)) )
))
(declare-datatypes ((TokenValue!3094 0))(
  ( (FloatLiteralValue!6188 (text!22103 List!17195)) (TokenValueExt!3093 (__x!11490 Int)) (Broken!15470 (value!95262 List!17195)) (Object!3163) (End!3094) (Def!3094) (Underscore!3094) (Match!3094) (Else!3094) (Error!3094) (Case!3094) (If!3094) (Extends!3094) (Abstract!3094) (Class!3094) (Val!3094) (DelimiterValue!6188 (del!3154 List!17195)) (KeywordValue!3100 (value!95263 List!17195)) (CommentValue!6188 (value!95264 List!17195)) (WhitespaceValue!6188 (value!95265 List!17195)) (IndentationValue!3094 (value!95266 List!17195)) (String!19803) (Int32!3094) (Broken!15471 (value!95267 List!17195)) (Boolean!3095) (Unit!26543) (OperatorValue!3097 (op!3154 List!17195)) (IdentifierValue!6188 (value!95268 List!17195)) (IdentifierValue!6189 (value!95269 List!17195)) (WhitespaceValue!6189 (value!95270 List!17195)) (True!6188) (False!6188) (Broken!15472 (value!95271 List!17195)) (Broken!15473 (value!95272 List!17195)) (True!6189) (RightBrace!3094) (RightBracket!3094) (Colon!3094) (Null!3094) (Comma!3094) (LeftBracket!3094) (False!6189) (LeftBrace!3094) (ImaginaryLiteralValue!3094 (text!22104 List!17195)) (StringLiteralValue!9282 (value!95273 List!17195)) (EOFValue!3094 (value!95274 List!17195)) (IdentValue!3094 (value!95275 List!17195)) (DelimiterValue!6189 (value!95276 List!17195)) (DedentValue!3094 (value!95277 List!17195)) (NewLineValue!3094 (value!95278 List!17195)) (IntegerValue!9282 (value!95279 (_ BitVec 32)) (text!22105 List!17195)) (IntegerValue!9283 (value!95280 Int) (text!22106 List!17195)) (Times!3094) (Or!3094) (Equal!3094) (Minus!3094) (Broken!15474 (value!95281 List!17195)) (And!3094) (Div!3094) (LessEqual!3094) (Mod!3094) (Concat!7426) (Not!3094) (Plus!3094) (SpaceValue!3094 (value!95282 List!17195)) (IntegerValue!9284 (value!95283 Int) (text!22107 List!17195)) (StringLiteralValue!9283 (text!22108 List!17195)) (FloatLiteralValue!6189 (text!22109 List!17195)) (BytesLiteralValue!3094 (value!95284 List!17195)) (CommentValue!6189 (value!95285 List!17195)) (StringLiteralValue!9284 (value!95286 List!17195)) (ErrorTokenValue!3094 (msg!3155 List!17195)) )
))
(declare-datatypes ((C!8838 0))(
  ( (C!8839 (val!5015 Int)) )
))
(declare-datatypes ((List!17196 0))(
  ( (Nil!17126) (Cons!17126 (h!22527 C!8838) (t!143099 List!17196)) )
))
(declare-datatypes ((IArray!11317 0))(
  ( (IArray!11318 (innerList!5716 List!17196)) )
))
(declare-datatypes ((Conc!5656 0))(
  ( (Node!5656 (left!13864 Conc!5656) (right!14194 Conc!5656) (csize!11542 Int) (cheight!5867 Int)) (Leaf!8379 (xs!8460 IArray!11317) (csize!11543 Int)) (Empty!5656) )
))
(declare-datatypes ((BalanceConc!11256 0))(
  ( (BalanceConc!11257 (c!255139 Conc!5656)) )
))
(declare-datatypes ((Regex!4332 0))(
  ( (ElementMatch!4332 (c!255140 C!8838)) (Concat!7427 (regOne!9176 Regex!4332) (regTwo!9176 Regex!4332)) (EmptyExpr!4332) (Star!4332 (reg!4661 Regex!4332)) (EmptyLang!4332) (Union!4332 (regOne!9177 Regex!4332) (regTwo!9177 Regex!4332)) )
))
(declare-datatypes ((String!19804 0))(
  ( (String!19805 (value!95287 String)) )
))
(declare-datatypes ((TokenValueInjection!5848 0))(
  ( (TokenValueInjection!5849 (toValue!4399 Int) (toChars!4258 Int)) )
))
(declare-datatypes ((Rule!5808 0))(
  ( (Rule!5809 (regex!3004 Regex!4332) (tag!3270 String!19804) (isSeparator!3004 Bool) (transformation!3004 TokenValueInjection!5848)) )
))
(declare-datatypes ((Token!5574 0))(
  ( (Token!5575 (value!95288 TokenValue!3094) (rule!4796 Rule!5808) (size!13857 Int) (originalCharacters!3818 List!17196)) )
))
(declare-datatypes ((List!17197 0))(
  ( (Nil!17127) (Cons!17127 (h!22528 Token!5574) (t!143100 List!17197)) )
))
(declare-fun tokens!457 () List!17197)

(declare-fun e!1010051 () Bool)

(declare-fun e!1010049 () Bool)

(declare-fun inv!21 (TokenValue!3094) Bool)

(assert (=> b!1573008 (= e!1010051 (and (inv!21 (value!95288 (h!22528 tokens!457))) e!1010049 tp!462617))))

(declare-fun b!1573009 () Bool)

(declare-fun res!701049 () Bool)

(declare-fun e!1010054 () Bool)

(assert (=> b!1573009 (=> (not res!701049) (not e!1010054))))

(declare-datatypes ((List!17198 0))(
  ( (Nil!17128) (Cons!17128 (h!22529 Rule!5808) (t!143101 List!17198)) )
))
(declare-fun rules!1846 () List!17198)

(declare-datatypes ((LexerInterface!2633 0))(
  ( (LexerInterfaceExt!2630 (__x!11491 Int)) (Lexer!2631) )
))
(declare-fun thiss!17113 () LexerInterface!2633)

(declare-fun rulesProduceEachTokenIndividuallyList!835 (LexerInterface!2633 List!17198 List!17197) Bool)

(assert (=> b!1573009 (= res!701049 (rulesProduceEachTokenIndividuallyList!835 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1573010 () Bool)

(declare-fun res!701053 () Bool)

(assert (=> b!1573010 (=> (not res!701053) (not e!1010054))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!326 (LexerInterface!2633 List!17197 List!17198) Bool)

(assert (=> b!1573010 (= res!701053 (tokensListTwoByTwoPredicateSeparableList!326 thiss!17113 tokens!457 rules!1846))))

(declare-fun e!1010052 () Bool)

(declare-fun b!1573011 () Bool)

(declare-fun tp!462613 () Bool)

(declare-fun inv!22543 (String!19804) Bool)

(declare-fun inv!22546 (TokenValueInjection!5848) Bool)

(assert (=> b!1573011 (= e!1010049 (and tp!462613 (inv!22543 (tag!3270 (rule!4796 (h!22528 tokens!457)))) (inv!22546 (transformation!3004 (rule!4796 (h!22528 tokens!457)))) e!1010052))))

(declare-fun res!701051 () Bool)

(assert (=> start!146792 (=> (not res!701051) (not e!1010054))))

(assert (=> start!146792 (= res!701051 (is-Lexer!2631 thiss!17113))))

(assert (=> start!146792 e!1010054))

(assert (=> start!146792 true))

(assert (=> start!146792 e!1010050))

(declare-fun e!1010053 () Bool)

(assert (=> start!146792 e!1010053))

(declare-fun b!1573012 () Bool)

(declare-fun res!701054 () Bool)

(assert (=> b!1573012 (=> (not res!701054) (not e!1010054))))

(declare-fun rulesInvariant!2302 (LexerInterface!2633 List!17198) Bool)

(assert (=> b!1573012 (= res!701054 (rulesInvariant!2302 thiss!17113 rules!1846))))

(declare-fun b!1573013 () Bool)

(declare-fun res!701050 () Bool)

(assert (=> b!1573013 (=> (not res!701050) (not e!1010054))))

(declare-fun isEmpty!10254 (List!17198) Bool)

(assert (=> b!1573013 (= res!701050 (not (isEmpty!10254 rules!1846)))))

(declare-fun e!1010057 () Bool)

(assert (=> b!1573014 (= e!1010057 (and tp!462615 tp!462611))))

(assert (=> b!1573015 (= e!1010052 (and tp!462614 tp!462616))))

(declare-fun b!1573016 () Bool)

(declare-fun res!701052 () Bool)

(assert (=> b!1573016 (=> (not res!701052) (not e!1010054))))

(assert (=> b!1573016 (= res!701052 (is-Nil!17127 tokens!457))))

(declare-fun tp!462618 () Bool)

(declare-fun b!1573017 () Bool)

(declare-fun inv!22547 (Token!5574) Bool)

(assert (=> b!1573017 (= e!1010053 (and (inv!22547 (h!22528 tokens!457)) e!1010051 tp!462618))))

(declare-fun b!1573018 () Bool)

(assert (=> b!1573018 (= e!1010054 false)))

(declare-fun lt!546885 () List!17197)

(declare-datatypes ((IArray!11319 0))(
  ( (IArray!11320 (innerList!5717 List!17197)) )
))
(declare-datatypes ((Conc!5657 0))(
  ( (Node!5657 (left!13865 Conc!5657) (right!14195 Conc!5657) (csize!11544 Int) (cheight!5868 Int)) (Leaf!8380 (xs!8461 IArray!11319) (csize!11545 Int)) (Empty!5657) )
))
(declare-datatypes ((BalanceConc!11258 0))(
  ( (BalanceConc!11259 (c!255141 Conc!5657)) )
))
(declare-fun list!6597 (BalanceConc!11258) List!17197)

(declare-datatypes ((tuple2!16664 0))(
  ( (tuple2!16665 (_1!9734 BalanceConc!11258) (_2!9734 BalanceConc!11256)) )
))
(declare-fun lex!1127 (LexerInterface!2633 List!17198 BalanceConc!11256) tuple2!16664)

(declare-fun print!1168 (LexerInterface!2633 BalanceConc!11258) BalanceConc!11256)

(declare-fun seqFromList!1801 (List!17197) BalanceConc!11258)

(assert (=> b!1573018 (= lt!546885 (list!6597 (_1!9734 (lex!1127 thiss!17113 rules!1846 (print!1168 thiss!17113 (seqFromList!1801 tokens!457))))))))

(declare-fun tp!462619 () Bool)

(declare-fun b!1573019 () Bool)

(assert (=> b!1573019 (= e!1010056 (and tp!462619 (inv!22543 (tag!3270 (h!22529 rules!1846))) (inv!22546 (transformation!3004 (h!22529 rules!1846))) e!1010057))))

(assert (= (and start!146792 res!701051) b!1573013))

(assert (= (and b!1573013 res!701050) b!1573012))

(assert (= (and b!1573012 res!701054) b!1573009))

(assert (= (and b!1573009 res!701049) b!1573010))

(assert (= (and b!1573010 res!701053) b!1573016))

(assert (= (and b!1573016 res!701052) b!1573018))

(assert (= b!1573019 b!1573014))

(assert (= b!1573007 b!1573019))

(assert (= (and start!146792 (is-Cons!17128 rules!1846)) b!1573007))

(assert (= b!1573011 b!1573015))

(assert (= b!1573008 b!1573011))

(assert (= b!1573017 b!1573008))

(assert (= (and start!146792 (is-Cons!17127 tokens!457)) b!1573017))

(declare-fun m!1852113 () Bool)

(assert (=> b!1573008 m!1852113))

(declare-fun m!1852115 () Bool)

(assert (=> b!1573012 m!1852115))

(declare-fun m!1852117 () Bool)

(assert (=> b!1573009 m!1852117))

(declare-fun m!1852119 () Bool)

(assert (=> b!1573010 m!1852119))

(declare-fun m!1852121 () Bool)

(assert (=> b!1573017 m!1852121))

(declare-fun m!1852123 () Bool)

(assert (=> b!1573013 m!1852123))

(declare-fun m!1852125 () Bool)

(assert (=> b!1573018 m!1852125))

(assert (=> b!1573018 m!1852125))

(declare-fun m!1852127 () Bool)

(assert (=> b!1573018 m!1852127))

(assert (=> b!1573018 m!1852127))

(declare-fun m!1852129 () Bool)

(assert (=> b!1573018 m!1852129))

(declare-fun m!1852131 () Bool)

(assert (=> b!1573018 m!1852131))

(declare-fun m!1852133 () Bool)

(assert (=> b!1573019 m!1852133))

(declare-fun m!1852135 () Bool)

(assert (=> b!1573019 m!1852135))

(declare-fun m!1852137 () Bool)

(assert (=> b!1573011 m!1852137))

(declare-fun m!1852139 () Bool)

(assert (=> b!1573011 m!1852139))

(push 1)

(assert (not b_next!42805))

(assert (not b!1573012))

(assert b_and!109907)

(assert (not b!1573019))

(assert b_and!109905)

(assert (not b!1573009))

(assert (not b_next!42801))

(assert (not b!1573007))

(assert b_and!109901)

(assert (not b!1573011))

(assert (not b_next!42799))

(assert (not b!1573017))

(assert (not b_next!42803))

(assert (not b!1573010))

(assert b_and!109903)

(assert (not b!1573013))

(assert (not b!1573008))

(assert (not b!1573018))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!42803))

(assert (not b_next!42805))

(assert b_and!109907)

(assert b_and!109905)

(assert (not b_next!42801))

(assert b_and!109903)

(assert b_and!109901)

(assert (not b_next!42799))

(check-sat)

(pop 1)

