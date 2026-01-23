; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756944 () Bool)

(assert start!756944)

(declare-fun b!8039847 () Bool)

(declare-fun b_free!135459 () Bool)

(declare-fun b_next!136249 () Bool)

(assert (=> b!8039847 (= b_free!135459 (not b_next!136249))))

(declare-fun tp!2408323 () Bool)

(declare-fun b_and!353895 () Bool)

(assert (=> b!8039847 (= tp!2408323 b_and!353895)))

(declare-fun b_free!135461 () Bool)

(declare-fun b_next!136251 () Bool)

(assert (=> b!8039847 (= b_free!135461 (not b_next!136251))))

(declare-fun tp!2408325 () Bool)

(declare-fun b_and!353897 () Bool)

(assert (=> b!8039847 (= tp!2408325 b_and!353897)))

(declare-fun b!8039851 () Bool)

(declare-fun b_free!135463 () Bool)

(declare-fun b_next!136253 () Bool)

(assert (=> b!8039851 (= b_free!135463 (not b_next!136253))))

(declare-fun tp!2408318 () Bool)

(declare-fun b_and!353899 () Bool)

(assert (=> b!8039851 (= tp!2408318 b_and!353899)))

(declare-fun b_free!135465 () Bool)

(declare-fun b_next!136255 () Bool)

(assert (=> b!8039851 (= b_free!135465 (not b_next!136255))))

(declare-fun tp!2408315 () Bool)

(declare-fun b_and!353901 () Bool)

(assert (=> b!8039851 (= tp!2408315 b_and!353901)))

(declare-fun b!8039849 () Bool)

(declare-fun b_free!135467 () Bool)

(declare-fun b_next!136257 () Bool)

(assert (=> b!8039849 (= b_free!135467 (not b_next!136257))))

(declare-fun tp!2408317 () Bool)

(declare-fun b_and!353903 () Bool)

(assert (=> b!8039849 (= tp!2408317 b_and!353903)))

(declare-fun b_free!135469 () Bool)

(declare-fun b_next!136259 () Bool)

(assert (=> b!8039849 (= b_free!135469 (not b_next!136259))))

(declare-fun tp!2408312 () Bool)

(declare-fun b_and!353905 () Bool)

(assert (=> b!8039849 (= tp!2408312 b_and!353905)))

(declare-fun b!8039853 () Bool)

(declare-fun b_free!135471 () Bool)

(declare-fun b_next!136261 () Bool)

(assert (=> b!8039853 (= b_free!135471 (not b_next!136261))))

(declare-fun tp!2408313 () Bool)

(declare-fun b_and!353907 () Bool)

(assert (=> b!8039853 (= tp!2408313 b_and!353907)))

(declare-fun b_free!135473 () Bool)

(declare-fun b_next!136263 () Bool)

(assert (=> b!8039853 (= b_free!135473 (not b_next!136263))))

(declare-fun tp!2408319 () Bool)

(declare-fun b_and!353909 () Bool)

(assert (=> b!8039853 (= tp!2408319 b_and!353909)))

(declare-fun b!8039843 () Bool)

(declare-fun res!3178036 () Bool)

(declare-fun e!4735644 () Bool)

(assert (=> b!8039843 (=> (not res!3178036) (not e!4735644))))

(declare-datatypes ((List!75208 0))(
  ( (Nil!75082) (Cons!75082 (h!81530 (_ BitVec 16)) (t!390978 List!75208)) )
))
(declare-datatypes ((TokenValue!9012 0))(
  ( (FloatLiteralValue!18024 (text!63529 List!75208)) (TokenValueExt!9011 (__x!35305 Int)) (Broken!45060 (value!290796 List!75208)) (Object!9137) (End!9012) (Def!9012) (Underscore!9012) (Match!9012) (Else!9012) (Error!9012) (Case!9012) (If!9012) (Extends!9012) (Abstract!9012) (Class!9012) (Val!9012) (DelimiterValue!18024 (del!9072 List!75208)) (KeywordValue!9018 (value!290797 List!75208)) (CommentValue!18024 (value!290798 List!75208)) (WhitespaceValue!18024 (value!290799 List!75208)) (IndentationValue!9012 (value!290800 List!75208)) (String!84833) (Int32!9012) (Broken!45061 (value!290801 List!75208)) (Boolean!9013) (Unit!171015) (OperatorValue!9015 (op!9072 List!75208)) (IdentifierValue!18024 (value!290802 List!75208)) (IdentifierValue!18025 (value!290803 List!75208)) (WhitespaceValue!18025 (value!290804 List!75208)) (True!18024) (False!18024) (Broken!45062 (value!290805 List!75208)) (Broken!45063 (value!290806 List!75208)) (True!18025) (RightBrace!9012) (RightBracket!9012) (Colon!9012) (Null!9012) (Comma!9012) (LeftBracket!9012) (False!18025) (LeftBrace!9012) (ImaginaryLiteralValue!9012 (text!63530 List!75208)) (StringLiteralValue!27036 (value!290807 List!75208)) (EOFValue!9012 (value!290808 List!75208)) (IdentValue!9012 (value!290809 List!75208)) (DelimiterValue!18025 (value!290810 List!75208)) (DedentValue!9012 (value!290811 List!75208)) (NewLineValue!9012 (value!290812 List!75208)) (IntegerValue!27036 (value!290813 (_ BitVec 32)) (text!63531 List!75208)) (IntegerValue!27037 (value!290814 Int) (text!63532 List!75208)) (Times!9012) (Or!9012) (Equal!9012) (Minus!9012) (Broken!45064 (value!290815 List!75208)) (And!9012) (Div!9012) (LessEqual!9012) (Mod!9012) (Concat!30775) (Not!9012) (Plus!9012) (SpaceValue!9012 (value!290816 List!75208)) (IntegerValue!27038 (value!290817 Int) (text!63533 List!75208)) (StringLiteralValue!27037 (text!63534 List!75208)) (FloatLiteralValue!18025 (text!63535 List!75208)) (BytesLiteralValue!9012 (value!290818 List!75208)) (CommentValue!18025 (value!290819 List!75208)) (StringLiteralValue!27038 (value!290820 List!75208)) (ErrorTokenValue!9012 (msg!9073 List!75208)) )
))
(declare-datatypes ((C!43864 0))(
  ( (C!43865 (val!32708 Int)) )
))
(declare-datatypes ((List!75209 0))(
  ( (Nil!75083) (Cons!75083 (h!81531 C!43864) (t!390979 List!75209)) )
))
(declare-datatypes ((IArray!31981 0))(
  ( (IArray!31982 (innerList!16048 List!75209)) )
))
(declare-datatypes ((Conc!15960 0))(
  ( (Node!15960 (left!57255 Conc!15960) (right!57585 Conc!15960) (csize!32150 Int) (cheight!16171 Int)) (Leaf!30616 (xs!19358 IArray!31981) (csize!32151 Int)) (Empty!15960) )
))
(declare-datatypes ((String!84834 0))(
  ( (String!84835 (value!290821 String)) )
))
(declare-datatypes ((BalanceConc!30876 0))(
  ( (BalanceConc!30877 (c!1474859 Conc!15960)) )
))
(declare-datatypes ((Regex!21763 0))(
  ( (ElementMatch!21763 (c!1474860 C!43864)) (Concat!30776 (regOne!44038 Regex!21763) (regTwo!44038 Regex!21763)) (EmptyExpr!21763) (Star!21763 (reg!22092 Regex!21763)) (EmptyLang!21763) (Union!21763 (regOne!44039 Regex!21763) (regTwo!44039 Regex!21763)) )
))
(declare-datatypes ((TokenValueInjection!17332 0))(
  ( (TokenValueInjection!17333 (toValue!11763 Int) (toChars!11622 Int)) )
))
(declare-datatypes ((Rule!17184 0))(
  ( (Rule!17185 (regex!8692 Regex!21763) (tag!9556 String!84834) (isSeparator!8692 Bool) (transformation!8692 TokenValueInjection!17332)) )
))
(declare-fun rNSep!142 () Rule!17184)

(declare-fun rSep!142 () Rule!17184)

(assert (=> b!8039843 (= res!3178036 (and (not (isSeparator!8692 rNSep!142)) (isSeparator!8692 rSep!142)))))

(declare-fun b!8039844 () Bool)

(declare-fun res!3178034 () Bool)

(assert (=> b!8039844 (=> (not res!3178034) (not e!4735644))))

(declare-datatypes ((List!75210 0))(
  ( (Nil!75084) (Cons!75084 (h!81532 Rule!17184) (t!390980 List!75210)) )
))
(declare-fun rules!4142 () List!75210)

(declare-fun rulesRec!188 () List!75210)

(declare-fun sepAndNonSepRulesDisjointChars!2052 (List!75210 List!75210) Bool)

(assert (=> b!8039844 (= res!3178034 (sepAndNonSepRulesDisjointChars!2052 rules!4142 rulesRec!188))))

(declare-fun e!4735635 () Bool)

(declare-fun b!8039845 () Bool)

(declare-fun e!4735636 () Bool)

(declare-fun tp!2408324 () Bool)

(declare-fun inv!96897 (String!84834) Bool)

(declare-fun inv!96899 (TokenValueInjection!17332) Bool)

(assert (=> b!8039845 (= e!4735636 (and tp!2408324 (inv!96897 (tag!9556 rSep!142)) (inv!96899 (transformation!8692 rSep!142)) e!4735635))))

(declare-fun b!8039846 () Bool)

(declare-fun e!4735641 () Bool)

(declare-fun e!4735634 () Bool)

(declare-fun tp!2408316 () Bool)

(assert (=> b!8039846 (= e!4735641 (and e!4735634 tp!2408316))))

(declare-fun res!3178037 () Bool)

(assert (=> start!756944 (=> (not res!3178037) (not e!4735644))))

(declare-datatypes ((LexerInterface!8282 0))(
  ( (LexerInterfaceExt!8279 (__x!35306 Int)) (Lexer!8280) )
))
(declare-fun thiss!27054 () LexerInterface!8282)

(get-info :version)

(assert (=> start!756944 (= res!3178037 ((_ is Lexer!8280) thiss!27054))))

(assert (=> start!756944 e!4735644))

(assert (=> start!756944 true))

(assert (=> start!756944 e!4735641))

(assert (=> start!756944 e!4735636))

(declare-fun e!4735639 () Bool)

(assert (=> start!756944 e!4735639))

(declare-fun e!4735642 () Bool)

(assert (=> start!756944 e!4735642))

(declare-fun tp_is_empty!54521 () Bool)

(assert (=> start!756944 tp_is_empty!54521))

(declare-fun e!4735646 () Bool)

(assert (=> b!8039847 (= e!4735646 (and tp!2408323 tp!2408325))))

(declare-fun b!8039848 () Bool)

(declare-fun tp!2408321 () Bool)

(assert (=> b!8039848 (= e!4735642 (and tp!2408321 (inv!96897 (tag!9556 rNSep!142)) (inv!96899 (transformation!8692 rNSep!142)) e!4735646))))

(declare-fun e!4735643 () Bool)

(assert (=> b!8039849 (= e!4735643 (and tp!2408317 tp!2408312))))

(declare-fun b!8039850 () Bool)

(declare-fun res!3178039 () Bool)

(assert (=> b!8039850 (=> (not res!3178039) (not e!4735644))))

(declare-fun contains!20967 (List!75210 Rule!17184) Bool)

(assert (=> b!8039850 (= res!3178039 (contains!20967 rules!4142 rSep!142))))

(assert (=> b!8039851 (= e!4735635 (and tp!2408318 tp!2408315))))

(declare-fun b!8039852 () Bool)

(declare-fun e!4735647 () Bool)

(declare-fun tp!2408314 () Bool)

(assert (=> b!8039852 (= e!4735634 (and tp!2408314 (inv!96897 (tag!9556 (h!81532 rules!4142))) (inv!96899 (transformation!8692 (h!81532 rules!4142))) e!4735647))))

(assert (=> b!8039853 (= e!4735647 (and tp!2408313 tp!2408319))))

(declare-fun b!8039854 () Bool)

(declare-fun res!3178033 () Bool)

(assert (=> b!8039854 (=> (not res!3178033) (not e!4735644))))

(assert (=> b!8039854 (= res!3178033 (contains!20967 rulesRec!188 rNSep!142))))

(declare-fun b!8039855 () Bool)

(declare-fun ruleDisjointCharsFromAllFromOtherType!971 (Rule!17184 List!75210) Bool)

(assert (=> b!8039855 (= e!4735644 (not (ruleDisjointCharsFromAllFromOtherType!971 rNSep!142 rules!4142)))))

(declare-fun b!8039856 () Bool)

(declare-fun res!3178040 () Bool)

(assert (=> b!8039856 (=> (not res!3178040) (not e!4735644))))

(assert (=> b!8039856 (= res!3178040 (and ((_ is Cons!75084) rulesRec!188) (= (h!81532 rulesRec!188) rNSep!142)))))

(declare-fun b!8039857 () Bool)

(declare-fun res!3178038 () Bool)

(assert (=> b!8039857 (=> (not res!3178038) (not e!4735644))))

(declare-fun c!6865 () C!43864)

(declare-fun contains!20968 (List!75209 C!43864) Bool)

(declare-fun usedCharacters!1270 (Regex!21763) List!75209)

(assert (=> b!8039857 (= res!3178038 (contains!20968 (usedCharacters!1270 (regex!8692 rSep!142)) c!6865))))

(declare-fun b!8039858 () Bool)

(declare-fun e!4735637 () Bool)

(declare-fun tp!2408322 () Bool)

(assert (=> b!8039858 (= e!4735639 (and e!4735637 tp!2408322))))

(declare-fun b!8039859 () Bool)

(declare-fun res!3178041 () Bool)

(assert (=> b!8039859 (=> (not res!3178041) (not e!4735644))))

(assert (=> b!8039859 (= res!3178041 (contains!20967 rules!4142 rNSep!142))))

(declare-fun b!8039860 () Bool)

(declare-fun res!3178035 () Bool)

(assert (=> b!8039860 (=> (not res!3178035) (not e!4735644))))

(declare-fun rulesInvariant!6750 (LexerInterface!8282 List!75210) Bool)

(assert (=> b!8039860 (= res!3178035 (rulesInvariant!6750 thiss!27054 rules!4142))))

(declare-fun b!8039861 () Bool)

(declare-fun tp!2408320 () Bool)

(assert (=> b!8039861 (= e!4735637 (and tp!2408320 (inv!96897 (tag!9556 (h!81532 rulesRec!188))) (inv!96899 (transformation!8692 (h!81532 rulesRec!188))) e!4735643))))

(assert (= (and start!756944 res!3178037) b!8039860))

(assert (= (and b!8039860 res!3178035) b!8039850))

(assert (= (and b!8039850 res!3178039) b!8039854))

(assert (= (and b!8039854 res!3178033) b!8039859))

(assert (= (and b!8039859 res!3178041) b!8039843))

(assert (= (and b!8039843 res!3178036) b!8039857))

(assert (= (and b!8039857 res!3178038) b!8039844))

(assert (= (and b!8039844 res!3178034) b!8039856))

(assert (= (and b!8039856 res!3178040) b!8039855))

(assert (= b!8039852 b!8039853))

(assert (= b!8039846 b!8039852))

(assert (= (and start!756944 ((_ is Cons!75084) rules!4142)) b!8039846))

(assert (= b!8039845 b!8039851))

(assert (= start!756944 b!8039845))

(assert (= b!8039861 b!8039849))

(assert (= b!8039858 b!8039861))

(assert (= (and start!756944 ((_ is Cons!75084) rulesRec!188)) b!8039858))

(assert (= b!8039848 b!8039847))

(assert (= start!756944 b!8039848))

(declare-fun m!8394618 () Bool)

(assert (=> b!8039844 m!8394618))

(declare-fun m!8394620 () Bool)

(assert (=> b!8039859 m!8394620))

(declare-fun m!8394622 () Bool)

(assert (=> b!8039860 m!8394622))

(declare-fun m!8394624 () Bool)

(assert (=> b!8039850 m!8394624))

(declare-fun m!8394626 () Bool)

(assert (=> b!8039845 m!8394626))

(declare-fun m!8394628 () Bool)

(assert (=> b!8039845 m!8394628))

(declare-fun m!8394630 () Bool)

(assert (=> b!8039848 m!8394630))

(declare-fun m!8394632 () Bool)

(assert (=> b!8039848 m!8394632))

(declare-fun m!8394634 () Bool)

(assert (=> b!8039852 m!8394634))

(declare-fun m!8394636 () Bool)

(assert (=> b!8039852 m!8394636))

(declare-fun m!8394638 () Bool)

(assert (=> b!8039855 m!8394638))

(declare-fun m!8394640 () Bool)

(assert (=> b!8039854 m!8394640))

(declare-fun m!8394642 () Bool)

(assert (=> b!8039861 m!8394642))

(declare-fun m!8394644 () Bool)

(assert (=> b!8039861 m!8394644))

(declare-fun m!8394646 () Bool)

(assert (=> b!8039857 m!8394646))

(assert (=> b!8039857 m!8394646))

(declare-fun m!8394648 () Bool)

(assert (=> b!8039857 m!8394648))

(check-sat b_and!353903 (not b!8039859) (not b_next!136263) (not b!8039858) (not b!8039844) (not b!8039857) b_and!353905 b_and!353909 (not b_next!136255) (not b!8039850) (not b_next!136257) (not b!8039852) (not b!8039848) (not b_next!136251) (not b!8039855) (not b!8039860) (not b!8039861) b_and!353895 (not b_next!136253) (not b!8039846) (not b_next!136259) b_and!353897 (not b!8039845) (not b!8039854) b_and!353907 (not b_next!136249) b_and!353901 tp_is_empty!54521 (not b_next!136261) b_and!353899)
(check-sat b_and!353903 (not b_next!136251) (not b_next!136263) b_and!353895 (not b_next!136253) b_and!353905 b_and!353909 (not b_next!136255) (not b_next!136257) b_and!353901 (not b_next!136259) b_and!353897 b_and!353907 (not b_next!136249) (not b_next!136261) b_and!353899)
(get-model)

(declare-fun d!2395394 () Bool)

(assert (=> d!2395394 (= (inv!96897 (tag!9556 (h!81532 rules!4142))) (= (mod (str.len (value!290821 (tag!9556 (h!81532 rules!4142)))) 2) 0))))

(assert (=> b!8039852 d!2395394))

(declare-fun d!2395396 () Bool)

(declare-fun res!3178050 () Bool)

(declare-fun e!4735650 () Bool)

(assert (=> d!2395396 (=> (not res!3178050) (not e!4735650))))

(declare-fun semiInverseModEq!3856 (Int Int) Bool)

(assert (=> d!2395396 (= res!3178050 (semiInverseModEq!3856 (toChars!11622 (transformation!8692 (h!81532 rules!4142))) (toValue!11763 (transformation!8692 (h!81532 rules!4142)))))))

(assert (=> d!2395396 (= (inv!96899 (transformation!8692 (h!81532 rules!4142))) e!4735650)))

(declare-fun b!8039864 () Bool)

(declare-fun equivClasses!3671 (Int Int) Bool)

(assert (=> b!8039864 (= e!4735650 (equivClasses!3671 (toChars!11622 (transformation!8692 (h!81532 rules!4142))) (toValue!11763 (transformation!8692 (h!81532 rules!4142)))))))

(assert (= (and d!2395396 res!3178050) b!8039864))

(declare-fun m!8394650 () Bool)

(assert (=> d!2395396 m!8394650))

(declare-fun m!8394652 () Bool)

(assert (=> b!8039864 m!8394652))

(assert (=> b!8039852 d!2395396))

(declare-fun d!2395398 () Bool)

(declare-fun lt!2722213 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16024 (List!75209) (InoxSet C!43864))

(assert (=> d!2395398 (= lt!2722213 (select (content!16024 (usedCharacters!1270 (regex!8692 rSep!142))) c!6865))))

(declare-fun e!4735656 () Bool)

(assert (=> d!2395398 (= lt!2722213 e!4735656)))

(declare-fun res!3178057 () Bool)

(assert (=> d!2395398 (=> (not res!3178057) (not e!4735656))))

(assert (=> d!2395398 (= res!3178057 ((_ is Cons!75083) (usedCharacters!1270 (regex!8692 rSep!142))))))

(assert (=> d!2395398 (= (contains!20968 (usedCharacters!1270 (regex!8692 rSep!142)) c!6865) lt!2722213)))

(declare-fun b!8039869 () Bool)

(declare-fun e!4735655 () Bool)

(assert (=> b!8039869 (= e!4735656 e!4735655)))

(declare-fun res!3178058 () Bool)

(assert (=> b!8039869 (=> res!3178058 e!4735655)))

(assert (=> b!8039869 (= res!3178058 (= (h!81531 (usedCharacters!1270 (regex!8692 rSep!142))) c!6865))))

(declare-fun b!8039870 () Bool)

(assert (=> b!8039870 (= e!4735655 (contains!20968 (t!390979 (usedCharacters!1270 (regex!8692 rSep!142))) c!6865))))

(assert (= (and d!2395398 res!3178057) b!8039869))

(assert (= (and b!8039869 (not res!3178058)) b!8039870))

(assert (=> d!2395398 m!8394646))

(declare-fun m!8394654 () Bool)

(assert (=> d!2395398 m!8394654))

(declare-fun m!8394656 () Bool)

(assert (=> d!2395398 m!8394656))

(declare-fun m!8394658 () Bool)

(assert (=> b!8039870 m!8394658))

(assert (=> b!8039857 d!2395398))

(declare-fun bm!746322 () Bool)

(declare-fun call!746328 () List!75209)

(declare-fun call!746329 () List!75209)

(declare-fun call!746330 () List!75209)

(declare-fun ++!18617 (List!75209 List!75209) List!75209)

(assert (=> bm!746322 (= call!746328 (++!18617 call!746329 call!746330))))

(declare-fun b!8039898 () Bool)

(declare-fun e!4735674 () List!75209)

(declare-fun call!746327 () List!75209)

(assert (=> b!8039898 (= e!4735674 call!746327)))

(declare-fun b!8039899 () Bool)

(declare-fun e!4735676 () List!75209)

(assert (=> b!8039899 (= e!4735674 e!4735676)))

(declare-fun c!1474873 () Bool)

(assert (=> b!8039899 (= c!1474873 ((_ is Union!21763) (regex!8692 rSep!142)))))

(declare-fun b!8039900 () Bool)

(declare-fun e!4735675 () List!75209)

(assert (=> b!8039900 (= e!4735675 Nil!75083)))

(declare-fun bm!746323 () Bool)

(assert (=> bm!746323 (= call!746329 call!746327)))

(declare-fun b!8039901 () Bool)

(declare-fun c!1474874 () Bool)

(assert (=> b!8039901 (= c!1474874 ((_ is Star!21763) (regex!8692 rSep!142)))))

(declare-fun e!4735673 () List!75209)

(assert (=> b!8039901 (= e!4735673 e!4735674)))

(declare-fun bm!746324 () Bool)

(assert (=> bm!746324 (= call!746330 (usedCharacters!1270 (ite c!1474873 (regTwo!44039 (regex!8692 rSep!142)) (regTwo!44038 (regex!8692 rSep!142)))))))

(declare-fun bm!746325 () Bool)

(assert (=> bm!746325 (= call!746327 (usedCharacters!1270 (ite c!1474874 (reg!22092 (regex!8692 rSep!142)) (ite c!1474873 (regOne!44039 (regex!8692 rSep!142)) (regOne!44038 (regex!8692 rSep!142))))))))

(declare-fun b!8039902 () Bool)

(assert (=> b!8039902 (= e!4735675 e!4735673)))

(declare-fun c!1474871 () Bool)

(assert (=> b!8039902 (= c!1474871 ((_ is ElementMatch!21763) (regex!8692 rSep!142)))))

(declare-fun b!8039897 () Bool)

(assert (=> b!8039897 (= e!4735676 call!746328)))

(declare-fun d!2395402 () Bool)

(declare-fun c!1474872 () Bool)

(assert (=> d!2395402 (= c!1474872 (or ((_ is EmptyExpr!21763) (regex!8692 rSep!142)) ((_ is EmptyLang!21763) (regex!8692 rSep!142))))))

(assert (=> d!2395402 (= (usedCharacters!1270 (regex!8692 rSep!142)) e!4735675)))

(declare-fun b!8039903 () Bool)

(assert (=> b!8039903 (= e!4735673 (Cons!75083 (c!1474860 (regex!8692 rSep!142)) Nil!75083))))

(declare-fun b!8039904 () Bool)

(assert (=> b!8039904 (= e!4735676 call!746328)))

(assert (= (and d!2395402 c!1474872) b!8039900))

(assert (= (and d!2395402 (not c!1474872)) b!8039902))

(assert (= (and b!8039902 c!1474871) b!8039903))

(assert (= (and b!8039902 (not c!1474871)) b!8039901))

(assert (= (and b!8039901 c!1474874) b!8039898))

(assert (= (and b!8039901 (not c!1474874)) b!8039899))

(assert (= (and b!8039899 c!1474873) b!8039904))

(assert (= (and b!8039899 (not c!1474873)) b!8039897))

(assert (= (or b!8039904 b!8039897) bm!746324))

(assert (= (or b!8039904 b!8039897) bm!746323))

(assert (= (or b!8039904 b!8039897) bm!746322))

(assert (= (or b!8039898 bm!746323) bm!746325))

(declare-fun m!8394666 () Bool)

(assert (=> bm!746322 m!8394666))

(declare-fun m!8394668 () Bool)

(assert (=> bm!746324 m!8394668))

(declare-fun m!8394670 () Bool)

(assert (=> bm!746325 m!8394670))

(assert (=> b!8039857 d!2395402))

(declare-fun d!2395406 () Bool)

(assert (=> d!2395406 (= (inv!96897 (tag!9556 rSep!142)) (= (mod (str.len (value!290821 (tag!9556 rSep!142))) 2) 0))))

(assert (=> b!8039845 d!2395406))

(declare-fun d!2395408 () Bool)

(declare-fun res!3178065 () Bool)

(declare-fun e!4735683 () Bool)

(assert (=> d!2395408 (=> (not res!3178065) (not e!4735683))))

(assert (=> d!2395408 (= res!3178065 (semiInverseModEq!3856 (toChars!11622 (transformation!8692 rSep!142)) (toValue!11763 (transformation!8692 rSep!142))))))

(assert (=> d!2395408 (= (inv!96899 (transformation!8692 rSep!142)) e!4735683)))

(declare-fun b!8039917 () Bool)

(assert (=> b!8039917 (= e!4735683 (equivClasses!3671 (toChars!11622 (transformation!8692 rSep!142)) (toValue!11763 (transformation!8692 rSep!142))))))

(assert (= (and d!2395408 res!3178065) b!8039917))

(declare-fun m!8394672 () Bool)

(assert (=> d!2395408 m!8394672))

(declare-fun m!8394674 () Bool)

(assert (=> b!8039917 m!8394674))

(assert (=> b!8039845 d!2395408))

(declare-fun d!2395410 () Bool)

(assert (=> d!2395410 (= (inv!96897 (tag!9556 (h!81532 rulesRec!188))) (= (mod (str.len (value!290821 (tag!9556 (h!81532 rulesRec!188)))) 2) 0))))

(assert (=> b!8039861 d!2395410))

(declare-fun d!2395412 () Bool)

(declare-fun res!3178066 () Bool)

(declare-fun e!4735684 () Bool)

(assert (=> d!2395412 (=> (not res!3178066) (not e!4735684))))

(assert (=> d!2395412 (= res!3178066 (semiInverseModEq!3856 (toChars!11622 (transformation!8692 (h!81532 rulesRec!188))) (toValue!11763 (transformation!8692 (h!81532 rulesRec!188)))))))

(assert (=> d!2395412 (= (inv!96899 (transformation!8692 (h!81532 rulesRec!188))) e!4735684)))

(declare-fun b!8039918 () Bool)

(assert (=> b!8039918 (= e!4735684 (equivClasses!3671 (toChars!11622 (transformation!8692 (h!81532 rulesRec!188))) (toValue!11763 (transformation!8692 (h!81532 rulesRec!188)))))))

(assert (= (and d!2395412 res!3178066) b!8039918))

(declare-fun m!8394676 () Bool)

(assert (=> d!2395412 m!8394676))

(declare-fun m!8394678 () Bool)

(assert (=> b!8039918 m!8394678))

(assert (=> b!8039861 d!2395412))

(declare-fun d!2395414 () Bool)

(declare-fun lt!2722219 () Bool)

(declare-fun content!16026 (List!75210) (InoxSet Rule!17184))

(assert (=> d!2395414 (= lt!2722219 (select (content!16026 rules!4142) rSep!142))))

(declare-fun e!4735689 () Bool)

(assert (=> d!2395414 (= lt!2722219 e!4735689)))

(declare-fun res!3178071 () Bool)

(assert (=> d!2395414 (=> (not res!3178071) (not e!4735689))))

(assert (=> d!2395414 (= res!3178071 ((_ is Cons!75084) rules!4142))))

(assert (=> d!2395414 (= (contains!20967 rules!4142 rSep!142) lt!2722219)))

(declare-fun b!8039923 () Bool)

(declare-fun e!4735690 () Bool)

(assert (=> b!8039923 (= e!4735689 e!4735690)))

(declare-fun res!3178072 () Bool)

(assert (=> b!8039923 (=> res!3178072 e!4735690)))

(assert (=> b!8039923 (= res!3178072 (= (h!81532 rules!4142) rSep!142))))

(declare-fun b!8039924 () Bool)

(assert (=> b!8039924 (= e!4735690 (contains!20967 (t!390980 rules!4142) rSep!142))))

(assert (= (and d!2395414 res!3178071) b!8039923))

(assert (= (and b!8039923 (not res!3178072)) b!8039924))

(declare-fun m!8394680 () Bool)

(assert (=> d!2395414 m!8394680))

(declare-fun m!8394682 () Bool)

(assert (=> d!2395414 m!8394682))

(declare-fun m!8394684 () Bool)

(assert (=> b!8039924 m!8394684))

(assert (=> b!8039850 d!2395414))

(declare-fun b!8039941 () Bool)

(declare-fun e!4735702 () Bool)

(declare-fun call!746345 () Bool)

(assert (=> b!8039941 (= e!4735702 call!746345)))

(declare-fun bm!746340 () Bool)

(assert (=> bm!746340 (= call!746345 (ruleDisjointCharsFromAllFromOtherType!971 rNSep!142 (t!390980 rules!4142)))))

(declare-fun b!8039942 () Bool)

(declare-fun e!4735703 () Bool)

(declare-fun e!4735701 () Bool)

(assert (=> b!8039942 (= e!4735703 e!4735701)))

(declare-fun res!3178078 () Bool)

(assert (=> b!8039942 (= res!3178078 (not ((_ is Cons!75084) rules!4142)))))

(assert (=> b!8039942 (=> res!3178078 e!4735701)))

(declare-fun d!2395416 () Bool)

(declare-fun c!1474887 () Bool)

(assert (=> d!2395416 (= c!1474887 (and ((_ is Cons!75084) rules!4142) (not (= (isSeparator!8692 (h!81532 rules!4142)) (isSeparator!8692 rNSep!142)))))))

(assert (=> d!2395416 (= (ruleDisjointCharsFromAllFromOtherType!971 rNSep!142 rules!4142) e!4735703)))

(declare-fun b!8039943 () Bool)

(assert (=> b!8039943 (= e!4735703 e!4735702)))

(declare-fun res!3178077 () Bool)

(declare-fun rulesUseDisjointChars!388 (Rule!17184 Rule!17184) Bool)

(assert (=> b!8039943 (= res!3178077 (rulesUseDisjointChars!388 rNSep!142 (h!81532 rules!4142)))))

(assert (=> b!8039943 (=> (not res!3178077) (not e!4735702))))

(declare-fun b!8039944 () Bool)

(assert (=> b!8039944 (= e!4735701 call!746345)))

(assert (= (and d!2395416 c!1474887) b!8039943))

(assert (= (and d!2395416 (not c!1474887)) b!8039942))

(assert (= (and b!8039943 res!3178077) b!8039941))

(assert (= (and b!8039942 (not res!3178078)) b!8039944))

(assert (= (or b!8039941 b!8039944) bm!746340))

(declare-fun m!8394692 () Bool)

(assert (=> bm!746340 m!8394692))

(declare-fun m!8394694 () Bool)

(assert (=> b!8039943 m!8394694))

(assert (=> b!8039855 d!2395416))

(declare-fun d!2395422 () Bool)

(declare-fun res!3178086 () Bool)

(declare-fun e!4735711 () Bool)

(assert (=> d!2395422 (=> res!3178086 e!4735711)))

(assert (=> d!2395422 (= res!3178086 (not ((_ is Cons!75084) rulesRec!188)))))

(assert (=> d!2395422 (= (sepAndNonSepRulesDisjointChars!2052 rules!4142 rulesRec!188) e!4735711)))

(declare-fun b!8039952 () Bool)

(declare-fun e!4735712 () Bool)

(assert (=> b!8039952 (= e!4735711 e!4735712)))

(declare-fun res!3178087 () Bool)

(assert (=> b!8039952 (=> (not res!3178087) (not e!4735712))))

(assert (=> b!8039952 (= res!3178087 (ruleDisjointCharsFromAllFromOtherType!971 (h!81532 rulesRec!188) rules!4142))))

(declare-fun b!8039953 () Bool)

(assert (=> b!8039953 (= e!4735712 (sepAndNonSepRulesDisjointChars!2052 rules!4142 (t!390980 rulesRec!188)))))

(assert (= (and d!2395422 (not res!3178086)) b!8039952))

(assert (= (and b!8039952 res!3178087) b!8039953))

(declare-fun m!8394700 () Bool)

(assert (=> b!8039952 m!8394700))

(declare-fun m!8394702 () Bool)

(assert (=> b!8039953 m!8394702))

(assert (=> b!8039844 d!2395422))

(declare-fun d!2395426 () Bool)

(declare-fun res!3178096 () Bool)

(declare-fun e!4735721 () Bool)

(assert (=> d!2395426 (=> (not res!3178096) (not e!4735721))))

(declare-fun rulesValid!3133 (LexerInterface!8282 List!75210) Bool)

(assert (=> d!2395426 (= res!3178096 (rulesValid!3133 thiss!27054 rules!4142))))

(assert (=> d!2395426 (= (rulesInvariant!6750 thiss!27054 rules!4142) e!4735721)))

(declare-fun b!8039962 () Bool)

(declare-datatypes ((List!75211 0))(
  ( (Nil!75085) (Cons!75085 (h!81533 String!84834) (t!390981 List!75211)) )
))
(declare-fun noDuplicateTag!3294 (LexerInterface!8282 List!75210 List!75211) Bool)

(assert (=> b!8039962 (= e!4735721 (noDuplicateTag!3294 thiss!27054 rules!4142 Nil!75085))))

(assert (= (and d!2395426 res!3178096) b!8039962))

(declare-fun m!8394704 () Bool)

(assert (=> d!2395426 m!8394704))

(declare-fun m!8394706 () Bool)

(assert (=> b!8039962 m!8394706))

(assert (=> b!8039860 d!2395426))

(declare-fun d!2395428 () Bool)

(declare-fun lt!2722220 () Bool)

(assert (=> d!2395428 (= lt!2722220 (select (content!16026 rulesRec!188) rNSep!142))))

(declare-fun e!4735722 () Bool)

(assert (=> d!2395428 (= lt!2722220 e!4735722)))

(declare-fun res!3178097 () Bool)

(assert (=> d!2395428 (=> (not res!3178097) (not e!4735722))))

(assert (=> d!2395428 (= res!3178097 ((_ is Cons!75084) rulesRec!188))))

(assert (=> d!2395428 (= (contains!20967 rulesRec!188 rNSep!142) lt!2722220)))

(declare-fun b!8039963 () Bool)

(declare-fun e!4735723 () Bool)

(assert (=> b!8039963 (= e!4735722 e!4735723)))

(declare-fun res!3178098 () Bool)

(assert (=> b!8039963 (=> res!3178098 e!4735723)))

(assert (=> b!8039963 (= res!3178098 (= (h!81532 rulesRec!188) rNSep!142))))

(declare-fun b!8039964 () Bool)

(assert (=> b!8039964 (= e!4735723 (contains!20967 (t!390980 rulesRec!188) rNSep!142))))

(assert (= (and d!2395428 res!3178097) b!8039963))

(assert (= (and b!8039963 (not res!3178098)) b!8039964))

(declare-fun m!8394712 () Bool)

(assert (=> d!2395428 m!8394712))

(declare-fun m!8394714 () Bool)

(assert (=> d!2395428 m!8394714))

(declare-fun m!8394716 () Bool)

(assert (=> b!8039964 m!8394716))

(assert (=> b!8039854 d!2395428))

(declare-fun d!2395434 () Bool)

(declare-fun lt!2722221 () Bool)

(assert (=> d!2395434 (= lt!2722221 (select (content!16026 rules!4142) rNSep!142))))

(declare-fun e!4735725 () Bool)

(assert (=> d!2395434 (= lt!2722221 e!4735725)))

(declare-fun res!3178100 () Bool)

(assert (=> d!2395434 (=> (not res!3178100) (not e!4735725))))

(assert (=> d!2395434 (= res!3178100 ((_ is Cons!75084) rules!4142))))

(assert (=> d!2395434 (= (contains!20967 rules!4142 rNSep!142) lt!2722221)))

(declare-fun b!8039966 () Bool)

(declare-fun e!4735726 () Bool)

(assert (=> b!8039966 (= e!4735725 e!4735726)))

(declare-fun res!3178101 () Bool)

(assert (=> b!8039966 (=> res!3178101 e!4735726)))

(assert (=> b!8039966 (= res!3178101 (= (h!81532 rules!4142) rNSep!142))))

(declare-fun b!8039967 () Bool)

(assert (=> b!8039967 (= e!4735726 (contains!20967 (t!390980 rules!4142) rNSep!142))))

(assert (= (and d!2395434 res!3178100) b!8039966))

(assert (= (and b!8039966 (not res!3178101)) b!8039967))

(assert (=> d!2395434 m!8394680))

(declare-fun m!8394722 () Bool)

(assert (=> d!2395434 m!8394722))

(declare-fun m!8394724 () Bool)

(assert (=> b!8039967 m!8394724))

(assert (=> b!8039859 d!2395434))

(declare-fun d!2395440 () Bool)

(assert (=> d!2395440 (= (inv!96897 (tag!9556 rNSep!142)) (= (mod (str.len (value!290821 (tag!9556 rNSep!142))) 2) 0))))

(assert (=> b!8039848 d!2395440))

(declare-fun d!2395442 () Bool)

(declare-fun res!3178103 () Bool)

(declare-fun e!4735728 () Bool)

(assert (=> d!2395442 (=> (not res!3178103) (not e!4735728))))

(assert (=> d!2395442 (= res!3178103 (semiInverseModEq!3856 (toChars!11622 (transformation!8692 rNSep!142)) (toValue!11763 (transformation!8692 rNSep!142))))))

(assert (=> d!2395442 (= (inv!96899 (transformation!8692 rNSep!142)) e!4735728)))

(declare-fun b!8039969 () Bool)

(assert (=> b!8039969 (= e!4735728 (equivClasses!3671 (toChars!11622 (transformation!8692 rNSep!142)) (toValue!11763 (transformation!8692 rNSep!142))))))

(assert (= (and d!2395442 res!3178103) b!8039969))

(declare-fun m!8394730 () Bool)

(assert (=> d!2395442 m!8394730))

(declare-fun m!8394732 () Bool)

(assert (=> b!8039969 m!8394732))

(assert (=> b!8039848 d!2395442))

(declare-fun b!8039982 () Bool)

(declare-fun b_free!135475 () Bool)

(declare-fun b_next!136265 () Bool)

(assert (=> b!8039982 (= b_free!135475 (not b_next!136265))))

(declare-fun tp!2408334 () Bool)

(declare-fun b_and!353911 () Bool)

(assert (=> b!8039982 (= tp!2408334 b_and!353911)))

(declare-fun b_free!135477 () Bool)

(declare-fun b_next!136267 () Bool)

(assert (=> b!8039982 (= b_free!135477 (not b_next!136267))))

(declare-fun tp!2408336 () Bool)

(declare-fun b_and!353913 () Bool)

(assert (=> b!8039982 (= tp!2408336 b_and!353913)))

(declare-fun e!4735741 () Bool)

(assert (=> b!8039982 (= e!4735741 (and tp!2408334 tp!2408336))))

(declare-fun b!8039981 () Bool)

(declare-fun tp!2408335 () Bool)

(declare-fun e!4735739 () Bool)

(assert (=> b!8039981 (= e!4735739 (and tp!2408335 (inv!96897 (tag!9556 (h!81532 (t!390980 rulesRec!188)))) (inv!96899 (transformation!8692 (h!81532 (t!390980 rulesRec!188)))) e!4735741))))

(declare-fun b!8039980 () Bool)

(declare-fun e!4735740 () Bool)

(declare-fun tp!2408337 () Bool)

(assert (=> b!8039980 (= e!4735740 (and e!4735739 tp!2408337))))

(assert (=> b!8039858 (= tp!2408322 e!4735740)))

(assert (= b!8039981 b!8039982))

(assert (= b!8039980 b!8039981))

(assert (= (and b!8039858 ((_ is Cons!75084) (t!390980 rulesRec!188))) b!8039980))

(declare-fun m!8394734 () Bool)

(assert (=> b!8039981 m!8394734))

(declare-fun m!8394736 () Bool)

(assert (=> b!8039981 m!8394736))

(declare-fun e!4735746 () Bool)

(assert (=> b!8039852 (= tp!2408314 e!4735746)))

(declare-fun b!8039995 () Bool)

(declare-fun tp!2408349 () Bool)

(declare-fun tp!2408352 () Bool)

(assert (=> b!8039995 (= e!4735746 (and tp!2408349 tp!2408352))))

(declare-fun b!8039996 () Bool)

(declare-fun tp!2408350 () Bool)

(assert (=> b!8039996 (= e!4735746 tp!2408350)))

(declare-fun b!8039997 () Bool)

(declare-fun tp!2408348 () Bool)

(declare-fun tp!2408351 () Bool)

(assert (=> b!8039997 (= e!4735746 (and tp!2408348 tp!2408351))))

(declare-fun b!8039994 () Bool)

(assert (=> b!8039994 (= e!4735746 tp_is_empty!54521)))

(assert (= (and b!8039852 ((_ is ElementMatch!21763) (regex!8692 (h!81532 rules!4142)))) b!8039994))

(assert (= (and b!8039852 ((_ is Concat!30776) (regex!8692 (h!81532 rules!4142)))) b!8039995))

(assert (= (and b!8039852 ((_ is Star!21763) (regex!8692 (h!81532 rules!4142)))) b!8039996))

(assert (= (and b!8039852 ((_ is Union!21763) (regex!8692 (h!81532 rules!4142)))) b!8039997))

(declare-fun b!8040000 () Bool)

(declare-fun b_free!135479 () Bool)

(declare-fun b_next!136269 () Bool)

(assert (=> b!8040000 (= b_free!135479 (not b_next!136269))))

(declare-fun tp!2408353 () Bool)

(declare-fun b_and!353915 () Bool)

(assert (=> b!8040000 (= tp!2408353 b_and!353915)))

(declare-fun b_free!135481 () Bool)

(declare-fun b_next!136271 () Bool)

(assert (=> b!8040000 (= b_free!135481 (not b_next!136271))))

(declare-fun tp!2408355 () Bool)

(declare-fun b_and!353917 () Bool)

(assert (=> b!8040000 (= tp!2408355 b_and!353917)))

(declare-fun e!4735749 () Bool)

(assert (=> b!8040000 (= e!4735749 (and tp!2408353 tp!2408355))))

(declare-fun e!4735747 () Bool)

(declare-fun tp!2408354 () Bool)

(declare-fun b!8039999 () Bool)

(assert (=> b!8039999 (= e!4735747 (and tp!2408354 (inv!96897 (tag!9556 (h!81532 (t!390980 rules!4142)))) (inv!96899 (transformation!8692 (h!81532 (t!390980 rules!4142)))) e!4735749))))

(declare-fun b!8039998 () Bool)

(declare-fun e!4735748 () Bool)

(declare-fun tp!2408356 () Bool)

(assert (=> b!8039998 (= e!4735748 (and e!4735747 tp!2408356))))

(assert (=> b!8039846 (= tp!2408316 e!4735748)))

(assert (= b!8039999 b!8040000))

(assert (= b!8039998 b!8039999))

(assert (= (and b!8039846 ((_ is Cons!75084) (t!390980 rules!4142))) b!8039998))

(declare-fun m!8394742 () Bool)

(assert (=> b!8039999 m!8394742))

(declare-fun m!8394744 () Bool)

(assert (=> b!8039999 m!8394744))

(declare-fun e!4735751 () Bool)

(assert (=> b!8039845 (= tp!2408324 e!4735751)))

(declare-fun b!8040002 () Bool)

(declare-fun tp!2408358 () Bool)

(declare-fun tp!2408361 () Bool)

(assert (=> b!8040002 (= e!4735751 (and tp!2408358 tp!2408361))))

(declare-fun b!8040003 () Bool)

(declare-fun tp!2408359 () Bool)

(assert (=> b!8040003 (= e!4735751 tp!2408359)))

(declare-fun b!8040004 () Bool)

(declare-fun tp!2408357 () Bool)

(declare-fun tp!2408360 () Bool)

(assert (=> b!8040004 (= e!4735751 (and tp!2408357 tp!2408360))))

(declare-fun b!8040001 () Bool)

(assert (=> b!8040001 (= e!4735751 tp_is_empty!54521)))

(assert (= (and b!8039845 ((_ is ElementMatch!21763) (regex!8692 rSep!142))) b!8040001))

(assert (= (and b!8039845 ((_ is Concat!30776) (regex!8692 rSep!142))) b!8040002))

(assert (= (and b!8039845 ((_ is Star!21763) (regex!8692 rSep!142))) b!8040003))

(assert (= (and b!8039845 ((_ is Union!21763) (regex!8692 rSep!142))) b!8040004))

(declare-fun e!4735752 () Bool)

(assert (=> b!8039861 (= tp!2408320 e!4735752)))

(declare-fun b!8040006 () Bool)

(declare-fun tp!2408363 () Bool)

(declare-fun tp!2408366 () Bool)

(assert (=> b!8040006 (= e!4735752 (and tp!2408363 tp!2408366))))

(declare-fun b!8040007 () Bool)

(declare-fun tp!2408364 () Bool)

(assert (=> b!8040007 (= e!4735752 tp!2408364)))

(declare-fun b!8040008 () Bool)

(declare-fun tp!2408362 () Bool)

(declare-fun tp!2408365 () Bool)

(assert (=> b!8040008 (= e!4735752 (and tp!2408362 tp!2408365))))

(declare-fun b!8040005 () Bool)

(assert (=> b!8040005 (= e!4735752 tp_is_empty!54521)))

(assert (= (and b!8039861 ((_ is ElementMatch!21763) (regex!8692 (h!81532 rulesRec!188)))) b!8040005))

(assert (= (and b!8039861 ((_ is Concat!30776) (regex!8692 (h!81532 rulesRec!188)))) b!8040006))

(assert (= (and b!8039861 ((_ is Star!21763) (regex!8692 (h!81532 rulesRec!188)))) b!8040007))

(assert (= (and b!8039861 ((_ is Union!21763) (regex!8692 (h!81532 rulesRec!188)))) b!8040008))

(declare-fun e!4735753 () Bool)

(assert (=> b!8039848 (= tp!2408321 e!4735753)))

(declare-fun b!8040010 () Bool)

(declare-fun tp!2408368 () Bool)

(declare-fun tp!2408371 () Bool)

(assert (=> b!8040010 (= e!4735753 (and tp!2408368 tp!2408371))))

(declare-fun b!8040011 () Bool)

(declare-fun tp!2408369 () Bool)

(assert (=> b!8040011 (= e!4735753 tp!2408369)))

(declare-fun b!8040012 () Bool)

(declare-fun tp!2408367 () Bool)

(declare-fun tp!2408370 () Bool)

(assert (=> b!8040012 (= e!4735753 (and tp!2408367 tp!2408370))))

(declare-fun b!8040009 () Bool)

(assert (=> b!8040009 (= e!4735753 tp_is_empty!54521)))

(assert (= (and b!8039848 ((_ is ElementMatch!21763) (regex!8692 rNSep!142))) b!8040009))

(assert (= (and b!8039848 ((_ is Concat!30776) (regex!8692 rNSep!142))) b!8040010))

(assert (= (and b!8039848 ((_ is Star!21763) (regex!8692 rNSep!142))) b!8040011))

(assert (= (and b!8039848 ((_ is Union!21763) (regex!8692 rNSep!142))) b!8040012))

(check-sat (not b!8040004) b_and!353913 (not b_next!136263) (not b!8040011) (not b!8040006) (not b!8039943) b_and!353911 b_and!353903 (not b!8040012) (not b_next!136251) (not d!2395434) (not b_next!136265) (not d!2395426) b_and!353917 (not b!8039918) (not d!2395408) (not bm!746324) (not b_next!136267) (not b_next!136271) b_and!353895 (not b_next!136253) (not b!8039917) (not b!8040008) (not b!8040007) b_and!353905 (not b!8039995) (not b!8039952) (not d!2395414) (not b!8039997) b_and!353915 (not d!2395442) b_and!353909 (not b!8039962) (not b!8039964) (not b_next!136255) (not b_next!136259) b_and!353897 (not b_next!136257) (not d!2395412) b_and!353907 (not bm!746340) (not bm!746322) (not b!8039980) (not b_next!136249) (not b!8039969) (not b!8040010) (not d!2395428) (not b!8039981) (not d!2395396) (not b!8039870) b_and!353901 (not b!8039998) tp_is_empty!54521 (not b!8039924) (not b_next!136269) (not bm!746325) (not b!8039864) (not b!8039999) (not b!8040003) (not b!8039996) (not b!8039967) (not b!8039953) (not b!8040002) (not b_next!136261) (not d!2395398) b_and!353899)
(check-sat b_and!353903 b_and!353913 (not b_next!136251) (not b_next!136263) (not b_next!136265) b_and!353917 (not b_next!136253) b_and!353905 b_and!353915 b_and!353909 (not b_next!136255) (not b_next!136257) b_and!353901 (not b_next!136269) b_and!353911 (not b_next!136267) (not b_next!136271) b_and!353895 (not b_next!136259) b_and!353897 b_and!353907 (not b_next!136249) (not b_next!136261) b_and!353899)
