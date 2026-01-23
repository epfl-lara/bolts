; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!163508 () Bool)

(assert start!163508)

(declare-fun b!1682588 () Bool)

(declare-fun b_free!45551 () Bool)

(declare-fun b_next!46255 () Bool)

(assert (=> b!1682588 (= b_free!45551 (not b_next!46255))))

(declare-fun tp!483736 () Bool)

(declare-fun b_and!120237 () Bool)

(assert (=> b!1682588 (= tp!483736 b_and!120237)))

(declare-fun b_free!45553 () Bool)

(declare-fun b_next!46257 () Bool)

(assert (=> b!1682588 (= b_free!45553 (not b_next!46257))))

(declare-fun tp!483737 () Bool)

(declare-fun b_and!120239 () Bool)

(assert (=> b!1682588 (= tp!483737 b_and!120239)))

(declare-fun b!1682587 () Bool)

(declare-fun b_free!45555 () Bool)

(declare-fun b_next!46259 () Bool)

(assert (=> b!1682587 (= b_free!45555 (not b_next!46259))))

(declare-fun tp!483733 () Bool)

(declare-fun b_and!120241 () Bool)

(assert (=> b!1682587 (= tp!483733 b_and!120241)))

(declare-fun b_free!45557 () Bool)

(declare-fun b_next!46261 () Bool)

(assert (=> b!1682587 (= b_free!45557 (not b_next!46261))))

(declare-fun tp!483731 () Bool)

(declare-fun b_and!120243 () Bool)

(assert (=> b!1682587 (= tp!483731 b_and!120243)))

(declare-fun b!1682577 () Bool)

(declare-fun res!754150 () Bool)

(declare-fun e!1077321 () Bool)

(assert (=> b!1682577 (=> res!754150 e!1077321)))

(declare-datatypes ((List!18515 0))(
  ( (Nil!18445) (Cons!18445 (h!23846 (_ BitVec 16)) (t!154450 List!18515)) )
))
(declare-datatypes ((TokenValue!3338 0))(
  ( (FloatLiteralValue!6676 (text!23811 List!18515)) (TokenValueExt!3337 (__x!11978 Int)) (Broken!16690 (value!102216 List!18515)) (Object!3407) (End!3338) (Def!3338) (Underscore!3338) (Match!3338) (Else!3338) (Error!3338) (Case!3338) (If!3338) (Extends!3338) (Abstract!3338) (Class!3338) (Val!3338) (DelimiterValue!6676 (del!3398 List!18515)) (KeywordValue!3344 (value!102217 List!18515)) (CommentValue!6676 (value!102218 List!18515)) (WhitespaceValue!6676 (value!102219 List!18515)) (IndentationValue!3338 (value!102220 List!18515)) (String!21023) (Int32!3338) (Broken!16691 (value!102221 List!18515)) (Boolean!3339) (Unit!31681) (OperatorValue!3341 (op!3398 List!18515)) (IdentifierValue!6676 (value!102222 List!18515)) (IdentifierValue!6677 (value!102223 List!18515)) (WhitespaceValue!6677 (value!102224 List!18515)) (True!6676) (False!6676) (Broken!16692 (value!102225 List!18515)) (Broken!16693 (value!102226 List!18515)) (True!6677) (RightBrace!3338) (RightBracket!3338) (Colon!3338) (Null!3338) (Comma!3338) (LeftBracket!3338) (False!6677) (LeftBrace!3338) (ImaginaryLiteralValue!3338 (text!23812 List!18515)) (StringLiteralValue!10014 (value!102227 List!18515)) (EOFValue!3338 (value!102228 List!18515)) (IdentValue!3338 (value!102229 List!18515)) (DelimiterValue!6677 (value!102230 List!18515)) (DedentValue!3338 (value!102231 List!18515)) (NewLineValue!3338 (value!102232 List!18515)) (IntegerValue!10014 (value!102233 (_ BitVec 32)) (text!23813 List!18515)) (IntegerValue!10015 (value!102234 Int) (text!23814 List!18515)) (Times!3338) (Or!3338) (Equal!3338) (Minus!3338) (Broken!16694 (value!102235 List!18515)) (And!3338) (Div!3338) (LessEqual!3338) (Mod!3338) (Concat!7914) (Not!3338) (Plus!3338) (SpaceValue!3338 (value!102236 List!18515)) (IntegerValue!10016 (value!102237 Int) (text!23815 List!18515)) (StringLiteralValue!10015 (text!23816 List!18515)) (FloatLiteralValue!6677 (text!23817 List!18515)) (BytesLiteralValue!3338 (value!102238 List!18515)) (CommentValue!6677 (value!102239 List!18515)) (StringLiteralValue!10016 (value!102240 List!18515)) (ErrorTokenValue!3338 (msg!3399 List!18515)) )
))
(declare-datatypes ((C!9326 0))(
  ( (C!9327 (val!5259 Int)) )
))
(declare-datatypes ((List!18516 0))(
  ( (Nil!18446) (Cons!18446 (h!23847 C!9326) (t!154451 List!18516)) )
))
(declare-datatypes ((IArray!12293 0))(
  ( (IArray!12294 (innerList!6204 List!18516)) )
))
(declare-datatypes ((Conc!6144 0))(
  ( (Node!6144 (left!14750 Conc!6144) (right!15080 Conc!6144) (csize!12518 Int) (cheight!6355 Int)) (Leaf!8989 (xs!9000 IArray!12293) (csize!12519 Int)) (Empty!6144) )
))
(declare-datatypes ((BalanceConc!12232 0))(
  ( (BalanceConc!12233 (c!274695 Conc!6144)) )
))
(declare-datatypes ((Regex!4576 0))(
  ( (ElementMatch!4576 (c!274696 C!9326)) (Concat!7915 (regOne!9664 Regex!4576) (regTwo!9664 Regex!4576)) (EmptyExpr!4576) (Star!4576 (reg!4905 Regex!4576)) (EmptyLang!4576) (Union!4576 (regOne!9665 Regex!4576) (regTwo!9665 Regex!4576)) )
))
(declare-datatypes ((String!21024 0))(
  ( (String!21025 (value!102241 String)) )
))
(declare-datatypes ((TokenValueInjection!6336 0))(
  ( (TokenValueInjection!6337 (toValue!4723 Int) (toChars!4582 Int)) )
))
(declare-datatypes ((Rule!6296 0))(
  ( (Rule!6297 (regex!3248 Regex!4576) (tag!3536 String!21024) (isSeparator!3248 Bool) (transformation!3248 TokenValueInjection!6336)) )
))
(declare-datatypes ((List!18517 0))(
  ( (Nil!18447) (Cons!18447 (h!23848 Rule!6296) (t!154452 List!18517)) )
))
(declare-fun rules!1846 () List!18517)

(declare-datatypes ((LexerInterface!2877 0))(
  ( (LexerInterfaceExt!2874 (__x!11979 Int)) (Lexer!2875) )
))
(declare-fun thiss!17113 () LexerInterface!2877)

(declare-datatypes ((Token!6062 0))(
  ( (Token!6063 (value!102242 TokenValue!3338) (rule!5148 Rule!6296) (size!14691 Int) (originalCharacters!4062 List!18516)) )
))
(declare-datatypes ((List!18518 0))(
  ( (Nil!18448) (Cons!18448 (h!23849 Token!6062) (t!154453 List!18518)) )
))
(declare-fun tokens!457 () List!18518)

(declare-fun rulesProduceIndividualToken!1525 (LexerInterface!2877 List!18517 Token!6062) Bool)

(assert (=> b!1682577 (= res!754150 (not (rulesProduceIndividualToken!1525 thiss!17113 rules!1846 (h!23849 tokens!457))))))

(declare-fun b!1682578 () Bool)

(declare-fun e!1077325 () Bool)

(declare-fun e!1077315 () Bool)

(assert (=> b!1682578 (= e!1077325 e!1077315)))

(declare-fun res!754156 () Bool)

(assert (=> b!1682578 (=> res!754156 e!1077315)))

(declare-fun lt!637412 () Regex!4576)

(declare-fun lt!637408 () BalanceConc!12232)

(declare-fun lt!637406 () BalanceConc!12232)

(declare-fun prefixMatchZipperSequence!684 (Regex!4576 BalanceConc!12232) Bool)

(declare-fun ++!5043 (BalanceConc!12232 BalanceConc!12232) BalanceConc!12232)

(assert (=> b!1682578 (= res!754156 (prefixMatchZipperSequence!684 lt!637412 (++!5043 lt!637406 lt!637408)))))

(declare-fun singletonSeq!1764 (C!9326) BalanceConc!12232)

(declare-fun apply!5005 (BalanceConc!12232 Int) C!9326)

(declare-fun charsOf!1897 (Token!6062) BalanceConc!12232)

(assert (=> b!1682578 (= lt!637408 (singletonSeq!1764 (apply!5005 (charsOf!1897 (h!23849 (t!154453 tokens!457))) 0)))))

(declare-fun rulesRegex!630 (LexerInterface!2877 List!18517) Regex!4576)

(assert (=> b!1682578 (= lt!637412 (rulesRegex!630 thiss!17113 rules!1846))))

(declare-fun b!1682579 () Bool)

(declare-fun res!754148 () Bool)

(declare-fun e!1077317 () Bool)

(assert (=> b!1682579 (=> (not res!754148) (not e!1077317))))

(declare-fun rulesInvariant!2546 (LexerInterface!2877 List!18517) Bool)

(assert (=> b!1682579 (= res!754148 (rulesInvariant!2546 thiss!17113 rules!1846))))

(declare-fun b!1682580 () Bool)

(declare-fun e!1077326 () Bool)

(declare-fun e!1077311 () Bool)

(assert (=> b!1682580 (= e!1077326 e!1077311)))

(declare-fun res!754144 () Bool)

(assert (=> b!1682580 (=> res!754144 e!1077311)))

(declare-fun lt!637418 () List!18518)

(declare-fun lt!637416 () List!18518)

(declare-fun lt!637403 () List!18518)

(assert (=> b!1682580 (= res!754144 (or (not (= lt!637418 lt!637416)) (not (= lt!637416 lt!637403))))))

(declare-datatypes ((IArray!12295 0))(
  ( (IArray!12296 (innerList!6205 List!18518)) )
))
(declare-datatypes ((Conc!6145 0))(
  ( (Node!6145 (left!14751 Conc!6145) (right!15081 Conc!6145) (csize!12520 Int) (cheight!6356 Int)) (Leaf!8990 (xs!9001 IArray!12295) (csize!12521 Int)) (Empty!6145) )
))
(declare-datatypes ((BalanceConc!12234 0))(
  ( (BalanceConc!12235 (c!274697 Conc!6145)) )
))
(declare-fun lt!637401 () BalanceConc!12234)

(declare-fun list!7405 (BalanceConc!12234) List!18518)

(assert (=> b!1682580 (= lt!637416 (list!7405 lt!637401))))

(assert (=> b!1682580 (= lt!637418 lt!637403)))

(declare-fun prepend!840 (BalanceConc!12234 Token!6062) BalanceConc!12234)

(declare-fun seqFromList!2233 (List!18518) BalanceConc!12234)

(assert (=> b!1682580 (= lt!637403 (list!7405 (prepend!840 (seqFromList!2233 (t!154453 (t!154453 tokens!457))) (h!23849 (t!154453 tokens!457)))))))

(declare-datatypes ((Unit!31682 0))(
  ( (Unit!31683) )
))
(declare-fun lt!637420 () Unit!31682)

(declare-datatypes ((tuple2!18180 0))(
  ( (tuple2!18181 (_1!10492 BalanceConc!12234) (_2!10492 BalanceConc!12232)) )
))
(declare-fun lt!637421 () tuple2!18180)

(declare-fun seqFromListBHdTlConstructive!317 (Token!6062 List!18518 BalanceConc!12234) Unit!31682)

(assert (=> b!1682580 (= lt!637420 (seqFromListBHdTlConstructive!317 (h!23849 (t!154453 tokens!457)) (t!154453 (t!154453 tokens!457)) (_1!10492 lt!637421)))))

(declare-fun b!1682581 () Bool)

(declare-fun res!754153 () Bool)

(assert (=> b!1682581 (=> (not res!754153) (not e!1077317))))

(declare-fun rulesProduceEachTokenIndividuallyList!1079 (LexerInterface!2877 List!18517 List!18518) Bool)

(assert (=> b!1682581 (= res!754153 (rulesProduceEachTokenIndividuallyList!1079 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1682582 () Bool)

(declare-fun res!754141 () Bool)

(assert (=> b!1682582 (=> (not res!754141) (not e!1077317))))

(declare-fun isEmpty!11520 (List!18517) Bool)

(assert (=> b!1682582 (= res!754141 (not (isEmpty!11520 rules!1846)))))

(declare-fun b!1682584 () Bool)

(declare-fun res!754147 () Bool)

(assert (=> b!1682584 (=> res!754147 e!1077321)))

(declare-fun lt!637402 () List!18516)

(declare-fun isEmpty!11521 (BalanceConc!12234) Bool)

(declare-fun lex!1361 (LexerInterface!2877 List!18517 BalanceConc!12232) tuple2!18180)

(declare-fun seqFromList!2234 (List!18516) BalanceConc!12232)

(assert (=> b!1682584 (= res!754147 (isEmpty!11521 (_1!10492 (lex!1361 thiss!17113 rules!1846 (seqFromList!2234 lt!637402)))))))

(declare-fun b!1682585 () Bool)

(declare-fun e!1077322 () Bool)

(declare-fun lt!637404 () List!18516)

(declare-fun lt!637407 () List!18516)

(declare-fun head!3756 (List!18516) C!9326)

(assert (=> b!1682585 (= e!1077322 (= lt!637404 (Cons!18446 (head!3756 lt!637407) Nil!18446)))))

(declare-fun b!1682586 () Bool)

(declare-fun e!1077316 () Bool)

(assert (=> b!1682586 (= e!1077317 e!1077316)))

(declare-fun res!754151 () Bool)

(assert (=> b!1682586 (=> (not res!754151) (not e!1077316))))

(declare-fun lt!637400 () List!18516)

(declare-fun lt!637415 () List!18516)

(assert (=> b!1682586 (= res!754151 (= lt!637400 lt!637415))))

(declare-fun ++!5044 (List!18516 List!18516) List!18516)

(assert (=> b!1682586 (= lt!637415 (++!5044 lt!637402 lt!637407))))

(declare-fun lt!637405 () BalanceConc!12232)

(declare-fun list!7406 (BalanceConc!12232) List!18516)

(assert (=> b!1682586 (= lt!637400 (list!7406 lt!637405))))

(declare-fun lt!637422 () BalanceConc!12232)

(assert (=> b!1682586 (= lt!637407 (list!7406 lt!637422))))

(assert (=> b!1682586 (= lt!637402 (list!7406 lt!637406))))

(assert (=> b!1682586 (= lt!637406 (charsOf!1897 (h!23849 tokens!457)))))

(assert (=> b!1682586 (= lt!637421 (lex!1361 thiss!17113 rules!1846 lt!637422))))

(declare-fun print!1408 (LexerInterface!2877 BalanceConc!12234) BalanceConc!12232)

(assert (=> b!1682586 (= lt!637422 (print!1408 thiss!17113 lt!637401))))

(assert (=> b!1682586 (= lt!637401 (seqFromList!2233 (t!154453 tokens!457)))))

(assert (=> b!1682586 (= lt!637405 (print!1408 thiss!17113 (seqFromList!2233 tokens!457)))))

(declare-fun e!1077312 () Bool)

(assert (=> b!1682587 (= e!1077312 (and tp!483733 tp!483731))))

(declare-fun e!1077313 () Bool)

(assert (=> b!1682588 (= e!1077313 (and tp!483736 tp!483737))))

(declare-fun b!1682589 () Bool)

(declare-fun res!754143 () Bool)

(assert (=> b!1682589 (=> (not res!754143) (not e!1077322))))

(assert (=> b!1682589 (= res!754143 (= lt!637404 (Cons!18446 (head!3756 (originalCharacters!4062 (h!23849 (t!154453 tokens!457)))) Nil!18446)))))

(declare-fun b!1682590 () Bool)

(declare-fun tp!483739 () Bool)

(declare-fun e!1077320 () Bool)

(declare-fun e!1077314 () Bool)

(declare-fun inv!23812 (Token!6062) Bool)

(assert (=> b!1682590 (= e!1077314 (and (inv!23812 (h!23849 tokens!457)) e!1077320 tp!483739))))

(declare-fun tp!483732 () Bool)

(declare-fun b!1682591 () Bool)

(declare-fun e!1077327 () Bool)

(declare-fun inv!23809 (String!21024) Bool)

(declare-fun inv!23813 (TokenValueInjection!6336) Bool)

(assert (=> b!1682591 (= e!1077327 (and tp!483732 (inv!23809 (tag!3536 (h!23848 rules!1846))) (inv!23813 (transformation!3248 (h!23848 rules!1846))) e!1077312))))

(declare-fun e!1077329 () Bool)

(declare-fun b!1682592 () Bool)

(declare-fun tp!483738 () Bool)

(assert (=> b!1682592 (= e!1077329 (and tp!483738 (inv!23809 (tag!3536 (rule!5148 (h!23849 tokens!457)))) (inv!23813 (transformation!3248 (rule!5148 (h!23849 tokens!457)))) e!1077313))))

(declare-fun b!1682593 () Bool)

(assert (=> b!1682593 (= e!1077321 e!1077325)))

(declare-fun res!754146 () Bool)

(assert (=> b!1682593 (=> res!754146 e!1077325)))

(declare-datatypes ((tuple2!18182 0))(
  ( (tuple2!18183 (_1!10493 Token!6062) (_2!10493 List!18516)) )
))
(declare-datatypes ((Option!3553 0))(
  ( (None!3552) (Some!3552 (v!24857 tuple2!18182)) )
))
(declare-fun lt!637414 () Option!3553)

(declare-fun isDefined!2902 (Option!3553) Bool)

(assert (=> b!1682593 (= res!754146 (not (isDefined!2902 lt!637414)))))

(declare-fun lt!637413 () Unit!31682)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!439 (LexerInterface!2877 List!18517 List!18516 List!18516) Unit!31682)

(assert (=> b!1682593 (= lt!637413 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!439 thiss!17113 rules!1846 lt!637402 lt!637407))))

(declare-fun b!1682594 () Bool)

(declare-fun res!754152 () Bool)

(assert (=> b!1682594 (=> (not res!754152) (not e!1077317))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!570 (LexerInterface!2877 List!18518 List!18517) Bool)

(assert (=> b!1682594 (= res!754152 (tokensListTwoByTwoPredicateSeparableList!570 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1682595 () Bool)

(declare-fun e!1077324 () Bool)

(assert (=> b!1682595 (= e!1077315 e!1077324)))

(declare-fun res!754142 () Bool)

(assert (=> b!1682595 (=> res!754142 e!1077324)))

(declare-fun prefixMatch!489 (Regex!4576 List!18516) Bool)

(assert (=> b!1682595 (= res!754142 (prefixMatch!489 lt!637412 (++!5044 lt!637402 lt!637404)))))

(assert (=> b!1682595 (= lt!637404 (list!7406 lt!637408))))

(declare-fun b!1682596 () Bool)

(declare-fun res!754139 () Bool)

(assert (=> b!1682596 (=> (not res!754139) (not e!1077317))))

(assert (=> b!1682596 (= res!754139 (and (not (is-Nil!18448 tokens!457)) (not (is-Nil!18448 (t!154453 tokens!457)))))))

(declare-fun b!1682597 () Bool)

(declare-fun e!1077318 () Bool)

(declare-fun tp!483734 () Bool)

(assert (=> b!1682597 (= e!1077318 (and e!1077327 tp!483734))))

(declare-fun b!1682598 () Bool)

(declare-fun tp!483735 () Bool)

(declare-fun inv!21 (TokenValue!3338) Bool)

(assert (=> b!1682598 (= e!1077320 (and (inv!21 (value!102242 (h!23849 tokens!457))) e!1077329 tp!483735))))

(declare-fun b!1682599 () Bool)

(assert (=> b!1682599 (= e!1077311 e!1077321)))

(declare-fun res!754140 () Bool)

(assert (=> b!1682599 (=> res!754140 e!1077321)))

(declare-fun lt!637409 () List!18516)

(declare-fun lt!637410 () List!18516)

(assert (=> b!1682599 (= res!754140 (or (not (= lt!637409 lt!637410)) (not (= lt!637410 lt!637402)) (not (= lt!637409 lt!637402))))))

(declare-fun printList!990 (LexerInterface!2877 List!18518) List!18516)

(assert (=> b!1682599 (= lt!637410 (printList!990 thiss!17113 (Cons!18448 (h!23849 tokens!457) Nil!18448)))))

(declare-fun lt!637419 () BalanceConc!12232)

(assert (=> b!1682599 (= lt!637409 (list!7406 lt!637419))))

(declare-fun lt!637399 () BalanceConc!12234)

(declare-fun printTailRec!928 (LexerInterface!2877 BalanceConc!12234 Int BalanceConc!12232) BalanceConc!12232)

(assert (=> b!1682599 (= lt!637419 (printTailRec!928 thiss!17113 lt!637399 0 (BalanceConc!12233 Empty!6144)))))

(assert (=> b!1682599 (= lt!637419 (print!1408 thiss!17113 lt!637399))))

(declare-fun singletonSeq!1765 (Token!6062) BalanceConc!12234)

(assert (=> b!1682599 (= lt!637399 (singletonSeq!1765 (h!23849 tokens!457)))))

(declare-fun maxPrefix!1437 (LexerInterface!2877 List!18517 List!18516) Option!3553)

(assert (=> b!1682599 (= lt!637414 (maxPrefix!1437 thiss!17113 rules!1846 lt!637400))))

(declare-fun b!1682583 () Bool)

(declare-fun res!754149 () Bool)

(assert (=> b!1682583 (=> res!754149 e!1077311)))

(declare-fun separableTokensPredicate!817 (LexerInterface!2877 Token!6062 Token!6062 List!18517) Bool)

(assert (=> b!1682583 (= res!754149 (not (separableTokensPredicate!817 thiss!17113 (h!23849 tokens!457) (h!23849 (t!154453 tokens!457)) rules!1846)))))

(declare-fun res!754155 () Bool)

(assert (=> start!163508 (=> (not res!754155) (not e!1077317))))

(assert (=> start!163508 (= res!754155 (is-Lexer!2875 thiss!17113))))

(assert (=> start!163508 e!1077317))

(assert (=> start!163508 true))

(assert (=> start!163508 e!1077318))

(assert (=> start!163508 e!1077314))

(declare-fun b!1682600 () Bool)

(assert (=> b!1682600 (= e!1077316 (not e!1077326))))

(declare-fun res!754145 () Bool)

(assert (=> b!1682600 (=> res!754145 e!1077326)))

(assert (=> b!1682600 (= res!754145 (not (= lt!637418 (t!154453 tokens!457))))))

(assert (=> b!1682600 (= lt!637418 (list!7405 (_1!10492 lt!637421)))))

(declare-fun lt!637417 () Unit!31682)

(declare-fun theoremInvertabilityWhenTokenListSeparable!314 (LexerInterface!2877 List!18517 List!18518) Unit!31682)

(assert (=> b!1682600 (= lt!637417 (theoremInvertabilityWhenTokenListSeparable!314 thiss!17113 rules!1846 (t!154453 tokens!457)))))

(declare-fun isPrefix!1506 (List!18516 List!18516) Bool)

(assert (=> b!1682600 (isPrefix!1506 lt!637402 lt!637415)))

(declare-fun lt!637411 () Unit!31682)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1027 (List!18516 List!18516) Unit!31682)

(assert (=> b!1682600 (= lt!637411 (lemmaConcatTwoListThenFirstIsPrefix!1027 lt!637402 lt!637407))))

(declare-fun b!1682601 () Bool)

(declare-fun head!3757 (BalanceConc!12232) C!9326)

(assert (=> b!1682601 (= e!1077324 (= lt!637404 (Cons!18446 (head!3757 lt!637422) Nil!18446)))))

(assert (=> b!1682601 e!1077322))

(declare-fun res!754154 () Bool)

(assert (=> b!1682601 (=> (not res!754154) (not e!1077322))))

(assert (=> b!1682601 (= res!754154 (= lt!637402 (originalCharacters!4062 (h!23849 tokens!457))))))

(assert (= (and start!163508 res!754155) b!1682582))

(assert (= (and b!1682582 res!754141) b!1682579))

(assert (= (and b!1682579 res!754148) b!1682581))

(assert (= (and b!1682581 res!754153) b!1682594))

(assert (= (and b!1682594 res!754152) b!1682596))

(assert (= (and b!1682596 res!754139) b!1682586))

(assert (= (and b!1682586 res!754151) b!1682600))

(assert (= (and b!1682600 (not res!754145)) b!1682580))

(assert (= (and b!1682580 (not res!754144)) b!1682583))

(assert (= (and b!1682583 (not res!754149)) b!1682599))

(assert (= (and b!1682599 (not res!754140)) b!1682577))

(assert (= (and b!1682577 (not res!754150)) b!1682584))

(assert (= (and b!1682584 (not res!754147)) b!1682593))

(assert (= (and b!1682593 (not res!754146)) b!1682578))

(assert (= (and b!1682578 (not res!754156)) b!1682595))

(assert (= (and b!1682595 (not res!754142)) b!1682601))

(assert (= (and b!1682601 res!754154) b!1682589))

(assert (= (and b!1682589 res!754143) b!1682585))

(assert (= b!1682591 b!1682587))

(assert (= b!1682597 b!1682591))

(assert (= (and start!163508 (is-Cons!18447 rules!1846)) b!1682597))

(assert (= b!1682592 b!1682588))

(assert (= b!1682598 b!1682592))

(assert (= b!1682590 b!1682598))

(assert (= (and start!163508 (is-Cons!18448 tokens!457)) b!1682590))

(declare-fun m!2062089 () Bool)

(assert (=> b!1682586 m!2062089))

(declare-fun m!2062091 () Bool)

(assert (=> b!1682586 m!2062091))

(declare-fun m!2062093 () Bool)

(assert (=> b!1682586 m!2062093))

(declare-fun m!2062095 () Bool)

(assert (=> b!1682586 m!2062095))

(declare-fun m!2062097 () Bool)

(assert (=> b!1682586 m!2062097))

(declare-fun m!2062099 () Bool)

(assert (=> b!1682586 m!2062099))

(declare-fun m!2062101 () Bool)

(assert (=> b!1682586 m!2062101))

(assert (=> b!1682586 m!2062095))

(declare-fun m!2062103 () Bool)

(assert (=> b!1682586 m!2062103))

(declare-fun m!2062105 () Bool)

(assert (=> b!1682586 m!2062105))

(declare-fun m!2062107 () Bool)

(assert (=> b!1682586 m!2062107))

(declare-fun m!2062109 () Bool)

(assert (=> b!1682577 m!2062109))

(declare-fun m!2062111 () Bool)

(assert (=> b!1682591 m!2062111))

(declare-fun m!2062113 () Bool)

(assert (=> b!1682591 m!2062113))

(declare-fun m!2062115 () Bool)

(assert (=> b!1682582 m!2062115))

(declare-fun m!2062117 () Bool)

(assert (=> b!1682580 m!2062117))

(declare-fun m!2062119 () Bool)

(assert (=> b!1682580 m!2062119))

(declare-fun m!2062121 () Bool)

(assert (=> b!1682580 m!2062121))

(declare-fun m!2062123 () Bool)

(assert (=> b!1682580 m!2062123))

(assert (=> b!1682580 m!2062119))

(assert (=> b!1682580 m!2062123))

(declare-fun m!2062125 () Bool)

(assert (=> b!1682580 m!2062125))

(declare-fun m!2062127 () Bool)

(assert (=> b!1682590 m!2062127))

(declare-fun m!2062129 () Bool)

(assert (=> b!1682598 m!2062129))

(declare-fun m!2062131 () Bool)

(assert (=> b!1682595 m!2062131))

(assert (=> b!1682595 m!2062131))

(declare-fun m!2062133 () Bool)

(assert (=> b!1682595 m!2062133))

(declare-fun m!2062135 () Bool)

(assert (=> b!1682595 m!2062135))

(declare-fun m!2062137 () Bool)

(assert (=> b!1682578 m!2062137))

(declare-fun m!2062139 () Bool)

(assert (=> b!1682578 m!2062139))

(declare-fun m!2062141 () Bool)

(assert (=> b!1682578 m!2062141))

(declare-fun m!2062143 () Bool)

(assert (=> b!1682578 m!2062143))

(declare-fun m!2062145 () Bool)

(assert (=> b!1682578 m!2062145))

(assert (=> b!1682578 m!2062143))

(assert (=> b!1682578 m!2062145))

(declare-fun m!2062147 () Bool)

(assert (=> b!1682578 m!2062147))

(assert (=> b!1682578 m!2062139))

(declare-fun m!2062149 () Bool)

(assert (=> b!1682592 m!2062149))

(declare-fun m!2062151 () Bool)

(assert (=> b!1682592 m!2062151))

(declare-fun m!2062153 () Bool)

(assert (=> b!1682581 m!2062153))

(declare-fun m!2062155 () Bool)

(assert (=> b!1682583 m!2062155))

(declare-fun m!2062157 () Bool)

(assert (=> b!1682579 m!2062157))

(declare-fun m!2062159 () Bool)

(assert (=> b!1682585 m!2062159))

(declare-fun m!2062161 () Bool)

(assert (=> b!1682601 m!2062161))

(declare-fun m!2062163 () Bool)

(assert (=> b!1682584 m!2062163))

(assert (=> b!1682584 m!2062163))

(declare-fun m!2062165 () Bool)

(assert (=> b!1682584 m!2062165))

(declare-fun m!2062167 () Bool)

(assert (=> b!1682584 m!2062167))

(declare-fun m!2062169 () Bool)

(assert (=> b!1682594 m!2062169))

(declare-fun m!2062171 () Bool)

(assert (=> b!1682593 m!2062171))

(declare-fun m!2062173 () Bool)

(assert (=> b!1682593 m!2062173))

(declare-fun m!2062175 () Bool)

(assert (=> b!1682589 m!2062175))

(declare-fun m!2062177 () Bool)

(assert (=> b!1682600 m!2062177))

(declare-fun m!2062179 () Bool)

(assert (=> b!1682600 m!2062179))

(declare-fun m!2062181 () Bool)

(assert (=> b!1682600 m!2062181))

(declare-fun m!2062183 () Bool)

(assert (=> b!1682600 m!2062183))

(declare-fun m!2062185 () Bool)

(assert (=> b!1682599 m!2062185))

(declare-fun m!2062187 () Bool)

(assert (=> b!1682599 m!2062187))

(declare-fun m!2062189 () Bool)

(assert (=> b!1682599 m!2062189))

(declare-fun m!2062191 () Bool)

(assert (=> b!1682599 m!2062191))

(declare-fun m!2062193 () Bool)

(assert (=> b!1682599 m!2062193))

(declare-fun m!2062195 () Bool)

(assert (=> b!1682599 m!2062195))

(push 1)

(assert b_and!120237)

(assert (not b!1682592))

(assert (not b!1682577))

(assert (not b!1682593))

(assert (not b!1682580))

(assert (not b!1682586))

(assert (not b!1682589))

(assert (not b!1682582))

(assert (not b_next!46257))

(assert (not b_next!46259))

(assert (not b!1682581))

(assert (not b!1682584))

(assert (not b!1682583))

(assert b_and!120239)

(assert b_and!120243)

(assert (not b!1682600))

(assert (not b!1682595))

(assert (not b!1682591))

(assert (not b!1682601))

(assert (not b!1682594))

(assert (not b_next!46261))

(assert (not b!1682579))

(assert (not b!1682578))

(assert (not b!1682597))

(assert (not b_next!46255))

(assert (not b!1682599))

(assert (not b!1682598))

(assert (not b!1682590))

(assert b_and!120241)

(assert (not b!1682585))

(check-sat)

(pop 1)

(push 1)

(assert b_and!120237)

(assert b_and!120239)

(assert b_and!120243)

(assert (not b_next!46261))

(assert (not b_next!46255))

(assert b_and!120241)

(assert (not b_next!46257))

(assert (not b_next!46259))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!511899 () Bool)

(declare-fun isEmpty!11524 (Option!3553) Bool)

(assert (=> d!511899 (= (isDefined!2902 lt!637414) (not (isEmpty!11524 lt!637414)))))

(declare-fun bs!399284 () Bool)

(assert (= bs!399284 d!511899))

(declare-fun m!2062305 () Bool)

(assert (=> bs!399284 m!2062305))

(assert (=> b!1682593 d!511899))

(declare-fun lt!637540 () Token!6062)

(declare-fun e!1077403 () Bool)

(declare-fun b!1682707 () Bool)

(declare-datatypes ((Option!3555 0))(
  ( (None!3554) (Some!3554 (v!24865 Rule!6296)) )
))
(declare-fun get!5407 (Option!3555) Rule!6296)

(declare-fun getRuleFromTag!341 (LexerInterface!2877 List!18517 String!21024) Option!3555)

(assert (=> b!1682707 (= e!1077403 (= (rule!5148 lt!637540) (get!5407 (getRuleFromTag!341 thiss!17113 rules!1846 (tag!3536 (rule!5148 lt!637540))))))))

(declare-fun b!1682709 () Bool)

(declare-fun e!1077404 () Unit!31682)

(declare-fun Unit!31687 () Unit!31682)

(assert (=> b!1682709 (= e!1077404 Unit!31687)))

(declare-fun d!511901 () Bool)

(assert (=> d!511901 (isDefined!2902 (maxPrefix!1437 thiss!17113 rules!1846 (++!5044 lt!637402 lt!637407)))))

(declare-fun lt!637542 () Unit!31682)

(assert (=> d!511901 (= lt!637542 e!1077404)))

(declare-fun c!274710 () Bool)

(assert (=> d!511901 (= c!274710 (isEmpty!11524 (maxPrefix!1437 thiss!17113 rules!1846 (++!5044 lt!637402 lt!637407))))))

(declare-fun lt!637535 () Unit!31682)

(declare-fun lt!637536 () Unit!31682)

(assert (=> d!511901 (= lt!637535 lt!637536)))

(assert (=> d!511901 e!1077403))

(declare-fun res!754232 () Bool)

(assert (=> d!511901 (=> (not res!754232) (not e!1077403))))

(declare-fun isDefined!2904 (Option!3555) Bool)

(assert (=> d!511901 (= res!754232 (isDefined!2904 (getRuleFromTag!341 thiss!17113 rules!1846 (tag!3536 (rule!5148 lt!637540)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!341 (LexerInterface!2877 List!18517 List!18516 Token!6062) Unit!31682)

(assert (=> d!511901 (= lt!637536 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!341 thiss!17113 rules!1846 lt!637402 lt!637540))))

(declare-fun lt!637538 () Unit!31682)

(declare-fun lt!637547 () Unit!31682)

(assert (=> d!511901 (= lt!637538 lt!637547)))

(declare-fun lt!637551 () List!18516)

(assert (=> d!511901 (isPrefix!1506 lt!637551 (++!5044 lt!637402 lt!637407))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!227 (List!18516 List!18516 List!18516) Unit!31682)

(assert (=> d!511901 (= lt!637547 (lemmaPrefixStaysPrefixWhenAddingToSuffix!227 lt!637551 lt!637402 lt!637407))))

(assert (=> d!511901 (= lt!637551 (list!7406 (charsOf!1897 lt!637540)))))

(declare-fun lt!637546 () Unit!31682)

(declare-fun lt!637541 () Unit!31682)

(assert (=> d!511901 (= lt!637546 lt!637541)))

(declare-fun lt!637550 () List!18516)

(declare-fun lt!637539 () List!18516)

(assert (=> d!511901 (isPrefix!1506 lt!637550 (++!5044 lt!637550 lt!637539))))

(assert (=> d!511901 (= lt!637541 (lemmaConcatTwoListThenFirstIsPrefix!1027 lt!637550 lt!637539))))

(declare-fun get!5408 (Option!3553) tuple2!18182)

(assert (=> d!511901 (= lt!637539 (_2!10493 (get!5408 (maxPrefix!1437 thiss!17113 rules!1846 lt!637402))))))

(assert (=> d!511901 (= lt!637550 (list!7406 (charsOf!1897 lt!637540)))))

(declare-fun head!3760 (List!18518) Token!6062)

(assert (=> d!511901 (= lt!637540 (head!3760 (list!7405 (_1!10492 (lex!1361 thiss!17113 rules!1846 (seqFromList!2234 lt!637402))))))))

(assert (=> d!511901 (not (isEmpty!11520 rules!1846))))

(assert (=> d!511901 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!439 thiss!17113 rules!1846 lt!637402 lt!637407) lt!637542)))

(declare-fun b!1682708 () Bool)

(declare-fun Unit!31688 () Unit!31682)

(assert (=> b!1682708 (= e!1077404 Unit!31688)))

(declare-fun lt!637545 () List!18516)

(assert (=> b!1682708 (= lt!637545 (++!5044 lt!637402 lt!637407))))

(declare-fun lt!637549 () Unit!31682)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!235 (LexerInterface!2877 Rule!6296 List!18517 List!18516) Unit!31682)

(assert (=> b!1682708 (= lt!637549 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!235 thiss!17113 (rule!5148 lt!637540) rules!1846 lt!637545))))

(declare-fun maxPrefixOneRule!840 (LexerInterface!2877 Rule!6296 List!18516) Option!3553)

(assert (=> b!1682708 (isEmpty!11524 (maxPrefixOneRule!840 thiss!17113 (rule!5148 lt!637540) lt!637545))))

(declare-fun lt!637537 () Unit!31682)

(assert (=> b!1682708 (= lt!637537 lt!637549)))

(declare-fun lt!637548 () List!18516)

(assert (=> b!1682708 (= lt!637548 (list!7406 (charsOf!1897 lt!637540)))))

(declare-fun lt!637544 () Unit!31682)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!231 (LexerInterface!2877 Rule!6296 List!18516 List!18516) Unit!31682)

(assert (=> b!1682708 (= lt!637544 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!231 thiss!17113 (rule!5148 lt!637540) lt!637548 (++!5044 lt!637402 lt!637407)))))

(declare-fun matchR!2067 (Regex!4576 List!18516) Bool)

(assert (=> b!1682708 (not (matchR!2067 (regex!3248 (rule!5148 lt!637540)) lt!637548))))

(declare-fun lt!637543 () Unit!31682)

(assert (=> b!1682708 (= lt!637543 lt!637544)))

(assert (=> b!1682708 false))

(declare-fun b!1682706 () Bool)

(declare-fun res!754231 () Bool)

(assert (=> b!1682706 (=> (not res!754231) (not e!1077403))))

(assert (=> b!1682706 (= res!754231 (matchR!2067 (regex!3248 (get!5407 (getRuleFromTag!341 thiss!17113 rules!1846 (tag!3536 (rule!5148 lt!637540))))) (list!7406 (charsOf!1897 lt!637540))))))

(assert (= (and d!511901 res!754232) b!1682706))

(assert (= (and b!1682706 res!754231) b!1682707))

(assert (= (and d!511901 c!274710) b!1682708))

(assert (= (and d!511901 (not c!274710)) b!1682709))

(declare-fun m!2062341 () Bool)

(assert (=> b!1682707 m!2062341))

(assert (=> b!1682707 m!2062341))

(declare-fun m!2062343 () Bool)

(assert (=> b!1682707 m!2062343))

(assert (=> d!511901 m!2062341))

(declare-fun m!2062345 () Bool)

(assert (=> d!511901 m!2062345))

(assert (=> d!511901 m!2062163))

(assert (=> d!511901 m!2062107))

(declare-fun m!2062347 () Bool)

(assert (=> d!511901 m!2062347))

(assert (=> d!511901 m!2062107))

(declare-fun m!2062349 () Bool)

(assert (=> d!511901 m!2062349))

(declare-fun m!2062351 () Bool)

(assert (=> d!511901 m!2062351))

(declare-fun m!2062353 () Bool)

(assert (=> d!511901 m!2062353))

(declare-fun m!2062355 () Bool)

(assert (=> d!511901 m!2062355))

(declare-fun m!2062357 () Bool)

(assert (=> d!511901 m!2062357))

(declare-fun m!2062359 () Bool)

(assert (=> d!511901 m!2062359))

(declare-fun m!2062361 () Bool)

(assert (=> d!511901 m!2062361))

(declare-fun m!2062363 () Bool)

(assert (=> d!511901 m!2062363))

(assert (=> d!511901 m!2062357))

(assert (=> d!511901 m!2062163))

(assert (=> d!511901 m!2062165))

(declare-fun m!2062365 () Bool)

(assert (=> d!511901 m!2062365))

(assert (=> d!511901 m!2062353))

(declare-fun m!2062367 () Bool)

(assert (=> d!511901 m!2062367))

(assert (=> d!511901 m!2062115))

(declare-fun m!2062369 () Bool)

(assert (=> d!511901 m!2062369))

(assert (=> d!511901 m!2062361))

(assert (=> d!511901 m!2062349))

(declare-fun m!2062371 () Bool)

(assert (=> d!511901 m!2062371))

(declare-fun m!2062373 () Bool)

(assert (=> d!511901 m!2062373))

(assert (=> d!511901 m!2062341))

(assert (=> d!511901 m!2062367))

(declare-fun m!2062375 () Bool)

(assert (=> d!511901 m!2062375))

(assert (=> d!511901 m!2062107))

(assert (=> d!511901 m!2062349))

(declare-fun m!2062377 () Bool)

(assert (=> b!1682708 m!2062377))

(assert (=> b!1682708 m!2062107))

(declare-fun m!2062379 () Bool)

(assert (=> b!1682708 m!2062379))

(assert (=> b!1682708 m!2062357))

(assert (=> b!1682708 m!2062359))

(assert (=> b!1682708 m!2062357))

(assert (=> b!1682708 m!2062107))

(declare-fun m!2062381 () Bool)

(assert (=> b!1682708 m!2062381))

(declare-fun m!2062383 () Bool)

(assert (=> b!1682708 m!2062383))

(assert (=> b!1682708 m!2062377))

(declare-fun m!2062385 () Bool)

(assert (=> b!1682708 m!2062385))

(assert (=> b!1682706 m!2062341))

(assert (=> b!1682706 m!2062343))

(assert (=> b!1682706 m!2062341))

(assert (=> b!1682706 m!2062357))

(assert (=> b!1682706 m!2062359))

(assert (=> b!1682706 m!2062357))

(assert (=> b!1682706 m!2062359))

(declare-fun m!2062387 () Bool)

(assert (=> b!1682706 m!2062387))

(assert (=> b!1682593 d!511901))

(declare-fun d!511913 () Bool)

(assert (=> d!511913 (= (isEmpty!11520 rules!1846) (is-Nil!18447 rules!1846))))

(assert (=> b!1682582 d!511913))

(declare-fun d!511915 () Bool)

(assert (=> d!511915 (= (inv!23809 (tag!3536 (rule!5148 (h!23849 tokens!457)))) (= (mod (str.len (value!102241 (tag!3536 (rule!5148 (h!23849 tokens!457))))) 2) 0))))

(assert (=> b!1682592 d!511915))

(declare-fun d!511917 () Bool)

(declare-fun res!754235 () Bool)

(declare-fun e!1077407 () Bool)

(assert (=> d!511917 (=> (not res!754235) (not e!1077407))))

(declare-fun semiInverseModEq!1273 (Int Int) Bool)

(assert (=> d!511917 (= res!754235 (semiInverseModEq!1273 (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457)))) (toValue!4723 (transformation!3248 (rule!5148 (h!23849 tokens!457))))))))

(assert (=> d!511917 (= (inv!23813 (transformation!3248 (rule!5148 (h!23849 tokens!457)))) e!1077407)))

(declare-fun b!1682712 () Bool)

(declare-fun equivClasses!1214 (Int Int) Bool)

(assert (=> b!1682712 (= e!1077407 (equivClasses!1214 (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457)))) (toValue!4723 (transformation!3248 (rule!5148 (h!23849 tokens!457))))))))

(assert (= (and d!511917 res!754235) b!1682712))

(declare-fun m!2062389 () Bool)

(assert (=> d!511917 m!2062389))

(declare-fun m!2062391 () Bool)

(assert (=> b!1682712 m!2062391))

(assert (=> b!1682592 d!511917))

(declare-fun b!1682771 () Bool)

(declare-fun e!1077447 () Bool)

(assert (=> b!1682771 (= e!1077447 true)))

(declare-fun b!1682770 () Bool)

(declare-fun e!1077446 () Bool)

(assert (=> b!1682770 (= e!1077446 e!1077447)))

(declare-fun b!1682769 () Bool)

(declare-fun e!1077445 () Bool)

(assert (=> b!1682769 (= e!1077445 e!1077446)))

(declare-fun d!511919 () Bool)

(assert (=> d!511919 e!1077445))

(assert (= b!1682770 b!1682771))

(assert (= b!1682769 b!1682770))

(assert (= (and d!511919 (is-Cons!18447 rules!1846)) b!1682769))

(declare-fun order!11115 () Int)

(declare-fun order!11113 () Int)

(declare-fun lambda!68256 () Int)

(declare-fun dynLambda!8352 (Int Int) Int)

(declare-fun dynLambda!8353 (Int Int) Int)

(assert (=> b!1682771 (< (dynLambda!8352 order!11113 (toValue!4723 (transformation!3248 (h!23848 rules!1846)))) (dynLambda!8353 order!11115 lambda!68256))))

(declare-fun order!11117 () Int)

(declare-fun dynLambda!8354 (Int Int) Int)

(assert (=> b!1682771 (< (dynLambda!8354 order!11117 (toChars!4582 (transformation!3248 (h!23848 rules!1846)))) (dynLambda!8353 order!11115 lambda!68256))))

(assert (=> d!511919 true))

(declare-fun lt!637611 () Bool)

(declare-fun forall!4201 (List!18518 Int) Bool)

(assert (=> d!511919 (= lt!637611 (forall!4201 tokens!457 lambda!68256))))

(declare-fun e!1077438 () Bool)

(assert (=> d!511919 (= lt!637611 e!1077438)))

(declare-fun res!754276 () Bool)

(assert (=> d!511919 (=> res!754276 e!1077438)))

(assert (=> d!511919 (= res!754276 (not (is-Cons!18448 tokens!457)))))

(assert (=> d!511919 (not (isEmpty!11520 rules!1846))))

(assert (=> d!511919 (= (rulesProduceEachTokenIndividuallyList!1079 thiss!17113 rules!1846 tokens!457) lt!637611)))

(declare-fun b!1682759 () Bool)

(declare-fun e!1077437 () Bool)

(assert (=> b!1682759 (= e!1077438 e!1077437)))

(declare-fun res!754277 () Bool)

(assert (=> b!1682759 (=> (not res!754277) (not e!1077437))))

(assert (=> b!1682759 (= res!754277 (rulesProduceIndividualToken!1525 thiss!17113 rules!1846 (h!23849 tokens!457)))))

(declare-fun b!1682760 () Bool)

(assert (=> b!1682760 (= e!1077437 (rulesProduceEachTokenIndividuallyList!1079 thiss!17113 rules!1846 (t!154453 tokens!457)))))

(assert (= (and d!511919 (not res!754276)) b!1682759))

(assert (= (and b!1682759 res!754277) b!1682760))

(declare-fun m!2062523 () Bool)

(assert (=> d!511919 m!2062523))

(assert (=> d!511919 m!2062115))

(assert (=> b!1682759 m!2062109))

(declare-fun m!2062525 () Bool)

(assert (=> b!1682760 m!2062525))

(assert (=> b!1682581 d!511919))

(declare-fun d!511957 () Bool)

(assert (=> d!511957 (= (inv!23809 (tag!3536 (h!23848 rules!1846))) (= (mod (str.len (value!102241 (tag!3536 (h!23848 rules!1846)))) 2) 0))))

(assert (=> b!1682591 d!511957))

(declare-fun d!511959 () Bool)

(declare-fun res!754278 () Bool)

(declare-fun e!1077448 () Bool)

(assert (=> d!511959 (=> (not res!754278) (not e!1077448))))

(assert (=> d!511959 (= res!754278 (semiInverseModEq!1273 (toChars!4582 (transformation!3248 (h!23848 rules!1846))) (toValue!4723 (transformation!3248 (h!23848 rules!1846)))))))

(assert (=> d!511959 (= (inv!23813 (transformation!3248 (h!23848 rules!1846))) e!1077448)))

(declare-fun b!1682774 () Bool)

(assert (=> b!1682774 (= e!1077448 (equivClasses!1214 (toChars!4582 (transformation!3248 (h!23848 rules!1846))) (toValue!4723 (transformation!3248 (h!23848 rules!1846)))))))

(assert (= (and d!511959 res!754278) b!1682774))

(declare-fun m!2062527 () Bool)

(assert (=> d!511959 m!2062527))

(declare-fun m!2062529 () Bool)

(assert (=> b!1682774 m!2062529))

(assert (=> b!1682591 d!511959))

(declare-fun d!511961 () Bool)

(declare-fun e!1077457 () Bool)

(assert (=> d!511961 e!1077457))

(declare-fun res!754287 () Bool)

(assert (=> d!511961 (=> (not res!754287) (not e!1077457))))

(declare-fun isBalanced!1919 (Conc!6145) Bool)

(declare-fun prepend!842 (Conc!6145 Token!6062) Conc!6145)

(assert (=> d!511961 (= res!754287 (isBalanced!1919 (prepend!842 (c!274697 (seqFromList!2233 (t!154453 (t!154453 tokens!457)))) (h!23849 (t!154453 tokens!457)))))))

(declare-fun lt!637616 () BalanceConc!12234)

(assert (=> d!511961 (= lt!637616 (BalanceConc!12235 (prepend!842 (c!274697 (seqFromList!2233 (t!154453 (t!154453 tokens!457)))) (h!23849 (t!154453 tokens!457)))))))

(assert (=> d!511961 (= (prepend!840 (seqFromList!2233 (t!154453 (t!154453 tokens!457))) (h!23849 (t!154453 tokens!457))) lt!637616)))

(declare-fun b!1682787 () Bool)

(assert (=> b!1682787 (= e!1077457 (= (list!7405 lt!637616) (Cons!18448 (h!23849 (t!154453 tokens!457)) (list!7405 (seqFromList!2233 (t!154453 (t!154453 tokens!457)))))))))

(assert (= (and d!511961 res!754287) b!1682787))

(declare-fun m!2062531 () Bool)

(assert (=> d!511961 m!2062531))

(assert (=> d!511961 m!2062531))

(declare-fun m!2062533 () Bool)

(assert (=> d!511961 m!2062533))

(declare-fun m!2062535 () Bool)

(assert (=> b!1682787 m!2062535))

(assert (=> b!1682787 m!2062123))

(declare-fun m!2062537 () Bool)

(assert (=> b!1682787 m!2062537))

(assert (=> b!1682580 d!511961))

(declare-fun d!511963 () Bool)

(declare-fun list!7409 (Conc!6145) List!18518)

(assert (=> d!511963 (= (list!7405 (prepend!840 (seqFromList!2233 (t!154453 (t!154453 tokens!457))) (h!23849 (t!154453 tokens!457)))) (list!7409 (c!274697 (prepend!840 (seqFromList!2233 (t!154453 (t!154453 tokens!457))) (h!23849 (t!154453 tokens!457))))))))

(declare-fun bs!399294 () Bool)

(assert (= bs!399294 d!511963))

(declare-fun m!2062539 () Bool)

(assert (=> bs!399294 m!2062539))

(assert (=> b!1682580 d!511963))

(declare-fun d!511965 () Bool)

(declare-fun fromListB!1020 (List!18518) BalanceConc!12234)

(assert (=> d!511965 (= (seqFromList!2233 (t!154453 (t!154453 tokens!457))) (fromListB!1020 (t!154453 (t!154453 tokens!457))))))

(declare-fun bs!399295 () Bool)

(assert (= bs!399295 d!511965))

(declare-fun m!2062559 () Bool)

(assert (=> bs!399295 m!2062559))

(assert (=> b!1682580 d!511965))

(declare-fun d!511969 () Bool)

(assert (=> d!511969 (= (list!7405 lt!637401) (list!7409 (c!274697 lt!637401)))))

(declare-fun bs!399296 () Bool)

(assert (= bs!399296 d!511969))

(declare-fun m!2062561 () Bool)

(assert (=> bs!399296 m!2062561))

(assert (=> b!1682580 d!511969))

(declare-fun d!511971 () Bool)

(assert (=> d!511971 (= (list!7405 (_1!10492 lt!637421)) (list!7405 (prepend!840 (seqFromList!2233 (t!154453 (t!154453 tokens!457))) (h!23849 (t!154453 tokens!457)))))))

(declare-fun lt!637620 () Unit!31682)

(declare-fun choose!10166 (Token!6062 List!18518 BalanceConc!12234) Unit!31682)

(assert (=> d!511971 (= lt!637620 (choose!10166 (h!23849 (t!154453 tokens!457)) (t!154453 (t!154453 tokens!457)) (_1!10492 lt!637421)))))

(declare-fun $colon$colon!401 (List!18518 Token!6062) List!18518)

(assert (=> d!511971 (= (list!7405 (_1!10492 lt!637421)) (list!7405 (seqFromList!2233 ($colon$colon!401 (t!154453 (t!154453 tokens!457)) (h!23849 (t!154453 tokens!457))))))))

(assert (=> d!511971 (= (seqFromListBHdTlConstructive!317 (h!23849 (t!154453 tokens!457)) (t!154453 (t!154453 tokens!457)) (_1!10492 lt!637421)) lt!637620)))

(declare-fun bs!399298 () Bool)

(assert (= bs!399298 d!511971))

(assert (=> bs!399298 m!2062123))

(assert (=> bs!399298 m!2062119))

(declare-fun m!2062565 () Bool)

(assert (=> bs!399298 m!2062565))

(declare-fun m!2062567 () Bool)

(assert (=> bs!399298 m!2062567))

(assert (=> bs!399298 m!2062119))

(assert (=> bs!399298 m!2062121))

(assert (=> bs!399298 m!2062177))

(declare-fun m!2062569 () Bool)

(assert (=> bs!399298 m!2062569))

(assert (=> bs!399298 m!2062123))

(assert (=> bs!399298 m!2062565))

(assert (=> bs!399298 m!2062567))

(declare-fun m!2062571 () Bool)

(assert (=> bs!399298 m!2062571))

(assert (=> b!1682580 d!511971))

(declare-fun d!511975 () Bool)

(declare-fun lt!637623 () C!9326)

(assert (=> d!511975 (= lt!637623 (head!3756 (list!7406 lt!637422)))))

(declare-fun head!3761 (Conc!6144) C!9326)

(assert (=> d!511975 (= lt!637623 (head!3761 (c!274695 lt!637422)))))

(declare-fun isEmpty!11525 (BalanceConc!12232) Bool)

(assert (=> d!511975 (not (isEmpty!11525 lt!637422))))

(assert (=> d!511975 (= (head!3757 lt!637422) lt!637623)))

(declare-fun bs!399299 () Bool)

(assert (= bs!399299 d!511975))

(assert (=> bs!399299 m!2062089))

(assert (=> bs!399299 m!2062089))

(declare-fun m!2062573 () Bool)

(assert (=> bs!399299 m!2062573))

(declare-fun m!2062575 () Bool)

(assert (=> bs!399299 m!2062575))

(declare-fun m!2062577 () Bool)

(assert (=> bs!399299 m!2062577))

(assert (=> b!1682601 d!511975))

(declare-fun d!511977 () Bool)

(declare-fun res!754295 () Bool)

(declare-fun e!1077463 () Bool)

(assert (=> d!511977 (=> (not res!754295) (not e!1077463))))

(declare-fun isEmpty!11526 (List!18516) Bool)

(assert (=> d!511977 (= res!754295 (not (isEmpty!11526 (originalCharacters!4062 (h!23849 tokens!457)))))))

(assert (=> d!511977 (= (inv!23812 (h!23849 tokens!457)) e!1077463)))

(declare-fun b!1682797 () Bool)

(declare-fun res!754296 () Bool)

(assert (=> b!1682797 (=> (not res!754296) (not e!1077463))))

(declare-fun dynLambda!8355 (Int TokenValue!3338) BalanceConc!12232)

(assert (=> b!1682797 (= res!754296 (= (originalCharacters!4062 (h!23849 tokens!457)) (list!7406 (dynLambda!8355 (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457)))) (value!102242 (h!23849 tokens!457))))))))

(declare-fun b!1682798 () Bool)

(declare-fun size!14693 (List!18516) Int)

(assert (=> b!1682798 (= e!1077463 (= (size!14691 (h!23849 tokens!457)) (size!14693 (originalCharacters!4062 (h!23849 tokens!457)))))))

(assert (= (and d!511977 res!754295) b!1682797))

(assert (= (and b!1682797 res!754296) b!1682798))

(declare-fun b_lambda!52929 () Bool)

(assert (=> (not b_lambda!52929) (not b!1682797)))

(declare-fun t!154471 () Bool)

(declare-fun tb!97575 () Bool)

(assert (=> (and b!1682588 (= (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457)))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457))))) t!154471) tb!97575))

(declare-fun b!1682803 () Bool)

(declare-fun e!1077466 () Bool)

(declare-fun tp!483773 () Bool)

(declare-fun inv!23816 (Conc!6144) Bool)

(assert (=> b!1682803 (= e!1077466 (and (inv!23816 (c!274695 (dynLambda!8355 (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457)))) (value!102242 (h!23849 tokens!457))))) tp!483773))))

(declare-fun result!117612 () Bool)

(declare-fun inv!23817 (BalanceConc!12232) Bool)

(assert (=> tb!97575 (= result!117612 (and (inv!23817 (dynLambda!8355 (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457)))) (value!102242 (h!23849 tokens!457)))) e!1077466))))

(assert (= tb!97575 b!1682803))

(declare-fun m!2062579 () Bool)

(assert (=> b!1682803 m!2062579))

(declare-fun m!2062581 () Bool)

(assert (=> tb!97575 m!2062581))

(assert (=> b!1682797 t!154471))

(declare-fun b_and!120261 () Bool)

(assert (= b_and!120239 (and (=> t!154471 result!117612) b_and!120261)))

(declare-fun tb!97577 () Bool)

(declare-fun t!154473 () Bool)

(assert (=> (and b!1682587 (= (toChars!4582 (transformation!3248 (h!23848 rules!1846))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457))))) t!154473) tb!97577))

(declare-fun result!117616 () Bool)

(assert (= result!117616 result!117612))

(assert (=> b!1682797 t!154473))

(declare-fun b_and!120263 () Bool)

(assert (= b_and!120243 (and (=> t!154473 result!117616) b_and!120263)))

(declare-fun m!2062583 () Bool)

(assert (=> d!511977 m!2062583))

(declare-fun m!2062585 () Bool)

(assert (=> b!1682797 m!2062585))

(assert (=> b!1682797 m!2062585))

(declare-fun m!2062587 () Bool)

(assert (=> b!1682797 m!2062587))

(declare-fun m!2062589 () Bool)

(assert (=> b!1682798 m!2062589))

(assert (=> b!1682590 d!511977))

(declare-fun d!511979 () Bool)

(declare-fun res!754299 () Bool)

(declare-fun e!1077469 () Bool)

(assert (=> d!511979 (=> (not res!754299) (not e!1077469))))

(declare-fun rulesValid!1201 (LexerInterface!2877 List!18517) Bool)

(assert (=> d!511979 (= res!754299 (rulesValid!1201 thiss!17113 rules!1846))))

(assert (=> d!511979 (= (rulesInvariant!2546 thiss!17113 rules!1846) e!1077469)))

(declare-fun b!1682806 () Bool)

(declare-datatypes ((List!18523 0))(
  ( (Nil!18453) (Cons!18453 (h!23854 String!21024) (t!154492 List!18523)) )
))
(declare-fun noDuplicateTag!1201 (LexerInterface!2877 List!18517 List!18523) Bool)

(assert (=> b!1682806 (= e!1077469 (noDuplicateTag!1201 thiss!17113 rules!1846 Nil!18453))))

(assert (= (and d!511979 res!754299) b!1682806))

(declare-fun m!2062591 () Bool)

(assert (=> d!511979 m!2062591))

(declare-fun m!2062593 () Bool)

(assert (=> b!1682806 m!2062593))

(assert (=> b!1682579 d!511979))

(declare-fun d!511981 () Bool)

(assert (=> d!511981 (= (list!7405 (_1!10492 lt!637421)) (list!7409 (c!274697 (_1!10492 lt!637421))))))

(declare-fun bs!399300 () Bool)

(assert (= bs!399300 d!511981))

(declare-fun m!2062595 () Bool)

(assert (=> bs!399300 m!2062595))

(assert (=> b!1682600 d!511981))

(declare-fun d!511983 () Bool)

(declare-fun e!1077478 () Bool)

(assert (=> d!511983 e!1077478))

(declare-fun res!754306 () Bool)

(assert (=> d!511983 (=> (not res!754306) (not e!1077478))))

(assert (=> d!511983 (= res!754306 (= (list!7405 (_1!10492 (lex!1361 thiss!17113 rules!1846 (print!1408 thiss!17113 (seqFromList!2233 (t!154453 tokens!457)))))) (t!154453 tokens!457)))))

(declare-fun lt!637701 () Unit!31682)

(declare-fun e!1077479 () Unit!31682)

(assert (=> d!511983 (= lt!637701 e!1077479)))

(declare-fun c!274721 () Bool)

(assert (=> d!511983 (= c!274721 (or (is-Nil!18448 (t!154453 tokens!457)) (is-Nil!18448 (t!154453 (t!154453 tokens!457)))))))

(assert (=> d!511983 (not (isEmpty!11520 rules!1846))))

(assert (=> d!511983 (= (theoremInvertabilityWhenTokenListSeparable!314 thiss!17113 rules!1846 (t!154453 tokens!457)) lt!637701)))

(declare-fun b!1682817 () Bool)

(declare-fun Unit!31689 () Unit!31682)

(assert (=> b!1682817 (= e!1077479 Unit!31689)))

(declare-fun b!1682818 () Bool)

(declare-fun Unit!31690 () Unit!31682)

(assert (=> b!1682818 (= e!1077479 Unit!31690)))

(declare-fun lt!637700 () BalanceConc!12232)

(assert (=> b!1682818 (= lt!637700 (print!1408 thiss!17113 (seqFromList!2233 (t!154453 tokens!457))))))

(declare-fun lt!637690 () BalanceConc!12232)

(assert (=> b!1682818 (= lt!637690 (print!1408 thiss!17113 (seqFromList!2233 (t!154453 (t!154453 tokens!457)))))))

(declare-fun lt!637689 () tuple2!18180)

(assert (=> b!1682818 (= lt!637689 (lex!1361 thiss!17113 rules!1846 lt!637690))))

(declare-fun lt!637695 () List!18516)

(assert (=> b!1682818 (= lt!637695 (list!7406 (charsOf!1897 (h!23849 (t!154453 tokens!457)))))))

(declare-fun lt!637691 () List!18516)

(assert (=> b!1682818 (= lt!637691 (list!7406 lt!637690))))

(declare-fun lt!637687 () Unit!31682)

(assert (=> b!1682818 (= lt!637687 (lemmaConcatTwoListThenFirstIsPrefix!1027 lt!637695 lt!637691))))

(assert (=> b!1682818 (isPrefix!1506 lt!637695 (++!5044 lt!637695 lt!637691))))

(declare-fun lt!637703 () Unit!31682)

(assert (=> b!1682818 (= lt!637703 lt!637687)))

(declare-fun lt!637699 () Unit!31682)

(assert (=> b!1682818 (= lt!637699 (theoremInvertabilityWhenTokenListSeparable!314 thiss!17113 rules!1846 (t!154453 (t!154453 tokens!457))))))

(declare-fun lt!637692 () Unit!31682)

(assert (=> b!1682818 (= lt!637692 (seqFromListBHdTlConstructive!317 (h!23849 (t!154453 (t!154453 tokens!457))) (t!154453 (t!154453 (t!154453 tokens!457))) (_1!10492 lt!637689)))))

(assert (=> b!1682818 (= (list!7405 (_1!10492 lt!637689)) (list!7405 (prepend!840 (seqFromList!2233 (t!154453 (t!154453 (t!154453 tokens!457)))) (h!23849 (t!154453 (t!154453 tokens!457))))))))

(declare-fun lt!637680 () Unit!31682)

(assert (=> b!1682818 (= lt!637680 lt!637692)))

(declare-fun lt!637694 () Option!3553)

(assert (=> b!1682818 (= lt!637694 (maxPrefix!1437 thiss!17113 rules!1846 (list!7406 lt!637700)))))

(assert (=> b!1682818 (= (print!1408 thiss!17113 (singletonSeq!1765 (h!23849 (t!154453 tokens!457)))) (printTailRec!928 thiss!17113 (singletonSeq!1765 (h!23849 (t!154453 tokens!457))) 0 (BalanceConc!12233 Empty!6144)))))

(declare-fun lt!637678 () Unit!31682)

(declare-fun Unit!31691 () Unit!31682)

(assert (=> b!1682818 (= lt!637678 Unit!31691)))

(declare-fun lt!637702 () Unit!31682)

(assert (=> b!1682818 (= lt!637702 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!439 thiss!17113 rules!1846 (list!7406 (charsOf!1897 (h!23849 (t!154453 tokens!457)))) (list!7406 lt!637690)))))

(assert (=> b!1682818 (= (list!7406 (charsOf!1897 (h!23849 (t!154453 tokens!457)))) (originalCharacters!4062 (h!23849 (t!154453 tokens!457))))))

(declare-fun lt!637682 () Unit!31682)

(declare-fun Unit!31692 () Unit!31682)

(assert (=> b!1682818 (= lt!637682 Unit!31692)))

(assert (=> b!1682818 (= (list!7406 (singletonSeq!1764 (apply!5005 (charsOf!1897 (h!23849 (t!154453 (t!154453 tokens!457)))) 0))) (Cons!18446 (head!3756 (originalCharacters!4062 (h!23849 (t!154453 (t!154453 tokens!457))))) Nil!18446))))

(declare-fun lt!637686 () Unit!31682)

(declare-fun Unit!31693 () Unit!31682)

(assert (=> b!1682818 (= lt!637686 Unit!31693)))

(assert (=> b!1682818 (= (list!7406 (singletonSeq!1764 (apply!5005 (charsOf!1897 (h!23849 (t!154453 (t!154453 tokens!457)))) 0))) (Cons!18446 (head!3756 (list!7406 lt!637690)) Nil!18446))))

(declare-fun lt!637697 () Unit!31682)

(declare-fun Unit!31694 () Unit!31682)

(assert (=> b!1682818 (= lt!637697 Unit!31694)))

(assert (=> b!1682818 (= (list!7406 (singletonSeq!1764 (apply!5005 (charsOf!1897 (h!23849 (t!154453 (t!154453 tokens!457)))) 0))) (Cons!18446 (head!3757 lt!637690) Nil!18446))))

(declare-fun lt!637696 () Unit!31682)

(declare-fun Unit!31695 () Unit!31682)

(assert (=> b!1682818 (= lt!637696 Unit!31695)))

(assert (=> b!1682818 (isDefined!2902 (maxPrefix!1437 thiss!17113 rules!1846 (originalCharacters!4062 (h!23849 (t!154453 tokens!457)))))))

(declare-fun lt!637698 () Unit!31682)

(declare-fun Unit!31696 () Unit!31682)

(assert (=> b!1682818 (= lt!637698 Unit!31696)))

(assert (=> b!1682818 (isDefined!2902 (maxPrefix!1437 thiss!17113 rules!1846 (list!7406 (charsOf!1897 (h!23849 (t!154453 tokens!457))))))))

(declare-fun lt!637684 () Unit!31682)

(declare-fun Unit!31697 () Unit!31682)

(assert (=> b!1682818 (= lt!637684 Unit!31697)))

(declare-fun lt!637685 () Unit!31682)

(declare-fun Unit!31698 () Unit!31682)

(assert (=> b!1682818 (= lt!637685 Unit!31698)))

(assert (=> b!1682818 (= (_1!10493 (get!5408 (maxPrefix!1437 thiss!17113 rules!1846 (list!7406 (charsOf!1897 (h!23849 (t!154453 tokens!457))))))) (h!23849 (t!154453 tokens!457)))))

(declare-fun lt!637681 () Unit!31682)

(declare-fun Unit!31699 () Unit!31682)

(assert (=> b!1682818 (= lt!637681 Unit!31699)))

(assert (=> b!1682818 (isEmpty!11526 (_2!10493 (get!5408 (maxPrefix!1437 thiss!17113 rules!1846 (list!7406 (charsOf!1897 (h!23849 (t!154453 tokens!457))))))))))

(declare-fun lt!637679 () Unit!31682)

(declare-fun Unit!31700 () Unit!31682)

(assert (=> b!1682818 (= lt!637679 Unit!31700)))

(assert (=> b!1682818 (matchR!2067 (regex!3248 (rule!5148 (h!23849 (t!154453 tokens!457)))) (list!7406 (charsOf!1897 (h!23849 (t!154453 tokens!457)))))))

(declare-fun lt!637693 () Unit!31682)

(declare-fun Unit!31701 () Unit!31682)

(assert (=> b!1682818 (= lt!637693 Unit!31701)))

(assert (=> b!1682818 (= (rule!5148 (h!23849 (t!154453 tokens!457))) (rule!5148 (h!23849 (t!154453 tokens!457))))))

(declare-fun lt!637683 () Unit!31682)

(declare-fun Unit!31702 () Unit!31682)

(assert (=> b!1682818 (= lt!637683 Unit!31702)))

(declare-fun lt!637688 () Unit!31682)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!197 (LexerInterface!2877 List!18517 Token!6062 Rule!6296 List!18516) Unit!31682)

(assert (=> b!1682818 (= lt!637688 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!197 thiss!17113 rules!1846 (h!23849 (t!154453 tokens!457)) (rule!5148 (h!23849 (t!154453 tokens!457))) (list!7406 lt!637690)))))

(declare-fun b!1682819 () Bool)

(assert (=> b!1682819 (= e!1077478 (isEmpty!11525 (_2!10492 (lex!1361 thiss!17113 rules!1846 (print!1408 thiss!17113 (seqFromList!2233 (t!154453 tokens!457)))))))))

(assert (= (and d!511983 c!274721) b!1682817))

(assert (= (and d!511983 (not c!274721)) b!1682818))

(assert (= (and d!511983 res!754306) b!1682819))

(assert (=> d!511983 m!2062093))

(declare-fun m!2062597 () Bool)

(assert (=> d!511983 m!2062597))

(assert (=> d!511983 m!2062597))

(declare-fun m!2062599 () Bool)

(assert (=> d!511983 m!2062599))

(assert (=> d!511983 m!2062115))

(declare-fun m!2062601 () Bool)

(assert (=> d!511983 m!2062601))

(assert (=> d!511983 m!2062093))

(declare-fun m!2062603 () Bool)

(assert (=> b!1682818 m!2062603))

(declare-fun m!2062605 () Bool)

(assert (=> b!1682818 m!2062605))

(declare-fun m!2062607 () Bool)

(assert (=> b!1682818 m!2062607))

(assert (=> b!1682818 m!2062093))

(assert (=> b!1682818 m!2062597))

(declare-fun m!2062609 () Bool)

(assert (=> b!1682818 m!2062609))

(declare-fun m!2062611 () Bool)

(assert (=> b!1682818 m!2062611))

(declare-fun m!2062613 () Bool)

(assert (=> b!1682818 m!2062613))

(declare-fun m!2062615 () Bool)

(assert (=> b!1682818 m!2062615))

(declare-fun m!2062617 () Bool)

(assert (=> b!1682818 m!2062617))

(assert (=> b!1682818 m!2062613))

(declare-fun m!2062619 () Bool)

(assert (=> b!1682818 m!2062619))

(declare-fun m!2062621 () Bool)

(assert (=> b!1682818 m!2062621))

(assert (=> b!1682818 m!2062617))

(declare-fun m!2062623 () Bool)

(assert (=> b!1682818 m!2062623))

(assert (=> b!1682818 m!2062619))

(declare-fun m!2062625 () Bool)

(assert (=> b!1682818 m!2062625))

(declare-fun m!2062627 () Bool)

(assert (=> b!1682818 m!2062627))

(declare-fun m!2062629 () Bool)

(assert (=> b!1682818 m!2062629))

(assert (=> b!1682818 m!2062605))

(declare-fun m!2062631 () Bool)

(assert (=> b!1682818 m!2062631))

(declare-fun m!2062633 () Bool)

(assert (=> b!1682818 m!2062633))

(assert (=> b!1682818 m!2062123))

(declare-fun m!2062635 () Bool)

(assert (=> b!1682818 m!2062635))

(assert (=> b!1682818 m!2062093))

(declare-fun m!2062637 () Bool)

(assert (=> b!1682818 m!2062637))

(assert (=> b!1682818 m!2062637))

(declare-fun m!2062639 () Bool)

(assert (=> b!1682818 m!2062639))

(assert (=> b!1682818 m!2062607))

(declare-fun m!2062641 () Bool)

(assert (=> b!1682818 m!2062641))

(assert (=> b!1682818 m!2062619))

(declare-fun m!2062643 () Bool)

(assert (=> b!1682818 m!2062643))

(assert (=> b!1682818 m!2062633))

(declare-fun m!2062645 () Bool)

(assert (=> b!1682818 m!2062645))

(declare-fun m!2062647 () Bool)

(assert (=> b!1682818 m!2062647))

(assert (=> b!1682818 m!2062617))

(assert (=> b!1682818 m!2062633))

(declare-fun m!2062649 () Bool)

(assert (=> b!1682818 m!2062649))

(declare-fun m!2062651 () Bool)

(assert (=> b!1682818 m!2062651))

(assert (=> b!1682818 m!2062643))

(declare-fun m!2062653 () Bool)

(assert (=> b!1682818 m!2062653))

(assert (=> b!1682818 m!2062609))

(declare-fun m!2062655 () Bool)

(assert (=> b!1682818 m!2062655))

(declare-fun m!2062657 () Bool)

(assert (=> b!1682818 m!2062657))

(declare-fun m!2062659 () Bool)

(assert (=> b!1682818 m!2062659))

(assert (=> b!1682818 m!2062603))

(declare-fun m!2062661 () Bool)

(assert (=> b!1682818 m!2062661))

(declare-fun m!2062663 () Bool)

(assert (=> b!1682818 m!2062663))

(assert (=> b!1682818 m!2062143))

(assert (=> b!1682818 m!2062659))

(assert (=> b!1682818 m!2062143))

(assert (=> b!1682818 m!2062617))

(assert (=> b!1682818 m!2062123))

(assert (=> b!1682818 m!2062633))

(declare-fun m!2062665 () Bool)

(assert (=> b!1682818 m!2062665))

(assert (=> b!1682818 m!2062613))

(declare-fun m!2062667 () Bool)

(assert (=> b!1682818 m!2062667))

(assert (=> b!1682818 m!2062611))

(declare-fun m!2062669 () Bool)

(assert (=> b!1682818 m!2062669))

(assert (=> b!1682819 m!2062093))

(assert (=> b!1682819 m!2062093))

(assert (=> b!1682819 m!2062597))

(assert (=> b!1682819 m!2062597))

(assert (=> b!1682819 m!2062599))

(declare-fun m!2062671 () Bool)

(assert (=> b!1682819 m!2062671))

(assert (=> b!1682600 d!511983))

(declare-fun d!511985 () Bool)

(declare-fun e!1077487 () Bool)

(assert (=> d!511985 e!1077487))

(declare-fun res!754316 () Bool)

(assert (=> d!511985 (=> res!754316 e!1077487)))

(declare-fun lt!637706 () Bool)

(assert (=> d!511985 (= res!754316 (not lt!637706))))

(declare-fun e!1077488 () Bool)

(assert (=> d!511985 (= lt!637706 e!1077488)))

(declare-fun res!754318 () Bool)

(assert (=> d!511985 (=> res!754318 e!1077488)))

(assert (=> d!511985 (= res!754318 (is-Nil!18446 lt!637402))))

(assert (=> d!511985 (= (isPrefix!1506 lt!637402 lt!637415) lt!637706)))

(declare-fun b!1682830 () Bool)

(declare-fun e!1077486 () Bool)

(declare-fun tail!2507 (List!18516) List!18516)

(assert (=> b!1682830 (= e!1077486 (isPrefix!1506 (tail!2507 lt!637402) (tail!2507 lt!637415)))))

(declare-fun b!1682829 () Bool)

(declare-fun res!754315 () Bool)

(assert (=> b!1682829 (=> (not res!754315) (not e!1077486))))

(assert (=> b!1682829 (= res!754315 (= (head!3756 lt!637402) (head!3756 lt!637415)))))

(declare-fun b!1682828 () Bool)

(assert (=> b!1682828 (= e!1077488 e!1077486)))

(declare-fun res!754317 () Bool)

(assert (=> b!1682828 (=> (not res!754317) (not e!1077486))))

(assert (=> b!1682828 (= res!754317 (not (is-Nil!18446 lt!637415)))))

(declare-fun b!1682831 () Bool)

(assert (=> b!1682831 (= e!1077487 (>= (size!14693 lt!637415) (size!14693 lt!637402)))))

(assert (= (and d!511985 (not res!754318)) b!1682828))

(assert (= (and b!1682828 res!754317) b!1682829))

(assert (= (and b!1682829 res!754315) b!1682830))

(assert (= (and d!511985 (not res!754316)) b!1682831))

(declare-fun m!2062673 () Bool)

(assert (=> b!1682830 m!2062673))

(declare-fun m!2062675 () Bool)

(assert (=> b!1682830 m!2062675))

(assert (=> b!1682830 m!2062673))

(assert (=> b!1682830 m!2062675))

(declare-fun m!2062677 () Bool)

(assert (=> b!1682830 m!2062677))

(declare-fun m!2062679 () Bool)

(assert (=> b!1682829 m!2062679))

(declare-fun m!2062681 () Bool)

(assert (=> b!1682829 m!2062681))

(declare-fun m!2062683 () Bool)

(assert (=> b!1682831 m!2062683))

(declare-fun m!2062685 () Bool)

(assert (=> b!1682831 m!2062685))

(assert (=> b!1682600 d!511985))

(declare-fun d!511987 () Bool)

(assert (=> d!511987 (isPrefix!1506 lt!637402 (++!5044 lt!637402 lt!637407))))

(declare-fun lt!637709 () Unit!31682)

(declare-fun choose!10167 (List!18516 List!18516) Unit!31682)

(assert (=> d!511987 (= lt!637709 (choose!10167 lt!637402 lt!637407))))

(assert (=> d!511987 (= (lemmaConcatTwoListThenFirstIsPrefix!1027 lt!637402 lt!637407) lt!637709)))

(declare-fun bs!399301 () Bool)

(assert (= bs!399301 d!511987))

(assert (=> bs!399301 m!2062107))

(assert (=> bs!399301 m!2062107))

(declare-fun m!2062687 () Bool)

(assert (=> bs!399301 m!2062687))

(declare-fun m!2062689 () Bool)

(assert (=> bs!399301 m!2062689))

(assert (=> b!1682600 d!511987))

(declare-fun d!511989 () Bool)

(assert (=> d!511989 (= (head!3756 (originalCharacters!4062 (h!23849 (t!154453 tokens!457)))) (h!23847 (originalCharacters!4062 (h!23849 (t!154453 tokens!457)))))))

(assert (=> b!1682589 d!511989))

(declare-fun d!511991 () Bool)

(declare-fun e!1077491 () Bool)

(assert (=> d!511991 e!1077491))

(declare-fun res!754321 () Bool)

(assert (=> d!511991 (=> (not res!754321) (not e!1077491))))

(declare-fun lt!637712 () BalanceConc!12232)

(assert (=> d!511991 (= res!754321 (= (list!7406 lt!637712) (Cons!18446 (apply!5005 (charsOf!1897 (h!23849 (t!154453 tokens!457))) 0) Nil!18446)))))

(declare-fun singleton!793 (C!9326) BalanceConc!12232)

(assert (=> d!511991 (= lt!637712 (singleton!793 (apply!5005 (charsOf!1897 (h!23849 (t!154453 tokens!457))) 0)))))

(assert (=> d!511991 (= (singletonSeq!1764 (apply!5005 (charsOf!1897 (h!23849 (t!154453 tokens!457))) 0)) lt!637712)))

(declare-fun b!1682834 () Bool)

(declare-fun isBalanced!1920 (Conc!6144) Bool)

(assert (=> b!1682834 (= e!1077491 (isBalanced!1920 (c!274695 lt!637712)))))

(assert (= (and d!511991 res!754321) b!1682834))

(declare-fun m!2062691 () Bool)

(assert (=> d!511991 m!2062691))

(assert (=> d!511991 m!2062145))

(declare-fun m!2062693 () Bool)

(assert (=> d!511991 m!2062693))

(declare-fun m!2062695 () Bool)

(assert (=> b!1682834 m!2062695))

(assert (=> b!1682578 d!511991))

(declare-fun lt!637736 () Bool)

(declare-fun d!511993 () Bool)

(assert (=> d!511993 (= lt!637736 (prefixMatch!489 lt!637412 (list!7406 (++!5043 lt!637406 lt!637408))))))

(declare-datatypes ((List!18524 0))(
  ( (Nil!18454) (Cons!18454 (h!23855 Regex!4576) (t!154493 List!18524)) )
))
(declare-datatypes ((Context!1844 0))(
  ( (Context!1845 (exprs!1422 List!18524)) )
))
(declare-fun prefixMatchZipperSequence!686 ((Set Context!1844) BalanceConc!12232 Int) Bool)

(declare-fun focus!228 (Regex!4576) (Set Context!1844))

(assert (=> d!511993 (= lt!637736 (prefixMatchZipperSequence!686 (focus!228 lt!637412) (++!5043 lt!637406 lt!637408) 0))))

(declare-fun lt!637741 () Unit!31682)

(declare-fun lt!637735 () Unit!31682)

(assert (=> d!511993 (= lt!637741 lt!637735)))

(declare-fun lt!637738 () List!18516)

(declare-fun lt!637733 () (Set Context!1844))

(declare-fun prefixMatchZipper!207 ((Set Context!1844) List!18516) Bool)

(assert (=> d!511993 (= (prefixMatch!489 lt!637412 lt!637738) (prefixMatchZipper!207 lt!637733 lt!637738))))

(declare-datatypes ((List!18525 0))(
  ( (Nil!18455) (Cons!18455 (h!23856 Context!1844) (t!154494 List!18525)) )
))
(declare-fun lt!637739 () List!18525)

(declare-fun prefixMatchZipperRegexEquiv!207 ((Set Context!1844) List!18525 Regex!4576 List!18516) Unit!31682)

(assert (=> d!511993 (= lt!637735 (prefixMatchZipperRegexEquiv!207 lt!637733 lt!637739 lt!637412 lt!637738))))

(assert (=> d!511993 (= lt!637738 (list!7406 (++!5043 lt!637406 lt!637408)))))

(declare-fun toList!968 ((Set Context!1844)) List!18525)

(assert (=> d!511993 (= lt!637739 (toList!968 (focus!228 lt!637412)))))

(assert (=> d!511993 (= lt!637733 (focus!228 lt!637412))))

(declare-fun lt!637737 () Unit!31682)

(declare-fun lt!637734 () Unit!31682)

(assert (=> d!511993 (= lt!637737 lt!637734)))

(declare-fun lt!637740 () (Set Context!1844))

(declare-fun lt!637742 () Int)

(declare-fun dropList!729 (BalanceConc!12232 Int) List!18516)

(assert (=> d!511993 (= (prefixMatchZipper!207 lt!637740 (dropList!729 (++!5043 lt!637406 lt!637408) lt!637742)) (prefixMatchZipperSequence!686 lt!637740 (++!5043 lt!637406 lt!637408) lt!637742))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!207 ((Set Context!1844) BalanceConc!12232 Int) Unit!31682)

(assert (=> d!511993 (= lt!637734 (lemmaprefixMatchZipperSequenceEquivalent!207 lt!637740 (++!5043 lt!637406 lt!637408) lt!637742))))

(assert (=> d!511993 (= lt!637742 0)))

(assert (=> d!511993 (= lt!637740 (focus!228 lt!637412))))

(declare-fun validRegex!1837 (Regex!4576) Bool)

(assert (=> d!511993 (validRegex!1837 lt!637412)))

(assert (=> d!511993 (= (prefixMatchZipperSequence!684 lt!637412 (++!5043 lt!637406 lt!637408)) lt!637736)))

(declare-fun bs!399302 () Bool)

(assert (= bs!399302 d!511993))

(declare-fun m!2062697 () Bool)

(assert (=> bs!399302 m!2062697))

(assert (=> bs!399302 m!2062139))

(declare-fun m!2062699 () Bool)

(assert (=> bs!399302 m!2062699))

(declare-fun m!2062701 () Bool)

(assert (=> bs!399302 m!2062701))

(declare-fun m!2062703 () Bool)

(assert (=> bs!399302 m!2062703))

(declare-fun m!2062705 () Bool)

(assert (=> bs!399302 m!2062705))

(assert (=> bs!399302 m!2062139))

(declare-fun m!2062707 () Bool)

(assert (=> bs!399302 m!2062707))

(declare-fun m!2062709 () Bool)

(assert (=> bs!399302 m!2062709))

(assert (=> bs!399302 m!2062139))

(declare-fun m!2062711 () Bool)

(assert (=> bs!399302 m!2062711))

(declare-fun m!2062713 () Bool)

(assert (=> bs!399302 m!2062713))

(assert (=> bs!399302 m!2062697))

(declare-fun m!2062715 () Bool)

(assert (=> bs!399302 m!2062715))

(assert (=> bs!399302 m!2062139))

(assert (=> bs!399302 m!2062701))

(assert (=> bs!399302 m!2062711))

(declare-fun m!2062717 () Bool)

(assert (=> bs!399302 m!2062717))

(assert (=> bs!399302 m!2062139))

(declare-fun m!2062719 () Bool)

(assert (=> bs!399302 m!2062719))

(declare-fun m!2062721 () Bool)

(assert (=> bs!399302 m!2062721))

(assert (=> bs!399302 m!2062697))

(assert (=> b!1682578 d!511993))

(declare-fun d!511995 () Bool)

(declare-fun e!1077505 () Bool)

(assert (=> d!511995 e!1077505))

(declare-fun res!754332 () Bool)

(assert (=> d!511995 (=> (not res!754332) (not e!1077505))))

(declare-fun appendAssocInst!492 (Conc!6144 Conc!6144) Bool)

(assert (=> d!511995 (= res!754332 (appendAssocInst!492 (c!274695 lt!637406) (c!274695 lt!637408)))))

(declare-fun lt!637749 () BalanceConc!12232)

(declare-fun ++!5047 (Conc!6144 Conc!6144) Conc!6144)

(assert (=> d!511995 (= lt!637749 (BalanceConc!12233 (++!5047 (c!274695 lt!637406) (c!274695 lt!637408))))))

(assert (=> d!511995 (= (++!5043 lt!637406 lt!637408) lt!637749)))

(declare-fun b!1682859 () Bool)

(declare-fun res!754333 () Bool)

(assert (=> b!1682859 (=> (not res!754333) (not e!1077505))))

(declare-fun height!980 (Conc!6144) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1682859 (= res!754333 (<= (height!980 (++!5047 (c!274695 lt!637406) (c!274695 lt!637408))) (+ (max!0 (height!980 (c!274695 lt!637406)) (height!980 (c!274695 lt!637408))) 1)))))

(declare-fun b!1682861 () Bool)

(assert (=> b!1682861 (= e!1077505 (= (list!7406 lt!637749) (++!5044 (list!7406 lt!637406) (list!7406 lt!637408))))))

(declare-fun b!1682860 () Bool)

(declare-fun res!754334 () Bool)

(assert (=> b!1682860 (=> (not res!754334) (not e!1077505))))

(assert (=> b!1682860 (= res!754334 (>= (height!980 (++!5047 (c!274695 lt!637406) (c!274695 lt!637408))) (max!0 (height!980 (c!274695 lt!637406)) (height!980 (c!274695 lt!637408)))))))

(declare-fun b!1682858 () Bool)

(declare-fun res!754335 () Bool)

(assert (=> b!1682858 (=> (not res!754335) (not e!1077505))))

(assert (=> b!1682858 (= res!754335 (isBalanced!1920 (++!5047 (c!274695 lt!637406) (c!274695 lt!637408))))))

(assert (= (and d!511995 res!754332) b!1682858))

(assert (= (and b!1682858 res!754335) b!1682859))

(assert (= (and b!1682859 res!754333) b!1682860))

(assert (= (and b!1682860 res!754334) b!1682861))

(declare-fun m!2062733 () Bool)

(assert (=> d!511995 m!2062733))

(declare-fun m!2062735 () Bool)

(assert (=> d!511995 m!2062735))

(assert (=> b!1682860 m!2062735))

(declare-fun m!2062737 () Bool)

(assert (=> b!1682860 m!2062737))

(declare-fun m!2062739 () Bool)

(assert (=> b!1682860 m!2062739))

(declare-fun m!2062741 () Bool)

(assert (=> b!1682860 m!2062741))

(declare-fun m!2062743 () Bool)

(assert (=> b!1682860 m!2062743))

(assert (=> b!1682860 m!2062741))

(assert (=> b!1682860 m!2062739))

(assert (=> b!1682860 m!2062735))

(declare-fun m!2062745 () Bool)

(assert (=> b!1682861 m!2062745))

(assert (=> b!1682861 m!2062103))

(assert (=> b!1682861 m!2062135))

(assert (=> b!1682861 m!2062103))

(assert (=> b!1682861 m!2062135))

(declare-fun m!2062747 () Bool)

(assert (=> b!1682861 m!2062747))

(assert (=> b!1682858 m!2062735))

(assert (=> b!1682858 m!2062735))

(declare-fun m!2062749 () Bool)

(assert (=> b!1682858 m!2062749))

(assert (=> b!1682859 m!2062735))

(assert (=> b!1682859 m!2062737))

(assert (=> b!1682859 m!2062739))

(assert (=> b!1682859 m!2062741))

(assert (=> b!1682859 m!2062743))

(assert (=> b!1682859 m!2062741))

(assert (=> b!1682859 m!2062739))

(assert (=> b!1682859 m!2062735))

(assert (=> b!1682578 d!511995))

(declare-fun d!512001 () Bool)

(declare-fun lt!637752 () C!9326)

(declare-fun apply!5007 (List!18516 Int) C!9326)

(assert (=> d!512001 (= lt!637752 (apply!5007 (list!7406 (charsOf!1897 (h!23849 (t!154453 tokens!457)))) 0))))

(declare-fun apply!5008 (Conc!6144 Int) C!9326)

(assert (=> d!512001 (= lt!637752 (apply!5008 (c!274695 (charsOf!1897 (h!23849 (t!154453 tokens!457)))) 0))))

(declare-fun e!1077508 () Bool)

(assert (=> d!512001 e!1077508))

(declare-fun res!754338 () Bool)

(assert (=> d!512001 (=> (not res!754338) (not e!1077508))))

(assert (=> d!512001 (= res!754338 (<= 0 0))))

(assert (=> d!512001 (= (apply!5005 (charsOf!1897 (h!23849 (t!154453 tokens!457))) 0) lt!637752)))

(declare-fun b!1682864 () Bool)

(declare-fun size!14694 (BalanceConc!12232) Int)

(assert (=> b!1682864 (= e!1077508 (< 0 (size!14694 (charsOf!1897 (h!23849 (t!154453 tokens!457))))))))

(assert (= (and d!512001 res!754338) b!1682864))

(assert (=> d!512001 m!2062143))

(assert (=> d!512001 m!2062617))

(assert (=> d!512001 m!2062617))

(declare-fun m!2062751 () Bool)

(assert (=> d!512001 m!2062751))

(declare-fun m!2062753 () Bool)

(assert (=> d!512001 m!2062753))

(assert (=> b!1682864 m!2062143))

(declare-fun m!2062755 () Bool)

(assert (=> b!1682864 m!2062755))

(assert (=> b!1682578 d!512001))

(declare-fun d!512003 () Bool)

(declare-fun lt!637755 () Unit!31682)

(declare-fun lemma!293 (List!18517 LexerInterface!2877 List!18517) Unit!31682)

(assert (=> d!512003 (= lt!637755 (lemma!293 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!68262 () Int)

(declare-fun generalisedUnion!301 (List!18524) Regex!4576)

(declare-fun map!3797 (List!18517 Int) List!18524)

(assert (=> d!512003 (= (rulesRegex!630 thiss!17113 rules!1846) (generalisedUnion!301 (map!3797 rules!1846 lambda!68262)))))

(declare-fun bs!399304 () Bool)

(assert (= bs!399304 d!512003))

(declare-fun m!2062757 () Bool)

(assert (=> bs!399304 m!2062757))

(declare-fun m!2062759 () Bool)

(assert (=> bs!399304 m!2062759))

(assert (=> bs!399304 m!2062759))

(declare-fun m!2062761 () Bool)

(assert (=> bs!399304 m!2062761))

(assert (=> b!1682578 d!512003))

(declare-fun d!512005 () Bool)

(declare-fun lt!637758 () BalanceConc!12232)

(assert (=> d!512005 (= (list!7406 lt!637758) (originalCharacters!4062 (h!23849 (t!154453 tokens!457))))))

(assert (=> d!512005 (= lt!637758 (dynLambda!8355 (toChars!4582 (transformation!3248 (rule!5148 (h!23849 (t!154453 tokens!457))))) (value!102242 (h!23849 (t!154453 tokens!457)))))))

(assert (=> d!512005 (= (charsOf!1897 (h!23849 (t!154453 tokens!457))) lt!637758)))

(declare-fun b_lambda!52931 () Bool)

(assert (=> (not b_lambda!52931) (not d!512005)))

(declare-fun t!154478 () Bool)

(declare-fun tb!97579 () Bool)

(assert (=> (and b!1682588 (= (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457)))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 (t!154453 tokens!457)))))) t!154478) tb!97579))

(declare-fun b!1682865 () Bool)

(declare-fun e!1077509 () Bool)

(declare-fun tp!483774 () Bool)

(assert (=> b!1682865 (= e!1077509 (and (inv!23816 (c!274695 (dynLambda!8355 (toChars!4582 (transformation!3248 (rule!5148 (h!23849 (t!154453 tokens!457))))) (value!102242 (h!23849 (t!154453 tokens!457)))))) tp!483774))))

(declare-fun result!117618 () Bool)

(assert (=> tb!97579 (= result!117618 (and (inv!23817 (dynLambda!8355 (toChars!4582 (transformation!3248 (rule!5148 (h!23849 (t!154453 tokens!457))))) (value!102242 (h!23849 (t!154453 tokens!457))))) e!1077509))))

(assert (= tb!97579 b!1682865))

(declare-fun m!2062763 () Bool)

(assert (=> b!1682865 m!2062763))

(declare-fun m!2062765 () Bool)

(assert (=> tb!97579 m!2062765))

(assert (=> d!512005 t!154478))

(declare-fun b_and!120265 () Bool)

(assert (= b_and!120261 (and (=> t!154478 result!117618) b_and!120265)))

(declare-fun tb!97581 () Bool)

(declare-fun t!154480 () Bool)

(assert (=> (and b!1682587 (= (toChars!4582 (transformation!3248 (h!23848 rules!1846))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 (t!154453 tokens!457)))))) t!154480) tb!97581))

(declare-fun result!117620 () Bool)

(assert (= result!117620 result!117618))

(assert (=> d!512005 t!154480))

(declare-fun b_and!120267 () Bool)

(assert (= b_and!120263 (and (=> t!154480 result!117620) b_and!120267)))

(declare-fun m!2062767 () Bool)

(assert (=> d!512005 m!2062767))

(declare-fun m!2062769 () Bool)

(assert (=> d!512005 m!2062769))

(assert (=> b!1682578 d!512005))

(declare-fun d!512007 () Bool)

(declare-fun lt!637761 () BalanceConc!12232)

(assert (=> d!512007 (= (list!7406 lt!637761) (printList!990 thiss!17113 (list!7405 lt!637399)))))

(assert (=> d!512007 (= lt!637761 (printTailRec!928 thiss!17113 lt!637399 0 (BalanceConc!12233 Empty!6144)))))

(assert (=> d!512007 (= (print!1408 thiss!17113 lt!637399) lt!637761)))

(declare-fun bs!399305 () Bool)

(assert (= bs!399305 d!512007))

(declare-fun m!2062771 () Bool)

(assert (=> bs!399305 m!2062771))

(declare-fun m!2062773 () Bool)

(assert (=> bs!399305 m!2062773))

(assert (=> bs!399305 m!2062773))

(declare-fun m!2062775 () Bool)

(assert (=> bs!399305 m!2062775))

(assert (=> bs!399305 m!2062187))

(assert (=> b!1682599 d!512007))

(declare-fun b!1682884 () Bool)

(declare-fun res!754357 () Bool)

(declare-fun e!1077517 () Bool)

(assert (=> b!1682884 (=> (not res!754357) (not e!1077517))))

(declare-fun lt!637775 () Option!3553)

(assert (=> b!1682884 (= res!754357 (matchR!2067 (regex!3248 (rule!5148 (_1!10493 (get!5408 lt!637775)))) (list!7406 (charsOf!1897 (_1!10493 (get!5408 lt!637775))))))))

(declare-fun b!1682885 () Bool)

(declare-fun e!1077516 () Option!3553)

(declare-fun lt!637776 () Option!3553)

(declare-fun lt!637773 () Option!3553)

(assert (=> b!1682885 (= e!1077516 (ite (and (is-None!3552 lt!637776) (is-None!3552 lt!637773)) None!3552 (ite (is-None!3552 lt!637773) lt!637776 (ite (is-None!3552 lt!637776) lt!637773 (ite (>= (size!14691 (_1!10493 (v!24857 lt!637776))) (size!14691 (_1!10493 (v!24857 lt!637773)))) lt!637776 lt!637773)))))))

(declare-fun call!107583 () Option!3553)

(assert (=> b!1682885 (= lt!637776 call!107583)))

(assert (=> b!1682885 (= lt!637773 (maxPrefix!1437 thiss!17113 (t!154452 rules!1846) lt!637400))))

(declare-fun b!1682886 () Bool)

(declare-fun res!754359 () Bool)

(assert (=> b!1682886 (=> (not res!754359) (not e!1077517))))

(assert (=> b!1682886 (= res!754359 (< (size!14693 (_2!10493 (get!5408 lt!637775))) (size!14693 lt!637400)))))

(declare-fun bm!107578 () Bool)

(assert (=> bm!107578 (= call!107583 (maxPrefixOneRule!840 thiss!17113 (h!23848 rules!1846) lt!637400))))

(declare-fun b!1682887 () Bool)

(declare-fun res!754355 () Bool)

(assert (=> b!1682887 (=> (not res!754355) (not e!1077517))))

(declare-fun apply!5009 (TokenValueInjection!6336 BalanceConc!12232) TokenValue!3338)

(assert (=> b!1682887 (= res!754355 (= (value!102242 (_1!10493 (get!5408 lt!637775))) (apply!5009 (transformation!3248 (rule!5148 (_1!10493 (get!5408 lt!637775)))) (seqFromList!2234 (originalCharacters!4062 (_1!10493 (get!5408 lt!637775)))))))))

(declare-fun b!1682888 () Bool)

(declare-fun contains!3239 (List!18517 Rule!6296) Bool)

(assert (=> b!1682888 (= e!1077517 (contains!3239 rules!1846 (rule!5148 (_1!10493 (get!5408 lt!637775)))))))

(declare-fun b!1682889 () Bool)

(declare-fun res!754353 () Bool)

(assert (=> b!1682889 (=> (not res!754353) (not e!1077517))))

(assert (=> b!1682889 (= res!754353 (= (list!7406 (charsOf!1897 (_1!10493 (get!5408 lt!637775)))) (originalCharacters!4062 (_1!10493 (get!5408 lt!637775)))))))

(declare-fun b!1682890 () Bool)

(assert (=> b!1682890 (= e!1077516 call!107583)))

(declare-fun b!1682891 () Bool)

(declare-fun res!754354 () Bool)

(assert (=> b!1682891 (=> (not res!754354) (not e!1077517))))

(assert (=> b!1682891 (= res!754354 (= (++!5044 (list!7406 (charsOf!1897 (_1!10493 (get!5408 lt!637775)))) (_2!10493 (get!5408 lt!637775))) lt!637400))))

(declare-fun d!512009 () Bool)

(declare-fun e!1077518 () Bool)

(assert (=> d!512009 e!1077518))

(declare-fun res!754356 () Bool)

(assert (=> d!512009 (=> res!754356 e!1077518)))

(assert (=> d!512009 (= res!754356 (isEmpty!11524 lt!637775))))

(assert (=> d!512009 (= lt!637775 e!1077516)))

(declare-fun c!274727 () Bool)

(assert (=> d!512009 (= c!274727 (and (is-Cons!18447 rules!1846) (is-Nil!18447 (t!154452 rules!1846))))))

(declare-fun lt!637774 () Unit!31682)

(declare-fun lt!637772 () Unit!31682)

(assert (=> d!512009 (= lt!637774 lt!637772)))

(assert (=> d!512009 (isPrefix!1506 lt!637400 lt!637400)))

(declare-fun lemmaIsPrefixRefl!1025 (List!18516 List!18516) Unit!31682)

(assert (=> d!512009 (= lt!637772 (lemmaIsPrefixRefl!1025 lt!637400 lt!637400))))

(declare-fun rulesValidInductive!1047 (LexerInterface!2877 List!18517) Bool)

(assert (=> d!512009 (rulesValidInductive!1047 thiss!17113 rules!1846)))

(assert (=> d!512009 (= (maxPrefix!1437 thiss!17113 rules!1846 lt!637400) lt!637775)))

(declare-fun b!1682892 () Bool)

(assert (=> b!1682892 (= e!1077518 e!1077517)))

(declare-fun res!754358 () Bool)

(assert (=> b!1682892 (=> (not res!754358) (not e!1077517))))

(assert (=> b!1682892 (= res!754358 (isDefined!2902 lt!637775))))

(assert (= (and d!512009 c!274727) b!1682890))

(assert (= (and d!512009 (not c!274727)) b!1682885))

(assert (= (or b!1682890 b!1682885) bm!107578))

(assert (= (and d!512009 (not res!754356)) b!1682892))

(assert (= (and b!1682892 res!754358) b!1682889))

(assert (= (and b!1682889 res!754353) b!1682886))

(assert (= (and b!1682886 res!754359) b!1682891))

(assert (= (and b!1682891 res!754354) b!1682887))

(assert (= (and b!1682887 res!754355) b!1682884))

(assert (= (and b!1682884 res!754357) b!1682888))

(declare-fun m!2062777 () Bool)

(assert (=> b!1682889 m!2062777))

(declare-fun m!2062779 () Bool)

(assert (=> b!1682889 m!2062779))

(assert (=> b!1682889 m!2062779))

(declare-fun m!2062781 () Bool)

(assert (=> b!1682889 m!2062781))

(assert (=> b!1682886 m!2062777))

(declare-fun m!2062783 () Bool)

(assert (=> b!1682886 m!2062783))

(declare-fun m!2062785 () Bool)

(assert (=> b!1682886 m!2062785))

(assert (=> b!1682884 m!2062777))

(assert (=> b!1682884 m!2062779))

(assert (=> b!1682884 m!2062779))

(assert (=> b!1682884 m!2062781))

(assert (=> b!1682884 m!2062781))

(declare-fun m!2062787 () Bool)

(assert (=> b!1682884 m!2062787))

(declare-fun m!2062789 () Bool)

(assert (=> d!512009 m!2062789))

(declare-fun m!2062791 () Bool)

(assert (=> d!512009 m!2062791))

(declare-fun m!2062793 () Bool)

(assert (=> d!512009 m!2062793))

(declare-fun m!2062795 () Bool)

(assert (=> d!512009 m!2062795))

(assert (=> b!1682888 m!2062777))

(declare-fun m!2062797 () Bool)

(assert (=> b!1682888 m!2062797))

(declare-fun m!2062799 () Bool)

(assert (=> b!1682892 m!2062799))

(declare-fun m!2062801 () Bool)

(assert (=> bm!107578 m!2062801))

(declare-fun m!2062803 () Bool)

(assert (=> b!1682885 m!2062803))

(assert (=> b!1682891 m!2062777))

(assert (=> b!1682891 m!2062779))

(assert (=> b!1682891 m!2062779))

(assert (=> b!1682891 m!2062781))

(assert (=> b!1682891 m!2062781))

(declare-fun m!2062805 () Bool)

(assert (=> b!1682891 m!2062805))

(assert (=> b!1682887 m!2062777))

(declare-fun m!2062807 () Bool)

(assert (=> b!1682887 m!2062807))

(assert (=> b!1682887 m!2062807))

(declare-fun m!2062809 () Bool)

(assert (=> b!1682887 m!2062809))

(assert (=> b!1682599 d!512009))

(declare-fun d!512011 () Bool)

(declare-fun list!7410 (Conc!6144) List!18516)

(assert (=> d!512011 (= (list!7406 lt!637419) (list!7410 (c!274695 lt!637419)))))

(declare-fun bs!399306 () Bool)

(assert (= bs!399306 d!512011))

(declare-fun m!2062811 () Bool)

(assert (=> bs!399306 m!2062811))

(assert (=> b!1682599 d!512011))

(declare-fun d!512013 () Bool)

(declare-fun e!1077521 () Bool)

(assert (=> d!512013 e!1077521))

(declare-fun res!754362 () Bool)

(assert (=> d!512013 (=> (not res!754362) (not e!1077521))))

(declare-fun lt!637779 () BalanceConc!12234)

(assert (=> d!512013 (= res!754362 (= (list!7405 lt!637779) (Cons!18448 (h!23849 tokens!457) Nil!18448)))))

(declare-fun singleton!794 (Token!6062) BalanceConc!12234)

(assert (=> d!512013 (= lt!637779 (singleton!794 (h!23849 tokens!457)))))

(assert (=> d!512013 (= (singletonSeq!1765 (h!23849 tokens!457)) lt!637779)))

(declare-fun b!1682895 () Bool)

(assert (=> b!1682895 (= e!1077521 (isBalanced!1919 (c!274697 lt!637779)))))

(assert (= (and d!512013 res!754362) b!1682895))

(declare-fun m!2062813 () Bool)

(assert (=> d!512013 m!2062813))

(declare-fun m!2062815 () Bool)

(assert (=> d!512013 m!2062815))

(declare-fun m!2062817 () Bool)

(assert (=> b!1682895 m!2062817))

(assert (=> b!1682599 d!512013))

(declare-fun d!512015 () Bool)

(declare-fun c!274730 () Bool)

(assert (=> d!512015 (= c!274730 (is-Cons!18448 (Cons!18448 (h!23849 tokens!457) Nil!18448)))))

(declare-fun e!1077524 () List!18516)

(assert (=> d!512015 (= (printList!990 thiss!17113 (Cons!18448 (h!23849 tokens!457) Nil!18448)) e!1077524)))

(declare-fun b!1682900 () Bool)

(assert (=> b!1682900 (= e!1077524 (++!5044 (list!7406 (charsOf!1897 (h!23849 (Cons!18448 (h!23849 tokens!457) Nil!18448)))) (printList!990 thiss!17113 (t!154453 (Cons!18448 (h!23849 tokens!457) Nil!18448)))))))

(declare-fun b!1682901 () Bool)

(assert (=> b!1682901 (= e!1077524 Nil!18446)))

(assert (= (and d!512015 c!274730) b!1682900))

(assert (= (and d!512015 (not c!274730)) b!1682901))

(declare-fun m!2062819 () Bool)

(assert (=> b!1682900 m!2062819))

(assert (=> b!1682900 m!2062819))

(declare-fun m!2062821 () Bool)

(assert (=> b!1682900 m!2062821))

(declare-fun m!2062823 () Bool)

(assert (=> b!1682900 m!2062823))

(assert (=> b!1682900 m!2062821))

(assert (=> b!1682900 m!2062823))

(declare-fun m!2062825 () Bool)

(assert (=> b!1682900 m!2062825))

(assert (=> b!1682599 d!512015))

(declare-fun d!512017 () Bool)

(declare-fun lt!637818 () BalanceConc!12232)

(declare-fun printListTailRec!422 (LexerInterface!2877 List!18518 List!18516) List!18516)

(declare-fun dropList!730 (BalanceConc!12234 Int) List!18518)

(assert (=> d!512017 (= (list!7406 lt!637818) (printListTailRec!422 thiss!17113 (dropList!730 lt!637399 0) (list!7406 (BalanceConc!12233 Empty!6144))))))

(declare-fun e!1077536 () BalanceConc!12232)

(assert (=> d!512017 (= lt!637818 e!1077536)))

(declare-fun c!274733 () Bool)

(declare-fun size!14695 (BalanceConc!12234) Int)

(assert (=> d!512017 (= c!274733 (>= 0 (size!14695 lt!637399)))))

(declare-fun e!1077535 () Bool)

(assert (=> d!512017 e!1077535))

(declare-fun res!754371 () Bool)

(assert (=> d!512017 (=> (not res!754371) (not e!1077535))))

(assert (=> d!512017 (= res!754371 (>= 0 0))))

(assert (=> d!512017 (= (printTailRec!928 thiss!17113 lt!637399 0 (BalanceConc!12233 Empty!6144)) lt!637818)))

(declare-fun b!1682914 () Bool)

(assert (=> b!1682914 (= e!1077535 (<= 0 (size!14695 lt!637399)))))

(declare-fun b!1682915 () Bool)

(assert (=> b!1682915 (= e!1077536 (BalanceConc!12233 Empty!6144))))

(declare-fun b!1682916 () Bool)

(declare-fun apply!5010 (BalanceConc!12234 Int) Token!6062)

(assert (=> b!1682916 (= e!1077536 (printTailRec!928 thiss!17113 lt!637399 (+ 0 1) (++!5043 (BalanceConc!12233 Empty!6144) (charsOf!1897 (apply!5010 lt!637399 0)))))))

(declare-fun lt!637816 () List!18518)

(assert (=> b!1682916 (= lt!637816 (list!7405 lt!637399))))

(declare-fun lt!637817 () Unit!31682)

(declare-fun lemmaDropApply!629 (List!18518 Int) Unit!31682)

(assert (=> b!1682916 (= lt!637817 (lemmaDropApply!629 lt!637816 0))))

(declare-fun drop!953 (List!18518 Int) List!18518)

(declare-fun apply!5011 (List!18518 Int) Token!6062)

(assert (=> b!1682916 (= (head!3760 (drop!953 lt!637816 0)) (apply!5011 lt!637816 0))))

(declare-fun lt!637815 () Unit!31682)

(assert (=> b!1682916 (= lt!637815 lt!637817)))

(declare-fun lt!637819 () List!18518)

(assert (=> b!1682916 (= lt!637819 (list!7405 lt!637399))))

(declare-fun lt!637821 () Unit!31682)

(declare-fun lemmaDropTail!609 (List!18518 Int) Unit!31682)

(assert (=> b!1682916 (= lt!637821 (lemmaDropTail!609 lt!637819 0))))

(declare-fun tail!2508 (List!18518) List!18518)

(assert (=> b!1682916 (= (tail!2508 (drop!953 lt!637819 0)) (drop!953 lt!637819 (+ 0 1)))))

(declare-fun lt!637820 () Unit!31682)

(assert (=> b!1682916 (= lt!637820 lt!637821)))

(assert (= (and d!512017 res!754371) b!1682914))

(assert (= (and d!512017 c!274733) b!1682915))

(assert (= (and d!512017 (not c!274733)) b!1682916))

(declare-fun m!2062835 () Bool)

(assert (=> d!512017 m!2062835))

(declare-fun m!2062837 () Bool)

(assert (=> d!512017 m!2062837))

(declare-fun m!2062839 () Bool)

(assert (=> d!512017 m!2062839))

(declare-fun m!2062841 () Bool)

(assert (=> d!512017 m!2062841))

(assert (=> d!512017 m!2062837))

(declare-fun m!2062843 () Bool)

(assert (=> d!512017 m!2062843))

(assert (=> d!512017 m!2062839))

(assert (=> b!1682914 m!2062843))

(declare-fun m!2062845 () Bool)

(assert (=> b!1682916 m!2062845))

(declare-fun m!2062847 () Bool)

(assert (=> b!1682916 m!2062847))

(declare-fun m!2062849 () Bool)

(assert (=> b!1682916 m!2062849))

(assert (=> b!1682916 m!2062773))

(declare-fun m!2062851 () Bool)

(assert (=> b!1682916 m!2062851))

(declare-fun m!2062853 () Bool)

(assert (=> b!1682916 m!2062853))

(assert (=> b!1682916 m!2062849))

(declare-fun m!2062855 () Bool)

(assert (=> b!1682916 m!2062855))

(assert (=> b!1682916 m!2062847))

(assert (=> b!1682916 m!2062851))

(declare-fun m!2062857 () Bool)

(assert (=> b!1682916 m!2062857))

(declare-fun m!2062859 () Bool)

(assert (=> b!1682916 m!2062859))

(assert (=> b!1682916 m!2062857))

(declare-fun m!2062861 () Bool)

(assert (=> b!1682916 m!2062861))

(declare-fun m!2062863 () Bool)

(assert (=> b!1682916 m!2062863))

(assert (=> b!1682916 m!2062845))

(declare-fun m!2062865 () Bool)

(assert (=> b!1682916 m!2062865))

(declare-fun m!2062867 () Bool)

(assert (=> b!1682916 m!2062867))

(assert (=> b!1682599 d!512017))

(declare-fun d!512021 () Bool)

(declare-fun lt!637870 () Bool)

(declare-fun e!1077575 () Bool)

(assert (=> d!512021 (= lt!637870 e!1077575)))

(declare-fun res!754416 () Bool)

(assert (=> d!512021 (=> (not res!754416) (not e!1077575))))

(assert (=> d!512021 (= res!754416 (= (list!7405 (_1!10492 (lex!1361 thiss!17113 rules!1846 (print!1408 thiss!17113 (singletonSeq!1765 (h!23849 tokens!457)))))) (list!7405 (singletonSeq!1765 (h!23849 tokens!457)))))))

(declare-fun e!1077574 () Bool)

(assert (=> d!512021 (= lt!637870 e!1077574)))

(declare-fun res!754415 () Bool)

(assert (=> d!512021 (=> (not res!754415) (not e!1077574))))

(declare-fun lt!637871 () tuple2!18180)

(assert (=> d!512021 (= res!754415 (= (size!14695 (_1!10492 lt!637871)) 1))))

(assert (=> d!512021 (= lt!637871 (lex!1361 thiss!17113 rules!1846 (print!1408 thiss!17113 (singletonSeq!1765 (h!23849 tokens!457)))))))

(assert (=> d!512021 (not (isEmpty!11520 rules!1846))))

(assert (=> d!512021 (= (rulesProduceIndividualToken!1525 thiss!17113 rules!1846 (h!23849 tokens!457)) lt!637870)))

(declare-fun b!1682987 () Bool)

(declare-fun res!754414 () Bool)

(assert (=> b!1682987 (=> (not res!754414) (not e!1077574))))

(assert (=> b!1682987 (= res!754414 (= (apply!5010 (_1!10492 lt!637871) 0) (h!23849 tokens!457)))))

(declare-fun b!1682988 () Bool)

(assert (=> b!1682988 (= e!1077574 (isEmpty!11525 (_2!10492 lt!637871)))))

(declare-fun b!1682989 () Bool)

(assert (=> b!1682989 (= e!1077575 (isEmpty!11525 (_2!10492 (lex!1361 thiss!17113 rules!1846 (print!1408 thiss!17113 (singletonSeq!1765 (h!23849 tokens!457)))))))))

(assert (= (and d!512021 res!754415) b!1682987))

(assert (= (and b!1682987 res!754414) b!1682988))

(assert (= (and d!512021 res!754416) b!1682989))

(declare-fun m!2063011 () Bool)

(assert (=> d!512021 m!2063011))

(declare-fun m!2063013 () Bool)

(assert (=> d!512021 m!2063013))

(assert (=> d!512021 m!2062193))

(declare-fun m!2063015 () Bool)

(assert (=> d!512021 m!2063015))

(assert (=> d!512021 m!2062115))

(assert (=> d!512021 m!2062193))

(declare-fun m!2063017 () Bool)

(assert (=> d!512021 m!2063017))

(assert (=> d!512021 m!2063017))

(declare-fun m!2063019 () Bool)

(assert (=> d!512021 m!2063019))

(assert (=> d!512021 m!2062193))

(declare-fun m!2063021 () Bool)

(assert (=> b!1682987 m!2063021))

(declare-fun m!2063023 () Bool)

(assert (=> b!1682988 m!2063023))

(assert (=> b!1682989 m!2062193))

(assert (=> b!1682989 m!2062193))

(assert (=> b!1682989 m!2063017))

(assert (=> b!1682989 m!2063017))

(assert (=> b!1682989 m!2063019))

(declare-fun m!2063025 () Bool)

(assert (=> b!1682989 m!2063025))

(assert (=> b!1682577 d!512021))

(declare-fun d!512061 () Bool)

(declare-fun c!274756 () Bool)

(assert (=> d!512061 (= c!274756 (is-IntegerValue!10014 (value!102242 (h!23849 tokens!457))))))

(declare-fun e!1077587 () Bool)

(assert (=> d!512061 (= (inv!21 (value!102242 (h!23849 tokens!457))) e!1077587)))

(declare-fun b!1683008 () Bool)

(declare-fun res!754421 () Bool)

(declare-fun e!1077588 () Bool)

(assert (=> b!1683008 (=> res!754421 e!1077588)))

(assert (=> b!1683008 (= res!754421 (not (is-IntegerValue!10016 (value!102242 (h!23849 tokens!457)))))))

(declare-fun e!1077589 () Bool)

(assert (=> b!1683008 (= e!1077589 e!1077588)))

(declare-fun b!1683009 () Bool)

(declare-fun inv!15 (TokenValue!3338) Bool)

(assert (=> b!1683009 (= e!1077588 (inv!15 (value!102242 (h!23849 tokens!457))))))

(declare-fun b!1683010 () Bool)

(declare-fun inv!17 (TokenValue!3338) Bool)

(assert (=> b!1683010 (= e!1077589 (inv!17 (value!102242 (h!23849 tokens!457))))))

(declare-fun b!1683011 () Bool)

(declare-fun inv!16 (TokenValue!3338) Bool)

(assert (=> b!1683011 (= e!1077587 (inv!16 (value!102242 (h!23849 tokens!457))))))

(declare-fun b!1683012 () Bool)

(assert (=> b!1683012 (= e!1077587 e!1077589)))

(declare-fun c!274755 () Bool)

(assert (=> b!1683012 (= c!274755 (is-IntegerValue!10015 (value!102242 (h!23849 tokens!457))))))

(assert (= (and d!512061 c!274756) b!1683011))

(assert (= (and d!512061 (not c!274756)) b!1683012))

(assert (= (and b!1683012 c!274755) b!1683010))

(assert (= (and b!1683012 (not c!274755)) b!1683008))

(assert (= (and b!1683008 (not res!754421)) b!1683009))

(declare-fun m!2063035 () Bool)

(assert (=> b!1683009 m!2063035))

(declare-fun m!2063037 () Bool)

(assert (=> b!1683010 m!2063037))

(declare-fun m!2063039 () Bool)

(assert (=> b!1683011 m!2063039))

(assert (=> b!1682598 d!512061))

(declare-fun d!512065 () Bool)

(declare-fun lt!637875 () BalanceConc!12232)

(assert (=> d!512065 (= (list!7406 lt!637875) (printList!990 thiss!17113 (list!7405 (seqFromList!2233 tokens!457))))))

(assert (=> d!512065 (= lt!637875 (printTailRec!928 thiss!17113 (seqFromList!2233 tokens!457) 0 (BalanceConc!12233 Empty!6144)))))

(assert (=> d!512065 (= (print!1408 thiss!17113 (seqFromList!2233 tokens!457)) lt!637875)))

(declare-fun bs!399316 () Bool)

(assert (= bs!399316 d!512065))

(declare-fun m!2063041 () Bool)

(assert (=> bs!399316 m!2063041))

(assert (=> bs!399316 m!2062095))

(declare-fun m!2063045 () Bool)

(assert (=> bs!399316 m!2063045))

(assert (=> bs!399316 m!2063045))

(declare-fun m!2063049 () Bool)

(assert (=> bs!399316 m!2063049))

(assert (=> bs!399316 m!2062095))

(declare-fun m!2063053 () Bool)

(assert (=> bs!399316 m!2063053))

(assert (=> b!1682586 d!512065))

(declare-fun d!512069 () Bool)

(assert (=> d!512069 (= (list!7406 lt!637422) (list!7410 (c!274695 lt!637422)))))

(declare-fun bs!399318 () Bool)

(assert (= bs!399318 d!512069))

(declare-fun m!2063057 () Bool)

(assert (=> bs!399318 m!2063057))

(assert (=> b!1682586 d!512069))

(declare-fun b!1683024 () Bool)

(declare-fun e!1077599 () Bool)

(declare-fun lt!637878 () tuple2!18180)

(assert (=> b!1683024 (= e!1077599 (not (isEmpty!11521 (_1!10492 lt!637878))))))

(declare-fun e!1077597 () Bool)

(declare-fun b!1683025 () Bool)

(declare-datatypes ((tuple2!18188 0))(
  ( (tuple2!18189 (_1!10496 List!18518) (_2!10496 List!18516)) )
))
(declare-fun lexList!902 (LexerInterface!2877 List!18517 List!18516) tuple2!18188)

(assert (=> b!1683025 (= e!1077597 (= (list!7406 (_2!10492 lt!637878)) (_2!10496 (lexList!902 thiss!17113 rules!1846 (list!7406 lt!637422)))))))

(declare-fun b!1683026 () Bool)

(declare-fun res!754429 () Bool)

(assert (=> b!1683026 (=> (not res!754429) (not e!1077597))))

(assert (=> b!1683026 (= res!754429 (= (list!7405 (_1!10492 lt!637878)) (_1!10496 (lexList!902 thiss!17113 rules!1846 (list!7406 lt!637422)))))))

(declare-fun b!1683027 () Bool)

(declare-fun e!1077598 () Bool)

(assert (=> b!1683027 (= e!1077598 e!1077599)))

(declare-fun res!754431 () Bool)

(assert (=> b!1683027 (= res!754431 (< (size!14694 (_2!10492 lt!637878)) (size!14694 lt!637422)))))

(assert (=> b!1683027 (=> (not res!754431) (not e!1077599))))

(declare-fun d!512073 () Bool)

(assert (=> d!512073 e!1077597))

(declare-fun res!754430 () Bool)

(assert (=> d!512073 (=> (not res!754430) (not e!1077597))))

(assert (=> d!512073 (= res!754430 e!1077598)))

(declare-fun c!274759 () Bool)

(assert (=> d!512073 (= c!274759 (> (size!14695 (_1!10492 lt!637878)) 0))))

(declare-fun lexTailRecV2!625 (LexerInterface!2877 List!18517 BalanceConc!12232 BalanceConc!12232 BalanceConc!12232 BalanceConc!12234) tuple2!18180)

(assert (=> d!512073 (= lt!637878 (lexTailRecV2!625 thiss!17113 rules!1846 lt!637422 (BalanceConc!12233 Empty!6144) lt!637422 (BalanceConc!12235 Empty!6145)))))

(assert (=> d!512073 (= (lex!1361 thiss!17113 rules!1846 lt!637422) lt!637878)))

(declare-fun b!1683028 () Bool)

(assert (=> b!1683028 (= e!1077598 (= (_2!10492 lt!637878) lt!637422))))

(assert (= (and d!512073 c!274759) b!1683027))

(assert (= (and d!512073 (not c!274759)) b!1683028))

(assert (= (and b!1683027 res!754431) b!1683024))

(assert (= (and d!512073 res!754430) b!1683026))

(assert (= (and b!1683026 res!754429) b!1683025))

(declare-fun m!2063059 () Bool)

(assert (=> b!1683025 m!2063059))

(assert (=> b!1683025 m!2062089))

(assert (=> b!1683025 m!2062089))

(declare-fun m!2063061 () Bool)

(assert (=> b!1683025 m!2063061))

(declare-fun m!2063063 () Bool)

(assert (=> b!1683024 m!2063063))

(declare-fun m!2063065 () Bool)

(assert (=> b!1683027 m!2063065))

(declare-fun m!2063067 () Bool)

(assert (=> b!1683027 m!2063067))

(declare-fun m!2063069 () Bool)

(assert (=> d!512073 m!2063069))

(declare-fun m!2063071 () Bool)

(assert (=> d!512073 m!2063071))

(declare-fun m!2063073 () Bool)

(assert (=> b!1683026 m!2063073))

(assert (=> b!1683026 m!2062089))

(assert (=> b!1683026 m!2062089))

(assert (=> b!1683026 m!2063061))

(assert (=> b!1682586 d!512073))

(declare-fun d!512075 () Bool)

(assert (=> d!512075 (= (list!7406 lt!637405) (list!7410 (c!274695 lt!637405)))))

(declare-fun bs!399319 () Bool)

(assert (= bs!399319 d!512075))

(declare-fun m!2063075 () Bool)

(assert (=> bs!399319 m!2063075))

(assert (=> b!1682586 d!512075))

(declare-fun d!512077 () Bool)

(declare-fun lt!637879 () BalanceConc!12232)

(assert (=> d!512077 (= (list!7406 lt!637879) (printList!990 thiss!17113 (list!7405 lt!637401)))))

(assert (=> d!512077 (= lt!637879 (printTailRec!928 thiss!17113 lt!637401 0 (BalanceConc!12233 Empty!6144)))))

(assert (=> d!512077 (= (print!1408 thiss!17113 lt!637401) lt!637879)))

(declare-fun bs!399320 () Bool)

(assert (= bs!399320 d!512077))

(declare-fun m!2063077 () Bool)

(assert (=> bs!399320 m!2063077))

(assert (=> bs!399320 m!2062117))

(assert (=> bs!399320 m!2062117))

(declare-fun m!2063079 () Bool)

(assert (=> bs!399320 m!2063079))

(declare-fun m!2063081 () Bool)

(assert (=> bs!399320 m!2063081))

(assert (=> b!1682586 d!512077))

(declare-fun b!1683039 () Bool)

(declare-fun res!754437 () Bool)

(declare-fun e!1077605 () Bool)

(assert (=> b!1683039 (=> (not res!754437) (not e!1077605))))

(declare-fun lt!637882 () List!18516)

(assert (=> b!1683039 (= res!754437 (= (size!14693 lt!637882) (+ (size!14693 lt!637402) (size!14693 lt!637407))))))

(declare-fun b!1683040 () Bool)

(assert (=> b!1683040 (= e!1077605 (or (not (= lt!637407 Nil!18446)) (= lt!637882 lt!637402)))))

(declare-fun b!1683038 () Bool)

(declare-fun e!1077604 () List!18516)

(assert (=> b!1683038 (= e!1077604 (Cons!18446 (h!23847 lt!637402) (++!5044 (t!154451 lt!637402) lt!637407)))))

(declare-fun d!512079 () Bool)

(assert (=> d!512079 e!1077605))

(declare-fun res!754436 () Bool)

(assert (=> d!512079 (=> (not res!754436) (not e!1077605))))

(declare-fun content!2595 (List!18516) (Set C!9326))

(assert (=> d!512079 (= res!754436 (= (content!2595 lt!637882) (set.union (content!2595 lt!637402) (content!2595 lt!637407))))))

(assert (=> d!512079 (= lt!637882 e!1077604)))

(declare-fun c!274762 () Bool)

(assert (=> d!512079 (= c!274762 (is-Nil!18446 lt!637402))))

(assert (=> d!512079 (= (++!5044 lt!637402 lt!637407) lt!637882)))

(declare-fun b!1683037 () Bool)

(assert (=> b!1683037 (= e!1077604 lt!637407)))

(assert (= (and d!512079 c!274762) b!1683037))

(assert (= (and d!512079 (not c!274762)) b!1683038))

(assert (= (and d!512079 res!754436) b!1683039))

(assert (= (and b!1683039 res!754437) b!1683040))

(declare-fun m!2063083 () Bool)

(assert (=> b!1683039 m!2063083))

(assert (=> b!1683039 m!2062685))

(declare-fun m!2063085 () Bool)

(assert (=> b!1683039 m!2063085))

(declare-fun m!2063087 () Bool)

(assert (=> b!1683038 m!2063087))

(declare-fun m!2063089 () Bool)

(assert (=> d!512079 m!2063089))

(declare-fun m!2063091 () Bool)

(assert (=> d!512079 m!2063091))

(declare-fun m!2063093 () Bool)

(assert (=> d!512079 m!2063093))

(assert (=> b!1682586 d!512079))

(declare-fun d!512081 () Bool)

(assert (=> d!512081 (= (seqFromList!2233 tokens!457) (fromListB!1020 tokens!457))))

(declare-fun bs!399321 () Bool)

(assert (= bs!399321 d!512081))

(declare-fun m!2063095 () Bool)

(assert (=> bs!399321 m!2063095))

(assert (=> b!1682586 d!512081))

(declare-fun d!512083 () Bool)

(declare-fun lt!637883 () BalanceConc!12232)

(assert (=> d!512083 (= (list!7406 lt!637883) (originalCharacters!4062 (h!23849 tokens!457)))))

(assert (=> d!512083 (= lt!637883 (dynLambda!8355 (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457)))) (value!102242 (h!23849 tokens!457))))))

(assert (=> d!512083 (= (charsOf!1897 (h!23849 tokens!457)) lt!637883)))

(declare-fun b_lambda!52935 () Bool)

(assert (=> (not b_lambda!52935) (not d!512083)))

(assert (=> d!512083 t!154471))

(declare-fun b_and!120273 () Bool)

(assert (= b_and!120265 (and (=> t!154471 result!117612) b_and!120273)))

(assert (=> d!512083 t!154473))

(declare-fun b_and!120275 () Bool)

(assert (= b_and!120267 (and (=> t!154473 result!117616) b_and!120275)))

(declare-fun m!2063097 () Bool)

(assert (=> d!512083 m!2063097))

(assert (=> d!512083 m!2062585))

(assert (=> b!1682586 d!512083))

(declare-fun d!512085 () Bool)

(assert (=> d!512085 (= (seqFromList!2233 (t!154453 tokens!457)) (fromListB!1020 (t!154453 tokens!457)))))

(declare-fun bs!399322 () Bool)

(assert (= bs!399322 d!512085))

(declare-fun m!2063099 () Bool)

(assert (=> bs!399322 m!2063099))

(assert (=> b!1682586 d!512085))

(declare-fun d!512087 () Bool)

(assert (=> d!512087 (= (list!7406 lt!637406) (list!7410 (c!274695 lt!637406)))))

(declare-fun bs!399323 () Bool)

(assert (= bs!399323 d!512087))

(declare-fun m!2063101 () Bool)

(assert (=> bs!399323 m!2063101))

(assert (=> b!1682586 d!512087))

(declare-fun d!512089 () Bool)

(assert (=> d!512089 (= (head!3756 lt!637407) (h!23847 lt!637407))))

(assert (=> b!1682585 d!512089))

(declare-fun d!512091 () Bool)

(declare-fun c!274765 () Bool)

(assert (=> d!512091 (= c!274765 (isEmpty!11526 (++!5044 lt!637402 lt!637404)))))

(declare-fun e!1077608 () Bool)

(assert (=> d!512091 (= (prefixMatch!489 lt!637412 (++!5044 lt!637402 lt!637404)) e!1077608)))

(declare-fun b!1683045 () Bool)

(declare-fun lostCause!484 (Regex!4576) Bool)

(assert (=> b!1683045 (= e!1077608 (not (lostCause!484 lt!637412)))))

(declare-fun b!1683046 () Bool)

(declare-fun derivativeStep!1136 (Regex!4576 C!9326) Regex!4576)

(assert (=> b!1683046 (= e!1077608 (prefixMatch!489 (derivativeStep!1136 lt!637412 (head!3756 (++!5044 lt!637402 lt!637404))) (tail!2507 (++!5044 lt!637402 lt!637404))))))

(assert (= (and d!512091 c!274765) b!1683045))

(assert (= (and d!512091 (not c!274765)) b!1683046))

(assert (=> d!512091 m!2062131))

(declare-fun m!2063103 () Bool)

(assert (=> d!512091 m!2063103))

(declare-fun m!2063105 () Bool)

(assert (=> b!1683045 m!2063105))

(assert (=> b!1683046 m!2062131))

(declare-fun m!2063107 () Bool)

(assert (=> b!1683046 m!2063107))

(assert (=> b!1683046 m!2063107))

(declare-fun m!2063109 () Bool)

(assert (=> b!1683046 m!2063109))

(assert (=> b!1683046 m!2062131))

(declare-fun m!2063111 () Bool)

(assert (=> b!1683046 m!2063111))

(assert (=> b!1683046 m!2063109))

(assert (=> b!1683046 m!2063111))

(declare-fun m!2063113 () Bool)

(assert (=> b!1683046 m!2063113))

(assert (=> b!1682595 d!512091))

(declare-fun b!1683049 () Bool)

(declare-fun res!754439 () Bool)

(declare-fun e!1077610 () Bool)

(assert (=> b!1683049 (=> (not res!754439) (not e!1077610))))

(declare-fun lt!637884 () List!18516)

(assert (=> b!1683049 (= res!754439 (= (size!14693 lt!637884) (+ (size!14693 lt!637402) (size!14693 lt!637404))))))

(declare-fun b!1683050 () Bool)

(assert (=> b!1683050 (= e!1077610 (or (not (= lt!637404 Nil!18446)) (= lt!637884 lt!637402)))))

(declare-fun b!1683048 () Bool)

(declare-fun e!1077609 () List!18516)

(assert (=> b!1683048 (= e!1077609 (Cons!18446 (h!23847 lt!637402) (++!5044 (t!154451 lt!637402) lt!637404)))))

(declare-fun d!512093 () Bool)

(assert (=> d!512093 e!1077610))

(declare-fun res!754438 () Bool)

(assert (=> d!512093 (=> (not res!754438) (not e!1077610))))

(assert (=> d!512093 (= res!754438 (= (content!2595 lt!637884) (set.union (content!2595 lt!637402) (content!2595 lt!637404))))))

(assert (=> d!512093 (= lt!637884 e!1077609)))

(declare-fun c!274766 () Bool)

(assert (=> d!512093 (= c!274766 (is-Nil!18446 lt!637402))))

(assert (=> d!512093 (= (++!5044 lt!637402 lt!637404) lt!637884)))

(declare-fun b!1683047 () Bool)

(assert (=> b!1683047 (= e!1077609 lt!637404)))

(assert (= (and d!512093 c!274766) b!1683047))

(assert (= (and d!512093 (not c!274766)) b!1683048))

(assert (= (and d!512093 res!754438) b!1683049))

(assert (= (and b!1683049 res!754439) b!1683050))

(declare-fun m!2063115 () Bool)

(assert (=> b!1683049 m!2063115))

(assert (=> b!1683049 m!2062685))

(declare-fun m!2063117 () Bool)

(assert (=> b!1683049 m!2063117))

(declare-fun m!2063119 () Bool)

(assert (=> b!1683048 m!2063119))

(declare-fun m!2063121 () Bool)

(assert (=> d!512093 m!2063121))

(assert (=> d!512093 m!2063091))

(declare-fun m!2063123 () Bool)

(assert (=> d!512093 m!2063123))

(assert (=> b!1682595 d!512093))

(declare-fun d!512095 () Bool)

(assert (=> d!512095 (= (list!7406 lt!637408) (list!7410 (c!274695 lt!637408)))))

(declare-fun bs!399324 () Bool)

(assert (= bs!399324 d!512095))

(declare-fun m!2063125 () Bool)

(assert (=> bs!399324 m!2063125))

(assert (=> b!1682595 d!512095))

(declare-fun d!512097 () Bool)

(declare-fun lt!637887 () Bool)

(declare-fun isEmpty!11528 (List!18518) Bool)

(assert (=> d!512097 (= lt!637887 (isEmpty!11528 (list!7405 (_1!10492 (lex!1361 thiss!17113 rules!1846 (seqFromList!2234 lt!637402))))))))

(declare-fun isEmpty!11529 (Conc!6145) Bool)

(assert (=> d!512097 (= lt!637887 (isEmpty!11529 (c!274697 (_1!10492 (lex!1361 thiss!17113 rules!1846 (seqFromList!2234 lt!637402))))))))

(assert (=> d!512097 (= (isEmpty!11521 (_1!10492 (lex!1361 thiss!17113 rules!1846 (seqFromList!2234 lt!637402)))) lt!637887)))

(declare-fun bs!399325 () Bool)

(assert (= bs!399325 d!512097))

(assert (=> bs!399325 m!2062353))

(assert (=> bs!399325 m!2062353))

(declare-fun m!2063127 () Bool)

(assert (=> bs!399325 m!2063127))

(declare-fun m!2063129 () Bool)

(assert (=> bs!399325 m!2063129))

(assert (=> b!1682584 d!512097))

(declare-fun b!1683051 () Bool)

(declare-fun e!1077613 () Bool)

(declare-fun lt!637888 () tuple2!18180)

(assert (=> b!1683051 (= e!1077613 (not (isEmpty!11521 (_1!10492 lt!637888))))))

(declare-fun b!1683052 () Bool)

(declare-fun e!1077611 () Bool)

(assert (=> b!1683052 (= e!1077611 (= (list!7406 (_2!10492 lt!637888)) (_2!10496 (lexList!902 thiss!17113 rules!1846 (list!7406 (seqFromList!2234 lt!637402))))))))

(declare-fun b!1683053 () Bool)

(declare-fun res!754440 () Bool)

(assert (=> b!1683053 (=> (not res!754440) (not e!1077611))))

(assert (=> b!1683053 (= res!754440 (= (list!7405 (_1!10492 lt!637888)) (_1!10496 (lexList!902 thiss!17113 rules!1846 (list!7406 (seqFromList!2234 lt!637402))))))))

(declare-fun b!1683054 () Bool)

(declare-fun e!1077612 () Bool)

(assert (=> b!1683054 (= e!1077612 e!1077613)))

(declare-fun res!754442 () Bool)

(assert (=> b!1683054 (= res!754442 (< (size!14694 (_2!10492 lt!637888)) (size!14694 (seqFromList!2234 lt!637402))))))

(assert (=> b!1683054 (=> (not res!754442) (not e!1077613))))

(declare-fun d!512099 () Bool)

(assert (=> d!512099 e!1077611))

(declare-fun res!754441 () Bool)

(assert (=> d!512099 (=> (not res!754441) (not e!1077611))))

(assert (=> d!512099 (= res!754441 e!1077612)))

(declare-fun c!274767 () Bool)

(assert (=> d!512099 (= c!274767 (> (size!14695 (_1!10492 lt!637888)) 0))))

(assert (=> d!512099 (= lt!637888 (lexTailRecV2!625 thiss!17113 rules!1846 (seqFromList!2234 lt!637402) (BalanceConc!12233 Empty!6144) (seqFromList!2234 lt!637402) (BalanceConc!12235 Empty!6145)))))

(assert (=> d!512099 (= (lex!1361 thiss!17113 rules!1846 (seqFromList!2234 lt!637402)) lt!637888)))

(declare-fun b!1683055 () Bool)

(assert (=> b!1683055 (= e!1077612 (= (_2!10492 lt!637888) (seqFromList!2234 lt!637402)))))

(assert (= (and d!512099 c!274767) b!1683054))

(assert (= (and d!512099 (not c!274767)) b!1683055))

(assert (= (and b!1683054 res!754442) b!1683051))

(assert (= (and d!512099 res!754441) b!1683053))

(assert (= (and b!1683053 res!754440) b!1683052))

(declare-fun m!2063131 () Bool)

(assert (=> b!1683052 m!2063131))

(assert (=> b!1683052 m!2062163))

(declare-fun m!2063133 () Bool)

(assert (=> b!1683052 m!2063133))

(assert (=> b!1683052 m!2063133))

(declare-fun m!2063135 () Bool)

(assert (=> b!1683052 m!2063135))

(declare-fun m!2063137 () Bool)

(assert (=> b!1683051 m!2063137))

(declare-fun m!2063139 () Bool)

(assert (=> b!1683054 m!2063139))

(assert (=> b!1683054 m!2062163))

(declare-fun m!2063141 () Bool)

(assert (=> b!1683054 m!2063141))

(declare-fun m!2063143 () Bool)

(assert (=> d!512099 m!2063143))

(assert (=> d!512099 m!2062163))

(assert (=> d!512099 m!2062163))

(declare-fun m!2063145 () Bool)

(assert (=> d!512099 m!2063145))

(declare-fun m!2063147 () Bool)

(assert (=> b!1683053 m!2063147))

(assert (=> b!1683053 m!2062163))

(assert (=> b!1683053 m!2063133))

(assert (=> b!1683053 m!2063133))

(assert (=> b!1683053 m!2063135))

(assert (=> b!1682584 d!512099))

(declare-fun d!512101 () Bool)

(declare-fun fromListB!1021 (List!18516) BalanceConc!12232)

(assert (=> d!512101 (= (seqFromList!2234 lt!637402) (fromListB!1021 lt!637402))))

(declare-fun bs!399326 () Bool)

(assert (= bs!399326 d!512101))

(declare-fun m!2063149 () Bool)

(assert (=> bs!399326 m!2063149))

(assert (=> b!1682584 d!512101))

(declare-fun d!512103 () Bool)

(declare-fun res!754447 () Bool)

(declare-fun e!1077619 () Bool)

(assert (=> d!512103 (=> res!754447 e!1077619)))

(assert (=> d!512103 (= res!754447 (or (not (is-Cons!18448 tokens!457)) (not (is-Cons!18448 (t!154453 tokens!457)))))))

(assert (=> d!512103 (= (tokensListTwoByTwoPredicateSeparableList!570 thiss!17113 tokens!457 rules!1846) e!1077619)))

(declare-fun b!1683060 () Bool)

(declare-fun e!1077618 () Bool)

(assert (=> b!1683060 (= e!1077619 e!1077618)))

(declare-fun res!754448 () Bool)

(assert (=> b!1683060 (=> (not res!754448) (not e!1077618))))

(assert (=> b!1683060 (= res!754448 (separableTokensPredicate!817 thiss!17113 (h!23849 tokens!457) (h!23849 (t!154453 tokens!457)) rules!1846))))

(declare-fun lt!637907 () Unit!31682)

(declare-fun Unit!31703 () Unit!31682)

(assert (=> b!1683060 (= lt!637907 Unit!31703)))

(assert (=> b!1683060 (> (size!14694 (charsOf!1897 (h!23849 (t!154453 tokens!457)))) 0)))

(declare-fun lt!637908 () Unit!31682)

(declare-fun Unit!31704 () Unit!31682)

(assert (=> b!1683060 (= lt!637908 Unit!31704)))

(assert (=> b!1683060 (rulesProduceIndividualToken!1525 thiss!17113 rules!1846 (h!23849 (t!154453 tokens!457)))))

(declare-fun lt!637906 () Unit!31682)

(declare-fun Unit!31705 () Unit!31682)

(assert (=> b!1683060 (= lt!637906 Unit!31705)))

(assert (=> b!1683060 (rulesProduceIndividualToken!1525 thiss!17113 rules!1846 (h!23849 tokens!457))))

(declare-fun lt!637905 () Unit!31682)

(declare-fun lt!637904 () Unit!31682)

(assert (=> b!1683060 (= lt!637905 lt!637904)))

(assert (=> b!1683060 (rulesProduceIndividualToken!1525 thiss!17113 rules!1846 (h!23849 (t!154453 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!637 (LexerInterface!2877 List!18517 List!18518 Token!6062) Unit!31682)

(assert (=> b!1683060 (= lt!637904 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!637 thiss!17113 rules!1846 tokens!457 (h!23849 (t!154453 tokens!457))))))

(declare-fun lt!637909 () Unit!31682)

(declare-fun lt!637903 () Unit!31682)

(assert (=> b!1683060 (= lt!637909 lt!637903)))

(assert (=> b!1683060 (rulesProduceIndividualToken!1525 thiss!17113 rules!1846 (h!23849 tokens!457))))

(assert (=> b!1683060 (= lt!637903 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!637 thiss!17113 rules!1846 tokens!457 (h!23849 tokens!457)))))

(declare-fun b!1683061 () Bool)

(assert (=> b!1683061 (= e!1077618 (tokensListTwoByTwoPredicateSeparableList!570 thiss!17113 (Cons!18448 (h!23849 (t!154453 tokens!457)) (t!154453 (t!154453 tokens!457))) rules!1846))))

(assert (= (and d!512103 (not res!754447)) b!1683060))

(assert (= (and b!1683060 res!754448) b!1683061))

(assert (=> b!1683060 m!2062109))

(assert (=> b!1683060 m!2062143))

(assert (=> b!1683060 m!2062755))

(declare-fun m!2063151 () Bool)

(assert (=> b!1683060 m!2063151))

(assert (=> b!1683060 m!2062155))

(declare-fun m!2063153 () Bool)

(assert (=> b!1683060 m!2063153))

(assert (=> b!1683060 m!2062143))

(declare-fun m!2063155 () Bool)

(assert (=> b!1683060 m!2063155))

(declare-fun m!2063157 () Bool)

(assert (=> b!1683061 m!2063157))

(assert (=> b!1682594 d!512103))

(declare-fun d!512105 () Bool)

(assert (=> d!512105 (= (separableTokensPredicate!817 thiss!17113 (h!23849 tokens!457) (h!23849 (t!154453 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!684 (rulesRegex!630 thiss!17113 rules!1846) (++!5043 (charsOf!1897 (h!23849 tokens!457)) (singletonSeq!1764 (apply!5005 (charsOf!1897 (h!23849 (t!154453 tokens!457))) 0))))))))

(declare-fun bs!399327 () Bool)

(assert (= bs!399327 d!512105))

(assert (=> bs!399327 m!2062143))

(assert (=> bs!399327 m!2062145))

(assert (=> bs!399327 m!2062147))

(assert (=> bs!399327 m!2062091))

(assert (=> bs!399327 m!2062137))

(assert (=> bs!399327 m!2062143))

(assert (=> bs!399327 m!2062145))

(assert (=> bs!399327 m!2062137))

(declare-fun m!2063159 () Bool)

(assert (=> bs!399327 m!2063159))

(declare-fun m!2063161 () Bool)

(assert (=> bs!399327 m!2063161))

(assert (=> bs!399327 m!2062091))

(assert (=> bs!399327 m!2062147))

(assert (=> bs!399327 m!2063159))

(assert (=> b!1682583 d!512105))

(declare-fun b!1683066 () Bool)

(declare-fun e!1077622 () Bool)

(declare-fun tp_is_empty!7427 () Bool)

(declare-fun tp!483777 () Bool)

(assert (=> b!1683066 (= e!1077622 (and tp_is_empty!7427 tp!483777))))

(assert (=> b!1682598 (= tp!483735 e!1077622)))

(assert (= (and b!1682598 (is-Cons!18446 (originalCharacters!4062 (h!23849 tokens!457)))) b!1683066))

(declare-fun e!1077625 () Bool)

(assert (=> b!1682592 (= tp!483738 e!1077625)))

(declare-fun b!1683078 () Bool)

(declare-fun tp!483792 () Bool)

(declare-fun tp!483788 () Bool)

(assert (=> b!1683078 (= e!1077625 (and tp!483792 tp!483788))))

(declare-fun b!1683077 () Bool)

(assert (=> b!1683077 (= e!1077625 tp_is_empty!7427)))

(declare-fun b!1683080 () Bool)

(declare-fun tp!483789 () Bool)

(declare-fun tp!483790 () Bool)

(assert (=> b!1683080 (= e!1077625 (and tp!483789 tp!483790))))

(declare-fun b!1683079 () Bool)

(declare-fun tp!483791 () Bool)

(assert (=> b!1683079 (= e!1077625 tp!483791)))

(assert (= (and b!1682592 (is-ElementMatch!4576 (regex!3248 (rule!5148 (h!23849 tokens!457))))) b!1683077))

(assert (= (and b!1682592 (is-Concat!7915 (regex!3248 (rule!5148 (h!23849 tokens!457))))) b!1683078))

(assert (= (and b!1682592 (is-Star!4576 (regex!3248 (rule!5148 (h!23849 tokens!457))))) b!1683079))

(assert (= (and b!1682592 (is-Union!4576 (regex!3248 (rule!5148 (h!23849 tokens!457))))) b!1683080))

(declare-fun b!1683091 () Bool)

(declare-fun b_free!45567 () Bool)

(declare-fun b_next!46271 () Bool)

(assert (=> b!1683091 (= b_free!45567 (not b_next!46271))))

(declare-fun tp!483802 () Bool)

(declare-fun b_and!120277 () Bool)

(assert (=> b!1683091 (= tp!483802 b_and!120277)))

(declare-fun b_free!45569 () Bool)

(declare-fun b_next!46273 () Bool)

(assert (=> b!1683091 (= b_free!45569 (not b_next!46273))))

(declare-fun tb!97583 () Bool)

(declare-fun t!154485 () Bool)

(assert (=> (and b!1683091 (= (toChars!4582 (transformation!3248 (h!23848 (t!154452 rules!1846)))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457))))) t!154485) tb!97583))

(declare-fun result!117628 () Bool)

(assert (= result!117628 result!117612))

(assert (=> b!1682797 t!154485))

(declare-fun t!154487 () Bool)

(declare-fun tb!97585 () Bool)

(assert (=> (and b!1683091 (= (toChars!4582 (transformation!3248 (h!23848 (t!154452 rules!1846)))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 (t!154453 tokens!457)))))) t!154487) tb!97585))

(declare-fun result!117630 () Bool)

(assert (= result!117630 result!117618))

(assert (=> d!512005 t!154487))

(assert (=> d!512083 t!154485))

(declare-fun b_and!120279 () Bool)

(declare-fun tp!483804 () Bool)

(assert (=> b!1683091 (= tp!483804 (and (=> t!154485 result!117628) (=> t!154487 result!117630) b_and!120279))))

(declare-fun e!1077634 () Bool)

(assert (=> b!1683091 (= e!1077634 (and tp!483802 tp!483804))))

(declare-fun tp!483803 () Bool)

(declare-fun e!1077635 () Bool)

(declare-fun b!1683090 () Bool)

(assert (=> b!1683090 (= e!1077635 (and tp!483803 (inv!23809 (tag!3536 (h!23848 (t!154452 rules!1846)))) (inv!23813 (transformation!3248 (h!23848 (t!154452 rules!1846)))) e!1077634))))

(declare-fun b!1683089 () Bool)

(declare-fun e!1077637 () Bool)

(declare-fun tp!483801 () Bool)

(assert (=> b!1683089 (= e!1077637 (and e!1077635 tp!483801))))

(assert (=> b!1682597 (= tp!483734 e!1077637)))

(assert (= b!1683090 b!1683091))

(assert (= b!1683089 b!1683090))

(assert (= (and b!1682597 (is-Cons!18447 (t!154452 rules!1846))) b!1683089))

(declare-fun m!2063163 () Bool)

(assert (=> b!1683090 m!2063163))

(declare-fun m!2063165 () Bool)

(assert (=> b!1683090 m!2063165))

(declare-fun e!1077638 () Bool)

(assert (=> b!1682591 (= tp!483732 e!1077638)))

(declare-fun b!1683093 () Bool)

(declare-fun tp!483809 () Bool)

(declare-fun tp!483805 () Bool)

(assert (=> b!1683093 (= e!1077638 (and tp!483809 tp!483805))))

(declare-fun b!1683092 () Bool)

(assert (=> b!1683092 (= e!1077638 tp_is_empty!7427)))

(declare-fun b!1683095 () Bool)

(declare-fun tp!483806 () Bool)

(declare-fun tp!483807 () Bool)

(assert (=> b!1683095 (= e!1077638 (and tp!483806 tp!483807))))

(declare-fun b!1683094 () Bool)

(declare-fun tp!483808 () Bool)

(assert (=> b!1683094 (= e!1077638 tp!483808)))

(assert (= (and b!1682591 (is-ElementMatch!4576 (regex!3248 (h!23848 rules!1846)))) b!1683092))

(assert (= (and b!1682591 (is-Concat!7915 (regex!3248 (h!23848 rules!1846)))) b!1683093))

(assert (= (and b!1682591 (is-Star!4576 (regex!3248 (h!23848 rules!1846)))) b!1683094))

(assert (= (and b!1682591 (is-Union!4576 (regex!3248 (h!23848 rules!1846)))) b!1683095))

(declare-fun b!1683111 () Bool)

(declare-fun b_free!45571 () Bool)

(declare-fun b_next!46275 () Bool)

(assert (=> b!1683111 (= b_free!45571 (not b_next!46275))))

(declare-fun tp!483821 () Bool)

(declare-fun b_and!120281 () Bool)

(assert (=> b!1683111 (= tp!483821 b_and!120281)))

(declare-fun b_free!45573 () Bool)

(declare-fun b_next!46277 () Bool)

(assert (=> b!1683111 (= b_free!45573 (not b_next!46277))))

(declare-fun t!154489 () Bool)

(declare-fun tb!97587 () Bool)

(assert (=> (and b!1683111 (= (toChars!4582 (transformation!3248 (rule!5148 (h!23849 (t!154453 tokens!457))))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457))))) t!154489) tb!97587))

(declare-fun result!117634 () Bool)

(assert (= result!117634 result!117612))

(assert (=> b!1682797 t!154489))

(declare-fun t!154491 () Bool)

(declare-fun tb!97589 () Bool)

(assert (=> (and b!1683111 (= (toChars!4582 (transformation!3248 (rule!5148 (h!23849 (t!154453 tokens!457))))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 (t!154453 tokens!457)))))) t!154491) tb!97589))

(declare-fun result!117636 () Bool)

(assert (= result!117636 result!117618))

(assert (=> d!512005 t!154491))

(assert (=> d!512083 t!154489))

(declare-fun tp!483822 () Bool)

(declare-fun b_and!120283 () Bool)

(assert (=> b!1683111 (= tp!483822 (and (=> t!154489 result!117634) (=> t!154491 result!117636) b_and!120283))))

(declare-fun e!1077651 () Bool)

(assert (=> b!1682590 (= tp!483739 e!1077651)))

(declare-fun e!1077653 () Bool)

(declare-fun e!1077656 () Bool)

(declare-fun tp!483823 () Bool)

(declare-fun b!1683110 () Bool)

(assert (=> b!1683110 (= e!1077653 (and tp!483823 (inv!23809 (tag!3536 (rule!5148 (h!23849 (t!154453 tokens!457))))) (inv!23813 (transformation!3248 (rule!5148 (h!23849 (t!154453 tokens!457))))) e!1077656))))

(declare-fun b!1683108 () Bool)

(declare-fun e!1077652 () Bool)

(declare-fun tp!483824 () Bool)

(assert (=> b!1683108 (= e!1077651 (and (inv!23812 (h!23849 (t!154453 tokens!457))) e!1077652 tp!483824))))

(declare-fun b!1683109 () Bool)

(declare-fun tp!483820 () Bool)

(assert (=> b!1683109 (= e!1077652 (and (inv!21 (value!102242 (h!23849 (t!154453 tokens!457)))) e!1077653 tp!483820))))

(assert (=> b!1683111 (= e!1077656 (and tp!483821 tp!483822))))

(assert (= b!1683110 b!1683111))

(assert (= b!1683109 b!1683110))

(assert (= b!1683108 b!1683109))

(assert (= (and b!1682590 (is-Cons!18448 (t!154453 tokens!457))) b!1683108))

(declare-fun m!2063167 () Bool)

(assert (=> b!1683110 m!2063167))

(declare-fun m!2063169 () Bool)

(assert (=> b!1683110 m!2063169))

(declare-fun m!2063171 () Bool)

(assert (=> b!1683108 m!2063171))

(declare-fun m!2063173 () Bool)

(assert (=> b!1683109 m!2063173))

(declare-fun b_lambda!52937 () Bool)

(assert (= b_lambda!52935 (or (and b!1682588 b_free!45553) (and b!1682587 b_free!45557 (= (toChars!4582 (transformation!3248 (h!23848 rules!1846))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457)))))) (and b!1683091 b_free!45569 (= (toChars!4582 (transformation!3248 (h!23848 (t!154452 rules!1846)))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457)))))) (and b!1683111 b_free!45573 (= (toChars!4582 (transformation!3248 (rule!5148 (h!23849 (t!154453 tokens!457))))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457)))))) b_lambda!52937)))

(declare-fun b_lambda!52939 () Bool)

(assert (= b_lambda!52931 (or (and b!1682588 b_free!45553 (= (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457)))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 (t!154453 tokens!457))))))) (and b!1682587 b_free!45557 (= (toChars!4582 (transformation!3248 (h!23848 rules!1846))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 (t!154453 tokens!457))))))) (and b!1683091 b_free!45569 (= (toChars!4582 (transformation!3248 (h!23848 (t!154452 rules!1846)))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 (t!154453 tokens!457))))))) (and b!1683111 b_free!45573) b_lambda!52939)))

(declare-fun b_lambda!52941 () Bool)

(assert (= b_lambda!52929 (or (and b!1682588 b_free!45553) (and b!1682587 b_free!45557 (= (toChars!4582 (transformation!3248 (h!23848 rules!1846))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457)))))) (and b!1683091 b_free!45569 (= (toChars!4582 (transformation!3248 (h!23848 (t!154452 rules!1846)))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457)))))) (and b!1683111 b_free!45573 (= (toChars!4582 (transformation!3248 (rule!5148 (h!23849 (t!154453 tokens!457))))) (toChars!4582 (transformation!3248 (rule!5148 (h!23849 tokens!457)))))) b_lambda!52941)))

(push 1)

(assert (not b!1682787))

(assert b_and!120273)

(assert (not b!1683024))

(assert (not b!1683079))

(assert (not d!512083))

(assert (not d!512011))

(assert b_and!120281)

(assert (not d!512093))

(assert (not b!1682834))

(assert (not b!1682829))

(assert (not d!512021))

(assert b_and!120277)

(assert (not b!1682706))

(assert (not d!511987))

(assert (not b!1682819))

(assert (not b!1682916))

(assert (not d!512105))

(assert (not b!1683039))

(assert b_and!120237)

(assert (not b!1682830))

(assert (not b!1683049))

(assert (not d!511995))

(assert (not b!1682861))

(assert (not tb!97579))

(assert (not d!512099))

(assert (not b_next!46271))

(assert (not b!1682797))

(assert (not bm!107578))

(assert (not d!512077))

(assert (not b!1682858))

(assert (not b!1683051))

(assert (not d!512005))

(assert (not b!1683108))

(assert (not b!1682895))

(assert (not d!511917))

(assert b_and!120275)

(assert (not b!1682707))

(assert (not d!511969))

(assert (not b!1683066))

(assert (not d!512017))

(assert (not b!1682888))

(assert (not b!1682885))

(assert tp_is_empty!7427)

(assert (not b!1683038))

(assert (not b!1683054))

(assert (not b!1682769))

(assert (not b!1682708))

(assert (not d!512101))

(assert (not b!1682859))

(assert (not d!512097))

(assert (not b!1682864))

(assert (not d!511961))

(assert (not b!1682989))

(assert (not b!1682759))

(assert (not d!512007))

(assert (not b!1682886))

(assert (not d!511977))

(assert (not b!1683061))

(assert (not b!1682760))

(assert (not b!1682914))

(assert (not d!512095))

(assert (not b_next!46277))

(assert b_and!120283)

(assert (not b!1682860))

(assert (not b!1683045))

(assert (not b_next!46261))

(assert (not b!1683060))

(assert (not d!511919))

(assert (not b!1682892))

(assert (not b_lambda!52939))

(assert (not b!1683089))

(assert (not b!1683078))

(assert (not d!511959))

(assert (not d!511983))

(assert (not b!1682987))

(assert (not b!1683025))

(assert (not b!1683052))

(assert (not d!511963))

(assert (not b_next!46255))

(assert (not d!511979))

(assert (not d!512085))

(assert (not b!1682865))

(assert (not b!1683110))

(assert (not b_lambda!52937))

(assert (not b!1682900))

(assert (not d!511975))

(assert (not b!1682889))

(assert (not b!1682774))

(assert (not b!1683026))

(assert (not b!1682806))

(assert (not b!1683095))

(assert (not b!1682818))

(assert (not b_next!46273))

(assert (not d!511993))

(assert (not d!512065))

(assert (not b!1683027))

(assert b_and!120241)

(assert (not b_lambda!52941))

(assert (not b!1682803))

(assert (not b!1683090))

(assert (not d!511965))

(assert (not b!1683093))

(assert (not d!511899))

(assert (not d!512081))

(assert (not d!512013))

(assert (not b!1683009))

(assert (not d!511991))

(assert b_and!120279)

(assert (not b_next!46275))

(assert (not d!511901))

(assert (not b!1683080))

(assert (not b!1682887))

(assert (not b!1682988))

(assert (not b!1683109))

(assert (not b!1682884))

(assert (not d!511981))

(assert (not b_next!46257))

(assert (not b!1682831))

(assert (not d!512075))

(assert (not d!511971))

(assert (not d!512009))

(assert (not d!512069))

(assert (not d!512003))

(assert (not d!512087))

(assert (not b!1682798))

(assert (not b_next!46259))

(assert (not d!512073))

(assert (not b!1683094))

(assert (not b!1682712))

(assert (not b!1683046))

(assert (not b!1683010))

(assert (not b!1683048))

(assert (not b!1682891))

(assert (not b!1683053))

(assert (not tb!97575))

(assert (not b!1683011))

(assert (not d!512079))

(assert (not d!512001))

(assert (not d!512091))

(check-sat)

(pop 1)

(push 1)

(assert b_and!120281)

(assert b_and!120277)

(assert b_and!120237)

(assert b_and!120273)

(assert (not b_next!46271))

(assert b_and!120275)

(assert (not b_next!46261))

(assert (not b_next!46255))

(assert (not b_next!46273))

(assert b_and!120241)

(assert b_and!120279)

(assert (not b_next!46275))

(assert (not b_next!46257))

(assert (not b_next!46259))

(assert (not b_next!46277))

(assert b_and!120283)

(check-sat)

(pop 1)

