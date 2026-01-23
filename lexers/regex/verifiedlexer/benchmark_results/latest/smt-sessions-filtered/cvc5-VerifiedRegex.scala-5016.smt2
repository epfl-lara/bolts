; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!253708 () Bool)

(assert start!253708)

(declare-fun b!2610153 () Bool)

(declare-fun b_free!73349 () Bool)

(declare-fun b_next!74053 () Bool)

(assert (=> b!2610153 (= b_free!73349 (not b_next!74053))))

(declare-fun tp!829257 () Bool)

(declare-fun b_and!190907 () Bool)

(assert (=> b!2610153 (= tp!829257 b_and!190907)))

(declare-fun b_free!73351 () Bool)

(declare-fun b_next!74055 () Bool)

(assert (=> b!2610153 (= b_free!73351 (not b_next!74055))))

(declare-fun tp!829256 () Bool)

(declare-fun b_and!190909 () Bool)

(assert (=> b!2610153 (= tp!829256 b_and!190909)))

(declare-fun b!2610158 () Bool)

(declare-fun b_free!73353 () Bool)

(declare-fun b_next!74057 () Bool)

(assert (=> b!2610158 (= b_free!73353 (not b_next!74057))))

(declare-fun tp!829259 () Bool)

(declare-fun b_and!190911 () Bool)

(assert (=> b!2610158 (= tp!829259 b_and!190911)))

(declare-fun b_free!73355 () Bool)

(declare-fun b_next!74059 () Bool)

(assert (=> b!2610158 (= b_free!73355 (not b_next!74059))))

(declare-fun tp!829260 () Bool)

(declare-fun b_and!190913 () Bool)

(assert (=> b!2610158 (= tp!829260 b_and!190913)))

(declare-fun bs!473862 () Bool)

(declare-fun b!2610157 () Bool)

(declare-fun b!2610152 () Bool)

(assert (= bs!473862 (and b!2610157 b!2610152)))

(declare-fun lambda!97636 () Int)

(declare-fun lambda!97635 () Int)

(assert (=> bs!473862 (not (= lambda!97636 lambda!97635))))

(declare-fun b!2610172 () Bool)

(declare-fun e!1646843 () Bool)

(assert (=> b!2610172 (= e!1646843 true)))

(declare-fun b!2610171 () Bool)

(declare-fun e!1646842 () Bool)

(assert (=> b!2610171 (= e!1646842 e!1646843)))

(declare-fun b!2610170 () Bool)

(declare-fun e!1646841 () Bool)

(assert (=> b!2610170 (= e!1646841 e!1646842)))

(assert (=> b!2610157 e!1646841))

(assert (= b!2610171 b!2610172))

(assert (= b!2610170 b!2610171))

(declare-datatypes ((List!30233 0))(
  ( (Nil!30133) (Cons!30133 (h!35553 (_ BitVec 16)) (t!214016 List!30233)) )
))
(declare-datatypes ((C!15550 0))(
  ( (C!15551 (val!9709 Int)) )
))
(declare-datatypes ((String!33755 0))(
  ( (String!33756 (value!147312 String)) )
))
(declare-datatypes ((Regex!7696 0))(
  ( (ElementMatch!7696 (c!419609 C!15550)) (Concat!12470 (regOne!15904 Regex!7696) (regTwo!15904 Regex!7696)) (EmptyExpr!7696) (Star!7696 (reg!8025 Regex!7696)) (EmptyLang!7696) (Union!7696 (regOne!15905 Regex!7696) (regTwo!15905 Regex!7696)) )
))
(declare-datatypes ((TokenValue!4774 0))(
  ( (FloatLiteralValue!9548 (text!33863 List!30233)) (TokenValueExt!4773 (__x!19381 Int)) (Broken!23870 (value!147313 List!30233)) (Object!4873) (End!4774) (Def!4774) (Underscore!4774) (Match!4774) (Else!4774) (Error!4774) (Case!4774) (If!4774) (Extends!4774) (Abstract!4774) (Class!4774) (Val!4774) (DelimiterValue!9548 (del!4834 List!30233)) (KeywordValue!4780 (value!147314 List!30233)) (CommentValue!9548 (value!147315 List!30233)) (WhitespaceValue!9548 (value!147316 List!30233)) (IndentationValue!4774 (value!147317 List!30233)) (String!33757) (Int32!4774) (Broken!23871 (value!147318 List!30233)) (Boolean!4775) (Unit!44121) (OperatorValue!4777 (op!4834 List!30233)) (IdentifierValue!9548 (value!147319 List!30233)) (IdentifierValue!9549 (value!147320 List!30233)) (WhitespaceValue!9549 (value!147321 List!30233)) (True!9548) (False!9548) (Broken!23872 (value!147322 List!30233)) (Broken!23873 (value!147323 List!30233)) (True!9549) (RightBrace!4774) (RightBracket!4774) (Colon!4774) (Null!4774) (Comma!4774) (LeftBracket!4774) (False!9549) (LeftBrace!4774) (ImaginaryLiteralValue!4774 (text!33864 List!30233)) (StringLiteralValue!14322 (value!147324 List!30233)) (EOFValue!4774 (value!147325 List!30233)) (IdentValue!4774 (value!147326 List!30233)) (DelimiterValue!9549 (value!147327 List!30233)) (DedentValue!4774 (value!147328 List!30233)) (NewLineValue!4774 (value!147329 List!30233)) (IntegerValue!14322 (value!147330 (_ BitVec 32)) (text!33865 List!30233)) (IntegerValue!14323 (value!147331 Int) (text!33866 List!30233)) (Times!4774) (Or!4774) (Equal!4774) (Minus!4774) (Broken!23874 (value!147332 List!30233)) (And!4774) (Div!4774) (LessEqual!4774) (Mod!4774) (Concat!12471) (Not!4774) (Plus!4774) (SpaceValue!4774 (value!147333 List!30233)) (IntegerValue!14324 (value!147334 Int) (text!33867 List!30233)) (StringLiteralValue!14323 (text!33868 List!30233)) (FloatLiteralValue!9549 (text!33869 List!30233)) (BytesLiteralValue!4774 (value!147335 List!30233)) (CommentValue!9549 (value!147336 List!30233)) (StringLiteralValue!14324 (value!147337 List!30233)) (ErrorTokenValue!4774 (msg!4835 List!30233)) )
))
(declare-datatypes ((List!30234 0))(
  ( (Nil!30134) (Cons!30134 (h!35554 C!15550) (t!214017 List!30234)) )
))
(declare-datatypes ((IArray!18697 0))(
  ( (IArray!18698 (innerList!9406 List!30234)) )
))
(declare-datatypes ((Conc!9346 0))(
  ( (Node!9346 (left!23172 Conc!9346) (right!23502 Conc!9346) (csize!18922 Int) (cheight!9557 Int)) (Leaf!14363 (xs!12330 IArray!18697) (csize!18923 Int)) (Empty!9346) )
))
(declare-datatypes ((BalanceConc!18306 0))(
  ( (BalanceConc!18307 (c!419610 Conc!9346)) )
))
(declare-datatypes ((TokenValueInjection!8988 0))(
  ( (TokenValueInjection!8989 (toValue!6454 Int) (toChars!6313 Int)) )
))
(declare-datatypes ((Rule!8904 0))(
  ( (Rule!8905 (regex!4552 Regex!7696) (tag!5042 String!33755) (isSeparator!4552 Bool) (transformation!4552 TokenValueInjection!8988)) )
))
(declare-datatypes ((List!30235 0))(
  ( (Nil!30135) (Cons!30135 (h!35555 Rule!8904) (t!214018 List!30235)) )
))
(declare-fun rules!1726 () List!30235)

(assert (= (and b!2610157 (is-Cons!30135 rules!1726)) b!2610170))

(declare-fun order!15983 () Int)

(declare-fun order!15981 () Int)

(declare-fun dynLambda!12744 (Int Int) Int)

(declare-fun dynLambda!12745 (Int Int) Int)

(assert (=> b!2610172 (< (dynLambda!12744 order!15981 (toValue!6454 (transformation!4552 (h!35555 rules!1726)))) (dynLambda!12745 order!15983 lambda!97636))))

(declare-fun order!15985 () Int)

(declare-fun dynLambda!12746 (Int Int) Int)

(assert (=> b!2610172 (< (dynLambda!12746 order!15985 (toChars!6313 (transformation!4552 (h!35555 rules!1726)))) (dynLambda!12745 order!15983 lambda!97636))))

(assert (=> b!2610157 true))

(declare-fun b!2610143 () Bool)

(declare-fun res!1098634 () Bool)

(declare-fun e!1646830 () Bool)

(assert (=> b!2610143 (=> (not res!1098634) (not e!1646830))))

(declare-datatypes ((LexerInterface!4149 0))(
  ( (LexerInterfaceExt!4146 (__x!19382 Int)) (Lexer!4147) )
))
(declare-fun thiss!14197 () LexerInterface!4149)

(declare-datatypes ((Token!8574 0))(
  ( (Token!8575 (value!147338 TokenValue!4774) (rule!6922 Rule!8904) (size!23336 Int) (originalCharacters!5318 List!30234)) )
))
(declare-datatypes ((List!30236 0))(
  ( (Nil!30136) (Cons!30136 (h!35556 Token!8574) (t!214019 List!30236)) )
))
(declare-datatypes ((IArray!18699 0))(
  ( (IArray!18700 (innerList!9407 List!30236)) )
))
(declare-datatypes ((Conc!9347 0))(
  ( (Node!9347 (left!23173 Conc!9347) (right!23503 Conc!9347) (csize!18924 Int) (cheight!9558 Int)) (Leaf!14364 (xs!12331 IArray!18699) (csize!18925 Int)) (Empty!9347) )
))
(declare-datatypes ((BalanceConc!18308 0))(
  ( (BalanceConc!18309 (c!419611 Conc!9347)) )
))
(declare-fun v!6381 () BalanceConc!18308)

(declare-fun rulesProduceEachTokenIndividually!969 (LexerInterface!4149 List!30235 BalanceConc!18308) Bool)

(assert (=> b!2610143 (= res!1098634 (rulesProduceEachTokenIndividually!969 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2610144 () Bool)

(declare-fun res!1098631 () Bool)

(assert (=> b!2610144 (=> (not res!1098631) (not e!1646830))))

(declare-fun separatorToken!156 () Token!8574)

(declare-fun rulesProduceIndividualToken!1861 (LexerInterface!4149 List!30235 Token!8574) Bool)

(assert (=> b!2610144 (= res!1098631 (rulesProduceIndividualToken!1861 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun e!1646832 () Bool)

(declare-fun e!1646822 () Bool)

(declare-fun b!2610145 () Bool)

(declare-fun tp!829263 () Bool)

(declare-fun inv!21 (TokenValue!4774) Bool)

(assert (=> b!2610145 (= e!1646832 (and (inv!21 (value!147338 separatorToken!156)) e!1646822 tp!829263))))

(declare-fun b!2610146 () Bool)

(declare-fun res!1098639 () Bool)

(assert (=> b!2610146 (=> (not res!1098639) (not e!1646830))))

(assert (=> b!2610146 (= res!1098639 (isSeparator!4552 (rule!6922 separatorToken!156)))))

(declare-fun b!2610147 () Bool)

(declare-fun res!1098638 () Bool)

(assert (=> b!2610147 (=> (not res!1098638) (not e!1646830))))

(declare-fun sepAndNonSepRulesDisjointChars!1125 (List!30235 List!30235) Bool)

(assert (=> b!2610147 (= res!1098638 (sepAndNonSepRulesDisjointChars!1125 rules!1726 rules!1726))))

(declare-fun e!1646826 () Bool)

(declare-fun tp!829255 () Bool)

(declare-fun b!2610148 () Bool)

(declare-fun e!1646825 () Bool)

(declare-fun inv!40771 (String!33755) Bool)

(declare-fun inv!40774 (TokenValueInjection!8988) Bool)

(assert (=> b!2610148 (= e!1646826 (and tp!829255 (inv!40771 (tag!5042 (h!35555 rules!1726))) (inv!40774 (transformation!4552 (h!35555 rules!1726))) e!1646825))))

(declare-fun b!2610149 () Bool)

(declare-fun res!1098636 () Bool)

(assert (=> b!2610149 (=> (not res!1098636) (not e!1646830))))

(declare-fun rulesInvariant!3649 (LexerInterface!4149 List!30235) Bool)

(assert (=> b!2610149 (= res!1098636 (rulesInvariant!3649 thiss!14197 rules!1726))))

(declare-fun b!2610150 () Bool)

(declare-fun e!1646829 () Bool)

(assert (=> b!2610150 (= e!1646829 e!1646830)))

(declare-fun res!1098633 () Bool)

(assert (=> b!2610150 (=> (not res!1098633) (not e!1646830))))

(declare-fun from!862 () Int)

(declare-fun lt!917197 () Int)

(assert (=> b!2610150 (= res!1098633 (<= from!862 lt!917197))))

(declare-fun size!23337 (BalanceConc!18308) Int)

(assert (=> b!2610150 (= lt!917197 (size!23337 v!6381))))

(declare-fun b!2610151 () Bool)

(declare-fun e!1646823 () Bool)

(declare-fun tp!829258 () Bool)

(declare-fun inv!40775 (Conc!9347) Bool)

(assert (=> b!2610151 (= e!1646823 (and (inv!40775 (c!419611 v!6381)) tp!829258))))

(declare-fun res!1098635 () Bool)

(assert (=> b!2610152 (=> (not res!1098635) (not e!1646830))))

(declare-fun forall!6244 (BalanceConc!18308 Int) Bool)

(assert (=> b!2610152 (= res!1098635 (forall!6244 v!6381 lambda!97635))))

(declare-fun e!1646828 () Bool)

(assert (=> b!2610153 (= e!1646828 (and tp!829257 tp!829256))))

(declare-fun res!1098630 () Bool)

(assert (=> start!253708 (=> (not res!1098630) (not e!1646829))))

(assert (=> start!253708 (= res!1098630 (and (is-Lexer!4147 thiss!14197) (>= from!862 0)))))

(assert (=> start!253708 e!1646829))

(assert (=> start!253708 true))

(declare-fun e!1646821 () Bool)

(assert (=> start!253708 e!1646821))

(declare-fun inv!40776 (Token!8574) Bool)

(assert (=> start!253708 (and (inv!40776 separatorToken!156) e!1646832)))

(declare-fun inv!40777 (BalanceConc!18308) Bool)

(assert (=> start!253708 (and (inv!40777 v!6381) e!1646823)))

(declare-fun b!2610154 () Bool)

(declare-fun e!1646833 () Bool)

(declare-fun e!1646827 () Bool)

(assert (=> b!2610154 (= e!1646833 (not e!1646827))))

(declare-fun res!1098632 () Bool)

(assert (=> b!2610154 (=> res!1098632 e!1646827)))

(declare-fun lt!917194 () Token!8574)

(declare-fun contains!5578 (BalanceConc!18308 Token!8574) Bool)

(assert (=> b!2610154 (= res!1098632 (not (contains!5578 v!6381 lt!917194)))))

(declare-fun apply!7064 (BalanceConc!18308 Int) Token!8574)

(assert (=> b!2610154 (= lt!917194 (apply!7064 v!6381 from!862))))

(declare-fun lt!917195 () List!30236)

(declare-fun lt!917199 () List!30236)

(declare-fun tail!4185 (List!30236) List!30236)

(declare-fun drop!1548 (List!30236 Int) List!30236)

(assert (=> b!2610154 (= (tail!4185 lt!917195) (drop!1548 lt!917199 (+ 1 from!862)))))

(declare-datatypes ((Unit!44122 0))(
  ( (Unit!44123) )
))
(declare-fun lt!917198 () Unit!44122)

(declare-fun lemmaDropTail!737 (List!30236 Int) Unit!44122)

(assert (=> b!2610154 (= lt!917198 (lemmaDropTail!737 lt!917199 from!862))))

(declare-fun head!5947 (List!30236) Token!8574)

(declare-fun apply!7065 (List!30236 Int) Token!8574)

(assert (=> b!2610154 (= (head!5947 lt!917195) (apply!7065 lt!917199 from!862))))

(assert (=> b!2610154 (= lt!917195 (drop!1548 lt!917199 from!862))))

(declare-fun lt!917196 () Unit!44122)

(declare-fun lemmaDropApply!763 (List!30236 Int) Unit!44122)

(assert (=> b!2610154 (= lt!917196 (lemmaDropApply!763 lt!917199 from!862))))

(declare-fun b!2610155 () Bool)

(declare-fun tp!829262 () Bool)

(assert (=> b!2610155 (= e!1646821 (and e!1646826 tp!829262))))

(declare-fun b!2610156 () Bool)

(assert (=> b!2610156 (= e!1646830 e!1646833)))

(declare-fun res!1098629 () Bool)

(assert (=> b!2610156 (=> (not res!1098629) (not e!1646833))))

(assert (=> b!2610156 (= res!1098629 (< from!862 lt!917197))))

(declare-fun lt!917200 () Unit!44122)

(declare-fun lemmaContentSubsetPreservesForall!221 (List!30236 List!30236 Int) Unit!44122)

(declare-fun dropList!855 (BalanceConc!18308 Int) List!30236)

(assert (=> b!2610156 (= lt!917200 (lemmaContentSubsetPreservesForall!221 lt!917199 (dropList!855 v!6381 from!862) lambda!97635))))

(declare-fun list!11310 (BalanceConc!18308) List!30236)

(assert (=> b!2610156 (= lt!917199 (list!11310 v!6381))))

(declare-fun forall!6245 (List!30236 Int) Bool)

(assert (=> b!2610157 (= e!1646827 (forall!6245 lt!917199 lambda!97636))))

(assert (=> b!2610158 (= e!1646825 (and tp!829259 tp!829260))))

(declare-fun b!2610159 () Bool)

(declare-fun res!1098637 () Bool)

(assert (=> b!2610159 (=> (not res!1098637) (not e!1646830))))

(declare-fun isEmpty!17225 (List!30235) Bool)

(assert (=> b!2610159 (= res!1098637 (not (isEmpty!17225 rules!1726)))))

(declare-fun b!2610160 () Bool)

(declare-fun res!1098640 () Bool)

(assert (=> b!2610160 (=> res!1098640 e!1646827)))

(declare-fun contains!5579 (List!30236 Token!8574) Bool)

(assert (=> b!2610160 (= res!1098640 (not (contains!5579 lt!917199 lt!917194)))))

(declare-fun b!2610161 () Bool)

(declare-fun tp!829261 () Bool)

(assert (=> b!2610161 (= e!1646822 (and tp!829261 (inv!40771 (tag!5042 (rule!6922 separatorToken!156))) (inv!40774 (transformation!4552 (rule!6922 separatorToken!156))) e!1646828))))

(assert (= (and start!253708 res!1098630) b!2610150))

(assert (= (and b!2610150 res!1098633) b!2610159))

(assert (= (and b!2610159 res!1098637) b!2610149))

(assert (= (and b!2610149 res!1098636) b!2610143))

(assert (= (and b!2610143 res!1098634) b!2610144))

(assert (= (and b!2610144 res!1098631) b!2610146))

(assert (= (and b!2610146 res!1098639) b!2610152))

(assert (= (and b!2610152 res!1098635) b!2610147))

(assert (= (and b!2610147 res!1098638) b!2610156))

(assert (= (and b!2610156 res!1098629) b!2610154))

(assert (= (and b!2610154 (not res!1098632)) b!2610160))

(assert (= (and b!2610160 (not res!1098640)) b!2610157))

(assert (= b!2610148 b!2610158))

(assert (= b!2610155 b!2610148))

(assert (= (and start!253708 (is-Cons!30135 rules!1726)) b!2610155))

(assert (= b!2610161 b!2610153))

(assert (= b!2610145 b!2610161))

(assert (= start!253708 b!2610145))

(assert (= start!253708 b!2610151))

(declare-fun m!2944833 () Bool)

(assert (=> b!2610144 m!2944833))

(declare-fun m!2944835 () Bool)

(assert (=> b!2610154 m!2944835))

(declare-fun m!2944837 () Bool)

(assert (=> b!2610154 m!2944837))

(declare-fun m!2944839 () Bool)

(assert (=> b!2610154 m!2944839))

(declare-fun m!2944841 () Bool)

(assert (=> b!2610154 m!2944841))

(declare-fun m!2944843 () Bool)

(assert (=> b!2610154 m!2944843))

(declare-fun m!2944845 () Bool)

(assert (=> b!2610154 m!2944845))

(declare-fun m!2944847 () Bool)

(assert (=> b!2610154 m!2944847))

(declare-fun m!2944849 () Bool)

(assert (=> b!2610154 m!2944849))

(declare-fun m!2944851 () Bool)

(assert (=> b!2610154 m!2944851))

(declare-fun m!2944853 () Bool)

(assert (=> b!2610147 m!2944853))

(declare-fun m!2944855 () Bool)

(assert (=> b!2610143 m!2944855))

(declare-fun m!2944857 () Bool)

(assert (=> b!2610160 m!2944857))

(declare-fun m!2944859 () Bool)

(assert (=> b!2610149 m!2944859))

(declare-fun m!2944861 () Bool)

(assert (=> b!2610161 m!2944861))

(declare-fun m!2944863 () Bool)

(assert (=> b!2610161 m!2944863))

(declare-fun m!2944865 () Bool)

(assert (=> b!2610145 m!2944865))

(declare-fun m!2944867 () Bool)

(assert (=> b!2610150 m!2944867))

(declare-fun m!2944869 () Bool)

(assert (=> b!2610159 m!2944869))

(declare-fun m!2944871 () Bool)

(assert (=> b!2610157 m!2944871))

(declare-fun m!2944873 () Bool)

(assert (=> b!2610151 m!2944873))

(declare-fun m!2944875 () Bool)

(assert (=> start!253708 m!2944875))

(declare-fun m!2944877 () Bool)

(assert (=> start!253708 m!2944877))

(declare-fun m!2944879 () Bool)

(assert (=> b!2610148 m!2944879))

(declare-fun m!2944881 () Bool)

(assert (=> b!2610148 m!2944881))

(declare-fun m!2944883 () Bool)

(assert (=> b!2610152 m!2944883))

(declare-fun m!2944885 () Bool)

(assert (=> b!2610156 m!2944885))

(assert (=> b!2610156 m!2944885))

(declare-fun m!2944887 () Bool)

(assert (=> b!2610156 m!2944887))

(declare-fun m!2944889 () Bool)

(assert (=> b!2610156 m!2944889))

(push 1)

(assert (not b!2610152))

(assert (not b!2610148))

(assert (not b_next!74053))

(assert (not b!2610170))

(assert (not b!2610150))

(assert b_and!190911)

(assert (not b!2610160))

(assert (not b!2610155))

(assert (not b!2610159))

(assert (not b!2610161))

(assert (not b!2610149))

(assert (not b!2610157))

(assert (not b!2610147))

(assert (not b_next!74055))

(assert b_and!190909)

(assert (not b!2610151))

(assert b_and!190913)

(assert (not b!2610143))

(assert (not b!2610156))

(assert (not start!253708))

(assert (not b_next!74057))

(assert (not b!2610145))

(assert b_and!190907)

(assert (not b!2610154))

(assert (not b!2610144))

(assert (not b_next!74059))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!74053))

(assert b_and!190911)

(assert (not b_next!74057))

(assert b_and!190907)

(assert (not b_next!74059))

(assert (not b_next!74055))

(assert b_and!190909)

(assert b_and!190913)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!739643 () Bool)

(assert (=> d!739643 (= (isEmpty!17225 rules!1726) (is-Nil!30135 rules!1726))))

(assert (=> b!2610159 d!739643))

(declare-fun d!739645 () Bool)

(assert (=> d!739645 (= (inv!40771 (tag!5042 (h!35555 rules!1726))) (= (mod (str.len (value!147312 (tag!5042 (h!35555 rules!1726)))) 2) 0))))

(assert (=> b!2610148 d!739645))

(declare-fun d!739647 () Bool)

(declare-fun res!1098686 () Bool)

(declare-fun e!1646897 () Bool)

(assert (=> d!739647 (=> (not res!1098686) (not e!1646897))))

(declare-fun semiInverseModEq!1898 (Int Int) Bool)

(assert (=> d!739647 (= res!1098686 (semiInverseModEq!1898 (toChars!6313 (transformation!4552 (h!35555 rules!1726))) (toValue!6454 (transformation!4552 (h!35555 rules!1726)))))))

(assert (=> d!739647 (= (inv!40774 (transformation!4552 (h!35555 rules!1726))) e!1646897)))

(declare-fun b!2610247 () Bool)

(declare-fun equivClasses!1799 (Int Int) Bool)

(assert (=> b!2610247 (= e!1646897 (equivClasses!1799 (toChars!6313 (transformation!4552 (h!35555 rules!1726))) (toValue!6454 (transformation!4552 (h!35555 rules!1726)))))))

(assert (= (and d!739647 res!1098686) b!2610247))

(declare-fun m!2944949 () Bool)

(assert (=> d!739647 m!2944949))

(declare-fun m!2944951 () Bool)

(assert (=> b!2610247 m!2944951))

(assert (=> b!2610148 d!739647))

(declare-fun d!739649 () Bool)

(declare-fun res!1098691 () Bool)

(declare-fun e!1646902 () Bool)

(assert (=> d!739649 (=> res!1098691 e!1646902)))

(assert (=> d!739649 (= res!1098691 (not (is-Cons!30135 rules!1726)))))

(assert (=> d!739649 (= (sepAndNonSepRulesDisjointChars!1125 rules!1726 rules!1726) e!1646902)))

(declare-fun b!2610252 () Bool)

(declare-fun e!1646903 () Bool)

(assert (=> b!2610252 (= e!1646902 e!1646903)))

(declare-fun res!1098692 () Bool)

(assert (=> b!2610252 (=> (not res!1098692) (not e!1646903))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!505 (Rule!8904 List!30235) Bool)

(assert (=> b!2610252 (= res!1098692 (ruleDisjointCharsFromAllFromOtherType!505 (h!35555 rules!1726) rules!1726))))

(declare-fun b!2610253 () Bool)

(assert (=> b!2610253 (= e!1646903 (sepAndNonSepRulesDisjointChars!1125 rules!1726 (t!214018 rules!1726)))))

(assert (= (and d!739649 (not res!1098691)) b!2610252))

(assert (= (and b!2610252 res!1098692) b!2610253))

(declare-fun m!2944953 () Bool)

(assert (=> b!2610252 m!2944953))

(declare-fun m!2944955 () Bool)

(assert (=> b!2610253 m!2944955))

(assert (=> b!2610147 d!739649))

(declare-fun d!739651 () Bool)

(declare-fun res!1098697 () Bool)

(declare-fun e!1646908 () Bool)

(assert (=> d!739651 (=> res!1098697 e!1646908)))

(assert (=> d!739651 (= res!1098697 (is-Nil!30136 lt!917199))))

(assert (=> d!739651 (= (forall!6245 lt!917199 lambda!97636) e!1646908)))

(declare-fun b!2610258 () Bool)

(declare-fun e!1646909 () Bool)

(assert (=> b!2610258 (= e!1646908 e!1646909)))

(declare-fun res!1098698 () Bool)

(assert (=> b!2610258 (=> (not res!1098698) (not e!1646909))))

(declare-fun dynLambda!12750 (Int Token!8574) Bool)

(assert (=> b!2610258 (= res!1098698 (dynLambda!12750 lambda!97636 (h!35556 lt!917199)))))

(declare-fun b!2610259 () Bool)

(assert (=> b!2610259 (= e!1646909 (forall!6245 (t!214019 lt!917199) lambda!97636))))

(assert (= (and d!739651 (not res!1098697)) b!2610258))

(assert (= (and b!2610258 res!1098698) b!2610259))

(declare-fun b_lambda!78311 () Bool)

(assert (=> (not b_lambda!78311) (not b!2610258)))

(declare-fun m!2944957 () Bool)

(assert (=> b!2610258 m!2944957))

(declare-fun m!2944959 () Bool)

(assert (=> b!2610259 m!2944959))

(assert (=> b!2610157 d!739651))

(declare-fun d!739653 () Bool)

(declare-fun c!419617 () Bool)

(assert (=> d!739653 (= c!419617 (is-Node!9347 (c!419611 v!6381)))))

(declare-fun e!1646914 () Bool)

(assert (=> d!739653 (= (inv!40775 (c!419611 v!6381)) e!1646914)))

(declare-fun b!2610266 () Bool)

(declare-fun inv!40782 (Conc!9347) Bool)

(assert (=> b!2610266 (= e!1646914 (inv!40782 (c!419611 v!6381)))))

(declare-fun b!2610267 () Bool)

(declare-fun e!1646915 () Bool)

(assert (=> b!2610267 (= e!1646914 e!1646915)))

(declare-fun res!1098701 () Bool)

(assert (=> b!2610267 (= res!1098701 (not (is-Leaf!14364 (c!419611 v!6381))))))

(assert (=> b!2610267 (=> res!1098701 e!1646915)))

(declare-fun b!2610268 () Bool)

(declare-fun inv!40783 (Conc!9347) Bool)

(assert (=> b!2610268 (= e!1646915 (inv!40783 (c!419611 v!6381)))))

(assert (= (and d!739653 c!419617) b!2610266))

(assert (= (and d!739653 (not c!419617)) b!2610267))

(assert (= (and b!2610267 (not res!1098701)) b!2610268))

(declare-fun m!2944961 () Bool)

(assert (=> b!2610266 m!2944961))

(declare-fun m!2944963 () Bool)

(assert (=> b!2610268 m!2944963))

(assert (=> b!2610151 d!739653))

(declare-fun d!739655 () Bool)

(assert (=> d!739655 (= (inv!40771 (tag!5042 (rule!6922 separatorToken!156))) (= (mod (str.len (value!147312 (tag!5042 (rule!6922 separatorToken!156)))) 2) 0))))

(assert (=> b!2610161 d!739655))

(declare-fun d!739657 () Bool)

(declare-fun res!1098702 () Bool)

(declare-fun e!1646916 () Bool)

(assert (=> d!739657 (=> (not res!1098702) (not e!1646916))))

(assert (=> d!739657 (= res!1098702 (semiInverseModEq!1898 (toChars!6313 (transformation!4552 (rule!6922 separatorToken!156))) (toValue!6454 (transformation!4552 (rule!6922 separatorToken!156)))))))

(assert (=> d!739657 (= (inv!40774 (transformation!4552 (rule!6922 separatorToken!156))) e!1646916)))

(declare-fun b!2610269 () Bool)

(assert (=> b!2610269 (= e!1646916 (equivClasses!1799 (toChars!6313 (transformation!4552 (rule!6922 separatorToken!156))) (toValue!6454 (transformation!4552 (rule!6922 separatorToken!156)))))))

(assert (= (and d!739657 res!1098702) b!2610269))

(declare-fun m!2944965 () Bool)

(assert (=> d!739657 m!2944965))

(declare-fun m!2944967 () Bool)

(assert (=> b!2610269 m!2944967))

(assert (=> b!2610161 d!739657))

(declare-fun d!739659 () Bool)

(declare-fun lt!917224 () Int)

(declare-fun size!23340 (List!30236) Int)

(assert (=> d!739659 (= lt!917224 (size!23340 (list!11310 v!6381)))))

(declare-fun size!23341 (Conc!9347) Int)

(assert (=> d!739659 (= lt!917224 (size!23341 (c!419611 v!6381)))))

(assert (=> d!739659 (= (size!23337 v!6381) lt!917224)))

(declare-fun bs!473864 () Bool)

(assert (= bs!473864 d!739659))

(assert (=> bs!473864 m!2944889))

(assert (=> bs!473864 m!2944889))

(declare-fun m!2944969 () Bool)

(assert (=> bs!473864 m!2944969))

(declare-fun m!2944971 () Bool)

(assert (=> bs!473864 m!2944971))

(assert (=> b!2610150 d!739659))

(declare-fun d!739661 () Bool)

(declare-fun lt!917227 () Bool)

(declare-fun content!4274 (List!30236) (Set Token!8574))

(assert (=> d!739661 (= lt!917227 (set.member lt!917194 (content!4274 lt!917199)))))

(declare-fun e!1646921 () Bool)

(assert (=> d!739661 (= lt!917227 e!1646921)))

(declare-fun res!1098707 () Bool)

(assert (=> d!739661 (=> (not res!1098707) (not e!1646921))))

(assert (=> d!739661 (= res!1098707 (is-Cons!30136 lt!917199))))

(assert (=> d!739661 (= (contains!5579 lt!917199 lt!917194) lt!917227)))

(declare-fun b!2610274 () Bool)

(declare-fun e!1646922 () Bool)

(assert (=> b!2610274 (= e!1646921 e!1646922)))

(declare-fun res!1098708 () Bool)

(assert (=> b!2610274 (=> res!1098708 e!1646922)))

(assert (=> b!2610274 (= res!1098708 (= (h!35556 lt!917199) lt!917194))))

(declare-fun b!2610275 () Bool)

(assert (=> b!2610275 (= e!1646922 (contains!5579 (t!214019 lt!917199) lt!917194))))

(assert (= (and d!739661 res!1098707) b!2610274))

(assert (= (and b!2610274 (not res!1098708)) b!2610275))

(declare-fun m!2944973 () Bool)

(assert (=> d!739661 m!2944973))

(declare-fun m!2944975 () Bool)

(assert (=> d!739661 m!2944975))

(declare-fun m!2944977 () Bool)

(assert (=> b!2610275 m!2944977))

(assert (=> b!2610160 d!739661))

(declare-fun d!739665 () Bool)

(declare-fun res!1098711 () Bool)

(declare-fun e!1646925 () Bool)

(assert (=> d!739665 (=> (not res!1098711) (not e!1646925))))

(declare-fun rulesValid!1703 (LexerInterface!4149 List!30235) Bool)

(assert (=> d!739665 (= res!1098711 (rulesValid!1703 thiss!14197 rules!1726))))

(assert (=> d!739665 (= (rulesInvariant!3649 thiss!14197 rules!1726) e!1646925)))

(declare-fun b!2610278 () Bool)

(declare-datatypes ((List!30241 0))(
  ( (Nil!30141) (Cons!30141 (h!35561 String!33755) (t!214044 List!30241)) )
))
(declare-fun noDuplicateTag!1699 (LexerInterface!4149 List!30235 List!30241) Bool)

(assert (=> b!2610278 (= e!1646925 (noDuplicateTag!1699 thiss!14197 rules!1726 Nil!30141))))

(assert (= (and d!739665 res!1098711) b!2610278))

(declare-fun m!2944979 () Bool)

(assert (=> d!739665 m!2944979))

(declare-fun m!2944981 () Bool)

(assert (=> b!2610278 m!2944981))

(assert (=> b!2610149 d!739665))

(declare-fun bs!473865 () Bool)

(declare-fun d!739667 () Bool)

(assert (= bs!473865 (and d!739667 b!2610152)))

(declare-fun lambda!97649 () Int)

(assert (=> bs!473865 (not (= lambda!97649 lambda!97635))))

(declare-fun bs!473866 () Bool)

(assert (= bs!473866 (and d!739667 b!2610157)))

(assert (=> bs!473866 (= lambda!97649 lambda!97636)))

(declare-fun b!2610284 () Bool)

(declare-fun e!1646931 () Bool)

(assert (=> b!2610284 (= e!1646931 true)))

(declare-fun b!2610283 () Bool)

(declare-fun e!1646930 () Bool)

(assert (=> b!2610283 (= e!1646930 e!1646931)))

(declare-fun b!2610282 () Bool)

(declare-fun e!1646929 () Bool)

(assert (=> b!2610282 (= e!1646929 e!1646930)))

(assert (=> d!739667 e!1646929))

(assert (= b!2610283 b!2610284))

(assert (= b!2610282 b!2610283))

(assert (= (and d!739667 (is-Cons!30135 rules!1726)) b!2610282))

(assert (=> b!2610284 (< (dynLambda!12744 order!15981 (toValue!6454 (transformation!4552 (h!35555 rules!1726)))) (dynLambda!12745 order!15983 lambda!97649))))

(assert (=> b!2610284 (< (dynLambda!12746 order!15985 (toChars!6313 (transformation!4552 (h!35555 rules!1726)))) (dynLambda!12745 order!15983 lambda!97649))))

(assert (=> d!739667 true))

(declare-fun e!1646928 () Bool)

(assert (=> d!739667 e!1646928))

(declare-fun res!1098714 () Bool)

(assert (=> d!739667 (=> (not res!1098714) (not e!1646928))))

(declare-fun lt!917230 () Bool)

(assert (=> d!739667 (= res!1098714 (= lt!917230 (forall!6245 (list!11310 v!6381) lambda!97649)))))

(assert (=> d!739667 (= lt!917230 (forall!6244 v!6381 lambda!97649))))

(assert (=> d!739667 (not (isEmpty!17225 rules!1726))))

(assert (=> d!739667 (= (rulesProduceEachTokenIndividually!969 thiss!14197 rules!1726 v!6381) lt!917230)))

(declare-fun b!2610281 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1434 (LexerInterface!4149 List!30235 List!30236) Bool)

(assert (=> b!2610281 (= e!1646928 (= lt!917230 (rulesProduceEachTokenIndividuallyList!1434 thiss!14197 rules!1726 (list!11310 v!6381))))))

(assert (= (and d!739667 res!1098714) b!2610281))

(assert (=> d!739667 m!2944889))

(assert (=> d!739667 m!2944889))

(declare-fun m!2944983 () Bool)

(assert (=> d!739667 m!2944983))

(declare-fun m!2944985 () Bool)

(assert (=> d!739667 m!2944985))

(assert (=> d!739667 m!2944869))

(assert (=> b!2610281 m!2944889))

(assert (=> b!2610281 m!2944889))

(declare-fun m!2944987 () Bool)

(assert (=> b!2610281 m!2944987))

(assert (=> b!2610143 d!739667))

(declare-fun d!739669 () Bool)

(declare-fun res!1098719 () Bool)

(declare-fun e!1646934 () Bool)

(assert (=> d!739669 (=> (not res!1098719) (not e!1646934))))

(declare-fun isEmpty!17227 (List!30234) Bool)

(assert (=> d!739669 (= res!1098719 (not (isEmpty!17227 (originalCharacters!5318 separatorToken!156))))))

(assert (=> d!739669 (= (inv!40776 separatorToken!156) e!1646934)))

(declare-fun b!2610289 () Bool)

(declare-fun res!1098720 () Bool)

(assert (=> b!2610289 (=> (not res!1098720) (not e!1646934))))

(declare-fun list!11312 (BalanceConc!18306) List!30234)

(declare-fun dynLambda!12751 (Int TokenValue!4774) BalanceConc!18306)

(assert (=> b!2610289 (= res!1098720 (= (originalCharacters!5318 separatorToken!156) (list!11312 (dynLambda!12751 (toChars!6313 (transformation!4552 (rule!6922 separatorToken!156))) (value!147338 separatorToken!156)))))))

(declare-fun b!2610290 () Bool)

(declare-fun size!23342 (List!30234) Int)

(assert (=> b!2610290 (= e!1646934 (= (size!23336 separatorToken!156) (size!23342 (originalCharacters!5318 separatorToken!156))))))

(assert (= (and d!739669 res!1098719) b!2610289))

(assert (= (and b!2610289 res!1098720) b!2610290))

(declare-fun b_lambda!78313 () Bool)

(assert (=> (not b_lambda!78313) (not b!2610289)))

(declare-fun t!214033 () Bool)

(declare-fun tb!142103 () Bool)

(assert (=> (and b!2610153 (= (toChars!6313 (transformation!4552 (rule!6922 separatorToken!156))) (toChars!6313 (transformation!4552 (rule!6922 separatorToken!156)))) t!214033) tb!142103))

(declare-fun b!2610295 () Bool)

(declare-fun e!1646937 () Bool)

(declare-fun tp!829293 () Bool)

(declare-fun inv!40784 (Conc!9346) Bool)

(assert (=> b!2610295 (= e!1646937 (and (inv!40784 (c!419610 (dynLambda!12751 (toChars!6313 (transformation!4552 (rule!6922 separatorToken!156))) (value!147338 separatorToken!156)))) tp!829293))))

(declare-fun result!176766 () Bool)

(declare-fun inv!40785 (BalanceConc!18306) Bool)

(assert (=> tb!142103 (= result!176766 (and (inv!40785 (dynLambda!12751 (toChars!6313 (transformation!4552 (rule!6922 separatorToken!156))) (value!147338 separatorToken!156))) e!1646937))))

(assert (= tb!142103 b!2610295))

(declare-fun m!2944989 () Bool)

(assert (=> b!2610295 m!2944989))

(declare-fun m!2944991 () Bool)

(assert (=> tb!142103 m!2944991))

(assert (=> b!2610289 t!214033))

(declare-fun b_and!190923 () Bool)

(assert (= b_and!190909 (and (=> t!214033 result!176766) b_and!190923)))

(declare-fun t!214035 () Bool)

(declare-fun tb!142105 () Bool)

(assert (=> (and b!2610158 (= (toChars!6313 (transformation!4552 (h!35555 rules!1726))) (toChars!6313 (transformation!4552 (rule!6922 separatorToken!156)))) t!214035) tb!142105))

(declare-fun result!176770 () Bool)

(assert (= result!176770 result!176766))

(assert (=> b!2610289 t!214035))

(declare-fun b_and!190925 () Bool)

(assert (= b_and!190913 (and (=> t!214035 result!176770) b_and!190925)))

(declare-fun m!2944993 () Bool)

(assert (=> d!739669 m!2944993))

(declare-fun m!2944995 () Bool)

(assert (=> b!2610289 m!2944995))

(assert (=> b!2610289 m!2944995))

(declare-fun m!2944997 () Bool)

(assert (=> b!2610289 m!2944997))

(declare-fun m!2944999 () Bool)

(assert (=> b!2610290 m!2944999))

(assert (=> start!253708 d!739669))

(declare-fun d!739671 () Bool)

(declare-fun isBalanced!2846 (Conc!9347) Bool)

(assert (=> d!739671 (= (inv!40777 v!6381) (isBalanced!2846 (c!419611 v!6381)))))

(declare-fun bs!473867 () Bool)

(assert (= bs!473867 d!739671))

(declare-fun m!2945001 () Bool)

(assert (=> bs!473867 m!2945001))

(assert (=> start!253708 d!739671))

(declare-fun d!739673 () Bool)

(declare-fun lt!917233 () Bool)

(assert (=> d!739673 (= lt!917233 (forall!6245 (list!11310 v!6381) lambda!97635))))

(declare-fun forall!6248 (Conc!9347 Int) Bool)

(assert (=> d!739673 (= lt!917233 (forall!6248 (c!419611 v!6381) lambda!97635))))

(assert (=> d!739673 (= (forall!6244 v!6381 lambda!97635) lt!917233)))

(declare-fun bs!473868 () Bool)

(assert (= bs!473868 d!739673))

(assert (=> bs!473868 m!2944889))

(assert (=> bs!473868 m!2944889))

(declare-fun m!2945003 () Bool)

(assert (=> bs!473868 m!2945003))

(declare-fun m!2945005 () Bool)

(assert (=> bs!473868 m!2945005))

(assert (=> b!2610152 d!739673))

(declare-fun d!739675 () Bool)

(assert (=> d!739675 (forall!6245 (dropList!855 v!6381 from!862) lambda!97635)))

(declare-fun lt!917236 () Unit!44122)

(declare-fun choose!15490 (List!30236 List!30236 Int) Unit!44122)

(assert (=> d!739675 (= lt!917236 (choose!15490 lt!917199 (dropList!855 v!6381 from!862) lambda!97635))))

(assert (=> d!739675 (forall!6245 lt!917199 lambda!97635)))

(assert (=> d!739675 (= (lemmaContentSubsetPreservesForall!221 lt!917199 (dropList!855 v!6381 from!862) lambda!97635) lt!917236)))

(declare-fun bs!473869 () Bool)

(assert (= bs!473869 d!739675))

(assert (=> bs!473869 m!2944885))

(declare-fun m!2945007 () Bool)

(assert (=> bs!473869 m!2945007))

(assert (=> bs!473869 m!2944885))

(declare-fun m!2945009 () Bool)

(assert (=> bs!473869 m!2945009))

(declare-fun m!2945011 () Bool)

(assert (=> bs!473869 m!2945011))

(assert (=> b!2610156 d!739675))

(declare-fun d!739677 () Bool)

(declare-fun list!11313 (Conc!9347) List!30236)

(assert (=> d!739677 (= (dropList!855 v!6381 from!862) (drop!1548 (list!11313 (c!419611 v!6381)) from!862))))

(declare-fun bs!473870 () Bool)

(assert (= bs!473870 d!739677))

(declare-fun m!2945013 () Bool)

(assert (=> bs!473870 m!2945013))

(assert (=> bs!473870 m!2945013))

(declare-fun m!2945015 () Bool)

(assert (=> bs!473870 m!2945015))

(assert (=> b!2610156 d!739677))

(declare-fun d!739679 () Bool)

(assert (=> d!739679 (= (list!11310 v!6381) (list!11313 (c!419611 v!6381)))))

(declare-fun bs!473871 () Bool)

(assert (= bs!473871 d!739679))

(assert (=> bs!473871 m!2945013))

(assert (=> b!2610156 d!739679))

(declare-fun d!739681 () Bool)

(declare-fun c!419622 () Bool)

(assert (=> d!739681 (= c!419622 (is-IntegerValue!14322 (value!147338 separatorToken!156)))))

(declare-fun e!1646944 () Bool)

(assert (=> d!739681 (= (inv!21 (value!147338 separatorToken!156)) e!1646944)))

(declare-fun b!2610306 () Bool)

(declare-fun e!1646945 () Bool)

(declare-fun inv!17 (TokenValue!4774) Bool)

(assert (=> b!2610306 (= e!1646945 (inv!17 (value!147338 separatorToken!156)))))

(declare-fun b!2610307 () Bool)

(declare-fun inv!16 (TokenValue!4774) Bool)

(assert (=> b!2610307 (= e!1646944 (inv!16 (value!147338 separatorToken!156)))))

(declare-fun b!2610308 () Bool)

(declare-fun e!1646946 () Bool)

(declare-fun inv!15 (TokenValue!4774) Bool)

(assert (=> b!2610308 (= e!1646946 (inv!15 (value!147338 separatorToken!156)))))

(declare-fun b!2610309 () Bool)

(assert (=> b!2610309 (= e!1646944 e!1646945)))

(declare-fun c!419623 () Bool)

(assert (=> b!2610309 (= c!419623 (is-IntegerValue!14323 (value!147338 separatorToken!156)))))

(declare-fun b!2610310 () Bool)

(declare-fun res!1098723 () Bool)

(assert (=> b!2610310 (=> res!1098723 e!1646946)))

(assert (=> b!2610310 (= res!1098723 (not (is-IntegerValue!14324 (value!147338 separatorToken!156))))))

(assert (=> b!2610310 (= e!1646945 e!1646946)))

(assert (= (and d!739681 c!419622) b!2610307))

(assert (= (and d!739681 (not c!419622)) b!2610309))

(assert (= (and b!2610309 c!419623) b!2610306))

(assert (= (and b!2610309 (not c!419623)) b!2610310))

(assert (= (and b!2610310 (not res!1098723)) b!2610308))

(declare-fun m!2945017 () Bool)

(assert (=> b!2610306 m!2945017))

(declare-fun m!2945019 () Bool)

(assert (=> b!2610307 m!2945019))

(declare-fun m!2945021 () Bool)

(assert (=> b!2610308 m!2945021))

(assert (=> b!2610145 d!739681))

(declare-fun d!739683 () Bool)

(declare-fun lt!917250 () Bool)

(declare-fun e!1646969 () Bool)

(assert (=> d!739683 (= lt!917250 e!1646969)))

(declare-fun res!1098747 () Bool)

(assert (=> d!739683 (=> (not res!1098747) (not e!1646969))))

(declare-datatypes ((tuple2!29758 0))(
  ( (tuple2!29759 (_1!17421 BalanceConc!18308) (_2!17421 BalanceConc!18306)) )
))
(declare-fun lex!1875 (LexerInterface!4149 List!30235 BalanceConc!18306) tuple2!29758)

(declare-fun print!1597 (LexerInterface!4149 BalanceConc!18308) BalanceConc!18306)

(declare-fun singletonSeq!2014 (Token!8574) BalanceConc!18308)

(assert (=> d!739683 (= res!1098747 (= (list!11310 (_1!17421 (lex!1875 thiss!14197 rules!1726 (print!1597 thiss!14197 (singletonSeq!2014 separatorToken!156))))) (list!11310 (singletonSeq!2014 separatorToken!156))))))

(declare-fun e!1646968 () Bool)

(assert (=> d!739683 (= lt!917250 e!1646968)))

(declare-fun res!1098748 () Bool)

(assert (=> d!739683 (=> (not res!1098748) (not e!1646968))))

(declare-fun lt!917251 () tuple2!29758)

(assert (=> d!739683 (= res!1098748 (= (size!23337 (_1!17421 lt!917251)) 1))))

(assert (=> d!739683 (= lt!917251 (lex!1875 thiss!14197 rules!1726 (print!1597 thiss!14197 (singletonSeq!2014 separatorToken!156))))))

(assert (=> d!739683 (not (isEmpty!17225 rules!1726))))

(assert (=> d!739683 (= (rulesProduceIndividualToken!1861 thiss!14197 rules!1726 separatorToken!156) lt!917250)))

(declare-fun b!2610340 () Bool)

(declare-fun res!1098749 () Bool)

(assert (=> b!2610340 (=> (not res!1098749) (not e!1646968))))

(assert (=> b!2610340 (= res!1098749 (= (apply!7064 (_1!17421 lt!917251) 0) separatorToken!156))))

(declare-fun b!2610341 () Bool)

(declare-fun isEmpty!17228 (BalanceConc!18306) Bool)

(assert (=> b!2610341 (= e!1646968 (isEmpty!17228 (_2!17421 lt!917251)))))

(declare-fun b!2610342 () Bool)

(assert (=> b!2610342 (= e!1646969 (isEmpty!17228 (_2!17421 (lex!1875 thiss!14197 rules!1726 (print!1597 thiss!14197 (singletonSeq!2014 separatorToken!156))))))))

(assert (= (and d!739683 res!1098748) b!2610340))

(assert (= (and b!2610340 res!1098749) b!2610341))

(assert (= (and d!739683 res!1098747) b!2610342))

(declare-fun m!2945053 () Bool)

(assert (=> d!739683 m!2945053))

(declare-fun m!2945055 () Bool)

(assert (=> d!739683 m!2945055))

(declare-fun m!2945057 () Bool)

(assert (=> d!739683 m!2945057))

(assert (=> d!739683 m!2944869))

(assert (=> d!739683 m!2945055))

(declare-fun m!2945063 () Bool)

(assert (=> d!739683 m!2945063))

(assert (=> d!739683 m!2945063))

(declare-fun m!2945065 () Bool)

(assert (=> d!739683 m!2945065))

(assert (=> d!739683 m!2945055))

(declare-fun m!2945067 () Bool)

(assert (=> d!739683 m!2945067))

(declare-fun m!2945069 () Bool)

(assert (=> b!2610340 m!2945069))

(declare-fun m!2945071 () Bool)

(assert (=> b!2610341 m!2945071))

(assert (=> b!2610342 m!2945055))

(assert (=> b!2610342 m!2945055))

(assert (=> b!2610342 m!2945063))

(assert (=> b!2610342 m!2945063))

(assert (=> b!2610342 m!2945065))

(declare-fun m!2945073 () Bool)

(assert (=> b!2610342 m!2945073))

(assert (=> b!2610144 d!739683))

(declare-fun d!739697 () Bool)

(assert (=> d!739697 (= (tail!4185 lt!917195) (t!214019 lt!917195))))

(assert (=> b!2610154 d!739697))

(declare-fun b!2610377 () Bool)

(declare-fun e!1646991 () Int)

(assert (=> b!2610377 (= e!1646991 0)))

(declare-fun b!2610378 () Bool)

(declare-fun e!1646992 () Bool)

(declare-fun lt!917254 () List!30236)

(declare-fun e!1646993 () Int)

(assert (=> b!2610378 (= e!1646992 (= (size!23340 lt!917254) e!1646993))))

(declare-fun c!419637 () Bool)

(assert (=> b!2610378 (= c!419637 (<= from!862 0))))

(declare-fun b!2610379 () Bool)

(declare-fun e!1646989 () List!30236)

(assert (=> b!2610379 (= e!1646989 (drop!1548 (t!214019 lt!917199) (- from!862 1)))))

(declare-fun d!739699 () Bool)

(assert (=> d!739699 e!1646992))

(declare-fun res!1098759 () Bool)

(assert (=> d!739699 (=> (not res!1098759) (not e!1646992))))

(assert (=> d!739699 (= res!1098759 (set.subset (content!4274 lt!917254) (content!4274 lt!917199)))))

(declare-fun e!1646990 () List!30236)

(assert (=> d!739699 (= lt!917254 e!1646990)))

(declare-fun c!419639 () Bool)

(assert (=> d!739699 (= c!419639 (is-Nil!30136 lt!917199))))

(assert (=> d!739699 (= (drop!1548 lt!917199 from!862) lt!917254)))

(declare-fun b!2610380 () Bool)

(declare-fun call!167533 () Int)

(assert (=> b!2610380 (= e!1646991 (- call!167533 from!862))))

(declare-fun b!2610381 () Bool)

(assert (=> b!2610381 (= e!1646993 e!1646991)))

(declare-fun c!419640 () Bool)

(assert (=> b!2610381 (= c!419640 (>= from!862 call!167533))))

(declare-fun bm!167528 () Bool)

(assert (=> bm!167528 (= call!167533 (size!23340 lt!917199))))

(declare-fun b!2610382 () Bool)

(assert (=> b!2610382 (= e!1646993 call!167533)))

(declare-fun b!2610383 () Bool)

(assert (=> b!2610383 (= e!1646989 lt!917199)))

(declare-fun b!2610384 () Bool)

(assert (=> b!2610384 (= e!1646990 Nil!30136)))

(declare-fun b!2610388 () Bool)

(assert (=> b!2610388 (= e!1646990 e!1646989)))

(declare-fun c!419638 () Bool)

(assert (=> b!2610388 (= c!419638 (<= from!862 0))))

(assert (= (and d!739699 c!419639) b!2610384))

(assert (= (and d!739699 (not c!419639)) b!2610388))

(assert (= (and b!2610388 c!419638) b!2610383))

(assert (= (and b!2610388 (not c!419638)) b!2610379))

(assert (= (and d!739699 res!1098759) b!2610378))

(assert (= (and b!2610378 c!419637) b!2610382))

(assert (= (and b!2610378 (not c!419637)) b!2610381))

(assert (= (and b!2610381 c!419640) b!2610377))

(assert (= (and b!2610381 (not c!419640)) b!2610380))

(assert (= (or b!2610382 b!2610381 b!2610380) bm!167528))

(declare-fun m!2945089 () Bool)

(assert (=> b!2610378 m!2945089))

(declare-fun m!2945091 () Bool)

(assert (=> b!2610379 m!2945091))

(declare-fun m!2945093 () Bool)

(assert (=> d!739699 m!2945093))

(assert (=> d!739699 m!2944973))

(declare-fun m!2945095 () Bool)

(assert (=> bm!167528 m!2945095))

(assert (=> b!2610154 d!739699))

(declare-fun b!2610392 () Bool)

(declare-fun e!1647000 () Int)

(assert (=> b!2610392 (= e!1647000 0)))

(declare-fun b!2610393 () Bool)

(declare-fun e!1647001 () Bool)

(declare-fun lt!917255 () List!30236)

(declare-fun e!1647002 () Int)

(assert (=> b!2610393 (= e!1647001 (= (size!23340 lt!917255) e!1647002))))

(declare-fun c!419643 () Bool)

(assert (=> b!2610393 (= c!419643 (<= (+ 1 from!862) 0))))

(declare-fun b!2610394 () Bool)

(declare-fun e!1646998 () List!30236)

(assert (=> b!2610394 (= e!1646998 (drop!1548 (t!214019 lt!917199) (- (+ 1 from!862) 1)))))

(declare-fun d!739705 () Bool)

(assert (=> d!739705 e!1647001))

(declare-fun res!1098762 () Bool)

(assert (=> d!739705 (=> (not res!1098762) (not e!1647001))))

(assert (=> d!739705 (= res!1098762 (set.subset (content!4274 lt!917255) (content!4274 lt!917199)))))

(declare-fun e!1646999 () List!30236)

(assert (=> d!739705 (= lt!917255 e!1646999)))

(declare-fun c!419645 () Bool)

(assert (=> d!739705 (= c!419645 (is-Nil!30136 lt!917199))))

(assert (=> d!739705 (= (drop!1548 lt!917199 (+ 1 from!862)) lt!917255)))

(declare-fun b!2610395 () Bool)

(declare-fun call!167534 () Int)

(assert (=> b!2610395 (= e!1647000 (- call!167534 (+ 1 from!862)))))

(declare-fun b!2610396 () Bool)

(assert (=> b!2610396 (= e!1647002 e!1647000)))

(declare-fun c!419646 () Bool)

(assert (=> b!2610396 (= c!419646 (>= (+ 1 from!862) call!167534))))

(declare-fun bm!167529 () Bool)

(assert (=> bm!167529 (= call!167534 (size!23340 lt!917199))))

(declare-fun b!2610397 () Bool)

(assert (=> b!2610397 (= e!1647002 call!167534)))

(declare-fun b!2610398 () Bool)

(assert (=> b!2610398 (= e!1646998 lt!917199)))

(declare-fun b!2610399 () Bool)

(assert (=> b!2610399 (= e!1646999 Nil!30136)))

(declare-fun b!2610400 () Bool)

(assert (=> b!2610400 (= e!1646999 e!1646998)))

(declare-fun c!419644 () Bool)

(assert (=> b!2610400 (= c!419644 (<= (+ 1 from!862) 0))))

(assert (= (and d!739705 c!419645) b!2610399))

(assert (= (and d!739705 (not c!419645)) b!2610400))

(assert (= (and b!2610400 c!419644) b!2610398))

(assert (= (and b!2610400 (not c!419644)) b!2610394))

(assert (= (and d!739705 res!1098762) b!2610393))

(assert (= (and b!2610393 c!419643) b!2610397))

(assert (= (and b!2610393 (not c!419643)) b!2610396))

(assert (= (and b!2610396 c!419646) b!2610392))

(assert (= (and b!2610396 (not c!419646)) b!2610395))

(assert (= (or b!2610397 b!2610396 b!2610395) bm!167529))

(declare-fun m!2945097 () Bool)

(assert (=> b!2610393 m!2945097))

(declare-fun m!2945099 () Bool)

(assert (=> b!2610394 m!2945099))

(declare-fun m!2945101 () Bool)

(assert (=> d!739705 m!2945101))

(assert (=> d!739705 m!2944973))

(assert (=> bm!167529 m!2945095))

(assert (=> b!2610154 d!739705))

(declare-fun d!739707 () Bool)

(assert (=> d!739707 (= (head!5947 (drop!1548 lt!917199 from!862)) (apply!7065 lt!917199 from!862))))

(declare-fun lt!917258 () Unit!44122)

(declare-fun choose!15491 (List!30236 Int) Unit!44122)

(assert (=> d!739707 (= lt!917258 (choose!15491 lt!917199 from!862))))

(declare-fun e!1647009 () Bool)

(assert (=> d!739707 e!1647009))

(declare-fun res!1098767 () Bool)

(assert (=> d!739707 (=> (not res!1098767) (not e!1647009))))

(assert (=> d!739707 (= res!1098767 (>= from!862 0))))

(assert (=> d!739707 (= (lemmaDropApply!763 lt!917199 from!862) lt!917258)))

(declare-fun b!2610409 () Bool)

(assert (=> b!2610409 (= e!1647009 (< from!862 (size!23340 lt!917199)))))

(assert (= (and d!739707 res!1098767) b!2610409))

(assert (=> d!739707 m!2944851))

(assert (=> d!739707 m!2944851))

(declare-fun m!2945113 () Bool)

(assert (=> d!739707 m!2945113))

(assert (=> d!739707 m!2944845))

(declare-fun m!2945115 () Bool)

(assert (=> d!739707 m!2945115))

(assert (=> b!2610409 m!2945095))

(assert (=> b!2610154 d!739707))

(declare-fun d!739715 () Bool)

(declare-fun lt!917263 () Token!8574)

(assert (=> d!739715 (= lt!917263 (apply!7065 (list!11310 v!6381) from!862))))

(declare-fun apply!7068 (Conc!9347 Int) Token!8574)

(assert (=> d!739715 (= lt!917263 (apply!7068 (c!419611 v!6381) from!862))))

(declare-fun e!1647022 () Bool)

(assert (=> d!739715 e!1647022))

(declare-fun res!1098772 () Bool)

(assert (=> d!739715 (=> (not res!1098772) (not e!1647022))))

(assert (=> d!739715 (= res!1098772 (<= 0 from!862))))

(assert (=> d!739715 (= (apply!7064 v!6381 from!862) lt!917263)))

(declare-fun b!2610430 () Bool)

(assert (=> b!2610430 (= e!1647022 (< from!862 (size!23337 v!6381)))))

(assert (= (and d!739715 res!1098772) b!2610430))

(assert (=> d!739715 m!2944889))

(assert (=> d!739715 m!2944889))

(declare-fun m!2945117 () Bool)

(assert (=> d!739715 m!2945117))

(declare-fun m!2945119 () Bool)

(assert (=> d!739715 m!2945119))

(assert (=> b!2610430 m!2944867))

(assert (=> b!2610154 d!739715))

(declare-fun d!739717 () Bool)

(assert (=> d!739717 (= (head!5947 lt!917195) (h!35556 lt!917195))))

(assert (=> b!2610154 d!739717))

(declare-fun d!739719 () Bool)

(declare-fun lt!917267 () Bool)

(assert (=> d!739719 (= lt!917267 (contains!5579 (list!11310 v!6381) lt!917194))))

(declare-fun contains!5582 (Conc!9347 Token!8574) Bool)

(assert (=> d!739719 (= lt!917267 (contains!5582 (c!419611 v!6381) lt!917194))))

(assert (=> d!739719 (= (contains!5578 v!6381 lt!917194) lt!917267)))

(declare-fun bs!473874 () Bool)

(assert (= bs!473874 d!739719))

(assert (=> bs!473874 m!2944889))

(assert (=> bs!473874 m!2944889))

(declare-fun m!2945131 () Bool)

(assert (=> bs!473874 m!2945131))

(declare-fun m!2945133 () Bool)

(assert (=> bs!473874 m!2945133))

(assert (=> b!2610154 d!739719))

(declare-fun d!739723 () Bool)

(declare-fun lt!917274 () Token!8574)

(assert (=> d!739723 (contains!5579 lt!917199 lt!917274)))

(declare-fun e!1647040 () Token!8574)

(assert (=> d!739723 (= lt!917274 e!1647040)))

(declare-fun c!419667 () Bool)

(assert (=> d!739723 (= c!419667 (= from!862 0))))

(declare-fun e!1647041 () Bool)

(assert (=> d!739723 e!1647041))

(declare-fun res!1098780 () Bool)

(assert (=> d!739723 (=> (not res!1098780) (not e!1647041))))

(assert (=> d!739723 (= res!1098780 (<= 0 from!862))))

(assert (=> d!739723 (= (apply!7065 lt!917199 from!862) lt!917274)))

(declare-fun b!2610458 () Bool)

(assert (=> b!2610458 (= e!1647041 (< from!862 (size!23340 lt!917199)))))

(declare-fun b!2610459 () Bool)

(assert (=> b!2610459 (= e!1647040 (head!5947 lt!917199))))

(declare-fun b!2610460 () Bool)

(assert (=> b!2610460 (= e!1647040 (apply!7065 (tail!4185 lt!917199) (- from!862 1)))))

(assert (= (and d!739723 res!1098780) b!2610458))

(assert (= (and d!739723 c!419667) b!2610459))

(assert (= (and d!739723 (not c!419667)) b!2610460))

(declare-fun m!2945147 () Bool)

(assert (=> d!739723 m!2945147))

(assert (=> b!2610458 m!2945095))

(declare-fun m!2945149 () Bool)

(assert (=> b!2610459 m!2945149))

(declare-fun m!2945151 () Bool)

(assert (=> b!2610460 m!2945151))

(assert (=> b!2610460 m!2945151))

(declare-fun m!2945153 () Bool)

(assert (=> b!2610460 m!2945153))

(assert (=> b!2610154 d!739723))

(declare-fun d!739731 () Bool)

(assert (=> d!739731 (= (tail!4185 (drop!1548 lt!917199 from!862)) (drop!1548 lt!917199 (+ from!862 1)))))

(declare-fun lt!917280 () Unit!44122)

(declare-fun choose!15492 (List!30236 Int) Unit!44122)

(assert (=> d!739731 (= lt!917280 (choose!15492 lt!917199 from!862))))

(declare-fun e!1647044 () Bool)

(assert (=> d!739731 e!1647044))

(declare-fun res!1098783 () Bool)

(assert (=> d!739731 (=> (not res!1098783) (not e!1647044))))

(assert (=> d!739731 (= res!1098783 (>= from!862 0))))

(assert (=> d!739731 (= (lemmaDropTail!737 lt!917199 from!862) lt!917280)))

(declare-fun b!2610463 () Bool)

(assert (=> b!2610463 (= e!1647044 (< from!862 (size!23340 lt!917199)))))

(assert (= (and d!739731 res!1098783) b!2610463))

(assert (=> d!739731 m!2944851))

(assert (=> d!739731 m!2944851))

(declare-fun m!2945159 () Bool)

(assert (=> d!739731 m!2945159))

(declare-fun m!2945161 () Bool)

(assert (=> d!739731 m!2945161))

(declare-fun m!2945163 () Bool)

(assert (=> d!739731 m!2945163))

(assert (=> b!2610463 m!2945095))

(assert (=> b!2610154 d!739731))

(declare-fun b!2610477 () Bool)

(declare-fun e!1647050 () Bool)

(declare-fun tp_is_empty!13723 () Bool)

(assert (=> b!2610477 (= e!1647050 tp_is_empty!13723)))

(assert (=> b!2610148 (= tp!829255 e!1647050)))

(declare-fun b!2610480 () Bool)

(declare-fun tp!829308 () Bool)

(declare-fun tp!829309 () Bool)

(assert (=> b!2610480 (= e!1647050 (and tp!829308 tp!829309))))

(declare-fun b!2610479 () Bool)

(declare-fun tp!829310 () Bool)

(assert (=> b!2610479 (= e!1647050 tp!829310)))

(declare-fun b!2610478 () Bool)

(declare-fun tp!829307 () Bool)

(declare-fun tp!829311 () Bool)

(assert (=> b!2610478 (= e!1647050 (and tp!829307 tp!829311))))

(assert (= (and b!2610148 (is-ElementMatch!7696 (regex!4552 (h!35555 rules!1726)))) b!2610477))

(assert (= (and b!2610148 (is-Concat!12470 (regex!4552 (h!35555 rules!1726)))) b!2610478))

(assert (= (and b!2610148 (is-Star!7696 (regex!4552 (h!35555 rules!1726)))) b!2610479))

(assert (= (and b!2610148 (is-Union!7696 (regex!4552 (h!35555 rules!1726)))) b!2610480))

(declare-fun e!1647055 () Bool)

(declare-fun tp!829318 () Bool)

(declare-fun tp!829320 () Bool)

(declare-fun b!2610489 () Bool)

(assert (=> b!2610489 (= e!1647055 (and (inv!40775 (left!23173 (c!419611 v!6381))) tp!829318 (inv!40775 (right!23503 (c!419611 v!6381))) tp!829320))))

(declare-fun b!2610491 () Bool)

(declare-fun e!1647056 () Bool)

(declare-fun tp!829319 () Bool)

(assert (=> b!2610491 (= e!1647056 tp!829319)))

(declare-fun b!2610490 () Bool)

(declare-fun inv!40786 (IArray!18699) Bool)

(assert (=> b!2610490 (= e!1647055 (and (inv!40786 (xs!12331 (c!419611 v!6381))) e!1647056))))

(assert (=> b!2610151 (= tp!829258 (and (inv!40775 (c!419611 v!6381)) e!1647055))))

(assert (= (and b!2610151 (is-Node!9347 (c!419611 v!6381))) b!2610489))

(assert (= b!2610490 b!2610491))

(assert (= (and b!2610151 (is-Leaf!14364 (c!419611 v!6381))) b!2610490))

(declare-fun m!2945169 () Bool)

(assert (=> b!2610489 m!2945169))

(declare-fun m!2945171 () Bool)

(assert (=> b!2610489 m!2945171))

(declare-fun m!2945173 () Bool)

(assert (=> b!2610490 m!2945173))

(assert (=> b!2610151 m!2944873))

(declare-fun b!2610498 () Bool)

(declare-fun e!1647061 () Bool)

(assert (=> b!2610498 (= e!1647061 tp_is_empty!13723)))

(assert (=> b!2610161 (= tp!829261 e!1647061)))

(declare-fun b!2610501 () Bool)

(declare-fun tp!829322 () Bool)

(declare-fun tp!829323 () Bool)

(assert (=> b!2610501 (= e!1647061 (and tp!829322 tp!829323))))

(declare-fun b!2610500 () Bool)

(declare-fun tp!829324 () Bool)

(assert (=> b!2610500 (= e!1647061 tp!829324)))

(declare-fun b!2610499 () Bool)

(declare-fun tp!829321 () Bool)

(declare-fun tp!829325 () Bool)

(assert (=> b!2610499 (= e!1647061 (and tp!829321 tp!829325))))

(assert (= (and b!2610161 (is-ElementMatch!7696 (regex!4552 (rule!6922 separatorToken!156)))) b!2610498))

(assert (= (and b!2610161 (is-Concat!12470 (regex!4552 (rule!6922 separatorToken!156)))) b!2610499))

(assert (= (and b!2610161 (is-Star!7696 (regex!4552 (rule!6922 separatorToken!156)))) b!2610500))

(assert (= (and b!2610161 (is-Union!7696 (regex!4552 (rule!6922 separatorToken!156)))) b!2610501))

(declare-fun b!2610504 () Bool)

(declare-fun e!1647064 () Bool)

(assert (=> b!2610504 (= e!1647064 true)))

(declare-fun b!2610503 () Bool)

(declare-fun e!1647063 () Bool)

(assert (=> b!2610503 (= e!1647063 e!1647064)))

(declare-fun b!2610502 () Bool)

(declare-fun e!1647062 () Bool)

(assert (=> b!2610502 (= e!1647062 e!1647063)))

(assert (=> b!2610170 e!1647062))

(assert (= b!2610503 b!2610504))

(assert (= b!2610502 b!2610503))

(assert (= (and b!2610170 (is-Cons!30135 (t!214018 rules!1726))) b!2610502))

(assert (=> b!2610504 (< (dynLambda!12744 order!15981 (toValue!6454 (transformation!4552 (h!35555 (t!214018 rules!1726))))) (dynLambda!12745 order!15983 lambda!97636))))

(assert (=> b!2610504 (< (dynLambda!12746 order!15985 (toChars!6313 (transformation!4552 (h!35555 (t!214018 rules!1726))))) (dynLambda!12745 order!15983 lambda!97636))))

(declare-fun b!2610509 () Bool)

(declare-fun e!1647067 () Bool)

(declare-fun tp!829328 () Bool)

(assert (=> b!2610509 (= e!1647067 (and tp_is_empty!13723 tp!829328))))

(assert (=> b!2610145 (= tp!829263 e!1647067)))

(assert (= (and b!2610145 (is-Cons!30134 (originalCharacters!5318 separatorToken!156))) b!2610509))

(declare-fun b!2610523 () Bool)

(declare-fun b_free!73365 () Bool)

(declare-fun b_next!74069 () Bool)

(assert (=> b!2610523 (= b_free!73365 (not b_next!74069))))

(declare-fun tp!829338 () Bool)

(declare-fun b_and!190931 () Bool)

(assert (=> b!2610523 (= tp!829338 b_and!190931)))

(declare-fun b_free!73367 () Bool)

(declare-fun b_next!74071 () Bool)

(assert (=> b!2610523 (= b_free!73367 (not b_next!74071))))

(declare-fun tb!142111 () Bool)

(declare-fun t!214043 () Bool)

(assert (=> (and b!2610523 (= (toChars!6313 (transformation!4552 (h!35555 (t!214018 rules!1726)))) (toChars!6313 (transformation!4552 (rule!6922 separatorToken!156)))) t!214043) tb!142111))

(declare-fun result!176786 () Bool)

(assert (= result!176786 result!176766))

(assert (=> b!2610289 t!214043))

(declare-fun tp!829340 () Bool)

(declare-fun b_and!190933 () Bool)

(assert (=> b!2610523 (= tp!829340 (and (=> t!214043 result!176786) b_and!190933))))

(declare-fun e!1647079 () Bool)

(assert (=> b!2610523 (= e!1647079 (and tp!829338 tp!829340))))

(declare-fun tp!829337 () Bool)

(declare-fun e!1647081 () Bool)

(declare-fun b!2610522 () Bool)

(assert (=> b!2610522 (= e!1647081 (and tp!829337 (inv!40771 (tag!5042 (h!35555 (t!214018 rules!1726)))) (inv!40774 (transformation!4552 (h!35555 (t!214018 rules!1726)))) e!1647079))))

(declare-fun b!2610521 () Bool)

(declare-fun e!1647078 () Bool)

(declare-fun tp!829339 () Bool)

(assert (=> b!2610521 (= e!1647078 (and e!1647081 tp!829339))))

(assert (=> b!2610155 (= tp!829262 e!1647078)))

(assert (= b!2610522 b!2610523))

(assert (= b!2610521 b!2610522))

(assert (= (and b!2610155 (is-Cons!30135 (t!214018 rules!1726))) b!2610521))

(declare-fun m!2945183 () Bool)

(assert (=> b!2610522 m!2945183))

(declare-fun m!2945185 () Bool)

(assert (=> b!2610522 m!2945185))

(declare-fun b_lambda!78317 () Bool)

(assert (= b_lambda!78311 (or b!2610157 b_lambda!78317)))

(declare-fun bs!473876 () Bool)

(declare-fun d!739739 () Bool)

(assert (= bs!473876 (and d!739739 b!2610157)))

(assert (=> bs!473876 (= (dynLambda!12750 lambda!97636 (h!35556 lt!917199)) (rulesProduceIndividualToken!1861 thiss!14197 rules!1726 (h!35556 lt!917199)))))

(declare-fun m!2945187 () Bool)

(assert (=> bs!473876 m!2945187))

(assert (=> b!2610258 d!739739))

(declare-fun b_lambda!78319 () Bool)

(assert (= b_lambda!78313 (or (and b!2610153 b_free!73351) (and b!2610158 b_free!73355 (= (toChars!6313 (transformation!4552 (h!35555 rules!1726))) (toChars!6313 (transformation!4552 (rule!6922 separatorToken!156))))) (and b!2610523 b_free!73367 (= (toChars!6313 (transformation!4552 (h!35555 (t!214018 rules!1726)))) (toChars!6313 (transformation!4552 (rule!6922 separatorToken!156))))) b_lambda!78319)))

(push 1)

(assert (not d!739659))

(assert (not b!2610266))

(assert (not b!2610430))

(assert (not tb!142103))

(assert (not d!739647))

(assert (not b_next!74055))

(assert (not b!2610340))

(assert (not d!739657))

(assert (not d!739679))

(assert (not d!739675))

(assert (not b!2610394))

(assert (not d!739667))

(assert (not b_next!74053))

(assert (not bs!473876))

(assert (not b!2610282))

(assert (not d!739715))

(assert (not d!739707))

(assert b_and!190923)

(assert (not b!2610460))

(assert (not b!2610378))

(assert (not b!2610259))

(assert (not b!2610500))

(assert (not b!2610290))

(assert (not b_next!74069))

(assert (not d!739669))

(assert (not bm!167529))

(assert (not b!2610393))

(assert b_and!190911)

(assert (not b!2610379))

(assert (not b!2610275))

(assert (not b_lambda!78319))

(assert (not b_lambda!78317))

(assert (not b!2610521))

(assert (not b!2610308))

(assert (not b!2610247))

(assert (not d!739677))

(assert tp_is_empty!13723)

(assert (not b!2610489))

(assert (not b!2610268))

(assert (not b!2610252))

(assert (not b!2610409))

(assert (not b!2610341))

(assert (not b!2610281))

(assert (not b!2610479))

(assert (not d!739671))

(assert b_and!190925)

(assert (not bm!167528))

(assert (not b!2610502))

(assert (not b_next!74057))

(assert (not b_next!74071))

(assert (not b!2610289))

(assert (not d!739719))

(assert (not d!739683))

(assert (not b!2610295))

(assert (not b!2610501))

(assert b_and!190933)

(assert (not b!2610278))

(assert (not b!2610478))

(assert (not b!2610459))

(assert b_and!190907)

(assert (not d!739673))

(assert (not b!2610499))

(assert (not b!2610491))

(assert (not d!739705))

(assert (not b!2610253))

(assert (not d!739723))

(assert (not b!2610342))

(assert (not b!2610480))

(assert (not b_next!74059))

(assert (not b!2610306))

(assert (not b!2610509))

(assert (not b!2610463))

(assert (not d!739699))

(assert b_and!190931)

(assert (not b!2610307))

(assert (not d!739661))

(assert (not b!2610458))

(assert (not b!2610490))

(assert (not b!2610269))

(assert (not b!2610522))

(assert (not b!2610151))

(assert (not d!739665))

(assert (not d!739731))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!74053))

(assert b_and!190923)

(assert (not b_next!74069))

(assert b_and!190911)

(assert b_and!190925)

(assert (not b_next!74057))

(assert (not b_next!74071))

(assert b_and!190933)

(assert b_and!190907)

(assert (not b_next!74059))

(assert b_and!190931)

(assert (not b_next!74055))

(check-sat)

(pop 1)

