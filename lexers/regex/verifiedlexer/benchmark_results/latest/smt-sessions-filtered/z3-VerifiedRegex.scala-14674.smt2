; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757360 () Bool)

(assert start!757360)

(declare-fun b!8044025 () Bool)

(declare-fun b_free!136103 () Bool)

(declare-fun b_next!136893 () Bool)

(assert (=> b!8044025 (= b_free!136103 (not b_next!136893))))

(declare-fun tp!2410627 () Bool)

(declare-fun b_and!354539 () Bool)

(assert (=> b!8044025 (= tp!2410627 b_and!354539)))

(declare-fun b_free!136105 () Bool)

(declare-fun b_next!136895 () Bool)

(assert (=> b!8044025 (= b_free!136105 (not b_next!136895))))

(declare-fun tp!2410622 () Bool)

(declare-fun b_and!354541 () Bool)

(assert (=> b!8044025 (= tp!2410622 b_and!354541)))

(declare-fun b!8044018 () Bool)

(declare-fun b_free!136107 () Bool)

(declare-fun b_next!136897 () Bool)

(assert (=> b!8044018 (= b_free!136107 (not b_next!136897))))

(declare-fun tp!2410628 () Bool)

(declare-fun b_and!354543 () Bool)

(assert (=> b!8044018 (= tp!2410628 b_and!354543)))

(declare-fun b_free!136109 () Bool)

(declare-fun b_next!136899 () Bool)

(assert (=> b!8044018 (= b_free!136109 (not b_next!136899))))

(declare-fun tp!2410624 () Bool)

(declare-fun b_and!354545 () Bool)

(assert (=> b!8044018 (= tp!2410624 b_and!354545)))

(declare-fun b!8044030 () Bool)

(declare-fun b_free!136111 () Bool)

(declare-fun b_next!136901 () Bool)

(assert (=> b!8044030 (= b_free!136111 (not b_next!136901))))

(declare-fun tp!2410631 () Bool)

(declare-fun b_and!354547 () Bool)

(assert (=> b!8044030 (= tp!2410631 b_and!354547)))

(declare-fun b_free!136113 () Bool)

(declare-fun b_next!136903 () Bool)

(assert (=> b!8044030 (= b_free!136113 (not b_next!136903))))

(declare-fun tp!2410625 () Bool)

(declare-fun b_and!354549 () Bool)

(assert (=> b!8044030 (= tp!2410625 b_and!354549)))

(declare-fun e!4738604 () Bool)

(assert (=> b!8044018 (= e!4738604 (and tp!2410628 tp!2410624))))

(declare-fun b!8044019 () Bool)

(declare-fun res!3179763 () Bool)

(declare-fun e!4738596 () Bool)

(assert (=> b!8044019 (=> (not res!3179763) (not e!4738596))))

(declare-datatypes ((C!43940 0))(
  ( (C!43941 (val!32746 Int)) )
))
(declare-datatypes ((List!75340 0))(
  ( (Nil!75214) (Cons!75214 (h!81662 C!43940) (t!391110 List!75340)) )
))
(declare-datatypes ((IArray!32057 0))(
  ( (IArray!32058 (innerList!16086 List!75340)) )
))
(declare-datatypes ((Conc!15998 0))(
  ( (Node!15998 (left!57320 Conc!15998) (right!57650 Conc!15998) (csize!32226 Int) (cheight!16209 Int)) (Leaf!30673 (xs!19396 IArray!32057) (csize!32227 Int)) (Empty!15998) )
))
(declare-datatypes ((String!85023 0))(
  ( (String!85024 (value!291841 String)) )
))
(declare-datatypes ((List!75341 0))(
  ( (Nil!75215) (Cons!75215 (h!81663 (_ BitVec 16)) (t!391111 List!75341)) )
))
(declare-datatypes ((Regex!21801 0))(
  ( (ElementMatch!21801 (c!1475295 C!43940)) (Concat!30851 (regOne!44114 Regex!21801) (regTwo!44114 Regex!21801)) (EmptyExpr!21801) (Star!21801 (reg!22130 Regex!21801)) (EmptyLang!21801) (Union!21801 (regOne!44115 Regex!21801) (regTwo!44115 Regex!21801)) )
))
(declare-datatypes ((TokenValue!9050 0))(
  ( (FloatLiteralValue!18100 (text!63795 List!75341)) (TokenValueExt!9049 (__x!35381 Int)) (Broken!45250 (value!291842 List!75341)) (Object!9175) (End!9050) (Def!9050) (Underscore!9050) (Match!9050) (Else!9050) (Error!9050) (Case!9050) (If!9050) (Extends!9050) (Abstract!9050) (Class!9050) (Val!9050) (DelimiterValue!18100 (del!9110 List!75341)) (KeywordValue!9056 (value!291843 List!75341)) (CommentValue!18100 (value!291844 List!75341)) (WhitespaceValue!18100 (value!291845 List!75341)) (IndentationValue!9050 (value!291846 List!75341)) (String!85025) (Int32!9050) (Broken!45251 (value!291847 List!75341)) (Boolean!9051) (Unit!171087) (OperatorValue!9053 (op!9110 List!75341)) (IdentifierValue!18100 (value!291848 List!75341)) (IdentifierValue!18101 (value!291849 List!75341)) (WhitespaceValue!18101 (value!291850 List!75341)) (True!18100) (False!18100) (Broken!45252 (value!291851 List!75341)) (Broken!45253 (value!291852 List!75341)) (True!18101) (RightBrace!9050) (RightBracket!9050) (Colon!9050) (Null!9050) (Comma!9050) (LeftBracket!9050) (False!18101) (LeftBrace!9050) (ImaginaryLiteralValue!9050 (text!63796 List!75341)) (StringLiteralValue!27150 (value!291853 List!75341)) (EOFValue!9050 (value!291854 List!75341)) (IdentValue!9050 (value!291855 List!75341)) (DelimiterValue!18101 (value!291856 List!75341)) (DedentValue!9050 (value!291857 List!75341)) (NewLineValue!9050 (value!291858 List!75341)) (IntegerValue!27150 (value!291859 (_ BitVec 32)) (text!63797 List!75341)) (IntegerValue!27151 (value!291860 Int) (text!63798 List!75341)) (Times!9050) (Or!9050) (Equal!9050) (Minus!9050) (Broken!45254 (value!291861 List!75341)) (And!9050) (Div!9050) (LessEqual!9050) (Mod!9050) (Concat!30852) (Not!9050) (Plus!9050) (SpaceValue!9050 (value!291862 List!75341)) (IntegerValue!27152 (value!291863 Int) (text!63799 List!75341)) (StringLiteralValue!27151 (text!63800 List!75341)) (FloatLiteralValue!18101 (text!63801 List!75341)) (BytesLiteralValue!9050 (value!291864 List!75341)) (CommentValue!18101 (value!291865 List!75341)) (StringLiteralValue!27152 (value!291866 List!75341)) (ErrorTokenValue!9050 (msg!9111 List!75341)) )
))
(declare-datatypes ((BalanceConc!30952 0))(
  ( (BalanceConc!30953 (c!1475296 Conc!15998)) )
))
(declare-datatypes ((TokenValueInjection!17408 0))(
  ( (TokenValueInjection!17409 (toValue!11805 Int) (toChars!11664 Int)) )
))
(declare-datatypes ((Rule!17260 0))(
  ( (Rule!17261 (regex!8730 Regex!21801) (tag!9594 String!85023) (isSeparator!8730 Bool) (transformation!8730 TokenValueInjection!17408)) )
))
(declare-fun rNSep!153 () Rule!17260)

(declare-fun rSep!153 () Rule!17260)

(assert (=> b!8044019 (= res!3179763 (and (not (isSeparator!8730 rNSep!153)) (isSeparator!8730 rSep!153)))))

(declare-fun b!8044020 () Bool)

(declare-fun e!4738597 () Bool)

(declare-datatypes ((List!75342 0))(
  ( (Nil!75216) (Cons!75216 (h!81664 Rule!17260) (t!391112 List!75342)) )
))
(declare-fun rules!4166 () List!75342)

(declare-fun ListPrimitiveSize!534 (List!75342) Int)

(assert (=> b!8044020 (= e!4738597 (< (ListPrimitiveSize!534 (t!391112 rules!4166)) (ListPrimitiveSize!534 rules!4166)))))

(declare-fun b!8044021 () Bool)

(declare-fun res!3179759 () Bool)

(assert (=> b!8044021 (=> (not res!3179759) (not e!4738596))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!1004 (Rule!17260 List!75342) Bool)

(assert (=> b!8044021 (= res!3179759 (ruleDisjointCharsFromAllFromOtherType!1004 rNSep!153 rules!4166))))

(declare-fun b!8044023 () Bool)

(declare-fun res!3179758 () Bool)

(assert (=> b!8044023 (=> (not res!3179758) (not e!4738596))))

(declare-fun c!6885 () C!43940)

(declare-fun contains!21045 (List!75340 C!43940) Bool)

(declare-fun usedCharacters!1308 (Regex!21801) List!75340)

(assert (=> b!8044023 (= res!3179758 (contains!21045 (usedCharacters!1308 (regex!8730 rSep!153)) c!6885))))

(declare-fun b!8044024 () Bool)

(assert (=> b!8044024 (= e!4738596 (not e!4738597))))

(declare-fun res!3179762 () Bool)

(assert (=> b!8044024 (=> res!3179762 e!4738597)))

(declare-fun contains!21046 (List!75342 Rule!17260) Bool)

(assert (=> b!8044024 (= res!3179762 (not (contains!21046 (t!391112 rules!4166) rSep!153)))))

(declare-datatypes ((LexerInterface!8320 0))(
  ( (LexerInterfaceExt!8317 (__x!35382 Int)) (Lexer!8318) )
))
(declare-fun thiss!27104 () LexerInterface!8320)

(declare-fun rulesInvariant!6788 (LexerInterface!8320 List!75342) Bool)

(assert (=> b!8044024 (rulesInvariant!6788 thiss!27104 (t!391112 rules!4166))))

(declare-datatypes ((Unit!171088 0))(
  ( (Unit!171089) )
))
(declare-fun lt!2722510 () Unit!171088)

(declare-fun lemmaInvariantOnRulesThenOnTail!896 (LexerInterface!8320 Rule!17260 List!75342) Unit!171088)

(assert (=> b!8044024 (= lt!2722510 (lemmaInvariantOnRulesThenOnTail!896 thiss!27104 (h!81664 rules!4166) (t!391112 rules!4166)))))

(declare-fun e!4738600 () Bool)

(assert (=> b!8044025 (= e!4738600 (and tp!2410627 tp!2410622))))

(declare-fun b!8044026 () Bool)

(declare-fun tp!2410630 () Bool)

(declare-fun e!4738602 () Bool)

(declare-fun inv!96992 (String!85023) Bool)

(declare-fun inv!96994 (TokenValueInjection!17408) Bool)

(assert (=> b!8044026 (= e!4738602 (and tp!2410630 (inv!96992 (tag!9594 rSep!153)) (inv!96994 (transformation!8730 rSep!153)) e!4738604))))

(declare-fun b!8044027 () Bool)

(declare-fun res!3179756 () Bool)

(assert (=> b!8044027 (=> res!3179756 e!4738597)))

(assert (=> b!8044027 (= res!3179756 (not (ruleDisjointCharsFromAllFromOtherType!1004 rNSep!153 (t!391112 rules!4166))))))

(declare-fun b!8044028 () Bool)

(declare-fun res!3179764 () Bool)

(assert (=> b!8044028 (=> (not res!3179764) (not e!4738596))))

(get-info :version)

(assert (=> b!8044028 (= res!3179764 (and (or (not ((_ is Cons!75216) rules!4166)) (not (= (h!81664 rules!4166) rSep!153))) ((_ is Cons!75216) rules!4166)))))

(declare-fun tp!2410626 () Bool)

(declare-fun e!4738605 () Bool)

(declare-fun b!8044029 () Bool)

(assert (=> b!8044029 (= e!4738605 (and tp!2410626 (inv!96992 (tag!9594 (h!81664 rules!4166))) (inv!96994 (transformation!8730 (h!81664 rules!4166))) e!4738600))))

(declare-fun e!4738599 () Bool)

(assert (=> b!8044030 (= e!4738599 (and tp!2410631 tp!2410625))))

(declare-fun b!8044031 () Bool)

(declare-fun res!3179760 () Bool)

(assert (=> b!8044031 (=> (not res!3179760) (not e!4738596))))

(assert (=> b!8044031 (= res!3179760 (contains!21046 rules!4166 rSep!153))))

(declare-fun res!3179761 () Bool)

(assert (=> start!757360 (=> (not res!3179761) (not e!4738596))))

(assert (=> start!757360 (= res!3179761 ((_ is Lexer!8318) thiss!27104))))

(assert (=> start!757360 e!4738596))

(declare-fun e!4738601 () Bool)

(assert (=> start!757360 e!4738601))

(declare-fun tp_is_empty!54597 () Bool)

(assert (=> start!757360 tp_is_empty!54597))

(assert (=> start!757360 true))

(declare-fun e!4738606 () Bool)

(assert (=> start!757360 e!4738606))

(assert (=> start!757360 e!4738602))

(declare-fun tp!2410623 () Bool)

(declare-fun b!8044022 () Bool)

(assert (=> b!8044022 (= e!4738606 (and tp!2410623 (inv!96992 (tag!9594 rNSep!153)) (inv!96994 (transformation!8730 rNSep!153)) e!4738599))))

(declare-fun b!8044032 () Bool)

(declare-fun tp!2410629 () Bool)

(assert (=> b!8044032 (= e!4738601 (and e!4738605 tp!2410629))))

(declare-fun b!8044033 () Bool)

(declare-fun res!3179757 () Bool)

(assert (=> b!8044033 (=> (not res!3179757) (not e!4738596))))

(assert (=> b!8044033 (= res!3179757 (rulesInvariant!6788 thiss!27104 rules!4166))))

(assert (= (and start!757360 res!3179761) b!8044033))

(assert (= (and b!8044033 res!3179757) b!8044031))

(assert (= (and b!8044031 res!3179760) b!8044023))

(assert (= (and b!8044023 res!3179758) b!8044019))

(assert (= (and b!8044019 res!3179763) b!8044021))

(assert (= (and b!8044021 res!3179759) b!8044028))

(assert (= (and b!8044028 res!3179764) b!8044024))

(assert (= (and b!8044024 (not res!3179762)) b!8044027))

(assert (= (and b!8044027 (not res!3179756)) b!8044020))

(assert (= b!8044029 b!8044025))

(assert (= b!8044032 b!8044029))

(assert (= (and start!757360 ((_ is Cons!75216) rules!4166)) b!8044032))

(assert (= b!8044022 b!8044030))

(assert (= start!757360 b!8044022))

(assert (= b!8044026 b!8044018))

(assert (= start!757360 b!8044026))

(declare-fun m!8397140 () Bool)

(assert (=> b!8044020 m!8397140))

(declare-fun m!8397142 () Bool)

(assert (=> b!8044020 m!8397142))

(declare-fun m!8397144 () Bool)

(assert (=> b!8044029 m!8397144))

(declare-fun m!8397146 () Bool)

(assert (=> b!8044029 m!8397146))

(declare-fun m!8397148 () Bool)

(assert (=> b!8044026 m!8397148))

(declare-fun m!8397150 () Bool)

(assert (=> b!8044026 m!8397150))

(declare-fun m!8397152 () Bool)

(assert (=> b!8044021 m!8397152))

(declare-fun m!8397154 () Bool)

(assert (=> b!8044033 m!8397154))

(declare-fun m!8397156 () Bool)

(assert (=> b!8044023 m!8397156))

(assert (=> b!8044023 m!8397156))

(declare-fun m!8397158 () Bool)

(assert (=> b!8044023 m!8397158))

(declare-fun m!8397160 () Bool)

(assert (=> b!8044024 m!8397160))

(declare-fun m!8397162 () Bool)

(assert (=> b!8044024 m!8397162))

(declare-fun m!8397164 () Bool)

(assert (=> b!8044024 m!8397164))

(declare-fun m!8397166 () Bool)

(assert (=> b!8044031 m!8397166))

(declare-fun m!8397168 () Bool)

(assert (=> b!8044027 m!8397168))

(declare-fun m!8397170 () Bool)

(assert (=> b!8044022 m!8397170))

(declare-fun m!8397172 () Bool)

(assert (=> b!8044022 m!8397172))

(check-sat (not b!8044027) (not b!8044031) (not b_next!136899) b_and!354545 (not b!8044029) b_and!354541 (not b_next!136897) (not b!8044023) (not b!8044020) (not b_next!136903) b_and!354549 (not b!8044033) (not b!8044021) (not b_next!136893) (not b_next!136895) b_and!354547 (not b!8044026) b_and!354539 b_and!354543 (not b_next!136901) (not b!8044024) tp_is_empty!54597 (not b!8044032) (not b!8044022))
(check-sat b_and!354549 (not b_next!136899) b_and!354545 b_and!354541 (not b_next!136897) (not b_next!136903) (not b_next!136893) (not b_next!136895) b_and!354547 b_and!354539 b_and!354543 (not b_next!136901))
(get-model)

(declare-fun d!2396131 () Bool)

(declare-fun lt!2722517 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16063 (List!75340) (InoxSet C!43940))

(assert (=> d!2396131 (= lt!2722517 (select (content!16063 (usedCharacters!1308 (regex!8730 rSep!153))) c!6885))))

(declare-fun e!4738622 () Bool)

(assert (=> d!2396131 (= lt!2722517 e!4738622)))

(declare-fun res!3179786 () Bool)

(assert (=> d!2396131 (=> (not res!3179786) (not e!4738622))))

(assert (=> d!2396131 (= res!3179786 ((_ is Cons!75214) (usedCharacters!1308 (regex!8730 rSep!153))))))

(assert (=> d!2396131 (= (contains!21045 (usedCharacters!1308 (regex!8730 rSep!153)) c!6885) lt!2722517)))

(declare-fun b!8044052 () Bool)

(declare-fun e!4738623 () Bool)

(assert (=> b!8044052 (= e!4738622 e!4738623)))

(declare-fun res!3179785 () Bool)

(assert (=> b!8044052 (=> res!3179785 e!4738623)))

(assert (=> b!8044052 (= res!3179785 (= (h!81662 (usedCharacters!1308 (regex!8730 rSep!153))) c!6885))))

(declare-fun b!8044053 () Bool)

(assert (=> b!8044053 (= e!4738623 (contains!21045 (t!391110 (usedCharacters!1308 (regex!8730 rSep!153))) c!6885))))

(assert (= (and d!2396131 res!3179786) b!8044052))

(assert (= (and b!8044052 (not res!3179785)) b!8044053))

(assert (=> d!2396131 m!8397156))

(declare-fun m!8397184 () Bool)

(assert (=> d!2396131 m!8397184))

(declare-fun m!8397186 () Bool)

(assert (=> d!2396131 m!8397186))

(declare-fun m!8397188 () Bool)

(assert (=> b!8044053 m!8397188))

(assert (=> b!8044023 d!2396131))

(declare-fun bm!746650 () Bool)

(declare-fun call!746656 () List!75340)

(declare-fun c!1475320 () Bool)

(assert (=> bm!746650 (= call!746656 (usedCharacters!1308 (ite c!1475320 (regOne!44115 (regex!8730 rSep!153)) (regTwo!44114 (regex!8730 rSep!153)))))))

(declare-fun b!8044092 () Bool)

(declare-fun e!4738646 () List!75340)

(declare-fun e!4738648 () List!75340)

(assert (=> b!8044092 (= e!4738646 e!4738648)))

(declare-fun c!1475317 () Bool)

(assert (=> b!8044092 (= c!1475317 ((_ is ElementMatch!21801) (regex!8730 rSep!153)))))

(declare-fun b!8044093 () Bool)

(declare-fun e!4738647 () List!75340)

(declare-fun call!746657 () List!75340)

(assert (=> b!8044093 (= e!4738647 call!746657)))

(declare-fun b!8044094 () Bool)

(declare-fun e!4738649 () List!75340)

(declare-fun call!746658 () List!75340)

(assert (=> b!8044094 (= e!4738649 call!746658)))

(declare-fun b!8044095 () Bool)

(assert (=> b!8044095 (= e!4738649 e!4738647)))

(assert (=> b!8044095 (= c!1475320 ((_ is Union!21801) (regex!8730 rSep!153)))))

(declare-fun d!2396135 () Bool)

(declare-fun c!1475318 () Bool)

(assert (=> d!2396135 (= c!1475318 (or ((_ is EmptyExpr!21801) (regex!8730 rSep!153)) ((_ is EmptyLang!21801) (regex!8730 rSep!153))))))

(assert (=> d!2396135 (= (usedCharacters!1308 (regex!8730 rSep!153)) e!4738646)))

(declare-fun b!8044096 () Bool)

(assert (=> b!8044096 (= e!4738646 Nil!75214)))

(declare-fun bm!746651 () Bool)

(declare-fun call!746655 () List!75340)

(declare-fun ++!18637 (List!75340 List!75340) List!75340)

(assert (=> bm!746651 (= call!746657 (++!18637 (ite c!1475320 call!746656 call!746655) (ite c!1475320 call!746655 call!746656)))))

(declare-fun b!8044097 () Bool)

(assert (=> b!8044097 (= e!4738647 call!746657)))

(declare-fun b!8044098 () Bool)

(assert (=> b!8044098 (= e!4738648 (Cons!75214 (c!1475295 (regex!8730 rSep!153)) Nil!75214))))

(declare-fun bm!746652 () Bool)

(assert (=> bm!746652 (= call!746655 call!746658)))

(declare-fun b!8044099 () Bool)

(declare-fun c!1475319 () Bool)

(assert (=> b!8044099 (= c!1475319 ((_ is Star!21801) (regex!8730 rSep!153)))))

(assert (=> b!8044099 (= e!4738648 e!4738649)))

(declare-fun bm!746653 () Bool)

(assert (=> bm!746653 (= call!746658 (usedCharacters!1308 (ite c!1475319 (reg!22130 (regex!8730 rSep!153)) (ite c!1475320 (regTwo!44115 (regex!8730 rSep!153)) (regOne!44114 (regex!8730 rSep!153))))))))

(assert (= (and d!2396135 c!1475318) b!8044096))

(assert (= (and d!2396135 (not c!1475318)) b!8044092))

(assert (= (and b!8044092 c!1475317) b!8044098))

(assert (= (and b!8044092 (not c!1475317)) b!8044099))

(assert (= (and b!8044099 c!1475319) b!8044094))

(assert (= (and b!8044099 (not c!1475319)) b!8044095))

(assert (= (and b!8044095 c!1475320) b!8044097))

(assert (= (and b!8044095 (not c!1475320)) b!8044093))

(assert (= (or b!8044097 b!8044093) bm!746650))

(assert (= (or b!8044097 b!8044093) bm!746652))

(assert (= (or b!8044097 b!8044093) bm!746651))

(assert (= (or b!8044094 bm!746652) bm!746653))

(declare-fun m!8397196 () Bool)

(assert (=> bm!746650 m!8397196))

(declare-fun m!8397198 () Bool)

(assert (=> bm!746651 m!8397198))

(declare-fun m!8397200 () Bool)

(assert (=> bm!746653 m!8397200))

(assert (=> b!8044023 d!2396135))

(declare-fun d!2396139 () Bool)

(assert (=> d!2396139 (= (inv!96992 (tag!9594 (h!81664 rules!4166))) (= (mod (str.len (value!291841 (tag!9594 (h!81664 rules!4166)))) 2) 0))))

(assert (=> b!8044029 d!2396139))

(declare-fun d!2396141 () Bool)

(declare-fun res!3179800 () Bool)

(declare-fun e!4738663 () Bool)

(assert (=> d!2396141 (=> (not res!3179800) (not e!4738663))))

(declare-fun semiInverseModEq!3877 (Int Int) Bool)

(assert (=> d!2396141 (= res!3179800 (semiInverseModEq!3877 (toChars!11664 (transformation!8730 (h!81664 rules!4166))) (toValue!11805 (transformation!8730 (h!81664 rules!4166)))))))

(assert (=> d!2396141 (= (inv!96994 (transformation!8730 (h!81664 rules!4166))) e!4738663)))

(declare-fun b!8044119 () Bool)

(declare-fun equivClasses!3692 (Int Int) Bool)

(assert (=> b!8044119 (= e!4738663 (equivClasses!3692 (toChars!11664 (transformation!8730 (h!81664 rules!4166))) (toValue!11805 (transformation!8730 (h!81664 rules!4166)))))))

(assert (= (and d!2396141 res!3179800) b!8044119))

(declare-fun m!8397212 () Bool)

(assert (=> d!2396141 m!8397212))

(declare-fun m!8397214 () Bool)

(assert (=> b!8044119 m!8397214))

(assert (=> b!8044029 d!2396141))

(declare-fun b!8044143 () Bool)

(declare-fun e!4738685 () Bool)

(declare-fun call!746669 () Bool)

(assert (=> b!8044143 (= e!4738685 call!746669)))

(declare-fun bm!746664 () Bool)

(assert (=> bm!746664 (= call!746669 (ruleDisjointCharsFromAllFromOtherType!1004 rNSep!153 (t!391112 (t!391112 rules!4166))))))

(declare-fun b!8044144 () Bool)

(declare-fun e!4738684 () Bool)

(assert (=> b!8044144 (= e!4738684 call!746669)))

(declare-fun d!2396149 () Bool)

(declare-fun c!1475331 () Bool)

(assert (=> d!2396149 (= c!1475331 (and ((_ is Cons!75216) (t!391112 rules!4166)) (not (= (isSeparator!8730 (h!81664 (t!391112 rules!4166))) (isSeparator!8730 rNSep!153)))))))

(declare-fun e!4738683 () Bool)

(assert (=> d!2396149 (= (ruleDisjointCharsFromAllFromOtherType!1004 rNSep!153 (t!391112 rules!4166)) e!4738683)))

(declare-fun b!8044145 () Bool)

(assert (=> b!8044145 (= e!4738683 e!4738685)))

(declare-fun res!3179816 () Bool)

(declare-fun rulesUseDisjointChars!401 (Rule!17260 Rule!17260) Bool)

(assert (=> b!8044145 (= res!3179816 (rulesUseDisjointChars!401 rNSep!153 (h!81664 (t!391112 rules!4166))))))

(assert (=> b!8044145 (=> (not res!3179816) (not e!4738685))))

(declare-fun b!8044146 () Bool)

(assert (=> b!8044146 (= e!4738683 e!4738684)))

(declare-fun res!3179817 () Bool)

(assert (=> b!8044146 (= res!3179817 (not ((_ is Cons!75216) (t!391112 rules!4166))))))

(assert (=> b!8044146 (=> res!3179817 e!4738684)))

(assert (= (and d!2396149 c!1475331) b!8044145))

(assert (= (and d!2396149 (not c!1475331)) b!8044146))

(assert (= (and b!8044145 res!3179816) b!8044143))

(assert (= (and b!8044146 (not res!3179817)) b!8044144))

(assert (= (or b!8044143 b!8044144) bm!746664))

(declare-fun m!8397232 () Bool)

(assert (=> bm!746664 m!8397232))

(declare-fun m!8397234 () Bool)

(assert (=> b!8044145 m!8397234))

(assert (=> b!8044027 d!2396149))

(declare-fun d!2396159 () Bool)

(assert (=> d!2396159 (= (inv!96992 (tag!9594 rNSep!153)) (= (mod (str.len (value!291841 (tag!9594 rNSep!153))) 2) 0))))

(assert (=> b!8044022 d!2396159))

(declare-fun d!2396161 () Bool)

(declare-fun res!3179818 () Bool)

(declare-fun e!4738686 () Bool)

(assert (=> d!2396161 (=> (not res!3179818) (not e!4738686))))

(assert (=> d!2396161 (= res!3179818 (semiInverseModEq!3877 (toChars!11664 (transformation!8730 rNSep!153)) (toValue!11805 (transformation!8730 rNSep!153))))))

(assert (=> d!2396161 (= (inv!96994 (transformation!8730 rNSep!153)) e!4738686)))

(declare-fun b!8044147 () Bool)

(assert (=> b!8044147 (= e!4738686 (equivClasses!3692 (toChars!11664 (transformation!8730 rNSep!153)) (toValue!11805 (transformation!8730 rNSep!153))))))

(assert (= (and d!2396161 res!3179818) b!8044147))

(declare-fun m!8397236 () Bool)

(assert (=> d!2396161 m!8397236))

(declare-fun m!8397238 () Bool)

(assert (=> b!8044147 m!8397238))

(assert (=> b!8044022 d!2396161))

(declare-fun d!2396163 () Bool)

(declare-fun res!3179824 () Bool)

(declare-fun e!4738692 () Bool)

(assert (=> d!2396163 (=> (not res!3179824) (not e!4738692))))

(declare-fun rulesValid!3152 (LexerInterface!8320 List!75342) Bool)

(assert (=> d!2396163 (= res!3179824 (rulesValid!3152 thiss!27104 rules!4166))))

(assert (=> d!2396163 (= (rulesInvariant!6788 thiss!27104 rules!4166) e!4738692)))

(declare-fun b!8044153 () Bool)

(declare-datatypes ((List!75344 0))(
  ( (Nil!75218) (Cons!75218 (h!81666 String!85023) (t!391114 List!75344)) )
))
(declare-fun noDuplicateTag!3313 (LexerInterface!8320 List!75342 List!75344) Bool)

(assert (=> b!8044153 (= e!4738692 (noDuplicateTag!3313 thiss!27104 rules!4166 Nil!75218))))

(assert (= (and d!2396163 res!3179824) b!8044153))

(declare-fun m!8397252 () Bool)

(assert (=> d!2396163 m!8397252))

(declare-fun m!8397254 () Bool)

(assert (=> b!8044153 m!8397254))

(assert (=> b!8044033 d!2396163))

(declare-fun d!2396171 () Bool)

(declare-fun lt!2722530 () Int)

(assert (=> d!2396171 (>= lt!2722530 0)))

(declare-fun e!4738706 () Int)

(assert (=> d!2396171 (= lt!2722530 e!4738706)))

(declare-fun c!1475334 () Bool)

(assert (=> d!2396171 (= c!1475334 ((_ is Nil!75216) (t!391112 rules!4166)))))

(assert (=> d!2396171 (= (ListPrimitiveSize!534 (t!391112 rules!4166)) lt!2722530)))

(declare-fun b!8044180 () Bool)

(assert (=> b!8044180 (= e!4738706 0)))

(declare-fun b!8044181 () Bool)

(assert (=> b!8044181 (= e!4738706 (+ 1 (ListPrimitiveSize!534 (t!391112 (t!391112 rules!4166)))))))

(assert (= (and d!2396171 c!1475334) b!8044180))

(assert (= (and d!2396171 (not c!1475334)) b!8044181))

(declare-fun m!8397256 () Bool)

(assert (=> b!8044181 m!8397256))

(assert (=> b!8044020 d!2396171))

(declare-fun d!2396173 () Bool)

(declare-fun lt!2722531 () Int)

(assert (=> d!2396173 (>= lt!2722531 0)))

(declare-fun e!4738707 () Int)

(assert (=> d!2396173 (= lt!2722531 e!4738707)))

(declare-fun c!1475335 () Bool)

(assert (=> d!2396173 (= c!1475335 ((_ is Nil!75216) rules!4166))))

(assert (=> d!2396173 (= (ListPrimitiveSize!534 rules!4166) lt!2722531)))

(declare-fun b!8044182 () Bool)

(assert (=> b!8044182 (= e!4738707 0)))

(declare-fun b!8044183 () Bool)

(assert (=> b!8044183 (= e!4738707 (+ 1 (ListPrimitiveSize!534 (t!391112 rules!4166))))))

(assert (= (and d!2396173 c!1475335) b!8044182))

(assert (= (and d!2396173 (not c!1475335)) b!8044183))

(assert (=> b!8044183 m!8397140))

(assert (=> b!8044020 d!2396173))

(declare-fun d!2396175 () Bool)

(declare-fun lt!2722534 () Bool)

(declare-fun content!16065 (List!75342) (InoxSet Rule!17260))

(assert (=> d!2396175 (= lt!2722534 (select (content!16065 rules!4166) rSep!153))))

(declare-fun e!4738718 () Bool)

(assert (=> d!2396175 (= lt!2722534 e!4738718)))

(declare-fun res!3179830 () Bool)

(assert (=> d!2396175 (=> (not res!3179830) (not e!4738718))))

(assert (=> d!2396175 (= res!3179830 ((_ is Cons!75216) rules!4166))))

(assert (=> d!2396175 (= (contains!21046 rules!4166 rSep!153) lt!2722534)))

(declare-fun b!8044199 () Bool)

(declare-fun e!4738719 () Bool)

(assert (=> b!8044199 (= e!4738718 e!4738719)))

(declare-fun res!3179829 () Bool)

(assert (=> b!8044199 (=> res!3179829 e!4738719)))

(assert (=> b!8044199 (= res!3179829 (= (h!81664 rules!4166) rSep!153))))

(declare-fun b!8044200 () Bool)

(assert (=> b!8044200 (= e!4738719 (contains!21046 (t!391112 rules!4166) rSep!153))))

(assert (= (and d!2396175 res!3179830) b!8044199))

(assert (= (and b!8044199 (not res!3179829)) b!8044200))

(declare-fun m!8397262 () Bool)

(assert (=> d!2396175 m!8397262))

(declare-fun m!8397264 () Bool)

(assert (=> d!2396175 m!8397264))

(assert (=> b!8044200 m!8397160))

(assert (=> b!8044031 d!2396175))

(declare-fun d!2396177 () Bool)

(assert (=> d!2396177 (= (inv!96992 (tag!9594 rSep!153)) (= (mod (str.len (value!291841 (tag!9594 rSep!153))) 2) 0))))

(assert (=> b!8044026 d!2396177))

(declare-fun d!2396179 () Bool)

(declare-fun res!3179831 () Bool)

(declare-fun e!4738720 () Bool)

(assert (=> d!2396179 (=> (not res!3179831) (not e!4738720))))

(assert (=> d!2396179 (= res!3179831 (semiInverseModEq!3877 (toChars!11664 (transformation!8730 rSep!153)) (toValue!11805 (transformation!8730 rSep!153))))))

(assert (=> d!2396179 (= (inv!96994 (transformation!8730 rSep!153)) e!4738720)))

(declare-fun b!8044201 () Bool)

(assert (=> b!8044201 (= e!4738720 (equivClasses!3692 (toChars!11664 (transformation!8730 rSep!153)) (toValue!11805 (transformation!8730 rSep!153))))))

(assert (= (and d!2396179 res!3179831) b!8044201))

(declare-fun m!8397266 () Bool)

(assert (=> d!2396179 m!8397266))

(declare-fun m!8397268 () Bool)

(assert (=> b!8044201 m!8397268))

(assert (=> b!8044026 d!2396179))

(declare-fun b!8044202 () Bool)

(declare-fun e!4738723 () Bool)

(declare-fun call!746670 () Bool)

(assert (=> b!8044202 (= e!4738723 call!746670)))

(declare-fun bm!746665 () Bool)

(assert (=> bm!746665 (= call!746670 (ruleDisjointCharsFromAllFromOtherType!1004 rNSep!153 (t!391112 rules!4166)))))

(declare-fun b!8044203 () Bool)

(declare-fun e!4738722 () Bool)

(assert (=> b!8044203 (= e!4738722 call!746670)))

(declare-fun d!2396181 () Bool)

(declare-fun c!1475336 () Bool)

(assert (=> d!2396181 (= c!1475336 (and ((_ is Cons!75216) rules!4166) (not (= (isSeparator!8730 (h!81664 rules!4166)) (isSeparator!8730 rNSep!153)))))))

(declare-fun e!4738721 () Bool)

(assert (=> d!2396181 (= (ruleDisjointCharsFromAllFromOtherType!1004 rNSep!153 rules!4166) e!4738721)))

(declare-fun b!8044204 () Bool)

(assert (=> b!8044204 (= e!4738721 e!4738723)))

(declare-fun res!3179832 () Bool)

(assert (=> b!8044204 (= res!3179832 (rulesUseDisjointChars!401 rNSep!153 (h!81664 rules!4166)))))

(assert (=> b!8044204 (=> (not res!3179832) (not e!4738723))))

(declare-fun b!8044205 () Bool)

(assert (=> b!8044205 (= e!4738721 e!4738722)))

(declare-fun res!3179833 () Bool)

(assert (=> b!8044205 (= res!3179833 (not ((_ is Cons!75216) rules!4166)))))

(assert (=> b!8044205 (=> res!3179833 e!4738722)))

(assert (= (and d!2396181 c!1475336) b!8044204))

(assert (= (and d!2396181 (not c!1475336)) b!8044205))

(assert (= (and b!8044204 res!3179832) b!8044202))

(assert (= (and b!8044205 (not res!3179833)) b!8044203))

(assert (= (or b!8044202 b!8044203) bm!746665))

(assert (=> bm!746665 m!8397168))

(declare-fun m!8397270 () Bool)

(assert (=> b!8044204 m!8397270))

(assert (=> b!8044021 d!2396181))

(declare-fun d!2396183 () Bool)

(declare-fun lt!2722535 () Bool)

(assert (=> d!2396183 (= lt!2722535 (select (content!16065 (t!391112 rules!4166)) rSep!153))))

(declare-fun e!4738724 () Bool)

(assert (=> d!2396183 (= lt!2722535 e!4738724)))

(declare-fun res!3179835 () Bool)

(assert (=> d!2396183 (=> (not res!3179835) (not e!4738724))))

(assert (=> d!2396183 (= res!3179835 ((_ is Cons!75216) (t!391112 rules!4166)))))

(assert (=> d!2396183 (= (contains!21046 (t!391112 rules!4166) rSep!153) lt!2722535)))

(declare-fun b!8044206 () Bool)

(declare-fun e!4738725 () Bool)

(assert (=> b!8044206 (= e!4738724 e!4738725)))

(declare-fun res!3179834 () Bool)

(assert (=> b!8044206 (=> res!3179834 e!4738725)))

(assert (=> b!8044206 (= res!3179834 (= (h!81664 (t!391112 rules!4166)) rSep!153))))

(declare-fun b!8044207 () Bool)

(assert (=> b!8044207 (= e!4738725 (contains!21046 (t!391112 (t!391112 rules!4166)) rSep!153))))

(assert (= (and d!2396183 res!3179835) b!8044206))

(assert (= (and b!8044206 (not res!3179834)) b!8044207))

(declare-fun m!8397272 () Bool)

(assert (=> d!2396183 m!8397272))

(declare-fun m!8397274 () Bool)

(assert (=> d!2396183 m!8397274))

(declare-fun m!8397276 () Bool)

(assert (=> b!8044207 m!8397276))

(assert (=> b!8044024 d!2396183))

(declare-fun d!2396185 () Bool)

(declare-fun res!3179836 () Bool)

(declare-fun e!4738726 () Bool)

(assert (=> d!2396185 (=> (not res!3179836) (not e!4738726))))

(assert (=> d!2396185 (= res!3179836 (rulesValid!3152 thiss!27104 (t!391112 rules!4166)))))

(assert (=> d!2396185 (= (rulesInvariant!6788 thiss!27104 (t!391112 rules!4166)) e!4738726)))

(declare-fun b!8044208 () Bool)

(assert (=> b!8044208 (= e!4738726 (noDuplicateTag!3313 thiss!27104 (t!391112 rules!4166) Nil!75218))))

(assert (= (and d!2396185 res!3179836) b!8044208))

(declare-fun m!8397278 () Bool)

(assert (=> d!2396185 m!8397278))

(declare-fun m!8397280 () Bool)

(assert (=> b!8044208 m!8397280))

(assert (=> b!8044024 d!2396185))

(declare-fun d!2396187 () Bool)

(assert (=> d!2396187 (rulesInvariant!6788 thiss!27104 (t!391112 rules!4166))))

(declare-fun lt!2722538 () Unit!171088)

(declare-fun choose!60483 (LexerInterface!8320 Rule!17260 List!75342) Unit!171088)

(assert (=> d!2396187 (= lt!2722538 (choose!60483 thiss!27104 (h!81664 rules!4166) (t!391112 rules!4166)))))

(assert (=> d!2396187 (rulesInvariant!6788 thiss!27104 (Cons!75216 (h!81664 rules!4166) (t!391112 rules!4166)))))

(assert (=> d!2396187 (= (lemmaInvariantOnRulesThenOnTail!896 thiss!27104 (h!81664 rules!4166) (t!391112 rules!4166)) lt!2722538)))

(declare-fun bs!1971636 () Bool)

(assert (= bs!1971636 d!2396187))

(assert (=> bs!1971636 m!8397162))

(declare-fun m!8397282 () Bool)

(assert (=> bs!1971636 m!8397282))

(declare-fun m!8397284 () Bool)

(assert (=> bs!1971636 m!8397284))

(assert (=> b!8044024 d!2396187))

(declare-fun b!8044220 () Bool)

(declare-fun e!4738729 () Bool)

(declare-fun tp!2410681 () Bool)

(declare-fun tp!2410679 () Bool)

(assert (=> b!8044220 (= e!4738729 (and tp!2410681 tp!2410679))))

(assert (=> b!8044029 (= tp!2410626 e!4738729)))

(declare-fun b!8044222 () Bool)

(declare-fun tp!2410683 () Bool)

(declare-fun tp!2410682 () Bool)

(assert (=> b!8044222 (= e!4738729 (and tp!2410683 tp!2410682))))

(declare-fun b!8044219 () Bool)

(assert (=> b!8044219 (= e!4738729 tp_is_empty!54597)))

(declare-fun b!8044221 () Bool)

(declare-fun tp!2410680 () Bool)

(assert (=> b!8044221 (= e!4738729 tp!2410680)))

(assert (= (and b!8044029 ((_ is ElementMatch!21801) (regex!8730 (h!81664 rules!4166)))) b!8044219))

(assert (= (and b!8044029 ((_ is Concat!30851) (regex!8730 (h!81664 rules!4166)))) b!8044220))

(assert (= (and b!8044029 ((_ is Star!21801) (regex!8730 (h!81664 rules!4166)))) b!8044221))

(assert (= (and b!8044029 ((_ is Union!21801) (regex!8730 (h!81664 rules!4166)))) b!8044222))

(declare-fun b!8044233 () Bool)

(declare-fun b_free!136119 () Bool)

(declare-fun b_next!136909 () Bool)

(assert (=> b!8044233 (= b_free!136119 (not b_next!136909))))

(declare-fun tp!2410692 () Bool)

(declare-fun b_and!354555 () Bool)

(assert (=> b!8044233 (= tp!2410692 b_and!354555)))

(declare-fun b_free!136121 () Bool)

(declare-fun b_next!136911 () Bool)

(assert (=> b!8044233 (= b_free!136121 (not b_next!136911))))

(declare-fun tp!2410693 () Bool)

(declare-fun b_and!354557 () Bool)

(assert (=> b!8044233 (= tp!2410693 b_and!354557)))

(declare-fun e!4738740 () Bool)

(assert (=> b!8044233 (= e!4738740 (and tp!2410692 tp!2410693))))

(declare-fun b!8044232 () Bool)

(declare-fun tp!2410694 () Bool)

(declare-fun e!4738739 () Bool)

(assert (=> b!8044232 (= e!4738739 (and tp!2410694 (inv!96992 (tag!9594 (h!81664 (t!391112 rules!4166)))) (inv!96994 (transformation!8730 (h!81664 (t!391112 rules!4166)))) e!4738740))))

(declare-fun b!8044231 () Bool)

(declare-fun e!4738738 () Bool)

(declare-fun tp!2410695 () Bool)

(assert (=> b!8044231 (= e!4738738 (and e!4738739 tp!2410695))))

(assert (=> b!8044032 (= tp!2410629 e!4738738)))

(assert (= b!8044232 b!8044233))

(assert (= b!8044231 b!8044232))

(assert (= (and b!8044032 ((_ is Cons!75216) (t!391112 rules!4166))) b!8044231))

(declare-fun m!8397286 () Bool)

(assert (=> b!8044232 m!8397286))

(declare-fun m!8397288 () Bool)

(assert (=> b!8044232 m!8397288))

(declare-fun b!8044235 () Bool)

(declare-fun e!4738742 () Bool)

(declare-fun tp!2410698 () Bool)

(declare-fun tp!2410696 () Bool)

(assert (=> b!8044235 (= e!4738742 (and tp!2410698 tp!2410696))))

(assert (=> b!8044022 (= tp!2410623 e!4738742)))

(declare-fun b!8044237 () Bool)

(declare-fun tp!2410700 () Bool)

(declare-fun tp!2410699 () Bool)

(assert (=> b!8044237 (= e!4738742 (and tp!2410700 tp!2410699))))

(declare-fun b!8044234 () Bool)

(assert (=> b!8044234 (= e!4738742 tp_is_empty!54597)))

(declare-fun b!8044236 () Bool)

(declare-fun tp!2410697 () Bool)

(assert (=> b!8044236 (= e!4738742 tp!2410697)))

(assert (= (and b!8044022 ((_ is ElementMatch!21801) (regex!8730 rNSep!153))) b!8044234))

(assert (= (and b!8044022 ((_ is Concat!30851) (regex!8730 rNSep!153))) b!8044235))

(assert (= (and b!8044022 ((_ is Star!21801) (regex!8730 rNSep!153))) b!8044236))

(assert (= (and b!8044022 ((_ is Union!21801) (regex!8730 rNSep!153))) b!8044237))

(declare-fun b!8044239 () Bool)

(declare-fun e!4738743 () Bool)

(declare-fun tp!2410703 () Bool)

(declare-fun tp!2410701 () Bool)

(assert (=> b!8044239 (= e!4738743 (and tp!2410703 tp!2410701))))

(assert (=> b!8044026 (= tp!2410630 e!4738743)))

(declare-fun b!8044241 () Bool)

(declare-fun tp!2410705 () Bool)

(declare-fun tp!2410704 () Bool)

(assert (=> b!8044241 (= e!4738743 (and tp!2410705 tp!2410704))))

(declare-fun b!8044238 () Bool)

(assert (=> b!8044238 (= e!4738743 tp_is_empty!54597)))

(declare-fun b!8044240 () Bool)

(declare-fun tp!2410702 () Bool)

(assert (=> b!8044240 (= e!4738743 tp!2410702)))

(assert (= (and b!8044026 ((_ is ElementMatch!21801) (regex!8730 rSep!153))) b!8044238))

(assert (= (and b!8044026 ((_ is Concat!30851) (regex!8730 rSep!153))) b!8044239))

(assert (= (and b!8044026 ((_ is Star!21801) (regex!8730 rSep!153))) b!8044240))

(assert (= (and b!8044026 ((_ is Union!21801) (regex!8730 rSep!153))) b!8044241))

(check-sat (not b!8044147) (not b!8044208) b_and!354545 (not b!8044221) (not d!2396187) (not b!8044239) (not b!8044053) (not b!8044235) b_and!354549 (not b!8044119) (not bm!746664) (not b_next!136909) (not d!2396131) (not b_next!136899) (not b!8044201) (not b!8044145) (not d!2396183) (not bm!746650) b_and!354555 (not b!8044237) (not b!8044207) (not b!8044220) (not b!8044200) (not bm!746651) (not b_next!136893) (not d!2396161) (not b_next!136895) (not b!8044232) (not d!2396185) b_and!354541 (not b!8044204) (not d!2396141) b_and!354547 (not d!2396179) (not b!8044222) b_and!354539 (not b!8044240) (not b_next!136897) b_and!354543 (not bm!746653) (not b_next!136901) (not b!8044241) tp_is_empty!54597 (not b!8044153) (not b!8044181) (not b!8044231) (not bm!746665) (not d!2396163) b_and!354557 (not b!8044236) (not b!8044183) (not b_next!136911) (not b_next!136903) (not d!2396175))
(check-sat b_and!354549 (not b_next!136909) (not b_next!136899) b_and!354555 b_and!354545 b_and!354541 (not b_next!136897) b_and!354557 (not b_next!136911) (not b_next!136903) (not b_next!136893) (not b_next!136895) b_and!354547 b_and!354539 b_and!354543 (not b_next!136901))
