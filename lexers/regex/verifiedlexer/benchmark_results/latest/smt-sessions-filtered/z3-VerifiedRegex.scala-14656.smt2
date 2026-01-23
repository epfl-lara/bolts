; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756980 () Bool)

(assert start!756980)

(declare-fun b!8040185 () Bool)

(declare-fun b_free!135507 () Bool)

(declare-fun b_next!136297 () Bool)

(assert (=> b!8040185 (= b_free!135507 (not b_next!136297))))

(declare-fun tp!2408493 () Bool)

(declare-fun b_and!353943 () Bool)

(assert (=> b!8040185 (= tp!2408493 b_and!353943)))

(declare-fun b_free!135509 () Bool)

(declare-fun b_next!136299 () Bool)

(assert (=> b!8040185 (= b_free!135509 (not b_next!136299))))

(declare-fun tp!2408496 () Bool)

(declare-fun b_and!353945 () Bool)

(assert (=> b!8040185 (= tp!2408496 b_and!353945)))

(declare-fun b!8040188 () Bool)

(declare-fun b_free!135511 () Bool)

(declare-fun b_next!136301 () Bool)

(assert (=> b!8040188 (= b_free!135511 (not b_next!136301))))

(declare-fun tp!2408492 () Bool)

(declare-fun b_and!353947 () Bool)

(assert (=> b!8040188 (= tp!2408492 b_and!353947)))

(declare-fun b_free!135513 () Bool)

(declare-fun b_next!136303 () Bool)

(assert (=> b!8040188 (= b_free!135513 (not b_next!136303))))

(declare-fun tp!2408500 () Bool)

(declare-fun b_and!353949 () Bool)

(assert (=> b!8040188 (= tp!2408500 b_and!353949)))

(declare-fun b!8040194 () Bool)

(declare-fun b_free!135515 () Bool)

(declare-fun b_next!136305 () Bool)

(assert (=> b!8040194 (= b_free!135515 (not b_next!136305))))

(declare-fun tp!2408501 () Bool)

(declare-fun b_and!353951 () Bool)

(assert (=> b!8040194 (= tp!2408501 b_and!353951)))

(declare-fun b_free!135517 () Bool)

(declare-fun b_next!136307 () Bool)

(assert (=> b!8040194 (= b_free!135517 (not b_next!136307))))

(declare-fun tp!2408489 () Bool)

(declare-fun b_and!353953 () Bool)

(assert (=> b!8040194 (= tp!2408489 b_and!353953)))

(declare-fun b!8040182 () Bool)

(declare-fun b_free!135519 () Bool)

(declare-fun b_next!136309 () Bool)

(assert (=> b!8040182 (= b_free!135519 (not b_next!136309))))

(declare-fun tp!2408490 () Bool)

(declare-fun b_and!353955 () Bool)

(assert (=> b!8040182 (= tp!2408490 b_and!353955)))

(declare-fun b_free!135521 () Bool)

(declare-fun b_next!136311 () Bool)

(assert (=> b!8040182 (= b_free!135521 (not b_next!136311))))

(declare-fun tp!2408499 () Bool)

(declare-fun b_and!353957 () Bool)

(assert (=> b!8040182 (= tp!2408499 b_and!353957)))

(declare-fun b!8040176 () Bool)

(declare-fun e!4735875 () Bool)

(declare-fun e!4735879 () Bool)

(declare-fun tp!2408488 () Bool)

(assert (=> b!8040176 (= e!4735875 (and e!4735879 tp!2408488))))

(declare-fun b!8040177 () Bool)

(declare-fun res!3178179 () Bool)

(declare-fun e!4735882 () Bool)

(assert (=> b!8040177 (=> (not res!3178179) (not e!4735882))))

(declare-datatypes ((List!75216 0))(
  ( (Nil!75090) (Cons!75090 (h!81538 (_ BitVec 16)) (t!390986 List!75216)) )
))
(declare-datatypes ((TokenValue!9014 0))(
  ( (FloatLiteralValue!18028 (text!63543 List!75216)) (TokenValueExt!9013 (__x!35309 Int)) (Broken!45070 (value!290851 List!75216)) (Object!9139) (End!9014) (Def!9014) (Underscore!9014) (Match!9014) (Else!9014) (Error!9014) (Case!9014) (If!9014) (Extends!9014) (Abstract!9014) (Class!9014) (Val!9014) (DelimiterValue!18028 (del!9074 List!75216)) (KeywordValue!9020 (value!290852 List!75216)) (CommentValue!18028 (value!290853 List!75216)) (WhitespaceValue!18028 (value!290854 List!75216)) (IndentationValue!9014 (value!290855 List!75216)) (String!84843) (Int32!9014) (Broken!45071 (value!290856 List!75216)) (Boolean!9015) (Unit!171019) (OperatorValue!9017 (op!9074 List!75216)) (IdentifierValue!18028 (value!290857 List!75216)) (IdentifierValue!18029 (value!290858 List!75216)) (WhitespaceValue!18029 (value!290859 List!75216)) (True!18028) (False!18028) (Broken!45072 (value!290860 List!75216)) (Broken!45073 (value!290861 List!75216)) (True!18029) (RightBrace!9014) (RightBracket!9014) (Colon!9014) (Null!9014) (Comma!9014) (LeftBracket!9014) (False!18029) (LeftBrace!9014) (ImaginaryLiteralValue!9014 (text!63544 List!75216)) (StringLiteralValue!27042 (value!290862 List!75216)) (EOFValue!9014 (value!290863 List!75216)) (IdentValue!9014 (value!290864 List!75216)) (DelimiterValue!18029 (value!290865 List!75216)) (DedentValue!9014 (value!290866 List!75216)) (NewLineValue!9014 (value!290867 List!75216)) (IntegerValue!27042 (value!290868 (_ BitVec 32)) (text!63545 List!75216)) (IntegerValue!27043 (value!290869 Int) (text!63546 List!75216)) (Times!9014) (Or!9014) (Equal!9014) (Minus!9014) (Broken!45074 (value!290870 List!75216)) (And!9014) (Div!9014) (LessEqual!9014) (Mod!9014) (Concat!30779) (Not!9014) (Plus!9014) (SpaceValue!9014 (value!290871 List!75216)) (IntegerValue!27044 (value!290872 Int) (text!63547 List!75216)) (StringLiteralValue!27043 (text!63548 List!75216)) (FloatLiteralValue!18029 (text!63549 List!75216)) (BytesLiteralValue!9014 (value!290873 List!75216)) (CommentValue!18029 (value!290874 List!75216)) (StringLiteralValue!27044 (value!290875 List!75216)) (ErrorTokenValue!9014 (msg!9075 List!75216)) )
))
(declare-datatypes ((C!43868 0))(
  ( (C!43869 (val!32710 Int)) )
))
(declare-datatypes ((List!75217 0))(
  ( (Nil!75091) (Cons!75091 (h!81539 C!43868) (t!390987 List!75217)) )
))
(declare-datatypes ((IArray!31985 0))(
  ( (IArray!31986 (innerList!16050 List!75217)) )
))
(declare-datatypes ((Conc!15962 0))(
  ( (Node!15962 (left!57258 Conc!15962) (right!57588 Conc!15962) (csize!32154 Int) (cheight!16173 Int)) (Leaf!30619 (xs!19360 IArray!31985) (csize!32155 Int)) (Empty!15962) )
))
(declare-datatypes ((String!84844 0))(
  ( (String!84845 (value!290876 String)) )
))
(declare-datatypes ((BalanceConc!30880 0))(
  ( (BalanceConc!30881 (c!1474893 Conc!15962)) )
))
(declare-datatypes ((Regex!21765 0))(
  ( (ElementMatch!21765 (c!1474894 C!43868)) (Concat!30780 (regOne!44042 Regex!21765) (regTwo!44042 Regex!21765)) (EmptyExpr!21765) (Star!21765 (reg!22094 Regex!21765)) (EmptyLang!21765) (Union!21765 (regOne!44043 Regex!21765) (regTwo!44043 Regex!21765)) )
))
(declare-datatypes ((TokenValueInjection!17336 0))(
  ( (TokenValueInjection!17337 (toValue!11765 Int) (toChars!11624 Int)) )
))
(declare-datatypes ((Rule!17188 0))(
  ( (Rule!17189 (regex!8694 Regex!21765) (tag!9558 String!84844) (isSeparator!8694 Bool) (transformation!8694 TokenValueInjection!17336)) )
))
(declare-datatypes ((List!75218 0))(
  ( (Nil!75092) (Cons!75092 (h!81540 Rule!17188) (t!390988 List!75218)) )
))
(declare-fun rules!4142 () List!75218)

(declare-fun rSep!142 () Rule!17188)

(declare-fun contains!20971 (List!75218 Rule!17188) Bool)

(assert (=> b!8040177 (= res!3178179 (contains!20971 rules!4142 rSep!142))))

(declare-fun b!8040178 () Bool)

(declare-fun res!3178178 () Bool)

(assert (=> b!8040178 (=> (not res!3178178) (not e!4735882))))

(declare-fun rNSep!142 () Rule!17188)

(assert (=> b!8040178 (= res!3178178 (contains!20971 rules!4142 rNSep!142))))

(declare-fun e!4735880 () Bool)

(declare-fun tp!2408494 () Bool)

(declare-fun b!8040179 () Bool)

(declare-fun inv!96902 (String!84844) Bool)

(declare-fun inv!96904 (TokenValueInjection!17336) Bool)

(assert (=> b!8040179 (= e!4735879 (and tp!2408494 (inv!96902 (tag!9558 (h!81540 rules!4142))) (inv!96904 (transformation!8694 (h!81540 rules!4142))) e!4735880))))

(declare-fun b!8040180 () Bool)

(declare-fun res!3178180 () Bool)

(assert (=> b!8040180 (=> (not res!3178180) (not e!4735882))))

(declare-datatypes ((LexerInterface!8284 0))(
  ( (LexerInterfaceExt!8281 (__x!35310 Int)) (Lexer!8282) )
))
(declare-fun thiss!27054 () LexerInterface!8284)

(declare-fun rulesInvariant!6752 (LexerInterface!8284 List!75218) Bool)

(assert (=> b!8040180 (= res!3178180 (rulesInvariant!6752 thiss!27054 rules!4142))))

(declare-fun b!8040181 () Bool)

(assert (=> b!8040181 (= e!4735882 (not true))))

(declare-fun c!6865 () C!43868)

(declare-fun contains!20972 (List!75217 C!43868) Bool)

(declare-fun usedCharacters!1272 (Regex!21765) List!75217)

(assert (=> b!8040181 (not (contains!20972 (usedCharacters!1272 (regex!8694 rNSep!142)) c!6865))))

(declare-datatypes ((Unit!171020 0))(
  ( (Unit!171021) )
))
(declare-fun lt!2722232 () Unit!171020)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRuleInner!2 (LexerInterface!8284 List!75218 Rule!17188 Rule!17188 C!43868) Unit!171020)

(assert (=> b!8040181 (= lt!2722232 (lemmaNonSepRuleNotContainsCharContainedInASepRuleInner!2 thiss!27054 rules!4142 rNSep!142 rSep!142 c!6865))))

(declare-fun e!4735874 () Bool)

(assert (=> b!8040182 (= e!4735874 (and tp!2408490 tp!2408499))))

(declare-fun tp!2408498 () Bool)

(declare-fun b!8040183 () Bool)

(declare-fun e!4735884 () Bool)

(assert (=> b!8040183 (= e!4735884 (and tp!2408498 (inv!96902 (tag!9558 rNSep!142)) (inv!96904 (transformation!8694 rNSep!142)) e!4735874))))

(declare-fun b!8040184 () Bool)

(declare-fun res!3178174 () Bool)

(assert (=> b!8040184 (=> (not res!3178174) (not e!4735882))))

(assert (=> b!8040184 (= res!3178174 (contains!20972 (usedCharacters!1272 (regex!8694 rSep!142)) c!6865))))

(declare-fun e!4735876 () Bool)

(assert (=> b!8040185 (= e!4735876 (and tp!2408493 tp!2408496))))

(declare-fun b!8040186 () Bool)

(declare-fun res!3178176 () Bool)

(assert (=> b!8040186 (=> (not res!3178176) (not e!4735882))))

(declare-fun rulesRec!188 () List!75218)

(assert (=> b!8040186 (= res!3178176 (contains!20971 rulesRec!188 rNSep!142))))

(declare-fun b!8040187 () Bool)

(declare-fun tp!2408497 () Bool)

(declare-fun e!4735885 () Bool)

(assert (=> b!8040187 (= e!4735885 (and tp!2408497 (inv!96902 (tag!9558 rSep!142)) (inv!96904 (transformation!8694 rSep!142)) e!4735876))))

(assert (=> b!8040188 (= e!4735880 (and tp!2408492 tp!2408500))))

(declare-fun b!8040189 () Bool)

(declare-fun res!3178177 () Bool)

(assert (=> b!8040189 (=> (not res!3178177) (not e!4735882))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!973 (Rule!17188 List!75218) Bool)

(assert (=> b!8040189 (= res!3178177 (ruleDisjointCharsFromAllFromOtherType!973 rNSep!142 rules!4142))))

(declare-fun b!8040190 () Bool)

(declare-fun res!3178175 () Bool)

(assert (=> b!8040190 (=> (not res!3178175) (not e!4735882))))

(assert (=> b!8040190 (= res!3178175 (and (not (isSeparator!8694 rNSep!142)) (isSeparator!8694 rSep!142)))))

(declare-fun b!8040191 () Bool)

(declare-fun res!3178183 () Bool)

(assert (=> b!8040191 (=> (not res!3178183) (not e!4735882))))

(get-info :version)

(assert (=> b!8040191 (= res!3178183 (and ((_ is Cons!75092) rulesRec!188) (= (h!81540 rulesRec!188) rNSep!142)))))

(declare-fun res!3178182 () Bool)

(assert (=> start!756980 (=> (not res!3178182) (not e!4735882))))

(assert (=> start!756980 (= res!3178182 ((_ is Lexer!8282) thiss!27054))))

(assert (=> start!756980 e!4735882))

(assert (=> start!756980 true))

(assert (=> start!756980 e!4735875))

(assert (=> start!756980 e!4735885))

(declare-fun e!4735883 () Bool)

(assert (=> start!756980 e!4735883))

(assert (=> start!756980 e!4735884))

(declare-fun tp_is_empty!54525 () Bool)

(assert (=> start!756980 tp_is_empty!54525))

(declare-fun b!8040192 () Bool)

(declare-fun res!3178181 () Bool)

(assert (=> b!8040192 (=> (not res!3178181) (not e!4735882))))

(declare-fun sepAndNonSepRulesDisjointChars!2054 (List!75218 List!75218) Bool)

(assert (=> b!8040192 (= res!3178181 (sepAndNonSepRulesDisjointChars!2054 rules!4142 rulesRec!188))))

(declare-fun b!8040193 () Bool)

(declare-fun e!4735881 () Bool)

(declare-fun tp!2408495 () Bool)

(assert (=> b!8040193 (= e!4735883 (and e!4735881 tp!2408495))))

(declare-fun e!4735871 () Bool)

(assert (=> b!8040194 (= e!4735871 (and tp!2408501 tp!2408489))))

(declare-fun tp!2408491 () Bool)

(declare-fun b!8040195 () Bool)

(assert (=> b!8040195 (= e!4735881 (and tp!2408491 (inv!96902 (tag!9558 (h!81540 rulesRec!188))) (inv!96904 (transformation!8694 (h!81540 rulesRec!188))) e!4735871))))

(assert (= (and start!756980 res!3178182) b!8040180))

(assert (= (and b!8040180 res!3178180) b!8040177))

(assert (= (and b!8040177 res!3178179) b!8040186))

(assert (= (and b!8040186 res!3178176) b!8040178))

(assert (= (and b!8040178 res!3178178) b!8040190))

(assert (= (and b!8040190 res!3178175) b!8040184))

(assert (= (and b!8040184 res!3178174) b!8040192))

(assert (= (and b!8040192 res!3178181) b!8040191))

(assert (= (and b!8040191 res!3178183) b!8040189))

(assert (= (and b!8040189 res!3178177) b!8040181))

(assert (= b!8040179 b!8040188))

(assert (= b!8040176 b!8040179))

(assert (= (and start!756980 ((_ is Cons!75092) rules!4142)) b!8040176))

(assert (= b!8040187 b!8040185))

(assert (= start!756980 b!8040187))

(assert (= b!8040195 b!8040194))

(assert (= b!8040193 b!8040195))

(assert (= (and start!756980 ((_ is Cons!75092) rulesRec!188)) b!8040193))

(assert (= b!8040183 b!8040182))

(assert (= start!756980 b!8040183))

(declare-fun m!8394816 () Bool)

(assert (=> b!8040181 m!8394816))

(assert (=> b!8040181 m!8394816))

(declare-fun m!8394818 () Bool)

(assert (=> b!8040181 m!8394818))

(declare-fun m!8394820 () Bool)

(assert (=> b!8040181 m!8394820))

(declare-fun m!8394822 () Bool)

(assert (=> b!8040186 m!8394822))

(declare-fun m!8394824 () Bool)

(assert (=> b!8040180 m!8394824))

(declare-fun m!8394826 () Bool)

(assert (=> b!8040179 m!8394826))

(declare-fun m!8394828 () Bool)

(assert (=> b!8040179 m!8394828))

(declare-fun m!8394830 () Bool)

(assert (=> b!8040183 m!8394830))

(declare-fun m!8394832 () Bool)

(assert (=> b!8040183 m!8394832))

(declare-fun m!8394834 () Bool)

(assert (=> b!8040184 m!8394834))

(assert (=> b!8040184 m!8394834))

(declare-fun m!8394836 () Bool)

(assert (=> b!8040184 m!8394836))

(declare-fun m!8394838 () Bool)

(assert (=> b!8040177 m!8394838))

(declare-fun m!8394840 () Bool)

(assert (=> b!8040195 m!8394840))

(declare-fun m!8394842 () Bool)

(assert (=> b!8040195 m!8394842))

(declare-fun m!8394844 () Bool)

(assert (=> b!8040187 m!8394844))

(declare-fun m!8394846 () Bool)

(assert (=> b!8040187 m!8394846))

(declare-fun m!8394848 () Bool)

(assert (=> b!8040178 m!8394848))

(declare-fun m!8394850 () Bool)

(assert (=> b!8040192 m!8394850))

(declare-fun m!8394852 () Bool)

(assert (=> b!8040189 m!8394852))

(check-sat (not b!8040179) (not b!8040186) b_and!353943 (not b_next!136303) (not b_next!136309) b_and!353955 (not b!8040177) (not b_next!136311) (not b!8040180) (not b_next!136307) (not b!8040192) (not b!8040193) (not b!8040181) (not b!8040195) b_and!353947 (not b_next!136305) b_and!353951 tp_is_empty!54525 b_and!353957 (not b!8040178) (not b_next!136297) b_and!353953 (not b!8040184) (not b!8040183) (not b!8040176) (not b_next!136299) b_and!353949 (not b!8040187) (not b_next!136301) b_and!353945 (not b!8040189))
(check-sat b_and!353947 b_and!353943 b_and!353957 (not b_next!136303) (not b_next!136299) (not b_next!136309) b_and!353945 b_and!353955 (not b_next!136311) (not b_next!136307) (not b_next!136305) b_and!353951 (not b_next!136297) b_and!353953 b_and!353949 (not b_next!136301))
