; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229960 () Bool)

(assert start!229960)

(declare-fun b!2328669 () Bool)

(declare-fun b_free!70265 () Bool)

(declare-fun b_next!70969 () Bool)

(assert (=> b!2328669 (= b_free!70265 (not b_next!70969))))

(declare-fun tp!737908 () Bool)

(declare-fun b_and!185177 () Bool)

(assert (=> b!2328669 (= tp!737908 b_and!185177)))

(declare-fun b_free!70267 () Bool)

(declare-fun b_next!70971 () Bool)

(assert (=> b!2328669 (= b_free!70267 (not b_next!70971))))

(declare-fun tp!737906 () Bool)

(declare-fun b_and!185179 () Bool)

(assert (=> b!2328669 (= tp!737906 b_and!185179)))

(declare-fun b!2328668 () Bool)

(declare-fun res!994255 () Bool)

(declare-fun e!1492028 () Bool)

(assert (=> b!2328668 (=> (not res!994255) (not e!1492028))))

(declare-datatypes ((List!27889 0))(
  ( (Nil!27791) (Cons!27791 (h!33192 (_ BitVec 16)) (t!207635 List!27889)) )
))
(declare-datatypes ((TokenValue!4604 0))(
  ( (FloatLiteralValue!9208 (text!32673 List!27889)) (TokenValueExt!4603 (__x!18367 Int)) (Broken!23020 (value!140600 List!27889)) (Object!4701) (End!4604) (Def!4604) (Underscore!4604) (Match!4604) (Else!4604) (Error!4604) (Case!4604) (If!4604) (Extends!4604) (Abstract!4604) (Class!4604) (Val!4604) (DelimiterValue!9208 (del!4664 List!27889)) (KeywordValue!4610 (value!140601 List!27889)) (CommentValue!9208 (value!140602 List!27889)) (WhitespaceValue!9208 (value!140603 List!27889)) (IndentationValue!4604 (value!140604 List!27889)) (String!30389) (Int32!4604) (Broken!23021 (value!140605 List!27889)) (Boolean!4605) (Unit!40576) (OperatorValue!4607 (op!4664 List!27889)) (IdentifierValue!9208 (value!140606 List!27889)) (IdentifierValue!9209 (value!140607 List!27889)) (WhitespaceValue!9209 (value!140608 List!27889)) (True!9208) (False!9208) (Broken!23022 (value!140609 List!27889)) (Broken!23023 (value!140610 List!27889)) (True!9209) (RightBrace!4604) (RightBracket!4604) (Colon!4604) (Null!4604) (Comma!4604) (LeftBracket!4604) (False!9209) (LeftBrace!4604) (ImaginaryLiteralValue!4604 (text!32674 List!27889)) (StringLiteralValue!13812 (value!140611 List!27889)) (EOFValue!4604 (value!140612 List!27889)) (IdentValue!4604 (value!140613 List!27889)) (DelimiterValue!9209 (value!140614 List!27889)) (DedentValue!4604 (value!140615 List!27889)) (NewLineValue!4604 (value!140616 List!27889)) (IntegerValue!13812 (value!140617 (_ BitVec 32)) (text!32675 List!27889)) (IntegerValue!13813 (value!140618 Int) (text!32676 List!27889)) (Times!4604) (Or!4604) (Equal!4604) (Minus!4604) (Broken!23024 (value!140619 List!27889)) (And!4604) (Div!4604) (LessEqual!4604) (Mod!4604) (Concat!11414) (Not!4604) (Plus!4604) (SpaceValue!4604 (value!140620 List!27889)) (IntegerValue!13814 (value!140621 Int) (text!32677 List!27889)) (StringLiteralValue!13813 (text!32678 List!27889)) (FloatLiteralValue!9209 (text!32679 List!27889)) (BytesLiteralValue!4604 (value!140622 List!27889)) (CommentValue!9209 (value!140623 List!27889)) (StringLiteralValue!13814 (value!140624 List!27889)) (ErrorTokenValue!4604 (msg!4665 List!27889)) )
))
(declare-datatypes ((C!13778 0))(
  ( (C!13779 (val!8045 Int)) )
))
(declare-datatypes ((Regex!6810 0))(
  ( (ElementMatch!6810 (c!369930 C!13778)) (Concat!11415 (regOne!14132 Regex!6810) (regTwo!14132 Regex!6810)) (EmptyExpr!6810) (Star!6810 (reg!7139 Regex!6810)) (EmptyLang!6810) (Union!6810 (regOne!14133 Regex!6810) (regTwo!14133 Regex!6810)) )
))
(declare-datatypes ((String!30390 0))(
  ( (String!30391 (value!140625 String)) )
))
(declare-datatypes ((List!27890 0))(
  ( (Nil!27792) (Cons!27792 (h!33193 C!13778) (t!207636 List!27890)) )
))
(declare-datatypes ((IArray!18233 0))(
  ( (IArray!18234 (innerList!9174 List!27890)) )
))
(declare-datatypes ((Conc!9114 0))(
  ( (Node!9114 (left!21088 Conc!9114) (right!21418 Conc!9114) (csize!18458 Int) (cheight!9325 Int)) (Leaf!13393 (xs!12094 IArray!18233) (csize!18459 Int)) (Empty!9114) )
))
(declare-datatypes ((BalanceConc!17840 0))(
  ( (BalanceConc!17841 (c!369931 Conc!9114)) )
))
(declare-datatypes ((TokenValueInjection!8728 0))(
  ( (TokenValueInjection!8729 (toValue!6258 Int) (toChars!6117 Int)) )
))
(declare-datatypes ((Rule!8660 0))(
  ( (Rule!8661 (regex!4430 Regex!6810) (tag!4920 String!30390) (isSeparator!4430 Bool) (transformation!4430 TokenValueInjection!8728)) )
))
(declare-datatypes ((List!27891 0))(
  ( (Nil!27793) (Cons!27793 (h!33194 Rule!8660) (t!207637 List!27891)) )
))
(declare-fun rules!853 () List!27891)

(declare-datatypes ((Token!8338 0))(
  ( (Token!8339 (value!140626 TokenValue!4604) (rule!6786 Rule!8660) (size!22013 Int) (originalCharacters!5200 List!27890)) )
))
(declare-datatypes ((List!27892 0))(
  ( (Nil!27794) (Cons!27794 (h!33195 Token!8338) (t!207638 List!27892)) )
))
(declare-datatypes ((IArray!18235 0))(
  ( (IArray!18236 (innerList!9175 List!27892)) )
))
(declare-datatypes ((Conc!9115 0))(
  ( (Node!9115 (left!21089 Conc!9115) (right!21419 Conc!9115) (csize!18460 Int) (cheight!9326 Int)) (Leaf!13394 (xs!12095 IArray!18235) (csize!18461 Int)) (Empty!9115) )
))
(declare-datatypes ((BalanceConc!17842 0))(
  ( (BalanceConc!17843 (c!369932 Conc!9115)) )
))
(declare-fun tokens!300 () BalanceConc!17842)

(declare-datatypes ((LexerInterface!4027 0))(
  ( (LexerInterfaceExt!4024 (__x!18368 Int)) (Lexer!4025) )
))
(declare-fun rulesProduceEachTokenIndividually!935 (LexerInterface!4027 List!27891 BalanceConc!17842) Bool)

(assert (=> b!2328668 (= res!994255 (rulesProduceEachTokenIndividually!935 Lexer!4025 rules!853 tokens!300))))

(declare-fun e!1492024 () Bool)

(assert (=> b!2328669 (= e!1492024 (and tp!737908 tp!737906))))

(declare-fun e!1492029 () Bool)

(declare-fun tp!737904 () Bool)

(declare-fun b!2328670 () Bool)

(declare-fun inv!37838 (String!30390) Bool)

(declare-fun inv!37841 (TokenValueInjection!8728) Bool)

(assert (=> b!2328670 (= e!1492029 (and tp!737904 (inv!37838 (tag!4920 (h!33194 rules!853))) (inv!37841 (transformation!4430 (h!33194 rules!853))) e!1492024))))

(declare-fun b!2328671 () Bool)

(declare-fun res!994254 () Bool)

(assert (=> b!2328671 (=> (not res!994254) (not e!1492028))))

(declare-fun separableTokens!304 (LexerInterface!4027 BalanceConc!17842 List!27891) Bool)

(assert (=> b!2328671 (= res!994254 (separableTokens!304 Lexer!4025 tokens!300 rules!853))))

(declare-fun b!2328672 () Bool)

(declare-datatypes ((PrintableTokens!1278 0))(
  ( (PrintableTokens!1279 (rules!16506 List!27891) (tokens!2475 BalanceConc!17842)) )
))
(declare-fun inv!37842 (PrintableTokens!1278) Bool)

(assert (=> b!2328672 (= e!1492028 (not (inv!37842 (PrintableTokens!1279 rules!853 tokens!300))))))

(declare-fun b!2328673 () Bool)

(declare-fun res!994253 () Bool)

(assert (=> b!2328673 (=> (not res!994253) (not e!1492028))))

(declare-fun rulesProduceEachTokenIndividuallyList!1357 (LexerInterface!4027 List!27891 List!27892) Bool)

(declare-fun list!11046 (BalanceConc!17842) List!27892)

(assert (=> b!2328673 (= res!994253 (rulesProduceEachTokenIndividuallyList!1357 Lexer!4025 rules!853 (list!11046 tokens!300)))))

(declare-fun res!994256 () Bool)

(assert (=> start!229960 (=> (not res!994256) (not e!1492028))))

(declare-fun isEmpty!15833 (List!27891) Bool)

(assert (=> start!229960 (= res!994256 (not (isEmpty!15833 rules!853)))))

(assert (=> start!229960 e!1492028))

(declare-fun e!1492027 () Bool)

(assert (=> start!229960 e!1492027))

(declare-fun e!1492026 () Bool)

(declare-fun inv!37843 (BalanceConc!17842) Bool)

(assert (=> start!229960 (and (inv!37843 tokens!300) e!1492026)))

(declare-fun b!2328674 () Bool)

(declare-fun tp!737905 () Bool)

(declare-fun inv!37844 (Conc!9115) Bool)

(assert (=> b!2328674 (= e!1492026 (and (inv!37844 (c!369932 tokens!300)) tp!737905))))

(declare-fun b!2328675 () Bool)

(declare-fun tp!737907 () Bool)

(assert (=> b!2328675 (= e!1492027 (and e!1492029 tp!737907))))

(declare-fun b!2328676 () Bool)

(declare-fun res!994257 () Bool)

(assert (=> b!2328676 (=> (not res!994257) (not e!1492028))))

(declare-fun rulesInvariant!3527 (LexerInterface!4027 List!27891) Bool)

(assert (=> b!2328676 (= res!994257 (rulesInvariant!3527 Lexer!4025 rules!853))))

(assert (= (and start!229960 res!994256) b!2328676))

(assert (= (and b!2328676 res!994257) b!2328673))

(assert (= (and b!2328673 res!994253) b!2328668))

(assert (= (and b!2328668 res!994255) b!2328671))

(assert (= (and b!2328671 res!994254) b!2328672))

(assert (= b!2328670 b!2328669))

(assert (= b!2328675 b!2328670))

(assert (= (and start!229960 (is-Cons!27793 rules!853)) b!2328675))

(assert (= start!229960 b!2328674))

(declare-fun m!2759149 () Bool)

(assert (=> b!2328668 m!2759149))

(declare-fun m!2759151 () Bool)

(assert (=> start!229960 m!2759151))

(declare-fun m!2759153 () Bool)

(assert (=> start!229960 m!2759153))

(declare-fun m!2759155 () Bool)

(assert (=> b!2328672 m!2759155))

(declare-fun m!2759157 () Bool)

(assert (=> b!2328671 m!2759157))

(declare-fun m!2759159 () Bool)

(assert (=> b!2328676 m!2759159))

(declare-fun m!2759161 () Bool)

(assert (=> b!2328673 m!2759161))

(assert (=> b!2328673 m!2759161))

(declare-fun m!2759163 () Bool)

(assert (=> b!2328673 m!2759163))

(declare-fun m!2759165 () Bool)

(assert (=> b!2328674 m!2759165))

(declare-fun m!2759167 () Bool)

(assert (=> b!2328670 m!2759167))

(declare-fun m!2759169 () Bool)

(assert (=> b!2328670 m!2759169))

(push 1)

(assert (not b!2328676))

(assert b_and!185179)

(assert (not start!229960))

(assert (not b!2328671))

(assert (not b!2328668))

(assert (not b!2328670))

(assert (not b!2328674))

(assert b_and!185177)

(assert (not b_next!70971))

(assert (not b!2328675))

(assert (not b!2328672))

(assert (not b_next!70969))

(assert (not b!2328673))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185177)

(assert b_and!185179)

(assert (not b_next!70971))

(assert (not b_next!70969))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!689417 () Bool)

(declare-fun res!994279 () Bool)

(declare-fun e!1492050 () Bool)

(assert (=> d!689417 (=> (not res!994279) (not e!1492050))))

(assert (=> d!689417 (= res!994279 (not (isEmpty!15833 (rules!16506 (PrintableTokens!1279 rules!853 tokens!300)))))))

(assert (=> d!689417 (= (inv!37842 (PrintableTokens!1279 rules!853 tokens!300)) e!1492050)))

(declare-fun b!2328710 () Bool)

(declare-fun res!994280 () Bool)

(assert (=> b!2328710 (=> (not res!994280) (not e!1492050))))

(assert (=> b!2328710 (= res!994280 (rulesInvariant!3527 Lexer!4025 (rules!16506 (PrintableTokens!1279 rules!853 tokens!300))))))

(declare-fun b!2328711 () Bool)

(declare-fun res!994281 () Bool)

(assert (=> b!2328711 (=> (not res!994281) (not e!1492050))))

(assert (=> b!2328711 (= res!994281 (rulesProduceEachTokenIndividually!935 Lexer!4025 (rules!16506 (PrintableTokens!1279 rules!853 tokens!300)) (tokens!2475 (PrintableTokens!1279 rules!853 tokens!300))))))

(declare-fun b!2328712 () Bool)

(assert (=> b!2328712 (= e!1492050 (separableTokens!304 Lexer!4025 (tokens!2475 (PrintableTokens!1279 rules!853 tokens!300)) (rules!16506 (PrintableTokens!1279 rules!853 tokens!300))))))

(assert (= (and d!689417 res!994279) b!2328710))

(assert (= (and b!2328710 res!994280) b!2328711))

(assert (= (and b!2328711 res!994281) b!2328712))

(declare-fun m!2759193 () Bool)

(assert (=> d!689417 m!2759193))

(declare-fun m!2759195 () Bool)

(assert (=> b!2328710 m!2759195))

(declare-fun m!2759197 () Bool)

(assert (=> b!2328711 m!2759197))

(declare-fun m!2759199 () Bool)

(assert (=> b!2328712 m!2759199))

(assert (=> b!2328672 d!689417))

(declare-fun d!689419 () Bool)

(declare-fun res!994284 () Bool)

(declare-fun e!1492053 () Bool)

(assert (=> d!689419 (=> (not res!994284) (not e!1492053))))

(declare-fun rulesValid!1644 (LexerInterface!4027 List!27891) Bool)

(assert (=> d!689419 (= res!994284 (rulesValid!1644 Lexer!4025 rules!853))))

(assert (=> d!689419 (= (rulesInvariant!3527 Lexer!4025 rules!853) e!1492053)))

(declare-fun b!2328715 () Bool)

(declare-datatypes ((List!27897 0))(
  ( (Nil!27799) (Cons!27799 (h!33200 String!30390) (t!207655 List!27897)) )
))
(declare-fun noDuplicateTag!1642 (LexerInterface!4027 List!27891 List!27897) Bool)

(assert (=> b!2328715 (= e!1492053 (noDuplicateTag!1642 Lexer!4025 rules!853 Nil!27799))))

(assert (= (and d!689419 res!994284) b!2328715))

(declare-fun m!2759201 () Bool)

(assert (=> d!689419 m!2759201))

(declare-fun m!2759203 () Bool)

(assert (=> b!2328715 m!2759203))

(assert (=> b!2328676 d!689419))

(declare-fun d!689421 () Bool)

(assert (=> d!689421 (= (isEmpty!15833 rules!853) (is-Nil!27793 rules!853))))

(assert (=> start!229960 d!689421))

(declare-fun d!689423 () Bool)

(declare-fun isBalanced!2778 (Conc!9115) Bool)

(assert (=> d!689423 (= (inv!37843 tokens!300) (isBalanced!2778 (c!369932 tokens!300)))))

(declare-fun bs!459373 () Bool)

(assert (= bs!459373 d!689423))

(declare-fun m!2759205 () Bool)

(assert (=> bs!459373 m!2759205))

(assert (=> start!229960 d!689423))

(declare-fun d!689425 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!156 (LexerInterface!4027 BalanceConc!17842 Int List!27891) Bool)

(assert (=> d!689425 (= (separableTokens!304 Lexer!4025 tokens!300 rules!853) (tokensListTwoByTwoPredicateSeparable!156 Lexer!4025 tokens!300 0 rules!853))))

(declare-fun bs!459374 () Bool)

(assert (= bs!459374 d!689425))

(declare-fun m!2759207 () Bool)

(assert (=> bs!459374 m!2759207))

(assert (=> b!2328671 d!689425))

(declare-fun d!689427 () Bool)

(assert (=> d!689427 (= (inv!37838 (tag!4920 (h!33194 rules!853))) (= (mod (str.len (value!140625 (tag!4920 (h!33194 rules!853)))) 2) 0))))

(assert (=> b!2328670 d!689427))

(declare-fun d!689431 () Bool)

(declare-fun res!994287 () Bool)

(declare-fun e!1492056 () Bool)

(assert (=> d!689431 (=> (not res!994287) (not e!1492056))))

(declare-fun semiInverseModEq!1811 (Int Int) Bool)

(assert (=> d!689431 (= res!994287 (semiInverseModEq!1811 (toChars!6117 (transformation!4430 (h!33194 rules!853))) (toValue!6258 (transformation!4430 (h!33194 rules!853)))))))

(assert (=> d!689431 (= (inv!37841 (transformation!4430 (h!33194 rules!853))) e!1492056)))

(declare-fun b!2328718 () Bool)

(declare-fun equivClasses!1726 (Int Int) Bool)

(assert (=> b!2328718 (= e!1492056 (equivClasses!1726 (toChars!6117 (transformation!4430 (h!33194 rules!853))) (toValue!6258 (transformation!4430 (h!33194 rules!853)))))))

(assert (= (and d!689431 res!994287) b!2328718))

(declare-fun m!2759211 () Bool)

(assert (=> d!689431 m!2759211))

(declare-fun m!2759213 () Bool)

(assert (=> b!2328718 m!2759213))

(assert (=> b!2328670 d!689431))

(declare-fun b!2328736 () Bool)

(declare-fun e!1492072 () Bool)

(assert (=> b!2328736 (= e!1492072 true)))

(declare-fun b!2328735 () Bool)

(declare-fun e!1492071 () Bool)

(assert (=> b!2328735 (= e!1492071 e!1492072)))

(declare-fun b!2328734 () Bool)

(declare-fun e!1492070 () Bool)

(assert (=> b!2328734 (= e!1492070 e!1492071)))

(declare-fun d!689433 () Bool)

(assert (=> d!689433 e!1492070))

(assert (= b!2328735 b!2328736))

(assert (= b!2328734 b!2328735))

(assert (= (and d!689433 (is-Cons!27793 rules!853)) b!2328734))

(declare-fun lambda!86412 () Int)

(declare-fun order!15383 () Int)

(declare-fun order!15381 () Int)

(declare-fun dynLambda!11991 (Int Int) Int)

(declare-fun dynLambda!11992 (Int Int) Int)

(assert (=> b!2328736 (< (dynLambda!11991 order!15381 (toValue!6258 (transformation!4430 (h!33194 rules!853)))) (dynLambda!11992 order!15383 lambda!86412))))

(declare-fun order!15385 () Int)

(declare-fun dynLambda!11993 (Int Int) Int)

(assert (=> b!2328736 (< (dynLambda!11993 order!15385 (toChars!6117 (transformation!4430 (h!33194 rules!853)))) (dynLambda!11992 order!15383 lambda!86412))))

(assert (=> d!689433 true))

(declare-fun e!1492063 () Bool)

(assert (=> d!689433 e!1492063))

(declare-fun res!994294 () Bool)

(assert (=> d!689433 (=> (not res!994294) (not e!1492063))))

(declare-fun lt!862038 () Bool)

(declare-fun forall!5524 (List!27892 Int) Bool)

(assert (=> d!689433 (= res!994294 (= lt!862038 (forall!5524 (list!11046 tokens!300) lambda!86412)))))

(declare-fun forall!5525 (BalanceConc!17842 Int) Bool)

(assert (=> d!689433 (= lt!862038 (forall!5525 tokens!300 lambda!86412))))

(assert (=> d!689433 (not (isEmpty!15833 rules!853))))

(assert (=> d!689433 (= (rulesProduceEachTokenIndividually!935 Lexer!4025 rules!853 tokens!300) lt!862038)))

(declare-fun b!2328725 () Bool)

(assert (=> b!2328725 (= e!1492063 (= lt!862038 (rulesProduceEachTokenIndividuallyList!1357 Lexer!4025 rules!853 (list!11046 tokens!300))))))

(assert (= (and d!689433 res!994294) b!2328725))

(assert (=> d!689433 m!2759161))

(assert (=> d!689433 m!2759161))

(declare-fun m!2759215 () Bool)

(assert (=> d!689433 m!2759215))

(declare-fun m!2759217 () Bool)

(assert (=> d!689433 m!2759217))

(assert (=> d!689433 m!2759151))

(assert (=> b!2328725 m!2759161))

(assert (=> b!2328725 m!2759161))

(assert (=> b!2328725 m!2759163))

(assert (=> b!2328668 d!689433))

(declare-fun bs!459378 () Bool)

(declare-fun d!689435 () Bool)

(assert (= bs!459378 (and d!689435 d!689433)))

(declare-fun lambda!86418 () Int)

(assert (=> bs!459378 (= lambda!86418 lambda!86412)))

(declare-fun b!2328774 () Bool)

(declare-fun e!1492101 () Bool)

(assert (=> b!2328774 (= e!1492101 true)))

(declare-fun b!2328773 () Bool)

(declare-fun e!1492100 () Bool)

(assert (=> b!2328773 (= e!1492100 e!1492101)))

(declare-fun b!2328772 () Bool)

(declare-fun e!1492099 () Bool)

(assert (=> b!2328772 (= e!1492099 e!1492100)))

(assert (=> d!689435 e!1492099))

(assert (= b!2328773 b!2328774))

(assert (= b!2328772 b!2328773))

(assert (= (and d!689435 (is-Cons!27793 rules!853)) b!2328772))

(assert (=> b!2328774 (< (dynLambda!11991 order!15381 (toValue!6258 (transformation!4430 (h!33194 rules!853)))) (dynLambda!11992 order!15383 lambda!86418))))

(assert (=> b!2328774 (< (dynLambda!11993 order!15385 (toChars!6117 (transformation!4430 (h!33194 rules!853)))) (dynLambda!11992 order!15383 lambda!86418))))

(assert (=> d!689435 true))

(declare-fun lt!862042 () Bool)

(assert (=> d!689435 (= lt!862042 (forall!5524 (list!11046 tokens!300) lambda!86418))))

(declare-fun e!1492097 () Bool)

(assert (=> d!689435 (= lt!862042 e!1492097)))

(declare-fun res!994308 () Bool)

(assert (=> d!689435 (=> res!994308 e!1492097)))

(assert (=> d!689435 (= res!994308 (not (is-Cons!27794 (list!11046 tokens!300))))))

(assert (=> d!689435 (not (isEmpty!15833 rules!853))))

(assert (=> d!689435 (= (rulesProduceEachTokenIndividuallyList!1357 Lexer!4025 rules!853 (list!11046 tokens!300)) lt!862042)))

(declare-fun b!2328770 () Bool)

(declare-fun e!1492098 () Bool)

(assert (=> b!2328770 (= e!1492097 e!1492098)))

(declare-fun res!994307 () Bool)

(assert (=> b!2328770 (=> (not res!994307) (not e!1492098))))

(declare-fun rulesProduceIndividualToken!1788 (LexerInterface!4027 List!27891 Token!8338) Bool)

(assert (=> b!2328770 (= res!994307 (rulesProduceIndividualToken!1788 Lexer!4025 rules!853 (h!33195 (list!11046 tokens!300))))))

(declare-fun b!2328771 () Bool)

(assert (=> b!2328771 (= e!1492098 (rulesProduceEachTokenIndividuallyList!1357 Lexer!4025 rules!853 (t!207638 (list!11046 tokens!300))))))

(assert (= (and d!689435 (not res!994308)) b!2328770))

(assert (= (and b!2328770 res!994307) b!2328771))

(assert (=> d!689435 m!2759161))

(declare-fun m!2759237 () Bool)

(assert (=> d!689435 m!2759237))

(assert (=> d!689435 m!2759151))

(declare-fun m!2759239 () Bool)

(assert (=> b!2328770 m!2759239))

(declare-fun m!2759241 () Bool)

(assert (=> b!2328771 m!2759241))

(assert (=> b!2328673 d!689435))

(declare-fun d!689449 () Bool)

(declare-fun list!11048 (Conc!9115) List!27892)

(assert (=> d!689449 (= (list!11046 tokens!300) (list!11048 (c!369932 tokens!300)))))

(declare-fun bs!459379 () Bool)

(assert (= bs!459379 d!689449))

(declare-fun m!2759243 () Bool)

(assert (=> bs!459379 m!2759243))

(assert (=> b!2328673 d!689449))

(declare-fun d!689451 () Bool)

(declare-fun c!369941 () Bool)

(assert (=> d!689451 (= c!369941 (is-Node!9115 (c!369932 tokens!300)))))

(declare-fun e!1492106 () Bool)

(assert (=> d!689451 (= (inv!37844 (c!369932 tokens!300)) e!1492106)))

(declare-fun b!2328781 () Bool)

(declare-fun inv!37849 (Conc!9115) Bool)

(assert (=> b!2328781 (= e!1492106 (inv!37849 (c!369932 tokens!300)))))

(declare-fun b!2328782 () Bool)

(declare-fun e!1492107 () Bool)

(assert (=> b!2328782 (= e!1492106 e!1492107)))

(declare-fun res!994311 () Bool)

(assert (=> b!2328782 (= res!994311 (not (is-Leaf!13394 (c!369932 tokens!300))))))

(assert (=> b!2328782 (=> res!994311 e!1492107)))

(declare-fun b!2328783 () Bool)

(declare-fun inv!37850 (Conc!9115) Bool)

(assert (=> b!2328783 (= e!1492107 (inv!37850 (c!369932 tokens!300)))))

(assert (= (and d!689451 c!369941) b!2328781))

(assert (= (and d!689451 (not c!369941)) b!2328782))

(assert (= (and b!2328782 (not res!994311)) b!2328783))

(declare-fun m!2759245 () Bool)

(assert (=> b!2328781 m!2759245))

(declare-fun m!2759247 () Bool)

(assert (=> b!2328783 m!2759247))

(assert (=> b!2328674 d!689451))

(declare-fun b!2328794 () Bool)

(declare-fun e!1492110 () Bool)

(declare-fun tp_is_empty!10927 () Bool)

(assert (=> b!2328794 (= e!1492110 tp_is_empty!10927)))

(declare-fun b!2328795 () Bool)

(declare-fun tp!737936 () Bool)

(declare-fun tp!737937 () Bool)

(assert (=> b!2328795 (= e!1492110 (and tp!737936 tp!737937))))

(assert (=> b!2328670 (= tp!737904 e!1492110)))

(declare-fun b!2328796 () Bool)

(declare-fun tp!737938 () Bool)

(assert (=> b!2328796 (= e!1492110 tp!737938)))

(declare-fun b!2328797 () Bool)

(declare-fun tp!737934 () Bool)

(declare-fun tp!737935 () Bool)

(assert (=> b!2328797 (= e!1492110 (and tp!737934 tp!737935))))

(assert (= (and b!2328670 (is-ElementMatch!6810 (regex!4430 (h!33194 rules!853)))) b!2328794))

(assert (= (and b!2328670 (is-Concat!11415 (regex!4430 (h!33194 rules!853)))) b!2328795))

(assert (= (and b!2328670 (is-Star!6810 (regex!4430 (h!33194 rules!853)))) b!2328796))

(assert (= (and b!2328670 (is-Union!6810 (regex!4430 (h!33194 rules!853)))) b!2328797))

(declare-fun b!2328808 () Bool)

(declare-fun b_free!70273 () Bool)

(declare-fun b_next!70977 () Bool)

(assert (=> b!2328808 (= b_free!70273 (not b_next!70977))))

(declare-fun tp!737947 () Bool)

(declare-fun b_and!185185 () Bool)

(assert (=> b!2328808 (= tp!737947 b_and!185185)))

(declare-fun b_free!70275 () Bool)

(declare-fun b_next!70979 () Bool)

(assert (=> b!2328808 (= b_free!70275 (not b_next!70979))))

(declare-fun tp!737949 () Bool)

(declare-fun b_and!185187 () Bool)

(assert (=> b!2328808 (= tp!737949 b_and!185187)))

(declare-fun e!1492119 () Bool)

(assert (=> b!2328808 (= e!1492119 (and tp!737947 tp!737949))))

(declare-fun tp!737950 () Bool)

(declare-fun e!1492122 () Bool)

(declare-fun b!2328807 () Bool)

(assert (=> b!2328807 (= e!1492122 (and tp!737950 (inv!37838 (tag!4920 (h!33194 (t!207637 rules!853)))) (inv!37841 (transformation!4430 (h!33194 (t!207637 rules!853)))) e!1492119))))

(declare-fun b!2328806 () Bool)

(declare-fun e!1492120 () Bool)

(declare-fun tp!737948 () Bool)

(assert (=> b!2328806 (= e!1492120 (and e!1492122 tp!737948))))

(assert (=> b!2328675 (= tp!737907 e!1492120)))

(assert (= b!2328807 b!2328808))

(assert (= b!2328806 b!2328807))

(assert (= (and b!2328675 (is-Cons!27793 (t!207637 rules!853))) b!2328806))

(declare-fun m!2759249 () Bool)

(assert (=> b!2328807 m!2759249))

(declare-fun m!2759251 () Bool)

(assert (=> b!2328807 m!2759251))

(declare-fun b!2328817 () Bool)

(declare-fun tp!737957 () Bool)

(declare-fun tp!737959 () Bool)

(declare-fun e!1492128 () Bool)

(assert (=> b!2328817 (= e!1492128 (and (inv!37844 (left!21089 (c!369932 tokens!300))) tp!737959 (inv!37844 (right!21419 (c!369932 tokens!300))) tp!737957))))

(declare-fun b!2328819 () Bool)

(declare-fun e!1492127 () Bool)

(declare-fun tp!737958 () Bool)

(assert (=> b!2328819 (= e!1492127 tp!737958)))

(declare-fun b!2328818 () Bool)

(declare-fun inv!37851 (IArray!18235) Bool)

(assert (=> b!2328818 (= e!1492128 (and (inv!37851 (xs!12095 (c!369932 tokens!300))) e!1492127))))

(assert (=> b!2328674 (= tp!737905 (and (inv!37844 (c!369932 tokens!300)) e!1492128))))

(assert (= (and b!2328674 (is-Node!9115 (c!369932 tokens!300))) b!2328817))

(assert (= b!2328818 b!2328819))

(assert (= (and b!2328674 (is-Leaf!13394 (c!369932 tokens!300))) b!2328818))

(declare-fun m!2759253 () Bool)

(assert (=> b!2328817 m!2759253))

(declare-fun m!2759255 () Bool)

(assert (=> b!2328817 m!2759255))

(declare-fun m!2759257 () Bool)

(assert (=> b!2328818 m!2759257))

(assert (=> b!2328674 m!2759165))

(push 1)

(assert (not b!2328771))

(assert (not d!689435))

(assert b_and!185185)

(assert (not b!2328818))

(assert (not b!2328819))

(assert (not b!2328712))

(assert (not b!2328674))

(assert (not d!689431))

(assert (not d!689449))

(assert (not b!2328711))

(assert b_and!185187)

(assert tp_is_empty!10927)

(assert (not d!689419))

(assert (not b!2328725))

(assert (not b!2328781))

(assert (not b_next!70979))

(assert (not b!2328796))

(assert (not b!2328734))

(assert (not b!2328715))

(assert b_and!185179)

(assert (not b!2328807))

(assert (not b!2328772))

(assert (not b!2328710))

(assert (not b!2328806))

(assert (not b!2328783))

(assert (not b!2328817))

(assert (not d!689425))

(assert (not b!2328795))

(assert b_and!185177)

(assert (not d!689423))

(assert (not b!2328718))

(assert (not b_next!70971))

(assert (not d!689417))

(assert (not b!2328770))

(assert (not d!689433))

(assert (not b_next!70977))

(assert (not b_next!70969))

(assert (not b!2328797))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185187)

(assert (not b_next!70979))

(assert b_and!185185)

(assert b_and!185179)

(assert b_and!185177)

(assert (not b_next!70971))

(assert (not b_next!70977))

(assert (not b_next!70969))

(check-sat)

(pop 1)

