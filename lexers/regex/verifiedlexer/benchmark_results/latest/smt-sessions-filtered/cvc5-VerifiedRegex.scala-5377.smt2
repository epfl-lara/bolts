; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!274212 () Bool)

(assert start!274212)

(declare-fun b!2825060 () Bool)

(declare-fun b_free!80957 () Bool)

(declare-fun b_next!81661 () Bool)

(assert (=> b!2825060 (= b_free!80957 (not b_next!81661))))

(declare-fun tp!902346 () Bool)

(declare-fun b_and!206471 () Bool)

(assert (=> b!2825060 (= tp!902346 b_and!206471)))

(declare-fun b_free!80959 () Bool)

(declare-fun b_next!81663 () Bool)

(assert (=> b!2825060 (= b_free!80959 (not b_next!81663))))

(declare-fun tp!902351 () Bool)

(declare-fun b_and!206473 () Bool)

(assert (=> b!2825060 (= tp!902351 b_and!206473)))

(declare-fun b!2825069 () Bool)

(declare-fun b_free!80961 () Bool)

(declare-fun b_next!81665 () Bool)

(assert (=> b!2825069 (= b_free!80961 (not b_next!81665))))

(declare-fun tp!902353 () Bool)

(declare-fun b_and!206475 () Bool)

(assert (=> b!2825069 (= tp!902353 b_and!206475)))

(declare-fun b_free!80963 () Bool)

(declare-fun b_next!81667 () Bool)

(assert (=> b!2825069 (= b_free!80963 (not b_next!81667))))

(declare-fun tp!902348 () Bool)

(declare-fun b_and!206477 () Bool)

(assert (=> b!2825069 (= tp!902348 b_and!206477)))

(declare-fun b!2825086 () Bool)

(declare-fun e!1787749 () Bool)

(assert (=> b!2825086 (= e!1787749 true)))

(declare-fun b!2825085 () Bool)

(declare-fun e!1787748 () Bool)

(assert (=> b!2825085 (= e!1787748 e!1787749)))

(declare-fun b!2825084 () Bool)

(declare-fun e!1787747 () Bool)

(assert (=> b!2825084 (= e!1787747 e!1787748)))

(declare-fun b!2825068 () Bool)

(assert (=> b!2825068 e!1787747))

(assert (= b!2825085 b!2825086))

(assert (= b!2825084 b!2825085))

(declare-datatypes ((C!16906 0))(
  ( (C!16907 (val!10433 Int)) )
))
(declare-datatypes ((List!33298 0))(
  ( (Nil!33174) (Cons!33174 (h!38594 (_ BitVec 16)) (t!230895 List!33298)) )
))
(declare-datatypes ((TokenValue!5202 0))(
  ( (FloatLiteralValue!10404 (text!36859 List!33298)) (TokenValueExt!5201 (__x!22077 Int)) (Broken!26010 (value!159997 List!33298)) (Object!5325) (End!5202) (Def!5202) (Underscore!5202) (Match!5202) (Else!5202) (Error!5202) (Case!5202) (If!5202) (Extends!5202) (Abstract!5202) (Class!5202) (Val!5202) (DelimiterValue!10404 (del!5262 List!33298)) (KeywordValue!5208 (value!159998 List!33298)) (CommentValue!10404 (value!159999 List!33298)) (WhitespaceValue!10404 (value!160000 List!33298)) (IndentationValue!5202 (value!160001 List!33298)) (String!36467) (Int32!5202) (Broken!26011 (value!160002 List!33298)) (Boolean!5203) (Unit!47190) (OperatorValue!5205 (op!5262 List!33298)) (IdentifierValue!10404 (value!160003 List!33298)) (IdentifierValue!10405 (value!160004 List!33298)) (WhitespaceValue!10405 (value!160005 List!33298)) (True!10404) (False!10404) (Broken!26012 (value!160006 List!33298)) (Broken!26013 (value!160007 List!33298)) (True!10405) (RightBrace!5202) (RightBracket!5202) (Colon!5202) (Null!5202) (Comma!5202) (LeftBracket!5202) (False!10405) (LeftBrace!5202) (ImaginaryLiteralValue!5202 (text!36860 List!33298)) (StringLiteralValue!15606 (value!160008 List!33298)) (EOFValue!5202 (value!160009 List!33298)) (IdentValue!5202 (value!160010 List!33298)) (DelimiterValue!10405 (value!160011 List!33298)) (DedentValue!5202 (value!160012 List!33298)) (NewLineValue!5202 (value!160013 List!33298)) (IntegerValue!15606 (value!160014 (_ BitVec 32)) (text!36861 List!33298)) (IntegerValue!15607 (value!160015 Int) (text!36862 List!33298)) (Times!5202) (Or!5202) (Equal!5202) (Minus!5202) (Broken!26014 (value!160016 List!33298)) (And!5202) (Div!5202) (LessEqual!5202) (Mod!5202) (Concat!13564) (Not!5202) (Plus!5202) (SpaceValue!5202 (value!160017 List!33298)) (IntegerValue!15608 (value!160018 Int) (text!36863 List!33298)) (StringLiteralValue!15607 (text!36864 List!33298)) (FloatLiteralValue!10405 (text!36865 List!33298)) (BytesLiteralValue!5202 (value!160019 List!33298)) (CommentValue!10405 (value!160020 List!33298)) (StringLiteralValue!15608 (value!160021 List!33298)) (ErrorTokenValue!5202 (msg!5263 List!33298)) )
))
(declare-datatypes ((List!33299 0))(
  ( (Nil!33175) (Cons!33175 (h!38595 C!16906) (t!230896 List!33299)) )
))
(declare-datatypes ((IArray!20603 0))(
  ( (IArray!20604 (innerList!10359 List!33299)) )
))
(declare-datatypes ((Conc!10299 0))(
  ( (Node!10299 (left!25066 Conc!10299) (right!25396 Conc!10299) (csize!20828 Int) (cheight!10510 Int)) (Leaf!15677 (xs!13411 IArray!20603) (csize!20829 Int)) (Empty!10299) )
))
(declare-datatypes ((BalanceConc!20236 0))(
  ( (BalanceConc!20237 (c!457392 Conc!10299)) )
))
(declare-datatypes ((TokenValueInjection!9832 0))(
  ( (TokenValueInjection!9833 (toValue!6994 Int) (toChars!6853 Int)) )
))
(declare-datatypes ((String!36468 0))(
  ( (String!36469 (value!160022 String)) )
))
(declare-datatypes ((Regex!8362 0))(
  ( (ElementMatch!8362 (c!457393 C!16906)) (Concat!13565 (regOne!17236 Regex!8362) (regTwo!17236 Regex!8362)) (EmptyExpr!8362) (Star!8362 (reg!8691 Regex!8362)) (EmptyLang!8362) (Union!8362 (regOne!17237 Regex!8362) (regTwo!17237 Regex!8362)) )
))
(declare-datatypes ((Rule!9744 0))(
  ( (Rule!9745 (regex!4972 Regex!8362) (tag!5476 String!36468) (isSeparator!4972 Bool) (transformation!4972 TokenValueInjection!9832)) )
))
(declare-datatypes ((List!33300 0))(
  ( (Nil!33176) (Cons!33176 (h!38596 Rule!9744) (t!230897 List!33300)) )
))
(declare-fun rules!4424 () List!33300)

(assert (= (and b!2825068 (is-Cons!33176 rules!4424)) b!2825084))

(declare-fun lambda!103766 () Int)

(declare-fun order!17685 () Int)

(declare-fun order!17687 () Int)

(declare-fun dynLambda!13925 (Int Int) Int)

(declare-fun dynLambda!13926 (Int Int) Int)

(assert (=> b!2825086 (< (dynLambda!13925 order!17685 (toValue!6994 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103766))))

(declare-fun order!17689 () Int)

(declare-fun dynLambda!13927 (Int Int) Int)

(assert (=> b!2825086 (< (dynLambda!13927 order!17689 (toChars!6853 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103766))))

(declare-fun e!1787727 () Bool)

(declare-fun tp!902350 () Bool)

(declare-fun e!1787730 () Bool)

(declare-datatypes ((Token!9346 0))(
  ( (Token!9347 (value!160023 TokenValue!5202) (rule!7400 Rule!9744) (size!25837 Int) (originalCharacters!5704 List!33299)) )
))
(declare-datatypes ((List!33301 0))(
  ( (Nil!33177) (Cons!33177 (h!38597 Token!9346) (t!230898 List!33301)) )
))
(declare-fun l!6581 () List!33301)

(declare-fun b!2825056 () Bool)

(declare-fun inv!45109 (Token!9346) Bool)

(assert (=> b!2825056 (= e!1787727 (and (inv!45109 (h!38597 l!6581)) e!1787730 tp!902350))))

(declare-fun b!2825057 () Bool)

(declare-fun e!1787734 () Bool)

(declare-fun e!1787728 () Bool)

(declare-fun tp!902352 () Bool)

(assert (=> b!2825057 (= e!1787734 (and e!1787728 tp!902352))))

(declare-fun b!2825058 () Bool)

(declare-fun res!1175646 () Bool)

(declare-fun e!1787729 () Bool)

(assert (=> b!2825058 (=> (not res!1175646) (not e!1787729))))

(declare-datatypes ((LexerInterface!4563 0))(
  ( (LexerInterfaceExt!4560 (__x!22078 Int)) (Lexer!4561) )
))
(declare-fun thiss!27755 () LexerInterface!4563)

(declare-fun tokensListTwoByTwoPredicateSeparableList!700 (LexerInterface!4563 List!33301 List!33300) Bool)

(assert (=> b!2825058 (= res!1175646 (tokensListTwoByTwoPredicateSeparableList!700 thiss!27755 (t!230898 l!6581) rules!4424))))

(declare-fun b!2825059 () Bool)

(declare-fun e!1787740 () Bool)

(declare-fun e!1787725 () Bool)

(assert (=> b!2825059 (= e!1787740 e!1787725)))

(declare-fun res!1175653 () Bool)

(assert (=> b!2825059 (=> (not res!1175653) (not e!1787725))))

(declare-fun lt!1007980 () List!33301)

(declare-fun rulesProduceIndividualToken!2101 (LexerInterface!4563 List!33300 Token!9346) Bool)

(assert (=> b!2825059 (= res!1175653 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 lt!1007980)))))

(declare-fun e!1787736 () Bool)

(assert (=> b!2825060 (= e!1787736 (and tp!902346 tp!902351))))

(declare-fun b!2825061 () Bool)

(declare-fun res!1175647 () Bool)

(assert (=> b!2825061 (=> (not res!1175647) (not e!1787729))))

(declare-fun isEmpty!18349 (List!33300) Bool)

(assert (=> b!2825061 (= res!1175647 (not (isEmpty!18349 rules!4424)))))

(declare-fun b!2825062 () Bool)

(declare-fun res!1175650 () Bool)

(assert (=> b!2825062 (=> (not res!1175650) (not e!1787729))))

(declare-fun rulesInvariant!3981 (LexerInterface!4563 List!33300) Bool)

(assert (=> b!2825062 (= res!1175650 (rulesInvariant!3981 thiss!27755 rules!4424))))

(declare-fun b!2825063 () Bool)

(declare-fun lt!1007982 () List!33301)

(declare-fun e!1787737 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1615 (LexerInterface!4563 List!33300 List!33301) Bool)

(assert (=> b!2825063 (= e!1787737 (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 (t!230898 lt!1007982)))))

(declare-fun b!2825065 () Bool)

(declare-fun res!1175651 () Bool)

(assert (=> b!2825065 (=> (not res!1175651) (not e!1787729))))

(assert (=> b!2825065 (= res!1175651 (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 (t!230898 l!6581)))))

(declare-fun b!2825066 () Bool)

(declare-fun res!1175649 () Bool)

(assert (=> b!2825066 (=> (not res!1175649) (not e!1787729))))

(assert (=> b!2825066 (= res!1175649 (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2825067 () Bool)

(declare-fun res!1175657 () Bool)

(assert (=> b!2825067 (=> (not res!1175657) (not e!1787729))))

(assert (=> b!2825067 (= res!1175657 (tokensListTwoByTwoPredicateSeparableList!700 thiss!27755 l!6581 rules!4424))))

(declare-fun forall!6802 (List!33301 Int) Bool)

(assert (=> b!2825068 (= e!1787729 (not (forall!6802 l!6581 lambda!103766)))))

(assert (=> b!2825068 (= (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 lt!1007980) e!1787740)))

(declare-fun res!1175652 () Bool)

(assert (=> b!2825068 (=> res!1175652 e!1787740)))

(assert (=> b!2825068 (= res!1175652 (not (is-Cons!33177 lt!1007980)))))

(declare-fun i!1730 () Int)

(declare-fun take!566 (List!33301 Int) List!33301)

(assert (=> b!2825068 (= lt!1007980 (take!566 l!6581 i!1730))))

(declare-fun e!1787731 () Bool)

(assert (=> b!2825068 e!1787731))

(declare-fun res!1175656 () Bool)

(assert (=> b!2825068 (=> (not res!1175656) (not e!1787731))))

(assert (=> b!2825068 (= res!1175656 (forall!6802 lt!1007982 lambda!103766))))

(declare-datatypes ((Unit!47191 0))(
  ( (Unit!47192) )
))
(declare-fun lt!1007983 () Unit!47191)

(declare-fun lemmaForallSubseq!232 (List!33301 List!33301 Int) Unit!47191)

(assert (=> b!2825068 (= lt!1007983 (lemmaForallSubseq!232 lt!1007982 (t!230898 l!6581) lambda!103766))))

(declare-fun e!1787726 () Bool)

(assert (=> b!2825068 (= (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 lt!1007982) e!1787726)))

(declare-fun res!1175655 () Bool)

(assert (=> b!2825068 (=> res!1175655 e!1787726)))

(assert (=> b!2825068 (= res!1175655 (not (is-Cons!33177 lt!1007982)))))

(assert (=> b!2825068 (= lt!1007982 (take!566 (t!230898 l!6581) (- i!1730 1)))))

(declare-fun lt!1007981 () Unit!47191)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!55 (LexerInterface!4563 List!33301 Int List!33300) Unit!47191)

(assert (=> b!2825068 (= lt!1007981 (tokensListTwoByTwoPredicateSeparableTokensTakeList!55 thiss!27755 (t!230898 l!6581) (- i!1730 1) rules!4424))))

(declare-fun e!1787735 () Bool)

(assert (=> b!2825069 (= e!1787735 (and tp!902353 tp!902348))))

(declare-fun b!2825070 () Bool)

(declare-fun res!1175654 () Bool)

(assert (=> b!2825070 (=> (not res!1175654) (not e!1787729))))

(assert (=> b!2825070 (= res!1175654 (and (not (is-Nil!33177 l!6581)) (> i!1730 0)))))

(declare-fun tp!902347 () Bool)

(declare-fun b!2825071 () Bool)

(declare-fun inv!45106 (String!36468) Bool)

(declare-fun inv!45110 (TokenValueInjection!9832) Bool)

(assert (=> b!2825071 (= e!1787728 (and tp!902347 (inv!45106 (tag!5476 (h!38596 rules!4424))) (inv!45110 (transformation!4972 (h!38596 rules!4424))) e!1787736))))

(declare-fun b!2825072 () Bool)

(assert (=> b!2825072 (= e!1787726 e!1787737)))

(declare-fun res!1175648 () Bool)

(assert (=> b!2825072 (=> (not res!1175648) (not e!1787737))))

(assert (=> b!2825072 (= res!1175648 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 lt!1007982)))))

(declare-fun b!2825073 () Bool)

(declare-fun tp!902349 () Bool)

(declare-fun e!1787733 () Bool)

(assert (=> b!2825073 (= e!1787733 (and tp!902349 (inv!45106 (tag!5476 (rule!7400 (h!38597 l!6581)))) (inv!45110 (transformation!4972 (rule!7400 (h!38597 l!6581)))) e!1787735))))

(declare-fun b!2825074 () Bool)

(assert (=> b!2825074 (= e!1787725 (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 (t!230898 lt!1007980)))))

(declare-fun tp!902345 () Bool)

(declare-fun b!2825075 () Bool)

(declare-fun inv!21 (TokenValue!5202) Bool)

(assert (=> b!2825075 (= e!1787730 (and (inv!21 (value!160023 (h!38597 l!6581))) e!1787733 tp!902345))))

(declare-fun b!2825064 () Bool)

(assert (=> b!2825064 (= e!1787731 (tokensListTwoByTwoPredicateSeparableList!700 thiss!27755 lt!1007982 rules!4424))))

(declare-fun res!1175645 () Bool)

(assert (=> start!274212 (=> (not res!1175645) (not e!1787729))))

(assert (=> start!274212 (= res!1175645 (is-Lexer!4561 thiss!27755))))

(assert (=> start!274212 e!1787729))

(assert (=> start!274212 true))

(assert (=> start!274212 e!1787734))

(assert (=> start!274212 e!1787727))

(assert (= (and start!274212 res!1175645) b!2825061))

(assert (= (and b!2825061 res!1175647) b!2825062))

(assert (= (and b!2825062 res!1175650) b!2825066))

(assert (= (and b!2825066 res!1175649) b!2825067))

(assert (= (and b!2825067 res!1175657) b!2825070))

(assert (= (and b!2825070 res!1175654) b!2825065))

(assert (= (and b!2825065 res!1175651) b!2825058))

(assert (= (and b!2825058 res!1175646) b!2825068))

(assert (= (and b!2825068 (not res!1175655)) b!2825072))

(assert (= (and b!2825072 res!1175648) b!2825063))

(assert (= (and b!2825068 res!1175656) b!2825064))

(assert (= (and b!2825068 (not res!1175652)) b!2825059))

(assert (= (and b!2825059 res!1175653) b!2825074))

(assert (= b!2825071 b!2825060))

(assert (= b!2825057 b!2825071))

(assert (= (and start!274212 (is-Cons!33176 rules!4424)) b!2825057))

(assert (= b!2825073 b!2825069))

(assert (= b!2825075 b!2825073))

(assert (= b!2825056 b!2825075))

(assert (= (and start!274212 (is-Cons!33177 l!6581)) b!2825056))

(declare-fun m!3255251 () Bool)

(assert (=> b!2825058 m!3255251))

(declare-fun m!3255253 () Bool)

(assert (=> b!2825075 m!3255253))

(declare-fun m!3255255 () Bool)

(assert (=> b!2825059 m!3255255))

(declare-fun m!3255257 () Bool)

(assert (=> b!2825063 m!3255257))

(declare-fun m!3255259 () Bool)

(assert (=> b!2825064 m!3255259))

(declare-fun m!3255261 () Bool)

(assert (=> b!2825065 m!3255261))

(declare-fun m!3255263 () Bool)

(assert (=> b!2825061 m!3255263))

(declare-fun m!3255265 () Bool)

(assert (=> b!2825073 m!3255265))

(declare-fun m!3255267 () Bool)

(assert (=> b!2825073 m!3255267))

(declare-fun m!3255269 () Bool)

(assert (=> b!2825067 m!3255269))

(declare-fun m!3255271 () Bool)

(assert (=> b!2825071 m!3255271))

(declare-fun m!3255273 () Bool)

(assert (=> b!2825071 m!3255273))

(declare-fun m!3255275 () Bool)

(assert (=> b!2825056 m!3255275))

(declare-fun m!3255277 () Bool)

(assert (=> b!2825066 m!3255277))

(declare-fun m!3255279 () Bool)

(assert (=> b!2825074 m!3255279))

(declare-fun m!3255281 () Bool)

(assert (=> b!2825072 m!3255281))

(declare-fun m!3255283 () Bool)

(assert (=> b!2825068 m!3255283))

(declare-fun m!3255285 () Bool)

(assert (=> b!2825068 m!3255285))

(declare-fun m!3255287 () Bool)

(assert (=> b!2825068 m!3255287))

(declare-fun m!3255289 () Bool)

(assert (=> b!2825068 m!3255289))

(declare-fun m!3255291 () Bool)

(assert (=> b!2825068 m!3255291))

(declare-fun m!3255293 () Bool)

(assert (=> b!2825068 m!3255293))

(declare-fun m!3255295 () Bool)

(assert (=> b!2825068 m!3255295))

(declare-fun m!3255297 () Bool)

(assert (=> b!2825068 m!3255297))

(declare-fun m!3255299 () Bool)

(assert (=> b!2825062 m!3255299))

(push 1)

(assert (not b!2825072))

(assert (not b!2825057))

(assert (not b_next!81663))

(assert (not b!2825071))

(assert (not b!2825067))

(assert b_and!206477)

(assert (not b!2825062))

(assert (not b!2825059))

(assert (not b!2825084))

(assert (not b!2825058))

(assert (not b!2825066))

(assert (not b!2825061))

(assert (not b!2825063))

(assert (not b!2825075))

(assert (not b!2825064))

(assert (not b!2825056))

(assert (not b!2825073))

(assert (not b_next!81665))

(assert (not b_next!81661))

(assert (not b!2825068))

(assert (not b!2825074))

(assert (not b_next!81667))

(assert (not b!2825065))

(assert b_and!206473)

(assert b_and!206475)

(assert b_and!206471)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81663))

(assert b_and!206477)

(assert (not b_next!81665))

(assert (not b_next!81661))

(assert (not b_next!81667))

(assert b_and!206473)

(assert b_and!206475)

(assert b_and!206471)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!820074 () Bool)

(declare-fun lt!1008001 () Bool)

(declare-fun e!1787812 () Bool)

(assert (=> d!820074 (= lt!1008001 e!1787812)))

(declare-fun res!1175709 () Bool)

(assert (=> d!820074 (=> (not res!1175709) (not e!1787812))))

(declare-datatypes ((IArray!20607 0))(
  ( (IArray!20608 (innerList!10361 List!33301)) )
))
(declare-datatypes ((Conc!10301 0))(
  ( (Node!10301 (left!25070 Conc!10301) (right!25400 Conc!10301) (csize!20832 Int) (cheight!10512 Int)) (Leaf!15679 (xs!13413 IArray!20607) (csize!20833 Int)) (Empty!10301) )
))
(declare-datatypes ((BalanceConc!20240 0))(
  ( (BalanceConc!20241 (c!457420 Conc!10301)) )
))
(declare-fun list!12433 (BalanceConc!20240) List!33301)

(declare-datatypes ((tuple2!33414 0))(
  ( (tuple2!33415 (_1!19800 BalanceConc!20240) (_2!19800 BalanceConc!20236)) )
))
(declare-fun lex!2003 (LexerInterface!4563 List!33300 BalanceConc!20236) tuple2!33414)

(declare-fun print!1722 (LexerInterface!4563 BalanceConc!20240) BalanceConc!20236)

(declare-fun singletonSeq!2148 (Token!9346) BalanceConc!20240)

(assert (=> d!820074 (= res!1175709 (= (list!12433 (_1!19800 (lex!2003 thiss!27755 rules!4424 (print!1722 thiss!27755 (singletonSeq!2148 (h!38597 lt!1007980)))))) (list!12433 (singletonSeq!2148 (h!38597 lt!1007980)))))))

(declare-fun e!1787811 () Bool)

(assert (=> d!820074 (= lt!1008001 e!1787811)))

(declare-fun res!1175708 () Bool)

(assert (=> d!820074 (=> (not res!1175708) (not e!1787811))))

(declare-fun lt!1008000 () tuple2!33414)

(declare-fun size!25839 (BalanceConc!20240) Int)

(assert (=> d!820074 (= res!1175708 (= (size!25839 (_1!19800 lt!1008000)) 1))))

(assert (=> d!820074 (= lt!1008000 (lex!2003 thiss!27755 rules!4424 (print!1722 thiss!27755 (singletonSeq!2148 (h!38597 lt!1007980)))))))

(assert (=> d!820074 (not (isEmpty!18349 rules!4424))))

(assert (=> d!820074 (= (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 lt!1007980)) lt!1008001)))

(declare-fun b!2825164 () Bool)

(declare-fun res!1175710 () Bool)

(assert (=> b!2825164 (=> (not res!1175710) (not e!1787811))))

(declare-fun apply!7747 (BalanceConc!20240 Int) Token!9346)

(assert (=> b!2825164 (= res!1175710 (= (apply!7747 (_1!19800 lt!1008000) 0) (h!38597 lt!1007980)))))

(declare-fun b!2825165 () Bool)

(declare-fun isEmpty!18351 (BalanceConc!20236) Bool)

(assert (=> b!2825165 (= e!1787811 (isEmpty!18351 (_2!19800 lt!1008000)))))

(declare-fun b!2825166 () Bool)

(assert (=> b!2825166 (= e!1787812 (isEmpty!18351 (_2!19800 (lex!2003 thiss!27755 rules!4424 (print!1722 thiss!27755 (singletonSeq!2148 (h!38597 lt!1007980)))))))))

(assert (= (and d!820074 res!1175708) b!2825164))

(assert (= (and b!2825164 res!1175710) b!2825165))

(assert (= (and d!820074 res!1175709) b!2825166))

(declare-fun m!3255351 () Bool)

(assert (=> d!820074 m!3255351))

(assert (=> d!820074 m!3255263))

(declare-fun m!3255353 () Bool)

(assert (=> d!820074 m!3255353))

(declare-fun m!3255355 () Bool)

(assert (=> d!820074 m!3255355))

(declare-fun m!3255357 () Bool)

(assert (=> d!820074 m!3255357))

(assert (=> d!820074 m!3255353))

(declare-fun m!3255359 () Bool)

(assert (=> d!820074 m!3255359))

(assert (=> d!820074 m!3255357))

(assert (=> d!820074 m!3255357))

(declare-fun m!3255361 () Bool)

(assert (=> d!820074 m!3255361))

(declare-fun m!3255363 () Bool)

(assert (=> b!2825164 m!3255363))

(declare-fun m!3255365 () Bool)

(assert (=> b!2825165 m!3255365))

(assert (=> b!2825166 m!3255357))

(assert (=> b!2825166 m!3255357))

(assert (=> b!2825166 m!3255353))

(assert (=> b!2825166 m!3255353))

(assert (=> b!2825166 m!3255355))

(declare-fun m!3255367 () Bool)

(assert (=> b!2825166 m!3255367))

(assert (=> b!2825059 d!820074))

(declare-fun d!820078 () Bool)

(declare-fun res!1175715 () Bool)

(declare-fun e!1787817 () Bool)

(assert (=> d!820078 (=> res!1175715 e!1787817)))

(assert (=> d!820078 (= res!1175715 (or (not (is-Cons!33177 (t!230898 l!6581))) (not (is-Cons!33177 (t!230898 (t!230898 l!6581))))))))

(assert (=> d!820078 (= (tokensListTwoByTwoPredicateSeparableList!700 thiss!27755 (t!230898 l!6581) rules!4424) e!1787817)))

(declare-fun b!2825171 () Bool)

(declare-fun e!1787818 () Bool)

(assert (=> b!2825171 (= e!1787817 e!1787818)))

(declare-fun res!1175716 () Bool)

(assert (=> b!2825171 (=> (not res!1175716) (not e!1787818))))

(declare-fun separableTokensPredicate!905 (LexerInterface!4563 Token!9346 Token!9346 List!33300) Bool)

(assert (=> b!2825171 (= res!1175716 (separableTokensPredicate!905 thiss!27755 (h!38597 (t!230898 l!6581)) (h!38597 (t!230898 (t!230898 l!6581))) rules!4424))))

(declare-fun lt!1008019 () Unit!47191)

(declare-fun Unit!47196 () Unit!47191)

(assert (=> b!2825171 (= lt!1008019 Unit!47196)))

(declare-fun size!25840 (BalanceConc!20236) Int)

(declare-fun charsOf!3080 (Token!9346) BalanceConc!20236)

(assert (=> b!2825171 (> (size!25840 (charsOf!3080 (h!38597 (t!230898 (t!230898 l!6581))))) 0)))

(declare-fun lt!1008021 () Unit!47191)

(declare-fun Unit!47197 () Unit!47191)

(assert (=> b!2825171 (= lt!1008021 Unit!47197)))

(assert (=> b!2825171 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 (t!230898 (t!230898 l!6581))))))

(declare-fun lt!1008020 () Unit!47191)

(declare-fun Unit!47198 () Unit!47191)

(assert (=> b!2825171 (= lt!1008020 Unit!47198)))

(assert (=> b!2825171 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 (t!230898 l!6581)))))

(declare-fun lt!1008022 () Unit!47191)

(declare-fun lt!1008016 () Unit!47191)

(assert (=> b!2825171 (= lt!1008022 lt!1008016)))

(assert (=> b!2825171 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 (t!230898 (t!230898 l!6581))))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!719 (LexerInterface!4563 List!33300 List!33301 Token!9346) Unit!47191)

(assert (=> b!2825171 (= lt!1008016 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!719 thiss!27755 rules!4424 (t!230898 l!6581) (h!38597 (t!230898 (t!230898 l!6581)))))))

(declare-fun lt!1008017 () Unit!47191)

(declare-fun lt!1008018 () Unit!47191)

(assert (=> b!2825171 (= lt!1008017 lt!1008018)))

(assert (=> b!2825171 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 (t!230898 l!6581)))))

(assert (=> b!2825171 (= lt!1008018 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!719 thiss!27755 rules!4424 (t!230898 l!6581) (h!38597 (t!230898 l!6581))))))

(declare-fun b!2825172 () Bool)

(assert (=> b!2825172 (= e!1787818 (tokensListTwoByTwoPredicateSeparableList!700 thiss!27755 (Cons!33177 (h!38597 (t!230898 (t!230898 l!6581))) (t!230898 (t!230898 (t!230898 l!6581)))) rules!4424))))

(assert (= (and d!820078 (not res!1175715)) b!2825171))

(assert (= (and b!2825171 res!1175716) b!2825172))

(declare-fun m!3255369 () Bool)

(assert (=> b!2825171 m!3255369))

(declare-fun m!3255371 () Bool)

(assert (=> b!2825171 m!3255371))

(declare-fun m!3255373 () Bool)

(assert (=> b!2825171 m!3255373))

(declare-fun m!3255375 () Bool)

(assert (=> b!2825171 m!3255375))

(declare-fun m!3255377 () Bool)

(assert (=> b!2825171 m!3255377))

(assert (=> b!2825171 m!3255375))

(declare-fun m!3255379 () Bool)

(assert (=> b!2825171 m!3255379))

(declare-fun m!3255381 () Bool)

(assert (=> b!2825171 m!3255381))

(declare-fun m!3255383 () Bool)

(assert (=> b!2825172 m!3255383))

(assert (=> b!2825058 d!820078))

(declare-fun bs!517887 () Bool)

(declare-fun d!820080 () Bool)

(assert (= bs!517887 (and d!820080 b!2825068)))

(declare-fun lambda!103777 () Int)

(assert (=> bs!517887 (= (= thiss!27755 Lexer!4561) (= lambda!103777 lambda!103766))))

(declare-fun b!2825192 () Bool)

(declare-fun e!1787836 () Bool)

(assert (=> b!2825192 (= e!1787836 true)))

(declare-fun b!2825191 () Bool)

(declare-fun e!1787835 () Bool)

(assert (=> b!2825191 (= e!1787835 e!1787836)))

(declare-fun b!2825190 () Bool)

(declare-fun e!1787834 () Bool)

(assert (=> b!2825190 (= e!1787834 e!1787835)))

(assert (=> d!820080 e!1787834))

(assert (= b!2825191 b!2825192))

(assert (= b!2825190 b!2825191))

(assert (= (and d!820080 (is-Cons!33176 rules!4424)) b!2825190))

(assert (=> b!2825192 (< (dynLambda!13925 order!17685 (toValue!6994 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103777))))

(assert (=> b!2825192 (< (dynLambda!13927 order!17689 (toChars!6853 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103777))))

(assert (=> d!820080 true))

(declare-fun lt!1008028 () Bool)

(assert (=> d!820080 (= lt!1008028 (forall!6802 lt!1007980 lambda!103777))))

(declare-fun e!1787833 () Bool)

(assert (=> d!820080 (= lt!1008028 e!1787833)))

(declare-fun res!1175728 () Bool)

(assert (=> d!820080 (=> res!1175728 e!1787833)))

(assert (=> d!820080 (= res!1175728 (not (is-Cons!33177 lt!1007980)))))

(assert (=> d!820080 (not (isEmpty!18349 rules!4424))))

(assert (=> d!820080 (= (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 lt!1007980) lt!1008028)))

(declare-fun b!2825188 () Bool)

(declare-fun e!1787832 () Bool)

(assert (=> b!2825188 (= e!1787833 e!1787832)))

(declare-fun res!1175727 () Bool)

(assert (=> b!2825188 (=> (not res!1175727) (not e!1787832))))

(assert (=> b!2825188 (= res!1175727 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 lt!1007980)))))

(declare-fun b!2825189 () Bool)

(assert (=> b!2825189 (= e!1787832 (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 (t!230898 lt!1007980)))))

(assert (= (and d!820080 (not res!1175728)) b!2825188))

(assert (= (and b!2825188 res!1175727) b!2825189))

(declare-fun m!3255391 () Bool)

(assert (=> d!820080 m!3255391))

(assert (=> d!820080 m!3255263))

(assert (=> b!2825188 m!3255255))

(assert (=> b!2825189 m!3255279))

(assert (=> b!2825068 d!820080))

(declare-fun d!820084 () Bool)

(declare-fun res!1175733 () Bool)

(declare-fun e!1787841 () Bool)

(assert (=> d!820084 (=> res!1175733 e!1787841)))

(assert (=> d!820084 (= res!1175733 (is-Nil!33177 l!6581))))

(assert (=> d!820084 (= (forall!6802 l!6581 lambda!103766) e!1787841)))

(declare-fun b!2825199 () Bool)

(declare-fun e!1787842 () Bool)

(assert (=> b!2825199 (= e!1787841 e!1787842)))

(declare-fun res!1175734 () Bool)

(assert (=> b!2825199 (=> (not res!1175734) (not e!1787842))))

(declare-fun dynLambda!13931 (Int Token!9346) Bool)

(assert (=> b!2825199 (= res!1175734 (dynLambda!13931 lambda!103766 (h!38597 l!6581)))))

(declare-fun b!2825200 () Bool)

(assert (=> b!2825200 (= e!1787842 (forall!6802 (t!230898 l!6581) lambda!103766))))

(assert (= (and d!820084 (not res!1175733)) b!2825199))

(assert (= (and b!2825199 res!1175734) b!2825200))

(declare-fun b_lambda!84683 () Bool)

(assert (=> (not b_lambda!84683) (not b!2825199)))

(declare-fun m!3255393 () Bool)

(assert (=> b!2825199 m!3255393))

(declare-fun m!3255395 () Bool)

(assert (=> b!2825200 m!3255395))

(assert (=> b!2825068 d!820084))

(declare-fun b!2825215 () Bool)

(declare-fun e!1787854 () Int)

(declare-fun size!25841 (List!33301) Int)

(assert (=> b!2825215 (= e!1787854 (size!25841 l!6581))))

(declare-fun b!2825216 () Bool)

(declare-fun e!1787853 () List!33301)

(assert (=> b!2825216 (= e!1787853 Nil!33177)))

(declare-fun b!2825217 () Bool)

(declare-fun e!1787851 () Int)

(assert (=> b!2825217 (= e!1787851 e!1787854)))

(declare-fun c!457404 () Bool)

(assert (=> b!2825217 (= c!457404 (>= i!1730 (size!25841 l!6581)))))

(declare-fun b!2825218 () Bool)

(assert (=> b!2825218 (= e!1787853 (Cons!33177 (h!38597 l!6581) (take!566 (t!230898 l!6581) (- i!1730 1))))))

(declare-fun b!2825219 () Bool)

(assert (=> b!2825219 (= e!1787854 i!1730)))

(declare-fun b!2825220 () Bool)

(declare-fun e!1787852 () Bool)

(declare-fun lt!1008031 () List!33301)

(assert (=> b!2825220 (= e!1787852 (= (size!25841 lt!1008031) e!1787851))))

(declare-fun c!457402 () Bool)

(assert (=> b!2825220 (= c!457402 (<= i!1730 0))))

(declare-fun d!820086 () Bool)

(assert (=> d!820086 e!1787852))

(declare-fun res!1175737 () Bool)

(assert (=> d!820086 (=> (not res!1175737) (not e!1787852))))

(declare-fun content!4625 (List!33301) (Set Token!9346))

(assert (=> d!820086 (= res!1175737 (set.subset (content!4625 lt!1008031) (content!4625 l!6581)))))

(assert (=> d!820086 (= lt!1008031 e!1787853)))

(declare-fun c!457403 () Bool)

(assert (=> d!820086 (= c!457403 (or (is-Nil!33177 l!6581) (<= i!1730 0)))))

(assert (=> d!820086 (= (take!566 l!6581 i!1730) lt!1008031)))

(declare-fun b!2825221 () Bool)

(assert (=> b!2825221 (= e!1787851 0)))

(assert (= (and d!820086 c!457403) b!2825216))

(assert (= (and d!820086 (not c!457403)) b!2825218))

(assert (= (and d!820086 res!1175737) b!2825220))

(assert (= (and b!2825220 c!457402) b!2825221))

(assert (= (and b!2825220 (not c!457402)) b!2825217))

(assert (= (and b!2825217 c!457404) b!2825215))

(assert (= (and b!2825217 (not c!457404)) b!2825219))

(declare-fun m!3255397 () Bool)

(assert (=> b!2825217 m!3255397))

(declare-fun m!3255399 () Bool)

(assert (=> d!820086 m!3255399))

(declare-fun m!3255401 () Bool)

(assert (=> d!820086 m!3255401))

(assert (=> b!2825218 m!3255293))

(assert (=> b!2825215 m!3255397))

(declare-fun m!3255403 () Bool)

(assert (=> b!2825220 m!3255403))

(assert (=> b!2825068 d!820086))

(declare-fun d!820088 () Bool)

(declare-fun res!1175738 () Bool)

(declare-fun e!1787855 () Bool)

(assert (=> d!820088 (=> res!1175738 e!1787855)))

(assert (=> d!820088 (= res!1175738 (is-Nil!33177 lt!1007982))))

(assert (=> d!820088 (= (forall!6802 lt!1007982 lambda!103766) e!1787855)))

(declare-fun b!2825222 () Bool)

(declare-fun e!1787856 () Bool)

(assert (=> b!2825222 (= e!1787855 e!1787856)))

(declare-fun res!1175739 () Bool)

(assert (=> b!2825222 (=> (not res!1175739) (not e!1787856))))

(assert (=> b!2825222 (= res!1175739 (dynLambda!13931 lambda!103766 (h!38597 lt!1007982)))))

(declare-fun b!2825223 () Bool)

(assert (=> b!2825223 (= e!1787856 (forall!6802 (t!230898 lt!1007982) lambda!103766))))

(assert (= (and d!820088 (not res!1175738)) b!2825222))

(assert (= (and b!2825222 res!1175739) b!2825223))

(declare-fun b_lambda!84685 () Bool)

(assert (=> (not b_lambda!84685) (not b!2825222)))

(declare-fun m!3255405 () Bool)

(assert (=> b!2825222 m!3255405))

(declare-fun m!3255407 () Bool)

(assert (=> b!2825223 m!3255407))

(assert (=> b!2825068 d!820088))

(declare-fun d!820090 () Bool)

(assert (=> d!820090 (forall!6802 lt!1007982 lambda!103766)))

(declare-fun lt!1008034 () Unit!47191)

(declare-fun choose!16690 (List!33301 List!33301 Int) Unit!47191)

(assert (=> d!820090 (= lt!1008034 (choose!16690 lt!1007982 (t!230898 l!6581) lambda!103766))))

(assert (=> d!820090 (forall!6802 (t!230898 l!6581) lambda!103766)))

(assert (=> d!820090 (= (lemmaForallSubseq!232 lt!1007982 (t!230898 l!6581) lambda!103766) lt!1008034)))

(declare-fun bs!517888 () Bool)

(assert (= bs!517888 d!820090))

(assert (=> bs!517888 m!3255287))

(declare-fun m!3255409 () Bool)

(assert (=> bs!517888 m!3255409))

(assert (=> bs!517888 m!3255395))

(assert (=> b!2825068 d!820090))

(declare-fun bs!517889 () Bool)

(declare-fun d!820092 () Bool)

(assert (= bs!517889 (and d!820092 b!2825068)))

(declare-fun lambda!103778 () Int)

(assert (=> bs!517889 (= (= thiss!27755 Lexer!4561) (= lambda!103778 lambda!103766))))

(declare-fun bs!517890 () Bool)

(assert (= bs!517890 (and d!820092 d!820080)))

(assert (=> bs!517890 (= lambda!103778 lambda!103777)))

(declare-fun b!2825228 () Bool)

(declare-fun e!1787861 () Bool)

(assert (=> b!2825228 (= e!1787861 true)))

(declare-fun b!2825227 () Bool)

(declare-fun e!1787860 () Bool)

(assert (=> b!2825227 (= e!1787860 e!1787861)))

(declare-fun b!2825226 () Bool)

(declare-fun e!1787859 () Bool)

(assert (=> b!2825226 (= e!1787859 e!1787860)))

(assert (=> d!820092 e!1787859))

(assert (= b!2825227 b!2825228))

(assert (= b!2825226 b!2825227))

(assert (= (and d!820092 (is-Cons!33176 rules!4424)) b!2825226))

(assert (=> b!2825228 (< (dynLambda!13925 order!17685 (toValue!6994 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103778))))

(assert (=> b!2825228 (< (dynLambda!13927 order!17689 (toChars!6853 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103778))))

(assert (=> d!820092 true))

(declare-fun lt!1008035 () Bool)

(assert (=> d!820092 (= lt!1008035 (forall!6802 lt!1007982 lambda!103778))))

(declare-fun e!1787858 () Bool)

(assert (=> d!820092 (= lt!1008035 e!1787858)))

(declare-fun res!1175741 () Bool)

(assert (=> d!820092 (=> res!1175741 e!1787858)))

(assert (=> d!820092 (= res!1175741 (not (is-Cons!33177 lt!1007982)))))

(assert (=> d!820092 (not (isEmpty!18349 rules!4424))))

(assert (=> d!820092 (= (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 lt!1007982) lt!1008035)))

(declare-fun b!2825224 () Bool)

(declare-fun e!1787857 () Bool)

(assert (=> b!2825224 (= e!1787858 e!1787857)))

(declare-fun res!1175740 () Bool)

(assert (=> b!2825224 (=> (not res!1175740) (not e!1787857))))

(assert (=> b!2825224 (= res!1175740 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 lt!1007982)))))

(declare-fun b!2825225 () Bool)

(assert (=> b!2825225 (= e!1787857 (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 (t!230898 lt!1007982)))))

(assert (= (and d!820092 (not res!1175741)) b!2825224))

(assert (= (and b!2825224 res!1175740) b!2825225))

(declare-fun m!3255411 () Bool)

(assert (=> d!820092 m!3255411))

(assert (=> d!820092 m!3255263))

(assert (=> b!2825224 m!3255281))

(assert (=> b!2825225 m!3255257))

(assert (=> b!2825068 d!820092))

(declare-fun b!2825229 () Bool)

(declare-fun e!1787865 () Int)

(assert (=> b!2825229 (= e!1787865 (size!25841 (t!230898 l!6581)))))

(declare-fun b!2825230 () Bool)

(declare-fun e!1787864 () List!33301)

(assert (=> b!2825230 (= e!1787864 Nil!33177)))

(declare-fun b!2825231 () Bool)

(declare-fun e!1787862 () Int)

(assert (=> b!2825231 (= e!1787862 e!1787865)))

(declare-fun c!457407 () Bool)

(assert (=> b!2825231 (= c!457407 (>= (- i!1730 1) (size!25841 (t!230898 l!6581))))))

(declare-fun b!2825232 () Bool)

(assert (=> b!2825232 (= e!1787864 (Cons!33177 (h!38597 (t!230898 l!6581)) (take!566 (t!230898 (t!230898 l!6581)) (- (- i!1730 1) 1))))))

(declare-fun b!2825233 () Bool)

(assert (=> b!2825233 (= e!1787865 (- i!1730 1))))

(declare-fun b!2825234 () Bool)

(declare-fun e!1787863 () Bool)

(declare-fun lt!1008036 () List!33301)

(assert (=> b!2825234 (= e!1787863 (= (size!25841 lt!1008036) e!1787862))))

(declare-fun c!457405 () Bool)

(assert (=> b!2825234 (= c!457405 (<= (- i!1730 1) 0))))

(declare-fun d!820094 () Bool)

(assert (=> d!820094 e!1787863))

(declare-fun res!1175742 () Bool)

(assert (=> d!820094 (=> (not res!1175742) (not e!1787863))))

(assert (=> d!820094 (= res!1175742 (set.subset (content!4625 lt!1008036) (content!4625 (t!230898 l!6581))))))

(assert (=> d!820094 (= lt!1008036 e!1787864)))

(declare-fun c!457406 () Bool)

(assert (=> d!820094 (= c!457406 (or (is-Nil!33177 (t!230898 l!6581)) (<= (- i!1730 1) 0)))))

(assert (=> d!820094 (= (take!566 (t!230898 l!6581) (- i!1730 1)) lt!1008036)))

(declare-fun b!2825235 () Bool)

(assert (=> b!2825235 (= e!1787862 0)))

(assert (= (and d!820094 c!457406) b!2825230))

(assert (= (and d!820094 (not c!457406)) b!2825232))

(assert (= (and d!820094 res!1175742) b!2825234))

(assert (= (and b!2825234 c!457405) b!2825235))

(assert (= (and b!2825234 (not c!457405)) b!2825231))

(assert (= (and b!2825231 c!457407) b!2825229))

(assert (= (and b!2825231 (not c!457407)) b!2825233))

(declare-fun m!3255413 () Bool)

(assert (=> b!2825231 m!3255413))

(declare-fun m!3255415 () Bool)

(assert (=> d!820094 m!3255415))

(declare-fun m!3255417 () Bool)

(assert (=> d!820094 m!3255417))

(declare-fun m!3255419 () Bool)

(assert (=> b!2825232 m!3255419))

(assert (=> b!2825229 m!3255413))

(declare-fun m!3255421 () Bool)

(assert (=> b!2825234 m!3255421))

(assert (=> b!2825068 d!820094))

(declare-fun bs!517891 () Bool)

(declare-fun b!2825273 () Bool)

(assert (= bs!517891 (and b!2825273 b!2825068)))

(declare-fun lambda!103781 () Int)

(assert (=> bs!517891 (= lambda!103781 lambda!103766)))

(declare-fun bs!517892 () Bool)

(assert (= bs!517892 (and b!2825273 d!820080)))

(assert (=> bs!517892 (= (= Lexer!4561 thiss!27755) (= lambda!103781 lambda!103777))))

(declare-fun bs!517893 () Bool)

(assert (= bs!517893 (and b!2825273 d!820092)))

(assert (=> bs!517893 (= (= Lexer!4561 thiss!27755) (= lambda!103781 lambda!103778))))

(declare-fun b!2825277 () Bool)

(declare-fun e!1787901 () Bool)

(assert (=> b!2825277 (= e!1787901 true)))

(declare-fun b!2825276 () Bool)

(declare-fun e!1787900 () Bool)

(assert (=> b!2825276 (= e!1787900 e!1787901)))

(declare-fun b!2825275 () Bool)

(declare-fun e!1787899 () Bool)

(assert (=> b!2825275 (= e!1787899 e!1787900)))

(assert (=> b!2825273 e!1787899))

(assert (= b!2825276 b!2825277))

(assert (= b!2825275 b!2825276))

(assert (= (and b!2825273 (is-Cons!33176 rules!4424)) b!2825275))

(assert (=> b!2825277 (< (dynLambda!13925 order!17685 (toValue!6994 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103781))))

(assert (=> b!2825277 (< (dynLambda!13927 order!17689 (toChars!6853 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103781))))

(declare-fun d!820096 () Bool)

(declare-fun e!1787896 () Bool)

(assert (=> d!820096 e!1787896))

(declare-fun res!1175766 () Bool)

(assert (=> d!820096 (=> (not res!1175766) (not e!1787896))))

(declare-fun e!1787895 () Bool)

(assert (=> d!820096 (= res!1175766 (= (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 (take!566 (t!230898 l!6581) (- i!1730 1))) e!1787895))))

(declare-fun res!1175767 () Bool)

(assert (=> d!820096 (=> res!1175767 e!1787895)))

(declare-fun lt!1008078 () List!33301)

(assert (=> d!820096 (= res!1175767 (not (is-Cons!33177 lt!1008078)))))

(assert (=> d!820096 (= lt!1008078 (take!566 (t!230898 l!6581) (- i!1730 1)))))

(declare-fun lt!1008076 () Unit!47191)

(declare-fun choose!16691 (LexerInterface!4563 List!33301 Int List!33300) Unit!47191)

(assert (=> d!820096 (= lt!1008076 (choose!16691 thiss!27755 (t!230898 l!6581) (- i!1730 1) rules!4424))))

(assert (=> d!820096 (not (isEmpty!18349 rules!4424))))

(assert (=> d!820096 (= (tokensListTwoByTwoPredicateSeparableTokensTakeList!55 thiss!27755 (t!230898 l!6581) (- i!1730 1) rules!4424) lt!1008076)))

(declare-fun b!2825272 () Bool)

(declare-fun e!1787898 () Bool)

(assert (=> b!2825272 (= e!1787898 (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 (t!230898 lt!1008078)))))

(declare-fun b!2825271 () Bool)

(assert (=> b!2825271 (= e!1787895 e!1787898)))

(declare-fun res!1175768 () Bool)

(assert (=> b!2825271 (=> (not res!1175768) (not e!1787898))))

(assert (=> b!2825271 (= res!1175768 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 lt!1008078)))))

(assert (=> b!2825273 (= e!1787896 (tokensListTwoByTwoPredicateSeparableList!700 thiss!27755 (take!566 (t!230898 l!6581) (- i!1730 1)) rules!4424))))

(declare-fun lt!1008075 () Unit!47191)

(declare-fun lt!1008077 () Unit!47191)

(assert (=> b!2825273 (= lt!1008075 lt!1008077)))

(declare-fun lt!1008079 () List!33301)

(assert (=> b!2825273 (forall!6802 lt!1008079 lambda!103781)))

(assert (=> b!2825273 (= lt!1008077 (lemmaForallSubseq!232 lt!1008079 (t!230898 l!6581) lambda!103781))))

(declare-fun e!1787897 () Bool)

(assert (=> b!2825273 e!1787897))

(declare-fun res!1175769 () Bool)

(assert (=> b!2825273 (=> (not res!1175769) (not e!1787897))))

(assert (=> b!2825273 (= res!1175769 (forall!6802 (t!230898 l!6581) lambda!103781))))

(assert (=> b!2825273 (= lt!1008079 (take!566 (t!230898 l!6581) (- i!1730 1)))))

(declare-fun b!2825274 () Bool)

(declare-fun subseq!456 (List!33301 List!33301) Bool)

(assert (=> b!2825274 (= e!1787897 (subseq!456 lt!1008079 (t!230898 l!6581)))))

(assert (= (and d!820096 (not res!1175767)) b!2825271))

(assert (= (and b!2825271 res!1175768) b!2825272))

(assert (= (and d!820096 res!1175766) b!2825273))

(assert (= (and b!2825273 res!1175769) b!2825274))

(declare-fun m!3255465 () Bool)

(assert (=> b!2825272 m!3255465))

(declare-fun m!3255467 () Bool)

(assert (=> b!2825274 m!3255467))

(assert (=> d!820096 m!3255293))

(assert (=> d!820096 m!3255293))

(declare-fun m!3255469 () Bool)

(assert (=> d!820096 m!3255469))

(declare-fun m!3255471 () Bool)

(assert (=> d!820096 m!3255471))

(assert (=> d!820096 m!3255263))

(declare-fun m!3255473 () Bool)

(assert (=> b!2825273 m!3255473))

(declare-fun m!3255475 () Bool)

(assert (=> b!2825273 m!3255475))

(assert (=> b!2825273 m!3255293))

(assert (=> b!2825273 m!3255293))

(declare-fun m!3255477 () Bool)

(assert (=> b!2825273 m!3255477))

(declare-fun m!3255479 () Bool)

(assert (=> b!2825273 m!3255479))

(declare-fun m!3255481 () Bool)

(assert (=> b!2825271 m!3255481))

(assert (=> b!2825068 d!820096))

(declare-fun d!820112 () Bool)

(declare-fun res!1175772 () Bool)

(declare-fun e!1787904 () Bool)

(assert (=> d!820112 (=> (not res!1175772) (not e!1787904))))

(declare-fun rulesValid!1835 (LexerInterface!4563 List!33300) Bool)

(assert (=> d!820112 (= res!1175772 (rulesValid!1835 thiss!27755 rules!4424))))

(assert (=> d!820112 (= (rulesInvariant!3981 thiss!27755 rules!4424) e!1787904)))

(declare-fun b!2825280 () Bool)

(declare-datatypes ((List!33306 0))(
  ( (Nil!33182) (Cons!33182 (h!38602 String!36468) (t!230923 List!33306)) )
))
(declare-fun noDuplicateTag!1831 (LexerInterface!4563 List!33300 List!33306) Bool)

(assert (=> b!2825280 (= e!1787904 (noDuplicateTag!1831 thiss!27755 rules!4424 Nil!33182))))

(assert (= (and d!820112 res!1175772) b!2825280))

(declare-fun m!3255483 () Bool)

(assert (=> d!820112 m!3255483))

(declare-fun m!3255485 () Bool)

(assert (=> b!2825280 m!3255485))

(assert (=> b!2825062 d!820112))

(declare-fun d!820114 () Bool)

(assert (=> d!820114 (= (isEmpty!18349 rules!4424) (is-Nil!33176 rules!4424))))

(assert (=> b!2825061 d!820114))

(declare-fun d!820116 () Bool)

(declare-fun lt!1008081 () Bool)

(declare-fun e!1787906 () Bool)

(assert (=> d!820116 (= lt!1008081 e!1787906)))

(declare-fun res!1175774 () Bool)

(assert (=> d!820116 (=> (not res!1175774) (not e!1787906))))

(assert (=> d!820116 (= res!1175774 (= (list!12433 (_1!19800 (lex!2003 thiss!27755 rules!4424 (print!1722 thiss!27755 (singletonSeq!2148 (h!38597 lt!1007982)))))) (list!12433 (singletonSeq!2148 (h!38597 lt!1007982)))))))

(declare-fun e!1787905 () Bool)

(assert (=> d!820116 (= lt!1008081 e!1787905)))

(declare-fun res!1175773 () Bool)

(assert (=> d!820116 (=> (not res!1175773) (not e!1787905))))

(declare-fun lt!1008080 () tuple2!33414)

(assert (=> d!820116 (= res!1175773 (= (size!25839 (_1!19800 lt!1008080)) 1))))

(assert (=> d!820116 (= lt!1008080 (lex!2003 thiss!27755 rules!4424 (print!1722 thiss!27755 (singletonSeq!2148 (h!38597 lt!1007982)))))))

(assert (=> d!820116 (not (isEmpty!18349 rules!4424))))

(assert (=> d!820116 (= (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 lt!1007982)) lt!1008081)))

(declare-fun b!2825281 () Bool)

(declare-fun res!1175775 () Bool)

(assert (=> b!2825281 (=> (not res!1175775) (not e!1787905))))

(assert (=> b!2825281 (= res!1175775 (= (apply!7747 (_1!19800 lt!1008080) 0) (h!38597 lt!1007982)))))

(declare-fun b!2825282 () Bool)

(assert (=> b!2825282 (= e!1787905 (isEmpty!18351 (_2!19800 lt!1008080)))))

(declare-fun b!2825283 () Bool)

(assert (=> b!2825283 (= e!1787906 (isEmpty!18351 (_2!19800 (lex!2003 thiss!27755 rules!4424 (print!1722 thiss!27755 (singletonSeq!2148 (h!38597 lt!1007982)))))))))

(assert (= (and d!820116 res!1175773) b!2825281))

(assert (= (and b!2825281 res!1175775) b!2825282))

(assert (= (and d!820116 res!1175774) b!2825283))

(declare-fun m!3255487 () Bool)

(assert (=> d!820116 m!3255487))

(assert (=> d!820116 m!3255263))

(declare-fun m!3255489 () Bool)

(assert (=> d!820116 m!3255489))

(declare-fun m!3255491 () Bool)

(assert (=> d!820116 m!3255491))

(declare-fun m!3255493 () Bool)

(assert (=> d!820116 m!3255493))

(assert (=> d!820116 m!3255489))

(declare-fun m!3255495 () Bool)

(assert (=> d!820116 m!3255495))

(assert (=> d!820116 m!3255493))

(assert (=> d!820116 m!3255493))

(declare-fun m!3255497 () Bool)

(assert (=> d!820116 m!3255497))

(declare-fun m!3255499 () Bool)

(assert (=> b!2825281 m!3255499))

(declare-fun m!3255501 () Bool)

(assert (=> b!2825282 m!3255501))

(assert (=> b!2825283 m!3255493))

(assert (=> b!2825283 m!3255493))

(assert (=> b!2825283 m!3255489))

(assert (=> b!2825283 m!3255489))

(assert (=> b!2825283 m!3255491))

(declare-fun m!3255503 () Bool)

(assert (=> b!2825283 m!3255503))

(assert (=> b!2825072 d!820116))

(declare-fun d!820118 () Bool)

(assert (=> d!820118 (= (inv!45106 (tag!5476 (h!38596 rules!4424))) (= (mod (str.len (value!160022 (tag!5476 (h!38596 rules!4424)))) 2) 0))))

(assert (=> b!2825071 d!820118))

(declare-fun d!820120 () Bool)

(declare-fun res!1175778 () Bool)

(declare-fun e!1787909 () Bool)

(assert (=> d!820120 (=> (not res!1175778) (not e!1787909))))

(declare-fun semiInverseModEq!2065 (Int Int) Bool)

(assert (=> d!820120 (= res!1175778 (semiInverseModEq!2065 (toChars!6853 (transformation!4972 (h!38596 rules!4424))) (toValue!6994 (transformation!4972 (h!38596 rules!4424)))))))

(assert (=> d!820120 (= (inv!45110 (transformation!4972 (h!38596 rules!4424))) e!1787909)))

(declare-fun b!2825286 () Bool)

(declare-fun equivClasses!1964 (Int Int) Bool)

(assert (=> b!2825286 (= e!1787909 (equivClasses!1964 (toChars!6853 (transformation!4972 (h!38596 rules!4424))) (toValue!6994 (transformation!4972 (h!38596 rules!4424)))))))

(assert (= (and d!820120 res!1175778) b!2825286))

(declare-fun m!3255505 () Bool)

(assert (=> d!820120 m!3255505))

(declare-fun m!3255507 () Bool)

(assert (=> b!2825286 m!3255507))

(assert (=> b!2825071 d!820120))

(declare-fun d!820122 () Bool)

(declare-fun c!457418 () Bool)

(assert (=> d!820122 (= c!457418 (is-IntegerValue!15606 (value!160023 (h!38597 l!6581))))))

(declare-fun e!1787917 () Bool)

(assert (=> d!820122 (= (inv!21 (value!160023 (h!38597 l!6581))) e!1787917)))

(declare-fun b!2825297 () Bool)

(declare-fun e!1787916 () Bool)

(declare-fun inv!15 (TokenValue!5202) Bool)

(assert (=> b!2825297 (= e!1787916 (inv!15 (value!160023 (h!38597 l!6581))))))

(declare-fun b!2825298 () Bool)

(declare-fun e!1787918 () Bool)

(assert (=> b!2825298 (= e!1787917 e!1787918)))

(declare-fun c!457419 () Bool)

(assert (=> b!2825298 (= c!457419 (is-IntegerValue!15607 (value!160023 (h!38597 l!6581))))))

(declare-fun b!2825299 () Bool)

(declare-fun inv!16 (TokenValue!5202) Bool)

(assert (=> b!2825299 (= e!1787917 (inv!16 (value!160023 (h!38597 l!6581))))))

(declare-fun b!2825300 () Bool)

(declare-fun res!1175781 () Bool)

(assert (=> b!2825300 (=> res!1175781 e!1787916)))

(assert (=> b!2825300 (= res!1175781 (not (is-IntegerValue!15608 (value!160023 (h!38597 l!6581)))))))

(assert (=> b!2825300 (= e!1787918 e!1787916)))

(declare-fun b!2825301 () Bool)

(declare-fun inv!17 (TokenValue!5202) Bool)

(assert (=> b!2825301 (= e!1787918 (inv!17 (value!160023 (h!38597 l!6581))))))

(assert (= (and d!820122 c!457418) b!2825299))

(assert (= (and d!820122 (not c!457418)) b!2825298))

(assert (= (and b!2825298 c!457419) b!2825301))

(assert (= (and b!2825298 (not c!457419)) b!2825300))

(assert (= (and b!2825300 (not res!1175781)) b!2825297))

(declare-fun m!3255509 () Bool)

(assert (=> b!2825297 m!3255509))

(declare-fun m!3255511 () Bool)

(assert (=> b!2825299 m!3255511))

(declare-fun m!3255513 () Bool)

(assert (=> b!2825301 m!3255513))

(assert (=> b!2825075 d!820122))

(declare-fun d!820124 () Bool)

(declare-fun res!1175782 () Bool)

(declare-fun e!1787919 () Bool)

(assert (=> d!820124 (=> res!1175782 e!1787919)))

(assert (=> d!820124 (= res!1175782 (or (not (is-Cons!33177 lt!1007982)) (not (is-Cons!33177 (t!230898 lt!1007982)))))))

(assert (=> d!820124 (= (tokensListTwoByTwoPredicateSeparableList!700 thiss!27755 lt!1007982 rules!4424) e!1787919)))

(declare-fun b!2825302 () Bool)

(declare-fun e!1787920 () Bool)

(assert (=> b!2825302 (= e!1787919 e!1787920)))

(declare-fun res!1175783 () Bool)

(assert (=> b!2825302 (=> (not res!1175783) (not e!1787920))))

(assert (=> b!2825302 (= res!1175783 (separableTokensPredicate!905 thiss!27755 (h!38597 lt!1007982) (h!38597 (t!230898 lt!1007982)) rules!4424))))

(declare-fun lt!1008085 () Unit!47191)

(declare-fun Unit!47199 () Unit!47191)

(assert (=> b!2825302 (= lt!1008085 Unit!47199)))

(assert (=> b!2825302 (> (size!25840 (charsOf!3080 (h!38597 (t!230898 lt!1007982)))) 0)))

(declare-fun lt!1008087 () Unit!47191)

(declare-fun Unit!47200 () Unit!47191)

(assert (=> b!2825302 (= lt!1008087 Unit!47200)))

(assert (=> b!2825302 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 (t!230898 lt!1007982)))))

(declare-fun lt!1008086 () Unit!47191)

(declare-fun Unit!47201 () Unit!47191)

(assert (=> b!2825302 (= lt!1008086 Unit!47201)))

(assert (=> b!2825302 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 lt!1007982))))

(declare-fun lt!1008088 () Unit!47191)

(declare-fun lt!1008082 () Unit!47191)

(assert (=> b!2825302 (= lt!1008088 lt!1008082)))

(assert (=> b!2825302 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 (t!230898 lt!1007982)))))

(assert (=> b!2825302 (= lt!1008082 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!719 thiss!27755 rules!4424 lt!1007982 (h!38597 (t!230898 lt!1007982))))))

(declare-fun lt!1008083 () Unit!47191)

(declare-fun lt!1008084 () Unit!47191)

(assert (=> b!2825302 (= lt!1008083 lt!1008084)))

(assert (=> b!2825302 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 lt!1007982))))

(assert (=> b!2825302 (= lt!1008084 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!719 thiss!27755 rules!4424 lt!1007982 (h!38597 lt!1007982)))))

(declare-fun b!2825303 () Bool)

(assert (=> b!2825303 (= e!1787920 (tokensListTwoByTwoPredicateSeparableList!700 thiss!27755 (Cons!33177 (h!38597 (t!230898 lt!1007982)) (t!230898 (t!230898 lt!1007982))) rules!4424))))

(assert (= (and d!820124 (not res!1175782)) b!2825302))

(assert (= (and b!2825302 res!1175783) b!2825303))

(declare-fun m!3255515 () Bool)

(assert (=> b!2825302 m!3255515))

(declare-fun m!3255517 () Bool)

(assert (=> b!2825302 m!3255517))

(assert (=> b!2825302 m!3255281))

(declare-fun m!3255519 () Bool)

(assert (=> b!2825302 m!3255519))

(declare-fun m!3255521 () Bool)

(assert (=> b!2825302 m!3255521))

(assert (=> b!2825302 m!3255519))

(declare-fun m!3255523 () Bool)

(assert (=> b!2825302 m!3255523))

(declare-fun m!3255525 () Bool)

(assert (=> b!2825302 m!3255525))

(declare-fun m!3255527 () Bool)

(assert (=> b!2825303 m!3255527))

(assert (=> b!2825064 d!820124))

(declare-fun bs!517894 () Bool)

(declare-fun d!820126 () Bool)

(assert (= bs!517894 (and d!820126 b!2825068)))

(declare-fun lambda!103782 () Int)

(assert (=> bs!517894 (= (= thiss!27755 Lexer!4561) (= lambda!103782 lambda!103766))))

(declare-fun bs!517895 () Bool)

(assert (= bs!517895 (and d!820126 d!820080)))

(assert (=> bs!517895 (= lambda!103782 lambda!103777)))

(declare-fun bs!517896 () Bool)

(assert (= bs!517896 (and d!820126 d!820092)))

(assert (=> bs!517896 (= lambda!103782 lambda!103778)))

(declare-fun bs!517897 () Bool)

(assert (= bs!517897 (and d!820126 b!2825273)))

(assert (=> bs!517897 (= (= thiss!27755 Lexer!4561) (= lambda!103782 lambda!103781))))

(declare-fun b!2825308 () Bool)

(declare-fun e!1787925 () Bool)

(assert (=> b!2825308 (= e!1787925 true)))

(declare-fun b!2825307 () Bool)

(declare-fun e!1787924 () Bool)

(assert (=> b!2825307 (= e!1787924 e!1787925)))

(declare-fun b!2825306 () Bool)

(declare-fun e!1787923 () Bool)

(assert (=> b!2825306 (= e!1787923 e!1787924)))

(assert (=> d!820126 e!1787923))

(assert (= b!2825307 b!2825308))

(assert (= b!2825306 b!2825307))

(assert (= (and d!820126 (is-Cons!33176 rules!4424)) b!2825306))

(assert (=> b!2825308 (< (dynLambda!13925 order!17685 (toValue!6994 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103782))))

(assert (=> b!2825308 (< (dynLambda!13927 order!17689 (toChars!6853 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103782))))

(assert (=> d!820126 true))

(declare-fun lt!1008089 () Bool)

(assert (=> d!820126 (= lt!1008089 (forall!6802 (t!230898 lt!1007982) lambda!103782))))

(declare-fun e!1787922 () Bool)

(assert (=> d!820126 (= lt!1008089 e!1787922)))

(declare-fun res!1175785 () Bool)

(assert (=> d!820126 (=> res!1175785 e!1787922)))

(assert (=> d!820126 (= res!1175785 (not (is-Cons!33177 (t!230898 lt!1007982))))))

(assert (=> d!820126 (not (isEmpty!18349 rules!4424))))

(assert (=> d!820126 (= (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 (t!230898 lt!1007982)) lt!1008089)))

(declare-fun b!2825304 () Bool)

(declare-fun e!1787921 () Bool)

(assert (=> b!2825304 (= e!1787922 e!1787921)))

(declare-fun res!1175784 () Bool)

(assert (=> b!2825304 (=> (not res!1175784) (not e!1787921))))

(assert (=> b!2825304 (= res!1175784 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 (t!230898 lt!1007982))))))

(declare-fun b!2825305 () Bool)

(assert (=> b!2825305 (= e!1787921 (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 (t!230898 (t!230898 lt!1007982))))))

(assert (= (and d!820126 (not res!1175785)) b!2825304))

(assert (= (and b!2825304 res!1175784) b!2825305))

(declare-fun m!3255529 () Bool)

(assert (=> d!820126 m!3255529))

(assert (=> d!820126 m!3255263))

(assert (=> b!2825304 m!3255515))

(declare-fun m!3255531 () Bool)

(assert (=> b!2825305 m!3255531))

(assert (=> b!2825063 d!820126))

(declare-fun bs!517898 () Bool)

(declare-fun d!820128 () Bool)

(assert (= bs!517898 (and d!820128 d!820080)))

(declare-fun lambda!103783 () Int)

(assert (=> bs!517898 (= lambda!103783 lambda!103777)))

(declare-fun bs!517899 () Bool)

(assert (= bs!517899 (and d!820128 b!2825068)))

(assert (=> bs!517899 (= (= thiss!27755 Lexer!4561) (= lambda!103783 lambda!103766))))

(declare-fun bs!517900 () Bool)

(assert (= bs!517900 (and d!820128 d!820126)))

(assert (=> bs!517900 (= lambda!103783 lambda!103782)))

(declare-fun bs!517901 () Bool)

(assert (= bs!517901 (and d!820128 b!2825273)))

(assert (=> bs!517901 (= (= thiss!27755 Lexer!4561) (= lambda!103783 lambda!103781))))

(declare-fun bs!517902 () Bool)

(assert (= bs!517902 (and d!820128 d!820092)))

(assert (=> bs!517902 (= lambda!103783 lambda!103778)))

(declare-fun b!2825313 () Bool)

(declare-fun e!1787930 () Bool)

(assert (=> b!2825313 (= e!1787930 true)))

(declare-fun b!2825312 () Bool)

(declare-fun e!1787929 () Bool)

(assert (=> b!2825312 (= e!1787929 e!1787930)))

(declare-fun b!2825311 () Bool)

(declare-fun e!1787928 () Bool)

(assert (=> b!2825311 (= e!1787928 e!1787929)))

(assert (=> d!820128 e!1787928))

(assert (= b!2825312 b!2825313))

(assert (= b!2825311 b!2825312))

(assert (= (and d!820128 (is-Cons!33176 rules!4424)) b!2825311))

(assert (=> b!2825313 (< (dynLambda!13925 order!17685 (toValue!6994 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103783))))

(assert (=> b!2825313 (< (dynLambda!13927 order!17689 (toChars!6853 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103783))))

(assert (=> d!820128 true))

(declare-fun lt!1008090 () Bool)

(assert (=> d!820128 (= lt!1008090 (forall!6802 (t!230898 lt!1007980) lambda!103783))))

(declare-fun e!1787927 () Bool)

(assert (=> d!820128 (= lt!1008090 e!1787927)))

(declare-fun res!1175787 () Bool)

(assert (=> d!820128 (=> res!1175787 e!1787927)))

(assert (=> d!820128 (= res!1175787 (not (is-Cons!33177 (t!230898 lt!1007980))))))

(assert (=> d!820128 (not (isEmpty!18349 rules!4424))))

(assert (=> d!820128 (= (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 (t!230898 lt!1007980)) lt!1008090)))

(declare-fun b!2825309 () Bool)

(declare-fun e!1787926 () Bool)

(assert (=> b!2825309 (= e!1787927 e!1787926)))

(declare-fun res!1175786 () Bool)

(assert (=> b!2825309 (=> (not res!1175786) (not e!1787926))))

(assert (=> b!2825309 (= res!1175786 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 (t!230898 lt!1007980))))))

(declare-fun b!2825310 () Bool)

(assert (=> b!2825310 (= e!1787926 (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 (t!230898 (t!230898 lt!1007980))))))

(assert (= (and d!820128 (not res!1175787)) b!2825309))

(assert (= (and b!2825309 res!1175786) b!2825310))

(declare-fun m!3255533 () Bool)

(assert (=> d!820128 m!3255533))

(assert (=> d!820128 m!3255263))

(declare-fun m!3255535 () Bool)

(assert (=> b!2825309 m!3255535))

(declare-fun m!3255537 () Bool)

(assert (=> b!2825310 m!3255537))

(assert (=> b!2825074 d!820128))

(declare-fun d!820130 () Bool)

(assert (=> d!820130 (= (inv!45106 (tag!5476 (rule!7400 (h!38597 l!6581)))) (= (mod (str.len (value!160022 (tag!5476 (rule!7400 (h!38597 l!6581))))) 2) 0))))

(assert (=> b!2825073 d!820130))

(declare-fun d!820132 () Bool)

(declare-fun res!1175788 () Bool)

(declare-fun e!1787931 () Bool)

(assert (=> d!820132 (=> (not res!1175788) (not e!1787931))))

(assert (=> d!820132 (= res!1175788 (semiInverseModEq!2065 (toChars!6853 (transformation!4972 (rule!7400 (h!38597 l!6581)))) (toValue!6994 (transformation!4972 (rule!7400 (h!38597 l!6581))))))))

(assert (=> d!820132 (= (inv!45110 (transformation!4972 (rule!7400 (h!38597 l!6581)))) e!1787931)))

(declare-fun b!2825314 () Bool)

(assert (=> b!2825314 (= e!1787931 (equivClasses!1964 (toChars!6853 (transformation!4972 (rule!7400 (h!38597 l!6581)))) (toValue!6994 (transformation!4972 (rule!7400 (h!38597 l!6581))))))))

(assert (= (and d!820132 res!1175788) b!2825314))

(declare-fun m!3255539 () Bool)

(assert (=> d!820132 m!3255539))

(declare-fun m!3255541 () Bool)

(assert (=> b!2825314 m!3255541))

(assert (=> b!2825073 d!820132))

(declare-fun d!820134 () Bool)

(declare-fun res!1175789 () Bool)

(declare-fun e!1787932 () Bool)

(assert (=> d!820134 (=> res!1175789 e!1787932)))

(assert (=> d!820134 (= res!1175789 (or (not (is-Cons!33177 l!6581)) (not (is-Cons!33177 (t!230898 l!6581)))))))

(assert (=> d!820134 (= (tokensListTwoByTwoPredicateSeparableList!700 thiss!27755 l!6581 rules!4424) e!1787932)))

(declare-fun b!2825315 () Bool)

(declare-fun e!1787933 () Bool)

(assert (=> b!2825315 (= e!1787932 e!1787933)))

(declare-fun res!1175790 () Bool)

(assert (=> b!2825315 (=> (not res!1175790) (not e!1787933))))

(assert (=> b!2825315 (= res!1175790 (separableTokensPredicate!905 thiss!27755 (h!38597 l!6581) (h!38597 (t!230898 l!6581)) rules!4424))))

(declare-fun lt!1008094 () Unit!47191)

(declare-fun Unit!47202 () Unit!47191)

(assert (=> b!2825315 (= lt!1008094 Unit!47202)))

(assert (=> b!2825315 (> (size!25840 (charsOf!3080 (h!38597 (t!230898 l!6581)))) 0)))

(declare-fun lt!1008096 () Unit!47191)

(declare-fun Unit!47203 () Unit!47191)

(assert (=> b!2825315 (= lt!1008096 Unit!47203)))

(assert (=> b!2825315 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 (t!230898 l!6581)))))

(declare-fun lt!1008095 () Unit!47191)

(declare-fun Unit!47204 () Unit!47191)

(assert (=> b!2825315 (= lt!1008095 Unit!47204)))

(assert (=> b!2825315 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 l!6581))))

(declare-fun lt!1008097 () Unit!47191)

(declare-fun lt!1008091 () Unit!47191)

(assert (=> b!2825315 (= lt!1008097 lt!1008091)))

(assert (=> b!2825315 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 (t!230898 l!6581)))))

(assert (=> b!2825315 (= lt!1008091 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!719 thiss!27755 rules!4424 l!6581 (h!38597 (t!230898 l!6581))))))

(declare-fun lt!1008092 () Unit!47191)

(declare-fun lt!1008093 () Unit!47191)

(assert (=> b!2825315 (= lt!1008092 lt!1008093)))

(assert (=> b!2825315 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 l!6581))))

(assert (=> b!2825315 (= lt!1008093 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!719 thiss!27755 rules!4424 l!6581 (h!38597 l!6581)))))

(declare-fun b!2825316 () Bool)

(assert (=> b!2825316 (= e!1787933 (tokensListTwoByTwoPredicateSeparableList!700 thiss!27755 (Cons!33177 (h!38597 (t!230898 l!6581)) (t!230898 (t!230898 l!6581))) rules!4424))))

(assert (= (and d!820134 (not res!1175789)) b!2825315))

(assert (= (and b!2825315 res!1175790) b!2825316))

(assert (=> b!2825315 m!3255373))

(declare-fun m!3255543 () Bool)

(assert (=> b!2825315 m!3255543))

(declare-fun m!3255545 () Bool)

(assert (=> b!2825315 m!3255545))

(declare-fun m!3255547 () Bool)

(assert (=> b!2825315 m!3255547))

(declare-fun m!3255549 () Bool)

(assert (=> b!2825315 m!3255549))

(assert (=> b!2825315 m!3255547))

(declare-fun m!3255551 () Bool)

(assert (=> b!2825315 m!3255551))

(declare-fun m!3255553 () Bool)

(assert (=> b!2825315 m!3255553))

(declare-fun m!3255555 () Bool)

(assert (=> b!2825316 m!3255555))

(assert (=> b!2825067 d!820134))

(declare-fun d!820136 () Bool)

(declare-fun res!1175795 () Bool)

(declare-fun e!1787936 () Bool)

(assert (=> d!820136 (=> (not res!1175795) (not e!1787936))))

(declare-fun isEmpty!18352 (List!33299) Bool)

(assert (=> d!820136 (= res!1175795 (not (isEmpty!18352 (originalCharacters!5704 (h!38597 l!6581)))))))

(assert (=> d!820136 (= (inv!45109 (h!38597 l!6581)) e!1787936)))

(declare-fun b!2825321 () Bool)

(declare-fun res!1175796 () Bool)

(assert (=> b!2825321 (=> (not res!1175796) (not e!1787936))))

(declare-fun list!12434 (BalanceConc!20236) List!33299)

(declare-fun dynLambda!13932 (Int TokenValue!5202) BalanceConc!20236)

(assert (=> b!2825321 (= res!1175796 (= (originalCharacters!5704 (h!38597 l!6581)) (list!12434 (dynLambda!13932 (toChars!6853 (transformation!4972 (rule!7400 (h!38597 l!6581)))) (value!160023 (h!38597 l!6581))))))))

(declare-fun b!2825322 () Bool)

(declare-fun size!25842 (List!33299) Int)

(assert (=> b!2825322 (= e!1787936 (= (size!25837 (h!38597 l!6581)) (size!25842 (originalCharacters!5704 (h!38597 l!6581)))))))

(assert (= (and d!820136 res!1175795) b!2825321))

(assert (= (and b!2825321 res!1175796) b!2825322))

(declare-fun b_lambda!84687 () Bool)

(assert (=> (not b_lambda!84687) (not b!2825321)))

(declare-fun t!230915 () Bool)

(declare-fun tb!154005 () Bool)

(assert (=> (and b!2825060 (= (toChars!6853 (transformation!4972 (h!38596 rules!4424))) (toChars!6853 (transformation!4972 (rule!7400 (h!38597 l!6581))))) t!230915) tb!154005))

(declare-fun b!2825327 () Bool)

(declare-fun e!1787939 () Bool)

(declare-fun tp!902383 () Bool)

(declare-fun inv!45113 (Conc!10299) Bool)

(assert (=> b!2825327 (= e!1787939 (and (inv!45113 (c!457392 (dynLambda!13932 (toChars!6853 (transformation!4972 (rule!7400 (h!38597 l!6581)))) (value!160023 (h!38597 l!6581))))) tp!902383))))

(declare-fun result!191842 () Bool)

(declare-fun inv!45114 (BalanceConc!20236) Bool)

(assert (=> tb!154005 (= result!191842 (and (inv!45114 (dynLambda!13932 (toChars!6853 (transformation!4972 (rule!7400 (h!38597 l!6581)))) (value!160023 (h!38597 l!6581)))) e!1787939))))

(assert (= tb!154005 b!2825327))

(declare-fun m!3255557 () Bool)

(assert (=> b!2825327 m!3255557))

(declare-fun m!3255559 () Bool)

(assert (=> tb!154005 m!3255559))

(assert (=> b!2825321 t!230915))

(declare-fun b_and!206487 () Bool)

(assert (= b_and!206473 (and (=> t!230915 result!191842) b_and!206487)))

(declare-fun t!230917 () Bool)

(declare-fun tb!154007 () Bool)

(assert (=> (and b!2825069 (= (toChars!6853 (transformation!4972 (rule!7400 (h!38597 l!6581)))) (toChars!6853 (transformation!4972 (rule!7400 (h!38597 l!6581))))) t!230917) tb!154007))

(declare-fun result!191846 () Bool)

(assert (= result!191846 result!191842))

(assert (=> b!2825321 t!230917))

(declare-fun b_and!206489 () Bool)

(assert (= b_and!206477 (and (=> t!230917 result!191846) b_and!206489)))

(declare-fun m!3255561 () Bool)

(assert (=> d!820136 m!3255561))

(declare-fun m!3255563 () Bool)

(assert (=> b!2825321 m!3255563))

(assert (=> b!2825321 m!3255563))

(declare-fun m!3255565 () Bool)

(assert (=> b!2825321 m!3255565))

(declare-fun m!3255567 () Bool)

(assert (=> b!2825322 m!3255567))

(assert (=> b!2825056 d!820136))

(declare-fun bs!517903 () Bool)

(declare-fun d!820138 () Bool)

(assert (= bs!517903 (and d!820138 d!820080)))

(declare-fun lambda!103784 () Int)

(assert (=> bs!517903 (= lambda!103784 lambda!103777)))

(declare-fun bs!517904 () Bool)

(assert (= bs!517904 (and d!820138 d!820128)))

(assert (=> bs!517904 (= lambda!103784 lambda!103783)))

(declare-fun bs!517905 () Bool)

(assert (= bs!517905 (and d!820138 b!2825068)))

(assert (=> bs!517905 (= (= thiss!27755 Lexer!4561) (= lambda!103784 lambda!103766))))

(declare-fun bs!517906 () Bool)

(assert (= bs!517906 (and d!820138 d!820126)))

(assert (=> bs!517906 (= lambda!103784 lambda!103782)))

(declare-fun bs!517907 () Bool)

(assert (= bs!517907 (and d!820138 b!2825273)))

(assert (=> bs!517907 (= (= thiss!27755 Lexer!4561) (= lambda!103784 lambda!103781))))

(declare-fun bs!517908 () Bool)

(assert (= bs!517908 (and d!820138 d!820092)))

(assert (=> bs!517908 (= lambda!103784 lambda!103778)))

(declare-fun b!2825332 () Bool)

(declare-fun e!1787944 () Bool)

(assert (=> b!2825332 (= e!1787944 true)))

(declare-fun b!2825331 () Bool)

(declare-fun e!1787943 () Bool)

(assert (=> b!2825331 (= e!1787943 e!1787944)))

(declare-fun b!2825330 () Bool)

(declare-fun e!1787942 () Bool)

(assert (=> b!2825330 (= e!1787942 e!1787943)))

(assert (=> d!820138 e!1787942))

(assert (= b!2825331 b!2825332))

(assert (= b!2825330 b!2825331))

(assert (= (and d!820138 (is-Cons!33176 rules!4424)) b!2825330))

(assert (=> b!2825332 (< (dynLambda!13925 order!17685 (toValue!6994 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103784))))

(assert (=> b!2825332 (< (dynLambda!13927 order!17689 (toChars!6853 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103784))))

(assert (=> d!820138 true))

(declare-fun lt!1008098 () Bool)

(assert (=> d!820138 (= lt!1008098 (forall!6802 l!6581 lambda!103784))))

(declare-fun e!1787941 () Bool)

(assert (=> d!820138 (= lt!1008098 e!1787941)))

(declare-fun res!1175798 () Bool)

(assert (=> d!820138 (=> res!1175798 e!1787941)))

(assert (=> d!820138 (= res!1175798 (not (is-Cons!33177 l!6581)))))

(assert (=> d!820138 (not (isEmpty!18349 rules!4424))))

(assert (=> d!820138 (= (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 l!6581) lt!1008098)))

(declare-fun b!2825328 () Bool)

(declare-fun e!1787940 () Bool)

(assert (=> b!2825328 (= e!1787941 e!1787940)))

(declare-fun res!1175797 () Bool)

(assert (=> b!2825328 (=> (not res!1175797) (not e!1787940))))

(assert (=> b!2825328 (= res!1175797 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 l!6581)))))

(declare-fun b!2825329 () Bool)

(assert (=> b!2825329 (= e!1787940 (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 (t!230898 l!6581)))))

(assert (= (and d!820138 (not res!1175798)) b!2825328))

(assert (= (and b!2825328 res!1175797) b!2825329))

(declare-fun m!3255569 () Bool)

(assert (=> d!820138 m!3255569))

(assert (=> d!820138 m!3255263))

(assert (=> b!2825328 m!3255545))

(assert (=> b!2825329 m!3255261))

(assert (=> b!2825066 d!820138))

(declare-fun bs!517909 () Bool)

(declare-fun d!820140 () Bool)

(assert (= bs!517909 (and d!820140 d!820080)))

(declare-fun lambda!103785 () Int)

(assert (=> bs!517909 (= lambda!103785 lambda!103777)))

(declare-fun bs!517910 () Bool)

(assert (= bs!517910 (and d!820140 d!820128)))

(assert (=> bs!517910 (= lambda!103785 lambda!103783)))

(declare-fun bs!517911 () Bool)

(assert (= bs!517911 (and d!820140 b!2825068)))

(assert (=> bs!517911 (= (= thiss!27755 Lexer!4561) (= lambda!103785 lambda!103766))))

(declare-fun bs!517912 () Bool)

(assert (= bs!517912 (and d!820140 d!820126)))

(assert (=> bs!517912 (= lambda!103785 lambda!103782)))

(declare-fun bs!517913 () Bool)

(assert (= bs!517913 (and d!820140 d!820138)))

(assert (=> bs!517913 (= lambda!103785 lambda!103784)))

(declare-fun bs!517914 () Bool)

(assert (= bs!517914 (and d!820140 b!2825273)))

(assert (=> bs!517914 (= (= thiss!27755 Lexer!4561) (= lambda!103785 lambda!103781))))

(declare-fun bs!517915 () Bool)

(assert (= bs!517915 (and d!820140 d!820092)))

(assert (=> bs!517915 (= lambda!103785 lambda!103778)))

(declare-fun b!2825337 () Bool)

(declare-fun e!1787949 () Bool)

(assert (=> b!2825337 (= e!1787949 true)))

(declare-fun b!2825336 () Bool)

(declare-fun e!1787948 () Bool)

(assert (=> b!2825336 (= e!1787948 e!1787949)))

(declare-fun b!2825335 () Bool)

(declare-fun e!1787947 () Bool)

(assert (=> b!2825335 (= e!1787947 e!1787948)))

(assert (=> d!820140 e!1787947))

(assert (= b!2825336 b!2825337))

(assert (= b!2825335 b!2825336))

(assert (= (and d!820140 (is-Cons!33176 rules!4424)) b!2825335))

(assert (=> b!2825337 (< (dynLambda!13925 order!17685 (toValue!6994 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103785))))

(assert (=> b!2825337 (< (dynLambda!13927 order!17689 (toChars!6853 (transformation!4972 (h!38596 rules!4424)))) (dynLambda!13926 order!17687 lambda!103785))))

(assert (=> d!820140 true))

(declare-fun lt!1008099 () Bool)

(assert (=> d!820140 (= lt!1008099 (forall!6802 (t!230898 l!6581) lambda!103785))))

(declare-fun e!1787946 () Bool)

(assert (=> d!820140 (= lt!1008099 e!1787946)))

(declare-fun res!1175800 () Bool)

(assert (=> d!820140 (=> res!1175800 e!1787946)))

(assert (=> d!820140 (= res!1175800 (not (is-Cons!33177 (t!230898 l!6581))))))

(assert (=> d!820140 (not (isEmpty!18349 rules!4424))))

(assert (=> d!820140 (= (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 (t!230898 l!6581)) lt!1008099)))

(declare-fun b!2825333 () Bool)

(declare-fun e!1787945 () Bool)

(assert (=> b!2825333 (= e!1787946 e!1787945)))

(declare-fun res!1175799 () Bool)

(assert (=> b!2825333 (=> (not res!1175799) (not e!1787945))))

(assert (=> b!2825333 (= res!1175799 (rulesProduceIndividualToken!2101 thiss!27755 rules!4424 (h!38597 (t!230898 l!6581))))))

(declare-fun b!2825334 () Bool)

(assert (=> b!2825334 (= e!1787945 (rulesProduceEachTokenIndividuallyList!1615 thiss!27755 rules!4424 (t!230898 (t!230898 l!6581))))))

(assert (= (and d!820140 (not res!1175800)) b!2825333))

(assert (= (and b!2825333 res!1175799) b!2825334))

(declare-fun m!3255571 () Bool)

(assert (=> d!820140 m!3255571))

(assert (=> d!820140 m!3255263))

(assert (=> b!2825333 m!3255373))

(declare-fun m!3255573 () Bool)

(assert (=> b!2825334 m!3255573))

(assert (=> b!2825065 d!820140))

(declare-fun b!2825348 () Bool)

(declare-fun b_free!80973 () Bool)

(declare-fun b_next!81677 () Bool)

(assert (=> b!2825348 (= b_free!80973 (not b_next!81677))))

(declare-fun tp!902393 () Bool)

(declare-fun b_and!206491 () Bool)

(assert (=> b!2825348 (= tp!902393 b_and!206491)))

(declare-fun b_free!80975 () Bool)

(declare-fun b_next!81679 () Bool)

(assert (=> b!2825348 (= b_free!80975 (not b_next!81679))))

(declare-fun tb!154009 () Bool)

(declare-fun t!230919 () Bool)

(assert (=> (and b!2825348 (= (toChars!6853 (transformation!4972 (h!38596 (t!230897 rules!4424)))) (toChars!6853 (transformation!4972 (rule!7400 (h!38597 l!6581))))) t!230919) tb!154009))

(declare-fun result!191850 () Bool)

(assert (= result!191850 result!191842))

(assert (=> b!2825321 t!230919))

(declare-fun b_and!206493 () Bool)

(declare-fun tp!902392 () Bool)

(assert (=> b!2825348 (= tp!902392 (and (=> t!230919 result!191850) b_and!206493))))

(declare-fun e!1787961 () Bool)

(assert (=> b!2825348 (= e!1787961 (and tp!902393 tp!902392))))

(declare-fun tp!902394 () Bool)

(declare-fun e!1787959 () Bool)

(declare-fun b!2825347 () Bool)

(assert (=> b!2825347 (= e!1787959 (and tp!902394 (inv!45106 (tag!5476 (h!38596 (t!230897 rules!4424)))) (inv!45110 (transformation!4972 (h!38596 (t!230897 rules!4424)))) e!1787961))))

(declare-fun b!2825346 () Bool)

(declare-fun e!1787958 () Bool)

(declare-fun tp!902395 () Bool)

(assert (=> b!2825346 (= e!1787958 (and e!1787959 tp!902395))))

(assert (=> b!2825057 (= tp!902352 e!1787958)))

(assert (= b!2825347 b!2825348))

(assert (= b!2825346 b!2825347))

(assert (= (and b!2825057 (is-Cons!33176 (t!230897 rules!4424))) b!2825346))

(declare-fun m!3255575 () Bool)

(assert (=> b!2825347 m!3255575))

(declare-fun m!3255577 () Bool)

(assert (=> b!2825347 m!3255577))

(declare-fun b!2825360 () Bool)

(declare-fun e!1787964 () Bool)

(declare-fun tp!902410 () Bool)

(declare-fun tp!902408 () Bool)

(assert (=> b!2825360 (= e!1787964 (and tp!902410 tp!902408))))

(declare-fun b!2825359 () Bool)

(declare-fun tp_is_empty!14477 () Bool)

(assert (=> b!2825359 (= e!1787964 tp_is_empty!14477)))

(declare-fun b!2825361 () Bool)

(declare-fun tp!902409 () Bool)

(assert (=> b!2825361 (= e!1787964 tp!902409)))

(assert (=> b!2825071 (= tp!902347 e!1787964)))

(declare-fun b!2825362 () Bool)

(declare-fun tp!902406 () Bool)

(declare-fun tp!902407 () Bool)

(assert (=> b!2825362 (= e!1787964 (and tp!902406 tp!902407))))

(assert (= (and b!2825071 (is-ElementMatch!8362 (regex!4972 (h!38596 rules!4424)))) b!2825359))

(assert (= (and b!2825071 (is-Concat!13565 (regex!4972 (h!38596 rules!4424)))) b!2825360))

(assert (= (and b!2825071 (is-Star!8362 (regex!4972 (h!38596 rules!4424)))) b!2825361))

(assert (= (and b!2825071 (is-Union!8362 (regex!4972 (h!38596 rules!4424)))) b!2825362))

(declare-fun b!2825367 () Bool)

(declare-fun e!1787967 () Bool)

(declare-fun tp!902413 () Bool)

(assert (=> b!2825367 (= e!1787967 (and tp_is_empty!14477 tp!902413))))

(assert (=> b!2825075 (= tp!902345 e!1787967)))

(assert (= (and b!2825075 (is-Cons!33175 (originalCharacters!5704 (h!38597 l!6581)))) b!2825367))

(declare-fun b!2825370 () Bool)

(declare-fun e!1787970 () Bool)

(assert (=> b!2825370 (= e!1787970 true)))

(declare-fun b!2825369 () Bool)

(declare-fun e!1787969 () Bool)

(assert (=> b!2825369 (= e!1787969 e!1787970)))

(declare-fun b!2825368 () Bool)

(declare-fun e!1787968 () Bool)

(assert (=> b!2825368 (= e!1787968 e!1787969)))

(assert (=> b!2825084 e!1787968))

(assert (= b!2825369 b!2825370))

(assert (= b!2825368 b!2825369))

(assert (= (and b!2825084 (is-Cons!33176 (t!230897 rules!4424))) b!2825368))

(assert (=> b!2825370 (< (dynLambda!13925 order!17685 (toValue!6994 (transformation!4972 (h!38596 (t!230897 rules!4424))))) (dynLambda!13926 order!17687 lambda!103766))))

(assert (=> b!2825370 (< (dynLambda!13927 order!17689 (toChars!6853 (transformation!4972 (h!38596 (t!230897 rules!4424))))) (dynLambda!13926 order!17687 lambda!103766))))

(declare-fun b!2825372 () Bool)

(declare-fun e!1787971 () Bool)

(declare-fun tp!902418 () Bool)

(declare-fun tp!902416 () Bool)

(assert (=> b!2825372 (= e!1787971 (and tp!902418 tp!902416))))

(declare-fun b!2825371 () Bool)

(assert (=> b!2825371 (= e!1787971 tp_is_empty!14477)))

(declare-fun b!2825373 () Bool)

(declare-fun tp!902417 () Bool)

(assert (=> b!2825373 (= e!1787971 tp!902417)))

(assert (=> b!2825073 (= tp!902349 e!1787971)))

(declare-fun b!2825374 () Bool)

(declare-fun tp!902414 () Bool)

(declare-fun tp!902415 () Bool)

(assert (=> b!2825374 (= e!1787971 (and tp!902414 tp!902415))))

(assert (= (and b!2825073 (is-ElementMatch!8362 (regex!4972 (rule!7400 (h!38597 l!6581))))) b!2825371))

(assert (= (and b!2825073 (is-Concat!13565 (regex!4972 (rule!7400 (h!38597 l!6581))))) b!2825372))

(assert (= (and b!2825073 (is-Star!8362 (regex!4972 (rule!7400 (h!38597 l!6581))))) b!2825373))

(assert (= (and b!2825073 (is-Union!8362 (regex!4972 (rule!7400 (h!38597 l!6581))))) b!2825374))

(declare-fun b!2825388 () Bool)

(declare-fun b_free!80977 () Bool)

(declare-fun b_next!81681 () Bool)

(assert (=> b!2825388 (= b_free!80977 (not b_next!81681))))

(declare-fun tp!902433 () Bool)

(declare-fun b_and!206495 () Bool)

(assert (=> b!2825388 (= tp!902433 b_and!206495)))

(declare-fun b_free!80979 () Bool)

(declare-fun b_next!81683 () Bool)

(assert (=> b!2825388 (= b_free!80979 (not b_next!81683))))

(declare-fun t!230921 () Bool)

(declare-fun tb!154011 () Bool)

(assert (=> (and b!2825388 (= (toChars!6853 (transformation!4972 (rule!7400 (h!38597 (t!230898 l!6581))))) (toChars!6853 (transformation!4972 (rule!7400 (h!38597 l!6581))))) t!230921) tb!154011))

(declare-fun result!191858 () Bool)

(assert (= result!191858 result!191842))

(assert (=> b!2825321 t!230921))

(declare-fun b_and!206497 () Bool)

(declare-fun tp!902429 () Bool)

(assert (=> b!2825388 (= tp!902429 (and (=> t!230921 result!191858) b_and!206497))))

(declare-fun b!2825387 () Bool)

(declare-fun tp!902431 () Bool)

(declare-fun e!1787985 () Bool)

(declare-fun e!1787987 () Bool)

(assert (=> b!2825387 (= e!1787985 (and tp!902431 (inv!45106 (tag!5476 (rule!7400 (h!38597 (t!230898 l!6581))))) (inv!45110 (transformation!4972 (rule!7400 (h!38597 (t!230898 l!6581))))) e!1787987))))

(declare-fun e!1787988 () Bool)

(declare-fun tp!902432 () Bool)

(declare-fun e!1787986 () Bool)

(declare-fun b!2825385 () Bool)

(assert (=> b!2825385 (= e!1787988 (and (inv!45109 (h!38597 (t!230898 l!6581))) e!1787986 tp!902432))))

(assert (=> b!2825056 (= tp!902350 e!1787988)))

(assert (=> b!2825388 (= e!1787987 (and tp!902433 tp!902429))))

(declare-fun b!2825386 () Bool)

(declare-fun tp!902430 () Bool)

(assert (=> b!2825386 (= e!1787986 (and (inv!21 (value!160023 (h!38597 (t!230898 l!6581)))) e!1787985 tp!902430))))

(assert (= b!2825387 b!2825388))

(assert (= b!2825386 b!2825387))

(assert (= b!2825385 b!2825386))

(assert (= (and b!2825056 (is-Cons!33177 (t!230898 l!6581))) b!2825385))

(declare-fun m!3255579 () Bool)

(assert (=> b!2825387 m!3255579))

(declare-fun m!3255581 () Bool)

(assert (=> b!2825387 m!3255581))

(declare-fun m!3255583 () Bool)

(assert (=> b!2825385 m!3255583))

(declare-fun m!3255585 () Bool)

(assert (=> b!2825386 m!3255585))

(declare-fun b_lambda!84689 () Bool)

(assert (= b_lambda!84683 (or b!2825068 b_lambda!84689)))

(declare-fun bs!517916 () Bool)

(declare-fun d!820142 () Bool)

(assert (= bs!517916 (and d!820142 b!2825068)))

(assert (=> bs!517916 (= (dynLambda!13931 lambda!103766 (h!38597 l!6581)) (rulesProduceIndividualToken!2101 Lexer!4561 rules!4424 (h!38597 l!6581)))))

(declare-fun m!3255587 () Bool)

(assert (=> bs!517916 m!3255587))

(assert (=> b!2825199 d!820142))

(declare-fun b_lambda!84691 () Bool)

(assert (= b_lambda!84687 (or (and b!2825060 b_free!80959 (= (toChars!6853 (transformation!4972 (h!38596 rules!4424))) (toChars!6853 (transformation!4972 (rule!7400 (h!38597 l!6581)))))) (and b!2825069 b_free!80963) (and b!2825348 b_free!80975 (= (toChars!6853 (transformation!4972 (h!38596 (t!230897 rules!4424)))) (toChars!6853 (transformation!4972 (rule!7400 (h!38597 l!6581)))))) (and b!2825388 b_free!80979 (= (toChars!6853 (transformation!4972 (rule!7400 (h!38597 (t!230898 l!6581))))) (toChars!6853 (transformation!4972 (rule!7400 (h!38597 l!6581)))))) b_lambda!84691)))

(declare-fun b_lambda!84693 () Bool)

(assert (= b_lambda!84685 (or b!2825068 b_lambda!84693)))

(declare-fun bs!517917 () Bool)

(declare-fun d!820144 () Bool)

(assert (= bs!517917 (and d!820144 b!2825068)))

(assert (=> bs!517917 (= (dynLambda!13931 lambda!103766 (h!38597 lt!1007982)) (rulesProduceIndividualToken!2101 Lexer!4561 rules!4424 (h!38597 lt!1007982)))))

(declare-fun m!3255589 () Bool)

(assert (=> bs!517917 m!3255589))

(assert (=> b!2825222 d!820144))

(push 1)

(assert (not b_lambda!84691))

(assert (not b!2825314))

(assert tp_is_empty!14477)

(assert (not b!2825275))

(assert (not b!2825166))

(assert (not b!2825335))

(assert (not b!2825286))

(assert (not b_lambda!84693))

(assert b_and!206493)

(assert (not b!2825311))

(assert (not b!2825301))

(assert (not b!2825225))

(assert (not d!820120))

(assert (not b!2825367))

(assert (not b!2825229))

(assert (not b!2825188))

(assert (not b!2825387))

(assert (not d!820132))

(assert b_and!206495)

(assert (not b!2825305))

(assert (not b_next!81681))

(assert (not b!2825330))

(assert (not b_next!81663))

(assert (not b!2825322))

(assert b_and!206487)

(assert (not d!820140))

(assert (not b!2825217))

(assert (not b!2825200))

(assert (not d!820094))

(assert (not d!820074))

(assert (not d!820092))

(assert (not d!820096))

(assert (not d!820116))

(assert (not b!2825281))

(assert (not d!820090))

(assert (not d!820112))

(assert (not b!2825215))

(assert (not b!2825172))

(assert (not b!2825386))

(assert (not b!2825171))

(assert (not b!2825299))

(assert (not b!2825306))

(assert (not b!2825234))

(assert (not b!2825280))

(assert (not b!2825297))

(assert b_and!206489)

(assert (not b!2825274))

(assert (not b_next!81665))

(assert (not b_next!81661))

(assert (not b!2825374))

(assert (not b!2825189))

(assert (not d!820080))

(assert (not b!2825164))

(assert (not b!2825165))

(assert (not d!820086))

(assert (not b!2825315))

(assert (not b_next!81683))

(assert (not b!2825218))

(assert (not b!2825231))

(assert (not b_lambda!84689))

(assert (not b!2825220))

(assert (not b!2825368))

(assert (not b!2825190))

(assert (not b!2825273))

(assert (not b!2825360))

(assert (not b_next!81667))

(assert (not d!820126))

(assert (not b!2825302))

(assert b_and!206491)

(assert (not b!2825316))

(assert (not b!2825327))

(assert b_and!206497)

(assert (not d!820128))

(assert (not b_next!81679))

(assert (not b!2825283))

(assert (not bs!517917))

(assert (not b_next!81677))

(assert (not b!2825347))

(assert (not b!2825329))

(assert (not b!2825333))

(assert (not b!2825361))

(assert (not b!2825321))

(assert (not bs!517916))

(assert (not b!2825310))

(assert (not d!820136))

(assert (not b!2825309))

(assert (not b!2825372))

(assert (not b!2825334))

(assert (not b!2825328))

(assert (not b!2825232))

(assert (not d!820138))

(assert (not b!2825223))

(assert (not b!2825282))

(assert b_and!206475)

(assert b_and!206471)

(assert (not b!2825303))

(assert (not b!2825224))

(assert (not b!2825373))

(assert (not b!2825304))

(assert (not b!2825385))

(assert (not b!2825226))

(assert (not b!2825362))

(assert (not b!2825346))

(assert (not b!2825271))

(assert (not tb!154005))

(assert (not b!2825272))

(check-sat)

(pop 1)

(push 1)

(assert b_and!206493)

(assert b_and!206487)

(assert (not b_next!81661))

(assert (not b_next!81683))

(assert (not b_next!81667))

(assert b_and!206491)

(assert b_and!206495)

(assert (not b_next!81681))

(assert (not b_next!81663))

(assert (not b_next!81665))

(assert b_and!206489)

(assert b_and!206497)

(assert (not b_next!81679))

(assert (not b_next!81677))

(assert b_and!206475)

(assert b_and!206471)

(check-sat)

(pop 1)

