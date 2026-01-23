; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!253606 () Bool)

(assert start!253606)

(declare-fun b!2609083 () Bool)

(declare-fun b_free!73221 () Bool)

(declare-fun b_next!73925 () Bool)

(assert (=> b!2609083 (= b_free!73221 (not b_next!73925))))

(declare-fun tp!828762 () Bool)

(declare-fun b_and!190771 () Bool)

(assert (=> b!2609083 (= tp!828762 b_and!190771)))

(declare-fun b_free!73223 () Bool)

(declare-fun b_next!73927 () Bool)

(assert (=> b!2609083 (= b_free!73223 (not b_next!73927))))

(declare-fun tp!828757 () Bool)

(declare-fun b_and!190773 () Bool)

(assert (=> b!2609083 (= tp!828757 b_and!190773)))

(declare-fun b!2609089 () Bool)

(declare-fun b_free!73225 () Bool)

(declare-fun b_next!73929 () Bool)

(assert (=> b!2609089 (= b_free!73225 (not b_next!73929))))

(declare-fun tp!828758 () Bool)

(declare-fun b_and!190775 () Bool)

(assert (=> b!2609089 (= tp!828758 b_and!190775)))

(declare-fun b_free!73227 () Bool)

(declare-fun b_next!73931 () Bool)

(assert (=> b!2609089 (= b_free!73227 (not b_next!73931))))

(declare-fun tp!828764 () Bool)

(declare-fun b_and!190777 () Bool)

(assert (=> b!2609089 (= tp!828764 b_and!190777)))

(declare-fun b!2609077 () Bool)

(declare-fun e!1646033 () Bool)

(declare-fun e!1646038 () Bool)

(assert (=> b!2609077 (= e!1646033 e!1646038)))

(declare-fun res!1098043 () Bool)

(assert (=> b!2609077 (=> (not res!1098043) (not e!1646038))))

(declare-fun from!862 () Int)

(declare-fun lt!916895 () Int)

(assert (=> b!2609077 (= res!1098043 (<= from!862 lt!916895))))

(declare-datatypes ((C!15520 0))(
  ( (C!15521 (val!9694 Int)) )
))
(declare-datatypes ((List!30171 0))(
  ( (Nil!30071) (Cons!30071 (h!35491 (_ BitVec 16)) (t!213896 List!30171)) )
))
(declare-datatypes ((TokenValue!4759 0))(
  ( (FloatLiteralValue!9518 (text!33758 List!30171)) (TokenValueExt!4758 (__x!19351 Int)) (Broken!23795 (value!146883 List!30171)) (Object!4858) (End!4759) (Def!4759) (Underscore!4759) (Match!4759) (Else!4759) (Error!4759) (Case!4759) (If!4759) (Extends!4759) (Abstract!4759) (Class!4759) (Val!4759) (DelimiterValue!9518 (del!4819 List!30171)) (KeywordValue!4765 (value!146884 List!30171)) (CommentValue!9518 (value!146885 List!30171)) (WhitespaceValue!9518 (value!146886 List!30171)) (IndentationValue!4759 (value!146887 List!30171)) (String!33678) (Int32!4759) (Broken!23796 (value!146888 List!30171)) (Boolean!4760) (Unit!44076) (OperatorValue!4762 (op!4819 List!30171)) (IdentifierValue!9518 (value!146889 List!30171)) (IdentifierValue!9519 (value!146890 List!30171)) (WhitespaceValue!9519 (value!146891 List!30171)) (True!9518) (False!9518) (Broken!23797 (value!146892 List!30171)) (Broken!23798 (value!146893 List!30171)) (True!9519) (RightBrace!4759) (RightBracket!4759) (Colon!4759) (Null!4759) (Comma!4759) (LeftBracket!4759) (False!9519) (LeftBrace!4759) (ImaginaryLiteralValue!4759 (text!33759 List!30171)) (StringLiteralValue!14277 (value!146894 List!30171)) (EOFValue!4759 (value!146895 List!30171)) (IdentValue!4759 (value!146896 List!30171)) (DelimiterValue!9519 (value!146897 List!30171)) (DedentValue!4759 (value!146898 List!30171)) (NewLineValue!4759 (value!146899 List!30171)) (IntegerValue!14277 (value!146900 (_ BitVec 32)) (text!33760 List!30171)) (IntegerValue!14278 (value!146901 Int) (text!33761 List!30171)) (Times!4759) (Or!4759) (Equal!4759) (Minus!4759) (Broken!23799 (value!146902 List!30171)) (And!4759) (Div!4759) (LessEqual!4759) (Mod!4759) (Concat!12440) (Not!4759) (Plus!4759) (SpaceValue!4759 (value!146903 List!30171)) (IntegerValue!14279 (value!146904 Int) (text!33762 List!30171)) (StringLiteralValue!14278 (text!33763 List!30171)) (FloatLiteralValue!9519 (text!33764 List!30171)) (BytesLiteralValue!4759 (value!146905 List!30171)) (CommentValue!9519 (value!146906 List!30171)) (StringLiteralValue!14279 (value!146907 List!30171)) (ErrorTokenValue!4759 (msg!4820 List!30171)) )
))
(declare-datatypes ((Regex!7681 0))(
  ( (ElementMatch!7681 (c!419546 C!15520)) (Concat!12441 (regOne!15874 Regex!7681) (regTwo!15874 Regex!7681)) (EmptyExpr!7681) (Star!7681 (reg!8010 Regex!7681)) (EmptyLang!7681) (Union!7681 (regOne!15875 Regex!7681) (regTwo!15875 Regex!7681)) )
))
(declare-datatypes ((String!33679 0))(
  ( (String!33680 (value!146908 String)) )
))
(declare-datatypes ((List!30172 0))(
  ( (Nil!30072) (Cons!30072 (h!35492 C!15520) (t!213897 List!30172)) )
))
(declare-datatypes ((IArray!18637 0))(
  ( (IArray!18638 (innerList!9376 List!30172)) )
))
(declare-datatypes ((Conc!9316 0))(
  ( (Node!9316 (left!23128 Conc!9316) (right!23458 Conc!9316) (csize!18862 Int) (cheight!9527 Int)) (Leaf!14325 (xs!12300 IArray!18637) (csize!18863 Int)) (Empty!9316) )
))
(declare-datatypes ((BalanceConc!18246 0))(
  ( (BalanceConc!18247 (c!419547 Conc!9316)) )
))
(declare-datatypes ((TokenValueInjection!8958 0))(
  ( (TokenValueInjection!8959 (toValue!6439 Int) (toChars!6298 Int)) )
))
(declare-datatypes ((Rule!8874 0))(
  ( (Rule!8875 (regex!4537 Regex!7681) (tag!5027 String!33679) (isSeparator!4537 Bool) (transformation!4537 TokenValueInjection!8958)) )
))
(declare-datatypes ((Token!8544 0))(
  ( (Token!8545 (value!146909 TokenValue!4759) (rule!6907 Rule!8874) (size!23296 Int) (originalCharacters!5303 List!30172)) )
))
(declare-datatypes ((List!30173 0))(
  ( (Nil!30073) (Cons!30073 (h!35493 Token!8544) (t!213898 List!30173)) )
))
(declare-datatypes ((IArray!18639 0))(
  ( (IArray!18640 (innerList!9377 List!30173)) )
))
(declare-datatypes ((Conc!9317 0))(
  ( (Node!9317 (left!23129 Conc!9317) (right!23459 Conc!9317) (csize!18864 Int) (cheight!9528 Int)) (Leaf!14326 (xs!12301 IArray!18639) (csize!18865 Int)) (Empty!9317) )
))
(declare-datatypes ((BalanceConc!18248 0))(
  ( (BalanceConc!18249 (c!419548 Conc!9317)) )
))
(declare-fun v!6381 () BalanceConc!18248)

(declare-fun size!23297 (BalanceConc!18248) Int)

(assert (=> b!2609077 (= lt!916895 (size!23297 v!6381))))

(declare-fun res!1098041 () Bool)

(assert (=> start!253606 (=> (not res!1098041) (not e!1646033))))

(declare-datatypes ((LexerInterface!4134 0))(
  ( (LexerInterfaceExt!4131 (__x!19352 Int)) (Lexer!4132) )
))
(declare-fun thiss!14197 () LexerInterface!4134)

(get-info :version)

(assert (=> start!253606 (= res!1098041 (and ((_ is Lexer!4132) thiss!14197) (>= from!862 0)))))

(assert (=> start!253606 e!1646033))

(assert (=> start!253606 true))

(declare-fun e!1646044 () Bool)

(assert (=> start!253606 e!1646044))

(declare-fun separatorToken!156 () Token!8544)

(declare-fun e!1646040 () Bool)

(declare-fun inv!40680 (Token!8544) Bool)

(assert (=> start!253606 (and (inv!40680 separatorToken!156) e!1646040)))

(declare-fun e!1646041 () Bool)

(declare-fun inv!40681 (BalanceConc!18248) Bool)

(assert (=> start!253606 (and (inv!40681 v!6381) e!1646041)))

(declare-fun b!2609078 () Bool)

(declare-fun e!1646034 () Bool)

(declare-fun tp!828756 () Bool)

(assert (=> b!2609078 (= e!1646044 (and e!1646034 tp!828756))))

(declare-fun b!2609079 () Bool)

(declare-fun res!1098044 () Bool)

(assert (=> b!2609079 (=> (not res!1098044) (not e!1646038))))

(declare-datatypes ((List!30174 0))(
  ( (Nil!30074) (Cons!30074 (h!35494 Rule!8874) (t!213899 List!30174)) )
))
(declare-fun rules!1726 () List!30174)

(declare-fun sepAndNonSepRulesDisjointChars!1110 (List!30174 List!30174) Bool)

(assert (=> b!2609079 (= res!1098044 (sepAndNonSepRulesDisjointChars!1110 rules!1726 rules!1726))))

(declare-fun b!2609080 () Bool)

(declare-fun e!1646043 () Bool)

(declare-fun lt!916896 () List!30173)

(declare-fun lambda!97542 () Int)

(declare-fun forall!6226 (List!30173 Int) Bool)

(assert (=> b!2609080 (= e!1646043 (not (forall!6226 lt!916896 lambda!97542)))))

(declare-fun tp!828761 () Bool)

(declare-fun e!1646039 () Bool)

(declare-fun b!2609081 () Bool)

(declare-fun inv!40675 (String!33679) Bool)

(declare-fun inv!40682 (TokenValueInjection!8958) Bool)

(assert (=> b!2609081 (= e!1646034 (and tp!828761 (inv!40675 (tag!5027 (h!35494 rules!1726))) (inv!40682 (transformation!4537 (h!35494 rules!1726))) e!1646039))))

(declare-fun b!2609082 () Bool)

(declare-fun res!1098046 () Bool)

(assert (=> b!2609082 (=> (not res!1098046) (not e!1646038))))

(declare-fun isEmpty!17206 (List!30174) Bool)

(assert (=> b!2609082 (= res!1098046 (not (isEmpty!17206 rules!1726)))))

(declare-fun e!1646036 () Bool)

(assert (=> b!2609083 (= e!1646036 (and tp!828762 tp!828757))))

(declare-fun b!2609084 () Bool)

(declare-fun tp!828760 () Bool)

(declare-fun inv!40683 (Conc!9317) Bool)

(assert (=> b!2609084 (= e!1646041 (and (inv!40683 (c!419548 v!6381)) tp!828760))))

(declare-fun b!2609085 () Bool)

(declare-fun res!1098047 () Bool)

(assert (=> b!2609085 (=> (not res!1098047) (not e!1646043))))

(declare-fun rulesProduceEachTokenIndividuallyList!1431 (LexerInterface!4134 List!30174 List!30173) Bool)

(assert (=> b!2609085 (= res!1098047 (rulesProduceEachTokenIndividuallyList!1431 thiss!14197 rules!1726 lt!916896))))

(declare-fun b!2609086 () Bool)

(declare-fun res!1098048 () Bool)

(assert (=> b!2609086 (=> (not res!1098048) (not e!1646038))))

(declare-fun rulesInvariant!3634 (LexerInterface!4134 List!30174) Bool)

(assert (=> b!2609086 (= res!1098048 (rulesInvariant!3634 thiss!14197 rules!1726))))

(declare-fun b!2609087 () Bool)

(declare-fun res!1098049 () Bool)

(assert (=> b!2609087 (=> (not res!1098049) (not e!1646038))))

(declare-fun rulesProduceIndividualToken!1846 (LexerInterface!4134 List!30174 Token!8544) Bool)

(assert (=> b!2609087 (= res!1098049 (rulesProduceIndividualToken!1846 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2609088 () Bool)

(declare-fun res!1098042 () Bool)

(assert (=> b!2609088 (=> (not res!1098042) (not e!1646038))))

(declare-fun rulesProduceEachTokenIndividually!954 (LexerInterface!4134 List!30174 BalanceConc!18248) Bool)

(assert (=> b!2609088 (= res!1098042 (rulesProduceEachTokenIndividually!954 thiss!14197 rules!1726 v!6381))))

(assert (=> b!2609089 (= e!1646039 (and tp!828758 tp!828764))))

(declare-fun b!2609090 () Bool)

(declare-fun res!1098045 () Bool)

(assert (=> b!2609090 (=> (not res!1098045) (not e!1646038))))

(declare-fun forall!6227 (BalanceConc!18248 Int) Bool)

(assert (=> b!2609090 (= res!1098045 (forall!6227 v!6381 lambda!97542))))

(declare-fun b!2609091 () Bool)

(assert (=> b!2609091 (= e!1646038 e!1646043)))

(declare-fun res!1098040 () Bool)

(assert (=> b!2609091 (=> (not res!1098040) (not e!1646043))))

(assert (=> b!2609091 (= res!1098040 (>= from!862 lt!916895))))

(declare-datatypes ((Unit!44077 0))(
  ( (Unit!44078) )
))
(declare-fun lt!916897 () Unit!44077)

(declare-fun lt!916894 () List!30173)

(declare-fun lemmaContentSubsetPreservesForall!206 (List!30173 List!30173 Int) Unit!44077)

(assert (=> b!2609091 (= lt!916897 (lemmaContentSubsetPreservesForall!206 lt!916894 lt!916896 lambda!97542))))

(declare-fun dropList!840 (BalanceConc!18248 Int) List!30173)

(assert (=> b!2609091 (= lt!916896 (dropList!840 v!6381 from!862))))

(declare-fun list!11291 (BalanceConc!18248) List!30173)

(assert (=> b!2609091 (= lt!916894 (list!11291 v!6381))))

(declare-fun b!2609092 () Bool)

(declare-fun res!1098039 () Bool)

(assert (=> b!2609092 (=> (not res!1098039) (not e!1646038))))

(assert (=> b!2609092 (= res!1098039 (isSeparator!4537 (rule!6907 separatorToken!156)))))

(declare-fun tp!828759 () Bool)

(declare-fun b!2609093 () Bool)

(declare-fun e!1646042 () Bool)

(assert (=> b!2609093 (= e!1646042 (and tp!828759 (inv!40675 (tag!5027 (rule!6907 separatorToken!156))) (inv!40682 (transformation!4537 (rule!6907 separatorToken!156))) e!1646036))))

(declare-fun b!2609094 () Bool)

(declare-fun tp!828763 () Bool)

(declare-fun inv!21 (TokenValue!4759) Bool)

(assert (=> b!2609094 (= e!1646040 (and (inv!21 (value!146909 separatorToken!156)) e!1646042 tp!828763))))

(assert (= (and start!253606 res!1098041) b!2609077))

(assert (= (and b!2609077 res!1098043) b!2609082))

(assert (= (and b!2609082 res!1098046) b!2609086))

(assert (= (and b!2609086 res!1098048) b!2609088))

(assert (= (and b!2609088 res!1098042) b!2609087))

(assert (= (and b!2609087 res!1098049) b!2609092))

(assert (= (and b!2609092 res!1098039) b!2609090))

(assert (= (and b!2609090 res!1098045) b!2609079))

(assert (= (and b!2609079 res!1098044) b!2609091))

(assert (= (and b!2609091 res!1098040) b!2609085))

(assert (= (and b!2609085 res!1098047) b!2609080))

(assert (= b!2609081 b!2609089))

(assert (= b!2609078 b!2609081))

(assert (= (and start!253606 ((_ is Cons!30074) rules!1726)) b!2609078))

(assert (= b!2609093 b!2609083))

(assert (= b!2609094 b!2609093))

(assert (= start!253606 b!2609094))

(assert (= start!253606 b!2609084))

(declare-fun m!2943917 () Bool)

(assert (=> b!2609086 m!2943917))

(declare-fun m!2943919 () Bool)

(assert (=> b!2609088 m!2943919))

(declare-fun m!2943921 () Bool)

(assert (=> b!2609090 m!2943921))

(declare-fun m!2943923 () Bool)

(assert (=> b!2609094 m!2943923))

(declare-fun m!2943925 () Bool)

(assert (=> b!2609082 m!2943925))

(declare-fun m!2943927 () Bool)

(assert (=> b!2609087 m!2943927))

(declare-fun m!2943929 () Bool)

(assert (=> b!2609091 m!2943929))

(declare-fun m!2943931 () Bool)

(assert (=> b!2609091 m!2943931))

(declare-fun m!2943933 () Bool)

(assert (=> b!2609091 m!2943933))

(declare-fun m!2943935 () Bool)

(assert (=> b!2609084 m!2943935))

(declare-fun m!2943937 () Bool)

(assert (=> b!2609077 m!2943937))

(declare-fun m!2943939 () Bool)

(assert (=> start!253606 m!2943939))

(declare-fun m!2943941 () Bool)

(assert (=> start!253606 m!2943941))

(declare-fun m!2943943 () Bool)

(assert (=> b!2609079 m!2943943))

(declare-fun m!2943945 () Bool)

(assert (=> b!2609085 m!2943945))

(declare-fun m!2943947 () Bool)

(assert (=> b!2609080 m!2943947))

(declare-fun m!2943949 () Bool)

(assert (=> b!2609081 m!2943949))

(declare-fun m!2943951 () Bool)

(assert (=> b!2609081 m!2943951))

(declare-fun m!2943953 () Bool)

(assert (=> b!2609093 m!2943953))

(declare-fun m!2943955 () Bool)

(assert (=> b!2609093 m!2943955))

(check-sat (not b!2609086) (not b!2609088) (not b!2609087) (not b!2609082) b_and!190771 (not b!2609078) (not b!2609077) (not b_next!73931) (not b!2609079) b_and!190775 (not start!253606) (not b!2609084) (not b!2609080) (not b_next!73927) (not b!2609090) b_and!190777 (not b!2609081) (not b!2609085) b_and!190773 (not b_next!73925) (not b!2609094) (not b!2609091) (not b_next!73929) (not b!2609093))
(check-sat b_and!190775 (not b_next!73927) b_and!190771 b_and!190777 b_and!190773 (not b_next!73931) (not b_next!73925) (not b_next!73929))
(get-model)

(declare-fun d!739557 () Bool)

(assert (=> d!739557 (= (inv!40675 (tag!5027 (h!35494 rules!1726))) (= (mod (str.len (value!146908 (tag!5027 (h!35494 rules!1726)))) 2) 0))))

(assert (=> b!2609081 d!739557))

(declare-fun d!739559 () Bool)

(declare-fun res!1098059 () Bool)

(declare-fun e!1646047 () Bool)

(assert (=> d!739559 (=> (not res!1098059) (not e!1646047))))

(declare-fun semiInverseModEq!1896 (Int Int) Bool)

(assert (=> d!739559 (= res!1098059 (semiInverseModEq!1896 (toChars!6298 (transformation!4537 (h!35494 rules!1726))) (toValue!6439 (transformation!4537 (h!35494 rules!1726)))))))

(assert (=> d!739559 (= (inv!40682 (transformation!4537 (h!35494 rules!1726))) e!1646047)))

(declare-fun b!2609097 () Bool)

(declare-fun equivClasses!1797 (Int Int) Bool)

(assert (=> b!2609097 (= e!1646047 (equivClasses!1797 (toChars!6298 (transformation!4537 (h!35494 rules!1726))) (toValue!6439 (transformation!4537 (h!35494 rules!1726)))))))

(assert (= (and d!739559 res!1098059) b!2609097))

(declare-fun m!2943969 () Bool)

(assert (=> d!739559 m!2943969))

(declare-fun m!2943971 () Bool)

(assert (=> b!2609097 m!2943971))

(assert (=> b!2609081 d!739559))

(declare-fun d!739565 () Bool)

(assert (=> d!739565 (= (isEmpty!17206 rules!1726) ((_ is Nil!30074) rules!1726))))

(assert (=> b!2609082 d!739565))

(declare-fun d!739567 () Bool)

(assert (=> d!739567 (= (inv!40675 (tag!5027 (rule!6907 separatorToken!156))) (= (mod (str.len (value!146908 (tag!5027 (rule!6907 separatorToken!156)))) 2) 0))))

(assert (=> b!2609093 d!739567))

(declare-fun d!739569 () Bool)

(declare-fun res!1098060 () Bool)

(declare-fun e!1646048 () Bool)

(assert (=> d!739569 (=> (not res!1098060) (not e!1646048))))

(assert (=> d!739569 (= res!1098060 (semiInverseModEq!1896 (toChars!6298 (transformation!4537 (rule!6907 separatorToken!156))) (toValue!6439 (transformation!4537 (rule!6907 separatorToken!156)))))))

(assert (=> d!739569 (= (inv!40682 (transformation!4537 (rule!6907 separatorToken!156))) e!1646048)))

(declare-fun b!2609098 () Bool)

(assert (=> b!2609098 (= e!1646048 (equivClasses!1797 (toChars!6298 (transformation!4537 (rule!6907 separatorToken!156))) (toValue!6439 (transformation!4537 (rule!6907 separatorToken!156)))))))

(assert (= (and d!739569 res!1098060) b!2609098))

(declare-fun m!2943973 () Bool)

(assert (=> d!739569 m!2943973))

(declare-fun m!2943975 () Bool)

(assert (=> b!2609098 m!2943975))

(assert (=> b!2609093 d!739569))

(declare-fun d!739571 () Bool)

(declare-fun c!419553 () Bool)

(assert (=> d!739571 (= c!419553 ((_ is IntegerValue!14277) (value!146909 separatorToken!156)))))

(declare-fun e!1646061 () Bool)

(assert (=> d!739571 (= (inv!21 (value!146909 separatorToken!156)) e!1646061)))

(declare-fun b!2609115 () Bool)

(declare-fun inv!16 (TokenValue!4759) Bool)

(assert (=> b!2609115 (= e!1646061 (inv!16 (value!146909 separatorToken!156)))))

(declare-fun b!2609116 () Bool)

(declare-fun e!1646063 () Bool)

(declare-fun inv!15 (TokenValue!4759) Bool)

(assert (=> b!2609116 (= e!1646063 (inv!15 (value!146909 separatorToken!156)))))

(declare-fun b!2609117 () Bool)

(declare-fun e!1646062 () Bool)

(assert (=> b!2609117 (= e!1646061 e!1646062)))

(declare-fun c!419554 () Bool)

(assert (=> b!2609117 (= c!419554 ((_ is IntegerValue!14278) (value!146909 separatorToken!156)))))

(declare-fun b!2609118 () Bool)

(declare-fun res!1098069 () Bool)

(assert (=> b!2609118 (=> res!1098069 e!1646063)))

(assert (=> b!2609118 (= res!1098069 (not ((_ is IntegerValue!14279) (value!146909 separatorToken!156))))))

(assert (=> b!2609118 (= e!1646062 e!1646063)))

(declare-fun b!2609119 () Bool)

(declare-fun inv!17 (TokenValue!4759) Bool)

(assert (=> b!2609119 (= e!1646062 (inv!17 (value!146909 separatorToken!156)))))

(assert (= (and d!739571 c!419553) b!2609115))

(assert (= (and d!739571 (not c!419553)) b!2609117))

(assert (= (and b!2609117 c!419554) b!2609119))

(assert (= (and b!2609117 (not c!419554)) b!2609118))

(assert (= (and b!2609118 (not res!1098069)) b!2609116))

(declare-fun m!2943981 () Bool)

(assert (=> b!2609115 m!2943981))

(declare-fun m!2943983 () Bool)

(assert (=> b!2609116 m!2943983))

(declare-fun m!2943985 () Bool)

(assert (=> b!2609119 m!2943985))

(assert (=> b!2609094 d!739571))

(declare-fun d!739575 () Bool)

(declare-fun res!1098074 () Bool)

(declare-fun e!1646066 () Bool)

(assert (=> d!739575 (=> (not res!1098074) (not e!1646066))))

(declare-fun isEmpty!17207 (List!30172) Bool)

(assert (=> d!739575 (= res!1098074 (not (isEmpty!17207 (originalCharacters!5303 separatorToken!156))))))

(assert (=> d!739575 (= (inv!40680 separatorToken!156) e!1646066)))

(declare-fun b!2609124 () Bool)

(declare-fun res!1098075 () Bool)

(assert (=> b!2609124 (=> (not res!1098075) (not e!1646066))))

(declare-fun list!11293 (BalanceConc!18246) List!30172)

(declare-fun dynLambda!12737 (Int TokenValue!4759) BalanceConc!18246)

(assert (=> b!2609124 (= res!1098075 (= (originalCharacters!5303 separatorToken!156) (list!11293 (dynLambda!12737 (toChars!6298 (transformation!4537 (rule!6907 separatorToken!156))) (value!146909 separatorToken!156)))))))

(declare-fun b!2609125 () Bool)

(declare-fun size!23300 (List!30172) Int)

(assert (=> b!2609125 (= e!1646066 (= (size!23296 separatorToken!156) (size!23300 (originalCharacters!5303 separatorToken!156))))))

(assert (= (and d!739575 res!1098074) b!2609124))

(assert (= (and b!2609124 res!1098075) b!2609125))

(declare-fun b_lambda!78295 () Bool)

(assert (=> (not b_lambda!78295) (not b!2609124)))

(declare-fun t!213901 () Bool)

(declare-fun tb!142091 () Bool)

(assert (=> (and b!2609083 (= (toChars!6298 (transformation!4537 (rule!6907 separatorToken!156))) (toChars!6298 (transformation!4537 (rule!6907 separatorToken!156)))) t!213901) tb!142091))

(declare-fun b!2609130 () Bool)

(declare-fun e!1646069 () Bool)

(declare-fun tp!828767 () Bool)

(declare-fun inv!40684 (Conc!9316) Bool)

(assert (=> b!2609130 (= e!1646069 (and (inv!40684 (c!419547 (dynLambda!12737 (toChars!6298 (transformation!4537 (rule!6907 separatorToken!156))) (value!146909 separatorToken!156)))) tp!828767))))

(declare-fun result!176734 () Bool)

(declare-fun inv!40685 (BalanceConc!18246) Bool)

(assert (=> tb!142091 (= result!176734 (and (inv!40685 (dynLambda!12737 (toChars!6298 (transformation!4537 (rule!6907 separatorToken!156))) (value!146909 separatorToken!156))) e!1646069))))

(assert (= tb!142091 b!2609130))

(declare-fun m!2943987 () Bool)

(assert (=> b!2609130 m!2943987))

(declare-fun m!2943989 () Bool)

(assert (=> tb!142091 m!2943989))

(assert (=> b!2609124 t!213901))

(declare-fun b_and!190779 () Bool)

(assert (= b_and!190773 (and (=> t!213901 result!176734) b_and!190779)))

(declare-fun t!213903 () Bool)

(declare-fun tb!142093 () Bool)

(assert (=> (and b!2609089 (= (toChars!6298 (transformation!4537 (h!35494 rules!1726))) (toChars!6298 (transformation!4537 (rule!6907 separatorToken!156)))) t!213903) tb!142093))

(declare-fun result!176738 () Bool)

(assert (= result!176738 result!176734))

(assert (=> b!2609124 t!213903))

(declare-fun b_and!190781 () Bool)

(assert (= b_and!190777 (and (=> t!213903 result!176738) b_and!190781)))

(declare-fun m!2943991 () Bool)

(assert (=> d!739575 m!2943991))

(declare-fun m!2943993 () Bool)

(assert (=> b!2609124 m!2943993))

(assert (=> b!2609124 m!2943993))

(declare-fun m!2943995 () Bool)

(assert (=> b!2609124 m!2943995))

(declare-fun m!2943997 () Bool)

(assert (=> b!2609125 m!2943997))

(assert (=> start!253606 d!739575))

(declare-fun d!739577 () Bool)

(declare-fun isBalanced!2844 (Conc!9317) Bool)

(assert (=> d!739577 (= (inv!40681 v!6381) (isBalanced!2844 (c!419548 v!6381)))))

(declare-fun bs!473830 () Bool)

(assert (= bs!473830 d!739577))

(declare-fun m!2943999 () Bool)

(assert (=> bs!473830 m!2943999))

(assert (=> start!253606 d!739577))

(declare-fun d!739579 () Bool)

(declare-fun c!419557 () Bool)

(assert (=> d!739579 (= c!419557 ((_ is Node!9317) (c!419548 v!6381)))))

(declare-fun e!1646074 () Bool)

(assert (=> d!739579 (= (inv!40683 (c!419548 v!6381)) e!1646074)))

(declare-fun b!2609137 () Bool)

(declare-fun inv!40686 (Conc!9317) Bool)

(assert (=> b!2609137 (= e!1646074 (inv!40686 (c!419548 v!6381)))))

(declare-fun b!2609138 () Bool)

(declare-fun e!1646075 () Bool)

(assert (=> b!2609138 (= e!1646074 e!1646075)))

(declare-fun res!1098078 () Bool)

(assert (=> b!2609138 (= res!1098078 (not ((_ is Leaf!14326) (c!419548 v!6381))))))

(assert (=> b!2609138 (=> res!1098078 e!1646075)))

(declare-fun b!2609139 () Bool)

(declare-fun inv!40687 (Conc!9317) Bool)

(assert (=> b!2609139 (= e!1646075 (inv!40687 (c!419548 v!6381)))))

(assert (= (and d!739579 c!419557) b!2609137))

(assert (= (and d!739579 (not c!419557)) b!2609138))

(assert (= (and b!2609138 (not res!1098078)) b!2609139))

(declare-fun m!2944001 () Bool)

(assert (=> b!2609137 m!2944001))

(declare-fun m!2944003 () Bool)

(assert (=> b!2609139 m!2944003))

(assert (=> b!2609084 d!739579))

(declare-fun bs!473833 () Bool)

(declare-fun d!739581 () Bool)

(assert (= bs!473833 (and d!739581 b!2609090)))

(declare-fun lambda!97550 () Int)

(assert (=> bs!473833 (not (= lambda!97550 lambda!97542))))

(declare-fun b!2609172 () Bool)

(declare-fun e!1646102 () Bool)

(assert (=> b!2609172 (= e!1646102 true)))

(declare-fun b!2609171 () Bool)

(declare-fun e!1646101 () Bool)

(assert (=> b!2609171 (= e!1646101 e!1646102)))

(declare-fun b!2609170 () Bool)

(declare-fun e!1646100 () Bool)

(assert (=> b!2609170 (= e!1646100 e!1646101)))

(assert (=> d!739581 e!1646100))

(assert (= b!2609171 b!2609172))

(assert (= b!2609170 b!2609171))

(assert (= (and d!739581 ((_ is Cons!30074) rules!1726)) b!2609170))

(declare-fun order!15975 () Int)

(declare-fun order!15977 () Int)

(declare-fun dynLambda!12738 (Int Int) Int)

(declare-fun dynLambda!12739 (Int Int) Int)

(assert (=> b!2609172 (< (dynLambda!12738 order!15975 (toValue!6439 (transformation!4537 (h!35494 rules!1726)))) (dynLambda!12739 order!15977 lambda!97550))))

(declare-fun order!15979 () Int)

(declare-fun dynLambda!12740 (Int Int) Int)

(assert (=> b!2609172 (< (dynLambda!12740 order!15979 (toChars!6298 (transformation!4537 (h!35494 rules!1726)))) (dynLambda!12739 order!15977 lambda!97550))))

(assert (=> d!739581 true))

(declare-fun lt!916912 () Bool)

(assert (=> d!739581 (= lt!916912 (forall!6226 lt!916896 lambda!97550))))

(declare-fun e!1646092 () Bool)

(assert (=> d!739581 (= lt!916912 e!1646092)))

(declare-fun res!1098087 () Bool)

(assert (=> d!739581 (=> res!1098087 e!1646092)))

(assert (=> d!739581 (= res!1098087 (not ((_ is Cons!30073) lt!916896)))))

(assert (=> d!739581 (not (isEmpty!17206 rules!1726))))

(assert (=> d!739581 (= (rulesProduceEachTokenIndividuallyList!1431 thiss!14197 rules!1726 lt!916896) lt!916912)))

(declare-fun b!2609160 () Bool)

(declare-fun e!1646093 () Bool)

(assert (=> b!2609160 (= e!1646092 e!1646093)))

(declare-fun res!1098086 () Bool)

(assert (=> b!2609160 (=> (not res!1098086) (not e!1646093))))

(assert (=> b!2609160 (= res!1098086 (rulesProduceIndividualToken!1846 thiss!14197 rules!1726 (h!35493 lt!916896)))))

(declare-fun b!2609161 () Bool)

(assert (=> b!2609161 (= e!1646093 (rulesProduceEachTokenIndividuallyList!1431 thiss!14197 rules!1726 (t!213898 lt!916896)))))

(assert (= (and d!739581 (not res!1098087)) b!2609160))

(assert (= (and b!2609160 res!1098086) b!2609161))

(declare-fun m!2944015 () Bool)

(assert (=> d!739581 m!2944015))

(assert (=> d!739581 m!2943925))

(declare-fun m!2944017 () Bool)

(assert (=> b!2609160 m!2944017))

(declare-fun m!2944019 () Bool)

(assert (=> b!2609161 m!2944019))

(assert (=> b!2609085 d!739581))

(declare-fun d!739587 () Bool)

(declare-fun res!1098090 () Bool)

(declare-fun e!1646105 () Bool)

(assert (=> d!739587 (=> (not res!1098090) (not e!1646105))))

(declare-fun rulesValid!1702 (LexerInterface!4134 List!30174) Bool)

(assert (=> d!739587 (= res!1098090 (rulesValid!1702 thiss!14197 rules!1726))))

(assert (=> d!739587 (= (rulesInvariant!3634 thiss!14197 rules!1726) e!1646105)))

(declare-fun b!2609177 () Bool)

(declare-datatypes ((List!30176 0))(
  ( (Nil!30076) (Cons!30076 (h!35496 String!33679) (t!213927 List!30176)) )
))
(declare-fun noDuplicateTag!1698 (LexerInterface!4134 List!30174 List!30176) Bool)

(assert (=> b!2609177 (= e!1646105 (noDuplicateTag!1698 thiss!14197 rules!1726 Nil!30076))))

(assert (= (and d!739587 res!1098090) b!2609177))

(declare-fun m!2944021 () Bool)

(assert (=> d!739587 m!2944021))

(declare-fun m!2944023 () Bool)

(assert (=> b!2609177 m!2944023))

(assert (=> b!2609086 d!739587))

(declare-fun d!739589 () Bool)

(declare-fun lt!916924 () Bool)

(declare-fun e!1646122 () Bool)

(assert (=> d!739589 (= lt!916924 e!1646122)))

(declare-fun res!1098113 () Bool)

(assert (=> d!739589 (=> (not res!1098113) (not e!1646122))))

(declare-datatypes ((tuple2!29756 0))(
  ( (tuple2!29757 (_1!17420 BalanceConc!18248) (_2!17420 BalanceConc!18246)) )
))
(declare-fun lex!1874 (LexerInterface!4134 List!30174 BalanceConc!18246) tuple2!29756)

(declare-fun print!1596 (LexerInterface!4134 BalanceConc!18248) BalanceConc!18246)

(declare-fun singletonSeq!2013 (Token!8544) BalanceConc!18248)

(assert (=> d!739589 (= res!1098113 (= (list!11291 (_1!17420 (lex!1874 thiss!14197 rules!1726 (print!1596 thiss!14197 (singletonSeq!2013 separatorToken!156))))) (list!11291 (singletonSeq!2013 separatorToken!156))))))

(declare-fun e!1646123 () Bool)

(assert (=> d!739589 (= lt!916924 e!1646123)))

(declare-fun res!1098114 () Bool)

(assert (=> d!739589 (=> (not res!1098114) (not e!1646123))))

(declare-fun lt!916923 () tuple2!29756)

(assert (=> d!739589 (= res!1098114 (= (size!23297 (_1!17420 lt!916923)) 1))))

(assert (=> d!739589 (= lt!916923 (lex!1874 thiss!14197 rules!1726 (print!1596 thiss!14197 (singletonSeq!2013 separatorToken!156))))))

(assert (=> d!739589 (not (isEmpty!17206 rules!1726))))

(assert (=> d!739589 (= (rulesProduceIndividualToken!1846 thiss!14197 rules!1726 separatorToken!156) lt!916924)))

(declare-fun b!2609199 () Bool)

(declare-fun res!1098112 () Bool)

(assert (=> b!2609199 (=> (not res!1098112) (not e!1646123))))

(declare-fun apply!7047 (BalanceConc!18248 Int) Token!8544)

(assert (=> b!2609199 (= res!1098112 (= (apply!7047 (_1!17420 lt!916923) 0) separatorToken!156))))

(declare-fun b!2609200 () Bool)

(declare-fun isEmpty!17209 (BalanceConc!18246) Bool)

(assert (=> b!2609200 (= e!1646123 (isEmpty!17209 (_2!17420 lt!916923)))))

(declare-fun b!2609201 () Bool)

(assert (=> b!2609201 (= e!1646122 (isEmpty!17209 (_2!17420 (lex!1874 thiss!14197 rules!1726 (print!1596 thiss!14197 (singletonSeq!2013 separatorToken!156))))))))

(assert (= (and d!739589 res!1098114) b!2609199))

(assert (= (and b!2609199 res!1098112) b!2609200))

(assert (= (and d!739589 res!1098113) b!2609201))

(declare-fun m!2944051 () Bool)

(assert (=> d!739589 m!2944051))

(declare-fun m!2944053 () Bool)

(assert (=> d!739589 m!2944053))

(declare-fun m!2944055 () Bool)

(assert (=> d!739589 m!2944055))

(declare-fun m!2944057 () Bool)

(assert (=> d!739589 m!2944057))

(assert (=> d!739589 m!2943925))

(assert (=> d!739589 m!2944057))

(assert (=> d!739589 m!2944051))

(declare-fun m!2944059 () Bool)

(assert (=> d!739589 m!2944059))

(assert (=> d!739589 m!2944057))

(declare-fun m!2944061 () Bool)

(assert (=> d!739589 m!2944061))

(declare-fun m!2944063 () Bool)

(assert (=> b!2609199 m!2944063))

(declare-fun m!2944065 () Bool)

(assert (=> b!2609200 m!2944065))

(assert (=> b!2609201 m!2944057))

(assert (=> b!2609201 m!2944057))

(assert (=> b!2609201 m!2944051))

(assert (=> b!2609201 m!2944051))

(assert (=> b!2609201 m!2944053))

(declare-fun m!2944067 () Bool)

(assert (=> b!2609201 m!2944067))

(assert (=> b!2609087 d!739589))

(declare-fun d!739599 () Bool)

(declare-fun lt!916927 () Int)

(declare-fun size!23301 (List!30173) Int)

(assert (=> d!739599 (= lt!916927 (size!23301 (list!11291 v!6381)))))

(declare-fun size!23302 (Conc!9317) Int)

(assert (=> d!739599 (= lt!916927 (size!23302 (c!419548 v!6381)))))

(assert (=> d!739599 (= (size!23297 v!6381) lt!916927)))

(declare-fun bs!473834 () Bool)

(assert (= bs!473834 d!739599))

(assert (=> bs!473834 m!2943933))

(assert (=> bs!473834 m!2943933))

(declare-fun m!2944069 () Bool)

(assert (=> bs!473834 m!2944069))

(declare-fun m!2944071 () Bool)

(assert (=> bs!473834 m!2944071))

(assert (=> b!2609077 d!739599))

(declare-fun bs!473836 () Bool)

(declare-fun d!739601 () Bool)

(assert (= bs!473836 (and d!739601 b!2609090)))

(declare-fun lambda!97555 () Int)

(assert (=> bs!473836 (not (= lambda!97555 lambda!97542))))

(declare-fun bs!473837 () Bool)

(assert (= bs!473837 (and d!739601 d!739581)))

(assert (=> bs!473837 (= lambda!97555 lambda!97550)))

(declare-fun b!2609249 () Bool)

(declare-fun e!1646157 () Bool)

(assert (=> b!2609249 (= e!1646157 true)))

(declare-fun b!2609248 () Bool)

(declare-fun e!1646156 () Bool)

(assert (=> b!2609248 (= e!1646156 e!1646157)))

(declare-fun b!2609247 () Bool)

(declare-fun e!1646155 () Bool)

(assert (=> b!2609247 (= e!1646155 e!1646156)))

(assert (=> d!739601 e!1646155))

(assert (= b!2609248 b!2609249))

(assert (= b!2609247 b!2609248))

(assert (= (and d!739601 ((_ is Cons!30074) rules!1726)) b!2609247))

(assert (=> b!2609249 (< (dynLambda!12738 order!15975 (toValue!6439 (transformation!4537 (h!35494 rules!1726)))) (dynLambda!12739 order!15977 lambda!97555))))

(assert (=> b!2609249 (< (dynLambda!12740 order!15979 (toChars!6298 (transformation!4537 (h!35494 rules!1726)))) (dynLambda!12739 order!15977 lambda!97555))))

(assert (=> d!739601 true))

(declare-fun e!1646154 () Bool)

(assert (=> d!739601 e!1646154))

(declare-fun res!1098136 () Bool)

(assert (=> d!739601 (=> (not res!1098136) (not e!1646154))))

(declare-fun lt!916930 () Bool)

(assert (=> d!739601 (= res!1098136 (= lt!916930 (forall!6226 (list!11291 v!6381) lambda!97555)))))

(assert (=> d!739601 (= lt!916930 (forall!6227 v!6381 lambda!97555))))

(assert (=> d!739601 (not (isEmpty!17206 rules!1726))))

(assert (=> d!739601 (= (rulesProduceEachTokenIndividually!954 thiss!14197 rules!1726 v!6381) lt!916930)))

(declare-fun b!2609246 () Bool)

(assert (=> b!2609246 (= e!1646154 (= lt!916930 (rulesProduceEachTokenIndividuallyList!1431 thiss!14197 rules!1726 (list!11291 v!6381))))))

(assert (= (and d!739601 res!1098136) b!2609246))

(assert (=> d!739601 m!2943933))

(assert (=> d!739601 m!2943933))

(declare-fun m!2944105 () Bool)

(assert (=> d!739601 m!2944105))

(declare-fun m!2944107 () Bool)

(assert (=> d!739601 m!2944107))

(assert (=> d!739601 m!2943925))

(assert (=> b!2609246 m!2943933))

(assert (=> b!2609246 m!2943933))

(declare-fun m!2944109 () Bool)

(assert (=> b!2609246 m!2944109))

(assert (=> b!2609088 d!739601))

(declare-fun d!739619 () Bool)

(declare-fun res!1098141 () Bool)

(declare-fun e!1646162 () Bool)

(assert (=> d!739619 (=> res!1098141 e!1646162)))

(assert (=> d!739619 (= res!1098141 (not ((_ is Cons!30074) rules!1726)))))

(assert (=> d!739619 (= (sepAndNonSepRulesDisjointChars!1110 rules!1726 rules!1726) e!1646162)))

(declare-fun b!2609254 () Bool)

(declare-fun e!1646163 () Bool)

(assert (=> b!2609254 (= e!1646162 e!1646163)))

(declare-fun res!1098142 () Bool)

(assert (=> b!2609254 (=> (not res!1098142) (not e!1646163))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!504 (Rule!8874 List!30174) Bool)

(assert (=> b!2609254 (= res!1098142 (ruleDisjointCharsFromAllFromOtherType!504 (h!35494 rules!1726) rules!1726))))

(declare-fun b!2609255 () Bool)

(assert (=> b!2609255 (= e!1646163 (sepAndNonSepRulesDisjointChars!1110 rules!1726 (t!213899 rules!1726)))))

(assert (= (and d!739619 (not res!1098141)) b!2609254))

(assert (= (and b!2609254 res!1098142) b!2609255))

(declare-fun m!2944111 () Bool)

(assert (=> b!2609254 m!2944111))

(declare-fun m!2944113 () Bool)

(assert (=> b!2609255 m!2944113))

(assert (=> b!2609079 d!739619))

(declare-fun d!739621 () Bool)

(declare-fun lt!916935 () Bool)

(assert (=> d!739621 (= lt!916935 (forall!6226 (list!11291 v!6381) lambda!97542))))

(declare-fun forall!6229 (Conc!9317 Int) Bool)

(assert (=> d!739621 (= lt!916935 (forall!6229 (c!419548 v!6381) lambda!97542))))

(assert (=> d!739621 (= (forall!6227 v!6381 lambda!97542) lt!916935)))

(declare-fun bs!473838 () Bool)

(assert (= bs!473838 d!739621))

(assert (=> bs!473838 m!2943933))

(assert (=> bs!473838 m!2943933))

(declare-fun m!2944115 () Bool)

(assert (=> bs!473838 m!2944115))

(declare-fun m!2944117 () Bool)

(assert (=> bs!473838 m!2944117))

(assert (=> b!2609090 d!739621))

(declare-fun d!739623 () Bool)

(declare-fun res!1098151 () Bool)

(declare-fun e!1646172 () Bool)

(assert (=> d!739623 (=> res!1098151 e!1646172)))

(assert (=> d!739623 (= res!1098151 ((_ is Nil!30073) lt!916896))))

(assert (=> d!739623 (= (forall!6226 lt!916896 lambda!97542) e!1646172)))

(declare-fun b!2609264 () Bool)

(declare-fun e!1646173 () Bool)

(assert (=> b!2609264 (= e!1646172 e!1646173)))

(declare-fun res!1098152 () Bool)

(assert (=> b!2609264 (=> (not res!1098152) (not e!1646173))))

(declare-fun dynLambda!12743 (Int Token!8544) Bool)

(assert (=> b!2609264 (= res!1098152 (dynLambda!12743 lambda!97542 (h!35493 lt!916896)))))

(declare-fun b!2609265 () Bool)

(assert (=> b!2609265 (= e!1646173 (forall!6226 (t!213898 lt!916896) lambda!97542))))

(assert (= (and d!739623 (not res!1098151)) b!2609264))

(assert (= (and b!2609264 res!1098152) b!2609265))

(declare-fun b_lambda!78301 () Bool)

(assert (=> (not b_lambda!78301) (not b!2609264)))

(declare-fun m!2944119 () Bool)

(assert (=> b!2609264 m!2944119))

(declare-fun m!2944121 () Bool)

(assert (=> b!2609265 m!2944121))

(assert (=> b!2609080 d!739623))

(declare-fun d!739625 () Bool)

(assert (=> d!739625 (forall!6226 lt!916896 lambda!97542)))

(declare-fun lt!916939 () Unit!44077)

(declare-fun choose!15489 (List!30173 List!30173 Int) Unit!44077)

(assert (=> d!739625 (= lt!916939 (choose!15489 lt!916894 lt!916896 lambda!97542))))

(assert (=> d!739625 (forall!6226 lt!916894 lambda!97542)))

(assert (=> d!739625 (= (lemmaContentSubsetPreservesForall!206 lt!916894 lt!916896 lambda!97542) lt!916939)))

(declare-fun bs!473841 () Bool)

(assert (= bs!473841 d!739625))

(assert (=> bs!473841 m!2943947))

(declare-fun m!2944123 () Bool)

(assert (=> bs!473841 m!2944123))

(declare-fun m!2944127 () Bool)

(assert (=> bs!473841 m!2944127))

(assert (=> b!2609091 d!739625))

(declare-fun d!739627 () Bool)

(declare-fun drop!1537 (List!30173 Int) List!30173)

(declare-fun list!11295 (Conc!9317) List!30173)

(assert (=> d!739627 (= (dropList!840 v!6381 from!862) (drop!1537 (list!11295 (c!419548 v!6381)) from!862))))

(declare-fun bs!473842 () Bool)

(assert (= bs!473842 d!739627))

(declare-fun m!2944137 () Bool)

(assert (=> bs!473842 m!2944137))

(assert (=> bs!473842 m!2944137))

(declare-fun m!2944139 () Bool)

(assert (=> bs!473842 m!2944139))

(assert (=> b!2609091 d!739627))

(declare-fun d!739629 () Bool)

(assert (=> d!739629 (= (list!11291 v!6381) (list!11295 (c!419548 v!6381)))))

(declare-fun bs!473843 () Bool)

(assert (= bs!473843 d!739629))

(assert (=> bs!473843 m!2944137))

(assert (=> b!2609091 d!739629))

(declare-fun b!2609323 () Bool)

(declare-fun e!1646204 () Bool)

(declare-fun tp_is_empty!13721 () Bool)

(assert (=> b!2609323 (= e!1646204 tp_is_empty!13721)))

(declare-fun b!2609326 () Bool)

(declare-fun tp!828823 () Bool)

(declare-fun tp!828822 () Bool)

(assert (=> b!2609326 (= e!1646204 (and tp!828823 tp!828822))))

(declare-fun b!2609325 () Bool)

(declare-fun tp!828824 () Bool)

(assert (=> b!2609325 (= e!1646204 tp!828824)))

(assert (=> b!2609081 (= tp!828761 e!1646204)))

(declare-fun b!2609324 () Bool)

(declare-fun tp!828825 () Bool)

(declare-fun tp!828826 () Bool)

(assert (=> b!2609324 (= e!1646204 (and tp!828825 tp!828826))))

(assert (= (and b!2609081 ((_ is ElementMatch!7681) (regex!4537 (h!35494 rules!1726)))) b!2609323))

(assert (= (and b!2609081 ((_ is Concat!12441) (regex!4537 (h!35494 rules!1726)))) b!2609324))

(assert (= (and b!2609081 ((_ is Star!7681) (regex!4537 (h!35494 rules!1726)))) b!2609325))

(assert (= (and b!2609081 ((_ is Union!7681) (regex!4537 (h!35494 rules!1726)))) b!2609326))

(declare-fun b!2609330 () Bool)

(declare-fun e!1646207 () Bool)

(assert (=> b!2609330 (= e!1646207 tp_is_empty!13721)))

(declare-fun b!2609333 () Bool)

(declare-fun tp!828831 () Bool)

(declare-fun tp!828830 () Bool)

(assert (=> b!2609333 (= e!1646207 (and tp!828831 tp!828830))))

(declare-fun b!2609332 () Bool)

(declare-fun tp!828832 () Bool)

(assert (=> b!2609332 (= e!1646207 tp!828832)))

(assert (=> b!2609093 (= tp!828759 e!1646207)))

(declare-fun b!2609331 () Bool)

(declare-fun tp!828833 () Bool)

(declare-fun tp!828834 () Bool)

(assert (=> b!2609331 (= e!1646207 (and tp!828833 tp!828834))))

(assert (= (and b!2609093 ((_ is ElementMatch!7681) (regex!4537 (rule!6907 separatorToken!156)))) b!2609330))

(assert (= (and b!2609093 ((_ is Concat!12441) (regex!4537 (rule!6907 separatorToken!156)))) b!2609331))

(assert (= (and b!2609093 ((_ is Star!7681) (regex!4537 (rule!6907 separatorToken!156)))) b!2609332))

(assert (= (and b!2609093 ((_ is Union!7681) (regex!4537 (rule!6907 separatorToken!156)))) b!2609333))

(declare-fun b!2609344 () Bool)

(declare-fun b_free!73233 () Bool)

(declare-fun b_next!73937 () Bool)

(assert (=> b!2609344 (= b_free!73233 (not b_next!73937))))

(declare-fun tp!828843 () Bool)

(declare-fun b_and!190791 () Bool)

(assert (=> b!2609344 (= tp!828843 b_and!190791)))

(declare-fun b_free!73235 () Bool)

(declare-fun b_next!73939 () Bool)

(assert (=> b!2609344 (= b_free!73235 (not b_next!73939))))

(declare-fun t!213925 () Bool)

(declare-fun tb!142101 () Bool)

(assert (=> (and b!2609344 (= (toChars!6298 (transformation!4537 (h!35494 (t!213899 rules!1726)))) (toChars!6298 (transformation!4537 (rule!6907 separatorToken!156)))) t!213925) tb!142101))

(declare-fun result!176760 () Bool)

(assert (= result!176760 result!176734))

(assert (=> b!2609124 t!213925))

(declare-fun tp!828844 () Bool)

(declare-fun b_and!190793 () Bool)

(assert (=> b!2609344 (= tp!828844 (and (=> t!213925 result!176760) b_and!190793))))

(declare-fun e!1646216 () Bool)

(assert (=> b!2609344 (= e!1646216 (and tp!828843 tp!828844))))

(declare-fun b!2609343 () Bool)

(declare-fun tp!828845 () Bool)

(declare-fun e!1646217 () Bool)

(assert (=> b!2609343 (= e!1646217 (and tp!828845 (inv!40675 (tag!5027 (h!35494 (t!213899 rules!1726)))) (inv!40682 (transformation!4537 (h!35494 (t!213899 rules!1726)))) e!1646216))))

(declare-fun b!2609342 () Bool)

(declare-fun e!1646218 () Bool)

(declare-fun tp!828846 () Bool)

(assert (=> b!2609342 (= e!1646218 (and e!1646217 tp!828846))))

(assert (=> b!2609078 (= tp!828756 e!1646218)))

(assert (= b!2609343 b!2609344))

(assert (= b!2609342 b!2609343))

(assert (= (and b!2609078 ((_ is Cons!30074) (t!213899 rules!1726))) b!2609342))

(declare-fun m!2944147 () Bool)

(assert (=> b!2609343 m!2944147))

(declare-fun m!2944149 () Bool)

(assert (=> b!2609343 m!2944149))

(declare-fun b!2609349 () Bool)

(declare-fun e!1646222 () Bool)

(declare-fun tp!828849 () Bool)

(assert (=> b!2609349 (= e!1646222 (and tp_is_empty!13721 tp!828849))))

(assert (=> b!2609094 (= tp!828763 e!1646222)))

(assert (= (and b!2609094 ((_ is Cons!30072) (originalCharacters!5303 separatorToken!156))) b!2609349))

(declare-fun b!2609358 () Bool)

(declare-fun tp!828858 () Bool)

(declare-fun e!1646227 () Bool)

(declare-fun tp!828856 () Bool)

(assert (=> b!2609358 (= e!1646227 (and (inv!40683 (left!23129 (c!419548 v!6381))) tp!828856 (inv!40683 (right!23459 (c!419548 v!6381))) tp!828858))))

(declare-fun b!2609360 () Bool)

(declare-fun e!1646228 () Bool)

(declare-fun tp!828857 () Bool)

(assert (=> b!2609360 (= e!1646228 tp!828857)))

(declare-fun b!2609359 () Bool)

(declare-fun inv!40692 (IArray!18639) Bool)

(assert (=> b!2609359 (= e!1646227 (and (inv!40692 (xs!12301 (c!419548 v!6381))) e!1646228))))

(assert (=> b!2609084 (= tp!828760 (and (inv!40683 (c!419548 v!6381)) e!1646227))))

(assert (= (and b!2609084 ((_ is Node!9317) (c!419548 v!6381))) b!2609358))

(assert (= b!2609359 b!2609360))

(assert (= (and b!2609084 ((_ is Leaf!14326) (c!419548 v!6381))) b!2609359))

(declare-fun m!2944151 () Bool)

(assert (=> b!2609358 m!2944151))

(declare-fun m!2944153 () Bool)

(assert (=> b!2609358 m!2944153))

(declare-fun m!2944155 () Bool)

(assert (=> b!2609359 m!2944155))

(assert (=> b!2609084 m!2943935))

(declare-fun b_lambda!78307 () Bool)

(assert (= b_lambda!78301 (or b!2609090 b_lambda!78307)))

(declare-fun bs!473845 () Bool)

(declare-fun d!739633 () Bool)

(assert (= bs!473845 (and d!739633 b!2609090)))

(assert (=> bs!473845 (= (dynLambda!12743 lambda!97542 (h!35493 lt!916896)) (not (isSeparator!4537 (rule!6907 (h!35493 lt!916896)))))))

(assert (=> b!2609264 d!739633))

(declare-fun b_lambda!78309 () Bool)

(assert (= b_lambda!78295 (or (and b!2609083 b_free!73223) (and b!2609089 b_free!73227 (= (toChars!6298 (transformation!4537 (h!35494 rules!1726))) (toChars!6298 (transformation!4537 (rule!6907 separatorToken!156))))) (and b!2609344 b_free!73235 (= (toChars!6298 (transformation!4537 (h!35494 (t!213899 rules!1726)))) (toChars!6298 (transformation!4537 (rule!6907 separatorToken!156))))) b_lambda!78309)))

(check-sat (not b!2609265) (not d!739627) (not b!2609139) (not b!2609200) b_and!190781 (not b_next!73927) b_and!190791 (not b!2609342) (not b!2609130) (not d!739589) (not b!2609119) (not d!739581) b_and!190779 b_and!190775 (not d!739601) (not d!739599) (not b!2609331) (not b!2609084) (not d!739575) (not b!2609170) (not b!2609177) (not b!2609255) b_and!190771 (not b_next!73937) (not d!739577) (not b!2609161) (not b!2609326) (not b!2609325) (not b!2609098) (not b!2609201) (not b!2609358) (not b!2609125) (not b!2609360) tp_is_empty!13721 (not b_lambda!78307) (not d!739559) (not d!739569) (not d!739629) (not b_lambda!78309) b_and!190793 (not b!2609343) (not b!2609124) (not b_next!73931) (not b!2609097) (not b!2609247) (not d!739621) (not b!2609199) (not b!2609359) (not b!2609246) (not b!2609115) (not b_next!73925) (not d!739587) (not b!2609349) (not tb!142091) (not b!2609160) (not b!2609137) (not b!2609254) (not b_next!73939) (not b!2609324) (not b!2609333) (not b_next!73929) (not d!739625) (not b!2609116) (not b!2609332))
(check-sat b_and!190779 b_and!190775 b_and!190781 (not b_next!73927) b_and!190771 (not b_next!73937) b_and!190791 b_and!190793 (not b_next!73931) (not b_next!73925) (not b_next!73939) (not b_next!73929))
