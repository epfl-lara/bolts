; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218984 () Bool)

(assert start!218984)

(declare-fun b!2246168 () Bool)

(declare-fun b_free!65581 () Bool)

(declare-fun b_next!66285 () Bool)

(assert (=> b!2246168 (= b_free!65581 (not b_next!66285))))

(declare-fun tp!709222 () Bool)

(declare-fun b_and!175721 () Bool)

(assert (=> b!2246168 (= tp!709222 b_and!175721)))

(declare-fun b_free!65583 () Bool)

(declare-fun b_next!66287 () Bool)

(assert (=> b!2246168 (= b_free!65583 (not b_next!66287))))

(declare-fun tp!709221 () Bool)

(declare-fun b_and!175723 () Bool)

(assert (=> b!2246168 (= tp!709221 b_and!175723)))

(declare-fun b!2246170 () Bool)

(declare-fun b_free!65585 () Bool)

(declare-fun b_next!66289 () Bool)

(assert (=> b!2246170 (= b_free!65585 (not b_next!66289))))

(declare-fun tp!709228 () Bool)

(declare-fun b_and!175725 () Bool)

(assert (=> b!2246170 (= tp!709228 b_and!175725)))

(declare-fun b_free!65587 () Bool)

(declare-fun b_next!66291 () Bool)

(assert (=> b!2246170 (= b_free!65587 (not b_next!66291))))

(declare-fun tp!709227 () Bool)

(declare-fun b_and!175727 () Bool)

(assert (=> b!2246170 (= tp!709227 b_and!175727)))

(declare-fun b!2246191 () Bool)

(declare-fun b_free!65589 () Bool)

(declare-fun b_next!66293 () Bool)

(assert (=> b!2246191 (= b_free!65589 (not b_next!66293))))

(declare-fun tp!709212 () Bool)

(declare-fun b_and!175729 () Bool)

(assert (=> b!2246191 (= tp!709212 b_and!175729)))

(declare-fun b_free!65591 () Bool)

(declare-fun b_next!66295 () Bool)

(assert (=> b!2246191 (= b_free!65591 (not b_next!66295))))

(declare-fun tp!709213 () Bool)

(declare-fun b_and!175731 () Bool)

(assert (=> b!2246191 (= tp!709213 b_and!175731)))

(declare-fun b!2246171 () Bool)

(declare-fun b_free!65593 () Bool)

(declare-fun b_next!66297 () Bool)

(assert (=> b!2246171 (= b_free!65593 (not b_next!66297))))

(declare-fun tp!709229 () Bool)

(declare-fun b_and!175733 () Bool)

(assert (=> b!2246171 (= tp!709229 b_and!175733)))

(declare-fun b_free!65595 () Bool)

(declare-fun b_next!66299 () Bool)

(assert (=> b!2246171 (= b_free!65595 (not b_next!66299))))

(declare-fun tp!709220 () Bool)

(declare-fun b_and!175735 () Bool)

(assert (=> b!2246171 (= tp!709220 b_and!175735)))

(declare-fun b!2246162 () Bool)

(declare-fun res!959783 () Bool)

(declare-fun e!1437166 () Bool)

(assert (=> b!2246162 (=> (not res!959783) (not e!1437166))))

(declare-datatypes ((List!26685 0))(
  ( (Nil!26591) (Cons!26591 (h!31992 (_ BitVec 16)) (t!200383 List!26685)) )
))
(declare-datatypes ((TokenValue!4373 0))(
  ( (FloatLiteralValue!8746 (text!31056 List!26685)) (TokenValueExt!4372 (__x!17806 Int)) (Broken!21865 (value!133807 List!26685)) (Object!4466) (End!4373) (Def!4373) (Underscore!4373) (Match!4373) (Else!4373) (Error!4373) (Case!4373) (If!4373) (Extends!4373) (Abstract!4373) (Class!4373) (Val!4373) (DelimiterValue!8746 (del!4433 List!26685)) (KeywordValue!4379 (value!133808 List!26685)) (CommentValue!8746 (value!133809 List!26685)) (WhitespaceValue!8746 (value!133810 List!26685)) (IndentationValue!4373 (value!133811 List!26685)) (String!28968) (Int32!4373) (Broken!21866 (value!133812 List!26685)) (Boolean!4374) (Unit!39549) (OperatorValue!4376 (op!4433 List!26685)) (IdentifierValue!8746 (value!133813 List!26685)) (IdentifierValue!8747 (value!133814 List!26685)) (WhitespaceValue!8747 (value!133815 List!26685)) (True!8746) (False!8746) (Broken!21867 (value!133816 List!26685)) (Broken!21868 (value!133817 List!26685)) (True!8747) (RightBrace!4373) (RightBracket!4373) (Colon!4373) (Null!4373) (Comma!4373) (LeftBracket!4373) (False!8747) (LeftBrace!4373) (ImaginaryLiteralValue!4373 (text!31057 List!26685)) (StringLiteralValue!13119 (value!133818 List!26685)) (EOFValue!4373 (value!133819 List!26685)) (IdentValue!4373 (value!133820 List!26685)) (DelimiterValue!8747 (value!133821 List!26685)) (DedentValue!4373 (value!133822 List!26685)) (NewLineValue!4373 (value!133823 List!26685)) (IntegerValue!13119 (value!133824 (_ BitVec 32)) (text!31058 List!26685)) (IntegerValue!13120 (value!133825 Int) (text!31059 List!26685)) (Times!4373) (Or!4373) (Equal!4373) (Minus!4373) (Broken!21869 (value!133826 List!26685)) (And!4373) (Div!4373) (LessEqual!4373) (Mod!4373) (Concat!10932) (Not!4373) (Plus!4373) (SpaceValue!4373 (value!133827 List!26685)) (IntegerValue!13121 (value!133828 Int) (text!31060 List!26685)) (StringLiteralValue!13120 (text!31061 List!26685)) (FloatLiteralValue!8747 (text!31062 List!26685)) (BytesLiteralValue!4373 (value!133829 List!26685)) (CommentValue!8747 (value!133830 List!26685)) (StringLiteralValue!13121 (value!133831 List!26685)) (ErrorTokenValue!4373 (msg!4434 List!26685)) )
))
(declare-datatypes ((C!13264 0))(
  ( (C!13265 (val!7680 Int)) )
))
(declare-datatypes ((List!26686 0))(
  ( (Nil!26592) (Cons!26592 (h!31993 C!13264) (t!200384 List!26686)) )
))
(declare-datatypes ((IArray!17145 0))(
  ( (IArray!17146 (innerList!8630 List!26686)) )
))
(declare-datatypes ((Conc!8570 0))(
  ( (Node!8570 (left!20208 Conc!8570) (right!20538 Conc!8570) (csize!17370 Int) (cheight!8781 Int)) (Leaf!12661 (xs!11512 IArray!17145) (csize!17371 Int)) (Empty!8570) )
))
(declare-datatypes ((BalanceConc!16868 0))(
  ( (BalanceConc!16869 (c!357350 Conc!8570)) )
))
(declare-datatypes ((String!28969 0))(
  ( (String!28970 (value!133832 String)) )
))
(declare-datatypes ((Regex!6559 0))(
  ( (ElementMatch!6559 (c!357351 C!13264)) (Concat!10933 (regOne!13630 Regex!6559) (regTwo!13630 Regex!6559)) (EmptyExpr!6559) (Star!6559 (reg!6888 Regex!6559)) (EmptyLang!6559) (Union!6559 (regOne!13631 Regex!6559) (regTwo!13631 Regex!6559)) )
))
(declare-datatypes ((TokenValueInjection!8286 0))(
  ( (TokenValueInjection!8287 (toValue!5941 Int) (toChars!5800 Int)) )
))
(declare-datatypes ((Rule!8222 0))(
  ( (Rule!8223 (regex!4211 Regex!6559) (tag!4701 String!28969) (isSeparator!4211 Bool) (transformation!4211 TokenValueInjection!8286)) )
))
(declare-datatypes ((List!26687 0))(
  ( (Nil!26593) (Cons!26593 (h!31994 Rule!8222) (t!200385 List!26687)) )
))
(declare-fun rules!1750 () List!26687)

(declare-fun r!2363 () Rule!8222)

(declare-fun contains!4558 (List!26687 Rule!8222) Bool)

(assert (=> b!2246162 (= res!959783 (contains!4558 rules!1750 r!2363))))

(declare-fun b!2246163 () Bool)

(declare-fun e!1437164 () Bool)

(declare-fun e!1437148 () Bool)

(declare-fun tp!709215 () Bool)

(assert (=> b!2246163 (= e!1437164 (and e!1437148 tp!709215))))

(declare-fun e!1437151 () Bool)

(declare-fun otherR!12 () Rule!8222)

(declare-fun b!2246164 () Bool)

(declare-fun tp!709216 () Bool)

(declare-fun e!1437159 () Bool)

(declare-fun inv!36114 (String!28969) Bool)

(declare-fun inv!36117 (TokenValueInjection!8286) Bool)

(assert (=> b!2246164 (= e!1437151 (and tp!709216 (inv!36114 (tag!4701 otherR!12)) (inv!36117 (transformation!4211 otherR!12)) e!1437159))))

(declare-fun b!2246165 () Bool)

(declare-fun res!959786 () Bool)

(assert (=> b!2246165 (=> (not res!959786) (not e!1437166))))

(assert (=> b!2246165 (= res!959786 (contains!4558 rules!1750 otherR!12))))

(declare-fun b!2246166 () Bool)

(declare-fun res!959776 () Bool)

(assert (=> b!2246166 (=> (not res!959776) (not e!1437166))))

(declare-datatypes ((LexerInterface!3808 0))(
  ( (LexerInterfaceExt!3805 (__x!17807 Int)) (Lexer!3806) )
))
(declare-fun thiss!16613 () LexerInterface!3808)

(declare-fun rulesInvariant!3310 (LexerInterface!3808 List!26687) Bool)

(assert (=> b!2246166 (= res!959776 (rulesInvariant!3310 thiss!16613 rules!1750))))

(declare-fun b!2246167 () Bool)

(declare-fun e!1437161 () Bool)

(declare-datatypes ((Token!7900 0))(
  ( (Token!7901 (value!133833 TokenValue!4373) (rule!6509 Rule!8222) (size!20791 Int) (originalCharacters!4981 List!26686)) )
))
(declare-datatypes ((List!26688 0))(
  ( (Nil!26594) (Cons!26594 (h!31995 Token!7900) (t!200386 List!26688)) )
))
(declare-fun tokens!456 () List!26688)

(declare-fun otherP!12 () List!26686)

(declare-fun size!20792 (BalanceConc!16868) Int)

(declare-fun charsOf!2599 (Token!7900) BalanceConc!16868)

(declare-fun head!4770 (List!26688) Token!7900)

(declare-fun size!20793 (List!26686) Int)

(assert (=> b!2246167 (= e!1437161 (<= (size!20792 (charsOf!2599 (head!4770 tokens!456))) (size!20793 otherP!12)))))

(declare-fun e!1437152 () Bool)

(assert (=> b!2246168 (= e!1437152 (and tp!709222 tp!709221))))

(declare-fun b!2246169 () Bool)

(declare-fun res!959780 () Bool)

(assert (=> b!2246169 (=> (not res!959780) (not e!1437166))))

(declare-fun isEmpty!14976 (List!26687) Bool)

(assert (=> b!2246169 (= res!959780 (not (isEmpty!14976 rules!1750)))))

(assert (=> b!2246170 (= e!1437159 (and tp!709228 tp!709227))))

(declare-fun e!1437157 () Bool)

(assert (=> b!2246171 (= e!1437157 (and tp!709229 tp!709220))))

(declare-fun b!2246172 () Bool)

(declare-fun e!1437156 () Bool)

(declare-fun e!1437158 () Bool)

(assert (=> b!2246172 (= e!1437156 (not e!1437158))))

(declare-fun res!959787 () Bool)

(assert (=> b!2246172 (=> res!959787 e!1437158)))

(declare-fun e!1437147 () Bool)

(assert (=> b!2246172 (= res!959787 e!1437147)))

(declare-fun res!959779 () Bool)

(assert (=> b!2246172 (=> (not res!959779) (not e!1437147))))

(declare-fun lt!835429 () Bool)

(assert (=> b!2246172 (= res!959779 (not lt!835429))))

(declare-fun ruleValid!1303 (LexerInterface!3808 Rule!8222) Bool)

(assert (=> b!2246172 (ruleValid!1303 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39550 0))(
  ( (Unit!39551) )
))
(declare-fun lt!835428 () Unit!39550)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!710 (LexerInterface!3808 Rule!8222 List!26687) Unit!39550)

(assert (=> b!2246172 (= lt!835428 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!710 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2246173 () Bool)

(declare-fun tp!709214 () Bool)

(declare-fun e!1437150 () Bool)

(assert (=> b!2246173 (= e!1437150 (and tp!709214 (inv!36114 (tag!4701 (rule!6509 (h!31995 tokens!456)))) (inv!36117 (transformation!4211 (rule!6509 (h!31995 tokens!456)))) e!1437157))))

(declare-fun tp!709218 () Bool)

(declare-fun b!2246174 () Bool)

(declare-fun e!1437171 () Bool)

(declare-fun inv!21 (TokenValue!4373) Bool)

(assert (=> b!2246174 (= e!1437171 (and (inv!21 (value!133833 (h!31995 tokens!456))) e!1437150 tp!709218))))

(declare-fun b!2246175 () Bool)

(declare-fun tp!709219 () Bool)

(declare-fun e!1437173 () Bool)

(assert (=> b!2246175 (= e!1437148 (and tp!709219 (inv!36114 (tag!4701 (h!31994 rules!1750))) (inv!36117 (transformation!4211 (h!31994 rules!1750))) e!1437173))))

(declare-fun e!1437149 () Bool)

(declare-fun tp!709226 () Bool)

(declare-fun b!2246176 () Bool)

(declare-fun inv!36118 (Token!7900) Bool)

(assert (=> b!2246176 (= e!1437149 (and (inv!36118 (h!31995 tokens!456)) e!1437171 tp!709226))))

(declare-fun b!2246177 () Bool)

(declare-fun res!959774 () Bool)

(assert (=> b!2246177 (=> (not res!959774) (not e!1437156))))

(assert (=> b!2246177 (= res!959774 (not (= r!2363 otherR!12)))))

(declare-fun b!2246178 () Bool)

(declare-fun e!1437154 () Bool)

(assert (=> b!2246178 (= e!1437158 e!1437154)))

(declare-fun res!959773 () Bool)

(assert (=> b!2246178 (=> res!959773 e!1437154)))

(declare-fun lt!835422 () Int)

(declare-fun lt!835425 () Int)

(get-info :version)

(assert (=> b!2246178 (= res!959773 (or (<= lt!835425 lt!835422) (not ((_ is Nil!26594) tokens!456))))))

(declare-fun getIndex!232 (List!26687 Rule!8222) Int)

(assert (=> b!2246178 (= lt!835422 (getIndex!232 rules!1750 otherR!12))))

(assert (=> b!2246178 (= lt!835425 (getIndex!232 rules!1750 r!2363))))

(assert (=> b!2246178 (ruleValid!1303 thiss!16613 otherR!12)))

(declare-fun lt!835423 () Unit!39550)

(assert (=> b!2246178 (= lt!835423 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!710 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2246179 () Bool)

(declare-fun e!1437172 () Bool)

(assert (=> b!2246179 (= e!1437154 e!1437172)))

(declare-fun res!959784 () Bool)

(assert (=> b!2246179 (=> res!959784 e!1437172)))

(declare-datatypes ((tuple2!26062 0))(
  ( (tuple2!26063 (_1!15541 Token!7900) (_2!15541 List!26686)) )
))
(declare-datatypes ((Option!5186 0))(
  ( (None!5185) (Some!5185 (v!30197 tuple2!26062)) )
))
(declare-fun lt!835427 () Option!5186)

(assert (=> b!2246179 (= res!959784 (not (= lt!835427 None!5185)))))

(declare-fun isEmpty!14977 (Option!5186) Bool)

(assert (=> b!2246179 (isEmpty!14977 lt!835427)))

(declare-fun input!1722 () List!26686)

(declare-fun maxPrefixOneRule!1304 (LexerInterface!3808 Rule!8222 List!26686) Option!5186)

(assert (=> b!2246179 (= lt!835427 (maxPrefixOneRule!1304 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!835424 () Unit!39550)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!395 (LexerInterface!3808 Rule!8222 List!26687 List!26686) Unit!39550)

(assert (=> b!2246179 (= lt!835424 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!395 thiss!16613 otherR!12 rules!1750 input!1722))))

(declare-fun b!2246180 () Bool)

(declare-fun res!959777 () Bool)

(assert (=> b!2246180 (=> (not res!959777) (not e!1437156))))

(declare-fun e!1437155 () Bool)

(assert (=> b!2246180 (= res!959777 e!1437155)))

(declare-fun res!959782 () Bool)

(assert (=> b!2246180 (=> res!959782 e!1437155)))

(assert (=> b!2246180 (= res!959782 lt!835429)))

(declare-fun b!2246181 () Bool)

(declare-fun e!1437160 () Bool)

(assert (=> b!2246181 (= e!1437172 e!1437160)))

(declare-fun res!959785 () Bool)

(assert (=> b!2246181 (=> res!959785 e!1437160)))

(assert (=> b!2246181 (= res!959785 (>= lt!835422 lt!835425))))

(declare-fun matchR!2820 (Regex!6559 List!26686) Bool)

(assert (=> b!2246181 (not (matchR!2820 (regex!4211 otherR!12) otherP!12))))

(declare-fun lt!835426 () Unit!39550)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!389 (LexerInterface!3808 Rule!8222 List!26686 List!26686) Unit!39550)

(assert (=> b!2246181 (= lt!835426 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!389 thiss!16613 otherR!12 otherP!12 input!1722))))

(declare-fun b!2246182 () Bool)

(declare-fun e!1437162 () Bool)

(assert (=> b!2246182 (= e!1437162 e!1437156)))

(declare-fun res!959778 () Bool)

(assert (=> b!2246182 (=> (not res!959778) (not e!1437156))))

(assert (=> b!2246182 (= res!959778 e!1437161)))

(declare-fun res!959775 () Bool)

(assert (=> b!2246182 (=> res!959775 e!1437161)))

(assert (=> b!2246182 (= res!959775 lt!835429)))

(declare-fun isEmpty!14978 (List!26688) Bool)

(assert (=> b!2246182 (= lt!835429 (isEmpty!14978 tokens!456))))

(declare-fun b!2246183 () Bool)

(declare-fun e!1437169 () Bool)

(declare-fun tp_is_empty!10339 () Bool)

(declare-fun tp!709217 () Bool)

(assert (=> b!2246183 (= e!1437169 (and tp_is_empty!10339 tp!709217))))

(declare-fun tp!709225 () Bool)

(declare-fun b!2246184 () Bool)

(declare-fun e!1437165 () Bool)

(assert (=> b!2246184 (= e!1437165 (and tp!709225 (inv!36114 (tag!4701 r!2363)) (inv!36117 (transformation!4211 r!2363)) e!1437152))))

(declare-fun b!2246185 () Bool)

(declare-fun e!1437153 () Bool)

(declare-fun tp!709223 () Bool)

(assert (=> b!2246185 (= e!1437153 (and tp_is_empty!10339 tp!709223))))

(declare-fun b!2246186 () Bool)

(declare-fun list!10178 (BalanceConc!16868) List!26686)

(assert (=> b!2246186 (= e!1437147 (not (matchR!2820 (regex!4211 r!2363) (list!10178 (charsOf!2599 (head!4770 tokens!456))))))))

(declare-fun res!959772 () Bool)

(assert (=> start!218984 (=> (not res!959772) (not e!1437166))))

(assert (=> start!218984 (= res!959772 ((_ is Lexer!3806) thiss!16613))))

(assert (=> start!218984 e!1437166))

(assert (=> start!218984 true))

(assert (=> start!218984 e!1437169))

(assert (=> start!218984 e!1437151))

(declare-fun e!1437146 () Bool)

(assert (=> start!218984 e!1437146))

(assert (=> start!218984 e!1437153))

(assert (=> start!218984 e!1437164))

(assert (=> start!218984 e!1437165))

(assert (=> start!218984 e!1437149))

(declare-fun b!2246187 () Bool)

(assert (=> b!2246187 (= e!1437166 e!1437162)))

(declare-fun res!959771 () Bool)

(assert (=> b!2246187 (=> (not res!959771) (not e!1437162))))

(declare-datatypes ((IArray!17147 0))(
  ( (IArray!17148 (innerList!8631 List!26688)) )
))
(declare-datatypes ((Conc!8571 0))(
  ( (Node!8571 (left!20209 Conc!8571) (right!20539 Conc!8571) (csize!17372 Int) (cheight!8782 Int)) (Leaf!12662 (xs!11513 IArray!17147) (csize!17373 Int)) (Empty!8571) )
))
(declare-datatypes ((BalanceConc!16870 0))(
  ( (BalanceConc!16871 (c!357352 Conc!8571)) )
))
(declare-datatypes ((tuple2!26064 0))(
  ( (tuple2!26065 (_1!15542 BalanceConc!16870) (_2!15542 BalanceConc!16868)) )
))
(declare-fun lt!835430 () tuple2!26064)

(declare-fun suffix!886 () List!26686)

(declare-datatypes ((tuple2!26066 0))(
  ( (tuple2!26067 (_1!15543 List!26688) (_2!15543 List!26686)) )
))
(declare-fun list!10179 (BalanceConc!16870) List!26688)

(assert (=> b!2246187 (= res!959771 (= (tuple2!26067 (list!10179 (_1!15542 lt!835430)) (list!10178 (_2!15542 lt!835430))) (tuple2!26067 tokens!456 suffix!886)))))

(declare-fun lex!1647 (LexerInterface!3808 List!26687 BalanceConc!16868) tuple2!26064)

(declare-fun seqFromList!2915 (List!26686) BalanceConc!16868)

(assert (=> b!2246187 (= lt!835430 (lex!1647 thiss!16613 rules!1750 (seqFromList!2915 input!1722)))))

(declare-fun b!2246188 () Bool)

(assert (=> b!2246188 (= e!1437155 (= (rule!6509 (head!4770 tokens!456)) r!2363))))

(declare-fun b!2246189 () Bool)

(declare-fun validRegex!2450 (Regex!6559) Bool)

(assert (=> b!2246189 (= e!1437160 (validRegex!2450 (regex!4211 otherR!12)))))

(declare-fun b!2246190 () Bool)

(declare-fun tp!709224 () Bool)

(assert (=> b!2246190 (= e!1437146 (and tp_is_empty!10339 tp!709224))))

(assert (=> b!2246191 (= e!1437173 (and tp!709212 tp!709213))))

(declare-fun b!2246192 () Bool)

(declare-fun res!959781 () Bool)

(assert (=> b!2246192 (=> (not res!959781) (not e!1437156))))

(declare-fun isPrefix!2201 (List!26686 List!26686) Bool)

(assert (=> b!2246192 (= res!959781 (isPrefix!2201 otherP!12 input!1722))))

(assert (= (and start!218984 res!959772) b!2246169))

(assert (= (and b!2246169 res!959780) b!2246166))

(assert (= (and b!2246166 res!959776) b!2246162))

(assert (= (and b!2246162 res!959783) b!2246165))

(assert (= (and b!2246165 res!959786) b!2246187))

(assert (= (and b!2246187 res!959771) b!2246182))

(assert (= (and b!2246182 (not res!959775)) b!2246167))

(assert (= (and b!2246182 res!959778) b!2246180))

(assert (= (and b!2246180 (not res!959782)) b!2246188))

(assert (= (and b!2246180 res!959777) b!2246192))

(assert (= (and b!2246192 res!959781) b!2246177))

(assert (= (and b!2246177 res!959774) b!2246172))

(assert (= (and b!2246172 res!959779) b!2246186))

(assert (= (and b!2246172 (not res!959787)) b!2246178))

(assert (= (and b!2246178 (not res!959773)) b!2246179))

(assert (= (and b!2246179 (not res!959784)) b!2246181))

(assert (= (and b!2246181 (not res!959785)) b!2246189))

(assert (= (and start!218984 ((_ is Cons!26592) input!1722)) b!2246183))

(assert (= b!2246164 b!2246170))

(assert (= start!218984 b!2246164))

(assert (= (and start!218984 ((_ is Cons!26592) suffix!886)) b!2246190))

(assert (= (and start!218984 ((_ is Cons!26592) otherP!12)) b!2246185))

(assert (= b!2246175 b!2246191))

(assert (= b!2246163 b!2246175))

(assert (= (and start!218984 ((_ is Cons!26593) rules!1750)) b!2246163))

(assert (= b!2246184 b!2246168))

(assert (= start!218984 b!2246184))

(assert (= b!2246173 b!2246171))

(assert (= b!2246174 b!2246173))

(assert (= b!2246176 b!2246174))

(assert (= (and start!218984 ((_ is Cons!26594) tokens!456)) b!2246176))

(declare-fun m!2677635 () Bool)

(assert (=> b!2246167 m!2677635))

(assert (=> b!2246167 m!2677635))

(declare-fun m!2677637 () Bool)

(assert (=> b!2246167 m!2677637))

(assert (=> b!2246167 m!2677637))

(declare-fun m!2677639 () Bool)

(assert (=> b!2246167 m!2677639))

(declare-fun m!2677641 () Bool)

(assert (=> b!2246167 m!2677641))

(declare-fun m!2677643 () Bool)

(assert (=> b!2246164 m!2677643))

(declare-fun m!2677645 () Bool)

(assert (=> b!2246164 m!2677645))

(declare-fun m!2677647 () Bool)

(assert (=> b!2246172 m!2677647))

(declare-fun m!2677649 () Bool)

(assert (=> b!2246172 m!2677649))

(declare-fun m!2677651 () Bool)

(assert (=> b!2246166 m!2677651))

(declare-fun m!2677653 () Bool)

(assert (=> b!2246174 m!2677653))

(declare-fun m!2677655 () Bool)

(assert (=> b!2246184 m!2677655))

(declare-fun m!2677657 () Bool)

(assert (=> b!2246184 m!2677657))

(declare-fun m!2677659 () Bool)

(assert (=> b!2246189 m!2677659))

(declare-fun m!2677661 () Bool)

(assert (=> b!2246179 m!2677661))

(declare-fun m!2677663 () Bool)

(assert (=> b!2246179 m!2677663))

(declare-fun m!2677665 () Bool)

(assert (=> b!2246179 m!2677665))

(declare-fun m!2677667 () Bool)

(assert (=> b!2246173 m!2677667))

(declare-fun m!2677669 () Bool)

(assert (=> b!2246173 m!2677669))

(declare-fun m!2677671 () Bool)

(assert (=> b!2246192 m!2677671))

(declare-fun m!2677673 () Bool)

(assert (=> b!2246178 m!2677673))

(declare-fun m!2677675 () Bool)

(assert (=> b!2246178 m!2677675))

(declare-fun m!2677677 () Bool)

(assert (=> b!2246178 m!2677677))

(declare-fun m!2677679 () Bool)

(assert (=> b!2246178 m!2677679))

(declare-fun m!2677681 () Bool)

(assert (=> b!2246165 m!2677681))

(declare-fun m!2677683 () Bool)

(assert (=> b!2246175 m!2677683))

(declare-fun m!2677685 () Bool)

(assert (=> b!2246175 m!2677685))

(declare-fun m!2677687 () Bool)

(assert (=> b!2246187 m!2677687))

(declare-fun m!2677689 () Bool)

(assert (=> b!2246187 m!2677689))

(declare-fun m!2677691 () Bool)

(assert (=> b!2246187 m!2677691))

(assert (=> b!2246187 m!2677691))

(declare-fun m!2677693 () Bool)

(assert (=> b!2246187 m!2677693))

(assert (=> b!2246186 m!2677635))

(assert (=> b!2246186 m!2677635))

(assert (=> b!2246186 m!2677637))

(assert (=> b!2246186 m!2677637))

(declare-fun m!2677695 () Bool)

(assert (=> b!2246186 m!2677695))

(assert (=> b!2246186 m!2677695))

(declare-fun m!2677697 () Bool)

(assert (=> b!2246186 m!2677697))

(declare-fun m!2677699 () Bool)

(assert (=> b!2246162 m!2677699))

(declare-fun m!2677701 () Bool)

(assert (=> b!2246169 m!2677701))

(declare-fun m!2677703 () Bool)

(assert (=> b!2246181 m!2677703))

(declare-fun m!2677705 () Bool)

(assert (=> b!2246181 m!2677705))

(declare-fun m!2677707 () Bool)

(assert (=> b!2246176 m!2677707))

(declare-fun m!2677709 () Bool)

(assert (=> b!2246182 m!2677709))

(assert (=> b!2246188 m!2677635))

(check-sat (not b_next!66295) b_and!175727 (not b!2246169) (not b_next!66289) (not b!2246175) (not b!2246189) (not b!2246186) (not b!2246190) (not b!2246172) (not b!2246178) (not b_next!66285) (not b!2246165) b_and!175723 (not b!2246181) (not b_next!66293) (not b!2246188) (not b!2246179) (not b_next!66287) (not b!2246183) b_and!175729 (not b_next!66299) (not b!2246173) (not b!2246162) b_and!175735 (not b!2246185) b_and!175731 b_and!175721 (not b!2246166) (not b_next!66291) tp_is_empty!10339 (not b!2246174) (not b!2246192) (not b!2246167) (not b!2246163) b_and!175725 (not b_next!66297) (not b!2246187) (not b!2246182) (not b!2246184) (not b!2246176) (not b!2246164) b_and!175733)
(check-sat (not b_next!66295) b_and!175727 (not b_next!66285) b_and!175723 (not b_next!66293) (not b_next!66299) b_and!175735 b_and!175731 b_and!175721 (not b_next!66289) (not b_next!66291) b_and!175725 (not b_next!66297) b_and!175733 (not b_next!66287) b_and!175729)
(get-model)

(declare-fun d!666611 () Bool)

(declare-fun list!10182 (Conc!8571) List!26688)

(assert (=> d!666611 (= (list!10179 (_1!15542 lt!835430)) (list!10182 (c!357352 (_1!15542 lt!835430))))))

(declare-fun bs!454806 () Bool)

(assert (= bs!454806 d!666611))

(declare-fun m!2677711 () Bool)

(assert (=> bs!454806 m!2677711))

(assert (=> b!2246187 d!666611))

(declare-fun d!666613 () Bool)

(declare-fun list!10183 (Conc!8570) List!26686)

(assert (=> d!666613 (= (list!10178 (_2!15542 lt!835430)) (list!10183 (c!357350 (_2!15542 lt!835430))))))

(declare-fun bs!454807 () Bool)

(assert (= bs!454807 d!666613))

(declare-fun m!2677713 () Bool)

(assert (=> bs!454807 m!2677713))

(assert (=> b!2246187 d!666613))

(declare-fun b!2246253 () Bool)

(declare-fun lt!835439 () tuple2!26064)

(declare-fun e!1437215 () Bool)

(declare-fun lexList!1044 (LexerInterface!3808 List!26687 List!26686) tuple2!26066)

(assert (=> b!2246253 (= e!1437215 (= (list!10178 (_2!15542 lt!835439)) (_2!15543 (lexList!1044 thiss!16613 rules!1750 (list!10178 (seqFromList!2915 input!1722))))))))

(declare-fun b!2246254 () Bool)

(declare-fun e!1437213 () Bool)

(declare-fun isEmpty!14981 (BalanceConc!16870) Bool)

(assert (=> b!2246254 (= e!1437213 (not (isEmpty!14981 (_1!15542 lt!835439))))))

(declare-fun b!2246255 () Bool)

(declare-fun e!1437214 () Bool)

(assert (=> b!2246255 (= e!1437214 e!1437213)))

(declare-fun res!959829 () Bool)

(assert (=> b!2246255 (= res!959829 (< (size!20792 (_2!15542 lt!835439)) (size!20792 (seqFromList!2915 input!1722))))))

(assert (=> b!2246255 (=> (not res!959829) (not e!1437213))))

(declare-fun d!666615 () Bool)

(assert (=> d!666615 e!1437215))

(declare-fun res!959830 () Bool)

(assert (=> d!666615 (=> (not res!959830) (not e!1437215))))

(assert (=> d!666615 (= res!959830 e!1437214)))

(declare-fun c!357364 () Bool)

(declare-fun size!20795 (BalanceConc!16870) Int)

(assert (=> d!666615 (= c!357364 (> (size!20795 (_1!15542 lt!835439)) 0))))

(declare-fun lexTailRecV2!719 (LexerInterface!3808 List!26687 BalanceConc!16868 BalanceConc!16868 BalanceConc!16868 BalanceConc!16870) tuple2!26064)

(assert (=> d!666615 (= lt!835439 (lexTailRecV2!719 thiss!16613 rules!1750 (seqFromList!2915 input!1722) (BalanceConc!16869 Empty!8570) (seqFromList!2915 input!1722) (BalanceConc!16871 Empty!8571)))))

(assert (=> d!666615 (= (lex!1647 thiss!16613 rules!1750 (seqFromList!2915 input!1722)) lt!835439)))

(declare-fun b!2246256 () Bool)

(declare-fun res!959831 () Bool)

(assert (=> b!2246256 (=> (not res!959831) (not e!1437215))))

(assert (=> b!2246256 (= res!959831 (= (list!10179 (_1!15542 lt!835439)) (_1!15543 (lexList!1044 thiss!16613 rules!1750 (list!10178 (seqFromList!2915 input!1722))))))))

(declare-fun b!2246257 () Bool)

(assert (=> b!2246257 (= e!1437214 (= (_2!15542 lt!835439) (seqFromList!2915 input!1722)))))

(assert (= (and d!666615 c!357364) b!2246255))

(assert (= (and d!666615 (not c!357364)) b!2246257))

(assert (= (and b!2246255 res!959829) b!2246254))

(assert (= (and d!666615 res!959830) b!2246256))

(assert (= (and b!2246256 res!959831) b!2246253))

(declare-fun m!2677767 () Bool)

(assert (=> b!2246253 m!2677767))

(assert (=> b!2246253 m!2677691))

(declare-fun m!2677769 () Bool)

(assert (=> b!2246253 m!2677769))

(assert (=> b!2246253 m!2677769))

(declare-fun m!2677771 () Bool)

(assert (=> b!2246253 m!2677771))

(declare-fun m!2677773 () Bool)

(assert (=> b!2246254 m!2677773))

(declare-fun m!2677775 () Bool)

(assert (=> b!2246256 m!2677775))

(assert (=> b!2246256 m!2677691))

(assert (=> b!2246256 m!2677769))

(assert (=> b!2246256 m!2677769))

(assert (=> b!2246256 m!2677771))

(declare-fun m!2677777 () Bool)

(assert (=> d!666615 m!2677777))

(assert (=> d!666615 m!2677691))

(assert (=> d!666615 m!2677691))

(declare-fun m!2677779 () Bool)

(assert (=> d!666615 m!2677779))

(declare-fun m!2677781 () Bool)

(assert (=> b!2246255 m!2677781))

(assert (=> b!2246255 m!2677691))

(declare-fun m!2677783 () Bool)

(assert (=> b!2246255 m!2677783))

(assert (=> b!2246187 d!666615))

(declare-fun d!666643 () Bool)

(declare-fun fromListB!1310 (List!26686) BalanceConc!16868)

(assert (=> d!666643 (= (seqFromList!2915 input!1722) (fromListB!1310 input!1722))))

(declare-fun bs!454811 () Bool)

(assert (= bs!454811 d!666643))

(declare-fun m!2677785 () Bool)

(assert (=> bs!454811 m!2677785))

(assert (=> b!2246187 d!666643))

(declare-fun d!666645 () Bool)

(declare-fun res!959848 () Bool)

(declare-fun e!1437226 () Bool)

(assert (=> d!666645 (=> (not res!959848) (not e!1437226))))

(declare-fun rulesValid!1543 (LexerInterface!3808 List!26687) Bool)

(assert (=> d!666645 (= res!959848 (rulesValid!1543 thiss!16613 rules!1750))))

(assert (=> d!666645 (= (rulesInvariant!3310 thiss!16613 rules!1750) e!1437226)))

(declare-fun b!2246278 () Bool)

(declare-datatypes ((List!26689 0))(
  ( (Nil!26595) (Cons!26595 (h!31996 String!28969) (t!200435 List!26689)) )
))
(declare-fun noDuplicateTag!1541 (LexerInterface!3808 List!26687 List!26689) Bool)

(assert (=> b!2246278 (= e!1437226 (noDuplicateTag!1541 thiss!16613 rules!1750 Nil!26595))))

(assert (= (and d!666645 res!959848) b!2246278))

(declare-fun m!2677787 () Bool)

(assert (=> d!666645 m!2677787))

(declare-fun m!2677789 () Bool)

(assert (=> b!2246278 m!2677789))

(assert (=> b!2246166 d!666645))

(declare-fun d!666647 () Bool)

(assert (=> d!666647 (= (head!4770 tokens!456) (h!31995 tokens!456))))

(assert (=> b!2246188 d!666647))

(declare-fun d!666649 () Bool)

(declare-fun lt!835457 () Int)

(assert (=> d!666649 (= lt!835457 (size!20793 (list!10178 (charsOf!2599 (head!4770 tokens!456)))))))

(declare-fun size!20796 (Conc!8570) Int)

(assert (=> d!666649 (= lt!835457 (size!20796 (c!357350 (charsOf!2599 (head!4770 tokens!456)))))))

(assert (=> d!666649 (= (size!20792 (charsOf!2599 (head!4770 tokens!456))) lt!835457)))

(declare-fun bs!454812 () Bool)

(assert (= bs!454812 d!666649))

(assert (=> bs!454812 m!2677637))

(assert (=> bs!454812 m!2677695))

(assert (=> bs!454812 m!2677695))

(declare-fun m!2677835 () Bool)

(assert (=> bs!454812 m!2677835))

(declare-fun m!2677837 () Bool)

(assert (=> bs!454812 m!2677837))

(assert (=> b!2246167 d!666649))

(declare-fun d!666653 () Bool)

(declare-fun lt!835460 () BalanceConc!16868)

(assert (=> d!666653 (= (list!10178 lt!835460) (originalCharacters!4981 (head!4770 tokens!456)))))

(declare-fun dynLambda!11566 (Int TokenValue!4373) BalanceConc!16868)

(assert (=> d!666653 (= lt!835460 (dynLambda!11566 (toChars!5800 (transformation!4211 (rule!6509 (head!4770 tokens!456)))) (value!133833 (head!4770 tokens!456))))))

(assert (=> d!666653 (= (charsOf!2599 (head!4770 tokens!456)) lt!835460)))

(declare-fun b_lambda!71847 () Bool)

(assert (=> (not b_lambda!71847) (not d!666653)))

(declare-fun tb!133047 () Bool)

(declare-fun t!200396 () Bool)

(assert (=> (and b!2246168 (= (toChars!5800 (transformation!4211 r!2363)) (toChars!5800 (transformation!4211 (rule!6509 (head!4770 tokens!456))))) t!200396) tb!133047))

(declare-fun b!2246292 () Bool)

(declare-fun e!1437233 () Bool)

(declare-fun tp!709235 () Bool)

(declare-fun inv!36121 (Conc!8570) Bool)

(assert (=> b!2246292 (= e!1437233 (and (inv!36121 (c!357350 (dynLambda!11566 (toChars!5800 (transformation!4211 (rule!6509 (head!4770 tokens!456)))) (value!133833 (head!4770 tokens!456))))) tp!709235))))

(declare-fun result!162176 () Bool)

(declare-fun inv!36122 (BalanceConc!16868) Bool)

(assert (=> tb!133047 (= result!162176 (and (inv!36122 (dynLambda!11566 (toChars!5800 (transformation!4211 (rule!6509 (head!4770 tokens!456)))) (value!133833 (head!4770 tokens!456)))) e!1437233))))

(assert (= tb!133047 b!2246292))

(declare-fun m!2677839 () Bool)

(assert (=> b!2246292 m!2677839))

(declare-fun m!2677841 () Bool)

(assert (=> tb!133047 m!2677841))

(assert (=> d!666653 t!200396))

(declare-fun b_and!175745 () Bool)

(assert (= b_and!175723 (and (=> t!200396 result!162176) b_and!175745)))

(declare-fun t!200398 () Bool)

(declare-fun tb!133049 () Bool)

(assert (=> (and b!2246170 (= (toChars!5800 (transformation!4211 otherR!12)) (toChars!5800 (transformation!4211 (rule!6509 (head!4770 tokens!456))))) t!200398) tb!133049))

(declare-fun result!162180 () Bool)

(assert (= result!162180 result!162176))

(assert (=> d!666653 t!200398))

(declare-fun b_and!175747 () Bool)

(assert (= b_and!175727 (and (=> t!200398 result!162180) b_and!175747)))

(declare-fun tb!133051 () Bool)

(declare-fun t!200400 () Bool)

(assert (=> (and b!2246191 (= (toChars!5800 (transformation!4211 (h!31994 rules!1750))) (toChars!5800 (transformation!4211 (rule!6509 (head!4770 tokens!456))))) t!200400) tb!133051))

(declare-fun result!162182 () Bool)

(assert (= result!162182 result!162176))

(assert (=> d!666653 t!200400))

(declare-fun b_and!175749 () Bool)

(assert (= b_and!175731 (and (=> t!200400 result!162182) b_and!175749)))

(declare-fun t!200402 () Bool)

(declare-fun tb!133053 () Bool)

(assert (=> (and b!2246171 (= (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456)))) (toChars!5800 (transformation!4211 (rule!6509 (head!4770 tokens!456))))) t!200402) tb!133053))

(declare-fun result!162184 () Bool)

(assert (= result!162184 result!162176))

(assert (=> d!666653 t!200402))

(declare-fun b_and!175751 () Bool)

(assert (= b_and!175735 (and (=> t!200402 result!162184) b_and!175751)))

(declare-fun m!2677843 () Bool)

(assert (=> d!666653 m!2677843))

(declare-fun m!2677845 () Bool)

(assert (=> d!666653 m!2677845))

(assert (=> b!2246167 d!666653))

(assert (=> b!2246167 d!666647))

(declare-fun d!666655 () Bool)

(declare-fun lt!835463 () Int)

(assert (=> d!666655 (>= lt!835463 0)))

(declare-fun e!1437236 () Int)

(assert (=> d!666655 (= lt!835463 e!1437236)))

(declare-fun c!357370 () Bool)

(assert (=> d!666655 (= c!357370 ((_ is Nil!26592) otherP!12))))

(assert (=> d!666655 (= (size!20793 otherP!12) lt!835463)))

(declare-fun b!2246297 () Bool)

(assert (=> b!2246297 (= e!1437236 0)))

(declare-fun b!2246298 () Bool)

(assert (=> b!2246298 (= e!1437236 (+ 1 (size!20793 (t!200384 otherP!12))))))

(assert (= (and d!666655 c!357370) b!2246297))

(assert (= (and d!666655 (not c!357370)) b!2246298))

(declare-fun m!2677847 () Bool)

(assert (=> b!2246298 m!2677847))

(assert (=> b!2246167 d!666655))

(declare-fun d!666657 () Bool)

(declare-fun lt!835469 () Int)

(assert (=> d!666657 (>= lt!835469 0)))

(declare-fun e!1437242 () Int)

(assert (=> d!666657 (= lt!835469 e!1437242)))

(declare-fun c!357375 () Bool)

(assert (=> d!666657 (= c!357375 (and ((_ is Cons!26593) rules!1750) (= (h!31994 rules!1750) otherR!12)))))

(assert (=> d!666657 (contains!4558 rules!1750 otherR!12)))

(assert (=> d!666657 (= (getIndex!232 rules!1750 otherR!12) lt!835469)))

(declare-fun b!2246307 () Bool)

(assert (=> b!2246307 (= e!1437242 0)))

(declare-fun b!2246310 () Bool)

(declare-fun e!1437243 () Int)

(assert (=> b!2246310 (= e!1437243 (- 1))))

(declare-fun b!2246309 () Bool)

(assert (=> b!2246309 (= e!1437243 (+ 1 (getIndex!232 (t!200385 rules!1750) otherR!12)))))

(declare-fun b!2246308 () Bool)

(assert (=> b!2246308 (= e!1437242 e!1437243)))

(declare-fun c!357376 () Bool)

(assert (=> b!2246308 (= c!357376 (and ((_ is Cons!26593) rules!1750) (not (= (h!31994 rules!1750) otherR!12))))))

(assert (= (and d!666657 c!357375) b!2246307))

(assert (= (and d!666657 (not c!357375)) b!2246308))

(assert (= (and b!2246308 c!357376) b!2246309))

(assert (= (and b!2246308 (not c!357376)) b!2246310))

(assert (=> d!666657 m!2677681))

(declare-fun m!2677853 () Bool)

(assert (=> b!2246309 m!2677853))

(assert (=> b!2246178 d!666657))

(declare-fun d!666661 () Bool)

(declare-fun lt!835470 () Int)

(assert (=> d!666661 (>= lt!835470 0)))

(declare-fun e!1437244 () Int)

(assert (=> d!666661 (= lt!835470 e!1437244)))

(declare-fun c!357377 () Bool)

(assert (=> d!666661 (= c!357377 (and ((_ is Cons!26593) rules!1750) (= (h!31994 rules!1750) r!2363)))))

(assert (=> d!666661 (contains!4558 rules!1750 r!2363)))

(assert (=> d!666661 (= (getIndex!232 rules!1750 r!2363) lt!835470)))

(declare-fun b!2246311 () Bool)

(assert (=> b!2246311 (= e!1437244 0)))

(declare-fun b!2246314 () Bool)

(declare-fun e!1437245 () Int)

(assert (=> b!2246314 (= e!1437245 (- 1))))

(declare-fun b!2246313 () Bool)

(assert (=> b!2246313 (= e!1437245 (+ 1 (getIndex!232 (t!200385 rules!1750) r!2363)))))

(declare-fun b!2246312 () Bool)

(assert (=> b!2246312 (= e!1437244 e!1437245)))

(declare-fun c!357378 () Bool)

(assert (=> b!2246312 (= c!357378 (and ((_ is Cons!26593) rules!1750) (not (= (h!31994 rules!1750) r!2363))))))

(assert (= (and d!666661 c!357377) b!2246311))

(assert (= (and d!666661 (not c!357377)) b!2246312))

(assert (= (and b!2246312 c!357378) b!2246313))

(assert (= (and b!2246312 (not c!357378)) b!2246314))

(assert (=> d!666661 m!2677699))

(declare-fun m!2677855 () Bool)

(assert (=> b!2246313 m!2677855))

(assert (=> b!2246178 d!666661))

(declare-fun d!666663 () Bool)

(declare-fun res!959860 () Bool)

(declare-fun e!1437250 () Bool)

(assert (=> d!666663 (=> (not res!959860) (not e!1437250))))

(assert (=> d!666663 (= res!959860 (validRegex!2450 (regex!4211 otherR!12)))))

(assert (=> d!666663 (= (ruleValid!1303 thiss!16613 otherR!12) e!1437250)))

(declare-fun b!2246323 () Bool)

(declare-fun res!959861 () Bool)

(assert (=> b!2246323 (=> (not res!959861) (not e!1437250))))

(declare-fun nullable!1798 (Regex!6559) Bool)

(assert (=> b!2246323 (= res!959861 (not (nullable!1798 (regex!4211 otherR!12))))))

(declare-fun b!2246324 () Bool)

(assert (=> b!2246324 (= e!1437250 (not (= (tag!4701 otherR!12) (String!28970 ""))))))

(assert (= (and d!666663 res!959860) b!2246323))

(assert (= (and b!2246323 res!959861) b!2246324))

(assert (=> d!666663 m!2677659))

(declare-fun m!2677857 () Bool)

(assert (=> b!2246323 m!2677857))

(assert (=> b!2246178 d!666663))

(declare-fun d!666665 () Bool)

(assert (=> d!666665 (ruleValid!1303 thiss!16613 otherR!12)))

(declare-fun lt!835475 () Unit!39550)

(declare-fun choose!13159 (LexerInterface!3808 Rule!8222 List!26687) Unit!39550)

(assert (=> d!666665 (= lt!835475 (choose!13159 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!666665 (contains!4558 rules!1750 otherR!12)))

(assert (=> d!666665 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!710 thiss!16613 otherR!12 rules!1750) lt!835475)))

(declare-fun bs!454814 () Bool)

(assert (= bs!454814 d!666665))

(assert (=> bs!454814 m!2677677))

(declare-fun m!2677859 () Bool)

(assert (=> bs!454814 m!2677859))

(assert (=> bs!454814 m!2677681))

(assert (=> b!2246178 d!666665))

(declare-fun b!2246381 () Bool)

(declare-fun e!1437284 () Bool)

(declare-fun call!135431 () Bool)

(assert (=> b!2246381 (= e!1437284 call!135431)))

(declare-fun d!666667 () Bool)

(declare-fun res!959898 () Bool)

(declare-fun e!1437287 () Bool)

(assert (=> d!666667 (=> res!959898 e!1437287)))

(assert (=> d!666667 (= res!959898 ((_ is ElementMatch!6559) (regex!4211 otherR!12)))))

(assert (=> d!666667 (= (validRegex!2450 (regex!4211 otherR!12)) e!1437287)))

(declare-fun bm!135425 () Bool)

(declare-fun call!135430 () Bool)

(declare-fun call!135432 () Bool)

(assert (=> bm!135425 (= call!135430 call!135432)))

(declare-fun b!2246382 () Bool)

(declare-fun e!1437285 () Bool)

(declare-fun e!1437286 () Bool)

(assert (=> b!2246382 (= e!1437285 e!1437286)))

(declare-fun res!959899 () Bool)

(assert (=> b!2246382 (=> (not res!959899) (not e!1437286))))

(assert (=> b!2246382 (= res!959899 call!135431)))

(declare-fun b!2246383 () Bool)

(declare-fun e!1437288 () Bool)

(assert (=> b!2246383 (= e!1437288 call!135432)))

(declare-fun b!2246384 () Bool)

(declare-fun e!1437290 () Bool)

(assert (=> b!2246384 (= e!1437290 e!1437288)))

(declare-fun res!959900 () Bool)

(assert (=> b!2246384 (= res!959900 (not (nullable!1798 (reg!6888 (regex!4211 otherR!12)))))))

(assert (=> b!2246384 (=> (not res!959900) (not e!1437288))))

(declare-fun b!2246385 () Bool)

(assert (=> b!2246385 (= e!1437287 e!1437290)))

(declare-fun c!357393 () Bool)

(assert (=> b!2246385 (= c!357393 ((_ is Star!6559) (regex!4211 otherR!12)))))

(declare-fun b!2246386 () Bool)

(declare-fun res!959897 () Bool)

(assert (=> b!2246386 (=> res!959897 e!1437285)))

(assert (=> b!2246386 (= res!959897 (not ((_ is Concat!10933) (regex!4211 otherR!12))))))

(declare-fun e!1437289 () Bool)

(assert (=> b!2246386 (= e!1437289 e!1437285)))

(declare-fun b!2246387 () Bool)

(assert (=> b!2246387 (= e!1437286 call!135430)))

(declare-fun b!2246388 () Bool)

(declare-fun res!959896 () Bool)

(assert (=> b!2246388 (=> (not res!959896) (not e!1437284))))

(assert (=> b!2246388 (= res!959896 call!135430)))

(assert (=> b!2246388 (= e!1437289 e!1437284)))

(declare-fun bm!135426 () Bool)

(declare-fun c!357392 () Bool)

(assert (=> bm!135426 (= call!135431 (validRegex!2450 (ite c!357392 (regTwo!13631 (regex!4211 otherR!12)) (regOne!13630 (regex!4211 otherR!12)))))))

(declare-fun bm!135427 () Bool)

(assert (=> bm!135427 (= call!135432 (validRegex!2450 (ite c!357393 (reg!6888 (regex!4211 otherR!12)) (ite c!357392 (regOne!13631 (regex!4211 otherR!12)) (regTwo!13630 (regex!4211 otherR!12))))))))

(declare-fun b!2246389 () Bool)

(assert (=> b!2246389 (= e!1437290 e!1437289)))

(assert (=> b!2246389 (= c!357392 ((_ is Union!6559) (regex!4211 otherR!12)))))

(assert (= (and d!666667 (not res!959898)) b!2246385))

(assert (= (and b!2246385 c!357393) b!2246384))

(assert (= (and b!2246385 (not c!357393)) b!2246389))

(assert (= (and b!2246384 res!959900) b!2246383))

(assert (= (and b!2246389 c!357392) b!2246388))

(assert (= (and b!2246389 (not c!357392)) b!2246386))

(assert (= (and b!2246388 res!959896) b!2246381))

(assert (= (and b!2246386 (not res!959897)) b!2246382))

(assert (= (and b!2246382 res!959899) b!2246387))

(assert (= (or b!2246388 b!2246387) bm!135425))

(assert (= (or b!2246381 b!2246382) bm!135426))

(assert (= (or b!2246383 bm!135425) bm!135427))

(declare-fun m!2677875 () Bool)

(assert (=> b!2246384 m!2677875))

(declare-fun m!2677877 () Bool)

(assert (=> bm!135426 m!2677877))

(declare-fun m!2677879 () Bool)

(assert (=> bm!135427 m!2677879))

(assert (=> b!2246189 d!666667))

(declare-fun b!2246402 () Bool)

(declare-fun e!1437299 () Bool)

(declare-fun inv!15 (TokenValue!4373) Bool)

(assert (=> b!2246402 (= e!1437299 (inv!15 (value!133833 (h!31995 tokens!456))))))

(declare-fun b!2246403 () Bool)

(declare-fun e!1437300 () Bool)

(declare-fun inv!16 (TokenValue!4373) Bool)

(assert (=> b!2246403 (= e!1437300 (inv!16 (value!133833 (h!31995 tokens!456))))))

(declare-fun b!2246404 () Bool)

(declare-fun res!959905 () Bool)

(assert (=> b!2246404 (=> res!959905 e!1437299)))

(assert (=> b!2246404 (= res!959905 (not ((_ is IntegerValue!13121) (value!133833 (h!31995 tokens!456)))))))

(declare-fun e!1437301 () Bool)

(assert (=> b!2246404 (= e!1437301 e!1437299)))

(declare-fun b!2246405 () Bool)

(assert (=> b!2246405 (= e!1437300 e!1437301)))

(declare-fun c!357399 () Bool)

(assert (=> b!2246405 (= c!357399 ((_ is IntegerValue!13120) (value!133833 (h!31995 tokens!456))))))

(declare-fun b!2246406 () Bool)

(declare-fun inv!17 (TokenValue!4373) Bool)

(assert (=> b!2246406 (= e!1437301 (inv!17 (value!133833 (h!31995 tokens!456))))))

(declare-fun d!666671 () Bool)

(declare-fun c!357398 () Bool)

(assert (=> d!666671 (= c!357398 ((_ is IntegerValue!13119) (value!133833 (h!31995 tokens!456))))))

(assert (=> d!666671 (= (inv!21 (value!133833 (h!31995 tokens!456))) e!1437300)))

(assert (= (and d!666671 c!357398) b!2246403))

(assert (= (and d!666671 (not c!357398)) b!2246405))

(assert (= (and b!2246405 c!357399) b!2246406))

(assert (= (and b!2246405 (not c!357399)) b!2246404))

(assert (= (and b!2246404 (not res!959905)) b!2246402))

(declare-fun m!2677887 () Bool)

(assert (=> b!2246402 m!2677887))

(declare-fun m!2677889 () Bool)

(assert (=> b!2246403 m!2677889))

(declare-fun m!2677891 () Bool)

(assert (=> b!2246406 m!2677891))

(assert (=> b!2246174 d!666671))

(declare-fun d!666677 () Bool)

(assert (=> d!666677 (= (inv!36114 (tag!4701 otherR!12)) (= (mod (str.len (value!133832 (tag!4701 otherR!12))) 2) 0))))

(assert (=> b!2246164 d!666677))

(declare-fun d!666679 () Bool)

(declare-fun res!959908 () Bool)

(declare-fun e!1437313 () Bool)

(assert (=> d!666679 (=> (not res!959908) (not e!1437313))))

(declare-fun semiInverseModEq!1700 (Int Int) Bool)

(assert (=> d!666679 (= res!959908 (semiInverseModEq!1700 (toChars!5800 (transformation!4211 otherR!12)) (toValue!5941 (transformation!4211 otherR!12))))))

(assert (=> d!666679 (= (inv!36117 (transformation!4211 otherR!12)) e!1437313)))

(declare-fun b!2246425 () Bool)

(declare-fun equivClasses!1619 (Int Int) Bool)

(assert (=> b!2246425 (= e!1437313 (equivClasses!1619 (toChars!5800 (transformation!4211 otherR!12)) (toValue!5941 (transformation!4211 otherR!12))))))

(assert (= (and d!666679 res!959908) b!2246425))

(declare-fun m!2677897 () Bool)

(assert (=> d!666679 m!2677897))

(declare-fun m!2677899 () Bool)

(assert (=> b!2246425 m!2677899))

(assert (=> b!2246164 d!666679))

(declare-fun d!666685 () Bool)

(assert (=> d!666685 (= (inv!36114 (tag!4701 (h!31994 rules!1750))) (= (mod (str.len (value!133832 (tag!4701 (h!31994 rules!1750)))) 2) 0))))

(assert (=> b!2246175 d!666685))

(declare-fun d!666687 () Bool)

(declare-fun res!959913 () Bool)

(declare-fun e!1437316 () Bool)

(assert (=> d!666687 (=> (not res!959913) (not e!1437316))))

(assert (=> d!666687 (= res!959913 (semiInverseModEq!1700 (toChars!5800 (transformation!4211 (h!31994 rules!1750))) (toValue!5941 (transformation!4211 (h!31994 rules!1750)))))))

(assert (=> d!666687 (= (inv!36117 (transformation!4211 (h!31994 rules!1750))) e!1437316)))

(declare-fun b!2246430 () Bool)

(assert (=> b!2246430 (= e!1437316 (equivClasses!1619 (toChars!5800 (transformation!4211 (h!31994 rules!1750))) (toValue!5941 (transformation!4211 (h!31994 rules!1750)))))))

(assert (= (and d!666687 res!959913) b!2246430))

(declare-fun m!2677901 () Bool)

(assert (=> d!666687 m!2677901))

(declare-fun m!2677903 () Bool)

(assert (=> b!2246430 m!2677903))

(assert (=> b!2246175 d!666687))

(declare-fun b!2246492 () Bool)

(declare-fun res!959958 () Bool)

(declare-fun e!1437352 () Bool)

(assert (=> b!2246492 (=> res!959958 e!1437352)))

(declare-fun isEmpty!14982 (List!26686) Bool)

(declare-fun tail!3241 (List!26686) List!26686)

(assert (=> b!2246492 (= res!959958 (not (isEmpty!14982 (tail!3241 (list!10178 (charsOf!2599 (head!4770 tokens!456)))))))))

(declare-fun d!666689 () Bool)

(declare-fun e!1437358 () Bool)

(assert (=> d!666689 e!1437358))

(declare-fun c!357419 () Bool)

(assert (=> d!666689 (= c!357419 ((_ is EmptyExpr!6559) (regex!4211 r!2363)))))

(declare-fun lt!835495 () Bool)

(declare-fun e!1437353 () Bool)

(assert (=> d!666689 (= lt!835495 e!1437353)))

(declare-fun c!357417 () Bool)

(assert (=> d!666689 (= c!357417 (isEmpty!14982 (list!10178 (charsOf!2599 (head!4770 tokens!456)))))))

(assert (=> d!666689 (validRegex!2450 (regex!4211 r!2363))))

(assert (=> d!666689 (= (matchR!2820 (regex!4211 r!2363) (list!10178 (charsOf!2599 (head!4770 tokens!456)))) lt!835495)))

(declare-fun bm!135431 () Bool)

(declare-fun call!135436 () Bool)

(assert (=> bm!135431 (= call!135436 (isEmpty!14982 (list!10178 (charsOf!2599 (head!4770 tokens!456)))))))

(declare-fun b!2246493 () Bool)

(declare-fun res!959960 () Bool)

(declare-fun e!1437357 () Bool)

(assert (=> b!2246493 (=> res!959960 e!1437357)))

(declare-fun e!1437356 () Bool)

(assert (=> b!2246493 (= res!959960 e!1437356)))

(declare-fun res!959962 () Bool)

(assert (=> b!2246493 (=> (not res!959962) (not e!1437356))))

(assert (=> b!2246493 (= res!959962 lt!835495)))

(declare-fun b!2246494 () Bool)

(declare-fun res!959963 () Bool)

(assert (=> b!2246494 (=> (not res!959963) (not e!1437356))))

(assert (=> b!2246494 (= res!959963 (isEmpty!14982 (tail!3241 (list!10178 (charsOf!2599 (head!4770 tokens!456))))))))

(declare-fun b!2246495 () Bool)

(declare-fun e!1437355 () Bool)

(assert (=> b!2246495 (= e!1437357 e!1437355)))

(declare-fun res!959957 () Bool)

(assert (=> b!2246495 (=> (not res!959957) (not e!1437355))))

(assert (=> b!2246495 (= res!959957 (not lt!835495))))

(declare-fun b!2246496 () Bool)

(declare-fun res!959964 () Bool)

(assert (=> b!2246496 (=> (not res!959964) (not e!1437356))))

(assert (=> b!2246496 (= res!959964 (not call!135436))))

(declare-fun b!2246497 () Bool)

(declare-fun derivativeStep!1460 (Regex!6559 C!13264) Regex!6559)

(declare-fun head!4772 (List!26686) C!13264)

(assert (=> b!2246497 (= e!1437353 (matchR!2820 (derivativeStep!1460 (regex!4211 r!2363) (head!4772 (list!10178 (charsOf!2599 (head!4770 tokens!456))))) (tail!3241 (list!10178 (charsOf!2599 (head!4770 tokens!456))))))))

(declare-fun b!2246498 () Bool)

(declare-fun e!1437354 () Bool)

(assert (=> b!2246498 (= e!1437354 (not lt!835495))))

(declare-fun b!2246499 () Bool)

(assert (=> b!2246499 (= e!1437358 e!1437354)))

(declare-fun c!357418 () Bool)

(assert (=> b!2246499 (= c!357418 ((_ is EmptyLang!6559) (regex!4211 r!2363)))))

(declare-fun b!2246500 () Bool)

(assert (=> b!2246500 (= e!1437358 (= lt!835495 call!135436))))

(declare-fun b!2246501 () Bool)

(assert (=> b!2246501 (= e!1437353 (nullable!1798 (regex!4211 r!2363)))))

(declare-fun b!2246502 () Bool)

(assert (=> b!2246502 (= e!1437356 (= (head!4772 (list!10178 (charsOf!2599 (head!4770 tokens!456)))) (c!357351 (regex!4211 r!2363))))))

(declare-fun b!2246503 () Bool)

(assert (=> b!2246503 (= e!1437352 (not (= (head!4772 (list!10178 (charsOf!2599 (head!4770 tokens!456)))) (c!357351 (regex!4211 r!2363)))))))

(declare-fun b!2246504 () Bool)

(assert (=> b!2246504 (= e!1437355 e!1437352)))

(declare-fun res!959961 () Bool)

(assert (=> b!2246504 (=> res!959961 e!1437352)))

(assert (=> b!2246504 (= res!959961 call!135436)))

(declare-fun b!2246505 () Bool)

(declare-fun res!959959 () Bool)

(assert (=> b!2246505 (=> res!959959 e!1437357)))

(assert (=> b!2246505 (= res!959959 (not ((_ is ElementMatch!6559) (regex!4211 r!2363))))))

(assert (=> b!2246505 (= e!1437354 e!1437357)))

(assert (= (and d!666689 c!357417) b!2246501))

(assert (= (and d!666689 (not c!357417)) b!2246497))

(assert (= (and d!666689 c!357419) b!2246500))

(assert (= (and d!666689 (not c!357419)) b!2246499))

(assert (= (and b!2246499 c!357418) b!2246498))

(assert (= (and b!2246499 (not c!357418)) b!2246505))

(assert (= (and b!2246505 (not res!959959)) b!2246493))

(assert (= (and b!2246493 res!959962) b!2246496))

(assert (= (and b!2246496 res!959964) b!2246494))

(assert (= (and b!2246494 res!959963) b!2246502))

(assert (= (and b!2246493 (not res!959960)) b!2246495))

(assert (= (and b!2246495 res!959957) b!2246504))

(assert (= (and b!2246504 (not res!959961)) b!2246492))

(assert (= (and b!2246492 (not res!959958)) b!2246503))

(assert (= (or b!2246500 b!2246496 b!2246504) bm!135431))

(assert (=> b!2246502 m!2677695))

(declare-fun m!2677935 () Bool)

(assert (=> b!2246502 m!2677935))

(assert (=> b!2246503 m!2677695))

(assert (=> b!2246503 m!2677935))

(assert (=> bm!135431 m!2677695))

(declare-fun m!2677937 () Bool)

(assert (=> bm!135431 m!2677937))

(assert (=> b!2246494 m!2677695))

(declare-fun m!2677939 () Bool)

(assert (=> b!2246494 m!2677939))

(assert (=> b!2246494 m!2677939))

(declare-fun m!2677941 () Bool)

(assert (=> b!2246494 m!2677941))

(declare-fun m!2677945 () Bool)

(assert (=> b!2246501 m!2677945))

(assert (=> b!2246492 m!2677695))

(assert (=> b!2246492 m!2677939))

(assert (=> b!2246492 m!2677939))

(assert (=> b!2246492 m!2677941))

(assert (=> b!2246497 m!2677695))

(assert (=> b!2246497 m!2677935))

(assert (=> b!2246497 m!2677935))

(declare-fun m!2677947 () Bool)

(assert (=> b!2246497 m!2677947))

(assert (=> b!2246497 m!2677695))

(assert (=> b!2246497 m!2677939))

(assert (=> b!2246497 m!2677947))

(assert (=> b!2246497 m!2677939))

(declare-fun m!2677949 () Bool)

(assert (=> b!2246497 m!2677949))

(assert (=> d!666689 m!2677695))

(assert (=> d!666689 m!2677937))

(declare-fun m!2677951 () Bool)

(assert (=> d!666689 m!2677951))

(assert (=> b!2246186 d!666689))

(declare-fun d!666707 () Bool)

(assert (=> d!666707 (= (list!10178 (charsOf!2599 (head!4770 tokens!456))) (list!10183 (c!357350 (charsOf!2599 (head!4770 tokens!456)))))))

(declare-fun bs!454819 () Bool)

(assert (= bs!454819 d!666707))

(declare-fun m!2677953 () Bool)

(assert (=> bs!454819 m!2677953))

(assert (=> b!2246186 d!666707))

(assert (=> b!2246186 d!666653))

(assert (=> b!2246186 d!666647))

(declare-fun d!666709 () Bool)

(declare-fun lt!835501 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3544 (List!26687) (InoxSet Rule!8222))

(assert (=> d!666709 (= lt!835501 (select (content!3544 rules!1750) otherR!12))))

(declare-fun e!1437364 () Bool)

(assert (=> d!666709 (= lt!835501 e!1437364)))

(declare-fun res!959970 () Bool)

(assert (=> d!666709 (=> (not res!959970) (not e!1437364))))

(assert (=> d!666709 (= res!959970 ((_ is Cons!26593) rules!1750))))

(assert (=> d!666709 (= (contains!4558 rules!1750 otherR!12) lt!835501)))

(declare-fun b!2246511 () Bool)

(declare-fun e!1437365 () Bool)

(assert (=> b!2246511 (= e!1437364 e!1437365)))

(declare-fun res!959969 () Bool)

(assert (=> b!2246511 (=> res!959969 e!1437365)))

(assert (=> b!2246511 (= res!959969 (= (h!31994 rules!1750) otherR!12))))

(declare-fun b!2246512 () Bool)

(assert (=> b!2246512 (= e!1437365 (contains!4558 (t!200385 rules!1750) otherR!12))))

(assert (= (and d!666709 res!959970) b!2246511))

(assert (= (and b!2246511 (not res!959969)) b!2246512))

(declare-fun m!2677963 () Bool)

(assert (=> d!666709 m!2677963))

(declare-fun m!2677965 () Bool)

(assert (=> d!666709 m!2677965))

(declare-fun m!2677967 () Bool)

(assert (=> b!2246512 m!2677967))

(assert (=> b!2246165 d!666709))

(declare-fun d!666713 () Bool)

(declare-fun res!959975 () Bool)

(declare-fun e!1437370 () Bool)

(assert (=> d!666713 (=> (not res!959975) (not e!1437370))))

(assert (=> d!666713 (= res!959975 (not (isEmpty!14982 (originalCharacters!4981 (h!31995 tokens!456)))))))

(assert (=> d!666713 (= (inv!36118 (h!31995 tokens!456)) e!1437370)))

(declare-fun b!2246521 () Bool)

(declare-fun res!959976 () Bool)

(assert (=> b!2246521 (=> (not res!959976) (not e!1437370))))

(assert (=> b!2246521 (= res!959976 (= (originalCharacters!4981 (h!31995 tokens!456)) (list!10178 (dynLambda!11566 (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456)))) (value!133833 (h!31995 tokens!456))))))))

(declare-fun b!2246522 () Bool)

(assert (=> b!2246522 (= e!1437370 (= (size!20791 (h!31995 tokens!456)) (size!20793 (originalCharacters!4981 (h!31995 tokens!456)))))))

(assert (= (and d!666713 res!959975) b!2246521))

(assert (= (and b!2246521 res!959976) b!2246522))

(declare-fun b_lambda!71851 () Bool)

(assert (=> (not b_lambda!71851) (not b!2246521)))

(declare-fun t!200412 () Bool)

(declare-fun tb!133063 () Bool)

(assert (=> (and b!2246168 (= (toChars!5800 (transformation!4211 r!2363)) (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456))))) t!200412) tb!133063))

(declare-fun b!2246523 () Bool)

(declare-fun e!1437371 () Bool)

(declare-fun tp!709237 () Bool)

(assert (=> b!2246523 (= e!1437371 (and (inv!36121 (c!357350 (dynLambda!11566 (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456)))) (value!133833 (h!31995 tokens!456))))) tp!709237))))

(declare-fun result!162194 () Bool)

(assert (=> tb!133063 (= result!162194 (and (inv!36122 (dynLambda!11566 (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456)))) (value!133833 (h!31995 tokens!456)))) e!1437371))))

(assert (= tb!133063 b!2246523))

(declare-fun m!2677973 () Bool)

(assert (=> b!2246523 m!2677973))

(declare-fun m!2677975 () Bool)

(assert (=> tb!133063 m!2677975))

(assert (=> b!2246521 t!200412))

(declare-fun b_and!175761 () Bool)

(assert (= b_and!175745 (and (=> t!200412 result!162194) b_and!175761)))

(declare-fun t!200414 () Bool)

(declare-fun tb!133065 () Bool)

(assert (=> (and b!2246170 (= (toChars!5800 (transformation!4211 otherR!12)) (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456))))) t!200414) tb!133065))

(declare-fun result!162196 () Bool)

(assert (= result!162196 result!162194))

(assert (=> b!2246521 t!200414))

(declare-fun b_and!175763 () Bool)

(assert (= b_and!175747 (and (=> t!200414 result!162196) b_and!175763)))

(declare-fun t!200416 () Bool)

(declare-fun tb!133067 () Bool)

(assert (=> (and b!2246191 (= (toChars!5800 (transformation!4211 (h!31994 rules!1750))) (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456))))) t!200416) tb!133067))

(declare-fun result!162198 () Bool)

(assert (= result!162198 result!162194))

(assert (=> b!2246521 t!200416))

(declare-fun b_and!175765 () Bool)

(assert (= b_and!175749 (and (=> t!200416 result!162198) b_and!175765)))

(declare-fun t!200418 () Bool)

(declare-fun tb!133069 () Bool)

(assert (=> (and b!2246171 (= (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456)))) (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456))))) t!200418) tb!133069))

(declare-fun result!162200 () Bool)

(assert (= result!162200 result!162194))

(assert (=> b!2246521 t!200418))

(declare-fun b_and!175767 () Bool)

(assert (= b_and!175751 (and (=> t!200418 result!162200) b_and!175767)))

(declare-fun m!2677979 () Bool)

(assert (=> d!666713 m!2677979))

(declare-fun m!2677981 () Bool)

(assert (=> b!2246521 m!2677981))

(assert (=> b!2246521 m!2677981))

(declare-fun m!2677983 () Bool)

(assert (=> b!2246521 m!2677983))

(declare-fun m!2677985 () Bool)

(assert (=> b!2246522 m!2677985))

(assert (=> b!2246176 d!666713))

(declare-fun d!666719 () Bool)

(assert (=> d!666719 (= (isEmpty!14978 tokens!456) ((_ is Nil!26594) tokens!456))))

(assert (=> b!2246182 d!666719))

(declare-fun d!666721 () Bool)

(declare-fun res!959977 () Bool)

(declare-fun e!1437373 () Bool)

(assert (=> d!666721 (=> (not res!959977) (not e!1437373))))

(assert (=> d!666721 (= res!959977 (validRegex!2450 (regex!4211 r!2363)))))

(assert (=> d!666721 (= (ruleValid!1303 thiss!16613 r!2363) e!1437373)))

(declare-fun b!2246526 () Bool)

(declare-fun res!959978 () Bool)

(assert (=> b!2246526 (=> (not res!959978) (not e!1437373))))

(assert (=> b!2246526 (= res!959978 (not (nullable!1798 (regex!4211 r!2363))))))

(declare-fun b!2246527 () Bool)

(assert (=> b!2246527 (= e!1437373 (not (= (tag!4701 r!2363) (String!28970 ""))))))

(assert (= (and d!666721 res!959977) b!2246526))

(assert (= (and b!2246526 res!959978) b!2246527))

(assert (=> d!666721 m!2677951))

(assert (=> b!2246526 m!2677945))

(assert (=> b!2246172 d!666721))

(declare-fun d!666723 () Bool)

(assert (=> d!666723 (ruleValid!1303 thiss!16613 r!2363)))

(declare-fun lt!835508 () Unit!39550)

(assert (=> d!666723 (= lt!835508 (choose!13159 thiss!16613 r!2363 rules!1750))))

(assert (=> d!666723 (contains!4558 rules!1750 r!2363)))

(assert (=> d!666723 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!710 thiss!16613 r!2363 rules!1750) lt!835508)))

(declare-fun bs!454821 () Bool)

(assert (= bs!454821 d!666723))

(assert (=> bs!454821 m!2677647))

(declare-fun m!2677987 () Bool)

(assert (=> bs!454821 m!2677987))

(assert (=> bs!454821 m!2677699))

(assert (=> b!2246172 d!666723))

(declare-fun d!666725 () Bool)

(declare-fun lt!835509 () Bool)

(assert (=> d!666725 (= lt!835509 (select (content!3544 rules!1750) r!2363))))

(declare-fun e!1437374 () Bool)

(assert (=> d!666725 (= lt!835509 e!1437374)))

(declare-fun res!959980 () Bool)

(assert (=> d!666725 (=> (not res!959980) (not e!1437374))))

(assert (=> d!666725 (= res!959980 ((_ is Cons!26593) rules!1750))))

(assert (=> d!666725 (= (contains!4558 rules!1750 r!2363) lt!835509)))

(declare-fun b!2246528 () Bool)

(declare-fun e!1437375 () Bool)

(assert (=> b!2246528 (= e!1437374 e!1437375)))

(declare-fun res!959979 () Bool)

(assert (=> b!2246528 (=> res!959979 e!1437375)))

(assert (=> b!2246528 (= res!959979 (= (h!31994 rules!1750) r!2363))))

(declare-fun b!2246529 () Bool)

(assert (=> b!2246529 (= e!1437375 (contains!4558 (t!200385 rules!1750) r!2363))))

(assert (= (and d!666725 res!959980) b!2246528))

(assert (= (and b!2246528 (not res!959979)) b!2246529))

(assert (=> d!666725 m!2677963))

(declare-fun m!2677989 () Bool)

(assert (=> d!666725 m!2677989))

(declare-fun m!2677991 () Bool)

(assert (=> b!2246529 m!2677991))

(assert (=> b!2246162 d!666725))

(declare-fun d!666727 () Bool)

(assert (=> d!666727 (= (inv!36114 (tag!4701 (rule!6509 (h!31995 tokens!456)))) (= (mod (str.len (value!133832 (tag!4701 (rule!6509 (h!31995 tokens!456))))) 2) 0))))

(assert (=> b!2246173 d!666727))

(declare-fun d!666729 () Bool)

(declare-fun res!959983 () Bool)

(declare-fun e!1437378 () Bool)

(assert (=> d!666729 (=> (not res!959983) (not e!1437378))))

(assert (=> d!666729 (= res!959983 (semiInverseModEq!1700 (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456)))) (toValue!5941 (transformation!4211 (rule!6509 (h!31995 tokens!456))))))))

(assert (=> d!666729 (= (inv!36117 (transformation!4211 (rule!6509 (h!31995 tokens!456)))) e!1437378)))

(declare-fun b!2246534 () Bool)

(assert (=> b!2246534 (= e!1437378 (equivClasses!1619 (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456)))) (toValue!5941 (transformation!4211 (rule!6509 (h!31995 tokens!456))))))))

(assert (= (and d!666729 res!959983) b!2246534))

(declare-fun m!2677993 () Bool)

(assert (=> d!666729 m!2677993))

(declare-fun m!2677995 () Bool)

(assert (=> b!2246534 m!2677995))

(assert (=> b!2246173 d!666729))

(declare-fun d!666731 () Bool)

(assert (=> d!666731 (= (inv!36114 (tag!4701 r!2363)) (= (mod (str.len (value!133832 (tag!4701 r!2363))) 2) 0))))

(assert (=> b!2246184 d!666731))

(declare-fun d!666733 () Bool)

(declare-fun res!959992 () Bool)

(declare-fun e!1437391 () Bool)

(assert (=> d!666733 (=> (not res!959992) (not e!1437391))))

(assert (=> d!666733 (= res!959992 (semiInverseModEq!1700 (toChars!5800 (transformation!4211 r!2363)) (toValue!5941 (transformation!4211 r!2363))))))

(assert (=> d!666733 (= (inv!36117 (transformation!4211 r!2363)) e!1437391)))

(declare-fun b!2246549 () Bool)

(assert (=> b!2246549 (= e!1437391 (equivClasses!1619 (toChars!5800 (transformation!4211 r!2363)) (toValue!5941 (transformation!4211 r!2363))))))

(assert (= (and d!666733 res!959992) b!2246549))

(declare-fun m!2677997 () Bool)

(assert (=> d!666733 m!2677997))

(declare-fun m!2677999 () Bool)

(assert (=> b!2246549 m!2677999))

(assert (=> b!2246184 d!666733))

(declare-fun d!666735 () Bool)

(assert (=> d!666735 (= (isEmpty!14977 lt!835427) (not ((_ is Some!5185) lt!835427)))))

(assert (=> b!2246179 d!666735))

(declare-fun b!2246639 () Bool)

(declare-fun res!960018 () Bool)

(declare-fun e!1437455 () Bool)

(assert (=> b!2246639 (=> (not res!960018) (not e!1437455))))

(declare-fun lt!835524 () Option!5186)

(declare-fun get!8034 (Option!5186) tuple2!26062)

(declare-fun apply!6545 (TokenValueInjection!8286 BalanceConc!16868) TokenValue!4373)

(assert (=> b!2246639 (= res!960018 (= (value!133833 (_1!15541 (get!8034 lt!835524))) (apply!6545 (transformation!4211 (rule!6509 (_1!15541 (get!8034 lt!835524)))) (seqFromList!2915 (originalCharacters!4981 (_1!15541 (get!8034 lt!835524)))))))))

(declare-fun b!2246640 () Bool)

(declare-fun e!1437453 () Bool)

(declare-datatypes ((tuple2!26070 0))(
  ( (tuple2!26071 (_1!15545 List!26686) (_2!15545 List!26686)) )
))
(declare-fun findLongestMatchInner!686 (Regex!6559 List!26686 Int List!26686 List!26686 Int) tuple2!26070)

(assert (=> b!2246640 (= e!1437453 (matchR!2820 (regex!4211 otherR!12) (_1!15545 (findLongestMatchInner!686 (regex!4211 otherR!12) Nil!26592 (size!20793 Nil!26592) input!1722 input!1722 (size!20793 input!1722)))))))

(declare-fun b!2246641 () Bool)

(declare-fun res!960019 () Bool)

(assert (=> b!2246641 (=> (not res!960019) (not e!1437455))))

(assert (=> b!2246641 (= res!960019 (< (size!20793 (_2!15541 (get!8034 lt!835524))) (size!20793 input!1722)))))

(declare-fun b!2246642 () Bool)

(declare-fun res!960015 () Bool)

(assert (=> b!2246642 (=> (not res!960015) (not e!1437455))))

(declare-fun ++!6481 (List!26686 List!26686) List!26686)

(assert (=> b!2246642 (= res!960015 (= (++!6481 (list!10178 (charsOf!2599 (_1!15541 (get!8034 lt!835524)))) (_2!15541 (get!8034 lt!835524))) input!1722))))

(declare-fun b!2246643 () Bool)

(declare-fun e!1437454 () Option!5186)

(declare-fun lt!835520 () tuple2!26070)

(assert (=> b!2246643 (= e!1437454 (Some!5185 (tuple2!26063 (Token!7901 (apply!6545 (transformation!4211 otherR!12) (seqFromList!2915 (_1!15545 lt!835520))) otherR!12 (size!20792 (seqFromList!2915 (_1!15545 lt!835520))) (_1!15545 lt!835520)) (_2!15545 lt!835520))))))

(declare-fun lt!835522 () Unit!39550)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!659 (Regex!6559 List!26686) Unit!39550)

(assert (=> b!2246643 (= lt!835522 (longestMatchIsAcceptedByMatchOrIsEmpty!659 (regex!4211 otherR!12) input!1722))))

(declare-fun res!960017 () Bool)

(assert (=> b!2246643 (= res!960017 (isEmpty!14982 (_1!15545 (findLongestMatchInner!686 (regex!4211 otherR!12) Nil!26592 (size!20793 Nil!26592) input!1722 input!1722 (size!20793 input!1722)))))))

(assert (=> b!2246643 (=> res!960017 e!1437453)))

(assert (=> b!2246643 e!1437453))

(declare-fun lt!835523 () Unit!39550)

(assert (=> b!2246643 (= lt!835523 lt!835522)))

(declare-fun lt!835521 () Unit!39550)

(declare-fun lemmaSemiInverse!993 (TokenValueInjection!8286 BalanceConc!16868) Unit!39550)

(assert (=> b!2246643 (= lt!835521 (lemmaSemiInverse!993 (transformation!4211 otherR!12) (seqFromList!2915 (_1!15545 lt!835520))))))

(declare-fun b!2246644 () Bool)

(assert (=> b!2246644 (= e!1437455 (= (size!20791 (_1!15541 (get!8034 lt!835524))) (size!20793 (originalCharacters!4981 (_1!15541 (get!8034 lt!835524))))))))

(declare-fun b!2246645 () Bool)

(declare-fun e!1437452 () Bool)

(assert (=> b!2246645 (= e!1437452 e!1437455)))

(declare-fun res!960016 () Bool)

(assert (=> b!2246645 (=> (not res!960016) (not e!1437455))))

(assert (=> b!2246645 (= res!960016 (matchR!2820 (regex!4211 otherR!12) (list!10178 (charsOf!2599 (_1!15541 (get!8034 lt!835524))))))))

(declare-fun d!666737 () Bool)

(assert (=> d!666737 e!1437452))

(declare-fun res!960020 () Bool)

(assert (=> d!666737 (=> res!960020 e!1437452)))

(assert (=> d!666737 (= res!960020 (isEmpty!14977 lt!835524))))

(assert (=> d!666737 (= lt!835524 e!1437454)))

(declare-fun c!357431 () Bool)

(assert (=> d!666737 (= c!357431 (isEmpty!14982 (_1!15545 lt!835520)))))

(declare-fun findLongestMatch!615 (Regex!6559 List!26686) tuple2!26070)

(assert (=> d!666737 (= lt!835520 (findLongestMatch!615 (regex!4211 otherR!12) input!1722))))

(assert (=> d!666737 (ruleValid!1303 thiss!16613 otherR!12)))

(assert (=> d!666737 (= (maxPrefixOneRule!1304 thiss!16613 otherR!12 input!1722) lt!835524)))

(declare-fun b!2246646 () Bool)

(declare-fun res!960021 () Bool)

(assert (=> b!2246646 (=> (not res!960021) (not e!1437455))))

(assert (=> b!2246646 (= res!960021 (= (rule!6509 (_1!15541 (get!8034 lt!835524))) otherR!12))))

(declare-fun b!2246647 () Bool)

(assert (=> b!2246647 (= e!1437454 None!5185)))

(assert (= (and d!666737 c!357431) b!2246647))

(assert (= (and d!666737 (not c!357431)) b!2246643))

(assert (= (and b!2246643 (not res!960017)) b!2246640))

(assert (= (and d!666737 (not res!960020)) b!2246645))

(assert (= (and b!2246645 res!960016) b!2246642))

(assert (= (and b!2246642 res!960015) b!2246641))

(assert (= (and b!2246641 res!960019) b!2246646))

(assert (= (and b!2246646 res!960021) b!2246639))

(assert (= (and b!2246639 res!960018) b!2246644))

(declare-fun m!2678031 () Bool)

(assert (=> b!2246646 m!2678031))

(declare-fun m!2678033 () Bool)

(assert (=> b!2246643 m!2678033))

(declare-fun m!2678035 () Bool)

(assert (=> b!2246643 m!2678035))

(declare-fun m!2678037 () Bool)

(assert (=> b!2246643 m!2678037))

(declare-fun m!2678039 () Bool)

(assert (=> b!2246643 m!2678039))

(declare-fun m!2678041 () Bool)

(assert (=> b!2246643 m!2678041))

(declare-fun m!2678043 () Bool)

(assert (=> b!2246643 m!2678043))

(assert (=> b!2246643 m!2678039))

(assert (=> b!2246643 m!2678041))

(declare-fun m!2678045 () Bool)

(assert (=> b!2246643 m!2678045))

(assert (=> b!2246643 m!2678035))

(declare-fun m!2678047 () Bool)

(assert (=> b!2246643 m!2678047))

(assert (=> b!2246643 m!2678035))

(assert (=> b!2246643 m!2678035))

(declare-fun m!2678049 () Bool)

(assert (=> b!2246643 m!2678049))

(assert (=> b!2246645 m!2678031))

(declare-fun m!2678051 () Bool)

(assert (=> b!2246645 m!2678051))

(assert (=> b!2246645 m!2678051))

(declare-fun m!2678053 () Bool)

(assert (=> b!2246645 m!2678053))

(assert (=> b!2246645 m!2678053))

(declare-fun m!2678055 () Bool)

(assert (=> b!2246645 m!2678055))

(declare-fun m!2678057 () Bool)

(assert (=> d!666737 m!2678057))

(declare-fun m!2678059 () Bool)

(assert (=> d!666737 m!2678059))

(declare-fun m!2678061 () Bool)

(assert (=> d!666737 m!2678061))

(assert (=> d!666737 m!2677677))

(assert (=> b!2246641 m!2678031))

(declare-fun m!2678063 () Bool)

(assert (=> b!2246641 m!2678063))

(assert (=> b!2246641 m!2678041))

(assert (=> b!2246644 m!2678031))

(declare-fun m!2678065 () Bool)

(assert (=> b!2246644 m!2678065))

(assert (=> b!2246640 m!2678039))

(assert (=> b!2246640 m!2678041))

(assert (=> b!2246640 m!2678039))

(assert (=> b!2246640 m!2678041))

(assert (=> b!2246640 m!2678043))

(declare-fun m!2678067 () Bool)

(assert (=> b!2246640 m!2678067))

(assert (=> b!2246642 m!2678031))

(assert (=> b!2246642 m!2678051))

(assert (=> b!2246642 m!2678051))

(assert (=> b!2246642 m!2678053))

(assert (=> b!2246642 m!2678053))

(declare-fun m!2678069 () Bool)

(assert (=> b!2246642 m!2678069))

(assert (=> b!2246639 m!2678031))

(declare-fun m!2678071 () Bool)

(assert (=> b!2246639 m!2678071))

(assert (=> b!2246639 m!2678071))

(declare-fun m!2678073 () Bool)

(assert (=> b!2246639 m!2678073))

(assert (=> b!2246179 d!666737))

(declare-fun d!666753 () Bool)

(assert (=> d!666753 (isEmpty!14977 (maxPrefixOneRule!1304 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!835527 () Unit!39550)

(declare-fun choose!13160 (LexerInterface!3808 Rule!8222 List!26687 List!26686) Unit!39550)

(assert (=> d!666753 (= lt!835527 (choose!13160 thiss!16613 otherR!12 rules!1750 input!1722))))

(assert (=> d!666753 (not (isEmpty!14976 rules!1750))))

(assert (=> d!666753 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!395 thiss!16613 otherR!12 rules!1750 input!1722) lt!835527)))

(declare-fun bs!454822 () Bool)

(assert (= bs!454822 d!666753))

(assert (=> bs!454822 m!2677663))

(assert (=> bs!454822 m!2677663))

(declare-fun m!2678075 () Bool)

(assert (=> bs!454822 m!2678075))

(declare-fun m!2678077 () Bool)

(assert (=> bs!454822 m!2678077))

(assert (=> bs!454822 m!2677701))

(assert (=> b!2246179 d!666753))

(declare-fun d!666755 () Bool)

(assert (=> d!666755 (= (isEmpty!14976 rules!1750) ((_ is Nil!26593) rules!1750))))

(assert (=> b!2246169 d!666755))

(declare-fun b!2246648 () Bool)

(declare-fun res!960023 () Bool)

(declare-fun e!1437456 () Bool)

(assert (=> b!2246648 (=> res!960023 e!1437456)))

(assert (=> b!2246648 (= res!960023 (not (isEmpty!14982 (tail!3241 otherP!12))))))

(declare-fun d!666757 () Bool)

(declare-fun e!1437462 () Bool)

(assert (=> d!666757 e!1437462))

(declare-fun c!357434 () Bool)

(assert (=> d!666757 (= c!357434 ((_ is EmptyExpr!6559) (regex!4211 otherR!12)))))

(declare-fun lt!835528 () Bool)

(declare-fun e!1437457 () Bool)

(assert (=> d!666757 (= lt!835528 e!1437457)))

(declare-fun c!357432 () Bool)

(assert (=> d!666757 (= c!357432 (isEmpty!14982 otherP!12))))

(assert (=> d!666757 (validRegex!2450 (regex!4211 otherR!12))))

(assert (=> d!666757 (= (matchR!2820 (regex!4211 otherR!12) otherP!12) lt!835528)))

(declare-fun bm!135441 () Bool)

(declare-fun call!135446 () Bool)

(assert (=> bm!135441 (= call!135446 (isEmpty!14982 otherP!12))))

(declare-fun b!2246649 () Bool)

(declare-fun res!960025 () Bool)

(declare-fun e!1437461 () Bool)

(assert (=> b!2246649 (=> res!960025 e!1437461)))

(declare-fun e!1437460 () Bool)

(assert (=> b!2246649 (= res!960025 e!1437460)))

(declare-fun res!960027 () Bool)

(assert (=> b!2246649 (=> (not res!960027) (not e!1437460))))

(assert (=> b!2246649 (= res!960027 lt!835528)))

(declare-fun b!2246650 () Bool)

(declare-fun res!960028 () Bool)

(assert (=> b!2246650 (=> (not res!960028) (not e!1437460))))

(assert (=> b!2246650 (= res!960028 (isEmpty!14982 (tail!3241 otherP!12)))))

(declare-fun b!2246651 () Bool)

(declare-fun e!1437459 () Bool)

(assert (=> b!2246651 (= e!1437461 e!1437459)))

(declare-fun res!960022 () Bool)

(assert (=> b!2246651 (=> (not res!960022) (not e!1437459))))

(assert (=> b!2246651 (= res!960022 (not lt!835528))))

(declare-fun b!2246652 () Bool)

(declare-fun res!960029 () Bool)

(assert (=> b!2246652 (=> (not res!960029) (not e!1437460))))

(assert (=> b!2246652 (= res!960029 (not call!135446))))

(declare-fun b!2246653 () Bool)

(assert (=> b!2246653 (= e!1437457 (matchR!2820 (derivativeStep!1460 (regex!4211 otherR!12) (head!4772 otherP!12)) (tail!3241 otherP!12)))))

(declare-fun b!2246654 () Bool)

(declare-fun e!1437458 () Bool)

(assert (=> b!2246654 (= e!1437458 (not lt!835528))))

(declare-fun b!2246655 () Bool)

(assert (=> b!2246655 (= e!1437462 e!1437458)))

(declare-fun c!357433 () Bool)

(assert (=> b!2246655 (= c!357433 ((_ is EmptyLang!6559) (regex!4211 otherR!12)))))

(declare-fun b!2246656 () Bool)

(assert (=> b!2246656 (= e!1437462 (= lt!835528 call!135446))))

(declare-fun b!2246657 () Bool)

(assert (=> b!2246657 (= e!1437457 (nullable!1798 (regex!4211 otherR!12)))))

(declare-fun b!2246658 () Bool)

(assert (=> b!2246658 (= e!1437460 (= (head!4772 otherP!12) (c!357351 (regex!4211 otherR!12))))))

(declare-fun b!2246659 () Bool)

(assert (=> b!2246659 (= e!1437456 (not (= (head!4772 otherP!12) (c!357351 (regex!4211 otherR!12)))))))

(declare-fun b!2246660 () Bool)

(assert (=> b!2246660 (= e!1437459 e!1437456)))

(declare-fun res!960026 () Bool)

(assert (=> b!2246660 (=> res!960026 e!1437456)))

(assert (=> b!2246660 (= res!960026 call!135446)))

(declare-fun b!2246661 () Bool)

(declare-fun res!960024 () Bool)

(assert (=> b!2246661 (=> res!960024 e!1437461)))

(assert (=> b!2246661 (= res!960024 (not ((_ is ElementMatch!6559) (regex!4211 otherR!12))))))

(assert (=> b!2246661 (= e!1437458 e!1437461)))

(assert (= (and d!666757 c!357432) b!2246657))

(assert (= (and d!666757 (not c!357432)) b!2246653))

(assert (= (and d!666757 c!357434) b!2246656))

(assert (= (and d!666757 (not c!357434)) b!2246655))

(assert (= (and b!2246655 c!357433) b!2246654))

(assert (= (and b!2246655 (not c!357433)) b!2246661))

(assert (= (and b!2246661 (not res!960024)) b!2246649))

(assert (= (and b!2246649 res!960027) b!2246652))

(assert (= (and b!2246652 res!960029) b!2246650))

(assert (= (and b!2246650 res!960028) b!2246658))

(assert (= (and b!2246649 (not res!960025)) b!2246651))

(assert (= (and b!2246651 res!960022) b!2246660))

(assert (= (and b!2246660 (not res!960026)) b!2246648))

(assert (= (and b!2246648 (not res!960023)) b!2246659))

(assert (= (or b!2246656 b!2246652 b!2246660) bm!135441))

(declare-fun m!2678079 () Bool)

(assert (=> b!2246658 m!2678079))

(assert (=> b!2246659 m!2678079))

(declare-fun m!2678081 () Bool)

(assert (=> bm!135441 m!2678081))

(declare-fun m!2678083 () Bool)

(assert (=> b!2246650 m!2678083))

(assert (=> b!2246650 m!2678083))

(declare-fun m!2678085 () Bool)

(assert (=> b!2246650 m!2678085))

(assert (=> b!2246657 m!2677857))

(assert (=> b!2246648 m!2678083))

(assert (=> b!2246648 m!2678083))

(assert (=> b!2246648 m!2678085))

(assert (=> b!2246653 m!2678079))

(assert (=> b!2246653 m!2678079))

(declare-fun m!2678087 () Bool)

(assert (=> b!2246653 m!2678087))

(assert (=> b!2246653 m!2678083))

(assert (=> b!2246653 m!2678087))

(assert (=> b!2246653 m!2678083))

(declare-fun m!2678089 () Bool)

(assert (=> b!2246653 m!2678089))

(assert (=> d!666757 m!2678081))

(assert (=> d!666757 m!2677659))

(assert (=> b!2246181 d!666757))

(declare-fun d!666759 () Bool)

(assert (=> d!666759 (not (matchR!2820 (regex!4211 otherR!12) otherP!12))))

(declare-fun lt!835531 () Unit!39550)

(declare-fun choose!13161 (LexerInterface!3808 Rule!8222 List!26686 List!26686) Unit!39550)

(assert (=> d!666759 (= lt!835531 (choose!13161 thiss!16613 otherR!12 otherP!12 input!1722))))

(assert (=> d!666759 (isPrefix!2201 otherP!12 input!1722)))

(assert (=> d!666759 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!389 thiss!16613 otherR!12 otherP!12 input!1722) lt!835531)))

(declare-fun bs!454823 () Bool)

(assert (= bs!454823 d!666759))

(assert (=> bs!454823 m!2677703))

(declare-fun m!2678091 () Bool)

(assert (=> bs!454823 m!2678091))

(assert (=> bs!454823 m!2677671))

(assert (=> b!2246181 d!666759))

(declare-fun b!2246670 () Bool)

(declare-fun e!1437471 () Bool)

(declare-fun e!1437469 () Bool)

(assert (=> b!2246670 (= e!1437471 e!1437469)))

(declare-fun res!960039 () Bool)

(assert (=> b!2246670 (=> (not res!960039) (not e!1437469))))

(assert (=> b!2246670 (= res!960039 (not ((_ is Nil!26592) input!1722)))))

(declare-fun b!2246673 () Bool)

(declare-fun e!1437470 () Bool)

(assert (=> b!2246673 (= e!1437470 (>= (size!20793 input!1722) (size!20793 otherP!12)))))

(declare-fun d!666761 () Bool)

(assert (=> d!666761 e!1437470))

(declare-fun res!960038 () Bool)

(assert (=> d!666761 (=> res!960038 e!1437470)))

(declare-fun lt!835534 () Bool)

(assert (=> d!666761 (= res!960038 (not lt!835534))))

(assert (=> d!666761 (= lt!835534 e!1437471)))

(declare-fun res!960040 () Bool)

(assert (=> d!666761 (=> res!960040 e!1437471)))

(assert (=> d!666761 (= res!960040 ((_ is Nil!26592) otherP!12))))

(assert (=> d!666761 (= (isPrefix!2201 otherP!12 input!1722) lt!835534)))

(declare-fun b!2246671 () Bool)

(declare-fun res!960041 () Bool)

(assert (=> b!2246671 (=> (not res!960041) (not e!1437469))))

(assert (=> b!2246671 (= res!960041 (= (head!4772 otherP!12) (head!4772 input!1722)))))

(declare-fun b!2246672 () Bool)

(assert (=> b!2246672 (= e!1437469 (isPrefix!2201 (tail!3241 otherP!12) (tail!3241 input!1722)))))

(assert (= (and d!666761 (not res!960040)) b!2246670))

(assert (= (and b!2246670 res!960039) b!2246671))

(assert (= (and b!2246671 res!960041) b!2246672))

(assert (= (and d!666761 (not res!960038)) b!2246673))

(assert (=> b!2246673 m!2678041))

(assert (=> b!2246673 m!2677641))

(assert (=> b!2246671 m!2678079))

(declare-fun m!2678093 () Bool)

(assert (=> b!2246671 m!2678093))

(assert (=> b!2246672 m!2678083))

(declare-fun m!2678095 () Bool)

(assert (=> b!2246672 m!2678095))

(assert (=> b!2246672 m!2678083))

(assert (=> b!2246672 m!2678095))

(declare-fun m!2678097 () Bool)

(assert (=> b!2246672 m!2678097))

(assert (=> b!2246192 d!666761))

(declare-fun b!2246684 () Bool)

(declare-fun b_free!65605 () Bool)

(declare-fun b_next!66309 () Bool)

(assert (=> b!2246684 (= b_free!65605 (not b_next!66309))))

(declare-fun tp!709312 () Bool)

(declare-fun b_and!175777 () Bool)

(assert (=> b!2246684 (= tp!709312 b_and!175777)))

(declare-fun b_free!65607 () Bool)

(declare-fun b_next!66311 () Bool)

(assert (=> b!2246684 (= b_free!65607 (not b_next!66311))))

(declare-fun t!200428 () Bool)

(declare-fun tb!133079 () Bool)

(assert (=> (and b!2246684 (= (toChars!5800 (transformation!4211 (h!31994 (t!200385 rules!1750)))) (toChars!5800 (transformation!4211 (rule!6509 (head!4770 tokens!456))))) t!200428) tb!133079))

(declare-fun result!162220 () Bool)

(assert (= result!162220 result!162176))

(assert (=> d!666653 t!200428))

(declare-fun tb!133081 () Bool)

(declare-fun t!200430 () Bool)

(assert (=> (and b!2246684 (= (toChars!5800 (transformation!4211 (h!31994 (t!200385 rules!1750)))) (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456))))) t!200430) tb!133081))

(declare-fun result!162222 () Bool)

(assert (= result!162222 result!162194))

(assert (=> b!2246521 t!200430))

(declare-fun b_and!175779 () Bool)

(declare-fun tp!709310 () Bool)

(assert (=> b!2246684 (= tp!709310 (and (=> t!200428 result!162220) (=> t!200430 result!162222) b_and!175779))))

(declare-fun e!1437481 () Bool)

(assert (=> b!2246684 (= e!1437481 (and tp!709312 tp!709310))))

(declare-fun tp!709311 () Bool)

(declare-fun b!2246683 () Bool)

(declare-fun e!1437480 () Bool)

(assert (=> b!2246683 (= e!1437480 (and tp!709311 (inv!36114 (tag!4701 (h!31994 (t!200385 rules!1750)))) (inv!36117 (transformation!4211 (h!31994 (t!200385 rules!1750)))) e!1437481))))

(declare-fun b!2246682 () Bool)

(declare-fun e!1437483 () Bool)

(declare-fun tp!709309 () Bool)

(assert (=> b!2246682 (= e!1437483 (and e!1437480 tp!709309))))

(assert (=> b!2246163 (= tp!709215 e!1437483)))

(assert (= b!2246683 b!2246684))

(assert (= b!2246682 b!2246683))

(assert (= (and b!2246163 ((_ is Cons!26593) (t!200385 rules!1750))) b!2246682))

(declare-fun m!2678099 () Bool)

(assert (=> b!2246683 m!2678099))

(declare-fun m!2678101 () Bool)

(assert (=> b!2246683 m!2678101))

(declare-fun b!2246689 () Bool)

(declare-fun e!1437486 () Bool)

(declare-fun tp!709315 () Bool)

(assert (=> b!2246689 (= e!1437486 (and tp_is_empty!10339 tp!709315))))

(assert (=> b!2246174 (= tp!709218 e!1437486)))

(assert (= (and b!2246174 ((_ is Cons!26592) (originalCharacters!4981 (h!31995 tokens!456)))) b!2246689))

(declare-fun b!2246690 () Bool)

(declare-fun e!1437487 () Bool)

(declare-fun tp!709316 () Bool)

(assert (=> b!2246690 (= e!1437487 (and tp_is_empty!10339 tp!709316))))

(assert (=> b!2246185 (= tp!709223 e!1437487)))

(assert (= (and b!2246185 ((_ is Cons!26592) (t!200384 otherP!12))) b!2246690))

(declare-fun b!2246704 () Bool)

(declare-fun e!1437490 () Bool)

(declare-fun tp!709330 () Bool)

(declare-fun tp!709331 () Bool)

(assert (=> b!2246704 (= e!1437490 (and tp!709330 tp!709331))))

(assert (=> b!2246164 (= tp!709216 e!1437490)))

(declare-fun b!2246702 () Bool)

(declare-fun tp!709327 () Bool)

(declare-fun tp!709329 () Bool)

(assert (=> b!2246702 (= e!1437490 (and tp!709327 tp!709329))))

(declare-fun b!2246703 () Bool)

(declare-fun tp!709328 () Bool)

(assert (=> b!2246703 (= e!1437490 tp!709328)))

(declare-fun b!2246701 () Bool)

(assert (=> b!2246701 (= e!1437490 tp_is_empty!10339)))

(assert (= (and b!2246164 ((_ is ElementMatch!6559) (regex!4211 otherR!12))) b!2246701))

(assert (= (and b!2246164 ((_ is Concat!10933) (regex!4211 otherR!12))) b!2246702))

(assert (= (and b!2246164 ((_ is Star!6559) (regex!4211 otherR!12))) b!2246703))

(assert (= (and b!2246164 ((_ is Union!6559) (regex!4211 otherR!12))) b!2246704))

(declare-fun b!2246708 () Bool)

(declare-fun e!1437491 () Bool)

(declare-fun tp!709335 () Bool)

(declare-fun tp!709336 () Bool)

(assert (=> b!2246708 (= e!1437491 (and tp!709335 tp!709336))))

(assert (=> b!2246175 (= tp!709219 e!1437491)))

(declare-fun b!2246706 () Bool)

(declare-fun tp!709332 () Bool)

(declare-fun tp!709334 () Bool)

(assert (=> b!2246706 (= e!1437491 (and tp!709332 tp!709334))))

(declare-fun b!2246707 () Bool)

(declare-fun tp!709333 () Bool)

(assert (=> b!2246707 (= e!1437491 tp!709333)))

(declare-fun b!2246705 () Bool)

(assert (=> b!2246705 (= e!1437491 tp_is_empty!10339)))

(assert (= (and b!2246175 ((_ is ElementMatch!6559) (regex!4211 (h!31994 rules!1750)))) b!2246705))

(assert (= (and b!2246175 ((_ is Concat!10933) (regex!4211 (h!31994 rules!1750)))) b!2246706))

(assert (= (and b!2246175 ((_ is Star!6559) (regex!4211 (h!31994 rules!1750)))) b!2246707))

(assert (= (and b!2246175 ((_ is Union!6559) (regex!4211 (h!31994 rules!1750)))) b!2246708))

(declare-fun b!2246722 () Bool)

(declare-fun b_free!65609 () Bool)

(declare-fun b_next!66313 () Bool)

(assert (=> b!2246722 (= b_free!65609 (not b_next!66313))))

(declare-fun tp!709350 () Bool)

(declare-fun b_and!175781 () Bool)

(assert (=> b!2246722 (= tp!709350 b_and!175781)))

(declare-fun b_free!65611 () Bool)

(declare-fun b_next!66315 () Bool)

(assert (=> b!2246722 (= b_free!65611 (not b_next!66315))))

(declare-fun t!200432 () Bool)

(declare-fun tb!133083 () Bool)

(assert (=> (and b!2246722 (= (toChars!5800 (transformation!4211 (rule!6509 (h!31995 (t!200386 tokens!456))))) (toChars!5800 (transformation!4211 (rule!6509 (head!4770 tokens!456))))) t!200432) tb!133083))

(declare-fun result!162230 () Bool)

(assert (= result!162230 result!162176))

(assert (=> d!666653 t!200432))

(declare-fun t!200434 () Bool)

(declare-fun tb!133085 () Bool)

(assert (=> (and b!2246722 (= (toChars!5800 (transformation!4211 (rule!6509 (h!31995 (t!200386 tokens!456))))) (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456))))) t!200434) tb!133085))

(declare-fun result!162232 () Bool)

(assert (= result!162232 result!162194))

(assert (=> b!2246521 t!200434))

(declare-fun tp!709351 () Bool)

(declare-fun b_and!175783 () Bool)

(assert (=> b!2246722 (= tp!709351 (and (=> t!200432 result!162230) (=> t!200434 result!162232) b_and!175783))))

(declare-fun e!1437508 () Bool)

(declare-fun b!2246721 () Bool)

(declare-fun tp!709347 () Bool)

(declare-fun e!1437509 () Bool)

(assert (=> b!2246721 (= e!1437508 (and tp!709347 (inv!36114 (tag!4701 (rule!6509 (h!31995 (t!200386 tokens!456))))) (inv!36117 (transformation!4211 (rule!6509 (h!31995 (t!200386 tokens!456))))) e!1437509))))

(assert (=> b!2246722 (= e!1437509 (and tp!709350 tp!709351))))

(declare-fun tp!709349 () Bool)

(declare-fun b!2246720 () Bool)

(declare-fun e!1437506 () Bool)

(assert (=> b!2246720 (= e!1437506 (and (inv!21 (value!133833 (h!31995 (t!200386 tokens!456)))) e!1437508 tp!709349))))

(declare-fun e!1437505 () Bool)

(assert (=> b!2246176 (= tp!709226 e!1437505)))

(declare-fun b!2246719 () Bool)

(declare-fun tp!709348 () Bool)

(assert (=> b!2246719 (= e!1437505 (and (inv!36118 (h!31995 (t!200386 tokens!456))) e!1437506 tp!709348))))

(assert (= b!2246721 b!2246722))

(assert (= b!2246720 b!2246721))

(assert (= b!2246719 b!2246720))

(assert (= (and b!2246176 ((_ is Cons!26594) (t!200386 tokens!456))) b!2246719))

(declare-fun m!2678103 () Bool)

(assert (=> b!2246721 m!2678103))

(declare-fun m!2678105 () Bool)

(assert (=> b!2246721 m!2678105))

(declare-fun m!2678107 () Bool)

(assert (=> b!2246720 m!2678107))

(declare-fun m!2678109 () Bool)

(assert (=> b!2246719 m!2678109))

(declare-fun b!2246723 () Bool)

(declare-fun e!1437510 () Bool)

(declare-fun tp!709352 () Bool)

(assert (=> b!2246723 (= e!1437510 (and tp_is_empty!10339 tp!709352))))

(assert (=> b!2246183 (= tp!709217 e!1437510)))

(assert (= (and b!2246183 ((_ is Cons!26592) (t!200384 input!1722))) b!2246723))

(declare-fun b!2246727 () Bool)

(declare-fun e!1437511 () Bool)

(declare-fun tp!709356 () Bool)

(declare-fun tp!709357 () Bool)

(assert (=> b!2246727 (= e!1437511 (and tp!709356 tp!709357))))

(assert (=> b!2246173 (= tp!709214 e!1437511)))

(declare-fun b!2246725 () Bool)

(declare-fun tp!709353 () Bool)

(declare-fun tp!709355 () Bool)

(assert (=> b!2246725 (= e!1437511 (and tp!709353 tp!709355))))

(declare-fun b!2246726 () Bool)

(declare-fun tp!709354 () Bool)

(assert (=> b!2246726 (= e!1437511 tp!709354)))

(declare-fun b!2246724 () Bool)

(assert (=> b!2246724 (= e!1437511 tp_is_empty!10339)))

(assert (= (and b!2246173 ((_ is ElementMatch!6559) (regex!4211 (rule!6509 (h!31995 tokens!456))))) b!2246724))

(assert (= (and b!2246173 ((_ is Concat!10933) (regex!4211 (rule!6509 (h!31995 tokens!456))))) b!2246725))

(assert (= (and b!2246173 ((_ is Star!6559) (regex!4211 (rule!6509 (h!31995 tokens!456))))) b!2246726))

(assert (= (and b!2246173 ((_ is Union!6559) (regex!4211 (rule!6509 (h!31995 tokens!456))))) b!2246727))

(declare-fun b!2246731 () Bool)

(declare-fun e!1437512 () Bool)

(declare-fun tp!709361 () Bool)

(declare-fun tp!709362 () Bool)

(assert (=> b!2246731 (= e!1437512 (and tp!709361 tp!709362))))

(assert (=> b!2246184 (= tp!709225 e!1437512)))

(declare-fun b!2246729 () Bool)

(declare-fun tp!709358 () Bool)

(declare-fun tp!709360 () Bool)

(assert (=> b!2246729 (= e!1437512 (and tp!709358 tp!709360))))

(declare-fun b!2246730 () Bool)

(declare-fun tp!709359 () Bool)

(assert (=> b!2246730 (= e!1437512 tp!709359)))

(declare-fun b!2246728 () Bool)

(assert (=> b!2246728 (= e!1437512 tp_is_empty!10339)))

(assert (= (and b!2246184 ((_ is ElementMatch!6559) (regex!4211 r!2363))) b!2246728))

(assert (= (and b!2246184 ((_ is Concat!10933) (regex!4211 r!2363))) b!2246729))

(assert (= (and b!2246184 ((_ is Star!6559) (regex!4211 r!2363))) b!2246730))

(assert (= (and b!2246184 ((_ is Union!6559) (regex!4211 r!2363))) b!2246731))

(declare-fun b!2246732 () Bool)

(declare-fun e!1437513 () Bool)

(declare-fun tp!709363 () Bool)

(assert (=> b!2246732 (= e!1437513 (and tp_is_empty!10339 tp!709363))))

(assert (=> b!2246190 (= tp!709224 e!1437513)))

(assert (= (and b!2246190 ((_ is Cons!26592) (t!200384 suffix!886))) b!2246732))

(declare-fun b_lambda!71855 () Bool)

(assert (= b_lambda!71851 (or (and b!2246684 b_free!65607 (= (toChars!5800 (transformation!4211 (h!31994 (t!200385 rules!1750)))) (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456)))))) (and b!2246171 b_free!65595) (and b!2246170 b_free!65587 (= (toChars!5800 (transformation!4211 otherR!12)) (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456)))))) (and b!2246722 b_free!65611 (= (toChars!5800 (transformation!4211 (rule!6509 (h!31995 (t!200386 tokens!456))))) (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456)))))) (and b!2246191 b_free!65591 (= (toChars!5800 (transformation!4211 (h!31994 rules!1750))) (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456)))))) (and b!2246168 b_free!65583 (= (toChars!5800 (transformation!4211 r!2363)) (toChars!5800 (transformation!4211 (rule!6509 (h!31995 tokens!456)))))) b_lambda!71855)))

(check-sat (not b!2246494) (not d!666729) (not d!666723) (not b!2246430) (not b_next!66295) (not b!2246642) (not b!2246646) (not b!2246650) b_and!175783 (not d!666689) (not b_next!66315) (not b_lambda!71847) (not b!2246384) (not b!2246526) (not d!666709) (not b!2246644) (not d!666643) (not bm!135427) (not b_next!66285) (not b_next!66313) (not bm!135441) (not d!666687) (not b!2246501) (not b!2246402) (not b!2246653) (not d!666679) (not b!2246503) (not d!666613) (not b!2246657) (not b!2246725) (not b_next!66293) (not b!2246522) (not b!2246702) (not b!2246512) (not b!2246645) (not b!2246641) b_and!175765 (not b!2246648) (not d!666707) (not d!666663) (not b_next!66287) (not b!2246278) (not d!666615) b_and!175729 (not d!666645) (not d!666759) (not bm!135431) (not b_next!66299) (not d!666737) (not b!2246492) (not b!2246497) (not d!666725) b_and!175721 (not b!2246323) (not b!2246690) (not b!2246298) (not b!2246255) (not b!2246256) (not d!666649) (not b_next!66311) (not d!666733) (not b!2246640) (not b_next!66289) (not b!2246683) (not tb!133063) (not b_next!66309) (not b!2246529) (not b_next!66291) (not b!2246708) (not tb!133047) tp_is_empty!10339 b_and!175761 (not b!2246731) (not bm!135426) (not b!2246727) (not d!666611) (not b!2246720) b_and!175763 (not d!666757) (not d!666653) (not d!666753) (not b!2246403) (not b_lambda!71855) (not b!2246313) (not b!2246689) (not b!2246726) b_and!175767 (not b!2246254) (not b!2246707) (not b!2246523) (not b!2246682) (not b!2246672) (not b!2246659) (not d!666665) b_and!175779 (not b!2246309) b_and!175725 (not d!666713) (not b!2246643) (not b_next!66297) (not b!2246723) (not b!2246406) b_and!175733 b_and!175781 (not b!2246719) (not b!2246549) b_and!175777 (not b!2246732) (not b!2246253) (not b!2246521) (not b!2246703) (not d!666657) (not b!2246502) (not b!2246673) (not b!2246425) (not d!666721) (not b!2246721) (not b!2246704) (not b!2246706) (not b!2246729) (not b!2246534) (not b!2246292) (not b!2246730) (not d!666661) (not b!2246658) (not b!2246639) (not b!2246671))
(check-sat (not b_next!66293) (not b_next!66299) b_and!175721 b_and!175761 b_and!175763 b_and!175767 (not b_next!66297) b_and!175777 (not b_next!66295) (not b_next!66315) b_and!175783 (not b_next!66285) (not b_next!66313) b_and!175765 (not b_next!66287) b_and!175729 (not b_next!66311) (not b_next!66289) (not b_next!66309) (not b_next!66291) b_and!175779 b_and!175725 b_and!175781 b_and!175733)
