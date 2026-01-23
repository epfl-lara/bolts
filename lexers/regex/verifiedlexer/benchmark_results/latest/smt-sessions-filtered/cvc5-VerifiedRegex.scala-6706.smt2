; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!351384 () Bool)

(assert start!351384)

(declare-fun b!3743014 () Bool)

(declare-fun b_free!99221 () Bool)

(declare-fun b_next!99925 () Bool)

(assert (=> b!3743014 (= b_free!99221 (not b_next!99925))))

(declare-fun tp!1140906 () Bool)

(declare-fun b_and!277455 () Bool)

(assert (=> b!3743014 (= tp!1140906 b_and!277455)))

(declare-fun b_free!99223 () Bool)

(declare-fun b_next!99927 () Bool)

(assert (=> b!3743014 (= b_free!99223 (not b_next!99927))))

(declare-fun tp!1140912 () Bool)

(declare-fun b_and!277457 () Bool)

(assert (=> b!3743014 (= tp!1140912 b_and!277457)))

(declare-fun b!3743016 () Bool)

(declare-fun b_free!99225 () Bool)

(declare-fun b_next!99929 () Bool)

(assert (=> b!3743016 (= b_free!99225 (not b_next!99929))))

(declare-fun tp!1140903 () Bool)

(declare-fun b_and!277459 () Bool)

(assert (=> b!3743016 (= tp!1140903 b_and!277459)))

(declare-fun b_free!99227 () Bool)

(declare-fun b_next!99931 () Bool)

(assert (=> b!3743016 (= b_free!99227 (not b_next!99931))))

(declare-fun tp!1140911 () Bool)

(declare-fun b_and!277461 () Bool)

(assert (=> b!3743016 (= tp!1140911 b_and!277461)))

(declare-fun b!3743005 () Bool)

(declare-fun b_free!99229 () Bool)

(declare-fun b_next!99933 () Bool)

(assert (=> b!3743005 (= b_free!99229 (not b_next!99933))))

(declare-fun tp!1140902 () Bool)

(declare-fun b_and!277463 () Bool)

(assert (=> b!3743005 (= tp!1140902 b_and!277463)))

(declare-fun b_free!99231 () Bool)

(declare-fun b_next!99935 () Bool)

(assert (=> b!3743005 (= b_free!99231 (not b_next!99935))))

(declare-fun tp!1140901 () Bool)

(declare-fun b_and!277465 () Bool)

(assert (=> b!3743005 (= tp!1140901 b_and!277465)))

(declare-fun b!3743007 () Bool)

(declare-fun b_free!99233 () Bool)

(declare-fun b_next!99937 () Bool)

(assert (=> b!3743007 (= b_free!99233 (not b_next!99937))))

(declare-fun tp!1140910 () Bool)

(declare-fun b_and!277467 () Bool)

(assert (=> b!3743007 (= tp!1140910 b_and!277467)))

(declare-fun b_free!99235 () Bool)

(declare-fun b_next!99939 () Bool)

(assert (=> b!3743007 (= b_free!99235 (not b_next!99939))))

(declare-fun tp!1140914 () Bool)

(declare-fun b_and!277469 () Bool)

(assert (=> b!3743007 (= tp!1140914 b_and!277469)))

(declare-fun b!3742999 () Bool)

(declare-fun res!1517180 () Bool)

(declare-fun e!2314191 () Bool)

(assert (=> b!3742999 (=> (not res!1517180) (not e!2314191))))

(declare-datatypes ((List!39839 0))(
  ( (Nil!39715) (Cons!39715 (h!45135 (_ BitVec 16)) (t!302522 List!39839)) )
))
(declare-datatypes ((TokenValue!6275 0))(
  ( (FloatLiteralValue!12550 (text!44370 List!39839)) (TokenValueExt!6274 (__x!24767 Int)) (Broken!31375 (value!192871 List!39839)) (Object!6398) (End!6275) (Def!6275) (Underscore!6275) (Match!6275) (Else!6275) (Error!6275) (Case!6275) (If!6275) (Extends!6275) (Abstract!6275) (Class!6275) (Val!6275) (DelimiterValue!12550 (del!6335 List!39839)) (KeywordValue!6281 (value!192872 List!39839)) (CommentValue!12550 (value!192873 List!39839)) (WhitespaceValue!12550 (value!192874 List!39839)) (IndentationValue!6275 (value!192875 List!39839)) (String!45002) (Int32!6275) (Broken!31376 (value!192876 List!39839)) (Boolean!6276) (Unit!57610) (OperatorValue!6278 (op!6335 List!39839)) (IdentifierValue!12550 (value!192877 List!39839)) (IdentifierValue!12551 (value!192878 List!39839)) (WhitespaceValue!12551 (value!192879 List!39839)) (True!12550) (False!12550) (Broken!31377 (value!192880 List!39839)) (Broken!31378 (value!192881 List!39839)) (True!12551) (RightBrace!6275) (RightBracket!6275) (Colon!6275) (Null!6275) (Comma!6275) (LeftBracket!6275) (False!12551) (LeftBrace!6275) (ImaginaryLiteralValue!6275 (text!44371 List!39839)) (StringLiteralValue!18825 (value!192882 List!39839)) (EOFValue!6275 (value!192883 List!39839)) (IdentValue!6275 (value!192884 List!39839)) (DelimiterValue!12551 (value!192885 List!39839)) (DedentValue!6275 (value!192886 List!39839)) (NewLineValue!6275 (value!192887 List!39839)) (IntegerValue!18825 (value!192888 (_ BitVec 32)) (text!44372 List!39839)) (IntegerValue!18826 (value!192889 Int) (text!44373 List!39839)) (Times!6275) (Or!6275) (Equal!6275) (Minus!6275) (Broken!31379 (value!192890 List!39839)) (And!6275) (Div!6275) (LessEqual!6275) (Mod!6275) (Concat!17225) (Not!6275) (Plus!6275) (SpaceValue!6275 (value!192891 List!39839)) (IntegerValue!18827 (value!192892 Int) (text!44374 List!39839)) (StringLiteralValue!18826 (text!44375 List!39839)) (FloatLiteralValue!12551 (text!44376 List!39839)) (BytesLiteralValue!6275 (value!192893 List!39839)) (CommentValue!12551 (value!192894 List!39839)) (StringLiteralValue!18827 (value!192895 List!39839)) (ErrorTokenValue!6275 (msg!6336 List!39839)) )
))
(declare-datatypes ((C!22086 0))(
  ( (C!22087 (val!13091 Int)) )
))
(declare-datatypes ((List!39840 0))(
  ( (Nil!39716) (Cons!39716 (h!45136 C!22086) (t!302523 List!39840)) )
))
(declare-datatypes ((IArray!24289 0))(
  ( (IArray!24290 (innerList!12202 List!39840)) )
))
(declare-datatypes ((Conc!12142 0))(
  ( (Node!12142 (left!30796 Conc!12142) (right!31126 Conc!12142) (csize!24514 Int) (cheight!12353 Int)) (Leaf!18849 (xs!15344 IArray!24289) (csize!24515 Int)) (Empty!12142) )
))
(declare-datatypes ((Regex!10950 0))(
  ( (ElementMatch!10950 (c!648480 C!22086)) (Concat!17226 (regOne!22412 Regex!10950) (regTwo!22412 Regex!10950)) (EmptyExpr!10950) (Star!10950 (reg!11279 Regex!10950)) (EmptyLang!10950) (Union!10950 (regOne!22413 Regex!10950) (regTwo!22413 Regex!10950)) )
))
(declare-datatypes ((String!45003 0))(
  ( (String!45004 (value!192896 String)) )
))
(declare-datatypes ((BalanceConc!23898 0))(
  ( (BalanceConc!23899 (c!648481 Conc!12142)) )
))
(declare-datatypes ((TokenValueInjection!11978 0))(
  ( (TokenValueInjection!11979 (toValue!8389 Int) (toChars!8248 Int)) )
))
(declare-datatypes ((Rule!11890 0))(
  ( (Rule!11891 (regex!6045 Regex!10950) (tag!6905 String!45003) (isSeparator!6045 Bool) (transformation!6045 TokenValueInjection!11978)) )
))
(declare-datatypes ((List!39841 0))(
  ( (Nil!39717) (Cons!39717 (h!45137 Rule!11890) (t!302524 List!39841)) )
))
(declare-fun rules!4189 () List!39841)

(declare-fun rSep!159 () Rule!11890)

(declare-fun contains!8047 (List!39841 Rule!11890) Bool)

(assert (=> b!3742999 (= res!1517180 (contains!8047 rules!4189 rSep!159))))

(declare-fun b!3743001 () Bool)

(declare-fun res!1517184 () Bool)

(assert (=> b!3743001 (=> (not res!1517184) (not e!2314191))))

(declare-fun rNSep!159 () Rule!11890)

(assert (=> b!3743001 (= res!1517184 (contains!8047 rules!4189 rNSep!159))))

(declare-fun e!2314192 () Bool)

(declare-fun tp!1140905 () Bool)

(declare-fun e!2314195 () Bool)

(declare-fun b!3743002 () Bool)

(declare-fun inv!53270 (String!45003) Bool)

(declare-fun inv!53273 (TokenValueInjection!11978) Bool)

(assert (=> b!3743002 (= e!2314195 (and tp!1140905 (inv!53270 (tag!6905 (h!45137 rules!4189))) (inv!53273 (transformation!6045 (h!45137 rules!4189))) e!2314192))))

(declare-fun b!3743003 () Bool)

(declare-fun res!1517181 () Bool)

(assert (=> b!3743003 (=> (not res!1517181) (not e!2314191))))

(declare-datatypes ((LexerInterface!5634 0))(
  ( (LexerInterfaceExt!5631 (__x!24768 Int)) (Lexer!5632) )
))
(declare-fun thiss!27143 () LexerInterface!5634)

(declare-fun rulesInvariant!5031 (LexerInterface!5634 List!39841) Bool)

(assert (=> b!3743003 (= res!1517181 (rulesInvariant!5031 thiss!27143 rules!4189))))

(declare-fun b!3743004 () Bool)

(declare-fun rulesRec!198 () List!39841)

(declare-fun ListPrimitiveSize!254 (List!39841) Int)

(assert (=> b!3743004 (= e!2314191 (< (ListPrimitiveSize!254 rulesRec!198) 0))))

(declare-fun e!2314199 () Bool)

(assert (=> b!3743005 (= e!2314199 (and tp!1140902 tp!1140901))))

(declare-fun b!3743006 () Bool)

(declare-fun res!1517177 () Bool)

(assert (=> b!3743006 (=> (not res!1517177) (not e!2314191))))

(assert (=> b!3743006 (= res!1517177 (and (not (isSeparator!6045 rNSep!159)) (isSeparator!6045 rSep!159)))))

(assert (=> b!3743007 (= e!2314192 (and tp!1140910 tp!1140914))))

(declare-fun b!3743008 () Bool)

(declare-fun res!1517183 () Bool)

(assert (=> b!3743008 (=> (not res!1517183) (not e!2314191))))

(declare-fun sepAndNonSepRulesDisjointChars!2023 (List!39841 List!39841) Bool)

(assert (=> b!3743008 (= res!1517183 (sepAndNonSepRulesDisjointChars!2023 rules!4189 rulesRec!198))))

(declare-fun res!1517179 () Bool)

(assert (=> start!351384 (=> (not res!1517179) (not e!2314191))))

(assert (=> start!351384 (= res!1517179 (is-Lexer!5632 thiss!27143))))

(assert (=> start!351384 e!2314191))

(assert (=> start!351384 true))

(declare-fun e!2314202 () Bool)

(assert (=> start!351384 e!2314202))

(declare-fun e!2314201 () Bool)

(assert (=> start!351384 e!2314201))

(declare-fun e!2314189 () Bool)

(assert (=> start!351384 e!2314189))

(declare-fun tp_is_empty!18915 () Bool)

(assert (=> start!351384 tp_is_empty!18915))

(declare-fun e!2314203 () Bool)

(assert (=> start!351384 e!2314203))

(declare-fun b!3743000 () Bool)

(declare-fun tp!1140907 () Bool)

(assert (=> b!3743000 (= e!2314202 (and e!2314195 tp!1140907))))

(declare-fun b!3743009 () Bool)

(declare-fun tp!1140913 () Bool)

(declare-fun e!2314190 () Bool)

(declare-fun e!2314194 () Bool)

(assert (=> b!3743009 (= e!2314194 (and tp!1140913 (inv!53270 (tag!6905 (h!45137 rulesRec!198))) (inv!53273 (transformation!6045 (h!45137 rulesRec!198))) e!2314190))))

(declare-fun b!3743010 () Bool)

(declare-fun res!1517178 () Bool)

(assert (=> b!3743010 (=> (not res!1517178) (not e!2314191))))

(declare-fun c!6900 () C!22086)

(declare-fun contains!8048 (List!39840 C!22086) Bool)

(declare-fun usedCharacters!1213 (Regex!10950) List!39840)

(assert (=> b!3743010 (= res!1517178 (contains!8048 (usedCharacters!1213 (regex!6045 rNSep!159)) c!6900))))

(declare-fun b!3743011 () Bool)

(declare-fun res!1517182 () Bool)

(assert (=> b!3743011 (=> (not res!1517182) (not e!2314191))))

(assert (=> b!3743011 (= res!1517182 (contains!8047 rulesRec!198 rNSep!159))))

(declare-fun b!3743012 () Bool)

(declare-fun tp!1140904 () Bool)

(assert (=> b!3743012 (= e!2314203 (and tp!1140904 (inv!53270 (tag!6905 rNSep!159)) (inv!53273 (transformation!6045 rNSep!159)) e!2314199))))

(declare-fun b!3743013 () Bool)

(declare-fun tp!1140908 () Bool)

(assert (=> b!3743013 (= e!2314189 (and e!2314194 tp!1140908))))

(assert (=> b!3743014 (= e!2314190 (and tp!1140906 tp!1140912))))

(declare-fun b!3743015 () Bool)

(declare-fun tp!1140909 () Bool)

(declare-fun e!2314193 () Bool)

(assert (=> b!3743015 (= e!2314201 (and tp!1140909 (inv!53270 (tag!6905 rSep!159)) (inv!53273 (transformation!6045 rSep!159)) e!2314193))))

(assert (=> b!3743016 (= e!2314193 (and tp!1140903 tp!1140911))))

(assert (= (and start!351384 res!1517179) b!3743003))

(assert (= (and b!3743003 res!1517181) b!3742999))

(assert (= (and b!3742999 res!1517180) b!3743011))

(assert (= (and b!3743011 res!1517182) b!3743001))

(assert (= (and b!3743001 res!1517184) b!3743006))

(assert (= (and b!3743006 res!1517177) b!3743010))

(assert (= (and b!3743010 res!1517178) b!3743008))

(assert (= (and b!3743008 res!1517183) b!3743004))

(assert (= b!3743002 b!3743007))

(assert (= b!3743000 b!3743002))

(assert (= (and start!351384 (is-Cons!39717 rules!4189)) b!3743000))

(assert (= b!3743015 b!3743016))

(assert (= start!351384 b!3743015))

(assert (= b!3743009 b!3743014))

(assert (= b!3743013 b!3743009))

(assert (= (and start!351384 (is-Cons!39717 rulesRec!198)) b!3743013))

(assert (= b!3743012 b!3743005))

(assert (= start!351384 b!3743012))

(declare-fun m!4236913 () Bool)

(assert (=> b!3742999 m!4236913))

(declare-fun m!4236915 () Bool)

(assert (=> b!3743009 m!4236915))

(declare-fun m!4236917 () Bool)

(assert (=> b!3743009 m!4236917))

(declare-fun m!4236919 () Bool)

(assert (=> b!3743015 m!4236919))

(declare-fun m!4236921 () Bool)

(assert (=> b!3743015 m!4236921))

(declare-fun m!4236923 () Bool)

(assert (=> b!3743011 m!4236923))

(declare-fun m!4236925 () Bool)

(assert (=> b!3743012 m!4236925))

(declare-fun m!4236927 () Bool)

(assert (=> b!3743012 m!4236927))

(declare-fun m!4236929 () Bool)

(assert (=> b!3743008 m!4236929))

(declare-fun m!4236931 () Bool)

(assert (=> b!3743004 m!4236931))

(declare-fun m!4236933 () Bool)

(assert (=> b!3743001 m!4236933))

(declare-fun m!4236935 () Bool)

(assert (=> b!3743003 m!4236935))

(declare-fun m!4236937 () Bool)

(assert (=> b!3743002 m!4236937))

(declare-fun m!4236939 () Bool)

(assert (=> b!3743002 m!4236939))

(declare-fun m!4236941 () Bool)

(assert (=> b!3743010 m!4236941))

(assert (=> b!3743010 m!4236941))

(declare-fun m!4236943 () Bool)

(assert (=> b!3743010 m!4236943))

(push 1)

(assert (not b_next!99925))

(assert (not b!3743004))

(assert (not b_next!99933))

(assert (not b!3743015))

(assert b_and!277461)

(assert tp_is_empty!18915)

(assert (not b_next!99927))

(assert b_and!277455)

(assert b_and!277465)

(assert b_and!277463)

(assert (not b!3743010))

(assert (not b_next!99937))

(assert (not b_next!99935))

(assert (not b!3743001))

(assert (not b_next!99931))

(assert b_and!277467)

(assert (not b!3743008))

(assert b_and!277459)

(assert (not b_next!99929))

(assert b_and!277457)

(assert b_and!277469)

(assert (not b!3743009))

(assert (not b!3743003))

(assert (not b!3742999))

(assert (not b!3743013))

(assert (not b!3743000))

(assert (not b!3743002))

(assert (not b!3743012))

(assert (not b_next!99939))

(assert (not b!3743011))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!99925))

(assert (not b_next!99933))

(assert b_and!277459)

(assert b_and!277461)

(assert b_and!277469)

(assert (not b_next!99927))

(assert b_and!277455)

(assert b_and!277465)

(assert b_and!277463)

(assert (not b_next!99937))

(assert (not b_next!99935))

(assert (not b_next!99939))

(assert (not b_next!99931))

(assert b_and!277467)

(assert (not b_next!99929))

(assert b_and!277457)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1092805 () Bool)

(assert (=> d!1092805 (= (inv!53270 (tag!6905 (h!45137 rulesRec!198))) (= (mod (str.len (value!192896 (tag!6905 (h!45137 rulesRec!198)))) 2) 0))))

(assert (=> b!3743009 d!1092805))

(declare-fun d!1092807 () Bool)

(declare-fun res!1517223 () Bool)

(declare-fun e!2314255 () Bool)

(assert (=> d!1092807 (=> (not res!1517223) (not e!2314255))))

(declare-fun semiInverseModEq!2584 (Int Int) Bool)

(assert (=> d!1092807 (= res!1517223 (semiInverseModEq!2584 (toChars!8248 (transformation!6045 (h!45137 rulesRec!198))) (toValue!8389 (transformation!6045 (h!45137 rulesRec!198)))))))

(assert (=> d!1092807 (= (inv!53273 (transformation!6045 (h!45137 rulesRec!198))) e!2314255)))

(declare-fun b!3743077 () Bool)

(declare-fun equivClasses!2483 (Int Int) Bool)

(assert (=> b!3743077 (= e!2314255 (equivClasses!2483 (toChars!8248 (transformation!6045 (h!45137 rulesRec!198))) (toValue!8389 (transformation!6045 (h!45137 rulesRec!198)))))))

(assert (= (and d!1092807 res!1517223) b!3743077))

(declare-fun m!4236977 () Bool)

(assert (=> d!1092807 m!4236977))

(declare-fun m!4236979 () Bool)

(assert (=> b!3743077 m!4236979))

(assert (=> b!3743009 d!1092807))

(declare-fun d!1092811 () Bool)

(declare-fun res!1517230 () Bool)

(declare-fun e!2314262 () Bool)

(assert (=> d!1092811 (=> res!1517230 e!2314262)))

(assert (=> d!1092811 (= res!1517230 (not (is-Cons!39717 rulesRec!198)))))

(assert (=> d!1092811 (= (sepAndNonSepRulesDisjointChars!2023 rules!4189 rulesRec!198) e!2314262)))

(declare-fun b!3743084 () Bool)

(declare-fun e!2314263 () Bool)

(assert (=> b!3743084 (= e!2314262 e!2314263)))

(declare-fun res!1517231 () Bool)

(assert (=> b!3743084 (=> (not res!1517231) (not e!2314263))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!924 (Rule!11890 List!39841) Bool)

(assert (=> b!3743084 (= res!1517231 (ruleDisjointCharsFromAllFromOtherType!924 (h!45137 rulesRec!198) rules!4189))))

(declare-fun b!3743085 () Bool)

(assert (=> b!3743085 (= e!2314263 (sepAndNonSepRulesDisjointChars!2023 rules!4189 (t!302524 rulesRec!198)))))

(assert (= (and d!1092811 (not res!1517230)) b!3743084))

(assert (= (and b!3743084 res!1517231) b!3743085))

(declare-fun m!4236987 () Bool)

(assert (=> b!3743084 m!4236987))

(declare-fun m!4236989 () Bool)

(assert (=> b!3743085 m!4236989))

(assert (=> b!3743008 d!1092811))

(declare-fun d!1092815 () Bool)

(declare-fun res!1517234 () Bool)

(declare-fun e!2314274 () Bool)

(assert (=> d!1092815 (=> (not res!1517234) (not e!2314274))))

(declare-fun rulesValid!2340 (LexerInterface!5634 List!39841) Bool)

(assert (=> d!1092815 (= res!1517234 (rulesValid!2340 thiss!27143 rules!4189))))

(assert (=> d!1092815 (= (rulesInvariant!5031 thiss!27143 rules!4189) e!2314274)))

(declare-fun b!3743104 () Bool)

(declare-datatypes ((List!39845 0))(
  ( (Nil!39721) (Cons!39721 (h!45141 String!45003) (t!302528 List!39845)) )
))
(declare-fun noDuplicateTag!2341 (LexerInterface!5634 List!39841 List!39845) Bool)

(assert (=> b!3743104 (= e!2314274 (noDuplicateTag!2341 thiss!27143 rules!4189 Nil!39721))))

(assert (= (and d!1092815 res!1517234) b!3743104))

(declare-fun m!4236991 () Bool)

(assert (=> d!1092815 m!4236991))

(declare-fun m!4236993 () Bool)

(assert (=> b!3743104 m!4236993))

(assert (=> b!3743003 d!1092815))

(declare-fun d!1092817 () Bool)

(assert (=> d!1092817 (= (inv!53270 (tag!6905 (h!45137 rules!4189))) (= (mod (str.len (value!192896 (tag!6905 (h!45137 rules!4189)))) 2) 0))))

(assert (=> b!3743002 d!1092817))

(declare-fun d!1092819 () Bool)

(declare-fun res!1517235 () Bool)

(declare-fun e!2314275 () Bool)

(assert (=> d!1092819 (=> (not res!1517235) (not e!2314275))))

(assert (=> d!1092819 (= res!1517235 (semiInverseModEq!2584 (toChars!8248 (transformation!6045 (h!45137 rules!4189))) (toValue!8389 (transformation!6045 (h!45137 rules!4189)))))))

(assert (=> d!1092819 (= (inv!53273 (transformation!6045 (h!45137 rules!4189))) e!2314275)))

(declare-fun b!3743105 () Bool)

(assert (=> b!3743105 (= e!2314275 (equivClasses!2483 (toChars!8248 (transformation!6045 (h!45137 rules!4189))) (toValue!8389 (transformation!6045 (h!45137 rules!4189)))))))

(assert (= (and d!1092819 res!1517235) b!3743105))

(declare-fun m!4236995 () Bool)

(assert (=> d!1092819 m!4236995))

(declare-fun m!4236997 () Bool)

(assert (=> b!3743105 m!4236997))

(assert (=> b!3743002 d!1092819))

(declare-fun d!1092821 () Bool)

(assert (=> d!1092821 (= (inv!53270 (tag!6905 rNSep!159)) (= (mod (str.len (value!192896 (tag!6905 rNSep!159))) 2) 0))))

(assert (=> b!3743012 d!1092821))

(declare-fun d!1092823 () Bool)

(declare-fun res!1517236 () Bool)

(declare-fun e!2314276 () Bool)

(assert (=> d!1092823 (=> (not res!1517236) (not e!2314276))))

(assert (=> d!1092823 (= res!1517236 (semiInverseModEq!2584 (toChars!8248 (transformation!6045 rNSep!159)) (toValue!8389 (transformation!6045 rNSep!159))))))

(assert (=> d!1092823 (= (inv!53273 (transformation!6045 rNSep!159)) e!2314276)))

(declare-fun b!3743106 () Bool)

(assert (=> b!3743106 (= e!2314276 (equivClasses!2483 (toChars!8248 (transformation!6045 rNSep!159)) (toValue!8389 (transformation!6045 rNSep!159))))))

(assert (= (and d!1092823 res!1517236) b!3743106))

(declare-fun m!4236999 () Bool)

(assert (=> d!1092823 m!4236999))

(declare-fun m!4237001 () Bool)

(assert (=> b!3743106 m!4237001))

(assert (=> b!3743012 d!1092823))

(declare-fun d!1092825 () Bool)

(declare-fun lt!1299288 () Bool)

(declare-fun content!5804 (List!39841) (Set Rule!11890))

(assert (=> d!1092825 (= lt!1299288 (set.member rNSep!159 (content!5804 rules!4189)))))

(declare-fun e!2314286 () Bool)

(assert (=> d!1092825 (= lt!1299288 e!2314286)))

(declare-fun res!1517241 () Bool)

(assert (=> d!1092825 (=> (not res!1517241) (not e!2314286))))

(assert (=> d!1092825 (= res!1517241 (is-Cons!39717 rules!4189))))

(assert (=> d!1092825 (= (contains!8047 rules!4189 rNSep!159) lt!1299288)))

(declare-fun b!3743119 () Bool)

(declare-fun e!2314285 () Bool)

(assert (=> b!3743119 (= e!2314286 e!2314285)))

(declare-fun res!1517242 () Bool)

(assert (=> b!3743119 (=> res!1517242 e!2314285)))

(assert (=> b!3743119 (= res!1517242 (= (h!45137 rules!4189) rNSep!159))))

(declare-fun b!3743120 () Bool)

(assert (=> b!3743120 (= e!2314285 (contains!8047 (t!302524 rules!4189) rNSep!159))))

(assert (= (and d!1092825 res!1517241) b!3743119))

(assert (= (and b!3743119 (not res!1517242)) b!3743120))

(declare-fun m!4237009 () Bool)

(assert (=> d!1092825 m!4237009))

(declare-fun m!4237011 () Bool)

(assert (=> d!1092825 m!4237011))

(declare-fun m!4237013 () Bool)

(assert (=> b!3743120 m!4237013))

(assert (=> b!3743001 d!1092825))

(declare-fun d!1092831 () Bool)

(declare-fun lt!1299289 () Bool)

(assert (=> d!1092831 (= lt!1299289 (set.member rNSep!159 (content!5804 rulesRec!198)))))

(declare-fun e!2314288 () Bool)

(assert (=> d!1092831 (= lt!1299289 e!2314288)))

(declare-fun res!1517243 () Bool)

(assert (=> d!1092831 (=> (not res!1517243) (not e!2314288))))

(assert (=> d!1092831 (= res!1517243 (is-Cons!39717 rulesRec!198))))

(assert (=> d!1092831 (= (contains!8047 rulesRec!198 rNSep!159) lt!1299289)))

(declare-fun b!3743121 () Bool)

(declare-fun e!2314287 () Bool)

(assert (=> b!3743121 (= e!2314288 e!2314287)))

(declare-fun res!1517244 () Bool)

(assert (=> b!3743121 (=> res!1517244 e!2314287)))

(assert (=> b!3743121 (= res!1517244 (= (h!45137 rulesRec!198) rNSep!159))))

(declare-fun b!3743122 () Bool)

(assert (=> b!3743122 (= e!2314287 (contains!8047 (t!302524 rulesRec!198) rNSep!159))))

(assert (= (and d!1092831 res!1517243) b!3743121))

(assert (= (and b!3743121 (not res!1517244)) b!3743122))

(declare-fun m!4237015 () Bool)

(assert (=> d!1092831 m!4237015))

(declare-fun m!4237017 () Bool)

(assert (=> d!1092831 m!4237017))

(declare-fun m!4237019 () Bool)

(assert (=> b!3743122 m!4237019))

(assert (=> b!3743011 d!1092831))

(declare-fun d!1092833 () Bool)

(declare-fun lt!1299292 () Bool)

(declare-fun content!5805 (List!39840) (Set C!22086))

(assert (=> d!1092833 (= lt!1299292 (set.member c!6900 (content!5805 (usedCharacters!1213 (regex!6045 rNSep!159)))))))

(declare-fun e!2314297 () Bool)

(assert (=> d!1092833 (= lt!1299292 e!2314297)))

(declare-fun res!1517253 () Bool)

(assert (=> d!1092833 (=> (not res!1517253) (not e!2314297))))

(assert (=> d!1092833 (= res!1517253 (is-Cons!39716 (usedCharacters!1213 (regex!6045 rNSep!159))))))

(assert (=> d!1092833 (= (contains!8048 (usedCharacters!1213 (regex!6045 rNSep!159)) c!6900) lt!1299292)))

(declare-fun b!3743130 () Bool)

(declare-fun e!2314296 () Bool)

(assert (=> b!3743130 (= e!2314297 e!2314296)))

(declare-fun res!1517252 () Bool)

(assert (=> b!3743130 (=> res!1517252 e!2314296)))

(assert (=> b!3743130 (= res!1517252 (= (h!45136 (usedCharacters!1213 (regex!6045 rNSep!159))) c!6900))))

(declare-fun b!3743131 () Bool)

(assert (=> b!3743131 (= e!2314296 (contains!8048 (t!302523 (usedCharacters!1213 (regex!6045 rNSep!159))) c!6900))))

(assert (= (and d!1092833 res!1517253) b!3743130))

(assert (= (and b!3743130 (not res!1517252)) b!3743131))

(assert (=> d!1092833 m!4236941))

(declare-fun m!4237025 () Bool)

(assert (=> d!1092833 m!4237025))

(declare-fun m!4237027 () Bool)

(assert (=> d!1092833 m!4237027))

(declare-fun m!4237029 () Bool)

(assert (=> b!3743131 m!4237029))

(assert (=> b!3743010 d!1092833))

(declare-fun bm!274856 () Bool)

(declare-fun call!274864 () List!39840)

(declare-fun call!274861 () List!39840)

(assert (=> bm!274856 (= call!274864 call!274861)))

(declare-fun b!3743160 () Bool)

(declare-fun c!648506 () Bool)

(assert (=> b!3743160 (= c!648506 (is-Star!10950 (regex!6045 rNSep!159)))))

(declare-fun e!2314320 () List!39840)

(declare-fun e!2314321 () List!39840)

(assert (=> b!3743160 (= e!2314320 e!2314321)))

(declare-fun b!3743161 () Bool)

(assert (=> b!3743161 (= e!2314321 call!274861)))

(declare-fun b!3743162 () Bool)

(assert (=> b!3743162 (= e!2314320 (Cons!39716 (c!648480 (regex!6045 rNSep!159)) Nil!39716))))

(declare-fun b!3743163 () Bool)

(declare-fun e!2314318 () List!39840)

(assert (=> b!3743163 (= e!2314321 e!2314318)))

(declare-fun c!648505 () Bool)

(assert (=> b!3743163 (= c!648505 (is-Union!10950 (regex!6045 rNSep!159)))))

(declare-fun b!3743164 () Bool)

(declare-fun e!2314319 () List!39840)

(assert (=> b!3743164 (= e!2314319 Nil!39716)))

(declare-fun b!3743166 () Bool)

(assert (=> b!3743166 (= e!2314319 e!2314320)))

(declare-fun c!648504 () Bool)

(assert (=> b!3743166 (= c!648504 (is-ElementMatch!10950 (regex!6045 rNSep!159)))))

(declare-fun b!3743167 () Bool)

(declare-fun call!274862 () List!39840)

(assert (=> b!3743167 (= e!2314318 call!274862)))

(declare-fun bm!274857 () Bool)

(declare-fun call!274863 () List!39840)

(declare-fun ++!9871 (List!39840 List!39840) List!39840)

(assert (=> bm!274857 (= call!274862 (++!9871 call!274863 call!274864))))

(declare-fun bm!274858 () Bool)

(assert (=> bm!274858 (= call!274863 (usedCharacters!1213 (ite c!648505 (regOne!22413 (regex!6045 rNSep!159)) (regOne!22412 (regex!6045 rNSep!159)))))))

(declare-fun bm!274859 () Bool)

(assert (=> bm!274859 (= call!274861 (usedCharacters!1213 (ite c!648506 (reg!11279 (regex!6045 rNSep!159)) (ite c!648505 (regTwo!22413 (regex!6045 rNSep!159)) (regTwo!22412 (regex!6045 rNSep!159))))))))

(declare-fun d!1092837 () Bool)

(declare-fun c!648507 () Bool)

(assert (=> d!1092837 (= c!648507 (or (is-EmptyExpr!10950 (regex!6045 rNSep!159)) (is-EmptyLang!10950 (regex!6045 rNSep!159))))))

(assert (=> d!1092837 (= (usedCharacters!1213 (regex!6045 rNSep!159)) e!2314319)))

(declare-fun b!3743165 () Bool)

(assert (=> b!3743165 (= e!2314318 call!274862)))

(assert (= (and d!1092837 c!648507) b!3743164))

(assert (= (and d!1092837 (not c!648507)) b!3743166))

(assert (= (and b!3743166 c!648504) b!3743162))

(assert (= (and b!3743166 (not c!648504)) b!3743160))

(assert (= (and b!3743160 c!648506) b!3743161))

(assert (= (and b!3743160 (not c!648506)) b!3743163))

(assert (= (and b!3743163 c!648505) b!3743167))

(assert (= (and b!3743163 (not c!648505)) b!3743165))

(assert (= (or b!3743167 b!3743165) bm!274858))

(assert (= (or b!3743167 b!3743165) bm!274856))

(assert (= (or b!3743167 b!3743165) bm!274857))

(assert (= (or b!3743161 bm!274856) bm!274859))

(declare-fun m!4237045 () Bool)

(assert (=> bm!274857 m!4237045))

(declare-fun m!4237047 () Bool)

(assert (=> bm!274858 m!4237047))

(declare-fun m!4237049 () Bool)

(assert (=> bm!274859 m!4237049))

(assert (=> b!3743010 d!1092837))

(declare-fun d!1092847 () Bool)

(declare-fun lt!1299299 () Int)

(assert (=> d!1092847 (>= lt!1299299 0)))

(declare-fun e!2314328 () Int)

(assert (=> d!1092847 (= lt!1299299 e!2314328)))

(declare-fun c!648510 () Bool)

(assert (=> d!1092847 (= c!648510 (is-Nil!39717 rulesRec!198))))

(assert (=> d!1092847 (= (ListPrimitiveSize!254 rulesRec!198) lt!1299299)))

(declare-fun b!3743176 () Bool)

(assert (=> b!3743176 (= e!2314328 0)))

(declare-fun b!3743177 () Bool)

(assert (=> b!3743177 (= e!2314328 (+ 1 (ListPrimitiveSize!254 (t!302524 rulesRec!198))))))

(assert (= (and d!1092847 c!648510) b!3743176))

(assert (= (and d!1092847 (not c!648510)) b!3743177))

(declare-fun m!4237061 () Bool)

(assert (=> b!3743177 m!4237061))

(assert (=> b!3743004 d!1092847))

(declare-fun d!1092855 () Bool)

(declare-fun lt!1299300 () Bool)

(assert (=> d!1092855 (= lt!1299300 (set.member rSep!159 (content!5804 rules!4189)))))

(declare-fun e!2314330 () Bool)

(assert (=> d!1092855 (= lt!1299300 e!2314330)))

(declare-fun res!1517270 () Bool)

(assert (=> d!1092855 (=> (not res!1517270) (not e!2314330))))

(assert (=> d!1092855 (= res!1517270 (is-Cons!39717 rules!4189))))

(assert (=> d!1092855 (= (contains!8047 rules!4189 rSep!159) lt!1299300)))

(declare-fun b!3743178 () Bool)

(declare-fun e!2314329 () Bool)

(assert (=> b!3743178 (= e!2314330 e!2314329)))

(declare-fun res!1517271 () Bool)

(assert (=> b!3743178 (=> res!1517271 e!2314329)))

(assert (=> b!3743178 (= res!1517271 (= (h!45137 rules!4189) rSep!159))))

(declare-fun b!3743179 () Bool)

(assert (=> b!3743179 (= e!2314329 (contains!8047 (t!302524 rules!4189) rSep!159))))

(assert (= (and d!1092855 res!1517270) b!3743178))

(assert (= (and b!3743178 (not res!1517271)) b!3743179))

(assert (=> d!1092855 m!4237009))

(declare-fun m!4237063 () Bool)

(assert (=> d!1092855 m!4237063))

(declare-fun m!4237065 () Bool)

(assert (=> b!3743179 m!4237065))

(assert (=> b!3742999 d!1092855))

(declare-fun d!1092857 () Bool)

(assert (=> d!1092857 (= (inv!53270 (tag!6905 rSep!159)) (= (mod (str.len (value!192896 (tag!6905 rSep!159))) 2) 0))))

(assert (=> b!3743015 d!1092857))

(declare-fun d!1092859 () Bool)

(declare-fun res!1517274 () Bool)

(declare-fun e!2314333 () Bool)

(assert (=> d!1092859 (=> (not res!1517274) (not e!2314333))))

(assert (=> d!1092859 (= res!1517274 (semiInverseModEq!2584 (toChars!8248 (transformation!6045 rSep!159)) (toValue!8389 (transformation!6045 rSep!159))))))

(assert (=> d!1092859 (= (inv!53273 (transformation!6045 rSep!159)) e!2314333)))

(declare-fun b!3743182 () Bool)

(assert (=> b!3743182 (= e!2314333 (equivClasses!2483 (toChars!8248 (transformation!6045 rSep!159)) (toValue!8389 (transformation!6045 rSep!159))))))

(assert (= (and d!1092859 res!1517274) b!3743182))

(declare-fun m!4237067 () Bool)

(assert (=> d!1092859 m!4237067))

(declare-fun m!4237069 () Bool)

(assert (=> b!3743182 m!4237069))

(assert (=> b!3743015 d!1092859))

(declare-fun b!3743197 () Bool)

(declare-fun e!2314339 () Bool)

(declare-fun tp!1140969 () Bool)

(declare-fun tp!1140967 () Bool)

(assert (=> b!3743197 (= e!2314339 (and tp!1140969 tp!1140967))))

(declare-fun b!3743196 () Bool)

(assert (=> b!3743196 (= e!2314339 tp_is_empty!18915)))

(assert (=> b!3743009 (= tp!1140913 e!2314339)))

(declare-fun b!3743199 () Bool)

(declare-fun tp!1140968 () Bool)

(declare-fun tp!1140971 () Bool)

(assert (=> b!3743199 (= e!2314339 (and tp!1140968 tp!1140971))))

(declare-fun b!3743198 () Bool)

(declare-fun tp!1140970 () Bool)

(assert (=> b!3743198 (= e!2314339 tp!1140970)))

(assert (= (and b!3743009 (is-ElementMatch!10950 (regex!6045 (h!45137 rulesRec!198)))) b!3743196))

(assert (= (and b!3743009 (is-Concat!17226 (regex!6045 (h!45137 rulesRec!198)))) b!3743197))

(assert (= (and b!3743009 (is-Star!10950 (regex!6045 (h!45137 rulesRec!198)))) b!3743198))

(assert (= (and b!3743009 (is-Union!10950 (regex!6045 (h!45137 rulesRec!198)))) b!3743199))

(declare-fun b!3743201 () Bool)

(declare-fun e!2314340 () Bool)

(declare-fun tp!1140974 () Bool)

(declare-fun tp!1140972 () Bool)

(assert (=> b!3743201 (= e!2314340 (and tp!1140974 tp!1140972))))

(declare-fun b!3743200 () Bool)

(assert (=> b!3743200 (= e!2314340 tp_is_empty!18915)))

(assert (=> b!3743002 (= tp!1140905 e!2314340)))

(declare-fun b!3743203 () Bool)

(declare-fun tp!1140973 () Bool)

(declare-fun tp!1140976 () Bool)

(assert (=> b!3743203 (= e!2314340 (and tp!1140973 tp!1140976))))

(declare-fun b!3743202 () Bool)

(declare-fun tp!1140975 () Bool)

(assert (=> b!3743202 (= e!2314340 tp!1140975)))

(assert (= (and b!3743002 (is-ElementMatch!10950 (regex!6045 (h!45137 rules!4189)))) b!3743200))

(assert (= (and b!3743002 (is-Concat!17226 (regex!6045 (h!45137 rules!4189)))) b!3743201))

(assert (= (and b!3743002 (is-Star!10950 (regex!6045 (h!45137 rules!4189)))) b!3743202))

(assert (= (and b!3743002 (is-Union!10950 (regex!6045 (h!45137 rules!4189)))) b!3743203))

(declare-fun b!3743218 () Bool)

(declare-fun b_free!99253 () Bool)

(declare-fun b_next!99957 () Bool)

(assert (=> b!3743218 (= b_free!99253 (not b_next!99957))))

(declare-fun tp!1140986 () Bool)

(declare-fun b_and!277487 () Bool)

(assert (=> b!3743218 (= tp!1140986 b_and!277487)))

(declare-fun b_free!99255 () Bool)

(declare-fun b_next!99959 () Bool)

(assert (=> b!3743218 (= b_free!99255 (not b_next!99959))))

(declare-fun tp!1140987 () Bool)

(declare-fun b_and!277489 () Bool)

(assert (=> b!3743218 (= tp!1140987 b_and!277489)))

(declare-fun e!2314353 () Bool)

(assert (=> b!3743218 (= e!2314353 (and tp!1140986 tp!1140987))))

(declare-fun e!2314352 () Bool)

(declare-fun tp!1140988 () Bool)

(declare-fun b!3743217 () Bool)

(assert (=> b!3743217 (= e!2314352 (and tp!1140988 (inv!53270 (tag!6905 (h!45137 (t!302524 rulesRec!198)))) (inv!53273 (transformation!6045 (h!45137 (t!302524 rulesRec!198)))) e!2314353))))

(declare-fun b!3743216 () Bool)

(declare-fun e!2314351 () Bool)

(declare-fun tp!1140985 () Bool)

(assert (=> b!3743216 (= e!2314351 (and e!2314352 tp!1140985))))

(assert (=> b!3743013 (= tp!1140908 e!2314351)))

(assert (= b!3743217 b!3743218))

(assert (= b!3743216 b!3743217))

(assert (= (and b!3743013 (is-Cons!39717 (t!302524 rulesRec!198))) b!3743216))

(declare-fun m!4237079 () Bool)

(assert (=> b!3743217 m!4237079))

(declare-fun m!4237081 () Bool)

(assert (=> b!3743217 m!4237081))

(declare-fun b!3743222 () Bool)

(declare-fun e!2314356 () Bool)

(declare-fun tp!1140991 () Bool)

(declare-fun tp!1140989 () Bool)

(assert (=> b!3743222 (= e!2314356 (and tp!1140991 tp!1140989))))

(declare-fun b!3743221 () Bool)

(assert (=> b!3743221 (= e!2314356 tp_is_empty!18915)))

(assert (=> b!3743012 (= tp!1140904 e!2314356)))

(declare-fun b!3743224 () Bool)

(declare-fun tp!1140990 () Bool)

(declare-fun tp!1140993 () Bool)

(assert (=> b!3743224 (= e!2314356 (and tp!1140990 tp!1140993))))

(declare-fun b!3743223 () Bool)

(declare-fun tp!1140992 () Bool)

(assert (=> b!3743223 (= e!2314356 tp!1140992)))

(assert (= (and b!3743012 (is-ElementMatch!10950 (regex!6045 rNSep!159))) b!3743221))

(assert (= (and b!3743012 (is-Concat!17226 (regex!6045 rNSep!159))) b!3743222))

(assert (= (and b!3743012 (is-Star!10950 (regex!6045 rNSep!159))) b!3743223))

(assert (= (and b!3743012 (is-Union!10950 (regex!6045 rNSep!159))) b!3743224))

(declare-fun b!3743228 () Bool)

(declare-fun b_free!99257 () Bool)

(declare-fun b_next!99961 () Bool)

(assert (=> b!3743228 (= b_free!99257 (not b_next!99961))))

(declare-fun tp!1140995 () Bool)

(declare-fun b_and!277491 () Bool)

(assert (=> b!3743228 (= tp!1140995 b_and!277491)))

(declare-fun b_free!99259 () Bool)

(declare-fun b_next!99963 () Bool)

(assert (=> b!3743228 (= b_free!99259 (not b_next!99963))))

(declare-fun tp!1140996 () Bool)

(declare-fun b_and!277493 () Bool)

(assert (=> b!3743228 (= tp!1140996 b_and!277493)))

(declare-fun e!2314360 () Bool)

(assert (=> b!3743228 (= e!2314360 (and tp!1140995 tp!1140996))))

(declare-fun tp!1140997 () Bool)

(declare-fun e!2314359 () Bool)

(declare-fun b!3743227 () Bool)

(assert (=> b!3743227 (= e!2314359 (and tp!1140997 (inv!53270 (tag!6905 (h!45137 (t!302524 rules!4189)))) (inv!53273 (transformation!6045 (h!45137 (t!302524 rules!4189)))) e!2314360))))

(declare-fun b!3743226 () Bool)

(declare-fun e!2314358 () Bool)

(declare-fun tp!1140994 () Bool)

(assert (=> b!3743226 (= e!2314358 (and e!2314359 tp!1140994))))

(assert (=> b!3743000 (= tp!1140907 e!2314358)))

(assert (= b!3743227 b!3743228))

(assert (= b!3743226 b!3743227))

(assert (= (and b!3743000 (is-Cons!39717 (t!302524 rules!4189))) b!3743226))

(declare-fun m!4237089 () Bool)

(assert (=> b!3743227 m!4237089))

(declare-fun m!4237091 () Bool)

(assert (=> b!3743227 m!4237091))

(declare-fun b!3743236 () Bool)

(declare-fun e!2314364 () Bool)

(declare-fun tp!1141002 () Bool)

(declare-fun tp!1141000 () Bool)

(assert (=> b!3743236 (= e!2314364 (and tp!1141002 tp!1141000))))

(declare-fun b!3743235 () Bool)

(assert (=> b!3743235 (= e!2314364 tp_is_empty!18915)))

(assert (=> b!3743015 (= tp!1140909 e!2314364)))

(declare-fun b!3743238 () Bool)

(declare-fun tp!1141001 () Bool)

(declare-fun tp!1141004 () Bool)

(assert (=> b!3743238 (= e!2314364 (and tp!1141001 tp!1141004))))

(declare-fun b!3743237 () Bool)

(declare-fun tp!1141003 () Bool)

(assert (=> b!3743237 (= e!2314364 tp!1141003)))

(assert (= (and b!3743015 (is-ElementMatch!10950 (regex!6045 rSep!159))) b!3743235))

(assert (= (and b!3743015 (is-Concat!17226 (regex!6045 rSep!159))) b!3743236))

(assert (= (and b!3743015 (is-Star!10950 (regex!6045 rSep!159))) b!3743237))

(assert (= (and b!3743015 (is-Union!10950 (regex!6045 rSep!159))) b!3743238))

(push 1)

(assert (not d!1092831))

(assert (not d!1092823))

(assert (not b_next!99933))

(assert b_and!277459)

(assert b_and!277465)

(assert (not bm!274859))

(assert (not b_next!99931))

(assert (not b_next!99925))

(assert (not b!3743077))

(assert b_and!277487)

(assert b_and!277493)

(assert (not b_next!99957))

(assert b_and!277461)

(assert (not b!3743237))

(assert (not bm!274857))

(assert (not b!3743202))

(assert (not b_next!99963))

(assert (not d!1092815))

(assert (not b!3743085))

(assert (not b_next!99929))

(assert (not b!3743236))

(assert b_and!277457)

(assert (not b!3743203))

(assert tp_is_empty!18915)

(assert b_and!277489)

(assert (not b!3743238))

(assert (not b!3743131))

(assert (not d!1092855))

(assert (not b!3743216))

(assert b_and!277469)

(assert (not b!3743201))

(assert (not b!3743199))

(assert (not d!1092807))

(assert (not b_next!99927))

(assert (not b_next!99959))

(assert (not b!3743120))

(assert (not b!3743217))

(assert (not b!3743226))

(assert b_and!277455)

(assert (not b!3743198))

(assert b_and!277463)

(assert (not b!3743197))

(assert (not b!3743223))

(assert (not b!3743084))

(assert (not b!3743224))

(assert (not d!1092833))

(assert (not b!3743104))

(assert (not b_next!99937))

(assert (not bm!274858))

(assert (not d!1092859))

(assert (not b!3743179))

(assert (not b!3743106))

(assert (not b_next!99961))

(assert (not b_next!99935))

(assert (not b!3743105))

(assert (not d!1092825))

(assert (not b!3743222))

(assert (not b!3743177))

(assert (not b_next!99939))

(assert (not b!3743182))

(assert (not d!1092819))

(assert (not b!3743227))

(assert (not b!3743122))

(assert b_and!277467)

(assert b_and!277491)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!99925))

(assert (not b_next!99933))

(assert b_and!277459)

(assert b_and!277489)

(assert b_and!277469)

(assert b_and!277455)

(assert b_and!277465)

(assert b_and!277463)

(assert (not b_next!99937))

(assert (not b_next!99939))

(assert (not b_next!99931))

(assert b_and!277487)

(assert b_and!277493)

(assert (not b_next!99957))

(assert b_and!277461)

(assert (not b_next!99963))

(assert (not b_next!99929))

(assert b_and!277457)

(assert (not b_next!99927))

(assert (not b_next!99959))

(assert (not b_next!99961))

(assert (not b_next!99935))

(assert b_and!277467)

(assert b_and!277491)

(check-sat)

(pop 1)

