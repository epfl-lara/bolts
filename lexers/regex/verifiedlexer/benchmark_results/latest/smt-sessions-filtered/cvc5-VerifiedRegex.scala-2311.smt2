; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!114284 () Bool)

(assert start!114284)

(declare-fun b!1296688 () Bool)

(declare-fun b_free!30663 () Bool)

(declare-fun b_next!31367 () Bool)

(assert (=> b!1296688 (= b_free!30663 (not b_next!31367))))

(declare-fun tp!378270 () Bool)

(declare-fun b_and!86323 () Bool)

(assert (=> b!1296688 (= tp!378270 b_and!86323)))

(declare-fun b_free!30665 () Bool)

(declare-fun b_next!31369 () Bool)

(assert (=> b!1296688 (= b_free!30665 (not b_next!31369))))

(declare-fun tp!378277 () Bool)

(declare-fun b_and!86325 () Bool)

(assert (=> b!1296688 (= tp!378277 b_and!86325)))

(declare-fun b!1296685 () Bool)

(declare-fun b_free!30667 () Bool)

(declare-fun b_next!31371 () Bool)

(assert (=> b!1296685 (= b_free!30667 (not b_next!31371))))

(declare-fun tp!378274 () Bool)

(declare-fun b_and!86327 () Bool)

(assert (=> b!1296685 (= tp!378274 b_and!86327)))

(declare-fun b_free!30669 () Bool)

(declare-fun b_next!31373 () Bool)

(assert (=> b!1296685 (= b_free!30669 (not b_next!31373))))

(declare-fun tp!378278 () Bool)

(declare-fun b_and!86329 () Bool)

(assert (=> b!1296685 (= tp!378278 b_and!86329)))

(declare-fun b!1296689 () Bool)

(declare-fun b_free!30671 () Bool)

(declare-fun b_next!31375 () Bool)

(assert (=> b!1296689 (= b_free!30671 (not b_next!31375))))

(declare-fun tp!378276 () Bool)

(declare-fun b_and!86331 () Bool)

(assert (=> b!1296689 (= tp!378276 b_and!86331)))

(declare-fun b_free!30673 () Bool)

(declare-fun b_next!31377 () Bool)

(assert (=> b!1296689 (= b_free!30673 (not b_next!31377))))

(declare-fun tp!378272 () Bool)

(declare-fun b_and!86333 () Bool)

(assert (=> b!1296689 (= tp!378272 b_and!86333)))

(declare-fun b!1296684 () Bool)

(assert (=> b!1296684 true))

(assert (=> b!1296684 true))

(declare-fun b!1296672 () Bool)

(declare-fun res!580577 () Bool)

(declare-fun e!831229 () Bool)

(assert (=> b!1296672 (=> (not res!580577) (not e!831229))))

(declare-datatypes ((List!13017 0))(
  ( (Nil!12951) (Cons!12951 (h!18352 (_ BitVec 16)) (t!117406 List!13017)) )
))
(declare-datatypes ((TokenValue!2320 0))(
  ( (FloatLiteralValue!4640 (text!16685 List!13017)) (TokenValueExt!2319 (__x!8469 Int)) (Broken!11600 (value!73163 List!13017)) (Object!2385) (End!2320) (Def!2320) (Underscore!2320) (Match!2320) (Else!2320) (Error!2320) (Case!2320) (If!2320) (Extends!2320) (Abstract!2320) (Class!2320) (Val!2320) (DelimiterValue!4640 (del!2380 List!13017)) (KeywordValue!2326 (value!73164 List!13017)) (CommentValue!4640 (value!73165 List!13017)) (WhitespaceValue!4640 (value!73166 List!13017)) (IndentationValue!2320 (value!73167 List!13017)) (String!15837) (Int32!2320) (Broken!11601 (value!73168 List!13017)) (Boolean!2321) (Unit!19102) (OperatorValue!2323 (op!2380 List!13017)) (IdentifierValue!4640 (value!73169 List!13017)) (IdentifierValue!4641 (value!73170 List!13017)) (WhitespaceValue!4641 (value!73171 List!13017)) (True!4640) (False!4640) (Broken!11602 (value!73172 List!13017)) (Broken!11603 (value!73173 List!13017)) (True!4641) (RightBrace!2320) (RightBracket!2320) (Colon!2320) (Null!2320) (Comma!2320) (LeftBracket!2320) (False!4641) (LeftBrace!2320) (ImaginaryLiteralValue!2320 (text!16686 List!13017)) (StringLiteralValue!6960 (value!73174 List!13017)) (EOFValue!2320 (value!73175 List!13017)) (IdentValue!2320 (value!73176 List!13017)) (DelimiterValue!4641 (value!73177 List!13017)) (DedentValue!2320 (value!73178 List!13017)) (NewLineValue!2320 (value!73179 List!13017)) (IntegerValue!6960 (value!73180 (_ BitVec 32)) (text!16687 List!13017)) (IntegerValue!6961 (value!73181 Int) (text!16688 List!13017)) (Times!2320) (Or!2320) (Equal!2320) (Minus!2320) (Broken!11604 (value!73182 List!13017)) (And!2320) (Div!2320) (LessEqual!2320) (Mod!2320) (Concat!5864) (Not!2320) (Plus!2320) (SpaceValue!2320 (value!73183 List!13017)) (IntegerValue!6962 (value!73184 Int) (text!16689 List!13017)) (StringLiteralValue!6961 (text!16690 List!13017)) (FloatLiteralValue!4641 (text!16691 List!13017)) (BytesLiteralValue!2320 (value!73185 List!13017)) (CommentValue!4641 (value!73186 List!13017)) (StringLiteralValue!6962 (value!73187 List!13017)) (ErrorTokenValue!2320 (msg!2381 List!13017)) )
))
(declare-datatypes ((C!7378 0))(
  ( (C!7379 (val!4249 Int)) )
))
(declare-datatypes ((List!13018 0))(
  ( (Nil!12952) (Cons!12952 (h!18353 C!7378) (t!117407 List!13018)) )
))
(declare-datatypes ((IArray!8513 0))(
  ( (IArray!8514 (innerList!4314 List!13018)) )
))
(declare-datatypes ((Conc!4254 0))(
  ( (Node!4254 (left!11137 Conc!4254) (right!11467 Conc!4254) (csize!8738 Int) (cheight!4465 Int)) (Leaf!6566 (xs!6969 IArray!8513) (csize!8739 Int)) (Empty!4254) )
))
(declare-datatypes ((BalanceConc!8448 0))(
  ( (BalanceConc!8449 (c!213555 Conc!4254)) )
))
(declare-datatypes ((String!15838 0))(
  ( (String!15839 (value!73188 String)) )
))
(declare-datatypes ((Regex!3544 0))(
  ( (ElementMatch!3544 (c!213556 C!7378)) (Concat!5865 (regOne!7600 Regex!3544) (regTwo!7600 Regex!3544)) (EmptyExpr!3544) (Star!3544 (reg!3873 Regex!3544)) (EmptyLang!3544) (Union!3544 (regOne!7601 Regex!3544) (regTwo!7601 Regex!3544)) )
))
(declare-datatypes ((TokenValueInjection!4300 0))(
  ( (TokenValueInjection!4301 (toValue!3437 Int) (toChars!3296 Int)) )
))
(declare-datatypes ((Rule!4260 0))(
  ( (Rule!4261 (regex!2230 Regex!3544) (tag!2492 String!15838) (isSeparator!2230 Bool) (transformation!2230 TokenValueInjection!4300)) )
))
(declare-datatypes ((Token!4122 0))(
  ( (Token!4123 (value!73189 TokenValue!2320) (rule!3969 Rule!4260) (size!10586 Int) (originalCharacters!3092 List!13018)) )
))
(declare-fun t1!34 () Token!4122)

(declare-datatypes ((LexerInterface!1925 0))(
  ( (LexerInterfaceExt!1922 (__x!8470 Int)) (Lexer!1923) )
))
(declare-fun thiss!19762 () LexerInterface!1925)

(declare-datatypes ((List!13019 0))(
  ( (Nil!12953) (Cons!12953 (h!18354 Rule!4260) (t!117408 List!13019)) )
))
(declare-fun rules!2550 () List!13019)

(declare-fun t2!34 () Token!4122)

(declare-fun separableTokensPredicate!208 (LexerInterface!1925 Token!4122 Token!4122 List!13019) Bool)

(assert (=> b!1296672 (= res!580577 (not (separableTokensPredicate!208 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1296673 () Bool)

(declare-fun res!580579 () Bool)

(declare-fun e!831225 () Bool)

(assert (=> b!1296673 (=> (not res!580579) (not e!831225))))

(declare-fun rulesProduceIndividualToken!894 (LexerInterface!1925 List!13019 Token!4122) Bool)

(assert (=> b!1296673 (= res!580579 (rulesProduceIndividualToken!894 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1296674 () Bool)

(declare-fun res!580580 () Bool)

(assert (=> b!1296674 (=> (not res!580580) (not e!831225))))

(assert (=> b!1296674 (= res!580580 (not (= (isSeparator!2230 (rule!3969 t1!34)) (isSeparator!2230 (rule!3969 t2!34)))))))

(declare-fun b!1296675 () Bool)

(declare-fun res!580578 () Bool)

(assert (=> b!1296675 (=> (not res!580578) (not e!831225))))

(assert (=> b!1296675 (= res!580578 (rulesProduceIndividualToken!894 thiss!19762 rules!2550 t1!34))))

(declare-fun res!580585 () Bool)

(assert (=> start!114284 (=> (not res!580585) (not e!831225))))

(assert (=> start!114284 (= res!580585 (is-Lexer!1923 thiss!19762))))

(assert (=> start!114284 e!831225))

(assert (=> start!114284 true))

(declare-fun e!831230 () Bool)

(assert (=> start!114284 e!831230))

(declare-fun e!831236 () Bool)

(declare-fun inv!17379 (Token!4122) Bool)

(assert (=> start!114284 (and (inv!17379 t1!34) e!831236)))

(declare-fun e!831237 () Bool)

(assert (=> start!114284 (and (inv!17379 t2!34) e!831237)))

(declare-fun tp!378271 () Bool)

(declare-fun e!831231 () Bool)

(declare-fun b!1296676 () Bool)

(declare-fun inv!21 (TokenValue!2320) Bool)

(assert (=> b!1296676 (= e!831236 (and (inv!21 (value!73189 t1!34)) e!831231 tp!378271))))

(declare-fun b!1296677 () Bool)

(declare-fun res!580582 () Bool)

(declare-fun e!831226 () Bool)

(assert (=> b!1296677 (=> res!580582 e!831226)))

(declare-fun lt!426530 () List!13018)

(declare-fun lt!426531 () BalanceConc!8448)

(declare-fun contains!2166 (List!13018 C!7378) Bool)

(declare-fun apply!2860 (BalanceConc!8448 Int) C!7378)

(assert (=> b!1296677 (= res!580582 (not (contains!2166 lt!426530 (apply!2860 lt!426531 0))))))

(declare-fun b!1296678 () Bool)

(declare-fun e!831241 () Bool)

(declare-fun tp!378273 () Bool)

(declare-fun inv!17376 (String!15838) Bool)

(declare-fun inv!17380 (TokenValueInjection!4300) Bool)

(assert (=> b!1296678 (= e!831231 (and tp!378273 (inv!17376 (tag!2492 (rule!3969 t1!34))) (inv!17380 (transformation!2230 (rule!3969 t1!34))) e!831241))))

(declare-fun b!1296679 () Bool)

(declare-fun size!10587 (BalanceConc!8448) Int)

(assert (=> b!1296679 (= e!831226 (< 0 (size!10587 lt!426531)))))

(declare-fun b!1296680 () Bool)

(declare-fun e!831243 () Bool)

(assert (=> b!1296680 (= e!831243 e!831226)))

(declare-fun res!580589 () Bool)

(assert (=> b!1296680 (=> res!580589 e!831226)))

(declare-fun lt!426534 () List!13018)

(declare-fun ++!3289 (List!13018 List!13018) List!13018)

(declare-fun getSuffix!400 (List!13018 List!13018) List!13018)

(assert (=> b!1296680 (= res!580589 (not (= lt!426534 (++!3289 lt!426530 (getSuffix!400 lt!426534 lt!426530)))))))

(declare-fun lambda!50948 () Int)

(declare-fun pickWitness!7 (Int) List!13018)

(assert (=> b!1296680 (= lt!426534 (pickWitness!7 lambda!50948))))

(declare-fun e!831240 () Bool)

(declare-fun e!831239 () Bool)

(declare-fun tp!378275 () Bool)

(declare-fun b!1296681 () Bool)

(assert (=> b!1296681 (= e!831239 (and tp!378275 (inv!17376 (tag!2492 (rule!3969 t2!34))) (inv!17380 (transformation!2230 (rule!3969 t2!34))) e!831240))))

(declare-fun b!1296682 () Bool)

(declare-fun res!580581 () Bool)

(assert (=> b!1296682 (=> (not res!580581) (not e!831229))))

(declare-fun sepAndNonSepRulesDisjointChars!603 (List!13019 List!13019) Bool)

(assert (=> b!1296682 (= res!580581 (sepAndNonSepRulesDisjointChars!603 rules!2550 rules!2550))))

(declare-fun e!831238 () Bool)

(declare-fun e!831234 () Bool)

(declare-fun tp!378267 () Bool)

(declare-fun b!1296683 () Bool)

(assert (=> b!1296683 (= e!831234 (and tp!378267 (inv!17376 (tag!2492 (h!18354 rules!2550))) (inv!17380 (transformation!2230 (h!18354 rules!2550))) e!831238))))

(declare-fun e!831232 () Bool)

(assert (=> b!1296684 (= e!831232 (not e!831243))))

(declare-fun res!580588 () Bool)

(assert (=> b!1296684 (=> res!580588 e!831243)))

(declare-fun Exists!702 (Int) Bool)

(assert (=> b!1296684 (= res!580588 (not (Exists!702 lambda!50948)))))

(assert (=> b!1296684 (Exists!702 lambda!50948)))

(declare-datatypes ((Unit!19103 0))(
  ( (Unit!19104) )
))
(declare-fun lt!426533 () Unit!19103)

(declare-fun lt!426532 () Regex!3544)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!20 (Regex!3544 List!13018) Unit!19103)

(assert (=> b!1296684 (= lt!426533 (lemmaPrefixMatchThenExistsStringThatMatches!20 lt!426532 lt!426530))))

(assert (=> b!1296685 (= e!831241 (and tp!378274 tp!378278))))

(declare-fun b!1296686 () Bool)

(declare-fun res!580583 () Bool)

(assert (=> b!1296686 (=> (not res!580583) (not e!831225))))

(declare-fun rulesInvariant!1795 (LexerInterface!1925 List!13019) Bool)

(assert (=> b!1296686 (= res!580583 (rulesInvariant!1795 thiss!19762 rules!2550))))

(declare-fun b!1296687 () Bool)

(assert (=> b!1296687 (= e!831225 e!831229)))

(declare-fun res!580587 () Bool)

(assert (=> b!1296687 (=> (not res!580587) (not e!831229))))

(declare-fun lt!426529 () BalanceConc!8448)

(assert (=> b!1296687 (= res!580587 (> (size!10587 lt!426529) 0))))

(declare-fun charsOf!1202 (Token!4122) BalanceConc!8448)

(assert (=> b!1296687 (= lt!426529 (charsOf!1202 t2!34))))

(assert (=> b!1296688 (= e!831238 (and tp!378270 tp!378277))))

(assert (=> b!1296689 (= e!831240 (and tp!378276 tp!378272))))

(declare-fun b!1296690 () Bool)

(declare-fun tp!378268 () Bool)

(assert (=> b!1296690 (= e!831230 (and e!831234 tp!378268))))

(declare-fun b!1296691 () Bool)

(declare-fun res!580586 () Bool)

(assert (=> b!1296691 (=> (not res!580586) (not e!831225))))

(declare-fun isEmpty!7700 (List!13019) Bool)

(assert (=> b!1296691 (= res!580586 (not (isEmpty!7700 rules!2550)))))

(declare-fun tp!378269 () Bool)

(declare-fun b!1296692 () Bool)

(assert (=> b!1296692 (= e!831237 (and (inv!21 (value!73189 t2!34)) e!831239 tp!378269))))

(declare-fun b!1296693 () Bool)

(assert (=> b!1296693 (= e!831229 e!831232)))

(declare-fun res!580584 () Bool)

(assert (=> b!1296693 (=> (not res!580584) (not e!831232))))

(declare-fun prefixMatch!57 (Regex!3544 List!13018) Bool)

(assert (=> b!1296693 (= res!580584 (prefixMatch!57 lt!426532 lt!426530))))

(declare-fun rulesRegex!115 (LexerInterface!1925 List!13019) Regex!3544)

(assert (=> b!1296693 (= lt!426532 (rulesRegex!115 thiss!19762 rules!2550))))

(declare-fun list!4848 (BalanceConc!8448) List!13018)

(assert (=> b!1296693 (= lt!426530 (++!3289 (list!4848 lt!426531) (Cons!12952 (apply!2860 lt!426529 0) Nil!12952)))))

(assert (=> b!1296693 (= lt!426531 (charsOf!1202 t1!34))))

(assert (= (and start!114284 res!580585) b!1296691))

(assert (= (and b!1296691 res!580586) b!1296686))

(assert (= (and b!1296686 res!580583) b!1296675))

(assert (= (and b!1296675 res!580578) b!1296673))

(assert (= (and b!1296673 res!580579) b!1296674))

(assert (= (and b!1296674 res!580580) b!1296687))

(assert (= (and b!1296687 res!580587) b!1296682))

(assert (= (and b!1296682 res!580581) b!1296672))

(assert (= (and b!1296672 res!580577) b!1296693))

(assert (= (and b!1296693 res!580584) b!1296684))

(assert (= (and b!1296684 (not res!580588)) b!1296680))

(assert (= (and b!1296680 (not res!580589)) b!1296677))

(assert (= (and b!1296677 (not res!580582)) b!1296679))

(assert (= b!1296683 b!1296688))

(assert (= b!1296690 b!1296683))

(assert (= (and start!114284 (is-Cons!12953 rules!2550)) b!1296690))

(assert (= b!1296678 b!1296685))

(assert (= b!1296676 b!1296678))

(assert (= start!114284 b!1296676))

(assert (= b!1296681 b!1296689))

(assert (= b!1296692 b!1296681))

(assert (= start!114284 b!1296692))

(declare-fun m!1448047 () Bool)

(assert (=> b!1296681 m!1448047))

(declare-fun m!1448049 () Bool)

(assert (=> b!1296681 m!1448049))

(declare-fun m!1448051 () Bool)

(assert (=> b!1296682 m!1448051))

(declare-fun m!1448053 () Bool)

(assert (=> b!1296672 m!1448053))

(declare-fun m!1448055 () Bool)

(assert (=> b!1296676 m!1448055))

(declare-fun m!1448057 () Bool)

(assert (=> b!1296687 m!1448057))

(declare-fun m!1448059 () Bool)

(assert (=> b!1296687 m!1448059))

(declare-fun m!1448061 () Bool)

(assert (=> b!1296675 m!1448061))

(declare-fun m!1448063 () Bool)

(assert (=> b!1296680 m!1448063))

(assert (=> b!1296680 m!1448063))

(declare-fun m!1448065 () Bool)

(assert (=> b!1296680 m!1448065))

(declare-fun m!1448067 () Bool)

(assert (=> b!1296680 m!1448067))

(declare-fun m!1448069 () Bool)

(assert (=> b!1296677 m!1448069))

(assert (=> b!1296677 m!1448069))

(declare-fun m!1448071 () Bool)

(assert (=> b!1296677 m!1448071))

(declare-fun m!1448073 () Bool)

(assert (=> b!1296683 m!1448073))

(declare-fun m!1448075 () Bool)

(assert (=> b!1296683 m!1448075))

(declare-fun m!1448077 () Bool)

(assert (=> b!1296686 m!1448077))

(declare-fun m!1448079 () Bool)

(assert (=> b!1296693 m!1448079))

(declare-fun m!1448081 () Bool)

(assert (=> b!1296693 m!1448081))

(declare-fun m!1448083 () Bool)

(assert (=> b!1296693 m!1448083))

(declare-fun m!1448085 () Bool)

(assert (=> b!1296693 m!1448085))

(declare-fun m!1448087 () Bool)

(assert (=> b!1296693 m!1448087))

(assert (=> b!1296693 m!1448085))

(declare-fun m!1448089 () Bool)

(assert (=> b!1296693 m!1448089))

(declare-fun m!1448091 () Bool)

(assert (=> b!1296684 m!1448091))

(assert (=> b!1296684 m!1448091))

(declare-fun m!1448093 () Bool)

(assert (=> b!1296684 m!1448093))

(declare-fun m!1448095 () Bool)

(assert (=> start!114284 m!1448095))

(declare-fun m!1448097 () Bool)

(assert (=> start!114284 m!1448097))

(declare-fun m!1448099 () Bool)

(assert (=> b!1296692 m!1448099))

(declare-fun m!1448101 () Bool)

(assert (=> b!1296673 m!1448101))

(declare-fun m!1448103 () Bool)

(assert (=> b!1296678 m!1448103))

(declare-fun m!1448105 () Bool)

(assert (=> b!1296678 m!1448105))

(declare-fun m!1448107 () Bool)

(assert (=> b!1296679 m!1448107))

(declare-fun m!1448109 () Bool)

(assert (=> b!1296691 m!1448109))

(push 1)

(assert (not b_next!31375))

(assert (not b!1296680))

(assert (not b_next!31377))

(assert (not b!1296683))

(assert (not b!1296693))

(assert b_and!86323)

(assert (not b!1296673))

(assert b_and!86331)

(assert (not b_next!31369))

(assert (not b!1296687))

(assert (not b!1296684))

(assert (not b!1296678))

(assert (not b!1296672))

(assert b_and!86327)

(assert (not b!1296691))

(assert (not b!1296686))

(assert (not start!114284))

(assert (not b!1296690))

(assert b_and!86329)

(assert b_and!86333)

(assert (not b_next!31371))

(assert b_and!86325)

(assert (not b!1296679))

(assert (not b!1296682))

(assert (not b!1296677))

(assert (not b_next!31367))

(assert (not b!1296676))

(assert (not b!1296675))

(assert (not b_next!31373))

(assert (not b!1296681))

(assert (not b!1296692))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!31375))

(assert (not b_next!31377))

(assert b_and!86327)

(assert b_and!86323)

(assert (not b_next!31367))

(assert b_and!86331)

(assert (not b_next!31369))

(assert (not b_next!31373))

(assert b_and!86329)

(assert b_and!86333)

(assert (not b_next!31371))

(assert b_and!86325)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!366088 () Bool)

(declare-fun res!580645 () Bool)

(declare-fun e!831309 () Bool)

(assert (=> d!366088 (=> (not res!580645) (not e!831309))))

(declare-fun rulesValid!818 (LexerInterface!1925 List!13019) Bool)

(assert (=> d!366088 (= res!580645 (rulesValid!818 thiss!19762 rules!2550))))

(assert (=> d!366088 (= (rulesInvariant!1795 thiss!19762 rules!2550) e!831309)))

(declare-fun b!1296776 () Bool)

(declare-datatypes ((List!13023 0))(
  ( (Nil!12957) (Cons!12957 (h!18358 String!15838) (t!117430 List!13023)) )
))
(declare-fun noDuplicateTag!818 (LexerInterface!1925 List!13019 List!13023) Bool)

(assert (=> b!1296776 (= e!831309 (noDuplicateTag!818 thiss!19762 rules!2550 Nil!12957))))

(assert (= (and d!366088 res!580645) b!1296776))

(declare-fun m!1448175 () Bool)

(assert (=> d!366088 m!1448175))

(declare-fun m!1448177 () Bool)

(assert (=> b!1296776 m!1448177))

(assert (=> b!1296686 d!366088))

(declare-fun d!366090 () Bool)

(declare-fun lt!426558 () Bool)

(declare-fun e!831315 () Bool)

(assert (=> d!366090 (= lt!426558 e!831315)))

(declare-fun res!580654 () Bool)

(assert (=> d!366090 (=> (not res!580654) (not e!831315))))

(declare-datatypes ((List!13024 0))(
  ( (Nil!12958) (Cons!12958 (h!18359 Token!4122) (t!117431 List!13024)) )
))
(declare-datatypes ((IArray!8517 0))(
  ( (IArray!8518 (innerList!4316 List!13024)) )
))
(declare-datatypes ((Conc!4256 0))(
  ( (Node!4256 (left!11141 Conc!4256) (right!11471 Conc!4256) (csize!8742 Int) (cheight!4467 Int)) (Leaf!6568 (xs!6971 IArray!8517) (csize!8743 Int)) (Empty!4256) )
))
(declare-datatypes ((BalanceConc!8452 0))(
  ( (BalanceConc!8453 (c!213583 Conc!4256)) )
))
(declare-fun list!4850 (BalanceConc!8452) List!13024)

(declare-datatypes ((tuple2!12696 0))(
  ( (tuple2!12697 (_1!7234 BalanceConc!8452) (_2!7234 BalanceConc!8448)) )
))
(declare-fun lex!788 (LexerInterface!1925 List!13019 BalanceConc!8448) tuple2!12696)

(declare-fun print!725 (LexerInterface!1925 BalanceConc!8452) BalanceConc!8448)

(declare-fun singletonSeq!815 (Token!4122) BalanceConc!8452)

(assert (=> d!366090 (= res!580654 (= (list!4850 (_1!7234 (lex!788 thiss!19762 rules!2550 (print!725 thiss!19762 (singletonSeq!815 t1!34))))) (list!4850 (singletonSeq!815 t1!34))))))

(declare-fun e!831314 () Bool)

(assert (=> d!366090 (= lt!426558 e!831314)))

(declare-fun res!580653 () Bool)

(assert (=> d!366090 (=> (not res!580653) (not e!831314))))

(declare-fun lt!426557 () tuple2!12696)

(declare-fun size!10590 (BalanceConc!8452) Int)

(assert (=> d!366090 (= res!580653 (= (size!10590 (_1!7234 lt!426557)) 1))))

(assert (=> d!366090 (= lt!426557 (lex!788 thiss!19762 rules!2550 (print!725 thiss!19762 (singletonSeq!815 t1!34))))))

(assert (=> d!366090 (not (isEmpty!7700 rules!2550))))

(assert (=> d!366090 (= (rulesProduceIndividualToken!894 thiss!19762 rules!2550 t1!34) lt!426558)))

(declare-fun b!1296783 () Bool)

(declare-fun res!580652 () Bool)

(assert (=> b!1296783 (=> (not res!580652) (not e!831314))))

(declare-fun apply!2862 (BalanceConc!8452 Int) Token!4122)

(assert (=> b!1296783 (= res!580652 (= (apply!2862 (_1!7234 lt!426557) 0) t1!34))))

(declare-fun b!1296784 () Bool)

(declare-fun isEmpty!7702 (BalanceConc!8448) Bool)

(assert (=> b!1296784 (= e!831314 (isEmpty!7702 (_2!7234 lt!426557)))))

(declare-fun b!1296785 () Bool)

(assert (=> b!1296785 (= e!831315 (isEmpty!7702 (_2!7234 (lex!788 thiss!19762 rules!2550 (print!725 thiss!19762 (singletonSeq!815 t1!34))))))))

(assert (= (and d!366090 res!580653) b!1296783))

(assert (= (and b!1296783 res!580652) b!1296784))

(assert (= (and d!366090 res!580654) b!1296785))

(declare-fun m!1448179 () Bool)

(assert (=> d!366090 m!1448179))

(declare-fun m!1448181 () Bool)

(assert (=> d!366090 m!1448181))

(assert (=> d!366090 m!1448179))

(assert (=> d!366090 m!1448179))

(declare-fun m!1448183 () Bool)

(assert (=> d!366090 m!1448183))

(declare-fun m!1448185 () Bool)

(assert (=> d!366090 m!1448185))

(assert (=> d!366090 m!1448183))

(declare-fun m!1448187 () Bool)

(assert (=> d!366090 m!1448187))

(declare-fun m!1448189 () Bool)

(assert (=> d!366090 m!1448189))

(assert (=> d!366090 m!1448109))

(declare-fun m!1448191 () Bool)

(assert (=> b!1296783 m!1448191))

(declare-fun m!1448193 () Bool)

(assert (=> b!1296784 m!1448193))

(assert (=> b!1296785 m!1448179))

(assert (=> b!1296785 m!1448179))

(assert (=> b!1296785 m!1448183))

(assert (=> b!1296785 m!1448183))

(assert (=> b!1296785 m!1448187))

(declare-fun m!1448195 () Bool)

(assert (=> b!1296785 m!1448195))

(assert (=> b!1296675 d!366090))

(declare-fun d!366094 () Bool)

(declare-fun choose!7959 (Int) Bool)

(assert (=> d!366094 (= (Exists!702 lambda!50948) (choose!7959 lambda!50948))))

(declare-fun bs!328991 () Bool)

(assert (= bs!328991 d!366094))

(declare-fun m!1448197 () Bool)

(assert (=> bs!328991 m!1448197))

(assert (=> b!1296684 d!366094))

(declare-fun bs!328992 () Bool)

(declare-fun d!366096 () Bool)

(assert (= bs!328992 (and d!366096 b!1296684)))

(declare-fun lambda!50958 () Int)

(assert (=> bs!328992 (= lambda!50958 lambda!50948)))

(assert (=> d!366096 true))

(assert (=> d!366096 true))

(assert (=> d!366096 (Exists!702 lambda!50958)))

(declare-fun lt!426561 () Unit!19103)

(declare-fun choose!7960 (Regex!3544 List!13018) Unit!19103)

(assert (=> d!366096 (= lt!426561 (choose!7960 lt!426532 lt!426530))))

(declare-fun validRegex!1530 (Regex!3544) Bool)

(assert (=> d!366096 (validRegex!1530 lt!426532)))

(assert (=> d!366096 (= (lemmaPrefixMatchThenExistsStringThatMatches!20 lt!426532 lt!426530) lt!426561)))

(declare-fun bs!328993 () Bool)

(assert (= bs!328993 d!366096))

(declare-fun m!1448199 () Bool)

(assert (=> bs!328993 m!1448199))

(declare-fun m!1448201 () Bool)

(assert (=> bs!328993 m!1448201))

(declare-fun m!1448203 () Bool)

(assert (=> bs!328993 m!1448203))

(assert (=> b!1296684 d!366096))

(declare-fun d!366098 () Bool)

(declare-fun lt!426563 () Bool)

(declare-fun e!831319 () Bool)

(assert (=> d!366098 (= lt!426563 e!831319)))

(declare-fun res!580659 () Bool)

(assert (=> d!366098 (=> (not res!580659) (not e!831319))))

(assert (=> d!366098 (= res!580659 (= (list!4850 (_1!7234 (lex!788 thiss!19762 rules!2550 (print!725 thiss!19762 (singletonSeq!815 t2!34))))) (list!4850 (singletonSeq!815 t2!34))))))

(declare-fun e!831318 () Bool)

(assert (=> d!366098 (= lt!426563 e!831318)))

(declare-fun res!580658 () Bool)

(assert (=> d!366098 (=> (not res!580658) (not e!831318))))

(declare-fun lt!426562 () tuple2!12696)

(assert (=> d!366098 (= res!580658 (= (size!10590 (_1!7234 lt!426562)) 1))))

(assert (=> d!366098 (= lt!426562 (lex!788 thiss!19762 rules!2550 (print!725 thiss!19762 (singletonSeq!815 t2!34))))))

(assert (=> d!366098 (not (isEmpty!7700 rules!2550))))

(assert (=> d!366098 (= (rulesProduceIndividualToken!894 thiss!19762 rules!2550 t2!34) lt!426563)))

(declare-fun b!1296788 () Bool)

(declare-fun res!580657 () Bool)

(assert (=> b!1296788 (=> (not res!580657) (not e!831318))))

(assert (=> b!1296788 (= res!580657 (= (apply!2862 (_1!7234 lt!426562) 0) t2!34))))

(declare-fun b!1296789 () Bool)

(assert (=> b!1296789 (= e!831318 (isEmpty!7702 (_2!7234 lt!426562)))))

(declare-fun b!1296790 () Bool)

(assert (=> b!1296790 (= e!831319 (isEmpty!7702 (_2!7234 (lex!788 thiss!19762 rules!2550 (print!725 thiss!19762 (singletonSeq!815 t2!34))))))))

(assert (= (and d!366098 res!580658) b!1296788))

(assert (= (and b!1296788 res!580657) b!1296789))

(assert (= (and d!366098 res!580659) b!1296790))

(declare-fun m!1448205 () Bool)

(assert (=> d!366098 m!1448205))

(declare-fun m!1448207 () Bool)

(assert (=> d!366098 m!1448207))

(assert (=> d!366098 m!1448205))

(assert (=> d!366098 m!1448205))

(declare-fun m!1448209 () Bool)

(assert (=> d!366098 m!1448209))

(declare-fun m!1448211 () Bool)

(assert (=> d!366098 m!1448211))

(assert (=> d!366098 m!1448209))

(declare-fun m!1448213 () Bool)

(assert (=> d!366098 m!1448213))

(declare-fun m!1448215 () Bool)

(assert (=> d!366098 m!1448215))

(assert (=> d!366098 m!1448109))

(declare-fun m!1448217 () Bool)

(assert (=> b!1296788 m!1448217))

(declare-fun m!1448219 () Bool)

(assert (=> b!1296789 m!1448219))

(assert (=> b!1296790 m!1448205))

(assert (=> b!1296790 m!1448205))

(assert (=> b!1296790 m!1448209))

(assert (=> b!1296790 m!1448209))

(assert (=> b!1296790 m!1448213))

(declare-fun m!1448221 () Bool)

(assert (=> b!1296790 m!1448221))

(assert (=> b!1296673 d!366098))

(declare-fun d!366100 () Bool)

(assert (=> d!366100 (= (inv!17376 (tag!2492 (rule!3969 t1!34))) (= (mod (str.len (value!73188 (tag!2492 (rule!3969 t1!34)))) 2) 0))))

(assert (=> b!1296678 d!366100))

(declare-fun d!366102 () Bool)

(declare-fun res!580662 () Bool)

(declare-fun e!831322 () Bool)

(assert (=> d!366102 (=> (not res!580662) (not e!831322))))

(declare-fun semiInverseModEq!849 (Int Int) Bool)

(assert (=> d!366102 (= res!580662 (semiInverseModEq!849 (toChars!3296 (transformation!2230 (rule!3969 t1!34))) (toValue!3437 (transformation!2230 (rule!3969 t1!34)))))))

(assert (=> d!366102 (= (inv!17380 (transformation!2230 (rule!3969 t1!34))) e!831322)))

(declare-fun b!1296793 () Bool)

(declare-fun equivClasses!808 (Int Int) Bool)

(assert (=> b!1296793 (= e!831322 (equivClasses!808 (toChars!3296 (transformation!2230 (rule!3969 t1!34))) (toValue!3437 (transformation!2230 (rule!3969 t1!34)))))))

(assert (= (and d!366102 res!580662) b!1296793))

(declare-fun m!1448223 () Bool)

(assert (=> d!366102 m!1448223))

(declare-fun m!1448225 () Bool)

(assert (=> b!1296793 m!1448225))

(assert (=> b!1296678 d!366102))

(declare-fun d!366104 () Bool)

(declare-fun lt!426566 () Bool)

(declare-fun content!1834 (List!13018) (Set C!7378))

(assert (=> d!366104 (= lt!426566 (set.member (apply!2860 lt!426531 0) (content!1834 lt!426530)))))

(declare-fun e!831328 () Bool)

(assert (=> d!366104 (= lt!426566 e!831328)))

(declare-fun res!580667 () Bool)

(assert (=> d!366104 (=> (not res!580667) (not e!831328))))

(assert (=> d!366104 (= res!580667 (is-Cons!12952 lt!426530))))

(assert (=> d!366104 (= (contains!2166 lt!426530 (apply!2860 lt!426531 0)) lt!426566)))

(declare-fun b!1296798 () Bool)

(declare-fun e!831327 () Bool)

(assert (=> b!1296798 (= e!831328 e!831327)))

(declare-fun res!580668 () Bool)

(assert (=> b!1296798 (=> res!580668 e!831327)))

(assert (=> b!1296798 (= res!580668 (= (h!18353 lt!426530) (apply!2860 lt!426531 0)))))

(declare-fun b!1296799 () Bool)

(assert (=> b!1296799 (= e!831327 (contains!2166 (t!117407 lt!426530) (apply!2860 lt!426531 0)))))

(assert (= (and d!366104 res!580667) b!1296798))

(assert (= (and b!1296798 (not res!580668)) b!1296799))

(declare-fun m!1448227 () Bool)

(assert (=> d!366104 m!1448227))

(assert (=> d!366104 m!1448069))

(declare-fun m!1448229 () Bool)

(assert (=> d!366104 m!1448229))

(assert (=> b!1296799 m!1448069))

(declare-fun m!1448231 () Bool)

(assert (=> b!1296799 m!1448231))

(assert (=> b!1296677 d!366104))

(declare-fun d!366106 () Bool)

(declare-fun lt!426569 () C!7378)

(declare-fun apply!2863 (List!13018 Int) C!7378)

(assert (=> d!366106 (= lt!426569 (apply!2863 (list!4848 lt!426531) 0))))

(declare-fun apply!2864 (Conc!4254 Int) C!7378)

(assert (=> d!366106 (= lt!426569 (apply!2864 (c!213555 lt!426531) 0))))

(declare-fun e!831331 () Bool)

(assert (=> d!366106 e!831331))

(declare-fun res!580671 () Bool)

(assert (=> d!366106 (=> (not res!580671) (not e!831331))))

(assert (=> d!366106 (= res!580671 (<= 0 0))))

(assert (=> d!366106 (= (apply!2860 lt!426531 0) lt!426569)))

(declare-fun b!1296802 () Bool)

(assert (=> b!1296802 (= e!831331 (< 0 (size!10587 lt!426531)))))

(assert (= (and d!366106 res!580671) b!1296802))

(assert (=> d!366106 m!1448085))

(assert (=> d!366106 m!1448085))

(declare-fun m!1448233 () Bool)

(assert (=> d!366106 m!1448233))

(declare-fun m!1448235 () Bool)

(assert (=> d!366106 m!1448235))

(assert (=> b!1296802 m!1448107))

(assert (=> b!1296677 d!366106))

(declare-fun d!366108 () Bool)

(declare-fun lt!426572 () Int)

(declare-fun size!10591 (List!13018) Int)

(assert (=> d!366108 (= lt!426572 (size!10591 (list!4848 lt!426529)))))

(declare-fun size!10592 (Conc!4254) Int)

(assert (=> d!366108 (= lt!426572 (size!10592 (c!213555 lt!426529)))))

(assert (=> d!366108 (= (size!10587 lt!426529) lt!426572)))

(declare-fun bs!328994 () Bool)

(assert (= bs!328994 d!366108))

(declare-fun m!1448237 () Bool)

(assert (=> bs!328994 m!1448237))

(assert (=> bs!328994 m!1448237))

(declare-fun m!1448239 () Bool)

(assert (=> bs!328994 m!1448239))

(declare-fun m!1448241 () Bool)

(assert (=> bs!328994 m!1448241))

(assert (=> b!1296687 d!366108))

(declare-fun d!366110 () Bool)

(declare-fun lt!426575 () BalanceConc!8448)

(assert (=> d!366110 (= (list!4848 lt!426575) (originalCharacters!3092 t2!34))))

(declare-fun dynLambda!5673 (Int TokenValue!2320) BalanceConc!8448)

(assert (=> d!366110 (= lt!426575 (dynLambda!5673 (toChars!3296 (transformation!2230 (rule!3969 t2!34))) (value!73189 t2!34)))))

(assert (=> d!366110 (= (charsOf!1202 t2!34) lt!426575)))

(declare-fun b_lambda!37103 () Bool)

(assert (=> (not b_lambda!37103) (not d!366110)))

(declare-fun tb!69473 () Bool)

(declare-fun t!117414 () Bool)

(assert (=> (and b!1296688 (= (toChars!3296 (transformation!2230 (h!18354 rules!2550))) (toChars!3296 (transformation!2230 (rule!3969 t2!34)))) t!117414) tb!69473))

(declare-fun b!1296807 () Bool)

(declare-fun e!831334 () Bool)

(declare-fun tp!378317 () Bool)

(declare-fun inv!17383 (Conc!4254) Bool)

(assert (=> b!1296807 (= e!831334 (and (inv!17383 (c!213555 (dynLambda!5673 (toChars!3296 (transformation!2230 (rule!3969 t2!34))) (value!73189 t2!34)))) tp!378317))))

(declare-fun result!84226 () Bool)

(declare-fun inv!17384 (BalanceConc!8448) Bool)

(assert (=> tb!69473 (= result!84226 (and (inv!17384 (dynLambda!5673 (toChars!3296 (transformation!2230 (rule!3969 t2!34))) (value!73189 t2!34))) e!831334))))

(assert (= tb!69473 b!1296807))

(declare-fun m!1448243 () Bool)

(assert (=> b!1296807 m!1448243))

(declare-fun m!1448245 () Bool)

(assert (=> tb!69473 m!1448245))

(assert (=> d!366110 t!117414))

(declare-fun b_and!86347 () Bool)

(assert (= b_and!86325 (and (=> t!117414 result!84226) b_and!86347)))

(declare-fun t!117416 () Bool)

(declare-fun tb!69475 () Bool)

(assert (=> (and b!1296685 (= (toChars!3296 (transformation!2230 (rule!3969 t1!34))) (toChars!3296 (transformation!2230 (rule!3969 t2!34)))) t!117416) tb!69475))

(declare-fun result!84230 () Bool)

(assert (= result!84230 result!84226))

(assert (=> d!366110 t!117416))

(declare-fun b_and!86349 () Bool)

(assert (= b_and!86329 (and (=> t!117416 result!84230) b_and!86349)))

(declare-fun t!117418 () Bool)

(declare-fun tb!69477 () Bool)

(assert (=> (and b!1296689 (= (toChars!3296 (transformation!2230 (rule!3969 t2!34))) (toChars!3296 (transformation!2230 (rule!3969 t2!34)))) t!117418) tb!69477))

(declare-fun result!84232 () Bool)

(assert (= result!84232 result!84226))

(assert (=> d!366110 t!117418))

(declare-fun b_and!86351 () Bool)

(assert (= b_and!86333 (and (=> t!117418 result!84232) b_and!86351)))

(declare-fun m!1448247 () Bool)

(assert (=> d!366110 m!1448247))

(declare-fun m!1448249 () Bool)

(assert (=> d!366110 m!1448249))

(assert (=> b!1296687 d!366110))

(declare-fun b!1296818 () Bool)

(declare-fun e!831343 () Bool)

(declare-fun inv!16 (TokenValue!2320) Bool)

(assert (=> b!1296818 (= e!831343 (inv!16 (value!73189 t1!34)))))

(declare-fun b!1296819 () Bool)

(declare-fun e!831341 () Bool)

(declare-fun inv!17 (TokenValue!2320) Bool)

(assert (=> b!1296819 (= e!831341 (inv!17 (value!73189 t1!34)))))

(declare-fun b!1296820 () Bool)

(declare-fun res!580674 () Bool)

(declare-fun e!831342 () Bool)

(assert (=> b!1296820 (=> res!580674 e!831342)))

(assert (=> b!1296820 (= res!580674 (not (is-IntegerValue!6962 (value!73189 t1!34))))))

(assert (=> b!1296820 (= e!831341 e!831342)))

(declare-fun d!366112 () Bool)

(declare-fun c!213563 () Bool)

(assert (=> d!366112 (= c!213563 (is-IntegerValue!6960 (value!73189 t1!34)))))

(assert (=> d!366112 (= (inv!21 (value!73189 t1!34)) e!831343)))

(declare-fun b!1296821 () Bool)

(assert (=> b!1296821 (= e!831343 e!831341)))

(declare-fun c!213564 () Bool)

(assert (=> b!1296821 (= c!213564 (is-IntegerValue!6961 (value!73189 t1!34)))))

(declare-fun b!1296822 () Bool)

(declare-fun inv!15 (TokenValue!2320) Bool)

(assert (=> b!1296822 (= e!831342 (inv!15 (value!73189 t1!34)))))

(assert (= (and d!366112 c!213563) b!1296818))

(assert (= (and d!366112 (not c!213563)) b!1296821))

(assert (= (and b!1296821 c!213564) b!1296819))

(assert (= (and b!1296821 (not c!213564)) b!1296820))

(assert (= (and b!1296820 (not res!580674)) b!1296822))

(declare-fun m!1448251 () Bool)

(assert (=> b!1296818 m!1448251))

(declare-fun m!1448253 () Bool)

(assert (=> b!1296819 m!1448253))

(declare-fun m!1448255 () Bool)

(assert (=> b!1296822 m!1448255))

(assert (=> b!1296676 d!366112))

(declare-fun d!366114 () Bool)

(assert (=> d!366114 (= (isEmpty!7700 rules!2550) (is-Nil!12953 rules!2550))))

(assert (=> b!1296691 d!366114))

(declare-fun lt!426578 () List!13018)

(declare-fun b!1296834 () Bool)

(declare-fun e!831348 () Bool)

(assert (=> b!1296834 (= e!831348 (or (not (= (getSuffix!400 lt!426534 lt!426530) Nil!12952)) (= lt!426578 lt!426530)))))

(declare-fun b!1296831 () Bool)

(declare-fun e!831349 () List!13018)

(assert (=> b!1296831 (= e!831349 (getSuffix!400 lt!426534 lt!426530))))

(declare-fun b!1296833 () Bool)

(declare-fun res!580680 () Bool)

(assert (=> b!1296833 (=> (not res!580680) (not e!831348))))

(assert (=> b!1296833 (= res!580680 (= (size!10591 lt!426578) (+ (size!10591 lt!426530) (size!10591 (getSuffix!400 lt!426534 lt!426530)))))))

(declare-fun b!1296832 () Bool)

(assert (=> b!1296832 (= e!831349 (Cons!12952 (h!18353 lt!426530) (++!3289 (t!117407 lt!426530) (getSuffix!400 lt!426534 lt!426530))))))

(declare-fun d!366116 () Bool)

(assert (=> d!366116 e!831348))

(declare-fun res!580679 () Bool)

(assert (=> d!366116 (=> (not res!580679) (not e!831348))))

(assert (=> d!366116 (= res!580679 (= (content!1834 lt!426578) (set.union (content!1834 lt!426530) (content!1834 (getSuffix!400 lt!426534 lt!426530)))))))

(assert (=> d!366116 (= lt!426578 e!831349)))

(declare-fun c!213567 () Bool)

(assert (=> d!366116 (= c!213567 (is-Nil!12952 lt!426530))))

(assert (=> d!366116 (= (++!3289 lt!426530 (getSuffix!400 lt!426534 lt!426530)) lt!426578)))

(assert (= (and d!366116 c!213567) b!1296831))

(assert (= (and d!366116 (not c!213567)) b!1296832))

(assert (= (and d!366116 res!580679) b!1296833))

(assert (= (and b!1296833 res!580680) b!1296834))

(declare-fun m!1448257 () Bool)

(assert (=> b!1296833 m!1448257))

(declare-fun m!1448259 () Bool)

(assert (=> b!1296833 m!1448259))

(assert (=> b!1296833 m!1448063))

(declare-fun m!1448261 () Bool)

(assert (=> b!1296833 m!1448261))

(assert (=> b!1296832 m!1448063))

(declare-fun m!1448263 () Bool)

(assert (=> b!1296832 m!1448263))

(declare-fun m!1448265 () Bool)

(assert (=> d!366116 m!1448265))

(assert (=> d!366116 m!1448227))

(assert (=> d!366116 m!1448063))

(declare-fun m!1448267 () Bool)

(assert (=> d!366116 m!1448267))

(assert (=> b!1296680 d!366116))

(declare-fun d!366118 () Bool)

(declare-fun lt!426581 () List!13018)

(assert (=> d!366118 (= (++!3289 lt!426530 lt!426581) lt!426534)))

(declare-fun e!831352 () List!13018)

(assert (=> d!366118 (= lt!426581 e!831352)))

(declare-fun c!213570 () Bool)

(assert (=> d!366118 (= c!213570 (is-Cons!12952 lt!426530))))

(assert (=> d!366118 (>= (size!10591 lt!426534) (size!10591 lt!426530))))

(assert (=> d!366118 (= (getSuffix!400 lt!426534 lt!426530) lt!426581)))

(declare-fun b!1296839 () Bool)

(declare-fun tail!1853 (List!13018) List!13018)

(assert (=> b!1296839 (= e!831352 (getSuffix!400 (tail!1853 lt!426534) (t!117407 lt!426530)))))

(declare-fun b!1296840 () Bool)

(assert (=> b!1296840 (= e!831352 lt!426534)))

(assert (= (and d!366118 c!213570) b!1296839))

(assert (= (and d!366118 (not c!213570)) b!1296840))

(declare-fun m!1448269 () Bool)

(assert (=> d!366118 m!1448269))

(declare-fun m!1448271 () Bool)

(assert (=> d!366118 m!1448271))

(assert (=> d!366118 m!1448259))

(declare-fun m!1448273 () Bool)

(assert (=> b!1296839 m!1448273))

(assert (=> b!1296839 m!1448273))

(declare-fun m!1448275 () Bool)

(assert (=> b!1296839 m!1448275))

(assert (=> b!1296680 d!366118))

(declare-fun d!366120 () Bool)

(declare-fun lt!426584 () List!13018)

(declare-fun dynLambda!5674 (Int List!13018) Bool)

(assert (=> d!366120 (dynLambda!5674 lambda!50948 lt!426584)))

(declare-fun choose!7961 (Int) List!13018)

(assert (=> d!366120 (= lt!426584 (choose!7961 lambda!50948))))

(assert (=> d!366120 (Exists!702 lambda!50948)))

(assert (=> d!366120 (= (pickWitness!7 lambda!50948) lt!426584)))

(declare-fun b_lambda!37105 () Bool)

(assert (=> (not b_lambda!37105) (not d!366120)))

(declare-fun bs!328995 () Bool)

(assert (= bs!328995 d!366120))

(declare-fun m!1448277 () Bool)

(assert (=> bs!328995 m!1448277))

(declare-fun m!1448279 () Bool)

(assert (=> bs!328995 m!1448279))

(assert (=> bs!328995 m!1448091))

(assert (=> b!1296680 d!366120))

(declare-fun d!366122 () Bool)

(declare-fun lt!426585 () Int)

(assert (=> d!366122 (= lt!426585 (size!10591 (list!4848 lt!426531)))))

(assert (=> d!366122 (= lt!426585 (size!10592 (c!213555 lt!426531)))))

(assert (=> d!366122 (= (size!10587 lt!426531) lt!426585)))

(declare-fun bs!328996 () Bool)

(assert (= bs!328996 d!366122))

(assert (=> bs!328996 m!1448085))

(assert (=> bs!328996 m!1448085))

(declare-fun m!1448281 () Bool)

(assert (=> bs!328996 m!1448281))

(declare-fun m!1448283 () Bool)

(assert (=> bs!328996 m!1448283))

(assert (=> b!1296679 d!366122))

(declare-fun d!366124 () Bool)

(assert (=> d!366124 (= (inv!17376 (tag!2492 (h!18354 rules!2550))) (= (mod (str.len (value!73188 (tag!2492 (h!18354 rules!2550)))) 2) 0))))

(assert (=> b!1296683 d!366124))

(declare-fun d!366126 () Bool)

(declare-fun res!580681 () Bool)

(declare-fun e!831353 () Bool)

(assert (=> d!366126 (=> (not res!580681) (not e!831353))))

(assert (=> d!366126 (= res!580681 (semiInverseModEq!849 (toChars!3296 (transformation!2230 (h!18354 rules!2550))) (toValue!3437 (transformation!2230 (h!18354 rules!2550)))))))

(assert (=> d!366126 (= (inv!17380 (transformation!2230 (h!18354 rules!2550))) e!831353)))

(declare-fun b!1296841 () Bool)

(assert (=> b!1296841 (= e!831353 (equivClasses!808 (toChars!3296 (transformation!2230 (h!18354 rules!2550))) (toValue!3437 (transformation!2230 (h!18354 rules!2550)))))))

(assert (= (and d!366126 res!580681) b!1296841))

(declare-fun m!1448285 () Bool)

(assert (=> d!366126 m!1448285))

(declare-fun m!1448287 () Bool)

(assert (=> b!1296841 m!1448287))

(assert (=> b!1296683 d!366126))

(declare-fun d!366128 () Bool)

(declare-fun prefixMatchZipperSequence!149 (Regex!3544 BalanceConc!8448) Bool)

(declare-fun ++!3291 (BalanceConc!8448 BalanceConc!8448) BalanceConc!8448)

(declare-fun singletonSeq!816 (C!7378) BalanceConc!8448)

(assert (=> d!366128 (= (separableTokensPredicate!208 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!149 (rulesRegex!115 thiss!19762 rules!2550) (++!3291 (charsOf!1202 t1!34) (singletonSeq!816 (apply!2860 (charsOf!1202 t2!34) 0))))))))

(declare-fun bs!328997 () Bool)

(assert (= bs!328997 d!366128))

(assert (=> bs!328997 m!1448079))

(declare-fun m!1448289 () Bool)

(assert (=> bs!328997 m!1448289))

(declare-fun m!1448291 () Bool)

(assert (=> bs!328997 m!1448291))

(assert (=> bs!328997 m!1448079))

(assert (=> bs!328997 m!1448059))

(declare-fun m!1448293 () Bool)

(assert (=> bs!328997 m!1448293))

(assert (=> bs!328997 m!1448087))

(assert (=> bs!328997 m!1448059))

(assert (=> bs!328997 m!1448087))

(assert (=> bs!328997 m!1448291))

(declare-fun m!1448295 () Bool)

(assert (=> bs!328997 m!1448295))

(assert (=> bs!328997 m!1448293))

(assert (=> bs!328997 m!1448289))

(assert (=> b!1296672 d!366128))

(declare-fun d!366130 () Bool)

(declare-fun res!580692 () Bool)

(declare-fun e!831360 () Bool)

(assert (=> d!366130 (=> (not res!580692) (not e!831360))))

(declare-fun isEmpty!7703 (List!13018) Bool)

(assert (=> d!366130 (= res!580692 (not (isEmpty!7703 (originalCharacters!3092 t1!34))))))

(assert (=> d!366130 (= (inv!17379 t1!34) e!831360)))

(declare-fun b!1296852 () Bool)

(declare-fun res!580693 () Bool)

(assert (=> b!1296852 (=> (not res!580693) (not e!831360))))

(assert (=> b!1296852 (= res!580693 (= (originalCharacters!3092 t1!34) (list!4848 (dynLambda!5673 (toChars!3296 (transformation!2230 (rule!3969 t1!34))) (value!73189 t1!34)))))))

(declare-fun b!1296853 () Bool)

(assert (=> b!1296853 (= e!831360 (= (size!10586 t1!34) (size!10591 (originalCharacters!3092 t1!34))))))

(assert (= (and d!366130 res!580692) b!1296852))

(assert (= (and b!1296852 res!580693) b!1296853))

(declare-fun b_lambda!37107 () Bool)

(assert (=> (not b_lambda!37107) (not b!1296852)))

(declare-fun tb!69479 () Bool)

(declare-fun t!117421 () Bool)

(assert (=> (and b!1296688 (= (toChars!3296 (transformation!2230 (h!18354 rules!2550))) (toChars!3296 (transformation!2230 (rule!3969 t1!34)))) t!117421) tb!69479))

(declare-fun b!1296854 () Bool)

(declare-fun e!831361 () Bool)

(declare-fun tp!378318 () Bool)

(assert (=> b!1296854 (= e!831361 (and (inv!17383 (c!213555 (dynLambda!5673 (toChars!3296 (transformation!2230 (rule!3969 t1!34))) (value!73189 t1!34)))) tp!378318))))

(declare-fun result!84234 () Bool)

(assert (=> tb!69479 (= result!84234 (and (inv!17384 (dynLambda!5673 (toChars!3296 (transformation!2230 (rule!3969 t1!34))) (value!73189 t1!34))) e!831361))))

(assert (= tb!69479 b!1296854))

(declare-fun m!1448297 () Bool)

(assert (=> b!1296854 m!1448297))

(declare-fun m!1448299 () Bool)

(assert (=> tb!69479 m!1448299))

(assert (=> b!1296852 t!117421))

(declare-fun b_and!86353 () Bool)

(assert (= b_and!86347 (and (=> t!117421 result!84234) b_and!86353)))

(declare-fun t!117423 () Bool)

(declare-fun tb!69481 () Bool)

(assert (=> (and b!1296685 (= (toChars!3296 (transformation!2230 (rule!3969 t1!34))) (toChars!3296 (transformation!2230 (rule!3969 t1!34)))) t!117423) tb!69481))

(declare-fun result!84236 () Bool)

(assert (= result!84236 result!84234))

(assert (=> b!1296852 t!117423))

(declare-fun b_and!86355 () Bool)

(assert (= b_and!86349 (and (=> t!117423 result!84236) b_and!86355)))

(declare-fun t!117425 () Bool)

(declare-fun tb!69483 () Bool)

(assert (=> (and b!1296689 (= (toChars!3296 (transformation!2230 (rule!3969 t2!34))) (toChars!3296 (transformation!2230 (rule!3969 t1!34)))) t!117425) tb!69483))

(declare-fun result!84238 () Bool)

(assert (= result!84238 result!84234))

(assert (=> b!1296852 t!117425))

(declare-fun b_and!86357 () Bool)

(assert (= b_and!86351 (and (=> t!117425 result!84238) b_and!86357)))

(declare-fun m!1448301 () Bool)

(assert (=> d!366130 m!1448301))

(declare-fun m!1448303 () Bool)

(assert (=> b!1296852 m!1448303))

(assert (=> b!1296852 m!1448303))

(declare-fun m!1448305 () Bool)

(assert (=> b!1296852 m!1448305))

(declare-fun m!1448307 () Bool)

(assert (=> b!1296853 m!1448307))

(assert (=> start!114284 d!366130))

(declare-fun d!366132 () Bool)

(declare-fun res!580694 () Bool)

(declare-fun e!831362 () Bool)

(assert (=> d!366132 (=> (not res!580694) (not e!831362))))

(assert (=> d!366132 (= res!580694 (not (isEmpty!7703 (originalCharacters!3092 t2!34))))))

(assert (=> d!366132 (= (inv!17379 t2!34) e!831362)))

(declare-fun b!1296855 () Bool)

(declare-fun res!580695 () Bool)

(assert (=> b!1296855 (=> (not res!580695) (not e!831362))))

(assert (=> b!1296855 (= res!580695 (= (originalCharacters!3092 t2!34) (list!4848 (dynLambda!5673 (toChars!3296 (transformation!2230 (rule!3969 t2!34))) (value!73189 t2!34)))))))

(declare-fun b!1296856 () Bool)

(assert (=> b!1296856 (= e!831362 (= (size!10586 t2!34) (size!10591 (originalCharacters!3092 t2!34))))))

(assert (= (and d!366132 res!580694) b!1296855))

(assert (= (and b!1296855 res!580695) b!1296856))

(declare-fun b_lambda!37109 () Bool)

(assert (=> (not b_lambda!37109) (not b!1296855)))

(assert (=> b!1296855 t!117414))

(declare-fun b_and!86359 () Bool)

(assert (= b_and!86353 (and (=> t!117414 result!84226) b_and!86359)))

(assert (=> b!1296855 t!117416))

(declare-fun b_and!86361 () Bool)

(assert (= b_and!86355 (and (=> t!117416 result!84230) b_and!86361)))

(assert (=> b!1296855 t!117418))

(declare-fun b_and!86363 () Bool)

(assert (= b_and!86357 (and (=> t!117418 result!84232) b_and!86363)))

(declare-fun m!1448309 () Bool)

(assert (=> d!366132 m!1448309))

(assert (=> b!1296855 m!1448249))

(assert (=> b!1296855 m!1448249))

(declare-fun m!1448311 () Bool)

(assert (=> b!1296855 m!1448311))

(declare-fun m!1448313 () Bool)

(assert (=> b!1296856 m!1448313))

(assert (=> start!114284 d!366132))

(declare-fun b!1296860 () Bool)

(declare-fun e!831363 () Bool)

(declare-fun lt!426590 () List!13018)

(assert (=> b!1296860 (= e!831363 (or (not (= (Cons!12952 (apply!2860 lt!426529 0) Nil!12952) Nil!12952)) (= lt!426590 (list!4848 lt!426531))))))

(declare-fun b!1296857 () Bool)

(declare-fun e!831364 () List!13018)

(assert (=> b!1296857 (= e!831364 (Cons!12952 (apply!2860 lt!426529 0) Nil!12952))))

(declare-fun b!1296859 () Bool)

(declare-fun res!580697 () Bool)

(assert (=> b!1296859 (=> (not res!580697) (not e!831363))))

(assert (=> b!1296859 (= res!580697 (= (size!10591 lt!426590) (+ (size!10591 (list!4848 lt!426531)) (size!10591 (Cons!12952 (apply!2860 lt!426529 0) Nil!12952)))))))

(declare-fun b!1296858 () Bool)

(assert (=> b!1296858 (= e!831364 (Cons!12952 (h!18353 (list!4848 lt!426531)) (++!3289 (t!117407 (list!4848 lt!426531)) (Cons!12952 (apply!2860 lt!426529 0) Nil!12952))))))

(declare-fun d!366134 () Bool)

(assert (=> d!366134 e!831363))

(declare-fun res!580696 () Bool)

(assert (=> d!366134 (=> (not res!580696) (not e!831363))))

(assert (=> d!366134 (= res!580696 (= (content!1834 lt!426590) (set.union (content!1834 (list!4848 lt!426531)) (content!1834 (Cons!12952 (apply!2860 lt!426529 0) Nil!12952)))))))

(assert (=> d!366134 (= lt!426590 e!831364)))

(declare-fun c!213571 () Bool)

(assert (=> d!366134 (= c!213571 (is-Nil!12952 (list!4848 lt!426531)))))

(assert (=> d!366134 (= (++!3289 (list!4848 lt!426531) (Cons!12952 (apply!2860 lt!426529 0) Nil!12952)) lt!426590)))

(assert (= (and d!366134 c!213571) b!1296857))

(assert (= (and d!366134 (not c!213571)) b!1296858))

(assert (= (and d!366134 res!580696) b!1296859))

(assert (= (and b!1296859 res!580697) b!1296860))

(declare-fun m!1448315 () Bool)

(assert (=> b!1296859 m!1448315))

(assert (=> b!1296859 m!1448085))

(assert (=> b!1296859 m!1448281))

(declare-fun m!1448317 () Bool)

(assert (=> b!1296859 m!1448317))

(declare-fun m!1448319 () Bool)

(assert (=> b!1296858 m!1448319))

(declare-fun m!1448321 () Bool)

(assert (=> d!366134 m!1448321))

(assert (=> d!366134 m!1448085))

(declare-fun m!1448323 () Bool)

(assert (=> d!366134 m!1448323))

(declare-fun m!1448325 () Bool)

(assert (=> d!366134 m!1448325))

(assert (=> b!1296693 d!366134))

(declare-fun d!366136 () Bool)

(declare-fun list!4852 (Conc!4254) List!13018)

(assert (=> d!366136 (= (list!4848 lt!426531) (list!4852 (c!213555 lt!426531)))))

(declare-fun bs!328998 () Bool)

(assert (= bs!328998 d!366136))

(declare-fun m!1448327 () Bool)

(assert (=> bs!328998 m!1448327))

(assert (=> b!1296693 d!366136))

(declare-fun d!366138 () Bool)

(declare-fun lt!426593 () C!7378)

(assert (=> d!366138 (= lt!426593 (apply!2863 (list!4848 lt!426529) 0))))

(assert (=> d!366138 (= lt!426593 (apply!2864 (c!213555 lt!426529) 0))))

(declare-fun e!831367 () Bool)

(assert (=> d!366138 e!831367))

(declare-fun res!580701 () Bool)

(assert (=> d!366138 (=> (not res!580701) (not e!831367))))

(assert (=> d!366138 (= res!580701 (<= 0 0))))

(assert (=> d!366138 (= (apply!2860 lt!426529 0) lt!426593)))

(declare-fun b!1296864 () Bool)

(assert (=> b!1296864 (= e!831367 (< 0 (size!10587 lt!426529)))))

(assert (= (and d!366138 res!580701) b!1296864))

(assert (=> d!366138 m!1448237))

(assert (=> d!366138 m!1448237))

(declare-fun m!1448337 () Bool)

(assert (=> d!366138 m!1448337))

(declare-fun m!1448341 () Bool)

(assert (=> d!366138 m!1448341))

(assert (=> b!1296864 m!1448057))

(assert (=> b!1296693 d!366138))

(declare-fun d!366140 () Bool)

(declare-fun c!213576 () Bool)

(assert (=> d!366140 (= c!213576 (isEmpty!7703 lt!426530))))

(declare-fun e!831374 () Bool)

(assert (=> d!366140 (= (prefixMatch!57 lt!426532 lt!426530) e!831374)))

(declare-fun b!1296877 () Bool)

(declare-fun lostCause!257 (Regex!3544) Bool)

(assert (=> b!1296877 (= e!831374 (not (lostCause!257 lt!426532)))))

(declare-fun b!1296878 () Bool)

(declare-fun derivativeStep!880 (Regex!3544 C!7378) Regex!3544)

(declare-fun head!2225 (List!13018) C!7378)

(assert (=> b!1296878 (= e!831374 (prefixMatch!57 (derivativeStep!880 lt!426532 (head!2225 lt!426530)) (tail!1853 lt!426530)))))

(assert (= (and d!366140 c!213576) b!1296877))

(assert (= (and d!366140 (not c!213576)) b!1296878))

(declare-fun m!1448351 () Bool)

(assert (=> d!366140 m!1448351))

(declare-fun m!1448353 () Bool)

(assert (=> b!1296877 m!1448353))

(declare-fun m!1448355 () Bool)

(assert (=> b!1296878 m!1448355))

(assert (=> b!1296878 m!1448355))

(declare-fun m!1448357 () Bool)

(assert (=> b!1296878 m!1448357))

(declare-fun m!1448359 () Bool)

(assert (=> b!1296878 m!1448359))

(assert (=> b!1296878 m!1448357))

(assert (=> b!1296878 m!1448359))

(declare-fun m!1448361 () Bool)

(assert (=> b!1296878 m!1448361))

(assert (=> b!1296693 d!366140))

(declare-fun d!366144 () Bool)

(declare-fun lt!426596 () BalanceConc!8448)

(assert (=> d!366144 (= (list!4848 lt!426596) (originalCharacters!3092 t1!34))))

(assert (=> d!366144 (= lt!426596 (dynLambda!5673 (toChars!3296 (transformation!2230 (rule!3969 t1!34))) (value!73189 t1!34)))))

(assert (=> d!366144 (= (charsOf!1202 t1!34) lt!426596)))

(declare-fun b_lambda!37111 () Bool)

(assert (=> (not b_lambda!37111) (not d!366144)))

(assert (=> d!366144 t!117421))

(declare-fun b_and!86365 () Bool)

(assert (= b_and!86359 (and (=> t!117421 result!84234) b_and!86365)))

(assert (=> d!366144 t!117423))

(declare-fun b_and!86367 () Bool)

(assert (= b_and!86361 (and (=> t!117423 result!84236) b_and!86367)))

(assert (=> d!366144 t!117425))

(declare-fun b_and!86369 () Bool)

(assert (= b_and!86363 (and (=> t!117425 result!84238) b_and!86369)))

(declare-fun m!1448363 () Bool)

(assert (=> d!366144 m!1448363))

(assert (=> d!366144 m!1448303))

(assert (=> b!1296693 d!366144))

(declare-fun d!366146 () Bool)

(declare-fun lt!426600 () Unit!19103)

(declare-fun lemma!51 (List!13019 LexerInterface!1925 List!13019) Unit!19103)

(assert (=> d!366146 (= lt!426600 (lemma!51 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!50961 () Int)

(declare-datatypes ((List!13026 0))(
  ( (Nil!12960) (Cons!12960 (h!18361 Regex!3544) (t!117449 List!13026)) )
))
(declare-fun generalisedUnion!55 (List!13026) Regex!3544)

(declare-fun map!2820 (List!13019 Int) List!13026)

(assert (=> d!366146 (= (rulesRegex!115 thiss!19762 rules!2550) (generalisedUnion!55 (map!2820 rules!2550 lambda!50961)))))

(declare-fun bs!328999 () Bool)

(assert (= bs!328999 d!366146))

(declare-fun m!1448379 () Bool)

(assert (=> bs!328999 m!1448379))

(declare-fun m!1448381 () Bool)

(assert (=> bs!328999 m!1448381))

(assert (=> bs!328999 m!1448381))

(declare-fun m!1448383 () Bool)

(assert (=> bs!328999 m!1448383))

(assert (=> b!1296693 d!366146))

(declare-fun d!366150 () Bool)

(declare-fun res!580712 () Bool)

(declare-fun e!831384 () Bool)

(assert (=> d!366150 (=> res!580712 e!831384)))

(assert (=> d!366150 (= res!580712 (not (is-Cons!12953 rules!2550)))))

(assert (=> d!366150 (= (sepAndNonSepRulesDisjointChars!603 rules!2550 rules!2550) e!831384)))

(declare-fun b!1296893 () Bool)

(declare-fun e!831385 () Bool)

(assert (=> b!1296893 (= e!831384 e!831385)))

(declare-fun res!580713 () Bool)

(assert (=> b!1296893 (=> (not res!580713) (not e!831385))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!293 (Rule!4260 List!13019) Bool)

(assert (=> b!1296893 (= res!580713 (ruleDisjointCharsFromAllFromOtherType!293 (h!18354 rules!2550) rules!2550))))

(declare-fun b!1296894 () Bool)

(assert (=> b!1296894 (= e!831385 (sepAndNonSepRulesDisjointChars!603 rules!2550 (t!117408 rules!2550)))))

(assert (= (and d!366150 (not res!580712)) b!1296893))

(assert (= (and b!1296893 res!580713) b!1296894))

(declare-fun m!1448393 () Bool)

(assert (=> b!1296893 m!1448393))

(declare-fun m!1448395 () Bool)

(assert (=> b!1296894 m!1448395))

(assert (=> b!1296682 d!366150))

(declare-fun b!1296895 () Bool)

(declare-fun e!831388 () Bool)

(assert (=> b!1296895 (= e!831388 (inv!16 (value!73189 t2!34)))))

(declare-fun b!1296896 () Bool)

(declare-fun e!831386 () Bool)

(assert (=> b!1296896 (= e!831386 (inv!17 (value!73189 t2!34)))))

(declare-fun b!1296897 () Bool)

(declare-fun res!580714 () Bool)

(declare-fun e!831387 () Bool)

(assert (=> b!1296897 (=> res!580714 e!831387)))

(assert (=> b!1296897 (= res!580714 (not (is-IntegerValue!6962 (value!73189 t2!34))))))

(assert (=> b!1296897 (= e!831386 e!831387)))

(declare-fun d!366154 () Bool)

(declare-fun c!213581 () Bool)

(assert (=> d!366154 (= c!213581 (is-IntegerValue!6960 (value!73189 t2!34)))))

(assert (=> d!366154 (= (inv!21 (value!73189 t2!34)) e!831388)))

(declare-fun b!1296898 () Bool)

(assert (=> b!1296898 (= e!831388 e!831386)))

(declare-fun c!213582 () Bool)

(assert (=> b!1296898 (= c!213582 (is-IntegerValue!6961 (value!73189 t2!34)))))

(declare-fun b!1296899 () Bool)

(assert (=> b!1296899 (= e!831387 (inv!15 (value!73189 t2!34)))))

(assert (= (and d!366154 c!213581) b!1296895))

(assert (= (and d!366154 (not c!213581)) b!1296898))

(assert (= (and b!1296898 c!213582) b!1296896))

(assert (= (and b!1296898 (not c!213582)) b!1296897))

(assert (= (and b!1296897 (not res!580714)) b!1296899))

(declare-fun m!1448401 () Bool)

(assert (=> b!1296895 m!1448401))

(declare-fun m!1448403 () Bool)

(assert (=> b!1296896 m!1448403))

(declare-fun m!1448405 () Bool)

(assert (=> b!1296899 m!1448405))

(assert (=> b!1296692 d!366154))

(declare-fun d!366158 () Bool)

(assert (=> d!366158 (= (inv!17376 (tag!2492 (rule!3969 t2!34))) (= (mod (str.len (value!73188 (tag!2492 (rule!3969 t2!34)))) 2) 0))))

(assert (=> b!1296681 d!366158))

(declare-fun d!366160 () Bool)

(declare-fun res!580715 () Bool)

(declare-fun e!831389 () Bool)

(assert (=> d!366160 (=> (not res!580715) (not e!831389))))

(assert (=> d!366160 (= res!580715 (semiInverseModEq!849 (toChars!3296 (transformation!2230 (rule!3969 t2!34))) (toValue!3437 (transformation!2230 (rule!3969 t2!34)))))))

(assert (=> d!366160 (= (inv!17380 (transformation!2230 (rule!3969 t2!34))) e!831389)))

(declare-fun b!1296900 () Bool)

(assert (=> b!1296900 (= e!831389 (equivClasses!808 (toChars!3296 (transformation!2230 (rule!3969 t2!34))) (toValue!3437 (transformation!2230 (rule!3969 t2!34)))))))

(assert (= (and d!366160 res!580715) b!1296900))

(declare-fun m!1448407 () Bool)

(assert (=> d!366160 m!1448407))

(declare-fun m!1448409 () Bool)

(assert (=> b!1296900 m!1448409))

(assert (=> b!1296681 d!366160))

(declare-fun b!1296911 () Bool)

(declare-fun b_free!30687 () Bool)

(declare-fun b_next!31391 () Bool)

(assert (=> b!1296911 (= b_free!30687 (not b_next!31391))))

(declare-fun tp!378327 () Bool)

(declare-fun b_and!86371 () Bool)

(assert (=> b!1296911 (= tp!378327 b_and!86371)))

(declare-fun b_free!30689 () Bool)

(declare-fun b_next!31393 () Bool)

(assert (=> b!1296911 (= b_free!30689 (not b_next!31393))))

(declare-fun tb!69485 () Bool)

(declare-fun t!117427 () Bool)

(assert (=> (and b!1296911 (= (toChars!3296 (transformation!2230 (h!18354 (t!117408 rules!2550)))) (toChars!3296 (transformation!2230 (rule!3969 t2!34)))) t!117427) tb!69485))

(declare-fun result!84242 () Bool)

(assert (= result!84242 result!84226))

(assert (=> d!366110 t!117427))

(declare-fun t!117429 () Bool)

(declare-fun tb!69487 () Bool)

(assert (=> (and b!1296911 (= (toChars!3296 (transformation!2230 (h!18354 (t!117408 rules!2550)))) (toChars!3296 (transformation!2230 (rule!3969 t1!34)))) t!117429) tb!69487))

(declare-fun result!84244 () Bool)

(assert (= result!84244 result!84234))

(assert (=> b!1296852 t!117429))

(assert (=> b!1296855 t!117427))

(assert (=> d!366144 t!117429))

(declare-fun b_and!86373 () Bool)

(declare-fun tp!378328 () Bool)

(assert (=> b!1296911 (= tp!378328 (and (=> t!117427 result!84242) (=> t!117429 result!84244) b_and!86373))))

(declare-fun e!831398 () Bool)

(assert (=> b!1296911 (= e!831398 (and tp!378327 tp!378328))))

(declare-fun b!1296910 () Bool)

(declare-fun e!831401 () Bool)

(declare-fun tp!378330 () Bool)

(assert (=> b!1296910 (= e!831401 (and tp!378330 (inv!17376 (tag!2492 (h!18354 (t!117408 rules!2550)))) (inv!17380 (transformation!2230 (h!18354 (t!117408 rules!2550)))) e!831398))))

(declare-fun b!1296909 () Bool)

(declare-fun e!831400 () Bool)

(declare-fun tp!378329 () Bool)

(assert (=> b!1296909 (= e!831400 (and e!831401 tp!378329))))

(assert (=> b!1296690 (= tp!378268 e!831400)))

(assert (= b!1296910 b!1296911))

(assert (= b!1296909 b!1296910))

(assert (= (and b!1296690 (is-Cons!12953 (t!117408 rules!2550))) b!1296909))

(declare-fun m!1448415 () Bool)

(assert (=> b!1296910 m!1448415))

(declare-fun m!1448417 () Bool)

(assert (=> b!1296910 m!1448417))

(declare-fun b!1296924 () Bool)

(declare-fun e!831406 () Bool)

(declare-fun tp_is_empty!6581 () Bool)

(assert (=> b!1296924 (= e!831406 tp_is_empty!6581)))

(declare-fun b!1296925 () Bool)

(declare-fun tp!378341 () Bool)

(declare-fun tp!378343 () Bool)

(assert (=> b!1296925 (= e!831406 (and tp!378341 tp!378343))))

(declare-fun b!1296926 () Bool)

(declare-fun tp!378344 () Bool)

(assert (=> b!1296926 (= e!831406 tp!378344)))

(assert (=> b!1296678 (= tp!378273 e!831406)))

(declare-fun b!1296927 () Bool)

(declare-fun tp!378345 () Bool)

(declare-fun tp!378342 () Bool)

(assert (=> b!1296927 (= e!831406 (and tp!378345 tp!378342))))

(assert (= (and b!1296678 (is-ElementMatch!3544 (regex!2230 (rule!3969 t1!34)))) b!1296924))

(assert (= (and b!1296678 (is-Concat!5865 (regex!2230 (rule!3969 t1!34)))) b!1296925))

(assert (= (and b!1296678 (is-Star!3544 (regex!2230 (rule!3969 t1!34)))) b!1296926))

(assert (= (and b!1296678 (is-Union!3544 (regex!2230 (rule!3969 t1!34)))) b!1296927))

(declare-fun b!1296928 () Bool)

(declare-fun e!831407 () Bool)

(assert (=> b!1296928 (= e!831407 tp_is_empty!6581)))

(declare-fun b!1296929 () Bool)

(declare-fun tp!378346 () Bool)

(declare-fun tp!378348 () Bool)

(assert (=> b!1296929 (= e!831407 (and tp!378346 tp!378348))))

(declare-fun b!1296930 () Bool)

(declare-fun tp!378349 () Bool)

(assert (=> b!1296930 (= e!831407 tp!378349)))

(assert (=> b!1296683 (= tp!378267 e!831407)))

(declare-fun b!1296931 () Bool)

(declare-fun tp!378350 () Bool)

(declare-fun tp!378347 () Bool)

(assert (=> b!1296931 (= e!831407 (and tp!378350 tp!378347))))

(assert (= (and b!1296683 (is-ElementMatch!3544 (regex!2230 (h!18354 rules!2550)))) b!1296928))

(assert (= (and b!1296683 (is-Concat!5865 (regex!2230 (h!18354 rules!2550)))) b!1296929))

(assert (= (and b!1296683 (is-Star!3544 (regex!2230 (h!18354 rules!2550)))) b!1296930))

(assert (= (and b!1296683 (is-Union!3544 (regex!2230 (h!18354 rules!2550)))) b!1296931))

(declare-fun b!1296936 () Bool)

(declare-fun e!831410 () Bool)

(declare-fun tp!378353 () Bool)

(assert (=> b!1296936 (= e!831410 (and tp_is_empty!6581 tp!378353))))

(assert (=> b!1296676 (= tp!378271 e!831410)))

(assert (= (and b!1296676 (is-Cons!12952 (originalCharacters!3092 t1!34))) b!1296936))

(declare-fun b!1296938 () Bool)

(declare-fun e!831412 () Bool)

(declare-fun tp!378354 () Bool)

(assert (=> b!1296938 (= e!831412 (and tp_is_empty!6581 tp!378354))))

(assert (=> b!1296692 (= tp!378269 e!831412)))

(assert (= (and b!1296692 (is-Cons!12952 (originalCharacters!3092 t2!34))) b!1296938))

(declare-fun b!1296939 () Bool)

(declare-fun e!831413 () Bool)

(assert (=> b!1296939 (= e!831413 tp_is_empty!6581)))

(declare-fun b!1296940 () Bool)

(declare-fun tp!378355 () Bool)

(declare-fun tp!378357 () Bool)

(assert (=> b!1296940 (= e!831413 (and tp!378355 tp!378357))))

(declare-fun b!1296941 () Bool)

(declare-fun tp!378358 () Bool)

(assert (=> b!1296941 (= e!831413 tp!378358)))

(assert (=> b!1296681 (= tp!378275 e!831413)))

(declare-fun b!1296942 () Bool)

(declare-fun tp!378359 () Bool)

(declare-fun tp!378356 () Bool)

(assert (=> b!1296942 (= e!831413 (and tp!378359 tp!378356))))

(assert (= (and b!1296681 (is-ElementMatch!3544 (regex!2230 (rule!3969 t2!34)))) b!1296939))

(assert (= (and b!1296681 (is-Concat!5865 (regex!2230 (rule!3969 t2!34)))) b!1296940))

(assert (= (and b!1296681 (is-Star!3544 (regex!2230 (rule!3969 t2!34)))) b!1296941))

(assert (= (and b!1296681 (is-Union!3544 (regex!2230 (rule!3969 t2!34)))) b!1296942))

(declare-fun b_lambda!37115 () Bool)

(assert (= b_lambda!37107 (or (and b!1296688 b_free!30665 (= (toChars!3296 (transformation!2230 (h!18354 rules!2550))) (toChars!3296 (transformation!2230 (rule!3969 t1!34))))) (and b!1296685 b_free!30669) (and b!1296689 b_free!30673 (= (toChars!3296 (transformation!2230 (rule!3969 t2!34))) (toChars!3296 (transformation!2230 (rule!3969 t1!34))))) (and b!1296911 b_free!30689 (= (toChars!3296 (transformation!2230 (h!18354 (t!117408 rules!2550)))) (toChars!3296 (transformation!2230 (rule!3969 t1!34))))) b_lambda!37115)))

(declare-fun b_lambda!37117 () Bool)

(assert (= b_lambda!37111 (or (and b!1296688 b_free!30665 (= (toChars!3296 (transformation!2230 (h!18354 rules!2550))) (toChars!3296 (transformation!2230 (rule!3969 t1!34))))) (and b!1296685 b_free!30669) (and b!1296689 b_free!30673 (= (toChars!3296 (transformation!2230 (rule!3969 t2!34))) (toChars!3296 (transformation!2230 (rule!3969 t1!34))))) (and b!1296911 b_free!30689 (= (toChars!3296 (transformation!2230 (h!18354 (t!117408 rules!2550)))) (toChars!3296 (transformation!2230 (rule!3969 t1!34))))) b_lambda!37117)))

(declare-fun b_lambda!37119 () Bool)

(assert (= b_lambda!37109 (or (and b!1296688 b_free!30665 (= (toChars!3296 (transformation!2230 (h!18354 rules!2550))) (toChars!3296 (transformation!2230 (rule!3969 t2!34))))) (and b!1296685 b_free!30669 (= (toChars!3296 (transformation!2230 (rule!3969 t1!34))) (toChars!3296 (transformation!2230 (rule!3969 t2!34))))) (and b!1296689 b_free!30673) (and b!1296911 b_free!30689 (= (toChars!3296 (transformation!2230 (h!18354 (t!117408 rules!2550)))) (toChars!3296 (transformation!2230 (rule!3969 t2!34))))) b_lambda!37119)))

(declare-fun b_lambda!37121 () Bool)

(assert (= b_lambda!37105 (or b!1296684 b_lambda!37121)))

(declare-fun bs!329002 () Bool)

(declare-fun d!366172 () Bool)

(assert (= bs!329002 (and d!366172 b!1296684)))

(declare-fun res!580720 () Bool)

(declare-fun e!831415 () Bool)

(assert (=> bs!329002 (=> (not res!580720) (not e!831415))))

(declare-fun matchR!1552 (Regex!3544 List!13018) Bool)

(assert (=> bs!329002 (= res!580720 (matchR!1552 lt!426532 lt!426584))))

(assert (=> bs!329002 (= (dynLambda!5674 lambda!50948 lt!426584) e!831415)))

(declare-fun b!1296944 () Bool)

(declare-fun isPrefix!1055 (List!13018 List!13018) Bool)

(assert (=> b!1296944 (= e!831415 (isPrefix!1055 lt!426530 lt!426584))))

(assert (= (and bs!329002 res!580720) b!1296944))

(declare-fun m!1448427 () Bool)

(assert (=> bs!329002 m!1448427))

(declare-fun m!1448429 () Bool)

(assert (=> b!1296944 m!1448429))

(assert (=> d!366120 d!366172))

(declare-fun b_lambda!37123 () Bool)

(assert (= b_lambda!37103 (or (and b!1296688 b_free!30665 (= (toChars!3296 (transformation!2230 (h!18354 rules!2550))) (toChars!3296 (transformation!2230 (rule!3969 t2!34))))) (and b!1296685 b_free!30669 (= (toChars!3296 (transformation!2230 (rule!3969 t1!34))) (toChars!3296 (transformation!2230 (rule!3969 t2!34))))) (and b!1296689 b_free!30673) (and b!1296911 b_free!30689 (= (toChars!3296 (transformation!2230 (h!18354 (t!117408 rules!2550)))) (toChars!3296 (transformation!2230 (rule!3969 t2!34))))) b_lambda!37123)))

(push 1)

(assert (not b!1296899))

(assert b_and!86327)

(assert (not d!366132))

(assert (not b!1296790))

(assert (not d!366120))

(assert (not b!1296929))

(assert (not b!1296878))

(assert (not d!366136))

(assert (not b!1296942))

(assert (not d!366134))

(assert b_and!86365)

(assert (not b!1296931))

(assert (not d!366116))

(assert tp_is_empty!6581)

(assert b_and!86369)

(assert b_and!86373)

(assert (not b_next!31375))

(assert (not b!1296783))

(assert (not b!1296893))

(assert (not d!366126))

(assert (not d!366106))

(assert (not b!1296859))

(assert (not d!366128))

(assert b_and!86371)

(assert (not b!1296853))

(assert (not b!1296822))

(assert (not tb!69473))

(assert (not b_lambda!37121))

(assert (not b_lambda!37119))

(assert (not b_next!31377))

(assert (not b!1296852))

(assert (not b!1296864))

(assert (not b!1296858))

(assert (not d!366130))

(assert (not b!1296856))

(assert (not b!1296833))

(assert (not d!366108))

(assert (not b!1296926))

(assert (not d!366146))

(assert (not b!1296841))

(assert (not b!1296940))

(assert (not b!1296938))

(assert (not b!1296927))

(assert (not b!1296910))

(assert b_and!86323)

(assert b_and!86367)

(assert (not b!1296839))

(assert (not d!366102))

(assert (not b!1296785))

(assert (not b_next!31393))

(assert (not d!366144))

(assert (not b!1296930))

(assert (not b!1296799))

(assert (not d!366096))

(assert (not b_lambda!37115))

(assert (not b_next!31371))

(assert (not b!1296807))

(assert (not b!1296909))

(assert (not b!1296900))

(assert (not b!1296854))

(assert (not d!366110))

(assert (not b!1296941))

(assert (not b!1296793))

(assert (not d!366104))

(assert (not b!1296894))

(assert (not d!366140))

(assert (not b!1296936))

(assert (not d!366118))

(assert (not b!1296784))

(assert (not tb!69479))

(assert (not b!1296788))

(assert (not b_next!31367))

(assert (not b!1296789))

(assert b_and!86331)

(assert (not b!1296832))

(assert (not d!366098))

(assert (not b!1296895))

(assert (not d!366094))

(assert (not d!366090))

(assert (not b!1296896))

(assert (not b_lambda!37123))

(assert (not b_next!31369))

(assert (not b!1296925))

(assert (not b!1296944))

(assert (not b!1296877))

(assert (not b!1296819))

(assert (not b_next!31373))

(assert (not b!1296802))

(assert (not b_lambda!37117))

(assert (not d!366088))

(assert (not d!366160))

(assert (not b!1296818))

(assert (not d!366122))

(assert (not b!1296855))

(assert (not b_next!31391))

(assert (not d!366138))

(assert (not b!1296776))

(assert (not bs!329002))

(check-sat)

(pop 1)

(push 1)

(assert b_and!86365)

(assert b_and!86371)

(assert (not b_next!31377))

(assert b_and!86327)

(assert b_and!86323)

(assert b_and!86367)

(assert (not b_next!31393))

(assert (not b_next!31371))

(assert (not b_next!31367))

(assert b_and!86331)

(assert (not b_next!31369))

(assert (not b_next!31373))

(assert (not b_next!31391))

(assert b_and!86369)

(assert b_and!86373)

(assert (not b_next!31375))

(check-sat)

(pop 1)

