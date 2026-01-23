; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!344014 () Bool)

(assert start!344014)

(declare-fun b!3670820 () Bool)

(declare-fun b_free!97017 () Bool)

(declare-fun b_next!97721 () Bool)

(assert (=> b!3670820 (= b_free!97017 (not b_next!97721))))

(declare-fun tp!1117018 () Bool)

(declare-fun b_and!273371 () Bool)

(assert (=> b!3670820 (= tp!1117018 b_and!273371)))

(declare-fun b_free!97019 () Bool)

(declare-fun b_next!97723 () Bool)

(assert (=> b!3670820 (= b_free!97019 (not b_next!97723))))

(declare-fun tp!1117024 () Bool)

(declare-fun b_and!273373 () Bool)

(assert (=> b!3670820 (= tp!1117024 b_and!273373)))

(declare-fun b!3670836 () Bool)

(declare-fun b_free!97021 () Bool)

(declare-fun b_next!97725 () Bool)

(assert (=> b!3670836 (= b_free!97021 (not b_next!97725))))

(declare-fun tp!1117030 () Bool)

(declare-fun b_and!273375 () Bool)

(assert (=> b!3670836 (= tp!1117030 b_and!273375)))

(declare-fun b_free!97023 () Bool)

(declare-fun b_next!97727 () Bool)

(assert (=> b!3670836 (= b_free!97023 (not b_next!97727))))

(declare-fun tp!1117031 () Bool)

(declare-fun b_and!273377 () Bool)

(assert (=> b!3670836 (= tp!1117031 b_and!273377)))

(declare-fun b!3670810 () Bool)

(declare-fun b_free!97025 () Bool)

(declare-fun b_next!97729 () Bool)

(assert (=> b!3670810 (= b_free!97025 (not b_next!97729))))

(declare-fun tp!1117025 () Bool)

(declare-fun b_and!273379 () Bool)

(assert (=> b!3670810 (= tp!1117025 b_and!273379)))

(declare-fun b_free!97027 () Bool)

(declare-fun b_next!97731 () Bool)

(assert (=> b!3670810 (= b_free!97027 (not b_next!97731))))

(declare-fun tp!1117032 () Bool)

(declare-fun b_and!273381 () Bool)

(assert (=> b!3670810 (= tp!1117032 b_and!273381)))

(declare-fun b!3670840 () Bool)

(declare-fun b_free!97029 () Bool)

(declare-fun b_next!97733 () Bool)

(assert (=> b!3670840 (= b_free!97029 (not b_next!97733))))

(declare-fun tp!1117028 () Bool)

(declare-fun b_and!273383 () Bool)

(assert (=> b!3670840 (= tp!1117028 b_and!273383)))

(declare-fun b_free!97031 () Bool)

(declare-fun b_next!97735 () Bool)

(assert (=> b!3670840 (= b_free!97031 (not b_next!97735))))

(declare-fun tp!1117021 () Bool)

(declare-fun b_and!273385 () Bool)

(assert (=> b!3670840 (= tp!1117021 b_and!273385)))

(declare-fun b!3670788 () Bool)

(assert (=> b!3670788 false))

(declare-datatypes ((Unit!56308 0))(
  ( (Unit!56309) )
))
(declare-fun lt!1279658 () Unit!56308)

(declare-fun call!265746 () Unit!56308)

(assert (=> b!3670788 (= lt!1279658 call!265746)))

(declare-fun call!265743 () Bool)

(assert (=> b!3670788 (not call!265743)))

(declare-datatypes ((List!38839 0))(
  ( (Nil!38715) (Cons!38715 (h!44135 (_ BitVec 16)) (t!299634 List!38839)) )
))
(declare-datatypes ((TokenValue!6050 0))(
  ( (FloatLiteralValue!12100 (text!42795 List!38839)) (TokenValueExt!6049 (__x!24317 Int)) (Broken!30250 (value!186304 List!38839)) (Object!6173) (End!6050) (Def!6050) (Underscore!6050) (Match!6050) (Else!6050) (Error!6050) (Case!6050) (If!6050) (Extends!6050) (Abstract!6050) (Class!6050) (Val!6050) (DelimiterValue!12100 (del!6110 List!38839)) (KeywordValue!6056 (value!186305 List!38839)) (CommentValue!12100 (value!186306 List!38839)) (WhitespaceValue!12100 (value!186307 List!38839)) (IndentationValue!6050 (value!186308 List!38839)) (String!43583) (Int32!6050) (Broken!30251 (value!186309 List!38839)) (Boolean!6051) (Unit!56310) (OperatorValue!6053 (op!6110 List!38839)) (IdentifierValue!12100 (value!186310 List!38839)) (IdentifierValue!12101 (value!186311 List!38839)) (WhitespaceValue!12101 (value!186312 List!38839)) (True!12100) (False!12100) (Broken!30252 (value!186313 List!38839)) (Broken!30253 (value!186314 List!38839)) (True!12101) (RightBrace!6050) (RightBracket!6050) (Colon!6050) (Null!6050) (Comma!6050) (LeftBracket!6050) (False!12101) (LeftBrace!6050) (ImaginaryLiteralValue!6050 (text!42796 List!38839)) (StringLiteralValue!18150 (value!186315 List!38839)) (EOFValue!6050 (value!186316 List!38839)) (IdentValue!6050 (value!186317 List!38839)) (DelimiterValue!12101 (value!186318 List!38839)) (DedentValue!6050 (value!186319 List!38839)) (NewLineValue!6050 (value!186320 List!38839)) (IntegerValue!18150 (value!186321 (_ BitVec 32)) (text!42797 List!38839)) (IntegerValue!18151 (value!186322 Int) (text!42798 List!38839)) (Times!6050) (Or!6050) (Equal!6050) (Minus!6050) (Broken!30254 (value!186323 List!38839)) (And!6050) (Div!6050) (LessEqual!6050) (Mod!6050) (Concat!16629) (Not!6050) (Plus!6050) (SpaceValue!6050 (value!186324 List!38839)) (IntegerValue!18152 (value!186325 Int) (text!42799 List!38839)) (StringLiteralValue!18151 (text!42800 List!38839)) (FloatLiteralValue!12101 (text!42801 List!38839)) (BytesLiteralValue!6050 (value!186326 List!38839)) (CommentValue!12101 (value!186327 List!38839)) (StringLiteralValue!18152 (value!186328 List!38839)) (ErrorTokenValue!6050 (msg!6111 List!38839)) )
))
(declare-datatypes ((C!21344 0))(
  ( (C!21345 (val!12720 Int)) )
))
(declare-datatypes ((Regex!10579 0))(
  ( (ElementMatch!10579 (c!634686 C!21344)) (Concat!16630 (regOne!21670 Regex!10579) (regTwo!21670 Regex!10579)) (EmptyExpr!10579) (Star!10579 (reg!10908 Regex!10579)) (EmptyLang!10579) (Union!10579 (regOne!21671 Regex!10579) (regTwo!21671 Regex!10579)) )
))
(declare-datatypes ((String!43584 0))(
  ( (String!43585 (value!186329 String)) )
))
(declare-datatypes ((List!38840 0))(
  ( (Nil!38716) (Cons!38716 (h!44136 C!21344) (t!299635 List!38840)) )
))
(declare-datatypes ((IArray!23695 0))(
  ( (IArray!23696 (innerList!11905 List!38840)) )
))
(declare-datatypes ((Conc!11845 0))(
  ( (Node!11845 (left!30213 Conc!11845) (right!30543 Conc!11845) (csize!23920 Int) (cheight!12056 Int)) (Leaf!18366 (xs!15047 IArray!23695) (csize!23921 Int)) (Empty!11845) )
))
(declare-datatypes ((BalanceConc!23304 0))(
  ( (BalanceConc!23305 (c!634687 Conc!11845)) )
))
(declare-datatypes ((TokenValueInjection!11528 0))(
  ( (TokenValueInjection!11529 (toValue!8116 Int) (toChars!7975 Int)) )
))
(declare-datatypes ((Rule!11440 0))(
  ( (Rule!11441 (regex!5820 Regex!10579) (tag!6610 String!43584) (isSeparator!5820 Bool) (transformation!5820 TokenValueInjection!11528)) )
))
(declare-datatypes ((List!38841 0))(
  ( (Nil!38717) (Cons!38717 (h!44137 Rule!11440) (t!299636 List!38841)) )
))
(declare-fun rules!3307 () List!38841)

(declare-fun lt!1279664 () C!21344)

(declare-fun rule!403 () Rule!11440)

(declare-datatypes ((Token!11006 0))(
  ( (Token!11007 (value!186330 TokenValue!6050) (rule!8644 Rule!11440) (size!29591 Int) (originalCharacters!6534 List!38840)) )
))
(declare-datatypes ((tuple2!38584 0))(
  ( (tuple2!38585 (_1!22426 Token!11006) (_2!22426 List!38840)) )
))
(declare-fun lt!1279624 () tuple2!38584)

(declare-fun lt!1279623 () Unit!56308)

(declare-datatypes ((LexerInterface!5409 0))(
  ( (LexerInterfaceExt!5406 (__x!24318 Int)) (Lexer!5407) )
))
(declare-fun thiss!23823 () LexerInterface!5409)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!466 (LexerInterface!5409 List!38841 List!38841 Rule!11440 Rule!11440 C!21344) Unit!56308)

(assert (=> b!3670788 (= lt!1279623 (lemmaNonSepRuleNotContainsCharContainedInASepRule!466 thiss!23823 rules!3307 rules!3307 (rule!8644 (_1!22426 lt!1279624)) rule!403 lt!1279664))))

(declare-fun e!2272934 () Unit!56308)

(declare-fun Unit!56311 () Unit!56308)

(assert (=> b!3670788 (= e!2272934 Unit!56311)))

(declare-fun b!3670789 () Bool)

(declare-fun e!2272930 () Bool)

(declare-fun e!2272932 () Bool)

(declare-fun tp!1117023 () Bool)

(assert (=> b!3670789 (= e!2272930 (and e!2272932 tp!1117023))))

(declare-fun b!3670790 () Bool)

(declare-fun token!511 () Token!11006)

(declare-fun e!2272954 () Bool)

(declare-fun tp!1117020 () Bool)

(declare-fun e!2272937 () Bool)

(declare-fun inv!52197 (String!43584) Bool)

(declare-fun inv!52200 (TokenValueInjection!11528) Bool)

(assert (=> b!3670790 (= e!2272954 (and tp!1117020 (inv!52197 (tag!6610 (rule!8644 token!511))) (inv!52200 (transformation!5820 (rule!8644 token!511))) e!2272937))))

(declare-fun b!3670791 () Bool)

(declare-fun res!1490821 () Bool)

(declare-fun e!2272959 () Bool)

(assert (=> b!3670791 (=> res!1490821 e!2272959)))

(declare-fun anOtherTypeRule!33 () Rule!11440)

(declare-fun lt!1279641 () C!21344)

(declare-fun contains!7707 (List!38840 C!21344) Bool)

(declare-fun usedCharacters!1032 (Regex!10579) List!38840)

(assert (=> b!3670791 (= res!1490821 (not (contains!7707 (usedCharacters!1032 (regex!5820 anOtherTypeRule!33)) lt!1279641)))))

(declare-fun b!3670792 () Bool)

(declare-fun e!2272929 () Bool)

(declare-fun e!2272936 () Bool)

(assert (=> b!3670792 (= e!2272929 e!2272936)))

(declare-fun res!1490824 () Bool)

(assert (=> b!3670792 (=> (not res!1490824) (not e!2272936))))

(declare-fun lt!1279626 () tuple2!38584)

(assert (=> b!3670792 (= res!1490824 (= (_1!22426 lt!1279626) token!511))))

(declare-datatypes ((Option!8268 0))(
  ( (None!8267) (Some!8267 (v!38179 tuple2!38584)) )
))
(declare-fun lt!1279666 () Option!8268)

(declare-fun get!12788 (Option!8268) tuple2!38584)

(assert (=> b!3670792 (= lt!1279626 (get!12788 lt!1279666))))

(declare-fun b!3670793 () Bool)

(declare-fun e!2272949 () Unit!56308)

(declare-fun e!2272957 () Unit!56308)

(assert (=> b!3670793 (= e!2272949 e!2272957)))

(declare-fun suffix!1395 () List!38840)

(declare-fun lt!1279618 () List!38840)

(declare-fun lt!1279660 () List!38840)

(declare-fun lt!1279637 () List!38840)

(declare-fun lt!1279636 () Unit!56308)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!128 (List!38840 List!38840 List!38840 List!38840) Unit!56308)

(assert (=> b!3670793 (= lt!1279636 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!128 lt!1279660 suffix!1395 lt!1279618 lt!1279637))))

(assert (=> b!3670793 (contains!7707 lt!1279618 lt!1279641)))

(declare-fun c!634685 () Bool)

(assert (=> b!3670793 (= c!634685 (isSeparator!5820 rule!403))))

(declare-fun b!3670794 () Bool)

(declare-fun res!1490832 () Bool)

(assert (=> b!3670794 (=> (not res!1490832) (not e!2272936))))

(assert (=> b!3670794 (= res!1490832 (= (rule!8644 token!511) rule!403))))

(declare-fun b!3670795 () Bool)

(declare-fun e!2272964 () Unit!56308)

(assert (=> b!3670795 (= e!2272964 e!2272934)))

(declare-fun c!634684 () Bool)

(assert (=> b!3670795 (= c!634684 (not (isSeparator!5820 (rule!8644 (_1!22426 lt!1279624)))))))

(declare-fun b!3670796 () Bool)

(declare-fun e!2272963 () Bool)

(assert (=> b!3670796 (= e!2272963 e!2272959)))

(declare-fun res!1490817 () Bool)

(assert (=> b!3670796 (=> res!1490817 e!2272959)))

(declare-fun lt!1279633 () List!38840)

(assert (=> b!3670796 (= res!1490817 (contains!7707 lt!1279633 lt!1279641))))

(declare-fun head!7860 (List!38840) C!21344)

(assert (=> b!3670796 (= lt!1279641 (head!7860 suffix!1395))))

(assert (=> b!3670796 (= lt!1279633 (usedCharacters!1032 (regex!5820 rule!403)))))

(declare-fun b!3670797 () Bool)

(declare-fun res!1490807 () Bool)

(declare-fun e!2272928 () Bool)

(assert (=> b!3670797 (=> (not res!1490807) (not e!2272928))))

(assert (=> b!3670797 (= res!1490807 (not (= (isSeparator!5820 anOtherTypeRule!33) (isSeparator!5820 rule!403))))))

(declare-fun b!3670798 () Bool)

(declare-fun res!1490814 () Bool)

(assert (=> b!3670798 (=> res!1490814 e!2272963)))

(declare-fun isEmpty!22978 (List!38840) Bool)

(assert (=> b!3670798 (= res!1490814 (isEmpty!22978 suffix!1395))))

(declare-fun res!1490834 () Bool)

(assert (=> start!344014 (=> (not res!1490834) (not e!2272928))))

(get-info :version)

(assert (=> start!344014 (= res!1490834 ((_ is Lexer!5407) thiss!23823))))

(assert (=> start!344014 e!2272928))

(assert (=> start!344014 e!2272930))

(declare-fun e!2272927 () Bool)

(assert (=> start!344014 e!2272927))

(assert (=> start!344014 true))

(declare-fun e!2272950 () Bool)

(declare-fun inv!52201 (Token!11006) Bool)

(assert (=> start!344014 (and (inv!52201 token!511) e!2272950)))

(declare-fun e!2272947 () Bool)

(assert (=> start!344014 e!2272947))

(declare-fun e!2272961 () Bool)

(assert (=> start!344014 e!2272961))

(declare-fun e!2272943 () Bool)

(declare-fun tp!1117026 () Bool)

(declare-fun b!3670799 () Bool)

(assert (=> b!3670799 (= e!2272947 (and tp!1117026 (inv!52197 (tag!6610 rule!403)) (inv!52200 (transformation!5820 rule!403)) e!2272943))))

(declare-fun b!3670800 () Bool)

(declare-fun res!1490813 () Bool)

(declare-fun e!2272953 () Bool)

(assert (=> b!3670800 (=> res!1490813 e!2272953)))

(declare-fun matchR!5148 (Regex!10579 List!38840) Bool)

(assert (=> b!3670800 (= res!1490813 (not (matchR!5148 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279660)))))

(declare-fun b!3670801 () Bool)

(declare-fun tp_is_empty!18241 () Bool)

(declare-fun tp!1117029 () Bool)

(assert (=> b!3670801 (= e!2272927 (and tp_is_empty!18241 tp!1117029))))

(declare-fun b!3670802 () Bool)

(assert (=> b!3670802 false))

(declare-fun lt!1279643 () Unit!56308)

(declare-fun call!265745 () Unit!56308)

(assert (=> b!3670802 (= lt!1279643 call!265745)))

(declare-fun call!265744 () Bool)

(assert (=> b!3670802 (not call!265744)))

(declare-fun lt!1279647 () Unit!56308)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!348 (LexerInterface!5409 List!38841 List!38841 Rule!11440 Rule!11440 C!21344) Unit!56308)

(assert (=> b!3670802 (= lt!1279647 (lemmaSepRuleNotContainsCharContainedInANonSepRule!348 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8644 (_1!22426 lt!1279624)) lt!1279641))))

(declare-fun Unit!56312 () Unit!56308)

(assert (=> b!3670802 (= e!2272957 Unit!56312)))

(declare-fun b!3670803 () Bool)

(declare-fun Unit!56313 () Unit!56308)

(assert (=> b!3670803 (= e!2272934 Unit!56313)))

(declare-fun b!3670804 () Bool)

(declare-fun e!2272935 () Unit!56308)

(declare-fun Unit!56314 () Unit!56308)

(assert (=> b!3670804 (= e!2272935 Unit!56314)))

(declare-fun lt!1279630 () Unit!56308)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!362 (LexerInterface!5409 List!38841 Rule!11440 List!38840 List!38840 List!38840 Rule!11440) Unit!56308)

(assert (=> b!3670804 (= lt!1279630 (lemmaMaxPrefixOutputsMaxPrefix!362 thiss!23823 rules!3307 (rule!8644 (_1!22426 lt!1279624)) lt!1279618 lt!1279637 lt!1279660 rule!403))))

(assert (=> b!3670804 false))

(declare-fun b!3670805 () Bool)

(declare-fun e!2272942 () Unit!56308)

(assert (=> b!3670805 (= e!2272964 e!2272942)))

(declare-fun c!634679 () Bool)

(assert (=> b!3670805 (= c!634679 (isSeparator!5820 (rule!8644 (_1!22426 lt!1279624))))))

(declare-fun b!3670806 () Bool)

(declare-fun e!2272940 () Bool)

(declare-fun e!2272945 () Bool)

(assert (=> b!3670806 (= e!2272940 e!2272945)))

(declare-fun res!1490833 () Bool)

(assert (=> b!3670806 (=> res!1490833 e!2272945)))

(declare-fun lt!1279667 () Int)

(declare-fun lt!1279649 () Int)

(assert (=> b!3670806 (= res!1490833 (>= lt!1279667 lt!1279649))))

(declare-fun lt!1279665 () Unit!56308)

(declare-fun e!2272962 () Unit!56308)

(assert (=> b!3670806 (= lt!1279665 e!2272962)))

(declare-fun c!634680 () Bool)

(assert (=> b!3670806 (= c!634680 (< lt!1279649 lt!1279667))))

(declare-fun getIndex!488 (List!38841 Rule!11440) Int)

(assert (=> b!3670806 (= lt!1279667 (getIndex!488 rules!3307 rule!403))))

(assert (=> b!3670806 (= lt!1279649 (getIndex!488 rules!3307 (rule!8644 (_1!22426 lt!1279624))))))

(declare-fun b!3670807 () Bool)

(assert (=> b!3670807 (= e!2272936 (not e!2272963))))

(declare-fun res!1490818 () Bool)

(assert (=> b!3670807 (=> res!1490818 e!2272963)))

(assert (=> b!3670807 (= res!1490818 (not (matchR!5148 (regex!5820 rule!403) lt!1279660)))))

(declare-fun ruleValid!2084 (LexerInterface!5409 Rule!11440) Bool)

(assert (=> b!3670807 (ruleValid!2084 thiss!23823 rule!403)))

(declare-fun lt!1279648 () Unit!56308)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1238 (LexerInterface!5409 Rule!11440 List!38841) Unit!56308)

(assert (=> b!3670807 (= lt!1279648 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1238 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3670808 () Bool)

(declare-fun Unit!56315 () Unit!56308)

(assert (=> b!3670808 (= e!2272949 Unit!56315)))

(declare-fun b!3670809 () Bool)

(assert (=> b!3670809 false))

(declare-fun lt!1279621 () Unit!56308)

(assert (=> b!3670809 (= lt!1279621 call!265746)))

(assert (=> b!3670809 (not call!265743)))

(declare-fun lt!1279661 () Unit!56308)

(assert (=> b!3670809 (= lt!1279661 (lemmaSepRuleNotContainsCharContainedInANonSepRule!348 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8644 (_1!22426 lt!1279624)) lt!1279664))))

(declare-fun Unit!56316 () Unit!56308)

(assert (=> b!3670809 (= e!2272942 Unit!56316)))

(assert (=> b!3670810 (= e!2272937 (and tp!1117025 tp!1117032))))

(declare-fun b!3670811 () Bool)

(declare-fun res!1490811 () Bool)

(assert (=> b!3670811 (=> (not res!1490811) (not e!2272928))))

(declare-fun contains!7708 (List!38841 Rule!11440) Bool)

(assert (=> b!3670811 (= res!1490811 (contains!7708 rules!3307 rule!403))))

(declare-fun b!3670812 () Bool)

(declare-fun Unit!56317 () Unit!56308)

(assert (=> b!3670812 (= e!2272962 Unit!56317)))

(declare-fun b!3670813 () Bool)

(declare-fun res!1490829 () Bool)

(assert (=> b!3670813 (=> res!1490829 e!2272945)))

(assert (=> b!3670813 (= res!1490829 (not (contains!7708 rules!3307 (rule!8644 (_1!22426 lt!1279624)))))))

(declare-fun b!3670814 () Bool)

(declare-fun res!1490816 () Bool)

(assert (=> b!3670814 (=> (not res!1490816) (not e!2272936))))

(assert (=> b!3670814 (= res!1490816 (isEmpty!22978 (_2!22426 lt!1279626)))))

(declare-fun bm!265738 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!768 (Regex!10579 List!38840 C!21344) Unit!56308)

(assert (=> bm!265738 (= call!265745 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!768 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279618 lt!1279641))))

(declare-fun b!3670815 () Bool)

(declare-fun e!2272952 () Unit!56308)

(declare-fun Unit!56318 () Unit!56308)

(assert (=> b!3670815 (= e!2272952 Unit!56318)))

(declare-fun lt!1279639 () Unit!56308)

(assert (=> b!3670815 (= lt!1279639 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!768 (regex!5820 rule!403) lt!1279660 lt!1279664))))

(assert (=> b!3670815 false))

(declare-fun bm!265739 () Bool)

(declare-fun call!265747 () List!38840)

(assert (=> bm!265739 (= call!265743 (contains!7707 call!265747 lt!1279664))))

(declare-fun b!3670816 () Bool)

(declare-fun e!2272956 () Bool)

(declare-fun e!2272944 () Bool)

(assert (=> b!3670816 (= e!2272956 e!2272944)))

(declare-fun res!1490809 () Bool)

(assert (=> b!3670816 (=> (not res!1490809) (not e!2272944))))

(declare-fun lt!1279646 () Rule!11440)

(declare-fun list!14378 (BalanceConc!23304) List!38840)

(declare-fun charsOf!3834 (Token!11006) BalanceConc!23304)

(assert (=> b!3670816 (= res!1490809 (matchR!5148 (regex!5820 lt!1279646) (list!14378 (charsOf!3834 (_1!22426 lt!1279624)))))))

(declare-datatypes ((Option!8269 0))(
  ( (None!8268) (Some!8268 (v!38180 Rule!11440)) )
))
(declare-fun lt!1279622 () Option!8269)

(declare-fun get!12789 (Option!8269) Rule!11440)

(assert (=> b!3670816 (= lt!1279646 (get!12789 lt!1279622))))

(declare-fun b!3670817 () Bool)

(declare-fun e!2272933 () Bool)

(declare-fun e!2272946 () Bool)

(assert (=> b!3670817 (= e!2272933 e!2272946)))

(declare-fun res!1490810 () Bool)

(assert (=> b!3670817 (=> res!1490810 e!2272946)))

(declare-fun lt!1279619 () Option!8268)

(declare-fun lt!1279632 () TokenValue!6050)

(declare-fun lt!1279627 () Int)

(assert (=> b!3670817 (= res!1490810 (not (= lt!1279619 (Some!8267 (tuple2!38585 (Token!11007 lt!1279632 (rule!8644 (_1!22426 lt!1279624)) lt!1279627 lt!1279618) (_2!22426 lt!1279624))))))))

(declare-fun lt!1279628 () BalanceConc!23304)

(declare-fun size!29592 (BalanceConc!23304) Int)

(assert (=> b!3670817 (= lt!1279627 (size!29592 lt!1279628))))

(declare-fun apply!9322 (TokenValueInjection!11528 BalanceConc!23304) TokenValue!6050)

(assert (=> b!3670817 (= lt!1279632 (apply!9322 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279628))))

(declare-fun lt!1279635 () Unit!56308)

(declare-fun lemmaCharactersSize!865 (Token!11006) Unit!56308)

(assert (=> b!3670817 (= lt!1279635 (lemmaCharactersSize!865 (_1!22426 lt!1279624)))))

(declare-fun lt!1279644 () Unit!56308)

(declare-fun lemmaEqSameImage!1003 (TokenValueInjection!11528 BalanceConc!23304 BalanceConc!23304) Unit!56308)

(declare-fun seqFromList!4369 (List!38840) BalanceConc!23304)

(assert (=> b!3670817 (= lt!1279644 (lemmaEqSameImage!1003 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279628 (seqFromList!4369 (originalCharacters!6534 (_1!22426 lt!1279624)))))))

(declare-fun lt!1279616 () Unit!56308)

(declare-fun lemmaSemiInverse!1569 (TokenValueInjection!11528 BalanceConc!23304) Unit!56308)

(assert (=> b!3670817 (= lt!1279616 (lemmaSemiInverse!1569 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279628))))

(declare-fun bm!265740 () Bool)

(declare-fun call!265748 () List!38840)

(assert (=> bm!265740 (= call!265748 (usedCharacters!1032 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))))))

(declare-fun b!3670818 () Bool)

(declare-fun tp!1117019 () Bool)

(declare-fun inv!21 (TokenValue!6050) Bool)

(assert (=> b!3670818 (= e!2272950 (and (inv!21 (value!186330 token!511)) e!2272954 tp!1117019))))

(declare-fun b!3670819 () Bool)

(declare-fun Unit!56319 () Unit!56308)

(assert (=> b!3670819 (= e!2272962 Unit!56319)))

(declare-fun lt!1279663 () Unit!56308)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!200 (List!38840) Unit!56308)

(assert (=> b!3670819 (= lt!1279663 (lemmaGetSuffixOnListWithItSelfIsEmpty!200 lt!1279660))))

(declare-fun getSuffix!1736 (List!38840 List!38840) List!38840)

(assert (=> b!3670819 (isEmpty!22978 (getSuffix!1736 lt!1279660 lt!1279660))))

(declare-fun lt!1279657 () Unit!56308)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!228 (LexerInterface!5409 List!38841 Rule!11440 List!38840 List!38840 Rule!11440) Unit!56308)

(assert (=> b!3670819 (= lt!1279657 (lemmaMaxPrefNoSmallerRuleMatches!228 thiss!23823 rules!3307 rule!403 lt!1279660 lt!1279660 (rule!8644 (_1!22426 lt!1279624))))))

(declare-fun res!1490823 () Bool)

(assert (=> b!3670819 (= res!1490823 (not (matchR!5148 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279660)))))

(declare-fun e!2272931 () Bool)

(assert (=> b!3670819 (=> (not res!1490823) (not e!2272931))))

(assert (=> b!3670819 e!2272931))

(assert (=> b!3670820 (= e!2272943 (and tp!1117018 tp!1117024))))

(declare-fun b!3670821 () Bool)

(declare-fun Unit!56320 () Unit!56308)

(assert (=> b!3670821 (= e!2272935 Unit!56320)))

(declare-fun b!3670822 () Bool)

(declare-fun e!2272958 () Bool)

(assert (=> b!3670822 (= e!2272946 e!2272958)))

(declare-fun res!1490831 () Bool)

(assert (=> b!3670822 (=> res!1490831 e!2272958)))

(declare-fun lt!1279617 () Option!8268)

(declare-fun lt!1279651 () List!38840)

(assert (=> b!3670822 (= res!1490831 (or (not (= lt!1279651 (_2!22426 lt!1279624))) (not (= lt!1279617 (Some!8267 (tuple2!38585 (_1!22426 lt!1279624) lt!1279651))))))))

(assert (=> b!3670822 (= (_2!22426 lt!1279624) lt!1279651)))

(declare-fun lt!1279620 () Unit!56308)

(declare-fun lemmaSamePrefixThenSameSuffix!1510 (List!38840 List!38840 List!38840 List!38840 List!38840) Unit!56308)

(assert (=> b!3670822 (= lt!1279620 (lemmaSamePrefixThenSameSuffix!1510 lt!1279618 (_2!22426 lt!1279624) lt!1279618 lt!1279651 lt!1279637))))

(assert (=> b!3670822 (= lt!1279651 (getSuffix!1736 lt!1279637 lt!1279618))))

(declare-fun lt!1279638 () TokenValue!6050)

(declare-fun lt!1279642 () Int)

(assert (=> b!3670822 (= lt!1279617 (Some!8267 (tuple2!38585 (Token!11007 lt!1279638 (rule!8644 (_1!22426 lt!1279624)) lt!1279642 lt!1279618) (_2!22426 lt!1279624))))))

(declare-fun maxPrefixOneRule!2081 (LexerInterface!5409 Rule!11440 List!38840) Option!8268)

(assert (=> b!3670822 (= lt!1279617 (maxPrefixOneRule!2081 thiss!23823 (rule!8644 (_1!22426 lt!1279624)) lt!1279637))))

(declare-fun size!29593 (List!38840) Int)

(assert (=> b!3670822 (= lt!1279642 (size!29593 lt!1279618))))

(assert (=> b!3670822 (= lt!1279638 (apply!9322 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))) (seqFromList!4369 lt!1279618)))))

(declare-fun lt!1279629 () Unit!56308)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1137 (LexerInterface!5409 List!38841 List!38840 List!38840 List!38840 Rule!11440) Unit!56308)

(assert (=> b!3670822 (= lt!1279629 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1137 thiss!23823 rules!3307 lt!1279618 lt!1279637 (_2!22426 lt!1279624) (rule!8644 (_1!22426 lt!1279624))))))

(declare-fun b!3670823 () Bool)

(assert (=> b!3670823 (= e!2272944 (= (rule!8644 (_1!22426 lt!1279624)) lt!1279646))))

(declare-fun b!3670824 () Bool)

(assert (=> b!3670824 (= e!2272931 false)))

(declare-fun bm!265741 () Bool)

(assert (=> bm!265741 (= call!265747 (usedCharacters!1032 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))))))

(declare-fun b!3670825 () Bool)

(declare-fun res!1490808 () Bool)

(assert (=> b!3670825 (=> (not res!1490808) (not e!2272928))))

(declare-fun isEmpty!22979 (List!38841) Bool)

(assert (=> b!3670825 (= res!1490808 (not (isEmpty!22979 rules!3307)))))

(declare-fun b!3670826 () Bool)

(declare-fun res!1490822 () Bool)

(assert (=> b!3670826 (=> (not res!1490822) (not e!2272928))))

(assert (=> b!3670826 (= res!1490822 (contains!7708 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3670827 () Bool)

(assert (=> b!3670827 (= e!2272959 e!2272933)))

(declare-fun res!1490812 () Bool)

(assert (=> b!3670827 (=> res!1490812 e!2272933)))

(declare-fun isPrefix!3183 (List!38840 List!38840) Bool)

(assert (=> b!3670827 (= res!1490812 (not (isPrefix!3183 lt!1279618 lt!1279637)))))

(declare-fun ++!9636 (List!38840 List!38840) List!38840)

(assert (=> b!3670827 (isPrefix!3183 lt!1279618 (++!9636 lt!1279618 (_2!22426 lt!1279624)))))

(declare-fun lt!1279659 () Unit!56308)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2102 (List!38840 List!38840) Unit!56308)

(assert (=> b!3670827 (= lt!1279659 (lemmaConcatTwoListThenFirstIsPrefix!2102 lt!1279618 (_2!22426 lt!1279624)))))

(assert (=> b!3670827 (= lt!1279618 (list!14378 lt!1279628))))

(assert (=> b!3670827 (= lt!1279628 (charsOf!3834 (_1!22426 lt!1279624)))))

(assert (=> b!3670827 e!2272956))

(declare-fun res!1490830 () Bool)

(assert (=> b!3670827 (=> (not res!1490830) (not e!2272956))))

(declare-fun isDefined!6500 (Option!8269) Bool)

(assert (=> b!3670827 (= res!1490830 (isDefined!6500 lt!1279622))))

(declare-fun getRuleFromTag!1424 (LexerInterface!5409 List!38841 String!43584) Option!8269)

(assert (=> b!3670827 (= lt!1279622 (getRuleFromTag!1424 thiss!23823 rules!3307 (tag!6610 (rule!8644 (_1!22426 lt!1279624)))))))

(declare-fun lt!1279668 () Unit!56308)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1424 (LexerInterface!5409 List!38841 List!38840 Token!11006) Unit!56308)

(assert (=> b!3670827 (= lt!1279668 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1424 thiss!23823 rules!3307 lt!1279637 (_1!22426 lt!1279624)))))

(assert (=> b!3670827 (= lt!1279624 (get!12788 lt!1279619))))

(declare-fun lt!1279656 () Unit!56308)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1087 (LexerInterface!5409 List!38841 List!38840 List!38840) Unit!56308)

(assert (=> b!3670827 (= lt!1279656 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1087 thiss!23823 rules!3307 lt!1279660 suffix!1395))))

(declare-fun maxPrefix!2943 (LexerInterface!5409 List!38841 List!38840) Option!8268)

(assert (=> b!3670827 (= lt!1279619 (maxPrefix!2943 thiss!23823 rules!3307 lt!1279637))))

(assert (=> b!3670827 (isPrefix!3183 lt!1279660 lt!1279637)))

(declare-fun lt!1279654 () Unit!56308)

(assert (=> b!3670827 (= lt!1279654 (lemmaConcatTwoListThenFirstIsPrefix!2102 lt!1279660 suffix!1395))))

(assert (=> b!3670827 (= lt!1279637 (++!9636 lt!1279660 suffix!1395))))

(declare-fun bm!265742 () Bool)

(assert (=> bm!265742 (= call!265746 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!768 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279618 lt!1279664))))

(declare-fun b!3670828 () Bool)

(declare-fun res!1490828 () Bool)

(assert (=> b!3670828 (=> res!1490828 e!2272933)))

(assert (=> b!3670828 (= res!1490828 (not (matchR!5148 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279618)))))

(declare-fun b!3670829 () Bool)

(declare-fun Unit!56321 () Unit!56308)

(assert (=> b!3670829 (= e!2272942 Unit!56321)))

(declare-fun b!3670830 () Bool)

(assert (=> b!3670830 (= e!2272945 e!2272953)))

(declare-fun res!1490820 () Bool)

(assert (=> b!3670830 (=> res!1490820 e!2272953)))

(declare-fun lt!1279631 () BalanceConc!23304)

(assert (=> b!3670830 (= res!1490820 (not (= lt!1279619 (Some!8267 (tuple2!38585 (Token!11007 (apply!9322 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279631) (rule!8644 (_1!22426 lt!1279624)) (size!29593 lt!1279660) lt!1279660) (getSuffix!1736 lt!1279637 lt!1279660))))))))

(declare-fun lt!1279640 () Unit!56308)

(assert (=> b!3670830 (= lt!1279640 (lemmaSemiInverse!1569 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279631))))

(assert (=> b!3670830 (= lt!1279631 (seqFromList!4369 lt!1279660))))

(declare-fun b!3670831 () Bool)

(declare-fun tp!1117027 () Bool)

(declare-fun e!2272941 () Bool)

(assert (=> b!3670831 (= e!2272961 (and tp!1117027 (inv!52197 (tag!6610 anOtherTypeRule!33)) (inv!52200 (transformation!5820 anOtherTypeRule!33)) e!2272941))))

(declare-fun b!3670832 () Bool)

(assert (=> b!3670832 false))

(declare-fun lt!1279652 () Unit!56308)

(assert (=> b!3670832 (= lt!1279652 call!265745)))

(assert (=> b!3670832 (not call!265744)))

(declare-fun lt!1279662 () Unit!56308)

(assert (=> b!3670832 (= lt!1279662 (lemmaNonSepRuleNotContainsCharContainedInASepRule!466 thiss!23823 rules!3307 rules!3307 (rule!8644 (_1!22426 lt!1279624)) anOtherTypeRule!33 lt!1279641))))

(declare-fun Unit!56322 () Unit!56308)

(assert (=> b!3670832 (= e!2272957 Unit!56322)))

(declare-fun b!3670833 () Bool)

(assert (=> b!3670833 (= e!2272928 e!2272929)))

(declare-fun res!1490825 () Bool)

(assert (=> b!3670833 (=> (not res!1490825) (not e!2272929))))

(declare-fun isDefined!6501 (Option!8268) Bool)

(assert (=> b!3670833 (= res!1490825 (isDefined!6501 lt!1279666))))

(assert (=> b!3670833 (= lt!1279666 (maxPrefix!2943 thiss!23823 rules!3307 lt!1279660))))

(declare-fun lt!1279645 () BalanceConc!23304)

(assert (=> b!3670833 (= lt!1279660 (list!14378 lt!1279645))))

(assert (=> b!3670833 (= lt!1279645 (charsOf!3834 token!511))))

(declare-fun b!3670834 () Bool)

(declare-fun res!1490826 () Bool)

(assert (=> b!3670834 (=> res!1490826 e!2272945)))

(assert (=> b!3670834 (= res!1490826 (isEmpty!22978 lt!1279660))))

(declare-fun b!3670835 () Bool)

(declare-fun tp!1117022 () Bool)

(declare-fun e!2272939 () Bool)

(assert (=> b!3670835 (= e!2272932 (and tp!1117022 (inv!52197 (tag!6610 (h!44137 rules!3307))) (inv!52200 (transformation!5820 (h!44137 rules!3307))) e!2272939))))

(assert (=> b!3670836 (= e!2272941 (and tp!1117030 tp!1117031))))

(declare-fun b!3670837 () Bool)

(declare-fun res!1490827 () Bool)

(assert (=> b!3670837 (=> (not res!1490827) (not e!2272928))))

(declare-fun rulesInvariant!4806 (LexerInterface!5409 List!38841) Bool)

(assert (=> b!3670837 (= res!1490827 (rulesInvariant!4806 thiss!23823 rules!3307))))

(declare-fun b!3670838 () Bool)

(declare-fun res!1490815 () Bool)

(assert (=> b!3670838 (=> res!1490815 e!2272959)))

(declare-fun sepAndNonSepRulesDisjointChars!1988 (List!38841 List!38841) Bool)

(assert (=> b!3670838 (= res!1490815 (not (sepAndNonSepRulesDisjointChars!1988 rules!3307 rules!3307)))))

(declare-fun b!3670839 () Bool)

(declare-fun Unit!56323 () Unit!56308)

(assert (=> b!3670839 (= e!2272952 Unit!56323)))

(assert (=> b!3670840 (= e!2272939 (and tp!1117028 tp!1117021))))

(declare-fun bm!265743 () Bool)

(assert (=> bm!265743 (= call!265744 (contains!7707 call!265748 lt!1279641))))

(declare-fun b!3670841 () Bool)

(assert (=> b!3670841 (= e!2272953 (ruleValid!2084 thiss!23823 (rule!8644 (_1!22426 lt!1279624))))))

(declare-fun b!3670842 () Bool)

(assert (=> b!3670842 (= e!2272958 e!2272940)))

(declare-fun res!1490819 () Bool)

(assert (=> b!3670842 (=> res!1490819 e!2272940)))

(assert (=> b!3670842 (= res!1490819 (= (rule!8644 (_1!22426 lt!1279624)) (rule!8644 token!511)))))

(assert (=> b!3670842 (= lt!1279618 lt!1279660)))

(declare-fun lt!1279653 () Unit!56308)

(declare-fun lemmaIsPrefixSameLengthThenSameList!645 (List!38840 List!38840 List!38840) Unit!56308)

(assert (=> b!3670842 (= lt!1279653 (lemmaIsPrefixSameLengthThenSameList!645 lt!1279618 lt!1279660 lt!1279637))))

(declare-fun lt!1279625 () Unit!56308)

(assert (=> b!3670842 (= lt!1279625 e!2272935)))

(declare-fun c!634678 () Bool)

(declare-fun lt!1279634 () Int)

(assert (=> b!3670842 (= c!634678 (< lt!1279627 lt!1279634))))

(declare-fun lt!1279655 () Unit!56308)

(assert (=> b!3670842 (= lt!1279655 e!2272949)))

(declare-fun c!634683 () Bool)

(assert (=> b!3670842 (= c!634683 (> lt!1279627 lt!1279634))))

(assert (=> b!3670842 (= lt!1279634 (size!29592 lt!1279645))))

(declare-fun lt!1279615 () Unit!56308)

(assert (=> b!3670842 (= lt!1279615 e!2272964)))

(declare-fun c!634681 () Bool)

(assert (=> b!3670842 (= c!634681 (isSeparator!5820 rule!403))))

(declare-fun lt!1279650 () Unit!56308)

(assert (=> b!3670842 (= lt!1279650 e!2272952)))

(declare-fun c!634682 () Bool)

(assert (=> b!3670842 (= c!634682 (not (contains!7707 lt!1279633 lt!1279664)))))

(assert (=> b!3670842 (= lt!1279664 (head!7860 lt!1279618))))

(assert (= (and start!344014 res!1490834) b!3670825))

(assert (= (and b!3670825 res!1490808) b!3670837))

(assert (= (and b!3670837 res!1490827) b!3670811))

(assert (= (and b!3670811 res!1490811) b!3670826))

(assert (= (and b!3670826 res!1490822) b!3670797))

(assert (= (and b!3670797 res!1490807) b!3670833))

(assert (= (and b!3670833 res!1490825) b!3670792))

(assert (= (and b!3670792 res!1490824) b!3670814))

(assert (= (and b!3670814 res!1490816) b!3670794))

(assert (= (and b!3670794 res!1490832) b!3670807))

(assert (= (and b!3670807 (not res!1490818)) b!3670798))

(assert (= (and b!3670798 (not res!1490814)) b!3670796))

(assert (= (and b!3670796 (not res!1490817)) b!3670791))

(assert (= (and b!3670791 (not res!1490821)) b!3670838))

(assert (= (and b!3670838 (not res!1490815)) b!3670827))

(assert (= (and b!3670827 res!1490830) b!3670816))

(assert (= (and b!3670816 res!1490809) b!3670823))

(assert (= (and b!3670827 (not res!1490812)) b!3670828))

(assert (= (and b!3670828 (not res!1490828)) b!3670817))

(assert (= (and b!3670817 (not res!1490810)) b!3670822))

(assert (= (and b!3670822 (not res!1490831)) b!3670842))

(assert (= (and b!3670842 c!634682) b!3670815))

(assert (= (and b!3670842 (not c!634682)) b!3670839))

(assert (= (and b!3670842 c!634681) b!3670795))

(assert (= (and b!3670842 (not c!634681)) b!3670805))

(assert (= (and b!3670795 c!634684) b!3670788))

(assert (= (and b!3670795 (not c!634684)) b!3670803))

(assert (= (and b!3670805 c!634679) b!3670809))

(assert (= (and b!3670805 (not c!634679)) b!3670829))

(assert (= (or b!3670788 b!3670809) bm!265742))

(assert (= (or b!3670788 b!3670809) bm!265741))

(assert (= (or b!3670788 b!3670809) bm!265739))

(assert (= (and b!3670842 c!634683) b!3670793))

(assert (= (and b!3670842 (not c!634683)) b!3670808))

(assert (= (and b!3670793 c!634685) b!3670802))

(assert (= (and b!3670793 (not c!634685)) b!3670832))

(assert (= (or b!3670802 b!3670832) bm!265738))

(assert (= (or b!3670802 b!3670832) bm!265740))

(assert (= (or b!3670802 b!3670832) bm!265743))

(assert (= (and b!3670842 c!634678) b!3670804))

(assert (= (and b!3670842 (not c!634678)) b!3670821))

(assert (= (and b!3670842 (not res!1490819)) b!3670806))

(assert (= (and b!3670806 c!634680) b!3670819))

(assert (= (and b!3670806 (not c!634680)) b!3670812))

(assert (= (and b!3670819 res!1490823) b!3670824))

(assert (= (and b!3670806 (not res!1490833)) b!3670813))

(assert (= (and b!3670813 (not res!1490829)) b!3670834))

(assert (= (and b!3670834 (not res!1490826)) b!3670830))

(assert (= (and b!3670830 (not res!1490820)) b!3670800))

(assert (= (and b!3670800 (not res!1490813)) b!3670841))

(assert (= b!3670835 b!3670840))

(assert (= b!3670789 b!3670835))

(assert (= (and start!344014 ((_ is Cons!38717) rules!3307)) b!3670789))

(assert (= (and start!344014 ((_ is Cons!38716) suffix!1395)) b!3670801))

(assert (= b!3670790 b!3670810))

(assert (= b!3670818 b!3670790))

(assert (= start!344014 b!3670818))

(assert (= b!3670799 b!3670820))

(assert (= start!344014 b!3670799))

(assert (= b!3670831 b!3670836))

(assert (= start!344014 b!3670831))

(declare-fun m!4179377 () Bool)

(assert (=> b!3670833 m!4179377))

(declare-fun m!4179379 () Bool)

(assert (=> b!3670833 m!4179379))

(declare-fun m!4179381 () Bool)

(assert (=> b!3670833 m!4179381))

(declare-fun m!4179383 () Bool)

(assert (=> b!3670833 m!4179383))

(declare-fun m!4179385 () Bool)

(assert (=> b!3670800 m!4179385))

(declare-fun m!4179387 () Bool)

(assert (=> b!3670793 m!4179387))

(declare-fun m!4179389 () Bool)

(assert (=> b!3670793 m!4179389))

(declare-fun m!4179391 () Bool)

(assert (=> b!3670790 m!4179391))

(declare-fun m!4179393 () Bool)

(assert (=> b!3670790 m!4179393))

(declare-fun m!4179395 () Bool)

(assert (=> b!3670792 m!4179395))

(declare-fun m!4179397 () Bool)

(assert (=> bm!265743 m!4179397))

(declare-fun m!4179399 () Bool)

(assert (=> bm!265740 m!4179399))

(declare-fun m!4179401 () Bool)

(assert (=> b!3670811 m!4179401))

(declare-fun m!4179403 () Bool)

(assert (=> b!3670806 m!4179403))

(declare-fun m!4179405 () Bool)

(assert (=> b!3670806 m!4179405))

(declare-fun m!4179407 () Bool)

(assert (=> b!3670832 m!4179407))

(declare-fun m!4179409 () Bool)

(assert (=> b!3670822 m!4179409))

(declare-fun m!4179411 () Bool)

(assert (=> b!3670822 m!4179411))

(declare-fun m!4179413 () Bool)

(assert (=> b!3670822 m!4179413))

(declare-fun m!4179415 () Bool)

(assert (=> b!3670822 m!4179415))

(assert (=> b!3670822 m!4179411))

(declare-fun m!4179417 () Bool)

(assert (=> b!3670822 m!4179417))

(declare-fun m!4179419 () Bool)

(assert (=> b!3670822 m!4179419))

(declare-fun m!4179421 () Bool)

(assert (=> b!3670822 m!4179421))

(declare-fun m!4179423 () Bool)

(assert (=> bm!265742 m!4179423))

(declare-fun m!4179425 () Bool)

(assert (=> b!3670826 m!4179425))

(declare-fun m!4179427 () Bool)

(assert (=> b!3670831 m!4179427))

(declare-fun m!4179429 () Bool)

(assert (=> b!3670831 m!4179429))

(declare-fun m!4179431 () Bool)

(assert (=> b!3670828 m!4179431))

(declare-fun m!4179433 () Bool)

(assert (=> b!3670813 m!4179433))

(declare-fun m!4179435 () Bool)

(assert (=> b!3670799 m!4179435))

(declare-fun m!4179437 () Bool)

(assert (=> b!3670799 m!4179437))

(declare-fun m!4179439 () Bool)

(assert (=> b!3670802 m!4179439))

(declare-fun m!4179441 () Bool)

(assert (=> b!3670816 m!4179441))

(assert (=> b!3670816 m!4179441))

(declare-fun m!4179443 () Bool)

(assert (=> b!3670816 m!4179443))

(assert (=> b!3670816 m!4179443))

(declare-fun m!4179445 () Bool)

(assert (=> b!3670816 m!4179445))

(declare-fun m!4179447 () Bool)

(assert (=> b!3670816 m!4179447))

(declare-fun m!4179449 () Bool)

(assert (=> b!3670809 m!4179449))

(declare-fun m!4179451 () Bool)

(assert (=> b!3670804 m!4179451))

(declare-fun m!4179453 () Bool)

(assert (=> b!3670837 m!4179453))

(declare-fun m!4179455 () Bool)

(assert (=> b!3670842 m!4179455))

(declare-fun m!4179457 () Bool)

(assert (=> b!3670842 m!4179457))

(declare-fun m!4179459 () Bool)

(assert (=> b!3670842 m!4179459))

(declare-fun m!4179461 () Bool)

(assert (=> b!3670842 m!4179461))

(declare-fun m!4179463 () Bool)

(assert (=> b!3670815 m!4179463))

(declare-fun m!4179465 () Bool)

(assert (=> b!3670834 m!4179465))

(declare-fun m!4179467 () Bool)

(assert (=> bm!265739 m!4179467))

(declare-fun m!4179469 () Bool)

(assert (=> b!3670818 m!4179469))

(declare-fun m!4179471 () Bool)

(assert (=> b!3670835 m!4179471))

(declare-fun m!4179473 () Bool)

(assert (=> b!3670835 m!4179473))

(declare-fun m!4179475 () Bool)

(assert (=> b!3670830 m!4179475))

(declare-fun m!4179477 () Bool)

(assert (=> b!3670830 m!4179477))

(declare-fun m!4179479 () Bool)

(assert (=> b!3670830 m!4179479))

(declare-fun m!4179481 () Bool)

(assert (=> b!3670830 m!4179481))

(declare-fun m!4179483 () Bool)

(assert (=> b!3670830 m!4179483))

(declare-fun m!4179485 () Bool)

(assert (=> b!3670817 m!4179485))

(declare-fun m!4179487 () Bool)

(assert (=> b!3670817 m!4179487))

(declare-fun m!4179489 () Bool)

(assert (=> b!3670817 m!4179489))

(declare-fun m!4179491 () Bool)

(assert (=> b!3670817 m!4179491))

(assert (=> b!3670817 m!4179485))

(declare-fun m!4179493 () Bool)

(assert (=> b!3670817 m!4179493))

(declare-fun m!4179495 () Bool)

(assert (=> b!3670817 m!4179495))

(declare-fun m!4179497 () Bool)

(assert (=> start!344014 m!4179497))

(declare-fun m!4179499 () Bool)

(assert (=> b!3670819 m!4179499))

(assert (=> b!3670819 m!4179385))

(declare-fun m!4179501 () Bool)

(assert (=> b!3670819 m!4179501))

(declare-fun m!4179503 () Bool)

(assert (=> b!3670819 m!4179503))

(assert (=> b!3670819 m!4179503))

(declare-fun m!4179505 () Bool)

(assert (=> b!3670819 m!4179505))

(declare-fun m!4179507 () Bool)

(assert (=> b!3670791 m!4179507))

(assert (=> b!3670791 m!4179507))

(declare-fun m!4179509 () Bool)

(assert (=> b!3670791 m!4179509))

(declare-fun m!4179511 () Bool)

(assert (=> b!3670841 m!4179511))

(declare-fun m!4179513 () Bool)

(assert (=> b!3670798 m!4179513))

(assert (=> bm!265741 m!4179399))

(declare-fun m!4179515 () Bool)

(assert (=> b!3670796 m!4179515))

(declare-fun m!4179517 () Bool)

(assert (=> b!3670796 m!4179517))

(declare-fun m!4179519 () Bool)

(assert (=> b!3670796 m!4179519))

(declare-fun m!4179521 () Bool)

(assert (=> b!3670807 m!4179521))

(declare-fun m!4179523 () Bool)

(assert (=> b!3670807 m!4179523))

(declare-fun m!4179525 () Bool)

(assert (=> b!3670807 m!4179525))

(declare-fun m!4179527 () Bool)

(assert (=> bm!265738 m!4179527))

(declare-fun m!4179529 () Bool)

(assert (=> b!3670814 m!4179529))

(declare-fun m!4179531 () Bool)

(assert (=> b!3670827 m!4179531))

(declare-fun m!4179533 () Bool)

(assert (=> b!3670827 m!4179533))

(declare-fun m!4179535 () Bool)

(assert (=> b!3670827 m!4179535))

(declare-fun m!4179537 () Bool)

(assert (=> b!3670827 m!4179537))

(declare-fun m!4179539 () Bool)

(assert (=> b!3670827 m!4179539))

(declare-fun m!4179541 () Bool)

(assert (=> b!3670827 m!4179541))

(declare-fun m!4179543 () Bool)

(assert (=> b!3670827 m!4179543))

(declare-fun m!4179545 () Bool)

(assert (=> b!3670827 m!4179545))

(declare-fun m!4179547 () Bool)

(assert (=> b!3670827 m!4179547))

(declare-fun m!4179549 () Bool)

(assert (=> b!3670827 m!4179549))

(declare-fun m!4179551 () Bool)

(assert (=> b!3670827 m!4179551))

(assert (=> b!3670827 m!4179537))

(declare-fun m!4179553 () Bool)

(assert (=> b!3670827 m!4179553))

(declare-fun m!4179555 () Bool)

(assert (=> b!3670827 m!4179555))

(assert (=> b!3670827 m!4179441))

(declare-fun m!4179557 () Bool)

(assert (=> b!3670827 m!4179557))

(declare-fun m!4179559 () Bool)

(assert (=> b!3670838 m!4179559))

(declare-fun m!4179561 () Bool)

(assert (=> b!3670788 m!4179561))

(declare-fun m!4179563 () Bool)

(assert (=> b!3670825 m!4179563))

(check-sat (not b!3670792) (not b!3670791) (not bm!265741) b_and!273377 b_and!273371 (not b!3670822) (not b!3670837) (not b!3670806) (not b!3670832) (not b!3670835) (not b!3670813) (not b!3670790) (not b!3670815) (not b!3670828) b_and!273379 (not bm!265740) (not b!3670842) (not b!3670800) (not b!3670788) (not b!3670818) (not b!3670834) (not b!3670841) (not b!3670793) (not b!3670799) b_and!273373 (not b!3670796) (not bm!265743) (not b!3670807) b_and!273383 (not b_next!97723) (not b!3670826) b_and!273375 (not b!3670789) (not b!3670809) (not b!3670816) (not b!3670814) (not b!3670825) (not b!3670819) tp_is_empty!18241 (not b!3670801) (not b_next!97725) (not b!3670838) (not b!3670804) (not b!3670817) (not b_next!97733) (not bm!265742) (not b_next!97731) (not start!344014) (not b!3670833) (not b_next!97727) (not b!3670802) b_and!273381 (not b!3670830) (not b!3670811) (not b_next!97721) (not b!3670831) (not bm!265739) (not b_next!97735) (not bm!265738) (not b!3670827) (not b_next!97729) (not b!3670798) b_and!273385)
(check-sat b_and!273379 b_and!273373 b_and!273375 (not b_next!97725) b_and!273377 (not b_next!97733) b_and!273371 (not b_next!97731) (not b_next!97727) b_and!273381 b_and!273383 (not b_next!97723) (not b_next!97721) (not b_next!97735) (not b_next!97729) b_and!273385)
(get-model)

(declare-fun d!1077971 () Bool)

(assert (=> d!1077971 (= lt!1279618 lt!1279660)))

(declare-fun lt!1279671 () Unit!56308)

(declare-fun choose!21824 (List!38840 List!38840 List!38840) Unit!56308)

(assert (=> d!1077971 (= lt!1279671 (choose!21824 lt!1279618 lt!1279660 lt!1279637))))

(assert (=> d!1077971 (isPrefix!3183 lt!1279618 lt!1279637)))

(assert (=> d!1077971 (= (lemmaIsPrefixSameLengthThenSameList!645 lt!1279618 lt!1279660 lt!1279637) lt!1279671)))

(declare-fun bs!573152 () Bool)

(assert (= bs!573152 d!1077971))

(declare-fun m!4179565 () Bool)

(assert (=> bs!573152 m!4179565))

(assert (=> bs!573152 m!4179533))

(assert (=> b!3670842 d!1077971))

(declare-fun d!1077973 () Bool)

(declare-fun lt!1279677 () Int)

(assert (=> d!1077973 (= lt!1279677 (size!29593 (list!14378 lt!1279645)))))

(declare-fun size!29594 (Conc!11845) Int)

(assert (=> d!1077973 (= lt!1279677 (size!29594 (c!634687 lt!1279645)))))

(assert (=> d!1077973 (= (size!29592 lt!1279645) lt!1279677)))

(declare-fun bs!573153 () Bool)

(assert (= bs!573153 d!1077973))

(assert (=> bs!573153 m!4179381))

(assert (=> bs!573153 m!4179381))

(declare-fun m!4179573 () Bool)

(assert (=> bs!573153 m!4179573))

(declare-fun m!4179575 () Bool)

(assert (=> bs!573153 m!4179575))

(assert (=> b!3670842 d!1077973))

(declare-fun d!1077981 () Bool)

(declare-fun lt!1279680 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5605 (List!38840) (InoxSet C!21344))

(assert (=> d!1077981 (= lt!1279680 (select (content!5605 lt!1279633) lt!1279664))))

(declare-fun e!2272988 () Bool)

(assert (=> d!1077981 (= lt!1279680 e!2272988)))

(declare-fun res!1490856 () Bool)

(assert (=> d!1077981 (=> (not res!1490856) (not e!2272988))))

(assert (=> d!1077981 (= res!1490856 ((_ is Cons!38716) lt!1279633))))

(assert (=> d!1077981 (= (contains!7707 lt!1279633 lt!1279664) lt!1279680)))

(declare-fun b!3670877 () Bool)

(declare-fun e!2272987 () Bool)

(assert (=> b!3670877 (= e!2272988 e!2272987)))

(declare-fun res!1490857 () Bool)

(assert (=> b!3670877 (=> res!1490857 e!2272987)))

(assert (=> b!3670877 (= res!1490857 (= (h!44136 lt!1279633) lt!1279664))))

(declare-fun b!3670878 () Bool)

(assert (=> b!3670878 (= e!2272987 (contains!7707 (t!299635 lt!1279633) lt!1279664))))

(assert (= (and d!1077981 res!1490856) b!3670877))

(assert (= (and b!3670877 (not res!1490857)) b!3670878))

(declare-fun m!4179583 () Bool)

(assert (=> d!1077981 m!4179583))

(declare-fun m!4179585 () Bool)

(assert (=> d!1077981 m!4179585))

(declare-fun m!4179587 () Bool)

(assert (=> b!3670878 m!4179587))

(assert (=> b!3670842 d!1077981))

(declare-fun d!1077985 () Bool)

(assert (=> d!1077985 (= (head!7860 lt!1279618) (h!44136 lt!1279618))))

(assert (=> b!3670842 d!1077985))

(declare-fun b!3670894 () Bool)

(declare-fun e!2272998 () Int)

(declare-fun e!2272997 () Int)

(assert (=> b!3670894 (= e!2272998 e!2272997)))

(declare-fun c!634705 () Bool)

(assert (=> b!3670894 (= c!634705 (and ((_ is Cons!38717) rules!3307) (not (= (h!44137 rules!3307) rule!403))))))

(declare-fun b!3670893 () Bool)

(assert (=> b!3670893 (= e!2272998 0)))

(declare-fun b!3670896 () Bool)

(assert (=> b!3670896 (= e!2272997 (- 1))))

(declare-fun d!1077987 () Bool)

(declare-fun lt!1279686 () Int)

(assert (=> d!1077987 (>= lt!1279686 0)))

(assert (=> d!1077987 (= lt!1279686 e!2272998)))

(declare-fun c!634704 () Bool)

(assert (=> d!1077987 (= c!634704 (and ((_ is Cons!38717) rules!3307) (= (h!44137 rules!3307) rule!403)))))

(assert (=> d!1077987 (contains!7708 rules!3307 rule!403)))

(assert (=> d!1077987 (= (getIndex!488 rules!3307 rule!403) lt!1279686)))

(declare-fun b!3670895 () Bool)

(assert (=> b!3670895 (= e!2272997 (+ 1 (getIndex!488 (t!299636 rules!3307) rule!403)))))

(assert (= (and d!1077987 c!634704) b!3670893))

(assert (= (and d!1077987 (not c!634704)) b!3670894))

(assert (= (and b!3670894 c!634705) b!3670895))

(assert (= (and b!3670894 (not c!634705)) b!3670896))

(assert (=> d!1077987 m!4179401))

(declare-fun m!4179597 () Bool)

(assert (=> b!3670895 m!4179597))

(assert (=> b!3670806 d!1077987))

(declare-fun b!3670898 () Bool)

(declare-fun e!2273000 () Int)

(declare-fun e!2272999 () Int)

(assert (=> b!3670898 (= e!2273000 e!2272999)))

(declare-fun c!634707 () Bool)

(assert (=> b!3670898 (= c!634707 (and ((_ is Cons!38717) rules!3307) (not (= (h!44137 rules!3307) (rule!8644 (_1!22426 lt!1279624))))))))

(declare-fun b!3670897 () Bool)

(assert (=> b!3670897 (= e!2273000 0)))

(declare-fun b!3670900 () Bool)

(assert (=> b!3670900 (= e!2272999 (- 1))))

(declare-fun d!1077991 () Bool)

(declare-fun lt!1279687 () Int)

(assert (=> d!1077991 (>= lt!1279687 0)))

(assert (=> d!1077991 (= lt!1279687 e!2273000)))

(declare-fun c!634706 () Bool)

(assert (=> d!1077991 (= c!634706 (and ((_ is Cons!38717) rules!3307) (= (h!44137 rules!3307) (rule!8644 (_1!22426 lt!1279624)))))))

(assert (=> d!1077991 (contains!7708 rules!3307 (rule!8644 (_1!22426 lt!1279624)))))

(assert (=> d!1077991 (= (getIndex!488 rules!3307 (rule!8644 (_1!22426 lt!1279624))) lt!1279687)))

(declare-fun b!3670899 () Bool)

(assert (=> b!3670899 (= e!2272999 (+ 1 (getIndex!488 (t!299636 rules!3307) (rule!8644 (_1!22426 lt!1279624)))))))

(assert (= (and d!1077991 c!634706) b!3670897))

(assert (= (and d!1077991 (not c!634706)) b!3670898))

(assert (= (and b!3670898 c!634707) b!3670899))

(assert (= (and b!3670898 (not c!634707)) b!3670900))

(assert (=> d!1077991 m!4179433))

(declare-fun m!4179599 () Bool)

(assert (=> b!3670899 m!4179599))

(assert (=> b!3670806 d!1077991))

(declare-fun d!1077993 () Bool)

(declare-fun dynLambda!16942 (Int BalanceConc!23304) TokenValue!6050)

(assert (=> d!1077993 (= (apply!9322 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))) (seqFromList!4369 lt!1279618)) (dynLambda!16942 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) (seqFromList!4369 lt!1279618)))))

(declare-fun b_lambda!108991 () Bool)

(assert (=> (not b_lambda!108991) (not d!1077993)))

(declare-fun t!299638 () Bool)

(declare-fun tb!212549 () Bool)

(assert (=> (and b!3670820 (= (toValue!8116 (transformation!5820 rule!403)) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299638) tb!212549))

(declare-fun result!258674 () Bool)

(assert (=> tb!212549 (= result!258674 (inv!21 (dynLambda!16942 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) (seqFromList!4369 lt!1279618))))))

(declare-fun m!4179601 () Bool)

(assert (=> tb!212549 m!4179601))

(assert (=> d!1077993 t!299638))

(declare-fun b_and!273387 () Bool)

(assert (= b_and!273371 (and (=> t!299638 result!258674) b_and!273387)))

(declare-fun tb!212551 () Bool)

(declare-fun t!299640 () Bool)

(assert (=> (and b!3670836 (= (toValue!8116 (transformation!5820 anOtherTypeRule!33)) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299640) tb!212551))

(declare-fun result!258678 () Bool)

(assert (= result!258678 result!258674))

(assert (=> d!1077993 t!299640))

(declare-fun b_and!273389 () Bool)

(assert (= b_and!273375 (and (=> t!299640 result!258678) b_and!273389)))

(declare-fun t!299642 () Bool)

(declare-fun tb!212553 () Bool)

(assert (=> (and b!3670810 (= (toValue!8116 (transformation!5820 (rule!8644 token!511))) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299642) tb!212553))

(declare-fun result!258680 () Bool)

(assert (= result!258680 result!258674))

(assert (=> d!1077993 t!299642))

(declare-fun b_and!273391 () Bool)

(assert (= b_and!273379 (and (=> t!299642 result!258680) b_and!273391)))

(declare-fun tb!212555 () Bool)

(declare-fun t!299644 () Bool)

(assert (=> (and b!3670840 (= (toValue!8116 (transformation!5820 (h!44137 rules!3307))) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299644) tb!212555))

(declare-fun result!258682 () Bool)

(assert (= result!258682 result!258674))

(assert (=> d!1077993 t!299644))

(declare-fun b_and!273393 () Bool)

(assert (= b_and!273383 (and (=> t!299644 result!258682) b_and!273393)))

(assert (=> d!1077993 m!4179411))

(declare-fun m!4179603 () Bool)

(assert (=> d!1077993 m!4179603))

(assert (=> b!3670822 d!1077993))

(declare-fun d!1077995 () Bool)

(assert (=> d!1077995 (= (_2!22426 lt!1279624) lt!1279651)))

(declare-fun lt!1279690 () Unit!56308)

(declare-fun choose!21825 (List!38840 List!38840 List!38840 List!38840 List!38840) Unit!56308)

(assert (=> d!1077995 (= lt!1279690 (choose!21825 lt!1279618 (_2!22426 lt!1279624) lt!1279618 lt!1279651 lt!1279637))))

(assert (=> d!1077995 (isPrefix!3183 lt!1279618 lt!1279637)))

(assert (=> d!1077995 (= (lemmaSamePrefixThenSameSuffix!1510 lt!1279618 (_2!22426 lt!1279624) lt!1279618 lt!1279651 lt!1279637) lt!1279690)))

(declare-fun bs!573154 () Bool)

(assert (= bs!573154 d!1077995))

(declare-fun m!4179605 () Bool)

(assert (=> bs!573154 m!4179605))

(assert (=> bs!573154 m!4179533))

(assert (=> b!3670822 d!1077995))

(declare-fun d!1077997 () Bool)

(declare-fun fromListB!2018 (List!38840) BalanceConc!23304)

(assert (=> d!1077997 (= (seqFromList!4369 lt!1279618) (fromListB!2018 lt!1279618))))

(declare-fun bs!573155 () Bool)

(assert (= bs!573155 d!1077997))

(declare-fun m!4179607 () Bool)

(assert (=> bs!573155 m!4179607))

(assert (=> b!3670822 d!1077997))

(declare-fun d!1077999 () Bool)

(assert (=> d!1077999 (= (maxPrefixOneRule!2081 thiss!23823 (rule!8644 (_1!22426 lt!1279624)) lt!1279637) (Some!8267 (tuple2!38585 (Token!11007 (apply!9322 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))) (seqFromList!4369 lt!1279618)) (rule!8644 (_1!22426 lt!1279624)) (size!29593 lt!1279618) lt!1279618) (_2!22426 lt!1279624))))))

(declare-fun lt!1279720 () Unit!56308)

(declare-fun choose!21826 (LexerInterface!5409 List!38841 List!38840 List!38840 List!38840 Rule!11440) Unit!56308)

(assert (=> d!1077999 (= lt!1279720 (choose!21826 thiss!23823 rules!3307 lt!1279618 lt!1279637 (_2!22426 lt!1279624) (rule!8644 (_1!22426 lt!1279624))))))

(assert (=> d!1077999 (not (isEmpty!22979 rules!3307))))

(assert (=> d!1077999 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1137 thiss!23823 rules!3307 lt!1279618 lt!1279637 (_2!22426 lt!1279624) (rule!8644 (_1!22426 lt!1279624))) lt!1279720)))

(declare-fun bs!573160 () Bool)

(assert (= bs!573160 d!1077999))

(assert (=> bs!573160 m!4179563))

(assert (=> bs!573160 m!4179411))

(assert (=> bs!573160 m!4179417))

(assert (=> bs!573160 m!4179411))

(assert (=> bs!573160 m!4179409))

(declare-fun m!4179693 () Bool)

(assert (=> bs!573160 m!4179693))

(assert (=> bs!573160 m!4179421))

(assert (=> b!3670822 d!1077999))

(declare-fun b!3670980 () Bool)

(declare-fun res!1490929 () Bool)

(declare-fun e!2273043 () Bool)

(assert (=> b!3670980 (=> (not res!1490929) (not e!2273043))))

(declare-fun lt!1279734 () Option!8268)

(assert (=> b!3670980 (= res!1490929 (= (rule!8644 (_1!22426 (get!12788 lt!1279734))) (rule!8644 (_1!22426 lt!1279624))))))

(declare-fun b!3670981 () Bool)

(declare-fun e!2273044 () Option!8268)

(assert (=> b!3670981 (= e!2273044 None!8267)))

(declare-fun d!1078021 () Bool)

(declare-fun e!2273041 () Bool)

(assert (=> d!1078021 e!2273041))

(declare-fun res!1490925 () Bool)

(assert (=> d!1078021 (=> res!1490925 e!2273041)))

(declare-fun isEmpty!22982 (Option!8268) Bool)

(assert (=> d!1078021 (= res!1490925 (isEmpty!22982 lt!1279734))))

(assert (=> d!1078021 (= lt!1279734 e!2273044)))

(declare-fun c!634717 () Bool)

(declare-datatypes ((tuple2!38588 0))(
  ( (tuple2!38589 (_1!22428 List!38840) (_2!22428 List!38840)) )
))
(declare-fun lt!1279732 () tuple2!38588)

(assert (=> d!1078021 (= c!634717 (isEmpty!22978 (_1!22428 lt!1279732)))))

(declare-fun findLongestMatch!993 (Regex!10579 List!38840) tuple2!38588)

(assert (=> d!1078021 (= lt!1279732 (findLongestMatch!993 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279637))))

(assert (=> d!1078021 (ruleValid!2084 thiss!23823 (rule!8644 (_1!22426 lt!1279624)))))

(assert (=> d!1078021 (= (maxPrefixOneRule!2081 thiss!23823 (rule!8644 (_1!22426 lt!1279624)) lt!1279637) lt!1279734)))

(declare-fun b!3670982 () Bool)

(declare-fun res!1490924 () Bool)

(assert (=> b!3670982 (=> (not res!1490924) (not e!2273043))))

(assert (=> b!3670982 (= res!1490924 (= (value!186330 (_1!22426 (get!12788 lt!1279734))) (apply!9322 (transformation!5820 (rule!8644 (_1!22426 (get!12788 lt!1279734)))) (seqFromList!4369 (originalCharacters!6534 (_1!22426 (get!12788 lt!1279734)))))))))

(declare-fun b!3670983 () Bool)

(declare-fun res!1490926 () Bool)

(assert (=> b!3670983 (=> (not res!1490926) (not e!2273043))))

(assert (=> b!3670983 (= res!1490926 (= (++!9636 (list!14378 (charsOf!3834 (_1!22426 (get!12788 lt!1279734)))) (_2!22426 (get!12788 lt!1279734))) lt!1279637))))

(declare-fun b!3670984 () Bool)

(assert (=> b!3670984 (= e!2273043 (= (size!29591 (_1!22426 (get!12788 lt!1279734))) (size!29593 (originalCharacters!6534 (_1!22426 (get!12788 lt!1279734))))))))

(declare-fun b!3670985 () Bool)

(assert (=> b!3670985 (= e!2273041 e!2273043)))

(declare-fun res!1490923 () Bool)

(assert (=> b!3670985 (=> (not res!1490923) (not e!2273043))))

(assert (=> b!3670985 (= res!1490923 (matchR!5148 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) (list!14378 (charsOf!3834 (_1!22426 (get!12788 lt!1279734))))))))

(declare-fun b!3670986 () Bool)

(declare-fun e!2273042 () Bool)

(declare-fun findLongestMatchInner!1078 (Regex!10579 List!38840 Int List!38840 List!38840 Int) tuple2!38588)

(assert (=> b!3670986 (= e!2273042 (matchR!5148 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) (_1!22428 (findLongestMatchInner!1078 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) Nil!38716 (size!29593 Nil!38716) lt!1279637 lt!1279637 (size!29593 lt!1279637)))))))

(declare-fun b!3670987 () Bool)

(assert (=> b!3670987 (= e!2273044 (Some!8267 (tuple2!38585 (Token!11007 (apply!9322 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))) (seqFromList!4369 (_1!22428 lt!1279732))) (rule!8644 (_1!22426 lt!1279624)) (size!29592 (seqFromList!4369 (_1!22428 lt!1279732))) (_1!22428 lt!1279732)) (_2!22428 lt!1279732))))))

(declare-fun lt!1279731 () Unit!56308)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1051 (Regex!10579 List!38840) Unit!56308)

(assert (=> b!3670987 (= lt!1279731 (longestMatchIsAcceptedByMatchOrIsEmpty!1051 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279637))))

(declare-fun res!1490928 () Bool)

(assert (=> b!3670987 (= res!1490928 (isEmpty!22978 (_1!22428 (findLongestMatchInner!1078 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) Nil!38716 (size!29593 Nil!38716) lt!1279637 lt!1279637 (size!29593 lt!1279637)))))))

(assert (=> b!3670987 (=> res!1490928 e!2273042)))

(assert (=> b!3670987 e!2273042))

(declare-fun lt!1279733 () Unit!56308)

(assert (=> b!3670987 (= lt!1279733 lt!1279731)))

(declare-fun lt!1279735 () Unit!56308)

(assert (=> b!3670987 (= lt!1279735 (lemmaSemiInverse!1569 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))) (seqFromList!4369 (_1!22428 lt!1279732))))))

(declare-fun b!3670988 () Bool)

(declare-fun res!1490927 () Bool)

(assert (=> b!3670988 (=> (not res!1490927) (not e!2273043))))

(assert (=> b!3670988 (= res!1490927 (< (size!29593 (_2!22426 (get!12788 lt!1279734))) (size!29593 lt!1279637)))))

(assert (= (and d!1078021 c!634717) b!3670981))

(assert (= (and d!1078021 (not c!634717)) b!3670987))

(assert (= (and b!3670987 (not res!1490928)) b!3670986))

(assert (= (and d!1078021 (not res!1490925)) b!3670985))

(assert (= (and b!3670985 res!1490923) b!3670983))

(assert (= (and b!3670983 res!1490926) b!3670988))

(assert (= (and b!3670988 res!1490927) b!3670980))

(assert (= (and b!3670980 res!1490929) b!3670982))

(assert (= (and b!3670982 res!1490924) b!3670984))

(declare-fun m!4179695 () Bool)

(assert (=> b!3670984 m!4179695))

(declare-fun m!4179697 () Bool)

(assert (=> b!3670984 m!4179697))

(assert (=> b!3670988 m!4179695))

(declare-fun m!4179699 () Bool)

(assert (=> b!3670988 m!4179699))

(declare-fun m!4179701 () Bool)

(assert (=> b!3670988 m!4179701))

(declare-fun m!4179703 () Bool)

(assert (=> b!3670987 m!4179703))

(assert (=> b!3670987 m!4179701))

(declare-fun m!4179705 () Bool)

(assert (=> b!3670987 m!4179705))

(assert (=> b!3670987 m!4179701))

(declare-fun m!4179707 () Bool)

(assert (=> b!3670987 m!4179707))

(declare-fun m!4179709 () Bool)

(assert (=> b!3670987 m!4179709))

(declare-fun m!4179711 () Bool)

(assert (=> b!3670987 m!4179711))

(declare-fun m!4179713 () Bool)

(assert (=> b!3670987 m!4179713))

(assert (=> b!3670987 m!4179709))

(assert (=> b!3670987 m!4179709))

(declare-fun m!4179715 () Bool)

(assert (=> b!3670987 m!4179715))

(assert (=> b!3670987 m!4179709))

(declare-fun m!4179717 () Bool)

(assert (=> b!3670987 m!4179717))

(assert (=> b!3670987 m!4179703))

(assert (=> b!3670980 m!4179695))

(assert (=> b!3670983 m!4179695))

(declare-fun m!4179719 () Bool)

(assert (=> b!3670983 m!4179719))

(assert (=> b!3670983 m!4179719))

(declare-fun m!4179721 () Bool)

(assert (=> b!3670983 m!4179721))

(assert (=> b!3670983 m!4179721))

(declare-fun m!4179723 () Bool)

(assert (=> b!3670983 m!4179723))

(assert (=> b!3670985 m!4179695))

(assert (=> b!3670985 m!4179719))

(assert (=> b!3670985 m!4179719))

(assert (=> b!3670985 m!4179721))

(assert (=> b!3670985 m!4179721))

(declare-fun m!4179725 () Bool)

(assert (=> b!3670985 m!4179725))

(assert (=> b!3670982 m!4179695))

(declare-fun m!4179727 () Bool)

(assert (=> b!3670982 m!4179727))

(assert (=> b!3670982 m!4179727))

(declare-fun m!4179729 () Bool)

(assert (=> b!3670982 m!4179729))

(assert (=> b!3670986 m!4179703))

(assert (=> b!3670986 m!4179701))

(assert (=> b!3670986 m!4179703))

(assert (=> b!3670986 m!4179701))

(assert (=> b!3670986 m!4179705))

(declare-fun m!4179731 () Bool)

(assert (=> b!3670986 m!4179731))

(declare-fun m!4179733 () Bool)

(assert (=> d!1078021 m!4179733))

(declare-fun m!4179735 () Bool)

(assert (=> d!1078021 m!4179735))

(declare-fun m!4179737 () Bool)

(assert (=> d!1078021 m!4179737))

(assert (=> d!1078021 m!4179511))

(assert (=> b!3670822 d!1078021))

(declare-fun d!1078023 () Bool)

(declare-fun lt!1279738 () Int)

(assert (=> d!1078023 (>= lt!1279738 0)))

(declare-fun e!2273047 () Int)

(assert (=> d!1078023 (= lt!1279738 e!2273047)))

(declare-fun c!634720 () Bool)

(assert (=> d!1078023 (= c!634720 ((_ is Nil!38716) lt!1279618))))

(assert (=> d!1078023 (= (size!29593 lt!1279618) lt!1279738)))

(declare-fun b!3670993 () Bool)

(assert (=> b!3670993 (= e!2273047 0)))

(declare-fun b!3670994 () Bool)

(assert (=> b!3670994 (= e!2273047 (+ 1 (size!29593 (t!299635 lt!1279618))))))

(assert (= (and d!1078023 c!634720) b!3670993))

(assert (= (and d!1078023 (not c!634720)) b!3670994))

(declare-fun m!4179739 () Bool)

(assert (=> b!3670994 m!4179739))

(assert (=> b!3670822 d!1078023))

(declare-fun d!1078025 () Bool)

(declare-fun lt!1279741 () List!38840)

(assert (=> d!1078025 (= (++!9636 lt!1279618 lt!1279741) lt!1279637)))

(declare-fun e!2273050 () List!38840)

(assert (=> d!1078025 (= lt!1279741 e!2273050)))

(declare-fun c!634723 () Bool)

(assert (=> d!1078025 (= c!634723 ((_ is Cons!38716) lt!1279618))))

(assert (=> d!1078025 (>= (size!29593 lt!1279637) (size!29593 lt!1279618))))

(assert (=> d!1078025 (= (getSuffix!1736 lt!1279637 lt!1279618) lt!1279741)))

(declare-fun b!3670999 () Bool)

(declare-fun tail!5681 (List!38840) List!38840)

(assert (=> b!3670999 (= e!2273050 (getSuffix!1736 (tail!5681 lt!1279637) (t!299635 lt!1279618)))))

(declare-fun b!3671000 () Bool)

(assert (=> b!3671000 (= e!2273050 lt!1279637)))

(assert (= (and d!1078025 c!634723) b!3670999))

(assert (= (and d!1078025 (not c!634723)) b!3671000))

(declare-fun m!4179741 () Bool)

(assert (=> d!1078025 m!4179741))

(assert (=> d!1078025 m!4179701))

(assert (=> d!1078025 m!4179421))

(declare-fun m!4179743 () Bool)

(assert (=> b!3670999 m!4179743))

(assert (=> b!3670999 m!4179743))

(declare-fun m!4179745 () Bool)

(assert (=> b!3670999 m!4179745))

(assert (=> b!3670822 d!1078025))

(declare-fun d!1078027 () Bool)

(assert (=> d!1078027 (not (matchR!5148 (regex!5820 rule!403) lt!1279660))))

(declare-fun lt!1279744 () Unit!56308)

(declare-fun choose!21828 (LexerInterface!5409 List!38841 Rule!11440 List!38840 List!38840 List!38840 Rule!11440) Unit!56308)

(assert (=> d!1078027 (= lt!1279744 (choose!21828 thiss!23823 rules!3307 (rule!8644 (_1!22426 lt!1279624)) lt!1279618 lt!1279637 lt!1279660 rule!403))))

(assert (=> d!1078027 (isPrefix!3183 lt!1279618 lt!1279637)))

(assert (=> d!1078027 (= (lemmaMaxPrefixOutputsMaxPrefix!362 thiss!23823 rules!3307 (rule!8644 (_1!22426 lt!1279624)) lt!1279618 lt!1279637 lt!1279660 rule!403) lt!1279744)))

(declare-fun bs!573161 () Bool)

(assert (= bs!573161 d!1078027))

(assert (=> bs!573161 m!4179521))

(declare-fun m!4179747 () Bool)

(assert (=> bs!573161 m!4179747))

(assert (=> bs!573161 m!4179533))

(assert (=> b!3670804 d!1078027))

(declare-fun d!1078029 () Bool)

(declare-fun res!1490934 () Bool)

(declare-fun e!2273053 () Bool)

(assert (=> d!1078029 (=> (not res!1490934) (not e!2273053))))

(declare-fun validRegex!4844 (Regex!10579) Bool)

(assert (=> d!1078029 (= res!1490934 (validRegex!4844 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))))))

(assert (=> d!1078029 (= (ruleValid!2084 thiss!23823 (rule!8644 (_1!22426 lt!1279624))) e!2273053)))

(declare-fun b!3671005 () Bool)

(declare-fun res!1490935 () Bool)

(assert (=> b!3671005 (=> (not res!1490935) (not e!2273053))))

(declare-fun nullable!3683 (Regex!10579) Bool)

(assert (=> b!3671005 (= res!1490935 (not (nullable!3683 (regex!5820 (rule!8644 (_1!22426 lt!1279624))))))))

(declare-fun b!3671006 () Bool)

(assert (=> b!3671006 (= e!2273053 (not (= (tag!6610 (rule!8644 (_1!22426 lt!1279624))) (String!43585 ""))))))

(assert (= (and d!1078029 res!1490934) b!3671005))

(assert (= (and b!3671005 res!1490935) b!3671006))

(declare-fun m!4179749 () Bool)

(assert (=> d!1078029 m!4179749))

(declare-fun m!4179751 () Bool)

(assert (=> b!3671005 m!4179751))

(assert (=> b!3670841 d!1078029))

(declare-fun d!1078031 () Bool)

(assert (=> d!1078031 (= (isEmpty!22979 rules!3307) ((_ is Nil!38717) rules!3307))))

(assert (=> b!3670825 d!1078031))

(declare-fun d!1078033 () Bool)

(declare-fun lt!1279781 () Bool)

(declare-fun content!5606 (List!38841) (InoxSet Rule!11440))

(assert (=> d!1078033 (= lt!1279781 (select (content!5606 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2273063 () Bool)

(assert (=> d!1078033 (= lt!1279781 e!2273063)))

(declare-fun res!1490944 () Bool)

(assert (=> d!1078033 (=> (not res!1490944) (not e!2273063))))

(assert (=> d!1078033 (= res!1490944 ((_ is Cons!38717) rules!3307))))

(assert (=> d!1078033 (= (contains!7708 rules!3307 anOtherTypeRule!33) lt!1279781)))

(declare-fun b!3671019 () Bool)

(declare-fun e!2273062 () Bool)

(assert (=> b!3671019 (= e!2273063 e!2273062)))

(declare-fun res!1490945 () Bool)

(assert (=> b!3671019 (=> res!1490945 e!2273062)))

(assert (=> b!3671019 (= res!1490945 (= (h!44137 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3671020 () Bool)

(assert (=> b!3671020 (= e!2273062 (contains!7708 (t!299636 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1078033 res!1490944) b!3671019))

(assert (= (and b!3671019 (not res!1490945)) b!3671020))

(declare-fun m!4179753 () Bool)

(assert (=> d!1078033 m!4179753))

(declare-fun m!4179755 () Bool)

(assert (=> d!1078033 m!4179755))

(declare-fun m!4179757 () Bool)

(assert (=> b!3671020 m!4179757))

(assert (=> b!3670826 d!1078033))

(declare-fun b!3671041 () Bool)

(declare-fun e!2273077 () List!38840)

(assert (=> b!3671041 (= e!2273077 (Cons!38716 (c!634686 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))) Nil!38716))))

(declare-fun b!3671042 () Bool)

(declare-fun e!2273076 () List!38840)

(declare-fun call!265772 () List!38840)

(assert (=> b!3671042 (= e!2273076 call!265772)))

(declare-fun b!3671043 () Bool)

(declare-fun c!634735 () Bool)

(assert (=> b!3671043 (= c!634735 ((_ is Star!10579) (regex!5820 (rule!8644 (_1!22426 lt!1279624)))))))

(declare-fun e!2273075 () List!38840)

(assert (=> b!3671043 (= e!2273077 e!2273075)))

(declare-fun b!3671044 () Bool)

(assert (=> b!3671044 (= e!2273076 call!265772)))

(declare-fun bm!265767 () Bool)

(declare-fun call!265773 () List!38840)

(declare-fun call!265774 () List!38840)

(declare-fun c!634736 () Bool)

(assert (=> bm!265767 (= call!265772 (++!9636 (ite c!634736 call!265774 call!265773) (ite c!634736 call!265773 call!265774)))))

(declare-fun d!1078035 () Bool)

(declare-fun c!634738 () Bool)

(assert (=> d!1078035 (= c!634738 (or ((_ is EmptyExpr!10579) (regex!5820 (rule!8644 (_1!22426 lt!1279624)))) ((_ is EmptyLang!10579) (regex!5820 (rule!8644 (_1!22426 lt!1279624))))))))

(declare-fun e!2273074 () List!38840)

(assert (=> d!1078035 (= (usedCharacters!1032 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))) e!2273074)))

(declare-fun bm!265768 () Bool)

(assert (=> bm!265768 (= call!265773 (usedCharacters!1032 (ite c!634736 (regTwo!21671 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))) (regOne!21670 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))))))))

(declare-fun call!265775 () List!38840)

(declare-fun bm!265769 () Bool)

(assert (=> bm!265769 (= call!265775 (usedCharacters!1032 (ite c!634735 (reg!10908 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))) (ite c!634736 (regOne!21671 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))) (regTwo!21670 (regex!5820 (rule!8644 (_1!22426 lt!1279624))))))))))

(declare-fun b!3671045 () Bool)

(assert (=> b!3671045 (= e!2273075 call!265775)))

(declare-fun b!3671046 () Bool)

(assert (=> b!3671046 (= e!2273074 e!2273077)))

(declare-fun c!634737 () Bool)

(assert (=> b!3671046 (= c!634737 ((_ is ElementMatch!10579) (regex!5820 (rule!8644 (_1!22426 lt!1279624)))))))

(declare-fun b!3671047 () Bool)

(assert (=> b!3671047 (= e!2273075 e!2273076)))

(assert (=> b!3671047 (= c!634736 ((_ is Union!10579) (regex!5820 (rule!8644 (_1!22426 lt!1279624)))))))

(declare-fun b!3671048 () Bool)

(assert (=> b!3671048 (= e!2273074 Nil!38716)))

(declare-fun bm!265770 () Bool)

(assert (=> bm!265770 (= call!265774 call!265775)))

(assert (= (and d!1078035 c!634738) b!3671048))

(assert (= (and d!1078035 (not c!634738)) b!3671046))

(assert (= (and b!3671046 c!634737) b!3671041))

(assert (= (and b!3671046 (not c!634737)) b!3671043))

(assert (= (and b!3671043 c!634735) b!3671045))

(assert (= (and b!3671043 (not c!634735)) b!3671047))

(assert (= (and b!3671047 c!634736) b!3671044))

(assert (= (and b!3671047 (not c!634736)) b!3671042))

(assert (= (or b!3671044 b!3671042) bm!265770))

(assert (= (or b!3671044 b!3671042) bm!265768))

(assert (= (or b!3671044 b!3671042) bm!265767))

(assert (= (or b!3671045 bm!265770) bm!265769))

(declare-fun m!4179807 () Bool)

(assert (=> bm!265767 m!4179807))

(declare-fun m!4179809 () Bool)

(assert (=> bm!265768 m!4179809))

(declare-fun m!4179811 () Bool)

(assert (=> bm!265769 m!4179811))

(assert (=> bm!265741 d!1078035))

(declare-fun b!3671086 () Bool)

(declare-fun e!2273104 () Bool)

(declare-fun e!2273102 () Bool)

(assert (=> b!3671086 (= e!2273104 e!2273102)))

(declare-fun c!634745 () Bool)

(assert (=> b!3671086 (= c!634745 ((_ is EmptyLang!10579) (regex!5820 rule!403)))))

(declare-fun b!3671087 () Bool)

(declare-fun res!1490971 () Bool)

(declare-fun e!2273099 () Bool)

(assert (=> b!3671087 (=> (not res!1490971) (not e!2273099))))

(assert (=> b!3671087 (= res!1490971 (isEmpty!22978 (tail!5681 lt!1279660)))))

(declare-fun b!3671088 () Bool)

(declare-fun lt!1279805 () Bool)

(declare-fun call!265778 () Bool)

(assert (=> b!3671088 (= e!2273104 (= lt!1279805 call!265778))))

(declare-fun bm!265773 () Bool)

(assert (=> bm!265773 (= call!265778 (isEmpty!22978 lt!1279660))))

(declare-fun b!3671089 () Bool)

(declare-fun e!2273103 () Bool)

(declare-fun derivativeStep!3232 (Regex!10579 C!21344) Regex!10579)

(assert (=> b!3671089 (= e!2273103 (matchR!5148 (derivativeStep!3232 (regex!5820 rule!403) (head!7860 lt!1279660)) (tail!5681 lt!1279660)))))

(declare-fun b!3671090 () Bool)

(declare-fun res!1490968 () Bool)

(declare-fun e!2273100 () Bool)

(assert (=> b!3671090 (=> res!1490968 e!2273100)))

(assert (=> b!3671090 (= res!1490968 (not (isEmpty!22978 (tail!5681 lt!1279660))))))

(declare-fun d!1078039 () Bool)

(assert (=> d!1078039 e!2273104))

(declare-fun c!634746 () Bool)

(assert (=> d!1078039 (= c!634746 ((_ is EmptyExpr!10579) (regex!5820 rule!403)))))

(assert (=> d!1078039 (= lt!1279805 e!2273103)))

(declare-fun c!634747 () Bool)

(assert (=> d!1078039 (= c!634747 (isEmpty!22978 lt!1279660))))

(assert (=> d!1078039 (validRegex!4844 (regex!5820 rule!403))))

(assert (=> d!1078039 (= (matchR!5148 (regex!5820 rule!403) lt!1279660) lt!1279805)))

(declare-fun b!3671091 () Bool)

(declare-fun res!1490970 () Bool)

(declare-fun e!2273101 () Bool)

(assert (=> b!3671091 (=> res!1490970 e!2273101)))

(assert (=> b!3671091 (= res!1490970 e!2273099)))

(declare-fun res!1490974 () Bool)

(assert (=> b!3671091 (=> (not res!1490974) (not e!2273099))))

(assert (=> b!3671091 (= res!1490974 lt!1279805)))

(declare-fun b!3671092 () Bool)

(declare-fun res!1490973 () Bool)

(assert (=> b!3671092 (=> res!1490973 e!2273101)))

(assert (=> b!3671092 (= res!1490973 (not ((_ is ElementMatch!10579) (regex!5820 rule!403))))))

(assert (=> b!3671092 (= e!2273102 e!2273101)))

(declare-fun b!3671093 () Bool)

(assert (=> b!3671093 (= e!2273100 (not (= (head!7860 lt!1279660) (c!634686 (regex!5820 rule!403)))))))

(declare-fun b!3671094 () Bool)

(assert (=> b!3671094 (= e!2273102 (not lt!1279805))))

(declare-fun b!3671095 () Bool)

(assert (=> b!3671095 (= e!2273103 (nullable!3683 (regex!5820 rule!403)))))

(declare-fun b!3671096 () Bool)

(declare-fun res!1490972 () Bool)

(assert (=> b!3671096 (=> (not res!1490972) (not e!2273099))))

(assert (=> b!3671096 (= res!1490972 (not call!265778))))

(declare-fun b!3671097 () Bool)

(declare-fun e!2273098 () Bool)

(assert (=> b!3671097 (= e!2273101 e!2273098)))

(declare-fun res!1490969 () Bool)

(assert (=> b!3671097 (=> (not res!1490969) (not e!2273098))))

(assert (=> b!3671097 (= res!1490969 (not lt!1279805))))

(declare-fun b!3671098 () Bool)

(assert (=> b!3671098 (= e!2273099 (= (head!7860 lt!1279660) (c!634686 (regex!5820 rule!403))))))

(declare-fun b!3671099 () Bool)

(assert (=> b!3671099 (= e!2273098 e!2273100)))

(declare-fun res!1490975 () Bool)

(assert (=> b!3671099 (=> res!1490975 e!2273100)))

(assert (=> b!3671099 (= res!1490975 call!265778)))

(assert (= (and d!1078039 c!634747) b!3671095))

(assert (= (and d!1078039 (not c!634747)) b!3671089))

(assert (= (and d!1078039 c!634746) b!3671088))

(assert (= (and d!1078039 (not c!634746)) b!3671086))

(assert (= (and b!3671086 c!634745) b!3671094))

(assert (= (and b!3671086 (not c!634745)) b!3671092))

(assert (= (and b!3671092 (not res!1490973)) b!3671091))

(assert (= (and b!3671091 res!1490974) b!3671096))

(assert (= (and b!3671096 res!1490972) b!3671087))

(assert (= (and b!3671087 res!1490971) b!3671098))

(assert (= (and b!3671091 (not res!1490970)) b!3671097))

(assert (= (and b!3671097 res!1490969) b!3671099))

(assert (= (and b!3671099 (not res!1490975)) b!3671090))

(assert (= (and b!3671090 (not res!1490968)) b!3671093))

(assert (= (or b!3671088 b!3671096 b!3671099) bm!265773))

(declare-fun m!4179827 () Bool)

(assert (=> b!3671095 m!4179827))

(declare-fun m!4179829 () Bool)

(assert (=> b!3671089 m!4179829))

(assert (=> b!3671089 m!4179829))

(declare-fun m!4179831 () Bool)

(assert (=> b!3671089 m!4179831))

(declare-fun m!4179833 () Bool)

(assert (=> b!3671089 m!4179833))

(assert (=> b!3671089 m!4179831))

(assert (=> b!3671089 m!4179833))

(declare-fun m!4179835 () Bool)

(assert (=> b!3671089 m!4179835))

(assert (=> b!3671098 m!4179829))

(assert (=> d!1078039 m!4179465))

(declare-fun m!4179837 () Bool)

(assert (=> d!1078039 m!4179837))

(assert (=> b!3671087 m!4179833))

(assert (=> b!3671087 m!4179833))

(declare-fun m!4179839 () Bool)

(assert (=> b!3671087 m!4179839))

(assert (=> bm!265773 m!4179465))

(assert (=> b!3671093 m!4179829))

(assert (=> b!3671090 m!4179833))

(assert (=> b!3671090 m!4179833))

(assert (=> b!3671090 m!4179839))

(assert (=> b!3670807 d!1078039))

(declare-fun d!1078045 () Bool)

(declare-fun res!1490980 () Bool)

(declare-fun e!2273113 () Bool)

(assert (=> d!1078045 (=> (not res!1490980) (not e!2273113))))

(assert (=> d!1078045 (= res!1490980 (validRegex!4844 (regex!5820 rule!403)))))

(assert (=> d!1078045 (= (ruleValid!2084 thiss!23823 rule!403) e!2273113)))

(declare-fun b!3671112 () Bool)

(declare-fun res!1490981 () Bool)

(assert (=> b!3671112 (=> (not res!1490981) (not e!2273113))))

(assert (=> b!3671112 (= res!1490981 (not (nullable!3683 (regex!5820 rule!403))))))

(declare-fun b!3671113 () Bool)

(assert (=> b!3671113 (= e!2273113 (not (= (tag!6610 rule!403) (String!43585 ""))))))

(assert (= (and d!1078045 res!1490980) b!3671112))

(assert (= (and b!3671112 res!1490981) b!3671113))

(assert (=> d!1078045 m!4179837))

(assert (=> b!3671112 m!4179827))

(assert (=> b!3670807 d!1078045))

(declare-fun d!1078047 () Bool)

(assert (=> d!1078047 (ruleValid!2084 thiss!23823 rule!403)))

(declare-fun lt!1279817 () Unit!56308)

(declare-fun choose!21829 (LexerInterface!5409 Rule!11440 List!38841) Unit!56308)

(assert (=> d!1078047 (= lt!1279817 (choose!21829 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1078047 (contains!7708 rules!3307 rule!403)))

(assert (=> d!1078047 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1238 thiss!23823 rule!403 rules!3307) lt!1279817)))

(declare-fun bs!573162 () Bool)

(assert (= bs!573162 d!1078047))

(assert (=> bs!573162 m!4179523))

(declare-fun m!4179841 () Bool)

(assert (=> bs!573162 m!4179841))

(assert (=> bs!573162 m!4179401))

(assert (=> b!3670807 d!1078047))

(declare-fun d!1078049 () Bool)

(assert (=> d!1078049 (not (matchR!5148 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279618))))

(declare-fun lt!1279820 () Unit!56308)

(declare-fun choose!21830 (Regex!10579 List!38840 C!21344) Unit!56308)

(assert (=> d!1078049 (= lt!1279820 (choose!21830 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279618 lt!1279664))))

(assert (=> d!1078049 (validRegex!4844 (regex!5820 (rule!8644 (_1!22426 lt!1279624))))))

(assert (=> d!1078049 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!768 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279618 lt!1279664) lt!1279820)))

(declare-fun bs!573163 () Bool)

(assert (= bs!573163 d!1078049))

(assert (=> bs!573163 m!4179431))

(declare-fun m!4179855 () Bool)

(assert (=> bs!573163 m!4179855))

(assert (=> bs!573163 m!4179749))

(assert (=> bm!265742 d!1078049))

(declare-fun d!1078053 () Bool)

(declare-fun lt!1279821 () Bool)

(assert (=> d!1078053 (= lt!1279821 (select (content!5606 rules!3307) rule!403))))

(declare-fun e!2273119 () Bool)

(assert (=> d!1078053 (= lt!1279821 e!2273119)))

(declare-fun res!1490984 () Bool)

(assert (=> d!1078053 (=> (not res!1490984) (not e!2273119))))

(assert (=> d!1078053 (= res!1490984 ((_ is Cons!38717) rules!3307))))

(assert (=> d!1078053 (= (contains!7708 rules!3307 rule!403) lt!1279821)))

(declare-fun b!3671120 () Bool)

(declare-fun e!2273118 () Bool)

(assert (=> b!3671120 (= e!2273119 e!2273118)))

(declare-fun res!1490985 () Bool)

(assert (=> b!3671120 (=> res!1490985 e!2273118)))

(assert (=> b!3671120 (= res!1490985 (= (h!44137 rules!3307) rule!403))))

(declare-fun b!3671121 () Bool)

(assert (=> b!3671121 (= e!2273118 (contains!7708 (t!299636 rules!3307) rule!403))))

(assert (= (and d!1078053 res!1490984) b!3671120))

(assert (= (and b!3671120 (not res!1490985)) b!3671121))

(assert (=> d!1078053 m!4179753))

(declare-fun m!4179857 () Bool)

(assert (=> d!1078053 m!4179857))

(declare-fun m!4179859 () Bool)

(assert (=> b!3671121 m!4179859))

(assert (=> b!3670811 d!1078053))

(declare-fun d!1078055 () Bool)

(assert (=> d!1078055 (= (inv!52197 (tag!6610 (rule!8644 token!511))) (= (mod (str.len (value!186329 (tag!6610 (rule!8644 token!511)))) 2) 0))))

(assert (=> b!3670790 d!1078055))

(declare-fun d!1078057 () Bool)

(declare-fun res!1490988 () Bool)

(declare-fun e!2273122 () Bool)

(assert (=> d!1078057 (=> (not res!1490988) (not e!2273122))))

(declare-fun semiInverseModEq!2483 (Int Int) Bool)

(assert (=> d!1078057 (= res!1490988 (semiInverseModEq!2483 (toChars!7975 (transformation!5820 (rule!8644 token!511))) (toValue!8116 (transformation!5820 (rule!8644 token!511)))))))

(assert (=> d!1078057 (= (inv!52200 (transformation!5820 (rule!8644 token!511))) e!2273122)))

(declare-fun b!3671124 () Bool)

(declare-fun equivClasses!2382 (Int Int) Bool)

(assert (=> b!3671124 (= e!2273122 (equivClasses!2382 (toChars!7975 (transformation!5820 (rule!8644 token!511))) (toValue!8116 (transformation!5820 (rule!8644 token!511)))))))

(assert (= (and d!1078057 res!1490988) b!3671124))

(declare-fun m!4179865 () Bool)

(assert (=> d!1078057 m!4179865))

(declare-fun m!4179867 () Bool)

(assert (=> b!3671124 m!4179867))

(assert (=> b!3670790 d!1078057))

(declare-fun d!1078061 () Bool)

(assert (=> d!1078061 (not (contains!7707 (usedCharacters!1032 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))) lt!1279664))))

(declare-fun lt!1279829 () Unit!56308)

(declare-fun choose!21831 (LexerInterface!5409 List!38841 List!38841 Rule!11440 Rule!11440 C!21344) Unit!56308)

(assert (=> d!1078061 (= lt!1279829 (choose!21831 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8644 (_1!22426 lt!1279624)) lt!1279664))))

(assert (=> d!1078061 (rulesInvariant!4806 thiss!23823 rules!3307)))

(assert (=> d!1078061 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!348 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8644 (_1!22426 lt!1279624)) lt!1279664) lt!1279829)))

(declare-fun bs!573165 () Bool)

(assert (= bs!573165 d!1078061))

(assert (=> bs!573165 m!4179399))

(assert (=> bs!573165 m!4179399))

(declare-fun m!4179869 () Bool)

(assert (=> bs!573165 m!4179869))

(declare-fun m!4179871 () Bool)

(assert (=> bs!573165 m!4179871))

(assert (=> bs!573165 m!4179453))

(assert (=> b!3670809 d!1078061))

(declare-fun d!1078063 () Bool)

(assert (=> d!1078063 (not (contains!7707 (usedCharacters!1032 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))) lt!1279664))))

(declare-fun lt!1279832 () Unit!56308)

(declare-fun choose!21832 (LexerInterface!5409 List!38841 List!38841 Rule!11440 Rule!11440 C!21344) Unit!56308)

(assert (=> d!1078063 (= lt!1279832 (choose!21832 thiss!23823 rules!3307 rules!3307 (rule!8644 (_1!22426 lt!1279624)) rule!403 lt!1279664))))

(assert (=> d!1078063 (rulesInvariant!4806 thiss!23823 rules!3307)))

(assert (=> d!1078063 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!466 thiss!23823 rules!3307 rules!3307 (rule!8644 (_1!22426 lt!1279624)) rule!403 lt!1279664) lt!1279832)))

(declare-fun bs!573166 () Bool)

(assert (= bs!573166 d!1078063))

(assert (=> bs!573166 m!4179399))

(assert (=> bs!573166 m!4179399))

(assert (=> bs!573166 m!4179869))

(declare-fun m!4179873 () Bool)

(assert (=> bs!573166 m!4179873))

(assert (=> bs!573166 m!4179453))

(assert (=> b!3670788 d!1078063))

(declare-fun b!3671180 () Bool)

(declare-fun e!2273152 () Unit!56308)

(declare-fun Unit!56327 () Unit!56308)

(assert (=> b!3671180 (= e!2273152 Unit!56327)))

(declare-fun lt!1279880 () List!38840)

(assert (=> b!3671180 (= lt!1279880 (++!9636 lt!1279660 suffix!1395))))

(declare-fun lt!1279877 () Unit!56308)

(declare-fun lt!1279871 () Token!11006)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!570 (LexerInterface!5409 Rule!11440 List!38841 List!38840) Unit!56308)

(assert (=> b!3671180 (= lt!1279877 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!570 thiss!23823 (rule!8644 lt!1279871) rules!3307 lt!1279880))))

(assert (=> b!3671180 (isEmpty!22982 (maxPrefixOneRule!2081 thiss!23823 (rule!8644 lt!1279871) lt!1279880))))

(declare-fun lt!1279878 () Unit!56308)

(assert (=> b!3671180 (= lt!1279878 lt!1279877)))

(declare-fun lt!1279886 () List!38840)

(assert (=> b!3671180 (= lt!1279886 (list!14378 (charsOf!3834 lt!1279871)))))

(declare-fun lt!1279882 () Unit!56308)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!558 (LexerInterface!5409 Rule!11440 List!38840 List!38840) Unit!56308)

(assert (=> b!3671180 (= lt!1279882 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!558 thiss!23823 (rule!8644 lt!1279871) lt!1279886 (++!9636 lt!1279660 suffix!1395)))))

(assert (=> b!3671180 (not (matchR!5148 (regex!5820 (rule!8644 lt!1279871)) lt!1279886))))

(declare-fun lt!1279883 () Unit!56308)

(assert (=> b!3671180 (= lt!1279883 lt!1279882)))

(assert (=> b!3671180 false))

(declare-fun b!3671178 () Bool)

(declare-fun res!1491020 () Bool)

(declare-fun e!2273151 () Bool)

(assert (=> b!3671178 (=> (not res!1491020) (not e!2273151))))

(assert (=> b!3671178 (= res!1491020 (matchR!5148 (regex!5820 (get!12789 (getRuleFromTag!1424 thiss!23823 rules!3307 (tag!6610 (rule!8644 lt!1279871))))) (list!14378 (charsOf!3834 lt!1279871))))))

(declare-fun d!1078065 () Bool)

(assert (=> d!1078065 (isDefined!6501 (maxPrefix!2943 thiss!23823 rules!3307 (++!9636 lt!1279660 suffix!1395)))))

(declare-fun lt!1279870 () Unit!56308)

(assert (=> d!1078065 (= lt!1279870 e!2273152)))

(declare-fun c!634769 () Bool)

(assert (=> d!1078065 (= c!634769 (isEmpty!22982 (maxPrefix!2943 thiss!23823 rules!3307 (++!9636 lt!1279660 suffix!1395))))))

(declare-fun lt!1279872 () Unit!56308)

(declare-fun lt!1279874 () Unit!56308)

(assert (=> d!1078065 (= lt!1279872 lt!1279874)))

(assert (=> d!1078065 e!2273151))

(declare-fun res!1491021 () Bool)

(assert (=> d!1078065 (=> (not res!1491021) (not e!2273151))))

(assert (=> d!1078065 (= res!1491021 (isDefined!6500 (getRuleFromTag!1424 thiss!23823 rules!3307 (tag!6610 (rule!8644 lt!1279871)))))))

(assert (=> d!1078065 (= lt!1279874 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1424 thiss!23823 rules!3307 lt!1279660 lt!1279871))))

(declare-fun lt!1279873 () Unit!56308)

(declare-fun lt!1279876 () Unit!56308)

(assert (=> d!1078065 (= lt!1279873 lt!1279876)))

(declare-fun lt!1279885 () List!38840)

(assert (=> d!1078065 (isPrefix!3183 lt!1279885 (++!9636 lt!1279660 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!534 (List!38840 List!38840 List!38840) Unit!56308)

(assert (=> d!1078065 (= lt!1279876 (lemmaPrefixStaysPrefixWhenAddingToSuffix!534 lt!1279885 lt!1279660 suffix!1395))))

(assert (=> d!1078065 (= lt!1279885 (list!14378 (charsOf!3834 lt!1279871)))))

(declare-fun lt!1279879 () Unit!56308)

(declare-fun lt!1279881 () Unit!56308)

(assert (=> d!1078065 (= lt!1279879 lt!1279881)))

(declare-fun lt!1279884 () List!38840)

(declare-fun lt!1279875 () List!38840)

(assert (=> d!1078065 (isPrefix!3183 lt!1279884 (++!9636 lt!1279884 lt!1279875))))

(assert (=> d!1078065 (= lt!1279881 (lemmaConcatTwoListThenFirstIsPrefix!2102 lt!1279884 lt!1279875))))

(assert (=> d!1078065 (= lt!1279875 (_2!22426 (get!12788 (maxPrefix!2943 thiss!23823 rules!3307 lt!1279660))))))

(assert (=> d!1078065 (= lt!1279884 (list!14378 (charsOf!3834 lt!1279871)))))

(declare-datatypes ((List!38843 0))(
  ( (Nil!38719) (Cons!38719 (h!44139 Token!11006) (t!299798 List!38843)) )
))
(declare-fun head!7862 (List!38843) Token!11006)

(declare-datatypes ((IArray!23699 0))(
  ( (IArray!23700 (innerList!11907 List!38843)) )
))
(declare-datatypes ((Conc!11847 0))(
  ( (Node!11847 (left!30219 Conc!11847) (right!30549 Conc!11847) (csize!23924 Int) (cheight!12058 Int)) (Leaf!18368 (xs!15049 IArray!23699) (csize!23925 Int)) (Empty!11847) )
))
(declare-datatypes ((BalanceConc!23308 0))(
  ( (BalanceConc!23309 (c!634859 Conc!11847)) )
))
(declare-fun list!14381 (BalanceConc!23308) List!38843)

(declare-datatypes ((tuple2!38590 0))(
  ( (tuple2!38591 (_1!22429 BalanceConc!23308) (_2!22429 BalanceConc!23304)) )
))
(declare-fun lex!2566 (LexerInterface!5409 List!38841 BalanceConc!23304) tuple2!38590)

(assert (=> d!1078065 (= lt!1279871 (head!7862 (list!14381 (_1!22429 (lex!2566 thiss!23823 rules!3307 (seqFromList!4369 lt!1279660))))))))

(assert (=> d!1078065 (not (isEmpty!22979 rules!3307))))

(assert (=> d!1078065 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1087 thiss!23823 rules!3307 lt!1279660 suffix!1395) lt!1279870)))

(declare-fun b!3671181 () Bool)

(declare-fun Unit!56328 () Unit!56308)

(assert (=> b!3671181 (= e!2273152 Unit!56328)))

(declare-fun b!3671179 () Bool)

(assert (=> b!3671179 (= e!2273151 (= (rule!8644 lt!1279871) (get!12789 (getRuleFromTag!1424 thiss!23823 rules!3307 (tag!6610 (rule!8644 lt!1279871))))))))

(assert (= (and d!1078065 res!1491021) b!3671178))

(assert (= (and b!3671178 res!1491020) b!3671179))

(assert (= (and d!1078065 c!634769) b!3671180))

(assert (= (and d!1078065 (not c!634769)) b!3671181))

(declare-fun m!4179899 () Bool)

(assert (=> b!3671180 m!4179899))

(declare-fun m!4179901 () Bool)

(assert (=> b!3671180 m!4179901))

(assert (=> b!3671180 m!4179545))

(declare-fun m!4179903 () Bool)

(assert (=> b!3671180 m!4179903))

(declare-fun m!4179905 () Bool)

(assert (=> b!3671180 m!4179905))

(assert (=> b!3671180 m!4179905))

(declare-fun m!4179907 () Bool)

(assert (=> b!3671180 m!4179907))

(declare-fun m!4179909 () Bool)

(assert (=> b!3671180 m!4179909))

(declare-fun m!4179911 () Bool)

(assert (=> b!3671180 m!4179911))

(assert (=> b!3671180 m!4179899))

(assert (=> b!3671180 m!4179545))

(assert (=> b!3671178 m!4179899))

(assert (=> b!3671178 m!4179901))

(declare-fun m!4179913 () Bool)

(assert (=> b!3671178 m!4179913))

(assert (=> b!3671178 m!4179901))

(declare-fun m!4179915 () Bool)

(assert (=> b!3671178 m!4179915))

(assert (=> b!3671178 m!4179899))

(assert (=> b!3671178 m!4179913))

(declare-fun m!4179917 () Bool)

(assert (=> b!3671178 m!4179917))

(assert (=> d!1078065 m!4179475))

(assert (=> d!1078065 m!4179563))

(declare-fun m!4179919 () Bool)

(assert (=> d!1078065 m!4179919))

(declare-fun m!4179921 () Bool)

(assert (=> d!1078065 m!4179921))

(declare-fun m!4179923 () Bool)

(assert (=> d!1078065 m!4179923))

(assert (=> d!1078065 m!4179913))

(declare-fun m!4179925 () Bool)

(assert (=> d!1078065 m!4179925))

(declare-fun m!4179927 () Bool)

(assert (=> d!1078065 m!4179927))

(assert (=> d!1078065 m!4179919))

(declare-fun m!4179929 () Bool)

(assert (=> d!1078065 m!4179929))

(assert (=> d!1078065 m!4179545))

(assert (=> d!1078065 m!4179919))

(assert (=> d!1078065 m!4179899))

(assert (=> d!1078065 m!4179901))

(assert (=> d!1078065 m!4179379))

(declare-fun m!4179931 () Bool)

(assert (=> d!1078065 m!4179931))

(assert (=> d!1078065 m!4179475))

(declare-fun m!4179933 () Bool)

(assert (=> d!1078065 m!4179933))

(assert (=> d!1078065 m!4179925))

(assert (=> d!1078065 m!4179899))

(assert (=> d!1078065 m!4179545))

(assert (=> d!1078065 m!4179913))

(declare-fun m!4179935 () Bool)

(assert (=> d!1078065 m!4179935))

(declare-fun m!4179937 () Bool)

(assert (=> d!1078065 m!4179937))

(declare-fun m!4179939 () Bool)

(assert (=> d!1078065 m!4179939))

(assert (=> d!1078065 m!4179379))

(assert (=> d!1078065 m!4179923))

(declare-fun m!4179941 () Bool)

(assert (=> d!1078065 m!4179941))

(assert (=> d!1078065 m!4179545))

(declare-fun m!4179943 () Bool)

(assert (=> d!1078065 m!4179943))

(declare-fun m!4179945 () Bool)

(assert (=> d!1078065 m!4179945))

(assert (=> b!3671179 m!4179913))

(assert (=> b!3671179 m!4179913))

(assert (=> b!3671179 m!4179917))

(assert (=> b!3670827 d!1078065))

(declare-fun d!1078079 () Bool)

(assert (=> d!1078079 (= (get!12788 lt!1279619) (v!38179 lt!1279619))))

(assert (=> b!3670827 d!1078079))

(declare-fun d!1078081 () Bool)

(assert (=> d!1078081 (isPrefix!3183 lt!1279660 (++!9636 lt!1279660 suffix!1395))))

(declare-fun lt!1279889 () Unit!56308)

(declare-fun choose!21834 (List!38840 List!38840) Unit!56308)

(assert (=> d!1078081 (= lt!1279889 (choose!21834 lt!1279660 suffix!1395))))

(assert (=> d!1078081 (= (lemmaConcatTwoListThenFirstIsPrefix!2102 lt!1279660 suffix!1395) lt!1279889)))

(declare-fun bs!573169 () Bool)

(assert (= bs!573169 d!1078081))

(assert (=> bs!573169 m!4179545))

(assert (=> bs!573169 m!4179545))

(declare-fun m!4179947 () Bool)

(assert (=> bs!573169 m!4179947))

(declare-fun m!4179949 () Bool)

(assert (=> bs!573169 m!4179949))

(assert (=> b!3670827 d!1078081))

(declare-fun d!1078083 () Bool)

(declare-fun e!2273155 () Bool)

(assert (=> d!1078083 e!2273155))

(declare-fun res!1491026 () Bool)

(assert (=> d!1078083 (=> (not res!1491026) (not e!2273155))))

(assert (=> d!1078083 (= res!1491026 (isDefined!6500 (getRuleFromTag!1424 thiss!23823 rules!3307 (tag!6610 (rule!8644 (_1!22426 lt!1279624))))))))

(declare-fun lt!1279892 () Unit!56308)

(declare-fun choose!21835 (LexerInterface!5409 List!38841 List!38840 Token!11006) Unit!56308)

(assert (=> d!1078083 (= lt!1279892 (choose!21835 thiss!23823 rules!3307 lt!1279637 (_1!22426 lt!1279624)))))

(assert (=> d!1078083 (rulesInvariant!4806 thiss!23823 rules!3307)))

(assert (=> d!1078083 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1424 thiss!23823 rules!3307 lt!1279637 (_1!22426 lt!1279624)) lt!1279892)))

(declare-fun b!3671186 () Bool)

(declare-fun res!1491027 () Bool)

(assert (=> b!3671186 (=> (not res!1491027) (not e!2273155))))

(assert (=> b!3671186 (= res!1491027 (matchR!5148 (regex!5820 (get!12789 (getRuleFromTag!1424 thiss!23823 rules!3307 (tag!6610 (rule!8644 (_1!22426 lt!1279624)))))) (list!14378 (charsOf!3834 (_1!22426 lt!1279624)))))))

(declare-fun b!3671187 () Bool)

(assert (=> b!3671187 (= e!2273155 (= (rule!8644 (_1!22426 lt!1279624)) (get!12789 (getRuleFromTag!1424 thiss!23823 rules!3307 (tag!6610 (rule!8644 (_1!22426 lt!1279624)))))))))

(assert (= (and d!1078083 res!1491026) b!3671186))

(assert (= (and b!3671186 res!1491027) b!3671187))

(assert (=> d!1078083 m!4179535))

(assert (=> d!1078083 m!4179535))

(declare-fun m!4179951 () Bool)

(assert (=> d!1078083 m!4179951))

(declare-fun m!4179953 () Bool)

(assert (=> d!1078083 m!4179953))

(assert (=> d!1078083 m!4179453))

(assert (=> b!3671186 m!4179535))

(assert (=> b!3671186 m!4179441))

(assert (=> b!3671186 m!4179443))

(assert (=> b!3671186 m!4179535))

(declare-fun m!4179955 () Bool)

(assert (=> b!3671186 m!4179955))

(assert (=> b!3671186 m!4179441))

(assert (=> b!3671186 m!4179443))

(declare-fun m!4179957 () Bool)

(assert (=> b!3671186 m!4179957))

(assert (=> b!3671187 m!4179535))

(assert (=> b!3671187 m!4179535))

(assert (=> b!3671187 m!4179955))

(assert (=> b!3670827 d!1078083))

(declare-fun b!3671196 () Bool)

(declare-fun e!2273163 () Bool)

(declare-fun e!2273162 () Bool)

(assert (=> b!3671196 (= e!2273163 e!2273162)))

(declare-fun res!1491037 () Bool)

(assert (=> b!3671196 (=> (not res!1491037) (not e!2273162))))

(assert (=> b!3671196 (= res!1491037 (not ((_ is Nil!38716) lt!1279637)))))

(declare-fun b!3671198 () Bool)

(assert (=> b!3671198 (= e!2273162 (isPrefix!3183 (tail!5681 lt!1279618) (tail!5681 lt!1279637)))))

(declare-fun b!3671197 () Bool)

(declare-fun res!1491036 () Bool)

(assert (=> b!3671197 (=> (not res!1491036) (not e!2273162))))

(assert (=> b!3671197 (= res!1491036 (= (head!7860 lt!1279618) (head!7860 lt!1279637)))))

(declare-fun d!1078085 () Bool)

(declare-fun e!2273164 () Bool)

(assert (=> d!1078085 e!2273164))

(declare-fun res!1491038 () Bool)

(assert (=> d!1078085 (=> res!1491038 e!2273164)))

(declare-fun lt!1279895 () Bool)

(assert (=> d!1078085 (= res!1491038 (not lt!1279895))))

(assert (=> d!1078085 (= lt!1279895 e!2273163)))

(declare-fun res!1491039 () Bool)

(assert (=> d!1078085 (=> res!1491039 e!2273163)))

(assert (=> d!1078085 (= res!1491039 ((_ is Nil!38716) lt!1279618))))

(assert (=> d!1078085 (= (isPrefix!3183 lt!1279618 lt!1279637) lt!1279895)))

(declare-fun b!3671199 () Bool)

(assert (=> b!3671199 (= e!2273164 (>= (size!29593 lt!1279637) (size!29593 lt!1279618)))))

(assert (= (and d!1078085 (not res!1491039)) b!3671196))

(assert (= (and b!3671196 res!1491037) b!3671197))

(assert (= (and b!3671197 res!1491036) b!3671198))

(assert (= (and d!1078085 (not res!1491038)) b!3671199))

(declare-fun m!4179959 () Bool)

(assert (=> b!3671198 m!4179959))

(assert (=> b!3671198 m!4179743))

(assert (=> b!3671198 m!4179959))

(assert (=> b!3671198 m!4179743))

(declare-fun m!4179961 () Bool)

(assert (=> b!3671198 m!4179961))

(assert (=> b!3671197 m!4179461))

(declare-fun m!4179963 () Bool)

(assert (=> b!3671197 m!4179963))

(assert (=> b!3671199 m!4179701))

(assert (=> b!3671199 m!4179421))

(assert (=> b!3670827 d!1078085))

(declare-fun b!3671200 () Bool)

(declare-fun e!2273166 () Bool)

(declare-fun e!2273165 () Bool)

(assert (=> b!3671200 (= e!2273166 e!2273165)))

(declare-fun res!1491041 () Bool)

(assert (=> b!3671200 (=> (not res!1491041) (not e!2273165))))

(assert (=> b!3671200 (= res!1491041 (not ((_ is Nil!38716) lt!1279637)))))

(declare-fun b!3671202 () Bool)

(assert (=> b!3671202 (= e!2273165 (isPrefix!3183 (tail!5681 lt!1279660) (tail!5681 lt!1279637)))))

(declare-fun b!3671201 () Bool)

(declare-fun res!1491040 () Bool)

(assert (=> b!3671201 (=> (not res!1491040) (not e!2273165))))

(assert (=> b!3671201 (= res!1491040 (= (head!7860 lt!1279660) (head!7860 lt!1279637)))))

(declare-fun d!1078087 () Bool)

(declare-fun e!2273167 () Bool)

(assert (=> d!1078087 e!2273167))

(declare-fun res!1491042 () Bool)

(assert (=> d!1078087 (=> res!1491042 e!2273167)))

(declare-fun lt!1279896 () Bool)

(assert (=> d!1078087 (= res!1491042 (not lt!1279896))))

(assert (=> d!1078087 (= lt!1279896 e!2273166)))

(declare-fun res!1491043 () Bool)

(assert (=> d!1078087 (=> res!1491043 e!2273166)))

(assert (=> d!1078087 (= res!1491043 ((_ is Nil!38716) lt!1279660))))

(assert (=> d!1078087 (= (isPrefix!3183 lt!1279660 lt!1279637) lt!1279896)))

(declare-fun b!3671203 () Bool)

(assert (=> b!3671203 (= e!2273167 (>= (size!29593 lt!1279637) (size!29593 lt!1279660)))))

(assert (= (and d!1078087 (not res!1491043)) b!3671200))

(assert (= (and b!3671200 res!1491041) b!3671201))

(assert (= (and b!3671201 res!1491040) b!3671202))

(assert (= (and d!1078087 (not res!1491042)) b!3671203))

(assert (=> b!3671202 m!4179833))

(assert (=> b!3671202 m!4179743))

(assert (=> b!3671202 m!4179833))

(assert (=> b!3671202 m!4179743))

(declare-fun m!4179965 () Bool)

(assert (=> b!3671202 m!4179965))

(assert (=> b!3671201 m!4179829))

(assert (=> b!3671201 m!4179963))

(assert (=> b!3671203 m!4179701))

(assert (=> b!3671203 m!4179477))

(assert (=> b!3670827 d!1078087))

(declare-fun d!1078089 () Bool)

(assert (=> d!1078089 (isPrefix!3183 lt!1279618 (++!9636 lt!1279618 (_2!22426 lt!1279624)))))

(declare-fun lt!1279897 () Unit!56308)

(assert (=> d!1078089 (= lt!1279897 (choose!21834 lt!1279618 (_2!22426 lt!1279624)))))

(assert (=> d!1078089 (= (lemmaConcatTwoListThenFirstIsPrefix!2102 lt!1279618 (_2!22426 lt!1279624)) lt!1279897)))

(declare-fun bs!573170 () Bool)

(assert (= bs!573170 d!1078089))

(assert (=> bs!573170 m!4179537))

(assert (=> bs!573170 m!4179537))

(assert (=> bs!573170 m!4179553))

(declare-fun m!4179967 () Bool)

(assert (=> bs!573170 m!4179967))

(assert (=> b!3670827 d!1078089))

(declare-fun call!265784 () Option!8268)

(declare-fun bm!265779 () Bool)

(assert (=> bm!265779 (= call!265784 (maxPrefixOneRule!2081 thiss!23823 (h!44137 rules!3307) lt!1279637))))

(declare-fun b!3671222 () Bool)

(declare-fun res!1491058 () Bool)

(declare-fun e!2273174 () Bool)

(assert (=> b!3671222 (=> (not res!1491058) (not e!2273174))))

(declare-fun lt!1279909 () Option!8268)

(assert (=> b!3671222 (= res!1491058 (matchR!5148 (regex!5820 (rule!8644 (_1!22426 (get!12788 lt!1279909)))) (list!14378 (charsOf!3834 (_1!22426 (get!12788 lt!1279909))))))))

(declare-fun b!3671223 () Bool)

(declare-fun e!2273176 () Option!8268)

(assert (=> b!3671223 (= e!2273176 call!265784)))

(declare-fun b!3671224 () Bool)

(declare-fun res!1491063 () Bool)

(assert (=> b!3671224 (=> (not res!1491063) (not e!2273174))))

(assert (=> b!3671224 (= res!1491063 (= (++!9636 (list!14378 (charsOf!3834 (_1!22426 (get!12788 lt!1279909)))) (_2!22426 (get!12788 lt!1279909))) lt!1279637))))

(declare-fun d!1078091 () Bool)

(declare-fun e!2273175 () Bool)

(assert (=> d!1078091 e!2273175))

(declare-fun res!1491062 () Bool)

(assert (=> d!1078091 (=> res!1491062 e!2273175)))

(assert (=> d!1078091 (= res!1491062 (isEmpty!22982 lt!1279909))))

(assert (=> d!1078091 (= lt!1279909 e!2273176)))

(declare-fun c!634772 () Bool)

(assert (=> d!1078091 (= c!634772 (and ((_ is Cons!38717) rules!3307) ((_ is Nil!38717) (t!299636 rules!3307))))))

(declare-fun lt!1279908 () Unit!56308)

(declare-fun lt!1279911 () Unit!56308)

(assert (=> d!1078091 (= lt!1279908 lt!1279911)))

(assert (=> d!1078091 (isPrefix!3183 lt!1279637 lt!1279637)))

(declare-fun lemmaIsPrefixRefl!2006 (List!38840 List!38840) Unit!56308)

(assert (=> d!1078091 (= lt!1279911 (lemmaIsPrefixRefl!2006 lt!1279637 lt!1279637))))

(declare-fun rulesValidInductive!2069 (LexerInterface!5409 List!38841) Bool)

(assert (=> d!1078091 (rulesValidInductive!2069 thiss!23823 rules!3307)))

(assert (=> d!1078091 (= (maxPrefix!2943 thiss!23823 rules!3307 lt!1279637) lt!1279909)))

(declare-fun b!3671225 () Bool)

(declare-fun res!1491059 () Bool)

(assert (=> b!3671225 (=> (not res!1491059) (not e!2273174))))

(assert (=> b!3671225 (= res!1491059 (= (value!186330 (_1!22426 (get!12788 lt!1279909))) (apply!9322 (transformation!5820 (rule!8644 (_1!22426 (get!12788 lt!1279909)))) (seqFromList!4369 (originalCharacters!6534 (_1!22426 (get!12788 lt!1279909)))))))))

(declare-fun b!3671226 () Bool)

(assert (=> b!3671226 (= e!2273174 (contains!7708 rules!3307 (rule!8644 (_1!22426 (get!12788 lt!1279909)))))))

(declare-fun b!3671227 () Bool)

(assert (=> b!3671227 (= e!2273175 e!2273174)))

(declare-fun res!1491064 () Bool)

(assert (=> b!3671227 (=> (not res!1491064) (not e!2273174))))

(assert (=> b!3671227 (= res!1491064 (isDefined!6501 lt!1279909))))

(declare-fun b!3671228 () Bool)

(declare-fun res!1491061 () Bool)

(assert (=> b!3671228 (=> (not res!1491061) (not e!2273174))))

(assert (=> b!3671228 (= res!1491061 (= (list!14378 (charsOf!3834 (_1!22426 (get!12788 lt!1279909)))) (originalCharacters!6534 (_1!22426 (get!12788 lt!1279909)))))))

(declare-fun b!3671229 () Bool)

(declare-fun lt!1279912 () Option!8268)

(declare-fun lt!1279910 () Option!8268)

(assert (=> b!3671229 (= e!2273176 (ite (and ((_ is None!8267) lt!1279912) ((_ is None!8267) lt!1279910)) None!8267 (ite ((_ is None!8267) lt!1279910) lt!1279912 (ite ((_ is None!8267) lt!1279912) lt!1279910 (ite (>= (size!29591 (_1!22426 (v!38179 lt!1279912))) (size!29591 (_1!22426 (v!38179 lt!1279910)))) lt!1279912 lt!1279910)))))))

(assert (=> b!3671229 (= lt!1279912 call!265784)))

(assert (=> b!3671229 (= lt!1279910 (maxPrefix!2943 thiss!23823 (t!299636 rules!3307) lt!1279637))))

(declare-fun b!3671230 () Bool)

(declare-fun res!1491060 () Bool)

(assert (=> b!3671230 (=> (not res!1491060) (not e!2273174))))

(assert (=> b!3671230 (= res!1491060 (< (size!29593 (_2!22426 (get!12788 lt!1279909))) (size!29593 lt!1279637)))))

(assert (= (and d!1078091 c!634772) b!3671223))

(assert (= (and d!1078091 (not c!634772)) b!3671229))

(assert (= (or b!3671223 b!3671229) bm!265779))

(assert (= (and d!1078091 (not res!1491062)) b!3671227))

(assert (= (and b!3671227 res!1491064) b!3671228))

(assert (= (and b!3671228 res!1491061) b!3671230))

(assert (= (and b!3671230 res!1491060) b!3671224))

(assert (= (and b!3671224 res!1491063) b!3671225))

(assert (= (and b!3671225 res!1491059) b!3671222))

(assert (= (and b!3671222 res!1491058) b!3671226))

(declare-fun m!4179969 () Bool)

(assert (=> b!3671228 m!4179969))

(declare-fun m!4179971 () Bool)

(assert (=> b!3671228 m!4179971))

(assert (=> b!3671228 m!4179971))

(declare-fun m!4179973 () Bool)

(assert (=> b!3671228 m!4179973))

(declare-fun m!4179975 () Bool)

(assert (=> bm!265779 m!4179975))

(assert (=> b!3671224 m!4179969))

(assert (=> b!3671224 m!4179971))

(assert (=> b!3671224 m!4179971))

(assert (=> b!3671224 m!4179973))

(assert (=> b!3671224 m!4179973))

(declare-fun m!4179977 () Bool)

(assert (=> b!3671224 m!4179977))

(declare-fun m!4179979 () Bool)

(assert (=> b!3671229 m!4179979))

(assert (=> b!3671222 m!4179969))

(assert (=> b!3671222 m!4179971))

(assert (=> b!3671222 m!4179971))

(assert (=> b!3671222 m!4179973))

(assert (=> b!3671222 m!4179973))

(declare-fun m!4179981 () Bool)

(assert (=> b!3671222 m!4179981))

(assert (=> b!3671226 m!4179969))

(declare-fun m!4179983 () Bool)

(assert (=> b!3671226 m!4179983))

(declare-fun m!4179985 () Bool)

(assert (=> b!3671227 m!4179985))

(assert (=> b!3671230 m!4179969))

(declare-fun m!4179987 () Bool)

(assert (=> b!3671230 m!4179987))

(assert (=> b!3671230 m!4179701))

(declare-fun m!4179989 () Bool)

(assert (=> d!1078091 m!4179989))

(declare-fun m!4179991 () Bool)

(assert (=> d!1078091 m!4179991))

(declare-fun m!4179993 () Bool)

(assert (=> d!1078091 m!4179993))

(declare-fun m!4179995 () Bool)

(assert (=> d!1078091 m!4179995))

(assert (=> b!3671225 m!4179969))

(declare-fun m!4179997 () Bool)

(assert (=> b!3671225 m!4179997))

(assert (=> b!3671225 m!4179997))

(declare-fun m!4179999 () Bool)

(assert (=> b!3671225 m!4179999))

(assert (=> b!3670827 d!1078091))

(declare-fun b!3671231 () Bool)

(declare-fun e!2273178 () Bool)

(declare-fun e!2273177 () Bool)

(assert (=> b!3671231 (= e!2273178 e!2273177)))

(declare-fun res!1491066 () Bool)

(assert (=> b!3671231 (=> (not res!1491066) (not e!2273177))))

(assert (=> b!3671231 (= res!1491066 (not ((_ is Nil!38716) (++!9636 lt!1279618 (_2!22426 lt!1279624)))))))

(declare-fun b!3671233 () Bool)

(assert (=> b!3671233 (= e!2273177 (isPrefix!3183 (tail!5681 lt!1279618) (tail!5681 (++!9636 lt!1279618 (_2!22426 lt!1279624)))))))

(declare-fun b!3671232 () Bool)

(declare-fun res!1491065 () Bool)

(assert (=> b!3671232 (=> (not res!1491065) (not e!2273177))))

(assert (=> b!3671232 (= res!1491065 (= (head!7860 lt!1279618) (head!7860 (++!9636 lt!1279618 (_2!22426 lt!1279624)))))))

(declare-fun d!1078093 () Bool)

(declare-fun e!2273179 () Bool)

(assert (=> d!1078093 e!2273179))

(declare-fun res!1491067 () Bool)

(assert (=> d!1078093 (=> res!1491067 e!2273179)))

(declare-fun lt!1279913 () Bool)

(assert (=> d!1078093 (= res!1491067 (not lt!1279913))))

(assert (=> d!1078093 (= lt!1279913 e!2273178)))

(declare-fun res!1491068 () Bool)

(assert (=> d!1078093 (=> res!1491068 e!2273178)))

(assert (=> d!1078093 (= res!1491068 ((_ is Nil!38716) lt!1279618))))

(assert (=> d!1078093 (= (isPrefix!3183 lt!1279618 (++!9636 lt!1279618 (_2!22426 lt!1279624))) lt!1279913)))

(declare-fun b!3671234 () Bool)

(assert (=> b!3671234 (= e!2273179 (>= (size!29593 (++!9636 lt!1279618 (_2!22426 lt!1279624))) (size!29593 lt!1279618)))))

(assert (= (and d!1078093 (not res!1491068)) b!3671231))

(assert (= (and b!3671231 res!1491066) b!3671232))

(assert (= (and b!3671232 res!1491065) b!3671233))

(assert (= (and d!1078093 (not res!1491067)) b!3671234))

(assert (=> b!3671233 m!4179959))

(assert (=> b!3671233 m!4179537))

(declare-fun m!4180001 () Bool)

(assert (=> b!3671233 m!4180001))

(assert (=> b!3671233 m!4179959))

(assert (=> b!3671233 m!4180001))

(declare-fun m!4180003 () Bool)

(assert (=> b!3671233 m!4180003))

(assert (=> b!3671232 m!4179461))

(assert (=> b!3671232 m!4179537))

(declare-fun m!4180005 () Bool)

(assert (=> b!3671232 m!4180005))

(assert (=> b!3671234 m!4179537))

(declare-fun m!4180007 () Bool)

(assert (=> b!3671234 m!4180007))

(assert (=> b!3671234 m!4179421))

(assert (=> b!3670827 d!1078093))

(declare-fun b!3671243 () Bool)

(declare-fun e!2273185 () List!38840)

(assert (=> b!3671243 (= e!2273185 suffix!1395)))

(declare-fun e!2273184 () Bool)

(declare-fun lt!1279916 () List!38840)

(declare-fun b!3671246 () Bool)

(assert (=> b!3671246 (= e!2273184 (or (not (= suffix!1395 Nil!38716)) (= lt!1279916 lt!1279660)))))

(declare-fun b!3671244 () Bool)

(assert (=> b!3671244 (= e!2273185 (Cons!38716 (h!44136 lt!1279660) (++!9636 (t!299635 lt!1279660) suffix!1395)))))

(declare-fun b!3671245 () Bool)

(declare-fun res!1491074 () Bool)

(assert (=> b!3671245 (=> (not res!1491074) (not e!2273184))))

(assert (=> b!3671245 (= res!1491074 (= (size!29593 lt!1279916) (+ (size!29593 lt!1279660) (size!29593 suffix!1395))))))

(declare-fun d!1078095 () Bool)

(assert (=> d!1078095 e!2273184))

(declare-fun res!1491073 () Bool)

(assert (=> d!1078095 (=> (not res!1491073) (not e!2273184))))

(assert (=> d!1078095 (= res!1491073 (= (content!5605 lt!1279916) ((_ map or) (content!5605 lt!1279660) (content!5605 suffix!1395))))))

(assert (=> d!1078095 (= lt!1279916 e!2273185)))

(declare-fun c!634775 () Bool)

(assert (=> d!1078095 (= c!634775 ((_ is Nil!38716) lt!1279660))))

(assert (=> d!1078095 (= (++!9636 lt!1279660 suffix!1395) lt!1279916)))

(assert (= (and d!1078095 c!634775) b!3671243))

(assert (= (and d!1078095 (not c!634775)) b!3671244))

(assert (= (and d!1078095 res!1491073) b!3671245))

(assert (= (and b!3671245 res!1491074) b!3671246))

(declare-fun m!4180009 () Bool)

(assert (=> b!3671244 m!4180009))

(declare-fun m!4180011 () Bool)

(assert (=> b!3671245 m!4180011))

(assert (=> b!3671245 m!4179477))

(declare-fun m!4180013 () Bool)

(assert (=> b!3671245 m!4180013))

(declare-fun m!4180015 () Bool)

(assert (=> d!1078095 m!4180015))

(declare-fun m!4180017 () Bool)

(assert (=> d!1078095 m!4180017))

(declare-fun m!4180019 () Bool)

(assert (=> d!1078095 m!4180019))

(assert (=> b!3670827 d!1078095))

(declare-fun d!1078097 () Bool)

(declare-fun isEmpty!22983 (Option!8269) Bool)

(assert (=> d!1078097 (= (isDefined!6500 lt!1279622) (not (isEmpty!22983 lt!1279622)))))

(declare-fun bs!573171 () Bool)

(assert (= bs!573171 d!1078097))

(declare-fun m!4180021 () Bool)

(assert (=> bs!573171 m!4180021))

(assert (=> b!3670827 d!1078097))

(declare-fun b!3671247 () Bool)

(declare-fun e!2273187 () List!38840)

(assert (=> b!3671247 (= e!2273187 (_2!22426 lt!1279624))))

(declare-fun e!2273186 () Bool)

(declare-fun b!3671250 () Bool)

(declare-fun lt!1279917 () List!38840)

(assert (=> b!3671250 (= e!2273186 (or (not (= (_2!22426 lt!1279624) Nil!38716)) (= lt!1279917 lt!1279618)))))

(declare-fun b!3671248 () Bool)

(assert (=> b!3671248 (= e!2273187 (Cons!38716 (h!44136 lt!1279618) (++!9636 (t!299635 lt!1279618) (_2!22426 lt!1279624))))))

(declare-fun b!3671249 () Bool)

(declare-fun res!1491076 () Bool)

(assert (=> b!3671249 (=> (not res!1491076) (not e!2273186))))

(assert (=> b!3671249 (= res!1491076 (= (size!29593 lt!1279917) (+ (size!29593 lt!1279618) (size!29593 (_2!22426 lt!1279624)))))))

(declare-fun d!1078099 () Bool)

(assert (=> d!1078099 e!2273186))

(declare-fun res!1491075 () Bool)

(assert (=> d!1078099 (=> (not res!1491075) (not e!2273186))))

(assert (=> d!1078099 (= res!1491075 (= (content!5605 lt!1279917) ((_ map or) (content!5605 lt!1279618) (content!5605 (_2!22426 lt!1279624)))))))

(assert (=> d!1078099 (= lt!1279917 e!2273187)))

(declare-fun c!634776 () Bool)

(assert (=> d!1078099 (= c!634776 ((_ is Nil!38716) lt!1279618))))

(assert (=> d!1078099 (= (++!9636 lt!1279618 (_2!22426 lt!1279624)) lt!1279917)))

(assert (= (and d!1078099 c!634776) b!3671247))

(assert (= (and d!1078099 (not c!634776)) b!3671248))

(assert (= (and d!1078099 res!1491075) b!3671249))

(assert (= (and b!3671249 res!1491076) b!3671250))

(declare-fun m!4180023 () Bool)

(assert (=> b!3671248 m!4180023))

(declare-fun m!4180025 () Bool)

(assert (=> b!3671249 m!4180025))

(assert (=> b!3671249 m!4179421))

(declare-fun m!4180027 () Bool)

(assert (=> b!3671249 m!4180027))

(declare-fun m!4180029 () Bool)

(assert (=> d!1078099 m!4180029))

(declare-fun m!4180031 () Bool)

(assert (=> d!1078099 m!4180031))

(declare-fun m!4180033 () Bool)

(assert (=> d!1078099 m!4180033))

(assert (=> b!3670827 d!1078099))

(declare-fun d!1078101 () Bool)

(declare-fun list!14382 (Conc!11845) List!38840)

(assert (=> d!1078101 (= (list!14378 lt!1279628) (list!14382 (c!634687 lt!1279628)))))

(declare-fun bs!573172 () Bool)

(assert (= bs!573172 d!1078101))

(declare-fun m!4180035 () Bool)

(assert (=> bs!573172 m!4180035))

(assert (=> b!3670827 d!1078101))

(declare-fun b!3671263 () Bool)

(declare-fun e!2273198 () Option!8269)

(assert (=> b!3671263 (= e!2273198 None!8268)))

(declare-fun b!3671264 () Bool)

(declare-fun e!2273196 () Option!8269)

(assert (=> b!3671264 (= e!2273196 e!2273198)))

(declare-fun c!634782 () Bool)

(assert (=> b!3671264 (= c!634782 (and ((_ is Cons!38717) rules!3307) (not (= (tag!6610 (h!44137 rules!3307)) (tag!6610 (rule!8644 (_1!22426 lt!1279624)))))))))

(declare-fun b!3671265 () Bool)

(declare-fun lt!1279925 () Unit!56308)

(declare-fun lt!1279924 () Unit!56308)

(assert (=> b!3671265 (= lt!1279925 lt!1279924)))

(assert (=> b!3671265 (rulesInvariant!4806 thiss!23823 (t!299636 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!613 (LexerInterface!5409 Rule!11440 List!38841) Unit!56308)

(assert (=> b!3671265 (= lt!1279924 (lemmaInvariantOnRulesThenOnTail!613 thiss!23823 (h!44137 rules!3307) (t!299636 rules!3307)))))

(assert (=> b!3671265 (= e!2273198 (getRuleFromTag!1424 thiss!23823 (t!299636 rules!3307) (tag!6610 (rule!8644 (_1!22426 lt!1279624)))))))

(declare-fun d!1078103 () Bool)

(declare-fun e!2273199 () Bool)

(assert (=> d!1078103 e!2273199))

(declare-fun res!1491081 () Bool)

(assert (=> d!1078103 (=> res!1491081 e!2273199)))

(declare-fun lt!1279926 () Option!8269)

(assert (=> d!1078103 (= res!1491081 (isEmpty!22983 lt!1279926))))

(assert (=> d!1078103 (= lt!1279926 e!2273196)))

(declare-fun c!634781 () Bool)

(assert (=> d!1078103 (= c!634781 (and ((_ is Cons!38717) rules!3307) (= (tag!6610 (h!44137 rules!3307)) (tag!6610 (rule!8644 (_1!22426 lt!1279624))))))))

(assert (=> d!1078103 (rulesInvariant!4806 thiss!23823 rules!3307)))

(assert (=> d!1078103 (= (getRuleFromTag!1424 thiss!23823 rules!3307 (tag!6610 (rule!8644 (_1!22426 lt!1279624)))) lt!1279926)))

(declare-fun b!3671266 () Bool)

(declare-fun e!2273197 () Bool)

(assert (=> b!3671266 (= e!2273199 e!2273197)))

(declare-fun res!1491082 () Bool)

(assert (=> b!3671266 (=> (not res!1491082) (not e!2273197))))

(assert (=> b!3671266 (= res!1491082 (contains!7708 rules!3307 (get!12789 lt!1279926)))))

(declare-fun b!3671267 () Bool)

(assert (=> b!3671267 (= e!2273196 (Some!8268 (h!44137 rules!3307)))))

(declare-fun b!3671268 () Bool)

(assert (=> b!3671268 (= e!2273197 (= (tag!6610 (get!12789 lt!1279926)) (tag!6610 (rule!8644 (_1!22426 lt!1279624)))))))

(assert (= (and d!1078103 c!634781) b!3671267))

(assert (= (and d!1078103 (not c!634781)) b!3671264))

(assert (= (and b!3671264 c!634782) b!3671265))

(assert (= (and b!3671264 (not c!634782)) b!3671263))

(assert (= (and d!1078103 (not res!1491081)) b!3671266))

(assert (= (and b!3671266 res!1491082) b!3671268))

(declare-fun m!4180037 () Bool)

(assert (=> b!3671265 m!4180037))

(declare-fun m!4180039 () Bool)

(assert (=> b!3671265 m!4180039))

(declare-fun m!4180041 () Bool)

(assert (=> b!3671265 m!4180041))

(declare-fun m!4180043 () Bool)

(assert (=> d!1078103 m!4180043))

(assert (=> d!1078103 m!4179453))

(declare-fun m!4180045 () Bool)

(assert (=> b!3671266 m!4180045))

(assert (=> b!3671266 m!4180045))

(declare-fun m!4180047 () Bool)

(assert (=> b!3671266 m!4180047))

(assert (=> b!3671268 m!4180045))

(assert (=> b!3670827 d!1078103))

(declare-fun d!1078105 () Bool)

(declare-fun lt!1279929 () BalanceConc!23304)

(assert (=> d!1078105 (= (list!14378 lt!1279929) (originalCharacters!6534 (_1!22426 lt!1279624)))))

(declare-fun dynLambda!16949 (Int TokenValue!6050) BalanceConc!23304)

(assert (=> d!1078105 (= lt!1279929 (dynLambda!16949 (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) (value!186330 (_1!22426 lt!1279624))))))

(assert (=> d!1078105 (= (charsOf!3834 (_1!22426 lt!1279624)) lt!1279929)))

(declare-fun b_lambda!108995 () Bool)

(assert (=> (not b_lambda!108995) (not d!1078105)))

(declare-fun tb!212565 () Bool)

(declare-fun t!299654 () Bool)

(assert (=> (and b!3670820 (= (toChars!7975 (transformation!5820 rule!403)) (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299654) tb!212565))

(declare-fun b!3671273 () Bool)

(declare-fun e!2273202 () Bool)

(declare-fun tp!1117038 () Bool)

(declare-fun inv!52204 (Conc!11845) Bool)

(assert (=> b!3671273 (= e!2273202 (and (inv!52204 (c!634687 (dynLambda!16949 (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) (value!186330 (_1!22426 lt!1279624))))) tp!1117038))))

(declare-fun result!258694 () Bool)

(declare-fun inv!52205 (BalanceConc!23304) Bool)

(assert (=> tb!212565 (= result!258694 (and (inv!52205 (dynLambda!16949 (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) (value!186330 (_1!22426 lt!1279624)))) e!2273202))))

(assert (= tb!212565 b!3671273))

(declare-fun m!4180049 () Bool)

(assert (=> b!3671273 m!4180049))

(declare-fun m!4180051 () Bool)

(assert (=> tb!212565 m!4180051))

(assert (=> d!1078105 t!299654))

(declare-fun b_and!273403 () Bool)

(assert (= b_and!273373 (and (=> t!299654 result!258694) b_and!273403)))

(declare-fun t!299656 () Bool)

(declare-fun tb!212567 () Bool)

(assert (=> (and b!3670836 (= (toChars!7975 (transformation!5820 anOtherTypeRule!33)) (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299656) tb!212567))

(declare-fun result!258698 () Bool)

(assert (= result!258698 result!258694))

(assert (=> d!1078105 t!299656))

(declare-fun b_and!273405 () Bool)

(assert (= b_and!273377 (and (=> t!299656 result!258698) b_and!273405)))

(declare-fun tb!212569 () Bool)

(declare-fun t!299658 () Bool)

(assert (=> (and b!3670810 (= (toChars!7975 (transformation!5820 (rule!8644 token!511))) (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299658) tb!212569))

(declare-fun result!258700 () Bool)

(assert (= result!258700 result!258694))

(assert (=> d!1078105 t!299658))

(declare-fun b_and!273407 () Bool)

(assert (= b_and!273381 (and (=> t!299658 result!258700) b_and!273407)))

(declare-fun tb!212571 () Bool)

(declare-fun t!299660 () Bool)

(assert (=> (and b!3670840 (= (toChars!7975 (transformation!5820 (h!44137 rules!3307))) (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299660) tb!212571))

(declare-fun result!258702 () Bool)

(assert (= result!258702 result!258694))

(assert (=> d!1078105 t!299660))

(declare-fun b_and!273409 () Bool)

(assert (= b_and!273385 (and (=> t!299660 result!258702) b_and!273409)))

(declare-fun m!4180053 () Bool)

(assert (=> d!1078105 m!4180053))

(declare-fun m!4180055 () Bool)

(assert (=> d!1078105 m!4180055))

(assert (=> b!3670827 d!1078105))

(declare-fun d!1078107 () Bool)

(declare-fun lt!1279930 () Bool)

(assert (=> d!1078107 (= lt!1279930 (select (content!5606 rules!3307) (rule!8644 (_1!22426 lt!1279624))))))

(declare-fun e!2273204 () Bool)

(assert (=> d!1078107 (= lt!1279930 e!2273204)))

(declare-fun res!1491083 () Bool)

(assert (=> d!1078107 (=> (not res!1491083) (not e!2273204))))

(assert (=> d!1078107 (= res!1491083 ((_ is Cons!38717) rules!3307))))

(assert (=> d!1078107 (= (contains!7708 rules!3307 (rule!8644 (_1!22426 lt!1279624))) lt!1279930)))

(declare-fun b!3671274 () Bool)

(declare-fun e!2273203 () Bool)

(assert (=> b!3671274 (= e!2273204 e!2273203)))

(declare-fun res!1491084 () Bool)

(assert (=> b!3671274 (=> res!1491084 e!2273203)))

(assert (=> b!3671274 (= res!1491084 (= (h!44137 rules!3307) (rule!8644 (_1!22426 lt!1279624))))))

(declare-fun b!3671275 () Bool)

(assert (=> b!3671275 (= e!2273203 (contains!7708 (t!299636 rules!3307) (rule!8644 (_1!22426 lt!1279624))))))

(assert (= (and d!1078107 res!1491083) b!3671274))

(assert (= (and b!3671274 (not res!1491084)) b!3671275))

(assert (=> d!1078107 m!4179753))

(declare-fun m!4180057 () Bool)

(assert (=> d!1078107 m!4180057))

(declare-fun m!4180059 () Bool)

(assert (=> b!3671275 m!4180059))

(assert (=> b!3670813 d!1078107))

(declare-fun d!1078109 () Bool)

(assert (=> d!1078109 (= (get!12788 lt!1279666) (v!38179 lt!1279666))))

(assert (=> b!3670792 d!1078109))

(declare-fun d!1078111 () Bool)

(assert (=> d!1078111 (= (apply!9322 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279631) (dynLambda!16942 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) lt!1279631))))

(declare-fun b_lambda!108997 () Bool)

(assert (=> (not b_lambda!108997) (not d!1078111)))

(declare-fun tb!212573 () Bool)

(declare-fun t!299662 () Bool)

(assert (=> (and b!3670820 (= (toValue!8116 (transformation!5820 rule!403)) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299662) tb!212573))

(declare-fun result!258704 () Bool)

(assert (=> tb!212573 (= result!258704 (inv!21 (dynLambda!16942 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) lt!1279631)))))

(declare-fun m!4180061 () Bool)

(assert (=> tb!212573 m!4180061))

(assert (=> d!1078111 t!299662))

(declare-fun b_and!273411 () Bool)

(assert (= b_and!273387 (and (=> t!299662 result!258704) b_and!273411)))

(declare-fun t!299664 () Bool)

(declare-fun tb!212575 () Bool)

(assert (=> (and b!3670836 (= (toValue!8116 (transformation!5820 anOtherTypeRule!33)) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299664) tb!212575))

(declare-fun result!258706 () Bool)

(assert (= result!258706 result!258704))

(assert (=> d!1078111 t!299664))

(declare-fun b_and!273413 () Bool)

(assert (= b_and!273389 (and (=> t!299664 result!258706) b_and!273413)))

(declare-fun tb!212577 () Bool)

(declare-fun t!299666 () Bool)

(assert (=> (and b!3670810 (= (toValue!8116 (transformation!5820 (rule!8644 token!511))) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299666) tb!212577))

(declare-fun result!258708 () Bool)

(assert (= result!258708 result!258704))

(assert (=> d!1078111 t!299666))

(declare-fun b_and!273415 () Bool)

(assert (= b_and!273391 (and (=> t!299666 result!258708) b_and!273415)))

(declare-fun tb!212579 () Bool)

(declare-fun t!299668 () Bool)

(assert (=> (and b!3670840 (= (toValue!8116 (transformation!5820 (h!44137 rules!3307))) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299668) tb!212579))

(declare-fun result!258710 () Bool)

(assert (= result!258710 result!258704))

(assert (=> d!1078111 t!299668))

(declare-fun b_and!273417 () Bool)

(assert (= b_and!273393 (and (=> t!299668 result!258710) b_and!273417)))

(declare-fun m!4180063 () Bool)

(assert (=> d!1078111 m!4180063))

(assert (=> b!3670830 d!1078111))

(declare-fun b!3671530 () Bool)

(declare-fun e!2273358 () Bool)

(assert (=> b!3671530 (= e!2273358 true)))

(declare-fun d!1078113 () Bool)

(assert (=> d!1078113 e!2273358))

(assert (= d!1078113 b!3671530))

(declare-fun order!21419 () Int)

(declare-fun lambda!124687 () Int)

(declare-fun order!21421 () Int)

(declare-fun dynLambda!16950 (Int Int) Int)

(declare-fun dynLambda!16951 (Int Int) Int)

(assert (=> b!3671530 (< (dynLambda!16950 order!21419 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) (dynLambda!16951 order!21421 lambda!124687))))

(declare-fun order!21423 () Int)

(declare-fun dynLambda!16952 (Int Int) Int)

(assert (=> b!3671530 (< (dynLambda!16952 order!21423 (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) (dynLambda!16951 order!21421 lambda!124687))))

(assert (=> d!1078113 (= (list!14378 (dynLambda!16949 (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) (dynLambda!16942 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) lt!1279631))) (list!14378 lt!1279631))))

(declare-fun lt!1280023 () Unit!56308)

(declare-fun ForallOf!740 (Int BalanceConc!23304) Unit!56308)

(assert (=> d!1078113 (= lt!1280023 (ForallOf!740 lambda!124687 lt!1279631))))

(assert (=> d!1078113 (= (lemmaSemiInverse!1569 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279631) lt!1280023)))

(declare-fun b_lambda!109025 () Bool)

(assert (=> (not b_lambda!109025) (not d!1078113)))

(declare-fun tb!212653 () Bool)

(declare-fun t!299742 () Bool)

(assert (=> (and b!3670820 (= (toChars!7975 (transformation!5820 rule!403)) (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299742) tb!212653))

(declare-fun tp!1117088 () Bool)

(declare-fun b!3671531 () Bool)

(declare-fun e!2273359 () Bool)

(assert (=> b!3671531 (= e!2273359 (and (inv!52204 (c!634687 (dynLambda!16949 (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) (dynLambda!16942 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) lt!1279631)))) tp!1117088))))

(declare-fun result!258792 () Bool)

(assert (=> tb!212653 (= result!258792 (and (inv!52205 (dynLambda!16949 (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) (dynLambda!16942 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) lt!1279631))) e!2273359))))

(assert (= tb!212653 b!3671531))

(declare-fun m!4180371 () Bool)

(assert (=> b!3671531 m!4180371))

(declare-fun m!4180373 () Bool)

(assert (=> tb!212653 m!4180373))

(assert (=> d!1078113 t!299742))

(declare-fun b_and!273511 () Bool)

(assert (= b_and!273403 (and (=> t!299742 result!258792) b_and!273511)))

(declare-fun t!299744 () Bool)

(declare-fun tb!212655 () Bool)

(assert (=> (and b!3670836 (= (toChars!7975 (transformation!5820 anOtherTypeRule!33)) (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299744) tb!212655))

(declare-fun result!258794 () Bool)

(assert (= result!258794 result!258792))

(assert (=> d!1078113 t!299744))

(declare-fun b_and!273513 () Bool)

(assert (= b_and!273405 (and (=> t!299744 result!258794) b_and!273513)))

(declare-fun tb!212657 () Bool)

(declare-fun t!299746 () Bool)

(assert (=> (and b!3670810 (= (toChars!7975 (transformation!5820 (rule!8644 token!511))) (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299746) tb!212657))

(declare-fun result!258796 () Bool)

(assert (= result!258796 result!258792))

(assert (=> d!1078113 t!299746))

(declare-fun b_and!273515 () Bool)

(assert (= b_and!273407 (and (=> t!299746 result!258796) b_and!273515)))

(declare-fun t!299748 () Bool)

(declare-fun tb!212659 () Bool)

(assert (=> (and b!3670840 (= (toChars!7975 (transformation!5820 (h!44137 rules!3307))) (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299748) tb!212659))

(declare-fun result!258798 () Bool)

(assert (= result!258798 result!258792))

(assert (=> d!1078113 t!299748))

(declare-fun b_and!273517 () Bool)

(assert (= b_and!273409 (and (=> t!299748 result!258798) b_and!273517)))

(declare-fun b_lambda!109027 () Bool)

(assert (=> (not b_lambda!109027) (not d!1078113)))

(assert (=> d!1078113 t!299662))

(declare-fun b_and!273519 () Bool)

(assert (= b_and!273411 (and (=> t!299662 result!258704) b_and!273519)))

(assert (=> d!1078113 t!299664))

(declare-fun b_and!273521 () Bool)

(assert (= b_and!273413 (and (=> t!299664 result!258706) b_and!273521)))

(assert (=> d!1078113 t!299666))

(declare-fun b_and!273523 () Bool)

(assert (= b_and!273415 (and (=> t!299666 result!258708) b_and!273523)))

(assert (=> d!1078113 t!299668))

(declare-fun b_and!273525 () Bool)

(assert (= b_and!273417 (and (=> t!299668 result!258710) b_and!273525)))

(declare-fun m!4180375 () Bool)

(assert (=> d!1078113 m!4180375))

(declare-fun m!4180377 () Bool)

(assert (=> d!1078113 m!4180377))

(declare-fun m!4180379 () Bool)

(assert (=> d!1078113 m!4180379))

(declare-fun m!4180381 () Bool)

(assert (=> d!1078113 m!4180381))

(assert (=> d!1078113 m!4180063))

(assert (=> d!1078113 m!4180063))

(assert (=> d!1078113 m!4180377))

(assert (=> b!3670830 d!1078113))

(declare-fun d!1078251 () Bool)

(declare-fun lt!1280024 () List!38840)

(assert (=> d!1078251 (= (++!9636 lt!1279660 lt!1280024) lt!1279637)))

(declare-fun e!2273360 () List!38840)

(assert (=> d!1078251 (= lt!1280024 e!2273360)))

(declare-fun c!634831 () Bool)

(assert (=> d!1078251 (= c!634831 ((_ is Cons!38716) lt!1279660))))

(assert (=> d!1078251 (>= (size!29593 lt!1279637) (size!29593 lt!1279660))))

(assert (=> d!1078251 (= (getSuffix!1736 lt!1279637 lt!1279660) lt!1280024)))

(declare-fun b!3671532 () Bool)

(assert (=> b!3671532 (= e!2273360 (getSuffix!1736 (tail!5681 lt!1279637) (t!299635 lt!1279660)))))

(declare-fun b!3671533 () Bool)

(assert (=> b!3671533 (= e!2273360 lt!1279637)))

(assert (= (and d!1078251 c!634831) b!3671532))

(assert (= (and d!1078251 (not c!634831)) b!3671533))

(declare-fun m!4180383 () Bool)

(assert (=> d!1078251 m!4180383))

(assert (=> d!1078251 m!4179701))

(assert (=> d!1078251 m!4179477))

(assert (=> b!3671532 m!4179743))

(assert (=> b!3671532 m!4179743))

(declare-fun m!4180385 () Bool)

(assert (=> b!3671532 m!4180385))

(assert (=> b!3670830 d!1078251))

(declare-fun d!1078253 () Bool)

(declare-fun lt!1280025 () Int)

(assert (=> d!1078253 (>= lt!1280025 0)))

(declare-fun e!2273361 () Int)

(assert (=> d!1078253 (= lt!1280025 e!2273361)))

(declare-fun c!634832 () Bool)

(assert (=> d!1078253 (= c!634832 ((_ is Nil!38716) lt!1279660))))

(assert (=> d!1078253 (= (size!29593 lt!1279660) lt!1280025)))

(declare-fun b!3671534 () Bool)

(assert (=> b!3671534 (= e!2273361 0)))

(declare-fun b!3671535 () Bool)

(assert (=> b!3671535 (= e!2273361 (+ 1 (size!29593 (t!299635 lt!1279660))))))

(assert (= (and d!1078253 c!634832) b!3671534))

(assert (= (and d!1078253 (not c!634832)) b!3671535))

(declare-fun m!4180387 () Bool)

(assert (=> b!3671535 m!4180387))

(assert (=> b!3670830 d!1078253))

(declare-fun d!1078255 () Bool)

(assert (=> d!1078255 (= (seqFromList!4369 lt!1279660) (fromListB!2018 lt!1279660))))

(declare-fun bs!573195 () Bool)

(assert (= bs!573195 d!1078255))

(declare-fun m!4180389 () Bool)

(assert (=> bs!573195 m!4180389))

(assert (=> b!3670830 d!1078255))

(declare-fun d!1078257 () Bool)

(assert (=> d!1078257 (= (isEmpty!22978 (_2!22426 lt!1279626)) ((_ is Nil!38716) (_2!22426 lt!1279626)))))

(assert (=> b!3670814 d!1078257))

(declare-fun b!3671536 () Bool)

(declare-fun e!2273368 () Bool)

(declare-fun e!2273366 () Bool)

(assert (=> b!3671536 (= e!2273368 e!2273366)))

(declare-fun c!634833 () Bool)

(assert (=> b!3671536 (= c!634833 ((_ is EmptyLang!10579) (regex!5820 (rule!8644 (_1!22426 lt!1279624)))))))

(declare-fun b!3671537 () Bool)

(declare-fun res!1491191 () Bool)

(declare-fun e!2273363 () Bool)

(assert (=> b!3671537 (=> (not res!1491191) (not e!2273363))))

(assert (=> b!3671537 (= res!1491191 (isEmpty!22978 (tail!5681 lt!1279618)))))

(declare-fun b!3671538 () Bool)

(declare-fun lt!1280026 () Bool)

(declare-fun call!265797 () Bool)

(assert (=> b!3671538 (= e!2273368 (= lt!1280026 call!265797))))

(declare-fun bm!265792 () Bool)

(assert (=> bm!265792 (= call!265797 (isEmpty!22978 lt!1279618))))

(declare-fun b!3671539 () Bool)

(declare-fun e!2273367 () Bool)

(assert (=> b!3671539 (= e!2273367 (matchR!5148 (derivativeStep!3232 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) (head!7860 lt!1279618)) (tail!5681 lt!1279618)))))

(declare-fun b!3671540 () Bool)

(declare-fun res!1491188 () Bool)

(declare-fun e!2273364 () Bool)

(assert (=> b!3671540 (=> res!1491188 e!2273364)))

(assert (=> b!3671540 (= res!1491188 (not (isEmpty!22978 (tail!5681 lt!1279618))))))

(declare-fun d!1078259 () Bool)

(assert (=> d!1078259 e!2273368))

(declare-fun c!634834 () Bool)

(assert (=> d!1078259 (= c!634834 ((_ is EmptyExpr!10579) (regex!5820 (rule!8644 (_1!22426 lt!1279624)))))))

(assert (=> d!1078259 (= lt!1280026 e!2273367)))

(declare-fun c!634835 () Bool)

(assert (=> d!1078259 (= c!634835 (isEmpty!22978 lt!1279618))))

(assert (=> d!1078259 (validRegex!4844 (regex!5820 (rule!8644 (_1!22426 lt!1279624))))))

(assert (=> d!1078259 (= (matchR!5148 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279618) lt!1280026)))

(declare-fun b!3671541 () Bool)

(declare-fun res!1491190 () Bool)

(declare-fun e!2273365 () Bool)

(assert (=> b!3671541 (=> res!1491190 e!2273365)))

(assert (=> b!3671541 (= res!1491190 e!2273363)))

(declare-fun res!1491194 () Bool)

(assert (=> b!3671541 (=> (not res!1491194) (not e!2273363))))

(assert (=> b!3671541 (= res!1491194 lt!1280026)))

(declare-fun b!3671542 () Bool)

(declare-fun res!1491193 () Bool)

(assert (=> b!3671542 (=> res!1491193 e!2273365)))

(assert (=> b!3671542 (= res!1491193 (not ((_ is ElementMatch!10579) (regex!5820 (rule!8644 (_1!22426 lt!1279624))))))))

(assert (=> b!3671542 (= e!2273366 e!2273365)))

(declare-fun b!3671543 () Bool)

(assert (=> b!3671543 (= e!2273364 (not (= (head!7860 lt!1279618) (c!634686 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))))))))

(declare-fun b!3671544 () Bool)

(assert (=> b!3671544 (= e!2273366 (not lt!1280026))))

(declare-fun b!3671545 () Bool)

(assert (=> b!3671545 (= e!2273367 (nullable!3683 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))))))

(declare-fun b!3671546 () Bool)

(declare-fun res!1491192 () Bool)

(assert (=> b!3671546 (=> (not res!1491192) (not e!2273363))))

(assert (=> b!3671546 (= res!1491192 (not call!265797))))

(declare-fun b!3671547 () Bool)

(declare-fun e!2273362 () Bool)

(assert (=> b!3671547 (= e!2273365 e!2273362)))

(declare-fun res!1491189 () Bool)

(assert (=> b!3671547 (=> (not res!1491189) (not e!2273362))))

(assert (=> b!3671547 (= res!1491189 (not lt!1280026))))

(declare-fun b!3671548 () Bool)

(assert (=> b!3671548 (= e!2273363 (= (head!7860 lt!1279618) (c!634686 (regex!5820 (rule!8644 (_1!22426 lt!1279624))))))))

(declare-fun b!3671549 () Bool)

(assert (=> b!3671549 (= e!2273362 e!2273364)))

(declare-fun res!1491195 () Bool)

(assert (=> b!3671549 (=> res!1491195 e!2273364)))

(assert (=> b!3671549 (= res!1491195 call!265797)))

(assert (= (and d!1078259 c!634835) b!3671545))

(assert (= (and d!1078259 (not c!634835)) b!3671539))

(assert (= (and d!1078259 c!634834) b!3671538))

(assert (= (and d!1078259 (not c!634834)) b!3671536))

(assert (= (and b!3671536 c!634833) b!3671544))

(assert (= (and b!3671536 (not c!634833)) b!3671542))

(assert (= (and b!3671542 (not res!1491193)) b!3671541))

(assert (= (and b!3671541 res!1491194) b!3671546))

(assert (= (and b!3671546 res!1491192) b!3671537))

(assert (= (and b!3671537 res!1491191) b!3671548))

(assert (= (and b!3671541 (not res!1491190)) b!3671547))

(assert (= (and b!3671547 res!1491189) b!3671549))

(assert (= (and b!3671549 (not res!1491195)) b!3671540))

(assert (= (and b!3671540 (not res!1491188)) b!3671543))

(assert (= (or b!3671538 b!3671546 b!3671549) bm!265792))

(assert (=> b!3671545 m!4179751))

(assert (=> b!3671539 m!4179461))

(assert (=> b!3671539 m!4179461))

(declare-fun m!4180391 () Bool)

(assert (=> b!3671539 m!4180391))

(assert (=> b!3671539 m!4179959))

(assert (=> b!3671539 m!4180391))

(assert (=> b!3671539 m!4179959))

(declare-fun m!4180393 () Bool)

(assert (=> b!3671539 m!4180393))

(assert (=> b!3671548 m!4179461))

(declare-fun m!4180395 () Bool)

(assert (=> d!1078259 m!4180395))

(assert (=> d!1078259 m!4179749))

(assert (=> b!3671537 m!4179959))

(assert (=> b!3671537 m!4179959))

(declare-fun m!4180397 () Bool)

(assert (=> b!3671537 m!4180397))

(assert (=> bm!265792 m!4180395))

(assert (=> b!3671543 m!4179461))

(assert (=> b!3671540 m!4179959))

(assert (=> b!3671540 m!4179959))

(assert (=> b!3671540 m!4180397))

(assert (=> b!3670828 d!1078259))

(declare-fun d!1078261 () Bool)

(declare-fun res!1491200 () Bool)

(declare-fun e!2273371 () Bool)

(assert (=> d!1078261 (=> (not res!1491200) (not e!2273371))))

(assert (=> d!1078261 (= res!1491200 (not (isEmpty!22978 (originalCharacters!6534 token!511))))))

(assert (=> d!1078261 (= (inv!52201 token!511) e!2273371)))

(declare-fun b!3671554 () Bool)

(declare-fun res!1491201 () Bool)

(assert (=> b!3671554 (=> (not res!1491201) (not e!2273371))))

(assert (=> b!3671554 (= res!1491201 (= (originalCharacters!6534 token!511) (list!14378 (dynLambda!16949 (toChars!7975 (transformation!5820 (rule!8644 token!511))) (value!186330 token!511)))))))

(declare-fun b!3671555 () Bool)

(assert (=> b!3671555 (= e!2273371 (= (size!29591 token!511) (size!29593 (originalCharacters!6534 token!511))))))

(assert (= (and d!1078261 res!1491200) b!3671554))

(assert (= (and b!3671554 res!1491201) b!3671555))

(declare-fun b_lambda!109029 () Bool)

(assert (=> (not b_lambda!109029) (not b!3671554)))

(declare-fun t!299750 () Bool)

(declare-fun tb!212661 () Bool)

(assert (=> (and b!3670820 (= (toChars!7975 (transformation!5820 rule!403)) (toChars!7975 (transformation!5820 (rule!8644 token!511)))) t!299750) tb!212661))

(declare-fun b!3671556 () Bool)

(declare-fun e!2273372 () Bool)

(declare-fun tp!1117089 () Bool)

(assert (=> b!3671556 (= e!2273372 (and (inv!52204 (c!634687 (dynLambda!16949 (toChars!7975 (transformation!5820 (rule!8644 token!511))) (value!186330 token!511)))) tp!1117089))))

(declare-fun result!258800 () Bool)

(assert (=> tb!212661 (= result!258800 (and (inv!52205 (dynLambda!16949 (toChars!7975 (transformation!5820 (rule!8644 token!511))) (value!186330 token!511))) e!2273372))))

(assert (= tb!212661 b!3671556))

(declare-fun m!4180399 () Bool)

(assert (=> b!3671556 m!4180399))

(declare-fun m!4180401 () Bool)

(assert (=> tb!212661 m!4180401))

(assert (=> b!3671554 t!299750))

(declare-fun b_and!273527 () Bool)

(assert (= b_and!273511 (and (=> t!299750 result!258800) b_and!273527)))

(declare-fun t!299752 () Bool)

(declare-fun tb!212663 () Bool)

(assert (=> (and b!3670836 (= (toChars!7975 (transformation!5820 anOtherTypeRule!33)) (toChars!7975 (transformation!5820 (rule!8644 token!511)))) t!299752) tb!212663))

(declare-fun result!258802 () Bool)

(assert (= result!258802 result!258800))

(assert (=> b!3671554 t!299752))

(declare-fun b_and!273529 () Bool)

(assert (= b_and!273513 (and (=> t!299752 result!258802) b_and!273529)))

(declare-fun t!299754 () Bool)

(declare-fun tb!212665 () Bool)

(assert (=> (and b!3670810 (= (toChars!7975 (transformation!5820 (rule!8644 token!511))) (toChars!7975 (transformation!5820 (rule!8644 token!511)))) t!299754) tb!212665))

(declare-fun result!258804 () Bool)

(assert (= result!258804 result!258800))

(assert (=> b!3671554 t!299754))

(declare-fun b_and!273531 () Bool)

(assert (= b_and!273515 (and (=> t!299754 result!258804) b_and!273531)))

(declare-fun t!299756 () Bool)

(declare-fun tb!212667 () Bool)

(assert (=> (and b!3670840 (= (toChars!7975 (transformation!5820 (h!44137 rules!3307))) (toChars!7975 (transformation!5820 (rule!8644 token!511)))) t!299756) tb!212667))

(declare-fun result!258806 () Bool)

(assert (= result!258806 result!258800))

(assert (=> b!3671554 t!299756))

(declare-fun b_and!273533 () Bool)

(assert (= b_and!273517 (and (=> t!299756 result!258806) b_and!273533)))

(declare-fun m!4180403 () Bool)

(assert (=> d!1078261 m!4180403))

(declare-fun m!4180405 () Bool)

(assert (=> b!3671554 m!4180405))

(assert (=> b!3671554 m!4180405))

(declare-fun m!4180407 () Bool)

(assert (=> b!3671554 m!4180407))

(declare-fun m!4180409 () Bool)

(assert (=> b!3671555 m!4180409))

(assert (=> start!344014 d!1078261))

(declare-fun d!1078263 () Bool)

(declare-fun lt!1280027 () Bool)

(assert (=> d!1078263 (= lt!1280027 (select (content!5605 (usedCharacters!1032 (regex!5820 anOtherTypeRule!33))) lt!1279641))))

(declare-fun e!2273374 () Bool)

(assert (=> d!1078263 (= lt!1280027 e!2273374)))

(declare-fun res!1491202 () Bool)

(assert (=> d!1078263 (=> (not res!1491202) (not e!2273374))))

(assert (=> d!1078263 (= res!1491202 ((_ is Cons!38716) (usedCharacters!1032 (regex!5820 anOtherTypeRule!33))))))

(assert (=> d!1078263 (= (contains!7707 (usedCharacters!1032 (regex!5820 anOtherTypeRule!33)) lt!1279641) lt!1280027)))

(declare-fun b!3671557 () Bool)

(declare-fun e!2273373 () Bool)

(assert (=> b!3671557 (= e!2273374 e!2273373)))

(declare-fun res!1491203 () Bool)

(assert (=> b!3671557 (=> res!1491203 e!2273373)))

(assert (=> b!3671557 (= res!1491203 (= (h!44136 (usedCharacters!1032 (regex!5820 anOtherTypeRule!33))) lt!1279641))))

(declare-fun b!3671558 () Bool)

(assert (=> b!3671558 (= e!2273373 (contains!7707 (t!299635 (usedCharacters!1032 (regex!5820 anOtherTypeRule!33))) lt!1279641))))

(assert (= (and d!1078263 res!1491202) b!3671557))

(assert (= (and b!3671557 (not res!1491203)) b!3671558))

(assert (=> d!1078263 m!4179507))

(declare-fun m!4180411 () Bool)

(assert (=> d!1078263 m!4180411))

(declare-fun m!4180413 () Bool)

(assert (=> d!1078263 m!4180413))

(declare-fun m!4180415 () Bool)

(assert (=> b!3671558 m!4180415))

(assert (=> b!3670791 d!1078263))

(declare-fun b!3671559 () Bool)

(declare-fun e!2273378 () List!38840)

(assert (=> b!3671559 (= e!2273378 (Cons!38716 (c!634686 (regex!5820 anOtherTypeRule!33)) Nil!38716))))

(declare-fun b!3671560 () Bool)

(declare-fun e!2273377 () List!38840)

(declare-fun call!265798 () List!38840)

(assert (=> b!3671560 (= e!2273377 call!265798)))

(declare-fun b!3671561 () Bool)

(declare-fun c!634836 () Bool)

(assert (=> b!3671561 (= c!634836 ((_ is Star!10579) (regex!5820 anOtherTypeRule!33)))))

(declare-fun e!2273376 () List!38840)

(assert (=> b!3671561 (= e!2273378 e!2273376)))

(declare-fun b!3671562 () Bool)

(assert (=> b!3671562 (= e!2273377 call!265798)))

(declare-fun bm!265793 () Bool)

(declare-fun call!265799 () List!38840)

(declare-fun call!265800 () List!38840)

(declare-fun c!634837 () Bool)

(assert (=> bm!265793 (= call!265798 (++!9636 (ite c!634837 call!265800 call!265799) (ite c!634837 call!265799 call!265800)))))

(declare-fun d!1078265 () Bool)

(declare-fun c!634839 () Bool)

(assert (=> d!1078265 (= c!634839 (or ((_ is EmptyExpr!10579) (regex!5820 anOtherTypeRule!33)) ((_ is EmptyLang!10579) (regex!5820 anOtherTypeRule!33))))))

(declare-fun e!2273375 () List!38840)

(assert (=> d!1078265 (= (usedCharacters!1032 (regex!5820 anOtherTypeRule!33)) e!2273375)))

(declare-fun bm!265794 () Bool)

(assert (=> bm!265794 (= call!265799 (usedCharacters!1032 (ite c!634837 (regTwo!21671 (regex!5820 anOtherTypeRule!33)) (regOne!21670 (regex!5820 anOtherTypeRule!33)))))))

(declare-fun bm!265795 () Bool)

(declare-fun call!265801 () List!38840)

(assert (=> bm!265795 (= call!265801 (usedCharacters!1032 (ite c!634836 (reg!10908 (regex!5820 anOtherTypeRule!33)) (ite c!634837 (regOne!21671 (regex!5820 anOtherTypeRule!33)) (regTwo!21670 (regex!5820 anOtherTypeRule!33))))))))

(declare-fun b!3671563 () Bool)

(assert (=> b!3671563 (= e!2273376 call!265801)))

(declare-fun b!3671564 () Bool)

(assert (=> b!3671564 (= e!2273375 e!2273378)))

(declare-fun c!634838 () Bool)

(assert (=> b!3671564 (= c!634838 ((_ is ElementMatch!10579) (regex!5820 anOtherTypeRule!33)))))

(declare-fun b!3671565 () Bool)

(assert (=> b!3671565 (= e!2273376 e!2273377)))

(assert (=> b!3671565 (= c!634837 ((_ is Union!10579) (regex!5820 anOtherTypeRule!33)))))

(declare-fun b!3671566 () Bool)

(assert (=> b!3671566 (= e!2273375 Nil!38716)))

(declare-fun bm!265796 () Bool)

(assert (=> bm!265796 (= call!265800 call!265801)))

(assert (= (and d!1078265 c!634839) b!3671566))

(assert (= (and d!1078265 (not c!634839)) b!3671564))

(assert (= (and b!3671564 c!634838) b!3671559))

(assert (= (and b!3671564 (not c!634838)) b!3671561))

(assert (= (and b!3671561 c!634836) b!3671563))

(assert (= (and b!3671561 (not c!634836)) b!3671565))

(assert (= (and b!3671565 c!634837) b!3671562))

(assert (= (and b!3671565 (not c!634837)) b!3671560))

(assert (= (or b!3671562 b!3671560) bm!265796))

(assert (= (or b!3671562 b!3671560) bm!265794))

(assert (= (or b!3671562 b!3671560) bm!265793))

(assert (= (or b!3671563 bm!265796) bm!265795))

(declare-fun m!4180417 () Bool)

(assert (=> bm!265793 m!4180417))

(declare-fun m!4180419 () Bool)

(assert (=> bm!265794 m!4180419))

(declare-fun m!4180421 () Bool)

(assert (=> bm!265795 m!4180421))

(assert (=> b!3670791 d!1078265))

(declare-fun d!1078267 () Bool)

(assert (=> d!1078267 (not (contains!7707 (usedCharacters!1032 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))) lt!1279641))))

(declare-fun lt!1280028 () Unit!56308)

(assert (=> d!1078267 (= lt!1280028 (choose!21832 thiss!23823 rules!3307 rules!3307 (rule!8644 (_1!22426 lt!1279624)) anOtherTypeRule!33 lt!1279641))))

(assert (=> d!1078267 (rulesInvariant!4806 thiss!23823 rules!3307)))

(assert (=> d!1078267 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!466 thiss!23823 rules!3307 rules!3307 (rule!8644 (_1!22426 lt!1279624)) anOtherTypeRule!33 lt!1279641) lt!1280028)))

(declare-fun bs!573196 () Bool)

(assert (= bs!573196 d!1078267))

(assert (=> bs!573196 m!4179399))

(assert (=> bs!573196 m!4179399))

(declare-fun m!4180423 () Bool)

(assert (=> bs!573196 m!4180423))

(declare-fun m!4180425 () Bool)

(assert (=> bs!573196 m!4180425))

(assert (=> bs!573196 m!4179453))

(assert (=> b!3670832 d!1078267))

(declare-fun d!1078269 () Bool)

(assert (=> d!1078269 (not (matchR!5148 (regex!5820 rule!403) lt!1279660))))

(declare-fun lt!1280029 () Unit!56308)

(assert (=> d!1078269 (= lt!1280029 (choose!21830 (regex!5820 rule!403) lt!1279660 lt!1279664))))

(assert (=> d!1078269 (validRegex!4844 (regex!5820 rule!403))))

(assert (=> d!1078269 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!768 (regex!5820 rule!403) lt!1279660 lt!1279664) lt!1280029)))

(declare-fun bs!573197 () Bool)

(assert (= bs!573197 d!1078269))

(assert (=> bs!573197 m!4179521))

(declare-fun m!4180427 () Bool)

(assert (=> bs!573197 m!4180427))

(assert (=> bs!573197 m!4179837))

(assert (=> b!3670815 d!1078269))

(declare-fun d!1078271 () Bool)

(assert (=> d!1078271 (= (isDefined!6501 lt!1279666) (not (isEmpty!22982 lt!1279666)))))

(declare-fun bs!573198 () Bool)

(assert (= bs!573198 d!1078271))

(declare-fun m!4180429 () Bool)

(assert (=> bs!573198 m!4180429))

(assert (=> b!3670833 d!1078271))

(declare-fun bm!265797 () Bool)

(declare-fun call!265802 () Option!8268)

(assert (=> bm!265797 (= call!265802 (maxPrefixOneRule!2081 thiss!23823 (h!44137 rules!3307) lt!1279660))))

(declare-fun b!3671567 () Bool)

(declare-fun res!1491204 () Bool)

(declare-fun e!2273379 () Bool)

(assert (=> b!3671567 (=> (not res!1491204) (not e!2273379))))

(declare-fun lt!1280031 () Option!8268)

(assert (=> b!3671567 (= res!1491204 (matchR!5148 (regex!5820 (rule!8644 (_1!22426 (get!12788 lt!1280031)))) (list!14378 (charsOf!3834 (_1!22426 (get!12788 lt!1280031))))))))

(declare-fun b!3671568 () Bool)

(declare-fun e!2273381 () Option!8268)

(assert (=> b!3671568 (= e!2273381 call!265802)))

(declare-fun b!3671569 () Bool)

(declare-fun res!1491209 () Bool)

(assert (=> b!3671569 (=> (not res!1491209) (not e!2273379))))

(assert (=> b!3671569 (= res!1491209 (= (++!9636 (list!14378 (charsOf!3834 (_1!22426 (get!12788 lt!1280031)))) (_2!22426 (get!12788 lt!1280031))) lt!1279660))))

(declare-fun d!1078273 () Bool)

(declare-fun e!2273380 () Bool)

(assert (=> d!1078273 e!2273380))

(declare-fun res!1491208 () Bool)

(assert (=> d!1078273 (=> res!1491208 e!2273380)))

(assert (=> d!1078273 (= res!1491208 (isEmpty!22982 lt!1280031))))

(assert (=> d!1078273 (= lt!1280031 e!2273381)))

(declare-fun c!634840 () Bool)

(assert (=> d!1078273 (= c!634840 (and ((_ is Cons!38717) rules!3307) ((_ is Nil!38717) (t!299636 rules!3307))))))

(declare-fun lt!1280030 () Unit!56308)

(declare-fun lt!1280033 () Unit!56308)

(assert (=> d!1078273 (= lt!1280030 lt!1280033)))

(assert (=> d!1078273 (isPrefix!3183 lt!1279660 lt!1279660)))

(assert (=> d!1078273 (= lt!1280033 (lemmaIsPrefixRefl!2006 lt!1279660 lt!1279660))))

(assert (=> d!1078273 (rulesValidInductive!2069 thiss!23823 rules!3307)))

(assert (=> d!1078273 (= (maxPrefix!2943 thiss!23823 rules!3307 lt!1279660) lt!1280031)))

(declare-fun b!3671570 () Bool)

(declare-fun res!1491205 () Bool)

(assert (=> b!3671570 (=> (not res!1491205) (not e!2273379))))

(assert (=> b!3671570 (= res!1491205 (= (value!186330 (_1!22426 (get!12788 lt!1280031))) (apply!9322 (transformation!5820 (rule!8644 (_1!22426 (get!12788 lt!1280031)))) (seqFromList!4369 (originalCharacters!6534 (_1!22426 (get!12788 lt!1280031)))))))))

(declare-fun b!3671571 () Bool)

(assert (=> b!3671571 (= e!2273379 (contains!7708 rules!3307 (rule!8644 (_1!22426 (get!12788 lt!1280031)))))))

(declare-fun b!3671572 () Bool)

(assert (=> b!3671572 (= e!2273380 e!2273379)))

(declare-fun res!1491210 () Bool)

(assert (=> b!3671572 (=> (not res!1491210) (not e!2273379))))

(assert (=> b!3671572 (= res!1491210 (isDefined!6501 lt!1280031))))

(declare-fun b!3671573 () Bool)

(declare-fun res!1491207 () Bool)

(assert (=> b!3671573 (=> (not res!1491207) (not e!2273379))))

(assert (=> b!3671573 (= res!1491207 (= (list!14378 (charsOf!3834 (_1!22426 (get!12788 lt!1280031)))) (originalCharacters!6534 (_1!22426 (get!12788 lt!1280031)))))))

(declare-fun b!3671574 () Bool)

(declare-fun lt!1280034 () Option!8268)

(declare-fun lt!1280032 () Option!8268)

(assert (=> b!3671574 (= e!2273381 (ite (and ((_ is None!8267) lt!1280034) ((_ is None!8267) lt!1280032)) None!8267 (ite ((_ is None!8267) lt!1280032) lt!1280034 (ite ((_ is None!8267) lt!1280034) lt!1280032 (ite (>= (size!29591 (_1!22426 (v!38179 lt!1280034))) (size!29591 (_1!22426 (v!38179 lt!1280032)))) lt!1280034 lt!1280032)))))))

(assert (=> b!3671574 (= lt!1280034 call!265802)))

(assert (=> b!3671574 (= lt!1280032 (maxPrefix!2943 thiss!23823 (t!299636 rules!3307) lt!1279660))))

(declare-fun b!3671575 () Bool)

(declare-fun res!1491206 () Bool)

(assert (=> b!3671575 (=> (not res!1491206) (not e!2273379))))

(assert (=> b!3671575 (= res!1491206 (< (size!29593 (_2!22426 (get!12788 lt!1280031))) (size!29593 lt!1279660)))))

(assert (= (and d!1078273 c!634840) b!3671568))

(assert (= (and d!1078273 (not c!634840)) b!3671574))

(assert (= (or b!3671568 b!3671574) bm!265797))

(assert (= (and d!1078273 (not res!1491208)) b!3671572))

(assert (= (and b!3671572 res!1491210) b!3671573))

(assert (= (and b!3671573 res!1491207) b!3671575))

(assert (= (and b!3671575 res!1491206) b!3671569))

(assert (= (and b!3671569 res!1491209) b!3671570))

(assert (= (and b!3671570 res!1491205) b!3671567))

(assert (= (and b!3671567 res!1491204) b!3671571))

(declare-fun m!4180431 () Bool)

(assert (=> b!3671573 m!4180431))

(declare-fun m!4180433 () Bool)

(assert (=> b!3671573 m!4180433))

(assert (=> b!3671573 m!4180433))

(declare-fun m!4180435 () Bool)

(assert (=> b!3671573 m!4180435))

(declare-fun m!4180437 () Bool)

(assert (=> bm!265797 m!4180437))

(assert (=> b!3671569 m!4180431))

(assert (=> b!3671569 m!4180433))

(assert (=> b!3671569 m!4180433))

(assert (=> b!3671569 m!4180435))

(assert (=> b!3671569 m!4180435))

(declare-fun m!4180439 () Bool)

(assert (=> b!3671569 m!4180439))

(declare-fun m!4180441 () Bool)

(assert (=> b!3671574 m!4180441))

(assert (=> b!3671567 m!4180431))

(assert (=> b!3671567 m!4180433))

(assert (=> b!3671567 m!4180433))

(assert (=> b!3671567 m!4180435))

(assert (=> b!3671567 m!4180435))

(declare-fun m!4180443 () Bool)

(assert (=> b!3671567 m!4180443))

(assert (=> b!3671571 m!4180431))

(declare-fun m!4180445 () Bool)

(assert (=> b!3671571 m!4180445))

(declare-fun m!4180447 () Bool)

(assert (=> b!3671572 m!4180447))

(assert (=> b!3671575 m!4180431))

(declare-fun m!4180449 () Bool)

(assert (=> b!3671575 m!4180449))

(assert (=> b!3671575 m!4179477))

(declare-fun m!4180451 () Bool)

(assert (=> d!1078273 m!4180451))

(declare-fun m!4180453 () Bool)

(assert (=> d!1078273 m!4180453))

(declare-fun m!4180455 () Bool)

(assert (=> d!1078273 m!4180455))

(assert (=> d!1078273 m!4179995))

(assert (=> b!3671570 m!4180431))

(declare-fun m!4180457 () Bool)

(assert (=> b!3671570 m!4180457))

(assert (=> b!3671570 m!4180457))

(declare-fun m!4180459 () Bool)

(assert (=> b!3671570 m!4180459))

(assert (=> b!3670833 d!1078273))

(declare-fun d!1078275 () Bool)

(assert (=> d!1078275 (= (list!14378 lt!1279645) (list!14382 (c!634687 lt!1279645)))))

(declare-fun bs!573199 () Bool)

(assert (= bs!573199 d!1078275))

(declare-fun m!4180461 () Bool)

(assert (=> bs!573199 m!4180461))

(assert (=> b!3670833 d!1078275))

(declare-fun d!1078277 () Bool)

(declare-fun lt!1280035 () BalanceConc!23304)

(assert (=> d!1078277 (= (list!14378 lt!1280035) (originalCharacters!6534 token!511))))

(assert (=> d!1078277 (= lt!1280035 (dynLambda!16949 (toChars!7975 (transformation!5820 (rule!8644 token!511))) (value!186330 token!511)))))

(assert (=> d!1078277 (= (charsOf!3834 token!511) lt!1280035)))

(declare-fun b_lambda!109031 () Bool)

(assert (=> (not b_lambda!109031) (not d!1078277)))

(assert (=> d!1078277 t!299750))

(declare-fun b_and!273535 () Bool)

(assert (= b_and!273527 (and (=> t!299750 result!258800) b_and!273535)))

(assert (=> d!1078277 t!299752))

(declare-fun b_and!273537 () Bool)

(assert (= b_and!273529 (and (=> t!299752 result!258802) b_and!273537)))

(assert (=> d!1078277 t!299754))

(declare-fun b_and!273539 () Bool)

(assert (= b_and!273531 (and (=> t!299754 result!258804) b_and!273539)))

(assert (=> d!1078277 t!299756))

(declare-fun b_and!273541 () Bool)

(assert (= b_and!273533 (and (=> t!299756 result!258806) b_and!273541)))

(declare-fun m!4180463 () Bool)

(assert (=> d!1078277 m!4180463))

(assert (=> d!1078277 m!4180405))

(assert (=> b!3670833 d!1078277))

(declare-fun d!1078279 () Bool)

(assert (=> d!1078279 (contains!7707 lt!1279618 (head!7860 suffix!1395))))

(declare-fun lt!1280038 () Unit!56308)

(declare-fun choose!21840 (List!38840 List!38840 List!38840 List!38840) Unit!56308)

(assert (=> d!1078279 (= lt!1280038 (choose!21840 lt!1279660 suffix!1395 lt!1279618 lt!1279637))))

(assert (=> d!1078279 (isPrefix!3183 lt!1279618 lt!1279637)))

(assert (=> d!1078279 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!128 lt!1279660 suffix!1395 lt!1279618 lt!1279637) lt!1280038)))

(declare-fun bs!573200 () Bool)

(assert (= bs!573200 d!1078279))

(assert (=> bs!573200 m!4179517))

(assert (=> bs!573200 m!4179517))

(declare-fun m!4180465 () Bool)

(assert (=> bs!573200 m!4180465))

(declare-fun m!4180467 () Bool)

(assert (=> bs!573200 m!4180467))

(assert (=> bs!573200 m!4179533))

(assert (=> b!3670793 d!1078279))

(declare-fun d!1078281 () Bool)

(declare-fun lt!1280039 () Bool)

(assert (=> d!1078281 (= lt!1280039 (select (content!5605 lt!1279618) lt!1279641))))

(declare-fun e!2273383 () Bool)

(assert (=> d!1078281 (= lt!1280039 e!2273383)))

(declare-fun res!1491211 () Bool)

(assert (=> d!1078281 (=> (not res!1491211) (not e!2273383))))

(assert (=> d!1078281 (= res!1491211 ((_ is Cons!38716) lt!1279618))))

(assert (=> d!1078281 (= (contains!7707 lt!1279618 lt!1279641) lt!1280039)))

(declare-fun b!3671576 () Bool)

(declare-fun e!2273382 () Bool)

(assert (=> b!3671576 (= e!2273383 e!2273382)))

(declare-fun res!1491212 () Bool)

(assert (=> b!3671576 (=> res!1491212 e!2273382)))

(assert (=> b!3671576 (= res!1491212 (= (h!44136 lt!1279618) lt!1279641))))

(declare-fun b!3671577 () Bool)

(assert (=> b!3671577 (= e!2273382 (contains!7707 (t!299635 lt!1279618) lt!1279641))))

(assert (= (and d!1078281 res!1491211) b!3671576))

(assert (= (and b!3671576 (not res!1491212)) b!3671577))

(assert (=> d!1078281 m!4180031))

(declare-fun m!4180469 () Bool)

(assert (=> d!1078281 m!4180469))

(declare-fun m!4180471 () Bool)

(assert (=> b!3671577 m!4180471))

(assert (=> b!3670793 d!1078281))

(declare-fun d!1078283 () Bool)

(assert (=> d!1078283 (= (inv!52197 (tag!6610 anOtherTypeRule!33)) (= (mod (str.len (value!186329 (tag!6610 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3670831 d!1078283))

(declare-fun d!1078285 () Bool)

(declare-fun res!1491213 () Bool)

(declare-fun e!2273384 () Bool)

(assert (=> d!1078285 (=> (not res!1491213) (not e!2273384))))

(assert (=> d!1078285 (= res!1491213 (semiInverseModEq!2483 (toChars!7975 (transformation!5820 anOtherTypeRule!33)) (toValue!8116 (transformation!5820 anOtherTypeRule!33))))))

(assert (=> d!1078285 (= (inv!52200 (transformation!5820 anOtherTypeRule!33)) e!2273384)))

(declare-fun b!3671578 () Bool)

(assert (=> b!3671578 (= e!2273384 (equivClasses!2382 (toChars!7975 (transformation!5820 anOtherTypeRule!33)) (toValue!8116 (transformation!5820 anOtherTypeRule!33))))))

(assert (= (and d!1078285 res!1491213) b!3671578))

(declare-fun m!4180473 () Bool)

(assert (=> d!1078285 m!4180473))

(declare-fun m!4180475 () Bool)

(assert (=> b!3671578 m!4180475))

(assert (=> b!3670831 d!1078285))

(declare-fun d!1078287 () Bool)

(assert (=> d!1078287 (not (matchR!5148 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279618))))

(declare-fun lt!1280040 () Unit!56308)

(assert (=> d!1078287 (= lt!1280040 (choose!21830 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279618 lt!1279641))))

(assert (=> d!1078287 (validRegex!4844 (regex!5820 (rule!8644 (_1!22426 lt!1279624))))))

(assert (=> d!1078287 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!768 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279618 lt!1279641) lt!1280040)))

(declare-fun bs!573201 () Bool)

(assert (= bs!573201 d!1078287))

(assert (=> bs!573201 m!4179431))

(declare-fun m!4180477 () Bool)

(assert (=> bs!573201 m!4180477))

(assert (=> bs!573201 m!4179749))

(assert (=> bm!265738 d!1078287))

(declare-fun d!1078289 () Bool)

(assert (=> d!1078289 (= (inv!52197 (tag!6610 (h!44137 rules!3307))) (= (mod (str.len (value!186329 (tag!6610 (h!44137 rules!3307)))) 2) 0))))

(assert (=> b!3670835 d!1078289))

(declare-fun d!1078291 () Bool)

(declare-fun res!1491214 () Bool)

(declare-fun e!2273385 () Bool)

(assert (=> d!1078291 (=> (not res!1491214) (not e!2273385))))

(assert (=> d!1078291 (= res!1491214 (semiInverseModEq!2483 (toChars!7975 (transformation!5820 (h!44137 rules!3307))) (toValue!8116 (transformation!5820 (h!44137 rules!3307)))))))

(assert (=> d!1078291 (= (inv!52200 (transformation!5820 (h!44137 rules!3307))) e!2273385)))

(declare-fun b!3671579 () Bool)

(assert (=> b!3671579 (= e!2273385 (equivClasses!2382 (toChars!7975 (transformation!5820 (h!44137 rules!3307))) (toValue!8116 (transformation!5820 (h!44137 rules!3307)))))))

(assert (= (and d!1078291 res!1491214) b!3671579))

(declare-fun m!4180479 () Bool)

(assert (=> d!1078291 m!4180479))

(declare-fun m!4180481 () Bool)

(assert (=> b!3671579 m!4180481))

(assert (=> b!3670835 d!1078291))

(declare-fun d!1078293 () Bool)

(assert (=> d!1078293 (= (seqFromList!4369 (originalCharacters!6534 (_1!22426 lt!1279624))) (fromListB!2018 (originalCharacters!6534 (_1!22426 lt!1279624))))))

(declare-fun bs!573202 () Bool)

(assert (= bs!573202 d!1078293))

(declare-fun m!4180483 () Bool)

(assert (=> bs!573202 m!4180483))

(assert (=> b!3670817 d!1078293))

(declare-fun d!1078295 () Bool)

(assert (=> d!1078295 (= (apply!9322 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279628) (dynLambda!16942 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) lt!1279628))))

(declare-fun b_lambda!109033 () Bool)

(assert (=> (not b_lambda!109033) (not d!1078295)))

(declare-fun tb!212669 () Bool)

(declare-fun t!299758 () Bool)

(assert (=> (and b!3670820 (= (toValue!8116 (transformation!5820 rule!403)) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299758) tb!212669))

(declare-fun result!258808 () Bool)

(assert (=> tb!212669 (= result!258808 (inv!21 (dynLambda!16942 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) lt!1279628)))))

(declare-fun m!4180485 () Bool)

(assert (=> tb!212669 m!4180485))

(assert (=> d!1078295 t!299758))

(declare-fun b_and!273543 () Bool)

(assert (= b_and!273519 (and (=> t!299758 result!258808) b_and!273543)))

(declare-fun tb!212671 () Bool)

(declare-fun t!299760 () Bool)

(assert (=> (and b!3670836 (= (toValue!8116 (transformation!5820 anOtherTypeRule!33)) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299760) tb!212671))

(declare-fun result!258810 () Bool)

(assert (= result!258810 result!258808))

(assert (=> d!1078295 t!299760))

(declare-fun b_and!273545 () Bool)

(assert (= b_and!273521 (and (=> t!299760 result!258810) b_and!273545)))

(declare-fun tb!212673 () Bool)

(declare-fun t!299762 () Bool)

(assert (=> (and b!3670810 (= (toValue!8116 (transformation!5820 (rule!8644 token!511))) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299762) tb!212673))

(declare-fun result!258812 () Bool)

(assert (= result!258812 result!258808))

(assert (=> d!1078295 t!299762))

(declare-fun b_and!273547 () Bool)

(assert (= b_and!273523 (and (=> t!299762 result!258812) b_and!273547)))

(declare-fun tb!212675 () Bool)

(declare-fun t!299764 () Bool)

(assert (=> (and b!3670840 (= (toValue!8116 (transformation!5820 (h!44137 rules!3307))) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299764) tb!212675))

(declare-fun result!258814 () Bool)

(assert (= result!258814 result!258808))

(assert (=> d!1078295 t!299764))

(declare-fun b_and!273549 () Bool)

(assert (= b_and!273525 (and (=> t!299764 result!258814) b_and!273549)))

(declare-fun m!4180487 () Bool)

(assert (=> d!1078295 m!4180487))

(assert (=> b!3670817 d!1078295))

(declare-fun d!1078297 () Bool)

(declare-fun lt!1280041 () Int)

(assert (=> d!1078297 (= lt!1280041 (size!29593 (list!14378 lt!1279628)))))

(assert (=> d!1078297 (= lt!1280041 (size!29594 (c!634687 lt!1279628)))))

(assert (=> d!1078297 (= (size!29592 lt!1279628) lt!1280041)))

(declare-fun bs!573203 () Bool)

(assert (= bs!573203 d!1078297))

(assert (=> bs!573203 m!4179557))

(assert (=> bs!573203 m!4179557))

(declare-fun m!4180489 () Bool)

(assert (=> bs!573203 m!4180489))

(declare-fun m!4180491 () Bool)

(assert (=> bs!573203 m!4180491))

(assert (=> b!3670817 d!1078297))

(declare-fun d!1078299 () Bool)

(assert (=> d!1078299 (= (size!29591 (_1!22426 lt!1279624)) (size!29593 (originalCharacters!6534 (_1!22426 lt!1279624))))))

(declare-fun Unit!56329 () Unit!56308)

(assert (=> d!1078299 (= (lemmaCharactersSize!865 (_1!22426 lt!1279624)) Unit!56329)))

(declare-fun bs!573204 () Bool)

(assert (= bs!573204 d!1078299))

(declare-fun m!4180493 () Bool)

(assert (=> bs!573204 m!4180493))

(assert (=> b!3670817 d!1078299))

(declare-fun b!3671586 () Bool)

(declare-fun e!2273391 () Bool)

(assert (=> b!3671586 (= e!2273391 true)))

(declare-fun d!1078301 () Bool)

(assert (=> d!1078301 e!2273391))

(assert (= d!1078301 b!3671586))

(declare-fun order!21425 () Int)

(declare-fun lambda!124690 () Int)

(declare-fun dynLambda!16953 (Int Int) Int)

(assert (=> b!3671586 (< (dynLambda!16950 order!21419 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) (dynLambda!16953 order!21425 lambda!124690))))

(assert (=> b!3671586 (< (dynLambda!16952 order!21423 (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) (dynLambda!16953 order!21425 lambda!124690))))

(assert (=> d!1078301 (= (dynLambda!16942 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) lt!1279628) (dynLambda!16942 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) (seqFromList!4369 (originalCharacters!6534 (_1!22426 lt!1279624)))))))

(declare-fun lt!1280044 () Unit!56308)

(declare-fun Forall2of!398 (Int BalanceConc!23304 BalanceConc!23304) Unit!56308)

(assert (=> d!1078301 (= lt!1280044 (Forall2of!398 lambda!124690 lt!1279628 (seqFromList!4369 (originalCharacters!6534 (_1!22426 lt!1279624)))))))

(assert (=> d!1078301 (= (list!14378 lt!1279628) (list!14378 (seqFromList!4369 (originalCharacters!6534 (_1!22426 lt!1279624)))))))

(assert (=> d!1078301 (= (lemmaEqSameImage!1003 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279628 (seqFromList!4369 (originalCharacters!6534 (_1!22426 lt!1279624)))) lt!1280044)))

(declare-fun b_lambda!109035 () Bool)

(assert (=> (not b_lambda!109035) (not d!1078301)))

(assert (=> d!1078301 t!299758))

(declare-fun b_and!273551 () Bool)

(assert (= b_and!273543 (and (=> t!299758 result!258808) b_and!273551)))

(assert (=> d!1078301 t!299760))

(declare-fun b_and!273553 () Bool)

(assert (= b_and!273545 (and (=> t!299760 result!258810) b_and!273553)))

(assert (=> d!1078301 t!299762))

(declare-fun b_and!273555 () Bool)

(assert (= b_and!273547 (and (=> t!299762 result!258812) b_and!273555)))

(assert (=> d!1078301 t!299764))

(declare-fun b_and!273557 () Bool)

(assert (= b_and!273549 (and (=> t!299764 result!258814) b_and!273557)))

(declare-fun b_lambda!109037 () Bool)

(assert (=> (not b_lambda!109037) (not d!1078301)))

(declare-fun t!299766 () Bool)

(declare-fun tb!212677 () Bool)

(assert (=> (and b!3670820 (= (toValue!8116 (transformation!5820 rule!403)) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299766) tb!212677))

(declare-fun result!258816 () Bool)

(assert (=> tb!212677 (= result!258816 (inv!21 (dynLambda!16942 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) (seqFromList!4369 (originalCharacters!6534 (_1!22426 lt!1279624))))))))

(declare-fun m!4180495 () Bool)

(assert (=> tb!212677 m!4180495))

(assert (=> d!1078301 t!299766))

(declare-fun b_and!273559 () Bool)

(assert (= b_and!273551 (and (=> t!299766 result!258816) b_and!273559)))

(declare-fun tb!212679 () Bool)

(declare-fun t!299768 () Bool)

(assert (=> (and b!3670836 (= (toValue!8116 (transformation!5820 anOtherTypeRule!33)) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299768) tb!212679))

(declare-fun result!258818 () Bool)

(assert (= result!258818 result!258816))

(assert (=> d!1078301 t!299768))

(declare-fun b_and!273561 () Bool)

(assert (= b_and!273553 (and (=> t!299768 result!258818) b_and!273561)))

(declare-fun t!299770 () Bool)

(declare-fun tb!212681 () Bool)

(assert (=> (and b!3670810 (= (toValue!8116 (transformation!5820 (rule!8644 token!511))) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299770) tb!212681))

(declare-fun result!258820 () Bool)

(assert (= result!258820 result!258816))

(assert (=> d!1078301 t!299770))

(declare-fun b_and!273563 () Bool)

(assert (= b_and!273555 (and (=> t!299770 result!258820) b_and!273563)))

(declare-fun t!299772 () Bool)

(declare-fun tb!212683 () Bool)

(assert (=> (and b!3670840 (= (toValue!8116 (transformation!5820 (h!44137 rules!3307))) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299772) tb!212683))

(declare-fun result!258822 () Bool)

(assert (= result!258822 result!258816))

(assert (=> d!1078301 t!299772))

(declare-fun b_and!273565 () Bool)

(assert (= b_and!273557 (and (=> t!299772 result!258822) b_and!273565)))

(assert (=> d!1078301 m!4179485))

(declare-fun m!4180497 () Bool)

(assert (=> d!1078301 m!4180497))

(assert (=> d!1078301 m!4180487))

(assert (=> d!1078301 m!4179485))

(declare-fun m!4180499 () Bool)

(assert (=> d!1078301 m!4180499))

(assert (=> d!1078301 m!4179485))

(declare-fun m!4180501 () Bool)

(assert (=> d!1078301 m!4180501))

(assert (=> d!1078301 m!4179557))

(assert (=> b!3670817 d!1078301))

(declare-fun bs!573205 () Bool)

(declare-fun d!1078303 () Bool)

(assert (= bs!573205 (and d!1078303 d!1078113)))

(declare-fun lambda!124691 () Int)

(assert (=> bs!573205 (= lambda!124691 lambda!124687)))

(declare-fun b!3671587 () Bool)

(declare-fun e!2273393 () Bool)

(assert (=> b!3671587 (= e!2273393 true)))

(assert (=> d!1078303 e!2273393))

(assert (= d!1078303 b!3671587))

(assert (=> b!3671587 (< (dynLambda!16950 order!21419 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) (dynLambda!16951 order!21421 lambda!124691))))

(assert (=> b!3671587 (< (dynLambda!16952 order!21423 (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) (dynLambda!16951 order!21421 lambda!124691))))

(assert (=> d!1078303 (= (list!14378 (dynLambda!16949 (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) (dynLambda!16942 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) lt!1279628))) (list!14378 lt!1279628))))

(declare-fun lt!1280045 () Unit!56308)

(assert (=> d!1078303 (= lt!1280045 (ForallOf!740 lambda!124691 lt!1279628))))

(assert (=> d!1078303 (= (lemmaSemiInverse!1569 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279628) lt!1280045)))

(declare-fun b_lambda!109039 () Bool)

(assert (=> (not b_lambda!109039) (not d!1078303)))

(declare-fun t!299774 () Bool)

(declare-fun tb!212685 () Bool)

(assert (=> (and b!3670820 (= (toChars!7975 (transformation!5820 rule!403)) (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299774) tb!212685))

(declare-fun b!3671588 () Bool)

(declare-fun tp!1117090 () Bool)

(declare-fun e!2273394 () Bool)

(assert (=> b!3671588 (= e!2273394 (and (inv!52204 (c!634687 (dynLambda!16949 (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) (dynLambda!16942 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) lt!1279628)))) tp!1117090))))

(declare-fun result!258824 () Bool)

(assert (=> tb!212685 (= result!258824 (and (inv!52205 (dynLambda!16949 (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) (dynLambda!16942 (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624)))) lt!1279628))) e!2273394))))

(assert (= tb!212685 b!3671588))

(declare-fun m!4180503 () Bool)

(assert (=> b!3671588 m!4180503))

(declare-fun m!4180505 () Bool)

(assert (=> tb!212685 m!4180505))

(assert (=> d!1078303 t!299774))

(declare-fun b_and!273567 () Bool)

(assert (= b_and!273535 (and (=> t!299774 result!258824) b_and!273567)))

(declare-fun t!299776 () Bool)

(declare-fun tb!212687 () Bool)

(assert (=> (and b!3670836 (= (toChars!7975 (transformation!5820 anOtherTypeRule!33)) (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299776) tb!212687))

(declare-fun result!258826 () Bool)

(assert (= result!258826 result!258824))

(assert (=> d!1078303 t!299776))

(declare-fun b_and!273569 () Bool)

(assert (= b_and!273537 (and (=> t!299776 result!258826) b_and!273569)))

(declare-fun t!299778 () Bool)

(declare-fun tb!212689 () Bool)

(assert (=> (and b!3670810 (= (toChars!7975 (transformation!5820 (rule!8644 token!511))) (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299778) tb!212689))

(declare-fun result!258828 () Bool)

(assert (= result!258828 result!258824))

(assert (=> d!1078303 t!299778))

(declare-fun b_and!273571 () Bool)

(assert (= b_and!273539 (and (=> t!299778 result!258828) b_and!273571)))

(declare-fun tb!212691 () Bool)

(declare-fun t!299780 () Bool)

(assert (=> (and b!3670840 (= (toChars!7975 (transformation!5820 (h!44137 rules!3307))) (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299780) tb!212691))

(declare-fun result!258830 () Bool)

(assert (= result!258830 result!258824))

(assert (=> d!1078303 t!299780))

(declare-fun b_and!273573 () Bool)

(assert (= b_and!273541 (and (=> t!299780 result!258830) b_and!273573)))

(declare-fun b_lambda!109041 () Bool)

(assert (=> (not b_lambda!109041) (not d!1078303)))

(assert (=> d!1078303 t!299758))

(declare-fun b_and!273575 () Bool)

(assert (= b_and!273559 (and (=> t!299758 result!258808) b_and!273575)))

(assert (=> d!1078303 t!299760))

(declare-fun b_and!273577 () Bool)

(assert (= b_and!273561 (and (=> t!299760 result!258810) b_and!273577)))

(assert (=> d!1078303 t!299762))

(declare-fun b_and!273579 () Bool)

(assert (= b_and!273563 (and (=> t!299762 result!258812) b_and!273579)))

(assert (=> d!1078303 t!299764))

(declare-fun b_and!273581 () Bool)

(assert (= b_and!273565 (and (=> t!299764 result!258814) b_and!273581)))

(assert (=> d!1078303 m!4179557))

(declare-fun m!4180507 () Bool)

(assert (=> d!1078303 m!4180507))

(declare-fun m!4180509 () Bool)

(assert (=> d!1078303 m!4180509))

(declare-fun m!4180511 () Bool)

(assert (=> d!1078303 m!4180511))

(assert (=> d!1078303 m!4180487))

(assert (=> d!1078303 m!4180487))

(assert (=> d!1078303 m!4180507))

(assert (=> b!3670817 d!1078303))

(declare-fun d!1078305 () Bool)

(assert (=> d!1078305 (= (isEmpty!22978 suffix!1395) ((_ is Nil!38716) suffix!1395))))

(assert (=> b!3670798 d!1078305))

(declare-fun d!1078307 () Bool)

(declare-fun lt!1280046 () Bool)

(assert (=> d!1078307 (= lt!1280046 (select (content!5605 call!265747) lt!1279664))))

(declare-fun e!2273396 () Bool)

(assert (=> d!1078307 (= lt!1280046 e!2273396)))

(declare-fun res!1491217 () Bool)

(assert (=> d!1078307 (=> (not res!1491217) (not e!2273396))))

(assert (=> d!1078307 (= res!1491217 ((_ is Cons!38716) call!265747))))

(assert (=> d!1078307 (= (contains!7707 call!265747 lt!1279664) lt!1280046)))

(declare-fun b!3671589 () Bool)

(declare-fun e!2273395 () Bool)

(assert (=> b!3671589 (= e!2273396 e!2273395)))

(declare-fun res!1491218 () Bool)

(assert (=> b!3671589 (=> res!1491218 e!2273395)))

(assert (=> b!3671589 (= res!1491218 (= (h!44136 call!265747) lt!1279664))))

(declare-fun b!3671590 () Bool)

(assert (=> b!3671590 (= e!2273395 (contains!7707 (t!299635 call!265747) lt!1279664))))

(assert (= (and d!1078307 res!1491217) b!3671589))

(assert (= (and b!3671589 (not res!1491218)) b!3671590))

(declare-fun m!4180513 () Bool)

(assert (=> d!1078307 m!4180513))

(declare-fun m!4180515 () Bool)

(assert (=> d!1078307 m!4180515))

(declare-fun m!4180517 () Bool)

(assert (=> b!3671590 m!4180517))

(assert (=> bm!265739 d!1078307))

(declare-fun d!1078309 () Bool)

(declare-fun lt!1280047 () Bool)

(assert (=> d!1078309 (= lt!1280047 (select (content!5605 lt!1279633) lt!1279641))))

(declare-fun e!2273398 () Bool)

(assert (=> d!1078309 (= lt!1280047 e!2273398)))

(declare-fun res!1491219 () Bool)

(assert (=> d!1078309 (=> (not res!1491219) (not e!2273398))))

(assert (=> d!1078309 (= res!1491219 ((_ is Cons!38716) lt!1279633))))

(assert (=> d!1078309 (= (contains!7707 lt!1279633 lt!1279641) lt!1280047)))

(declare-fun b!3671591 () Bool)

(declare-fun e!2273397 () Bool)

(assert (=> b!3671591 (= e!2273398 e!2273397)))

(declare-fun res!1491220 () Bool)

(assert (=> b!3671591 (=> res!1491220 e!2273397)))

(assert (=> b!3671591 (= res!1491220 (= (h!44136 lt!1279633) lt!1279641))))

(declare-fun b!3671592 () Bool)

(assert (=> b!3671592 (= e!2273397 (contains!7707 (t!299635 lt!1279633) lt!1279641))))

(assert (= (and d!1078309 res!1491219) b!3671591))

(assert (= (and b!3671591 (not res!1491220)) b!3671592))

(assert (=> d!1078309 m!4179583))

(declare-fun m!4180519 () Bool)

(assert (=> d!1078309 m!4180519))

(declare-fun m!4180521 () Bool)

(assert (=> b!3671592 m!4180521))

(assert (=> b!3670796 d!1078309))

(declare-fun d!1078311 () Bool)

(assert (=> d!1078311 (= (head!7860 suffix!1395) (h!44136 suffix!1395))))

(assert (=> b!3670796 d!1078311))

(declare-fun b!3671593 () Bool)

(declare-fun e!2273402 () List!38840)

(assert (=> b!3671593 (= e!2273402 (Cons!38716 (c!634686 (regex!5820 rule!403)) Nil!38716))))

(declare-fun b!3671594 () Bool)

(declare-fun e!2273401 () List!38840)

(declare-fun call!265803 () List!38840)

(assert (=> b!3671594 (= e!2273401 call!265803)))

(declare-fun b!3671595 () Bool)

(declare-fun c!634841 () Bool)

(assert (=> b!3671595 (= c!634841 ((_ is Star!10579) (regex!5820 rule!403)))))

(declare-fun e!2273400 () List!38840)

(assert (=> b!3671595 (= e!2273402 e!2273400)))

(declare-fun b!3671596 () Bool)

(assert (=> b!3671596 (= e!2273401 call!265803)))

(declare-fun call!265804 () List!38840)

(declare-fun bm!265798 () Bool)

(declare-fun c!634842 () Bool)

(declare-fun call!265805 () List!38840)

(assert (=> bm!265798 (= call!265803 (++!9636 (ite c!634842 call!265805 call!265804) (ite c!634842 call!265804 call!265805)))))

(declare-fun d!1078313 () Bool)

(declare-fun c!634844 () Bool)

(assert (=> d!1078313 (= c!634844 (or ((_ is EmptyExpr!10579) (regex!5820 rule!403)) ((_ is EmptyLang!10579) (regex!5820 rule!403))))))

(declare-fun e!2273399 () List!38840)

(assert (=> d!1078313 (= (usedCharacters!1032 (regex!5820 rule!403)) e!2273399)))

(declare-fun bm!265799 () Bool)

(assert (=> bm!265799 (= call!265804 (usedCharacters!1032 (ite c!634842 (regTwo!21671 (regex!5820 rule!403)) (regOne!21670 (regex!5820 rule!403)))))))

(declare-fun call!265806 () List!38840)

(declare-fun bm!265800 () Bool)

(assert (=> bm!265800 (= call!265806 (usedCharacters!1032 (ite c!634841 (reg!10908 (regex!5820 rule!403)) (ite c!634842 (regOne!21671 (regex!5820 rule!403)) (regTwo!21670 (regex!5820 rule!403))))))))

(declare-fun b!3671597 () Bool)

(assert (=> b!3671597 (= e!2273400 call!265806)))

(declare-fun b!3671598 () Bool)

(assert (=> b!3671598 (= e!2273399 e!2273402)))

(declare-fun c!634843 () Bool)

(assert (=> b!3671598 (= c!634843 ((_ is ElementMatch!10579) (regex!5820 rule!403)))))

(declare-fun b!3671599 () Bool)

(assert (=> b!3671599 (= e!2273400 e!2273401)))

(assert (=> b!3671599 (= c!634842 ((_ is Union!10579) (regex!5820 rule!403)))))

(declare-fun b!3671600 () Bool)

(assert (=> b!3671600 (= e!2273399 Nil!38716)))

(declare-fun bm!265801 () Bool)

(assert (=> bm!265801 (= call!265805 call!265806)))

(assert (= (and d!1078313 c!634844) b!3671600))

(assert (= (and d!1078313 (not c!634844)) b!3671598))

(assert (= (and b!3671598 c!634843) b!3671593))

(assert (= (and b!3671598 (not c!634843)) b!3671595))

(assert (= (and b!3671595 c!634841) b!3671597))

(assert (= (and b!3671595 (not c!634841)) b!3671599))

(assert (= (and b!3671599 c!634842) b!3671596))

(assert (= (and b!3671599 (not c!634842)) b!3671594))

(assert (= (or b!3671596 b!3671594) bm!265801))

(assert (= (or b!3671596 b!3671594) bm!265799))

(assert (= (or b!3671596 b!3671594) bm!265798))

(assert (= (or b!3671597 bm!265801) bm!265800))

(declare-fun m!4180523 () Bool)

(assert (=> bm!265798 m!4180523))

(declare-fun m!4180525 () Bool)

(assert (=> bm!265799 m!4180525))

(declare-fun m!4180527 () Bool)

(assert (=> bm!265800 m!4180527))

(assert (=> b!3670796 d!1078313))

(declare-fun d!1078315 () Bool)

(assert (=> d!1078315 (= (isEmpty!22978 lt!1279660) ((_ is Nil!38716) lt!1279660))))

(assert (=> b!3670834 d!1078315))

(declare-fun b!3671601 () Bool)

(declare-fun e!2273409 () Bool)

(declare-fun e!2273407 () Bool)

(assert (=> b!3671601 (= e!2273409 e!2273407)))

(declare-fun c!634845 () Bool)

(assert (=> b!3671601 (= c!634845 ((_ is EmptyLang!10579) (regex!5820 lt!1279646)))))

(declare-fun b!3671602 () Bool)

(declare-fun res!1491224 () Bool)

(declare-fun e!2273404 () Bool)

(assert (=> b!3671602 (=> (not res!1491224) (not e!2273404))))

(assert (=> b!3671602 (= res!1491224 (isEmpty!22978 (tail!5681 (list!14378 (charsOf!3834 (_1!22426 lt!1279624))))))))

(declare-fun b!3671603 () Bool)

(declare-fun lt!1280048 () Bool)

(declare-fun call!265807 () Bool)

(assert (=> b!3671603 (= e!2273409 (= lt!1280048 call!265807))))

(declare-fun bm!265802 () Bool)

(assert (=> bm!265802 (= call!265807 (isEmpty!22978 (list!14378 (charsOf!3834 (_1!22426 lt!1279624)))))))

(declare-fun b!3671604 () Bool)

(declare-fun e!2273408 () Bool)

(assert (=> b!3671604 (= e!2273408 (matchR!5148 (derivativeStep!3232 (regex!5820 lt!1279646) (head!7860 (list!14378 (charsOf!3834 (_1!22426 lt!1279624))))) (tail!5681 (list!14378 (charsOf!3834 (_1!22426 lt!1279624))))))))

(declare-fun b!3671605 () Bool)

(declare-fun res!1491221 () Bool)

(declare-fun e!2273405 () Bool)

(assert (=> b!3671605 (=> res!1491221 e!2273405)))

(assert (=> b!3671605 (= res!1491221 (not (isEmpty!22978 (tail!5681 (list!14378 (charsOf!3834 (_1!22426 lt!1279624)))))))))

(declare-fun d!1078317 () Bool)

(assert (=> d!1078317 e!2273409))

(declare-fun c!634846 () Bool)

(assert (=> d!1078317 (= c!634846 ((_ is EmptyExpr!10579) (regex!5820 lt!1279646)))))

(assert (=> d!1078317 (= lt!1280048 e!2273408)))

(declare-fun c!634847 () Bool)

(assert (=> d!1078317 (= c!634847 (isEmpty!22978 (list!14378 (charsOf!3834 (_1!22426 lt!1279624)))))))

(assert (=> d!1078317 (validRegex!4844 (regex!5820 lt!1279646))))

(assert (=> d!1078317 (= (matchR!5148 (regex!5820 lt!1279646) (list!14378 (charsOf!3834 (_1!22426 lt!1279624)))) lt!1280048)))

(declare-fun b!3671606 () Bool)

(declare-fun res!1491223 () Bool)

(declare-fun e!2273406 () Bool)

(assert (=> b!3671606 (=> res!1491223 e!2273406)))

(assert (=> b!3671606 (= res!1491223 e!2273404)))

(declare-fun res!1491227 () Bool)

(assert (=> b!3671606 (=> (not res!1491227) (not e!2273404))))

(assert (=> b!3671606 (= res!1491227 lt!1280048)))

(declare-fun b!3671607 () Bool)

(declare-fun res!1491226 () Bool)

(assert (=> b!3671607 (=> res!1491226 e!2273406)))

(assert (=> b!3671607 (= res!1491226 (not ((_ is ElementMatch!10579) (regex!5820 lt!1279646))))))

(assert (=> b!3671607 (= e!2273407 e!2273406)))

(declare-fun b!3671608 () Bool)

(assert (=> b!3671608 (= e!2273405 (not (= (head!7860 (list!14378 (charsOf!3834 (_1!22426 lt!1279624)))) (c!634686 (regex!5820 lt!1279646)))))))

(declare-fun b!3671609 () Bool)

(assert (=> b!3671609 (= e!2273407 (not lt!1280048))))

(declare-fun b!3671610 () Bool)

(assert (=> b!3671610 (= e!2273408 (nullable!3683 (regex!5820 lt!1279646)))))

(declare-fun b!3671611 () Bool)

(declare-fun res!1491225 () Bool)

(assert (=> b!3671611 (=> (not res!1491225) (not e!2273404))))

(assert (=> b!3671611 (= res!1491225 (not call!265807))))

(declare-fun b!3671612 () Bool)

(declare-fun e!2273403 () Bool)

(assert (=> b!3671612 (= e!2273406 e!2273403)))

(declare-fun res!1491222 () Bool)

(assert (=> b!3671612 (=> (not res!1491222) (not e!2273403))))

(assert (=> b!3671612 (= res!1491222 (not lt!1280048))))

(declare-fun b!3671613 () Bool)

(assert (=> b!3671613 (= e!2273404 (= (head!7860 (list!14378 (charsOf!3834 (_1!22426 lt!1279624)))) (c!634686 (regex!5820 lt!1279646))))))

(declare-fun b!3671614 () Bool)

(assert (=> b!3671614 (= e!2273403 e!2273405)))

(declare-fun res!1491228 () Bool)

(assert (=> b!3671614 (=> res!1491228 e!2273405)))

(assert (=> b!3671614 (= res!1491228 call!265807)))

(assert (= (and d!1078317 c!634847) b!3671610))

(assert (= (and d!1078317 (not c!634847)) b!3671604))

(assert (= (and d!1078317 c!634846) b!3671603))

(assert (= (and d!1078317 (not c!634846)) b!3671601))

(assert (= (and b!3671601 c!634845) b!3671609))

(assert (= (and b!3671601 (not c!634845)) b!3671607))

(assert (= (and b!3671607 (not res!1491226)) b!3671606))

(assert (= (and b!3671606 res!1491227) b!3671611))

(assert (= (and b!3671611 res!1491225) b!3671602))

(assert (= (and b!3671602 res!1491224) b!3671613))

(assert (= (and b!3671606 (not res!1491223)) b!3671612))

(assert (= (and b!3671612 res!1491222) b!3671614))

(assert (= (and b!3671614 (not res!1491228)) b!3671605))

(assert (= (and b!3671605 (not res!1491221)) b!3671608))

(assert (= (or b!3671603 b!3671611 b!3671614) bm!265802))

(declare-fun m!4180529 () Bool)

(assert (=> b!3671610 m!4180529))

(assert (=> b!3671604 m!4179443))

(declare-fun m!4180531 () Bool)

(assert (=> b!3671604 m!4180531))

(assert (=> b!3671604 m!4180531))

(declare-fun m!4180533 () Bool)

(assert (=> b!3671604 m!4180533))

(assert (=> b!3671604 m!4179443))

(declare-fun m!4180535 () Bool)

(assert (=> b!3671604 m!4180535))

(assert (=> b!3671604 m!4180533))

(assert (=> b!3671604 m!4180535))

(declare-fun m!4180537 () Bool)

(assert (=> b!3671604 m!4180537))

(assert (=> b!3671613 m!4179443))

(assert (=> b!3671613 m!4180531))

(assert (=> d!1078317 m!4179443))

(declare-fun m!4180539 () Bool)

(assert (=> d!1078317 m!4180539))

(declare-fun m!4180541 () Bool)

(assert (=> d!1078317 m!4180541))

(assert (=> b!3671602 m!4179443))

(assert (=> b!3671602 m!4180535))

(assert (=> b!3671602 m!4180535))

(declare-fun m!4180543 () Bool)

(assert (=> b!3671602 m!4180543))

(assert (=> bm!265802 m!4179443))

(assert (=> bm!265802 m!4180539))

(assert (=> b!3671608 m!4179443))

(assert (=> b!3671608 m!4180531))

(assert (=> b!3671605 m!4179443))

(assert (=> b!3671605 m!4180535))

(assert (=> b!3671605 m!4180535))

(assert (=> b!3671605 m!4180543))

(assert (=> b!3670816 d!1078317))

(declare-fun d!1078319 () Bool)

(assert (=> d!1078319 (= (list!14378 (charsOf!3834 (_1!22426 lt!1279624))) (list!14382 (c!634687 (charsOf!3834 (_1!22426 lt!1279624)))))))

(declare-fun bs!573206 () Bool)

(assert (= bs!573206 d!1078319))

(declare-fun m!4180545 () Bool)

(assert (=> bs!573206 m!4180545))

(assert (=> b!3670816 d!1078319))

(assert (=> b!3670816 d!1078105))

(declare-fun d!1078321 () Bool)

(assert (=> d!1078321 (= (get!12789 lt!1279622) (v!38180 lt!1279622))))

(assert (=> b!3670816 d!1078321))

(declare-fun b!3671625 () Bool)

(declare-fun e!2273416 () Bool)

(declare-fun inv!17 (TokenValue!6050) Bool)

(assert (=> b!3671625 (= e!2273416 (inv!17 (value!186330 token!511)))))

(declare-fun d!1078323 () Bool)

(declare-fun c!634852 () Bool)

(assert (=> d!1078323 (= c!634852 ((_ is IntegerValue!18150) (value!186330 token!511)))))

(declare-fun e!2273417 () Bool)

(assert (=> d!1078323 (= (inv!21 (value!186330 token!511)) e!2273417)))

(declare-fun b!3671626 () Bool)

(assert (=> b!3671626 (= e!2273417 e!2273416)))

(declare-fun c!634853 () Bool)

(assert (=> b!3671626 (= c!634853 ((_ is IntegerValue!18151) (value!186330 token!511)))))

(declare-fun b!3671627 () Bool)

(declare-fun res!1491231 () Bool)

(declare-fun e!2273418 () Bool)

(assert (=> b!3671627 (=> res!1491231 e!2273418)))

(assert (=> b!3671627 (= res!1491231 (not ((_ is IntegerValue!18152) (value!186330 token!511))))))

(assert (=> b!3671627 (= e!2273416 e!2273418)))

(declare-fun b!3671628 () Bool)

(declare-fun inv!15 (TokenValue!6050) Bool)

(assert (=> b!3671628 (= e!2273418 (inv!15 (value!186330 token!511)))))

(declare-fun b!3671629 () Bool)

(declare-fun inv!16 (TokenValue!6050) Bool)

(assert (=> b!3671629 (= e!2273417 (inv!16 (value!186330 token!511)))))

(assert (= (and d!1078323 c!634852) b!3671629))

(assert (= (and d!1078323 (not c!634852)) b!3671626))

(assert (= (and b!3671626 c!634853) b!3671625))

(assert (= (and b!3671626 (not c!634853)) b!3671627))

(assert (= (and b!3671627 (not res!1491231)) b!3671628))

(declare-fun m!4180547 () Bool)

(assert (=> b!3671625 m!4180547))

(declare-fun m!4180549 () Bool)

(assert (=> b!3671628 m!4180549))

(declare-fun m!4180551 () Bool)

(assert (=> b!3671629 m!4180551))

(assert (=> b!3670818 d!1078323))

(declare-fun b!3671630 () Bool)

(declare-fun e!2273425 () Bool)

(declare-fun e!2273423 () Bool)

(assert (=> b!3671630 (= e!2273425 e!2273423)))

(declare-fun c!634854 () Bool)

(assert (=> b!3671630 (= c!634854 ((_ is EmptyLang!10579) (regex!5820 (rule!8644 (_1!22426 lt!1279624)))))))

(declare-fun b!3671631 () Bool)

(declare-fun res!1491235 () Bool)

(declare-fun e!2273420 () Bool)

(assert (=> b!3671631 (=> (not res!1491235) (not e!2273420))))

(assert (=> b!3671631 (= res!1491235 (isEmpty!22978 (tail!5681 lt!1279660)))))

(declare-fun b!3671632 () Bool)

(declare-fun lt!1280049 () Bool)

(declare-fun call!265808 () Bool)

(assert (=> b!3671632 (= e!2273425 (= lt!1280049 call!265808))))

(declare-fun bm!265803 () Bool)

(assert (=> bm!265803 (= call!265808 (isEmpty!22978 lt!1279660))))

(declare-fun b!3671633 () Bool)

(declare-fun e!2273424 () Bool)

(assert (=> b!3671633 (= e!2273424 (matchR!5148 (derivativeStep!3232 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) (head!7860 lt!1279660)) (tail!5681 lt!1279660)))))

(declare-fun b!3671634 () Bool)

(declare-fun res!1491232 () Bool)

(declare-fun e!2273421 () Bool)

(assert (=> b!3671634 (=> res!1491232 e!2273421)))

(assert (=> b!3671634 (= res!1491232 (not (isEmpty!22978 (tail!5681 lt!1279660))))))

(declare-fun d!1078325 () Bool)

(assert (=> d!1078325 e!2273425))

(declare-fun c!634855 () Bool)

(assert (=> d!1078325 (= c!634855 ((_ is EmptyExpr!10579) (regex!5820 (rule!8644 (_1!22426 lt!1279624)))))))

(assert (=> d!1078325 (= lt!1280049 e!2273424)))

(declare-fun c!634856 () Bool)

(assert (=> d!1078325 (= c!634856 (isEmpty!22978 lt!1279660))))

(assert (=> d!1078325 (validRegex!4844 (regex!5820 (rule!8644 (_1!22426 lt!1279624))))))

(assert (=> d!1078325 (= (matchR!5148 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279660) lt!1280049)))

(declare-fun b!3671635 () Bool)

(declare-fun res!1491234 () Bool)

(declare-fun e!2273422 () Bool)

(assert (=> b!3671635 (=> res!1491234 e!2273422)))

(assert (=> b!3671635 (= res!1491234 e!2273420)))

(declare-fun res!1491238 () Bool)

(assert (=> b!3671635 (=> (not res!1491238) (not e!2273420))))

(assert (=> b!3671635 (= res!1491238 lt!1280049)))

(declare-fun b!3671636 () Bool)

(declare-fun res!1491237 () Bool)

(assert (=> b!3671636 (=> res!1491237 e!2273422)))

(assert (=> b!3671636 (= res!1491237 (not ((_ is ElementMatch!10579) (regex!5820 (rule!8644 (_1!22426 lt!1279624))))))))

(assert (=> b!3671636 (= e!2273423 e!2273422)))

(declare-fun b!3671637 () Bool)

(assert (=> b!3671637 (= e!2273421 (not (= (head!7860 lt!1279660) (c!634686 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))))))))

(declare-fun b!3671638 () Bool)

(assert (=> b!3671638 (= e!2273423 (not lt!1280049))))

(declare-fun b!3671639 () Bool)

(assert (=> b!3671639 (= e!2273424 (nullable!3683 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))))))

(declare-fun b!3671640 () Bool)

(declare-fun res!1491236 () Bool)

(assert (=> b!3671640 (=> (not res!1491236) (not e!2273420))))

(assert (=> b!3671640 (= res!1491236 (not call!265808))))

(declare-fun b!3671641 () Bool)

(declare-fun e!2273419 () Bool)

(assert (=> b!3671641 (= e!2273422 e!2273419)))

(declare-fun res!1491233 () Bool)

(assert (=> b!3671641 (=> (not res!1491233) (not e!2273419))))

(assert (=> b!3671641 (= res!1491233 (not lt!1280049))))

(declare-fun b!3671642 () Bool)

(assert (=> b!3671642 (= e!2273420 (= (head!7860 lt!1279660) (c!634686 (regex!5820 (rule!8644 (_1!22426 lt!1279624))))))))

(declare-fun b!3671643 () Bool)

(assert (=> b!3671643 (= e!2273419 e!2273421)))

(declare-fun res!1491239 () Bool)

(assert (=> b!3671643 (=> res!1491239 e!2273421)))

(assert (=> b!3671643 (= res!1491239 call!265808)))

(assert (= (and d!1078325 c!634856) b!3671639))

(assert (= (and d!1078325 (not c!634856)) b!3671633))

(assert (= (and d!1078325 c!634855) b!3671632))

(assert (= (and d!1078325 (not c!634855)) b!3671630))

(assert (= (and b!3671630 c!634854) b!3671638))

(assert (= (and b!3671630 (not c!634854)) b!3671636))

(assert (= (and b!3671636 (not res!1491237)) b!3671635))

(assert (= (and b!3671635 res!1491238) b!3671640))

(assert (= (and b!3671640 res!1491236) b!3671631))

(assert (= (and b!3671631 res!1491235) b!3671642))

(assert (= (and b!3671635 (not res!1491234)) b!3671641))

(assert (= (and b!3671641 res!1491233) b!3671643))

(assert (= (and b!3671643 (not res!1491239)) b!3671634))

(assert (= (and b!3671634 (not res!1491232)) b!3671637))

(assert (= (or b!3671632 b!3671640 b!3671643) bm!265803))

(assert (=> b!3671639 m!4179751))

(assert (=> b!3671633 m!4179829))

(assert (=> b!3671633 m!4179829))

(declare-fun m!4180553 () Bool)

(assert (=> b!3671633 m!4180553))

(assert (=> b!3671633 m!4179833))

(assert (=> b!3671633 m!4180553))

(assert (=> b!3671633 m!4179833))

(declare-fun m!4180555 () Bool)

(assert (=> b!3671633 m!4180555))

(assert (=> b!3671642 m!4179829))

(assert (=> d!1078325 m!4179465))

(assert (=> d!1078325 m!4179749))

(assert (=> b!3671631 m!4179833))

(assert (=> b!3671631 m!4179833))

(assert (=> b!3671631 m!4179839))

(assert (=> bm!265803 m!4179465))

(assert (=> b!3671637 m!4179829))

(assert (=> b!3671634 m!4179833))

(assert (=> b!3671634 m!4179833))

(assert (=> b!3671634 m!4179839))

(assert (=> b!3670800 d!1078325))

(declare-fun d!1078327 () Bool)

(declare-fun res!1491244 () Bool)

(declare-fun e!2273430 () Bool)

(assert (=> d!1078327 (=> res!1491244 e!2273430)))

(assert (=> d!1078327 (= res!1491244 (not ((_ is Cons!38717) rules!3307)))))

(assert (=> d!1078327 (= (sepAndNonSepRulesDisjointChars!1988 rules!3307 rules!3307) e!2273430)))

(declare-fun b!3671648 () Bool)

(declare-fun e!2273431 () Bool)

(assert (=> b!3671648 (= e!2273430 e!2273431)))

(declare-fun res!1491245 () Bool)

(assert (=> b!3671648 (=> (not res!1491245) (not e!2273431))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!907 (Rule!11440 List!38841) Bool)

(assert (=> b!3671648 (= res!1491245 (ruleDisjointCharsFromAllFromOtherType!907 (h!44137 rules!3307) rules!3307))))

(declare-fun b!3671649 () Bool)

(assert (=> b!3671649 (= e!2273431 (sepAndNonSepRulesDisjointChars!1988 rules!3307 (t!299636 rules!3307)))))

(assert (= (and d!1078327 (not res!1491244)) b!3671648))

(assert (= (and b!3671648 res!1491245) b!3671649))

(declare-fun m!4180557 () Bool)

(assert (=> b!3671648 m!4180557))

(declare-fun m!4180559 () Bool)

(assert (=> b!3671649 m!4180559))

(assert (=> b!3670838 d!1078327))

(declare-fun d!1078329 () Bool)

(assert (=> d!1078329 (not (matchR!5148 (regex!5820 (rule!8644 (_1!22426 lt!1279624))) lt!1279660))))

(declare-fun lt!1280052 () Unit!56308)

(declare-fun choose!21846 (LexerInterface!5409 List!38841 Rule!11440 List!38840 List!38840 Rule!11440) Unit!56308)

(assert (=> d!1078329 (= lt!1280052 (choose!21846 thiss!23823 rules!3307 rule!403 lt!1279660 lt!1279660 (rule!8644 (_1!22426 lt!1279624))))))

(assert (=> d!1078329 (isPrefix!3183 lt!1279660 lt!1279660)))

(assert (=> d!1078329 (= (lemmaMaxPrefNoSmallerRuleMatches!228 thiss!23823 rules!3307 rule!403 lt!1279660 lt!1279660 (rule!8644 (_1!22426 lt!1279624))) lt!1280052)))

(declare-fun bs!573207 () Bool)

(assert (= bs!573207 d!1078329))

(assert (=> bs!573207 m!4179385))

(declare-fun m!4180561 () Bool)

(assert (=> bs!573207 m!4180561))

(assert (=> bs!573207 m!4180453))

(assert (=> b!3670819 d!1078329))

(assert (=> b!3670819 d!1078325))

(declare-fun d!1078331 () Bool)

(declare-fun lt!1280053 () List!38840)

(assert (=> d!1078331 (= (++!9636 lt!1279660 lt!1280053) lt!1279660)))

(declare-fun e!2273432 () List!38840)

(assert (=> d!1078331 (= lt!1280053 e!2273432)))

(declare-fun c!634857 () Bool)

(assert (=> d!1078331 (= c!634857 ((_ is Cons!38716) lt!1279660))))

(assert (=> d!1078331 (>= (size!29593 lt!1279660) (size!29593 lt!1279660))))

(assert (=> d!1078331 (= (getSuffix!1736 lt!1279660 lt!1279660) lt!1280053)))

(declare-fun b!3671650 () Bool)

(assert (=> b!3671650 (= e!2273432 (getSuffix!1736 (tail!5681 lt!1279660) (t!299635 lt!1279660)))))

(declare-fun b!3671651 () Bool)

(assert (=> b!3671651 (= e!2273432 lt!1279660)))

(assert (= (and d!1078331 c!634857) b!3671650))

(assert (= (and d!1078331 (not c!634857)) b!3671651))

(declare-fun m!4180563 () Bool)

(assert (=> d!1078331 m!4180563))

(assert (=> d!1078331 m!4179477))

(assert (=> d!1078331 m!4179477))

(assert (=> b!3671650 m!4179833))

(assert (=> b!3671650 m!4179833))

(declare-fun m!4180565 () Bool)

(assert (=> b!3671650 m!4180565))

(assert (=> b!3670819 d!1078331))

(declare-fun d!1078333 () Bool)

(assert (=> d!1078333 (= (isEmpty!22978 (getSuffix!1736 lt!1279660 lt!1279660)) ((_ is Nil!38716) (getSuffix!1736 lt!1279660 lt!1279660)))))

(assert (=> b!3670819 d!1078333))

(declare-fun d!1078335 () Bool)

(assert (=> d!1078335 (isEmpty!22978 (getSuffix!1736 lt!1279660 lt!1279660))))

(declare-fun lt!1280056 () Unit!56308)

(declare-fun choose!21847 (List!38840) Unit!56308)

(assert (=> d!1078335 (= lt!1280056 (choose!21847 lt!1279660))))

(assert (=> d!1078335 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!200 lt!1279660) lt!1280056)))

(declare-fun bs!573208 () Bool)

(assert (= bs!573208 d!1078335))

(assert (=> bs!573208 m!4179503))

(assert (=> bs!573208 m!4179503))

(assert (=> bs!573208 m!4179505))

(declare-fun m!4180567 () Bool)

(assert (=> bs!573208 m!4180567))

(assert (=> b!3670819 d!1078335))

(assert (=> bm!265740 d!1078035))

(declare-fun d!1078337 () Bool)

(assert (=> d!1078337 (= (inv!52197 (tag!6610 rule!403)) (= (mod (str.len (value!186329 (tag!6610 rule!403))) 2) 0))))

(assert (=> b!3670799 d!1078337))

(declare-fun d!1078339 () Bool)

(declare-fun res!1491246 () Bool)

(declare-fun e!2273433 () Bool)

(assert (=> d!1078339 (=> (not res!1491246) (not e!2273433))))

(assert (=> d!1078339 (= res!1491246 (semiInverseModEq!2483 (toChars!7975 (transformation!5820 rule!403)) (toValue!8116 (transformation!5820 rule!403))))))

(assert (=> d!1078339 (= (inv!52200 (transformation!5820 rule!403)) e!2273433)))

(declare-fun b!3671652 () Bool)

(assert (=> b!3671652 (= e!2273433 (equivClasses!2382 (toChars!7975 (transformation!5820 rule!403)) (toValue!8116 (transformation!5820 rule!403))))))

(assert (= (and d!1078339 res!1491246) b!3671652))

(declare-fun m!4180569 () Bool)

(assert (=> d!1078339 m!4180569))

(declare-fun m!4180571 () Bool)

(assert (=> b!3671652 m!4180571))

(assert (=> b!3670799 d!1078339))

(declare-fun d!1078341 () Bool)

(declare-fun res!1491249 () Bool)

(declare-fun e!2273436 () Bool)

(assert (=> d!1078341 (=> (not res!1491249) (not e!2273436))))

(declare-fun rulesValid!2240 (LexerInterface!5409 List!38841) Bool)

(assert (=> d!1078341 (= res!1491249 (rulesValid!2240 thiss!23823 rules!3307))))

(assert (=> d!1078341 (= (rulesInvariant!4806 thiss!23823 rules!3307) e!2273436)))

(declare-fun b!3671655 () Bool)

(declare-datatypes ((List!38845 0))(
  ( (Nil!38721) (Cons!38721 (h!44141 String!43584) (t!299800 List!38845)) )
))
(declare-fun noDuplicateTag!2236 (LexerInterface!5409 List!38841 List!38845) Bool)

(assert (=> b!3671655 (= e!2273436 (noDuplicateTag!2236 thiss!23823 rules!3307 Nil!38721))))

(assert (= (and d!1078341 res!1491249) b!3671655))

(declare-fun m!4180573 () Bool)

(assert (=> d!1078341 m!4180573))

(declare-fun m!4180575 () Bool)

(assert (=> b!3671655 m!4180575))

(assert (=> b!3670837 d!1078341))

(declare-fun d!1078343 () Bool)

(declare-fun lt!1280057 () Bool)

(assert (=> d!1078343 (= lt!1280057 (select (content!5605 call!265748) lt!1279641))))

(declare-fun e!2273438 () Bool)

(assert (=> d!1078343 (= lt!1280057 e!2273438)))

(declare-fun res!1491250 () Bool)

(assert (=> d!1078343 (=> (not res!1491250) (not e!2273438))))

(assert (=> d!1078343 (= res!1491250 ((_ is Cons!38716) call!265748))))

(assert (=> d!1078343 (= (contains!7707 call!265748 lt!1279641) lt!1280057)))

(declare-fun b!3671656 () Bool)

(declare-fun e!2273437 () Bool)

(assert (=> b!3671656 (= e!2273438 e!2273437)))

(declare-fun res!1491251 () Bool)

(assert (=> b!3671656 (=> res!1491251 e!2273437)))

(assert (=> b!3671656 (= res!1491251 (= (h!44136 call!265748) lt!1279641))))

(declare-fun b!3671657 () Bool)

(assert (=> b!3671657 (= e!2273437 (contains!7707 (t!299635 call!265748) lt!1279641))))

(assert (= (and d!1078343 res!1491250) b!3671656))

(assert (= (and b!3671656 (not res!1491251)) b!3671657))

(declare-fun m!4180577 () Bool)

(assert (=> d!1078343 m!4180577))

(declare-fun m!4180579 () Bool)

(assert (=> d!1078343 m!4180579))

(declare-fun m!4180581 () Bool)

(assert (=> b!3671657 m!4180581))

(assert (=> bm!265743 d!1078343))

(declare-fun d!1078345 () Bool)

(assert (=> d!1078345 (not (contains!7707 (usedCharacters!1032 (regex!5820 (rule!8644 (_1!22426 lt!1279624)))) lt!1279641))))

(declare-fun lt!1280058 () Unit!56308)

(assert (=> d!1078345 (= lt!1280058 (choose!21831 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8644 (_1!22426 lt!1279624)) lt!1279641))))

(assert (=> d!1078345 (rulesInvariant!4806 thiss!23823 rules!3307)))

(assert (=> d!1078345 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!348 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8644 (_1!22426 lt!1279624)) lt!1279641) lt!1280058)))

(declare-fun bs!573209 () Bool)

(assert (= bs!573209 d!1078345))

(assert (=> bs!573209 m!4179399))

(assert (=> bs!573209 m!4179399))

(assert (=> bs!573209 m!4180423))

(declare-fun m!4180583 () Bool)

(assert (=> bs!573209 m!4180583))

(assert (=> bs!573209 m!4179453))

(assert (=> b!3670802 d!1078345))

(declare-fun b!3671662 () Bool)

(declare-fun e!2273441 () Bool)

(declare-fun tp!1117093 () Bool)

(assert (=> b!3671662 (= e!2273441 (and tp_is_empty!18241 tp!1117093))))

(assert (=> b!3670818 (= tp!1117019 e!2273441)))

(assert (= (and b!3670818 ((_ is Cons!38716) (originalCharacters!6534 token!511))) b!3671662))

(declare-fun b!3671673 () Bool)

(declare-fun b_free!97037 () Bool)

(declare-fun b_next!97741 () Bool)

(assert (=> b!3671673 (= b_free!97037 (not b_next!97741))))

(declare-fun t!299782 () Bool)

(declare-fun tb!212693 () Bool)

(assert (=> (and b!3671673 (= (toValue!8116 (transformation!5820 (h!44137 (t!299636 rules!3307)))) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299782) tb!212693))

(declare-fun result!258836 () Bool)

(assert (= result!258836 result!258808))

(assert (=> d!1078295 t!299782))

(declare-fun t!299784 () Bool)

(declare-fun tb!212695 () Bool)

(assert (=> (and b!3671673 (= (toValue!8116 (transformation!5820 (h!44137 (t!299636 rules!3307)))) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299784) tb!212695))

(declare-fun result!258838 () Bool)

(assert (= result!258838 result!258674))

(assert (=> d!1077993 t!299784))

(assert (=> d!1078303 t!299782))

(declare-fun tb!212697 () Bool)

(declare-fun t!299786 () Bool)

(assert (=> (and b!3671673 (= (toValue!8116 (transformation!5820 (h!44137 (t!299636 rules!3307)))) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299786) tb!212697))

(declare-fun result!258840 () Bool)

(assert (= result!258840 result!258816))

(assert (=> d!1078301 t!299786))

(declare-fun tb!212699 () Bool)

(declare-fun t!299788 () Bool)

(assert (=> (and b!3671673 (= (toValue!8116 (transformation!5820 (h!44137 (t!299636 rules!3307)))) (toValue!8116 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299788) tb!212699))

(declare-fun result!258842 () Bool)

(assert (= result!258842 result!258704))

(assert (=> d!1078113 t!299788))

(assert (=> d!1078111 t!299788))

(assert (=> d!1078301 t!299782))

(declare-fun tp!1117105 () Bool)

(declare-fun b_and!273583 () Bool)

(assert (=> b!3671673 (= tp!1117105 (and (=> t!299782 result!258836) (=> t!299784 result!258838) (=> t!299786 result!258840) (=> t!299788 result!258842) b_and!273583))))

(declare-fun b_free!97039 () Bool)

(declare-fun b_next!97743 () Bool)

(assert (=> b!3671673 (= b_free!97039 (not b_next!97743))))

(declare-fun t!299790 () Bool)

(declare-fun tb!212701 () Bool)

(assert (=> (and b!3671673 (= (toChars!7975 (transformation!5820 (h!44137 (t!299636 rules!3307)))) (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299790) tb!212701))

(declare-fun result!258844 () Bool)

(assert (= result!258844 result!258694))

(assert (=> d!1078105 t!299790))

(declare-fun tb!212703 () Bool)

(declare-fun t!299792 () Bool)

(assert (=> (and b!3671673 (= (toChars!7975 (transformation!5820 (h!44137 (t!299636 rules!3307)))) (toChars!7975 (transformation!5820 (rule!8644 token!511)))) t!299792) tb!212703))

(declare-fun result!258846 () Bool)

(assert (= result!258846 result!258800))

(assert (=> d!1078277 t!299792))

(declare-fun t!299794 () Bool)

(declare-fun tb!212705 () Bool)

(assert (=> (and b!3671673 (= (toChars!7975 (transformation!5820 (h!44137 (t!299636 rules!3307)))) (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299794) tb!212705))

(declare-fun result!258848 () Bool)

(assert (= result!258848 result!258824))

(assert (=> d!1078303 t!299794))

(assert (=> b!3671554 t!299792))

(declare-fun t!299796 () Bool)

(declare-fun tb!212707 () Bool)

(assert (=> (and b!3671673 (= (toChars!7975 (transformation!5820 (h!44137 (t!299636 rules!3307)))) (toChars!7975 (transformation!5820 (rule!8644 (_1!22426 lt!1279624))))) t!299796) tb!212707))

(declare-fun result!258850 () Bool)

(assert (= result!258850 result!258792))

(assert (=> d!1078113 t!299796))

(declare-fun b_and!273585 () Bool)

(declare-fun tp!1117102 () Bool)

(assert (=> b!3671673 (= tp!1117102 (and (=> t!299794 result!258848) (=> t!299792 result!258846) (=> t!299796 result!258850) (=> t!299790 result!258844) b_and!273585))))

(declare-fun e!2273451 () Bool)

(assert (=> b!3671673 (= e!2273451 (and tp!1117105 tp!1117102))))

(declare-fun e!2273453 () Bool)

(declare-fun b!3671672 () Bool)

(declare-fun tp!1117104 () Bool)

(assert (=> b!3671672 (= e!2273453 (and tp!1117104 (inv!52197 (tag!6610 (h!44137 (t!299636 rules!3307)))) (inv!52200 (transformation!5820 (h!44137 (t!299636 rules!3307)))) e!2273451))))

(declare-fun b!3671671 () Bool)

(declare-fun e!2273450 () Bool)

(declare-fun tp!1117103 () Bool)

(assert (=> b!3671671 (= e!2273450 (and e!2273453 tp!1117103))))

(assert (=> b!3670789 (= tp!1117023 e!2273450)))

(assert (= b!3671672 b!3671673))

(assert (= b!3671671 b!3671672))

(assert (= (and b!3670789 ((_ is Cons!38717) (t!299636 rules!3307))) b!3671671))

(declare-fun m!4180585 () Bool)

(assert (=> b!3671672 m!4180585))

(declare-fun m!4180587 () Bool)

(assert (=> b!3671672 m!4180587))

(declare-fun b!3671685 () Bool)

(declare-fun e!2273456 () Bool)

(declare-fun tp!1117118 () Bool)

(declare-fun tp!1117120 () Bool)

(assert (=> b!3671685 (= e!2273456 (and tp!1117118 tp!1117120))))

(declare-fun b!3671684 () Bool)

(assert (=> b!3671684 (= e!2273456 tp_is_empty!18241)))

(assert (=> b!3670790 (= tp!1117020 e!2273456)))

(declare-fun b!3671687 () Bool)

(declare-fun tp!1117116 () Bool)

(declare-fun tp!1117117 () Bool)

(assert (=> b!3671687 (= e!2273456 (and tp!1117116 tp!1117117))))

(declare-fun b!3671686 () Bool)

(declare-fun tp!1117119 () Bool)

(assert (=> b!3671686 (= e!2273456 tp!1117119)))

(assert (= (and b!3670790 ((_ is ElementMatch!10579) (regex!5820 (rule!8644 token!511)))) b!3671684))

(assert (= (and b!3670790 ((_ is Concat!16630) (regex!5820 (rule!8644 token!511)))) b!3671685))

(assert (= (and b!3670790 ((_ is Star!10579) (regex!5820 (rule!8644 token!511)))) b!3671686))

(assert (= (and b!3670790 ((_ is Union!10579) (regex!5820 (rule!8644 token!511)))) b!3671687))

(declare-fun b!3671689 () Bool)

(declare-fun e!2273457 () Bool)

(declare-fun tp!1117123 () Bool)

(declare-fun tp!1117125 () Bool)

(assert (=> b!3671689 (= e!2273457 (and tp!1117123 tp!1117125))))

(declare-fun b!3671688 () Bool)

(assert (=> b!3671688 (= e!2273457 tp_is_empty!18241)))

(assert (=> b!3670831 (= tp!1117027 e!2273457)))

(declare-fun b!3671691 () Bool)

(declare-fun tp!1117121 () Bool)

(declare-fun tp!1117122 () Bool)

(assert (=> b!3671691 (= e!2273457 (and tp!1117121 tp!1117122))))

(declare-fun b!3671690 () Bool)

(declare-fun tp!1117124 () Bool)

(assert (=> b!3671690 (= e!2273457 tp!1117124)))

(assert (= (and b!3670831 ((_ is ElementMatch!10579) (regex!5820 anOtherTypeRule!33))) b!3671688))

(assert (= (and b!3670831 ((_ is Concat!16630) (regex!5820 anOtherTypeRule!33))) b!3671689))

(assert (= (and b!3670831 ((_ is Star!10579) (regex!5820 anOtherTypeRule!33))) b!3671690))

(assert (= (and b!3670831 ((_ is Union!10579) (regex!5820 anOtherTypeRule!33))) b!3671691))

(declare-fun b!3671693 () Bool)

(declare-fun e!2273458 () Bool)

(declare-fun tp!1117128 () Bool)

(declare-fun tp!1117130 () Bool)

(assert (=> b!3671693 (= e!2273458 (and tp!1117128 tp!1117130))))

(declare-fun b!3671692 () Bool)

(assert (=> b!3671692 (= e!2273458 tp_is_empty!18241)))

(assert (=> b!3670799 (= tp!1117026 e!2273458)))

(declare-fun b!3671695 () Bool)

(declare-fun tp!1117126 () Bool)

(declare-fun tp!1117127 () Bool)

(assert (=> b!3671695 (= e!2273458 (and tp!1117126 tp!1117127))))

(declare-fun b!3671694 () Bool)

(declare-fun tp!1117129 () Bool)

(assert (=> b!3671694 (= e!2273458 tp!1117129)))

(assert (= (and b!3670799 ((_ is ElementMatch!10579) (regex!5820 rule!403))) b!3671692))

(assert (= (and b!3670799 ((_ is Concat!16630) (regex!5820 rule!403))) b!3671693))

(assert (= (and b!3670799 ((_ is Star!10579) (regex!5820 rule!403))) b!3671694))

(assert (= (and b!3670799 ((_ is Union!10579) (regex!5820 rule!403))) b!3671695))

(declare-fun b!3671697 () Bool)

(declare-fun e!2273459 () Bool)

(declare-fun tp!1117133 () Bool)

(declare-fun tp!1117135 () Bool)

(assert (=> b!3671697 (= e!2273459 (and tp!1117133 tp!1117135))))

(declare-fun b!3671696 () Bool)

(assert (=> b!3671696 (= e!2273459 tp_is_empty!18241)))

(assert (=> b!3670835 (= tp!1117022 e!2273459)))

(declare-fun b!3671699 () Bool)

(declare-fun tp!1117131 () Bool)

(declare-fun tp!1117132 () Bool)

(assert (=> b!3671699 (= e!2273459 (and tp!1117131 tp!1117132))))

(declare-fun b!3671698 () Bool)

(declare-fun tp!1117134 () Bool)

(assert (=> b!3671698 (= e!2273459 tp!1117134)))

(assert (= (and b!3670835 ((_ is ElementMatch!10579) (regex!5820 (h!44137 rules!3307)))) b!3671696))

(assert (= (and b!3670835 ((_ is Concat!16630) (regex!5820 (h!44137 rules!3307)))) b!3671697))

(assert (= (and b!3670835 ((_ is Star!10579) (regex!5820 (h!44137 rules!3307)))) b!3671698))

(assert (= (and b!3670835 ((_ is Union!10579) (regex!5820 (h!44137 rules!3307)))) b!3671699))

(declare-fun b!3671700 () Bool)

(declare-fun e!2273460 () Bool)

(declare-fun tp!1117136 () Bool)

(assert (=> b!3671700 (= e!2273460 (and tp_is_empty!18241 tp!1117136))))

(assert (=> b!3670801 (= tp!1117029 e!2273460)))

(assert (= (and b!3670801 ((_ is Cons!38716) (t!299635 suffix!1395))) b!3671700))

(declare-fun b_lambda!109043 () Bool)

(assert (= b_lambda!109029 (or (and b!3670820 b_free!97019 (= (toChars!7975 (transformation!5820 rule!403)) (toChars!7975 (transformation!5820 (rule!8644 token!511))))) (and b!3670810 b_free!97027) (and b!3670840 b_free!97031 (= (toChars!7975 (transformation!5820 (h!44137 rules!3307))) (toChars!7975 (transformation!5820 (rule!8644 token!511))))) (and b!3671673 b_free!97039 (= (toChars!7975 (transformation!5820 (h!44137 (t!299636 rules!3307)))) (toChars!7975 (transformation!5820 (rule!8644 token!511))))) (and b!3670836 b_free!97023 (= (toChars!7975 (transformation!5820 anOtherTypeRule!33)) (toChars!7975 (transformation!5820 (rule!8644 token!511))))) b_lambda!109043)))

(declare-fun b_lambda!109045 () Bool)

(assert (= b_lambda!109031 (or (and b!3670820 b_free!97019 (= (toChars!7975 (transformation!5820 rule!403)) (toChars!7975 (transformation!5820 (rule!8644 token!511))))) (and b!3670810 b_free!97027) (and b!3670840 b_free!97031 (= (toChars!7975 (transformation!5820 (h!44137 rules!3307))) (toChars!7975 (transformation!5820 (rule!8644 token!511))))) (and b!3671673 b_free!97039 (= (toChars!7975 (transformation!5820 (h!44137 (t!299636 rules!3307)))) (toChars!7975 (transformation!5820 (rule!8644 token!511))))) (and b!3670836 b_free!97023 (= (toChars!7975 (transformation!5820 anOtherTypeRule!33)) (toChars!7975 (transformation!5820 (rule!8644 token!511))))) b_lambda!109045)))

(check-sat (not d!1078095) (not b!3671613) (not bm!265792) (not b!3671642) (not tb!212573) (not b!3671545) (not tb!212685) (not d!1078293) (not d!1078341) (not tb!212549) (not b!3671652) (not b!3671555) (not b!3670985) (not d!1078269) (not d!1078255) (not b_lambda!109025) (not b!3671090) (not d!1078251) (not b!3671121) (not bm!265802) (not b!3671203) b_and!273581 (not b!3671639) (not d!1078057) (not d!1078297) (not d!1078271) (not b!3670878) (not b_lambda!109033) (not d!1078291) (not d!1078285) (not b!3671590) (not bm!265797) (not b!3671570) (not d!1077981) (not b!3671187) (not d!1078045) (not b!3671098) (not b!3671535) (not b!3670983) b_and!273571 (not b!3671610) (not d!1077971) (not b!3671095) (not b!3671556) (not b!3671228) (not b_lambda!108991) (not b!3671672) (not b!3671629) (not b!3671265) (not b!3671232) b_and!273569 (not d!1078101) (not b!3671548) (not b!3671693) (not b!3671093) (not b!3670987) (not d!1078099) (not b!3671224) (not d!1078281) (not b!3671222) (not b!3671690) (not b_next!97743) (not d!1078309) (not d!1078275) (not b!3671686) b_and!273585 (not b!3671685) (not b!3671698) (not bm!265767) (not b!3671689) (not b!3671575) (not b_lambda!108995) (not b!3671569) (not b!3671694) (not b!3671245) (not b!3671531) (not b!3671543) (not b!3671197) (not d!1078335) (not b!3671532) (not tb!212677) (not b!3671202) b_and!273567 (not b!3671198) (not b!3671226) (not b!3671649) (not b!3671687) (not b!3671695) (not b!3671605) (not d!1078065) (not d!1078259) (not b!3671540) (not b!3671628) (not b!3670899) (not d!1078097) (not b!3671225) (not b_next!97723) (not b!3671201) (not b_lambda!109039) (not d!1078029) (not b!3671180) (not b!3671671) (not b!3671227) b_and!273573 b_and!273577 (not d!1077991) (not d!1078307) (not b!3671608) (not d!1078063) (not b!3671020) (not d!1078081) (not d!1078329) (not b_lambda!109037) (not d!1078343) (not b!3671234) (not b!3670984) (not b!3671248) (not d!1078061) (not d!1078107) (not bm!265799) (not b!3671637) (not bm!265803) (not b!3671558) (not b!3671625) tp_is_empty!18241 (not b!3671634) (not b!3671604) (not b!3671186) (not b!3671244) (not bm!265779) (not d!1078103) (not b!3671657) (not tb!212653) (not b_next!97725) (not d!1078261) (not d!1078301) (not d!1077997) (not b!3670988) (not d!1078317) (not b!3670986) (not bm!265800) (not d!1078105) (not d!1078033) (not b!3671268) (not b!3671577) (not b!3671592) (not d!1078047) (not tb!212669) (not b_lambda!109041) (not d!1078049) (not bm!265773) (not b!3671178) (not b!3671112) (not b!3671650) (not d!1077995) (not d!1078267) (not d!1078027) (not bm!265768) (not d!1078273) (not b!3671229) (not b!3671700) (not b!3670980) (not d!1078303) (not b!3671249) (not b_next!97741) (not bm!265795) (not b_next!97733) (not b!3671655) (not b_lambda!109045) (not tb!212565) (not b!3671230) b_and!273579 (not b_next!97731) (not tb!212661) (not d!1078339) (not d!1078021) (not b!3671089) (not b!3671697) (not b_next!97727) (not bm!265798) (not d!1078277) (not d!1078319) (not d!1078345) (not bm!265769) b_and!273575 (not b!3671691) (not bm!265794) (not b!3671578) (not b!3671537) (not b!3671574) (not b!3670999) b_and!273583 (not d!1078113) (not d!1078299) (not b!3671233) (not d!1077973) (not b!3671273) (not d!1078091) (not b_lambda!109043) (not d!1078287) (not b!3670895) (not b!3671633) (not b!3671124) (not b!3671579) (not bm!265793) (not b!3671005) (not b!3671648) (not b!3671087) (not b!3671554) (not d!1078083) (not b!3671199) (not d!1078279) (not b!3671275) (not b!3671572) (not b!3671539) (not b!3671573) (not d!1077999) (not d!1078331) (not b_next!97735) (not b!3671602) (not b!3671662) (not b_next!97721) (not d!1078053) (not b!3671631) (not b!3670994) (not b!3671699) (not b_lambda!109035) (not d!1078263) (not b!3670982) (not b!3671567) (not b_lambda!108997) (not d!1078039) (not d!1078089) (not b_lambda!109027) (not b!3671266) (not d!1077987) (not b_next!97729) (not b!3671571) (not d!1078025) (not b!3671179) (not b!3671588) (not d!1078325))
(check-sat b_and!273581 b_and!273571 b_and!273585 b_and!273567 (not b_next!97723) (not b_next!97725) b_and!273583 (not b_next!97729) b_and!273569 (not b_next!97743) b_and!273573 b_and!273577 (not b_next!97741) (not b_next!97733) b_and!273579 (not b_next!97731) (not b_next!97727) b_and!273575 (not b_next!97721) (not b_next!97735))
