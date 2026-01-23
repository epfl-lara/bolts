; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351574 () Bool)

(assert start!351574)

(declare-fun b!3745140 () Bool)

(declare-fun b_free!99605 () Bool)

(declare-fun b_next!100309 () Bool)

(assert (=> b!3745140 (= b_free!99605 (not b_next!100309))))

(declare-fun tp!1142159 () Bool)

(declare-fun b_and!277839 () Bool)

(assert (=> b!3745140 (= tp!1142159 b_and!277839)))

(declare-fun b_free!99607 () Bool)

(declare-fun b_next!100311 () Bool)

(assert (=> b!3745140 (= b_free!99607 (not b_next!100311))))

(declare-fun tp!1142172 () Bool)

(declare-fun b_and!277841 () Bool)

(assert (=> b!3745140 (= tp!1142172 b_and!277841)))

(declare-fun b!3745126 () Bool)

(declare-fun b_free!99609 () Bool)

(declare-fun b_next!100313 () Bool)

(assert (=> b!3745126 (= b_free!99609 (not b_next!100313))))

(declare-fun tp!1142170 () Bool)

(declare-fun b_and!277843 () Bool)

(assert (=> b!3745126 (= tp!1142170 b_and!277843)))

(declare-fun b_free!99611 () Bool)

(declare-fun b_next!100315 () Bool)

(assert (=> b!3745126 (= b_free!99611 (not b_next!100315))))

(declare-fun tp!1142167 () Bool)

(declare-fun b_and!277845 () Bool)

(assert (=> b!3745126 (= tp!1142167 b_and!277845)))

(declare-fun b!3745129 () Bool)

(declare-fun b_free!99613 () Bool)

(declare-fun b_next!100317 () Bool)

(assert (=> b!3745129 (= b_free!99613 (not b_next!100317))))

(declare-fun tp!1142161 () Bool)

(declare-fun b_and!277847 () Bool)

(assert (=> b!3745129 (= tp!1142161 b_and!277847)))

(declare-fun b_free!99615 () Bool)

(declare-fun b_next!100319 () Bool)

(assert (=> b!3745129 (= b_free!99615 (not b_next!100319))))

(declare-fun tp!1142165 () Bool)

(declare-fun b_and!277849 () Bool)

(assert (=> b!3745129 (= tp!1142165 b_and!277849)))

(declare-fun b!3745135 () Bool)

(declare-fun b_free!99617 () Bool)

(declare-fun b_next!100321 () Bool)

(assert (=> b!3745135 (= b_free!99617 (not b_next!100321))))

(declare-fun tp!1142164 () Bool)

(declare-fun b_and!277851 () Bool)

(assert (=> b!3745135 (= tp!1142164 b_and!277851)))

(declare-fun b_free!99619 () Bool)

(declare-fun b_next!100323 () Bool)

(assert (=> b!3745135 (= b_free!99619 (not b_next!100323))))

(declare-fun tp!1142162 () Bool)

(declare-fun b_and!277853 () Bool)

(assert (=> b!3745135 (= tp!1142162 b_and!277853)))

(declare-fun e!2315755 () Bool)

(declare-fun b!3745124 () Bool)

(declare-datatypes ((List!39906 0))(
  ( (Nil!39782) (Cons!39782 (h!45202 (_ BitVec 16)) (t!302589 List!39906)) )
))
(declare-datatypes ((TokenValue!6294 0))(
  ( (FloatLiteralValue!12588 (text!44503 List!39906)) (TokenValueExt!6293 (__x!24805 Int)) (Broken!31470 (value!193392 List!39906)) (Object!6417) (End!6294) (Def!6294) (Underscore!6294) (Match!6294) (Else!6294) (Error!6294) (Case!6294) (If!6294) (Extends!6294) (Abstract!6294) (Class!6294) (Val!6294) (DelimiterValue!12588 (del!6354 List!39906)) (KeywordValue!6300 (value!193393 List!39906)) (CommentValue!12588 (value!193394 List!39906)) (WhitespaceValue!12588 (value!193395 List!39906)) (IndentationValue!6294 (value!193396 List!39906)) (String!45095) (Int32!6294) (Broken!31471 (value!193397 List!39906)) (Boolean!6295) (Unit!57637) (OperatorValue!6297 (op!6354 List!39906)) (IdentifierValue!12588 (value!193398 List!39906)) (IdentifierValue!12589 (value!193399 List!39906)) (WhitespaceValue!12589 (value!193400 List!39906)) (True!12588) (False!12588) (Broken!31472 (value!193401 List!39906)) (Broken!31473 (value!193402 List!39906)) (True!12589) (RightBrace!6294) (RightBracket!6294) (Colon!6294) (Null!6294) (Comma!6294) (LeftBracket!6294) (False!12589) (LeftBrace!6294) (ImaginaryLiteralValue!6294 (text!44504 List!39906)) (StringLiteralValue!18882 (value!193403 List!39906)) (EOFValue!6294 (value!193404 List!39906)) (IdentValue!6294 (value!193405 List!39906)) (DelimiterValue!12589 (value!193406 List!39906)) (DedentValue!6294 (value!193407 List!39906)) (NewLineValue!6294 (value!193408 List!39906)) (IntegerValue!18882 (value!193409 (_ BitVec 32)) (text!44505 List!39906)) (IntegerValue!18883 (value!193410 Int) (text!44506 List!39906)) (Times!6294) (Or!6294) (Equal!6294) (Minus!6294) (Broken!31474 (value!193411 List!39906)) (And!6294) (Div!6294) (LessEqual!6294) (Mod!6294) (Concat!17263) (Not!6294) (Plus!6294) (SpaceValue!6294 (value!193412 List!39906)) (IntegerValue!18884 (value!193413 Int) (text!44507 List!39906)) (StringLiteralValue!18883 (text!44508 List!39906)) (FloatLiteralValue!12589 (text!44509 List!39906)) (BytesLiteralValue!6294 (value!193414 List!39906)) (CommentValue!12589 (value!193415 List!39906)) (StringLiteralValue!18884 (value!193416 List!39906)) (ErrorTokenValue!6294 (msg!6355 List!39906)) )
))
(declare-datatypes ((C!22124 0))(
  ( (C!22125 (val!13110 Int)) )
))
(declare-datatypes ((List!39907 0))(
  ( (Nil!39783) (Cons!39783 (h!45203 C!22124) (t!302590 List!39907)) )
))
(declare-datatypes ((IArray!24327 0))(
  ( (IArray!24328 (innerList!12221 List!39907)) )
))
(declare-datatypes ((Conc!12161 0))(
  ( (Node!12161 (left!30824 Conc!12161) (right!31154 Conc!12161) (csize!24552 Int) (cheight!12372 Int)) (Leaf!18877 (xs!15363 IArray!24327) (csize!24553 Int)) (Empty!12161) )
))
(declare-datatypes ((Regex!10969 0))(
  ( (ElementMatch!10969 (c!648658 C!22124)) (Concat!17264 (regOne!22450 Regex!10969) (regTwo!22450 Regex!10969)) (EmptyExpr!10969) (Star!10969 (reg!11298 Regex!10969)) (EmptyLang!10969) (Union!10969 (regOne!22451 Regex!10969) (regTwo!22451 Regex!10969)) )
))
(declare-datatypes ((String!45096 0))(
  ( (String!45097 (value!193417 String)) )
))
(declare-datatypes ((BalanceConc!23936 0))(
  ( (BalanceConc!23937 (c!648659 Conc!12161)) )
))
(declare-datatypes ((TokenValueInjection!12016 0))(
  ( (TokenValueInjection!12017 (toValue!8408 Int) (toChars!8267 Int)) )
))
(declare-datatypes ((Rule!11928 0))(
  ( (Rule!11929 (regex!6064 Regex!10969) (tag!6924 String!45096) (isSeparator!6064 Bool) (transformation!6064 TokenValueInjection!12016)) )
))
(declare-fun rNSep!159 () Rule!11928)

(declare-fun tp!1142168 () Bool)

(declare-fun e!2315748 () Bool)

(declare-fun inv!53317 (String!45096) Bool)

(declare-fun inv!53319 (TokenValueInjection!12016) Bool)

(assert (=> b!3745124 (= e!2315755 (and tp!1142168 (inv!53317 (tag!6924 rNSep!159)) (inv!53319 (transformation!6064 rNSep!159)) e!2315748))))

(declare-fun b!3745125 () Bool)

(declare-fun e!2315758 () Bool)

(declare-fun rSep!159 () Rule!11928)

(declare-fun c!6900 () C!22124)

(declare-fun contains!8085 (List!39907 C!22124) Bool)

(declare-fun usedCharacters!1232 (Regex!10969) List!39907)

(assert (=> b!3745125 (= e!2315758 (contains!8085 (usedCharacters!1232 (regex!6064 rSep!159)) c!6900))))

(assert (=> b!3745126 (= e!2315748 (and tp!1142170 tp!1142167))))

(declare-fun tp!1142171 () Bool)

(declare-fun e!2315759 () Bool)

(declare-fun e!2315756 () Bool)

(declare-datatypes ((List!39908 0))(
  ( (Nil!39784) (Cons!39784 (h!45204 Rule!11928) (t!302591 List!39908)) )
))
(declare-fun rulesRec!198 () List!39908)

(declare-fun b!3745127 () Bool)

(assert (=> b!3745127 (= e!2315756 (and tp!1142171 (inv!53317 (tag!6924 (h!45204 rulesRec!198))) (inv!53319 (transformation!6064 (h!45204 rulesRec!198))) e!2315759))))

(declare-fun b!3745128 () Bool)

(declare-fun res!1518107 () Bool)

(assert (=> b!3745128 (=> (not res!1518107) (not e!2315758))))

(declare-fun rules!4189 () List!39908)

(declare-fun sepAndNonSepRulesDisjointChars!2042 (List!39908 List!39908) Bool)

(assert (=> b!3745128 (= res!1518107 (sepAndNonSepRulesDisjointChars!2042 rules!4189 rulesRec!198))))

(declare-fun e!2315747 () Bool)

(assert (=> b!3745129 (= e!2315747 (and tp!1142161 tp!1142165))))

(declare-fun b!3745130 () Bool)

(declare-fun res!1518110 () Bool)

(assert (=> b!3745130 (=> (not res!1518110) (not e!2315758))))

(declare-fun contains!8086 (List!39908 Rule!11928) Bool)

(assert (=> b!3745130 (= res!1518110 (contains!8086 rules!4189 rSep!159))))

(declare-fun tp!1142169 () Bool)

(declare-fun b!3745131 () Bool)

(declare-fun e!2315750 () Bool)

(declare-fun e!2315752 () Bool)

(assert (=> b!3745131 (= e!2315750 (and tp!1142169 (inv!53317 (tag!6924 rSep!159)) (inv!53319 (transformation!6064 rSep!159)) e!2315752))))

(declare-fun b!3745132 () Bool)

(declare-fun res!1518104 () Bool)

(assert (=> b!3745132 (=> (not res!1518104) (not e!2315758))))

(assert (=> b!3745132 (= res!1518104 (contains!8086 rules!4189 rNSep!159))))

(declare-fun b!3745133 () Bool)

(declare-fun res!1518109 () Bool)

(assert (=> b!3745133 (=> (not res!1518109) (not e!2315758))))

(assert (=> b!3745133 (= res!1518109 (and (not (isSeparator!6064 rNSep!159)) (isSeparator!6064 rSep!159)))))

(assert (=> b!3745135 (= e!2315759 (and tp!1142164 tp!1142162))))

(declare-fun b!3745136 () Bool)

(declare-fun res!1518105 () Bool)

(assert (=> b!3745136 (=> (not res!1518105) (not e!2315758))))

(declare-datatypes ((LexerInterface!5653 0))(
  ( (LexerInterfaceExt!5650 (__x!24806 Int)) (Lexer!5651) )
))
(declare-fun thiss!27143 () LexerInterface!5653)

(declare-fun rulesInvariant!5050 (LexerInterface!5653 List!39908) Bool)

(assert (=> b!3745136 (= res!1518105 (rulesInvariant!5050 thiss!27143 rules!4189))))

(declare-fun b!3745137 () Bool)

(declare-fun e!2315749 () Bool)

(declare-fun e!2315753 () Bool)

(declare-fun tp!1142166 () Bool)

(assert (=> b!3745137 (= e!2315749 (and e!2315753 tp!1142166))))

(declare-fun b!3745138 () Bool)

(declare-fun e!2315751 () Bool)

(declare-fun tp!1142163 () Bool)

(assert (=> b!3745138 (= e!2315751 (and e!2315756 tp!1142163))))

(declare-fun b!3745139 () Bool)

(declare-fun res!1518106 () Bool)

(assert (=> b!3745139 (=> (not res!1518106) (not e!2315758))))

(get-info :version)

(assert (=> b!3745139 (= res!1518106 (and (or (not ((_ is Cons!39784) rulesRec!198)) (not (= (h!45204 rulesRec!198) rNSep!159))) (not ((_ is Cons!39784) rulesRec!198))))))

(assert (=> b!3745140 (= e!2315752 (and tp!1142159 tp!1142172))))

(declare-fun b!3745141 () Bool)

(declare-fun res!1518111 () Bool)

(assert (=> b!3745141 (=> (not res!1518111) (not e!2315758))))

(assert (=> b!3745141 (= res!1518111 (contains!8086 rulesRec!198 rNSep!159))))

(declare-fun tp!1142160 () Bool)

(declare-fun b!3745142 () Bool)

(assert (=> b!3745142 (= e!2315753 (and tp!1142160 (inv!53317 (tag!6924 (h!45204 rules!4189))) (inv!53319 (transformation!6064 (h!45204 rules!4189))) e!2315747))))

(declare-fun b!3745134 () Bool)

(declare-fun res!1518103 () Bool)

(assert (=> b!3745134 (=> (not res!1518103) (not e!2315758))))

(assert (=> b!3745134 (= res!1518103 (contains!8085 (usedCharacters!1232 (regex!6064 rNSep!159)) c!6900))))

(declare-fun res!1518108 () Bool)

(assert (=> start!351574 (=> (not res!1518108) (not e!2315758))))

(assert (=> start!351574 (= res!1518108 ((_ is Lexer!5651) thiss!27143))))

(assert (=> start!351574 e!2315758))

(assert (=> start!351574 true))

(assert (=> start!351574 e!2315749))

(assert (=> start!351574 e!2315750))

(assert (=> start!351574 e!2315751))

(declare-fun tp_is_empty!18953 () Bool)

(assert (=> start!351574 tp_is_empty!18953))

(assert (=> start!351574 e!2315755))

(assert (= (and start!351574 res!1518108) b!3745136))

(assert (= (and b!3745136 res!1518105) b!3745130))

(assert (= (and b!3745130 res!1518110) b!3745141))

(assert (= (and b!3745141 res!1518111) b!3745132))

(assert (= (and b!3745132 res!1518104) b!3745133))

(assert (= (and b!3745133 res!1518109) b!3745134))

(assert (= (and b!3745134 res!1518103) b!3745128))

(assert (= (and b!3745128 res!1518107) b!3745139))

(assert (= (and b!3745139 res!1518106) b!3745125))

(assert (= b!3745142 b!3745129))

(assert (= b!3745137 b!3745142))

(assert (= (and start!351574 ((_ is Cons!39784) rules!4189)) b!3745137))

(assert (= b!3745131 b!3745140))

(assert (= start!351574 b!3745131))

(assert (= b!3745127 b!3745135))

(assert (= b!3745138 b!3745127))

(assert (= (and start!351574 ((_ is Cons!39784) rulesRec!198)) b!3745138))

(assert (= b!3745124 b!3745126))

(assert (= start!351574 b!3745124))

(declare-fun m!4238211 () Bool)

(assert (=> b!3745124 m!4238211))

(declare-fun m!4238213 () Bool)

(assert (=> b!3745124 m!4238213))

(declare-fun m!4238215 () Bool)

(assert (=> b!3745127 m!4238215))

(declare-fun m!4238217 () Bool)

(assert (=> b!3745127 m!4238217))

(declare-fun m!4238219 () Bool)

(assert (=> b!3745136 m!4238219))

(declare-fun m!4238221 () Bool)

(assert (=> b!3745134 m!4238221))

(assert (=> b!3745134 m!4238221))

(declare-fun m!4238223 () Bool)

(assert (=> b!3745134 m!4238223))

(declare-fun m!4238225 () Bool)

(assert (=> b!3745128 m!4238225))

(declare-fun m!4238227 () Bool)

(assert (=> b!3745131 m!4238227))

(declare-fun m!4238229 () Bool)

(assert (=> b!3745131 m!4238229))

(declare-fun m!4238231 () Bool)

(assert (=> b!3745141 m!4238231))

(declare-fun m!4238233 () Bool)

(assert (=> b!3745132 m!4238233))

(declare-fun m!4238235 () Bool)

(assert (=> b!3745130 m!4238235))

(declare-fun m!4238237 () Bool)

(assert (=> b!3745142 m!4238237))

(declare-fun m!4238239 () Bool)

(assert (=> b!3745142 m!4238239))

(declare-fun m!4238241 () Bool)

(assert (=> b!3745125 m!4238241))

(assert (=> b!3745125 m!4238241))

(declare-fun m!4238243 () Bool)

(assert (=> b!3745125 m!4238243))

(check-sat (not b_next!100321) b_and!277847 (not b!3745137) (not b!3745125) (not b_next!100311) (not b!3745136) (not b!3745142) (not b_next!100313) (not b!3745131) (not b!3745138) b_and!277839 (not b!3745127) (not b!3745130) (not b_next!100317) b_and!277849 b_and!277843 b_and!277853 (not b_next!100315) (not b!3745132) (not b_next!100309) (not b_next!100323) (not b!3745128) b_and!277845 (not b!3745134) (not b!3745141) b_and!277841 (not b!3745124) tp_is_empty!18953 (not b_next!100319) b_and!277851)
(check-sat (not b_next!100321) b_and!277847 (not b_next!100311) (not b_next!100313) b_and!277845 b_and!277839 b_and!277841 (not b_next!100317) b_and!277849 b_and!277843 b_and!277853 (not b_next!100315) (not b_next!100309) (not b_next!100323) (not b_next!100319) b_and!277851)
(get-model)

(declare-fun d!1093152 () Bool)

(declare-fun lt!1299412 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5824 (List!39908) (InoxSet Rule!11928))

(assert (=> d!1093152 (= lt!1299412 (select (content!5824 rules!4189) rNSep!159))))

(declare-fun e!2315772 () Bool)

(assert (=> d!1093152 (= lt!1299412 e!2315772)))

(declare-fun res!1518130 () Bool)

(assert (=> d!1093152 (=> (not res!1518130) (not e!2315772))))

(assert (=> d!1093152 (= res!1518130 ((_ is Cons!39784) rules!4189))))

(assert (=> d!1093152 (= (contains!8086 rules!4189 rNSep!159) lt!1299412)))

(declare-fun b!3745153 () Bool)

(declare-fun e!2315771 () Bool)

(assert (=> b!3745153 (= e!2315772 e!2315771)))

(declare-fun res!1518131 () Bool)

(assert (=> b!3745153 (=> res!1518131 e!2315771)))

(assert (=> b!3745153 (= res!1518131 (= (h!45204 rules!4189) rNSep!159))))

(declare-fun b!3745154 () Bool)

(assert (=> b!3745154 (= e!2315771 (contains!8086 (t!302591 rules!4189) rNSep!159))))

(assert (= (and d!1093152 res!1518130) b!3745153))

(assert (= (and b!3745153 (not res!1518131)) b!3745154))

(declare-fun m!4238251 () Bool)

(assert (=> d!1093152 m!4238251))

(declare-fun m!4238253 () Bool)

(assert (=> d!1093152 m!4238253))

(declare-fun m!4238255 () Bool)

(assert (=> b!3745154 m!4238255))

(assert (=> b!3745132 d!1093152))

(declare-fun d!1093156 () Bool)

(assert (=> d!1093156 (= (inv!53317 (tag!6924 (h!45204 rulesRec!198))) (= (mod (str.len (value!193417 (tag!6924 (h!45204 rulesRec!198)))) 2) 0))))

(assert (=> b!3745127 d!1093156))

(declare-fun d!1093160 () Bool)

(declare-fun res!1518137 () Bool)

(declare-fun e!2315778 () Bool)

(assert (=> d!1093160 (=> (not res!1518137) (not e!2315778))))

(declare-fun semiInverseModEq!2595 (Int Int) Bool)

(assert (=> d!1093160 (= res!1518137 (semiInverseModEq!2595 (toChars!8267 (transformation!6064 (h!45204 rulesRec!198))) (toValue!8408 (transformation!6064 (h!45204 rulesRec!198)))))))

(assert (=> d!1093160 (= (inv!53319 (transformation!6064 (h!45204 rulesRec!198))) e!2315778)))

(declare-fun b!3745160 () Bool)

(declare-fun equivClasses!2494 (Int Int) Bool)

(assert (=> b!3745160 (= e!2315778 (equivClasses!2494 (toChars!8267 (transformation!6064 (h!45204 rulesRec!198))) (toValue!8408 (transformation!6064 (h!45204 rulesRec!198)))))))

(assert (= (and d!1093160 res!1518137) b!3745160))

(declare-fun m!4238261 () Bool)

(assert (=> d!1093160 m!4238261))

(declare-fun m!4238263 () Bool)

(assert (=> b!3745160 m!4238263))

(assert (=> b!3745127 d!1093160))

(declare-fun d!1093164 () Bool)

(declare-fun res!1518150 () Bool)

(declare-fun e!2315791 () Bool)

(assert (=> d!1093164 (=> res!1518150 e!2315791)))

(assert (=> d!1093164 (= res!1518150 (not ((_ is Cons!39784) rulesRec!198)))))

(assert (=> d!1093164 (= (sepAndNonSepRulesDisjointChars!2042 rules!4189 rulesRec!198) e!2315791)))

(declare-fun b!3745173 () Bool)

(declare-fun e!2315792 () Bool)

(assert (=> b!3745173 (= e!2315791 e!2315792)))

(declare-fun res!1518151 () Bool)

(assert (=> b!3745173 (=> (not res!1518151) (not e!2315792))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!937 (Rule!11928 List!39908) Bool)

(assert (=> b!3745173 (= res!1518151 (ruleDisjointCharsFromAllFromOtherType!937 (h!45204 rulesRec!198) rules!4189))))

(declare-fun b!3745174 () Bool)

(assert (=> b!3745174 (= e!2315792 (sepAndNonSepRulesDisjointChars!2042 rules!4189 (t!302591 rulesRec!198)))))

(assert (= (and d!1093164 (not res!1518150)) b!3745173))

(assert (= (and b!3745173 res!1518151) b!3745174))

(declare-fun m!4238275 () Bool)

(assert (=> b!3745173 m!4238275))

(declare-fun m!4238277 () Bool)

(assert (=> b!3745174 m!4238277))

(assert (=> b!3745128 d!1093164))

(declare-fun d!1093172 () Bool)

(declare-fun lt!1299418 () Bool)

(declare-fun content!5825 (List!39907) (InoxSet C!22124))

(assert (=> d!1093172 (= lt!1299418 (select (content!5825 (usedCharacters!1232 (regex!6064 rNSep!159))) c!6900))))

(declare-fun e!2315804 () Bool)

(assert (=> d!1093172 (= lt!1299418 e!2315804)))

(declare-fun res!1518163 () Bool)

(assert (=> d!1093172 (=> (not res!1518163) (not e!2315804))))

(assert (=> d!1093172 (= res!1518163 ((_ is Cons!39783) (usedCharacters!1232 (regex!6064 rNSep!159))))))

(assert (=> d!1093172 (= (contains!8085 (usedCharacters!1232 (regex!6064 rNSep!159)) c!6900) lt!1299418)))

(declare-fun b!3745185 () Bool)

(declare-fun e!2315803 () Bool)

(assert (=> b!3745185 (= e!2315804 e!2315803)))

(declare-fun res!1518162 () Bool)

(assert (=> b!3745185 (=> res!1518162 e!2315803)))

(assert (=> b!3745185 (= res!1518162 (= (h!45203 (usedCharacters!1232 (regex!6064 rNSep!159))) c!6900))))

(declare-fun b!3745186 () Bool)

(assert (=> b!3745186 (= e!2315803 (contains!8085 (t!302590 (usedCharacters!1232 (regex!6064 rNSep!159))) c!6900))))

(assert (= (and d!1093172 res!1518163) b!3745185))

(assert (= (and b!3745185 (not res!1518162)) b!3745186))

(assert (=> d!1093172 m!4238221))

(declare-fun m!4238287 () Bool)

(assert (=> d!1093172 m!4238287))

(declare-fun m!4238289 () Bool)

(assert (=> d!1093172 m!4238289))

(declare-fun m!4238291 () Bool)

(assert (=> b!3745186 m!4238291))

(assert (=> b!3745134 d!1093172))

(declare-fun b!3745221 () Bool)

(declare-fun e!2315823 () List!39907)

(declare-fun e!2315825 () List!39907)

(assert (=> b!3745221 (= e!2315823 e!2315825)))

(declare-fun c!648678 () Bool)

(assert (=> b!3745221 (= c!648678 ((_ is ElementMatch!10969) (regex!6064 rNSep!159)))))

(declare-fun b!3745222 () Bool)

(assert (=> b!3745222 (= e!2315823 Nil!39783)))

(declare-fun bm!274978 () Bool)

(declare-fun call!274983 () List!39907)

(declare-fun c!648679 () Bool)

(assert (=> bm!274978 (= call!274983 (usedCharacters!1232 (ite c!648679 (regTwo!22451 (regex!6064 rNSep!159)) (regTwo!22450 (regex!6064 rNSep!159)))))))

(declare-fun bm!274979 () Bool)

(declare-fun call!274986 () List!39907)

(declare-fun call!274985 () List!39907)

(assert (=> bm!274979 (= call!274986 call!274985)))

(declare-fun b!3745223 () Bool)

(declare-fun e!2315824 () List!39907)

(declare-fun e!2315826 () List!39907)

(assert (=> b!3745223 (= e!2315824 e!2315826)))

(assert (=> b!3745223 (= c!648679 ((_ is Union!10969) (regex!6064 rNSep!159)))))

(declare-fun b!3745224 () Bool)

(declare-fun call!274984 () List!39907)

(assert (=> b!3745224 (= e!2315826 call!274984)))

(declare-fun b!3745225 () Bool)

(assert (=> b!3745225 (= e!2315825 (Cons!39783 (c!648658 (regex!6064 rNSep!159)) Nil!39783))))

(declare-fun b!3745226 () Bool)

(assert (=> b!3745226 (= e!2315826 call!274984)))

(declare-fun d!1093180 () Bool)

(declare-fun c!648677 () Bool)

(assert (=> d!1093180 (= c!648677 (or ((_ is EmptyExpr!10969) (regex!6064 rNSep!159)) ((_ is EmptyLang!10969) (regex!6064 rNSep!159))))))

(assert (=> d!1093180 (= (usedCharacters!1232 (regex!6064 rNSep!159)) e!2315823)))

(declare-fun bm!274980 () Bool)

(declare-fun ++!9880 (List!39907 List!39907) List!39907)

(assert (=> bm!274980 (= call!274984 (++!9880 call!274986 call!274983))))

(declare-fun c!648676 () Bool)

(declare-fun bm!274981 () Bool)

(assert (=> bm!274981 (= call!274985 (usedCharacters!1232 (ite c!648676 (reg!11298 (regex!6064 rNSep!159)) (ite c!648679 (regOne!22451 (regex!6064 rNSep!159)) (regOne!22450 (regex!6064 rNSep!159))))))))

(declare-fun b!3745227 () Bool)

(assert (=> b!3745227 (= c!648676 ((_ is Star!10969) (regex!6064 rNSep!159)))))

(assert (=> b!3745227 (= e!2315825 e!2315824)))

(declare-fun b!3745228 () Bool)

(assert (=> b!3745228 (= e!2315824 call!274985)))

(assert (= (and d!1093180 c!648677) b!3745222))

(assert (= (and d!1093180 (not c!648677)) b!3745221))

(assert (= (and b!3745221 c!648678) b!3745225))

(assert (= (and b!3745221 (not c!648678)) b!3745227))

(assert (= (and b!3745227 c!648676) b!3745228))

(assert (= (and b!3745227 (not c!648676)) b!3745223))

(assert (= (and b!3745223 c!648679) b!3745224))

(assert (= (and b!3745223 (not c!648679)) b!3745226))

(assert (= (or b!3745224 b!3745226) bm!274979))

(assert (= (or b!3745224 b!3745226) bm!274978))

(assert (= (or b!3745224 b!3745226) bm!274980))

(assert (= (or b!3745228 bm!274979) bm!274981))

(declare-fun m!4238299 () Bool)

(assert (=> bm!274978 m!4238299))

(declare-fun m!4238301 () Bool)

(assert (=> bm!274980 m!4238301))

(declare-fun m!4238303 () Bool)

(assert (=> bm!274981 m!4238303))

(assert (=> b!3745134 d!1093180))

(declare-fun d!1093184 () Bool)

(assert (=> d!1093184 (= (inv!53317 (tag!6924 rNSep!159)) (= (mod (str.len (value!193417 (tag!6924 rNSep!159))) 2) 0))))

(assert (=> b!3745124 d!1093184))

(declare-fun d!1093186 () Bool)

(declare-fun res!1518166 () Bool)

(declare-fun e!2315831 () Bool)

(assert (=> d!1093186 (=> (not res!1518166) (not e!2315831))))

(assert (=> d!1093186 (= res!1518166 (semiInverseModEq!2595 (toChars!8267 (transformation!6064 rNSep!159)) (toValue!8408 (transformation!6064 rNSep!159))))))

(assert (=> d!1093186 (= (inv!53319 (transformation!6064 rNSep!159)) e!2315831)))

(declare-fun b!3745237 () Bool)

(assert (=> b!3745237 (= e!2315831 (equivClasses!2494 (toChars!8267 (transformation!6064 rNSep!159)) (toValue!8408 (transformation!6064 rNSep!159))))))

(assert (= (and d!1093186 res!1518166) b!3745237))

(declare-fun m!4238309 () Bool)

(assert (=> d!1093186 m!4238309))

(declare-fun m!4238313 () Bool)

(assert (=> b!3745237 m!4238313))

(assert (=> b!3745124 d!1093186))

(declare-fun d!1093190 () Bool)

(declare-fun lt!1299420 () Bool)

(assert (=> d!1093190 (= lt!1299420 (select (content!5824 rules!4189) rSep!159))))

(declare-fun e!2315833 () Bool)

(assert (=> d!1093190 (= lt!1299420 e!2315833)))

(declare-fun res!1518167 () Bool)

(assert (=> d!1093190 (=> (not res!1518167) (not e!2315833))))

(assert (=> d!1093190 (= res!1518167 ((_ is Cons!39784) rules!4189))))

(assert (=> d!1093190 (= (contains!8086 rules!4189 rSep!159) lt!1299420)))

(declare-fun b!3745238 () Bool)

(declare-fun e!2315832 () Bool)

(assert (=> b!3745238 (= e!2315833 e!2315832)))

(declare-fun res!1518168 () Bool)

(assert (=> b!3745238 (=> res!1518168 e!2315832)))

(assert (=> b!3745238 (= res!1518168 (= (h!45204 rules!4189) rSep!159))))

(declare-fun b!3745239 () Bool)

(assert (=> b!3745239 (= e!2315832 (contains!8086 (t!302591 rules!4189) rSep!159))))

(assert (= (and d!1093190 res!1518167) b!3745238))

(assert (= (and b!3745238 (not res!1518168)) b!3745239))

(assert (=> d!1093190 m!4238251))

(declare-fun m!4238315 () Bool)

(assert (=> d!1093190 m!4238315))

(declare-fun m!4238319 () Bool)

(assert (=> b!3745239 m!4238319))

(assert (=> b!3745130 d!1093190))

(declare-fun d!1093192 () Bool)

(declare-fun res!1518177 () Bool)

(declare-fun e!2315846 () Bool)

(assert (=> d!1093192 (=> (not res!1518177) (not e!2315846))))

(declare-fun rulesValid!2350 (LexerInterface!5653 List!39908) Bool)

(assert (=> d!1093192 (= res!1518177 (rulesValid!2350 thiss!27143 rules!4189))))

(assert (=> d!1093192 (= (rulesInvariant!5050 thiss!27143 rules!4189) e!2315846)))

(declare-fun b!3745256 () Bool)

(declare-datatypes ((List!39909 0))(
  ( (Nil!39785) (Cons!39785 (h!45205 String!45096) (t!302592 List!39909)) )
))
(declare-fun noDuplicateTag!2351 (LexerInterface!5653 List!39908 List!39909) Bool)

(assert (=> b!3745256 (= e!2315846 (noDuplicateTag!2351 thiss!27143 rules!4189 Nil!39785))))

(assert (= (and d!1093192 res!1518177) b!3745256))

(declare-fun m!4238335 () Bool)

(assert (=> d!1093192 m!4238335))

(declare-fun m!4238337 () Bool)

(assert (=> b!3745256 m!4238337))

(assert (=> b!3745136 d!1093192))

(declare-fun d!1093200 () Bool)

(declare-fun lt!1299423 () Bool)

(assert (=> d!1093200 (= lt!1299423 (select (content!5824 rulesRec!198) rNSep!159))))

(declare-fun e!2315848 () Bool)

(assert (=> d!1093200 (= lt!1299423 e!2315848)))

(declare-fun res!1518178 () Bool)

(assert (=> d!1093200 (=> (not res!1518178) (not e!2315848))))

(assert (=> d!1093200 (= res!1518178 ((_ is Cons!39784) rulesRec!198))))

(assert (=> d!1093200 (= (contains!8086 rulesRec!198 rNSep!159) lt!1299423)))

(declare-fun b!3745257 () Bool)

(declare-fun e!2315847 () Bool)

(assert (=> b!3745257 (= e!2315848 e!2315847)))

(declare-fun res!1518179 () Bool)

(assert (=> b!3745257 (=> res!1518179 e!2315847)))

(assert (=> b!3745257 (= res!1518179 (= (h!45204 rulesRec!198) rNSep!159))))

(declare-fun b!3745258 () Bool)

(assert (=> b!3745258 (= e!2315847 (contains!8086 (t!302591 rulesRec!198) rNSep!159))))

(assert (= (and d!1093200 res!1518178) b!3745257))

(assert (= (and b!3745257 (not res!1518179)) b!3745258))

(declare-fun m!4238343 () Bool)

(assert (=> d!1093200 m!4238343))

(declare-fun m!4238345 () Bool)

(assert (=> d!1093200 m!4238345))

(declare-fun m!4238347 () Bool)

(assert (=> b!3745258 m!4238347))

(assert (=> b!3745141 d!1093200))

(declare-fun d!1093206 () Bool)

(declare-fun lt!1299424 () Bool)

(assert (=> d!1093206 (= lt!1299424 (select (content!5825 (usedCharacters!1232 (regex!6064 rSep!159))) c!6900))))

(declare-fun e!2315852 () Bool)

(assert (=> d!1093206 (= lt!1299424 e!2315852)))

(declare-fun res!1518183 () Bool)

(assert (=> d!1093206 (=> (not res!1518183) (not e!2315852))))

(assert (=> d!1093206 (= res!1518183 ((_ is Cons!39783) (usedCharacters!1232 (regex!6064 rSep!159))))))

(assert (=> d!1093206 (= (contains!8085 (usedCharacters!1232 (regex!6064 rSep!159)) c!6900) lt!1299424)))

(declare-fun b!3745261 () Bool)

(declare-fun e!2315851 () Bool)

(assert (=> b!3745261 (= e!2315852 e!2315851)))

(declare-fun res!1518182 () Bool)

(assert (=> b!3745261 (=> res!1518182 e!2315851)))

(assert (=> b!3745261 (= res!1518182 (= (h!45203 (usedCharacters!1232 (regex!6064 rSep!159))) c!6900))))

(declare-fun b!3745262 () Bool)

(assert (=> b!3745262 (= e!2315851 (contains!8085 (t!302590 (usedCharacters!1232 (regex!6064 rSep!159))) c!6900))))

(assert (= (and d!1093206 res!1518183) b!3745261))

(assert (= (and b!3745261 (not res!1518182)) b!3745262))

(assert (=> d!1093206 m!4238241))

(declare-fun m!4238353 () Bool)

(assert (=> d!1093206 m!4238353))

(declare-fun m!4238355 () Bool)

(assert (=> d!1093206 m!4238355))

(declare-fun m!4238357 () Bool)

(assert (=> b!3745262 m!4238357))

(assert (=> b!3745125 d!1093206))

(declare-fun b!3745267 () Bool)

(declare-fun e!2315855 () List!39907)

(declare-fun e!2315857 () List!39907)

(assert (=> b!3745267 (= e!2315855 e!2315857)))

(declare-fun c!648690 () Bool)

(assert (=> b!3745267 (= c!648690 ((_ is ElementMatch!10969) (regex!6064 rSep!159)))))

(declare-fun b!3745268 () Bool)

(assert (=> b!3745268 (= e!2315855 Nil!39783)))

(declare-fun bm!274990 () Bool)

(declare-fun call!274995 () List!39907)

(declare-fun c!648691 () Bool)

(assert (=> bm!274990 (= call!274995 (usedCharacters!1232 (ite c!648691 (regTwo!22451 (regex!6064 rSep!159)) (regTwo!22450 (regex!6064 rSep!159)))))))

(declare-fun bm!274991 () Bool)

(declare-fun call!274998 () List!39907)

(declare-fun call!274997 () List!39907)

(assert (=> bm!274991 (= call!274998 call!274997)))

(declare-fun b!3745269 () Bool)

(declare-fun e!2315856 () List!39907)

(declare-fun e!2315858 () List!39907)

(assert (=> b!3745269 (= e!2315856 e!2315858)))

(assert (=> b!3745269 (= c!648691 ((_ is Union!10969) (regex!6064 rSep!159)))))

(declare-fun b!3745270 () Bool)

(declare-fun call!274996 () List!39907)

(assert (=> b!3745270 (= e!2315858 call!274996)))

(declare-fun b!3745271 () Bool)

(assert (=> b!3745271 (= e!2315857 (Cons!39783 (c!648658 (regex!6064 rSep!159)) Nil!39783))))

(declare-fun b!3745272 () Bool)

(assert (=> b!3745272 (= e!2315858 call!274996)))

(declare-fun d!1093208 () Bool)

(declare-fun c!648689 () Bool)

(assert (=> d!1093208 (= c!648689 (or ((_ is EmptyExpr!10969) (regex!6064 rSep!159)) ((_ is EmptyLang!10969) (regex!6064 rSep!159))))))

(assert (=> d!1093208 (= (usedCharacters!1232 (regex!6064 rSep!159)) e!2315855)))

(declare-fun bm!274992 () Bool)

(assert (=> bm!274992 (= call!274996 (++!9880 call!274998 call!274995))))

(declare-fun bm!274993 () Bool)

(declare-fun c!648688 () Bool)

(assert (=> bm!274993 (= call!274997 (usedCharacters!1232 (ite c!648688 (reg!11298 (regex!6064 rSep!159)) (ite c!648691 (regOne!22451 (regex!6064 rSep!159)) (regOne!22450 (regex!6064 rSep!159))))))))

(declare-fun b!3745273 () Bool)

(assert (=> b!3745273 (= c!648688 ((_ is Star!10969) (regex!6064 rSep!159)))))

(assert (=> b!3745273 (= e!2315857 e!2315856)))

(declare-fun b!3745274 () Bool)

(assert (=> b!3745274 (= e!2315856 call!274997)))

(assert (= (and d!1093208 c!648689) b!3745268))

(assert (= (and d!1093208 (not c!648689)) b!3745267))

(assert (= (and b!3745267 c!648690) b!3745271))

(assert (= (and b!3745267 (not c!648690)) b!3745273))

(assert (= (and b!3745273 c!648688) b!3745274))

(assert (= (and b!3745273 (not c!648688)) b!3745269))

(assert (= (and b!3745269 c!648691) b!3745270))

(assert (= (and b!3745269 (not c!648691)) b!3745272))

(assert (= (or b!3745270 b!3745272) bm!274991))

(assert (= (or b!3745270 b!3745272) bm!274990))

(assert (= (or b!3745270 b!3745272) bm!274992))

(assert (= (or b!3745274 bm!274991) bm!274993))

(declare-fun m!4238359 () Bool)

(assert (=> bm!274990 m!4238359))

(declare-fun m!4238361 () Bool)

(assert (=> bm!274992 m!4238361))

(declare-fun m!4238363 () Bool)

(assert (=> bm!274993 m!4238363))

(assert (=> b!3745125 d!1093208))

(declare-fun d!1093210 () Bool)

(assert (=> d!1093210 (= (inv!53317 (tag!6924 (h!45204 rules!4189))) (= (mod (str.len (value!193417 (tag!6924 (h!45204 rules!4189)))) 2) 0))))

(assert (=> b!3745142 d!1093210))

(declare-fun d!1093212 () Bool)

(declare-fun res!1518184 () Bool)

(declare-fun e!2315865 () Bool)

(assert (=> d!1093212 (=> (not res!1518184) (not e!2315865))))

(assert (=> d!1093212 (= res!1518184 (semiInverseModEq!2595 (toChars!8267 (transformation!6064 (h!45204 rules!4189))) (toValue!8408 (transformation!6064 (h!45204 rules!4189)))))))

(assert (=> d!1093212 (= (inv!53319 (transformation!6064 (h!45204 rules!4189))) e!2315865)))

(declare-fun b!3745279 () Bool)

(assert (=> b!3745279 (= e!2315865 (equivClasses!2494 (toChars!8267 (transformation!6064 (h!45204 rules!4189))) (toValue!8408 (transformation!6064 (h!45204 rules!4189)))))))

(assert (= (and d!1093212 res!1518184) b!3745279))

(declare-fun m!4238365 () Bool)

(assert (=> d!1093212 m!4238365))

(declare-fun m!4238367 () Bool)

(assert (=> b!3745279 m!4238367))

(assert (=> b!3745142 d!1093212))

(declare-fun d!1093214 () Bool)

(assert (=> d!1093214 (= (inv!53317 (tag!6924 rSep!159)) (= (mod (str.len (value!193417 (tag!6924 rSep!159))) 2) 0))))

(assert (=> b!3745131 d!1093214))

(declare-fun d!1093216 () Bool)

(declare-fun res!1518185 () Bool)

(declare-fun e!2315870 () Bool)

(assert (=> d!1093216 (=> (not res!1518185) (not e!2315870))))

(assert (=> d!1093216 (= res!1518185 (semiInverseModEq!2595 (toChars!8267 (transformation!6064 rSep!159)) (toValue!8408 (transformation!6064 rSep!159))))))

(assert (=> d!1093216 (= (inv!53319 (transformation!6064 rSep!159)) e!2315870)))

(declare-fun b!3745283 () Bool)

(assert (=> b!3745283 (= e!2315870 (equivClasses!2494 (toChars!8267 (transformation!6064 rSep!159)) (toValue!8408 (transformation!6064 rSep!159))))))

(assert (= (and d!1093216 res!1518185) b!3745283))

(declare-fun m!4238369 () Bool)

(assert (=> d!1093216 m!4238369))

(declare-fun m!4238371 () Bool)

(assert (=> b!3745283 m!4238371))

(assert (=> b!3745131 d!1093216))

(declare-fun b!3745323 () Bool)

(declare-fun b_free!99629 () Bool)

(declare-fun b_next!100333 () Bool)

(assert (=> b!3745323 (= b_free!99629 (not b_next!100333))))

(declare-fun tp!1142227 () Bool)

(declare-fun b_and!277863 () Bool)

(assert (=> b!3745323 (= tp!1142227 b_and!277863)))

(declare-fun b_free!99631 () Bool)

(declare-fun b_next!100335 () Bool)

(assert (=> b!3745323 (= b_free!99631 (not b_next!100335))))

(declare-fun tp!1142230 () Bool)

(declare-fun b_and!277865 () Bool)

(assert (=> b!3745323 (= tp!1142230 b_and!277865)))

(declare-fun e!2315889 () Bool)

(assert (=> b!3745323 (= e!2315889 (and tp!1142227 tp!1142230))))

(declare-fun b!3745322 () Bool)

(declare-fun tp!1142228 () Bool)

(declare-fun e!2315890 () Bool)

(assert (=> b!3745322 (= e!2315890 (and tp!1142228 (inv!53317 (tag!6924 (h!45204 (t!302591 rules!4189)))) (inv!53319 (transformation!6064 (h!45204 (t!302591 rules!4189)))) e!2315889))))

(declare-fun b!3745321 () Bool)

(declare-fun e!2315892 () Bool)

(declare-fun tp!1142229 () Bool)

(assert (=> b!3745321 (= e!2315892 (and e!2315890 tp!1142229))))

(assert (=> b!3745137 (= tp!1142166 e!2315892)))

(assert (= b!3745322 b!3745323))

(assert (= b!3745321 b!3745322))

(assert (= (and b!3745137 ((_ is Cons!39784) (t!302591 rules!4189))) b!3745321))

(declare-fun m!4238381 () Bool)

(assert (=> b!3745322 m!4238381))

(declare-fun m!4238383 () Bool)

(assert (=> b!3745322 m!4238383))

(declare-fun b!3745326 () Bool)

(declare-fun b_free!99633 () Bool)

(declare-fun b_next!100337 () Bool)

(assert (=> b!3745326 (= b_free!99633 (not b_next!100337))))

(declare-fun tp!1142231 () Bool)

(declare-fun b_and!277867 () Bool)

(assert (=> b!3745326 (= tp!1142231 b_and!277867)))

(declare-fun b_free!99635 () Bool)

(declare-fun b_next!100339 () Bool)

(assert (=> b!3745326 (= b_free!99635 (not b_next!100339))))

(declare-fun tp!1142234 () Bool)

(declare-fun b_and!277869 () Bool)

(assert (=> b!3745326 (= tp!1142234 b_and!277869)))

(declare-fun e!2315893 () Bool)

(assert (=> b!3745326 (= e!2315893 (and tp!1142231 tp!1142234))))

(declare-fun b!3745325 () Bool)

(declare-fun tp!1142232 () Bool)

(declare-fun e!2315894 () Bool)

(assert (=> b!3745325 (= e!2315894 (and tp!1142232 (inv!53317 (tag!6924 (h!45204 (t!302591 rulesRec!198)))) (inv!53319 (transformation!6064 (h!45204 (t!302591 rulesRec!198)))) e!2315893))))

(declare-fun b!3745324 () Bool)

(declare-fun e!2315896 () Bool)

(declare-fun tp!1142233 () Bool)

(assert (=> b!3745324 (= e!2315896 (and e!2315894 tp!1142233))))

(assert (=> b!3745138 (= tp!1142163 e!2315896)))

(assert (= b!3745325 b!3745326))

(assert (= b!3745324 b!3745325))

(assert (= (and b!3745138 ((_ is Cons!39784) (t!302591 rulesRec!198))) b!3745324))

(declare-fun m!4238385 () Bool)

(assert (=> b!3745325 m!4238385))

(declare-fun m!4238387 () Bool)

(assert (=> b!3745325 m!4238387))

(declare-fun e!2315899 () Bool)

(assert (=> b!3745127 (= tp!1142171 e!2315899)))

(declare-fun b!3745340 () Bool)

(declare-fun tp!1142249 () Bool)

(declare-fun tp!1142248 () Bool)

(assert (=> b!3745340 (= e!2315899 (and tp!1142249 tp!1142248))))

(declare-fun b!3745339 () Bool)

(declare-fun tp!1142246 () Bool)

(assert (=> b!3745339 (= e!2315899 tp!1142246)))

(declare-fun b!3745337 () Bool)

(assert (=> b!3745337 (= e!2315899 tp_is_empty!18953)))

(declare-fun b!3745338 () Bool)

(declare-fun tp!1142247 () Bool)

(declare-fun tp!1142245 () Bool)

(assert (=> b!3745338 (= e!2315899 (and tp!1142247 tp!1142245))))

(assert (= (and b!3745127 ((_ is ElementMatch!10969) (regex!6064 (h!45204 rulesRec!198)))) b!3745337))

(assert (= (and b!3745127 ((_ is Concat!17264) (regex!6064 (h!45204 rulesRec!198)))) b!3745338))

(assert (= (and b!3745127 ((_ is Star!10969) (regex!6064 (h!45204 rulesRec!198)))) b!3745339))

(assert (= (and b!3745127 ((_ is Union!10969) (regex!6064 (h!45204 rulesRec!198)))) b!3745340))

(declare-fun e!2315900 () Bool)

(assert (=> b!3745124 (= tp!1142168 e!2315900)))

(declare-fun b!3745344 () Bool)

(declare-fun tp!1142254 () Bool)

(declare-fun tp!1142253 () Bool)

(assert (=> b!3745344 (= e!2315900 (and tp!1142254 tp!1142253))))

(declare-fun b!3745343 () Bool)

(declare-fun tp!1142251 () Bool)

(assert (=> b!3745343 (= e!2315900 tp!1142251)))

(declare-fun b!3745341 () Bool)

(assert (=> b!3745341 (= e!2315900 tp_is_empty!18953)))

(declare-fun b!3745342 () Bool)

(declare-fun tp!1142252 () Bool)

(declare-fun tp!1142250 () Bool)

(assert (=> b!3745342 (= e!2315900 (and tp!1142252 tp!1142250))))

(assert (= (and b!3745124 ((_ is ElementMatch!10969) (regex!6064 rNSep!159))) b!3745341))

(assert (= (and b!3745124 ((_ is Concat!17264) (regex!6064 rNSep!159))) b!3745342))

(assert (= (and b!3745124 ((_ is Star!10969) (regex!6064 rNSep!159))) b!3745343))

(assert (= (and b!3745124 ((_ is Union!10969) (regex!6064 rNSep!159))) b!3745344))

(declare-fun e!2315901 () Bool)

(assert (=> b!3745142 (= tp!1142160 e!2315901)))

(declare-fun b!3745348 () Bool)

(declare-fun tp!1142259 () Bool)

(declare-fun tp!1142258 () Bool)

(assert (=> b!3745348 (= e!2315901 (and tp!1142259 tp!1142258))))

(declare-fun b!3745347 () Bool)

(declare-fun tp!1142256 () Bool)

(assert (=> b!3745347 (= e!2315901 tp!1142256)))

(declare-fun b!3745345 () Bool)

(assert (=> b!3745345 (= e!2315901 tp_is_empty!18953)))

(declare-fun b!3745346 () Bool)

(declare-fun tp!1142257 () Bool)

(declare-fun tp!1142255 () Bool)

(assert (=> b!3745346 (= e!2315901 (and tp!1142257 tp!1142255))))

(assert (= (and b!3745142 ((_ is ElementMatch!10969) (regex!6064 (h!45204 rules!4189)))) b!3745345))

(assert (= (and b!3745142 ((_ is Concat!17264) (regex!6064 (h!45204 rules!4189)))) b!3745346))

(assert (= (and b!3745142 ((_ is Star!10969) (regex!6064 (h!45204 rules!4189)))) b!3745347))

(assert (= (and b!3745142 ((_ is Union!10969) (regex!6064 (h!45204 rules!4189)))) b!3745348))

(declare-fun e!2315902 () Bool)

(assert (=> b!3745131 (= tp!1142169 e!2315902)))

(declare-fun b!3745352 () Bool)

(declare-fun tp!1142264 () Bool)

(declare-fun tp!1142263 () Bool)

(assert (=> b!3745352 (= e!2315902 (and tp!1142264 tp!1142263))))

(declare-fun b!3745351 () Bool)

(declare-fun tp!1142261 () Bool)

(assert (=> b!3745351 (= e!2315902 tp!1142261)))

(declare-fun b!3745349 () Bool)

(assert (=> b!3745349 (= e!2315902 tp_is_empty!18953)))

(declare-fun b!3745350 () Bool)

(declare-fun tp!1142262 () Bool)

(declare-fun tp!1142260 () Bool)

(assert (=> b!3745350 (= e!2315902 (and tp!1142262 tp!1142260))))

(assert (= (and b!3745131 ((_ is ElementMatch!10969) (regex!6064 rSep!159))) b!3745349))

(assert (= (and b!3745131 ((_ is Concat!17264) (regex!6064 rSep!159))) b!3745350))

(assert (= (and b!3745131 ((_ is Star!10969) (regex!6064 rSep!159))) b!3745351))

(assert (= (and b!3745131 ((_ is Union!10969) (regex!6064 rSep!159))) b!3745352))

(check-sat (not b!3745347) (not b!3745174) (not b_next!100311) (not d!1093206) (not b!3745344) (not b!3745256) b_and!277839 b_and!277863 (not b!3745283) (not b_next!100321) (not bm!274980) (not d!1093186) (not d!1093190) b_and!277847 b_and!277853 (not bm!274993) (not b_next!100315) (not b!3745339) (not bm!274992) (not b_next!100333) (not b_next!100309) (not b_next!100323) (not b_next!100313) (not b!3745279) (not b!3745173) (not b!3745154) (not b_next!100337) (not d!1093212) (not d!1093160) (not b!3745338) (not b!3745324) (not b!3745321) (not b!3745342) (not b!3745262) (not b!3745352) (not b_next!100339) b_and!277845 (not b!3745186) (not b!3745348) b_and!277867 (not b!3745322) b_and!277869 tp_is_empty!18953 (not bm!274981) b_and!277841 (not d!1093200) (not bm!274978) (not b!3745160) (not b!3745325) (not d!1093152) (not b_next!100317) (not b_next!100335) (not b!3745237) (not b_next!100319) (not bm!274990) (not b!3745239) b_and!277851 (not b!3745343) b_and!277865 (not b!3745350) (not d!1093172) (not d!1093216) (not d!1093192) b_and!277849 (not b!3745346) b_and!277843 (not b!3745258) (not b!3745340) (not b!3745351))
(check-sat (not b_next!100321) b_and!277847 (not b_next!100333) (not b_next!100311) (not b_next!100313) (not b_next!100337) b_and!277839 b_and!277867 b_and!277863 b_and!277865 b_and!277849 b_and!277843 b_and!277853 (not b_next!100315) (not b_next!100309) (not b_next!100323) (not b_next!100339) b_and!277845 b_and!277869 b_and!277841 (not b_next!100317) (not b_next!100335) (not b_next!100319) b_and!277851)
