; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229848 () Bool)

(assert start!229848)

(declare-fun b!2328122 () Bool)

(declare-fun b_free!70225 () Bool)

(declare-fun b_next!70929 () Bool)

(assert (=> b!2328122 (= b_free!70225 (not b_next!70929))))

(declare-fun tp!737642 () Bool)

(declare-fun b_and!185137 () Bool)

(assert (=> b!2328122 (= tp!737642 b_and!185137)))

(declare-fun b_free!70227 () Bool)

(declare-fun b_next!70931 () Bool)

(assert (=> b!2328122 (= b_free!70227 (not b_next!70931))))

(declare-fun tp!737643 () Bool)

(declare-fun b_and!185139 () Bool)

(assert (=> b!2328122 (= tp!737643 b_and!185139)))

(declare-datatypes ((List!27855 0))(
  ( (Nil!27757) (Cons!27757 (h!33158 (_ BitVec 16)) (t!207577 List!27855)) )
))
(declare-datatypes ((TokenValue!4596 0))(
  ( (FloatLiteralValue!9192 (text!32617 List!27855)) (TokenValueExt!4595 (__x!18351 Int)) (Broken!22980 (value!140372 List!27855)) (Object!4693) (End!4596) (Def!4596) (Underscore!4596) (Match!4596) (Else!4596) (Error!4596) (Case!4596) (If!4596) (Extends!4596) (Abstract!4596) (Class!4596) (Val!4596) (DelimiterValue!9192 (del!4656 List!27855)) (KeywordValue!4602 (value!140373 List!27855)) (CommentValue!9192 (value!140374 List!27855)) (WhitespaceValue!9192 (value!140375 List!27855)) (IndentationValue!4596 (value!140376 List!27855)) (String!30349) (Int32!4596) (Broken!22981 (value!140377 List!27855)) (Boolean!4597) (Unit!40568) (OperatorValue!4599 (op!4656 List!27855)) (IdentifierValue!9192 (value!140378 List!27855)) (IdentifierValue!9193 (value!140379 List!27855)) (WhitespaceValue!9193 (value!140380 List!27855)) (True!9192) (False!9192) (Broken!22982 (value!140381 List!27855)) (Broken!22983 (value!140382 List!27855)) (True!9193) (RightBrace!4596) (RightBracket!4596) (Colon!4596) (Null!4596) (Comma!4596) (LeftBracket!4596) (False!9193) (LeftBrace!4596) (ImaginaryLiteralValue!4596 (text!32618 List!27855)) (StringLiteralValue!13788 (value!140383 List!27855)) (EOFValue!4596 (value!140384 List!27855)) (IdentValue!4596 (value!140385 List!27855)) (DelimiterValue!9193 (value!140386 List!27855)) (DedentValue!4596 (value!140387 List!27855)) (NewLineValue!4596 (value!140388 List!27855)) (IntegerValue!13788 (value!140389 (_ BitVec 32)) (text!32619 List!27855)) (IntegerValue!13789 (value!140390 Int) (text!32620 List!27855)) (Times!4596) (Or!4596) (Equal!4596) (Minus!4596) (Broken!22984 (value!140391 List!27855)) (And!4596) (Div!4596) (LessEqual!4596) (Mod!4596) (Concat!11398) (Not!4596) (Plus!4596) (SpaceValue!4596 (value!140392 List!27855)) (IntegerValue!13790 (value!140393 Int) (text!32621 List!27855)) (StringLiteralValue!13789 (text!32622 List!27855)) (FloatLiteralValue!9193 (text!32623 List!27855)) (BytesLiteralValue!4596 (value!140394 List!27855)) (CommentValue!9193 (value!140395 List!27855)) (StringLiteralValue!13790 (value!140396 List!27855)) (ErrorTokenValue!4596 (msg!4657 List!27855)) )
))
(declare-datatypes ((C!13762 0))(
  ( (C!13763 (val!8037 Int)) )
))
(declare-datatypes ((Regex!6802 0))(
  ( (ElementMatch!6802 (c!369894 C!13762)) (Concat!11399 (regOne!14116 Regex!6802) (regTwo!14116 Regex!6802)) (EmptyExpr!6802) (Star!6802 (reg!7131 Regex!6802)) (EmptyLang!6802) (Union!6802 (regOne!14117 Regex!6802) (regTwo!14117 Regex!6802)) )
))
(declare-datatypes ((String!30350 0))(
  ( (String!30351 (value!140397 String)) )
))
(declare-datatypes ((List!27856 0))(
  ( (Nil!27758) (Cons!27758 (h!33159 C!13762) (t!207578 List!27856)) )
))
(declare-datatypes ((IArray!18201 0))(
  ( (IArray!18202 (innerList!9158 List!27856)) )
))
(declare-datatypes ((Conc!9098 0))(
  ( (Node!9098 (left!21060 Conc!9098) (right!21390 Conc!9098) (csize!18426 Int) (cheight!9309 Int)) (Leaf!13373 (xs!12078 IArray!18201) (csize!18427 Int)) (Empty!9098) )
))
(declare-datatypes ((BalanceConc!17808 0))(
  ( (BalanceConc!17809 (c!369895 Conc!9098)) )
))
(declare-datatypes ((TokenValueInjection!8712 0))(
  ( (TokenValueInjection!8713 (toValue!6250 Int) (toChars!6109 Int)) )
))
(declare-datatypes ((Rule!8644 0))(
  ( (Rule!8645 (regex!4422 Regex!6802) (tag!4912 String!30350) (isSeparator!4422 Bool) (transformation!4422 TokenValueInjection!8712)) )
))
(declare-datatypes ((List!27857 0))(
  ( (Nil!27759) (Cons!27759 (h!33160 Rule!8644) (t!207579 List!27857)) )
))
(declare-fun rules!853 () List!27857)

(declare-fun b!2328120 () Bool)

(declare-fun e!1491658 () Bool)

(declare-fun e!1491655 () Bool)

(declare-fun tp!737644 () Bool)

(declare-fun inv!37796 (String!30350) Bool)

(declare-fun inv!37799 (TokenValueInjection!8712) Bool)

(assert (=> b!2328120 (= e!1491658 (and tp!737644 (inv!37796 (tag!4912 (h!33160 rules!853))) (inv!37799 (transformation!4422 (h!33160 rules!853))) e!1491655))))

(declare-fun b!2328121 () Bool)

(declare-fun e!1491654 () Bool)

(declare-datatypes ((Token!8322 0))(
  ( (Token!8323 (value!140398 TokenValue!4596) (rule!6778 Rule!8644) (size!22005 Int) (originalCharacters!5192 List!27856)) )
))
(declare-datatypes ((List!27858 0))(
  ( (Nil!27760) (Cons!27760 (h!33161 Token!8322) (t!207580 List!27858)) )
))
(declare-datatypes ((IArray!18203 0))(
  ( (IArray!18204 (innerList!9159 List!27858)) )
))
(declare-datatypes ((Conc!9099 0))(
  ( (Node!9099 (left!21061 Conc!9099) (right!21391 Conc!9099) (csize!18428 Int) (cheight!9310 Int)) (Leaf!13374 (xs!12079 IArray!18203) (csize!18429 Int)) (Empty!9099) )
))
(declare-datatypes ((BalanceConc!17810 0))(
  ( (BalanceConc!17811 (c!369896 Conc!9099)) )
))
(declare-fun tokens!300 () BalanceConc!17810)

(declare-fun tp!737641 () Bool)

(declare-fun inv!37800 (Conc!9099) Bool)

(assert (=> b!2328121 (= e!1491654 (and (inv!37800 (c!369896 tokens!300)) tp!737641))))

(assert (=> b!2328122 (= e!1491655 (and tp!737642 tp!737643))))

(declare-fun res!994034 () Bool)

(declare-fun e!1491657 () Bool)

(assert (=> start!229848 (=> (not res!994034) (not e!1491657))))

(declare-fun isEmpty!15821 (List!27857) Bool)

(assert (=> start!229848 (= res!994034 (not (isEmpty!15821 rules!853)))))

(assert (=> start!229848 e!1491657))

(declare-fun e!1491659 () Bool)

(assert (=> start!229848 e!1491659))

(declare-fun inv!37801 (BalanceConc!17810) Bool)

(assert (=> start!229848 (and (inv!37801 tokens!300) e!1491654)))

(declare-fun b!2328123 () Bool)

(declare-fun res!994033 () Bool)

(assert (=> b!2328123 (=> (not res!994033) (not e!1491657))))

(declare-datatypes ((LexerInterface!4019 0))(
  ( (LexerInterfaceExt!4016 (__x!18352 Int)) (Lexer!4017) )
))
(declare-fun separableTokens!296 (LexerInterface!4019 BalanceConc!17810 List!27857) Bool)

(assert (=> b!2328123 (= res!994033 (separableTokens!296 Lexer!4017 tokens!300 rules!853))))

(declare-fun b!2328124 () Bool)

(declare-fun res!994036 () Bool)

(assert (=> b!2328124 (=> (not res!994036) (not e!1491657))))

(declare-fun rulesInvariant!3519 (LexerInterface!4019 List!27857) Bool)

(assert (=> b!2328124 (= res!994036 (rulesInvariant!3519 Lexer!4017 rules!853))))

(declare-fun b!2328125 () Bool)

(declare-fun res!994038 () Bool)

(assert (=> b!2328125 (=> (not res!994038) (not e!1491657))))

(declare-fun rulesProduceEachTokenIndividually!927 (LexerInterface!4019 List!27857 BalanceConc!17810) Bool)

(assert (=> b!2328125 (= res!994038 (rulesProduceEachTokenIndividually!927 Lexer!4017 rules!853 tokens!300))))

(declare-fun b!2328126 () Bool)

(declare-fun tp!737640 () Bool)

(assert (=> b!2328126 (= e!1491659 (and e!1491658 tp!737640))))

(declare-fun b!2328127 () Bool)

(declare-fun e!1491656 () Bool)

(declare-datatypes ((PrintableTokens!1266 0))(
  ( (PrintableTokens!1267 (rules!16492 List!27857) (tokens!2465 BalanceConc!17810)) )
))
(declare-datatypes ((Option!5418 0))(
  ( (None!5417) (Some!5417 (v!30663 PrintableTokens!1266)) )
))
(declare-fun lt!862000 () Option!5418)

(declare-fun isDefined!4259 (Option!5418) Bool)

(assert (=> b!2328127 (= e!1491656 (not (isDefined!4259 lt!862000)))))

(declare-fun b!2328128 () Bool)

(declare-fun res!994035 () Bool)

(assert (=> b!2328128 (=> (not res!994035) (not e!1491657))))

(declare-fun rulesProduceEachTokenIndividuallyList!1349 (LexerInterface!4019 List!27857 List!27858) Bool)

(declare-fun list!11036 (BalanceConc!17810) List!27858)

(assert (=> b!2328128 (= res!994035 (rulesProduceEachTokenIndividuallyList!1349 Lexer!4017 rules!853 (list!11036 tokens!300)))))

(declare-fun b!2328129 () Bool)

(assert (=> b!2328129 (= e!1491657 e!1491656)))

(declare-fun res!994037 () Bool)

(assert (=> b!2328129 (=> (not res!994037) (not e!1491656))))

(declare-fun isEmpty!15822 (Option!5418) Bool)

(assert (=> b!2328129 (= res!994037 (not (isEmpty!15822 lt!862000)))))

(assert (=> b!2328129 (= lt!862000 (Some!5417 (PrintableTokens!1267 rules!853 tokens!300)))))

(assert (= (and start!229848 res!994034) b!2328124))

(assert (= (and b!2328124 res!994036) b!2328128))

(assert (= (and b!2328128 res!994035) b!2328125))

(assert (= (and b!2328125 res!994038) b!2328123))

(assert (= (and b!2328123 res!994033) b!2328129))

(assert (= (and b!2328129 res!994037) b!2328127))

(assert (= b!2328120 b!2328122))

(assert (= b!2328126 b!2328120))

(assert (= (and start!229848 (is-Cons!27759 rules!853)) b!2328126))

(assert (= start!229848 b!2328121))

(declare-fun m!2758843 () Bool)

(assert (=> start!229848 m!2758843))

(declare-fun m!2758845 () Bool)

(assert (=> start!229848 m!2758845))

(declare-fun m!2758847 () Bool)

(assert (=> b!2328125 m!2758847))

(declare-fun m!2758849 () Bool)

(assert (=> b!2328128 m!2758849))

(assert (=> b!2328128 m!2758849))

(declare-fun m!2758851 () Bool)

(assert (=> b!2328128 m!2758851))

(declare-fun m!2758853 () Bool)

(assert (=> b!2328124 m!2758853))

(declare-fun m!2758855 () Bool)

(assert (=> b!2328127 m!2758855))

(declare-fun m!2758857 () Bool)

(assert (=> b!2328123 m!2758857))

(declare-fun m!2758859 () Bool)

(assert (=> b!2328120 m!2758859))

(declare-fun m!2758861 () Bool)

(assert (=> b!2328120 m!2758861))

(declare-fun m!2758863 () Bool)

(assert (=> b!2328121 m!2758863))

(declare-fun m!2758865 () Bool)

(assert (=> b!2328129 m!2758865))

(push 1)

(assert b_and!185139)

(assert (not b!2328128))

(assert (not b!2328120))

(assert (not b!2328121))

(assert (not b!2328126))

(assert (not b!2328125))

(assert (not b!2328127))

(assert (not b!2328124))

(assert (not start!229848))

(assert (not b!2328123))

(assert (not b_next!70931))

(assert (not b!2328129))

(assert b_and!185137)

(assert (not b_next!70929))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185137)

(assert b_and!185139)

(assert (not b_next!70931))

(assert (not b_next!70929))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!689317 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!154 (LexerInterface!4019 BalanceConc!17810 Int List!27857) Bool)

(assert (=> d!689317 (= (separableTokens!296 Lexer!4017 tokens!300 rules!853) (tokensListTwoByTwoPredicateSeparable!154 Lexer!4017 tokens!300 0 rules!853))))

(declare-fun bs!459348 () Bool)

(assert (= bs!459348 d!689317))

(declare-fun m!2758895 () Bool)

(assert (=> bs!459348 m!2758895))

(assert (=> b!2328123 d!689317))

(declare-fun b!2328185 () Bool)

(declare-fun e!1491702 () Bool)

(assert (=> b!2328185 (= e!1491702 true)))

(declare-fun b!2328184 () Bool)

(declare-fun e!1491701 () Bool)

(assert (=> b!2328184 (= e!1491701 e!1491702)))

(declare-fun b!2328183 () Bool)

(declare-fun e!1491700 () Bool)

(assert (=> b!2328183 (= e!1491700 e!1491701)))

(declare-fun d!689321 () Bool)

(assert (=> d!689321 e!1491700))

(assert (= b!2328184 b!2328185))

(assert (= b!2328183 b!2328184))

(assert (= (and d!689321 (is-Cons!27759 rules!853)) b!2328183))

(declare-fun order!15359 () Int)

(declare-fun lambda!86378 () Int)

(declare-fun order!15357 () Int)

(declare-fun dynLambda!11985 (Int Int) Int)

(declare-fun dynLambda!11986 (Int Int) Int)

(assert (=> b!2328185 (< (dynLambda!11985 order!15357 (toValue!6250 (transformation!4422 (h!33160 rules!853)))) (dynLambda!11986 order!15359 lambda!86378))))

(declare-fun order!15361 () Int)

(declare-fun dynLambda!11987 (Int Int) Int)

(assert (=> b!2328185 (< (dynLambda!11987 order!15361 (toChars!6109 (transformation!4422 (h!33160 rules!853)))) (dynLambda!11986 order!15359 lambda!86378))))

(assert (=> d!689321 true))

(declare-fun lt!862008 () Bool)

(declare-fun forall!5520 (List!27858 Int) Bool)

(assert (=> d!689321 (= lt!862008 (forall!5520 (list!11036 tokens!300) lambda!86378))))

(declare-fun e!1491692 () Bool)

(assert (=> d!689321 (= lt!862008 e!1491692)))

(declare-fun res!994064 () Bool)

(assert (=> d!689321 (=> res!994064 e!1491692)))

(assert (=> d!689321 (= res!994064 (not (is-Cons!27760 (list!11036 tokens!300))))))

(assert (=> d!689321 (not (isEmpty!15821 rules!853))))

(assert (=> d!689321 (= (rulesProduceEachTokenIndividuallyList!1349 Lexer!4017 rules!853 (list!11036 tokens!300)) lt!862008)))

(declare-fun b!2328173 () Bool)

(declare-fun e!1491693 () Bool)

(assert (=> b!2328173 (= e!1491692 e!1491693)))

(declare-fun res!994065 () Bool)

(assert (=> b!2328173 (=> (not res!994065) (not e!1491693))))

(declare-fun rulesProduceIndividualToken!1786 (LexerInterface!4019 List!27857 Token!8322) Bool)

(assert (=> b!2328173 (= res!994065 (rulesProduceIndividualToken!1786 Lexer!4017 rules!853 (h!33161 (list!11036 tokens!300))))))

(declare-fun b!2328174 () Bool)

(assert (=> b!2328174 (= e!1491693 (rulesProduceEachTokenIndividuallyList!1349 Lexer!4017 rules!853 (t!207580 (list!11036 tokens!300))))))

(assert (= (and d!689321 (not res!994064)) b!2328173))

(assert (= (and b!2328173 res!994065) b!2328174))

(assert (=> d!689321 m!2758849))

(declare-fun m!2758897 () Bool)

(assert (=> d!689321 m!2758897))

(assert (=> d!689321 m!2758843))

(declare-fun m!2758899 () Bool)

(assert (=> b!2328173 m!2758899))

(declare-fun m!2758901 () Bool)

(assert (=> b!2328174 m!2758901))

(assert (=> b!2328128 d!689321))

(declare-fun d!689323 () Bool)

(declare-fun list!11038 (Conc!9099) List!27858)

(assert (=> d!689323 (= (list!11036 tokens!300) (list!11038 (c!369896 tokens!300)))))

(declare-fun bs!459349 () Bool)

(assert (= bs!459349 d!689323))

(declare-fun m!2758903 () Bool)

(assert (=> bs!459349 m!2758903))

(assert (=> b!2328128 d!689323))

(declare-fun d!689325 () Bool)

(assert (=> d!689325 (= (isEmpty!15822 lt!862000) (not (is-Some!5417 lt!862000)))))

(assert (=> b!2328129 d!689325))

(declare-fun d!689327 () Bool)

(declare-fun res!994068 () Bool)

(declare-fun e!1491705 () Bool)

(assert (=> d!689327 (=> (not res!994068) (not e!1491705))))

(declare-fun rulesValid!1642 (LexerInterface!4019 List!27857) Bool)

(assert (=> d!689327 (= res!994068 (rulesValid!1642 Lexer!4017 rules!853))))

(assert (=> d!689327 (= (rulesInvariant!3519 Lexer!4017 rules!853) e!1491705)))

(declare-fun b!2328190 () Bool)

(declare-datatypes ((List!27863 0))(
  ( (Nil!27765) (Cons!27765 (h!33166 String!30350) (t!207595 List!27863)) )
))
(declare-fun noDuplicateTag!1640 (LexerInterface!4019 List!27857 List!27863) Bool)

(assert (=> b!2328190 (= e!1491705 (noDuplicateTag!1640 Lexer!4017 rules!853 Nil!27765))))

(assert (= (and d!689327 res!994068) b!2328190))

(declare-fun m!2758905 () Bool)

(assert (=> d!689327 m!2758905))

(declare-fun m!2758907 () Bool)

(assert (=> b!2328190 m!2758907))

(assert (=> b!2328124 d!689327))

(declare-fun bs!459350 () Bool)

(declare-fun d!689329 () Bool)

(assert (= bs!459350 (and d!689329 d!689321)))

(declare-fun lambda!86388 () Int)

(assert (=> bs!459350 (= lambda!86388 lambda!86378)))

(declare-fun b!2328215 () Bool)

(declare-fun e!1491726 () Bool)

(assert (=> b!2328215 (= e!1491726 true)))

(declare-fun b!2328214 () Bool)

(declare-fun e!1491725 () Bool)

(assert (=> b!2328214 (= e!1491725 e!1491726)))

(declare-fun b!2328213 () Bool)

(declare-fun e!1491724 () Bool)

(assert (=> b!2328213 (= e!1491724 e!1491725)))

(assert (=> d!689329 e!1491724))

(assert (= b!2328214 b!2328215))

(assert (= b!2328213 b!2328214))

(assert (= (and d!689329 (is-Cons!27759 rules!853)) b!2328213))

(assert (=> b!2328215 (< (dynLambda!11985 order!15357 (toValue!6250 (transformation!4422 (h!33160 rules!853)))) (dynLambda!11986 order!15359 lambda!86388))))

(assert (=> b!2328215 (< (dynLambda!11987 order!15361 (toChars!6109 (transformation!4422 (h!33160 rules!853)))) (dynLambda!11986 order!15359 lambda!86388))))

(assert (=> d!689329 true))

(declare-fun e!1491723 () Bool)

(assert (=> d!689329 e!1491723))

(declare-fun res!994077 () Bool)

(assert (=> d!689329 (=> (not res!994077) (not e!1491723))))

(declare-fun lt!862012 () Bool)

(assert (=> d!689329 (= res!994077 (= lt!862012 (forall!5520 (list!11036 tokens!300) lambda!86388)))))

(declare-fun forall!5521 (BalanceConc!17810 Int) Bool)

(assert (=> d!689329 (= lt!862012 (forall!5521 tokens!300 lambda!86388))))

(assert (=> d!689329 (not (isEmpty!15821 rules!853))))

(assert (=> d!689329 (= (rulesProduceEachTokenIndividually!927 Lexer!4017 rules!853 tokens!300) lt!862012)))

(declare-fun b!2328212 () Bool)

(assert (=> b!2328212 (= e!1491723 (= lt!862012 (rulesProduceEachTokenIndividuallyList!1349 Lexer!4017 rules!853 (list!11036 tokens!300))))))

(assert (= (and d!689329 res!994077) b!2328212))

(assert (=> d!689329 m!2758849))

(assert (=> d!689329 m!2758849))

(declare-fun m!2758917 () Bool)

(assert (=> d!689329 m!2758917))

(declare-fun m!2758919 () Bool)

(assert (=> d!689329 m!2758919))

(assert (=> d!689329 m!2758843))

(assert (=> b!2328212 m!2758849))

(assert (=> b!2328212 m!2758849))

(assert (=> b!2328212 m!2758851))

(assert (=> b!2328125 d!689329))

(declare-fun d!689335 () Bool)

(assert (=> d!689335 (= (inv!37796 (tag!4912 (h!33160 rules!853))) (= (mod (str.len (value!140397 (tag!4912 (h!33160 rules!853)))) 2) 0))))

(assert (=> b!2328120 d!689335))

(declare-fun d!689337 () Bool)

(declare-fun res!994080 () Bool)

(declare-fun e!1491729 () Bool)

(assert (=> d!689337 (=> (not res!994080) (not e!1491729))))

(declare-fun semiInverseModEq!1809 (Int Int) Bool)

(assert (=> d!689337 (= res!994080 (semiInverseModEq!1809 (toChars!6109 (transformation!4422 (h!33160 rules!853))) (toValue!6250 (transformation!4422 (h!33160 rules!853)))))))

(assert (=> d!689337 (= (inv!37799 (transformation!4422 (h!33160 rules!853))) e!1491729)))

(declare-fun b!2328218 () Bool)

(declare-fun equivClasses!1724 (Int Int) Bool)

(assert (=> b!2328218 (= e!1491729 (equivClasses!1724 (toChars!6109 (transformation!4422 (h!33160 rules!853))) (toValue!6250 (transformation!4422 (h!33160 rules!853)))))))

(assert (= (and d!689337 res!994080) b!2328218))

(declare-fun m!2758921 () Bool)

(assert (=> d!689337 m!2758921))

(declare-fun m!2758923 () Bool)

(assert (=> b!2328218 m!2758923))

(assert (=> b!2328120 d!689337))

(declare-fun d!689339 () Bool)

(declare-fun c!369905 () Bool)

(assert (=> d!689339 (= c!369905 (is-Node!9099 (c!369896 tokens!300)))))

(declare-fun e!1491734 () Bool)

(assert (=> d!689339 (= (inv!37800 (c!369896 tokens!300)) e!1491734)))

(declare-fun b!2328225 () Bool)

(declare-fun inv!37805 (Conc!9099) Bool)

(assert (=> b!2328225 (= e!1491734 (inv!37805 (c!369896 tokens!300)))))

(declare-fun b!2328226 () Bool)

(declare-fun e!1491735 () Bool)

(assert (=> b!2328226 (= e!1491734 e!1491735)))

(declare-fun res!994083 () Bool)

(assert (=> b!2328226 (= res!994083 (not (is-Leaf!13374 (c!369896 tokens!300))))))

(assert (=> b!2328226 (=> res!994083 e!1491735)))

(declare-fun b!2328227 () Bool)

(declare-fun inv!37806 (Conc!9099) Bool)

(assert (=> b!2328227 (= e!1491735 (inv!37806 (c!369896 tokens!300)))))

(assert (= (and d!689339 c!369905) b!2328225))

(assert (= (and d!689339 (not c!369905)) b!2328226))

(assert (= (and b!2328226 (not res!994083)) b!2328227))

(declare-fun m!2758925 () Bool)

(assert (=> b!2328225 m!2758925))

(declare-fun m!2758927 () Bool)

(assert (=> b!2328227 m!2758927))

(assert (=> b!2328121 d!689339))

(declare-fun d!689341 () Bool)

(assert (=> d!689341 (= (isDefined!4259 lt!862000) (not (isEmpty!15822 lt!862000)))))

(declare-fun bs!459351 () Bool)

(assert (= bs!459351 d!689341))

(assert (=> bs!459351 m!2758865))

(assert (=> b!2328127 d!689341))

(declare-fun d!689343 () Bool)

(assert (=> d!689343 (= (isEmpty!15821 rules!853) (is-Nil!27759 rules!853))))

(assert (=> start!229848 d!689343))

(declare-fun d!689345 () Bool)

(declare-fun isBalanced!2776 (Conc!9099) Bool)

(assert (=> d!689345 (= (inv!37801 tokens!300) (isBalanced!2776 (c!369896 tokens!300)))))

(declare-fun bs!459352 () Bool)

(assert (= bs!459352 d!689345))

(declare-fun m!2758929 () Bool)

(assert (=> bs!459352 m!2758929))

(assert (=> start!229848 d!689345))

(declare-fun b!2328239 () Bool)

(declare-fun e!1491738 () Bool)

(declare-fun tp!737672 () Bool)

(declare-fun tp!737670 () Bool)

(assert (=> b!2328239 (= e!1491738 (and tp!737672 tp!737670))))

(declare-fun b!2328238 () Bool)

(declare-fun tp_is_empty!10919 () Bool)

(assert (=> b!2328238 (= e!1491738 tp_is_empty!10919)))

(declare-fun b!2328241 () Bool)

(declare-fun tp!737671 () Bool)

(declare-fun tp!737674 () Bool)

(assert (=> b!2328241 (= e!1491738 (and tp!737671 tp!737674))))

(assert (=> b!2328120 (= tp!737644 e!1491738)))

(declare-fun b!2328240 () Bool)

(declare-fun tp!737673 () Bool)

(assert (=> b!2328240 (= e!1491738 tp!737673)))

(assert (= (and b!2328120 (is-ElementMatch!6802 (regex!4422 (h!33160 rules!853)))) b!2328238))

(assert (= (and b!2328120 (is-Concat!11399 (regex!4422 (h!33160 rules!853)))) b!2328239))

(assert (= (and b!2328120 (is-Star!6802 (regex!4422 (h!33160 rules!853)))) b!2328240))

(assert (= (and b!2328120 (is-Union!6802 (regex!4422 (h!33160 rules!853)))) b!2328241))

(declare-fun b!2328250 () Bool)

(declare-fun tp!737683 () Bool)

(declare-fun e!1491744 () Bool)

(declare-fun tp!737682 () Bool)

(assert (=> b!2328250 (= e!1491744 (and (inv!37800 (left!21061 (c!369896 tokens!300))) tp!737682 (inv!37800 (right!21391 (c!369896 tokens!300))) tp!737683))))

(declare-fun b!2328252 () Bool)

(declare-fun e!1491743 () Bool)

(declare-fun tp!737681 () Bool)

(assert (=> b!2328252 (= e!1491743 tp!737681)))

(declare-fun b!2328251 () Bool)

(declare-fun inv!37807 (IArray!18203) Bool)

(assert (=> b!2328251 (= e!1491744 (and (inv!37807 (xs!12079 (c!369896 tokens!300))) e!1491743))))

(assert (=> b!2328121 (= tp!737641 (and (inv!37800 (c!369896 tokens!300)) e!1491744))))

(assert (= (and b!2328121 (is-Node!9099 (c!369896 tokens!300))) b!2328250))

(assert (= b!2328251 b!2328252))

(assert (= (and b!2328121 (is-Leaf!13374 (c!369896 tokens!300))) b!2328251))

(declare-fun m!2758931 () Bool)

(assert (=> b!2328250 m!2758931))

(declare-fun m!2758933 () Bool)

(assert (=> b!2328250 m!2758933))

(declare-fun m!2758935 () Bool)

(assert (=> b!2328251 m!2758935))

(assert (=> b!2328121 m!2758863))

(declare-fun b!2328263 () Bool)

(declare-fun b_free!70233 () Bool)

(declare-fun b_next!70937 () Bool)

(assert (=> b!2328263 (= b_free!70233 (not b_next!70937))))

(declare-fun tp!737692 () Bool)

(declare-fun b_and!185145 () Bool)

(assert (=> b!2328263 (= tp!737692 b_and!185145)))

(declare-fun b_free!70235 () Bool)

(declare-fun b_next!70939 () Bool)

(assert (=> b!2328263 (= b_free!70235 (not b_next!70939))))

(declare-fun tp!737695 () Bool)

(declare-fun b_and!185147 () Bool)

(assert (=> b!2328263 (= tp!737695 b_and!185147)))

(declare-fun e!1491756 () Bool)

(assert (=> b!2328263 (= e!1491756 (and tp!737692 tp!737695))))

(declare-fun e!1491755 () Bool)

(declare-fun tp!737694 () Bool)

(declare-fun b!2328262 () Bool)

(assert (=> b!2328262 (= e!1491755 (and tp!737694 (inv!37796 (tag!4912 (h!33160 (t!207579 rules!853)))) (inv!37799 (transformation!4422 (h!33160 (t!207579 rules!853)))) e!1491756))))

(declare-fun b!2328261 () Bool)

(declare-fun e!1491753 () Bool)

(declare-fun tp!737693 () Bool)

(assert (=> b!2328261 (= e!1491753 (and e!1491755 tp!737693))))

(assert (=> b!2328126 (= tp!737640 e!1491753)))

(assert (= b!2328262 b!2328263))

(assert (= b!2328261 b!2328262))

(assert (= (and b!2328126 (is-Cons!27759 (t!207579 rules!853))) b!2328261))

(declare-fun m!2758937 () Bool)

(assert (=> b!2328262 m!2758937))

(declare-fun m!2758939 () Bool)

(assert (=> b!2328262 m!2758939))

(push 1)

(assert (not b!2328262))

(assert (not b!2328212))

(assert (not b!2328240))

(assert (not b!2328252))

(assert (not b!2328190))

(assert (not d!689317))

(assert (not b!2328239))

(assert (not b_next!70931))

(assert (not d!689329))

(assert (not b!2328250))

(assert (not b_next!70937))

(assert (not b!2328225))

(assert (not b!2328227))

(assert b_and!185139)

(assert (not b!2328251))

(assert (not d!689327))

(assert tp_is_empty!10919)

(assert (not b!2328213))

(assert (not b!2328121))

(assert (not d!689345))

(assert (not d!689321))

(assert (not b!2328173))

(assert (not d!689323))

(assert (not b!2328241))

(assert (not b!2328174))

(assert b_and!185147)

(assert b_and!185145)

(assert (not d!689337))

(assert b_and!185137)

(assert (not b_next!70929))

(assert (not b!2328183))

(assert (not b!2328218))

(assert (not d!689341))

(assert (not b!2328261))

(assert (not b_next!70939))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185139)

(assert b_and!185147)

(assert b_and!185145)

(assert (not b_next!70931))

(assert (not b_next!70937))

(assert (not b_next!70939))

(assert b_and!185137)

(assert (not b_next!70929))

(check-sat)

(pop 1)

