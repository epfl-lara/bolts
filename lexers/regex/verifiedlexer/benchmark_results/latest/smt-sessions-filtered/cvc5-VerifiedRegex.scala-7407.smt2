; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!393932 () Bool)

(assert start!393932)

(declare-fun b!4142950 () Bool)

(declare-fun b_free!118055 () Bool)

(declare-fun b_next!118759 () Bool)

(assert (=> b!4142950 (= b_free!118055 (not b_next!118759))))

(declare-fun tp!1262835 () Bool)

(declare-fun b_and!321829 () Bool)

(assert (=> b!4142950 (= tp!1262835 b_and!321829)))

(declare-fun b_free!118057 () Bool)

(declare-fun b_next!118761 () Bool)

(assert (=> b!4142950 (= b_free!118057 (not b_next!118761))))

(declare-fun tp!1262833 () Bool)

(declare-fun b_and!321831 () Bool)

(assert (=> b!4142950 (= tp!1262833 b_and!321831)))

(declare-fun b!4142951 () Bool)

(declare-fun b_free!118059 () Bool)

(declare-fun b_next!118763 () Bool)

(assert (=> b!4142951 (= b_free!118059 (not b_next!118763))))

(declare-fun tp!1262829 () Bool)

(declare-fun b_and!321833 () Bool)

(assert (=> b!4142951 (= tp!1262829 b_and!321833)))

(declare-fun b_free!118061 () Bool)

(declare-fun b_next!118765 () Bool)

(assert (=> b!4142951 (= b_free!118061 (not b_next!118765))))

(declare-fun tp!1262839 () Bool)

(declare-fun b_and!321835 () Bool)

(assert (=> b!4142951 (= tp!1262839 b_and!321835)))

(declare-fun b!4142964 () Bool)

(declare-fun b_free!118063 () Bool)

(declare-fun b_next!118767 () Bool)

(assert (=> b!4142964 (= b_free!118063 (not b_next!118767))))

(declare-fun tp!1262837 () Bool)

(declare-fun b_and!321837 () Bool)

(assert (=> b!4142964 (= tp!1262837 b_and!321837)))

(declare-fun b_free!118065 () Bool)

(declare-fun b_next!118769 () Bool)

(assert (=> b!4142964 (= b_free!118065 (not b_next!118769))))

(declare-fun tp!1262836 () Bool)

(declare-fun b_and!321839 () Bool)

(assert (=> b!4142964 (= tp!1262836 b_and!321839)))

(declare-fun tp!1262840 () Bool)

(declare-datatypes ((List!45067 0))(
  ( (Nil!44943) (Cons!44943 (h!50363 (_ BitVec 16)) (t!342538 List!45067)) )
))
(declare-datatypes ((TokenValue!7615 0))(
  ( (FloatLiteralValue!15230 (text!53750 List!45067)) (TokenValueExt!7614 (__x!27447 Int)) (Broken!38075 (value!231002 List!45067)) (Object!7738) (End!7615) (Def!7615) (Underscore!7615) (Match!7615) (Else!7615) (Error!7615) (Case!7615) (If!7615) (Extends!7615) (Abstract!7615) (Class!7615) (Val!7615) (DelimiterValue!15230 (del!7675 List!45067)) (KeywordValue!7621 (value!231003 List!45067)) (CommentValue!15230 (value!231004 List!45067)) (WhitespaceValue!15230 (value!231005 List!45067)) (IndentationValue!7615 (value!231006 List!45067)) (String!51826) (Int32!7615) (Broken!38076 (value!231007 List!45067)) (Boolean!7616) (Unit!64237) (OperatorValue!7618 (op!7675 List!45067)) (IdentifierValue!15230 (value!231008 List!45067)) (IdentifierValue!15231 (value!231009 List!45067)) (WhitespaceValue!15231 (value!231010 List!45067)) (True!15230) (False!15230) (Broken!38077 (value!231011 List!45067)) (Broken!38078 (value!231012 List!45067)) (True!15231) (RightBrace!7615) (RightBracket!7615) (Colon!7615) (Null!7615) (Comma!7615) (LeftBracket!7615) (False!15231) (LeftBrace!7615) (ImaginaryLiteralValue!7615 (text!53751 List!45067)) (StringLiteralValue!22845 (value!231013 List!45067)) (EOFValue!7615 (value!231014 List!45067)) (IdentValue!7615 (value!231015 List!45067)) (DelimiterValue!15231 (value!231016 List!45067)) (DedentValue!7615 (value!231017 List!45067)) (NewLineValue!7615 (value!231018 List!45067)) (IntegerValue!22845 (value!231019 (_ BitVec 32)) (text!53752 List!45067)) (IntegerValue!22846 (value!231020 Int) (text!53753 List!45067)) (Times!7615) (Or!7615) (Equal!7615) (Minus!7615) (Broken!38079 (value!231021 List!45067)) (And!7615) (Div!7615) (LessEqual!7615) (Mod!7615) (Concat!19905) (Not!7615) (Plus!7615) (SpaceValue!7615 (value!231022 List!45067)) (IntegerValue!22847 (value!231023 Int) (text!53754 List!45067)) (StringLiteralValue!22846 (text!53755 List!45067)) (FloatLiteralValue!15231 (text!53756 List!45067)) (BytesLiteralValue!7615 (value!231024 List!45067)) (CommentValue!15231 (value!231025 List!45067)) (StringLiteralValue!22847 (value!231026 List!45067)) (ErrorTokenValue!7615 (msg!7676 List!45067)) )
))
(declare-datatypes ((C!24766 0))(
  ( (C!24767 (val!14493 Int)) )
))
(declare-datatypes ((List!45068 0))(
  ( (Nil!44944) (Cons!44944 (h!50364 C!24766) (t!342539 List!45068)) )
))
(declare-datatypes ((IArray!27197 0))(
  ( (IArray!27198 (innerList!13656 List!45068)) )
))
(declare-datatypes ((Conc!13596 0))(
  ( (Node!13596 (left!33655 Conc!13596) (right!33985 Conc!13596) (csize!27422 Int) (cheight!13807 Int)) (Leaf!21004 (xs!16902 IArray!27197) (csize!27423 Int)) (Empty!13596) )
))
(declare-datatypes ((BalanceConc!26786 0))(
  ( (BalanceConc!26787 (c!710079 Conc!13596)) )
))
(declare-datatypes ((Regex!12290 0))(
  ( (ElementMatch!12290 (c!710080 C!24766)) (Concat!19906 (regOne!25092 Regex!12290) (regTwo!25092 Regex!12290)) (EmptyExpr!12290) (Star!12290 (reg!12619 Regex!12290)) (EmptyLang!12290) (Union!12290 (regOne!25093 Regex!12290) (regTwo!25093 Regex!12290)) )
))
(declare-datatypes ((String!51827 0))(
  ( (String!51828 (value!231027 String)) )
))
(declare-datatypes ((TokenValueInjection!14658 0))(
  ( (TokenValueInjection!14659 (toValue!10049 Int) (toChars!9908 Int)) )
))
(declare-datatypes ((Rule!14570 0))(
  ( (Rule!14571 (regex!7385 Regex!12290) (tag!8245 String!51827) (isSeparator!7385 Bool) (transformation!7385 TokenValueInjection!14658)) )
))
(declare-fun rBis!149 () Rule!14570)

(declare-fun b!4142949 () Bool)

(declare-fun e!2570588 () Bool)

(declare-fun e!2570577 () Bool)

(declare-fun inv!59550 (String!51827) Bool)

(declare-fun inv!59553 (TokenValueInjection!14658) Bool)

(assert (=> b!4142949 (= e!2570588 (and tp!1262840 (inv!59550 (tag!8245 rBis!149)) (inv!59553 (transformation!7385 rBis!149)) e!2570577))))

(declare-fun e!2570591 () Bool)

(assert (=> b!4142950 (= e!2570591 (and tp!1262835 tp!1262833))))

(assert (=> b!4142951 (= e!2570577 (and tp!1262829 tp!1262839))))

(declare-fun b!4142952 () Bool)

(declare-fun res!1695247 () Bool)

(declare-fun e!2570594 () Bool)

(assert (=> b!4142952 (=> (not res!1695247) (not e!2570594))))

(declare-fun p!2912 () List!45068)

(declare-fun isEmpty!26808 (List!45068) Bool)

(assert (=> b!4142952 (= res!1695247 (not (isEmpty!26808 p!2912)))))

(declare-datatypes ((List!45069 0))(
  ( (Nil!44945) (Cons!44945 (h!50365 Rule!14570) (t!342540 List!45069)) )
))
(declare-fun rules!3756 () List!45069)

(declare-fun e!2570578 () Bool)

(declare-fun e!2570584 () Bool)

(declare-fun b!4142953 () Bool)

(declare-fun tp!1262832 () Bool)

(assert (=> b!4142953 (= e!2570584 (and tp!1262832 (inv!59550 (tag!8245 (h!50365 rules!3756))) (inv!59553 (transformation!7385 (h!50365 rules!3756))) e!2570578))))

(declare-fun b!4142954 () Bool)

(declare-fun res!1695240 () Bool)

(assert (=> b!4142954 (=> (not res!1695240) (not e!2570594))))

(declare-fun contains!9065 (List!45069 Rule!14570) Bool)

(assert (=> b!4142954 (= res!1695240 (contains!9065 rules!3756 rBis!149))))

(declare-fun b!4142955 () Bool)

(declare-fun res!1695242 () Bool)

(declare-fun e!2570590 () Bool)

(assert (=> b!4142955 (=> res!1695242 e!2570590)))

(declare-fun validRegex!5536 (Regex!12290) Bool)

(assert (=> b!4142955 (= res!1695242 (not (validRegex!5536 (regex!7385 rBis!149))))))

(declare-fun b!4142956 () Bool)

(declare-fun e!2570582 () Bool)

(declare-fun r!4008 () Rule!14570)

(declare-fun tp!1262831 () Bool)

(assert (=> b!4142956 (= e!2570582 (and tp!1262831 (inv!59550 (tag!8245 r!4008)) (inv!59553 (transformation!7385 r!4008)) e!2570591))))

(declare-fun b!4142957 () Bool)

(declare-fun res!1695250 () Bool)

(assert (=> b!4142957 (=> (not res!1695250) (not e!2570594))))

(declare-fun isEmpty!26809 (List!45069) Bool)

(assert (=> b!4142957 (= res!1695250 (not (isEmpty!26809 rules!3756)))))

(declare-fun b!4142958 () Bool)

(declare-fun lt!1477620 () List!45068)

(declare-fun matchR!6119 (Regex!12290 List!45068) Bool)

(assert (=> b!4142958 (= e!2570590 (matchR!6119 (regex!7385 rBis!149) lt!1477620))))

(declare-fun b!4142959 () Bool)

(declare-fun res!1695239 () Bool)

(declare-fun e!2570580 () Bool)

(assert (=> b!4142959 (=> (not res!1695239) (not e!2570580))))

(declare-datatypes ((LexerInterface!6974 0))(
  ( (LexerInterfaceExt!6971 (__x!27448 Int)) (Lexer!6972) )
))
(declare-fun thiss!25645 () LexerInterface!6974)

(declare-fun ruleValid!3191 (LexerInterface!6974 Rule!14570) Bool)

(assert (=> b!4142959 (= res!1695239 (ruleValid!3191 thiss!25645 r!4008))))

(declare-fun b!4142960 () Bool)

(declare-fun res!1695249 () Bool)

(assert (=> b!4142960 (=> (not res!1695249) (not e!2570580))))

(assert (=> b!4142960 (= res!1695249 (matchR!6119 (regex!7385 r!4008) p!2912))))

(declare-fun b!4142961 () Bool)

(declare-fun res!1695255 () Bool)

(assert (=> b!4142961 (=> res!1695255 e!2570590)))

(declare-fun lt!1477613 () Int)

(declare-fun input!3238 () List!45068)

(declare-fun size!33301 (List!45068) Int)

(assert (=> b!4142961 (= res!1695255 (> lt!1477613 (size!33301 input!3238)))))

(declare-fun res!1695246 () Bool)

(assert (=> start!393932 (=> (not res!1695246) (not e!2570594))))

(assert (=> start!393932 (= res!1695246 (is-Lexer!6972 thiss!25645))))

(assert (=> start!393932 e!2570594))

(declare-fun e!2570583 () Bool)

(assert (=> start!393932 e!2570583))

(declare-fun e!2570581 () Bool)

(assert (=> start!393932 e!2570581))

(assert (=> start!393932 true))

(assert (=> start!393932 e!2570582))

(declare-fun e!2570589 () Bool)

(assert (=> start!393932 e!2570589))

(assert (=> start!393932 e!2570588))

(declare-fun b!4142962 () Bool)

(declare-fun res!1695253 () Bool)

(assert (=> b!4142962 (=> (not res!1695253) (not e!2570594))))

(declare-fun rulesInvariant!6271 (LexerInterface!6974 List!45069) Bool)

(assert (=> b!4142962 (= res!1695253 (rulesInvariant!6271 thiss!25645 rules!3756))))

(declare-fun b!4142963 () Bool)

(declare-fun res!1695244 () Bool)

(assert (=> b!4142963 (=> res!1695244 e!2570590)))

(declare-fun isPrefix!4320 (List!45068 List!45068) Bool)

(assert (=> b!4142963 (= res!1695244 (not (isPrefix!4320 lt!1477620 input!3238)))))

(assert (=> b!4142964 (= e!2570578 (and tp!1262837 tp!1262836))))

(declare-fun b!4142965 () Bool)

(declare-fun e!2570586 () Bool)

(assert (=> b!4142965 (= e!2570580 (not e!2570586))))

(declare-fun res!1695256 () Bool)

(assert (=> b!4142965 (=> res!1695256 e!2570586)))

(assert (=> b!4142965 (= res!1695256 (or (not (is-Cons!44945 rules!3756)) (not (= (h!50365 rules!3756) rBis!149))))))

(declare-datatypes ((Unit!64238 0))(
  ( (Unit!64239) )
))
(declare-fun lt!1477627 () Unit!64238)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2231 (LexerInterface!6974 Rule!14570 List!45069) Unit!64238)

(assert (=> b!4142965 (= lt!1477627 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2231 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4142965 (ruleValid!3191 thiss!25645 rBis!149)))

(declare-fun lt!1477621 () Unit!64238)

(assert (=> b!4142965 (= lt!1477621 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2231 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4142966 () Bool)

(declare-fun res!1695241 () Bool)

(assert (=> b!4142966 (=> res!1695241 e!2570590)))

(assert (=> b!4142966 (= res!1695241 (<= lt!1477613 (size!33301 lt!1477620)))))

(declare-fun b!4142967 () Bool)

(declare-fun tp_is_empty!21503 () Bool)

(declare-fun tp!1262834 () Bool)

(assert (=> b!4142967 (= e!2570589 (and tp_is_empty!21503 tp!1262834))))

(declare-fun b!4142968 () Bool)

(declare-fun res!1695257 () Bool)

(assert (=> b!4142968 (=> (not res!1695257) (not e!2570580))))

(declare-fun getIndex!731 (List!45069 Rule!14570) Int)

(assert (=> b!4142968 (= res!1695257 (< (getIndex!731 rules!3756 rBis!149) (getIndex!731 rules!3756 r!4008)))))

(declare-fun b!4142969 () Bool)

(declare-fun e!2570593 () Bool)

(declare-fun e!2570592 () Bool)

(assert (=> b!4142969 (= e!2570593 e!2570592)))

(declare-fun res!1695251 () Bool)

(assert (=> b!4142969 (=> res!1695251 e!2570592)))

(declare-fun lt!1477625 () Int)

(assert (=> b!4142969 (= res!1695251 (or (> lt!1477625 lt!1477613) (>= lt!1477625 lt!1477613)))))

(declare-fun lt!1477619 () BalanceConc!26786)

(declare-fun size!33302 (BalanceConc!26786) Int)

(assert (=> b!4142969 (= lt!1477625 (size!33302 lt!1477619))))

(declare-datatypes ((Token!13700 0))(
  ( (Token!13701 (value!231028 TokenValue!7615) (rule!10501 Rule!14570) (size!33303 Int) (originalCharacters!7881 List!45068)) )
))
(declare-datatypes ((tuple2!43324 0))(
  ( (tuple2!43325 (_1!24796 Token!13700) (_2!24796 List!45068)) )
))
(declare-fun lt!1477615 () tuple2!43324)

(declare-fun charsOf!4984 (Token!13700) BalanceConc!26786)

(assert (=> b!4142969 (= lt!1477619 (charsOf!4984 (_1!24796 lt!1477615)))))

(declare-datatypes ((Option!9691 0))(
  ( (None!9690) (Some!9690 (v!40334 tuple2!43324)) )
))
(declare-fun lt!1477624 () Option!9691)

(declare-fun get!14673 (Option!9691) tuple2!43324)

(assert (=> b!4142969 (= lt!1477615 (get!14673 lt!1477624))))

(declare-fun b!4142970 () Bool)

(declare-fun res!1695252 () Bool)

(assert (=> b!4142970 (=> (not res!1695252) (not e!2570594))))

(assert (=> b!4142970 (= res!1695252 (contains!9065 rules!3756 r!4008))))

(declare-fun b!4142971 () Bool)

(assert (=> b!4142971 (= e!2570592 e!2570590)))

(declare-fun res!1695245 () Bool)

(assert (=> b!4142971 (=> res!1695245 e!2570590)))

(declare-fun lt!1477622 () List!45068)

(assert (=> b!4142971 (= res!1695245 (not (= lt!1477622 input!3238)))))

(assert (=> b!4142971 (isPrefix!4320 lt!1477620 lt!1477622)))

(declare-fun ++!11625 (List!45068 List!45068) List!45068)

(assert (=> b!4142971 (= lt!1477622 (++!11625 lt!1477620 (_2!24796 lt!1477615)))))

(declare-fun lt!1477614 () Unit!64238)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2949 (List!45068 List!45068) Unit!64238)

(assert (=> b!4142971 (= lt!1477614 (lemmaConcatTwoListThenFirstIsPrefix!2949 lt!1477620 (_2!24796 lt!1477615)))))

(declare-fun list!16464 (BalanceConc!26786) List!45068)

(assert (=> b!4142971 (= lt!1477620 (list!16464 lt!1477619))))

(declare-fun b!4142972 () Bool)

(assert (=> b!4142972 (= e!2570594 e!2570580)))

(declare-fun res!1695254 () Bool)

(assert (=> b!4142972 (=> (not res!1695254) (not e!2570580))))

(declare-fun lt!1477626 () TokenValue!7615)

(declare-fun maxPrefix!4164 (LexerInterface!6974 List!45069 List!45068) Option!9691)

(declare-fun getSuffix!2647 (List!45068 List!45068) List!45068)

(assert (=> b!4142972 (= res!1695254 (= (maxPrefix!4164 thiss!25645 rules!3756 input!3238) (Some!9690 (tuple2!43325 (Token!13701 lt!1477626 r!4008 lt!1477613 p!2912) (getSuffix!2647 input!3238 p!2912)))))))

(assert (=> b!4142972 (= lt!1477613 (size!33301 p!2912))))

(declare-fun lt!1477623 () BalanceConc!26786)

(declare-fun apply!10458 (TokenValueInjection!14658 BalanceConc!26786) TokenValue!7615)

(assert (=> b!4142972 (= lt!1477626 (apply!10458 (transformation!7385 r!4008) lt!1477623))))

(declare-fun lt!1477618 () Unit!64238)

(declare-fun lemmaSemiInverse!2243 (TokenValueInjection!14658 BalanceConc!26786) Unit!64238)

(assert (=> b!4142972 (= lt!1477618 (lemmaSemiInverse!2243 (transformation!7385 r!4008) lt!1477623))))

(declare-fun seqFromList!5502 (List!45068) BalanceConc!26786)

(assert (=> b!4142972 (= lt!1477623 (seqFromList!5502 p!2912))))

(declare-fun b!4142973 () Bool)

(declare-fun tp!1262838 () Bool)

(assert (=> b!4142973 (= e!2570583 (and e!2570584 tp!1262838))))

(declare-fun b!4142974 () Bool)

(assert (=> b!4142974 (= e!2570586 e!2570593)))

(declare-fun res!1695248 () Bool)

(assert (=> b!4142974 (=> res!1695248 e!2570593)))

(declare-fun isEmpty!26810 (Option!9691) Bool)

(assert (=> b!4142974 (= res!1695248 (isEmpty!26810 lt!1477624))))

(declare-fun maxPrefixOneRule!3103 (LexerInterface!6974 Rule!14570 List!45068) Option!9691)

(assert (=> b!4142974 (= lt!1477624 (maxPrefixOneRule!3103 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4142974 (not (= rBis!149 r!4008))))

(declare-fun lt!1477616 () Unit!64238)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!83 (LexerInterface!6974 List!45069 Rule!14570 Rule!14570) Unit!64238)

(assert (=> b!4142974 (= lt!1477616 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!83 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6562 (List!45069) List!45069)

(assert (=> b!4142974 (contains!9065 (tail!6562 rules!3756) r!4008)))

(declare-fun lt!1477617 () Unit!64238)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!89 (List!45069 Rule!14570 Rule!14570) Unit!64238)

(assert (=> b!4142974 (= lt!1477617 (lemmaGetIndexBiggerAndHeadEqThenTailContains!89 rules!3756 rBis!149 r!4008))))

(declare-fun b!4142975 () Bool)

(declare-fun tp!1262830 () Bool)

(assert (=> b!4142975 (= e!2570581 (and tp_is_empty!21503 tp!1262830))))

(declare-fun b!4142976 () Bool)

(declare-fun res!1695243 () Bool)

(assert (=> b!4142976 (=> (not res!1695243) (not e!2570594))))

(assert (=> b!4142976 (= res!1695243 (isPrefix!4320 p!2912 input!3238))))

(assert (= (and start!393932 res!1695246) b!4142976))

(assert (= (and b!4142976 res!1695243) b!4142957))

(assert (= (and b!4142957 res!1695250) b!4142962))

(assert (= (and b!4142962 res!1695253) b!4142970))

(assert (= (and b!4142970 res!1695252) b!4142954))

(assert (= (and b!4142954 res!1695240) b!4142952))

(assert (= (and b!4142952 res!1695247) b!4142972))

(assert (= (and b!4142972 res!1695254) b!4142960))

(assert (= (and b!4142960 res!1695249) b!4142968))

(assert (= (and b!4142968 res!1695257) b!4142959))

(assert (= (and b!4142959 res!1695239) b!4142965))

(assert (= (and b!4142965 (not res!1695256)) b!4142974))

(assert (= (and b!4142974 (not res!1695248)) b!4142969))

(assert (= (and b!4142969 (not res!1695251)) b!4142971))

(assert (= (and b!4142971 (not res!1695245)) b!4142963))

(assert (= (and b!4142963 (not res!1695244)) b!4142961))

(assert (= (and b!4142961 (not res!1695255)) b!4142966))

(assert (= (and b!4142966 (not res!1695241)) b!4142955))

(assert (= (and b!4142955 (not res!1695242)) b!4142958))

(assert (= b!4142953 b!4142964))

(assert (= b!4142973 b!4142953))

(assert (= (and start!393932 (is-Cons!44945 rules!3756)) b!4142973))

(assert (= (and start!393932 (is-Cons!44944 p!2912)) b!4142975))

(assert (= b!4142956 b!4142950))

(assert (= start!393932 b!4142956))

(assert (= (and start!393932 (is-Cons!44944 input!3238)) b!4142967))

(assert (= b!4142949 b!4142951))

(assert (= start!393932 b!4142949))

(declare-fun m!4739245 () Bool)

(assert (=> b!4142972 m!4739245))

(declare-fun m!4739247 () Bool)

(assert (=> b!4142972 m!4739247))

(declare-fun m!4739249 () Bool)

(assert (=> b!4142972 m!4739249))

(declare-fun m!4739251 () Bool)

(assert (=> b!4142972 m!4739251))

(declare-fun m!4739253 () Bool)

(assert (=> b!4142972 m!4739253))

(declare-fun m!4739255 () Bool)

(assert (=> b!4142972 m!4739255))

(declare-fun m!4739257 () Bool)

(assert (=> b!4142961 m!4739257))

(declare-fun m!4739259 () Bool)

(assert (=> b!4142958 m!4739259))

(declare-fun m!4739261 () Bool)

(assert (=> b!4142960 m!4739261))

(declare-fun m!4739263 () Bool)

(assert (=> b!4142976 m!4739263))

(declare-fun m!4739265 () Bool)

(assert (=> b!4142949 m!4739265))

(declare-fun m!4739267 () Bool)

(assert (=> b!4142949 m!4739267))

(declare-fun m!4739269 () Bool)

(assert (=> b!4142962 m!4739269))

(declare-fun m!4739271 () Bool)

(assert (=> b!4142954 m!4739271))

(declare-fun m!4739273 () Bool)

(assert (=> b!4142952 m!4739273))

(declare-fun m!4739275 () Bool)

(assert (=> b!4142966 m!4739275))

(declare-fun m!4739277 () Bool)

(assert (=> b!4142968 m!4739277))

(declare-fun m!4739279 () Bool)

(assert (=> b!4142968 m!4739279))

(declare-fun m!4739281 () Bool)

(assert (=> b!4142953 m!4739281))

(declare-fun m!4739283 () Bool)

(assert (=> b!4142953 m!4739283))

(declare-fun m!4739285 () Bool)

(assert (=> b!4142969 m!4739285))

(declare-fun m!4739287 () Bool)

(assert (=> b!4142969 m!4739287))

(declare-fun m!4739289 () Bool)

(assert (=> b!4142969 m!4739289))

(declare-fun m!4739291 () Bool)

(assert (=> b!4142959 m!4739291))

(declare-fun m!4739293 () Bool)

(assert (=> b!4142955 m!4739293))

(declare-fun m!4739295 () Bool)

(assert (=> b!4142970 m!4739295))

(declare-fun m!4739297 () Bool)

(assert (=> b!4142963 m!4739297))

(declare-fun m!4739299 () Bool)

(assert (=> b!4142956 m!4739299))

(declare-fun m!4739301 () Bool)

(assert (=> b!4142956 m!4739301))

(declare-fun m!4739303 () Bool)

(assert (=> b!4142974 m!4739303))

(declare-fun m!4739305 () Bool)

(assert (=> b!4142974 m!4739305))

(declare-fun m!4739307 () Bool)

(assert (=> b!4142974 m!4739307))

(assert (=> b!4142974 m!4739303))

(declare-fun m!4739309 () Bool)

(assert (=> b!4142974 m!4739309))

(declare-fun m!4739311 () Bool)

(assert (=> b!4142974 m!4739311))

(declare-fun m!4739313 () Bool)

(assert (=> b!4142974 m!4739313))

(declare-fun m!4739315 () Bool)

(assert (=> b!4142957 m!4739315))

(declare-fun m!4739317 () Bool)

(assert (=> b!4142965 m!4739317))

(declare-fun m!4739319 () Bool)

(assert (=> b!4142965 m!4739319))

(declare-fun m!4739321 () Bool)

(assert (=> b!4142965 m!4739321))

(declare-fun m!4739323 () Bool)

(assert (=> b!4142971 m!4739323))

(declare-fun m!4739325 () Bool)

(assert (=> b!4142971 m!4739325))

(declare-fun m!4739327 () Bool)

(assert (=> b!4142971 m!4739327))

(declare-fun m!4739329 () Bool)

(assert (=> b!4142971 m!4739329))

(push 1)

(assert (not b!4142973))

(assert (not b!4142960))

(assert (not b!4142952))

(assert tp_is_empty!21503)

(assert (not b!4142959))

(assert (not b!4142976))

(assert (not b_next!118763))

(assert (not b!4142961))

(assert (not b!4142970))

(assert (not b_next!118765))

(assert (not b_next!118759))

(assert (not b!4142965))

(assert (not b!4142957))

(assert (not b!4142949))

(assert b_and!321833)

(assert (not b!4142955))

(assert (not b!4142969))

(assert (not b!4142968))

(assert (not b!4142962))

(assert b_and!321831)

(assert (not b!4142972))

(assert (not b!4142958))

(assert b_and!321829)

(assert b_and!321839)

(assert (not b!4142975))

(assert b_and!321835)

(assert (not b!4142953))

(assert (not b!4142966))

(assert (not b!4142974))

(assert (not b_next!118761))

(assert (not b!4142963))

(assert (not b!4142954))

(assert (not b!4142967))

(assert (not b_next!118767))

(assert (not b!4142971))

(assert (not b_next!118769))

(assert (not b!4142956))

(assert b_and!321837)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!118759))

(assert b_and!321833)

(assert b_and!321831)

(assert (not b_next!118763))

(assert (not b_next!118761))

(assert (not b_next!118767))

(assert (not b_next!118765))

(assert (not b_next!118769))

(assert b_and!321837)

(assert b_and!321829)

(assert b_and!321835)

(assert b_and!321839)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4143072 () Bool)

(declare-fun e!2570655 () Bool)

(assert (=> b!4143072 (= e!2570655 (>= (size!33301 input!3238) (size!33301 p!2912)))))

(declare-fun b!4143069 () Bool)

(declare-fun e!2570656 () Bool)

(declare-fun e!2570657 () Bool)

(assert (=> b!4143069 (= e!2570656 e!2570657)))

(declare-fun res!1695335 () Bool)

(assert (=> b!4143069 (=> (not res!1695335) (not e!2570657))))

(assert (=> b!4143069 (= res!1695335 (not (is-Nil!44944 input!3238)))))

(declare-fun d!1226348 () Bool)

(assert (=> d!1226348 e!2570655))

(declare-fun res!1695334 () Bool)

(assert (=> d!1226348 (=> res!1695334 e!2570655)))

(declare-fun lt!1477675 () Bool)

(assert (=> d!1226348 (= res!1695334 (not lt!1477675))))

(assert (=> d!1226348 (= lt!1477675 e!2570656)))

(declare-fun res!1695332 () Bool)

(assert (=> d!1226348 (=> res!1695332 e!2570656)))

(assert (=> d!1226348 (= res!1695332 (is-Nil!44944 p!2912))))

(assert (=> d!1226348 (= (isPrefix!4320 p!2912 input!3238) lt!1477675)))

(declare-fun b!4143070 () Bool)

(declare-fun res!1695333 () Bool)

(assert (=> b!4143070 (=> (not res!1695333) (not e!2570657))))

(declare-fun head!8741 (List!45068) C!24766)

(assert (=> b!4143070 (= res!1695333 (= (head!8741 p!2912) (head!8741 input!3238)))))

(declare-fun b!4143071 () Bool)

(declare-fun tail!6564 (List!45068) List!45068)

(assert (=> b!4143071 (= e!2570657 (isPrefix!4320 (tail!6564 p!2912) (tail!6564 input!3238)))))

(assert (= (and d!1226348 (not res!1695332)) b!4143069))

(assert (= (and b!4143069 res!1695335) b!4143070))

(assert (= (and b!4143070 res!1695333) b!4143071))

(assert (= (and d!1226348 (not res!1695334)) b!4143072))

(assert (=> b!4143072 m!4739257))

(assert (=> b!4143072 m!4739245))

(declare-fun m!4739417 () Bool)

(assert (=> b!4143070 m!4739417))

(declare-fun m!4739419 () Bool)

(assert (=> b!4143070 m!4739419))

(declare-fun m!4739421 () Bool)

(assert (=> b!4143071 m!4739421))

(declare-fun m!4739423 () Bool)

(assert (=> b!4143071 m!4739423))

(assert (=> b!4143071 m!4739421))

(assert (=> b!4143071 m!4739423))

(declare-fun m!4739425 () Bool)

(assert (=> b!4143071 m!4739425))

(assert (=> b!4142976 d!1226348))

(declare-fun b!4143091 () Bool)

(declare-fun e!2570674 () Bool)

(declare-fun e!2570672 () Bool)

(assert (=> b!4143091 (= e!2570674 e!2570672)))

(declare-fun res!1695347 () Bool)

(declare-fun nullable!4328 (Regex!12290) Bool)

(assert (=> b!4143091 (= res!1695347 (not (nullable!4328 (reg!12619 (regex!7385 rBis!149)))))))

(assert (=> b!4143091 (=> (not res!1695347) (not e!2570672))))

(declare-fun b!4143092 () Bool)

(declare-fun e!2570675 () Bool)

(assert (=> b!4143092 (= e!2570675 e!2570674)))

(declare-fun c!710088 () Bool)

(assert (=> b!4143092 (= c!710088 (is-Star!12290 (regex!7385 rBis!149)))))

(declare-fun bm!290556 () Bool)

(declare-fun call!290562 () Bool)

(declare-fun c!710089 () Bool)

(assert (=> bm!290556 (= call!290562 (validRegex!5536 (ite c!710089 (regOne!25093 (regex!7385 rBis!149)) (regOne!25092 (regex!7385 rBis!149)))))))

(declare-fun b!4143093 () Bool)

(declare-fun res!1695346 () Bool)

(declare-fun e!2570677 () Bool)

(assert (=> b!4143093 (=> (not res!1695346) (not e!2570677))))

(assert (=> b!4143093 (= res!1695346 call!290562)))

(declare-fun e!2570676 () Bool)

(assert (=> b!4143093 (= e!2570676 e!2570677)))

(declare-fun b!4143094 () Bool)

(declare-fun e!2570678 () Bool)

(declare-fun call!290561 () Bool)

(assert (=> b!4143094 (= e!2570678 call!290561)))

(declare-fun bm!290557 () Bool)

(declare-fun call!290563 () Bool)

(assert (=> bm!290557 (= call!290563 (validRegex!5536 (ite c!710088 (reg!12619 (regex!7385 rBis!149)) (ite c!710089 (regTwo!25093 (regex!7385 rBis!149)) (regTwo!25092 (regex!7385 rBis!149))))))))

(declare-fun d!1226350 () Bool)

(declare-fun res!1695350 () Bool)

(assert (=> d!1226350 (=> res!1695350 e!2570675)))

(assert (=> d!1226350 (= res!1695350 (is-ElementMatch!12290 (regex!7385 rBis!149)))))

(assert (=> d!1226350 (= (validRegex!5536 (regex!7385 rBis!149)) e!2570675)))

(declare-fun b!4143095 () Bool)

(declare-fun e!2570673 () Bool)

(assert (=> b!4143095 (= e!2570673 e!2570678)))

(declare-fun res!1695349 () Bool)

(assert (=> b!4143095 (=> (not res!1695349) (not e!2570678))))

(assert (=> b!4143095 (= res!1695349 call!290562)))

(declare-fun bm!290558 () Bool)

(assert (=> bm!290558 (= call!290561 call!290563)))

(declare-fun b!4143096 () Bool)

(assert (=> b!4143096 (= e!2570672 call!290563)))

(declare-fun b!4143097 () Bool)

(assert (=> b!4143097 (= e!2570677 call!290561)))

(declare-fun b!4143098 () Bool)

(declare-fun res!1695348 () Bool)

(assert (=> b!4143098 (=> res!1695348 e!2570673)))

(assert (=> b!4143098 (= res!1695348 (not (is-Concat!19906 (regex!7385 rBis!149))))))

(assert (=> b!4143098 (= e!2570676 e!2570673)))

(declare-fun b!4143099 () Bool)

(assert (=> b!4143099 (= e!2570674 e!2570676)))

(assert (=> b!4143099 (= c!710089 (is-Union!12290 (regex!7385 rBis!149)))))

(assert (= (and d!1226350 (not res!1695350)) b!4143092))

(assert (= (and b!4143092 c!710088) b!4143091))

(assert (= (and b!4143092 (not c!710088)) b!4143099))

(assert (= (and b!4143091 res!1695347) b!4143096))

(assert (= (and b!4143099 c!710089) b!4143093))

(assert (= (and b!4143099 (not c!710089)) b!4143098))

(assert (= (and b!4143093 res!1695346) b!4143097))

(assert (= (and b!4143098 (not res!1695348)) b!4143095))

(assert (= (and b!4143095 res!1695349) b!4143094))

(assert (= (or b!4143093 b!4143095) bm!290556))

(assert (= (or b!4143097 b!4143094) bm!290558))

(assert (= (or b!4143096 bm!290558) bm!290557))

(declare-fun m!4739427 () Bool)

(assert (=> b!4143091 m!4739427))

(declare-fun m!4739429 () Bool)

(assert (=> bm!290556 m!4739429))

(declare-fun m!4739431 () Bool)

(assert (=> bm!290557 m!4739431))

(assert (=> b!4142955 d!1226350))

(declare-fun d!1226352 () Bool)

(declare-fun lt!1477678 () Bool)

(declare-fun content!6950 (List!45069) (Set Rule!14570))

(assert (=> d!1226352 (= lt!1477678 (set.member rBis!149 (content!6950 rules!3756)))))

(declare-fun e!2570683 () Bool)

(assert (=> d!1226352 (= lt!1477678 e!2570683)))

(declare-fun res!1695356 () Bool)

(assert (=> d!1226352 (=> (not res!1695356) (not e!2570683))))

(assert (=> d!1226352 (= res!1695356 (is-Cons!44945 rules!3756))))

(assert (=> d!1226352 (= (contains!9065 rules!3756 rBis!149) lt!1477678)))

(declare-fun b!4143104 () Bool)

(declare-fun e!2570684 () Bool)

(assert (=> b!4143104 (= e!2570683 e!2570684)))

(declare-fun res!1695355 () Bool)

(assert (=> b!4143104 (=> res!1695355 e!2570684)))

(assert (=> b!4143104 (= res!1695355 (= (h!50365 rules!3756) rBis!149))))

(declare-fun b!4143105 () Bool)

(assert (=> b!4143105 (= e!2570684 (contains!9065 (t!342540 rules!3756) rBis!149))))

(assert (= (and d!1226352 res!1695356) b!4143104))

(assert (= (and b!4143104 (not res!1695355)) b!4143105))

(declare-fun m!4739433 () Bool)

(assert (=> d!1226352 m!4739433))

(declare-fun m!4739435 () Bool)

(assert (=> d!1226352 m!4739435))

(declare-fun m!4739437 () Bool)

(assert (=> b!4143105 m!4739437))

(assert (=> b!4142954 d!1226352))

(declare-fun d!1226354 () Bool)

(assert (=> d!1226354 (ruleValid!3191 thiss!25645 r!4008)))

(declare-fun lt!1477681 () Unit!64238)

(declare-fun choose!25349 (LexerInterface!6974 Rule!14570 List!45069) Unit!64238)

(assert (=> d!1226354 (= lt!1477681 (choose!25349 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1226354 (contains!9065 rules!3756 r!4008)))

(assert (=> d!1226354 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2231 thiss!25645 r!4008 rules!3756) lt!1477681)))

(declare-fun bs!595284 () Bool)

(assert (= bs!595284 d!1226354))

(assert (=> bs!595284 m!4739291))

(declare-fun m!4739439 () Bool)

(assert (=> bs!595284 m!4739439))

(assert (=> bs!595284 m!4739295))

(assert (=> b!4142965 d!1226354))

(declare-fun d!1226356 () Bool)

(declare-fun res!1695361 () Bool)

(declare-fun e!2570687 () Bool)

(assert (=> d!1226356 (=> (not res!1695361) (not e!2570687))))

(assert (=> d!1226356 (= res!1695361 (validRegex!5536 (regex!7385 rBis!149)))))

(assert (=> d!1226356 (= (ruleValid!3191 thiss!25645 rBis!149) e!2570687)))

(declare-fun b!4143110 () Bool)

(declare-fun res!1695362 () Bool)

(assert (=> b!4143110 (=> (not res!1695362) (not e!2570687))))

(assert (=> b!4143110 (= res!1695362 (not (nullable!4328 (regex!7385 rBis!149))))))

(declare-fun b!4143111 () Bool)

(assert (=> b!4143111 (= e!2570687 (not (= (tag!8245 rBis!149) (String!51828 ""))))))

(assert (= (and d!1226356 res!1695361) b!4143110))

(assert (= (and b!4143110 res!1695362) b!4143111))

(assert (=> d!1226356 m!4739293))

(declare-fun m!4739441 () Bool)

(assert (=> b!4143110 m!4739441))

(assert (=> b!4142965 d!1226356))

(declare-fun d!1226358 () Bool)

(assert (=> d!1226358 (ruleValid!3191 thiss!25645 rBis!149)))

(declare-fun lt!1477682 () Unit!64238)

(assert (=> d!1226358 (= lt!1477682 (choose!25349 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1226358 (contains!9065 rules!3756 rBis!149)))

(assert (=> d!1226358 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2231 thiss!25645 rBis!149 rules!3756) lt!1477682)))

(declare-fun bs!595285 () Bool)

(assert (= bs!595285 d!1226358))

(assert (=> bs!595285 m!4739319))

(declare-fun m!4739443 () Bool)

(assert (=> bs!595285 m!4739443))

(assert (=> bs!595285 m!4739271))

(assert (=> b!4142965 d!1226358))

(declare-fun d!1226360 () Bool)

(assert (=> d!1226360 (= (inv!59550 (tag!8245 r!4008)) (= (mod (str.len (value!231027 (tag!8245 r!4008))) 2) 0))))

(assert (=> b!4142956 d!1226360))

(declare-fun d!1226362 () Bool)

(declare-fun res!1695365 () Bool)

(declare-fun e!2570690 () Bool)

(assert (=> d!1226362 (=> (not res!1695365) (not e!2570690))))

(declare-fun semiInverseModEq!3192 (Int Int) Bool)

(assert (=> d!1226362 (= res!1695365 (semiInverseModEq!3192 (toChars!9908 (transformation!7385 r!4008)) (toValue!10049 (transformation!7385 r!4008))))))

(assert (=> d!1226362 (= (inv!59553 (transformation!7385 r!4008)) e!2570690)))

(declare-fun b!4143114 () Bool)

(declare-fun equivClasses!3091 (Int Int) Bool)

(assert (=> b!4143114 (= e!2570690 (equivClasses!3091 (toChars!9908 (transformation!7385 r!4008)) (toValue!10049 (transformation!7385 r!4008))))))

(assert (= (and d!1226362 res!1695365) b!4143114))

(declare-fun m!4739445 () Bool)

(assert (=> d!1226362 m!4739445))

(declare-fun m!4739447 () Bool)

(assert (=> b!4143114 m!4739447))

(assert (=> b!4142956 d!1226362))

(declare-fun d!1226364 () Bool)

(declare-fun lt!1477685 () Int)

(assert (=> d!1226364 (>= lt!1477685 0)))

(declare-fun e!2570693 () Int)

(assert (=> d!1226364 (= lt!1477685 e!2570693)))

(declare-fun c!710092 () Bool)

(assert (=> d!1226364 (= c!710092 (is-Nil!44944 lt!1477620))))

(assert (=> d!1226364 (= (size!33301 lt!1477620) lt!1477685)))

(declare-fun b!4143119 () Bool)

(assert (=> b!4143119 (= e!2570693 0)))

(declare-fun b!4143120 () Bool)

(assert (=> b!4143120 (= e!2570693 (+ 1 (size!33301 (t!342539 lt!1477620))))))

(assert (= (and d!1226364 c!710092) b!4143119))

(assert (= (and d!1226364 (not c!710092)) b!4143120))

(declare-fun m!4739449 () Bool)

(assert (=> b!4143120 m!4739449))

(assert (=> b!4142966 d!1226364))

(declare-fun b!4143130 () Bool)

(declare-fun e!2570699 () Int)

(declare-fun e!2570700 () Int)

(assert (=> b!4143130 (= e!2570699 e!2570700)))

(declare-fun c!710098 () Bool)

(assert (=> b!4143130 (= c!710098 (and (is-Cons!44945 rules!3756) (not (= (h!50365 rules!3756) rBis!149))))))

(declare-fun d!1226366 () Bool)

(declare-fun lt!1477688 () Int)

(assert (=> d!1226366 (>= lt!1477688 0)))

(assert (=> d!1226366 (= lt!1477688 e!2570699)))

(declare-fun c!710097 () Bool)

(assert (=> d!1226366 (= c!710097 (and (is-Cons!44945 rules!3756) (= (h!50365 rules!3756) rBis!149)))))

(assert (=> d!1226366 (contains!9065 rules!3756 rBis!149)))

(assert (=> d!1226366 (= (getIndex!731 rules!3756 rBis!149) lt!1477688)))

(declare-fun b!4143132 () Bool)

(assert (=> b!4143132 (= e!2570700 (- 1))))

(declare-fun b!4143129 () Bool)

(assert (=> b!4143129 (= e!2570699 0)))

(declare-fun b!4143131 () Bool)

(assert (=> b!4143131 (= e!2570700 (+ 1 (getIndex!731 (t!342540 rules!3756) rBis!149)))))

(assert (= (and d!1226366 c!710097) b!4143129))

(assert (= (and d!1226366 (not c!710097)) b!4143130))

(assert (= (and b!4143130 c!710098) b!4143131))

(assert (= (and b!4143130 (not c!710098)) b!4143132))

(assert (=> d!1226366 m!4739271))

(declare-fun m!4739451 () Bool)

(assert (=> b!4143131 m!4739451))

(assert (=> b!4142968 d!1226366))

(declare-fun b!4143134 () Bool)

(declare-fun e!2570701 () Int)

(declare-fun e!2570702 () Int)

(assert (=> b!4143134 (= e!2570701 e!2570702)))

(declare-fun c!710100 () Bool)

(assert (=> b!4143134 (= c!710100 (and (is-Cons!44945 rules!3756) (not (= (h!50365 rules!3756) r!4008))))))

(declare-fun d!1226370 () Bool)

(declare-fun lt!1477689 () Int)

(assert (=> d!1226370 (>= lt!1477689 0)))

(assert (=> d!1226370 (= lt!1477689 e!2570701)))

(declare-fun c!710099 () Bool)

(assert (=> d!1226370 (= c!710099 (and (is-Cons!44945 rules!3756) (= (h!50365 rules!3756) r!4008)))))

(assert (=> d!1226370 (contains!9065 rules!3756 r!4008)))

(assert (=> d!1226370 (= (getIndex!731 rules!3756 r!4008) lt!1477689)))

(declare-fun b!4143136 () Bool)

(assert (=> b!4143136 (= e!2570702 (- 1))))

(declare-fun b!4143133 () Bool)

(assert (=> b!4143133 (= e!2570701 0)))

(declare-fun b!4143135 () Bool)

(assert (=> b!4143135 (= e!2570702 (+ 1 (getIndex!731 (t!342540 rules!3756) r!4008)))))

(assert (= (and d!1226370 c!710099) b!4143133))

(assert (= (and d!1226370 (not c!710099)) b!4143134))

(assert (= (and b!4143134 c!710100) b!4143135))

(assert (= (and b!4143134 (not c!710100)) b!4143136))

(assert (=> d!1226370 m!4739295))

(declare-fun m!4739453 () Bool)

(assert (=> b!4143135 m!4739453))

(assert (=> b!4142968 d!1226370))

(declare-fun d!1226372 () Bool)

(assert (=> d!1226372 (= (isEmpty!26809 rules!3756) (is-Nil!44945 rules!3756))))

(assert (=> b!4142957 d!1226372))

(declare-fun d!1226374 () Bool)

(declare-fun res!1695366 () Bool)

(declare-fun e!2570703 () Bool)

(assert (=> d!1226374 (=> (not res!1695366) (not e!2570703))))

(assert (=> d!1226374 (= res!1695366 (validRegex!5536 (regex!7385 r!4008)))))

(assert (=> d!1226374 (= (ruleValid!3191 thiss!25645 r!4008) e!2570703)))

(declare-fun b!4143137 () Bool)

(declare-fun res!1695367 () Bool)

(assert (=> b!4143137 (=> (not res!1695367) (not e!2570703))))

(assert (=> b!4143137 (= res!1695367 (not (nullable!4328 (regex!7385 r!4008))))))

(declare-fun b!4143138 () Bool)

(assert (=> b!4143138 (= e!2570703 (not (= (tag!8245 r!4008) (String!51828 ""))))))

(assert (= (and d!1226374 res!1695366) b!4143137))

(assert (= (and b!4143137 res!1695367) b!4143138))

(declare-fun m!4739455 () Bool)

(assert (=> d!1226374 m!4739455))

(declare-fun m!4739457 () Bool)

(assert (=> b!4143137 m!4739457))

(assert (=> b!4142959 d!1226374))

(declare-fun b!4143185 () Bool)

(declare-fun res!1695400 () Bool)

(declare-fun e!2570737 () Bool)

(assert (=> b!4143185 (=> res!1695400 e!2570737)))

(declare-fun e!2570734 () Bool)

(assert (=> b!4143185 (= res!1695400 e!2570734)))

(declare-fun res!1695401 () Bool)

(assert (=> b!4143185 (=> (not res!1695401) (not e!2570734))))

(declare-fun lt!1477692 () Bool)

(assert (=> b!4143185 (= res!1695401 lt!1477692)))

(declare-fun b!4143186 () Bool)

(declare-fun e!2570735 () Bool)

(declare-fun e!2570732 () Bool)

(assert (=> b!4143186 (= e!2570735 e!2570732)))

(declare-fun c!710111 () Bool)

(assert (=> b!4143186 (= c!710111 (is-EmptyLang!12290 (regex!7385 rBis!149)))))

(declare-fun b!4143187 () Bool)

(declare-fun e!2570738 () Bool)

(assert (=> b!4143187 (= e!2570738 (not (= (head!8741 lt!1477620) (c!710080 (regex!7385 rBis!149)))))))

(declare-fun bm!290567 () Bool)

(declare-fun call!290572 () Bool)

(assert (=> bm!290567 (= call!290572 (isEmpty!26808 lt!1477620))))

(declare-fun b!4143188 () Bool)

(declare-fun res!1695397 () Bool)

(assert (=> b!4143188 (=> res!1695397 e!2570738)))

(assert (=> b!4143188 (= res!1695397 (not (isEmpty!26808 (tail!6564 lt!1477620))))))

(declare-fun b!4143189 () Bool)

(declare-fun e!2570733 () Bool)

(assert (=> b!4143189 (= e!2570737 e!2570733)))

(declare-fun res!1695396 () Bool)

(assert (=> b!4143189 (=> (not res!1695396) (not e!2570733))))

(assert (=> b!4143189 (= res!1695396 (not lt!1477692))))

(declare-fun b!4143190 () Bool)

(declare-fun e!2570736 () Bool)

(declare-fun derivativeStep!3723 (Regex!12290 C!24766) Regex!12290)

(assert (=> b!4143190 (= e!2570736 (matchR!6119 (derivativeStep!3723 (regex!7385 rBis!149) (head!8741 lt!1477620)) (tail!6564 lt!1477620)))))

(declare-fun b!4143191 () Bool)

(assert (=> b!4143191 (= e!2570732 (not lt!1477692))))

(declare-fun b!4143192 () Bool)

(assert (=> b!4143192 (= e!2570734 (= (head!8741 lt!1477620) (c!710080 (regex!7385 rBis!149))))))

(declare-fun b!4143193 () Bool)

(declare-fun res!1695394 () Bool)

(assert (=> b!4143193 (=> res!1695394 e!2570737)))

(assert (=> b!4143193 (= res!1695394 (not (is-ElementMatch!12290 (regex!7385 rBis!149))))))

(assert (=> b!4143193 (= e!2570732 e!2570737)))

(declare-fun b!4143194 () Bool)

(assert (=> b!4143194 (= e!2570735 (= lt!1477692 call!290572))))

(declare-fun b!4143195 () Bool)

(declare-fun res!1695398 () Bool)

(assert (=> b!4143195 (=> (not res!1695398) (not e!2570734))))

(assert (=> b!4143195 (= res!1695398 (not call!290572))))

(declare-fun b!4143196 () Bool)

(assert (=> b!4143196 (= e!2570736 (nullable!4328 (regex!7385 rBis!149)))))

(declare-fun b!4143197 () Bool)

(assert (=> b!4143197 (= e!2570733 e!2570738)))

(declare-fun res!1695395 () Bool)

(assert (=> b!4143197 (=> res!1695395 e!2570738)))

(assert (=> b!4143197 (= res!1695395 call!290572)))

(declare-fun d!1226376 () Bool)

(assert (=> d!1226376 e!2570735))

(declare-fun c!710113 () Bool)

(assert (=> d!1226376 (= c!710113 (is-EmptyExpr!12290 (regex!7385 rBis!149)))))

(assert (=> d!1226376 (= lt!1477692 e!2570736)))

(declare-fun c!710112 () Bool)

(assert (=> d!1226376 (= c!710112 (isEmpty!26808 lt!1477620))))

(assert (=> d!1226376 (validRegex!5536 (regex!7385 rBis!149))))

(assert (=> d!1226376 (= (matchR!6119 (regex!7385 rBis!149) lt!1477620) lt!1477692)))

(declare-fun b!4143198 () Bool)

(declare-fun res!1695399 () Bool)

(assert (=> b!4143198 (=> (not res!1695399) (not e!2570734))))

(assert (=> b!4143198 (= res!1695399 (isEmpty!26808 (tail!6564 lt!1477620)))))

(assert (= (and d!1226376 c!710112) b!4143196))

(assert (= (and d!1226376 (not c!710112)) b!4143190))

(assert (= (and d!1226376 c!710113) b!4143194))

(assert (= (and d!1226376 (not c!710113)) b!4143186))

(assert (= (and b!4143186 c!710111) b!4143191))

(assert (= (and b!4143186 (not c!710111)) b!4143193))

(assert (= (and b!4143193 (not res!1695394)) b!4143185))

(assert (= (and b!4143185 res!1695401) b!4143195))

(assert (= (and b!4143195 res!1695398) b!4143198))

(assert (= (and b!4143198 res!1695399) b!4143192))

(assert (= (and b!4143185 (not res!1695400)) b!4143189))

(assert (= (and b!4143189 res!1695396) b!4143197))

(assert (= (and b!4143197 (not res!1695395)) b!4143188))

(assert (= (and b!4143188 (not res!1695397)) b!4143187))

(assert (= (or b!4143194 b!4143195 b!4143197) bm!290567))

(declare-fun m!4739459 () Bool)

(assert (=> d!1226376 m!4739459))

(assert (=> d!1226376 m!4739293))

(declare-fun m!4739461 () Bool)

(assert (=> b!4143187 m!4739461))

(assert (=> bm!290567 m!4739459))

(assert (=> b!4143196 m!4739441))

(declare-fun m!4739463 () Bool)

(assert (=> b!4143198 m!4739463))

(assert (=> b!4143198 m!4739463))

(declare-fun m!4739465 () Bool)

(assert (=> b!4143198 m!4739465))

(assert (=> b!4143192 m!4739461))

(assert (=> b!4143188 m!4739463))

(assert (=> b!4143188 m!4739463))

(assert (=> b!4143188 m!4739465))

(assert (=> b!4143190 m!4739461))

(assert (=> b!4143190 m!4739461))

(declare-fun m!4739467 () Bool)

(assert (=> b!4143190 m!4739467))

(assert (=> b!4143190 m!4739463))

(assert (=> b!4143190 m!4739467))

(assert (=> b!4143190 m!4739463))

(declare-fun m!4739469 () Bool)

(assert (=> b!4143190 m!4739469))

(assert (=> b!4142958 d!1226376))

(declare-fun d!1226378 () Bool)

(declare-fun lt!1477695 () Int)

(assert (=> d!1226378 (= lt!1477695 (size!33301 (list!16464 lt!1477619)))))

(declare-fun size!33307 (Conc!13596) Int)

(assert (=> d!1226378 (= lt!1477695 (size!33307 (c!710079 lt!1477619)))))

(assert (=> d!1226378 (= (size!33302 lt!1477619) lt!1477695)))

(declare-fun bs!595286 () Bool)

(assert (= bs!595286 d!1226378))

(assert (=> bs!595286 m!4739329))

(assert (=> bs!595286 m!4739329))

(declare-fun m!4739471 () Bool)

(assert (=> bs!595286 m!4739471))

(declare-fun m!4739473 () Bool)

(assert (=> bs!595286 m!4739473))

(assert (=> b!4142969 d!1226378))

(declare-fun d!1226380 () Bool)

(declare-fun lt!1477698 () BalanceConc!26786)

(assert (=> d!1226380 (= (list!16464 lt!1477698) (originalCharacters!7881 (_1!24796 lt!1477615)))))

(declare-fun dynLambda!19338 (Int TokenValue!7615) BalanceConc!26786)

(assert (=> d!1226380 (= lt!1477698 (dynLambda!19338 (toChars!9908 (transformation!7385 (rule!10501 (_1!24796 lt!1477615)))) (value!231028 (_1!24796 lt!1477615))))))

(assert (=> d!1226380 (= (charsOf!4984 (_1!24796 lt!1477615)) lt!1477698)))

(declare-fun b_lambda!121795 () Bool)

(assert (=> (not b_lambda!121795) (not d!1226380)))

(declare-fun t!342545 () Bool)

(declare-fun tb!248691 () Bool)

(assert (=> (and b!4142950 (= (toChars!9908 (transformation!7385 r!4008)) (toChars!9908 (transformation!7385 (rule!10501 (_1!24796 lt!1477615))))) t!342545) tb!248691))

(declare-fun b!4143212 () Bool)

(declare-fun e!2570748 () Bool)

(declare-fun tp!1262879 () Bool)

(declare-fun inv!59555 (Conc!13596) Bool)

(assert (=> b!4143212 (= e!2570748 (and (inv!59555 (c!710079 (dynLambda!19338 (toChars!9908 (transformation!7385 (rule!10501 (_1!24796 lt!1477615)))) (value!231028 (_1!24796 lt!1477615))))) tp!1262879))))

(declare-fun result!302428 () Bool)

(declare-fun inv!59556 (BalanceConc!26786) Bool)

(assert (=> tb!248691 (= result!302428 (and (inv!59556 (dynLambda!19338 (toChars!9908 (transformation!7385 (rule!10501 (_1!24796 lt!1477615)))) (value!231028 (_1!24796 lt!1477615)))) e!2570748))))

(assert (= tb!248691 b!4143212))

(declare-fun m!4739481 () Bool)

(assert (=> b!4143212 m!4739481))

(declare-fun m!4739483 () Bool)

(assert (=> tb!248691 m!4739483))

(assert (=> d!1226380 t!342545))

(declare-fun b_and!321853 () Bool)

(assert (= b_and!321831 (and (=> t!342545 result!302428) b_and!321853)))

(declare-fun t!342547 () Bool)

(declare-fun tb!248693 () Bool)

(assert (=> (and b!4142951 (= (toChars!9908 (transformation!7385 rBis!149)) (toChars!9908 (transformation!7385 (rule!10501 (_1!24796 lt!1477615))))) t!342547) tb!248693))

(declare-fun result!302432 () Bool)

(assert (= result!302432 result!302428))

(assert (=> d!1226380 t!342547))

(declare-fun b_and!321855 () Bool)

(assert (= b_and!321835 (and (=> t!342547 result!302432) b_and!321855)))

(declare-fun tb!248695 () Bool)

(declare-fun t!342549 () Bool)

(assert (=> (and b!4142964 (= (toChars!9908 (transformation!7385 (h!50365 rules!3756))) (toChars!9908 (transformation!7385 (rule!10501 (_1!24796 lt!1477615))))) t!342549) tb!248695))

(declare-fun result!302434 () Bool)

(assert (= result!302434 result!302428))

(assert (=> d!1226380 t!342549))

(declare-fun b_and!321857 () Bool)

(assert (= b_and!321839 (and (=> t!342549 result!302434) b_and!321857)))

(declare-fun m!4739485 () Bool)

(assert (=> d!1226380 m!4739485))

(declare-fun m!4739487 () Bool)

(assert (=> d!1226380 m!4739487))

(assert (=> b!4142969 d!1226380))

(declare-fun d!1226386 () Bool)

(assert (=> d!1226386 (= (get!14673 lt!1477624) (v!40334 lt!1477624))))

(assert (=> b!4142969 d!1226386))

(declare-fun b!4143213 () Bool)

(declare-fun res!1695413 () Bool)

(declare-fun e!2570754 () Bool)

(assert (=> b!4143213 (=> res!1695413 e!2570754)))

(declare-fun e!2570751 () Bool)

(assert (=> b!4143213 (= res!1695413 e!2570751)))

(declare-fun res!1695414 () Bool)

(assert (=> b!4143213 (=> (not res!1695414) (not e!2570751))))

(declare-fun lt!1477699 () Bool)

(assert (=> b!4143213 (= res!1695414 lt!1477699)))

(declare-fun b!4143214 () Bool)

(declare-fun e!2570752 () Bool)

(declare-fun e!2570749 () Bool)

(assert (=> b!4143214 (= e!2570752 e!2570749)))

(declare-fun c!710116 () Bool)

(assert (=> b!4143214 (= c!710116 (is-EmptyLang!12290 (regex!7385 r!4008)))))

(declare-fun b!4143215 () Bool)

(declare-fun e!2570755 () Bool)

(assert (=> b!4143215 (= e!2570755 (not (= (head!8741 p!2912) (c!710080 (regex!7385 r!4008)))))))

(declare-fun bm!290571 () Bool)

(declare-fun call!290576 () Bool)

(assert (=> bm!290571 (= call!290576 (isEmpty!26808 p!2912))))

(declare-fun b!4143216 () Bool)

(declare-fun res!1695410 () Bool)

(assert (=> b!4143216 (=> res!1695410 e!2570755)))

(assert (=> b!4143216 (= res!1695410 (not (isEmpty!26808 (tail!6564 p!2912))))))

(declare-fun b!4143217 () Bool)

(declare-fun e!2570750 () Bool)

(assert (=> b!4143217 (= e!2570754 e!2570750)))

(declare-fun res!1695409 () Bool)

(assert (=> b!4143217 (=> (not res!1695409) (not e!2570750))))

(assert (=> b!4143217 (= res!1695409 (not lt!1477699))))

(declare-fun b!4143218 () Bool)

(declare-fun e!2570753 () Bool)

(assert (=> b!4143218 (= e!2570753 (matchR!6119 (derivativeStep!3723 (regex!7385 r!4008) (head!8741 p!2912)) (tail!6564 p!2912)))))

(declare-fun b!4143219 () Bool)

(assert (=> b!4143219 (= e!2570749 (not lt!1477699))))

(declare-fun b!4143220 () Bool)

(assert (=> b!4143220 (= e!2570751 (= (head!8741 p!2912) (c!710080 (regex!7385 r!4008))))))

(declare-fun b!4143221 () Bool)

(declare-fun res!1695407 () Bool)

(assert (=> b!4143221 (=> res!1695407 e!2570754)))

(assert (=> b!4143221 (= res!1695407 (not (is-ElementMatch!12290 (regex!7385 r!4008))))))

(assert (=> b!4143221 (= e!2570749 e!2570754)))

(declare-fun b!4143222 () Bool)

(assert (=> b!4143222 (= e!2570752 (= lt!1477699 call!290576))))

(declare-fun b!4143223 () Bool)

(declare-fun res!1695411 () Bool)

(assert (=> b!4143223 (=> (not res!1695411) (not e!2570751))))

(assert (=> b!4143223 (= res!1695411 (not call!290576))))

(declare-fun b!4143224 () Bool)

(assert (=> b!4143224 (= e!2570753 (nullable!4328 (regex!7385 r!4008)))))

(declare-fun b!4143225 () Bool)

(assert (=> b!4143225 (= e!2570750 e!2570755)))

(declare-fun res!1695408 () Bool)

(assert (=> b!4143225 (=> res!1695408 e!2570755)))

(assert (=> b!4143225 (= res!1695408 call!290576)))

(declare-fun d!1226388 () Bool)

(assert (=> d!1226388 e!2570752))

(declare-fun c!710118 () Bool)

(assert (=> d!1226388 (= c!710118 (is-EmptyExpr!12290 (regex!7385 r!4008)))))

(assert (=> d!1226388 (= lt!1477699 e!2570753)))

(declare-fun c!710117 () Bool)

(assert (=> d!1226388 (= c!710117 (isEmpty!26808 p!2912))))

(assert (=> d!1226388 (validRegex!5536 (regex!7385 r!4008))))

(assert (=> d!1226388 (= (matchR!6119 (regex!7385 r!4008) p!2912) lt!1477699)))

(declare-fun b!4143226 () Bool)

(declare-fun res!1695412 () Bool)

(assert (=> b!4143226 (=> (not res!1695412) (not e!2570751))))

(assert (=> b!4143226 (= res!1695412 (isEmpty!26808 (tail!6564 p!2912)))))

(assert (= (and d!1226388 c!710117) b!4143224))

(assert (= (and d!1226388 (not c!710117)) b!4143218))

(assert (= (and d!1226388 c!710118) b!4143222))

(assert (= (and d!1226388 (not c!710118)) b!4143214))

(assert (= (and b!4143214 c!710116) b!4143219))

(assert (= (and b!4143214 (not c!710116)) b!4143221))

(assert (= (and b!4143221 (not res!1695407)) b!4143213))

(assert (= (and b!4143213 res!1695414) b!4143223))

(assert (= (and b!4143223 res!1695411) b!4143226))

(assert (= (and b!4143226 res!1695412) b!4143220))

(assert (= (and b!4143213 (not res!1695413)) b!4143217))

(assert (= (and b!4143217 res!1695409) b!4143225))

(assert (= (and b!4143225 (not res!1695408)) b!4143216))

(assert (= (and b!4143216 (not res!1695410)) b!4143215))

(assert (= (or b!4143222 b!4143223 b!4143225) bm!290571))

(assert (=> d!1226388 m!4739273))

(assert (=> d!1226388 m!4739455))

(assert (=> b!4143215 m!4739417))

(assert (=> bm!290571 m!4739273))

(assert (=> b!4143224 m!4739457))

(assert (=> b!4143226 m!4739421))

(assert (=> b!4143226 m!4739421))

(declare-fun m!4739489 () Bool)

(assert (=> b!4143226 m!4739489))

(assert (=> b!4143220 m!4739417))

(assert (=> b!4143216 m!4739421))

(assert (=> b!4143216 m!4739421))

(assert (=> b!4143216 m!4739489))

(assert (=> b!4143218 m!4739417))

(assert (=> b!4143218 m!4739417))

(declare-fun m!4739491 () Bool)

(assert (=> b!4143218 m!4739491))

(assert (=> b!4143218 m!4739421))

(assert (=> b!4143218 m!4739491))

(assert (=> b!4143218 m!4739421))

(declare-fun m!4739493 () Bool)

(assert (=> b!4143218 m!4739493))

(assert (=> b!4142960 d!1226388))

(declare-fun b!4143230 () Bool)

(declare-fun e!2570756 () Bool)

(assert (=> b!4143230 (= e!2570756 (>= (size!33301 lt!1477622) (size!33301 lt!1477620)))))

(declare-fun b!4143227 () Bool)

(declare-fun e!2570757 () Bool)

(declare-fun e!2570758 () Bool)

(assert (=> b!4143227 (= e!2570757 e!2570758)))

(declare-fun res!1695418 () Bool)

(assert (=> b!4143227 (=> (not res!1695418) (not e!2570758))))

(assert (=> b!4143227 (= res!1695418 (not (is-Nil!44944 lt!1477622)))))

(declare-fun d!1226390 () Bool)

(assert (=> d!1226390 e!2570756))

(declare-fun res!1695417 () Bool)

(assert (=> d!1226390 (=> res!1695417 e!2570756)))

(declare-fun lt!1477700 () Bool)

(assert (=> d!1226390 (= res!1695417 (not lt!1477700))))

(assert (=> d!1226390 (= lt!1477700 e!2570757)))

(declare-fun res!1695415 () Bool)

(assert (=> d!1226390 (=> res!1695415 e!2570757)))

(assert (=> d!1226390 (= res!1695415 (is-Nil!44944 lt!1477620))))

(assert (=> d!1226390 (= (isPrefix!4320 lt!1477620 lt!1477622) lt!1477700)))

(declare-fun b!4143228 () Bool)

(declare-fun res!1695416 () Bool)

(assert (=> b!4143228 (=> (not res!1695416) (not e!2570758))))

(assert (=> b!4143228 (= res!1695416 (= (head!8741 lt!1477620) (head!8741 lt!1477622)))))

(declare-fun b!4143229 () Bool)

(assert (=> b!4143229 (= e!2570758 (isPrefix!4320 (tail!6564 lt!1477620) (tail!6564 lt!1477622)))))

(assert (= (and d!1226390 (not res!1695415)) b!4143227))

(assert (= (and b!4143227 res!1695418) b!4143228))

(assert (= (and b!4143228 res!1695416) b!4143229))

(assert (= (and d!1226390 (not res!1695417)) b!4143230))

(declare-fun m!4739495 () Bool)

(assert (=> b!4143230 m!4739495))

(assert (=> b!4143230 m!4739275))

(assert (=> b!4143228 m!4739461))

(declare-fun m!4739497 () Bool)

(assert (=> b!4143228 m!4739497))

(assert (=> b!4143229 m!4739463))

(declare-fun m!4739499 () Bool)

(assert (=> b!4143229 m!4739499))

(assert (=> b!4143229 m!4739463))

(assert (=> b!4143229 m!4739499))

(declare-fun m!4739501 () Bool)

(assert (=> b!4143229 m!4739501))

(assert (=> b!4142971 d!1226390))

(declare-fun d!1226392 () Bool)

(declare-fun e!2570767 () Bool)

(assert (=> d!1226392 e!2570767))

(declare-fun res!1695427 () Bool)

(assert (=> d!1226392 (=> (not res!1695427) (not e!2570767))))

(declare-fun lt!1477703 () List!45068)

(declare-fun content!6951 (List!45068) (Set C!24766))

(assert (=> d!1226392 (= res!1695427 (= (content!6951 lt!1477703) (set.union (content!6951 lt!1477620) (content!6951 (_2!24796 lt!1477615)))))))

(declare-fun e!2570766 () List!45068)

(assert (=> d!1226392 (= lt!1477703 e!2570766)))

(declare-fun c!710121 () Bool)

(assert (=> d!1226392 (= c!710121 (is-Nil!44944 lt!1477620))))

(assert (=> d!1226392 (= (++!11625 lt!1477620 (_2!24796 lt!1477615)) lt!1477703)))

(declare-fun b!4143245 () Bool)

(assert (=> b!4143245 (= e!2570767 (or (not (= (_2!24796 lt!1477615) Nil!44944)) (= lt!1477703 lt!1477620)))))

(declare-fun b!4143243 () Bool)

(assert (=> b!4143243 (= e!2570766 (Cons!44944 (h!50364 lt!1477620) (++!11625 (t!342539 lt!1477620) (_2!24796 lt!1477615))))))

(declare-fun b!4143244 () Bool)

(declare-fun res!1695426 () Bool)

(assert (=> b!4143244 (=> (not res!1695426) (not e!2570767))))

(assert (=> b!4143244 (= res!1695426 (= (size!33301 lt!1477703) (+ (size!33301 lt!1477620) (size!33301 (_2!24796 lt!1477615)))))))

(declare-fun b!4143242 () Bool)

(assert (=> b!4143242 (= e!2570766 (_2!24796 lt!1477615))))

(assert (= (and d!1226392 c!710121) b!4143242))

(assert (= (and d!1226392 (not c!710121)) b!4143243))

(assert (= (and d!1226392 res!1695427) b!4143244))

(assert (= (and b!4143244 res!1695426) b!4143245))

(declare-fun m!4739507 () Bool)

(assert (=> d!1226392 m!4739507))

(declare-fun m!4739509 () Bool)

(assert (=> d!1226392 m!4739509))

(declare-fun m!4739511 () Bool)

(assert (=> d!1226392 m!4739511))

(declare-fun m!4739513 () Bool)

(assert (=> b!4143243 m!4739513))

(declare-fun m!4739515 () Bool)

(assert (=> b!4143244 m!4739515))

(assert (=> b!4143244 m!4739275))

(declare-fun m!4739517 () Bool)

(assert (=> b!4143244 m!4739517))

(assert (=> b!4142971 d!1226392))

(declare-fun d!1226396 () Bool)

(assert (=> d!1226396 (isPrefix!4320 lt!1477620 (++!11625 lt!1477620 (_2!24796 lt!1477615)))))

(declare-fun lt!1477706 () Unit!64238)

(declare-fun choose!25350 (List!45068 List!45068) Unit!64238)

(assert (=> d!1226396 (= lt!1477706 (choose!25350 lt!1477620 (_2!24796 lt!1477615)))))

(assert (=> d!1226396 (= (lemmaConcatTwoListThenFirstIsPrefix!2949 lt!1477620 (_2!24796 lt!1477615)) lt!1477706)))

(declare-fun bs!595287 () Bool)

(assert (= bs!595287 d!1226396))

(assert (=> bs!595287 m!4739325))

(assert (=> bs!595287 m!4739325))

(declare-fun m!4739519 () Bool)

(assert (=> bs!595287 m!4739519))

(declare-fun m!4739521 () Bool)

(assert (=> bs!595287 m!4739521))

(assert (=> b!4142971 d!1226396))

(declare-fun d!1226398 () Bool)

(declare-fun list!16466 (Conc!13596) List!45068)

(assert (=> d!1226398 (= (list!16464 lt!1477619) (list!16466 (c!710079 lt!1477619)))))

(declare-fun bs!595288 () Bool)

(assert (= bs!595288 d!1226398))

(declare-fun m!4739523 () Bool)

(assert (=> bs!595288 m!4739523))

(assert (=> b!4142971 d!1226398))

(declare-fun d!1226400 () Bool)

(declare-fun lt!1477707 () Bool)

(assert (=> d!1226400 (= lt!1477707 (set.member r!4008 (content!6950 rules!3756)))))

(declare-fun e!2570768 () Bool)

(assert (=> d!1226400 (= lt!1477707 e!2570768)))

(declare-fun res!1695429 () Bool)

(assert (=> d!1226400 (=> (not res!1695429) (not e!2570768))))

(assert (=> d!1226400 (= res!1695429 (is-Cons!44945 rules!3756))))

(assert (=> d!1226400 (= (contains!9065 rules!3756 r!4008) lt!1477707)))

(declare-fun b!4143246 () Bool)

(declare-fun e!2570769 () Bool)

(assert (=> b!4143246 (= e!2570768 e!2570769)))

(declare-fun res!1695428 () Bool)

(assert (=> b!4143246 (=> res!1695428 e!2570769)))

(assert (=> b!4143246 (= res!1695428 (= (h!50365 rules!3756) r!4008))))

(declare-fun b!4143247 () Bool)

(assert (=> b!4143247 (= e!2570769 (contains!9065 (t!342540 rules!3756) r!4008))))

(assert (= (and d!1226400 res!1695429) b!4143246))

(assert (= (and b!4143246 (not res!1695428)) b!4143247))

(assert (=> d!1226400 m!4739433))

(declare-fun m!4739525 () Bool)

(assert (=> d!1226400 m!4739525))

(declare-fun m!4739527 () Bool)

(assert (=> b!4143247 m!4739527))

(assert (=> b!4142970 d!1226400))

(declare-fun d!1226402 () Bool)

(assert (=> d!1226402 (= (inv!59550 (tag!8245 rBis!149)) (= (mod (str.len (value!231027 (tag!8245 rBis!149))) 2) 0))))

(assert (=> b!4142949 d!1226402))

(declare-fun d!1226404 () Bool)

(declare-fun res!1695430 () Bool)

(declare-fun e!2570770 () Bool)

(assert (=> d!1226404 (=> (not res!1695430) (not e!2570770))))

(assert (=> d!1226404 (= res!1695430 (semiInverseModEq!3192 (toChars!9908 (transformation!7385 rBis!149)) (toValue!10049 (transformation!7385 rBis!149))))))

(assert (=> d!1226404 (= (inv!59553 (transformation!7385 rBis!149)) e!2570770)))

(declare-fun b!4143248 () Bool)

(assert (=> b!4143248 (= e!2570770 (equivClasses!3091 (toChars!9908 (transformation!7385 rBis!149)) (toValue!10049 (transformation!7385 rBis!149))))))

(assert (= (and d!1226404 res!1695430) b!4143248))

(declare-fun m!4739529 () Bool)

(assert (=> d!1226404 m!4739529))

(declare-fun m!4739531 () Bool)

(assert (=> b!4143248 m!4739531))

(assert (=> b!4142949 d!1226404))

(declare-fun d!1226406 () Bool)

(declare-fun dynLambda!19339 (Int BalanceConc!26786) TokenValue!7615)

(assert (=> d!1226406 (= (apply!10458 (transformation!7385 r!4008) lt!1477623) (dynLambda!19339 (toValue!10049 (transformation!7385 r!4008)) lt!1477623))))

(declare-fun b_lambda!121797 () Bool)

(assert (=> (not b_lambda!121797) (not d!1226406)))

(declare-fun t!342551 () Bool)

(declare-fun tb!248697 () Bool)

(assert (=> (and b!4142950 (= (toValue!10049 (transformation!7385 r!4008)) (toValue!10049 (transformation!7385 r!4008))) t!342551) tb!248697))

(declare-fun result!302436 () Bool)

(declare-fun inv!21 (TokenValue!7615) Bool)

(assert (=> tb!248697 (= result!302436 (inv!21 (dynLambda!19339 (toValue!10049 (transformation!7385 r!4008)) lt!1477623)))))

(declare-fun m!4739535 () Bool)

(assert (=> tb!248697 m!4739535))

(assert (=> d!1226406 t!342551))

(declare-fun b_and!321859 () Bool)

(assert (= b_and!321829 (and (=> t!342551 result!302436) b_and!321859)))

(declare-fun t!342553 () Bool)

(declare-fun tb!248699 () Bool)

(assert (=> (and b!4142951 (= (toValue!10049 (transformation!7385 rBis!149)) (toValue!10049 (transformation!7385 r!4008))) t!342553) tb!248699))

(declare-fun result!302440 () Bool)

(assert (= result!302440 result!302436))

(assert (=> d!1226406 t!342553))

(declare-fun b_and!321861 () Bool)

(assert (= b_and!321833 (and (=> t!342553 result!302440) b_and!321861)))

(declare-fun tb!248701 () Bool)

(declare-fun t!342555 () Bool)

(assert (=> (and b!4142964 (= (toValue!10049 (transformation!7385 (h!50365 rules!3756))) (toValue!10049 (transformation!7385 r!4008))) t!342555) tb!248701))

(declare-fun result!302442 () Bool)

(assert (= result!302442 result!302436))

(assert (=> d!1226406 t!342555))

(declare-fun b_and!321863 () Bool)

(assert (= b_and!321837 (and (=> t!342555 result!302442) b_and!321863)))

(declare-fun m!4739537 () Bool)

(assert (=> d!1226406 m!4739537))

(assert (=> b!4142972 d!1226406))

(declare-fun b!4143295 () Bool)

(declare-fun res!1695476 () Bool)

(declare-fun e!2570801 () Bool)

(assert (=> b!4143295 (=> (not res!1695476) (not e!2570801))))

(declare-fun lt!1477733 () Option!9691)

(assert (=> b!4143295 (= res!1695476 (= (value!231028 (_1!24796 (get!14673 lt!1477733))) (apply!10458 (transformation!7385 (rule!10501 (_1!24796 (get!14673 lt!1477733)))) (seqFromList!5502 (originalCharacters!7881 (_1!24796 (get!14673 lt!1477733)))))))))

(declare-fun b!4143296 () Bool)

(declare-fun e!2570800 () Option!9691)

(declare-fun lt!1477734 () Option!9691)

(declare-fun lt!1477732 () Option!9691)

(assert (=> b!4143296 (= e!2570800 (ite (and (is-None!9690 lt!1477734) (is-None!9690 lt!1477732)) None!9690 (ite (is-None!9690 lt!1477732) lt!1477734 (ite (is-None!9690 lt!1477734) lt!1477732 (ite (>= (size!33303 (_1!24796 (v!40334 lt!1477734))) (size!33303 (_1!24796 (v!40334 lt!1477732)))) lt!1477734 lt!1477732)))))))

(declare-fun call!290579 () Option!9691)

(assert (=> b!4143296 (= lt!1477734 call!290579)))

(assert (=> b!4143296 (= lt!1477732 (maxPrefix!4164 thiss!25645 (t!342540 rules!3756) input!3238))))

(declare-fun b!4143297 () Bool)

(declare-fun res!1695475 () Bool)

(assert (=> b!4143297 (=> (not res!1695475) (not e!2570801))))

(assert (=> b!4143297 (= res!1695475 (= (list!16464 (charsOf!4984 (_1!24796 (get!14673 lt!1477733)))) (originalCharacters!7881 (_1!24796 (get!14673 lt!1477733)))))))

(declare-fun d!1226410 () Bool)

(declare-fun e!2570802 () Bool)

(assert (=> d!1226410 e!2570802))

(declare-fun res!1695471 () Bool)

(assert (=> d!1226410 (=> res!1695471 e!2570802)))

(assert (=> d!1226410 (= res!1695471 (isEmpty!26810 lt!1477733))))

(assert (=> d!1226410 (= lt!1477733 e!2570800)))

(declare-fun c!710124 () Bool)

(assert (=> d!1226410 (= c!710124 (and (is-Cons!44945 rules!3756) (is-Nil!44945 (t!342540 rules!3756))))))

(declare-fun lt!1477730 () Unit!64238)

(declare-fun lt!1477731 () Unit!64238)

(assert (=> d!1226410 (= lt!1477730 lt!1477731)))

(assert (=> d!1226410 (isPrefix!4320 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2791 (List!45068 List!45068) Unit!64238)

(assert (=> d!1226410 (= lt!1477731 (lemmaIsPrefixRefl!2791 input!3238 input!3238))))

(declare-fun rulesValidInductive!2743 (LexerInterface!6974 List!45069) Bool)

(assert (=> d!1226410 (rulesValidInductive!2743 thiss!25645 rules!3756)))

(assert (=> d!1226410 (= (maxPrefix!4164 thiss!25645 rules!3756 input!3238) lt!1477733)))

(declare-fun b!4143298 () Bool)

(declare-fun res!1695472 () Bool)

(assert (=> b!4143298 (=> (not res!1695472) (not e!2570801))))

(assert (=> b!4143298 (= res!1695472 (< (size!33301 (_2!24796 (get!14673 lt!1477733))) (size!33301 input!3238)))))

(declare-fun b!4143299 () Bool)

(declare-fun res!1695473 () Bool)

(assert (=> b!4143299 (=> (not res!1695473) (not e!2570801))))

(assert (=> b!4143299 (= res!1695473 (= (++!11625 (list!16464 (charsOf!4984 (_1!24796 (get!14673 lt!1477733)))) (_2!24796 (get!14673 lt!1477733))) input!3238))))

(declare-fun bm!290574 () Bool)

(assert (=> bm!290574 (= call!290579 (maxPrefixOneRule!3103 thiss!25645 (h!50365 rules!3756) input!3238))))

(declare-fun b!4143300 () Bool)

(assert (=> b!4143300 (= e!2570801 (contains!9065 rules!3756 (rule!10501 (_1!24796 (get!14673 lt!1477733)))))))

(declare-fun b!4143301 () Bool)

(declare-fun res!1695477 () Bool)

(assert (=> b!4143301 (=> (not res!1695477) (not e!2570801))))

(assert (=> b!4143301 (= res!1695477 (matchR!6119 (regex!7385 (rule!10501 (_1!24796 (get!14673 lt!1477733)))) (list!16464 (charsOf!4984 (_1!24796 (get!14673 lt!1477733))))))))

(declare-fun b!4143302 () Bool)

(assert (=> b!4143302 (= e!2570802 e!2570801)))

(declare-fun res!1695474 () Bool)

(assert (=> b!4143302 (=> (not res!1695474) (not e!2570801))))

(declare-fun isDefined!7283 (Option!9691) Bool)

(assert (=> b!4143302 (= res!1695474 (isDefined!7283 lt!1477733))))

(declare-fun b!4143303 () Bool)

(assert (=> b!4143303 (= e!2570800 call!290579)))

(assert (= (and d!1226410 c!710124) b!4143303))

(assert (= (and d!1226410 (not c!710124)) b!4143296))

(assert (= (or b!4143303 b!4143296) bm!290574))

(assert (= (and d!1226410 (not res!1695471)) b!4143302))

(assert (= (and b!4143302 res!1695474) b!4143297))

(assert (= (and b!4143297 res!1695475) b!4143298))

(assert (= (and b!4143298 res!1695472) b!4143299))

(assert (= (and b!4143299 res!1695473) b!4143295))

(assert (= (and b!4143295 res!1695476) b!4143301))

(assert (= (and b!4143301 res!1695477) b!4143300))

(declare-fun m!4739561 () Bool)

(assert (=> bm!290574 m!4739561))

(declare-fun m!4739563 () Bool)

(assert (=> b!4143298 m!4739563))

(declare-fun m!4739565 () Bool)

(assert (=> b!4143298 m!4739565))

(assert (=> b!4143298 m!4739257))

(assert (=> b!4143301 m!4739563))

(declare-fun m!4739567 () Bool)

(assert (=> b!4143301 m!4739567))

(assert (=> b!4143301 m!4739567))

(declare-fun m!4739569 () Bool)

(assert (=> b!4143301 m!4739569))

(assert (=> b!4143301 m!4739569))

(declare-fun m!4739571 () Bool)

(assert (=> b!4143301 m!4739571))

(assert (=> b!4143295 m!4739563))

(declare-fun m!4739573 () Bool)

(assert (=> b!4143295 m!4739573))

(assert (=> b!4143295 m!4739573))

(declare-fun m!4739575 () Bool)

(assert (=> b!4143295 m!4739575))

(declare-fun m!4739577 () Bool)

(assert (=> d!1226410 m!4739577))

(declare-fun m!4739579 () Bool)

(assert (=> d!1226410 m!4739579))

(declare-fun m!4739581 () Bool)

(assert (=> d!1226410 m!4739581))

(declare-fun m!4739583 () Bool)

(assert (=> d!1226410 m!4739583))

(declare-fun m!4739585 () Bool)

(assert (=> b!4143302 m!4739585))

(assert (=> b!4143300 m!4739563))

(declare-fun m!4739587 () Bool)

(assert (=> b!4143300 m!4739587))

(assert (=> b!4143299 m!4739563))

(assert (=> b!4143299 m!4739567))

(assert (=> b!4143299 m!4739567))

(assert (=> b!4143299 m!4739569))

(assert (=> b!4143299 m!4739569))

(declare-fun m!4739589 () Bool)

(assert (=> b!4143299 m!4739589))

(assert (=> b!4143297 m!4739563))

(assert (=> b!4143297 m!4739567))

(assert (=> b!4143297 m!4739567))

(assert (=> b!4143297 m!4739569))

(declare-fun m!4739591 () Bool)

(assert (=> b!4143296 m!4739591))

(assert (=> b!4142972 d!1226410))

(declare-fun d!1226426 () Bool)

(declare-fun fromListB!2524 (List!45068) BalanceConc!26786)

(assert (=> d!1226426 (= (seqFromList!5502 p!2912) (fromListB!2524 p!2912))))

(declare-fun bs!595291 () Bool)

(assert (= bs!595291 d!1226426))

(declare-fun m!4739593 () Bool)

(assert (=> bs!595291 m!4739593))

(assert (=> b!4142972 d!1226426))

(declare-fun d!1226430 () Bool)

(declare-fun lt!1477736 () Int)

(assert (=> d!1226430 (>= lt!1477736 0)))

(declare-fun e!2570804 () Int)

(assert (=> d!1226430 (= lt!1477736 e!2570804)))

(declare-fun c!710125 () Bool)

(assert (=> d!1226430 (= c!710125 (is-Nil!44944 p!2912))))

(assert (=> d!1226430 (= (size!33301 p!2912) lt!1477736)))

(declare-fun b!4143305 () Bool)

(assert (=> b!4143305 (= e!2570804 0)))

(declare-fun b!4143306 () Bool)

(assert (=> b!4143306 (= e!2570804 (+ 1 (size!33301 (t!342539 p!2912))))))

(assert (= (and d!1226430 c!710125) b!4143305))

(assert (= (and d!1226430 (not c!710125)) b!4143306))

(declare-fun m!4739595 () Bool)

(assert (=> b!4143306 m!4739595))

(assert (=> b!4142972 d!1226430))

(declare-fun d!1226432 () Bool)

(declare-fun lt!1477739 () List!45068)

(assert (=> d!1226432 (= (++!11625 p!2912 lt!1477739) input!3238)))

(declare-fun e!2570807 () List!45068)

(assert (=> d!1226432 (= lt!1477739 e!2570807)))

(declare-fun c!710128 () Bool)

(assert (=> d!1226432 (= c!710128 (is-Cons!44944 p!2912))))

(assert (=> d!1226432 (>= (size!33301 input!3238) (size!33301 p!2912))))

(assert (=> d!1226432 (= (getSuffix!2647 input!3238 p!2912) lt!1477739)))

(declare-fun b!4143311 () Bool)

(assert (=> b!4143311 (= e!2570807 (getSuffix!2647 (tail!6564 input!3238) (t!342539 p!2912)))))

(declare-fun b!4143312 () Bool)

(assert (=> b!4143312 (= e!2570807 input!3238)))

(assert (= (and d!1226432 c!710128) b!4143311))

(assert (= (and d!1226432 (not c!710128)) b!4143312))

(declare-fun m!4739597 () Bool)

(assert (=> d!1226432 m!4739597))

(assert (=> d!1226432 m!4739257))

(assert (=> d!1226432 m!4739245))

(assert (=> b!4143311 m!4739423))

(assert (=> b!4143311 m!4739423))

(declare-fun m!4739599 () Bool)

(assert (=> b!4143311 m!4739599))

(assert (=> b!4142972 d!1226432))

(declare-fun b!4143345 () Bool)

(declare-fun e!2570823 () Bool)

(assert (=> b!4143345 (= e!2570823 true)))

(declare-fun d!1226434 () Bool)

(assert (=> d!1226434 e!2570823))

(assert (= d!1226434 b!4143345))

(declare-fun order!23797 () Int)

(declare-fun lambda!128964 () Int)

(declare-fun order!23795 () Int)

(declare-fun dynLambda!19340 (Int Int) Int)

(declare-fun dynLambda!19341 (Int Int) Int)

(assert (=> b!4143345 (< (dynLambda!19340 order!23795 (toValue!10049 (transformation!7385 r!4008))) (dynLambda!19341 order!23797 lambda!128964))))

(declare-fun order!23799 () Int)

(declare-fun dynLambda!19342 (Int Int) Int)

(assert (=> b!4143345 (< (dynLambda!19342 order!23799 (toChars!9908 (transformation!7385 r!4008))) (dynLambda!19341 order!23797 lambda!128964))))

(assert (=> d!1226434 (= (list!16464 (dynLambda!19338 (toChars!9908 (transformation!7385 r!4008)) (dynLambda!19339 (toValue!10049 (transformation!7385 r!4008)) lt!1477623))) (list!16464 lt!1477623))))

(declare-fun lt!1477762 () Unit!64238)

(declare-fun ForallOf!975 (Int BalanceConc!26786) Unit!64238)

(assert (=> d!1226434 (= lt!1477762 (ForallOf!975 lambda!128964 lt!1477623))))

(assert (=> d!1226434 (= (lemmaSemiInverse!2243 (transformation!7385 r!4008) lt!1477623) lt!1477762)))

(declare-fun b_lambda!121799 () Bool)

(assert (=> (not b_lambda!121799) (not d!1226434)))

(declare-fun t!342557 () Bool)

(declare-fun tb!248703 () Bool)

(assert (=> (and b!4142950 (= (toChars!9908 (transformation!7385 r!4008)) (toChars!9908 (transformation!7385 r!4008))) t!342557) tb!248703))

(declare-fun e!2570824 () Bool)

(declare-fun b!4143346 () Bool)

(declare-fun tp!1262880 () Bool)

(assert (=> b!4143346 (= e!2570824 (and (inv!59555 (c!710079 (dynLambda!19338 (toChars!9908 (transformation!7385 r!4008)) (dynLambda!19339 (toValue!10049 (transformation!7385 r!4008)) lt!1477623)))) tp!1262880))))

(declare-fun result!302444 () Bool)

(assert (=> tb!248703 (= result!302444 (and (inv!59556 (dynLambda!19338 (toChars!9908 (transformation!7385 r!4008)) (dynLambda!19339 (toValue!10049 (transformation!7385 r!4008)) lt!1477623))) e!2570824))))

(assert (= tb!248703 b!4143346))

(declare-fun m!4739649 () Bool)

(assert (=> b!4143346 m!4739649))

(declare-fun m!4739651 () Bool)

(assert (=> tb!248703 m!4739651))

(assert (=> d!1226434 t!342557))

(declare-fun b_and!321865 () Bool)

(assert (= b_and!321853 (and (=> t!342557 result!302444) b_and!321865)))

(declare-fun t!342559 () Bool)

(declare-fun tb!248705 () Bool)

(assert (=> (and b!4142951 (= (toChars!9908 (transformation!7385 rBis!149)) (toChars!9908 (transformation!7385 r!4008))) t!342559) tb!248705))

(declare-fun result!302446 () Bool)

(assert (= result!302446 result!302444))

(assert (=> d!1226434 t!342559))

(declare-fun b_and!321867 () Bool)

(assert (= b_and!321855 (and (=> t!342559 result!302446) b_and!321867)))

(declare-fun tb!248707 () Bool)

(declare-fun t!342561 () Bool)

(assert (=> (and b!4142964 (= (toChars!9908 (transformation!7385 (h!50365 rules!3756))) (toChars!9908 (transformation!7385 r!4008))) t!342561) tb!248707))

(declare-fun result!302448 () Bool)

(assert (= result!302448 result!302444))

(assert (=> d!1226434 t!342561))

(declare-fun b_and!321869 () Bool)

(assert (= b_and!321857 (and (=> t!342561 result!302448) b_and!321869)))

(declare-fun b_lambda!121801 () Bool)

(assert (=> (not b_lambda!121801) (not d!1226434)))

(assert (=> d!1226434 t!342551))

(declare-fun b_and!321871 () Bool)

(assert (= b_and!321859 (and (=> t!342551 result!302436) b_and!321871)))

(assert (=> d!1226434 t!342553))

(declare-fun b_and!321873 () Bool)

(assert (= b_and!321861 (and (=> t!342553 result!302440) b_and!321873)))

(assert (=> d!1226434 t!342555))

(declare-fun b_and!321875 () Bool)

(assert (= b_and!321863 (and (=> t!342555 result!302442) b_and!321875)))

(declare-fun m!4739653 () Bool)

(assert (=> d!1226434 m!4739653))

(declare-fun m!4739655 () Bool)

(assert (=> d!1226434 m!4739655))

(declare-fun m!4739657 () Bool)

(assert (=> d!1226434 m!4739657))

(assert (=> d!1226434 m!4739537))

(assert (=> d!1226434 m!4739655))

(assert (=> d!1226434 m!4739537))

(declare-fun m!4739659 () Bool)

(assert (=> d!1226434 m!4739659))

(assert (=> b!4142972 d!1226434))

(declare-fun d!1226444 () Bool)

(declare-fun lt!1477763 () Int)

(assert (=> d!1226444 (>= lt!1477763 0)))

(declare-fun e!2570825 () Int)

(assert (=> d!1226444 (= lt!1477763 e!2570825)))

(declare-fun c!710134 () Bool)

(assert (=> d!1226444 (= c!710134 (is-Nil!44944 input!3238))))

(assert (=> d!1226444 (= (size!33301 input!3238) lt!1477763)))

(declare-fun b!4143347 () Bool)

(assert (=> b!4143347 (= e!2570825 0)))

(declare-fun b!4143348 () Bool)

(assert (=> b!4143348 (= e!2570825 (+ 1 (size!33301 (t!342539 input!3238))))))

(assert (= (and d!1226444 c!710134) b!4143347))

(assert (= (and d!1226444 (not c!710134)) b!4143348))

(declare-fun m!4739661 () Bool)

(assert (=> b!4143348 m!4739661))

(assert (=> b!4142961 d!1226444))

(declare-fun d!1226446 () Bool)

(assert (=> d!1226446 (= (isEmpty!26808 p!2912) (is-Nil!44944 p!2912))))

(assert (=> b!4142952 d!1226446))

(declare-fun b!4143352 () Bool)

(declare-fun e!2570826 () Bool)

(assert (=> b!4143352 (= e!2570826 (>= (size!33301 input!3238) (size!33301 lt!1477620)))))

(declare-fun b!4143349 () Bool)

(declare-fun e!2570827 () Bool)

(declare-fun e!2570828 () Bool)

(assert (=> b!4143349 (= e!2570827 e!2570828)))

(declare-fun res!1695504 () Bool)

(assert (=> b!4143349 (=> (not res!1695504) (not e!2570828))))

(assert (=> b!4143349 (= res!1695504 (not (is-Nil!44944 input!3238)))))

(declare-fun d!1226448 () Bool)

(assert (=> d!1226448 e!2570826))

(declare-fun res!1695503 () Bool)

(assert (=> d!1226448 (=> res!1695503 e!2570826)))

(declare-fun lt!1477764 () Bool)

(assert (=> d!1226448 (= res!1695503 (not lt!1477764))))

(assert (=> d!1226448 (= lt!1477764 e!2570827)))

(declare-fun res!1695501 () Bool)

(assert (=> d!1226448 (=> res!1695501 e!2570827)))

(assert (=> d!1226448 (= res!1695501 (is-Nil!44944 lt!1477620))))

(assert (=> d!1226448 (= (isPrefix!4320 lt!1477620 input!3238) lt!1477764)))

(declare-fun b!4143350 () Bool)

(declare-fun res!1695502 () Bool)

(assert (=> b!4143350 (=> (not res!1695502) (not e!2570828))))

(assert (=> b!4143350 (= res!1695502 (= (head!8741 lt!1477620) (head!8741 input!3238)))))

(declare-fun b!4143351 () Bool)

(assert (=> b!4143351 (= e!2570828 (isPrefix!4320 (tail!6564 lt!1477620) (tail!6564 input!3238)))))

(assert (= (and d!1226448 (not res!1695501)) b!4143349))

(assert (= (and b!4143349 res!1695504) b!4143350))

(assert (= (and b!4143350 res!1695502) b!4143351))

(assert (= (and d!1226448 (not res!1695503)) b!4143352))

(assert (=> b!4143352 m!4739257))

(assert (=> b!4143352 m!4739275))

(assert (=> b!4143350 m!4739461))

(assert (=> b!4143350 m!4739419))

(assert (=> b!4143351 m!4739463))

(assert (=> b!4143351 m!4739423))

(assert (=> b!4143351 m!4739463))

(assert (=> b!4143351 m!4739423))

(declare-fun m!4739663 () Bool)

(assert (=> b!4143351 m!4739663))

(assert (=> b!4142963 d!1226448))

(declare-fun d!1226450 () Bool)

(declare-fun res!1695507 () Bool)

(declare-fun e!2570831 () Bool)

(assert (=> d!1226450 (=> (not res!1695507) (not e!2570831))))

(declare-fun rulesValid!2906 (LexerInterface!6974 List!45069) Bool)

(assert (=> d!1226450 (= res!1695507 (rulesValid!2906 thiss!25645 rules!3756))))

(assert (=> d!1226450 (= (rulesInvariant!6271 thiss!25645 rules!3756) e!2570831)))

(declare-fun b!4143355 () Bool)

(declare-datatypes ((List!45073 0))(
  ( (Nil!44949) (Cons!44949 (h!50369 String!51827) (t!342586 List!45073)) )
))
(declare-fun noDuplicateTag!2989 (LexerInterface!6974 List!45069 List!45073) Bool)

(assert (=> b!4143355 (= e!2570831 (noDuplicateTag!2989 thiss!25645 rules!3756 Nil!44949))))

(assert (= (and d!1226450 res!1695507) b!4143355))

(declare-fun m!4739665 () Bool)

(assert (=> d!1226450 m!4739665))

(declare-fun m!4739667 () Bool)

(assert (=> b!4143355 m!4739667))

(assert (=> b!4142962 d!1226450))

(declare-fun d!1226452 () Bool)

(declare-fun lt!1477765 () Bool)

(assert (=> d!1226452 (= lt!1477765 (set.member r!4008 (content!6950 (tail!6562 rules!3756))))))

(declare-fun e!2570832 () Bool)

(assert (=> d!1226452 (= lt!1477765 e!2570832)))

(declare-fun res!1695509 () Bool)

(assert (=> d!1226452 (=> (not res!1695509) (not e!2570832))))

(assert (=> d!1226452 (= res!1695509 (is-Cons!44945 (tail!6562 rules!3756)))))

(assert (=> d!1226452 (= (contains!9065 (tail!6562 rules!3756) r!4008) lt!1477765)))

(declare-fun b!4143356 () Bool)

(declare-fun e!2570833 () Bool)

(assert (=> b!4143356 (= e!2570832 e!2570833)))

(declare-fun res!1695508 () Bool)

(assert (=> b!4143356 (=> res!1695508 e!2570833)))

(assert (=> b!4143356 (= res!1695508 (= (h!50365 (tail!6562 rules!3756)) r!4008))))

(declare-fun b!4143357 () Bool)

(assert (=> b!4143357 (= e!2570833 (contains!9065 (t!342540 (tail!6562 rules!3756)) r!4008))))

(assert (= (and d!1226452 res!1695509) b!4143356))

(assert (= (and b!4143356 (not res!1695508)) b!4143357))

(assert (=> d!1226452 m!4739303))

(declare-fun m!4739669 () Bool)

(assert (=> d!1226452 m!4739669))

(declare-fun m!4739671 () Bool)

(assert (=> d!1226452 m!4739671))

(declare-fun m!4739673 () Bool)

(assert (=> b!4143357 m!4739673))

(assert (=> b!4142974 d!1226452))

(declare-fun d!1226454 () Bool)

(assert (=> d!1226454 (= (tail!6562 rules!3756) (t!342540 rules!3756))))

(assert (=> b!4142974 d!1226454))

(declare-fun d!1226456 () Bool)

(assert (=> d!1226456 (= (isEmpty!26810 lt!1477624) (not (is-Some!9690 lt!1477624)))))

(assert (=> b!4142974 d!1226456))

(declare-fun d!1226458 () Bool)

(assert (=> d!1226458 (contains!9065 (tail!6562 rules!3756) r!4008)))

(declare-fun lt!1477768 () Unit!64238)

(declare-fun choose!25351 (List!45069 Rule!14570 Rule!14570) Unit!64238)

(assert (=> d!1226458 (= lt!1477768 (choose!25351 rules!3756 rBis!149 r!4008))))

(declare-fun e!2570836 () Bool)

(assert (=> d!1226458 e!2570836))

(declare-fun res!1695512 () Bool)

(assert (=> d!1226458 (=> (not res!1695512) (not e!2570836))))

(assert (=> d!1226458 (= res!1695512 (contains!9065 rules!3756 rBis!149))))

(assert (=> d!1226458 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!89 rules!3756 rBis!149 r!4008) lt!1477768)))

(declare-fun b!4143360 () Bool)

(assert (=> b!4143360 (= e!2570836 (contains!9065 rules!3756 r!4008))))

(assert (= (and d!1226458 res!1695512) b!4143360))

(assert (=> d!1226458 m!4739303))

(assert (=> d!1226458 m!4739303))

(assert (=> d!1226458 m!4739305))

(declare-fun m!4739675 () Bool)

(assert (=> d!1226458 m!4739675))

(assert (=> d!1226458 m!4739271))

(assert (=> b!4143360 m!4739295))

(assert (=> b!4142974 d!1226458))

(declare-fun b!4143379 () Bool)

(declare-fun e!2570847 () Bool)

(declare-fun lt!1477781 () Option!9691)

(assert (=> b!4143379 (= e!2570847 (= (size!33303 (_1!24796 (get!14673 lt!1477781))) (size!33301 (originalCharacters!7881 (_1!24796 (get!14673 lt!1477781))))))))

(declare-fun b!4143380 () Bool)

(declare-fun e!2570848 () Option!9691)

(assert (=> b!4143380 (= e!2570848 None!9690)))

(declare-fun b!4143381 () Bool)

(declare-fun e!2570845 () Bool)

(declare-datatypes ((tuple2!43328 0))(
  ( (tuple2!43329 (_1!24798 List!45068) (_2!24798 List!45068)) )
))
(declare-fun findLongestMatchInner!1532 (Regex!12290 List!45068 Int List!45068 List!45068 Int) tuple2!43328)

(assert (=> b!4143381 (= e!2570845 (matchR!6119 (regex!7385 rBis!149) (_1!24798 (findLongestMatchInner!1532 (regex!7385 rBis!149) Nil!44944 (size!33301 Nil!44944) input!3238 input!3238 (size!33301 input!3238)))))))

(declare-fun d!1226460 () Bool)

(declare-fun e!2570846 () Bool)

(assert (=> d!1226460 e!2570846))

(declare-fun res!1695528 () Bool)

(assert (=> d!1226460 (=> res!1695528 e!2570846)))

(assert (=> d!1226460 (= res!1695528 (isEmpty!26810 lt!1477781))))

(assert (=> d!1226460 (= lt!1477781 e!2570848)))

(declare-fun c!710137 () Bool)

(declare-fun lt!1477782 () tuple2!43328)

(assert (=> d!1226460 (= c!710137 (isEmpty!26808 (_1!24798 lt!1477782)))))

(declare-fun findLongestMatch!1445 (Regex!12290 List!45068) tuple2!43328)

(assert (=> d!1226460 (= lt!1477782 (findLongestMatch!1445 (regex!7385 rBis!149) input!3238))))

(assert (=> d!1226460 (ruleValid!3191 thiss!25645 rBis!149)))

(assert (=> d!1226460 (= (maxPrefixOneRule!3103 thiss!25645 rBis!149 input!3238) lt!1477781)))

(declare-fun b!4143382 () Bool)

(assert (=> b!4143382 (= e!2570846 e!2570847)))

(declare-fun res!1695529 () Bool)

(assert (=> b!4143382 (=> (not res!1695529) (not e!2570847))))

(assert (=> b!4143382 (= res!1695529 (matchR!6119 (regex!7385 rBis!149) (list!16464 (charsOf!4984 (_1!24796 (get!14673 lt!1477781))))))))

(declare-fun b!4143383 () Bool)

(assert (=> b!4143383 (= e!2570848 (Some!9690 (tuple2!43325 (Token!13701 (apply!10458 (transformation!7385 rBis!149) (seqFromList!5502 (_1!24798 lt!1477782))) rBis!149 (size!33302 (seqFromList!5502 (_1!24798 lt!1477782))) (_1!24798 lt!1477782)) (_2!24798 lt!1477782))))))

(declare-fun lt!1477780 () Unit!64238)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1505 (Regex!12290 List!45068) Unit!64238)

(assert (=> b!4143383 (= lt!1477780 (longestMatchIsAcceptedByMatchOrIsEmpty!1505 (regex!7385 rBis!149) input!3238))))

(declare-fun res!1695531 () Bool)

(assert (=> b!4143383 (= res!1695531 (isEmpty!26808 (_1!24798 (findLongestMatchInner!1532 (regex!7385 rBis!149) Nil!44944 (size!33301 Nil!44944) input!3238 input!3238 (size!33301 input!3238)))))))

(assert (=> b!4143383 (=> res!1695531 e!2570845)))

(assert (=> b!4143383 e!2570845))

(declare-fun lt!1477779 () Unit!64238)

(assert (=> b!4143383 (= lt!1477779 lt!1477780)))

(declare-fun lt!1477783 () Unit!64238)

(assert (=> b!4143383 (= lt!1477783 (lemmaSemiInverse!2243 (transformation!7385 rBis!149) (seqFromList!5502 (_1!24798 lt!1477782))))))

(declare-fun b!4143384 () Bool)

(declare-fun res!1695533 () Bool)

(assert (=> b!4143384 (=> (not res!1695533) (not e!2570847))))

(assert (=> b!4143384 (= res!1695533 (< (size!33301 (_2!24796 (get!14673 lt!1477781))) (size!33301 input!3238)))))

(declare-fun b!4143385 () Bool)

(declare-fun res!1695530 () Bool)

(assert (=> b!4143385 (=> (not res!1695530) (not e!2570847))))

(assert (=> b!4143385 (= res!1695530 (= (value!231028 (_1!24796 (get!14673 lt!1477781))) (apply!10458 (transformation!7385 (rule!10501 (_1!24796 (get!14673 lt!1477781)))) (seqFromList!5502 (originalCharacters!7881 (_1!24796 (get!14673 lt!1477781)))))))))

(declare-fun b!4143386 () Bool)

(declare-fun res!1695532 () Bool)

(assert (=> b!4143386 (=> (not res!1695532) (not e!2570847))))

(assert (=> b!4143386 (= res!1695532 (= (++!11625 (list!16464 (charsOf!4984 (_1!24796 (get!14673 lt!1477781)))) (_2!24796 (get!14673 lt!1477781))) input!3238))))

(declare-fun b!4143387 () Bool)

(declare-fun res!1695527 () Bool)

(assert (=> b!4143387 (=> (not res!1695527) (not e!2570847))))

(assert (=> b!4143387 (= res!1695527 (= (rule!10501 (_1!24796 (get!14673 lt!1477781))) rBis!149))))

(assert (= (and d!1226460 c!710137) b!4143380))

(assert (= (and d!1226460 (not c!710137)) b!4143383))

(assert (= (and b!4143383 (not res!1695531)) b!4143381))

(assert (= (and d!1226460 (not res!1695528)) b!4143382))

(assert (= (and b!4143382 res!1695529) b!4143386))

(assert (= (and b!4143386 res!1695532) b!4143384))

(assert (= (and b!4143384 res!1695533) b!4143387))

(assert (= (and b!4143387 res!1695527) b!4143385))

(assert (= (and b!4143385 res!1695530) b!4143379))

(declare-fun m!4739677 () Bool)

(assert (=> b!4143379 m!4739677))

(declare-fun m!4739679 () Bool)

(assert (=> b!4143379 m!4739679))

(assert (=> b!4143387 m!4739677))

(declare-fun m!4739681 () Bool)

(assert (=> b!4143381 m!4739681))

(assert (=> b!4143381 m!4739257))

(assert (=> b!4143381 m!4739681))

(assert (=> b!4143381 m!4739257))

(declare-fun m!4739683 () Bool)

(assert (=> b!4143381 m!4739683))

(declare-fun m!4739685 () Bool)

(assert (=> b!4143381 m!4739685))

(declare-fun m!4739687 () Bool)

(assert (=> b!4143383 m!4739687))

(assert (=> b!4143383 m!4739681))

(assert (=> b!4143383 m!4739681))

(assert (=> b!4143383 m!4739257))

(assert (=> b!4143383 m!4739683))

(declare-fun m!4739689 () Bool)

(assert (=> b!4143383 m!4739689))

(declare-fun m!4739691 () Bool)

(assert (=> b!4143383 m!4739691))

(assert (=> b!4143383 m!4739691))

(declare-fun m!4739693 () Bool)

(assert (=> b!4143383 m!4739693))

(assert (=> b!4143383 m!4739257))

(assert (=> b!4143383 m!4739691))

(declare-fun m!4739695 () Bool)

(assert (=> b!4143383 m!4739695))

(assert (=> b!4143383 m!4739691))

(declare-fun m!4739697 () Bool)

(assert (=> b!4143383 m!4739697))

(assert (=> b!4143382 m!4739677))

(declare-fun m!4739699 () Bool)

(assert (=> b!4143382 m!4739699))

(assert (=> b!4143382 m!4739699))

(declare-fun m!4739701 () Bool)

(assert (=> b!4143382 m!4739701))

(assert (=> b!4143382 m!4739701))

(declare-fun m!4739703 () Bool)

(assert (=> b!4143382 m!4739703))

(assert (=> b!4143386 m!4739677))

(assert (=> b!4143386 m!4739699))

(assert (=> b!4143386 m!4739699))

(assert (=> b!4143386 m!4739701))

(assert (=> b!4143386 m!4739701))

(declare-fun m!4739705 () Bool)

(assert (=> b!4143386 m!4739705))

(declare-fun m!4739707 () Bool)

(assert (=> d!1226460 m!4739707))

(declare-fun m!4739709 () Bool)

(assert (=> d!1226460 m!4739709))

(declare-fun m!4739711 () Bool)

(assert (=> d!1226460 m!4739711))

(assert (=> d!1226460 m!4739319))

(assert (=> b!4143385 m!4739677))

(declare-fun m!4739713 () Bool)

(assert (=> b!4143385 m!4739713))

(assert (=> b!4143385 m!4739713))

(declare-fun m!4739715 () Bool)

(assert (=> b!4143385 m!4739715))

(assert (=> b!4143384 m!4739677))

(declare-fun m!4739717 () Bool)

(assert (=> b!4143384 m!4739717))

(assert (=> b!4143384 m!4739257))

(assert (=> b!4142974 d!1226460))

(declare-fun d!1226462 () Bool)

(assert (=> d!1226462 (not (= rBis!149 r!4008))))

(declare-fun lt!1477786 () Unit!64238)

(declare-fun choose!25353 (LexerInterface!6974 List!45069 Rule!14570 Rule!14570) Unit!64238)

(assert (=> d!1226462 (= lt!1477786 (choose!25353 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1226462 (contains!9065 rules!3756 rBis!149)))

(assert (=> d!1226462 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!83 thiss!25645 rules!3756 rBis!149 r!4008) lt!1477786)))

(declare-fun bs!595293 () Bool)

(assert (= bs!595293 d!1226462))

(declare-fun m!4739719 () Bool)

(assert (=> bs!595293 m!4739719))

(assert (=> bs!595293 m!4739271))

(assert (=> b!4142974 d!1226462))

(declare-fun d!1226464 () Bool)

(assert (=> d!1226464 (= (inv!59550 (tag!8245 (h!50365 rules!3756))) (= (mod (str.len (value!231027 (tag!8245 (h!50365 rules!3756)))) 2) 0))))

(assert (=> b!4142953 d!1226464))

(declare-fun d!1226466 () Bool)

(declare-fun res!1695534 () Bool)

(declare-fun e!2570849 () Bool)

(assert (=> d!1226466 (=> (not res!1695534) (not e!2570849))))

(assert (=> d!1226466 (= res!1695534 (semiInverseModEq!3192 (toChars!9908 (transformation!7385 (h!50365 rules!3756))) (toValue!10049 (transformation!7385 (h!50365 rules!3756)))))))

(assert (=> d!1226466 (= (inv!59553 (transformation!7385 (h!50365 rules!3756))) e!2570849)))

(declare-fun b!4143388 () Bool)

(assert (=> b!4143388 (= e!2570849 (equivClasses!3091 (toChars!9908 (transformation!7385 (h!50365 rules!3756))) (toValue!10049 (transformation!7385 (h!50365 rules!3756)))))))

(assert (= (and d!1226466 res!1695534) b!4143388))

(declare-fun m!4739721 () Bool)

(assert (=> d!1226466 m!4739721))

(declare-fun m!4739723 () Bool)

(assert (=> b!4143388 m!4739723))

(assert (=> b!4142953 d!1226466))

(declare-fun b!4143399 () Bool)

(declare-fun e!2570852 () Bool)

(assert (=> b!4143399 (= e!2570852 tp_is_empty!21503)))

(assert (=> b!4142949 (= tp!1262840 e!2570852)))

(declare-fun b!4143400 () Bool)

(declare-fun tp!1262895 () Bool)

(declare-fun tp!1262891 () Bool)

(assert (=> b!4143400 (= e!2570852 (and tp!1262895 tp!1262891))))

(declare-fun b!4143402 () Bool)

(declare-fun tp!1262893 () Bool)

(declare-fun tp!1262894 () Bool)

(assert (=> b!4143402 (= e!2570852 (and tp!1262893 tp!1262894))))

(declare-fun b!4143401 () Bool)

(declare-fun tp!1262892 () Bool)

(assert (=> b!4143401 (= e!2570852 tp!1262892)))

(assert (= (and b!4142949 (is-ElementMatch!12290 (regex!7385 rBis!149))) b!4143399))

(assert (= (and b!4142949 (is-Concat!19906 (regex!7385 rBis!149))) b!4143400))

(assert (= (and b!4142949 (is-Star!12290 (regex!7385 rBis!149))) b!4143401))

(assert (= (and b!4142949 (is-Union!12290 (regex!7385 rBis!149))) b!4143402))

(declare-fun b!4143403 () Bool)

(declare-fun e!2570853 () Bool)

(assert (=> b!4143403 (= e!2570853 tp_is_empty!21503)))

(assert (=> b!4142956 (= tp!1262831 e!2570853)))

(declare-fun b!4143404 () Bool)

(declare-fun tp!1262900 () Bool)

(declare-fun tp!1262896 () Bool)

(assert (=> b!4143404 (= e!2570853 (and tp!1262900 tp!1262896))))

(declare-fun b!4143406 () Bool)

(declare-fun tp!1262898 () Bool)

(declare-fun tp!1262899 () Bool)

(assert (=> b!4143406 (= e!2570853 (and tp!1262898 tp!1262899))))

(declare-fun b!4143405 () Bool)

(declare-fun tp!1262897 () Bool)

(assert (=> b!4143405 (= e!2570853 tp!1262897)))

(assert (= (and b!4142956 (is-ElementMatch!12290 (regex!7385 r!4008))) b!4143403))

(assert (= (and b!4142956 (is-Concat!19906 (regex!7385 r!4008))) b!4143404))

(assert (= (and b!4142956 (is-Star!12290 (regex!7385 r!4008))) b!4143405))

(assert (= (and b!4142956 (is-Union!12290 (regex!7385 r!4008))) b!4143406))

(declare-fun b!4143411 () Bool)

(declare-fun e!2570856 () Bool)

(declare-fun tp!1262903 () Bool)

(assert (=> b!4143411 (= e!2570856 (and tp_is_empty!21503 tp!1262903))))

(assert (=> b!4142967 (= tp!1262834 e!2570856)))

(assert (= (and b!4142967 (is-Cons!44944 (t!342539 input!3238))) b!4143411))

(declare-fun b!4143422 () Bool)

(declare-fun b_free!118079 () Bool)

(declare-fun b_next!118783 () Bool)

(assert (=> b!4143422 (= b_free!118079 (not b_next!118783))))

(declare-fun t!342563 () Bool)

(declare-fun tb!248709 () Bool)

(assert (=> (and b!4143422 (= (toValue!10049 (transformation!7385 (h!50365 (t!342540 rules!3756)))) (toValue!10049 (transformation!7385 r!4008))) t!342563) tb!248709))

(declare-fun result!302456 () Bool)

(assert (= result!302456 result!302436))

(assert (=> d!1226406 t!342563))

(assert (=> d!1226434 t!342563))

(declare-fun tp!1262915 () Bool)

(declare-fun b_and!321877 () Bool)

(assert (=> b!4143422 (= tp!1262915 (and (=> t!342563 result!302456) b_and!321877))))

(declare-fun b_free!118081 () Bool)

(declare-fun b_next!118785 () Bool)

(assert (=> b!4143422 (= b_free!118081 (not b_next!118785))))

(declare-fun t!342565 () Bool)

(declare-fun tb!248711 () Bool)

(assert (=> (and b!4143422 (= (toChars!9908 (transformation!7385 (h!50365 (t!342540 rules!3756)))) (toChars!9908 (transformation!7385 (rule!10501 (_1!24796 lt!1477615))))) t!342565) tb!248711))

(declare-fun result!302458 () Bool)

(assert (= result!302458 result!302428))

(assert (=> d!1226380 t!342565))

(declare-fun t!342567 () Bool)

(declare-fun tb!248713 () Bool)

(assert (=> (and b!4143422 (= (toChars!9908 (transformation!7385 (h!50365 (t!342540 rules!3756)))) (toChars!9908 (transformation!7385 r!4008))) t!342567) tb!248713))

(declare-fun result!302460 () Bool)

(assert (= result!302460 result!302444))

(assert (=> d!1226434 t!342567))

(declare-fun b_and!321879 () Bool)

(declare-fun tp!1262914 () Bool)

(assert (=> b!4143422 (= tp!1262914 (and (=> t!342565 result!302458) (=> t!342567 result!302460) b_and!321879))))

(declare-fun e!2570866 () Bool)

(assert (=> b!4143422 (= e!2570866 (and tp!1262915 tp!1262914))))

(declare-fun b!4143421 () Bool)

(declare-fun tp!1262912 () Bool)

(declare-fun e!2570865 () Bool)

(assert (=> b!4143421 (= e!2570865 (and tp!1262912 (inv!59550 (tag!8245 (h!50365 (t!342540 rules!3756)))) (inv!59553 (transformation!7385 (h!50365 (t!342540 rules!3756)))) e!2570866))))

(declare-fun b!4143420 () Bool)

(declare-fun e!2570868 () Bool)

(declare-fun tp!1262913 () Bool)

(assert (=> b!4143420 (= e!2570868 (and e!2570865 tp!1262913))))

(assert (=> b!4142973 (= tp!1262838 e!2570868)))

(assert (= b!4143421 b!4143422))

(assert (= b!4143420 b!4143421))

(assert (= (and b!4142973 (is-Cons!44945 (t!342540 rules!3756))) b!4143420))

(declare-fun m!4739725 () Bool)

(assert (=> b!4143421 m!4739725))

(declare-fun m!4739727 () Bool)

(assert (=> b!4143421 m!4739727))

(declare-fun b!4143423 () Bool)

(declare-fun e!2570869 () Bool)

(declare-fun tp!1262916 () Bool)

(assert (=> b!4143423 (= e!2570869 (and tp_is_empty!21503 tp!1262916))))

(assert (=> b!4142975 (= tp!1262830 e!2570869)))

(assert (= (and b!4142975 (is-Cons!44944 (t!342539 p!2912))) b!4143423))

(declare-fun b!4143424 () Bool)

(declare-fun e!2570870 () Bool)

(assert (=> b!4143424 (= e!2570870 tp_is_empty!21503)))

(assert (=> b!4142953 (= tp!1262832 e!2570870)))

(declare-fun b!4143425 () Bool)

(declare-fun tp!1262921 () Bool)

(declare-fun tp!1262917 () Bool)

(assert (=> b!4143425 (= e!2570870 (and tp!1262921 tp!1262917))))

(declare-fun b!4143427 () Bool)

(declare-fun tp!1262919 () Bool)

(declare-fun tp!1262920 () Bool)

(assert (=> b!4143427 (= e!2570870 (and tp!1262919 tp!1262920))))

(declare-fun b!4143426 () Bool)

(declare-fun tp!1262918 () Bool)

(assert (=> b!4143426 (= e!2570870 tp!1262918)))

(assert (= (and b!4142953 (is-ElementMatch!12290 (regex!7385 (h!50365 rules!3756)))) b!4143424))

(assert (= (and b!4142953 (is-Concat!19906 (regex!7385 (h!50365 rules!3756)))) b!4143425))

(assert (= (and b!4142953 (is-Star!12290 (regex!7385 (h!50365 rules!3756)))) b!4143426))

(assert (= (and b!4142953 (is-Union!12290 (regex!7385 (h!50365 rules!3756)))) b!4143427))

(declare-fun b_lambda!121803 () Bool)

(assert (= b_lambda!121801 (or (and b!4142950 b_free!118055) (and b!4142951 b_free!118059 (= (toValue!10049 (transformation!7385 rBis!149)) (toValue!10049 (transformation!7385 r!4008)))) (and b!4142964 b_free!118063 (= (toValue!10049 (transformation!7385 (h!50365 rules!3756))) (toValue!10049 (transformation!7385 r!4008)))) (and b!4143422 b_free!118079 (= (toValue!10049 (transformation!7385 (h!50365 (t!342540 rules!3756)))) (toValue!10049 (transformation!7385 r!4008)))) b_lambda!121803)))

(declare-fun b_lambda!121805 () Bool)

(assert (= b_lambda!121797 (or (and b!4142950 b_free!118055) (and b!4142951 b_free!118059 (= (toValue!10049 (transformation!7385 rBis!149)) (toValue!10049 (transformation!7385 r!4008)))) (and b!4142964 b_free!118063 (= (toValue!10049 (transformation!7385 (h!50365 rules!3756))) (toValue!10049 (transformation!7385 r!4008)))) (and b!4143422 b_free!118079 (= (toValue!10049 (transformation!7385 (h!50365 (t!342540 rules!3756)))) (toValue!10049 (transformation!7385 r!4008)))) b_lambda!121805)))

(declare-fun b_lambda!121807 () Bool)

(assert (= b_lambda!121799 (or (and b!4142950 b_free!118057) (and b!4142951 b_free!118061 (= (toChars!9908 (transformation!7385 rBis!149)) (toChars!9908 (transformation!7385 r!4008)))) (and b!4142964 b_free!118065 (= (toChars!9908 (transformation!7385 (h!50365 rules!3756))) (toChars!9908 (transformation!7385 r!4008)))) (and b!4143422 b_free!118081 (= (toChars!9908 (transformation!7385 (h!50365 (t!342540 rules!3756)))) (toChars!9908 (transformation!7385 r!4008)))) b_lambda!121807)))

(push 1)

(assert (not d!1226380))

(assert (not b!4143114))

(assert (not d!1226432))

(assert (not d!1226354))

(assert (not b!4143228))

(assert b_and!321867)

(assert (not b!4143351))

(assert (not b!4143311))

(assert (not b_next!118759))

(assert (not b!4143302))

(assert (not bm!290571))

(assert b_and!321879)

(assert (not d!1226388))

(assert (not b!4143411))

(assert (not b!4143301))

(assert (not b!4143400))

(assert (not b!4143218))

(assert (not b!4143120))

(assert (not b!4143355))

(assert (not b!4143297))

(assert (not b!4143379))

(assert (not b!4143381))

(assert (not b!4143352))

(assert (not b!4143425))

(assert (not b!4143420))

(assert (not tb!248703))

(assert (not b!4143220))

(assert (not d!1226452))

(assert (not b!4143346))

(assert (not b!4143105))

(assert (not b!4143230))

(assert (not b!4143404))

(assert (not b!4143198))

(assert (not b!4143192))

(assert tp_is_empty!21503)

(assert (not b!4143244))

(assert (not b!4143215))

(assert (not d!1226370))

(assert (not b!4143295))

(assert (not b!4143196))

(assert (not b!4143070))

(assert (not bm!290567))

(assert (not b!4143188))

(assert (not d!1226400))

(assert (not b_lambda!121795))

(assert (not b!4143299))

(assert (not b!4143072))

(assert (not b_lambda!121803))

(assert (not b!4143091))

(assert (not d!1226410))

(assert (not b!4143187))

(assert (not b!4143401))

(assert (not b!4143384))

(assert (not b!4143388))

(assert (not b!4143357))

(assert (not b!4143131))

(assert (not b!4143216))

(assert (not bm!290557))

(assert (not d!1226358))

(assert (not b_next!118785))

(assert (not d!1226466))

(assert (not b_next!118763))

(assert (not b!4143212))

(assert (not b!4143426))

(assert (not b!4143071))

(assert b_and!321875)

(assert (not b!4143348))

(assert (not b!4143406))

(assert (not b!4143226))

(assert (not b!4143300))

(assert (not bm!290574))

(assert (not d!1226404))

(assert (not d!1226352))

(assert (not d!1226374))

(assert (not d!1226398))

(assert (not b!4143421))

(assert (not b!4143402))

(assert (not d!1226366))

(assert (not b!4143383))

(assert (not b!4143385))

(assert (not tb!248697))

(assert (not b_next!118761))

(assert b_and!321865)

(assert (not tb!248691))

(assert (not b_lambda!121805))

(assert (not b!4143427))

(assert (not b!4143243))

(assert (not b!4143224))

(assert (not b!4143382))

(assert (not b!4143298))

(assert (not b!4143229))

(assert (not b!4143423))

(assert (not d!1226376))

(assert (not b_next!118767))

(assert (not d!1226462))

(assert (not b!4143137))

(assert (not b!4143350))

(assert b_and!321877)

(assert (not d!1226356))

(assert (not d!1226362))

(assert (not b_next!118765))

(assert (not b!4143296))

(assert (not b!4143360))

(assert (not b!4143135))

(assert (not b_lambda!121807))

(assert (not d!1226396))

(assert b_and!321869)

(assert (not d!1226434))

(assert (not b!4143190))

(assert (not d!1226460))

(assert (not d!1226378))

(assert (not b!4143405))

(assert b_and!321873)

(assert (not d!1226458))

(assert (not b!4143110))

(assert (not d!1226426))

(assert (not b!4143247))

(assert (not b!4143248))

(assert (not b_next!118769))

(assert (not b!4143387))

(assert (not d!1226392))

(assert (not d!1226450))

(assert b_and!321871)

(assert (not b!4143306))

(assert (not bm!290556))

(assert (not b_next!118783))

(assert (not b!4143386))

(check-sat)

(pop 1)

(push 1)

(assert b_and!321879)

(assert (not b_next!118785))

(assert (not b_next!118763))

(assert b_and!321875)

(assert (not b_next!118765))

(assert (not b_next!118769))

(assert b_and!321871)

(assert (not b_next!118783))

(assert b_and!321867)

(assert (not b_next!118759))

(assert (not b_next!118761))

(assert b_and!321865)

(assert (not b_next!118767))

(assert b_and!321877)

(assert b_and!321869)

(assert b_and!321873)

(check-sat)

(pop 1)

