; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!298426 () Bool)

(assert start!298426)

(declare-fun b!3183758 () Bool)

(declare-fun b_free!84009 () Bool)

(declare-fun b_next!84713 () Bool)

(assert (=> b!3183758 (= b_free!84009 (not b_next!84713))))

(declare-fun tp!1007015 () Bool)

(declare-fun b_and!210579 () Bool)

(assert (=> b!3183758 (= tp!1007015 b_and!210579)))

(declare-fun b_free!84011 () Bool)

(declare-fun b_next!84715 () Bool)

(assert (=> b!3183758 (= b_free!84011 (not b_next!84715))))

(declare-fun tp!1007019 () Bool)

(declare-fun b_and!210581 () Bool)

(assert (=> b!3183758 (= tp!1007019 b_and!210581)))

(declare-fun b!3183786 () Bool)

(declare-fun b_free!84013 () Bool)

(declare-fun b_next!84717 () Bool)

(assert (=> b!3183786 (= b_free!84013 (not b_next!84717))))

(declare-fun tp!1007009 () Bool)

(declare-fun b_and!210583 () Bool)

(assert (=> b!3183786 (= tp!1007009 b_and!210583)))

(declare-fun b_free!84015 () Bool)

(declare-fun b_next!84719 () Bool)

(assert (=> b!3183786 (= b_free!84015 (not b_next!84719))))

(declare-fun tp!1007012 () Bool)

(declare-fun b_and!210585 () Bool)

(assert (=> b!3183786 (= tp!1007012 b_and!210585)))

(declare-fun b!3183784 () Bool)

(declare-fun b_free!84017 () Bool)

(declare-fun b_next!84721 () Bool)

(assert (=> b!3183784 (= b_free!84017 (not b_next!84721))))

(declare-fun tp!1007010 () Bool)

(declare-fun b_and!210587 () Bool)

(assert (=> b!3183784 (= tp!1007010 b_and!210587)))

(declare-fun b_free!84019 () Bool)

(declare-fun b_next!84723 () Bool)

(assert (=> b!3183784 (= b_free!84019 (not b_next!84723))))

(declare-fun tp!1007017 () Bool)

(declare-fun b_and!210589 () Bool)

(assert (=> b!3183784 (= tp!1007017 b_and!210589)))

(declare-fun b!3183749 () Bool)

(declare-fun e!1983734 () Bool)

(declare-fun e!1983756 () Bool)

(assert (=> b!3183749 (= e!1983734 e!1983756)))

(declare-fun res!1294193 () Bool)

(assert (=> b!3183749 (=> res!1294193 e!1983756)))

(declare-datatypes ((C!19960 0))(
  ( (C!19961 (val!12028 Int)) )
))
(declare-datatypes ((Regex!9887 0))(
  ( (ElementMatch!9887 (c!534698 C!19960)) (Concat!15245 (regOne!20286 Regex!9887) (regTwo!20286 Regex!9887)) (EmptyExpr!9887) (Star!9887 (reg!10216 Regex!9887)) (EmptyLang!9887) (Union!9887 (regOne!20287 Regex!9887) (regTwo!20287 Regex!9887)) )
))
(declare-datatypes ((List!35898 0))(
  ( (Nil!35774) (Cons!35774 (h!41194 (_ BitVec 16)) (t!235401 List!35898)) )
))
(declare-datatypes ((TokenValue!5358 0))(
  ( (FloatLiteralValue!10716 (text!37951 List!35898)) (TokenValueExt!5357 (__x!22933 Int)) (Broken!26790 (value!166582 List!35898)) (Object!5481) (End!5358) (Def!5358) (Underscore!5358) (Match!5358) (Else!5358) (Error!5358) (Case!5358) (If!5358) (Extends!5358) (Abstract!5358) (Class!5358) (Val!5358) (DelimiterValue!10716 (del!5418 List!35898)) (KeywordValue!5364 (value!166583 List!35898)) (CommentValue!10716 (value!166584 List!35898)) (WhitespaceValue!10716 (value!166585 List!35898)) (IndentationValue!5358 (value!166586 List!35898)) (String!40123) (Int32!5358) (Broken!26791 (value!166587 List!35898)) (Boolean!5359) (Unit!50179) (OperatorValue!5361 (op!5418 List!35898)) (IdentifierValue!10716 (value!166588 List!35898)) (IdentifierValue!10717 (value!166589 List!35898)) (WhitespaceValue!10717 (value!166590 List!35898)) (True!10716) (False!10716) (Broken!26792 (value!166591 List!35898)) (Broken!26793 (value!166592 List!35898)) (True!10717) (RightBrace!5358) (RightBracket!5358) (Colon!5358) (Null!5358) (Comma!5358) (LeftBracket!5358) (False!10717) (LeftBrace!5358) (ImaginaryLiteralValue!5358 (text!37952 List!35898)) (StringLiteralValue!16074 (value!166593 List!35898)) (EOFValue!5358 (value!166594 List!35898)) (IdentValue!5358 (value!166595 List!35898)) (DelimiterValue!10717 (value!166596 List!35898)) (DedentValue!5358 (value!166597 List!35898)) (NewLineValue!5358 (value!166598 List!35898)) (IntegerValue!16074 (value!166599 (_ BitVec 32)) (text!37953 List!35898)) (IntegerValue!16075 (value!166600 Int) (text!37954 List!35898)) (Times!5358) (Or!5358) (Equal!5358) (Minus!5358) (Broken!26794 (value!166601 List!35898)) (And!5358) (Div!5358) (LessEqual!5358) (Mod!5358) (Concat!15246) (Not!5358) (Plus!5358) (SpaceValue!5358 (value!166602 List!35898)) (IntegerValue!16076 (value!166603 Int) (text!37955 List!35898)) (StringLiteralValue!16075 (text!37956 List!35898)) (FloatLiteralValue!10717 (text!37957 List!35898)) (BytesLiteralValue!5358 (value!166604 List!35898)) (CommentValue!10717 (value!166605 List!35898)) (StringLiteralValue!16076 (value!166606 List!35898)) (ErrorTokenValue!5358 (msg!5419 List!35898)) )
))
(declare-datatypes ((List!35899 0))(
  ( (Nil!35775) (Cons!35775 (h!41195 C!19960) (t!235402 List!35899)) )
))
(declare-datatypes ((IArray!21267 0))(
  ( (IArray!21268 (innerList!10691 List!35899)) )
))
(declare-datatypes ((Conc!10631 0))(
  ( (Node!10631 (left!27825 Conc!10631) (right!28155 Conc!10631) (csize!21492 Int) (cheight!10842 Int)) (Leaf!16806 (xs!13749 IArray!21267) (csize!21493 Int)) (Empty!10631) )
))
(declare-datatypes ((BalanceConc!20876 0))(
  ( (BalanceConc!20877 (c!534699 Conc!10631)) )
))
(declare-datatypes ((String!40124 0))(
  ( (String!40125 (value!166607 String)) )
))
(declare-datatypes ((TokenValueInjection!10144 0))(
  ( (TokenValueInjection!10145 (toValue!7188 Int) (toChars!7047 Int)) )
))
(declare-datatypes ((Rule!10056 0))(
  ( (Rule!10057 (regex!5128 Regex!9887) (tag!5640 String!40124) (isSeparator!5128 Bool) (transformation!5128 TokenValueInjection!10144)) )
))
(declare-datatypes ((Token!9622 0))(
  ( (Token!9623 (value!166608 TokenValue!5358) (rule!7546 Rule!10056) (size!26994 Int) (originalCharacters!5842 List!35899)) )
))
(declare-datatypes ((List!35900 0))(
  ( (Nil!35776) (Cons!35776 (h!41196 Token!9622) (t!235403 List!35900)) )
))
(declare-fun tokens!494 () List!35900)

(assert (=> b!3183749 (= res!1294193 (isSeparator!5128 (rule!7546 (h!41196 tokens!494))))))

(declare-datatypes ((Unit!50180 0))(
  ( (Unit!50181) )
))
(declare-fun lt!1070537 () Unit!50180)

(declare-fun lambda!116473 () Int)

(declare-fun forallContained!1111 (List!35900 Int Token!9622) Unit!50180)

(assert (=> b!3183749 (= lt!1070537 (forallContained!1111 tokens!494 lambda!116473 (h!41196 tokens!494)))))

(declare-fun b!3183750 () Bool)

(declare-fun e!1983747 () Bool)

(declare-fun separatorToken!241 () Token!9622)

(declare-fun lt!1070538 () Rule!10056)

(assert (=> b!3183750 (= e!1983747 (= (rule!7546 separatorToken!241) lt!1070538))))

(declare-fun b!3183751 () Bool)

(declare-fun e!1983761 () Bool)

(declare-fun tp!1007011 () Bool)

(declare-fun e!1983735 () Bool)

(declare-fun inv!21 (TokenValue!5358) Bool)

(assert (=> b!3183751 (= e!1983735 (and (inv!21 (value!166608 separatorToken!241)) e!1983761 tp!1007011))))

(declare-fun b!3183752 () Bool)

(declare-fun e!1983746 () Bool)

(declare-fun tp!1007018 () Bool)

(declare-fun e!1983737 () Bool)

(declare-fun inv!48627 (Token!9622) Bool)

(assert (=> b!3183752 (= e!1983746 (and (inv!48627 (h!41196 tokens!494)) e!1983737 tp!1007018))))

(declare-fun b!3183753 () Bool)

(declare-fun e!1983745 () Bool)

(declare-fun e!1983744 () Bool)

(declare-fun tp!1007020 () Bool)

(assert (=> b!3183753 (= e!1983745 (and e!1983744 tp!1007020))))

(declare-fun b!3183754 () Bool)

(declare-fun e!1983760 () Unit!50180)

(declare-fun Unit!50182 () Unit!50180)

(assert (=> b!3183754 (= e!1983760 Unit!50182)))

(declare-fun lt!1070543 () Unit!50180)

(declare-fun lt!1070564 () List!35899)

(declare-fun lt!1070551 () C!19960)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!326 (Regex!9887 List!35899 C!19960) Unit!50180)

(assert (=> b!3183754 (= lt!1070543 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!326 (regex!5128 (rule!7546 separatorToken!241)) lt!1070564 lt!1070551))))

(declare-fun res!1294184 () Bool)

(declare-fun matchR!4545 (Regex!9887 List!35899) Bool)

(assert (=> b!3183754 (= res!1294184 (not (matchR!4545 (regex!5128 (rule!7546 separatorToken!241)) lt!1070564)))))

(declare-fun e!1983733 () Bool)

(assert (=> b!3183754 (=> (not res!1294184) (not e!1983733))))

(assert (=> b!3183754 e!1983733))

(declare-fun e!1983751 () Bool)

(declare-fun b!3183755 () Bool)

(declare-fun tp!1007008 () Bool)

(declare-datatypes ((List!35901 0))(
  ( (Nil!35777) (Cons!35777 (h!41197 Rule!10056) (t!235404 List!35901)) )
))
(declare-fun rules!2135 () List!35901)

(declare-fun inv!48624 (String!40124) Bool)

(declare-fun inv!48628 (TokenValueInjection!10144) Bool)

(assert (=> b!3183755 (= e!1983744 (and tp!1007008 (inv!48624 (tag!5640 (h!41197 rules!2135))) (inv!48628 (transformation!5128 (h!41197 rules!2135))) e!1983751))))

(declare-fun b!3183757 () Bool)

(declare-fun e!1983732 () Bool)

(declare-fun e!1983754 () Bool)

(assert (=> b!3183757 (= e!1983732 e!1983754)))

(declare-fun res!1294188 () Bool)

(assert (=> b!3183757 (=> (not res!1294188) (not e!1983754))))

(declare-fun lt!1070556 () Rule!10056)

(declare-fun lt!1070557 () List!35899)

(assert (=> b!3183757 (= res!1294188 (matchR!4545 (regex!5128 lt!1070556) lt!1070557))))

(declare-datatypes ((Option!6987 0))(
  ( (None!6986) (Some!6986 (v!35456 Rule!10056)) )
))
(declare-fun lt!1070550 () Option!6987)

(declare-fun get!11382 (Option!6987) Rule!10056)

(assert (=> b!3183757 (= lt!1070556 (get!11382 lt!1070550))))

(assert (=> b!3183758 (= e!1983751 (and tp!1007015 tp!1007019))))

(declare-fun b!3183759 () Bool)

(declare-fun e!1983731 () Bool)

(declare-fun e!1983757 () Bool)

(assert (=> b!3183759 (= e!1983731 e!1983757)))

(declare-fun res!1294180 () Bool)

(assert (=> b!3183759 (=> res!1294180 e!1983757)))

(declare-fun lt!1070541 () List!35899)

(declare-fun lt!1070554 () List!35899)

(assert (=> b!3183759 (= res!1294180 (or (not (= lt!1070554 lt!1070557)) (not (= lt!1070541 lt!1070557))))))

(declare-fun list!12701 (BalanceConc!20876) List!35899)

(declare-fun charsOf!3150 (Token!9622) BalanceConc!20876)

(assert (=> b!3183759 (= lt!1070557 (list!12701 (charsOf!3150 (h!41196 tokens!494))))))

(declare-fun e!1983742 () Bool)

(declare-fun b!3183760 () Bool)

(declare-fun tp!1007014 () Bool)

(declare-fun e!1983739 () Bool)

(assert (=> b!3183760 (= e!1983742 (and tp!1007014 (inv!48624 (tag!5640 (rule!7546 (h!41196 tokens!494)))) (inv!48628 (transformation!5128 (rule!7546 (h!41196 tokens!494)))) e!1983739))))

(declare-fun b!3183761 () Bool)

(declare-fun res!1294182 () Bool)

(declare-fun e!1983743 () Bool)

(assert (=> b!3183761 (=> (not res!1294182) (not e!1983743))))

(declare-fun sepAndNonSepRulesDisjointChars!1322 (List!35901 List!35901) Bool)

(assert (=> b!3183761 (= res!1294182 (sepAndNonSepRulesDisjointChars!1322 rules!2135 rules!2135))))

(declare-fun b!3183762 () Bool)

(declare-fun res!1294174 () Bool)

(declare-fun e!1983752 () Bool)

(assert (=> b!3183762 (=> res!1294174 e!1983752)))

(declare-datatypes ((tuple2!35126 0))(
  ( (tuple2!35127 (_1!20697 Token!9622) (_2!20697 List!35899)) )
))
(declare-fun lt!1070552 () tuple2!35126)

(declare-fun isEmpty!19903 (List!35899) Bool)

(assert (=> b!3183762 (= res!1294174 (not (isEmpty!19903 (_2!20697 lt!1070552))))))

(declare-fun e!1983748 () Bool)

(declare-fun tp!1007016 () Bool)

(declare-fun b!3183763 () Bool)

(assert (=> b!3183763 (= e!1983761 (and tp!1007016 (inv!48624 (tag!5640 (rule!7546 separatorToken!241))) (inv!48628 (transformation!5128 (rule!7546 separatorToken!241))) e!1983748))))

(declare-fun b!3183764 () Bool)

(declare-fun e!1983749 () Bool)

(declare-fun e!1983741 () Bool)

(assert (=> b!3183764 (= e!1983749 e!1983741)))

(declare-fun res!1294195 () Bool)

(assert (=> b!3183764 (=> res!1294195 e!1983741)))

(declare-fun contains!6338 (List!35901 Rule!10056) Bool)

(assert (=> b!3183764 (= res!1294195 (not (contains!6338 rules!2135 (rule!7546 (h!41196 tokens!494)))))))

(declare-fun contains!6339 (List!35899 C!19960) Bool)

(declare-fun usedCharacters!472 (Regex!9887) List!35899)

(assert (=> b!3183764 (not (contains!6339 (usedCharacters!472 (regex!5128 (rule!7546 (h!41196 tokens!494)))) lt!1070551))))

(declare-datatypes ((LexerInterface!4717 0))(
  ( (LexerInterfaceExt!4714 (__x!22934 Int)) (Lexer!4715) )
))
(declare-fun thiss!18206 () LexerInterface!4717)

(declare-fun lt!1070540 () Unit!50180)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!104 (LexerInterface!4717 List!35901 List!35901 Rule!10056 Rule!10056 C!19960) Unit!50180)

(assert (=> b!3183764 (= lt!1070540 (lemmaNonSepRuleNotContainsCharContainedInASepRule!104 thiss!18206 rules!2135 rules!2135 (rule!7546 (h!41196 tokens!494)) (rule!7546 separatorToken!241) lt!1070551))))

(declare-fun b!3183765 () Bool)

(assert (=> b!3183765 (= e!1983733 false)))

(declare-fun b!3183766 () Bool)

(declare-fun res!1294187 () Bool)

(declare-fun e!1983750 () Bool)

(assert (=> b!3183766 (=> (not res!1294187) (not e!1983750))))

(declare-fun rulesInvariant!4114 (LexerInterface!4717 List!35901) Bool)

(assert (=> b!3183766 (= res!1294187 (rulesInvariant!4114 thiss!18206 rules!2135))))

(declare-fun b!3183767 () Bool)

(declare-fun e!1983759 () Bool)

(assert (=> b!3183767 (= e!1983759 e!1983747)))

(declare-fun res!1294170 () Bool)

(assert (=> b!3183767 (=> (not res!1294170) (not e!1983747))))

(assert (=> b!3183767 (= res!1294170 (matchR!4545 (regex!5128 lt!1070538) lt!1070564))))

(declare-fun lt!1070546 () Option!6987)

(assert (=> b!3183767 (= lt!1070538 (get!11382 lt!1070546))))

(declare-fun b!3183768 () Bool)

(declare-fun res!1294173 () Bool)

(assert (=> b!3183768 (=> res!1294173 e!1983741)))

(assert (=> b!3183768 (= res!1294173 (not (contains!6338 rules!2135 (rule!7546 separatorToken!241))))))

(declare-fun b!3183769 () Bool)

(declare-fun e!1983755 () Bool)

(assert (=> b!3183769 (= e!1983756 e!1983755)))

(declare-fun res!1294194 () Bool)

(assert (=> b!3183769 (=> res!1294194 e!1983755)))

(declare-fun lt!1070561 () BalanceConc!20876)

(declare-fun ++!8556 (List!35899 List!35899) List!35899)

(assert (=> b!3183769 (= res!1294194 (not (= (list!12701 lt!1070561) (++!8556 lt!1070557 lt!1070564))))))

(assert (=> b!3183769 (= lt!1070564 (list!12701 (charsOf!3150 separatorToken!241)))))

(declare-datatypes ((IArray!21269 0))(
  ( (IArray!21270 (innerList!10692 List!35900)) )
))
(declare-datatypes ((Conc!10632 0))(
  ( (Node!10632 (left!27826 Conc!10632) (right!28156 Conc!10632) (csize!21494 Int) (cheight!10843 Int)) (Leaf!16807 (xs!13750 IArray!21269) (csize!21495 Int)) (Empty!10632) )
))
(declare-datatypes ((BalanceConc!20878 0))(
  ( (BalanceConc!20879 (c!534700 Conc!10632)) )
))
(declare-fun lt!1070560 () BalanceConc!20878)

(declare-fun printWithSeparatorToken!26 (LexerInterface!4717 BalanceConc!20878 Token!9622) BalanceConc!20876)

(assert (=> b!3183769 (= lt!1070561 (printWithSeparatorToken!26 thiss!18206 lt!1070560 separatorToken!241))))

(declare-fun b!3183770 () Bool)

(declare-fun res!1294191 () Bool)

(assert (=> b!3183770 (=> (not res!1294191) (not e!1983743))))

(declare-fun rulesProduceIndividualToken!2209 (LexerInterface!4717 List!35901 Token!9622) Bool)

(assert (=> b!3183770 (= res!1294191 (rulesProduceIndividualToken!2209 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3183771 () Bool)

(assert (=> b!3183771 (= e!1983752 true)))

(declare-fun lt!1070558 () Bool)

(assert (=> b!3183771 (= lt!1070558 (matchR!4545 (regex!5128 (rule!7546 (h!41196 tokens!494))) lt!1070557))))

(declare-fun ruleValid!1626 (LexerInterface!4717 Rule!10056) Bool)

(assert (=> b!3183771 (ruleValid!1626 thiss!18206 (rule!7546 (h!41196 tokens!494)))))

(declare-fun lt!1070545 () Unit!50180)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!926 (LexerInterface!4717 Rule!10056 List!35901) Unit!50180)

(assert (=> b!3183771 (= lt!1070545 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!926 thiss!18206 (rule!7546 (h!41196 tokens!494)) rules!2135))))

(declare-fun b!3183772 () Bool)

(declare-fun e!1983738 () Bool)

(assert (=> b!3183772 (= e!1983738 e!1983752)))

(declare-fun res!1294185 () Bool)

(assert (=> b!3183772 (=> res!1294185 e!1983752)))

(assert (=> b!3183772 (= res!1294185 (not (= (_1!20697 lt!1070552) (h!41196 tokens!494))))))

(declare-datatypes ((Option!6988 0))(
  ( (None!6987) (Some!6987 (v!35457 tuple2!35126)) )
))
(declare-fun lt!1070553 () Option!6988)

(declare-fun get!11383 (Option!6988) tuple2!35126)

(assert (=> b!3183772 (= lt!1070552 (get!11383 lt!1070553))))

(declare-fun b!3183773 () Bool)

(declare-fun tp!1007013 () Bool)

(assert (=> b!3183773 (= e!1983737 (and (inv!21 (value!166608 (h!41196 tokens!494))) e!1983742 tp!1007013))))

(declare-fun b!3183774 () Bool)

(assert (=> b!3183774 (= e!1983750 e!1983743)))

(declare-fun res!1294178 () Bool)

(assert (=> b!3183774 (=> (not res!1294178) (not e!1983743))))

(declare-fun rulesProduceEachTokenIndividually!1168 (LexerInterface!4717 List!35901 BalanceConc!20878) Bool)

(assert (=> b!3183774 (= res!1294178 (rulesProduceEachTokenIndividually!1168 thiss!18206 rules!2135 lt!1070560))))

(declare-fun seqFromList!3335 (List!35900) BalanceConc!20878)

(assert (=> b!3183774 (= lt!1070560 (seqFromList!3335 tokens!494))))

(declare-fun b!3183775 () Bool)

(declare-fun res!1294189 () Bool)

(assert (=> b!3183775 (=> (not res!1294189) (not e!1983750))))

(declare-fun isEmpty!19904 (List!35901) Bool)

(assert (=> b!3183775 (= res!1294189 (not (isEmpty!19904 rules!2135)))))

(declare-fun b!3183776 () Bool)

(declare-fun res!1294186 () Bool)

(assert (=> b!3183776 (=> (not res!1294186) (not e!1983743))))

(get-info :version)

(assert (=> b!3183776 (= res!1294186 (and (not ((_ is Nil!35776) tokens!494)) ((_ is Nil!35776) (t!235403 tokens!494))))))

(declare-fun b!3183777 () Bool)

(declare-fun res!1294192 () Bool)

(assert (=> b!3183777 (=> (not res!1294192) (not e!1983743))))

(declare-fun forall!7246 (List!35900 Int) Bool)

(assert (=> b!3183777 (= res!1294192 (forall!7246 tokens!494 lambda!116473))))

(declare-fun b!3183778 () Bool)

(assert (=> b!3183778 (= e!1983757 e!1983734)))

(declare-fun res!1294176 () Bool)

(assert (=> b!3183778 (=> res!1294176 e!1983734)))

(declare-fun lt!1070544 () BalanceConc!20876)

(declare-fun isEmpty!19905 (BalanceConc!20878) Bool)

(declare-datatypes ((tuple2!35128 0))(
  ( (tuple2!35129 (_1!20698 BalanceConc!20878) (_2!20698 BalanceConc!20876)) )
))
(declare-fun lex!2057 (LexerInterface!4717 List!35901 BalanceConc!20876) tuple2!35128)

(assert (=> b!3183778 (= res!1294176 (isEmpty!19905 (_1!20698 (lex!2057 thiss!18206 rules!2135 lt!1070544))))))

(declare-fun seqFromList!3336 (List!35899) BalanceConc!20876)

(assert (=> b!3183778 (= lt!1070544 (seqFromList!3336 lt!1070557))))

(declare-fun b!3183779 () Bool)

(assert (=> b!3183779 (= e!1983743 (not e!1983731))))

(declare-fun res!1294179 () Bool)

(assert (=> b!3183779 (=> res!1294179 e!1983731)))

(assert (=> b!3183779 (= res!1294179 (not (= lt!1070541 lt!1070554)))))

(declare-fun printList!1271 (LexerInterface!4717 List!35900) List!35899)

(assert (=> b!3183779 (= lt!1070554 (printList!1271 thiss!18206 (Cons!35776 (h!41196 tokens!494) Nil!35776)))))

(declare-fun lt!1070562 () BalanceConc!20876)

(assert (=> b!3183779 (= lt!1070541 (list!12701 lt!1070562))))

(declare-fun lt!1070547 () BalanceConc!20878)

(declare-fun printTailRec!1216 (LexerInterface!4717 BalanceConc!20878 Int BalanceConc!20876) BalanceConc!20876)

(assert (=> b!3183779 (= lt!1070562 (printTailRec!1216 thiss!18206 lt!1070547 0 (BalanceConc!20877 Empty!10631)))))

(declare-fun print!1784 (LexerInterface!4717 BalanceConc!20878) BalanceConc!20876)

(assert (=> b!3183779 (= lt!1070562 (print!1784 thiss!18206 lt!1070547))))

(declare-fun singletonSeq!2224 (Token!9622) BalanceConc!20878)

(assert (=> b!3183779 (= lt!1070547 (singletonSeq!2224 (h!41196 tokens!494)))))

(declare-fun b!3183756 () Bool)

(assert (=> b!3183756 (= e!1983755 e!1983749)))

(declare-fun res!1294175 () Bool)

(assert (=> b!3183756 (=> res!1294175 e!1983749)))

(declare-fun lt!1070542 () Bool)

(assert (=> b!3183756 (= res!1294175 lt!1070542)))

(declare-fun lt!1070559 () Unit!50180)

(assert (=> b!3183756 (= lt!1070559 e!1983760)))

(declare-fun c!534697 () Bool)

(assert (=> b!3183756 (= c!534697 lt!1070542)))

(assert (=> b!3183756 (= lt!1070542 (not (contains!6339 (usedCharacters!472 (regex!5128 (rule!7546 separatorToken!241))) lt!1070551)))))

(declare-fun head!6957 (List!35899) C!19960)

(assert (=> b!3183756 (= lt!1070551 (head!6957 lt!1070564))))

(declare-fun maxPrefixOneRule!1522 (LexerInterface!4717 Rule!10056 List!35899) Option!6988)

(declare-fun apply!8052 (TokenValueInjection!10144 BalanceConc!20876) TokenValue!5358)

(declare-fun size!26995 (List!35899) Int)

(assert (=> b!3183756 (= (maxPrefixOneRule!1522 thiss!18206 (rule!7546 (h!41196 tokens!494)) lt!1070557) (Some!6987 (tuple2!35127 (Token!9623 (apply!8052 (transformation!5128 (rule!7546 (h!41196 tokens!494))) lt!1070544) (rule!7546 (h!41196 tokens!494)) (size!26995 lt!1070557) lt!1070557) Nil!35775)))))

(declare-fun lt!1070539 () Unit!50180)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!635 (LexerInterface!4717 List!35901 List!35899 List!35899 List!35899 Rule!10056) Unit!50180)

(assert (=> b!3183756 (= lt!1070539 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!635 thiss!18206 rules!2135 lt!1070557 lt!1070557 Nil!35775 (rule!7546 (h!41196 tokens!494))))))

(assert (=> b!3183756 e!1983759))

(declare-fun res!1294190 () Bool)

(assert (=> b!3183756 (=> (not res!1294190) (not e!1983759))))

(declare-fun isDefined!5473 (Option!6987) Bool)

(assert (=> b!3183756 (= res!1294190 (isDefined!5473 lt!1070546))))

(declare-fun getRuleFromTag!857 (LexerInterface!4717 List!35901 String!40124) Option!6987)

(assert (=> b!3183756 (= lt!1070546 (getRuleFromTag!857 thiss!18206 rules!2135 (tag!5640 (rule!7546 separatorToken!241))))))

(declare-fun lt!1070555 () Unit!50180)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!857 (LexerInterface!4717 List!35901 List!35899 Token!9622) Unit!50180)

(assert (=> b!3183756 (= lt!1070555 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!857 thiss!18206 rules!2135 lt!1070564 separatorToken!241))))

(assert (=> b!3183756 e!1983732))

(declare-fun res!1294177 () Bool)

(assert (=> b!3183756 (=> (not res!1294177) (not e!1983732))))

(assert (=> b!3183756 (= res!1294177 (isDefined!5473 lt!1070550))))

(assert (=> b!3183756 (= lt!1070550 (getRuleFromTag!857 thiss!18206 rules!2135 (tag!5640 (rule!7546 (h!41196 tokens!494)))))))

(declare-fun lt!1070549 () Unit!50180)

(assert (=> b!3183756 (= lt!1070549 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!857 thiss!18206 rules!2135 lt!1070557 (h!41196 tokens!494)))))

(declare-fun lt!1070563 () Unit!50180)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!778 (LexerInterface!4717 List!35901 List!35900 Token!9622) Unit!50180)

(assert (=> b!3183756 (= lt!1070563 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!778 thiss!18206 rules!2135 tokens!494 (h!41196 tokens!494)))))

(declare-fun getSuffix!1344 (List!35899 List!35899) List!35899)

(assert (=> b!3183756 (isEmpty!19903 (getSuffix!1344 lt!1070557 lt!1070557))))

(declare-fun lt!1070548 () Unit!50180)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!22 (List!35899) Unit!50180)

(assert (=> b!3183756 (= lt!1070548 (lemmaGetSuffixOnListWithItSelfIsEmpty!22 lt!1070557))))

(declare-fun res!1294172 () Bool)

(assert (=> start!298426 (=> (not res!1294172) (not e!1983750))))

(assert (=> start!298426 (= res!1294172 ((_ is Lexer!4715) thiss!18206))))

(assert (=> start!298426 e!1983750))

(assert (=> start!298426 true))

(assert (=> start!298426 e!1983745))

(assert (=> start!298426 (and (inv!48627 separatorToken!241) e!1983735)))

(assert (=> start!298426 e!1983746))

(declare-fun b!3183780 () Bool)

(declare-fun Unit!50183 () Unit!50180)

(assert (=> b!3183780 (= e!1983760 Unit!50183)))

(declare-fun b!3183781 () Bool)

(declare-fun res!1294183 () Bool)

(assert (=> b!3183781 (=> (not res!1294183) (not e!1983743))))

(assert (=> b!3183781 (= res!1294183 (isSeparator!5128 (rule!7546 separatorToken!241)))))

(declare-fun b!3183782 () Bool)

(declare-fun res!1294171 () Bool)

(assert (=> b!3183782 (=> res!1294171 e!1983757)))

(assert (=> b!3183782 (= res!1294171 (not (rulesProduceIndividualToken!2209 thiss!18206 rules!2135 (h!41196 tokens!494))))))

(declare-fun b!3183783 () Bool)

(assert (=> b!3183783 (= e!1983754 (= (rule!7546 (h!41196 tokens!494)) lt!1070556))))

(assert (=> b!3183784 (= e!1983748 (and tp!1007010 tp!1007017))))

(declare-fun b!3183785 () Bool)

(assert (=> b!3183785 (= e!1983741 e!1983738)))

(declare-fun res!1294181 () Bool)

(assert (=> b!3183785 (=> res!1294181 e!1983738)))

(declare-fun isDefined!5474 (Option!6988) Bool)

(assert (=> b!3183785 (= res!1294181 (not (isDefined!5474 lt!1070553)))))

(declare-fun maxPrefix!2395 (LexerInterface!4717 List!35901 List!35899) Option!6988)

(assert (=> b!3183785 (= lt!1070553 (maxPrefix!2395 thiss!18206 rules!2135 lt!1070557))))

(assert (=> b!3183786 (= e!1983739 (and tp!1007009 tp!1007012))))

(assert (= (and start!298426 res!1294172) b!3183775))

(assert (= (and b!3183775 res!1294189) b!3183766))

(assert (= (and b!3183766 res!1294187) b!3183774))

(assert (= (and b!3183774 res!1294178) b!3183770))

(assert (= (and b!3183770 res!1294191) b!3183781))

(assert (= (and b!3183781 res!1294183) b!3183777))

(assert (= (and b!3183777 res!1294192) b!3183761))

(assert (= (and b!3183761 res!1294182) b!3183776))

(assert (= (and b!3183776 res!1294186) b!3183779))

(assert (= (and b!3183779 (not res!1294179)) b!3183759))

(assert (= (and b!3183759 (not res!1294180)) b!3183782))

(assert (= (and b!3183782 (not res!1294171)) b!3183778))

(assert (= (and b!3183778 (not res!1294176)) b!3183749))

(assert (= (and b!3183749 (not res!1294193)) b!3183769))

(assert (= (and b!3183769 (not res!1294194)) b!3183756))

(assert (= (and b!3183756 res!1294177) b!3183757))

(assert (= (and b!3183757 res!1294188) b!3183783))

(assert (= (and b!3183756 res!1294190) b!3183767))

(assert (= (and b!3183767 res!1294170) b!3183750))

(assert (= (and b!3183756 c!534697) b!3183754))

(assert (= (and b!3183756 (not c!534697)) b!3183780))

(assert (= (and b!3183754 res!1294184) b!3183765))

(assert (= (and b!3183756 (not res!1294175)) b!3183764))

(assert (= (and b!3183764 (not res!1294195)) b!3183768))

(assert (= (and b!3183768 (not res!1294173)) b!3183785))

(assert (= (and b!3183785 (not res!1294181)) b!3183772))

(assert (= (and b!3183772 (not res!1294185)) b!3183762))

(assert (= (and b!3183762 (not res!1294174)) b!3183771))

(assert (= b!3183755 b!3183758))

(assert (= b!3183753 b!3183755))

(assert (= (and start!298426 ((_ is Cons!35777) rules!2135)) b!3183753))

(assert (= b!3183763 b!3183784))

(assert (= b!3183751 b!3183763))

(assert (= start!298426 b!3183751))

(assert (= b!3183760 b!3183786))

(assert (= b!3183773 b!3183760))

(assert (= b!3183752 b!3183773))

(assert (= (and start!298426 ((_ is Cons!35776) tokens!494)) b!3183752))

(declare-fun m!3440729 () Bool)

(assert (=> b!3183767 m!3440729))

(declare-fun m!3440731 () Bool)

(assert (=> b!3183767 m!3440731))

(declare-fun m!3440733 () Bool)

(assert (=> b!3183752 m!3440733))

(declare-fun m!3440735 () Bool)

(assert (=> b!3183777 m!3440735))

(declare-fun m!3440737 () Bool)

(assert (=> b!3183760 m!3440737))

(declare-fun m!3440739 () Bool)

(assert (=> b!3183760 m!3440739))

(declare-fun m!3440741 () Bool)

(assert (=> start!298426 m!3440741))

(declare-fun m!3440743 () Bool)

(assert (=> b!3183759 m!3440743))

(assert (=> b!3183759 m!3440743))

(declare-fun m!3440745 () Bool)

(assert (=> b!3183759 m!3440745))

(declare-fun m!3440747 () Bool)

(assert (=> b!3183772 m!3440747))

(declare-fun m!3440749 () Bool)

(assert (=> b!3183761 m!3440749))

(declare-fun m!3440751 () Bool)

(assert (=> b!3183778 m!3440751))

(declare-fun m!3440753 () Bool)

(assert (=> b!3183778 m!3440753))

(declare-fun m!3440755 () Bool)

(assert (=> b!3183778 m!3440755))

(declare-fun m!3440757 () Bool)

(assert (=> b!3183775 m!3440757))

(declare-fun m!3440759 () Bool)

(assert (=> b!3183755 m!3440759))

(declare-fun m!3440761 () Bool)

(assert (=> b!3183755 m!3440761))

(declare-fun m!3440763 () Bool)

(assert (=> b!3183779 m!3440763))

(declare-fun m!3440765 () Bool)

(assert (=> b!3183779 m!3440765))

(declare-fun m!3440767 () Bool)

(assert (=> b!3183779 m!3440767))

(declare-fun m!3440769 () Bool)

(assert (=> b!3183779 m!3440769))

(declare-fun m!3440771 () Bool)

(assert (=> b!3183779 m!3440771))

(declare-fun m!3440773 () Bool)

(assert (=> b!3183785 m!3440773))

(declare-fun m!3440775 () Bool)

(assert (=> b!3183785 m!3440775))

(declare-fun m!3440777 () Bool)

(assert (=> b!3183773 m!3440777))

(declare-fun m!3440779 () Bool)

(assert (=> b!3183757 m!3440779))

(declare-fun m!3440781 () Bool)

(assert (=> b!3183757 m!3440781))

(declare-fun m!3440783 () Bool)

(assert (=> b!3183766 m!3440783))

(declare-fun m!3440785 () Bool)

(assert (=> b!3183774 m!3440785))

(declare-fun m!3440787 () Bool)

(assert (=> b!3183774 m!3440787))

(declare-fun m!3440789 () Bool)

(assert (=> b!3183771 m!3440789))

(declare-fun m!3440791 () Bool)

(assert (=> b!3183771 m!3440791))

(declare-fun m!3440793 () Bool)

(assert (=> b!3183771 m!3440793))

(declare-fun m!3440795 () Bool)

(assert (=> b!3183768 m!3440795))

(declare-fun m!3440797 () Bool)

(assert (=> b!3183782 m!3440797))

(declare-fun m!3440799 () Bool)

(assert (=> b!3183763 m!3440799))

(declare-fun m!3440801 () Bool)

(assert (=> b!3183763 m!3440801))

(declare-fun m!3440803 () Bool)

(assert (=> b!3183756 m!3440803))

(declare-fun m!3440805 () Bool)

(assert (=> b!3183756 m!3440805))

(declare-fun m!3440807 () Bool)

(assert (=> b!3183756 m!3440807))

(declare-fun m!3440809 () Bool)

(assert (=> b!3183756 m!3440809))

(declare-fun m!3440811 () Bool)

(assert (=> b!3183756 m!3440811))

(declare-fun m!3440813 () Bool)

(assert (=> b!3183756 m!3440813))

(declare-fun m!3440815 () Bool)

(assert (=> b!3183756 m!3440815))

(declare-fun m!3440817 () Bool)

(assert (=> b!3183756 m!3440817))

(declare-fun m!3440819 () Bool)

(assert (=> b!3183756 m!3440819))

(declare-fun m!3440821 () Bool)

(assert (=> b!3183756 m!3440821))

(assert (=> b!3183756 m!3440807))

(declare-fun m!3440823 () Bool)

(assert (=> b!3183756 m!3440823))

(declare-fun m!3440825 () Bool)

(assert (=> b!3183756 m!3440825))

(declare-fun m!3440827 () Bool)

(assert (=> b!3183756 m!3440827))

(declare-fun m!3440829 () Bool)

(assert (=> b!3183756 m!3440829))

(declare-fun m!3440831 () Bool)

(assert (=> b!3183756 m!3440831))

(assert (=> b!3183756 m!3440827))

(declare-fun m!3440833 () Bool)

(assert (=> b!3183756 m!3440833))

(declare-fun m!3440835 () Bool)

(assert (=> b!3183756 m!3440835))

(declare-fun m!3440837 () Bool)

(assert (=> b!3183769 m!3440837))

(declare-fun m!3440839 () Bool)

(assert (=> b!3183769 m!3440839))

(declare-fun m!3440841 () Bool)

(assert (=> b!3183769 m!3440841))

(declare-fun m!3440843 () Bool)

(assert (=> b!3183769 m!3440843))

(assert (=> b!3183769 m!3440837))

(declare-fun m!3440845 () Bool)

(assert (=> b!3183769 m!3440845))

(declare-fun m!3440847 () Bool)

(assert (=> b!3183754 m!3440847))

(declare-fun m!3440849 () Bool)

(assert (=> b!3183754 m!3440849))

(declare-fun m!3440851 () Bool)

(assert (=> b!3183770 m!3440851))

(declare-fun m!3440853 () Bool)

(assert (=> b!3183762 m!3440853))

(declare-fun m!3440855 () Bool)

(assert (=> b!3183751 m!3440855))

(declare-fun m!3440857 () Bool)

(assert (=> b!3183749 m!3440857))

(declare-fun m!3440859 () Bool)

(assert (=> b!3183764 m!3440859))

(declare-fun m!3440861 () Bool)

(assert (=> b!3183764 m!3440861))

(assert (=> b!3183764 m!3440861))

(declare-fun m!3440863 () Bool)

(assert (=> b!3183764 m!3440863))

(declare-fun m!3440865 () Bool)

(assert (=> b!3183764 m!3440865))

(check-sat (not b_next!84719) (not b!3183762) (not b!3183766) b_and!210583 (not b_next!84717) (not b!3183749) (not b!3183752) b_and!210585 (not b!3183779) (not start!298426) (not b!3183751) b_and!210587 (not b!3183761) (not b!3183770) (not b!3183754) (not b!3183767) (not b!3183753) (not b_next!84723) (not b!3183755) (not b!3183768) b_and!210581 (not b!3183775) b_and!210579 (not b!3183778) (not b!3183774) (not b_next!84721) (not b!3183772) (not b!3183763) (not b!3183756) (not b!3183777) (not b!3183760) (not b!3183769) (not b!3183785) b_and!210589 (not b!3183759) (not b_next!84713) (not b!3183782) (not b!3183764) (not b_next!84715) (not b!3183771) (not b!3183757) (not b!3183773))
(check-sat b_and!210585 b_and!210587 (not b_next!84723) (not b_next!84719) b_and!210581 b_and!210579 (not b_next!84721) b_and!210583 (not b_next!84717) (not b_next!84715) b_and!210589 (not b_next!84713))
