; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!146800 () Bool)

(assert start!146800)

(declare-fun b!1573174 () Bool)

(declare-fun b_free!42127 () Bool)

(declare-fun b_next!42831 () Bool)

(assert (=> b!1573174 (= b_free!42127 (not b_next!42831))))

(declare-fun tp!462720 () Bool)

(declare-fun b_and!109933 () Bool)

(assert (=> b!1573174 (= tp!462720 b_and!109933)))

(declare-fun b_free!42129 () Bool)

(declare-fun b_next!42833 () Bool)

(assert (=> b!1573174 (= b_free!42129 (not b_next!42833))))

(declare-fun tp!462727 () Bool)

(declare-fun b_and!109935 () Bool)

(assert (=> b!1573174 (= tp!462727 b_and!109935)))

(declare-fun b!1573175 () Bool)

(declare-fun b_free!42131 () Bool)

(declare-fun b_next!42835 () Bool)

(assert (=> b!1573175 (= b_free!42131 (not b_next!42835))))

(declare-fun tp!462726 () Bool)

(declare-fun b_and!109937 () Bool)

(assert (=> b!1573175 (= tp!462726 b_and!109937)))

(declare-fun b_free!42133 () Bool)

(declare-fun b_next!42837 () Bool)

(assert (=> b!1573175 (= b_free!42133 (not b_next!42837))))

(declare-fun tp!462725 () Bool)

(declare-fun b_and!109939 () Bool)

(assert (=> b!1573175 (= tp!462725 b_and!109939)))

(declare-fun b!1573163 () Bool)

(declare-fun e!1010179 () Bool)

(assert (=> b!1573163 (= e!1010179 false)))

(declare-datatypes ((C!8846 0))(
  ( (C!8847 (val!5019 Int)) )
))
(declare-datatypes ((List!17211 0))(
  ( (Nil!17141) (Cons!17141 (h!22542 C!8846) (t!143114 List!17211)) )
))
(declare-datatypes ((IArray!11333 0))(
  ( (IArray!11334 (innerList!5724 List!17211)) )
))
(declare-datatypes ((Conc!5664 0))(
  ( (Node!5664 (left!13874 Conc!5664) (right!14204 Conc!5664) (csize!11558 Int) (cheight!5875 Int)) (Leaf!8389 (xs!8468 IArray!11333) (csize!11559 Int)) (Empty!5664) )
))
(declare-datatypes ((BalanceConc!11272 0))(
  ( (BalanceConc!11273 (c!255155 Conc!5664)) )
))
(declare-fun lt!546897 () BalanceConc!11272)

(declare-datatypes ((LexerInterface!2637 0))(
  ( (LexerInterfaceExt!2634 (__x!11498 Int)) (Lexer!2635) )
))
(declare-fun thiss!17113 () LexerInterface!2637)

(declare-datatypes ((List!17212 0))(
  ( (Nil!17142) (Cons!17142 (h!22543 (_ BitVec 16)) (t!143115 List!17212)) )
))
(declare-datatypes ((TokenValue!3098 0))(
  ( (FloatLiteralValue!6196 (text!22131 List!17212)) (TokenValueExt!3097 (__x!11499 Int)) (Broken!15490 (value!95376 List!17212)) (Object!3167) (End!3098) (Def!3098) (Underscore!3098) (Match!3098) (Else!3098) (Error!3098) (Case!3098) (If!3098) (Extends!3098) (Abstract!3098) (Class!3098) (Val!3098) (DelimiterValue!6196 (del!3158 List!17212)) (KeywordValue!3104 (value!95377 List!17212)) (CommentValue!6196 (value!95378 List!17212)) (WhitespaceValue!6196 (value!95379 List!17212)) (IndentationValue!3098 (value!95380 List!17212)) (String!19823) (Int32!3098) (Broken!15491 (value!95381 List!17212)) (Boolean!3099) (Unit!26547) (OperatorValue!3101 (op!3158 List!17212)) (IdentifierValue!6196 (value!95382 List!17212)) (IdentifierValue!6197 (value!95383 List!17212)) (WhitespaceValue!6197 (value!95384 List!17212)) (True!6196) (False!6196) (Broken!15492 (value!95385 List!17212)) (Broken!15493 (value!95386 List!17212)) (True!6197) (RightBrace!3098) (RightBracket!3098) (Colon!3098) (Null!3098) (Comma!3098) (LeftBracket!3098) (False!6197) (LeftBrace!3098) (ImaginaryLiteralValue!3098 (text!22132 List!17212)) (StringLiteralValue!9294 (value!95387 List!17212)) (EOFValue!3098 (value!95388 List!17212)) (IdentValue!3098 (value!95389 List!17212)) (DelimiterValue!6197 (value!95390 List!17212)) (DedentValue!3098 (value!95391 List!17212)) (NewLineValue!3098 (value!95392 List!17212)) (IntegerValue!9294 (value!95393 (_ BitVec 32)) (text!22133 List!17212)) (IntegerValue!9295 (value!95394 Int) (text!22134 List!17212)) (Times!3098) (Or!3098) (Equal!3098) (Minus!3098) (Broken!15494 (value!95395 List!17212)) (And!3098) (Div!3098) (LessEqual!3098) (Mod!3098) (Concat!7434) (Not!3098) (Plus!3098) (SpaceValue!3098 (value!95396 List!17212)) (IntegerValue!9296 (value!95397 Int) (text!22135 List!17212)) (StringLiteralValue!9295 (text!22136 List!17212)) (FloatLiteralValue!6197 (text!22137 List!17212)) (BytesLiteralValue!3098 (value!95398 List!17212)) (CommentValue!6197 (value!95399 List!17212)) (StringLiteralValue!9296 (value!95400 List!17212)) (ErrorTokenValue!3098 (msg!3159 List!17212)) )
))
(declare-datatypes ((Regex!4336 0))(
  ( (ElementMatch!4336 (c!255156 C!8846)) (Concat!7435 (regOne!9184 Regex!4336) (regTwo!9184 Regex!4336)) (EmptyExpr!4336) (Star!4336 (reg!4665 Regex!4336)) (EmptyLang!4336) (Union!4336 (regOne!9185 Regex!4336) (regTwo!9185 Regex!4336)) )
))
(declare-datatypes ((String!19824 0))(
  ( (String!19825 (value!95401 String)) )
))
(declare-datatypes ((TokenValueInjection!5856 0))(
  ( (TokenValueInjection!5857 (toValue!4403 Int) (toChars!4262 Int)) )
))
(declare-datatypes ((Rule!5816 0))(
  ( (Rule!5817 (regex!3008 Regex!4336) (tag!3274 String!19824) (isSeparator!3008 Bool) (transformation!3008 TokenValueInjection!5856)) )
))
(declare-datatypes ((Token!5582 0))(
  ( (Token!5583 (value!95402 TokenValue!3098) (rule!4800 Rule!5816) (size!13861 Int) (originalCharacters!3822 List!17211)) )
))
(declare-datatypes ((List!17213 0))(
  ( (Nil!17143) (Cons!17143 (h!22544 Token!5582) (t!143116 List!17213)) )
))
(declare-fun tokens!457 () List!17213)

(declare-datatypes ((IArray!11335 0))(
  ( (IArray!11336 (innerList!5725 List!17213)) )
))
(declare-datatypes ((Conc!5665 0))(
  ( (Node!5665 (left!13875 Conc!5665) (right!14205 Conc!5665) (csize!11560 Int) (cheight!5876 Int)) (Leaf!8390 (xs!8469 IArray!11335) (csize!11561 Int)) (Empty!5665) )
))
(declare-datatypes ((BalanceConc!11274 0))(
  ( (BalanceConc!11275 (c!255157 Conc!5665)) )
))
(declare-fun print!1170 (LexerInterface!2637 BalanceConc!11274) BalanceConc!11272)

(declare-fun seqFromList!1805 (List!17213) BalanceConc!11274)

(assert (=> b!1573163 (= lt!546897 (print!1170 thiss!17113 (seqFromList!1805 tokens!457)))))

(declare-fun b!1573164 () Bool)

(declare-fun res!701125 () Bool)

(assert (=> b!1573164 (=> (not res!701125) (not e!1010179))))

(assert (=> b!1573164 (= res!701125 (and (not (is-Nil!17143 tokens!457)) (is-Nil!17143 (t!143116 tokens!457))))))

(declare-fun tp!462721 () Bool)

(declare-fun e!1010185 () Bool)

(declare-fun e!1010182 () Bool)

(declare-fun b!1573165 () Bool)

(declare-fun inv!21 (TokenValue!3098) Bool)

(assert (=> b!1573165 (= e!1010182 (and (inv!21 (value!95402 (h!22544 tokens!457))) e!1010185 tp!462721))))

(declare-fun tp!462723 () Bool)

(declare-fun b!1573166 () Bool)

(declare-fun e!1010189 () Bool)

(declare-fun inv!22560 (Token!5582) Bool)

(assert (=> b!1573166 (= e!1010189 (and (inv!22560 (h!22544 tokens!457)) e!1010182 tp!462723))))

(declare-fun b!1573167 () Bool)

(declare-fun res!701126 () Bool)

(assert (=> b!1573167 (=> (not res!701126) (not e!1010179))))

(declare-datatypes ((List!17214 0))(
  ( (Nil!17144) (Cons!17144 (h!22545 Rule!5816) (t!143117 List!17214)) )
))
(declare-fun rules!1846 () List!17214)

(declare-fun rulesProduceEachTokenIndividuallyList!839 (LexerInterface!2637 List!17214 List!17213) Bool)

(assert (=> b!1573167 (= res!701126 (rulesProduceEachTokenIndividuallyList!839 thiss!17113 rules!1846 tokens!457))))

(declare-fun e!1010183 () Bool)

(declare-fun b!1573168 () Bool)

(declare-fun tp!462719 () Bool)

(declare-fun inv!22557 (String!19824) Bool)

(declare-fun inv!22561 (TokenValueInjection!5856) Bool)

(assert (=> b!1573168 (= e!1010185 (and tp!462719 (inv!22557 (tag!3274 (rule!4800 (h!22544 tokens!457)))) (inv!22561 (transformation!3008 (rule!4800 (h!22544 tokens!457)))) e!1010183))))

(declare-fun b!1573169 () Bool)

(declare-fun res!701124 () Bool)

(assert (=> b!1573169 (=> (not res!701124) (not e!1010179))))

(declare-fun rulesInvariant!2306 (LexerInterface!2637 List!17214) Bool)

(assert (=> b!1573169 (= res!701124 (rulesInvariant!2306 thiss!17113 rules!1846))))

(declare-fun res!701121 () Bool)

(assert (=> start!146800 (=> (not res!701121) (not e!1010179))))

(assert (=> start!146800 (= res!701121 (is-Lexer!2635 thiss!17113))))

(assert (=> start!146800 e!1010179))

(assert (=> start!146800 true))

(declare-fun e!1010188 () Bool)

(assert (=> start!146800 e!1010188))

(assert (=> start!146800 e!1010189))

(declare-fun b!1573170 () Bool)

(declare-fun res!701123 () Bool)

(assert (=> b!1573170 (=> (not res!701123) (not e!1010179))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!330 (LexerInterface!2637 List!17213 List!17214) Bool)

(assert (=> b!1573170 (= res!701123 (tokensListTwoByTwoPredicateSeparableList!330 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1573171 () Bool)

(declare-fun res!701122 () Bool)

(assert (=> b!1573171 (=> (not res!701122) (not e!1010179))))

(declare-fun isEmpty!10258 (List!17214) Bool)

(assert (=> b!1573171 (= res!701122 (not (isEmpty!10258 rules!1846)))))

(declare-fun b!1573172 () Bool)

(declare-fun e!1010181 () Bool)

(declare-fun tp!462724 () Bool)

(assert (=> b!1573172 (= e!1010188 (and e!1010181 tp!462724))))

(declare-fun tp!462722 () Bool)

(declare-fun e!1010187 () Bool)

(declare-fun b!1573173 () Bool)

(assert (=> b!1573173 (= e!1010181 (and tp!462722 (inv!22557 (tag!3274 (h!22545 rules!1846))) (inv!22561 (transformation!3008 (h!22545 rules!1846))) e!1010187))))

(assert (=> b!1573174 (= e!1010183 (and tp!462720 tp!462727))))

(assert (=> b!1573175 (= e!1010187 (and tp!462726 tp!462725))))

(assert (= (and start!146800 res!701121) b!1573171))

(assert (= (and b!1573171 res!701122) b!1573169))

(assert (= (and b!1573169 res!701124) b!1573167))

(assert (= (and b!1573167 res!701126) b!1573170))

(assert (= (and b!1573170 res!701123) b!1573164))

(assert (= (and b!1573164 res!701125) b!1573163))

(assert (= b!1573173 b!1573175))

(assert (= b!1573172 b!1573173))

(assert (= (and start!146800 (is-Cons!17144 rules!1846)) b!1573172))

(assert (= b!1573168 b!1573174))

(assert (= b!1573165 b!1573168))

(assert (= b!1573166 b!1573165))

(assert (= (and start!146800 (is-Cons!17143 tokens!457)) b!1573166))

(declare-fun m!1852213 () Bool)

(assert (=> b!1573170 m!1852213))

(declare-fun m!1852215 () Bool)

(assert (=> b!1573165 m!1852215))

(declare-fun m!1852217 () Bool)

(assert (=> b!1573169 m!1852217))

(declare-fun m!1852219 () Bool)

(assert (=> b!1573166 m!1852219))

(declare-fun m!1852221 () Bool)

(assert (=> b!1573173 m!1852221))

(declare-fun m!1852223 () Bool)

(assert (=> b!1573173 m!1852223))

(declare-fun m!1852225 () Bool)

(assert (=> b!1573163 m!1852225))

(assert (=> b!1573163 m!1852225))

(declare-fun m!1852227 () Bool)

(assert (=> b!1573163 m!1852227))

(declare-fun m!1852229 () Bool)

(assert (=> b!1573167 m!1852229))

(declare-fun m!1852231 () Bool)

(assert (=> b!1573171 m!1852231))

(declare-fun m!1852233 () Bool)

(assert (=> b!1573168 m!1852233))

(declare-fun m!1852235 () Bool)

(assert (=> b!1573168 m!1852235))

(push 1)

(assert (not b!1573167))

(assert b_and!109939)

(assert (not b_next!42833))

(assert (not b_next!42831))

(assert (not b!1573163))

(assert (not b!1573165))

(assert (not b_next!42835))

(assert (not b!1573166))

(assert (not b!1573172))

(assert b_and!109937)

(assert (not b!1573170))

(assert b_and!109935)

(assert (not b_next!42837))

(assert b_and!109933)

(assert (not b!1573171))

(assert (not b!1573168))

(assert (not b!1573173))

(assert (not b!1573169))

(check-sat)

(pop 1)

(push 1)

(assert b_and!109939)

(assert (not b_next!42833))

(assert b_and!109937)

(assert (not b_next!42831))

(assert b_and!109933)

(assert (not b_next!42835))

(assert b_and!109935)

(assert (not b_next!42837))

(check-sat)

(pop 1)

