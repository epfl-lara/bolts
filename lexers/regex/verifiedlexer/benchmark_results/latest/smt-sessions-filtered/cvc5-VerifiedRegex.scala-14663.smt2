; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757122 () Bool)

(assert start!757122)

(declare-fun b!8041765 () Bool)

(declare-fun b_free!135779 () Bool)

(declare-fun b_next!136569 () Bool)

(assert (=> b!8041765 (= b_free!135779 (not b_next!136569))))

(declare-fun tp!2409401 () Bool)

(declare-fun b_and!354215 () Bool)

(assert (=> b!8041765 (= tp!2409401 b_and!354215)))

(declare-fun b_free!135781 () Bool)

(declare-fun b_next!136571 () Bool)

(assert (=> b!8041765 (= b_free!135781 (not b_next!136571))))

(declare-fun tp!2409399 () Bool)

(declare-fun b_and!354217 () Bool)

(assert (=> b!8041765 (= tp!2409399 b_and!354217)))

(declare-fun b!8041767 () Bool)

(declare-fun b_free!135783 () Bool)

(declare-fun b_next!136573 () Bool)

(assert (=> b!8041767 (= b_free!135783 (not b_next!136573))))

(declare-fun tp!2409394 () Bool)

(declare-fun b_and!354219 () Bool)

(assert (=> b!8041767 (= tp!2409394 b_and!354219)))

(declare-fun b_free!135785 () Bool)

(declare-fun b_next!136575 () Bool)

(assert (=> b!8041767 (= b_free!135785 (not b_next!136575))))

(declare-fun tp!2409397 () Bool)

(declare-fun b_and!354221 () Bool)

(assert (=> b!8041767 (= tp!2409397 b_and!354221)))

(declare-fun b!8041759 () Bool)

(declare-fun b_free!135787 () Bool)

(declare-fun b_next!136577 () Bool)

(assert (=> b!8041759 (= b_free!135787 (not b_next!136577))))

(declare-fun tp!2409396 () Bool)

(declare-fun b_and!354223 () Bool)

(assert (=> b!8041759 (= tp!2409396 b_and!354223)))

(declare-fun b_free!135789 () Bool)

(declare-fun b_next!136579 () Bool)

(assert (=> b!8041759 (= b_free!135789 (not b_next!136579))))

(declare-fun tp!2409395 () Bool)

(declare-fun b_and!354225 () Bool)

(assert (=> b!8041759 (= tp!2409395 b_and!354225)))

(declare-fun b!8041775 () Bool)

(declare-fun e!4737027 () Bool)

(assert (=> b!8041775 (= e!4737027 true)))

(declare-fun b!8041774 () Bool)

(declare-fun e!4737026 () Bool)

(assert (=> b!8041774 (= e!4737026 e!4737027)))

(declare-fun b!8041764 () Bool)

(assert (=> b!8041764 e!4737026))

(assert (= b!8041774 b!8041775))

(assert (= b!8041764 b!8041774))

(declare-fun order!30001 () Int)

(declare-fun order!29999 () Int)

(declare-datatypes ((C!43894 0))(
  ( (C!43895 (val!32723 Int)) )
))
(declare-datatypes ((List!75261 0))(
  ( (Nil!75135) (Cons!75135 (h!81583 C!43894) (t!391031 List!75261)) )
))
(declare-datatypes ((IArray!32011 0))(
  ( (IArray!32012 (innerList!16063 List!75261)) )
))
(declare-datatypes ((Conc!15975 0))(
  ( (Node!15975 (left!57280 Conc!15975) (right!57610 Conc!15975) (csize!32180 Int) (cheight!16186 Int)) (Leaf!30639 (xs!19373 IArray!32011) (csize!32181 Int)) (Empty!15975) )
))
(declare-datatypes ((List!75262 0))(
  ( (Nil!75136) (Cons!75136 (h!81584 (_ BitVec 16)) (t!391032 List!75262)) )
))
(declare-datatypes ((Regex!21778 0))(
  ( (ElementMatch!21778 (c!1475031 C!43894)) (Concat!30805 (regOne!44068 Regex!21778) (regTwo!44068 Regex!21778)) (EmptyExpr!21778) (Star!21778 (reg!22107 Regex!21778)) (EmptyLang!21778) (Union!21778 (regOne!44069 Regex!21778) (regTwo!44069 Regex!21778)) )
))
(declare-datatypes ((String!84910 0))(
  ( (String!84911 (value!291210 String)) )
))
(declare-datatypes ((TokenValue!9027 0))(
  ( (FloatLiteralValue!18054 (text!63634 List!75262)) (TokenValueExt!9026 (__x!35335 Int)) (Broken!45135 (value!291211 List!75262)) (Object!9152) (End!9027) (Def!9027) (Underscore!9027) (Match!9027) (Else!9027) (Error!9027) (Case!9027) (If!9027) (Extends!9027) (Abstract!9027) (Class!9027) (Val!9027) (DelimiterValue!18054 (del!9087 List!75262)) (KeywordValue!9033 (value!291212 List!75262)) (CommentValue!18054 (value!291213 List!75262)) (WhitespaceValue!18054 (value!291214 List!75262)) (IndentationValue!9027 (value!291215 List!75262)) (String!84912) (Int32!9027) (Broken!45136 (value!291216 List!75262)) (Boolean!9028) (Unit!171038) (OperatorValue!9030 (op!9087 List!75262)) (IdentifierValue!18054 (value!291217 List!75262)) (IdentifierValue!18055 (value!291218 List!75262)) (WhitespaceValue!18055 (value!291219 List!75262)) (True!18054) (False!18054) (Broken!45137 (value!291220 List!75262)) (Broken!45138 (value!291221 List!75262)) (True!18055) (RightBrace!9027) (RightBracket!9027) (Colon!9027) (Null!9027) (Comma!9027) (LeftBracket!9027) (False!18055) (LeftBrace!9027) (ImaginaryLiteralValue!9027 (text!63635 List!75262)) (StringLiteralValue!27081 (value!291222 List!75262)) (EOFValue!9027 (value!291223 List!75262)) (IdentValue!9027 (value!291224 List!75262)) (DelimiterValue!18055 (value!291225 List!75262)) (DedentValue!9027 (value!291226 List!75262)) (NewLineValue!9027 (value!291227 List!75262)) (IntegerValue!27081 (value!291228 (_ BitVec 32)) (text!63636 List!75262)) (IntegerValue!27082 (value!291229 Int) (text!63637 List!75262)) (Times!9027) (Or!9027) (Equal!9027) (Minus!9027) (Broken!45139 (value!291230 List!75262)) (And!9027) (Div!9027) (LessEqual!9027) (Mod!9027) (Concat!30806) (Not!9027) (Plus!9027) (SpaceValue!9027 (value!291231 List!75262)) (IntegerValue!27083 (value!291232 Int) (text!63638 List!75262)) (StringLiteralValue!27082 (text!63639 List!75262)) (FloatLiteralValue!18055 (text!63640 List!75262)) (BytesLiteralValue!9027 (value!291233 List!75262)) (CommentValue!18055 (value!291234 List!75262)) (StringLiteralValue!27083 (value!291235 List!75262)) (ErrorTokenValue!9027 (msg!9088 List!75262)) )
))
(declare-datatypes ((BalanceConc!30906 0))(
  ( (BalanceConc!30907 (c!1475032 Conc!15975)) )
))
(declare-datatypes ((TokenValueInjection!17362 0))(
  ( (TokenValueInjection!17363 (toValue!11778 Int) (toChars!11637 Int)) )
))
(declare-datatypes ((Rule!17214 0))(
  ( (Rule!17215 (regex!8707 Regex!21778) (tag!9571 String!84910) (isSeparator!8707 Bool) (transformation!8707 TokenValueInjection!17362)) )
))
(declare-fun rNSep!153 () Rule!17214)

(declare-fun lambda!472638 () Int)

(declare-fun dynLambda!30224 (Int Int) Int)

(declare-fun dynLambda!30225 (Int Int) Int)

(assert (=> b!8041775 (< (dynLambda!30224 order!29999 (toValue!11778 (transformation!8707 rNSep!153))) (dynLambda!30225 order!30001 lambda!472638))))

(declare-fun order!30003 () Int)

(declare-fun dynLambda!30226 (Int Int) Int)

(assert (=> b!8041775 (< (dynLambda!30226 order!30003 (toChars!11637 (transformation!8707 rNSep!153))) (dynLambda!30225 order!30001 lambda!472638))))

(declare-fun e!4737010 () Bool)

(declare-fun b!8041754 () Bool)

(declare-fun tp!2409402 () Bool)

(declare-fun e!4737020 () Bool)

(declare-fun inv!96935 (String!84910) Bool)

(declare-fun inv!96938 (TokenValueInjection!17362) Bool)

(assert (=> b!8041754 (= e!4737020 (and tp!2409402 (inv!96935 (tag!9571 rNSep!153)) (inv!96938 (transformation!8707 rNSep!153)) e!4737010))))

(declare-fun b!8041755 () Bool)

(declare-fun res!3178873 () Bool)

(declare-fun e!4737016 () Bool)

(assert (=> b!8041755 (=> (not res!3178873) (not e!4737016))))

(declare-datatypes ((List!75263 0))(
  ( (Nil!75137) (Cons!75137 (h!81585 Rule!17214) (t!391033 List!75263)) )
))
(declare-fun rules!4166 () List!75263)

(declare-fun ruleDisjointCharsFromAllFromOtherType!981 (Rule!17214 List!75263) Bool)

(assert (=> b!8041755 (= res!3178873 (ruleDisjointCharsFromAllFromOtherType!981 rNSep!153 rules!4166))))

(declare-fun tp!2409400 () Bool)

(declare-fun e!4737012 () Bool)

(declare-fun b!8041756 () Bool)

(declare-fun e!4737021 () Bool)

(declare-fun rSep!153 () Rule!17214)

(assert (=> b!8041756 (= e!4737012 (and tp!2409400 (inv!96935 (tag!9571 rSep!153)) (inv!96938 (transformation!8707 rSep!153)) e!4737021))))

(declare-fun res!3178867 () Bool)

(declare-fun e!4737018 () Bool)

(assert (=> start!757122 (=> (not res!3178867) (not e!4737018))))

(declare-datatypes ((LexerInterface!8297 0))(
  ( (LexerInterfaceExt!8294 (__x!35336 Int)) (Lexer!8295) )
))
(declare-fun thiss!27104 () LexerInterface!8297)

(assert (=> start!757122 (= res!3178867 (is-Lexer!8295 thiss!27104))))

(assert (=> start!757122 e!4737018))

(declare-fun e!4737011 () Bool)

(assert (=> start!757122 e!4737011))

(declare-fun tp_is_empty!54551 () Bool)

(assert (=> start!757122 tp_is_empty!54551))

(assert (=> start!757122 true))

(assert (=> start!757122 e!4737020))

(assert (=> start!757122 e!4737012))

(declare-fun e!4737014 () Bool)

(declare-fun e!4737017 () Bool)

(declare-fun tp!2409403 () Bool)

(declare-fun b!8041757 () Bool)

(assert (=> b!8041757 (= e!4737017 (and tp!2409403 (inv!96935 (tag!9571 (h!81585 rules!4166))) (inv!96938 (transformation!8707 (h!81585 rules!4166))) e!4737014))))

(declare-fun b!8041758 () Bool)

(declare-fun res!3178871 () Bool)

(assert (=> b!8041758 (=> (not res!3178871) (not e!4737018))))

(declare-fun rulesInvariant!6765 (LexerInterface!8297 List!75263) Bool)

(assert (=> b!8041758 (= res!3178871 (rulesInvariant!6765 thiss!27104 rules!4166))))

(assert (=> b!8041759 (= e!4737021 (and tp!2409396 tp!2409395))))

(declare-fun b!8041760 () Bool)

(declare-fun res!3178870 () Bool)

(assert (=> b!8041760 (=> (not res!3178870) (not e!4737018))))

(declare-fun contains!20997 (List!75263 Rule!17214) Bool)

(assert (=> b!8041760 (= res!3178870 (contains!20997 rules!4166 rSep!153))))

(declare-fun b!8041761 () Bool)

(assert (=> b!8041761 (= e!4737018 e!4737016)))

(declare-fun res!3178869 () Bool)

(assert (=> b!8041761 (=> (not res!3178869) (not e!4737016))))

(declare-fun lt!2722327 () List!75261)

(declare-fun c!6885 () C!43894)

(declare-fun contains!20998 (List!75261 C!43894) Bool)

(assert (=> b!8041761 (= res!3178869 (contains!20998 lt!2722327 c!6885))))

(declare-fun usedCharacters!1285 (Regex!21778) List!75261)

(assert (=> b!8041761 (= lt!2722327 (usedCharacters!1285 (regex!8707 rSep!153)))))

(declare-fun b!8041762 () Bool)

(declare-fun tp!2409398 () Bool)

(assert (=> b!8041762 (= e!4737011 (and e!4737017 tp!2409398))))

(declare-fun b!8041763 () Bool)

(declare-fun res!3178872 () Bool)

(assert (=> b!8041763 (=> (not res!3178872) (not e!4737016))))

(assert (=> b!8041763 (= res!3178872 (and (not (isSeparator!8707 rNSep!153)) (isSeparator!8707 rSep!153)))))

(declare-fun forall!18461 (List!75261 Int) Bool)

(assert (=> b!8041764 (= e!4737016 (not (forall!18461 lt!2722327 lambda!472638)))))

(assert (=> b!8041765 (= e!4737014 (and tp!2409401 tp!2409399))))

(declare-fun b!8041766 () Bool)

(declare-fun res!3178868 () Bool)

(assert (=> b!8041766 (=> (not res!3178868) (not e!4737016))))

(assert (=> b!8041766 (= res!3178868 (and (is-Cons!75137 rules!4166) (= (h!81585 rules!4166) rSep!153)))))

(assert (=> b!8041767 (= e!4737010 (and tp!2409394 tp!2409397))))

(assert (= (and start!757122 res!3178867) b!8041758))

(assert (= (and b!8041758 res!3178871) b!8041760))

(assert (= (and b!8041760 res!3178870) b!8041761))

(assert (= (and b!8041761 res!3178869) b!8041763))

(assert (= (and b!8041763 res!3178872) b!8041755))

(assert (= (and b!8041755 res!3178873) b!8041766))

(assert (= (and b!8041766 res!3178868) b!8041764))

(assert (= b!8041757 b!8041765))

(assert (= b!8041762 b!8041757))

(assert (= (and start!757122 (is-Cons!75137 rules!4166)) b!8041762))

(assert (= b!8041754 b!8041767))

(assert (= start!757122 b!8041754))

(assert (= b!8041756 b!8041759))

(assert (= start!757122 b!8041756))

(declare-fun m!8395814 () Bool)

(assert (=> b!8041757 m!8395814))

(declare-fun m!8395816 () Bool)

(assert (=> b!8041757 m!8395816))

(declare-fun m!8395818 () Bool)

(assert (=> b!8041758 m!8395818))

(declare-fun m!8395820 () Bool)

(assert (=> b!8041761 m!8395820))

(declare-fun m!8395822 () Bool)

(assert (=> b!8041761 m!8395822))

(declare-fun m!8395824 () Bool)

(assert (=> b!8041760 m!8395824))

(declare-fun m!8395826 () Bool)

(assert (=> b!8041764 m!8395826))

(declare-fun m!8395828 () Bool)

(assert (=> b!8041755 m!8395828))

(declare-fun m!8395830 () Bool)

(assert (=> b!8041756 m!8395830))

(declare-fun m!8395832 () Bool)

(assert (=> b!8041756 m!8395832))

(declare-fun m!8395834 () Bool)

(assert (=> b!8041754 m!8395834))

(declare-fun m!8395836 () Bool)

(assert (=> b!8041754 m!8395836))

(push 1)

(assert (not b!8041754))

(assert (not b!8041760))

(assert (not b!8041764))

(assert (not b!8041756))

(assert (not b!8041758))

(assert (not b!8041757))

(assert b_and!354219)

(assert (not b!8041755))

(assert b_and!354223)

(assert (not b_next!136577))

(assert (not b_next!136569))

(assert b_and!354225)

(assert (not b_next!136579))

(assert b_and!354215)

(assert (not b_next!136573))

(assert (not b_next!136575))

(assert (not b_next!136571))

(assert tp_is_empty!54551)

(assert b_and!354217)

(assert (not b!8041762))

(assert (not b!8041761))

(assert b_and!354221)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!136571))

(assert b_and!354217)

(assert b_and!354219)

(assert b_and!354221)

(assert b_and!354223)

(assert (not b_next!136577))

(assert (not b_next!136569))

(assert b_and!354225)

(assert (not b_next!136579))

(assert b_and!354215)

(assert (not b_next!136573))

(assert (not b_next!136575))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2395742 () Bool)

(assert (=> d!2395742 (= (inv!96935 (tag!9571 rNSep!153)) (= (mod (str.len (value!291210 (tag!9571 rNSep!153))) 2) 0))))

(assert (=> b!8041754 d!2395742))

(declare-fun d!2395744 () Bool)

(declare-fun res!3178904 () Bool)

(declare-fun e!4737072 () Bool)

(assert (=> d!2395744 (=> (not res!3178904) (not e!4737072))))

(declare-fun semiInverseModEq!3866 (Int Int) Bool)

(assert (=> d!2395744 (= res!3178904 (semiInverseModEq!3866 (toChars!11637 (transformation!8707 rNSep!153)) (toValue!11778 (transformation!8707 rNSep!153))))))

(assert (=> d!2395744 (= (inv!96938 (transformation!8707 rNSep!153)) e!4737072)))

(declare-fun b!8041828 () Bool)

(declare-fun equivClasses!3681 (Int Int) Bool)

(assert (=> b!8041828 (= e!4737072 (equivClasses!3681 (toChars!11637 (transformation!8707 rNSep!153)) (toValue!11778 (transformation!8707 rNSep!153))))))

(assert (= (and d!2395744 res!3178904) b!8041828))

(declare-fun m!8395862 () Bool)

(assert (=> d!2395744 m!8395862))

(declare-fun m!8395864 () Bool)

(assert (=> b!8041828 m!8395864))

(assert (=> b!8041754 d!2395744))

(declare-fun d!2395746 () Bool)

(declare-fun res!3178909 () Bool)

(declare-fun e!4737077 () Bool)

(assert (=> d!2395746 (=> res!3178909 e!4737077)))

(assert (=> d!2395746 (= res!3178909 (is-Nil!75135 lt!2722327))))

(assert (=> d!2395746 (= (forall!18461 lt!2722327 lambda!472638) e!4737077)))

(declare-fun b!8041833 () Bool)

(declare-fun e!4737078 () Bool)

(assert (=> b!8041833 (= e!4737077 e!4737078)))

(declare-fun res!3178910 () Bool)

(assert (=> b!8041833 (=> (not res!3178910) (not e!4737078))))

(declare-fun dynLambda!30230 (Int C!43894) Bool)

(assert (=> b!8041833 (= res!3178910 (dynLambda!30230 lambda!472638 (h!81583 lt!2722327)))))

(declare-fun b!8041834 () Bool)

(assert (=> b!8041834 (= e!4737078 (forall!18461 (t!391031 lt!2722327) lambda!472638))))

(assert (= (and d!2395746 (not res!3178909)) b!8041833))

(assert (= (and b!8041833 res!3178910) b!8041834))

(declare-fun b_lambda!290287 () Bool)

(assert (=> (not b_lambda!290287) (not b!8041833)))

(declare-fun m!8395866 () Bool)

(assert (=> b!8041833 m!8395866))

(declare-fun m!8395868 () Bool)

(assert (=> b!8041834 m!8395868))

(assert (=> b!8041764 d!2395746))

(declare-fun d!2395748 () Bool)

(declare-fun lt!2722333 () Bool)

(declare-fun content!16044 (List!75261) (Set C!43894))

(assert (=> d!2395748 (= lt!2722333 (set.member c!6885 (content!16044 lt!2722327)))))

(declare-fun e!4737084 () Bool)

(assert (=> d!2395748 (= lt!2722333 e!4737084)))

(declare-fun res!3178915 () Bool)

(assert (=> d!2395748 (=> (not res!3178915) (not e!4737084))))

(assert (=> d!2395748 (= res!3178915 (is-Cons!75135 lt!2722327))))

(assert (=> d!2395748 (= (contains!20998 lt!2722327 c!6885) lt!2722333)))

(declare-fun b!8041839 () Bool)

(declare-fun e!4737083 () Bool)

(assert (=> b!8041839 (= e!4737084 e!4737083)))

(declare-fun res!3178916 () Bool)

(assert (=> b!8041839 (=> res!3178916 e!4737083)))

(assert (=> b!8041839 (= res!3178916 (= (h!81583 lt!2722327) c!6885))))

(declare-fun b!8041840 () Bool)

(assert (=> b!8041840 (= e!4737083 (contains!20998 (t!391031 lt!2722327) c!6885))))

(assert (= (and d!2395748 res!3178915) b!8041839))

(assert (= (and b!8041839 (not res!3178916)) b!8041840))

(declare-fun m!8395870 () Bool)

(assert (=> d!2395748 m!8395870))

(declare-fun m!8395872 () Bool)

(assert (=> d!2395748 m!8395872))

(declare-fun m!8395874 () Bool)

(assert (=> b!8041840 m!8395874))

(assert (=> b!8041761 d!2395748))

(declare-fun b!8041866 () Bool)

(declare-fun e!4737102 () List!75261)

(assert (=> b!8041866 (= e!4737102 (Cons!75135 (c!1475031 (regex!8707 rSep!153)) Nil!75135))))

(declare-fun c!1475046 () Bool)

(declare-fun c!1475043 () Bool)

(declare-fun bm!746456 () Bool)

(declare-fun call!746461 () List!75261)

(assert (=> bm!746456 (= call!746461 (usedCharacters!1285 (ite c!1475046 (reg!22107 (regex!8707 rSep!153)) (ite c!1475043 (regTwo!44069 (regex!8707 rSep!153)) (regOne!44068 (regex!8707 rSep!153))))))))

(declare-fun b!8041867 () Bool)

(assert (=> b!8041867 (= c!1475046 (is-Star!21778 (regex!8707 rSep!153)))))

(declare-fun e!4737104 () List!75261)

(assert (=> b!8041867 (= e!4737102 e!4737104)))

(declare-fun b!8041868 () Bool)

(declare-fun e!4737105 () List!75261)

(declare-fun call!746464 () List!75261)

(assert (=> b!8041868 (= e!4737105 call!746464)))

(declare-fun b!8041869 () Bool)

(declare-fun e!4737103 () List!75261)

(assert (=> b!8041869 (= e!4737103 e!4737102)))

(declare-fun c!1475044 () Bool)

(assert (=> b!8041869 (= c!1475044 (is-ElementMatch!21778 (regex!8707 rSep!153)))))

(declare-fun bm!746457 () Bool)

(declare-fun call!746463 () List!75261)

(assert (=> bm!746457 (= call!746463 call!746461)))

(declare-fun b!8041870 () Bool)

(assert (=> b!8041870 (= e!4737104 e!4737105)))

(assert (=> b!8041870 (= c!1475043 (is-Union!21778 (regex!8707 rSep!153)))))

(declare-fun bm!746458 () Bool)

(declare-fun call!746462 () List!75261)

(declare-fun ++!18627 (List!75261 List!75261) List!75261)

(assert (=> bm!746458 (= call!746464 (++!18627 (ite c!1475043 call!746462 call!746463) (ite c!1475043 call!746463 call!746462)))))

(declare-fun bm!746459 () Bool)

(assert (=> bm!746459 (= call!746462 (usedCharacters!1285 (ite c!1475043 (regOne!44069 (regex!8707 rSep!153)) (regTwo!44068 (regex!8707 rSep!153)))))))

(declare-fun b!8041872 () Bool)

(assert (=> b!8041872 (= e!4737105 call!746464)))

(declare-fun b!8041873 () Bool)

(assert (=> b!8041873 (= e!4737104 call!746461)))

(declare-fun d!2395752 () Bool)

(declare-fun c!1475045 () Bool)

(assert (=> d!2395752 (= c!1475045 (or (is-EmptyExpr!21778 (regex!8707 rSep!153)) (is-EmptyLang!21778 (regex!8707 rSep!153))))))

(assert (=> d!2395752 (= (usedCharacters!1285 (regex!8707 rSep!153)) e!4737103)))

(declare-fun b!8041871 () Bool)

(assert (=> b!8041871 (= e!4737103 Nil!75135)))

(assert (= (and d!2395752 c!1475045) b!8041871))

(assert (= (and d!2395752 (not c!1475045)) b!8041869))

(assert (= (and b!8041869 c!1475044) b!8041866))

(assert (= (and b!8041869 (not c!1475044)) b!8041867))

(assert (= (and b!8041867 c!1475046) b!8041873))

(assert (= (and b!8041867 (not c!1475046)) b!8041870))

(assert (= (and b!8041870 c!1475043) b!8041872))

(assert (= (and b!8041870 (not c!1475043)) b!8041868))

(assert (= (or b!8041872 b!8041868) bm!746459))

(assert (= (or b!8041872 b!8041868) bm!746457))

(assert (= (or b!8041872 b!8041868) bm!746458))

(assert (= (or b!8041873 bm!746457) bm!746456))

(declare-fun m!8395890 () Bool)

(assert (=> bm!746456 m!8395890))

(declare-fun m!8395892 () Bool)

(assert (=> bm!746458 m!8395892))

(declare-fun m!8395894 () Bool)

(assert (=> bm!746459 m!8395894))

(assert (=> b!8041761 d!2395752))

(declare-fun d!2395764 () Bool)

(declare-fun c!1475049 () Bool)

(assert (=> d!2395764 (= c!1475049 (and (is-Cons!75137 rules!4166) (not (= (isSeparator!8707 (h!81585 rules!4166)) (isSeparator!8707 rNSep!153)))))))

(declare-fun e!4737122 () Bool)

(assert (=> d!2395764 (= (ruleDisjointCharsFromAllFromOtherType!981 rNSep!153 rules!4166) e!4737122)))

(declare-fun b!8041891 () Bool)

(declare-fun e!4737121 () Bool)

(declare-fun call!746467 () Bool)

(assert (=> b!8041891 (= e!4737121 call!746467)))

(declare-fun b!8041892 () Bool)

(assert (=> b!8041892 (= e!4737122 e!4737121)))

(declare-fun res!3178939 () Bool)

(declare-fun rulesUseDisjointChars!390 (Rule!17214 Rule!17214) Bool)

(assert (=> b!8041892 (= res!3178939 (rulesUseDisjointChars!390 rNSep!153 (h!81585 rules!4166)))))

(assert (=> b!8041892 (=> (not res!3178939) (not e!4737121))))

(declare-fun bm!746462 () Bool)

(assert (=> bm!746462 (= call!746467 (ruleDisjointCharsFromAllFromOtherType!981 rNSep!153 (t!391033 rules!4166)))))

(declare-fun b!8041893 () Bool)

(declare-fun e!4737123 () Bool)

(assert (=> b!8041893 (= e!4737123 call!746467)))

(declare-fun b!8041894 () Bool)

(assert (=> b!8041894 (= e!4737122 e!4737123)))

(declare-fun res!3178940 () Bool)

(assert (=> b!8041894 (= res!3178940 (not (is-Cons!75137 rules!4166)))))

(assert (=> b!8041894 (=> res!3178940 e!4737123)))

(assert (= (and d!2395764 c!1475049) b!8041892))

(assert (= (and d!2395764 (not c!1475049)) b!8041894))

(assert (= (and b!8041892 res!3178939) b!8041891))

(assert (= (and b!8041894 (not res!3178940)) b!8041893))

(assert (= (or b!8041891 b!8041893) bm!746462))

(declare-fun m!8395904 () Bool)

(assert (=> b!8041892 m!8395904))

(declare-fun m!8395906 () Bool)

(assert (=> bm!746462 m!8395906))

(assert (=> b!8041755 d!2395764))

(declare-fun d!2395772 () Bool)

(declare-fun lt!2722342 () Bool)

(declare-fun content!16046 (List!75263) (Set Rule!17214))

(assert (=> d!2395772 (= lt!2722342 (set.member rSep!153 (content!16046 rules!4166)))))

(declare-fun e!4737139 () Bool)

(assert (=> d!2395772 (= lt!2722342 e!4737139)))

(declare-fun res!3178947 () Bool)

(assert (=> d!2395772 (=> (not res!3178947) (not e!4737139))))

(assert (=> d!2395772 (= res!3178947 (is-Cons!75137 rules!4166))))

(assert (=> d!2395772 (= (contains!20997 rules!4166 rSep!153) lt!2722342)))

(declare-fun b!8041917 () Bool)

(declare-fun e!4737138 () Bool)

(assert (=> b!8041917 (= e!4737139 e!4737138)))

(declare-fun res!3178948 () Bool)

(assert (=> b!8041917 (=> res!3178948 e!4737138)))

(assert (=> b!8041917 (= res!3178948 (= (h!81585 rules!4166) rSep!153))))

(declare-fun b!8041918 () Bool)

(assert (=> b!8041918 (= e!4737138 (contains!20997 (t!391033 rules!4166) rSep!153))))

(assert (= (and d!2395772 res!3178947) b!8041917))

(assert (= (and b!8041917 (not res!3178948)) b!8041918))

(declare-fun m!8395914 () Bool)

(assert (=> d!2395772 m!8395914))

(declare-fun m!8395916 () Bool)

(assert (=> d!2395772 m!8395916))

(declare-fun m!8395918 () Bool)

(assert (=> b!8041918 m!8395918))

(assert (=> b!8041760 d!2395772))

(declare-fun d!2395776 () Bool)

(assert (=> d!2395776 (= (inv!96935 (tag!9571 (h!81585 rules!4166))) (= (mod (str.len (value!291210 (tag!9571 (h!81585 rules!4166)))) 2) 0))))

(assert (=> b!8041757 d!2395776))

(declare-fun d!2395778 () Bool)

(declare-fun res!3178949 () Bool)

(declare-fun e!4737140 () Bool)

(assert (=> d!2395778 (=> (not res!3178949) (not e!4737140))))

(assert (=> d!2395778 (= res!3178949 (semiInverseModEq!3866 (toChars!11637 (transformation!8707 (h!81585 rules!4166))) (toValue!11778 (transformation!8707 (h!81585 rules!4166)))))))

(assert (=> d!2395778 (= (inv!96938 (transformation!8707 (h!81585 rules!4166))) e!4737140)))

(declare-fun b!8041919 () Bool)

(assert (=> b!8041919 (= e!4737140 (equivClasses!3681 (toChars!11637 (transformation!8707 (h!81585 rules!4166))) (toValue!11778 (transformation!8707 (h!81585 rules!4166)))))))

(assert (= (and d!2395778 res!3178949) b!8041919))

(declare-fun m!8395920 () Bool)

(assert (=> d!2395778 m!8395920))

(declare-fun m!8395922 () Bool)

(assert (=> b!8041919 m!8395922))

(assert (=> b!8041757 d!2395778))

(declare-fun d!2395780 () Bool)

(assert (=> d!2395780 (= (inv!96935 (tag!9571 rSep!153)) (= (mod (str.len (value!291210 (tag!9571 rSep!153))) 2) 0))))

(assert (=> b!8041756 d!2395780))

(declare-fun d!2395782 () Bool)

(declare-fun res!3178950 () Bool)

(declare-fun e!4737141 () Bool)

(assert (=> d!2395782 (=> (not res!3178950) (not e!4737141))))

(assert (=> d!2395782 (= res!3178950 (semiInverseModEq!3866 (toChars!11637 (transformation!8707 rSep!153)) (toValue!11778 (transformation!8707 rSep!153))))))

(assert (=> d!2395782 (= (inv!96938 (transformation!8707 rSep!153)) e!4737141)))

(declare-fun b!8041920 () Bool)

(assert (=> b!8041920 (= e!4737141 (equivClasses!3681 (toChars!11637 (transformation!8707 rSep!153)) (toValue!11778 (transformation!8707 rSep!153))))))

(assert (= (and d!2395782 res!3178950) b!8041920))

(declare-fun m!8395924 () Bool)

(assert (=> d!2395782 m!8395924))

(declare-fun m!8395926 () Bool)

(assert (=> b!8041920 m!8395926))

(assert (=> b!8041756 d!2395782))

(declare-fun d!2395784 () Bool)

(declare-fun res!3178953 () Bool)

(declare-fun e!4737144 () Bool)

(assert (=> d!2395784 (=> (not res!3178953) (not e!4737144))))

(declare-fun rulesValid!3142 (LexerInterface!8297 List!75263) Bool)

(assert (=> d!2395784 (= res!3178953 (rulesValid!3142 thiss!27104 rules!4166))))

(assert (=> d!2395784 (= (rulesInvariant!6765 thiss!27104 rules!4166) e!4737144)))

(declare-fun b!8041923 () Bool)

(declare-datatypes ((List!75268 0))(
  ( (Nil!75142) (Cons!75142 (h!81590 String!84910) (t!391038 List!75268)) )
))
(declare-fun noDuplicateTag!3303 (LexerInterface!8297 List!75263 List!75268) Bool)

(assert (=> b!8041923 (= e!4737144 (noDuplicateTag!3303 thiss!27104 rules!4166 Nil!75142))))

(assert (= (and d!2395784 res!3178953) b!8041923))

(declare-fun m!8395928 () Bool)

(assert (=> d!2395784 m!8395928))

(declare-fun m!8395930 () Bool)

(assert (=> b!8041923 m!8395930))

(assert (=> b!8041758 d!2395784))

(declare-fun b!8041942 () Bool)

(declare-fun e!4737151 () Bool)

(assert (=> b!8041942 (= e!4737151 tp_is_empty!54551)))

(declare-fun b!8041944 () Bool)

(declare-fun tp!2409448 () Bool)

(assert (=> b!8041944 (= e!4737151 tp!2409448)))

(declare-fun b!8041945 () Bool)

(declare-fun tp!2409444 () Bool)

(declare-fun tp!2409447 () Bool)

(assert (=> b!8041945 (= e!4737151 (and tp!2409444 tp!2409447))))

(declare-fun b!8041943 () Bool)

(declare-fun tp!2409446 () Bool)

(declare-fun tp!2409445 () Bool)

(assert (=> b!8041943 (= e!4737151 (and tp!2409446 tp!2409445))))

(assert (=> b!8041754 (= tp!2409402 e!4737151)))

(assert (= (and b!8041754 (is-ElementMatch!21778 (regex!8707 rNSep!153))) b!8041942))

(assert (= (and b!8041754 (is-Concat!30805 (regex!8707 rNSep!153))) b!8041943))

(assert (= (and b!8041754 (is-Star!21778 (regex!8707 rNSep!153))) b!8041944))

(assert (= (and b!8041754 (is-Union!21778 (regex!8707 rNSep!153))) b!8041945))

(declare-fun b!8041946 () Bool)

(declare-fun e!4737152 () Bool)

(assert (=> b!8041946 (= e!4737152 tp_is_empty!54551)))

(declare-fun b!8041948 () Bool)

(declare-fun tp!2409453 () Bool)

(assert (=> b!8041948 (= e!4737152 tp!2409453)))

(declare-fun b!8041949 () Bool)

(declare-fun tp!2409449 () Bool)

(declare-fun tp!2409452 () Bool)

(assert (=> b!8041949 (= e!4737152 (and tp!2409449 tp!2409452))))

(declare-fun b!8041947 () Bool)

(declare-fun tp!2409451 () Bool)

(declare-fun tp!2409450 () Bool)

(assert (=> b!8041947 (= e!4737152 (and tp!2409451 tp!2409450))))

(assert (=> b!8041757 (= tp!2409403 e!4737152)))

(assert (= (and b!8041757 (is-ElementMatch!21778 (regex!8707 (h!81585 rules!4166)))) b!8041946))

(assert (= (and b!8041757 (is-Concat!30805 (regex!8707 (h!81585 rules!4166)))) b!8041947))

(assert (= (and b!8041757 (is-Star!21778 (regex!8707 (h!81585 rules!4166)))) b!8041948))

(assert (= (and b!8041757 (is-Union!21778 (regex!8707 (h!81585 rules!4166)))) b!8041949))

(declare-fun b!8041960 () Bool)

(declare-fun b_free!135803 () Bool)

(declare-fun b_next!136593 () Bool)

(assert (=> b!8041960 (= b_free!135803 (not b_next!136593))))

(declare-fun tp!2409462 () Bool)

(declare-fun b_and!354239 () Bool)

(assert (=> b!8041960 (= tp!2409462 b_and!354239)))

(declare-fun b_free!135805 () Bool)

(declare-fun b_next!136595 () Bool)

(assert (=> b!8041960 (= b_free!135805 (not b_next!136595))))

(declare-fun tp!2409464 () Bool)

(declare-fun b_and!354241 () Bool)

(assert (=> b!8041960 (= tp!2409464 b_and!354241)))

(declare-fun e!4737162 () Bool)

(assert (=> b!8041960 (= e!4737162 (and tp!2409462 tp!2409464))))

(declare-fun b!8041959 () Bool)

(declare-fun tp!2409465 () Bool)

(declare-fun e!4737161 () Bool)

(assert (=> b!8041959 (= e!4737161 (and tp!2409465 (inv!96935 (tag!9571 (h!81585 (t!391033 rules!4166)))) (inv!96938 (transformation!8707 (h!81585 (t!391033 rules!4166)))) e!4737162))))

(declare-fun b!8041958 () Bool)

(declare-fun e!4737164 () Bool)

(declare-fun tp!2409463 () Bool)

(assert (=> b!8041958 (= e!4737164 (and e!4737161 tp!2409463))))

(assert (=> b!8041762 (= tp!2409398 e!4737164)))

(assert (= b!8041959 b!8041960))

(assert (= b!8041958 b!8041959))

(assert (= (and b!8041762 (is-Cons!75137 (t!391033 rules!4166))) b!8041958))

(declare-fun m!8395938 () Bool)

(assert (=> b!8041959 m!8395938))

(declare-fun m!8395940 () Bool)

(assert (=> b!8041959 m!8395940))

(declare-fun b!8041964 () Bool)

(declare-fun e!4737165 () Bool)

(assert (=> b!8041964 (= e!4737165 tp_is_empty!54551)))

(declare-fun b!8041967 () Bool)

(declare-fun tp!2409470 () Bool)

(assert (=> b!8041967 (= e!4737165 tp!2409470)))

(declare-fun b!8041968 () Bool)

(declare-fun tp!2409466 () Bool)

(declare-fun tp!2409469 () Bool)

(assert (=> b!8041968 (= e!4737165 (and tp!2409466 tp!2409469))))

(declare-fun b!8041966 () Bool)

(declare-fun tp!2409468 () Bool)

(declare-fun tp!2409467 () Bool)

(assert (=> b!8041966 (= e!4737165 (and tp!2409468 tp!2409467))))

(assert (=> b!8041756 (= tp!2409400 e!4737165)))

(assert (= (and b!8041756 (is-ElementMatch!21778 (regex!8707 rSep!153))) b!8041964))

(assert (= (and b!8041756 (is-Concat!30805 (regex!8707 rSep!153))) b!8041966))

(assert (= (and b!8041756 (is-Star!21778 (regex!8707 rSep!153))) b!8041967))

(assert (= (and b!8041756 (is-Union!21778 (regex!8707 rSep!153))) b!8041968))

(declare-fun b_lambda!290289 () Bool)

(assert (= b_lambda!290287 (or b!8041764 b_lambda!290289)))

(declare-fun bs!1971571 () Bool)

(declare-fun d!2395788 () Bool)

(assert (= bs!1971571 (and d!2395788 b!8041764)))

(assert (=> bs!1971571 (= (dynLambda!30230 lambda!472638 (h!81583 lt!2722327)) (not (contains!20998 (usedCharacters!1285 (regex!8707 rNSep!153)) (h!81583 lt!2722327))))))

(declare-fun m!8395942 () Bool)

(assert (=> bs!1971571 m!8395942))

(assert (=> bs!1971571 m!8395942))

(declare-fun m!8395944 () Bool)

(assert (=> bs!1971571 m!8395944))

(assert (=> b!8041833 d!2395788))

(push 1)

(assert (not b!8041958))

(assert (not b!8041959))

(assert (not b!8041947))

(assert (not b_next!136577))

(assert (not b_next!136569))

(assert (not b!8041918))

(assert (not bm!746462))

(assert (not b_next!136575))

(assert (not d!2395784))

(assert (not bm!746459))

(assert (not b_next!136571))

(assert tp_is_empty!54551)

(assert (not b!8041967))

(assert (not b!8041828))

(assert (not b!8041968))

(assert (not b!8041834))

(assert (not d!2395748))

(assert (not bm!746456))

(assert (not d!2395744))

(assert (not b!8041949))

(assert (not b!8041920))

(assert b_and!354217)

(assert (not b!8041840))

(assert b_and!354239)

(assert (not b!8041892))

(assert (not b!8041943))

(assert b_and!354219)

(assert (not b!8041945))

(assert b_and!354241)

(assert (not d!2395778))

(assert (not d!2395772))

(assert (not b!8041923))

(assert b_and!354221)

(assert (not b!8041966))

(assert b_and!354223)

(assert b_and!354225)

(assert (not d!2395782))

(assert (not bm!746458))

(assert (not b_next!136593))

(assert (not b_next!136579))

(assert (not b!8041944))

(assert b_and!354215)

(assert (not b!8041948))

(assert (not bs!1971571))

(assert (not b_next!136573))

(assert (not b_lambda!290289))

(assert (not b!8041919))

(assert (not b_next!136595))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!136571))

(assert b_and!354219)

(assert b_and!354223)

(assert (not b_next!136577))

(assert (not b_next!136569))

(assert b_and!354225)

(assert b_and!354215)

(assert (not b_next!136573))

(assert (not b_next!136575))

(assert (not b_next!136595))

(assert b_and!354217)

(assert b_and!354239)

(assert b_and!354241)

(assert b_and!354221)

(assert (not b_next!136593))

(assert (not b_next!136579))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2395794 () Bool)

(declare-fun c!1475067 () Bool)

(assert (=> d!2395794 (= c!1475067 (is-Nil!75137 rules!4166))))

(declare-fun e!4737200 () (Set Rule!17214))

(assert (=> d!2395794 (= (content!16046 rules!4166) e!4737200)))

(declare-fun b!8042020 () Bool)

(assert (=> b!8042020 (= e!4737200 (as set.empty (Set Rule!17214)))))

(declare-fun b!8042021 () Bool)

(assert (=> b!8042021 (= e!4737200 (set.union (set.insert (h!81585 rules!4166) (as set.empty (Set Rule!17214))) (content!16046 (t!391033 rules!4166))))))

(assert (= (and d!2395794 c!1475067) b!8042020))

(assert (= (and d!2395794 (not c!1475067)) b!8042021))

(declare-fun m!8395962 () Bool)

(assert (=> b!8042021 m!8395962))

(declare-fun m!8395964 () Bool)

(assert (=> b!8042021 m!8395964))

(assert (=> d!2395772 d!2395794))

(declare-fun d!2395796 () Bool)

(assert (=> d!2395796 true))

(declare-fun order!30011 () Int)

(declare-fun lambda!472644 () Int)

(declare-fun dynLambda!30232 (Int Int) Int)

(assert (=> d!2395796 (< (dynLambda!30224 order!29999 (toValue!11778 (transformation!8707 rNSep!153))) (dynLambda!30232 order!30011 lambda!472644))))

(declare-fun Forall2!1323 (Int) Bool)

(assert (=> d!2395796 (= (equivClasses!3681 (toChars!11637 (transformation!8707 rNSep!153)) (toValue!11778 (transformation!8707 rNSep!153))) (Forall2!1323 lambda!472644))))

(declare-fun bs!1971573 () Bool)

(assert (= bs!1971573 d!2395796))

(declare-fun m!8395966 () Bool)

(assert (=> bs!1971573 m!8395966))

(assert (=> b!8041828 d!2395796))

(declare-fun bs!1971574 () Bool)

(declare-fun d!2395798 () Bool)

(assert (= bs!1971574 (and d!2395798 b!8041764)))

(declare-fun lambda!472649 () Int)

(assert (=> bs!1971574 (= lambda!472649 lambda!472638)))

(declare-fun b!8042030 () Bool)

(declare-fun e!4737207 () Bool)

(assert (=> b!8042030 (= e!4737207 true)))

(declare-fun b!8042029 () Bool)

(declare-fun e!4737206 () Bool)

(assert (=> b!8042029 (= e!4737206 e!4737207)))

(assert (=> d!2395798 e!4737206))

(assert (= b!8042029 b!8042030))

(assert (= d!2395798 b!8042029))

(assert (=> b!8042030 (< (dynLambda!30224 order!29999 (toValue!11778 (transformation!8707 rNSep!153))) (dynLambda!30225 order!30001 lambda!472649))))

(assert (=> b!8042030 (< (dynLambda!30226 order!30003 (toChars!11637 (transformation!8707 rNSep!153))) (dynLambda!30225 order!30001 lambda!472649))))

(declare-fun bs!1971575 () Bool)

(declare-fun b!8042028 () Bool)

(assert (= bs!1971575 (and b!8042028 b!8041764)))

(declare-fun lambda!472650 () Int)

(assert (=> bs!1971575 (= (= (regex!8707 (h!81585 rules!4166)) (regex!8707 rNSep!153)) (= lambda!472650 lambda!472638))))

(declare-fun bs!1971576 () Bool)

(assert (= bs!1971576 (and b!8042028 d!2395798)))

(assert (=> bs!1971576 (= (= (regex!8707 (h!81585 rules!4166)) (regex!8707 rNSep!153)) (= lambda!472650 lambda!472649))))

(declare-fun b!8042032 () Bool)

(declare-fun e!4737209 () Bool)

(assert (=> b!8042032 (= e!4737209 true)))

(declare-fun b!8042031 () Bool)

(declare-fun e!4737208 () Bool)

(assert (=> b!8042031 (= e!4737208 e!4737209)))

(assert (=> b!8042028 e!4737208))

(assert (= b!8042031 b!8042032))

(assert (= b!8042028 b!8042031))

(assert (=> b!8042032 (< (dynLambda!30224 order!29999 (toValue!11778 (transformation!8707 (h!81585 rules!4166)))) (dynLambda!30225 order!30001 lambda!472650))))

(assert (=> b!8042032 (< (dynLambda!30226 order!30003 (toChars!11637 (transformation!8707 (h!81585 rules!4166)))) (dynLambda!30225 order!30001 lambda!472650))))

(declare-fun res!3178972 () Bool)

(declare-fun e!4737205 () Bool)

(assert (=> d!2395798 (=> (not res!3178972) (not e!4737205))))

(assert (=> d!2395798 (= res!3178972 (forall!18461 (usedCharacters!1285 (regex!8707 (h!81585 rules!4166))) lambda!472649))))

(assert (=> d!2395798 (= (rulesUseDisjointChars!390 rNSep!153 (h!81585 rules!4166)) e!4737205)))

(assert (=> b!8042028 (= e!4737205 (forall!18461 (usedCharacters!1285 (regex!8707 rNSep!153)) lambda!472650))))

(assert (= (and d!2395798 res!3178972) b!8042028))

(declare-fun m!8395968 () Bool)

(assert (=> d!2395798 m!8395968))

(assert (=> d!2395798 m!8395968))

(declare-fun m!8395970 () Bool)

(assert (=> d!2395798 m!8395970))

(assert (=> b!8042028 m!8395942))

(assert (=> b!8042028 m!8395942))

(declare-fun m!8395972 () Bool)

(assert (=> b!8042028 m!8395972))

(assert (=> b!8041892 d!2395798))

(declare-fun d!2395800 () Bool)

(declare-fun lt!2722343 () Bool)

(assert (=> d!2395800 (= lt!2722343 (set.member (h!81583 lt!2722327) (content!16044 (usedCharacters!1285 (regex!8707 rNSep!153)))))))

(declare-fun e!4737211 () Bool)

(assert (=> d!2395800 (= lt!2722343 e!4737211)))

(declare-fun res!3178973 () Bool)

(assert (=> d!2395800 (=> (not res!3178973) (not e!4737211))))

(assert (=> d!2395800 (= res!3178973 (is-Cons!75135 (usedCharacters!1285 (regex!8707 rNSep!153))))))

(assert (=> d!2395800 (= (contains!20998 (usedCharacters!1285 (regex!8707 rNSep!153)) (h!81583 lt!2722327)) lt!2722343)))

(declare-fun b!8042033 () Bool)

(declare-fun e!4737210 () Bool)

(assert (=> b!8042033 (= e!4737211 e!4737210)))

(declare-fun res!3178974 () Bool)

(assert (=> b!8042033 (=> res!3178974 e!4737210)))

(assert (=> b!8042033 (= res!3178974 (= (h!81583 (usedCharacters!1285 (regex!8707 rNSep!153))) (h!81583 lt!2722327)))))

(declare-fun b!8042034 () Bool)

(assert (=> b!8042034 (= e!4737210 (contains!20998 (t!391031 (usedCharacters!1285 (regex!8707 rNSep!153))) (h!81583 lt!2722327)))))

(assert (= (and d!2395800 res!3178973) b!8042033))

(assert (= (and b!8042033 (not res!3178974)) b!8042034))

(assert (=> d!2395800 m!8395942))

(declare-fun m!8395974 () Bool)

(assert (=> d!2395800 m!8395974))

(declare-fun m!8395976 () Bool)

(assert (=> d!2395800 m!8395976))

(declare-fun m!8395978 () Bool)

(assert (=> b!8042034 m!8395978))

(assert (=> bs!1971571 d!2395800))

(declare-fun b!8042035 () Bool)

(declare-fun e!4737212 () List!75261)

(assert (=> b!8042035 (= e!4737212 (Cons!75135 (c!1475031 (regex!8707 rNSep!153)) Nil!75135))))

(declare-fun call!746483 () List!75261)

(declare-fun c!1475075 () Bool)

(declare-fun bm!746478 () Bool)

(declare-fun c!1475072 () Bool)

(assert (=> bm!746478 (= call!746483 (usedCharacters!1285 (ite c!1475075 (reg!22107 (regex!8707 rNSep!153)) (ite c!1475072 (regTwo!44069 (regex!8707 rNSep!153)) (regOne!44068 (regex!8707 rNSep!153))))))))

(declare-fun b!8042036 () Bool)

(assert (=> b!8042036 (= c!1475075 (is-Star!21778 (regex!8707 rNSep!153)))))

(declare-fun e!4737214 () List!75261)

(assert (=> b!8042036 (= e!4737212 e!4737214)))

(declare-fun b!8042037 () Bool)

(declare-fun e!4737215 () List!75261)

(declare-fun call!746486 () List!75261)

(assert (=> b!8042037 (= e!4737215 call!746486)))

(declare-fun b!8042038 () Bool)

(declare-fun e!4737213 () List!75261)

(assert (=> b!8042038 (= e!4737213 e!4737212)))

(declare-fun c!1475073 () Bool)

(assert (=> b!8042038 (= c!1475073 (is-ElementMatch!21778 (regex!8707 rNSep!153)))))

(declare-fun bm!746479 () Bool)

(declare-fun call!746485 () List!75261)

(assert (=> bm!746479 (= call!746485 call!746483)))

(declare-fun b!8042039 () Bool)

(assert (=> b!8042039 (= e!4737214 e!4737215)))

(assert (=> b!8042039 (= c!1475072 (is-Union!21778 (regex!8707 rNSep!153)))))

(declare-fun bm!746480 () Bool)

(declare-fun call!746484 () List!75261)

(assert (=> bm!746480 (= call!746486 (++!18627 (ite c!1475072 call!746484 call!746485) (ite c!1475072 call!746485 call!746484)))))

(declare-fun bm!746481 () Bool)

(assert (=> bm!746481 (= call!746484 (usedCharacters!1285 (ite c!1475072 (regOne!44069 (regex!8707 rNSep!153)) (regTwo!44068 (regex!8707 rNSep!153)))))))

(declare-fun b!8042041 () Bool)

(assert (=> b!8042041 (= e!4737215 call!746486)))

(declare-fun b!8042042 () Bool)

(assert (=> b!8042042 (= e!4737214 call!746483)))

(declare-fun d!2395802 () Bool)

(declare-fun c!1475074 () Bool)

(assert (=> d!2395802 (= c!1475074 (or (is-EmptyExpr!21778 (regex!8707 rNSep!153)) (is-EmptyLang!21778 (regex!8707 rNSep!153))))))

(assert (=> d!2395802 (= (usedCharacters!1285 (regex!8707 rNSep!153)) e!4737213)))

(declare-fun b!8042040 () Bool)

(assert (=> b!8042040 (= e!4737213 Nil!75135)))

(assert (= (and d!2395802 c!1475074) b!8042040))

(assert (= (and d!2395802 (not c!1475074)) b!8042038))

(assert (= (and b!8042038 c!1475073) b!8042035))

(assert (= (and b!8042038 (not c!1475073)) b!8042036))

(assert (= (and b!8042036 c!1475075) b!8042042))

(assert (= (and b!8042036 (not c!1475075)) b!8042039))

(assert (= (and b!8042039 c!1475072) b!8042041))

(assert (= (and b!8042039 (not c!1475072)) b!8042037))

(assert (= (or b!8042041 b!8042037) bm!746481))

(assert (= (or b!8042041 b!8042037) bm!746479))

(assert (= (or b!8042041 b!8042037) bm!746480))

(assert (= (or b!8042042 bm!746479) bm!746478))

(declare-fun m!8395980 () Bool)

(assert (=> bm!746478 m!8395980))

(declare-fun m!8395982 () Bool)

(assert (=> bm!746480 m!8395982))

(declare-fun m!8395984 () Bool)

(assert (=> bm!746481 m!8395984))

(assert (=> bs!1971571 d!2395802))

(declare-fun d!2395804 () Bool)

(assert (=> d!2395804 true))

(declare-fun lambda!472653 () Int)

(declare-fun order!30013 () Int)

(declare-fun dynLambda!30233 (Int Int) Int)

(assert (=> d!2395804 (< (dynLambda!30226 order!30003 (toChars!11637 (transformation!8707 rNSep!153))) (dynLambda!30233 order!30013 lambda!472653))))

(assert (=> d!2395804 true))

(assert (=> d!2395804 (< (dynLambda!30224 order!29999 (toValue!11778 (transformation!8707 rNSep!153))) (dynLambda!30233 order!30013 lambda!472653))))

(declare-fun Forall!1854 (Int) Bool)

(assert (=> d!2395804 (= (semiInverseModEq!3866 (toChars!11637 (transformation!8707 rNSep!153)) (toValue!11778 (transformation!8707 rNSep!153))) (Forall!1854 lambda!472653))))

(declare-fun bs!1971577 () Bool)

(assert (= bs!1971577 d!2395804))

(declare-fun m!8395986 () Bool)

(assert (=> bs!1971577 m!8395986))

(assert (=> d!2395744 d!2395804))

(declare-fun bs!1971578 () Bool)

(declare-fun d!2395806 () Bool)

(assert (= bs!1971578 (and d!2395806 d!2395804)))

(declare-fun lambda!472654 () Int)

(assert (=> bs!1971578 (= (and (= (toChars!11637 (transformation!8707 (h!81585 rules!4166))) (toChars!11637 (transformation!8707 rNSep!153))) (= (toValue!11778 (transformation!8707 (h!81585 rules!4166))) (toValue!11778 (transformation!8707 rNSep!153)))) (= lambda!472654 lambda!472653))))

(assert (=> d!2395806 true))

(assert (=> d!2395806 (< (dynLambda!30226 order!30003 (toChars!11637 (transformation!8707 (h!81585 rules!4166)))) (dynLambda!30233 order!30013 lambda!472654))))

(assert (=> d!2395806 true))

(assert (=> d!2395806 (< (dynLambda!30224 order!29999 (toValue!11778 (transformation!8707 (h!81585 rules!4166)))) (dynLambda!30233 order!30013 lambda!472654))))

(assert (=> d!2395806 (= (semiInverseModEq!3866 (toChars!11637 (transformation!8707 (h!81585 rules!4166))) (toValue!11778 (transformation!8707 (h!81585 rules!4166)))) (Forall!1854 lambda!472654))))

(declare-fun bs!1971579 () Bool)

(assert (= bs!1971579 d!2395806))

(declare-fun m!8395988 () Bool)

(assert (=> bs!1971579 m!8395988))

(assert (=> d!2395778 d!2395806))

(declare-fun bs!1971580 () Bool)

(declare-fun d!2395808 () Bool)

(assert (= bs!1971580 (and d!2395808 d!2395796)))

(declare-fun lambda!472655 () Int)

(assert (=> bs!1971580 (= (= (toValue!11778 (transformation!8707 rSep!153)) (toValue!11778 (transformation!8707 rNSep!153))) (= lambda!472655 lambda!472644))))

(assert (=> d!2395808 true))

(assert (=> d!2395808 (< (dynLambda!30224 order!29999 (toValue!11778 (transformation!8707 rSep!153))) (dynLambda!30232 order!30011 lambda!472655))))

(assert (=> d!2395808 (= (equivClasses!3681 (toChars!11637 (transformation!8707 rSep!153)) (toValue!11778 (transformation!8707 rSep!153))) (Forall2!1323 lambda!472655))))

(declare-fun bs!1971581 () Bool)

(assert (= bs!1971581 d!2395808))

(declare-fun m!8395990 () Bool)

(assert (=> bs!1971581 m!8395990))

(assert (=> b!8041920 d!2395808))

(declare-fun e!4737216 () List!75261)

(declare-fun b!8042047 () Bool)

(assert (=> b!8042047 (= e!4737216 (Cons!75135 (c!1475031 (ite c!1475046 (reg!22107 (regex!8707 rSep!153)) (ite c!1475043 (regTwo!44069 (regex!8707 rSep!153)) (regOne!44068 (regex!8707 rSep!153))))) Nil!75135))))

(declare-fun bm!746482 () Bool)

(declare-fun c!1475076 () Bool)

(declare-fun c!1475079 () Bool)

(declare-fun call!746487 () List!75261)

(assert (=> bm!746482 (= call!746487 (usedCharacters!1285 (ite c!1475079 (reg!22107 (ite c!1475046 (reg!22107 (regex!8707 rSep!153)) (ite c!1475043 (regTwo!44069 (regex!8707 rSep!153)) (regOne!44068 (regex!8707 rSep!153))))) (ite c!1475076 (regTwo!44069 (ite c!1475046 (reg!22107 (regex!8707 rSep!153)) (ite c!1475043 (regTwo!44069 (regex!8707 rSep!153)) (regOne!44068 (regex!8707 rSep!153))))) (regOne!44068 (ite c!1475046 (reg!22107 (regex!8707 rSep!153)) (ite c!1475043 (regTwo!44069 (regex!8707 rSep!153)) (regOne!44068 (regex!8707 rSep!153)))))))))))

(declare-fun b!8042048 () Bool)

(assert (=> b!8042048 (= c!1475079 (is-Star!21778 (ite c!1475046 (reg!22107 (regex!8707 rSep!153)) (ite c!1475043 (regTwo!44069 (regex!8707 rSep!153)) (regOne!44068 (regex!8707 rSep!153))))))))

(declare-fun e!4737218 () List!75261)

(assert (=> b!8042048 (= e!4737216 e!4737218)))

(declare-fun b!8042049 () Bool)

(declare-fun e!4737219 () List!75261)

(declare-fun call!746490 () List!75261)

(assert (=> b!8042049 (= e!4737219 call!746490)))

(declare-fun b!8042050 () Bool)

(declare-fun e!4737217 () List!75261)

(assert (=> b!8042050 (= e!4737217 e!4737216)))

(declare-fun c!1475077 () Bool)

(assert (=> b!8042050 (= c!1475077 (is-ElementMatch!21778 (ite c!1475046 (reg!22107 (regex!8707 rSep!153)) (ite c!1475043 (regTwo!44069 (regex!8707 rSep!153)) (regOne!44068 (regex!8707 rSep!153))))))))

(declare-fun bm!746483 () Bool)

(declare-fun call!746489 () List!75261)

(assert (=> bm!746483 (= call!746489 call!746487)))

(declare-fun b!8042051 () Bool)

(assert (=> b!8042051 (= e!4737218 e!4737219)))

(assert (=> b!8042051 (= c!1475076 (is-Union!21778 (ite c!1475046 (reg!22107 (regex!8707 rSep!153)) (ite c!1475043 (regTwo!44069 (regex!8707 rSep!153)) (regOne!44068 (regex!8707 rSep!153))))))))

(declare-fun bm!746484 () Bool)

(declare-fun call!746488 () List!75261)

(assert (=> bm!746484 (= call!746490 (++!18627 (ite c!1475076 call!746488 call!746489) (ite c!1475076 call!746489 call!746488)))))

(declare-fun bm!746485 () Bool)

(assert (=> bm!746485 (= call!746488 (usedCharacters!1285 (ite c!1475076 (regOne!44069 (ite c!1475046 (reg!22107 (regex!8707 rSep!153)) (ite c!1475043 (regTwo!44069 (regex!8707 rSep!153)) (regOne!44068 (regex!8707 rSep!153))))) (regTwo!44068 (ite c!1475046 (reg!22107 (regex!8707 rSep!153)) (ite c!1475043 (regTwo!44069 (regex!8707 rSep!153)) (regOne!44068 (regex!8707 rSep!153))))))))))

(declare-fun b!8042053 () Bool)

(assert (=> b!8042053 (= e!4737219 call!746490)))

(declare-fun b!8042054 () Bool)

(assert (=> b!8042054 (= e!4737218 call!746487)))

(declare-fun d!2395810 () Bool)

(declare-fun c!1475078 () Bool)

(assert (=> d!2395810 (= c!1475078 (or (is-EmptyExpr!21778 (ite c!1475046 (reg!22107 (regex!8707 rSep!153)) (ite c!1475043 (regTwo!44069 (regex!8707 rSep!153)) (regOne!44068 (regex!8707 rSep!153))))) (is-EmptyLang!21778 (ite c!1475046 (reg!22107 (regex!8707 rSep!153)) (ite c!1475043 (regTwo!44069 (regex!8707 rSep!153)) (regOne!44068 (regex!8707 rSep!153)))))))))

(assert (=> d!2395810 (= (usedCharacters!1285 (ite c!1475046 (reg!22107 (regex!8707 rSep!153)) (ite c!1475043 (regTwo!44069 (regex!8707 rSep!153)) (regOne!44068 (regex!8707 rSep!153))))) e!4737217)))

(declare-fun b!8042052 () Bool)

(assert (=> b!8042052 (= e!4737217 Nil!75135)))

(assert (= (and d!2395810 c!1475078) b!8042052))

(assert (= (and d!2395810 (not c!1475078)) b!8042050))

(assert (= (and b!8042050 c!1475077) b!8042047))

(assert (= (and b!8042050 (not c!1475077)) b!8042048))

(assert (= (and b!8042048 c!1475079) b!8042054))

(assert (= (and b!8042048 (not c!1475079)) b!8042051))

(assert (= (and b!8042051 c!1475076) b!8042053))

(assert (= (and b!8042051 (not c!1475076)) b!8042049))

(assert (= (or b!8042053 b!8042049) bm!746485))

(assert (= (or b!8042053 b!8042049) bm!746483))

(assert (= (or b!8042053 b!8042049) bm!746484))

(assert (= (or b!8042054 bm!746483) bm!746482))

(declare-fun m!8395992 () Bool)

(assert (=> bm!746482 m!8395992))

(declare-fun m!8395994 () Bool)

(assert (=> bm!746484 m!8395994))

(declare-fun m!8395996 () Bool)

(assert (=> bm!746485 m!8395996))

(assert (=> bm!746456 d!2395810))

(declare-fun d!2395812 () Bool)

(assert (=> d!2395812 (= (inv!96935 (tag!9571 (h!81585 (t!391033 rules!4166)))) (= (mod (str.len (value!291210 (tag!9571 (h!81585 (t!391033 rules!4166))))) 2) 0))))

(assert (=> b!8041959 d!2395812))

(declare-fun d!2395814 () Bool)

(declare-fun res!3178978 () Bool)

(declare-fun e!4737220 () Bool)

(assert (=> d!2395814 (=> (not res!3178978) (not e!4737220))))

(assert (=> d!2395814 (= res!3178978 (semiInverseModEq!3866 (toChars!11637 (transformation!8707 (h!81585 (t!391033 rules!4166)))) (toValue!11778 (transformation!8707 (h!81585 (t!391033 rules!4166))))))))

(assert (=> d!2395814 (= (inv!96938 (transformation!8707 (h!81585 (t!391033 rules!4166)))) e!4737220)))

(declare-fun b!8042055 () Bool)

(assert (=> b!8042055 (= e!4737220 (equivClasses!3681 (toChars!11637 (transformation!8707 (h!81585 (t!391033 rules!4166)))) (toValue!11778 (transformation!8707 (h!81585 (t!391033 rules!4166))))))))

(assert (= (and d!2395814 res!3178978) b!8042055))

(declare-fun m!8395998 () Bool)

(assert (=> d!2395814 m!8395998))

(declare-fun m!8396000 () Bool)

(assert (=> b!8042055 m!8396000))

(assert (=> b!8041959 d!2395814))

(declare-fun bs!1971582 () Bool)

(declare-fun d!2395816 () Bool)

(assert (= bs!1971582 (and d!2395816 d!2395804)))

(declare-fun lambda!472656 () Int)

(assert (=> bs!1971582 (= (and (= (toChars!11637 (transformation!8707 rSep!153)) (toChars!11637 (transformation!8707 rNSep!153))) (= (toValue!11778 (transformation!8707 rSep!153)) (toValue!11778 (transformation!8707 rNSep!153)))) (= lambda!472656 lambda!472653))))

(declare-fun bs!1971583 () Bool)

(assert (= bs!1971583 (and d!2395816 d!2395806)))

(assert (=> bs!1971583 (= (and (= (toChars!11637 (transformation!8707 rSep!153)) (toChars!11637 (transformation!8707 (h!81585 rules!4166)))) (= (toValue!11778 (transformation!8707 rSep!153)) (toValue!11778 (transformation!8707 (h!81585 rules!4166))))) (= lambda!472656 lambda!472654))))

(assert (=> d!2395816 true))

(assert (=> d!2395816 (< (dynLambda!30226 order!30003 (toChars!11637 (transformation!8707 rSep!153))) (dynLambda!30233 order!30013 lambda!472656))))

(assert (=> d!2395816 true))

(assert (=> d!2395816 (< (dynLambda!30224 order!29999 (toValue!11778 (transformation!8707 rSep!153))) (dynLambda!30233 order!30013 lambda!472656))))

(assert (=> d!2395816 (= (semiInverseModEq!3866 (toChars!11637 (transformation!8707 rSep!153)) (toValue!11778 (transformation!8707 rSep!153))) (Forall!1854 lambda!472656))))

(declare-fun bs!1971584 () Bool)

(assert (= bs!1971584 d!2395816))

(declare-fun m!8396002 () Bool)

(assert (=> bs!1971584 m!8396002))

(assert (=> d!2395782 d!2395816))

(declare-fun e!4737226 () Bool)

(declare-fun lt!2722346 () List!75261)

(declare-fun b!8042067 () Bool)

(assert (=> b!8042067 (= e!4737226 (or (not (= (ite c!1475043 call!746463 call!746462) Nil!75135)) (= lt!2722346 (ite c!1475043 call!746462 call!746463))))))

(declare-fun b!8042065 () Bool)

(declare-fun e!4737225 () List!75261)

(assert (=> b!8042065 (= e!4737225 (Cons!75135 (h!81583 (ite c!1475043 call!746462 call!746463)) (++!18627 (t!391031 (ite c!1475043 call!746462 call!746463)) (ite c!1475043 call!746463 call!746462))))))

(declare-fun b!8042064 () Bool)

(assert (=> b!8042064 (= e!4737225 (ite c!1475043 call!746463 call!746462))))

(declare-fun b!8042066 () Bool)

(declare-fun res!3178985 () Bool)

(assert (=> b!8042066 (=> (not res!3178985) (not e!4737226))))

(declare-fun size!43760 (List!75261) Int)

(assert (=> b!8042066 (= res!3178985 (= (size!43760 lt!2722346) (+ (size!43760 (ite c!1475043 call!746462 call!746463)) (size!43760 (ite c!1475043 call!746463 call!746462)))))))

(declare-fun d!2395818 () Bool)

(assert (=> d!2395818 e!4737226))

(declare-fun res!3178984 () Bool)

(assert (=> d!2395818 (=> (not res!3178984) (not e!4737226))))

(assert (=> d!2395818 (= res!3178984 (= (content!16044 lt!2722346) (set.union (content!16044 (ite c!1475043 call!746462 call!746463)) (content!16044 (ite c!1475043 call!746463 call!746462)))))))

(assert (=> d!2395818 (= lt!2722346 e!4737225)))

(declare-fun c!1475082 () Bool)

(assert (=> d!2395818 (= c!1475082 (is-Nil!75135 (ite c!1475043 call!746462 call!746463)))))

(assert (=> d!2395818 (= (++!18627 (ite c!1475043 call!746462 call!746463) (ite c!1475043 call!746463 call!746462)) lt!2722346)))

(assert (= (and d!2395818 c!1475082) b!8042064))

(assert (= (and d!2395818 (not c!1475082)) b!8042065))

(assert (= (and d!2395818 res!3178984) b!8042066))

(assert (= (and b!8042066 res!3178985) b!8042067))

(declare-fun m!8396004 () Bool)

(assert (=> b!8042065 m!8396004))

(declare-fun m!8396006 () Bool)

(assert (=> b!8042066 m!8396006))

(declare-fun m!8396008 () Bool)

(assert (=> b!8042066 m!8396008))

(declare-fun m!8396010 () Bool)

(assert (=> b!8042066 m!8396010))

(declare-fun m!8396012 () Bool)

(assert (=> d!2395818 m!8396012))

(declare-fun m!8396014 () Bool)

(assert (=> d!2395818 m!8396014))

(declare-fun m!8396016 () Bool)

(assert (=> d!2395818 m!8396016))

(assert (=> bm!746458 d!2395818))

(declare-fun d!2395820 () Bool)

(declare-fun res!3178990 () Bool)

(declare-fun e!4737231 () Bool)

(assert (=> d!2395820 (=> res!3178990 e!4737231)))

(assert (=> d!2395820 (= res!3178990 (is-Nil!75137 rules!4166))))

(assert (=> d!2395820 (= (noDuplicateTag!3303 thiss!27104 rules!4166 Nil!75142) e!4737231)))

(declare-fun b!8042072 () Bool)

(declare-fun e!4737232 () Bool)

(assert (=> b!8042072 (= e!4737231 e!4737232)))

(declare-fun res!3178991 () Bool)

(assert (=> b!8042072 (=> (not res!3178991) (not e!4737232))))

(declare-fun contains!21001 (List!75268 String!84910) Bool)

(assert (=> b!8042072 (= res!3178991 (not (contains!21001 Nil!75142 (tag!9571 (h!81585 rules!4166)))))))

(declare-fun b!8042073 () Bool)

(assert (=> b!8042073 (= e!4737232 (noDuplicateTag!3303 thiss!27104 (t!391033 rules!4166) (Cons!75142 (tag!9571 (h!81585 rules!4166)) Nil!75142)))))

(assert (= (and d!2395820 (not res!3178990)) b!8042072))

(assert (= (and b!8042072 res!3178991) b!8042073))

(declare-fun m!8396018 () Bool)

(assert (=> b!8042072 m!8396018))

(declare-fun m!8396020 () Bool)

(assert (=> b!8042073 m!8396020))

(assert (=> b!8041923 d!2395820))

(declare-fun b!8042074 () Bool)

(declare-fun e!4737233 () List!75261)

(assert (=> b!8042074 (= e!4737233 (Cons!75135 (c!1475031 (ite c!1475043 (regOne!44069 (regex!8707 rSep!153)) (regTwo!44068 (regex!8707 rSep!153)))) Nil!75135))))

(declare-fun c!1475086 () Bool)

(declare-fun c!1475083 () Bool)

(declare-fun call!746491 () List!75261)

(declare-fun bm!746486 () Bool)

(assert (=> bm!746486 (= call!746491 (usedCharacters!1285 (ite c!1475086 (reg!22107 (ite c!1475043 (regOne!44069 (regex!8707 rSep!153)) (regTwo!44068 (regex!8707 rSep!153)))) (ite c!1475083 (regTwo!44069 (ite c!1475043 (regOne!44069 (regex!8707 rSep!153)) (regTwo!44068 (regex!8707 rSep!153)))) (regOne!44068 (ite c!1475043 (regOne!44069 (regex!8707 rSep!153)) (regTwo!44068 (regex!8707 rSep!153))))))))))

(declare-fun b!8042075 () Bool)

(assert (=> b!8042075 (= c!1475086 (is-Star!21778 (ite c!1475043 (regOne!44069 (regex!8707 rSep!153)) (regTwo!44068 (regex!8707 rSep!153)))))))

(declare-fun e!4737235 () List!75261)

(assert (=> b!8042075 (= e!4737233 e!4737235)))

(declare-fun b!8042076 () Bool)

(declare-fun e!4737236 () List!75261)

(declare-fun call!746494 () List!75261)

(assert (=> b!8042076 (= e!4737236 call!746494)))

(declare-fun b!8042077 () Bool)

(declare-fun e!4737234 () List!75261)

(assert (=> b!8042077 (= e!4737234 e!4737233)))

(declare-fun c!1475084 () Bool)

(assert (=> b!8042077 (= c!1475084 (is-ElementMatch!21778 (ite c!1475043 (regOne!44069 (regex!8707 rSep!153)) (regTwo!44068 (regex!8707 rSep!153)))))))

(declare-fun bm!746487 () Bool)

(declare-fun call!746493 () List!75261)

(assert (=> bm!746487 (= call!746493 call!746491)))

(declare-fun b!8042078 () Bool)

(assert (=> b!8042078 (= e!4737235 e!4737236)))

(assert (=> b!8042078 (= c!1475083 (is-Union!21778 (ite c!1475043 (regOne!44069 (regex!8707 rSep!153)) (regTwo!44068 (regex!8707 rSep!153)))))))

(declare-fun bm!746488 () Bool)

(declare-fun call!746492 () List!75261)

(assert (=> bm!746488 (= call!746494 (++!18627 (ite c!1475083 call!746492 call!746493) (ite c!1475083 call!746493 call!746492)))))

(declare-fun bm!746489 () Bool)

(assert (=> bm!746489 (= call!746492 (usedCharacters!1285 (ite c!1475083 (regOne!44069 (ite c!1475043 (regOne!44069 (regex!8707 rSep!153)) (regTwo!44068 (regex!8707 rSep!153)))) (regTwo!44068 (ite c!1475043 (regOne!44069 (regex!8707 rSep!153)) (regTwo!44068 (regex!8707 rSep!153)))))))))

(declare-fun b!8042080 () Bool)

(assert (=> b!8042080 (= e!4737236 call!746494)))

(declare-fun b!8042081 () Bool)

(assert (=> b!8042081 (= e!4737235 call!746491)))

(declare-fun d!2395822 () Bool)

(declare-fun c!1475085 () Bool)

(assert (=> d!2395822 (= c!1475085 (or (is-EmptyExpr!21778 (ite c!1475043 (regOne!44069 (regex!8707 rSep!153)) (regTwo!44068 (regex!8707 rSep!153)))) (is-EmptyLang!21778 (ite c!1475043 (regOne!44069 (regex!8707 rSep!153)) (regTwo!44068 (regex!8707 rSep!153))))))))

(assert (=> d!2395822 (= (usedCharacters!1285 (ite c!1475043 (regOne!44069 (regex!8707 rSep!153)) (regTwo!44068 (regex!8707 rSep!153)))) e!4737234)))

(declare-fun b!8042079 () Bool)

(assert (=> b!8042079 (= e!4737234 Nil!75135)))

(assert (= (and d!2395822 c!1475085) b!8042079))

(assert (= (and d!2395822 (not c!1475085)) b!8042077))

(assert (= (and b!8042077 c!1475084) b!8042074))

(assert (= (and b!8042077 (not c!1475084)) b!8042075))

(assert (= (and b!8042075 c!1475086) b!8042081))

(assert (= (and b!8042075 (not c!1475086)) b!8042078))

(assert (= (and b!8042078 c!1475083) b!8042080))

(assert (= (and b!8042078 (not c!1475083)) b!8042076))

(assert (= (or b!8042080 b!8042076) bm!746489))

(assert (= (or b!8042080 b!8042076) bm!746487))

(assert (= (or b!8042080 b!8042076) bm!746488))

(assert (= (or b!8042081 bm!746487) bm!746486))

(declare-fun m!8396022 () Bool)

(assert (=> bm!746486 m!8396022))

(declare-fun m!8396024 () Bool)

(assert (=> bm!746488 m!8396024))

(declare-fun m!8396026 () Bool)

(assert (=> bm!746489 m!8396026))

(assert (=> bm!746459 d!2395822))

(declare-fun d!2395824 () Bool)

(declare-fun c!1475087 () Bool)

(assert (=> d!2395824 (= c!1475087 (and (is-Cons!75137 (t!391033 rules!4166)) (not (= (isSeparator!8707 (h!81585 (t!391033 rules!4166))) (isSeparator!8707 rNSep!153)))))))

(declare-fun e!4737238 () Bool)

(assert (=> d!2395824 (= (ruleDisjointCharsFromAllFromOtherType!981 rNSep!153 (t!391033 rules!4166)) e!4737238)))

(declare-fun b!8042082 () Bool)

(declare-fun e!4737237 () Bool)

(declare-fun call!746495 () Bool)

(assert (=> b!8042082 (= e!4737237 call!746495)))

(declare-fun b!8042083 () Bool)

(assert (=> b!8042083 (= e!4737238 e!4737237)))

(declare-fun res!3178992 () Bool)

(assert (=> b!8042083 (= res!3178992 (rulesUseDisjointChars!390 rNSep!153 (h!81585 (t!391033 rules!4166))))))

(assert (=> b!8042083 (=> (not res!3178992) (not e!4737237))))

(declare-fun bm!746490 () Bool)

(assert (=> bm!746490 (= call!746495 (ruleDisjointCharsFromAllFromOtherType!981 rNSep!153 (t!391033 (t!391033 rules!4166))))))

(declare-fun b!8042084 () Bool)

(declare-fun e!4737239 () Bool)

(assert (=> b!8042084 (= e!4737239 call!746495)))

(declare-fun b!8042085 () Bool)

(assert (=> b!8042085 (= e!4737238 e!4737239)))

(declare-fun res!3178993 () Bool)

(assert (=> b!8042085 (= res!3178993 (not (is-Cons!75137 (t!391033 rules!4166))))))

(assert (=> b!8042085 (=> res!3178993 e!4737239)))

(assert (= (and d!2395824 c!1475087) b!8042083))

(assert (= (and d!2395824 (not c!1475087)) b!8042085))

(assert (= (and b!8042083 res!3178992) b!8042082))

(assert (= (and b!8042085 (not res!3178993)) b!8042084))

(assert (= (or b!8042082 b!8042084) bm!746490))

(declare-fun m!8396028 () Bool)

(assert (=> b!8042083 m!8396028))

(declare-fun m!8396030 () Bool)

(assert (=> bm!746490 m!8396030))

(assert (=> bm!746462 d!2395824))

(declare-fun d!2395826 () Bool)

(declare-fun c!1475090 () Bool)

(assert (=> d!2395826 (= c!1475090 (is-Nil!75135 lt!2722327))))

(declare-fun e!4737242 () (Set C!43894))

(assert (=> d!2395826 (= (content!16044 lt!2722327) e!4737242)))

(declare-fun b!8042090 () Bool)

(assert (=> b!8042090 (= e!4737242 (as set.empty (Set C!43894)))))

(declare-fun b!8042091 () Bool)

(assert (=> b!8042091 (= e!4737242 (set.union (set.insert (h!81583 lt!2722327) (as set.empty (Set C!43894))) (content!16044 (t!391031 lt!2722327))))))

(assert (= (and d!2395826 c!1475090) b!8042090))

(assert (= (and d!2395826 (not c!1475090)) b!8042091))

(declare-fun m!8396032 () Bool)

(assert (=> b!8042091 m!8396032))

(declare-fun m!8396034 () Bool)

(assert (=> b!8042091 m!8396034))

(assert (=> d!2395748 d!2395826))

(declare-fun d!2395828 () Bool)

(declare-fun lt!2722347 () Bool)

(assert (=> d!2395828 (= lt!2722347 (set.member rSep!153 (content!16046 (t!391033 rules!4166))))))

(declare-fun e!4737244 () Bool)

(assert (=> d!2395828 (= lt!2722347 e!4737244)))

(declare-fun res!3178994 () Bool)

(assert (=> d!2395828 (=> (not res!3178994) (not e!4737244))))

(assert (=> d!2395828 (= res!3178994 (is-Cons!75137 (t!391033 rules!4166)))))

(assert (=> d!2395828 (= (contains!20997 (t!391033 rules!4166) rSep!153) lt!2722347)))

(declare-fun b!8042092 () Bool)

(declare-fun e!4737243 () Bool)

(assert (=> b!8042092 (= e!4737244 e!4737243)))

(declare-fun res!3178995 () Bool)

(assert (=> b!8042092 (=> res!3178995 e!4737243)))

(assert (=> b!8042092 (= res!3178995 (= (h!81585 (t!391033 rules!4166)) rSep!153))))

(declare-fun b!8042093 () Bool)

(assert (=> b!8042093 (= e!4737243 (contains!20997 (t!391033 (t!391033 rules!4166)) rSep!153))))

(assert (= (and d!2395828 res!3178994) b!8042092))

(assert (= (and b!8042092 (not res!3178995)) b!8042093))

(assert (=> d!2395828 m!8395964))

(declare-fun m!8396036 () Bool)

(assert (=> d!2395828 m!8396036))

(declare-fun m!8396038 () Bool)

(assert (=> b!8042093 m!8396038))

(assert (=> b!8041918 d!2395828))

(declare-fun d!2395830 () Bool)

(declare-fun lt!2722348 () Bool)

(assert (=> d!2395830 (= lt!2722348 (set.member c!6885 (content!16044 (t!391031 lt!2722327))))))

(declare-fun e!4737246 () Bool)

(assert (=> d!2395830 (= lt!2722348 e!4737246)))

(declare-fun res!3178996 () Bool)

(assert (=> d!2395830 (=> (not res!3178996) (not e!4737246))))

(assert (=> d!2395830 (= res!3178996 (is-Cons!75135 (t!391031 lt!2722327)))))

(assert (=> d!2395830 (= (contains!20998 (t!391031 lt!2722327) c!6885) lt!2722348)))

(declare-fun b!8042094 () Bool)

(declare-fun e!4737245 () Bool)

(assert (=> b!8042094 (= e!4737246 e!4737245)))

(declare-fun res!3178997 () Bool)

(assert (=> b!8042094 (=> res!3178997 e!4737245)))

(assert (=> b!8042094 (= res!3178997 (= (h!81583 (t!391031 lt!2722327)) c!6885))))

(declare-fun b!8042095 () Bool)

(assert (=> b!8042095 (= e!4737245 (contains!20998 (t!391031 (t!391031 lt!2722327)) c!6885))))

(assert (= (and d!2395830 res!3178996) b!8042094))

(assert (= (and b!8042094 (not res!3178997)) b!8042095))

(assert (=> d!2395830 m!8396034))

(declare-fun m!8396040 () Bool)

(assert (=> d!2395830 m!8396040))

(declare-fun m!8396042 () Bool)

(assert (=> b!8042095 m!8396042))

(assert (=> b!8041840 d!2395830))

(declare-fun bs!1971585 () Bool)

(declare-fun d!2395832 () Bool)

(assert (= bs!1971585 (and d!2395832 d!2395796)))

(declare-fun lambda!472657 () Int)

(assert (=> bs!1971585 (= (= (toValue!11778 (transformation!8707 (h!81585 rules!4166))) (toValue!11778 (transformation!8707 rNSep!153))) (= lambda!472657 lambda!472644))))

(declare-fun bs!1971586 () Bool)

(assert (= bs!1971586 (and d!2395832 d!2395808)))

(assert (=> bs!1971586 (= (= (toValue!11778 (transformation!8707 (h!81585 rules!4166))) (toValue!11778 (transformation!8707 rSep!153))) (= lambda!472657 lambda!472655))))

(assert (=> d!2395832 true))

(assert (=> d!2395832 (< (dynLambda!30224 order!29999 (toValue!11778 (transformation!8707 (h!81585 rules!4166)))) (dynLambda!30232 order!30011 lambda!472657))))

(assert (=> d!2395832 (= (equivClasses!3681 (toChars!11637 (transformation!8707 (h!81585 rules!4166))) (toValue!11778 (transformation!8707 (h!81585 rules!4166)))) (Forall2!1323 lambda!472657))))

(declare-fun bs!1971587 () Bool)

(assert (= bs!1971587 d!2395832))

(declare-fun m!8396044 () Bool)

(assert (=> bs!1971587 m!8396044))

(assert (=> b!8041919 d!2395832))

(declare-fun d!2395834 () Bool)

(declare-fun res!3178998 () Bool)

(declare-fun e!4737247 () Bool)

(assert (=> d!2395834 (=> res!3178998 e!4737247)))

(assert (=> d!2395834 (= res!3178998 (is-Nil!75135 (t!391031 lt!2722327)))))

(assert (=> d!2395834 (= (forall!18461 (t!391031 lt!2722327) lambda!472638) e!4737247)))

(declare-fun b!8042096 () Bool)

(declare-fun e!4737248 () Bool)

(assert (=> b!8042096 (= e!4737247 e!4737248)))

(declare-fun res!3178999 () Bool)

(assert (=> b!8042096 (=> (not res!3178999) (not e!4737248))))

(assert (=> b!8042096 (= res!3178999 (dynLambda!30230 lambda!472638 (h!81583 (t!391031 lt!2722327))))))

(declare-fun b!8042097 () Bool)

(assert (=> b!8042097 (= e!4737248 (forall!18461 (t!391031 (t!391031 lt!2722327)) lambda!472638))))

(assert (= (and d!2395834 (not res!3178998)) b!8042096))

(assert (= (and b!8042096 res!3178999) b!8042097))

(declare-fun b_lambda!290295 () Bool)

(assert (=> (not b_lambda!290295) (not b!8042096)))

(declare-fun m!8396046 () Bool)

(assert (=> b!8042096 m!8396046))

(declare-fun m!8396048 () Bool)

(assert (=> b!8042097 m!8396048))

(assert (=> b!8041834 d!2395834))

(declare-fun d!2395836 () Bool)

(assert (=> d!2395836 true))

(declare-fun lt!2722351 () Bool)

(declare-fun rulesValidInductive!3452 (LexerInterface!8297 List!75263) Bool)

(assert (=> d!2395836 (= lt!2722351 (rulesValidInductive!3452 thiss!27104 rules!4166))))

(declare-fun lambda!472660 () Int)

(declare-fun forall!18463 (List!75263 Int) Bool)

(assert (=> d!2395836 (= lt!2722351 (forall!18463 rules!4166 lambda!472660))))

(assert (=> d!2395836 (= (rulesValid!3142 thiss!27104 rules!4166) lt!2722351)))

(declare-fun bs!1971588 () Bool)

(assert (= bs!1971588 d!2395836))

(declare-fun m!8396050 () Bool)

(assert (=> bs!1971588 m!8396050))

(declare-fun m!8396052 () Bool)

(assert (=> bs!1971588 m!8396052))

(assert (=> d!2395784 d!2395836))

(declare-fun b!8042100 () Bool)

(declare-fun e!4737249 () Bool)

(assert (=> b!8042100 (= e!4737249 tp_is_empty!54551)))

(declare-fun b!8042102 () Bool)

(declare-fun tp!2409512 () Bool)

(assert (=> b!8042102 (= e!4737249 tp!2409512)))

(declare-fun b!8042103 () Bool)

(declare-fun tp!2409508 () Bool)

(declare-fun tp!2409511 () Bool)

(assert (=> b!8042103 (= e!4737249 (and tp!2409508 tp!2409511))))

(declare-fun b!8042101 () Bool)

(declare-fun tp!2409510 () Bool)

(declare-fun tp!2409509 () Bool)

(assert (=> b!8042101 (= e!4737249 (and tp!2409510 tp!2409509))))

(assert (=> b!8041966 (= tp!2409468 e!4737249)))

(assert (= (and b!8041966 (is-ElementMatch!21778 (regOne!44068 (regex!8707 rSep!153)))) b!8042100))

(assert (= (and b!8041966 (is-Concat!30805 (regOne!44068 (regex!8707 rSep!153)))) b!8042101))

(assert (= (and b!8041966 (is-Star!21778 (regOne!44068 (regex!8707 rSep!153)))) b!8042102))

(assert (= (and b!8041966 (is-Union!21778 (regOne!44068 (regex!8707 rSep!153)))) b!8042103))

(declare-fun b!8042104 () Bool)

(declare-fun e!4737250 () Bool)

(assert (=> b!8042104 (= e!4737250 tp_is_empty!54551)))

(declare-fun b!8042106 () Bool)

(declare-fun tp!2409517 () Bool)

(assert (=> b!8042106 (= e!4737250 tp!2409517)))

(declare-fun b!8042107 () Bool)

(declare-fun tp!2409513 () Bool)

(declare-fun tp!2409516 () Bool)

(assert (=> b!8042107 (= e!4737250 (and tp!2409513 tp!2409516))))

(declare-fun b!8042105 () Bool)

(declare-fun tp!2409515 () Bool)

(declare-fun tp!2409514 () Bool)

(assert (=> b!8042105 (= e!4737250 (and tp!2409515 tp!2409514))))

(assert (=> b!8041966 (= tp!2409467 e!4737250)))

(assert (= (and b!8041966 (is-ElementMatch!21778 (regTwo!44068 (regex!8707 rSep!153)))) b!8042104))

(assert (= (and b!8041966 (is-Concat!30805 (regTwo!44068 (regex!8707 rSep!153)))) b!8042105))

(assert (= (and b!8041966 (is-Star!21778 (regTwo!44068 (regex!8707 rSep!153)))) b!8042106))

(assert (= (and b!8041966 (is-Union!21778 (regTwo!44068 (regex!8707 rSep!153)))) b!8042107))

(declare-fun b!8042108 () Bool)

(declare-fun e!4737251 () Bool)

(assert (=> b!8042108 (= e!4737251 tp_is_empty!54551)))

(declare-fun b!8042110 () Bool)

(declare-fun tp!2409522 () Bool)

(assert (=> b!8042110 (= e!4737251 tp!2409522)))

(declare-fun b!8042111 () Bool)

(declare-fun tp!2409518 () Bool)

(declare-fun tp!2409521 () Bool)

(assert (=> b!8042111 (= e!4737251 (and tp!2409518 tp!2409521))))

(declare-fun b!8042109 () Bool)

(declare-fun tp!2409520 () Bool)

(declare-fun tp!2409519 () Bool)

(assert (=> b!8042109 (= e!4737251 (and tp!2409520 tp!2409519))))

(assert (=> b!8041948 (= tp!2409453 e!4737251)))

(assert (= (and b!8041948 (is-ElementMatch!21778 (reg!22107 (regex!8707 (h!81585 rules!4166))))) b!8042108))

(assert (= (and b!8041948 (is-Concat!30805 (reg!22107 (regex!8707 (h!81585 rules!4166))))) b!8042109))

(assert (= (and b!8041948 (is-Star!21778 (reg!22107 (regex!8707 (h!81585 rules!4166))))) b!8042110))

(assert (= (and b!8041948 (is-Union!21778 (reg!22107 (regex!8707 (h!81585 rules!4166))))) b!8042111))

(declare-fun b!8042112 () Bool)

(declare-fun e!4737252 () Bool)

(assert (=> b!8042112 (= e!4737252 tp_is_empty!54551)))

(declare-fun b!8042114 () Bool)

(declare-fun tp!2409527 () Bool)

(assert (=> b!8042114 (= e!4737252 tp!2409527)))

(declare-fun b!8042115 () Bool)

(declare-fun tp!2409523 () Bool)

(declare-fun tp!2409526 () Bool)

(assert (=> b!8042115 (= e!4737252 (and tp!2409523 tp!2409526))))

(declare-fun b!8042113 () Bool)

(declare-fun tp!2409525 () Bool)

(declare-fun tp!2409524 () Bool)

(assert (=> b!8042113 (= e!4737252 (and tp!2409525 tp!2409524))))

(assert (=> b!8041947 (= tp!2409451 e!4737252)))

(assert (= (and b!8041947 (is-ElementMatch!21778 (regOne!44068 (regex!8707 (h!81585 rules!4166))))) b!8042112))

(assert (= (and b!8041947 (is-Concat!30805 (regOne!44068 (regex!8707 (h!81585 rules!4166))))) b!8042113))

(assert (= (and b!8041947 (is-Star!21778 (regOne!44068 (regex!8707 (h!81585 rules!4166))))) b!8042114))

(assert (= (and b!8041947 (is-Union!21778 (regOne!44068 (regex!8707 (h!81585 rules!4166))))) b!8042115))

(declare-fun b!8042116 () Bool)

(declare-fun e!4737253 () Bool)

(assert (=> b!8042116 (= e!4737253 tp_is_empty!54551)))

(declare-fun b!8042118 () Bool)

(declare-fun tp!2409532 () Bool)

(assert (=> b!8042118 (= e!4737253 tp!2409532)))

(declare-fun b!8042119 () Bool)

(declare-fun tp!2409528 () Bool)

(declare-fun tp!2409531 () Bool)

(assert (=> b!8042119 (= e!4737253 (and tp!2409528 tp!2409531))))

(declare-fun b!8042117 () Bool)

(declare-fun tp!2409530 () Bool)

(declare-fun tp!2409529 () Bool)

(assert (=> b!8042117 (= e!4737253 (and tp!2409530 tp!2409529))))

(assert (=> b!8041947 (= tp!2409450 e!4737253)))

(assert (= (and b!8041947 (is-ElementMatch!21778 (regTwo!44068 (regex!8707 (h!81585 rules!4166))))) b!8042116))

(assert (= (and b!8041947 (is-Concat!30805 (regTwo!44068 (regex!8707 (h!81585 rules!4166))))) b!8042117))

(assert (= (and b!8041947 (is-Star!21778 (regTwo!44068 (regex!8707 (h!81585 rules!4166))))) b!8042118))

(assert (= (and b!8041947 (is-Union!21778 (regTwo!44068 (regex!8707 (h!81585 rules!4166))))) b!8042119))

(declare-fun b!8042122 () Bool)

(declare-fun b_free!135811 () Bool)

(declare-fun b_next!136601 () Bool)

(assert (=> b!8042122 (= b_free!135811 (not b_next!136601))))

(declare-fun tp!2409533 () Bool)

(declare-fun b_and!354247 () Bool)

(assert (=> b!8042122 (= tp!2409533 b_and!354247)))

(declare-fun b_free!135813 () Bool)

(declare-fun b_next!136603 () Bool)

(assert (=> b!8042122 (= b_free!135813 (not b_next!136603))))

(declare-fun tp!2409535 () Bool)

(declare-fun b_and!354249 () Bool)

(assert (=> b!8042122 (= tp!2409535 b_and!354249)))

(declare-fun e!4737255 () Bool)

(assert (=> b!8042122 (= e!4737255 (and tp!2409533 tp!2409535))))

(declare-fun b!8042121 () Bool)

(declare-fun e!4737254 () Bool)

(declare-fun tp!2409536 () Bool)

(assert (=> b!8042121 (= e!4737254 (and tp!2409536 (inv!96935 (tag!9571 (h!81585 (t!391033 (t!391033 rules!4166))))) (inv!96938 (transformation!8707 (h!81585 (t!391033 (t!391033 rules!4166))))) e!4737255))))

(declare-fun b!8042120 () Bool)

(declare-fun e!4737257 () Bool)

(declare-fun tp!2409534 () Bool)

(assert (=> b!8042120 (= e!4737257 (and e!4737254 tp!2409534))))

(assert (=> b!8041958 (= tp!2409463 e!4737257)))

(assert (= b!8042121 b!8042122))

(assert (= b!8042120 b!8042121))

(assert (= (and b!8041958 (is-Cons!75137 (t!391033 (t!391033 rules!4166)))) b!8042120))

(declare-fun m!8396054 () Bool)

(assert (=> b!8042121 m!8396054))

(declare-fun m!8396056 () Bool)

(assert (=> b!8042121 m!8396056))

(declare-fun b!8042123 () Bool)

(declare-fun e!4737258 () Bool)

(assert (=> b!8042123 (= e!4737258 tp_is_empty!54551)))

(declare-fun b!8042125 () Bool)

(declare-fun tp!2409541 () Bool)

(assert (=> b!8042125 (= e!4737258 tp!2409541)))

(declare-fun b!8042126 () Bool)

(declare-fun tp!2409537 () Bool)

(declare-fun tp!2409540 () Bool)

(assert (=> b!8042126 (= e!4737258 (and tp!2409537 tp!2409540))))

(declare-fun b!8042124 () Bool)

(declare-fun tp!2409539 () Bool)

(declare-fun tp!2409538 () Bool)

(assert (=> b!8042124 (= e!4737258 (and tp!2409539 tp!2409538))))

(assert (=> b!8041949 (= tp!2409449 e!4737258)))

(assert (= (and b!8041949 (is-ElementMatch!21778 (regOne!44069 (regex!8707 (h!81585 rules!4166))))) b!8042123))

(assert (= (and b!8041949 (is-Concat!30805 (regOne!44069 (regex!8707 (h!81585 rules!4166))))) b!8042124))

(assert (= (and b!8041949 (is-Star!21778 (regOne!44069 (regex!8707 (h!81585 rules!4166))))) b!8042125))

(assert (= (and b!8041949 (is-Union!21778 (regOne!44069 (regex!8707 (h!81585 rules!4166))))) b!8042126))

(declare-fun b!8042127 () Bool)

(declare-fun e!4737259 () Bool)

(assert (=> b!8042127 (= e!4737259 tp_is_empty!54551)))

(declare-fun b!8042129 () Bool)

(declare-fun tp!2409546 () Bool)

(assert (=> b!8042129 (= e!4737259 tp!2409546)))

(declare-fun b!8042130 () Bool)

(declare-fun tp!2409542 () Bool)

(declare-fun tp!2409545 () Bool)

(assert (=> b!8042130 (= e!4737259 (and tp!2409542 tp!2409545))))

(declare-fun b!8042128 () Bool)

(declare-fun tp!2409544 () Bool)

(declare-fun tp!2409543 () Bool)

(assert (=> b!8042128 (= e!4737259 (and tp!2409544 tp!2409543))))

(assert (=> b!8041949 (= tp!2409452 e!4737259)))

(assert (= (and b!8041949 (is-ElementMatch!21778 (regTwo!44069 (regex!8707 (h!81585 rules!4166))))) b!8042127))

(assert (= (and b!8041949 (is-Concat!30805 (regTwo!44069 (regex!8707 (h!81585 rules!4166))))) b!8042128))

(assert (= (and b!8041949 (is-Star!21778 (regTwo!44069 (regex!8707 (h!81585 rules!4166))))) b!8042129))

(assert (= (and b!8041949 (is-Union!21778 (regTwo!44069 (regex!8707 (h!81585 rules!4166))))) b!8042130))

(declare-fun b!8042131 () Bool)

(declare-fun e!4737260 () Bool)

(assert (=> b!8042131 (= e!4737260 tp_is_empty!54551)))

(declare-fun b!8042133 () Bool)

(declare-fun tp!2409551 () Bool)

(assert (=> b!8042133 (= e!4737260 tp!2409551)))

(declare-fun b!8042134 () Bool)

(declare-fun tp!2409547 () Bool)

(declare-fun tp!2409550 () Bool)

(assert (=> b!8042134 (= e!4737260 (and tp!2409547 tp!2409550))))

(declare-fun b!8042132 () Bool)

(declare-fun tp!2409549 () Bool)

(declare-fun tp!2409548 () Bool)

(assert (=> b!8042132 (= e!4737260 (and tp!2409549 tp!2409548))))

(assert (=> b!8041959 (= tp!2409465 e!4737260)))

(assert (= (and b!8041959 (is-ElementMatch!21778 (regex!8707 (h!81585 (t!391033 rules!4166))))) b!8042131))

(assert (= (and b!8041959 (is-Concat!30805 (regex!8707 (h!81585 (t!391033 rules!4166))))) b!8042132))

(assert (= (and b!8041959 (is-Star!21778 (regex!8707 (h!81585 (t!391033 rules!4166))))) b!8042133))

(assert (= (and b!8041959 (is-Union!21778 (regex!8707 (h!81585 (t!391033 rules!4166))))) b!8042134))

(declare-fun b!8042135 () Bool)

(declare-fun e!4737261 () Bool)

(assert (=> b!8042135 (= e!4737261 tp_is_empty!54551)))

(declare-fun b!8042137 () Bool)

(declare-fun tp!2409556 () Bool)

(assert (=> b!8042137 (= e!4737261 tp!2409556)))

(declare-fun b!8042138 () Bool)

(declare-fun tp!2409552 () Bool)

(declare-fun tp!2409555 () Bool)

(assert (=> b!8042138 (= e!4737261 (and tp!2409552 tp!2409555))))

(declare-fun b!8042136 () Bool)

(declare-fun tp!2409554 () Bool)

(declare-fun tp!2409553 () Bool)

(assert (=> b!8042136 (= e!4737261 (and tp!2409554 tp!2409553))))

(assert (=> b!8041944 (= tp!2409448 e!4737261)))

(assert (= (and b!8041944 (is-ElementMatch!21778 (reg!22107 (regex!8707 rNSep!153)))) b!8042135))

(assert (= (and b!8041944 (is-Concat!30805 (reg!22107 (regex!8707 rNSep!153)))) b!8042136))

(assert (= (and b!8041944 (is-Star!21778 (reg!22107 (regex!8707 rNSep!153)))) b!8042137))

(assert (= (and b!8041944 (is-Union!21778 (reg!22107 (regex!8707 rNSep!153)))) b!8042138))

(declare-fun b!8042139 () Bool)

(declare-fun e!4737262 () Bool)

(assert (=> b!8042139 (= e!4737262 tp_is_empty!54551)))

(declare-fun b!8042141 () Bool)

(declare-fun tp!2409561 () Bool)

(assert (=> b!8042141 (= e!4737262 tp!2409561)))

(declare-fun b!8042142 () Bool)

(declare-fun tp!2409557 () Bool)

(declare-fun tp!2409560 () Bool)

(assert (=> b!8042142 (= e!4737262 (and tp!2409557 tp!2409560))))

(declare-fun b!8042140 () Bool)

(declare-fun tp!2409559 () Bool)

(declare-fun tp!2409558 () Bool)

(assert (=> b!8042140 (= e!4737262 (and tp!2409559 tp!2409558))))

(assert (=> b!8041968 (= tp!2409466 e!4737262)))

(assert (= (and b!8041968 (is-ElementMatch!21778 (regOne!44069 (regex!8707 rSep!153)))) b!8042139))

(assert (= (and b!8041968 (is-Concat!30805 (regOne!44069 (regex!8707 rSep!153)))) b!8042140))

(assert (= (and b!8041968 (is-Star!21778 (regOne!44069 (regex!8707 rSep!153)))) b!8042141))

(assert (= (and b!8041968 (is-Union!21778 (regOne!44069 (regex!8707 rSep!153)))) b!8042142))

(declare-fun b!8042143 () Bool)

(declare-fun e!4737263 () Bool)

(assert (=> b!8042143 (= e!4737263 tp_is_empty!54551)))

(declare-fun b!8042145 () Bool)

(declare-fun tp!2409566 () Bool)

(assert (=> b!8042145 (= e!4737263 tp!2409566)))

(declare-fun b!8042146 () Bool)

(declare-fun tp!2409562 () Bool)

(declare-fun tp!2409565 () Bool)

(assert (=> b!8042146 (= e!4737263 (and tp!2409562 tp!2409565))))

(declare-fun b!8042144 () Bool)

(declare-fun tp!2409564 () Bool)

(declare-fun tp!2409563 () Bool)

(assert (=> b!8042144 (= e!4737263 (and tp!2409564 tp!2409563))))

(assert (=> b!8041968 (= tp!2409469 e!4737263)))

(assert (= (and b!8041968 (is-ElementMatch!21778 (regTwo!44069 (regex!8707 rSep!153)))) b!8042143))

(assert (= (and b!8041968 (is-Concat!30805 (regTwo!44069 (regex!8707 rSep!153)))) b!8042144))

(assert (= (and b!8041968 (is-Star!21778 (regTwo!44069 (regex!8707 rSep!153)))) b!8042145))

(assert (= (and b!8041968 (is-Union!21778 (regTwo!44069 (regex!8707 rSep!153)))) b!8042146))

(declare-fun b!8042147 () Bool)

(declare-fun e!4737264 () Bool)

(assert (=> b!8042147 (= e!4737264 tp_is_empty!54551)))

(declare-fun b!8042149 () Bool)

(declare-fun tp!2409571 () Bool)

(assert (=> b!8042149 (= e!4737264 tp!2409571)))

(declare-fun b!8042150 () Bool)

(declare-fun tp!2409567 () Bool)

(declare-fun tp!2409570 () Bool)

(assert (=> b!8042150 (= e!4737264 (and tp!2409567 tp!2409570))))

(declare-fun b!8042148 () Bool)

(declare-fun tp!2409569 () Bool)

(declare-fun tp!2409568 () Bool)

(assert (=> b!8042148 (= e!4737264 (and tp!2409569 tp!2409568))))

(assert (=> b!8041945 (= tp!2409444 e!4737264)))

(assert (= (and b!8041945 (is-ElementMatch!21778 (regOne!44069 (regex!8707 rNSep!153)))) b!8042147))

(assert (= (and b!8041945 (is-Concat!30805 (regOne!44069 (regex!8707 rNSep!153)))) b!8042148))

(assert (= (and b!8041945 (is-Star!21778 (regOne!44069 (regex!8707 rNSep!153)))) b!8042149))

(assert (= (and b!8041945 (is-Union!21778 (regOne!44069 (regex!8707 rNSep!153)))) b!8042150))

(declare-fun b!8042151 () Bool)

(declare-fun e!4737265 () Bool)

(assert (=> b!8042151 (= e!4737265 tp_is_empty!54551)))

(declare-fun b!8042153 () Bool)

(declare-fun tp!2409576 () Bool)

(assert (=> b!8042153 (= e!4737265 tp!2409576)))

(declare-fun b!8042154 () Bool)

(declare-fun tp!2409572 () Bool)

(declare-fun tp!2409575 () Bool)

(assert (=> b!8042154 (= e!4737265 (and tp!2409572 tp!2409575))))

(declare-fun b!8042152 () Bool)

(declare-fun tp!2409574 () Bool)

(declare-fun tp!2409573 () Bool)

(assert (=> b!8042152 (= e!4737265 (and tp!2409574 tp!2409573))))

(assert (=> b!8041945 (= tp!2409447 e!4737265)))

(assert (= (and b!8041945 (is-ElementMatch!21778 (regTwo!44069 (regex!8707 rNSep!153)))) b!8042151))

(assert (= (and b!8041945 (is-Concat!30805 (regTwo!44069 (regex!8707 rNSep!153)))) b!8042152))

(assert (= (and b!8041945 (is-Star!21778 (regTwo!44069 (regex!8707 rNSep!153)))) b!8042153))

(assert (= (and b!8041945 (is-Union!21778 (regTwo!44069 (regex!8707 rNSep!153)))) b!8042154))

(declare-fun b!8042155 () Bool)

(declare-fun e!4737266 () Bool)

(assert (=> b!8042155 (= e!4737266 tp_is_empty!54551)))

(declare-fun b!8042157 () Bool)

(declare-fun tp!2409581 () Bool)

(assert (=> b!8042157 (= e!4737266 tp!2409581)))

(declare-fun b!8042158 () Bool)

(declare-fun tp!2409577 () Bool)

(declare-fun tp!2409580 () Bool)

(assert (=> b!8042158 (= e!4737266 (and tp!2409577 tp!2409580))))

(declare-fun b!8042156 () Bool)

(declare-fun tp!2409579 () Bool)

(declare-fun tp!2409578 () Bool)

(assert (=> b!8042156 (= e!4737266 (and tp!2409579 tp!2409578))))

(assert (=> b!8041967 (= tp!2409470 e!4737266)))

(assert (= (and b!8041967 (is-ElementMatch!21778 (reg!22107 (regex!8707 rSep!153)))) b!8042155))

(assert (= (and b!8041967 (is-Concat!30805 (reg!22107 (regex!8707 rSep!153)))) b!8042156))

(assert (= (and b!8041967 (is-Star!21778 (reg!22107 (regex!8707 rSep!153)))) b!8042157))

(assert (= (and b!8041967 (is-Union!21778 (reg!22107 (regex!8707 rSep!153)))) b!8042158))

(declare-fun b!8042159 () Bool)

(declare-fun e!4737267 () Bool)

(assert (=> b!8042159 (= e!4737267 tp_is_empty!54551)))

(declare-fun b!8042161 () Bool)

(declare-fun tp!2409586 () Bool)

(assert (=> b!8042161 (= e!4737267 tp!2409586)))

(declare-fun b!8042162 () Bool)

(declare-fun tp!2409582 () Bool)

(declare-fun tp!2409585 () Bool)

(assert (=> b!8042162 (= e!4737267 (and tp!2409582 tp!2409585))))

(declare-fun b!8042160 () Bool)

(declare-fun tp!2409584 () Bool)

(declare-fun tp!2409583 () Bool)

(assert (=> b!8042160 (= e!4737267 (and tp!2409584 tp!2409583))))

(assert (=> b!8041943 (= tp!2409446 e!4737267)))

(assert (= (and b!8041943 (is-ElementMatch!21778 (regOne!44068 (regex!8707 rNSep!153)))) b!8042159))

(assert (= (and b!8041943 (is-Concat!30805 (regOne!44068 (regex!8707 rNSep!153)))) b!8042160))

(assert (= (and b!8041943 (is-Star!21778 (regOne!44068 (regex!8707 rNSep!153)))) b!8042161))

(assert (= (and b!8041943 (is-Union!21778 (regOne!44068 (regex!8707 rNSep!153)))) b!8042162))

(declare-fun b!8042163 () Bool)

(declare-fun e!4737268 () Bool)

(assert (=> b!8042163 (= e!4737268 tp_is_empty!54551)))

(declare-fun b!8042165 () Bool)

(declare-fun tp!2409591 () Bool)

(assert (=> b!8042165 (= e!4737268 tp!2409591)))

(declare-fun b!8042166 () Bool)

(declare-fun tp!2409587 () Bool)

(declare-fun tp!2409590 () Bool)

(assert (=> b!8042166 (= e!4737268 (and tp!2409587 tp!2409590))))

(declare-fun b!8042164 () Bool)

(declare-fun tp!2409589 () Bool)

(declare-fun tp!2409588 () Bool)

(assert (=> b!8042164 (= e!4737268 (and tp!2409589 tp!2409588))))

(assert (=> b!8041943 (= tp!2409445 e!4737268)))

(assert (= (and b!8041943 (is-ElementMatch!21778 (regTwo!44068 (regex!8707 rNSep!153)))) b!8042163))

(assert (= (and b!8041943 (is-Concat!30805 (regTwo!44068 (regex!8707 rNSep!153)))) b!8042164))

(assert (= (and b!8041943 (is-Star!21778 (regTwo!44068 (regex!8707 rNSep!153)))) b!8042165))

(assert (= (and b!8041943 (is-Union!21778 (regTwo!44068 (regex!8707 rNSep!153)))) b!8042166))

(declare-fun b_lambda!290297 () Bool)

(assert (= b_lambda!290295 (or b!8041764 b_lambda!290297)))

(declare-fun bs!1971589 () Bool)

(declare-fun d!2395838 () Bool)

(assert (= bs!1971589 (and d!2395838 b!8041764)))

(assert (=> bs!1971589 (= (dynLambda!30230 lambda!472638 (h!81583 (t!391031 lt!2722327))) (not (contains!20998 (usedCharacters!1285 (regex!8707 rNSep!153)) (h!81583 (t!391031 lt!2722327)))))))

(assert (=> bs!1971589 m!8395942))

(assert (=> bs!1971589 m!8395942))

(declare-fun m!8396058 () Bool)

(assert (=> bs!1971589 m!8396058))

(assert (=> b!8042096 d!2395838))

(push 1)

(assert (not d!2395798))

(assert (not b!8042028))

(assert (not bm!746489))

(assert (not b!8042102))

(assert (not d!2395816))

(assert (not b_next!136571))

(assert (not b!8042148))

(assert tp_is_empty!54551)

(assert (not b!8042124))

(assert (not b!8042146))

(assert (not b!8042121))

(assert (not bm!746490))

(assert (not bm!746478))

(assert (not b!8042142))

(assert b_and!354249)

(assert (not b!8042130))

(assert (not b!8042093))

(assert (not b!8042066))

(assert b_and!354247)

(assert (not b!8042097))

(assert (not bm!746484))

(assert (not b!8042107))

(assert (not b!8042118))

(assert (not d!2395828))

(assert (not b!8042158))

(assert (not d!2395818))

(assert (not b!8042154))

(assert (not b!8042103))

(assert (not b_next!136603))

(assert (not b!8042125))

(assert (not b!8042156))

(assert (not b!8042105))

(assert (not b!8042120))

(assert (not b!8042083))

(assert (not d!2395800))

(assert (not d!2395796))

(assert (not b!8042073))

(assert (not b!8042132))

(assert (not b!8042141))

(assert (not b!8042034))

(assert (not b!8042166))

(assert (not b!8042072))

(assert b_and!354217)

(assert (not b!8042133))

(assert (not b!8042117))

(assert (not bs!1971589))

(assert (not b!8042153))

(assert b_and!354239)

(assert (not b!8042164))

(assert (not d!2395808))

(assert (not bm!746488))

(assert (not b!8042157))

(assert (not b!8042144))

(assert (not b!8042150))

(assert (not b!8042091))

(assert (not b!8042162))

(assert b_and!354219)

(assert (not bm!746486))

(assert b_and!354241)

(assert b_and!354221)

(assert (not d!2395830))

(assert (not d!2395814))

(assert (not b!8042115))

(assert (not b!8042165))

(assert b_and!354223)

(assert (not b!8042138))

(assert (not d!2395806))

(assert (not b!8042095))

(assert (not b_next!136577))

(assert (not b!8042128))

(assert (not b!8042111))

(assert (not b!8042149))

(assert (not b_next!136569))

(assert (not b!8042101))

(assert (not b!8042109))

(assert (not b!8042110))

(assert b_and!354225)

(assert (not bm!746480))

(assert (not d!2395832))

(assert (not b_next!136593))

(assert (not b_next!136579))

(assert (not b!8042140))

(assert (not bm!746481))

(assert (not bm!746485))

(assert b_and!354215)

(assert (not b!8042126))

(assert (not b!8042113))

(assert (not b!8042160))

(assert (not d!2395836))

(assert (not b!8042137))

(assert (not b_next!136573))

(assert (not b!8042055))

(assert (not b!8042134))

(assert (not b!8042119))

(assert (not b!8042145))

(assert (not b!8042106))

(assert (not b_next!136601))

(assert (not b!8042136))

(assert (not bm!746482))

(assert (not b_next!136575))

(assert (not b!8042152))

(assert (not b!8042129))

(assert (not b!8042065))

(assert (not b!8042021))

(assert (not b_lambda!290289))

(assert (not b_next!136595))

(assert (not b_lambda!290297))

(assert (not b!8042161))

(assert (not d!2395804))

(assert (not b!8042114))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!136571))

(assert b_and!354249)

(assert b_and!354247)

(assert (not b_next!136603))

(assert b_and!354219)

(assert b_and!354223)

(assert (not b_next!136577))

(assert (not b_next!136569))

(assert b_and!354225)

(assert b_and!354215)

(assert (not b_next!136573))

(assert (not b_next!136601))

(assert (not b_next!136575))

(assert (not b_next!136595))

(assert b_and!354217)

(assert b_and!354239)

(assert b_and!354241)

(assert b_and!354221)

(assert (not b_next!136593))

(assert (not b_next!136579))

(check-sat)

(pop 1)

