; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!196906 () Bool)

(assert start!196906)

(declare-fun b!2004733 () Bool)

(declare-fun b_free!55877 () Bool)

(declare-fun b_next!56581 () Bool)

(assert (=> b!2004733 (= b_free!55877 (not b_next!56581))))

(declare-fun tp!598459 () Bool)

(declare-fun b_and!157861 () Bool)

(assert (=> b!2004733 (= tp!598459 b_and!157861)))

(declare-fun b_free!55879 () Bool)

(declare-fun b_next!56583 () Bool)

(assert (=> b!2004733 (= b_free!55879 (not b_next!56583))))

(declare-fun tp!598466 () Bool)

(declare-fun b_and!157863 () Bool)

(assert (=> b!2004733 (= tp!598466 b_and!157863)))

(declare-fun b!2004750 () Bool)

(declare-fun b_free!55881 () Bool)

(declare-fun b_next!56585 () Bool)

(assert (=> b!2004750 (= b_free!55881 (not b_next!56585))))

(declare-fun tp!598460 () Bool)

(declare-fun b_and!157865 () Bool)

(assert (=> b!2004750 (= tp!598460 b_and!157865)))

(declare-fun b_free!55883 () Bool)

(declare-fun b_next!56587 () Bool)

(assert (=> b!2004750 (= b_free!55883 (not b_next!56587))))

(declare-fun tp!598456 () Bool)

(declare-fun b_and!157867 () Bool)

(assert (=> b!2004750 (= tp!598456 b_and!157867)))

(declare-fun b!2004742 () Bool)

(declare-fun b_free!55885 () Bool)

(declare-fun b_next!56589 () Bool)

(assert (=> b!2004742 (= b_free!55885 (not b_next!56589))))

(declare-fun tp!598461 () Bool)

(declare-fun b_and!157869 () Bool)

(assert (=> b!2004742 (= tp!598461 b_and!157869)))

(declare-fun b_free!55887 () Bool)

(declare-fun b_next!56591 () Bool)

(assert (=> b!2004742 (= b_free!55887 (not b_next!56591))))

(declare-fun tp!598458 () Bool)

(declare-fun b_and!157871 () Bool)

(assert (=> b!2004742 (= tp!598458 b_and!157871)))

(declare-fun b!2004727 () Bool)

(declare-fun res!879174 () Bool)

(declare-fun e!1266725 () Bool)

(assert (=> b!2004727 (=> res!879174 e!1266725)))

(declare-datatypes ((List!22118 0))(
  ( (Nil!22036) (Cons!22036 (h!27437 (_ BitVec 16)) (t!186779 List!22118)) )
))
(declare-datatypes ((TokenValue!4091 0))(
  ( (FloatLiteralValue!8182 (text!29082 List!22118)) (TokenValueExt!4090 (__x!13680 Int)) (Broken!20455 (value!124284 List!22118)) (Object!4172) (End!4091) (Def!4091) (Underscore!4091) (Match!4091) (Else!4091) (Error!4091) (Case!4091) (If!4091) (Extends!4091) (Abstract!4091) (Class!4091) (Val!4091) (DelimiterValue!8182 (del!4151 List!22118)) (KeywordValue!4097 (value!124285 List!22118)) (CommentValue!8182 (value!124286 List!22118)) (WhitespaceValue!8182 (value!124287 List!22118)) (IndentationValue!4091 (value!124288 List!22118)) (String!25574) (Int32!4091) (Broken!20456 (value!124289 List!22118)) (Boolean!4092) (Unit!36580) (OperatorValue!4094 (op!4151 List!22118)) (IdentifierValue!8182 (value!124290 List!22118)) (IdentifierValue!8183 (value!124291 List!22118)) (WhitespaceValue!8183 (value!124292 List!22118)) (True!8182) (False!8182) (Broken!20457 (value!124293 List!22118)) (Broken!20458 (value!124294 List!22118)) (True!8183) (RightBrace!4091) (RightBracket!4091) (Colon!4091) (Null!4091) (Comma!4091) (LeftBracket!4091) (False!8183) (LeftBrace!4091) (ImaginaryLiteralValue!4091 (text!29083 List!22118)) (StringLiteralValue!12273 (value!124295 List!22118)) (EOFValue!4091 (value!124296 List!22118)) (IdentValue!4091 (value!124297 List!22118)) (DelimiterValue!8183 (value!124298 List!22118)) (DedentValue!4091 (value!124299 List!22118)) (NewLineValue!4091 (value!124300 List!22118)) (IntegerValue!12273 (value!124301 (_ BitVec 32)) (text!29084 List!22118)) (IntegerValue!12274 (value!124302 Int) (text!29085 List!22118)) (Times!4091) (Or!4091) (Equal!4091) (Minus!4091) (Broken!20459 (value!124303 List!22118)) (And!4091) (Div!4091) (LessEqual!4091) (Mod!4091) (Concat!9471) (Not!4091) (Plus!4091) (SpaceValue!4091 (value!124304 List!22118)) (IntegerValue!12275 (value!124305 Int) (text!29086 List!22118)) (StringLiteralValue!12274 (text!29087 List!22118)) (FloatLiteralValue!8183 (text!29088 List!22118)) (BytesLiteralValue!4091 (value!124306 List!22118)) (CommentValue!8183 (value!124307 List!22118)) (StringLiteralValue!12275 (value!124308 List!22118)) (ErrorTokenValue!4091 (msg!4152 List!22118)) )
))
(declare-datatypes ((C!10906 0))(
  ( (C!10907 (val!6405 Int)) )
))
(declare-datatypes ((List!22119 0))(
  ( (Nil!22037) (Cons!22037 (h!27438 C!10906) (t!186780 List!22119)) )
))
(declare-datatypes ((Regex!5380 0))(
  ( (ElementMatch!5380 (c!323780 C!10906)) (Concat!9472 (regOne!11272 Regex!5380) (regTwo!11272 Regex!5380)) (EmptyExpr!5380) (Star!5380 (reg!5709 Regex!5380)) (EmptyLang!5380) (Union!5380 (regOne!11273 Regex!5380) (regTwo!11273 Regex!5380)) )
))
(declare-datatypes ((String!25575 0))(
  ( (String!25576 (value!124309 String)) )
))
(declare-datatypes ((IArray!14729 0))(
  ( (IArray!14730 (innerList!7422 List!22119)) )
))
(declare-datatypes ((Conc!7362 0))(
  ( (Node!7362 (left!17534 Conc!7362) (right!17864 Conc!7362) (csize!14954 Int) (cheight!7573 Int)) (Leaf!10803 (xs!10260 IArray!14729) (csize!14955 Int)) (Empty!7362) )
))
(declare-datatypes ((BalanceConc!14540 0))(
  ( (BalanceConc!14541 (c!323781 Conc!7362)) )
))
(declare-datatypes ((TokenValueInjection!7766 0))(
  ( (TokenValueInjection!7767 (toValue!5616 Int) (toChars!5475 Int)) )
))
(declare-datatypes ((Rule!7710 0))(
  ( (Rule!7711 (regex!3955 Regex!5380) (tag!4415 String!25575) (isSeparator!3955 Bool) (transformation!3955 TokenValueInjection!7766)) )
))
(declare-datatypes ((Token!7462 0))(
  ( (Token!7463 (value!124310 TokenValue!4091) (rule!6178 Rule!7710) (size!17227 Int) (originalCharacters!4762 List!22119)) )
))
(declare-datatypes ((List!22120 0))(
  ( (Nil!22038) (Cons!22038 (h!27439 Token!7462) (t!186781 List!22120)) )
))
(declare-fun tokens!598 () List!22120)

(declare-fun isEmpty!13653 (List!22120) Bool)

(assert (=> b!2004727 (= res!879174 (isEmpty!13653 tokens!598))))

(declare-fun e!1266716 () Bool)

(declare-fun e!1266722 () Bool)

(declare-datatypes ((List!22121 0))(
  ( (Nil!22039) (Cons!22039 (h!27440 Rule!7710) (t!186782 List!22121)) )
))
(declare-fun rules!3198 () List!22121)

(declare-fun tp!598463 () Bool)

(declare-fun b!2004728 () Bool)

(declare-fun inv!29186 (String!25575) Bool)

(declare-fun inv!29189 (TokenValueInjection!7766) Bool)

(assert (=> b!2004728 (= e!1266722 (and tp!598463 (inv!29186 (tag!4415 (h!27440 rules!3198))) (inv!29189 (transformation!3955 (h!27440 rules!3198))) e!1266716))))

(declare-fun b!2004729 () Bool)

(declare-fun res!879158 () Bool)

(declare-fun e!1266718 () Bool)

(assert (=> b!2004729 (=> (not res!879158) (not e!1266718))))

(declare-fun separatorToken!354 () Token!7462)

(assert (=> b!2004729 (= res!879158 (isSeparator!3955 (rule!6178 separatorToken!354)))))

(declare-fun b!2004731 () Bool)

(declare-fun e!1266719 () Bool)

(declare-datatypes ((tuple2!20704 0))(
  ( (tuple2!20705 (_1!11821 Token!7462) (_2!11821 List!22119)) )
))
(declare-datatypes ((Option!4591 0))(
  ( (None!4590) (Some!4590 (v!26819 tuple2!20704)) )
))
(declare-fun lt!752909 () Option!4591)

(declare-fun get!6960 (Option!4591) tuple2!20704)

(declare-fun head!4529 (List!22120) Token!7462)

(assert (=> b!2004731 (= e!1266719 (= (_1!11821 (get!6960 lt!752909)) (head!4529 tokens!598)))))

(declare-fun b!2004732 () Bool)

(declare-fun tp!598464 () Bool)

(declare-fun e!1266713 () Bool)

(declare-fun e!1266717 () Bool)

(assert (=> b!2004732 (= e!1266713 (and tp!598464 (inv!29186 (tag!4415 (rule!6178 (h!27439 tokens!598)))) (inv!29189 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) e!1266717))))

(declare-fun e!1266720 () Bool)

(assert (=> b!2004733 (= e!1266720 (and tp!598459 tp!598466))))

(declare-fun e!1266706 () Bool)

(declare-fun e!1266709 () Bool)

(declare-fun tp!598465 () Bool)

(declare-fun b!2004734 () Bool)

(declare-fun inv!21 (TokenValue!4091) Bool)

(assert (=> b!2004734 (= e!1266706 (and (inv!21 (value!124310 separatorToken!354)) e!1266709 tp!598465))))

(declare-fun b!2004735 () Bool)

(declare-fun res!879163 () Bool)

(assert (=> b!2004735 (=> (not res!879163) (not e!1266718))))

(assert (=> b!2004735 (= res!879163 (is-Cons!22038 tokens!598))))

(declare-fun b!2004736 () Bool)

(declare-fun res!879162 () Bool)

(assert (=> b!2004736 (=> (not res!879162) (not e!1266718))))

(declare-datatypes ((LexerInterface!3568 0))(
  ( (LexerInterfaceExt!3565 (__x!13681 Int)) (Lexer!3566) )
))
(declare-fun thiss!23328 () LexerInterface!3568)

(declare-fun rulesInvariant!3175 (LexerInterface!3568 List!22121) Bool)

(assert (=> b!2004736 (= res!879162 (rulesInvariant!3175 thiss!23328 rules!3198))))

(declare-fun b!2004737 () Bool)

(declare-fun tp!598462 () Bool)

(assert (=> b!2004737 (= e!1266709 (and tp!598462 (inv!29186 (tag!4415 (rule!6178 separatorToken!354))) (inv!29189 (transformation!3955 (rule!6178 separatorToken!354))) e!1266720))))

(declare-fun b!2004738 () Bool)

(declare-fun e!1266710 () Bool)

(declare-fun tp!598467 () Bool)

(assert (=> b!2004738 (= e!1266710 (and (inv!21 (value!124310 (h!27439 tokens!598))) e!1266713 tp!598467))))

(declare-fun b!2004739 () Bool)

(declare-fun res!879173 () Bool)

(assert (=> b!2004739 (=> (not res!879173) (not e!1266718))))

(declare-fun lambda!75920 () Int)

(declare-fun forall!4679 (List!22120 Int) Bool)

(assert (=> b!2004739 (= res!879173 (forall!4679 tokens!598 lambda!75920))))

(declare-fun b!2004740 () Bool)

(declare-fun e!1266721 () Bool)

(declare-fun e!1266723 () Bool)

(assert (=> b!2004740 (= e!1266721 e!1266723)))

(declare-fun res!879160 () Bool)

(assert (=> b!2004740 (=> (not res!879160) (not e!1266723))))

(declare-fun lt!752903 () Rule!7710)

(declare-fun lt!752911 () List!22119)

(declare-fun matchR!2646 (Regex!5380 List!22119) Bool)

(assert (=> b!2004740 (= res!879160 (matchR!2646 (regex!3955 lt!752903) lt!752911))))

(declare-datatypes ((Option!4592 0))(
  ( (None!4591) (Some!4591 (v!26820 Rule!7710)) )
))
(declare-fun lt!752902 () Option!4592)

(declare-fun get!6961 (Option!4592) Rule!7710)

(assert (=> b!2004740 (= lt!752903 (get!6961 lt!752902))))

(declare-fun b!2004741 () Bool)

(declare-fun e!1266704 () Bool)

(declare-fun lt!752912 () Option!4591)

(assert (=> b!2004741 (= e!1266704 (= (_1!11821 (get!6960 lt!752912)) (h!27439 tokens!598)))))

(assert (=> b!2004742 (= e!1266717 (and tp!598461 tp!598458))))

(declare-fun b!2004743 () Bool)

(declare-fun e!1266707 () Bool)

(declare-fun e!1266724 () Bool)

(assert (=> b!2004743 (= e!1266707 e!1266724)))

(declare-fun res!879171 () Bool)

(assert (=> b!2004743 (=> (not res!879171) (not e!1266724))))

(declare-fun lt!752901 () Rule!7710)

(declare-fun lt!752900 () List!22119)

(assert (=> b!2004743 (= res!879171 (matchR!2646 (regex!3955 lt!752901) lt!752900))))

(declare-fun lt!752904 () Option!4592)

(assert (=> b!2004743 (= lt!752901 (get!6961 lt!752904))))

(declare-fun b!2004744 () Bool)

(assert (=> b!2004744 (= e!1266723 (= (rule!6178 separatorToken!354) lt!752903))))

(declare-fun b!2004745 () Bool)

(assert (=> b!2004745 (= e!1266724 (= (rule!6178 (h!27439 tokens!598)) lt!752901))))

(declare-fun b!2004746 () Bool)

(declare-fun res!879164 () Bool)

(assert (=> b!2004746 (=> (not res!879164) (not e!1266718))))

(declare-fun rulesProduceIndividualToken!1740 (LexerInterface!3568 List!22121 Token!7462) Bool)

(assert (=> b!2004746 (= res!879164 (rulesProduceIndividualToken!1740 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!2004747 () Bool)

(declare-fun res!879161 () Bool)

(assert (=> b!2004747 (=> (not res!879161) (not e!1266718))))

(declare-fun sepAndNonSepRulesDisjointChars!1053 (List!22121 List!22121) Bool)

(assert (=> b!2004747 (= res!879161 (sepAndNonSepRulesDisjointChars!1053 rules!3198 rules!3198))))

(declare-fun b!2004748 () Bool)

(assert (=> b!2004748 (= e!1266718 (not e!1266725))))

(declare-fun res!879167 () Bool)

(assert (=> b!2004748 (=> res!879167 e!1266725)))

(declare-fun lt!752910 () Option!4591)

(assert (=> b!2004748 (= res!879167 (or (not (is-Some!4590 lt!752910)) (not (= (_1!11821 (v!26819 lt!752910)) (h!27439 tokens!598)))))))

(declare-fun maxPrefix!2004 (LexerInterface!3568 List!22121 List!22119) Option!4591)

(declare-fun ++!5946 (List!22119 List!22119) List!22119)

(declare-fun printWithSeparatorTokenWhenNeededList!597 (LexerInterface!3568 List!22121 List!22120 Token!7462) List!22119)

(assert (=> b!2004748 (= lt!752910 (maxPrefix!2004 thiss!23328 rules!3198 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(assert (=> b!2004748 e!1266707))

(declare-fun res!879165 () Bool)

(assert (=> b!2004748 (=> (not res!879165) (not e!1266707))))

(declare-fun isDefined!3879 (Option!4592) Bool)

(assert (=> b!2004748 (= res!879165 (isDefined!3879 lt!752904))))

(declare-fun getRuleFromTag!770 (LexerInterface!3568 List!22121 String!25575) Option!4592)

(assert (=> b!2004748 (= lt!752904 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598)))))))

(declare-datatypes ((Unit!36581 0))(
  ( (Unit!36582) )
))
(declare-fun lt!752899 () Unit!36581)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!770 (LexerInterface!3568 List!22121 List!22119 Token!7462) Unit!36581)

(assert (=> b!2004748 (= lt!752899 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!770 thiss!23328 rules!3198 lt!752900 (h!27439 tokens!598)))))

(assert (=> b!2004748 e!1266704))

(declare-fun res!879169 () Bool)

(assert (=> b!2004748 (=> (not res!879169) (not e!1266704))))

(declare-fun isDefined!3880 (Option!4591) Bool)

(assert (=> b!2004748 (= res!879169 (isDefined!3880 lt!752912))))

(assert (=> b!2004748 (= lt!752912 (maxPrefix!2004 thiss!23328 rules!3198 lt!752900))))

(declare-fun lt!752906 () BalanceConc!14540)

(declare-fun list!8964 (BalanceConc!14540) List!22119)

(assert (=> b!2004748 (= lt!752900 (list!8964 lt!752906))))

(assert (=> b!2004748 e!1266721))

(declare-fun res!879172 () Bool)

(assert (=> b!2004748 (=> (not res!879172) (not e!1266721))))

(assert (=> b!2004748 (= res!879172 (isDefined!3879 lt!752902))))

(assert (=> b!2004748 (= lt!752902 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354))))))

(declare-fun lt!752908 () Unit!36581)

(assert (=> b!2004748 (= lt!752908 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!770 thiss!23328 rules!3198 lt!752911 separatorToken!354))))

(declare-fun charsOf!2495 (Token!7462) BalanceConc!14540)

(assert (=> b!2004748 (= lt!752911 (list!8964 (charsOf!2495 separatorToken!354)))))

(declare-fun lt!752907 () Unit!36581)

(declare-fun lemmaEqSameImage!641 (TokenValueInjection!7766 BalanceConc!14540 BalanceConc!14540) Unit!36581)

(declare-fun seqFromList!2809 (List!22119) BalanceConc!14540)

(assert (=> b!2004748 (= lt!752907 (lemmaEqSameImage!641 (transformation!3955 (rule!6178 (h!27439 tokens!598))) lt!752906 (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598)))))))

(declare-fun lt!752905 () Unit!36581)

(declare-fun lemmaSemiInverse!912 (TokenValueInjection!7766 BalanceConc!14540) Unit!36581)

(assert (=> b!2004748 (= lt!752905 (lemmaSemiInverse!912 (transformation!3955 (rule!6178 (h!27439 tokens!598))) lt!752906))))

(assert (=> b!2004748 (= lt!752906 (charsOf!2495 (h!27439 tokens!598)))))

(declare-fun b!2004749 () Bool)

(declare-fun res!879166 () Bool)

(assert (=> b!2004749 (=> (not res!879166) (not e!1266718))))

(declare-fun isEmpty!13654 (List!22121) Bool)

(assert (=> b!2004749 (= res!879166 (not (isEmpty!13654 rules!3198)))))

(declare-fun res!879170 () Bool)

(assert (=> start!196906 (=> (not res!879170) (not e!1266718))))

(assert (=> start!196906 (= res!879170 (is-Lexer!3566 thiss!23328))))

(assert (=> start!196906 e!1266718))

(assert (=> start!196906 true))

(declare-fun e!1266711 () Bool)

(assert (=> start!196906 e!1266711))

(declare-fun e!1266705 () Bool)

(assert (=> start!196906 e!1266705))

(declare-fun inv!29190 (Token!7462) Bool)

(assert (=> start!196906 (and (inv!29190 separatorToken!354) e!1266706)))

(declare-fun b!2004730 () Bool)

(assert (=> b!2004730 (= e!1266725 e!1266719)))

(declare-fun res!879159 () Bool)

(assert (=> b!2004730 (=> (not res!879159) (not e!1266719))))

(assert (=> b!2004730 (= res!879159 (isDefined!3880 lt!752909))))

(assert (=> b!2004730 (= lt!752909 (maxPrefix!2004 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (=> b!2004750 (= e!1266716 (and tp!598460 tp!598456))))

(declare-fun b!2004751 () Bool)

(declare-fun res!879168 () Bool)

(assert (=> b!2004751 (=> (not res!879168) (not e!1266718))))

(declare-fun rulesProduceEachTokenIndividuallyList!1299 (LexerInterface!3568 List!22121 List!22120) Bool)

(assert (=> b!2004751 (= res!879168 (rulesProduceEachTokenIndividuallyList!1299 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!2004752 () Bool)

(declare-fun tp!598457 () Bool)

(assert (=> b!2004752 (= e!1266711 (and e!1266722 tp!598457))))

(declare-fun b!2004753 () Bool)

(declare-fun tp!598455 () Bool)

(assert (=> b!2004753 (= e!1266705 (and (inv!29190 (h!27439 tokens!598)) e!1266710 tp!598455))))

(assert (= (and start!196906 res!879170) b!2004749))

(assert (= (and b!2004749 res!879166) b!2004736))

(assert (= (and b!2004736 res!879162) b!2004751))

(assert (= (and b!2004751 res!879168) b!2004746))

(assert (= (and b!2004746 res!879164) b!2004729))

(assert (= (and b!2004729 res!879158) b!2004739))

(assert (= (and b!2004739 res!879173) b!2004747))

(assert (= (and b!2004747 res!879161) b!2004735))

(assert (= (and b!2004735 res!879163) b!2004748))

(assert (= (and b!2004748 res!879172) b!2004740))

(assert (= (and b!2004740 res!879160) b!2004744))

(assert (= (and b!2004748 res!879169) b!2004741))

(assert (= (and b!2004748 res!879165) b!2004743))

(assert (= (and b!2004743 res!879171) b!2004745))

(assert (= (and b!2004748 (not res!879167)) b!2004727))

(assert (= (and b!2004727 (not res!879174)) b!2004730))

(assert (= (and b!2004730 res!879159) b!2004731))

(assert (= b!2004728 b!2004750))

(assert (= b!2004752 b!2004728))

(assert (= (and start!196906 (is-Cons!22039 rules!3198)) b!2004752))

(assert (= b!2004732 b!2004742))

(assert (= b!2004738 b!2004732))

(assert (= b!2004753 b!2004738))

(assert (= (and start!196906 (is-Cons!22038 tokens!598)) b!2004753))

(assert (= b!2004737 b!2004733))

(assert (= b!2004734 b!2004737))

(assert (= start!196906 b!2004734))

(declare-fun m!2435647 () Bool)

(assert (=> b!2004734 m!2435647))

(declare-fun m!2435649 () Bool)

(assert (=> b!2004748 m!2435649))

(declare-fun m!2435651 () Bool)

(assert (=> b!2004748 m!2435651))

(declare-fun m!2435653 () Bool)

(assert (=> b!2004748 m!2435653))

(declare-fun m!2435655 () Bool)

(assert (=> b!2004748 m!2435655))

(assert (=> b!2004748 m!2435655))

(declare-fun m!2435657 () Bool)

(assert (=> b!2004748 m!2435657))

(declare-fun m!2435659 () Bool)

(assert (=> b!2004748 m!2435659))

(declare-fun m!2435661 () Bool)

(assert (=> b!2004748 m!2435661))

(declare-fun m!2435663 () Bool)

(assert (=> b!2004748 m!2435663))

(declare-fun m!2435665 () Bool)

(assert (=> b!2004748 m!2435665))

(declare-fun m!2435667 () Bool)

(assert (=> b!2004748 m!2435667))

(declare-fun m!2435669 () Bool)

(assert (=> b!2004748 m!2435669))

(declare-fun m!2435671 () Bool)

(assert (=> b!2004748 m!2435671))

(declare-fun m!2435673 () Bool)

(assert (=> b!2004748 m!2435673))

(declare-fun m!2435675 () Bool)

(assert (=> b!2004748 m!2435675))

(declare-fun m!2435677 () Bool)

(assert (=> b!2004748 m!2435677))

(declare-fun m!2435679 () Bool)

(assert (=> b!2004748 m!2435679))

(assert (=> b!2004748 m!2435651))

(assert (=> b!2004748 m!2435653))

(declare-fun m!2435681 () Bool)

(assert (=> b!2004748 m!2435681))

(assert (=> b!2004748 m!2435673))

(declare-fun m!2435683 () Bool)

(assert (=> b!2004748 m!2435683))

(declare-fun m!2435685 () Bool)

(assert (=> b!2004736 m!2435685))

(declare-fun m!2435687 () Bool)

(assert (=> b!2004743 m!2435687))

(declare-fun m!2435689 () Bool)

(assert (=> b!2004743 m!2435689))

(declare-fun m!2435691 () Bool)

(assert (=> b!2004727 m!2435691))

(declare-fun m!2435693 () Bool)

(assert (=> b!2004730 m!2435693))

(declare-fun m!2435695 () Bool)

(assert (=> b!2004730 m!2435695))

(assert (=> b!2004730 m!2435695))

(declare-fun m!2435697 () Bool)

(assert (=> b!2004730 m!2435697))

(declare-fun m!2435699 () Bool)

(assert (=> b!2004732 m!2435699))

(declare-fun m!2435701 () Bool)

(assert (=> b!2004732 m!2435701))

(declare-fun m!2435703 () Bool)

(assert (=> b!2004731 m!2435703))

(declare-fun m!2435705 () Bool)

(assert (=> b!2004731 m!2435705))

(declare-fun m!2435707 () Bool)

(assert (=> b!2004739 m!2435707))

(declare-fun m!2435709 () Bool)

(assert (=> b!2004753 m!2435709))

(declare-fun m!2435711 () Bool)

(assert (=> b!2004751 m!2435711))

(declare-fun m!2435713 () Bool)

(assert (=> b!2004740 m!2435713))

(declare-fun m!2435715 () Bool)

(assert (=> b!2004740 m!2435715))

(declare-fun m!2435717 () Bool)

(assert (=> start!196906 m!2435717))

(declare-fun m!2435719 () Bool)

(assert (=> b!2004737 m!2435719))

(declare-fun m!2435721 () Bool)

(assert (=> b!2004737 m!2435721))

(declare-fun m!2435723 () Bool)

(assert (=> b!2004747 m!2435723))

(declare-fun m!2435725 () Bool)

(assert (=> b!2004746 m!2435725))

(declare-fun m!2435727 () Bool)

(assert (=> b!2004741 m!2435727))

(declare-fun m!2435729 () Bool)

(assert (=> b!2004728 m!2435729))

(declare-fun m!2435731 () Bool)

(assert (=> b!2004728 m!2435731))

(declare-fun m!2435733 () Bool)

(assert (=> b!2004749 m!2435733))

(declare-fun m!2435735 () Bool)

(assert (=> b!2004738 m!2435735))

(push 1)

(assert (not b!2004747))

(assert (not b!2004730))

(assert (not b_next!56585))

(assert (not b!2004741))

(assert b_and!157863)

(assert b_and!157861)

(assert (not start!196906))

(assert (not b!2004738))

(assert b_and!157865)

(assert (not b!2004736))

(assert (not b!2004727))

(assert b_and!157869)

(assert (not b_next!56581))

(assert (not b!2004731))

(assert (not b_next!56583))

(assert (not b!2004751))

(assert (not b!2004752))

(assert (not b!2004740))

(assert (not b_next!56591))

(assert (not b!2004728))

(assert (not b_next!56589))

(assert (not b!2004732))

(assert (not b!2004743))

(assert (not b!2004734))

(assert (not b_next!56587))

(assert (not b!2004746))

(assert (not b!2004739))

(assert (not b!2004753))

(assert (not b!2004749))

(assert b_and!157871)

(assert b_and!157867)

(assert (not b!2004737))

(assert (not b!2004748))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!56585))

(assert b_and!157869)

(assert b_and!157863)

(assert (not b_next!56591))

(assert b_and!157861)

(assert (not b_next!56589))

(assert b_and!157865)

(assert (not b_next!56587))

(assert b_and!157871)

(assert b_and!157867)

(assert (not b_next!56581))

(assert (not b_next!56583))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!611953 () Bool)

(declare-fun res!879238 () Bool)

(declare-fun e!1266797 () Bool)

(assert (=> d!611953 (=> (not res!879238) (not e!1266797))))

(declare-fun isEmpty!13657 (List!22119) Bool)

(assert (=> d!611953 (= res!879238 (not (isEmpty!13657 (originalCharacters!4762 (h!27439 tokens!598)))))))

(assert (=> d!611953 (= (inv!29190 (h!27439 tokens!598)) e!1266797)))

(declare-fun b!2004839 () Bool)

(declare-fun res!879239 () Bool)

(assert (=> b!2004839 (=> (not res!879239) (not e!1266797))))

(declare-fun dynLambda!10813 (Int TokenValue!4091) BalanceConc!14540)

(assert (=> b!2004839 (= res!879239 (= (originalCharacters!4762 (h!27439 tokens!598)) (list!8964 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598))))))))

(declare-fun b!2004840 () Bool)

(declare-fun size!17229 (List!22119) Int)

(assert (=> b!2004840 (= e!1266797 (= (size!17227 (h!27439 tokens!598)) (size!17229 (originalCharacters!4762 (h!27439 tokens!598)))))))

(assert (= (and d!611953 res!879238) b!2004839))

(assert (= (and b!2004839 res!879239) b!2004840))

(declare-fun b_lambda!66713 () Bool)

(assert (=> (not b_lambda!66713) (not b!2004839)))

(declare-fun t!186788 () Bool)

(declare-fun tb!124845 () Bool)

(assert (=> (and b!2004733 (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186788) tb!124845))

(declare-fun b!2004845 () Bool)

(declare-fun e!1266800 () Bool)

(declare-fun tp!598509 () Bool)

(declare-fun inv!29193 (Conc!7362) Bool)

(assert (=> b!2004845 (= e!1266800 (and (inv!29193 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598))))) tp!598509))))

(declare-fun result!149660 () Bool)

(declare-fun inv!29194 (BalanceConc!14540) Bool)

(assert (=> tb!124845 (= result!149660 (and (inv!29194 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598)))) e!1266800))))

(assert (= tb!124845 b!2004845))

(declare-fun m!2435827 () Bool)

(assert (=> b!2004845 m!2435827))

(declare-fun m!2435829 () Bool)

(assert (=> tb!124845 m!2435829))

(assert (=> b!2004839 t!186788))

(declare-fun b_and!157885 () Bool)

(assert (= b_and!157863 (and (=> t!186788 result!149660) b_and!157885)))

(declare-fun t!186790 () Bool)

(declare-fun tb!124847 () Bool)

(assert (=> (and b!2004750 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186790) tb!124847))

(declare-fun result!149664 () Bool)

(assert (= result!149664 result!149660))

(assert (=> b!2004839 t!186790))

(declare-fun b_and!157887 () Bool)

(assert (= b_and!157867 (and (=> t!186790 result!149664) b_and!157887)))

(declare-fun t!186792 () Bool)

(declare-fun tb!124849 () Bool)

(assert (=> (and b!2004742 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186792) tb!124849))

(declare-fun result!149666 () Bool)

(assert (= result!149666 result!149660))

(assert (=> b!2004839 t!186792))

(declare-fun b_and!157889 () Bool)

(assert (= b_and!157871 (and (=> t!186792 result!149666) b_and!157889)))

(declare-fun m!2435831 () Bool)

(assert (=> d!611953 m!2435831))

(declare-fun m!2435833 () Bool)

(assert (=> b!2004839 m!2435833))

(assert (=> b!2004839 m!2435833))

(declare-fun m!2435835 () Bool)

(assert (=> b!2004839 m!2435835))

(declare-fun m!2435837 () Bool)

(assert (=> b!2004840 m!2435837))

(assert (=> b!2004753 d!611953))

(declare-fun d!611955 () Bool)

(assert (=> d!611955 (= (get!6960 lt!752909) (v!26819 lt!752909))))

(assert (=> b!2004731 d!611955))

(declare-fun d!611957 () Bool)

(assert (=> d!611957 (= (head!4529 tokens!598) (h!27439 tokens!598))))

(assert (=> b!2004731 d!611957))

(declare-fun d!611959 () Bool)

(declare-fun isEmpty!13658 (Option!4591) Bool)

(assert (=> d!611959 (= (isDefined!3880 lt!752909) (not (isEmpty!13658 lt!752909)))))

(declare-fun bs!419399 () Bool)

(assert (= bs!419399 d!611959))

(declare-fun m!2435839 () Bool)

(assert (=> bs!419399 m!2435839))

(assert (=> b!2004730 d!611959))

(declare-fun b!2004864 () Bool)

(declare-fun res!879260 () Bool)

(declare-fun e!1266808 () Bool)

(assert (=> b!2004864 (=> (not res!879260) (not e!1266808))))

(declare-fun lt!752969 () Option!4591)

(assert (=> b!2004864 (= res!879260 (< (size!17229 (_2!11821 (get!6960 lt!752969))) (size!17229 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun b!2004865 () Bool)

(declare-fun contains!4019 (List!22121 Rule!7710) Bool)

(assert (=> b!2004865 (= e!1266808 (contains!4019 rules!3198 (rule!6178 (_1!11821 (get!6960 lt!752969)))))))

(declare-fun b!2004866 () Bool)

(declare-fun e!1266809 () Option!4591)

(declare-fun lt!752968 () Option!4591)

(declare-fun lt!752967 () Option!4591)

(assert (=> b!2004866 (= e!1266809 (ite (and (is-None!4590 lt!752968) (is-None!4590 lt!752967)) None!4590 (ite (is-None!4590 lt!752967) lt!752968 (ite (is-None!4590 lt!752968) lt!752967 (ite (>= (size!17227 (_1!11821 (v!26819 lt!752968))) (size!17227 (_1!11821 (v!26819 lt!752967)))) lt!752968 lt!752967)))))))

(declare-fun call!122505 () Option!4591)

(assert (=> b!2004866 (= lt!752968 call!122505)))

(assert (=> b!2004866 (= lt!752967 (maxPrefix!2004 thiss!23328 (t!186782 rules!3198) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!2004867 () Bool)

(declare-fun res!879257 () Bool)

(assert (=> b!2004867 (=> (not res!879257) (not e!1266808))))

(declare-fun apply!5768 (TokenValueInjection!7766 BalanceConc!14540) TokenValue!4091)

(assert (=> b!2004867 (= res!879257 (= (value!124310 (_1!11821 (get!6960 lt!752969))) (apply!5768 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!752969)))))))))

(declare-fun b!2004869 () Bool)

(declare-fun e!1266807 () Bool)

(assert (=> b!2004869 (= e!1266807 e!1266808)))

(declare-fun res!879254 () Bool)

(assert (=> b!2004869 (=> (not res!879254) (not e!1266808))))

(assert (=> b!2004869 (= res!879254 (isDefined!3880 lt!752969))))

(declare-fun b!2004870 () Bool)

(declare-fun res!879258 () Bool)

(assert (=> b!2004870 (=> (not res!879258) (not e!1266808))))

(assert (=> b!2004870 (= res!879258 (= (++!5946 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969)))) (_2!11821 (get!6960 lt!752969))) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun bm!122500 () Bool)

(declare-fun maxPrefixOneRule!1240 (LexerInterface!3568 Rule!7710 List!22119) Option!4591)

(assert (=> bm!122500 (= call!122505 (maxPrefixOneRule!1240 thiss!23328 (h!27440 rules!3198) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!2004871 () Bool)

(assert (=> b!2004871 (= e!1266809 call!122505)))

(declare-fun b!2004872 () Bool)

(declare-fun res!879259 () Bool)

(assert (=> b!2004872 (=> (not res!879259) (not e!1266808))))

(assert (=> b!2004872 (= res!879259 (= (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969)))) (originalCharacters!4762 (_1!11821 (get!6960 lt!752969)))))))

(declare-fun d!611961 () Bool)

(assert (=> d!611961 e!1266807))

(declare-fun res!879256 () Bool)

(assert (=> d!611961 (=> res!879256 e!1266807)))

(assert (=> d!611961 (= res!879256 (isEmpty!13658 lt!752969))))

(assert (=> d!611961 (= lt!752969 e!1266809)))

(declare-fun c!323787 () Bool)

(assert (=> d!611961 (= c!323787 (and (is-Cons!22039 rules!3198) (is-Nil!22039 (t!186782 rules!3198))))))

(declare-fun lt!752965 () Unit!36581)

(declare-fun lt!752966 () Unit!36581)

(assert (=> d!611961 (= lt!752965 lt!752966)))

(declare-fun isPrefix!1958 (List!22119 List!22119) Bool)

(assert (=> d!611961 (isPrefix!1958 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun lemmaIsPrefixRefl!1276 (List!22119 List!22119) Unit!36581)

(assert (=> d!611961 (= lt!752966 (lemmaIsPrefixRefl!1276 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun rulesValidInductive!1357 (LexerInterface!3568 List!22121) Bool)

(assert (=> d!611961 (rulesValidInductive!1357 thiss!23328 rules!3198)))

(assert (=> d!611961 (= (maxPrefix!2004 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!752969)))

(declare-fun b!2004868 () Bool)

(declare-fun res!879255 () Bool)

(assert (=> b!2004868 (=> (not res!879255) (not e!1266808))))

(assert (=> b!2004868 (= res!879255 (matchR!2646 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))) (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969))))))))

(assert (= (and d!611961 c!323787) b!2004871))

(assert (= (and d!611961 (not c!323787)) b!2004866))

(assert (= (or b!2004871 b!2004866) bm!122500))

(assert (= (and d!611961 (not res!879256)) b!2004869))

(assert (= (and b!2004869 res!879254) b!2004872))

(assert (= (and b!2004872 res!879259) b!2004864))

(assert (= (and b!2004864 res!879260) b!2004870))

(assert (= (and b!2004870 res!879258) b!2004867))

(assert (= (and b!2004867 res!879257) b!2004868))

(assert (= (and b!2004868 res!879255) b!2004865))

(declare-fun m!2435841 () Bool)

(assert (=> b!2004869 m!2435841))

(declare-fun m!2435843 () Bool)

(assert (=> b!2004867 m!2435843))

(declare-fun m!2435845 () Bool)

(assert (=> b!2004867 m!2435845))

(assert (=> b!2004867 m!2435845))

(declare-fun m!2435847 () Bool)

(assert (=> b!2004867 m!2435847))

(assert (=> b!2004865 m!2435843))

(declare-fun m!2435849 () Bool)

(assert (=> b!2004865 m!2435849))

(declare-fun m!2435851 () Bool)

(assert (=> d!611961 m!2435851))

(assert (=> d!611961 m!2435695))

(assert (=> d!611961 m!2435695))

(declare-fun m!2435853 () Bool)

(assert (=> d!611961 m!2435853))

(assert (=> d!611961 m!2435695))

(assert (=> d!611961 m!2435695))

(declare-fun m!2435855 () Bool)

(assert (=> d!611961 m!2435855))

(declare-fun m!2435857 () Bool)

(assert (=> d!611961 m!2435857))

(assert (=> b!2004868 m!2435843))

(declare-fun m!2435859 () Bool)

(assert (=> b!2004868 m!2435859))

(assert (=> b!2004868 m!2435859))

(declare-fun m!2435861 () Bool)

(assert (=> b!2004868 m!2435861))

(assert (=> b!2004868 m!2435861))

(declare-fun m!2435863 () Bool)

(assert (=> b!2004868 m!2435863))

(assert (=> b!2004870 m!2435843))

(assert (=> b!2004870 m!2435859))

(assert (=> b!2004870 m!2435859))

(assert (=> b!2004870 m!2435861))

(assert (=> b!2004870 m!2435861))

(declare-fun m!2435865 () Bool)

(assert (=> b!2004870 m!2435865))

(assert (=> b!2004872 m!2435843))

(assert (=> b!2004872 m!2435859))

(assert (=> b!2004872 m!2435859))

(assert (=> b!2004872 m!2435861))

(assert (=> b!2004864 m!2435843))

(declare-fun m!2435867 () Bool)

(assert (=> b!2004864 m!2435867))

(assert (=> b!2004864 m!2435695))

(declare-fun m!2435869 () Bool)

(assert (=> b!2004864 m!2435869))

(assert (=> b!2004866 m!2435695))

(declare-fun m!2435871 () Bool)

(assert (=> b!2004866 m!2435871))

(assert (=> bm!122500 m!2435695))

(declare-fun m!2435873 () Bool)

(assert (=> bm!122500 m!2435873))

(assert (=> b!2004730 d!611961))

(declare-fun bs!419402 () Bool)

(declare-fun b!2004952 () Bool)

(assert (= bs!419402 (and b!2004952 b!2004739)))

(declare-fun lambda!75929 () Int)

(assert (=> bs!419402 (not (= lambda!75929 lambda!75920))))

(declare-fun b!2004964 () Bool)

(declare-fun e!1266863 () Bool)

(assert (=> b!2004964 (= e!1266863 true)))

(declare-fun b!2004963 () Bool)

(declare-fun e!1266862 () Bool)

(assert (=> b!2004963 (= e!1266862 e!1266863)))

(declare-fun b!2004962 () Bool)

(declare-fun e!1266861 () Bool)

(assert (=> b!2004962 (= e!1266861 e!1266862)))

(assert (=> b!2004952 e!1266861))

(assert (= b!2004963 b!2004964))

(assert (= b!2004962 b!2004963))

(assert (= (and b!2004952 (is-Cons!22039 rules!3198)) b!2004962))

(declare-fun order!13959 () Int)

(declare-fun order!13961 () Int)

(declare-fun dynLambda!10814 (Int Int) Int)

(declare-fun dynLambda!10815 (Int Int) Int)

(assert (=> b!2004964 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (h!27440 rules!3198)))) (dynLambda!10815 order!13961 lambda!75929))))

(declare-fun order!13963 () Int)

(declare-fun dynLambda!10816 (Int Int) Int)

(assert (=> b!2004964 (< (dynLambda!10816 order!13963 (toChars!5475 (transformation!3955 (h!27440 rules!3198)))) (dynLambda!10815 order!13961 lambda!75929))))

(assert (=> b!2004952 true))

(declare-fun bm!122514 () Bool)

(declare-fun c!323807 () Bool)

(declare-fun c!323806 () Bool)

(assert (=> bm!122514 (= c!323807 c!323806)))

(declare-fun lt!752996 () List!22119)

(declare-fun e!1266853 () List!22119)

(declare-fun call!122523 () List!22119)

(declare-fun call!122522 () List!22119)

(assert (=> bm!122514 (= call!122522 (++!5946 e!1266853 (ite c!323806 lt!752996 call!122523)))))

(declare-fun b!2004946 () Bool)

(assert (=> b!2004946 (= e!1266853 (list!8964 (charsOf!2495 (h!27439 tokens!598))))))

(declare-fun c!323808 () Bool)

(declare-fun call!122520 () BalanceConc!14540)

(declare-fun bm!122515 () Bool)

(assert (=> bm!122515 (= call!122520 (charsOf!2495 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598)))))))

(declare-fun bm!122516 () Bool)

(declare-fun call!122521 () List!22119)

(assert (=> bm!122516 (= call!122523 call!122521)))

(declare-fun b!2004947 () Bool)

(declare-fun e!1266851 () List!22119)

(assert (=> b!2004947 (= e!1266851 Nil!22037)))

(declare-fun b!2004948 () Bool)

(declare-fun e!1266854 () List!22119)

(assert (=> b!2004948 (= e!1266854 (++!5946 call!122522 lt!752996))))

(declare-fun b!2004949 () Bool)

(declare-fun e!1266852 () List!22119)

(assert (=> b!2004949 (= e!1266852 call!122522)))

(declare-fun call!122519 () BalanceConc!14540)

(declare-fun bm!122517 () Bool)

(assert (=> bm!122517 (= call!122521 (list!8964 (ite c!323806 call!122520 call!122519)))))

(declare-fun d!611963 () Bool)

(declare-fun c!323805 () Bool)

(assert (=> d!611963 (= c!323805 (is-Cons!22038 tokens!598))))

(assert (=> d!611963 (= (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354) e!1266851)))

(declare-fun b!2004950 () Bool)

(assert (=> b!2004950 (= e!1266854 Nil!22037)))

(declare-datatypes ((IArray!14733 0))(
  ( (IArray!14734 (innerList!7424 List!22120)) )
))
(declare-datatypes ((Conc!7364 0))(
  ( (Node!7364 (left!17540 Conc!7364) (right!17870 Conc!7364) (csize!14958 Int) (cheight!7575 Int)) (Leaf!10805 (xs!10262 IArray!14733) (csize!14959 Int)) (Empty!7364) )
))
(declare-datatypes ((BalanceConc!14544 0))(
  ( (BalanceConc!14545 (c!323891 Conc!7364)) )
))
(declare-fun print!1536 (LexerInterface!3568 BalanceConc!14544) BalanceConc!14540)

(declare-fun singletonSeq!1937 (Token!7462) BalanceConc!14544)

(declare-fun printTailRec!1042 (LexerInterface!3568 BalanceConc!14544 Int BalanceConc!14540) BalanceConc!14540)

(assert (=> b!2004950 (= (print!1536 thiss!23328 (singletonSeq!1937 (h!27439 tokens!598))) (printTailRec!1042 thiss!23328 (singletonSeq!1937 (h!27439 tokens!598)) 0 (BalanceConc!14541 Empty!7362)))))

(declare-fun lt!752993 () Unit!36581)

(declare-fun Unit!36586 () Unit!36581)

(assert (=> b!2004950 (= lt!752993 Unit!36586)))

(declare-fun lt!752991 () Unit!36581)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!752 (LexerInterface!3568 List!22121 List!22119 List!22119) Unit!36581)

(assert (=> b!2004950 (= lt!752991 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!752 thiss!23328 rules!3198 call!122523 lt!752996))))

(assert (=> b!2004950 false))

(declare-fun lt!752992 () Unit!36581)

(declare-fun Unit!36587 () Unit!36581)

(assert (=> b!2004950 (= lt!752992 Unit!36587)))

(declare-fun b!2004951 () Bool)

(declare-fun lt!752995 () Option!4591)

(assert (=> b!2004951 (= c!323808 (and (is-Some!4590 lt!752995) (not (= (_1!11821 (v!26819 lt!752995)) (h!27439 tokens!598)))))))

(assert (=> b!2004951 (= e!1266852 e!1266854)))

(assert (=> b!2004952 (= e!1266851 e!1266852)))

(declare-fun lt!752994 () Unit!36581)

(declare-fun forallContained!721 (List!22120 Int Token!7462) Unit!36581)

(assert (=> b!2004952 (= lt!752994 (forallContained!721 tokens!598 lambda!75929 (h!27439 tokens!598)))))

(assert (=> b!2004952 (= lt!752996 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))

(assert (=> b!2004952 (= lt!752995 (maxPrefix!2004 thiss!23328 rules!3198 (++!5946 (list!8964 (charsOf!2495 (h!27439 tokens!598))) lt!752996)))))

(assert (=> b!2004952 (= c!323806 (and (is-Some!4590 lt!752995) (= (_1!11821 (v!26819 lt!752995)) (h!27439 tokens!598))))))

(declare-fun bm!122518 () Bool)

(assert (=> bm!122518 (= call!122519 call!122520)))

(declare-fun b!2004953 () Bool)

(assert (=> b!2004953 (= e!1266853 call!122521)))

(assert (= (and d!611963 c!323805) b!2004952))

(assert (= (and d!611963 (not c!323805)) b!2004947))

(assert (= (and b!2004952 c!323806) b!2004949))

(assert (= (and b!2004952 (not c!323806)) b!2004951))

(assert (= (and b!2004951 c!323808) b!2004948))

(assert (= (and b!2004951 (not c!323808)) b!2004950))

(assert (= (or b!2004948 b!2004950) bm!122518))

(assert (= (or b!2004948 b!2004950) bm!122516))

(assert (= (or b!2004949 bm!122518) bm!122515))

(assert (= (or b!2004949 bm!122516) bm!122517))

(assert (= (or b!2004949 b!2004948) bm!122514))

(assert (= (and bm!122514 c!323807) b!2004953))

(assert (= (and bm!122514 (not c!323807)) b!2004946))

(assert (=> b!2004946 m!2435675))

(assert (=> b!2004946 m!2435675))

(declare-fun m!2435925 () Bool)

(assert (=> b!2004946 m!2435925))

(declare-fun m!2435927 () Bool)

(assert (=> b!2004950 m!2435927))

(assert (=> b!2004950 m!2435927))

(declare-fun m!2435929 () Bool)

(assert (=> b!2004950 m!2435929))

(assert (=> b!2004950 m!2435927))

(declare-fun m!2435931 () Bool)

(assert (=> b!2004950 m!2435931))

(declare-fun m!2435933 () Bool)

(assert (=> b!2004950 m!2435933))

(declare-fun m!2435935 () Bool)

(assert (=> bm!122514 m!2435935))

(assert (=> b!2004952 m!2435675))

(assert (=> b!2004952 m!2435675))

(assert (=> b!2004952 m!2435925))

(assert (=> b!2004952 m!2435925))

(declare-fun m!2435937 () Bool)

(assert (=> b!2004952 m!2435937))

(assert (=> b!2004952 m!2435651))

(assert (=> b!2004952 m!2435937))

(declare-fun m!2435939 () Bool)

(assert (=> b!2004952 m!2435939))

(declare-fun m!2435941 () Bool)

(assert (=> b!2004952 m!2435941))

(declare-fun m!2435943 () Bool)

(assert (=> bm!122515 m!2435943))

(declare-fun m!2435945 () Bool)

(assert (=> bm!122517 m!2435945))

(declare-fun m!2435947 () Bool)

(assert (=> b!2004948 m!2435947))

(assert (=> b!2004730 d!611963))

(declare-fun d!611981 () Bool)

(assert (=> d!611981 (= (get!6960 lt!752912) (v!26819 lt!752912))))

(assert (=> b!2004741 d!611981))

(declare-fun bm!122521 () Bool)

(declare-fun call!122526 () Bool)

(assert (=> bm!122521 (= call!122526 (isEmpty!13657 lt!752911))))

(declare-fun b!2005025 () Bool)

(declare-fun e!1266900 () Bool)

(declare-fun lt!753014 () Bool)

(assert (=> b!2005025 (= e!1266900 (= lt!753014 call!122526))))

(declare-fun b!2005026 () Bool)

(declare-fun e!1266902 () Bool)

(declare-fun nullable!1626 (Regex!5380) Bool)

(assert (=> b!2005026 (= e!1266902 (nullable!1626 (regex!3955 lt!752903)))))

(declare-fun b!2005027 () Bool)

(declare-fun res!879321 () Bool)

(declare-fun e!1266899 () Bool)

(assert (=> b!2005027 (=> (not res!879321) (not e!1266899))))

(assert (=> b!2005027 (= res!879321 (not call!122526))))

(declare-fun b!2005028 () Bool)

(declare-fun e!1266897 () Bool)

(declare-fun e!1266901 () Bool)

(assert (=> b!2005028 (= e!1266897 e!1266901)))

(declare-fun res!879323 () Bool)

(assert (=> b!2005028 (=> (not res!879323) (not e!1266901))))

(assert (=> b!2005028 (= res!879323 (not lt!753014))))

(declare-fun b!2005029 () Bool)

(declare-fun res!879320 () Bool)

(assert (=> b!2005029 (=> (not res!879320) (not e!1266899))))

(declare-fun tail!3015 (List!22119) List!22119)

(assert (=> b!2005029 (= res!879320 (isEmpty!13657 (tail!3015 lt!752911)))))

(declare-fun b!2005030 () Bool)

(declare-fun e!1266903 () Bool)

(assert (=> b!2005030 (= e!1266903 (not lt!753014))))

(declare-fun b!2005031 () Bool)

(declare-fun e!1266898 () Bool)

(assert (=> b!2005031 (= e!1266901 e!1266898)))

(declare-fun res!879317 () Bool)

(assert (=> b!2005031 (=> res!879317 e!1266898)))

(assert (=> b!2005031 (= res!879317 call!122526)))

(declare-fun b!2005032 () Bool)

(declare-fun res!879322 () Bool)

(assert (=> b!2005032 (=> res!879322 e!1266897)))

(assert (=> b!2005032 (= res!879322 e!1266899)))

(declare-fun res!879319 () Bool)

(assert (=> b!2005032 (=> (not res!879319) (not e!1266899))))

(assert (=> b!2005032 (= res!879319 lt!753014)))

(declare-fun b!2005024 () Bool)

(declare-fun head!4531 (List!22119) C!10906)

(assert (=> b!2005024 (= e!1266898 (not (= (head!4531 lt!752911) (c!323780 (regex!3955 lt!752903)))))))

(declare-fun d!611983 () Bool)

(assert (=> d!611983 e!1266900))

(declare-fun c!323825 () Bool)

(assert (=> d!611983 (= c!323825 (is-EmptyExpr!5380 (regex!3955 lt!752903)))))

(assert (=> d!611983 (= lt!753014 e!1266902)))

(declare-fun c!323823 () Bool)

(assert (=> d!611983 (= c!323823 (isEmpty!13657 lt!752911))))

(declare-fun validRegex!2152 (Regex!5380) Bool)

(assert (=> d!611983 (validRegex!2152 (regex!3955 lt!752903))))

(assert (=> d!611983 (= (matchR!2646 (regex!3955 lt!752903) lt!752911) lt!753014)))

(declare-fun b!2005033 () Bool)

(declare-fun res!879318 () Bool)

(assert (=> b!2005033 (=> res!879318 e!1266897)))

(assert (=> b!2005033 (= res!879318 (not (is-ElementMatch!5380 (regex!3955 lt!752903))))))

(assert (=> b!2005033 (= e!1266903 e!1266897)))

(declare-fun b!2005034 () Bool)

(assert (=> b!2005034 (= e!1266899 (= (head!4531 lt!752911) (c!323780 (regex!3955 lt!752903))))))

(declare-fun b!2005035 () Bool)

(declare-fun res!879324 () Bool)

(assert (=> b!2005035 (=> res!879324 e!1266898)))

(assert (=> b!2005035 (= res!879324 (not (isEmpty!13657 (tail!3015 lt!752911))))))

(declare-fun b!2005036 () Bool)

(assert (=> b!2005036 (= e!1266900 e!1266903)))

(declare-fun c!323824 () Bool)

(assert (=> b!2005036 (= c!323824 (is-EmptyLang!5380 (regex!3955 lt!752903)))))

(declare-fun b!2005037 () Bool)

(declare-fun derivativeStep!1385 (Regex!5380 C!10906) Regex!5380)

(assert (=> b!2005037 (= e!1266902 (matchR!2646 (derivativeStep!1385 (regex!3955 lt!752903) (head!4531 lt!752911)) (tail!3015 lt!752911)))))

(assert (= (and d!611983 c!323823) b!2005026))

(assert (= (and d!611983 (not c!323823)) b!2005037))

(assert (= (and d!611983 c!323825) b!2005025))

(assert (= (and d!611983 (not c!323825)) b!2005036))

(assert (= (and b!2005036 c!323824) b!2005030))

(assert (= (and b!2005036 (not c!323824)) b!2005033))

(assert (= (and b!2005033 (not res!879318)) b!2005032))

(assert (= (and b!2005032 res!879319) b!2005027))

(assert (= (and b!2005027 res!879321) b!2005029))

(assert (= (and b!2005029 res!879320) b!2005034))

(assert (= (and b!2005032 (not res!879322)) b!2005028))

(assert (= (and b!2005028 res!879323) b!2005031))

(assert (= (and b!2005031 (not res!879317)) b!2005035))

(assert (= (and b!2005035 (not res!879324)) b!2005024))

(assert (= (or b!2005025 b!2005027 b!2005031) bm!122521))

(declare-fun m!2435975 () Bool)

(assert (=> b!2005034 m!2435975))

(declare-fun m!2435977 () Bool)

(assert (=> b!2005035 m!2435977))

(assert (=> b!2005035 m!2435977))

(declare-fun m!2435979 () Bool)

(assert (=> b!2005035 m!2435979))

(assert (=> b!2005029 m!2435977))

(assert (=> b!2005029 m!2435977))

(assert (=> b!2005029 m!2435979))

(declare-fun m!2435981 () Bool)

(assert (=> b!2005026 m!2435981))

(declare-fun m!2435983 () Bool)

(assert (=> d!611983 m!2435983))

(declare-fun m!2435985 () Bool)

(assert (=> d!611983 m!2435985))

(assert (=> b!2005037 m!2435975))

(assert (=> b!2005037 m!2435975))

(declare-fun m!2435987 () Bool)

(assert (=> b!2005037 m!2435987))

(assert (=> b!2005037 m!2435977))

(assert (=> b!2005037 m!2435987))

(assert (=> b!2005037 m!2435977))

(declare-fun m!2435989 () Bool)

(assert (=> b!2005037 m!2435989))

(assert (=> bm!122521 m!2435983))

(assert (=> b!2005024 m!2435975))

(assert (=> b!2004740 d!611983))

(declare-fun d!611995 () Bool)

(assert (=> d!611995 (= (get!6961 lt!752902) (v!26820 lt!752902))))

(assert (=> b!2004740 d!611995))

(declare-fun bs!419406 () Bool)

(declare-fun d!611997 () Bool)

(assert (= bs!419406 (and d!611997 b!2004739)))

(declare-fun lambda!75935 () Int)

(assert (=> bs!419406 (not (= lambda!75935 lambda!75920))))

(declare-fun bs!419407 () Bool)

(assert (= bs!419407 (and d!611997 b!2004952)))

(assert (=> bs!419407 (= lambda!75935 lambda!75929)))

(declare-fun b!2005052 () Bool)

(declare-fun e!1266916 () Bool)

(assert (=> b!2005052 (= e!1266916 true)))

(declare-fun b!2005051 () Bool)

(declare-fun e!1266915 () Bool)

(assert (=> b!2005051 (= e!1266915 e!1266916)))

(declare-fun b!2005050 () Bool)

(declare-fun e!1266914 () Bool)

(assert (=> b!2005050 (= e!1266914 e!1266915)))

(assert (=> d!611997 e!1266914))

(assert (= b!2005051 b!2005052))

(assert (= b!2005050 b!2005051))

(assert (= (and d!611997 (is-Cons!22039 rules!3198)) b!2005050))

(assert (=> b!2005052 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (h!27440 rules!3198)))) (dynLambda!10815 order!13961 lambda!75935))))

(assert (=> b!2005052 (< (dynLambda!10816 order!13963 (toChars!5475 (transformation!3955 (h!27440 rules!3198)))) (dynLambda!10815 order!13961 lambda!75935))))

(assert (=> d!611997 true))

(declare-fun lt!753020 () Bool)

(assert (=> d!611997 (= lt!753020 (forall!4679 tokens!598 lambda!75935))))

(declare-fun e!1266913 () Bool)

(assert (=> d!611997 (= lt!753020 e!1266913)))

(declare-fun res!879330 () Bool)

(assert (=> d!611997 (=> res!879330 e!1266913)))

(assert (=> d!611997 (= res!879330 (not (is-Cons!22038 tokens!598)))))

(assert (=> d!611997 (not (isEmpty!13654 rules!3198))))

(assert (=> d!611997 (= (rulesProduceEachTokenIndividuallyList!1299 thiss!23328 rules!3198 tokens!598) lt!753020)))

(declare-fun b!2005048 () Bool)

(declare-fun e!1266912 () Bool)

(assert (=> b!2005048 (= e!1266913 e!1266912)))

(declare-fun res!879329 () Bool)

(assert (=> b!2005048 (=> (not res!879329) (not e!1266912))))

(assert (=> b!2005048 (= res!879329 (rulesProduceIndividualToken!1740 thiss!23328 rules!3198 (h!27439 tokens!598)))))

(declare-fun b!2005049 () Bool)

(assert (=> b!2005049 (= e!1266912 (rulesProduceEachTokenIndividuallyList!1299 thiss!23328 rules!3198 (t!186781 tokens!598)))))

(assert (= (and d!611997 (not res!879330)) b!2005048))

(assert (= (and b!2005048 res!879329) b!2005049))

(declare-fun m!2436001 () Bool)

(assert (=> d!611997 m!2436001))

(assert (=> d!611997 m!2435733))

(declare-fun m!2436003 () Bool)

(assert (=> b!2005048 m!2436003))

(declare-fun m!2436005 () Bool)

(assert (=> b!2005049 m!2436005))

(assert (=> b!2004751 d!611997))

(declare-fun b!2005063 () Bool)

(declare-fun e!1266924 () Bool)

(declare-fun inv!16 (TokenValue!4091) Bool)

(assert (=> b!2005063 (= e!1266924 (inv!16 (value!124310 separatorToken!354)))))

(declare-fun b!2005064 () Bool)

(declare-fun e!1266923 () Bool)

(declare-fun inv!15 (TokenValue!4091) Bool)

(assert (=> b!2005064 (= e!1266923 (inv!15 (value!124310 separatorToken!354)))))

(declare-fun b!2005065 () Bool)

(declare-fun e!1266925 () Bool)

(assert (=> b!2005065 (= e!1266924 e!1266925)))

(declare-fun c!323831 () Bool)

(assert (=> b!2005065 (= c!323831 (is-IntegerValue!12274 (value!124310 separatorToken!354)))))

(declare-fun b!2005066 () Bool)

(declare-fun inv!17 (TokenValue!4091) Bool)

(assert (=> b!2005066 (= e!1266925 (inv!17 (value!124310 separatorToken!354)))))

(declare-fun d!612001 () Bool)

(declare-fun c!323832 () Bool)

(assert (=> d!612001 (= c!323832 (is-IntegerValue!12273 (value!124310 separatorToken!354)))))

(assert (=> d!612001 (= (inv!21 (value!124310 separatorToken!354)) e!1266924)))

(declare-fun b!2005067 () Bool)

(declare-fun res!879333 () Bool)

(assert (=> b!2005067 (=> res!879333 e!1266923)))

(assert (=> b!2005067 (= res!879333 (not (is-IntegerValue!12275 (value!124310 separatorToken!354))))))

(assert (=> b!2005067 (= e!1266925 e!1266923)))

(assert (= (and d!612001 c!323832) b!2005063))

(assert (= (and d!612001 (not c!323832)) b!2005065))

(assert (= (and b!2005065 c!323831) b!2005066))

(assert (= (and b!2005065 (not c!323831)) b!2005067))

(assert (= (and b!2005067 (not res!879333)) b!2005064))

(declare-fun m!2436007 () Bool)

(assert (=> b!2005063 m!2436007))

(declare-fun m!2436009 () Bool)

(assert (=> b!2005064 m!2436009))

(declare-fun m!2436011 () Bool)

(assert (=> b!2005066 m!2436011))

(assert (=> b!2004734 d!612001))

(declare-fun d!612003 () Bool)

(assert (=> d!612003 (= (inv!29186 (tag!4415 (rule!6178 (h!27439 tokens!598)))) (= (mod (str.len (value!124309 (tag!4415 (rule!6178 (h!27439 tokens!598))))) 2) 0))))

(assert (=> b!2004732 d!612003))

(declare-fun d!612005 () Bool)

(declare-fun res!879336 () Bool)

(declare-fun e!1266928 () Bool)

(assert (=> d!612005 (=> (not res!879336) (not e!1266928))))

(declare-fun semiInverseModEq!1582 (Int Int) Bool)

(assert (=> d!612005 (= res!879336 (semiInverseModEq!1582 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))))))

(assert (=> d!612005 (= (inv!29189 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) e!1266928)))

(declare-fun b!2005070 () Bool)

(declare-fun equivClasses!1509 (Int Int) Bool)

(assert (=> b!2005070 (= e!1266928 (equivClasses!1509 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))))))

(assert (= (and d!612005 res!879336) b!2005070))

(declare-fun m!2436013 () Bool)

(assert (=> d!612005 m!2436013))

(declare-fun m!2436015 () Bool)

(assert (=> b!2005070 m!2436015))

(assert (=> b!2004732 d!612005))

(declare-fun bm!122522 () Bool)

(declare-fun call!122527 () Bool)

(assert (=> bm!122522 (= call!122527 (isEmpty!13657 lt!752900))))

(declare-fun b!2005072 () Bool)

(declare-fun e!1266932 () Bool)

(declare-fun lt!753021 () Bool)

(assert (=> b!2005072 (= e!1266932 (= lt!753021 call!122527))))

(declare-fun b!2005073 () Bool)

(declare-fun e!1266934 () Bool)

(assert (=> b!2005073 (= e!1266934 (nullable!1626 (regex!3955 lt!752901)))))

(declare-fun b!2005074 () Bool)

(declare-fun res!879341 () Bool)

(declare-fun e!1266931 () Bool)

(assert (=> b!2005074 (=> (not res!879341) (not e!1266931))))

(assert (=> b!2005074 (= res!879341 (not call!122527))))

(declare-fun b!2005075 () Bool)

(declare-fun e!1266929 () Bool)

(declare-fun e!1266933 () Bool)

(assert (=> b!2005075 (= e!1266929 e!1266933)))

(declare-fun res!879343 () Bool)

(assert (=> b!2005075 (=> (not res!879343) (not e!1266933))))

(assert (=> b!2005075 (= res!879343 (not lt!753021))))

(declare-fun b!2005076 () Bool)

(declare-fun res!879340 () Bool)

(assert (=> b!2005076 (=> (not res!879340) (not e!1266931))))

(assert (=> b!2005076 (= res!879340 (isEmpty!13657 (tail!3015 lt!752900)))))

(declare-fun b!2005077 () Bool)

(declare-fun e!1266935 () Bool)

(assert (=> b!2005077 (= e!1266935 (not lt!753021))))

(declare-fun b!2005078 () Bool)

(declare-fun e!1266930 () Bool)

(assert (=> b!2005078 (= e!1266933 e!1266930)))

(declare-fun res!879337 () Bool)

(assert (=> b!2005078 (=> res!879337 e!1266930)))

(assert (=> b!2005078 (= res!879337 call!122527)))

(declare-fun b!2005079 () Bool)

(declare-fun res!879342 () Bool)

(assert (=> b!2005079 (=> res!879342 e!1266929)))

(assert (=> b!2005079 (= res!879342 e!1266931)))

(declare-fun res!879339 () Bool)

(assert (=> b!2005079 (=> (not res!879339) (not e!1266931))))

(assert (=> b!2005079 (= res!879339 lt!753021)))

(declare-fun b!2005071 () Bool)

(assert (=> b!2005071 (= e!1266930 (not (= (head!4531 lt!752900) (c!323780 (regex!3955 lt!752901)))))))

(declare-fun d!612007 () Bool)

(assert (=> d!612007 e!1266932))

(declare-fun c!323835 () Bool)

(assert (=> d!612007 (= c!323835 (is-EmptyExpr!5380 (regex!3955 lt!752901)))))

(assert (=> d!612007 (= lt!753021 e!1266934)))

(declare-fun c!323833 () Bool)

(assert (=> d!612007 (= c!323833 (isEmpty!13657 lt!752900))))

(assert (=> d!612007 (validRegex!2152 (regex!3955 lt!752901))))

(assert (=> d!612007 (= (matchR!2646 (regex!3955 lt!752901) lt!752900) lt!753021)))

(declare-fun b!2005080 () Bool)

(declare-fun res!879338 () Bool)

(assert (=> b!2005080 (=> res!879338 e!1266929)))

(assert (=> b!2005080 (= res!879338 (not (is-ElementMatch!5380 (regex!3955 lt!752901))))))

(assert (=> b!2005080 (= e!1266935 e!1266929)))

(declare-fun b!2005081 () Bool)

(assert (=> b!2005081 (= e!1266931 (= (head!4531 lt!752900) (c!323780 (regex!3955 lt!752901))))))

(declare-fun b!2005082 () Bool)

(declare-fun res!879344 () Bool)

(assert (=> b!2005082 (=> res!879344 e!1266930)))

(assert (=> b!2005082 (= res!879344 (not (isEmpty!13657 (tail!3015 lt!752900))))))

(declare-fun b!2005083 () Bool)

(assert (=> b!2005083 (= e!1266932 e!1266935)))

(declare-fun c!323834 () Bool)

(assert (=> b!2005083 (= c!323834 (is-EmptyLang!5380 (regex!3955 lt!752901)))))

(declare-fun b!2005084 () Bool)

(assert (=> b!2005084 (= e!1266934 (matchR!2646 (derivativeStep!1385 (regex!3955 lt!752901) (head!4531 lt!752900)) (tail!3015 lt!752900)))))

(assert (= (and d!612007 c!323833) b!2005073))

(assert (= (and d!612007 (not c!323833)) b!2005084))

(assert (= (and d!612007 c!323835) b!2005072))

(assert (= (and d!612007 (not c!323835)) b!2005083))

(assert (= (and b!2005083 c!323834) b!2005077))

(assert (= (and b!2005083 (not c!323834)) b!2005080))

(assert (= (and b!2005080 (not res!879338)) b!2005079))

(assert (= (and b!2005079 res!879339) b!2005074))

(assert (= (and b!2005074 res!879341) b!2005076))

(assert (= (and b!2005076 res!879340) b!2005081))

(assert (= (and b!2005079 (not res!879342)) b!2005075))

(assert (= (and b!2005075 res!879343) b!2005078))

(assert (= (and b!2005078 (not res!879337)) b!2005082))

(assert (= (and b!2005082 (not res!879344)) b!2005071))

(assert (= (or b!2005072 b!2005074 b!2005078) bm!122522))

(declare-fun m!2436017 () Bool)

(assert (=> b!2005081 m!2436017))

(declare-fun m!2436019 () Bool)

(assert (=> b!2005082 m!2436019))

(assert (=> b!2005082 m!2436019))

(declare-fun m!2436021 () Bool)

(assert (=> b!2005082 m!2436021))

(assert (=> b!2005076 m!2436019))

(assert (=> b!2005076 m!2436019))

(assert (=> b!2005076 m!2436021))

(declare-fun m!2436023 () Bool)

(assert (=> b!2005073 m!2436023))

(declare-fun m!2436025 () Bool)

(assert (=> d!612007 m!2436025))

(declare-fun m!2436027 () Bool)

(assert (=> d!612007 m!2436027))

(assert (=> b!2005084 m!2436017))

(assert (=> b!2005084 m!2436017))

(declare-fun m!2436029 () Bool)

(assert (=> b!2005084 m!2436029))

(assert (=> b!2005084 m!2436019))

(assert (=> b!2005084 m!2436029))

(assert (=> b!2005084 m!2436019))

(declare-fun m!2436031 () Bool)

(assert (=> b!2005084 m!2436031))

(assert (=> bm!122522 m!2436025))

(assert (=> b!2005071 m!2436017))

(assert (=> b!2004743 d!612007))

(declare-fun d!612009 () Bool)

(assert (=> d!612009 (= (get!6961 lt!752904) (v!26820 lt!752904))))

(assert (=> b!2004743 d!612009))

(declare-fun d!612011 () Bool)

(assert (=> d!612011 (= (inv!29186 (tag!4415 (rule!6178 separatorToken!354))) (= (mod (str.len (value!124309 (tag!4415 (rule!6178 separatorToken!354)))) 2) 0))))

(assert (=> b!2004737 d!612011))

(declare-fun d!612013 () Bool)

(declare-fun res!879345 () Bool)

(declare-fun e!1266936 () Bool)

(assert (=> d!612013 (=> (not res!879345) (not e!1266936))))

(assert (=> d!612013 (= res!879345 (semiInverseModEq!1582 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354)))))))

(assert (=> d!612013 (= (inv!29189 (transformation!3955 (rule!6178 separatorToken!354))) e!1266936)))

(declare-fun b!2005085 () Bool)

(assert (=> b!2005085 (= e!1266936 (equivClasses!1509 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354)))))))

(assert (= (and d!612013 res!879345) b!2005085))

(declare-fun m!2436033 () Bool)

(assert (=> d!612013 m!2436033))

(declare-fun m!2436035 () Bool)

(assert (=> b!2005085 m!2436035))

(assert (=> b!2004737 d!612013))

(declare-fun d!612015 () Bool)

(declare-fun res!879348 () Bool)

(declare-fun e!1266939 () Bool)

(assert (=> d!612015 (=> (not res!879348) (not e!1266939))))

(declare-fun rulesValid!1469 (LexerInterface!3568 List!22121) Bool)

(assert (=> d!612015 (= res!879348 (rulesValid!1469 thiss!23328 rules!3198))))

(assert (=> d!612015 (= (rulesInvariant!3175 thiss!23328 rules!3198) e!1266939)))

(declare-fun b!2005088 () Bool)

(declare-datatypes ((List!22126 0))(
  ( (Nil!22044) (Cons!22044 (h!27445 String!25575) (t!186897 List!22126)) )
))
(declare-fun noDuplicateTag!1467 (LexerInterface!3568 List!22121 List!22126) Bool)

(assert (=> b!2005088 (= e!1266939 (noDuplicateTag!1467 thiss!23328 rules!3198 Nil!22044))))

(assert (= (and d!612015 res!879348) b!2005088))

(declare-fun m!2436037 () Bool)

(assert (=> d!612015 m!2436037))

(declare-fun m!2436039 () Bool)

(assert (=> b!2005088 m!2436039))

(assert (=> b!2004736 d!612015))

(declare-fun d!612017 () Bool)

(declare-fun res!879353 () Bool)

(declare-fun e!1266944 () Bool)

(assert (=> d!612017 (=> res!879353 e!1266944)))

(assert (=> d!612017 (= res!879353 (not (is-Cons!22039 rules!3198)))))

(assert (=> d!612017 (= (sepAndNonSepRulesDisjointChars!1053 rules!3198 rules!3198) e!1266944)))

(declare-fun b!2005093 () Bool)

(declare-fun e!1266945 () Bool)

(assert (=> b!2005093 (= e!1266944 e!1266945)))

(declare-fun res!879354 () Bool)

(assert (=> b!2005093 (=> (not res!879354) (not e!1266945))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!466 (Rule!7710 List!22121) Bool)

(assert (=> b!2005093 (= res!879354 (ruleDisjointCharsFromAllFromOtherType!466 (h!27440 rules!3198) rules!3198))))

(declare-fun b!2005094 () Bool)

(assert (=> b!2005094 (= e!1266945 (sepAndNonSepRulesDisjointChars!1053 rules!3198 (t!186782 rules!3198)))))

(assert (= (and d!612017 (not res!879353)) b!2005093))

(assert (= (and b!2005093 res!879354) b!2005094))

(declare-fun m!2436041 () Bool)

(assert (=> b!2005093 m!2436041))

(declare-fun m!2436043 () Bool)

(assert (=> b!2005094 m!2436043))

(assert (=> b!2004747 d!612017))

(declare-fun d!612019 () Bool)

(declare-fun lt!753069 () Bool)

(declare-fun e!1266993 () Bool)

(assert (=> d!612019 (= lt!753069 e!1266993)))

(declare-fun res!879401 () Bool)

(assert (=> d!612019 (=> (not res!879401) (not e!1266993))))

(declare-fun list!8966 (BalanceConc!14544) List!22120)

(declare-datatypes ((tuple2!20708 0))(
  ( (tuple2!20709 (_1!11823 BalanceConc!14544) (_2!11823 BalanceConc!14540)) )
))
(declare-fun lex!1590 (LexerInterface!3568 List!22121 BalanceConc!14540) tuple2!20708)

(assert (=> d!612019 (= res!879401 (= (list!8966 (_1!11823 (lex!1590 thiss!23328 rules!3198 (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354))))) (list!8966 (singletonSeq!1937 separatorToken!354))))))

(declare-fun e!1266994 () Bool)

(assert (=> d!612019 (= lt!753069 e!1266994)))

(declare-fun res!879402 () Bool)

(assert (=> d!612019 (=> (not res!879402) (not e!1266994))))

(declare-fun lt!753070 () tuple2!20708)

(declare-fun size!17230 (BalanceConc!14544) Int)

(assert (=> d!612019 (= res!879402 (= (size!17230 (_1!11823 lt!753070)) 1))))

(assert (=> d!612019 (= lt!753070 (lex!1590 thiss!23328 rules!3198 (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354))))))

(assert (=> d!612019 (not (isEmpty!13654 rules!3198))))

(assert (=> d!612019 (= (rulesProduceIndividualToken!1740 thiss!23328 rules!3198 separatorToken!354) lt!753069)))

(declare-fun b!2005193 () Bool)

(declare-fun res!879403 () Bool)

(assert (=> b!2005193 (=> (not res!879403) (not e!1266994))))

(declare-fun apply!5769 (BalanceConc!14544 Int) Token!7462)

(assert (=> b!2005193 (= res!879403 (= (apply!5769 (_1!11823 lt!753070) 0) separatorToken!354))))

(declare-fun b!2005194 () Bool)

(declare-fun isEmpty!13660 (BalanceConc!14540) Bool)

(assert (=> b!2005194 (= e!1266994 (isEmpty!13660 (_2!11823 lt!753070)))))

(declare-fun b!2005195 () Bool)

(assert (=> b!2005195 (= e!1266993 (isEmpty!13660 (_2!11823 (lex!1590 thiss!23328 rules!3198 (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354))))))))

(assert (= (and d!612019 res!879402) b!2005193))

(assert (= (and b!2005193 res!879403) b!2005194))

(assert (= (and d!612019 res!879401) b!2005195))

(assert (=> d!612019 m!2435733))

(declare-fun m!2436169 () Bool)

(assert (=> d!612019 m!2436169))

(declare-fun m!2436171 () Bool)

(assert (=> d!612019 m!2436171))

(assert (=> d!612019 m!2436171))

(declare-fun m!2436173 () Bool)

(assert (=> d!612019 m!2436173))

(assert (=> d!612019 m!2436171))

(declare-fun m!2436175 () Bool)

(assert (=> d!612019 m!2436175))

(declare-fun m!2436177 () Bool)

(assert (=> d!612019 m!2436177))

(assert (=> d!612019 m!2436173))

(declare-fun m!2436179 () Bool)

(assert (=> d!612019 m!2436179))

(declare-fun m!2436181 () Bool)

(assert (=> b!2005193 m!2436181))

(declare-fun m!2436183 () Bool)

(assert (=> b!2005194 m!2436183))

(assert (=> b!2005195 m!2436171))

(assert (=> b!2005195 m!2436171))

(assert (=> b!2005195 m!2436173))

(assert (=> b!2005195 m!2436173))

(assert (=> b!2005195 m!2436179))

(declare-fun m!2436187 () Bool)

(assert (=> b!2005195 m!2436187))

(assert (=> b!2004746 d!612019))

(declare-fun d!612035 () Bool)

(declare-fun res!879406 () Bool)

(declare-fun e!1266996 () Bool)

(assert (=> d!612035 (=> (not res!879406) (not e!1266996))))

(assert (=> d!612035 (= res!879406 (not (isEmpty!13657 (originalCharacters!4762 separatorToken!354))))))

(assert (=> d!612035 (= (inv!29190 separatorToken!354) e!1266996)))

(declare-fun b!2005198 () Bool)

(declare-fun res!879407 () Bool)

(assert (=> b!2005198 (=> (not res!879407) (not e!1266996))))

(assert (=> b!2005198 (= res!879407 (= (originalCharacters!4762 separatorToken!354) (list!8964 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354)))))))

(declare-fun b!2005199 () Bool)

(assert (=> b!2005199 (= e!1266996 (= (size!17227 separatorToken!354) (size!17229 (originalCharacters!4762 separatorToken!354))))))

(assert (= (and d!612035 res!879406) b!2005198))

(assert (= (and b!2005198 res!879407) b!2005199))

(declare-fun b_lambda!66729 () Bool)

(assert (=> (not b_lambda!66729) (not b!2005198)))

(declare-fun t!186831 () Bool)

(declare-fun tb!124881 () Bool)

(assert (=> (and b!2004733 (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354)))) t!186831) tb!124881))

(declare-fun b!2005200 () Bool)

(declare-fun e!1266997 () Bool)

(declare-fun tp!598515 () Bool)

(assert (=> b!2005200 (= e!1266997 (and (inv!29193 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354)))) tp!598515))))

(declare-fun result!149702 () Bool)

(assert (=> tb!124881 (= result!149702 (and (inv!29194 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354))) e!1266997))))

(assert (= tb!124881 b!2005200))

(declare-fun m!2436193 () Bool)

(assert (=> b!2005200 m!2436193))

(declare-fun m!2436195 () Bool)

(assert (=> tb!124881 m!2436195))

(assert (=> b!2005198 t!186831))

(declare-fun b_and!157933 () Bool)

(assert (= b_and!157885 (and (=> t!186831 result!149702) b_and!157933)))

(declare-fun tb!124883 () Bool)

(declare-fun t!186833 () Bool)

(assert (=> (and b!2004750 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354)))) t!186833) tb!124883))

(declare-fun result!149704 () Bool)

(assert (= result!149704 result!149702))

(assert (=> b!2005198 t!186833))

(declare-fun b_and!157935 () Bool)

(assert (= b_and!157887 (and (=> t!186833 result!149704) b_and!157935)))

(declare-fun tb!124885 () Bool)

(declare-fun t!186835 () Bool)

(assert (=> (and b!2004742 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354)))) t!186835) tb!124885))

(declare-fun result!149706 () Bool)

(assert (= result!149706 result!149702))

(assert (=> b!2005198 t!186835))

(declare-fun b_and!157937 () Bool)

(assert (= b_and!157889 (and (=> t!186835 result!149706) b_and!157937)))

(declare-fun m!2436197 () Bool)

(assert (=> d!612035 m!2436197))

(declare-fun m!2436199 () Bool)

(assert (=> b!2005198 m!2436199))

(assert (=> b!2005198 m!2436199))

(declare-fun m!2436201 () Bool)

(assert (=> b!2005198 m!2436201))

(declare-fun m!2436203 () Bool)

(assert (=> b!2005199 m!2436203))

(assert (=> start!196906 d!612035))

(declare-fun d!612041 () Bool)

(assert (=> d!612041 (= (inv!29186 (tag!4415 (h!27440 rules!3198))) (= (mod (str.len (value!124309 (tag!4415 (h!27440 rules!3198)))) 2) 0))))

(assert (=> b!2004728 d!612041))

(declare-fun d!612043 () Bool)

(declare-fun res!879408 () Bool)

(declare-fun e!1266998 () Bool)

(assert (=> d!612043 (=> (not res!879408) (not e!1266998))))

(assert (=> d!612043 (= res!879408 (semiInverseModEq!1582 (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (h!27440 rules!3198)))))))

(assert (=> d!612043 (= (inv!29189 (transformation!3955 (h!27440 rules!3198))) e!1266998)))

(declare-fun b!2005201 () Bool)

(assert (=> b!2005201 (= e!1266998 (equivClasses!1509 (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (h!27440 rules!3198)))))))

(assert (= (and d!612043 res!879408) b!2005201))

(declare-fun m!2436205 () Bool)

(assert (=> d!612043 m!2436205))

(declare-fun m!2436207 () Bool)

(assert (=> b!2005201 m!2436207))

(assert (=> b!2004728 d!612043))

(declare-fun d!612045 () Bool)

(declare-fun res!879416 () Bool)

(declare-fun e!1267006 () Bool)

(assert (=> d!612045 (=> res!879416 e!1267006)))

(assert (=> d!612045 (= res!879416 (is-Nil!22038 tokens!598))))

(assert (=> d!612045 (= (forall!4679 tokens!598 lambda!75920) e!1267006)))

(declare-fun b!2005209 () Bool)

(declare-fun e!1267007 () Bool)

(assert (=> b!2005209 (= e!1267006 e!1267007)))

(declare-fun res!879417 () Bool)

(assert (=> b!2005209 (=> (not res!879417) (not e!1267007))))

(declare-fun dynLambda!10821 (Int Token!7462) Bool)

(assert (=> b!2005209 (= res!879417 (dynLambda!10821 lambda!75920 (h!27439 tokens!598)))))

(declare-fun b!2005210 () Bool)

(assert (=> b!2005210 (= e!1267007 (forall!4679 (t!186781 tokens!598) lambda!75920))))

(assert (= (and d!612045 (not res!879416)) b!2005209))

(assert (= (and b!2005209 res!879417) b!2005210))

(declare-fun b_lambda!66731 () Bool)

(assert (=> (not b_lambda!66731) (not b!2005209)))

(declare-fun m!2436213 () Bool)

(assert (=> b!2005209 m!2436213))

(declare-fun m!2436215 () Bool)

(assert (=> b!2005210 m!2436215))

(assert (=> b!2004739 d!612045))

(declare-fun b!2005211 () Bool)

(declare-fun e!1267009 () Bool)

(assert (=> b!2005211 (= e!1267009 (inv!16 (value!124310 (h!27439 tokens!598))))))

(declare-fun b!2005212 () Bool)

(declare-fun e!1267008 () Bool)

(assert (=> b!2005212 (= e!1267008 (inv!15 (value!124310 (h!27439 tokens!598))))))

(declare-fun b!2005213 () Bool)

(declare-fun e!1267010 () Bool)

(assert (=> b!2005213 (= e!1267009 e!1267010)))

(declare-fun c!323855 () Bool)

(assert (=> b!2005213 (= c!323855 (is-IntegerValue!12274 (value!124310 (h!27439 tokens!598))))))

(declare-fun b!2005214 () Bool)

(assert (=> b!2005214 (= e!1267010 (inv!17 (value!124310 (h!27439 tokens!598))))))

(declare-fun d!612051 () Bool)

(declare-fun c!323856 () Bool)

(assert (=> d!612051 (= c!323856 (is-IntegerValue!12273 (value!124310 (h!27439 tokens!598))))))

(assert (=> d!612051 (= (inv!21 (value!124310 (h!27439 tokens!598))) e!1267009)))

(declare-fun b!2005215 () Bool)

(declare-fun res!879418 () Bool)

(assert (=> b!2005215 (=> res!879418 e!1267008)))

(assert (=> b!2005215 (= res!879418 (not (is-IntegerValue!12275 (value!124310 (h!27439 tokens!598)))))))

(assert (=> b!2005215 (= e!1267010 e!1267008)))

(assert (= (and d!612051 c!323856) b!2005211))

(assert (= (and d!612051 (not c!323856)) b!2005213))

(assert (= (and b!2005213 c!323855) b!2005214))

(assert (= (and b!2005213 (not c!323855)) b!2005215))

(assert (= (and b!2005215 (not res!879418)) b!2005212))

(declare-fun m!2436217 () Bool)

(assert (=> b!2005211 m!2436217))

(declare-fun m!2436219 () Bool)

(assert (=> b!2005212 m!2436219))

(declare-fun m!2436221 () Bool)

(assert (=> b!2005214 m!2436221))

(assert (=> b!2004738 d!612051))

(declare-fun d!612055 () Bool)

(assert (=> d!612055 (= (isEmpty!13654 rules!3198) (is-Nil!22039 rules!3198))))

(assert (=> b!2004749 d!612055))

(declare-fun d!612057 () Bool)

(declare-fun e!1267013 () Bool)

(assert (=> d!612057 e!1267013))

(declare-fun res!879423 () Bool)

(assert (=> d!612057 (=> (not res!879423) (not e!1267013))))

(assert (=> d!612057 (= res!879423 (isDefined!3879 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354)))))))

(declare-fun lt!753073 () Unit!36581)

(declare-fun choose!12216 (LexerInterface!3568 List!22121 List!22119 Token!7462) Unit!36581)

(assert (=> d!612057 (= lt!753073 (choose!12216 thiss!23328 rules!3198 lt!752911 separatorToken!354))))

(assert (=> d!612057 (rulesInvariant!3175 thiss!23328 rules!3198)))

(assert (=> d!612057 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!770 thiss!23328 rules!3198 lt!752911 separatorToken!354) lt!753073)))

(declare-fun b!2005220 () Bool)

(declare-fun res!879424 () Bool)

(assert (=> b!2005220 (=> (not res!879424) (not e!1267013))))

(assert (=> b!2005220 (= res!879424 (matchR!2646 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354))))) (list!8964 (charsOf!2495 separatorToken!354))))))

(declare-fun b!2005221 () Bool)

(assert (=> b!2005221 (= e!1267013 (= (rule!6178 separatorToken!354) (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354))))))))

(assert (= (and d!612057 res!879423) b!2005220))

(assert (= (and b!2005220 res!879424) b!2005221))

(assert (=> d!612057 m!2435671))

(assert (=> d!612057 m!2435671))

(declare-fun m!2436223 () Bool)

(assert (=> d!612057 m!2436223))

(declare-fun m!2436225 () Bool)

(assert (=> d!612057 m!2436225))

(assert (=> d!612057 m!2435685))

(assert (=> b!2005220 m!2435673))

(assert (=> b!2005220 m!2435673))

(assert (=> b!2005220 m!2435683))

(assert (=> b!2005220 m!2435671))

(assert (=> b!2005220 m!2435683))

(declare-fun m!2436227 () Bool)

(assert (=> b!2005220 m!2436227))

(assert (=> b!2005220 m!2435671))

(declare-fun m!2436229 () Bool)

(assert (=> b!2005220 m!2436229))

(assert (=> b!2005221 m!2435671))

(assert (=> b!2005221 m!2435671))

(assert (=> b!2005221 m!2436229))

(assert (=> b!2004748 d!612057))

(declare-fun d!612059 () Bool)

(declare-fun isEmpty!13662 (Option!4592) Bool)

(assert (=> d!612059 (= (isDefined!3879 lt!752904) (not (isEmpty!13662 lt!752904)))))

(declare-fun bs!419410 () Bool)

(assert (= bs!419410 d!612059))

(declare-fun m!2436231 () Bool)

(assert (=> bs!419410 m!2436231))

(assert (=> b!2004748 d!612059))

(declare-fun b!2005222 () Bool)

(declare-fun res!879431 () Bool)

(declare-fun e!1267015 () Bool)

(assert (=> b!2005222 (=> (not res!879431) (not e!1267015))))

(declare-fun lt!753078 () Option!4591)

(assert (=> b!2005222 (= res!879431 (< (size!17229 (_2!11821 (get!6960 lt!753078))) (size!17229 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))))

(declare-fun b!2005223 () Bool)

(assert (=> b!2005223 (= e!1267015 (contains!4019 rules!3198 (rule!6178 (_1!11821 (get!6960 lt!753078)))))))

(declare-fun b!2005224 () Bool)

(declare-fun e!1267016 () Option!4591)

(declare-fun lt!753077 () Option!4591)

(declare-fun lt!753076 () Option!4591)

(assert (=> b!2005224 (= e!1267016 (ite (and (is-None!4590 lt!753077) (is-None!4590 lt!753076)) None!4590 (ite (is-None!4590 lt!753076) lt!753077 (ite (is-None!4590 lt!753077) lt!753076 (ite (>= (size!17227 (_1!11821 (v!26819 lt!753077))) (size!17227 (_1!11821 (v!26819 lt!753076)))) lt!753077 lt!753076)))))))

(declare-fun call!122547 () Option!4591)

(assert (=> b!2005224 (= lt!753077 call!122547)))

(assert (=> b!2005224 (= lt!753076 (maxPrefix!2004 thiss!23328 (t!186782 rules!3198) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(declare-fun b!2005225 () Bool)

(declare-fun res!879428 () Bool)

(assert (=> b!2005225 (=> (not res!879428) (not e!1267015))))

(assert (=> b!2005225 (= res!879428 (= (value!124310 (_1!11821 (get!6960 lt!753078))) (apply!5768 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753078)))))))))

(declare-fun b!2005227 () Bool)

(declare-fun e!1267014 () Bool)

(assert (=> b!2005227 (= e!1267014 e!1267015)))

(declare-fun res!879425 () Bool)

(assert (=> b!2005227 (=> (not res!879425) (not e!1267015))))

(assert (=> b!2005227 (= res!879425 (isDefined!3880 lt!753078))))

(declare-fun b!2005228 () Bool)

(declare-fun res!879429 () Bool)

(assert (=> b!2005228 (=> (not res!879429) (not e!1267015))))

(assert (=> b!2005228 (= res!879429 (= (++!5946 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078)))) (_2!11821 (get!6960 lt!753078))) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(declare-fun bm!122542 () Bool)

(assert (=> bm!122542 (= call!122547 (maxPrefixOneRule!1240 thiss!23328 (h!27440 rules!3198) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(declare-fun b!2005229 () Bool)

(assert (=> b!2005229 (= e!1267016 call!122547)))

(declare-fun b!2005230 () Bool)

(declare-fun res!879430 () Bool)

(assert (=> b!2005230 (=> (not res!879430) (not e!1267015))))

(assert (=> b!2005230 (= res!879430 (= (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078)))) (originalCharacters!4762 (_1!11821 (get!6960 lt!753078)))))))

(declare-fun d!612061 () Bool)

(assert (=> d!612061 e!1267014))

(declare-fun res!879427 () Bool)

(assert (=> d!612061 (=> res!879427 e!1267014)))

(assert (=> d!612061 (= res!879427 (isEmpty!13658 lt!753078))))

(assert (=> d!612061 (= lt!753078 e!1267016)))

(declare-fun c!323857 () Bool)

(assert (=> d!612061 (= c!323857 (and (is-Cons!22039 rules!3198) (is-Nil!22039 (t!186782 rules!3198))))))

(declare-fun lt!753074 () Unit!36581)

(declare-fun lt!753075 () Unit!36581)

(assert (=> d!612061 (= lt!753074 lt!753075)))

(assert (=> d!612061 (isPrefix!1958 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))

(assert (=> d!612061 (= lt!753075 (lemmaIsPrefixRefl!1276 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(assert (=> d!612061 (rulesValidInductive!1357 thiss!23328 rules!3198)))

(assert (=> d!612061 (= (maxPrefix!2004 thiss!23328 rules!3198 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))) lt!753078)))

(declare-fun b!2005226 () Bool)

(declare-fun res!879426 () Bool)

(assert (=> b!2005226 (=> (not res!879426) (not e!1267015))))

(assert (=> b!2005226 (= res!879426 (matchR!2646 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))) (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078))))))))

(assert (= (and d!612061 c!323857) b!2005229))

(assert (= (and d!612061 (not c!323857)) b!2005224))

(assert (= (or b!2005229 b!2005224) bm!122542))

(assert (= (and d!612061 (not res!879427)) b!2005227))

(assert (= (and b!2005227 res!879425) b!2005230))

(assert (= (and b!2005230 res!879430) b!2005222))

(assert (= (and b!2005222 res!879431) b!2005228))

(assert (= (and b!2005228 res!879429) b!2005225))

(assert (= (and b!2005225 res!879428) b!2005226))

(assert (= (and b!2005226 res!879426) b!2005223))

(declare-fun m!2436233 () Bool)

(assert (=> b!2005227 m!2436233))

(declare-fun m!2436235 () Bool)

(assert (=> b!2005225 m!2436235))

(declare-fun m!2436237 () Bool)

(assert (=> b!2005225 m!2436237))

(assert (=> b!2005225 m!2436237))

(declare-fun m!2436239 () Bool)

(assert (=> b!2005225 m!2436239))

(assert (=> b!2005223 m!2436235))

(declare-fun m!2436241 () Bool)

(assert (=> b!2005223 m!2436241))

(declare-fun m!2436243 () Bool)

(assert (=> d!612061 m!2436243))

(assert (=> d!612061 m!2435653))

(assert (=> d!612061 m!2435653))

(declare-fun m!2436245 () Bool)

(assert (=> d!612061 m!2436245))

(assert (=> d!612061 m!2435653))

(assert (=> d!612061 m!2435653))

(declare-fun m!2436247 () Bool)

(assert (=> d!612061 m!2436247))

(assert (=> d!612061 m!2435857))

(assert (=> b!2005226 m!2436235))

(declare-fun m!2436249 () Bool)

(assert (=> b!2005226 m!2436249))

(assert (=> b!2005226 m!2436249))

(declare-fun m!2436251 () Bool)

(assert (=> b!2005226 m!2436251))

(assert (=> b!2005226 m!2436251))

(declare-fun m!2436253 () Bool)

(assert (=> b!2005226 m!2436253))

(assert (=> b!2005228 m!2436235))

(assert (=> b!2005228 m!2436249))

(assert (=> b!2005228 m!2436249))

(assert (=> b!2005228 m!2436251))

(assert (=> b!2005228 m!2436251))

(declare-fun m!2436255 () Bool)

(assert (=> b!2005228 m!2436255))

(assert (=> b!2005230 m!2436235))

(assert (=> b!2005230 m!2436249))

(assert (=> b!2005230 m!2436249))

(assert (=> b!2005230 m!2436251))

(assert (=> b!2005222 m!2436235))

(declare-fun m!2436257 () Bool)

(assert (=> b!2005222 m!2436257))

(assert (=> b!2005222 m!2435653))

(declare-fun m!2436259 () Bool)

(assert (=> b!2005222 m!2436259))

(assert (=> b!2005224 m!2435653))

(declare-fun m!2436261 () Bool)

(assert (=> b!2005224 m!2436261))

(assert (=> bm!122542 m!2435653))

(declare-fun m!2436263 () Bool)

(assert (=> bm!122542 m!2436263))

(assert (=> b!2004748 d!612061))

(declare-fun d!612063 () Bool)

(assert (=> d!612063 (= (isDefined!3880 lt!752912) (not (isEmpty!13658 lt!752912)))))

(declare-fun bs!419411 () Bool)

(assert (= bs!419411 d!612063))

(declare-fun m!2436265 () Bool)

(assert (=> bs!419411 m!2436265))

(assert (=> b!2004748 d!612063))

(declare-fun b!2005231 () Bool)

(declare-fun res!879438 () Bool)

(declare-fun e!1267018 () Bool)

(assert (=> b!2005231 (=> (not res!879438) (not e!1267018))))

(declare-fun lt!753083 () Option!4591)

(assert (=> b!2005231 (= res!879438 (< (size!17229 (_2!11821 (get!6960 lt!753083))) (size!17229 lt!752900)))))

(declare-fun b!2005232 () Bool)

(assert (=> b!2005232 (= e!1267018 (contains!4019 rules!3198 (rule!6178 (_1!11821 (get!6960 lt!753083)))))))

(declare-fun b!2005233 () Bool)

(declare-fun e!1267019 () Option!4591)

(declare-fun lt!753082 () Option!4591)

(declare-fun lt!753081 () Option!4591)

(assert (=> b!2005233 (= e!1267019 (ite (and (is-None!4590 lt!753082) (is-None!4590 lt!753081)) None!4590 (ite (is-None!4590 lt!753081) lt!753082 (ite (is-None!4590 lt!753082) lt!753081 (ite (>= (size!17227 (_1!11821 (v!26819 lt!753082))) (size!17227 (_1!11821 (v!26819 lt!753081)))) lt!753082 lt!753081)))))))

(declare-fun call!122548 () Option!4591)

(assert (=> b!2005233 (= lt!753082 call!122548)))

(assert (=> b!2005233 (= lt!753081 (maxPrefix!2004 thiss!23328 (t!186782 rules!3198) lt!752900))))

(declare-fun b!2005234 () Bool)

(declare-fun res!879435 () Bool)

(assert (=> b!2005234 (=> (not res!879435) (not e!1267018))))

(assert (=> b!2005234 (= res!879435 (= (value!124310 (_1!11821 (get!6960 lt!753083))) (apply!5768 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753083)))))))))

(declare-fun b!2005236 () Bool)

(declare-fun e!1267017 () Bool)

(assert (=> b!2005236 (= e!1267017 e!1267018)))

(declare-fun res!879432 () Bool)

(assert (=> b!2005236 (=> (not res!879432) (not e!1267018))))

(assert (=> b!2005236 (= res!879432 (isDefined!3880 lt!753083))))

(declare-fun b!2005237 () Bool)

(declare-fun res!879436 () Bool)

(assert (=> b!2005237 (=> (not res!879436) (not e!1267018))))

(assert (=> b!2005237 (= res!879436 (= (++!5946 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083)))) (_2!11821 (get!6960 lt!753083))) lt!752900))))

(declare-fun bm!122543 () Bool)

(assert (=> bm!122543 (= call!122548 (maxPrefixOneRule!1240 thiss!23328 (h!27440 rules!3198) lt!752900))))

(declare-fun b!2005238 () Bool)

(assert (=> b!2005238 (= e!1267019 call!122548)))

(declare-fun b!2005239 () Bool)

(declare-fun res!879437 () Bool)

(assert (=> b!2005239 (=> (not res!879437) (not e!1267018))))

(assert (=> b!2005239 (= res!879437 (= (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083)))) (originalCharacters!4762 (_1!11821 (get!6960 lt!753083)))))))

(declare-fun d!612065 () Bool)

(assert (=> d!612065 e!1267017))

(declare-fun res!879434 () Bool)

(assert (=> d!612065 (=> res!879434 e!1267017)))

(assert (=> d!612065 (= res!879434 (isEmpty!13658 lt!753083))))

(assert (=> d!612065 (= lt!753083 e!1267019)))

(declare-fun c!323858 () Bool)

(assert (=> d!612065 (= c!323858 (and (is-Cons!22039 rules!3198) (is-Nil!22039 (t!186782 rules!3198))))))

(declare-fun lt!753079 () Unit!36581)

(declare-fun lt!753080 () Unit!36581)

(assert (=> d!612065 (= lt!753079 lt!753080)))

(assert (=> d!612065 (isPrefix!1958 lt!752900 lt!752900)))

(assert (=> d!612065 (= lt!753080 (lemmaIsPrefixRefl!1276 lt!752900 lt!752900))))

(assert (=> d!612065 (rulesValidInductive!1357 thiss!23328 rules!3198)))

(assert (=> d!612065 (= (maxPrefix!2004 thiss!23328 rules!3198 lt!752900) lt!753083)))

(declare-fun b!2005235 () Bool)

(declare-fun res!879433 () Bool)

(assert (=> b!2005235 (=> (not res!879433) (not e!1267018))))

(assert (=> b!2005235 (= res!879433 (matchR!2646 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))) (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083))))))))

(assert (= (and d!612065 c!323858) b!2005238))

(assert (= (and d!612065 (not c!323858)) b!2005233))

(assert (= (or b!2005238 b!2005233) bm!122543))

(assert (= (and d!612065 (not res!879434)) b!2005236))

(assert (= (and b!2005236 res!879432) b!2005239))

(assert (= (and b!2005239 res!879437) b!2005231))

(assert (= (and b!2005231 res!879438) b!2005237))

(assert (= (and b!2005237 res!879436) b!2005234))

(assert (= (and b!2005234 res!879435) b!2005235))

(assert (= (and b!2005235 res!879433) b!2005232))

(declare-fun m!2436267 () Bool)

(assert (=> b!2005236 m!2436267))

(declare-fun m!2436269 () Bool)

(assert (=> b!2005234 m!2436269))

(declare-fun m!2436271 () Bool)

(assert (=> b!2005234 m!2436271))

(assert (=> b!2005234 m!2436271))

(declare-fun m!2436273 () Bool)

(assert (=> b!2005234 m!2436273))

(assert (=> b!2005232 m!2436269))

(declare-fun m!2436275 () Bool)

(assert (=> b!2005232 m!2436275))

(declare-fun m!2436277 () Bool)

(assert (=> d!612065 m!2436277))

(declare-fun m!2436279 () Bool)

(assert (=> d!612065 m!2436279))

(declare-fun m!2436281 () Bool)

(assert (=> d!612065 m!2436281))

(assert (=> d!612065 m!2435857))

(assert (=> b!2005235 m!2436269))

(declare-fun m!2436283 () Bool)

(assert (=> b!2005235 m!2436283))

(assert (=> b!2005235 m!2436283))

(declare-fun m!2436285 () Bool)

(assert (=> b!2005235 m!2436285))

(assert (=> b!2005235 m!2436285))

(declare-fun m!2436287 () Bool)

(assert (=> b!2005235 m!2436287))

(assert (=> b!2005237 m!2436269))

(assert (=> b!2005237 m!2436283))

(assert (=> b!2005237 m!2436283))

(assert (=> b!2005237 m!2436285))

(assert (=> b!2005237 m!2436285))

(declare-fun m!2436289 () Bool)

(assert (=> b!2005237 m!2436289))

(assert (=> b!2005239 m!2436269))

(assert (=> b!2005239 m!2436283))

(assert (=> b!2005239 m!2436283))

(assert (=> b!2005239 m!2436285))

(assert (=> b!2005231 m!2436269))

(declare-fun m!2436291 () Bool)

(assert (=> b!2005231 m!2436291))

(declare-fun m!2436293 () Bool)

(assert (=> b!2005231 m!2436293))

(declare-fun m!2436295 () Bool)

(assert (=> b!2005233 m!2436295))

(declare-fun m!2436297 () Bool)

(assert (=> bm!122543 m!2436297))

(assert (=> b!2004748 d!612065))

(declare-fun b!2005246 () Bool)

(declare-fun e!1267024 () Bool)

(assert (=> b!2005246 (= e!1267024 true)))

(declare-fun d!612067 () Bool)

(assert (=> d!612067 e!1267024))

(assert (= d!612067 b!2005246))

(declare-fun order!13969 () Int)

(declare-fun lambda!75941 () Int)

(declare-fun dynLambda!10825 (Int Int) Int)

(assert (=> b!2005246 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (dynLambda!10825 order!13969 lambda!75941))))

(assert (=> b!2005246 (< (dynLambda!10816 order!13963 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (dynLambda!10825 order!13969 lambda!75941))))

(declare-fun dynLambda!10826 (Int BalanceConc!14540) TokenValue!4091)

(assert (=> d!612067 (= (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598)))))))

(declare-fun lt!753086 () Unit!36581)

(declare-fun Forall2of!219 (Int BalanceConc!14540 BalanceConc!14540) Unit!36581)

(assert (=> d!612067 (= lt!753086 (Forall2of!219 lambda!75941 lt!752906 (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598)))))))

(assert (=> d!612067 (= (list!8964 lt!752906) (list!8964 (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598)))))))

(assert (=> d!612067 (= (lemmaEqSameImage!641 (transformation!3955 (rule!6178 (h!27439 tokens!598))) lt!752906 (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598)))) lt!753086)))

(declare-fun b_lambda!66733 () Bool)

(assert (=> (not b_lambda!66733) (not d!612067)))

(declare-fun t!186837 () Bool)

(declare-fun tb!124887 () Bool)

(assert (=> (and b!2004733 (= (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186837) tb!124887))

(declare-fun result!149708 () Bool)

(assert (=> tb!124887 (= result!149708 (inv!21 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906)))))

(declare-fun m!2436299 () Bool)

(assert (=> tb!124887 m!2436299))

(assert (=> d!612067 t!186837))

(declare-fun b_and!157939 () Bool)

(assert (= b_and!157861 (and (=> t!186837 result!149708) b_and!157939)))

(declare-fun tb!124889 () Bool)

(declare-fun t!186839 () Bool)

(assert (=> (and b!2004750 (= (toValue!5616 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186839) tb!124889))

(declare-fun result!149712 () Bool)

(assert (= result!149712 result!149708))

(assert (=> d!612067 t!186839))

(declare-fun b_and!157941 () Bool)

(assert (= b_and!157865 (and (=> t!186839 result!149712) b_and!157941)))

(declare-fun t!186841 () Bool)

(declare-fun tb!124891 () Bool)

(assert (=> (and b!2004742 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186841) tb!124891))

(declare-fun result!149714 () Bool)

(assert (= result!149714 result!149708))

(assert (=> d!612067 t!186841))

(declare-fun b_and!157943 () Bool)

(assert (= b_and!157869 (and (=> t!186841 result!149714) b_and!157943)))

(declare-fun b_lambda!66735 () Bool)

(assert (=> (not b_lambda!66735) (not d!612067)))

(declare-fun tb!124893 () Bool)

(declare-fun t!186843 () Bool)

(assert (=> (and b!2004733 (= (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186843) tb!124893))

(declare-fun result!149716 () Bool)

(assert (=> tb!124893 (= result!149716 (inv!21 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598))))))))

(declare-fun m!2436301 () Bool)

(assert (=> tb!124893 m!2436301))

(assert (=> d!612067 t!186843))

(declare-fun b_and!157945 () Bool)

(assert (= b_and!157939 (and (=> t!186843 result!149716) b_and!157945)))

(declare-fun tb!124895 () Bool)

(declare-fun t!186845 () Bool)

(assert (=> (and b!2004750 (= (toValue!5616 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186845) tb!124895))

(declare-fun result!149718 () Bool)

(assert (= result!149718 result!149716))

(assert (=> d!612067 t!186845))

(declare-fun b_and!157947 () Bool)

(assert (= b_and!157941 (and (=> t!186845 result!149718) b_and!157947)))

(declare-fun t!186847 () Bool)

(declare-fun tb!124897 () Bool)

(assert (=> (and b!2004742 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186847) tb!124897))

(declare-fun result!149720 () Bool)

(assert (= result!149720 result!149716))

(assert (=> d!612067 t!186847))

(declare-fun b_and!157949 () Bool)

(assert (= b_and!157943 (and (=> t!186847 result!149720) b_and!157949)))

(assert (=> d!612067 m!2435661))

(assert (=> d!612067 m!2435655))

(declare-fun m!2436303 () Bool)

(assert (=> d!612067 m!2436303))

(assert (=> d!612067 m!2435655))

(declare-fun m!2436305 () Bool)

(assert (=> d!612067 m!2436305))

(assert (=> d!612067 m!2435655))

(declare-fun m!2436307 () Bool)

(assert (=> d!612067 m!2436307))

(declare-fun m!2436309 () Bool)

(assert (=> d!612067 m!2436309))

(assert (=> b!2004748 d!612067))

(declare-fun bs!419412 () Bool)

(declare-fun b!2005255 () Bool)

(assert (= bs!419412 (and b!2005255 b!2004739)))

(declare-fun lambda!75942 () Int)

(assert (=> bs!419412 (not (= lambda!75942 lambda!75920))))

(declare-fun bs!419413 () Bool)

(assert (= bs!419413 (and b!2005255 b!2004952)))

(assert (=> bs!419413 (= lambda!75942 lambda!75929)))

(declare-fun bs!419414 () Bool)

(assert (= bs!419414 (and b!2005255 d!611997)))

(assert (=> bs!419414 (= lambda!75942 lambda!75935)))

(declare-fun b!2005259 () Bool)

(declare-fun e!1267035 () Bool)

(assert (=> b!2005259 (= e!1267035 true)))

(declare-fun b!2005258 () Bool)

(declare-fun e!1267034 () Bool)

(assert (=> b!2005258 (= e!1267034 e!1267035)))

(declare-fun b!2005257 () Bool)

(declare-fun e!1267033 () Bool)

(assert (=> b!2005257 (= e!1267033 e!1267034)))

(assert (=> b!2005255 e!1267033))

(assert (= b!2005258 b!2005259))

(assert (= b!2005257 b!2005258))

(assert (= (and b!2005255 (is-Cons!22039 rules!3198)) b!2005257))

(assert (=> b!2005259 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (h!27440 rules!3198)))) (dynLambda!10815 order!13961 lambda!75942))))

(assert (=> b!2005259 (< (dynLambda!10816 order!13963 (toChars!5475 (transformation!3955 (h!27440 rules!3198)))) (dynLambda!10815 order!13961 lambda!75942))))

(assert (=> b!2005255 true))

(declare-fun bm!122544 () Bool)

(declare-fun c!323861 () Bool)

(declare-fun c!323860 () Bool)

(assert (=> bm!122544 (= c!323861 c!323860)))

(declare-fun call!122552 () List!22119)

(declare-fun lt!753092 () List!22119)

(declare-fun e!1267031 () List!22119)

(declare-fun call!122553 () List!22119)

(assert (=> bm!122544 (= call!122552 (++!5946 e!1267031 (ite c!323860 lt!753092 call!122553)))))

(declare-fun b!2005249 () Bool)

(assert (=> b!2005249 (= e!1267031 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598)))))))

(declare-fun bm!122545 () Bool)

(declare-fun c!323862 () Bool)

(declare-fun call!122550 () BalanceConc!14540)

(assert (=> bm!122545 (= call!122550 (charsOf!2495 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598))))))))

(declare-fun bm!122546 () Bool)

(declare-fun call!122551 () List!22119)

(assert (=> bm!122546 (= call!122553 call!122551)))

(declare-fun b!2005250 () Bool)

(declare-fun e!1267029 () List!22119)

(assert (=> b!2005250 (= e!1267029 Nil!22037)))

(declare-fun b!2005251 () Bool)

(declare-fun e!1267032 () List!22119)

(assert (=> b!2005251 (= e!1267032 (++!5946 call!122552 lt!753092))))

(declare-fun b!2005252 () Bool)

(declare-fun e!1267030 () List!22119)

(assert (=> b!2005252 (= e!1267030 call!122552)))

(declare-fun call!122549 () BalanceConc!14540)

(declare-fun bm!122547 () Bool)

(assert (=> bm!122547 (= call!122551 (list!8964 (ite c!323860 call!122550 call!122549)))))

(declare-fun d!612069 () Bool)

(declare-fun c!323859 () Bool)

(assert (=> d!612069 (= c!323859 (is-Cons!22038 (t!186781 tokens!598)))))

(assert (=> d!612069 (= (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354) e!1267029)))

(declare-fun b!2005253 () Bool)

(assert (=> b!2005253 (= e!1267032 Nil!22037)))

(assert (=> b!2005253 (= (print!1536 thiss!23328 (singletonSeq!1937 (h!27439 (t!186781 tokens!598)))) (printTailRec!1042 thiss!23328 (singletonSeq!1937 (h!27439 (t!186781 tokens!598))) 0 (BalanceConc!14541 Empty!7362)))))

(declare-fun lt!753089 () Unit!36581)

(declare-fun Unit!36590 () Unit!36581)

(assert (=> b!2005253 (= lt!753089 Unit!36590)))

(declare-fun lt!753087 () Unit!36581)

(assert (=> b!2005253 (= lt!753087 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!752 thiss!23328 rules!3198 call!122553 lt!753092))))

(assert (=> b!2005253 false))

(declare-fun lt!753088 () Unit!36581)

(declare-fun Unit!36591 () Unit!36581)

(assert (=> b!2005253 (= lt!753088 Unit!36591)))

(declare-fun b!2005254 () Bool)

(declare-fun lt!753091 () Option!4591)

(assert (=> b!2005254 (= c!323862 (and (is-Some!4590 lt!753091) (not (= (_1!11821 (v!26819 lt!753091)) (h!27439 (t!186781 tokens!598))))))))

(assert (=> b!2005254 (= e!1267030 e!1267032)))

(assert (=> b!2005255 (= e!1267029 e!1267030)))

(declare-fun lt!753090 () Unit!36581)

(assert (=> b!2005255 (= lt!753090 (forallContained!721 (t!186781 tokens!598) lambda!75942 (h!27439 (t!186781 tokens!598))))))

(assert (=> b!2005255 (= lt!753092 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 (t!186781 tokens!598)) separatorToken!354))))

(assert (=> b!2005255 (= lt!753091 (maxPrefix!2004 thiss!23328 rules!3198 (++!5946 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598)))) lt!753092)))))

(assert (=> b!2005255 (= c!323860 (and (is-Some!4590 lt!753091) (= (_1!11821 (v!26819 lt!753091)) (h!27439 (t!186781 tokens!598)))))))

(declare-fun bm!122548 () Bool)

(assert (=> bm!122548 (= call!122549 call!122550)))

(declare-fun b!2005256 () Bool)

(assert (=> b!2005256 (= e!1267031 call!122551)))

(assert (= (and d!612069 c!323859) b!2005255))

(assert (= (and d!612069 (not c!323859)) b!2005250))

(assert (= (and b!2005255 c!323860) b!2005252))

(assert (= (and b!2005255 (not c!323860)) b!2005254))

(assert (= (and b!2005254 c!323862) b!2005251))

(assert (= (and b!2005254 (not c!323862)) b!2005253))

(assert (= (or b!2005251 b!2005253) bm!122548))

(assert (= (or b!2005251 b!2005253) bm!122546))

(assert (= (or b!2005252 bm!122548) bm!122545))

(assert (= (or b!2005252 bm!122546) bm!122547))

(assert (= (or b!2005252 b!2005251) bm!122544))

(assert (= (and bm!122544 c!323861) b!2005256))

(assert (= (and bm!122544 (not c!323861)) b!2005249))

(declare-fun m!2436311 () Bool)

(assert (=> b!2005249 m!2436311))

(assert (=> b!2005249 m!2436311))

(declare-fun m!2436313 () Bool)

(assert (=> b!2005249 m!2436313))

(declare-fun m!2436315 () Bool)

(assert (=> b!2005253 m!2436315))

(assert (=> b!2005253 m!2436315))

(declare-fun m!2436317 () Bool)

(assert (=> b!2005253 m!2436317))

(assert (=> b!2005253 m!2436315))

(declare-fun m!2436319 () Bool)

(assert (=> b!2005253 m!2436319))

(declare-fun m!2436321 () Bool)

(assert (=> b!2005253 m!2436321))

(declare-fun m!2436323 () Bool)

(assert (=> bm!122544 m!2436323))

(assert (=> b!2005255 m!2436311))

(assert (=> b!2005255 m!2436311))

(assert (=> b!2005255 m!2436313))

(assert (=> b!2005255 m!2436313))

(declare-fun m!2436325 () Bool)

(assert (=> b!2005255 m!2436325))

(declare-fun m!2436327 () Bool)

(assert (=> b!2005255 m!2436327))

(assert (=> b!2005255 m!2436325))

(declare-fun m!2436329 () Bool)

(assert (=> b!2005255 m!2436329))

(declare-fun m!2436331 () Bool)

(assert (=> b!2005255 m!2436331))

(declare-fun m!2436333 () Bool)

(assert (=> bm!122545 m!2436333))

(declare-fun m!2436335 () Bool)

(assert (=> bm!122547 m!2436335))

(declare-fun m!2436337 () Bool)

(assert (=> b!2005251 m!2436337))

(assert (=> b!2004748 d!612069))

(declare-fun d!612071 () Bool)

(declare-fun list!8968 (Conc!7362) List!22119)

(assert (=> d!612071 (= (list!8964 (charsOf!2495 separatorToken!354)) (list!8968 (c!323781 (charsOf!2495 separatorToken!354))))))

(declare-fun bs!419415 () Bool)

(assert (= bs!419415 d!612071))

(declare-fun m!2436339 () Bool)

(assert (=> bs!419415 m!2436339))

(assert (=> b!2004748 d!612071))

(declare-fun d!612073 () Bool)

(declare-fun e!1267036 () Bool)

(assert (=> d!612073 e!1267036))

(declare-fun res!879441 () Bool)

(assert (=> d!612073 (=> (not res!879441) (not e!1267036))))

(assert (=> d!612073 (= res!879441 (isDefined!3879 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598))))))))

(declare-fun lt!753093 () Unit!36581)

(assert (=> d!612073 (= lt!753093 (choose!12216 thiss!23328 rules!3198 lt!752900 (h!27439 tokens!598)))))

(assert (=> d!612073 (rulesInvariant!3175 thiss!23328 rules!3198)))

(assert (=> d!612073 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!770 thiss!23328 rules!3198 lt!752900 (h!27439 tokens!598)) lt!753093)))

(declare-fun b!2005260 () Bool)

(declare-fun res!879442 () Bool)

(assert (=> b!2005260 (=> (not res!879442) (not e!1267036))))

(assert (=> b!2005260 (= res!879442 (matchR!2646 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598)))))) (list!8964 (charsOf!2495 (h!27439 tokens!598)))))))

(declare-fun b!2005261 () Bool)

(assert (=> b!2005261 (= e!1267036 (= (rule!6178 (h!27439 tokens!598)) (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598)))))))))

(assert (= (and d!612073 res!879441) b!2005260))

(assert (= (and b!2005260 res!879442) b!2005261))

(assert (=> d!612073 m!2435677))

(assert (=> d!612073 m!2435677))

(declare-fun m!2436341 () Bool)

(assert (=> d!612073 m!2436341))

(declare-fun m!2436343 () Bool)

(assert (=> d!612073 m!2436343))

(assert (=> d!612073 m!2435685))

(assert (=> b!2005260 m!2435675))

(assert (=> b!2005260 m!2435675))

(assert (=> b!2005260 m!2435925))

(assert (=> b!2005260 m!2435677))

(assert (=> b!2005260 m!2435925))

(declare-fun m!2436345 () Bool)

(assert (=> b!2005260 m!2436345))

(assert (=> b!2005260 m!2435677))

(declare-fun m!2436347 () Bool)

(assert (=> b!2005260 m!2436347))

(assert (=> b!2005261 m!2435677))

(assert (=> b!2005261 m!2435677))

(assert (=> b!2005261 m!2436347))

(assert (=> b!2004748 d!612073))

(declare-fun b!2005274 () Bool)

(declare-fun lt!753101 () Unit!36581)

(declare-fun lt!753100 () Unit!36581)

(assert (=> b!2005274 (= lt!753101 lt!753100)))

(assert (=> b!2005274 (rulesInvariant!3175 thiss!23328 (t!186782 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!284 (LexerInterface!3568 Rule!7710 List!22121) Unit!36581)

(assert (=> b!2005274 (= lt!753100 (lemmaInvariantOnRulesThenOnTail!284 thiss!23328 (h!27440 rules!3198) (t!186782 rules!3198)))))

(declare-fun e!1267048 () Option!4592)

(assert (=> b!2005274 (= e!1267048 (getRuleFromTag!770 thiss!23328 (t!186782 rules!3198) (tag!4415 (rule!6178 separatorToken!354))))))

(declare-fun d!612075 () Bool)

(declare-fun e!1267045 () Bool)

(assert (=> d!612075 e!1267045))

(declare-fun res!879448 () Bool)

(assert (=> d!612075 (=> res!879448 e!1267045)))

(declare-fun lt!753102 () Option!4592)

(assert (=> d!612075 (= res!879448 (isEmpty!13662 lt!753102))))

(declare-fun e!1267047 () Option!4592)

(assert (=> d!612075 (= lt!753102 e!1267047)))

(declare-fun c!323868 () Bool)

(assert (=> d!612075 (= c!323868 (and (is-Cons!22039 rules!3198) (= (tag!4415 (h!27440 rules!3198)) (tag!4415 (rule!6178 separatorToken!354)))))))

(assert (=> d!612075 (rulesInvariant!3175 thiss!23328 rules!3198)))

(assert (=> d!612075 (= (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354))) lt!753102)))

(declare-fun b!2005275 () Bool)

(declare-fun e!1267046 () Bool)

(assert (=> b!2005275 (= e!1267046 (= (tag!4415 (get!6961 lt!753102)) (tag!4415 (rule!6178 separatorToken!354))))))

(declare-fun b!2005276 () Bool)

(assert (=> b!2005276 (= e!1267047 e!1267048)))

(declare-fun c!323867 () Bool)

(assert (=> b!2005276 (= c!323867 (and (is-Cons!22039 rules!3198) (not (= (tag!4415 (h!27440 rules!3198)) (tag!4415 (rule!6178 separatorToken!354))))))))

(declare-fun b!2005277 () Bool)

(assert (=> b!2005277 (= e!1267045 e!1267046)))

(declare-fun res!879447 () Bool)

(assert (=> b!2005277 (=> (not res!879447) (not e!1267046))))

(assert (=> b!2005277 (= res!879447 (contains!4019 rules!3198 (get!6961 lt!753102)))))

(declare-fun b!2005278 () Bool)

(assert (=> b!2005278 (= e!1267048 None!4591)))

(declare-fun b!2005279 () Bool)

(assert (=> b!2005279 (= e!1267047 (Some!4591 (h!27440 rules!3198)))))

(assert (= (and d!612075 c!323868) b!2005279))

(assert (= (and d!612075 (not c!323868)) b!2005276))

(assert (= (and b!2005276 c!323867) b!2005274))

(assert (= (and b!2005276 (not c!323867)) b!2005278))

(assert (= (and d!612075 (not res!879448)) b!2005277))

(assert (= (and b!2005277 res!879447) b!2005275))

(declare-fun m!2436349 () Bool)

(assert (=> b!2005274 m!2436349))

(declare-fun m!2436351 () Bool)

(assert (=> b!2005274 m!2436351))

(declare-fun m!2436353 () Bool)

(assert (=> b!2005274 m!2436353))

(declare-fun m!2436355 () Bool)

(assert (=> d!612075 m!2436355))

(assert (=> d!612075 m!2435685))

(declare-fun m!2436357 () Bool)

(assert (=> b!2005275 m!2436357))

(assert (=> b!2005277 m!2436357))

(assert (=> b!2005277 m!2436357))

(declare-fun m!2436359 () Bool)

(assert (=> b!2005277 m!2436359))

(assert (=> b!2004748 d!612075))

(declare-fun b!2005280 () Bool)

(declare-fun lt!753104 () Unit!36581)

(declare-fun lt!753103 () Unit!36581)

(assert (=> b!2005280 (= lt!753104 lt!753103)))

(assert (=> b!2005280 (rulesInvariant!3175 thiss!23328 (t!186782 rules!3198))))

(assert (=> b!2005280 (= lt!753103 (lemmaInvariantOnRulesThenOnTail!284 thiss!23328 (h!27440 rules!3198) (t!186782 rules!3198)))))

(declare-fun e!1267052 () Option!4592)

(assert (=> b!2005280 (= e!1267052 (getRuleFromTag!770 thiss!23328 (t!186782 rules!3198) (tag!4415 (rule!6178 (h!27439 tokens!598)))))))

(declare-fun d!612077 () Bool)

(declare-fun e!1267049 () Bool)

(assert (=> d!612077 e!1267049))

(declare-fun res!879450 () Bool)

(assert (=> d!612077 (=> res!879450 e!1267049)))

(declare-fun lt!753105 () Option!4592)

(assert (=> d!612077 (= res!879450 (isEmpty!13662 lt!753105))))

(declare-fun e!1267051 () Option!4592)

(assert (=> d!612077 (= lt!753105 e!1267051)))

(declare-fun c!323870 () Bool)

(assert (=> d!612077 (= c!323870 (and (is-Cons!22039 rules!3198) (= (tag!4415 (h!27440 rules!3198)) (tag!4415 (rule!6178 (h!27439 tokens!598))))))))

(assert (=> d!612077 (rulesInvariant!3175 thiss!23328 rules!3198)))

(assert (=> d!612077 (= (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598)))) lt!753105)))

(declare-fun b!2005281 () Bool)

(declare-fun e!1267050 () Bool)

(assert (=> b!2005281 (= e!1267050 (= (tag!4415 (get!6961 lt!753105)) (tag!4415 (rule!6178 (h!27439 tokens!598)))))))

(declare-fun b!2005282 () Bool)

(assert (=> b!2005282 (= e!1267051 e!1267052)))

(declare-fun c!323869 () Bool)

(assert (=> b!2005282 (= c!323869 (and (is-Cons!22039 rules!3198) (not (= (tag!4415 (h!27440 rules!3198)) (tag!4415 (rule!6178 (h!27439 tokens!598)))))))))

(declare-fun b!2005283 () Bool)

(assert (=> b!2005283 (= e!1267049 e!1267050)))

(declare-fun res!879449 () Bool)

(assert (=> b!2005283 (=> (not res!879449) (not e!1267050))))

(assert (=> b!2005283 (= res!879449 (contains!4019 rules!3198 (get!6961 lt!753105)))))

(declare-fun b!2005284 () Bool)

(assert (=> b!2005284 (= e!1267052 None!4591)))

(declare-fun b!2005285 () Bool)

(assert (=> b!2005285 (= e!1267051 (Some!4591 (h!27440 rules!3198)))))

(assert (= (and d!612077 c!323870) b!2005285))

(assert (= (and d!612077 (not c!323870)) b!2005282))

(assert (= (and b!2005282 c!323869) b!2005280))

(assert (= (and b!2005282 (not c!323869)) b!2005284))

(assert (= (and d!612077 (not res!879450)) b!2005283))

(assert (= (and b!2005283 res!879449) b!2005281))

(assert (=> b!2005280 m!2436349))

(assert (=> b!2005280 m!2436351))

(declare-fun m!2436361 () Bool)

(assert (=> b!2005280 m!2436361))

(declare-fun m!2436363 () Bool)

(assert (=> d!612077 m!2436363))

(assert (=> d!612077 m!2435685))

(declare-fun m!2436365 () Bool)

(assert (=> b!2005281 m!2436365))

(assert (=> b!2005283 m!2436365))

(assert (=> b!2005283 m!2436365))

(declare-fun m!2436367 () Bool)

(assert (=> b!2005283 m!2436367))

(assert (=> b!2004748 d!612077))

(declare-fun b!2005290 () Bool)

(declare-fun e!1267055 () Bool)

(assert (=> b!2005290 (= e!1267055 true)))

(declare-fun d!612079 () Bool)

(assert (=> d!612079 e!1267055))

(assert (= d!612079 b!2005290))

(declare-fun lambda!75945 () Int)

(declare-fun order!13971 () Int)

(declare-fun dynLambda!10827 (Int Int) Int)

(assert (=> b!2005290 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (dynLambda!10827 order!13971 lambda!75945))))

(assert (=> b!2005290 (< (dynLambda!10816 order!13963 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (dynLambda!10827 order!13971 lambda!75945))))

(assert (=> d!612079 (= (list!8964 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906))) (list!8964 lt!752906))))

(declare-fun lt!753108 () Unit!36581)

(declare-fun ForallOf!423 (Int BalanceConc!14540) Unit!36581)

(assert (=> d!612079 (= lt!753108 (ForallOf!423 lambda!75945 lt!752906))))

(assert (=> d!612079 (= (lemmaSemiInverse!912 (transformation!3955 (rule!6178 (h!27439 tokens!598))) lt!752906) lt!753108)))

(declare-fun b_lambda!66737 () Bool)

(assert (=> (not b_lambda!66737) (not d!612079)))

(declare-fun tb!124899 () Bool)

(declare-fun t!186849 () Bool)

(assert (=> (and b!2004733 (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186849) tb!124899))

(declare-fun tp!598516 () Bool)

(declare-fun b!2005291 () Bool)

(declare-fun e!1267056 () Bool)

(assert (=> b!2005291 (= e!1267056 (and (inv!29193 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906)))) tp!598516))))

(declare-fun result!149722 () Bool)

(assert (=> tb!124899 (= result!149722 (and (inv!29194 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906))) e!1267056))))

(assert (= tb!124899 b!2005291))

(declare-fun m!2436369 () Bool)

(assert (=> b!2005291 m!2436369))

(declare-fun m!2436371 () Bool)

(assert (=> tb!124899 m!2436371))

(assert (=> d!612079 t!186849))

(declare-fun b_and!157951 () Bool)

(assert (= b_and!157933 (and (=> t!186849 result!149722) b_and!157951)))

(declare-fun t!186851 () Bool)

(declare-fun tb!124901 () Bool)

(assert (=> (and b!2004750 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186851) tb!124901))

(declare-fun result!149724 () Bool)

(assert (= result!149724 result!149722))

(assert (=> d!612079 t!186851))

(declare-fun b_and!157953 () Bool)

(assert (= b_and!157935 (and (=> t!186851 result!149724) b_and!157953)))

(declare-fun t!186853 () Bool)

(declare-fun tb!124903 () Bool)

(assert (=> (and b!2004742 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186853) tb!124903))

(declare-fun result!149726 () Bool)

(assert (= result!149726 result!149722))

(assert (=> d!612079 t!186853))

(declare-fun b_and!157955 () Bool)

(assert (= b_and!157937 (and (=> t!186853 result!149726) b_and!157955)))

(declare-fun b_lambda!66739 () Bool)

(assert (=> (not b_lambda!66739) (not d!612079)))

(assert (=> d!612079 t!186837))

(declare-fun b_and!157957 () Bool)

(assert (= b_and!157945 (and (=> t!186837 result!149708) b_and!157957)))

(assert (=> d!612079 t!186839))

(declare-fun b_and!157959 () Bool)

(assert (= b_and!157947 (and (=> t!186839 result!149712) b_and!157959)))

(assert (=> d!612079 t!186841))

(declare-fun b_and!157961 () Bool)

(assert (= b_and!157949 (and (=> t!186841 result!149714) b_and!157961)))

(declare-fun m!2436373 () Bool)

(assert (=> d!612079 m!2436373))

(assert (=> d!612079 m!2436309))

(declare-fun m!2436375 () Bool)

(assert (=> d!612079 m!2436375))

(assert (=> d!612079 m!2435661))

(assert (=> d!612079 m!2436375))

(declare-fun m!2436377 () Bool)

(assert (=> d!612079 m!2436377))

(assert (=> d!612079 m!2436309))

(assert (=> b!2004748 d!612079))

(declare-fun d!612081 () Bool)

(assert (=> d!612081 (= (isDefined!3879 lt!752902) (not (isEmpty!13662 lt!752902)))))

(declare-fun bs!419416 () Bool)

(assert (= bs!419416 d!612081))

(declare-fun m!2436379 () Bool)

(assert (=> bs!419416 m!2436379))

(assert (=> b!2004748 d!612081))

(declare-fun d!612083 () Bool)

(assert (=> d!612083 (= (list!8964 lt!752906) (list!8968 (c!323781 lt!752906)))))

(declare-fun bs!419417 () Bool)

(assert (= bs!419417 d!612083))

(declare-fun m!2436381 () Bool)

(assert (=> bs!419417 m!2436381))

(assert (=> b!2004748 d!612083))

(declare-fun d!612085 () Bool)

(declare-fun lt!753111 () BalanceConc!14540)

(assert (=> d!612085 (= (list!8964 lt!753111) (originalCharacters!4762 (h!27439 tokens!598)))))

(assert (=> d!612085 (= lt!753111 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598))))))

(assert (=> d!612085 (= (charsOf!2495 (h!27439 tokens!598)) lt!753111)))

(declare-fun b_lambda!66741 () Bool)

(assert (=> (not b_lambda!66741) (not d!612085)))

(assert (=> d!612085 t!186788))

(declare-fun b_and!157963 () Bool)

(assert (= b_and!157951 (and (=> t!186788 result!149660) b_and!157963)))

(assert (=> d!612085 t!186790))

(declare-fun b_and!157965 () Bool)

(assert (= b_and!157953 (and (=> t!186790 result!149664) b_and!157965)))

(assert (=> d!612085 t!186792))

(declare-fun b_and!157967 () Bool)

(assert (= b_and!157955 (and (=> t!186792 result!149666) b_and!157967)))

(declare-fun m!2436383 () Bool)

(assert (=> d!612085 m!2436383))

(assert (=> d!612085 m!2435833))

(assert (=> b!2004748 d!612085))

(declare-fun d!612087 () Bool)

(declare-fun fromListB!1256 (List!22119) BalanceConc!14540)

(assert (=> d!612087 (= (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598))) (fromListB!1256 (originalCharacters!4762 (h!27439 tokens!598))))))

(declare-fun bs!419418 () Bool)

(assert (= bs!419418 d!612087))

(declare-fun m!2436385 () Bool)

(assert (=> bs!419418 m!2436385))

(assert (=> b!2004748 d!612087))

(declare-fun lt!753114 () List!22119)

(declare-fun b!2005303 () Bool)

(declare-fun e!1267061 () Bool)

(assert (=> b!2005303 (= e!1267061 (or (not (= (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354) Nil!22037)) (= lt!753114 lt!752900)))))

(declare-fun e!1267062 () List!22119)

(declare-fun b!2005300 () Bool)

(assert (=> b!2005300 (= e!1267062 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))

(declare-fun d!612089 () Bool)

(assert (=> d!612089 e!1267061))

(declare-fun res!879456 () Bool)

(assert (=> d!612089 (=> (not res!879456) (not e!1267061))))

(declare-fun content!3225 (List!22119) (Set C!10906))

(assert (=> d!612089 (= res!879456 (= (content!3225 lt!753114) (set.union (content!3225 lt!752900) (content!3225 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))))

(assert (=> d!612089 (= lt!753114 e!1267062)))

(declare-fun c!323874 () Bool)

(assert (=> d!612089 (= c!323874 (is-Nil!22037 lt!752900))))

(assert (=> d!612089 (= (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) lt!753114)))

(declare-fun b!2005302 () Bool)

(declare-fun res!879455 () Bool)

(assert (=> b!2005302 (=> (not res!879455) (not e!1267061))))

(assert (=> b!2005302 (= res!879455 (= (size!17229 lt!753114) (+ (size!17229 lt!752900) (size!17229 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))))

(declare-fun b!2005301 () Bool)

(assert (=> b!2005301 (= e!1267062 (Cons!22037 (h!27438 lt!752900) (++!5946 (t!186780 lt!752900) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(assert (= (and d!612089 c!323874) b!2005300))

(assert (= (and d!612089 (not c!323874)) b!2005301))

(assert (= (and d!612089 res!879456) b!2005302))

(assert (= (and b!2005302 res!879455) b!2005303))

(declare-fun m!2436387 () Bool)

(assert (=> d!612089 m!2436387))

(declare-fun m!2436389 () Bool)

(assert (=> d!612089 m!2436389))

(assert (=> d!612089 m!2435651))

(declare-fun m!2436391 () Bool)

(assert (=> d!612089 m!2436391))

(declare-fun m!2436393 () Bool)

(assert (=> b!2005302 m!2436393))

(assert (=> b!2005302 m!2436293))

(assert (=> b!2005302 m!2435651))

(declare-fun m!2436395 () Bool)

(assert (=> b!2005302 m!2436395))

(assert (=> b!2005301 m!2435651))

(declare-fun m!2436397 () Bool)

(assert (=> b!2005301 m!2436397))

(assert (=> b!2004748 d!612089))

(declare-fun d!612091 () Bool)

(declare-fun lt!753115 () BalanceConc!14540)

(assert (=> d!612091 (= (list!8964 lt!753115) (originalCharacters!4762 separatorToken!354))))

(assert (=> d!612091 (= lt!753115 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354)))))

(assert (=> d!612091 (= (charsOf!2495 separatorToken!354) lt!753115)))

(declare-fun b_lambda!66743 () Bool)

(assert (=> (not b_lambda!66743) (not d!612091)))

(assert (=> d!612091 t!186831))

(declare-fun b_and!157969 () Bool)

(assert (= b_and!157963 (and (=> t!186831 result!149702) b_and!157969)))

(assert (=> d!612091 t!186833))

(declare-fun b_and!157971 () Bool)

(assert (= b_and!157965 (and (=> t!186833 result!149704) b_and!157971)))

(assert (=> d!612091 t!186835))

(declare-fun b_and!157973 () Bool)

(assert (= b_and!157967 (and (=> t!186835 result!149706) b_and!157973)))

(declare-fun m!2436399 () Bool)

(assert (=> d!612091 m!2436399))

(assert (=> d!612091 m!2436199))

(assert (=> b!2004748 d!612091))

(declare-fun d!612093 () Bool)

(assert (=> d!612093 (= (isEmpty!13653 tokens!598) (is-Nil!22038 tokens!598))))

(assert (=> b!2004727 d!612093))

(declare-fun b!2005317 () Bool)

(declare-fun b_free!55901 () Bool)

(declare-fun b_next!56605 () Bool)

(assert (=> b!2005317 (= b_free!55901 (not b_next!56605))))

(declare-fun t!186855 () Bool)

(declare-fun tb!124905 () Bool)

(assert (=> (and b!2005317 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186855) tb!124905))

(declare-fun result!149730 () Bool)

(assert (= result!149730 result!149708))

(assert (=> d!612067 t!186855))

(declare-fun t!186857 () Bool)

(declare-fun tb!124907 () Bool)

(assert (=> (and b!2005317 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186857) tb!124907))

(declare-fun result!149732 () Bool)

(assert (= result!149732 result!149716))

(assert (=> d!612067 t!186857))

(assert (=> d!612079 t!186855))

(declare-fun b_and!157975 () Bool)

(declare-fun tp!598530 () Bool)

(assert (=> b!2005317 (= tp!598530 (and (=> t!186855 result!149730) (=> t!186857 result!149732) b_and!157975))))

(declare-fun b_free!55903 () Bool)

(declare-fun b_next!56607 () Bool)

(assert (=> b!2005317 (= b_free!55903 (not b_next!56607))))

(declare-fun tb!124909 () Bool)

(declare-fun t!186859 () Bool)

(assert (=> (and b!2005317 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354)))) t!186859) tb!124909))

(declare-fun result!149734 () Bool)

(assert (= result!149734 result!149702))

(assert (=> b!2005198 t!186859))

(assert (=> d!612091 t!186859))

(declare-fun t!186861 () Bool)

(declare-fun tb!124911 () Bool)

(assert (=> (and b!2005317 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186861) tb!124911))

(declare-fun result!149736 () Bool)

(assert (= result!149736 result!149660))

(assert (=> d!612085 t!186861))

(assert (=> b!2004839 t!186861))

(declare-fun t!186863 () Bool)

(declare-fun tb!124913 () Bool)

(assert (=> (and b!2005317 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186863) tb!124913))

(declare-fun result!149738 () Bool)

(assert (= result!149738 result!149722))

(assert (=> d!612079 t!186863))

(declare-fun b_and!157977 () Bool)

(declare-fun tp!598531 () Bool)

(assert (=> b!2005317 (= tp!598531 (and (=> t!186859 result!149734) (=> t!186861 result!149736) (=> t!186863 result!149738) b_and!157977))))

(declare-fun e!1267078 () Bool)

(declare-fun b!2005314 () Bool)

(declare-fun e!1267075 () Bool)

(declare-fun tp!598527 () Bool)

(assert (=> b!2005314 (= e!1267075 (and (inv!29190 (h!27439 (t!186781 tokens!598))) e!1267078 tp!598527))))

(declare-fun e!1267077 () Bool)

(declare-fun b!2005316 () Bool)

(declare-fun e!1267076 () Bool)

(declare-fun tp!598528 () Bool)

(assert (=> b!2005316 (= e!1267077 (and tp!598528 (inv!29186 (tag!4415 (rule!6178 (h!27439 (t!186781 tokens!598))))) (inv!29189 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) e!1267076))))

(assert (=> b!2005317 (= e!1267076 (and tp!598530 tp!598531))))

(assert (=> b!2004753 (= tp!598455 e!1267075)))

(declare-fun b!2005315 () Bool)

(declare-fun tp!598529 () Bool)

(assert (=> b!2005315 (= e!1267078 (and (inv!21 (value!124310 (h!27439 (t!186781 tokens!598)))) e!1267077 tp!598529))))

(assert (= b!2005316 b!2005317))

(assert (= b!2005315 b!2005316))

(assert (= b!2005314 b!2005315))

(assert (= (and b!2004753 (is-Cons!22038 (t!186781 tokens!598))) b!2005314))

(declare-fun m!2436401 () Bool)

(assert (=> b!2005314 m!2436401))

(declare-fun m!2436403 () Bool)

(assert (=> b!2005316 m!2436403))

(declare-fun m!2436405 () Bool)

(assert (=> b!2005316 m!2436405))

(declare-fun m!2436407 () Bool)

(assert (=> b!2005315 m!2436407))

(declare-fun b!2005328 () Bool)

(declare-fun b_free!55905 () Bool)

(declare-fun b_next!56609 () Bool)

(assert (=> b!2005328 (= b_free!55905 (not b_next!56609))))

(declare-fun t!186865 () Bool)

(declare-fun tb!124915 () Bool)

(assert (=> (and b!2005328 (= (toValue!5616 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186865) tb!124915))

(declare-fun result!149742 () Bool)

(assert (= result!149742 result!149708))

(assert (=> d!612067 t!186865))

(declare-fun tb!124917 () Bool)

(declare-fun t!186867 () Bool)

(assert (=> (and b!2005328 (= (toValue!5616 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186867) tb!124917))

(declare-fun result!149744 () Bool)

(assert (= result!149744 result!149716))

(assert (=> d!612067 t!186867))

(assert (=> d!612079 t!186865))

(declare-fun b_and!157979 () Bool)

(declare-fun tp!598543 () Bool)

(assert (=> b!2005328 (= tp!598543 (and (=> t!186865 result!149742) (=> t!186867 result!149744) b_and!157979))))

(declare-fun b_free!55907 () Bool)

(declare-fun b_next!56611 () Bool)

(assert (=> b!2005328 (= b_free!55907 (not b_next!56611))))

(declare-fun tb!124919 () Bool)

(declare-fun t!186869 () Bool)

(assert (=> (and b!2005328 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354)))) t!186869) tb!124919))

(declare-fun result!149746 () Bool)

(assert (= result!149746 result!149702))

(assert (=> b!2005198 t!186869))

(assert (=> d!612091 t!186869))

(declare-fun tb!124921 () Bool)

(declare-fun t!186871 () Bool)

(assert (=> (and b!2005328 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186871) tb!124921))

(declare-fun result!149748 () Bool)

(assert (= result!149748 result!149660))

(assert (=> d!612085 t!186871))

(assert (=> b!2004839 t!186871))

(declare-fun tb!124923 () Bool)

(declare-fun t!186873 () Bool)

(assert (=> (and b!2005328 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!186873) tb!124923))

(declare-fun result!149750 () Bool)

(assert (= result!149750 result!149722))

(assert (=> d!612079 t!186873))

(declare-fun tp!598540 () Bool)

(declare-fun b_and!157981 () Bool)

(assert (=> b!2005328 (= tp!598540 (and (=> t!186871 result!149748) (=> t!186873 result!149750) (=> t!186869 result!149746) b_and!157981))))

(declare-fun e!1267089 () Bool)

(assert (=> b!2005328 (= e!1267089 (and tp!598543 tp!598540))))

(declare-fun tp!598542 () Bool)

(declare-fun b!2005327 () Bool)

(declare-fun e!1267091 () Bool)

(assert (=> b!2005327 (= e!1267091 (and tp!598542 (inv!29186 (tag!4415 (h!27440 (t!186782 rules!3198)))) (inv!29189 (transformation!3955 (h!27440 (t!186782 rules!3198)))) e!1267089))))

(declare-fun b!2005326 () Bool)

(declare-fun e!1267092 () Bool)

(declare-fun tp!598541 () Bool)

(assert (=> b!2005326 (= e!1267092 (and e!1267091 tp!598541))))

(assert (=> b!2004752 (= tp!598457 e!1267092)))

(assert (= b!2005327 b!2005328))

(assert (= b!2005326 b!2005327))

(assert (= (and b!2004752 (is-Cons!22039 (t!186782 rules!3198))) b!2005326))

(declare-fun m!2436409 () Bool)

(assert (=> b!2005327 m!2436409))

(declare-fun m!2436411 () Bool)

(assert (=> b!2005327 m!2436411))

(declare-fun b!2005333 () Bool)

(declare-fun e!1267095 () Bool)

(declare-fun tp_is_empty!9171 () Bool)

(declare-fun tp!598546 () Bool)

(assert (=> b!2005333 (= e!1267095 (and tp_is_empty!9171 tp!598546))))

(assert (=> b!2004734 (= tp!598465 e!1267095)))

(assert (= (and b!2004734 (is-Cons!22037 (originalCharacters!4762 separatorToken!354))) b!2005333))

(declare-fun e!1267098 () Bool)

(assert (=> b!2004732 (= tp!598464 e!1267098)))

(declare-fun b!2005347 () Bool)

(declare-fun tp!598559 () Bool)

(declare-fun tp!598557 () Bool)

(assert (=> b!2005347 (= e!1267098 (and tp!598559 tp!598557))))

(declare-fun b!2005344 () Bool)

(assert (=> b!2005344 (= e!1267098 tp_is_empty!9171)))

(declare-fun b!2005346 () Bool)

(declare-fun tp!598560 () Bool)

(assert (=> b!2005346 (= e!1267098 tp!598560)))

(declare-fun b!2005345 () Bool)

(declare-fun tp!598558 () Bool)

(declare-fun tp!598561 () Bool)

(assert (=> b!2005345 (= e!1267098 (and tp!598558 tp!598561))))

(assert (= (and b!2004732 (is-ElementMatch!5380 (regex!3955 (rule!6178 (h!27439 tokens!598))))) b!2005344))

(assert (= (and b!2004732 (is-Concat!9472 (regex!3955 (rule!6178 (h!27439 tokens!598))))) b!2005345))

(assert (= (and b!2004732 (is-Star!5380 (regex!3955 (rule!6178 (h!27439 tokens!598))))) b!2005346))

(assert (= (and b!2004732 (is-Union!5380 (regex!3955 (rule!6178 (h!27439 tokens!598))))) b!2005347))

(declare-fun e!1267101 () Bool)

(assert (=> b!2004737 (= tp!598462 e!1267101)))

(declare-fun b!2005351 () Bool)

(declare-fun tp!598564 () Bool)

(declare-fun tp!598562 () Bool)

(assert (=> b!2005351 (= e!1267101 (and tp!598564 tp!598562))))

(declare-fun b!2005348 () Bool)

(assert (=> b!2005348 (= e!1267101 tp_is_empty!9171)))

(declare-fun b!2005350 () Bool)

(declare-fun tp!598565 () Bool)

(assert (=> b!2005350 (= e!1267101 tp!598565)))

(declare-fun b!2005349 () Bool)

(declare-fun tp!598563 () Bool)

(declare-fun tp!598566 () Bool)

(assert (=> b!2005349 (= e!1267101 (and tp!598563 tp!598566))))

(assert (= (and b!2004737 (is-ElementMatch!5380 (regex!3955 (rule!6178 separatorToken!354)))) b!2005348))

(assert (= (and b!2004737 (is-Concat!9472 (regex!3955 (rule!6178 separatorToken!354)))) b!2005349))

(assert (= (and b!2004737 (is-Star!5380 (regex!3955 (rule!6178 separatorToken!354)))) b!2005350))

(assert (= (and b!2004737 (is-Union!5380 (regex!3955 (rule!6178 separatorToken!354)))) b!2005351))

(declare-fun e!1267104 () Bool)

(assert (=> b!2004728 (= tp!598463 e!1267104)))

(declare-fun b!2005359 () Bool)

(declare-fun tp!598569 () Bool)

(declare-fun tp!598567 () Bool)

(assert (=> b!2005359 (= e!1267104 (and tp!598569 tp!598567))))

(declare-fun b!2005356 () Bool)

(assert (=> b!2005356 (= e!1267104 tp_is_empty!9171)))

(declare-fun b!2005358 () Bool)

(declare-fun tp!598570 () Bool)

(assert (=> b!2005358 (= e!1267104 tp!598570)))

(declare-fun b!2005357 () Bool)

(declare-fun tp!598568 () Bool)

(declare-fun tp!598571 () Bool)

(assert (=> b!2005357 (= e!1267104 (and tp!598568 tp!598571))))

(assert (= (and b!2004728 (is-ElementMatch!5380 (regex!3955 (h!27440 rules!3198)))) b!2005356))

(assert (= (and b!2004728 (is-Concat!9472 (regex!3955 (h!27440 rules!3198)))) b!2005357))

(assert (= (and b!2004728 (is-Star!5380 (regex!3955 (h!27440 rules!3198)))) b!2005358))

(assert (= (and b!2004728 (is-Union!5380 (regex!3955 (h!27440 rules!3198)))) b!2005359))

(declare-fun b!2005362 () Bool)

(declare-fun e!1267105 () Bool)

(declare-fun tp!598572 () Bool)

(assert (=> b!2005362 (= e!1267105 (and tp_is_empty!9171 tp!598572))))

(assert (=> b!2004738 (= tp!598467 e!1267105)))

(assert (= (and b!2004738 (is-Cons!22037 (originalCharacters!4762 (h!27439 tokens!598)))) b!2005362))

(declare-fun b_lambda!66745 () Bool)

(assert (= b_lambda!66741 (or (and b!2005328 b_free!55907 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004750 b_free!55883 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004733 b_free!55879 (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2005317 b_free!55903 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004742 b_free!55887) b_lambda!66745)))

(declare-fun b_lambda!66747 () Bool)

(assert (= b_lambda!66731 (or b!2004739 b_lambda!66747)))

(declare-fun bs!419419 () Bool)

(declare-fun d!612095 () Bool)

(assert (= bs!419419 (and d!612095 b!2004739)))

(assert (=> bs!419419 (= (dynLambda!10821 lambda!75920 (h!27439 tokens!598)) (not (isSeparator!3955 (rule!6178 (h!27439 tokens!598)))))))

(assert (=> b!2005209 d!612095))

(declare-fun b_lambda!66749 () Bool)

(assert (= b_lambda!66737 (or (and b!2005328 b_free!55907 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004750 b_free!55883 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004733 b_free!55879 (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2005317 b_free!55903 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004742 b_free!55887) b_lambda!66749)))

(declare-fun b_lambda!66751 () Bool)

(assert (= b_lambda!66729 (or (and b!2005328 b_free!55907 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))))) (and b!2004742 b_free!55887 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))))) (and b!2005317 b_free!55903 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))))) (and b!2004750 b_free!55883 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))))) (and b!2004733 b_free!55879) b_lambda!66751)))

(declare-fun b_lambda!66753 () Bool)

(assert (= b_lambda!66713 (or (and b!2005328 b_free!55907 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004750 b_free!55883 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004733 b_free!55879 (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2005317 b_free!55903 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004742 b_free!55887) b_lambda!66753)))

(declare-fun b_lambda!66755 () Bool)

(assert (= b_lambda!66743 (or (and b!2005328 b_free!55907 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))))) (and b!2004742 b_free!55887 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))))) (and b!2005317 b_free!55903 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))))) (and b!2004750 b_free!55883 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))))) (and b!2004733 b_free!55879) b_lambda!66755)))

(declare-fun b_lambda!66757 () Bool)

(assert (= b_lambda!66733 (or (and b!2005317 b_free!55901 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004750 b_free!55881 (= (toValue!5616 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004733 b_free!55877 (= (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004742 b_free!55885) (and b!2005328 b_free!55905 (= (toValue!5616 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) b_lambda!66757)))

(declare-fun b_lambda!66759 () Bool)

(assert (= b_lambda!66735 (or (and b!2005317 b_free!55901 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004750 b_free!55881 (= (toValue!5616 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004733 b_free!55877 (= (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004742 b_free!55885) (and b!2005328 b_free!55905 (= (toValue!5616 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) b_lambda!66759)))

(declare-fun b_lambda!66761 () Bool)

(assert (= b_lambda!66739 (or (and b!2005317 b_free!55901 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004750 b_free!55881 (= (toValue!5616 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004733 b_free!55877 (= (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (and b!2004742 b_free!55885) (and b!2005328 b_free!55905 (= (toValue!5616 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) b_lambda!66761)))

(push 1)

(assert (not b!2005049))

(assert (not d!612005))

(assert (not b!2005280))

(assert (not b!2005227))

(assert (not b_next!56609))

(assert (not b!2005063))

(assert (not d!612081))

(assert (not b!2005070))

(assert (not b!2005260))

(assert (not b!2005327))

(assert (not b!2005315))

(assert (not b!2005333))

(assert (not d!612019))

(assert (not b!2004865))

(assert (not b!2005233))

(assert (not d!611953))

(assert (not b!2005234))

(assert (not d!611983))

(assert (not b!2004948))

(assert (not d!612091))

(assert (not d!612089))

(assert (not b!2005257))

(assert (not d!611997))

(assert (not b!2005223))

(assert (not d!611959))

(assert (not b_lambda!66761))

(assert (not b!2004840))

(assert (not b!2005225))

(assert (not b!2004864))

(assert (not b!2005326))

(assert (not b!2005026))

(assert (not bm!122515))

(assert (not b_lambda!66755))

(assert (not b!2005064))

(assert (not tb!124845))

(assert (not b!2005212))

(assert (not b!2005231))

(assert (not b_lambda!66749))

(assert (not b!2005314))

(assert (not b!2004950))

(assert (not b_next!56585))

(assert (not b!2005082))

(assert (not b_next!56607))

(assert (not b!2004962))

(assert (not bm!122543))

(assert (not b!2005222))

(assert (not d!612057))

(assert (not b!2005034))

(assert (not b!2005237))

(assert (not b!2004872))

(assert (not b!2004866))

(assert (not b!2005351))

(assert (not b!2005302))

(assert b_and!157961)

(assert (not bm!122547))

(assert (not b!2004845))

(assert (not b!2004870))

(assert (not bm!122542))

(assert (not b!2005253))

(assert tp_is_empty!9171)

(assert (not d!612083))

(assert (not d!612007))

(assert (not b!2004946))

(assert (not b!2005228))

(assert (not b!2004952))

(assert (not b!2005037))

(assert (not b_next!56611))

(assert (not tb!124881))

(assert (not bm!122545))

(assert (not b_next!56581))

(assert (not b!2005283))

(assert b_and!157971)

(assert (not d!612035))

(assert (not b_next!56583))

(assert (not bm!122544))

(assert b_and!157981)

(assert (not b!2005195))

(assert (not b!2005024))

(assert (not b!2005274))

(assert (not bm!122500))

(assert (not b!2005230))

(assert (not b!2005362))

(assert (not tb!124887))

(assert (not b!2005073))

(assert (not b!2005281))

(assert (not b!2005221))

(assert b_and!157979)

(assert (not b_lambda!66759))

(assert (not bm!122514))

(assert (not b!2005235))

(assert (not b!2005359))

(assert (not b!2005193))

(assert (not b_next!56591))

(assert (not b!2005029))

(assert b_and!157969)

(assert (not d!612085))

(assert (not b!2005035))

(assert (not b!2004868))

(assert (not b_lambda!66753))

(assert (not b!2005066))

(assert (not b!2005201))

(assert (not b!2005210))

(assert (not b!2005251))

(assert (not d!612071))

(assert (not b!2005199))

(assert (not b!2005347))

(assert (not d!612043))

(assert (not b!2005200))

(assert (not b!2005085))

(assert (not b_lambda!66745))

(assert (not tb!124899))

(assert (not b!2005224))

(assert (not b_next!56605))

(assert (not b!2005346))

(assert (not d!612061))

(assert (not b!2005071))

(assert (not d!612063))

(assert (not b!2005084))

(assert (not b!2005094))

(assert (not b!2005194))

(assert (not b_next!56589))

(assert b_and!157959)

(assert (not b_lambda!66747))

(assert (not b!2005316))

(assert (not bm!122522))

(assert (not b!2005081))

(assert (not b!2005093))

(assert (not d!612079))

(assert (not b!2005214))

(assert (not b!2005255))

(assert (not b!2005088))

(assert (not b!2005350))

(assert (not b!2005277))

(assert (not b!2005198))

(assert (not b_lambda!66757))

(assert (not d!612013))

(assert (not b!2005220))

(assert b_and!157975)

(assert (not b!2005249))

(assert (not d!612075))

(assert (not bm!122517))

(assert (not d!612067))

(assert (not d!612065))

(assert (not b!2004839))

(assert (not d!611961))

(assert b_and!157973)

(assert b_and!157977)

(assert (not b_next!56587))

(assert (not b!2005358))

(assert (not d!612087))

(assert (not b!2005232))

(assert (not d!612073))

(assert (not b!2005345))

(assert (not b!2005301))

(assert (not b!2005349))

(assert (not b!2005048))

(assert (not b!2005050))

(assert (not b!2005211))

(assert (not b!2005239))

(assert (not b!2005357))

(assert b_and!157957)

(assert (not b!2004867))

(assert (not b_lambda!66751))

(assert (not d!612015))

(assert (not b!2005261))

(assert (not b!2004869))

(assert (not d!612059))

(assert (not b!2005291))

(assert (not tb!124893))

(assert (not bm!122521))

(assert (not b!2005275))

(assert (not b!2005226))

(assert (not d!612077))

(assert (not b!2005076))

(assert (not b!2005236))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!56609))

(assert (not b_next!56585))

(assert (not b_next!56607))

(assert b_and!157961)

(assert (not b_next!56611))

(assert b_and!157981)

(assert b_and!157969)

(assert b_and!157959)

(assert b_and!157975)

(assert b_and!157973)

(assert b_and!157957)

(assert (not b_next!56581))

(assert b_and!157971)

(assert (not b_next!56583))

(assert b_and!157979)

(assert (not b_next!56591))

(assert (not b_next!56589))

(assert (not b_next!56605))

(assert b_and!157977)

(assert (not b_next!56587))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!612137 () Bool)

(declare-fun lt!753139 () Token!7462)

(declare-fun apply!5772 (List!22120 Int) Token!7462)

(assert (=> d!612137 (= lt!753139 (apply!5772 (list!8966 (_1!11823 lt!753070)) 0))))

(declare-fun apply!5773 (Conc!7364 Int) Token!7462)

(assert (=> d!612137 (= lt!753139 (apply!5773 (c!323891 (_1!11823 lt!753070)) 0))))

(declare-fun e!1267205 () Bool)

(assert (=> d!612137 e!1267205))

(declare-fun res!879512 () Bool)

(assert (=> d!612137 (=> (not res!879512) (not e!1267205))))

(assert (=> d!612137 (= res!879512 (<= 0 0))))

(assert (=> d!612137 (= (apply!5769 (_1!11823 lt!753070) 0) lt!753139)))

(declare-fun b!2005503 () Bool)

(assert (=> b!2005503 (= e!1267205 (< 0 (size!17230 (_1!11823 lt!753070))))))

(assert (= (and d!612137 res!879512) b!2005503))

(declare-fun m!2436559 () Bool)

(assert (=> d!612137 m!2436559))

(assert (=> d!612137 m!2436559))

(declare-fun m!2436561 () Bool)

(assert (=> d!612137 m!2436561))

(declare-fun m!2436563 () Bool)

(assert (=> d!612137 m!2436563))

(assert (=> b!2005503 m!2436169))

(assert (=> b!2005193 d!612137))

(declare-fun b!2005522 () Bool)

(declare-fun res!879528 () Bool)

(declare-fun e!1267214 () Bool)

(assert (=> b!2005522 (=> (not res!879528) (not e!1267214))))

(declare-fun lt!753152 () Option!4591)

(assert (=> b!2005522 (= res!879528 (< (size!17229 (_2!11821 (get!6960 lt!753152))) (size!17229 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))))

(declare-fun d!612139 () Bool)

(declare-fun e!1267215 () Bool)

(assert (=> d!612139 e!1267215))

(declare-fun res!879530 () Bool)

(assert (=> d!612139 (=> res!879530 e!1267215)))

(assert (=> d!612139 (= res!879530 (isEmpty!13658 lt!753152))))

(declare-fun e!1267216 () Option!4591)

(assert (=> d!612139 (= lt!753152 e!1267216)))

(declare-fun c!323895 () Bool)

(declare-datatypes ((tuple2!20712 0))(
  ( (tuple2!20713 (_1!11825 List!22119) (_2!11825 List!22119)) )
))
(declare-fun lt!753150 () tuple2!20712)

(assert (=> d!612139 (= c!323895 (isEmpty!13657 (_1!11825 lt!753150)))))

(declare-fun findLongestMatch!475 (Regex!5380 List!22119) tuple2!20712)

(assert (=> d!612139 (= lt!753150 (findLongestMatch!475 (regex!3955 (h!27440 rules!3198)) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(declare-fun ruleValid!1208 (LexerInterface!3568 Rule!7710) Bool)

(assert (=> d!612139 (ruleValid!1208 thiss!23328 (h!27440 rules!3198))))

(assert (=> d!612139 (= (maxPrefixOneRule!1240 thiss!23328 (h!27440 rules!3198) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))) lt!753152)))

(declare-fun b!2005523 () Bool)

(assert (=> b!2005523 (= e!1267214 (= (size!17227 (_1!11821 (get!6960 lt!753152))) (size!17229 (originalCharacters!4762 (_1!11821 (get!6960 lt!753152))))))))

(declare-fun b!2005524 () Bool)

(declare-fun size!17233 (BalanceConc!14540) Int)

(assert (=> b!2005524 (= e!1267216 (Some!4590 (tuple2!20705 (Token!7463 (apply!5768 (transformation!3955 (h!27440 rules!3198)) (seqFromList!2809 (_1!11825 lt!753150))) (h!27440 rules!3198) (size!17233 (seqFromList!2809 (_1!11825 lt!753150))) (_1!11825 lt!753150)) (_2!11825 lt!753150))))))

(declare-fun lt!753151 () Unit!36581)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!532 (Regex!5380 List!22119) Unit!36581)

(assert (=> b!2005524 (= lt!753151 (longestMatchIsAcceptedByMatchOrIsEmpty!532 (regex!3955 (h!27440 rules!3198)) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(declare-fun res!879529 () Bool)

(declare-fun findLongestMatchInner!548 (Regex!5380 List!22119 Int List!22119 List!22119 Int) tuple2!20712)

(assert (=> b!2005524 (= res!879529 (isEmpty!13657 (_1!11825 (findLongestMatchInner!548 (regex!3955 (h!27440 rules!3198)) Nil!22037 (size!17229 Nil!22037) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) (size!17229 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))))))

(declare-fun e!1267217 () Bool)

(assert (=> b!2005524 (=> res!879529 e!1267217)))

(assert (=> b!2005524 e!1267217))

(declare-fun lt!753153 () Unit!36581)

(assert (=> b!2005524 (= lt!753153 lt!753151)))

(declare-fun lt!753154 () Unit!36581)

(assert (=> b!2005524 (= lt!753154 (lemmaSemiInverse!912 (transformation!3955 (h!27440 rules!3198)) (seqFromList!2809 (_1!11825 lt!753150))))))

(declare-fun b!2005525 () Bool)

(assert (=> b!2005525 (= e!1267215 e!1267214)))

(declare-fun res!879533 () Bool)

(assert (=> b!2005525 (=> (not res!879533) (not e!1267214))))

(assert (=> b!2005525 (= res!879533 (matchR!2646 (regex!3955 (h!27440 rules!3198)) (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753152))))))))

(declare-fun b!2005526 () Bool)

(declare-fun res!879527 () Bool)

(assert (=> b!2005526 (=> (not res!879527) (not e!1267214))))

(assert (=> b!2005526 (= res!879527 (= (rule!6178 (_1!11821 (get!6960 lt!753152))) (h!27440 rules!3198)))))

(declare-fun b!2005527 () Bool)

(declare-fun res!879531 () Bool)

(assert (=> b!2005527 (=> (not res!879531) (not e!1267214))))

(assert (=> b!2005527 (= res!879531 (= (value!124310 (_1!11821 (get!6960 lt!753152))) (apply!5768 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753152)))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753152)))))))))

(declare-fun b!2005528 () Bool)

(assert (=> b!2005528 (= e!1267216 None!4590)))

(declare-fun b!2005529 () Bool)

(assert (=> b!2005529 (= e!1267217 (matchR!2646 (regex!3955 (h!27440 rules!3198)) (_1!11825 (findLongestMatchInner!548 (regex!3955 (h!27440 rules!3198)) Nil!22037 (size!17229 Nil!22037) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) (size!17229 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))))))

(declare-fun b!2005530 () Bool)

(declare-fun res!879532 () Bool)

(assert (=> b!2005530 (=> (not res!879532) (not e!1267214))))

(assert (=> b!2005530 (= res!879532 (= (++!5946 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753152)))) (_2!11821 (get!6960 lt!753152))) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(assert (= (and d!612139 c!323895) b!2005528))

(assert (= (and d!612139 (not c!323895)) b!2005524))

(assert (= (and b!2005524 (not res!879529)) b!2005529))

(assert (= (and d!612139 (not res!879530)) b!2005525))

(assert (= (and b!2005525 res!879533) b!2005530))

(assert (= (and b!2005530 res!879532) b!2005522))

(assert (= (and b!2005522 res!879528) b!2005526))

(assert (= (and b!2005526 res!879527) b!2005527))

(assert (= (and b!2005527 res!879531) b!2005523))

(declare-fun m!2436565 () Bool)

(assert (=> b!2005529 m!2436565))

(assert (=> b!2005529 m!2435653))

(assert (=> b!2005529 m!2436259))

(assert (=> b!2005529 m!2436565))

(assert (=> b!2005529 m!2435653))

(assert (=> b!2005529 m!2435653))

(assert (=> b!2005529 m!2436259))

(declare-fun m!2436567 () Bool)

(assert (=> b!2005529 m!2436567))

(declare-fun m!2436569 () Bool)

(assert (=> b!2005529 m!2436569))

(declare-fun m!2436571 () Bool)

(assert (=> b!2005530 m!2436571))

(declare-fun m!2436573 () Bool)

(assert (=> b!2005530 m!2436573))

(assert (=> b!2005530 m!2436573))

(declare-fun m!2436575 () Bool)

(assert (=> b!2005530 m!2436575))

(assert (=> b!2005530 m!2436575))

(declare-fun m!2436577 () Bool)

(assert (=> b!2005530 m!2436577))

(assert (=> b!2005527 m!2436571))

(declare-fun m!2436579 () Bool)

(assert (=> b!2005527 m!2436579))

(assert (=> b!2005527 m!2436579))

(declare-fun m!2436581 () Bool)

(assert (=> b!2005527 m!2436581))

(declare-fun m!2436583 () Bool)

(assert (=> d!612139 m!2436583))

(declare-fun m!2436585 () Bool)

(assert (=> d!612139 m!2436585))

(assert (=> d!612139 m!2435653))

(declare-fun m!2436587 () Bool)

(assert (=> d!612139 m!2436587))

(declare-fun m!2436589 () Bool)

(assert (=> d!612139 m!2436589))

(declare-fun m!2436591 () Bool)

(assert (=> b!2005524 m!2436591))

(declare-fun m!2436593 () Bool)

(assert (=> b!2005524 m!2436593))

(assert (=> b!2005524 m!2436591))

(assert (=> b!2005524 m!2436591))

(declare-fun m!2436595 () Bool)

(assert (=> b!2005524 m!2436595))

(declare-fun m!2436597 () Bool)

(assert (=> b!2005524 m!2436597))

(assert (=> b!2005524 m!2435653))

(declare-fun m!2436599 () Bool)

(assert (=> b!2005524 m!2436599))

(assert (=> b!2005524 m!2436565))

(assert (=> b!2005524 m!2435653))

(assert (=> b!2005524 m!2435653))

(assert (=> b!2005524 m!2436259))

(assert (=> b!2005524 m!2436567))

(assert (=> b!2005524 m!2436591))

(declare-fun m!2436601 () Bool)

(assert (=> b!2005524 m!2436601))

(assert (=> b!2005524 m!2435653))

(assert (=> b!2005524 m!2436259))

(assert (=> b!2005524 m!2436565))

(assert (=> b!2005522 m!2436571))

(declare-fun m!2436603 () Bool)

(assert (=> b!2005522 m!2436603))

(assert (=> b!2005522 m!2435653))

(assert (=> b!2005522 m!2436259))

(assert (=> b!2005523 m!2436571))

(declare-fun m!2436605 () Bool)

(assert (=> b!2005523 m!2436605))

(assert (=> b!2005526 m!2436571))

(assert (=> b!2005525 m!2436571))

(assert (=> b!2005525 m!2436573))

(assert (=> b!2005525 m!2436573))

(assert (=> b!2005525 m!2436575))

(assert (=> b!2005525 m!2436575))

(declare-fun m!2436607 () Bool)

(assert (=> b!2005525 m!2436607))

(assert (=> bm!122542 d!612139))

(declare-fun bm!122556 () Bool)

(declare-fun call!122561 () Bool)

(assert (=> bm!122556 (= call!122561 (isEmpty!13657 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083))))))))

(declare-fun b!2005532 () Bool)

(declare-fun e!1267221 () Bool)

(declare-fun lt!753155 () Bool)

(assert (=> b!2005532 (= e!1267221 (= lt!753155 call!122561))))

(declare-fun b!2005533 () Bool)

(declare-fun e!1267223 () Bool)

(assert (=> b!2005533 (= e!1267223 (nullable!1626 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753083))))))))

(declare-fun b!2005534 () Bool)

(declare-fun res!879538 () Bool)

(declare-fun e!1267220 () Bool)

(assert (=> b!2005534 (=> (not res!879538) (not e!1267220))))

(assert (=> b!2005534 (= res!879538 (not call!122561))))

(declare-fun b!2005535 () Bool)

(declare-fun e!1267218 () Bool)

(declare-fun e!1267222 () Bool)

(assert (=> b!2005535 (= e!1267218 e!1267222)))

(declare-fun res!879540 () Bool)

(assert (=> b!2005535 (=> (not res!879540) (not e!1267222))))

(assert (=> b!2005535 (= res!879540 (not lt!753155))))

(declare-fun b!2005536 () Bool)

(declare-fun res!879537 () Bool)

(assert (=> b!2005536 (=> (not res!879537) (not e!1267220))))

(assert (=> b!2005536 (= res!879537 (isEmpty!13657 (tail!3015 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083)))))))))

(declare-fun b!2005537 () Bool)

(declare-fun e!1267224 () Bool)

(assert (=> b!2005537 (= e!1267224 (not lt!753155))))

(declare-fun b!2005538 () Bool)

(declare-fun e!1267219 () Bool)

(assert (=> b!2005538 (= e!1267222 e!1267219)))

(declare-fun res!879534 () Bool)

(assert (=> b!2005538 (=> res!879534 e!1267219)))

(assert (=> b!2005538 (= res!879534 call!122561)))

(declare-fun b!2005539 () Bool)

(declare-fun res!879539 () Bool)

(assert (=> b!2005539 (=> res!879539 e!1267218)))

(assert (=> b!2005539 (= res!879539 e!1267220)))

(declare-fun res!879536 () Bool)

(assert (=> b!2005539 (=> (not res!879536) (not e!1267220))))

(assert (=> b!2005539 (= res!879536 lt!753155)))

(declare-fun b!2005531 () Bool)

(assert (=> b!2005531 (= e!1267219 (not (= (head!4531 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083))))) (c!323780 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753083))))))))))

(declare-fun d!612141 () Bool)

(assert (=> d!612141 e!1267221))

(declare-fun c!323898 () Bool)

(assert (=> d!612141 (= c!323898 (is-EmptyExpr!5380 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753083))))))))

(assert (=> d!612141 (= lt!753155 e!1267223)))

(declare-fun c!323896 () Bool)

(assert (=> d!612141 (= c!323896 (isEmpty!13657 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083))))))))

(assert (=> d!612141 (validRegex!2152 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))))

(assert (=> d!612141 (= (matchR!2646 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))) (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083))))) lt!753155)))

(declare-fun b!2005540 () Bool)

(declare-fun res!879535 () Bool)

(assert (=> b!2005540 (=> res!879535 e!1267218)))

(assert (=> b!2005540 (= res!879535 (not (is-ElementMatch!5380 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))))))

(assert (=> b!2005540 (= e!1267224 e!1267218)))

(declare-fun b!2005541 () Bool)

(assert (=> b!2005541 (= e!1267220 (= (head!4531 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083))))) (c!323780 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))))))

(declare-fun b!2005542 () Bool)

(declare-fun res!879541 () Bool)

(assert (=> b!2005542 (=> res!879541 e!1267219)))

(assert (=> b!2005542 (= res!879541 (not (isEmpty!13657 (tail!3015 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083))))))))))

(declare-fun b!2005543 () Bool)

(assert (=> b!2005543 (= e!1267221 e!1267224)))

(declare-fun c!323897 () Bool)

(assert (=> b!2005543 (= c!323897 (is-EmptyLang!5380 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753083))))))))

(declare-fun b!2005544 () Bool)

(assert (=> b!2005544 (= e!1267223 (matchR!2646 (derivativeStep!1385 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))) (head!4531 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083)))))) (tail!3015 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083)))))))))

(assert (= (and d!612141 c!323896) b!2005533))

(assert (= (and d!612141 (not c!323896)) b!2005544))

(assert (= (and d!612141 c!323898) b!2005532))

(assert (= (and d!612141 (not c!323898)) b!2005543))

(assert (= (and b!2005543 c!323897) b!2005537))

(assert (= (and b!2005543 (not c!323897)) b!2005540))

(assert (= (and b!2005540 (not res!879535)) b!2005539))

(assert (= (and b!2005539 res!879536) b!2005534))

(assert (= (and b!2005534 res!879538) b!2005536))

(assert (= (and b!2005536 res!879537) b!2005541))

(assert (= (and b!2005539 (not res!879539)) b!2005535))

(assert (= (and b!2005535 res!879540) b!2005538))

(assert (= (and b!2005538 (not res!879534)) b!2005542))

(assert (= (and b!2005542 (not res!879541)) b!2005531))

(assert (= (or b!2005532 b!2005534 b!2005538) bm!122556))

(assert (=> b!2005541 m!2436285))

(declare-fun m!2436609 () Bool)

(assert (=> b!2005541 m!2436609))

(assert (=> b!2005542 m!2436285))

(declare-fun m!2436611 () Bool)

(assert (=> b!2005542 m!2436611))

(assert (=> b!2005542 m!2436611))

(declare-fun m!2436613 () Bool)

(assert (=> b!2005542 m!2436613))

(assert (=> b!2005536 m!2436285))

(assert (=> b!2005536 m!2436611))

(assert (=> b!2005536 m!2436611))

(assert (=> b!2005536 m!2436613))

(declare-fun m!2436615 () Bool)

(assert (=> b!2005533 m!2436615))

(assert (=> d!612141 m!2436285))

(declare-fun m!2436617 () Bool)

(assert (=> d!612141 m!2436617))

(declare-fun m!2436619 () Bool)

(assert (=> d!612141 m!2436619))

(assert (=> b!2005544 m!2436285))

(assert (=> b!2005544 m!2436609))

(assert (=> b!2005544 m!2436609))

(declare-fun m!2436621 () Bool)

(assert (=> b!2005544 m!2436621))

(assert (=> b!2005544 m!2436285))

(assert (=> b!2005544 m!2436611))

(assert (=> b!2005544 m!2436621))

(assert (=> b!2005544 m!2436611))

(declare-fun m!2436623 () Bool)

(assert (=> b!2005544 m!2436623))

(assert (=> bm!122556 m!2436285))

(assert (=> bm!122556 m!2436617))

(assert (=> b!2005531 m!2436285))

(assert (=> b!2005531 m!2436609))

(assert (=> b!2005235 d!612141))

(declare-fun d!612143 () Bool)

(assert (=> d!612143 (= (get!6960 lt!753083) (v!26819 lt!753083))))

(assert (=> b!2005235 d!612143))

(declare-fun d!612145 () Bool)

(assert (=> d!612145 (= (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083)))) (list!8968 (c!323781 (charsOf!2495 (_1!11821 (get!6960 lt!753083))))))))

(declare-fun bs!419427 () Bool)

(assert (= bs!419427 d!612145))

(declare-fun m!2436625 () Bool)

(assert (=> bs!419427 m!2436625))

(assert (=> b!2005235 d!612145))

(declare-fun d!612147 () Bool)

(declare-fun lt!753156 () BalanceConc!14540)

(assert (=> d!612147 (= (list!8964 lt!753156) (originalCharacters!4762 (_1!11821 (get!6960 lt!753083))))))

(assert (=> d!612147 (= lt!753156 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083))))) (value!124310 (_1!11821 (get!6960 lt!753083)))))))

(assert (=> d!612147 (= (charsOf!2495 (_1!11821 (get!6960 lt!753083))) lt!753156)))

(declare-fun b_lambda!66785 () Bool)

(assert (=> (not b_lambda!66785) (not d!612147)))

(declare-fun t!186900 () Bool)

(declare-fun tb!124945 () Bool)

(assert (=> (and b!2004750 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))) t!186900) tb!124945))

(declare-fun b!2005545 () Bool)

(declare-fun e!1267225 () Bool)

(declare-fun tp!598629 () Bool)

(assert (=> b!2005545 (= e!1267225 (and (inv!29193 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083))))) (value!124310 (_1!11821 (get!6960 lt!753083)))))) tp!598629))))

(declare-fun result!149784 () Bool)

(assert (=> tb!124945 (= result!149784 (and (inv!29194 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083))))) (value!124310 (_1!11821 (get!6960 lt!753083))))) e!1267225))))

(assert (= tb!124945 b!2005545))

(declare-fun m!2436627 () Bool)

(assert (=> b!2005545 m!2436627))

(declare-fun m!2436629 () Bool)

(assert (=> tb!124945 m!2436629))

(assert (=> d!612147 t!186900))

(declare-fun b_and!157997 () Bool)

(assert (= b_and!157971 (and (=> t!186900 result!149784) b_and!157997)))

(declare-fun tb!124947 () Bool)

(declare-fun t!186902 () Bool)

(assert (=> (and b!2004733 (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))) t!186902) tb!124947))

(declare-fun result!149786 () Bool)

(assert (= result!149786 result!149784))

(assert (=> d!612147 t!186902))

(declare-fun b_and!157999 () Bool)

(assert (= b_and!157969 (and (=> t!186902 result!149786) b_and!157999)))

(declare-fun tb!124949 () Bool)

(declare-fun t!186904 () Bool)

(assert (=> (and b!2005317 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))) t!186904) tb!124949))

(declare-fun result!149788 () Bool)

(assert (= result!149788 result!149784))

(assert (=> d!612147 t!186904))

(declare-fun b_and!158001 () Bool)

(assert (= b_and!157977 (and (=> t!186904 result!149788) b_and!158001)))

(declare-fun t!186906 () Bool)

(declare-fun tb!124951 () Bool)

(assert (=> (and b!2005328 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))) t!186906) tb!124951))

(declare-fun result!149790 () Bool)

(assert (= result!149790 result!149784))

(assert (=> d!612147 t!186906))

(declare-fun b_and!158003 () Bool)

(assert (= b_and!157981 (and (=> t!186906 result!149790) b_and!158003)))

(declare-fun tb!124953 () Bool)

(declare-fun t!186908 () Bool)

(assert (=> (and b!2004742 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))) t!186908) tb!124953))

(declare-fun result!149792 () Bool)

(assert (= result!149792 result!149784))

(assert (=> d!612147 t!186908))

(declare-fun b_and!158005 () Bool)

(assert (= b_and!157973 (and (=> t!186908 result!149792) b_and!158005)))

(declare-fun m!2436631 () Bool)

(assert (=> d!612147 m!2436631))

(declare-fun m!2436633 () Bool)

(assert (=> d!612147 m!2436633))

(assert (=> b!2005235 d!612147))

(declare-fun d!612149 () Bool)

(assert (=> d!612149 (= (isEmpty!13657 lt!752911) (is-Nil!22037 lt!752911))))

(assert (=> bm!122521 d!612149))

(declare-fun d!612151 () Bool)

(declare-fun c!323901 () Bool)

(assert (=> d!612151 (= c!323901 (is-Nil!22037 lt!753114))))

(declare-fun e!1267228 () (Set C!10906))

(assert (=> d!612151 (= (content!3225 lt!753114) e!1267228)))

(declare-fun b!2005550 () Bool)

(assert (=> b!2005550 (= e!1267228 (as set.empty (Set C!10906)))))

(declare-fun b!2005551 () Bool)

(assert (=> b!2005551 (= e!1267228 (set.union (set.insert (h!27438 lt!753114) (as set.empty (Set C!10906))) (content!3225 (t!186780 lt!753114))))))

(assert (= (and d!612151 c!323901) b!2005550))

(assert (= (and d!612151 (not c!323901)) b!2005551))

(declare-fun m!2436635 () Bool)

(assert (=> b!2005551 m!2436635))

(declare-fun m!2436637 () Bool)

(assert (=> b!2005551 m!2436637))

(assert (=> d!612089 d!612151))

(declare-fun d!612153 () Bool)

(declare-fun c!323902 () Bool)

(assert (=> d!612153 (= c!323902 (is-Nil!22037 lt!752900))))

(declare-fun e!1267229 () (Set C!10906))

(assert (=> d!612153 (= (content!3225 lt!752900) e!1267229)))

(declare-fun b!2005552 () Bool)

(assert (=> b!2005552 (= e!1267229 (as set.empty (Set C!10906)))))

(declare-fun b!2005553 () Bool)

(assert (=> b!2005553 (= e!1267229 (set.union (set.insert (h!27438 lt!752900) (as set.empty (Set C!10906))) (content!3225 (t!186780 lt!752900))))))

(assert (= (and d!612153 c!323902) b!2005552))

(assert (= (and d!612153 (not c!323902)) b!2005553))

(declare-fun m!2436639 () Bool)

(assert (=> b!2005553 m!2436639))

(declare-fun m!2436641 () Bool)

(assert (=> b!2005553 m!2436641))

(assert (=> d!612089 d!612153))

(declare-fun c!323903 () Bool)

(declare-fun d!612155 () Bool)

(assert (=> d!612155 (= c!323903 (is-Nil!22037 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))

(declare-fun e!1267230 () (Set C!10906))

(assert (=> d!612155 (= (content!3225 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) e!1267230)))

(declare-fun b!2005554 () Bool)

(assert (=> b!2005554 (= e!1267230 (as set.empty (Set C!10906)))))

(declare-fun b!2005555 () Bool)

(assert (=> b!2005555 (= e!1267230 (set.union (set.insert (h!27438 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) (as set.empty (Set C!10906))) (content!3225 (t!186780 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))))

(assert (= (and d!612155 c!323903) b!2005554))

(assert (= (and d!612155 (not c!323903)) b!2005555))

(declare-fun m!2436643 () Bool)

(assert (=> b!2005555 m!2436643))

(declare-fun m!2436645 () Bool)

(assert (=> b!2005555 m!2436645))

(assert (=> d!612089 d!612155))

(declare-fun d!612157 () Bool)

(assert (=> d!612157 (= (isEmpty!13658 lt!752909) (not (is-Some!4590 lt!752909)))))

(assert (=> d!611959 d!612157))

(declare-fun d!612159 () Bool)

(declare-fun c!323906 () Bool)

(assert (=> d!612159 (= c!323906 (is-Node!7362 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598))))))))

(declare-fun e!1267235 () Bool)

(assert (=> d!612159 (= (inv!29193 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598))))) e!1267235)))

(declare-fun b!2005562 () Bool)

(declare-fun inv!29197 (Conc!7362) Bool)

(assert (=> b!2005562 (= e!1267235 (inv!29197 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598))))))))

(declare-fun b!2005563 () Bool)

(declare-fun e!1267236 () Bool)

(assert (=> b!2005563 (= e!1267235 e!1267236)))

(declare-fun res!879544 () Bool)

(assert (=> b!2005563 (= res!879544 (not (is-Leaf!10803 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598)))))))))

(assert (=> b!2005563 (=> res!879544 e!1267236)))

(declare-fun b!2005564 () Bool)

(declare-fun inv!29198 (Conc!7362) Bool)

(assert (=> b!2005564 (= e!1267236 (inv!29198 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598))))))))

(assert (= (and d!612159 c!323906) b!2005562))

(assert (= (and d!612159 (not c!323906)) b!2005563))

(assert (= (and b!2005563 (not res!879544)) b!2005564))

(declare-fun m!2436647 () Bool)

(assert (=> b!2005562 m!2436647))

(declare-fun m!2436649 () Bool)

(assert (=> b!2005564 m!2436649))

(assert (=> b!2004845 d!612159))

(declare-fun b!2005565 () Bool)

(declare-fun e!1267238 () Bool)

(assert (=> b!2005565 (= e!1267238 (inv!16 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906)))))

(declare-fun b!2005566 () Bool)

(declare-fun e!1267237 () Bool)

(assert (=> b!2005566 (= e!1267237 (inv!15 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906)))))

(declare-fun b!2005567 () Bool)

(declare-fun e!1267239 () Bool)

(assert (=> b!2005567 (= e!1267238 e!1267239)))

(declare-fun c!323907 () Bool)

(assert (=> b!2005567 (= c!323907 (is-IntegerValue!12274 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906)))))

(declare-fun b!2005568 () Bool)

(assert (=> b!2005568 (= e!1267239 (inv!17 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906)))))

(declare-fun d!612161 () Bool)

(declare-fun c!323908 () Bool)

(assert (=> d!612161 (= c!323908 (is-IntegerValue!12273 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906)))))

(assert (=> d!612161 (= (inv!21 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906)) e!1267238)))

(declare-fun b!2005569 () Bool)

(declare-fun res!879545 () Bool)

(assert (=> b!2005569 (=> res!879545 e!1267237)))

(assert (=> b!2005569 (= res!879545 (not (is-IntegerValue!12275 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906))))))

(assert (=> b!2005569 (= e!1267239 e!1267237)))

(assert (= (and d!612161 c!323908) b!2005565))

(assert (= (and d!612161 (not c!323908)) b!2005567))

(assert (= (and b!2005567 c!323907) b!2005568))

(assert (= (and b!2005567 (not c!323907)) b!2005569))

(assert (= (and b!2005569 (not res!879545)) b!2005566))

(declare-fun m!2436651 () Bool)

(assert (=> b!2005565 m!2436651))

(declare-fun m!2436653 () Bool)

(assert (=> b!2005566 m!2436653))

(declare-fun m!2436655 () Bool)

(assert (=> b!2005568 m!2436655))

(assert (=> tb!124887 d!612161))

(declare-fun d!612163 () Bool)

(assert (=> d!612163 (= (get!6961 lt!753102) (v!26820 lt!753102))))

(assert (=> b!2005275 d!612163))

(declare-fun bs!419428 () Bool)

(declare-fun d!612165 () Bool)

(assert (= bs!419428 (and d!612165 b!2004739)))

(declare-fun lambda!75950 () Int)

(assert (=> bs!419428 (not (= lambda!75950 lambda!75920))))

(declare-fun bs!419429 () Bool)

(assert (= bs!419429 (and d!612165 b!2004952)))

(assert (=> bs!419429 (= lambda!75950 lambda!75929)))

(declare-fun bs!419430 () Bool)

(assert (= bs!419430 (and d!612165 d!611997)))

(assert (=> bs!419430 (= lambda!75950 lambda!75935)))

(declare-fun bs!419431 () Bool)

(assert (= bs!419431 (and d!612165 b!2005255)))

(assert (=> bs!419431 (= lambda!75950 lambda!75942)))

(declare-fun b!2005574 () Bool)

(declare-fun e!1267244 () Bool)

(assert (=> b!2005574 (= e!1267244 true)))

(declare-fun b!2005573 () Bool)

(declare-fun e!1267243 () Bool)

(assert (=> b!2005573 (= e!1267243 e!1267244)))

(declare-fun b!2005572 () Bool)

(declare-fun e!1267242 () Bool)

(assert (=> b!2005572 (= e!1267242 e!1267243)))

(assert (=> d!612165 e!1267242))

(assert (= b!2005573 b!2005574))

(assert (= b!2005572 b!2005573))

(assert (= (and d!612165 (is-Cons!22039 rules!3198)) b!2005572))

(assert (=> b!2005574 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (h!27440 rules!3198)))) (dynLambda!10815 order!13961 lambda!75950))))

(assert (=> b!2005574 (< (dynLambda!10816 order!13963 (toChars!5475 (transformation!3955 (h!27440 rules!3198)))) (dynLambda!10815 order!13961 lambda!75950))))

(assert (=> d!612165 true))

(declare-fun lt!753157 () Bool)

(assert (=> d!612165 (= lt!753157 (forall!4679 (t!186781 tokens!598) lambda!75950))))

(declare-fun e!1267241 () Bool)

(assert (=> d!612165 (= lt!753157 e!1267241)))

(declare-fun res!879547 () Bool)

(assert (=> d!612165 (=> res!879547 e!1267241)))

(assert (=> d!612165 (= res!879547 (not (is-Cons!22038 (t!186781 tokens!598))))))

(assert (=> d!612165 (not (isEmpty!13654 rules!3198))))

(assert (=> d!612165 (= (rulesProduceEachTokenIndividuallyList!1299 thiss!23328 rules!3198 (t!186781 tokens!598)) lt!753157)))

(declare-fun b!2005570 () Bool)

(declare-fun e!1267240 () Bool)

(assert (=> b!2005570 (= e!1267241 e!1267240)))

(declare-fun res!879546 () Bool)

(assert (=> b!2005570 (=> (not res!879546) (not e!1267240))))

(assert (=> b!2005570 (= res!879546 (rulesProduceIndividualToken!1740 thiss!23328 rules!3198 (h!27439 (t!186781 tokens!598))))))

(declare-fun b!2005571 () Bool)

(assert (=> b!2005571 (= e!1267240 (rulesProduceEachTokenIndividuallyList!1299 thiss!23328 rules!3198 (t!186781 (t!186781 tokens!598))))))

(assert (= (and d!612165 (not res!879547)) b!2005570))

(assert (= (and b!2005570 res!879546) b!2005571))

(declare-fun m!2436657 () Bool)

(assert (=> d!612165 m!2436657))

(assert (=> d!612165 m!2435733))

(declare-fun m!2436659 () Bool)

(assert (=> b!2005570 m!2436659))

(declare-fun m!2436661 () Bool)

(assert (=> b!2005571 m!2436661))

(assert (=> b!2005049 d!612165))

(declare-fun d!612167 () Bool)

(assert (=> d!612167 (= (isEmpty!13657 lt!752900) (is-Nil!22037 lt!752900))))

(assert (=> d!612007 d!612167))

(declare-fun bm!122563 () Bool)

(declare-fun call!122569 () Bool)

(declare-fun c!323913 () Bool)

(assert (=> bm!122563 (= call!122569 (validRegex!2152 (ite c!323913 (regOne!11273 (regex!3955 lt!752901)) (regOne!11272 (regex!3955 lt!752901)))))))

(declare-fun b!2005593 () Bool)

(declare-fun res!879562 () Bool)

(declare-fun e!1267263 () Bool)

(assert (=> b!2005593 (=> res!879562 e!1267263)))

(assert (=> b!2005593 (= res!879562 (not (is-Concat!9472 (regex!3955 lt!752901))))))

(declare-fun e!1267259 () Bool)

(assert (=> b!2005593 (= e!1267259 e!1267263)))

(declare-fun b!2005595 () Bool)

(declare-fun e!1267261 () Bool)

(assert (=> b!2005595 (= e!1267261 e!1267259)))

(assert (=> b!2005595 (= c!323913 (is-Union!5380 (regex!3955 lt!752901)))))

(declare-fun bm!122564 () Bool)

(declare-fun call!122568 () Bool)

(declare-fun call!122570 () Bool)

(assert (=> bm!122564 (= call!122568 call!122570)))

(declare-fun b!2005596 () Bool)

(declare-fun e!1267262 () Bool)

(assert (=> b!2005596 (= e!1267262 call!122568)))

(declare-fun b!2005597 () Bool)

(declare-fun res!879558 () Bool)

(assert (=> b!2005597 (=> (not res!879558) (not e!1267262))))

(assert (=> b!2005597 (= res!879558 call!122569)))

(assert (=> b!2005597 (= e!1267259 e!1267262)))

(declare-fun b!2005598 () Bool)

(declare-fun e!1267264 () Bool)

(assert (=> b!2005598 (= e!1267261 e!1267264)))

(declare-fun res!879559 () Bool)

(assert (=> b!2005598 (= res!879559 (not (nullable!1626 (reg!5709 (regex!3955 lt!752901)))))))

(assert (=> b!2005598 (=> (not res!879559) (not e!1267264))))

(declare-fun b!2005599 () Bool)

(assert (=> b!2005599 (= e!1267264 call!122570)))

(declare-fun b!2005600 () Bool)

(declare-fun e!1267260 () Bool)

(assert (=> b!2005600 (= e!1267260 call!122568)))

(declare-fun d!612169 () Bool)

(declare-fun res!879560 () Bool)

(declare-fun e!1267265 () Bool)

(assert (=> d!612169 (=> res!879560 e!1267265)))

(assert (=> d!612169 (= res!879560 (is-ElementMatch!5380 (regex!3955 lt!752901)))))

(assert (=> d!612169 (= (validRegex!2152 (regex!3955 lt!752901)) e!1267265)))

(declare-fun b!2005594 () Bool)

(assert (=> b!2005594 (= e!1267265 e!1267261)))

(declare-fun c!323914 () Bool)

(assert (=> b!2005594 (= c!323914 (is-Star!5380 (regex!3955 lt!752901)))))

(declare-fun bm!122565 () Bool)

(assert (=> bm!122565 (= call!122570 (validRegex!2152 (ite c!323914 (reg!5709 (regex!3955 lt!752901)) (ite c!323913 (regTwo!11273 (regex!3955 lt!752901)) (regTwo!11272 (regex!3955 lt!752901))))))))

(declare-fun b!2005601 () Bool)

(assert (=> b!2005601 (= e!1267263 e!1267260)))

(declare-fun res!879561 () Bool)

(assert (=> b!2005601 (=> (not res!879561) (not e!1267260))))

(assert (=> b!2005601 (= res!879561 call!122569)))

(assert (= (and d!612169 (not res!879560)) b!2005594))

(assert (= (and b!2005594 c!323914) b!2005598))

(assert (= (and b!2005594 (not c!323914)) b!2005595))

(assert (= (and b!2005598 res!879559) b!2005599))

(assert (= (and b!2005595 c!323913) b!2005597))

(assert (= (and b!2005595 (not c!323913)) b!2005593))

(assert (= (and b!2005597 res!879558) b!2005596))

(assert (= (and b!2005593 (not res!879562)) b!2005601))

(assert (= (and b!2005601 res!879561) b!2005600))

(assert (= (or b!2005597 b!2005601) bm!122563))

(assert (= (or b!2005596 b!2005600) bm!122564))

(assert (= (or b!2005599 bm!122564) bm!122565))

(declare-fun m!2436663 () Bool)

(assert (=> bm!122563 m!2436663))

(declare-fun m!2436665 () Bool)

(assert (=> b!2005598 m!2436665))

(declare-fun m!2436667 () Bool)

(assert (=> bm!122565 m!2436667))

(assert (=> d!612007 d!612169))

(assert (=> bm!122522 d!612167))

(declare-fun b!2005602 () Bool)

(declare-fun e!1267267 () Bool)

(assert (=> b!2005602 (= e!1267267 (inv!16 (value!124310 (h!27439 (t!186781 tokens!598)))))))

(declare-fun b!2005603 () Bool)

(declare-fun e!1267266 () Bool)

(assert (=> b!2005603 (= e!1267266 (inv!15 (value!124310 (h!27439 (t!186781 tokens!598)))))))

(declare-fun b!2005604 () Bool)

(declare-fun e!1267268 () Bool)

(assert (=> b!2005604 (= e!1267267 e!1267268)))

(declare-fun c!323915 () Bool)

(assert (=> b!2005604 (= c!323915 (is-IntegerValue!12274 (value!124310 (h!27439 (t!186781 tokens!598)))))))

(declare-fun b!2005605 () Bool)

(assert (=> b!2005605 (= e!1267268 (inv!17 (value!124310 (h!27439 (t!186781 tokens!598)))))))

(declare-fun d!612171 () Bool)

(declare-fun c!323916 () Bool)

(assert (=> d!612171 (= c!323916 (is-IntegerValue!12273 (value!124310 (h!27439 (t!186781 tokens!598)))))))

(assert (=> d!612171 (= (inv!21 (value!124310 (h!27439 (t!186781 tokens!598)))) e!1267267)))

(declare-fun b!2005606 () Bool)

(declare-fun res!879563 () Bool)

(assert (=> b!2005606 (=> res!879563 e!1267266)))

(assert (=> b!2005606 (= res!879563 (not (is-IntegerValue!12275 (value!124310 (h!27439 (t!186781 tokens!598))))))))

(assert (=> b!2005606 (= e!1267268 e!1267266)))

(assert (= (and d!612171 c!323916) b!2005602))

(assert (= (and d!612171 (not c!323916)) b!2005604))

(assert (= (and b!2005604 c!323915) b!2005605))

(assert (= (and b!2005604 (not c!323915)) b!2005606))

(assert (= (and b!2005606 (not res!879563)) b!2005603))

(declare-fun m!2436669 () Bool)

(assert (=> b!2005602 m!2436669))

(declare-fun m!2436671 () Bool)

(assert (=> b!2005603 m!2436671))

(declare-fun m!2436673 () Bool)

(assert (=> b!2005605 m!2436673))

(assert (=> b!2005315 d!612171))

(declare-fun d!612173 () Bool)

(assert (=> d!612173 (= (isEmpty!13657 (tail!3015 lt!752911)) (is-Nil!22037 (tail!3015 lt!752911)))))

(assert (=> b!2005029 d!612173))

(declare-fun d!612175 () Bool)

(assert (=> d!612175 (= (tail!3015 lt!752911) (t!186780 lt!752911))))

(assert (=> b!2005029 d!612175))

(declare-fun d!612177 () Bool)

(declare-fun isBalanced!2290 (Conc!7362) Bool)

(assert (=> d!612177 (= (inv!29194 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598)))) (isBalanced!2290 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598))))))))

(declare-fun bs!419432 () Bool)

(assert (= bs!419432 d!612177))

(declare-fun m!2436675 () Bool)

(assert (=> bs!419432 m!2436675))

(assert (=> tb!124845 d!612177))

(declare-fun d!612179 () Bool)

(declare-fun lt!753160 () Bool)

(declare-fun content!3226 (List!22121) (Set Rule!7710))

(assert (=> d!612179 (= lt!753160 (set.member (rule!6178 (_1!11821 (get!6960 lt!752969))) (content!3226 rules!3198)))))

(declare-fun e!1267273 () Bool)

(assert (=> d!612179 (= lt!753160 e!1267273)))

(declare-fun res!879569 () Bool)

(assert (=> d!612179 (=> (not res!879569) (not e!1267273))))

(assert (=> d!612179 (= res!879569 (is-Cons!22039 rules!3198))))

(assert (=> d!612179 (= (contains!4019 rules!3198 (rule!6178 (_1!11821 (get!6960 lt!752969)))) lt!753160)))

(declare-fun b!2005611 () Bool)

(declare-fun e!1267274 () Bool)

(assert (=> b!2005611 (= e!1267273 e!1267274)))

(declare-fun res!879568 () Bool)

(assert (=> b!2005611 (=> res!879568 e!1267274)))

(assert (=> b!2005611 (= res!879568 (= (h!27440 rules!3198) (rule!6178 (_1!11821 (get!6960 lt!752969)))))))

(declare-fun b!2005612 () Bool)

(assert (=> b!2005612 (= e!1267274 (contains!4019 (t!186782 rules!3198) (rule!6178 (_1!11821 (get!6960 lt!752969)))))))

(assert (= (and d!612179 res!879569) b!2005611))

(assert (= (and b!2005611 (not res!879568)) b!2005612))

(declare-fun m!2436677 () Bool)

(assert (=> d!612179 m!2436677))

(declare-fun m!2436679 () Bool)

(assert (=> d!612179 m!2436679))

(declare-fun m!2436681 () Bool)

(assert (=> b!2005612 m!2436681))

(assert (=> b!2004865 d!612179))

(declare-fun d!612181 () Bool)

(assert (=> d!612181 (= (get!6960 lt!752969) (v!26819 lt!752969))))

(assert (=> b!2004865 d!612181))

(declare-fun bm!122566 () Bool)

(declare-fun call!122571 () Bool)

(assert (=> bm!122566 (= call!122571 (isEmpty!13657 (list!8964 (charsOf!2495 (h!27439 tokens!598)))))))

(declare-fun b!2005614 () Bool)

(declare-fun e!1267278 () Bool)

(declare-fun lt!753161 () Bool)

(assert (=> b!2005614 (= e!1267278 (= lt!753161 call!122571))))

(declare-fun b!2005615 () Bool)

(declare-fun e!1267280 () Bool)

(assert (=> b!2005615 (= e!1267280 (nullable!1626 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598))))))))))

(declare-fun b!2005616 () Bool)

(declare-fun res!879574 () Bool)

(declare-fun e!1267277 () Bool)

(assert (=> b!2005616 (=> (not res!879574) (not e!1267277))))

(assert (=> b!2005616 (= res!879574 (not call!122571))))

(declare-fun b!2005617 () Bool)

(declare-fun e!1267275 () Bool)

(declare-fun e!1267279 () Bool)

(assert (=> b!2005617 (= e!1267275 e!1267279)))

(declare-fun res!879576 () Bool)

(assert (=> b!2005617 (=> (not res!879576) (not e!1267279))))

(assert (=> b!2005617 (= res!879576 (not lt!753161))))

(declare-fun b!2005618 () Bool)

(declare-fun res!879573 () Bool)

(assert (=> b!2005618 (=> (not res!879573) (not e!1267277))))

(assert (=> b!2005618 (= res!879573 (isEmpty!13657 (tail!3015 (list!8964 (charsOf!2495 (h!27439 tokens!598))))))))

(declare-fun b!2005619 () Bool)

(declare-fun e!1267281 () Bool)

(assert (=> b!2005619 (= e!1267281 (not lt!753161))))

(declare-fun b!2005620 () Bool)

(declare-fun e!1267276 () Bool)

(assert (=> b!2005620 (= e!1267279 e!1267276)))

(declare-fun res!879570 () Bool)

(assert (=> b!2005620 (=> res!879570 e!1267276)))

(assert (=> b!2005620 (= res!879570 call!122571)))

(declare-fun b!2005621 () Bool)

(declare-fun res!879575 () Bool)

(assert (=> b!2005621 (=> res!879575 e!1267275)))

(assert (=> b!2005621 (= res!879575 e!1267277)))

(declare-fun res!879572 () Bool)

(assert (=> b!2005621 (=> (not res!879572) (not e!1267277))))

(assert (=> b!2005621 (= res!879572 lt!753161)))

(declare-fun b!2005613 () Bool)

(assert (=> b!2005613 (= e!1267276 (not (= (head!4531 (list!8964 (charsOf!2495 (h!27439 tokens!598)))) (c!323780 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598))))))))))))

(declare-fun d!612183 () Bool)

(assert (=> d!612183 e!1267278))

(declare-fun c!323919 () Bool)

(assert (=> d!612183 (= c!323919 (is-EmptyExpr!5380 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598))))))))))

(assert (=> d!612183 (= lt!753161 e!1267280)))

(declare-fun c!323917 () Bool)

(assert (=> d!612183 (= c!323917 (isEmpty!13657 (list!8964 (charsOf!2495 (h!27439 tokens!598)))))))

(assert (=> d!612183 (validRegex!2152 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598)))))))))

(assert (=> d!612183 (= (matchR!2646 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598)))))) (list!8964 (charsOf!2495 (h!27439 tokens!598)))) lt!753161)))

(declare-fun b!2005622 () Bool)

(declare-fun res!879571 () Bool)

(assert (=> b!2005622 (=> res!879571 e!1267275)))

(assert (=> b!2005622 (= res!879571 (not (is-ElementMatch!5380 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598)))))))))))

(assert (=> b!2005622 (= e!1267281 e!1267275)))

(declare-fun b!2005623 () Bool)

(assert (=> b!2005623 (= e!1267277 (= (head!4531 (list!8964 (charsOf!2495 (h!27439 tokens!598)))) (c!323780 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598)))))))))))

(declare-fun b!2005624 () Bool)

(declare-fun res!879577 () Bool)

(assert (=> b!2005624 (=> res!879577 e!1267276)))

(assert (=> b!2005624 (= res!879577 (not (isEmpty!13657 (tail!3015 (list!8964 (charsOf!2495 (h!27439 tokens!598)))))))))

(declare-fun b!2005625 () Bool)

(assert (=> b!2005625 (= e!1267278 e!1267281)))

(declare-fun c!323918 () Bool)

(assert (=> b!2005625 (= c!323918 (is-EmptyLang!5380 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598))))))))))

(declare-fun b!2005626 () Bool)

(assert (=> b!2005626 (= e!1267280 (matchR!2646 (derivativeStep!1385 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598)))))) (head!4531 (list!8964 (charsOf!2495 (h!27439 tokens!598))))) (tail!3015 (list!8964 (charsOf!2495 (h!27439 tokens!598))))))))

(assert (= (and d!612183 c!323917) b!2005615))

(assert (= (and d!612183 (not c!323917)) b!2005626))

(assert (= (and d!612183 c!323919) b!2005614))

(assert (= (and d!612183 (not c!323919)) b!2005625))

(assert (= (and b!2005625 c!323918) b!2005619))

(assert (= (and b!2005625 (not c!323918)) b!2005622))

(assert (= (and b!2005622 (not res!879571)) b!2005621))

(assert (= (and b!2005621 res!879572) b!2005616))

(assert (= (and b!2005616 res!879574) b!2005618))

(assert (= (and b!2005618 res!879573) b!2005623))

(assert (= (and b!2005621 (not res!879575)) b!2005617))

(assert (= (and b!2005617 res!879576) b!2005620))

(assert (= (and b!2005620 (not res!879570)) b!2005624))

(assert (= (and b!2005624 (not res!879577)) b!2005613))

(assert (= (or b!2005614 b!2005616 b!2005620) bm!122566))

(assert (=> b!2005623 m!2435925))

(declare-fun m!2436683 () Bool)

(assert (=> b!2005623 m!2436683))

(assert (=> b!2005624 m!2435925))

(declare-fun m!2436685 () Bool)

(assert (=> b!2005624 m!2436685))

(assert (=> b!2005624 m!2436685))

(declare-fun m!2436687 () Bool)

(assert (=> b!2005624 m!2436687))

(assert (=> b!2005618 m!2435925))

(assert (=> b!2005618 m!2436685))

(assert (=> b!2005618 m!2436685))

(assert (=> b!2005618 m!2436687))

(declare-fun m!2436689 () Bool)

(assert (=> b!2005615 m!2436689))

(assert (=> d!612183 m!2435925))

(declare-fun m!2436691 () Bool)

(assert (=> d!612183 m!2436691))

(declare-fun m!2436693 () Bool)

(assert (=> d!612183 m!2436693))

(assert (=> b!2005626 m!2435925))

(assert (=> b!2005626 m!2436683))

(assert (=> b!2005626 m!2436683))

(declare-fun m!2436695 () Bool)

(assert (=> b!2005626 m!2436695))

(assert (=> b!2005626 m!2435925))

(assert (=> b!2005626 m!2436685))

(assert (=> b!2005626 m!2436695))

(assert (=> b!2005626 m!2436685))

(declare-fun m!2436697 () Bool)

(assert (=> b!2005626 m!2436697))

(assert (=> bm!122566 m!2435925))

(assert (=> bm!122566 m!2436691))

(assert (=> b!2005613 m!2435925))

(assert (=> b!2005613 m!2436683))

(assert (=> b!2005260 d!612183))

(declare-fun d!612185 () Bool)

(assert (=> d!612185 (= (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598))))) (v!26820 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598))))))))

(assert (=> b!2005260 d!612185))

(assert (=> b!2005260 d!612085))

(declare-fun d!612187 () Bool)

(assert (=> d!612187 (= (list!8964 (charsOf!2495 (h!27439 tokens!598))) (list!8968 (c!323781 (charsOf!2495 (h!27439 tokens!598)))))))

(declare-fun bs!419433 () Bool)

(assert (= bs!419433 d!612187))

(declare-fun m!2436699 () Bool)

(assert (=> bs!419433 m!2436699))

(assert (=> b!2005260 d!612187))

(assert (=> b!2005260 d!612077))

(declare-fun lt!753162 () BalanceConc!14540)

(declare-fun d!612189 () Bool)

(assert (=> d!612189 (= (list!8964 lt!753162) (originalCharacters!4762 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598))))))))

(assert (=> d!612189 (= lt!753162 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598))))))) (value!124310 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598)))))))))

(assert (=> d!612189 (= (charsOf!2495 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598))))) lt!753162)))

(declare-fun b_lambda!66787 () Bool)

(assert (=> (not b_lambda!66787) (not d!612189)))

(declare-fun t!186910 () Bool)

(declare-fun tb!124955 () Bool)

(assert (=> (and b!2004742 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toChars!5475 (transformation!3955 (rule!6178 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598)))))))) t!186910) tb!124955))

(declare-fun e!1267282 () Bool)

(declare-fun tp!598630 () Bool)

(declare-fun b!2005627 () Bool)

(assert (=> b!2005627 (= e!1267282 (and (inv!29193 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598))))))) (value!124310 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598)))))))) tp!598630))))

(declare-fun result!149794 () Bool)

(assert (=> tb!124955 (= result!149794 (and (inv!29194 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598))))))) (value!124310 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598))))))) e!1267282))))

(assert (= tb!124955 b!2005627))

(declare-fun m!2436701 () Bool)

(assert (=> b!2005627 m!2436701))

(declare-fun m!2436703 () Bool)

(assert (=> tb!124955 m!2436703))

(assert (=> d!612189 t!186910))

(declare-fun b_and!158007 () Bool)

(assert (= b_and!158005 (and (=> t!186910 result!149794) b_and!158007)))

(declare-fun tb!124957 () Bool)

(declare-fun t!186912 () Bool)

(assert (=> (and b!2005317 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toChars!5475 (transformation!3955 (rule!6178 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598)))))))) t!186912) tb!124957))

(declare-fun result!149796 () Bool)

(assert (= result!149796 result!149794))

(assert (=> d!612189 t!186912))

(declare-fun b_and!158009 () Bool)

(assert (= b_and!158001 (and (=> t!186912 result!149796) b_and!158009)))

(declare-fun tb!124959 () Bool)

(declare-fun t!186914 () Bool)

(assert (=> (and b!2005328 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598)))))))) t!186914) tb!124959))

(declare-fun result!149798 () Bool)

(assert (= result!149798 result!149794))

(assert (=> d!612189 t!186914))

(declare-fun b_and!158011 () Bool)

(assert (= b_and!158003 (and (=> t!186914 result!149798) b_and!158011)))

(declare-fun t!186916 () Bool)

(declare-fun tb!124961 () Bool)

(assert (=> (and b!2004750 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598)))))))) t!186916) tb!124961))

(declare-fun result!149800 () Bool)

(assert (= result!149800 result!149794))

(assert (=> d!612189 t!186916))

(declare-fun b_and!158013 () Bool)

(assert (= b_and!157997 (and (=> t!186916 result!149800) b_and!158013)))

(declare-fun tb!124963 () Bool)

(declare-fun t!186918 () Bool)

(assert (=> (and b!2004733 (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598)))))))) t!186918) tb!124963))

(declare-fun result!149802 () Bool)

(assert (= result!149802 result!149794))

(assert (=> d!612189 t!186918))

(declare-fun b_and!158015 () Bool)

(assert (= b_and!157999 (and (=> t!186918 result!149802) b_and!158015)))

(declare-fun m!2436705 () Bool)

(assert (=> d!612189 m!2436705))

(declare-fun m!2436707 () Bool)

(assert (=> d!612189 m!2436707))

(assert (=> bm!122545 d!612189))

(declare-fun d!612191 () Bool)

(assert (=> d!612191 (= (isDefined!3880 lt!752969) (not (isEmpty!13658 lt!752969)))))

(declare-fun bs!419434 () Bool)

(assert (= bs!419434 d!612191))

(assert (=> bs!419434 m!2435851))

(assert (=> b!2004869 d!612191))

(declare-fun d!612193 () Bool)

(assert (=> d!612193 (= (isEmpty!13658 lt!752969) (not (is-Some!4590 lt!752969)))))

(assert (=> d!611961 d!612193))

(declare-fun b!2005636 () Bool)

(declare-fun e!1267289 () Bool)

(declare-fun e!1267290 () Bool)

(assert (=> b!2005636 (= e!1267289 e!1267290)))

(declare-fun res!879587 () Bool)

(assert (=> b!2005636 (=> (not res!879587) (not e!1267290))))

(assert (=> b!2005636 (= res!879587 (not (is-Nil!22037 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun b!2005639 () Bool)

(declare-fun e!1267291 () Bool)

(assert (=> b!2005639 (= e!1267291 (>= (size!17229 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)) (size!17229 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun d!612195 () Bool)

(assert (=> d!612195 e!1267291))

(declare-fun res!879586 () Bool)

(assert (=> d!612195 (=> res!879586 e!1267291)))

(declare-fun lt!753165 () Bool)

(assert (=> d!612195 (= res!879586 (not lt!753165))))

(assert (=> d!612195 (= lt!753165 e!1267289)))

(declare-fun res!879589 () Bool)

(assert (=> d!612195 (=> res!879589 e!1267289)))

(assert (=> d!612195 (= res!879589 (is-Nil!22037 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (=> d!612195 (= (isPrefix!1958 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!753165)))

(declare-fun b!2005638 () Bool)

(assert (=> b!2005638 (= e!1267290 (isPrefix!1958 (tail!3015 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)) (tail!3015 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun b!2005637 () Bool)

(declare-fun res!879588 () Bool)

(assert (=> b!2005637 (=> (not res!879588) (not e!1267290))))

(assert (=> b!2005637 (= res!879588 (= (head!4531 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)) (head!4531 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(assert (= (and d!612195 (not res!879589)) b!2005636))

(assert (= (and b!2005636 res!879587) b!2005637))

(assert (= (and b!2005637 res!879588) b!2005638))

(assert (= (and d!612195 (not res!879586)) b!2005639))

(assert (=> b!2005639 m!2435695))

(assert (=> b!2005639 m!2435869))

(assert (=> b!2005639 m!2435695))

(assert (=> b!2005639 m!2435869))

(assert (=> b!2005638 m!2435695))

(declare-fun m!2436709 () Bool)

(assert (=> b!2005638 m!2436709))

(assert (=> b!2005638 m!2435695))

(assert (=> b!2005638 m!2436709))

(assert (=> b!2005638 m!2436709))

(assert (=> b!2005638 m!2436709))

(declare-fun m!2436711 () Bool)

(assert (=> b!2005638 m!2436711))

(assert (=> b!2005637 m!2435695))

(declare-fun m!2436713 () Bool)

(assert (=> b!2005637 m!2436713))

(assert (=> b!2005637 m!2435695))

(assert (=> b!2005637 m!2436713))

(assert (=> d!611961 d!612195))

(declare-fun d!612197 () Bool)

(assert (=> d!612197 (isPrefix!1958 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun lt!753168 () Unit!36581)

(declare-fun choose!12217 (List!22119 List!22119) Unit!36581)

(assert (=> d!612197 (= lt!753168 (choose!12217 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (=> d!612197 (= (lemmaIsPrefixRefl!1276 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!753168)))

(declare-fun bs!419435 () Bool)

(assert (= bs!419435 d!612197))

(assert (=> bs!419435 m!2435695))

(assert (=> bs!419435 m!2435695))

(assert (=> bs!419435 m!2435853))

(assert (=> bs!419435 m!2435695))

(assert (=> bs!419435 m!2435695))

(declare-fun m!2436715 () Bool)

(assert (=> bs!419435 m!2436715))

(assert (=> d!611961 d!612197))

(declare-fun d!612199 () Bool)

(assert (=> d!612199 true))

(declare-fun lt!753171 () Bool)

(declare-fun lambda!75953 () Int)

(declare-fun forall!4681 (List!22121 Int) Bool)

(assert (=> d!612199 (= lt!753171 (forall!4681 rules!3198 lambda!75953))))

(declare-fun e!1267297 () Bool)

(assert (=> d!612199 (= lt!753171 e!1267297)))

(declare-fun res!879595 () Bool)

(assert (=> d!612199 (=> res!879595 e!1267297)))

(assert (=> d!612199 (= res!879595 (not (is-Cons!22039 rules!3198)))))

(assert (=> d!612199 (= (rulesValidInductive!1357 thiss!23328 rules!3198) lt!753171)))

(declare-fun b!2005644 () Bool)

(declare-fun e!1267296 () Bool)

(assert (=> b!2005644 (= e!1267297 e!1267296)))

(declare-fun res!879594 () Bool)

(assert (=> b!2005644 (=> (not res!879594) (not e!1267296))))

(assert (=> b!2005644 (= res!879594 (ruleValid!1208 thiss!23328 (h!27440 rules!3198)))))

(declare-fun b!2005645 () Bool)

(assert (=> b!2005645 (= e!1267296 (rulesValidInductive!1357 thiss!23328 (t!186782 rules!3198)))))

(assert (= (and d!612199 (not res!879595)) b!2005644))

(assert (= (and b!2005644 res!879594) b!2005645))

(declare-fun m!2436717 () Bool)

(assert (=> d!612199 m!2436717))

(assert (=> b!2005644 m!2436589))

(declare-fun m!2436719 () Bool)

(assert (=> b!2005645 m!2436719))

(assert (=> d!611961 d!612199))

(declare-fun d!612201 () Bool)

(declare-fun lt!753174 () Int)

(assert (=> d!612201 (>= lt!753174 0)))

(declare-fun e!1267300 () Int)

(assert (=> d!612201 (= lt!753174 e!1267300)))

(declare-fun c!323922 () Bool)

(assert (=> d!612201 (= c!323922 (is-Nil!22037 lt!753114))))

(assert (=> d!612201 (= (size!17229 lt!753114) lt!753174)))

(declare-fun b!2005652 () Bool)

(assert (=> b!2005652 (= e!1267300 0)))

(declare-fun b!2005653 () Bool)

(assert (=> b!2005653 (= e!1267300 (+ 1 (size!17229 (t!186780 lt!753114))))))

(assert (= (and d!612201 c!323922) b!2005652))

(assert (= (and d!612201 (not c!323922)) b!2005653))

(declare-fun m!2436721 () Bool)

(assert (=> b!2005653 m!2436721))

(assert (=> b!2005302 d!612201))

(declare-fun d!612203 () Bool)

(declare-fun lt!753175 () Int)

(assert (=> d!612203 (>= lt!753175 0)))

(declare-fun e!1267301 () Int)

(assert (=> d!612203 (= lt!753175 e!1267301)))

(declare-fun c!323923 () Bool)

(assert (=> d!612203 (= c!323923 (is-Nil!22037 lt!752900))))

(assert (=> d!612203 (= (size!17229 lt!752900) lt!753175)))

(declare-fun b!2005654 () Bool)

(assert (=> b!2005654 (= e!1267301 0)))

(declare-fun b!2005655 () Bool)

(assert (=> b!2005655 (= e!1267301 (+ 1 (size!17229 (t!186780 lt!752900))))))

(assert (= (and d!612203 c!323923) b!2005654))

(assert (= (and d!612203 (not c!323923)) b!2005655))

(declare-fun m!2436723 () Bool)

(assert (=> b!2005655 m!2436723))

(assert (=> b!2005302 d!612203))

(declare-fun d!612205 () Bool)

(declare-fun lt!753176 () Int)

(assert (=> d!612205 (>= lt!753176 0)))

(declare-fun e!1267302 () Int)

(assert (=> d!612205 (= lt!753176 e!1267302)))

(declare-fun c!323924 () Bool)

(assert (=> d!612205 (= c!323924 (is-Nil!22037 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))

(assert (=> d!612205 (= (size!17229 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) lt!753176)))

(declare-fun b!2005656 () Bool)

(assert (=> b!2005656 (= e!1267302 0)))

(declare-fun b!2005657 () Bool)

(assert (=> b!2005657 (= e!1267302 (+ 1 (size!17229 (t!186780 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))))

(assert (= (and d!612205 c!323924) b!2005656))

(assert (= (and d!612205 (not c!323924)) b!2005657))

(declare-fun m!2436725 () Bool)

(assert (=> b!2005657 m!2436725))

(assert (=> b!2005302 d!612205))

(declare-fun e!1267303 () Bool)

(declare-fun lt!753177 () List!22119)

(declare-fun b!2005661 () Bool)

(assert (=> b!2005661 (= e!1267303 (or (not (= lt!753092 Nil!22037)) (= lt!753177 call!122552)))))

(declare-fun b!2005658 () Bool)

(declare-fun e!1267304 () List!22119)

(assert (=> b!2005658 (= e!1267304 lt!753092)))

(declare-fun d!612207 () Bool)

(assert (=> d!612207 e!1267303))

(declare-fun res!879597 () Bool)

(assert (=> d!612207 (=> (not res!879597) (not e!1267303))))

(assert (=> d!612207 (= res!879597 (= (content!3225 lt!753177) (set.union (content!3225 call!122552) (content!3225 lt!753092))))))

(assert (=> d!612207 (= lt!753177 e!1267304)))

(declare-fun c!323925 () Bool)

(assert (=> d!612207 (= c!323925 (is-Nil!22037 call!122552))))

(assert (=> d!612207 (= (++!5946 call!122552 lt!753092) lt!753177)))

(declare-fun b!2005660 () Bool)

(declare-fun res!879596 () Bool)

(assert (=> b!2005660 (=> (not res!879596) (not e!1267303))))

(assert (=> b!2005660 (= res!879596 (= (size!17229 lt!753177) (+ (size!17229 call!122552) (size!17229 lt!753092))))))

(declare-fun b!2005659 () Bool)

(assert (=> b!2005659 (= e!1267304 (Cons!22037 (h!27438 call!122552) (++!5946 (t!186780 call!122552) lt!753092)))))

(assert (= (and d!612207 c!323925) b!2005658))

(assert (= (and d!612207 (not c!323925)) b!2005659))

(assert (= (and d!612207 res!879597) b!2005660))

(assert (= (and b!2005660 res!879596) b!2005661))

(declare-fun m!2436727 () Bool)

(assert (=> d!612207 m!2436727))

(declare-fun m!2436729 () Bool)

(assert (=> d!612207 m!2436729))

(declare-fun m!2436731 () Bool)

(assert (=> d!612207 m!2436731))

(declare-fun m!2436733 () Bool)

(assert (=> b!2005660 m!2436733))

(declare-fun m!2436735 () Bool)

(assert (=> b!2005660 m!2436735))

(declare-fun m!2436737 () Bool)

(assert (=> b!2005660 m!2436737))

(declare-fun m!2436739 () Bool)

(assert (=> b!2005659 m!2436739))

(assert (=> b!2005251 d!612207))

(declare-fun d!612209 () Bool)

(declare-fun e!1267307 () Bool)

(assert (=> d!612209 e!1267307))

(declare-fun res!879600 () Bool)

(assert (=> d!612209 (=> (not res!879600) (not e!1267307))))

(declare-fun lt!753180 () BalanceConc!14544)

(assert (=> d!612209 (= res!879600 (= (list!8966 lt!753180) (Cons!22038 separatorToken!354 Nil!22038)))))

(declare-fun singleton!865 (Token!7462) BalanceConc!14544)

(assert (=> d!612209 (= lt!753180 (singleton!865 separatorToken!354))))

(assert (=> d!612209 (= (singletonSeq!1937 separatorToken!354) lt!753180)))

(declare-fun b!2005664 () Bool)

(declare-fun isBalanced!2291 (Conc!7364) Bool)

(assert (=> b!2005664 (= e!1267307 (isBalanced!2291 (c!323891 lt!753180)))))

(assert (= (and d!612209 res!879600) b!2005664))

(declare-fun m!2436741 () Bool)

(assert (=> d!612209 m!2436741))

(declare-fun m!2436743 () Bool)

(assert (=> d!612209 m!2436743))

(declare-fun m!2436745 () Bool)

(assert (=> b!2005664 m!2436745))

(assert (=> d!612019 d!612209))

(declare-fun d!612211 () Bool)

(declare-fun lt!753183 () BalanceConc!14540)

(declare-fun printList!1101 (LexerInterface!3568 List!22120) List!22119)

(assert (=> d!612211 (= (list!8964 lt!753183) (printList!1101 thiss!23328 (list!8966 (singletonSeq!1937 separatorToken!354))))))

(assert (=> d!612211 (= lt!753183 (printTailRec!1042 thiss!23328 (singletonSeq!1937 separatorToken!354) 0 (BalanceConc!14541 Empty!7362)))))

(assert (=> d!612211 (= (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354)) lt!753183)))

(declare-fun bs!419436 () Bool)

(assert (= bs!419436 d!612211))

(declare-fun m!2436747 () Bool)

(assert (=> bs!419436 m!2436747))

(assert (=> bs!419436 m!2436171))

(assert (=> bs!419436 m!2436175))

(assert (=> bs!419436 m!2436175))

(declare-fun m!2436749 () Bool)

(assert (=> bs!419436 m!2436749))

(assert (=> bs!419436 m!2436171))

(declare-fun m!2436751 () Bool)

(assert (=> bs!419436 m!2436751))

(assert (=> d!612019 d!612211))

(declare-fun d!612213 () Bool)

(declare-fun list!8970 (Conc!7364) List!22120)

(assert (=> d!612213 (= (list!8966 (_1!11823 (lex!1590 thiss!23328 rules!3198 (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354))))) (list!8970 (c!323891 (_1!11823 (lex!1590 thiss!23328 rules!3198 (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354)))))))))

(declare-fun bs!419437 () Bool)

(assert (= bs!419437 d!612213))

(declare-fun m!2436753 () Bool)

(assert (=> bs!419437 m!2436753))

(assert (=> d!612019 d!612213))

(declare-fun d!612215 () Bool)

(assert (=> d!612215 (= (list!8966 (singletonSeq!1937 separatorToken!354)) (list!8970 (c!323891 (singletonSeq!1937 separatorToken!354))))))

(declare-fun bs!419438 () Bool)

(assert (= bs!419438 d!612215))

(declare-fun m!2436755 () Bool)

(assert (=> bs!419438 m!2436755))

(assert (=> d!612019 d!612215))

(declare-fun b!2005707 () Bool)

(declare-fun e!1267333 () Bool)

(declare-fun e!1267335 () Bool)

(assert (=> b!2005707 (= e!1267333 e!1267335)))

(declare-fun lt!753190 () tuple2!20708)

(declare-fun res!879622 () Bool)

(assert (=> b!2005707 (= res!879622 (< (size!17233 (_2!11823 lt!753190)) (size!17233 (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354)))))))

(assert (=> b!2005707 (=> (not res!879622) (not e!1267335))))

(declare-fun b!2005708 () Bool)

(declare-fun e!1267334 () Bool)

(declare-datatypes ((tuple2!20714 0))(
  ( (tuple2!20715 (_1!11826 List!22120) (_2!11826 List!22119)) )
))
(declare-fun lexList!964 (LexerInterface!3568 List!22121 List!22119) tuple2!20714)

(assert (=> b!2005708 (= e!1267334 (= (list!8964 (_2!11823 lt!753190)) (_2!11826 (lexList!964 thiss!23328 rules!3198 (list!8964 (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354)))))))))

(declare-fun b!2005709 () Bool)

(assert (=> b!2005709 (= e!1267333 (= (_2!11823 lt!753190) (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354))))))

(declare-fun d!612217 () Bool)

(assert (=> d!612217 e!1267334))

(declare-fun res!879623 () Bool)

(assert (=> d!612217 (=> (not res!879623) (not e!1267334))))

(assert (=> d!612217 (= res!879623 e!1267333)))

(declare-fun c!323937 () Bool)

(assert (=> d!612217 (= c!323937 (> (size!17230 (_1!11823 lt!753190)) 0))))

(declare-fun lexTailRecV2!687 (LexerInterface!3568 List!22121 BalanceConc!14540 BalanceConc!14540 BalanceConc!14540 BalanceConc!14544) tuple2!20708)

(assert (=> d!612217 (= lt!753190 (lexTailRecV2!687 thiss!23328 rules!3198 (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354)) (BalanceConc!14541 Empty!7362) (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354)) (BalanceConc!14545 Empty!7364)))))

(assert (=> d!612217 (= (lex!1590 thiss!23328 rules!3198 (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354))) lt!753190)))

(declare-fun b!2005710 () Bool)

(declare-fun isEmpty!13665 (BalanceConc!14544) Bool)

(assert (=> b!2005710 (= e!1267335 (not (isEmpty!13665 (_1!11823 lt!753190))))))

(declare-fun b!2005711 () Bool)

(declare-fun res!879621 () Bool)

(assert (=> b!2005711 (=> (not res!879621) (not e!1267334))))

(assert (=> b!2005711 (= res!879621 (= (list!8966 (_1!11823 lt!753190)) (_1!11826 (lexList!964 thiss!23328 rules!3198 (list!8964 (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354)))))))))

(assert (= (and d!612217 c!323937) b!2005707))

(assert (= (and d!612217 (not c!323937)) b!2005709))

(assert (= (and b!2005707 res!879622) b!2005710))

(assert (= (and d!612217 res!879623) b!2005711))

(assert (= (and b!2005711 res!879621) b!2005708))

(declare-fun m!2436773 () Bool)

(assert (=> b!2005708 m!2436773))

(assert (=> b!2005708 m!2436173))

(declare-fun m!2436775 () Bool)

(assert (=> b!2005708 m!2436775))

(assert (=> b!2005708 m!2436775))

(declare-fun m!2436777 () Bool)

(assert (=> b!2005708 m!2436777))

(declare-fun m!2436779 () Bool)

(assert (=> b!2005707 m!2436779))

(assert (=> b!2005707 m!2436173))

(declare-fun m!2436781 () Bool)

(assert (=> b!2005707 m!2436781))

(declare-fun m!2436783 () Bool)

(assert (=> d!612217 m!2436783))

(assert (=> d!612217 m!2436173))

(assert (=> d!612217 m!2436173))

(declare-fun m!2436789 () Bool)

(assert (=> d!612217 m!2436789))

(declare-fun m!2436793 () Bool)

(assert (=> b!2005711 m!2436793))

(assert (=> b!2005711 m!2436173))

(assert (=> b!2005711 m!2436775))

(assert (=> b!2005711 m!2436775))

(assert (=> b!2005711 m!2436777))

(declare-fun m!2436799 () Bool)

(assert (=> b!2005710 m!2436799))

(assert (=> d!612019 d!612217))

(assert (=> d!612019 d!612055))

(declare-fun d!612229 () Bool)

(declare-fun lt!753193 () Int)

(declare-fun size!17234 (List!22120) Int)

(assert (=> d!612229 (= lt!753193 (size!17234 (list!8966 (_1!11823 lt!753070))))))

(declare-fun size!17235 (Conc!7364) Int)

(assert (=> d!612229 (= lt!753193 (size!17235 (c!323891 (_1!11823 lt!753070))))))

(assert (=> d!612229 (= (size!17230 (_1!11823 lt!753070)) lt!753193)))

(declare-fun bs!419441 () Bool)

(assert (= bs!419441 d!612229))

(assert (=> bs!419441 m!2436559))

(assert (=> bs!419441 m!2436559))

(declare-fun m!2436809 () Bool)

(assert (=> bs!419441 m!2436809))

(declare-fun m!2436811 () Bool)

(assert (=> bs!419441 m!2436811))

(assert (=> d!612019 d!612229))

(declare-fun b!2005712 () Bool)

(declare-fun res!879630 () Bool)

(declare-fun e!1267337 () Bool)

(assert (=> b!2005712 (=> (not res!879630) (not e!1267337))))

(declare-fun lt!753200 () Option!4591)

(assert (=> b!2005712 (= res!879630 (< (size!17229 (_2!11821 (get!6960 lt!753200))) (size!17229 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))))

(declare-fun b!2005713 () Bool)

(assert (=> b!2005713 (= e!1267337 (contains!4019 (t!186782 rules!3198) (rule!6178 (_1!11821 (get!6960 lt!753200)))))))

(declare-fun b!2005714 () Bool)

(declare-fun e!1267338 () Option!4591)

(declare-fun lt!753199 () Option!4591)

(declare-fun lt!753198 () Option!4591)

(assert (=> b!2005714 (= e!1267338 (ite (and (is-None!4590 lt!753199) (is-None!4590 lt!753198)) None!4590 (ite (is-None!4590 lt!753198) lt!753199 (ite (is-None!4590 lt!753199) lt!753198 (ite (>= (size!17227 (_1!11821 (v!26819 lt!753199))) (size!17227 (_1!11821 (v!26819 lt!753198)))) lt!753199 lt!753198)))))))

(declare-fun call!122573 () Option!4591)

(assert (=> b!2005714 (= lt!753199 call!122573)))

(assert (=> b!2005714 (= lt!753198 (maxPrefix!2004 thiss!23328 (t!186782 (t!186782 rules!3198)) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(declare-fun b!2005715 () Bool)

(declare-fun res!879627 () Bool)

(assert (=> b!2005715 (=> (not res!879627) (not e!1267337))))

(assert (=> b!2005715 (= res!879627 (= (value!124310 (_1!11821 (get!6960 lt!753200))) (apply!5768 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753200)))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753200)))))))))

(declare-fun b!2005717 () Bool)

(declare-fun e!1267336 () Bool)

(assert (=> b!2005717 (= e!1267336 e!1267337)))

(declare-fun res!879624 () Bool)

(assert (=> b!2005717 (=> (not res!879624) (not e!1267337))))

(assert (=> b!2005717 (= res!879624 (isDefined!3880 lt!753200))))

(declare-fun b!2005718 () Bool)

(declare-fun res!879628 () Bool)

(assert (=> b!2005718 (=> (not res!879628) (not e!1267337))))

(assert (=> b!2005718 (= res!879628 (= (++!5946 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753200)))) (_2!11821 (get!6960 lt!753200))) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(declare-fun bm!122568 () Bool)

(assert (=> bm!122568 (= call!122573 (maxPrefixOneRule!1240 thiss!23328 (h!27440 (t!186782 rules!3198)) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(declare-fun b!2005719 () Bool)

(assert (=> b!2005719 (= e!1267338 call!122573)))

(declare-fun b!2005720 () Bool)

(declare-fun res!879629 () Bool)

(assert (=> b!2005720 (=> (not res!879629) (not e!1267337))))

(assert (=> b!2005720 (= res!879629 (= (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753200)))) (originalCharacters!4762 (_1!11821 (get!6960 lt!753200)))))))

(declare-fun d!612237 () Bool)

(assert (=> d!612237 e!1267336))

(declare-fun res!879626 () Bool)

(assert (=> d!612237 (=> res!879626 e!1267336)))

(assert (=> d!612237 (= res!879626 (isEmpty!13658 lt!753200))))

(assert (=> d!612237 (= lt!753200 e!1267338)))

(declare-fun c!323938 () Bool)

(assert (=> d!612237 (= c!323938 (and (is-Cons!22039 (t!186782 rules!3198)) (is-Nil!22039 (t!186782 (t!186782 rules!3198)))))))

(declare-fun lt!753196 () Unit!36581)

(declare-fun lt!753197 () Unit!36581)

(assert (=> d!612237 (= lt!753196 lt!753197)))

(assert (=> d!612237 (isPrefix!1958 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))

(assert (=> d!612237 (= lt!753197 (lemmaIsPrefixRefl!1276 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(assert (=> d!612237 (rulesValidInductive!1357 thiss!23328 (t!186782 rules!3198))))

(assert (=> d!612237 (= (maxPrefix!2004 thiss!23328 (t!186782 rules!3198) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))) lt!753200)))

(declare-fun b!2005716 () Bool)

(declare-fun res!879625 () Bool)

(assert (=> b!2005716 (=> (not res!879625) (not e!1267337))))

(assert (=> b!2005716 (= res!879625 (matchR!2646 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753200)))) (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753200))))))))

(assert (= (and d!612237 c!323938) b!2005719))

(assert (= (and d!612237 (not c!323938)) b!2005714))

(assert (= (or b!2005719 b!2005714) bm!122568))

(assert (= (and d!612237 (not res!879626)) b!2005717))

(assert (= (and b!2005717 res!879624) b!2005720))

(assert (= (and b!2005720 res!879629) b!2005712))

(assert (= (and b!2005712 res!879630) b!2005718))

(assert (= (and b!2005718 res!879628) b!2005715))

(assert (= (and b!2005715 res!879627) b!2005716))

(assert (= (and b!2005716 res!879625) b!2005713))

(declare-fun m!2436819 () Bool)

(assert (=> b!2005717 m!2436819))

(declare-fun m!2436821 () Bool)

(assert (=> b!2005715 m!2436821))

(declare-fun m!2436823 () Bool)

(assert (=> b!2005715 m!2436823))

(assert (=> b!2005715 m!2436823))

(declare-fun m!2436825 () Bool)

(assert (=> b!2005715 m!2436825))

(assert (=> b!2005713 m!2436821))

(declare-fun m!2436827 () Bool)

(assert (=> b!2005713 m!2436827))

(declare-fun m!2436829 () Bool)

(assert (=> d!612237 m!2436829))

(assert (=> d!612237 m!2435653))

(assert (=> d!612237 m!2435653))

(assert (=> d!612237 m!2436245))

(assert (=> d!612237 m!2435653))

(assert (=> d!612237 m!2435653))

(assert (=> d!612237 m!2436247))

(assert (=> d!612237 m!2436719))

(assert (=> b!2005716 m!2436821))

(declare-fun m!2436831 () Bool)

(assert (=> b!2005716 m!2436831))

(assert (=> b!2005716 m!2436831))

(declare-fun m!2436833 () Bool)

(assert (=> b!2005716 m!2436833))

(assert (=> b!2005716 m!2436833))

(declare-fun m!2436835 () Bool)

(assert (=> b!2005716 m!2436835))

(assert (=> b!2005718 m!2436821))

(assert (=> b!2005718 m!2436831))

(assert (=> b!2005718 m!2436831))

(assert (=> b!2005718 m!2436833))

(assert (=> b!2005718 m!2436833))

(declare-fun m!2436837 () Bool)

(assert (=> b!2005718 m!2436837))

(assert (=> b!2005720 m!2436821))

(assert (=> b!2005720 m!2436831))

(assert (=> b!2005720 m!2436831))

(assert (=> b!2005720 m!2436833))

(assert (=> b!2005712 m!2436821))

(declare-fun m!2436839 () Bool)

(assert (=> b!2005712 m!2436839))

(assert (=> b!2005712 m!2435653))

(assert (=> b!2005712 m!2436259))

(assert (=> b!2005714 m!2435653))

(declare-fun m!2436841 () Bool)

(assert (=> b!2005714 m!2436841))

(assert (=> bm!122568 m!2435653))

(declare-fun m!2436843 () Bool)

(assert (=> bm!122568 m!2436843))

(assert (=> b!2005224 d!612237))

(declare-fun bm!122569 () Bool)

(declare-fun call!122574 () Bool)

(assert (=> bm!122569 (= call!122574 (isEmpty!13657 (tail!3015 lt!752911)))))

(declare-fun b!2005722 () Bool)

(declare-fun e!1267342 () Bool)

(declare-fun lt!753202 () Bool)

(assert (=> b!2005722 (= e!1267342 (= lt!753202 call!122574))))

(declare-fun b!2005723 () Bool)

(declare-fun e!1267344 () Bool)

(assert (=> b!2005723 (= e!1267344 (nullable!1626 (derivativeStep!1385 (regex!3955 lt!752903) (head!4531 lt!752911))))))

(declare-fun b!2005724 () Bool)

(declare-fun res!879635 () Bool)

(declare-fun e!1267341 () Bool)

(assert (=> b!2005724 (=> (not res!879635) (not e!1267341))))

(assert (=> b!2005724 (= res!879635 (not call!122574))))

(declare-fun b!2005725 () Bool)

(declare-fun e!1267339 () Bool)

(declare-fun e!1267343 () Bool)

(assert (=> b!2005725 (= e!1267339 e!1267343)))

(declare-fun res!879637 () Bool)

(assert (=> b!2005725 (=> (not res!879637) (not e!1267343))))

(assert (=> b!2005725 (= res!879637 (not lt!753202))))

(declare-fun b!2005726 () Bool)

(declare-fun res!879634 () Bool)

(assert (=> b!2005726 (=> (not res!879634) (not e!1267341))))

(assert (=> b!2005726 (= res!879634 (isEmpty!13657 (tail!3015 (tail!3015 lt!752911))))))

(declare-fun b!2005727 () Bool)

(declare-fun e!1267345 () Bool)

(assert (=> b!2005727 (= e!1267345 (not lt!753202))))

(declare-fun b!2005728 () Bool)

(declare-fun e!1267340 () Bool)

(assert (=> b!2005728 (= e!1267343 e!1267340)))

(declare-fun res!879631 () Bool)

(assert (=> b!2005728 (=> res!879631 e!1267340)))

(assert (=> b!2005728 (= res!879631 call!122574)))

(declare-fun b!2005729 () Bool)

(declare-fun res!879636 () Bool)

(assert (=> b!2005729 (=> res!879636 e!1267339)))

(assert (=> b!2005729 (= res!879636 e!1267341)))

(declare-fun res!879633 () Bool)

(assert (=> b!2005729 (=> (not res!879633) (not e!1267341))))

(assert (=> b!2005729 (= res!879633 lt!753202)))

(declare-fun b!2005721 () Bool)

(assert (=> b!2005721 (= e!1267340 (not (= (head!4531 (tail!3015 lt!752911)) (c!323780 (derivativeStep!1385 (regex!3955 lt!752903) (head!4531 lt!752911))))))))

(declare-fun d!612241 () Bool)

(assert (=> d!612241 e!1267342))

(declare-fun c!323941 () Bool)

(assert (=> d!612241 (= c!323941 (is-EmptyExpr!5380 (derivativeStep!1385 (regex!3955 lt!752903) (head!4531 lt!752911))))))

(assert (=> d!612241 (= lt!753202 e!1267344)))

(declare-fun c!323939 () Bool)

(assert (=> d!612241 (= c!323939 (isEmpty!13657 (tail!3015 lt!752911)))))

(assert (=> d!612241 (validRegex!2152 (derivativeStep!1385 (regex!3955 lt!752903) (head!4531 lt!752911)))))

(assert (=> d!612241 (= (matchR!2646 (derivativeStep!1385 (regex!3955 lt!752903) (head!4531 lt!752911)) (tail!3015 lt!752911)) lt!753202)))

(declare-fun b!2005730 () Bool)

(declare-fun res!879632 () Bool)

(assert (=> b!2005730 (=> res!879632 e!1267339)))

(assert (=> b!2005730 (= res!879632 (not (is-ElementMatch!5380 (derivativeStep!1385 (regex!3955 lt!752903) (head!4531 lt!752911)))))))

(assert (=> b!2005730 (= e!1267345 e!1267339)))

(declare-fun b!2005731 () Bool)

(assert (=> b!2005731 (= e!1267341 (= (head!4531 (tail!3015 lt!752911)) (c!323780 (derivativeStep!1385 (regex!3955 lt!752903) (head!4531 lt!752911)))))))

(declare-fun b!2005732 () Bool)

(declare-fun res!879638 () Bool)

(assert (=> b!2005732 (=> res!879638 e!1267340)))

(assert (=> b!2005732 (= res!879638 (not (isEmpty!13657 (tail!3015 (tail!3015 lt!752911)))))))

(declare-fun b!2005733 () Bool)

(assert (=> b!2005733 (= e!1267342 e!1267345)))

(declare-fun c!323940 () Bool)

(assert (=> b!2005733 (= c!323940 (is-EmptyLang!5380 (derivativeStep!1385 (regex!3955 lt!752903) (head!4531 lt!752911))))))

(declare-fun b!2005734 () Bool)

(assert (=> b!2005734 (= e!1267344 (matchR!2646 (derivativeStep!1385 (derivativeStep!1385 (regex!3955 lt!752903) (head!4531 lt!752911)) (head!4531 (tail!3015 lt!752911))) (tail!3015 (tail!3015 lt!752911))))))

(assert (= (and d!612241 c!323939) b!2005723))

(assert (= (and d!612241 (not c!323939)) b!2005734))

(assert (= (and d!612241 c!323941) b!2005722))

(assert (= (and d!612241 (not c!323941)) b!2005733))

(assert (= (and b!2005733 c!323940) b!2005727))

(assert (= (and b!2005733 (not c!323940)) b!2005730))

(assert (= (and b!2005730 (not res!879632)) b!2005729))

(assert (= (and b!2005729 res!879633) b!2005724))

(assert (= (and b!2005724 res!879635) b!2005726))

(assert (= (and b!2005726 res!879634) b!2005731))

(assert (= (and b!2005729 (not res!879636)) b!2005725))

(assert (= (and b!2005725 res!879637) b!2005728))

(assert (= (and b!2005728 (not res!879631)) b!2005732))

(assert (= (and b!2005732 (not res!879638)) b!2005721))

(assert (= (or b!2005722 b!2005724 b!2005728) bm!122569))

(assert (=> b!2005731 m!2435977))

(declare-fun m!2436847 () Bool)

(assert (=> b!2005731 m!2436847))

(assert (=> b!2005732 m!2435977))

(declare-fun m!2436849 () Bool)

(assert (=> b!2005732 m!2436849))

(assert (=> b!2005732 m!2436849))

(declare-fun m!2436851 () Bool)

(assert (=> b!2005732 m!2436851))

(assert (=> b!2005726 m!2435977))

(assert (=> b!2005726 m!2436849))

(assert (=> b!2005726 m!2436849))

(assert (=> b!2005726 m!2436851))

(assert (=> b!2005723 m!2435987))

(declare-fun m!2436853 () Bool)

(assert (=> b!2005723 m!2436853))

(assert (=> d!612241 m!2435977))

(assert (=> d!612241 m!2435979))

(assert (=> d!612241 m!2435987))

(declare-fun m!2436857 () Bool)

(assert (=> d!612241 m!2436857))

(assert (=> b!2005734 m!2435977))

(assert (=> b!2005734 m!2436847))

(assert (=> b!2005734 m!2435987))

(assert (=> b!2005734 m!2436847))

(declare-fun m!2436863 () Bool)

(assert (=> b!2005734 m!2436863))

(assert (=> b!2005734 m!2435977))

(assert (=> b!2005734 m!2436849))

(assert (=> b!2005734 m!2436863))

(assert (=> b!2005734 m!2436849))

(declare-fun m!2436865 () Bool)

(assert (=> b!2005734 m!2436865))

(assert (=> bm!122569 m!2435977))

(assert (=> bm!122569 m!2435979))

(assert (=> b!2005721 m!2435977))

(assert (=> b!2005721 m!2436847))

(assert (=> b!2005037 d!612241))

(declare-fun bm!122578 () Bool)

(declare-fun call!122584 () Regex!5380)

(declare-fun call!122583 () Regex!5380)

(assert (=> bm!122578 (= call!122584 call!122583)))

(declare-fun c!323957 () Bool)

(declare-fun call!122585 () Regex!5380)

(declare-fun bm!122579 () Bool)

(declare-fun c!323955 () Bool)

(declare-fun c!323956 () Bool)

(assert (=> bm!122579 (= call!122585 (derivativeStep!1385 (ite c!323956 (regOne!11273 (regex!3955 lt!752903)) (ite c!323957 (reg!5709 (regex!3955 lt!752903)) (ite c!323955 (regTwo!11272 (regex!3955 lt!752903)) (regOne!11272 (regex!3955 lt!752903))))) (head!4531 lt!752911)))))

(declare-fun b!2005770 () Bool)

(declare-fun e!1267367 () Regex!5380)

(declare-fun e!1267368 () Regex!5380)

(assert (=> b!2005770 (= e!1267367 e!1267368)))

(assert (=> b!2005770 (= c!323957 (is-Star!5380 (regex!3955 lt!752903)))))

(declare-fun bm!122580 () Bool)

(declare-fun call!122586 () Regex!5380)

(assert (=> bm!122580 (= call!122586 (derivativeStep!1385 (ite c!323956 (regTwo!11273 (regex!3955 lt!752903)) (regOne!11272 (regex!3955 lt!752903))) (head!4531 lt!752911)))))

(declare-fun e!1267365 () Regex!5380)

(declare-fun b!2005771 () Bool)

(assert (=> b!2005771 (= e!1267365 (Union!5380 (Concat!9472 call!122586 (regTwo!11272 (regex!3955 lt!752903))) call!122584))))

(declare-fun b!2005772 () Bool)

(assert (=> b!2005772 (= e!1267367 (Union!5380 call!122585 call!122586))))

(declare-fun d!612247 () Bool)

(declare-fun lt!753208 () Regex!5380)

(assert (=> d!612247 (validRegex!2152 lt!753208)))

(declare-fun e!1267366 () Regex!5380)

(assert (=> d!612247 (= lt!753208 e!1267366)))

(declare-fun c!323958 () Bool)

(assert (=> d!612247 (= c!323958 (or (is-EmptyExpr!5380 (regex!3955 lt!752903)) (is-EmptyLang!5380 (regex!3955 lt!752903))))))

(assert (=> d!612247 (validRegex!2152 (regex!3955 lt!752903))))

(assert (=> d!612247 (= (derivativeStep!1385 (regex!3955 lt!752903) (head!4531 lt!752911)) lt!753208)))

(declare-fun b!2005773 () Bool)

(assert (=> b!2005773 (= e!1267365 (Union!5380 (Concat!9472 call!122584 (regTwo!11272 (regex!3955 lt!752903))) EmptyLang!5380))))

(declare-fun b!2005774 () Bool)

(assert (=> b!2005774 (= e!1267366 EmptyLang!5380)))

(declare-fun b!2005775 () Bool)

(declare-fun e!1267369 () Regex!5380)

(assert (=> b!2005775 (= e!1267369 (ite (= (head!4531 lt!752911) (c!323780 (regex!3955 lt!752903))) EmptyExpr!5380 EmptyLang!5380))))

(declare-fun b!2005776 () Bool)

(assert (=> b!2005776 (= e!1267368 (Concat!9472 call!122583 (regex!3955 lt!752903)))))

(declare-fun b!2005777 () Bool)

(assert (=> b!2005777 (= c!323956 (is-Union!5380 (regex!3955 lt!752903)))))

(assert (=> b!2005777 (= e!1267369 e!1267367)))

(declare-fun bm!122581 () Bool)

(assert (=> bm!122581 (= call!122583 call!122585)))

(declare-fun b!2005778 () Bool)

(assert (=> b!2005778 (= c!323955 (nullable!1626 (regOne!11272 (regex!3955 lt!752903))))))

(assert (=> b!2005778 (= e!1267368 e!1267365)))

(declare-fun b!2005779 () Bool)

(assert (=> b!2005779 (= e!1267366 e!1267369)))

(declare-fun c!323954 () Bool)

(assert (=> b!2005779 (= c!323954 (is-ElementMatch!5380 (regex!3955 lt!752903)))))

(assert (= (and d!612247 c!323958) b!2005774))

(assert (= (and d!612247 (not c!323958)) b!2005779))

(assert (= (and b!2005779 c!323954) b!2005775))

(assert (= (and b!2005779 (not c!323954)) b!2005777))

(assert (= (and b!2005777 c!323956) b!2005772))

(assert (= (and b!2005777 (not c!323956)) b!2005770))

(assert (= (and b!2005770 c!323957) b!2005776))

(assert (= (and b!2005770 (not c!323957)) b!2005778))

(assert (= (and b!2005778 c!323955) b!2005771))

(assert (= (and b!2005778 (not c!323955)) b!2005773))

(assert (= (or b!2005771 b!2005773) bm!122578))

(assert (= (or b!2005776 bm!122578) bm!122581))

(assert (= (or b!2005772 bm!122581) bm!122579))

(assert (= (or b!2005772 b!2005771) bm!122580))

(assert (=> bm!122579 m!2435975))

(declare-fun m!2436879 () Bool)

(assert (=> bm!122579 m!2436879))

(assert (=> bm!122580 m!2435975))

(declare-fun m!2436881 () Bool)

(assert (=> bm!122580 m!2436881))

(declare-fun m!2436883 () Bool)

(assert (=> d!612247 m!2436883))

(assert (=> d!612247 m!2435985))

(declare-fun m!2436885 () Bool)

(assert (=> b!2005778 m!2436885))

(assert (=> b!2005037 d!612247))

(declare-fun d!612261 () Bool)

(assert (=> d!612261 (= (head!4531 lt!752911) (h!27438 lt!752911))))

(assert (=> b!2005037 d!612261))

(assert (=> b!2005037 d!612175))

(declare-fun b!2005789 () Bool)

(declare-fun e!1267374 () List!22119)

(declare-fun e!1267375 () List!22119)

(assert (=> b!2005789 (= e!1267374 e!1267375)))

(declare-fun c!323964 () Bool)

(assert (=> b!2005789 (= c!323964 (is-Leaf!10803 (c!323781 (charsOf!2495 separatorToken!354))))))

(declare-fun d!612263 () Bool)

(declare-fun c!323963 () Bool)

(assert (=> d!612263 (= c!323963 (is-Empty!7362 (c!323781 (charsOf!2495 separatorToken!354))))))

(assert (=> d!612263 (= (list!8968 (c!323781 (charsOf!2495 separatorToken!354))) e!1267374)))

(declare-fun b!2005791 () Bool)

(assert (=> b!2005791 (= e!1267375 (++!5946 (list!8968 (left!17534 (c!323781 (charsOf!2495 separatorToken!354)))) (list!8968 (right!17864 (c!323781 (charsOf!2495 separatorToken!354))))))))

(declare-fun b!2005788 () Bool)

(assert (=> b!2005788 (= e!1267374 Nil!22037)))

(declare-fun b!2005790 () Bool)

(declare-fun list!8971 (IArray!14729) List!22119)

(assert (=> b!2005790 (= e!1267375 (list!8971 (xs!10260 (c!323781 (charsOf!2495 separatorToken!354)))))))

(assert (= (and d!612263 c!323963) b!2005788))

(assert (= (and d!612263 (not c!323963)) b!2005789))

(assert (= (and b!2005789 c!323964) b!2005790))

(assert (= (and b!2005789 (not c!323964)) b!2005791))

(declare-fun m!2436887 () Bool)

(assert (=> b!2005791 m!2436887))

(declare-fun m!2436889 () Bool)

(assert (=> b!2005791 m!2436889))

(assert (=> b!2005791 m!2436887))

(assert (=> b!2005791 m!2436889))

(declare-fun m!2436891 () Bool)

(assert (=> b!2005791 m!2436891))

(declare-fun m!2436893 () Bool)

(assert (=> b!2005790 m!2436893))

(assert (=> d!612071 d!612263))

(declare-fun d!612265 () Bool)

(assert (=> d!612265 (= (isEmpty!13657 (originalCharacters!4762 separatorToken!354)) (is-Nil!22037 (originalCharacters!4762 separatorToken!354)))))

(assert (=> d!612035 d!612265))

(declare-fun d!612267 () Bool)

(assert (=> d!612267 (= (isEmpty!13658 lt!753083) (not (is-Some!4590 lt!753083)))))

(assert (=> d!612065 d!612267))

(declare-fun b!2005792 () Bool)

(declare-fun e!1267376 () Bool)

(declare-fun e!1267377 () Bool)

(assert (=> b!2005792 (= e!1267376 e!1267377)))

(declare-fun res!879647 () Bool)

(assert (=> b!2005792 (=> (not res!879647) (not e!1267377))))

(assert (=> b!2005792 (= res!879647 (not (is-Nil!22037 lt!752900)))))

(declare-fun b!2005795 () Bool)

(declare-fun e!1267378 () Bool)

(assert (=> b!2005795 (= e!1267378 (>= (size!17229 lt!752900) (size!17229 lt!752900)))))

(declare-fun d!612269 () Bool)

(assert (=> d!612269 e!1267378))

(declare-fun res!879646 () Bool)

(assert (=> d!612269 (=> res!879646 e!1267378)))

(declare-fun lt!753209 () Bool)

(assert (=> d!612269 (= res!879646 (not lt!753209))))

(assert (=> d!612269 (= lt!753209 e!1267376)))

(declare-fun res!879649 () Bool)

(assert (=> d!612269 (=> res!879649 e!1267376)))

(assert (=> d!612269 (= res!879649 (is-Nil!22037 lt!752900))))

(assert (=> d!612269 (= (isPrefix!1958 lt!752900 lt!752900) lt!753209)))

(declare-fun b!2005794 () Bool)

(assert (=> b!2005794 (= e!1267377 (isPrefix!1958 (tail!3015 lt!752900) (tail!3015 lt!752900)))))

(declare-fun b!2005793 () Bool)

(declare-fun res!879648 () Bool)

(assert (=> b!2005793 (=> (not res!879648) (not e!1267377))))

(assert (=> b!2005793 (= res!879648 (= (head!4531 lt!752900) (head!4531 lt!752900)))))

(assert (= (and d!612269 (not res!879649)) b!2005792))

(assert (= (and b!2005792 res!879647) b!2005793))

(assert (= (and b!2005793 res!879648) b!2005794))

(assert (= (and d!612269 (not res!879646)) b!2005795))

(assert (=> b!2005795 m!2436293))

(assert (=> b!2005795 m!2436293))

(assert (=> b!2005794 m!2436019))

(assert (=> b!2005794 m!2436019))

(assert (=> b!2005794 m!2436019))

(assert (=> b!2005794 m!2436019))

(declare-fun m!2436895 () Bool)

(assert (=> b!2005794 m!2436895))

(assert (=> b!2005793 m!2436017))

(assert (=> b!2005793 m!2436017))

(assert (=> d!612065 d!612269))

(declare-fun d!612271 () Bool)

(assert (=> d!612271 (isPrefix!1958 lt!752900 lt!752900)))

(declare-fun lt!753210 () Unit!36581)

(assert (=> d!612271 (= lt!753210 (choose!12217 lt!752900 lt!752900))))

(assert (=> d!612271 (= (lemmaIsPrefixRefl!1276 lt!752900 lt!752900) lt!753210)))

(declare-fun bs!419447 () Bool)

(assert (= bs!419447 d!612271))

(assert (=> bs!419447 m!2436279))

(declare-fun m!2436897 () Bool)

(assert (=> bs!419447 m!2436897))

(assert (=> d!612065 d!612271))

(assert (=> d!612065 d!612199))

(assert (=> b!2005234 d!612143))

(declare-fun d!612273 () Bool)

(assert (=> d!612273 (= (apply!5768 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753083))))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083))))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753083))))))))

(declare-fun b_lambda!66791 () Bool)

(assert (=> (not b_lambda!66791) (not d!612273)))

(declare-fun tb!124965 () Bool)

(declare-fun t!186923 () Bool)

(assert (=> (and b!2004750 (= (toValue!5616 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))) t!186923) tb!124965))

(declare-fun result!149804 () Bool)

(assert (=> tb!124965 (= result!149804 (inv!21 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083))))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753083)))))))))

(declare-fun m!2436899 () Bool)

(assert (=> tb!124965 m!2436899))

(assert (=> d!612273 t!186923))

(declare-fun b_and!158017 () Bool)

(assert (= b_and!157959 (and (=> t!186923 result!149804) b_and!158017)))

(declare-fun tb!124967 () Bool)

(declare-fun t!186925 () Bool)

(assert (=> (and b!2004742 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))) t!186925) tb!124967))

(declare-fun result!149806 () Bool)

(assert (= result!149806 result!149804))

(assert (=> d!612273 t!186925))

(declare-fun b_and!158019 () Bool)

(assert (= b_and!157961 (and (=> t!186925 result!149806) b_and!158019)))

(declare-fun t!186927 () Bool)

(declare-fun tb!124969 () Bool)

(assert (=> (and b!2005328 (= (toValue!5616 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))) t!186927) tb!124969))

(declare-fun result!149808 () Bool)

(assert (= result!149808 result!149804))

(assert (=> d!612273 t!186927))

(declare-fun b_and!158021 () Bool)

(assert (= b_and!157979 (and (=> t!186927 result!149808) b_and!158021)))

(declare-fun t!186929 () Bool)

(declare-fun tb!124971 () Bool)

(assert (=> (and b!2004733 (= (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))) t!186929) tb!124971))

(declare-fun result!149810 () Bool)

(assert (= result!149810 result!149804))

(assert (=> d!612273 t!186929))

(declare-fun b_and!158023 () Bool)

(assert (= b_and!157957 (and (=> t!186929 result!149810) b_and!158023)))

(declare-fun tb!124973 () Bool)

(declare-fun t!186931 () Bool)

(assert (=> (and b!2005317 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))) t!186931) tb!124973))

(declare-fun result!149812 () Bool)

(assert (= result!149812 result!149804))

(assert (=> d!612273 t!186931))

(declare-fun b_and!158025 () Bool)

(assert (= b_and!157975 (and (=> t!186931 result!149812) b_and!158025)))

(assert (=> d!612273 m!2436271))

(declare-fun m!2436901 () Bool)

(assert (=> d!612273 m!2436901))

(assert (=> b!2005234 d!612273))

(declare-fun d!612275 () Bool)

(assert (=> d!612275 (= (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753083)))) (fromListB!1256 (originalCharacters!4762 (_1!11821 (get!6960 lt!753083)))))))

(declare-fun bs!419448 () Bool)

(assert (= bs!419448 d!612275))

(declare-fun m!2436903 () Bool)

(assert (=> bs!419448 m!2436903))

(assert (=> b!2005234 d!612275))

(declare-fun d!612277 () Bool)

(assert (=> d!612277 (= (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969)))) (list!8968 (c!323781 (charsOf!2495 (_1!11821 (get!6960 lt!752969))))))))

(declare-fun bs!419449 () Bool)

(assert (= bs!419449 d!612277))

(declare-fun m!2436905 () Bool)

(assert (=> bs!419449 m!2436905))

(assert (=> b!2004872 d!612277))

(declare-fun d!612279 () Bool)

(declare-fun lt!753211 () BalanceConc!14540)

(assert (=> d!612279 (= (list!8964 lt!753211) (originalCharacters!4762 (_1!11821 (get!6960 lt!752969))))))

(assert (=> d!612279 (= lt!753211 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969))))) (value!124310 (_1!11821 (get!6960 lt!752969)))))))

(assert (=> d!612279 (= (charsOf!2495 (_1!11821 (get!6960 lt!752969))) lt!753211)))

(declare-fun b_lambda!66793 () Bool)

(assert (=> (not b_lambda!66793) (not d!612279)))

(declare-fun t!186933 () Bool)

(declare-fun tb!124975 () Bool)

(assert (=> (and b!2005328 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))) t!186933) tb!124975))

(declare-fun b!2005796 () Bool)

(declare-fun e!1267380 () Bool)

(declare-fun tp!598631 () Bool)

(assert (=> b!2005796 (= e!1267380 (and (inv!29193 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969))))) (value!124310 (_1!11821 (get!6960 lt!752969)))))) tp!598631))))

(declare-fun result!149814 () Bool)

(assert (=> tb!124975 (= result!149814 (and (inv!29194 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969))))) (value!124310 (_1!11821 (get!6960 lt!752969))))) e!1267380))))

(assert (= tb!124975 b!2005796))

(declare-fun m!2436907 () Bool)

(assert (=> b!2005796 m!2436907))

(declare-fun m!2436909 () Bool)

(assert (=> tb!124975 m!2436909))

(assert (=> d!612279 t!186933))

(declare-fun b_and!158027 () Bool)

(assert (= b_and!158011 (and (=> t!186933 result!149814) b_and!158027)))

(declare-fun tb!124977 () Bool)

(declare-fun t!186935 () Bool)

(assert (=> (and b!2004742 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))) t!186935) tb!124977))

(declare-fun result!149816 () Bool)

(assert (= result!149816 result!149814))

(assert (=> d!612279 t!186935))

(declare-fun b_and!158029 () Bool)

(assert (= b_and!158007 (and (=> t!186935 result!149816) b_and!158029)))

(declare-fun t!186937 () Bool)

(declare-fun tb!124979 () Bool)

(assert (=> (and b!2004750 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))) t!186937) tb!124979))

(declare-fun result!149818 () Bool)

(assert (= result!149818 result!149814))

(assert (=> d!612279 t!186937))

(declare-fun b_and!158031 () Bool)

(assert (= b_and!158013 (and (=> t!186937 result!149818) b_and!158031)))

(declare-fun t!186939 () Bool)

(declare-fun tb!124981 () Bool)

(assert (=> (and b!2004733 (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))) t!186939) tb!124981))

(declare-fun result!149820 () Bool)

(assert (= result!149820 result!149814))

(assert (=> d!612279 t!186939))

(declare-fun b_and!158033 () Bool)

(assert (= b_and!158015 (and (=> t!186939 result!149820) b_and!158033)))

(declare-fun t!186941 () Bool)

(declare-fun tb!124983 () Bool)

(assert (=> (and b!2005317 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))) t!186941) tb!124983))

(declare-fun result!149822 () Bool)

(assert (= result!149822 result!149814))

(assert (=> d!612279 t!186941))

(declare-fun b_and!158035 () Bool)

(assert (= b_and!158009 (and (=> t!186941 result!149822) b_and!158035)))

(declare-fun m!2436911 () Bool)

(assert (=> d!612279 m!2436911))

(declare-fun m!2436913 () Bool)

(assert (=> d!612279 m!2436913))

(assert (=> b!2004872 d!612279))

(assert (=> b!2004872 d!612181))

(declare-fun d!612281 () Bool)

(declare-fun charsToBigInt!0 (List!22118 Int) Int)

(assert (=> d!612281 (= (inv!15 (value!124310 separatorToken!354)) (= (charsToBigInt!0 (text!29086 (value!124310 separatorToken!354)) 0) (value!124305 (value!124310 separatorToken!354))))))

(declare-fun bs!419450 () Bool)

(assert (= bs!419450 d!612281))

(declare-fun m!2436915 () Bool)

(assert (=> bs!419450 m!2436915))

(assert (=> b!2005064 d!612281))

(declare-fun d!612283 () Bool)

(assert (=> d!612283 (= (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354)))) (v!26820 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354)))))))

(assert (=> b!2005221 d!612283))

(assert (=> b!2005221 d!612075))

(declare-fun b!2005797 () Bool)

(declare-fun e!1267382 () Bool)

(assert (=> b!2005797 (= e!1267382 (inv!16 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598))))))))

(declare-fun b!2005798 () Bool)

(declare-fun e!1267381 () Bool)

(assert (=> b!2005798 (= e!1267381 (inv!15 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598))))))))

(declare-fun b!2005799 () Bool)

(declare-fun e!1267383 () Bool)

(assert (=> b!2005799 (= e!1267382 e!1267383)))

(declare-fun c!323965 () Bool)

(assert (=> b!2005799 (= c!323965 (is-IntegerValue!12274 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598))))))))

(declare-fun b!2005800 () Bool)

(assert (=> b!2005800 (= e!1267383 (inv!17 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598))))))))

(declare-fun d!612285 () Bool)

(declare-fun c!323966 () Bool)

(assert (=> d!612285 (= c!323966 (is-IntegerValue!12273 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598))))))))

(assert (=> d!612285 (= (inv!21 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598))))) e!1267382)))

(declare-fun b!2005801 () Bool)

(declare-fun res!879650 () Bool)

(assert (=> b!2005801 (=> res!879650 e!1267381)))

(assert (=> b!2005801 (= res!879650 (not (is-IntegerValue!12275 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598)))))))))

(assert (=> b!2005801 (= e!1267383 e!1267381)))

(assert (= (and d!612285 c!323966) b!2005797))

(assert (= (and d!612285 (not c!323966)) b!2005799))

(assert (= (and b!2005799 c!323965) b!2005800))

(assert (= (and b!2005799 (not c!323965)) b!2005801))

(assert (= (and b!2005801 (not res!879650)) b!2005798))

(declare-fun m!2436917 () Bool)

(assert (=> b!2005797 m!2436917))

(declare-fun m!2436919 () Bool)

(assert (=> b!2005798 m!2436919))

(declare-fun m!2436921 () Bool)

(assert (=> b!2005800 m!2436921))

(assert (=> tb!124893 d!612285))

(declare-fun d!612287 () Bool)

(assert (=> d!612287 (dynLambda!10821 lambda!75942 (h!27439 (t!186781 tokens!598)))))

(declare-fun lt!753214 () Unit!36581)

(declare-fun choose!12219 (List!22120 Int Token!7462) Unit!36581)

(assert (=> d!612287 (= lt!753214 (choose!12219 (t!186781 tokens!598) lambda!75942 (h!27439 (t!186781 tokens!598))))))

(declare-fun e!1267386 () Bool)

(assert (=> d!612287 e!1267386))

(declare-fun res!879653 () Bool)

(assert (=> d!612287 (=> (not res!879653) (not e!1267386))))

(assert (=> d!612287 (= res!879653 (forall!4679 (t!186781 tokens!598) lambda!75942))))

(assert (=> d!612287 (= (forallContained!721 (t!186781 tokens!598) lambda!75942 (h!27439 (t!186781 tokens!598))) lt!753214)))

(declare-fun b!2005804 () Bool)

(declare-fun contains!4021 (List!22120 Token!7462) Bool)

(assert (=> b!2005804 (= e!1267386 (contains!4021 (t!186781 tokens!598) (h!27439 (t!186781 tokens!598))))))

(assert (= (and d!612287 res!879653) b!2005804))

(declare-fun b_lambda!66795 () Bool)

(assert (=> (not b_lambda!66795) (not d!612287)))

(declare-fun m!2436923 () Bool)

(assert (=> d!612287 m!2436923))

(declare-fun m!2436925 () Bool)

(assert (=> d!612287 m!2436925))

(declare-fun m!2436927 () Bool)

(assert (=> d!612287 m!2436927))

(declare-fun m!2436929 () Bool)

(assert (=> b!2005804 m!2436929))

(assert (=> b!2005255 d!612287))

(declare-fun b!2005808 () Bool)

(declare-fun lt!753215 () List!22119)

(declare-fun e!1267387 () Bool)

(assert (=> b!2005808 (= e!1267387 (or (not (= lt!753092 Nil!22037)) (= lt!753215 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598)))))))))

(declare-fun b!2005805 () Bool)

(declare-fun e!1267388 () List!22119)

(assert (=> b!2005805 (= e!1267388 lt!753092)))

(declare-fun d!612289 () Bool)

(assert (=> d!612289 e!1267387))

(declare-fun res!879655 () Bool)

(assert (=> d!612289 (=> (not res!879655) (not e!1267387))))

(assert (=> d!612289 (= res!879655 (= (content!3225 lt!753215) (set.union (content!3225 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598))))) (content!3225 lt!753092))))))

(assert (=> d!612289 (= lt!753215 e!1267388)))

(declare-fun c!323967 () Bool)

(assert (=> d!612289 (= c!323967 (is-Nil!22037 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598))))))))

(assert (=> d!612289 (= (++!5946 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598)))) lt!753092) lt!753215)))

(declare-fun b!2005807 () Bool)

(declare-fun res!879654 () Bool)

(assert (=> b!2005807 (=> (not res!879654) (not e!1267387))))

(assert (=> b!2005807 (= res!879654 (= (size!17229 lt!753215) (+ (size!17229 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598))))) (size!17229 lt!753092))))))

(declare-fun b!2005806 () Bool)

(assert (=> b!2005806 (= e!1267388 (Cons!22037 (h!27438 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598))))) (++!5946 (t!186780 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598))))) lt!753092)))))

(assert (= (and d!612289 c!323967) b!2005805))

(assert (= (and d!612289 (not c!323967)) b!2005806))

(assert (= (and d!612289 res!879655) b!2005807))

(assert (= (and b!2005807 res!879654) b!2005808))

(declare-fun m!2436931 () Bool)

(assert (=> d!612289 m!2436931))

(assert (=> d!612289 m!2436313))

(declare-fun m!2436933 () Bool)

(assert (=> d!612289 m!2436933))

(assert (=> d!612289 m!2436731))

(declare-fun m!2436935 () Bool)

(assert (=> b!2005807 m!2436935))

(assert (=> b!2005807 m!2436313))

(declare-fun m!2436937 () Bool)

(assert (=> b!2005807 m!2436937))

(assert (=> b!2005807 m!2436737))

(declare-fun m!2436939 () Bool)

(assert (=> b!2005806 m!2436939))

(assert (=> b!2005255 d!612289))

(declare-fun d!612291 () Bool)

(declare-fun lt!753216 () BalanceConc!14540)

(assert (=> d!612291 (= (list!8964 lt!753216) (originalCharacters!4762 (h!27439 (t!186781 tokens!598))))))

(assert (=> d!612291 (= lt!753216 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (value!124310 (h!27439 (t!186781 tokens!598)))))))

(assert (=> d!612291 (= (charsOf!2495 (h!27439 (t!186781 tokens!598))) lt!753216)))

(declare-fun b_lambda!66797 () Bool)

(assert (=> (not b_lambda!66797) (not d!612291)))

(declare-fun t!186943 () Bool)

(declare-fun tb!124985 () Bool)

(assert (=> (and b!2004742 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598)))))) t!186943) tb!124985))

(declare-fun b!2005809 () Bool)

(declare-fun e!1267389 () Bool)

(declare-fun tp!598632 () Bool)

(assert (=> b!2005809 (= e!1267389 (and (inv!29193 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (value!124310 (h!27439 (t!186781 tokens!598)))))) tp!598632))))

(declare-fun result!149824 () Bool)

(assert (=> tb!124985 (= result!149824 (and (inv!29194 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (value!124310 (h!27439 (t!186781 tokens!598))))) e!1267389))))

(assert (= tb!124985 b!2005809))

(declare-fun m!2436941 () Bool)

(assert (=> b!2005809 m!2436941))

(declare-fun m!2436943 () Bool)

(assert (=> tb!124985 m!2436943))

(assert (=> d!612291 t!186943))

(declare-fun b_and!158037 () Bool)

(assert (= b_and!158029 (and (=> t!186943 result!149824) b_and!158037)))

(declare-fun t!186945 () Bool)

(declare-fun tb!124987 () Bool)

(assert (=> (and b!2004733 (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598)))))) t!186945) tb!124987))

(declare-fun result!149826 () Bool)

(assert (= result!149826 result!149824))

(assert (=> d!612291 t!186945))

(declare-fun b_and!158039 () Bool)

(assert (= b_and!158033 (and (=> t!186945 result!149826) b_and!158039)))

(declare-fun t!186947 () Bool)

(declare-fun tb!124989 () Bool)

(assert (=> (and b!2004750 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598)))))) t!186947) tb!124989))

(declare-fun result!149828 () Bool)

(assert (= result!149828 result!149824))

(assert (=> d!612291 t!186947))

(declare-fun b_and!158041 () Bool)

(assert (= b_and!158031 (and (=> t!186947 result!149828) b_and!158041)))

(declare-fun t!186949 () Bool)

(declare-fun tb!124991 () Bool)

(assert (=> (and b!2005317 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598)))))) t!186949) tb!124991))

(declare-fun result!149830 () Bool)

(assert (= result!149830 result!149824))

(assert (=> d!612291 t!186949))

(declare-fun b_and!158043 () Bool)

(assert (= b_and!158035 (and (=> t!186949 result!149830) b_and!158043)))

(declare-fun t!186951 () Bool)

(declare-fun tb!124993 () Bool)

(assert (=> (and b!2005328 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598)))))) t!186951) tb!124993))

(declare-fun result!149832 () Bool)

(assert (= result!149832 result!149824))

(assert (=> d!612291 t!186951))

(declare-fun b_and!158045 () Bool)

(assert (= b_and!158027 (and (=> t!186951 result!149832) b_and!158045)))

(declare-fun m!2436945 () Bool)

(assert (=> d!612291 m!2436945))

(declare-fun m!2436947 () Bool)

(assert (=> d!612291 m!2436947))

(assert (=> b!2005255 d!612291))

(declare-fun b!2005810 () Bool)

(declare-fun res!879662 () Bool)

(declare-fun e!1267391 () Bool)

(assert (=> b!2005810 (=> (not res!879662) (not e!1267391))))

(declare-fun lt!753221 () Option!4591)

(assert (=> b!2005810 (= res!879662 (< (size!17229 (_2!11821 (get!6960 lt!753221))) (size!17229 (++!5946 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598)))) lt!753092))))))

(declare-fun b!2005811 () Bool)

(assert (=> b!2005811 (= e!1267391 (contains!4019 rules!3198 (rule!6178 (_1!11821 (get!6960 lt!753221)))))))

(declare-fun b!2005812 () Bool)

(declare-fun e!1267392 () Option!4591)

(declare-fun lt!753220 () Option!4591)

(declare-fun lt!753219 () Option!4591)

(assert (=> b!2005812 (= e!1267392 (ite (and (is-None!4590 lt!753220) (is-None!4590 lt!753219)) None!4590 (ite (is-None!4590 lt!753219) lt!753220 (ite (is-None!4590 lt!753220) lt!753219 (ite (>= (size!17227 (_1!11821 (v!26819 lt!753220))) (size!17227 (_1!11821 (v!26819 lt!753219)))) lt!753220 lt!753219)))))))

(declare-fun call!122587 () Option!4591)

(assert (=> b!2005812 (= lt!753220 call!122587)))

(assert (=> b!2005812 (= lt!753219 (maxPrefix!2004 thiss!23328 (t!186782 rules!3198) (++!5946 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598)))) lt!753092)))))

(declare-fun b!2005813 () Bool)

(declare-fun res!879659 () Bool)

(assert (=> b!2005813 (=> (not res!879659) (not e!1267391))))

(assert (=> b!2005813 (= res!879659 (= (value!124310 (_1!11821 (get!6960 lt!753221))) (apply!5768 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753221)))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753221)))))))))

(declare-fun b!2005815 () Bool)

(declare-fun e!1267390 () Bool)

(assert (=> b!2005815 (= e!1267390 e!1267391)))

(declare-fun res!879656 () Bool)

(assert (=> b!2005815 (=> (not res!879656) (not e!1267391))))

(assert (=> b!2005815 (= res!879656 (isDefined!3880 lt!753221))))

(declare-fun b!2005816 () Bool)

(declare-fun res!879660 () Bool)

(assert (=> b!2005816 (=> (not res!879660) (not e!1267391))))

(assert (=> b!2005816 (= res!879660 (= (++!5946 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753221)))) (_2!11821 (get!6960 lt!753221))) (++!5946 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598)))) lt!753092)))))

(declare-fun bm!122582 () Bool)

(assert (=> bm!122582 (= call!122587 (maxPrefixOneRule!1240 thiss!23328 (h!27440 rules!3198) (++!5946 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598)))) lt!753092)))))

(declare-fun b!2005817 () Bool)

(assert (=> b!2005817 (= e!1267392 call!122587)))

(declare-fun b!2005818 () Bool)

(declare-fun res!879661 () Bool)

(assert (=> b!2005818 (=> (not res!879661) (not e!1267391))))

(assert (=> b!2005818 (= res!879661 (= (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753221)))) (originalCharacters!4762 (_1!11821 (get!6960 lt!753221)))))))

(declare-fun d!612293 () Bool)

(assert (=> d!612293 e!1267390))

(declare-fun res!879658 () Bool)

(assert (=> d!612293 (=> res!879658 e!1267390)))

(assert (=> d!612293 (= res!879658 (isEmpty!13658 lt!753221))))

(assert (=> d!612293 (= lt!753221 e!1267392)))

(declare-fun c!323968 () Bool)

(assert (=> d!612293 (= c!323968 (and (is-Cons!22039 rules!3198) (is-Nil!22039 (t!186782 rules!3198))))))

(declare-fun lt!753217 () Unit!36581)

(declare-fun lt!753218 () Unit!36581)

(assert (=> d!612293 (= lt!753217 lt!753218)))

(assert (=> d!612293 (isPrefix!1958 (++!5946 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598)))) lt!753092) (++!5946 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598)))) lt!753092))))

(assert (=> d!612293 (= lt!753218 (lemmaIsPrefixRefl!1276 (++!5946 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598)))) lt!753092) (++!5946 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598)))) lt!753092)))))

(assert (=> d!612293 (rulesValidInductive!1357 thiss!23328 rules!3198)))

(assert (=> d!612293 (= (maxPrefix!2004 thiss!23328 rules!3198 (++!5946 (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598)))) lt!753092)) lt!753221)))

(declare-fun b!2005814 () Bool)

(declare-fun res!879657 () Bool)

(assert (=> b!2005814 (=> (not res!879657) (not e!1267391))))

(assert (=> b!2005814 (= res!879657 (matchR!2646 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753221)))) (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753221))))))))

(assert (= (and d!612293 c!323968) b!2005817))

(assert (= (and d!612293 (not c!323968)) b!2005812))

(assert (= (or b!2005817 b!2005812) bm!122582))

(assert (= (and d!612293 (not res!879658)) b!2005815))

(assert (= (and b!2005815 res!879656) b!2005818))

(assert (= (and b!2005818 res!879661) b!2005810))

(assert (= (and b!2005810 res!879662) b!2005816))

(assert (= (and b!2005816 res!879660) b!2005813))

(assert (= (and b!2005813 res!879659) b!2005814))

(assert (= (and b!2005814 res!879657) b!2005811))

(declare-fun m!2436949 () Bool)

(assert (=> b!2005815 m!2436949))

(declare-fun m!2436951 () Bool)

(assert (=> b!2005813 m!2436951))

(declare-fun m!2436953 () Bool)

(assert (=> b!2005813 m!2436953))

(assert (=> b!2005813 m!2436953))

(declare-fun m!2436955 () Bool)

(assert (=> b!2005813 m!2436955))

(assert (=> b!2005811 m!2436951))

(declare-fun m!2436957 () Bool)

(assert (=> b!2005811 m!2436957))

(declare-fun m!2436959 () Bool)

(assert (=> d!612293 m!2436959))

(assert (=> d!612293 m!2436325))

(assert (=> d!612293 m!2436325))

(declare-fun m!2436961 () Bool)

(assert (=> d!612293 m!2436961))

(assert (=> d!612293 m!2436325))

(assert (=> d!612293 m!2436325))

(declare-fun m!2436963 () Bool)

(assert (=> d!612293 m!2436963))

(assert (=> d!612293 m!2435857))

(assert (=> b!2005814 m!2436951))

(declare-fun m!2436965 () Bool)

(assert (=> b!2005814 m!2436965))

(assert (=> b!2005814 m!2436965))

(declare-fun m!2436967 () Bool)

(assert (=> b!2005814 m!2436967))

(assert (=> b!2005814 m!2436967))

(declare-fun m!2436969 () Bool)

(assert (=> b!2005814 m!2436969))

(assert (=> b!2005816 m!2436951))

(assert (=> b!2005816 m!2436965))

(assert (=> b!2005816 m!2436965))

(assert (=> b!2005816 m!2436967))

(assert (=> b!2005816 m!2436967))

(declare-fun m!2436971 () Bool)

(assert (=> b!2005816 m!2436971))

(assert (=> b!2005818 m!2436951))

(assert (=> b!2005818 m!2436965))

(assert (=> b!2005818 m!2436965))

(assert (=> b!2005818 m!2436967))

(assert (=> b!2005810 m!2436951))

(declare-fun m!2436973 () Bool)

(assert (=> b!2005810 m!2436973))

(assert (=> b!2005810 m!2436325))

(declare-fun m!2436975 () Bool)

(assert (=> b!2005810 m!2436975))

(assert (=> b!2005812 m!2436325))

(declare-fun m!2436977 () Bool)

(assert (=> b!2005812 m!2436977))

(assert (=> bm!122582 m!2436325))

(declare-fun m!2436979 () Bool)

(assert (=> bm!122582 m!2436979))

(assert (=> b!2005255 d!612293))

(declare-fun bs!419451 () Bool)

(declare-fun b!2005825 () Bool)

(assert (= bs!419451 (and b!2005825 b!2004952)))

(declare-fun lambda!75957 () Int)

(assert (=> bs!419451 (= lambda!75957 lambda!75929)))

(declare-fun bs!419452 () Bool)

(assert (= bs!419452 (and b!2005825 d!611997)))

(assert (=> bs!419452 (= lambda!75957 lambda!75935)))

(declare-fun bs!419453 () Bool)

(assert (= bs!419453 (and b!2005825 b!2004739)))

(assert (=> bs!419453 (not (= lambda!75957 lambda!75920))))

(declare-fun bs!419454 () Bool)

(assert (= bs!419454 (and b!2005825 b!2005255)))

(assert (=> bs!419454 (= lambda!75957 lambda!75942)))

(declare-fun bs!419455 () Bool)

(assert (= bs!419455 (and b!2005825 d!612165)))

(assert (=> bs!419455 (= lambda!75957 lambda!75950)))

(declare-fun b!2005829 () Bool)

(declare-fun e!1267399 () Bool)

(assert (=> b!2005829 (= e!1267399 true)))

(declare-fun b!2005828 () Bool)

(declare-fun e!1267398 () Bool)

(assert (=> b!2005828 (= e!1267398 e!1267399)))

(declare-fun b!2005827 () Bool)

(declare-fun e!1267397 () Bool)

(assert (=> b!2005827 (= e!1267397 e!1267398)))

(assert (=> b!2005825 e!1267397))

(assert (= b!2005828 b!2005829))

(assert (= b!2005827 b!2005828))

(assert (= (and b!2005825 (is-Cons!22039 rules!3198)) b!2005827))

(assert (=> b!2005829 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (h!27440 rules!3198)))) (dynLambda!10815 order!13961 lambda!75957))))

(assert (=> b!2005829 (< (dynLambda!10816 order!13963 (toChars!5475 (transformation!3955 (h!27440 rules!3198)))) (dynLambda!10815 order!13961 lambda!75957))))

(assert (=> b!2005825 true))

(declare-fun bm!122583 () Bool)

(declare-fun c!323971 () Bool)

(declare-fun c!323970 () Bool)

(assert (=> bm!122583 (= c!323971 c!323970)))

(declare-fun call!122591 () List!22119)

(declare-fun e!1267395 () List!22119)

(declare-fun lt!753227 () List!22119)

(declare-fun call!122592 () List!22119)

(assert (=> bm!122583 (= call!122591 (++!5946 e!1267395 (ite c!323970 lt!753227 call!122592)))))

(declare-fun b!2005819 () Bool)

(assert (=> b!2005819 (= e!1267395 (list!8964 (charsOf!2495 (h!27439 (t!186781 (t!186781 tokens!598))))))))

(declare-fun bm!122584 () Bool)

(declare-fun call!122589 () BalanceConc!14540)

(declare-fun c!323972 () Bool)

(assert (=> bm!122584 (= call!122589 (charsOf!2495 (ite c!323970 (h!27439 (t!186781 (t!186781 tokens!598))) (ite c!323972 separatorToken!354 (h!27439 (t!186781 (t!186781 tokens!598)))))))))

(declare-fun bm!122585 () Bool)

(declare-fun call!122590 () List!22119)

(assert (=> bm!122585 (= call!122592 call!122590)))

(declare-fun b!2005820 () Bool)

(declare-fun e!1267393 () List!22119)

(assert (=> b!2005820 (= e!1267393 Nil!22037)))

(declare-fun b!2005821 () Bool)

(declare-fun e!1267396 () List!22119)

(assert (=> b!2005821 (= e!1267396 (++!5946 call!122591 lt!753227))))

(declare-fun b!2005822 () Bool)

(declare-fun e!1267394 () List!22119)

(assert (=> b!2005822 (= e!1267394 call!122591)))

(declare-fun call!122588 () BalanceConc!14540)

(declare-fun bm!122586 () Bool)

(assert (=> bm!122586 (= call!122590 (list!8964 (ite c!323970 call!122589 call!122588)))))

(declare-fun d!612295 () Bool)

(declare-fun c!323969 () Bool)

(assert (=> d!612295 (= c!323969 (is-Cons!22038 (t!186781 (t!186781 tokens!598))))))

(assert (=> d!612295 (= (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 (t!186781 tokens!598)) separatorToken!354) e!1267393)))

(declare-fun b!2005823 () Bool)

(assert (=> b!2005823 (= e!1267396 Nil!22037)))

(assert (=> b!2005823 (= (print!1536 thiss!23328 (singletonSeq!1937 (h!27439 (t!186781 (t!186781 tokens!598))))) (printTailRec!1042 thiss!23328 (singletonSeq!1937 (h!27439 (t!186781 (t!186781 tokens!598)))) 0 (BalanceConc!14541 Empty!7362)))))

(declare-fun lt!753224 () Unit!36581)

(declare-fun Unit!36594 () Unit!36581)

(assert (=> b!2005823 (= lt!753224 Unit!36594)))

(declare-fun lt!753222 () Unit!36581)

(assert (=> b!2005823 (= lt!753222 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!752 thiss!23328 rules!3198 call!122592 lt!753227))))

(assert (=> b!2005823 false))

(declare-fun lt!753223 () Unit!36581)

(declare-fun Unit!36595 () Unit!36581)

(assert (=> b!2005823 (= lt!753223 Unit!36595)))

(declare-fun b!2005824 () Bool)

(declare-fun lt!753226 () Option!4591)

(assert (=> b!2005824 (= c!323972 (and (is-Some!4590 lt!753226) (not (= (_1!11821 (v!26819 lt!753226)) (h!27439 (t!186781 (t!186781 tokens!598)))))))))

(assert (=> b!2005824 (= e!1267394 e!1267396)))

(assert (=> b!2005825 (= e!1267393 e!1267394)))

(declare-fun lt!753225 () Unit!36581)

(assert (=> b!2005825 (= lt!753225 (forallContained!721 (t!186781 (t!186781 tokens!598)) lambda!75957 (h!27439 (t!186781 (t!186781 tokens!598)))))))

(assert (=> b!2005825 (= lt!753227 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 (t!186781 (t!186781 tokens!598))) separatorToken!354))))

(assert (=> b!2005825 (= lt!753226 (maxPrefix!2004 thiss!23328 rules!3198 (++!5946 (list!8964 (charsOf!2495 (h!27439 (t!186781 (t!186781 tokens!598))))) lt!753227)))))

(assert (=> b!2005825 (= c!323970 (and (is-Some!4590 lt!753226) (= (_1!11821 (v!26819 lt!753226)) (h!27439 (t!186781 (t!186781 tokens!598))))))))

(declare-fun bm!122587 () Bool)

(assert (=> bm!122587 (= call!122588 call!122589)))

(declare-fun b!2005826 () Bool)

(assert (=> b!2005826 (= e!1267395 call!122590)))

(assert (= (and d!612295 c!323969) b!2005825))

(assert (= (and d!612295 (not c!323969)) b!2005820))

(assert (= (and b!2005825 c!323970) b!2005822))

(assert (= (and b!2005825 (not c!323970)) b!2005824))

(assert (= (and b!2005824 c!323972) b!2005821))

(assert (= (and b!2005824 (not c!323972)) b!2005823))

(assert (= (or b!2005821 b!2005823) bm!122587))

(assert (= (or b!2005821 b!2005823) bm!122585))

(assert (= (or b!2005822 bm!122587) bm!122584))

(assert (= (or b!2005822 bm!122585) bm!122586))

(assert (= (or b!2005822 b!2005821) bm!122583))

(assert (= (and bm!122583 c!323971) b!2005826))

(assert (= (and bm!122583 (not c!323971)) b!2005819))

(declare-fun m!2436981 () Bool)

(assert (=> b!2005819 m!2436981))

(assert (=> b!2005819 m!2436981))

(declare-fun m!2436983 () Bool)

(assert (=> b!2005819 m!2436983))

(declare-fun m!2436985 () Bool)

(assert (=> b!2005823 m!2436985))

(assert (=> b!2005823 m!2436985))

(declare-fun m!2436987 () Bool)

(assert (=> b!2005823 m!2436987))

(assert (=> b!2005823 m!2436985))

(declare-fun m!2436989 () Bool)

(assert (=> b!2005823 m!2436989))

(declare-fun m!2436991 () Bool)

(assert (=> b!2005823 m!2436991))

(declare-fun m!2436993 () Bool)

(assert (=> bm!122583 m!2436993))

(assert (=> b!2005825 m!2436981))

(assert (=> b!2005825 m!2436981))

(assert (=> b!2005825 m!2436983))

(assert (=> b!2005825 m!2436983))

(declare-fun m!2436995 () Bool)

(assert (=> b!2005825 m!2436995))

(declare-fun m!2436997 () Bool)

(assert (=> b!2005825 m!2436997))

(assert (=> b!2005825 m!2436995))

(declare-fun m!2436999 () Bool)

(assert (=> b!2005825 m!2436999))

(declare-fun m!2437001 () Bool)

(assert (=> b!2005825 m!2437001))

(declare-fun m!2437003 () Bool)

(assert (=> bm!122584 m!2437003))

(declare-fun m!2437005 () Bool)

(assert (=> bm!122586 m!2437005))

(declare-fun m!2437007 () Bool)

(assert (=> b!2005821 m!2437007))

(assert (=> b!2005255 d!612295))

(declare-fun d!612297 () Bool)

(assert (=> d!612297 (= (list!8964 (charsOf!2495 (h!27439 (t!186781 tokens!598)))) (list!8968 (c!323781 (charsOf!2495 (h!27439 (t!186781 tokens!598))))))))

(declare-fun bs!419456 () Bool)

(assert (= bs!419456 d!612297))

(declare-fun m!2437009 () Bool)

(assert (=> bs!419456 m!2437009))

(assert (=> b!2005255 d!612297))

(declare-fun d!612299 () Bool)

(assert (=> d!612299 (= (list!8964 lt!753111) (list!8968 (c!323781 lt!753111)))))

(declare-fun bs!419457 () Bool)

(assert (= bs!419457 d!612299))

(declare-fun m!2437011 () Bool)

(assert (=> bs!419457 m!2437011))

(assert (=> d!612085 d!612299))

(declare-fun b!2005833 () Bool)

(declare-fun e!1267400 () Bool)

(declare-fun lt!753228 () List!22119)

(assert (=> b!2005833 (= e!1267400 (or (not (= (_2!11821 (get!6960 lt!753078)) Nil!22037)) (= lt!753228 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078)))))))))

(declare-fun b!2005830 () Bool)

(declare-fun e!1267401 () List!22119)

(assert (=> b!2005830 (= e!1267401 (_2!11821 (get!6960 lt!753078)))))

(declare-fun d!612301 () Bool)

(assert (=> d!612301 e!1267400))

(declare-fun res!879664 () Bool)

(assert (=> d!612301 (=> (not res!879664) (not e!1267400))))

(assert (=> d!612301 (= res!879664 (= (content!3225 lt!753228) (set.union (content!3225 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078))))) (content!3225 (_2!11821 (get!6960 lt!753078))))))))

(assert (=> d!612301 (= lt!753228 e!1267401)))

(declare-fun c!323973 () Bool)

(assert (=> d!612301 (= c!323973 (is-Nil!22037 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078))))))))

(assert (=> d!612301 (= (++!5946 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078)))) (_2!11821 (get!6960 lt!753078))) lt!753228)))

(declare-fun b!2005832 () Bool)

(declare-fun res!879663 () Bool)

(assert (=> b!2005832 (=> (not res!879663) (not e!1267400))))

(assert (=> b!2005832 (= res!879663 (= (size!17229 lt!753228) (+ (size!17229 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078))))) (size!17229 (_2!11821 (get!6960 lt!753078))))))))

(declare-fun b!2005831 () Bool)

(assert (=> b!2005831 (= e!1267401 (Cons!22037 (h!27438 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078))))) (++!5946 (t!186780 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078))))) (_2!11821 (get!6960 lt!753078)))))))

(assert (= (and d!612301 c!323973) b!2005830))

(assert (= (and d!612301 (not c!323973)) b!2005831))

(assert (= (and d!612301 res!879664) b!2005832))

(assert (= (and b!2005832 res!879663) b!2005833))

(declare-fun m!2437013 () Bool)

(assert (=> d!612301 m!2437013))

(assert (=> d!612301 m!2436251))

(declare-fun m!2437015 () Bool)

(assert (=> d!612301 m!2437015))

(declare-fun m!2437017 () Bool)

(assert (=> d!612301 m!2437017))

(declare-fun m!2437019 () Bool)

(assert (=> b!2005832 m!2437019))

(assert (=> b!2005832 m!2436251))

(declare-fun m!2437021 () Bool)

(assert (=> b!2005832 m!2437021))

(assert (=> b!2005832 m!2436257))

(declare-fun m!2437023 () Bool)

(assert (=> b!2005831 m!2437023))

(assert (=> b!2005228 d!612301))

(declare-fun d!612303 () Bool)

(assert (=> d!612303 (= (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078)))) (list!8968 (c!323781 (charsOf!2495 (_1!11821 (get!6960 lt!753078))))))))

(declare-fun bs!419458 () Bool)

(assert (= bs!419458 d!612303))

(declare-fun m!2437025 () Bool)

(assert (=> bs!419458 m!2437025))

(assert (=> b!2005228 d!612303))

(declare-fun d!612305 () Bool)

(declare-fun lt!753229 () BalanceConc!14540)

(assert (=> d!612305 (= (list!8964 lt!753229) (originalCharacters!4762 (_1!11821 (get!6960 lt!753078))))))

(assert (=> d!612305 (= lt!753229 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078))))) (value!124310 (_1!11821 (get!6960 lt!753078)))))))

(assert (=> d!612305 (= (charsOf!2495 (_1!11821 (get!6960 lt!753078))) lt!753229)))

(declare-fun b_lambda!66799 () Bool)

(assert (=> (not b_lambda!66799) (not d!612305)))

(declare-fun tb!124995 () Bool)

(declare-fun t!186953 () Bool)

(assert (=> (and b!2004742 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))) t!186953) tb!124995))

(declare-fun b!2005834 () Bool)

(declare-fun e!1267402 () Bool)

(declare-fun tp!598633 () Bool)

(assert (=> b!2005834 (= e!1267402 (and (inv!29193 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078))))) (value!124310 (_1!11821 (get!6960 lt!753078)))))) tp!598633))))

(declare-fun result!149834 () Bool)

(assert (=> tb!124995 (= result!149834 (and (inv!29194 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078))))) (value!124310 (_1!11821 (get!6960 lt!753078))))) e!1267402))))

(assert (= tb!124995 b!2005834))

(declare-fun m!2437027 () Bool)

(assert (=> b!2005834 m!2437027))

(declare-fun m!2437029 () Bool)

(assert (=> tb!124995 m!2437029))

(assert (=> d!612305 t!186953))

(declare-fun b_and!158047 () Bool)

(assert (= b_and!158037 (and (=> t!186953 result!149834) b_and!158047)))

(declare-fun tb!124997 () Bool)

(declare-fun t!186955 () Bool)

(assert (=> (and b!2004733 (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))) t!186955) tb!124997))

(declare-fun result!149836 () Bool)

(assert (= result!149836 result!149834))

(assert (=> d!612305 t!186955))

(declare-fun b_and!158049 () Bool)

(assert (= b_and!158039 (and (=> t!186955 result!149836) b_and!158049)))

(declare-fun tb!124999 () Bool)

(declare-fun t!186957 () Bool)

(assert (=> (and b!2005317 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))) t!186957) tb!124999))

(declare-fun result!149838 () Bool)

(assert (= result!149838 result!149834))

(assert (=> d!612305 t!186957))

(declare-fun b_and!158051 () Bool)

(assert (= b_and!158043 (and (=> t!186957 result!149838) b_and!158051)))

(declare-fun tb!125001 () Bool)

(declare-fun t!186959 () Bool)

(assert (=> (and b!2004750 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))) t!186959) tb!125001))

(declare-fun result!149840 () Bool)

(assert (= result!149840 result!149834))

(assert (=> d!612305 t!186959))

(declare-fun b_and!158053 () Bool)

(assert (= b_and!158041 (and (=> t!186959 result!149840) b_and!158053)))

(declare-fun tb!125003 () Bool)

(declare-fun t!186961 () Bool)

(assert (=> (and b!2005328 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))) t!186961) tb!125003))

(declare-fun result!149842 () Bool)

(assert (= result!149842 result!149834))

(assert (=> d!612305 t!186961))

(declare-fun b_and!158055 () Bool)

(assert (= b_and!158045 (and (=> t!186961 result!149842) b_and!158055)))

(declare-fun m!2437031 () Bool)

(assert (=> d!612305 m!2437031))

(declare-fun m!2437033 () Bool)

(assert (=> d!612305 m!2437033))

(assert (=> b!2005228 d!612305))

(declare-fun d!612307 () Bool)

(assert (=> d!612307 (= (get!6960 lt!753078) (v!26819 lt!753078))))

(assert (=> b!2005228 d!612307))

(declare-fun d!612309 () Bool)

(assert (=> d!612309 (= (isEmpty!13657 (tail!3015 lt!752900)) (is-Nil!22037 (tail!3015 lt!752900)))))

(assert (=> b!2005082 d!612309))

(declare-fun d!612311 () Bool)

(assert (=> d!612311 (= (tail!3015 lt!752900) (t!186780 lt!752900))))

(assert (=> b!2005082 d!612311))

(declare-fun d!612313 () Bool)

(assert (=> d!612313 (= (inv!15 (value!124310 (h!27439 tokens!598))) (= (charsToBigInt!0 (text!29086 (value!124310 (h!27439 tokens!598))) 0) (value!124305 (value!124310 (h!27439 tokens!598)))))))

(declare-fun bs!419459 () Bool)

(assert (= bs!419459 d!612313))

(declare-fun m!2437035 () Bool)

(assert (=> bs!419459 m!2437035))

(assert (=> b!2005212 d!612313))

(declare-fun d!612315 () Bool)

(declare-fun lt!753230 () Bool)

(assert (=> d!612315 (= lt!753230 (set.member (get!6961 lt!753105) (content!3226 rules!3198)))))

(declare-fun e!1267403 () Bool)

(assert (=> d!612315 (= lt!753230 e!1267403)))

(declare-fun res!879666 () Bool)

(assert (=> d!612315 (=> (not res!879666) (not e!1267403))))

(assert (=> d!612315 (= res!879666 (is-Cons!22039 rules!3198))))

(assert (=> d!612315 (= (contains!4019 rules!3198 (get!6961 lt!753105)) lt!753230)))

(declare-fun b!2005835 () Bool)

(declare-fun e!1267404 () Bool)

(assert (=> b!2005835 (= e!1267403 e!1267404)))

(declare-fun res!879665 () Bool)

(assert (=> b!2005835 (=> res!879665 e!1267404)))

(assert (=> b!2005835 (= res!879665 (= (h!27440 rules!3198) (get!6961 lt!753105)))))

(declare-fun b!2005836 () Bool)

(assert (=> b!2005836 (= e!1267404 (contains!4019 (t!186782 rules!3198) (get!6961 lt!753105)))))

(assert (= (and d!612315 res!879666) b!2005835))

(assert (= (and b!2005835 (not res!879665)) b!2005836))

(assert (=> d!612315 m!2436677))

(assert (=> d!612315 m!2436365))

(declare-fun m!2437037 () Bool)

(assert (=> d!612315 m!2437037))

(assert (=> b!2005836 m!2436365))

(declare-fun m!2437039 () Bool)

(assert (=> b!2005836 m!2437039))

(assert (=> b!2005283 d!612315))

(declare-fun d!612317 () Bool)

(assert (=> d!612317 (= (get!6961 lt!753105) (v!26820 lt!753105))))

(assert (=> b!2005283 d!612317))

(declare-fun b!2005837 () Bool)

(declare-fun res!879668 () Bool)

(declare-fun e!1267405 () Bool)

(assert (=> b!2005837 (=> (not res!879668) (not e!1267405))))

(declare-fun lt!753233 () Option!4591)

(assert (=> b!2005837 (= res!879668 (< (size!17229 (_2!11821 (get!6960 lt!753233))) (size!17229 lt!752900)))))

(declare-fun d!612319 () Bool)

(declare-fun e!1267406 () Bool)

(assert (=> d!612319 e!1267406))

(declare-fun res!879670 () Bool)

(assert (=> d!612319 (=> res!879670 e!1267406)))

(assert (=> d!612319 (= res!879670 (isEmpty!13658 lt!753233))))

(declare-fun e!1267407 () Option!4591)

(assert (=> d!612319 (= lt!753233 e!1267407)))

(declare-fun c!323974 () Bool)

(declare-fun lt!753231 () tuple2!20712)

(assert (=> d!612319 (= c!323974 (isEmpty!13657 (_1!11825 lt!753231)))))

(assert (=> d!612319 (= lt!753231 (findLongestMatch!475 (regex!3955 (h!27440 rules!3198)) lt!752900))))

(assert (=> d!612319 (ruleValid!1208 thiss!23328 (h!27440 rules!3198))))

(assert (=> d!612319 (= (maxPrefixOneRule!1240 thiss!23328 (h!27440 rules!3198) lt!752900) lt!753233)))

(declare-fun b!2005838 () Bool)

(assert (=> b!2005838 (= e!1267405 (= (size!17227 (_1!11821 (get!6960 lt!753233))) (size!17229 (originalCharacters!4762 (_1!11821 (get!6960 lt!753233))))))))

(declare-fun b!2005839 () Bool)

(assert (=> b!2005839 (= e!1267407 (Some!4590 (tuple2!20705 (Token!7463 (apply!5768 (transformation!3955 (h!27440 rules!3198)) (seqFromList!2809 (_1!11825 lt!753231))) (h!27440 rules!3198) (size!17233 (seqFromList!2809 (_1!11825 lt!753231))) (_1!11825 lt!753231)) (_2!11825 lt!753231))))))

(declare-fun lt!753232 () Unit!36581)

(assert (=> b!2005839 (= lt!753232 (longestMatchIsAcceptedByMatchOrIsEmpty!532 (regex!3955 (h!27440 rules!3198)) lt!752900))))

(declare-fun res!879669 () Bool)

(assert (=> b!2005839 (= res!879669 (isEmpty!13657 (_1!11825 (findLongestMatchInner!548 (regex!3955 (h!27440 rules!3198)) Nil!22037 (size!17229 Nil!22037) lt!752900 lt!752900 (size!17229 lt!752900)))))))

(declare-fun e!1267408 () Bool)

(assert (=> b!2005839 (=> res!879669 e!1267408)))

(assert (=> b!2005839 e!1267408))

(declare-fun lt!753234 () Unit!36581)

(assert (=> b!2005839 (= lt!753234 lt!753232)))

(declare-fun lt!753235 () Unit!36581)

(assert (=> b!2005839 (= lt!753235 (lemmaSemiInverse!912 (transformation!3955 (h!27440 rules!3198)) (seqFromList!2809 (_1!11825 lt!753231))))))

(declare-fun b!2005840 () Bool)

(assert (=> b!2005840 (= e!1267406 e!1267405)))

(declare-fun res!879673 () Bool)

(assert (=> b!2005840 (=> (not res!879673) (not e!1267405))))

(assert (=> b!2005840 (= res!879673 (matchR!2646 (regex!3955 (h!27440 rules!3198)) (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753233))))))))

(declare-fun b!2005841 () Bool)

(declare-fun res!879667 () Bool)

(assert (=> b!2005841 (=> (not res!879667) (not e!1267405))))

(assert (=> b!2005841 (= res!879667 (= (rule!6178 (_1!11821 (get!6960 lt!753233))) (h!27440 rules!3198)))))

(declare-fun b!2005842 () Bool)

(declare-fun res!879671 () Bool)

(assert (=> b!2005842 (=> (not res!879671) (not e!1267405))))

(assert (=> b!2005842 (= res!879671 (= (value!124310 (_1!11821 (get!6960 lt!753233))) (apply!5768 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753233)))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753233)))))))))

(declare-fun b!2005843 () Bool)

(assert (=> b!2005843 (= e!1267407 None!4590)))

(declare-fun b!2005844 () Bool)

(assert (=> b!2005844 (= e!1267408 (matchR!2646 (regex!3955 (h!27440 rules!3198)) (_1!11825 (findLongestMatchInner!548 (regex!3955 (h!27440 rules!3198)) Nil!22037 (size!17229 Nil!22037) lt!752900 lt!752900 (size!17229 lt!752900)))))))

(declare-fun b!2005845 () Bool)

(declare-fun res!879672 () Bool)

(assert (=> b!2005845 (=> (not res!879672) (not e!1267405))))

(assert (=> b!2005845 (= res!879672 (= (++!5946 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753233)))) (_2!11821 (get!6960 lt!753233))) lt!752900))))

(assert (= (and d!612319 c!323974) b!2005843))

(assert (= (and d!612319 (not c!323974)) b!2005839))

(assert (= (and b!2005839 (not res!879669)) b!2005844))

(assert (= (and d!612319 (not res!879670)) b!2005840))

(assert (= (and b!2005840 res!879673) b!2005845))

(assert (= (and b!2005845 res!879672) b!2005837))

(assert (= (and b!2005837 res!879668) b!2005841))

(assert (= (and b!2005841 res!879667) b!2005842))

(assert (= (and b!2005842 res!879671) b!2005838))

(assert (=> b!2005844 m!2436565))

(assert (=> b!2005844 m!2436293))

(assert (=> b!2005844 m!2436565))

(assert (=> b!2005844 m!2436293))

(declare-fun m!2437041 () Bool)

(assert (=> b!2005844 m!2437041))

(declare-fun m!2437043 () Bool)

(assert (=> b!2005844 m!2437043))

(declare-fun m!2437045 () Bool)

(assert (=> b!2005845 m!2437045))

(declare-fun m!2437047 () Bool)

(assert (=> b!2005845 m!2437047))

(assert (=> b!2005845 m!2437047))

(declare-fun m!2437049 () Bool)

(assert (=> b!2005845 m!2437049))

(assert (=> b!2005845 m!2437049))

(declare-fun m!2437051 () Bool)

(assert (=> b!2005845 m!2437051))

(assert (=> b!2005842 m!2437045))

(declare-fun m!2437053 () Bool)

(assert (=> b!2005842 m!2437053))

(assert (=> b!2005842 m!2437053))

(declare-fun m!2437055 () Bool)

(assert (=> b!2005842 m!2437055))

(declare-fun m!2437057 () Bool)

(assert (=> d!612319 m!2437057))

(declare-fun m!2437059 () Bool)

(assert (=> d!612319 m!2437059))

(declare-fun m!2437061 () Bool)

(assert (=> d!612319 m!2437061))

(assert (=> d!612319 m!2436589))

(declare-fun m!2437063 () Bool)

(assert (=> b!2005839 m!2437063))

(declare-fun m!2437065 () Bool)

(assert (=> b!2005839 m!2437065))

(assert (=> b!2005839 m!2437063))

(assert (=> b!2005839 m!2437063))

(declare-fun m!2437067 () Bool)

(assert (=> b!2005839 m!2437067))

(declare-fun m!2437069 () Bool)

(assert (=> b!2005839 m!2437069))

(declare-fun m!2437071 () Bool)

(assert (=> b!2005839 m!2437071))

(assert (=> b!2005839 m!2436565))

(assert (=> b!2005839 m!2436293))

(assert (=> b!2005839 m!2437041))

(assert (=> b!2005839 m!2437063))

(declare-fun m!2437073 () Bool)

(assert (=> b!2005839 m!2437073))

(assert (=> b!2005839 m!2436293))

(assert (=> b!2005839 m!2436565))

(assert (=> b!2005837 m!2437045))

(declare-fun m!2437075 () Bool)

(assert (=> b!2005837 m!2437075))

(assert (=> b!2005837 m!2436293))

(assert (=> b!2005838 m!2437045))

(declare-fun m!2437077 () Bool)

(assert (=> b!2005838 m!2437077))

(assert (=> b!2005841 m!2437045))

(assert (=> b!2005840 m!2437045))

(assert (=> b!2005840 m!2437047))

(assert (=> b!2005840 m!2437047))

(assert (=> b!2005840 m!2437049))

(assert (=> b!2005840 m!2437049))

(declare-fun m!2437079 () Bool)

(assert (=> b!2005840 m!2437079))

(assert (=> bm!122543 d!612319))

(declare-fun d!612321 () Bool)

(declare-fun res!879678 () Bool)

(declare-fun e!1267413 () Bool)

(assert (=> d!612321 (=> res!879678 e!1267413)))

(assert (=> d!612321 (= res!879678 (is-Nil!22039 rules!3198))))

(assert (=> d!612321 (= (noDuplicateTag!1467 thiss!23328 rules!3198 Nil!22044) e!1267413)))

(declare-fun b!2005850 () Bool)

(declare-fun e!1267414 () Bool)

(assert (=> b!2005850 (= e!1267413 e!1267414)))

(declare-fun res!879679 () Bool)

(assert (=> b!2005850 (=> (not res!879679) (not e!1267414))))

(declare-fun contains!4023 (List!22126 String!25575) Bool)

(assert (=> b!2005850 (= res!879679 (not (contains!4023 Nil!22044 (tag!4415 (h!27440 rules!3198)))))))

(declare-fun b!2005851 () Bool)

(assert (=> b!2005851 (= e!1267414 (noDuplicateTag!1467 thiss!23328 (t!186782 rules!3198) (Cons!22044 (tag!4415 (h!27440 rules!3198)) Nil!22044)))))

(assert (= (and d!612321 (not res!879678)) b!2005850))

(assert (= (and b!2005850 res!879679) b!2005851))

(declare-fun m!2437081 () Bool)

(assert (=> b!2005850 m!2437081))

(declare-fun m!2437083 () Bool)

(assert (=> b!2005851 m!2437083))

(assert (=> b!2005088 d!612321))

(declare-fun lt!753236 () BalanceConc!14540)

(declare-fun d!612323 () Bool)

(assert (=> d!612323 (= (list!8964 lt!753236) (originalCharacters!4762 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598)))))))

(assert (=> d!612323 (= lt!753236 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598)))))) (value!124310 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598))))))))

(assert (=> d!612323 (= (charsOf!2495 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598)))) lt!753236)))

(declare-fun b_lambda!66801 () Bool)

(assert (=> (not b_lambda!66801) (not d!612323)))

(declare-fun tb!125005 () Bool)

(declare-fun t!186963 () Bool)

(assert (=> (and b!2005317 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toChars!5475 (transformation!3955 (rule!6178 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598))))))) t!186963) tb!125005))

(declare-fun tp!598634 () Bool)

(declare-fun b!2005852 () Bool)

(declare-fun e!1267415 () Bool)

(assert (=> b!2005852 (= e!1267415 (and (inv!29193 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598)))))) (value!124310 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598))))))) tp!598634))))

(declare-fun result!149844 () Bool)

(assert (=> tb!125005 (= result!149844 (and (inv!29194 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598)))))) (value!124310 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598)))))) e!1267415))))

(assert (= tb!125005 b!2005852))

(declare-fun m!2437085 () Bool)

(assert (=> b!2005852 m!2437085))

(declare-fun m!2437087 () Bool)

(assert (=> tb!125005 m!2437087))

(assert (=> d!612323 t!186963))

(declare-fun b_and!158057 () Bool)

(assert (= b_and!158051 (and (=> t!186963 result!149844) b_and!158057)))

(declare-fun t!186965 () Bool)

(declare-fun tb!125007 () Bool)

(assert (=> (and b!2004733 (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598))))))) t!186965) tb!125007))

(declare-fun result!149846 () Bool)

(assert (= result!149846 result!149844))

(assert (=> d!612323 t!186965))

(declare-fun b_and!158059 () Bool)

(assert (= b_and!158049 (and (=> t!186965 result!149846) b_and!158059)))

(declare-fun tb!125009 () Bool)

(declare-fun t!186967 () Bool)

(assert (=> (and b!2004750 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598))))))) t!186967) tb!125009))

(declare-fun result!149848 () Bool)

(assert (= result!149848 result!149844))

(assert (=> d!612323 t!186967))

(declare-fun b_and!158061 () Bool)

(assert (= b_and!158053 (and (=> t!186967 result!149848) b_and!158061)))

(declare-fun tb!125011 () Bool)

(declare-fun t!186969 () Bool)

(assert (=> (and b!2005328 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598))))))) t!186969) tb!125011))

(declare-fun result!149850 () Bool)

(assert (= result!149850 result!149844))

(assert (=> d!612323 t!186969))

(declare-fun b_and!158063 () Bool)

(assert (= b_and!158055 (and (=> t!186969 result!149850) b_and!158063)))

(declare-fun tb!125013 () Bool)

(declare-fun t!186971 () Bool)

(assert (=> (and b!2004742 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toChars!5475 (transformation!3955 (rule!6178 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598))))))) t!186971) tb!125013))

(declare-fun result!149852 () Bool)

(assert (= result!149852 result!149844))

(assert (=> d!612323 t!186971))

(declare-fun b_and!158065 () Bool)

(assert (= b_and!158047 (and (=> t!186971 result!149852) b_and!158065)))

(declare-fun m!2437089 () Bool)

(assert (=> d!612323 m!2437089))

(declare-fun m!2437091 () Bool)

(assert (=> d!612323 m!2437091))

(assert (=> bm!122515 d!612323))

(declare-fun d!612325 () Bool)

(assert (=> d!612325 (= (isDefined!3879 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598))))) (not (isEmpty!13662 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598)))))))))

(declare-fun bs!419460 () Bool)

(assert (= bs!419460 d!612325))

(assert (=> bs!419460 m!2435677))

(declare-fun m!2437093 () Bool)

(assert (=> bs!419460 m!2437093))

(assert (=> d!612073 d!612325))

(assert (=> d!612073 d!612077))

(declare-fun d!612327 () Bool)

(declare-fun e!1267418 () Bool)

(assert (=> d!612327 e!1267418))

(declare-fun res!879684 () Bool)

(assert (=> d!612327 (=> (not res!879684) (not e!1267418))))

(assert (=> d!612327 (= res!879684 (isDefined!3879 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598))))))))

(assert (=> d!612327 true))

(declare-fun _$52!1279 () Unit!36581)

(assert (=> d!612327 (= (choose!12216 thiss!23328 rules!3198 lt!752900 (h!27439 tokens!598)) _$52!1279)))

(declare-fun b!2005857 () Bool)

(declare-fun res!879685 () Bool)

(assert (=> b!2005857 (=> (not res!879685) (not e!1267418))))

(assert (=> b!2005857 (= res!879685 (matchR!2646 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598)))))) (list!8964 (charsOf!2495 (h!27439 tokens!598)))))))

(declare-fun b!2005858 () Bool)

(assert (=> b!2005858 (= e!1267418 (= (rule!6178 (h!27439 tokens!598)) (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 (h!27439 tokens!598)))))))))

(assert (= (and d!612327 res!879684) b!2005857))

(assert (= (and b!2005857 res!879685) b!2005858))

(assert (=> d!612327 m!2435677))

(assert (=> d!612327 m!2435677))

(assert (=> d!612327 m!2436341))

(assert (=> b!2005857 m!2435675))

(assert (=> b!2005857 m!2435677))

(assert (=> b!2005857 m!2435675))

(assert (=> b!2005857 m!2435925))

(assert (=> b!2005857 m!2435925))

(assert (=> b!2005857 m!2436345))

(assert (=> b!2005857 m!2435677))

(assert (=> b!2005857 m!2436347))

(assert (=> b!2005858 m!2435677))

(assert (=> b!2005858 m!2435677))

(assert (=> b!2005858 m!2436347))

(assert (=> d!612073 d!612327))

(assert (=> d!612073 d!612015))

(assert (=> b!2005024 d!612261))

(declare-fun d!612329 () Bool)

(declare-fun res!879686 () Bool)

(declare-fun e!1267419 () Bool)

(assert (=> d!612329 (=> (not res!879686) (not e!1267419))))

(assert (=> d!612329 (= res!879686 (not (isEmpty!13657 (originalCharacters!4762 (h!27439 (t!186781 tokens!598))))))))

(assert (=> d!612329 (= (inv!29190 (h!27439 (t!186781 tokens!598))) e!1267419)))

(declare-fun b!2005859 () Bool)

(declare-fun res!879687 () Bool)

(assert (=> b!2005859 (=> (not res!879687) (not e!1267419))))

(assert (=> b!2005859 (= res!879687 (= (originalCharacters!4762 (h!27439 (t!186781 tokens!598))) (list!8964 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (value!124310 (h!27439 (t!186781 tokens!598)))))))))

(declare-fun b!2005860 () Bool)

(assert (=> b!2005860 (= e!1267419 (= (size!17227 (h!27439 (t!186781 tokens!598))) (size!17229 (originalCharacters!4762 (h!27439 (t!186781 tokens!598))))))))

(assert (= (and d!612329 res!879686) b!2005859))

(assert (= (and b!2005859 res!879687) b!2005860))

(declare-fun b_lambda!66803 () Bool)

(assert (=> (not b_lambda!66803) (not b!2005859)))

(assert (=> b!2005859 t!186943))

(declare-fun b_and!158067 () Bool)

(assert (= b_and!158065 (and (=> t!186943 result!149824) b_and!158067)))

(assert (=> b!2005859 t!186951))

(declare-fun b_and!158069 () Bool)

(assert (= b_and!158063 (and (=> t!186951 result!149832) b_and!158069)))

(assert (=> b!2005859 t!186949))

(declare-fun b_and!158071 () Bool)

(assert (= b_and!158057 (and (=> t!186949 result!149830) b_and!158071)))

(assert (=> b!2005859 t!186947))

(declare-fun b_and!158073 () Bool)

(assert (= b_and!158061 (and (=> t!186947 result!149828) b_and!158073)))

(assert (=> b!2005859 t!186945))

(declare-fun b_and!158075 () Bool)

(assert (= b_and!158059 (and (=> t!186945 result!149826) b_and!158075)))

(declare-fun m!2437095 () Bool)

(assert (=> d!612329 m!2437095))

(assert (=> b!2005859 m!2436947))

(assert (=> b!2005859 m!2436947))

(declare-fun m!2437097 () Bool)

(assert (=> b!2005859 m!2437097))

(declare-fun m!2437099 () Bool)

(assert (=> b!2005860 m!2437099))

(assert (=> b!2005314 d!612329))

(declare-fun d!612331 () Bool)

(declare-fun res!879688 () Bool)

(declare-fun e!1267420 () Bool)

(assert (=> d!612331 (=> (not res!879688) (not e!1267420))))

(assert (=> d!612331 (= res!879688 (rulesValid!1469 thiss!23328 (t!186782 rules!3198)))))

(assert (=> d!612331 (= (rulesInvariant!3175 thiss!23328 (t!186782 rules!3198)) e!1267420)))

(declare-fun b!2005861 () Bool)

(assert (=> b!2005861 (= e!1267420 (noDuplicateTag!1467 thiss!23328 (t!186782 rules!3198) Nil!22044))))

(assert (= (and d!612331 res!879688) b!2005861))

(declare-fun m!2437101 () Bool)

(assert (=> d!612331 m!2437101))

(declare-fun m!2437103 () Bool)

(assert (=> b!2005861 m!2437103))

(assert (=> b!2005274 d!612331))

(declare-fun d!612333 () Bool)

(assert (=> d!612333 (rulesInvariant!3175 thiss!23328 (t!186782 rules!3198))))

(declare-fun lt!753239 () Unit!36581)

(declare-fun choose!12220 (LexerInterface!3568 Rule!7710 List!22121) Unit!36581)

(assert (=> d!612333 (= lt!753239 (choose!12220 thiss!23328 (h!27440 rules!3198) (t!186782 rules!3198)))))

(assert (=> d!612333 (rulesInvariant!3175 thiss!23328 (Cons!22039 (h!27440 rules!3198) (t!186782 rules!3198)))))

(assert (=> d!612333 (= (lemmaInvariantOnRulesThenOnTail!284 thiss!23328 (h!27440 rules!3198) (t!186782 rules!3198)) lt!753239)))

(declare-fun bs!419461 () Bool)

(assert (= bs!419461 d!612333))

(assert (=> bs!419461 m!2436349))

(declare-fun m!2437105 () Bool)

(assert (=> bs!419461 m!2437105))

(declare-fun m!2437107 () Bool)

(assert (=> bs!419461 m!2437107))

(assert (=> b!2005274 d!612333))

(declare-fun b!2005862 () Bool)

(declare-fun lt!753241 () Unit!36581)

(declare-fun lt!753240 () Unit!36581)

(assert (=> b!2005862 (= lt!753241 lt!753240)))

(assert (=> b!2005862 (rulesInvariant!3175 thiss!23328 (t!186782 (t!186782 rules!3198)))))

(assert (=> b!2005862 (= lt!753240 (lemmaInvariantOnRulesThenOnTail!284 thiss!23328 (h!27440 (t!186782 rules!3198)) (t!186782 (t!186782 rules!3198))))))

(declare-fun e!1267424 () Option!4592)

(assert (=> b!2005862 (= e!1267424 (getRuleFromTag!770 thiss!23328 (t!186782 (t!186782 rules!3198)) (tag!4415 (rule!6178 separatorToken!354))))))

(declare-fun d!612335 () Bool)

(declare-fun e!1267421 () Bool)

(assert (=> d!612335 e!1267421))

(declare-fun res!879690 () Bool)

(assert (=> d!612335 (=> res!879690 e!1267421)))

(declare-fun lt!753242 () Option!4592)

(assert (=> d!612335 (= res!879690 (isEmpty!13662 lt!753242))))

(declare-fun e!1267423 () Option!4592)

(assert (=> d!612335 (= lt!753242 e!1267423)))

(declare-fun c!323976 () Bool)

(assert (=> d!612335 (= c!323976 (and (is-Cons!22039 (t!186782 rules!3198)) (= (tag!4415 (h!27440 (t!186782 rules!3198))) (tag!4415 (rule!6178 separatorToken!354)))))))

(assert (=> d!612335 (rulesInvariant!3175 thiss!23328 (t!186782 rules!3198))))

(assert (=> d!612335 (= (getRuleFromTag!770 thiss!23328 (t!186782 rules!3198) (tag!4415 (rule!6178 separatorToken!354))) lt!753242)))

(declare-fun b!2005863 () Bool)

(declare-fun e!1267422 () Bool)

(assert (=> b!2005863 (= e!1267422 (= (tag!4415 (get!6961 lt!753242)) (tag!4415 (rule!6178 separatorToken!354))))))

(declare-fun b!2005864 () Bool)

(assert (=> b!2005864 (= e!1267423 e!1267424)))

(declare-fun c!323975 () Bool)

(assert (=> b!2005864 (= c!323975 (and (is-Cons!22039 (t!186782 rules!3198)) (not (= (tag!4415 (h!27440 (t!186782 rules!3198))) (tag!4415 (rule!6178 separatorToken!354))))))))

(declare-fun b!2005865 () Bool)

(assert (=> b!2005865 (= e!1267421 e!1267422)))

(declare-fun res!879689 () Bool)

(assert (=> b!2005865 (=> (not res!879689) (not e!1267422))))

(assert (=> b!2005865 (= res!879689 (contains!4019 (t!186782 rules!3198) (get!6961 lt!753242)))))

(declare-fun b!2005866 () Bool)

(assert (=> b!2005866 (= e!1267424 None!4591)))

(declare-fun b!2005867 () Bool)

(assert (=> b!2005867 (= e!1267423 (Some!4591 (h!27440 (t!186782 rules!3198))))))

(assert (= (and d!612335 c!323976) b!2005867))

(assert (= (and d!612335 (not c!323976)) b!2005864))

(assert (= (and b!2005864 c!323975) b!2005862))

(assert (= (and b!2005864 (not c!323975)) b!2005866))

(assert (= (and d!612335 (not res!879690)) b!2005865))

(assert (= (and b!2005865 res!879689) b!2005863))

(declare-fun m!2437109 () Bool)

(assert (=> b!2005862 m!2437109))

(declare-fun m!2437111 () Bool)

(assert (=> b!2005862 m!2437111))

(declare-fun m!2437113 () Bool)

(assert (=> b!2005862 m!2437113))

(declare-fun m!2437115 () Bool)

(assert (=> d!612335 m!2437115))

(assert (=> d!612335 m!2436349))

(declare-fun m!2437117 () Bool)

(assert (=> b!2005863 m!2437117))

(assert (=> b!2005865 m!2437117))

(assert (=> b!2005865 m!2437117))

(declare-fun m!2437119 () Bool)

(assert (=> b!2005865 m!2437119))

(assert (=> b!2005274 d!612335))

(assert (=> d!611983 d!612149))

(declare-fun bm!122588 () Bool)

(declare-fun call!122594 () Bool)

(declare-fun c!323977 () Bool)

(assert (=> bm!122588 (= call!122594 (validRegex!2152 (ite c!323977 (regOne!11273 (regex!3955 lt!752903)) (regOne!11272 (regex!3955 lt!752903)))))))

(declare-fun b!2005868 () Bool)

(declare-fun res!879695 () Bool)

(declare-fun e!1267429 () Bool)

(assert (=> b!2005868 (=> res!879695 e!1267429)))

(assert (=> b!2005868 (= res!879695 (not (is-Concat!9472 (regex!3955 lt!752903))))))

(declare-fun e!1267425 () Bool)

(assert (=> b!2005868 (= e!1267425 e!1267429)))

(declare-fun b!2005870 () Bool)

(declare-fun e!1267427 () Bool)

(assert (=> b!2005870 (= e!1267427 e!1267425)))

(assert (=> b!2005870 (= c!323977 (is-Union!5380 (regex!3955 lt!752903)))))

(declare-fun bm!122589 () Bool)

(declare-fun call!122593 () Bool)

(declare-fun call!122595 () Bool)

(assert (=> bm!122589 (= call!122593 call!122595)))

(declare-fun b!2005871 () Bool)

(declare-fun e!1267428 () Bool)

(assert (=> b!2005871 (= e!1267428 call!122593)))

(declare-fun b!2005872 () Bool)

(declare-fun res!879691 () Bool)

(assert (=> b!2005872 (=> (not res!879691) (not e!1267428))))

(assert (=> b!2005872 (= res!879691 call!122594)))

(assert (=> b!2005872 (= e!1267425 e!1267428)))

(declare-fun b!2005873 () Bool)

(declare-fun e!1267430 () Bool)

(assert (=> b!2005873 (= e!1267427 e!1267430)))

(declare-fun res!879692 () Bool)

(assert (=> b!2005873 (= res!879692 (not (nullable!1626 (reg!5709 (regex!3955 lt!752903)))))))

(assert (=> b!2005873 (=> (not res!879692) (not e!1267430))))

(declare-fun b!2005874 () Bool)

(assert (=> b!2005874 (= e!1267430 call!122595)))

(declare-fun b!2005875 () Bool)

(declare-fun e!1267426 () Bool)

(assert (=> b!2005875 (= e!1267426 call!122593)))

(declare-fun d!612337 () Bool)

(declare-fun res!879693 () Bool)

(declare-fun e!1267431 () Bool)

(assert (=> d!612337 (=> res!879693 e!1267431)))

(assert (=> d!612337 (= res!879693 (is-ElementMatch!5380 (regex!3955 lt!752903)))))

(assert (=> d!612337 (= (validRegex!2152 (regex!3955 lt!752903)) e!1267431)))

(declare-fun b!2005869 () Bool)

(assert (=> b!2005869 (= e!1267431 e!1267427)))

(declare-fun c!323978 () Bool)

(assert (=> b!2005869 (= c!323978 (is-Star!5380 (regex!3955 lt!752903)))))

(declare-fun bm!122590 () Bool)

(assert (=> bm!122590 (= call!122595 (validRegex!2152 (ite c!323978 (reg!5709 (regex!3955 lt!752903)) (ite c!323977 (regTwo!11273 (regex!3955 lt!752903)) (regTwo!11272 (regex!3955 lt!752903))))))))

(declare-fun b!2005876 () Bool)

(assert (=> b!2005876 (= e!1267429 e!1267426)))

(declare-fun res!879694 () Bool)

(assert (=> b!2005876 (=> (not res!879694) (not e!1267426))))

(assert (=> b!2005876 (= res!879694 call!122594)))

(assert (= (and d!612337 (not res!879693)) b!2005869))

(assert (= (and b!2005869 c!323978) b!2005873))

(assert (= (and b!2005869 (not c!323978)) b!2005870))

(assert (= (and b!2005873 res!879692) b!2005874))

(assert (= (and b!2005870 c!323977) b!2005872))

(assert (= (and b!2005870 (not c!323977)) b!2005868))

(assert (= (and b!2005872 res!879691) b!2005871))

(assert (= (and b!2005868 (not res!879695)) b!2005876))

(assert (= (and b!2005876 res!879694) b!2005875))

(assert (= (or b!2005872 b!2005876) bm!122588))

(assert (= (or b!2005871 b!2005875) bm!122589))

(assert (= (or b!2005874 bm!122589) bm!122590))

(declare-fun m!2437121 () Bool)

(assert (=> bm!122588 m!2437121))

(declare-fun m!2437123 () Bool)

(assert (=> b!2005873 m!2437123))

(declare-fun m!2437125 () Bool)

(assert (=> bm!122590 m!2437125))

(assert (=> d!611983 d!612337))

(declare-fun d!612339 () Bool)

(declare-fun lt!753243 () Int)

(assert (=> d!612339 (>= lt!753243 0)))

(declare-fun e!1267432 () Int)

(assert (=> d!612339 (= lt!753243 e!1267432)))

(declare-fun c!323979 () Bool)

(assert (=> d!612339 (= c!323979 (is-Nil!22037 (_2!11821 (get!6960 lt!752969))))))

(assert (=> d!612339 (= (size!17229 (_2!11821 (get!6960 lt!752969))) lt!753243)))

(declare-fun b!2005877 () Bool)

(assert (=> b!2005877 (= e!1267432 0)))

(declare-fun b!2005878 () Bool)

(assert (=> b!2005878 (= e!1267432 (+ 1 (size!17229 (t!186780 (_2!11821 (get!6960 lt!752969))))))))

(assert (= (and d!612339 c!323979) b!2005877))

(assert (= (and d!612339 (not c!323979)) b!2005878))

(declare-fun m!2437127 () Bool)

(assert (=> b!2005878 m!2437127))

(assert (=> b!2004864 d!612339))

(assert (=> b!2004864 d!612181))

(declare-fun d!612341 () Bool)

(declare-fun lt!753244 () Int)

(assert (=> d!612341 (>= lt!753244 0)))

(declare-fun e!1267433 () Int)

(assert (=> d!612341 (= lt!753244 e!1267433)))

(declare-fun c!323980 () Bool)

(assert (=> d!612341 (= c!323980 (is-Nil!22037 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (=> d!612341 (= (size!17229 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!753244)))

(declare-fun b!2005879 () Bool)

(assert (=> b!2005879 (= e!1267433 0)))

(declare-fun b!2005880 () Bool)

(assert (=> b!2005880 (= e!1267433 (+ 1 (size!17229 (t!186780 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(assert (= (and d!612341 c!323980) b!2005879))

(assert (= (and d!612341 (not c!323980)) b!2005880))

(declare-fun m!2437129 () Bool)

(assert (=> b!2005880 m!2437129))

(assert (=> b!2004864 d!612341))

(declare-fun bs!419462 () Bool)

(declare-fun d!612343 () Bool)

(assert (= bs!419462 (and d!612343 d!612199)))

(declare-fun lambda!75960 () Int)

(assert (=> bs!419462 (= lambda!75960 lambda!75953)))

(assert (=> d!612343 true))

(declare-fun lt!753247 () Bool)

(assert (=> d!612343 (= lt!753247 (rulesValidInductive!1357 thiss!23328 rules!3198))))

(assert (=> d!612343 (= lt!753247 (forall!4681 rules!3198 lambda!75960))))

(assert (=> d!612343 (= (rulesValid!1469 thiss!23328 rules!3198) lt!753247)))

(declare-fun bs!419463 () Bool)

(assert (= bs!419463 d!612343))

(assert (=> bs!419463 m!2435857))

(declare-fun m!2437131 () Bool)

(assert (=> bs!419463 m!2437131))

(assert (=> d!612015 d!612343))

(declare-fun d!612345 () Bool)

(assert (=> d!612345 (= (list!8964 (ite c!323806 call!122520 call!122519)) (list!8968 (c!323781 (ite c!323806 call!122520 call!122519))))))

(declare-fun bs!419464 () Bool)

(assert (= bs!419464 d!612345))

(declare-fun m!2437133 () Bool)

(assert (=> bs!419464 m!2437133))

(assert (=> bm!122517 d!612345))

(declare-fun d!612347 () Bool)

(declare-fun lt!753248 () Bool)

(declare-fun e!1267434 () Bool)

(assert (=> d!612347 (= lt!753248 e!1267434)))

(declare-fun res!879696 () Bool)

(assert (=> d!612347 (=> (not res!879696) (not e!1267434))))

(assert (=> d!612347 (= res!879696 (= (list!8966 (_1!11823 (lex!1590 thiss!23328 rules!3198 (print!1536 thiss!23328 (singletonSeq!1937 (h!27439 tokens!598)))))) (list!8966 (singletonSeq!1937 (h!27439 tokens!598)))))))

(declare-fun e!1267435 () Bool)

(assert (=> d!612347 (= lt!753248 e!1267435)))

(declare-fun res!879697 () Bool)

(assert (=> d!612347 (=> (not res!879697) (not e!1267435))))

(declare-fun lt!753249 () tuple2!20708)

(assert (=> d!612347 (= res!879697 (= (size!17230 (_1!11823 lt!753249)) 1))))

(assert (=> d!612347 (= lt!753249 (lex!1590 thiss!23328 rules!3198 (print!1536 thiss!23328 (singletonSeq!1937 (h!27439 tokens!598)))))))

(assert (=> d!612347 (not (isEmpty!13654 rules!3198))))

(assert (=> d!612347 (= (rulesProduceIndividualToken!1740 thiss!23328 rules!3198 (h!27439 tokens!598)) lt!753248)))

(declare-fun b!2005881 () Bool)

(declare-fun res!879698 () Bool)

(assert (=> b!2005881 (=> (not res!879698) (not e!1267435))))

(assert (=> b!2005881 (= res!879698 (= (apply!5769 (_1!11823 lt!753249) 0) (h!27439 tokens!598)))))

(declare-fun b!2005882 () Bool)

(assert (=> b!2005882 (= e!1267435 (isEmpty!13660 (_2!11823 lt!753249)))))

(declare-fun b!2005883 () Bool)

(assert (=> b!2005883 (= e!1267434 (isEmpty!13660 (_2!11823 (lex!1590 thiss!23328 rules!3198 (print!1536 thiss!23328 (singletonSeq!1937 (h!27439 tokens!598)))))))))

(assert (= (and d!612347 res!879697) b!2005881))

(assert (= (and b!2005881 res!879698) b!2005882))

(assert (= (and d!612347 res!879696) b!2005883))

(assert (=> d!612347 m!2435733))

(declare-fun m!2437135 () Bool)

(assert (=> d!612347 m!2437135))

(assert (=> d!612347 m!2435927))

(assert (=> d!612347 m!2435927))

(assert (=> d!612347 m!2435929))

(assert (=> d!612347 m!2435927))

(declare-fun m!2437137 () Bool)

(assert (=> d!612347 m!2437137))

(declare-fun m!2437139 () Bool)

(assert (=> d!612347 m!2437139))

(assert (=> d!612347 m!2435929))

(declare-fun m!2437141 () Bool)

(assert (=> d!612347 m!2437141))

(declare-fun m!2437143 () Bool)

(assert (=> b!2005881 m!2437143))

(declare-fun m!2437145 () Bool)

(assert (=> b!2005882 m!2437145))

(assert (=> b!2005883 m!2435927))

(assert (=> b!2005883 m!2435927))

(assert (=> b!2005883 m!2435929))

(assert (=> b!2005883 m!2435929))

(assert (=> b!2005883 m!2437141))

(declare-fun m!2437147 () Bool)

(assert (=> b!2005883 m!2437147))

(assert (=> b!2005048 d!612347))

(assert (=> b!2005249 d!612297))

(assert (=> b!2005249 d!612291))

(declare-fun bm!122591 () Bool)

(declare-fun call!122596 () Bool)

(assert (=> bm!122591 (= call!122596 (isEmpty!13657 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969))))))))

(declare-fun b!2005885 () Bool)

(declare-fun e!1267439 () Bool)

(declare-fun lt!753250 () Bool)

(assert (=> b!2005885 (= e!1267439 (= lt!753250 call!122596))))

(declare-fun b!2005886 () Bool)

(declare-fun e!1267441 () Bool)

(assert (=> b!2005886 (= e!1267441 (nullable!1626 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!752969))))))))

(declare-fun b!2005887 () Bool)

(declare-fun res!879703 () Bool)

(declare-fun e!1267438 () Bool)

(assert (=> b!2005887 (=> (not res!879703) (not e!1267438))))

(assert (=> b!2005887 (= res!879703 (not call!122596))))

(declare-fun b!2005888 () Bool)

(declare-fun e!1267436 () Bool)

(declare-fun e!1267440 () Bool)

(assert (=> b!2005888 (= e!1267436 e!1267440)))

(declare-fun res!879705 () Bool)

(assert (=> b!2005888 (=> (not res!879705) (not e!1267440))))

(assert (=> b!2005888 (= res!879705 (not lt!753250))))

(declare-fun b!2005889 () Bool)

(declare-fun res!879702 () Bool)

(assert (=> b!2005889 (=> (not res!879702) (not e!1267438))))

(assert (=> b!2005889 (= res!879702 (isEmpty!13657 (tail!3015 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969)))))))))

(declare-fun b!2005890 () Bool)

(declare-fun e!1267442 () Bool)

(assert (=> b!2005890 (= e!1267442 (not lt!753250))))

(declare-fun b!2005891 () Bool)

(declare-fun e!1267437 () Bool)

(assert (=> b!2005891 (= e!1267440 e!1267437)))

(declare-fun res!879699 () Bool)

(assert (=> b!2005891 (=> res!879699 e!1267437)))

(assert (=> b!2005891 (= res!879699 call!122596)))

(declare-fun b!2005892 () Bool)

(declare-fun res!879704 () Bool)

(assert (=> b!2005892 (=> res!879704 e!1267436)))

(assert (=> b!2005892 (= res!879704 e!1267438)))

(declare-fun res!879701 () Bool)

(assert (=> b!2005892 (=> (not res!879701) (not e!1267438))))

(assert (=> b!2005892 (= res!879701 lt!753250)))

(declare-fun b!2005884 () Bool)

(assert (=> b!2005884 (= e!1267437 (not (= (head!4531 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969))))) (c!323780 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!752969))))))))))

(declare-fun d!612349 () Bool)

(assert (=> d!612349 e!1267439))

(declare-fun c!323983 () Bool)

(assert (=> d!612349 (= c!323983 (is-EmptyExpr!5380 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!752969))))))))

(assert (=> d!612349 (= lt!753250 e!1267441)))

(declare-fun c!323981 () Bool)

(assert (=> d!612349 (= c!323981 (isEmpty!13657 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969))))))))

(assert (=> d!612349 (validRegex!2152 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))))

(assert (=> d!612349 (= (matchR!2646 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))) (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969))))) lt!753250)))

(declare-fun b!2005893 () Bool)

(declare-fun res!879700 () Bool)

(assert (=> b!2005893 (=> res!879700 e!1267436)))

(assert (=> b!2005893 (= res!879700 (not (is-ElementMatch!5380 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))))))

(assert (=> b!2005893 (= e!1267442 e!1267436)))

(declare-fun b!2005894 () Bool)

(assert (=> b!2005894 (= e!1267438 (= (head!4531 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969))))) (c!323780 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))))))

(declare-fun b!2005895 () Bool)

(declare-fun res!879706 () Bool)

(assert (=> b!2005895 (=> res!879706 e!1267437)))

(assert (=> b!2005895 (= res!879706 (not (isEmpty!13657 (tail!3015 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969))))))))))

(declare-fun b!2005896 () Bool)

(assert (=> b!2005896 (= e!1267439 e!1267442)))

(declare-fun c!323982 () Bool)

(assert (=> b!2005896 (= c!323982 (is-EmptyLang!5380 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!752969))))))))

(declare-fun b!2005897 () Bool)

(assert (=> b!2005897 (= e!1267441 (matchR!2646 (derivativeStep!1385 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))) (head!4531 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969)))))) (tail!3015 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969)))))))))

(assert (= (and d!612349 c!323981) b!2005886))

(assert (= (and d!612349 (not c!323981)) b!2005897))

(assert (= (and d!612349 c!323983) b!2005885))

(assert (= (and d!612349 (not c!323983)) b!2005896))

(assert (= (and b!2005896 c!323982) b!2005890))

(assert (= (and b!2005896 (not c!323982)) b!2005893))

(assert (= (and b!2005893 (not res!879700)) b!2005892))

(assert (= (and b!2005892 res!879701) b!2005887))

(assert (= (and b!2005887 res!879703) b!2005889))

(assert (= (and b!2005889 res!879702) b!2005894))

(assert (= (and b!2005892 (not res!879704)) b!2005888))

(assert (= (and b!2005888 res!879705) b!2005891))

(assert (= (and b!2005891 (not res!879699)) b!2005895))

(assert (= (and b!2005895 (not res!879706)) b!2005884))

(assert (= (or b!2005885 b!2005887 b!2005891) bm!122591))

(assert (=> b!2005894 m!2435861))

(declare-fun m!2437149 () Bool)

(assert (=> b!2005894 m!2437149))

(assert (=> b!2005895 m!2435861))

(declare-fun m!2437151 () Bool)

(assert (=> b!2005895 m!2437151))

(assert (=> b!2005895 m!2437151))

(declare-fun m!2437153 () Bool)

(assert (=> b!2005895 m!2437153))

(assert (=> b!2005889 m!2435861))

(assert (=> b!2005889 m!2437151))

(assert (=> b!2005889 m!2437151))

(assert (=> b!2005889 m!2437153))

(declare-fun m!2437155 () Bool)

(assert (=> b!2005886 m!2437155))

(assert (=> d!612349 m!2435861))

(declare-fun m!2437157 () Bool)

(assert (=> d!612349 m!2437157))

(declare-fun m!2437159 () Bool)

(assert (=> d!612349 m!2437159))

(assert (=> b!2005897 m!2435861))

(assert (=> b!2005897 m!2437149))

(assert (=> b!2005897 m!2437149))

(declare-fun m!2437161 () Bool)

(assert (=> b!2005897 m!2437161))

(assert (=> b!2005897 m!2435861))

(assert (=> b!2005897 m!2437151))

(assert (=> b!2005897 m!2437161))

(assert (=> b!2005897 m!2437151))

(declare-fun m!2437163 () Bool)

(assert (=> b!2005897 m!2437163))

(assert (=> bm!122591 m!2435861))

(assert (=> bm!122591 m!2437157))

(assert (=> b!2005884 m!2435861))

(assert (=> b!2005884 m!2437149))

(assert (=> b!2004868 d!612349))

(assert (=> b!2004868 d!612181))

(assert (=> b!2004868 d!612277))

(assert (=> b!2004868 d!612279))

(declare-fun bs!419465 () Bool)

(declare-fun d!612351 () Bool)

(assert (= bs!419465 (and d!612351 d!612079)))

(declare-fun lambda!75963 () Int)

(assert (=> bs!419465 (= lambda!75963 lambda!75945)))

(assert (=> d!612351 true))

(assert (=> d!612351 (< (dynLambda!10816 order!13963 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (dynLambda!10827 order!13971 lambda!75963))))

(assert (=> d!612351 true))

(assert (=> d!612351 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (dynLambda!10827 order!13971 lambda!75963))))

(declare-fun Forall!1014 (Int) Bool)

(assert (=> d!612351 (= (semiInverseModEq!1582 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (Forall!1014 lambda!75963))))

(declare-fun bs!419466 () Bool)

(assert (= bs!419466 d!612351))

(declare-fun m!2437165 () Bool)

(assert (=> bs!419466 m!2437165))

(assert (=> d!612005 d!612351))

(declare-fun d!612353 () Bool)

(declare-fun lt!753251 () BalanceConc!14540)

(assert (=> d!612353 (= (list!8964 lt!753251) (printList!1101 thiss!23328 (list!8966 (singletonSeq!1937 (h!27439 tokens!598)))))))

(assert (=> d!612353 (= lt!753251 (printTailRec!1042 thiss!23328 (singletonSeq!1937 (h!27439 tokens!598)) 0 (BalanceConc!14541 Empty!7362)))))

(assert (=> d!612353 (= (print!1536 thiss!23328 (singletonSeq!1937 (h!27439 tokens!598))) lt!753251)))

(declare-fun bs!419467 () Bool)

(assert (= bs!419467 d!612353))

(declare-fun m!2437167 () Bool)

(assert (=> bs!419467 m!2437167))

(assert (=> bs!419467 m!2435927))

(assert (=> bs!419467 m!2437137))

(assert (=> bs!419467 m!2437137))

(declare-fun m!2437169 () Bool)

(assert (=> bs!419467 m!2437169))

(assert (=> bs!419467 m!2435927))

(assert (=> bs!419467 m!2435931))

(assert (=> b!2004950 d!612353))

(declare-fun d!612355 () Bool)

(declare-fun e!1267443 () Bool)

(assert (=> d!612355 e!1267443))

(declare-fun res!879707 () Bool)

(assert (=> d!612355 (=> (not res!879707) (not e!1267443))))

(declare-fun lt!753252 () BalanceConc!14544)

(assert (=> d!612355 (= res!879707 (= (list!8966 lt!753252) (Cons!22038 (h!27439 tokens!598) Nil!22038)))))

(assert (=> d!612355 (= lt!753252 (singleton!865 (h!27439 tokens!598)))))

(assert (=> d!612355 (= (singletonSeq!1937 (h!27439 tokens!598)) lt!753252)))

(declare-fun b!2005902 () Bool)

(assert (=> b!2005902 (= e!1267443 (isBalanced!2291 (c!323891 lt!753252)))))

(assert (= (and d!612355 res!879707) b!2005902))

(declare-fun m!2437171 () Bool)

(assert (=> d!612355 m!2437171))

(declare-fun m!2437173 () Bool)

(assert (=> d!612355 m!2437173))

(declare-fun m!2437175 () Bool)

(assert (=> b!2005902 m!2437175))

(assert (=> b!2004950 d!612355))

(declare-fun d!612357 () Bool)

(declare-fun lt!753280 () BalanceConc!14540)

(declare-fun printListTailRec!470 (LexerInterface!3568 List!22120 List!22119) List!22119)

(declare-fun dropList!801 (BalanceConc!14544 Int) List!22120)

(assert (=> d!612357 (= (list!8964 lt!753280) (printListTailRec!470 thiss!23328 (dropList!801 (singletonSeq!1937 (h!27439 tokens!598)) 0) (list!8964 (BalanceConc!14541 Empty!7362))))))

(declare-fun e!1267461 () BalanceConc!14540)

(assert (=> d!612357 (= lt!753280 e!1267461)))

(declare-fun c!323989 () Bool)

(assert (=> d!612357 (= c!323989 (>= 0 (size!17230 (singletonSeq!1937 (h!27439 tokens!598)))))))

(declare-fun e!1267460 () Bool)

(assert (=> d!612357 e!1267460))

(declare-fun res!879722 () Bool)

(assert (=> d!612357 (=> (not res!879722) (not e!1267460))))

(assert (=> d!612357 (= res!879722 (>= 0 0))))

(assert (=> d!612357 (= (printTailRec!1042 thiss!23328 (singletonSeq!1937 (h!27439 tokens!598)) 0 (BalanceConc!14541 Empty!7362)) lt!753280)))

(declare-fun b!2005927 () Bool)

(assert (=> b!2005927 (= e!1267460 (<= 0 (size!17230 (singletonSeq!1937 (h!27439 tokens!598)))))))

(declare-fun b!2005928 () Bool)

(assert (=> b!2005928 (= e!1267461 (BalanceConc!14541 Empty!7362))))

(declare-fun b!2005929 () Bool)

(declare-fun ++!5948 (BalanceConc!14540 BalanceConc!14540) BalanceConc!14540)

(assert (=> b!2005929 (= e!1267461 (printTailRec!1042 thiss!23328 (singletonSeq!1937 (h!27439 tokens!598)) (+ 0 1) (++!5948 (BalanceConc!14541 Empty!7362) (charsOf!2495 (apply!5769 (singletonSeq!1937 (h!27439 tokens!598)) 0)))))))

(declare-fun lt!753276 () List!22120)

(assert (=> b!2005929 (= lt!753276 (list!8966 (singletonSeq!1937 (h!27439 tokens!598))))))

(declare-fun lt!753277 () Unit!36581)

(declare-fun lemmaDropApply!725 (List!22120 Int) Unit!36581)

(assert (=> b!2005929 (= lt!753277 (lemmaDropApply!725 lt!753276 0))))

(declare-fun drop!1100 (List!22120 Int) List!22120)

(assert (=> b!2005929 (= (head!4529 (drop!1100 lt!753276 0)) (apply!5772 lt!753276 0))))

(declare-fun lt!753278 () Unit!36581)

(assert (=> b!2005929 (= lt!753278 lt!753277)))

(declare-fun lt!753281 () List!22120)

(assert (=> b!2005929 (= lt!753281 (list!8966 (singletonSeq!1937 (h!27439 tokens!598))))))

(declare-fun lt!753279 () Unit!36581)

(declare-fun lemmaDropTail!701 (List!22120 Int) Unit!36581)

(assert (=> b!2005929 (= lt!753279 (lemmaDropTail!701 lt!753281 0))))

(declare-fun tail!3017 (List!22120) List!22120)

(assert (=> b!2005929 (= (tail!3017 (drop!1100 lt!753281 0)) (drop!1100 lt!753281 (+ 0 1)))))

(declare-fun lt!753282 () Unit!36581)

(assert (=> b!2005929 (= lt!753282 lt!753279)))

(assert (= (and d!612357 res!879722) b!2005927))

(assert (= (and d!612357 c!323989) b!2005928))

(assert (= (and d!612357 (not c!323989)) b!2005929))

(assert (=> d!612357 m!2435927))

(declare-fun m!2437211 () Bool)

(assert (=> d!612357 m!2437211))

(declare-fun m!2437213 () Bool)

(assert (=> d!612357 m!2437213))

(declare-fun m!2437215 () Bool)

(assert (=> d!612357 m!2437215))

(declare-fun m!2437217 () Bool)

(assert (=> d!612357 m!2437217))

(declare-fun m!2437219 () Bool)

(assert (=> d!612357 m!2437219))

(assert (=> d!612357 m!2435927))

(assert (=> d!612357 m!2437213))

(assert (=> d!612357 m!2437215))

(assert (=> b!2005927 m!2435927))

(assert (=> b!2005927 m!2437211))

(declare-fun m!2437221 () Bool)

(assert (=> b!2005929 m!2437221))

(assert (=> b!2005929 m!2435927))

(declare-fun m!2437223 () Bool)

(assert (=> b!2005929 m!2437223))

(assert (=> b!2005929 m!2435927))

(assert (=> b!2005929 m!2437137))

(declare-fun m!2437225 () Bool)

(assert (=> b!2005929 m!2437225))

(assert (=> b!2005929 m!2435927))

(declare-fun m!2437227 () Bool)

(assert (=> b!2005929 m!2437227))

(declare-fun m!2437229 () Bool)

(assert (=> b!2005929 m!2437229))

(declare-fun m!2437231 () Bool)

(assert (=> b!2005929 m!2437231))

(declare-fun m!2437233 () Bool)

(assert (=> b!2005929 m!2437233))

(declare-fun m!2437235 () Bool)

(assert (=> b!2005929 m!2437235))

(assert (=> b!2005929 m!2437223))

(declare-fun m!2437237 () Bool)

(assert (=> b!2005929 m!2437237))

(assert (=> b!2005929 m!2437235))

(declare-fun m!2437239 () Bool)

(assert (=> b!2005929 m!2437239))

(declare-fun m!2437241 () Bool)

(assert (=> b!2005929 m!2437241))

(assert (=> b!2005929 m!2437237))

(assert (=> b!2005929 m!2437227))

(assert (=> b!2005929 m!2437231))

(declare-fun m!2437243 () Bool)

(assert (=> b!2005929 m!2437243))

(assert (=> b!2004950 d!612357))

(declare-fun b!2006068 () Bool)

(declare-fun e!1267540 () Unit!36581)

(declare-fun Unit!36596 () Unit!36581)

(assert (=> b!2006068 (= e!1267540 Unit!36596)))

(declare-fun b!2006065 () Bool)

(declare-fun res!879820 () Bool)

(declare-fun e!1267541 () Bool)

(assert (=> b!2006065 (=> (not res!879820) (not e!1267541))))

(declare-fun lt!753378 () Token!7462)

(assert (=> b!2006065 (= res!879820 (matchR!2646 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 lt!753378))))) (list!8964 (charsOf!2495 lt!753378))))))

(declare-fun b!2006067 () Bool)

(declare-fun Unit!36597 () Unit!36581)

(assert (=> b!2006067 (= e!1267540 Unit!36597)))

(declare-fun lt!753371 () List!22119)

(assert (=> b!2006067 (= lt!753371 (++!5946 call!122523 lt!752996))))

(declare-fun lt!753383 () Unit!36581)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!380 (LexerInterface!3568 Rule!7710 List!22121 List!22119) Unit!36581)

(assert (=> b!2006067 (= lt!753383 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!380 thiss!23328 (rule!6178 lt!753378) rules!3198 lt!753371))))

(assert (=> b!2006067 (isEmpty!13658 (maxPrefixOneRule!1240 thiss!23328 (rule!6178 lt!753378) lt!753371))))

(declare-fun lt!753379 () Unit!36581)

(assert (=> b!2006067 (= lt!753379 lt!753383)))

(declare-fun lt!753373 () List!22119)

(assert (=> b!2006067 (= lt!753373 (list!8964 (charsOf!2495 lt!753378)))))

(declare-fun lt!753369 () Unit!36581)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!376 (LexerInterface!3568 Rule!7710 List!22119 List!22119) Unit!36581)

(assert (=> b!2006067 (= lt!753369 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!376 thiss!23328 (rule!6178 lt!753378) lt!753373 (++!5946 call!122523 lt!752996)))))

(assert (=> b!2006067 (not (matchR!2646 (regex!3955 (rule!6178 lt!753378)) lt!753373))))

(declare-fun lt!753367 () Unit!36581)

(assert (=> b!2006067 (= lt!753367 lt!753369)))

(assert (=> b!2006067 false))

(declare-fun d!612371 () Bool)

(assert (=> d!612371 (isDefined!3880 (maxPrefix!2004 thiss!23328 rules!3198 (++!5946 call!122523 lt!752996)))))

(declare-fun lt!753368 () Unit!36581)

(assert (=> d!612371 (= lt!753368 e!1267540)))

(declare-fun c!324004 () Bool)

(assert (=> d!612371 (= c!324004 (isEmpty!13658 (maxPrefix!2004 thiss!23328 rules!3198 (++!5946 call!122523 lt!752996))))))

(declare-fun lt!753374 () Unit!36581)

(declare-fun lt!753372 () Unit!36581)

(assert (=> d!612371 (= lt!753374 lt!753372)))

(assert (=> d!612371 e!1267541))

(declare-fun res!879821 () Bool)

(assert (=> d!612371 (=> (not res!879821) (not e!1267541))))

(assert (=> d!612371 (= res!879821 (isDefined!3879 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 lt!753378)))))))

(assert (=> d!612371 (= lt!753372 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!770 thiss!23328 rules!3198 call!122523 lt!753378))))

(declare-fun lt!753382 () Unit!36581)

(declare-fun lt!753376 () Unit!36581)

(assert (=> d!612371 (= lt!753382 lt!753376)))

(declare-fun lt!753381 () List!22119)

(assert (=> d!612371 (isPrefix!1958 lt!753381 (++!5946 call!122523 lt!752996))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!372 (List!22119 List!22119 List!22119) Unit!36581)

(assert (=> d!612371 (= lt!753376 (lemmaPrefixStaysPrefixWhenAddingToSuffix!372 lt!753381 call!122523 lt!752996))))

(assert (=> d!612371 (= lt!753381 (list!8964 (charsOf!2495 lt!753378)))))

(declare-fun lt!753370 () Unit!36581)

(declare-fun lt!753375 () Unit!36581)

(assert (=> d!612371 (= lt!753370 lt!753375)))

(declare-fun lt!753377 () List!22119)

(declare-fun lt!753380 () List!22119)

(assert (=> d!612371 (isPrefix!1958 lt!753377 (++!5946 lt!753377 lt!753380))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1339 (List!22119 List!22119) Unit!36581)

(assert (=> d!612371 (= lt!753375 (lemmaConcatTwoListThenFirstIsPrefix!1339 lt!753377 lt!753380))))

(assert (=> d!612371 (= lt!753380 (_2!11821 (get!6960 (maxPrefix!2004 thiss!23328 rules!3198 call!122523))))))

(assert (=> d!612371 (= lt!753377 (list!8964 (charsOf!2495 lt!753378)))))

(assert (=> d!612371 (= lt!753378 (head!4529 (list!8966 (_1!11823 (lex!1590 thiss!23328 rules!3198 (seqFromList!2809 call!122523))))))))

(assert (=> d!612371 (not (isEmpty!13654 rules!3198))))

(assert (=> d!612371 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!752 thiss!23328 rules!3198 call!122523 lt!752996) lt!753368)))

(declare-fun b!2006066 () Bool)

(assert (=> b!2006066 (= e!1267541 (= (rule!6178 lt!753378) (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 lt!753378))))))))

(assert (= (and d!612371 res!879821) b!2006065))

(assert (= (and b!2006065 res!879820) b!2006066))

(assert (= (and d!612371 c!324004) b!2006067))

(assert (= (and d!612371 (not c!324004)) b!2006068))

(declare-fun m!2437519 () Bool)

(assert (=> b!2006065 m!2437519))

(declare-fun m!2437521 () Bool)

(assert (=> b!2006065 m!2437521))

(declare-fun m!2437523 () Bool)

(assert (=> b!2006065 m!2437523))

(declare-fun m!2437525 () Bool)

(assert (=> b!2006065 m!2437525))

(declare-fun m!2437527 () Bool)

(assert (=> b!2006065 m!2437527))

(assert (=> b!2006065 m!2437519))

(assert (=> b!2006065 m!2437523))

(assert (=> b!2006065 m!2437525))

(declare-fun m!2437529 () Bool)

(assert (=> b!2006067 m!2437529))

(declare-fun m!2437531 () Bool)

(assert (=> b!2006067 m!2437531))

(assert (=> b!2006067 m!2437529))

(declare-fun m!2437533 () Bool)

(assert (=> b!2006067 m!2437533))

(declare-fun m!2437535 () Bool)

(assert (=> b!2006067 m!2437535))

(declare-fun m!2437537 () Bool)

(assert (=> b!2006067 m!2437537))

(assert (=> b!2006067 m!2437523))

(assert (=> b!2006067 m!2437535))

(declare-fun m!2437539 () Bool)

(assert (=> b!2006067 m!2437539))

(assert (=> b!2006067 m!2437523))

(assert (=> b!2006067 m!2437525))

(declare-fun m!2437541 () Bool)

(assert (=> d!612371 m!2437541))

(declare-fun m!2437543 () Bool)

(assert (=> d!612371 m!2437543))

(declare-fun m!2437545 () Bool)

(assert (=> d!612371 m!2437545))

(declare-fun m!2437547 () Bool)

(assert (=> d!612371 m!2437547))

(declare-fun m!2437549 () Bool)

(assert (=> d!612371 m!2437549))

(declare-fun m!2437551 () Bool)

(assert (=> d!612371 m!2437551))

(assert (=> d!612371 m!2437547))

(assert (=> d!612371 m!2435733))

(assert (=> d!612371 m!2437535))

(assert (=> d!612371 m!2437543))

(declare-fun m!2437553 () Bool)

(assert (=> d!612371 m!2437553))

(declare-fun m!2437555 () Bool)

(assert (=> d!612371 m!2437555))

(assert (=> d!612371 m!2437535))

(declare-fun m!2437557 () Bool)

(assert (=> d!612371 m!2437557))

(assert (=> d!612371 m!2437519))

(assert (=> d!612371 m!2437523))

(assert (=> d!612371 m!2437525))

(declare-fun m!2437559 () Bool)

(assert (=> d!612371 m!2437559))

(declare-fun m!2437561 () Bool)

(assert (=> d!612371 m!2437561))

(declare-fun m!2437563 () Bool)

(assert (=> d!612371 m!2437563))

(assert (=> d!612371 m!2437535))

(assert (=> d!612371 m!2437543))

(assert (=> d!612371 m!2437541))

(declare-fun m!2437565 () Bool)

(assert (=> d!612371 m!2437565))

(declare-fun m!2437567 () Bool)

(assert (=> d!612371 m!2437567))

(assert (=> d!612371 m!2437563))

(declare-fun m!2437569 () Bool)

(assert (=> d!612371 m!2437569))

(assert (=> d!612371 m!2437519))

(declare-fun m!2437571 () Bool)

(assert (=> d!612371 m!2437571))

(assert (=> d!612371 m!2437559))

(assert (=> d!612371 m!2437523))

(assert (=> b!2006066 m!2437519))

(assert (=> b!2006066 m!2437519))

(assert (=> b!2006066 m!2437521))

(assert (=> b!2004950 d!612371))

(declare-fun d!612459 () Bool)

(declare-fun nullableFct!375 (Regex!5380) Bool)

(assert (=> d!612459 (= (nullable!1626 (regex!3955 lt!752901)) (nullableFct!375 (regex!3955 lt!752901)))))

(declare-fun bs!419488 () Bool)

(assert (= bs!419488 d!612459))

(declare-fun m!2437573 () Bool)

(assert (=> bs!419488 m!2437573))

(assert (=> b!2005073 d!612459))

(declare-fun d!612461 () Bool)

(assert (=> d!612461 (= (list!8964 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906))) (list!8968 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906)))))))

(declare-fun bs!419489 () Bool)

(assert (= bs!419489 d!612461))

(declare-fun m!2437575 () Bool)

(assert (=> bs!419489 m!2437575))

(assert (=> d!612079 d!612461))

(assert (=> d!612079 d!612083))

(declare-fun d!612463 () Bool)

(declare-fun dynLambda!10830 (Int BalanceConc!14540) Bool)

(assert (=> d!612463 (dynLambda!10830 lambda!75945 lt!752906)))

(declare-fun lt!753386 () Unit!36581)

(declare-fun choose!12222 (Int BalanceConc!14540) Unit!36581)

(assert (=> d!612463 (= lt!753386 (choose!12222 lambda!75945 lt!752906))))

(assert (=> d!612463 (Forall!1014 lambda!75945)))

(assert (=> d!612463 (= (ForallOf!423 lambda!75945 lt!752906) lt!753386)))

(declare-fun b_lambda!66817 () Bool)

(assert (=> (not b_lambda!66817) (not d!612463)))

(declare-fun bs!419490 () Bool)

(assert (= bs!419490 d!612463))

(declare-fun m!2437577 () Bool)

(assert (=> bs!419490 m!2437577))

(declare-fun m!2437579 () Bool)

(assert (=> bs!419490 m!2437579))

(declare-fun m!2437581 () Bool)

(assert (=> bs!419490 m!2437581))

(assert (=> d!612079 d!612463))

(declare-fun d!612465 () Bool)

(assert (=> d!612465 (= (isEmpty!13658 lt!752912) (not (is-Some!4590 lt!752912)))))

(assert (=> d!612063 d!612465))

(declare-fun lt!753387 () List!22119)

(declare-fun b!2006099 () Bool)

(declare-fun e!1267563 () Bool)

(assert (=> b!2006099 (= e!1267563 (or (not (= (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354) Nil!22037)) (= lt!753387 (t!186780 lt!752900))))))

(declare-fun e!1267564 () List!22119)

(declare-fun b!2006096 () Bool)

(assert (=> b!2006096 (= e!1267564 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))

(declare-fun d!612467 () Bool)

(assert (=> d!612467 e!1267563))

(declare-fun res!879838 () Bool)

(assert (=> d!612467 (=> (not res!879838) (not e!1267563))))

(assert (=> d!612467 (= res!879838 (= (content!3225 lt!753387) (set.union (content!3225 (t!186780 lt!752900)) (content!3225 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))))

(assert (=> d!612467 (= lt!753387 e!1267564)))

(declare-fun c!324011 () Bool)

(assert (=> d!612467 (= c!324011 (is-Nil!22037 (t!186780 lt!752900)))))

(assert (=> d!612467 (= (++!5946 (t!186780 lt!752900) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) lt!753387)))

(declare-fun b!2006098 () Bool)

(declare-fun res!879837 () Bool)

(assert (=> b!2006098 (=> (not res!879837) (not e!1267563))))

(assert (=> b!2006098 (= res!879837 (= (size!17229 lt!753387) (+ (size!17229 (t!186780 lt!752900)) (size!17229 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))))

(declare-fun b!2006097 () Bool)

(assert (=> b!2006097 (= e!1267564 (Cons!22037 (h!27438 (t!186780 lt!752900)) (++!5946 (t!186780 (t!186780 lt!752900)) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(assert (= (and d!612467 c!324011) b!2006096))

(assert (= (and d!612467 (not c!324011)) b!2006097))

(assert (= (and d!612467 res!879838) b!2006098))

(assert (= (and b!2006098 res!879837) b!2006099))

(declare-fun m!2437583 () Bool)

(assert (=> d!612467 m!2437583))

(assert (=> d!612467 m!2436641))

(assert (=> d!612467 m!2435651))

(assert (=> d!612467 m!2436391))

(declare-fun m!2437585 () Bool)

(assert (=> b!2006098 m!2437585))

(assert (=> b!2006098 m!2436723))

(assert (=> b!2006098 m!2435651))

(assert (=> b!2006098 m!2436395))

(assert (=> b!2006097 m!2435651))

(declare-fun m!2437591 () Bool)

(assert (=> b!2006097 m!2437591))

(assert (=> b!2005301 d!612467))

(declare-fun d!612469 () Bool)

(assert (=> d!612469 (= (inv!29194 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354))) (isBalanced!2290 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354)))))))

(declare-fun bs!419491 () Bool)

(assert (= bs!419491 d!612469))

(declare-fun m!2437595 () Bool)

(assert (=> bs!419491 m!2437595))

(assert (=> tb!124881 d!612469))

(declare-fun d!612473 () Bool)

(declare-fun lt!753388 () Bool)

(assert (=> d!612473 (= lt!753388 (set.member (rule!6178 (_1!11821 (get!6960 lt!753078))) (content!3226 rules!3198)))))

(declare-fun e!1267565 () Bool)

(assert (=> d!612473 (= lt!753388 e!1267565)))

(declare-fun res!879840 () Bool)

(assert (=> d!612473 (=> (not res!879840) (not e!1267565))))

(assert (=> d!612473 (= res!879840 (is-Cons!22039 rules!3198))))

(assert (=> d!612473 (= (contains!4019 rules!3198 (rule!6178 (_1!11821 (get!6960 lt!753078)))) lt!753388)))

(declare-fun b!2006100 () Bool)

(declare-fun e!1267566 () Bool)

(assert (=> b!2006100 (= e!1267565 e!1267566)))

(declare-fun res!879839 () Bool)

(assert (=> b!2006100 (=> res!879839 e!1267566)))

(assert (=> b!2006100 (= res!879839 (= (h!27440 rules!3198) (rule!6178 (_1!11821 (get!6960 lt!753078)))))))

(declare-fun b!2006101 () Bool)

(assert (=> b!2006101 (= e!1267566 (contains!4019 (t!186782 rules!3198) (rule!6178 (_1!11821 (get!6960 lt!753078)))))))

(assert (= (and d!612473 res!879840) b!2006100))

(assert (= (and b!2006100 (not res!879839)) b!2006101))

(assert (=> d!612473 m!2436677))

(declare-fun m!2437597 () Bool)

(assert (=> d!612473 m!2437597))

(declare-fun m!2437599 () Bool)

(assert (=> b!2006101 m!2437599))

(assert (=> b!2005223 d!612473))

(assert (=> b!2005223 d!612307))

(declare-fun b!2006103 () Bool)

(declare-fun e!1267567 () List!22119)

(declare-fun e!1267568 () List!22119)

(assert (=> b!2006103 (= e!1267567 e!1267568)))

(declare-fun c!324013 () Bool)

(assert (=> b!2006103 (= c!324013 (is-Leaf!10803 (c!323781 lt!752906)))))

(declare-fun d!612475 () Bool)

(declare-fun c!324012 () Bool)

(assert (=> d!612475 (= c!324012 (is-Empty!7362 (c!323781 lt!752906)))))

(assert (=> d!612475 (= (list!8968 (c!323781 lt!752906)) e!1267567)))

(declare-fun b!2006105 () Bool)

(assert (=> b!2006105 (= e!1267568 (++!5946 (list!8968 (left!17534 (c!323781 lt!752906))) (list!8968 (right!17864 (c!323781 lt!752906)))))))

(declare-fun b!2006102 () Bool)

(assert (=> b!2006102 (= e!1267567 Nil!22037)))

(declare-fun b!2006104 () Bool)

(assert (=> b!2006104 (= e!1267568 (list!8971 (xs!10260 (c!323781 lt!752906))))))

(assert (= (and d!612475 c!324012) b!2006102))

(assert (= (and d!612475 (not c!324012)) b!2006103))

(assert (= (and b!2006103 c!324013) b!2006104))

(assert (= (and b!2006103 (not c!324013)) b!2006105))

(declare-fun m!2437601 () Bool)

(assert (=> b!2006105 m!2437601))

(declare-fun m!2437603 () Bool)

(assert (=> b!2006105 m!2437603))

(assert (=> b!2006105 m!2437601))

(assert (=> b!2006105 m!2437603))

(declare-fun m!2437605 () Bool)

(assert (=> b!2006105 m!2437605))

(declare-fun m!2437607 () Bool)

(assert (=> b!2006104 m!2437607))

(assert (=> d!612083 d!612475))

(declare-fun b!2006110 () Bool)

(declare-fun res!879847 () Bool)

(declare-fun e!1267572 () Bool)

(assert (=> b!2006110 (=> (not res!879847) (not e!1267572))))

(declare-fun lt!753395 () Option!4591)

(assert (=> b!2006110 (= res!879847 (< (size!17229 (_2!11821 (get!6960 lt!753395))) (size!17229 lt!752900)))))

(declare-fun b!2006111 () Bool)

(assert (=> b!2006111 (= e!1267572 (contains!4019 (t!186782 rules!3198) (rule!6178 (_1!11821 (get!6960 lt!753395)))))))

(declare-fun b!2006112 () Bool)

(declare-fun e!1267573 () Option!4591)

(declare-fun lt!753394 () Option!4591)

(declare-fun lt!753393 () Option!4591)

(assert (=> b!2006112 (= e!1267573 (ite (and (is-None!4590 lt!753394) (is-None!4590 lt!753393)) None!4590 (ite (is-None!4590 lt!753393) lt!753394 (ite (is-None!4590 lt!753394) lt!753393 (ite (>= (size!17227 (_1!11821 (v!26819 lt!753394))) (size!17227 (_1!11821 (v!26819 lt!753393)))) lt!753394 lt!753393)))))))

(declare-fun call!122609 () Option!4591)

(assert (=> b!2006112 (= lt!753394 call!122609)))

(assert (=> b!2006112 (= lt!753393 (maxPrefix!2004 thiss!23328 (t!186782 (t!186782 rules!3198)) lt!752900))))

(declare-fun b!2006113 () Bool)

(declare-fun res!879844 () Bool)

(assert (=> b!2006113 (=> (not res!879844) (not e!1267572))))

(assert (=> b!2006113 (= res!879844 (= (value!124310 (_1!11821 (get!6960 lt!753395))) (apply!5768 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753395)))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753395)))))))))

(declare-fun b!2006115 () Bool)

(declare-fun e!1267571 () Bool)

(assert (=> b!2006115 (= e!1267571 e!1267572)))

(declare-fun res!879841 () Bool)

(assert (=> b!2006115 (=> (not res!879841) (not e!1267572))))

(assert (=> b!2006115 (= res!879841 (isDefined!3880 lt!753395))))

(declare-fun b!2006116 () Bool)

(declare-fun res!879845 () Bool)

(assert (=> b!2006116 (=> (not res!879845) (not e!1267572))))

(assert (=> b!2006116 (= res!879845 (= (++!5946 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753395)))) (_2!11821 (get!6960 lt!753395))) lt!752900))))

(declare-fun bm!122604 () Bool)

(assert (=> bm!122604 (= call!122609 (maxPrefixOneRule!1240 thiss!23328 (h!27440 (t!186782 rules!3198)) lt!752900))))

(declare-fun b!2006117 () Bool)

(assert (=> b!2006117 (= e!1267573 call!122609)))

(declare-fun b!2006118 () Bool)

(declare-fun res!879846 () Bool)

(assert (=> b!2006118 (=> (not res!879846) (not e!1267572))))

(assert (=> b!2006118 (= res!879846 (= (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753395)))) (originalCharacters!4762 (_1!11821 (get!6960 lt!753395)))))))

(declare-fun d!612477 () Bool)

(assert (=> d!612477 e!1267571))

(declare-fun res!879843 () Bool)

(assert (=> d!612477 (=> res!879843 e!1267571)))

(assert (=> d!612477 (= res!879843 (isEmpty!13658 lt!753395))))

(assert (=> d!612477 (= lt!753395 e!1267573)))

(declare-fun c!324016 () Bool)

(assert (=> d!612477 (= c!324016 (and (is-Cons!22039 (t!186782 rules!3198)) (is-Nil!22039 (t!186782 (t!186782 rules!3198)))))))

(declare-fun lt!753391 () Unit!36581)

(declare-fun lt!753392 () Unit!36581)

(assert (=> d!612477 (= lt!753391 lt!753392)))

(assert (=> d!612477 (isPrefix!1958 lt!752900 lt!752900)))

(assert (=> d!612477 (= lt!753392 (lemmaIsPrefixRefl!1276 lt!752900 lt!752900))))

(assert (=> d!612477 (rulesValidInductive!1357 thiss!23328 (t!186782 rules!3198))))

(assert (=> d!612477 (= (maxPrefix!2004 thiss!23328 (t!186782 rules!3198) lt!752900) lt!753395)))

(declare-fun b!2006114 () Bool)

(declare-fun res!879842 () Bool)

(assert (=> b!2006114 (=> (not res!879842) (not e!1267572))))

(assert (=> b!2006114 (= res!879842 (matchR!2646 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753395)))) (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753395))))))))

(assert (= (and d!612477 c!324016) b!2006117))

(assert (= (and d!612477 (not c!324016)) b!2006112))

(assert (= (or b!2006117 b!2006112) bm!122604))

(assert (= (and d!612477 (not res!879843)) b!2006115))

(assert (= (and b!2006115 res!879841) b!2006118))

(assert (= (and b!2006118 res!879846) b!2006110))

(assert (= (and b!2006110 res!879847) b!2006116))

(assert (= (and b!2006116 res!879845) b!2006113))

(assert (= (and b!2006113 res!879844) b!2006114))

(assert (= (and b!2006114 res!879842) b!2006111))

(declare-fun m!2437615 () Bool)

(assert (=> b!2006115 m!2437615))

(declare-fun m!2437617 () Bool)

(assert (=> b!2006113 m!2437617))

(declare-fun m!2437619 () Bool)

(assert (=> b!2006113 m!2437619))

(assert (=> b!2006113 m!2437619))

(declare-fun m!2437621 () Bool)

(assert (=> b!2006113 m!2437621))

(assert (=> b!2006111 m!2437617))

(declare-fun m!2437623 () Bool)

(assert (=> b!2006111 m!2437623))

(declare-fun m!2437625 () Bool)

(assert (=> d!612477 m!2437625))

(assert (=> d!612477 m!2436279))

(assert (=> d!612477 m!2436281))

(assert (=> d!612477 m!2436719))

(assert (=> b!2006114 m!2437617))

(declare-fun m!2437627 () Bool)

(assert (=> b!2006114 m!2437627))

(assert (=> b!2006114 m!2437627))

(declare-fun m!2437629 () Bool)

(assert (=> b!2006114 m!2437629))

(assert (=> b!2006114 m!2437629))

(declare-fun m!2437631 () Bool)

(assert (=> b!2006114 m!2437631))

(assert (=> b!2006116 m!2437617))

(assert (=> b!2006116 m!2437627))

(assert (=> b!2006116 m!2437627))

(assert (=> b!2006116 m!2437629))

(assert (=> b!2006116 m!2437629))

(declare-fun m!2437635 () Bool)

(assert (=> b!2006116 m!2437635))

(assert (=> b!2006118 m!2437617))

(assert (=> b!2006118 m!2437627))

(assert (=> b!2006118 m!2437627))

(assert (=> b!2006118 m!2437629))

(assert (=> b!2006110 m!2437617))

(declare-fun m!2437645 () Bool)

(assert (=> b!2006110 m!2437645))

(assert (=> b!2006110 m!2436293))

(declare-fun m!2437649 () Bool)

(assert (=> b!2006112 m!2437649))

(declare-fun m!2437651 () Bool)

(assert (=> bm!122604 m!2437651))

(assert (=> b!2005233 d!612477))

(declare-fun d!612487 () Bool)

(declare-fun charsToInt!0 (List!22118) (_ BitVec 32))

(assert (=> d!612487 (= (inv!16 (value!124310 separatorToken!354)) (= (charsToInt!0 (text!29084 (value!124310 separatorToken!354))) (value!124301 (value!124310 separatorToken!354))))))

(declare-fun bs!419492 () Bool)

(assert (= bs!419492 d!612487))

(declare-fun m!2437655 () Bool)

(assert (=> bs!419492 m!2437655))

(assert (=> b!2005063 d!612487))

(declare-fun bm!122606 () Bool)

(declare-fun call!122611 () Bool)

(assert (=> bm!122606 (= call!122611 (isEmpty!13657 (list!8964 (charsOf!2495 separatorToken!354))))))

(declare-fun b!2006140 () Bool)

(declare-fun e!1267587 () Bool)

(declare-fun lt!753400 () Bool)

(assert (=> b!2006140 (= e!1267587 (= lt!753400 call!122611))))

(declare-fun e!1267589 () Bool)

(declare-fun b!2006141 () Bool)

(assert (=> b!2006141 (= e!1267589 (nullable!1626 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354)))))))))

(declare-fun b!2006142 () Bool)

(declare-fun res!879860 () Bool)

(declare-fun e!1267586 () Bool)

(assert (=> b!2006142 (=> (not res!879860) (not e!1267586))))

(assert (=> b!2006142 (= res!879860 (not call!122611))))

(declare-fun b!2006143 () Bool)

(declare-fun e!1267584 () Bool)

(declare-fun e!1267588 () Bool)

(assert (=> b!2006143 (= e!1267584 e!1267588)))

(declare-fun res!879862 () Bool)

(assert (=> b!2006143 (=> (not res!879862) (not e!1267588))))

(assert (=> b!2006143 (= res!879862 (not lt!753400))))

(declare-fun b!2006144 () Bool)

(declare-fun res!879859 () Bool)

(assert (=> b!2006144 (=> (not res!879859) (not e!1267586))))

(assert (=> b!2006144 (= res!879859 (isEmpty!13657 (tail!3015 (list!8964 (charsOf!2495 separatorToken!354)))))))

(declare-fun b!2006145 () Bool)

(declare-fun e!1267590 () Bool)

(assert (=> b!2006145 (= e!1267590 (not lt!753400))))

(declare-fun b!2006146 () Bool)

(declare-fun e!1267585 () Bool)

(assert (=> b!2006146 (= e!1267588 e!1267585)))

(declare-fun res!879856 () Bool)

(assert (=> b!2006146 (=> res!879856 e!1267585)))

(assert (=> b!2006146 (= res!879856 call!122611)))

(declare-fun b!2006147 () Bool)

(declare-fun res!879861 () Bool)

(assert (=> b!2006147 (=> res!879861 e!1267584)))

(assert (=> b!2006147 (= res!879861 e!1267586)))

(declare-fun res!879858 () Bool)

(assert (=> b!2006147 (=> (not res!879858) (not e!1267586))))

(assert (=> b!2006147 (= res!879858 lt!753400)))

(declare-fun b!2006139 () Bool)

(assert (=> b!2006139 (= e!1267585 (not (= (head!4531 (list!8964 (charsOf!2495 separatorToken!354))) (c!323780 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354)))))))))))

(declare-fun d!612491 () Bool)

(assert (=> d!612491 e!1267587))

(declare-fun c!324025 () Bool)

(assert (=> d!612491 (= c!324025 (is-EmptyExpr!5380 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354)))))))))

(assert (=> d!612491 (= lt!753400 e!1267589)))

(declare-fun c!324023 () Bool)

(assert (=> d!612491 (= c!324023 (isEmpty!13657 (list!8964 (charsOf!2495 separatorToken!354))))))

(assert (=> d!612491 (validRegex!2152 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354))))))))

(assert (=> d!612491 (= (matchR!2646 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354))))) (list!8964 (charsOf!2495 separatorToken!354))) lt!753400)))

(declare-fun b!2006148 () Bool)

(declare-fun res!879857 () Bool)

(assert (=> b!2006148 (=> res!879857 e!1267584)))

(assert (=> b!2006148 (= res!879857 (not (is-ElementMatch!5380 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354))))))))))

(assert (=> b!2006148 (= e!1267590 e!1267584)))

(declare-fun b!2006149 () Bool)

(assert (=> b!2006149 (= e!1267586 (= (head!4531 (list!8964 (charsOf!2495 separatorToken!354))) (c!323780 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354))))))))))

(declare-fun b!2006150 () Bool)

(declare-fun res!879863 () Bool)

(assert (=> b!2006150 (=> res!879863 e!1267585)))

(assert (=> b!2006150 (= res!879863 (not (isEmpty!13657 (tail!3015 (list!8964 (charsOf!2495 separatorToken!354))))))))

(declare-fun b!2006151 () Bool)

(assert (=> b!2006151 (= e!1267587 e!1267590)))

(declare-fun c!324024 () Bool)

(assert (=> b!2006151 (= c!324024 (is-EmptyLang!5380 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354)))))))))

(declare-fun b!2006152 () Bool)

(assert (=> b!2006152 (= e!1267589 (matchR!2646 (derivativeStep!1385 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354))))) (head!4531 (list!8964 (charsOf!2495 separatorToken!354)))) (tail!3015 (list!8964 (charsOf!2495 separatorToken!354)))))))

(assert (= (and d!612491 c!324023) b!2006141))

(assert (= (and d!612491 (not c!324023)) b!2006152))

(assert (= (and d!612491 c!324025) b!2006140))

(assert (= (and d!612491 (not c!324025)) b!2006151))

(assert (= (and b!2006151 c!324024) b!2006145))

(assert (= (and b!2006151 (not c!324024)) b!2006148))

(assert (= (and b!2006148 (not res!879857)) b!2006147))

(assert (= (and b!2006147 res!879858) b!2006142))

(assert (= (and b!2006142 res!879860) b!2006144))

(assert (= (and b!2006144 res!879859) b!2006149))

(assert (= (and b!2006147 (not res!879861)) b!2006143))

(assert (= (and b!2006143 res!879862) b!2006146))

(assert (= (and b!2006146 (not res!879856)) b!2006150))

(assert (= (and b!2006150 (not res!879863)) b!2006139))

(assert (= (or b!2006140 b!2006142 b!2006146) bm!122606))

(assert (=> b!2006149 m!2435683))

(declare-fun m!2437657 () Bool)

(assert (=> b!2006149 m!2437657))

(assert (=> b!2006150 m!2435683))

(declare-fun m!2437659 () Bool)

(assert (=> b!2006150 m!2437659))

(assert (=> b!2006150 m!2437659))

(declare-fun m!2437661 () Bool)

(assert (=> b!2006150 m!2437661))

(assert (=> b!2006144 m!2435683))

(assert (=> b!2006144 m!2437659))

(assert (=> b!2006144 m!2437659))

(assert (=> b!2006144 m!2437661))

(declare-fun m!2437663 () Bool)

(assert (=> b!2006141 m!2437663))

(assert (=> d!612491 m!2435683))

(declare-fun m!2437665 () Bool)

(assert (=> d!612491 m!2437665))

(declare-fun m!2437667 () Bool)

(assert (=> d!612491 m!2437667))

(assert (=> b!2006152 m!2435683))

(assert (=> b!2006152 m!2437657))

(assert (=> b!2006152 m!2437657))

(declare-fun m!2437669 () Bool)

(assert (=> b!2006152 m!2437669))

(assert (=> b!2006152 m!2435683))

(assert (=> b!2006152 m!2437659))

(assert (=> b!2006152 m!2437669))

(assert (=> b!2006152 m!2437659))

(declare-fun m!2437671 () Bool)

(assert (=> b!2006152 m!2437671))

(assert (=> bm!122606 m!2435683))

(assert (=> bm!122606 m!2437665))

(assert (=> b!2006139 m!2435683))

(assert (=> b!2006139 m!2437657))

(assert (=> b!2005220 d!612491))

(assert (=> b!2005220 d!612283))

(assert (=> b!2005220 d!612071))

(assert (=> b!2005220 d!612091))

(assert (=> b!2005220 d!612075))

(declare-fun d!612493 () Bool)

(assert (=> d!612493 (= (isDefined!3880 lt!753078) (not (isEmpty!13658 lt!753078)))))

(declare-fun bs!419493 () Bool)

(assert (= bs!419493 d!612493))

(assert (=> bs!419493 m!2436243))

(assert (=> b!2005227 d!612493))

(declare-fun d!612495 () Bool)

(assert (=> d!612495 (= (head!4531 lt!752900) (h!27438 lt!752900))))

(assert (=> b!2005081 d!612495))

(declare-fun d!612497 () Bool)

(assert (=> d!612497 (= (inv!16 (value!124310 (h!27439 tokens!598))) (= (charsToInt!0 (text!29084 (value!124310 (h!27439 tokens!598)))) (value!124301 (value!124310 (h!27439 tokens!598)))))))

(declare-fun bs!419494 () Bool)

(assert (= bs!419494 d!612497))

(declare-fun m!2437673 () Bool)

(assert (=> bs!419494 m!2437673))

(assert (=> b!2005211 d!612497))

(declare-fun d!612499 () Bool)

(assert (=> d!612499 (= (isEmpty!13662 lt!753102) (not (is-Some!4591 lt!753102)))))

(assert (=> d!612075 d!612499))

(assert (=> d!612075 d!612015))

(declare-fun b!2006156 () Bool)

(declare-fun e!1267591 () Bool)

(declare-fun lt!753401 () List!22119)

(assert (=> b!2006156 (= e!1267591 (or (not (= (_2!11821 (get!6960 lt!753083)) Nil!22037)) (= lt!753401 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083)))))))))

(declare-fun b!2006153 () Bool)

(declare-fun e!1267592 () List!22119)

(assert (=> b!2006153 (= e!1267592 (_2!11821 (get!6960 lt!753083)))))

(declare-fun d!612501 () Bool)

(assert (=> d!612501 e!1267591))

(declare-fun res!879865 () Bool)

(assert (=> d!612501 (=> (not res!879865) (not e!1267591))))

(assert (=> d!612501 (= res!879865 (= (content!3225 lt!753401) (set.union (content!3225 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083))))) (content!3225 (_2!11821 (get!6960 lt!753083))))))))

(assert (=> d!612501 (= lt!753401 e!1267592)))

(declare-fun c!324026 () Bool)

(assert (=> d!612501 (= c!324026 (is-Nil!22037 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083))))))))

(assert (=> d!612501 (= (++!5946 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083)))) (_2!11821 (get!6960 lt!753083))) lt!753401)))

(declare-fun b!2006155 () Bool)

(declare-fun res!879864 () Bool)

(assert (=> b!2006155 (=> (not res!879864) (not e!1267591))))

(assert (=> b!2006155 (= res!879864 (= (size!17229 lt!753401) (+ (size!17229 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083))))) (size!17229 (_2!11821 (get!6960 lt!753083))))))))

(declare-fun b!2006154 () Bool)

(assert (=> b!2006154 (= e!1267592 (Cons!22037 (h!27438 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083))))) (++!5946 (t!186780 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753083))))) (_2!11821 (get!6960 lt!753083)))))))

(assert (= (and d!612501 c!324026) b!2006153))

(assert (= (and d!612501 (not c!324026)) b!2006154))

(assert (= (and d!612501 res!879865) b!2006155))

(assert (= (and b!2006155 res!879864) b!2006156))

(declare-fun m!2437675 () Bool)

(assert (=> d!612501 m!2437675))

(assert (=> d!612501 m!2436285))

(declare-fun m!2437677 () Bool)

(assert (=> d!612501 m!2437677))

(declare-fun m!2437679 () Bool)

(assert (=> d!612501 m!2437679))

(declare-fun m!2437681 () Bool)

(assert (=> b!2006155 m!2437681))

(assert (=> b!2006155 m!2436285))

(declare-fun m!2437683 () Bool)

(assert (=> b!2006155 m!2437683))

(assert (=> b!2006155 m!2436291))

(declare-fun m!2437685 () Bool)

(assert (=> b!2006154 m!2437685))

(assert (=> b!2005237 d!612501))

(assert (=> b!2005237 d!612145))

(assert (=> b!2005237 d!612147))

(assert (=> b!2005237 d!612143))

(declare-fun d!612503 () Bool)

(declare-fun res!879866 () Bool)

(declare-fun e!1267593 () Bool)

(assert (=> d!612503 (=> res!879866 e!1267593)))

(assert (=> d!612503 (= res!879866 (is-Nil!22038 tokens!598))))

(assert (=> d!612503 (= (forall!4679 tokens!598 lambda!75935) e!1267593)))

(declare-fun b!2006157 () Bool)

(declare-fun e!1267594 () Bool)

(assert (=> b!2006157 (= e!1267593 e!1267594)))

(declare-fun res!879867 () Bool)

(assert (=> b!2006157 (=> (not res!879867) (not e!1267594))))

(assert (=> b!2006157 (= res!879867 (dynLambda!10821 lambda!75935 (h!27439 tokens!598)))))

(declare-fun b!2006158 () Bool)

(assert (=> b!2006158 (= e!1267594 (forall!4679 (t!186781 tokens!598) lambda!75935))))

(assert (= (and d!612503 (not res!879866)) b!2006157))

(assert (= (and b!2006157 res!879867) b!2006158))

(declare-fun b_lambda!66819 () Bool)

(assert (=> (not b_lambda!66819) (not b!2006157)))

(declare-fun m!2437687 () Bool)

(assert (=> b!2006157 m!2437687))

(declare-fun m!2437689 () Bool)

(assert (=> b!2006158 m!2437689))

(assert (=> d!611997 d!612503))

(assert (=> d!611997 d!612055))

(declare-fun d!612505 () Bool)

(declare-fun lt!753406 () Bool)

(assert (=> d!612505 (= lt!753406 (isEmpty!13657 (list!8964 (_2!11823 (lex!1590 thiss!23328 rules!3198 (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354)))))))))

(declare-fun isEmpty!13668 (Conc!7362) Bool)

(assert (=> d!612505 (= lt!753406 (isEmpty!13668 (c!323781 (_2!11823 (lex!1590 thiss!23328 rules!3198 (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354)))))))))

(assert (=> d!612505 (= (isEmpty!13660 (_2!11823 (lex!1590 thiss!23328 rules!3198 (print!1536 thiss!23328 (singletonSeq!1937 separatorToken!354))))) lt!753406)))

(declare-fun bs!419495 () Bool)

(assert (= bs!419495 d!612505))

(declare-fun m!2437691 () Bool)

(assert (=> bs!419495 m!2437691))

(assert (=> bs!419495 m!2437691))

(declare-fun m!2437693 () Bool)

(assert (=> bs!419495 m!2437693))

(declare-fun m!2437695 () Bool)

(assert (=> bs!419495 m!2437695))

(assert (=> b!2005195 d!612505))

(assert (=> b!2005195 d!612217))

(assert (=> b!2005195 d!612211))

(assert (=> b!2005195 d!612209))

(assert (=> b!2005230 d!612303))

(assert (=> b!2005230 d!612305))

(assert (=> b!2005230 d!612307))

(declare-fun d!612507 () Bool)

(declare-fun lt!753407 () Int)

(assert (=> d!612507 (>= lt!753407 0)))

(declare-fun e!1267605 () Int)

(assert (=> d!612507 (= lt!753407 e!1267605)))

(declare-fun c!324037 () Bool)

(assert (=> d!612507 (= c!324037 (is-Nil!22037 (originalCharacters!4762 (h!27439 tokens!598))))))

(assert (=> d!612507 (= (size!17229 (originalCharacters!4762 (h!27439 tokens!598))) lt!753407)))

(declare-fun b!2006179 () Bool)

(assert (=> b!2006179 (= e!1267605 0)))

(declare-fun b!2006180 () Bool)

(assert (=> b!2006180 (= e!1267605 (+ 1 (size!17229 (t!186780 (originalCharacters!4762 (h!27439 tokens!598))))))))

(assert (= (and d!612507 c!324037) b!2006179))

(assert (= (and d!612507 (not c!324037)) b!2006180))

(declare-fun m!2437697 () Bool)

(assert (=> b!2006180 m!2437697))

(assert (=> b!2004840 d!612507))

(declare-fun bs!419496 () Bool)

(declare-fun d!612509 () Bool)

(assert (= bs!419496 (and d!612509 d!612067)))

(declare-fun lambda!75973 () Int)

(assert (=> bs!419496 (= lambda!75973 lambda!75941)))

(assert (=> d!612509 true))

(assert (=> d!612509 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (dynLambda!10825 order!13969 lambda!75973))))

(declare-fun Forall2!639 (Int) Bool)

(assert (=> d!612509 (= (equivClasses!1509 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (Forall2!639 lambda!75973))))

(declare-fun bs!419497 () Bool)

(assert (= bs!419497 d!612509))

(declare-fun m!2437707 () Bool)

(assert (=> bs!419497 m!2437707))

(assert (=> b!2005070 d!612509))

(declare-fun bs!419499 () Bool)

(declare-fun d!612515 () Bool)

(assert (= bs!419499 (and d!612515 d!612079)))

(declare-fun lambda!75974 () Int)

(assert (=> bs!419499 (= (and (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (= (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (= lambda!75974 lambda!75945))))

(declare-fun bs!419500 () Bool)

(assert (= bs!419500 (and d!612515 d!612351)))

(assert (=> bs!419500 (= (and (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (= (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (= lambda!75974 lambda!75963))))

(assert (=> d!612515 true))

(assert (=> d!612515 (< (dynLambda!10816 order!13963 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354)))) (dynLambda!10827 order!13971 lambda!75974))))

(assert (=> d!612515 true))

(assert (=> d!612515 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354)))) (dynLambda!10827 order!13971 lambda!75974))))

(assert (=> d!612515 (= (semiInverseModEq!1582 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354)))) (Forall!1014 lambda!75974))))

(declare-fun bs!419501 () Bool)

(assert (= bs!419501 d!612515))

(declare-fun m!2437721 () Bool)

(assert (=> bs!419501 m!2437721))

(assert (=> d!612013 d!612515))

(declare-fun d!612521 () Bool)

(declare-fun lt!753410 () Int)

(assert (=> d!612521 (>= lt!753410 0)))

(declare-fun e!1267615 () Int)

(assert (=> d!612521 (= lt!753410 e!1267615)))

(declare-fun c!324044 () Bool)

(assert (=> d!612521 (= c!324044 (is-Nil!22037 (originalCharacters!4762 separatorToken!354)))))

(assert (=> d!612521 (= (size!17229 (originalCharacters!4762 separatorToken!354)) lt!753410)))

(declare-fun b!2006199 () Bool)

(assert (=> b!2006199 (= e!1267615 0)))

(declare-fun b!2006200 () Bool)

(assert (=> b!2006200 (= e!1267615 (+ 1 (size!17229 (t!186780 (originalCharacters!4762 separatorToken!354)))))))

(assert (= (and d!612521 c!324044) b!2006199))

(assert (= (and d!612521 (not c!324044)) b!2006200))

(declare-fun m!2437723 () Bool)

(assert (=> b!2006200 m!2437723))

(assert (=> b!2005199 d!612521))

(assert (=> b!2004946 d!612187))

(assert (=> b!2004946 d!612085))

(declare-fun d!612523 () Bool)

(assert (=> d!612523 (= (list!8964 lt!753115) (list!8968 (c!323781 lt!753115)))))

(declare-fun bs!419502 () Bool)

(assert (= bs!419502 d!612523))

(declare-fun m!2437725 () Bool)

(assert (=> bs!419502 m!2437725))

(assert (=> d!612091 d!612523))

(declare-fun e!1267616 () Bool)

(declare-fun lt!753411 () List!22119)

(declare-fun b!2006204 () Bool)

(assert (=> b!2006204 (= e!1267616 (or (not (= (ite c!323860 lt!753092 call!122553) Nil!22037)) (= lt!753411 e!1267031)))))

(declare-fun e!1267617 () List!22119)

(declare-fun b!2006201 () Bool)

(assert (=> b!2006201 (= e!1267617 (ite c!323860 lt!753092 call!122553))))

(declare-fun d!612525 () Bool)

(assert (=> d!612525 e!1267616))

(declare-fun res!879873 () Bool)

(assert (=> d!612525 (=> (not res!879873) (not e!1267616))))

(assert (=> d!612525 (= res!879873 (= (content!3225 lt!753411) (set.union (content!3225 e!1267031) (content!3225 (ite c!323860 lt!753092 call!122553)))))))

(assert (=> d!612525 (= lt!753411 e!1267617)))

(declare-fun c!324045 () Bool)

(assert (=> d!612525 (= c!324045 (is-Nil!22037 e!1267031))))

(assert (=> d!612525 (= (++!5946 e!1267031 (ite c!323860 lt!753092 call!122553)) lt!753411)))

(declare-fun b!2006203 () Bool)

(declare-fun res!879872 () Bool)

(assert (=> b!2006203 (=> (not res!879872) (not e!1267616))))

(assert (=> b!2006203 (= res!879872 (= (size!17229 lt!753411) (+ (size!17229 e!1267031) (size!17229 (ite c!323860 lt!753092 call!122553)))))))

(declare-fun b!2006202 () Bool)

(assert (=> b!2006202 (= e!1267617 (Cons!22037 (h!27438 e!1267031) (++!5946 (t!186780 e!1267031) (ite c!323860 lt!753092 call!122553))))))

(assert (= (and d!612525 c!324045) b!2006201))

(assert (= (and d!612525 (not c!324045)) b!2006202))

(assert (= (and d!612525 res!879873) b!2006203))

(assert (= (and b!2006203 res!879872) b!2006204))

(declare-fun m!2437727 () Bool)

(assert (=> d!612525 m!2437727))

(declare-fun m!2437729 () Bool)

(assert (=> d!612525 m!2437729))

(declare-fun m!2437731 () Bool)

(assert (=> d!612525 m!2437731))

(declare-fun m!2437733 () Bool)

(assert (=> b!2006203 m!2437733))

(declare-fun m!2437735 () Bool)

(assert (=> b!2006203 m!2437735))

(declare-fun m!2437737 () Bool)

(assert (=> b!2006203 m!2437737))

(declare-fun m!2437739 () Bool)

(assert (=> b!2006202 m!2437739))

(assert (=> bm!122544 d!612525))

(declare-fun d!612527 () Bool)

(assert (=> d!612527 (= (isEmpty!13662 lt!752902) (not (is-Some!4591 lt!752902)))))

(assert (=> d!612081 d!612527))

(declare-fun d!612529 () Bool)

(declare-fun res!879874 () Bool)

(declare-fun e!1267618 () Bool)

(assert (=> d!612529 (=> res!879874 e!1267618)))

(assert (=> d!612529 (= res!879874 (not (is-Cons!22039 (t!186782 rules!3198))))))

(assert (=> d!612529 (= (sepAndNonSepRulesDisjointChars!1053 rules!3198 (t!186782 rules!3198)) e!1267618)))

(declare-fun b!2006205 () Bool)

(declare-fun e!1267619 () Bool)

(assert (=> b!2006205 (= e!1267618 e!1267619)))

(declare-fun res!879875 () Bool)

(assert (=> b!2006205 (=> (not res!879875) (not e!1267619))))

(assert (=> b!2006205 (= res!879875 (ruleDisjointCharsFromAllFromOtherType!466 (h!27440 (t!186782 rules!3198)) rules!3198))))

(declare-fun b!2006206 () Bool)

(assert (=> b!2006206 (= e!1267619 (sepAndNonSepRulesDisjointChars!1053 rules!3198 (t!186782 (t!186782 rules!3198))))))

(assert (= (and d!612529 (not res!879874)) b!2006205))

(assert (= (and b!2006205 res!879875) b!2006206))

(declare-fun m!2437741 () Bool)

(assert (=> b!2006205 m!2437741))

(declare-fun m!2437743 () Bool)

(assert (=> b!2006206 m!2437743))

(assert (=> b!2005094 d!612529))

(declare-fun bs!419503 () Bool)

(declare-fun d!612531 () Bool)

(assert (= bs!419503 (and d!612531 d!612079)))

(declare-fun lambda!75977 () Int)

(assert (=> bs!419503 (= (and (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (= (toValue!5616 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (= lambda!75977 lambda!75945))))

(declare-fun bs!419504 () Bool)

(assert (= bs!419504 (and d!612531 d!612351)))

(assert (=> bs!419504 (= (and (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (= (toValue!5616 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))))) (= lambda!75977 lambda!75963))))

(declare-fun bs!419506 () Bool)

(assert (= bs!419506 (and d!612531 d!612515)))

(assert (=> bs!419506 (= (and (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354)))) (= (toValue!5616 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354))))) (= lambda!75977 lambda!75974))))

(assert (=> d!612531 true))

(assert (=> d!612531 (< (dynLambda!10816 order!13963 (toChars!5475 (transformation!3955 (h!27440 rules!3198)))) (dynLambda!10827 order!13971 lambda!75977))))

(assert (=> d!612531 true))

(assert (=> d!612531 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (h!27440 rules!3198)))) (dynLambda!10827 order!13971 lambda!75977))))

(assert (=> d!612531 (= (semiInverseModEq!1582 (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (h!27440 rules!3198)))) (Forall!1014 lambda!75977))))

(declare-fun bs!419507 () Bool)

(assert (= bs!419507 d!612531))

(declare-fun m!2437745 () Bool)

(assert (=> bs!419507 m!2437745))

(assert (=> d!612043 d!612531))

(declare-fun d!612533 () Bool)

(declare-fun lt!753415 () Bool)

(assert (=> d!612533 (= lt!753415 (set.member (get!6961 lt!753102) (content!3226 rules!3198)))))

(declare-fun e!1267620 () Bool)

(assert (=> d!612533 (= lt!753415 e!1267620)))

(declare-fun res!879877 () Bool)

(assert (=> d!612533 (=> (not res!879877) (not e!1267620))))

(assert (=> d!612533 (= res!879877 (is-Cons!22039 rules!3198))))

(assert (=> d!612533 (= (contains!4019 rules!3198 (get!6961 lt!753102)) lt!753415)))

(declare-fun b!2006207 () Bool)

(declare-fun e!1267621 () Bool)

(assert (=> b!2006207 (= e!1267620 e!1267621)))

(declare-fun res!879876 () Bool)

(assert (=> b!2006207 (=> res!879876 e!1267621)))

(assert (=> b!2006207 (= res!879876 (= (h!27440 rules!3198) (get!6961 lt!753102)))))

(declare-fun b!2006208 () Bool)

(assert (=> b!2006208 (= e!1267621 (contains!4019 (t!186782 rules!3198) (get!6961 lt!753102)))))

(assert (= (and d!612533 res!879877) b!2006207))

(assert (= (and b!2006207 (not res!879876)) b!2006208))

(assert (=> d!612533 m!2436677))

(assert (=> d!612533 m!2436357))

(declare-fun m!2437749 () Bool)

(assert (=> d!612533 m!2437749))

(assert (=> b!2006208 m!2436357))

(declare-fun m!2437751 () Bool)

(assert (=> b!2006208 m!2437751))

(assert (=> b!2005277 d!612533))

(assert (=> b!2005277 d!612163))

(declare-fun d!612537 () Bool)

(assert (=> d!612537 (= (list!8964 (ite c!323860 call!122550 call!122549)) (list!8968 (c!323781 (ite c!323860 call!122550 call!122549))))))

(declare-fun bs!419509 () Bool)

(assert (= bs!419509 d!612537))

(declare-fun m!2437753 () Bool)

(assert (=> bs!419509 m!2437753))

(assert (=> bm!122547 d!612537))

(assert (=> b!2004867 d!612181))

(declare-fun d!612539 () Bool)

(assert (=> d!612539 (= (apply!5768 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!752969))))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969))))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!752969))))))))

(declare-fun b_lambda!66823 () Bool)

(assert (=> (not b_lambda!66823) (not d!612539)))

(declare-fun tb!125059 () Bool)

(declare-fun t!187018 () Bool)

(assert (=> (and b!2004750 (= (toValue!5616 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))) t!187018) tb!125059))

(declare-fun result!149898 () Bool)

(assert (=> tb!125059 (= result!149898 (inv!21 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969))))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!752969)))))))))

(declare-fun m!2437759 () Bool)

(assert (=> tb!125059 m!2437759))

(assert (=> d!612539 t!187018))

(declare-fun b_and!158127 () Bool)

(assert (= b_and!158017 (and (=> t!187018 result!149898) b_and!158127)))

(declare-fun tb!125067 () Bool)

(declare-fun t!187026 () Bool)

(assert (=> (and b!2005317 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))) t!187026) tb!125067))

(declare-fun result!149906 () Bool)

(assert (= result!149906 result!149898))

(assert (=> d!612539 t!187026))

(declare-fun b_and!158129 () Bool)

(assert (= b_and!158025 (and (=> t!187026 result!149906) b_and!158129)))

(declare-fun tb!125069 () Bool)

(declare-fun t!187028 () Bool)

(assert (=> (and b!2004742 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))) t!187028) tb!125069))

(declare-fun result!149908 () Bool)

(assert (= result!149908 result!149898))

(assert (=> d!612539 t!187028))

(declare-fun b_and!158131 () Bool)

(assert (= b_and!158019 (and (=> t!187028 result!149908) b_and!158131)))

(declare-fun tb!125071 () Bool)

(declare-fun t!187030 () Bool)

(assert (=> (and b!2005328 (= (toValue!5616 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))) t!187030) tb!125071))

(declare-fun result!149910 () Bool)

(assert (= result!149910 result!149898))

(assert (=> d!612539 t!187030))

(declare-fun b_and!158133 () Bool)

(assert (= b_and!158021 (and (=> t!187030 result!149910) b_and!158133)))

(declare-fun tb!125073 () Bool)

(declare-fun t!187032 () Bool)

(assert (=> (and b!2004733 (= (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))) t!187032) tb!125073))

(declare-fun result!149912 () Bool)

(assert (= result!149912 result!149898))

(assert (=> d!612539 t!187032))

(declare-fun b_and!158135 () Bool)

(assert (= b_and!158023 (and (=> t!187032 result!149912) b_and!158135)))

(assert (=> d!612539 m!2435845))

(declare-fun m!2437769 () Bool)

(assert (=> d!612539 m!2437769))

(assert (=> b!2004867 d!612539))

(declare-fun d!612545 () Bool)

(assert (=> d!612545 (= (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!752969)))) (fromListB!1256 (originalCharacters!4762 (_1!11821 (get!6960 lt!752969)))))))

(declare-fun bs!419510 () Bool)

(assert (= bs!419510 d!612545))

(declare-fun m!2437771 () Bool)

(assert (=> bs!419510 m!2437771))

(assert (=> b!2004867 d!612545))

(declare-fun d!612547 () Bool)

(declare-fun lt!753417 () Int)

(assert (=> d!612547 (>= lt!753417 0)))

(declare-fun e!1267625 () Int)

(assert (=> d!612547 (= lt!753417 e!1267625)))

(declare-fun c!324046 () Bool)

(assert (=> d!612547 (= c!324046 (is-Nil!22037 (_2!11821 (get!6960 lt!753078))))))

(assert (=> d!612547 (= (size!17229 (_2!11821 (get!6960 lt!753078))) lt!753417)))

(declare-fun b!2006211 () Bool)

(assert (=> b!2006211 (= e!1267625 0)))

(declare-fun b!2006212 () Bool)

(assert (=> b!2006212 (= e!1267625 (+ 1 (size!17229 (t!186780 (_2!11821 (get!6960 lt!753078))))))))

(assert (= (and d!612547 c!324046) b!2006211))

(assert (= (and d!612547 (not c!324046)) b!2006212))

(declare-fun m!2437773 () Bool)

(assert (=> b!2006212 m!2437773))

(assert (=> b!2005222 d!612547))

(assert (=> b!2005222 d!612307))

(declare-fun d!612549 () Bool)

(declare-fun lt!753418 () Int)

(assert (=> d!612549 (>= lt!753418 0)))

(declare-fun e!1267626 () Int)

(assert (=> d!612549 (= lt!753418 e!1267626)))

(declare-fun c!324047 () Bool)

(assert (=> d!612549 (= c!324047 (is-Nil!22037 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(assert (=> d!612549 (= (size!17229 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))) lt!753418)))

(declare-fun b!2006213 () Bool)

(assert (=> b!2006213 (= e!1267626 0)))

(declare-fun b!2006214 () Bool)

(assert (=> b!2006214 (= e!1267626 (+ 1 (size!17229 (t!186780 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))))

(assert (= (and d!612549 c!324047) b!2006213))

(assert (= (and d!612549 (not c!324047)) b!2006214))

(declare-fun m!2437775 () Bool)

(assert (=> b!2006214 m!2437775))

(assert (=> b!2005222 d!612549))

(declare-fun d!612551 () Bool)

(assert (=> d!612551 (= (inv!29186 (tag!4415 (h!27440 (t!186782 rules!3198)))) (= (mod (str.len (value!124309 (tag!4415 (h!27440 (t!186782 rules!3198))))) 2) 0))))

(assert (=> b!2005327 d!612551))

(declare-fun d!612553 () Bool)

(declare-fun res!879879 () Bool)

(declare-fun e!1267627 () Bool)

(assert (=> d!612553 (=> (not res!879879) (not e!1267627))))

(assert (=> d!612553 (= res!879879 (semiInverseModEq!1582 (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toValue!5616 (transformation!3955 (h!27440 (t!186782 rules!3198))))))))

(assert (=> d!612553 (= (inv!29189 (transformation!3955 (h!27440 (t!186782 rules!3198)))) e!1267627)))

(declare-fun b!2006215 () Bool)

(assert (=> b!2006215 (= e!1267627 (equivClasses!1509 (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toValue!5616 (transformation!3955 (h!27440 (t!186782 rules!3198))))))))

(assert (= (and d!612553 res!879879) b!2006215))

(declare-fun m!2437777 () Bool)

(assert (=> d!612553 m!2437777))

(declare-fun m!2437779 () Bool)

(assert (=> b!2006215 m!2437779))

(assert (=> b!2005327 d!612553))

(declare-fun b!2006216 () Bool)

(declare-fun res!879881 () Bool)

(declare-fun e!1267628 () Bool)

(assert (=> b!2006216 (=> (not res!879881) (not e!1267628))))

(declare-fun lt!753421 () Option!4591)

(assert (=> b!2006216 (= res!879881 (< (size!17229 (_2!11821 (get!6960 lt!753421))) (size!17229 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun d!612555 () Bool)

(declare-fun e!1267629 () Bool)

(assert (=> d!612555 e!1267629))

(declare-fun res!879883 () Bool)

(assert (=> d!612555 (=> res!879883 e!1267629)))

(assert (=> d!612555 (= res!879883 (isEmpty!13658 lt!753421))))

(declare-fun e!1267630 () Option!4591)

(assert (=> d!612555 (= lt!753421 e!1267630)))

(declare-fun c!324048 () Bool)

(declare-fun lt!753419 () tuple2!20712)

(assert (=> d!612555 (= c!324048 (isEmpty!13657 (_1!11825 lt!753419)))))

(assert (=> d!612555 (= lt!753419 (findLongestMatch!475 (regex!3955 (h!27440 rules!3198)) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (=> d!612555 (ruleValid!1208 thiss!23328 (h!27440 rules!3198))))

(assert (=> d!612555 (= (maxPrefixOneRule!1240 thiss!23328 (h!27440 rules!3198) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!753421)))

(declare-fun b!2006217 () Bool)

(assert (=> b!2006217 (= e!1267628 (= (size!17227 (_1!11821 (get!6960 lt!753421))) (size!17229 (originalCharacters!4762 (_1!11821 (get!6960 lt!753421))))))))

(declare-fun b!2006218 () Bool)

(assert (=> b!2006218 (= e!1267630 (Some!4590 (tuple2!20705 (Token!7463 (apply!5768 (transformation!3955 (h!27440 rules!3198)) (seqFromList!2809 (_1!11825 lt!753419))) (h!27440 rules!3198) (size!17233 (seqFromList!2809 (_1!11825 lt!753419))) (_1!11825 lt!753419)) (_2!11825 lt!753419))))))

(declare-fun lt!753420 () Unit!36581)

(assert (=> b!2006218 (= lt!753420 (longestMatchIsAcceptedByMatchOrIsEmpty!532 (regex!3955 (h!27440 rules!3198)) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun res!879882 () Bool)

(assert (=> b!2006218 (= res!879882 (isEmpty!13657 (_1!11825 (findLongestMatchInner!548 (regex!3955 (h!27440 rules!3198)) Nil!22037 (size!17229 Nil!22037) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354) (size!17229 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))))

(declare-fun e!1267631 () Bool)

(assert (=> b!2006218 (=> res!879882 e!1267631)))

(assert (=> b!2006218 e!1267631))

(declare-fun lt!753422 () Unit!36581)

(assert (=> b!2006218 (= lt!753422 lt!753420)))

(declare-fun lt!753423 () Unit!36581)

(assert (=> b!2006218 (= lt!753423 (lemmaSemiInverse!912 (transformation!3955 (h!27440 rules!3198)) (seqFromList!2809 (_1!11825 lt!753419))))))

(declare-fun b!2006219 () Bool)

(assert (=> b!2006219 (= e!1267629 e!1267628)))

(declare-fun res!879886 () Bool)

(assert (=> b!2006219 (=> (not res!879886) (not e!1267628))))

(assert (=> b!2006219 (= res!879886 (matchR!2646 (regex!3955 (h!27440 rules!3198)) (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753421))))))))

(declare-fun b!2006220 () Bool)

(declare-fun res!879880 () Bool)

(assert (=> b!2006220 (=> (not res!879880) (not e!1267628))))

(assert (=> b!2006220 (= res!879880 (= (rule!6178 (_1!11821 (get!6960 lt!753421))) (h!27440 rules!3198)))))

(declare-fun b!2006221 () Bool)

(declare-fun res!879884 () Bool)

(assert (=> b!2006221 (=> (not res!879884) (not e!1267628))))

(assert (=> b!2006221 (= res!879884 (= (value!124310 (_1!11821 (get!6960 lt!753421))) (apply!5768 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753421)))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753421)))))))))

(declare-fun b!2006222 () Bool)

(assert (=> b!2006222 (= e!1267630 None!4590)))

(declare-fun b!2006223 () Bool)

(assert (=> b!2006223 (= e!1267631 (matchR!2646 (regex!3955 (h!27440 rules!3198)) (_1!11825 (findLongestMatchInner!548 (regex!3955 (h!27440 rules!3198)) Nil!22037 (size!17229 Nil!22037) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354) (size!17229 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))))

(declare-fun b!2006224 () Bool)

(declare-fun res!879885 () Bool)

(assert (=> b!2006224 (=> (not res!879885) (not e!1267628))))

(assert (=> b!2006224 (= res!879885 (= (++!5946 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753421)))) (_2!11821 (get!6960 lt!753421))) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (= (and d!612555 c!324048) b!2006222))

(assert (= (and d!612555 (not c!324048)) b!2006218))

(assert (= (and b!2006218 (not res!879882)) b!2006223))

(assert (= (and d!612555 (not res!879883)) b!2006219))

(assert (= (and b!2006219 res!879886) b!2006224))

(assert (= (and b!2006224 res!879885) b!2006216))

(assert (= (and b!2006216 res!879881) b!2006220))

(assert (= (and b!2006220 res!879880) b!2006221))

(assert (= (and b!2006221 res!879884) b!2006217))

(assert (=> b!2006223 m!2436565))

(assert (=> b!2006223 m!2435695))

(assert (=> b!2006223 m!2435869))

(assert (=> b!2006223 m!2436565))

(assert (=> b!2006223 m!2435695))

(assert (=> b!2006223 m!2435695))

(assert (=> b!2006223 m!2435869))

(declare-fun m!2437785 () Bool)

(assert (=> b!2006223 m!2437785))

(declare-fun m!2437793 () Bool)

(assert (=> b!2006223 m!2437793))

(declare-fun m!2437797 () Bool)

(assert (=> b!2006224 m!2437797))

(declare-fun m!2437801 () Bool)

(assert (=> b!2006224 m!2437801))

(assert (=> b!2006224 m!2437801))

(declare-fun m!2437805 () Bool)

(assert (=> b!2006224 m!2437805))

(assert (=> b!2006224 m!2437805))

(declare-fun m!2437807 () Bool)

(assert (=> b!2006224 m!2437807))

(assert (=> b!2006221 m!2437797))

(declare-fun m!2437811 () Bool)

(assert (=> b!2006221 m!2437811))

(assert (=> b!2006221 m!2437811))

(declare-fun m!2437813 () Bool)

(assert (=> b!2006221 m!2437813))

(declare-fun m!2437815 () Bool)

(assert (=> d!612555 m!2437815))

(declare-fun m!2437817 () Bool)

(assert (=> d!612555 m!2437817))

(assert (=> d!612555 m!2435695))

(declare-fun m!2437819 () Bool)

(assert (=> d!612555 m!2437819))

(assert (=> d!612555 m!2436589))

(declare-fun m!2437821 () Bool)

(assert (=> b!2006218 m!2437821))

(declare-fun m!2437823 () Bool)

(assert (=> b!2006218 m!2437823))

(assert (=> b!2006218 m!2437821))

(assert (=> b!2006218 m!2437821))

(declare-fun m!2437825 () Bool)

(assert (=> b!2006218 m!2437825))

(declare-fun m!2437827 () Bool)

(assert (=> b!2006218 m!2437827))

(assert (=> b!2006218 m!2435695))

(declare-fun m!2437829 () Bool)

(assert (=> b!2006218 m!2437829))

(assert (=> b!2006218 m!2436565))

(assert (=> b!2006218 m!2435695))

(assert (=> b!2006218 m!2435695))

(assert (=> b!2006218 m!2435869))

(assert (=> b!2006218 m!2437785))

(assert (=> b!2006218 m!2437821))

(declare-fun m!2437833 () Bool)

(assert (=> b!2006218 m!2437833))

(assert (=> b!2006218 m!2435695))

(assert (=> b!2006218 m!2435869))

(assert (=> b!2006218 m!2436565))

(assert (=> b!2006216 m!2437797))

(declare-fun m!2437837 () Bool)

(assert (=> b!2006216 m!2437837))

(assert (=> b!2006216 m!2435695))

(assert (=> b!2006216 m!2435869))

(assert (=> b!2006217 m!2437797))

(declare-fun m!2437839 () Bool)

(assert (=> b!2006217 m!2437839))

(assert (=> b!2006220 m!2437797))

(assert (=> b!2006219 m!2437797))

(assert (=> b!2006219 m!2437801))

(assert (=> b!2006219 m!2437801))

(assert (=> b!2006219 m!2437805))

(assert (=> b!2006219 m!2437805))

(declare-fun m!2437843 () Bool)

(assert (=> b!2006219 m!2437843))

(assert (=> bm!122500 d!612555))

(assert (=> b!2005076 d!612309))

(assert (=> b!2005076 d!612311))

(declare-fun d!612563 () Bool)

(declare-fun c!324051 () Bool)

(assert (=> d!612563 (= c!324051 (is-Node!7362 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906)))))))

(declare-fun e!1267638 () Bool)

(assert (=> d!612563 (= (inv!29193 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906)))) e!1267638)))

(declare-fun b!2006232 () Bool)

(assert (=> b!2006232 (= e!1267638 (inv!29197 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906)))))))

(declare-fun b!2006233 () Bool)

(declare-fun e!1267640 () Bool)

(assert (=> b!2006233 (= e!1267638 e!1267640)))

(declare-fun res!879892 () Bool)

(assert (=> b!2006233 (= res!879892 (not (is-Leaf!10803 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906))))))))

(assert (=> b!2006233 (=> res!879892 e!1267640)))

(declare-fun b!2006234 () Bool)

(assert (=> b!2006234 (= e!1267640 (inv!29198 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906)))))))

(assert (= (and d!612563 c!324051) b!2006232))

(assert (= (and d!612563 (not c!324051)) b!2006233))

(assert (= (and b!2006233 (not res!879892)) b!2006234))

(declare-fun m!2437847 () Bool)

(assert (=> b!2006232 m!2437847))

(declare-fun m!2437849 () Bool)

(assert (=> b!2006234 m!2437849))

(assert (=> b!2005291 d!612563))

(declare-fun d!612567 () Bool)

(declare-fun lt!753436 () Bool)

(assert (=> d!612567 (= lt!753436 (set.member (rule!6178 (_1!11821 (get!6960 lt!753083))) (content!3226 rules!3198)))))

(declare-fun e!1267642 () Bool)

(assert (=> d!612567 (= lt!753436 e!1267642)))

(declare-fun res!879898 () Bool)

(assert (=> d!612567 (=> (not res!879898) (not e!1267642))))

(assert (=> d!612567 (= res!879898 (is-Cons!22039 rules!3198))))

(assert (=> d!612567 (= (contains!4019 rules!3198 (rule!6178 (_1!11821 (get!6960 lt!753083)))) lt!753436)))

(declare-fun b!2006244 () Bool)

(declare-fun e!1267643 () Bool)

(assert (=> b!2006244 (= e!1267642 e!1267643)))

(declare-fun res!879897 () Bool)

(assert (=> b!2006244 (=> res!879897 e!1267643)))

(assert (=> b!2006244 (= res!879897 (= (h!27440 rules!3198) (rule!6178 (_1!11821 (get!6960 lt!753083)))))))

(declare-fun b!2006245 () Bool)

(assert (=> b!2006245 (= e!1267643 (contains!4019 (t!186782 rules!3198) (rule!6178 (_1!11821 (get!6960 lt!753083)))))))

(assert (= (and d!612567 res!879898) b!2006244))

(assert (= (and b!2006244 (not res!879897)) b!2006245))

(assert (=> d!612567 m!2436677))

(declare-fun m!2437851 () Bool)

(assert (=> d!612567 m!2437851))

(declare-fun m!2437853 () Bool)

(assert (=> b!2006245 m!2437853))

(assert (=> b!2005232 d!612567))

(assert (=> b!2005232 d!612143))

(assert (=> b!2005035 d!612173))

(assert (=> b!2005035 d!612175))

(declare-fun d!612569 () Bool)

(declare-fun dynLambda!10831 (Int BalanceConc!14540 BalanceConc!14540) Bool)

(assert (=> d!612569 (dynLambda!10831 lambda!75941 lt!752906 (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598))))))

(declare-fun lt!753439 () Unit!36581)

(declare-fun choose!12224 (Int BalanceConc!14540 BalanceConc!14540) Unit!36581)

(assert (=> d!612569 (= lt!753439 (choose!12224 lambda!75941 lt!752906 (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598)))))))

(assert (=> d!612569 (Forall2!639 lambda!75941)))

(assert (=> d!612569 (= (Forall2of!219 lambda!75941 lt!752906 (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598)))) lt!753439)))

(declare-fun b_lambda!66827 () Bool)

(assert (=> (not b_lambda!66827) (not d!612569)))

(declare-fun bs!419513 () Bool)

(assert (= bs!419513 d!612569))

(assert (=> bs!419513 m!2435655))

(declare-fun m!2437881 () Bool)

(assert (=> bs!419513 m!2437881))

(assert (=> bs!419513 m!2435655))

(declare-fun m!2437883 () Bool)

(assert (=> bs!419513 m!2437883))

(declare-fun m!2437885 () Bool)

(assert (=> bs!419513 m!2437885))

(assert (=> d!612067 d!612569))

(assert (=> d!612067 d!612083))

(declare-fun d!612575 () Bool)

(assert (=> d!612575 (= (list!8964 (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598)))) (list!8968 (c!323781 (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598))))))))

(declare-fun bs!419514 () Bool)

(assert (= bs!419514 d!612575))

(declare-fun m!2437887 () Bool)

(assert (=> bs!419514 m!2437887))

(assert (=> d!612067 d!612575))

(declare-fun d!612577 () Bool)

(declare-fun lt!753441 () BalanceConc!14540)

(assert (=> d!612577 (= (list!8964 lt!753441) (printList!1101 thiss!23328 (list!8966 (singletonSeq!1937 (h!27439 (t!186781 tokens!598))))))))

(assert (=> d!612577 (= lt!753441 (printTailRec!1042 thiss!23328 (singletonSeq!1937 (h!27439 (t!186781 tokens!598))) 0 (BalanceConc!14541 Empty!7362)))))

(assert (=> d!612577 (= (print!1536 thiss!23328 (singletonSeq!1937 (h!27439 (t!186781 tokens!598)))) lt!753441)))

(declare-fun bs!419515 () Bool)

(assert (= bs!419515 d!612577))

(declare-fun m!2437891 () Bool)

(assert (=> bs!419515 m!2437891))

(assert (=> bs!419515 m!2436315))

(declare-fun m!2437893 () Bool)

(assert (=> bs!419515 m!2437893))

(assert (=> bs!419515 m!2437893))

(declare-fun m!2437895 () Bool)

(assert (=> bs!419515 m!2437895))

(assert (=> bs!419515 m!2436315))

(assert (=> bs!419515 m!2436319))

(assert (=> b!2005253 d!612577))

(declare-fun d!612581 () Bool)

(declare-fun e!1267645 () Bool)

(assert (=> d!612581 e!1267645))

(declare-fun res!879899 () Bool)

(assert (=> d!612581 (=> (not res!879899) (not e!1267645))))

(declare-fun lt!753442 () BalanceConc!14544)

(assert (=> d!612581 (= res!879899 (= (list!8966 lt!753442) (Cons!22038 (h!27439 (t!186781 tokens!598)) Nil!22038)))))

(assert (=> d!612581 (= lt!753442 (singleton!865 (h!27439 (t!186781 tokens!598))))))

(assert (=> d!612581 (= (singletonSeq!1937 (h!27439 (t!186781 tokens!598))) lt!753442)))

(declare-fun b!2006249 () Bool)

(assert (=> b!2006249 (= e!1267645 (isBalanced!2291 (c!323891 lt!753442)))))

(assert (= (and d!612581 res!879899) b!2006249))

(declare-fun m!2437897 () Bool)

(assert (=> d!612581 m!2437897))

(declare-fun m!2437899 () Bool)

(assert (=> d!612581 m!2437899))

(declare-fun m!2437901 () Bool)

(assert (=> b!2006249 m!2437901))

(assert (=> b!2005253 d!612581))

(declare-fun d!612583 () Bool)

(declare-fun lt!753447 () BalanceConc!14540)

(assert (=> d!612583 (= (list!8964 lt!753447) (printListTailRec!470 thiss!23328 (dropList!801 (singletonSeq!1937 (h!27439 (t!186781 tokens!598))) 0) (list!8964 (BalanceConc!14541 Empty!7362))))))

(declare-fun e!1267649 () BalanceConc!14540)

(assert (=> d!612583 (= lt!753447 e!1267649)))

(declare-fun c!324056 () Bool)

(assert (=> d!612583 (= c!324056 (>= 0 (size!17230 (singletonSeq!1937 (h!27439 (t!186781 tokens!598))))))))

(declare-fun e!1267648 () Bool)

(assert (=> d!612583 e!1267648))

(declare-fun res!879900 () Bool)

(assert (=> d!612583 (=> (not res!879900) (not e!1267648))))

(assert (=> d!612583 (= res!879900 (>= 0 0))))

(assert (=> d!612583 (= (printTailRec!1042 thiss!23328 (singletonSeq!1937 (h!27439 (t!186781 tokens!598))) 0 (BalanceConc!14541 Empty!7362)) lt!753447)))

(declare-fun b!2006254 () Bool)

(assert (=> b!2006254 (= e!1267648 (<= 0 (size!17230 (singletonSeq!1937 (h!27439 (t!186781 tokens!598))))))))

(declare-fun b!2006255 () Bool)

(assert (=> b!2006255 (= e!1267649 (BalanceConc!14541 Empty!7362))))

(declare-fun b!2006256 () Bool)

(assert (=> b!2006256 (= e!1267649 (printTailRec!1042 thiss!23328 (singletonSeq!1937 (h!27439 (t!186781 tokens!598))) (+ 0 1) (++!5948 (BalanceConc!14541 Empty!7362) (charsOf!2495 (apply!5769 (singletonSeq!1937 (h!27439 (t!186781 tokens!598))) 0)))))))

(declare-fun lt!753443 () List!22120)

(assert (=> b!2006256 (= lt!753443 (list!8966 (singletonSeq!1937 (h!27439 (t!186781 tokens!598)))))))

(declare-fun lt!753444 () Unit!36581)

(assert (=> b!2006256 (= lt!753444 (lemmaDropApply!725 lt!753443 0))))

(assert (=> b!2006256 (= (head!4529 (drop!1100 lt!753443 0)) (apply!5772 lt!753443 0))))

(declare-fun lt!753445 () Unit!36581)

(assert (=> b!2006256 (= lt!753445 lt!753444)))

(declare-fun lt!753448 () List!22120)

(assert (=> b!2006256 (= lt!753448 (list!8966 (singletonSeq!1937 (h!27439 (t!186781 tokens!598)))))))

(declare-fun lt!753446 () Unit!36581)

(assert (=> b!2006256 (= lt!753446 (lemmaDropTail!701 lt!753448 0))))

(assert (=> b!2006256 (= (tail!3017 (drop!1100 lt!753448 0)) (drop!1100 lt!753448 (+ 0 1)))))

(declare-fun lt!753449 () Unit!36581)

(assert (=> b!2006256 (= lt!753449 lt!753446)))

(assert (= (and d!612583 res!879900) b!2006254))

(assert (= (and d!612583 c!324056) b!2006255))

(assert (= (and d!612583 (not c!324056)) b!2006256))

(assert (=> d!612583 m!2436315))

(declare-fun m!2437903 () Bool)

(assert (=> d!612583 m!2437903))

(declare-fun m!2437909 () Bool)

(assert (=> d!612583 m!2437909))

(assert (=> d!612583 m!2437215))

(declare-fun m!2437911 () Bool)

(assert (=> d!612583 m!2437911))

(declare-fun m!2437913 () Bool)

(assert (=> d!612583 m!2437913))

(assert (=> d!612583 m!2436315))

(assert (=> d!612583 m!2437909))

(assert (=> d!612583 m!2437215))

(assert (=> b!2006254 m!2436315))

(assert (=> b!2006254 m!2437903))

(declare-fun m!2437915 () Bool)

(assert (=> b!2006256 m!2437915))

(assert (=> b!2006256 m!2436315))

(declare-fun m!2437917 () Bool)

(assert (=> b!2006256 m!2437917))

(assert (=> b!2006256 m!2436315))

(assert (=> b!2006256 m!2437893))

(declare-fun m!2437923 () Bool)

(assert (=> b!2006256 m!2437923))

(assert (=> b!2006256 m!2436315))

(declare-fun m!2437925 () Bool)

(assert (=> b!2006256 m!2437925))

(declare-fun m!2437927 () Bool)

(assert (=> b!2006256 m!2437927))

(declare-fun m!2437929 () Bool)

(assert (=> b!2006256 m!2437929))

(declare-fun m!2437931 () Bool)

(assert (=> b!2006256 m!2437931))

(declare-fun m!2437933 () Bool)

(assert (=> b!2006256 m!2437933))

(assert (=> b!2006256 m!2437917))

(declare-fun m!2437937 () Bool)

(assert (=> b!2006256 m!2437937))

(assert (=> b!2006256 m!2437933))

(declare-fun m!2437941 () Bool)

(assert (=> b!2006256 m!2437941))

(declare-fun m!2437943 () Bool)

(assert (=> b!2006256 m!2437943))

(assert (=> b!2006256 m!2437937))

(assert (=> b!2006256 m!2437925))

(assert (=> b!2006256 m!2437929))

(declare-fun m!2437945 () Bool)

(assert (=> b!2006256 m!2437945))

(assert (=> b!2005253 d!612583))

(declare-fun b!2006270 () Bool)

(declare-fun e!1267655 () Unit!36581)

(declare-fun Unit!36598 () Unit!36581)

(assert (=> b!2006270 (= e!1267655 Unit!36598)))

(declare-fun b!2006267 () Bool)

(declare-fun res!879903 () Bool)

(declare-fun e!1267656 () Bool)

(assert (=> b!2006267 (=> (not res!879903) (not e!1267656))))

(declare-fun lt!753462 () Token!7462)

(assert (=> b!2006267 (= res!879903 (matchR!2646 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 lt!753462))))) (list!8964 (charsOf!2495 lt!753462))))))

(declare-fun b!2006269 () Bool)

(declare-fun Unit!36599 () Unit!36581)

(assert (=> b!2006269 (= e!1267655 Unit!36599)))

(declare-fun lt!753455 () List!22119)

(assert (=> b!2006269 (= lt!753455 (++!5946 call!122553 lt!753092))))

(declare-fun lt!753467 () Unit!36581)

(assert (=> b!2006269 (= lt!753467 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!380 thiss!23328 (rule!6178 lt!753462) rules!3198 lt!753455))))

(assert (=> b!2006269 (isEmpty!13658 (maxPrefixOneRule!1240 thiss!23328 (rule!6178 lt!753462) lt!753455))))

(declare-fun lt!753463 () Unit!36581)

(assert (=> b!2006269 (= lt!753463 lt!753467)))

(declare-fun lt!753457 () List!22119)

(assert (=> b!2006269 (= lt!753457 (list!8964 (charsOf!2495 lt!753462)))))

(declare-fun lt!753453 () Unit!36581)

(assert (=> b!2006269 (= lt!753453 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!376 thiss!23328 (rule!6178 lt!753462) lt!753457 (++!5946 call!122553 lt!753092)))))

(assert (=> b!2006269 (not (matchR!2646 (regex!3955 (rule!6178 lt!753462)) lt!753457))))

(declare-fun lt!753451 () Unit!36581)

(assert (=> b!2006269 (= lt!753451 lt!753453)))

(assert (=> b!2006269 false))

(declare-fun d!612591 () Bool)

(assert (=> d!612591 (isDefined!3880 (maxPrefix!2004 thiss!23328 rules!3198 (++!5946 call!122553 lt!753092)))))

(declare-fun lt!753452 () Unit!36581)

(assert (=> d!612591 (= lt!753452 e!1267655)))

(declare-fun c!324061 () Bool)

(assert (=> d!612591 (= c!324061 (isEmpty!13658 (maxPrefix!2004 thiss!23328 rules!3198 (++!5946 call!122553 lt!753092))))))

(declare-fun lt!753458 () Unit!36581)

(declare-fun lt!753456 () Unit!36581)

(assert (=> d!612591 (= lt!753458 lt!753456)))

(assert (=> d!612591 e!1267656))

(declare-fun res!879904 () Bool)

(assert (=> d!612591 (=> (not res!879904) (not e!1267656))))

(assert (=> d!612591 (= res!879904 (isDefined!3879 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 lt!753462)))))))

(assert (=> d!612591 (= lt!753456 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!770 thiss!23328 rules!3198 call!122553 lt!753462))))

(declare-fun lt!753466 () Unit!36581)

(declare-fun lt!753460 () Unit!36581)

(assert (=> d!612591 (= lt!753466 lt!753460)))

(declare-fun lt!753465 () List!22119)

(assert (=> d!612591 (isPrefix!1958 lt!753465 (++!5946 call!122553 lt!753092))))

(assert (=> d!612591 (= lt!753460 (lemmaPrefixStaysPrefixWhenAddingToSuffix!372 lt!753465 call!122553 lt!753092))))

(assert (=> d!612591 (= lt!753465 (list!8964 (charsOf!2495 lt!753462)))))

(declare-fun lt!753454 () Unit!36581)

(declare-fun lt!753459 () Unit!36581)

(assert (=> d!612591 (= lt!753454 lt!753459)))

(declare-fun lt!753461 () List!22119)

(declare-fun lt!753464 () List!22119)

(assert (=> d!612591 (isPrefix!1958 lt!753461 (++!5946 lt!753461 lt!753464))))

(assert (=> d!612591 (= lt!753459 (lemmaConcatTwoListThenFirstIsPrefix!1339 lt!753461 lt!753464))))

(assert (=> d!612591 (= lt!753464 (_2!11821 (get!6960 (maxPrefix!2004 thiss!23328 rules!3198 call!122553))))))

(assert (=> d!612591 (= lt!753461 (list!8964 (charsOf!2495 lt!753462)))))

(assert (=> d!612591 (= lt!753462 (head!4529 (list!8966 (_1!11823 (lex!1590 thiss!23328 rules!3198 (seqFromList!2809 call!122553))))))))

(assert (=> d!612591 (not (isEmpty!13654 rules!3198))))

(assert (=> d!612591 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!752 thiss!23328 rules!3198 call!122553 lt!753092) lt!753452)))

(declare-fun b!2006268 () Bool)

(assert (=> b!2006268 (= e!1267656 (= (rule!6178 lt!753462) (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 lt!753462))))))))

(assert (= (and d!612591 res!879904) b!2006267))

(assert (= (and b!2006267 res!879903) b!2006268))

(assert (= (and d!612591 c!324061) b!2006269))

(assert (= (and d!612591 (not c!324061)) b!2006270))

(declare-fun m!2437961 () Bool)

(assert (=> b!2006267 m!2437961))

(declare-fun m!2437963 () Bool)

(assert (=> b!2006267 m!2437963))

(declare-fun m!2437965 () Bool)

(assert (=> b!2006267 m!2437965))

(declare-fun m!2437969 () Bool)

(assert (=> b!2006267 m!2437969))

(declare-fun m!2437971 () Bool)

(assert (=> b!2006267 m!2437971))

(assert (=> b!2006267 m!2437961))

(assert (=> b!2006267 m!2437965))

(assert (=> b!2006267 m!2437969))

(declare-fun m!2437973 () Bool)

(assert (=> b!2006269 m!2437973))

(declare-fun m!2437975 () Bool)

(assert (=> b!2006269 m!2437975))

(assert (=> b!2006269 m!2437973))

(declare-fun m!2437977 () Bool)

(assert (=> b!2006269 m!2437977))

(declare-fun m!2437979 () Bool)

(assert (=> b!2006269 m!2437979))

(declare-fun m!2437981 () Bool)

(assert (=> b!2006269 m!2437981))

(assert (=> b!2006269 m!2437965))

(assert (=> b!2006269 m!2437979))

(declare-fun m!2437983 () Bool)

(assert (=> b!2006269 m!2437983))

(assert (=> b!2006269 m!2437965))

(assert (=> b!2006269 m!2437969))

(declare-fun m!2437985 () Bool)

(assert (=> d!612591 m!2437985))

(declare-fun m!2437987 () Bool)

(assert (=> d!612591 m!2437987))

(declare-fun m!2437989 () Bool)

(assert (=> d!612591 m!2437989))

(declare-fun m!2437991 () Bool)

(assert (=> d!612591 m!2437991))

(declare-fun m!2437993 () Bool)

(assert (=> d!612591 m!2437993))

(declare-fun m!2437995 () Bool)

(assert (=> d!612591 m!2437995))

(assert (=> d!612591 m!2437991))

(assert (=> d!612591 m!2435733))

(assert (=> d!612591 m!2437979))

(assert (=> d!612591 m!2437987))

(declare-fun m!2437997 () Bool)

(assert (=> d!612591 m!2437997))

(declare-fun m!2437999 () Bool)

(assert (=> d!612591 m!2437999))

(assert (=> d!612591 m!2437979))

(declare-fun m!2438001 () Bool)

(assert (=> d!612591 m!2438001))

(assert (=> d!612591 m!2437961))

(assert (=> d!612591 m!2437965))

(assert (=> d!612591 m!2437969))

(declare-fun m!2438005 () Bool)

(assert (=> d!612591 m!2438005))

(declare-fun m!2438007 () Bool)

(assert (=> d!612591 m!2438007))

(declare-fun m!2438009 () Bool)

(assert (=> d!612591 m!2438009))

(assert (=> d!612591 m!2437979))

(assert (=> d!612591 m!2437987))

(assert (=> d!612591 m!2437985))

(declare-fun m!2438011 () Bool)

(assert (=> d!612591 m!2438011))

(declare-fun m!2438013 () Bool)

(assert (=> d!612591 m!2438013))

(assert (=> d!612591 m!2438009))

(declare-fun m!2438015 () Bool)

(assert (=> d!612591 m!2438015))

(assert (=> d!612591 m!2437961))

(declare-fun m!2438017 () Bool)

(assert (=> d!612591 m!2438017))

(assert (=> d!612591 m!2438005))

(assert (=> d!612591 m!2437965))

(assert (=> b!2006268 m!2437961))

(assert (=> b!2006268 m!2437961))

(assert (=> b!2006268 m!2437963))

(assert (=> b!2005253 d!612591))

(declare-fun bm!122620 () Bool)

(declare-fun call!122625 () Bool)

(assert (=> bm!122620 (= call!122625 (isEmpty!13657 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078))))))))

(declare-fun b!2006272 () Bool)

(declare-fun e!1267661 () Bool)

(declare-fun lt!753468 () Bool)

(assert (=> b!2006272 (= e!1267661 (= lt!753468 call!122625))))

(declare-fun b!2006273 () Bool)

(declare-fun e!1267663 () Bool)

(assert (=> b!2006273 (= e!1267663 (nullable!1626 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753078))))))))

(declare-fun b!2006274 () Bool)

(declare-fun res!879909 () Bool)

(declare-fun e!1267660 () Bool)

(assert (=> b!2006274 (=> (not res!879909) (not e!1267660))))

(assert (=> b!2006274 (= res!879909 (not call!122625))))

(declare-fun b!2006275 () Bool)

(declare-fun e!1267658 () Bool)

(declare-fun e!1267662 () Bool)

(assert (=> b!2006275 (= e!1267658 e!1267662)))

(declare-fun res!879911 () Bool)

(assert (=> b!2006275 (=> (not res!879911) (not e!1267662))))

(assert (=> b!2006275 (= res!879911 (not lt!753468))))

(declare-fun b!2006276 () Bool)

(declare-fun res!879908 () Bool)

(assert (=> b!2006276 (=> (not res!879908) (not e!1267660))))

(assert (=> b!2006276 (= res!879908 (isEmpty!13657 (tail!3015 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078)))))))))

(declare-fun b!2006277 () Bool)

(declare-fun e!1267664 () Bool)

(assert (=> b!2006277 (= e!1267664 (not lt!753468))))

(declare-fun b!2006278 () Bool)

(declare-fun e!1267659 () Bool)

(assert (=> b!2006278 (= e!1267662 e!1267659)))

(declare-fun res!879905 () Bool)

(assert (=> b!2006278 (=> res!879905 e!1267659)))

(assert (=> b!2006278 (= res!879905 call!122625)))

(declare-fun b!2006279 () Bool)

(declare-fun res!879910 () Bool)

(assert (=> b!2006279 (=> res!879910 e!1267658)))

(assert (=> b!2006279 (= res!879910 e!1267660)))

(declare-fun res!879907 () Bool)

(assert (=> b!2006279 (=> (not res!879907) (not e!1267660))))

(assert (=> b!2006279 (= res!879907 lt!753468)))

(declare-fun b!2006271 () Bool)

(assert (=> b!2006271 (= e!1267659 (not (= (head!4531 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078))))) (c!323780 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753078))))))))))

(declare-fun d!612597 () Bool)

(assert (=> d!612597 e!1267661))

(declare-fun c!324064 () Bool)

(assert (=> d!612597 (= c!324064 (is-EmptyExpr!5380 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753078))))))))

(assert (=> d!612597 (= lt!753468 e!1267663)))

(declare-fun c!324062 () Bool)

(assert (=> d!612597 (= c!324062 (isEmpty!13657 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078))))))))

(assert (=> d!612597 (validRegex!2152 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))))

(assert (=> d!612597 (= (matchR!2646 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))) (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078))))) lt!753468)))

(declare-fun b!2006280 () Bool)

(declare-fun res!879906 () Bool)

(assert (=> b!2006280 (=> res!879906 e!1267658)))

(assert (=> b!2006280 (= res!879906 (not (is-ElementMatch!5380 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))))))

(assert (=> b!2006280 (= e!1267664 e!1267658)))

(declare-fun b!2006281 () Bool)

(assert (=> b!2006281 (= e!1267660 (= (head!4531 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078))))) (c!323780 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))))))

(declare-fun b!2006282 () Bool)

(declare-fun res!879912 () Bool)

(assert (=> b!2006282 (=> res!879912 e!1267659)))

(assert (=> b!2006282 (= res!879912 (not (isEmpty!13657 (tail!3015 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078))))))))))

(declare-fun b!2006283 () Bool)

(assert (=> b!2006283 (= e!1267661 e!1267664)))

(declare-fun c!324063 () Bool)

(assert (=> b!2006283 (= c!324063 (is-EmptyLang!5380 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753078))))))))

(declare-fun b!2006284 () Bool)

(assert (=> b!2006284 (= e!1267663 (matchR!2646 (derivativeStep!1385 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))) (head!4531 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078)))))) (tail!3015 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753078)))))))))

(assert (= (and d!612597 c!324062) b!2006273))

(assert (= (and d!612597 (not c!324062)) b!2006284))

(assert (= (and d!612597 c!324064) b!2006272))

(assert (= (and d!612597 (not c!324064)) b!2006283))

(assert (= (and b!2006283 c!324063) b!2006277))

(assert (= (and b!2006283 (not c!324063)) b!2006280))

(assert (= (and b!2006280 (not res!879906)) b!2006279))

(assert (= (and b!2006279 res!879907) b!2006274))

(assert (= (and b!2006274 res!879909) b!2006276))

(assert (= (and b!2006276 res!879908) b!2006281))

(assert (= (and b!2006279 (not res!879910)) b!2006275))

(assert (= (and b!2006275 res!879911) b!2006278))

(assert (= (and b!2006278 (not res!879905)) b!2006282))

(assert (= (and b!2006282 (not res!879912)) b!2006271))

(assert (= (or b!2006272 b!2006274 b!2006278) bm!122620))

(assert (=> b!2006281 m!2436251))

(declare-fun m!2438029 () Bool)

(assert (=> b!2006281 m!2438029))

(assert (=> b!2006282 m!2436251))

(declare-fun m!2438031 () Bool)

(assert (=> b!2006282 m!2438031))

(assert (=> b!2006282 m!2438031))

(declare-fun m!2438033 () Bool)

(assert (=> b!2006282 m!2438033))

(assert (=> b!2006276 m!2436251))

(assert (=> b!2006276 m!2438031))

(assert (=> b!2006276 m!2438031))

(assert (=> b!2006276 m!2438033))

(declare-fun m!2438035 () Bool)

(assert (=> b!2006273 m!2438035))

(assert (=> d!612597 m!2436251))

(declare-fun m!2438037 () Bool)

(assert (=> d!612597 m!2438037))

(declare-fun m!2438039 () Bool)

(assert (=> d!612597 m!2438039))

(assert (=> b!2006284 m!2436251))

(assert (=> b!2006284 m!2438029))

(assert (=> b!2006284 m!2438029))

(declare-fun m!2438041 () Bool)

(assert (=> b!2006284 m!2438041))

(assert (=> b!2006284 m!2436251))

(assert (=> b!2006284 m!2438031))

(assert (=> b!2006284 m!2438041))

(assert (=> b!2006284 m!2438031))

(declare-fun m!2438043 () Bool)

(assert (=> b!2006284 m!2438043))

(assert (=> bm!122620 m!2436251))

(assert (=> bm!122620 m!2438037))

(assert (=> b!2006271 m!2436251))

(assert (=> b!2006271 m!2438029))

(assert (=> b!2005226 d!612597))

(assert (=> b!2005226 d!612307))

(assert (=> b!2005226 d!612303))

(assert (=> b!2005226 d!612305))

(assert (=> b!2005281 d!612317))

(declare-fun d!612609 () Bool)

(declare-fun c!324065 () Bool)

(assert (=> d!612609 (= c!324065 (is-Node!7362 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354)))))))

(declare-fun e!1267667 () Bool)

(assert (=> d!612609 (= (inv!29193 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354)))) e!1267667)))

(declare-fun b!2006287 () Bool)

(assert (=> b!2006287 (= e!1267667 (inv!29197 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354)))))))

(declare-fun b!2006288 () Bool)

(declare-fun e!1267668 () Bool)

(assert (=> b!2006288 (= e!1267667 e!1267668)))

(declare-fun res!879915 () Bool)

(assert (=> b!2006288 (= res!879915 (not (is-Leaf!10803 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354))))))))

(assert (=> b!2006288 (=> res!879915 e!1267668)))

(declare-fun b!2006289 () Bool)

(assert (=> b!2006289 (= e!1267668 (inv!29198 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354)))))))

(assert (= (and d!612609 c!324065) b!2006287))

(assert (= (and d!612609 (not c!324065)) b!2006288))

(assert (= (and b!2006288 (not res!879915)) b!2006289))

(declare-fun m!2438047 () Bool)

(assert (=> b!2006287 m!2438047))

(declare-fun m!2438049 () Bool)

(assert (=> b!2006289 m!2438049))

(assert (=> b!2005200 d!612609))

(declare-fun d!612613 () Bool)

(assert (=> d!612613 (= (isDefined!3880 lt!753083) (not (isEmpty!13658 lt!753083)))))

(declare-fun bs!419522 () Bool)

(assert (= bs!419522 d!612613))

(assert (=> bs!419522 m!2436277))

(assert (=> b!2005236 d!612613))

(declare-fun d!612615 () Bool)

(declare-fun charsToBigInt!1 (List!22118) Int)

(assert (=> d!612615 (= (inv!17 (value!124310 separatorToken!354)) (= (charsToBigInt!1 (text!29085 (value!124310 separatorToken!354))) (value!124302 (value!124310 separatorToken!354))))))

(declare-fun bs!419523 () Bool)

(assert (= bs!419523 d!612615))

(declare-fun m!2438051 () Bool)

(assert (=> bs!419523 m!2438051))

(assert (=> b!2005066 d!612615))

(declare-fun d!612617 () Bool)

(declare-fun lt!753475 () Bool)

(assert (=> d!612617 (= lt!753475 (isEmpty!13657 (list!8964 (_2!11823 lt!753070))))))

(assert (=> d!612617 (= lt!753475 (isEmpty!13668 (c!323781 (_2!11823 lt!753070))))))

(assert (=> d!612617 (= (isEmpty!13660 (_2!11823 lt!753070)) lt!753475)))

(declare-fun bs!419524 () Bool)

(assert (= bs!419524 d!612617))

(declare-fun m!2438053 () Bool)

(assert (=> bs!419524 m!2438053))

(assert (=> bs!419524 m!2438053))

(declare-fun m!2438055 () Bool)

(assert (=> bs!419524 m!2438055))

(declare-fun m!2438057 () Bool)

(assert (=> bs!419524 m!2438057))

(assert (=> b!2005194 d!612617))

(declare-fun bm!122621 () Bool)

(declare-fun call!122626 () Bool)

(assert (=> bm!122621 (= call!122626 (isEmpty!13657 (tail!3015 lt!752900)))))

(declare-fun b!2006300 () Bool)

(declare-fun e!1267676 () Bool)

(declare-fun lt!753476 () Bool)

(assert (=> b!2006300 (= e!1267676 (= lt!753476 call!122626))))

(declare-fun b!2006301 () Bool)

(declare-fun e!1267678 () Bool)

(assert (=> b!2006301 (= e!1267678 (nullable!1626 (derivativeStep!1385 (regex!3955 lt!752901) (head!4531 lt!752900))))))

(declare-fun b!2006302 () Bool)

(declare-fun res!879927 () Bool)

(declare-fun e!1267675 () Bool)

(assert (=> b!2006302 (=> (not res!879927) (not e!1267675))))

(assert (=> b!2006302 (= res!879927 (not call!122626))))

(declare-fun b!2006303 () Bool)

(declare-fun e!1267673 () Bool)

(declare-fun e!1267677 () Bool)

(assert (=> b!2006303 (= e!1267673 e!1267677)))

(declare-fun res!879929 () Bool)

(assert (=> b!2006303 (=> (not res!879929) (not e!1267677))))

(assert (=> b!2006303 (= res!879929 (not lt!753476))))

(declare-fun b!2006304 () Bool)

(declare-fun res!879926 () Bool)

(assert (=> b!2006304 (=> (not res!879926) (not e!1267675))))

(assert (=> b!2006304 (= res!879926 (isEmpty!13657 (tail!3015 (tail!3015 lt!752900))))))

(declare-fun b!2006305 () Bool)

(declare-fun e!1267679 () Bool)

(assert (=> b!2006305 (= e!1267679 (not lt!753476))))

(declare-fun b!2006306 () Bool)

(declare-fun e!1267674 () Bool)

(assert (=> b!2006306 (= e!1267677 e!1267674)))

(declare-fun res!879923 () Bool)

(assert (=> b!2006306 (=> res!879923 e!1267674)))

(assert (=> b!2006306 (= res!879923 call!122626)))

(declare-fun b!2006307 () Bool)

(declare-fun res!879928 () Bool)

(assert (=> b!2006307 (=> res!879928 e!1267673)))

(assert (=> b!2006307 (= res!879928 e!1267675)))

(declare-fun res!879925 () Bool)

(assert (=> b!2006307 (=> (not res!879925) (not e!1267675))))

(assert (=> b!2006307 (= res!879925 lt!753476)))

(declare-fun b!2006299 () Bool)

(assert (=> b!2006299 (= e!1267674 (not (= (head!4531 (tail!3015 lt!752900)) (c!323780 (derivativeStep!1385 (regex!3955 lt!752901) (head!4531 lt!752900))))))))

(declare-fun d!612619 () Bool)

(assert (=> d!612619 e!1267676))

(declare-fun c!324069 () Bool)

(assert (=> d!612619 (= c!324069 (is-EmptyExpr!5380 (derivativeStep!1385 (regex!3955 lt!752901) (head!4531 lt!752900))))))

(assert (=> d!612619 (= lt!753476 e!1267678)))

(declare-fun c!324067 () Bool)

(assert (=> d!612619 (= c!324067 (isEmpty!13657 (tail!3015 lt!752900)))))

(assert (=> d!612619 (validRegex!2152 (derivativeStep!1385 (regex!3955 lt!752901) (head!4531 lt!752900)))))

(assert (=> d!612619 (= (matchR!2646 (derivativeStep!1385 (regex!3955 lt!752901) (head!4531 lt!752900)) (tail!3015 lt!752900)) lt!753476)))

(declare-fun b!2006308 () Bool)

(declare-fun res!879924 () Bool)

(assert (=> b!2006308 (=> res!879924 e!1267673)))

(assert (=> b!2006308 (= res!879924 (not (is-ElementMatch!5380 (derivativeStep!1385 (regex!3955 lt!752901) (head!4531 lt!752900)))))))

(assert (=> b!2006308 (= e!1267679 e!1267673)))

(declare-fun b!2006309 () Bool)

(assert (=> b!2006309 (= e!1267675 (= (head!4531 (tail!3015 lt!752900)) (c!323780 (derivativeStep!1385 (regex!3955 lt!752901) (head!4531 lt!752900)))))))

(declare-fun b!2006310 () Bool)

(declare-fun res!879930 () Bool)

(assert (=> b!2006310 (=> res!879930 e!1267674)))

(assert (=> b!2006310 (= res!879930 (not (isEmpty!13657 (tail!3015 (tail!3015 lt!752900)))))))

(declare-fun b!2006311 () Bool)

(assert (=> b!2006311 (= e!1267676 e!1267679)))

(declare-fun c!324068 () Bool)

(assert (=> b!2006311 (= c!324068 (is-EmptyLang!5380 (derivativeStep!1385 (regex!3955 lt!752901) (head!4531 lt!752900))))))

(declare-fun b!2006312 () Bool)

(assert (=> b!2006312 (= e!1267678 (matchR!2646 (derivativeStep!1385 (derivativeStep!1385 (regex!3955 lt!752901) (head!4531 lt!752900)) (head!4531 (tail!3015 lt!752900))) (tail!3015 (tail!3015 lt!752900))))))

(assert (= (and d!612619 c!324067) b!2006301))

(assert (= (and d!612619 (not c!324067)) b!2006312))

(assert (= (and d!612619 c!324069) b!2006300))

(assert (= (and d!612619 (not c!324069)) b!2006311))

(assert (= (and b!2006311 c!324068) b!2006305))

(assert (= (and b!2006311 (not c!324068)) b!2006308))

(assert (= (and b!2006308 (not res!879924)) b!2006307))

(assert (= (and b!2006307 res!879925) b!2006302))

(assert (= (and b!2006302 res!879927) b!2006304))

(assert (= (and b!2006304 res!879926) b!2006309))

(assert (= (and b!2006307 (not res!879928)) b!2006303))

(assert (= (and b!2006303 res!879929) b!2006306))

(assert (= (and b!2006306 (not res!879923)) b!2006310))

(assert (= (and b!2006310 (not res!879930)) b!2006299))

(assert (= (or b!2006300 b!2006302 b!2006306) bm!122621))

(assert (=> b!2006309 m!2436019))

(declare-fun m!2438081 () Bool)

(assert (=> b!2006309 m!2438081))

(assert (=> b!2006310 m!2436019))

(declare-fun m!2438085 () Bool)

(assert (=> b!2006310 m!2438085))

(assert (=> b!2006310 m!2438085))

(declare-fun m!2438087 () Bool)

(assert (=> b!2006310 m!2438087))

(assert (=> b!2006304 m!2436019))

(assert (=> b!2006304 m!2438085))

(assert (=> b!2006304 m!2438085))

(assert (=> b!2006304 m!2438087))

(assert (=> b!2006301 m!2436029))

(declare-fun m!2438091 () Bool)

(assert (=> b!2006301 m!2438091))

(assert (=> d!612619 m!2436019))

(assert (=> d!612619 m!2436021))

(assert (=> d!612619 m!2436029))

(declare-fun m!2438095 () Bool)

(assert (=> d!612619 m!2438095))

(assert (=> b!2006312 m!2436019))

(assert (=> b!2006312 m!2438081))

(assert (=> b!2006312 m!2436029))

(assert (=> b!2006312 m!2438081))

(declare-fun m!2438099 () Bool)

(assert (=> b!2006312 m!2438099))

(assert (=> b!2006312 m!2436019))

(assert (=> b!2006312 m!2438085))

(assert (=> b!2006312 m!2438099))

(assert (=> b!2006312 m!2438085))

(declare-fun m!2438107 () Bool)

(assert (=> b!2006312 m!2438107))

(assert (=> bm!122621 m!2436019))

(assert (=> bm!122621 m!2436021))

(assert (=> b!2006299 m!2436019))

(assert (=> b!2006299 m!2438081))

(assert (=> b!2005084 d!612619))

(declare-fun bm!122622 () Bool)

(declare-fun call!122628 () Regex!5380)

(declare-fun call!122627 () Regex!5380)

(assert (=> bm!122622 (= call!122628 call!122627)))

(declare-fun call!122629 () Regex!5380)

(declare-fun bm!122623 () Bool)

(declare-fun c!324072 () Bool)

(declare-fun c!324073 () Bool)

(declare-fun c!324071 () Bool)

(assert (=> bm!122623 (= call!122629 (derivativeStep!1385 (ite c!324072 (regOne!11273 (regex!3955 lt!752901)) (ite c!324073 (reg!5709 (regex!3955 lt!752901)) (ite c!324071 (regTwo!11272 (regex!3955 lt!752901)) (regOne!11272 (regex!3955 lt!752901))))) (head!4531 lt!752900)))))

(declare-fun b!2006313 () Bool)

(declare-fun e!1267682 () Regex!5380)

(declare-fun e!1267683 () Regex!5380)

(assert (=> b!2006313 (= e!1267682 e!1267683)))

(assert (=> b!2006313 (= c!324073 (is-Star!5380 (regex!3955 lt!752901)))))

(declare-fun call!122630 () Regex!5380)

(declare-fun bm!122624 () Bool)

(assert (=> bm!122624 (= call!122630 (derivativeStep!1385 (ite c!324072 (regTwo!11273 (regex!3955 lt!752901)) (regOne!11272 (regex!3955 lt!752901))) (head!4531 lt!752900)))))

(declare-fun b!2006314 () Bool)

(declare-fun e!1267680 () Regex!5380)

(assert (=> b!2006314 (= e!1267680 (Union!5380 (Concat!9472 call!122630 (regTwo!11272 (regex!3955 lt!752901))) call!122628))))

(declare-fun b!2006315 () Bool)

(assert (=> b!2006315 (= e!1267682 (Union!5380 call!122629 call!122630))))

(declare-fun d!612621 () Bool)

(declare-fun lt!753477 () Regex!5380)

(assert (=> d!612621 (validRegex!2152 lt!753477)))

(declare-fun e!1267681 () Regex!5380)

(assert (=> d!612621 (= lt!753477 e!1267681)))

(declare-fun c!324074 () Bool)

(assert (=> d!612621 (= c!324074 (or (is-EmptyExpr!5380 (regex!3955 lt!752901)) (is-EmptyLang!5380 (regex!3955 lt!752901))))))

(assert (=> d!612621 (validRegex!2152 (regex!3955 lt!752901))))

(assert (=> d!612621 (= (derivativeStep!1385 (regex!3955 lt!752901) (head!4531 lt!752900)) lt!753477)))

(declare-fun b!2006316 () Bool)

(assert (=> b!2006316 (= e!1267680 (Union!5380 (Concat!9472 call!122628 (regTwo!11272 (regex!3955 lt!752901))) EmptyLang!5380))))

(declare-fun b!2006317 () Bool)

(assert (=> b!2006317 (= e!1267681 EmptyLang!5380)))

(declare-fun b!2006318 () Bool)

(declare-fun e!1267684 () Regex!5380)

(assert (=> b!2006318 (= e!1267684 (ite (= (head!4531 lt!752900) (c!323780 (regex!3955 lt!752901))) EmptyExpr!5380 EmptyLang!5380))))

(declare-fun b!2006319 () Bool)

(assert (=> b!2006319 (= e!1267683 (Concat!9472 call!122627 (regex!3955 lt!752901)))))

(declare-fun b!2006320 () Bool)

(assert (=> b!2006320 (= c!324072 (is-Union!5380 (regex!3955 lt!752901)))))

(assert (=> b!2006320 (= e!1267684 e!1267682)))

(declare-fun bm!122625 () Bool)

(assert (=> bm!122625 (= call!122627 call!122629)))

(declare-fun b!2006321 () Bool)

(assert (=> b!2006321 (= c!324071 (nullable!1626 (regOne!11272 (regex!3955 lt!752901))))))

(assert (=> b!2006321 (= e!1267683 e!1267680)))

(declare-fun b!2006322 () Bool)

(assert (=> b!2006322 (= e!1267681 e!1267684)))

(declare-fun c!324070 () Bool)

(assert (=> b!2006322 (= c!324070 (is-ElementMatch!5380 (regex!3955 lt!752901)))))

(assert (= (and d!612621 c!324074) b!2006317))

(assert (= (and d!612621 (not c!324074)) b!2006322))

(assert (= (and b!2006322 c!324070) b!2006318))

(assert (= (and b!2006322 (not c!324070)) b!2006320))

(assert (= (and b!2006320 c!324072) b!2006315))

(assert (= (and b!2006320 (not c!324072)) b!2006313))

(assert (= (and b!2006313 c!324073) b!2006319))

(assert (= (and b!2006313 (not c!324073)) b!2006321))

(assert (= (and b!2006321 c!324071) b!2006314))

(assert (= (and b!2006321 (not c!324071)) b!2006316))

(assert (= (or b!2006314 b!2006316) bm!122622))

(assert (= (or b!2006319 bm!122622) bm!122625))

(assert (= (or b!2006315 bm!122625) bm!122623))

(assert (= (or b!2006315 b!2006314) bm!122624))

(assert (=> bm!122623 m!2436017))

(declare-fun m!2438113 () Bool)

(assert (=> bm!122623 m!2438113))

(assert (=> bm!122624 m!2436017))

(declare-fun m!2438115 () Bool)

(assert (=> bm!122624 m!2438115))

(declare-fun m!2438117 () Bool)

(assert (=> d!612621 m!2438117))

(assert (=> d!612621 m!2436027))

(declare-fun m!2438119 () Bool)

(assert (=> b!2006321 m!2438119))

(assert (=> b!2005084 d!612621))

(assert (=> b!2005084 d!612495))

(assert (=> b!2005084 d!612311))

(declare-fun d!612625 () Bool)

(assert (=> d!612625 (= (inv!17 (value!124310 (h!27439 tokens!598))) (= (charsToBigInt!1 (text!29085 (value!124310 (h!27439 tokens!598)))) (value!124302 (value!124310 (h!27439 tokens!598)))))))

(declare-fun bs!419525 () Bool)

(assert (= bs!419525 d!612625))

(declare-fun m!2438121 () Bool)

(assert (=> bs!419525 m!2438121))

(assert (=> b!2005214 d!612625))

(assert (=> b!2005239 d!612145))

(assert (=> b!2005239 d!612147))

(assert (=> b!2005239 d!612143))

(declare-fun d!612627 () Bool)

(assert (=> d!612627 (= (list!8964 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598)))) (list!8968 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598))))))))

(declare-fun bs!419526 () Bool)

(assert (= bs!419526 d!612627))

(declare-fun m!2438131 () Bool)

(assert (=> bs!419526 m!2438131))

(assert (=> b!2004839 d!612627))

(declare-fun d!612629 () Bool)

(assert (=> d!612629 (= (nullable!1626 (regex!3955 lt!752903)) (nullableFct!375 (regex!3955 lt!752903)))))

(declare-fun bs!419527 () Bool)

(assert (= bs!419527 d!612629))

(declare-fun m!2438133 () Bool)

(assert (=> bs!419527 m!2438133))

(assert (=> b!2005026 d!612629))

(declare-fun d!612631 () Bool)

(assert (=> d!612631 (= (list!8964 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354))) (list!8968 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354)))))))

(declare-fun bs!419528 () Bool)

(assert (= bs!419528 d!612631))

(declare-fun m!2438137 () Bool)

(assert (=> bs!419528 m!2438137))

(assert (=> b!2005198 d!612631))

(declare-fun b!2006340 () Bool)

(declare-fun e!1267692 () Bool)

(declare-fun lt!753479 () List!22119)

(assert (=> b!2006340 (= e!1267692 (or (not (= (ite c!323806 lt!752996 call!122523) Nil!22037)) (= lt!753479 e!1266853)))))

(declare-fun b!2006337 () Bool)

(declare-fun e!1267693 () List!22119)

(assert (=> b!2006337 (= e!1267693 (ite c!323806 lt!752996 call!122523))))

(declare-fun d!612633 () Bool)

(assert (=> d!612633 e!1267692))

(declare-fun res!879940 () Bool)

(assert (=> d!612633 (=> (not res!879940) (not e!1267692))))

(assert (=> d!612633 (= res!879940 (= (content!3225 lt!753479) (set.union (content!3225 e!1266853) (content!3225 (ite c!323806 lt!752996 call!122523)))))))

(assert (=> d!612633 (= lt!753479 e!1267693)))

(declare-fun c!324078 () Bool)

(assert (=> d!612633 (= c!324078 (is-Nil!22037 e!1266853))))

(assert (=> d!612633 (= (++!5946 e!1266853 (ite c!323806 lt!752996 call!122523)) lt!753479)))

(declare-fun b!2006339 () Bool)

(declare-fun res!879939 () Bool)

(assert (=> b!2006339 (=> (not res!879939) (not e!1267692))))

(assert (=> b!2006339 (= res!879939 (= (size!17229 lt!753479) (+ (size!17229 e!1266853) (size!17229 (ite c!323806 lt!752996 call!122523)))))))

(declare-fun b!2006338 () Bool)

(assert (=> b!2006338 (= e!1267693 (Cons!22037 (h!27438 e!1266853) (++!5946 (t!186780 e!1266853) (ite c!323806 lt!752996 call!122523))))))

(assert (= (and d!612633 c!324078) b!2006337))

(assert (= (and d!612633 (not c!324078)) b!2006338))

(assert (= (and d!612633 res!879940) b!2006339))

(assert (= (and b!2006339 res!879939) b!2006340))

(declare-fun m!2438143 () Bool)

(assert (=> d!612633 m!2438143))

(declare-fun m!2438145 () Bool)

(assert (=> d!612633 m!2438145))

(declare-fun m!2438147 () Bool)

(assert (=> d!612633 m!2438147))

(declare-fun m!2438149 () Bool)

(assert (=> b!2006339 m!2438149))

(declare-fun m!2438151 () Bool)

(assert (=> b!2006339 m!2438151))

(declare-fun m!2438153 () Bool)

(assert (=> b!2006339 m!2438153))

(declare-fun m!2438155 () Bool)

(assert (=> b!2006338 m!2438155))

(assert (=> bm!122514 d!612633))

(declare-fun bs!419529 () Bool)

(declare-fun d!612637 () Bool)

(assert (= bs!419529 (and d!612637 d!612067)))

(declare-fun lambda!75980 () Int)

(assert (=> bs!419529 (= (= (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (= lambda!75980 lambda!75941))))

(declare-fun bs!419530 () Bool)

(assert (= bs!419530 (and d!612637 d!612509)))

(assert (=> bs!419530 (= (= (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (= lambda!75980 lambda!75973))))

(assert (=> d!612637 true))

(assert (=> d!612637 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354)))) (dynLambda!10825 order!13969 lambda!75980))))

(assert (=> d!612637 (= (equivClasses!1509 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354)))) (Forall2!639 lambda!75980))))

(declare-fun bs!419531 () Bool)

(assert (= bs!419531 d!612637))

(declare-fun m!2438167 () Bool)

(assert (=> bs!419531 m!2438167))

(assert (=> b!2005085 d!612637))

(declare-fun d!612643 () Bool)

(assert (=> d!612643 (= (isEmpty!13662 lt!753105) (not (is-Some!4591 lt!753105)))))

(assert (=> d!612077 d!612643))

(assert (=> d!612077 d!612015))

(declare-fun b!2006369 () Bool)

(declare-fun e!1267711 () Bool)

(declare-fun call!122638 () Bool)

(assert (=> b!2006369 (= e!1267711 call!122638)))

(declare-fun bm!122633 () Bool)

(assert (=> bm!122633 (= call!122638 (ruleDisjointCharsFromAllFromOtherType!466 (h!27440 rules!3198) (t!186782 rules!3198)))))

(declare-fun b!2006370 () Bool)

(declare-fun e!1267712 () Bool)

(assert (=> b!2006370 (= e!1267712 e!1267711)))

(declare-fun res!879948 () Bool)

(assert (=> b!2006370 (= res!879948 (not (is-Cons!22039 rules!3198)))))

(assert (=> b!2006370 (=> res!879948 e!1267711)))

(declare-fun b!2006371 () Bool)

(declare-fun e!1267710 () Bool)

(assert (=> b!2006371 (= e!1267710 call!122638)))

(declare-fun b!2006372 () Bool)

(assert (=> b!2006372 (= e!1267712 e!1267710)))

(declare-fun res!879947 () Bool)

(declare-fun rulesUseDisjointChars!219 (Rule!7710 Rule!7710) Bool)

(assert (=> b!2006372 (= res!879947 (rulesUseDisjointChars!219 (h!27440 rules!3198) (h!27440 rules!3198)))))

(assert (=> b!2006372 (=> (not res!879947) (not e!1267710))))

(declare-fun d!612647 () Bool)

(declare-fun c!324090 () Bool)

(assert (=> d!612647 (= c!324090 (and (is-Cons!22039 rules!3198) (not (= (isSeparator!3955 (h!27440 rules!3198)) (isSeparator!3955 (h!27440 rules!3198))))))))

(assert (=> d!612647 (= (ruleDisjointCharsFromAllFromOtherType!466 (h!27440 rules!3198) rules!3198) e!1267712)))

(assert (= (and d!612647 c!324090) b!2006372))

(assert (= (and d!612647 (not c!324090)) b!2006370))

(assert (= (and b!2006372 res!879947) b!2006371))

(assert (= (and b!2006370 (not res!879948)) b!2006369))

(assert (= (or b!2006371 b!2006369) bm!122633))

(declare-fun m!2438187 () Bool)

(assert (=> bm!122633 m!2438187))

(declare-fun m!2438189 () Bool)

(assert (=> b!2006372 m!2438189))

(assert (=> b!2005093 d!612647))

(declare-fun d!612655 () Bool)

(assert (=> d!612655 (= (isEmpty!13657 (originalCharacters!4762 (h!27439 tokens!598))) (is-Nil!22037 (originalCharacters!4762 (h!27439 tokens!598))))))

(assert (=> d!611953 d!612655))

(assert (=> b!2005071 d!612495))

(declare-fun b!2006373 () Bool)

(declare-fun res!879955 () Bool)

(declare-fun e!1267714 () Bool)

(assert (=> b!2006373 (=> (not res!879955) (not e!1267714))))

(declare-fun lt!753489 () Option!4591)

(assert (=> b!2006373 (= res!879955 (< (size!17229 (_2!11821 (get!6960 lt!753489))) (size!17229 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun b!2006374 () Bool)

(assert (=> b!2006374 (= e!1267714 (contains!4019 (t!186782 rules!3198) (rule!6178 (_1!11821 (get!6960 lt!753489)))))))

(declare-fun b!2006375 () Bool)

(declare-fun e!1267715 () Option!4591)

(declare-fun lt!753488 () Option!4591)

(declare-fun lt!753487 () Option!4591)

(assert (=> b!2006375 (= e!1267715 (ite (and (is-None!4590 lt!753488) (is-None!4590 lt!753487)) None!4590 (ite (is-None!4590 lt!753487) lt!753488 (ite (is-None!4590 lt!753488) lt!753487 (ite (>= (size!17227 (_1!11821 (v!26819 lt!753488))) (size!17227 (_1!11821 (v!26819 lt!753487)))) lt!753488 lt!753487)))))))

(declare-fun call!122639 () Option!4591)

(assert (=> b!2006375 (= lt!753488 call!122639)))

(assert (=> b!2006375 (= lt!753487 (maxPrefix!2004 thiss!23328 (t!186782 (t!186782 rules!3198)) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!2006376 () Bool)

(declare-fun res!879952 () Bool)

(assert (=> b!2006376 (=> (not res!879952) (not e!1267714))))

(assert (=> b!2006376 (= res!879952 (= (value!124310 (_1!11821 (get!6960 lt!753489))) (apply!5768 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753489)))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753489)))))))))

(declare-fun b!2006378 () Bool)

(declare-fun e!1267713 () Bool)

(assert (=> b!2006378 (= e!1267713 e!1267714)))

(declare-fun res!879949 () Bool)

(assert (=> b!2006378 (=> (not res!879949) (not e!1267714))))

(assert (=> b!2006378 (= res!879949 (isDefined!3880 lt!753489))))

(declare-fun b!2006379 () Bool)

(declare-fun res!879953 () Bool)

(assert (=> b!2006379 (=> (not res!879953) (not e!1267714))))

(assert (=> b!2006379 (= res!879953 (= (++!5946 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753489)))) (_2!11821 (get!6960 lt!753489))) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun bm!122634 () Bool)

(assert (=> bm!122634 (= call!122639 (maxPrefixOneRule!1240 thiss!23328 (h!27440 (t!186782 rules!3198)) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!2006380 () Bool)

(assert (=> b!2006380 (= e!1267715 call!122639)))

(declare-fun b!2006381 () Bool)

(declare-fun res!879954 () Bool)

(assert (=> b!2006381 (=> (not res!879954) (not e!1267714))))

(assert (=> b!2006381 (= res!879954 (= (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753489)))) (originalCharacters!4762 (_1!11821 (get!6960 lt!753489)))))))

(declare-fun d!612657 () Bool)

(assert (=> d!612657 e!1267713))

(declare-fun res!879951 () Bool)

(assert (=> d!612657 (=> res!879951 e!1267713)))

(assert (=> d!612657 (= res!879951 (isEmpty!13658 lt!753489))))

(assert (=> d!612657 (= lt!753489 e!1267715)))

(declare-fun c!324091 () Bool)

(assert (=> d!612657 (= c!324091 (and (is-Cons!22039 (t!186782 rules!3198)) (is-Nil!22039 (t!186782 (t!186782 rules!3198)))))))

(declare-fun lt!753485 () Unit!36581)

(declare-fun lt!753486 () Unit!36581)

(assert (=> d!612657 (= lt!753485 lt!753486)))

(assert (=> d!612657 (isPrefix!1958 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(assert (=> d!612657 (= lt!753486 (lemmaIsPrefixRefl!1276 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (=> d!612657 (rulesValidInductive!1357 thiss!23328 (t!186782 rules!3198))))

(assert (=> d!612657 (= (maxPrefix!2004 thiss!23328 (t!186782 rules!3198) (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!753489)))

(declare-fun b!2006377 () Bool)

(declare-fun res!879950 () Bool)

(assert (=> b!2006377 (=> (not res!879950) (not e!1267714))))

(assert (=> b!2006377 (= res!879950 (matchR!2646 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753489)))) (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753489))))))))

(assert (= (and d!612657 c!324091) b!2006380))

(assert (= (and d!612657 (not c!324091)) b!2006375))

(assert (= (or b!2006380 b!2006375) bm!122634))

(assert (= (and d!612657 (not res!879951)) b!2006378))

(assert (= (and b!2006378 res!879949) b!2006381))

(assert (= (and b!2006381 res!879954) b!2006373))

(assert (= (and b!2006373 res!879955) b!2006379))

(assert (= (and b!2006379 res!879953) b!2006376))

(assert (= (and b!2006376 res!879952) b!2006377))

(assert (= (and b!2006377 res!879950) b!2006374))

(declare-fun m!2438195 () Bool)

(assert (=> b!2006378 m!2438195))

(declare-fun m!2438197 () Bool)

(assert (=> b!2006376 m!2438197))

(declare-fun m!2438199 () Bool)

(assert (=> b!2006376 m!2438199))

(assert (=> b!2006376 m!2438199))

(declare-fun m!2438201 () Bool)

(assert (=> b!2006376 m!2438201))

(assert (=> b!2006374 m!2438197))

(declare-fun m!2438203 () Bool)

(assert (=> b!2006374 m!2438203))

(declare-fun m!2438205 () Bool)

(assert (=> d!612657 m!2438205))

(assert (=> d!612657 m!2435695))

(assert (=> d!612657 m!2435695))

(assert (=> d!612657 m!2435853))

(assert (=> d!612657 m!2435695))

(assert (=> d!612657 m!2435695))

(assert (=> d!612657 m!2435855))

(assert (=> d!612657 m!2436719))

(assert (=> b!2006377 m!2438197))

(declare-fun m!2438207 () Bool)

(assert (=> b!2006377 m!2438207))

(assert (=> b!2006377 m!2438207))

(declare-fun m!2438209 () Bool)

(assert (=> b!2006377 m!2438209))

(assert (=> b!2006377 m!2438209))

(declare-fun m!2438211 () Bool)

(assert (=> b!2006377 m!2438211))

(assert (=> b!2006379 m!2438197))

(assert (=> b!2006379 m!2438207))

(assert (=> b!2006379 m!2438207))

(assert (=> b!2006379 m!2438209))

(assert (=> b!2006379 m!2438209))

(declare-fun m!2438213 () Bool)

(assert (=> b!2006379 m!2438213))

(assert (=> b!2006381 m!2438197))

(assert (=> b!2006381 m!2438207))

(assert (=> b!2006381 m!2438207))

(assert (=> b!2006381 m!2438209))

(assert (=> b!2006373 m!2438197))

(declare-fun m!2438215 () Bool)

(assert (=> b!2006373 m!2438215))

(assert (=> b!2006373 m!2435695))

(assert (=> b!2006373 m!2435869))

(assert (=> b!2006375 m!2435695))

(declare-fun m!2438217 () Bool)

(assert (=> b!2006375 m!2438217))

(assert (=> bm!122634 m!2435695))

(declare-fun m!2438219 () Bool)

(assert (=> bm!122634 m!2438219))

(assert (=> b!2004866 d!612657))

(declare-fun d!612661 () Bool)

(assert (=> d!612661 (= (isEmpty!13662 lt!752904) (not (is-Some!4591 lt!752904)))))

(assert (=> d!612059 d!612661))

(declare-fun d!612663 () Bool)

(assert (=> d!612663 (= (inv!29194 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906))) (isBalanced!2290 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906)))))))

(declare-fun bs!419533 () Bool)

(assert (= bs!419533 d!612663))

(declare-fun m!2438221 () Bool)

(assert (=> bs!419533 m!2438221))

(assert (=> tb!124899 d!612663))

(declare-fun d!612665 () Bool)

(assert (=> d!612665 (= (inv!29186 (tag!4415 (rule!6178 (h!27439 (t!186781 tokens!598))))) (= (mod (str.len (value!124309 (tag!4415 (rule!6178 (h!27439 (t!186781 tokens!598)))))) 2) 0))))

(assert (=> b!2005316 d!612665))

(declare-fun d!612667 () Bool)

(declare-fun res!879959 () Bool)

(declare-fun e!1267719 () Bool)

(assert (=> d!612667 (=> (not res!879959) (not e!1267719))))

(assert (=> d!612667 (= res!879959 (semiInverseModEq!1582 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598)))))))))

(assert (=> d!612667 (= (inv!29189 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) e!1267719)))

(declare-fun b!2006385 () Bool)

(assert (=> b!2006385 (= e!1267719 (equivClasses!1509 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598)))))))))

(assert (= (and d!612667 res!879959) b!2006385))

(declare-fun m!2438223 () Bool)

(assert (=> d!612667 m!2438223))

(declare-fun m!2438225 () Bool)

(assert (=> b!2006385 m!2438225))

(assert (=> b!2005316 d!612667))

(assert (=> b!2005261 d!612185))

(assert (=> b!2005261 d!612077))

(assert (=> b!2005034 d!612261))

(declare-fun b!2006389 () Bool)

(declare-fun e!1267720 () Bool)

(declare-fun lt!753493 () List!22119)

(assert (=> b!2006389 (= e!1267720 (or (not (= lt!752996 Nil!22037)) (= lt!753493 call!122522)))))

(declare-fun b!2006386 () Bool)

(declare-fun e!1267721 () List!22119)

(assert (=> b!2006386 (= e!1267721 lt!752996)))

(declare-fun d!612669 () Bool)

(assert (=> d!612669 e!1267720))

(declare-fun res!879961 () Bool)

(assert (=> d!612669 (=> (not res!879961) (not e!1267720))))

(assert (=> d!612669 (= res!879961 (= (content!3225 lt!753493) (set.union (content!3225 call!122522) (content!3225 lt!752996))))))

(assert (=> d!612669 (= lt!753493 e!1267721)))

(declare-fun c!324092 () Bool)

(assert (=> d!612669 (= c!324092 (is-Nil!22037 call!122522))))

(assert (=> d!612669 (= (++!5946 call!122522 lt!752996) lt!753493)))

(declare-fun b!2006388 () Bool)

(declare-fun res!879960 () Bool)

(assert (=> b!2006388 (=> (not res!879960) (not e!1267720))))

(assert (=> b!2006388 (= res!879960 (= (size!17229 lt!753493) (+ (size!17229 call!122522) (size!17229 lt!752996))))))

(declare-fun b!2006387 () Bool)

(assert (=> b!2006387 (= e!1267721 (Cons!22037 (h!27438 call!122522) (++!5946 (t!186780 call!122522) lt!752996)))))

(assert (= (and d!612669 c!324092) b!2006386))

(assert (= (and d!612669 (not c!324092)) b!2006387))

(assert (= (and d!612669 res!879961) b!2006388))

(assert (= (and b!2006388 res!879960) b!2006389))

(declare-fun m!2438227 () Bool)

(assert (=> d!612669 m!2438227))

(declare-fun m!2438229 () Bool)

(assert (=> d!612669 m!2438229))

(declare-fun m!2438231 () Bool)

(assert (=> d!612669 m!2438231))

(declare-fun m!2438233 () Bool)

(assert (=> b!2006388 m!2438233))

(declare-fun m!2438235 () Bool)

(assert (=> b!2006388 m!2438235))

(declare-fun m!2438237 () Bool)

(assert (=> b!2006388 m!2438237))

(declare-fun m!2438239 () Bool)

(assert (=> b!2006387 m!2438239))

(assert (=> b!2004948 d!612669))

(declare-fun b!2006397 () Bool)

(declare-fun e!1267724 () Bool)

(declare-fun lt!753494 () List!22119)

(assert (=> b!2006397 (= e!1267724 (or (not (= lt!752996 Nil!22037)) (= lt!753494 (list!8964 (charsOf!2495 (h!27439 tokens!598))))))))

(declare-fun b!2006394 () Bool)

(declare-fun e!1267725 () List!22119)

(assert (=> b!2006394 (= e!1267725 lt!752996)))

(declare-fun d!612671 () Bool)

(assert (=> d!612671 e!1267724))

(declare-fun res!879963 () Bool)

(assert (=> d!612671 (=> (not res!879963) (not e!1267724))))

(assert (=> d!612671 (= res!879963 (= (content!3225 lt!753494) (set.union (content!3225 (list!8964 (charsOf!2495 (h!27439 tokens!598)))) (content!3225 lt!752996))))))

(assert (=> d!612671 (= lt!753494 e!1267725)))

(declare-fun c!324095 () Bool)

(assert (=> d!612671 (= c!324095 (is-Nil!22037 (list!8964 (charsOf!2495 (h!27439 tokens!598)))))))

(assert (=> d!612671 (= (++!5946 (list!8964 (charsOf!2495 (h!27439 tokens!598))) lt!752996) lt!753494)))

(declare-fun b!2006396 () Bool)

(declare-fun res!879962 () Bool)

(assert (=> b!2006396 (=> (not res!879962) (not e!1267724))))

(assert (=> b!2006396 (= res!879962 (= (size!17229 lt!753494) (+ (size!17229 (list!8964 (charsOf!2495 (h!27439 tokens!598)))) (size!17229 lt!752996))))))

(declare-fun b!2006395 () Bool)

(assert (=> b!2006395 (= e!1267725 (Cons!22037 (h!27438 (list!8964 (charsOf!2495 (h!27439 tokens!598)))) (++!5946 (t!186780 (list!8964 (charsOf!2495 (h!27439 tokens!598)))) lt!752996)))))

(assert (= (and d!612671 c!324095) b!2006394))

(assert (= (and d!612671 (not c!324095)) b!2006395))

(assert (= (and d!612671 res!879963) b!2006396))

(assert (= (and b!2006396 res!879962) b!2006397))

(declare-fun m!2438241 () Bool)

(assert (=> d!612671 m!2438241))

(assert (=> d!612671 m!2435925))

(declare-fun m!2438243 () Bool)

(assert (=> d!612671 m!2438243))

(assert (=> d!612671 m!2438231))

(declare-fun m!2438245 () Bool)

(assert (=> b!2006396 m!2438245))

(assert (=> b!2006396 m!2435925))

(declare-fun m!2438247 () Bool)

(assert (=> b!2006396 m!2438247))

(assert (=> b!2006396 m!2438237))

(declare-fun m!2438249 () Bool)

(assert (=> b!2006395 m!2438249))

(assert (=> b!2004952 d!612671))

(declare-fun d!612673 () Bool)

(assert (=> d!612673 (dynLambda!10821 lambda!75929 (h!27439 tokens!598))))

(declare-fun lt!753495 () Unit!36581)

(assert (=> d!612673 (= lt!753495 (choose!12219 tokens!598 lambda!75929 (h!27439 tokens!598)))))

(declare-fun e!1267730 () Bool)

(assert (=> d!612673 e!1267730))

(declare-fun res!879968 () Bool)

(assert (=> d!612673 (=> (not res!879968) (not e!1267730))))

(assert (=> d!612673 (= res!879968 (forall!4679 tokens!598 lambda!75929))))

(assert (=> d!612673 (= (forallContained!721 tokens!598 lambda!75929 (h!27439 tokens!598)) lt!753495)))

(declare-fun b!2006402 () Bool)

(assert (=> b!2006402 (= e!1267730 (contains!4021 tokens!598 (h!27439 tokens!598)))))

(assert (= (and d!612673 res!879968) b!2006402))

(declare-fun b_lambda!66831 () Bool)

(assert (=> (not b_lambda!66831) (not d!612673)))

(declare-fun m!2438251 () Bool)

(assert (=> d!612673 m!2438251))

(declare-fun m!2438253 () Bool)

(assert (=> d!612673 m!2438253))

(declare-fun m!2438255 () Bool)

(assert (=> d!612673 m!2438255))

(declare-fun m!2438257 () Bool)

(assert (=> b!2006402 m!2438257))

(assert (=> b!2004952 d!612673))

(assert (=> b!2004952 d!612069))

(assert (=> b!2004952 d!612085))

(assert (=> b!2004952 d!612187))

(declare-fun b!2006403 () Bool)

(declare-fun res!879975 () Bool)

(declare-fun e!1267732 () Bool)

(assert (=> b!2006403 (=> (not res!879975) (not e!1267732))))

(declare-fun lt!753500 () Option!4591)

(assert (=> b!2006403 (= res!879975 (< (size!17229 (_2!11821 (get!6960 lt!753500))) (size!17229 (++!5946 (list!8964 (charsOf!2495 (h!27439 tokens!598))) lt!752996))))))

(declare-fun b!2006404 () Bool)

(assert (=> b!2006404 (= e!1267732 (contains!4019 rules!3198 (rule!6178 (_1!11821 (get!6960 lt!753500)))))))

(declare-fun b!2006405 () Bool)

(declare-fun e!1267733 () Option!4591)

(declare-fun lt!753499 () Option!4591)

(declare-fun lt!753498 () Option!4591)

(assert (=> b!2006405 (= e!1267733 (ite (and (is-None!4590 lt!753499) (is-None!4590 lt!753498)) None!4590 (ite (is-None!4590 lt!753498) lt!753499 (ite (is-None!4590 lt!753499) lt!753498 (ite (>= (size!17227 (_1!11821 (v!26819 lt!753499))) (size!17227 (_1!11821 (v!26819 lt!753498)))) lt!753499 lt!753498)))))))

(declare-fun call!122642 () Option!4591)

(assert (=> b!2006405 (= lt!753499 call!122642)))

(assert (=> b!2006405 (= lt!753498 (maxPrefix!2004 thiss!23328 (t!186782 rules!3198) (++!5946 (list!8964 (charsOf!2495 (h!27439 tokens!598))) lt!752996)))))

(declare-fun b!2006406 () Bool)

(declare-fun res!879972 () Bool)

(assert (=> b!2006406 (=> (not res!879972) (not e!1267732))))

(assert (=> b!2006406 (= res!879972 (= (value!124310 (_1!11821 (get!6960 lt!753500))) (apply!5768 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753500)))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753500)))))))))

(declare-fun b!2006408 () Bool)

(declare-fun e!1267731 () Bool)

(assert (=> b!2006408 (= e!1267731 e!1267732)))

(declare-fun res!879969 () Bool)

(assert (=> b!2006408 (=> (not res!879969) (not e!1267732))))

(assert (=> b!2006408 (= res!879969 (isDefined!3880 lt!753500))))

(declare-fun b!2006409 () Bool)

(declare-fun res!879973 () Bool)

(assert (=> b!2006409 (=> (not res!879973) (not e!1267732))))

(assert (=> b!2006409 (= res!879973 (= (++!5946 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753500)))) (_2!11821 (get!6960 lt!753500))) (++!5946 (list!8964 (charsOf!2495 (h!27439 tokens!598))) lt!752996)))))

(declare-fun bm!122637 () Bool)

(assert (=> bm!122637 (= call!122642 (maxPrefixOneRule!1240 thiss!23328 (h!27440 rules!3198) (++!5946 (list!8964 (charsOf!2495 (h!27439 tokens!598))) lt!752996)))))

(declare-fun b!2006410 () Bool)

(assert (=> b!2006410 (= e!1267733 call!122642)))

(declare-fun b!2006411 () Bool)

(declare-fun res!879974 () Bool)

(assert (=> b!2006411 (=> (not res!879974) (not e!1267732))))

(assert (=> b!2006411 (= res!879974 (= (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753500)))) (originalCharacters!4762 (_1!11821 (get!6960 lt!753500)))))))

(declare-fun d!612675 () Bool)

(assert (=> d!612675 e!1267731))

(declare-fun res!879971 () Bool)

(assert (=> d!612675 (=> res!879971 e!1267731)))

(assert (=> d!612675 (= res!879971 (isEmpty!13658 lt!753500))))

(assert (=> d!612675 (= lt!753500 e!1267733)))

(declare-fun c!324096 () Bool)

(assert (=> d!612675 (= c!324096 (and (is-Cons!22039 rules!3198) (is-Nil!22039 (t!186782 rules!3198))))))

(declare-fun lt!753496 () Unit!36581)

(declare-fun lt!753497 () Unit!36581)

(assert (=> d!612675 (= lt!753496 lt!753497)))

(assert (=> d!612675 (isPrefix!1958 (++!5946 (list!8964 (charsOf!2495 (h!27439 tokens!598))) lt!752996) (++!5946 (list!8964 (charsOf!2495 (h!27439 tokens!598))) lt!752996))))

(assert (=> d!612675 (= lt!753497 (lemmaIsPrefixRefl!1276 (++!5946 (list!8964 (charsOf!2495 (h!27439 tokens!598))) lt!752996) (++!5946 (list!8964 (charsOf!2495 (h!27439 tokens!598))) lt!752996)))))

(assert (=> d!612675 (rulesValidInductive!1357 thiss!23328 rules!3198)))

(assert (=> d!612675 (= (maxPrefix!2004 thiss!23328 rules!3198 (++!5946 (list!8964 (charsOf!2495 (h!27439 tokens!598))) lt!752996)) lt!753500)))

(declare-fun b!2006407 () Bool)

(declare-fun res!879970 () Bool)

(assert (=> b!2006407 (=> (not res!879970) (not e!1267732))))

(assert (=> b!2006407 (= res!879970 (matchR!2646 (regex!3955 (rule!6178 (_1!11821 (get!6960 lt!753500)))) (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!753500))))))))

(assert (= (and d!612675 c!324096) b!2006410))

(assert (= (and d!612675 (not c!324096)) b!2006405))

(assert (= (or b!2006410 b!2006405) bm!122637))

(assert (= (and d!612675 (not res!879971)) b!2006408))

(assert (= (and b!2006408 res!879969) b!2006411))

(assert (= (and b!2006411 res!879974) b!2006403))

(assert (= (and b!2006403 res!879975) b!2006409))

(assert (= (and b!2006409 res!879973) b!2006406))

(assert (= (and b!2006406 res!879972) b!2006407))

(assert (= (and b!2006407 res!879970) b!2006404))

(declare-fun m!2438263 () Bool)

(assert (=> b!2006408 m!2438263))

(declare-fun m!2438265 () Bool)

(assert (=> b!2006406 m!2438265))

(declare-fun m!2438267 () Bool)

(assert (=> b!2006406 m!2438267))

(assert (=> b!2006406 m!2438267))

(declare-fun m!2438269 () Bool)

(assert (=> b!2006406 m!2438269))

(assert (=> b!2006404 m!2438265))

(declare-fun m!2438271 () Bool)

(assert (=> b!2006404 m!2438271))

(declare-fun m!2438273 () Bool)

(assert (=> d!612675 m!2438273))

(assert (=> d!612675 m!2435937))

(assert (=> d!612675 m!2435937))

(declare-fun m!2438275 () Bool)

(assert (=> d!612675 m!2438275))

(assert (=> d!612675 m!2435937))

(assert (=> d!612675 m!2435937))

(declare-fun m!2438277 () Bool)

(assert (=> d!612675 m!2438277))

(assert (=> d!612675 m!2435857))

(assert (=> b!2006407 m!2438265))

(declare-fun m!2438285 () Bool)

(assert (=> b!2006407 m!2438285))

(assert (=> b!2006407 m!2438285))

(declare-fun m!2438287 () Bool)

(assert (=> b!2006407 m!2438287))

(assert (=> b!2006407 m!2438287))

(declare-fun m!2438295 () Bool)

(assert (=> b!2006407 m!2438295))

(assert (=> b!2006409 m!2438265))

(assert (=> b!2006409 m!2438285))

(assert (=> b!2006409 m!2438285))

(assert (=> b!2006409 m!2438287))

(assert (=> b!2006409 m!2438287))

(declare-fun m!2438299 () Bool)

(assert (=> b!2006409 m!2438299))

(assert (=> b!2006411 m!2438265))

(assert (=> b!2006411 m!2438285))

(assert (=> b!2006411 m!2438285))

(assert (=> b!2006411 m!2438287))

(assert (=> b!2006403 m!2438265))

(declare-fun m!2438301 () Bool)

(assert (=> b!2006403 m!2438301))

(assert (=> b!2006403 m!2435937))

(declare-fun m!2438303 () Bool)

(assert (=> b!2006403 m!2438303))

(assert (=> b!2006405 m!2435937))

(declare-fun m!2438305 () Bool)

(assert (=> b!2006405 m!2438305))

(assert (=> bm!122637 m!2435937))

(declare-fun m!2438307 () Bool)

(assert (=> bm!122637 m!2438307))

(assert (=> b!2004952 d!612675))

(declare-fun bs!419534 () Bool)

(declare-fun d!612683 () Bool)

(assert (= bs!419534 (and d!612683 d!612067)))

(declare-fun lambda!75981 () Int)

(assert (=> bs!419534 (= (= (toValue!5616 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (= lambda!75981 lambda!75941))))

(declare-fun bs!419535 () Bool)

(assert (= bs!419535 (and d!612683 d!612509)))

(assert (=> bs!419535 (= (= (toValue!5616 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) (= lambda!75981 lambda!75973))))

(declare-fun bs!419536 () Bool)

(assert (= bs!419536 (and d!612683 d!612637)))

(assert (=> bs!419536 (= (= (toValue!5616 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354)))) (= lambda!75981 lambda!75980))))

(assert (=> d!612683 true))

(assert (=> d!612683 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (h!27440 rules!3198)))) (dynLambda!10825 order!13969 lambda!75981))))

(assert (=> d!612683 (= (equivClasses!1509 (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (h!27440 rules!3198)))) (Forall2!639 lambda!75981))))

(declare-fun bs!419537 () Bool)

(assert (= bs!419537 d!612683))

(declare-fun m!2438309 () Bool)

(assert (=> bs!419537 m!2438309))

(assert (=> b!2005201 d!612683))

(assert (=> b!2005225 d!612307))

(declare-fun d!612685 () Bool)

(assert (=> d!612685 (= (apply!5768 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753078))))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078))))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753078))))))))

(declare-fun b_lambda!66833 () Bool)

(assert (=> (not b_lambda!66833) (not d!612685)))

(declare-fun t!187054 () Bool)

(declare-fun tb!125095 () Bool)

(assert (=> (and b!2004733 (= (toValue!5616 (transformation!3955 (rule!6178 separatorToken!354))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))) t!187054) tb!125095))

(declare-fun result!149934 () Bool)

(assert (=> tb!125095 (= result!149934 (inv!21 (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078))))) (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753078)))))))))

(declare-fun m!2438311 () Bool)

(assert (=> tb!125095 m!2438311))

(assert (=> d!612685 t!187054))

(declare-fun b_and!158157 () Bool)

(assert (= b_and!158135 (and (=> t!187054 result!149934) b_and!158157)))

(declare-fun tb!125097 () Bool)

(declare-fun t!187056 () Bool)

(assert (=> (and b!2005317 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))) t!187056) tb!125097))

(declare-fun result!149936 () Bool)

(assert (= result!149936 result!149934))

(assert (=> d!612685 t!187056))

(declare-fun b_and!158159 () Bool)

(assert (= b_and!158129 (and (=> t!187056 result!149936) b_and!158159)))

(declare-fun t!187058 () Bool)

(declare-fun tb!125099 () Bool)

(assert (=> (and b!2004750 (= (toValue!5616 (transformation!3955 (h!27440 rules!3198))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))) t!187058) tb!125099))

(declare-fun result!149938 () Bool)

(assert (= result!149938 result!149934))

(assert (=> d!612685 t!187058))

(declare-fun b_and!158161 () Bool)

(assert (= b_and!158127 (and (=> t!187058 result!149938) b_and!158161)))

(declare-fun tb!125101 () Bool)

(declare-fun t!187060 () Bool)

(assert (=> (and b!2004742 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))) t!187060) tb!125101))

(declare-fun result!149940 () Bool)

(assert (= result!149940 result!149934))

(assert (=> d!612685 t!187060))

(declare-fun b_and!158163 () Bool)

(assert (= b_and!158131 (and (=> t!187060 result!149940) b_and!158163)))

(declare-fun t!187062 () Bool)

(declare-fun tb!125103 () Bool)

(assert (=> (and b!2005328 (= (toValue!5616 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))) t!187062) tb!125103))

(declare-fun result!149942 () Bool)

(assert (= result!149942 result!149934))

(assert (=> d!612685 t!187062))

(declare-fun b_and!158165 () Bool)

(assert (= b_and!158133 (and (=> t!187062 result!149942) b_and!158165)))

(assert (=> d!612685 m!2436237))

(declare-fun m!2438313 () Bool)

(assert (=> d!612685 m!2438313))

(assert (=> b!2005225 d!612685))

(declare-fun d!612687 () Bool)

(assert (=> d!612687 (= (seqFromList!2809 (originalCharacters!4762 (_1!11821 (get!6960 lt!753078)))) (fromListB!1256 (originalCharacters!4762 (_1!11821 (get!6960 lt!753078)))))))

(declare-fun bs!419538 () Bool)

(assert (= bs!419538 d!612687))

(declare-fun m!2438315 () Bool)

(assert (=> bs!419538 m!2438315))

(assert (=> b!2005225 d!612687))

(declare-fun d!612689 () Bool)

(declare-fun e!1267762 () Bool)

(assert (=> d!612689 e!1267762))

(declare-fun res!879994 () Bool)

(assert (=> d!612689 (=> (not res!879994) (not e!1267762))))

(declare-fun lt!753507 () BalanceConc!14540)

(assert (=> d!612689 (= res!879994 (= (list!8964 lt!753507) (originalCharacters!4762 (h!27439 tokens!598))))))

(declare-fun fromList!493 (List!22119) Conc!7362)

(assert (=> d!612689 (= lt!753507 (BalanceConc!14541 (fromList!493 (originalCharacters!4762 (h!27439 tokens!598)))))))

(assert (=> d!612689 (= (fromListB!1256 (originalCharacters!4762 (h!27439 tokens!598))) lt!753507)))

(declare-fun b!2006450 () Bool)

(assert (=> b!2006450 (= e!1267762 (isBalanced!2290 (fromList!493 (originalCharacters!4762 (h!27439 tokens!598)))))))

(assert (= (and d!612689 res!879994) b!2006450))

(declare-fun m!2438347 () Bool)

(assert (=> d!612689 m!2438347))

(declare-fun m!2438349 () Bool)

(assert (=> d!612689 m!2438349))

(assert (=> b!2006450 m!2438349))

(assert (=> b!2006450 m!2438349))

(declare-fun m!2438353 () Bool)

(assert (=> b!2006450 m!2438353))

(assert (=> d!612087 d!612689))

(declare-fun b!2006455 () Bool)

(declare-fun e!1267764 () Bool)

(declare-fun lt!753508 () List!22119)

(assert (=> b!2006455 (= e!1267764 (or (not (= (_2!11821 (get!6960 lt!752969)) Nil!22037)) (= lt!753508 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969)))))))))

(declare-fun b!2006452 () Bool)

(declare-fun e!1267765 () List!22119)

(assert (=> b!2006452 (= e!1267765 (_2!11821 (get!6960 lt!752969)))))

(declare-fun d!612707 () Bool)

(assert (=> d!612707 e!1267764))

(declare-fun res!879996 () Bool)

(assert (=> d!612707 (=> (not res!879996) (not e!1267764))))

(assert (=> d!612707 (= res!879996 (= (content!3225 lt!753508) (set.union (content!3225 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969))))) (content!3225 (_2!11821 (get!6960 lt!752969))))))))

(assert (=> d!612707 (= lt!753508 e!1267765)))

(declare-fun c!324108 () Bool)

(assert (=> d!612707 (= c!324108 (is-Nil!22037 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969))))))))

(assert (=> d!612707 (= (++!5946 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969)))) (_2!11821 (get!6960 lt!752969))) lt!753508)))

(declare-fun b!2006454 () Bool)

(declare-fun res!879995 () Bool)

(assert (=> b!2006454 (=> (not res!879995) (not e!1267764))))

(assert (=> b!2006454 (= res!879995 (= (size!17229 lt!753508) (+ (size!17229 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969))))) (size!17229 (_2!11821 (get!6960 lt!752969))))))))

(declare-fun b!2006453 () Bool)

(assert (=> b!2006453 (= e!1267765 (Cons!22037 (h!27438 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969))))) (++!5946 (t!186780 (list!8964 (charsOf!2495 (_1!11821 (get!6960 lt!752969))))) (_2!11821 (get!6960 lt!752969)))))))

(assert (= (and d!612707 c!324108) b!2006452))

(assert (= (and d!612707 (not c!324108)) b!2006453))

(assert (= (and d!612707 res!879996) b!2006454))

(assert (= (and b!2006454 res!879995) b!2006455))

(declare-fun m!2438361 () Bool)

(assert (=> d!612707 m!2438361))

(assert (=> d!612707 m!2435861))

(declare-fun m!2438363 () Bool)

(assert (=> d!612707 m!2438363))

(declare-fun m!2438365 () Bool)

(assert (=> d!612707 m!2438365))

(declare-fun m!2438367 () Bool)

(assert (=> b!2006454 m!2438367))

(assert (=> b!2006454 m!2435861))

(declare-fun m!2438369 () Bool)

(assert (=> b!2006454 m!2438369))

(assert (=> b!2006454 m!2435867))

(declare-fun m!2438371 () Bool)

(assert (=> b!2006453 m!2438371))

(assert (=> b!2004870 d!612707))

(assert (=> b!2004870 d!612277))

(assert (=> b!2004870 d!612279))

(assert (=> b!2004870 d!612181))

(declare-fun d!612715 () Bool)

(declare-fun lt!753509 () Int)

(assert (=> d!612715 (>= lt!753509 0)))

(declare-fun e!1267766 () Int)

(assert (=> d!612715 (= lt!753509 e!1267766)))

(declare-fun c!324109 () Bool)

(assert (=> d!612715 (= c!324109 (is-Nil!22037 (_2!11821 (get!6960 lt!753083))))))

(assert (=> d!612715 (= (size!17229 (_2!11821 (get!6960 lt!753083))) lt!753509)))

(declare-fun b!2006456 () Bool)

(assert (=> b!2006456 (= e!1267766 0)))

(declare-fun b!2006457 () Bool)

(assert (=> b!2006457 (= e!1267766 (+ 1 (size!17229 (t!186780 (_2!11821 (get!6960 lt!753083))))))))

(assert (= (and d!612715 c!324109) b!2006456))

(assert (= (and d!612715 (not c!324109)) b!2006457))

(declare-fun m!2438373 () Bool)

(assert (=> b!2006457 m!2438373))

(assert (=> b!2005231 d!612715))

(assert (=> b!2005231 d!612143))

(assert (=> b!2005231 d!612203))

(declare-fun d!612717 () Bool)

(assert (=> d!612717 (= (isDefined!3879 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354)))) (not (isEmpty!13662 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354))))))))

(declare-fun bs!419542 () Bool)

(assert (= bs!419542 d!612717))

(assert (=> bs!419542 m!2435671))

(declare-fun m!2438377 () Bool)

(assert (=> bs!419542 m!2438377))

(assert (=> d!612057 d!612717))

(assert (=> d!612057 d!612075))

(declare-fun d!612721 () Bool)

(declare-fun e!1267767 () Bool)

(assert (=> d!612721 e!1267767))

(declare-fun res!879997 () Bool)

(assert (=> d!612721 (=> (not res!879997) (not e!1267767))))

(assert (=> d!612721 (= res!879997 (isDefined!3879 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354)))))))

(assert (=> d!612721 true))

(declare-fun _$52!1284 () Unit!36581)

(assert (=> d!612721 (= (choose!12216 thiss!23328 rules!3198 lt!752911 separatorToken!354) _$52!1284)))

(declare-fun b!2006458 () Bool)

(declare-fun res!879998 () Bool)

(assert (=> b!2006458 (=> (not res!879998) (not e!1267767))))

(assert (=> b!2006458 (= res!879998 (matchR!2646 (regex!3955 (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354))))) (list!8964 (charsOf!2495 separatorToken!354))))))

(declare-fun b!2006459 () Bool)

(assert (=> b!2006459 (= e!1267767 (= (rule!6178 separatorToken!354) (get!6961 (getRuleFromTag!770 thiss!23328 rules!3198 (tag!4415 (rule!6178 separatorToken!354))))))))

(assert (= (and d!612721 res!879997) b!2006458))

(assert (= (and b!2006458 res!879998) b!2006459))

(assert (=> d!612721 m!2435671))

(assert (=> d!612721 m!2435671))

(assert (=> d!612721 m!2436223))

(assert (=> b!2006458 m!2435673))

(assert (=> b!2006458 m!2435671))

(assert (=> b!2006458 m!2435673))

(assert (=> b!2006458 m!2435683))

(assert (=> b!2006458 m!2435683))

(assert (=> b!2006458 m!2436227))

(assert (=> b!2006458 m!2435671))

(assert (=> b!2006458 m!2436229))

(assert (=> b!2006459 m!2435671))

(assert (=> b!2006459 m!2435671))

(assert (=> b!2006459 m!2436229))

(assert (=> d!612057 d!612721))

(assert (=> d!612057 d!612015))

(declare-fun d!612731 () Bool)

(assert (=> d!612731 (= (isEmpty!13658 lt!753078) (not (is-Some!4590 lt!753078)))))

(assert (=> d!612061 d!612731))

(declare-fun b!2006476 () Bool)

(declare-fun e!1267776 () Bool)

(declare-fun e!1267777 () Bool)

(assert (=> b!2006476 (= e!1267776 e!1267777)))

(declare-fun res!880008 () Bool)

(assert (=> b!2006476 (=> (not res!880008) (not e!1267777))))

(assert (=> b!2006476 (= res!880008 (not (is-Nil!22037 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))))

(declare-fun b!2006479 () Bool)

(declare-fun e!1267778 () Bool)

(assert (=> b!2006479 (= e!1267778 (>= (size!17229 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))) (size!17229 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))))

(declare-fun d!612733 () Bool)

(assert (=> d!612733 e!1267778))

(declare-fun res!880007 () Bool)

(assert (=> d!612733 (=> res!880007 e!1267778)))

(declare-fun lt!753512 () Bool)

(assert (=> d!612733 (= res!880007 (not lt!753512))))

(assert (=> d!612733 (= lt!753512 e!1267776)))

(declare-fun res!880010 () Bool)

(assert (=> d!612733 (=> res!880010 e!1267776)))

(assert (=> d!612733 (= res!880010 (is-Nil!22037 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(assert (=> d!612733 (= (isPrefix!1958 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))) lt!753512)))

(declare-fun b!2006478 () Bool)

(assert (=> b!2006478 (= e!1267777 (isPrefix!1958 (tail!3015 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))) (tail!3015 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))))

(declare-fun b!2006477 () Bool)

(declare-fun res!880009 () Bool)

(assert (=> b!2006477 (=> (not res!880009) (not e!1267777))))

(assert (=> b!2006477 (= res!880009 (= (head!4531 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))) (head!4531 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))))

(assert (= (and d!612733 (not res!880010)) b!2006476))

(assert (= (and b!2006476 res!880008) b!2006477))

(assert (= (and b!2006477 res!880009) b!2006478))

(assert (= (and d!612733 (not res!880007)) b!2006479))

(assert (=> b!2006479 m!2435653))

(assert (=> b!2006479 m!2436259))

(assert (=> b!2006479 m!2435653))

(assert (=> b!2006479 m!2436259))

(assert (=> b!2006478 m!2435653))

(declare-fun m!2438385 () Bool)

(assert (=> b!2006478 m!2438385))

(assert (=> b!2006478 m!2435653))

(assert (=> b!2006478 m!2438385))

(assert (=> b!2006478 m!2438385))

(assert (=> b!2006478 m!2438385))

(declare-fun m!2438393 () Bool)

(assert (=> b!2006478 m!2438393))

(assert (=> b!2006477 m!2435653))

(declare-fun m!2438397 () Bool)

(assert (=> b!2006477 m!2438397))

(assert (=> b!2006477 m!2435653))

(assert (=> b!2006477 m!2438397))

(assert (=> d!612061 d!612733))

(declare-fun d!612735 () Bool)

(assert (=> d!612735 (isPrefix!1958 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)))))

(declare-fun lt!753513 () Unit!36581)

(assert (=> d!612735 (= lt!753513 (choose!12217 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))))))

(assert (=> d!612735 (= (lemmaIsPrefixRefl!1276 (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354)) (++!5946 lt!752900 (printWithSeparatorTokenWhenNeededList!597 thiss!23328 rules!3198 (t!186781 tokens!598) separatorToken!354))) lt!753513)))

(declare-fun bs!419545 () Bool)

(assert (= bs!419545 d!612735))

(assert (=> bs!419545 m!2435653))

(assert (=> bs!419545 m!2435653))

(assert (=> bs!419545 m!2436245))

(assert (=> bs!419545 m!2435653))

(assert (=> bs!419545 m!2435653))

(declare-fun m!2438405 () Bool)

(assert (=> bs!419545 m!2438405))

(assert (=> d!612061 d!612735))

(assert (=> d!612061 d!612199))

(assert (=> b!2005280 d!612331))

(assert (=> b!2005280 d!612333))

(declare-fun b!2006480 () Bool)

(declare-fun lt!753515 () Unit!36581)

(declare-fun lt!753514 () Unit!36581)

(assert (=> b!2006480 (= lt!753515 lt!753514)))

(assert (=> b!2006480 (rulesInvariant!3175 thiss!23328 (t!186782 (t!186782 rules!3198)))))

(assert (=> b!2006480 (= lt!753514 (lemmaInvariantOnRulesThenOnTail!284 thiss!23328 (h!27440 (t!186782 rules!3198)) (t!186782 (t!186782 rules!3198))))))

(declare-fun e!1267782 () Option!4592)

(assert (=> b!2006480 (= e!1267782 (getRuleFromTag!770 thiss!23328 (t!186782 (t!186782 rules!3198)) (tag!4415 (rule!6178 (h!27439 tokens!598)))))))

(declare-fun d!612737 () Bool)

(declare-fun e!1267779 () Bool)

(assert (=> d!612737 e!1267779))

(declare-fun res!880012 () Bool)

(assert (=> d!612737 (=> res!880012 e!1267779)))

(declare-fun lt!753516 () Option!4592)

(assert (=> d!612737 (= res!880012 (isEmpty!13662 lt!753516))))

(declare-fun e!1267781 () Option!4592)

(assert (=> d!612737 (= lt!753516 e!1267781)))

(declare-fun c!324115 () Bool)

(assert (=> d!612737 (= c!324115 (and (is-Cons!22039 (t!186782 rules!3198)) (= (tag!4415 (h!27440 (t!186782 rules!3198))) (tag!4415 (rule!6178 (h!27439 tokens!598))))))))

(assert (=> d!612737 (rulesInvariant!3175 thiss!23328 (t!186782 rules!3198))))

(assert (=> d!612737 (= (getRuleFromTag!770 thiss!23328 (t!186782 rules!3198) (tag!4415 (rule!6178 (h!27439 tokens!598)))) lt!753516)))

(declare-fun b!2006481 () Bool)

(declare-fun e!1267780 () Bool)

(assert (=> b!2006481 (= e!1267780 (= (tag!4415 (get!6961 lt!753516)) (tag!4415 (rule!6178 (h!27439 tokens!598)))))))

(declare-fun b!2006482 () Bool)

(assert (=> b!2006482 (= e!1267781 e!1267782)))

(declare-fun c!324114 () Bool)

(assert (=> b!2006482 (= c!324114 (and (is-Cons!22039 (t!186782 rules!3198)) (not (= (tag!4415 (h!27440 (t!186782 rules!3198))) (tag!4415 (rule!6178 (h!27439 tokens!598)))))))))

(declare-fun b!2006483 () Bool)

(assert (=> b!2006483 (= e!1267779 e!1267780)))

(declare-fun res!880011 () Bool)

(assert (=> b!2006483 (=> (not res!880011) (not e!1267780))))

(assert (=> b!2006483 (= res!880011 (contains!4019 (t!186782 rules!3198) (get!6961 lt!753516)))))

(declare-fun b!2006484 () Bool)

(assert (=> b!2006484 (= e!1267782 None!4591)))

(declare-fun b!2006485 () Bool)

(assert (=> b!2006485 (= e!1267781 (Some!4591 (h!27440 (t!186782 rules!3198))))))

(assert (= (and d!612737 c!324115) b!2006485))

(assert (= (and d!612737 (not c!324115)) b!2006482))

(assert (= (and b!2006482 c!324114) b!2006480))

(assert (= (and b!2006482 (not c!324114)) b!2006484))

(assert (= (and d!612737 (not res!880012)) b!2006483))

(assert (= (and b!2006483 res!880011) b!2006481))

(assert (=> b!2006480 m!2437109))

(assert (=> b!2006480 m!2437111))

(declare-fun m!2438409 () Bool)

(assert (=> b!2006480 m!2438409))

(declare-fun m!2438411 () Bool)

(assert (=> d!612737 m!2438411))

(assert (=> d!612737 m!2436349))

(declare-fun m!2438413 () Bool)

(assert (=> b!2006481 m!2438413))

(assert (=> b!2006483 m!2438413))

(assert (=> b!2006483 m!2438413))

(declare-fun m!2438415 () Bool)

(assert (=> b!2006483 m!2438415))

(assert (=> b!2005280 d!612737))

(declare-fun d!612741 () Bool)

(declare-fun res!880020 () Bool)

(declare-fun e!1267786 () Bool)

(assert (=> d!612741 (=> res!880020 e!1267786)))

(assert (=> d!612741 (= res!880020 (is-Nil!22038 (t!186781 tokens!598)))))

(assert (=> d!612741 (= (forall!4679 (t!186781 tokens!598) lambda!75920) e!1267786)))

(declare-fun b!2006495 () Bool)

(declare-fun e!1267787 () Bool)

(assert (=> b!2006495 (= e!1267786 e!1267787)))

(declare-fun res!880021 () Bool)

(assert (=> b!2006495 (=> (not res!880021) (not e!1267787))))

(assert (=> b!2006495 (= res!880021 (dynLambda!10821 lambda!75920 (h!27439 (t!186781 tokens!598))))))

(declare-fun b!2006496 () Bool)

(assert (=> b!2006496 (= e!1267787 (forall!4679 (t!186781 (t!186781 tokens!598)) lambda!75920))))

(assert (= (and d!612741 (not res!880020)) b!2006495))

(assert (= (and b!2006495 res!880021) b!2006496))

(declare-fun b_lambda!66837 () Bool)

(assert (=> (not b_lambda!66837) (not b!2006495)))

(declare-fun m!2438417 () Bool)

(assert (=> b!2006495 m!2438417))

(declare-fun m!2438419 () Bool)

(assert (=> b!2006496 m!2438419))

(assert (=> b!2005210 d!612741))

(declare-fun tp!598649 () Bool)

(declare-fun b!2006505 () Bool)

(declare-fun tp!598647 () Bool)

(declare-fun e!1267792 () Bool)

(assert (=> b!2006505 (= e!1267792 (and (inv!29193 (left!17534 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354))))) tp!598649 (inv!29193 (right!17864 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354))))) tp!598647))))

(declare-fun b!2006507 () Bool)

(declare-fun e!1267793 () Bool)

(declare-fun tp!598648 () Bool)

(assert (=> b!2006507 (= e!1267793 tp!598648)))

(declare-fun b!2006506 () Bool)

(declare-fun inv!29201 (IArray!14729) Bool)

(assert (=> b!2006506 (= e!1267792 (and (inv!29201 (xs!10260 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354))))) e!1267793))))

(assert (=> b!2005200 (= tp!598515 (and (inv!29193 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354)))) e!1267792))))

(assert (= (and b!2005200 (is-Node!7362 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354))))) b!2006505))

(assert (= b!2006506 b!2006507))

(assert (= (and b!2005200 (is-Leaf!10803 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (value!124310 separatorToken!354))))) b!2006506))

(declare-fun m!2438447 () Bool)

(assert (=> b!2006505 m!2438447))

(declare-fun m!2438449 () Bool)

(assert (=> b!2006505 m!2438449))

(declare-fun m!2438451 () Bool)

(assert (=> b!2006506 m!2438451))

(assert (=> b!2005200 m!2436193))

(declare-fun e!1267794 () Bool)

(assert (=> b!2005357 (= tp!598568 e!1267794)))

(declare-fun b!2006511 () Bool)

(declare-fun tp!598652 () Bool)

(declare-fun tp!598650 () Bool)

(assert (=> b!2006511 (= e!1267794 (and tp!598652 tp!598650))))

(declare-fun b!2006508 () Bool)

(assert (=> b!2006508 (= e!1267794 tp_is_empty!9171)))

(declare-fun b!2006510 () Bool)

(declare-fun tp!598653 () Bool)

(assert (=> b!2006510 (= e!1267794 tp!598653)))

(declare-fun b!2006509 () Bool)

(declare-fun tp!598651 () Bool)

(declare-fun tp!598654 () Bool)

(assert (=> b!2006509 (= e!1267794 (and tp!598651 tp!598654))))

(assert (= (and b!2005357 (is-ElementMatch!5380 (regOne!11272 (regex!3955 (h!27440 rules!3198))))) b!2006508))

(assert (= (and b!2005357 (is-Concat!9472 (regOne!11272 (regex!3955 (h!27440 rules!3198))))) b!2006509))

(assert (= (and b!2005357 (is-Star!5380 (regOne!11272 (regex!3955 (h!27440 rules!3198))))) b!2006510))

(assert (= (and b!2005357 (is-Union!5380 (regOne!11272 (regex!3955 (h!27440 rules!3198))))) b!2006511))

(declare-fun e!1267795 () Bool)

(assert (=> b!2005357 (= tp!598571 e!1267795)))

(declare-fun b!2006515 () Bool)

(declare-fun tp!598657 () Bool)

(declare-fun tp!598655 () Bool)

(assert (=> b!2006515 (= e!1267795 (and tp!598657 tp!598655))))

(declare-fun b!2006512 () Bool)

(assert (=> b!2006512 (= e!1267795 tp_is_empty!9171)))

(declare-fun b!2006514 () Bool)

(declare-fun tp!598658 () Bool)

(assert (=> b!2006514 (= e!1267795 tp!598658)))

(declare-fun b!2006513 () Bool)

(declare-fun tp!598656 () Bool)

(declare-fun tp!598659 () Bool)

(assert (=> b!2006513 (= e!1267795 (and tp!598656 tp!598659))))

(assert (= (and b!2005357 (is-ElementMatch!5380 (regTwo!11272 (regex!3955 (h!27440 rules!3198))))) b!2006512))

(assert (= (and b!2005357 (is-Concat!9472 (regTwo!11272 (regex!3955 (h!27440 rules!3198))))) b!2006513))

(assert (= (and b!2005357 (is-Star!5380 (regTwo!11272 (regex!3955 (h!27440 rules!3198))))) b!2006514))

(assert (= (and b!2005357 (is-Union!5380 (regTwo!11272 (regex!3955 (h!27440 rules!3198))))) b!2006515))

(declare-fun e!1267796 () Bool)

(declare-fun tp!598660 () Bool)

(declare-fun tp!598662 () Bool)

(declare-fun b!2006516 () Bool)

(assert (=> b!2006516 (= e!1267796 (and (inv!29193 (left!17534 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598)))))) tp!598662 (inv!29193 (right!17864 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598)))))) tp!598660))))

(declare-fun b!2006518 () Bool)

(declare-fun e!1267797 () Bool)

(declare-fun tp!598661 () Bool)

(assert (=> b!2006518 (= e!1267797 tp!598661)))

(declare-fun b!2006517 () Bool)

(assert (=> b!2006517 (= e!1267796 (and (inv!29201 (xs!10260 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598)))))) e!1267797))))

(assert (=> b!2004845 (= tp!598509 (and (inv!29193 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598))))) e!1267796))))

(assert (= (and b!2004845 (is-Node!7362 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598)))))) b!2006516))

(assert (= b!2006517 b!2006518))

(assert (= (and b!2004845 (is-Leaf!10803 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (value!124310 (h!27439 tokens!598)))))) b!2006517))

(declare-fun m!2438453 () Bool)

(assert (=> b!2006516 m!2438453))

(declare-fun m!2438455 () Bool)

(assert (=> b!2006516 m!2438455))

(declare-fun m!2438457 () Bool)

(assert (=> b!2006517 m!2438457))

(assert (=> b!2004845 m!2435827))

(declare-fun b!2006521 () Bool)

(declare-fun e!1267800 () Bool)

(assert (=> b!2006521 (= e!1267800 true)))

(declare-fun b!2006520 () Bool)

(declare-fun e!1267799 () Bool)

(assert (=> b!2006520 (= e!1267799 e!1267800)))

(declare-fun b!2006519 () Bool)

(declare-fun e!1267798 () Bool)

(assert (=> b!2006519 (= e!1267798 e!1267799)))

(assert (=> b!2005257 e!1267798))

(assert (= b!2006520 b!2006521))

(assert (= b!2006519 b!2006520))

(assert (= (and b!2005257 (is-Cons!22039 (t!186782 rules!3198))) b!2006519))

(assert (=> b!2006521 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (h!27440 (t!186782 rules!3198))))) (dynLambda!10815 order!13961 lambda!75942))))

(assert (=> b!2006521 (< (dynLambda!10816 order!13963 (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198))))) (dynLambda!10815 order!13961 lambda!75942))))

(declare-fun e!1267801 () Bool)

(assert (=> b!2005345 (= tp!598558 e!1267801)))

(declare-fun b!2006525 () Bool)

(declare-fun tp!598665 () Bool)

(declare-fun tp!598663 () Bool)

(assert (=> b!2006525 (= e!1267801 (and tp!598665 tp!598663))))

(declare-fun b!2006522 () Bool)

(assert (=> b!2006522 (= e!1267801 tp_is_empty!9171)))

(declare-fun b!2006524 () Bool)

(declare-fun tp!598666 () Bool)

(assert (=> b!2006524 (= e!1267801 tp!598666)))

(declare-fun b!2006523 () Bool)

(declare-fun tp!598664 () Bool)

(declare-fun tp!598667 () Bool)

(assert (=> b!2006523 (= e!1267801 (and tp!598664 tp!598667))))

(assert (= (and b!2005345 (is-ElementMatch!5380 (regOne!11272 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006522))

(assert (= (and b!2005345 (is-Concat!9472 (regOne!11272 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006523))

(assert (= (and b!2005345 (is-Star!5380 (regOne!11272 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006524))

(assert (= (and b!2005345 (is-Union!5380 (regOne!11272 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006525))

(declare-fun e!1267802 () Bool)

(assert (=> b!2005345 (= tp!598561 e!1267802)))

(declare-fun b!2006529 () Bool)

(declare-fun tp!598670 () Bool)

(declare-fun tp!598668 () Bool)

(assert (=> b!2006529 (= e!1267802 (and tp!598670 tp!598668))))

(declare-fun b!2006526 () Bool)

(assert (=> b!2006526 (= e!1267802 tp_is_empty!9171)))

(declare-fun b!2006528 () Bool)

(declare-fun tp!598671 () Bool)

(assert (=> b!2006528 (= e!1267802 tp!598671)))

(declare-fun b!2006527 () Bool)

(declare-fun tp!598669 () Bool)

(declare-fun tp!598672 () Bool)

(assert (=> b!2006527 (= e!1267802 (and tp!598669 tp!598672))))

(assert (= (and b!2005345 (is-ElementMatch!5380 (regTwo!11272 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006526))

(assert (= (and b!2005345 (is-Concat!9472 (regTwo!11272 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006527))

(assert (= (and b!2005345 (is-Star!5380 (regTwo!11272 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006528))

(assert (= (and b!2005345 (is-Union!5380 (regTwo!11272 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006529))

(declare-fun e!1267803 () Bool)

(assert (=> b!2005349 (= tp!598563 e!1267803)))

(declare-fun b!2006533 () Bool)

(declare-fun tp!598675 () Bool)

(declare-fun tp!598673 () Bool)

(assert (=> b!2006533 (= e!1267803 (and tp!598675 tp!598673))))

(declare-fun b!2006530 () Bool)

(assert (=> b!2006530 (= e!1267803 tp_is_empty!9171)))

(declare-fun b!2006532 () Bool)

(declare-fun tp!598676 () Bool)

(assert (=> b!2006532 (= e!1267803 tp!598676)))

(declare-fun b!2006531 () Bool)

(declare-fun tp!598674 () Bool)

(declare-fun tp!598677 () Bool)

(assert (=> b!2006531 (= e!1267803 (and tp!598674 tp!598677))))

(assert (= (and b!2005349 (is-ElementMatch!5380 (regOne!11272 (regex!3955 (rule!6178 separatorToken!354))))) b!2006530))

(assert (= (and b!2005349 (is-Concat!9472 (regOne!11272 (regex!3955 (rule!6178 separatorToken!354))))) b!2006531))

(assert (= (and b!2005349 (is-Star!5380 (regOne!11272 (regex!3955 (rule!6178 separatorToken!354))))) b!2006532))

(assert (= (and b!2005349 (is-Union!5380 (regOne!11272 (regex!3955 (rule!6178 separatorToken!354))))) b!2006533))

(declare-fun e!1267804 () Bool)

(assert (=> b!2005349 (= tp!598566 e!1267804)))

(declare-fun b!2006537 () Bool)

(declare-fun tp!598680 () Bool)

(declare-fun tp!598678 () Bool)

(assert (=> b!2006537 (= e!1267804 (and tp!598680 tp!598678))))

(declare-fun b!2006534 () Bool)

(assert (=> b!2006534 (= e!1267804 tp_is_empty!9171)))

(declare-fun b!2006536 () Bool)

(declare-fun tp!598681 () Bool)

(assert (=> b!2006536 (= e!1267804 tp!598681)))

(declare-fun b!2006535 () Bool)

(declare-fun tp!598679 () Bool)

(declare-fun tp!598682 () Bool)

(assert (=> b!2006535 (= e!1267804 (and tp!598679 tp!598682))))

(assert (= (and b!2005349 (is-ElementMatch!5380 (regTwo!11272 (regex!3955 (rule!6178 separatorToken!354))))) b!2006534))

(assert (= (and b!2005349 (is-Concat!9472 (regTwo!11272 (regex!3955 (rule!6178 separatorToken!354))))) b!2006535))

(assert (= (and b!2005349 (is-Star!5380 (regTwo!11272 (regex!3955 (rule!6178 separatorToken!354))))) b!2006536))

(assert (= (and b!2005349 (is-Union!5380 (regTwo!11272 (regex!3955 (rule!6178 separatorToken!354))))) b!2006537))

(declare-fun e!1267805 () Bool)

(assert (=> b!2005347 (= tp!598559 e!1267805)))

(declare-fun b!2006541 () Bool)

(declare-fun tp!598685 () Bool)

(declare-fun tp!598683 () Bool)

(assert (=> b!2006541 (= e!1267805 (and tp!598685 tp!598683))))

(declare-fun b!2006538 () Bool)

(assert (=> b!2006538 (= e!1267805 tp_is_empty!9171)))

(declare-fun b!2006540 () Bool)

(declare-fun tp!598686 () Bool)

(assert (=> b!2006540 (= e!1267805 tp!598686)))

(declare-fun b!2006539 () Bool)

(declare-fun tp!598684 () Bool)

(declare-fun tp!598687 () Bool)

(assert (=> b!2006539 (= e!1267805 (and tp!598684 tp!598687))))

(assert (= (and b!2005347 (is-ElementMatch!5380 (regOne!11273 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006538))

(assert (= (and b!2005347 (is-Concat!9472 (regOne!11273 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006539))

(assert (= (and b!2005347 (is-Star!5380 (regOne!11273 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006540))

(assert (= (and b!2005347 (is-Union!5380 (regOne!11273 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006541))

(declare-fun e!1267806 () Bool)

(assert (=> b!2005347 (= tp!598557 e!1267806)))

(declare-fun b!2006545 () Bool)

(declare-fun tp!598690 () Bool)

(declare-fun tp!598688 () Bool)

(assert (=> b!2006545 (= e!1267806 (and tp!598690 tp!598688))))

(declare-fun b!2006542 () Bool)

(assert (=> b!2006542 (= e!1267806 tp_is_empty!9171)))

(declare-fun b!2006544 () Bool)

(declare-fun tp!598691 () Bool)

(assert (=> b!2006544 (= e!1267806 tp!598691)))

(declare-fun b!2006543 () Bool)

(declare-fun tp!598689 () Bool)

(declare-fun tp!598692 () Bool)

(assert (=> b!2006543 (= e!1267806 (and tp!598689 tp!598692))))

(assert (= (and b!2005347 (is-ElementMatch!5380 (regTwo!11273 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006542))

(assert (= (and b!2005347 (is-Concat!9472 (regTwo!11273 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006543))

(assert (= (and b!2005347 (is-Star!5380 (regTwo!11273 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006544))

(assert (= (and b!2005347 (is-Union!5380 (regTwo!11273 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006545))

(declare-fun e!1267808 () Bool)

(assert (=> b!2005346 (= tp!598560 e!1267808)))

(declare-fun b!2006550 () Bool)

(declare-fun tp!598695 () Bool)

(declare-fun tp!598693 () Bool)

(assert (=> b!2006550 (= e!1267808 (and tp!598695 tp!598693))))

(declare-fun b!2006547 () Bool)

(assert (=> b!2006547 (= e!1267808 tp_is_empty!9171)))

(declare-fun b!2006549 () Bool)

(declare-fun tp!598696 () Bool)

(assert (=> b!2006549 (= e!1267808 tp!598696)))

(declare-fun b!2006548 () Bool)

(declare-fun tp!598694 () Bool)

(declare-fun tp!598697 () Bool)

(assert (=> b!2006548 (= e!1267808 (and tp!598694 tp!598697))))

(assert (= (and b!2005346 (is-ElementMatch!5380 (reg!5709 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006547))

(assert (= (and b!2005346 (is-Concat!9472 (reg!5709 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006548))

(assert (= (and b!2005346 (is-Star!5380 (reg!5709 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006549))

(assert (= (and b!2005346 (is-Union!5380 (reg!5709 (regex!3955 (rule!6178 (h!27439 tokens!598)))))) b!2006550))

(declare-fun e!1267809 () Bool)

(assert (=> b!2005358 (= tp!598570 e!1267809)))

(declare-fun b!2006554 () Bool)

(declare-fun tp!598700 () Bool)

(declare-fun tp!598698 () Bool)

(assert (=> b!2006554 (= e!1267809 (and tp!598700 tp!598698))))

(declare-fun b!2006551 () Bool)

(assert (=> b!2006551 (= e!1267809 tp_is_empty!9171)))

(declare-fun b!2006553 () Bool)

(declare-fun tp!598701 () Bool)

(assert (=> b!2006553 (= e!1267809 tp!598701)))

(declare-fun b!2006552 () Bool)

(declare-fun tp!598699 () Bool)

(declare-fun tp!598702 () Bool)

(assert (=> b!2006552 (= e!1267809 (and tp!598699 tp!598702))))

(assert (= (and b!2005358 (is-ElementMatch!5380 (reg!5709 (regex!3955 (h!27440 rules!3198))))) b!2006551))

(assert (= (and b!2005358 (is-Concat!9472 (reg!5709 (regex!3955 (h!27440 rules!3198))))) b!2006552))

(assert (= (and b!2005358 (is-Star!5380 (reg!5709 (regex!3955 (h!27440 rules!3198))))) b!2006553))

(assert (= (and b!2005358 (is-Union!5380 (reg!5709 (regex!3955 (h!27440 rules!3198))))) b!2006554))

(declare-fun b!2006558 () Bool)

(declare-fun b_free!55917 () Bool)

(declare-fun b_next!56621 () Bool)

(assert (=> b!2006558 (= b_free!55917 (not b_next!56621))))

(declare-fun t!187074 () Bool)

(declare-fun tb!125115 () Bool)

(assert (=> (and b!2006558 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!187074) tb!125115))

(declare-fun result!149956 () Bool)

(assert (= result!149956 result!149716))

(assert (=> d!612067 t!187074))

(declare-fun tb!125117 () Bool)

(declare-fun t!187076 () Bool)

(assert (=> (and b!2006558 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))) t!187076) tb!125117))

(declare-fun result!149958 () Bool)

(assert (= result!149958 result!149804))

(assert (=> d!612273 t!187076))

(declare-fun t!187078 () Bool)

(declare-fun tb!125119 () Bool)

(assert (=> (and b!2006558 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))) t!187078) tb!125119))

(declare-fun result!149960 () Bool)

(assert (= result!149960 result!149898))

(assert (=> d!612539 t!187078))

(declare-fun t!187080 () Bool)

(declare-fun tb!125121 () Bool)

(assert (=> (and b!2006558 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!187080) tb!125121))

(declare-fun result!149962 () Bool)

(assert (= result!149962 result!149708))

(assert (=> d!612079 t!187080))

(declare-fun t!187082 () Bool)

(declare-fun tb!125123 () Bool)

(assert (=> (and b!2006558 (= (toValue!5616 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))) t!187082) tb!125123))

(declare-fun result!149964 () Bool)

(assert (= result!149964 result!149934))

(assert (=> d!612685 t!187082))

(assert (=> d!612067 t!187080))

(declare-fun b_and!158177 () Bool)

(declare-fun tp!598706 () Bool)

(assert (=> b!2006558 (= tp!598706 (and (=> t!187082 result!149964) (=> t!187078 result!149960) (=> t!187074 result!149956) (=> t!187076 result!149958) (=> t!187080 result!149962) b_and!158177))))

(declare-fun b_free!55919 () Bool)

(declare-fun b_next!56623 () Bool)

(assert (=> b!2006558 (= b_free!55919 (not b_next!56623))))

(declare-fun tb!125125 () Bool)

(declare-fun t!187084 () Bool)

(assert (=> (and b!2006558 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354)))) t!187084) tb!125125))

(declare-fun result!149966 () Bool)

(assert (= result!149966 result!149702))

(assert (=> b!2005198 t!187084))

(declare-fun t!187086 () Bool)

(declare-fun tb!125127 () Bool)

(assert (=> (and b!2006558 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))) t!187086) tb!125127))

(declare-fun result!149968 () Bool)

(assert (= result!149968 result!149834))

(assert (=> d!612305 t!187086))

(declare-fun t!187088 () Bool)

(declare-fun tb!125129 () Bool)

(assert (=> (and b!2006558 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toChars!5475 (transformation!3955 (rule!6178 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598)))))))) t!187088) tb!125129))

(declare-fun result!149970 () Bool)

(assert (= result!149970 result!149794))

(assert (=> d!612189 t!187088))

(declare-fun t!187090 () Bool)

(declare-fun tb!125131 () Bool)

(assert (=> (and b!2006558 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598)))))) t!187090) tb!125131))

(declare-fun result!149972 () Bool)

(assert (= result!149972 result!149824))

(assert (=> b!2005859 t!187090))

(declare-fun tb!125133 () Bool)

(declare-fun t!187092 () Bool)

(assert (=> (and b!2006558 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toChars!5475 (transformation!3955 (rule!6178 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598))))))) t!187092) tb!125133))

(declare-fun result!149974 () Bool)

(assert (= result!149974 result!149844))

(assert (=> d!612323 t!187092))

(declare-fun t!187094 () Bool)

(declare-fun tb!125135 () Bool)

(assert (=> (and b!2006558 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!187094) tb!125135))

(declare-fun result!149976 () Bool)

(assert (= result!149976 result!149660))

(assert (=> d!612085 t!187094))

(assert (=> d!612291 t!187090))

(declare-fun t!187096 () Bool)

(declare-fun tb!125137 () Bool)

(assert (=> (and b!2006558 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))) t!187096) tb!125137))

(declare-fun result!149978 () Bool)

(assert (= result!149978 result!149784))

(assert (=> d!612147 t!187096))

(declare-fun t!187098 () Bool)

(declare-fun tb!125139 () Bool)

(assert (=> (and b!2006558 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))) t!187098) tb!125139))

(declare-fun result!149980 () Bool)

(assert (= result!149980 result!149814))

(assert (=> d!612279 t!187098))

(assert (=> d!612091 t!187084))

(assert (=> b!2004839 t!187094))

(declare-fun t!187100 () Bool)

(declare-fun tb!125141 () Bool)

(assert (=> (and b!2006558 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!187100) tb!125141))

(declare-fun result!149982 () Bool)

(assert (= result!149982 result!149722))

(assert (=> d!612079 t!187100))

(declare-fun b_and!158179 () Bool)

(declare-fun tp!598707 () Bool)

(assert (=> b!2006558 (= tp!598707 (and (=> t!187088 result!149970) (=> t!187096 result!149978) (=> t!187098 result!149980) (=> t!187094 result!149976) (=> t!187090 result!149972) (=> t!187092 result!149974) (=> t!187100 result!149982) (=> t!187086 result!149968) (=> t!187084 result!149966) b_and!158179))))

(declare-fun tp!598703 () Bool)

(declare-fun e!1267813 () Bool)

(declare-fun e!1267810 () Bool)

(declare-fun b!2006555 () Bool)

(assert (=> b!2006555 (= e!1267810 (and (inv!29190 (h!27439 (t!186781 (t!186781 tokens!598)))) e!1267813 tp!598703))))

(declare-fun e!1267812 () Bool)

(declare-fun b!2006557 () Bool)

(declare-fun e!1267811 () Bool)

(declare-fun tp!598704 () Bool)

(assert (=> b!2006557 (= e!1267812 (and tp!598704 (inv!29186 (tag!4415 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (inv!29189 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) e!1267811))))

(assert (=> b!2006558 (= e!1267811 (and tp!598706 tp!598707))))

(assert (=> b!2005314 (= tp!598527 e!1267810)))

(declare-fun tp!598705 () Bool)

(declare-fun b!2006556 () Bool)

(assert (=> b!2006556 (= e!1267813 (and (inv!21 (value!124310 (h!27439 (t!186781 (t!186781 tokens!598))))) e!1267812 tp!598705))))

(assert (= b!2006557 b!2006558))

(assert (= b!2006556 b!2006557))

(assert (= b!2006555 b!2006556))

(assert (= (and b!2005314 (is-Cons!22038 (t!186781 (t!186781 tokens!598)))) b!2006555))

(declare-fun m!2438475 () Bool)

(assert (=> b!2006555 m!2438475))

(declare-fun m!2438477 () Bool)

(assert (=> b!2006557 m!2438477))

(declare-fun m!2438479 () Bool)

(assert (=> b!2006557 m!2438479))

(declare-fun m!2438481 () Bool)

(assert (=> b!2006556 m!2438481))

(declare-fun e!1267816 () Bool)

(assert (=> b!2005359 (= tp!598569 e!1267816)))

(declare-fun b!2006562 () Bool)

(declare-fun tp!598710 () Bool)

(declare-fun tp!598708 () Bool)

(assert (=> b!2006562 (= e!1267816 (and tp!598710 tp!598708))))

(declare-fun b!2006559 () Bool)

(assert (=> b!2006559 (= e!1267816 tp_is_empty!9171)))

(declare-fun b!2006561 () Bool)

(declare-fun tp!598711 () Bool)

(assert (=> b!2006561 (= e!1267816 tp!598711)))

(declare-fun b!2006560 () Bool)

(declare-fun tp!598709 () Bool)

(declare-fun tp!598712 () Bool)

(assert (=> b!2006560 (= e!1267816 (and tp!598709 tp!598712))))

(assert (= (and b!2005359 (is-ElementMatch!5380 (regOne!11273 (regex!3955 (h!27440 rules!3198))))) b!2006559))

(assert (= (and b!2005359 (is-Concat!9472 (regOne!11273 (regex!3955 (h!27440 rules!3198))))) b!2006560))

(assert (= (and b!2005359 (is-Star!5380 (regOne!11273 (regex!3955 (h!27440 rules!3198))))) b!2006561))

(assert (= (and b!2005359 (is-Union!5380 (regOne!11273 (regex!3955 (h!27440 rules!3198))))) b!2006562))

(declare-fun e!1267817 () Bool)

(assert (=> b!2005359 (= tp!598567 e!1267817)))

(declare-fun b!2006566 () Bool)

(declare-fun tp!598715 () Bool)

(declare-fun tp!598713 () Bool)

(assert (=> b!2006566 (= e!1267817 (and tp!598715 tp!598713))))

(declare-fun b!2006563 () Bool)

(assert (=> b!2006563 (= e!1267817 tp_is_empty!9171)))

(declare-fun b!2006565 () Bool)

(declare-fun tp!598716 () Bool)

(assert (=> b!2006565 (= e!1267817 tp!598716)))

(declare-fun b!2006564 () Bool)

(declare-fun tp!598714 () Bool)

(declare-fun tp!598717 () Bool)

(assert (=> b!2006564 (= e!1267817 (and tp!598714 tp!598717))))

(assert (= (and b!2005359 (is-ElementMatch!5380 (regTwo!11273 (regex!3955 (h!27440 rules!3198))))) b!2006563))

(assert (= (and b!2005359 (is-Concat!9472 (regTwo!11273 (regex!3955 (h!27440 rules!3198))))) b!2006564))

(assert (= (and b!2005359 (is-Star!5380 (regTwo!11273 (regex!3955 (h!27440 rules!3198))))) b!2006565))

(assert (= (and b!2005359 (is-Union!5380 (regTwo!11273 (regex!3955 (h!27440 rules!3198))))) b!2006566))

(declare-fun e!1267818 () Bool)

(assert (=> b!2005350 (= tp!598565 e!1267818)))

(declare-fun b!2006570 () Bool)

(declare-fun tp!598720 () Bool)

(declare-fun tp!598718 () Bool)

(assert (=> b!2006570 (= e!1267818 (and tp!598720 tp!598718))))

(declare-fun b!2006567 () Bool)

(assert (=> b!2006567 (= e!1267818 tp_is_empty!9171)))

(declare-fun b!2006569 () Bool)

(declare-fun tp!598721 () Bool)

(assert (=> b!2006569 (= e!1267818 tp!598721)))

(declare-fun b!2006568 () Bool)

(declare-fun tp!598719 () Bool)

(declare-fun tp!598722 () Bool)

(assert (=> b!2006568 (= e!1267818 (and tp!598719 tp!598722))))

(assert (= (and b!2005350 (is-ElementMatch!5380 (reg!5709 (regex!3955 (rule!6178 separatorToken!354))))) b!2006567))

(assert (= (and b!2005350 (is-Concat!9472 (reg!5709 (regex!3955 (rule!6178 separatorToken!354))))) b!2006568))

(assert (= (and b!2005350 (is-Star!5380 (reg!5709 (regex!3955 (rule!6178 separatorToken!354))))) b!2006569))

(assert (= (and b!2005350 (is-Union!5380 (reg!5709 (regex!3955 (rule!6178 separatorToken!354))))) b!2006570))

(declare-fun b!2006573 () Bool)

(declare-fun e!1267821 () Bool)

(assert (=> b!2006573 (= e!1267821 true)))

(declare-fun b!2006572 () Bool)

(declare-fun e!1267820 () Bool)

(assert (=> b!2006572 (= e!1267820 e!1267821)))

(declare-fun b!2006571 () Bool)

(declare-fun e!1267819 () Bool)

(assert (=> b!2006571 (= e!1267819 e!1267820)))

(assert (=> b!2004962 e!1267819))

(assert (= b!2006572 b!2006573))

(assert (= b!2006571 b!2006572))

(assert (= (and b!2004962 (is-Cons!22039 (t!186782 rules!3198))) b!2006571))

(assert (=> b!2006573 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (h!27440 (t!186782 rules!3198))))) (dynLambda!10815 order!13961 lambda!75929))))

(assert (=> b!2006573 (< (dynLambda!10816 order!13963 (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198))))) (dynLambda!10815 order!13961 lambda!75929))))

(declare-fun e!1267822 () Bool)

(assert (=> b!2005351 (= tp!598564 e!1267822)))

(declare-fun b!2006577 () Bool)

(declare-fun tp!598725 () Bool)

(declare-fun tp!598723 () Bool)

(assert (=> b!2006577 (= e!1267822 (and tp!598725 tp!598723))))

(declare-fun b!2006574 () Bool)

(assert (=> b!2006574 (= e!1267822 tp_is_empty!9171)))

(declare-fun b!2006576 () Bool)

(declare-fun tp!598726 () Bool)

(assert (=> b!2006576 (= e!1267822 tp!598726)))

(declare-fun b!2006575 () Bool)

(declare-fun tp!598724 () Bool)

(declare-fun tp!598727 () Bool)

(assert (=> b!2006575 (= e!1267822 (and tp!598724 tp!598727))))

(assert (= (and b!2005351 (is-ElementMatch!5380 (regOne!11273 (regex!3955 (rule!6178 separatorToken!354))))) b!2006574))

(assert (= (and b!2005351 (is-Concat!9472 (regOne!11273 (regex!3955 (rule!6178 separatorToken!354))))) b!2006575))

(assert (= (and b!2005351 (is-Star!5380 (regOne!11273 (regex!3955 (rule!6178 separatorToken!354))))) b!2006576))

(assert (= (and b!2005351 (is-Union!5380 (regOne!11273 (regex!3955 (rule!6178 separatorToken!354))))) b!2006577))

(declare-fun e!1267823 () Bool)

(assert (=> b!2005351 (= tp!598562 e!1267823)))

(declare-fun b!2006581 () Bool)

(declare-fun tp!598730 () Bool)

(declare-fun tp!598728 () Bool)

(assert (=> b!2006581 (= e!1267823 (and tp!598730 tp!598728))))

(declare-fun b!2006578 () Bool)

(assert (=> b!2006578 (= e!1267823 tp_is_empty!9171)))

(declare-fun b!2006580 () Bool)

(declare-fun tp!598731 () Bool)

(assert (=> b!2006580 (= e!1267823 tp!598731)))

(declare-fun b!2006579 () Bool)

(declare-fun tp!598729 () Bool)

(declare-fun tp!598732 () Bool)

(assert (=> b!2006579 (= e!1267823 (and tp!598729 tp!598732))))

(assert (= (and b!2005351 (is-ElementMatch!5380 (regTwo!11273 (regex!3955 (rule!6178 separatorToken!354))))) b!2006578))

(assert (= (and b!2005351 (is-Concat!9472 (regTwo!11273 (regex!3955 (rule!6178 separatorToken!354))))) b!2006579))

(assert (= (and b!2005351 (is-Star!5380 (regTwo!11273 (regex!3955 (rule!6178 separatorToken!354))))) b!2006580))

(assert (= (and b!2005351 (is-Union!5380 (regTwo!11273 (regex!3955 (rule!6178 separatorToken!354))))) b!2006581))

(declare-fun b!2006582 () Bool)

(declare-fun e!1267824 () Bool)

(declare-fun tp!598733 () Bool)

(assert (=> b!2006582 (= e!1267824 (and tp_is_empty!9171 tp!598733))))

(assert (=> b!2005315 (= tp!598529 e!1267824)))

(assert (= (and b!2005315 (is-Cons!22037 (originalCharacters!4762 (h!27439 (t!186781 tokens!598))))) b!2006582))

(declare-fun e!1267825 () Bool)

(assert (=> b!2005316 (= tp!598528 e!1267825)))

(declare-fun b!2006586 () Bool)

(declare-fun tp!598736 () Bool)

(declare-fun tp!598734 () Bool)

(assert (=> b!2006586 (= e!1267825 (and tp!598736 tp!598734))))

(declare-fun b!2006583 () Bool)

(assert (=> b!2006583 (= e!1267825 tp_is_empty!9171)))

(declare-fun b!2006585 () Bool)

(declare-fun tp!598737 () Bool)

(assert (=> b!2006585 (= e!1267825 tp!598737)))

(declare-fun b!2006584 () Bool)

(declare-fun tp!598735 () Bool)

(declare-fun tp!598738 () Bool)

(assert (=> b!2006584 (= e!1267825 (and tp!598735 tp!598738))))

(assert (= (and b!2005316 (is-ElementMatch!5380 (regex!3955 (rule!6178 (h!27439 (t!186781 tokens!598)))))) b!2006583))

(assert (= (and b!2005316 (is-Concat!9472 (regex!3955 (rule!6178 (h!27439 (t!186781 tokens!598)))))) b!2006584))

(assert (= (and b!2005316 (is-Star!5380 (regex!3955 (rule!6178 (h!27439 (t!186781 tokens!598)))))) b!2006585))

(assert (= (and b!2005316 (is-Union!5380 (regex!3955 (rule!6178 (h!27439 (t!186781 tokens!598)))))) b!2006586))

(declare-fun b!2006587 () Bool)

(declare-fun e!1267826 () Bool)

(declare-fun tp!598739 () Bool)

(assert (=> b!2006587 (= e!1267826 (and tp_is_empty!9171 tp!598739))))

(assert (=> b!2005362 (= tp!598572 e!1267826)))

(assert (= (and b!2005362 (is-Cons!22037 (t!186780 (originalCharacters!4762 (h!27439 tokens!598))))) b!2006587))

(declare-fun b!2006588 () Bool)

(declare-fun e!1267827 () Bool)

(declare-fun tp!598740 () Bool)

(assert (=> b!2006588 (= e!1267827 (and tp_is_empty!9171 tp!598740))))

(assert (=> b!2005333 (= tp!598546 e!1267827)))

(assert (= (and b!2005333 (is-Cons!22037 (t!186780 (originalCharacters!4762 separatorToken!354)))) b!2006588))

(declare-fun e!1267828 () Bool)

(assert (=> b!2005327 (= tp!598542 e!1267828)))

(declare-fun b!2006592 () Bool)

(declare-fun tp!598743 () Bool)

(declare-fun tp!598741 () Bool)

(assert (=> b!2006592 (= e!1267828 (and tp!598743 tp!598741))))

(declare-fun b!2006589 () Bool)

(assert (=> b!2006589 (= e!1267828 tp_is_empty!9171)))

(declare-fun b!2006591 () Bool)

(declare-fun tp!598744 () Bool)

(assert (=> b!2006591 (= e!1267828 tp!598744)))

(declare-fun b!2006590 () Bool)

(declare-fun tp!598742 () Bool)

(declare-fun tp!598745 () Bool)

(assert (=> b!2006590 (= e!1267828 (and tp!598742 tp!598745))))

(assert (= (and b!2005327 (is-ElementMatch!5380 (regex!3955 (h!27440 (t!186782 rules!3198))))) b!2006589))

(assert (= (and b!2005327 (is-Concat!9472 (regex!3955 (h!27440 (t!186782 rules!3198))))) b!2006590))

(assert (= (and b!2005327 (is-Star!5380 (regex!3955 (h!27440 (t!186782 rules!3198))))) b!2006591))

(assert (= (and b!2005327 (is-Union!5380 (regex!3955 (h!27440 (t!186782 rules!3198))))) b!2006592))

(declare-fun b!2006595 () Bool)

(declare-fun b_free!55921 () Bool)

(declare-fun b_next!56625 () Bool)

(assert (=> b!2006595 (= b_free!55921 (not b_next!56625))))

(declare-fun tb!125143 () Bool)

(declare-fun t!187102 () Bool)

(assert (=> (and b!2006595 (= (toValue!5616 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!187102) tb!125143))

(declare-fun result!149984 () Bool)

(assert (= result!149984 result!149716))

(assert (=> d!612067 t!187102))

(declare-fun t!187104 () Bool)

(declare-fun tb!125145 () Bool)

(assert (=> (and b!2006595 (= (toValue!5616 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))) t!187104) tb!125145))

(declare-fun result!149986 () Bool)

(assert (= result!149986 result!149804))

(assert (=> d!612273 t!187104))

(declare-fun t!187106 () Bool)

(declare-fun tb!125147 () Bool)

(assert (=> (and b!2006595 (= (toValue!5616 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))) t!187106) tb!125147))

(declare-fun result!149988 () Bool)

(assert (= result!149988 result!149898))

(assert (=> d!612539 t!187106))

(declare-fun t!187108 () Bool)

(declare-fun tb!125149 () Bool)

(assert (=> (and b!2006595 (= (toValue!5616 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!187108) tb!125149))

(declare-fun result!149990 () Bool)

(assert (= result!149990 result!149708))

(assert (=> d!612079 t!187108))

(declare-fun t!187110 () Bool)

(declare-fun tb!125151 () Bool)

(assert (=> (and b!2006595 (= (toValue!5616 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toValue!5616 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))) t!187110) tb!125151))

(declare-fun result!149992 () Bool)

(assert (= result!149992 result!149934))

(assert (=> d!612685 t!187110))

(assert (=> d!612067 t!187108))

(declare-fun b_and!158181 () Bool)

(declare-fun tp!598749 () Bool)

(assert (=> b!2006595 (= tp!598749 (and (=> t!187104 result!149986) (=> t!187110 result!149992) (=> t!187108 result!149990) (=> t!187106 result!149988) (=> t!187102 result!149984) b_and!158181))))

(declare-fun b_free!55923 () Bool)

(declare-fun b_next!56627 () Bool)

(assert (=> b!2006595 (= b_free!55923 (not b_next!56627))))

(declare-fun t!187112 () Bool)

(declare-fun tb!125153 () Bool)

(assert (=> (and b!2006595 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354)))) t!187112) tb!125153))

(declare-fun result!149994 () Bool)

(assert (= result!149994 result!149702))

(assert (=> b!2005198 t!187112))

(declare-fun tb!125155 () Bool)

(declare-fun t!187114 () Bool)

(assert (=> (and b!2006595 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753078)))))) t!187114) tb!125155))

(declare-fun result!149996 () Bool)

(assert (= result!149996 result!149834))

(assert (=> d!612305 t!187114))

(declare-fun t!187116 () Bool)

(declare-fun tb!125157 () Bool)

(assert (=> (and b!2006595 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toChars!5475 (transformation!3955 (rule!6178 (ite c!323860 (h!27439 (t!186781 tokens!598)) (ite c!323862 separatorToken!354 (h!27439 (t!186781 tokens!598)))))))) t!187116) tb!125157))

(declare-fun result!149998 () Bool)

(assert (= result!149998 result!149794))

(assert (=> d!612189 t!187116))

(declare-fun t!187118 () Bool)

(declare-fun tb!125159 () Bool)

(assert (=> (and b!2006595 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598)))))) t!187118) tb!125159))

(declare-fun result!150000 () Bool)

(assert (= result!150000 result!149824))

(assert (=> b!2005859 t!187118))

(declare-fun tb!125161 () Bool)

(declare-fun t!187120 () Bool)

(assert (=> (and b!2006595 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toChars!5475 (transformation!3955 (rule!6178 (ite c!323806 (h!27439 tokens!598) (ite c!323808 separatorToken!354 (h!27439 tokens!598))))))) t!187120) tb!125161))

(declare-fun result!150002 () Bool)

(assert (= result!150002 result!149844))

(assert (=> d!612323 t!187120))

(declare-fun t!187122 () Bool)

(declare-fun tb!125163 () Bool)

(assert (=> (and b!2006595 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!187122) tb!125163))

(declare-fun result!150004 () Bool)

(assert (= result!150004 result!149660))

(assert (=> d!612085 t!187122))

(assert (=> d!612291 t!187118))

(declare-fun tb!125165 () Bool)

(declare-fun t!187124 () Bool)

(assert (=> (and b!2006595 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!753083)))))) t!187124) tb!125165))

(declare-fun result!150006 () Bool)

(assert (= result!150006 result!149784))

(assert (=> d!612147 t!187124))

(declare-fun tb!125167 () Bool)

(declare-fun t!187126 () Bool)

(assert (=> (and b!2006595 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toChars!5475 (transformation!3955 (rule!6178 (_1!11821 (get!6960 lt!752969)))))) t!187126) tb!125167))

(declare-fun result!150008 () Bool)

(assert (= result!150008 result!149814))

(assert (=> d!612279 t!187126))

(assert (=> d!612091 t!187112))

(assert (=> b!2004839 t!187122))

(declare-fun tb!125169 () Bool)

(declare-fun t!187128 () Bool)

(assert (=> (and b!2006595 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598))))) t!187128) tb!125169))

(declare-fun result!150010 () Bool)

(assert (= result!150010 result!149722))

(assert (=> d!612079 t!187128))

(declare-fun tp!598746 () Bool)

(declare-fun b_and!158183 () Bool)

(assert (=> b!2006595 (= tp!598746 (and (=> t!187126 result!150008) (=> t!187116 result!149998) (=> t!187118 result!150000) (=> t!187128 result!150010) (=> t!187112 result!149994) (=> t!187114 result!149996) (=> t!187124 result!150006) (=> t!187122 result!150004) (=> t!187120 result!150002) b_and!158183))))

(declare-fun e!1267829 () Bool)

(assert (=> b!2006595 (= e!1267829 (and tp!598749 tp!598746))))

(declare-fun e!1267831 () Bool)

(declare-fun b!2006594 () Bool)

(declare-fun tp!598748 () Bool)

(assert (=> b!2006594 (= e!1267831 (and tp!598748 (inv!29186 (tag!4415 (h!27440 (t!186782 (t!186782 rules!3198))))) (inv!29189 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) e!1267829))))

(declare-fun b!2006593 () Bool)

(declare-fun e!1267832 () Bool)

(declare-fun tp!598747 () Bool)

(assert (=> b!2006593 (= e!1267832 (and e!1267831 tp!598747))))

(assert (=> b!2005326 (= tp!598541 e!1267832)))

(assert (= b!2006594 b!2006595))

(assert (= b!2006593 b!2006594))

(assert (= (and b!2005326 (is-Cons!22039 (t!186782 (t!186782 rules!3198)))) b!2006593))

(declare-fun m!2438483 () Bool)

(assert (=> b!2006594 m!2438483))

(declare-fun m!2438485 () Bool)

(assert (=> b!2006594 m!2438485))

(declare-fun b!2006598 () Bool)

(declare-fun e!1267835 () Bool)

(assert (=> b!2006598 (= e!1267835 true)))

(declare-fun b!2006597 () Bool)

(declare-fun e!1267834 () Bool)

(assert (=> b!2006597 (= e!1267834 e!1267835)))

(declare-fun b!2006596 () Bool)

(declare-fun e!1267833 () Bool)

(assert (=> b!2006596 (= e!1267833 e!1267834)))

(assert (=> b!2005050 e!1267833))

(assert (= b!2006597 b!2006598))

(assert (= b!2006596 b!2006597))

(assert (= (and b!2005050 (is-Cons!22039 (t!186782 rules!3198))) b!2006596))

(assert (=> b!2006598 (< (dynLambda!10814 order!13959 (toValue!5616 (transformation!3955 (h!27440 (t!186782 rules!3198))))) (dynLambda!10815 order!13961 lambda!75935))))

(assert (=> b!2006598 (< (dynLambda!10816 order!13963 (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198))))) (dynLambda!10815 order!13961 lambda!75935))))

(declare-fun b!2006599 () Bool)

(declare-fun tp!598750 () Bool)

(declare-fun tp!598752 () Bool)

(declare-fun e!1267836 () Bool)

(assert (=> b!2006599 (= e!1267836 (and (inv!29193 (left!17534 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906))))) tp!598752 (inv!29193 (right!17864 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906))))) tp!598750))))

(declare-fun b!2006601 () Bool)

(declare-fun e!1267837 () Bool)

(declare-fun tp!598751 () Bool)

(assert (=> b!2006601 (= e!1267837 tp!598751)))

(declare-fun b!2006600 () Bool)

(assert (=> b!2006600 (= e!1267836 (and (inv!29201 (xs!10260 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906))))) e!1267837))))

(assert (=> b!2005291 (= tp!598516 (and (inv!29193 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906)))) e!1267836))))

(assert (= (and b!2005291 (is-Node!7362 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906))))) b!2006599))

(assert (= b!2006600 b!2006601))

(assert (= (and b!2005291 (is-Leaf!10803 (c!323781 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906))))) b!2006600))

(declare-fun m!2438487 () Bool)

(assert (=> b!2006599 m!2438487))

(declare-fun m!2438489 () Bool)

(assert (=> b!2006599 m!2438489))

(declare-fun m!2438491 () Bool)

(assert (=> b!2006600 m!2438491))

(assert (=> b!2005291 m!2436369))

(declare-fun b_lambda!66839 () Bool)

(assert (= b_lambda!66803 (or (and b!2006595 b_free!55923 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))))) (and b!2005328 b_free!55907 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))))) (and b!2004742 b_free!55887 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))))) (and b!2005317 b_free!55903) (and b!2004733 b_free!55879 (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))))) (and b!2006558 b_free!55919 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))))) (and b!2004750 b_free!55883 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))))) b_lambda!66839)))

(declare-fun b_lambda!66841 () Bool)

(assert (= b_lambda!66819 (or d!611997 b_lambda!66841)))

(declare-fun bs!419549 () Bool)

(declare-fun d!612753 () Bool)

(assert (= bs!419549 (and d!612753 d!611997)))

(assert (=> bs!419549 (= (dynLambda!10821 lambda!75935 (h!27439 tokens!598)) (rulesProduceIndividualToken!1740 thiss!23328 rules!3198 (h!27439 tokens!598)))))

(assert (=> bs!419549 m!2436003))

(assert (=> b!2006157 d!612753))

(declare-fun b_lambda!66843 () Bool)

(assert (= b_lambda!66797 (or (and b!2006595 b_free!55923 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 (t!186782 rules!3198))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))))) (and b!2005328 b_free!55907 (= (toChars!5475 (transformation!3955 (h!27440 (t!186782 rules!3198)))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))))) (and b!2004742 b_free!55887 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))))) (and b!2005317 b_free!55903) (and b!2004733 b_free!55879 (= (toChars!5475 (transformation!3955 (rule!6178 separatorToken!354))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))))) (and b!2006558 b_free!55919 (= (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 (t!186781 tokens!598)))))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))))) (and b!2004750 b_free!55883 (= (toChars!5475 (transformation!3955 (h!27440 rules!3198))) (toChars!5475 (transformation!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))))) b_lambda!66843)))

(declare-fun b_lambda!66845 () Bool)

(assert (= b_lambda!66817 (or d!612079 b_lambda!66845)))

(declare-fun bs!419550 () Bool)

(declare-fun d!612755 () Bool)

(assert (= bs!419550 (and d!612755 d!612079)))

(assert (=> bs!419550 (= (dynLambda!10830 lambda!75945 lt!752906) (= (list!8964 (dynLambda!10813 (toChars!5475 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906))) (list!8964 lt!752906)))))

(declare-fun b_lambda!66855 () Bool)

(assert (=> (not b_lambda!66855) (not bs!419550)))

(assert (=> bs!419550 t!186873))

(declare-fun b_and!158185 () Bool)

(assert (= b_and!158069 (and (=> t!186873 result!149750) b_and!158185)))

(assert (=> bs!419550 t!187100))

(declare-fun b_and!158187 () Bool)

(assert (= b_and!158179 (and (=> t!187100 result!149982) b_and!158187)))

(assert (=> bs!419550 t!187128))

(declare-fun b_and!158189 () Bool)

(assert (= b_and!158183 (and (=> t!187128 result!150010) b_and!158189)))

(assert (=> bs!419550 t!186849))

(declare-fun b_and!158191 () Bool)

(assert (= b_and!158075 (and (=> t!186849 result!149722) b_and!158191)))

(assert (=> bs!419550 t!186853))

(declare-fun b_and!158193 () Bool)

(assert (= b_and!158067 (and (=> t!186853 result!149726) b_and!158193)))

(assert (=> bs!419550 t!186863))

(declare-fun b_and!158195 () Bool)

(assert (= b_and!158071 (and (=> t!186863 result!149738) b_and!158195)))

(assert (=> bs!419550 t!186851))

(declare-fun b_and!158197 () Bool)

(assert (= b_and!158073 (and (=> t!186851 result!149724) b_and!158197)))

(declare-fun b_lambda!66857 () Bool)

(assert (=> (not b_lambda!66857) (not bs!419550)))

(assert (=> bs!419550 t!187080))

(declare-fun b_and!158199 () Bool)

(assert (= b_and!158177 (and (=> t!187080 result!149962) b_and!158199)))

(assert (=> bs!419550 t!187108))

(declare-fun b_and!158201 () Bool)

(assert (= b_and!158181 (and (=> t!187108 result!149990) b_and!158201)))

(assert (=> bs!419550 t!186855))

(declare-fun b_and!158203 () Bool)

(assert (= b_and!158159 (and (=> t!186855 result!149730) b_and!158203)))

(assert (=> bs!419550 t!186865))

(declare-fun b_and!158205 () Bool)

(assert (= b_and!158165 (and (=> t!186865 result!149742) b_and!158205)))

(assert (=> bs!419550 t!186841))

(declare-fun b_and!158207 () Bool)

(assert (= b_and!158163 (and (=> t!186841 result!149714) b_and!158207)))

(assert (=> bs!419550 t!186839))

(declare-fun b_and!158209 () Bool)

(assert (= b_and!158161 (and (=> t!186839 result!149712) b_and!158209)))

(assert (=> bs!419550 t!186837))

(declare-fun b_and!158211 () Bool)

(assert (= b_and!158157 (and (=> t!186837 result!149708) b_and!158211)))

(assert (=> bs!419550 m!2436309))

(assert (=> bs!419550 m!2436309))

(assert (=> bs!419550 m!2436375))

(assert (=> bs!419550 m!2436375))

(assert (=> bs!419550 m!2436377))

(assert (=> bs!419550 m!2435661))

(assert (=> d!612463 d!612755))

(declare-fun b_lambda!66847 () Bool)

(assert (= b_lambda!66795 (or b!2005255 b_lambda!66847)))

(declare-fun bs!419551 () Bool)

(declare-fun d!612757 () Bool)

(assert (= bs!419551 (and d!612757 b!2005255)))

(assert (=> bs!419551 (= (dynLambda!10821 lambda!75942 (h!27439 (t!186781 tokens!598))) (rulesProduceIndividualToken!1740 thiss!23328 rules!3198 (h!27439 (t!186781 tokens!598))))))

(assert (=> bs!419551 m!2436659))

(assert (=> d!612287 d!612757))

(declare-fun b_lambda!66849 () Bool)

(assert (= b_lambda!66837 (or b!2004739 b_lambda!66849)))

(declare-fun bs!419552 () Bool)

(declare-fun d!612759 () Bool)

(assert (= bs!419552 (and d!612759 b!2004739)))

(assert (=> bs!419552 (= (dynLambda!10821 lambda!75920 (h!27439 (t!186781 tokens!598))) (not (isSeparator!3955 (rule!6178 (h!27439 (t!186781 tokens!598))))))))

(assert (=> b!2006495 d!612759))

(declare-fun b_lambda!66851 () Bool)

(assert (= b_lambda!66827 (or d!612067 b_lambda!66851)))

(declare-fun bs!419553 () Bool)

(declare-fun d!612761 () Bool)

(assert (= bs!419553 (and d!612761 d!612067)))

(declare-fun res!880023 () Bool)

(declare-fun e!1267838 () Bool)

(assert (=> bs!419553 (=> res!880023 e!1267838)))

(assert (=> bs!419553 (= res!880023 (not (= (list!8964 lt!752906) (list!8964 (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598)))))))))

(assert (=> bs!419553 (= (dynLambda!10831 lambda!75941 lt!752906 (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598)))) e!1267838)))

(declare-fun b!2006602 () Bool)

(assert (=> b!2006602 (= e!1267838 (= (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) lt!752906) (dynLambda!10826 (toValue!5616 (transformation!3955 (rule!6178 (h!27439 tokens!598)))) (seqFromList!2809 (originalCharacters!4762 (h!27439 tokens!598))))))))

(assert (= (and bs!419553 (not res!880023)) b!2006602))

(declare-fun b_lambda!66859 () Bool)

(assert (=> (not b_lambda!66859) (not b!2006602)))

(assert (=> b!2006602 t!186841))

(declare-fun b_and!158213 () Bool)

(assert (= b_and!158207 (and (=> t!186841 result!149714) b_and!158213)))

(assert (=> b!2006602 t!186837))

(declare-fun b_and!158215 () Bool)

(assert (= b_and!158211 (and (=> t!186837 result!149708) b_and!158215)))

(assert (=> b!2006602 t!186855))

(declare-fun b_and!158217 () Bool)

(assert (= b_and!158203 (and (=> t!186855 result!149730) b_and!158217)))

(assert (=> b!2006602 t!187108))

(declare-fun b_and!158219 () Bool)

(assert (= b_and!158201 (and (=> t!187108 result!149990) b_and!158219)))

(assert (=> b!2006602 t!186865))

(declare-fun b_and!158221 () Bool)

(assert (= b_and!158205 (and (=> t!186865 result!149742) b_and!158221)))

(assert (=> b!2006602 t!187080))

(declare-fun b_and!158223 () Bool)

(assert (= b_and!158199 (and (=> t!187080 result!149962) b_and!158223)))

(assert (=> b!2006602 t!186839))

(declare-fun b_and!158225 () Bool)

(assert (= b_and!158209 (and (=> t!186839 result!149712) b_and!158225)))

(declare-fun b_lambda!66861 () Bool)

(assert (=> (not b_lambda!66861) (not b!2006602)))

(assert (=> b!2006602 t!186845))

(declare-fun b_and!158227 () Bool)

(assert (= b_and!158225 (and (=> t!186845 result!149718) b_and!158227)))

(assert (=> b!2006602 t!186847))

(declare-fun b_and!158229 () Bool)

(assert (= b_and!158213 (and (=> t!186847 result!149720) b_and!158229)))

(assert (=> b!2006602 t!187074))

(declare-fun b_and!158231 () Bool)

(assert (= b_and!158223 (and (=> t!187074 result!149956) b_and!158231)))

(assert (=> b!2006602 t!186867))

(declare-fun b_and!158233 () Bool)

(assert (= b_and!158221 (and (=> t!186867 result!149744) b_and!158233)))

(assert (=> b!2006602 t!186857))

(declare-fun b_and!158235 () Bool)

(assert (= b_and!158217 (and (=> t!186857 result!149732) b_and!158235)))

(assert (=> b!2006602 t!187102))

(declare-fun b_and!158237 () Bool)

(assert (= b_and!158219 (and (=> t!187102 result!149984) b_and!158237)))

(assert (=> b!2006602 t!186843))

(declare-fun b_and!158239 () Bool)

(assert (= b_and!158215 (and (=> t!186843 result!149716) b_and!158239)))

(assert (=> bs!419553 m!2435661))

(assert (=> bs!419553 m!2435655))

(assert (=> bs!419553 m!2436303))

(assert (=> b!2006602 m!2436309))

(assert (=> b!2006602 m!2435655))

(assert (=> b!2006602 m!2436305))

(assert (=> d!612569 d!612761))

(declare-fun b_lambda!66853 () Bool)

(assert (= b_lambda!66831 (or b!2004952 b_lambda!66853)))

(declare-fun bs!419554 () Bool)

(declare-fun d!612763 () Bool)

(assert (= bs!419554 (and d!612763 b!2004952)))

(assert (=> bs!419554 (= (dynLambda!10821 lambda!75929 (h!27439 tokens!598)) (rulesProduceIndividualToken!1740 thiss!23328 rules!3198 (h!27439 tokens!598)))))

(assert (=> bs!419554 m!2436003))

(assert (=> d!612673 d!612763))

(push 1)

(assert (not b_next!56627))

(assert (not b!2006582))

(assert (not b!2006301))

(assert (not bm!122621))

(assert (not b!2005878))

(assert (not tb!124995))

(assert (not b!2005880))

(assert (not b!2006577))

(assert (not d!612145))

(assert (not d!612351))

(assert (not b_lambda!66787))

(assert (not d!612569))

(assert (not d!612289))

(assert (not b_next!56609))

(assert (not b!2005626))

(assert (not b!2006402))

(assert (not b!2006480))

(assert (not d!612279))

(assert (not b!2006105))

(assert (not d!612597))

(assert (not b!2006407))

(assert (not d!612353))

(assert (not b!2006268))

(assert (not b!2006208))

(assert (not b!2006234))

(assert (not b!2006149))

(assert (not b!2006514))

(assert (not b!2005732))

(assert (not d!612137))

(assert (not b!2006113))

(assert (not b!2005812))

(assert (not b!2005795))

(assert (not b!2006115))

(assert (not b!2005793))

(assert (not b!2005818))

(assert (not b!2006588))

(assert (not b!2005883))

(assert (not b!2006576))

(assert (not d!612147))

(assert (not b!2005860))

(assert (not d!612211))

(assert (not b!2006224))

(assert (not tb!125005))

(assert (not b!2005603))

(assert (not b!2005845))

(assert (not b!2005865))

(assert (not d!612297))

(assert (not d!612237))

(assert (not d!612459))

(assert (not b!2006533))

(assert (not b!2005813))

(assert (not b!2005806))

(assert (not d!612669))

(assert (not b!2006536))

(assert (not d!612631))

(assert (not d!612553))

(assert (not b!2006206))

(assert (not b!2005639))

(assert (not b!2006601))

(assert (not b!2005840))

(assert (not b!2006478))

(assert (not d!612689))

(assert (not b!2006568))

(assert (not b_lambda!66853))

(assert (not b!2005615))

(assert (not b!2005838))

(assert (not b!2006506))

(assert (not b!2006141))

(assert (not b!2006385))

(assert (not b!2006532))

(assert (not b!2006457))

(assert (not b_lambda!66833))

(assert (not b!2005712))

(assert (not d!612629))

(assert (not b!2005790))

(assert (not b!2006202))

(assert (not b!2006150))

(assert (not b!2006592))

(assert (not tb!124975))

(assert (not b!2006220))

(assert (not b!2005882))

(assert (not b_lambda!66843))

(assert (not d!612493))

(assert b_and!158185)

(assert (not b!2005831))

(assert (not d!612177))

(assert (not d!612277))

(assert (not b!2005527))

(assert (not b!2006388))

(assert (not b!2006535))

(assert (not d!612329))

(assert (not b!2006218))

(assert (not b_lambda!66761))

(assert b_and!158189)

(assert (not d!612509))

(assert (not bm!122591))

(assert (not b!2006269))

(assert (not b!2006338))

(assert (not b_lambda!66755))

(assert (not b!2005791))

(assert (not d!612537))

(assert (not b!2005545))

(assert (not b!2006217))

(assert b_and!158197)

(assert (not b!2005819))

(assert (not b_lambda!66749))

(assert (not b!2006575))

(assert (not b_next!56585))

(assert (not d!612555))

(assert (not b!2005863))

(assert (not d!612591))

(assert (not d!612673))

(assert b_and!158227)

(assert (not b_lambda!66839))

(assert (not b!2005541))

(assert (not d!612657))

(assert (not b!2006066))

(assert (not b!2006379))

(assert (not b!2006374))

(assert (not b!2005627))

(assert (not d!612737))

(assert (not b_lambda!66845))

(assert (not b_next!56607))

(assert (not b!2006375))

(assert (not b!2006509))

(assert (not b_lambda!66799))

(assert (not d!612505))

(assert (not b!2006404))

(assert (not d!612323))

(assert (not b!2005811))

(assert (not b_lambda!66841))

(assert (not b!2005524))

(assert (not d!612577))

(assert (not bm!122633))

(assert (not b!2005721))

(assert (not tb!125095))

(assert (not d!612207))

(assert (not b!2006309))

(assert (not b!2005553))

(assert (not b!2005902))

(assert (not b!2005523))

(assert (not b!2006525))

(assert (not b!2005720))

(assert (not b!2005714))

(assert (not b!2006406))

(assert (not b!2006289))

(assert (not b!2006507))

(assert b_and!158237)

(assert (not b!2006548))

(assert (not b!2006519))

(assert (not b!2005711))

(assert (not d!612625))

(assert (not d!612633))

(assert (not b!2006564))

(assert (not d!612663))

(assert (not bs!419549))

(assert (not b!2006555))

(assert (not d!612531))

(assert (not d!612349))

(assert (not b!2006454))

(assert (not b_lambda!66849))

(assert (not b!2005852))

(assert (not b!2005503))

(assert (not b!2005734))

(assert (not d!612343))

(assert (not b!2006376))

(assert (not bm!122590))

(assert (not d!612735))

(assert (not b!2005807))

(assert (not b!2005794))

(assert (not bs!419550))

(assert (not d!612545))

(assert (not b!2006571))

(assert (not b!2006552))

(assert (not bm!122624))

(assert b_and!158195)

(assert (not b!2004845))

(assert (not b!2005716))

(assert (not bm!122588))

(assert (not b!2006586))

(assert (not b!2006511))

(assert (not b!2006098))

(assert tp_is_empty!9171)

(assert (not b!2005655))

(assert (not b!2005623))

(assert (not b!2006543))

(assert (not b!2005837))

(assert b_and!158191)

(assert (not b!2006104))

(assert (not bm!122556))

(assert (not b!2006459))

(assert (not b!2005873))

(assert (not b!2006152))

(assert (not b_next!56611))

(assert (not bm!122604))

(assert (not d!612313))

(assert (not b!2005613))

(assert (not b!2005886))

(assert (not d!612293))

(assert (not b!2005823))

(assert (not b!2006395))

(assert (not bm!122637))

(assert (not b_next!56581))

(assert (not d!612463))

(assert (not d!612371))

(assert (not b!2005533))

(assert (not b!2006523))

(assert (not d!612617))

(assert (not b!2006562))

(assert (not b_next!56583))

(assert (not b_next!56623))

(assert (not b!2005857))

(assert (not d!612515))

(assert (not bs!419554))

(assert (not b!2005660))

(assert (not d!612303))

(assert (not b!2006214))

(assert (not b!2006339))

(assert (not b!2006310))

(assert (not d!612271))

(assert (not b!2006155))

(assert (not b_lambda!66861))

(assert (not bm!122569))

(assert (not d!612675))

(assert (not d!612139))

(assert (not b!2006245))

(assert (not b_lambda!66823))

(assert (not d!612319))

(assert (not b!2006453))

(assert (not bs!419553))

(assert (not b!2005710))

(assert (not b!2006556))

(assert (not b!2005862))

(assert (not b!2005800))

(assert (not b!2005664))

(assert (not b!2005715))

(assert (not b!2005881))

(assert (not b!2006596))

(assert (not b!2005555))

(assert (not b!2006254))

(assert (not b!2005536))

(assert (not d!612627))

(assert (not b!2005529))

(assert (not b!2006287))

(assert (not b!2005568))

(assert b_and!158193)

(assert (not b!2006154))

(assert (not d!612241))

(assert (not b!2005571))

(assert (not b!2006554))

(assert (not b!2006203))

(assert (not b!2006585))

(assert (not b!2006569))

(assert (not b_lambda!66801))

(assert b_and!158231)

(assert (not b!2006524))

(assert (not b!2005618))

(assert (not tb!124955))

(assert (not b!2005708))

(assert (not b!2005809))

(assert (not b!2006540))

(assert (not b!2006584))

(assert (not b!2005605))

(assert (not b_next!56591))

(assert (not b!2005564))

(assert (not b!2005731))

(assert (not b_lambda!66759))

(assert (not b!2005531))

(assert (not d!612615))

(assert (not b!2005624))

(assert (not bm!122582))

(assert (not d!612299))

(assert (not d!612467))

(assert (not b!2006518))

(assert (not b!2005810))

(assert (not d!612191))

(assert (not bm!122566))

(assert (not b!2005572))

(assert (not d!612209))

(assert (not b!2005713))

(assert (not b_lambda!66753))

(assert (not b!2005659))

(assert (not d!612533))

(assert (not b!2006112))

(assert (not b!2006550))

(assert (not b!2006281))

(assert (not b!2006553))

(assert (not bm!122586))

(assert (not b!2005551))

(assert (not b!2005522))

(assert (not d!612687))

(assert (not b!2005851))

(assert (not d!612165))

(assert (not b!2006267))

(assert (not b!2006513))

(assert (not bm!122623))

(assert (not b!2005897))

(assert (not b_lambda!66855))

(assert (not b!2005796))

(assert (not b!2006284))

(assert (not b_next!56625))

(assert (not b!2006381))

(assert (not b!2005644))

(assert (not b_lambda!66847))

(assert (not b!2006158))

(assert (not b!2005200))

(assert (not b!2006579))

(assert (not b!2006067))

(assert (not b!2005816))

(assert (not b!2005717))

(assert (not d!612197))

(assert (not b_lambda!66745))

(assert (not bs!419551))

(assert (not b!2006515))

(assert (not b!2005839))

(assert (not d!612141))

(assert (not b!2005562))

(assert (not b!2005530))

(assert (not d!612335))

(assert (not b!2005889))

(assert (not b!2005723))

(assert (not b!2005570))

(assert (not d!612721))

(assert (not b_next!56589))

(assert (not b!2006510))

(assert (not d!612325))

(assert (not b_next!56605))

(assert (not b!2005657))

(assert (not b!2006570))

(assert (not b!2005927))

(assert (not b!2006219))

(assert (not b!2005821))

(assert (not b!2006111))

(assert (not b!2006144))

(assert (not b!2006479))

(assert (not d!612183))

(assert (not d!612525))

(assert (not b_lambda!66859))

(assert (not b_lambda!66747))

(assert (not d!612347))

(assert (not b!2006256))

(assert (not b!2006600))

(assert (not bm!122579))

(assert (not b!2005929))

(assert (not d!612575))

(assert (not b!2005825))

(assert (not bm!122584))

(assert (not d!612621))

(assert (not d!612581))

(assert (not b!2005566))

(assert (not b!2006276))

(assert (not b!2006565))

(assert (not b!2006593))

(assert (not b!2005653))

(assert (not b!2006110))

(assert (not b!2006529))

(assert (not b!2006599))

(assert (not b_lambda!66857))

(assert (not d!612683))

(assert (not bm!122568))

(assert (not d!612469))

(assert (not bm!122583))

(assert (not b!2006378))

(assert (not b_lambda!66757))

(assert (not b!2006591))

(assert (not b!2006481))

(assert (not d!612291))

(assert (not b_lambda!66793))

(assert (not b!2005861))

(assert (not b!2006223))

(assert (not b!2006561))

(assert (not b!2005834))

(assert (not b!2006483))

(assert (not tb!125059))

(assert (not b!2006101))

(assert (not b!2005598))

(assert (not d!612477))

(assert (not b!2006221))

(assert (not d!612567))

(assert (not b!2005526))

(assert (not b!2005841))

(assert (not b!2006118))

(assert (not d!612229))

(assert (not b!2005895))

(assert (not b!2005804))

(assert (not b!2006517))

(assert (not d!612217))

(assert (not b!2006065))

(assert (not b!2005836))

(assert b_and!158229)

(assert (not b!2006304))

(assert (not b!2006114))

(assert (not b!2005542))

(assert (not b!2006516))

(assert (not b!2006232))

(assert (not b!2005827))

(assert (not b!2005894))

(assert (not tb!124945))

(assert b_and!158187)

(assert (not b_next!56587))

(assert (not b!2005832))

(assert (not d!612613))

(assert (not b!2006373))

(assert b_and!158239)

(assert (not b!2005612))

(assert (not d!612281))

(assert b_and!158235)

(assert (not b!2006396))

(assert (not d!612671))

(assert (not d!612355))

(assert (not d!612667))

(assert (not b!2005707))

(assert (not d!612497))

(assert (not tb!124985))

(assert (not b!2006541))

(assert (not b!2006557))

(assert (not b!2005778))

(assert (not d!612199))

(assert (not bm!122620))

(assert (not b!2005850))

(assert (not b!2005844))

(assert (not d!612523))

(assert (not bm!122634))

(assert (not b!2006180))

(assert (not bm!122563))

(assert (not b!2005884))

(assert (not d!612637))

(assert (not bm!122580))

(assert (not b_lambda!66785))

(assert (not b!2006205))

(assert (not b!2005726))

(assert (not b!2005645))

(assert (not b!2005638))

(assert (not b!2006321))

(assert (not b!2006216))

(assert (not d!612487))

(assert (not b!2006581))

(assert (not b!2006377))

(assert (not bm!122606))

(assert (not b!2006544))

(assert (not d!612287))

(assert (not b!2006590))

(assert (not d!612187))

(assert (not d!612189))

(assert (not b!2006545))

(assert (not b!2006215))

(assert (not b!2006139))

(assert (not d!612315))

(assert (not b!2006505))

(assert (not b!2006097))

(assert (not d!612717))

(assert (not b!2006549))

(assert (not d!612331))

(assert (not b!2006405))

(assert (not b!2006387))

(assert (not b!2006587))

(assert (not b!2006496))

(assert (not d!612707))

(assert (not b!2006528))

(assert (not b!2006312))

(assert (not d!612275))

(assert (not b!2006477))

(assert (not d!612461))

(assert (not b!2005858))

(assert (not b_lambda!66791))

(assert (not b!2005859))

(assert (not b!2006249))

(assert (not b!2006200))

(assert (not d!612583))

(assert (not b!2005842))

(assert (not d!612247))

(assert b_and!158233)

(assert (not d!612491))

(assert (not b!2005565))

(assert (not b!2006271))

(assert (not b!2006403))

(assert (not b!2006372))

(assert (not b!2005525))

(assert (not b!2005637))

(assert (not d!612333))

(assert (not b!2006566))

(assert (not b!2006273))

(assert (not d!612301))

(assert (not b!2006409))

(assert (not b!2006594))

(assert (not b!2006580))

(assert (not tb!124965))

(assert (not b!2005602))

(assert (not b!2006539))

(assert (not b!2006531))

(assert (not d!612619))

(assert (not b!2005798))

(assert (not b!2006458))

(assert (not d!612357))

(assert (not d!612179))

(assert (not b!2006282))

(assert (not b_lambda!66751))

(assert (not b!2006116))

(assert (not d!612213))

(assert (not b!2005544))

(assert (not b!2006299))

(assert (not bm!122565))

(assert (not d!612501))

(assert (not b!2006527))

(assert (not b!2006450))

(assert (not b!2006411))

(assert (not b!2005291))

(assert (not b!2006212))

(assert (not b!2006537))

(assert (not b!2005814))

(assert (not b_lambda!66851))

(assert (not b!2006560))

(assert (not b!2006408))

(assert (not b!2005718))

(assert (not d!612305))

(assert (not d!612473))

(assert (not d!612327))

(assert (not b_next!56621))

(assert (not b!2005797))

(assert (not d!612345))

(assert (not b!2005815))

(assert (not d!612215))

(check-sat)

(pop 1)

(push 1)

(assert b_and!158185)

(assert b_and!158189)

(assert (not b_next!56607))

(assert b_and!158237)

(assert (not b_next!56591))

(assert (not b_next!56625))

(assert b_and!158233)

(assert (not b_next!56621))

(assert (not b_next!56627))

(assert (not b_next!56609))

(assert b_and!158227)

(assert b_and!158197)

(assert (not b_next!56585))

(assert b_and!158195)

(assert (not b_next!56611))

(assert b_and!158191)

(assert (not b_next!56581))

(assert (not b_next!56583))

(assert (not b_next!56623))

(assert b_and!158193)

(assert b_and!158231)

(assert (not b_next!56589))

(assert (not b_next!56605))

(assert b_and!158187)

(assert (not b_next!56587))

(assert b_and!158229)

(assert b_and!158239)

(assert b_and!158235)

(check-sat)

(pop 1)

