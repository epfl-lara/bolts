; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!157754 () Bool)

(assert start!157754)

(declare-fun b!1645179 () Bool)

(declare-fun b_free!44647 () Bool)

(declare-fun b_next!45351 () Bool)

(assert (=> b!1645179 (= b_free!44647 (not b_next!45351))))

(declare-fun tp!476661 () Bool)

(declare-fun b_and!116749 () Bool)

(assert (=> b!1645179 (= tp!476661 b_and!116749)))

(declare-fun b_free!44649 () Bool)

(declare-fun b_next!45353 () Bool)

(assert (=> b!1645179 (= b_free!44649 (not b_next!45353))))

(declare-fun tp!476663 () Bool)

(declare-fun b_and!116751 () Bool)

(assert (=> b!1645179 (= tp!476663 b_and!116751)))

(declare-fun b!1645170 () Bool)

(declare-fun b_free!44651 () Bool)

(declare-fun b_next!45355 () Bool)

(assert (=> b!1645170 (= b_free!44651 (not b_next!45355))))

(declare-fun tp!476662 () Bool)

(declare-fun b_and!116753 () Bool)

(assert (=> b!1645170 (= tp!476662 b_and!116753)))

(declare-fun b_free!44653 () Bool)

(declare-fun b_next!45357 () Bool)

(assert (=> b!1645170 (= b_free!44653 (not b_next!45357))))

(declare-fun tp!476658 () Bool)

(declare-fun b_and!116755 () Bool)

(assert (=> b!1645170 (= tp!476658 b_and!116755)))

(declare-fun b!1645168 () Bool)

(declare-fun res!737073 () Bool)

(declare-fun e!1055077 () Bool)

(assert (=> b!1645168 (=> res!737073 e!1055077)))

(declare-datatypes ((List!18209 0))(
  ( (Nil!18139) (Cons!18139 (h!23540 (_ BitVec 16)) (t!150408 List!18209)) )
))
(declare-datatypes ((TokenValue!3289 0))(
  ( (FloatLiteralValue!6578 (text!23468 List!18209)) (TokenValueExt!3288 (__x!11880 Int)) (Broken!16445 (value!100818 List!18209)) (Object!3358) (End!3289) (Def!3289) (Underscore!3289) (Match!3289) (Else!3289) (Error!3289) (Case!3289) (If!3289) (Extends!3289) (Abstract!3289) (Class!3289) (Val!3289) (DelimiterValue!6578 (del!3349 List!18209)) (KeywordValue!3295 (value!100819 List!18209)) (CommentValue!6578 (value!100820 List!18209)) (WhitespaceValue!6578 (value!100821 List!18209)) (IndentationValue!3289 (value!100822 List!18209)) (String!20776) (Int32!3289) (Broken!16446 (value!100823 List!18209)) (Boolean!3290) (Unit!30024) (OperatorValue!3292 (op!3349 List!18209)) (IdentifierValue!6578 (value!100824 List!18209)) (IdentifierValue!6579 (value!100825 List!18209)) (WhitespaceValue!6579 (value!100826 List!18209)) (True!6578) (False!6578) (Broken!16447 (value!100827 List!18209)) (Broken!16448 (value!100828 List!18209)) (True!6579) (RightBrace!3289) (RightBracket!3289) (Colon!3289) (Null!3289) (Comma!3289) (LeftBracket!3289) (False!6579) (LeftBrace!3289) (ImaginaryLiteralValue!3289 (text!23469 List!18209)) (StringLiteralValue!9867 (value!100829 List!18209)) (EOFValue!3289 (value!100830 List!18209)) (IdentValue!3289 (value!100831 List!18209)) (DelimiterValue!6579 (value!100832 List!18209)) (DedentValue!3289 (value!100833 List!18209)) (NewLineValue!3289 (value!100834 List!18209)) (IntegerValue!9867 (value!100835 (_ BitVec 32)) (text!23470 List!18209)) (IntegerValue!9868 (value!100836 Int) (text!23471 List!18209)) (Times!3289) (Or!3289) (Equal!3289) (Minus!3289) (Broken!16449 (value!100837 List!18209)) (And!3289) (Div!3289) (LessEqual!3289) (Mod!3289) (Concat!7816) (Not!3289) (Plus!3289) (SpaceValue!3289 (value!100838 List!18209)) (IntegerValue!9869 (value!100839 Int) (text!23472 List!18209)) (StringLiteralValue!9868 (text!23473 List!18209)) (FloatLiteralValue!6579 (text!23474 List!18209)) (BytesLiteralValue!3289 (value!100840 List!18209)) (CommentValue!6579 (value!100841 List!18209)) (StringLiteralValue!9869 (value!100842 List!18209)) (ErrorTokenValue!3289 (msg!3350 List!18209)) )
))
(declare-datatypes ((C!9228 0))(
  ( (C!9229 (val!5210 Int)) )
))
(declare-datatypes ((List!18210 0))(
  ( (Nil!18140) (Cons!18140 (h!23541 C!9228) (t!150409 List!18210)) )
))
(declare-datatypes ((IArray!12097 0))(
  ( (IArray!12098 (innerList!6106 List!18210)) )
))
(declare-datatypes ((Conc!6046 0))(
  ( (Node!6046 (left!14543 Conc!6046) (right!14873 Conc!6046) (csize!12322 Int) (cheight!6257 Int)) (Leaf!8866 (xs!8882 IArray!12097) (csize!12323 Int)) (Empty!6046) )
))
(declare-datatypes ((BalanceConc!12036 0))(
  ( (BalanceConc!12037 (c!267569 Conc!6046)) )
))
(declare-datatypes ((String!20777 0))(
  ( (String!20778 (value!100843 String)) )
))
(declare-datatypes ((Regex!4527 0))(
  ( (ElementMatch!4527 (c!267570 C!9228)) (Concat!7817 (regOne!9566 Regex!4527) (regTwo!9566 Regex!4527)) (EmptyExpr!4527) (Star!4527 (reg!4856 Regex!4527)) (EmptyLang!4527) (Union!4527 (regOne!9567 Regex!4527) (regTwo!9567 Regex!4527)) )
))
(declare-datatypes ((TokenValueInjection!6238 0))(
  ( (TokenValueInjection!6239 (toValue!4642 Int) (toChars!4501 Int)) )
))
(declare-datatypes ((Rule!6198 0))(
  ( (Rule!6199 (regex!3199 Regex!4527) (tag!3479 String!20777) (isSeparator!3199 Bool) (transformation!3199 TokenValueInjection!6238)) )
))
(declare-datatypes ((List!18211 0))(
  ( (Nil!18141) (Cons!18141 (h!23542 Rule!6198) (t!150410 List!18211)) )
))
(declare-fun rules!1846 () List!18211)

(declare-datatypes ((LexerInterface!2828 0))(
  ( (LexerInterfaceExt!2825 (__x!11881 Int)) (Lexer!2826) )
))
(declare-fun thiss!17113 () LexerInterface!2828)

(declare-datatypes ((Token!5964 0))(
  ( (Token!5965 (value!100844 TokenValue!3289) (rule!5053 Rule!6198) (size!14450 Int) (originalCharacters!4013 List!18210)) )
))
(declare-datatypes ((List!18212 0))(
  ( (Nil!18142) (Cons!18142 (h!23543 Token!5964) (t!150411 List!18212)) )
))
(declare-fun tokens!457 () List!18212)

(declare-fun separableTokensPredicate!768 (LexerInterface!2828 Token!5964 Token!5964 List!18211) Bool)

(assert (=> b!1645168 (= res!737073 (not (separableTokensPredicate!768 thiss!17113 (h!23543 tokens!457) (h!23543 (t!150411 tokens!457)) rules!1846)))))

(declare-fun b!1645169 () Bool)

(declare-fun e!1055073 () Bool)

(assert (=> b!1645169 (= e!1055073 e!1055077)))

(declare-fun res!737076 () Bool)

(assert (=> b!1645169 (=> res!737076 e!1055077)))

(declare-fun lt!607228 () List!18212)

(declare-fun lt!607236 () List!18212)

(declare-fun lt!607224 () List!18212)

(assert (=> b!1645169 (= res!737076 (or (not (= lt!607236 lt!607228)) (not (= lt!607228 lt!607224))))))

(declare-datatypes ((IArray!12099 0))(
  ( (IArray!12100 (innerList!6107 List!18212)) )
))
(declare-datatypes ((Conc!6047 0))(
  ( (Node!6047 (left!14544 Conc!6047) (right!14874 Conc!6047) (csize!12324 Int) (cheight!6258 Int)) (Leaf!8867 (xs!8883 IArray!12099) (csize!12325 Int)) (Empty!6047) )
))
(declare-datatypes ((BalanceConc!12038 0))(
  ( (BalanceConc!12039 (c!267571 Conc!6047)) )
))
(declare-fun lt!607235 () BalanceConc!12038)

(declare-fun list!7193 (BalanceConc!12038) List!18212)

(assert (=> b!1645169 (= lt!607228 (list!7193 lt!607235))))

(assert (=> b!1645169 (= lt!607236 lt!607224)))

(declare-fun prepend!753 (BalanceConc!12038 Token!5964) BalanceConc!12038)

(declare-fun seqFromList!2138 (List!18212) BalanceConc!12038)

(assert (=> b!1645169 (= lt!607224 (list!7193 (prepend!753 (seqFromList!2138 (t!150411 (t!150411 tokens!457))) (h!23543 (t!150411 tokens!457)))))))

(declare-datatypes ((Unit!30025 0))(
  ( (Unit!30026) )
))
(declare-fun lt!607237 () Unit!30025)

(declare-datatypes ((tuple2!17804 0))(
  ( (tuple2!17805 (_1!10304 BalanceConc!12038) (_2!10304 BalanceConc!12036)) )
))
(declare-fun lt!607229 () tuple2!17804)

(declare-fun seqFromListBHdTlConstructive!274 (Token!5964 List!18212 BalanceConc!12038) Unit!30025)

(assert (=> b!1645169 (= lt!607237 (seqFromListBHdTlConstructive!274 (h!23543 (t!150411 tokens!457)) (t!150411 (t!150411 tokens!457)) (_1!10304 lt!607229)))))

(declare-fun e!1055080 () Bool)

(assert (=> b!1645170 (= e!1055080 (and tp!476662 tp!476658))))

(declare-fun e!1055081 () Bool)

(declare-fun b!1645171 () Bool)

(declare-fun e!1055086 () Bool)

(declare-fun tp!476664 () Bool)

(declare-fun inv!21 (TokenValue!3289) Bool)

(assert (=> b!1645171 (= e!1055081 (and (inv!21 (value!100844 (h!23543 tokens!457))) e!1055086 tp!476664))))

(declare-fun b!1645172 () Bool)

(declare-fun res!737077 () Bool)

(declare-fun e!1055079 () Bool)

(assert (=> b!1645172 (=> (not res!737077) (not e!1055079))))

(get-info :version)

(assert (=> b!1645172 (= res!737077 (and (not ((_ is Nil!18142) tokens!457)) (not ((_ is Nil!18142) (t!150411 tokens!457)))))))

(declare-fun b!1645173 () Bool)

(declare-fun e!1055075 () Bool)

(declare-fun e!1055076 () Bool)

(declare-fun tp!476659 () Bool)

(assert (=> b!1645173 (= e!1055075 (and e!1055076 tp!476659))))

(declare-fun res!737080 () Bool)

(assert (=> start!157754 (=> (not res!737080) (not e!1055079))))

(assert (=> start!157754 (= res!737080 ((_ is Lexer!2826) thiss!17113))))

(assert (=> start!157754 e!1055079))

(assert (=> start!157754 true))

(assert (=> start!157754 e!1055075))

(declare-fun e!1055074 () Bool)

(assert (=> start!157754 e!1055074))

(declare-fun lt!607223 () List!18210)

(declare-fun b!1645174 () Bool)

(declare-fun lt!607225 () List!18210)

(declare-fun lt!607222 () List!18210)

(assert (=> b!1645174 (= e!1055077 (or (not (= lt!607225 lt!607223)) (not (= lt!607223 lt!607222)) (= lt!607225 lt!607222)))))

(declare-fun printList!941 (LexerInterface!2828 List!18212) List!18210)

(assert (=> b!1645174 (= lt!607223 (printList!941 thiss!17113 (Cons!18142 (h!23543 tokens!457) Nil!18142)))))

(declare-fun lt!607226 () BalanceConc!12036)

(declare-fun list!7194 (BalanceConc!12036) List!18210)

(assert (=> b!1645174 (= lt!607225 (list!7194 lt!607226))))

(declare-fun lt!607238 () BalanceConc!12038)

(declare-fun printTailRec!879 (LexerInterface!2828 BalanceConc!12038 Int BalanceConc!12036) BalanceConc!12036)

(assert (=> b!1645174 (= lt!607226 (printTailRec!879 thiss!17113 lt!607238 0 (BalanceConc!12037 Empty!6046)))))

(declare-fun print!1359 (LexerInterface!2828 BalanceConc!12038) BalanceConc!12036)

(assert (=> b!1645174 (= lt!607226 (print!1359 thiss!17113 lt!607238))))

(declare-fun singletonSeq!1671 (Token!5964) BalanceConc!12038)

(assert (=> b!1645174 (= lt!607238 (singletonSeq!1671 (h!23543 tokens!457)))))

(declare-datatypes ((tuple2!17806 0))(
  ( (tuple2!17807 (_1!10305 Token!5964) (_2!10305 List!18210)) )
))
(declare-datatypes ((Option!3434 0))(
  ( (None!3433) (Some!3433 (v!24568 tuple2!17806)) )
))
(declare-fun lt!607234 () Option!3434)

(declare-fun lt!607230 () List!18210)

(declare-fun maxPrefix!1390 (LexerInterface!2828 List!18211 List!18210) Option!3434)

(assert (=> b!1645174 (= lt!607234 (maxPrefix!1390 thiss!17113 rules!1846 lt!607230))))

(declare-fun b!1645175 () Bool)

(declare-fun tp!476665 () Bool)

(declare-fun inv!23501 (Token!5964) Bool)

(assert (=> b!1645175 (= e!1055074 (and (inv!23501 (h!23543 tokens!457)) e!1055081 tp!476665))))

(declare-fun b!1645176 () Bool)

(declare-fun res!737074 () Bool)

(assert (=> b!1645176 (=> (not res!737074) (not e!1055079))))

(declare-fun rulesInvariant!2497 (LexerInterface!2828 List!18211) Bool)

(assert (=> b!1645176 (= res!737074 (rulesInvariant!2497 thiss!17113 rules!1846))))

(declare-fun b!1645177 () Bool)

(declare-fun e!1055078 () Bool)

(assert (=> b!1645177 (= e!1055079 e!1055078)))

(declare-fun res!737071 () Bool)

(assert (=> b!1645177 (=> (not res!737071) (not e!1055078))))

(declare-fun lt!607233 () List!18210)

(assert (=> b!1645177 (= res!737071 (= lt!607230 lt!607233))))

(declare-fun lt!607231 () List!18210)

(declare-fun ++!4888 (List!18210 List!18210) List!18210)

(assert (=> b!1645177 (= lt!607233 (++!4888 lt!607222 lt!607231))))

(declare-fun lt!607227 () BalanceConc!12036)

(assert (=> b!1645177 (= lt!607230 (list!7194 lt!607227))))

(declare-fun lt!607239 () BalanceConc!12036)

(assert (=> b!1645177 (= lt!607231 (list!7194 lt!607239))))

(declare-fun charsOf!1848 (Token!5964) BalanceConc!12036)

(assert (=> b!1645177 (= lt!607222 (list!7194 (charsOf!1848 (h!23543 tokens!457))))))

(declare-fun lex!1312 (LexerInterface!2828 List!18211 BalanceConc!12036) tuple2!17804)

(assert (=> b!1645177 (= lt!607229 (lex!1312 thiss!17113 rules!1846 lt!607239))))

(assert (=> b!1645177 (= lt!607239 (print!1359 thiss!17113 lt!607235))))

(assert (=> b!1645177 (= lt!607235 (seqFromList!2138 (t!150411 tokens!457)))))

(assert (=> b!1645177 (= lt!607227 (print!1359 thiss!17113 (seqFromList!2138 tokens!457)))))

(declare-fun b!1645178 () Bool)

(declare-fun res!737079 () Bool)

(assert (=> b!1645178 (=> (not res!737079) (not e!1055079))))

(declare-fun isEmpty!11167 (List!18211) Bool)

(assert (=> b!1645178 (= res!737079 (not (isEmpty!11167 rules!1846)))))

(declare-fun e!1055082 () Bool)

(assert (=> b!1645179 (= e!1055082 (and tp!476661 tp!476663))))

(declare-fun b!1645180 () Bool)

(assert (=> b!1645180 (= e!1055078 (not e!1055073))))

(declare-fun res!737072 () Bool)

(assert (=> b!1645180 (=> res!737072 e!1055073)))

(assert (=> b!1645180 (= res!737072 (not (= lt!607236 (t!150411 tokens!457))))))

(assert (=> b!1645180 (= lt!607236 (list!7193 (_1!10304 lt!607229)))))

(declare-fun lt!607232 () Unit!30025)

(declare-fun theoremInvertabilityWhenTokenListSeparable!271 (LexerInterface!2828 List!18211 List!18212) Unit!30025)

(assert (=> b!1645180 (= lt!607232 (theoremInvertabilityWhenTokenListSeparable!271 thiss!17113 rules!1846 (t!150411 tokens!457)))))

(declare-fun isPrefix!1457 (List!18210 List!18210) Bool)

(assert (=> b!1645180 (isPrefix!1457 lt!607222 lt!607233)))

(declare-fun lt!607240 () Unit!30025)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!982 (List!18210 List!18210) Unit!30025)

(assert (=> b!1645180 (= lt!607240 (lemmaConcatTwoListThenFirstIsPrefix!982 lt!607222 lt!607231))))

(declare-fun tp!476660 () Bool)

(declare-fun b!1645181 () Bool)

(declare-fun inv!23498 (String!20777) Bool)

(declare-fun inv!23502 (TokenValueInjection!6238) Bool)

(assert (=> b!1645181 (= e!1055076 (and tp!476660 (inv!23498 (tag!3479 (h!23542 rules!1846))) (inv!23502 (transformation!3199 (h!23542 rules!1846))) e!1055082))))

(declare-fun b!1645182 () Bool)

(declare-fun res!737078 () Bool)

(assert (=> b!1645182 (=> (not res!737078) (not e!1055079))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!521 (LexerInterface!2828 List!18212 List!18211) Bool)

(assert (=> b!1645182 (= res!737078 (tokensListTwoByTwoPredicateSeparableList!521 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1645183 () Bool)

(declare-fun tp!476666 () Bool)

(assert (=> b!1645183 (= e!1055086 (and tp!476666 (inv!23498 (tag!3479 (rule!5053 (h!23543 tokens!457)))) (inv!23502 (transformation!3199 (rule!5053 (h!23543 tokens!457)))) e!1055080))))

(declare-fun b!1645184 () Bool)

(declare-fun res!737075 () Bool)

(assert (=> b!1645184 (=> (not res!737075) (not e!1055079))))

(declare-fun rulesProduceEachTokenIndividuallyList!1030 (LexerInterface!2828 List!18211 List!18212) Bool)

(assert (=> b!1645184 (= res!737075 (rulesProduceEachTokenIndividuallyList!1030 thiss!17113 rules!1846 tokens!457))))

(assert (= (and start!157754 res!737080) b!1645178))

(assert (= (and b!1645178 res!737079) b!1645176))

(assert (= (and b!1645176 res!737074) b!1645184))

(assert (= (and b!1645184 res!737075) b!1645182))

(assert (= (and b!1645182 res!737078) b!1645172))

(assert (= (and b!1645172 res!737077) b!1645177))

(assert (= (and b!1645177 res!737071) b!1645180))

(assert (= (and b!1645180 (not res!737072)) b!1645169))

(assert (= (and b!1645169 (not res!737076)) b!1645168))

(assert (= (and b!1645168 (not res!737073)) b!1645174))

(assert (= b!1645181 b!1645179))

(assert (= b!1645173 b!1645181))

(assert (= (and start!157754 ((_ is Cons!18141) rules!1846)) b!1645173))

(assert (= b!1645183 b!1645170))

(assert (= b!1645171 b!1645183))

(assert (= b!1645175 b!1645171))

(assert (= (and start!157754 ((_ is Cons!18142) tokens!457)) b!1645175))

(declare-fun m!1989325 () Bool)

(assert (=> b!1645181 m!1989325))

(declare-fun m!1989327 () Bool)

(assert (=> b!1645181 m!1989327))

(declare-fun m!1989329 () Bool)

(assert (=> b!1645177 m!1989329))

(declare-fun m!1989331 () Bool)

(assert (=> b!1645177 m!1989331))

(declare-fun m!1989333 () Bool)

(assert (=> b!1645177 m!1989333))

(assert (=> b!1645177 m!1989329))

(declare-fun m!1989335 () Bool)

(assert (=> b!1645177 m!1989335))

(declare-fun m!1989337 () Bool)

(assert (=> b!1645177 m!1989337))

(declare-fun m!1989339 () Bool)

(assert (=> b!1645177 m!1989339))

(declare-fun m!1989341 () Bool)

(assert (=> b!1645177 m!1989341))

(declare-fun m!1989343 () Bool)

(assert (=> b!1645177 m!1989343))

(declare-fun m!1989345 () Bool)

(assert (=> b!1645177 m!1989345))

(assert (=> b!1645177 m!1989337))

(declare-fun m!1989347 () Bool)

(assert (=> b!1645177 m!1989347))

(declare-fun m!1989349 () Bool)

(assert (=> b!1645183 m!1989349))

(declare-fun m!1989351 () Bool)

(assert (=> b!1645183 m!1989351))

(declare-fun m!1989353 () Bool)

(assert (=> b!1645176 m!1989353))

(declare-fun m!1989355 () Bool)

(assert (=> b!1645171 m!1989355))

(declare-fun m!1989357 () Bool)

(assert (=> b!1645182 m!1989357))

(declare-fun m!1989359 () Bool)

(assert (=> b!1645168 m!1989359))

(declare-fun m!1989361 () Bool)

(assert (=> b!1645180 m!1989361))

(declare-fun m!1989363 () Bool)

(assert (=> b!1645180 m!1989363))

(declare-fun m!1989365 () Bool)

(assert (=> b!1645180 m!1989365))

(declare-fun m!1989367 () Bool)

(assert (=> b!1645180 m!1989367))

(declare-fun m!1989369 () Bool)

(assert (=> b!1645178 m!1989369))

(declare-fun m!1989371 () Bool)

(assert (=> b!1645169 m!1989371))

(declare-fun m!1989373 () Bool)

(assert (=> b!1645169 m!1989373))

(declare-fun m!1989375 () Bool)

(assert (=> b!1645169 m!1989375))

(declare-fun m!1989377 () Bool)

(assert (=> b!1645169 m!1989377))

(declare-fun m!1989379 () Bool)

(assert (=> b!1645169 m!1989379))

(assert (=> b!1645169 m!1989375))

(assert (=> b!1645169 m!1989377))

(declare-fun m!1989381 () Bool)

(assert (=> b!1645175 m!1989381))

(declare-fun m!1989383 () Bool)

(assert (=> b!1645184 m!1989383))

(declare-fun m!1989385 () Bool)

(assert (=> b!1645174 m!1989385))

(declare-fun m!1989387 () Bool)

(assert (=> b!1645174 m!1989387))

(declare-fun m!1989389 () Bool)

(assert (=> b!1645174 m!1989389))

(declare-fun m!1989391 () Bool)

(assert (=> b!1645174 m!1989391))

(declare-fun m!1989393 () Bool)

(assert (=> b!1645174 m!1989393))

(declare-fun m!1989395 () Bool)

(assert (=> b!1645174 m!1989395))

(check-sat (not b!1645173) (not b!1645169) b_and!116751 (not b_next!45355) (not b_next!45353) (not b_next!45351) (not b!1645183) (not b!1645176) (not b!1645174) (not b!1645177) (not b!1645184) (not b_next!45357) b_and!116749 (not b!1645168) (not b!1645182) (not b!1645180) b_and!116753 b_and!116755 (not b!1645171) (not b!1645178) (not b!1645181) (not b!1645175))
(check-sat b_and!116749 b_and!116751 b_and!116753 (not b_next!45355) (not b_next!45353) b_and!116755 (not b_next!45351) (not b_next!45357))
