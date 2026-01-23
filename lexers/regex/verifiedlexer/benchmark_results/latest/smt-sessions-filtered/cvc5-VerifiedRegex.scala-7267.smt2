; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!387786 () Bool)

(assert start!387786)

(declare-fun b!4095156 () Bool)

(declare-fun b_free!114505 () Bool)

(declare-fun b_next!115209 () Bool)

(assert (=> b!4095156 (= b_free!114505 (not b_next!115209))))

(declare-fun tp!1239550 () Bool)

(declare-fun b_and!315867 () Bool)

(assert (=> b!4095156 (= tp!1239550 b_and!315867)))

(declare-fun b_free!114507 () Bool)

(declare-fun b_next!115211 () Bool)

(assert (=> b!4095156 (= b_free!114507 (not b_next!115211))))

(declare-fun tp!1239549 () Bool)

(declare-fun b_and!315869 () Bool)

(assert (=> b!4095156 (= tp!1239549 b_and!315869)))

(declare-fun b!4095161 () Bool)

(declare-fun b_free!114509 () Bool)

(declare-fun b_next!115213 () Bool)

(assert (=> b!4095161 (= b_free!114509 (not b_next!115213))))

(declare-fun tp!1239547 () Bool)

(declare-fun b_and!315871 () Bool)

(assert (=> b!4095161 (= tp!1239547 b_and!315871)))

(declare-fun b_free!114511 () Bool)

(declare-fun b_next!115215 () Bool)

(assert (=> b!4095161 (= b_free!114511 (not b_next!115215))))

(declare-fun tp!1239554 () Bool)

(declare-fun b_and!315873 () Bool)

(assert (=> b!4095161 (= tp!1239554 b_and!315873)))

(declare-fun res!1673898 () Bool)

(declare-fun e!2541331 () Bool)

(assert (=> start!387786 (=> (not res!1673898) (not e!2541331))))

(declare-datatypes ((LexerInterface!6694 0))(
  ( (LexerInterfaceExt!6691 (__x!26887 Int)) (Lexer!6692) )
))
(declare-fun thiss!26199 () LexerInterface!6694)

(assert (=> start!387786 (= res!1673898 (is-Lexer!6692 thiss!26199))))

(assert (=> start!387786 e!2541331))

(assert (=> start!387786 true))

(declare-fun e!2541324 () Bool)

(assert (=> start!387786 e!2541324))

(declare-fun e!2541321 () Bool)

(assert (=> start!387786 e!2541321))

(declare-fun e!2541322 () Bool)

(assert (=> start!387786 e!2541322))

(declare-fun e!2541327 () Bool)

(assert (=> start!387786 e!2541327))

(declare-fun e!2541319 () Bool)

(assert (=> start!387786 e!2541319))

(declare-fun b!4095155 () Bool)

(declare-fun tp_is_empty!21023 () Bool)

(declare-fun tp!1239551 () Bool)

(assert (=> b!4095155 (= e!2541327 (and tp_is_empty!21023 tp!1239551))))

(declare-fun e!2541325 () Bool)

(assert (=> b!4095156 (= e!2541325 (and tp!1239550 tp!1239549))))

(declare-fun b!4095157 () Bool)

(declare-fun e!2541323 () Bool)

(declare-fun e!2541329 () Bool)

(assert (=> b!4095157 (= e!2541323 e!2541329)))

(declare-fun res!1673891 () Bool)

(assert (=> b!4095157 (=> res!1673891 e!2541329)))

(declare-datatypes ((List!44030 0))(
  ( (Nil!43906) (Cons!43906 (h!49326 (_ BitVec 16)) (t!339197 List!44030)) )
))
(declare-datatypes ((TokenValue!7335 0))(
  ( (FloatLiteralValue!14670 (text!51790 List!44030)) (TokenValueExt!7334 (__x!26888 Int)) (Broken!36675 (value!223120 List!44030)) (Object!7458) (End!7335) (Def!7335) (Underscore!7335) (Match!7335) (Else!7335) (Error!7335) (Case!7335) (If!7335) (Extends!7335) (Abstract!7335) (Class!7335) (Val!7335) (DelimiterValue!14670 (del!7395 List!44030)) (KeywordValue!7341 (value!223121 List!44030)) (CommentValue!14670 (value!223122 List!44030)) (WhitespaceValue!14670 (value!223123 List!44030)) (IndentationValue!7335 (value!223124 List!44030)) (String!50426) (Int32!7335) (Broken!36676 (value!223125 List!44030)) (Boolean!7336) (Unit!63441) (OperatorValue!7338 (op!7395 List!44030)) (IdentifierValue!14670 (value!223126 List!44030)) (IdentifierValue!14671 (value!223127 List!44030)) (WhitespaceValue!14671 (value!223128 List!44030)) (True!14670) (False!14670) (Broken!36677 (value!223129 List!44030)) (Broken!36678 (value!223130 List!44030)) (True!14671) (RightBrace!7335) (RightBracket!7335) (Colon!7335) (Null!7335) (Comma!7335) (LeftBracket!7335) (False!14671) (LeftBrace!7335) (ImaginaryLiteralValue!7335 (text!51791 List!44030)) (StringLiteralValue!22005 (value!223131 List!44030)) (EOFValue!7335 (value!223132 List!44030)) (IdentValue!7335 (value!223133 List!44030)) (DelimiterValue!14671 (value!223134 List!44030)) (DedentValue!7335 (value!223135 List!44030)) (NewLineValue!7335 (value!223136 List!44030)) (IntegerValue!22005 (value!223137 (_ BitVec 32)) (text!51792 List!44030)) (IntegerValue!22006 (value!223138 Int) (text!51793 List!44030)) (Times!7335) (Or!7335) (Equal!7335) (Minus!7335) (Broken!36679 (value!223139 List!44030)) (And!7335) (Div!7335) (LessEqual!7335) (Mod!7335) (Concat!19345) (Not!7335) (Plus!7335) (SpaceValue!7335 (value!223140 List!44030)) (IntegerValue!22007 (value!223141 Int) (text!51794 List!44030)) (StringLiteralValue!22006 (text!51795 List!44030)) (FloatLiteralValue!14671 (text!51796 List!44030)) (BytesLiteralValue!7335 (value!223142 List!44030)) (CommentValue!14671 (value!223143 List!44030)) (StringLiteralValue!22007 (value!223144 List!44030)) (ErrorTokenValue!7335 (msg!7396 List!44030)) )
))
(declare-datatypes ((C!24206 0))(
  ( (C!24207 (val!14213 Int)) )
))
(declare-datatypes ((Regex!12010 0))(
  ( (ElementMatch!12010 (c!705761 C!24206)) (Concat!19346 (regOne!24532 Regex!12010) (regTwo!24532 Regex!12010)) (EmptyExpr!12010) (Star!12010 (reg!12339 Regex!12010)) (EmptyLang!12010) (Union!12010 (regOne!24533 Regex!12010) (regTwo!24533 Regex!12010)) )
))
(declare-datatypes ((String!50427 0))(
  ( (String!50428 (value!223145 String)) )
))
(declare-datatypes ((List!44031 0))(
  ( (Nil!43907) (Cons!43907 (h!49327 C!24206) (t!339198 List!44031)) )
))
(declare-datatypes ((IArray!26637 0))(
  ( (IArray!26638 (innerList!13376 List!44031)) )
))
(declare-datatypes ((Conc!13316 0))(
  ( (Node!13316 (left!33007 Conc!13316) (right!33337 Conc!13316) (csize!26862 Int) (cheight!13527 Int)) (Leaf!20584 (xs!16622 IArray!26637) (csize!26863 Int)) (Empty!13316) )
))
(declare-datatypes ((BalanceConc!26226 0))(
  ( (BalanceConc!26227 (c!705762 Conc!13316)) )
))
(declare-datatypes ((TokenValueInjection!14098 0))(
  ( (TokenValueInjection!14099 (toValue!9705 Int) (toChars!9564 Int)) )
))
(declare-datatypes ((Rule!14010 0))(
  ( (Rule!14011 (regex!7105 Regex!12010) (tag!7965 String!50427) (isSeparator!7105 Bool) (transformation!7105 TokenValueInjection!14098)) )
))
(declare-datatypes ((List!44032 0))(
  ( (Nil!43908) (Cons!43908 (h!49328 Rule!14010) (t!339199 List!44032)) )
))
(declare-fun rules!3870 () List!44032)

(declare-datatypes ((Token!13336 0))(
  ( (Token!13337 (value!223146 TokenValue!7335) (rule!10255 Rule!14010) (size!32802 Int) (originalCharacters!7699 List!44031)) )
))
(declare-datatypes ((tuple2!42838 0))(
  ( (tuple2!42839 (_1!24553 Token!13336) (_2!24553 List!44031)) )
))
(declare-datatypes ((Option!9511 0))(
  ( (None!9510) (Some!9510 (v!40006 tuple2!42838)) )
))
(declare-fun lt!1464784 () Option!9511)

(declare-fun lt!1464787 () tuple2!42838)

(declare-fun lt!1464786 () Option!9511)

(declare-fun r!4213 () Rule!14010)

(assert (=> b!4095157 (= res!1673891 (or (not (= (rule!10255 (_1!24553 lt!1464787)) (h!49328 rules!3870))) (= (rule!10255 (_1!24553 lt!1464787)) r!4213) (= lt!1464784 lt!1464786)))))

(declare-fun get!14402 (Option!9511) tuple2!42838)

(assert (=> b!4095157 (= lt!1464787 (get!14402 lt!1464784))))

(declare-fun b!4095158 () Bool)

(declare-fun e!2541332 () Bool)

(assert (=> b!4095158 (= e!2541331 e!2541332)))

(declare-fun res!1673889 () Bool)

(assert (=> b!4095158 (=> (not res!1673889) (not e!2541332))))

(declare-fun input!3411 () List!44031)

(declare-fun maxPrefix!3984 (LexerInterface!6694 List!44032 List!44031) Option!9511)

(assert (=> b!4095158 (= res!1673889 (= (maxPrefix!3984 thiss!26199 rules!3870 input!3411) lt!1464786))))

(declare-fun suffix!1518 () List!44031)

(declare-fun p!2988 () List!44031)

(declare-fun lt!1464790 () BalanceConc!26226)

(declare-fun apply!10288 (TokenValueInjection!14098 BalanceConc!26226) TokenValue!7335)

(declare-fun size!32803 (List!44031) Int)

(assert (=> b!4095158 (= lt!1464786 (Some!9510 (tuple2!42839 (Token!13337 (apply!10288 (transformation!7105 r!4213) lt!1464790) r!4213 (size!32803 p!2988) p!2988) suffix!1518)))))

(declare-datatypes ((Unit!63442 0))(
  ( (Unit!63443) )
))
(declare-fun lt!1464785 () Unit!63442)

(declare-fun lemmaSemiInverse!2072 (TokenValueInjection!14098 BalanceConc!26226) Unit!63442)

(assert (=> b!4095158 (= lt!1464785 (lemmaSemiInverse!2072 (transformation!7105 r!4213) lt!1464790))))

(declare-fun seqFromList!5322 (List!44031) BalanceConc!26226)

(assert (=> b!4095158 (= lt!1464790 (seqFromList!5322 p!2988))))

(declare-fun b!4095159 () Bool)

(declare-fun res!1673888 () Bool)

(assert (=> b!4095159 (=> (not res!1673888) (not e!2541331))))

(declare-fun isEmpty!26268 (List!44031) Bool)

(assert (=> b!4095159 (= res!1673888 (not (isEmpty!26268 p!2988)))))

(declare-fun b!4095160 () Bool)

(declare-fun res!1673895 () Bool)

(assert (=> b!4095160 (=> res!1673895 e!2541329)))

(assert (=> b!4095160 (= res!1673895 (not (= (maxPrefix!3984 thiss!26199 (t!339199 rules!3870) input!3411) lt!1464786)))))

(declare-fun e!2541333 () Bool)

(assert (=> b!4095161 (= e!2541333 (and tp!1239547 tp!1239554))))

(declare-fun b!4095162 () Bool)

(declare-fun contains!8790 (List!44032 Rule!14010) Bool)

(assert (=> b!4095162 (= e!2541329 (contains!8790 (t!339199 rules!3870) r!4213))))

(declare-fun b!4095163 () Bool)

(declare-fun res!1673892 () Bool)

(assert (=> b!4095163 (=> (not res!1673892) (not e!2541331))))

(assert (=> b!4095163 (= res!1673892 (contains!8790 rules!3870 r!4213))))

(declare-fun b!4095164 () Bool)

(declare-fun tp!1239548 () Bool)

(assert (=> b!4095164 (= e!2541322 (and tp_is_empty!21023 tp!1239548))))

(declare-fun b!4095165 () Bool)

(declare-fun e!2541320 () Bool)

(declare-fun tp!1239552 () Bool)

(assert (=> b!4095165 (= e!2541321 (and e!2541320 tp!1239552))))

(declare-fun b!4095166 () Bool)

(declare-fun res!1673897 () Bool)

(declare-fun e!2541328 () Bool)

(assert (=> b!4095166 (=> res!1673897 e!2541328)))

(assert (=> b!4095166 (= res!1673897 (or (and (is-Cons!43908 rules!3870) (= (h!49328 rules!3870) r!4213)) (not (is-Cons!43908 rules!3870)) (= (h!49328 rules!3870) r!4213)))))

(declare-fun b!4095167 () Bool)

(declare-fun res!1673887 () Bool)

(assert (=> b!4095167 (=> (not res!1673887) (not e!2541331))))

(declare-fun rulesInvariant!6037 (LexerInterface!6694 List!44032) Bool)

(assert (=> b!4095167 (= res!1673887 (rulesInvariant!6037 thiss!26199 rules!3870))))

(declare-fun b!4095168 () Bool)

(assert (=> b!4095168 (= e!2541328 e!2541323)))

(declare-fun res!1673899 () Bool)

(assert (=> b!4095168 (=> res!1673899 e!2541323)))

(declare-fun isEmpty!26269 (Option!9511) Bool)

(assert (=> b!4095168 (= res!1673899 (isEmpty!26269 lt!1464784))))

(declare-fun maxPrefixOneRule!2966 (LexerInterface!6694 Rule!14010 List!44031) Option!9511)

(assert (=> b!4095168 (= lt!1464784 (maxPrefixOneRule!2966 thiss!26199 (h!49328 rules!3870) input!3411))))

(assert (=> b!4095168 (rulesInvariant!6037 thiss!26199 (t!339199 rules!3870))))

(declare-fun lt!1464788 () Unit!63442)

(declare-fun lemmaInvariantOnRulesThenOnTail!807 (LexerInterface!6694 Rule!14010 List!44032) Unit!63442)

(assert (=> b!4095168 (= lt!1464788 (lemmaInvariantOnRulesThenOnTail!807 thiss!26199 (h!49328 rules!3870) (t!339199 rules!3870)))))

(declare-fun b!4095169 () Bool)

(declare-fun res!1673896 () Bool)

(assert (=> b!4095169 (=> (not res!1673896) (not e!2541331))))

(declare-fun ++!11511 (List!44031 List!44031) List!44031)

(assert (=> b!4095169 (= res!1673896 (= input!3411 (++!11511 p!2988 suffix!1518)))))

(declare-fun tp!1239553 () Bool)

(declare-fun b!4095170 () Bool)

(declare-fun inv!58634 (String!50427) Bool)

(declare-fun inv!58637 (TokenValueInjection!14098) Bool)

(assert (=> b!4095170 (= e!2541319 (and tp!1239553 (inv!58634 (tag!7965 r!4213)) (inv!58637 (transformation!7105 r!4213)) e!2541325))))

(declare-fun b!4095171 () Bool)

(assert (=> b!4095171 (= e!2541332 (not e!2541328))))

(declare-fun res!1673893 () Bool)

(assert (=> b!4095171 (=> res!1673893 e!2541328)))

(declare-fun matchR!5951 (Regex!12010 List!44031) Bool)

(assert (=> b!4095171 (= res!1673893 (not (matchR!5951 (regex!7105 r!4213) p!2988)))))

(declare-fun ruleValid!3025 (LexerInterface!6694 Rule!14010) Bool)

(assert (=> b!4095171 (ruleValid!3025 thiss!26199 r!4213)))

(declare-fun lt!1464789 () Unit!63442)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2091 (LexerInterface!6694 Rule!14010 List!44032) Unit!63442)

(assert (=> b!4095171 (= lt!1464789 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2091 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4095172 () Bool)

(declare-fun tp!1239545 () Bool)

(assert (=> b!4095172 (= e!2541324 (and tp_is_empty!21023 tp!1239545))))

(declare-fun b!4095173 () Bool)

(declare-fun res!1673894 () Bool)

(assert (=> b!4095173 (=> (not res!1673894) (not e!2541331))))

(declare-fun isEmpty!26270 (List!44032) Bool)

(assert (=> b!4095173 (= res!1673894 (not (isEmpty!26270 rules!3870)))))

(declare-fun b!4095174 () Bool)

(declare-fun res!1673890 () Bool)

(assert (=> b!4095174 (=> res!1673890 e!2541329)))

(assert (=> b!4095174 (= res!1673890 (isEmpty!26270 (t!339199 rules!3870)))))

(declare-fun b!4095175 () Bool)

(declare-fun tp!1239546 () Bool)

(assert (=> b!4095175 (= e!2541320 (and tp!1239546 (inv!58634 (tag!7965 (h!49328 rules!3870))) (inv!58637 (transformation!7105 (h!49328 rules!3870))) e!2541333))))

(assert (= (and start!387786 res!1673898) b!4095173))

(assert (= (and b!4095173 res!1673894) b!4095167))

(assert (= (and b!4095167 res!1673887) b!4095163))

(assert (= (and b!4095163 res!1673892) b!4095169))

(assert (= (and b!4095169 res!1673896) b!4095159))

(assert (= (and b!4095159 res!1673888) b!4095158))

(assert (= (and b!4095158 res!1673889) b!4095171))

(assert (= (and b!4095171 (not res!1673893)) b!4095166))

(assert (= (and b!4095166 (not res!1673897)) b!4095168))

(assert (= (and b!4095168 (not res!1673899)) b!4095157))

(assert (= (and b!4095157 (not res!1673891)) b!4095160))

(assert (= (and b!4095160 (not res!1673895)) b!4095174))

(assert (= (and b!4095174 (not res!1673890)) b!4095162))

(assert (= (and start!387786 (is-Cons!43907 suffix!1518)) b!4095172))

(assert (= b!4095175 b!4095161))

(assert (= b!4095165 b!4095175))

(assert (= (and start!387786 (is-Cons!43908 rules!3870)) b!4095165))

(assert (= (and start!387786 (is-Cons!43907 p!2988)) b!4095164))

(assert (= (and start!387786 (is-Cons!43907 input!3411)) b!4095155))

(assert (= b!4095170 b!4095156))

(assert (= start!387786 b!4095170))

(declare-fun m!4702097 () Bool)

(assert (=> b!4095160 m!4702097))

(declare-fun m!4702099 () Bool)

(assert (=> b!4095158 m!4702099))

(declare-fun m!4702101 () Bool)

(assert (=> b!4095158 m!4702101))

(declare-fun m!4702103 () Bool)

(assert (=> b!4095158 m!4702103))

(declare-fun m!4702105 () Bool)

(assert (=> b!4095158 m!4702105))

(declare-fun m!4702107 () Bool)

(assert (=> b!4095158 m!4702107))

(declare-fun m!4702109 () Bool)

(assert (=> b!4095163 m!4702109))

(declare-fun m!4702111 () Bool)

(assert (=> b!4095168 m!4702111))

(declare-fun m!4702113 () Bool)

(assert (=> b!4095168 m!4702113))

(declare-fun m!4702115 () Bool)

(assert (=> b!4095168 m!4702115))

(declare-fun m!4702117 () Bool)

(assert (=> b!4095168 m!4702117))

(declare-fun m!4702119 () Bool)

(assert (=> b!4095167 m!4702119))

(declare-fun m!4702121 () Bool)

(assert (=> b!4095157 m!4702121))

(declare-fun m!4702123 () Bool)

(assert (=> b!4095171 m!4702123))

(declare-fun m!4702125 () Bool)

(assert (=> b!4095171 m!4702125))

(declare-fun m!4702127 () Bool)

(assert (=> b!4095171 m!4702127))

(declare-fun m!4702129 () Bool)

(assert (=> b!4095174 m!4702129))

(declare-fun m!4702131 () Bool)

(assert (=> b!4095159 m!4702131))

(declare-fun m!4702133 () Bool)

(assert (=> b!4095173 m!4702133))

(declare-fun m!4702135 () Bool)

(assert (=> b!4095170 m!4702135))

(declare-fun m!4702137 () Bool)

(assert (=> b!4095170 m!4702137))

(declare-fun m!4702139 () Bool)

(assert (=> b!4095175 m!4702139))

(declare-fun m!4702141 () Bool)

(assert (=> b!4095175 m!4702141))

(declare-fun m!4702143 () Bool)

(assert (=> b!4095162 m!4702143))

(declare-fun m!4702145 () Bool)

(assert (=> b!4095169 m!4702145))

(push 1)

(assert (not b!4095168))

(assert (not b!4095165))

(assert (not b!4095173))

(assert (not b!4095170))

(assert b_and!315867)

(assert (not b!4095158))

(assert (not b!4095171))

(assert (not b!4095160))

(assert (not b_next!115215))

(assert (not b!4095172))

(assert b_and!315873)

(assert (not b!4095175))

(assert (not b!4095174))

(assert (not b!4095163))

(assert (not b!4095159))

(assert (not b_next!115213))

(assert (not b_next!115211))

(assert b_and!315869)

(assert (not b_next!115209))

(assert (not b!4095157))

(assert (not b!4095164))

(assert (not b!4095162))

(assert b_and!315871)

(assert (not b!4095169))

(assert tp_is_empty!21023)

(assert (not b!4095167))

(assert (not b!4095155))

(check-sat)

(pop 1)

(push 1)

(assert b_and!315873)

(assert (not b_next!115213))

(assert b_and!315867)

(assert (not b_next!115215))

(assert b_and!315871)

(assert (not b_next!115211))

(assert b_and!315869)

(assert (not b_next!115209))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1215964 () Bool)

(assert (=> d!1215964 (= (isEmpty!26270 (t!339199 rules!3870)) (is-Nil!43908 (t!339199 rules!3870)))))

(assert (=> b!4095174 d!1215964))

(declare-fun d!1215966 () Bool)

(declare-fun lt!1464814 () Bool)

(declare-fun content!6776 (List!44032) (Set Rule!14010))

(assert (=> d!1215966 (= lt!1464814 (set.member r!4213 (content!6776 rules!3870)))))

(declare-fun e!2541384 () Bool)

(assert (=> d!1215966 (= lt!1464814 e!2541384)))

(declare-fun res!1673950 () Bool)

(assert (=> d!1215966 (=> (not res!1673950) (not e!2541384))))

(assert (=> d!1215966 (= res!1673950 (is-Cons!43908 rules!3870))))

(assert (=> d!1215966 (= (contains!8790 rules!3870 r!4213) lt!1464814)))

(declare-fun b!4095243 () Bool)

(declare-fun e!2541383 () Bool)

(assert (=> b!4095243 (= e!2541384 e!2541383)))

(declare-fun res!1673951 () Bool)

(assert (=> b!4095243 (=> res!1673951 e!2541383)))

(assert (=> b!4095243 (= res!1673951 (= (h!49328 rules!3870) r!4213))))

(declare-fun b!4095244 () Bool)

(assert (=> b!4095244 (= e!2541383 (contains!8790 (t!339199 rules!3870) r!4213))))

(assert (= (and d!1215966 res!1673950) b!4095243))

(assert (= (and b!4095243 (not res!1673951)) b!4095244))

(declare-fun m!4702197 () Bool)

(assert (=> d!1215966 m!4702197))

(declare-fun m!4702199 () Bool)

(assert (=> d!1215966 m!4702199))

(assert (=> b!4095244 m!4702143))

(assert (=> b!4095163 d!1215966))

(declare-fun d!1215968 () Bool)

(assert (=> d!1215968 (= (inv!58634 (tag!7965 (h!49328 rules!3870))) (= (mod (str.len (value!223145 (tag!7965 (h!49328 rules!3870)))) 2) 0))))

(assert (=> b!4095175 d!1215968))

(declare-fun d!1215970 () Bool)

(declare-fun res!1673954 () Bool)

(declare-fun e!2541387 () Bool)

(assert (=> d!1215970 (=> (not res!1673954) (not e!2541387))))

(declare-fun semiInverseModEq!3057 (Int Int) Bool)

(assert (=> d!1215970 (= res!1673954 (semiInverseModEq!3057 (toChars!9564 (transformation!7105 (h!49328 rules!3870))) (toValue!9705 (transformation!7105 (h!49328 rules!3870)))))))

(assert (=> d!1215970 (= (inv!58637 (transformation!7105 (h!49328 rules!3870))) e!2541387)))

(declare-fun b!4095247 () Bool)

(declare-fun equivClasses!2956 (Int Int) Bool)

(assert (=> b!4095247 (= e!2541387 (equivClasses!2956 (toChars!9564 (transformation!7105 (h!49328 rules!3870))) (toValue!9705 (transformation!7105 (h!49328 rules!3870)))))))

(assert (= (and d!1215970 res!1673954) b!4095247))

(declare-fun m!4702201 () Bool)

(assert (=> d!1215970 m!4702201))

(declare-fun m!4702203 () Bool)

(assert (=> b!4095247 m!4702203))

(assert (=> b!4095175 d!1215970))

(declare-fun d!1215972 () Bool)

(assert (=> d!1215972 (= (get!14402 lt!1464784) (v!40006 lt!1464784))))

(assert (=> b!4095157 d!1215972))

(declare-fun d!1215974 () Bool)

(declare-fun res!1673957 () Bool)

(declare-fun e!2541390 () Bool)

(assert (=> d!1215974 (=> (not res!1673957) (not e!2541390))))

(declare-fun rulesValid!2791 (LexerInterface!6694 List!44032) Bool)

(assert (=> d!1215974 (= res!1673957 (rulesValid!2791 thiss!26199 rules!3870))))

(assert (=> d!1215974 (= (rulesInvariant!6037 thiss!26199 rules!3870) e!2541390)))

(declare-fun b!4095250 () Bool)

(declare-datatypes ((List!44036 0))(
  ( (Nil!43912) (Cons!43912 (h!49332 String!50427) (t!339215 List!44036)) )
))
(declare-fun noDuplicateTag!2792 (LexerInterface!6694 List!44032 List!44036) Bool)

(assert (=> b!4095250 (= e!2541390 (noDuplicateTag!2792 thiss!26199 rules!3870 Nil!43912))))

(assert (= (and d!1215974 res!1673957) b!4095250))

(declare-fun m!4702205 () Bool)

(assert (=> d!1215974 m!4702205))

(declare-fun m!4702207 () Bool)

(assert (=> b!4095250 m!4702207))

(assert (=> b!4095167 d!1215974))

(declare-fun b!4095260 () Bool)

(declare-fun e!2541396 () List!44031)

(assert (=> b!4095260 (= e!2541396 (Cons!43907 (h!49327 p!2988) (++!11511 (t!339198 p!2988) suffix!1518)))))

(declare-fun d!1215976 () Bool)

(declare-fun e!2541395 () Bool)

(assert (=> d!1215976 e!2541395))

(declare-fun res!1673963 () Bool)

(assert (=> d!1215976 (=> (not res!1673963) (not e!2541395))))

(declare-fun lt!1464817 () List!44031)

(declare-fun content!6777 (List!44031) (Set C!24206))

(assert (=> d!1215976 (= res!1673963 (= (content!6777 lt!1464817) (set.union (content!6777 p!2988) (content!6777 suffix!1518))))))

(assert (=> d!1215976 (= lt!1464817 e!2541396)))

(declare-fun c!705768 () Bool)

(assert (=> d!1215976 (= c!705768 (is-Nil!43907 p!2988))))

(assert (=> d!1215976 (= (++!11511 p!2988 suffix!1518) lt!1464817)))

(declare-fun b!4095261 () Bool)

(declare-fun res!1673962 () Bool)

(assert (=> b!4095261 (=> (not res!1673962) (not e!2541395))))

(assert (=> b!4095261 (= res!1673962 (= (size!32803 lt!1464817) (+ (size!32803 p!2988) (size!32803 suffix!1518))))))

(declare-fun b!4095262 () Bool)

(assert (=> b!4095262 (= e!2541395 (or (not (= suffix!1518 Nil!43907)) (= lt!1464817 p!2988)))))

(declare-fun b!4095259 () Bool)

(assert (=> b!4095259 (= e!2541396 suffix!1518)))

(assert (= (and d!1215976 c!705768) b!4095259))

(assert (= (and d!1215976 (not c!705768)) b!4095260))

(assert (= (and d!1215976 res!1673963) b!4095261))

(assert (= (and b!4095261 res!1673962) b!4095262))

(declare-fun m!4702209 () Bool)

(assert (=> b!4095260 m!4702209))

(declare-fun m!4702211 () Bool)

(assert (=> d!1215976 m!4702211))

(declare-fun m!4702213 () Bool)

(assert (=> d!1215976 m!4702213))

(declare-fun m!4702215 () Bool)

(assert (=> d!1215976 m!4702215))

(declare-fun m!4702217 () Bool)

(assert (=> b!4095261 m!4702217))

(assert (=> b!4095261 m!4702103))

(declare-fun m!4702219 () Bool)

(assert (=> b!4095261 m!4702219))

(assert (=> b!4095169 d!1215976))

(declare-fun b!4095281 () Bool)

(declare-fun res!1673982 () Bool)

(declare-fun e!2541404 () Bool)

(assert (=> b!4095281 (=> (not res!1673982) (not e!2541404))))

(declare-fun lt!1464829 () Option!9511)

(assert (=> b!4095281 (= res!1673982 (= (value!223146 (_1!24553 (get!14402 lt!1464829))) (apply!10288 (transformation!7105 (rule!10255 (_1!24553 (get!14402 lt!1464829)))) (seqFromList!5322 (originalCharacters!7699 (_1!24553 (get!14402 lt!1464829)))))))))

(declare-fun b!4095282 () Bool)

(declare-fun res!1673983 () Bool)

(assert (=> b!4095282 (=> (not res!1673983) (not e!2541404))))

(declare-fun list!16297 (BalanceConc!26226) List!44031)

(declare-fun charsOf!4863 (Token!13336) BalanceConc!26226)

(assert (=> b!4095282 (= res!1673983 (matchR!5951 (regex!7105 (rule!10255 (_1!24553 (get!14402 lt!1464829)))) (list!16297 (charsOf!4863 (_1!24553 (get!14402 lt!1464829))))))))

(declare-fun b!4095283 () Bool)

(declare-fun res!1673984 () Bool)

(assert (=> b!4095283 (=> (not res!1673984) (not e!2541404))))

(assert (=> b!4095283 (= res!1673984 (< (size!32803 (_2!24553 (get!14402 lt!1464829))) (size!32803 input!3411)))))

(declare-fun d!1215978 () Bool)

(declare-fun e!2541405 () Bool)

(assert (=> d!1215978 e!2541405))

(declare-fun res!1673981 () Bool)

(assert (=> d!1215978 (=> res!1673981 e!2541405)))

(assert (=> d!1215978 (= res!1673981 (isEmpty!26269 lt!1464829))))

(declare-fun e!2541403 () Option!9511)

(assert (=> d!1215978 (= lt!1464829 e!2541403)))

(declare-fun c!705771 () Bool)

(assert (=> d!1215978 (= c!705771 (and (is-Cons!43908 rules!3870) (is-Nil!43908 (t!339199 rules!3870))))))

(declare-fun lt!1464828 () Unit!63442)

(declare-fun lt!1464830 () Unit!63442)

(assert (=> d!1215978 (= lt!1464828 lt!1464830)))

(declare-fun isPrefix!4150 (List!44031 List!44031) Bool)

(assert (=> d!1215978 (isPrefix!4150 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2701 (List!44031 List!44031) Unit!63442)

(assert (=> d!1215978 (= lt!1464830 (lemmaIsPrefixRefl!2701 input!3411 input!3411))))

(declare-fun rulesValidInductive!2632 (LexerInterface!6694 List!44032) Bool)

(assert (=> d!1215978 (rulesValidInductive!2632 thiss!26199 rules!3870)))

(assert (=> d!1215978 (= (maxPrefix!3984 thiss!26199 rules!3870 input!3411) lt!1464829)))

(declare-fun call!289471 () Option!9511)

(declare-fun bm!289466 () Bool)

(assert (=> bm!289466 (= call!289471 (maxPrefixOneRule!2966 thiss!26199 (h!49328 rules!3870) input!3411))))

(declare-fun b!4095284 () Bool)

(declare-fun lt!1464831 () Option!9511)

(declare-fun lt!1464832 () Option!9511)

(assert (=> b!4095284 (= e!2541403 (ite (and (is-None!9510 lt!1464831) (is-None!9510 lt!1464832)) None!9510 (ite (is-None!9510 lt!1464832) lt!1464831 (ite (is-None!9510 lt!1464831) lt!1464832 (ite (>= (size!32802 (_1!24553 (v!40006 lt!1464831))) (size!32802 (_1!24553 (v!40006 lt!1464832)))) lt!1464831 lt!1464832)))))))

(assert (=> b!4095284 (= lt!1464831 call!289471)))

(assert (=> b!4095284 (= lt!1464832 (maxPrefix!3984 thiss!26199 (t!339199 rules!3870) input!3411))))

(declare-fun b!4095285 () Bool)

(declare-fun res!1673979 () Bool)

(assert (=> b!4095285 (=> (not res!1673979) (not e!2541404))))

(assert (=> b!4095285 (= res!1673979 (= (list!16297 (charsOf!4863 (_1!24553 (get!14402 lt!1464829)))) (originalCharacters!7699 (_1!24553 (get!14402 lt!1464829)))))))

(declare-fun b!4095286 () Bool)

(assert (=> b!4095286 (= e!2541403 call!289471)))

(declare-fun b!4095287 () Bool)

(assert (=> b!4095287 (= e!2541404 (contains!8790 rules!3870 (rule!10255 (_1!24553 (get!14402 lt!1464829)))))))

(declare-fun b!4095288 () Bool)

(assert (=> b!4095288 (= e!2541405 e!2541404)))

(declare-fun res!1673978 () Bool)

(assert (=> b!4095288 (=> (not res!1673978) (not e!2541404))))

(declare-fun isDefined!7199 (Option!9511) Bool)

(assert (=> b!4095288 (= res!1673978 (isDefined!7199 lt!1464829))))

(declare-fun b!4095289 () Bool)

(declare-fun res!1673980 () Bool)

(assert (=> b!4095289 (=> (not res!1673980) (not e!2541404))))

(assert (=> b!4095289 (= res!1673980 (= (++!11511 (list!16297 (charsOf!4863 (_1!24553 (get!14402 lt!1464829)))) (_2!24553 (get!14402 lt!1464829))) input!3411))))

(assert (= (and d!1215978 c!705771) b!4095286))

(assert (= (and d!1215978 (not c!705771)) b!4095284))

(assert (= (or b!4095286 b!4095284) bm!289466))

(assert (= (and d!1215978 (not res!1673981)) b!4095288))

(assert (= (and b!4095288 res!1673978) b!4095285))

(assert (= (and b!4095285 res!1673979) b!4095283))

(assert (= (and b!4095283 res!1673984) b!4095289))

(assert (= (and b!4095289 res!1673980) b!4095281))

(assert (= (and b!4095281 res!1673982) b!4095282))

(assert (= (and b!4095282 res!1673983) b!4095287))

(declare-fun m!4702221 () Bool)

(assert (=> b!4095285 m!4702221))

(declare-fun m!4702223 () Bool)

(assert (=> b!4095285 m!4702223))

(assert (=> b!4095285 m!4702223))

(declare-fun m!4702225 () Bool)

(assert (=> b!4095285 m!4702225))

(assert (=> b!4095281 m!4702221))

(declare-fun m!4702227 () Bool)

(assert (=> b!4095281 m!4702227))

(assert (=> b!4095281 m!4702227))

(declare-fun m!4702229 () Bool)

(assert (=> b!4095281 m!4702229))

(assert (=> b!4095289 m!4702221))

(assert (=> b!4095289 m!4702223))

(assert (=> b!4095289 m!4702223))

(assert (=> b!4095289 m!4702225))

(assert (=> b!4095289 m!4702225))

(declare-fun m!4702231 () Bool)

(assert (=> b!4095289 m!4702231))

(assert (=> b!4095284 m!4702097))

(assert (=> b!4095282 m!4702221))

(assert (=> b!4095282 m!4702223))

(assert (=> b!4095282 m!4702223))

(assert (=> b!4095282 m!4702225))

(assert (=> b!4095282 m!4702225))

(declare-fun m!4702233 () Bool)

(assert (=> b!4095282 m!4702233))

(declare-fun m!4702235 () Bool)

(assert (=> d!1215978 m!4702235))

(declare-fun m!4702237 () Bool)

(assert (=> d!1215978 m!4702237))

(declare-fun m!4702239 () Bool)

(assert (=> d!1215978 m!4702239))

(declare-fun m!4702241 () Bool)

(assert (=> d!1215978 m!4702241))

(assert (=> b!4095283 m!4702221))

(declare-fun m!4702243 () Bool)

(assert (=> b!4095283 m!4702243))

(declare-fun m!4702245 () Bool)

(assert (=> b!4095283 m!4702245))

(assert (=> b!4095287 m!4702221))

(declare-fun m!4702247 () Bool)

(assert (=> b!4095287 m!4702247))

(assert (=> bm!289466 m!4702113))

(declare-fun m!4702249 () Bool)

(assert (=> b!4095288 m!4702249))

(assert (=> b!4095158 d!1215978))

(declare-fun d!1215990 () Bool)

(declare-fun lt!1464835 () Int)

(assert (=> d!1215990 (>= lt!1464835 0)))

(declare-fun e!2541408 () Int)

(assert (=> d!1215990 (= lt!1464835 e!2541408)))

(declare-fun c!705774 () Bool)

(assert (=> d!1215990 (= c!705774 (is-Nil!43907 p!2988))))

(assert (=> d!1215990 (= (size!32803 p!2988) lt!1464835)))

(declare-fun b!4095294 () Bool)

(assert (=> b!4095294 (= e!2541408 0)))

(declare-fun b!4095295 () Bool)

(assert (=> b!4095295 (= e!2541408 (+ 1 (size!32803 (t!339198 p!2988))))))

(assert (= (and d!1215990 c!705774) b!4095294))

(assert (= (and d!1215990 (not c!705774)) b!4095295))

(declare-fun m!4702251 () Bool)

(assert (=> b!4095295 m!4702251))

(assert (=> b!4095158 d!1215990))

(declare-fun d!1215992 () Bool)

(declare-fun fromListB!2443 (List!44031) BalanceConc!26226)

(assert (=> d!1215992 (= (seqFromList!5322 p!2988) (fromListB!2443 p!2988))))

(declare-fun bs!593545 () Bool)

(assert (= bs!593545 d!1215992))

(declare-fun m!4702253 () Bool)

(assert (=> bs!593545 m!4702253))

(assert (=> b!4095158 d!1215992))

(declare-fun d!1215994 () Bool)

(declare-fun dynLambda!18823 (Int BalanceConc!26226) TokenValue!7335)

(assert (=> d!1215994 (= (apply!10288 (transformation!7105 r!4213) lt!1464790) (dynLambda!18823 (toValue!9705 (transformation!7105 r!4213)) lt!1464790))))

(declare-fun b_lambda!120215 () Bool)

(assert (=> (not b_lambda!120215) (not d!1215994)))

(declare-fun t!339204 () Bool)

(declare-fun tb!246393 () Bool)

(assert (=> (and b!4095156 (= (toValue!9705 (transformation!7105 r!4213)) (toValue!9705 (transformation!7105 r!4213))) t!339204) tb!246393))

(declare-fun result!298974 () Bool)

(declare-fun inv!21 (TokenValue!7335) Bool)

(assert (=> tb!246393 (= result!298974 (inv!21 (dynLambda!18823 (toValue!9705 (transformation!7105 r!4213)) lt!1464790)))))

(declare-fun m!4702255 () Bool)

(assert (=> tb!246393 m!4702255))

(assert (=> d!1215994 t!339204))

(declare-fun b_and!315883 () Bool)

(assert (= b_and!315867 (and (=> t!339204 result!298974) b_and!315883)))

(declare-fun tb!246395 () Bool)

(declare-fun t!339206 () Bool)

(assert (=> (and b!4095161 (= (toValue!9705 (transformation!7105 (h!49328 rules!3870))) (toValue!9705 (transformation!7105 r!4213))) t!339206) tb!246395))

(declare-fun result!298978 () Bool)

(assert (= result!298978 result!298974))

(assert (=> d!1215994 t!339206))

(declare-fun b_and!315885 () Bool)

(assert (= b_and!315871 (and (=> t!339206 result!298978) b_and!315885)))

(declare-fun m!4702257 () Bool)

(assert (=> d!1215994 m!4702257))

(assert (=> b!4095158 d!1215994))

(declare-fun b!4095447 () Bool)

(declare-fun e!2541487 () Bool)

(assert (=> b!4095447 (= e!2541487 true)))

(declare-fun d!1215996 () Bool)

(assert (=> d!1215996 e!2541487))

(assert (= d!1215996 b!4095447))

(declare-fun order!23133 () Int)

(declare-fun order!23131 () Int)

(declare-fun lambda!128122 () Int)

(declare-fun dynLambda!18824 (Int Int) Int)

(declare-fun dynLambda!18825 (Int Int) Int)

(assert (=> b!4095447 (< (dynLambda!18824 order!23131 (toValue!9705 (transformation!7105 r!4213))) (dynLambda!18825 order!23133 lambda!128122))))

(declare-fun order!23135 () Int)

(declare-fun dynLambda!18826 (Int Int) Int)

(assert (=> b!4095447 (< (dynLambda!18826 order!23135 (toChars!9564 (transformation!7105 r!4213))) (dynLambda!18825 order!23133 lambda!128122))))

(declare-fun dynLambda!18827 (Int TokenValue!7335) BalanceConc!26226)

(assert (=> d!1215996 (= (list!16297 (dynLambda!18827 (toChars!9564 (transformation!7105 r!4213)) (dynLambda!18823 (toValue!9705 (transformation!7105 r!4213)) lt!1464790))) (list!16297 lt!1464790))))

(declare-fun lt!1464894 () Unit!63442)

(declare-fun ForallOf!896 (Int BalanceConc!26226) Unit!63442)

(assert (=> d!1215996 (= lt!1464894 (ForallOf!896 lambda!128122 lt!1464790))))

(assert (=> d!1215996 (= (lemmaSemiInverse!2072 (transformation!7105 r!4213) lt!1464790) lt!1464894)))

(declare-fun b_lambda!120217 () Bool)

(assert (=> (not b_lambda!120217) (not d!1215996)))

(declare-fun t!339208 () Bool)

(declare-fun tb!246397 () Bool)

(assert (=> (and b!4095156 (= (toChars!9564 (transformation!7105 r!4213)) (toChars!9564 (transformation!7105 r!4213))) t!339208) tb!246397))

(declare-fun e!2541490 () Bool)

(declare-fun tp!1239587 () Bool)

(declare-fun b!4095452 () Bool)

(declare-fun inv!58639 (Conc!13316) Bool)

(assert (=> b!4095452 (= e!2541490 (and (inv!58639 (c!705762 (dynLambda!18827 (toChars!9564 (transformation!7105 r!4213)) (dynLambda!18823 (toValue!9705 (transformation!7105 r!4213)) lt!1464790)))) tp!1239587))))

(declare-fun result!298980 () Bool)

(declare-fun inv!58640 (BalanceConc!26226) Bool)

(assert (=> tb!246397 (= result!298980 (and (inv!58640 (dynLambda!18827 (toChars!9564 (transformation!7105 r!4213)) (dynLambda!18823 (toValue!9705 (transformation!7105 r!4213)) lt!1464790))) e!2541490))))

(assert (= tb!246397 b!4095452))

(declare-fun m!4702423 () Bool)

(assert (=> b!4095452 m!4702423))

(declare-fun m!4702425 () Bool)

(assert (=> tb!246397 m!4702425))

(assert (=> d!1215996 t!339208))

(declare-fun b_and!315887 () Bool)

(assert (= b_and!315869 (and (=> t!339208 result!298980) b_and!315887)))

(declare-fun tb!246399 () Bool)

(declare-fun t!339210 () Bool)

(assert (=> (and b!4095161 (= (toChars!9564 (transformation!7105 (h!49328 rules!3870))) (toChars!9564 (transformation!7105 r!4213))) t!339210) tb!246399))

(declare-fun result!298984 () Bool)

(assert (= result!298984 result!298980))

(assert (=> d!1215996 t!339210))

(declare-fun b_and!315889 () Bool)

(assert (= b_and!315873 (and (=> t!339210 result!298984) b_and!315889)))

(declare-fun b_lambda!120219 () Bool)

(assert (=> (not b_lambda!120219) (not d!1215996)))

(assert (=> d!1215996 t!339204))

(declare-fun b_and!315891 () Bool)

(assert (= b_and!315883 (and (=> t!339204 result!298974) b_and!315891)))

(assert (=> d!1215996 t!339206))

(declare-fun b_and!315893 () Bool)

(assert (= b_and!315885 (and (=> t!339206 result!298978) b_and!315893)))

(assert (=> d!1215996 m!4702257))

(declare-fun m!4702427 () Bool)

(assert (=> d!1215996 m!4702427))

(declare-fun m!4702429 () Bool)

(assert (=> d!1215996 m!4702429))

(declare-fun m!4702431 () Bool)

(assert (=> d!1215996 m!4702431))

(declare-fun m!4702433 () Bool)

(assert (=> d!1215996 m!4702433))

(assert (=> d!1215996 m!4702257))

(assert (=> d!1215996 m!4702427))

(assert (=> b!4095158 d!1215996))

(declare-fun d!1216036 () Bool)

(assert (=> d!1216036 (= (isEmpty!26269 lt!1464784) (not (is-Some!9510 lt!1464784)))))

(assert (=> b!4095168 d!1216036))

(declare-fun b!4095471 () Bool)

(declare-fun e!2541502 () Bool)

(declare-fun lt!1464907 () Option!9511)

(assert (=> b!4095471 (= e!2541502 (= (size!32802 (_1!24553 (get!14402 lt!1464907))) (size!32803 (originalCharacters!7699 (_1!24553 (get!14402 lt!1464907))))))))

(declare-fun d!1216038 () Bool)

(declare-fun e!2541500 () Bool)

(assert (=> d!1216038 e!2541500))

(declare-fun res!1674104 () Bool)

(assert (=> d!1216038 (=> res!1674104 e!2541500)))

(assert (=> d!1216038 (= res!1674104 (isEmpty!26269 lt!1464907))))

(declare-fun e!2541499 () Option!9511)

(assert (=> d!1216038 (= lt!1464907 e!2541499)))

(declare-fun c!705801 () Bool)

(declare-datatypes ((tuple2!42842 0))(
  ( (tuple2!42843 (_1!24555 List!44031) (_2!24555 List!44031)) )
))
(declare-fun lt!1464909 () tuple2!42842)

(assert (=> d!1216038 (= c!705801 (isEmpty!26268 (_1!24555 lt!1464909)))))

(declare-fun findLongestMatch!1382 (Regex!12010 List!44031) tuple2!42842)

(assert (=> d!1216038 (= lt!1464909 (findLongestMatch!1382 (regex!7105 (h!49328 rules!3870)) input!3411))))

(assert (=> d!1216038 (ruleValid!3025 thiss!26199 (h!49328 rules!3870))))

(assert (=> d!1216038 (= (maxPrefixOneRule!2966 thiss!26199 (h!49328 rules!3870) input!3411) lt!1464907)))

(declare-fun b!4095472 () Bool)

(declare-fun res!1674106 () Bool)

(assert (=> b!4095472 (=> (not res!1674106) (not e!2541502))))

(assert (=> b!4095472 (= res!1674106 (< (size!32803 (_2!24553 (get!14402 lt!1464907))) (size!32803 input!3411)))))

(declare-fun b!4095473 () Bool)

(assert (=> b!4095473 (= e!2541500 e!2541502)))

(declare-fun res!1674101 () Bool)

(assert (=> b!4095473 (=> (not res!1674101) (not e!2541502))))

(assert (=> b!4095473 (= res!1674101 (matchR!5951 (regex!7105 (h!49328 rules!3870)) (list!16297 (charsOf!4863 (_1!24553 (get!14402 lt!1464907))))))))

(declare-fun b!4095474 () Bool)

(declare-fun res!1674102 () Bool)

(assert (=> b!4095474 (=> (not res!1674102) (not e!2541502))))

(assert (=> b!4095474 (= res!1674102 (= (rule!10255 (_1!24553 (get!14402 lt!1464907))) (h!49328 rules!3870)))))

(declare-fun b!4095475 () Bool)

(declare-fun size!32806 (BalanceConc!26226) Int)

(assert (=> b!4095475 (= e!2541499 (Some!9510 (tuple2!42839 (Token!13337 (apply!10288 (transformation!7105 (h!49328 rules!3870)) (seqFromList!5322 (_1!24555 lt!1464909))) (h!49328 rules!3870) (size!32806 (seqFromList!5322 (_1!24555 lt!1464909))) (_1!24555 lt!1464909)) (_2!24555 lt!1464909))))))

(declare-fun lt!1464906 () Unit!63442)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1442 (Regex!12010 List!44031) Unit!63442)

(assert (=> b!4095475 (= lt!1464906 (longestMatchIsAcceptedByMatchOrIsEmpty!1442 (regex!7105 (h!49328 rules!3870)) input!3411))))

(declare-fun res!1674103 () Bool)

(declare-fun findLongestMatchInner!1469 (Regex!12010 List!44031 Int List!44031 List!44031 Int) tuple2!42842)

(assert (=> b!4095475 (= res!1674103 (isEmpty!26268 (_1!24555 (findLongestMatchInner!1469 (regex!7105 (h!49328 rules!3870)) Nil!43907 (size!32803 Nil!43907) input!3411 input!3411 (size!32803 input!3411)))))))

(declare-fun e!2541501 () Bool)

(assert (=> b!4095475 (=> res!1674103 e!2541501)))

(assert (=> b!4095475 e!2541501))

(declare-fun lt!1464905 () Unit!63442)

(assert (=> b!4095475 (= lt!1464905 lt!1464906)))

(declare-fun lt!1464908 () Unit!63442)

(assert (=> b!4095475 (= lt!1464908 (lemmaSemiInverse!2072 (transformation!7105 (h!49328 rules!3870)) (seqFromList!5322 (_1!24555 lt!1464909))))))

(declare-fun b!4095476 () Bool)

(declare-fun res!1674105 () Bool)

(assert (=> b!4095476 (=> (not res!1674105) (not e!2541502))))

(assert (=> b!4095476 (= res!1674105 (= (++!11511 (list!16297 (charsOf!4863 (_1!24553 (get!14402 lt!1464907)))) (_2!24553 (get!14402 lt!1464907))) input!3411))))

(declare-fun b!4095477 () Bool)

(declare-fun res!1674100 () Bool)

(assert (=> b!4095477 (=> (not res!1674100) (not e!2541502))))

(assert (=> b!4095477 (= res!1674100 (= (value!223146 (_1!24553 (get!14402 lt!1464907))) (apply!10288 (transformation!7105 (rule!10255 (_1!24553 (get!14402 lt!1464907)))) (seqFromList!5322 (originalCharacters!7699 (_1!24553 (get!14402 lt!1464907)))))))))

(declare-fun b!4095478 () Bool)

(assert (=> b!4095478 (= e!2541501 (matchR!5951 (regex!7105 (h!49328 rules!3870)) (_1!24555 (findLongestMatchInner!1469 (regex!7105 (h!49328 rules!3870)) Nil!43907 (size!32803 Nil!43907) input!3411 input!3411 (size!32803 input!3411)))))))

(declare-fun b!4095479 () Bool)

(assert (=> b!4095479 (= e!2541499 None!9510)))

(assert (= (and d!1216038 c!705801) b!4095479))

(assert (= (and d!1216038 (not c!705801)) b!4095475))

(assert (= (and b!4095475 (not res!1674103)) b!4095478))

(assert (= (and d!1216038 (not res!1674104)) b!4095473))

(assert (= (and b!4095473 res!1674101) b!4095476))

(assert (= (and b!4095476 res!1674105) b!4095472))

(assert (= (and b!4095472 res!1674106) b!4095474))

(assert (= (and b!4095474 res!1674102) b!4095477))

(assert (= (and b!4095477 res!1674100) b!4095471))

(declare-fun m!4702435 () Bool)

(assert (=> b!4095473 m!4702435))

(declare-fun m!4702437 () Bool)

(assert (=> b!4095473 m!4702437))

(assert (=> b!4095473 m!4702437))

(declare-fun m!4702439 () Bool)

(assert (=> b!4095473 m!4702439))

(assert (=> b!4095473 m!4702439))

(declare-fun m!4702441 () Bool)

(assert (=> b!4095473 m!4702441))

(assert (=> b!4095477 m!4702435))

(declare-fun m!4702443 () Bool)

(assert (=> b!4095477 m!4702443))

(assert (=> b!4095477 m!4702443))

(declare-fun m!4702445 () Bool)

(assert (=> b!4095477 m!4702445))

(declare-fun m!4702447 () Bool)

(assert (=> b!4095478 m!4702447))

(assert (=> b!4095478 m!4702245))

(assert (=> b!4095478 m!4702447))

(assert (=> b!4095478 m!4702245))

(declare-fun m!4702449 () Bool)

(assert (=> b!4095478 m!4702449))

(declare-fun m!4702451 () Bool)

(assert (=> b!4095478 m!4702451))

(declare-fun m!4702453 () Bool)

(assert (=> d!1216038 m!4702453))

(declare-fun m!4702455 () Bool)

(assert (=> d!1216038 m!4702455))

(declare-fun m!4702457 () Bool)

(assert (=> d!1216038 m!4702457))

(declare-fun m!4702459 () Bool)

(assert (=> d!1216038 m!4702459))

(assert (=> b!4095471 m!4702435))

(declare-fun m!4702461 () Bool)

(assert (=> b!4095471 m!4702461))

(assert (=> b!4095475 m!4702447))

(assert (=> b!4095475 m!4702245))

(assert (=> b!4095475 m!4702449))

(assert (=> b!4095475 m!4702245))

(assert (=> b!4095475 m!4702447))

(declare-fun m!4702463 () Bool)

(assert (=> b!4095475 m!4702463))

(declare-fun m!4702465 () Bool)

(assert (=> b!4095475 m!4702465))

(assert (=> b!4095475 m!4702465))

(declare-fun m!4702467 () Bool)

(assert (=> b!4095475 m!4702467))

(assert (=> b!4095475 m!4702465))

(declare-fun m!4702469 () Bool)

(assert (=> b!4095475 m!4702469))

(declare-fun m!4702471 () Bool)

(assert (=> b!4095475 m!4702471))

(assert (=> b!4095475 m!4702465))

(declare-fun m!4702473 () Bool)

(assert (=> b!4095475 m!4702473))

(assert (=> b!4095474 m!4702435))

(assert (=> b!4095472 m!4702435))

(declare-fun m!4702475 () Bool)

(assert (=> b!4095472 m!4702475))

(assert (=> b!4095472 m!4702245))

(assert (=> b!4095476 m!4702435))

(assert (=> b!4095476 m!4702437))

(assert (=> b!4095476 m!4702437))

(assert (=> b!4095476 m!4702439))

(assert (=> b!4095476 m!4702439))

(declare-fun m!4702477 () Bool)

(assert (=> b!4095476 m!4702477))

(assert (=> b!4095168 d!1216038))

(declare-fun d!1216040 () Bool)

(declare-fun res!1674107 () Bool)

(declare-fun e!2541503 () Bool)

(assert (=> d!1216040 (=> (not res!1674107) (not e!2541503))))

(assert (=> d!1216040 (= res!1674107 (rulesValid!2791 thiss!26199 (t!339199 rules!3870)))))

(assert (=> d!1216040 (= (rulesInvariant!6037 thiss!26199 (t!339199 rules!3870)) e!2541503)))

(declare-fun b!4095480 () Bool)

(assert (=> b!4095480 (= e!2541503 (noDuplicateTag!2792 thiss!26199 (t!339199 rules!3870) Nil!43912))))

(assert (= (and d!1216040 res!1674107) b!4095480))

(declare-fun m!4702479 () Bool)

(assert (=> d!1216040 m!4702479))

(declare-fun m!4702481 () Bool)

(assert (=> b!4095480 m!4702481))

(assert (=> b!4095168 d!1216040))

(declare-fun d!1216042 () Bool)

(assert (=> d!1216042 (rulesInvariant!6037 thiss!26199 (t!339199 rules!3870))))

(declare-fun lt!1464912 () Unit!63442)

(declare-fun choose!25020 (LexerInterface!6694 Rule!14010 List!44032) Unit!63442)

(assert (=> d!1216042 (= lt!1464912 (choose!25020 thiss!26199 (h!49328 rules!3870) (t!339199 rules!3870)))))

(assert (=> d!1216042 (rulesInvariant!6037 thiss!26199 (Cons!43908 (h!49328 rules!3870) (t!339199 rules!3870)))))

(assert (=> d!1216042 (= (lemmaInvariantOnRulesThenOnTail!807 thiss!26199 (h!49328 rules!3870) (t!339199 rules!3870)) lt!1464912)))

(declare-fun bs!593549 () Bool)

(assert (= bs!593549 d!1216042))

(assert (=> bs!593549 m!4702115))

(declare-fun m!4702483 () Bool)

(assert (=> bs!593549 m!4702483))

(declare-fun m!4702485 () Bool)

(assert (=> bs!593549 m!4702485))

(assert (=> b!4095168 d!1216042))

(declare-fun d!1216044 () Bool)

(assert (=> d!1216044 (= (inv!58634 (tag!7965 r!4213)) (= (mod (str.len (value!223145 (tag!7965 r!4213))) 2) 0))))

(assert (=> b!4095170 d!1216044))

(declare-fun d!1216046 () Bool)

(declare-fun res!1674108 () Bool)

(declare-fun e!2541504 () Bool)

(assert (=> d!1216046 (=> (not res!1674108) (not e!2541504))))

(assert (=> d!1216046 (= res!1674108 (semiInverseModEq!3057 (toChars!9564 (transformation!7105 r!4213)) (toValue!9705 (transformation!7105 r!4213))))))

(assert (=> d!1216046 (= (inv!58637 (transformation!7105 r!4213)) e!2541504)))

(declare-fun b!4095481 () Bool)

(assert (=> b!4095481 (= e!2541504 (equivClasses!2956 (toChars!9564 (transformation!7105 r!4213)) (toValue!9705 (transformation!7105 r!4213))))))

(assert (= (and d!1216046 res!1674108) b!4095481))

(declare-fun m!4702487 () Bool)

(assert (=> d!1216046 m!4702487))

(declare-fun m!4702489 () Bool)

(assert (=> b!4095481 m!4702489))

(assert (=> b!4095170 d!1216046))

(declare-fun d!1216048 () Bool)

(assert (=> d!1216048 (= (isEmpty!26268 p!2988) (is-Nil!43907 p!2988))))

(assert (=> b!4095159 d!1216048))

(declare-fun d!1216050 () Bool)

(declare-fun e!2541521 () Bool)

(assert (=> d!1216050 e!2541521))

(declare-fun c!705808 () Bool)

(assert (=> d!1216050 (= c!705808 (is-EmptyExpr!12010 (regex!7105 r!4213)))))

(declare-fun lt!1464915 () Bool)

(declare-fun e!2541519 () Bool)

(assert (=> d!1216050 (= lt!1464915 e!2541519)))

(declare-fun c!705809 () Bool)

(assert (=> d!1216050 (= c!705809 (isEmpty!26268 p!2988))))

(declare-fun validRegex!5445 (Regex!12010) Bool)

(assert (=> d!1216050 (validRegex!5445 (regex!7105 r!4213))))

(assert (=> d!1216050 (= (matchR!5951 (regex!7105 r!4213) p!2988) lt!1464915)))

(declare-fun b!4095510 () Bool)

(declare-fun e!2541523 () Bool)

(declare-fun head!8656 (List!44031) C!24206)

(assert (=> b!4095510 (= e!2541523 (not (= (head!8656 p!2988) (c!705761 (regex!7105 r!4213)))))))

(declare-fun b!4095511 () Bool)

(declare-fun e!2541520 () Bool)

(assert (=> b!4095511 (= e!2541520 e!2541523)))

(declare-fun res!1674129 () Bool)

(assert (=> b!4095511 (=> res!1674129 e!2541523)))

(declare-fun call!289481 () Bool)

(assert (=> b!4095511 (= res!1674129 call!289481)))

(declare-fun b!4095512 () Bool)

(declare-fun e!2541524 () Bool)

(assert (=> b!4095512 (= e!2541524 e!2541520)))

(declare-fun res!1674131 () Bool)

(assert (=> b!4095512 (=> (not res!1674131) (not e!2541520))))

(assert (=> b!4095512 (= res!1674131 (not lt!1464915))))

(declare-fun b!4095513 () Bool)

(declare-fun nullable!4245 (Regex!12010) Bool)

(assert (=> b!4095513 (= e!2541519 (nullable!4245 (regex!7105 r!4213)))))

(declare-fun b!4095514 () Bool)

(declare-fun e!2541522 () Bool)

(assert (=> b!4095514 (= e!2541522 (= (head!8656 p!2988) (c!705761 (regex!7105 r!4213))))))

(declare-fun bm!289476 () Bool)

(assert (=> bm!289476 (= call!289481 (isEmpty!26268 p!2988))))

(declare-fun b!4095515 () Bool)

(assert (=> b!4095515 (= e!2541521 (= lt!1464915 call!289481))))

(declare-fun b!4095516 () Bool)

(declare-fun e!2541525 () Bool)

(assert (=> b!4095516 (= e!2541525 (not lt!1464915))))

(declare-fun b!4095517 () Bool)

(assert (=> b!4095517 (= e!2541521 e!2541525)))

(declare-fun c!705810 () Bool)

(assert (=> b!4095517 (= c!705810 (is-EmptyLang!12010 (regex!7105 r!4213)))))

(declare-fun b!4095518 () Bool)

(declare-fun res!1674127 () Bool)

(assert (=> b!4095518 (=> res!1674127 e!2541524)))

(assert (=> b!4095518 (= res!1674127 (not (is-ElementMatch!12010 (regex!7105 r!4213))))))

(assert (=> b!4095518 (= e!2541525 e!2541524)))

(declare-fun b!4095519 () Bool)

(declare-fun res!1674125 () Bool)

(assert (=> b!4095519 (=> res!1674125 e!2541523)))

(declare-fun tail!6390 (List!44031) List!44031)

(assert (=> b!4095519 (= res!1674125 (not (isEmpty!26268 (tail!6390 p!2988))))))

(declare-fun b!4095520 () Bool)

(declare-fun res!1674132 () Bool)

(assert (=> b!4095520 (=> (not res!1674132) (not e!2541522))))

(assert (=> b!4095520 (= res!1674132 (isEmpty!26268 (tail!6390 p!2988)))))

(declare-fun b!4095521 () Bool)

(declare-fun res!1674130 () Bool)

(assert (=> b!4095521 (=> (not res!1674130) (not e!2541522))))

(assert (=> b!4095521 (= res!1674130 (not call!289481))))

(declare-fun b!4095522 () Bool)

(declare-fun res!1674126 () Bool)

(assert (=> b!4095522 (=> res!1674126 e!2541524)))

(assert (=> b!4095522 (= res!1674126 e!2541522)))

(declare-fun res!1674128 () Bool)

(assert (=> b!4095522 (=> (not res!1674128) (not e!2541522))))

(assert (=> b!4095522 (= res!1674128 lt!1464915)))

(declare-fun b!4095523 () Bool)

(declare-fun derivativeStep!3646 (Regex!12010 C!24206) Regex!12010)

(assert (=> b!4095523 (= e!2541519 (matchR!5951 (derivativeStep!3646 (regex!7105 r!4213) (head!8656 p!2988)) (tail!6390 p!2988)))))

(assert (= (and d!1216050 c!705809) b!4095513))

(assert (= (and d!1216050 (not c!705809)) b!4095523))

(assert (= (and d!1216050 c!705808) b!4095515))

(assert (= (and d!1216050 (not c!705808)) b!4095517))

(assert (= (and b!4095517 c!705810) b!4095516))

(assert (= (and b!4095517 (not c!705810)) b!4095518))

(assert (= (and b!4095518 (not res!1674127)) b!4095522))

(assert (= (and b!4095522 res!1674128) b!4095521))

(assert (= (and b!4095521 res!1674130) b!4095520))

(assert (= (and b!4095520 res!1674132) b!4095514))

(assert (= (and b!4095522 (not res!1674126)) b!4095512))

(assert (= (and b!4095512 res!1674131) b!4095511))

(assert (= (and b!4095511 (not res!1674129)) b!4095519))

(assert (= (and b!4095519 (not res!1674125)) b!4095510))

(assert (= (or b!4095515 b!4095511 b!4095521) bm!289476))

(assert (=> bm!289476 m!4702131))

(declare-fun m!4702491 () Bool)

(assert (=> b!4095513 m!4702491))

(declare-fun m!4702493 () Bool)

(assert (=> b!4095523 m!4702493))

(assert (=> b!4095523 m!4702493))

(declare-fun m!4702495 () Bool)

(assert (=> b!4095523 m!4702495))

(declare-fun m!4702497 () Bool)

(assert (=> b!4095523 m!4702497))

(assert (=> b!4095523 m!4702495))

(assert (=> b!4095523 m!4702497))

(declare-fun m!4702499 () Bool)

(assert (=> b!4095523 m!4702499))

(assert (=> b!4095519 m!4702497))

(assert (=> b!4095519 m!4702497))

(declare-fun m!4702501 () Bool)

(assert (=> b!4095519 m!4702501))

(assert (=> b!4095514 m!4702493))

(assert (=> b!4095520 m!4702497))

(assert (=> b!4095520 m!4702497))

(assert (=> b!4095520 m!4702501))

(assert (=> d!1216050 m!4702131))

(declare-fun m!4702503 () Bool)

(assert (=> d!1216050 m!4702503))

(assert (=> b!4095510 m!4702493))

(assert (=> b!4095171 d!1216050))

(declare-fun d!1216052 () Bool)

(declare-fun res!1674137 () Bool)

(declare-fun e!2541528 () Bool)

(assert (=> d!1216052 (=> (not res!1674137) (not e!2541528))))

(assert (=> d!1216052 (= res!1674137 (validRegex!5445 (regex!7105 r!4213)))))

(assert (=> d!1216052 (= (ruleValid!3025 thiss!26199 r!4213) e!2541528)))

(declare-fun b!4095528 () Bool)

(declare-fun res!1674138 () Bool)

(assert (=> b!4095528 (=> (not res!1674138) (not e!2541528))))

(assert (=> b!4095528 (= res!1674138 (not (nullable!4245 (regex!7105 r!4213))))))

(declare-fun b!4095529 () Bool)

(assert (=> b!4095529 (= e!2541528 (not (= (tag!7965 r!4213) (String!50428 ""))))))

(assert (= (and d!1216052 res!1674137) b!4095528))

(assert (= (and b!4095528 res!1674138) b!4095529))

(assert (=> d!1216052 m!4702503))

(assert (=> b!4095528 m!4702491))

(assert (=> b!4095171 d!1216052))

(declare-fun d!1216054 () Bool)

(assert (=> d!1216054 (ruleValid!3025 thiss!26199 r!4213)))

(declare-fun lt!1464918 () Unit!63442)

(declare-fun choose!25021 (LexerInterface!6694 Rule!14010 List!44032) Unit!63442)

(assert (=> d!1216054 (= lt!1464918 (choose!25021 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1216054 (contains!8790 rules!3870 r!4213)))

(assert (=> d!1216054 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2091 thiss!26199 r!4213 rules!3870) lt!1464918)))

(declare-fun bs!593550 () Bool)

(assert (= bs!593550 d!1216054))

(assert (=> bs!593550 m!4702125))

(declare-fun m!4702505 () Bool)

(assert (=> bs!593550 m!4702505))

(assert (=> bs!593550 m!4702109))

(assert (=> b!4095171 d!1216054))

(declare-fun b!4095530 () Bool)

(declare-fun res!1674143 () Bool)

(declare-fun e!2541530 () Bool)

(assert (=> b!4095530 (=> (not res!1674143) (not e!2541530))))

(declare-fun lt!1464920 () Option!9511)

(assert (=> b!4095530 (= res!1674143 (= (value!223146 (_1!24553 (get!14402 lt!1464920))) (apply!10288 (transformation!7105 (rule!10255 (_1!24553 (get!14402 lt!1464920)))) (seqFromList!5322 (originalCharacters!7699 (_1!24553 (get!14402 lt!1464920)))))))))

(declare-fun b!4095531 () Bool)

(declare-fun res!1674144 () Bool)

(assert (=> b!4095531 (=> (not res!1674144) (not e!2541530))))

(assert (=> b!4095531 (= res!1674144 (matchR!5951 (regex!7105 (rule!10255 (_1!24553 (get!14402 lt!1464920)))) (list!16297 (charsOf!4863 (_1!24553 (get!14402 lt!1464920))))))))

(declare-fun b!4095532 () Bool)

(declare-fun res!1674145 () Bool)

(assert (=> b!4095532 (=> (not res!1674145) (not e!2541530))))

(assert (=> b!4095532 (= res!1674145 (< (size!32803 (_2!24553 (get!14402 lt!1464920))) (size!32803 input!3411)))))

(declare-fun d!1216056 () Bool)

(declare-fun e!2541531 () Bool)

(assert (=> d!1216056 e!2541531))

(declare-fun res!1674142 () Bool)

(assert (=> d!1216056 (=> res!1674142 e!2541531)))

(assert (=> d!1216056 (= res!1674142 (isEmpty!26269 lt!1464920))))

(declare-fun e!2541529 () Option!9511)

(assert (=> d!1216056 (= lt!1464920 e!2541529)))

(declare-fun c!705811 () Bool)

(assert (=> d!1216056 (= c!705811 (and (is-Cons!43908 (t!339199 rules!3870)) (is-Nil!43908 (t!339199 (t!339199 rules!3870)))))))

(declare-fun lt!1464919 () Unit!63442)

(declare-fun lt!1464921 () Unit!63442)

(assert (=> d!1216056 (= lt!1464919 lt!1464921)))

(assert (=> d!1216056 (isPrefix!4150 input!3411 input!3411)))

(assert (=> d!1216056 (= lt!1464921 (lemmaIsPrefixRefl!2701 input!3411 input!3411))))

(assert (=> d!1216056 (rulesValidInductive!2632 thiss!26199 (t!339199 rules!3870))))

(assert (=> d!1216056 (= (maxPrefix!3984 thiss!26199 (t!339199 rules!3870) input!3411) lt!1464920)))

(declare-fun bm!289477 () Bool)

(declare-fun call!289482 () Option!9511)

(assert (=> bm!289477 (= call!289482 (maxPrefixOneRule!2966 thiss!26199 (h!49328 (t!339199 rules!3870)) input!3411))))

(declare-fun b!4095533 () Bool)

(declare-fun lt!1464922 () Option!9511)

(declare-fun lt!1464923 () Option!9511)

(assert (=> b!4095533 (= e!2541529 (ite (and (is-None!9510 lt!1464922) (is-None!9510 lt!1464923)) None!9510 (ite (is-None!9510 lt!1464923) lt!1464922 (ite (is-None!9510 lt!1464922) lt!1464923 (ite (>= (size!32802 (_1!24553 (v!40006 lt!1464922))) (size!32802 (_1!24553 (v!40006 lt!1464923)))) lt!1464922 lt!1464923)))))))

(assert (=> b!4095533 (= lt!1464922 call!289482)))

(assert (=> b!4095533 (= lt!1464923 (maxPrefix!3984 thiss!26199 (t!339199 (t!339199 rules!3870)) input!3411))))

(declare-fun b!4095534 () Bool)

(declare-fun res!1674140 () Bool)

(assert (=> b!4095534 (=> (not res!1674140) (not e!2541530))))

(assert (=> b!4095534 (= res!1674140 (= (list!16297 (charsOf!4863 (_1!24553 (get!14402 lt!1464920)))) (originalCharacters!7699 (_1!24553 (get!14402 lt!1464920)))))))

(declare-fun b!4095535 () Bool)

(assert (=> b!4095535 (= e!2541529 call!289482)))

(declare-fun b!4095536 () Bool)

(assert (=> b!4095536 (= e!2541530 (contains!8790 (t!339199 rules!3870) (rule!10255 (_1!24553 (get!14402 lt!1464920)))))))

(declare-fun b!4095537 () Bool)

(assert (=> b!4095537 (= e!2541531 e!2541530)))

(declare-fun res!1674139 () Bool)

(assert (=> b!4095537 (=> (not res!1674139) (not e!2541530))))

(assert (=> b!4095537 (= res!1674139 (isDefined!7199 lt!1464920))))

(declare-fun b!4095538 () Bool)

(declare-fun res!1674141 () Bool)

(assert (=> b!4095538 (=> (not res!1674141) (not e!2541530))))

(assert (=> b!4095538 (= res!1674141 (= (++!11511 (list!16297 (charsOf!4863 (_1!24553 (get!14402 lt!1464920)))) (_2!24553 (get!14402 lt!1464920))) input!3411))))

(assert (= (and d!1216056 c!705811) b!4095535))

(assert (= (and d!1216056 (not c!705811)) b!4095533))

(assert (= (or b!4095535 b!4095533) bm!289477))

(assert (= (and d!1216056 (not res!1674142)) b!4095537))

(assert (= (and b!4095537 res!1674139) b!4095534))

(assert (= (and b!4095534 res!1674140) b!4095532))

(assert (= (and b!4095532 res!1674145) b!4095538))

(assert (= (and b!4095538 res!1674141) b!4095530))

(assert (= (and b!4095530 res!1674143) b!4095531))

(assert (= (and b!4095531 res!1674144) b!4095536))

(declare-fun m!4702507 () Bool)

(assert (=> b!4095534 m!4702507))

(declare-fun m!4702509 () Bool)

(assert (=> b!4095534 m!4702509))

(assert (=> b!4095534 m!4702509))

(declare-fun m!4702511 () Bool)

(assert (=> b!4095534 m!4702511))

(assert (=> b!4095530 m!4702507))

(declare-fun m!4702513 () Bool)

(assert (=> b!4095530 m!4702513))

(assert (=> b!4095530 m!4702513))

(declare-fun m!4702515 () Bool)

(assert (=> b!4095530 m!4702515))

(assert (=> b!4095538 m!4702507))

(assert (=> b!4095538 m!4702509))

(assert (=> b!4095538 m!4702509))

(assert (=> b!4095538 m!4702511))

(assert (=> b!4095538 m!4702511))

(declare-fun m!4702517 () Bool)

(assert (=> b!4095538 m!4702517))

(declare-fun m!4702519 () Bool)

(assert (=> b!4095533 m!4702519))

(assert (=> b!4095531 m!4702507))

(assert (=> b!4095531 m!4702509))

(assert (=> b!4095531 m!4702509))

(assert (=> b!4095531 m!4702511))

(assert (=> b!4095531 m!4702511))

(declare-fun m!4702521 () Bool)

(assert (=> b!4095531 m!4702521))

(declare-fun m!4702523 () Bool)

(assert (=> d!1216056 m!4702523))

(assert (=> d!1216056 m!4702237))

(assert (=> d!1216056 m!4702239))

(declare-fun m!4702525 () Bool)

(assert (=> d!1216056 m!4702525))

(assert (=> b!4095532 m!4702507))

(declare-fun m!4702527 () Bool)

(assert (=> b!4095532 m!4702527))

(assert (=> b!4095532 m!4702245))

(assert (=> b!4095536 m!4702507))

(declare-fun m!4702529 () Bool)

(assert (=> b!4095536 m!4702529))

(declare-fun m!4702531 () Bool)

(assert (=> bm!289477 m!4702531))

(declare-fun m!4702533 () Bool)

(assert (=> b!4095537 m!4702533))

(assert (=> b!4095160 d!1216056))

(declare-fun d!1216058 () Bool)

(assert (=> d!1216058 (= (isEmpty!26270 rules!3870) (is-Nil!43908 rules!3870))))

(assert (=> b!4095173 d!1216058))

(declare-fun d!1216060 () Bool)

(declare-fun lt!1464924 () Bool)

(assert (=> d!1216060 (= lt!1464924 (set.member r!4213 (content!6776 (t!339199 rules!3870))))))

(declare-fun e!2541533 () Bool)

(assert (=> d!1216060 (= lt!1464924 e!2541533)))

(declare-fun res!1674146 () Bool)

(assert (=> d!1216060 (=> (not res!1674146) (not e!2541533))))

(assert (=> d!1216060 (= res!1674146 (is-Cons!43908 (t!339199 rules!3870)))))

(assert (=> d!1216060 (= (contains!8790 (t!339199 rules!3870) r!4213) lt!1464924)))

(declare-fun b!4095539 () Bool)

(declare-fun e!2541532 () Bool)

(assert (=> b!4095539 (= e!2541533 e!2541532)))

(declare-fun res!1674147 () Bool)

(assert (=> b!4095539 (=> res!1674147 e!2541532)))

(assert (=> b!4095539 (= res!1674147 (= (h!49328 (t!339199 rules!3870)) r!4213))))

(declare-fun b!4095540 () Bool)

(assert (=> b!4095540 (= e!2541532 (contains!8790 (t!339199 (t!339199 rules!3870)) r!4213))))

(assert (= (and d!1216060 res!1674146) b!4095539))

(assert (= (and b!4095539 (not res!1674147)) b!4095540))

(declare-fun m!4702535 () Bool)

(assert (=> d!1216060 m!4702535))

(declare-fun m!4702537 () Bool)

(assert (=> d!1216060 m!4702537))

(declare-fun m!4702539 () Bool)

(assert (=> b!4095540 m!4702539))

(assert (=> b!4095162 d!1216060))

(declare-fun b!4095551 () Bool)

(declare-fun b_free!114521 () Bool)

(declare-fun b_next!115225 () Bool)

(assert (=> b!4095551 (= b_free!114521 (not b_next!115225))))

(declare-fun tb!246401 () Bool)

(declare-fun t!339212 () Bool)

(assert (=> (and b!4095551 (= (toValue!9705 (transformation!7105 (h!49328 (t!339199 rules!3870)))) (toValue!9705 (transformation!7105 r!4213))) t!339212) tb!246401))

(declare-fun result!298988 () Bool)

(assert (= result!298988 result!298974))

(assert (=> d!1215994 t!339212))

(assert (=> d!1215996 t!339212))

(declare-fun b_and!315895 () Bool)

(declare-fun tp!1239599 () Bool)

(assert (=> b!4095551 (= tp!1239599 (and (=> t!339212 result!298988) b_and!315895))))

(declare-fun b_free!114523 () Bool)

(declare-fun b_next!115227 () Bool)

(assert (=> b!4095551 (= b_free!114523 (not b_next!115227))))

(declare-fun tb!246403 () Bool)

(declare-fun t!339214 () Bool)

(assert (=> (and b!4095551 (= (toChars!9564 (transformation!7105 (h!49328 (t!339199 rules!3870)))) (toChars!9564 (transformation!7105 r!4213))) t!339214) tb!246403))

(declare-fun result!298990 () Bool)

(assert (= result!298990 result!298980))

(assert (=> d!1215996 t!339214))

(declare-fun b_and!315897 () Bool)

(declare-fun tp!1239598 () Bool)

(assert (=> b!4095551 (= tp!1239598 (and (=> t!339214 result!298990) b_and!315897))))

(declare-fun e!2541543 () Bool)

(assert (=> b!4095551 (= e!2541543 (and tp!1239599 tp!1239598))))

(declare-fun tp!1239597 () Bool)

(declare-fun b!4095550 () Bool)

(declare-fun e!2541544 () Bool)

(assert (=> b!4095550 (= e!2541544 (and tp!1239597 (inv!58634 (tag!7965 (h!49328 (t!339199 rules!3870)))) (inv!58637 (transformation!7105 (h!49328 (t!339199 rules!3870)))) e!2541543))))

(declare-fun b!4095549 () Bool)

(declare-fun e!2541542 () Bool)

(declare-fun tp!1239596 () Bool)

(assert (=> b!4095549 (= e!2541542 (and e!2541544 tp!1239596))))

(assert (=> b!4095165 (= tp!1239552 e!2541542)))

(assert (= b!4095550 b!4095551))

(assert (= b!4095549 b!4095550))

(assert (= (and b!4095165 (is-Cons!43908 (t!339199 rules!3870))) b!4095549))

(declare-fun m!4702541 () Bool)

(assert (=> b!4095550 m!4702541))

(declare-fun m!4702543 () Bool)

(assert (=> b!4095550 m!4702543))

(declare-fun b!4095562 () Bool)

(declare-fun e!2541548 () Bool)

(assert (=> b!4095562 (= e!2541548 tp_is_empty!21023)))

(declare-fun b!4095563 () Bool)

(declare-fun tp!1239611 () Bool)

(declare-fun tp!1239613 () Bool)

(assert (=> b!4095563 (= e!2541548 (and tp!1239611 tp!1239613))))

(declare-fun b!4095565 () Bool)

(declare-fun tp!1239612 () Bool)

(declare-fun tp!1239614 () Bool)

(assert (=> b!4095565 (= e!2541548 (and tp!1239612 tp!1239614))))

(assert (=> b!4095170 (= tp!1239553 e!2541548)))

(declare-fun b!4095564 () Bool)

(declare-fun tp!1239610 () Bool)

(assert (=> b!4095564 (= e!2541548 tp!1239610)))

(assert (= (and b!4095170 (is-ElementMatch!12010 (regex!7105 r!4213))) b!4095562))

(assert (= (and b!4095170 (is-Concat!19346 (regex!7105 r!4213))) b!4095563))

(assert (= (and b!4095170 (is-Star!12010 (regex!7105 r!4213))) b!4095564))

(assert (= (and b!4095170 (is-Union!12010 (regex!7105 r!4213))) b!4095565))

(declare-fun b!4095566 () Bool)

(declare-fun e!2541549 () Bool)

(assert (=> b!4095566 (= e!2541549 tp_is_empty!21023)))

(declare-fun b!4095567 () Bool)

(declare-fun tp!1239616 () Bool)

(declare-fun tp!1239618 () Bool)

(assert (=> b!4095567 (= e!2541549 (and tp!1239616 tp!1239618))))

(declare-fun b!4095569 () Bool)

(declare-fun tp!1239617 () Bool)

(declare-fun tp!1239619 () Bool)

(assert (=> b!4095569 (= e!2541549 (and tp!1239617 tp!1239619))))

(assert (=> b!4095175 (= tp!1239546 e!2541549)))

(declare-fun b!4095568 () Bool)

(declare-fun tp!1239615 () Bool)

(assert (=> b!4095568 (= e!2541549 tp!1239615)))

(assert (= (and b!4095175 (is-ElementMatch!12010 (regex!7105 (h!49328 rules!3870)))) b!4095566))

(assert (= (and b!4095175 (is-Concat!19346 (regex!7105 (h!49328 rules!3870)))) b!4095567))

(assert (= (and b!4095175 (is-Star!12010 (regex!7105 (h!49328 rules!3870)))) b!4095568))

(assert (= (and b!4095175 (is-Union!12010 (regex!7105 (h!49328 rules!3870)))) b!4095569))

(declare-fun b!4095574 () Bool)

(declare-fun e!2541552 () Bool)

(declare-fun tp!1239622 () Bool)

(assert (=> b!4095574 (= e!2541552 (and tp_is_empty!21023 tp!1239622))))

(assert (=> b!4095164 (= tp!1239548 e!2541552)))

(assert (= (and b!4095164 (is-Cons!43907 (t!339198 p!2988))) b!4095574))

(declare-fun b!4095575 () Bool)

(declare-fun e!2541553 () Bool)

(declare-fun tp!1239623 () Bool)

(assert (=> b!4095575 (= e!2541553 (and tp_is_empty!21023 tp!1239623))))

(assert (=> b!4095155 (= tp!1239551 e!2541553)))

(assert (= (and b!4095155 (is-Cons!43907 (t!339198 input!3411))) b!4095575))

(declare-fun b!4095576 () Bool)

(declare-fun e!2541554 () Bool)

(declare-fun tp!1239624 () Bool)

(assert (=> b!4095576 (= e!2541554 (and tp_is_empty!21023 tp!1239624))))

(assert (=> b!4095172 (= tp!1239545 e!2541554)))

(assert (= (and b!4095172 (is-Cons!43907 (t!339198 suffix!1518))) b!4095576))

(declare-fun b_lambda!120221 () Bool)

(assert (= b_lambda!120215 (or (and b!4095156 b_free!114505) (and b!4095161 b_free!114509 (= (toValue!9705 (transformation!7105 (h!49328 rules!3870))) (toValue!9705 (transformation!7105 r!4213)))) (and b!4095551 b_free!114521 (= (toValue!9705 (transformation!7105 (h!49328 (t!339199 rules!3870)))) (toValue!9705 (transformation!7105 r!4213)))) b_lambda!120221)))

(declare-fun b_lambda!120223 () Bool)

(assert (= b_lambda!120219 (or (and b!4095156 b_free!114505) (and b!4095161 b_free!114509 (= (toValue!9705 (transformation!7105 (h!49328 rules!3870))) (toValue!9705 (transformation!7105 r!4213)))) (and b!4095551 b_free!114521 (= (toValue!9705 (transformation!7105 (h!49328 (t!339199 rules!3870)))) (toValue!9705 (transformation!7105 r!4213)))) b_lambda!120223)))

(declare-fun b_lambda!120225 () Bool)

(assert (= b_lambda!120217 (or (and b!4095156 b_free!114507) (and b!4095161 b_free!114511 (= (toChars!9564 (transformation!7105 (h!49328 rules!3870))) (toChars!9564 (transformation!7105 r!4213)))) (and b!4095551 b_free!114523 (= (toChars!9564 (transformation!7105 (h!49328 (t!339199 rules!3870)))) (toChars!9564 (transformation!7105 r!4213)))) b_lambda!120225)))

(push 1)

(assert (not b!4095281))

(assert (not b!4095564))

(assert (not b!4095565))

(assert (not b!4095538))

(assert (not b!4095472))

(assert (not d!1215996))

(assert (not b!4095452))

(assert (not d!1216054))

(assert b_and!315897)

(assert (not d!1216040))

(assert (not b!4095250))

(assert (not d!1215974))

(assert (not b!4095530))

(assert (not b!4095569))

(assert (not b!4095533))

(assert b_and!315895)

(assert (not b_lambda!120223))

(assert (not b!4095477))

(assert (not b!4095474))

(assert (not b!4095284))

(assert (not b!4095549))

(assert (not b!4095532))

(assert b_and!315893)

(assert (not bm!289477))

(assert (not b!4095576))

(assert (not b!4095282))

(assert (not b!4095523))

(assert (not tb!246397))

(assert (not tb!246393))

(assert b_and!315889)

(assert (not b!4095471))

(assert (not b!4095480))

(assert (not d!1216060))

(assert (not b!4095567))

(assert (not b!4095550))

(assert (not b!4095260))

(assert (not b!4095520))

(assert (not b_lambda!120221))

(assert (not b!4095288))

(assert (not b!4095244))

(assert (not d!1215966))

(assert (not d!1215970))

(assert (not b!4095473))

(assert (not b_next!115213))

(assert (not b!4095540))

(assert (not b!4095519))

(assert (not b!4095563))

(assert (not d!1216052))

(assert (not b_next!115209))

(assert (not b!4095481))

(assert (not b_next!115211))

(assert (not b!4095514))

(assert (not bm!289466))

(assert (not b!4095476))

(assert (not b!4095283))

(assert (not b!4095289))

(assert (not b!4095475))

(assert (not b!4095574))

(assert (not b!4095478))

(assert (not b!4095287))

(assert (not b_next!115227))

(assert (not b!4095261))

(assert b_and!315891)

(assert (not b!4095285))

(assert (not b!4095575))

(assert (not b!4095531))

(assert (not b!4095537))

(assert (not b!4095513))

(assert (not b!4095568))

(assert (not b_next!115225))

(assert (not d!1216042))

(assert (not d!1216046))

(assert (not b!4095295))

(assert (not d!1216056))

(assert (not b_lambda!120225))

(assert b_and!315887)

(assert (not d!1216050))

(assert (not b!4095247))

(assert (not d!1215978))

(assert (not b_next!115215))

(assert (not b!4095536))

(assert tp_is_empty!21023)

(assert (not d!1215992))

(assert (not b!4095534))

(assert (not d!1215976))

(assert (not b!4095528))

(assert (not bm!289476))

(assert (not b!4095510))

(assert (not d!1216038))

(check-sat)

(pop 1)

(push 1)

(assert b_and!315897)

(assert b_and!315895)

(assert b_and!315893)

(assert b_and!315889)

(assert (not b_next!115213))

(assert (not b_next!115225))

(assert b_and!315887)

(assert (not b_next!115215))

(assert (not b_next!115209))

(assert (not b_next!115211))

(assert (not b_next!115227))

(assert b_and!315891)

(check-sat)

(pop 1)

