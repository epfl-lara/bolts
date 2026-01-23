; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115006 () Bool)

(assert start!115006)

(declare-fun b!1301277 () Bool)

(declare-fun b_free!30915 () Bool)

(declare-fun b_next!31619 () Bool)

(assert (=> b!1301277 (= b_free!30915 (not b_next!31619))))

(declare-fun tp!379644 () Bool)

(declare-fun b_and!86767 () Bool)

(assert (=> b!1301277 (= tp!379644 b_and!86767)))

(declare-fun b_free!30917 () Bool)

(declare-fun b_next!31621 () Bool)

(assert (=> b!1301277 (= b_free!30917 (not b_next!31621))))

(declare-fun tp!379653 () Bool)

(declare-fun b_and!86769 () Bool)

(assert (=> b!1301277 (= tp!379653 b_and!86769)))

(declare-fun b!1301263 () Bool)

(declare-fun b_free!30919 () Bool)

(declare-fun b_next!31623 () Bool)

(assert (=> b!1301263 (= b_free!30919 (not b_next!31623))))

(declare-fun tp!379649 () Bool)

(declare-fun b_and!86771 () Bool)

(assert (=> b!1301263 (= tp!379649 b_and!86771)))

(declare-fun b_free!30921 () Bool)

(declare-fun b_next!31625 () Bool)

(assert (=> b!1301263 (= b_free!30921 (not b_next!31625))))

(declare-fun tp!379646 () Bool)

(declare-fun b_and!86773 () Bool)

(assert (=> b!1301263 (= tp!379646 b_and!86773)))

(declare-fun b!1301280 () Bool)

(declare-fun b_free!30923 () Bool)

(declare-fun b_next!31627 () Bool)

(assert (=> b!1301280 (= b_free!30923 (not b_next!31627))))

(declare-fun tp!379648 () Bool)

(declare-fun b_and!86775 () Bool)

(assert (=> b!1301280 (= tp!379648 b_and!86775)))

(declare-fun b_free!30925 () Bool)

(declare-fun b_next!31629 () Bool)

(assert (=> b!1301280 (= b_free!30925 (not b_next!31629))))

(declare-fun tp!379643 () Bool)

(declare-fun b_and!86777 () Bool)

(assert (=> b!1301280 (= tp!379643 b_and!86777)))

(declare-fun b!1301266 () Bool)

(assert (=> b!1301266 true))

(assert (=> b!1301266 true))

(declare-fun b!1301256 () Bool)

(declare-fun e!834264 () Bool)

(declare-fun tp!379652 () Bool)

(declare-fun e!834245 () Bool)

(declare-datatypes ((List!13097 0))(
  ( (Nil!13031) (Cons!13031 (h!18432 (_ BitVec 16)) (t!117658 List!13097)) )
))
(declare-datatypes ((TokenValue!2337 0))(
  ( (FloatLiteralValue!4674 (text!16804 List!13097)) (TokenValueExt!2336 (__x!8503 Int)) (Broken!11685 (value!73646 List!13097)) (Object!2402) (End!2337) (Def!2337) (Underscore!2337) (Match!2337) (Else!2337) (Error!2337) (Case!2337) (If!2337) (Extends!2337) (Abstract!2337) (Class!2337) (Val!2337) (DelimiterValue!4674 (del!2397 List!13097)) (KeywordValue!2343 (value!73647 List!13097)) (CommentValue!4674 (value!73648 List!13097)) (WhitespaceValue!4674 (value!73649 List!13097)) (IndentationValue!2337 (value!73650 List!13097)) (String!15920) (Int32!2337) (Broken!11686 (value!73651 List!13097)) (Boolean!2338) (Unit!19161) (OperatorValue!2340 (op!2397 List!13097)) (IdentifierValue!4674 (value!73652 List!13097)) (IdentifierValue!4675 (value!73653 List!13097)) (WhitespaceValue!4675 (value!73654 List!13097)) (True!4674) (False!4674) (Broken!11687 (value!73655 List!13097)) (Broken!11688 (value!73656 List!13097)) (True!4675) (RightBrace!2337) (RightBracket!2337) (Colon!2337) (Null!2337) (Comma!2337) (LeftBracket!2337) (False!4675) (LeftBrace!2337) (ImaginaryLiteralValue!2337 (text!16805 List!13097)) (StringLiteralValue!7011 (value!73657 List!13097)) (EOFValue!2337 (value!73658 List!13097)) (IdentValue!2337 (value!73659 List!13097)) (DelimiterValue!4675 (value!73660 List!13097)) (DedentValue!2337 (value!73661 List!13097)) (NewLineValue!2337 (value!73662 List!13097)) (IntegerValue!7011 (value!73663 (_ BitVec 32)) (text!16806 List!13097)) (IntegerValue!7012 (value!73664 Int) (text!16807 List!13097)) (Times!2337) (Or!2337) (Equal!2337) (Minus!2337) (Broken!11689 (value!73665 List!13097)) (And!2337) (Div!2337) (LessEqual!2337) (Mod!2337) (Concat!5898) (Not!2337) (Plus!2337) (SpaceValue!2337 (value!73666 List!13097)) (IntegerValue!7013 (value!73667 Int) (text!16808 List!13097)) (StringLiteralValue!7012 (text!16809 List!13097)) (FloatLiteralValue!4675 (text!16810 List!13097)) (BytesLiteralValue!2337 (value!73668 List!13097)) (CommentValue!4675 (value!73669 List!13097)) (StringLiteralValue!7013 (value!73670 List!13097)) (ErrorTokenValue!2337 (msg!2398 List!13097)) )
))
(declare-datatypes ((C!7412 0))(
  ( (C!7413 (val!4266 Int)) )
))
(declare-datatypes ((List!13098 0))(
  ( (Nil!13032) (Cons!13032 (h!18433 C!7412) (t!117659 List!13098)) )
))
(declare-datatypes ((IArray!8563 0))(
  ( (IArray!8564 (innerList!4339 List!13098)) )
))
(declare-datatypes ((Conc!4279 0))(
  ( (Node!4279 (left!11204 Conc!4279) (right!11534 Conc!4279) (csize!8788 Int) (cheight!4490 Int)) (Leaf!6599 (xs!6994 IArray!8563) (csize!8789 Int)) (Empty!4279) )
))
(declare-datatypes ((BalanceConc!8498 0))(
  ( (BalanceConc!8499 (c!214219 Conc!4279)) )
))
(declare-datatypes ((Regex!3561 0))(
  ( (ElementMatch!3561 (c!214220 C!7412)) (Concat!5899 (regOne!7634 Regex!3561) (regTwo!7634 Regex!3561)) (EmptyExpr!3561) (Star!3561 (reg!3890 Regex!3561)) (EmptyLang!3561) (Union!3561 (regOne!7635 Regex!3561) (regTwo!7635 Regex!3561)) )
))
(declare-datatypes ((String!15921 0))(
  ( (String!15922 (value!73671 String)) )
))
(declare-datatypes ((TokenValueInjection!4334 0))(
  ( (TokenValueInjection!4335 (toValue!3462 Int) (toChars!3321 Int)) )
))
(declare-datatypes ((Rule!4294 0))(
  ( (Rule!4295 (regex!2247 Regex!3561) (tag!2509 String!15921) (isSeparator!2247 Bool) (transformation!2247 TokenValueInjection!4334)) )
))
(declare-datatypes ((Token!4156 0))(
  ( (Token!4157 (value!73672 TokenValue!2337) (rule!3986 Rule!4294) (size!10660 Int) (originalCharacters!3109 List!13098)) )
))
(declare-fun t2!34 () Token!4156)

(declare-fun inv!17462 (String!15921) Bool)

(declare-fun inv!17465 (TokenValueInjection!4334) Bool)

(assert (=> b!1301256 (= e!834245 (and tp!379652 (inv!17462 (tag!2509 (rule!3986 t2!34))) (inv!17465 (transformation!2247 (rule!3986 t2!34))) e!834264))))

(declare-fun b!1301257 () Bool)

(declare-fun e!834258 () Bool)

(declare-fun e!834255 () Bool)

(assert (=> b!1301257 (= e!834258 e!834255)))

(declare-fun res!582768 () Bool)

(assert (=> b!1301257 (=> res!582768 e!834255)))

(declare-datatypes ((List!13099 0))(
  ( (Nil!13033) (Cons!13033 (h!18434 Regex!3561) (t!117660 List!13099)) )
))
(declare-fun lt!427837 () List!13099)

(declare-fun lambda!51247 () Int)

(declare-fun forall!3268 (List!13099 Int) Bool)

(assert (=> b!1301257 (= res!582768 (not (forall!3268 lt!427837 lambda!51247)))))

(declare-datatypes ((List!13100 0))(
  ( (Nil!13034) (Cons!13034 (h!18435 Rule!4294) (t!117661 List!13100)) )
))
(declare-fun rules!2550 () List!13100)

(declare-fun lambda!51246 () Int)

(declare-fun map!2837 (List!13100 Int) List!13099)

(assert (=> b!1301257 (= lt!427837 (map!2837 rules!2550 lambda!51246))))

(declare-fun b!1301258 () Bool)

(declare-fun e!834263 () Bool)

(declare-fun tp!379647 () Bool)

(declare-fun e!834247 () Bool)

(assert (=> b!1301258 (= e!834247 (and tp!379647 (inv!17462 (tag!2509 (h!18435 rules!2550))) (inv!17465 (transformation!2247 (h!18435 rules!2550))) e!834263))))

(declare-fun b!1301259 () Bool)

(declare-fun tp!379645 () Bool)

(declare-fun e!834248 () Bool)

(declare-fun t1!34 () Token!4156)

(declare-fun e!834262 () Bool)

(assert (=> b!1301259 (= e!834248 (and tp!379645 (inv!17462 (tag!2509 (rule!3986 t1!34))) (inv!17465 (transformation!2247 (rule!3986 t1!34))) e!834262))))

(declare-fun b!1301260 () Bool)

(declare-fun e!834252 () Bool)

(declare-fun tp!379650 () Bool)

(assert (=> b!1301260 (= e!834252 (and e!834247 tp!379650))))

(declare-fun b!1301261 () Bool)

(declare-fun res!582767 () Bool)

(assert (=> b!1301261 (=> res!582767 e!834258)))

(declare-fun lt!427834 () List!13098)

(declare-fun lt!427831 () C!7412)

(declare-fun contains!2187 (List!13098 C!7412) Bool)

(assert (=> b!1301261 (= res!582767 (not (contains!2187 lt!427834 lt!427831)))))

(declare-fun b!1301262 () Bool)

(declare-fun res!582766 () Bool)

(declare-fun e!834251 () Bool)

(assert (=> b!1301262 (=> (not res!582766) (not e!834251))))

(declare-fun isEmpty!7745 (List!13100) Bool)

(assert (=> b!1301262 (= res!582766 (not (isEmpty!7745 rules!2550)))))

(assert (=> b!1301263 (= e!834264 (and tp!379649 tp!379646))))

(declare-fun b!1301264 () Bool)

(declare-fun e!834253 () Bool)

(declare-fun e!834249 () Bool)

(assert (=> b!1301264 (= e!834253 e!834249)))

(declare-fun res!582760 () Bool)

(assert (=> b!1301264 (=> (not res!582760) (not e!834249))))

(declare-fun lt!427835 () Regex!3561)

(declare-fun prefixMatch!74 (Regex!3561 List!13098) Bool)

(assert (=> b!1301264 (= res!582760 (prefixMatch!74 lt!427835 lt!427834))))

(declare-datatypes ((LexerInterface!1942 0))(
  ( (LexerInterfaceExt!1939 (__x!8504 Int)) (Lexer!1940) )
))
(declare-fun thiss!19762 () LexerInterface!1942)

(declare-fun rulesRegex!132 (LexerInterface!1942 List!13100) Regex!3561)

(assert (=> b!1301264 (= lt!427835 (rulesRegex!132 thiss!19762 rules!2550))))

(declare-fun lt!427839 () List!13098)

(declare-fun ++!3318 (List!13098 List!13098) List!13098)

(assert (=> b!1301264 (= lt!427834 (++!3318 lt!427839 (Cons!13032 lt!427831 Nil!13032)))))

(declare-fun lt!427833 () BalanceConc!8498)

(declare-fun apply!2913 (BalanceConc!8498 Int) C!7412)

(assert (=> b!1301264 (= lt!427831 (apply!2913 lt!427833 0))))

(declare-fun lt!427836 () BalanceConc!8498)

(declare-fun list!4889 (BalanceConc!8498) List!13098)

(assert (=> b!1301264 (= lt!427839 (list!4889 lt!427836))))

(declare-fun charsOf!1219 (Token!4156) BalanceConc!8498)

(assert (=> b!1301264 (= lt!427836 (charsOf!1219 t1!34))))

(declare-fun b!1301265 () Bool)

(declare-fun res!582756 () Bool)

(assert (=> b!1301265 (=> (not res!582756) (not e!834251))))

(assert (=> b!1301265 (= res!582756 (not (= (isSeparator!2247 (rule!3986 t1!34)) (isSeparator!2247 (rule!3986 t2!34)))))))

(declare-fun e!834256 () Bool)

(assert (=> b!1301266 (= e!834249 (not e!834256))))

(declare-fun res!582770 () Bool)

(assert (=> b!1301266 (=> res!582770 e!834256)))

(declare-fun lambda!51245 () Int)

(declare-fun Exists!719 (Int) Bool)

(assert (=> b!1301266 (= res!582770 (not (Exists!719 lambda!51245)))))

(assert (=> b!1301266 (Exists!719 lambda!51245)))

(declare-datatypes ((Unit!19162 0))(
  ( (Unit!19163) )
))
(declare-fun lt!427838 () Unit!19162)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!37 (Regex!3561 List!13098) Unit!19162)

(assert (=> b!1301266 (= lt!427838 (lemmaPrefixMatchThenExistsStringThatMatches!37 lt!427835 lt!427834))))

(declare-fun b!1301267 () Bool)

(declare-fun res!582759 () Bool)

(assert (=> b!1301267 (=> (not res!582759) (not e!834251))))

(declare-fun rulesProduceIndividualToken!911 (LexerInterface!1942 List!13100 Token!4156) Bool)

(assert (=> b!1301267 (= res!582759 (rulesProduceIndividualToken!911 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1301268 () Bool)

(assert (=> b!1301268 (= e!834255 (forall!3268 lt!427837 lambda!51247))))

(declare-fun b!1301269 () Bool)

(declare-fun res!582753 () Bool)

(assert (=> b!1301269 (=> res!582753 e!834255)))

(declare-fun generalisedUnion!64 (List!13099) Regex!3561)

(assert (=> b!1301269 (= res!582753 (not (= lt!427835 (generalisedUnion!64 lt!427837))))))

(declare-fun b!1301270 () Bool)

(declare-fun res!582765 () Bool)

(assert (=> b!1301270 (=> res!582765 e!834258)))

(declare-fun lt!427832 () List!13098)

(assert (=> b!1301270 (= res!582765 (not (contains!2187 lt!427832 lt!427831)))))

(declare-fun b!1301271 () Bool)

(declare-fun e!834259 () Bool)

(assert (=> b!1301271 (= e!834256 e!834259)))

(declare-fun res!582757 () Bool)

(assert (=> b!1301271 (=> res!582757 e!834259)))

(declare-fun getSuffix!417 (List!13098 List!13098) List!13098)

(assert (=> b!1301271 (= res!582757 (not (= lt!427832 (++!3318 lt!427834 (getSuffix!417 lt!427832 lt!427834)))))))

(declare-fun pickWitness!24 (Int) List!13098)

(assert (=> b!1301271 (= lt!427832 (pickWitness!24 lambda!51245))))

(declare-fun b!1301272 () Bool)

(declare-fun res!582755 () Bool)

(assert (=> b!1301272 (=> res!582755 e!834258)))

(declare-fun matchR!1563 (Regex!3561 List!13098) Bool)

(assert (=> b!1301272 (= res!582755 (not (matchR!1563 lt!427835 lt!427832)))))

(declare-fun b!1301273 () Bool)

(assert (=> b!1301273 (= e!834259 e!834258)))

(declare-fun res!582761 () Bool)

(assert (=> b!1301273 (=> res!582761 e!834258)))

(declare-fun lt!427840 () C!7412)

(assert (=> b!1301273 (= res!582761 (not (contains!2187 lt!427834 lt!427840)))))

(assert (=> b!1301273 (= lt!427840 (apply!2913 lt!427836 0))))

(declare-fun b!1301274 () Bool)

(declare-fun res!582758 () Bool)

(assert (=> b!1301274 (=> (not res!582758) (not e!834253))))

(declare-fun separableTokensPredicate!225 (LexerInterface!1942 Token!4156 Token!4156 List!13100) Bool)

(assert (=> b!1301274 (= res!582758 (not (separableTokensPredicate!225 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1301275 () Bool)

(assert (=> b!1301275 (= e!834251 e!834253)))

(declare-fun res!582763 () Bool)

(assert (=> b!1301275 (=> (not res!582763) (not e!834253))))

(declare-fun size!10661 (BalanceConc!8498) Int)

(assert (=> b!1301275 (= res!582763 (> (size!10661 lt!427833) 0))))

(assert (=> b!1301275 (= lt!427833 (charsOf!1219 t2!34))))

(declare-fun res!582754 () Bool)

(assert (=> start!115006 (=> (not res!582754) (not e!834251))))

(get-info :version)

(assert (=> start!115006 (= res!582754 ((_ is Lexer!1940) thiss!19762))))

(assert (=> start!115006 e!834251))

(assert (=> start!115006 true))

(assert (=> start!115006 e!834252))

(declare-fun e!834257 () Bool)

(declare-fun inv!17466 (Token!4156) Bool)

(assert (=> start!115006 (and (inv!17466 t1!34) e!834257)))

(declare-fun e!834260 () Bool)

(assert (=> start!115006 (and (inv!17466 t2!34) e!834260)))

(declare-fun b!1301276 () Bool)

(declare-fun res!582769 () Bool)

(assert (=> b!1301276 (=> (not res!582769) (not e!834253))))

(declare-fun sepAndNonSepRulesDisjointChars!620 (List!13100 List!13100) Bool)

(assert (=> b!1301276 (= res!582769 (sepAndNonSepRulesDisjointChars!620 rules!2550 rules!2550))))

(assert (=> b!1301277 (= e!834262 (and tp!379644 tp!379653))))

(declare-fun b!1301278 () Bool)

(declare-fun tp!379651 () Bool)

(declare-fun inv!21 (TokenValue!2337) Bool)

(assert (=> b!1301278 (= e!834260 (and (inv!21 (value!73672 t2!34)) e!834245 tp!379651))))

(declare-fun b!1301279 () Bool)

(declare-fun res!582764 () Bool)

(assert (=> b!1301279 (=> (not res!582764) (not e!834251))))

(assert (=> b!1301279 (= res!582764 (rulesProduceIndividualToken!911 thiss!19762 rules!2550 t2!34))))

(assert (=> b!1301280 (= e!834263 (and tp!379648 tp!379643))))

(declare-fun tp!379654 () Bool)

(declare-fun b!1301281 () Bool)

(assert (=> b!1301281 (= e!834257 (and (inv!21 (value!73672 t1!34)) e!834248 tp!379654))))

(declare-fun b!1301282 () Bool)

(declare-fun res!582752 () Bool)

(assert (=> b!1301282 (=> res!582752 e!834258)))

(assert (=> b!1301282 (= res!582752 (not (contains!2187 lt!427832 lt!427840)))))

(declare-fun b!1301283 () Bool)

(declare-fun res!582762 () Bool)

(assert (=> b!1301283 (=> (not res!582762) (not e!834251))))

(declare-fun rulesInvariant!1812 (LexerInterface!1942 List!13100) Bool)

(assert (=> b!1301283 (= res!582762 (rulesInvariant!1812 thiss!19762 rules!2550))))

(assert (= (and start!115006 res!582754) b!1301262))

(assert (= (and b!1301262 res!582766) b!1301283))

(assert (= (and b!1301283 res!582762) b!1301267))

(assert (= (and b!1301267 res!582759) b!1301279))

(assert (= (and b!1301279 res!582764) b!1301265))

(assert (= (and b!1301265 res!582756) b!1301275))

(assert (= (and b!1301275 res!582763) b!1301276))

(assert (= (and b!1301276 res!582769) b!1301274))

(assert (= (and b!1301274 res!582758) b!1301264))

(assert (= (and b!1301264 res!582760) b!1301266))

(assert (= (and b!1301266 (not res!582770)) b!1301271))

(assert (= (and b!1301271 (not res!582757)) b!1301273))

(assert (= (and b!1301273 (not res!582761)) b!1301282))

(assert (= (and b!1301282 (not res!582752)) b!1301261))

(assert (= (and b!1301261 (not res!582767)) b!1301270))

(assert (= (and b!1301270 (not res!582765)) b!1301272))

(assert (= (and b!1301272 (not res!582755)) b!1301257))

(assert (= (and b!1301257 (not res!582768)) b!1301269))

(assert (= (and b!1301269 (not res!582753)) b!1301268))

(assert (= b!1301258 b!1301280))

(assert (= b!1301260 b!1301258))

(assert (= (and start!115006 ((_ is Cons!13034) rules!2550)) b!1301260))

(assert (= b!1301259 b!1301277))

(assert (= b!1301281 b!1301259))

(assert (= start!115006 b!1301281))

(assert (= b!1301256 b!1301263))

(assert (= b!1301278 b!1301256))

(assert (= start!115006 b!1301278))

(declare-fun m!1453019 () Bool)

(assert (=> b!1301257 m!1453019))

(declare-fun m!1453021 () Bool)

(assert (=> b!1301257 m!1453021))

(declare-fun m!1453023 () Bool)

(assert (=> b!1301266 m!1453023))

(assert (=> b!1301266 m!1453023))

(declare-fun m!1453025 () Bool)

(assert (=> b!1301266 m!1453025))

(declare-fun m!1453027 () Bool)

(assert (=> b!1301269 m!1453027))

(declare-fun m!1453029 () Bool)

(assert (=> b!1301271 m!1453029))

(assert (=> b!1301271 m!1453029))

(declare-fun m!1453031 () Bool)

(assert (=> b!1301271 m!1453031))

(declare-fun m!1453033 () Bool)

(assert (=> b!1301271 m!1453033))

(declare-fun m!1453035 () Bool)

(assert (=> b!1301259 m!1453035))

(declare-fun m!1453037 () Bool)

(assert (=> b!1301259 m!1453037))

(declare-fun m!1453039 () Bool)

(assert (=> start!115006 m!1453039))

(declare-fun m!1453041 () Bool)

(assert (=> start!115006 m!1453041))

(assert (=> b!1301268 m!1453019))

(declare-fun m!1453043 () Bool)

(assert (=> b!1301270 m!1453043))

(declare-fun m!1453045 () Bool)

(assert (=> b!1301281 m!1453045))

(declare-fun m!1453047 () Bool)

(assert (=> b!1301264 m!1453047))

(declare-fun m!1453049 () Bool)

(assert (=> b!1301264 m!1453049))

(declare-fun m!1453051 () Bool)

(assert (=> b!1301264 m!1453051))

(declare-fun m!1453053 () Bool)

(assert (=> b!1301264 m!1453053))

(declare-fun m!1453055 () Bool)

(assert (=> b!1301264 m!1453055))

(declare-fun m!1453057 () Bool)

(assert (=> b!1301264 m!1453057))

(declare-fun m!1453059 () Bool)

(assert (=> b!1301272 m!1453059))

(declare-fun m!1453061 () Bool)

(assert (=> b!1301279 m!1453061))

(declare-fun m!1453063 () Bool)

(assert (=> b!1301274 m!1453063))

(declare-fun m!1453065 () Bool)

(assert (=> b!1301258 m!1453065))

(declare-fun m!1453067 () Bool)

(assert (=> b!1301258 m!1453067))

(declare-fun m!1453069 () Bool)

(assert (=> b!1301262 m!1453069))

(declare-fun m!1453071 () Bool)

(assert (=> b!1301267 m!1453071))

(declare-fun m!1453073 () Bool)

(assert (=> b!1301278 m!1453073))

(declare-fun m!1453075 () Bool)

(assert (=> b!1301282 m!1453075))

(declare-fun m!1453077 () Bool)

(assert (=> b!1301273 m!1453077))

(declare-fun m!1453079 () Bool)

(assert (=> b!1301273 m!1453079))

(declare-fun m!1453081 () Bool)

(assert (=> b!1301256 m!1453081))

(declare-fun m!1453083 () Bool)

(assert (=> b!1301256 m!1453083))

(declare-fun m!1453085 () Bool)

(assert (=> b!1301261 m!1453085))

(declare-fun m!1453087 () Bool)

(assert (=> b!1301283 m!1453087))

(declare-fun m!1453089 () Bool)

(assert (=> b!1301275 m!1453089))

(declare-fun m!1453091 () Bool)

(assert (=> b!1301275 m!1453091))

(declare-fun m!1453093 () Bool)

(assert (=> b!1301276 m!1453093))

(check-sat (not b!1301283) (not b!1301259) (not b_next!31623) (not b!1301260) (not b!1301272) (not b!1301275) (not b!1301268) (not b!1301273) (not b!1301262) (not b!1301261) (not b!1301267) (not b_next!31619) b_and!86777 (not b!1301269) (not b!1301279) (not b_next!31621) b_and!86773 (not b!1301258) b_and!86771 b_and!86769 (not b!1301276) (not start!115006) (not b!1301257) (not b!1301278) (not b!1301256) (not b!1301274) (not b_next!31627) (not b!1301282) (not b!1301264) b_and!86775 (not b!1301270) (not b_next!31625) (not b!1301271) (not b!1301266) (not b!1301281) b_and!86767 (not b_next!31629))
(check-sat (not b_next!31623) (not b_next!31627) b_and!86775 (not b_next!31625) (not b_next!31619) b_and!86777 (not b_next!31621) b_and!86773 b_and!86771 b_and!86769 b_and!86767 (not b_next!31629))
