; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!387868 () Bool)

(assert start!387868)

(declare-fun b!4095746 () Bool)

(declare-fun b_free!114537 () Bool)

(declare-fun b_next!115241 () Bool)

(assert (=> b!4095746 (= b_free!114537 (not b_next!115241))))

(declare-fun tp!1239715 () Bool)

(declare-fun b_and!315923 () Bool)

(assert (=> b!4095746 (= tp!1239715 b_and!315923)))

(declare-fun b_free!114539 () Bool)

(declare-fun b_next!115243 () Bool)

(assert (=> b!4095746 (= b_free!114539 (not b_next!115243))))

(declare-fun tp!1239716 () Bool)

(declare-fun b_and!315925 () Bool)

(assert (=> b!4095746 (= tp!1239716 b_and!315925)))

(declare-fun b!4095738 () Bool)

(declare-fun b_free!114541 () Bool)

(declare-fun b_next!115245 () Bool)

(assert (=> b!4095738 (= b_free!114541 (not b_next!115245))))

(declare-fun tp!1239722 () Bool)

(declare-fun b_and!315927 () Bool)

(assert (=> b!4095738 (= tp!1239722 b_and!315927)))

(declare-fun b_free!114543 () Bool)

(declare-fun b_next!115247 () Bool)

(assert (=> b!4095738 (= b_free!114543 (not b_next!115247))))

(declare-fun tp!1239717 () Bool)

(declare-fun b_and!315929 () Bool)

(assert (=> b!4095738 (= tp!1239717 b_and!315929)))

(declare-fun b!4095730 () Bool)

(declare-fun res!1674224 () Bool)

(declare-fun e!2541673 () Bool)

(assert (=> b!4095730 (=> (not res!1674224) (not e!2541673))))

(declare-datatypes ((LexerInterface!6697 0))(
  ( (LexerInterfaceExt!6694 (__x!26893 Int)) (Lexer!6695) )
))
(declare-fun thiss!26199 () LexerInterface!6697)

(declare-datatypes ((List!44041 0))(
  ( (Nil!43917) (Cons!43917 (h!49337 (_ BitVec 16)) (t!339232 List!44041)) )
))
(declare-datatypes ((TokenValue!7338 0))(
  ( (FloatLiteralValue!14676 (text!51811 List!44041)) (TokenValueExt!7337 (__x!26894 Int)) (Broken!36690 (value!223204 List!44041)) (Object!7461) (End!7338) (Def!7338) (Underscore!7338) (Match!7338) (Else!7338) (Error!7338) (Case!7338) (If!7338) (Extends!7338) (Abstract!7338) (Class!7338) (Val!7338) (DelimiterValue!14676 (del!7398 List!44041)) (KeywordValue!7344 (value!223205 List!44041)) (CommentValue!14676 (value!223206 List!44041)) (WhitespaceValue!14676 (value!223207 List!44041)) (IndentationValue!7338 (value!223208 List!44041)) (String!50439) (Int32!7338) (Broken!36691 (value!223209 List!44041)) (Boolean!7339) (Unit!63450) (OperatorValue!7341 (op!7398 List!44041)) (IdentifierValue!14676 (value!223210 List!44041)) (IdentifierValue!14677 (value!223211 List!44041)) (WhitespaceValue!14677 (value!223212 List!44041)) (True!14676) (False!14676) (Broken!36692 (value!223213 List!44041)) (Broken!36693 (value!223214 List!44041)) (True!14677) (RightBrace!7338) (RightBracket!7338) (Colon!7338) (Null!7338) (Comma!7338) (LeftBracket!7338) (False!14677) (LeftBrace!7338) (ImaginaryLiteralValue!7338 (text!51812 List!44041)) (StringLiteralValue!22014 (value!223215 List!44041)) (EOFValue!7338 (value!223216 List!44041)) (IdentValue!7338 (value!223217 List!44041)) (DelimiterValue!14677 (value!223218 List!44041)) (DedentValue!7338 (value!223219 List!44041)) (NewLineValue!7338 (value!223220 List!44041)) (IntegerValue!22014 (value!223221 (_ BitVec 32)) (text!51813 List!44041)) (IntegerValue!22015 (value!223222 Int) (text!51814 List!44041)) (Times!7338) (Or!7338) (Equal!7338) (Minus!7338) (Broken!36694 (value!223223 List!44041)) (And!7338) (Div!7338) (LessEqual!7338) (Mod!7338) (Concat!19351) (Not!7338) (Plus!7338) (SpaceValue!7338 (value!223224 List!44041)) (IntegerValue!22016 (value!223225 Int) (text!51815 List!44041)) (StringLiteralValue!22015 (text!51816 List!44041)) (FloatLiteralValue!14677 (text!51817 List!44041)) (BytesLiteralValue!7338 (value!223226 List!44041)) (CommentValue!14677 (value!223227 List!44041)) (StringLiteralValue!22016 (value!223228 List!44041)) (ErrorTokenValue!7338 (msg!7399 List!44041)) )
))
(declare-datatypes ((C!24212 0))(
  ( (C!24213 (val!14216 Int)) )
))
(declare-datatypes ((Regex!12013 0))(
  ( (ElementMatch!12013 (c!705816 C!24212)) (Concat!19352 (regOne!24538 Regex!12013) (regTwo!24538 Regex!12013)) (EmptyExpr!12013) (Star!12013 (reg!12342 Regex!12013)) (EmptyLang!12013) (Union!12013 (regOne!24539 Regex!12013) (regTwo!24539 Regex!12013)) )
))
(declare-datatypes ((String!50440 0))(
  ( (String!50441 (value!223229 String)) )
))
(declare-datatypes ((List!44042 0))(
  ( (Nil!43918) (Cons!43918 (h!49338 C!24212) (t!339233 List!44042)) )
))
(declare-datatypes ((IArray!26643 0))(
  ( (IArray!26644 (innerList!13379 List!44042)) )
))
(declare-datatypes ((Conc!13319 0))(
  ( (Node!13319 (left!33015 Conc!13319) (right!33345 Conc!13319) (csize!26868 Int) (cheight!13530 Int)) (Leaf!20588 (xs!16625 IArray!26643) (csize!26869 Int)) (Empty!13319) )
))
(declare-datatypes ((BalanceConc!26232 0))(
  ( (BalanceConc!26233 (c!705817 Conc!13319)) )
))
(declare-datatypes ((TokenValueInjection!14104 0))(
  ( (TokenValueInjection!14105 (toValue!9708 Int) (toChars!9567 Int)) )
))
(declare-datatypes ((Rule!14016 0))(
  ( (Rule!14017 (regex!7108 Regex!12013) (tag!7968 String!50440) (isSeparator!7108 Bool) (transformation!7108 TokenValueInjection!14104)) )
))
(declare-datatypes ((List!44043 0))(
  ( (Nil!43919) (Cons!43919 (h!49339 Rule!14016) (t!339234 List!44043)) )
))
(declare-fun rules!3870 () List!44043)

(declare-fun rulesInvariant!6040 (LexerInterface!6697 List!44043) Bool)

(assert (=> b!4095730 (= res!1674224 (rulesInvariant!6040 thiss!26199 rules!3870))))

(declare-fun b!4095731 () Bool)

(declare-fun res!1674218 () Bool)

(declare-fun e!2541668 () Bool)

(assert (=> b!4095731 (=> res!1674218 e!2541668)))

(declare-fun r!4213 () Rule!14016)

(get-info :version)

(assert (=> b!4095731 (= res!1674218 (or (and ((_ is Cons!43919) rules!3870) (= (h!49339 rules!3870) r!4213)) (not ((_ is Cons!43919) rules!3870)) (= (h!49339 rules!3870) r!4213)))))

(declare-fun b!4095732 () Bool)

(declare-fun res!1674214 () Bool)

(assert (=> b!4095732 (=> (not res!1674214) (not e!2541673))))

(declare-fun suffix!1518 () List!44042)

(declare-fun p!2988 () List!44042)

(declare-fun input!3411 () List!44042)

(declare-fun ++!11514 (List!44042 List!44042) List!44042)

(assert (=> b!4095732 (= res!1674214 (= input!3411 (++!11514 p!2988 suffix!1518)))))

(declare-fun res!1674216 () Bool)

(assert (=> start!387868 (=> (not res!1674216) (not e!2541673))))

(assert (=> start!387868 (= res!1674216 ((_ is Lexer!6695) thiss!26199))))

(assert (=> start!387868 e!2541673))

(assert (=> start!387868 true))

(declare-fun e!2541665 () Bool)

(assert (=> start!387868 e!2541665))

(declare-fun e!2541660 () Bool)

(assert (=> start!387868 e!2541660))

(declare-fun e!2541664 () Bool)

(assert (=> start!387868 e!2541664))

(declare-fun e!2541663 () Bool)

(assert (=> start!387868 e!2541663))

(declare-fun e!2541666 () Bool)

(assert (=> start!387868 e!2541666))

(declare-fun b!4095733 () Bool)

(declare-fun res!1674222 () Bool)

(assert (=> b!4095733 (=> (not res!1674222) (not e!2541673))))

(declare-fun isEmpty!26277 (List!44042) Bool)

(assert (=> b!4095733 (= res!1674222 (not (isEmpty!26277 p!2988)))))

(declare-fun b!4095734 () Bool)

(declare-fun e!2541671 () Bool)

(assert (=> b!4095734 (= e!2541671 (not e!2541668))))

(declare-fun res!1674220 () Bool)

(assert (=> b!4095734 (=> res!1674220 e!2541668)))

(declare-fun matchR!5954 (Regex!12013 List!44042) Bool)

(assert (=> b!4095734 (= res!1674220 (not (matchR!5954 (regex!7108 r!4213) p!2988)))))

(declare-fun ruleValid!3028 (LexerInterface!6697 Rule!14016) Bool)

(assert (=> b!4095734 (ruleValid!3028 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63451 0))(
  ( (Unit!63452) )
))
(declare-fun lt!1464971 () Unit!63451)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2094 (LexerInterface!6697 Rule!14016 List!44043) Unit!63451)

(assert (=> b!4095734 (= lt!1464971 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2094 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4095735 () Bool)

(declare-fun res!1674223 () Bool)

(declare-fun e!2541674 () Bool)

(assert (=> b!4095735 (=> res!1674223 e!2541674)))

(declare-datatypes ((Token!13342 0))(
  ( (Token!13343 (value!223230 TokenValue!7338) (rule!10260 Rule!14016) (size!32810 Int) (originalCharacters!7702 List!44042)) )
))
(declare-datatypes ((tuple2!42848 0))(
  ( (tuple2!42849 (_1!24558 Token!13342) (_2!24558 List!44042)) )
))
(declare-datatypes ((Option!9514 0))(
  ( (None!9513) (Some!9513 (v!40011 tuple2!42848)) )
))
(declare-fun lt!1464972 () Option!9514)

(declare-fun maxPrefix!3987 (LexerInterface!6697 List!44043 List!44042) Option!9514)

(assert (=> b!4095735 (= res!1674223 (not (= (maxPrefix!3987 thiss!26199 (t!339234 rules!3870) input!3411) lt!1464972)))))

(declare-fun b!4095736 () Bool)

(declare-fun res!1674225 () Bool)

(assert (=> b!4095736 (=> (not res!1674225) (not e!2541673))))

(declare-fun isEmpty!26278 (List!44043) Bool)

(assert (=> b!4095736 (= res!1674225 (not (isEmpty!26278 rules!3870)))))

(declare-fun b!4095737 () Bool)

(assert (=> b!4095737 (= e!2541673 e!2541671)))

(declare-fun res!1674213 () Bool)

(assert (=> b!4095737 (=> (not res!1674213) (not e!2541671))))

(assert (=> b!4095737 (= res!1674213 (= (maxPrefix!3987 thiss!26199 rules!3870 input!3411) lt!1464972))))

(declare-fun lt!1464966 () BalanceConc!26232)

(declare-fun apply!10291 (TokenValueInjection!14104 BalanceConc!26232) TokenValue!7338)

(declare-fun size!32811 (List!44042) Int)

(assert (=> b!4095737 (= lt!1464972 (Some!9513 (tuple2!42849 (Token!13343 (apply!10291 (transformation!7108 r!4213) lt!1464966) r!4213 (size!32811 p!2988) p!2988) suffix!1518)))))

(declare-fun lt!1464968 () Unit!63451)

(declare-fun lemmaSemiInverse!2075 (TokenValueInjection!14104 BalanceConc!26232) Unit!63451)

(assert (=> b!4095737 (= lt!1464968 (lemmaSemiInverse!2075 (transformation!7108 r!4213) lt!1464966))))

(declare-fun seqFromList!5325 (List!44042) BalanceConc!26232)

(assert (=> b!4095737 (= lt!1464966 (seqFromList!5325 p!2988))))

(declare-fun e!2541662 () Bool)

(assert (=> b!4095738 (= e!2541662 (and tp!1239722 tp!1239717))))

(declare-fun b!4095739 () Bool)

(assert (=> b!4095739 (= e!2541674 true)))

(declare-fun lt!1464970 () Bool)

(declare-fun contains!8793 (List!44043 Rule!14016) Bool)

(assert (=> b!4095739 (= lt!1464970 (contains!8793 (t!339234 rules!3870) r!4213))))

(declare-fun b!4095740 () Bool)

(declare-fun res!1674217 () Bool)

(assert (=> b!4095740 (=> (not res!1674217) (not e!2541673))))

(assert (=> b!4095740 (= res!1674217 (contains!8793 rules!3870 r!4213))))

(declare-fun b!4095741 () Bool)

(declare-fun e!2541672 () Bool)

(assert (=> b!4095741 (= e!2541672 e!2541674)))

(declare-fun res!1674215 () Bool)

(assert (=> b!4095741 (=> res!1674215 e!2541674)))

(declare-fun lt!1464967 () Option!9514)

(declare-fun lt!1464973 () tuple2!42848)

(assert (=> b!4095741 (= res!1674215 (or (not (= (rule!10260 (_1!24558 lt!1464973)) (h!49339 rules!3870))) (= (rule!10260 (_1!24558 lt!1464973)) r!4213) (= lt!1464967 lt!1464972)))))

(declare-fun get!14406 (Option!9514) tuple2!42848)

(assert (=> b!4095741 (= lt!1464973 (get!14406 lt!1464967))))

(declare-fun b!4095742 () Bool)

(declare-fun tp_is_empty!21029 () Bool)

(declare-fun tp!1239719 () Bool)

(assert (=> b!4095742 (= e!2541663 (and tp_is_empty!21029 tp!1239719))))

(declare-fun b!4095743 () Bool)

(declare-fun res!1674219 () Bool)

(assert (=> b!4095743 (=> res!1674219 e!2541674)))

(assert (=> b!4095743 (= res!1674219 (isEmpty!26278 (t!339234 rules!3870)))))

(declare-fun b!4095744 () Bool)

(declare-fun tp!1239718 () Bool)

(assert (=> b!4095744 (= e!2541665 (and tp_is_empty!21029 tp!1239718))))

(declare-fun b!4095745 () Bool)

(declare-fun tp!1239723 () Bool)

(declare-fun e!2541670 () Bool)

(declare-fun inv!58643 (String!50440) Bool)

(declare-fun inv!58645 (TokenValueInjection!14104) Bool)

(assert (=> b!4095745 (= e!2541666 (and tp!1239723 (inv!58643 (tag!7968 r!4213)) (inv!58645 (transformation!7108 r!4213)) e!2541670))))

(assert (=> b!4095746 (= e!2541670 (and tp!1239715 tp!1239716))))

(declare-fun b!4095747 () Bool)

(declare-fun tp!1239720 () Bool)

(assert (=> b!4095747 (= e!2541664 (and tp_is_empty!21029 tp!1239720))))

(declare-fun e!2541661 () Bool)

(declare-fun tp!1239724 () Bool)

(declare-fun b!4095748 () Bool)

(assert (=> b!4095748 (= e!2541661 (and tp!1239724 (inv!58643 (tag!7968 (h!49339 rules!3870))) (inv!58645 (transformation!7108 (h!49339 rules!3870))) e!2541662))))

(declare-fun b!4095749 () Bool)

(assert (=> b!4095749 (= e!2541668 e!2541672)))

(declare-fun res!1674221 () Bool)

(assert (=> b!4095749 (=> res!1674221 e!2541672)))

(declare-fun isEmpty!26279 (Option!9514) Bool)

(assert (=> b!4095749 (= res!1674221 (isEmpty!26279 lt!1464967))))

(declare-fun maxPrefixOneRule!2969 (LexerInterface!6697 Rule!14016 List!44042) Option!9514)

(assert (=> b!4095749 (= lt!1464967 (maxPrefixOneRule!2969 thiss!26199 (h!49339 rules!3870) input!3411))))

(assert (=> b!4095749 (rulesInvariant!6040 thiss!26199 (t!339234 rules!3870))))

(declare-fun lt!1464969 () Unit!63451)

(declare-fun lemmaInvariantOnRulesThenOnTail!810 (LexerInterface!6697 Rule!14016 List!44043) Unit!63451)

(assert (=> b!4095749 (= lt!1464969 (lemmaInvariantOnRulesThenOnTail!810 thiss!26199 (h!49339 rules!3870) (t!339234 rules!3870)))))

(declare-fun b!4095750 () Bool)

(declare-fun tp!1239721 () Bool)

(assert (=> b!4095750 (= e!2541660 (and e!2541661 tp!1239721))))

(assert (= (and start!387868 res!1674216) b!4095736))

(assert (= (and b!4095736 res!1674225) b!4095730))

(assert (= (and b!4095730 res!1674224) b!4095740))

(assert (= (and b!4095740 res!1674217) b!4095732))

(assert (= (and b!4095732 res!1674214) b!4095733))

(assert (= (and b!4095733 res!1674222) b!4095737))

(assert (= (and b!4095737 res!1674213) b!4095734))

(assert (= (and b!4095734 (not res!1674220)) b!4095731))

(assert (= (and b!4095731 (not res!1674218)) b!4095749))

(assert (= (and b!4095749 (not res!1674221)) b!4095741))

(assert (= (and b!4095741 (not res!1674215)) b!4095735))

(assert (= (and b!4095735 (not res!1674223)) b!4095743))

(assert (= (and b!4095743 (not res!1674219)) b!4095739))

(assert (= (and start!387868 ((_ is Cons!43918) suffix!1518)) b!4095744))

(assert (= b!4095748 b!4095738))

(assert (= b!4095750 b!4095748))

(assert (= (and start!387868 ((_ is Cons!43919) rules!3870)) b!4095750))

(assert (= (and start!387868 ((_ is Cons!43918) p!2988)) b!4095747))

(assert (= (and start!387868 ((_ is Cons!43918) input!3411)) b!4095742))

(assert (= b!4095745 b!4095746))

(assert (= start!387868 b!4095745))

(declare-fun m!4702615 () Bool)

(assert (=> b!4095737 m!4702615))

(declare-fun m!4702617 () Bool)

(assert (=> b!4095737 m!4702617))

(declare-fun m!4702619 () Bool)

(assert (=> b!4095737 m!4702619))

(declare-fun m!4702621 () Bool)

(assert (=> b!4095737 m!4702621))

(declare-fun m!4702623 () Bool)

(assert (=> b!4095737 m!4702623))

(declare-fun m!4702625 () Bool)

(assert (=> b!4095734 m!4702625))

(declare-fun m!4702627 () Bool)

(assert (=> b!4095734 m!4702627))

(declare-fun m!4702629 () Bool)

(assert (=> b!4095734 m!4702629))

(declare-fun m!4702631 () Bool)

(assert (=> b!4095741 m!4702631))

(declare-fun m!4702633 () Bool)

(assert (=> b!4095743 m!4702633))

(declare-fun m!4702635 () Bool)

(assert (=> b!4095732 m!4702635))

(declare-fun m!4702637 () Bool)

(assert (=> b!4095735 m!4702637))

(declare-fun m!4702639 () Bool)

(assert (=> b!4095745 m!4702639))

(declare-fun m!4702641 () Bool)

(assert (=> b!4095745 m!4702641))

(declare-fun m!4702643 () Bool)

(assert (=> b!4095748 m!4702643))

(declare-fun m!4702645 () Bool)

(assert (=> b!4095748 m!4702645))

(declare-fun m!4702647 () Bool)

(assert (=> b!4095740 m!4702647))

(declare-fun m!4702649 () Bool)

(assert (=> b!4095733 m!4702649))

(declare-fun m!4702651 () Bool)

(assert (=> b!4095730 m!4702651))

(declare-fun m!4702653 () Bool)

(assert (=> b!4095739 m!4702653))

(declare-fun m!4702655 () Bool)

(assert (=> b!4095736 m!4702655))

(declare-fun m!4702657 () Bool)

(assert (=> b!4095749 m!4702657))

(declare-fun m!4702659 () Bool)

(assert (=> b!4095749 m!4702659))

(declare-fun m!4702661 () Bool)

(assert (=> b!4095749 m!4702661))

(declare-fun m!4702663 () Bool)

(assert (=> b!4095749 m!4702663))

(check-sat (not b!4095744) (not b!4095733) (not b_next!115247) (not b!4095750) b_and!315925 (not b!4095737) (not b!4095739) b_and!315929 (not b!4095747) b_and!315927 (not b!4095749) tp_is_empty!21029 (not b!4095735) (not b_next!115243) (not b!4095743) (not b_next!115245) (not b!4095732) (not b!4095741) (not b!4095734) b_and!315923 (not b!4095730) (not b!4095740) (not b_next!115241) (not b!4095742) (not b!4095745) (not b!4095748) (not b!4095736))
(check-sat (not b_next!115243) (not b_next!115245) (not b_next!115247) b_and!315925 b_and!315929 b_and!315927 b_and!315923 (not b_next!115241))
