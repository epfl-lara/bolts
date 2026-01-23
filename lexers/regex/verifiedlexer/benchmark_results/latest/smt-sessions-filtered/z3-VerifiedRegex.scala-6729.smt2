; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351886 () Bool)

(assert start!351886)

(declare-fun b!3748041 () Bool)

(declare-fun b_free!100017 () Bool)

(declare-fun b_next!100721 () Bool)

(assert (=> b!3748041 (= b_free!100017 (not b_next!100721))))

(declare-fun tp!1143707 () Bool)

(declare-fun b_and!278251 () Bool)

(assert (=> b!3748041 (= tp!1143707 b_and!278251)))

(declare-fun b_free!100019 () Bool)

(declare-fun b_next!100723 () Bool)

(assert (=> b!3748041 (= b_free!100019 (not b_next!100723))))

(declare-fun tp!1143709 () Bool)

(declare-fun b_and!278253 () Bool)

(assert (=> b!3748041 (= tp!1143709 b_and!278253)))

(declare-fun b!3748043 () Bool)

(declare-fun b_free!100021 () Bool)

(declare-fun b_next!100725 () Bool)

(assert (=> b!3748043 (= b_free!100021 (not b_next!100725))))

(declare-fun tp!1143713 () Bool)

(declare-fun b_and!278255 () Bool)

(assert (=> b!3748043 (= tp!1143713 b_and!278255)))

(declare-fun b_free!100023 () Bool)

(declare-fun b_next!100727 () Bool)

(assert (=> b!3748043 (= b_free!100023 (not b_next!100727))))

(declare-fun tp!1143714 () Bool)

(declare-fun b_and!278257 () Bool)

(assert (=> b!3748043 (= tp!1143714 b_and!278257)))

(declare-fun b!3748035 () Bool)

(declare-fun b_free!100025 () Bool)

(declare-fun b_next!100729 () Bool)

(assert (=> b!3748035 (= b_free!100025 (not b_next!100729))))

(declare-fun tp!1143716 () Bool)

(declare-fun b_and!278259 () Bool)

(assert (=> b!3748035 (= tp!1143716 b_and!278259)))

(declare-fun b_free!100027 () Bool)

(declare-fun b_next!100731 () Bool)

(assert (=> b!3748035 (= b_free!100027 (not b_next!100731))))

(declare-fun tp!1143715 () Bool)

(declare-fun b_and!278261 () Bool)

(assert (=> b!3748035 (= tp!1143715 b_and!278261)))

(declare-fun e!2317792 () Bool)

(assert (=> b!3748035 (= e!2317792 (and tp!1143716 tp!1143715))))

(declare-fun b!3748036 () Bool)

(declare-fun res!1519263 () Bool)

(declare-fun e!2317793 () Bool)

(assert (=> b!3748036 (=> (not res!1519263) (not e!2317793))))

(declare-datatypes ((List!40004 0))(
  ( (Nil!39880) (Cons!39880 (h!45300 (_ BitVec 16)) (t!302687 List!40004)) )
))
(declare-datatypes ((TokenValue!6322 0))(
  ( (FloatLiteralValue!12644 (text!44699 List!40004)) (TokenValueExt!6321 (__x!24861 Int)) (Broken!31610 (value!194162 List!40004)) (Object!6445) (End!6322) (Def!6322) (Underscore!6322) (Match!6322) (Else!6322) (Error!6322) (Case!6322) (If!6322) (Extends!6322) (Abstract!6322) (Class!6322) (Val!6322) (DelimiterValue!12644 (del!6382 List!40004)) (KeywordValue!6328 (value!194163 List!40004)) (CommentValue!12644 (value!194164 List!40004)) (WhitespaceValue!12644 (value!194165 List!40004)) (IndentationValue!6322 (value!194166 List!40004)) (String!45235) (Int32!6322) (Broken!31611 (value!194167 List!40004)) (Boolean!6323) (Unit!57697) (OperatorValue!6325 (op!6382 List!40004)) (IdentifierValue!12644 (value!194168 List!40004)) (IdentifierValue!12645 (value!194169 List!40004)) (WhitespaceValue!12645 (value!194170 List!40004)) (True!12644) (False!12644) (Broken!31612 (value!194171 List!40004)) (Broken!31613 (value!194172 List!40004)) (True!12645) (RightBrace!6322) (RightBracket!6322) (Colon!6322) (Null!6322) (Comma!6322) (LeftBracket!6322) (False!12645) (LeftBrace!6322) (ImaginaryLiteralValue!6322 (text!44700 List!40004)) (StringLiteralValue!18966 (value!194173 List!40004)) (EOFValue!6322 (value!194174 List!40004)) (IdentValue!6322 (value!194175 List!40004)) (DelimiterValue!12645 (value!194176 List!40004)) (DedentValue!6322 (value!194177 List!40004)) (NewLineValue!6322 (value!194178 List!40004)) (IntegerValue!18966 (value!194179 (_ BitVec 32)) (text!44701 List!40004)) (IntegerValue!18967 (value!194180 Int) (text!44702 List!40004)) (Times!6322) (Or!6322) (Equal!6322) (Minus!6322) (Broken!31614 (value!194181 List!40004)) (And!6322) (Div!6322) (LessEqual!6322) (Mod!6322) (Concat!17319) (Not!6322) (Plus!6322) (SpaceValue!6322 (value!194182 List!40004)) (IntegerValue!18968 (value!194183 Int) (text!44703 List!40004)) (StringLiteralValue!18967 (text!44704 List!40004)) (FloatLiteralValue!12645 (text!44705 List!40004)) (BytesLiteralValue!6322 (value!194184 List!40004)) (CommentValue!12645 (value!194185 List!40004)) (StringLiteralValue!18968 (value!194186 List!40004)) (ErrorTokenValue!6322 (msg!6383 List!40004)) )
))
(declare-datatypes ((C!22180 0))(
  ( (C!22181 (val!13138 Int)) )
))
(declare-datatypes ((List!40005 0))(
  ( (Nil!39881) (Cons!39881 (h!45301 C!22180) (t!302688 List!40005)) )
))
(declare-datatypes ((IArray!24383 0))(
  ( (IArray!24384 (innerList!12249 List!40005)) )
))
(declare-datatypes ((Conc!12189 0))(
  ( (Node!12189 (left!30874 Conc!12189) (right!31204 Conc!12189) (csize!24608 Int) (cheight!12400 Int)) (Leaf!18919 (xs!15391 IArray!24383) (csize!24609 Int)) (Empty!12189) )
))
(declare-datatypes ((BalanceConc!23992 0))(
  ( (BalanceConc!23993 (c!649004 Conc!12189)) )
))
(declare-datatypes ((TokenValueInjection!12072 0))(
  ( (TokenValueInjection!12073 (toValue!8440 Int) (toChars!8299 Int)) )
))
(declare-datatypes ((Regex!10997 0))(
  ( (ElementMatch!10997 (c!649005 C!22180)) (Concat!17320 (regOne!22506 Regex!10997) (regTwo!22506 Regex!10997)) (EmptyExpr!10997) (Star!10997 (reg!11326 Regex!10997)) (EmptyLang!10997) (Union!10997 (regOne!22507 Regex!10997) (regTwo!22507 Regex!10997)) )
))
(declare-datatypes ((String!45236 0))(
  ( (String!45237 (value!194187 String)) )
))
(declare-datatypes ((Rule!11984 0))(
  ( (Rule!11985 (regex!6092 Regex!10997) (tag!6952 String!45236) (isSeparator!6092 Bool) (transformation!6092 TokenValueInjection!12072)) )
))
(declare-datatypes ((List!40006 0))(
  ( (Nil!39882) (Cons!39882 (h!45302 Rule!11984) (t!302689 List!40006)) )
))
(declare-fun rules!4213 () List!40006)

(declare-fun rSep!170 () Rule!11984)

(declare-fun contains!8143 (List!40006 Rule!11984) Bool)

(assert (=> b!3748036 (= res!1519263 (contains!8143 rules!4213 rSep!170))))

(declare-fun b!3748037 () Bool)

(declare-fun res!1519262 () Bool)

(assert (=> b!3748037 (=> (not res!1519262) (not e!2317793))))

(declare-fun rNSep!170 () Rule!11984)

(declare-fun ruleDisjointCharsFromAllFromOtherType!965 (Rule!11984 List!40006) Bool)

(assert (=> b!3748037 (= res!1519262 (ruleDisjointCharsFromAllFromOtherType!965 rNSep!170 rules!4213))))

(declare-fun e!2317791 () Bool)

(declare-fun b!3748038 () Bool)

(declare-fun tp!1143708 () Bool)

(declare-fun inv!53387 (String!45236) Bool)

(declare-fun inv!53389 (TokenValueInjection!12072) Bool)

(assert (=> b!3748038 (= e!2317791 (and tp!1143708 (inv!53387 (tag!6952 (h!45302 rules!4213))) (inv!53389 (transformation!6092 (h!45302 rules!4213))) e!2317792))))

(declare-fun b!3748039 () Bool)

(declare-fun res!1519264 () Bool)

(assert (=> b!3748039 (=> (not res!1519264) (not e!2317793))))

(get-info :version)

(assert (=> b!3748039 (= res!1519264 (and (or (not ((_ is Cons!39882) rules!4213)) (not (= (h!45302 rules!4213) rSep!170))) (not ((_ is Cons!39882) rules!4213))))))

(declare-fun res!1519260 () Bool)

(assert (=> start!351886 (=> (not res!1519260) (not e!2317793))))

(declare-datatypes ((LexerInterface!5681 0))(
  ( (LexerInterfaceExt!5678 (__x!24862 Int)) (Lexer!5679) )
))
(declare-fun thiss!27193 () LexerInterface!5681)

(assert (=> start!351886 (= res!1519260 ((_ is Lexer!5679) thiss!27193))))

(assert (=> start!351886 e!2317793))

(declare-fun e!2317788 () Bool)

(assert (=> start!351886 e!2317788))

(declare-fun e!2317790 () Bool)

(assert (=> start!351886 e!2317790))

(assert (=> start!351886 true))

(declare-fun tp_is_empty!19009 () Bool)

(assert (=> start!351886 tp_is_empty!19009))

(declare-fun e!2317789 () Bool)

(assert (=> start!351886 e!2317789))

(declare-fun e!2317797 () Bool)

(declare-fun b!3748040 () Bool)

(declare-fun tp!1143712 () Bool)

(assert (=> b!3748040 (= e!2317788 (and tp!1143712 (inv!53387 (tag!6952 rNSep!170)) (inv!53389 (transformation!6092 rNSep!170)) e!2317797))))

(declare-fun e!2317795 () Bool)

(assert (=> b!3748041 (= e!2317795 (and tp!1143707 tp!1143709))))

(declare-fun b!3748042 () Bool)

(declare-fun res!1519265 () Bool)

(assert (=> b!3748042 (=> (not res!1519265) (not e!2317793))))

(declare-fun rulesInvariant!5078 (LexerInterface!5681 List!40006) Bool)

(assert (=> b!3748042 (= res!1519265 (rulesInvariant!5078 thiss!27193 rules!4213))))

(assert (=> b!3748043 (= e!2317797 (and tp!1143713 tp!1143714))))

(declare-fun b!3748044 () Bool)

(declare-fun tp!1143710 () Bool)

(assert (=> b!3748044 (= e!2317790 (and e!2317791 tp!1143710))))

(declare-fun b!3748045 () Bool)

(declare-fun res!1519261 () Bool)

(assert (=> b!3748045 (=> (not res!1519261) (not e!2317793))))

(assert (=> b!3748045 (= res!1519261 (and (not (isSeparator!6092 rNSep!170)) (isSeparator!6092 rSep!170)))))

(declare-fun b!3748046 () Bool)

(declare-fun tp!1143711 () Bool)

(assert (=> b!3748046 (= e!2317789 (and tp!1143711 (inv!53387 (tag!6952 rSep!170)) (inv!53389 (transformation!6092 rSep!170)) e!2317795))))

(declare-fun b!3748047 () Bool)

(declare-fun res!1519259 () Bool)

(assert (=> b!3748047 (=> (not res!1519259) (not e!2317793))))

(declare-fun c!6920 () C!22180)

(declare-fun contains!8144 (List!40005 C!22180) Bool)

(declare-fun usedCharacters!1260 (Regex!10997) List!40005)

(assert (=> b!3748047 (= res!1519259 (contains!8144 (usedCharacters!1260 (regex!6092 rNSep!170)) c!6920))))

(declare-fun b!3748048 () Bool)

(assert (=> b!3748048 (= e!2317793 (contains!8144 (usedCharacters!1260 (regex!6092 rSep!170)) c!6920))))

(assert (= (and start!351886 res!1519260) b!3748042))

(assert (= (and b!3748042 res!1519265) b!3748036))

(assert (= (and b!3748036 res!1519263) b!3748047))

(assert (= (and b!3748047 res!1519259) b!3748045))

(assert (= (and b!3748045 res!1519261) b!3748037))

(assert (= (and b!3748037 res!1519262) b!3748039))

(assert (= (and b!3748039 res!1519264) b!3748048))

(assert (= b!3748040 b!3748043))

(assert (= start!351886 b!3748040))

(assert (= b!3748038 b!3748035))

(assert (= b!3748044 b!3748038))

(assert (= (and start!351886 ((_ is Cons!39882) rules!4213)) b!3748044))

(assert (= b!3748046 b!3748041))

(assert (= start!351886 b!3748046))

(declare-fun m!4239963 () Bool)

(assert (=> b!3748042 m!4239963))

(declare-fun m!4239965 () Bool)

(assert (=> b!3748040 m!4239965))

(declare-fun m!4239967 () Bool)

(assert (=> b!3748040 m!4239967))

(declare-fun m!4239969 () Bool)

(assert (=> b!3748048 m!4239969))

(assert (=> b!3748048 m!4239969))

(declare-fun m!4239971 () Bool)

(assert (=> b!3748048 m!4239971))

(declare-fun m!4239973 () Bool)

(assert (=> b!3748047 m!4239973))

(assert (=> b!3748047 m!4239973))

(declare-fun m!4239975 () Bool)

(assert (=> b!3748047 m!4239975))

(declare-fun m!4239977 () Bool)

(assert (=> b!3748046 m!4239977))

(declare-fun m!4239979 () Bool)

(assert (=> b!3748046 m!4239979))

(declare-fun m!4239981 () Bool)

(assert (=> b!3748036 m!4239981))

(declare-fun m!4239983 () Bool)

(assert (=> b!3748038 m!4239983))

(declare-fun m!4239985 () Bool)

(assert (=> b!3748038 m!4239985))

(declare-fun m!4239987 () Bool)

(assert (=> b!3748037 m!4239987))

(check-sat b_and!278259 (not b!3748038) (not b!3748042) (not b!3748044) b_and!278253 (not b!3748037) (not b_next!100721) (not b!3748048) b_and!278255 b_and!278257 b_and!278251 (not b_next!100725) b_and!278261 (not b!3748046) (not b_next!100723) (not b_next!100729) tp_is_empty!19009 (not b!3748040) (not b!3748036) (not b_next!100731) (not b_next!100727) (not b!3748047))
(check-sat b_and!278261 b_and!278259 b_and!278253 (not b_next!100731) (not b_next!100721) b_and!278255 b_and!278257 b_and!278251 (not b_next!100725) (not b_next!100727) (not b_next!100723) (not b_next!100729))
(get-model)

(declare-fun d!1093674 () Bool)

(assert (=> d!1093674 (= (inv!53387 (tag!6952 (h!45302 rules!4213))) (= (mod (str.len (value!194187 (tag!6952 (h!45302 rules!4213)))) 2) 0))))

(assert (=> b!3748038 d!1093674))

(declare-fun d!1093676 () Bool)

(declare-fun res!1519285 () Bool)

(declare-fun e!2317810 () Bool)

(assert (=> d!1093676 (=> (not res!1519285) (not e!2317810))))

(declare-fun semiInverseModEq!2608 (Int Int) Bool)

(assert (=> d!1093676 (= res!1519285 (semiInverseModEq!2608 (toChars!8299 (transformation!6092 (h!45302 rules!4213))) (toValue!8440 (transformation!6092 (h!45302 rules!4213)))))))

(assert (=> d!1093676 (= (inv!53389 (transformation!6092 (h!45302 rules!4213))) e!2317810)))

(declare-fun b!3748060 () Bool)

(declare-fun equivClasses!2507 (Int Int) Bool)

(assert (=> b!3748060 (= e!2317810 (equivClasses!2507 (toChars!8299 (transformation!6092 (h!45302 rules!4213))) (toValue!8440 (transformation!6092 (h!45302 rules!4213)))))))

(assert (= (and d!1093676 res!1519285) b!3748060))

(declare-fun m!4239999 () Bool)

(assert (=> d!1093676 m!4239999))

(declare-fun m!4240001 () Bool)

(assert (=> b!3748060 m!4240001))

(assert (=> b!3748038 d!1093676))

(declare-fun b!3748093 () Bool)

(declare-fun e!2317830 () Bool)

(declare-fun e!2317831 () Bool)

(assert (=> b!3748093 (= e!2317830 e!2317831)))

(declare-fun res!1519291 () Bool)

(declare-fun rulesUseDisjointChars!386 (Rule!11984 Rule!11984) Bool)

(assert (=> b!3748093 (= res!1519291 (rulesUseDisjointChars!386 rNSep!170 (h!45302 rules!4213)))))

(assert (=> b!3748093 (=> (not res!1519291) (not e!2317831))))

(declare-fun bm!275226 () Bool)

(declare-fun call!275231 () Bool)

(assert (=> bm!275226 (= call!275231 (ruleDisjointCharsFromAllFromOtherType!965 rNSep!170 (t!302689 rules!4213)))))

(declare-fun b!3748094 () Bool)

(declare-fun e!2317829 () Bool)

(assert (=> b!3748094 (= e!2317829 call!275231)))

(declare-fun d!1093680 () Bool)

(declare-fun c!649020 () Bool)

(assert (=> d!1093680 (= c!649020 (and ((_ is Cons!39882) rules!4213) (not (= (isSeparator!6092 (h!45302 rules!4213)) (isSeparator!6092 rNSep!170)))))))

(assert (=> d!1093680 (= (ruleDisjointCharsFromAllFromOtherType!965 rNSep!170 rules!4213) e!2317830)))

(declare-fun b!3748095 () Bool)

(assert (=> b!3748095 (= e!2317831 call!275231)))

(declare-fun b!3748096 () Bool)

(assert (=> b!3748096 (= e!2317830 e!2317829)))

(declare-fun res!1519290 () Bool)

(assert (=> b!3748096 (= res!1519290 (not ((_ is Cons!39882) rules!4213)))))

(assert (=> b!3748096 (=> res!1519290 e!2317829)))

(assert (= (and d!1093680 c!649020) b!3748093))

(assert (= (and d!1093680 (not c!649020)) b!3748096))

(assert (= (and b!3748093 res!1519291) b!3748095))

(assert (= (and b!3748096 (not res!1519290)) b!3748094))

(assert (= (or b!3748095 b!3748094) bm!275226))

(declare-fun m!4240009 () Bool)

(assert (=> b!3748093 m!4240009))

(declare-fun m!4240011 () Bool)

(assert (=> bm!275226 m!4240011))

(assert (=> b!3748037 d!1093680))

(declare-fun d!1093684 () Bool)

(declare-fun lt!1299657 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5851 (List!40005) (InoxSet C!22180))

(assert (=> d!1093684 (= lt!1299657 (select (content!5851 (usedCharacters!1260 (regex!6092 rSep!170))) c!6920))))

(declare-fun e!2317841 () Bool)

(assert (=> d!1093684 (= lt!1299657 e!2317841)))

(declare-fun res!1519301 () Bool)

(assert (=> d!1093684 (=> (not res!1519301) (not e!2317841))))

(assert (=> d!1093684 (= res!1519301 ((_ is Cons!39881) (usedCharacters!1260 (regex!6092 rSep!170))))))

(assert (=> d!1093684 (= (contains!8144 (usedCharacters!1260 (regex!6092 rSep!170)) c!6920) lt!1299657)))

(declare-fun b!3748106 () Bool)

(declare-fun e!2317842 () Bool)

(assert (=> b!3748106 (= e!2317841 e!2317842)))

(declare-fun res!1519302 () Bool)

(assert (=> b!3748106 (=> res!1519302 e!2317842)))

(assert (=> b!3748106 (= res!1519302 (= (h!45301 (usedCharacters!1260 (regex!6092 rSep!170))) c!6920))))

(declare-fun b!3748107 () Bool)

(assert (=> b!3748107 (= e!2317842 (contains!8144 (t!302688 (usedCharacters!1260 (regex!6092 rSep!170))) c!6920))))

(assert (= (and d!1093684 res!1519301) b!3748106))

(assert (= (and b!3748106 (not res!1519302)) b!3748107))

(assert (=> d!1093684 m!4239969))

(declare-fun m!4240023 () Bool)

(assert (=> d!1093684 m!4240023))

(declare-fun m!4240025 () Bool)

(assert (=> d!1093684 m!4240025))

(declare-fun m!4240027 () Bool)

(assert (=> b!3748107 m!4240027))

(assert (=> b!3748048 d!1093684))

(declare-fun b!3748148 () Bool)

(declare-fun e!2317872 () List!40005)

(assert (=> b!3748148 (= e!2317872 (Cons!39881 (c!649005 (regex!6092 rSep!170)) Nil!39881))))

(declare-fun call!275247 () List!40005)

(declare-fun c!649036 () Bool)

(declare-fun c!649038 () Bool)

(declare-fun bm!275241 () Bool)

(assert (=> bm!275241 (= call!275247 (usedCharacters!1260 (ite c!649036 (reg!11326 (regex!6092 rSep!170)) (ite c!649038 (regOne!22507 (regex!6092 rSep!170)) (regOne!22506 (regex!6092 rSep!170))))))))

(declare-fun b!3748149 () Bool)

(assert (=> b!3748149 (= c!649036 ((_ is Star!10997) (regex!6092 rSep!170)))))

(declare-fun e!2317869 () List!40005)

(assert (=> b!3748149 (= e!2317872 e!2317869)))

(declare-fun bm!275242 () Bool)

(declare-fun call!275246 () List!40005)

(declare-fun call!275249 () List!40005)

(declare-fun call!275248 () List!40005)

(declare-fun ++!9895 (List!40005 List!40005) List!40005)

(assert (=> bm!275242 (= call!275246 (++!9895 call!275249 call!275248))))

(declare-fun b!3748150 () Bool)

(declare-fun e!2317871 () List!40005)

(assert (=> b!3748150 (= e!2317871 call!275246)))

(declare-fun bm!275243 () Bool)

(assert (=> bm!275243 (= call!275248 (usedCharacters!1260 (ite c!649038 (regTwo!22507 (regex!6092 rSep!170)) (regTwo!22506 (regex!6092 rSep!170)))))))

(declare-fun b!3748152 () Bool)

(assert (=> b!3748152 (= e!2317871 call!275246)))

(declare-fun b!3748153 () Bool)

(assert (=> b!3748153 (= e!2317869 call!275247)))

(declare-fun bm!275244 () Bool)

(assert (=> bm!275244 (= call!275249 call!275247)))

(declare-fun b!3748154 () Bool)

(declare-fun e!2317870 () List!40005)

(assert (=> b!3748154 (= e!2317870 Nil!39881)))

(declare-fun b!3748155 () Bool)

(assert (=> b!3748155 (= e!2317869 e!2317871)))

(assert (=> b!3748155 (= c!649038 ((_ is Union!10997) (regex!6092 rSep!170)))))

(declare-fun b!3748151 () Bool)

(assert (=> b!3748151 (= e!2317870 e!2317872)))

(declare-fun c!649037 () Bool)

(assert (=> b!3748151 (= c!649037 ((_ is ElementMatch!10997) (regex!6092 rSep!170)))))

(declare-fun d!1093690 () Bool)

(declare-fun c!649035 () Bool)

(assert (=> d!1093690 (= c!649035 (or ((_ is EmptyExpr!10997) (regex!6092 rSep!170)) ((_ is EmptyLang!10997) (regex!6092 rSep!170))))))

(assert (=> d!1093690 (= (usedCharacters!1260 (regex!6092 rSep!170)) e!2317870)))

(assert (= (and d!1093690 c!649035) b!3748154))

(assert (= (and d!1093690 (not c!649035)) b!3748151))

(assert (= (and b!3748151 c!649037) b!3748148))

(assert (= (and b!3748151 (not c!649037)) b!3748149))

(assert (= (and b!3748149 c!649036) b!3748153))

(assert (= (and b!3748149 (not c!649036)) b!3748155))

(assert (= (and b!3748155 c!649038) b!3748150))

(assert (= (and b!3748155 (not c!649038)) b!3748152))

(assert (= (or b!3748150 b!3748152) bm!275244))

(assert (= (or b!3748150 b!3748152) bm!275243))

(assert (= (or b!3748150 b!3748152) bm!275242))

(assert (= (or b!3748153 bm!275244) bm!275241))

(declare-fun m!4240049 () Bool)

(assert (=> bm!275241 m!4240049))

(declare-fun m!4240051 () Bool)

(assert (=> bm!275242 m!4240051))

(declare-fun m!4240053 () Bool)

(assert (=> bm!275243 m!4240053))

(assert (=> b!3748048 d!1093690))

(declare-fun d!1093704 () Bool)

(declare-fun lt!1299661 () Bool)

(assert (=> d!1093704 (= lt!1299661 (select (content!5851 (usedCharacters!1260 (regex!6092 rNSep!170))) c!6920))))

(declare-fun e!2317873 () Bool)

(assert (=> d!1093704 (= lt!1299661 e!2317873)))

(declare-fun res!1519315 () Bool)

(assert (=> d!1093704 (=> (not res!1519315) (not e!2317873))))

(assert (=> d!1093704 (= res!1519315 ((_ is Cons!39881) (usedCharacters!1260 (regex!6092 rNSep!170))))))

(assert (=> d!1093704 (= (contains!8144 (usedCharacters!1260 (regex!6092 rNSep!170)) c!6920) lt!1299661)))

(declare-fun b!3748156 () Bool)

(declare-fun e!2317874 () Bool)

(assert (=> b!3748156 (= e!2317873 e!2317874)))

(declare-fun res!1519316 () Bool)

(assert (=> b!3748156 (=> res!1519316 e!2317874)))

(assert (=> b!3748156 (= res!1519316 (= (h!45301 (usedCharacters!1260 (regex!6092 rNSep!170))) c!6920))))

(declare-fun b!3748157 () Bool)

(assert (=> b!3748157 (= e!2317874 (contains!8144 (t!302688 (usedCharacters!1260 (regex!6092 rNSep!170))) c!6920))))

(assert (= (and d!1093704 res!1519315) b!3748156))

(assert (= (and b!3748156 (not res!1519316)) b!3748157))

(assert (=> d!1093704 m!4239973))

(declare-fun m!4240055 () Bool)

(assert (=> d!1093704 m!4240055))

(declare-fun m!4240057 () Bool)

(assert (=> d!1093704 m!4240057))

(declare-fun m!4240059 () Bool)

(assert (=> b!3748157 m!4240059))

(assert (=> b!3748047 d!1093704))

(declare-fun b!3748162 () Bool)

(declare-fun e!2317881 () List!40005)

(assert (=> b!3748162 (= e!2317881 (Cons!39881 (c!649005 (regex!6092 rNSep!170)) Nil!39881))))

(declare-fun call!275252 () List!40005)

(declare-fun c!649041 () Bool)

(declare-fun c!649043 () Bool)

(declare-fun bm!275246 () Bool)

(assert (=> bm!275246 (= call!275252 (usedCharacters!1260 (ite c!649041 (reg!11326 (regex!6092 rNSep!170)) (ite c!649043 (regOne!22507 (regex!6092 rNSep!170)) (regOne!22506 (regex!6092 rNSep!170))))))))

(declare-fun b!3748163 () Bool)

(assert (=> b!3748163 (= c!649041 ((_ is Star!10997) (regex!6092 rNSep!170)))))

(declare-fun e!2317878 () List!40005)

(assert (=> b!3748163 (= e!2317881 e!2317878)))

(declare-fun bm!275247 () Bool)

(declare-fun call!275251 () List!40005)

(declare-fun call!275254 () List!40005)

(declare-fun call!275253 () List!40005)

(assert (=> bm!275247 (= call!275251 (++!9895 call!275254 call!275253))))

(declare-fun b!3748164 () Bool)

(declare-fun e!2317880 () List!40005)

(assert (=> b!3748164 (= e!2317880 call!275251)))

(declare-fun bm!275248 () Bool)

(assert (=> bm!275248 (= call!275253 (usedCharacters!1260 (ite c!649043 (regTwo!22507 (regex!6092 rNSep!170)) (regTwo!22506 (regex!6092 rNSep!170)))))))

(declare-fun b!3748166 () Bool)

(assert (=> b!3748166 (= e!2317880 call!275251)))

(declare-fun b!3748167 () Bool)

(assert (=> b!3748167 (= e!2317878 call!275252)))

(declare-fun bm!275249 () Bool)

(assert (=> bm!275249 (= call!275254 call!275252)))

(declare-fun b!3748168 () Bool)

(declare-fun e!2317879 () List!40005)

(assert (=> b!3748168 (= e!2317879 Nil!39881)))

(declare-fun b!3748169 () Bool)

(assert (=> b!3748169 (= e!2317878 e!2317880)))

(assert (=> b!3748169 (= c!649043 ((_ is Union!10997) (regex!6092 rNSep!170)))))

(declare-fun b!3748165 () Bool)

(assert (=> b!3748165 (= e!2317879 e!2317881)))

(declare-fun c!649042 () Bool)

(assert (=> b!3748165 (= c!649042 ((_ is ElementMatch!10997) (regex!6092 rNSep!170)))))

(declare-fun d!1093706 () Bool)

(declare-fun c!649040 () Bool)

(assert (=> d!1093706 (= c!649040 (or ((_ is EmptyExpr!10997) (regex!6092 rNSep!170)) ((_ is EmptyLang!10997) (regex!6092 rNSep!170))))))

(assert (=> d!1093706 (= (usedCharacters!1260 (regex!6092 rNSep!170)) e!2317879)))

(assert (= (and d!1093706 c!649040) b!3748168))

(assert (= (and d!1093706 (not c!649040)) b!3748165))

(assert (= (and b!3748165 c!649042) b!3748162))

(assert (= (and b!3748165 (not c!649042)) b!3748163))

(assert (= (and b!3748163 c!649041) b!3748167))

(assert (= (and b!3748163 (not c!649041)) b!3748169))

(assert (= (and b!3748169 c!649043) b!3748164))

(assert (= (and b!3748169 (not c!649043)) b!3748166))

(assert (= (or b!3748164 b!3748166) bm!275249))

(assert (= (or b!3748164 b!3748166) bm!275248))

(assert (= (or b!3748164 b!3748166) bm!275247))

(assert (= (or b!3748167 bm!275249) bm!275246))

(declare-fun m!4240065 () Bool)

(assert (=> bm!275246 m!4240065))

(declare-fun m!4240067 () Bool)

(assert (=> bm!275247 m!4240067))

(declare-fun m!4240069 () Bool)

(assert (=> bm!275248 m!4240069))

(assert (=> b!3748047 d!1093706))

(declare-fun d!1093708 () Bool)

(declare-fun res!1519321 () Bool)

(declare-fun e!2317900 () Bool)

(assert (=> d!1093708 (=> (not res!1519321) (not e!2317900))))

(declare-fun rulesValid!2365 (LexerInterface!5681 List!40006) Bool)

(assert (=> d!1093708 (= res!1519321 (rulesValid!2365 thiss!27193 rules!4213))))

(assert (=> d!1093708 (= (rulesInvariant!5078 thiss!27193 rules!4213) e!2317900)))

(declare-fun b!3748201 () Bool)

(declare-datatypes ((List!40008 0))(
  ( (Nil!39884) (Cons!39884 (h!45304 String!45236) (t!302691 List!40008)) )
))
(declare-fun noDuplicateTag!2366 (LexerInterface!5681 List!40006 List!40008) Bool)

(assert (=> b!3748201 (= e!2317900 (noDuplicateTag!2366 thiss!27193 rules!4213 Nil!39884))))

(assert (= (and d!1093708 res!1519321) b!3748201))

(declare-fun m!4240075 () Bool)

(assert (=> d!1093708 m!4240075))

(declare-fun m!4240077 () Bool)

(assert (=> b!3748201 m!4240077))

(assert (=> b!3748042 d!1093708))

(declare-fun d!1093710 () Bool)

(declare-fun lt!1299664 () Bool)

(declare-fun content!5853 (List!40006) (InoxSet Rule!11984))

(assert (=> d!1093710 (= lt!1299664 (select (content!5853 rules!4213) rSep!170))))

(declare-fun e!2317906 () Bool)

(assert (=> d!1093710 (= lt!1299664 e!2317906)))

(declare-fun res!1519326 () Bool)

(assert (=> d!1093710 (=> (not res!1519326) (not e!2317906))))

(assert (=> d!1093710 (= res!1519326 ((_ is Cons!39882) rules!4213))))

(assert (=> d!1093710 (= (contains!8143 rules!4213 rSep!170) lt!1299664)))

(declare-fun b!3748210 () Bool)

(declare-fun e!2317907 () Bool)

(assert (=> b!3748210 (= e!2317906 e!2317907)))

(declare-fun res!1519327 () Bool)

(assert (=> b!3748210 (=> res!1519327 e!2317907)))

(assert (=> b!3748210 (= res!1519327 (= (h!45302 rules!4213) rSep!170))))

(declare-fun b!3748211 () Bool)

(assert (=> b!3748211 (= e!2317907 (contains!8143 (t!302689 rules!4213) rSep!170))))

(assert (= (and d!1093710 res!1519326) b!3748210))

(assert (= (and b!3748210 (not res!1519327)) b!3748211))

(declare-fun m!4240079 () Bool)

(assert (=> d!1093710 m!4240079))

(declare-fun m!4240081 () Bool)

(assert (=> d!1093710 m!4240081))

(declare-fun m!4240083 () Bool)

(assert (=> b!3748211 m!4240083))

(assert (=> b!3748036 d!1093710))

(declare-fun d!1093712 () Bool)

(assert (=> d!1093712 (= (inv!53387 (tag!6952 rSep!170)) (= (mod (str.len (value!194187 (tag!6952 rSep!170))) 2) 0))))

(assert (=> b!3748046 d!1093712))

(declare-fun d!1093714 () Bool)

(declare-fun res!1519328 () Bool)

(declare-fun e!2317908 () Bool)

(assert (=> d!1093714 (=> (not res!1519328) (not e!2317908))))

(assert (=> d!1093714 (= res!1519328 (semiInverseModEq!2608 (toChars!8299 (transformation!6092 rSep!170)) (toValue!8440 (transformation!6092 rSep!170))))))

(assert (=> d!1093714 (= (inv!53389 (transformation!6092 rSep!170)) e!2317908)))

(declare-fun b!3748212 () Bool)

(assert (=> b!3748212 (= e!2317908 (equivClasses!2507 (toChars!8299 (transformation!6092 rSep!170)) (toValue!8440 (transformation!6092 rSep!170))))))

(assert (= (and d!1093714 res!1519328) b!3748212))

(declare-fun m!4240085 () Bool)

(assert (=> d!1093714 m!4240085))

(declare-fun m!4240087 () Bool)

(assert (=> b!3748212 m!4240087))

(assert (=> b!3748046 d!1093714))

(declare-fun d!1093716 () Bool)

(assert (=> d!1093716 (= (inv!53387 (tag!6952 rNSep!170)) (= (mod (str.len (value!194187 (tag!6952 rNSep!170))) 2) 0))))

(assert (=> b!3748040 d!1093716))

(declare-fun d!1093718 () Bool)

(declare-fun res!1519329 () Bool)

(declare-fun e!2317909 () Bool)

(assert (=> d!1093718 (=> (not res!1519329) (not e!2317909))))

(assert (=> d!1093718 (= res!1519329 (semiInverseModEq!2608 (toChars!8299 (transformation!6092 rNSep!170)) (toValue!8440 (transformation!6092 rNSep!170))))))

(assert (=> d!1093718 (= (inv!53389 (transformation!6092 rNSep!170)) e!2317909)))

(declare-fun b!3748213 () Bool)

(assert (=> b!3748213 (= e!2317909 (equivClasses!2507 (toChars!8299 (transformation!6092 rNSep!170)) (toValue!8440 (transformation!6092 rNSep!170))))))

(assert (= (and d!1093718 res!1519329) b!3748213))

(declare-fun m!4240089 () Bool)

(assert (=> d!1093718 m!4240089))

(declare-fun m!4240091 () Bool)

(assert (=> b!3748213 m!4240091))

(assert (=> b!3748040 d!1093718))

(declare-fun b!3748224 () Bool)

(declare-fun b_free!100033 () Bool)

(declare-fun b_next!100737 () Bool)

(assert (=> b!3748224 (= b_free!100033 (not b_next!100737))))

(declare-fun tp!1143762 () Bool)

(declare-fun b_and!278267 () Bool)

(assert (=> b!3748224 (= tp!1143762 b_and!278267)))

(declare-fun b_free!100035 () Bool)

(declare-fun b_next!100739 () Bool)

(assert (=> b!3748224 (= b_free!100035 (not b_next!100739))))

(declare-fun tp!1143763 () Bool)

(declare-fun b_and!278269 () Bool)

(assert (=> b!3748224 (= tp!1143763 b_and!278269)))

(declare-fun e!2317919 () Bool)

(assert (=> b!3748224 (= e!2317919 (and tp!1143762 tp!1143763))))

(declare-fun b!3748223 () Bool)

(declare-fun e!2317921 () Bool)

(declare-fun tp!1143764 () Bool)

(assert (=> b!3748223 (= e!2317921 (and tp!1143764 (inv!53387 (tag!6952 (h!45302 (t!302689 rules!4213)))) (inv!53389 (transformation!6092 (h!45302 (t!302689 rules!4213)))) e!2317919))))

(declare-fun b!3748222 () Bool)

(declare-fun e!2317920 () Bool)

(declare-fun tp!1143765 () Bool)

(assert (=> b!3748222 (= e!2317920 (and e!2317921 tp!1143765))))

(assert (=> b!3748044 (= tp!1143710 e!2317920)))

(assert (= b!3748223 b!3748224))

(assert (= b!3748222 b!3748223))

(assert (= (and b!3748044 ((_ is Cons!39882) (t!302689 rules!4213))) b!3748222))

(declare-fun m!4240093 () Bool)

(assert (=> b!3748223 m!4240093))

(declare-fun m!4240095 () Bool)

(assert (=> b!3748223 m!4240095))

(declare-fun b!3748237 () Bool)

(declare-fun e!2317924 () Bool)

(declare-fun tp!1143780 () Bool)

(assert (=> b!3748237 (= e!2317924 tp!1143780)))

(assert (=> b!3748038 (= tp!1143708 e!2317924)))

(declare-fun b!3748236 () Bool)

(declare-fun tp!1143776 () Bool)

(declare-fun tp!1143779 () Bool)

(assert (=> b!3748236 (= e!2317924 (and tp!1143776 tp!1143779))))

(declare-fun b!3748238 () Bool)

(declare-fun tp!1143777 () Bool)

(declare-fun tp!1143778 () Bool)

(assert (=> b!3748238 (= e!2317924 (and tp!1143777 tp!1143778))))

(declare-fun b!3748235 () Bool)

(assert (=> b!3748235 (= e!2317924 tp_is_empty!19009)))

(assert (= (and b!3748038 ((_ is ElementMatch!10997) (regex!6092 (h!45302 rules!4213)))) b!3748235))

(assert (= (and b!3748038 ((_ is Concat!17320) (regex!6092 (h!45302 rules!4213)))) b!3748236))

(assert (= (and b!3748038 ((_ is Star!10997) (regex!6092 (h!45302 rules!4213)))) b!3748237))

(assert (= (and b!3748038 ((_ is Union!10997) (regex!6092 (h!45302 rules!4213)))) b!3748238))

(declare-fun b!3748241 () Bool)

(declare-fun e!2317925 () Bool)

(declare-fun tp!1143785 () Bool)

(assert (=> b!3748241 (= e!2317925 tp!1143785)))

(assert (=> b!3748046 (= tp!1143711 e!2317925)))

(declare-fun b!3748240 () Bool)

(declare-fun tp!1143781 () Bool)

(declare-fun tp!1143784 () Bool)

(assert (=> b!3748240 (= e!2317925 (and tp!1143781 tp!1143784))))

(declare-fun b!3748242 () Bool)

(declare-fun tp!1143782 () Bool)

(declare-fun tp!1143783 () Bool)

(assert (=> b!3748242 (= e!2317925 (and tp!1143782 tp!1143783))))

(declare-fun b!3748239 () Bool)

(assert (=> b!3748239 (= e!2317925 tp_is_empty!19009)))

(assert (= (and b!3748046 ((_ is ElementMatch!10997) (regex!6092 rSep!170))) b!3748239))

(assert (= (and b!3748046 ((_ is Concat!17320) (regex!6092 rSep!170))) b!3748240))

(assert (= (and b!3748046 ((_ is Star!10997) (regex!6092 rSep!170))) b!3748241))

(assert (= (and b!3748046 ((_ is Union!10997) (regex!6092 rSep!170))) b!3748242))

(declare-fun b!3748245 () Bool)

(declare-fun e!2317926 () Bool)

(declare-fun tp!1143790 () Bool)

(assert (=> b!3748245 (= e!2317926 tp!1143790)))

(assert (=> b!3748040 (= tp!1143712 e!2317926)))

(declare-fun b!3748244 () Bool)

(declare-fun tp!1143786 () Bool)

(declare-fun tp!1143789 () Bool)

(assert (=> b!3748244 (= e!2317926 (and tp!1143786 tp!1143789))))

(declare-fun b!3748246 () Bool)

(declare-fun tp!1143787 () Bool)

(declare-fun tp!1143788 () Bool)

(assert (=> b!3748246 (= e!2317926 (and tp!1143787 tp!1143788))))

(declare-fun b!3748243 () Bool)

(assert (=> b!3748243 (= e!2317926 tp_is_empty!19009)))

(assert (= (and b!3748040 ((_ is ElementMatch!10997) (regex!6092 rNSep!170))) b!3748243))

(assert (= (and b!3748040 ((_ is Concat!17320) (regex!6092 rNSep!170))) b!3748244))

(assert (= (and b!3748040 ((_ is Star!10997) (regex!6092 rNSep!170))) b!3748245))

(assert (= (and b!3748040 ((_ is Union!10997) (regex!6092 rNSep!170))) b!3748246))

(check-sat (not b_next!100737) (not b!3748201) (not b!3748211) (not d!1093718) (not d!1093676) (not b!3748107) (not bm!275246) (not b!3748093) b_and!278255 (not bm!275248) (not b_next!100727) (not bm!275226) b_and!278261 (not b!3748237) (not d!1093704) b_and!278267 b_and!278259 (not d!1093708) (not d!1093714) (not b!3748236) (not b!3748244) (not b_next!100723) (not b_next!100729) (not b!3748241) (not b!3748212) tp_is_empty!19009 b_and!278253 (not bm!275247) (not b_next!100739) (not bm!275242) (not b!3748246) (not b!3748222) (not b!3748223) (not b_next!100731) (not d!1093684) (not b_next!100721) (not b!3748060) (not bm!275243) b_and!278257 (not b!3748245) (not b!3748240) b_and!278251 (not b!3748157) (not b_next!100725) (not bm!275241) (not b!3748242) b_and!278269 (not b!3748238) (not b!3748213) (not d!1093710))
(check-sat b_and!278261 b_and!278267 b_and!278259 (not b_next!100737) (not b_next!100731) (not b_next!100721) b_and!278255 b_and!278257 b_and!278251 (not b_next!100725) b_and!278269 (not b_next!100727) (not b_next!100723) (not b_next!100729) b_and!278253 (not b_next!100739))
