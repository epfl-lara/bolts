; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!146894 () Bool)

(assert start!146894)

(declare-fun b!1574075 () Bool)

(declare-fun b_free!42263 () Bool)

(declare-fun b_next!42967 () Bool)

(assert (=> b!1574075 (= b_free!42263 (not b_next!42967))))

(declare-fun tp!463234 () Bool)

(declare-fun b_and!110085 () Bool)

(assert (=> b!1574075 (= tp!463234 b_and!110085)))

(declare-fun b_free!42265 () Bool)

(declare-fun b_next!42969 () Bool)

(assert (=> b!1574075 (= b_free!42265 (not b_next!42969))))

(declare-fun tp!463236 () Bool)

(declare-fun b_and!110087 () Bool)

(assert (=> b!1574075 (= tp!463236 b_and!110087)))

(declare-fun b!1574074 () Bool)

(declare-fun b_free!42267 () Bool)

(declare-fun b_next!42971 () Bool)

(assert (=> b!1574074 (= b_free!42267 (not b_next!42971))))

(declare-fun tp!463232 () Bool)

(declare-fun b_and!110089 () Bool)

(assert (=> b!1574074 (= tp!463232 b_and!110089)))

(declare-fun b_free!42269 () Bool)

(declare-fun b_next!42973 () Bool)

(assert (=> b!1574074 (= b_free!42269 (not b_next!42973))))

(declare-fun tp!463233 () Bool)

(declare-fun b_and!110091 () Bool)

(assert (=> b!1574074 (= tp!463233 b_and!110091)))

(declare-fun tp!463237 () Bool)

(declare-fun e!1010926 () Bool)

(declare-fun e!1010919 () Bool)

(declare-fun b!1574070 () Bool)

(declare-datatypes ((List!17273 0))(
  ( (Nil!17203) (Cons!17203 (h!22604 (_ BitVec 16)) (t!143196 List!17273)) )
))
(declare-datatypes ((TokenValue!3113 0))(
  ( (FloatLiteralValue!6226 (text!22236 List!17273)) (TokenValueExt!3112 (__x!11528 Int)) (Broken!15565 (value!95802 List!17273)) (Object!3182) (End!3113) (Def!3113) (Underscore!3113) (Match!3113) (Else!3113) (Error!3113) (Case!3113) (If!3113) (Extends!3113) (Abstract!3113) (Class!3113) (Val!3113) (DelimiterValue!6226 (del!3173 List!17273)) (KeywordValue!3119 (value!95803 List!17273)) (CommentValue!6226 (value!95804 List!17273)) (WhitespaceValue!6226 (value!95805 List!17273)) (IndentationValue!3113 (value!95806 List!17273)) (String!19896) (Int32!3113) (Broken!15566 (value!95807 List!17273)) (Boolean!3114) (Unit!26578) (OperatorValue!3116 (op!3173 List!17273)) (IdentifierValue!6226 (value!95808 List!17273)) (IdentifierValue!6227 (value!95809 List!17273)) (WhitespaceValue!6227 (value!95810 List!17273)) (True!6226) (False!6226) (Broken!15567 (value!95811 List!17273)) (Broken!15568 (value!95812 List!17273)) (True!6227) (RightBrace!3113) (RightBracket!3113) (Colon!3113) (Null!3113) (Comma!3113) (LeftBracket!3113) (False!6227) (LeftBrace!3113) (ImaginaryLiteralValue!3113 (text!22237 List!17273)) (StringLiteralValue!9339 (value!95813 List!17273)) (EOFValue!3113 (value!95814 List!17273)) (IdentValue!3113 (value!95815 List!17273)) (DelimiterValue!6227 (value!95816 List!17273)) (DedentValue!3113 (value!95817 List!17273)) (NewLineValue!3113 (value!95818 List!17273)) (IntegerValue!9339 (value!95819 (_ BitVec 32)) (text!22238 List!17273)) (IntegerValue!9340 (value!95820 Int) (text!22239 List!17273)) (Times!3113) (Or!3113) (Equal!3113) (Minus!3113) (Broken!15569 (value!95821 List!17273)) (And!3113) (Div!3113) (LessEqual!3113) (Mod!3113) (Concat!7464) (Not!3113) (Plus!3113) (SpaceValue!3113 (value!95822 List!17273)) (IntegerValue!9341 (value!95823 Int) (text!22240 List!17273)) (StringLiteralValue!9340 (text!22241 List!17273)) (FloatLiteralValue!6227 (text!22242 List!17273)) (BytesLiteralValue!3113 (value!95824 List!17273)) (CommentValue!6227 (value!95825 List!17273)) (StringLiteralValue!9341 (value!95826 List!17273)) (ErrorTokenValue!3113 (msg!3174 List!17273)) )
))
(declare-datatypes ((C!8876 0))(
  ( (C!8877 (val!5034 Int)) )
))
(declare-datatypes ((List!17274 0))(
  ( (Nil!17204) (Cons!17204 (h!22605 C!8876) (t!143197 List!17274)) )
))
(declare-datatypes ((IArray!11393 0))(
  ( (IArray!11394 (innerList!5754 List!17274)) )
))
(declare-datatypes ((Conc!5694 0))(
  ( (Node!5694 (left!13915 Conc!5694) (right!14245 Conc!5694) (csize!11618 Int) (cheight!5905 Int)) (Leaf!8426 (xs!8498 IArray!11393) (csize!11619 Int)) (Empty!5694) )
))
(declare-datatypes ((BalanceConc!11332 0))(
  ( (BalanceConc!11333 (c!255239 Conc!5694)) )
))
(declare-datatypes ((Regex!4351 0))(
  ( (ElementMatch!4351 (c!255240 C!8876)) (Concat!7465 (regOne!9214 Regex!4351) (regTwo!9214 Regex!4351)) (EmptyExpr!4351) (Star!4351 (reg!4680 Regex!4351)) (EmptyLang!4351) (Union!4351 (regOne!9215 Regex!4351) (regTwo!9215 Regex!4351)) )
))
(declare-datatypes ((String!19897 0))(
  ( (String!19898 (value!95827 String)) )
))
(declare-datatypes ((TokenValueInjection!5886 0))(
  ( (TokenValueInjection!5887 (toValue!4418 Int) (toChars!4277 Int)) )
))
(declare-datatypes ((Rule!5846 0))(
  ( (Rule!5847 (regex!3023 Regex!4351) (tag!3289 String!19897) (isSeparator!3023 Bool) (transformation!3023 TokenValueInjection!5886)) )
))
(declare-datatypes ((Token!5612 0))(
  ( (Token!5613 (value!95828 TokenValue!3113) (rule!4815 Rule!5846) (size!13882 Int) (originalCharacters!3837 List!17274)) )
))
(declare-datatypes ((List!17275 0))(
  ( (Nil!17205) (Cons!17205 (h!22606 Token!5612) (t!143198 List!17275)) )
))
(declare-fun tokens!457 () List!17275)

(declare-fun inv!21 (TokenValue!3113) Bool)

(assert (=> b!1574070 (= e!1010919 (and (inv!21 (value!95828 (h!22606 tokens!457))) e!1010926 tp!463237))))

(declare-datatypes ((List!17276 0))(
  ( (Nil!17206) (Cons!17206 (h!22607 Rule!5846) (t!143199 List!17276)) )
))
(declare-fun rules!1846 () List!17276)

(declare-fun b!1574071 () Bool)

(declare-datatypes ((LexerInterface!2652 0))(
  ( (LexerInterfaceExt!2649 (__x!11529 Int)) (Lexer!2650) )
))
(declare-fun thiss!17113 () LexerInterface!2652)

(declare-fun e!1010916 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!345 (LexerInterface!2652 List!17275 List!17276) Bool)

(assert (=> b!1574071 (= e!1010916 (tokensListTwoByTwoPredicateSeparableList!345 thiss!17113 (t!143198 tokens!457) rules!1846))))

(declare-fun b!1574072 () Bool)

(declare-fun res!701535 () Bool)

(declare-fun e!1010923 () Bool)

(assert (=> b!1574072 (=> (not res!701535) (not e!1010923))))

(declare-fun isEmpty!10277 (List!17276) Bool)

(assert (=> b!1574072 (= res!701535 (not (isEmpty!10277 rules!1846)))))

(declare-fun res!701541 () Bool)

(assert (=> start!146894 (=> (not res!701541) (not e!1010923))))

(get-info :version)

(assert (=> start!146894 (= res!701541 ((_ is Lexer!2650) thiss!17113))))

(assert (=> start!146894 e!1010923))

(assert (=> start!146894 true))

(declare-fun e!1010917 () Bool)

(assert (=> start!146894 e!1010917))

(declare-fun e!1010920 () Bool)

(assert (=> start!146894 e!1010920))

(declare-fun b!1574073 () Bool)

(declare-fun e!1010918 () Bool)

(assert (=> b!1574073 (= e!1010923 e!1010918)))

(declare-fun res!701540 () Bool)

(assert (=> b!1574073 (=> (not res!701540) (not e!1010918))))

(declare-fun lt!547161 () List!17274)

(declare-fun lt!547165 () List!17274)

(assert (=> b!1574073 (= res!701540 (= lt!547161 lt!547165))))

(declare-fun lt!547162 () List!17274)

(declare-fun lt!547164 () List!17274)

(declare-fun ++!4459 (List!17274 List!17274) List!17274)

(assert (=> b!1574073 (= lt!547165 (++!4459 lt!547162 lt!547164))))

(declare-fun lt!547163 () BalanceConc!11332)

(declare-fun list!6610 (BalanceConc!11332) List!17274)

(assert (=> b!1574073 (= lt!547161 (list!6610 lt!547163))))

(declare-fun lt!547168 () BalanceConc!11332)

(assert (=> b!1574073 (= lt!547164 (list!6610 lt!547168))))

(declare-fun charsOf!1672 (Token!5612) BalanceConc!11332)

(assert (=> b!1574073 (= lt!547162 (list!6610 (charsOf!1672 (h!22606 tokens!457))))))

(declare-datatypes ((IArray!11395 0))(
  ( (IArray!11396 (innerList!5755 List!17275)) )
))
(declare-datatypes ((Conc!5695 0))(
  ( (Node!5695 (left!13916 Conc!5695) (right!14246 Conc!5695) (csize!11620 Int) (cheight!5906 Int)) (Leaf!8427 (xs!8499 IArray!11395) (csize!11621 Int)) (Empty!5695) )
))
(declare-datatypes ((BalanceConc!11334 0))(
  ( (BalanceConc!11335 (c!255241 Conc!5695)) )
))
(declare-datatypes ((tuple2!16686 0))(
  ( (tuple2!16687 (_1!9745 BalanceConc!11334) (_2!9745 BalanceConc!11332)) )
))
(declare-fun lt!547167 () tuple2!16686)

(declare-fun lex!1136 (LexerInterface!2652 List!17276 BalanceConc!11332) tuple2!16686)

(assert (=> b!1574073 (= lt!547167 (lex!1136 thiss!17113 rules!1846 lt!547168))))

(declare-fun print!1183 (LexerInterface!2652 BalanceConc!11334) BalanceConc!11332)

(declare-fun seqFromList!1820 (List!17275) BalanceConc!11334)

(assert (=> b!1574073 (= lt!547168 (print!1183 thiss!17113 (seqFromList!1820 (t!143198 tokens!457))))))

(assert (=> b!1574073 (= lt!547163 (print!1183 thiss!17113 (seqFromList!1820 tokens!457)))))

(declare-fun e!1010924 () Bool)

(assert (=> b!1574074 (= e!1010924 (and tp!463232 tp!463233))))

(declare-fun e!1010914 () Bool)

(assert (=> b!1574075 (= e!1010914 (and tp!463234 tp!463236))))

(declare-fun tp!463231 () Bool)

(declare-fun b!1574076 () Bool)

(declare-fun e!1010925 () Bool)

(declare-fun inv!22612 (String!19897) Bool)

(declare-fun inv!22615 (TokenValueInjection!5886) Bool)

(assert (=> b!1574076 (= e!1010925 (and tp!463231 (inv!22612 (tag!3289 (h!22607 rules!1846))) (inv!22615 (transformation!3023 (h!22607 rules!1846))) e!1010914))))

(declare-fun b!1574077 () Bool)

(declare-fun res!701534 () Bool)

(assert (=> b!1574077 (=> (not res!701534) (not e!1010923))))

(declare-fun rulesProduceEachTokenIndividuallyList!854 (LexerInterface!2652 List!17276 List!17275) Bool)

(assert (=> b!1574077 (= res!701534 (rulesProduceEachTokenIndividuallyList!854 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1574078 () Bool)

(declare-fun tp!463235 () Bool)

(assert (=> b!1574078 (= e!1010917 (and e!1010925 tp!463235))))

(declare-fun tp!463230 () Bool)

(declare-fun b!1574079 () Bool)

(assert (=> b!1574079 (= e!1010926 (and tp!463230 (inv!22612 (tag!3289 (rule!4815 (h!22606 tokens!457)))) (inv!22615 (transformation!3023 (rule!4815 (h!22606 tokens!457)))) e!1010924))))

(declare-fun b!1574080 () Bool)

(declare-fun res!701536 () Bool)

(assert (=> b!1574080 (=> (not res!701536) (not e!1010923))))

(declare-fun rulesInvariant!2321 (LexerInterface!2652 List!17276) Bool)

(assert (=> b!1574080 (= res!701536 (rulesInvariant!2321 thiss!17113 rules!1846))))

(declare-fun b!1574081 () Bool)

(assert (=> b!1574081 (= e!1010918 (not e!1010916))))

(declare-fun res!701539 () Bool)

(assert (=> b!1574081 (=> res!701539 e!1010916)))

(assert (=> b!1574081 (= res!701539 (not (rulesProduceEachTokenIndividuallyList!854 thiss!17113 rules!1846 (t!143198 tokens!457))))))

(declare-fun isPrefix!1283 (List!17274 List!17274) Bool)

(assert (=> b!1574081 (isPrefix!1283 lt!547162 lt!547165)))

(declare-datatypes ((Unit!26579 0))(
  ( (Unit!26580) )
))
(declare-fun lt!547166 () Unit!26579)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!808 (List!17274 List!17274) Unit!26579)

(assert (=> b!1574081 (= lt!547166 (lemmaConcatTwoListThenFirstIsPrefix!808 lt!547162 lt!547164))))

(declare-fun b!1574082 () Bool)

(declare-fun res!701538 () Bool)

(assert (=> b!1574082 (=> (not res!701538) (not e!1010923))))

(assert (=> b!1574082 (= res!701538 (and (not ((_ is Nil!17205) tokens!457)) (not ((_ is Nil!17205) (t!143198 tokens!457)))))))

(declare-fun b!1574083 () Bool)

(declare-fun tp!463238 () Bool)

(declare-fun inv!22616 (Token!5612) Bool)

(assert (=> b!1574083 (= e!1010920 (and (inv!22616 (h!22606 tokens!457)) e!1010919 tp!463238))))

(declare-fun b!1574084 () Bool)

(declare-fun res!701537 () Bool)

(assert (=> b!1574084 (=> (not res!701537) (not e!1010923))))

(assert (=> b!1574084 (= res!701537 (tokensListTwoByTwoPredicateSeparableList!345 thiss!17113 tokens!457 rules!1846))))

(assert (= (and start!146894 res!701541) b!1574072))

(assert (= (and b!1574072 res!701535) b!1574080))

(assert (= (and b!1574080 res!701536) b!1574077))

(assert (= (and b!1574077 res!701534) b!1574084))

(assert (= (and b!1574084 res!701537) b!1574082))

(assert (= (and b!1574082 res!701538) b!1574073))

(assert (= (and b!1574073 res!701540) b!1574081))

(assert (= (and b!1574081 (not res!701539)) b!1574071))

(assert (= b!1574076 b!1574075))

(assert (= b!1574078 b!1574076))

(assert (= (and start!146894 ((_ is Cons!17206) rules!1846)) b!1574078))

(assert (= b!1574079 b!1574074))

(assert (= b!1574070 b!1574079))

(assert (= b!1574083 b!1574070))

(assert (= (and start!146894 ((_ is Cons!17205) tokens!457)) b!1574083))

(declare-fun m!1852973 () Bool)

(assert (=> b!1574072 m!1852973))

(declare-fun m!1852975 () Bool)

(assert (=> b!1574073 m!1852975))

(declare-fun m!1852977 () Bool)

(assert (=> b!1574073 m!1852977))

(declare-fun m!1852979 () Bool)

(assert (=> b!1574073 m!1852979))

(declare-fun m!1852981 () Bool)

(assert (=> b!1574073 m!1852981))

(declare-fun m!1852983 () Bool)

(assert (=> b!1574073 m!1852983))

(declare-fun m!1852985 () Bool)

(assert (=> b!1574073 m!1852985))

(assert (=> b!1574073 m!1852975))

(declare-fun m!1852987 () Bool)

(assert (=> b!1574073 m!1852987))

(declare-fun m!1852989 () Bool)

(assert (=> b!1574073 m!1852989))

(assert (=> b!1574073 m!1852977))

(declare-fun m!1852991 () Bool)

(assert (=> b!1574073 m!1852991))

(declare-fun m!1852993 () Bool)

(assert (=> b!1574073 m!1852993))

(assert (=> b!1574073 m!1852991))

(declare-fun m!1852995 () Bool)

(assert (=> b!1574083 m!1852995))

(declare-fun m!1852997 () Bool)

(assert (=> b!1574071 m!1852997))

(declare-fun m!1852999 () Bool)

(assert (=> b!1574080 m!1852999))

(declare-fun m!1853001 () Bool)

(assert (=> b!1574079 m!1853001))

(declare-fun m!1853003 () Bool)

(assert (=> b!1574079 m!1853003))

(declare-fun m!1853005 () Bool)

(assert (=> b!1574077 m!1853005))

(declare-fun m!1853007 () Bool)

(assert (=> b!1574076 m!1853007))

(declare-fun m!1853009 () Bool)

(assert (=> b!1574076 m!1853009))

(declare-fun m!1853011 () Bool)

(assert (=> b!1574084 m!1853011))

(declare-fun m!1853013 () Bool)

(assert (=> b!1574070 m!1853013))

(declare-fun m!1853015 () Bool)

(assert (=> b!1574081 m!1853015))

(declare-fun m!1853017 () Bool)

(assert (=> b!1574081 m!1853017))

(declare-fun m!1853019 () Bool)

(assert (=> b!1574081 m!1853019))

(check-sat (not b!1574080) (not b!1574081) b_and!110085 (not b_next!42969) (not b!1574079) (not b!1574071) b_and!110091 (not b!1574078) b_and!110087 (not b_next!42971) (not b!1574072) (not b!1574077) (not b!1574070) b_and!110089 (not b!1574084) (not b!1574073) (not b!1574083) (not b!1574076) (not b_next!42973) (not b_next!42967))
(check-sat b_and!110089 b_and!110085 (not b_next!42969) b_and!110091 b_and!110087 (not b_next!42971) (not b_next!42973) (not b_next!42967))
(get-model)

(declare-fun d!467504 () Bool)

(declare-fun res!701553 () Bool)

(declare-fun e!1010929 () Bool)

(assert (=> d!467504 (=> (not res!701553) (not e!1010929))))

(declare-fun isEmpty!10278 (List!17274) Bool)

(assert (=> d!467504 (= res!701553 (not (isEmpty!10278 (originalCharacters!3837 (h!22606 tokens!457)))))))

(assert (=> d!467504 (= (inv!22616 (h!22606 tokens!457)) e!1010929)))

(declare-fun b!1574089 () Bool)

(declare-fun res!701554 () Bool)

(assert (=> b!1574089 (=> (not res!701554) (not e!1010929))))

(declare-fun dynLambda!7631 (Int TokenValue!3113) BalanceConc!11332)

(assert (=> b!1574089 (= res!701554 (= (originalCharacters!3837 (h!22606 tokens!457)) (list!6610 (dynLambda!7631 (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457)))) (value!95828 (h!22606 tokens!457))))))))

(declare-fun b!1574090 () Bool)

(declare-fun size!13884 (List!17274) Int)

(assert (=> b!1574090 (= e!1010929 (= (size!13882 (h!22606 tokens!457)) (size!13884 (originalCharacters!3837 (h!22606 tokens!457)))))))

(assert (= (and d!467504 res!701553) b!1574089))

(assert (= (and b!1574089 res!701554) b!1574090))

(declare-fun b_lambda!49545 () Bool)

(assert (=> (not b_lambda!49545) (not b!1574089)))

(declare-fun t!143201 () Bool)

(declare-fun tb!88631 () Bool)

(assert (=> (and b!1574075 (= (toChars!4277 (transformation!3023 (h!22607 rules!1846))) (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457))))) t!143201) tb!88631))

(declare-fun b!1574095 () Bool)

(declare-fun e!1010932 () Bool)

(declare-fun tp!463241 () Bool)

(declare-fun inv!22617 (Conc!5694) Bool)

(assert (=> b!1574095 (= e!1010932 (and (inv!22617 (c!255239 (dynLambda!7631 (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457)))) (value!95828 (h!22606 tokens!457))))) tp!463241))))

(declare-fun result!107174 () Bool)

(declare-fun inv!22618 (BalanceConc!11332) Bool)

(assert (=> tb!88631 (= result!107174 (and (inv!22618 (dynLambda!7631 (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457)))) (value!95828 (h!22606 tokens!457)))) e!1010932))))

(assert (= tb!88631 b!1574095))

(declare-fun m!1853021 () Bool)

(assert (=> b!1574095 m!1853021))

(declare-fun m!1853023 () Bool)

(assert (=> tb!88631 m!1853023))

(assert (=> b!1574089 t!143201))

(declare-fun b_and!110093 () Bool)

(assert (= b_and!110087 (and (=> t!143201 result!107174) b_and!110093)))

(declare-fun t!143203 () Bool)

(declare-fun tb!88633 () Bool)

(assert (=> (and b!1574074 (= (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457)))) (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457))))) t!143203) tb!88633))

(declare-fun result!107178 () Bool)

(assert (= result!107178 result!107174))

(assert (=> b!1574089 t!143203))

(declare-fun b_and!110095 () Bool)

(assert (= b_and!110091 (and (=> t!143203 result!107178) b_and!110095)))

(declare-fun m!1853025 () Bool)

(assert (=> d!467504 m!1853025))

(declare-fun m!1853027 () Bool)

(assert (=> b!1574089 m!1853027))

(assert (=> b!1574089 m!1853027))

(declare-fun m!1853029 () Bool)

(assert (=> b!1574089 m!1853029))

(declare-fun m!1853031 () Bool)

(assert (=> b!1574090 m!1853031))

(assert (=> b!1574083 d!467504))

(declare-fun d!467506 () Bool)

(declare-fun lt!547171 () BalanceConc!11332)

(declare-fun printList!785 (LexerInterface!2652 List!17275) List!17274)

(declare-fun list!6612 (BalanceConc!11334) List!17275)

(assert (=> d!467506 (= (list!6610 lt!547171) (printList!785 thiss!17113 (list!6612 (seqFromList!1820 tokens!457))))))

(declare-fun printTailRec!721 (LexerInterface!2652 BalanceConc!11334 Int BalanceConc!11332) BalanceConc!11332)

(assert (=> d!467506 (= lt!547171 (printTailRec!721 thiss!17113 (seqFromList!1820 tokens!457) 0 (BalanceConc!11333 Empty!5694)))))

(assert (=> d!467506 (= (print!1183 thiss!17113 (seqFromList!1820 tokens!457)) lt!547171)))

(declare-fun bs!390402 () Bool)

(assert (= bs!390402 d!467506))

(declare-fun m!1853033 () Bool)

(assert (=> bs!390402 m!1853033))

(assert (=> bs!390402 m!1852977))

(declare-fun m!1853035 () Bool)

(assert (=> bs!390402 m!1853035))

(assert (=> bs!390402 m!1853035))

(declare-fun m!1853037 () Bool)

(assert (=> bs!390402 m!1853037))

(assert (=> bs!390402 m!1852977))

(declare-fun m!1853039 () Bool)

(assert (=> bs!390402 m!1853039))

(assert (=> b!1574073 d!467506))

(declare-fun d!467508 () Bool)

(declare-fun e!1010937 () Bool)

(assert (=> d!467508 e!1010937))

(declare-fun res!701560 () Bool)

(assert (=> d!467508 (=> (not res!701560) (not e!1010937))))

(declare-fun lt!547174 () List!17274)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2372 (List!17274) (InoxSet C!8876))

(assert (=> d!467508 (= res!701560 (= (content!2372 lt!547174) ((_ map or) (content!2372 lt!547162) (content!2372 lt!547164))))))

(declare-fun e!1010938 () List!17274)

(assert (=> d!467508 (= lt!547174 e!1010938)))

(declare-fun c!255244 () Bool)

(assert (=> d!467508 (= c!255244 ((_ is Nil!17204) lt!547162))))

(assert (=> d!467508 (= (++!4459 lt!547162 lt!547164) lt!547174)))

(declare-fun b!1574106 () Bool)

(declare-fun res!701559 () Bool)

(assert (=> b!1574106 (=> (not res!701559) (not e!1010937))))

(assert (=> b!1574106 (= res!701559 (= (size!13884 lt!547174) (+ (size!13884 lt!547162) (size!13884 lt!547164))))))

(declare-fun b!1574104 () Bool)

(assert (=> b!1574104 (= e!1010938 lt!547164)))

(declare-fun b!1574107 () Bool)

(assert (=> b!1574107 (= e!1010937 (or (not (= lt!547164 Nil!17204)) (= lt!547174 lt!547162)))))

(declare-fun b!1574105 () Bool)

(assert (=> b!1574105 (= e!1010938 (Cons!17204 (h!22605 lt!547162) (++!4459 (t!143197 lt!547162) lt!547164)))))

(assert (= (and d!467508 c!255244) b!1574104))

(assert (= (and d!467508 (not c!255244)) b!1574105))

(assert (= (and d!467508 res!701560) b!1574106))

(assert (= (and b!1574106 res!701559) b!1574107))

(declare-fun m!1853041 () Bool)

(assert (=> d!467508 m!1853041))

(declare-fun m!1853043 () Bool)

(assert (=> d!467508 m!1853043))

(declare-fun m!1853045 () Bool)

(assert (=> d!467508 m!1853045))

(declare-fun m!1853047 () Bool)

(assert (=> b!1574106 m!1853047))

(declare-fun m!1853049 () Bool)

(assert (=> b!1574106 m!1853049))

(declare-fun m!1853051 () Bool)

(assert (=> b!1574106 m!1853051))

(declare-fun m!1853053 () Bool)

(assert (=> b!1574105 m!1853053))

(assert (=> b!1574073 d!467508))

(declare-fun d!467510 () Bool)

(declare-fun list!6614 (Conc!5694) List!17274)

(assert (=> d!467510 (= (list!6610 lt!547163) (list!6614 (c!255239 lt!547163)))))

(declare-fun bs!390403 () Bool)

(assert (= bs!390403 d!467510))

(declare-fun m!1853055 () Bool)

(assert (=> bs!390403 m!1853055))

(assert (=> b!1574073 d!467510))

(declare-fun d!467512 () Bool)

(declare-fun lt!547175 () BalanceConc!11332)

(assert (=> d!467512 (= (list!6610 lt!547175) (printList!785 thiss!17113 (list!6612 (seqFromList!1820 (t!143198 tokens!457)))))))

(assert (=> d!467512 (= lt!547175 (printTailRec!721 thiss!17113 (seqFromList!1820 (t!143198 tokens!457)) 0 (BalanceConc!11333 Empty!5694)))))

(assert (=> d!467512 (= (print!1183 thiss!17113 (seqFromList!1820 (t!143198 tokens!457))) lt!547175)))

(declare-fun bs!390404 () Bool)

(assert (= bs!390404 d!467512))

(declare-fun m!1853057 () Bool)

(assert (=> bs!390404 m!1853057))

(assert (=> bs!390404 m!1852991))

(declare-fun m!1853059 () Bool)

(assert (=> bs!390404 m!1853059))

(assert (=> bs!390404 m!1853059))

(declare-fun m!1853061 () Bool)

(assert (=> bs!390404 m!1853061))

(assert (=> bs!390404 m!1852991))

(declare-fun m!1853063 () Bool)

(assert (=> bs!390404 m!1853063))

(assert (=> b!1574073 d!467512))

(declare-fun d!467514 () Bool)

(declare-fun fromListB!778 (List!17275) BalanceConc!11334)

(assert (=> d!467514 (= (seqFromList!1820 tokens!457) (fromListB!778 tokens!457))))

(declare-fun bs!390405 () Bool)

(assert (= bs!390405 d!467514))

(declare-fun m!1853065 () Bool)

(assert (=> bs!390405 m!1853065))

(assert (=> b!1574073 d!467514))

(declare-fun d!467516 () Bool)

(declare-fun lt!547178 () BalanceConc!11332)

(assert (=> d!467516 (= (list!6610 lt!547178) (originalCharacters!3837 (h!22606 tokens!457)))))

(assert (=> d!467516 (= lt!547178 (dynLambda!7631 (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457)))) (value!95828 (h!22606 tokens!457))))))

(assert (=> d!467516 (= (charsOf!1672 (h!22606 tokens!457)) lt!547178)))

(declare-fun b_lambda!49547 () Bool)

(assert (=> (not b_lambda!49547) (not d!467516)))

(assert (=> d!467516 t!143201))

(declare-fun b_and!110097 () Bool)

(assert (= b_and!110093 (and (=> t!143201 result!107174) b_and!110097)))

(assert (=> d!467516 t!143203))

(declare-fun b_and!110099 () Bool)

(assert (= b_and!110095 (and (=> t!143203 result!107178) b_and!110099)))

(declare-fun m!1853067 () Bool)

(assert (=> d!467516 m!1853067))

(assert (=> d!467516 m!1853027))

(assert (=> b!1574073 d!467516))

(declare-fun d!467518 () Bool)

(assert (=> d!467518 (= (list!6610 lt!547168) (list!6614 (c!255239 lt!547168)))))

(declare-fun bs!390406 () Bool)

(assert (= bs!390406 d!467518))

(declare-fun m!1853069 () Bool)

(assert (=> bs!390406 m!1853069))

(assert (=> b!1574073 d!467518))

(declare-fun d!467520 () Bool)

(assert (=> d!467520 (= (list!6610 (charsOf!1672 (h!22606 tokens!457))) (list!6614 (c!255239 (charsOf!1672 (h!22606 tokens!457)))))))

(declare-fun bs!390407 () Bool)

(assert (= bs!390407 d!467520))

(declare-fun m!1853071 () Bool)

(assert (=> bs!390407 m!1853071))

(assert (=> b!1574073 d!467520))

(declare-fun d!467522 () Bool)

(assert (=> d!467522 (= (seqFromList!1820 (t!143198 tokens!457)) (fromListB!778 (t!143198 tokens!457)))))

(declare-fun bs!390408 () Bool)

(assert (= bs!390408 d!467522))

(declare-fun m!1853073 () Bool)

(assert (=> bs!390408 m!1853073))

(assert (=> b!1574073 d!467522))

(declare-fun lt!547183 () tuple2!16686)

(declare-fun e!1010949 () Bool)

(declare-fun b!1574122 () Bool)

(declare-datatypes ((tuple2!16690 0))(
  ( (tuple2!16691 (_1!9747 List!17275) (_2!9747 List!17274)) )
))
(declare-fun lexList!767 (LexerInterface!2652 List!17276 List!17274) tuple2!16690)

(assert (=> b!1574122 (= e!1010949 (= (list!6610 (_2!9745 lt!547183)) (_2!9747 (lexList!767 thiss!17113 rules!1846 (list!6610 lt!547168)))))))

(declare-fun b!1574123 () Bool)

(declare-fun e!1010951 () Bool)

(declare-fun e!1010950 () Bool)

(assert (=> b!1574123 (= e!1010951 e!1010950)))

(declare-fun res!701573 () Bool)

(declare-fun size!13887 (BalanceConc!11332) Int)

(assert (=> b!1574123 (= res!701573 (< (size!13887 (_2!9745 lt!547183)) (size!13887 lt!547168)))))

(assert (=> b!1574123 (=> (not res!701573) (not e!1010950))))

(declare-fun b!1574125 () Bool)

(assert (=> b!1574125 (= e!1010951 (= (_2!9745 lt!547183) lt!547168))))

(declare-fun b!1574126 () Bool)

(declare-fun res!701571 () Bool)

(assert (=> b!1574126 (=> (not res!701571) (not e!1010949))))

(assert (=> b!1574126 (= res!701571 (= (list!6612 (_1!9745 lt!547183)) (_1!9747 (lexList!767 thiss!17113 rules!1846 (list!6610 lt!547168)))))))

(declare-fun d!467524 () Bool)

(assert (=> d!467524 e!1010949))

(declare-fun res!701572 () Bool)

(assert (=> d!467524 (=> (not res!701572) (not e!1010949))))

(assert (=> d!467524 (= res!701572 e!1010951)))

(declare-fun c!255247 () Bool)

(declare-fun size!13888 (BalanceConc!11334) Int)

(assert (=> d!467524 (= c!255247 (> (size!13888 (_1!9745 lt!547183)) 0))))

(declare-fun lexTailRecV2!490 (LexerInterface!2652 List!17276 BalanceConc!11332 BalanceConc!11332 BalanceConc!11332 BalanceConc!11334) tuple2!16686)

(assert (=> d!467524 (= lt!547183 (lexTailRecV2!490 thiss!17113 rules!1846 lt!547168 (BalanceConc!11333 Empty!5694) lt!547168 (BalanceConc!11335 Empty!5695)))))

(assert (=> d!467524 (= (lex!1136 thiss!17113 rules!1846 lt!547168) lt!547183)))

(declare-fun b!1574124 () Bool)

(declare-fun isEmpty!10280 (BalanceConc!11334) Bool)

(assert (=> b!1574124 (= e!1010950 (not (isEmpty!10280 (_1!9745 lt!547183))))))

(assert (= (and d!467524 c!255247) b!1574123))

(assert (= (and d!467524 (not c!255247)) b!1574125))

(assert (= (and b!1574123 res!701573) b!1574124))

(assert (= (and d!467524 res!701572) b!1574126))

(assert (= (and b!1574126 res!701571) b!1574122))

(declare-fun m!1853075 () Bool)

(assert (=> b!1574126 m!1853075))

(assert (=> b!1574126 m!1852983))

(assert (=> b!1574126 m!1852983))

(declare-fun m!1853077 () Bool)

(assert (=> b!1574126 m!1853077))

(declare-fun m!1853079 () Bool)

(assert (=> b!1574123 m!1853079))

(declare-fun m!1853081 () Bool)

(assert (=> b!1574123 m!1853081))

(declare-fun m!1853083 () Bool)

(assert (=> b!1574122 m!1853083))

(assert (=> b!1574122 m!1852983))

(assert (=> b!1574122 m!1852983))

(assert (=> b!1574122 m!1853077))

(declare-fun m!1853085 () Bool)

(assert (=> b!1574124 m!1853085))

(declare-fun m!1853087 () Bool)

(assert (=> d!467524 m!1853087))

(declare-fun m!1853089 () Bool)

(assert (=> d!467524 m!1853089))

(assert (=> b!1574073 d!467524))

(declare-fun d!467526 () Bool)

(declare-fun res!701578 () Bool)

(declare-fun e!1010956 () Bool)

(assert (=> d!467526 (=> res!701578 e!1010956)))

(assert (=> d!467526 (= res!701578 (or (not ((_ is Cons!17205) tokens!457)) (not ((_ is Cons!17205) (t!143198 tokens!457)))))))

(assert (=> d!467526 (= (tokensListTwoByTwoPredicateSeparableList!345 thiss!17113 tokens!457 rules!1846) e!1010956)))

(declare-fun b!1574131 () Bool)

(declare-fun e!1010957 () Bool)

(assert (=> b!1574131 (= e!1010956 e!1010957)))

(declare-fun res!701579 () Bool)

(assert (=> b!1574131 (=> (not res!701579) (not e!1010957))))

(declare-fun separableTokensPredicate!603 (LexerInterface!2652 Token!5612 Token!5612 List!17276) Bool)

(assert (=> b!1574131 (= res!701579 (separableTokensPredicate!603 thiss!17113 (h!22606 tokens!457) (h!22606 (t!143198 tokens!457)) rules!1846))))

(declare-fun lt!547201 () Unit!26579)

(declare-fun Unit!26581 () Unit!26579)

(assert (=> b!1574131 (= lt!547201 Unit!26581)))

(assert (=> b!1574131 (> (size!13887 (charsOf!1672 (h!22606 (t!143198 tokens!457)))) 0)))

(declare-fun lt!547199 () Unit!26579)

(declare-fun Unit!26582 () Unit!26579)

(assert (=> b!1574131 (= lt!547199 Unit!26582)))

(declare-fun rulesProduceIndividualToken!1324 (LexerInterface!2652 List!17276 Token!5612) Bool)

(assert (=> b!1574131 (rulesProduceIndividualToken!1324 thiss!17113 rules!1846 (h!22606 (t!143198 tokens!457)))))

(declare-fun lt!547198 () Unit!26579)

(declare-fun Unit!26583 () Unit!26579)

(assert (=> b!1574131 (= lt!547198 Unit!26583)))

(assert (=> b!1574131 (rulesProduceIndividualToken!1324 thiss!17113 rules!1846 (h!22606 tokens!457))))

(declare-fun lt!547200 () Unit!26579)

(declare-fun lt!547204 () Unit!26579)

(assert (=> b!1574131 (= lt!547200 lt!547204)))

(assert (=> b!1574131 (rulesProduceIndividualToken!1324 thiss!17113 rules!1846 (h!22606 (t!143198 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!502 (LexerInterface!2652 List!17276 List!17275 Token!5612) Unit!26579)

(assert (=> b!1574131 (= lt!547204 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!502 thiss!17113 rules!1846 tokens!457 (h!22606 (t!143198 tokens!457))))))

(declare-fun lt!547203 () Unit!26579)

(declare-fun lt!547202 () Unit!26579)

(assert (=> b!1574131 (= lt!547203 lt!547202)))

(assert (=> b!1574131 (rulesProduceIndividualToken!1324 thiss!17113 rules!1846 (h!22606 tokens!457))))

(assert (=> b!1574131 (= lt!547202 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!502 thiss!17113 rules!1846 tokens!457 (h!22606 tokens!457)))))

(declare-fun b!1574132 () Bool)

(assert (=> b!1574132 (= e!1010957 (tokensListTwoByTwoPredicateSeparableList!345 thiss!17113 (Cons!17205 (h!22606 (t!143198 tokens!457)) (t!143198 (t!143198 tokens!457))) rules!1846))))

(assert (= (and d!467526 (not res!701578)) b!1574131))

(assert (= (and b!1574131 res!701579) b!1574132))

(declare-fun m!1853091 () Bool)

(assert (=> b!1574131 m!1853091))

(declare-fun m!1853093 () Bool)

(assert (=> b!1574131 m!1853093))

(declare-fun m!1853095 () Bool)

(assert (=> b!1574131 m!1853095))

(assert (=> b!1574131 m!1853093))

(declare-fun m!1853097 () Bool)

(assert (=> b!1574131 m!1853097))

(declare-fun m!1853099 () Bool)

(assert (=> b!1574131 m!1853099))

(declare-fun m!1853101 () Bool)

(assert (=> b!1574131 m!1853101))

(declare-fun m!1853103 () Bool)

(assert (=> b!1574131 m!1853103))

(declare-fun m!1853105 () Bool)

(assert (=> b!1574132 m!1853105))

(assert (=> b!1574084 d!467526))

(declare-fun b!1574227 () Bool)

(declare-fun e!1011029 () Bool)

(assert (=> b!1574227 (= e!1011029 true)))

(declare-fun b!1574226 () Bool)

(declare-fun e!1011028 () Bool)

(assert (=> b!1574226 (= e!1011028 e!1011029)))

(declare-fun b!1574225 () Bool)

(declare-fun e!1011027 () Bool)

(assert (=> b!1574225 (= e!1011027 e!1011028)))

(declare-fun d!467528 () Bool)

(assert (=> d!467528 e!1011027))

(assert (= b!1574226 b!1574227))

(assert (= b!1574225 b!1574226))

(assert (= (and d!467528 ((_ is Cons!17206) rules!1846)) b!1574225))

(declare-fun order!10143 () Int)

(declare-fun lambda!66355 () Int)

(declare-fun order!10145 () Int)

(declare-fun dynLambda!7633 (Int Int) Int)

(declare-fun dynLambda!7634 (Int Int) Int)

(assert (=> b!1574227 (< (dynLambda!7633 order!10143 (toValue!4418 (transformation!3023 (h!22607 rules!1846)))) (dynLambda!7634 order!10145 lambda!66355))))

(declare-fun order!10147 () Int)

(declare-fun dynLambda!7635 (Int Int) Int)

(assert (=> b!1574227 (< (dynLambda!7635 order!10147 (toChars!4277 (transformation!3023 (h!22607 rules!1846)))) (dynLambda!7634 order!10145 lambda!66355))))

(assert (=> d!467528 true))

(declare-fun lt!547249 () Bool)

(declare-fun forall!3974 (List!17275 Int) Bool)

(assert (=> d!467528 (= lt!547249 (forall!3974 tokens!457 lambda!66355))))

(declare-fun e!1011015 () Bool)

(assert (=> d!467528 (= lt!547249 e!1011015)))

(declare-fun res!701625 () Bool)

(assert (=> d!467528 (=> res!701625 e!1011015)))

(assert (=> d!467528 (= res!701625 (not ((_ is Cons!17205) tokens!457)))))

(assert (=> d!467528 (not (isEmpty!10277 rules!1846))))

(assert (=> d!467528 (= (rulesProduceEachTokenIndividuallyList!854 thiss!17113 rules!1846 tokens!457) lt!547249)))

(declare-fun b!1574210 () Bool)

(declare-fun e!1011014 () Bool)

(assert (=> b!1574210 (= e!1011015 e!1011014)))

(declare-fun res!701624 () Bool)

(assert (=> b!1574210 (=> (not res!701624) (not e!1011014))))

(assert (=> b!1574210 (= res!701624 (rulesProduceIndividualToken!1324 thiss!17113 rules!1846 (h!22606 tokens!457)))))

(declare-fun b!1574211 () Bool)

(assert (=> b!1574211 (= e!1011014 (rulesProduceEachTokenIndividuallyList!854 thiss!17113 rules!1846 (t!143198 tokens!457)))))

(assert (= (and d!467528 (not res!701625)) b!1574210))

(assert (= (and b!1574210 res!701624) b!1574211))

(declare-fun m!1853229 () Bool)

(assert (=> d!467528 m!1853229))

(assert (=> d!467528 m!1852973))

(assert (=> b!1574210 m!1853099))

(assert (=> b!1574211 m!1853015))

(assert (=> b!1574077 d!467528))

(declare-fun d!467568 () Bool)

(assert (=> d!467568 (= (inv!22612 (tag!3289 (h!22607 rules!1846))) (= (mod (str.len (value!95827 (tag!3289 (h!22607 rules!1846)))) 2) 0))))

(assert (=> b!1574076 d!467568))

(declare-fun d!467570 () Bool)

(declare-fun res!701636 () Bool)

(declare-fun e!1011041 () Bool)

(assert (=> d!467570 (=> (not res!701636) (not e!1011041))))

(declare-fun semiInverseModEq!1137 (Int Int) Bool)

(assert (=> d!467570 (= res!701636 (semiInverseModEq!1137 (toChars!4277 (transformation!3023 (h!22607 rules!1846))) (toValue!4418 (transformation!3023 (h!22607 rules!1846)))))))

(assert (=> d!467570 (= (inv!22615 (transformation!3023 (h!22607 rules!1846))) e!1011041)))

(declare-fun b!1574247 () Bool)

(declare-fun equivClasses!1078 (Int Int) Bool)

(assert (=> b!1574247 (= e!1011041 (equivClasses!1078 (toChars!4277 (transformation!3023 (h!22607 rules!1846))) (toValue!4418 (transformation!3023 (h!22607 rules!1846)))))))

(assert (= (and d!467570 res!701636) b!1574247))

(declare-fun m!1853233 () Bool)

(assert (=> d!467570 m!1853233))

(declare-fun m!1853235 () Bool)

(assert (=> b!1574247 m!1853235))

(assert (=> b!1574076 d!467570))

(declare-fun d!467572 () Bool)

(assert (=> d!467572 (= (inv!22612 (tag!3289 (rule!4815 (h!22606 tokens!457)))) (= (mod (str.len (value!95827 (tag!3289 (rule!4815 (h!22606 tokens!457))))) 2) 0))))

(assert (=> b!1574079 d!467572))

(declare-fun d!467576 () Bool)

(declare-fun res!701637 () Bool)

(declare-fun e!1011042 () Bool)

(assert (=> d!467576 (=> (not res!701637) (not e!1011042))))

(assert (=> d!467576 (= res!701637 (semiInverseModEq!1137 (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457)))) (toValue!4418 (transformation!3023 (rule!4815 (h!22606 tokens!457))))))))

(assert (=> d!467576 (= (inv!22615 (transformation!3023 (rule!4815 (h!22606 tokens!457)))) e!1011042)))

(declare-fun b!1574248 () Bool)

(assert (=> b!1574248 (= e!1011042 (equivClasses!1078 (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457)))) (toValue!4418 (transformation!3023 (rule!4815 (h!22606 tokens!457))))))))

(assert (= (and d!467576 res!701637) b!1574248))

(declare-fun m!1853243 () Bool)

(assert (=> d!467576 m!1853243))

(declare-fun m!1853245 () Bool)

(assert (=> b!1574248 m!1853245))

(assert (=> b!1574079 d!467576))

(declare-fun d!467578 () Bool)

(declare-fun res!701645 () Bool)

(declare-fun e!1011048 () Bool)

(assert (=> d!467578 (=> (not res!701645) (not e!1011048))))

(declare-fun rulesValid!1066 (LexerInterface!2652 List!17276) Bool)

(assert (=> d!467578 (= res!701645 (rulesValid!1066 thiss!17113 rules!1846))))

(assert (=> d!467578 (= (rulesInvariant!2321 thiss!17113 rules!1846) e!1011048)))

(declare-fun b!1574256 () Bool)

(declare-datatypes ((List!17278 0))(
  ( (Nil!17208) (Cons!17208 (h!22609 String!19897) (t!143221 List!17278)) )
))
(declare-fun noDuplicateTag!1066 (LexerInterface!2652 List!17276 List!17278) Bool)

(assert (=> b!1574256 (= e!1011048 (noDuplicateTag!1066 thiss!17113 rules!1846 Nil!17208))))

(assert (= (and d!467578 res!701645) b!1574256))

(declare-fun m!1853251 () Bool)

(assert (=> d!467578 m!1853251))

(declare-fun m!1853253 () Bool)

(assert (=> b!1574256 m!1853253))

(assert (=> b!1574080 d!467578))

(declare-fun d!467586 () Bool)

(declare-fun res!701646 () Bool)

(declare-fun e!1011049 () Bool)

(assert (=> d!467586 (=> res!701646 e!1011049)))

(assert (=> d!467586 (= res!701646 (or (not ((_ is Cons!17205) (t!143198 tokens!457))) (not ((_ is Cons!17205) (t!143198 (t!143198 tokens!457))))))))

(assert (=> d!467586 (= (tokensListTwoByTwoPredicateSeparableList!345 thiss!17113 (t!143198 tokens!457) rules!1846) e!1011049)))

(declare-fun b!1574257 () Bool)

(declare-fun e!1011050 () Bool)

(assert (=> b!1574257 (= e!1011049 e!1011050)))

(declare-fun res!701647 () Bool)

(assert (=> b!1574257 (=> (not res!701647) (not e!1011050))))

(assert (=> b!1574257 (= res!701647 (separableTokensPredicate!603 thiss!17113 (h!22606 (t!143198 tokens!457)) (h!22606 (t!143198 (t!143198 tokens!457))) rules!1846))))

(declare-fun lt!547260 () Unit!26579)

(declare-fun Unit!26587 () Unit!26579)

(assert (=> b!1574257 (= lt!547260 Unit!26587)))

(assert (=> b!1574257 (> (size!13887 (charsOf!1672 (h!22606 (t!143198 (t!143198 tokens!457))))) 0)))

(declare-fun lt!547258 () Unit!26579)

(declare-fun Unit!26588 () Unit!26579)

(assert (=> b!1574257 (= lt!547258 Unit!26588)))

(assert (=> b!1574257 (rulesProduceIndividualToken!1324 thiss!17113 rules!1846 (h!22606 (t!143198 (t!143198 tokens!457))))))

(declare-fun lt!547257 () Unit!26579)

(declare-fun Unit!26589 () Unit!26579)

(assert (=> b!1574257 (= lt!547257 Unit!26589)))

(assert (=> b!1574257 (rulesProduceIndividualToken!1324 thiss!17113 rules!1846 (h!22606 (t!143198 tokens!457)))))

(declare-fun lt!547259 () Unit!26579)

(declare-fun lt!547263 () Unit!26579)

(assert (=> b!1574257 (= lt!547259 lt!547263)))

(assert (=> b!1574257 (rulesProduceIndividualToken!1324 thiss!17113 rules!1846 (h!22606 (t!143198 (t!143198 tokens!457))))))

(assert (=> b!1574257 (= lt!547263 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!502 thiss!17113 rules!1846 (t!143198 tokens!457) (h!22606 (t!143198 (t!143198 tokens!457)))))))

(declare-fun lt!547262 () Unit!26579)

(declare-fun lt!547261 () Unit!26579)

(assert (=> b!1574257 (= lt!547262 lt!547261)))

(assert (=> b!1574257 (rulesProduceIndividualToken!1324 thiss!17113 rules!1846 (h!22606 (t!143198 tokens!457)))))

(assert (=> b!1574257 (= lt!547261 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!502 thiss!17113 rules!1846 (t!143198 tokens!457) (h!22606 (t!143198 tokens!457))))))

(declare-fun b!1574258 () Bool)

(assert (=> b!1574258 (= e!1011050 (tokensListTwoByTwoPredicateSeparableList!345 thiss!17113 (Cons!17205 (h!22606 (t!143198 (t!143198 tokens!457))) (t!143198 (t!143198 (t!143198 tokens!457)))) rules!1846))))

(assert (= (and d!467586 (not res!701646)) b!1574257))

(assert (= (and b!1574257 res!701647) b!1574258))

(declare-fun m!1853255 () Bool)

(assert (=> b!1574257 m!1853255))

(declare-fun m!1853257 () Bool)

(assert (=> b!1574257 m!1853257))

(declare-fun m!1853259 () Bool)

(assert (=> b!1574257 m!1853259))

(assert (=> b!1574257 m!1853257))

(declare-fun m!1853261 () Bool)

(assert (=> b!1574257 m!1853261))

(assert (=> b!1574257 m!1853101))

(declare-fun m!1853263 () Bool)

(assert (=> b!1574257 m!1853263))

(declare-fun m!1853265 () Bool)

(assert (=> b!1574257 m!1853265))

(declare-fun m!1853267 () Bool)

(assert (=> b!1574258 m!1853267))

(assert (=> b!1574071 d!467586))

(declare-fun d!467588 () Bool)

(assert (=> d!467588 (= (isEmpty!10277 rules!1846) ((_ is Nil!17206) rules!1846))))

(assert (=> b!1574072 d!467588))

(declare-fun b!1574292 () Bool)

(declare-fun e!1011072 () Bool)

(declare-fun e!1011073 () Bool)

(assert (=> b!1574292 (= e!1011072 e!1011073)))

(declare-fun c!255264 () Bool)

(assert (=> b!1574292 (= c!255264 ((_ is IntegerValue!9340) (value!95828 (h!22606 tokens!457))))))

(declare-fun b!1574294 () Bool)

(declare-fun res!701652 () Bool)

(declare-fun e!1011074 () Bool)

(assert (=> b!1574294 (=> res!701652 e!1011074)))

(assert (=> b!1574294 (= res!701652 (not ((_ is IntegerValue!9341) (value!95828 (h!22606 tokens!457)))))))

(assert (=> b!1574294 (= e!1011073 e!1011074)))

(declare-fun b!1574295 () Bool)

(declare-fun inv!16 (TokenValue!3113) Bool)

(assert (=> b!1574295 (= e!1011072 (inv!16 (value!95828 (h!22606 tokens!457))))))

(declare-fun b!1574296 () Bool)

(declare-fun inv!15 (TokenValue!3113) Bool)

(assert (=> b!1574296 (= e!1011074 (inv!15 (value!95828 (h!22606 tokens!457))))))

(declare-fun d!467590 () Bool)

(declare-fun c!255265 () Bool)

(assert (=> d!467590 (= c!255265 ((_ is IntegerValue!9339) (value!95828 (h!22606 tokens!457))))))

(assert (=> d!467590 (= (inv!21 (value!95828 (h!22606 tokens!457))) e!1011072)))

(declare-fun b!1574293 () Bool)

(declare-fun inv!17 (TokenValue!3113) Bool)

(assert (=> b!1574293 (= e!1011073 (inv!17 (value!95828 (h!22606 tokens!457))))))

(assert (= (and d!467590 c!255265) b!1574295))

(assert (= (and d!467590 (not c!255265)) b!1574292))

(assert (= (and b!1574292 c!255264) b!1574293))

(assert (= (and b!1574292 (not c!255264)) b!1574294))

(assert (= (and b!1574294 (not res!701652)) b!1574296))

(declare-fun m!1853279 () Bool)

(assert (=> b!1574295 m!1853279))

(declare-fun m!1853281 () Bool)

(assert (=> b!1574296 m!1853281))

(declare-fun m!1853283 () Bool)

(assert (=> b!1574293 m!1853283))

(assert (=> b!1574070 d!467590))

(declare-fun bs!390418 () Bool)

(declare-fun d!467592 () Bool)

(assert (= bs!390418 (and d!467592 d!467528)))

(declare-fun lambda!66356 () Int)

(assert (=> bs!390418 (= lambda!66356 lambda!66355)))

(declare-fun b!1574309 () Bool)

(declare-fun e!1011082 () Bool)

(assert (=> b!1574309 (= e!1011082 true)))

(declare-fun b!1574308 () Bool)

(declare-fun e!1011081 () Bool)

(assert (=> b!1574308 (= e!1011081 e!1011082)))

(declare-fun b!1574307 () Bool)

(declare-fun e!1011080 () Bool)

(assert (=> b!1574307 (= e!1011080 e!1011081)))

(assert (=> d!467592 e!1011080))

(assert (= b!1574308 b!1574309))

(assert (= b!1574307 b!1574308))

(assert (= (and d!467592 ((_ is Cons!17206) rules!1846)) b!1574307))

(assert (=> b!1574309 (< (dynLambda!7633 order!10143 (toValue!4418 (transformation!3023 (h!22607 rules!1846)))) (dynLambda!7634 order!10145 lambda!66356))))

(assert (=> b!1574309 (< (dynLambda!7635 order!10147 (toChars!4277 (transformation!3023 (h!22607 rules!1846)))) (dynLambda!7634 order!10145 lambda!66356))))

(assert (=> d!467592 true))

(declare-fun lt!547264 () Bool)

(assert (=> d!467592 (= lt!547264 (forall!3974 (t!143198 tokens!457) lambda!66356))))

(declare-fun e!1011079 () Bool)

(assert (=> d!467592 (= lt!547264 e!1011079)))

(declare-fun res!701654 () Bool)

(assert (=> d!467592 (=> res!701654 e!1011079)))

(assert (=> d!467592 (= res!701654 (not ((_ is Cons!17205) (t!143198 tokens!457))))))

(assert (=> d!467592 (not (isEmpty!10277 rules!1846))))

(assert (=> d!467592 (= (rulesProduceEachTokenIndividuallyList!854 thiss!17113 rules!1846 (t!143198 tokens!457)) lt!547264)))

(declare-fun b!1574305 () Bool)

(declare-fun e!1011078 () Bool)

(assert (=> b!1574305 (= e!1011079 e!1011078)))

(declare-fun res!701653 () Bool)

(assert (=> b!1574305 (=> (not res!701653) (not e!1011078))))

(assert (=> b!1574305 (= res!701653 (rulesProduceIndividualToken!1324 thiss!17113 rules!1846 (h!22606 (t!143198 tokens!457))))))

(declare-fun b!1574306 () Bool)

(assert (=> b!1574306 (= e!1011078 (rulesProduceEachTokenIndividuallyList!854 thiss!17113 rules!1846 (t!143198 (t!143198 tokens!457))))))

(assert (= (and d!467592 (not res!701654)) b!1574305))

(assert (= (and b!1574305 res!701653) b!1574306))

(declare-fun m!1853285 () Bool)

(assert (=> d!467592 m!1853285))

(assert (=> d!467592 m!1852973))

(assert (=> b!1574305 m!1853101))

(declare-fun m!1853287 () Bool)

(assert (=> b!1574306 m!1853287))

(assert (=> b!1574081 d!467592))

(declare-fun d!467594 () Bool)

(declare-fun e!1011109 () Bool)

(assert (=> d!467594 e!1011109))

(declare-fun res!701664 () Bool)

(assert (=> d!467594 (=> res!701664 e!1011109)))

(declare-fun lt!547267 () Bool)

(assert (=> d!467594 (= res!701664 (not lt!547267))))

(declare-fun e!1011111 () Bool)

(assert (=> d!467594 (= lt!547267 e!1011111)))

(declare-fun res!701663 () Bool)

(assert (=> d!467594 (=> res!701663 e!1011111)))

(assert (=> d!467594 (= res!701663 ((_ is Nil!17204) lt!547162))))

(assert (=> d!467594 (= (isPrefix!1283 lt!547162 lt!547165) lt!547267)))

(declare-fun b!1574339 () Bool)

(declare-fun e!1011110 () Bool)

(declare-fun tail!2234 (List!17274) List!17274)

(assert (=> b!1574339 (= e!1011110 (isPrefix!1283 (tail!2234 lt!547162) (tail!2234 lt!547165)))))

(declare-fun b!1574338 () Bool)

(declare-fun res!701666 () Bool)

(assert (=> b!1574338 (=> (not res!701666) (not e!1011110))))

(declare-fun head!3153 (List!17274) C!8876)

(assert (=> b!1574338 (= res!701666 (= (head!3153 lt!547162) (head!3153 lt!547165)))))

(declare-fun b!1574340 () Bool)

(assert (=> b!1574340 (= e!1011109 (>= (size!13884 lt!547165) (size!13884 lt!547162)))))

(declare-fun b!1574337 () Bool)

(assert (=> b!1574337 (= e!1011111 e!1011110)))

(declare-fun res!701665 () Bool)

(assert (=> b!1574337 (=> (not res!701665) (not e!1011110))))

(assert (=> b!1574337 (= res!701665 (not ((_ is Nil!17204) lt!547165)))))

(assert (= (and d!467594 (not res!701663)) b!1574337))

(assert (= (and b!1574337 res!701665) b!1574338))

(assert (= (and b!1574338 res!701666) b!1574339))

(assert (= (and d!467594 (not res!701664)) b!1574340))

(declare-fun m!1853297 () Bool)

(assert (=> b!1574339 m!1853297))

(declare-fun m!1853299 () Bool)

(assert (=> b!1574339 m!1853299))

(assert (=> b!1574339 m!1853297))

(assert (=> b!1574339 m!1853299))

(declare-fun m!1853301 () Bool)

(assert (=> b!1574339 m!1853301))

(declare-fun m!1853303 () Bool)

(assert (=> b!1574338 m!1853303))

(declare-fun m!1853305 () Bool)

(assert (=> b!1574338 m!1853305))

(declare-fun m!1853307 () Bool)

(assert (=> b!1574340 m!1853307))

(assert (=> b!1574340 m!1853049))

(assert (=> b!1574081 d!467594))

(declare-fun d!467596 () Bool)

(assert (=> d!467596 (isPrefix!1283 lt!547162 (++!4459 lt!547162 lt!547164))))

(declare-fun lt!547270 () Unit!26579)

(declare-fun choose!9419 (List!17274 List!17274) Unit!26579)

(assert (=> d!467596 (= lt!547270 (choose!9419 lt!547162 lt!547164))))

(assert (=> d!467596 (= (lemmaConcatTwoListThenFirstIsPrefix!808 lt!547162 lt!547164) lt!547270)))

(declare-fun bs!390419 () Bool)

(assert (= bs!390419 d!467596))

(assert (=> bs!390419 m!1852981))

(assert (=> bs!390419 m!1852981))

(declare-fun m!1853309 () Bool)

(assert (=> bs!390419 m!1853309))

(declare-fun m!1853311 () Bool)

(assert (=> bs!390419 m!1853311))

(assert (=> b!1574081 d!467596))

(declare-fun b!1574353 () Bool)

(declare-fun e!1011114 () Bool)

(declare-fun tp!463306 () Bool)

(assert (=> b!1574353 (= e!1011114 tp!463306)))

(declare-fun b!1574351 () Bool)

(declare-fun tp_is_empty!7157 () Bool)

(assert (=> b!1574351 (= e!1011114 tp_is_empty!7157)))

(assert (=> b!1574079 (= tp!463230 e!1011114)))

(declare-fun b!1574354 () Bool)

(declare-fun tp!463307 () Bool)

(declare-fun tp!463305 () Bool)

(assert (=> b!1574354 (= e!1011114 (and tp!463307 tp!463305))))

(declare-fun b!1574352 () Bool)

(declare-fun tp!463309 () Bool)

(declare-fun tp!463308 () Bool)

(assert (=> b!1574352 (= e!1011114 (and tp!463309 tp!463308))))

(assert (= (and b!1574079 ((_ is ElementMatch!4351) (regex!3023 (rule!4815 (h!22606 tokens!457))))) b!1574351))

(assert (= (and b!1574079 ((_ is Concat!7465) (regex!3023 (rule!4815 (h!22606 tokens!457))))) b!1574352))

(assert (= (and b!1574079 ((_ is Star!4351) (regex!3023 (rule!4815 (h!22606 tokens!457))))) b!1574353))

(assert (= (and b!1574079 ((_ is Union!4351) (regex!3023 (rule!4815 (h!22606 tokens!457))))) b!1574354))

(declare-fun b!1574368 () Bool)

(declare-fun b_free!42279 () Bool)

(declare-fun b_next!42983 () Bool)

(assert (=> b!1574368 (= b_free!42279 (not b_next!42983))))

(declare-fun tp!463320 () Bool)

(declare-fun b_and!110117 () Bool)

(assert (=> b!1574368 (= tp!463320 b_and!110117)))

(declare-fun b_free!42281 () Bool)

(declare-fun b_next!42985 () Bool)

(assert (=> b!1574368 (= b_free!42281 (not b_next!42985))))

(declare-fun t!143217 () Bool)

(declare-fun tb!88643 () Bool)

(assert (=> (and b!1574368 (= (toChars!4277 (transformation!3023 (rule!4815 (h!22606 (t!143198 tokens!457))))) (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457))))) t!143217) tb!88643))

(declare-fun result!107202 () Bool)

(assert (= result!107202 result!107174))

(assert (=> b!1574089 t!143217))

(assert (=> d!467516 t!143217))

(declare-fun tp!463324 () Bool)

(declare-fun b_and!110119 () Bool)

(assert (=> b!1574368 (= tp!463324 (and (=> t!143217 result!107202) b_and!110119))))

(declare-fun e!1011129 () Bool)

(assert (=> b!1574368 (= e!1011129 (and tp!463320 tp!463324))))

(declare-fun tp!463322 () Bool)

(declare-fun e!1011130 () Bool)

(declare-fun b!1574367 () Bool)

(assert (=> b!1574367 (= e!1011130 (and tp!463322 (inv!22612 (tag!3289 (rule!4815 (h!22606 (t!143198 tokens!457))))) (inv!22615 (transformation!3023 (rule!4815 (h!22606 (t!143198 tokens!457))))) e!1011129))))

(declare-fun tp!463323 () Bool)

(declare-fun e!1011127 () Bool)

(declare-fun b!1574366 () Bool)

(assert (=> b!1574366 (= e!1011127 (and (inv!21 (value!95828 (h!22606 (t!143198 tokens!457)))) e!1011130 tp!463323))))

(declare-fun b!1574365 () Bool)

(declare-fun e!1011132 () Bool)

(declare-fun tp!463321 () Bool)

(assert (=> b!1574365 (= e!1011132 (and (inv!22616 (h!22606 (t!143198 tokens!457))) e!1011127 tp!463321))))

(assert (=> b!1574083 (= tp!463238 e!1011132)))

(assert (= b!1574367 b!1574368))

(assert (= b!1574366 b!1574367))

(assert (= b!1574365 b!1574366))

(assert (= (and b!1574083 ((_ is Cons!17205) (t!143198 tokens!457))) b!1574365))

(declare-fun m!1853313 () Bool)

(assert (=> b!1574367 m!1853313))

(declare-fun m!1853315 () Bool)

(assert (=> b!1574367 m!1853315))

(declare-fun m!1853317 () Bool)

(assert (=> b!1574366 m!1853317))

(declare-fun m!1853319 () Bool)

(assert (=> b!1574365 m!1853319))

(declare-fun b!1574379 () Bool)

(declare-fun b_free!42283 () Bool)

(declare-fun b_next!42987 () Bool)

(assert (=> b!1574379 (= b_free!42283 (not b_next!42987))))

(declare-fun tp!463333 () Bool)

(declare-fun b_and!110121 () Bool)

(assert (=> b!1574379 (= tp!463333 b_and!110121)))

(declare-fun b_free!42285 () Bool)

(declare-fun b_next!42989 () Bool)

(assert (=> b!1574379 (= b_free!42285 (not b_next!42989))))

(declare-fun tb!88645 () Bool)

(declare-fun t!143219 () Bool)

(assert (=> (and b!1574379 (= (toChars!4277 (transformation!3023 (h!22607 (t!143199 rules!1846)))) (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457))))) t!143219) tb!88645))

(declare-fun result!107206 () Bool)

(assert (= result!107206 result!107174))

(assert (=> b!1574089 t!143219))

(assert (=> d!467516 t!143219))

(declare-fun tp!463336 () Bool)

(declare-fun b_and!110123 () Bool)

(assert (=> b!1574379 (= tp!463336 (and (=> t!143219 result!107206) b_and!110123))))

(declare-fun e!1011141 () Bool)

(assert (=> b!1574379 (= e!1011141 (and tp!463333 tp!463336))))

(declare-fun b!1574378 () Bool)

(declare-fun e!1011143 () Bool)

(declare-fun tp!463335 () Bool)

(assert (=> b!1574378 (= e!1011143 (and tp!463335 (inv!22612 (tag!3289 (h!22607 (t!143199 rules!1846)))) (inv!22615 (transformation!3023 (h!22607 (t!143199 rules!1846)))) e!1011141))))

(declare-fun b!1574377 () Bool)

(declare-fun e!1011144 () Bool)

(declare-fun tp!463334 () Bool)

(assert (=> b!1574377 (= e!1011144 (and e!1011143 tp!463334))))

(assert (=> b!1574078 (= tp!463235 e!1011144)))

(assert (= b!1574378 b!1574379))

(assert (= b!1574377 b!1574378))

(assert (= (and b!1574078 ((_ is Cons!17206) (t!143199 rules!1846))) b!1574377))

(declare-fun m!1853321 () Bool)

(assert (=> b!1574378 m!1853321))

(declare-fun m!1853323 () Bool)

(assert (=> b!1574378 m!1853323))

(declare-fun b!1574384 () Bool)

(declare-fun e!1011147 () Bool)

(declare-fun tp!463339 () Bool)

(assert (=> b!1574384 (= e!1011147 (and tp_is_empty!7157 tp!463339))))

(assert (=> b!1574070 (= tp!463237 e!1011147)))

(assert (= (and b!1574070 ((_ is Cons!17204) (originalCharacters!3837 (h!22606 tokens!457)))) b!1574384))

(declare-fun b!1574387 () Bool)

(declare-fun e!1011148 () Bool)

(declare-fun tp!463341 () Bool)

(assert (=> b!1574387 (= e!1011148 tp!463341)))

(declare-fun b!1574385 () Bool)

(assert (=> b!1574385 (= e!1011148 tp_is_empty!7157)))

(assert (=> b!1574076 (= tp!463231 e!1011148)))

(declare-fun b!1574388 () Bool)

(declare-fun tp!463342 () Bool)

(declare-fun tp!463340 () Bool)

(assert (=> b!1574388 (= e!1011148 (and tp!463342 tp!463340))))

(declare-fun b!1574386 () Bool)

(declare-fun tp!463344 () Bool)

(declare-fun tp!463343 () Bool)

(assert (=> b!1574386 (= e!1011148 (and tp!463344 tp!463343))))

(assert (= (and b!1574076 ((_ is ElementMatch!4351) (regex!3023 (h!22607 rules!1846)))) b!1574385))

(assert (= (and b!1574076 ((_ is Concat!7465) (regex!3023 (h!22607 rules!1846)))) b!1574386))

(assert (= (and b!1574076 ((_ is Star!4351) (regex!3023 (h!22607 rules!1846)))) b!1574387))

(assert (= (and b!1574076 ((_ is Union!4351) (regex!3023 (h!22607 rules!1846)))) b!1574388))

(declare-fun b_lambda!49557 () Bool)

(assert (= b_lambda!49547 (or (and b!1574075 b_free!42265 (= (toChars!4277 (transformation!3023 (h!22607 rules!1846))) (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457)))))) (and b!1574074 b_free!42269) (and b!1574368 b_free!42281 (= (toChars!4277 (transformation!3023 (rule!4815 (h!22606 (t!143198 tokens!457))))) (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457)))))) (and b!1574379 b_free!42285 (= (toChars!4277 (transformation!3023 (h!22607 (t!143199 rules!1846)))) (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457)))))) b_lambda!49557)))

(declare-fun b_lambda!49559 () Bool)

(assert (= b_lambda!49545 (or (and b!1574075 b_free!42265 (= (toChars!4277 (transformation!3023 (h!22607 rules!1846))) (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457)))))) (and b!1574074 b_free!42269) (and b!1574368 b_free!42281 (= (toChars!4277 (transformation!3023 (rule!4815 (h!22606 (t!143198 tokens!457))))) (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457)))))) (and b!1574379 b_free!42285 (= (toChars!4277 (transformation!3023 (h!22607 (t!143199 rules!1846)))) (toChars!4277 (transformation!3023 (rule!4815 (h!22606 tokens!457)))))) b_lambda!49559)))

(check-sat (not d!467524) (not d!467510) (not b!1574256) (not b_lambda!49559) (not d!467528) (not b!1574386) (not b!1574106) (not d!467570) (not d!467504) (not b!1574352) b_and!110097 b_and!110089 (not d!467508) (not b!1574354) (not b!1574090) (not b!1574339) (not d!467506) (not b!1574105) (not b_next!42987) (not b!1574247) (not b!1574257) (not b!1574306) b_and!110085 (not b!1574095) (not d!467596) (not b!1574353) (not b!1574296) (not d!467516) (not b_next!42989) (not b!1574131) (not b!1574388) (not b!1574210) (not b!1574225) (not d!467576) tp_is_empty!7157 (not b!1574122) (not b!1574132) (not d!467578) (not b!1574089) (not b_next!42969) (not b!1574338) (not b!1574126) (not b!1574248) b_and!110099 (not b!1574293) b_and!110121 (not d!467522) (not b!1574123) (not b!1574340) (not tb!88631) (not b!1574295) (not b!1574366) (not b!1574387) (not b!1574378) b_and!110119 (not b!1574211) (not b_next!42983) (not b_next!42971) (not b!1574367) (not b!1574307) (not b_lambda!49557) (not d!467518) b_and!110123 (not d!467592) (not b!1574365) (not b_next!42973) (not b_next!42967) b_and!110117 (not b!1574384) (not d!467520) (not b!1574377) (not b!1574305) (not d!467514) (not d!467512) (not b_next!42985) (not b!1574124) (not b!1574258))
(check-sat (not b_next!42987) b_and!110085 (not b_next!42989) (not b_next!42969) b_and!110099 b_and!110121 (not b_next!42971) b_and!110123 (not b_next!42985) b_and!110097 b_and!110089 b_and!110119 (not b_next!42983) (not b_next!42973) (not b_next!42967) b_and!110117)
