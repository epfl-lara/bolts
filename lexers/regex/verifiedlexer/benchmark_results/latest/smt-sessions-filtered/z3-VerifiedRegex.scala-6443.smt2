; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!337050 () Bool)

(assert start!337050)

(declare-fun b!3618609 () Bool)

(declare-fun b_free!94225 () Bool)

(declare-fun b_next!94929 () Bool)

(assert (=> b!3618609 (= b_free!94225 (not b_next!94929))))

(declare-fun tp!1105434 () Bool)

(declare-fun b_and!264435 () Bool)

(assert (=> b!3618609 (= tp!1105434 b_and!264435)))

(declare-fun b_free!94227 () Bool)

(declare-fun b_next!94931 () Bool)

(assert (=> b!3618609 (= b_free!94227 (not b_next!94931))))

(declare-fun tp!1105431 () Bool)

(declare-fun b_and!264437 () Bool)

(assert (=> b!3618609 (= tp!1105431 b_and!264437)))

(declare-fun b!3618602 () Bool)

(declare-fun b_free!94229 () Bool)

(declare-fun b_next!94933 () Bool)

(assert (=> b!3618602 (= b_free!94229 (not b_next!94933))))

(declare-fun tp!1105424 () Bool)

(declare-fun b_and!264439 () Bool)

(assert (=> b!3618602 (= tp!1105424 b_and!264439)))

(declare-fun b_free!94231 () Bool)

(declare-fun b_next!94935 () Bool)

(assert (=> b!3618602 (= b_free!94231 (not b_next!94935))))

(declare-fun tp!1105436 () Bool)

(declare-fun b_and!264441 () Bool)

(assert (=> b!3618602 (= tp!1105436 b_and!264441)))

(declare-fun b!3618562 () Bool)

(declare-fun b_free!94233 () Bool)

(declare-fun b_next!94937 () Bool)

(assert (=> b!3618562 (= b_free!94233 (not b_next!94937))))

(declare-fun tp!1105427 () Bool)

(declare-fun b_and!264443 () Bool)

(assert (=> b!3618562 (= tp!1105427 b_and!264443)))

(declare-fun b_free!94235 () Bool)

(declare-fun b_next!94939 () Bool)

(assert (=> b!3618562 (= b_free!94235 (not b_next!94939))))

(declare-fun tp!1105428 () Bool)

(declare-fun b_and!264445 () Bool)

(assert (=> b!3618562 (= tp!1105428 b_and!264445)))

(declare-fun b!3618578 () Bool)

(declare-fun b_free!94237 () Bool)

(declare-fun b_next!94941 () Bool)

(assert (=> b!3618578 (= b_free!94237 (not b_next!94941))))

(declare-fun tp!1105426 () Bool)

(declare-fun b_and!264447 () Bool)

(assert (=> b!3618578 (= tp!1105426 b_and!264447)))

(declare-fun b_free!94239 () Bool)

(declare-fun b_next!94943 () Bool)

(assert (=> b!3618578 (= b_free!94239 (not b_next!94943))))

(declare-fun tp!1105433 () Bool)

(declare-fun b_and!264449 () Bool)

(assert (=> b!3618578 (= tp!1105433 b_and!264449)))

(declare-fun b!3618558 () Bool)

(declare-fun res!1464229 () Bool)

(declare-fun e!2239679 () Bool)

(assert (=> b!3618558 (=> res!1464229 e!2239679)))

(declare-datatypes ((List!38227 0))(
  ( (Nil!38103) (Cons!38103 (h!43523 (_ BitVec 16)) (t!294018 List!38227)) )
))
(declare-datatypes ((TokenValue!5896 0))(
  ( (FloatLiteralValue!11792 (text!41717 List!38227)) (TokenValueExt!5895 (__x!24009 Int)) (Broken!29480 (value!181915 List!38227)) (Object!6019) (End!5896) (Def!5896) (Underscore!5896) (Match!5896) (Else!5896) (Error!5896) (Case!5896) (If!5896) (Extends!5896) (Abstract!5896) (Class!5896) (Val!5896) (DelimiterValue!11792 (del!5956 List!38227)) (KeywordValue!5902 (value!181916 List!38227)) (CommentValue!11792 (value!181917 List!38227)) (WhitespaceValue!11792 (value!181918 List!38227)) (IndentationValue!5896 (value!181919 List!38227)) (String!42813) (Int32!5896) (Broken!29481 (value!181920 List!38227)) (Boolean!5897) (Unit!54662) (OperatorValue!5899 (op!5956 List!38227)) (IdentifierValue!11792 (value!181921 List!38227)) (IdentifierValue!11793 (value!181922 List!38227)) (WhitespaceValue!11793 (value!181923 List!38227)) (True!11792) (False!11792) (Broken!29482 (value!181924 List!38227)) (Broken!29483 (value!181925 List!38227)) (True!11793) (RightBrace!5896) (RightBracket!5896) (Colon!5896) (Null!5896) (Comma!5896) (LeftBracket!5896) (False!11793) (LeftBrace!5896) (ImaginaryLiteralValue!5896 (text!41718 List!38227)) (StringLiteralValue!17688 (value!181926 List!38227)) (EOFValue!5896 (value!181927 List!38227)) (IdentValue!5896 (value!181928 List!38227)) (DelimiterValue!11793 (value!181929 List!38227)) (DedentValue!5896 (value!181930 List!38227)) (NewLineValue!5896 (value!181931 List!38227)) (IntegerValue!17688 (value!181932 (_ BitVec 32)) (text!41719 List!38227)) (IntegerValue!17689 (value!181933 Int) (text!41720 List!38227)) (Times!5896) (Or!5896) (Equal!5896) (Minus!5896) (Broken!29484 (value!181934 List!38227)) (And!5896) (Div!5896) (LessEqual!5896) (Mod!5896) (Concat!16321) (Not!5896) (Plus!5896) (SpaceValue!5896 (value!181935 List!38227)) (IntegerValue!17690 (value!181936 Int) (text!41721 List!38227)) (StringLiteralValue!17689 (text!41722 List!38227)) (FloatLiteralValue!11793 (text!41723 List!38227)) (BytesLiteralValue!5896 (value!181937 List!38227)) (CommentValue!11793 (value!181938 List!38227)) (StringLiteralValue!17690 (value!181939 List!38227)) (ErrorTokenValue!5896 (msg!5957 List!38227)) )
))
(declare-datatypes ((C!21036 0))(
  ( (C!21037 (val!12566 Int)) )
))
(declare-datatypes ((Regex!10425 0))(
  ( (ElementMatch!10425 (c!626160 C!21036)) (Concat!16322 (regOne!21362 Regex!10425) (regTwo!21362 Regex!10425)) (EmptyExpr!10425) (Star!10425 (reg!10754 Regex!10425)) (EmptyLang!10425) (Union!10425 (regOne!21363 Regex!10425) (regTwo!21363 Regex!10425)) )
))
(declare-datatypes ((String!42814 0))(
  ( (String!42815 (value!181940 String)) )
))
(declare-datatypes ((List!38228 0))(
  ( (Nil!38104) (Cons!38104 (h!43524 C!21036) (t!294019 List!38228)) )
))
(declare-datatypes ((IArray!23239 0))(
  ( (IArray!23240 (innerList!11677 List!38228)) )
))
(declare-datatypes ((Conc!11617 0))(
  ( (Node!11617 (left!29760 Conc!11617) (right!30090 Conc!11617) (csize!23464 Int) (cheight!11828 Int)) (Leaf!18061 (xs!14819 IArray!23239) (csize!23465 Int)) (Empty!11617) )
))
(declare-datatypes ((BalanceConc!22848 0))(
  ( (BalanceConc!22849 (c!626161 Conc!11617)) )
))
(declare-datatypes ((TokenValueInjection!11220 0))(
  ( (TokenValueInjection!11221 (toValue!7950 Int) (toChars!7809 Int)) )
))
(declare-datatypes ((Rule!11132 0))(
  ( (Rule!11133 (regex!5666 Regex!10425) (tag!6382 String!42814) (isSeparator!5666 Bool) (transformation!5666 TokenValueInjection!11220)) )
))
(declare-fun anOtherTypeRule!33 () Rule!11132)

(declare-fun lt!1249226 () C!21036)

(declare-fun contains!7395 (List!38228 C!21036) Bool)

(declare-fun usedCharacters!880 (Regex!10425) List!38228)

(assert (=> b!3618558 (= res!1464229 (not (contains!7395 (usedCharacters!880 (regex!5666 anOtherTypeRule!33)) lt!1249226)))))

(declare-fun b!3618559 () Bool)

(declare-fun e!2239697 () Bool)

(declare-fun e!2239699 () Bool)

(assert (=> b!3618559 (= e!2239697 e!2239699)))

(declare-fun res!1464242 () Bool)

(assert (=> b!3618559 (=> (not res!1464242) (not e!2239699))))

(declare-datatypes ((Token!10698 0))(
  ( (Token!10699 (value!181941 TokenValue!5896) (rule!8426 Rule!11132) (size!29065 Int) (originalCharacters!6380 List!38228)) )
))
(declare-datatypes ((tuple2!37988 0))(
  ( (tuple2!37989 (_1!22128 Token!10698) (_2!22128 List!38228)) )
))
(declare-fun lt!1249186 () tuple2!37988)

(declare-fun token!511 () Token!10698)

(assert (=> b!3618559 (= res!1464242 (= (_1!22128 lt!1249186) token!511))))

(declare-datatypes ((Option!7962 0))(
  ( (None!7961) (Some!7961 (v!37723 tuple2!37988)) )
))
(declare-fun lt!1249187 () Option!7962)

(declare-fun get!12405 (Option!7962) tuple2!37988)

(assert (=> b!3618559 (= lt!1249186 (get!12405 lt!1249187))))

(declare-fun b!3618560 () Bool)

(declare-datatypes ((Unit!54663 0))(
  ( (Unit!54664) )
))
(declare-fun e!2239694 () Unit!54663)

(declare-fun Unit!54665 () Unit!54663)

(assert (=> b!3618560 (= e!2239694 Unit!54665)))

(declare-fun b!3618561 () Bool)

(declare-fun e!2239674 () Bool)

(declare-fun lt!1249221 () tuple2!37988)

(declare-fun lt!1249199 () Rule!11132)

(assert (=> b!3618561 (= e!2239674 (= (rule!8426 (_1!22128 lt!1249221)) lt!1249199))))

(declare-fun e!2239682 () Bool)

(assert (=> b!3618562 (= e!2239682 (and tp!1105427 tp!1105428))))

(declare-fun call!261765 () Unit!54663)

(declare-fun lt!1249201 () C!21036)

(declare-fun lt!1249191 () List!38228)

(declare-fun bm!261756 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!650 (Regex!10425 List!38228 C!21036) Unit!54663)

(assert (=> bm!261756 (= call!261765 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!650 (regex!5666 (rule!8426 (_1!22128 lt!1249221))) lt!1249191 lt!1249201))))

(declare-fun b!3618563 () Bool)

(declare-fun e!2239707 () Bool)

(assert (=> b!3618563 (= e!2239707 true)))

(declare-fun lt!1249200 () Int)

(declare-fun lt!1249227 () List!38228)

(declare-fun size!29066 (List!38228) Int)

(assert (=> b!3618563 (= lt!1249200 (size!29066 lt!1249227))))

(declare-datatypes ((LexerInterface!5255 0))(
  ( (LexerInterfaceExt!5252 (__x!24010 Int)) (Lexer!5253) )
))
(declare-fun thiss!23823 () LexerInterface!5255)

(declare-fun lt!1249220 () List!38228)

(declare-fun rule!403 () Rule!11132)

(declare-fun lt!1249206 () List!38228)

(declare-fun maxPrefixOneRule!1933 (LexerInterface!5255 Rule!11132 List!38228) Option!7962)

(declare-fun apply!9172 (TokenValueInjection!11220 BalanceConc!22848) TokenValue!5896)

(declare-fun seqFromList!4219 (List!38228) BalanceConc!22848)

(assert (=> b!3618563 (= (maxPrefixOneRule!1933 thiss!23823 rule!403 lt!1249227) (Some!7961 (tuple2!37989 (Token!10699 (apply!9172 (transformation!5666 rule!403) (seqFromList!4219 lt!1249220)) rule!403 (size!29066 lt!1249220) lt!1249220) lt!1249206)))))

(declare-datatypes ((List!38229 0))(
  ( (Nil!38105) (Cons!38105 (h!43525 Rule!11132) (t!294020 List!38229)) )
))
(declare-fun rules!3307 () List!38229)

(declare-fun lt!1249205 () Unit!54663)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1005 (LexerInterface!5255 List!38229 List!38228 List!38228 List!38228 Rule!11132) Unit!54663)

(assert (=> b!3618563 (= lt!1249205 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1005 thiss!23823 rules!3307 lt!1249220 lt!1249227 lt!1249206 rule!403))))

(declare-fun getSuffix!1604 (List!38228 List!38228) List!38228)

(assert (=> b!3618563 (= lt!1249206 (getSuffix!1604 lt!1249227 lt!1249220))))

(declare-fun lt!1249197 () Unit!54663)

(declare-fun e!2239684 () Unit!54663)

(assert (=> b!3618563 (= lt!1249197 e!2239684)))

(declare-fun c!626157 () Bool)

(assert (=> b!3618563 (= c!626157 (not (= (rule!8426 (_1!22128 lt!1249221)) (rule!8426 token!511))))))

(assert (=> b!3618563 (= lt!1249191 lt!1249220)))

(declare-fun lt!1249215 () Unit!54663)

(declare-fun lemmaIsPrefixSameLengthThenSameList!603 (List!38228 List!38228 List!38228) Unit!54663)

(assert (=> b!3618563 (= lt!1249215 (lemmaIsPrefixSameLengthThenSameList!603 lt!1249191 lt!1249220 lt!1249227))))

(declare-fun lt!1249212 () Unit!54663)

(declare-fun e!2239706 () Unit!54663)

(assert (=> b!3618563 (= lt!1249212 e!2239706)))

(declare-fun c!626155 () Bool)

(declare-fun lt!1249240 () Int)

(declare-fun lt!1249225 () Int)

(assert (=> b!3618563 (= c!626155 (< lt!1249240 lt!1249225))))

(declare-fun lt!1249222 () Unit!54663)

(assert (=> b!3618563 (= lt!1249222 e!2239694)))

(declare-fun c!626154 () Bool)

(assert (=> b!3618563 (= c!626154 (> lt!1249240 lt!1249225))))

(declare-fun lt!1249188 () BalanceConc!22848)

(declare-fun size!29067 (BalanceConc!22848) Int)

(assert (=> b!3618563 (= lt!1249225 (size!29067 lt!1249188))))

(declare-fun lt!1249182 () Unit!54663)

(declare-fun e!2239675 () Unit!54663)

(assert (=> b!3618563 (= lt!1249182 e!2239675)))

(declare-fun c!626151 () Bool)

(assert (=> b!3618563 (= c!626151 (isSeparator!5666 rule!403))))

(declare-fun lt!1249233 () Unit!54663)

(declare-fun e!2239703 () Unit!54663)

(assert (=> b!3618563 (= lt!1249233 e!2239703)))

(declare-fun c!626159 () Bool)

(declare-fun lt!1249204 () List!38228)

(assert (=> b!3618563 (= c!626159 (not (contains!7395 lt!1249204 lt!1249201)))))

(declare-fun head!7634 (List!38228) C!21036)

(assert (=> b!3618563 (= lt!1249201 (head!7634 lt!1249191))))

(declare-fun b!3618564 () Bool)

(declare-fun e!2239704 () Bool)

(declare-fun e!2239681 () Bool)

(declare-fun tp!1105437 () Bool)

(assert (=> b!3618564 (= e!2239704 (and e!2239681 tp!1105437))))

(declare-fun b!3618565 () Bool)

(declare-fun e!2239693 () Bool)

(declare-fun tp_is_empty!17933 () Bool)

(declare-fun tp!1105430 () Bool)

(assert (=> b!3618565 (= e!2239693 (and tp_is_empty!17933 tp!1105430))))

(declare-fun tp!1105425 () Bool)

(declare-fun e!2239690 () Bool)

(declare-fun e!2239710 () Bool)

(declare-fun b!3618566 () Bool)

(declare-fun inv!51489 (String!42814) Bool)

(declare-fun inv!51492 (TokenValueInjection!11220) Bool)

(assert (=> b!3618566 (= e!2239690 (and tp!1105425 (inv!51489 (tag!6382 anOtherTypeRule!33)) (inv!51492 (transformation!5666 anOtherTypeRule!33)) e!2239710))))

(declare-fun b!3618567 () Bool)

(declare-fun e!2239689 () Unit!54663)

(assert (=> b!3618567 (= e!2239675 e!2239689)))

(declare-fun c!626153 () Bool)

(assert (=> b!3618567 (= c!626153 (not (isSeparator!5666 (rule!8426 (_1!22128 lt!1249221)))))))

(declare-fun b!3618568 () Bool)

(assert (=> b!3618568 false))

(declare-fun lt!1249224 () Unit!54663)

(assert (=> b!3618568 (= lt!1249224 call!261765)))

(declare-fun call!261766 () Bool)

(assert (=> b!3618568 (not call!261766)))

(declare-fun lt!1249207 () Unit!54663)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!372 (LexerInterface!5255 List!38229 List!38229 Rule!11132 Rule!11132 C!21036) Unit!54663)

(assert (=> b!3618568 (= lt!1249207 (lemmaNonSepRuleNotContainsCharContainedInASepRule!372 thiss!23823 rules!3307 rules!3307 (rule!8426 (_1!22128 lt!1249221)) rule!403 lt!1249201))))

(declare-fun Unit!54666 () Unit!54663)

(assert (=> b!3618568 (= e!2239689 Unit!54666)))

(declare-fun b!3618569 () Bool)

(declare-fun e!2239691 () Unit!54663)

(declare-fun Unit!54667 () Unit!54663)

(assert (=> b!3618569 (= e!2239691 Unit!54667)))

(declare-fun b!3618570 () Bool)

(assert (=> b!3618570 false))

(declare-fun lt!1249195 () Unit!54663)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!200 (LexerInterface!5255 List!38229 Rule!11132 List!38228 List!38228 Rule!11132) Unit!54663)

(assert (=> b!3618570 (= lt!1249195 (lemmaMaxPrefNoSmallerRuleMatches!200 thiss!23823 rules!3307 (rule!8426 (_1!22128 lt!1249221)) lt!1249220 lt!1249227 rule!403))))

(declare-fun e!2239692 () Unit!54663)

(declare-fun Unit!54668 () Unit!54663)

(assert (=> b!3618570 (= e!2239692 Unit!54668)))

(declare-fun b!3618571 () Bool)

(declare-fun e!2239702 () Bool)

(assert (=> b!3618571 (= e!2239702 e!2239674)))

(declare-fun res!1464227 () Bool)

(assert (=> b!3618571 (=> (not res!1464227) (not e!2239674))))

(declare-fun matchR!4994 (Regex!10425 List!38228) Bool)

(declare-fun list!14062 (BalanceConc!22848) List!38228)

(declare-fun charsOf!3680 (Token!10698) BalanceConc!22848)

(assert (=> b!3618571 (= res!1464227 (matchR!4994 (regex!5666 lt!1249199) (list!14062 (charsOf!3680 (_1!22128 lt!1249221)))))))

(declare-datatypes ((Option!7963 0))(
  ( (None!7962) (Some!7962 (v!37724 Rule!11132)) )
))
(declare-fun lt!1249192 () Option!7963)

(declare-fun get!12406 (Option!7963) Rule!11132)

(assert (=> b!3618571 (= lt!1249199 (get!12406 lt!1249192))))

(declare-fun b!3618572 () Bool)

(declare-fun Unit!54669 () Unit!54663)

(assert (=> b!3618572 (= e!2239703 Unit!54669)))

(declare-fun lt!1249198 () Unit!54663)

(assert (=> b!3618572 (= lt!1249198 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!650 (regex!5666 rule!403) lt!1249220 lt!1249201))))

(assert (=> b!3618572 false))

(declare-fun b!3618573 () Bool)

(declare-fun Unit!54670 () Unit!54663)

(assert (=> b!3618573 (= e!2239706 Unit!54670)))

(declare-fun lt!1249232 () Unit!54663)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!314 (LexerInterface!5255 List!38229 Rule!11132 List!38228 List!38228 List!38228 Rule!11132) Unit!54663)

(assert (=> b!3618573 (= lt!1249232 (lemmaMaxPrefixOutputsMaxPrefix!314 thiss!23823 rules!3307 (rule!8426 (_1!22128 lt!1249221)) lt!1249191 lt!1249227 lt!1249220 rule!403))))

(assert (=> b!3618573 false))

(declare-fun b!3618574 () Bool)

(declare-fun res!1464235 () Bool)

(assert (=> b!3618574 (=> (not res!1464235) (not e!2239699))))

(declare-fun isEmpty!22514 (List!38228) Bool)

(assert (=> b!3618574 (= res!1464235 (isEmpty!22514 (_2!22128 lt!1249186)))))

(declare-fun b!3618575 () Bool)

(declare-fun Unit!54671 () Unit!54663)

(assert (=> b!3618575 (= e!2239689 Unit!54671)))

(declare-fun e!2239700 () Bool)

(declare-fun tp!1105432 () Bool)

(declare-fun b!3618576 () Bool)

(declare-fun e!2239678 () Bool)

(assert (=> b!3618576 (= e!2239700 (and tp!1105432 (inv!51489 (tag!6382 (rule!8426 token!511))) (inv!51492 (transformation!5666 (rule!8426 token!511))) e!2239678))))

(declare-fun b!3618577 () Bool)

(declare-fun e!2239687 () Bool)

(assert (=> b!3618577 (= e!2239687 e!2239679)))

(declare-fun res!1464240 () Bool)

(assert (=> b!3618577 (=> res!1464240 e!2239679)))

(assert (=> b!3618577 (= res!1464240 (contains!7395 lt!1249204 lt!1249226))))

(declare-fun suffix!1395 () List!38228)

(assert (=> b!3618577 (= lt!1249226 (head!7634 suffix!1395))))

(assert (=> b!3618577 (= lt!1249204 (usedCharacters!880 (regex!5666 rule!403)))))

(assert (=> b!3618578 (= e!2239678 (and tp!1105426 tp!1105433))))

(declare-fun b!3618579 () Bool)

(assert (=> b!3618579 (= e!2239699 (not e!2239687))))

(declare-fun res!1464245 () Bool)

(assert (=> b!3618579 (=> res!1464245 e!2239687)))

(assert (=> b!3618579 (= res!1464245 (not (matchR!4994 (regex!5666 rule!403) lt!1249220)))))

(declare-fun ruleValid!1931 (LexerInterface!5255 Rule!11132) Bool)

(assert (=> b!3618579 (ruleValid!1931 thiss!23823 rule!403)))

(declare-fun lt!1249239 () Unit!54663)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1086 (LexerInterface!5255 Rule!11132 List!38229) Unit!54663)

(assert (=> b!3618579 (= lt!1249239 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1086 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3618580 () Bool)

(assert (=> b!3618580 false))

(declare-fun lt!1249196 () Unit!54663)

(assert (=> b!3618580 (= lt!1249196 call!261765)))

(assert (=> b!3618580 (not call!261766)))

(declare-fun lt!1249184 () Unit!54663)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!254 (LexerInterface!5255 List!38229 List!38229 Rule!11132 Rule!11132 C!21036) Unit!54663)

(assert (=> b!3618580 (= lt!1249184 (lemmaSepRuleNotContainsCharContainedInANonSepRule!254 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8426 (_1!22128 lt!1249221)) lt!1249201))))

(declare-fun e!2239686 () Unit!54663)

(declare-fun Unit!54672 () Unit!54663)

(assert (=> b!3618580 (= e!2239686 Unit!54672)))

(declare-fun bm!261758 () Bool)

(declare-fun call!261764 () Bool)

(declare-fun call!261761 () List!38228)

(assert (=> bm!261758 (= call!261764 (contains!7395 call!261761 lt!1249226))))

(declare-fun b!3618581 () Bool)

(declare-fun res!1464244 () Bool)

(assert (=> b!3618581 (=> res!1464244 e!2239679)))

(declare-fun sepAndNonSepRulesDisjointChars!1836 (List!38229 List!38229) Bool)

(assert (=> b!3618581 (= res!1464244 (not (sepAndNonSepRulesDisjointChars!1836 rules!3307 rules!3307)))))

(declare-fun b!3618582 () Bool)

(assert (=> b!3618582 false))

(declare-fun lt!1249230 () Unit!54663)

(declare-fun call!261763 () Unit!54663)

(assert (=> b!3618582 (= lt!1249230 call!261763)))

(assert (=> b!3618582 (not call!261764)))

(declare-fun lt!1249190 () Unit!54663)

(assert (=> b!3618582 (= lt!1249190 (lemmaNonSepRuleNotContainsCharContainedInASepRule!372 thiss!23823 rules!3307 rules!3307 (rule!8426 (_1!22128 lt!1249221)) anOtherTypeRule!33 lt!1249226))))

(declare-fun e!2239676 () Unit!54663)

(declare-fun Unit!54673 () Unit!54663)

(assert (=> b!3618582 (= e!2239676 Unit!54673)))

(declare-fun b!3618583 () Bool)

(declare-fun Unit!54674 () Unit!54663)

(assert (=> b!3618583 (= e!2239686 Unit!54674)))

(declare-fun b!3618584 () Bool)

(declare-fun Unit!54675 () Unit!54663)

(assert (=> b!3618584 (= e!2239684 Unit!54675)))

(declare-fun bm!261759 () Bool)

(declare-fun call!261762 () List!38228)

(assert (=> bm!261759 (= call!261762 (usedCharacters!880 (regex!5666 (rule!8426 (_1!22128 lt!1249221)))))))

(declare-fun b!3618585 () Bool)

(declare-fun Unit!54676 () Unit!54663)

(assert (=> b!3618585 (= e!2239703 Unit!54676)))

(declare-fun b!3618586 () Bool)

(declare-fun res!1464233 () Bool)

(assert (=> b!3618586 (=> (not res!1464233) (not e!2239699))))

(assert (=> b!3618586 (= res!1464233 (= (rule!8426 token!511) rule!403))))

(declare-fun b!3618587 () Bool)

(declare-fun e!2239698 () Bool)

(assert (=> b!3618587 (= e!2239698 e!2239697)))

(declare-fun res!1464238 () Bool)

(assert (=> b!3618587 (=> (not res!1464238) (not e!2239697))))

(declare-fun isDefined!6194 (Option!7962) Bool)

(assert (=> b!3618587 (= res!1464238 (isDefined!6194 lt!1249187))))

(declare-fun maxPrefix!2789 (LexerInterface!5255 List!38229 List!38228) Option!7962)

(assert (=> b!3618587 (= lt!1249187 (maxPrefix!2789 thiss!23823 rules!3307 lt!1249220))))

(assert (=> b!3618587 (= lt!1249220 (list!14062 lt!1249188))))

(assert (=> b!3618587 (= lt!1249188 (charsOf!3680 token!511))))

(declare-fun b!3618588 () Bool)

(declare-fun e!2239705 () Bool)

(assert (=> b!3618588 (= e!2239705 false)))

(declare-fun b!3618589 () Bool)

(assert (=> b!3618589 (= e!2239675 e!2239686)))

(declare-fun c!626152 () Bool)

(assert (=> b!3618589 (= c!626152 (isSeparator!5666 (rule!8426 (_1!22128 lt!1249221))))))

(declare-fun b!3618590 () Bool)

(declare-fun res!1464226 () Bool)

(assert (=> b!3618590 (=> res!1464226 e!2239687)))

(assert (=> b!3618590 (= res!1464226 (isEmpty!22514 suffix!1395))))

(declare-fun bm!261757 () Bool)

(assert (=> bm!261757 (= call!261761 (usedCharacters!880 (regex!5666 (rule!8426 (_1!22128 lt!1249221)))))))

(declare-fun res!1464241 () Bool)

(assert (=> start!337050 (=> (not res!1464241) (not e!2239698))))

(get-info :version)

(assert (=> start!337050 (= res!1464241 ((_ is Lexer!5253) thiss!23823))))

(assert (=> start!337050 e!2239698))

(assert (=> start!337050 e!2239704))

(assert (=> start!337050 e!2239693))

(assert (=> start!337050 true))

(declare-fun e!2239677 () Bool)

(declare-fun inv!51493 (Token!10698) Bool)

(assert (=> start!337050 (and (inv!51493 token!511) e!2239677)))

(declare-fun e!2239695 () Bool)

(assert (=> start!337050 e!2239695))

(assert (=> start!337050 e!2239690))

(declare-fun b!3618591 () Bool)

(declare-fun Unit!54677 () Unit!54663)

(assert (=> b!3618591 (= e!2239692 Unit!54677)))

(declare-fun b!3618592 () Bool)

(declare-fun e!2239708 () Bool)

(declare-fun e!2239680 () Bool)

(assert (=> b!3618592 (= e!2239708 e!2239680)))

(declare-fun res!1464231 () Bool)

(assert (=> b!3618592 (=> res!1464231 e!2239680)))

(declare-fun lt!1249217 () Option!7962)

(declare-fun lt!1249211 () TokenValue!5896)

(assert (=> b!3618592 (= res!1464231 (not (= lt!1249217 (Some!7961 (tuple2!37989 (Token!10699 lt!1249211 (rule!8426 (_1!22128 lt!1249221)) lt!1249240 lt!1249191) (_2!22128 lt!1249221))))))))

(declare-fun lt!1249218 () BalanceConc!22848)

(assert (=> b!3618592 (= lt!1249240 (size!29067 lt!1249218))))

(assert (=> b!3618592 (= lt!1249211 (apply!9172 (transformation!5666 (rule!8426 (_1!22128 lt!1249221))) lt!1249218))))

(declare-fun lt!1249202 () Unit!54663)

(declare-fun lemmaCharactersSize!719 (Token!10698) Unit!54663)

(assert (=> b!3618592 (= lt!1249202 (lemmaCharactersSize!719 (_1!22128 lt!1249221)))))

(declare-fun lt!1249194 () Unit!54663)

(declare-fun lemmaEqSameImage!857 (TokenValueInjection!11220 BalanceConc!22848 BalanceConc!22848) Unit!54663)

(assert (=> b!3618592 (= lt!1249194 (lemmaEqSameImage!857 (transformation!5666 (rule!8426 (_1!22128 lt!1249221))) lt!1249218 (seqFromList!4219 (originalCharacters!6380 (_1!22128 lt!1249221)))))))

(declare-fun lt!1249193 () Unit!54663)

(declare-fun lemmaSemiInverse!1423 (TokenValueInjection!11220 BalanceConc!22848) Unit!54663)

(assert (=> b!3618592 (= lt!1249193 (lemmaSemiInverse!1423 (transformation!5666 (rule!8426 (_1!22128 lt!1249221))) lt!1249218))))

(declare-fun b!3618593 () Bool)

(assert (=> b!3618593 (= e!2239694 e!2239676)))

(declare-fun lt!1249236 () Unit!54663)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!44 (List!38228 List!38228 List!38228 List!38228) Unit!54663)

(assert (=> b!3618593 (= lt!1249236 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!44 lt!1249220 suffix!1395 lt!1249191 lt!1249227))))

(assert (=> b!3618593 (contains!7395 lt!1249191 lt!1249226)))

(declare-fun c!626158 () Bool)

(assert (=> b!3618593 (= c!626158 (isSeparator!5666 rule!403))))

(declare-fun b!3618594 () Bool)

(declare-fun res!1464232 () Bool)

(assert (=> b!3618594 (=> (not res!1464232) (not e!2239698))))

(declare-fun rulesInvariant!4652 (LexerInterface!5255 List!38229) Bool)

(assert (=> b!3618594 (= res!1464232 (rulesInvariant!4652 thiss!23823 rules!3307))))

(declare-fun e!2239696 () Bool)

(declare-fun tp!1105429 () Bool)

(declare-fun b!3618595 () Bool)

(assert (=> b!3618595 (= e!2239695 (and tp!1105429 (inv!51489 (tag!6382 rule!403)) (inv!51492 (transformation!5666 rule!403)) e!2239696))))

(declare-fun bm!261760 () Bool)

(assert (=> bm!261760 (= call!261766 (contains!7395 call!261762 lt!1249201))))

(declare-fun b!3618596 () Bool)

(assert (=> b!3618596 (= e!2239680 e!2239707)))

(declare-fun res!1464234 () Bool)

(assert (=> b!3618596 (=> res!1464234 e!2239707)))

(declare-fun lt!1249228 () Option!7962)

(declare-fun lt!1249203 () List!38228)

(assert (=> b!3618596 (= res!1464234 (or (not (= lt!1249203 (_2!22128 lt!1249221))) (not (= lt!1249228 (Some!7961 (tuple2!37989 (_1!22128 lt!1249221) lt!1249203))))))))

(assert (=> b!3618596 (= (_2!22128 lt!1249221) lt!1249203)))

(declare-fun lt!1249185 () Unit!54663)

(declare-fun lemmaSamePrefixThenSameSuffix!1384 (List!38228 List!38228 List!38228 List!38228 List!38228) Unit!54663)

(assert (=> b!3618596 (= lt!1249185 (lemmaSamePrefixThenSameSuffix!1384 lt!1249191 (_2!22128 lt!1249221) lt!1249191 lt!1249203 lt!1249227))))

(assert (=> b!3618596 (= lt!1249203 (getSuffix!1604 lt!1249227 lt!1249191))))

(declare-fun lt!1249237 () TokenValue!5896)

(declare-fun lt!1249214 () Int)

(assert (=> b!3618596 (= lt!1249228 (Some!7961 (tuple2!37989 (Token!10699 lt!1249237 (rule!8426 (_1!22128 lt!1249221)) lt!1249214 lt!1249191) (_2!22128 lt!1249221))))))

(assert (=> b!3618596 (= lt!1249228 (maxPrefixOneRule!1933 thiss!23823 (rule!8426 (_1!22128 lt!1249221)) lt!1249227))))

(assert (=> b!3618596 (= lt!1249214 (size!29066 lt!1249191))))

(assert (=> b!3618596 (= lt!1249237 (apply!9172 (transformation!5666 (rule!8426 (_1!22128 lt!1249221))) (seqFromList!4219 lt!1249191)))))

(declare-fun lt!1249235 () Unit!54663)

(assert (=> b!3618596 (= lt!1249235 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1005 thiss!23823 rules!3307 lt!1249191 lt!1249227 (_2!22128 lt!1249221) (rule!8426 (_1!22128 lt!1249221))))))

(declare-fun b!3618597 () Bool)

(assert (=> b!3618597 (= e!2239679 e!2239708)))

(declare-fun res!1464239 () Bool)

(assert (=> b!3618597 (=> res!1464239 e!2239708)))

(declare-fun isPrefix!3029 (List!38228 List!38228) Bool)

(assert (=> b!3618597 (= res!1464239 (not (isPrefix!3029 lt!1249191 lt!1249227)))))

(declare-fun ++!9482 (List!38228 List!38228) List!38228)

(assert (=> b!3618597 (isPrefix!3029 lt!1249191 (++!9482 lt!1249191 (_2!22128 lt!1249221)))))

(declare-fun lt!1249213 () Unit!54663)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1950 (List!38228 List!38228) Unit!54663)

(assert (=> b!3618597 (= lt!1249213 (lemmaConcatTwoListThenFirstIsPrefix!1950 lt!1249191 (_2!22128 lt!1249221)))))

(assert (=> b!3618597 (= lt!1249191 (list!14062 lt!1249218))))

(assert (=> b!3618597 (= lt!1249218 (charsOf!3680 (_1!22128 lt!1249221)))))

(assert (=> b!3618597 e!2239702))

(declare-fun res!1464237 () Bool)

(assert (=> b!3618597 (=> (not res!1464237) (not e!2239702))))

(declare-fun isDefined!6195 (Option!7963) Bool)

(assert (=> b!3618597 (= res!1464237 (isDefined!6195 lt!1249192))))

(declare-fun getRuleFromTag!1272 (LexerInterface!5255 List!38229 String!42814) Option!7963)

(assert (=> b!3618597 (= lt!1249192 (getRuleFromTag!1272 thiss!23823 rules!3307 (tag!6382 (rule!8426 (_1!22128 lt!1249221)))))))

(declare-fun lt!1249210 () Unit!54663)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1272 (LexerInterface!5255 List!38229 List!38228 Token!10698) Unit!54663)

(assert (=> b!3618597 (= lt!1249210 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1272 thiss!23823 rules!3307 lt!1249227 (_1!22128 lt!1249221)))))

(assert (=> b!3618597 (= lt!1249221 (get!12405 lt!1249217))))

(declare-fun lt!1249189 () Unit!54663)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!935 (LexerInterface!5255 List!38229 List!38228 List!38228) Unit!54663)

(assert (=> b!3618597 (= lt!1249189 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!935 thiss!23823 rules!3307 lt!1249220 suffix!1395))))

(assert (=> b!3618597 (= lt!1249217 (maxPrefix!2789 thiss!23823 rules!3307 lt!1249227))))

(assert (=> b!3618597 (isPrefix!3029 lt!1249220 lt!1249227)))

(declare-fun lt!1249183 () Unit!54663)

(assert (=> b!3618597 (= lt!1249183 (lemmaConcatTwoListThenFirstIsPrefix!1950 lt!1249220 suffix!1395))))

(assert (=> b!3618597 (= lt!1249227 (++!9482 lt!1249220 suffix!1395))))

(declare-fun b!3618598 () Bool)

(assert (=> b!3618598 e!2239705))

(declare-fun res!1464243 () Bool)

(assert (=> b!3618598 (=> (not res!1464243) (not e!2239705))))

(assert (=> b!3618598 (= res!1464243 (not (matchR!4994 (regex!5666 (rule!8426 (_1!22128 lt!1249221))) lt!1249220)))))

(declare-fun lt!1249219 () Unit!54663)

(assert (=> b!3618598 (= lt!1249219 (lemmaMaxPrefNoSmallerRuleMatches!200 thiss!23823 rules!3307 rule!403 lt!1249220 lt!1249220 (rule!8426 (_1!22128 lt!1249221))))))

(assert (=> b!3618598 (isEmpty!22514 (getSuffix!1604 lt!1249220 lt!1249220))))

(declare-fun lt!1249234 () Unit!54663)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!160 (List!38228) Unit!54663)

(assert (=> b!3618598 (= lt!1249234 (lemmaGetSuffixOnListWithItSelfIsEmpty!160 lt!1249220))))

(declare-fun Unit!54678 () Unit!54663)

(assert (=> b!3618598 (= e!2239691 Unit!54678)))

(declare-fun b!3618599 () Bool)

(declare-fun tp!1105435 () Bool)

(assert (=> b!3618599 (= e!2239681 (and tp!1105435 (inv!51489 (tag!6382 (h!43525 rules!3307))) (inv!51492 (transformation!5666 (h!43525 rules!3307))) e!2239682))))

(declare-fun b!3618600 () Bool)

(declare-fun res!1464236 () Bool)

(assert (=> b!3618600 (=> (not res!1464236) (not e!2239698))))

(declare-fun contains!7396 (List!38229 Rule!11132) Bool)

(assert (=> b!3618600 (= res!1464236 (contains!7396 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3618601 () Bool)

(declare-fun Unit!54679 () Unit!54663)

(assert (=> b!3618601 (= e!2239706 Unit!54679)))

(assert (=> b!3618602 (= e!2239696 (and tp!1105424 tp!1105436))))

(declare-fun b!3618603 () Bool)

(declare-fun res!1464246 () Bool)

(assert (=> b!3618603 (=> (not res!1464246) (not e!2239698))))

(assert (=> b!3618603 (= res!1464246 (not (= (isSeparator!5666 anOtherTypeRule!33) (isSeparator!5666 rule!403))))))

(declare-fun bm!261761 () Bool)

(assert (=> bm!261761 (= call!261763 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!650 (regex!5666 (rule!8426 (_1!22128 lt!1249221))) lt!1249191 lt!1249226))))

(declare-fun b!3618604 () Bool)

(declare-fun Unit!54680 () Unit!54663)

(assert (=> b!3618604 (= e!2239684 Unit!54680)))

(declare-fun lt!1249216 () Int)

(declare-fun getIndex!448 (List!38229 Rule!11132) Int)

(assert (=> b!3618604 (= lt!1249216 (getIndex!448 rules!3307 (rule!8426 (_1!22128 lt!1249221))))))

(declare-fun lt!1249231 () Int)

(assert (=> b!3618604 (= lt!1249231 (getIndex!448 rules!3307 rule!403))))

(declare-fun c!626150 () Bool)

(assert (=> b!3618604 (= c!626150 (< lt!1249216 lt!1249231))))

(declare-fun lt!1249208 () Unit!54663)

(assert (=> b!3618604 (= lt!1249208 e!2239691)))

(declare-fun c!626156 () Bool)

(assert (=> b!3618604 (= c!626156 (< lt!1249231 lt!1249216))))

(declare-fun lt!1249238 () Unit!54663)

(assert (=> b!3618604 (= lt!1249238 e!2239692)))

(declare-fun lt!1249229 () Unit!54663)

(declare-fun lemmaSameIndexThenSameElement!216 (List!38229 Rule!11132 Rule!11132) Unit!54663)

(assert (=> b!3618604 (= lt!1249229 (lemmaSameIndexThenSameElement!216 rules!3307 (rule!8426 (_1!22128 lt!1249221)) rule!403))))

(assert (=> b!3618604 false))

(declare-fun b!3618605 () Bool)

(declare-fun res!1464247 () Bool)

(assert (=> b!3618605 (=> res!1464247 e!2239708)))

(assert (=> b!3618605 (= res!1464247 (not (matchR!4994 (regex!5666 (rule!8426 (_1!22128 lt!1249221))) lt!1249191)))))

(declare-fun b!3618606 () Bool)

(declare-fun res!1464230 () Bool)

(assert (=> b!3618606 (=> (not res!1464230) (not e!2239698))))

(declare-fun isEmpty!22515 (List!38229) Bool)

(assert (=> b!3618606 (= res!1464230 (not (isEmpty!22515 rules!3307)))))

(declare-fun b!3618607 () Bool)

(declare-fun res!1464228 () Bool)

(assert (=> b!3618607 (=> (not res!1464228) (not e!2239698))))

(assert (=> b!3618607 (= res!1464228 (contains!7396 rules!3307 rule!403))))

(declare-fun b!3618608 () Bool)

(assert (=> b!3618608 false))

(declare-fun lt!1249209 () Unit!54663)

(assert (=> b!3618608 (= lt!1249209 call!261763)))

(assert (=> b!3618608 (not call!261764)))

(declare-fun lt!1249223 () Unit!54663)

(assert (=> b!3618608 (= lt!1249223 (lemmaSepRuleNotContainsCharContainedInANonSepRule!254 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8426 (_1!22128 lt!1249221)) lt!1249226))))

(declare-fun Unit!54681 () Unit!54663)

(assert (=> b!3618608 (= e!2239676 Unit!54681)))

(assert (=> b!3618609 (= e!2239710 (and tp!1105434 tp!1105431))))

(declare-fun b!3618610 () Bool)

(declare-fun tp!1105438 () Bool)

(declare-fun inv!21 (TokenValue!5896) Bool)

(assert (=> b!3618610 (= e!2239677 (and (inv!21 (value!181941 token!511)) e!2239700 tp!1105438))))

(assert (= (and start!337050 res!1464241) b!3618606))

(assert (= (and b!3618606 res!1464230) b!3618594))

(assert (= (and b!3618594 res!1464232) b!3618607))

(assert (= (and b!3618607 res!1464228) b!3618600))

(assert (= (and b!3618600 res!1464236) b!3618603))

(assert (= (and b!3618603 res!1464246) b!3618587))

(assert (= (and b!3618587 res!1464238) b!3618559))

(assert (= (and b!3618559 res!1464242) b!3618574))

(assert (= (and b!3618574 res!1464235) b!3618586))

(assert (= (and b!3618586 res!1464233) b!3618579))

(assert (= (and b!3618579 (not res!1464245)) b!3618590))

(assert (= (and b!3618590 (not res!1464226)) b!3618577))

(assert (= (and b!3618577 (not res!1464240)) b!3618558))

(assert (= (and b!3618558 (not res!1464229)) b!3618581))

(assert (= (and b!3618581 (not res!1464244)) b!3618597))

(assert (= (and b!3618597 res!1464237) b!3618571))

(assert (= (and b!3618571 res!1464227) b!3618561))

(assert (= (and b!3618597 (not res!1464239)) b!3618605))

(assert (= (and b!3618605 (not res!1464247)) b!3618592))

(assert (= (and b!3618592 (not res!1464231)) b!3618596))

(assert (= (and b!3618596 (not res!1464234)) b!3618563))

(assert (= (and b!3618563 c!626159) b!3618572))

(assert (= (and b!3618563 (not c!626159)) b!3618585))

(assert (= (and b!3618563 c!626151) b!3618567))

(assert (= (and b!3618563 (not c!626151)) b!3618589))

(assert (= (and b!3618567 c!626153) b!3618568))

(assert (= (and b!3618567 (not c!626153)) b!3618575))

(assert (= (and b!3618589 c!626152) b!3618580))

(assert (= (and b!3618589 (not c!626152)) b!3618583))

(assert (= (or b!3618568 b!3618580) bm!261756))

(assert (= (or b!3618568 b!3618580) bm!261759))

(assert (= (or b!3618568 b!3618580) bm!261760))

(assert (= (and b!3618563 c!626154) b!3618593))

(assert (= (and b!3618563 (not c!626154)) b!3618560))

(assert (= (and b!3618593 c!626158) b!3618608))

(assert (= (and b!3618593 (not c!626158)) b!3618582))

(assert (= (or b!3618608 b!3618582) bm!261761))

(assert (= (or b!3618608 b!3618582) bm!261757))

(assert (= (or b!3618608 b!3618582) bm!261758))

(assert (= (and b!3618563 c!626155) b!3618573))

(assert (= (and b!3618563 (not c!626155)) b!3618601))

(assert (= (and b!3618563 c!626157) b!3618604))

(assert (= (and b!3618563 (not c!626157)) b!3618584))

(assert (= (and b!3618604 c!626150) b!3618598))

(assert (= (and b!3618604 (not c!626150)) b!3618569))

(assert (= (and b!3618598 res!1464243) b!3618588))

(assert (= (and b!3618604 c!626156) b!3618570))

(assert (= (and b!3618604 (not c!626156)) b!3618591))

(assert (= b!3618599 b!3618562))

(assert (= b!3618564 b!3618599))

(assert (= (and start!337050 ((_ is Cons!38105) rules!3307)) b!3618564))

(assert (= (and start!337050 ((_ is Cons!38104) suffix!1395)) b!3618565))

(assert (= b!3618576 b!3618578))

(assert (= b!3618610 b!3618576))

(assert (= start!337050 b!3618610))

(assert (= b!3618595 b!3618602))

(assert (= start!337050 b!3618595))

(assert (= b!3618566 b!3618609))

(assert (= start!337050 b!3618566))

(declare-fun m!4117647 () Bool)

(assert (=> b!3618598 m!4117647))

(declare-fun m!4117649 () Bool)

(assert (=> b!3618598 m!4117649))

(assert (=> b!3618598 m!4117649))

(declare-fun m!4117651 () Bool)

(assert (=> b!3618598 m!4117651))

(declare-fun m!4117653 () Bool)

(assert (=> b!3618598 m!4117653))

(declare-fun m!4117655 () Bool)

(assert (=> b!3618598 m!4117655))

(declare-fun m!4117657 () Bool)

(assert (=> b!3618610 m!4117657))

(declare-fun m!4117659 () Bool)

(assert (=> b!3618571 m!4117659))

(assert (=> b!3618571 m!4117659))

(declare-fun m!4117661 () Bool)

(assert (=> b!3618571 m!4117661))

(assert (=> b!3618571 m!4117661))

(declare-fun m!4117663 () Bool)

(assert (=> b!3618571 m!4117663))

(declare-fun m!4117665 () Bool)

(assert (=> b!3618571 m!4117665))

(declare-fun m!4117667 () Bool)

(assert (=> b!3618570 m!4117667))

(declare-fun m!4117669 () Bool)

(assert (=> b!3618582 m!4117669))

(declare-fun m!4117671 () Bool)

(assert (=> b!3618592 m!4117671))

(declare-fun m!4117673 () Bool)

(assert (=> b!3618592 m!4117673))

(declare-fun m!4117675 () Bool)

(assert (=> b!3618592 m!4117675))

(declare-fun m!4117677 () Bool)

(assert (=> b!3618592 m!4117677))

(declare-fun m!4117679 () Bool)

(assert (=> b!3618592 m!4117679))

(declare-fun m!4117681 () Bool)

(assert (=> b!3618592 m!4117681))

(assert (=> b!3618592 m!4117673))

(declare-fun m!4117683 () Bool)

(assert (=> b!3618563 m!4117683))

(declare-fun m!4117685 () Bool)

(assert (=> b!3618563 m!4117685))

(declare-fun m!4117687 () Bool)

(assert (=> b!3618563 m!4117687))

(declare-fun m!4117689 () Bool)

(assert (=> b!3618563 m!4117689))

(declare-fun m!4117691 () Bool)

(assert (=> b!3618563 m!4117691))

(declare-fun m!4117693 () Bool)

(assert (=> b!3618563 m!4117693))

(assert (=> b!3618563 m!4117689))

(declare-fun m!4117695 () Bool)

(assert (=> b!3618563 m!4117695))

(declare-fun m!4117697 () Bool)

(assert (=> b!3618563 m!4117697))

(declare-fun m!4117699 () Bool)

(assert (=> b!3618563 m!4117699))

(declare-fun m!4117701 () Bool)

(assert (=> b!3618563 m!4117701))

(declare-fun m!4117703 () Bool)

(assert (=> b!3618563 m!4117703))

(declare-fun m!4117705 () Bool)

(assert (=> b!3618597 m!4117705))

(declare-fun m!4117707 () Bool)

(assert (=> b!3618597 m!4117707))

(declare-fun m!4117709 () Bool)

(assert (=> b!3618597 m!4117709))

(declare-fun m!4117711 () Bool)

(assert (=> b!3618597 m!4117711))

(declare-fun m!4117713 () Bool)

(assert (=> b!3618597 m!4117713))

(declare-fun m!4117715 () Bool)

(assert (=> b!3618597 m!4117715))

(assert (=> b!3618597 m!4117713))

(assert (=> b!3618597 m!4117659))

(declare-fun m!4117717 () Bool)

(assert (=> b!3618597 m!4117717))

(declare-fun m!4117719 () Bool)

(assert (=> b!3618597 m!4117719))

(declare-fun m!4117721 () Bool)

(assert (=> b!3618597 m!4117721))

(declare-fun m!4117723 () Bool)

(assert (=> b!3618597 m!4117723))

(declare-fun m!4117725 () Bool)

(assert (=> b!3618597 m!4117725))

(declare-fun m!4117727 () Bool)

(assert (=> b!3618597 m!4117727))

(declare-fun m!4117729 () Bool)

(assert (=> b!3618597 m!4117729))

(declare-fun m!4117731 () Bool)

(assert (=> b!3618597 m!4117731))

(declare-fun m!4117733 () Bool)

(assert (=> start!337050 m!4117733))

(declare-fun m!4117735 () Bool)

(assert (=> b!3618580 m!4117735))

(declare-fun m!4117737 () Bool)

(assert (=> b!3618595 m!4117737))

(declare-fun m!4117739 () Bool)

(assert (=> b!3618595 m!4117739))

(declare-fun m!4117741 () Bool)

(assert (=> b!3618581 m!4117741))

(declare-fun m!4117743 () Bool)

(assert (=> b!3618573 m!4117743))

(declare-fun m!4117745 () Bool)

(assert (=> bm!261761 m!4117745))

(declare-fun m!4117747 () Bool)

(assert (=> b!3618600 m!4117747))

(declare-fun m!4117749 () Bool)

(assert (=> b!3618606 m!4117749))

(declare-fun m!4117751 () Bool)

(assert (=> b!3618579 m!4117751))

(declare-fun m!4117753 () Bool)

(assert (=> b!3618579 m!4117753))

(declare-fun m!4117755 () Bool)

(assert (=> b!3618579 m!4117755))

(declare-fun m!4117757 () Bool)

(assert (=> b!3618604 m!4117757))

(declare-fun m!4117759 () Bool)

(assert (=> b!3618604 m!4117759))

(declare-fun m!4117761 () Bool)

(assert (=> b!3618604 m!4117761))

(declare-fun m!4117763 () Bool)

(assert (=> b!3618596 m!4117763))

(declare-fun m!4117765 () Bool)

(assert (=> b!3618596 m!4117765))

(declare-fun m!4117767 () Bool)

(assert (=> b!3618596 m!4117767))

(declare-fun m!4117769 () Bool)

(assert (=> b!3618596 m!4117769))

(assert (=> b!3618596 m!4117767))

(declare-fun m!4117771 () Bool)

(assert (=> b!3618596 m!4117771))

(declare-fun m!4117773 () Bool)

(assert (=> b!3618596 m!4117773))

(declare-fun m!4117775 () Bool)

(assert (=> b!3618596 m!4117775))

(declare-fun m!4117777 () Bool)

(assert (=> b!3618599 m!4117777))

(declare-fun m!4117779 () Bool)

(assert (=> b!3618599 m!4117779))

(declare-fun m!4117781 () Bool)

(assert (=> bm!261760 m!4117781))

(declare-fun m!4117783 () Bool)

(assert (=> b!3618587 m!4117783))

(declare-fun m!4117785 () Bool)

(assert (=> b!3618587 m!4117785))

(declare-fun m!4117787 () Bool)

(assert (=> b!3618587 m!4117787))

(declare-fun m!4117789 () Bool)

(assert (=> b!3618587 m!4117789))

(declare-fun m!4117791 () Bool)

(assert (=> b!3618576 m!4117791))

(declare-fun m!4117793 () Bool)

(assert (=> b!3618576 m!4117793))

(declare-fun m!4117795 () Bool)

(assert (=> b!3618607 m!4117795))

(declare-fun m!4117797 () Bool)

(assert (=> b!3618572 m!4117797))

(declare-fun m!4117799 () Bool)

(assert (=> b!3618574 m!4117799))

(declare-fun m!4117801 () Bool)

(assert (=> b!3618559 m!4117801))

(declare-fun m!4117803 () Bool)

(assert (=> b!3618566 m!4117803))

(declare-fun m!4117805 () Bool)

(assert (=> b!3618566 m!4117805))

(declare-fun m!4117807 () Bool)

(assert (=> b!3618608 m!4117807))

(declare-fun m!4117809 () Bool)

(assert (=> bm!261758 m!4117809))

(declare-fun m!4117811 () Bool)

(assert (=> bm!261757 m!4117811))

(declare-fun m!4117813 () Bool)

(assert (=> b!3618568 m!4117813))

(declare-fun m!4117815 () Bool)

(assert (=> b!3618605 m!4117815))

(declare-fun m!4117817 () Bool)

(assert (=> b!3618593 m!4117817))

(declare-fun m!4117819 () Bool)

(assert (=> b!3618593 m!4117819))

(declare-fun m!4117821 () Bool)

(assert (=> bm!261756 m!4117821))

(declare-fun m!4117823 () Bool)

(assert (=> b!3618577 m!4117823))

(declare-fun m!4117825 () Bool)

(assert (=> b!3618577 m!4117825))

(declare-fun m!4117827 () Bool)

(assert (=> b!3618577 m!4117827))

(assert (=> bm!261759 m!4117811))

(declare-fun m!4117829 () Bool)

(assert (=> b!3618594 m!4117829))

(declare-fun m!4117831 () Bool)

(assert (=> b!3618558 m!4117831))

(assert (=> b!3618558 m!4117831))

(declare-fun m!4117833 () Bool)

(assert (=> b!3618558 m!4117833))

(declare-fun m!4117835 () Bool)

(assert (=> b!3618590 m!4117835))

(check-sat (not b!3618559) (not b_next!94943) (not b!3618563) (not b_next!94933) (not bm!261756) b_and!264439 (not b!3618595) tp_is_empty!17933 (not b!3618568) (not b!3618599) (not bm!261757) (not b!3618577) b_and!264449 (not b!3618580) b_and!264447 (not b!3618571) (not b_next!94939) (not b!3618590) (not start!337050) b_and!264441 (not b!3618597) (not b!3618576) (not b!3618605) (not b!3618587) b_and!264445 (not b!3618572) (not bm!261761) b_and!264435 (not b!3618558) b_and!264443 (not b!3618592) (not b!3618566) (not b!3618581) (not b!3618600) (not b!3618604) (not b!3618565) (not b!3618574) (not b!3618594) (not b_next!94941) (not b!3618607) b_and!264437 (not b!3618579) (not b!3618606) (not b!3618610) (not b_next!94935) (not b!3618608) (not b_next!94931) (not b_next!94929) (not bm!261760) (not b!3618582) (not b!3618593) (not bm!261758) (not b!3618570) (not bm!261759) (not b!3618596) (not b!3618598) (not b!3618564) (not b!3618573) (not b_next!94937))
(check-sat b_and!264449 b_and!264447 (not b_next!94939) b_and!264441 b_and!264445 (not b_next!94943) b_and!264435 b_and!264443 (not b_next!94933) (not b_next!94941) b_and!264437 (not b_next!94929) b_and!264439 (not b_next!94937) (not b_next!94935) (not b_next!94931))
