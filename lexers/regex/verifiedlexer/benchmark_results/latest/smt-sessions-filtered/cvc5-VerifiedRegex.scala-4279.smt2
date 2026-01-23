; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!230004 () Bool)

(assert start!230004)

(declare-fun b!2328896 () Bool)

(declare-fun b_free!70277 () Bool)

(declare-fun b_next!70981 () Bool)

(assert (=> b!2328896 (= b_free!70277 (not b_next!70981))))

(declare-fun tp!738009 () Bool)

(declare-fun b_and!185189 () Bool)

(assert (=> b!2328896 (= tp!738009 b_and!185189)))

(declare-fun b_free!70279 () Bool)

(declare-fun b_next!70983 () Bool)

(assert (=> b!2328896 (= b_free!70279 (not b_next!70983))))

(declare-fun tp!738007 () Bool)

(declare-fun b_and!185191 () Bool)

(assert (=> b!2328896 (= tp!738007 b_and!185191)))

(declare-fun b!2328891 () Bool)

(declare-fun e!1492173 () Bool)

(declare-fun e!1492176 () Bool)

(declare-fun tp!738008 () Bool)

(assert (=> b!2328891 (= e!1492173 (and e!1492176 tp!738008))))

(declare-datatypes ((List!27898 0))(
  ( (Nil!27800) (Cons!27800 (h!33201 (_ BitVec 16)) (t!207656 List!27898)) )
))
(declare-datatypes ((TokenValue!4606 0))(
  ( (FloatLiteralValue!9212 (text!32687 List!27898)) (TokenValueExt!4605 (__x!18371 Int)) (Broken!23030 (value!140657 List!27898)) (Object!4703) (End!4606) (Def!4606) (Underscore!4606) (Match!4606) (Else!4606) (Error!4606) (Case!4606) (If!4606) (Extends!4606) (Abstract!4606) (Class!4606) (Val!4606) (DelimiterValue!9212 (del!4666 List!27898)) (KeywordValue!4612 (value!140658 List!27898)) (CommentValue!9212 (value!140659 List!27898)) (WhitespaceValue!9212 (value!140660 List!27898)) (IndentationValue!4606 (value!140661 List!27898)) (String!30399) (Int32!4606) (Broken!23031 (value!140662 List!27898)) (Boolean!4607) (Unit!40578) (OperatorValue!4609 (op!4666 List!27898)) (IdentifierValue!9212 (value!140663 List!27898)) (IdentifierValue!9213 (value!140664 List!27898)) (WhitespaceValue!9213 (value!140665 List!27898)) (True!9212) (False!9212) (Broken!23032 (value!140666 List!27898)) (Broken!23033 (value!140667 List!27898)) (True!9213) (RightBrace!4606) (RightBracket!4606) (Colon!4606) (Null!4606) (Comma!4606) (LeftBracket!4606) (False!9213) (LeftBrace!4606) (ImaginaryLiteralValue!4606 (text!32688 List!27898)) (StringLiteralValue!13818 (value!140668 List!27898)) (EOFValue!4606 (value!140669 List!27898)) (IdentValue!4606 (value!140670 List!27898)) (DelimiterValue!9213 (value!140671 List!27898)) (DedentValue!4606 (value!140672 List!27898)) (NewLineValue!4606 (value!140673 List!27898)) (IntegerValue!13818 (value!140674 (_ BitVec 32)) (text!32689 List!27898)) (IntegerValue!13819 (value!140675 Int) (text!32690 List!27898)) (Times!4606) (Or!4606) (Equal!4606) (Minus!4606) (Broken!23034 (value!140676 List!27898)) (And!4606) (Div!4606) (LessEqual!4606) (Mod!4606) (Concat!11418) (Not!4606) (Plus!4606) (SpaceValue!4606 (value!140677 List!27898)) (IntegerValue!13820 (value!140678 Int) (text!32691 List!27898)) (StringLiteralValue!13819 (text!32692 List!27898)) (FloatLiteralValue!9213 (text!32693 List!27898)) (BytesLiteralValue!4606 (value!140679 List!27898)) (CommentValue!9213 (value!140680 List!27898)) (StringLiteralValue!13820 (value!140681 List!27898)) (ErrorTokenValue!4606 (msg!4667 List!27898)) )
))
(declare-datatypes ((C!13782 0))(
  ( (C!13783 (val!8047 Int)) )
))
(declare-datatypes ((Regex!6812 0))(
  ( (ElementMatch!6812 (c!369942 C!13782)) (Concat!11419 (regOne!14136 Regex!6812) (regTwo!14136 Regex!6812)) (EmptyExpr!6812) (Star!6812 (reg!7141 Regex!6812)) (EmptyLang!6812) (Union!6812 (regOne!14137 Regex!6812) (regTwo!14137 Regex!6812)) )
))
(declare-datatypes ((String!30400 0))(
  ( (String!30401 (value!140682 String)) )
))
(declare-datatypes ((List!27899 0))(
  ( (Nil!27801) (Cons!27801 (h!33202 C!13782) (t!207657 List!27899)) )
))
(declare-datatypes ((IArray!18241 0))(
  ( (IArray!18242 (innerList!9178 List!27899)) )
))
(declare-datatypes ((Conc!9118 0))(
  ( (Node!9118 (left!21097 Conc!9118) (right!21427 Conc!9118) (csize!18466 Int) (cheight!9329 Int)) (Leaf!13398 (xs!12098 IArray!18241) (csize!18467 Int)) (Empty!9118) )
))
(declare-datatypes ((BalanceConc!17848 0))(
  ( (BalanceConc!17849 (c!369943 Conc!9118)) )
))
(declare-datatypes ((TokenValueInjection!8732 0))(
  ( (TokenValueInjection!8733 (toValue!6260 Int) (toChars!6119 Int)) )
))
(declare-datatypes ((Rule!8664 0))(
  ( (Rule!8665 (regex!4432 Regex!6812) (tag!4922 String!30400) (isSeparator!4432 Bool) (transformation!4432 TokenValueInjection!8732)) )
))
(declare-datatypes ((Token!8342 0))(
  ( (Token!8343 (value!140683 TokenValue!4606) (rule!6788 Rule!8664) (size!22015 Int) (originalCharacters!5202 List!27899)) )
))
(declare-datatypes ((List!27900 0))(
  ( (Nil!27802) (Cons!27802 (h!33203 Token!8342) (t!207658 List!27900)) )
))
(declare-datatypes ((IArray!18243 0))(
  ( (IArray!18244 (innerList!9179 List!27900)) )
))
(declare-datatypes ((Conc!9119 0))(
  ( (Node!9119 (left!21098 Conc!9119) (right!21428 Conc!9119) (csize!18468 Int) (cheight!9330 Int)) (Leaf!13399 (xs!12099 IArray!18243) (csize!18469 Int)) (Empty!9119) )
))
(declare-datatypes ((BalanceConc!17850 0))(
  ( (BalanceConc!17851 (c!369944 Conc!9119)) )
))
(declare-datatypes ((List!27901 0))(
  ( (Nil!27803) (Cons!27803 (h!33204 Rule!8664) (t!207659 List!27901)) )
))
(declare-datatypes ((PrintableTokens!1282 0))(
  ( (PrintableTokens!1283 (rules!16512 List!27901) (tokens!2479 BalanceConc!17850)) )
))
(declare-fun lt!862050 () PrintableTokens!1282)

(declare-fun b!2328892 () Bool)

(declare-fun rules!853 () List!27901)

(declare-fun tokens!300 () BalanceConc!17850)

(declare-fun e!1492175 () Bool)

(assert (=> b!2328892 (= e!1492175 (or (not (= (rules!16512 lt!862050) rules!853)) (not (= (tokens!2479 lt!862050) tokens!300))))))

(declare-datatypes ((Option!5424 0))(
  ( (None!5423) (Some!5423 (v!30669 PrintableTokens!1282)) )
))
(declare-fun lt!862051 () Option!5424)

(declare-fun get!8384 (Option!5424) PrintableTokens!1282)

(assert (=> b!2328892 (= lt!862050 (get!8384 lt!862051))))

(declare-fun e!1492178 () Bool)

(declare-fun tp!738006 () Bool)

(declare-fun b!2328893 () Bool)

(declare-fun inv!37852 (String!30400) Bool)

(declare-fun inv!37855 (TokenValueInjection!8732) Bool)

(assert (=> b!2328893 (= e!1492176 (and tp!738006 (inv!37852 (tag!4922 (h!33204 rules!853))) (inv!37855 (transformation!4432 (h!33204 rules!853))) e!1492178))))

(declare-fun b!2328895 () Bool)

(declare-fun e!1492174 () Bool)

(declare-fun tp!738010 () Bool)

(declare-fun inv!37856 (Conc!9119) Bool)

(assert (=> b!2328895 (= e!1492174 (and (inv!37856 (c!369944 tokens!300)) tp!738010))))

(assert (=> b!2328896 (= e!1492178 (and tp!738009 tp!738007))))

(declare-fun b!2328897 () Bool)

(declare-fun res!994336 () Bool)

(declare-fun e!1492179 () Bool)

(assert (=> b!2328897 (=> (not res!994336) (not e!1492179))))

(declare-datatypes ((LexerInterface!4029 0))(
  ( (LexerInterfaceExt!4026 (__x!18372 Int)) (Lexer!4027) )
))
(declare-fun separableTokens!306 (LexerInterface!4029 BalanceConc!17850 List!27901) Bool)

(assert (=> b!2328897 (= res!994336 (separableTokens!306 Lexer!4027 tokens!300 rules!853))))

(declare-fun b!2328898 () Bool)

(assert (=> b!2328898 (= e!1492179 e!1492175)))

(declare-fun res!994339 () Bool)

(assert (=> b!2328898 (=> (not res!994339) (not e!1492175))))

(declare-fun isEmpty!15835 (Option!5424) Bool)

(assert (=> b!2328898 (= res!994339 (not (isEmpty!15835 lt!862051)))))

(assert (=> b!2328898 (= lt!862051 (Some!5423 (PrintableTokens!1283 rules!853 tokens!300)))))

(declare-fun res!994341 () Bool)

(assert (=> start!230004 (=> (not res!994341) (not e!1492179))))

(declare-fun isEmpty!15836 (List!27901) Bool)

(assert (=> start!230004 (= res!994341 (not (isEmpty!15836 rules!853)))))

(assert (=> start!230004 e!1492179))

(assert (=> start!230004 e!1492173))

(declare-fun inv!37857 (BalanceConc!17850) Bool)

(assert (=> start!230004 (and (inv!37857 tokens!300) e!1492174)))

(declare-fun b!2328894 () Bool)

(declare-fun res!994340 () Bool)

(assert (=> b!2328894 (=> (not res!994340) (not e!1492179))))

(declare-fun rulesProduceEachTokenIndividuallyList!1359 (LexerInterface!4029 List!27901 List!27900) Bool)

(declare-fun list!11049 (BalanceConc!17850) List!27900)

(assert (=> b!2328894 (= res!994340 (rulesProduceEachTokenIndividuallyList!1359 Lexer!4027 rules!853 (list!11049 tokens!300)))))

(declare-fun b!2328899 () Bool)

(declare-fun res!994337 () Bool)

(assert (=> b!2328899 (=> (not res!994337) (not e!1492179))))

(declare-fun rulesInvariant!3529 (LexerInterface!4029 List!27901) Bool)

(assert (=> b!2328899 (= res!994337 (rulesInvariant!3529 Lexer!4027 rules!853))))

(declare-fun b!2328900 () Bool)

(declare-fun res!994338 () Bool)

(assert (=> b!2328900 (=> (not res!994338) (not e!1492179))))

(declare-fun rulesProduceEachTokenIndividually!937 (LexerInterface!4029 List!27901 BalanceConc!17850) Bool)

(assert (=> b!2328900 (= res!994338 (rulesProduceEachTokenIndividually!937 Lexer!4027 rules!853 tokens!300))))

(assert (= (and start!230004 res!994341) b!2328899))

(assert (= (and b!2328899 res!994337) b!2328894))

(assert (= (and b!2328894 res!994340) b!2328900))

(assert (= (and b!2328900 res!994338) b!2328897))

(assert (= (and b!2328897 res!994336) b!2328898))

(assert (= (and b!2328898 res!994339) b!2328892))

(assert (= b!2328893 b!2328896))

(assert (= b!2328891 b!2328893))

(assert (= (and start!230004 (is-Cons!27803 rules!853)) b!2328891))

(assert (= start!230004 b!2328895))

(declare-fun m!2759263 () Bool)

(assert (=> b!2328892 m!2759263))

(declare-fun m!2759265 () Bool)

(assert (=> b!2328895 m!2759265))

(declare-fun m!2759267 () Bool)

(assert (=> b!2328897 m!2759267))

(declare-fun m!2759269 () Bool)

(assert (=> b!2328899 m!2759269))

(declare-fun m!2759271 () Bool)

(assert (=> b!2328898 m!2759271))

(declare-fun m!2759273 () Bool)

(assert (=> b!2328894 m!2759273))

(assert (=> b!2328894 m!2759273))

(declare-fun m!2759275 () Bool)

(assert (=> b!2328894 m!2759275))

(declare-fun m!2759277 () Bool)

(assert (=> b!2328893 m!2759277))

(declare-fun m!2759279 () Bool)

(assert (=> b!2328893 m!2759279))

(declare-fun m!2759281 () Bool)

(assert (=> b!2328900 m!2759281))

(declare-fun m!2759283 () Bool)

(assert (=> start!230004 m!2759283))

(declare-fun m!2759285 () Bool)

(assert (=> start!230004 m!2759285))

(push 1)

(assert (not b!2328891))

(assert (not start!230004))

(assert (not b!2328898))

(assert (not b!2328899))

(assert (not b!2328894))

(assert b_and!185189)

(assert (not b!2328897))

(assert (not b!2328893))

(assert (not b!2328895))

(assert (not b!2328892))

(assert (not b!2328900))

(assert (not b_next!70981))

(assert b_and!185191)

(assert (not b_next!70983))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185189)

(assert b_and!185191)

(assert (not b_next!70983))

(assert (not b_next!70981))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!689456 () Bool)

(assert (=> d!689456 (= (isEmpty!15835 lt!862051) (not (is-Some!5423 lt!862051)))))

(assert (=> b!2328898 d!689456))

(declare-fun d!689458 () Bool)

(assert (=> d!689458 (= (inv!37852 (tag!4922 (h!33204 rules!853))) (= (mod (str.len (value!140682 (tag!4922 (h!33204 rules!853)))) 2) 0))))

(assert (=> b!2328893 d!689458))

(declare-fun d!689460 () Bool)

(declare-fun res!994366 () Bool)

(declare-fun e!1492203 () Bool)

(assert (=> d!689460 (=> (not res!994366) (not e!1492203))))

(declare-fun semiInverseModEq!1812 (Int Int) Bool)

(assert (=> d!689460 (= res!994366 (semiInverseModEq!1812 (toChars!6119 (transformation!4432 (h!33204 rules!853))) (toValue!6260 (transformation!4432 (h!33204 rules!853)))))))

(assert (=> d!689460 (= (inv!37855 (transformation!4432 (h!33204 rules!853))) e!1492203)))

(declare-fun b!2328933 () Bool)

(declare-fun equivClasses!1727 (Int Int) Bool)

(assert (=> b!2328933 (= e!1492203 (equivClasses!1727 (toChars!6119 (transformation!4432 (h!33204 rules!853))) (toValue!6260 (transformation!4432 (h!33204 rules!853)))))))

(assert (= (and d!689460 res!994366) b!2328933))

(declare-fun m!2759311 () Bool)

(assert (=> d!689460 m!2759311))

(declare-fun m!2759313 () Bool)

(assert (=> b!2328933 m!2759313))

(assert (=> b!2328893 d!689460))

(declare-fun d!689464 () Bool)

(declare-fun res!994369 () Bool)

(declare-fun e!1492206 () Bool)

(assert (=> d!689464 (=> (not res!994369) (not e!1492206))))

(declare-fun rulesValid!1645 (LexerInterface!4029 List!27901) Bool)

(assert (=> d!689464 (= res!994369 (rulesValid!1645 Lexer!4027 rules!853))))

(assert (=> d!689464 (= (rulesInvariant!3529 Lexer!4027 rules!853) e!1492206)))

(declare-fun b!2328936 () Bool)

(declare-datatypes ((List!27906 0))(
  ( (Nil!27808) (Cons!27808 (h!33209 String!30400) (t!207674 List!27906)) )
))
(declare-fun noDuplicateTag!1643 (LexerInterface!4029 List!27901 List!27906) Bool)

(assert (=> b!2328936 (= e!1492206 (noDuplicateTag!1643 Lexer!4027 rules!853 Nil!27808))))

(assert (= (and d!689464 res!994369) b!2328936))

(declare-fun m!2759315 () Bool)

(assert (=> d!689464 m!2759315))

(declare-fun m!2759317 () Bool)

(assert (=> b!2328936 m!2759317))

(assert (=> b!2328899 d!689464))

(declare-fun d!689468 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!157 (LexerInterface!4029 BalanceConc!17850 Int List!27901) Bool)

(assert (=> d!689468 (= (separableTokens!306 Lexer!4027 tokens!300 rules!853) (tokensListTwoByTwoPredicateSeparable!157 Lexer!4027 tokens!300 0 rules!853))))

(declare-fun bs!459383 () Bool)

(assert (= bs!459383 d!689468))

(declare-fun m!2759323 () Bool)

(assert (=> bs!459383 m!2759323))

(assert (=> b!2328897 d!689468))

(declare-fun d!689472 () Bool)

(assert (=> d!689472 (= (get!8384 lt!862051) (v!30669 lt!862051))))

(assert (=> b!2328892 d!689472))

(declare-fun d!689474 () Bool)

(assert (=> d!689474 (= (isEmpty!15836 rules!853) (is-Nil!27803 rules!853))))

(assert (=> start!230004 d!689474))

(declare-fun d!689476 () Bool)

(declare-fun isBalanced!2779 (Conc!9119) Bool)

(assert (=> d!689476 (= (inv!37857 tokens!300) (isBalanced!2779 (c!369944 tokens!300)))))

(declare-fun bs!459384 () Bool)

(assert (= bs!459384 d!689476))

(declare-fun m!2759325 () Bool)

(assert (=> bs!459384 m!2759325))

(assert (=> start!230004 d!689476))

(declare-fun b!2328962 () Bool)

(declare-fun e!1492227 () Bool)

(assert (=> b!2328962 (= e!1492227 true)))

(declare-fun b!2328961 () Bool)

(declare-fun e!1492226 () Bool)

(assert (=> b!2328961 (= e!1492226 e!1492227)))

(declare-fun b!2328960 () Bool)

(declare-fun e!1492225 () Bool)

(assert (=> b!2328960 (= e!1492225 e!1492226)))

(declare-fun d!689478 () Bool)

(assert (=> d!689478 e!1492225))

(assert (= b!2328961 b!2328962))

(assert (= b!2328960 b!2328961))

(assert (= (and d!689478 (is-Cons!27803 rules!853)) b!2328960))

(declare-fun lambda!86426 () Int)

(declare-fun order!15393 () Int)

(declare-fun order!15395 () Int)

(declare-fun dynLambda!11994 (Int Int) Int)

(declare-fun dynLambda!11995 (Int Int) Int)

(assert (=> b!2328962 (< (dynLambda!11994 order!15393 (toValue!6260 (transformation!4432 (h!33204 rules!853)))) (dynLambda!11995 order!15395 lambda!86426))))

(declare-fun order!15397 () Int)

(declare-fun dynLambda!11996 (Int Int) Int)

(assert (=> b!2328962 (< (dynLambda!11996 order!15397 (toChars!6119 (transformation!4432 (h!33204 rules!853)))) (dynLambda!11995 order!15395 lambda!86426))))

(assert (=> d!689478 true))

(declare-fun lt!862062 () Bool)

(declare-fun forall!5526 (List!27900 Int) Bool)

(assert (=> d!689478 (= lt!862062 (forall!5526 (list!11049 tokens!300) lambda!86426))))

(declare-fun e!1492217 () Bool)

(assert (=> d!689478 (= lt!862062 e!1492217)))

(declare-fun res!994378 () Bool)

(assert (=> d!689478 (=> res!994378 e!1492217)))

(assert (=> d!689478 (= res!994378 (not (is-Cons!27802 (list!11049 tokens!300))))))

(assert (=> d!689478 (not (isEmpty!15836 rules!853))))

(assert (=> d!689478 (= (rulesProduceEachTokenIndividuallyList!1359 Lexer!4027 rules!853 (list!11049 tokens!300)) lt!862062)))

(declare-fun b!2328950 () Bool)

(declare-fun e!1492218 () Bool)

(assert (=> b!2328950 (= e!1492217 e!1492218)))

(declare-fun res!994377 () Bool)

(assert (=> b!2328950 (=> (not res!994377) (not e!1492218))))

(declare-fun rulesProduceIndividualToken!1789 (LexerInterface!4029 List!27901 Token!8342) Bool)

(assert (=> b!2328950 (= res!994377 (rulesProduceIndividualToken!1789 Lexer!4027 rules!853 (h!33203 (list!11049 tokens!300))))))

(declare-fun b!2328951 () Bool)

(assert (=> b!2328951 (= e!1492218 (rulesProduceEachTokenIndividuallyList!1359 Lexer!4027 rules!853 (t!207658 (list!11049 tokens!300))))))

(assert (= (and d!689478 (not res!994378)) b!2328950))

(assert (= (and b!2328950 res!994377) b!2328951))

(assert (=> d!689478 m!2759273))

(declare-fun m!2759329 () Bool)

(assert (=> d!689478 m!2759329))

(assert (=> d!689478 m!2759283))

(declare-fun m!2759331 () Bool)

(assert (=> b!2328950 m!2759331))

(declare-fun m!2759333 () Bool)

(assert (=> b!2328951 m!2759333))

(assert (=> b!2328894 d!689478))

(declare-fun d!689482 () Bool)

(declare-fun list!11051 (Conc!9119) List!27900)

(assert (=> d!689482 (= (list!11049 tokens!300) (list!11051 (c!369944 tokens!300)))))

(declare-fun bs!459386 () Bool)

(assert (= bs!459386 d!689482))

(declare-fun m!2759335 () Bool)

(assert (=> bs!459386 m!2759335))

(assert (=> b!2328894 d!689482))

(declare-fun bs!459387 () Bool)

(declare-fun d!689484 () Bool)

(assert (= bs!459387 (and d!689484 d!689478)))

(declare-fun lambda!86436 () Int)

(assert (=> bs!459387 (= lambda!86436 lambda!86426)))

(declare-fun b!2328986 () Bool)

(declare-fun e!1492245 () Bool)

(assert (=> b!2328986 (= e!1492245 true)))

(declare-fun b!2328985 () Bool)

(declare-fun e!1492244 () Bool)

(assert (=> b!2328985 (= e!1492244 e!1492245)))

(declare-fun b!2328984 () Bool)

(declare-fun e!1492243 () Bool)

(assert (=> b!2328984 (= e!1492243 e!1492244)))

(assert (=> d!689484 e!1492243))

(assert (= b!2328985 b!2328986))

(assert (= b!2328984 b!2328985))

(assert (= (and d!689484 (is-Cons!27803 rules!853)) b!2328984))

(assert (=> b!2328986 (< (dynLambda!11994 order!15393 (toValue!6260 (transformation!4432 (h!33204 rules!853)))) (dynLambda!11995 order!15395 lambda!86436))))

(assert (=> b!2328986 (< (dynLambda!11996 order!15397 (toChars!6119 (transformation!4432 (h!33204 rules!853)))) (dynLambda!11995 order!15395 lambda!86436))))

(assert (=> d!689484 true))

(declare-fun e!1492242 () Bool)

(assert (=> d!689484 e!1492242))

(declare-fun res!994384 () Bool)

(assert (=> d!689484 (=> (not res!994384) (not e!1492242))))

(declare-fun lt!862066 () Bool)

(assert (=> d!689484 (= res!994384 (= lt!862066 (forall!5526 (list!11049 tokens!300) lambda!86436)))))

(declare-fun forall!5527 (BalanceConc!17850 Int) Bool)

(assert (=> d!689484 (= lt!862066 (forall!5527 tokens!300 lambda!86436))))

(assert (=> d!689484 (not (isEmpty!15836 rules!853))))

(assert (=> d!689484 (= (rulesProduceEachTokenIndividually!937 Lexer!4027 rules!853 tokens!300) lt!862066)))

(declare-fun b!2328983 () Bool)

(assert (=> b!2328983 (= e!1492242 (= lt!862066 (rulesProduceEachTokenIndividuallyList!1359 Lexer!4027 rules!853 (list!11049 tokens!300))))))

(assert (= (and d!689484 res!994384) b!2328983))

(assert (=> d!689484 m!2759273))

(assert (=> d!689484 m!2759273))

(declare-fun m!2759343 () Bool)

(assert (=> d!689484 m!2759343))

(declare-fun m!2759345 () Bool)

(assert (=> d!689484 m!2759345))

(assert (=> d!689484 m!2759283))

(assert (=> b!2328983 m!2759273))

(assert (=> b!2328983 m!2759273))

(assert (=> b!2328983 m!2759275))

(assert (=> b!2328900 d!689484))

(declare-fun d!689492 () Bool)

(declare-fun c!369953 () Bool)

(assert (=> d!689492 (= c!369953 (is-Node!9119 (c!369944 tokens!300)))))

(declare-fun e!1492250 () Bool)

(assert (=> d!689492 (= (inv!37856 (c!369944 tokens!300)) e!1492250)))

(declare-fun b!2328993 () Bool)

(declare-fun inv!37861 (Conc!9119) Bool)

(assert (=> b!2328993 (= e!1492250 (inv!37861 (c!369944 tokens!300)))))

(declare-fun b!2328994 () Bool)

(declare-fun e!1492251 () Bool)

(assert (=> b!2328994 (= e!1492250 e!1492251)))

(declare-fun res!994387 () Bool)

(assert (=> b!2328994 (= res!994387 (not (is-Leaf!13399 (c!369944 tokens!300))))))

(assert (=> b!2328994 (=> res!994387 e!1492251)))

(declare-fun b!2328995 () Bool)

(declare-fun inv!37862 (Conc!9119) Bool)

(assert (=> b!2328995 (= e!1492251 (inv!37862 (c!369944 tokens!300)))))

(assert (= (and d!689492 c!369953) b!2328993))

(assert (= (and d!689492 (not c!369953)) b!2328994))

(assert (= (and b!2328994 (not res!994387)) b!2328995))

(declare-fun m!2759347 () Bool)

(assert (=> b!2328993 m!2759347))

(declare-fun m!2759349 () Bool)

(assert (=> b!2328995 m!2759349))

(assert (=> b!2328895 d!689492))

(declare-fun b!2329007 () Bool)

(declare-fun e!1492254 () Bool)

(declare-fun tp!738040 () Bool)

(declare-fun tp!738037 () Bool)

(assert (=> b!2329007 (= e!1492254 (and tp!738040 tp!738037))))

(declare-fun b!2329009 () Bool)

(declare-fun tp!738039 () Bool)

(declare-fun tp!738036 () Bool)

(assert (=> b!2329009 (= e!1492254 (and tp!738039 tp!738036))))

(assert (=> b!2328893 (= tp!738006 e!1492254)))

(declare-fun b!2329008 () Bool)

(declare-fun tp!738038 () Bool)

(assert (=> b!2329008 (= e!1492254 tp!738038)))

(declare-fun b!2329006 () Bool)

(declare-fun tp_is_empty!10931 () Bool)

(assert (=> b!2329006 (= e!1492254 tp_is_empty!10931)))

(assert (= (and b!2328893 (is-ElementMatch!6812 (regex!4432 (h!33204 rules!853)))) b!2329006))

(assert (= (and b!2328893 (is-Concat!11419 (regex!4432 (h!33204 rules!853)))) b!2329007))

(assert (= (and b!2328893 (is-Star!6812 (regex!4432 (h!33204 rules!853)))) b!2329008))

(assert (= (and b!2328893 (is-Union!6812 (regex!4432 (h!33204 rules!853)))) b!2329009))

(declare-fun b!2329020 () Bool)

(declare-fun b_free!70285 () Bool)

(declare-fun b_next!70989 () Bool)

(assert (=> b!2329020 (= b_free!70285 (not b_next!70989))))

(declare-fun tp!738051 () Bool)

(declare-fun b_and!185197 () Bool)

(assert (=> b!2329020 (= tp!738051 b_and!185197)))

(declare-fun b_free!70287 () Bool)

(declare-fun b_next!70991 () Bool)

(assert (=> b!2329020 (= b_free!70287 (not b_next!70991))))

(declare-fun tp!738052 () Bool)

(declare-fun b_and!185199 () Bool)

(assert (=> b!2329020 (= tp!738052 b_and!185199)))

(declare-fun e!1492266 () Bool)

(assert (=> b!2329020 (= e!1492266 (and tp!738051 tp!738052))))

(declare-fun b!2329019 () Bool)

(declare-fun e!1492264 () Bool)

(declare-fun tp!738049 () Bool)

(assert (=> b!2329019 (= e!1492264 (and tp!738049 (inv!37852 (tag!4922 (h!33204 (t!207659 rules!853)))) (inv!37855 (transformation!4432 (h!33204 (t!207659 rules!853)))) e!1492266))))

(declare-fun b!2329018 () Bool)

(declare-fun e!1492263 () Bool)

(declare-fun tp!738050 () Bool)

(assert (=> b!2329018 (= e!1492263 (and e!1492264 tp!738050))))

(assert (=> b!2328891 (= tp!738008 e!1492263)))

(assert (= b!2329019 b!2329020))

(assert (= b!2329018 b!2329019))

(assert (= (and b!2328891 (is-Cons!27803 (t!207659 rules!853))) b!2329018))

(declare-fun m!2759351 () Bool)

(assert (=> b!2329019 m!2759351))

(declare-fun m!2759353 () Bool)

(assert (=> b!2329019 m!2759353))

(declare-fun e!1492272 () Bool)

(declare-fun tp!738059 () Bool)

(declare-fun b!2329029 () Bool)

(declare-fun tp!738060 () Bool)

(assert (=> b!2329029 (= e!1492272 (and (inv!37856 (left!21098 (c!369944 tokens!300))) tp!738060 (inv!37856 (right!21428 (c!369944 tokens!300))) tp!738059))))

(declare-fun b!2329031 () Bool)

(declare-fun e!1492271 () Bool)

(declare-fun tp!738061 () Bool)

(assert (=> b!2329031 (= e!1492271 tp!738061)))

(declare-fun b!2329030 () Bool)

(declare-fun inv!37863 (IArray!18243) Bool)

(assert (=> b!2329030 (= e!1492272 (and (inv!37863 (xs!12099 (c!369944 tokens!300))) e!1492271))))

(assert (=> b!2328895 (= tp!738010 (and (inv!37856 (c!369944 tokens!300)) e!1492272))))

(assert (= (and b!2328895 (is-Node!9119 (c!369944 tokens!300))) b!2329029))

(assert (= b!2329030 b!2329031))

(assert (= (and b!2328895 (is-Leaf!13399 (c!369944 tokens!300))) b!2329030))

(declare-fun m!2759355 () Bool)

(assert (=> b!2329029 m!2759355))

(declare-fun m!2759357 () Bool)

(assert (=> b!2329029 m!2759357))

(declare-fun m!2759359 () Bool)

(assert (=> b!2329030 m!2759359))

(assert (=> b!2328895 m!2759265))

(push 1)

(assert (not b!2328936))

(assert (not b!2328993))

(assert (not b!2328950))

(assert (not b!2329019))

(assert (not b!2329007))

(assert (not b!2329030))

(assert (not d!689468))

(assert (not b!2328933))

(assert b_and!185189)

(assert (not d!689482))

(assert (not b!2329009))

(assert (not b_next!70991))

(assert tp_is_empty!10931)

(assert (not b!2328995))

(assert (not d!689460))

(assert (not b!2329029))

(assert (not b_next!70989))

(assert (not b!2328951))

(assert (not b!2329018))

(assert (not d!689484))

(assert (not b!2328984))

(assert (not b!2328983))

(assert (not b_next!70981))

(assert b_and!185191)

(assert (not b_next!70983))

(assert (not b!2329031))

(assert b_and!185197)

(assert (not b!2328960))

(assert (not d!689464))

(assert (not d!689476))

(assert (not d!689478))

(assert (not b!2329008))

(assert (not b!2328895))

(assert b_and!185199)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!70989))

(assert (not b_next!70981))

(assert b_and!185189)

(assert b_and!185197)

(assert (not b_next!70991))

(assert b_and!185199)

(assert b_and!185191)

(assert (not b_next!70983))

(check-sat)

(pop 1)

