; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373544 () Bool)

(assert start!373544)

(declare-fun b!3969757 () Bool)

(declare-fun b_free!109897 () Bool)

(declare-fun b_next!110601 () Bool)

(assert (=> b!3969757 (= b_free!109897 (not b_next!110601))))

(declare-fun tp!1210174 () Bool)

(declare-fun b_and!305127 () Bool)

(assert (=> b!3969757 (= tp!1210174 b_and!305127)))

(declare-fun b_free!109899 () Bool)

(declare-fun b_next!110603 () Bool)

(assert (=> b!3969757 (= b_free!109899 (not b_next!110603))))

(declare-fun tp!1210175 () Bool)

(declare-fun b_and!305129 () Bool)

(assert (=> b!3969757 (= tp!1210175 b_and!305129)))

(declare-fun b!3969752 () Bool)

(declare-fun b_free!109901 () Bool)

(declare-fun b_next!110605 () Bool)

(assert (=> b!3969752 (= b_free!109901 (not b_next!110605))))

(declare-fun tp!1210173 () Bool)

(declare-fun b_and!305131 () Bool)

(assert (=> b!3969752 (= tp!1210173 b_and!305131)))

(declare-fun b_free!109903 () Bool)

(declare-fun b_next!110607 () Bool)

(assert (=> b!3969752 (= b_free!109903 (not b_next!110607))))

(declare-fun tp!1210177 () Bool)

(declare-fun b_and!305133 () Bool)

(assert (=> b!3969752 (= tp!1210177 b_and!305133)))

(declare-fun b!3969740 () Bool)

(declare-fun res!1606822 () Bool)

(declare-fun e!2458879 () Bool)

(assert (=> b!3969740 (=> (not res!1606822) (not e!2458879))))

(declare-datatypes ((C!23304 0))(
  ( (C!23305 (val!13746 Int)) )
))
(declare-datatypes ((List!42468 0))(
  ( (Nil!42344) (Cons!42344 (h!47764 C!23304) (t!330823 List!42468)) )
))
(declare-fun suffix!1299 () List!42468)

(declare-fun newSuffix!27 () List!42468)

(declare-fun size!31688 (List!42468) Int)

(assert (=> b!3969740 (= res!1606822 (>= (size!31688 suffix!1299) (size!31688 newSuffix!27)))))

(declare-fun b!3969741 () Bool)

(declare-fun e!2458866 () Bool)

(declare-fun tp_is_empty!20089 () Bool)

(declare-fun tp!1210183 () Bool)

(assert (=> b!3969741 (= e!2458866 (and tp_is_empty!20089 tp!1210183))))

(declare-fun b!3969742 () Bool)

(declare-fun e!2458880 () Bool)

(declare-fun tp!1210172 () Bool)

(assert (=> b!3969742 (= e!2458880 (and tp_is_empty!20089 tp!1210172))))

(declare-fun b!3969743 () Bool)

(declare-fun res!1606824 () Bool)

(assert (=> b!3969743 (=> (not res!1606824) (not e!2458879))))

(declare-datatypes ((LexerInterface!6243 0))(
  ( (LexerInterfaceExt!6240 (__x!25985 Int)) (Lexer!6241) )
))
(declare-fun thiss!21717 () LexerInterface!6243)

(declare-datatypes ((IArray!25735 0))(
  ( (IArray!25736 (innerList!12925 List!42468)) )
))
(declare-datatypes ((Conc!12865 0))(
  ( (Node!12865 (left!32082 Conc!12865) (right!32412 Conc!12865) (csize!25960 Int) (cheight!13076 Int)) (Leaf!19899 (xs!16171 IArray!25735) (csize!25961 Int)) (Empty!12865) )
))
(declare-datatypes ((BalanceConc!25324 0))(
  ( (BalanceConc!25325 (c!688656 Conc!12865)) )
))
(declare-datatypes ((List!42469 0))(
  ( (Nil!42345) (Cons!42345 (h!47765 (_ BitVec 16)) (t!330824 List!42469)) )
))
(declare-datatypes ((TokenValue!6884 0))(
  ( (FloatLiteralValue!13768 (text!48633 List!42469)) (TokenValueExt!6883 (__x!25986 Int)) (Broken!34420 (value!210247 List!42469)) (Object!7007) (End!6884) (Def!6884) (Underscore!6884) (Match!6884) (Else!6884) (Error!6884) (Case!6884) (If!6884) (Extends!6884) (Abstract!6884) (Class!6884) (Val!6884) (DelimiterValue!13768 (del!6944 List!42469)) (KeywordValue!6890 (value!210248 List!42469)) (CommentValue!13768 (value!210249 List!42469)) (WhitespaceValue!13768 (value!210250 List!42469)) (IndentationValue!6884 (value!210251 List!42469)) (String!48137) (Int32!6884) (Broken!34421 (value!210252 List!42469)) (Boolean!6885) (Unit!60995) (OperatorValue!6887 (op!6944 List!42469)) (IdentifierValue!13768 (value!210253 List!42469)) (IdentifierValue!13769 (value!210254 List!42469)) (WhitespaceValue!13769 (value!210255 List!42469)) (True!13768) (False!13768) (Broken!34422 (value!210256 List!42469)) (Broken!34423 (value!210257 List!42469)) (True!13769) (RightBrace!6884) (RightBracket!6884) (Colon!6884) (Null!6884) (Comma!6884) (LeftBracket!6884) (False!13769) (LeftBrace!6884) (ImaginaryLiteralValue!6884 (text!48634 List!42469)) (StringLiteralValue!20652 (value!210258 List!42469)) (EOFValue!6884 (value!210259 List!42469)) (IdentValue!6884 (value!210260 List!42469)) (DelimiterValue!13769 (value!210261 List!42469)) (DedentValue!6884 (value!210262 List!42469)) (NewLineValue!6884 (value!210263 List!42469)) (IntegerValue!20652 (value!210264 (_ BitVec 32)) (text!48635 List!42469)) (IntegerValue!20653 (value!210265 Int) (text!48636 List!42469)) (Times!6884) (Or!6884) (Equal!6884) (Minus!6884) (Broken!34424 (value!210266 List!42469)) (And!6884) (Div!6884) (LessEqual!6884) (Mod!6884) (Concat!18443) (Not!6884) (Plus!6884) (SpaceValue!6884 (value!210267 List!42469)) (IntegerValue!20654 (value!210268 Int) (text!48637 List!42469)) (StringLiteralValue!20653 (text!48638 List!42469)) (FloatLiteralValue!13769 (text!48639 List!42469)) (BytesLiteralValue!6884 (value!210269 List!42469)) (CommentValue!13769 (value!210270 List!42469)) (StringLiteralValue!20654 (value!210271 List!42469)) (ErrorTokenValue!6884 (msg!6945 List!42469)) )
))
(declare-datatypes ((Regex!11559 0))(
  ( (ElementMatch!11559 (c!688657 C!23304)) (Concat!18444 (regOne!23630 Regex!11559) (regTwo!23630 Regex!11559)) (EmptyExpr!11559) (Star!11559 (reg!11888 Regex!11559)) (EmptyLang!11559) (Union!11559 (regOne!23631 Regex!11559) (regTwo!23631 Regex!11559)) )
))
(declare-datatypes ((String!48138 0))(
  ( (String!48139 (value!210272 String)) )
))
(declare-datatypes ((TokenValueInjection!13196 0))(
  ( (TokenValueInjection!13197 (toValue!9142 Int) (toChars!9001 Int)) )
))
(declare-datatypes ((Rule!13108 0))(
  ( (Rule!13109 (regex!6654 Regex!11559) (tag!7514 String!48138) (isSeparator!6654 Bool) (transformation!6654 TokenValueInjection!13196)) )
))
(declare-datatypes ((List!42470 0))(
  ( (Nil!42346) (Cons!42346 (h!47766 Rule!13108) (t!330825 List!42470)) )
))
(declare-fun rules!2999 () List!42470)

(declare-fun rulesInvariant!5586 (LexerInterface!6243 List!42470) Bool)

(assert (=> b!3969743 (= res!1606824 (rulesInvariant!5586 thiss!21717 rules!2999))))

(declare-fun b!3969744 () Bool)

(declare-fun e!2458867 () Bool)

(assert (=> b!3969744 (= e!2458867 (not true))))

(declare-datatypes ((Unit!60996 0))(
  ( (Unit!60997) )
))
(declare-fun lt!1390307 () Unit!60996)

(declare-datatypes ((Token!12446 0))(
  ( (Token!12447 (value!210273 TokenValue!6884) (rule!9642 Rule!13108) (size!31689 Int) (originalCharacters!7254 List!42468)) )
))
(declare-fun token!484 () Token!12446)

(declare-fun lemmaInv!869 (TokenValueInjection!13196) Unit!60996)

(assert (=> b!3969744 (= lt!1390307 (lemmaInv!869 (transformation!6654 (rule!9642 token!484))))))

(declare-fun ruleValid!2586 (LexerInterface!6243 Rule!13108) Bool)

(assert (=> b!3969744 (ruleValid!2586 thiss!21717 (rule!9642 token!484))))

(declare-fun lt!1390306 () Unit!60996)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1660 (LexerInterface!6243 Rule!13108 List!42470) Unit!60996)

(assert (=> b!3969744 (= lt!1390306 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1660 thiss!21717 (rule!9642 token!484) rules!2999))))

(declare-fun b!3969745 () Bool)

(declare-fun res!1606827 () Bool)

(assert (=> b!3969745 (=> (not res!1606827) (not e!2458867))))

(declare-fun prefix!494 () List!42468)

(declare-fun lt!1390305 () List!42468)

(declare-fun newSuffixResult!27 () List!42468)

(declare-fun ++!11056 (List!42468 List!42468) List!42468)

(assert (=> b!3969745 (= res!1606827 (= (++!11056 lt!1390305 newSuffixResult!27) (++!11056 prefix!494 newSuffix!27)))))

(declare-fun b!3969746 () Bool)

(declare-fun res!1606826 () Bool)

(assert (=> b!3969746 (=> (not res!1606826) (not e!2458867))))

(declare-fun suffixResult!105 () List!42468)

(declare-datatypes ((tuple2!41620 0))(
  ( (tuple2!41621 (_1!23944 Token!12446) (_2!23944 List!42468)) )
))
(declare-datatypes ((Option!9068 0))(
  ( (None!9067) (Some!9067 (v!39415 tuple2!41620)) )
))
(declare-fun maxPrefix!3541 (LexerInterface!6243 List!42470 List!42468) Option!9068)

(assert (=> b!3969746 (= res!1606826 (= (maxPrefix!3541 thiss!21717 rules!2999 (++!11056 prefix!494 suffix!1299)) (Some!9067 (tuple2!41621 token!484 suffixResult!105))))))

(declare-fun b!3969747 () Bool)

(declare-fun e!2458871 () Bool)

(declare-fun tp!1210181 () Bool)

(assert (=> b!3969747 (= e!2458871 (and tp_is_empty!20089 tp!1210181))))

(declare-fun b!3969748 () Bool)

(declare-fun res!1606821 () Bool)

(assert (=> b!3969748 (=> (not res!1606821) (not e!2458879))))

(declare-fun isEmpty!25338 (List!42470) Bool)

(assert (=> b!3969748 (= res!1606821 (not (isEmpty!25338 rules!2999)))))

(declare-fun b!3969749 () Bool)

(declare-fun e!2458876 () Bool)

(declare-fun e!2458872 () Bool)

(declare-fun tp!1210184 () Bool)

(assert (=> b!3969749 (= e!2458876 (and e!2458872 tp!1210184))))

(declare-fun b!3969750 () Bool)

(declare-fun e!2458870 () Bool)

(declare-fun tp!1210178 () Bool)

(assert (=> b!3969750 (= e!2458870 (and tp_is_empty!20089 tp!1210178))))

(declare-fun res!1606825 () Bool)

(assert (=> start!373544 (=> (not res!1606825) (not e!2458879))))

(get-info :version)

(assert (=> start!373544 (= res!1606825 ((_ is Lexer!6241) thiss!21717))))

(assert (=> start!373544 e!2458879))

(assert (=> start!373544 e!2458866))

(declare-fun e!2458877 () Bool)

(declare-fun inv!56588 (Token!12446) Bool)

(assert (=> start!373544 (and (inv!56588 token!484) e!2458877)))

(declare-fun e!2458875 () Bool)

(assert (=> start!373544 e!2458875))

(assert (=> start!373544 e!2458870))

(assert (=> start!373544 e!2458871))

(assert (=> start!373544 true))

(assert (=> start!373544 e!2458876))

(assert (=> start!373544 e!2458880))

(declare-fun b!3969751 () Bool)

(declare-fun tp!1210182 () Bool)

(assert (=> b!3969751 (= e!2458875 (and tp_is_empty!20089 tp!1210182))))

(declare-fun e!2458874 () Bool)

(assert (=> b!3969752 (= e!2458874 (and tp!1210173 tp!1210177))))

(declare-fun b!3969753 () Bool)

(declare-fun res!1606828 () Bool)

(assert (=> b!3969753 (=> (not res!1606828) (not e!2458879))))

(declare-fun isPrefix!3741 (List!42468 List!42468) Bool)

(assert (=> b!3969753 (= res!1606828 (isPrefix!3741 newSuffix!27 suffix!1299))))

(declare-fun b!3969754 () Bool)

(declare-fun tp!1210176 () Bool)

(declare-fun inv!56585 (String!48138) Bool)

(declare-fun inv!56589 (TokenValueInjection!13196) Bool)

(assert (=> b!3969754 (= e!2458872 (and tp!1210176 (inv!56585 (tag!7514 (h!47766 rules!2999))) (inv!56589 (transformation!6654 (h!47766 rules!2999))) e!2458874))))

(declare-fun b!3969755 () Bool)

(assert (=> b!3969755 (= e!2458879 e!2458867)))

(declare-fun res!1606823 () Bool)

(assert (=> b!3969755 (=> (not res!1606823) (not e!2458867))))

(assert (=> b!3969755 (= res!1606823 (>= (size!31688 prefix!494) (size!31688 lt!1390305)))))

(declare-fun list!15712 (BalanceConc!25324) List!42468)

(declare-fun charsOf!4470 (Token!12446) BalanceConc!25324)

(assert (=> b!3969755 (= lt!1390305 (list!15712 (charsOf!4470 token!484)))))

(declare-fun tp!1210179 () Bool)

(declare-fun b!3969756 () Bool)

(declare-fun e!2458873 () Bool)

(declare-fun inv!21 (TokenValue!6884) Bool)

(assert (=> b!3969756 (= e!2458877 (and (inv!21 (value!210273 token!484)) e!2458873 tp!1210179))))

(declare-fun e!2458868 () Bool)

(assert (=> b!3969757 (= e!2458868 (and tp!1210174 tp!1210175))))

(declare-fun tp!1210180 () Bool)

(declare-fun b!3969758 () Bool)

(assert (=> b!3969758 (= e!2458873 (and tp!1210180 (inv!56585 (tag!7514 (rule!9642 token!484))) (inv!56589 (transformation!6654 (rule!9642 token!484))) e!2458868))))

(assert (= (and start!373544 res!1606825) b!3969748))

(assert (= (and b!3969748 res!1606821) b!3969743))

(assert (= (and b!3969743 res!1606824) b!3969740))

(assert (= (and b!3969740 res!1606822) b!3969753))

(assert (= (and b!3969753 res!1606828) b!3969755))

(assert (= (and b!3969755 res!1606823) b!3969745))

(assert (= (and b!3969745 res!1606827) b!3969746))

(assert (= (and b!3969746 res!1606826) b!3969744))

(assert (= (and start!373544 ((_ is Cons!42344) prefix!494)) b!3969741))

(assert (= b!3969758 b!3969757))

(assert (= b!3969756 b!3969758))

(assert (= start!373544 b!3969756))

(assert (= (and start!373544 ((_ is Cons!42344) suffixResult!105)) b!3969751))

(assert (= (and start!373544 ((_ is Cons!42344) suffix!1299)) b!3969750))

(assert (= (and start!373544 ((_ is Cons!42344) newSuffix!27)) b!3969747))

(assert (= b!3969754 b!3969752))

(assert (= b!3969749 b!3969754))

(assert (= (and start!373544 ((_ is Cons!42346) rules!2999)) b!3969749))

(assert (= (and start!373544 ((_ is Cons!42344) newSuffixResult!27)) b!3969742))

(declare-fun m!4540001 () Bool)

(assert (=> b!3969745 m!4540001))

(declare-fun m!4540003 () Bool)

(assert (=> b!3969745 m!4540003))

(declare-fun m!4540005 () Bool)

(assert (=> b!3969746 m!4540005))

(assert (=> b!3969746 m!4540005))

(declare-fun m!4540007 () Bool)

(assert (=> b!3969746 m!4540007))

(declare-fun m!4540009 () Bool)

(assert (=> b!3969744 m!4540009))

(declare-fun m!4540011 () Bool)

(assert (=> b!3969744 m!4540011))

(declare-fun m!4540013 () Bool)

(assert (=> b!3969744 m!4540013))

(declare-fun m!4540015 () Bool)

(assert (=> b!3969740 m!4540015))

(declare-fun m!4540017 () Bool)

(assert (=> b!3969740 m!4540017))

(declare-fun m!4540019 () Bool)

(assert (=> start!373544 m!4540019))

(declare-fun m!4540021 () Bool)

(assert (=> b!3969754 m!4540021))

(declare-fun m!4540023 () Bool)

(assert (=> b!3969754 m!4540023))

(declare-fun m!4540025 () Bool)

(assert (=> b!3969758 m!4540025))

(declare-fun m!4540027 () Bool)

(assert (=> b!3969758 m!4540027))

(declare-fun m!4540029 () Bool)

(assert (=> b!3969743 m!4540029))

(declare-fun m!4540031 () Bool)

(assert (=> b!3969748 m!4540031))

(declare-fun m!4540033 () Bool)

(assert (=> b!3969753 m!4540033))

(declare-fun m!4540035 () Bool)

(assert (=> b!3969755 m!4540035))

(declare-fun m!4540037 () Bool)

(assert (=> b!3969755 m!4540037))

(declare-fun m!4540039 () Bool)

(assert (=> b!3969755 m!4540039))

(assert (=> b!3969755 m!4540039))

(declare-fun m!4540041 () Bool)

(assert (=> b!3969755 m!4540041))

(declare-fun m!4540043 () Bool)

(assert (=> b!3969756 m!4540043))

(check-sat (not b_next!110603) (not b_next!110607) b_and!305133 tp_is_empty!20089 (not b!3969753) (not b!3969756) (not start!373544) (not b!3969750) (not b!3969745) (not b!3969741) (not b!3969758) (not b!3969748) (not b!3969747) b_and!305127 (not b!3969751) (not b!3969740) (not b_next!110605) (not b!3969744) b_and!305129 (not b!3969742) (not b!3969749) (not b_next!110601) (not b!3969754) b_and!305131 (not b!3969755) (not b!3969743) (not b!3969746))
(check-sat (not b_next!110603) (not b_next!110607) b_and!305133 (not b_next!110601) b_and!305127 b_and!305131 (not b_next!110605) b_and!305129)
