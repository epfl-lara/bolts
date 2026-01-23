; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!250230 () Bool)

(assert start!250230)

(declare-fun b!2584261 () Bool)

(declare-fun b_free!72741 () Bool)

(declare-fun b_next!73445 () Bool)

(assert (=> b!2584261 (= b_free!72741 (not b_next!73445))))

(declare-fun tp!820380 () Bool)

(declare-fun b_and!189323 () Bool)

(assert (=> b!2584261 (= tp!820380 b_and!189323)))

(declare-fun b_free!72743 () Bool)

(declare-fun b_next!73447 () Bool)

(assert (=> b!2584261 (= b_free!72743 (not b_next!73447))))

(declare-fun tp!820384 () Bool)

(declare-fun b_and!189325 () Bool)

(assert (=> b!2584261 (= tp!820384 b_and!189325)))

(declare-fun b!2584277 () Bool)

(declare-fun b_free!72745 () Bool)

(declare-fun b_next!73449 () Bool)

(assert (=> b!2584277 (= b_free!72745 (not b_next!73449))))

(declare-fun tp!820388 () Bool)

(declare-fun b_and!189327 () Bool)

(assert (=> b!2584277 (= tp!820388 b_and!189327)))

(declare-fun b_free!72747 () Bool)

(declare-fun b_next!73451 () Bool)

(assert (=> b!2584277 (= b_free!72747 (not b_next!73451))))

(declare-fun tp!820393 () Bool)

(declare-fun b_and!189329 () Bool)

(assert (=> b!2584277 (= tp!820393 b_and!189329)))

(declare-fun b!2584274 () Bool)

(declare-fun b_free!72749 () Bool)

(declare-fun b_next!73453 () Bool)

(assert (=> b!2584274 (= b_free!72749 (not b_next!73453))))

(declare-fun tp!820394 () Bool)

(declare-fun b_and!189331 () Bool)

(assert (=> b!2584274 (= tp!820394 b_and!189331)))

(declare-fun b_free!72751 () Bool)

(declare-fun b_next!73455 () Bool)

(assert (=> b!2584274 (= b_free!72751 (not b_next!73455))))

(declare-fun tp!820379 () Bool)

(declare-fun b_and!189333 () Bool)

(assert (=> b!2584274 (= tp!820379 b_and!189333)))

(declare-fun b!2584271 () Bool)

(declare-fun b_free!72753 () Bool)

(declare-fun b_next!73457 () Bool)

(assert (=> b!2584271 (= b_free!72753 (not b_next!73457))))

(declare-fun tp!820392 () Bool)

(declare-fun b_and!189335 () Bool)

(assert (=> b!2584271 (= tp!820392 b_and!189335)))

(declare-fun b_free!72755 () Bool)

(declare-fun b_next!73459 () Bool)

(assert (=> b!2584271 (= b_free!72755 (not b_next!73459))))

(declare-fun tp!820382 () Bool)

(declare-fun b_and!189337 () Bool)

(assert (=> b!2584271 (= tp!820382 b_and!189337)))

(declare-fun b!2584254 () Bool)

(declare-fun res!1086739 () Bool)

(declare-fun e!1630573 () Bool)

(assert (=> b!2584254 (=> (not res!1086739) (not e!1630573))))

(declare-datatypes ((List!29842 0))(
  ( (Nil!29742) (Cons!29742 (h!35162 (_ BitVec 16)) (t!212111 List!29842)) )
))
(declare-datatypes ((TokenValue!4738 0))(
  ( (FloatLiteralValue!9476 (text!33611 List!29842)) (TokenValueExt!4737 (__x!19309 Int)) (Broken!23690 (value!145929 List!29842)) (Object!4837) (End!4738) (Def!4738) (Underscore!4738) (Match!4738) (Else!4738) (Error!4738) (Case!4738) (If!4738) (Extends!4738) (Abstract!4738) (Class!4738) (Val!4738) (DelimiterValue!9476 (del!4798 List!29842)) (KeywordValue!4744 (value!145930 List!29842)) (CommentValue!9476 (value!145931 List!29842)) (WhitespaceValue!9476 (value!145932 List!29842)) (IndentationValue!4738 (value!145933 List!29842)) (String!33099) (Int32!4738) (Broken!23691 (value!145934 List!29842)) (Boolean!4739) (Unit!43584) (OperatorValue!4741 (op!4798 List!29842)) (IdentifierValue!9476 (value!145935 List!29842)) (IdentifierValue!9477 (value!145936 List!29842)) (WhitespaceValue!9477 (value!145937 List!29842)) (True!9476) (False!9476) (Broken!23692 (value!145938 List!29842)) (Broken!23693 (value!145939 List!29842)) (True!9477) (RightBrace!4738) (RightBracket!4738) (Colon!4738) (Null!4738) (Comma!4738) (LeftBracket!4738) (False!9477) (LeftBrace!4738) (ImaginaryLiteralValue!4738 (text!33612 List!29842)) (StringLiteralValue!14214 (value!145940 List!29842)) (EOFValue!4738 (value!145941 List!29842)) (IdentValue!4738 (value!145942 List!29842)) (DelimiterValue!9477 (value!145943 List!29842)) (DedentValue!4738 (value!145944 List!29842)) (NewLineValue!4738 (value!145945 List!29842)) (IntegerValue!14214 (value!145946 (_ BitVec 32)) (text!33613 List!29842)) (IntegerValue!14215 (value!145947 Int) (text!33614 List!29842)) (Times!4738) (Or!4738) (Equal!4738) (Minus!4738) (Broken!23694 (value!145948 List!29842)) (And!4738) (Div!4738) (LessEqual!4738) (Mod!4738) (Concat!12398) (Not!4738) (Plus!4738) (SpaceValue!4738 (value!145949 List!29842)) (IntegerValue!14216 (value!145950 Int) (text!33615 List!29842)) (StringLiteralValue!14215 (text!33616 List!29842)) (FloatLiteralValue!9477 (text!33617 List!29842)) (BytesLiteralValue!4738 (value!145951 List!29842)) (CommentValue!9477 (value!145952 List!29842)) (StringLiteralValue!14216 (value!145953 List!29842)) (ErrorTokenValue!4738 (msg!4799 List!29842)) )
))
(declare-datatypes ((C!15478 0))(
  ( (C!15479 (val!9435 Int)) )
))
(declare-datatypes ((List!29843 0))(
  ( (Nil!29743) (Cons!29743 (h!35163 C!15478) (t!212112 List!29843)) )
))
(declare-datatypes ((IArray!18569 0))(
  ( (IArray!18570 (innerList!9342 List!29843)) )
))
(declare-datatypes ((Conc!9282 0))(
  ( (Node!9282 (left!22673 Conc!9282) (right!23003 Conc!9282) (csize!18794 Int) (cheight!9493 Int)) (Leaf!14162 (xs!12266 IArray!18569) (csize!18795 Int)) (Empty!9282) )
))
(declare-datatypes ((BalanceConc!18178 0))(
  ( (BalanceConc!18179 (c!416670 Conc!9282)) )
))
(declare-datatypes ((TokenValueInjection!8916 0))(
  ( (TokenValueInjection!8917 (toValue!6406 Int) (toChars!6265 Int)) )
))
(declare-datatypes ((Regex!7660 0))(
  ( (ElementMatch!7660 (c!416671 C!15478)) (Concat!12399 (regOne!15832 Regex!7660) (regTwo!15832 Regex!7660)) (EmptyExpr!7660) (Star!7660 (reg!7989 Regex!7660)) (EmptyLang!7660) (Union!7660 (regOne!15833 Regex!7660) (regTwo!15833 Regex!7660)) )
))
(declare-datatypes ((String!33100 0))(
  ( (String!33101 (value!145954 String)) )
))
(declare-datatypes ((Rule!8832 0))(
  ( (Rule!8833 (regex!4516 Regex!7660) (tag!5006 String!33100) (isSeparator!4516 Bool) (transformation!4516 TokenValueInjection!8916)) )
))
(declare-datatypes ((Token!8502 0))(
  ( (Token!8503 (value!145955 TokenValue!4738) (rule!6878 Rule!8832) (size!23059 Int) (originalCharacters!5282 List!29843)) )
))
(declare-fun token!562 () Token!8502)

(declare-fun rule!570 () Rule!8832)

(assert (=> b!2584254 (= res!1086739 (= (rule!6878 token!562) rule!570))))

(declare-fun b!2584255 () Bool)

(declare-fun tp!820383 () Bool)

(declare-fun e!1630571 () Bool)

(declare-fun e!1630578 () Bool)

(declare-fun inv!40169 (String!33100) Bool)

(declare-fun inv!40172 (TokenValueInjection!8916) Bool)

(assert (=> b!2584255 (= e!1630571 (and tp!820383 (inv!40169 (tag!5006 rule!570)) (inv!40172 (transformation!4516 rule!570)) e!1630578))))

(declare-fun b!2584256 () Bool)

(declare-fun e!1630583 () Bool)

(declare-fun lt!908899 () List!29843)

(declare-fun matchR!3593 (Regex!7660 List!29843) Bool)

(assert (=> b!2584256 (= e!1630583 (not (not (matchR!3593 (regex!4516 rule!570) lt!908899))))))

(declare-datatypes ((LexerInterface!4113 0))(
  ( (LexerInterfaceExt!4110 (__x!19310 Int)) (Lexer!4111) )
))
(declare-fun thiss!28211 () LexerInterface!4113)

(declare-fun ruleValid!1522 (LexerInterface!4113 Rule!8832) Bool)

(assert (=> b!2584256 (ruleValid!1522 thiss!28211 rule!570)))

(declare-datatypes ((List!29844 0))(
  ( (Nil!29744) (Cons!29744 (h!35164 Rule!8832) (t!212113 List!29844)) )
))
(declare-fun rules!4580 () List!29844)

(declare-datatypes ((Unit!43585 0))(
  ( (Unit!43586) )
))
(declare-fun lt!908896 () Unit!43585)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!915 (LexerInterface!4113 Rule!8832 List!29844) Unit!43585)

(assert (=> b!2584256 (= lt!908896 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!915 thiss!28211 rule!570 rules!4580))))

(declare-fun rs!798 () List!29844)

(declare-fun lambda!95754 () Int)

(declare-fun e!1630576 () Bool)

(declare-fun b!2584257 () Bool)

(declare-fun lambda!95753 () Int)

(declare-datatypes ((List!29845 0))(
  ( (Nil!29745) (Cons!29745 (h!35165 Regex!7660) (t!212114 List!29845)) )
))
(declare-fun forall!6058 (List!29845 Int) Bool)

(declare-fun map!6602 (List!29844 Int) List!29845)

(assert (=> b!2584257 (= e!1630576 (forall!6058 (map!6602 rs!798 lambda!95753) lambda!95754))))

(declare-fun b!2584258 () Bool)

(declare-fun res!1086745 () Bool)

(assert (=> b!2584258 (=> (not res!1086745) (not e!1630573))))

(declare-fun input!3654 () List!29843)

(declare-fun suffix!1684 () List!29843)

(declare-datatypes ((tuple2!29700 0))(
  ( (tuple2!29701 (_1!17392 Token!8502) (_2!17392 List!29843)) )
))
(declare-datatypes ((Option!5931 0))(
  ( (None!5930) (Some!5930 (v!32029 tuple2!29700)) )
))
(declare-fun maxPrefix!2285 (LexerInterface!4113 List!29844 List!29843) Option!5931)

(assert (=> b!2584258 (= res!1086745 (= (maxPrefix!2285 thiss!28211 rules!4580 input!3654) (Some!5930 (tuple2!29701 token!562 suffix!1684))))))

(declare-fun b!2584259 () Bool)

(declare-fun e!1630575 () Bool)

(declare-fun tp_is_empty!13215 () Bool)

(declare-fun tp!820385 () Bool)

(assert (=> b!2584259 (= e!1630575 (and tp_is_empty!13215 tp!820385))))

(declare-fun b!2584260 () Bool)

(declare-fun res!1086734 () Bool)

(assert (=> b!2584260 (=> (not res!1086734) (not e!1630573))))

(assert (=> b!2584260 (= res!1086734 e!1630583)))

(declare-fun res!1086738 () Bool)

(assert (=> b!2584260 (=> (not res!1086738) (not e!1630583))))

(declare-fun ++!7306 (List!29843 List!29843) List!29843)

(assert (=> b!2584260 (= res!1086738 (= input!3654 (++!7306 lt!908899 suffix!1684)))))

(declare-fun list!11244 (BalanceConc!18178) List!29843)

(declare-fun charsOf!2845 (Token!8502) BalanceConc!18178)

(assert (=> b!2584260 (= lt!908899 (list!11244 (charsOf!2845 token!562)))))

(declare-fun e!1630569 () Bool)

(assert (=> b!2584261 (= e!1630569 (and tp!820380 tp!820384))))

(declare-fun b!2584262 () Bool)

(declare-fun e!1630574 () Bool)

(declare-fun tp!820381 () Bool)

(assert (=> b!2584262 (= e!1630574 (and tp_is_empty!13215 tp!820381))))

(declare-fun b!2584263 () Bool)

(declare-fun e!1630572 () Bool)

(declare-fun tp!820390 () Bool)

(assert (=> b!2584263 (= e!1630572 (and tp!820390 (inv!40169 (tag!5006 (h!35164 rs!798))) (inv!40172 (transformation!4516 (h!35164 rs!798))) e!1630569))))

(declare-fun b!2584264 () Bool)

(declare-fun res!1086735 () Bool)

(assert (=> b!2584264 (=> res!1086735 e!1630576)))

(declare-fun rulesValid!1688 (LexerInterface!4113 List!29844) Bool)

(assert (=> b!2584264 (= res!1086735 (not (rulesValid!1688 thiss!28211 rs!798)))))

(declare-fun b!2584265 () Bool)

(declare-fun res!1086742 () Bool)

(assert (=> b!2584265 (=> (not res!1086742) (not e!1630573))))

(declare-fun rulesInvariant!3613 (LexerInterface!4113 List!29844) Bool)

(assert (=> b!2584265 (= res!1086742 (rulesInvariant!3613 thiss!28211 rules!4580))))

(declare-fun b!2584266 () Bool)

(declare-fun res!1086736 () Bool)

(assert (=> b!2584266 (=> res!1086736 e!1630576)))

(declare-fun lt!908898 () List!29843)

(assert (=> b!2584266 (= res!1086736 (not (matchR!3593 (regex!4516 rule!570) lt!908898)))))

(declare-fun e!1630582 () Bool)

(declare-fun tp!820387 () Bool)

(declare-fun e!1630586 () Bool)

(declare-fun b!2584267 () Bool)

(assert (=> b!2584267 (= e!1630582 (and tp!820387 (inv!40169 (tag!5006 (h!35164 rules!4580))) (inv!40172 (transformation!4516 (h!35164 rules!4580))) e!1630586))))

(declare-fun b!2584269 () Bool)

(declare-fun res!1086740 () Bool)

(assert (=> b!2584269 (=> res!1086740 e!1630576)))

(assert (=> b!2584269 (= res!1086740 (not (is-Nil!29744 rs!798)))))

(declare-fun b!2584270 () Bool)

(declare-fun res!1086744 () Bool)

(assert (=> b!2584270 (=> (not res!1086744) (not e!1630573))))

(declare-fun contains!5320 (List!29844 Rule!8832) Bool)

(assert (=> b!2584270 (= res!1086744 (contains!5320 rules!4580 rule!570))))

(assert (=> b!2584271 (= e!1630586 (and tp!820392 tp!820382))))

(declare-fun b!2584272 () Bool)

(declare-fun e!1630577 () Bool)

(declare-fun tp!820391 () Bool)

(assert (=> b!2584272 (= e!1630577 (and e!1630572 tp!820391))))

(declare-fun b!2584273 () Bool)

(assert (=> b!2584273 (= e!1630573 (not e!1630576))))

(declare-fun res!1086737 () Bool)

(assert (=> b!2584273 (=> res!1086737 e!1630576)))

(declare-fun lt!908902 () Option!5931)

(assert (=> b!2584273 (= res!1086737 (not (= lt!908902 (Some!5930 (tuple2!29701 token!562 suffix!1684)))))))

(declare-fun lt!908900 () Int)

(declare-fun lt!908901 () TokenValue!4738)

(assert (=> b!2584273 (= lt!908902 (Some!5930 (tuple2!29701 (Token!8503 lt!908901 rule!570 lt!908900 lt!908898) suffix!1684)))))

(declare-fun maxPrefixOneRule!1451 (LexerInterface!4113 Rule!8832 List!29843) Option!5931)

(assert (=> b!2584273 (= lt!908902 (maxPrefixOneRule!1451 thiss!28211 rule!570 input!3654))))

(declare-fun size!23060 (List!29843) Int)

(assert (=> b!2584273 (= lt!908900 (size!23060 lt!908898))))

(declare-fun apply!7021 (TokenValueInjection!8916 BalanceConc!18178) TokenValue!4738)

(declare-fun seqFromList!3156 (List!29843) BalanceConc!18178)

(assert (=> b!2584273 (= lt!908901 (apply!7021 (transformation!4516 rule!570) (seqFromList!3156 lt!908898)))))

(declare-fun lt!908897 () Unit!43585)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!614 (LexerInterface!4113 List!29844 List!29843 List!29843 List!29843 Rule!8832) Unit!43585)

(assert (=> b!2584273 (= lt!908897 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!614 thiss!28211 rules!4580 lt!908898 input!3654 suffix!1684 rule!570))))

(assert (=> b!2584273 (= lt!908898 (list!11244 (charsOf!2845 token!562)))))

(declare-fun e!1630570 () Bool)

(assert (=> b!2584274 (= e!1630570 (and tp!820394 tp!820379))))

(declare-fun e!1630588 () Bool)

(declare-fun tp!820389 () Bool)

(declare-fun b!2584275 () Bool)

(assert (=> b!2584275 (= e!1630588 (and tp!820389 (inv!40169 (tag!5006 (rule!6878 token!562))) (inv!40172 (transformation!4516 (rule!6878 token!562))) e!1630570))))

(declare-fun b!2584276 () Bool)

(declare-fun e!1630585 () Bool)

(declare-fun tp!820386 () Bool)

(assert (=> b!2584276 (= e!1630585 (and e!1630582 tp!820386))))

(assert (=> b!2584277 (= e!1630578 (and tp!820388 tp!820393))))

(declare-fun b!2584278 () Bool)

(declare-fun res!1086741 () Bool)

(assert (=> b!2584278 (=> (not res!1086741) (not e!1630573))))

(declare-fun isEmpty!17096 (List!29844) Bool)

(assert (=> b!2584278 (= res!1086741 (not (isEmpty!17096 rules!4580)))))

(declare-fun res!1086743 () Bool)

(assert (=> start!250230 (=> (not res!1086743) (not e!1630573))))

(assert (=> start!250230 (= res!1086743 (is-Lexer!4111 thiss!28211))))

(assert (=> start!250230 e!1630573))

(assert (=> start!250230 e!1630585))

(assert (=> start!250230 true))

(assert (=> start!250230 e!1630574))

(declare-fun e!1630568 () Bool)

(declare-fun inv!40173 (Token!8502) Bool)

(assert (=> start!250230 (and (inv!40173 token!562) e!1630568)))

(assert (=> start!250230 e!1630575))

(assert (=> start!250230 e!1630577))

(assert (=> start!250230 e!1630571))

(declare-fun tp!820395 () Bool)

(declare-fun b!2584268 () Bool)

(declare-fun inv!21 (TokenValue!4738) Bool)

(assert (=> b!2584268 (= e!1630568 (and (inv!21 (value!145955 token!562)) e!1630588 tp!820395))))

(assert (= (and start!250230 res!1086743) b!2584278))

(assert (= (and b!2584278 res!1086741) b!2584265))

(assert (= (and b!2584265 res!1086742) b!2584270))

(assert (= (and b!2584270 res!1086744) b!2584258))

(assert (= (and b!2584258 res!1086745) b!2584254))

(assert (= (and b!2584254 res!1086739) b!2584260))

(assert (= (and b!2584260 res!1086738) b!2584256))

(assert (= (and b!2584260 res!1086734) b!2584273))

(assert (= (and b!2584273 (not res!1086737)) b!2584266))

(assert (= (and b!2584266 (not res!1086736)) b!2584264))

(assert (= (and b!2584264 (not res!1086735)) b!2584269))

(assert (= (and b!2584269 (not res!1086740)) b!2584257))

(assert (= b!2584267 b!2584271))

(assert (= b!2584276 b!2584267))

(assert (= (and start!250230 (is-Cons!29744 rules!4580)) b!2584276))

(assert (= (and start!250230 (is-Cons!29743 input!3654)) b!2584262))

(assert (= b!2584275 b!2584274))

(assert (= b!2584268 b!2584275))

(assert (= start!250230 b!2584268))

(assert (= (and start!250230 (is-Cons!29743 suffix!1684)) b!2584259))

(assert (= b!2584263 b!2584261))

(assert (= b!2584272 b!2584263))

(assert (= (and start!250230 (is-Cons!29744 rs!798)) b!2584272))

(assert (= b!2584255 b!2584277))

(assert (= start!250230 b!2584255))

(declare-fun m!2920593 () Bool)

(assert (=> b!2584258 m!2920593))

(declare-fun m!2920595 () Bool)

(assert (=> b!2584275 m!2920595))

(declare-fun m!2920597 () Bool)

(assert (=> b!2584275 m!2920597))

(declare-fun m!2920599 () Bool)

(assert (=> b!2584263 m!2920599))

(declare-fun m!2920601 () Bool)

(assert (=> b!2584263 m!2920601))

(declare-fun m!2920603 () Bool)

(assert (=> b!2584266 m!2920603))

(declare-fun m!2920605 () Bool)

(assert (=> b!2584278 m!2920605))

(declare-fun m!2920607 () Bool)

(assert (=> b!2584265 m!2920607))

(declare-fun m!2920609 () Bool)

(assert (=> b!2584257 m!2920609))

(assert (=> b!2584257 m!2920609))

(declare-fun m!2920611 () Bool)

(assert (=> b!2584257 m!2920611))

(declare-fun m!2920613 () Bool)

(assert (=> b!2584268 m!2920613))

(declare-fun m!2920615 () Bool)

(assert (=> b!2584270 m!2920615))

(declare-fun m!2920617 () Bool)

(assert (=> start!250230 m!2920617))

(declare-fun m!2920619 () Bool)

(assert (=> b!2584267 m!2920619))

(declare-fun m!2920621 () Bool)

(assert (=> b!2584267 m!2920621))

(declare-fun m!2920623 () Bool)

(assert (=> b!2584260 m!2920623))

(declare-fun m!2920625 () Bool)

(assert (=> b!2584260 m!2920625))

(assert (=> b!2584260 m!2920625))

(declare-fun m!2920627 () Bool)

(assert (=> b!2584260 m!2920627))

(declare-fun m!2920629 () Bool)

(assert (=> b!2584264 m!2920629))

(assert (=> b!2584273 m!2920625))

(assert (=> b!2584273 m!2920627))

(assert (=> b!2584273 m!2920625))

(declare-fun m!2920631 () Bool)

(assert (=> b!2584273 m!2920631))

(declare-fun m!2920633 () Bool)

(assert (=> b!2584273 m!2920633))

(declare-fun m!2920635 () Bool)

(assert (=> b!2584273 m!2920635))

(assert (=> b!2584273 m!2920635))

(declare-fun m!2920637 () Bool)

(assert (=> b!2584273 m!2920637))

(declare-fun m!2920639 () Bool)

(assert (=> b!2584273 m!2920639))

(declare-fun m!2920641 () Bool)

(assert (=> b!2584255 m!2920641))

(declare-fun m!2920643 () Bool)

(assert (=> b!2584255 m!2920643))

(declare-fun m!2920645 () Bool)

(assert (=> b!2584256 m!2920645))

(declare-fun m!2920647 () Bool)

(assert (=> b!2584256 m!2920647))

(declare-fun m!2920649 () Bool)

(assert (=> b!2584256 m!2920649))

(push 1)

(assert b_and!189329)

(assert (not b_next!73457))

(assert b_and!189337)

(assert (not b_next!73455))

(assert (not b!2584257))

(assert b_and!189333)

(assert (not b_next!73459))

(assert (not b!2584265))

(assert (not b!2584276))

(assert (not b!2584272))

(assert b_and!189331)

(assert (not b!2584270))

(assert (not b!2584267))

(assert (not b_next!73447))

(assert b_and!189327)

(assert (not b!2584268))

(assert (not b_next!73445))

(assert (not b!2584256))

(assert (not b!2584260))

(assert b_and!189323)

(assert (not b!2584275))

(assert (not start!250230))

(assert (not b_next!73451))

(assert (not b!2584273))

(assert b_and!189335)

(assert (not b!2584255))

(assert (not b_next!73453))

(assert (not b!2584259))

(assert b_and!189325)

(assert (not b!2584262))

(assert (not b_next!73449))

(assert (not b!2584278))

(assert tp_is_empty!13215)

(assert (not b!2584264))

(assert (not b!2584263))

(assert (not b!2584266))

(assert (not b!2584258))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!73459))

(assert b_and!189331)

(assert b_and!189329)

(assert (not b_next!73445))

(assert (not b_next!73457))

(assert b_and!189323)

(assert b_and!189337)

(assert (not b_next!73451))

(assert b_and!189335)

(assert (not b_next!73455))

(assert (not b_next!73453))

(assert b_and!189333)

(assert b_and!189325)

(assert (not b_next!73449))

(assert (not b_next!73447))

(assert b_and!189327)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!731838 () Bool)

(declare-fun lt!908929 () Bool)

(declare-fun content!4105 (List!29844) (Set Rule!8832))

(assert (=> d!731838 (= lt!908929 (set.member rule!570 (content!4105 rules!4580)))))

(declare-fun e!1630656 () Bool)

(assert (=> d!731838 (= lt!908929 e!1630656)))

(declare-fun res!1086791 () Bool)

(assert (=> d!731838 (=> (not res!1086791) (not e!1630656))))

(assert (=> d!731838 (= res!1086791 (is-Cons!29744 rules!4580))))

(assert (=> d!731838 (= (contains!5320 rules!4580 rule!570) lt!908929)))

(declare-fun b!2584360 () Bool)

(declare-fun e!1630657 () Bool)

(assert (=> b!2584360 (= e!1630656 e!1630657)))

(declare-fun res!1086790 () Bool)

(assert (=> b!2584360 (=> res!1086790 e!1630657)))

(assert (=> b!2584360 (= res!1086790 (= (h!35164 rules!4580) rule!570))))

(declare-fun b!2584361 () Bool)

(assert (=> b!2584361 (= e!1630657 (contains!5320 (t!212113 rules!4580) rule!570))))

(assert (= (and d!731838 res!1086791) b!2584360))

(assert (= (and b!2584360 (not res!1086790)) b!2584361))

(declare-fun m!2920713 () Bool)

(assert (=> d!731838 m!2920713))

(declare-fun m!2920715 () Bool)

(assert (=> d!731838 m!2920715))

(declare-fun m!2920717 () Bool)

(assert (=> b!2584361 m!2920717))

(assert (=> b!2584270 d!731838))

(declare-fun d!731844 () Bool)

(declare-fun e!1630669 () Bool)

(assert (=> d!731844 e!1630669))

(declare-fun res!1086803 () Bool)

(assert (=> d!731844 (=> (not res!1086803) (not e!1630669))))

(declare-fun lt!908932 () List!29843)

(declare-fun content!4106 (List!29843) (Set C!15478))

(assert (=> d!731844 (= res!1086803 (= (content!4106 lt!908932) (set.union (content!4106 lt!908899) (content!4106 suffix!1684))))))

(declare-fun e!1630668 () List!29843)

(assert (=> d!731844 (= lt!908932 e!1630668)))

(declare-fun c!416677 () Bool)

(assert (=> d!731844 (= c!416677 (is-Nil!29743 lt!908899))))

(assert (=> d!731844 (= (++!7306 lt!908899 suffix!1684) lt!908932)))

(declare-fun b!2584377 () Bool)

(assert (=> b!2584377 (= e!1630668 (Cons!29743 (h!35163 lt!908899) (++!7306 (t!212112 lt!908899) suffix!1684)))))

(declare-fun b!2584378 () Bool)

(declare-fun res!1086802 () Bool)

(assert (=> b!2584378 (=> (not res!1086802) (not e!1630669))))

(assert (=> b!2584378 (= res!1086802 (= (size!23060 lt!908932) (+ (size!23060 lt!908899) (size!23060 suffix!1684))))))

(declare-fun b!2584379 () Bool)

(assert (=> b!2584379 (= e!1630669 (or (not (= suffix!1684 Nil!29743)) (= lt!908932 lt!908899)))))

(declare-fun b!2584376 () Bool)

(assert (=> b!2584376 (= e!1630668 suffix!1684)))

(assert (= (and d!731844 c!416677) b!2584376))

(assert (= (and d!731844 (not c!416677)) b!2584377))

(assert (= (and d!731844 res!1086803) b!2584378))

(assert (= (and b!2584378 res!1086802) b!2584379))

(declare-fun m!2920723 () Bool)

(assert (=> d!731844 m!2920723))

(declare-fun m!2920725 () Bool)

(assert (=> d!731844 m!2920725))

(declare-fun m!2920727 () Bool)

(assert (=> d!731844 m!2920727))

(declare-fun m!2920729 () Bool)

(assert (=> b!2584377 m!2920729))

(declare-fun m!2920731 () Bool)

(assert (=> b!2584378 m!2920731))

(declare-fun m!2920733 () Bool)

(assert (=> b!2584378 m!2920733))

(declare-fun m!2920735 () Bool)

(assert (=> b!2584378 m!2920735))

(assert (=> b!2584260 d!731844))

(declare-fun d!731848 () Bool)

(declare-fun list!11246 (Conc!9282) List!29843)

(assert (=> d!731848 (= (list!11244 (charsOf!2845 token!562)) (list!11246 (c!416670 (charsOf!2845 token!562))))))

(declare-fun bs!471662 () Bool)

(assert (= bs!471662 d!731848))

(declare-fun m!2920737 () Bool)

(assert (=> bs!471662 m!2920737))

(assert (=> b!2584260 d!731848))

(declare-fun d!731850 () Bool)

(declare-fun lt!908937 () BalanceConc!18178)

(assert (=> d!731850 (= (list!11244 lt!908937) (originalCharacters!5282 token!562))))

(declare-fun dynLambda!12569 (Int TokenValue!4738) BalanceConc!18178)

(assert (=> d!731850 (= lt!908937 (dynLambda!12569 (toChars!6265 (transformation!4516 (rule!6878 token!562))) (value!145955 token!562)))))

(assert (=> d!731850 (= (charsOf!2845 token!562) lt!908937)))

(declare-fun b_lambda!76713 () Bool)

(assert (=> (not b_lambda!76713) (not d!731850)))

(declare-fun t!212120 () Bool)

(declare-fun tb!140745 () Bool)

(assert (=> (and b!2584261 (= (toChars!6265 (transformation!4516 (h!35164 rs!798))) (toChars!6265 (transformation!4516 (rule!6878 token!562)))) t!212120) tb!140745))

(declare-fun b!2584388 () Bool)

(declare-fun e!1630674 () Bool)

(declare-fun tp!820449 () Bool)

(declare-fun inv!40176 (Conc!9282) Bool)

(assert (=> b!2584388 (= e!1630674 (and (inv!40176 (c!416670 (dynLambda!12569 (toChars!6265 (transformation!4516 (rule!6878 token!562))) (value!145955 token!562)))) tp!820449))))

(declare-fun result!174968 () Bool)

(declare-fun inv!40177 (BalanceConc!18178) Bool)

(assert (=> tb!140745 (= result!174968 (and (inv!40177 (dynLambda!12569 (toChars!6265 (transformation!4516 (rule!6878 token!562))) (value!145955 token!562))) e!1630674))))

(assert (= tb!140745 b!2584388))

(declare-fun m!2920739 () Bool)

(assert (=> b!2584388 m!2920739))

(declare-fun m!2920741 () Bool)

(assert (=> tb!140745 m!2920741))

(assert (=> d!731850 t!212120))

(declare-fun b_and!189355 () Bool)

(assert (= b_and!189325 (and (=> t!212120 result!174968) b_and!189355)))

(declare-fun tb!140747 () Bool)

(declare-fun t!212122 () Bool)

(assert (=> (and b!2584277 (= (toChars!6265 (transformation!4516 rule!570)) (toChars!6265 (transformation!4516 (rule!6878 token!562)))) t!212122) tb!140747))

(declare-fun result!174972 () Bool)

(assert (= result!174972 result!174968))

(assert (=> d!731850 t!212122))

(declare-fun b_and!189357 () Bool)

(assert (= b_and!189329 (and (=> t!212122 result!174972) b_and!189357)))

(declare-fun t!212124 () Bool)

(declare-fun tb!140749 () Bool)

(assert (=> (and b!2584274 (= (toChars!6265 (transformation!4516 (rule!6878 token!562))) (toChars!6265 (transformation!4516 (rule!6878 token!562)))) t!212124) tb!140749))

(declare-fun result!174974 () Bool)

(assert (= result!174974 result!174968))

(assert (=> d!731850 t!212124))

(declare-fun b_and!189359 () Bool)

(assert (= b_and!189333 (and (=> t!212124 result!174974) b_and!189359)))

(declare-fun t!212126 () Bool)

(declare-fun tb!140751 () Bool)

(assert (=> (and b!2584271 (= (toChars!6265 (transformation!4516 (h!35164 rules!4580))) (toChars!6265 (transformation!4516 (rule!6878 token!562)))) t!212126) tb!140751))

(declare-fun result!174976 () Bool)

(assert (= result!174976 result!174968))

(assert (=> d!731850 t!212126))

(declare-fun b_and!189361 () Bool)

(assert (= b_and!189337 (and (=> t!212126 result!174976) b_and!189361)))

(declare-fun m!2920743 () Bool)

(assert (=> d!731850 m!2920743))

(declare-fun m!2920745 () Bool)

(assert (=> d!731850 m!2920745))

(assert (=> b!2584260 d!731850))

(declare-fun d!731852 () Bool)

(assert (=> d!731852 (= (isEmpty!17096 rules!4580) (is-Nil!29744 rules!4580))))

(assert (=> b!2584278 d!731852))

(declare-fun d!731854 () Bool)

(declare-fun res!1086808 () Bool)

(declare-fun e!1630680 () Bool)

(assert (=> d!731854 (=> res!1086808 e!1630680)))

(assert (=> d!731854 (= res!1086808 (is-Nil!29745 (map!6602 rs!798 lambda!95753)))))

(assert (=> d!731854 (= (forall!6058 (map!6602 rs!798 lambda!95753) lambda!95754) e!1630680)))

(declare-fun b!2584395 () Bool)

(declare-fun e!1630681 () Bool)

(assert (=> b!2584395 (= e!1630680 e!1630681)))

(declare-fun res!1086809 () Bool)

(assert (=> b!2584395 (=> (not res!1086809) (not e!1630681))))

(declare-fun dynLambda!12570 (Int Regex!7660) Bool)

(assert (=> b!2584395 (= res!1086809 (dynLambda!12570 lambda!95754 (h!35165 (map!6602 rs!798 lambda!95753))))))

(declare-fun b!2584396 () Bool)

(assert (=> b!2584396 (= e!1630681 (forall!6058 (t!212114 (map!6602 rs!798 lambda!95753)) lambda!95754))))

(assert (= (and d!731854 (not res!1086808)) b!2584395))

(assert (= (and b!2584395 res!1086809) b!2584396))

(declare-fun b_lambda!76717 () Bool)

(assert (=> (not b_lambda!76717) (not b!2584395)))

(declare-fun m!2920757 () Bool)

(assert (=> b!2584395 m!2920757))

(declare-fun m!2920759 () Bool)

(assert (=> b!2584396 m!2920759))

(assert (=> b!2584257 d!731854))

(declare-fun d!731858 () Bool)

(declare-fun lt!908943 () List!29845)

(declare-fun size!23063 (List!29845) Int)

(declare-fun size!23064 (List!29844) Int)

(assert (=> d!731858 (= (size!23063 lt!908943) (size!23064 rs!798))))

(declare-fun e!1630688 () List!29845)

(assert (=> d!731858 (= lt!908943 e!1630688)))

(declare-fun c!416683 () Bool)

(assert (=> d!731858 (= c!416683 (is-Nil!29744 rs!798))))

(assert (=> d!731858 (= (map!6602 rs!798 lambda!95753) lt!908943)))

(declare-fun b!2584405 () Bool)

(assert (=> b!2584405 (= e!1630688 Nil!29745)))

(declare-fun b!2584406 () Bool)

(declare-fun $colon$colon!541 (List!29845 Regex!7660) List!29845)

(declare-fun dynLambda!12571 (Int Rule!8832) Regex!7660)

(assert (=> b!2584406 (= e!1630688 ($colon$colon!541 (map!6602 (t!212113 rs!798) lambda!95753) (dynLambda!12571 lambda!95753 (h!35164 rs!798))))))

(assert (= (and d!731858 c!416683) b!2584405))

(assert (= (and d!731858 (not c!416683)) b!2584406))

(declare-fun b_lambda!76719 () Bool)

(assert (=> (not b_lambda!76719) (not b!2584406)))

(declare-fun m!2920761 () Bool)

(assert (=> d!731858 m!2920761))

(declare-fun m!2920763 () Bool)

(assert (=> d!731858 m!2920763))

(declare-fun m!2920765 () Bool)

(assert (=> b!2584406 m!2920765))

(declare-fun m!2920767 () Bool)

(assert (=> b!2584406 m!2920767))

(assert (=> b!2584406 m!2920765))

(assert (=> b!2584406 m!2920767))

(declare-fun m!2920769 () Bool)

(assert (=> b!2584406 m!2920769))

(assert (=> b!2584257 d!731858))

(declare-fun b!2584448 () Bool)

(declare-fun e!1630717 () Bool)

(declare-fun nullable!2565 (Regex!7660) Bool)

(assert (=> b!2584448 (= e!1630717 (nullable!2565 (regex!4516 rule!570)))))

(declare-fun b!2584449 () Bool)

(declare-fun e!1630713 () Bool)

(declare-fun e!1630711 () Bool)

(assert (=> b!2584449 (= e!1630713 e!1630711)))

(declare-fun res!1086842 () Bool)

(assert (=> b!2584449 (=> res!1086842 e!1630711)))

(declare-fun call!166917 () Bool)

(assert (=> b!2584449 (= res!1086842 call!166917)))

(declare-fun b!2584450 () Bool)

(declare-fun res!1086844 () Bool)

(declare-fun e!1630712 () Bool)

(assert (=> b!2584450 (=> (not res!1086844) (not e!1630712))))

(assert (=> b!2584450 (= res!1086844 (not call!166917))))

(declare-fun b!2584451 () Bool)

(declare-fun head!5857 (List!29843) C!15478)

(assert (=> b!2584451 (= e!1630712 (= (head!5857 lt!908899) (c!416671 (regex!4516 rule!570))))))

(declare-fun b!2584452 () Bool)

(declare-fun e!1630715 () Bool)

(assert (=> b!2584452 (= e!1630715 e!1630713)))

(declare-fun res!1086839 () Bool)

(assert (=> b!2584452 (=> (not res!1086839) (not e!1630713))))

(declare-fun lt!908947 () Bool)

(assert (=> b!2584452 (= res!1086839 (not lt!908947))))

(declare-fun bm!166912 () Bool)

(declare-fun isEmpty!17098 (List!29843) Bool)

(assert (=> bm!166912 (= call!166917 (isEmpty!17098 lt!908899))))

(declare-fun b!2584453 () Bool)

(declare-fun res!1086838 () Bool)

(assert (=> b!2584453 (=> res!1086838 e!1630711)))

(declare-fun tail!4130 (List!29843) List!29843)

(assert (=> b!2584453 (= res!1086838 (not (isEmpty!17098 (tail!4130 lt!908899))))))

(declare-fun b!2584454 () Bool)

(declare-fun e!1630716 () Bool)

(declare-fun e!1630714 () Bool)

(assert (=> b!2584454 (= e!1630716 e!1630714)))

(declare-fun c!416691 () Bool)

(assert (=> b!2584454 (= c!416691 (is-EmptyLang!7660 (regex!4516 rule!570)))))

(declare-fun b!2584455 () Bool)

(declare-fun res!1086840 () Bool)

(assert (=> b!2584455 (=> res!1086840 e!1630715)))

(assert (=> b!2584455 (= res!1086840 e!1630712)))

(declare-fun res!1086843 () Bool)

(assert (=> b!2584455 (=> (not res!1086843) (not e!1630712))))

(assert (=> b!2584455 (= res!1086843 lt!908947)))

(declare-fun b!2584456 () Bool)

(assert (=> b!2584456 (= e!1630711 (not (= (head!5857 lt!908899) (c!416671 (regex!4516 rule!570)))))))

(declare-fun d!731860 () Bool)

(assert (=> d!731860 e!1630716))

(declare-fun c!416690 () Bool)

(assert (=> d!731860 (= c!416690 (is-EmptyExpr!7660 (regex!4516 rule!570)))))

(assert (=> d!731860 (= lt!908947 e!1630717)))

(declare-fun c!416692 () Bool)

(assert (=> d!731860 (= c!416692 (isEmpty!17098 lt!908899))))

(declare-fun validRegex!3274 (Regex!7660) Bool)

(assert (=> d!731860 (validRegex!3274 (regex!4516 rule!570))))

(assert (=> d!731860 (= (matchR!3593 (regex!4516 rule!570) lt!908899) lt!908947)))

(declare-fun b!2584457 () Bool)

(assert (=> b!2584457 (= e!1630714 (not lt!908947))))

(declare-fun b!2584458 () Bool)

(declare-fun res!1086845 () Bool)

(assert (=> b!2584458 (=> res!1086845 e!1630715)))

(assert (=> b!2584458 (= res!1086845 (not (is-ElementMatch!7660 (regex!4516 rule!570))))))

(assert (=> b!2584458 (= e!1630714 e!1630715)))

(declare-fun b!2584459 () Bool)

(assert (=> b!2584459 (= e!1630716 (= lt!908947 call!166917))))

(declare-fun b!2584460 () Bool)

(declare-fun res!1086841 () Bool)

(assert (=> b!2584460 (=> (not res!1086841) (not e!1630712))))

(assert (=> b!2584460 (= res!1086841 (isEmpty!17098 (tail!4130 lt!908899)))))

(declare-fun b!2584461 () Bool)

(declare-fun derivativeStep!2217 (Regex!7660 C!15478) Regex!7660)

(assert (=> b!2584461 (= e!1630717 (matchR!3593 (derivativeStep!2217 (regex!4516 rule!570) (head!5857 lt!908899)) (tail!4130 lt!908899)))))

(assert (= (and d!731860 c!416692) b!2584448))

(assert (= (and d!731860 (not c!416692)) b!2584461))

(assert (= (and d!731860 c!416690) b!2584459))

(assert (= (and d!731860 (not c!416690)) b!2584454))

(assert (= (and b!2584454 c!416691) b!2584457))

(assert (= (and b!2584454 (not c!416691)) b!2584458))

(assert (= (and b!2584458 (not res!1086845)) b!2584455))

(assert (= (and b!2584455 res!1086843) b!2584450))

(assert (= (and b!2584450 res!1086844) b!2584460))

(assert (= (and b!2584460 res!1086841) b!2584451))

(assert (= (and b!2584455 (not res!1086840)) b!2584452))

(assert (= (and b!2584452 res!1086839) b!2584449))

(assert (= (and b!2584449 (not res!1086842)) b!2584453))

(assert (= (and b!2584453 (not res!1086838)) b!2584456))

(assert (= (or b!2584459 b!2584449 b!2584450) bm!166912))

(declare-fun m!2920785 () Bool)

(assert (=> b!2584448 m!2920785))

(declare-fun m!2920787 () Bool)

(assert (=> bm!166912 m!2920787))

(declare-fun m!2920789 () Bool)

(assert (=> b!2584456 m!2920789))

(assert (=> b!2584461 m!2920789))

(assert (=> b!2584461 m!2920789))

(declare-fun m!2920791 () Bool)

(assert (=> b!2584461 m!2920791))

(declare-fun m!2920793 () Bool)

(assert (=> b!2584461 m!2920793))

(assert (=> b!2584461 m!2920791))

(assert (=> b!2584461 m!2920793))

(declare-fun m!2920797 () Bool)

(assert (=> b!2584461 m!2920797))

(assert (=> b!2584453 m!2920793))

(assert (=> b!2584453 m!2920793))

(declare-fun m!2920801 () Bool)

(assert (=> b!2584453 m!2920801))

(assert (=> b!2584451 m!2920789))

(assert (=> d!731860 m!2920787))

(declare-fun m!2920803 () Bool)

(assert (=> d!731860 m!2920803))

(assert (=> b!2584460 m!2920793))

(assert (=> b!2584460 m!2920793))

(assert (=> b!2584460 m!2920801))

(assert (=> b!2584256 d!731860))

(declare-fun d!731866 () Bool)

(declare-fun res!1086850 () Bool)

(declare-fun e!1630720 () Bool)

(assert (=> d!731866 (=> (not res!1086850) (not e!1630720))))

(assert (=> d!731866 (= res!1086850 (validRegex!3274 (regex!4516 rule!570)))))

(assert (=> d!731866 (= (ruleValid!1522 thiss!28211 rule!570) e!1630720)))

(declare-fun b!2584466 () Bool)

(declare-fun res!1086851 () Bool)

(assert (=> b!2584466 (=> (not res!1086851) (not e!1630720))))

(assert (=> b!2584466 (= res!1086851 (not (nullable!2565 (regex!4516 rule!570))))))

(declare-fun b!2584467 () Bool)

(assert (=> b!2584467 (= e!1630720 (not (= (tag!5006 rule!570) (String!33101 ""))))))

(assert (= (and d!731866 res!1086850) b!2584466))

(assert (= (and b!2584466 res!1086851) b!2584467))

(assert (=> d!731866 m!2920803))

(assert (=> b!2584466 m!2920785))

(assert (=> b!2584256 d!731866))

(declare-fun d!731868 () Bool)

(assert (=> d!731868 (ruleValid!1522 thiss!28211 rule!570)))

(declare-fun lt!908950 () Unit!43585)

(declare-fun choose!15231 (LexerInterface!4113 Rule!8832 List!29844) Unit!43585)

(assert (=> d!731868 (= lt!908950 (choose!15231 thiss!28211 rule!570 rules!4580))))

(assert (=> d!731868 (contains!5320 rules!4580 rule!570)))

(assert (=> d!731868 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!915 thiss!28211 rule!570 rules!4580) lt!908950)))

(declare-fun bs!471663 () Bool)

(assert (= bs!471663 d!731868))

(assert (=> bs!471663 m!2920647))

(declare-fun m!2920805 () Bool)

(assert (=> bs!471663 m!2920805))

(assert (=> bs!471663 m!2920615))

(assert (=> b!2584256 d!731868))

(declare-fun d!731870 () Bool)

(assert (=> d!731870 (= (inv!40169 (tag!5006 (h!35164 rules!4580))) (= (mod (str.len (value!145954 (tag!5006 (h!35164 rules!4580)))) 2) 0))))

(assert (=> b!2584267 d!731870))

(declare-fun d!731872 () Bool)

(declare-fun res!1086857 () Bool)

(declare-fun e!1630732 () Bool)

(assert (=> d!731872 (=> (not res!1086857) (not e!1630732))))

(declare-fun semiInverseModEq!1885 (Int Int) Bool)

(assert (=> d!731872 (= res!1086857 (semiInverseModEq!1885 (toChars!6265 (transformation!4516 (h!35164 rules!4580))) (toValue!6406 (transformation!4516 (h!35164 rules!4580)))))))

(assert (=> d!731872 (= (inv!40172 (transformation!4516 (h!35164 rules!4580))) e!1630732)))

(declare-fun b!2584485 () Bool)

(declare-fun equivClasses!1786 (Int Int) Bool)

(assert (=> b!2584485 (= e!1630732 (equivClasses!1786 (toChars!6265 (transformation!4516 (h!35164 rules!4580))) (toValue!6406 (transformation!4516 (h!35164 rules!4580)))))))

(assert (= (and d!731872 res!1086857) b!2584485))

(declare-fun m!2920813 () Bool)

(assert (=> d!731872 m!2920813))

(declare-fun m!2920815 () Bool)

(assert (=> b!2584485 m!2920815))

(assert (=> b!2584267 d!731872))

(declare-fun d!731876 () Bool)

(declare-fun res!1086862 () Bool)

(declare-fun e!1630735 () Bool)

(assert (=> d!731876 (=> (not res!1086862) (not e!1630735))))

(assert (=> d!731876 (= res!1086862 (not (isEmpty!17098 (originalCharacters!5282 token!562))))))

(assert (=> d!731876 (= (inv!40173 token!562) e!1630735)))

(declare-fun b!2584490 () Bool)

(declare-fun res!1086863 () Bool)

(assert (=> b!2584490 (=> (not res!1086863) (not e!1630735))))

(assert (=> b!2584490 (= res!1086863 (= (originalCharacters!5282 token!562) (list!11244 (dynLambda!12569 (toChars!6265 (transformation!4516 (rule!6878 token!562))) (value!145955 token!562)))))))

(declare-fun b!2584491 () Bool)

(assert (=> b!2584491 (= e!1630735 (= (size!23059 token!562) (size!23060 (originalCharacters!5282 token!562))))))

(assert (= (and d!731876 res!1086862) b!2584490))

(assert (= (and b!2584490 res!1086863) b!2584491))

(declare-fun b_lambda!76723 () Bool)

(assert (=> (not b_lambda!76723) (not b!2584490)))

(assert (=> b!2584490 t!212120))

(declare-fun b_and!189371 () Bool)

(assert (= b_and!189355 (and (=> t!212120 result!174968) b_and!189371)))

(assert (=> b!2584490 t!212122))

(declare-fun b_and!189373 () Bool)

(assert (= b_and!189357 (and (=> t!212122 result!174972) b_and!189373)))

(assert (=> b!2584490 t!212124))

(declare-fun b_and!189375 () Bool)

(assert (= b_and!189359 (and (=> t!212124 result!174974) b_and!189375)))

(assert (=> b!2584490 t!212126))

(declare-fun b_and!189377 () Bool)

(assert (= b_and!189361 (and (=> t!212126 result!174976) b_and!189377)))

(declare-fun m!2920817 () Bool)

(assert (=> d!731876 m!2920817))

(assert (=> b!2584490 m!2920745))

(assert (=> b!2584490 m!2920745))

(declare-fun m!2920819 () Bool)

(assert (=> b!2584490 m!2920819))

(declare-fun m!2920821 () Bool)

(assert (=> b!2584491 m!2920821))

(assert (=> start!250230 d!731876))

(declare-fun b!2584550 () Bool)

(declare-fun res!1086904 () Bool)

(declare-fun e!1630764 () Bool)

(assert (=> b!2584550 (=> (not res!1086904) (not e!1630764))))

(declare-fun lt!908969 () Option!5931)

(declare-fun get!9374 (Option!5931) tuple2!29700)

(assert (=> b!2584550 (= res!1086904 (= (value!145955 (_1!17392 (get!9374 lt!908969))) (apply!7021 (transformation!4516 (rule!6878 (_1!17392 (get!9374 lt!908969)))) (seqFromList!3156 (originalCharacters!5282 (_1!17392 (get!9374 lt!908969)))))))))

(declare-fun d!731878 () Bool)

(declare-fun e!1630762 () Bool)

(assert (=> d!731878 e!1630762))

(declare-fun res!1086900 () Bool)

(assert (=> d!731878 (=> res!1086900 e!1630762)))

(declare-fun isEmpty!17099 (Option!5931) Bool)

(assert (=> d!731878 (= res!1086900 (isEmpty!17099 lt!908969))))

(declare-fun e!1630763 () Option!5931)

(assert (=> d!731878 (= lt!908969 e!1630763)))

(declare-fun c!416710 () Bool)

(assert (=> d!731878 (= c!416710 (and (is-Cons!29744 rules!4580) (is-Nil!29744 (t!212113 rules!4580))))))

(declare-fun lt!908973 () Unit!43585)

(declare-fun lt!908970 () Unit!43585)

(assert (=> d!731878 (= lt!908973 lt!908970)))

(declare-fun isPrefix!2416 (List!29843 List!29843) Bool)

(assert (=> d!731878 (isPrefix!2416 input!3654 input!3654)))

(declare-fun lemmaIsPrefixRefl!1542 (List!29843 List!29843) Unit!43585)

(assert (=> d!731878 (= lt!908970 (lemmaIsPrefixRefl!1542 input!3654 input!3654))))

(declare-fun rulesValidInductive!1590 (LexerInterface!4113 List!29844) Bool)

(assert (=> d!731878 (rulesValidInductive!1590 thiss!28211 rules!4580)))

(assert (=> d!731878 (= (maxPrefix!2285 thiss!28211 rules!4580 input!3654) lt!908969)))

(declare-fun b!2584551 () Bool)

(declare-fun lt!908971 () Option!5931)

(declare-fun lt!908972 () Option!5931)

(assert (=> b!2584551 (= e!1630763 (ite (and (is-None!5930 lt!908971) (is-None!5930 lt!908972)) None!5930 (ite (is-None!5930 lt!908972) lt!908971 (ite (is-None!5930 lt!908971) lt!908972 (ite (>= (size!23059 (_1!17392 (v!32029 lt!908971))) (size!23059 (_1!17392 (v!32029 lt!908972)))) lt!908971 lt!908972)))))))

(declare-fun call!166920 () Option!5931)

(assert (=> b!2584551 (= lt!908971 call!166920)))

(assert (=> b!2584551 (= lt!908972 (maxPrefix!2285 thiss!28211 (t!212113 rules!4580) input!3654))))

(declare-fun b!2584552 () Bool)

(declare-fun res!1086903 () Bool)

(assert (=> b!2584552 (=> (not res!1086903) (not e!1630764))))

(assert (=> b!2584552 (= res!1086903 (matchR!3593 (regex!4516 (rule!6878 (_1!17392 (get!9374 lt!908969)))) (list!11244 (charsOf!2845 (_1!17392 (get!9374 lt!908969))))))))

(declare-fun bm!166915 () Bool)

(assert (=> bm!166915 (= call!166920 (maxPrefixOneRule!1451 thiss!28211 (h!35164 rules!4580) input!3654))))

(declare-fun b!2584553 () Bool)

(assert (=> b!2584553 (= e!1630763 call!166920)))

(declare-fun b!2584554 () Bool)

(declare-fun res!1086906 () Bool)

(assert (=> b!2584554 (=> (not res!1086906) (not e!1630764))))

(assert (=> b!2584554 (= res!1086906 (= (list!11244 (charsOf!2845 (_1!17392 (get!9374 lt!908969)))) (originalCharacters!5282 (_1!17392 (get!9374 lt!908969)))))))

(declare-fun b!2584555 () Bool)

(assert (=> b!2584555 (= e!1630762 e!1630764)))

(declare-fun res!1086905 () Bool)

(assert (=> b!2584555 (=> (not res!1086905) (not e!1630764))))

(declare-fun isDefined!4751 (Option!5931) Bool)

(assert (=> b!2584555 (= res!1086905 (isDefined!4751 lt!908969))))

(declare-fun b!2584556 () Bool)

(declare-fun res!1086901 () Bool)

(assert (=> b!2584556 (=> (not res!1086901) (not e!1630764))))

(assert (=> b!2584556 (= res!1086901 (= (++!7306 (list!11244 (charsOf!2845 (_1!17392 (get!9374 lt!908969)))) (_2!17392 (get!9374 lt!908969))) input!3654))))

(declare-fun b!2584557 () Bool)

(declare-fun res!1086902 () Bool)

(assert (=> b!2584557 (=> (not res!1086902) (not e!1630764))))

(assert (=> b!2584557 (= res!1086902 (< (size!23060 (_2!17392 (get!9374 lt!908969))) (size!23060 input!3654)))))

(declare-fun b!2584558 () Bool)

(assert (=> b!2584558 (= e!1630764 (contains!5320 rules!4580 (rule!6878 (_1!17392 (get!9374 lt!908969)))))))

(assert (= (and d!731878 c!416710) b!2584553))

(assert (= (and d!731878 (not c!416710)) b!2584551))

(assert (= (or b!2584553 b!2584551) bm!166915))

(assert (= (and d!731878 (not res!1086900)) b!2584555))

(assert (= (and b!2584555 res!1086905) b!2584554))

(assert (= (and b!2584554 res!1086906) b!2584557))

(assert (= (and b!2584557 res!1086902) b!2584556))

(assert (= (and b!2584556 res!1086901) b!2584550))

(assert (= (and b!2584550 res!1086904) b!2584552))

(assert (= (and b!2584552 res!1086903) b!2584558))

(declare-fun m!2920841 () Bool)

(assert (=> b!2584557 m!2920841))

(declare-fun m!2920843 () Bool)

(assert (=> b!2584557 m!2920843))

(declare-fun m!2920845 () Bool)

(assert (=> b!2584557 m!2920845))

(assert (=> b!2584556 m!2920841))

(declare-fun m!2920847 () Bool)

(assert (=> b!2584556 m!2920847))

(assert (=> b!2584556 m!2920847))

(declare-fun m!2920849 () Bool)

(assert (=> b!2584556 m!2920849))

(assert (=> b!2584556 m!2920849))

(declare-fun m!2920851 () Bool)

(assert (=> b!2584556 m!2920851))

(declare-fun m!2920853 () Bool)

(assert (=> bm!166915 m!2920853))

(assert (=> b!2584552 m!2920841))

(assert (=> b!2584552 m!2920847))

(assert (=> b!2584552 m!2920847))

(assert (=> b!2584552 m!2920849))

(assert (=> b!2584552 m!2920849))

(declare-fun m!2920855 () Bool)

(assert (=> b!2584552 m!2920855))

(declare-fun m!2920857 () Bool)

(assert (=> b!2584555 m!2920857))

(declare-fun m!2920859 () Bool)

(assert (=> b!2584551 m!2920859))

(assert (=> b!2584558 m!2920841))

(declare-fun m!2920861 () Bool)

(assert (=> b!2584558 m!2920861))

(assert (=> b!2584550 m!2920841))

(declare-fun m!2920863 () Bool)

(assert (=> b!2584550 m!2920863))

(assert (=> b!2584550 m!2920863))

(declare-fun m!2920865 () Bool)

(assert (=> b!2584550 m!2920865))

(declare-fun m!2920867 () Bool)

(assert (=> d!731878 m!2920867))

(declare-fun m!2920869 () Bool)

(assert (=> d!731878 m!2920869))

(declare-fun m!2920871 () Bool)

(assert (=> d!731878 m!2920871))

(declare-fun m!2920873 () Bool)

(assert (=> d!731878 m!2920873))

(assert (=> b!2584554 m!2920841))

(assert (=> b!2584554 m!2920847))

(assert (=> b!2584554 m!2920847))

(assert (=> b!2584554 m!2920849))

(assert (=> b!2584258 d!731878))

(declare-fun d!731886 () Bool)

(declare-fun c!416715 () Bool)

(assert (=> d!731886 (= c!416715 (is-IntegerValue!14214 (value!145955 token!562)))))

(declare-fun e!1630772 () Bool)

(assert (=> d!731886 (= (inv!21 (value!145955 token!562)) e!1630772)))

(declare-fun b!2584569 () Bool)

(declare-fun res!1086909 () Bool)

(declare-fun e!1630771 () Bool)

(assert (=> b!2584569 (=> res!1086909 e!1630771)))

(assert (=> b!2584569 (= res!1086909 (not (is-IntegerValue!14216 (value!145955 token!562))))))

(declare-fun e!1630773 () Bool)

(assert (=> b!2584569 (= e!1630773 e!1630771)))

(declare-fun b!2584570 () Bool)

(declare-fun inv!16 (TokenValue!4738) Bool)

(assert (=> b!2584570 (= e!1630772 (inv!16 (value!145955 token!562)))))

(declare-fun b!2584571 () Bool)

(declare-fun inv!15 (TokenValue!4738) Bool)

(assert (=> b!2584571 (= e!1630771 (inv!15 (value!145955 token!562)))))

(declare-fun b!2584572 () Bool)

(assert (=> b!2584572 (= e!1630772 e!1630773)))

(declare-fun c!416716 () Bool)

(assert (=> b!2584572 (= c!416716 (is-IntegerValue!14215 (value!145955 token!562)))))

(declare-fun b!2584573 () Bool)

(declare-fun inv!17 (TokenValue!4738) Bool)

(assert (=> b!2584573 (= e!1630773 (inv!17 (value!145955 token!562)))))

(assert (= (and d!731886 c!416715) b!2584570))

(assert (= (and d!731886 (not c!416715)) b!2584572))

(assert (= (and b!2584572 c!416716) b!2584573))

(assert (= (and b!2584572 (not c!416716)) b!2584569))

(assert (= (and b!2584569 (not res!1086909)) b!2584571))

(declare-fun m!2920875 () Bool)

(assert (=> b!2584570 m!2920875))

(declare-fun m!2920877 () Bool)

(assert (=> b!2584571 m!2920877))

(declare-fun m!2920879 () Bool)

(assert (=> b!2584573 m!2920879))

(assert (=> b!2584268 d!731886))

(declare-fun d!731888 () Bool)

(declare-fun res!1086912 () Bool)

(declare-fun e!1630776 () Bool)

(assert (=> d!731888 (=> (not res!1086912) (not e!1630776))))

(assert (=> d!731888 (= res!1086912 (rulesValid!1688 thiss!28211 rules!4580))))

(assert (=> d!731888 (= (rulesInvariant!3613 thiss!28211 rules!4580) e!1630776)))

(declare-fun b!2584576 () Bool)

(declare-datatypes ((List!29850 0))(
  ( (Nil!29750) (Cons!29750 (h!35170 String!33100) (t!212159 List!29850)) )
))
(declare-fun noDuplicateTag!1686 (LexerInterface!4113 List!29844 List!29850) Bool)

(assert (=> b!2584576 (= e!1630776 (noDuplicateTag!1686 thiss!28211 rules!4580 Nil!29750))))

(assert (= (and d!731888 res!1086912) b!2584576))

(declare-fun m!2920881 () Bool)

(assert (=> d!731888 m!2920881))

(declare-fun m!2920883 () Bool)

(assert (=> b!2584576 m!2920883))

(assert (=> b!2584265 d!731888))

(declare-fun d!731890 () Bool)

(assert (=> d!731890 true))

(declare-fun lt!908977 () Bool)

(assert (=> d!731890 (= lt!908977 (rulesValidInductive!1590 thiss!28211 rs!798))))

(declare-fun lambda!95766 () Int)

(declare-fun forall!6060 (List!29844 Int) Bool)

(assert (=> d!731890 (= lt!908977 (forall!6060 rs!798 lambda!95766))))

(assert (=> d!731890 (= (rulesValid!1688 thiss!28211 rs!798) lt!908977)))

(declare-fun bs!471665 () Bool)

(assert (= bs!471665 d!731890))

(declare-fun m!2920885 () Bool)

(assert (=> bs!471665 m!2920885))

(declare-fun m!2920887 () Bool)

(assert (=> bs!471665 m!2920887))

(assert (=> b!2584264 d!731890))

(declare-fun d!731892 () Bool)

(assert (=> d!731892 (= (inv!40169 (tag!5006 (rule!6878 token!562))) (= (mod (str.len (value!145954 (tag!5006 (rule!6878 token!562)))) 2) 0))))

(assert (=> b!2584275 d!731892))

(declare-fun d!731894 () Bool)

(declare-fun res!1086921 () Bool)

(declare-fun e!1630784 () Bool)

(assert (=> d!731894 (=> (not res!1086921) (not e!1630784))))

(assert (=> d!731894 (= res!1086921 (semiInverseModEq!1885 (toChars!6265 (transformation!4516 (rule!6878 token!562))) (toValue!6406 (transformation!4516 (rule!6878 token!562)))))))

(assert (=> d!731894 (= (inv!40172 (transformation!4516 (rule!6878 token!562))) e!1630784)))

(declare-fun b!2584593 () Bool)

(assert (=> b!2584593 (= e!1630784 (equivClasses!1786 (toChars!6265 (transformation!4516 (rule!6878 token!562))) (toValue!6406 (transformation!4516 (rule!6878 token!562)))))))

(assert (= (and d!731894 res!1086921) b!2584593))

(declare-fun m!2920897 () Bool)

(assert (=> d!731894 m!2920897))

(declare-fun m!2920901 () Bool)

(assert (=> b!2584593 m!2920901))

(assert (=> b!2584275 d!731894))

(declare-fun b!2584594 () Bool)

(declare-fun e!1630791 () Bool)

(assert (=> b!2584594 (= e!1630791 (nullable!2565 (regex!4516 rule!570)))))

(declare-fun b!2584595 () Bool)

(declare-fun e!1630787 () Bool)

(declare-fun e!1630785 () Bool)

(assert (=> b!2584595 (= e!1630787 e!1630785)))

(declare-fun res!1086926 () Bool)

(assert (=> b!2584595 (=> res!1086926 e!1630785)))

(declare-fun call!166924 () Bool)

(assert (=> b!2584595 (= res!1086926 call!166924)))

(declare-fun b!2584596 () Bool)

(declare-fun res!1086928 () Bool)

(declare-fun e!1630786 () Bool)

(assert (=> b!2584596 (=> (not res!1086928) (not e!1630786))))

(assert (=> b!2584596 (= res!1086928 (not call!166924))))

(declare-fun b!2584597 () Bool)

(assert (=> b!2584597 (= e!1630786 (= (head!5857 lt!908898) (c!416671 (regex!4516 rule!570))))))

(declare-fun b!2584598 () Bool)

(declare-fun e!1630789 () Bool)

(assert (=> b!2584598 (= e!1630789 e!1630787)))

(declare-fun res!1086923 () Bool)

(assert (=> b!2584598 (=> (not res!1086923) (not e!1630787))))

(declare-fun lt!908978 () Bool)

(assert (=> b!2584598 (= res!1086923 (not lt!908978))))

(declare-fun bm!166919 () Bool)

(assert (=> bm!166919 (= call!166924 (isEmpty!17098 lt!908898))))

(declare-fun b!2584599 () Bool)

(declare-fun res!1086922 () Bool)

(assert (=> b!2584599 (=> res!1086922 e!1630785)))

(assert (=> b!2584599 (= res!1086922 (not (isEmpty!17098 (tail!4130 lt!908898))))))

(declare-fun b!2584600 () Bool)

(declare-fun e!1630790 () Bool)

(declare-fun e!1630788 () Bool)

(assert (=> b!2584600 (= e!1630790 e!1630788)))

(declare-fun c!416721 () Bool)

(assert (=> b!2584600 (= c!416721 (is-EmptyLang!7660 (regex!4516 rule!570)))))

(declare-fun b!2584601 () Bool)

(declare-fun res!1086924 () Bool)

(assert (=> b!2584601 (=> res!1086924 e!1630789)))

(assert (=> b!2584601 (= res!1086924 e!1630786)))

(declare-fun res!1086927 () Bool)

(assert (=> b!2584601 (=> (not res!1086927) (not e!1630786))))

(assert (=> b!2584601 (= res!1086927 lt!908978)))

(declare-fun b!2584602 () Bool)

(assert (=> b!2584602 (= e!1630785 (not (= (head!5857 lt!908898) (c!416671 (regex!4516 rule!570)))))))

(declare-fun d!731896 () Bool)

(assert (=> d!731896 e!1630790))

(declare-fun c!416720 () Bool)

(assert (=> d!731896 (= c!416720 (is-EmptyExpr!7660 (regex!4516 rule!570)))))

(assert (=> d!731896 (= lt!908978 e!1630791)))

(declare-fun c!416722 () Bool)

(assert (=> d!731896 (= c!416722 (isEmpty!17098 lt!908898))))

(assert (=> d!731896 (validRegex!3274 (regex!4516 rule!570))))

(assert (=> d!731896 (= (matchR!3593 (regex!4516 rule!570) lt!908898) lt!908978)))

(declare-fun b!2584603 () Bool)

(assert (=> b!2584603 (= e!1630788 (not lt!908978))))

(declare-fun b!2584604 () Bool)

(declare-fun res!1086929 () Bool)

(assert (=> b!2584604 (=> res!1086929 e!1630789)))

(assert (=> b!2584604 (= res!1086929 (not (is-ElementMatch!7660 (regex!4516 rule!570))))))

(assert (=> b!2584604 (= e!1630788 e!1630789)))

(declare-fun b!2584605 () Bool)

(assert (=> b!2584605 (= e!1630790 (= lt!908978 call!166924))))

(declare-fun b!2584606 () Bool)

(declare-fun res!1086925 () Bool)

(assert (=> b!2584606 (=> (not res!1086925) (not e!1630786))))

(assert (=> b!2584606 (= res!1086925 (isEmpty!17098 (tail!4130 lt!908898)))))

(declare-fun b!2584607 () Bool)

(assert (=> b!2584607 (= e!1630791 (matchR!3593 (derivativeStep!2217 (regex!4516 rule!570) (head!5857 lt!908898)) (tail!4130 lt!908898)))))

(assert (= (and d!731896 c!416722) b!2584594))

(assert (= (and d!731896 (not c!416722)) b!2584607))

(assert (= (and d!731896 c!416720) b!2584605))

(assert (= (and d!731896 (not c!416720)) b!2584600))

(assert (= (and b!2584600 c!416721) b!2584603))

(assert (= (and b!2584600 (not c!416721)) b!2584604))

(assert (= (and b!2584604 (not res!1086929)) b!2584601))

(assert (= (and b!2584601 res!1086927) b!2584596))

(assert (= (and b!2584596 res!1086928) b!2584606))

(assert (= (and b!2584606 res!1086925) b!2584597))

(assert (= (and b!2584601 (not res!1086924)) b!2584598))

(assert (= (and b!2584598 res!1086923) b!2584595))

(assert (= (and b!2584595 (not res!1086926)) b!2584599))

(assert (= (and b!2584599 (not res!1086922)) b!2584602))

(assert (= (or b!2584605 b!2584595 b!2584596) bm!166919))

(assert (=> b!2584594 m!2920785))

(declare-fun m!2920909 () Bool)

(assert (=> bm!166919 m!2920909))

(declare-fun m!2920911 () Bool)

(assert (=> b!2584602 m!2920911))

(assert (=> b!2584607 m!2920911))

(assert (=> b!2584607 m!2920911))

(declare-fun m!2920913 () Bool)

(assert (=> b!2584607 m!2920913))

(declare-fun m!2920915 () Bool)

(assert (=> b!2584607 m!2920915))

(assert (=> b!2584607 m!2920913))

(assert (=> b!2584607 m!2920915))

(declare-fun m!2920917 () Bool)

(assert (=> b!2584607 m!2920917))

(assert (=> b!2584599 m!2920915))

(assert (=> b!2584599 m!2920915))

(declare-fun m!2920919 () Bool)

(assert (=> b!2584599 m!2920919))

(assert (=> b!2584597 m!2920911))

(assert (=> d!731896 m!2920909))

(assert (=> d!731896 m!2920803))

(assert (=> b!2584606 m!2920915))

(assert (=> b!2584606 m!2920915))

(assert (=> b!2584606 m!2920919))

(assert (=> b!2584266 d!731896))

(declare-fun d!731900 () Bool)

(assert (=> d!731900 (= (inv!40169 (tag!5006 rule!570)) (= (mod (str.len (value!145954 (tag!5006 rule!570))) 2) 0))))

(assert (=> b!2584255 d!731900))

(declare-fun d!731902 () Bool)

(declare-fun res!1086930 () Bool)

(declare-fun e!1630792 () Bool)

(assert (=> d!731902 (=> (not res!1086930) (not e!1630792))))

(assert (=> d!731902 (= res!1086930 (semiInverseModEq!1885 (toChars!6265 (transformation!4516 rule!570)) (toValue!6406 (transformation!4516 rule!570))))))

(assert (=> d!731902 (= (inv!40172 (transformation!4516 rule!570)) e!1630792)))

(declare-fun b!2584608 () Bool)

(assert (=> b!2584608 (= e!1630792 (equivClasses!1786 (toChars!6265 (transformation!4516 rule!570)) (toValue!6406 (transformation!4516 rule!570))))))

(assert (= (and d!731902 res!1086930) b!2584608))

(declare-fun m!2920921 () Bool)

(assert (=> d!731902 m!2920921))

(declare-fun m!2920923 () Bool)

(assert (=> b!2584608 m!2920923))

(assert (=> b!2584255 d!731902))

(assert (=> b!2584273 d!731848))

(declare-fun b!2584631 () Bool)

(declare-fun e!1630806 () Option!5931)

(declare-datatypes ((tuple2!29704 0))(
  ( (tuple2!29705 (_1!17394 List!29843) (_2!17394 List!29843)) )
))
(declare-fun lt!908991 () tuple2!29704)

(declare-fun size!23065 (BalanceConc!18178) Int)

(assert (=> b!2584631 (= e!1630806 (Some!5930 (tuple2!29701 (Token!8503 (apply!7021 (transformation!4516 rule!570) (seqFromList!3156 (_1!17394 lt!908991))) rule!570 (size!23065 (seqFromList!3156 (_1!17394 lt!908991))) (_1!17394 lt!908991)) (_2!17394 lt!908991))))))

(declare-fun lt!908990 () Unit!43585)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!725 (Regex!7660 List!29843) Unit!43585)

(assert (=> b!2584631 (= lt!908990 (longestMatchIsAcceptedByMatchOrIsEmpty!725 (regex!4516 rule!570) input!3654))))

(declare-fun res!1086954 () Bool)

(declare-fun findLongestMatchInner!752 (Regex!7660 List!29843 Int List!29843 List!29843 Int) tuple2!29704)

(assert (=> b!2584631 (= res!1086954 (isEmpty!17098 (_1!17394 (findLongestMatchInner!752 (regex!4516 rule!570) Nil!29743 (size!23060 Nil!29743) input!3654 input!3654 (size!23060 input!3654)))))))

(declare-fun e!1630807 () Bool)

(assert (=> b!2584631 (=> res!1086954 e!1630807)))

(assert (=> b!2584631 e!1630807))

(declare-fun lt!908993 () Unit!43585)

(assert (=> b!2584631 (= lt!908993 lt!908990)))

(declare-fun lt!908989 () Unit!43585)

(declare-fun lemmaSemiInverse!1103 (TokenValueInjection!8916 BalanceConc!18178) Unit!43585)

(assert (=> b!2584631 (= lt!908989 (lemmaSemiInverse!1103 (transformation!4516 rule!570) (seqFromList!3156 (_1!17394 lt!908991))))))

(declare-fun b!2584632 () Bool)

(assert (=> b!2584632 (= e!1630807 (matchR!3593 (regex!4516 rule!570) (_1!17394 (findLongestMatchInner!752 (regex!4516 rule!570) Nil!29743 (size!23060 Nil!29743) input!3654 input!3654 (size!23060 input!3654)))))))

(declare-fun b!2584633 () Bool)

(declare-fun e!1630808 () Bool)

(declare-fun lt!908992 () Option!5931)

(assert (=> b!2584633 (= e!1630808 (= (size!23059 (_1!17392 (get!9374 lt!908992))) (size!23060 (originalCharacters!5282 (_1!17392 (get!9374 lt!908992))))))))

(declare-fun b!2584634 () Bool)

(declare-fun e!1630805 () Bool)

(assert (=> b!2584634 (= e!1630805 e!1630808)))

(declare-fun res!1086950 () Bool)

(assert (=> b!2584634 (=> (not res!1086950) (not e!1630808))))

(assert (=> b!2584634 (= res!1086950 (matchR!3593 (regex!4516 rule!570) (list!11244 (charsOf!2845 (_1!17392 (get!9374 lt!908992))))))))

(declare-fun b!2584635 () Bool)

(declare-fun res!1086953 () Bool)

(assert (=> b!2584635 (=> (not res!1086953) (not e!1630808))))

(assert (=> b!2584635 (= res!1086953 (= (rule!6878 (_1!17392 (get!9374 lt!908992))) rule!570))))

(declare-fun d!731904 () Bool)

(assert (=> d!731904 e!1630805))

(declare-fun res!1086949 () Bool)

(assert (=> d!731904 (=> res!1086949 e!1630805)))

(assert (=> d!731904 (= res!1086949 (isEmpty!17099 lt!908992))))

(assert (=> d!731904 (= lt!908992 e!1630806)))

(declare-fun c!416725 () Bool)

(assert (=> d!731904 (= c!416725 (isEmpty!17098 (_1!17394 lt!908991)))))

(declare-fun findLongestMatch!681 (Regex!7660 List!29843) tuple2!29704)

(assert (=> d!731904 (= lt!908991 (findLongestMatch!681 (regex!4516 rule!570) input!3654))))

(assert (=> d!731904 (ruleValid!1522 thiss!28211 rule!570)))

(assert (=> d!731904 (= (maxPrefixOneRule!1451 thiss!28211 rule!570 input!3654) lt!908992)))

(declare-fun b!2584636 () Bool)

(assert (=> b!2584636 (= e!1630806 None!5930)))

(declare-fun b!2584637 () Bool)

(declare-fun res!1086952 () Bool)

(assert (=> b!2584637 (=> (not res!1086952) (not e!1630808))))

(assert (=> b!2584637 (= res!1086952 (= (++!7306 (list!11244 (charsOf!2845 (_1!17392 (get!9374 lt!908992)))) (_2!17392 (get!9374 lt!908992))) input!3654))))

(declare-fun b!2584638 () Bool)

(declare-fun res!1086951 () Bool)

(assert (=> b!2584638 (=> (not res!1086951) (not e!1630808))))

(assert (=> b!2584638 (= res!1086951 (< (size!23060 (_2!17392 (get!9374 lt!908992))) (size!23060 input!3654)))))

(declare-fun b!2584639 () Bool)

(declare-fun res!1086955 () Bool)

(assert (=> b!2584639 (=> (not res!1086955) (not e!1630808))))

(assert (=> b!2584639 (= res!1086955 (= (value!145955 (_1!17392 (get!9374 lt!908992))) (apply!7021 (transformation!4516 (rule!6878 (_1!17392 (get!9374 lt!908992)))) (seqFromList!3156 (originalCharacters!5282 (_1!17392 (get!9374 lt!908992)))))))))

(assert (= (and d!731904 c!416725) b!2584636))

(assert (= (and d!731904 (not c!416725)) b!2584631))

(assert (= (and b!2584631 (not res!1086954)) b!2584632))

(assert (= (and d!731904 (not res!1086949)) b!2584634))

(assert (= (and b!2584634 res!1086950) b!2584637))

(assert (= (and b!2584637 res!1086952) b!2584638))

(assert (= (and b!2584638 res!1086951) b!2584635))

(assert (= (and b!2584635 res!1086953) b!2584639))

(assert (= (and b!2584639 res!1086955) b!2584633))

(declare-fun m!2920933 () Bool)

(assert (=> b!2584638 m!2920933))

(declare-fun m!2920935 () Bool)

(assert (=> b!2584638 m!2920935))

(assert (=> b!2584638 m!2920845))

(declare-fun m!2920937 () Bool)

(assert (=> b!2584631 m!2920937))

(declare-fun m!2920939 () Bool)

(assert (=> b!2584631 m!2920939))

(assert (=> b!2584631 m!2920939))

(declare-fun m!2920941 () Bool)

(assert (=> b!2584631 m!2920941))

(declare-fun m!2920943 () Bool)

(assert (=> b!2584631 m!2920943))

(assert (=> b!2584631 m!2920845))

(declare-fun m!2920945 () Bool)

(assert (=> b!2584631 m!2920945))

(assert (=> b!2584631 m!2920939))

(declare-fun m!2920947 () Bool)

(assert (=> b!2584631 m!2920947))

(declare-fun m!2920949 () Bool)

(assert (=> b!2584631 m!2920949))

(assert (=> b!2584631 m!2920939))

(declare-fun m!2920951 () Bool)

(assert (=> b!2584631 m!2920951))

(assert (=> b!2584631 m!2920943))

(assert (=> b!2584631 m!2920845))

(assert (=> b!2584639 m!2920933))

(declare-fun m!2920953 () Bool)

(assert (=> b!2584639 m!2920953))

(assert (=> b!2584639 m!2920953))

(declare-fun m!2920955 () Bool)

(assert (=> b!2584639 m!2920955))

(assert (=> b!2584633 m!2920933))

(declare-fun m!2920957 () Bool)

(assert (=> b!2584633 m!2920957))

(assert (=> b!2584632 m!2920943))

(assert (=> b!2584632 m!2920845))

(assert (=> b!2584632 m!2920943))

(assert (=> b!2584632 m!2920845))

(assert (=> b!2584632 m!2920945))

(declare-fun m!2920959 () Bool)

(assert (=> b!2584632 m!2920959))

(assert (=> b!2584635 m!2920933))

(declare-fun m!2920961 () Bool)

(assert (=> d!731904 m!2920961))

(declare-fun m!2920963 () Bool)

(assert (=> d!731904 m!2920963))

(declare-fun m!2920965 () Bool)

(assert (=> d!731904 m!2920965))

(assert (=> d!731904 m!2920647))

(assert (=> b!2584634 m!2920933))

(declare-fun m!2920967 () Bool)

(assert (=> b!2584634 m!2920967))

(assert (=> b!2584634 m!2920967))

(declare-fun m!2920969 () Bool)

(assert (=> b!2584634 m!2920969))

(assert (=> b!2584634 m!2920969))

(declare-fun m!2920971 () Bool)

(assert (=> b!2584634 m!2920971))

(assert (=> b!2584637 m!2920933))

(assert (=> b!2584637 m!2920967))

(assert (=> b!2584637 m!2920967))

(assert (=> b!2584637 m!2920969))

(assert (=> b!2584637 m!2920969))

(declare-fun m!2920973 () Bool)

(assert (=> b!2584637 m!2920973))

(assert (=> b!2584273 d!731904))

(declare-fun d!731914 () Bool)

(declare-fun dynLambda!12574 (Int BalanceConc!18178) TokenValue!4738)

(assert (=> d!731914 (= (apply!7021 (transformation!4516 rule!570) (seqFromList!3156 lt!908898)) (dynLambda!12574 (toValue!6406 (transformation!4516 rule!570)) (seqFromList!3156 lt!908898)))))

(declare-fun b_lambda!76727 () Bool)

(assert (=> (not b_lambda!76727) (not d!731914)))

(declare-fun tb!140761 () Bool)

(declare-fun t!212136 () Bool)

(assert (=> (and b!2584261 (= (toValue!6406 (transformation!4516 (h!35164 rs!798))) (toValue!6406 (transformation!4516 rule!570))) t!212136) tb!140761))

(declare-fun result!174988 () Bool)

(assert (=> tb!140761 (= result!174988 (inv!21 (dynLambda!12574 (toValue!6406 (transformation!4516 rule!570)) (seqFromList!3156 lt!908898))))))

(declare-fun m!2920975 () Bool)

(assert (=> tb!140761 m!2920975))

(assert (=> d!731914 t!212136))

(declare-fun b_and!189387 () Bool)

(assert (= b_and!189323 (and (=> t!212136 result!174988) b_and!189387)))

(declare-fun t!212138 () Bool)

(declare-fun tb!140763 () Bool)

(assert (=> (and b!2584277 (= (toValue!6406 (transformation!4516 rule!570)) (toValue!6406 (transformation!4516 rule!570))) t!212138) tb!140763))

(declare-fun result!174992 () Bool)

(assert (= result!174992 result!174988))

(assert (=> d!731914 t!212138))

(declare-fun b_and!189389 () Bool)

(assert (= b_and!189327 (and (=> t!212138 result!174992) b_and!189389)))

(declare-fun t!212140 () Bool)

(declare-fun tb!140765 () Bool)

(assert (=> (and b!2584274 (= (toValue!6406 (transformation!4516 (rule!6878 token!562))) (toValue!6406 (transformation!4516 rule!570))) t!212140) tb!140765))

(declare-fun result!174994 () Bool)

(assert (= result!174994 result!174988))

(assert (=> d!731914 t!212140))

(declare-fun b_and!189391 () Bool)

(assert (= b_and!189331 (and (=> t!212140 result!174994) b_and!189391)))

(declare-fun tb!140767 () Bool)

(declare-fun t!212142 () Bool)

(assert (=> (and b!2584271 (= (toValue!6406 (transformation!4516 (h!35164 rules!4580))) (toValue!6406 (transformation!4516 rule!570))) t!212142) tb!140767))

(declare-fun result!174996 () Bool)

(assert (= result!174996 result!174988))

(assert (=> d!731914 t!212142))

(declare-fun b_and!189393 () Bool)

(assert (= b_and!189335 (and (=> t!212142 result!174996) b_and!189393)))

(assert (=> d!731914 m!2920635))

(declare-fun m!2920977 () Bool)

(assert (=> d!731914 m!2920977))

(assert (=> b!2584273 d!731914))

(declare-fun d!731916 () Bool)

(declare-fun lt!909006 () Int)

(assert (=> d!731916 (>= lt!909006 0)))

(declare-fun e!1630820 () Int)

(assert (=> d!731916 (= lt!909006 e!1630820)))

(declare-fun c!416730 () Bool)

(assert (=> d!731916 (= c!416730 (is-Nil!29743 lt!908898))))

(assert (=> d!731916 (= (size!23060 lt!908898) lt!909006)))

(declare-fun b!2584664 () Bool)

(assert (=> b!2584664 (= e!1630820 0)))

(declare-fun b!2584665 () Bool)

(assert (=> b!2584665 (= e!1630820 (+ 1 (size!23060 (t!212112 lt!908898))))))

(assert (= (and d!731916 c!416730) b!2584664))

(assert (= (and d!731916 (not c!416730)) b!2584665))

(declare-fun m!2920979 () Bool)

(assert (=> b!2584665 m!2920979))

(assert (=> b!2584273 d!731916))

(declare-fun d!731918 () Bool)

(assert (=> d!731918 (= (maxPrefixOneRule!1451 thiss!28211 rule!570 input!3654) (Some!5930 (tuple2!29701 (Token!8503 (apply!7021 (transformation!4516 rule!570) (seqFromList!3156 lt!908898)) rule!570 (size!23060 lt!908898) lt!908898) suffix!1684)))))

(declare-fun lt!909015 () Unit!43585)

(declare-fun choose!15232 (LexerInterface!4113 List!29844 List!29843 List!29843 List!29843 Rule!8832) Unit!43585)

(assert (=> d!731918 (= lt!909015 (choose!15232 thiss!28211 rules!4580 lt!908898 input!3654 suffix!1684 rule!570))))

(assert (=> d!731918 (not (isEmpty!17096 rules!4580))))

(assert (=> d!731918 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!614 thiss!28211 rules!4580 lt!908898 input!3654 suffix!1684 rule!570) lt!909015)))

(declare-fun bs!471666 () Bool)

(assert (= bs!471666 d!731918))

(assert (=> bs!471666 m!2920631))

(assert (=> bs!471666 m!2920635))

(declare-fun m!2921015 () Bool)

(assert (=> bs!471666 m!2921015))

(assert (=> bs!471666 m!2920633))

(assert (=> bs!471666 m!2920635))

(assert (=> bs!471666 m!2920637))

(assert (=> bs!471666 m!2920605))

(assert (=> b!2584273 d!731918))

(assert (=> b!2584273 d!731850))

(declare-fun d!731922 () Bool)

(declare-fun fromListB!1427 (List!29843) BalanceConc!18178)

(assert (=> d!731922 (= (seqFromList!3156 lt!908898) (fromListB!1427 lt!908898))))

(declare-fun bs!471667 () Bool)

(assert (= bs!471667 d!731922))

(declare-fun m!2921029 () Bool)

(assert (=> bs!471667 m!2921029))

(assert (=> b!2584273 d!731922))

(declare-fun d!731926 () Bool)

(assert (=> d!731926 (= (inv!40169 (tag!5006 (h!35164 rs!798))) (= (mod (str.len (value!145954 (tag!5006 (h!35164 rs!798)))) 2) 0))))

(assert (=> b!2584263 d!731926))

(declare-fun d!731928 () Bool)

(declare-fun res!1086985 () Bool)

(declare-fun e!1630831 () Bool)

(assert (=> d!731928 (=> (not res!1086985) (not e!1630831))))

(assert (=> d!731928 (= res!1086985 (semiInverseModEq!1885 (toChars!6265 (transformation!4516 (h!35164 rs!798))) (toValue!6406 (transformation!4516 (h!35164 rs!798)))))))

(assert (=> d!731928 (= (inv!40172 (transformation!4516 (h!35164 rs!798))) e!1630831)))

(declare-fun b!2584689 () Bool)

(assert (=> b!2584689 (= e!1630831 (equivClasses!1786 (toChars!6265 (transformation!4516 (h!35164 rs!798))) (toValue!6406 (transformation!4516 (h!35164 rs!798)))))))

(assert (= (and d!731928 res!1086985) b!2584689))

(declare-fun m!2921031 () Bool)

(assert (=> d!731928 m!2921031))

(declare-fun m!2921033 () Bool)

(assert (=> b!2584689 m!2921033))

(assert (=> b!2584263 d!731928))

(declare-fun b!2584694 () Bool)

(declare-fun e!1630834 () Bool)

(declare-fun tp!820455 () Bool)

(assert (=> b!2584694 (= e!1630834 (and tp_is_empty!13215 tp!820455))))

(assert (=> b!2584259 (= tp!820385 e!1630834)))

(assert (= (and b!2584259 (is-Cons!29743 (t!212112 suffix!1684))) b!2584694))

(declare-fun b!2584710 () Bool)

(declare-fun e!1630839 () Bool)

(declare-fun tp!820468 () Bool)

(declare-fun tp!820467 () Bool)

(assert (=> b!2584710 (= e!1630839 (and tp!820468 tp!820467))))

(declare-fun b!2584711 () Bool)

(declare-fun tp!820466 () Bool)

(assert (=> b!2584711 (= e!1630839 tp!820466)))

(declare-fun b!2584712 () Bool)

(declare-fun tp!820470 () Bool)

(declare-fun tp!820469 () Bool)

(assert (=> b!2584712 (= e!1630839 (and tp!820470 tp!820469))))

(declare-fun b!2584709 () Bool)

(assert (=> b!2584709 (= e!1630839 tp_is_empty!13215)))

(assert (=> b!2584275 (= tp!820389 e!1630839)))

(assert (= (and b!2584275 (is-ElementMatch!7660 (regex!4516 (rule!6878 token!562)))) b!2584709))

(assert (= (and b!2584275 (is-Concat!12399 (regex!4516 (rule!6878 token!562)))) b!2584710))

(assert (= (and b!2584275 (is-Star!7660 (regex!4516 (rule!6878 token!562)))) b!2584711))

(assert (= (and b!2584275 (is-Union!7660 (regex!4516 (rule!6878 token!562)))) b!2584712))

(declare-fun b!2584725 () Bool)

(declare-fun b_free!72773 () Bool)

(declare-fun b_next!73477 () Bool)

(assert (=> b!2584725 (= b_free!72773 (not b_next!73477))))

(declare-fun t!212144 () Bool)

(declare-fun tb!140769 () Bool)

(assert (=> (and b!2584725 (= (toValue!6406 (transformation!4516 (h!35164 (t!212113 rules!4580)))) (toValue!6406 (transformation!4516 rule!570))) t!212144) tb!140769))

(declare-fun result!175004 () Bool)

(assert (= result!175004 result!174988))

(assert (=> d!731914 t!212144))

(declare-fun b_and!189395 () Bool)

(declare-fun tp!820481 () Bool)

(assert (=> b!2584725 (= tp!820481 (and (=> t!212144 result!175004) b_and!189395))))

(declare-fun b_free!72775 () Bool)

(declare-fun b_next!73479 () Bool)

(assert (=> b!2584725 (= b_free!72775 (not b_next!73479))))

(declare-fun tb!140771 () Bool)

(declare-fun t!212146 () Bool)

(assert (=> (and b!2584725 (= (toChars!6265 (transformation!4516 (h!35164 (t!212113 rules!4580)))) (toChars!6265 (transformation!4516 (rule!6878 token!562)))) t!212146) tb!140771))

(declare-fun result!175006 () Bool)

(assert (= result!175006 result!174968))

(assert (=> d!731850 t!212146))

(assert (=> b!2584490 t!212146))

(declare-fun tp!820482 () Bool)

(declare-fun b_and!189397 () Bool)

(assert (=> b!2584725 (= tp!820482 (and (=> t!212146 result!175006) b_and!189397))))

(declare-fun e!1630852 () Bool)

(assert (=> b!2584725 (= e!1630852 (and tp!820481 tp!820482))))

(declare-fun e!1630851 () Bool)

(declare-fun b!2584724 () Bool)

(declare-fun tp!820480 () Bool)

(assert (=> b!2584724 (= e!1630851 (and tp!820480 (inv!40169 (tag!5006 (h!35164 (t!212113 rules!4580)))) (inv!40172 (transformation!4516 (h!35164 (t!212113 rules!4580)))) e!1630852))))

(declare-fun b!2584723 () Bool)

(declare-fun e!1630849 () Bool)

(declare-fun tp!820479 () Bool)

(assert (=> b!2584723 (= e!1630849 (and e!1630851 tp!820479))))

(assert (=> b!2584276 (= tp!820386 e!1630849)))

(assert (= b!2584724 b!2584725))

(assert (= b!2584723 b!2584724))

(assert (= (and b!2584276 (is-Cons!29744 (t!212113 rules!4580))) b!2584723))

(declare-fun m!2921037 () Bool)

(assert (=> b!2584724 m!2921037))

(declare-fun m!2921039 () Bool)

(assert (=> b!2584724 m!2921039))

(declare-fun b!2584727 () Bool)

(declare-fun e!1630853 () Bool)

(declare-fun tp!820485 () Bool)

(declare-fun tp!820484 () Bool)

(assert (=> b!2584727 (= e!1630853 (and tp!820485 tp!820484))))

(declare-fun b!2584728 () Bool)

(declare-fun tp!820483 () Bool)

(assert (=> b!2584728 (= e!1630853 tp!820483)))

(declare-fun b!2584729 () Bool)

(declare-fun tp!820487 () Bool)

(declare-fun tp!820486 () Bool)

(assert (=> b!2584729 (= e!1630853 (and tp!820487 tp!820486))))

(declare-fun b!2584726 () Bool)

(assert (=> b!2584726 (= e!1630853 tp_is_empty!13215)))

(assert (=> b!2584255 (= tp!820383 e!1630853)))

(assert (= (and b!2584255 (is-ElementMatch!7660 (regex!4516 rule!570))) b!2584726))

(assert (= (and b!2584255 (is-Concat!12399 (regex!4516 rule!570))) b!2584727))

(assert (= (and b!2584255 (is-Star!7660 (regex!4516 rule!570))) b!2584728))

(assert (= (and b!2584255 (is-Union!7660 (regex!4516 rule!570))) b!2584729))

(declare-fun b!2584731 () Bool)

(declare-fun e!1630855 () Bool)

(declare-fun tp!820488 () Bool)

(assert (=> b!2584731 (= e!1630855 (and tp_is_empty!13215 tp!820488))))

(assert (=> b!2584262 (= tp!820381 e!1630855)))

(assert (= (and b!2584262 (is-Cons!29743 (t!212112 input!3654))) b!2584731))

(declare-fun b!2584734 () Bool)

(declare-fun b_free!72777 () Bool)

(declare-fun b_next!73481 () Bool)

(assert (=> b!2584734 (= b_free!72777 (not b_next!73481))))

(declare-fun t!212148 () Bool)

(declare-fun tb!140773 () Bool)

(assert (=> (and b!2584734 (= (toValue!6406 (transformation!4516 (h!35164 (t!212113 rs!798)))) (toValue!6406 (transformation!4516 rule!570))) t!212148) tb!140773))

(declare-fun result!175008 () Bool)

(assert (= result!175008 result!174988))

(assert (=> d!731914 t!212148))

(declare-fun b_and!189399 () Bool)

(declare-fun tp!820491 () Bool)

(assert (=> b!2584734 (= tp!820491 (and (=> t!212148 result!175008) b_and!189399))))

(declare-fun b_free!72779 () Bool)

(declare-fun b_next!73483 () Bool)

(assert (=> b!2584734 (= b_free!72779 (not b_next!73483))))

(declare-fun tb!140775 () Bool)

(declare-fun t!212150 () Bool)

(assert (=> (and b!2584734 (= (toChars!6265 (transformation!4516 (h!35164 (t!212113 rs!798)))) (toChars!6265 (transformation!4516 (rule!6878 token!562)))) t!212150) tb!140775))

(declare-fun result!175010 () Bool)

(assert (= result!175010 result!174968))

(assert (=> d!731850 t!212150))

(assert (=> b!2584490 t!212150))

(declare-fun tp!820492 () Bool)

(declare-fun b_and!189401 () Bool)

(assert (=> b!2584734 (= tp!820492 (and (=> t!212150 result!175010) b_and!189401))))

(declare-fun e!1630859 () Bool)

(assert (=> b!2584734 (= e!1630859 (and tp!820491 tp!820492))))

(declare-fun e!1630858 () Bool)

(declare-fun b!2584733 () Bool)

(declare-fun tp!820490 () Bool)

(assert (=> b!2584733 (= e!1630858 (and tp!820490 (inv!40169 (tag!5006 (h!35164 (t!212113 rs!798)))) (inv!40172 (transformation!4516 (h!35164 (t!212113 rs!798)))) e!1630859))))

(declare-fun b!2584732 () Bool)

(declare-fun e!1630856 () Bool)

(declare-fun tp!820489 () Bool)

(assert (=> b!2584732 (= e!1630856 (and e!1630858 tp!820489))))

(assert (=> b!2584272 (= tp!820391 e!1630856)))

(assert (= b!2584733 b!2584734))

(assert (= b!2584732 b!2584733))

(assert (= (and b!2584272 (is-Cons!29744 (t!212113 rs!798))) b!2584732))

(declare-fun m!2921045 () Bool)

(assert (=> b!2584733 m!2921045))

(declare-fun m!2921047 () Bool)

(assert (=> b!2584733 m!2921047))

(declare-fun b!2584736 () Bool)

(declare-fun e!1630860 () Bool)

(declare-fun tp!820495 () Bool)

(declare-fun tp!820494 () Bool)

(assert (=> b!2584736 (= e!1630860 (and tp!820495 tp!820494))))

(declare-fun b!2584737 () Bool)

(declare-fun tp!820493 () Bool)

(assert (=> b!2584737 (= e!1630860 tp!820493)))

(declare-fun b!2584738 () Bool)

(declare-fun tp!820497 () Bool)

(declare-fun tp!820496 () Bool)

(assert (=> b!2584738 (= e!1630860 (and tp!820497 tp!820496))))

(declare-fun b!2584735 () Bool)

(assert (=> b!2584735 (= e!1630860 tp_is_empty!13215)))

(assert (=> b!2584267 (= tp!820387 e!1630860)))

(assert (= (and b!2584267 (is-ElementMatch!7660 (regex!4516 (h!35164 rules!4580)))) b!2584735))

(assert (= (and b!2584267 (is-Concat!12399 (regex!4516 (h!35164 rules!4580)))) b!2584736))

(assert (= (and b!2584267 (is-Star!7660 (regex!4516 (h!35164 rules!4580)))) b!2584737))

(assert (= (and b!2584267 (is-Union!7660 (regex!4516 (h!35164 rules!4580)))) b!2584738))

(declare-fun b!2584739 () Bool)

(declare-fun e!1630861 () Bool)

(declare-fun tp!820498 () Bool)

(assert (=> b!2584739 (= e!1630861 (and tp_is_empty!13215 tp!820498))))

(assert (=> b!2584268 (= tp!820395 e!1630861)))

(assert (= (and b!2584268 (is-Cons!29743 (originalCharacters!5282 token!562))) b!2584739))

(declare-fun b!2584741 () Bool)

(declare-fun e!1630862 () Bool)

(declare-fun tp!820501 () Bool)

(declare-fun tp!820500 () Bool)

(assert (=> b!2584741 (= e!1630862 (and tp!820501 tp!820500))))

(declare-fun b!2584742 () Bool)

(declare-fun tp!820499 () Bool)

(assert (=> b!2584742 (= e!1630862 tp!820499)))

(declare-fun b!2584743 () Bool)

(declare-fun tp!820503 () Bool)

(declare-fun tp!820502 () Bool)

(assert (=> b!2584743 (= e!1630862 (and tp!820503 tp!820502))))

(declare-fun b!2584740 () Bool)

(assert (=> b!2584740 (= e!1630862 tp_is_empty!13215)))

(assert (=> b!2584263 (= tp!820390 e!1630862)))

(assert (= (and b!2584263 (is-ElementMatch!7660 (regex!4516 (h!35164 rs!798)))) b!2584740))

(assert (= (and b!2584263 (is-Concat!12399 (regex!4516 (h!35164 rs!798)))) b!2584741))

(assert (= (and b!2584263 (is-Star!7660 (regex!4516 (h!35164 rs!798)))) b!2584742))

(assert (= (and b!2584263 (is-Union!7660 (regex!4516 (h!35164 rs!798)))) b!2584743))

(declare-fun b_lambda!76729 () Bool)

(assert (= b_lambda!76717 (or b!2584257 b_lambda!76729)))

(declare-fun bs!471669 () Bool)

(declare-fun d!731938 () Bool)

(assert (= bs!471669 (and d!731938 b!2584257)))

(assert (=> bs!471669 (= (dynLambda!12570 lambda!95754 (h!35165 (map!6602 rs!798 lambda!95753))) (validRegex!3274 (h!35165 (map!6602 rs!798 lambda!95753))))))

(declare-fun m!2921049 () Bool)

(assert (=> bs!471669 m!2921049))

(assert (=> b!2584395 d!731938))

(declare-fun b_lambda!76731 () Bool)

(assert (= b_lambda!76713 (or (and b!2584274 b_free!72751) (and b!2584271 b_free!72755 (= (toChars!6265 (transformation!4516 (h!35164 rules!4580))) (toChars!6265 (transformation!4516 (rule!6878 token!562))))) (and b!2584277 b_free!72747 (= (toChars!6265 (transformation!4516 rule!570)) (toChars!6265 (transformation!4516 (rule!6878 token!562))))) (and b!2584261 b_free!72743 (= (toChars!6265 (transformation!4516 (h!35164 rs!798))) (toChars!6265 (transformation!4516 (rule!6878 token!562))))) (and b!2584734 b_free!72779 (= (toChars!6265 (transformation!4516 (h!35164 (t!212113 rs!798)))) (toChars!6265 (transformation!4516 (rule!6878 token!562))))) (and b!2584725 b_free!72775 (= (toChars!6265 (transformation!4516 (h!35164 (t!212113 rules!4580)))) (toChars!6265 (transformation!4516 (rule!6878 token!562))))) b_lambda!76731)))

(declare-fun b_lambda!76733 () Bool)

(assert (= b_lambda!76719 (or b!2584257 b_lambda!76733)))

(declare-fun bs!471670 () Bool)

(declare-fun d!731940 () Bool)

(assert (= bs!471670 (and d!731940 b!2584257)))

(assert (=> bs!471670 (= (dynLambda!12571 lambda!95753 (h!35164 rs!798)) (regex!4516 (h!35164 rs!798)))))

(assert (=> b!2584406 d!731940))

(declare-fun b_lambda!76735 () Bool)

(assert (= b_lambda!76723 (or (and b!2584274 b_free!72751) (and b!2584271 b_free!72755 (= (toChars!6265 (transformation!4516 (h!35164 rules!4580))) (toChars!6265 (transformation!4516 (rule!6878 token!562))))) (and b!2584277 b_free!72747 (= (toChars!6265 (transformation!4516 rule!570)) (toChars!6265 (transformation!4516 (rule!6878 token!562))))) (and b!2584261 b_free!72743 (= (toChars!6265 (transformation!4516 (h!35164 rs!798))) (toChars!6265 (transformation!4516 (rule!6878 token!562))))) (and b!2584734 b_free!72779 (= (toChars!6265 (transformation!4516 (h!35164 (t!212113 rs!798)))) (toChars!6265 (transformation!4516 (rule!6878 token!562))))) (and b!2584725 b_free!72775 (= (toChars!6265 (transformation!4516 (h!35164 (t!212113 rules!4580)))) (toChars!6265 (transformation!4516 (rule!6878 token!562))))) b_lambda!76735)))

(declare-fun b_lambda!76737 () Bool)

(assert (= b_lambda!76727 (or (and b!2584261 b_free!72741 (= (toValue!6406 (transformation!4516 (h!35164 rs!798))) (toValue!6406 (transformation!4516 rule!570)))) (and b!2584271 b_free!72753 (= (toValue!6406 (transformation!4516 (h!35164 rules!4580))) (toValue!6406 (transformation!4516 rule!570)))) (and b!2584725 b_free!72773 (= (toValue!6406 (transformation!4516 (h!35164 (t!212113 rules!4580)))) (toValue!6406 (transformation!4516 rule!570)))) (and b!2584734 b_free!72777 (= (toValue!6406 (transformation!4516 (h!35164 (t!212113 rs!798)))) (toValue!6406 (transformation!4516 rule!570)))) (and b!2584274 b_free!72749 (= (toValue!6406 (transformation!4516 (rule!6878 token!562))) (toValue!6406 (transformation!4516 rule!570)))) (and b!2584277 b_free!72745) b_lambda!76737)))

(push 1)

(assert (not b!2584639))

(assert (not d!731922))

(assert (not tb!140761))

(assert (not d!731878))

(assert (not b!2584711))

(assert (not b!2584724))

(assert b_and!189389)

(assert (not d!731868))

(assert b_and!189373)

(assert (not b_next!73459))

(assert (not b!2584461))

(assert (not b!2584637))

(assert (not b!2584552))

(assert (not b!2584741))

(assert (not b_next!73481))

(assert b_and!189387)

(assert (not b!2584694))

(assert (not b!2584361))

(assert (not b!2584388))

(assert (not b!2584631))

(assert (not bm!166919))

(assert (not b!2584378))

(assert (not b!2584729))

(assert b_and!189395)

(assert (not b!2584557))

(assert (not d!731872))

(assert (not b_next!73447))

(assert (not b!2584742))

(assert (not b!2584602))

(assert (not b!2584635))

(assert (not b!2584396))

(assert (not b!2584689))

(assert b_and!189371)

(assert (not b_next!73445))

(assert (not b!2584712))

(assert (not b!2584576))

(assert (not b!2584665))

(assert (not b!2584453))

(assert b_and!189401)

(assert (not b_next!73457))

(assert b_and!189399)

(assert b_and!189393)

(assert (not d!731918))

(assert (not d!731848))

(assert (not b!2584555))

(assert (not b_lambda!76735))

(assert (not d!731866))

(assert (not b!2584597))

(assert (not b!2584550))

(assert (not bs!471669))

(assert (not b_next!73451))

(assert (not b!2584743))

(assert (not b!2584571))

(assert (not b_lambda!76729))

(assert (not d!731888))

(assert (not d!731928))

(assert (not b_next!73477))

(assert (not b!2584456))

(assert (not d!731858))

(assert (not b!2584406))

(assert (not b!2584593))

(assert (not b_lambda!76737))

(assert (not d!731838))

(assert (not b!2584727))

(assert (not b_next!73455))

(assert (not b!2584732))

(assert (not b_lambda!76731))

(assert (not d!731904))

(assert (not b!2584634))

(assert b_and!189397)

(assert (not b!2584556))

(assert (not b!2584723))

(assert (not b!2584638))

(assert (not b!2584466))

(assert (not b!2584736))

(assert (not b_next!73483))

(assert (not b_next!73453))

(assert (not d!731896))

(assert (not b!2584599))

(assert (not d!731902))

(assert (not b_next!73479))

(assert (not b!2584738))

(assert (not d!731860))

(assert (not b!2584632))

(assert (not b!2584733))

(assert b_and!189375)

(assert (not b!2584570))

(assert (not b!2584551))

(assert (not b!2584606))

(assert (not b!2584485))

(assert (not d!731890))

(assert (not d!731894))

(assert (not b_lambda!76733))

(assert (not b!2584594))

(assert (not d!731844))

(assert (not b!2584491))

(assert (not b!2584710))

(assert (not b!2584737))

(assert (not b!2584728))

(assert (not b!2584554))

(assert (not d!731876))

(assert (not b!2584608))

(assert (not bm!166912))

(assert (not b!2584377))

(assert (not b!2584739))

(assert (not b_next!73449))

(assert (not b!2584448))

(assert (not b!2584731))

(assert tp_is_empty!13215)

(assert b_and!189391)

(assert (not b!2584460))

(assert (not d!731850))

(assert (not tb!140745))

(assert (not b!2584490))

(assert (not b!2584558))

(assert (not b!2584607))

(assert (not b!2584573))

(assert (not b!2584633))

(assert (not b!2584451))

(assert b_and!189377)

(assert (not bm!166915))

(check-sat)

(pop 1)

(push 1)

(assert b_and!189395)

(assert (not b_next!73445))

(assert b_and!189393)

(assert (not b_next!73451))

(assert (not b_next!73477))

(assert (not b_next!73455))

(assert (not b_next!73479))

(assert b_and!189375)

(assert (not b_next!73449))

(assert b_and!189391)

(assert b_and!189377)

(assert b_and!189389)

(assert b_and!189373)

(assert (not b_next!73459))

(assert (not b_next!73481))

(assert b_and!189387)

(assert (not b_next!73447))

(assert b_and!189371)

(assert b_and!189401)

(assert (not b_next!73457))

(assert b_and!189399)

(assert b_and!189397)

(assert (not b_next!73483))

(assert (not b_next!73453))

(check-sat)

(pop 1)

